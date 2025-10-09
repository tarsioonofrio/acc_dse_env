`timescale 1ns/1ps
// SystemVerilog translation of acc_dse_env/tb/tb_rtl_split_synth.vhd
// Note: This translation preserves the structure and intent of the original VHDL testbench.
// It assumes the existence of packages / modules that were referenced in VHDL:
//   - packages: gold_package, op_generics_pkg  (imported below as SystemVerilog packages)
//   - modules: memory, convolution
//
// If those packages/modules are named or implemented differently in your SystemVerilog environment,
// you may need to adjust the import/module names and/or port/parameter lists accordingly.

module tb #(
  parameter int LAYER       = 0,
  parameter int MEM_SIZE    = 12,
  parameter int INPUT_SIZE  = 8,
  parameter int CARRY_SIZE  = 4,
  parameter int SHIFT       = 8,
  parameter int LAT         = 2
) ();

  // Import packages (assumes corresponding SystemVerilog packages exist)
  import gold_package::*;
  import op_generics_pkg::*;

  // Clocking and control signals
  logic clock = 0;
  logic reset = 0;
  logic start_conv = 0;
  logic debug = 0;

  // Memory / interface control signals
  logic ofmap_valid = 0;
  logic ofmap_ce    = 0;
  logic ofmap_we    = 0;
  logic iwght_ce    = 0;
  logic iwght_valid = 0;
  logic ifmap_ce    = 0;
  logic ifmap_valid = 0;
  logic end_conv    = 0;

  // Addresses
  logic [MEM_SIZE-1:0] iwght_address;
  logic [MEM_SIZE-1:0] ifmap_address;
  logic [MEM_SIZE-1:0] ofmap_address;

  // Data busses
  localparam int IWght_DATA_WIDTH  = INPUT_SIZE*2;
  localparam int IFMAP_DATA_WIDTH  = INPUT_SIZE*2;
  localparam int OFMAP_DATA_WIDTH  = (INPUT_SIZE*2) + CARRY_SIZE;

  logic [IWght_DATA_WIDTH-1:0] iwght_value;
  logic [IFMAP_DATA_WIDTH-1:0] ifmap_value;
  logic [OFMAP_DATA_WIDTH-1:0] ofmap_out;
  logic [OFMAP_DATA_WIDTH-1:0] ofmap_in;

  // Counters (32-bit vectors in VHDL)
  logic [31:0] iwght_n_read;
  logic [31:0] iwght_n_write;
  logic [31:0] ifmap_n_read;
  logic [31:0] ifmap_n_write;
  logic [31:0] ofmap_n_read;
  logic [31:0] ofmap_n_write;

  // Instantiate memories
  // Note: The `memory` module is expected to have the listed parameters and ports.
  memory #(
    .ROM("weight"),
    .INPUT_SIZE(IWght_DATA_WIDTH),
    .ADDRESS_SIZE(MEM_SIZE),
    .DATA_AV_LATENCY(LAT)
  ) IWGHT (
    .clock   (clock),
    .reset   (reset),
    .chip_en (iwght_ce),
    .wr_en   (1'b0),
    .data_in ({IWght_DATA_WIDTH{1'b0}}),
    .address (iwght_address),
    .data_av (iwght_valid),
    .data_out(iwght_value),
    .n_read  (iwght_n_read),
    .n_write (iwght_n_write)
  );

  memory #(
    .ROM("map"),
    .INPUT_SIZE(IFMAP_DATA_WIDTH),
    .ADDRESS_SIZE(MEM_SIZE),
    .DATA_AV_LATENCY(LAT)
  ) IFMAP (
    .clock   (clock),
    .reset   (reset),
    .chip_en (ifmap_ce),
    .wr_en   (1'b0),
    .data_in ({IFMAP_DATA_WIDTH{1'b0}}),
    .address (ifmap_address),
    .data_av (ifmap_valid),
    .data_out(ifmap_value),
    .n_read  (ifmap_n_read),
    .n_write (ifmap_n_write)
  );

  memory #(
    .ROM("no"),
    .INPUT_SIZE(OFMAP_DATA_WIDTH),
    .ADDRESS_SIZE(MEM_SIZE),
    .DATA_AV_LATENCY(LAT)
  ) OFMAP (
    .clock   (clock),
    .reset   (reset),
    .chip_en (ofmap_ce),
    .wr_en   (ofmap_we),
    .data_in (ofmap_out),
    .address (ofmap_address),
    .data_av (ofmap_valid),
    .data_out(ofmap_in),
    .n_read  (ofmap_n_read),
    .n_write (ofmap_n_write)
  );

  // Instantiate DUT (convolution)
  convolution DUT (
    .clock         (clock),
    .reset         (reset),
    .start_conv    (start_conv),
    .end_conv      (end_conv),
    .debug         (debug),
    .iwght_valid   (iwght_valid),
    .iwght_value   (iwght_value),
    .iwght_address (iwght_address),
    .iwght_ce      (iwght_ce),
    .ifmap_valid   (ifmap_valid),
    .ifmap_value   (ifmap_value),
    .ifmap_address (ifmap_address),
    .ifmap_ce      (ifmap_ce),
    .ofmap_valid   (ofmap_valid),
    .ofmap_in      (ofmap_in),
    .ofmap_out     (ofmap_out),
    .ofmap_address (ofmap_address),
    .ofmap_we      (ofmap_we),
    .ofmap_ce      (ofmap_ce)
  );

  // Clock generation: toggle every 0.5 ns (period = 1 ns)
  always #0.5 clock = ~clock;

  // Reset and start_conv stimulus (timing mirrors the VHDL)
  initial begin
    $shm_open("dut.shm");
    $shm_probe(tb.dut, "ASM");

    reset = 1'b1;
    start_conv = 1'b0;
    debug = 1'b0;
    #2.5;
    reset = 1'b0;
    start_conv = 1'b1;
    #1.0;
    start_conv = 1'b0;
  end

  // Convolution checking process (runs on falling edge of clock)
  int cont_conv = 0;

  always_ff @(negedge clock) begin
    // Equivalent to: if debug = '1' and cont_conv < TOTAL_OPS(LAYER) then ...
    if (debug == 1'b1 && cont_conv < TOTAL_OPS(LAYER)) begin
      // Compute index from ofmap_address
      int idx = CONV_INTEGER($unsigned(ofmap_address));

      // Expected value fetched from gold package; use conversion function to match widths
      logic [OFMAP_DATA_WIDTH-1:0] expected_vec;
      expected_vec = CONV_STD_LOGIC_VECTOR(gold(idx), OFMAP_DATA_WIDTH);

      if (ofmap_out !== expected_vec) begin
        $display("end of simulation with error!");
        $display("number of convolutions executed: %0d", cont_conv);
        $display("idx: %0d", idx);
        $display("expected value: %0d", gold(idx));

        if (OFMAP_DATA_WIDTH > 32) begin
          // When wider than 32, show the lower 32 bits (mimicking VHDL behaviour)
          $display("obtained value: %0d", CONV_INTEGER(ofmap_out[31:0]));
        end else begin
          $display("obtained value: %0d", CONV_INTEGER(ofmap_out));
        end

        // Fail the simulation
        $fatal(1, "Mismatch between DUT output and golden model");
      end

      cont_conv = cont_conv + 1;
      // optionally: $display("cont_conv value: %0d", cont_conv);
    end else if (end_conv == 1'b1) begin
      $display("number of iwght read: %0d", CONV_INTEGER($unsigned(iwght_n_read)));
      $display("number of iwght write: %0d", CONV_INTEGER($unsigned(iwght_n_write)));
      $display("number of ifmap read: %0d", CONV_INTEGER($unsigned(ifmap_n_read)));
      $display("number of ifmap write: %0d", CONV_INTEGER($unsigned(ifmap_n_write)));
      $display("number of ofmap read: %0d", CONV_INTEGER($unsigned(ofmap_n_read)));
      $display("number of ofmap write: %0d", CONV_INTEGER($unsigned(ofmap_n_write)));
      $display("number of convolutions: %0d", cont_conv);
      // End the simulation successfully (VHDL used severity failure to report end; use $fatal to stop)
      $display("end of simulation without error!");
      $fatal(0, "Simulation finished");
    end
  end

endmodule

`timescale 1ns / 1ps

module tb #( 
    parameter N_FILTER = 16,
    parameter N_CHANNEL = 3,
    parameter X_SIZE = 32,
    parameter FILTER_WIDTH = 3,
    parameter CONVS_PER_LINE = 15,
    parameter MEM_SIZE = 12,
    parameter INPUT_SIZE = 8,
    parameter CARRY_SIZE = 4,
    parameter SHIFT = 8,
    parameter LAT = 2
)(
);

    logic [INPUT_SIZE*2-1:0] inmem_value;
    logic [MEM_SIZE-1:0] inmem_address, ofmap_address;
    logic clock, reset, start_conv, debug;
    logic ofmap_valid, ofmap_ce, ofmap_we, inmem_ce, inmem_valid, end_conv;
    logic [INPUT_SIZE*2+CARRY_SIZE-1:0] pixel_out, pixel_in;
    logic [31:0] inmem_n_read, inmem_n_write, ofmap_n_read, ofmap_n_write;

    initial begin
        clock = 0;
        reset = 0;
        start_conv = 0;
        debug = 0;
        ofmap_valid = 0;
        ofmap_ce = 0;
        ofmap_we = 0;
        inmem_ce = 0;
        inmem_valid = 0;
        end_conv = 0;
    end

    memory #(.ROM("yes"), .INPUT_SIZE(INPUT_SIZE*2), .ADDRESS_SIZE(MEM_SIZE), .DATA_AV_LATENCY(LAT)
    ) INMEM(
        .clock(clock),
        .reset(reset),
        .chip_en(inmem_ce),
        .wr_en(1'b0),
        .data_in({INPUT_SIZE*2{1'b0}}),
        .address(inmem_address),
        .data_av(inmem_valid),
        .data_out(inmem_value),
        .n_read(inmem_n_read),
        .n_write(inmem_n_write)
    );
    
    memory #(.ROM("no"), .INPUT_SIZE(INPUT_SIZE*2+CARRY_SIZE), .ADDRESS_SIZE(MEM_SIZE), .DATA_AV_LATENCY(LAT)
    ) OFMAPMEM(
        .clock(clock),
        .reset(reset),
        .chip_en(ofmap_ce),
        .wr_en(ofmap_we),
        .data_in(pixel_out),
        .address(ofmap_address),
        .data_av(ofmap_valid),
        .data_out(pixel_in),
        .n_read(ofmap_n_read),
        .n_write(ofmap_n_write)
    );
    
    convolution #(
        .N_FILTER(N_FILTER),
        .N_CHANNEL(N_CHANNEL),
        .X_SIZE(X_SIZE),
        .FILTER_WIDTH(FILTER_WIDTH),
        .CONVS_PER_LINE(CONVS_PER_LINE),
        .MEM_SIZE(MEM_SIZE),
        .INPUT_SIZE(INPUT_SIZE),
        .SHIFT(SHIFT),
        .CARRY_SIZE(CARRY_SIZE)
    ) DUT(
        .clock(clock),
        .reset(reset),
        .start_conv(start_conv),
        .end_conv(end_conv),
        .debug(debug),
        .inmem_valid(inmem_valid),
        .inmem_value(inmem_value),
        .inmem_address(inmem_address),
        .inmem_ce(inmem_ce),
        .ofmap_valid(ofmap_valid),
        .pixel_in(pixel_in),
        .pixel_out(pixel_out),
        .ofmap_address(ofmap_address),
        .ofmap_we(ofmap_we),
        .ofmap_ce(ofmap_ce)
    );
    
    always #0.5 clock = ~clock;

    initial begin
        #2.5 reset = 1;
        #2.5 start_conv = 1;
        #3.5 start_conv = 0;
    end

    // Rest of testbench code such as the process function is omitted because SystemVerilog does not support report and severity statements.
    // Use $display, $write, $strobe or $monitor for debugging.
    // Use $finish to end simulation.
    // Use $stop to stop the simulation and enter interactive mode.

endmodule

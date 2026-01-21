library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_textio.all;

use std.textio.all;

use work.util_package.all;


entity tb is
  generic (
  LAT            : integer := 1;
  ARRAY_TYPE     : string := "syst2d";
  CARRY_SIZE     : integer := 4;
  CONVS_PER_LINE : integer := 30;
  DATAFLOW_TYPE  : string := "ws";
  DEVICE         : string := "7SERIES";
  FILTER_WIDTH   : integer := 3;
  INPUT_SIZE     : integer := 16;
  LAYER          : integer := 0;
  MAX_MEM_SIZE   : integer := 36;
  MEM_SIZE       : integer := 16;
  N_CHANNEL      : integer := 3;
  N_FILTER       : integer := 3;
  N_LAYER        : integer := 0;
  OP_TYPE        : string := "C";
  SHIFT          : integer := 8;
  STRIDE         : integer := 1;
  TOTAL_OPS      : integer := 2700;
  X_SIZE         : integer := 32;
  --PATH           : string := "/sim/tarsio/FastConv_SystemVerilog/data/ifn9/sim/sim-032-3-3-normal"
  PATH           : string := "/home/tarsio/gaph/FastConv_SystemVerilog/data/ifn9/sim/sim-032-3-3-normal"
  --IN_DELAY       : time := 0.3 ns;
  --RISE_START     : time := 7.3 ns;
  --RST_TIME       : time := 5.0 ns;
  --FALL_START     : time := 9.3 ns;
  --CLK_HALF       : time := 1.0 ns;
  --CLK_PERIOD     : time := 2.0 ns;
    );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_valid, ifmap_ce, ifmap_valid, end_conv : std_logic := '0';

  signal iwght_address, ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal iwght_value, ifmap_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal ofmap_out, ofmap_in : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal iwght_n_read, iwght_n_write, ifmap_n_read, ifmap_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

  signal gold : type_array_int := read_data(PATH & "/s_default_quant.txt");

  file sim_report : text open write_mode is "rtl_split_synth_report.txt";

begin

  IWGHT : entity work.memory
    generic map(
      ROM_PATH => PATH & "/g.txt",
      INPUT_SIZE => INPUT_SIZE*2,
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => iwght_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => iwght_address,
      data_av  => iwght_valid,
      data_out => iwght_value,
      n_read   => iwght_n_read,
      n_write  => iwght_n_write
      );

  IFMAP : entity work.memory
    generic map(
      ROM_PATH => PATH & "/d.txt",
      INPUT_SIZE => INPUT_SIZE*2,
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ifmap_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => ifmap_address,
      data_av  => ifmap_valid,
      data_out => ifmap_value,
      n_read   => ifmap_n_read,
      n_write  => ifmap_n_write
      );

  OFMAP : entity work.memory
    generic map(
      ROM_PATH => "",
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ofmap_ce,
      wr_en    => ofmap_we,
      data_in  => ofmap_out,
      address  => ofmap_address,
      data_av  => ofmap_valid,
      data_out => ofmap_in,
      n_read   => ofmap_n_read,
      n_write  => ofmap_n_write
      );

  dut : entity work.convolution
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      SHIFT          => SHIFT,
      CARRY_SIZE     => CARRY_SIZE
      )
    port map(
      clock         => clock,
      reset         => reset,

      start_conv    => start_conv,
      end_conv      => end_conv,
      debug         => debug,

      iwght_valid   => iwght_valid,
      iwght_value   => iwght_value,
      iwght_address => iwght_address,
      iwght_ce      => iwght_ce,

      ifmap_valid   => ifmap_valid,
      ifmap_value   => ifmap_value,
      ifmap_address => ifmap_address,
      ifmap_ce      => ifmap_ce,

      ofmap_valid   => ofmap_valid,
      ofmap_in      => ofmap_in,
      ofmap_out     => ofmap_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

  clock <= not clock after 5 ns;
  reset <= '1', '0' after 10 ns;
  start_conv <= '0', '1' after 15 ns, '0' after 25 ns;

  process(clock)

  variable expected_int        : integer := 0;
    -- convolution counter
  variable cont_conv : integer := 0;
  variable cycle_count : integer := 0;
  variable start_time  : time := 0 ns;
  variable running     : boolean := false;
  variable out_line          : line;

  begin

    if clock'event and clock = '0' then
      if start_conv = '1' then
        running := true;
        cycle_count := 0;
        start_time := now;
      end if;

      if running and end_conv = '0' then
        cycle_count := cycle_count + 1;
      end if;

      if debug = '1' and cont_conv < TOTAL_OPS then
        expected_int := gold(CONV_INTEGER(unsigned(ofmap_address)));
        if expected_int < 0 then
          expected_int := 0;
        end if;
        if SHIFT > 0 then
          expected_int := expected_int / (2**SHIFT);
        end if;
        if ofmap_out /= CONV_STD_LOGIC_VECTOR(expected_int, ((INPUT_SIZE*2)+CARRY_SIZE)) then
          --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
          report "end of simulation with error!";
          report "number of convolutions executed: " & integer'image(cont_conv);
          report "idx: " & integer'image(CONV_INTEGER(unsigned(ofmap_address)));
          report "expected value: " & integer'image(expected_int);

          if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)));
          else
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out));
          end if;

          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;
        --report "cont_conv value: " & integer'image(cont_conv);

      elsif end_conv = '1' then
        report "number of iwght read: " & integer'image(CONV_INTEGER(unsigned(iwght_n_read)));
        report "number of iwght write: " & integer'image(CONV_INTEGER(unsigned(iwght_n_write)));
        report "number of ifmap read: " & integer'image(CONV_INTEGER(unsigned(ifmap_n_read)));
        report "number of ifmap write: " & integer'image(CONV_INTEGER(unsigned(ifmap_n_write)));
        report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
        report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
        report "number of convolutions: " & integer'image(cont_conv);
        if running then
          write(out_line, string'("total_cycles: "));
          write(out_line, cycle_count);
          write(out_line, string'(", exec_time: "));
          write(out_line, now - start_time);
          writeline(sim_report, out_line);
          running := false;
        end if;
        report "end of simulation without error!" severity failure;
      end if;
    end if;

  end process;

end a1;

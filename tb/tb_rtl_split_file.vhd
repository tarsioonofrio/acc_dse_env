library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_textio.all;

use std.textio.all;

-- use work.gold_package.all;
use work.op_generics_pkg.all;


entity tb is
  generic (
    LAYER          : integer := 0;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    LAT            : integer := 2
    );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_valid, ifmap_ce, ifmap_valid, end_conv : std_logic := '0';

  signal iwght_address, ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal iwght_value, ifmap_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal ofmap_out, ofmap_in : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal iwght_n_read, iwght_n_write, ifmap_n_read, ifmap_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

  file out_file      : text open write_mode is "tb_rtl_split.txt";

begin

  IWGHT : entity work.memory
    generic map(
      ROM => "weight",
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
      ROM => "map",
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
      ROM => "no",
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

  DUT : entity work.convolution
    generic map(
      N_FILTER       => N_FILTER(LAYER),
      N_CHANNEL      => N_CHANNEL(LAYER),
      X_SIZE         => X_SIZE(LAYER),
      FILTER_WIDTH   => FILTER_WIDTH(LAYER),
      CONVS_PER_LINE => CONVS_PER_LINE(LAYER),
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

  clock <= not clock after 0.5 ns;

  reset <= '1', '0' after 2.5 ns;

  start_conv <= '0', '1' after 2.5 ns, '0' after 3.5 ns;

  process(clock)

    -- convolution counter
  variable cont_conv : integer := 0;
  variable out_line          : line;

  begin

    if clock'event and clock = '0' then
      if debug = '1' and cont_conv < TOTAL_OPS(LAYER) then
      write(out_line, string'(integer'image(CONV_INTEGER(unsigned(ofmap_address))) & " " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)))));
      writeline(out_file, out_line);
      elsif end_conv = '1' then
        report "end of simulation!" severity failure;
      end if;
    end if;

  end process;

end a1;

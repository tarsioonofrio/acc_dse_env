library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
-- use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

library std;

entity tb is
  generic (
    FPGA           : std_logic := '0';
    N_FILTER       : integer := 16;
    N_CHANNEL      : integer := 3;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    N_LAYER        : integer := 0;
    PATH           : string  := "";
    BRAM_LAT       : integer := 0;
    BRAM_ADDR      : integer := 9;
    BRAM_NUM_IWGHT : string  := "";
    BRAM_NUM_IFMAP : string  := "";
    BRAM_NUM_GOLD  : string  := ""
  );
end tb;

architecture a1 of tb is
  signal clock, reset, start, stop : std_logic := '0';

begin

  DUT : entity work.accelerator
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
      p_clock         => clock,
      p_reset         => reset,

      p_start       => start,
      p_stop        => stop
      );


  clock <= not clock after 0.5 ns;

  reset <= '1', '0' after 2.5 ns;

  start <= '0', '1' after 2.5 ns, '0' after 3.5 ns;

end a1;
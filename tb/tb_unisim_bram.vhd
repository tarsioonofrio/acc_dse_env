library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity tb is
  generic (
    INPUT_SIZE      : integer := 8;
    ADDRESS_SIZE    : integer := 12;
    PATH        : string  := "";
    DEVICE          : string := "7SERIES";
    BRAM_NAME       : string := "";
    N_BRAM          : integer := 2;
    DEPTH_BRAM      : integer := 1024
  );
end tb;


architecture a1 of tb is

signal reset    : std_logic;
signal clock    : std_logic;
signal chip_en  : std_logic;
signal wr_en    : std_logic;
signal address  : std_logic_vector(ADDRESS_SIZE-1 downto 0);
signal data_in  : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
signal data_out : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
signal data     : type_array_int := read_data(PATH & "/iwght_pkg.txt");


begin

  BRAM_SINGLE_INST: entity work.bram_single
  generic map (
    BRAM_NAME => "default",
    INPUT_SIZE => INPUT_SIZE * 2,
    ADDRESS_SIZE => ADDRESS_SIZE
  )
  port map(
    CLK  => clock,
    RST  => reset,
    EN   => chip_en,
    WE   => wr_en,
    DI   => data_in,
    ADDR => address,
    DO   => data_out
  );


  clock <= not clock after 0.5 ns;

  process
    -- convolution counter
    -- variable cont_conv : integer := 0;

  begin

    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';

    chip_en <= '1';
    wr_en <= '1';

    for i in 0 to (ADDRESS_SIZE*ADDRESS_SIZE-1) loop
      address <= CONV_STD_LOGIC_VECTOR(i, ADDRESS_SIZE);
      data_in <= CONV_STD_LOGIC_VECTOR(data(i), INPUT_SIZE*2);
      wait until rising_edge(clock);
    end loop;

    chip_en <= '0';
    wr_en <= '0';
    report "end of simulation without error!" severity failure;

  end process;
end a1;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity memory is
  generic (
    INPUT_SIZE      : integer := 8;
    ADDRESS_SIZE    : integer := 12;
    ROM_PATH        : string  := "";
    DEVICE          : string := "7SERIES";
    BRAM_NAME       : string := "";
    N_BRAM          : integer := 2;
    DEPTH_BRAM       : integer := 1024
  );
end memory;


architecture a1 of memory is

signal reset    : std_logic;
signal clock    : std_logic;
signal chip_en  : std_logic;
signal wr_en    : std_logic;
signal address  : std_logic_vector(ADDRESS_SIZE-1 downto 0);
signal data_in  : std_logic_vector(INPUT_SIZE-1 downto 0);
signal data_out : std_logic_vector(INPUT_SIZE-1 downto 0);

signal data      : type_array_int := read_data(PATH & "/layer/0/iwght_pkg.txt");


begin

  BRAM_SINGLE_INST: entity work.bram_single
  generic map (
    BRAM_NAME => BRAM_NAME & integer'image(i),
    INPUT_SIZE => INPUT_SIZE,
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
      address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
      data_in(31 downto 0) <= CONV_STD_LOGIC_VECTOR(data(i), INPUT_SIZE * 2);
      wait until rising_edge(clock);
    end loop;

    ifmap_ce <= '0';
    ifmap_we <= '0';


  end process;
end a1;

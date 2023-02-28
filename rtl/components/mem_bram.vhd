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
    DATA_AV_LATENCY : integer := 0;
    ROM_PATH        : string  := "";
    DEVICE          : string := "7SERIES";
    BRAM_NAME       : string := "default";
    N_BRAM          : integer := 2;
    DEPTH_BRAM      : integer := 1024;
    ADDR_WIDHT      : integer := 10
  );
  port(
    reset   : in std_logic;
    clock   : in std_logic;
    chip_en : in std_logic;
    wr_en   : in std_logic;
    data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
    address : in std_logic_vector(ADDRESS_SIZE-1 downto 0);

    data_av  : out std_logic;
    data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);

    n_read  : out std_logic_vector(31 downto 0);
    n_write : out std_logic_vector(31 downto 0)
  );
end memory;


architecture a1 of memory is

type type_data is array (0 to N_BRAM) of std_logic_vector(INPUT_SIZE-1  downto 0);
signal bram_data_out: type_data;


begin
  bram_select <= CONV_INTEGER(unsigned(address(ADDRESS_SIZE-1 downto ADDR_WIDHT)));
  data_out <= bram_data_out(bram_select);

  LOOP_MEM : for i in 0 to N_BRAM -1 generate
    bram_chip_en(i) <= chip_en when i = bram_select else '0';
    bram_wr_en(i) <= wr_en when i = bram_select else '0';
  end generate; 

    
  IF_MEM_DEFAULT: if BRAM_NAME = "default" generate
    LOOP_MEM : for i in 0 to N_BRAM -1 generate
      BRAM_SINGLE_INST: entity work.bram_single
      generic map (
        BRAM_NAME => "default", 
        INPUT_SIZE => INPUT_SIZE,
        ADDRESS_SIZE => ADDRESS_SIZE
      )
      port map(
        CLK  => clock,
        RST  => reset,
        EN   => bram_chip_en(i),
        WE   => bram_wr_en(i),
        DI   => data_in,
        ADDR => address(ADDR_WIDHT-1 downto 0),
        DO   => bram_data_out(i)
        );
    end generate; 
  end generate; 
  IF_MEM_NOT_DEFAULT: if BRAM_NAME /= "default" generate
    LOOP_MEM : for i in 0 to N_BRAM -1 generate
      BRAM_SINGLE_INST: entity work.bram_single
      generic map (
        BRAM_NAME => BRAM_NAME & integer'image(i), 
        INPUT_SIZE => INPUT_SIZE,
        ADDRESS_SIZE => ADDRESS_SIZE
      )
      port map(
        CLK  => clock,
        RST  => reset,
        EN   => bram_chip_en(i),
        WE   => bram_wr_en(i),
        DI   => data_in,
        ADDR => address(ADDR_WIDHT-1 downto 0),
        DO   => bram_data_out(i)
        );
    end generate; 
  end generate; 

  process(reset, clock)
  begin
    if reset = '1' then
        data_valid <= '0';
    elsif rising_edge(clock) then
        data_valid <= chip_en;
        data_av <= data_valid;
    end if;
  end process;

end a1;

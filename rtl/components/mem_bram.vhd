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
    BRAM_NAME       : string := "";
    N_BRAM          : integer := 0;
    DEPTH_BRAM       : integer := 1024
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

signal data_valid    : std_logic;
signal bram_chip_en  : std_logic_vector(N_BRAM - 1 downto 0);
signal bram_wr_en    : std_logic_vector(N_BRAM - 1 downto 0);
signal bram_address  : std_logic_vector(N_BRAM - 1 downto 0);
signal bram_select   : integer range 0 to N_BRAM;

type type_data is array (0 to N_BRAM + 1) of std_logic_vector(INPUT_SIZE-1  downto 0);
signal bram_data_out: type_data;

function mux_output(bram_wr_en: std_logic_vector; bram_data_out : type_data) return std_logic_vector is
  variable output : std_logic_vector(INPUT_SIZE-1 downto 0) := ( others => '0' ) ;
  begin 
  for index in 0 to N_BRAM loop
    if bram_wr_en(index) = '1' then
      output := bram_data_out(index);
    end if;
  end loop ;
  return output ;
end function mux_output;

procedure mux_input(
  chip_en : in std_logic;
  wr_en   : in std_logic;
  address : in std_logic_vector; 
  out_chip_en : out std_logic_vector;
  out_wr_en   : out std_logic_vector;
  out_address: out std_logic_vector
  ) is
  variable tmp_chip_en : std_logic_vector(N_BRAM-1 downto 0) := ( others => '0' ) ;
  variable tmp_wr_en : std_logic_vector(N_BRAM-1 downto 0) := ( others => '0' ) ;
  variable tmp_address : std_logic_vector(ADDRESS_SIZE-1 downto 0) := ( others => '0' ) ;
  begin 
  for i in 0 to N_BRAM loop
    if (DEPTH_BRAM*i <= address and address < DEPTH_BRAM*(i + 1)) then
      tmp_chip_en(i) := chip_en;
      tmp_wr_en(i) := wr_en;
      tmp_address := address - (DEPTH_BRAM*i);
    end if;
  end loop;
  out_chip_en := tmp_chip_en;
  out_wr_en := tmp_chip_en;
  out_address := tmp_address;
end procedure mux_input;

begin

  mux_input(
    chip_en => chip_en,
    wr_en => wr_en,
    address => address, 
    out_chip_en => bram_chip_en,
    out_wr_en => bram_wr_en,
    out_address => bram_address
  );

  data_out <= mux_output(bram_wr_en, bram_data_out);

  process(reset, clock)
  begin
    if reset = '1' then
        data_valid <= '0';
    elsif rising_edge(clock) then
        data_valid <= chip_en;
        data_av <= data_valid;
    end if;
  end process;

  
  LOOP_MEM : for i in 0 to N_BRAM generate
    BRAM_SINGLE_INST: entity work.bram_single
    generic map (
      BRAM_NAME => BRAM_NAME & integer'image(i), 
      INPUT_SIZE => INPUT_SIZE
    )
    port map(
      CLK  => clock,
      RST  => reset,
      EN   => bram_chip_en(i),
      WE   => bram_wr_en(i),
      DI   => data_in,
      ADDR => address,
      DO   => bram_data_out(i)
      );
  end generate; 

end a1;

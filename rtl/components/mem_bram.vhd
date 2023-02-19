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
    DEVICE : string := "7SERIES";
    N_BRAM : integer := 0;
    SIZE_BRAM : integer := 0
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
signal bram_select   : integer range 0 to N_BRAM;

type type_data is array (0 to N_BRAM + 1) of std_logic_vector(INPUT_SIZE-1  downto 0);
signal bram_data_out: type_data;

-- signal bram_data_out : std_logic_vector(INPUT_SIZE-1 downto 0);

function mux_output(bram_wr_en: std_logic_vector; bram_data_out : type_data) return std_logic_vector is
  variable output : std_logic_vector(INPUT_SIZE-1 downto 0) := ( others => '0' ) ;
  begin 
  for index in 0 to N_BRAM loop
    if bram_wr_en(index) = '1' then
      output := bram_data_out(index);
    end if;
  end loop ;
  return output ;
end function mux_output ;

begin

  -- bram_chip_en(0) <= '1' when chip_en and (SIZE_BRAM*0 <= address and address < SIZE_BRAM*1) else '0';
  -- bram_chip_en(1) <= '1' when chip_en and (SIZE_BRAM*1 <= address and address < SIZE_BRAM*2) else '0';
  -- bram_chip_en(2) <= '1' when chip_en and (SIZE_BRAM*2 <= address and address < SIZE_BRAM*3) else '0';

  -- bram_wr_en(0) <= '1' when wr_en and (SIZE_BRAM*0 <= address and address < SIZE_BRAM*1) else '0';
  -- bram_wr_en(1) <= '1' when wr_en and (SIZE_BRAM*1 <= address and address < SIZE_BRAM*2) else '0';
  -- bram_wr_en(2) <= '1' when wr_en and (SIZE_BRAM*2 <= address and address < SIZE_BRAM*3) else '0';

  -- data_out <= bram_data_out(0) when wr_en and (SIZE_BRAM*0 <= address and address < SIZE_BRAM*1) else 
  --   bram_data_out(1) when wr_en and (SIZE_BRAM*1 <= address and address < SIZE_BRAM*2) else 
  --   bram_data_out(2) when wr_en and (SIZE_BRAM*2 <= address and address < SIZE_BRAM*3) else 
  --   '0';

  LOOP_SELECT : for i in 0 to N_BRAM generate
    bram_select <= i when chip_en = '1' and (SIZE_BRAM*i <= address and address < SIZE_BRAM*(i + 1));
  end generate; 

  data_out <= mux_output(bram_wr_en, bram_data_out);


  -- code to imitate data_av in simulation
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
    bram_chip_en(i) <= '1' when chip_en = '1' and (SIZE_BRAM*i <= address and address < SIZE_BRAM*(i + 1)) else '0';
    bram_wr_en(i) <= '1' when wr_en  = '1' and (SIZE_BRAM*i <= address and address < SIZE_BRAM*(i + 1)) else '0';

    BRAM_SINGLE_INST: entity work.bram_single
    generic map (
      N_BRAM => i
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

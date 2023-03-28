library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;


entity memory is
  generic (
    INPUT_SIZE      : integer := 8;
    ADDRESS_SIZE    : integer := 12;
    DATA_AV_LATENCY : integer := 0;
    ROM_PATH        : string  := "";
    DEVICE          : string := "7SERIES";
    BRAM_NAME       : string := "default";
    BRAM_NUM        : integer := 2;
    BRAM_ADDR       : integer := 10
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

signal nclock   : std_logic;
signal data_valid    : std_logic;
signal bram_chip_en  : std_logic_vector(BRAM_NUM downto 0);
signal bram_wr_en    : std_logic_vector(BRAM_NUM downto 0);
signal bram_select   : integer range 0 to 2**(BRAM_NUM);

type type_data is array (0 to BRAM_NUM) of std_logic_vector(INPUT_SIZE-1  downto 0);
signal bram_data_out: type_data;

type type_state is (WAITCE, WAITLATENCY);
signal state : type_state;


begin
  nclock <= not clock;
  -- data_av <= '1' when chip_en = '1' and nclock = '1' else '0';

  bram_select <= CONV_INTEGER(unsigned(address(ADDRESS_SIZE-1 downto BRAM_ADDR)));
  data_out <= bram_data_out(bram_select);

  LOOP_EN : for i in 0 to BRAM_NUM -1 generate
    bram_chip_en(i) <= chip_en when i = bram_select else '0';
    bram_wr_en(i) <= wr_en when i = bram_select else '0';
  end generate;

    LOOP_MEM : for i in 0 to BRAM_NUM -1 generate
      BRAM_SINGLE_INST: entity work.bram_single
      generic map (
        BRAM_NAME => BRAM_NAME & "_instance" & integer'image(i)
      )
      port map(
        CLK  => nclock,
        RST  => reset,
        EN   => bram_chip_en(i),
        WE   => bram_wr_en(i),
        DI   => data_in,
        ADDR => address(BRAM_ADDR-1 downto 0),
        DO   => bram_data_out(i)
        );
    end generate;

   data_av <= '1';

--   data_av <= data_valid;
--   process(reset, clock)
--   begin
--     if reset = '1' then
--         data_valid <= '0';
--     elsif rising_edge(clock) then
--         case state is
--           when WAITCE =>
--             if chip_en = '1' then
--               data_valid <= '1';
--               state <= WAITLATENCY;
--             else
--               data_valid <= '0';
--             end if;
--           when WAITLATENCY =>
--               data_valid <= '0';
--               state <= WAITCE;
--         end case;
--     end if;
--
--   end process;

end a1;
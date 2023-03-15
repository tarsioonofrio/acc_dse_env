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
    BRAM_NAME       : string := "";
    BRAM_NUM        : integer := 0;
    BRAM_ADDR       : integer := 0
    );

  port (reset   : in std_logic;
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

  type ofmap is array(0 to 2**ADDRESS_SIZE) of std_logic_vector(INPUT_SIZE-1 downto 0);
  signal mem : ofmap := (others => (others => '0'));

  type statesDataAv is (WAITCE, WAITLATENCY);
  signal EA_dataav, PE_dataav : statesDataAv;

  signal cont_read, cont_write, cont_av_cycles : integer;

  signal data_av_signal : std_logic;
  signal ROM :type_array_int;

begin

  GEN_READ: if ROM_PATH /= "" generate
    ROM <= read_data(ROM_PATH) when reset = '1';
  end generate;

  -- Process to write in memory
  process(clock)
  begin
    if clock'event and clock = '1' then
      if ROM_PATH = "" then
        if chip_en = '1' then
          if wr_en = '1' then
            mem(CONV_INTEGER(unsigned(address))) <= data_in;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- Read from memory
  data_out <= mem(CONV_INTEGER(unsigned(address))) when chip_en = '1' and ROM_PATH = "" else
              CONV_STD_LOGIC_VECTOR(ROM(CONV_INTEGER(unsigned(address))), INPUT_SIZE) when chip_en = '1' and ROM_PATH /= "" ;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_dataav <= WAITCE;
    elsif rising_edge(clock) then
      if chip_en = '0' then
        EA_dataav <= WAITCE;
      else
        EA_dataav <= PE_dataav;
      end if;
    end if;
  end process;

  process (EA_dataav, chip_en, cont_av_cycles)
  begin
    case EA_dataav is
      when WAITCE =>
        if chip_en = '1' then
          PE_dataav <= WAITLATENCY;
        end if;
      when WAITLATENCY =>
        if cont_av_cycles = DATA_AV_LATENCY-1 then
          PE_dataav <= WAITCE;
        end if;
    end case;
  end process;

  process (clock, reset)
  begin
    if reset = '1' then
      cont_av_cycles <= 0;
    elsif rising_edge(clock) then
      if chip_en = '1' then
        case EA_dataav is
          when WAITLATENCY =>

            cont_av_cycles <= cont_av_cycles + 1;

            if cont_av_cycles = DATA_AV_LATENCY-1 then
              cont_av_cycles <= 0;
            end if;

          when others => null;
        end case;
      else
        cont_av_cycles <= 0;
      end if;

    end if;
  end process;

  process(clock, reset)
  begin
    if reset = '1' then
      data_av_signal <= '0';
    elsif clock'event and clock = '1' then
      if DATA_AV_LATENCY = 0 then
        data_av_signal <= '1';
      else
        if chip_en = '1' then
          if DATA_AV_LATENCY = 1 and EA_dataav = WAITCE then
            data_av_signal <= '1';
          elsif DATA_AV_LATENCY > 1 and EA_dataav = WAITLATENCY and cont_av_cycles = DATA_AV_LATENCY-2 then
            data_av_signal <= '1';
          else
            data_av_signal <= '0';
          end if;
        else
          data_av_signal <= '0';
        end if;
      end if;
    end if;
  end process;

  data_av <= (data_av_signal and chip_en) when DATA_AV_LATENCY = 1 else
             data_av_signal;

  process(clock, reset)
  begin
    if reset = '1' then
      cont_write <= 0;
      cont_read  <= 0;
    elsif clock'event and clock = '1' then
      if chip_en = '1' then
        if DATA_AV_LATENCY > 0 then
          if wr_en = '1' then
            cont_write <= cont_write + 1;
          elsif wr_en = '0' and EA_dataav = WAITLATENCY and cont_av_cycles = DATA_AV_LATENCY-1 then
            cont_read <= cont_read + 1;
          end if;
        else
          if wr_en = '1' then
            cont_write <= cont_write + 1;
          else
            cont_read <= cont_read + 1;
          end if;
        end if;
      end if;
    end if;
  end process;

  n_read <= CONV_STD_LOGIC_VECTOR(cont_read, 32);

  n_write <= CONV_STD_LOGIC_VECTOR(cont_write, 32);

end a1;

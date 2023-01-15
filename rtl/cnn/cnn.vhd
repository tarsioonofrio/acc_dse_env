library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.config_package.all;
use work.util_package.all;


entity cnn is
  generic (
    N_FILTER       : integer := 16;
    N_CHANNEL      : integer := 3;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    LAT            : integer := 2;
    N_LAYER        : integer := 0;
    PATH           : string  := ""
  );
  port (reset   : in std_logic;
        clock   : in std_logic;

        p_start_conv : in std_logic;
        p_end_conv   : out std_logic;
        p_debug      : out std_logic;
        config       : in  type_config_logic;

        p_ifmap_ce : in std_logic;
        p_ifmap_we : in std_logic;
        p_ifmap_valid : out std_logic;

        p_ofmap_ce : in std_logic;
        p_ofmap_we : in std_logic;
        p_ofmap_valid : out std_logic;
        
        p_address : in std_logic_vector(MEM_SIZE-1 downto 0);
        p_value_in : in std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0); -- tem q ser a mesma configuração do p_value_out
        p_value_out : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0)
        );
end cnn;

architecture a1 of cnn is

  signal mem_ofmap_valid, mem_ofmap_ce, mem_ofmap_we: std_logic;

  signal debug, start_conv, end_conv, ofmap_valid, ofmap_ce, ofmap_we, iwght_valid, ifmap_ce, ifmap_we, ifmap_valid: std_logic_vector(0 to 3);

  signal mem_ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);
  type type_address is array (0 to 3) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal address_in, address_out : type_address;

  type type_value is array (0 to 3) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  signal value_out, value_in: type_value;
 
  signal mem_ofmap_in, mem_ofmap_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  --type type_config_array  is array (0 to 1) of type_config_logic;
  signal config0 : type_config_logic := read_config(PATH & "/0/config_pkg.txt");
  signal config1 : type_config_logic := read_config(PATH & "/1/config_pkg.txt");
  signal gold    : type_array_int := read_data(PATH & "/0/gold_pkg.txt");

  signal n_read, n_write : std_logic_vector(31 downto 0);


begin

  end_conv(0) <= p_start_conv;
  ifmap_ce(0) <= p_ifmap_ce;
  ifmap_we(0) <= p_ifmap_we;
  address_in(0) <= p_address;
  value_out(0) <= p_value_in;
  p_ifmap_valid <= ofmap_valid(0);


  ifmap_ce(1) <= ofmap_ce(0);
  ifmap_we(1) <= ofmap_we(0);
  address_in(1) <= address_out(0);
  value_in(1) <= value_out(0) when ofmap_ce(0) = '1' and ofmap_we(0) = '1' else value_out(2);
  ofmap_valid(0) <= ifmap_valid(1);
  start_conv(1) <= end_conv(0);


  ifmap_ce(2) <= ofmap_ce(1);
  ifmap_we(2) <= ofmap_we(1);
  address_in(2) <= address_out(1);
  value_in(2) <= value_out(1) when ofmap_ce(1) = '1' and ofmap_we(1) = '1' else value_out(3);
  ofmap_valid(1) <= ifmap_valid(2);
  start_conv(2) <= end_conv(1);

  ifmap_ce(3) <= ofmap_ce(2);
  ifmap_we(3) <= ofmap_we(2);
  address_in(3) <= address_out(2);
  value_in(3) <= value_out(2) when ofmap_ce(2) = '1' and ofmap_we(2) = '1' else mem_ofmap_out;
  ofmap_valid(2) <= ifmap_valid(3);
  start_conv(3) <= end_conv(2);


  mem_ofmap_ce <= ofmap_ce(3) or p_ofmap_ce;
  mem_ofmap_we <= ofmap_we(3) or p_ofmap_we;
  mem_ofmap_address <= p_address when p_ofmap_ce = '1' else address_out(3);
  mem_ofmap_in <=  value_out(3);
  ofmap_valid(3) <= mem_ofmap_valid;
  p_end_conv <= end_conv(3);

  p_ofmap_valid <= mem_ofmap_valid;
  p_value_out <= mem_ofmap_out;

  p_debug <= debug(2);

  PE0 : entity work.pe
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      SHIFT          => SHIFT,
      CARRY_SIZE     => CARRY_SIZE,
      IWGHT_PATH     => PATH & "/0/iwght_pkg.txt",
      IFMAP_PATH     => PATH & "/0/ifmap_pkg.txt" 
      )
    port map(
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv(1),
      p_end_conv      => end_conv(1),
      p_debug         => debug(1),
      config          => config0,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => iwght_valid(1),

      p_ifmap_ce      => ifmap_ce(1),
      p_ifmap_we      => ifmap_we(1),
      p_ifmap_valid   => ifmap_valid(1),

      p_ofmap_we      => ofmap_we(1),
      p_ofmap_ce      => ofmap_ce(1),
      p_ofmap_valid   => ofmap_valid(1),

      p_address_in    => address_in(1),
      p_value_in      => value_in(1),
      p_address_out   => address_out(1),
      p_value_out     => value_out(1)
      );

  PE1 : entity work.pe
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      SHIFT          => SHIFT,
      CARRY_SIZE     => CARRY_SIZE,
      IWGHT_PATH     => PATH & "/1/iwght_pkg.txt"
      )
    port map(
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv(2),
      p_end_conv      => end_conv(2),
      p_debug         => debug(2),
      config          => config1,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => iwght_valid(2),

      p_ifmap_ce      => ifmap_ce(2),
      p_ifmap_we      => ifmap_we(2),
      p_ifmap_valid   => ifmap_valid(2),

      p_ofmap_we      => ofmap_we(2),
      p_ofmap_ce      => ofmap_ce(2),
      p_ofmap_valid   => ofmap_valid(2),

      p_address_in    => address_in(2),
      p_value_in      => value_in(2),
      p_address_out   => address_out(2),
      p_value_out     => value_out(2)
      );

  PEN : entity work.pe
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      SHIFT          => SHIFT,
      CARRY_SIZE     => CARRY_SIZE,
      IWGHT_PATH     => PATH & "/1/iwght_pkg.txt"
      )
    port map(
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv(3),
      p_end_conv      => end_conv(3),
      p_debug         => debug(3),
      config          => config1,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => iwght_valid(3),

      p_ifmap_ce      => ifmap_ce(3),
      p_ifmap_we      => ifmap_we(3),
      p_ifmap_valid   => ifmap_valid(3),

      p_ofmap_we      => ofmap_we(3),
      p_ofmap_ce      => ofmap_ce(3),
      p_ofmap_valid   => ofmap_valid(3),

      p_address_in    => address_in(3),
      p_value_in      => value_in(3),
      p_address_out   => address_out(3),
      p_value_out     => value_out(3)
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
      chip_en  => mem_ofmap_ce,
      wr_en    => mem_ofmap_we,
      data_in  => mem_ofmap_in,
      address  => mem_ofmap_address,
      data_av  => mem_ofmap_valid,
      data_out => mem_ofmap_out,
      n_read   => n_read,
      n_write  => n_write
      );

  --process(clock)

  --  -- convolution counter
  --  variable cont_conv : integer := 0;

  --begin

  --  if clock'event and clock = '0' then
  --    if debug(1) = '1' and cont_conv < (conv_integer(unsigned(config0.convs_per_line_convs_per_line))*conv_integer(unsigned(config0.n_filter))) then
  --      if value_out(1) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(address_out(1)))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
  --        --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
  --        report "end of simulation with error!";
  --        report "number of convolutions executed: " & integer'image(cont_conv);
  --        report "idx: " & integer'image(CONV_INTEGER(unsigned(address_out(1))));
  --        report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(address_out(1)))));

  --        if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
  --          report "obtained value: " & integer'image(CONV_INTEGER(value_out(1)(31 downto 0)));
  --        else
  --          report "obtained value: " & integer'image(CONV_INTEGER(value_out(1)));
  --        end if;

  --        assert false severity failure;
  --      end if;
  --      cont_conv := cont_conv + 1;

  --    elsif end_conv(0) = '1' then
  --      --report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
  --      --report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
  --      report "number of convolutions: " & integer'image(cont_conv);
  --      report "end of simulation without error!" severity failure;
  --    end if;
  --  end if;

  --end process;

end a1;

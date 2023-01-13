library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.config_package.all;
use work.util_package.all;


entity tb is
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
end tb;

architecture a1 of tb is
  signal debug : std_logic;

  signal mem_ofmap_valid: std_logic;

  signal start_conv, end_conv, ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_we, iwght_valid, ifmap_ce, ifmap_we, ifmap_valid : std_logic_vector(1 downto 0);

  type type_address is array (0 to 1) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal address : type_address;

  type type_value is array (0 to 1) of  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal value_out, value_in : type_value;

  type type_mem is array (0 to 1) of type_array_int;
  signal input_wght, input_map, gold, temp_arr :  type_mem;
 
  signal mem_ofmap_in, mem_ofmap_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  --type type_config_array  is array (0 to 1) of type_config_logic;
  signal config0 :  type_config_logic := read_config(PATH & "/0/config_pkg.txt");
  signal config1 :  type_config_logic := read_config(PATH & "/1/config_pkg.txt");

  signal n_read, n_write : std_logic_vector(31 downto 0);


begin

  p_debug <= debug;

  start_conv(0) <= p_start_conv;
  start_conv(1) <= end_conv(0);
  p_end_conv <= end_conv(1);

  ifmap_we(1) <= ofmap_ce(0);
  ifmap_ce(1) <= ofmap_we(0);
  address_in(1) <= address_out(0);
  value_in(1) <= value_out(0) when ofmap_ce(0) = '1' and ofmap_we(0) = '1' else value_out(2);
  ofmap_valid(0) <= ifmap_valid(1);

  mem_ofmap_ce <= '1' when p_ofmap_ce ='1' or ofmap_ce(1) = '1' else '0';
  mem_ofmap_we <= '1' when p_ofmap_we ='1' or ofmap_we(1) = '1' else '0';
  mem_ofmap_address <= p_address when p_ofmap_ce = '1' else address_out(1);
  mem_ofmap_in <= p_value_in when p_ofmap_ce ='1' and p_ofmap_we ='1' else value_out(1);
  ofmap_valid(1) <= mem_ofmap_valid;

  p_ofmap_valid <= mem_ofmap_valid;
  p_value_out <= mem_ofmap_out;


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

      p_start_conv    => start_conv(0),
      p_end_conv      => end_conv(0),
      p_debug         => '0',
      config          => config0,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => (others => '0'),

      p_ifmap_ce      => ifmap_ce(0),
      p_ifmap_we      => ifmap_we(0),
      p_ifmap_valid   => ifmap_valid(0),

      p_ofmap_we      => ofmap_we(0),
      p_ofmap_ce      => ofmap_ce(0),
      p_ofmap_valid   => ofmap_valid(0),

      p_address       => address(0),
      p_value_in      => value_in(0),
      p_value_out     => value_out(0)
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

      p_start_conv    => start_conv(1),
      p_end_conv      => end_conv(1),
      p_debug         => debug,
      config          => config1,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => (others => '0'),

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
      chip_en  => mem_ofmap_ce,
      wr_en    => mem_ofmap_we,
      data_in  => mem_ofmap_in,
      address  => mem_ofmap_address,
      data_av  => mem_ofmap_valid,
      data_out => mem_ofmap_out,
      n_read   => n_read,
      n_write  => n_write
      );

end a1;

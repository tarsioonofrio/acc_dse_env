library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.config_package.all;
use work.util_package.all;

use pe0;
use pe1;


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
    N_LAYER        : integer := 0
  );
  port (reset   : in std_logic;
        clock   : in std_logic;

        p_start_conv : in std_logic;
        p_end_conv   : out std_logic;
        p_debug      : out std_logic;
        config       : in  type_config_logic;

        chip_en : in std_logic;
        wr_en   : in std_logic;
        data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
        address : in std_logic_vector(ADDRESS_SIZE-1 downto 0);

        data_av  : out std_logic;
        data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);

        n_read  : out std_logic_vector(31 downto 0);
        n_write : out std_logic_vector(31 downto 0)
        );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, end_conv, end_conv2, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_we, iwght_valid, ifmap_ce, ifmap_we, ifmap_valid : std_logic_vector(1 downto 0);

  type type_address is array (0 to 1) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal address : type_address;

  type type_value is array (0 to 1) of  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal value_out, value_in : type_value;

  type type_config_array  is array (0 to 1) of type_config_logic;
  signal config :  type_config_array;

  type type_mem is array (0 to 1) of type_array_int;
  signal input_wght, input_map, gold, temp_arr :  type_mem;
 

begin

  start_conv(0) <= p_start_conv;
  start_conv(2) <= end_conv(0);

  p_end_conv <= end_conv(1);

  mem_ofmap_ce <= '1' when p_ofmap_ce ='1' or ofmap_ce = '1' else '0';
  mem_ofmap_we <= '1' when p_ofmap_we ='1' or ofmap_we = '1' else '0';
  mem_ofmap_address <= p_address when p_ofmap_ce = '1' else ofmap_address;

  mem_ofmap_in <= ofmap_pad & p_value_in when p_ofmap_ce = '1' and p_ofmap_we = '1' else ofmap_out;

  p_ofmap_valid <= ofmap_valid;
  p_value_out <= ofmap_in((INPUT_SIZE*2)-1 downto 0);
  p_debug <= debug;

  PE0 : entity pe0.pe
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
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv(0),
      p_end_conv      => end_conv(0),
      p_debug         => '0',
      config          => '0',

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => (others => '0'),

      p_ifmap_ce      => '0',
      p_ifmap_we      => '0',
      p_ifmap_valid   => (others => '0'),

      p_ofmap_we      => ofmap_we(0),
      p_ofmap_ce      => ofmap_ce(0),
      p_ofmap_valid   => ofmap_valid(0),

      p_address       => address(0),
      p_value_in      => value_in(0),
      p_value_out     => value_out(0)
      );

  PE1 : entity pe0.pe
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
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv(1),
      p_end_conv      => end_conv(1),
      p_debug         => '0',
      config          => '0',

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => (others => '0'),

      p_ifmap_ce      => '0',
      p_ifmap_we      => '0',
      p_ifmap_valid   => (others => '0'),

      p_ofmap_we      => ofmap_we(1),
      p_ofmap_ce      => ofmap_ce(1),
      p_ofmap_valid   => ofmap_valid(1),

      p_address       => address(1),
      p_value_in      => value_in(1),
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
      data_av  => ofmap_valid,
      data_out => ofmap_in,
      n_read   => (others => '0'),
      n_write  => (others => '0')
      );

end a1;

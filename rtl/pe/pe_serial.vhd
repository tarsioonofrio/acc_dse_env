library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

use work.config_package.all;


entity pe is
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
     LAT            : integer := 2
   );
  port (
    clock : in std_logic;
    reset : in std_logic;

    p_start_conv : in std_logic;
    p_end_conv   : out std_logic;
    p_debug      : out std_logic;
    config       : in  type_config_logic;

    p_iwght_ce : in std_logic;
    p_iwght_we : in std_logic;
    p_iwght_valid : out std_logic;

    p_ifmap_ce : in std_logic;
    p_ifmap_we : in std_logic;
    p_ifmap_valid : out std_logic;

    p_ofmap_ce : out std_logic;
    p_ofmap_we : out std_logic;
    p_ofmap_valid : in std_logic;
    
    p_address_in : in std_logic_vector(MEM_SIZE-1 downto 0);
    p_value_in : in std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0); -- tem q ser a mesma configuração do p_value_out
    p_address_out : in std_logic_vector(MEM_SIZE-1 downto 0);
    p_value_out : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0)
  );
end pe;

architecture a1 of pe is

  signal start_conv, end_conv, debug : std_logic;

  signal iwght_valid, ifmap_valid, ofmap_valid : std_logic;

  signal iwght_ce, ifmap_ce, ofmap_ce, ofmap_we : std_logic; 

  signal mem_iwght_ce, mem_ifmap_ce : std_logic; 

  signal iwght_address, ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal mem_iwght_address, mem_ifmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal iwght_value, ifmap_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal ofmap_in, ofmap_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal mem_ifmap_in : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  --signal ofmap_pad : std_logic_vector(CARRY_SIZE-1 downto 0);

begin
  mem_iwght_ce <= '1' when p_iwght_ce ='1' or iwght_ce = '1' else '0';
  mem_ifmap_ce <= '1' when p_ifmap_ce ='1' or ifmap_ce = '1' else '0';
  --mem_ofmap_ce <= '1' when p_ofmap_ce ='1' or ofmap_ce = '1' else '0';
  --mem_ofmap_we <= '1' when p_ofmap_we ='1' or ofmap_we = '1' else '0';
  p_ofmap_ce <=  ofmap_ce;
  p_ofmap_we <=  ofmap_we;

  mem_iwght_address <= p_address_in when p_iwght_ce = '1' else iwght_address;
  mem_ifmap_address <= p_address_in when p_ifmap_ce = '1' else ifmap_address;
  --mem_ofmap_address <= p_address when p_ofmap_ce = '1' else ofmap_address;
  p_address_out <= ofmap_address;
 
  mem_ifmap_in <= ofmap_pad & p_value_in when p_ofmap_ce = '1' and p_ofmap_we = '1' else ofmap_out;

  p_iwght_valid <= iwght_valid;
  p_ifmap_valid <= ifmap_valid;
  p_end_conv <= end_conv; 
  p_value_out <= mem_ifmap_value when p_ifmap_ce = '1' and p_ifmap_we = '1' else ofmap_out;
  p_debug <= debug;

  start_conv <= p_start_conv ;

  ifmap_value <= mem_ifmap_value((INPUT_SIZE*2)-1 downto 0);
  ofmap_valid <= p_ofmap_valid;
  ofmap_in <= p_value_in;

  IWGHT : entity work.memory
    generic map(
      ROM => "weight",
      INPUT_SIZE => INPUT_SIZE*2,
      ADDRESS_SIZE => MEM_SIZE, 
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => mem_iwght_ce,
      wr_en    => p_iwght_we,
      data_in  => p_value_in,
      address  => mem_iwght_address,
      data_av  => iwght_valid,
      data_out => iwght_value,
      n_read   => iwght_n_read,
      n_write  => iwght_n_write
      );

  IFMAP : entity work.memory
    generic map(
      ROM => "map",
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => mem_ifmap_ce,
      wr_en    => p_ifmap_we,
      data_in  => p_value_in,
      address  => mem_ifmap_address,
      data_av  => ifmap_valid,
      data_out => mem_ifmap_value,
      n_read   => ifmap_n_read,
      n_write  => ifmap_n_write
      );


  CONV : entity work.convolution
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

      start_conv    => start_conv,
      end_conv      => end_conv,
      debug         => debug,
      config        => config,

      iwght_valid   => iwght_valid,
      iwght_value   => iwght_value,
      iwght_address => iwght_address,
      iwght_ce      => iwght_ce,

      ifmap_valid   => ifmap_valid,
      ifmap_value   => ifmap_value,
      ifmap_address => ifmap_address,
      ifmap_ce      => ifmap_ce,

      ofmap_valid   => ofmap_valid,
      ofmap_in      => ofmap_in,
      ofmap_out     => ofmap_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

end a1;

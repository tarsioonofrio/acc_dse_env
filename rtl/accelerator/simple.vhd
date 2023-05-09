library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_signed.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_textio.all;

library std;
  use std.textio.all;

library work;
  use work.util_package.all;
  use work.config_package.all;
  use work.config_package_array.all;

entity accelerator is
  generic (
    FPGA           : std_logic := '0';
    N_FILTER       : integer := 16;
    N_CHANNEL      : integer := 3;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    N_LAYER        : integer := 0;
    PATH           : string  := "";
    BRAM_LAT       : integer := 0;
    BRAM_ADDR      : integer := 9;
    BRAM_NUM_IWGHT : string  := "";
    BRAM_NUM_IFMAP : string  := "";
    BRAM_NUM_GOLD  : string  := ""
  );
  port (
    p_clock : in std_logic;
    p_reset : in std_logic;
    p_start : in std_logic;
    p_stop  : in std_logic
    );
end entity accelerator;

architecture accelerator of tb is

  signal clock       : std_logic := '0';
  signal reset       : std_logic := '0';
  signal s_reset       : std_logic := '0';
  signal start       : std_logic := '0';
  signal start_conv  : std_logic := '0';
  signal debug       : std_logic := '0';
  signal gold_valid  : std_logic := '0';
  signal iwght_valid : std_logic := '0';
  signal ifmap_valid : std_logic := '0';
  signal ofmap_valid : std_logic := '0';
  signal ofmap_ce    : std_logic := '0';
  signal ofmap_we    : std_logic := '0';
  signal ifmap_ce    : std_logic := '0';
  signal ifmap_we    : std_logic := '0';
  signal end_conv    : std_logic := '0';

  signal address : std_logic_vector(MEM_SIZE - 1 downto 0);

  signal value_in  : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0) := (others => '0');
  signal value_out : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0) := (others => '0');
  signal gold : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0) := (others => '0');

  signal ifmap_n_read  : std_logic_vector(31 downto 0);
  signal gold_n_read  : std_logic_vector(31 downto 0);
  signal ifmap_n_write : std_logic_vector(31 downto 0);
  signal gold_n_write : std_logic_vector(31 downto 0);


begin

  clock <= p_clock;  
  start <= p_start;
  reset <= '1' when (p_reset or s_reset) else '0';

  IFMAP : entity work.memory
    generic map(
      BRAM_NAME => "ifmap_layer0", -- "default", "ifmap_layer0", "iwght_layer0"
      BRAM_NUM => BRAM_NUM_IFMAP,
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => BRAM_LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ifmap_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => address,
      data_av  => ifmap_valid,
      data_out => value_in,
      n_read   => ifmap_n_read,
      n_write  => ifmap_n_write
      );


  DUT : entity work.cnn
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
      PATH           => PATH,
      BRAM_ADDR      => BRAM_ADDR,
      BRAM_NUM_IWGHT => BRAM_NUM_IWGHT,
      BRAM_NUM_IFMAP => BRAM_NUM_IFMAP
    )
    port map (
      clock => clock,
      reset => reset,

      p_start_conv => start_conv,
      p_end_conv   => end_conv,
      p_debug      => debug,

      p_ifmap_ce    => ifmap_ce,
      p_ifmap_we    => ifmap_we,
      p_ifmap_valid => ifmap_valid,

      p_ofmap_we    => ofmap_we,
      p_ofmap_ce    => ofmap_ce,
      p_ofmap_valid => ofmap_valid,

      p_address   => address,
      p_value_in  => value_in,
      p_value_out => value_out
    );


  process
    -- convolution counter
    variable cont_conv : integer := 0;

  begin
    wait until rising_edge(start);
    -- Image input
    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';

    ifmap_ce <= '1';
    ifmap_we <= '1';

    for i in 0 to (conv_integer(unsigned(const_config_logic_vector(0).x_size_x_size)) * conv_integer(unsigned(const_config_logic_vector(0).n_channel))) loop
      address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
      wait until rising_edge(clock);
      wait until rising_edge(clock);
    end loop;

    ifmap_ce <= '0';
    ifmap_we <= '0';

    start_conv <= '1';
    wait until rising_edge(clock);
    start_conv <= '0';
    wait until rising_edge(clock);
    wait until end_conv = '1';
    p_stop <= '1';

  end process;

end a1;

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
    N_FILTER       : integer := 64;
    N_CHANNEL      : integer := 64;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 16;
    INPUT_SIZE     : integer := 16;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    N_LAYER        : integer := 3;
    BRAM_LAT       : integer := 0;
    BRAM_ADDR      : integer := 9;
    PATH           : string  := "../apps/rtl_output/default/default";
    BRAM_NUM_IWGHT : integer := 371001;
    BRAM_NUM_IFMAP : integer := 040806;
    BRAM_NUM_GOLD  : integer := 020408
  );
  port (
    p_clock : in std_logic;
    p_reset : in std_logic;
    p_start : in std_logic;
    p_stop  : out std_logic
    );
end entity accelerator;

architecture a1 of accelerator is

  signal clock       : std_logic := '0';
  signal reset       : std_logic := '0';
  signal start       : std_logic := '0';
  signal stop        : std_logic := '0';
  signal start_conv  : std_logic := '0';
  signal debug       : std_logic := '0';
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
  signal index : integer range 0 to 2**(MEM_SIZE) := 0;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, WRITEFEATURES, READFEATURES, START_CNN, STOP_CNN);
  signal EA_read : statesReadValues;

begin
    
  start <= p_start;
  clock <= p_clock;
  reset <= p_reset;
  p_stop <= stop;

  IFMAP : entity work.memory
    generic map(
      BRAM_NAME => "ifmap_layer0", -- "default", "ifmap_layer0", "iwght_layer0"
      BRAM_NUM => BRAM_NUM_IFMAP,
      BRAM_ADDR => BRAM_ADDR,
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
      data_out => value_in
      );


  CNN : entity work.cnn
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      CARRY_SIZE     => CARRY_SIZE,
      SHIFT          => SHIFT,
      N_LAYER        => N_LAYER,
      LAT            => BRAM_LAT,
      BRAM_ADDR      => BRAM_ADDR,
      PATH           => PATH,
      BRAM_NUM_IWGHT => BRAM_NUM_IWGHT,
      BRAM_NUM_IFMAP => BRAM_NUM_IFMAP,
      BRAM_NUM_GOLD  => BRAM_NUM_GOLD
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


    
  -- process(reset, clock)
  -- begin
  --   if reset = '1' then
  --     stop        <= '0';
  --     start_conv  <= '0';
  --     debug       <= '0';
  --     iwght_valid <= '0';
  --     ifmap_valid <= '0';
  --     ofmap_valid <= '0';
  --     ofmap_ce    <= '0';
  --     ofmap_we    <= '0';
  --     ifmap_ce    <= '0';
  --     ifmap_we    <= '0';
  --     end_conv    <= '0';
  --     index       <= 0;
  --   elsif rising_edge(clock) then
  --     case EA_read is
  --       when WAITSTART =>
  --         stop        <= '0';
  --         start_conv  <= '0';
  --         debug       <= '0';
  --         iwght_valid <= '0';
  --         ifmap_valid <= '0';
  --         ofmap_valid <= '0';
  --         ofmap_ce    <= '0';
  --         ofmap_we    <= '0';
  --         ifmap_ce    <= '0';
  --         ifmap_we    <= '0';
  --         end_conv    <= '0';
  --         index       <= 0;
  --         if p_start = '1' then
  --           start_conv <= '1';
  --           EA_read <= WRITEFEATURES;
  --         end if;
        
  --       when WRITEFEATURES =>
  --         start_conv <= '0';
  --         ifmap_ce <= '1';
  --         ifmap_we <= '1';
  --         address <= CONV_STD_LOGIC_VECTOR(index, INPUT_SIZE);
  --         index <= index + 1;
  --         if index = conv_integer(unsigned(const_config_logic_vector(0).x_size_x_size)) * conv_integer(unsigned(const_config_logic_vector(0).n_channel)) then
  --           EA_read <= START_CNN;
  --         end if;

  --       when START_CNN =>
  --         ifmap_ce <= '0';
  --         ifmap_we <= '0';
  --         start_conv <= '1';
  --         EA_read <= STOP_CNN;

  --       when STOP_CNN =>
  --         if end_conv = '1' then
  --           EA_read <= WAITSTART;
  --           stop <= '1';
  --         end if;

  --       when others => null;
  --     end case;
  --   end if;
  -- end process;

  process
  begin
    wait until rising_edge(start);

    -- Image input
    wait until rising_edge(clock);
    ifmap_ce <= '1';
    ifmap_we <= '1';
    p_stop <= '0';
    for i in 0 to (conv_integer(unsigned(const_config_logic_vector(0).x_size_x_size)) * conv_integer(unsigned(const_config_logic_vector(0).n_channel))) loop
      address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
      wait until rising_edge(clock);
    end loop;

    ifmap_ce <= '0';
    ifmap_we <= '0';
    start_conv <= '1';
    wait until rising_edge(clock);

    start_conv <= '0';
    wait until rising_edge(clock);
    wait until end_conv = '1';
    stop <= '1';

  end process;

end a1;
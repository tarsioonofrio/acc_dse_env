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

entity tb is
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
    LAT            : integer := 2;
    N_LAYER        : integer := 0;
    PATH           : string  := "";
    BRAM_LAT       : integer := 2;
    BRAM_NAME_LAYER : integer := 0;
    BRAM_ADDR      : integer := 10;
    BRAM_NUM_IWGHT : string  := "";
    BRAM_NUM_IFMAP : string  := "";
    BRAM_NUM_GOLD  : string  := ""
  );
  port (
    p_clock : in std_logic
  );
end entity tb;

architecture a1 of tb is

  signal clock      : std_logic := '0';
  signal reset      : std_logic := '0';
  signal start_conv : std_logic := '0';
  signal debug      : std_logic := '0';

  signal gold_valid : std_logic := '0';
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
  IF_FPGA : if FPGA = '1' generate
    clock <= p_clock;
  end generate IF_FPGA;

  IF_NO_FPGA : if FPGA = '0' generate
    clock <= not clock after 0.5 ns;
  end generate IF_NO_FPGA;

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
      wr_en    => ifmap_we,
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

  MGOLD : entity work.memory
    generic map(
      BRAM_NAME => "gold_layer" & integer'image(N_LAYER),
      BRAM_NUM =>BRAM_NUM_GOLD,
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => BRAM_LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ofmap_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => address,
      data_av  => gold_valid,
      data_out => gold,
      n_read   => gold_n_read,
      n_write  => gold_n_write
      );

  clock <= not clock after 0.5 ns;

  process
    -- convolution counter
    variable cont_conv : integer := 0;

  begin
    -- Image input
    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';

    ifmap_ce <= '1';
    ifmap_we <= '1';

    for i in 0 to (conv_integer(unsigned(const_config_logic_vector(0).x_size_x_size)) * conv_integer(unsigned(const_config_logic_vector(0).n_channel))) loop
      address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
--       value_in(31 downto 0) <= CONV_STD_LOGIC_VECTOR(ifmap(i), INPUT_SIZE * 2);
      wait until rising_edge(clock);
    end loop;

    ifmap_ce <= '0';
    ifmap_we <= '0';

    start_conv <= '1';
    wait until rising_edge(clock);
    start_conv <= '0';
    wait until rising_edge(clock);
    wait until end_conv = '1';

    -- input_map <= (others => 0);
    wait until rising_edge(clock);
    wait until rising_edge(clock);

    for i in 0 to (conv_integer(unsigned(const_config_logic_vector(N_LAYER - 1).convs_per_line_convs_per_line)) * conv_integer(unsigned(const_config_logic_vector(N_LAYER - 1).n_filter))) loop
      ofmap_ce <= '1';
      address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
      wait until rising_edge(ofmap_valid);
      -- input_map(i) <= conv_integer(unsigned(value_out(31 downto 0)));
        if value_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(address))), (INPUT_SIZE * 2)) then
          report "end of simulation with error!";
          report "number of convolutions executed: " & integer'image(cont_conv);
          report "idx: " & integer'image(CONV_INTEGER(unsigned(address)));
          report "expected value: " & integer'image(CONV_INTEGER(gold(31 downto 0)));

          if (INPUT_SIZE * 2) + CARRY_SIZE > 32 then
            report "obtained value: " & integer'image(CONV_INTEGER(value_out(31 downto 0)));
          else
            report "obtained value: " & integer'image(CONV_INTEGER(value_out));
          end if;

          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;
    end loop;

    report "number of convolutions: " & integer'image(cont_conv);
    report "end of conv without error!";

    ofmap_ce <= '0';

    -- stop simulation
    report "end of simulation without error!" severity failure;

  end process;

end a1;

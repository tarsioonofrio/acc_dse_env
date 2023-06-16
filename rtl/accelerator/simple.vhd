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
        -- START SECTION
        -- 3 CONV
        OP_TYPE        : string    := "CCC";
        N_LAYER        : integer := 3;
        PATH           : string  := "../apps/rtl_output/default/default";
        -- 3 CONV + FULLY
--         N_LAYER        : integer := 4;
--         OP_TYPE        : string    := "CCCF";
--         PATH           : string  := "../apps/rtl_output/default/default";
        -- 3 CONV + MAX POOL + FULLY
        -- N_LAYER        : integer := 5;
        -- OP_TYPE        : string    := "CCCMF";
        -- PATH           : string  := "../apps/rtl_output/maxpool/default";
        -- END SECTION
    FPGA           : std_logic := '1';
    N_FILTER       : integer := 64;
    N_CHANNEL      : integer := 64;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 16;
    INPUT_SIZE     : integer := 16;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    BRAM_LAT       : integer := 0;
    BRAM_ADDR      : integer := 9;
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
  attribute dont_touch : string;
  attribute dont_touch of accelerator : entity is "true";           
end entity accelerator;

architecture a1 of accelerator is

  signal clock       : std_logic;
  signal reset       : std_logic;
  signal start       : std_logic;
  signal stop        : std_logic;
  signal start_conv  : std_logic;
  signal debug       : std_logic;
  signal iwght_valid : std_logic;
  signal ifmap_valid : std_logic;
  signal mem_ifmap_valid : std_logic;
  signal ofmap_valid : std_logic;
  signal gold_valid  : std_logic;
  signal ofmap_ce    : std_logic;
  signal ofmap_we    : std_logic;
  signal ifmap_ce    : std_logic;
  signal ifmap_we    : std_logic;
  signal end_conv    : std_logic;

  signal address : std_logic_vector(MEM_SIZE - 1 downto 0);
  signal address_mem : std_logic_vector(MEM_SIZE - 1 downto 0);

  signal value_in  : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0);
  signal value_out : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0);
  signal gold      : std_logic_vector(((INPUT_SIZE * 2) + CARRY_SIZE) - 1 downto 0);
  signal index : integer range 0 to 2**(MEM_SIZE);

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, WRITEFEATURES, READFEATURES, START_CNN, STOP_CNN, VALIDATE);
  signal EA_read : statesReadValues;

  signal observer_ifmap_valid : std_logic_vector(0 downto 0);
  signal observer_ofmap_valid : std_logic_vector(0 downto 0);
  signal observer_EA_read : std_logic_vector(2 downto 0);


begin
  start  <= p_start;
  clock  <= p_clock;
  reset  <= p_reset;
  p_stop <= stop;

  
  observer_ifmap_valid(0) <= ifmap_valid;
  observer_ofmap_valid(0) <= ofmap_valid;
  observer_EA_read <= CONV_STD_LOGIC_VECTOR(0, 3) when  EA_read = WAITSTART else
                      CONV_STD_LOGIC_VECTOR(1, 3) when  EA_read = WRITEFEATURES else
                      CONV_STD_LOGIC_VECTOR(2, 3) when  EA_read = READFEATURES else
                      CONV_STD_LOGIC_VECTOR(3, 3) when  EA_read = START_CNN else
                      CONV_STD_LOGIC_VECTOR(4, 3) when  EA_read = STOP_CNN else
                      CONV_STD_LOGIC_VECTOR(5, 3) when  EA_read = VALIDATE;


  IFMAP : entity work.memory
    generic map(
      BRAM_NAME => "ifmap_layer0", -- "default", "ifmap_layer0", "iwght_layer0"
      BRAM_NUM => (integer(BRAM_NUM_IFMAP mod  10 ** (2 * (0 + 1)) / 10 ** (2*0))),
      BRAM_ADDR => BRAM_ADDR,
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      ROM_PATH => PATH & "/layer/0/ifmap.txt",
      DATA_AV_LATENCY => BRAM_LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ifmap_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => address_mem,
      data_av  => mem_ifmap_valid,
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
      OP_TYPE        => OP_TYPE,
      PATH           => PATH,
      LAT            => BRAM_LAT,
      BRAM_ADDR      => BRAM_ADDR,
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


    
  process(reset, clock)
  begin
    if reset = '1' then
      stop        <= '0';
      start_conv  <= '0';
      ofmap_we    <= '0';
      ifmap_ce    <= '0';
      ifmap_we    <= '0';
      index       <= 0;
      EA_read <= WAITSTART;
    elsif rising_edge(clock) then
      case EA_read is
        when WAITSTART =>
          start_conv  <= '0';
          ofmap_we    <= '0';
          ifmap_ce    <= '0';
          ifmap_we    <= '0';
          index       <= 0;
          if p_start = '1' then
            stop    <= '0';
            EA_read <= WRITEFEATURES;
          end if;
        
        when WRITEFEATURES =>
          ifmap_ce <= '1';
          ifmap_we <= '1';
          index <= index + 1;
          address_mem <= CONV_STD_LOGIC_VECTOR(index, INPUT_SIZE);
          if index > 0 then
            address <= CONV_STD_LOGIC_VECTOR(index - 1, INPUT_SIZE);
          end if;
          if index = conv_integer(unsigned(const_config_logic_vector(0).x_size_x_size)) * conv_integer(unsigned(const_config_logic_vector(0).n_channel)) then
            EA_read <= START_CNN;
          end if;

        when START_CNN =>
          index    <= 0;
          ifmap_ce <= '0';
          ifmap_we <= '0';
          start_conv <= '1';
          EA_read <= STOP_CNN;

        when STOP_CNN =>
          start_conv <= '0';
          if end_conv = '1' then
            ofmap_ce <= '1';
            address <= CONV_STD_LOGIC_VECTOR(index, INPUT_SIZE);
            EA_read <= VALIDATE;
          end if;

        when VALIDATE =>
          ofmap_ce <= '1';
          index <= index + 1;
          address_mem <= CONV_STD_LOGIC_VECTOR(index, INPUT_SIZE);
          address <= CONV_STD_LOGIC_VECTOR(index, INPUT_SIZE);

          if ofmap_valid = '1' and index < (conv_integer(unsigned(const_config_logic_vector(N_LAYER - 1).convs_per_line_convs_per_line)) * conv_integer(unsigned(const_config_logic_vector(N_LAYER - 1).n_filter))) then
            if FPGA = '0' then
                if value_out /= gold then
                  report "end of simulation with error!";
                  report "number of convolutions executed: " & integer'image(index);
                  report "address: " & integer'image(CONV_INTEGER(unsigned(address)));
                  report "expected value: " & integer'image(CONV_INTEGER(gold(31 downto 0)));

                  if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
                    report "obtained value: " & integer'image(CONV_INTEGER(value_out(31 downto 0)));
                  else
                    report "obtained value: " & integer'image(CONV_INTEGER(value_out));
                  end if;
                report "end of simulation with error!" severity failure;
                end if;
            end if;
          else
            EA_read <= WAITSTART;
            stop <= '1';
            report "number of convolutions: " & integer'image(index);
          end if;

        when others => null;
      end case;
    end if;
  end process;


  IF_NO_FPGA : if FPGA = '0' generate
  MGOLD : entity work.memory
    generic map(
      BRAM_NAME => "gold_layer" & integer'image(N_LAYER - 1),
      BRAM_NUM =>  (integer(BRAM_NUM_GOLD mod  10 ** (2 * ((N_LAYER - 1) + 1)) / 10 ** (2*(N_LAYER - 1)))),
      BRAM_ADDR => BRAM_ADDR,
      ROM_PATH  => PATH & "/layer/" & integer'image(N_LAYER - 1) & "/gold.txt",
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
      data_out => gold
      );

  end generate IF_NO_FPGA;

end a1;
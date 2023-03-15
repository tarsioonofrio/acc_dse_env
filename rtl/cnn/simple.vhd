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
    N_FILTER       : integer   := 16;
    N_CHANNEL      : integer   := 3;
    X_SIZE         : integer   := 32;
    FILTER_WIDTH   : integer   := 3;
    CONVS_PER_LINE : integer   := 15;
    MEM_SIZE       : integer   := 12;
    INPUT_SIZE     : integer   := 8;
    CARRY_SIZE     : integer   := 4;
    SHIFT          : integer   := 8;
    LAT            : integer   := 2;
    N_LAYER        : integer   := 1;
    PATH           : string    := "";
    TEST_BENCH     : std_logic := '0';
    TEST_LAYER     : integer   := 0 -- start with 1
  );
  port (reset   : in std_logic;
        clock   : in std_logic;

        p_start_conv : in std_logic;
        p_end_conv   : out std_logic;
        p_debug      : out std_logic;

        --p_iwght_ce    : in std_logic;
        --p_iwght_we    : in std_logic;
        --p_iwght_valid : out std_logic;
        --p_iwght_layer : in std_logic_vector(log2(N_LAYER) downto 0);

        p_ifmap_ce    : in std_logic;
        p_ifmap_we    : in std_logic;
        p_ifmap_valid : out std_logic;

        p_ofmap_ce    : in std_logic;
        p_ofmap_we    : in std_logic;
        p_ofmap_valid : out std_logic;
        
        p_address   : in std_logic_vector(MEM_SIZE-1 downto 0);
        p_value_in  : in std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        p_value_out : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0)
        );
end cnn;

architecture a1 of cnn is

  signal mem_ofmap_valid, mem_ofmap_ce, mem_ofmap_we: std_logic;

  signal debug, start_conv, end_conv, ofmap_valid, ofmap_ce, ofmap_we, iwght_valid, ifmap_ce, ifmap_we, ifmap_valid: std_logic_vector(0 to N_LAYER);

  signal mem_ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  type type_address is array (0 to N_LAYER) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal address_in, address_out : type_address;

  type type_value is array (0 to N_LAYER + 1) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  signal value_out, value_in: type_value;
 
  signal mem_ofmap_in, mem_ofmap_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  type type_config_logic_array  is array (1 to N_LAYER + 1) of type_config_logic;
  signal config : type_config_logic_array;

  signal n_read, n_write : std_logic_vector(31 downto 0);

  signal config_test : type_config_logic;
  signal gold        : type_array_int;


begin

  -- init config array
  gen_init_config: for i in 1 to N_LAYER generate
    config(i) <= read_config(PATH & "/layer/" & integer'image(i-1) & "/config_pkg.txt") when reset = '1';
  end generate;   

  -- input map port to 0 index signal
  ofmap_ce(0) <= p_ifmap_ce;
  ofmap_we(0) <= p_ifmap_we;
  address_out(0) <= p_address;
  value_out(0) <= p_value_in;
  end_conv(0) <= p_start_conv;


  -- map conv signals in sequence
  gen_signal_map: for i in 1 to N_LAYER generate
    ifmap_ce(i) <= ofmap_ce(i-1);
    ifmap_we(i) <= ofmap_we(i-1);
    address_in(i) <= address_out(i-1);
    value_in(i) <= value_out(i-1) when ofmap_ce(i-1) = '1' and ofmap_we(i-1) = '1' else value_out(i+1);
    ofmap_valid(i-1) <= ifmap_valid(i);
    start_conv(i) <= end_conv(i-1);
  end generate;   

  -- ofmap mem signal map
  mem_ofmap_ce <= ofmap_ce(N_LAYER) or p_ofmap_ce;
  mem_ofmap_we <= ofmap_we(N_LAYER) or p_ofmap_we;
  mem_ofmap_address <= p_address when p_ofmap_ce = '1' else address_out(N_LAYER);
  mem_ofmap_in <=  value_out(N_LAYER);
  ofmap_valid(N_LAYER) <= mem_ofmap_valid;
  value_out(N_LAYER + 1) <= mem_ofmap_out;

  -- output map port
  p_end_conv <= end_conv(N_LAYER);
  p_debug <= debug(N_LAYER);
  p_ifmap_valid <= ifmap_valid(0);
  p_ofmap_valid <= mem_ofmap_valid;
  p_value_out <= mem_ofmap_out;


  gen_core: for i in 1 to N_LAYER generate
    core : entity work.core
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
        IWGHT_PATH     => PATH & "/layer/" & integer'image(i - 1) & "/iwght.txt",
        TEST_BENCH     => TEST_BENCH,
        TEST_LAYER     => i,
        PATH           => PATH
        )
      port map(
        clock         => clock,
        reset         => reset,

        p_start_conv    => start_conv(i),
        p_end_conv      => end_conv(i),
        p_debug         => debug(i),
        config          => config(i),

        p_iwght_ce      => '0',
        p_iwght_we      => '0',
        p_iwght_valid   => iwght_valid(i),

        p_ifmap_ce      => ifmap_ce(i),
        p_ifmap_we      => ifmap_we(i),
        p_ifmap_valid   => ifmap_valid(i),

        p_ofmap_we      => ofmap_we(i),
        p_ofmap_ce      => ofmap_ce(i),
        p_ofmap_valid   => ofmap_valid(i),

        p_address_in    => address_in(i),
        p_value_in      => value_in(i),
        p_address_out   => address_out(i),
        p_value_out     => value_out(i)
        );
  end generate;   

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


  GEN_TB: if TEST_BENCH = '1' generate
    config_test <= read_config(PATH & "/layer/" & integer'image(TEST_LAYER - 1) & "/config_pkg.txt");
    gold <= read_data(PATH & "/layer/" & integer'image(TEST_LAYER - 1) & "/gold.txt");


    process(clock)

    -- convolution counter
    variable cont_conv : integer := 0;

    begin

      if clock'event and clock = '0' then
        if debug(TEST_LAYER) = '1' and cont_conv < (conv_integer(unsigned(config_test.convs_per_line_convs_per_line))*conv_integer(unsigned(config_test.n_filter))) then
          if value_out(TEST_LAYER) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(address_out(TEST_LAYER)))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
            --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
            report "end of simulation with error!";
            report "number of convolutions executed: " & integer'image(cont_conv);
            report "idx: " & integer'image(CONV_INTEGER(unsigned(address_out(TEST_LAYER))));
            report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(address_out(TEST_LAYER)))));

            if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
              report "obtained value: " & integer'image(CONV_INTEGER(value_out(TEST_LAYER)(31 downto 0)));
            else
              report "obtained value: " & integer'image(CONV_INTEGER(value_out(TEST_LAYER)));
            end if;

            assert false severity failure;
          end if;
          cont_conv := cont_conv + 1;
          --report "idx: " & integer'image(CONV_INTEGER(unsigned(address_out(test_index))));

        elsif end_conv(TEST_LAYER) = '1' then
          --report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
          --report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
          report "number of convolutions: " & integer'image(cont_conv);
          report "end of simulation without error!" severity failure;
        end if;
      end if;

    end process;
  end generate;

end a1;

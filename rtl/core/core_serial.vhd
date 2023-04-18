library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

use work.util_package.all;
use work.config_package.all;
use work.config_package_array.all;


entity core is
  generic (
    OP_TYPE        : character   := 'C';
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
    IWGHT_PATH     : string    := "";
    IFMAP_PATH     : string    := "";
    PATH           : string    := "";
    TEST_LAYER     : integer   := 0;
    BRAM_NAME_LAYER : integer   := 0;
    BRAM_NAME_IFMAP : string   := "default";
    BRAM_ADDR      : integer   := 10;
    BRAM_NUM_IWGHT : string    := "";
    BRAM_NUM_IFMAP : string    := ""
    );
  port (
    clock : in std_logic;
    reset : in std_logic;

    p_start_conv : in std_logic;
    p_end_conv   : out std_logic;
    p_debug      : out std_logic;
    config       : in  type_config_logic;

    p_iwght_ce    : in std_logic;
    p_iwght_we    : in std_logic;
    p_iwght_valid : out std_logic;

    p_ifmap_ce    : in std_logic;
    p_ifmap_we    : in std_logic;
    p_ifmap_valid : out std_logic;

    p_ofmap_ce    : out std_logic;
    p_ofmap_we    : out std_logic;
    p_ofmap_valid : in std_logic;
    
    p_address_in  : in std_logic_vector(MEM_SIZE-1 downto 0);
    p_value_in    : in std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
    p_address_out : out std_logic_vector(MEM_SIZE-1 downto 0);
    p_value_out   : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0)
  );
end core;

architecture a1 of core is

  signal start_conv, end_conv, debug : std_logic;

  signal iwght_valid, ifmap_valid, ofmap_valid : std_logic;

  signal iwght_ce, ifmap_ce, ofmap_ce, ofmap_we : std_logic; 

  signal mem_iwght_ce, mem_ifmap_ce : std_logic; 

  signal iwght_address, ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal mem_iwght_address, mem_ifmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal iwght_value, mem_iwght_value, ifmap_value : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal mem_ifmap_value, ofmap_in, ofmap_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal iwght_n_read, iwght_n_write, ifmap_n_read, ifmap_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

--   signal gold :type_array_int := read_data(PATH & "/layer/" & integer'image(BRAM_NAME_LAYER) & "/gold.txt");


begin

  -- map input port
  start_conv <= p_start_conv ;
  ofmap_valid <= p_ofmap_valid;
  ofmap_in <= p_value_in;
  mem_iwght_value <=  p_value_in;

  -- map conditional input port
  mem_iwght_ce <= '1' when p_iwght_ce ='1' or iwght_ce = '1' else '0';
  mem_iwght_address <= p_address_in when p_iwght_ce = '1' else iwght_address;

  mem_ifmap_ce <= '1' when p_ifmap_ce ='1' or ifmap_ce = '1' else '0';
  mem_ifmap_address <= p_address_in when p_ifmap_ce = '1' else ifmap_address;

  -- map output port
  p_iwght_valid <= iwght_valid;
  p_ifmap_valid <= ifmap_valid;
  p_ofmap_ce <=  ofmap_ce;
  p_ofmap_we <=  ofmap_we;
  p_debug <= debug;
  p_end_conv <= end_conv; 

  -- map conditional output port
  p_address_out <= mem_ifmap_address when p_ifmap_ce = '1' else ofmap_address;
  p_value_out <= mem_ifmap_value when p_ifmap_ce = '1' else ofmap_out; -- and p_ifmap_we = '1'

  -- map mem value to conv 
  ifmap_value <= mem_ifmap_value;

  GEN_IWGHT: if OP_TYPE = 'C' generate
    IWGHT : entity work.memory
      generic map(
        ROM_PATH => IWGHT_PATH,
        INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
        ADDRESS_SIZE => MEM_SIZE, 
        DATA_AV_LATENCY => LAT,
        BRAM_NAME_LAYER => BRAM_NAME_LAYER,
        BRAM_ADDR => BRAM_ADDR,
        BRAM_NUM => BRAM_NUM_IWGHT,
        BRAM_NAME => "iwght_layer" & integer'image(BRAM_NAME_LAYER)
        )
      port map(
        clock    => clock,
        reset    => reset,
        chip_en  => mem_iwght_ce,
        wr_en    => p_iwght_we,
        data_in  => mem_iwght_value,
        address  => mem_iwght_address,
        data_av  => iwght_valid,
        data_out => iwght_value,
        n_read   => iwght_n_read,
        n_write  => iwght_n_write
        );
  end generate;

  IFMAP : entity work.memory
    generic map(
      ROM_PATH => IFMAP_PATH,
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT,
      BRAM_NAME_LAYER => BRAM_NAME_LAYER,
      BRAM_ADDR => BRAM_ADDR,
      BRAM_NUM => BRAM_NUM_IFMAP,
      BRAM_NAME => BRAM_NAME_IFMAP & integer'image(BRAM_NAME_LAYER)
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

--   IFMAP2 : entity work.memory2
--     generic map(
--       ROM_PATH => IFMAP_PATH,
--       INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
--       ADDRESS_SIZE => MEM_SIZE,
--       DATA_AV_LATENCY => LAT,
--       BRAM_NAME_LAYER => BRAM_NAME_LAYER,
--       BRAM_ADDR => BRAM_ADDR,
--       BRAM_NUM => BRAM_NUM_IFMAP,
--       BRAM_NAME => BRAM_NAME_IFMAP & integer'image(BRAM_NAME_LAYER)
--       )
--     port map(
--       clock    => clock,
--       reset    => reset,
--       chip_en  => mem_ifmap_ce,
--       wr_en    => p_ifmap_we,
--       data_in  => p_value_in,
--       address  => mem_ifmap_address
-- --       data_av  => ifmap_valid
-- --       data_out => mem_ifmap_value,
-- --       n_read   => ifmap_n_read,
-- --       n_write  => ifmap_n_write
--       );

  GEN_CONV: if OP_TYPE = 'C' generate
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
        config        => const_config_logic_vector(BRAM_NAME_LAYER),

        iwght_valid   => iwght_valid,
        iwght_value   => iwght_value((INPUT_SIZE*2)-1 downto 0),
        iwght_address => iwght_address,
        iwght_ce      => iwght_ce,

        ifmap_valid   => ifmap_valid,
        ifmap_value   => ifmap_value((INPUT_SIZE*2)-1 downto 0),
        ifmap_address => ifmap_address,
        ifmap_ce      => ifmap_ce,

        ofmap_valid   => ofmap_valid,
        ofmap_in      => ofmap_in,
        ofmap_out     => ofmap_out,
        ofmap_address => ofmap_address,
        ofmap_we      => ofmap_we,
        ofmap_ce      => ofmap_ce
        );
    end generate;

    GEN_MAXPOOL: if OP_TYPE = 'M' generate
      CONV : entity work.maxpool
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
  
          start_pool    => start_conv,
          end_pool      => end_conv,
          debug         => debug,
          -- config        => const_config_logic_vector(BRAM_NAME_LAYER),
  
          -- iwght_valid   => iwght_valid,
          -- iwght_value   => iwght_value((INPUT_SIZE*2)-1 downto 0),
          -- iwght_address => iwght_address,
          -- iwght_ce      => iwght_ce,
  
          ifmap_valid   => ifmap_valid,
          ifmap_value   => ifmap_value((INPUT_SIZE*2)-1 downto 0),
          ifmap_address => ifmap_address,
          ifmap_ce      => ifmap_ce,
  
          ofmap_valid   => ofmap_valid,
          -- ofmap_in      => ofmap_in,
          ofmap_out     => ofmap_out,
          ofmap_address => ofmap_address,
          ofmap_we      => ofmap_we,
          ofmap_ce      => ofmap_ce
          );
      end generate;
    
--     process(clock)
--       -- convolution counter
--       variable cont_conv : integer := 0;
--
--     begin
--
--       if clock'event and clock = '1' then
--         if debug = '1' and cont_conv < (conv_integer(unsigned(config.convs_per_line_convs_per_line))*conv_integer(unsigned(config.n_filter))) then
--           if ofmap_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
--             --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
--             report "end of simulation with error!";
--             report "number of convolutions executed: " & integer'image(cont_conv);
--             report "idx: " & integer'image(CONV_INTEGER(unsigned(ofmap_address)));
--             report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(ofmap_address))));
--
--             if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
--               report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)));
--             else
--               report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out));
--             end if;
--             report "Error in layer: " &integer'image(BRAM_NAME_LAYER);
--             assert false severity failure;
--           end if;
--           cont_conv := cont_conv + 1;
--
--         elsif end_conv = '1' then
--           report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
--           report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
--           report "number of convolutions: " & integer'image(cont_conv);
--           report "end of simulation without error!";
--         end if;
--       end if;
--     end process;

end a1;

library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- use work.config_package.all;
-- use work.util_package.all;


entity fully_conected is
  generic (
    N_FILTER       : integer := 10;
    N_CHANNEL      : integer := 64;
    STRIDE         : integer := 2;
    X_SIZE         : integer := 3;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    SHIFT          : integer := 4;
    CARRY_SIZE     : integer := 4
    );
  port (
    clock : in std_logic;
    reset : in std_logic;

    -- Accelerator interface
    start_op : in  std_logic;
    end_op   : out std_logic;
    debug      : out std_logic;
    -- config     : in  type_config_logic;

    -- Input weight memory interface
    iwght_valid   : in  std_logic;
    iwght_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
    iwght_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    iwght_ce      : out std_logic;

    -- input feature map memory interface
    ifmap_valid   : in  std_logic;
    ifmap_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
    ifmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    ifmap_ce      : out std_logic;
    
    -- output feature map memory interface
    ofmap_valid   : in  std_logic;
    ofmap_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
    ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    ofmap_we      : out std_logic;
    ofmap_ce      : out std_logic
    );
end entity fully_conected;


architecture a1 of fully_conected is
  signal start_reg, end_reg, ce_ifmap, ce_iwght, ce_ofmap, debug_reg, pipe_reset,en_reg: std_logic;
  -- signal add_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal features : std_logic_vector((INPUT_SIZE*2) - 1 downto 0);
  signal weight : std_logic_vector((INPUT_SIZE*2) - 1 downto 0);
  signal res_mac : std_logic_vector((INPUT_SIZE*2) - 1 downto 0);
  signal reg_mac : std_logic_vector((INPUT_SIZE*2) - 1 downto 0);

  signal add_ifmap : integer range 0 to 2**(MEM_SIZE) - 1;
  signal add_ofmap : integer range 0 to 2**(MEM_SIZE) - 1;
  signal add_iwght : integer range 0 to 2**(MEM_SIZE) - 1;
  signal idx_mac : integer;
  signal idx_wght : integer;
  signal idx_ifmap : integer;

  type type_mac_arr is array (0 to 10-1) of std_logic_vector((INPUT_SIZE*2) - 1 downto 0);
  signal res_mac_arr : type_mac_arr;
  signal reg_mac_arr : type_mac_arr;

  -- signal reg_config : type_config_integer;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, READWEIGHTS, READFEATURES, CALC, WAITVALID);
  signal EA_read : statesReadValues;
  
  constant const_output     : std_logic_vector(CARRY_SIZE-1 downto 0) := (others => '0');


begin

  -- process(reset, clock)
  -- begin
  --   if reset = '1' then
  --       reg_config <= config_integer_init;
  --   elsif rising_edge(clock) then
  --     if start_pool = '1' then
  --       reg_config <= convert_config_logic_integer(config);
  --     end if;
  --   end if;
  -- end process;


  ----------------------------------------------------------------------------
  -- input values control
  ----------------------------------------------------------------------------
  end_op <= end_reg;
  debug <= debug_reg;

  iwght_ce <= ce_iwght;
  iwght_address <= CONV_STD_LOGIC_VECTOR(add_iwght, MEM_SIZE);

  ifmap_ce <= ce_ifmap;
  ifmap_address <= CONV_STD_LOGIC_VECTOR(add_ifmap, MEM_SIZE);

  ofmap_we <= ce_ofmap;
  ofmap_ce <= ce_ofmap;
  ofmap_address <= CONV_STD_LOGIC_VECTOR(add_ofmap, MEM_SIZE);
  ofmap_out <= const_output & output_reg;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
      H <= 0;
      V <= 0;
      T <= 0;
      debug_reg <= '0';
      start_reg <= '0';
      end_reg <= '0';
      ce_ifmap <= '0';
      ce_iwght <= '0';
      ce_ofmap <= '0';
      add_reg <= -1;
      value_reg <= (others => '0'); 
    elsif rising_edge(clock) then
      case EA_read is
        when WAITSTART =>
          debug_reg <= '0';
          add_reg <= -1;
          debug_reg <= '0';
          ce_ifmap <= '0';
          ce_iwght <= '0';
          ce_ofmap <= '0';
          start_reg <= start_op;
          
          if start_op = '1' and start_reg = '0' then
            EA_read <= READFEATURES;
          end if;

        when READFEATURES =>
          ce_ifmap <= '1';
          if ifmap_valid = '1' then
            features <= ifmap_value;
            add_ifmap <= add_ifmap + 1;
            EA_read <= READWEIGHTS;
            ce_ifmap <= '0';
          end if;

        when READWEIGHTS =>
          ce_iwght <= '1';
          idx_mac <= idx_wght;
          if iwght_valid = '1' then
            weight <= iwght_value;
            if (idx_wght < 10) then -- number of classes
              weight <= iwght_value;
              add_ifmap <= add_ifmap + P_SIZE;
              idx_wght <= idx_wght + 1;
            else
              idx_wght <= 0;
              EA_read <= WAITVALID;
              ce_ifmap <= '0';
            end if;
          end if;
        when WAITVALID =>
          idx_ifmap <= idx_ifmap + 1; -- count number of 
          add_iwght <= idx_ifmap + 1;
        -- report "output: " & integer'image(CONV_INTEGER(signed(value_reg)));
          output_reg <= value_reg;
          add_reg <= add_reg + 1;
          debug_reg <= '1';
          cw_reg <= '1';
  
          if add_wght < X_SIZE*X_SIZE*N_CHANNEL - 1 then -- image max size
            EA_read <= UPDATEADD;
          else
            EA_read <= WAITSTART;
            end_reg <= '1';
          end if;
        when others => null;
      end case;
    end if;
  end process;

  reg_mac <= reg_mac_arr(idx_mac);
  reg_mac_arr(idx_mac) <= res_mac;

  mac0 : entity work.mac
  generic map(INPUT_SIZE => INPUT_SIZE,
              CARRY_SIZE => CARRY_SIZE
              )
  port map(sum     => reg_mac,
           op1     => weight,
           op2     => features,
           res_mac => res_mac
           );

  reg_c : for i in 0 to FILTER_WIDTH-1 generate
    ireg : entity work.reg
      generic map(INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE))
      port map(clock => clock, reset => pipe_reset, enable => en_reg,
                D     => res_mac_arr(i),
                Q     => reg_mac_arr(i)
                );
  end generate reg_c;

  end a1;
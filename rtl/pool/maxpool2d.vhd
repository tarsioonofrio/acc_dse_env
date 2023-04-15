library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- use work.config_package.all;
-- use work.util_package.all;


entity maxpool is
  generic (
    N_FILTER       : integer := 16;
    N_CHANNEL      : integer := 3;
    STRIDE         : integer := 2;
    X_SIZE         : integer := 32;
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
    start_pool : in  std_logic;
    end_pool   : out std_logic;
    debug      : out std_logic;
    -- config     : in  type_config_logic;

    -- input feature map memory interface
    ifmap_valid   : in  std_logic;
    ifmap_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
    ifmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    ifmap_ce      : out std_logic;
    
    -- output feature map memory interface
    ofmap_valid   : in  std_logic;
    -- ofmap_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
    ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    ofmap_we      : out std_logic;
    ofmap_ce      : out std_logic
    );
end entity maxpool;


architecture a1 of maxpool is
  signal end_reg, ce_reg, cw_reg, debug_reg : std_logic;
  signal add_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal value_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal idx  : integer range 0 to 2*2;
  signal H : integer range 0 to X_SIZE;
  signal V : integer range 0 to X_SIZE;
  signal T : integer range 0 to 2**(MEM_SIZE);

  -- signal reg_config : type_config_integer;

  type address is array (0 to 3) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal add : address;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, UPDATEADD, READFEATURES, POOLING, WAITVALID);
  signal EA_read : statesReadValues;
  
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
  end_pool <= end_reg;
  debug <= debug_reg;

  ifmap_ce <= ce_reg;
  ifmap_address <= add(idx);

  ofmap_we <=  cw_reg;
  ofmap_ce <= cw_reg;
  ofmap_address <= add_reg;
  -- ofmap_out(INPUT_SIZE*2)-1 downto 0) <= value_reg;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
      H <= 0;
      V <= 0;
      T <= 0;
      debug_reg <= '0';
      end_pool <= '0';
      ce_reg <= '0';
      cw_reg <= '0';
      add_reg <= (others => '0');
      value_reg <= (others => '0');
      add(0) <= (others => '0');
      add(1) <= (others => '0');
      add(2) <= (others => '0');
      add(3) <= (others => '0');
elsif rising_edge(clock) then
      case EA_read is
        when WAITSTART =>
          debug_reg <= '0';
          end_pool <= '0';

          if start_pool = '1' then
            EA_read <= UPDATEADD;
          end if;

        when UPDATEADD =>
          idx <= 0;
          debug_reg <= '0';
          cw_reg <= '0';
          value_reg <= (others => '0');
          EA_read <= READFEATURES;

          add(0) <= CONV_STD_LOGIC_VECTOR(T + H, MEM_SIZE);
          add(1) <= CONV_STD_LOGIC_VECTOR(T + H, MEM_SIZE) + 1;
          add(2) <= CONV_STD_LOGIC_VECTOR(T + H, MEM_SIZE) + 3; -- X_SIZE=3
          add(3) <= CONV_STD_LOGIC_VECTOR(T + H, MEM_SIZE) + 3 + 1; -- X_SIZE=3

          if (H+2) >= 3 then -- STRIDE=2, X_SIZE=3
            H <= 0;
            V <= V + 2;
            T <= T+2*3; -- STRIDE=2, X_SIZE=3
          else
            H <= H+2; -- STRIDE=2
          end if;

          if (V+2) >= 3 then -- STRIDE=2, X_SIZE=3
            V <= 0;
          end if;

        when READFEATURES =>
          ce_reg <= '1';
          if ifmap_valid = '1' then
            -- report "integer: " & integer'image(CONV_INTEGER(signed(ifmap_value))) & " " & integer'image(CONV_INTEGER(signed(value_reg)));
            -- report "boolean: " & boolean'image(CONV_INTEGER(signed(ifmap_value)) > CONV_INTEGER(signed(value_reg)));
            if (H <= 3-1) or (V <= 3-1) then -- X_SIZE=3
                if CONV_INTEGER(signed(ifmap_value)) > CONV_INTEGER(signed(value_reg)) then
                  value_reg <= ifmap_value;
                end if;
            end if;
            if (idx < 4-1) then -- pool_size*2=2*2
              idx <= idx + 1;
            else
              idx <= 0;
              EA_read <= WAITVALID;
            end if;
          end if;
        -- when STARTMAC =>
        --   if iwght_valid = '1' then
        --     EA_read <= WAITVALID;
        --   end if;
        when WAITVALID =>
          if T < 3*3*64 -1 then -- image max size
            EA_read <= UPDATEADD;
            -- debug_reg <= '1';
          else
            debug_reg <= '1';
            EA_read <= WAITSTART;
            end_reg <= '1';
            add_reg <= (others => '0');
            cw_reg <= '1';
            ce_reg <= '0';
          end if;
        when others => null;
      end case;
    end if;
  end process;

end a1;
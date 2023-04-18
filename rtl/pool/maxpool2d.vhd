library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- use work.config_package.all;
-- use work.util_package.all;


entity maxpool is
  generic (
    N_FILTER       : integer := 64;
    N_CHANNEL      : integer := 64;
    I_CHANNEL      : integer := 64;
    STRIDE         : integer := 2;
    X_SIZE         : integer := 3;
    I_SIZE         : integer := 3;
    P_SIZE         : integer := 3;
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
    ofmap_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
    ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
    ofmap_we      : out std_logic;
    ofmap_ce      : out std_logic
    );
end entity maxpool;


architecture a1 of maxpool is
  signal end_reg, ce_reg, cw_reg, debug_reg : std_logic;
  -- signal add_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal value_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal output_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal idx  : integer range 0 to P_SIZE*P_SIZE-1;
  signal H : integer range 0 to I_SIZE;
  signal V : integer range 0 to I_SIZE;
  signal T : integer range 0 to 2**(MEM_SIZE) - 1;
  signal add_reg : integer range -1 to 2**(MEM_SIZE) - 2;

  -- signal reg_config : type_config_integer;

  type address is array (0 to 8) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal add : address;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, UPDATEADD, READFEATURES, POOLING, WAITVALID);
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
  end_pool <= end_reg;
  debug <= debug_reg;

  ifmap_ce <= ce_reg;
  ifmap_address <= add(idx);

  ofmap_we <= cw_reg;
  ofmap_ce <= cw_reg;
  ofmap_address <= CONV_STD_LOGIC_VECTOR(add_reg, MEM_SIZE);
  ofmap_out <= const_output & output_reg;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
      H <= 0;
      V <= 0;
      T <= 0;
      debug_reg <= '0';
      end_reg <= '0';
      ce_reg <= '0';
      cw_reg <= '0';
      add_reg <= -1;
      value_reg <= (others => '0'); 
      add <= (others=> (others=>'0'));
    elsif rising_edge(clock) then
      case EA_read is
        when WAITSTART =>
          debug_reg <= '0';
          add_reg <= -1;
          debug_reg <= '0';
          cw_reg <= '0';
          ce_reg <= '1';

          if start_pool = '1' then
            EA_read <= UPDATEADD;
          end if;

        when UPDATEADD =>
          end_reg <= '0';
          debug_reg <= '0';
          cw_reg <= '0';
          idx <= 0;
          value_reg <= (others => '0');
          EA_read <= READFEATURES;
          ouside_add_loop: for u in 0 to P_SIZE - 1 loop
            inside_add_loop: for i in 0 to P_SIZE - 1 loop
              add(P_SIZE*u + i) <= CONV_STD_LOGIC_VECTOR(T + H, MEM_SIZE) + P_SIZE*u + i;
            end loop inside_add_loop; 
          end loop ouside_add_loop;

          -- TODO: maybe is possible to replace I_SIZE in (H+X_SIZE) by 1 or STRIDE
          if (H+P_SIZE) >= I_SIZE then 
            H <= 0;
            V <= V + P_SIZE; 
            T <= T+P_SIZE**2;
          else
            H <= H+P_SIZE;
          end if;

          if (V+P_SIZE) >= I_SIZE then
            V <= 0;
          end if;

        when READFEATURES =>
          ce_reg <= '1';
          if ifmap_valid = '1' then
            -- if (H <= 3-1) or (V <= 3-1) then 
            if CONV_INTEGER(signed(ifmap_value)) > CONV_INTEGER(signed(value_reg)) then
              value_reg <= ifmap_value;
            end if;
            -- end if;
            if (idx < P_SIZE*P_SIZE-1) then -- pool_size**2=3*3=9-1
              idx <= idx + 1;
            else
              idx <= 0;
              EA_read <= WAITVALID;
              ce_reg <= '0';
            end if;
          end if;
        -- when STARTMAC =>
        --   if iwght_valid = '1' then
        --     EA_read <= WAITVALID;
        --   end if;
        when WAITVALID =>
          -- report "output: " & integer'image(CONV_INTEGER(signed(value_reg)));
          output_reg <= value_reg;
          add_reg <= add_reg + 1;
          debug_reg <= '1';
          cw_reg <= '1';
  
          if T < I_SIZE*I_SIZE*I_CHANNEL - 1 then -- image max size
            EA_read <= UPDATEADD;
          else
            EA_read <= WAITSTART;
            end_reg <= '1';
          end if;
        when others => null;
      end case;
    end if;
  end process;

end a1;
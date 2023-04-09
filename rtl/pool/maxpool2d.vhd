library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

use work.config_package.all;
use work.util_package.all;


entity convolution is
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
    config     : in  type_config_logic;

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
end entity convolution;


architecture a1 of convolution is
  signal end_reg, ce_reg, cw_reg, add_reg, value_reg : std_logic;

  signal buffer_ifmap : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal idx  : integer range 0 to 2*2;
  signal H : integer range 0 to X_SIZE;
  signal V : integer range 0 to 2**(MEM_SIZE);

  signal reg_config : type_config_integer;
  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, READFEATURES, POOLING, WAITVALID);
  signal EA_read : statesReadValues;
  
begin

  process(reset, clock)
  begin
    if reset = '1' then
        reg_config <= config_integer_init;
    elsif rising_edge(clock) then
      if start_pool = '1' then
        reg_config <= convert_config_logic_integer(config);
      elsif end_pool_reg = '1' then
        reg_config <= config_integer_init;
      end if;
    end if;
  end process;


  ----------------------------------------------------------------------------
  -- input values control
  ----------------------------------------------------------------------------
  end_pool <= end_reg;
  
  ifmap_ce <= ce_reg;
  ifmap_address <= add(idx);

  ofmap_we <= cw_reg;
  ofmap_ce <= cw_reg;
  ofmap_address <= add_reg;
  ofmap_out <= value_reg;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
    elsif rising_edge(clock) then
        case EA_read is
          when WAITSTART =>
            end_pool <= '0';
            if start_pool = '1' then
              EA_read <= UPDATEADD;
            end if;

          when UPDATEADD =>
            cw_reg <= '0';
            EA_read <= READFEATURES;
            add(0) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
            add(1) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 1;
            add(2) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 4;
            add(3) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 4 + 1;
            idx <= 0;
            if (H+1) >= 3 then
              H <= 0;
              V <= V+2*4;
            else
              H <= H+1;
            end if;

          when READFEATURES =>
            if ifmap_valid = '0' then
              ce_reg <= '1';
            else
              idx <= idx + 1;
              ce_reg <= '0';
              if (H < 3) and (V < 3*4) then
                  if ifmap_value > value_reg then
                    value_reg <= ifmap_value;
                  end if;
              end if;
              if (idx >= 3) then
                  EA_read <= WAITVALID;
              end if;
            end if;
          -- when STARTMAC =>
          --   if iwght_valid = '1' then
          --     EA_read <= WAITVALID;
          --   end if;
          when WAITVALID =>
            if idx_total < 3*3*64 then
              EA_read <= READFEATURES;
            else
              EA_read <= WAITSTART;
              end_reg <= '1';
              add_reg <= add_reg + '1';
              cw_reg <= '1';
            end if;
        end case;
      end if;
  end process;

end a1;
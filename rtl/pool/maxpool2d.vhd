library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- use work.config_package.all;
-- use work.util_package.all;


entity maxpool is
  generic (
    N_CHANNEL      : integer := 64;
    X_SIZE         : integer := 3;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 3;
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
  attribute dont_touch : string;
  attribute dont_touch of maxpool : entity is "true";         
end entity maxpool;


architecture a1 of maxpool is
  signal start_reg, end_reg, ce_reg, cw_reg, debug_reg, ifmap_valid_reg : std_logic;
  -- signal out_add_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal value_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal max_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal output_reg : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal idx  : integer range 0 to FILTER_WIDTH*FILTER_WIDTH + 1;
  signal H : integer range 0 to X_SIZE;
  signal V : integer range 0 to 2**(MEM_SIZE) - 1;
  signal in_add_reg : std_logic_vector(MEM_SIZE-1 downto 0);
  signal out_add_reg : integer range -1 to 2**(MEM_SIZE) - 2;

  -- signal reg_config : type_config_integer;

  type type_address is array (0 to FILTER_WIDTH*FILTER_WIDTH-1) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal add : type_address;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, UPDATEADD, READFEATURES, POOLING, WAITVALID);
  signal EA_read : statesReadValues;
  
  constant const_output     : std_logic_vector(CARRY_SIZE-1 downto 0) := (others => '0');


begin

  ----------------------------------------------------------------------------
  -- input values control
  ----------------------------------------------------------------------------
  end_pool <= end_reg;
  debug <= debug_reg;

  ifmap_ce <= ce_reg;
  ifmap_address <= add(idx) when idx < FILTER_WIDTH*FILTER_WIDTH else (others => '0');

  ofmap_we <= cw_reg;
  ofmap_ce <= cw_reg;
  ofmap_address <= CONV_STD_LOGIC_VECTOR(out_add_reg, MEM_SIZE);

  -- TODO change for convert to integer and convert to std logic vector with 36 bits
  ofmap_out <= const_output & output_reg;

  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
      H <= 0;
      V <= 0;
      debug_reg <= '0';
      start_reg <= '0';
      end_reg <= '0';
      ce_reg <= '0';
      cw_reg <= '0';
      out_add_reg <= -1;
      value_reg <= (others => '0'); 
      max_reg <= (others => '0'); 
      add <= (others=> (others=>'0'));
    elsif rising_edge(clock) then
      case EA_read is
        when WAITSTART =>
          debug_reg <= '0';
          out_add_reg <= -1;
          debug_reg <= '0';
          cw_reg <= '0';
          ce_reg <= '1';
          start_reg <= start_pool;
          
          if start_pool = '1' and start_reg = '0' then
            EA_read <= UPDATEADD;
          end if;

        when UPDATEADD =>
          end_reg <= '0';
          debug_reg <= '0';
          cw_reg <= '0';
          idx <= 0;
          value_reg <= (others => '0');
          max_reg <= (others => '0');
          EA_read <= READFEATURES;
          --ouside_add_loop: for vv in 0 to FILTER_WIDTH - 1 loop
          --  inside_add_loop: for hh in 0 to FILTER_WIDTH - 1 loop
          --    add(FILTER_WIDTH*vv + hh) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + hh + vv*X_SIZE;
          --  end loop inside_add_loop; 
          --end loop ouside_add_loop;

          add(0) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
          add(1) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 1;

          add(2) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + X_SIZE;
          add(3) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + X_SIZE + 1;


          -- TODO: maybe is possible to replace X_SIZE in (H+X_SIZE) by 1 or STRIDE
          if (H+FILTER_WIDTH) >= X_SIZE then 
            H <= 0;
            V <= V + 2 * X_SIZE; 
          else
            H <= H + FILTER_WIDTH;
          end if;

        when READFEATURES =>
          ifmap_valid_reg <= ifmap_valid;
          
          if ifmap_valid = '1' then
            value_reg <= ifmap_value;
            idx <= idx + 1;
          end if;

          --if (idx < FILTER_WIDTH*FILTER_WIDTH-1) then -- pool_size**2=3*3=9-1
          --  in_add_reg <= add(idx);
          --end if;

          if CONV_INTEGER(signed(value_reg)) > CONV_INTEGER(signed(max_reg)) then
            max_reg <= value_reg;
          end if;

          if (idx = FILTER_WIDTH*FILTER_WIDTH) then -- pool_size**2=3*3=9-1
            ce_reg <= '0';
            idx <= 0;
            EA_read <= WAITVALID;
          else
            ce_reg <= '1';
          end if;

        -- when STARTMAC =>
        --   if iwght_valid = '1' then
        --     EA_read <= WAITVALID;
        --   end if;

        when WAITVALID =>
          -- report "output: " & integer'image(CONV_INTEGER(signed(value_reg)));
          output_reg <= max_reg;
          out_add_reg <= out_add_reg + 1;
          debug_reg <= '1';
          cw_reg <= '1';
  
          if out_add_reg - 1 < CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL - 1 then -- image max size
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
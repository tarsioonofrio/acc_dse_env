library ieee;
use ieee.std_logic_1164.all;

package record_type is
  generic (
    B_N_FILTER       : integer := 2;
    B_N_CHANNEL      : integer := 4;
    B_STRIDE         : integer := 2;
    B_X_SIZE         : integer := 5;
    B_FILTER_WIDTH   : integer := 2;
    B_CONVS_PER_LINE : integer := 4;
    B_MEM_SIZE       : integer := 4;
    B_INPUT_SIZE     : integer := 3;
    B_CARRY_SIZE     : integer := 2
    B_SHIFT          : integer := 2;
  );

  type type_config is record
    n_filter       : std_logic_vector(B_N_FILTER downto 0);
    n_channel      : std_logic_vector(B_N_CHANNEL downto 0);
    x_size         : std_logic_vector(B_X_SIZE downto 0);
    filter_width   : std_logic_vector(B_FILTER_WIDTH downto 0);
    convs_per_line : std_logic_vector(B_CONVS_PER_LINE downto 0);
    mem_size       : std_logic_vector(B_MEM_SIZE downto 0);
    input_size     : std_logic_vector(B_INPUT_SIZE downto 0);
    shift          : std_logic_vector(B_SHIFT downto 0);
    carry_size     : std_logic_vector(B_CARRY_SIZE downto 0);
  end record type_config;  

end package record_type;
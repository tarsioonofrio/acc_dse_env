library ieee;
use ieee.std_logic_1164.all;

package config_pkg is
  type type_config is record
    n_filter       : std_logic_vector (2 downto 0);
    n_channel      : std_logic_vector;
    x_size         : std_logic_vector;
    filter_width   : std_logic_vector;
    convs_per_line : std_logic_vector;
    mem_size       : std_logic_vector;
    input_size     : std_logic_vector;
    shift          : std_logic_vector;
    carry_size     : std_logic_vector;
  end record type_config;  

end package config_pkg;
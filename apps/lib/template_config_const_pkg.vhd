library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.config_package.all;


package config_package_array is

    type type_array_int is array(0 to 127) of integer;

    constant bram_layer: type_array_int := ({bram_layer}, others=> 0);
    constant bram_iwght: type_array_int := ({bram_iwght}, others=> 0);
    constant bram_ifmap: type_array_int := ({bram_ifmap}, others=> 0);
    constant bram_gold: type_array_int := ({bram_gold}, others => 0);

    type type_config_logic_vector is array (natural range 0 to {size}) of type_config_logic;

  constant const_config_logic_vector: type_config_logic_vector := (
{array}
   );

end package config_package_array;


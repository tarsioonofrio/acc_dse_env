library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.config_package.all;


package config_package_array is
  type type_config_logic_vector is array (natural range 0 to {size}) of type_config_logic;

  constant const_config_logic_vector: type_config_logic_vector := (
{array}
   );

end package config_package_array;


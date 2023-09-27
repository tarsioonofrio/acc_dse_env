library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package ifmap_package is
  type mem is array(0 to 4000000) of integer;

  constant input_map : mem := (
  	-1, 3, -10, 8, -4,
	-4, 9, 5, -2, 4,
    7, -9, 9, -3, 11,
    1, 2, 3, 4, 5,
    others => 0);
end ifmap_package;

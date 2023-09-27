library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (
  	0, 5, 0,
	92, 37, 94,
	others => 0);
end gold_package;

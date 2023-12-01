library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (
  	0, 15, 0,
	276, 111, 282,
	252, 0,  414,

  	0, 15, 0,
	276, 111, 282,
	252, 0,  414,
  	0, 15, 0,
	276, 111, 282,
	252, 0,  414,

	others => 0);
end gold_package;

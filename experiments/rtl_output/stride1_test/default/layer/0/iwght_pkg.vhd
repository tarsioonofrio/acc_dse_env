library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    0, 
    -- weights
    8, 4, 8,
    -2, -4, 4,
    5, 3, -7,
    others => 0);
end iwght_package;

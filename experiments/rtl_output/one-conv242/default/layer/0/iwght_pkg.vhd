library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -13978,

    -- weights
    -- filter=0 channel=0
    -76, 24, 81, 0, 37, 65, -45, -34, 23,

    others => 0);
end iwght_package;

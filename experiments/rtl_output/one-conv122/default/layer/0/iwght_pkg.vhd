library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    182,

    -- weights
    -- filter=0 channel=0
    29, -29, -74, -50, -59, -32, -69, -38, 55,

    others => 0);
end iwght_package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    20831,

    -- weights
    -- filter=0 channel=0
    -34, -29, 39, -26, -35, 84, -63, 55, -39,

    others => 0);
end iwght_package;

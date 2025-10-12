library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    3325,

    -- weights
    -- filter=0 channel=0
    5, 8, -27, -12, 3, -46, 24, -28, -18,
    -- filter=0 channel=1
    -31, 33, 36, 17, -31, -37, -12, -6, -47,
    -- filter=0 channel=2
    -2, 46, -11, 34, -33, 30, -8, 4, -3,

    others => 0);
end iwght_package;

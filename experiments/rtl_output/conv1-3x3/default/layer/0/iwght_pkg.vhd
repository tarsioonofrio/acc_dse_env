library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -2750, 11245, 3723,

    -- weights
    -- filter=0 channel=0
    -26, -2, -16, 36, -21, 31, 48, 15, -21,
    -- filter=0 channel=1
    29, 0, 18, 22, 35, 4, -11, -20, -16,
    -- filter=0 channel=2
    0, 0, 40, -41, 29, -1, -28, 25, -29,
    -- filter=1 channel=0
    44, 15, 29, -7, -36, -30, 44, -7, 28,
    -- filter=1 channel=1
    -34, 40, -28, 38, 40, 44, 34, -3, 36,
    -- filter=1 channel=2
    -15, -3, -4, 32, -23, 5, 4, 20, 48,
    -- filter=2 channel=0
    29, 38, 48, 36, 29, 48, 37, -6, 4,
    -- filter=2 channel=1
    -43, -14, 31, -14, -37, 29, -37, 19, -4,
    -- filter=2 channel=2
    9, -47, 39, 0, 2, 21, -17, 2, 29,

    others => 0);
end iwght_package;

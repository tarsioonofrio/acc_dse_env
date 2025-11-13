library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -6842, -5334, -7808,

    -- weights
    -- filter=0 channel=0
    -45, -9, -48, -44, -47, -21, 35, -40, -4,
    -- filter=0 channel=1
    25, 29, 43, 28, 8, -39, -21, 48, -2,
    -- filter=0 channel=2
    -28, 18, 27, 35, 13, 14, 40, 33, -48,
    -- filter=1 channel=0
    34, -27, -41, 33, 18, -5, 12, -17, 10,
    -- filter=1 channel=1
    31, 38, 17, -8, 31, -22, 0, 21, 23,
    -- filter=1 channel=2
    -41, 43, 20, 23, -25, 6, -32, 41, -36,
    -- filter=2 channel=0
    48, -10, -42, -16, 8, -14, 35, 0, 44,
    -- filter=2 channel=1
    26, -8, -3, -30, -31, -25, -40, 12, -46,
    -- filter=2 channel=2
    48, -37, 9, 4, -25, -5, 18, 28, 26,

    others => 0);
end iwght_package;

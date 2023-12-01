library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    17819, -24623, -7042,

    -- weights
    -- filter=0 channel=0
    80, 70, 101, 37, 110, 71, 112, 44, 47,
    -- filter=0 channel=1
    120, 51, 63, 109, 41, 85, 84, 24, 49,
    -- filter=0 channel=2
    3, -39, -34, -54, 9, -42, -42, -47, 30,
    -- filter=1 channel=0
    -75, -13, -56, 18, -32, -44, 4, -60, -37,
    -- filter=1 channel=1
    -32, 13, -11, -14, 4, -9, -17, -30, -42,
    -- filter=1 channel=2
    157, 157, 144, 182, 186, 181, 190, 123, 133,
    -- filter=2 channel=0
    31, 23, 59, 67, 49, 3, 18, 64, 42,
    -- filter=2 channel=1
    34, 19, -2, -20, 22, 56, 18, 30, -2,
    -- filter=2 channel=2
    12, 2, -40, -32, -26, -35, -8, 36, -11,

    others => 0);
end iwght_package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -3605, 638, -5479, -5062, -3851, 763, 1907, 1107, 760, 12751, -1317, 382, 6121, -677, 492, 1320,

    -- weights
    -- layer=0 filter=0 channel=0
    1, -29, 1, 31, 4, 5, -34, 39, -40,
    -- layer=0 filter=0 channel=1
    -14, -36, 39, -3, -4, -50, 7, -37, 11,
    -- layer=0 filter=0 channel=2
    55, 41, 54, 43, 37, -9, 9, -4, 0,
    -- layer=0 filter=1 channel=0
    -20, -32, 38, -61, -15, 61, 20, 33, -6,
    -- layer=0 filter=1 channel=1
    -68, 8, -4, -25, 25, 15, -45, -10, 56,
    -- layer=0 filter=1 channel=2
    -4, 11, -17, -32, -45, 56, 37, -37, 40,
    -- layer=0 filter=2 channel=0
    60, 15, 48, 45, 22, 22, -13, 67, 7,
    -- layer=0 filter=2 channel=1
    24, -8, -14, 4, -7, -28, 5, 20, 4,
    -- layer=0 filter=2 channel=2
    -50, 7, -22, -60, -64, -1, -33, -46, -38,
    -- layer=0 filter=3 channel=0
    -38, 25, 17, 55, 19, -12, 56, 28, 21,
    -- layer=0 filter=3 channel=1
    16, 52, 37, 49, 50, -31, 27, 0, -28,
    -- layer=0 filter=3 channel=2
    11, -12, 15, 54, 19, 11, 53, 20, -13,
    -- layer=0 filter=4 channel=0
    49, 53, 21, 16, -1, 58, 31, 48, -28,
    -- layer=0 filter=4 channel=1
    -3, 20, -14, -26, 34, 9, 5, 1, -11,
    -- layer=0 filter=4 channel=2
    30, -23, -47, -15, 41, -35, -6, -43, -44,
    -- layer=0 filter=5 channel=0
    40, -37, -47, 68, -31, 4, 53, 17, -44,
    -- layer=0 filter=5 channel=1
    43, 13, -18, 3, -11, -62, 7, 45, -56,
    -- layer=0 filter=5 channel=2
    13, 28, -43, 60, -24, -19, 15, -8, -17,
    -- layer=0 filter=6 channel=0
    79, 12, -35, -53, -21, 8, 9, -20, -29,
    -- layer=0 filter=6 channel=1
    40, 66, 8, -73, -25, 16, -53, 18, 1,
    -- layer=0 filter=6 channel=2
    56, 11, -13, -59, -43, 22, 45, -30, 3,
    -- layer=0 filter=7 channel=0
    26, -26, 40, 2, -6, 31, -26, 4, -5,
    -- layer=0 filter=7 channel=1
    -4, -37, 29, -49, 14, 4, -66, -18, 60,
    -- layer=0 filter=7 channel=2
    -42, 45, -26, -44, 4, 45, -49, 44, 30,
    -- layer=0 filter=8 channel=0
    0, 15, -34, 40, 4, 52, 56, 4, 32,
    -- layer=0 filter=8 channel=1
    -38, -15, 31, 4, -19, -12, -5, 0, 0,
    -- layer=0 filter=8 channel=2
    25, -14, -27, -37, 31, -15, -19, 5, -46,
    -- layer=0 filter=9 channel=0
    -32, 10, -36, -3, -15, 3, 14, -14, -13,
    -- layer=0 filter=9 channel=1
    8, -49, -29, -13, -32, -28, -48, 2, -26,
    -- layer=0 filter=9 channel=2
    -32, -11, 10, 24, 22, 10, 29, 12, 25,
    -- layer=0 filter=10 channel=0
    -29, -30, -26, 34, 6, -21, -37, 20, -38,
    -- layer=0 filter=10 channel=1
    -10, 6, -19, -19, 1, 0, -19, 39, -45,
    -- layer=0 filter=10 channel=2
    -36, 46, -19, -52, -43, 45, -28, -46, 29,
    -- layer=0 filter=11 channel=0
    -11, -16, -59, -24, -6, -4, 66, 37, 8,
    -- layer=0 filter=11 channel=1
    -62, -50, -36, -13, -16, 28, -1, 10, 72,
    -- layer=0 filter=11 channel=2
    -17, -23, -42, 25, -15, -10, 56, 64, 14,
    -- layer=0 filter=12 channel=0
    -18, 6, 14, -36, 5, 3, 9, -13, 3,
    -- layer=0 filter=12 channel=1
    -34, 51, 52, 37, -16, -5, 3, 48, 41,
    -- layer=0 filter=12 channel=2
    -13, -25, -46, -33, 11, -7, -45, -35, 6,
    -- layer=0 filter=13 channel=0
    -36, 10, 33, -43, -27, -40, 3, -52, -40,
    -- layer=0 filter=13 channel=1
    7, -12, -29, 41, 42, -3, -12, -21, -36,
    -- layer=0 filter=13 channel=2
    20, 47, 45, 50, 43, -16, 7, 39, 21,
    -- layer=0 filter=14 channel=0
    52, 11, 69, -11, 10, 19, 19, -1, 68,
    -- layer=0 filter=14 channel=1
    -24, -13, -28, -18, 24, 26, -44, -40, -52,
    -- layer=0 filter=14 channel=2
    -11, -31, 5, -20, 3, -13, -5, -6, -36,
    -- layer=0 filter=15 channel=0
    30, -33, -35, 8, -3, 44, 18, 21, 40,
    -- layer=0 filter=15 channel=1
    45, 6, 30, -45, 11, 26, 43, -43, 23,
    -- layer=0 filter=15 channel=2
    0, -50, -21, 17, -56, 26, 6, -65, -37,

    others => 0);
end iwght_package;

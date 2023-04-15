library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    16142, -15328, -131, 5488, 5174, -4092, 1464, -4590, 287, -9245, 466, -6317, -3733, 5740, 5568, -14603,

    -- weights
    -- layer=0 filter=0 channel=0
    -56, 10, -47, -39, -5, -31, -12, -59, -66,
    -- layer=0 filter=0 channel=1
    -32, -22, -13, -32, 19, 15, -1, 29, 24,
    -- layer=0 filter=0 channel=2
    -48, 0, -28, -51, -20, -17, 25, -53, -41,
    -- layer=0 filter=1 channel=0
    33, 7, 32, -40, 6, -34, -26, 10, -27,
    -- layer=0 filter=1 channel=1
    39, 43, 67, 16, 35, 72, 48, 12, 30,
    -- layer=0 filter=1 channel=2
    -26, 10, 57, -58, 34, 10, -12, -37, -34,
    -- layer=0 filter=2 channel=0
    75, 90, 54, -25, -24, -23, -66, -32, -48,
    -- layer=0 filter=2 channel=1
    66, 69, 7, -62, -59, -5, 10, -38, -11,
    -- layer=0 filter=2 channel=2
    67, -6, 41, -29, -39, 10, 1, -17, -20,
    -- layer=0 filter=3 channel=0
    6, 40, -25, -7, -4, -32, 39, 8, 81,
    -- layer=0 filter=3 channel=1
    -65, -50, -22, 7, -41, -49, -3, 31, -11,
    -- layer=0 filter=3 channel=2
    -20, -46, -43, -55, -50, -18, 27, 86, 92,
    -- layer=0 filter=4 channel=0
    -21, -34, -58, -61, -56, 4, 8, -15, -24,
    -- layer=0 filter=4 channel=1
    -25, 26, 40, 9, -37, -6, -15, 34, -3,
    -- layer=0 filter=4 channel=2
    59, 60, 33, 10, 56, 19, 31, 13, -27,
    -- layer=0 filter=5 channel=0
    52, 4, -7, 82, 35, 58, -6, -21, 60,
    -- layer=0 filter=5 channel=1
    -44, -6, -7, 10, 26, 23, -51, -43, -68,
    -- layer=0 filter=5 channel=2
    -45, -8, -25, 33, -21, 27, -38, 34, -43,
    -- layer=0 filter=6 channel=0
    23, -59, -60, -40, 16, 0, -19, -61, -64,
    -- layer=0 filter=6 channel=1
    14, -21, -39, -1, -43, 35, 33, -36, 18,
    -- layer=0 filter=6 channel=2
    -20, 50, 56, -7, 72, 51, 53, 45, 64,
    -- layer=0 filter=7 channel=0
    56, -34, 34, 42, -13, 42, 48, 65, -12,
    -- layer=0 filter=7 channel=1
    -12, -48, -55, -18, -12, -37, -40, -9, 14,
    -- layer=0 filter=7 channel=2
    26, 35, 13, 51, -24, -59, 19, 15, 5,
    -- layer=0 filter=8 channel=0
    43, -12, -34, 74, -22, -58, 46, -21, -12,
    -- layer=0 filter=8 channel=1
    94, -47, -34, 100, -55, -56, 24, -11, -34,
    -- layer=0 filter=8 channel=2
    58, -43, -38, 34, -39, 11, 39, -39, 10,
    -- layer=0 filter=9 channel=0
    -21, 40, 45, -36, 51, -4, 8, 31, 56,
    -- layer=0 filter=9 channel=1
    -71, 2, -25, -19, -71, -15, -48, -35, -14,
    -- layer=0 filter=9 channel=2
    0, 51, 51, 41, 53, 40, 21, -7, 49,
    -- layer=0 filter=10 channel=0
    -55, -9, 28, 57, 30, -42, -49, 7, -79,
    -- layer=0 filter=10 channel=1
    48, 53, 23, 79, 74, -4, 0, -35, -1,
    -- layer=0 filter=10 channel=2
    -9, 20, -13, 38, 17, -20, -84, -66, -48,
    -- layer=0 filter=11 channel=0
    -64, 14, -35, 37, -38, 9, 5, -22, 46,
    -- layer=0 filter=11 channel=1
    40, 53, 19, 49, -14, -23, 30, 49, 43,
    -- layer=0 filter=11 channel=2
    -10, -28, -24, 19, 42, 23, -21, 24, -21,
    -- layer=0 filter=12 channel=0
    -63, -35, 4, 11, -43, -5, 17, -44, 4,
    -- layer=0 filter=12 channel=1
    31, 49, 8, 64, 63, -11, 55, 80, 76,
    -- layer=0 filter=12 channel=2
    -25, 28, 1, -13, -19, -45, 2, -2, 20,
    -- layer=0 filter=13 channel=0
    49, -35, -18, 17, -15, -1, 47, 8, -14,
    -- layer=0 filter=13 channel=1
    11, 2, 12, 18, 27, 47, 24, 65, 5,
    -- layer=0 filter=13 channel=2
    -62, -51, -33, -5, 6, -19, -8, -18, -54,
    -- layer=0 filter=14 channel=0
    -14, 18, 68, 62, -14, 36, 22, 45, 74,
    -- layer=0 filter=14 channel=1
    -33, -1, 46, -34, -7, -40, -64, -9, -47,
    -- layer=0 filter=14 channel=2
    -32, 2, -22, -25, 27, -13, -56, 23, -10,
    -- layer=0 filter=15 channel=0
    53, 0, 38, -13, 36, -16, 40, 15, -31,
    -- layer=0 filter=15 channel=1
    29, 13, -63, -15, 5, -21, -40, -45, -58,
    -- layer=0 filter=15 channel=2
    17, 59, -20, 44, 66, -19, 76, 12, 30,

    others => 0);
end iwght_package;

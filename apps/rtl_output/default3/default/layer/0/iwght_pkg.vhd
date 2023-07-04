library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -913, -2451, 810, -2512, 3407, -6819, -232, 623, 6079, -1278, -657, 2120, -6589, -691, -13811, 1889, -9694, -8431, 4056, 2126, -6538, -2319, -6326, -4431, -1425, -997, 5129, -1773, 366, -591, -4416, 5530,

    -- weights
    -- layer=0 filter=0 channel=0
    -3, 37, -16, 17, 3, 52, 2, 31, 55,
    -- layer=0 filter=0 channel=1
    -29, -18, 7, -7, 23, 2, -20, -7, -20,
    -- layer=0 filter=0 channel=2
    16, -16, 15, -32, -22, -19, -30, 1, 37,
    -- layer=0 filter=1 channel=0
    -28, 10, -27, -15, -26, 19, 19, -29, -6,
    -- layer=0 filter=1 channel=1
    9, 43, -6, 42, 41, 22, 10, 34, 28,
    -- layer=0 filter=1 channel=2
    -20, -4, -32, -18, 1, 22, 13, 6, -33,
    -- layer=0 filter=2 channel=0
    -15, -18, -13, -1, -5, -34, 36, -1, 33,
    -- layer=0 filter=2 channel=1
    0, -28, -45, 45, 0, -28, 15, 25, 7,
    -- layer=0 filter=2 channel=2
    26, -46, -58, 11, -20, -13, 34, 51, 15,
    -- layer=0 filter=3 channel=0
    0, 28, 26, -39, 33, 1, -27, 2, 31,
    -- layer=0 filter=3 channel=1
    -48, 19, 2, 0, 16, -25, -46, -20, -6,
    -- layer=0 filter=3 channel=2
    13, 32, 31, 9, 21, 7, -8, 1, 10,
    -- layer=0 filter=4 channel=0
    28, 13, -22, -32, -11, -24, 16, -33, -26,
    -- layer=0 filter=4 channel=1
    -11, 13, -16, -15, -22, 13, -29, -9, -18,
    -- layer=0 filter=4 channel=2
    28, -9, 39, 22, 0, -13, 44, 37, 36,
    -- layer=0 filter=5 channel=0
    14, 19, 39, 28, -6, -16, -46, -18, -30,
    -- layer=0 filter=5 channel=1
    44, 0, 0, 31, 15, 59, 42, -6, 0,
    -- layer=0 filter=5 channel=2
    -51, -49, -26, -38, -16, -36, -24, 6, 0,
    -- layer=0 filter=6 channel=0
    -40, -55, -28, 2, 27, 25, 20, -6, 31,
    -- layer=0 filter=6 channel=1
    -48, -48, -50, 20, -9, 7, 40, 42, 53,
    -- layer=0 filter=6 channel=2
    -29, 10, -41, -23, -19, 37, 33, 47, -16,
    -- layer=0 filter=7 channel=0
    15, 18, -30, -14, -6, 19, -25, -32, 50,
    -- layer=0 filter=7 channel=1
    -21, 8, -10, -21, 25, -5, -41, 2, 53,
    -- layer=0 filter=7 channel=2
    -21, 46, -17, -46, 0, 23, -16, 7, 21,
    -- layer=0 filter=8 channel=0
    -16, -40, -1, 7, -6, -45, -17, 11, 4,
    -- layer=0 filter=8 channel=1
    -10, 27, -26, -25, 21, -3, -8, 12, -31,
    -- layer=0 filter=8 channel=2
    -24, 12, -24, 0, -31, 21, -4, -10, -32,
    -- layer=0 filter=9 channel=0
    31, 23, 50, 40, 12, 16, 27, 14, -12,
    -- layer=0 filter=9 channel=1
    -34, 8, 19, -43, -38, -19, -2, -36, -27,
    -- layer=0 filter=9 channel=2
    -13, -25, 3, -22, -31, -14, -22, 34, -9,
    -- layer=0 filter=10 channel=0
    24, 29, 43, 11, -5, 8, -20, -38, -58,
    -- layer=0 filter=10 channel=1
    41, 14, 30, -35, 8, 22, -45, -25, -22,
    -- layer=0 filter=10 channel=2
    -3, 32, 12, 14, 24, -15, -9, -48, 1,
    -- layer=0 filter=11 channel=0
    -13, 21, -17, -28, 31, 6, 19, 3, -13,
    -- layer=0 filter=11 channel=1
    4, -11, 17, 12, 16, 21, 27, 7, 22,
    -- layer=0 filter=11 channel=2
    -42, 20, 0, -19, 9, -42, -48, 10, -44,
    -- layer=0 filter=12 channel=0
    -2, -15, -40, 26, 12, -15, 9, 13, 0,
    -- layer=0 filter=12 channel=1
    34, 24, 21, 42, -11, 30, 39, 7, 17,
    -- layer=0 filter=12 channel=2
    -8, 24, -6, 29, -21, -8, 22, 34, 1,
    -- layer=0 filter=13 channel=0
    -19, -15, 14, -38, -37, -46, -25, -36, -23,
    -- layer=0 filter=13 channel=1
    17, 2, -22, -1, -3, 14, 33, 3, 23,
    -- layer=0 filter=13 channel=2
    -13, 39, 26, 42, 32, 40, 5, 26, 12,
    -- layer=0 filter=14 channel=0
    3, 12, -7, 4, -19, 25, -16, 6, 5,
    -- layer=0 filter=14 channel=1
    8, 15, 9, 19, 13, 31, 9, 4, 8,
    -- layer=0 filter=14 channel=2
    -12, 12, -23, -33, -20, 26, -20, 10, 13,
    -- layer=0 filter=15 channel=0
    -15, -24, 7, -33, -31, -7, -12, -9, -41,
    -- layer=0 filter=15 channel=1
    8, 23, 25, 6, 7, -6, 19, -20, -10,
    -- layer=0 filter=15 channel=2
    30, 25, 26, 0, 37, 21, 1, 6, -15,
    -- layer=0 filter=16 channel=0
    -16, -7, 23, 9, -2, 17, 25, -11, 4,
    -- layer=0 filter=16 channel=1
    8, 37, 16, 11, -1, -1, -9, 29, 5,
    -- layer=0 filter=16 channel=2
    41, -11, 39, 43, 31, 41, -20, -5, -8,
    -- layer=0 filter=17 channel=0
    -8, -16, 11, -9, 26, -22, 0, 24, 8,
    -- layer=0 filter=17 channel=1
    -11, -7, -44, -2, -11, -8, 3, -11, 21,
    -- layer=0 filter=17 channel=2
    16, -9, 43, -8, 27, 25, 22, 14, 45,
    -- layer=0 filter=18 channel=0
    43, 17, 1, -13, -36, -55, -17, -31, 21,
    -- layer=0 filter=18 channel=1
    67, 27, -14, 5, -9, -29, -46, -10, 16,
    -- layer=0 filter=18 channel=2
    24, 38, -31, 34, -53, -39, -23, 4, 31,
    -- layer=0 filter=19 channel=0
    -6, 6, 14, -13, -33, -29, 32, 4, 23,
    -- layer=0 filter=19 channel=1
    32, 2, 25, 31, 5, 11, -27, 14, 34,
    -- layer=0 filter=19 channel=2
    -5, -41, -34, -1, 2, -7, -22, -7, 0,
    -- layer=0 filter=20 channel=0
    -10, 29, 11, 11, -19, 19, 33, -22, -10,
    -- layer=0 filter=20 channel=1
    -12, -29, 17, 12, -9, 15, -7, -29, -38,
    -- layer=0 filter=20 channel=2
    50, -21, 4, 50, -9, 22, 36, 42, -3,
    -- layer=0 filter=21 channel=0
    38, 37, -11, 19, -4, 16, -22, 12, 29,
    -- layer=0 filter=21 channel=1
    -9, 3, 12, -24, -23, 0, -31, 1, -38,
    -- layer=0 filter=21 channel=2
    25, 10, 20, -29, 5, 4, 20, -37, -21,
    -- layer=0 filter=22 channel=0
    39, 38, 30, 36, 16, -8, -29, 17, 37,
    -- layer=0 filter=22 channel=1
    6, -33, -31, -36, -4, -23, -17, -25, -21,
    -- layer=0 filter=22 channel=2
    40, 6, 35, 5, 37, 24, -8, -8, 25,
    -- layer=0 filter=23 channel=0
    -41, -1, -25, -29, -6, -21, -18, -27, 22,
    -- layer=0 filter=23 channel=1
    -8, -3, -25, 24, 31, -13, -1, -15, 0,
    -- layer=0 filter=23 channel=2
    5, 34, 29, 32, 29, -6, 33, 4, 28,
    -- layer=0 filter=24 channel=0
    0, -20, -7, -41, -21, 8, 14, 20, 25,
    -- layer=0 filter=24 channel=1
    8, 0, 36, 43, 28, 40, 9, 48, 5,
    -- layer=0 filter=24 channel=2
    -3, 1, -4, -24, 27, -23, -13, 17, 16,
    -- layer=0 filter=25 channel=0
    -57, -36, -10, -35, -13, -19, 31, -18, -34,
    -- layer=0 filter=25 channel=1
    -9, -54, -26, -9, -57, -9, -30, -23, -33,
    -- layer=0 filter=25 channel=2
    -22, -21, -31, 8, 20, 33, 10, 20, 19,
    -- layer=0 filter=26 channel=0
    -9, 21, -2, 15, 8, -5, 37, 28, -1,
    -- layer=0 filter=26 channel=1
    -24, -13, 34, 2, 4, -18, -19, 28, 18,
    -- layer=0 filter=26 channel=2
    15, -45, -41, -20, 0, 14, 6, -25, -38,
    -- layer=0 filter=27 channel=0
    -7, -3, -26, -24, 28, -1, 11, -27, -16,
    -- layer=0 filter=27 channel=1
    16, 9, 14, -31, -13, -21, -35, -32, -2,
    -- layer=0 filter=27 channel=2
    4, -34, 10, -24, 0, 24, -2, -7, -34,
    -- layer=0 filter=28 channel=0
    31, -19, -26, 6, 40, -42, 36, -3, -14,
    -- layer=0 filter=28 channel=1
    35, -28, -28, 38, -7, -42, 57, -24, -25,
    -- layer=0 filter=28 channel=2
    57, -3, -48, 47, 11, -52, 7, -21, 0,
    -- layer=0 filter=29 channel=0
    25, 27, -26, 39, -25, 17, -12, 18, 26,
    -- layer=0 filter=29 channel=1
    -7, 32, 35, -20, 7, 7, -20, 4, 9,
    -- layer=0 filter=29 channel=2
    -1, -3, -10, -23, 3, -22, -14, -15, -14,
    -- layer=0 filter=30 channel=0
    28, 25, -33, 29, -30, -5, -30, 26, 0,
    -- layer=0 filter=30 channel=1
    36, -9, -26, 26, -3, 10, 32, 29, -5,
    -- layer=0 filter=30 channel=2
    36, 22, 9, -11, 17, 10, -15, -12, -48,
    -- layer=0 filter=31 channel=0
    5, 10, 15, 12, -9, 23, -31, -10, 36,
    -- layer=0 filter=31 channel=1
    -35, 22, 26, -17, 20, 9, 7, 32, -12,
    -- layer=0 filter=31 channel=2
    -18, -17, 10, -25, -27, 7, -31, -15, -13,

    others => 0);
end iwght_package;

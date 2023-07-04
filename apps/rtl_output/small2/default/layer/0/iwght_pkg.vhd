library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -2269, -3820, 873, -4362, -54, 433, -7424, -616, 7108, 7053, -14153, 165, 4084, -43, -9990, -1751, 2400, -667, -18611, -154, 1965, 1043, 11730, 3788, -6025, 4858, -2376, -15121, -977, 5390, -13221, -239,

    -- weights
    -- layer=0 filter=0 channel=0
    -77, -6, -52, 24, -12, 38, 61, 28, 18,
    -- layer=0 filter=0 channel=1
    -53, -64, -20, 26, 19, 11, 54, 15, 23,
    -- layer=0 filter=0 channel=2
    -21, -56, 11, -38, -10, 12, 48, 48, -8,
    -- layer=0 filter=1 channel=0
    7, -41, -23, 10, -50, 0, -1, -59, -34,
    -- layer=0 filter=1 channel=1
    0, -12, 3, 30, 18, 23, -10, -31, 12,
    -- layer=0 filter=1 channel=2
    50, 51, 33, -3, 55, -3, 1, 34, -14,
    -- layer=0 filter=2 channel=0
    10, 48, 65, 35, -4, 55, -34, -5, 46,
    -- layer=0 filter=2 channel=1
    -52, -1, 38, -32, 21, 0, -20, -48, 14,
    -- layer=0 filter=2 channel=2
    -22, -26, 27, -48, -6, 21, -42, -34, 0,
    -- layer=0 filter=3 channel=0
    -34, -41, 16, 54, 44, 3, -18, 24, 48,
    -- layer=0 filter=3 channel=1
    -25, -31, -43, 46, 9, 14, -19, 12, 20,
    -- layer=0 filter=3 channel=2
    -35, -34, -21, 51, -4, -25, -16, 11, 10,
    -- layer=0 filter=4 channel=0
    16, 9, 21, 23, 53, 40, 46, 42, 48,
    -- layer=0 filter=4 channel=1
    -9, -21, -7, -41, -46, -41, -47, 19, 17,
    -- layer=0 filter=4 channel=2
    -22, -36, 28, -14, -6, -35, 11, -8, 7,
    -- layer=0 filter=5 channel=0
    6, -17, -15, 53, -25, -55, 43, 30, -12,
    -- layer=0 filter=5 channel=1
    9, -19, 12, 53, -28, -32, 8, 27, -45,
    -- layer=0 filter=5 channel=2
    16, -21, -19, 69, -30, -62, 67, -16, -2,
    -- layer=0 filter=6 channel=0
    -5, 26, -3, 18, 8, 6, -20, 7, -35,
    -- layer=0 filter=6 channel=1
    15, -7, 24, 26, 44, -9, 9, 12, 11,
    -- layer=0 filter=6 channel=2
    32, 38, 12, 11, 55, 11, -33, 33, 26,
    -- layer=0 filter=7 channel=0
    43, 29, 0, 58, 18, -20, 30, 38, 25,
    -- layer=0 filter=7 channel=1
    10, -41, -24, 25, 21, -41, -23, 20, -63,
    -- layer=0 filter=7 channel=2
    0, 12, 2, 0, -20, -44, -37, -5, -5,
    -- layer=0 filter=8 channel=0
    -31, -48, -44, 20, 24, -42, 7, 26, 2,
    -- layer=0 filter=8 channel=1
    -43, 6, 19, 0, 2, -27, 56, 47, 29,
    -- layer=0 filter=8 channel=2
    -37, 10, -30, -24, 7, -7, 27, 10, -3,
    -- layer=0 filter=9 channel=0
    26, 14, -30, -8, -30, -2, -18, 26, -12,
    -- layer=0 filter=9 channel=1
    32, 45, -5, 29, 31, 35, 7, 33, 34,
    -- layer=0 filter=9 channel=2
    -32, -25, 8, -1, -32, -37, -37, -30, -40,
    -- layer=0 filter=10 channel=0
    -47, -23, -41, 18, 26, 41, -9, 55, 42,
    -- layer=0 filter=10 channel=1
    -6, 0, -22, 14, 54, 0, 2, 17, 23,
    -- layer=0 filter=10 channel=2
    22, 46, 13, -33, 35, -17, -24, 40, 21,
    -- layer=0 filter=11 channel=0
    25, 17, 15, 38, -17, -25, -42, -4, -44,
    -- layer=0 filter=11 channel=1
    30, 44, 32, 24, 16, 15, -14, -59, -41,
    -- layer=0 filter=11 channel=2
    0, 35, 47, 5, 36, -25, -44, -10, -65,
    -- layer=0 filter=12 channel=0
    -17, 4, -17, -44, -43, 3, -35, -19, -33,
    -- layer=0 filter=12 channel=1
    -8, -17, -6, -13, 0, -29, 35, -8, 17,
    -- layer=0 filter=12 channel=2
    28, 38, 29, 41, 58, 9, 20, 40, 4,
    -- layer=0 filter=13 channel=0
    -43, -55, -43, -14, -8, -16, 12, -13, 2,
    -- layer=0 filter=13 channel=1
    -32, 21, 16, 32, -11, 39, 8, 47, 7,
    -- layer=0 filter=13 channel=2
    1, 1, 16, 0, -17, 30, 27, 37, 21,
    -- layer=0 filter=14 channel=0
    41, 42, 0, 40, -23, -54, 6, 5, -57,
    -- layer=0 filter=14 channel=1
    21, 19, 3, 22, -17, -56, 0, 15, -48,
    -- layer=0 filter=14 channel=2
    -2, 40, 19, 9, 48, 0, 40, 33, -54,
    -- layer=0 filter=15 channel=0
    -29, -16, -35, 22, -27, -20, 27, -20, 5,
    -- layer=0 filter=15 channel=1
    0, -23, -25, -28, 3, 10, -16, -16, 9,
    -- layer=0 filter=15 channel=2
    28, 2, 42, 40, 32, 0, 9, 63, 40,
    -- layer=0 filter=16 channel=0
    11, -61, -25, -45, -22, 35, -21, 5, 87,
    -- layer=0 filter=16 channel=1
    -24, -52, -29, -46, 2, 17, -16, 18, 108,
    -- layer=0 filter=16 channel=2
    22, -67, -15, -61, -44, -1, 11, 24, 85,
    -- layer=0 filter=17 channel=0
    59, 42, 22, 6, -9, -47, -17, -24, -24,
    -- layer=0 filter=17 channel=1
    -6, 8, 41, -28, -57, -54, 25, 21, 46,
    -- layer=0 filter=17 channel=2
    -34, -12, 39, -30, -31, -54, 56, 11, 64,
    -- layer=0 filter=18 channel=0
    -4, -23, 23, 18, -11, 1, 2, -1, 29,
    -- layer=0 filter=18 channel=1
    10, 30, 25, 15, -29, 6, 9, -24, 21,
    -- layer=0 filter=18 channel=2
    -1, 34, 27, -9, 2, 35, -17, 20, -44,
    -- layer=0 filter=19 channel=0
    -30, -32, 4, -28, 9, -6, -38, -9, 0,
    -- layer=0 filter=19 channel=1
    48, 49, 7, 3, 43, 8, 46, 23, 31,
    -- layer=0 filter=19 channel=2
    -29, -38, 4, 20, -1, -36, -13, -12, -20,
    -- layer=0 filter=20 channel=0
    18, -12, -24, 39, 27, -57, 51, -8, -61,
    -- layer=0 filter=20 channel=1
    45, -16, -37, 35, -24, -22, 65, -13, -40,
    -- layer=0 filter=20 channel=2
    40, 8, -40, 54, 1, -59, 46, 20, -52,
    -- layer=0 filter=21 channel=0
    -21, -22, 44, -28, -7, 43, -17, -4, 16,
    -- layer=0 filter=21 channel=1
    -41, -27, 54, -27, -8, 34, -42, -7, 50,
    -- layer=0 filter=21 channel=2
    -35, -31, 45, -67, 2, 69, -12, -18, 52,
    -- layer=0 filter=22 channel=0
    4, 7, -1, 7, 23, 45, 25, 28, 54,
    -- layer=0 filter=22 channel=1
    -76, -73, -11, -44, -88, -59, -42, -10, -36,
    -- layer=0 filter=22 channel=2
    -42, -13, -19, 0, -29, -26, 12, 39, 52,
    -- layer=0 filter=23 channel=0
    12, 14, 14, 56, 49, -1, -7, 30, -24,
    -- layer=0 filter=23 channel=1
    12, -22, -50, 28, 27, -33, 7, -29, -5,
    -- layer=0 filter=23 channel=2
    38, -37, -41, -17, -17, -45, 2, 3, 4,
    -- layer=0 filter=24 channel=0
    -13, 3, 32, -40, 22, 42, -43, -41, -32,
    -- layer=0 filter=24 channel=1
    16, 47, 47, -29, 15, 50, -37, -42, 34,
    -- layer=0 filter=24 channel=2
    17, 30, 19, 9, -13, 49, -47, -49, 15,
    -- layer=0 filter=25 channel=0
    17, -6, -14, -29, -38, 12, -20, -1, 53,
    -- layer=0 filter=25 channel=1
    -5, -2, 3, 1, -34, 22, -13, 38, 52,
    -- layer=0 filter=25 channel=2
    -9, -49, 0, -56, -27, 27, -29, 5, 67,
    -- layer=0 filter=26 channel=0
    -46, -33, -46, -52, -12, 0, -41, 7, -17,
    -- layer=0 filter=26 channel=1
    -13, -48, -51, -21, -10, -48, -13, 11, -42,
    -- layer=0 filter=26 channel=2
    -30, -2, -11, 11, 17, 17, 11, 14, -35,
    -- layer=0 filter=27 channel=0
    -25, 21, 19, 17, 20, 27, -16, 2, 37,
    -- layer=0 filter=27 channel=1
    -20, 10, 6, -27, 20, -37, -5, -49, -57,
    -- layer=0 filter=27 channel=2
    -4, 47, 2, 43, 53, 36, 0, -14, 26,
    -- layer=0 filter=28 channel=0
    15, 38, -9, -33, -1, 41, -26, 8, 12,
    -- layer=0 filter=28 channel=1
    24, 7, 42, -44, -2, 33, -46, -45, -42,
    -- layer=0 filter=28 channel=2
    12, 37, 50, 10, 33, 18, -45, -68, -39,
    -- layer=0 filter=29 channel=0
    42, 16, -3, -3, 34, -14, 33, 40, -10,
    -- layer=0 filter=29 channel=1
    14, -27, -44, -28, -12, -25, -52, -64, -71,
    -- layer=0 filter=29 channel=2
    37, 50, 49, 11, -6, -16, 25, -25, 14,
    -- layer=0 filter=30 channel=0
    -55, -44, -11, -39, -21, 31, 37, 53, 29,
    -- layer=0 filter=30 channel=1
    -9, -4, -31, -10, -18, 5, -3, 35, 53,
    -- layer=0 filter=30 channel=2
    14, 19, 34, 2, -22, 5, -22, 52, 33,
    -- layer=0 filter=31 channel=0
    -16, -28, -9, -38, -3, -7, -9, -27, -43,
    -- layer=0 filter=31 channel=1
    17, -6, -8, -11, 14, 29, -11, 28, -34,
    -- layer=0 filter=31 channel=2
    -4, 24, 35, 39, 59, 1, 44, -1, -3,

    others => 0);
end iwght_package;

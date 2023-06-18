library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -4399, 6628, -12767, 795, -2363, -554, -5857, -1018, -3688, -5069, 4726, -768, 3085, 1415, 2889, -785, 354, 748, 1179, 116, -6222, 521, 4628, 753, -3183, -749, -539, 882, -3788, 961, -13338, 1510,

    -- weights
    -- layer=0 filter=0 channel=0
    6, -24, -10, 1, -26, 30, 18, 28, 33,
    -- layer=0 filter=0 channel=1
    30, 17, 35, 36, 12, 28, -15, 35, 11,
    -- layer=0 filter=0 channel=2
    -9, -3, 7, -49, 6, 24, -45, -4, -35,
    -- layer=0 filter=1 channel=0
    -2, -31, -16, 5, -13, -11, 3, 5, 37,
    -- layer=0 filter=1 channel=1
    -7, 6, 17, 31, 31, 46, 26, -4, 23,
    -- layer=0 filter=1 channel=2
    -9, -42, -34, -35, 13, -7, 2, -39, -25,
    -- layer=0 filter=2 channel=0
    21, 44, 38, 30, 37, 2, 38, -13, 36,
    -- layer=0 filter=2 channel=1
    -57, 21, -21, -15, 11, 22, -45, -39, -6,
    -- layer=0 filter=2 channel=2
    -21, -31, 29, -36, 24, 24, 12, -30, 28,
    -- layer=0 filter=3 channel=0
    35, 18, 22, 16, -17, -34, -8, 6, -26,
    -- layer=0 filter=3 channel=1
    13, 19, 19, -6, 34, 1, 42, 10, 12,
    -- layer=0 filter=3 channel=2
    -7, 1, -42, -38, -7, -12, 5, -25, -26,
    -- layer=0 filter=4 channel=0
    -22, -15, 7, -2, -3, 7, -40, -5, -29,
    -- layer=0 filter=4 channel=1
    18, 6, -39, 0, 2, -41, -27, -30, 24,
    -- layer=0 filter=4 channel=2
    -41, 12, -42, 11, -34, 28, 14, 11, -12,
    -- layer=0 filter=5 channel=0
    12, 48, 18, 41, -16, -22, -42, -54, -8,
    -- layer=0 filter=5 channel=1
    -11, 35, 43, 32, 24, -35, 14, -34, -50,
    -- layer=0 filter=5 channel=2
    31, 9, 43, -4, -17, 19, -37, -7, -40,
    -- layer=0 filter=6 channel=0
    -12, -16, 8, 2, 14, -2, -19, -4, 7,
    -- layer=0 filter=6 channel=1
    11, 6, -25, 20, 42, -28, 39, 39, -41,
    -- layer=0 filter=6 channel=2
    -31, -8, -2, 46, 25, 5, 44, 42, 14,
    -- layer=0 filter=7 channel=0
    -11, 6, 1, -2, -31, -20, -13, -10, -30,
    -- layer=0 filter=7 channel=1
    7, 2, -13, -3, -35, -28, 22, -39, 19,
    -- layer=0 filter=7 channel=2
    -17, -8, 14, 15, -8, -26, -12, 1, -19,
    -- layer=0 filter=8 channel=0
    -14, 9, 37, 29, -13, 27, -6, 20, 1,
    -- layer=0 filter=8 channel=1
    -16, -27, -1, -59, -26, -8, -38, -28, 15,
    -- layer=0 filter=8 channel=2
    33, 17, 37, -12, 3, 31, 16, 23, 21,
    -- layer=0 filter=9 channel=0
    21, 49, -8, 48, 54, -19, 40, 2, 18,
    -- layer=0 filter=9 channel=1
    0, 22, -3, 17, 38, 14, -29, -36, -28,
    -- layer=0 filter=9 channel=2
    -37, 3, -35, -14, -15, -5, -19, -17, -11,
    -- layer=0 filter=10 channel=0
    37, 3, 18, 19, 28, 10, 27, 29, -2,
    -- layer=0 filter=10 channel=1
    4, -49, -22, -16, -13, -35, -8, 29, 12,
    -- layer=0 filter=10 channel=2
    17, -42, -41, -25, -48, -9, 7, -11, 16,
    -- layer=0 filter=11 channel=0
    -30, 7, 20, 12, -26, -27, -8, -25, -24,
    -- layer=0 filter=11 channel=1
    -29, -21, -33, -24, -16, -18, -33, 2, 15,
    -- layer=0 filter=11 channel=2
    -10, -24, -17, -15, 4, 24, 8, 0, -18,
    -- layer=0 filter=12 channel=0
    -63, -40, 19, 0, 12, 0, 19, 18, 1,
    -- layer=0 filter=12 channel=1
    8, 4, 50, -24, 33, 40, -30, 14, 48,
    -- layer=0 filter=12 channel=2
    -59, -2, 17, -64, -19, 27, -29, 19, -3,
    -- layer=0 filter=13 channel=0
    -6, 18, 10, -48, -30, -47, -20, -31, -47,
    -- layer=0 filter=13 channel=1
    39, 39, -3, 40, -21, -6, 17, -26, 23,
    -- layer=0 filter=13 channel=2
    17, 29, -28, 22, 6, 8, 32, 21, 21,
    -- layer=0 filter=14 channel=0
    17, 44, -17, 52, 4, -9, 39, 38, -52,
    -- layer=0 filter=14 channel=1
    33, 13, 12, 3, -22, -39, 29, 9, -44,
    -- layer=0 filter=14 channel=2
    11, 4, -29, -14, -24, -64, 41, 23, -60,
    -- layer=0 filter=15 channel=0
    0, 12, -68, -19, 52, -19, -34, 11, -1,
    -- layer=0 filter=15 channel=1
    42, 14, -61, 11, 66, -34, -21, -16, 29,
    -- layer=0 filter=15 channel=2
    -18, -3, -26, 28, 68, -12, 8, 15, 10,
    -- layer=0 filter=16 channel=0
    44, 61, 22, 49, 56, -1, 42, 5, 17,
    -- layer=0 filter=16 channel=1
    -1, -23, -40, -8, 3, -37, -2, -26, -60,
    -- layer=0 filter=16 channel=2
    -19, -11, 20, -32, -20, 18, -6, 10, -22,
    -- layer=0 filter=17 channel=0
    -4, 38, 8, 19, -7, -9, -35, -14, 3,
    -- layer=0 filter=17 channel=1
    -19, -19, 29, -38, -44, -27, -20, -46, 23,
    -- layer=0 filter=17 channel=2
    46, 24, 46, 12, 52, 46, 10, 0, -18,
    -- layer=0 filter=18 channel=0
    -23, 26, 62, -66, 40, 33, -77, -30, 1,
    -- layer=0 filter=18 channel=1
    19, 39, 28, -75, 25, 32, -73, -36, 57,
    -- layer=0 filter=18 channel=2
    -24, 34, 1, -7, -9, 58, -67, 14, -6,
    -- layer=0 filter=19 channel=0
    55, 30, 46, -23, -4, 18, -34, -34, -33,
    -- layer=0 filter=19 channel=1
    0, 33, 34, -32, 6, -23, -41, -20, -1,
    -- layer=0 filter=19 channel=2
    39, 32, -4, -21, -17, 17, -19, -15, -7,
    -- layer=0 filter=20 channel=0
    -20, -34, 7, -52, 11, 18, 12, -38, -48,
    -- layer=0 filter=20 channel=1
    18, 34, 19, -1, 17, 25, -6, 33, -12,
    -- layer=0 filter=20 channel=2
    9, 0, 24, -26, 16, 33, 8, 13, 47,
    -- layer=0 filter=21 channel=0
    44, 32, -44, 47, -12, -59, 44, 18, -53,
    -- layer=0 filter=21 channel=1
    46, -22, -32, 31, 21, -52, 50, 10, -58,
    -- layer=0 filter=21 channel=2
    13, -10, -35, 19, -17, -19, 33, 27, -28,
    -- layer=0 filter=22 channel=0
    -40, -15, 12, -47, -40, -32, 41, 31, -2,
    -- layer=0 filter=22 channel=1
    -27, -43, -14, 9, 6, -12, 2, 25, -19,
    -- layer=0 filter=22 channel=2
    -15, -39, -23, 22, -26, 38, 48, 58, 43,
    -- layer=0 filter=23 channel=0
    -40, 8, 13, 26, -15, -13, 34, 29, 15,
    -- layer=0 filter=23 channel=1
    -38, -63, -44, 19, 1, -30, 51, 22, 4,
    -- layer=0 filter=23 channel=2
    -10, -65, -43, -3, -8, 19, 54, 60, 6,
    -- layer=0 filter=24 channel=0
    3, -39, -28, 23, 26, 9, 20, 19, -16,
    -- layer=0 filter=24 channel=1
    -1, 16, -34, 22, 25, -46, 3, 17, -54,
    -- layer=0 filter=24 channel=2
    53, -5, -15, 34, 55, 12, 47, 19, -4,
    -- layer=0 filter=25 channel=0
    36, 59, 11, -27, 15, -38, -47, -9, -36,
    -- layer=0 filter=25 channel=1
    47, 14, 44, -15, -17, 6, 0, -33, -14,
    -- layer=0 filter=25 channel=2
    -20, 48, -9, 30, 14, 1, 12, -50, -36,
    -- layer=0 filter=26 channel=0
    21, 5, -46, 26, -9, -36, 36, 31, -11,
    -- layer=0 filter=26 channel=1
    0, -17, 26, 28, 26, 33, 46, 26, -21,
    -- layer=0 filter=26 channel=2
    -15, -2, -24, 0, -22, -24, 18, -22, -38,
    -- layer=0 filter=27 channel=0
    34, -44, 48, 36, -21, 32, -13, -50, 22,
    -- layer=0 filter=27 channel=1
    46, -56, -16, -1, -43, 10, 49, -43, -13,
    -- layer=0 filter=27 channel=2
    43, -37, 3, 61, -57, 4, 46, -46, -1,
    -- layer=0 filter=28 channel=0
    -13, -11, -32, 15, 12, 8, -16, 5, -8,
    -- layer=0 filter=28 channel=1
    8, 34, 17, 37, 60, -1, 22, 10, -33,
    -- layer=0 filter=28 channel=2
    31, 4, -47, 50, 37, -22, 7, 18, -30,
    -- layer=0 filter=29 channel=0
    -43, 2, -51, -49, -45, 3, -32, -16, -24,
    -- layer=0 filter=29 channel=1
    23, 2, 27, 28, 0, 32, -27, 24, -4,
    -- layer=0 filter=29 channel=2
    40, 42, 26, 26, 36, -7, 8, -3, 21,
    -- layer=0 filter=30 channel=0
    27, 37, 31, -47, -7, 2, -20, 9, 8,
    -- layer=0 filter=30 channel=1
    32, 54, 27, 4, 29, -1, 4, 12, 6,
    -- layer=0 filter=30 channel=2
    -11, 54, 19, -17, 2, -7, -64, -30, -30,
    -- layer=0 filter=31 channel=0
    22, 3, 25, -41, -37, -59, -17, 1, -2,
    -- layer=0 filter=31 channel=1
    37, 4, 16, 16, -6, -31, 48, 44, 58,
    -- layer=0 filter=31 channel=2
    -22, -13, -6, -33, -44, -51, 38, -13, 32,

    others => 0);
end iwght_package;

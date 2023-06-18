library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    1094, 1785, 8211, -130, -11256, 183, -4684, -1315, -10272, -3610, 4595, -9340, 864, -197, 125, -993, 35, 1114, -1318, -2912, 2194, 6258, 388, -6062, 12118, 2141, 6935, 830, -1937, 789, -2343, 2195, 551, -2182, -11804, -1023, 693, -8441, -1920, -2259, 4958, -130, 703, 1881, 5053, 534, 1188, 588, -55, 701, -4458, -1959, 3361, -384, -7084, -97, 1584, -3211, -3481, -7437, -1062, 1961, 252, -22,

    -- weights
    -- layer=0 filter=0 channel=0
    -25, 20, 21, 7, 5, 53, -31, 41, 50,
    -- layer=0 filter=0 channel=1
    -27, -14, 8, -37, -24, 20, -46, 19, 29,
    -- layer=0 filter=0 channel=2
    -1, -17, -11, 4, 0, -17, -18, -22, 7,
    -- layer=0 filter=1 channel=0
    -13, 29, 18, 26, 29, -9, 41, 43, 0,
    -- layer=0 filter=1 channel=1
    -19, -38, -14, -31, -11, -26, 20, -3, -41,
    -- layer=0 filter=1 channel=2
    -24, -16, 4, -27, 2, 15, 20, 4, -14,
    -- layer=0 filter=2 channel=0
    -15, 5, 18, -52, 0, -20, -46, -23, 26,
    -- layer=0 filter=2 channel=1
    7, 33, 20, -33, 5, 19, 14, 24, 34,
    -- layer=0 filter=2 channel=2
    -15, -8, 8, -48, -10, 4, -29, 0, 34,
    -- layer=0 filter=3 channel=0
    25, 28, 29, 10, -18, 10, -28, -39, -22,
    -- layer=0 filter=3 channel=1
    28, 4, 22, 22, -4, 26, -4, -28, -47,
    -- layer=0 filter=3 channel=2
    22, 3, -13, -9, 30, 5, -35, -7, -14,
    -- layer=0 filter=4 channel=0
    10, 16, 19, 0, 18, 17, -7, -4, 26,
    -- layer=0 filter=4 channel=1
    -40, -12, -19, 5, 21, 24, -16, 16, 26,
    -- layer=0 filter=4 channel=2
    -37, -23, -6, -1, 13, 30, -8, 11, 23,
    -- layer=0 filter=5 channel=0
    -30, -4, -36, -11, 13, 19, 36, 7, 4,
    -- layer=0 filter=5 channel=1
    -45, -41, -2, 17, 33, 18, -7, -3, 25,
    -- layer=0 filter=5 channel=2
    -25, -47, -43, 16, 40, -9, 25, 15, 25,
    -- layer=0 filter=6 channel=0
    -48, -33, 12, 27, 23, -11, 26, 27, -10,
    -- layer=0 filter=6 channel=1
    -38, 10, 25, 10, 27, 11, 38, -3, 27,
    -- layer=0 filter=6 channel=2
    -30, -32, 26, -3, 16, -16, 10, -21, -20,
    -- layer=0 filter=7 channel=0
    -8, 18, 1, 25, 25, 10, -26, -5, -35,
    -- layer=0 filter=7 channel=1
    -16, 41, 20, 13, 52, 14, 3, 23, -24,
    -- layer=0 filter=7 channel=2
    -16, -19, -34, 16, 35, -6, -1, -18, -41,
    -- layer=0 filter=8 channel=0
    -18, -4, 8, 39, -1, 8, 9, 42, 31,
    -- layer=0 filter=8 channel=1
    19, 1, -39, 13, -9, -32, -10, 2, -41,
    -- layer=0 filter=8 channel=2
    20, 23, -34, 34, -6, -21, 34, 27, -9,
    -- layer=0 filter=9 channel=0
    12, -18, 9, -29, 19, 22, -45, -4, -30,
    -- layer=0 filter=9 channel=1
    3, -5, -3, -15, 24, 9, -32, 5, -4,
    -- layer=0 filter=9 channel=2
    31, 1, 31, 17, 24, 18, -12, 13, -16,
    -- layer=0 filter=10 channel=0
    40, -5, -16, 24, 26, 15, 15, 21, 4,
    -- layer=0 filter=10 channel=1
    -32, -14, -7, -53, -12, -44, -25, -43, -43,
    -- layer=0 filter=10 channel=2
    6, -3, 12, -11, -28, 24, 0, 10, -10,
    -- layer=0 filter=11 channel=0
    -27, -35, -10, 26, -3, 16, 19, 46, 49,
    -- layer=0 filter=11 channel=1
    -5, -46, -45, 2, -13, 22, -23, 25, 7,
    -- layer=0 filter=11 channel=2
    15, 7, -5, -2, -2, 29, 10, 41, 40,
    -- layer=0 filter=12 channel=0
    -17, -8, 30, -39, -8, 18, 2, 6, 28,
    -- layer=0 filter=12 channel=1
    -32, -16, 30, -52, -5, 58, -33, -7, 32,
    -- layer=0 filter=12 channel=2
    -26, -4, 36, -39, -4, 34, 5, -1, -9,
    -- layer=0 filter=13 channel=0
    8, 35, 18, 9, 41, 14, 1, 36, 40,
    -- layer=0 filter=13 channel=1
    -16, -28, -28, -39, 11, -22, -27, -32, -4,
    -- layer=0 filter=13 channel=2
    2, -12, 22, -27, -3, -13, -11, 5, 17,
    -- layer=0 filter=14 channel=0
    31, 35, 34, 0, -10, 24, 9, 3, -9,
    -- layer=0 filter=14 channel=1
    21, 11, -14, 1, 33, 12, -22, 7, 15,
    -- layer=0 filter=14 channel=2
    -24, -35, 3, -20, -17, -34, -30, -21, -1,
    -- layer=0 filter=15 channel=0
    11, -12, -29, -21, -13, -23, -36, -36, -13,
    -- layer=0 filter=15 channel=1
    0, 21, -10, 17, 21, -26, -7, -15, -18,
    -- layer=0 filter=15 channel=2
    6, 26, 11, 25, 28, 43, 18, 29, 39,
    -- layer=0 filter=16 channel=0
    25, 34, 25, -23, -35, -37, 3, 14, -7,
    -- layer=0 filter=16 channel=1
    22, 36, 14, 6, -31, -29, 2, -17, -11,
    -- layer=0 filter=16 channel=2
    29, -10, 4, -12, -20, -40, -6, 22, 31,
    -- layer=0 filter=17 channel=0
    -3, 8, 31, 38, 33, 34, -15, 18, 38,
    -- layer=0 filter=17 channel=1
    -12, 20, 12, -21, -18, -34, -31, -36, -26,
    -- layer=0 filter=17 channel=2
    2, 26, 9, -2, -41, -33, -14, -24, -15,
    -- layer=0 filter=18 channel=0
    -1, -12, 3, -19, -2, -2, -22, -11, -12,
    -- layer=0 filter=18 channel=1
    -10, -23, 3, 15, 0, 7, 13, 17, -10,
    -- layer=0 filter=18 channel=2
    -22, 15, -11, -12, -18, 0, 3, -27, -4,
    -- layer=0 filter=19 channel=0
    -25, 14, -21, -22, -7, 2, -7, 28, 13,
    -- layer=0 filter=19 channel=1
    24, -22, -15, 27, 34, -36, 29, 8, -13,
    -- layer=0 filter=19 channel=2
    5, 21, -38, 27, 38, -45, 25, 32, -9,
    -- layer=0 filter=20 channel=0
    -19, -20, 32, -6, -22, 32, 0, 6, 31,
    -- layer=0 filter=20 channel=1
    1, 3, 36, -7, -5, 12, 11, -12, 14,
    -- layer=0 filter=20 channel=2
    -28, -13, 18, -29, -34, 33, -4, -28, -6,
    -- layer=0 filter=21 channel=0
    -13, 26, 10, 36, 30, 15, 6, 9, 21,
    -- layer=0 filter=21 channel=1
    -50, -15, -26, -37, -27, -38, -5, -25, -37,
    -- layer=0 filter=21 channel=2
    -15, 7, 27, 22, 15, 19, -20, 0, 27,
    -- layer=0 filter=22 channel=0
    13, -16, 2, -29, -38, 0, 11, 47, 12,
    -- layer=0 filter=22 channel=1
    -8, -8, -6, -11, -18, -41, 18, 42, 31,
    -- layer=0 filter=22 channel=2
    21, 20, 14, -45, -37, -28, 11, 9, 27,
    -- layer=0 filter=23 channel=0
    12, 0, 4, 14, 9, 31, 23, 43, 15,
    -- layer=0 filter=23 channel=1
    7, 38, 35, -16, -9, 20, 2, -20, 6,
    -- layer=0 filter=23 channel=2
    -3, -5, -24, -21, -49, -41, -10, -62, -55,
    -- layer=0 filter=24 channel=0
    11, 0, 54, -14, -50, -17, -16, -54, -8,
    -- layer=0 filter=24 channel=1
    28, 12, 41, 0, -21, -10, -6, -20, -46,
    -- layer=0 filter=24 channel=2
    2, 26, 33, -42, -31, -14, -36, -62, -36,
    -- layer=0 filter=25 channel=0
    5, 29, 5, 48, 3, -25, 52, -12, -55,
    -- layer=0 filter=25 channel=1
    -16, -19, 0, -1, 10, -14, 37, -26, -50,
    -- layer=0 filter=25 channel=2
    -10, 21, 2, 14, 8, -25, 57, -23, -34,
    -- layer=0 filter=26 channel=0
    -31, -16, -32, 11, -7, 14, -35, -19, -13,
    -- layer=0 filter=26 channel=1
    -2, -23, -24, -8, 2, -6, 0, 6, -38,
    -- layer=0 filter=26 channel=2
    -28, 0, -1, -12, 3, -16, -16, -46, -40,
    -- layer=0 filter=27 channel=0
    -39, 3, -4, -37, 24, 40, -31, 22, 37,
    -- layer=0 filter=27 channel=1
    -47, 25, -6, -44, -3, 42, -7, -5, 27,
    -- layer=0 filter=27 channel=2
    -25, 27, -7, -43, 19, 4, -17, 5, 21,
    -- layer=0 filter=28 channel=0
    29, 11, -48, 6, 53, -6, -49, 4, 22,
    -- layer=0 filter=28 channel=1
    -10, -10, -33, 34, 25, -6, -15, 21, 30,
    -- layer=0 filter=28 channel=2
    34, 19, -43, -1, 46, -40, -56, 15, -17,
    -- layer=0 filter=29 channel=0
    8, 27, -19, 15, 20, -20, 23, 19, 8,
    -- layer=0 filter=29 channel=1
    24, -28, -43, 34, -5, -48, 36, -17, -42,
    -- layer=0 filter=29 channel=2
    -4, -5, -11, 31, 5, -40, 45, 9, -21,
    -- layer=0 filter=30 channel=0
    -25, -9, -25, -6, -31, -25, -21, -14, -32,
    -- layer=0 filter=30 channel=1
    -8, -11, -22, 13, -26, 9, -11, 5, -23,
    -- layer=0 filter=30 channel=2
    12, 11, 12, -23, -32, -30, 7, 15, -13,
    -- layer=0 filter=31 channel=0
    24, 8, -29, 8, 8, -21, 1, -26, -5,
    -- layer=0 filter=31 channel=1
    -17, -6, -32, -22, -19, -30, 0, 10, -15,
    -- layer=0 filter=31 channel=2
    30, 28, 11, 45, 3, -2, 40, 20, 24,
    -- layer=0 filter=32 channel=0
    -29, -2, 57, -59, 9, 27, -41, -9, 57,
    -- layer=0 filter=32 channel=1
    -26, -3, 12, -20, 20, 21, -28, -20, 29,
    -- layer=0 filter=32 channel=2
    -2, 6, 24, -40, -9, 55, -55, -23, 41,
    -- layer=0 filter=33 channel=0
    6, -5, -22, 16, -2, 9, -27, -17, -16,
    -- layer=0 filter=33 channel=1
    -34, -11, -23, -31, -27, -6, 12, -32, -15,
    -- layer=0 filter=33 channel=2
    16, -8, -16, 4, -8, 1, -19, -29, -15,
    -- layer=0 filter=34 channel=0
    8, 8, -2, 20, 6, 1, -15, 5, -18,
    -- layer=0 filter=34 channel=1
    18, 8, -36, 3, 27, 17, -32, 13, 14,
    -- layer=0 filter=34 channel=2
    27, -16, -9, 15, -22, -21, 5, -7, 0,
    -- layer=0 filter=35 channel=0
    -22, -34, -40, 11, -17, -19, -10, -6, -13,
    -- layer=0 filter=35 channel=1
    36, 19, 11, 13, 10, -13, 7, 31, -8,
    -- layer=0 filter=35 channel=2
    16, 39, 21, 24, 6, -25, 26, -8, -22,
    -- layer=0 filter=36 channel=0
    34, 16, -13, -3, -17, 3, -40, -21, -17,
    -- layer=0 filter=36 channel=1
    31, 7, 13, 21, -15, -23, -42, -17, -8,
    -- layer=0 filter=36 channel=2
    34, -4, 36, 23, 26, -5, -10, -26, -5,
    -- layer=0 filter=37 channel=0
    36, 23, 23, 34, 37, 18, 0, -6, -4,
    -- layer=0 filter=37 channel=1
    -23, -23, -28, -26, -6, -5, -12, -18, -22,
    -- layer=0 filter=37 channel=2
    5, 5, 31, -1, 5, 26, -8, 29, 8,
    -- layer=0 filter=38 channel=0
    9, 6, -21, -20, -24, -28, -9, -35, -23,
    -- layer=0 filter=38 channel=1
    -3, 12, 2, 24, 31, 15, -19, -22, -24,
    -- layer=0 filter=38 channel=2
    -4, 3, 17, 39, 48, 35, 13, 24, -19,
    -- layer=0 filter=39 channel=0
    5, 4, -22, -29, 2, 10, -8, 4, -22,
    -- layer=0 filter=39 channel=1
    -16, -24, 0, -17, 20, 1, -24, -7, -32,
    -- layer=0 filter=39 channel=2
    -6, 14, -11, -9, -10, 18, -22, 19, -20,
    -- layer=0 filter=40 channel=0
    -20, 1, -34, 10, 3, -13, 0, -22, 7,
    -- layer=0 filter=40 channel=1
    25, 16, -23, 38, 9, 9, 39, 13, 27,
    -- layer=0 filter=40 channel=2
    -11, -16, -17, 2, -23, 3, -23, -23, -7,
    -- layer=0 filter=41 channel=0
    -38, -10, -38, 1, 32, -3, 6, 18, 31,
    -- layer=0 filter=41 channel=1
    -41, -27, -36, 11, 35, 34, 26, 5, -2,
    -- layer=0 filter=41 channel=2
    -21, -33, -26, -5, -5, 5, 31, 43, -4,
    -- layer=0 filter=42 channel=0
    -22, -5, 31, 24, 34, 24, 33, 29, -1,
    -- layer=0 filter=42 channel=1
    -21, -18, 24, -7, 4, 33, 23, 13, 22,
    -- layer=0 filter=42 channel=2
    -28, 0, -17, -6, -4, -26, -36, -21, -26,
    -- layer=0 filter=43 channel=0
    -3, -4, -15, 34, -24, -45, 27, 21, -13,
    -- layer=0 filter=43 channel=1
    9, 0, -27, 53, -15, -38, 59, 17, -38,
    -- layer=0 filter=43 channel=2
    12, -14, -12, 9, 0, -24, 61, -6, -31,
    -- layer=0 filter=44 channel=0
    -21, -38, 0, -47, -28, -6, -48, -4, -19,
    -- layer=0 filter=44 channel=1
    2, 10, 46, -11, 33, 46, -11, 15, 26,
    -- layer=0 filter=44 channel=2
    -12, 4, 41, 20, 14, 0, 9, -7, -12,
    -- layer=0 filter=45 channel=0
    25, -22, -23, 25, -12, -3, 39, 11, -41,
    -- layer=0 filter=45 channel=1
    32, -36, 14, 46, -20, -32, 46, -21, -34,
    -- layer=0 filter=45 channel=2
    37, -20, -1, 38, -31, -33, 32, -4, -15,
    -- layer=0 filter=46 channel=0
    15, -20, 2, -4, -35, -28, -25, -11, 13,
    -- layer=0 filter=46 channel=1
    43, 29, 22, 39, 38, -15, 32, 15, 13,
    -- layer=0 filter=46 channel=2
    -39, -15, -35, -36, -4, -13, -5, -25, 4,
    -- layer=0 filter=47 channel=0
    20, 6, 3, 41, -7, -1, -18, -28, -34,
    -- layer=0 filter=47 channel=1
    46, 21, -32, 57, 10, -15, 11, 14, 0,
    -- layer=0 filter=47 channel=2
    26, -9, -60, 44, 19, -65, 13, 0, -36,
    -- layer=0 filter=48 channel=0
    -27, -33, -12, -7, -20, 10, 7, 46, 16,
    -- layer=0 filter=48 channel=1
    -8, -33, -1, -23, 10, -16, 30, 47, 14,
    -- layer=0 filter=48 channel=2
    2, -35, -32, -25, -20, -10, 31, 23, 41,
    -- layer=0 filter=49 channel=0
    -4, -46, 0, -31, 4, 2, 27, 6, 35,
    -- layer=0 filter=49 channel=1
    -22, -41, -15, -39, -24, 13, 13, -5, 29,
    -- layer=0 filter=49 channel=2
    -16, 13, 12, -30, 29, 24, -12, 33, 46,
    -- layer=0 filter=50 channel=0
    18, 25, 17, 17, -7, 9, 19, -19, 7,
    -- layer=0 filter=50 channel=1
    -13, -25, -40, 11, -7, -6, -25, -16, -43,
    -- layer=0 filter=50 channel=2
    21, 37, -11, 5, 25, 5, 18, 31, 27,
    -- layer=0 filter=51 channel=0
    -44, -31, 7, 3, -18, -32, 15, 11, -28,
    -- layer=0 filter=51 channel=1
    -3, 6, 8, 37, 40, 34, 36, 43, 11,
    -- layer=0 filter=51 channel=2
    -32, -18, -8, 18, 12, 21, -23, 12, -1,
    -- layer=0 filter=52 channel=0
    31, 30, 8, 5, 0, 29, 0, 19, 12,
    -- layer=0 filter=52 channel=1
    -20, -6, -22, -25, -25, -53, -31, -34, -33,
    -- layer=0 filter=52 channel=2
    25, 9, 23, 11, -16, -14, 15, -15, 4,
    -- layer=0 filter=53 channel=0
    41, 25, 29, -20, -6, -8, -41, -24, -22,
    -- layer=0 filter=53 channel=1
    37, 31, 19, -32, -14, 29, -47, -3, 18,
    -- layer=0 filter=53 channel=2
    10, 30, 31, -19, 6, 0, -45, -35, 11,
    -- layer=0 filter=54 channel=0
    -32, 0, -9, 12, 3, -2, 11, -7, 20,
    -- layer=0 filter=54 channel=1
    0, 23, -6, 39, 37, 25, 16, 9, -26,
    -- layer=0 filter=54 channel=2
    -18, -21, 14, 24, 0, -12, 26, 14, -28,
    -- layer=0 filter=55 channel=0
    31, 23, 38, 24, 17, 21, -16, 30, -2,
    -- layer=0 filter=55 channel=1
    2, 11, -13, -36, -30, -18, 0, -25, -23,
    -- layer=0 filter=55 channel=2
    -19, -10, 3, -7, -30, -25, 19, -14, -28,
    -- layer=0 filter=56 channel=0
    19, -14, 6, 45, 21, -31, 30, 18, -21,
    -- layer=0 filter=56 channel=1
    33, -9, 10, 36, -9, -15, 30, 20, -26,
    -- layer=0 filter=56 channel=2
    -13, -38, -22, -7, 7, -50, 27, -33, -13,
    -- layer=0 filter=57 channel=0
    -38, -17, -19, 1, -16, -16, -25, 2, 7,
    -- layer=0 filter=57 channel=1
    19, 33, 26, -25, 28, 29, -3, 5, -8,
    -- layer=0 filter=57 channel=2
    8, 41, 21, 17, 12, 21, 19, 12, -7,
    -- layer=0 filter=58 channel=0
    3, 48, 30, 37, 18, -19, -24, 3, -34,
    -- layer=0 filter=58 channel=1
    19, 40, -7, 20, -16, -38, -34, -9, -26,
    -- layer=0 filter=58 channel=2
    21, 34, 0, -1, -2, -13, 9, -9, -11,
    -- layer=0 filter=59 channel=0
    -7, -7, 3, 1, -18, -24, -7, -4, -34,
    -- layer=0 filter=59 channel=1
    2, -7, 15, -16, -26, 15, -11, -10, -3,
    -- layer=0 filter=59 channel=2
    34, 21, 27, 28, 33, 25, 28, -10, 8,
    -- layer=0 filter=60 channel=0
    13, 12, 9, 16, -23, -6, 21, -16, -7,
    -- layer=0 filter=60 channel=1
    -9, -2, -1, -10, -30, 1, -25, -13, -36,
    -- layer=0 filter=60 channel=2
    29, 38, 32, 16, 11, 36, -8, 24, -13,
    -- layer=0 filter=61 channel=0
    5, 35, -14, 25, 39, 12, 27, 38, 36,
    -- layer=0 filter=61 channel=1
    0, -11, 11, -1, 8, 7, 6, -22, 4,
    -- layer=0 filter=61 channel=2
    -20, 2, -32, -29, -4, -22, -18, -32, -27,
    -- layer=0 filter=62 channel=0
    46, -53, 9, 8, -52, 41, -10, -7, 27,
    -- layer=0 filter=62 channel=1
    16, -50, 27, 23, -43, 20, 14, -42, 13,
    -- layer=0 filter=62 channel=2
    39, -53, 0, 13, -58, 37, 1, -16, 37,
    -- layer=0 filter=63 channel=0
    19, 43, 15, 10, -44, -34, -31, 4, 15,
    -- layer=0 filter=63 channel=1
    29, 23, -9, -23, -43, -37, 22, -9, 42,
    -- layer=0 filter=63 channel=2
    -3, 8, -4, 5, -40, -32, -15, 28, 55,

    others => 0);
end iwght_package;

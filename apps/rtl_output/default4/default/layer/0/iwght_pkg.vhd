library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -3411, 3004, 5612, 454, -1629, -7806, 1031, -2796, -1061, -47, -4586, 2316, -5201, 399, 2908, -3968, -2211, -709, 13484, 4634, 3014, -348, 4746, -2419, -224, -636, -1859, 4775, 1305, 63, 245, -6683, -1388, 418, -662, -508, -3096, 527, 6396, -1749, -818, 1783, -7027, 960, -3840, 219, -86, -11614, -4384, -3001, 220, 3963, -422, -6177, -29, 2411, -921, -1381, 1457, 1672, -3477, 2565, -4992, 426,

    -- weights
    -- layer=0 filter=0 channel=0
    14, 8, -4, 8, -7, 0, -22, -5, 19,
    -- layer=0 filter=0 channel=1
    13, 5, 8, -27, 14, -10, 20, -14, 20,
    -- layer=0 filter=0 channel=2
    -14, 13, -19, 9, 9, -18, 3, 2, -23,
    -- layer=0 filter=1 channel=0
    3, 6, -18, 11, -17, 14, 24, 27, 13,
    -- layer=0 filter=1 channel=1
    9, 15, -15, 21, 11, 6, 14, -2, 13,
    -- layer=0 filter=1 channel=2
    -31, -11, -22, -19, 0, 12, -7, -35, -34,
    -- layer=0 filter=2 channel=0
    -14, -19, -22, -7, 24, -1, -13, -1, 10,
    -- layer=0 filter=2 channel=1
    -10, 10, -2, 7, 28, 29, 21, 16, 10,
    -- layer=0 filter=2 channel=2
    2, -16, -13, 12, -3, 0, -33, -30, -21,
    -- layer=0 filter=3 channel=0
    -6, -28, 8, -18, -33, -5, 0, -13, -21,
    -- layer=0 filter=3 channel=1
    12, 26, 9, -17, -20, 30, -4, 7, 1,
    -- layer=0 filter=3 channel=2
    -17, 10, 30, -11, 31, -11, 19, 9, 29,
    -- layer=0 filter=4 channel=0
    -4, -26, -15, -18, -16, -25, -1, -27, 0,
    -- layer=0 filter=4 channel=1
    -6, 4, -11, -21, -19, -17, 8, 18, -2,
    -- layer=0 filter=4 channel=2
    7, 11, -17, -23, 1, 9, -23, -14, 6,
    -- layer=0 filter=5 channel=0
    -41, 14, 18, -14, 12, 1, -26, -9, 1,
    -- layer=0 filter=5 channel=1
    -17, 11, 15, 8, 12, 7, -15, 7, 0,
    -- layer=0 filter=5 channel=2
    7, 13, 29, -30, 25, 20, -2, 1, 16,
    -- layer=0 filter=6 channel=0
    29, -8, -18, 40, -4, -22, 21, -8, -1,
    -- layer=0 filter=6 channel=1
    22, -19, -14, 17, -12, -30, 29, -25, -10,
    -- layer=0 filter=6 channel=2
    17, -28, -15, 45, 3, -15, 21, -9, -27,
    -- layer=0 filter=7 channel=0
    -28, -25, 18, -10, 0, -17, -5, -25, -9,
    -- layer=0 filter=7 channel=1
    -13, 0, 8, 4, 7, -31, -11, 2, 1,
    -- layer=0 filter=7 channel=2
    6, -21, -17, -20, -9, -8, 10, -11, -19,
    -- layer=0 filter=8 channel=0
    -6, -11, -17, 3, 15, -20, -26, -10, 12,
    -- layer=0 filter=8 channel=1
    -19, -23, -14, -14, -19, 8, -11, -7, -22,
    -- layer=0 filter=8 channel=2
    -18, 19, 2, 18, -12, -19, -20, -4, 2,
    -- layer=0 filter=9 channel=0
    -20, -33, -23, 9, -36, -33, -14, -21, -17,
    -- layer=0 filter=9 channel=1
    0, 3, 20, -25, 17, 1, 16, 2, 12,
    -- layer=0 filter=9 channel=2
    2, 7, 31, 31, 36, 2, 28, 7, 32,
    -- layer=0 filter=10 channel=0
    15, 33, 21, -10, 19, 3, -19, 5, -15,
    -- layer=0 filter=10 channel=1
    -11, 33, 33, -22, 29, 31, -31, 3, 8,
    -- layer=0 filter=10 channel=2
    -12, 3, -3, -28, -8, 19, -38, -29, 1,
    -- layer=0 filter=11 channel=0
    0, -24, -25, -11, -25, -8, -1, -28, -6,
    -- layer=0 filter=11 channel=1
    28, -10, -7, -1, 4, 23, -2, 7, -19,
    -- layer=0 filter=11 channel=2
    27, -10, 28, -6, 21, 6, 27, 20, 12,
    -- layer=0 filter=12 channel=0
    26, 22, 25, 3, -9, 20, -14, -2, -6,
    -- layer=0 filter=12 channel=1
    0, 5, 1, 24, -1, 5, -4, 26, 29,
    -- layer=0 filter=12 channel=2
    -9, -14, -29, -26, -24, -33, -19, -36, -42,
    -- layer=0 filter=13 channel=0
    -15, 0, -21, -27, -29, 15, -5, -41, -5,
    -- layer=0 filter=13 channel=1
    24, 23, 8, 14, -7, 7, -6, 0, 2,
    -- layer=0 filter=13 channel=2
    25, 4, -1, 19, 1, 17, -23, 20, 4,
    -- layer=0 filter=14 channel=0
    -13, 16, 57, -45, -54, -12, 40, -5, -41,
    -- layer=0 filter=14 channel=1
    -1, 36, 58, -37, -43, 11, 10, -19, -23,
    -- layer=0 filter=14 channel=2
    -23, 36, 50, -21, -31, -21, 0, 8, -14,
    -- layer=0 filter=15 channel=0
    12, -15, -9, -8, 11, -17, -28, 8, 3,
    -- layer=0 filter=15 channel=1
    -33, -19, 13, -20, 8, -14, -15, 6, -6,
    -- layer=0 filter=15 channel=2
    12, 22, 8, 30, 30, 26, -12, 35, 28,
    -- layer=0 filter=16 channel=0
    -37, -5, -32, -27, 19, 15, -9, -13, 10,
    -- layer=0 filter=16 channel=1
    -16, -13, -19, -17, -18, 4, 20, 14, 1,
    -- layer=0 filter=16 channel=2
    21, 21, 1, 35, 14, 15, 9, 7, 16,
    -- layer=0 filter=17 channel=0
    39, -4, 10, 0, -1, 8, -6, -30, -13,
    -- layer=0 filter=17 channel=1
    35, 26, 0, -10, -11, -13, -33, 3, -28,
    -- layer=0 filter=17 channel=2
    34, 2, 36, 3, -16, -10, -21, -4, -11,
    -- layer=0 filter=18 channel=0
    -3, -26, -8, -23, -23, -9, -14, 10, -9,
    -- layer=0 filter=18 channel=1
    -5, 6, 1, 3, -24, -21, 15, -26, -6,
    -- layer=0 filter=18 channel=2
    -10, 15, 2, -17, -13, -2, -13, 19, 17,
    -- layer=0 filter=19 channel=0
    33, 14, 24, 38, 22, -11, 19, -3, -13,
    -- layer=0 filter=19 channel=1
    -32, -18, -13, -31, -37, -22, -23, -26, -21,
    -- layer=0 filter=19 channel=2
    17, -2, 18, 1, -17, 3, -3, 12, 31,
    -- layer=0 filter=20 channel=0
    5, -23, 24, -10, -16, -16, 25, -5, -4,
    -- layer=0 filter=20 channel=1
    9, -22, 8, 13, -2, -21, 6, 20, 2,
    -- layer=0 filter=20 channel=2
    1, -1, -15, -8, -20, -45, 24, 10, -25,
    -- layer=0 filter=21 channel=0
    -17, -3, -22, 17, -23, -18, -12, -8, -11,
    -- layer=0 filter=21 channel=1
    -19, -2, 23, -17, -22, -8, 0, 4, -18,
    -- layer=0 filter=21 channel=2
    15, -18, -17, -18, -1, 6, 2, 8, -12,
    -- layer=0 filter=22 channel=0
    -22, -6, 5, -6, -22, 24, 29, 18, -24,
    -- layer=0 filter=22 channel=1
    -14, 5, 5, 27, 4, 7, 34, -19, -5,
    -- layer=0 filter=22 channel=2
    15, -7, 14, -4, -35, -16, -24, -30, -23,
    -- layer=0 filter=23 channel=0
    2, -9, -14, -2, 15, -38, -4, 10, -27,
    -- layer=0 filter=23 channel=1
    20, 30, -24, 10, 31, -13, 22, 31, -3,
    -- layer=0 filter=23 channel=2
    15, 24, -4, 35, 19, -32, 29, 7, -31,
    -- layer=0 filter=24 channel=0
    -17, -21, 0, 7, -26, -8, -14, -15, 19,
    -- layer=0 filter=24 channel=1
    0, 8, -2, -28, -16, 13, 3, -24, -21,
    -- layer=0 filter=24 channel=2
    19, 36, 31, 26, -9, 16, 22, 34, -11,
    -- layer=0 filter=25 channel=0
    -2, 22, 19, -1, 9, 30, -16, -5, -23,
    -- layer=0 filter=25 channel=1
    17, 23, 13, 0, -16, -22, -19, -34, -41,
    -- layer=0 filter=25 channel=2
    16, -3, 19, -2, 29, 29, -20, -8, -25,
    -- layer=0 filter=26 channel=0
    -27, 4, -11, -1, -10, 0, -4, -26, 5,
    -- layer=0 filter=26 channel=1
    -2, -1, 16, 1, -1, 25, -1, 10, 21,
    -- layer=0 filter=26 channel=2
    -9, 31, 1, 11, 25, 20, 24, 3, 2,
    -- layer=0 filter=27 channel=0
    5, 17, 0, 14, 7, -12, 17, 26, -8,
    -- layer=0 filter=27 channel=1
    -12, -26, -10, -51, -22, -27, -6, -22, -4,
    -- layer=0 filter=27 channel=2
    -13, 29, 30, -33, 9, 23, -36, -7, 29,
    -- layer=0 filter=28 channel=0
    11, -11, -26, -32, -20, -15, -21, -32, 2,
    -- layer=0 filter=28 channel=1
    20, 21, 0, -13, 22, -15, 0, -3, 8,
    -- layer=0 filter=28 channel=2
    12, 23, 3, -2, 24, 5, 10, 34, 3,
    -- layer=0 filter=29 channel=0
    6, -1, 7, 24, 18, 26, 14, 13, -6,
    -- layer=0 filter=29 channel=1
    -20, 6, -30, -14, -25, -3, -2, -22, -10,
    -- layer=0 filter=29 channel=2
    -10, -27, -22, 15, -11, 4, 7, 25, -4,
    -- layer=0 filter=30 channel=0
    15, -3, -27, -30, -24, -13, -21, 17, 23,
    -- layer=0 filter=30 channel=1
    -22, -19, -7, 9, -6, -7, 12, -7, -14,
    -- layer=0 filter=30 channel=2
    -13, 17, 31, 1, 23, -9, 30, 8, 37,
    -- layer=0 filter=31 channel=0
    15, -14, -12, 22, -20, -14, 21, 26, -7,
    -- layer=0 filter=31 channel=1
    11, -18, -25, 32, 27, -29, -7, 21, -6,
    -- layer=0 filter=31 channel=2
    46, 2, 6, 51, -1, 16, 37, -11, -33,
    -- layer=0 filter=32 channel=0
    0, -20, -22, -13, -22, 14, -17, 9, 5,
    -- layer=0 filter=32 channel=1
    6, -24, 2, 19, -22, -13, 16, 2, -2,
    -- layer=0 filter=32 channel=2
    -12, -21, -6, -24, 8, 11, -26, -15, -5,
    -- layer=0 filter=33 channel=0
    27, 12, -38, 2, 21, -42, 16, 3, 9,
    -- layer=0 filter=33 channel=1
    28, -5, -22, 37, -18, -45, 32, -11, -19,
    -- layer=0 filter=33 channel=2
    20, -10, 15, -15, -11, -33, 1, 15, 5,
    -- layer=0 filter=34 channel=0
    13, 5, 6, 15, -5, -20, -16, -24, 2,
    -- layer=0 filter=34 channel=1
    35, 34, -3, 33, 4, -6, -39, -40, -6,
    -- layer=0 filter=34 channel=2
    32, 7, 2, -11, -15, 5, -11, -15, 7,
    -- layer=0 filter=35 channel=0
    31, 12, 26, -14, -5, 2, 6, -24, -31,
    -- layer=0 filter=35 channel=1
    20, 27, 6, 6, -24, -26, 0, -30, 4,
    -- layer=0 filter=35 channel=2
    13, 32, 40, -4, -26, -23, 7, -32, 2,
    -- layer=0 filter=36 channel=0
    21, 1, 2, 4, 39, 40, 15, 11, 13,
    -- layer=0 filter=36 channel=1
    -10, -18, 8, -24, -22, -23, 5, -14, -21,
    -- layer=0 filter=36 channel=2
    -3, 0, 1, 3, 0, -25, -11, -14, 3,
    -- layer=0 filter=37 channel=0
    -30, -42, -24, 2, 2, 15, 27, 13, 36,
    -- layer=0 filter=37 channel=1
    -26, -36, 0, 1, -2, -9, 36, 20, 15,
    -- layer=0 filter=37 channel=2
    -20, -29, -6, 11, 4, -27, 37, 9, 16,
    -- layer=0 filter=38 channel=0
    -14, -14, 13, -17, 0, 12, 4, -6, -12,
    -- layer=0 filter=38 channel=1
    19, 11, 24, 17, -8, 14, 9, 17, 6,
    -- layer=0 filter=38 channel=2
    10, -30, -4, -16, -5, -28, -8, -7, -18,
    -- layer=0 filter=39 channel=0
    20, 23, 12, -8, -6, 6, -6, 23, -6,
    -- layer=0 filter=39 channel=1
    -8, 27, 24, 4, -7, 17, 19, -16, 24,
    -- layer=0 filter=39 channel=2
    -29, -18, -29, 11, -2, -17, -18, 1, -23,
    -- layer=0 filter=40 channel=0
    8, -16, -15, 0, -25, -39, -27, 0, -16,
    -- layer=0 filter=40 channel=1
    21, 15, 8, 20, 31, 9, 15, 26, 12,
    -- layer=0 filter=40 channel=2
    16, 12, -18, -7, 25, 0, 28, 13, -14,
    -- layer=0 filter=41 channel=0
    13, 22, -12, 32, -15, 9, -9, -4, 13,
    -- layer=0 filter=41 channel=1
    30, -7, -3, 11, -21, 4, 32, 16, -18,
    -- layer=0 filter=41 channel=2
    0, -10, -17, -21, -20, -10, 5, -23, -21,
    -- layer=0 filter=42 channel=0
    25, 22, 21, 4, 34, 5, 29, 21, 4,
    -- layer=0 filter=42 channel=1
    -3, 14, -20, 16, 0, -6, -33, 9, -12,
    -- layer=0 filter=42 channel=2
    17, 17, 11, -24, 17, 11, -13, 18, -12,
    -- layer=0 filter=43 channel=0
    17, 21, 13, -23, 1, 7, 11, -22, 27,
    -- layer=0 filter=43 channel=1
    -43, -19, 28, -17, 3, 19, -40, -9, 7,
    -- layer=0 filter=43 channel=2
    -12, -21, 41, -19, 1, 23, -35, -8, 26,
    -- layer=0 filter=44 channel=0
    20, 0, -6, -30, -1, -20, -17, 1, -12,
    -- layer=0 filter=44 channel=1
    16, -2, 6, 5, -26, 1, 18, -30, -24,
    -- layer=0 filter=44 channel=2
    11, -1, 25, 31, 34, 14, 13, 4, 7,
    -- layer=0 filter=45 channel=0
    39, -20, -39, 25, 4, -6, -2, 9, 11,
    -- layer=0 filter=45 channel=1
    28, 0, -13, 18, -8, -48, 18, -6, -11,
    -- layer=0 filter=45 channel=2
    13, -6, -41, 38, 22, -39, 2, 24, -18,
    -- layer=0 filter=46 channel=0
    -33, -29, -27, 6, 21, -10, 34, 41, 6,
    -- layer=0 filter=46 channel=1
    -6, -19, -37, 1, 23, 20, 21, -1, 6,
    -- layer=0 filter=46 channel=2
    -27, -28, -10, 19, 16, -9, -14, 22, 25,
    -- layer=0 filter=47 channel=0
    0, -3, 7, 3, 7, 6, 12, 31, 7,
    -- layer=0 filter=47 channel=1
    14, -19, 5, 11, 0, -5, -23, -16, 2,
    -- layer=0 filter=47 channel=2
    11, 29, -10, 2, 26, 1, 18, 23, 0,
    -- layer=0 filter=48 channel=0
    14, 22, 8, -7, 0, -6, -23, -17, 20,
    -- layer=0 filter=48 channel=1
    19, 27, 23, -1, 15, 24, 11, 23, -18,
    -- layer=0 filter=48 channel=2
    9, 6, 21, 3, -12, -9, -7, -10, -6,
    -- layer=0 filter=49 channel=0
    -25, 5, -34, 11, 12, 17, 17, -3, 18,
    -- layer=0 filter=49 channel=1
    -3, -8, -17, 0, 6, 22, 28, 33, 30,
    -- layer=0 filter=49 channel=2
    -28, -4, -32, 22, -20, 3, 23, 27, 12,
    -- layer=0 filter=50 channel=0
    -21, 10, -11, 9, 45, 37, -26, -26, -16,
    -- layer=0 filter=50 channel=1
    -24, -23, 16, 23, 23, 6, 11, -17, -12,
    -- layer=0 filter=50 channel=2
    -17, -34, -24, 27, 30, 10, 20, 6, -16,
    -- layer=0 filter=51 channel=0
    10, 5, 0, -8, 0, -30, 6, 15, -1,
    -- layer=0 filter=51 channel=1
    -2, -7, -6, 13, 23, -15, 25, 14, 21,
    -- layer=0 filter=51 channel=2
    -17, -24, -6, 6, -2, -33, 15, -28, -21,
    -- layer=0 filter=52 channel=0
    -25, -9, -39, 22, -3, -23, 16, 13, -3,
    -- layer=0 filter=52 channel=1
    0, -9, 0, 23, -7, -21, 21, 31, -22,
    -- layer=0 filter=52 channel=2
    21, 25, -13, -17, 25, 9, -20, -9, 1,
    -- layer=0 filter=53 channel=0
    -3, 2, 18, -24, -13, -29, -10, -8, -1,
    -- layer=0 filter=53 channel=1
    -8, 17, 10, -16, -12, 17, -15, 14, 23,
    -- layer=0 filter=53 channel=2
    25, 38, 33, -1, -12, -2, 7, 2, 7,
    -- layer=0 filter=54 channel=0
    2, 3, -28, 18, 14, -36, 46, -12, -34,
    -- layer=0 filter=54 channel=1
    14, 12, -19, 25, 9, -24, 10, 21, -16,
    -- layer=0 filter=54 channel=2
    7, 19, -41, 36, -13, -49, 37, 4, -16,
    -- layer=0 filter=55 channel=0
    18, -3, -7, 5, -26, -19, -8, 7, -27,
    -- layer=0 filter=55 channel=1
    31, -17, 4, 30, 9, 30, 32, 25, 13,
    -- layer=0 filter=55 channel=2
    11, 12, -26, -21, 4, -13, -27, -11, -32,
    -- layer=0 filter=56 channel=0
    29, 2, 35, 3, -9, 8, -24, -34, -26,
    -- layer=0 filter=56 channel=1
    22, 31, 8, 3, 5, 25, -34, -26, -34,
    -- layer=0 filter=56 channel=2
    25, 22, -10, -8, 4, -13, -15, -17, 14,
    -- layer=0 filter=57 channel=0
    -20, -23, -11, -10, 22, 11, -11, 4, -10,
    -- layer=0 filter=57 channel=1
    16, 8, -12, -5, -16, -16, 11, -28, 6,
    -- layer=0 filter=57 channel=2
    -17, 5, -9, -21, -13, -23, -1, -4, -21,
    -- layer=0 filter=58 channel=0
    18, 3, 22, 16, 12, 28, -18, -3, 11,
    -- layer=0 filter=58 channel=1
    14, -27, 20, -32, -20, 24, -20, -27, 16,
    -- layer=0 filter=58 channel=2
    0, -29, -9, -7, -12, 12, -28, -23, 32,
    -- layer=0 filter=59 channel=0
    21, 24, 33, -4, 19, -7, 4, 25, 20,
    -- layer=0 filter=59 channel=1
    9, -7, -17, 4, -17, -37, -26, -6, -33,
    -- layer=0 filter=59 channel=2
    23, 11, -15, -11, -17, 14, -15, 13, -26,
    -- layer=0 filter=60 channel=0
    -14, 5, 4, -1, 3, 12, -5, -7, -24,
    -- layer=0 filter=60 channel=1
    -8, 19, 11, -12, 14, -28, -7, -14, 11,
    -- layer=0 filter=60 channel=2
    11, 9, -6, 8, 31, 21, 28, 10, 7,
    -- layer=0 filter=61 channel=0
    33, -3, -5, 34, 0, -5, 38, -4, 30,
    -- layer=0 filter=61 channel=1
    4, -12, -26, -9, -14, 13, 8, -9, -2,
    -- layer=0 filter=61 channel=2
    -5, 21, -24, -16, -4, -11, 0, -33, -14,
    -- layer=0 filter=62 channel=0
    21, 31, 28, 13, 34, 27, 22, 28, 10,
    -- layer=0 filter=62 channel=1
    5, -32, -4, -31, 3, -33, -34, -31, -41,
    -- layer=0 filter=62 channel=2
    -3, 6, -8, 20, 13, 4, 11, 12, 6,
    -- layer=0 filter=63 channel=0
    -31, -20, 36, -37, 14, 25, -19, 16, 16,
    -- layer=0 filter=63 channel=1
    -50, 22, 14, -16, 14, 29, -26, 3, 15,
    -- layer=0 filter=63 channel=2
    -31, -7, 40, -37, -13, 19, -2, 11, 10,

    others => 0);
end iwght_package;

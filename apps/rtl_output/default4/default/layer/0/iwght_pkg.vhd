library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -11382, -1814, 11868, -522, -1631, 597, -2891, -200, -289, 3459, 357, 335, 5731, 485, 1682, 3401, 655, -9010, -399, 242, -552, 1885, 599, -186, 5308, 1070, 1584, 2367, 12, -2715, -663, 2588, 259, -520, -3099, -2342, -1295, 943, 1284, -6732, 1739, 921, 11797, 213, -153, 225, 1431, 851, -1680, 6007, -802, 1214, 1143, -1664, 2406, 6352, -899, 1682, 149, -2412, -997, -1864, -23, -274, -6222, -3625, -3480, -4305, -140, 2587, -211, 3618, 321, -961, -1340, 1594, -8848, 375, -2659, 911, -299, 2603, 1284, -5804, 147, 454, 134, 1805, 1723, 689, -192, 1228, 4832, 1343, -11189, -672, 2040, -4837, 241, 324, -762, 337, -16063, 237, 353, -4997, 2135, -1574, 540, -882, -4819, -706, -538, 6619, 520, -1021, -800, -326, 291, 30, 1830, 2243, -516, 3881, -86, 701, -1373, 195,

    -- weights
    -- layer=0 filter=0 channel=0
    -10, 5, -5, -10, -2, 5, 0, -23, -10,
    -- layer=0 filter=0 channel=1
    10, -5, 8, 4, 22, 14, -7, 12, 13,
    -- layer=0 filter=0 channel=2
    0, 21, 2, -3, 24, 11, -3, 9, -5,
    -- layer=0 filter=1 channel=0
    -4, -38, 0, -9, 17, 9, 24, 16, -8,
    -- layer=0 filter=1 channel=1
    -33, -11, 4, -17, 3, 15, 26, 26, -20,
    -- layer=0 filter=1 channel=2
    -44, -47, -15, -5, 7, 11, 36, 19, 14,
    -- layer=0 filter=2 channel=0
    -3, -13, 14, 5, -16, -15, -15, -15, -22,
    -- layer=0 filter=2 channel=1
    0, -21, -13, -19, -7, -29, 7, 0, 0,
    -- layer=0 filter=2 channel=2
    27, -10, 16, -17, -8, -22, -14, -19, -14,
    -- layer=0 filter=3 channel=0
    5, -9, -18, 12, -15, 0, -3, -8, -21,
    -- layer=0 filter=3 channel=1
    -22, 0, -11, 6, 3, -20, -9, 8, 6,
    -- layer=0 filter=3 channel=2
    -8, 9, -10, -16, 0, -22, -17, -19, -21,
    -- layer=0 filter=4 channel=0
    3, 10, -11, -14, 10, -9, -14, 0, -16,
    -- layer=0 filter=4 channel=1
    2, -18, 10, -3, -1, -4, 4, -20, 10,
    -- layer=0 filter=4 channel=2
    13, -4, 8, -18, -11, -18, -5, 9, 0,
    -- layer=0 filter=5 channel=0
    -3, -23, 13, -19, 12, -17, 18, 4, 1,
    -- layer=0 filter=5 channel=1
    -20, -20, -11, -12, -23, 0, 38, 17, 14,
    -- layer=0 filter=5 channel=2
    -32, -37, -20, -8, 3, -14, 32, 45, 36,
    -- layer=0 filter=6 channel=0
    19, 35, 23, 28, 32, 0, 12, 20, 22,
    -- layer=0 filter=6 channel=1
    -12, 9, 11, -1, -14, -12, -8, -30, -21,
    -- layer=0 filter=6 channel=2
    4, -11, 6, -24, -26, -29, -7, -36, -17,
    -- layer=0 filter=7 channel=0
    -24, -2, 34, -27, 3, 33, -12, -4, 12,
    -- layer=0 filter=7 channel=1
    -28, -13, 30, -22, -11, 37, -26, -2, 32,
    -- layer=0 filter=7 channel=2
    -13, -10, 30, -36, -8, 28, -26, 5, 18,
    -- layer=0 filter=8 channel=0
    -38, -44, -18, 13, 10, 28, 21, 10, 21,
    -- layer=0 filter=8 channel=1
    -16, -12, -26, -14, -5, -1, 28, 23, 14,
    -- layer=0 filter=8 channel=2
    -5, -24, -33, -20, 11, 16, 27, 28, 4,
    -- layer=0 filter=9 channel=0
    31, 2, -34, -10, -8, -33, -10, -4, 8,
    -- layer=0 filter=9 channel=1
    40, 38, 1, 26, -7, -12, -26, -21, 10,
    -- layer=0 filter=9 channel=2
    43, 14, -38, -8, -33, -29, -32, -25, -23,
    -- layer=0 filter=10 channel=0
    -17, 4, 32, -29, 9, 30, -35, -6, 28,
    -- layer=0 filter=10 channel=1
    -15, 15, 1, -38, -5, 41, -42, 2, 38,
    -- layer=0 filter=10 channel=2
    -30, 4, 14, -25, 0, 8, -24, 11, 35,
    -- layer=0 filter=11 channel=0
    -7, -8, -12, -13, -6, 2, -19, -1, -29,
    -- layer=0 filter=11 channel=1
    -6, -6, -10, 9, -2, -19, -2, -6, -13,
    -- layer=0 filter=11 channel=2
    31, 31, 14, 26, 2, 18, 3, 19, 7,
    -- layer=0 filter=12 channel=0
    21, 22, 58, 17, 11, 1, -42, -43, -59,
    -- layer=0 filter=12 channel=1
    14, 27, 64, -15, -5, 3, -42, -95, -76,
    -- layer=0 filter=12 channel=2
    10, 5, 40, -18, -20, 15, -53, -96, -69,
    -- layer=0 filter=13 channel=0
    8, 8, 0, 41, 20, -8, 38, 30, 15,
    -- layer=0 filter=13 channel=1
    1, 5, -23, -15, -10, -20, -23, -28, -6,
    -- layer=0 filter=13 channel=2
    13, -13, -24, 9, -2, -18, 13, -19, -4,
    -- layer=0 filter=14 channel=0
    -33, 26, 49, -44, -20, 24, -15, -20, -14,
    -- layer=0 filter=14 channel=1
    -30, 21, 44, -26, -9, 47, -31, -11, -6,
    -- layer=0 filter=14 channel=2
    -31, 36, 34, -54, 18, 20, -31, 7, 0,
    -- layer=0 filter=15 channel=0
    -5, -33, 22, 30, -6, -10, 40, 25, -4,
    -- layer=0 filter=15 channel=1
    -22, -47, -21, 11, -43, -41, 6, 21, -7,
    -- layer=0 filter=15 channel=2
    9, -48, -8, 36, -33, -21, 47, 19, -23,
    -- layer=0 filter=16 channel=0
    -23, -10, -17, -18, -15, -8, 34, 19, 40,
    -- layer=0 filter=16 channel=1
    -23, -11, -27, 1, -27, 8, 22, 28, 23,
    -- layer=0 filter=16 channel=2
    -2, -13, -12, -26, -1, 6, 2, 31, 10,
    -- layer=0 filter=17 channel=0
    12, 0, 4, 10, 14, 13, 23, 18, 8,
    -- layer=0 filter=17 channel=1
    -7, -26, -35, -11, 0, -3, -24, -25, 3,
    -- layer=0 filter=17 channel=2
    21, 12, -15, 14, 14, 14, 18, 6, 11,
    -- layer=0 filter=18 channel=0
    25, 18, 4, 6, -4, -2, -30, -19, -13,
    -- layer=0 filter=18 channel=1
    -2, 0, 22, -2, 0, -9, -31, -26, -10,
    -- layer=0 filter=18 channel=2
    22, 21, 29, 14, 12, 12, -13, -13, -22,
    -- layer=0 filter=19 channel=0
    28, 0, 6, -16, -37, -34, -8, 19, 32,
    -- layer=0 filter=19 channel=1
    32, 16, 4, -33, -32, -40, -8, 24, 32,
    -- layer=0 filter=19 channel=2
    35, 8, -5, -16, -39, -17, -14, 12, 29,
    -- layer=0 filter=20 channel=0
    10, 14, 16, 30, 20, 35, 36, 40, 26,
    -- layer=0 filter=20 channel=1
    -11, -21, -29, -29, -31, -19, 4, -3, -13,
    -- layer=0 filter=20 channel=2
    15, -11, 0, -18, -14, -7, 6, -10, -7,
    -- layer=0 filter=21 channel=0
    -23, 5, -3, -12, 11, 1, 15, 7, -16,
    -- layer=0 filter=21 channel=1
    -5, 24, 15, 5, 26, 13, 21, 7, 21,
    -- layer=0 filter=21 channel=2
    -21, -25, -8, -16, -16, 0, -15, -17, -12,
    -- layer=0 filter=22 channel=0
    -13, 4, 0, 32, 35, 14, 30, 27, 34,
    -- layer=0 filter=22 channel=1
    -31, -33, -31, -27, -3, -17, -6, -8, -30,
    -- layer=0 filter=22 channel=2
    5, -2, 12, 20, -8, 18, -11, 7, -10,
    -- layer=0 filter=23 channel=0
    15, -43, 20, 22, -47, 22, -2, -16, 20,
    -- layer=0 filter=23 channel=1
    10, -51, 32, 21, -50, 16, 22, -22, 17,
    -- layer=0 filter=23 channel=2
    17, -39, 31, 25, -47, 31, 23, -35, -5,
    -- layer=0 filter=24 channel=0
    13, -19, -28, -1, -8, -24, -17, -5, 12,
    -- layer=0 filter=24 channel=1
    23, 19, -17, 19, 23, 0, 15, 23, 25,
    -- layer=0 filter=24 channel=2
    12, -12, -21, -17, 0, -26, 10, -16, -3,
    -- layer=0 filter=25 channel=0
    1, -30, 10, -31, -14, 36, 7, 5, 32,
    -- layer=0 filter=25 channel=1
    -16, -32, 11, -43, -16, 35, -15, 30, 26,
    -- layer=0 filter=25 channel=2
    -19, -10, -4, -43, -9, 34, -28, 21, 42,
    -- layer=0 filter=26 channel=0
    26, -10, -27, 27, -6, -15, 27, 27, -1,
    -- layer=0 filter=26 channel=1
    17, -19, -34, 18, -19, -37, -4, 4, -12,
    -- layer=0 filter=26 channel=2
    43, 9, -12, 47, -6, -31, 7, 0, -31,
    -- layer=0 filter=27 channel=0
    -43, -36, -45, -46, -32, -41, -30, -16, -36,
    -- layer=0 filter=27 channel=1
    15, 3, 25, 16, 23, -5, 11, 3, 4,
    -- layer=0 filter=27 channel=2
    11, 15, 20, 14, 13, 25, 22, 11, 9,
    -- layer=0 filter=28 channel=0
    -35, 3, 15, -27, 26, -1, 0, 14, 17,
    -- layer=0 filter=28 channel=1
    -33, 25, 27, -29, 15, 23, -28, 7, 12,
    -- layer=0 filter=28 channel=2
    -46, 14, 8, -47, 0, 37, -31, 14, 28,
    -- layer=0 filter=29 channel=0
    -33, -6, -25, -22, -31, -25, -36, -25, -39,
    -- layer=0 filter=29 channel=1
    13, 17, 26, -2, 2, 27, 11, 17, 16,
    -- layer=0 filter=29 channel=2
    7, 0, -8, -2, 9, -1, 15, 20, -5,
    -- layer=0 filter=30 channel=0
    28, 32, 13, -8, -22, -3, -23, -25, -8,
    -- layer=0 filter=30 channel=1
    29, 9, 22, 14, -25, -1, -28, -2, 12,
    -- layer=0 filter=30 channel=2
    29, 33, -3, -13, -15, -14, -26, -1, -9,
    -- layer=0 filter=31 channel=0
    14, 25, 28, 5, 8, 0, 11, -18, -18,
    -- layer=0 filter=31 channel=1
    -4, -23, 11, -39, -18, -16, -39, -32, -23,
    -- layer=0 filter=31 channel=2
    -2, 22, 1, 7, -14, 17, -2, 8, 0,
    -- layer=0 filter=32 channel=0
    26, -5, -4, 31, -28, -14, 26, -13, -18,
    -- layer=0 filter=32 channel=1
    29, -25, -3, 31, -8, -29, 18, -4, -21,
    -- layer=0 filter=32 channel=2
    36, -1, -28, 21, -15, -4, 19, -18, -11,
    -- layer=0 filter=33 channel=0
    -16, -1, -2, 5, 10, 17, -14, 12, 16,
    -- layer=0 filter=33 channel=1
    12, -9, -9, -6, -22, -15, -15, -8, -21,
    -- layer=0 filter=33 channel=2
    -13, 14, 1, 1, -20, -12, 12, -8, -9,
    -- layer=0 filter=34 channel=0
    -6, 26, 20, 24, 2, 1, 28, 20, 17,
    -- layer=0 filter=34 channel=1
    7, -1, -27, -8, -19, -27, -28, -24, -5,
    -- layer=0 filter=34 channel=2
    1, -16, -18, -33, -11, -6, -8, -32, -18,
    -- layer=0 filter=35 channel=0
    -13, -17, 0, 7, -23, -28, -17, 8, -4,
    -- layer=0 filter=35 channel=1
    -5, -21, -4, -5, -24, -15, 9, 1, -7,
    -- layer=0 filter=35 channel=2
    -17, -2, -20, 6, -15, -4, 14, -7, -14,
    -- layer=0 filter=36 channel=0
    0, -18, -14, -11, -7, -16, -20, -26, -5,
    -- layer=0 filter=36 channel=1
    12, 15, -13, -15, -11, -8, 0, 14, -19,
    -- layer=0 filter=36 channel=2
    18, 28, 26, 21, 34, 15, 14, 23, 20,
    -- layer=0 filter=37 channel=0
    13, 2, 0, 2, -20, -15, -5, 7, 8,
    -- layer=0 filter=37 channel=1
    -21, -23, -18, -22, -3, -20, 19, 37, 41,
    -- layer=0 filter=37 channel=2
    -12, -15, -19, -25, -20, 6, 26, 21, 42,
    -- layer=0 filter=38 channel=0
    26, 25, 9, -2, 31, 13, 15, 29, 25,
    -- layer=0 filter=38 channel=1
    -21, 7, 1, -4, 4, -7, -3, -12, -16,
    -- layer=0 filter=38 channel=2
    10, -16, -20, -21, -27, -23, -7, -12, -3,
    -- layer=0 filter=39 channel=0
    -33, -26, -22, 4, -18, -11, 0, 16, 15,
    -- layer=0 filter=39 channel=1
    -8, 5, 0, 7, -16, -18, 11, 5, 3,
    -- layer=0 filter=39 channel=2
    8, 3, -1, 20, 13, 24, 6, 13, 28,
    -- layer=0 filter=40 channel=0
    1, 21, 26, 22, 33, 20, -10, 8, 21,
    -- layer=0 filter=40 channel=1
    0, -1, -10, -22, -22, -22, -26, -28, -32,
    -- layer=0 filter=40 channel=2
    -2, 29, 32, -13, 0, 0, -22, -24, -6,
    -- layer=0 filter=41 channel=0
    46, 9, -28, 20, -47, -38, -11, -49, 30,
    -- layer=0 filter=41 channel=1
    30, 17, -25, 41, -11, -31, 8, -45, 31,
    -- layer=0 filter=41 channel=2
    42, -3, -19, 39, -23, -11, 8, -35, 13,
    -- layer=0 filter=42 channel=0
    -15, 2, 0, -2, -5, -15, -19, 2, 5,
    -- layer=0 filter=42 channel=1
    -7, -21, 8, -29, -39, 2, -21, -15, -9,
    -- layer=0 filter=42 channel=2
    -6, -3, 29, -13, -29, -17, -11, -12, 10,
    -- layer=0 filter=43 channel=0
    -37, -39, -7, -4, -13, 3, 2, 47, 35,
    -- layer=0 filter=43 channel=1
    -36, -47, 1, -8, 7, 14, 26, 29, 28,
    -- layer=0 filter=43 channel=2
    -21, -36, 0, -6, 11, 6, -10, 28, 10,
    -- layer=0 filter=44 channel=0
    13, -10, -18, 23, 0, -11, 28, 10, -27,
    -- layer=0 filter=44 channel=1
    22, -5, -16, 8, 7, -38, 29, 0, -32,
    -- layer=0 filter=44 channel=2
    25, -8, -17, 33, 17, -42, 33, -2, -35,
    -- layer=0 filter=45 channel=0
    10, -8, -5, -7, 2, -8, 25, 9, 1,
    -- layer=0 filter=45 channel=1
    -10, -7, -26, 23, 15, -23, 11, 25, 1,
    -- layer=0 filter=45 channel=2
    -15, -27, -27, 13, -15, -40, -5, 19, -19,
    -- layer=0 filter=46 channel=0
    21, 12, 24, -33, -20, -29, 4, 14, 21,
    -- layer=0 filter=46 channel=1
    12, 12, 18, -33, -40, -49, 7, 19, 15,
    -- layer=0 filter=46 channel=2
    3, 7, 28, -34, -41, -42, 42, 13, 25,
    -- layer=0 filter=47 channel=0
    18, -9, 2, 35, -20, -1, 23, -47, -6,
    -- layer=0 filter=47 channel=1
    4, -19, -3, 17, -53, 12, 32, -31, 19,
    -- layer=0 filter=47 channel=2
    6, -28, 11, 6, -51, 39, 1, -49, 46,
    -- layer=0 filter=48 channel=0
    3, -16, 7, 0, -1, 13, 4, -11, 11,
    -- layer=0 filter=48 channel=1
    25, 25, 18, 19, 17, 25, -13, 3, 14,
    -- layer=0 filter=48 channel=2
    -29, -22, -19, -7, -9, -32, -30, -30, 6,
    -- layer=0 filter=49 channel=0
    1, 16, 21, 18, 8, -5, 8, -14, 6,
    -- layer=0 filter=49 channel=1
    20, -4, -18, 20, -6, 12, 5, -16, -6,
    -- layer=0 filter=49 channel=2
    -2, -15, -33, -25, -22, -29, -10, -40, 6,
    -- layer=0 filter=50 channel=0
    3, -16, -21, 1, -9, 10, 7, 6, 1,
    -- layer=0 filter=50 channel=1
    6, -3, -8, -20, -24, -9, -34, -18, -25,
    -- layer=0 filter=50 channel=2
    13, 13, -10, 0, 2, -10, -23, -18, -4,
    -- layer=0 filter=51 channel=0
    2, -1, 26, -10, 14, 29, -18, -1, 14,
    -- layer=0 filter=51 channel=1
    0, -12, 29, -12, -2, 31, -22, 18, 15,
    -- layer=0 filter=51 channel=2
    -32, -4, -11, -42, 5, -16, -35, 0, -14,
    -- layer=0 filter=52 channel=0
    -18, -19, -11, 12, -5, 6, 0, -13, -13,
    -- layer=0 filter=52 channel=1
    12, -4, -7, 6, 20, 18, -17, -4, -10,
    -- layer=0 filter=52 channel=2
    -22, -15, -23, 8, 15, 11, -3, -17, 4,
    -- layer=0 filter=53 channel=0
    -12, -9, 15, -9, -7, 12, 10, 3, -12,
    -- layer=0 filter=53 channel=1
    -2, 0, -8, -8, -21, -18, -25, -4, -4,
    -- layer=0 filter=53 channel=2
    -12, -27, -6, -5, 2, -13, -19, -6, 3,
    -- layer=0 filter=54 channel=0
    24, -17, -5, -29, -29, 6, -27, 25, 38,
    -- layer=0 filter=54 channel=1
    -14, -26, 6, -51, -30, 32, -6, 40, 48,
    -- layer=0 filter=54 channel=2
    5, -16, -20, -41, -34, 29, -29, 39, 47,
    -- layer=0 filter=55 channel=0
    -22, -22, -15, 0, -29, -24, -3, -26, -23,
    -- layer=0 filter=55 channel=1
    -11, 14, -16, 5, -9, 6, 0, 1, 1,
    -- layer=0 filter=55 channel=2
    18, 7, -5, 21, 30, 22, 15, 9, 24,
    -- layer=0 filter=56 channel=0
    -19, -4, -1, -2, 12, -6, -11, 1, -3,
    -- layer=0 filter=56 channel=1
    -3, 3, 12, -5, -14, 13, -7, -12, -8,
    -- layer=0 filter=56 channel=2
    -17, -1, -7, 0, 9, -11, -19, 5, 9,
    -- layer=0 filter=57 channel=0
    3, 15, 21, -19, 5, 28, -20, 1, 36,
    -- layer=0 filter=57 channel=1
    -25, -17, -1, -31, -9, 17, -42, -20, 20,
    -- layer=0 filter=57 channel=2
    -26, 19, 11, -21, 5, 14, -26, 15, 25,
    -- layer=0 filter=58 channel=0
    21, -25, 4, 8, -25, 26, -13, -22, 32,
    -- layer=0 filter=58 channel=1
    11, -38, 23, 13, -46, 36, 4, -44, 37,
    -- layer=0 filter=58 channel=2
    7, -3, -1, 3, -35, 7, 19, -40, 34,
    -- layer=0 filter=59 channel=0
    -23, -28, 0, -13, 2, 8, -1, 7, -12,
    -- layer=0 filter=59 channel=1
    -9, -15, -7, 0, -17, 5, 8, 6, -20,
    -- layer=0 filter=59 channel=2
    -14, -3, 5, -15, -11, 11, 0, 2, -6,
    -- layer=0 filter=60 channel=0
    -16, 3, -25, -25, 0, -20, 3, -19, -12,
    -- layer=0 filter=60 channel=1
    -9, 13, -5, -18, 2, -17, -8, -10, -25,
    -- layer=0 filter=60 channel=2
    -5, 9, -14, -15, -7, -2, -27, 9, -5,
    -- layer=0 filter=61 channel=0
    9, -23, -8, 3, -22, -3, 12, 2, -9,
    -- layer=0 filter=61 channel=1
    -17, -22, -18, 10, -15, -8, -17, 2, 0,
    -- layer=0 filter=61 channel=2
    -25, -18, -13, 5, -3, 8, -19, -5, -8,
    -- layer=0 filter=62 channel=0
    -1, -32, -29, -17, -14, 10, 4, 42, 38,
    -- layer=0 filter=62 channel=1
    -18, -19, -16, 0, -12, 4, -1, 31, 30,
    -- layer=0 filter=62 channel=2
    -1, -35, -25, -7, -4, -7, 24, 27, 26,
    -- layer=0 filter=63 channel=0
    8, -5, -21, -19, -25, -29, -5, -14, -29,
    -- layer=0 filter=63 channel=1
    -4, 25, 23, 19, 18, 4, -2, -12, -18,
    -- layer=0 filter=63 channel=2
    13, 20, 24, 25, 5, 20, 4, 5, 9,
    -- layer=0 filter=64 channel=0
    3, -8, 8, 14, 16, 14, 15, 6, 4,
    -- layer=0 filter=64 channel=1
    -32, -4, 1, -10, 9, 7, 4, -22, -4,
    -- layer=0 filter=64 channel=2
    -29, -24, -4, -25, -1, 0, 12, 14, -22,
    -- layer=0 filter=65 channel=0
    -13, 4, -9, -9, -1, 3, 7, 17, 9,
    -- layer=0 filter=65 channel=1
    9, 21, 8, -7, 18, 25, 16, 19, 17,
    -- layer=0 filter=65 channel=2
    -22, -8, 3, -7, -25, -26, -24, -25, -35,
    -- layer=0 filter=66 channel=0
    -12, -7, 9, -20, -20, -2, -15, -19, -24,
    -- layer=0 filter=66 channel=1
    10, 21, -1, 20, 0, -2, 9, 23, 0,
    -- layer=0 filter=66 channel=2
    -7, -10, 17, -3, 21, 24, 16, 6, 21,
    -- layer=0 filter=67 channel=0
    19, 25, 19, -11, 18, -8, 4, -6, -12,
    -- layer=0 filter=67 channel=1
    37, 16, 26, 5, 15, 33, 7, 6, 0,
    -- layer=0 filter=67 channel=2
    -41, -31, -40, -33, -50, -32, 1, -15, -13,
    -- layer=0 filter=68 channel=0
    14, -4, -12, 20, 15, -35, 10, 18, -23,
    -- layer=0 filter=68 channel=1
    5, 21, -33, 25, 16, -34, 18, 13, -36,
    -- layer=0 filter=68 channel=2
    13, 23, -28, 29, 21, -46, 9, 1, -24,
    -- layer=0 filter=69 channel=0
    0, -25, -29, 18, -21, -38, 26, 41, 24,
    -- layer=0 filter=69 channel=1
    -20, -40, -23, 8, -13, -11, 37, 33, 8,
    -- layer=0 filter=69 channel=2
    15, -31, -4, 15, -10, -36, 33, 22, 6,
    -- layer=0 filter=70 channel=0
    33, 32, 33, -1, 20, 25, -24, -15, -11,
    -- layer=0 filter=70 channel=1
    -6, -17, -14, 1, -16, 3, 6, -22, -9,
    -- layer=0 filter=70 channel=2
    -26, -5, -2, -16, -40, -20, 10, -2, -13,
    -- layer=0 filter=71 channel=0
    -25, -24, 4, -30, -9, -22, -6, 7, -5,
    -- layer=0 filter=71 channel=1
    23, 20, 28, -4, 13, 18, 2, 30, 29,
    -- layer=0 filter=71 channel=2
    -12, -23, -5, -5, -12, -20, 7, -11, -11,
    -- layer=0 filter=72 channel=0
    1, 28, -3, 5, -38, -13, -13, 13, 12,
    -- layer=0 filter=72 channel=1
    31, 6, 16, -14, -30, -21, -20, 14, 12,
    -- layer=0 filter=72 channel=2
    30, 11, 16, 8, -27, -40, -15, -15, 12,
    -- layer=0 filter=73 channel=0
    -14, -11, -16, -23, -5, 7, 11, 5, -20,
    -- layer=0 filter=73 channel=1
    -4, 12, 15, -17, 4, 8, -16, 11, -17,
    -- layer=0 filter=73 channel=2
    10, -20, 2, 3, -3, -19, 10, 9, -19,
    -- layer=0 filter=74 channel=0
    14, 32, -7, 11, 17, -2, -10, 1, -27,
    -- layer=0 filter=74 channel=1
    10, 35, -11, -10, 25, -39, -3, 3, -41,
    -- layer=0 filter=74 channel=2
    -12, 24, 10, 6, 14, -40, -3, 7, -35,
    -- layer=0 filter=75 channel=0
    -7, 14, 45, -28, -38, -16, -4, -9, -40,
    -- layer=0 filter=75 channel=1
    24, 12, 53, -6, -3, 14, -2, -20, -23,
    -- layer=0 filter=75 channel=2
    8, 14, 60, -15, -27, 2, -3, -38, -29,
    -- layer=0 filter=76 channel=0
    22, 0, -23, 8, 1, -11, 9, -14, -21,
    -- layer=0 filter=76 channel=1
    33, 22, 5, 25, 14, -24, 14, -27, -8,
    -- layer=0 filter=76 channel=2
    34, 30, -5, 35, -2, -20, -6, -3, -31,
    -- layer=0 filter=77 channel=0
    -7, 4, -16, -19, 8, -14, 10, 6, -18,
    -- layer=0 filter=77 channel=1
    28, 24, -4, 25, 25, 22, -6, 28, 21,
    -- layer=0 filter=77 channel=2
    -30, -26, -8, -21, -4, -5, -13, -26, 3,
    -- layer=0 filter=78 channel=0
    7, -1, 5, -20, 6, 0, 2, -7, -18,
    -- layer=0 filter=78 channel=1
    -15, -7, -17, -37, 0, 18, -36, 1, 17,
    -- layer=0 filter=78 channel=2
    -15, 16, 5, -10, 7, 8, -21, 18, 19,
    -- layer=0 filter=79 channel=0
    -8, -38, -26, -5, -15, 6, 18, 39, 42,
    -- layer=0 filter=79 channel=1
    -13, -28, -31, -17, -24, 12, 25, 19, 36,
    -- layer=0 filter=79 channel=2
    -18, 6, -20, 10, -18, -12, 16, 5, 32,
    -- layer=0 filter=80 channel=0
    -20, -12, -6, -12, 1, 10, -1, -11, -16,
    -- layer=0 filter=80 channel=1
    0, 0, -17, -11, -14, 10, 8, -8, 0,
    -- layer=0 filter=80 channel=2
    -4, -11, 2, -3, -11, 7, 2, 9, -18,
    -- layer=0 filter=81 channel=0
    -33, -30, -34, 0, 10, -22, -4, -6, 12,
    -- layer=0 filter=81 channel=1
    29, 20, 14, 23, 23, 23, 27, 13, 35,
    -- layer=0 filter=81 channel=2
    -32, 0, -6, 3, -23, -8, -27, -7, 9,
    -- layer=0 filter=82 channel=0
    11, -19, 3, 19, -2, -2, 1, -1, 8,
    -- layer=0 filter=82 channel=1
    4, 28, 27, 11, 20, 25, 7, 22, 7,
    -- layer=0 filter=82 channel=2
    -28, -33, -23, -14, -4, -24, -8, -25, -14,
    -- layer=0 filter=83 channel=0
    11, -15, -27, 30, 21, -27, 31, 11, 6,
    -- layer=0 filter=83 channel=1
    -7, -44, -27, 35, 19, -25, 23, 6, 14,
    -- layer=0 filter=83 channel=2
    -20, -49, -30, 32, 6, -26, 29, 25, -4,
    -- layer=0 filter=84 channel=0
    -1, 1, 0, 30, 4, 4, -13, -12, -10,
    -- layer=0 filter=84 channel=1
    25, 15, 0, 34, 25, -19, -17, -43, -27,
    -- layer=0 filter=84 channel=2
    25, 31, 21, 24, 7, -15, -17, -45, -40,
    -- layer=0 filter=85 channel=0
    31, -36, 20, 5, -18, 2, -7, -13, 24,
    -- layer=0 filter=85 channel=1
    17, -37, 18, 23, -33, 4, 3, -35, 33,
    -- layer=0 filter=85 channel=2
    26, -39, 0, 8, -31, 21, -2, -29, 42,
    -- layer=0 filter=86 channel=0
    0, 14, 13, -18, -5, -11, 1, 3, 12,
    -- layer=0 filter=86 channel=1
    -16, -10, -14, -16, -21, -20, 0, -19, -19,
    -- layer=0 filter=86 channel=2
    -4, 14, 12, 21, 19, 29, 29, 23, 21,
    -- layer=0 filter=87 channel=0
    34, 34, 6, -12, -21, -28, -25, -14, 28,
    -- layer=0 filter=87 channel=1
    27, 14, -19, -15, -40, -45, 4, 13, 15,
    -- layer=0 filter=87 channel=2
    30, 7, -12, -26, -54, -9, 0, 10, 44,
    -- layer=0 filter=88 channel=0
    13, -13, 5, -15, -5, 2, -4, -15, 15,
    -- layer=0 filter=88 channel=1
    4, 18, -2, 23, 0, 0, 11, 19, -8,
    -- layer=0 filter=88 channel=2
    -26, -14, -31, 0, -11, -32, -30, -36, -12,
    -- layer=0 filter=89 channel=0
    -10, -8, 13, 21, 11, -15, 7, -11, 3,
    -- layer=0 filter=89 channel=1
    12, 24, 26, 33, 31, 12, 29, 21, -10,
    -- layer=0 filter=89 channel=2
    -11, -9, -11, -14, -28, -18, -12, -23, -33,
    -- layer=0 filter=90 channel=0
    21, -5, -37, 26, 13, -30, 27, 22, -26,
    -- layer=0 filter=90 channel=1
    17, -7, -28, 9, 20, -25, 8, 2, -11,
    -- layer=0 filter=90 channel=2
    32, -1, -37, 16, -8, -28, 24, 29, -26,
    -- layer=0 filter=91 channel=0
    32, 36, 34, 33, 11, 12, 16, 17, 18,
    -- layer=0 filter=91 channel=1
    -17, -20, -2, 1, -20, 3, -22, -18, -5,
    -- layer=0 filter=91 channel=2
    -20, -1, -4, -30, -6, 4, -21, -15, 0,
    -- layer=0 filter=92 channel=0
    30, -17, -64, 40, -16, -52, 40, 13, -53,
    -- layer=0 filter=92 channel=1
    27, -11, -44, 28, -11, -54, 47, 10, -40,
    -- layer=0 filter=92 channel=2
    1, 8, -32, 36, 14, -38, 31, 0, -47,
    -- layer=0 filter=93 channel=0
    2, -19, -4, -7, -2, -5, 2, -14, 17,
    -- layer=0 filter=93 channel=1
    0, 17, 21, 21, 21, 25, 25, 30, 17,
    -- layer=0 filter=93 channel=2
    -17, -10, -20, -10, -1, -11, -4, -7, -20,
    -- layer=0 filter=94 channel=0
    -12, 19, 19, -15, -4, 13, 7, 6, -14,
    -- layer=0 filter=94 channel=1
    -9, 2, 14, -1, -18, -2, -20, -4, -7,
    -- layer=0 filter=94 channel=2
    12, 27, 16, 10, 26, 21, -12, 15, 17,
    -- layer=0 filter=95 channel=0
    -4, 19, 31, -11, 1, -14, 10, -26, -32,
    -- layer=0 filter=95 channel=1
    27, 33, 10, 18, 20, -3, -4, -26, -39,
    -- layer=0 filter=95 channel=2
    24, 31, 9, 5, -11, 11, -13, -38, -30,
    -- layer=0 filter=96 channel=0
    -15, -16, -2, 7, 5, -30, -25, -17, -34,
    -- layer=0 filter=96 channel=1
    -3, 5, 6, 4, 10, -13, 10, 0, -20,
    -- layer=0 filter=96 channel=2
    -10, -16, -14, -4, 2, 6, -7, -22, 2,
    -- layer=0 filter=97 channel=0
    -8, -25, -27, 0, 8, -3, -1, 15, 2,
    -- layer=0 filter=97 channel=1
    13, 12, 19, 2, 4, 23, 17, 11, 14,
    -- layer=0 filter=97 channel=2
    -11, -5, 13, 7, 9, 14, -2, 19, -18,
    -- layer=0 filter=98 channel=0
    -31, -47, -22, 19, 28, 19, 1, 32, 32,
    -- layer=0 filter=98 channel=1
    -38, -22, -36, -4, 3, 18, 0, 24, 27,
    -- layer=0 filter=98 channel=2
    -17, -27, -21, 15, 13, 13, -3, 2, 16,
    -- layer=0 filter=99 channel=0
    -21, 27, -3, -32, 37, 2, -37, 32, -17,
    -- layer=0 filter=99 channel=1
    -16, 42, -22, -13, 40, -5, -39, 33, 2,
    -- layer=0 filter=99 channel=2
    -18, 45, -29, -37, 44, -12, -35, 16, 12,
    -- layer=0 filter=100 channel=0
    -1, 10, 4, -2, -17, -33, -10, -33, -37,
    -- layer=0 filter=100 channel=1
    -12, 6, 14, -1, -15, -1, 4, -9, 6,
    -- layer=0 filter=100 channel=2
    20, 19, 1, 25, 22, -4, 23, 19, -5,
    -- layer=0 filter=101 channel=0
    14, 19, 30, 27, 31, 25, 15, 4, 7,
    -- layer=0 filter=101 channel=1
    2, 0, 11, -21, 0, -5, 12, -19, -4,
    -- layer=0 filter=101 channel=2
    -24, -12, -21, -3, -4, -27, -7, -18, -23,
    -- layer=0 filter=102 channel=0
    26, 28, 24, 13, 13, 2, -12, 17, 12,
    -- layer=0 filter=102 channel=1
    11, 2, 14, -21, 7, 3, 3, -28, -4,
    -- layer=0 filter=102 channel=2
    -7, 8, 12, 4, -5, 12, 0, 10, -12,
    -- layer=0 filter=103 channel=0
    2, -14, -10, -18, 0, 6, -23, -36, -26,
    -- layer=0 filter=103 channel=1
    8, -13, 8, 5, 9, -20, -13, -9, -23,
    -- layer=0 filter=103 channel=2
    27, 7, 5, 19, 16, 3, 2, 15, 17,
    -- layer=0 filter=104 channel=0
    20, -18, 8, -1, -27, 20, 10, -23, 3,
    -- layer=0 filter=104 channel=1
    24, -31, 2, 8, -44, 9, 1, -25, 17,
    -- layer=0 filter=104 channel=2
    24, -36, 13, 15, -29, 21, 19, -20, 7,
    -- layer=0 filter=105 channel=0
    -21, 0, -13, -27, 6, 14, -30, 6, -6,
    -- layer=0 filter=105 channel=1
    8, 24, 15, 16, 15, 17, -6, -1, 21,
    -- layer=0 filter=105 channel=2
    -6, 7, 10, 0, 26, 18, -1, 1, 13,
    -- layer=0 filter=106 channel=0
    22, 25, 6, 33, 27, 20, 23, 12, -14,
    -- layer=0 filter=106 channel=1
    14, -10, -12, 23, -10, -28, 11, -14, -35,
    -- layer=0 filter=106 channel=2
    10, -5, -29, 1, -24, -11, 14, -20, -31,
    -- layer=0 filter=107 channel=0
    -24, -11, 9, 8, -3, -7, -2, -11, 1,
    -- layer=0 filter=107 channel=1
    -10, -24, -26, 5, 11, -1, 11, 2, -15,
    -- layer=0 filter=107 channel=2
    -23, -23, -7, -21, 4, -14, -21, -16, 1,
    -- layer=0 filter=108 channel=0
    12, -10, -22, 14, -8, -8, 20, -6, 4,
    -- layer=0 filter=108 channel=1
    32, -15, -24, 42, -6, -15, 41, -18, -25,
    -- layer=0 filter=108 channel=2
    35, -4, -33, 28, -22, -33, 39, -6, -12,
    -- layer=0 filter=109 channel=0
    8, -10, -3, -5, 8, -11, -17, 4, 1,
    -- layer=0 filter=109 channel=1
    -2, 8, 8, 0, -18, 9, -19, -4, 0,
    -- layer=0 filter=109 channel=2
    2, -19, -15, -10, -13, -3, 10, -5, -9,
    -- layer=0 filter=110 channel=0
    -25, -3, 10, 6, 5, 6, -12, -5, -14,
    -- layer=0 filter=110 channel=1
    -2, 4, 20, -1, -5, -5, -28, 8, 8,
    -- layer=0 filter=110 channel=2
    -4, 0, 0, -3, 6, 2, -17, -23, 8,
    -- layer=0 filter=111 channel=0
    5, 26, 4, -2, 7, 9, -19, -40, -4,
    -- layer=0 filter=111 channel=1
    18, 31, 17, 14, 25, 0, -34, -31, -12,
    -- layer=0 filter=111 channel=2
    28, 9, 8, 14, 10, -9, -30, -37, -10,
    -- layer=0 filter=112 channel=0
    -22, 8, 0, 12, 32, 22, -14, -24, -39,
    -- layer=0 filter=112 channel=1
    8, 13, 3, 35, 3, 16, -5, -36, -21,
    -- layer=0 filter=112 channel=2
    3, -16, 0, 14, 32, 30, -7, -25, -34,
    -- layer=0 filter=113 channel=0
    3, 15, 29, 5, 26, 2, 8, 24, 24,
    -- layer=0 filter=113 channel=1
    -33, -37, 5, -48, -38, -11, -20, -28, 14,
    -- layer=0 filter=113 channel=2
    -10, -11, -5, -7, -31, -8, -16, -6, 5,
    -- layer=0 filter=114 channel=0
    -33, -38, -14, -18, -32, -28, 33, 16, 13,
    -- layer=0 filter=114 channel=1
    -29, -2, -24, 8, -9, -23, 33, 19, 3,
    -- layer=0 filter=114 channel=2
    -10, -4, 12, 8, 9, -19, 20, 38, 31,
    -- layer=0 filter=115 channel=0
    -17, 0, 26, -14, 15, 31, -24, 5, 28,
    -- layer=0 filter=115 channel=1
    -30, -25, 11, -32, -26, -4, -17, -15, 12,
    -- layer=0 filter=115 channel=2
    12, 25, 19, 10, 25, 1, 5, 9, 30,
    -- layer=0 filter=116 channel=0
    0, -6, 4, -3, 10, -16, -14, -9, -4,
    -- layer=0 filter=116 channel=1
    2, -8, -7, -13, -10, -9, -14, 2, -11,
    -- layer=0 filter=116 channel=2
    -21, 10, 9, 13, -5, -10, 4, -15, 0,
    -- layer=0 filter=117 channel=0
    3, -1, -3, -4, 27, 29, -27, -23, -7,
    -- layer=0 filter=117 channel=1
    -3, -6, -3, 11, 30, 44, -25, -32, -20,
    -- layer=0 filter=117 channel=2
    0, 5, -20, 27, 22, 36, -11, -31, -29,
    -- layer=0 filter=118 channel=0
    35, 19, 15, 2, 15, -22, -26, -18, -9,
    -- layer=0 filter=118 channel=1
    33, 17, 4, 20, 15, -14, -23, -13, -29,
    -- layer=0 filter=118 channel=2
    34, 14, 12, -9, 0, -14, -12, -22, -25,
    -- layer=0 filter=119 channel=0
    34, -15, -16, 38, -21, -17, 2, 1, -14,
    -- layer=0 filter=119 channel=1
    35, -1, -39, 35, 2, -36, 27, -19, 0,
    -- layer=0 filter=119 channel=2
    40, -6, -35, 13, -5, -15, 17, -9, -8,
    -- layer=0 filter=120 channel=0
    7, -13, -7, -5, 1, 18, -6, 12, 12,
    -- layer=0 filter=120 channel=1
    -6, 2, 0, 1, 9, 31, 11, 5, 16,
    -- layer=0 filter=120 channel=2
    -33, -27, -6, -35, -26, 14, -22, -19, 25,
    -- layer=0 filter=121 channel=0
    15, 11, 9, -42, -35, -22, 7, -21, -8,
    -- layer=0 filter=121 channel=1
    10, 31, 30, -33, -13, 7, -4, 2, -14,
    -- layer=0 filter=121 channel=2
    11, 2, -10, -29, 2, -12, 25, 5, 14,
    -- layer=0 filter=122 channel=0
    -8, -4, -11, -16, -9, -5, -18, -1, -3,
    -- layer=0 filter=122 channel=1
    -3, 3, -9, 0, 10, 13, 11, -15, -1,
    -- layer=0 filter=122 channel=2
    -8, -6, -5, 15, -6, 0, -1, -10, -9,
    -- layer=0 filter=123 channel=0
    -14, -7, 10, -33, -36, 0, -17, -33, -18,
    -- layer=0 filter=123 channel=1
    18, 16, 9, -14, -18, 5, 18, 0, 16,
    -- layer=0 filter=123 channel=2
    15, 14, 19, -5, 14, -11, 9, 9, 5,
    -- layer=0 filter=124 channel=0
    -8, -23, -9, 10, 11, -18, 0, -18, -6,
    -- layer=0 filter=124 channel=1
    -20, 6, 9, 3, 10, -13, -19, 15, 13,
    -- layer=0 filter=124 channel=2
    -16, -26, 3, 1, -14, -24, -16, 6, -11,
    -- layer=0 filter=125 channel=0
    42, 23, 32, 18, 23, 28, -17, -16, -8,
    -- layer=0 filter=125 channel=1
    -15, 0, -13, -25, 10, 17, -20, -14, 1,
    -- layer=0 filter=125 channel=2
    -31, -14, -27, -34, -28, -23, 1, 4, 14,
    -- layer=0 filter=126 channel=0
    -1, -23, -32, 31, 19, 18, -9, 8, -15,
    -- layer=0 filter=126 channel=1
    -24, -27, -2, 27, 26, 27, -12, 13, 6,
    -- layer=0 filter=126 channel=2
    -30, -34, -37, 30, 9, 19, -10, 17, 15,
    -- layer=0 filter=127 channel=0
    35, 21, 19, 8, -4, -18, -28, -16, -19,
    -- layer=0 filter=127 channel=1
    -1, 31, 32, -3, 0, -18, -9, -1, -27,
    -- layer=0 filter=127 channel=2
    22, 2, 12, 21, 0, 2, -25, -21, -24,

    others => 0);
end iwght_package;

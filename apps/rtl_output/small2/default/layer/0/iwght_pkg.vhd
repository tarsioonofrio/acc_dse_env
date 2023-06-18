library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -972, -10104, -709, 2224, 969, -719, 1075, 2249, -828, 1079, -9033, 15652, 1154, 4218, -258, 463, 3210, -6211, -9803, -14941, -33, 3569, 2923, 7462, -13997, 1412, -9574, -847, 7755, -2179, 1951, -1326, 365, -13983, 604, -62, 3349, 85, 2044, 2136, -1478, -2896, 1844, 1388, 285, 561, -5081, -361, 4355, 319, 3710, -3943, 615, -21, 1458, 3205, -332, -7250, -8977, 86, -342, -232, 1006, 1351,

    -- weights
    -- layer=0 filter=0 channel=0
    -12, 23, 25, -26, -33, -32, -21, -46, 6,
    -- layer=0 filter=0 channel=1
    15, 41, 32, -3, 2, -26, -35, -27, -4,
    -- layer=0 filter=0 channel=2
    43, 14, 26, 6, 13, 13, 7, 6, -13,
    -- layer=0 filter=1 channel=0
    0, -8, -1, 16, 20, -38, -30, -8, 8,
    -- layer=0 filter=1 channel=1
    24, 8, -25, 20, 25, -2, -29, 25, -39,
    -- layer=0 filter=1 channel=2
    -4, 46, -1, 5, 52, -5, 5, 22, -4,
    -- layer=0 filter=2 channel=0
    -9, 37, 30, -10, 12, -11, -19, -37, -34,
    -- layer=0 filter=2 channel=1
    31, 47, 6, 18, -2, 19, -19, -40, -31,
    -- layer=0 filter=2 channel=2
    26, 32, 25, 4, -11, 8, -21, -34, -46,
    -- layer=0 filter=3 channel=0
    15, -12, -17, -15, -30, 2, -31, 5, -17,
    -- layer=0 filter=3 channel=1
    42, 10, 13, 49, 14, 42, 48, -5, -6,
    -- layer=0 filter=3 channel=2
    -26, -50, 4, 10, -2, -36, 4, -43, -44,
    -- layer=0 filter=4 channel=0
    14, 18, 0, -14, -9, 23, -24, 1, -1,
    -- layer=0 filter=4 channel=1
    -41, -20, -28, -22, 3, -11, -9, -16, -27,
    -- layer=0 filter=4 channel=2
    -8, 15, 39, -4, 36, 38, 31, 38, 40,
    -- layer=0 filter=5 channel=0
    3, -5, -14, 33, 15, 35, 3, 31, 29,
    -- layer=0 filter=5 channel=1
    -24, -26, -36, 26, -8, 8, 15, -8, 26,
    -- layer=0 filter=5 channel=2
    12, -46, -30, 2, -29, -13, -24, -19, -4,
    -- layer=0 filter=6 channel=0
    2, -15, -28, 27, 25, -17, -4, 24, 27,
    -- layer=0 filter=6 channel=1
    -30, -31, -50, 22, -21, -35, -7, 20, -16,
    -- layer=0 filter=6 channel=2
    25, -4, -36, 24, 39, -8, 33, 40, 0,
    -- layer=0 filter=7 channel=0
    -28, -14, -29, -20, -46, -27, 6, -17, -26,
    -- layer=0 filter=7 channel=1
    5, 9, -9, 10, 0, 29, 18, 29, -21,
    -- layer=0 filter=7 channel=2
    13, 31, 17, 24, 4, 29, 14, -5, 5,
    -- layer=0 filter=8 channel=0
    -14, -20, -17, 4, -32, -49, -13, 9, -33,
    -- layer=0 filter=8 channel=1
    2, -13, 6, -6, 9, -1, 0, 6, -19,
    -- layer=0 filter=8 channel=2
    37, 13, -12, 26, 46, -17, 26, 45, 22,
    -- layer=0 filter=9 channel=0
    37, 33, -7, 27, 24, -9, 41, 24, -8,
    -- layer=0 filter=9 channel=1
    -23, 0, -26, 7, -34, -39, -3, 10, -49,
    -- layer=0 filter=9 channel=2
    16, 26, -25, 28, -20, 1, -2, 7, -26,
    -- layer=0 filter=10 channel=0
    -25, 14, 30, -28, 11, 40, -31, -40, 0,
    -- layer=0 filter=10 channel=1
    -27, 25, 36, 3, 7, 44, -52, -24, 25,
    -- layer=0 filter=10 channel=2
    -3, 42, 18, 6, 18, -1, -26, -28, 11,
    -- layer=0 filter=11 channel=0
    -46, -56, -2, -15, -36, 21, -33, -21, 39,
    -- layer=0 filter=11 channel=1
    -25, -34, -13, -11, -37, 0, -8, 13, 42,
    -- layer=0 filter=11 channel=2
    23, 8, -14, 0, -5, 6, 4, 35, 7,
    -- layer=0 filter=12 channel=0
    14, -40, -3, 0, -16, 9, -19, 20, -16,
    -- layer=0 filter=12 channel=1
    20, -6, 33, -15, 15, 29, 26, 14, 34,
    -- layer=0 filter=12 channel=2
    -27, -42, -3, 6, -41, 0, -14, 17, -8,
    -- layer=0 filter=13 channel=0
    -10, 12, 0, -22, -8, -21, 21, 26, 14,
    -- layer=0 filter=13 channel=1
    11, 22, 17, 4, 14, 12, 22, -10, 10,
    -- layer=0 filter=13 channel=2
    7, -30, -24, -27, -7, -27, 13, -33, -38,
    -- layer=0 filter=14 channel=0
    9, 37, 39, -7, -2, 34, -44, -43, -32,
    -- layer=0 filter=14 channel=1
    33, 44, 0, 9, -5, 8, -32, -10, -43,
    -- layer=0 filter=14 channel=2
    26, -7, -2, 6, 16, 0, -13, 1, -39,
    -- layer=0 filter=15 channel=0
    -11, -5, 19, -29, -12, 7, -18, 6, 44,
    -- layer=0 filter=15 channel=1
    -40, 12, 15, -51, -5, 48, -46, 15, 44,
    -- layer=0 filter=15 channel=2
    -10, 11, 36, -30, -16, 35, -50, 11, 10,
    -- layer=0 filter=16 channel=0
    -27, -49, -25, -8, -1, -26, -10, -21, 23,
    -- layer=0 filter=16 channel=1
    -40, -32, -11, -10, 24, 32, 24, 0, -15,
    -- layer=0 filter=16 channel=2
    -23, -1, 16, 32, 19, 46, 2, 41, 16,
    -- layer=0 filter=17 channel=0
    6, 22, -16, 0, 37, -36, 29, 32, -39,
    -- layer=0 filter=17 channel=1
    20, 37, -11, 44, 0, 8, 37, 11, -34,
    -- layer=0 filter=17 channel=2
    1, -16, -9, -6, 17, -27, -21, 19, -50,
    -- layer=0 filter=18 channel=0
    19, -13, 18, -5, 8, 13, 30, 27, 25,
    -- layer=0 filter=18 channel=1
    8, -57, -52, 14, -19, -42, 12, 17, -7,
    -- layer=0 filter=18 channel=2
    -18, -17, -48, 40, 22, -16, 15, 41, 31,
    -- layer=0 filter=19 channel=0
    3, -5, 22, 23, 16, 0, 38, 23, -6,
    -- layer=0 filter=19 channel=1
    7, -24, -7, -27, -17, -35, -9, -6, 0,
    -- layer=0 filter=19 channel=2
    -2, 6, 6, 30, 37, 32, 13, 31, -7,
    -- layer=0 filter=20 channel=0
    -44, 12, 33, -35, -14, 32, -33, 4, 18,
    -- layer=0 filter=20 channel=1
    -36, 36, -4, -8, 13, 15, 9, 27, -3,
    -- layer=0 filter=20 channel=2
    -47, 24, 5, -56, -4, 39, -34, 18, 20,
    -- layer=0 filter=21 channel=0
    20, -11, -19, -5, -8, -29, 17, 7, -4,
    -- layer=0 filter=21 channel=1
    14, -15, -29, 39, -2, -58, 34, 33, -2,
    -- layer=0 filter=21 channel=2
    -12, -14, -25, 24, -14, -47, 62, 11, -12,
    -- layer=0 filter=22 channel=0
    22, 19, 31, 12, 29, -16, 18, -11, -35,
    -- layer=0 filter=22 channel=1
    1, -9, -9, 33, -43, -40, -18, -60, -32,
    -- layer=0 filter=22 channel=2
    51, 21, -12, 55, 12, -32, 7, -38, -14,
    -- layer=0 filter=23 channel=0
    32, 2, 44, 22, -2, 24, -21, -23, 33,
    -- layer=0 filter=23 channel=1
    -43, 0, 31, -36, -49, -11, -23, -35, 9,
    -- layer=0 filter=23 channel=2
    -29, 14, 8, -4, -23, 27, -27, -40, 15,
    -- layer=0 filter=24 channel=0
    -20, -17, 15, 30, 34, 19, 35, 17, -1,
    -- layer=0 filter=24 channel=1
    1, 16, 10, -28, -11, 5, -40, -4, -28,
    -- layer=0 filter=24 channel=2
    17, 28, 21, 2, 14, 5, 11, 11, 9,
    -- layer=0 filter=25 channel=0
    -12, -7, -44, 10, 4, -8, -11, 20, 13,
    -- layer=0 filter=25 channel=1
    -34, -26, -9, 29, 18, 10, 15, 37, 25,
    -- layer=0 filter=25 channel=2
    -50, -24, -46, 4, 22, 5, -9, 25, 35,
    -- layer=0 filter=26 channel=0
    -39, -1, -24, -36, -17, -4, -3, 26, 12,
    -- layer=0 filter=26 channel=1
    -30, -10, -29, -11, -18, 7, 24, -5, 26,
    -- layer=0 filter=26 channel=2
    -8, 27, -4, 34, 38, 17, 38, 42, 21,
    -- layer=0 filter=27 channel=0
    -34, -17, -10, 6, -32, -27, -30, 3, -18,
    -- layer=0 filter=27 channel=1
    16, 20, -8, 24, 7, -4, 23, -21, 28,
    -- layer=0 filter=27 channel=2
    28, 26, 1, 8, -5, 18, 28, 8, 4,
    -- layer=0 filter=28 channel=0
    -23, -36, -24, 0, -13, -19, 9, -9, -33,
    -- layer=0 filter=28 channel=1
    17, 7, 28, 32, -11, 18, 40, 35, 33,
    -- layer=0 filter=28 channel=2
    15, -14, -18, 20, -25, -37, -14, -12, -6,
    -- layer=0 filter=29 channel=0
    -43, 0, -29, -28, -3, -30, -16, 8, 10,
    -- layer=0 filter=29 channel=1
    -12, 11, 22, 2, 28, 18, 16, 35, -21,
    -- layer=0 filter=29 channel=2
    -31, 0, -3, 17, 15, -4, 8, 6, 15,
    -- layer=0 filter=30 channel=0
    32, 17, 8, 34, -24, -11, 0, 15, 26,
    -- layer=0 filter=30 channel=1
    -3, -20, 17, 21, 3, 7, -2, -5, 4,
    -- layer=0 filter=30 channel=2
    8, -19, 0, -22, -54, -31, -23, -43, 4,
    -- layer=0 filter=31 channel=0
    0, -23, 8, 20, -23, -25, -9, -9, -27,
    -- layer=0 filter=31 channel=1
    -21, -19, -12, 6, -10, 5, -2, 15, 8,
    -- layer=0 filter=31 channel=2
    1, -13, -20, -25, 21, -9, -3, -20, -27,
    -- layer=0 filter=32 channel=0
    -5, 19, -28, -58, 61, -27, -30, 67, -16,
    -- layer=0 filter=32 channel=1
    -15, 29, -36, -34, 57, -37, -30, 76, -11,
    -- layer=0 filter=32 channel=2
    -53, 25, 10, -36, 47, -30, -14, 70, -14,
    -- layer=0 filter=33 channel=0
    -32, 23, -23, -9, 24, -1, 12, 5, 2,
    -- layer=0 filter=33 channel=1
    -12, 32, 15, -5, 42, 23, -6, 32, 3,
    -- layer=0 filter=33 channel=2
    21, 31, -17, 19, 30, -19, 2, -9, -34,
    -- layer=0 filter=34 channel=0
    7, -17, -24, -21, 0, -18, 19, 1, 46,
    -- layer=0 filter=34 channel=1
    33, -5, -9, -41, -41, -19, 22, 36, 37,
    -- layer=0 filter=34 channel=2
    -7, -15, -31, -42, -2, -10, 1, 36, 54,
    -- layer=0 filter=35 channel=0
    -17, -29, 10, -4, -28, -7, -24, -22, -44,
    -- layer=0 filter=35 channel=1
    41, 27, 42, 7, 39, 30, 27, 13, 6,
    -- layer=0 filter=35 channel=2
    6, 7, 17, -9, 13, -1, -17, -23, -36,
    -- layer=0 filter=36 channel=0
    -16, 35, -10, -32, 11, 9, -15, 13, 21,
    -- layer=0 filter=36 channel=1
    -21, 31, 24, -32, 45, 18, -26, 23, 3,
    -- layer=0 filter=36 channel=2
    -39, -15, -1, -34, 12, -18, -23, 0, -2,
    -- layer=0 filter=37 channel=0
    -52, -46, -38, -4, 21, 23, 44, 31, -9,
    -- layer=0 filter=37 channel=1
    -53, -10, -6, -3, 0, 21, 29, 30, 26,
    -- layer=0 filter=37 channel=2
    -50, -53, -2, 6, 21, 2, 33, -7, 26,
    -- layer=0 filter=38 channel=0
    -30, 36, 9, -32, -19, 21, 5, 0, 20,
    -- layer=0 filter=38 channel=1
    25, 32, 51, 6, -9, 26, -9, -4, -24,
    -- layer=0 filter=38 channel=2
    -40, 6, 33, -22, -5, -27, -38, -27, -35,
    -- layer=0 filter=39 channel=0
    17, 7, 33, -27, 34, 52, -23, -20, 19,
    -- layer=0 filter=39 channel=1
    -44, -14, 13, -43, -16, 24, -53, -8, -10,
    -- layer=0 filter=39 channel=2
    -16, 31, 28, 1, -12, -3, -38, 0, 29,
    -- layer=0 filter=40 channel=0
    39, 33, 13, 34, 22, -43, -16, -15, -42,
    -- layer=0 filter=40 channel=1
    32, 39, 5, 15, 1, -44, 8, -24, -31,
    -- layer=0 filter=40 channel=2
    37, 17, -7, 10, -21, -32, 6, -35, -15,
    -- layer=0 filter=41 channel=0
    22, 31, 17, -18, 12, -6, 8, -22, 21,
    -- layer=0 filter=41 channel=1
    28, 27, 5, 19, 10, 12, -19, -5, 29,
    -- layer=0 filter=41 channel=2
    -36, -33, -39, -29, -15, -24, -21, -6, 4,
    -- layer=0 filter=42 channel=0
    22, 4, 49, 0, -2, -4, -10, -52, 5,
    -- layer=0 filter=42 channel=1
    5, 20, 6, -40, -20, 47, -21, -57, 11,
    -- layer=0 filter=42 channel=2
    31, 39, 51, -18, -15, 27, -45, -59, 5,
    -- layer=0 filter=43 channel=0
    -25, -26, -30, 24, -22, -28, 36, 48, 2,
    -- layer=0 filter=43 channel=1
    -1, -18, -26, -11, -20, 2, 41, 49, 0,
    -- layer=0 filter=43 channel=2
    -28, -54, -3, 27, 15, -31, 20, 17, 20,
    -- layer=0 filter=44 channel=0
    -30, -6, 18, -25, -6, 3, 6, 4, 42,
    -- layer=0 filter=44 channel=1
    -52, -11, 5, -8, -9, 9, 11, 6, 44,
    -- layer=0 filter=44 channel=2
    -58, -33, 29, -44, 14, 43, -14, -1, 60,
    -- layer=0 filter=45 channel=0
    -21, -50, -29, 17, 15, 24, 0, 44, 23,
    -- layer=0 filter=45 channel=1
    -15, -38, -1, 46, 11, -22, 29, -9, -26,
    -- layer=0 filter=45 channel=2
    -26, -50, 11, 48, 6, -32, 8, 23, 6,
    -- layer=0 filter=46 channel=0
    13, 4, 17, 13, 48, 27, 28, 50, 47,
    -- layer=0 filter=46 channel=1
    -8, 0, 2, -2, -32, -14, 5, -36, -4,
    -- layer=0 filter=46 channel=2
    -9, 1, 8, -22, -32, -42, -46, -40, -37,
    -- layer=0 filter=47 channel=0
    -41, -43, -21, 2, -6, 12, 4, 41, 28,
    -- layer=0 filter=47 channel=1
    -5, -20, -32, -22, 30, 38, 1, 31, 34,
    -- layer=0 filter=47 channel=2
    -36, -43, -43, 14, -14, 1, 20, 31, 25,
    -- layer=0 filter=48 channel=0
    13, 22, 7, 8, 42, 6, 24, 29, 42,
    -- layer=0 filter=48 channel=1
    -23, -7, -35, -26, 0, -16, -15, 14, -6,
    -- layer=0 filter=48 channel=2
    -12, 13, -1, -24, -23, -10, 14, -29, -19,
    -- layer=0 filter=49 channel=0
    -38, 0, 39, -32, 12, 17, -38, -4, 44,
    -- layer=0 filter=49 channel=1
    -38, 21, 6, -22, -25, 38, -18, -12, 50,
    -- layer=0 filter=49 channel=2
    -35, 25, 18, -10, -16, 51, -28, -19, 9,
    -- layer=0 filter=50 channel=0
    25, 1, 16, 19, 35, 33, 4, 17, 25,
    -- layer=0 filter=50 channel=1
    7, 21, -15, 4, 5, -24, 0, 0, 15,
    -- layer=0 filter=50 channel=2
    -12, -37, -27, -36, -3, 9, -13, -37, -29,
    -- layer=0 filter=51 channel=0
    -12, 19, 12, 4, 14, 14, 15, 0, 0,
    -- layer=0 filter=51 channel=1
    7, 19, 13, -26, 22, 14, 12, 24, 17,
    -- layer=0 filter=51 channel=2
    8, -12, -23, 5, 8, 9, -17, -27, 14,
    -- layer=0 filter=52 channel=0
    -24, -5, -19, -25, -28, -21, 32, 40, 53,
    -- layer=0 filter=52 channel=1
    17, -4, 13, -23, -43, -23, -11, 34, 19,
    -- layer=0 filter=52 channel=2
    33, 30, 11, -19, -25, -24, -5, -7, 4,
    -- layer=0 filter=53 channel=0
    45, 18, -53, 60, -24, -63, 10, -11, -18,
    -- layer=0 filter=53 channel=1
    70, 16, -17, 31, 26, -54, 42, 0, -58,
    -- layer=0 filter=53 channel=2
    72, 13, -52, 71, -24, -47, 11, -36, -61,
    -- layer=0 filter=54 channel=0
    24, 14, 32, 25, 16, 2, 8, 31, 5,
    -- layer=0 filter=54 channel=1
    2, 15, -15, 7, 0, 18, 3, -8, -2,
    -- layer=0 filter=54 channel=2
    -30, -13, -35, -38, -5, -6, -24, -26, 7,
    -- layer=0 filter=55 channel=0
    -32, 11, 34, -16, -35, -16, 23, 24, 30,
    -- layer=0 filter=55 channel=1
    10, 47, 40, 27, -6, -12, 14, -7, 5,
    -- layer=0 filter=55 channel=2
    -4, -13, 2, -20, -52, -36, 3, -44, -24,
    -- layer=0 filter=56 channel=0
    -22, -22, 4, 11, -19, -27, -32, -40, 5,
    -- layer=0 filter=56 channel=1
    -19, 4, -5, -4, 19, -18, -34, -11, 8,
    -- layer=0 filter=56 channel=2
    33, 13, 32, 28, 40, 32, 3, -4, 34,
    -- layer=0 filter=57 channel=0
    -3, -29, 14, -13, 16, 1, 1, 14, 9,
    -- layer=0 filter=57 channel=1
    -27, -17, 2, -19, -6, -1, -8, -15, -26,
    -- layer=0 filter=57 channel=2
    -16, 33, 24, 17, 18, 12, 26, 35, 16,
    -- layer=0 filter=58 channel=0
    -20, -36, 7, -8, 20, 30, 35, 12, 34,
    -- layer=0 filter=58 channel=1
    -19, -5, -31, 11, 7, 5, 8, 37, 30,
    -- layer=0 filter=58 channel=2
    -35, 4, -20, -33, -30, -15, 0, 1, 6,
    -- layer=0 filter=59 channel=0
    23, 10, -46, 28, 14, -39, -6, 19, 8,
    -- layer=0 filter=59 channel=1
    16, 6, -30, 39, 8, -49, -8, -7, 12,
    -- layer=0 filter=59 channel=2
    41, 2, -61, 24, 24, -40, 3, 21, -30,
    -- layer=0 filter=60 channel=0
    46, 18, 50, -49, -18, -11, -32, -12, 11,
    -- layer=0 filter=60 channel=1
    29, 2, 0, -37, -45, -62, 30, 28, 21,
    -- layer=0 filter=60 channel=2
    -20, 8, 0, -13, -21, -51, 45, 21, 32,
    -- layer=0 filter=61 channel=0
    -1, 7, -3, 33, 14, -45, 29, -13, -7,
    -- layer=0 filter=61 channel=1
    12, 3, -21, 48, -14, -46, 4, 18, -27,
    -- layer=0 filter=61 channel=2
    43, -17, -34, 48, -26, -21, 47, -16, -29,
    -- layer=0 filter=62 channel=0
    -1, -43, -27, 25, 31, -24, 0, 32, 10,
    -- layer=0 filter=62 channel=1
    24, -19, -52, 29, -16, -28, 26, 48, -13,
    -- layer=0 filter=62 channel=2
    -3, -26, -8, 52, -18, -55, 17, 45, -22,
    -- layer=0 filter=63 channel=0
    40, 22, 20, 36, 21, 33, 22, 20, -13,
    -- layer=0 filter=63 channel=1
    22, -9, -31, -6, -23, -52, -28, -52, -47,
    -- layer=0 filter=63 channel=2
    31, -1, 20, -2, -17, -18, 1, -33, 14,

    others => 0);
end iwght_package;

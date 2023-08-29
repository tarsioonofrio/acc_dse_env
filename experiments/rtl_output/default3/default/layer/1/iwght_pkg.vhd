library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=1
    7751, 4303, 11480, -1382, -1266, 4007, -4445, -1722, 10146, 742, -2226, 5654, 8796, -1973, -3297, 1380, -959, -494, -3072, 53, 8044, -932, 2550, 420, 4679, 1028, 3634, -210, -1603, 8550, 11494, 5651,

    -- weights
    -- layer=1 filter=0 channel=0
    -18, -7, 6, -15, -17, 18, 0, 2, 21,
    -- layer=1 filter=0 channel=1
    13, 28, -3, -12, -1, 11, 28, 31, 30,
    -- layer=1 filter=0 channel=2
    32, 20, -10, 55, -1, 22, 42, -13, 13,
    -- layer=1 filter=0 channel=3
    -3, 13, -19, -30, -16, -35, -12, -32, -23,
    -- layer=1 filter=0 channel=4
    -7, -15, 0, -29, -29, -26, -17, -43, -41,
    -- layer=1 filter=0 channel=5
    -36, -41, -7, -43, -52, -46, -42, -66, -35,
    -- layer=1 filter=0 channel=6
    3, 5, 4, -15, -39, 13, -7, -9, -18,
    -- layer=1 filter=0 channel=7
    -7, 44, -3, -17, 16, 40, 12, 3, -12,
    -- layer=1 filter=0 channel=8
    -32, 12, 0, 1, -13, -14, 10, 10, 20,
    -- layer=1 filter=0 channel=9
    -38, -44, -57, -8, -18, -33, -53, -23, -52,
    -- layer=1 filter=0 channel=10
    46, -5, 1, 18, -32, -14, -3, 0, 34,
    -- layer=1 filter=0 channel=11
    0, 24, 21, 17, 48, 39, 62, 50, 42,
    -- layer=1 filter=0 channel=12
    -9, -11, -20, -8, -21, 11, 37, -15, -2,
    -- layer=1 filter=0 channel=13
    12, -14, 4, 20, 20, -8, -42, -23, -21,
    -- layer=1 filter=0 channel=14
    -20, -27, 8, 5, 13, -24, 0, 10, -24,
    -- layer=1 filter=0 channel=15
    -8, -14, 25, -17, 27, -9, 1, 29, -10,
    -- layer=1 filter=0 channel=16
    -3, -16, 0, 23, -5, 17, -1, -24, -25,
    -- layer=1 filter=0 channel=17
    -28, -12, -24, -32, -46, -45, -14, -46, -32,
    -- layer=1 filter=0 channel=18
    -33, 14, 85, -79, 48, 56, 29, 26, 47,
    -- layer=1 filter=0 channel=19
    32, 22, 32, -11, 28, 3, 10, 25, 31,
    -- layer=1 filter=0 channel=20
    18, -20, 0, -22, 6, -31, -18, 1, 7,
    -- layer=1 filter=0 channel=21
    -33, -6, -7, -25, -27, -61, -44, -52, -12,
    -- layer=1 filter=0 channel=22
    -16, 9, -25, -41, -37, -19, -33, -29, -23,
    -- layer=1 filter=0 channel=23
    1, 0, -24, 4, -8, -25, -33, 2, -47,
    -- layer=1 filter=0 channel=24
    8, 29, 22, -2, -19, 1, 10, -1, 9,
    -- layer=1 filter=0 channel=25
    35, -5, -9, -11, 6, -21, 11, 6, 28,
    -- layer=1 filter=0 channel=26
    23, 19, 12, 35, 37, 11, 53, 0, 44,
    -- layer=1 filter=0 channel=27
    -1, -9, -18, -15, 4, 0, 18, 17, -21,
    -- layer=1 filter=0 channel=28
    82, 55, 12, 56, 23, 50, 15, 8, 19,
    -- layer=1 filter=0 channel=29
    14, 16, 1, 19, -19, 6, 33, 35, 7,
    -- layer=1 filter=0 channel=30
    -4, 21, -24, 9, -11, 18, 22, -24, 10,
    -- layer=1 filter=0 channel=31
    35, 25, 30, -3, 43, 2, 11, 25, 2,
    -- layer=1 filter=1 channel=0
    -10, -3, -7, -1, 24, 1, 11, 9, 32,
    -- layer=1 filter=1 channel=1
    -4, 8, -18, -15, 25, -3, 4, -1, -10,
    -- layer=1 filter=1 channel=2
    5, 21, 23, 13, 10, 13, 13, 35, 16,
    -- layer=1 filter=1 channel=3
    -16, 13, -19, 0, -23, 16, -28, -18, -9,
    -- layer=1 filter=1 channel=4
    4, 1, 7, -24, -6, -14, -35, -26, 8,
    -- layer=1 filter=1 channel=5
    7, 26, 38, 11, 6, -33, 7, 12, -5,
    -- layer=1 filter=1 channel=6
    16, 15, 17, 22, 30, 19, -7, -9, 46,
    -- layer=1 filter=1 channel=7
    12, 27, 45, -7, 46, 27, 8, 5, 38,
    -- layer=1 filter=1 channel=8
    -23, -11, -2, 19, 25, -15, -13, 10, 10,
    -- layer=1 filter=1 channel=9
    -27, -39, -32, -35, -25, -59, -42, 3, -46,
    -- layer=1 filter=1 channel=10
    11, 17, 23, -14, 22, -16, -20, -23, 10,
    -- layer=1 filter=1 channel=11
    6, 34, 23, 5, 3, 22, 7, 37, 14,
    -- layer=1 filter=1 channel=12
    11, 15, -12, 23, -12, -12, 15, 31, 22,
    -- layer=1 filter=1 channel=13
    -52, -10, -27, -37, -22, -14, -49, -45, -31,
    -- layer=1 filter=1 channel=14
    5, 6, 0, -15, 0, -3, -8, -2, 0,
    -- layer=1 filter=1 channel=15
    -7, -37, -11, -25, 3, -10, -20, -53, -7,
    -- layer=1 filter=1 channel=16
    -16, -14, -2, 14, 5, 10, 24, 10, 24,
    -- layer=1 filter=1 channel=17
    -24, -34, 14, -25, -23, 8, -1, 33, -15,
    -- layer=1 filter=1 channel=18
    18, 67, 66, 26, 55, 72, 46, 54, 49,
    -- layer=1 filter=1 channel=19
    -11, 7, -10, 24, 19, -16, 5, 23, 18,
    -- layer=1 filter=1 channel=20
    9, 3, -10, 9, -6, 7, -17, -18, 23,
    -- layer=1 filter=1 channel=21
    -26, -10, -37, -14, -41, -25, -30, -53, -46,
    -- layer=1 filter=1 channel=22
    -12, -4, 7, -19, -29, 0, -14, -12, 8,
    -- layer=1 filter=1 channel=23
    -18, 12, -26, 10, -22, -5, 6, -35, -18,
    -- layer=1 filter=1 channel=24
    -7, 14, 8, -13, -11, -7, 28, 27, 14,
    -- layer=1 filter=1 channel=25
    -7, 8, -15, 24, 17, -3, -31, 13, 33,
    -- layer=1 filter=1 channel=26
    33, 22, 9, 3, -12, -13, 14, 4, 32,
    -- layer=1 filter=1 channel=27
    -23, 1, -5, -21, -24, -22, 16, -9, 16,
    -- layer=1 filter=1 channel=28
    71, 65, 50, 72, 69, 48, 20, 36, 19,
    -- layer=1 filter=1 channel=29
    -15, 0, -9, 29, 13, 26, -13, 26, 10,
    -- layer=1 filter=1 channel=30
    9, 18, 16, -9, -11, -25, 29, 27, 20,
    -- layer=1 filter=1 channel=31
    35, 29, 32, 0, 0, 6, 5, 15, 20,
    -- layer=1 filter=2 channel=0
    -2, 26, -9, 15, -27, -8, -27, -46, -61,
    -- layer=1 filter=2 channel=1
    29, 14, -40, 2, -33, 0, 21, -6, -30,
    -- layer=1 filter=2 channel=2
    37, -20, -34, 29, 0, -4, 29, -8, -14,
    -- layer=1 filter=2 channel=3
    27, -55, -69, 16, -50, -54, 20, -75, -60,
    -- layer=1 filter=2 channel=4
    83, 25, 21, 53, 55, 28, 71, 32, 51,
    -- layer=1 filter=2 channel=5
    -18, 25, 15, 1, 35, 10, -59, 0, -25,
    -- layer=1 filter=2 channel=6
    -21, -54, -93, -45, -64, -65, -37, -57, -88,
    -- layer=1 filter=2 channel=7
    -32, -94, -87, -82, -126, -102, -58, -91, -65,
    -- layer=1 filter=2 channel=8
    -40, -56, -43, -61, -43, -30, 2, -24, -7,
    -- layer=1 filter=2 channel=9
    34, 28, 11, 17, 12, 4, -2, 6, -8,
    -- layer=1 filter=2 channel=10
    -6, -16, -14, 10, 26, -13, -20, 2, -67,
    -- layer=1 filter=2 channel=11
    5, -5, 11, -6, -7, -2, -45, -28, -28,
    -- layer=1 filter=2 channel=12
    50, -13, 6, 21, -12, -18, 33, -9, -47,
    -- layer=1 filter=2 channel=13
    26, -5, -56, 39, 9, -39, -2, 14, -37,
    -- layer=1 filter=2 channel=14
    -18, -5, -30, 6, -50, -44, -4, -22, -54,
    -- layer=1 filter=2 channel=15
    9, -17, -28, 34, 14, -29, 36, 19, 1,
    -- layer=1 filter=2 channel=16
    35, -12, -38, 13, 19, -51, 37, -6, -69,
    -- layer=1 filter=2 channel=17
    34, -37, -103, 31, -68, -82, 30, -41, -94,
    -- layer=1 filter=2 channel=18
    -10, 22, 30, 49, 27, 32, -15, 0, -3,
    -- layer=1 filter=2 channel=19
    4, 39, -6, 28, 15, 0, 26, 0, -22,
    -- layer=1 filter=2 channel=20
    50, -17, -27, 26, -22, -37, 52, 3, -27,
    -- layer=1 filter=2 channel=21
    -15, -11, 15, -13, 4, -7, -21, -18, -18,
    -- layer=1 filter=2 channel=22
    34, -12, -10, 28, 22, -29, 25, 0, -55,
    -- layer=1 filter=2 channel=23
    11, -18, -41, 25, -40, -52, 19, -34, -29,
    -- layer=1 filter=2 channel=24
    37, -10, -28, 18, -9, -1, 8, -30, -46,
    -- layer=1 filter=2 channel=25
    -21, -3, 19, -23, -36, 12, -11, -7, -20,
    -- layer=1 filter=2 channel=26
    20, 51, 39, 9, 20, 17, -14, 29, -9,
    -- layer=1 filter=2 channel=27
    -12, 6, -16, -16, 24, 4, -23, 18, 24,
    -- layer=1 filter=2 channel=28
    56, 49, 7, 74, -10, 2, 83, 5, -9,
    -- layer=1 filter=2 channel=29
    2, 23, 11, -9, 20, -12, 25, -23, -22,
    -- layer=1 filter=2 channel=30
    28, 15, -13, 24, 14, 0, -2, -22, -25,
    -- layer=1 filter=2 channel=31
    2, 2, 8, 13, 10, -3, -32, 15, -10,
    -- layer=1 filter=3 channel=0
    -10, -31, -28, -29, -24, -17, 7, -19, -38,
    -- layer=1 filter=3 channel=1
    18, -7, -31, 4, -28, -8, -6, -15, -33,
    -- layer=1 filter=3 channel=2
    -18, -6, 9, -24, 9, 11, -25, 2, 20,
    -- layer=1 filter=3 channel=3
    -10, -18, 13, 20, 8, -29, -13, 0, -21,
    -- layer=1 filter=3 channel=4
    4, -27, -23, 7, 6, 20, -26, -13, -21,
    -- layer=1 filter=3 channel=5
    21, -6, -17, 1, 11, 9, -15, 10, -12,
    -- layer=1 filter=3 channel=6
    4, -6, -5, 27, 7, 1, 10, -3, -19,
    -- layer=1 filter=3 channel=7
    -26, 20, 10, -18, 9, -14, -26, 19, -5,
    -- layer=1 filter=3 channel=8
    -4, 25, 7, -24, 0, -20, 22, -2, -2,
    -- layer=1 filter=3 channel=9
    -11, -44, -7, -35, -26, -8, 26, -5, -31,
    -- layer=1 filter=3 channel=10
    16, 11, -2, 7, 15, -12, 28, 17, -27,
    -- layer=1 filter=3 channel=11
    8, 16, 20, -5, -11, -2, -26, -28, 9,
    -- layer=1 filter=3 channel=12
    -11, 10, -15, 16, 3, 8, 15, -25, -13,
    -- layer=1 filter=3 channel=13
    -34, 7, -10, 10, -19, -29, 15, -3, 4,
    -- layer=1 filter=3 channel=14
    12, 0, -14, -22, -11, -19, 1, -1, -26,
    -- layer=1 filter=3 channel=15
    10, -13, -18, 11, -3, 7, -15, -18, -10,
    -- layer=1 filter=3 channel=16
    12, 6, -13, -20, -5, 20, 8, -21, -9,
    -- layer=1 filter=3 channel=17
    7, -23, 20, 0, -13, -6, -28, -6, -13,
    -- layer=1 filter=3 channel=18
    26, 30, 7, -20, -4, 5, 3, 20, 35,
    -- layer=1 filter=3 channel=19
    14, -26, -19, -28, -14, -23, -1, 8, -35,
    -- layer=1 filter=3 channel=20
    -13, -4, -13, -5, -5, -10, -8, -33, 0,
    -- layer=1 filter=3 channel=21
    -15, -24, -38, -15, -34, 6, -6, 16, -18,
    -- layer=1 filter=3 channel=22
    -15, 15, -16, -13, 1, -11, 11, -5, -4,
    -- layer=1 filter=3 channel=23
    -19, -9, -18, 5, -32, 10, 12, 6, -27,
    -- layer=1 filter=3 channel=24
    -28, -19, -29, -29, -33, -14, 16, -20, -3,
    -- layer=1 filter=3 channel=25
    6, -14, 24, 14, -24, -3, 15, -6, -4,
    -- layer=1 filter=3 channel=26
    6, -22, 10, -26, -22, -31, -17, -2, -24,
    -- layer=1 filter=3 channel=27
    -11, -26, 0, 0, -21, -20, 13, 14, -17,
    -- layer=1 filter=3 channel=28
    -13, -9, 9, 2, -4, 8, 5, -14, 8,
    -- layer=1 filter=3 channel=29
    3, -11, -8, 3, -32, 0, 1, -32, -10,
    -- layer=1 filter=3 channel=30
    -10, -20, 0, 5, -28, -30, 8, -22, -2,
    -- layer=1 filter=3 channel=31
    23, -20, -4, -21, 2, 18, 1, 23, -29,
    -- layer=1 filter=4 channel=0
    -20, -2, -2, -5, -1, -26, 7, -25, -28,
    -- layer=1 filter=4 channel=1
    10, -9, 12, -13, -3, 4, -21, 1, 7,
    -- layer=1 filter=4 channel=2
    -24, 38, -20, 12, 25, -22, -9, 9, -26,
    -- layer=1 filter=4 channel=3
    -20, -10, 15, -20, -32, -12, -14, 17, -22,
    -- layer=1 filter=4 channel=4
    -25, 13, -35, -24, -22, -13, -4, 18, -16,
    -- layer=1 filter=4 channel=5
    -42, -25, -3, -14, 5, -17, 13, -12, -32,
    -- layer=1 filter=4 channel=6
    -5, -3, -29, -13, 27, -25, 35, 15, -23,
    -- layer=1 filter=4 channel=7
    2, 1, -9, -3, 5, 27, 17, -7, -17,
    -- layer=1 filter=4 channel=8
    16, 41, 20, 36, 22, 35, -10, 14, 23,
    -- layer=1 filter=4 channel=9
    0, 6, 20, 9, -18, -8, 25, -9, 20,
    -- layer=1 filter=4 channel=10
    -24, 8, -10, -24, -14, -16, 36, 9, -21,
    -- layer=1 filter=4 channel=11
    22, -13, 14, -2, -22, 19, 0, -36, -4,
    -- layer=1 filter=4 channel=12
    -12, 12, -20, 16, -25, -28, -2, -8, -10,
    -- layer=1 filter=4 channel=13
    -14, 0, -3, 4, 4, 1, -8, 10, 5,
    -- layer=1 filter=4 channel=14
    -3, -15, 6, 0, -27, -1, 20, -30, 8,
    -- layer=1 filter=4 channel=15
    -5, -2, -22, -3, -26, -18, 14, -24, -12,
    -- layer=1 filter=4 channel=16
    -24, 9, -21, 3, -4, 5, 15, -2, -16,
    -- layer=1 filter=4 channel=17
    12, 13, 0, -17, 16, -13, 19, 7, 18,
    -- layer=1 filter=4 channel=18
    26, 1, 6, -14, 37, 0, -3, 37, 5,
    -- layer=1 filter=4 channel=19
    -33, -25, -7, 16, 0, -27, -8, -8, -14,
    -- layer=1 filter=4 channel=20
    10, -3, 3, -31, -4, -13, -26, 18, -11,
    -- layer=1 filter=4 channel=21
    -30, -30, 26, 9, -16, 0, 22, -8, 7,
    -- layer=1 filter=4 channel=22
    7, -26, -29, 21, -29, 4, 3, 1, -33,
    -- layer=1 filter=4 channel=23
    13, -29, -7, -24, 10, -33, 6, 2, 13,
    -- layer=1 filter=4 channel=24
    6, -23, -31, 7, -3, 10, -2, -15, -9,
    -- layer=1 filter=4 channel=25
    -21, 25, -4, -11, 26, 10, -13, -4, -13,
    -- layer=1 filter=4 channel=26
    -8, -17, 21, -37, -17, 7, -29, -7, -12,
    -- layer=1 filter=4 channel=27
    5, 6, 15, -5, -17, 1, 22, 6, 1,
    -- layer=1 filter=4 channel=28
    -11, 27, -26, -60, -11, 17, -46, 29, -25,
    -- layer=1 filter=4 channel=29
    20, -8, 8, -29, 0, 13, -10, -10, -1,
    -- layer=1 filter=4 channel=30
    4, 2, 16, 11, -15, -21, 13, 15, -25,
    -- layer=1 filter=4 channel=31
    3, -20, 27, 34, -4, -16, 7, -36, 2,
    -- layer=1 filter=5 channel=0
    -10, 35, 30, 20, 13, 23, 24, -4, 10,
    -- layer=1 filter=5 channel=1
    -21, 19, 16, 12, -26, -17, -24, -12, 22,
    -- layer=1 filter=5 channel=2
    6, -20, -4, 4, -1, 8, -5, -24, -4,
    -- layer=1 filter=5 channel=3
    0, 10, 18, -3, 6, 20, 32, 13, 44,
    -- layer=1 filter=5 channel=4
    -7, 11, -8, 6, -16, -6, -30, -21, 11,
    -- layer=1 filter=5 channel=5
    -18, -5, -2, -72, -73, -42, -22, -57, -64,
    -- layer=1 filter=5 channel=6
    -32, -33, -42, -68, -87, -53, -33, -40, -34,
    -- layer=1 filter=5 channel=7
    52, 29, 57, 60, 75, 20, 38, 37, 14,
    -- layer=1 filter=5 channel=8
    23, -8, 21, 7, 21, -23, -9, 6, 13,
    -- layer=1 filter=5 channel=9
    -29, 8, -16, -55, -4, -36, 6, -32, -7,
    -- layer=1 filter=5 channel=10
    -39, 0, 5, -22, -26, -29, -1, -37, 24,
    -- layer=1 filter=5 channel=11
    -5, -10, 22, -1, 3, 12, 14, -20, -18,
    -- layer=1 filter=5 channel=12
    -32, -6, -10, 3, 3, -10, 5, 13, 20,
    -- layer=1 filter=5 channel=13
    -45, -39, -42, 3, -39, -27, -31, -10, -8,
    -- layer=1 filter=5 channel=14
    3, -16, -10, 2, 6, -11, -15, -20, -3,
    -- layer=1 filter=5 channel=15
    -60, -26, -36, -51, -33, -9, -5, -41, -30,
    -- layer=1 filter=5 channel=16
    -16, -3, -3, -20, 7, 20, -11, -1, 24,
    -- layer=1 filter=5 channel=17
    -10, -3, -13, 5, -10, 20, 2, 4, 18,
    -- layer=1 filter=5 channel=18
    -19, -8, 3, 14, -34, -19, -19, 4, -3,
    -- layer=1 filter=5 channel=19
    3, 9, 28, 13, 0, -18, 1, 3, 13,
    -- layer=1 filter=5 channel=20
    15, -21, 24, 16, 22, 9, -25, 2, 25,
    -- layer=1 filter=5 channel=21
    22, -6, 9, -2, 7, 3, -12, 31, 11,
    -- layer=1 filter=5 channel=22
    16, 20, -4, 12, 30, 22, -6, 0, 36,
    -- layer=1 filter=5 channel=23
    -8, -26, -21, -1, -9, -13, -10, -28, -14,
    -- layer=1 filter=5 channel=24
    -28, 26, 15, -18, 18, -6, -22, -10, -1,
    -- layer=1 filter=5 channel=25
    36, 0, -17, -3, -32, -13, 18, 7, -2,
    -- layer=1 filter=5 channel=26
    -5, -2, -10, 22, -5, -14, -5, 6, -8,
    -- layer=1 filter=5 channel=27
    22, 12, 0, 11, 17, -26, -3, 7, -19,
    -- layer=1 filter=5 channel=28
    93, 81, 90, 97, 113, 122, 137, 140, 131,
    -- layer=1 filter=5 channel=29
    -21, 29, 14, -7, 19, -8, -25, 25, 35,
    -- layer=1 filter=5 channel=30
    7, -11, 30, -6, -2, 18, -18, -17, -7,
    -- layer=1 filter=5 channel=31
    6, 14, 27, -6, 42, 3, -8, -5, 25,
    -- layer=1 filter=6 channel=0
    -13, -8, 12, -21, -13, -3, -6, -6, -20,
    -- layer=1 filter=6 channel=1
    -12, 2, -2, -17, 7, 27, -25, 19, 14,
    -- layer=1 filter=6 channel=2
    -67, -5, -39, -86, -68, -30, -14, -37, -21,
    -- layer=1 filter=6 channel=3
    6, 19, 13, 26, 33, 0, 1, 21, -10,
    -- layer=1 filter=6 channel=4
    25, 53, 50, 17, 33, 17, -1, 18, 38,
    -- layer=1 filter=6 channel=5
    -9, -11, 32, -11, 29, -4, 46, 4, 52,
    -- layer=1 filter=6 channel=6
    -29, -40, -47, -50, -62, -72, -74, -67, -81,
    -- layer=1 filter=6 channel=7
    32, 33, 7, 28, 39, 17, 50, 29, 7,
    -- layer=1 filter=6 channel=8
    15, 21, 26, -13, -26, -14, 15, 1, 26,
    -- layer=1 filter=6 channel=9
    -27, -47, -29, -37, -42, -10, -16, 27, 37,
    -- layer=1 filter=6 channel=10
    -58, -48, -43, -70, -36, -64, -59, -39, -44,
    -- layer=1 filter=6 channel=11
    -1, 11, -17, -3, -13, -21, 18, -8, 11,
    -- layer=1 filter=6 channel=12
    11, 13, 26, -14, 7, 20, 15, 10, -9,
    -- layer=1 filter=6 channel=13
    31, 37, 57, 18, 40, 30, 6, 22, 45,
    -- layer=1 filter=6 channel=14
    22, 28, -17, 6, 23, -8, 16, -6, 24,
    -- layer=1 filter=6 channel=15
    40, 10, 45, 43, 48, 36, 30, 42, 40,
    -- layer=1 filter=6 channel=16
    -8, 14, 1, -5, 19, 9, -2, 26, -11,
    -- layer=1 filter=6 channel=17
    26, 42, 12, 10, 0, 11, 17, 14, 20,
    -- layer=1 filter=6 channel=18
    17, -13, -28, -15, -40, -22, -31, -53, 5,
    -- layer=1 filter=6 channel=19
    -7, -13, -14, 12, -4, -4, -11, -13, -17,
    -- layer=1 filter=6 channel=20
    4, 11, 17, 19, -14, 22, -4, 1, 29,
    -- layer=1 filter=6 channel=21
    7, 11, -30, -9, 13, 8, 28, 7, -7,
    -- layer=1 filter=6 channel=22
    27, 32, 40, 4, 23, 30, -1, 0, 17,
    -- layer=1 filter=6 channel=23
    52, 29, 12, 25, 12, 10, 5, 13, 22,
    -- layer=1 filter=6 channel=24
    -19, 1, -14, 9, 3, -21, -24, 23, 18,
    -- layer=1 filter=6 channel=25
    20, 14, -8, 0, 26, 14, 29, 16, -32,
    -- layer=1 filter=6 channel=26
    -16, -17, -31, -38, -11, -29, -21, -29, 5,
    -- layer=1 filter=6 channel=27
    -22, -12, 19, 21, -8, 21, -1, 25, -9,
    -- layer=1 filter=6 channel=28
    -50, -8, 26, 46, 12, 14, 49, 62, -2,
    -- layer=1 filter=6 channel=29
    10, 20, 14, -27, 4, 0, 7, 5, 7,
    -- layer=1 filter=6 channel=30
    3, -2, 5, 17, -1, 5, 14, 12, 21,
    -- layer=1 filter=6 channel=31
    -5, -5, -36, 6, 0, 4, -26, -37, -29,
    -- layer=1 filter=7 channel=0
    12, 0, 16, 16, 13, 17, -6, -24, 2,
    -- layer=1 filter=7 channel=1
    11, -26, 14, -25, -22, 15, -12, -18, -12,
    -- layer=1 filter=7 channel=2
    -12, 15, 1, -25, -25, -26, -21, 8, -11,
    -- layer=1 filter=7 channel=3
    -6, 14, -19, -14, 0, -23, 4, 7, -3,
    -- layer=1 filter=7 channel=4
    3, -8, -7, -23, -31, 2, -4, 8, -1,
    -- layer=1 filter=7 channel=5
    -17, -7, -25, -5, 3, 16, 11, -23, 12,
    -- layer=1 filter=7 channel=6
    -4, -10, 10, -17, 4, 17, -21, -12, 0,
    -- layer=1 filter=7 channel=7
    15, -1, -26, 13, -3, -13, 3, -20, 3,
    -- layer=1 filter=7 channel=8
    -2, -7, -16, 7, -5, -14, 22, -3, 1,
    -- layer=1 filter=7 channel=9
    5, -16, -2, 1, -19, 12, 0, -19, -22,
    -- layer=1 filter=7 channel=10
    -10, 22, -9, 16, 9, -8, 7, -8, 8,
    -- layer=1 filter=7 channel=11
    0, -24, 0, 5, 2, 15, -3, -19, 17,
    -- layer=1 filter=7 channel=12
    -5, 3, -22, -19, -1, 9, -4, -3, 21,
    -- layer=1 filter=7 channel=13
    -10, -19, -1, 23, 8, 15, 0, 9, -20,
    -- layer=1 filter=7 channel=14
    1, 1, -15, -9, 21, 6, -18, 5, -7,
    -- layer=1 filter=7 channel=15
    0, -5, -18, 5, 4, 3, -7, -31, -11,
    -- layer=1 filter=7 channel=16
    -12, -18, 6, -28, 1, -14, 2, -3, -12,
    -- layer=1 filter=7 channel=17
    6, 17, 23, -20, 17, -16, -1, -3, -9,
    -- layer=1 filter=7 channel=18
    -4, 19, 8, -13, -17, 8, 17, -24, -20,
    -- layer=1 filter=7 channel=19
    -15, -17, -16, -28, 16, -28, -13, -11, -15,
    -- layer=1 filter=7 channel=20
    -14, -11, 6, -4, -25, 8, 12, -8, 16,
    -- layer=1 filter=7 channel=21
    -31, 11, -3, 10, 13, -7, 22, -17, 8,
    -- layer=1 filter=7 channel=22
    -3, 15, 8, -11, 11, -6, 8, 1, -13,
    -- layer=1 filter=7 channel=23
    -16, 5, 17, 3, -4, -12, 0, 8, -19,
    -- layer=1 filter=7 channel=24
    -2, 10, 16, -26, -21, 15, -22, 12, -23,
    -- layer=1 filter=7 channel=25
    -4, -1, -23, -8, 8, 24, -4, 16, -2,
    -- layer=1 filter=7 channel=26
    -32, -20, -2, -27, 13, 15, 5, -15, -31,
    -- layer=1 filter=7 channel=27
    15, 5, 19, -21, 19, 0, 3, 0, -26,
    -- layer=1 filter=7 channel=28
    12, -9, 0, 4, 15, -14, -18, 2, -8,
    -- layer=1 filter=7 channel=29
    -28, -30, -21, 6, -29, -10, -19, -23, 1,
    -- layer=1 filter=7 channel=30
    -21, -5, 15, -14, -20, 10, -13, 12, -6,
    -- layer=1 filter=7 channel=31
    -32, -21, -15, -17, 10, -23, -31, -17, -14,
    -- layer=1 filter=8 channel=0
    -41, -28, -50, -55, -37, -61, -55, -63, -90,
    -- layer=1 filter=8 channel=1
    -1, 1, -32, 17, 19, -16, 34, -8, -10,
    -- layer=1 filter=8 channel=2
    -23, -20, -2, 8, -39, -13, 56, -45, -60,
    -- layer=1 filter=8 channel=3
    -16, -14, -40, -21, -47, -35, -63, -49, -90,
    -- layer=1 filter=8 channel=4
    24, 11, 26, 18, 45, 55, 19, 13, 49,
    -- layer=1 filter=8 channel=5
    -39, -32, -12, -28, -13, -73, -32, 6, -3,
    -- layer=1 filter=8 channel=6
    -51, -40, -28, -31, -22, -45, -8, -32, -100,
    -- layer=1 filter=8 channel=7
    -26, 24, 24, 27, 2, -23, 28, 15, -27,
    -- layer=1 filter=8 channel=8
    88, 45, 88, 39, 97, 102, 66, 98, 88,
    -- layer=1 filter=8 channel=9
    -6, -36, 11, -24, -25, -37, -52, -35, -66,
    -- layer=1 filter=8 channel=10
    -42, -8, -6, -26, -31, -68, -102, -81, -64,
    -- layer=1 filter=8 channel=11
    16, 44, -4, 46, 38, 39, 58, 71, 34,
    -- layer=1 filter=8 channel=12
    -30, -30, -12, -28, -27, -16, 30, 4, -26,
    -- layer=1 filter=8 channel=13
    6, 9, -4, 30, -15, 24, 29, -8, 20,
    -- layer=1 filter=8 channel=14
    -12, -33, 12, -62, -33, 12, 23, -36, -18,
    -- layer=1 filter=8 channel=15
    -1, 23, 30, 8, 29, 33, 48, 43, 68,
    -- layer=1 filter=8 channel=16
    -40, -7, -49, -62, -52, -39, -22, -8, -59,
    -- layer=1 filter=8 channel=17
    -22, -41, 7, -33, -24, -16, -26, -59, 6,
    -- layer=1 filter=8 channel=18
    28, 19, 40, -1, 36, 57, 44, 41, 52,
    -- layer=1 filter=8 channel=19
    0, 11, 18, 4, 6, 14, 20, 30, -5,
    -- layer=1 filter=8 channel=20
    -18, -17, -49, -21, -19, -28, 10, -25, -44,
    -- layer=1 filter=8 channel=21
    -44, -30, 0, -38, -29, -79, -97, -73, -79,
    -- layer=1 filter=8 channel=22
    -45, -12, 0, -67, -65, -78, -81, -106, -64,
    -- layer=1 filter=8 channel=23
    -7, 16, -1, -14, -4, -1, -15, 14, -11,
    -- layer=1 filter=8 channel=24
    -17, -1, -15, -8, 17, -21, -9, -26, -45,
    -- layer=1 filter=8 channel=25
    9, 30, 2, 7, 32, -10, -5, 16, -7,
    -- layer=1 filter=8 channel=26
    33, -2, 8, 39, 38, 39, 32, 4, -1,
    -- layer=1 filter=8 channel=27
    11, 0, 18, 21, 17, 0, -5, 19, -13,
    -- layer=1 filter=8 channel=28
    35, -37, -15, -37, -66, -32, 39, -22, 20,
    -- layer=1 filter=8 channel=29
    -11, -16, -38, -16, 11, -28, -40, -38, -46,
    -- layer=1 filter=8 channel=30
    -8, -24, -41, -46, -12, -15, -34, -30, 4,
    -- layer=1 filter=8 channel=31
    50, 58, 21, 39, 30, 38, 50, 22, 7,
    -- layer=1 filter=9 channel=0
    -15, 18, 14, 9, -4, 15, 1, -9, -10,
    -- layer=1 filter=9 channel=1
    -1, 26, 0, -8, -7, 20, 18, 9, -9,
    -- layer=1 filter=9 channel=2
    -1, -30, -36, -66, -69, -68, -46, -42, 0,
    -- layer=1 filter=9 channel=3
    5, 9, -7, 0, 15, -2, 5, -17, -6,
    -- layer=1 filter=9 channel=4
    29, 0, 14, 7, 20, 15, 34, 49, 26,
    -- layer=1 filter=9 channel=5
    11, 25, 1, 15, 0, 10, 33, -1, 10,
    -- layer=1 filter=9 channel=6
    -26, -38, -79, -114, -93, -126, -51, -82, -46,
    -- layer=1 filter=9 channel=7
    -24, -18, -64, -27, -22, -40, -26, -13, -49,
    -- layer=1 filter=9 channel=8
    -5, 10, 15, -23, 2, 9, 11, -3, 10,
    -- layer=1 filter=9 channel=9
    5, -9, -16, -34, -1, -18, 17, 16, 12,
    -- layer=1 filter=9 channel=10
    -50, -29, -34, -74, -36, -70, -101, -66, -95,
    -- layer=1 filter=9 channel=11
    -23, -3, -3, 19, -20, 29, 28, 25, 7,
    -- layer=1 filter=9 channel=12
    23, 31, -2, 2, -1, -14, -13, 18, 19,
    -- layer=1 filter=9 channel=13
    2, 20, 30, 41, 18, -4, 28, 38, 37,
    -- layer=1 filter=9 channel=14
    8, -8, -28, -15, -3, -19, 4, 0, 10,
    -- layer=1 filter=9 channel=15
    15, 7, 17, 10, -10, 5, 3, 29, -2,
    -- layer=1 filter=9 channel=16
    19, 6, 0, 23, 1, -15, 21, 27, 11,
    -- layer=1 filter=9 channel=17
    5, -7, 4, 4, 16, -37, -3, 35, 23,
    -- layer=1 filter=9 channel=18
    -14, -19, -7, -56, -76, -48, -52, -78, -39,
    -- layer=1 filter=9 channel=19
    28, 2, -9, -8, 3, 6, -5, 16, 25,
    -- layer=1 filter=9 channel=20
    1, 25, 31, 23, 28, 18, 30, -16, -20,
    -- layer=1 filter=9 channel=21
    16, -15, -14, 2, 0, -27, -24, -30, -51,
    -- layer=1 filter=9 channel=22
    20, -5, 18, 35, 7, 7, 13, -20, 16,
    -- layer=1 filter=9 channel=23
    -10, 17, 16, 38, -16, 5, 36, 31, 20,
    -- layer=1 filter=9 channel=24
    -4, 3, 9, 1, 13, 2, 11, 27, -4,
    -- layer=1 filter=9 channel=25
    12, 32, 37, 20, -8, 34, 5, -5, -2,
    -- layer=1 filter=9 channel=26
    -19, 23, 15, 3, -8, 2, -18, 2, -7,
    -- layer=1 filter=9 channel=27
    5, 18, 23, -22, 6, -1, 8, -11, 11,
    -- layer=1 filter=9 channel=28
    -37, -82, -56, -14, -102, -41, -64, -92, -57,
    -- layer=1 filter=9 channel=29
    23, -13, -13, 1, 33, 13, -2, 12, -7,
    -- layer=1 filter=9 channel=30
    31, 7, 14, -6, 24, -15, -1, 10, -14,
    -- layer=1 filter=9 channel=31
    -25, -7, -34, -17, -17, 3, -30, 3, 0,
    -- layer=1 filter=10 channel=0
    2, 13, 10, 9, 11, -5, -28, 10, -11,
    -- layer=1 filter=10 channel=1
    -1, 16, 12, -13, 6, -7, 12, -24, -27,
    -- layer=1 filter=10 channel=2
    4, -3, 8, 29, 20, -18, 34, 11, 23,
    -- layer=1 filter=10 channel=3
    19, 8, -1, 17, 31, 0, -17, -26, 1,
    -- layer=1 filter=10 channel=4
    5, 28, -10, -6, 5, -15, -13, 16, 8,
    -- layer=1 filter=10 channel=5
    1, 0, -27, 14, 13, 35, 4, 0, 5,
    -- layer=1 filter=10 channel=6
    22, 36, 27, 54, 54, 59, 19, 21, 35,
    -- layer=1 filter=10 channel=7
    -7, -14, -25, -6, -14, -13, -25, -30, -4,
    -- layer=1 filter=10 channel=8
    5, 1, -1, 50, 13, 10, 12, 17, -8,
    -- layer=1 filter=10 channel=9
    22, 25, 16, 34, 63, 35, 35, 39, 17,
    -- layer=1 filter=10 channel=10
    62, 69, 48, 59, 66, 54, 50, 48, 69,
    -- layer=1 filter=10 channel=11
    -14, -34, -13, -2, 8, -21, -43, -40, -44,
    -- layer=1 filter=10 channel=12
    -11, 28, 17, -5, 13, -8, -5, -30, -19,
    -- layer=1 filter=10 channel=13
    30, 23, 1, 21, 0, 0, 14, 15, -10,
    -- layer=1 filter=10 channel=14
    12, -8, 21, 20, 13, -23, -18, 13, -21,
    -- layer=1 filter=10 channel=15
    19, 22, -15, 0, -20, 4, -14, 25, 5,
    -- layer=1 filter=10 channel=16
    35, 19, 29, -3, 20, 21, -24, -33, 7,
    -- layer=1 filter=10 channel=17
    -7, 24, 26, 3, 1, -1, -21, -14, -42,
    -- layer=1 filter=10 channel=18
    -20, -40, -50, -61, -60, -27, -28, -56, -18,
    -- layer=1 filter=10 channel=19
    29, 15, 7, 7, 4, -23, -23, 6, -33,
    -- layer=1 filter=10 channel=20
    36, 33, 22, 0, -17, -11, 12, 2, -26,
    -- layer=1 filter=10 channel=21
    32, 35, 34, 0, 27, 34, 2, 4, 4,
    -- layer=1 filter=10 channel=22
    40, -10, 21, 33, 16, -8, 18, -1, -22,
    -- layer=1 filter=10 channel=23
    12, 0, 5, -2, 14, -14, -5, -35, 11,
    -- layer=1 filter=10 channel=24
    17, 11, 3, 9, -21, 19, -28, -19, 2,
    -- layer=1 filter=10 channel=25
    35, 36, 23, -18, 4, 26, 36, 1, 33,
    -- layer=1 filter=10 channel=26
    -27, 10, -5, 8, 0, -20, -26, -2, -5,
    -- layer=1 filter=10 channel=27
    -23, 8, 4, 7, -19, -23, -15, 22, 15,
    -- layer=1 filter=10 channel=28
    -31, -60, -50, -41, -75, -83, -25, -63, -12,
    -- layer=1 filter=10 channel=29
    -8, 3, 15, 17, 11, 6, -18, -9, -18,
    -- layer=1 filter=10 channel=30
    28, 25, 23, -7, 16, -16, -7, -29, 10,
    -- layer=1 filter=10 channel=31
    2, 2, -29, -29, 7, -7, -36, 5, -14,
    -- layer=1 filter=11 channel=0
    -9, 22, -15, -18, -19, 38, 22, 8, -13,
    -- layer=1 filter=11 channel=1
    10, -12, 11, -21, -1, 0, 15, 9, 30,
    -- layer=1 filter=11 channel=2
    39, 15, 5, 20, -11, -12, -4, 25, -8,
    -- layer=1 filter=11 channel=3
    -10, -5, 3, 16, -8, -20, 7, 11, 6,
    -- layer=1 filter=11 channel=4
    -19, 12, 7, -44, -22, -5, -49, 3, -11,
    -- layer=1 filter=11 channel=5
    -53, -51, -85, -65, -73, -53, -79, -87, -109,
    -- layer=1 filter=11 channel=6
    10, 2, -29, -25, -8, -13, -20, -22, -8,
    -- layer=1 filter=11 channel=7
    -7, 17, 7, -20, -14, 18, -6, 5, -17,
    -- layer=1 filter=11 channel=8
    -8, -14, 7, -7, 11, -35, -16, -1, 4,
    -- layer=1 filter=11 channel=9
    -20, -30, -54, -24, -10, -48, -38, -44, -38,
    -- layer=1 filter=11 channel=10
    -48, -12, -28, 12, 4, 4, 30, 25, 48,
    -- layer=1 filter=11 channel=11
    14, -19, 33, 18, 25, 18, 29, -15, 27,
    -- layer=1 filter=11 channel=12
    -4, 3, -15, 28, 0, 27, 0, -1, 28,
    -- layer=1 filter=11 channel=13
    -58, -13, -42, -30, -24, -49, 0, 4, -36,
    -- layer=1 filter=11 channel=14
    -38, -10, 11, -8, -36, 22, 12, -30, -25,
    -- layer=1 filter=11 channel=15
    -29, -4, -6, -30, -35, -17, 4, -26, -27,
    -- layer=1 filter=11 channel=16
    -15, 2, -4, 15, -21, 19, 3, 3, 6,
    -- layer=1 filter=11 channel=17
    -12, -16, -36, -13, -10, 9, -19, -26, 6,
    -- layer=1 filter=11 channel=18
    -94, -28, -48, -101, -33, -4, -83, -5, -12,
    -- layer=1 filter=11 channel=19
    -25, 10, -4, -13, -1, 23, 29, -6, 31,
    -- layer=1 filter=11 channel=20
    -3, -6, -9, -14, -8, 13, 14, 23, -7,
    -- layer=1 filter=11 channel=21
    -13, -21, 0, -19, -26, -9, -10, -39, -25,
    -- layer=1 filter=11 channel=22
    -30, 7, -18, -15, 8, -5, 14, 20, 22,
    -- layer=1 filter=11 channel=23
    -4, -8, -14, -34, 5, -13, -15, -35, -18,
    -- layer=1 filter=11 channel=24
    9, 9, -8, -5, -15, 2, 18, 23, -12,
    -- layer=1 filter=11 channel=25
    8, 9, -7, -24, -14, -1, -12, 17, 6,
    -- layer=1 filter=11 channel=26
    33, -15, -2, 29, 0, 28, 38, -5, 34,
    -- layer=1 filter=11 channel=27
    -8, 16, 27, -11, 14, -15, -3, -13, 21,
    -- layer=1 filter=11 channel=28
    5, 31, 5, 1, 35, -44, 0, 35, -29,
    -- layer=1 filter=11 channel=29
    -1, 1, -11, 24, 7, 18, 7, 10, 31,
    -- layer=1 filter=11 channel=30
    -9, -14, -8, -9, 19, 26, 18, 5, 2,
    -- layer=1 filter=11 channel=31
    44, 23, 32, 3, 8, 37, 5, 25, 42,
    -- layer=1 filter=12 channel=0
    25, -6, 4, -12, -2, 3, -15, 13, 11,
    -- layer=1 filter=12 channel=1
    8, 25, -3, -25, 3, -21, -19, -9, -17,
    -- layer=1 filter=12 channel=2
    -21, -20, -27, -35, -49, -41, -16, -36, -16,
    -- layer=1 filter=12 channel=3
    28, -10, -1, 37, 10, 7, -3, 3, -20,
    -- layer=1 filter=12 channel=4
    21, -24, -15, 33, 7, -12, 5, -8, -1,
    -- layer=1 filter=12 channel=5
    -35, -78, -81, -49, -77, -85, -59, -66, -99,
    -- layer=1 filter=12 channel=6
    -50, -47, -53, -51, -88, -56, -74, -61, -76,
    -- layer=1 filter=12 channel=7
    2, -23, 10, 24, 27, -12, 2, 55, -9,
    -- layer=1 filter=12 channel=8
    -23, -34, -46, -26, 27, -17, -13, -49, -25,
    -- layer=1 filter=12 channel=9
    -46, -41, -44, -23, -52, -39, -34, -42, -6,
    -- layer=1 filter=12 channel=10
    -49, -52, -8, -1, -64, -25, -17, 5, -28,
    -- layer=1 filter=12 channel=11
    -26, 22, -4, -2, -12, 0, -4, 13, -2,
    -- layer=1 filter=12 channel=12
    -8, -6, 5, 12, 12, -16, 0, -22, 8,
    -- layer=1 filter=12 channel=13
    19, -24, -37, 15, -2, -8, 17, 18, -36,
    -- layer=1 filter=12 channel=14
    -16, 13, -1, -5, -21, 14, -28, -9, 7,
    -- layer=1 filter=12 channel=15
    -29, -49, -14, -11, -40, -7, -16, -7, -16,
    -- layer=1 filter=12 channel=16
    30, 12, -1, 1, 19, -16, -18, -10, -11,
    -- layer=1 filter=12 channel=17
    8, -23, -2, -20, -18, -12, 5, 18, 2,
    -- layer=1 filter=12 channel=18
    -31, -34, -43, -70, -45, -32, -98, -97, -72,
    -- layer=1 filter=12 channel=19
    -13, -7, 23, -7, 0, 26, -17, -7, 23,
    -- layer=1 filter=12 channel=20
    32, 25, 21, 22, 26, -14, 20, 18, -12,
    -- layer=1 filter=12 channel=21
    -27, -1, 31, 26, -2, -4, 6, 13, -12,
    -- layer=1 filter=12 channel=22
    21, 19, 11, -2, -6, 15, 27, -7, 27,
    -- layer=1 filter=12 channel=23
    -13, -29, -25, -18, -31, 10, -12, -6, 3,
    -- layer=1 filter=12 channel=24
    21, 24, 18, 9, 32, 27, 17, 3, 1,
    -- layer=1 filter=12 channel=25
    0, 7, -14, 2, -1, 8, 20, 16, -52,
    -- layer=1 filter=12 channel=26
    21, 43, 42, 18, -2, 21, 6, 10, 33,
    -- layer=1 filter=12 channel=27
    7, -12, 26, 17, 17, -5, 9, 20, -5,
    -- layer=1 filter=12 channel=28
    44, 16, -21, 61, 39, 2, 102, 94, 31,
    -- layer=1 filter=12 channel=29
    19, 0, 5, 6, -3, 5, -22, 29, 31,
    -- layer=1 filter=12 channel=30
    4, 8, 5, -12, 3, 12, 22, 1, 10,
    -- layer=1 filter=12 channel=31
    -1, 39, 40, 3, 14, -3, 40, 12, 33,
    -- layer=1 filter=13 channel=0
    -9, 38, 33, 5, -11, 4, -9, -24, -44,
    -- layer=1 filter=13 channel=1
    31, 12, 35, -20, -11, -25, -31, -37, 1,
    -- layer=1 filter=13 channel=2
    -8, 16, -6, -9, 20, 15, 54, 72, 35,
    -- layer=1 filter=13 channel=3
    1, 11, 0, -6, 34, 2, -12, -9, -1,
    -- layer=1 filter=13 channel=4
    20, -20, 13, 4, 12, 10, 21, 21, 1,
    -- layer=1 filter=13 channel=5
    17, 15, 39, 34, 17, 65, 6, 7, -13,
    -- layer=1 filter=13 channel=6
    2, 34, 12, 0, 12, 15, 43, 35, 35,
    -- layer=1 filter=13 channel=7
    -1, 27, 28, 37, 46, 49, 7, -9, 6,
    -- layer=1 filter=13 channel=8
    -18, 15, 19, -27, 17, 2, -32, -15, 19,
    -- layer=1 filter=13 channel=9
    45, 65, 60, 35, 48, 36, 39, 3, 16,
    -- layer=1 filter=13 channel=10
    50, 51, 73, 44, 76, 38, 57, 77, 67,
    -- layer=1 filter=13 channel=11
    22, 11, 12, -2, -27, -15, -41, -26, -6,
    -- layer=1 filter=13 channel=12
    27, 20, -1, 0, -12, -21, -19, -39, -26,
    -- layer=1 filter=13 channel=13
    20, 7, 27, 5, 22, -26, -34, 1, -25,
    -- layer=1 filter=13 channel=14
    2, 19, 1, 4, 21, 9, 3, -40, -18,
    -- layer=1 filter=13 channel=15
    11, 21, 31, 3, 5, 24, -24, 20, 11,
    -- layer=1 filter=13 channel=16
    16, 35, 32, 19, -14, 6, -39, -20, -16,
    -- layer=1 filter=13 channel=17
    25, 25, -21, -34, -31, -22, 1, -20, -25,
    -- layer=1 filter=13 channel=18
    12, -15, -4, 42, 16, 15, 6, 14, -7,
    -- layer=1 filter=13 channel=19
    15, 6, 33, -7, 14, -25, 10, -11, -18,
    -- layer=1 filter=13 channel=20
    11, 34, 36, -5, -22, -24, -14, -2, -5,
    -- layer=1 filter=13 channel=21
    50, 6, 28, 24, 40, 6, -8, 24, 17,
    -- layer=1 filter=13 channel=22
    15, 37, 37, 18, 15, 1, -27, -12, -23,
    -- layer=1 filter=13 channel=23
    14, 21, 19, -12, -18, 3, -13, -29, -34,
    -- layer=1 filter=13 channel=24
    -7, -12, 33, 0, 5, -2, -12, -35, -16,
    -- layer=1 filter=13 channel=25
    1, 15, -21, 22, 5, -10, 31, 35, 15,
    -- layer=1 filter=13 channel=26
    -5, -6, 11, 0, 16, 17, -2, -3, -27,
    -- layer=1 filter=13 channel=27
    -7, -20, 16, -26, -10, 11, 26, 8, -25,
    -- layer=1 filter=13 channel=28
    -7, -2, 32, 45, 40, 11, 34, 51, 57,
    -- layer=1 filter=13 channel=29
    42, 34, 21, 11, 4, 26, -8, -19, -22,
    -- layer=1 filter=13 channel=30
    -1, 8, 22, -6, -6, 22, -9, -6, -26,
    -- layer=1 filter=13 channel=31
    2, 3, 14, 3, 35, 16, -16, 18, -25,
    -- layer=1 filter=14 channel=0
    -1, 1, 34, 3, 23, -4, 30, 14, 36,
    -- layer=1 filter=14 channel=1
    3, -17, 15, 19, 10, 23, -15, 33, 29,
    -- layer=1 filter=14 channel=2
    -35, -34, -58, -83, -61, -76, -69, -51, -51,
    -- layer=1 filter=14 channel=3
    -12, 25, 32, 2, 3, -11, -5, -18, -20,
    -- layer=1 filter=14 channel=4
    35, 45, 40, 14, 23, -2, -22, 3, -2,
    -- layer=1 filter=14 channel=5
    31, 15, 15, 65, 45, 64, 96, 54, 57,
    -- layer=1 filter=14 channel=6
    30, 44, 6, 14, -2, -18, 17, 22, 5,
    -- layer=1 filter=14 channel=7
    7, -45, -14, -8, 0, -52, 44, -12, -31,
    -- layer=1 filter=14 channel=8
    9, 6, 0, 20, 13, 13, 31, 24, 21,
    -- layer=1 filter=14 channel=9
    12, 3, 18, -7, 14, 23, 44, -13, 19,
    -- layer=1 filter=14 channel=10
    -23, -36, -37, -43, -85, -48, -102, -129, -140,
    -- layer=1 filter=14 channel=11
    -24, 9, -3, 0, -7, 22, 10, 37, 50,
    -- layer=1 filter=14 channel=12
    -9, -19, 8, -9, 7, 14, 9, 1, 31,
    -- layer=1 filter=14 channel=13
    28, 16, 32, 22, 32, 26, 4, 34, 23,
    -- layer=1 filter=14 channel=14
    5, -22, -4, 14, -11, -1, 20, 44, 23,
    -- layer=1 filter=14 channel=15
    28, 7, 43, -1, 20, 7, -7, -21, -4,
    -- layer=1 filter=14 channel=16
    -12, -15, 26, 0, 2, -8, 20, 15, 18,
    -- layer=1 filter=14 channel=17
    14, 14, 22, 11, 6, 34, 56, 52, 20,
    -- layer=1 filter=14 channel=18
    55, 40, 4, 41, 14, -2, 0, -33, -10,
    -- layer=1 filter=14 channel=19
    -3, 8, 3, 14, 1, 7, -6, 3, 8,
    -- layer=1 filter=14 channel=20
    -6, 20, -15, 0, -1, -10, -3, 21, 9,
    -- layer=1 filter=14 channel=21
    -55, -5, -25, -9, -7, 14, -66, -54, -53,
    -- layer=1 filter=14 channel=22
    -35, -18, 11, 12, -6, 8, 9, 4, 25,
    -- layer=1 filter=14 channel=23
    -1, 41, 19, 43, 2, 13, 1, 22, 36,
    -- layer=1 filter=14 channel=24
    -22, -22, -14, 7, -12, 8, -5, 28, 35,
    -- layer=1 filter=14 channel=25
    -5, -10, -4, 6, 13, 34, 9, 8, 21,
    -- layer=1 filter=14 channel=26
    0, 11, -30, 29, -18, -13, 26, 38, 44,
    -- layer=1 filter=14 channel=27
    -2, 0, -24, 21, -20, 4, 0, 6, 13,
    -- layer=1 filter=14 channel=28
    -97, -101, -73, -104, -129, -86, -171, -120, -74,
    -- layer=1 filter=14 channel=29
    -15, -3, -3, -17, 8, -1, 26, 7, -5,
    -- layer=1 filter=14 channel=30
    -7, 8, 0, -22, -21, -8, 14, 27, 5,
    -- layer=1 filter=14 channel=31
    -24, -25, -14, 9, -2, 9, 21, 12, -6,
    -- layer=1 filter=15 channel=0
    18, -10, -7, 17, -5, -4, 8, 8, 0,
    -- layer=1 filter=15 channel=1
    14, 11, -18, 22, 16, -42, 0, 5, -13,
    -- layer=1 filter=15 channel=2
    62, 51, 51, -3, 81, 54, -3, 66, 47,
    -- layer=1 filter=15 channel=3
    35, -41, 6, 18, -6, -5, 9, 2, -31,
    -- layer=1 filter=15 channel=4
    -15, 0, 7, 44, 39, -13, 26, 19, -8,
    -- layer=1 filter=15 channel=5
    -32, -25, 17, -37, -17, -15, -31, -34, 8,
    -- layer=1 filter=15 channel=6
    1, -14, -31, -31, -35, -33, -39, -6, 5,
    -- layer=1 filter=15 channel=7
    31, 11, 29, 48, -8, 26, 17, -9, -5,
    -- layer=1 filter=15 channel=8
    16, 10, 16, 14, 1, 34, -4, 39, 6,
    -- layer=1 filter=15 channel=9
    -25, -3, 31, -30, -28, 4, -8, -6, -5,
    -- layer=1 filter=15 channel=10
    -11, 5, 19, -14, -78, -16, -82, -58, -66,
    -- layer=1 filter=15 channel=11
    4, -3, -14, 11, 9, -10, -5, -23, -13,
    -- layer=1 filter=15 channel=12
    21, -8, -30, 13, 19, -14, 14, 7, -16,
    -- layer=1 filter=15 channel=13
    5, -5, -13, -10, -28, -19, 11, 29, -38,
    -- layer=1 filter=15 channel=14
    6, -3, 2, 37, -18, -14, 17, 0, -28,
    -- layer=1 filter=15 channel=15
    16, -34, -19, -2, -27, -14, 39, 12, -16,
    -- layer=1 filter=15 channel=16
    21, -1, -31, -5, 1, -24, 23, -12, 1,
    -- layer=1 filter=15 channel=17
    -11, -27, -23, 17, -23, -40, 51, 10, -11,
    -- layer=1 filter=15 channel=18
    6, -25, -53, -22, -26, -25, -35, -35, -5,
    -- layer=1 filter=15 channel=19
    -2, -15, -14, 18, -4, -23, -1, 14, -7,
    -- layer=1 filter=15 channel=20
    13, 23, -23, 23, -4, -11, -13, 7, 19,
    -- layer=1 filter=15 channel=21
    20, 10, 19, -18, -47, -18, -7, -32, -19,
    -- layer=1 filter=15 channel=22
    45, -6, -18, 36, -12, -9, 33, 23, -32,
    -- layer=1 filter=15 channel=23
    8, -22, -18, 17, -18, -33, 9, -3, -27,
    -- layer=1 filter=15 channel=24
    7, -24, -12, 37, 7, -35, 11, 21, -25,
    -- layer=1 filter=15 channel=25
    47, 16, 34, 17, -34, 8, -19, -2, -1,
    -- layer=1 filter=15 channel=26
    -11, 22, 14, 19, -11, 3, 7, -6, 12,
    -- layer=1 filter=15 channel=27
    17, 0, 15, -8, 0, 11, 5, -18, 15,
    -- layer=1 filter=15 channel=28
    134, 117, 100, 116, 133, 155, 55, 89, 138,
    -- layer=1 filter=15 channel=29
    18, -27, -22, 33, -3, -14, -3, 27, -17,
    -- layer=1 filter=15 channel=30
    12, 7, -28, 20, -9, -17, 27, 35, 1,
    -- layer=1 filter=15 channel=31
    -5, -34, 39, 35, -50, 17, -10, -29, -30,
    -- layer=1 filter=16 channel=0
    -2, -1, -5, -6, -1, 20, 1, 12, -12,
    -- layer=1 filter=16 channel=1
    -16, 16, -25, -12, -5, 2, -26, 0, 16,
    -- layer=1 filter=16 channel=2
    -27, 9, -24, -7, -14, -2, -16, -24, -15,
    -- layer=1 filter=16 channel=3
    -15, 7, -11, 0, -8, -11, 9, -13, 0,
    -- layer=1 filter=16 channel=4
    0, 8, -21, 1, -19, -20, -3, -8, 17,
    -- layer=1 filter=16 channel=5
    -14, 20, 20, -12, 25, -5, 4, -14, 20,
    -- layer=1 filter=16 channel=6
    -1, 18, 9, -21, 22, -19, -17, 15, -28,
    -- layer=1 filter=16 channel=7
    -5, -25, -25, 2, -23, 5, -15, -6, -17,
    -- layer=1 filter=16 channel=8
    -24, -15, 22, -16, 12, 4, -9, 23, -22,
    -- layer=1 filter=16 channel=9
    17, -27, -25, -12, 15, 17, -18, -22, -27,
    -- layer=1 filter=16 channel=10
    9, -12, 25, -13, 12, 6, -10, 21, -12,
    -- layer=1 filter=16 channel=11
    -3, 21, -6, -22, 7, 18, -6, -7, -15,
    -- layer=1 filter=16 channel=12
    4, 15, -7, 4, 8, 15, -12, 19, 16,
    -- layer=1 filter=16 channel=13
    22, -16, -1, 21, 11, -10, 5, -20, -14,
    -- layer=1 filter=16 channel=14
    -15, 4, -27, -25, -1, -22, 14, -4, -9,
    -- layer=1 filter=16 channel=15
    -13, -21, 11, -9, 2, -6, -5, 5, 8,
    -- layer=1 filter=16 channel=16
    -16, -22, -4, -13, 14, 10, -14, 5, -3,
    -- layer=1 filter=16 channel=17
    15, -19, 17, 18, 14, 4, 20, 18, -24,
    -- layer=1 filter=16 channel=18
    6, -21, 0, -10, -27, -19, -7, -18, -2,
    -- layer=1 filter=16 channel=19
    -2, 0, -11, -10, -5, -26, -5, -28, 2,
    -- layer=1 filter=16 channel=20
    -1, -25, 0, 8, 6, -2, -23, -23, 8,
    -- layer=1 filter=16 channel=21
    23, -15, -17, 11, -18, -8, -20, 0, 24,
    -- layer=1 filter=16 channel=22
    -14, 8, -21, -6, 4, -22, -13, -19, 23,
    -- layer=1 filter=16 channel=23
    -2, 1, -25, 18, 11, -11, -9, -2, 9,
    -- layer=1 filter=16 channel=24
    1, 8, -10, -3, -26, -10, 0, -15, 9,
    -- layer=1 filter=16 channel=25
    0, 12, -9, -3, 17, -12, 7, -23, -22,
    -- layer=1 filter=16 channel=26
    -13, 2, -11, -17, 21, 12, -3, 13, -3,
    -- layer=1 filter=16 channel=27
    12, -18, -21, 8, 10, 6, 0, 17, -17,
    -- layer=1 filter=16 channel=28
    2, -35, -15, -9, -5, -12, 6, 16, 4,
    -- layer=1 filter=16 channel=29
    18, 13, -10, -22, -6, -13, 7, -16, -5,
    -- layer=1 filter=16 channel=30
    11, 21, 22, 1, 23, -3, -13, -20, -26,
    -- layer=1 filter=16 channel=31
    -17, 9, 11, 20, -6, 0, -20, 12, -27,
    -- layer=1 filter=17 channel=0
    -27, -13, -9, -39, -35, 16, -21, -22, 16,
    -- layer=1 filter=17 channel=1
    -40, -50, 1, -23, -11, -16, 1, -14, -25,
    -- layer=1 filter=17 channel=2
    -36, 8, -33, -13, -4, -10, -22, -2, 24,
    -- layer=1 filter=17 channel=3
    -12, 22, 8, -22, 9, -16, -40, -28, -19,
    -- layer=1 filter=17 channel=4
    26, 34, 23, 20, -19, 0, 17, 22, 4,
    -- layer=1 filter=17 channel=5
    -47, -8, -14, 1, -41, -52, -20, -4, -3,
    -- layer=1 filter=17 channel=6
    -3, 7, 2, -14, -16, 2, 15, 8, 28,
    -- layer=1 filter=17 channel=7
    -26, 38, 18, 19, -13, 38, -24, -1, -11,
    -- layer=1 filter=17 channel=8
    16, -33, -23, 6, 17, -17, -22, -10, -28,
    -- layer=1 filter=17 channel=9
    31, 13, 0, -24, -18, -13, -43, 1, -20,
    -- layer=1 filter=17 channel=10
    4, 39, 20, 25, -15, 14, 7, -11, 32,
    -- layer=1 filter=17 channel=11
    5, -34, -22, 5, 10, 11, -14, -14, 22,
    -- layer=1 filter=17 channel=12
    -41, -16, 7, -37, -4, -19, -9, -17, -11,
    -- layer=1 filter=17 channel=13
    32, 28, 32, -4, 22, 1, -14, -2, -31,
    -- layer=1 filter=17 channel=14
    -32, 7, -16, -3, -6, -4, -16, -46, 3,
    -- layer=1 filter=17 channel=15
    -1, 28, 5, 25, 28, 27, 6, 4, 1,
    -- layer=1 filter=17 channel=16
    -8, 23, 19, -23, -39, -7, -34, -1, -16,
    -- layer=1 filter=17 channel=17
    -19, 7, -17, 28, -22, 8, 12, -20, 4,
    -- layer=1 filter=17 channel=18
    -7, 26, 30, 2, 3, 35, -11, 24, 7,
    -- layer=1 filter=17 channel=19
    -37, -28, -6, 3, -36, 11, 0, 11, -20,
    -- layer=1 filter=17 channel=20
    -34, -35, -14, -49, -38, 0, 4, -17, -12,
    -- layer=1 filter=17 channel=21
    19, 32, 24, 10, -10, -23, -11, -8, -1,
    -- layer=1 filter=17 channel=22
    -26, 30, 17, -3, -40, 14, -21, -43, -30,
    -- layer=1 filter=17 channel=23
    -2, -16, -9, 9, 16, -21, -7, 1, 4,
    -- layer=1 filter=17 channel=24
    -8, -17, 22, -15, -1, -24, -11, 6, 3,
    -- layer=1 filter=17 channel=25
    -22, 10, -25, 10, 25, 25, -4, -1, -9,
    -- layer=1 filter=17 channel=26
    -14, -31, -35, 19, -19, 11, -1, -2, -24,
    -- layer=1 filter=17 channel=27
    21, 18, 6, -9, -2, -12, -15, -8, -3,
    -- layer=1 filter=17 channel=28
    -27, -5, 12, 3, -43, 0, 1, -5, -16,
    -- layer=1 filter=17 channel=29
    -26, 25, 9, -19, -39, 0, 5, -4, -20,
    -- layer=1 filter=17 channel=30
    -49, -27, 19, -10, -27, -35, -23, 4, -35,
    -- layer=1 filter=17 channel=31
    28, 3, -14, 5, -15, -24, -10, 0, 6,
    -- layer=1 filter=18 channel=0
    -25, 18, -27, 21, -10, 29, 16, -17, 20,
    -- layer=1 filter=18 channel=1
    -29, -30, -12, 22, 15, 4, 5, 27, -3,
    -- layer=1 filter=18 channel=2
    -9, -5, -16, 20, 60, 68, -26, -4, 11,
    -- layer=1 filter=18 channel=3
    -9, -23, -45, -11, -10, -33, 25, -5, 42,
    -- layer=1 filter=18 channel=4
    -51, -37, -61, -43, -9, -3, -9, -14, 16,
    -- layer=1 filter=18 channel=5
    28, -17, 12, -54, -9, -15, 22, 17, 52,
    -- layer=1 filter=18 channel=6
    -5, 14, 9, 79, 85, 74, 10, -45, -43,
    -- layer=1 filter=18 channel=7
    -1, -27, -9, 24, 58, 30, -5, 24, -2,
    -- layer=1 filter=18 channel=8
    37, -8, 30, 25, 6, -37, 4, -30, 3,
    -- layer=1 filter=18 channel=9
    30, 16, -2, -16, -19, -5, -13, 8, 42,
    -- layer=1 filter=18 channel=10
    -21, -3, -31, -32, -16, 7, 59, 51, 48,
    -- layer=1 filter=18 channel=11
    -19, 3, -23, -15, -8, 1, -2, 13, 0,
    -- layer=1 filter=18 channel=12
    0, -41, -2, 19, 22, -11, -1, -12, -3,
    -- layer=1 filter=18 channel=13
    -27, -3, -7, -2, 11, -26, 5, 35, 14,
    -- layer=1 filter=18 channel=14
    -23, -38, -23, -29, -12, 0, 18, 27, 17,
    -- layer=1 filter=18 channel=15
    -18, -53, -29, -44, 1, -38, 27, 34, 57,
    -- layer=1 filter=18 channel=16
    0, -40, -38, -6, -13, -29, -4, 20, -5,
    -- layer=1 filter=18 channel=17
    -26, -14, -2, 2, -11, 31, -36, 6, 3,
    -- layer=1 filter=18 channel=18
    -16, -31, -17, -30, -17, -13, 24, -5, -23,
    -- layer=1 filter=18 channel=19
    7, -14, 6, 0, -10, 29, 10, -15, 7,
    -- layer=1 filter=18 channel=20
    -15, -16, -22, -36, 9, -3, -7, -12, 32,
    -- layer=1 filter=18 channel=21
    -26, -10, -17, -21, -7, 16, 10, 33, 36,
    -- layer=1 filter=18 channel=22
    -40, -5, -32, -45, -27, -2, -5, -8, 22,
    -- layer=1 filter=18 channel=23
    -36, -7, -12, -25, 21, 5, 8, 10, -12,
    -- layer=1 filter=18 channel=24
    -6, -31, -46, 9, 27, 20, -1, -8, 6,
    -- layer=1 filter=18 channel=25
    8, -29, -28, -8, -11, -44, -7, -2, -26,
    -- layer=1 filter=18 channel=26
    -23, 7, 13, -1, -2, 32, 7, -3, -30,
    -- layer=1 filter=18 channel=27
    -11, -22, 2, 14, 0, 14, 21, -25, -23,
    -- layer=1 filter=18 channel=28
    -17, -18, -71, -45, 18, 1, 26, 27, 0,
    -- layer=1 filter=18 channel=29
    -3, -20, -23, -34, -22, 5, 8, 7, -16,
    -- layer=1 filter=18 channel=30
    -28, -6, -42, 8, -22, -33, 0, 7, 1,
    -- layer=1 filter=18 channel=31
    26, 23, -19, -33, 5, -35, -7, -4, 31,
    -- layer=1 filter=19 channel=0
    48, 26, -2, -8, -18, -21, -45, -34, -28,
    -- layer=1 filter=19 channel=1
    26, -1, 10, 0, 25, -27, -28, -20, -18,
    -- layer=1 filter=19 channel=2
    1, 17, 1, -26, -38, 2, 62, 92, 43,
    -- layer=1 filter=19 channel=3
    13, -1, 11, 24, 24, 7, 6, -1, -2,
    -- layer=1 filter=19 channel=4
    13, -12, -21, -4, 29, 8, 15, 21, 0,
    -- layer=1 filter=19 channel=5
    15, 25, 51, 80, 62, 46, 0, -9, -3,
    -- layer=1 filter=19 channel=6
    67, 38, 14, 35, 57, 61, 61, 86, 108,
    -- layer=1 filter=19 channel=7
    29, -32, 5, -14, 2, 4, -33, 10, 0,
    -- layer=1 filter=19 channel=8
    -4, 11, 29, 2, 12, 14, -3, 19, 45,
    -- layer=1 filter=19 channel=9
    17, 49, 37, 37, 42, 31, -39, -40, -18,
    -- layer=1 filter=19 channel=10
    10, 33, 8, 93, 68, 73, 70, 90, 52,
    -- layer=1 filter=19 channel=11
    17, 13, 51, 12, -28, 2, -9, -24, -25,
    -- layer=1 filter=19 channel=12
    21, 5, 17, 24, -9, 18, -11, -5, -32,
    -- layer=1 filter=19 channel=13
    -16, 14, -18, 10, 0, -23, -17, 22, 2,
    -- layer=1 filter=19 channel=14
    31, 21, -19, 13, -2, -32, -33, -22, -12,
    -- layer=1 filter=19 channel=15
    -34, -23, -15, 38, -1, 21, 21, 43, -4,
    -- layer=1 filter=19 channel=16
    -10, 14, 21, 34, -2, -15, -10, -36, -29,
    -- layer=1 filter=19 channel=17
    6, 3, -3, 0, -18, -25, -22, 0, 23,
    -- layer=1 filter=19 channel=18
    1, 2, 13, 34, 51, 80, 63, 69, 73,
    -- layer=1 filter=19 channel=19
    18, 13, -19, 7, -16, 10, -28, -10, -8,
    -- layer=1 filter=19 channel=20
    16, 8, -14, -1, 6, 12, -4, -21, -28,
    -- layer=1 filter=19 channel=21
    -1, 15, 30, 32, 20, 17, 11, 8, -47,
    -- layer=1 filter=19 channel=22
    -6, 36, -16, 18, -5, 20, -13, -18, -11,
    -- layer=1 filter=19 channel=23
    -23, -34, 6, 6, -10, -14, -24, -30, 3,
    -- layer=1 filter=19 channel=24
    5, 15, -4, -8, 6, -15, -16, -30, -22,
    -- layer=1 filter=19 channel=25
    -29, 1, -15, 4, 7, 8, 39, 54, 23,
    -- layer=1 filter=19 channel=26
    27, 55, 45, 0, 10, -30, -46, -41, -9,
    -- layer=1 filter=19 channel=27
    5, 19, -19, -20, 18, 18, 24, 1, -21,
    -- layer=1 filter=19 channel=28
    -71, -43, -45, -82, -25, -8, -37, -50, -51,
    -- layer=1 filter=19 channel=29
    14, 31, 24, 8, 14, -4, -4, -9, -31,
    -- layer=1 filter=19 channel=30
    0, 15, 22, 30, -21, -1, -7, -29, 0,
    -- layer=1 filter=19 channel=31
    11, 7, 24, 10, 17, 5, -22, -17, -14,
    -- layer=1 filter=20 channel=0
    -7, 0, -5, 8, 33, 33, 7, 17, -17,
    -- layer=1 filter=20 channel=1
    -9, 20, 11, -7, 37, -6, 24, 25, -8,
    -- layer=1 filter=20 channel=2
    -30, -25, -36, 6, -39, -55, 15, 8, 21,
    -- layer=1 filter=20 channel=3
    14, -35, -4, -4, -11, -32, 0, -23, -33,
    -- layer=1 filter=20 channel=4
    -15, -41, -28, -38, -59, -30, -44, -51, -67,
    -- layer=1 filter=20 channel=5
    -83, -57, -69, -43, -48, -32, -45, -40, -70,
    -- layer=1 filter=20 channel=6
    -13, -13, -49, -5, -53, -38, 12, -10, -21,
    -- layer=1 filter=20 channel=7
    7, -17, -6, -23, -7, -5, 32, 1, -39,
    -- layer=1 filter=20 channel=8
    -35, 6, -3, -14, 29, 9, 19, -16, 0,
    -- layer=1 filter=20 channel=9
    -14, -24, -55, -33, -3, -17, -25, -19, 9,
    -- layer=1 filter=20 channel=10
    -34, -42, 3, -20, -21, -12, 47, -18, 31,
    -- layer=1 filter=20 channel=11
    31, 39, 39, 15, 24, 42, 19, 29, 57,
    -- layer=1 filter=20 channel=12
    -1, 20, -2, 13, 22, 13, 12, -3, 12,
    -- layer=1 filter=20 channel=13
    8, 22, 18, 2, 2, -29, 18, -16, -50,
    -- layer=1 filter=20 channel=14
    -23, 15, -20, -24, -13, -6, -18, -3, -29,
    -- layer=1 filter=20 channel=15
    13, -12, -18, -13, -27, -3, 30, -23, 8,
    -- layer=1 filter=20 channel=16
    0, 9, 35, 6, 33, -19, 12, 28, -13,
    -- layer=1 filter=20 channel=17
    -23, -35, -1, 1, -58, -50, -41, -47, -32,
    -- layer=1 filter=20 channel=18
    -81, -86, -19, -97, -86, -50, -79, -80, -45,
    -- layer=1 filter=20 channel=19
    18, 1, 28, 38, 10, 23, 9, 12, 2,
    -- layer=1 filter=20 channel=20
    -19, 12, -14, 4, 1, -15, -28, 1, -3,
    -- layer=1 filter=20 channel=21
    1, -32, -43, -5, -25, 1, 5, -50, -28,
    -- layer=1 filter=20 channel=22
    -4, 5, -5, 8, -17, 6, -26, 2, -19,
    -- layer=1 filter=20 channel=23
    -6, -23, -18, 14, 4, -43, 0, -15, -59,
    -- layer=1 filter=20 channel=24
    24, 5, -10, 27, 37, 20, 13, -6, 12,
    -- layer=1 filter=20 channel=25
    -3, 3, -35, 3, -21, -31, -10, 17, 22,
    -- layer=1 filter=20 channel=26
    -8, 0, -3, 32, 26, -5, 46, 46, 39,
    -- layer=1 filter=20 channel=27
    7, 14, 12, 9, 4, -15, -11, -9, 6,
    -- layer=1 filter=20 channel=28
    -84, -52, -62, -89, -14, -63, -88, 0, 27,
    -- layer=1 filter=20 channel=29
    -1, 20, -6, 22, 28, 11, 5, -1, -6,
    -- layer=1 filter=20 channel=30
    0, 29, 4, -14, 7, 5, -21, 25, 0,
    -- layer=1 filter=20 channel=31
    22, 3, 49, 25, 32, 22, 46, 50, 46,
    -- layer=1 filter=21 channel=0
    0, 11, 7, 13, 8, 38, 21, 24, 21,
    -- layer=1 filter=21 channel=1
    0, 9, 12, -19, -7, -3, -7, -1, -4,
    -- layer=1 filter=21 channel=2
    31, 49, 68, 7, 73, 71, 13, 6, -1,
    -- layer=1 filter=21 channel=3
    4, 15, 10, -3, 8, 32, -5, -7, 25,
    -- layer=1 filter=21 channel=4
    0, -24, -6, 15, -1, 7, 22, 5, 10,
    -- layer=1 filter=21 channel=5
    0, -26, -23, 34, 15, 35, 43, 0, 32,
    -- layer=1 filter=21 channel=6
    98, 101, 96, 92, 66, 105, 47, 42, 16,
    -- layer=1 filter=21 channel=7
    12, 10, 14, 40, 10, 10, 43, 51, 39,
    -- layer=1 filter=21 channel=8
    3, -5, 28, 5, -22, -22, 19, -2, 23,
    -- layer=1 filter=21 channel=9
    33, 20, 31, 37, 28, 46, 29, 44, 44,
    -- layer=1 filter=21 channel=10
    50, 22, 53, 34, 34, 44, 58, 42, 30,
    -- layer=1 filter=21 channel=11
    -25, 5, 22, 9, -33, 16, 10, 3, -32,
    -- layer=1 filter=21 channel=12
    -9, 7, -16, -27, 2, -2, -28, 14, 21,
    -- layer=1 filter=21 channel=13
    -14, 20, 10, -6, 0, 10, -2, -23, 0,
    -- layer=1 filter=21 channel=14
    -20, 7, 8, 0, 23, 3, -15, -3, 7,
    -- layer=1 filter=21 channel=15
    -4, -5, -36, -39, -19, -43, 10, -8, -10,
    -- layer=1 filter=21 channel=16
    -20, 4, -2, 17, 19, 25, -29, 0, 16,
    -- layer=1 filter=21 channel=17
    -2, 0, -4, -16, 19, 39, -24, 5, 7,
    -- layer=1 filter=21 channel=18
    -38, 10, -73, 50, -25, -15, 14, 7, -37,
    -- layer=1 filter=21 channel=19
    3, -16, 27, 2, 20, 8, -21, -12, 0,
    -- layer=1 filter=21 channel=20
    -9, 0, -10, 11, -4, 27, -7, -10, -6,
    -- layer=1 filter=21 channel=21
    30, 54, 41, 20, 60, 66, 35, 26, 59,
    -- layer=1 filter=21 channel=22
    17, 15, 32, -6, 42, 40, -16, 32, 38,
    -- layer=1 filter=21 channel=23
    24, 16, 33, 12, -22, -14, -21, -7, -27,
    -- layer=1 filter=21 channel=24
    20, 0, 10, 9, -18, -16, -33, -14, 5,
    -- layer=1 filter=21 channel=25
    -1, 37, 0, 18, 10, 30, 29, 6, -9,
    -- layer=1 filter=21 channel=26
    13, 1, -2, -11, 4, 0, 17, -7, 20,
    -- layer=1 filter=21 channel=27
    7, 4, -8, 21, 25, -6, -24, -13, -2,
    -- layer=1 filter=21 channel=28
    -19, 0, 17, 20, 19, 3, 53, 39, 35,
    -- layer=1 filter=21 channel=29
    -14, -3, -5, 12, 16, 27, -14, -11, -14,
    -- layer=1 filter=21 channel=30
    1, 4, -6, -13, -12, 12, -25, 21, 10,
    -- layer=1 filter=21 channel=31
    3, 7, 2, -12, 13, -4, -15, 13, -5,
    -- layer=1 filter=22 channel=0
    17, 4, 10, 5, -6, -7, 0, 14, -10,
    -- layer=1 filter=22 channel=1
    -9, 8, 19, 4, -13, -16, -8, -25, -7,
    -- layer=1 filter=22 channel=2
    -66, -70, -70, -79, -83, -91, -16, -35, -10,
    -- layer=1 filter=22 channel=3
    23, 14, 22, 6, 0, -12, -17, 1, -7,
    -- layer=1 filter=22 channel=4
    50, 17, 27, 29, 17, 0, -9, 18, 33,
    -- layer=1 filter=22 channel=5
    -20, -26, -40, 1, -19, -12, 1, -7, 17,
    -- layer=1 filter=22 channel=6
    -129, -146, -139, -161, -171, -149, -86, -73, -95,
    -- layer=1 filter=22 channel=7
    -29, -37, -68, -36, -36, -112, -54, -58, -77,
    -- layer=1 filter=22 channel=8
    -12, 3, 7, -10, -1, 27, 6, -12, 4,
    -- layer=1 filter=22 channel=9
    6, -21, 8, 4, 22, 2, 11, 15, 17,
    -- layer=1 filter=22 channel=10
    -13, -20, -31, -45, -93, -81, -81, -104, -93,
    -- layer=1 filter=22 channel=11
    -2, 9, 14, -14, -8, 1, 12, 12, 36,
    -- layer=1 filter=22 channel=12
    17, 19, 5, -12, 22, -12, 10, 15, 18,
    -- layer=1 filter=22 channel=13
    -8, 10, 2, 15, 0, -11, 4, 25, -5,
    -- layer=1 filter=22 channel=14
    -2, 0, -5, -3, 0, 2, -30, 10, -12,
    -- layer=1 filter=22 channel=15
    -10, 28, 14, 17, 6, 20, -32, -6, -22,
    -- layer=1 filter=22 channel=16
    38, 28, 27, 5, 15, -9, 13, -8, -24,
    -- layer=1 filter=22 channel=17
    8, 20, -27, -17, 17, -15, 20, 0, -29,
    -- layer=1 filter=22 channel=18
    17, 15, 22, -29, -29, -42, -70, -104, -11,
    -- layer=1 filter=22 channel=19
    -10, 25, 1, 24, 18, -19, 32, 10, -11,
    -- layer=1 filter=22 channel=20
    34, 14, -16, -4, -17, -15, -6, -12, -14,
    -- layer=1 filter=22 channel=21
    10, 13, 9, 28, -4, 7, -8, -9, -41,
    -- layer=1 filter=22 channel=22
    42, 30, 23, 30, 8, 24, -27, 7, -5,
    -- layer=1 filter=22 channel=23
    -16, 28, -4, 12, 0, 1, 15, -2, 18,
    -- layer=1 filter=22 channel=24
    -5, 30, -14, 6, 14, -28, 29, 25, -5,
    -- layer=1 filter=22 channel=25
    -3, 16, 5, -8, -14, 14, -42, -36, -23,
    -- layer=1 filter=22 channel=26
    -6, 16, -10, -10, -18, 19, 1, 24, 9,
    -- layer=1 filter=22 channel=27
    23, -22, 14, 16, 1, -16, -14, -23, -1,
    -- layer=1 filter=22 channel=28
    18, -53, -40, -11, -84, -66, -41, -103, -87,
    -- layer=1 filter=22 channel=29
    41, -6, 15, 33, 20, 9, -5, 14, -12,
    -- layer=1 filter=22 channel=30
    2, 27, 17, 15, -14, -3, 15, -22, 0,
    -- layer=1 filter=22 channel=31
    9, -3, -17, 16, 18, -9, 0, 5, -28,
    -- layer=1 filter=23 channel=0
    -6, 18, 14, 11, 15, 5, -18, -12, -24,
    -- layer=1 filter=23 channel=1
    -15, 19, -9, 23, 11, 1, -13, -1, 24,
    -- layer=1 filter=23 channel=2
    62, 18, 8, 76, 68, 41, 15, 46, 22,
    -- layer=1 filter=23 channel=3
    -27, -19, 16, -6, 5, -5, 24, 12, -23,
    -- layer=1 filter=23 channel=4
    17, 36, 35, 15, 25, 37, 43, 15, -4,
    -- layer=1 filter=23 channel=5
    27, 41, 13, 75, 47, 64, 32, 59, 50,
    -- layer=1 filter=23 channel=6
    72, 79, 67, 108, 90, 110, 54, 100, 50,
    -- layer=1 filter=23 channel=7
    -25, -33, -29, -35, -47, -15, -22, -53, 3,
    -- layer=1 filter=23 channel=8
    -15, -27, -8, -2, 3, -1, -2, -11, 11,
    -- layer=1 filter=23 channel=9
    22, 40, 60, 33, 46, 35, 54, 54, 54,
    -- layer=1 filter=23 channel=10
    29, 64, 34, 61, 20, 14, 80, 76, 65,
    -- layer=1 filter=23 channel=11
    -28, 7, -23, -21, 8, 5, -7, 17, -12,
    -- layer=1 filter=23 channel=12
    -17, 25, -18, 7, -20, 14, 32, 20, -23,
    -- layer=1 filter=23 channel=13
    25, 20, 49, 22, 23, 40, 31, -1, 13,
    -- layer=1 filter=23 channel=14
    4, 9, -9, -15, -19, -1, 7, -18, -21,
    -- layer=1 filter=23 channel=15
    11, 35, 32, 33, 33, 3, 26, 9, 9,
    -- layer=1 filter=23 channel=16
    -23, -17, -9, -5, 10, 15, 15, -24, -22,
    -- layer=1 filter=23 channel=17
    -11, -4, 1, 21, -2, 29, 5, -7, -4,
    -- layer=1 filter=23 channel=18
    2, 27, -12, 6, -4, -3, 11, -6, 24,
    -- layer=1 filter=23 channel=19
    20, 4, -19, 7, 5, -14, 2, 12, -18,
    -- layer=1 filter=23 channel=20
    28, 4, -9, 36, 25, 26, -11, -3, 13,
    -- layer=1 filter=23 channel=21
    13, 18, -6, 11, 35, 2, 13, 38, 21,
    -- layer=1 filter=23 channel=22
    7, 0, 9, 5, -5, 2, -12, 3, -15,
    -- layer=1 filter=23 channel=23
    11, 13, 34, 23, 12, 32, 31, -2, -7,
    -- layer=1 filter=23 channel=24
    10, 25, -24, 10, -1, 23, -17, -12, 17,
    -- layer=1 filter=23 channel=25
    4, 13, 17, 20, -3, 9, 24, 31, 9,
    -- layer=1 filter=23 channel=26
    -27, -11, -33, 0, 19, -17, -12, -3, 20,
    -- layer=1 filter=23 channel=27
    -19, 4, 17, -24, -25, -17, -17, 24, 10,
    -- layer=1 filter=23 channel=28
    2, -27, -46, -39, -101, -76, -40, -101, -34,
    -- layer=1 filter=23 channel=29
    0, -17, -6, 2, -17, -26, -22, 17, -6,
    -- layer=1 filter=23 channel=30
    -14, 3, 10, -10, 10, -17, 21, 24, 10,
    -- layer=1 filter=23 channel=31
    -43, -38, -11, -12, -33, -43, -16, -14, 4,
    -- layer=1 filter=24 channel=0
    -28, -14, -11, 3, -2, 6, 14, 6, 9,
    -- layer=1 filter=24 channel=1
    -28, -22, 12, -19, -55, -49, 21, 19, 14,
    -- layer=1 filter=24 channel=2
    -21, -52, -67, 0, -28, -5, 58, 28, 8,
    -- layer=1 filter=24 channel=3
    11, 37, 41, -60, -17, -2, -74, -86, -76,
    -- layer=1 filter=24 channel=4
    42, 16, 15, 10, 7, 3, -17, -25, 28,
    -- layer=1 filter=24 channel=5
    19, -10, 34, 14, 11, -12, -4, 8, 24,
    -- layer=1 filter=24 channel=6
    -6, -39, -62, 36, -6, 0, 64, 7, 12,
    -- layer=1 filter=24 channel=7
    -85, -80, -81, -132, -87, -71, -96, -86, -65,
    -- layer=1 filter=24 channel=8
    -23, -8, -40, 2, -4, 5, -7, 28, -13,
    -- layer=1 filter=24 channel=9
    18, 39, 1, 24, 49, 14, 17, 40, 19,
    -- layer=1 filter=24 channel=10
    93, 65, 57, 11, -15, 6, -80, -84, -83,
    -- layer=1 filter=24 channel=11
    -25, -15, -14, 12, -3, -14, 17, -1, 10,
    -- layer=1 filter=24 channel=12
    -2, 2, -1, -6, -22, -53, 27, 14, -36,
    -- layer=1 filter=24 channel=13
    -13, -8, -24, -18, 9, 1, -10, -8, 11,
    -- layer=1 filter=24 channel=14
    11, 10, 23, -23, -60, 30, -22, 6, -15,
    -- layer=1 filter=24 channel=15
    69, 75, 67, 23, 9, 23, 6, 30, 17,
    -- layer=1 filter=24 channel=16
    34, 16, 2, -30, -23, -35, 21, -18, -32,
    -- layer=1 filter=24 channel=17
    -36, -9, -24, 44, 41, 16, 7, 0, 25,
    -- layer=1 filter=24 channel=18
    58, 83, 83, -13, 18, 14, -17, -23, -35,
    -- layer=1 filter=24 channel=19
    -12, 20, 26, 11, -14, -14, 2, 15, -21,
    -- layer=1 filter=24 channel=20
    27, -13, 9, -40, -42, -68, 0, -29, -9,
    -- layer=1 filter=24 channel=21
    94, 58, 54, 7, 52, 35, -33, -3, 0,
    -- layer=1 filter=24 channel=22
    3, 10, -10, 5, -19, -37, 18, 16, -15,
    -- layer=1 filter=24 channel=23
    -19, -60, -14, 1, -7, 22, -6, -10, 5,
    -- layer=1 filter=24 channel=24
    -13, 8, -7, -33, -26, -43, 19, -30, -3,
    -- layer=1 filter=24 channel=25
    -27, -5, 4, -27, 18, -25, -8, -31, 7,
    -- layer=1 filter=24 channel=26
    -7, 4, -13, 0, 17, 4, 46, 49, 30,
    -- layer=1 filter=24 channel=27
    13, 24, 7, 21, 9, -19, 1, 9, -22,
    -- layer=1 filter=24 channel=28
    -35, -51, -77, -51, -73, -86, 13, -53, -99,
    -- layer=1 filter=24 channel=29
    4, 0, 23, 17, -10, -13, -22, 15, -29,
    -- layer=1 filter=24 channel=30
    21, 5, 16, -11, -31, -51, -6, -35, -9,
    -- layer=1 filter=24 channel=31
    38, 11, 30, 17, 4, -13, 7, 11, -21,
    -- layer=1 filter=25 channel=0
    41, 47, 48, -9, 31, 46, 1, 2, 24,
    -- layer=1 filter=25 channel=1
    -12, -4, 9, -6, -25, 36, 12, 5, 15,
    -- layer=1 filter=25 channel=2
    -75, -68, 33, -31, -38, -23, -6, 14, 34,
    -- layer=1 filter=25 channel=3
    -12, -11, 9, 2, 17, -3, 3, 41, 25,
    -- layer=1 filter=25 channel=4
    -22, -88, 11, 16, -25, 7, 0, -5, 43,
    -- layer=1 filter=25 channel=5
    62, 70, 33, 118, 73, 65, 61, 56, 56,
    -- layer=1 filter=25 channel=6
    -59, -26, 31, -26, 23, 0, 7, 20, -32,
    -- layer=1 filter=25 channel=7
    -32, 4, 35, 9, 85, 8, 59, 9, 31,
    -- layer=1 filter=25 channel=8
    29, 17, 10, 9, 21, 0, 11, -10, 3,
    -- layer=1 filter=25 channel=9
    61, 82, 100, 50, 87, 71, 20, 44, 64,
    -- layer=1 filter=25 channel=10
    -56, -37, -9, -36, -28, -56, -59, -61, -24,
    -- layer=1 filter=25 channel=11
    24, -4, 30, -2, 11, 21, -1, -8, -2,
    -- layer=1 filter=25 channel=12
    -50, -29, 10, -43, -4, 2, -41, 19, 15,
    -- layer=1 filter=25 channel=13
    -83, -62, -19, -13, 6, 30, 8, 49, 71,
    -- layer=1 filter=25 channel=14
    3, 12, 19, 0, 31, 0, 23, 32, 25,
    -- layer=1 filter=25 channel=15
    -68, -87, -58, -34, -34, -28, -13, 6, 32,
    -- layer=1 filter=25 channel=16
    -11, -2, -3, -34, 4, -9, 12, -6, 39,
    -- layer=1 filter=25 channel=17
    -29, -24, 9, -57, 12, 28, 2, 43, 42,
    -- layer=1 filter=25 channel=18
    -5, -59, -38, -3, -64, -47, -99, -86, -112,
    -- layer=1 filter=25 channel=19
    -7, 3, 17, -24, -2, -4, -8, 18, -1,
    -- layer=1 filter=25 channel=20
    -17, -17, -21, -33, -14, 17, 1, -10, 23,
    -- layer=1 filter=25 channel=21
    120, 82, 102, 72, 75, 45, 14, 32, 8,
    -- layer=1 filter=25 channel=22
    13, 15, 41, 9, -10, 26, -18, -17, 6,
    -- layer=1 filter=25 channel=23
    -49, -41, -12, -37, -8, 44, 18, 23, 68,
    -- layer=1 filter=25 channel=24
    -37, -25, -16, -15, -13, 35, 8, 30, 15,
    -- layer=1 filter=25 channel=25
    -9, -8, 25, 0, 21, 16, -2, -11, 17,
    -- layer=1 filter=25 channel=26
    38, 38, 31, 13, 39, -2, -17, -16, -20,
    -- layer=1 filter=25 channel=27
    -11, 15, -7, 2, 14, 22, 23, 4, -25,
    -- layer=1 filter=25 channel=28
    -36, -119, -20, 9, -100, -32, 25, -37, 39,
    -- layer=1 filter=25 channel=29
    -16, 32, 8, 22, 36, 42, -27, -13, 5,
    -- layer=1 filter=25 channel=30
    -4, -3, -7, 4, -29, 25, 0, -24, 0,
    -- layer=1 filter=25 channel=31
    38, 45, 66, 10, 47, 61, 23, 74, 36,
    -- layer=1 filter=26 channel=0
    -15, -14, -29, -1, -32, -13, -4, -19, 38,
    -- layer=1 filter=26 channel=1
    -7, -36, -27, 7, -8, -19, 31, -10, 30,
    -- layer=1 filter=26 channel=2
    27, -53, -52, 75, 0, 16, 67, 55, 44,
    -- layer=1 filter=26 channel=3
    -38, -32, -31, -23, -66, -33, -1, -27, -4,
    -- layer=1 filter=26 channel=4
    5, -18, -40, 32, 10, -32, 32, 24, -25,
    -- layer=1 filter=26 channel=5
    -15, 27, 21, 23, 29, 39, -16, 39, 11,
    -- layer=1 filter=26 channel=6
    -11, -82, -73, 9, -19, -12, 72, 43, 41,
    -- layer=1 filter=26 channel=7
    -85, -17, -51, -15, 24, -34, 9, 35, 93,
    -- layer=1 filter=26 channel=8
    11, 66, 39, 30, 24, 27, 53, 25, 30,
    -- layer=1 filter=26 channel=9
    -24, -7, -13, -25, 18, 21, -10, -30, 13,
    -- layer=1 filter=26 channel=10
    7, -56, -37, -35, -93, -51, -4, -51, -26,
    -- layer=1 filter=26 channel=11
    18, 34, -8, 3, 13, 21, 10, -34, -30,
    -- layer=1 filter=26 channel=12
    -18, -48, -37, 6, -6, -4, 48, 0, -5,
    -- layer=1 filter=26 channel=13
    -51, -69, -50, -41, -84, -68, -29, -46, -17,
    -- layer=1 filter=26 channel=14
    -18, -6, -34, -11, -1, 5, 53, 32, 69,
    -- layer=1 filter=26 channel=15
    -3, -43, -30, 20, 0, -34, 21, -3, -34,
    -- layer=1 filter=26 channel=16
    6, -31, 0, 10, -4, -22, 15, -15, 23,
    -- layer=1 filter=26 channel=17
    -11, -53, -36, 0, 11, 0, 75, 30, 45,
    -- layer=1 filter=26 channel=18
    8, 30, 40, -12, 14, 16, 32, 54, 58,
    -- layer=1 filter=26 channel=19
    -18, -32, -13, 17, 9, -9, 22, -22, 16,
    -- layer=1 filter=26 channel=20
    21, -10, -23, 8, -5, -21, 70, 51, -5,
    -- layer=1 filter=26 channel=21
    34, -9, -47, -46, -13, -8, -4, -48, 13,
    -- layer=1 filter=26 channel=22
    -12, -29, -23, -4, -26, 12, 18, -12, -5,
    -- layer=1 filter=26 channel=23
    -66, -55, -76, -34, -29, -49, 20, 4, -12,
    -- layer=1 filter=26 channel=24
    -16, -11, -42, 12, -34, -6, 15, -8, -20,
    -- layer=1 filter=26 channel=25
    14, 4, -10, 28, 27, 39, 29, 22, -17,
    -- layer=1 filter=26 channel=26
    2, 37, 34, 11, 24, 4, -10, -9, 0,
    -- layer=1 filter=26 channel=27
    -19, -2, 10, -21, 19, 17, -6, -19, -10,
    -- layer=1 filter=26 channel=28
    14, -36, -24, 65, -16, -56, 85, 55, -11,
    -- layer=1 filter=26 channel=29
    -6, -23, -17, -16, -5, -20, 2, -12, 3,
    -- layer=1 filter=26 channel=30
    -9, 2, -37, -3, -39, -39, 19, -10, 0,
    -- layer=1 filter=26 channel=31
    -2, 17, 28, -30, 41, -2, -2, -26, 0,
    -- layer=1 filter=27 channel=0
    -6, -4, 0, -21, -46, 32, 0, -32, 3,
    -- layer=1 filter=27 channel=1
    21, -2, -30, 20, 10, -16, 16, -17, -40,
    -- layer=1 filter=27 channel=2
    60, 51, 18, 16, 43, 16, 54, 43, 33,
    -- layer=1 filter=27 channel=3
    16, -4, 15, 24, -40, -6, -7, -21, -6,
    -- layer=1 filter=27 channel=4
    42, 11, -1, 47, 25, -26, 25, 39, -26,
    -- layer=1 filter=27 channel=5
    -46, -2, 21, -23, 12, 13, 27, -23, -9,
    -- layer=1 filter=27 channel=6
    15, -48, -46, -31, -36, -36, -6, -21, 33,
    -- layer=1 filter=27 channel=7
    -16, -12, 67, 21, -2, 45, -37, -16, 24,
    -- layer=1 filter=27 channel=8
    -4, 17, -1, -4, 16, 40, 6, 16, 5,
    -- layer=1 filter=27 channel=9
    -38, 28, 17, -48, 19, 61, -12, -4, 24,
    -- layer=1 filter=27 channel=10
    -36, -20, -6, -64, -40, 46, -54, -61, -8,
    -- layer=1 filter=27 channel=11
    0, 7, 1, 30, -11, 6, 24, 1, 12,
    -- layer=1 filter=27 channel=12
    -10, -7, -30, 39, 0, -35, 41, 23, -34,
    -- layer=1 filter=27 channel=13
    4, 3, 10, 41, -1, -41, 23, -8, -20,
    -- layer=1 filter=27 channel=14
    -10, -4, -16, 17, -34, -7, 18, -36, -11,
    -- layer=1 filter=27 channel=15
    15, -6, 8, 40, -17, -30, 23, -6, -16,
    -- layer=1 filter=27 channel=16
    32, -8, -13, 36, -13, -20, 35, -24, -37,
    -- layer=1 filter=27 channel=17
    37, -40, -34, 0, -25, -4, 36, -3, -15,
    -- layer=1 filter=27 channel=18
    14, -36, -73, -34, -33, -49, 2, -43, -30,
    -- layer=1 filter=27 channel=19
    -2, 14, -4, 28, -23, -12, -5, 5, -6,
    -- layer=1 filter=27 channel=20
    11, 14, -21, -2, 6, -12, 0, 2, -29,
    -- layer=1 filter=27 channel=21
    -11, 27, 66, -43, -4, 8, -21, -19, 14,
    -- layer=1 filter=27 channel=22
    31, -1, 22, 38, -20, 0, 5, -21, -6,
    -- layer=1 filter=27 channel=23
    18, 30, -21, 50, 0, -9, 40, 26, -31,
    -- layer=1 filter=27 channel=24
    -2, -22, -26, 30, -21, 1, 36, 0, -32,
    -- layer=1 filter=27 channel=25
    -28, -12, -22, 6, -39, -12, -48, -27, 3,
    -- layer=1 filter=27 channel=26
    -3, 16, -10, 18, 1, 21, 1, 15, 10,
    -- layer=1 filter=27 channel=27
    6, 26, -7, -27, -17, 3, -21, -20, 19,
    -- layer=1 filter=27 channel=28
    144, 120, 37, 97, 102, 94, 108, 108, 80,
    -- layer=1 filter=27 channel=29
    25, -27, -17, -14, -13, -24, 19, -17, 10,
    -- layer=1 filter=27 channel=30
    -7, 3, -21, 29, -21, -35, 26, 18, -12,
    -- layer=1 filter=27 channel=31
    -13, -4, 46, -4, -44, 30, -24, -15, 61,
    -- layer=1 filter=28 channel=0
    15, -25, -21, 16, 7, 15, 11, 7, -7,
    -- layer=1 filter=28 channel=1
    -11, -15, 20, -18, -31, 3, -26, 2, 1,
    -- layer=1 filter=28 channel=2
    -23, 23, -17, -21, 0, 11, 18, -13, 2,
    -- layer=1 filter=28 channel=3
    18, -13, -5, -6, -21, -5, 0, -21, -25,
    -- layer=1 filter=28 channel=4
    -34, -35, -6, 0, -21, 2, -7, -1, -35,
    -- layer=1 filter=28 channel=5
    -35, -17, 17, 0, 13, 15, -11, -1, 0,
    -- layer=1 filter=28 channel=6
    -17, 6, 11, -14, 15, -5, -5, 4, 7,
    -- layer=1 filter=28 channel=7
    -23, -11, 10, 9, 15, 10, 11, -31, 10,
    -- layer=1 filter=28 channel=8
    21, -20, 27, 11, 7, -28, 17, 6, -13,
    -- layer=1 filter=28 channel=9
    14, 31, 24, -17, -7, 15, -17, -13, 0,
    -- layer=1 filter=28 channel=10
    -26, 12, 32, 12, 14, -4, -8, -15, 5,
    -- layer=1 filter=28 channel=11
    -16, -7, 22, 10, -2, -25, -28, -28, -16,
    -- layer=1 filter=28 channel=12
    -22, 7, 2, 1, 13, 5, -7, -15, -2,
    -- layer=1 filter=28 channel=13
    -8, 16, -15, 15, -25, -1, -27, -1, -36,
    -- layer=1 filter=28 channel=14
    -7, -26, -8, 0, -15, -1, -29, -28, -21,
    -- layer=1 filter=28 channel=15
    -12, 18, -10, -3, -34, 6, -22, -28, -29,
    -- layer=1 filter=28 channel=16
    6, 0, -8, -6, 6, -12, 11, -5, -20,
    -- layer=1 filter=28 channel=17
    -5, -13, 13, 22, -10, -8, -2, 9, 18,
    -- layer=1 filter=28 channel=18
    -16, 14, 0, -25, 1, 8, -5, -18, 16,
    -- layer=1 filter=28 channel=19
    -22, -13, 8, 11, 5, -1, -10, 15, 13,
    -- layer=1 filter=28 channel=20
    -12, 12, -19, -13, 15, 20, -26, -25, -7,
    -- layer=1 filter=28 channel=21
    18, -29, -10, 15, 1, 14, 6, -25, -2,
    -- layer=1 filter=28 channel=22
    -20, -27, -23, -29, 8, -26, 3, -9, -35,
    -- layer=1 filter=28 channel=23
    -12, -8, -18, 23, -15, -3, -27, -34, 13,
    -- layer=1 filter=28 channel=24
    0, -31, 16, -3, 8, -17, -20, -6, -9,
    -- layer=1 filter=28 channel=25
    -28, -6, -15, 14, 5, 21, 5, -11, -6,
    -- layer=1 filter=28 channel=26
    -10, 14, -16, -27, 15, -20, 17, -7, 10,
    -- layer=1 filter=28 channel=27
    -14, 23, -3, -23, -5, -24, -15, 23, -16,
    -- layer=1 filter=28 channel=28
    12, -29, 15, 6, 5, -28, -21, 3, 6,
    -- layer=1 filter=28 channel=29
    -25, 8, 17, -14, -19, 20, -11, -26, -24,
    -- layer=1 filter=28 channel=30
    -8, -9, -28, 0, -2, -18, 17, -17, -20,
    -- layer=1 filter=28 channel=31
    -24, 0, 18, -18, 9, -10, 1, -10, -5,
    -- layer=1 filter=29 channel=0
    20, 31, 11, 51, 19, 10, 14, 22, -13,
    -- layer=1 filter=29 channel=1
    -30, -40, -35, 7, -50, -24, -2, -30, -49,
    -- layer=1 filter=29 channel=2
    15, -10, -15, -36, -60, -53, -13, -60, -55,
    -- layer=1 filter=29 channel=3
    41, 20, 30, 29, 15, -2, -18, 8, -21,
    -- layer=1 filter=29 channel=4
    21, 27, 41, 2, 13, 61, 33, -31, 33,
    -- layer=1 filter=29 channel=5
    5, -18, -35, 26, -9, -1, 10, -40, -41,
    -- layer=1 filter=29 channel=6
    9, -24, 12, -73, -31, -61, -46, -61, -60,
    -- layer=1 filter=29 channel=7
    -33, -12, -9, -11, -7, 15, -9, 7, 11,
    -- layer=1 filter=29 channel=8
    12, 23, 30, -26, 1, 13, 23, -13, -7,
    -- layer=1 filter=29 channel=9
    73, 58, 39, 47, 55, 45, 24, 54, 22,
    -- layer=1 filter=29 channel=10
    -29, -33, 2, -19, -30, -31, -17, -37, -43,
    -- layer=1 filter=29 channel=11
    10, -12, -30, 23, 3, -26, 1, 24, 10,
    -- layer=1 filter=29 channel=12
    -30, 14, 16, -5, -32, -4, -17, -32, -14,
    -- layer=1 filter=29 channel=13
    -31, -23, -25, 19, -45, -20, -12, -33, 21,
    -- layer=1 filter=29 channel=14
    -28, -3, -41, -8, -38, -22, -15, -3, -19,
    -- layer=1 filter=29 channel=15
    -19, -7, -30, -62, -61, -25, -65, -70, -69,
    -- layer=1 filter=29 channel=16
    -5, -9, -21, 4, -22, 3, -4, -15, -30,
    -- layer=1 filter=29 channel=17
    24, 22, -13, 0, -13, 6, 11, -11, 3,
    -- layer=1 filter=29 channel=18
    -4, -46, -17, -19, -57, -27, -61, -60, -39,
    -- layer=1 filter=29 channel=19
    1, 22, 7, -22, 21, 7, -22, -22, -14,
    -- layer=1 filter=29 channel=20
    0, 34, 26, -3, -8, 1, 8, -13, 12,
    -- layer=1 filter=29 channel=21
    56, 38, 58, 70, 77, 59, 41, 33, 44,
    -- layer=1 filter=29 channel=22
    56, 30, 44, 37, 26, 35, 60, 12, 12,
    -- layer=1 filter=29 channel=23
    -12, -28, -11, 31, -38, 37, 0, -15, -15,
    -- layer=1 filter=29 channel=24
    -13, -5, 6, 5, -29, -30, 6, 0, -27,
    -- layer=1 filter=29 channel=25
    -13, -1, -22, 5, -25, 25, -15, 9, 11,
    -- layer=1 filter=29 channel=26
    56, 53, 13, 16, 47, 6, 45, 7, 33,
    -- layer=1 filter=29 channel=27
    20, 14, 13, 14, 23, -27, 10, -16, 13,
    -- layer=1 filter=29 channel=28
    10, 6, 13, -7, 9, -29, 18, 20, 35,
    -- layer=1 filter=29 channel=29
    2, 22, 9, 6, 29, 23, 19, 7, -13,
    -- layer=1 filter=29 channel=30
    -7, 22, -21, 28, -1, 11, -7, -10, 21,
    -- layer=1 filter=29 channel=31
    7, 18, -1, -6, 22, 31, 38, 35, 13,
    -- layer=1 filter=30 channel=0
    10, 0, 11, -11, -12, 9, 0, 7, 21,
    -- layer=1 filter=30 channel=1
    -42, -29, -27, -22, -21, -16, 4, -16, -45,
    -- layer=1 filter=30 channel=2
    14, 54, -2, 9, 8, -15, 16, 0, 30,
    -- layer=1 filter=30 channel=3
    -25, -4, -3, -18, -19, 28, 13, 12, 8,
    -- layer=1 filter=30 channel=4
    21, 12, 34, 41, 64, 39, -10, 17, 35,
    -- layer=1 filter=30 channel=5
    42, 24, 4, -25, 2, 16, -11, -22, -6,
    -- layer=1 filter=30 channel=6
    0, 25, -11, 34, 7, 29, 28, 8, 0,
    -- layer=1 filter=30 channel=7
    46, 14, 10, 40, 48, 64, 43, 68, -5,
    -- layer=1 filter=30 channel=8
    20, -20, 6, 38, 47, 18, 18, 17, 3,
    -- layer=1 filter=30 channel=9
    31, 33, 32, 22, 7, -23, -1, -13, 39,
    -- layer=1 filter=30 channel=10
    -23, 19, 36, -10, -39, 3, 5, -16, 20,
    -- layer=1 filter=30 channel=11
    22, 15, 1, 8, -21, 5, 8, 0, 15,
    -- layer=1 filter=30 channel=12
    -47, -18, -29, -29, -7, 5, 0, -7, -7,
    -- layer=1 filter=30 channel=13
    -9, 7, 3, 2, 0, 10, -15, 2, -13,
    -- layer=1 filter=30 channel=14
    10, 0, -35, -23, -22, -5, -18, -53, -7,
    -- layer=1 filter=30 channel=15
    12, -9, 3, 0, -3, 4, 11, 20, 20,
    -- layer=1 filter=30 channel=16
    -48, -10, -13, -27, 2, -10, 0, -17, 0,
    -- layer=1 filter=30 channel=17
    -50, -32, -27, -48, -23, -29, -49, -41, -14,
    -- layer=1 filter=30 channel=18
    89, 77, 29, 66, 85, 50, -8, 61, 10,
    -- layer=1 filter=30 channel=19
    13, -10, 8, -7, 17, -1, 19, 1, -4,
    -- layer=1 filter=30 channel=20
    -21, -8, -15, -3, 5, -27, -14, 5, -3,
    -- layer=1 filter=30 channel=21
    -22, -4, 37, -20, -19, -31, 1, 34, 15,
    -- layer=1 filter=30 channel=22
    -28, -6, 15, -25, 1, 18, -15, -15, 18,
    -- layer=1 filter=30 channel=23
    -31, -12, 11, -63, -1, -24, -19, -31, -56,
    -- layer=1 filter=30 channel=24
    -6, -1, 27, -26, -19, -19, -4, -17, -10,
    -- layer=1 filter=30 channel=25
    -1, 2, 21, 46, -23, -21, 38, -24, 23,
    -- layer=1 filter=30 channel=26
    25, 21, 17, 31, 0, 6, 35, 31, 5,
    -- layer=1 filter=30 channel=27
    -19, 11, 29, 0, -4, 0, 2, 3, 5,
    -- layer=1 filter=30 channel=28
    33, 85, 72, 57, 98, 90, 66, 92, 92,
    -- layer=1 filter=30 channel=29
    -20, -12, 9, -1, 6, -14, 9, 19, -12,
    -- layer=1 filter=30 channel=30
    -37, -9, -15, -27, -2, -17, 8, -9, -16,
    -- layer=1 filter=30 channel=31
    37, 14, 20, 34, 3, 29, 52, 28, 27,
    -- layer=1 filter=31 channel=0
    -7, -36, -42, -9, -9, -30, -4, -50, -54,
    -- layer=1 filter=31 channel=1
    -4, 35, -1, -5, -6, 7, 14, 32, -13,
    -- layer=1 filter=31 channel=2
    28, 37, 4, 56, -1, 1, 19, -3, -20,
    -- layer=1 filter=31 channel=3
    18, -23, 18, 16, 0, -2, -15, -7, -3,
    -- layer=1 filter=31 channel=4
    47, 50, 26, 30, 34, 53, 30, 19, 21,
    -- layer=1 filter=31 channel=5
    11, -1, 9, 7, 23, 26, 47, 0, 23,
    -- layer=1 filter=31 channel=6
    5, 18, 60, 3, 25, 14, 11, -13, 5,
    -- layer=1 filter=31 channel=7
    -11, -38, -60, 15, -35, -3, 33, 0, 21,
    -- layer=1 filter=31 channel=8
    -36, -31, -44, 3, 3, -27, 25, -29, 8,
    -- layer=1 filter=31 channel=9
    21, 11, 10, 40, -20, 6, 85, 58, 27,
    -- layer=1 filter=31 channel=10
    14, 26, 15, 18, 9, -7, 23, 12, 26,
    -- layer=1 filter=31 channel=11
    10, -1, 39, 20, 49, 35, 32, 12, 44,
    -- layer=1 filter=31 channel=12
    11, 28, 5, 23, -2, -2, 4, 22, -20,
    -- layer=1 filter=31 channel=13
    55, 46, 63, 33, 72, 72, 73, 74, 93,
    -- layer=1 filter=31 channel=14
    -23, -10, -3, -1, -17, 2, -26, -22, -23,
    -- layer=1 filter=31 channel=15
    58, 80, 77, 78, 53, 83, 48, 71, 76,
    -- layer=1 filter=31 channel=16
    -20, 22, -3, 9, 25, 3, 6, -4, -16,
    -- layer=1 filter=31 channel=17
    12, -33, 2, 0, -29, -24, -12, -4, -43,
    -- layer=1 filter=31 channel=18
    -25, -38, -6, -27, -28, -58, -35, -30, -25,
    -- layer=1 filter=31 channel=19
    11, 16, 2, 10, 6, 15, 0, 10, 4,
    -- layer=1 filter=31 channel=20
    -26, -19, 18, -12, 7, 3, -34, -32, -34,
    -- layer=1 filter=31 channel=21
    -29, -32, -32, 14, -34, -39, 1, 3, -31,
    -- layer=1 filter=31 channel=22
    -27, -24, -37, 0, -3, 2, -41, -2, -36,
    -- layer=1 filter=31 channel=23
    52, 9, 8, 23, 15, 14, -1, 8, 60,
    -- layer=1 filter=31 channel=24
    1, 25, 20, 28, 7, 8, 2, -9, 2,
    -- layer=1 filter=31 channel=25
    4, -14, -48, 12, -8, -23, -20, -36, -32,
    -- layer=1 filter=31 channel=26
    14, -16, -24, 21, -27, -25, 12, -34, -27,
    -- layer=1 filter=31 channel=27
    18, 3, 15, 17, 2, 2, -24, 12, -16,
    -- layer=1 filter=31 channel=28
    -54, -75, -32, -10, -35, -45, 8, -23, -51,
    -- layer=1 filter=31 channel=29
    -8, 6, -8, 14, -14, -2, -3, -24, -4,
    -- layer=1 filter=31 channel=30
    0, 9, 24, 0, 15, -19, 10, -27, -24,
    -- layer=1 filter=31 channel=31
    -32, -6, -2, 1, -21, -9, 12, 21, -11,

    others => 0);
end iwght_package;

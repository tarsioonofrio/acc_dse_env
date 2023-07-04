library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=2
    4331, -3459, -6164, 777, -14, 2217, 658, -947, 10298, 8129, 8419, -2303, 5010, -837, 251, -5254, 8553, 3141, 969, -7391, -891, -4196, 6110, 11004, 489, 10541, 4231, -2454, -2561, 5015, 6949, -1095, -1251, 1641, -875, -4828, 4576, -1652, -2726, 1795, -414, 4834, 3338, -2116, 4449, -1291, 2046, 3074, -1380, 8480, 4697, 4581, -3046, 3881, -824, 9412, -799, -2602, 1476, 172, 5934, -1023, 6409, -1754,

    -- weights
    -- layer=2 filter=0 channel=0
    -20, -4, 5, 0, -28, -53, 9, -21, -23,
    -- layer=2 filter=0 channel=1
    11, -11, 9, 5, -18, -6, -1, 15, -21,
    -- layer=2 filter=0 channel=2
    4, -23, 9, -20, -26, -31, -23, -39, -26,
    -- layer=2 filter=0 channel=3
    11, -27, 0, -12, 0, -24, -1, 0, -15,
    -- layer=2 filter=0 channel=4
    0, -22, -17, -7, -3, 21, -8, -4, -32,
    -- layer=2 filter=0 channel=5
    8, -20, 17, 7, 10, 2, 8, 25, -1,
    -- layer=2 filter=0 channel=6
    -26, 26, -8, 7, 34, -11, -59, -24, -57,
    -- layer=2 filter=0 channel=7
    -37, -13, -11, -14, -27, 22, 3, -34, -9,
    -- layer=2 filter=0 channel=8
    -16, -6, -59, 6, 10, -15, -12, 16, -4,
    -- layer=2 filter=0 channel=9
    -3, 9, 27, -37, -9, 12, 26, -47, -27,
    -- layer=2 filter=0 channel=10
    -2, -9, 8, 4, 11, -6, -1, 8, 0,
    -- layer=2 filter=0 channel=11
    8, 7, 10, 7, 12, 11, -9, -20, -3,
    -- layer=2 filter=0 channel=12
    10, 11, -1, 5, -2, 5, -9, 12, -3,
    -- layer=2 filter=0 channel=13
    25, 12, 9, 22, 36, 30, -1, 18, 4,
    -- layer=2 filter=0 channel=14
    -1, -14, 29, 12, 14, 16, 2, -2, -1,
    -- layer=2 filter=0 channel=15
    10, -15, -1, -1, 7, -11, 26, -9, 2,
    -- layer=2 filter=0 channel=16
    -3, -14, -12, 16, 10, 5, -6, 4, 2,
    -- layer=2 filter=0 channel=17
    -4, 10, -12, 15, 7, -5, 5, 21, 5,
    -- layer=2 filter=0 channel=18
    18, 6, 2, 13, 37, 16, -11, 10, 16,
    -- layer=2 filter=0 channel=19
    -15, -22, 1, -10, -21, -8, -3, 0, 5,
    -- layer=2 filter=0 channel=20
    4, -13, 18, 14, 27, 0, 14, -5, -3,
    -- layer=2 filter=0 channel=21
    -28, -9, -1, -41, -10, -22, -32, -18, -42,
    -- layer=2 filter=0 channel=22
    -6, 8, 11, 1, -9, -15, 4, 1, 14,
    -- layer=2 filter=0 channel=23
    6, 3, -6, -6, -12, -27, -17, -36, -45,
    -- layer=2 filter=0 channel=24
    14, 10, -6, 8, 20, 2, 19, -1, 9,
    -- layer=2 filter=0 channel=25
    -1, -4, 10, 10, -6, 15, 9, 15, 3,
    -- layer=2 filter=0 channel=26
    -15, 8, -10, 19, 10, 1, 7, -7, 5,
    -- layer=2 filter=0 channel=27
    -4, -10, -23, -1, 2, -18, -17, 6, -17,
    -- layer=2 filter=0 channel=28
    13, -12, -13, 27, 3, -11, 12, -14, -18,
    -- layer=2 filter=0 channel=29
    -15, -15, 7, 18, 2, 22, 7, 4, -10,
    -- layer=2 filter=0 channel=30
    7, -14, -4, 0, -14, 6, 11, 2, -27,
    -- layer=2 filter=0 channel=31
    24, -6, 21, 6, 24, 26, -24, -18, -4,
    -- layer=2 filter=0 channel=32
    4, 16, -1, -9, -12, -7, 8, 10, -7,
    -- layer=2 filter=0 channel=33
    0, -42, 12, -21, -48, -19, 17, -1, 6,
    -- layer=2 filter=0 channel=34
    -14, 18, -41, -21, -33, -43, -18, 0, -16,
    -- layer=2 filter=0 channel=35
    -7, -4, 17, 8, 38, 27, -29, -7, -25,
    -- layer=2 filter=0 channel=36
    -30, 3, 4, -13, -10, -3, -9, -12, -29,
    -- layer=2 filter=0 channel=37
    -22, -60, -31, -38, -38, -41, 9, -30, -44,
    -- layer=2 filter=0 channel=38
    0, 1, -2, -17, 27, -23, -79, -60, -39,
    -- layer=2 filter=0 channel=39
    5, 2, 8, 27, 31, 29, 4, 9, -3,
    -- layer=2 filter=0 channel=40
    15, -4, -1, 9, 17, 24, 28, 14, 29,
    -- layer=2 filter=0 channel=41
    9, 14, -15, 16, 12, -2, -29, -11, -26,
    -- layer=2 filter=0 channel=42
    -20, -5, 20, -27, -53, -30, -62, -46, -46,
    -- layer=2 filter=0 channel=43
    -7, 3, 10, -5, -10, -45, 3, -11, -23,
    -- layer=2 filter=0 channel=44
    -18, -5, 33, -1, -40, -7, 0, -56, -9,
    -- layer=2 filter=0 channel=45
    16, -1, 8, 50, 10, 21, -6, 34, 14,
    -- layer=2 filter=0 channel=46
    -23, -10, 8, 0, 10, 13, 5, -9, 14,
    -- layer=2 filter=0 channel=47
    8, -13, -10, 7, 1, -2, 16, 18, 16,
    -- layer=2 filter=0 channel=48
    2, 13, -4, 50, -1, -2, 29, 19, -16,
    -- layer=2 filter=0 channel=49
    -8, -18, -12, 3, -27, -64, 10, -14, -43,
    -- layer=2 filter=0 channel=50
    6, -7, -5, -14, -10, 18, 3, 4, -1,
    -- layer=2 filter=0 channel=51
    -16, 5, -12, 0, -9, -4, -4, -18, 5,
    -- layer=2 filter=0 channel=52
    24, 2, 37, 44, 7, 37, 37, -4, -6,
    -- layer=2 filter=0 channel=53
    -15, 25, -23, 11, 8, 0, -26, 18, -11,
    -- layer=2 filter=0 channel=54
    -26, 2, -18, 5, 0, -35, -7, -22, -3,
    -- layer=2 filter=0 channel=55
    19, 9, -9, -5, -14, 2, -13, -5, 13,
    -- layer=2 filter=0 channel=56
    -44, -7, -12, -6, -41, -35, -34, -30, -48,
    -- layer=2 filter=0 channel=57
    13, 9, -6, 14, -15, -23, 9, -20, -26,
    -- layer=2 filter=0 channel=58
    8, -13, 7, 0, 2, -1, -7, -4, 0,
    -- layer=2 filter=0 channel=59
    0, -10, -1, 7, -7, -12, -15, 5, 15,
    -- layer=2 filter=0 channel=60
    35, -10, 10, -12, -33, 7, 8, 6, 6,
    -- layer=2 filter=0 channel=61
    -13, 12, -15, -4, 0, -7, -3, -6, 1,
    -- layer=2 filter=0 channel=62
    -2, -46, -58, -34, 1, -34, 7, -22, -47,
    -- layer=2 filter=0 channel=63
    10, -16, 5, 17, -11, 19, 15, -9, -31,
    -- layer=2 filter=1 channel=0
    -22, 15, 31, -56, 15, 39, -32, 49, 49,
    -- layer=2 filter=1 channel=1
    -13, -3, -5, -15, -4, -31, -12, 12, 13,
    -- layer=2 filter=1 channel=2
    -24, 13, 9, -30, 75, 64, -24, 46, 52,
    -- layer=2 filter=1 channel=3
    -4, 7, 25, -24, 0, 0, 17, -30, 0,
    -- layer=2 filter=1 channel=4
    27, -24, -35, 13, 16, -16, 8, -18, -30,
    -- layer=2 filter=1 channel=5
    6, -7, -9, -9, -3, -33, -6, 0, -2,
    -- layer=2 filter=1 channel=6
    3, 7, -36, 41, 20, -23, 41, -6, -24,
    -- layer=2 filter=1 channel=7
    -13, -15, 18, 26, -23, -30, 1, -26, -20,
    -- layer=2 filter=1 channel=8
    -32, -45, -19, 31, -3, 19, 64, -31, -27,
    -- layer=2 filter=1 channel=9
    -59, -45, -35, 15, -53, -24, 18, -14, 21,
    -- layer=2 filter=1 channel=10
    -8, -10, 12, 14, 12, 9, -2, -4, 7,
    -- layer=2 filter=1 channel=11
    -24, 18, -17, -20, 0, -3, 16, 4, -7,
    -- layer=2 filter=1 channel=12
    -3, -13, -7, -11, 14, 7, -3, -11, 5,
    -- layer=2 filter=1 channel=13
    9, -1, 13, -12, -1, 0, 6, -40, -17,
    -- layer=2 filter=1 channel=14
    -21, 21, 10, -29, 26, 21, -4, 37, 17,
    -- layer=2 filter=1 channel=15
    2, -12, -31, -31, -32, -13, 10, 34, 17,
    -- layer=2 filter=1 channel=16
    4, 11, 0, -6, -7, 3, 7, 7, -12,
    -- layer=2 filter=1 channel=17
    0, -20, -29, -10, -16, -26, -10, 6, 21,
    -- layer=2 filter=1 channel=18
    -6, -4, -9, -5, 5, -20, 20, 3, -31,
    -- layer=2 filter=1 channel=19
    15, -7, -16, 9, -2, 10, -6, 7, -9,
    -- layer=2 filter=1 channel=20
    -9, 4, 22, -34, -4, 23, -16, 22, 19,
    -- layer=2 filter=1 channel=21
    24, -9, -23, 3, -7, -24, 0, 8, 0,
    -- layer=2 filter=1 channel=22
    8, -17, -14, 2, 7, -11, 1, -8, 7,
    -- layer=2 filter=1 channel=23
    -11, -26, -29, 27, 12, -19, 13, 12, -25,
    -- layer=2 filter=1 channel=24
    -12, 4, 2, 4, 2, 10, -20, 21, -14,
    -- layer=2 filter=1 channel=25
    4, 7, 0, -12, -9, 18, -3, 6, -6,
    -- layer=2 filter=1 channel=26
    1, 4, -13, -16, 8, 3, -3, 4, -5,
    -- layer=2 filter=1 channel=27
    4, -10, 0, -13, 0, -5, 14, -9, 4,
    -- layer=2 filter=1 channel=28
    -34, 28, 13, -28, 54, 73, -13, 46, 59,
    -- layer=2 filter=1 channel=29
    21, 34, 8, 12, 31, 13, -14, -14, 22,
    -- layer=2 filter=1 channel=30
    5, -8, -23, -9, -38, -8, 43, 4, 15,
    -- layer=2 filter=1 channel=31
    5, -7, -7, 1, 4, -8, -13, -4, -9,
    -- layer=2 filter=1 channel=32
    19, -19, 0, 7, -10, 1, -11, -19, -25,
    -- layer=2 filter=1 channel=33
    5, 15, -17, -29, 45, 19, -11, 12, -4,
    -- layer=2 filter=1 channel=34
    16, -27, -29, 30, 0, -28, 30, 25, 11,
    -- layer=2 filter=1 channel=35
    2, 6, 0, 0, 0, -18, 12, -12, -3,
    -- layer=2 filter=1 channel=36
    27, 20, -7, 0, -44, -26, 16, 7, -7,
    -- layer=2 filter=1 channel=37
    -7, 21, -15, 41, 27, -33, 21, -5, -22,
    -- layer=2 filter=1 channel=38
    20, -4, -16, 14, 13, -2, 5, 6, 1,
    -- layer=2 filter=1 channel=39
    5, 18, 5, 11, 7, -31, 21, -33, -15,
    -- layer=2 filter=1 channel=40
    0, -9, 0, 16, 38, 8, 25, 7, -32,
    -- layer=2 filter=1 channel=41
    -12, 16, 5, -8, 5, -10, -1, -19, -1,
    -- layer=2 filter=1 channel=42
    -29, 20, 6, 67, 50, 48, 86, 37, 11,
    -- layer=2 filter=1 channel=43
    8, -15, -8, -39, 24, 18, -16, 8, 37,
    -- layer=2 filter=1 channel=44
    0, -10, -8, 0, 23, 16, -17, 0, -42,
    -- layer=2 filter=1 channel=45
    8, 1, -1, 6, -21, -7, 17, -15, -33,
    -- layer=2 filter=1 channel=46
    57, 19, 21, 61, 4, -11, 21, -47, -37,
    -- layer=2 filter=1 channel=47
    -12, 10, 14, -13, 0, -2, 7, 0, -10,
    -- layer=2 filter=1 channel=48
    -37, 18, 13, -66, 4, 13, -32, 31, 37,
    -- layer=2 filter=1 channel=49
    13, -4, -7, 32, -20, -4, 3, -1, -6,
    -- layer=2 filter=1 channel=50
    0, 0, -16, 0, -4, -22, 24, 17, 2,
    -- layer=2 filter=1 channel=51
    16, -20, -18, 0, 9, -7, 7, 11, -5,
    -- layer=2 filter=1 channel=52
    -23, 0, -52, -38, 25, 8, 11, 12, 25,
    -- layer=2 filter=1 channel=53
    47, 11, 4, 39, 39, 5, 46, 1, -21,
    -- layer=2 filter=1 channel=54
    16, 2, 2, 3, -23, -37, 11, 4, 22,
    -- layer=2 filter=1 channel=55
    -12, -16, 16, 4, -16, -3, 2, 18, -17,
    -- layer=2 filter=1 channel=56
    -5, -21, -8, -11, 3, -20, -7, 4, 2,
    -- layer=2 filter=1 channel=57
    19, -3, -31, 26, 4, -12, 38, 37, 29,
    -- layer=2 filter=1 channel=58
    2, 4, -2, -34, -20, -40, -13, 3, 3,
    -- layer=2 filter=1 channel=59
    -2, -11, -11, -17, 17, 14, 1, 1, -7,
    -- layer=2 filter=1 channel=60
    2, 21, -12, 14, 36, 24, 5, 38, 27,
    -- layer=2 filter=1 channel=61
    2, 7, 10, -17, -8, 18, 10, -20, -10,
    -- layer=2 filter=1 channel=62
    -8, 56, 52, -6, 20, -8, -7, 27, -14,
    -- layer=2 filter=1 channel=63
    22, -23, -9, 1, -20, 13, -8, -39, 2,
    -- layer=2 filter=2 channel=0
    -15, 42, 29, 8, 35, 73, 43, 21, 36,
    -- layer=2 filter=2 channel=1
    -8, -10, -4, -9, -13, -4, -5, 4, 19,
    -- layer=2 filter=2 channel=2
    12, 41, 8, 32, 33, 35, 5, 15, 24,
    -- layer=2 filter=2 channel=3
    16, -15, 21, 20, 0, 9, 0, 2, 8,
    -- layer=2 filter=2 channel=4
    50, 5, -9, 17, -15, -26, 5, -13, -44,
    -- layer=2 filter=2 channel=5
    -44, -18, -19, 1, -8, -13, -8, 16, 19,
    -- layer=2 filter=2 channel=6
    43, -9, 3, 31, -8, 10, 21, -17, -17,
    -- layer=2 filter=2 channel=7
    5, -9, -6, 34, -3, 23, 10, -9, -28,
    -- layer=2 filter=2 channel=8
    -12, -26, 14, -39, -26, -15, -9, -30, -27,
    -- layer=2 filter=2 channel=9
    -13, 18, 0, 12, 13, 35, 53, 72, 55,
    -- layer=2 filter=2 channel=10
    -10, 8, -16, -5, -3, 0, -14, -8, 19,
    -- layer=2 filter=2 channel=11
    -20, 5, -5, 9, 20, -1, -7, 31, 16,
    -- layer=2 filter=2 channel=12
    2, 0, -10, 3, -10, 2, 7, 14, -14,
    -- layer=2 filter=2 channel=13
    -12, 8, 17, 3, 5, -2, -32, -23, -29,
    -- layer=2 filter=2 channel=14
    -4, 0, 12, 19, -13, 15, 15, 3, 14,
    -- layer=2 filter=2 channel=15
    3, -4, -7, -1, -24, -4, 0, -8, 12,
    -- layer=2 filter=2 channel=16
    17, -2, 5, 7, -12, -13, 8, -4, -6,
    -- layer=2 filter=2 channel=17
    -11, -6, 1, -18, 14, 9, -3, -2, -5,
    -- layer=2 filter=2 channel=18
    -12, 1, 22, 12, -14, -10, -25, -68, -68,
    -- layer=2 filter=2 channel=19
    -11, 13, 7, 11, 0, 19, -2, 22, -7,
    -- layer=2 filter=2 channel=20
    -12, -15, 0, 11, -6, 3, -2, 8, -12,
    -- layer=2 filter=2 channel=21
    28, -8, 3, 22, -8, -24, -15, -37, -38,
    -- layer=2 filter=2 channel=22
    16, -1, 17, -14, -9, 0, 2, 15, -3,
    -- layer=2 filter=2 channel=23
    20, -1, 0, 27, -19, -8, -11, -5, -9,
    -- layer=2 filter=2 channel=24
    -8, 7, 1, -5, 8, 0, 5, 9, 1,
    -- layer=2 filter=2 channel=25
    -2, 6, 0, 13, 8, -14, -13, 8, 12,
    -- layer=2 filter=2 channel=26
    15, -10, 9, 13, -17, 19, 2, 13, -13,
    -- layer=2 filter=2 channel=27
    9, -26, -1, 2, -8, -21, 8, -9, -9,
    -- layer=2 filter=2 channel=28
    21, 11, 30, 26, 14, 24, 10, 1, -3,
    -- layer=2 filter=2 channel=29
    -26, 1, 21, -17, -7, -2, 18, 2, 21,
    -- layer=2 filter=2 channel=30
    0, 3, -14, -14, 22, 1, -14, 0, 27,
    -- layer=2 filter=2 channel=31
    -10, 22, 31, -2, 8, 4, -19, -18, -35,
    -- layer=2 filter=2 channel=32
    -9, -11, 22, 0, -14, -6, -12, 21, 17,
    -- layer=2 filter=2 channel=33
    35, 79, 60, 42, 54, 26, 37, 28, 20,
    -- layer=2 filter=2 channel=34
    15, 4, -13, 3, 1, -1, -10, 5, -22,
    -- layer=2 filter=2 channel=35
    -10, -1, 15, 0, 14, 2, -9, -15, -16,
    -- layer=2 filter=2 channel=36
    -4, -26, -26, -21, -19, -11, -10, 17, 8,
    -- layer=2 filter=2 channel=37
    45, 8, 43, 28, 3, -29, 9, -46, -15,
    -- layer=2 filter=2 channel=38
    26, -19, -22, 10, 4, -2, -6, -1, -20,
    -- layer=2 filter=2 channel=39
    -11, -2, 20, 25, 40, 38, 9, 35, 8,
    -- layer=2 filter=2 channel=40
    -9, 11, 52, 3, 0, 11, -23, -61, -26,
    -- layer=2 filter=2 channel=41
    -22, -9, 14, -1, -6, 33, -23, 2, 0,
    -- layer=2 filter=2 channel=42
    34, 33, 27, -5, 27, -13, 10, -28, -40,
    -- layer=2 filter=2 channel=43
    5, -1, -35, -8, 14, 2, -23, -3, -32,
    -- layer=2 filter=2 channel=44
    1, 3, -2, 15, 5, -9, 21, -18, -12,
    -- layer=2 filter=2 channel=45
    -3, -13, 17, 22, 34, 12, 28, -7, 3,
    -- layer=2 filter=2 channel=46
    9, 42, 11, 33, 37, 50, 5, -10, 6,
    -- layer=2 filter=2 channel=47
    -5, 15, -4, -8, 5, -11, 5, 14, -15,
    -- layer=2 filter=2 channel=48
    -21, -16, 11, -1, -7, 27, 16, 8, -4,
    -- layer=2 filter=2 channel=49
    9, -5, 0, 17, 18, -18, -13, 3, 11,
    -- layer=2 filter=2 channel=50
    1, -5, 5, 3, -2, -8, 14, 13, 10,
    -- layer=2 filter=2 channel=51
    10, 5, 18, -2, -20, -14, 2, 13, -15,
    -- layer=2 filter=2 channel=52
    2, 20, 14, -36, -3, -7, 0, 2, 47,
    -- layer=2 filter=2 channel=53
    31, -15, -13, 24, -13, -40, 23, -6, -29,
    -- layer=2 filter=2 channel=54
    14, -2, 4, 16, 9, 14, 1, 20, 9,
    -- layer=2 filter=2 channel=55
    16, -3, 6, 14, 10, 5, 0, -2, -12,
    -- layer=2 filter=2 channel=56
    38, -6, 0, 24, 5, -21, 11, -32, -12,
    -- layer=2 filter=2 channel=57
    5, -18, -25, 10, 2, -4, -19, 2, -4,
    -- layer=2 filter=2 channel=58
    -11, -22, -30, -9, -4, -2, -12, 5, 26,
    -- layer=2 filter=2 channel=59
    -14, -9, -9, -12, -10, 1, -9, 6, -2,
    -- layer=2 filter=2 channel=60
    -9, 22, -11, 24, 2, 5, -16, 20, 11,
    -- layer=2 filter=2 channel=61
    -7, 2, -9, 10, -10, -12, -7, -8, 11,
    -- layer=2 filter=2 channel=62
    28, 48, 70, -26, 16, 65, -14, -11, 52,
    -- layer=2 filter=2 channel=63
    52, 33, 24, 16, -9, -15, -7, -6, -65,
    -- layer=2 filter=3 channel=0
    8, 32, 12, -4, 62, 44, 0, 33, 7,
    -- layer=2 filter=3 channel=1
    -4, 1, -7, -5, 8, 2, 26, 7, 12,
    -- layer=2 filter=3 channel=2
    29, 29, -4, 36, 52, 25, 10, 28, 27,
    -- layer=2 filter=3 channel=3
    2, 25, 3, -3, 10, -22, 10, 11, -20,
    -- layer=2 filter=3 channel=4
    -20, -47, -19, -4, -6, 5, 0, -1, -10,
    -- layer=2 filter=3 channel=5
    9, 16, 9, 21, 34, 35, -8, 6, 3,
    -- layer=2 filter=3 channel=6
    2, -17, 40, 26, -2, 5, 19, -10, 13,
    -- layer=2 filter=3 channel=7
    -6, -8, -13, -16, -41, -42, -13, -25, -14,
    -- layer=2 filter=3 channel=8
    11, -25, 14, -22, -31, -16, -17, -17, 40,
    -- layer=2 filter=3 channel=9
    11, 44, -4, -33, -23, 17, -10, 12, 14,
    -- layer=2 filter=3 channel=10
    7, 13, -14, 9, 11, -14, 15, -12, 6,
    -- layer=2 filter=3 channel=11
    -4, -12, 8, 1, 12, 15, 18, 0, 0,
    -- layer=2 filter=3 channel=12
    -12, -16, 17, -11, 9, 3, 12, 11, 18,
    -- layer=2 filter=3 channel=13
    -2, 3, 22, -11, -15, -11, 1, -10, -14,
    -- layer=2 filter=3 channel=14
    0, -11, -18, 4, 32, 8, 20, 19, -4,
    -- layer=2 filter=3 channel=15
    25, -4, -7, 8, 24, 13, 19, 12, 5,
    -- layer=2 filter=3 channel=16
    3, 14, -7, 4, 4, -1, -3, -22, -10,
    -- layer=2 filter=3 channel=17
    6, 9, 18, 19, 0, 10, 7, 20, 1,
    -- layer=2 filter=3 channel=18
    -10, -4, 18, -13, -13, -9, 11, -16, 11,
    -- layer=2 filter=3 channel=19
    13, 28, -17, -4, 4, 8, 10, 8, 10,
    -- layer=2 filter=3 channel=20
    3, 3, -17, 24, 3, 11, 11, 3, 9,
    -- layer=2 filter=3 channel=21
    13, -1, 0, 1, -27, -21, 2, 0, -16,
    -- layer=2 filter=3 channel=22
    -7, -9, 20, -19, -1, -12, -12, 12, -15,
    -- layer=2 filter=3 channel=23
    -8, 8, -9, 14, -14, -13, 20, 11, -7,
    -- layer=2 filter=3 channel=24
    -12, 0, 3, -4, -7, 5, 10, 14, -6,
    -- layer=2 filter=3 channel=25
    18, 0, -9, -13, 0, -16, 16, 16, 13,
    -- layer=2 filter=3 channel=26
    -3, -5, 0, -5, 2, 6, 5, -7, -16,
    -- layer=2 filter=3 channel=27
    21, 13, 8, -15, -12, -1, 4, 21, 10,
    -- layer=2 filter=3 channel=28
    2, 4, 8, 44, 35, 37, 22, 56, 60,
    -- layer=2 filter=3 channel=29
    42, 23, 0, 19, 23, 22, 6, 25, 16,
    -- layer=2 filter=3 channel=30
    -3, 7, 7, 20, -10, -18, 6, 15, 5,
    -- layer=2 filter=3 channel=31
    7, 8, 18, -1, 7, 3, 15, 2, 10,
    -- layer=2 filter=3 channel=32
    18, 5, 17, 13, 7, 2, 11, -18, -10,
    -- layer=2 filter=3 channel=33
    19, -3, -36, 6, 6, -8, -5, 7, -22,
    -- layer=2 filter=3 channel=34
    -7, -18, 0, 21, -20, -7, 5, -7, 14,
    -- layer=2 filter=3 channel=35
    18, -15, 16, 11, -33, 6, -8, -12, 1,
    -- layer=2 filter=3 channel=36
    -2, 2, 29, -6, -8, -7, -8, -26, -13,
    -- layer=2 filter=3 channel=37
    -17, -32, -2, -8, -20, 3, -18, -37, -8,
    -- layer=2 filter=3 channel=38
    -3, -32, 3, -3, -25, 2, -2, -28, 1,
    -- layer=2 filter=3 channel=39
    -18, -9, 0, 11, -38, 9, -11, -34, -10,
    -- layer=2 filter=3 channel=40
    -8, 2, -22, 2, -18, 15, 9, 34, 22,
    -- layer=2 filter=3 channel=41
    9, 7, 17, 10, 1, 23, 10, 13, -1,
    -- layer=2 filter=3 channel=42
    49, 17, 12, 24, -24, -7, 0, -9, 15,
    -- layer=2 filter=3 channel=43
    8, 17, 15, 10, 20, -3, -12, -3, -6,
    -- layer=2 filter=3 channel=44
    -21, -10, 3, -21, -4, 12, -29, -11, -7,
    -- layer=2 filter=3 channel=45
    10, 10, 6, -13, -24, -11, -9, -8, -6,
    -- layer=2 filter=3 channel=46
    22, 9, 9, -16, -19, 2, 12, -18, -23,
    -- layer=2 filter=3 channel=47
    4, 12, 10, -7, -18, -10, -10, 0, -4,
    -- layer=2 filter=3 channel=48
    -1, -8, 1, 1, 38, 35, 14, 55, 29,
    -- layer=2 filter=3 channel=49
    5, -14, 28, 0, -4, 14, -13, -10, -11,
    -- layer=2 filter=3 channel=50
    23, -15, -28, -5, -11, 0, 2, 1, -6,
    -- layer=2 filter=3 channel=51
    -11, 8, 9, 8, 1, -19, 19, 0, 0,
    -- layer=2 filter=3 channel=52
    10, 13, 1, 6, -5, 35, -1, -14, -13,
    -- layer=2 filter=3 channel=53
    16, -12, 7, -26, -40, -15, 1, -31, 6,
    -- layer=2 filter=3 channel=54
    -6, 3, 17, -3, 9, 15, 3, 12, -15,
    -- layer=2 filter=3 channel=55
    3, -4, -16, 7, -8, -2, 10, 10, 8,
    -- layer=2 filter=3 channel=56
    -18, -38, -24, -8, -23, 8, -33, -4, 4,
    -- layer=2 filter=3 channel=57
    13, 30, 4, 5, -13, -4, -15, -13, 0,
    -- layer=2 filter=3 channel=58
    -14, 2, -8, 6, 22, 22, 4, 9, 0,
    -- layer=2 filter=3 channel=59
    -6, -7, 17, -13, -8, -1, 17, -17, -5,
    -- layer=2 filter=3 channel=60
    1, 23, -38, 46, 17, -9, 1, 29, -26,
    -- layer=2 filter=3 channel=61
    14, 8, -11, 5, -18, -10, -9, -2, -6,
    -- layer=2 filter=3 channel=62
    -12, 14, 24, 19, 20, 42, -42, 10, 32,
    -- layer=2 filter=3 channel=63
    -44, -35, -42, -6, -41, -41, -22, -38, -54,
    -- layer=2 filter=4 channel=0
    15, -3, 4, -1, 3, -7, 13, -16, -21,
    -- layer=2 filter=4 channel=1
    -18, -22, -31, 23, -7, 17, 0, 8, 4,
    -- layer=2 filter=4 channel=2
    -16, 28, 4, 6, 4, -32, -14, -12, -34,
    -- layer=2 filter=4 channel=3
    10, -2, 5, -4, 3, -9, 15, -1, 7,
    -- layer=2 filter=4 channel=4
    2, -9, -18, 19, 8, 10, 3, -25, -27,
    -- layer=2 filter=4 channel=5
    22, -5, -10, -15, -13, -30, -15, -3, -8,
    -- layer=2 filter=4 channel=6
    3, 11, -34, 11, 4, -1, -4, 0, -13,
    -- layer=2 filter=4 channel=7
    13, 11, 5, -19, -67, -61, 34, -2, -2,
    -- layer=2 filter=4 channel=8
    -17, 14, -4, 40, 60, 43, -4, 32, 15,
    -- layer=2 filter=4 channel=9
    -30, 15, -7, -60, -20, -49, 29, 8, 1,
    -- layer=2 filter=4 channel=10
    -6, 11, 3, 13, 4, 15, 6, -15, 2,
    -- layer=2 filter=4 channel=11
    -3, -9, -14, -9, -41, -27, -7, 7, 23,
    -- layer=2 filter=4 channel=12
    19, -8, 14, 8, -18, -18, 18, 1, 0,
    -- layer=2 filter=4 channel=13
    0, 26, 17, -28, -23, -36, -5, -14, 27,
    -- layer=2 filter=4 channel=14
    17, -14, 21, 10, -20, -9, 11, -14, 1,
    -- layer=2 filter=4 channel=15
    -12, -25, -32, -2, -11, 7, -12, -16, -1,
    -- layer=2 filter=4 channel=16
    -9, 4, -6, 2, 7, -13, -7, 9, -4,
    -- layer=2 filter=4 channel=17
    -36, -37, -19, 33, -1, 31, 3, 8, 17,
    -- layer=2 filter=4 channel=18
    33, 30, 21, -9, 1, -35, 5, 18, 23,
    -- layer=2 filter=4 channel=19
    -11, -8, 4, -16, 11, 14, -2, 3, -21,
    -- layer=2 filter=4 channel=20
    31, 4, 39, -3, -45, -47, -6, -27, 0,
    -- layer=2 filter=4 channel=21
    -44, -19, 0, -23, 11, 18, -11, 11, 1,
    -- layer=2 filter=4 channel=22
    2, 1, -19, -10, -2, 7, -13, -13, -7,
    -- layer=2 filter=4 channel=23
    -17, 4, -8, -5, -19, -9, 4, -9, 17,
    -- layer=2 filter=4 channel=24
    9, -19, 3, -28, -1, -16, 0, 5, -26,
    -- layer=2 filter=4 channel=25
    -9, -4, 7, 13, -18, 9, -8, -3, -11,
    -- layer=2 filter=4 channel=26
    14, 9, -16, -7, -16, -14, -4, 7, 11,
    -- layer=2 filter=4 channel=27
    2, -8, -20, -19, -3, 12, -28, -22, 9,
    -- layer=2 filter=4 channel=28
    -6, 5, -21, 2, 27, -34, 3, -1, -23,
    -- layer=2 filter=4 channel=29
    8, 10, 17, 1, -29, -48, -11, -6, 8,
    -- layer=2 filter=4 channel=30
    0, -29, -16, -2, 0, 17, -1, 21, 4,
    -- layer=2 filter=4 channel=31
    -1, 10, 11, -2, -20, 5, 19, -5, 11,
    -- layer=2 filter=4 channel=32
    15, 1, -9, 10, 3, -8, -16, 0, 5,
    -- layer=2 filter=4 channel=33
    -7, -28, -1, 36, 0, -27, 10, -21, -31,
    -- layer=2 filter=4 channel=34
    -21, 15, -20, -1, 15, 12, -17, 17, -11,
    -- layer=2 filter=4 channel=35
    12, -6, -6, -6, -41, -35, 4, 17, 21,
    -- layer=2 filter=4 channel=36
    -19, -8, -31, -16, -34, -12, -27, -9, 31,
    -- layer=2 filter=4 channel=37
    -21, -24, -36, 23, 7, 22, -4, -16, -1,
    -- layer=2 filter=4 channel=38
    -11, 3, -30, -18, -9, -7, -10, 3, 10,
    -- layer=2 filter=4 channel=39
    19, 13, -8, -25, -56, -20, 11, 17, 28,
    -- layer=2 filter=4 channel=40
    3, 4, 21, 43, 16, 0, -21, -24, -24,
    -- layer=2 filter=4 channel=41
    10, 21, 14, -18, -13, -13, 18, 0, 30,
    -- layer=2 filter=4 channel=42
    0, -13, 0, 53, 71, 31, 26, 25, 43,
    -- layer=2 filter=4 channel=43
    -7, 1, -1, -7, 21, -5, 15, 33, -1,
    -- layer=2 filter=4 channel=44
    3, -9, 4, 0, -27, 11, -38, -19, -9,
    -- layer=2 filter=4 channel=45
    -10, 18, 1, 10, -17, -34, 9, -2, -9,
    -- layer=2 filter=4 channel=46
    62, 50, 30, -75, -85, -78, 58, -3, 7,
    -- layer=2 filter=4 channel=47
    19, -6, 19, -10, 4, -4, 4, -5, 5,
    -- layer=2 filter=4 channel=48
    24, -28, 8, 25, 0, -49, -17, -11, -33,
    -- layer=2 filter=4 channel=49
    -13, -15, -4, -28, -49, 16, 17, 12, 18,
    -- layer=2 filter=4 channel=50
    6, -17, -6, 9, -4, 2, 9, -15, 11,
    -- layer=2 filter=4 channel=51
    -5, -11, 5, -2, -6, 7, 6, 9, 4,
    -- layer=2 filter=4 channel=52
    22, 20, -21, 16, 18, 12, -18, -1, -24,
    -- layer=2 filter=4 channel=53
    -15, -5, 0, 35, 35, 22, 21, 11, 15,
    -- layer=2 filter=4 channel=54
    -9, -31, -48, -23, -23, 11, 8, 5, 44,
    -- layer=2 filter=4 channel=55
    3, 15, -11, 0, 12, -12, 5, -17, -11,
    -- layer=2 filter=4 channel=56
    6, 18, -9, -14, -43, -14, 5, 4, -4,
    -- layer=2 filter=4 channel=57
    -51, -2, -31, -38, 18, 35, 12, 32, 26,
    -- layer=2 filter=4 channel=58
    36, -16, -9, -24, -41, -10, 5, -13, 14,
    -- layer=2 filter=4 channel=59
    -1, -2, 13, -16, -9, 6, -3, -16, 12,
    -- layer=2 filter=4 channel=60
    9, 18, 24, 0, -35, 28, 17, 8, 3,
    -- layer=2 filter=4 channel=61
    -17, 4, -12, -4, -4, 11, 11, -9, 18,
    -- layer=2 filter=4 channel=62
    -16, -22, 1, -14, -43, 11, -4, -35, -9,
    -- layer=2 filter=4 channel=63
    -12, 1, -14, 0, -15, -29, 51, 32, 32,
    -- layer=2 filter=5 channel=0
    -15, 4, 0, -20, -3, -17, -18, -26, 0,
    -- layer=2 filter=5 channel=1
    17, 34, 22, -7, 4, 7, -8, -21, -28,
    -- layer=2 filter=5 channel=2
    3, -7, -15, 0, -21, -17, -37, -32, 16,
    -- layer=2 filter=5 channel=3
    -7, 7, -11, 0, 9, 22, -3, -13, -15,
    -- layer=2 filter=5 channel=4
    -37, -4, 0, 1, 0, 17, 27, 12, 13,
    -- layer=2 filter=5 channel=5
    -4, 7, 2, 0, -2, -19, -55, -41, -40,
    -- layer=2 filter=5 channel=6
    -12, -14, -18, -12, 13, 15, 10, 27, 6,
    -- layer=2 filter=5 channel=7
    17, 25, 4, -24, 9, 5, 0, 8, 28,
    -- layer=2 filter=5 channel=8
    0, 4, 10, 7, 6, -1, 13, 12, -10,
    -- layer=2 filter=5 channel=9
    -8, -14, -12, -4, -5, 18, 28, -1, 22,
    -- layer=2 filter=5 channel=10
    7, -14, 15, 17, -9, -12, -15, -7, 12,
    -- layer=2 filter=5 channel=11
    4, 22, 10, -10, -18, -22, -44, -56, -18,
    -- layer=2 filter=5 channel=12
    12, 18, 2, 10, 6, 2, -12, 1, -19,
    -- layer=2 filter=5 channel=13
    16, 22, 28, 38, 48, 49, 3, 12, 3,
    -- layer=2 filter=5 channel=14
    25, 16, 6, -2, 19, 13, -44, -18, -19,
    -- layer=2 filter=5 channel=15
    19, 4, 2, -3, -17, -23, 2, -7, -28,
    -- layer=2 filter=5 channel=16
    13, -5, 0, 12, -7, 0, 20, 4, 10,
    -- layer=2 filter=5 channel=17
    17, 29, 11, 7, -16, -13, -19, -24, -28,
    -- layer=2 filter=5 channel=18
    22, 28, 21, 48, 38, 31, 14, 35, 16,
    -- layer=2 filter=5 channel=19
    -5, -17, -4, -8, 17, 0, -6, 3, -1,
    -- layer=2 filter=5 channel=20
    23, 0, 5, 39, 19, 0, -29, -17, -10,
    -- layer=2 filter=5 channel=21
    15, 14, 4, -9, -17, -17, 2, 4, -10,
    -- layer=2 filter=5 channel=22
    -5, 1, 0, -16, -4, -19, 6, 16, 16,
    -- layer=2 filter=5 channel=23
    -3, -2, 26, 4, 2, 5, 8, -19, 8,
    -- layer=2 filter=5 channel=24
    -23, -21, 13, -16, -1, -18, 23, -10, 25,
    -- layer=2 filter=5 channel=25
    12, 16, 17, -10, 14, 6, 6, -10, -12,
    -- layer=2 filter=5 channel=26
    -11, 0, -14, 8, 4, -9, -6, -10, 7,
    -- layer=2 filter=5 channel=27
    -5, 10, -19, 1, 13, -20, -13, -14, -19,
    -- layer=2 filter=5 channel=28
    -11, -9, -33, -27, 0, 0, -21, -8, 5,
    -- layer=2 filter=5 channel=29
    4, 10, 12, 5, 17, 4, -37, -57, -38,
    -- layer=2 filter=5 channel=30
    1, 5, 11, -13, -2, -16, -18, 0, -45,
    -- layer=2 filter=5 channel=31
    34, 26, -5, -2, -4, 5, -36, -12, -20,
    -- layer=2 filter=5 channel=32
    16, -16, 6, -13, -13, 10, 17, 8, -15,
    -- layer=2 filter=5 channel=33
    4, -25, -19, 9, -30, -33, -32, -18, 1,
    -- layer=2 filter=5 channel=34
    -7, 1, -19, 0, -11, -14, -5, 21, -7,
    -- layer=2 filter=5 channel=35
    15, 39, 8, 14, 49, 32, 5, -5, -3,
    -- layer=2 filter=5 channel=36
    -5, 16, 33, -20, 11, -2, -24, -30, -46,
    -- layer=2 filter=5 channel=37
    -15, -18, -3, -38, -35, -11, 19, 12, -17,
    -- layer=2 filter=5 channel=38
    -12, 8, -15, 13, -7, -15, 16, -4, -10,
    -- layer=2 filter=5 channel=39
    18, 41, 15, 14, 9, 1, -26, -42, -19,
    -- layer=2 filter=5 channel=40
    6, 7, 20, 13, 17, 11, 20, 8, 22,
    -- layer=2 filter=5 channel=41
    9, 20, 17, 0, 2, 15, -53, -61, -32,
    -- layer=2 filter=5 channel=42
    21, 35, 3, -8, -9, -12, -2, -3, -21,
    -- layer=2 filter=5 channel=43
    13, 8, 17, -26, -27, -27, -10, -24, -4,
    -- layer=2 filter=5 channel=44
    -12, -1, 5, -31, -32, -12, 11, 0, 12,
    -- layer=2 filter=5 channel=45
    15, -5, 20, 10, 12, 44, 12, 15, 33,
    -- layer=2 filter=5 channel=46
    24, 40, 16, -18, 8, 1, -5, -30, -1,
    -- layer=2 filter=5 channel=47
    2, -10, -10, -15, 7, 10, 9, 16, -11,
    -- layer=2 filter=5 channel=48
    21, 6, -10, 0, 14, 24, -10, -18, 39,
    -- layer=2 filter=5 channel=49
    4, 4, -8, -6, -8, 13, -2, 17, 25,
    -- layer=2 filter=5 channel=50
    3, 4, 11, -3, 16, 7, 2, -11, -13,
    -- layer=2 filter=5 channel=51
    -19, 0, -20, -15, -2, 16, -1, -14, -11,
    -- layer=2 filter=5 channel=52
    16, -7, -8, 40, 20, -20, 10, 19, 7,
    -- layer=2 filter=5 channel=53
    -4, -25, -29, -3, -14, 12, 34, 43, 21,
    -- layer=2 filter=5 channel=54
    18, 11, 35, 10, 0, -13, -22, -2, 3,
    -- layer=2 filter=5 channel=55
    15, -13, 14, -7, -14, -13, 9, -6, -17,
    -- layer=2 filter=5 channel=56
    -2, -9, 6, -16, -29, -6, -12, -7, 17,
    -- layer=2 filter=5 channel=57
    2, 17, -2, -26, -32, -6, -3, 11, 4,
    -- layer=2 filter=5 channel=58
    28, 12, 33, -4, -8, 17, -28, -32, -36,
    -- layer=2 filter=5 channel=59
    -8, 5, 6, -8, -17, -2, -11, 7, -14,
    -- layer=2 filter=5 channel=60
    16, -19, -8, -4, 1, -13, -17, -48, -17,
    -- layer=2 filter=5 channel=61
    19, -1, 12, -2, 11, -18, 7, -22, -15,
    -- layer=2 filter=5 channel=62
    -23, -6, -25, 1, 7, -1, 25, -16, 10,
    -- layer=2 filter=5 channel=63
    40, 17, 13, 7, 14, 13, 29, 35, 67,
    -- layer=2 filter=6 channel=0
    17, 17, 8, 34, 17, -17, 55, 34, 20,
    -- layer=2 filter=6 channel=1
    29, -7, 14, -17, -1, -15, -32, -6, -15,
    -- layer=2 filter=6 channel=2
    41, 52, -28, 35, 34, 1, 41, 39, 4,
    -- layer=2 filter=6 channel=3
    14, 18, 6, 23, -6, -23, 10, 28, 18,
    -- layer=2 filter=6 channel=4
    17, 5, -27, 3, -18, -11, -7, 15, -18,
    -- layer=2 filter=6 channel=5
    -4, -8, 2, -8, 11, 0, 20, -12, 21,
    -- layer=2 filter=6 channel=6
    12, -7, -11, -10, -3, -7, 26, 23, 32,
    -- layer=2 filter=6 channel=7
    3, -52, -9, 10, -2, -4, -20, -19, -38,
    -- layer=2 filter=6 channel=8
    3, 21, 44, 9, 4, -1, -21, -41, -36,
    -- layer=2 filter=6 channel=9
    47, -11, -54, 24, -25, -35, 33, -4, 7,
    -- layer=2 filter=6 channel=10
    -10, -8, 6, 4, 18, 14, 9, -4, -8,
    -- layer=2 filter=6 channel=11
    -17, -14, 3, 10, -9, 4, -15, -18, 4,
    -- layer=2 filter=6 channel=12
    0, 12, 1, 4, 10, -12, -19, -4, 6,
    -- layer=2 filter=6 channel=13
    -7, -18, -9, -15, 5, 21, 12, 6, 7,
    -- layer=2 filter=6 channel=14
    -16, 9, 21, 22, 16, 16, -19, 21, 17,
    -- layer=2 filter=6 channel=15
    8, 11, -24, 0, -7, 0, 11, 9, -17,
    -- layer=2 filter=6 channel=16
    14, 5, 6, -6, -5, 12, -6, -14, -12,
    -- layer=2 filter=6 channel=17
    -1, 2, -2, -13, 1, -8, -20, -4, -26,
    -- layer=2 filter=6 channel=18
    -11, 27, 34, 2, 8, 29, -7, 2, -3,
    -- layer=2 filter=6 channel=19
    11, -4, 17, 10, 17, 13, -2, 8, 14,
    -- layer=2 filter=6 channel=20
    -26, -12, 3, -16, 14, 34, -6, -22, 19,
    -- layer=2 filter=6 channel=21
    6, 21, 29, 1, 22, -7, 0, -29, -15,
    -- layer=2 filter=6 channel=22
    -9, -4, 0, 1, 7, 6, -3, 11, 3,
    -- layer=2 filter=6 channel=23
    28, 7, 11, 25, 29, 11, -9, -1, -2,
    -- layer=2 filter=6 channel=24
    -9, 11, 4, 13, -12, 6, 0, -12, 16,
    -- layer=2 filter=6 channel=25
    -11, -4, 14, 3, 13, 5, 11, 14, -6,
    -- layer=2 filter=6 channel=26
    -6, -6, -17, 16, 0, -11, -3, 1, 20,
    -- layer=2 filter=6 channel=27
    6, -17, 0, 21, -3, -6, 17, 4, -7,
    -- layer=2 filter=6 channel=28
    2, -13, -28, 28, -5, -39, 15, 19, -9,
    -- layer=2 filter=6 channel=29
    -30, -35, 6, 21, 3, 9, 7, 5, 0,
    -- layer=2 filter=6 channel=30
    -2, 37, 25, -4, -10, -5, -44, 13, 4,
    -- layer=2 filter=6 channel=31
    -28, 9, 16, 4, 7, 57, -26, -11, -16,
    -- layer=2 filter=6 channel=32
    14, -13, -1, -13, 0, -10, -13, -5, 10,
    -- layer=2 filter=6 channel=33
    -16, 13, 21, -3, 18, 14, -11, 14, 27,
    -- layer=2 filter=6 channel=34
    19, 26, 0, 21, 8, -27, -20, -6, 2,
    -- layer=2 filter=6 channel=35
    5, -5, 16, -7, 3, 34, 44, 19, 19,
    -- layer=2 filter=6 channel=36
    19, 9, -11, 18, 15, -2, 8, 31, 2,
    -- layer=2 filter=6 channel=37
    6, -22, 0, 48, 15, -24, -51, -13, -2,
    -- layer=2 filter=6 channel=38
    9, -23, 1, 19, 12, 9, 35, 18, 18,
    -- layer=2 filter=6 channel=39
    -31, -36, -9, 12, 22, 8, 0, 22, 11,
    -- layer=2 filter=6 channel=40
    -27, -20, 7, -8, -3, 22, -87, -65, -23,
    -- layer=2 filter=6 channel=41
    -13, -37, -1, 30, 16, 34, 30, -11, -13,
    -- layer=2 filter=6 channel=42
    4, 13, 51, 46, 22, 33, -40, -55, -13,
    -- layer=2 filter=6 channel=43
    20, -6, -30, -15, -27, -45, -28, -52, -84,
    -- layer=2 filter=6 channel=44
    5, -4, -5, 9, 2, -25, 6, -40, -19,
    -- layer=2 filter=6 channel=45
    4, -5, 5, 7, 0, 23, 62, 34, 0,
    -- layer=2 filter=6 channel=46
    -34, -43, -8, 2, 21, 54, 31, 8, -2,
    -- layer=2 filter=6 channel=47
    14, 0, -19, 9, 7, -7, 12, -13, 11,
    -- layer=2 filter=6 channel=48
    -8, -29, -40, 7, -20, -16, 0, -17, -37,
    -- layer=2 filter=6 channel=49
    27, 0, -27, 0, 24, 3, 17, 10, 3,
    -- layer=2 filter=6 channel=50
    0, 7, -13, 17, 15, 10, 16, -16, -3,
    -- layer=2 filter=6 channel=51
    14, 3, -12, -14, 3, 10, -14, 6, -2,
    -- layer=2 filter=6 channel=52
    -1, 13, -19, 23, -25, 1, 48, 11, 30,
    -- layer=2 filter=6 channel=53
    30, -2, -20, -18, -22, 1, -13, -27, -6,
    -- layer=2 filter=6 channel=54
    5, 12, 6, -4, -4, 3, -10, 15, -33,
    -- layer=2 filter=6 channel=55
    -3, -12, 4, 1, -1, 12, -1, -18, 5,
    -- layer=2 filter=6 channel=56
    5, -2, 5, 3, -17, 1, 10, -4, 14,
    -- layer=2 filter=6 channel=57
    -5, 7, -14, 0, 7, -17, -13, -21, -45,
    -- layer=2 filter=6 channel=58
    -12, -1, -4, -6, 18, 9, 14, 5, 3,
    -- layer=2 filter=6 channel=59
    -17, -5, 14, 15, -3, -6, 17, -17, -11,
    -- layer=2 filter=6 channel=60
    2, 5, -36, 0, -12, -20, -8, 14, 13,
    -- layer=2 filter=6 channel=61
    -12, 7, 15, 16, -2, 0, -18, 10, 4,
    -- layer=2 filter=6 channel=62
    -9, -33, 4, 34, 20, -1, -7, 25, 4,
    -- layer=2 filter=6 channel=63
    49, 5, -10, 34, 30, 24, 29, -6, -31,
    -- layer=2 filter=7 channel=0
    -8, -6, 3, -14, -13, -12, 12, 11, -9,
    -- layer=2 filter=7 channel=1
    -16, -11, 0, -22, 14, -15, 6, -4, -13,
    -- layer=2 filter=7 channel=2
    7, -7, -11, 11, -13, 7, -19, -5, 0,
    -- layer=2 filter=7 channel=3
    17, 0, 0, 0, -19, -12, -18, 11, 0,
    -- layer=2 filter=7 channel=4
    -21, -22, -17, -8, -22, -18, 13, -7, -12,
    -- layer=2 filter=7 channel=5
    -17, -5, -14, -1, -18, 10, 3, -7, 8,
    -- layer=2 filter=7 channel=6
    -18, -21, -20, -19, -13, -12, 0, 2, -9,
    -- layer=2 filter=7 channel=7
    4, 2, 15, 2, -5, 12, 6, 2, -4,
    -- layer=2 filter=7 channel=8
    3, 3, 0, -7, -25, 8, -11, -11, -28,
    -- layer=2 filter=7 channel=9
    14, -13, 13, 16, -8, -2, 22, 0, -6,
    -- layer=2 filter=7 channel=10
    -11, -6, 2, -12, 18, 12, 19, 14, 6,
    -- layer=2 filter=7 channel=11
    -12, -17, -18, -8, -18, 0, -18, -22, -26,
    -- layer=2 filter=7 channel=12
    16, 10, -9, -4, -2, -5, -10, -16, 13,
    -- layer=2 filter=7 channel=13
    9, -1, -26, -17, 8, -19, 1, -2, -17,
    -- layer=2 filter=7 channel=14
    -19, 2, -15, -12, -24, -12, -8, 0, -10,
    -- layer=2 filter=7 channel=15
    7, 15, -8, -19, -17, -4, 5, -20, -21,
    -- layer=2 filter=7 channel=16
    8, 5, 14, 12, 13, -1, 6, -4, -14,
    -- layer=2 filter=7 channel=17
    -11, 3, -11, -5, -13, -18, -9, 12, -18,
    -- layer=2 filter=7 channel=18
    0, -24, 0, -8, 1, -20, -9, 6, -18,
    -- layer=2 filter=7 channel=19
    5, -5, 4, 13, -17, 4, -8, 12, 10,
    -- layer=2 filter=7 channel=20
    -2, -6, 6, -24, -16, -19, 11, -15, -14,
    -- layer=2 filter=7 channel=21
    -22, 10, 11, -12, 2, -12, -5, -26, 2,
    -- layer=2 filter=7 channel=22
    13, -10, -10, 15, 8, -12, 4, -4, -12,
    -- layer=2 filter=7 channel=23
    -4, -1, -17, 2, -7, -7, -15, -23, -19,
    -- layer=2 filter=7 channel=24
    10, -12, 14, 15, 15, 15, 11, 4, -5,
    -- layer=2 filter=7 channel=25
    13, 0, -15, 15, 11, 2, 16, -1, -12,
    -- layer=2 filter=7 channel=26
    -17, -12, -1, 0, 15, 15, -2, 10, -7,
    -- layer=2 filter=7 channel=27
    -11, -13, -2, -9, 4, -2, 5, -13, -3,
    -- layer=2 filter=7 channel=28
    -23, 6, -14, -24, -3, 3, -17, -17, 3,
    -- layer=2 filter=7 channel=29
    4, -7, 6, 9, -12, 13, 4, 12, -4,
    -- layer=2 filter=7 channel=30
    -20, 2, -18, 3, 9, -12, -10, 2, -19,
    -- layer=2 filter=7 channel=31
    0, 0, 9, -21, 0, 13, -11, -13, -18,
    -- layer=2 filter=7 channel=32
    6, 18, 2, -15, -14, 3, 11, 14, -11,
    -- layer=2 filter=7 channel=33
    -8, -9, 19, 10, 6, 7, 18, -7, 9,
    -- layer=2 filter=7 channel=34
    -4, 0, -19, 0, -8, -6, 0, -7, -3,
    -- layer=2 filter=7 channel=35
    -4, -3, -7, -7, -21, -16, -13, -19, 0,
    -- layer=2 filter=7 channel=36
    -4, -16, -13, -3, -16, -10, 8, 14, -16,
    -- layer=2 filter=7 channel=37
    13, -12, -7, 10, 11, 4, 10, 3, -11,
    -- layer=2 filter=7 channel=38
    9, 8, -18, 3, 11, -19, -1, 11, -18,
    -- layer=2 filter=7 channel=39
    -15, -5, 11, 13, -11, 7, 16, -13, -12,
    -- layer=2 filter=7 channel=40
    -12, -1, 0, -18, -3, -15, -2, -17, -19,
    -- layer=2 filter=7 channel=41
    -18, -8, -22, -16, 10, -4, 8, -12, 12,
    -- layer=2 filter=7 channel=42
    -8, 8, -5, 16, -9, 11, 13, 5, -21,
    -- layer=2 filter=7 channel=43
    3, -9, 0, -5, 9, 10, -12, -9, 7,
    -- layer=2 filter=7 channel=44
    7, -8, 9, 2, -16, -1, 10, -20, -1,
    -- layer=2 filter=7 channel=45
    -8, -26, 2, -11, -24, -16, 5, 0, 13,
    -- layer=2 filter=7 channel=46
    11, 2, 4, 17, -5, 7, 20, -12, 7,
    -- layer=2 filter=7 channel=47
    9, 0, 6, 17, -8, -10, -10, 7, -4,
    -- layer=2 filter=7 channel=48
    -12, 5, 7, -12, 0, -9, -12, -5, 16,
    -- layer=2 filter=7 channel=49
    -15, 8, 2, -17, 13, 12, 8, 0, -12,
    -- layer=2 filter=7 channel=50
    -1, 6, 10, 0, 4, -4, -17, 10, 14,
    -- layer=2 filter=7 channel=51
    17, 15, 5, -11, -7, 16, 18, -2, 18,
    -- layer=2 filter=7 channel=52
    13, 16, 16, 3, -6, 3, 16, -16, 9,
    -- layer=2 filter=7 channel=53
    1, -11, -12, 10, -19, -2, 1, 9, -1,
    -- layer=2 filter=7 channel=54
    -6, 12, -6, 10, 10, -13, -11, 7, -3,
    -- layer=2 filter=7 channel=55
    -17, 15, -14, -7, 13, -2, 6, -12, -8,
    -- layer=2 filter=7 channel=56
    -3, 3, -20, 8, -14, 15, 10, 0, 11,
    -- layer=2 filter=7 channel=57
    12, -14, 10, -5, -9, -6, -1, -6, 11,
    -- layer=2 filter=7 channel=58
    -23, -16, -17, -23, 4, -11, 15, -5, 12,
    -- layer=2 filter=7 channel=59
    9, -8, -5, 3, -6, 18, 16, -3, 15,
    -- layer=2 filter=7 channel=60
    -19, 3, 13, -6, -16, -14, 15, 13, -15,
    -- layer=2 filter=7 channel=61
    -4, 2, 2, -11, -4, 11, 0, -10, -5,
    -- layer=2 filter=7 channel=62
    -5, 10, 13, 13, -17, -8, -11, 4, -15,
    -- layer=2 filter=7 channel=63
    -9, 3, 14, -9, 11, 8, -13, 6, 4,
    -- layer=2 filter=8 channel=0
    -29, -56, 24, -10, 24, 23, -8, -40, 28,
    -- layer=2 filter=8 channel=1
    19, -5, -25, 6, 14, -8, 25, 0, 27,
    -- layer=2 filter=8 channel=2
    -6, -7, 20, -14, 37, 11, -28, 11, 5,
    -- layer=2 filter=8 channel=3
    -6, -3, -6, -27, 12, -14, 20, 0, 15,
    -- layer=2 filter=8 channel=4
    19, 7, 16, 18, -2, -4, 36, 6, -8,
    -- layer=2 filter=8 channel=5
    37, 15, 20, 25, 2, -7, 26, 7, 5,
    -- layer=2 filter=8 channel=6
    33, 23, 0, -3, 21, -6, -14, 3, 0,
    -- layer=2 filter=8 channel=7
    -22, 10, -35, 32, -2, -1, -16, 30, 23,
    -- layer=2 filter=8 channel=8
    -92, -53, 27, -18, -32, -5, 18, 19, 18,
    -- layer=2 filter=8 channel=9
    56, 1, 4, 38, 30, 36, -15, -28, -15,
    -- layer=2 filter=8 channel=10
    9, 11, -17, 0, -10, -7, -3, -15, 12,
    -- layer=2 filter=8 channel=11
    18, -2, 9, -5, -19, -17, 8, 9, 14,
    -- layer=2 filter=8 channel=12
    8, 6, 11, -14, 2, 12, 14, -18, 10,
    -- layer=2 filter=8 channel=13
    -29, -12, 15, -35, -43, 8, -9, -55, 2,
    -- layer=2 filter=8 channel=14
    4, 1, 25, 0, -2, 6, -15, -13, 3,
    -- layer=2 filter=8 channel=15
    5, 20, -18, 21, 4, 14, 33, 33, 1,
    -- layer=2 filter=8 channel=16
    8, 2, -16, 5, 21, 19, -16, 7, 5,
    -- layer=2 filter=8 channel=17
    30, 4, -9, -6, 1, 15, 13, 29, 0,
    -- layer=2 filter=8 channel=18
    -34, 23, 36, -20, -21, 3, -4, -22, 10,
    -- layer=2 filter=8 channel=19
    0, -7, -19, 9, -12, 19, -9, 10, 2,
    -- layer=2 filter=8 channel=20
    1, 48, -2, 22, -4, -2, 1, 13, -10,
    -- layer=2 filter=8 channel=21
    5, -9, -7, -2, 17, -22, -7, -21, 1,
    -- layer=2 filter=8 channel=22
    -12, 8, 16, 0, 15, -7, -9, 1, -7,
    -- layer=2 filter=8 channel=23
    13, 16, 7, 11, 0, -15, -16, 3, -21,
    -- layer=2 filter=8 channel=24
    1, 22, -11, -8, 1, 1, -6, 5, -15,
    -- layer=2 filter=8 channel=25
    15, 15, -4, -18, 0, -1, -19, 1, 17,
    -- layer=2 filter=8 channel=26
    -4, -10, 15, 11, -8, -18, -9, -5, 15,
    -- layer=2 filter=8 channel=27
    4, 6, 0, 12, 30, 19, 7, 3, 24,
    -- layer=2 filter=8 channel=28
    -2, -30, 0, -16, 26, -7, -25, -31, -20,
    -- layer=2 filter=8 channel=29
    13, 44, 36, 0, 17, 32, 11, 6, 51,
    -- layer=2 filter=8 channel=30
    -4, -7, -14, -14, -3, -8, 23, 11, -2,
    -- layer=2 filter=8 channel=31
    -10, 4, 1, -17, -3, 31, -30, 0, -1,
    -- layer=2 filter=8 channel=32
    -5, 2, 10, 3, 3, -2, 22, -12, -13,
    -- layer=2 filter=8 channel=33
    -13, -9, -26, 15, -27, 11, -2, -37, 7,
    -- layer=2 filter=8 channel=34
    9, 23, 0, 1, -13, -20, 29, 24, 11,
    -- layer=2 filter=8 channel=35
    -19, -6, 32, -28, -31, -9, -12, -26, -15,
    -- layer=2 filter=8 channel=36
    43, 14, 18, 17, -7, -2, 52, 44, -10,
    -- layer=2 filter=8 channel=37
    -15, -44, -38, 14, -34, -33, -3, 9, 15,
    -- layer=2 filter=8 channel=38
    8, 15, -11, 11, 15, -18, -5, 34, 14,
    -- layer=2 filter=8 channel=39
    9, -19, -19, -33, -40, -7, 7, 2, 9,
    -- layer=2 filter=8 channel=40
    -68, -17, -31, -52, -58, -26, -20, -19, -11,
    -- layer=2 filter=8 channel=41
    -15, -7, 11, -23, -11, 18, -17, -32, -5,
    -- layer=2 filter=8 channel=42
    -44, -20, 43, 25, 51, 21, 54, 54, 20,
    -- layer=2 filter=8 channel=43
    0, -10, -12, -9, -12, 15, 2, 25, 28,
    -- layer=2 filter=8 channel=44
    37, -6, -37, 5, 16, -20, -20, 2, -26,
    -- layer=2 filter=8 channel=45
    -28, 4, 21, -49, -40, -36, -21, -29, -12,
    -- layer=2 filter=8 channel=46
    1, 9, 3, -33, -26, -6, -21, -17, -7,
    -- layer=2 filter=8 channel=47
    2, -8, 8, -7, 10, 2, -9, -4, 15,
    -- layer=2 filter=8 channel=48
    -64, -11, 5, -48, -15, -13, -45, -40, 1,
    -- layer=2 filter=8 channel=49
    18, 9, -7, 10, 11, -24, -9, -1, 7,
    -- layer=2 filter=8 channel=50
    16, -13, 10, 1, -1, -14, -20, 8, 13,
    -- layer=2 filter=8 channel=51
    -7, 19, -11, -11, 13, -1, 16, -2, -10,
    -- layer=2 filter=8 channel=52
    17, 23, 15, 31, 40, 7, 24, 12, -13,
    -- layer=2 filter=8 channel=53
    -4, -22, -37, -5, 2, -13, 14, 10, 57,
    -- layer=2 filter=8 channel=54
    23, 21, -9, -9, 14, 5, 30, 12, 12,
    -- layer=2 filter=8 channel=55
    -2, 5, -9, 3, 16, -10, -5, 3, 10,
    -- layer=2 filter=8 channel=56
    16, -5, -17, 19, 12, -24, 7, 5, -29,
    -- layer=2 filter=8 channel=57
    42, 8, -3, 6, 25, 1, 23, 8, 11,
    -- layer=2 filter=8 channel=58
    2, 3, 16, 7, -1, 1, 22, 6, 1,
    -- layer=2 filter=8 channel=59
    -19, 2, 11, 7, -8, -15, -10, 14, -20,
    -- layer=2 filter=8 channel=60
    23, 9, 20, 18, 0, 7, 5, 3, -1,
    -- layer=2 filter=8 channel=61
    5, 0, -12, 6, 4, 11, -5, 15, -18,
    -- layer=2 filter=8 channel=62
    3, -5, -28, -2, -36, 16, -36, 7, -7,
    -- layer=2 filter=8 channel=63
    -28, 17, -35, 10, 4, -25, -23, 36, -21,
    -- layer=2 filter=9 channel=0
    -5, -43, 0, -24, -28, -24, 25, -68, 13,
    -- layer=2 filter=9 channel=1
    -5, 0, -13, 0, -10, 6, -14, 15, 21,
    -- layer=2 filter=9 channel=2
    14, -47, 11, -6, -53, 2, 3, -52, 79,
    -- layer=2 filter=9 channel=3
    -11, -6, 19, 13, -19, -15, -17, -20, -12,
    -- layer=2 filter=9 channel=4
    9, -13, -23, -14, 6, -19, -20, 22, 23,
    -- layer=2 filter=9 channel=5
    -5, -16, -8, -22, -5, -6, 2, 18, 36,
    -- layer=2 filter=9 channel=6
    13, 0, 11, 6, -15, 13, 0, 3, 9,
    -- layer=2 filter=9 channel=7
    3, -2, 14, 0, 5, 9, 0, 40, 41,
    -- layer=2 filter=9 channel=8
    4, 51, 41, -6, 7, -20, 26, 23, 8,
    -- layer=2 filter=9 channel=9
    0, -19, -67, 18, 2, -3, 39, 40, 1,
    -- layer=2 filter=9 channel=10
    -11, -14, 17, 0, 3, -8, 5, 17, 15,
    -- layer=2 filter=9 channel=11
    2, 11, -14, -11, -11, -18, -3, 33, -1,
    -- layer=2 filter=9 channel=12
    6, 4, -8, -6, -10, -18, 13, 5, -11,
    -- layer=2 filter=9 channel=13
    -26, -1, 1, 7, 0, 21, -15, -3, -15,
    -- layer=2 filter=9 channel=14
    -4, 0, -2, -15, -23, -4, -19, -5, 24,
    -- layer=2 filter=9 channel=15
    16, 14, -19, 1, 9, 14, -1, 32, 5,
    -- layer=2 filter=9 channel=16
    2, 2, 7, -21, 1, -1, -9, -15, 4,
    -- layer=2 filter=9 channel=17
    14, 24, 16, -1, 30, -3, 10, 4, 4,
    -- layer=2 filter=9 channel=18
    1, 9, 25, 2, -12, 22, -16, -33, -20,
    -- layer=2 filter=9 channel=19
    -19, -13, -24, 2, -22, 3, -11, 3, -23,
    -- layer=2 filter=9 channel=20
    -7, -13, -8, -8, -26, 17, -24, -11, -6,
    -- layer=2 filter=9 channel=21
    26, 23, 10, 14, 14, -21, -31, 0, -32,
    -- layer=2 filter=9 channel=22
    -14, 6, -4, -4, 12, -8, -15, 4, -14,
    -- layer=2 filter=9 channel=23
    27, 1, 17, 9, 12, -5, -4, 4, -2,
    -- layer=2 filter=9 channel=24
    -10, 1, -11, 20, 14, -5, -1, 10, -15,
    -- layer=2 filter=9 channel=25
    0, 10, 11, 5, -13, 3, 15, 7, 14,
    -- layer=2 filter=9 channel=26
    14, 13, 9, 14, 1, -2, 17, -10, -14,
    -- layer=2 filter=9 channel=27
    -5, 0, -2, 24, 3, 23, 14, -10, 5,
    -- layer=2 filter=9 channel=28
    -18, -59, -19, 16, -57, 0, 23, -48, 34,
    -- layer=2 filter=9 channel=29
    1, 9, -7, 0, -20, 19, 16, -8, 6,
    -- layer=2 filter=9 channel=30
    15, -3, 11, -29, 28, 18, -15, 16, 19,
    -- layer=2 filter=9 channel=31
    13, 24, -5, 23, 12, -7, -25, -19, -29,
    -- layer=2 filter=9 channel=32
    -11, -9, -19, -1, -6, -1, 0, 11, 14,
    -- layer=2 filter=9 channel=33
    -69, -5, -48, -54, -36, -8, -20, -24, -2,
    -- layer=2 filter=9 channel=34
    29, -2, 2, 8, 13, -3, 5, 0, -23,
    -- layer=2 filter=9 channel=35
    8, 5, 22, 14, 10, -16, -9, -18, 0,
    -- layer=2 filter=9 channel=36
    5, 6, 20, 3, 24, 15, 5, 34, 40,
    -- layer=2 filter=9 channel=37
    -18, 14, -21, -4, -5, -15, 15, -6, 44,
    -- layer=2 filter=9 channel=38
    11, 5, 7, 2, 4, 14, 7, 0, 9,
    -- layer=2 filter=9 channel=39
    -9, 17, 6, 4, 1, 0, 21, 28, -2,
    -- layer=2 filter=9 channel=40
    -33, 18, -15, -46, -48, -10, -46, -36, -6,
    -- layer=2 filter=9 channel=41
    3, -11, -7, 14, 6, -21, 12, -2, -30,
    -- layer=2 filter=9 channel=42
    -20, 12, -26, -35, 11, -22, 31, 37, 52,
    -- layer=2 filter=9 channel=43
    -2, -26, 6, 16, -13, 26, -4, -33, -7,
    -- layer=2 filter=9 channel=44
    4, -2, -2, 9, 15, -28, 12, 6, -17,
    -- layer=2 filter=9 channel=45
    12, 15, 15, 17, -23, 5, 3, -17, -13,
    -- layer=2 filter=9 channel=46
    5, 18, 25, -13, 20, 6, 5, 24, -15,
    -- layer=2 filter=9 channel=47
    -6, -13, 9, -11, -6, 2, 8, -5, 5,
    -- layer=2 filter=9 channel=48
    -39, -63, -28, -23, -102, -48, 25, -74, 15,
    -- layer=2 filter=9 channel=49
    26, 7, -1, 12, 33, 14, 7, 3, -5,
    -- layer=2 filter=9 channel=50
    -6, -15, 7, 5, 5, 3, 8, 5, -6,
    -- layer=2 filter=9 channel=51
    -13, -11, 9, 9, 13, 12, -10, -14, 3,
    -- layer=2 filter=9 channel=52
    7, -8, -27, 5, -19, -24, 60, 50, -6,
    -- layer=2 filter=9 channel=53
    27, 15, 1, 11, 5, 7, -5, -6, 21,
    -- layer=2 filter=9 channel=54
    10, 29, 6, 11, 34, 21, 1, 20, 8,
    -- layer=2 filter=9 channel=55
    5, 5, -8, -19, -17, 0, -6, -1, 10,
    -- layer=2 filter=9 channel=56
    4, -3, -7, 6, -7, -5, 2, -19, 0,
    -- layer=2 filter=9 channel=57
    20, -11, 13, 16, 9, 28, -3, 25, 19,
    -- layer=2 filter=9 channel=58
    -22, -16, 8, 7, -10, -11, 17, 25, 26,
    -- layer=2 filter=9 channel=59
    -16, -11, -6, 13, -12, 9, -16, -9, 8,
    -- layer=2 filter=9 channel=60
    -4, 15, -21, 21, 17, 1, -5, 1, -7,
    -- layer=2 filter=9 channel=61
    -13, 9, -11, 13, 16, -4, -16, 5, 7,
    -- layer=2 filter=9 channel=62
    -42, 27, 5, -27, -22, -4, 4, -10, 18,
    -- layer=2 filter=9 channel=63
    -15, 6, -2, 25, 27, 34, 31, 32, 36,
    -- layer=2 filter=10 channel=0
    0, -21, 33, -38, -61, 10, 29, 0, -9,
    -- layer=2 filter=10 channel=1
    -18, 12, -5, -9, 6, 22, 29, 3, 21,
    -- layer=2 filter=10 channel=2
    7, 7, 47, -20, -18, 19, 27, -11, 55,
    -- layer=2 filter=10 channel=3
    14, -21, 13, 16, -13, 26, 3, -6, 5,
    -- layer=2 filter=10 channel=4
    1, -18, -33, -5, -22, -15, 32, 40, 26,
    -- layer=2 filter=10 channel=5
    5, -4, -20, 20, 18, -4, 27, -2, 22,
    -- layer=2 filter=10 channel=6
    -26, -19, -33, 17, 21, 17, 20, 24, 30,
    -- layer=2 filter=10 channel=7
    -23, -3, 12, -27, -4, -28, -43, -33, -25,
    -- layer=2 filter=10 channel=8
    -10, -16, 4, 27, 1, 13, 25, 18, 28,
    -- layer=2 filter=10 channel=9
    30, 41, 15, -5, 60, 30, -5, -18, 46,
    -- layer=2 filter=10 channel=10
    -13, 3, -5, 13, 4, -10, -1, 10, 15,
    -- layer=2 filter=10 channel=11
    -24, -17, -27, 13, 27, 18, -1, 0, -7,
    -- layer=2 filter=10 channel=12
    12, 3, -18, -16, 15, -7, 8, 4, -7,
    -- layer=2 filter=10 channel=13
    -2, -2, 13, -3, 5, -9, 16, 12, -12,
    -- layer=2 filter=10 channel=14
    30, 9, -37, 3, -33, -27, 39, -15, 30,
    -- layer=2 filter=10 channel=15
    -22, -26, -9, -3, -5, -18, 2, 25, 0,
    -- layer=2 filter=10 channel=16
    6, 14, -3, 2, 0, 11, -8, 4, 15,
    -- layer=2 filter=10 channel=17
    -10, -7, -19, 17, 26, 18, -4, -18, -10,
    -- layer=2 filter=10 channel=18
    8, 14, 27, 12, -23, -28, -7, -26, 7,
    -- layer=2 filter=10 channel=19
    -2, -1, 9, -14, 1, -3, -25, -20, 10,
    -- layer=2 filter=10 channel=20
    2, 4, -17, 8, -23, -26, 22, -15, 11,
    -- layer=2 filter=10 channel=21
    5, -15, -31, 6, -27, -1, -13, -10, -11,
    -- layer=2 filter=10 channel=22
    7, -6, 13, 15, 17, -10, -10, -9, -18,
    -- layer=2 filter=10 channel=23
    23, 7, -16, -4, -8, 14, -24, 2, 6,
    -- layer=2 filter=10 channel=24
    17, -2, 10, -10, -22, 16, 3, -14, 2,
    -- layer=2 filter=10 channel=25
    15, -7, 15, 14, 12, 7, 6, -8, 17,
    -- layer=2 filter=10 channel=26
    7, -3, -4, 4, 12, 7, 3, 0, 10,
    -- layer=2 filter=10 channel=27
    16, 16, 23, 27, 10, 19, 8, -3, 16,
    -- layer=2 filter=10 channel=28
    -12, -10, 7, -51, -52, 5, 4, -25, 17,
    -- layer=2 filter=10 channel=29
    32, 40, 21, 2, 39, 19, 6, 13, 3,
    -- layer=2 filter=10 channel=30
    20, 3, 18, 19, 21, -5, -11, 6, 0,
    -- layer=2 filter=10 channel=31
    11, 9, 1, 23, -9, -29, 7, -4, 8,
    -- layer=2 filter=10 channel=32
    11, 13, 4, -10, -17, 4, -3, -18, 12,
    -- layer=2 filter=10 channel=33
    54, 29, 31, 67, 22, -16, 70, 21, -17,
    -- layer=2 filter=10 channel=34
    -14, 1, -6, -6, 15, -18, -24, -7, -6,
    -- layer=2 filter=10 channel=35
    -6, -17, 5, -3, -1, 4, 10, -19, -2,
    -- layer=2 filter=10 channel=36
    -6, 32, -6, -23, 20, 2, -14, -25, -2,
    -- layer=2 filter=10 channel=37
    -23, 27, -40, 0, -3, 38, 9, 5, 32,
    -- layer=2 filter=10 channel=38
    -4, -18, 1, 0, 14, 11, 28, 23, 3,
    -- layer=2 filter=10 channel=39
    -16, -19, -20, -12, 26, 3, -18, 7, -11,
    -- layer=2 filter=10 channel=40
    -3, -27, -22, 13, -20, -20, 37, 20, 23,
    -- layer=2 filter=10 channel=41
    -11, 10, -10, -29, 12, 29, 9, 11, 10,
    -- layer=2 filter=10 channel=42
    1, 11, 33, 17, 43, 53, 12, 34, 37,
    -- layer=2 filter=10 channel=43
    -24, -44, -1, -28, -23, 18, 7, 2, -22,
    -- layer=2 filter=10 channel=44
    28, -43, -40, 1, -27, -27, 5, -12, 6,
    -- layer=2 filter=10 channel=45
    16, -8, 18, -15, 6, -21, -15, -5, -1,
    -- layer=2 filter=10 channel=46
    -16, -9, -33, -23, 37, 16, 3, 18, -20,
    -- layer=2 filter=10 channel=47
    6, -3, 3, -17, 13, 0, 5, -6, 8,
    -- layer=2 filter=10 channel=48
    -19, -21, 9, -45, -37, -16, -7, -18, 3,
    -- layer=2 filter=10 channel=49
    34, -12, -31, -9, 10, -1, -9, 0, -8,
    -- layer=2 filter=10 channel=50
    -1, 3, 16, -12, 3, -1, -18, 0, 16,
    -- layer=2 filter=10 channel=51
    3, 0, -10, -3, -17, -15, -5, 16, -8,
    -- layer=2 filter=10 channel=52
    32, 9, -2, 22, 52, 35, 20, 19, 13,
    -- layer=2 filter=10 channel=53
    -13, 4, -17, -28, 41, -5, -6, 34, 34,
    -- layer=2 filter=10 channel=54
    3, 25, 13, 16, 3, -10, -25, -19, -35,
    -- layer=2 filter=10 channel=55
    -2, 15, -11, -5, -8, -10, 14, -3, 1,
    -- layer=2 filter=10 channel=56
    -1, -60, -7, 18, -17, -1, -20, 6, 12,
    -- layer=2 filter=10 channel=57
    -1, -16, -28, 1, 8, -8, -47, 2, -27,
    -- layer=2 filter=10 channel=58
    -22, -23, 11, 21, 27, 24, 19, 12, -1,
    -- layer=2 filter=10 channel=59
    13, -8, -1, -12, -2, -17, 9, 10, -9,
    -- layer=2 filter=10 channel=60
    -14, -3, -46, -43, -52, -67, -11, -32, -32,
    -- layer=2 filter=10 channel=61
    17, -6, 12, 4, -4, 9, -5, 13, -10,
    -- layer=2 filter=10 channel=62
    3, -4, -14, -11, 40, 12, 3, -23, -11,
    -- layer=2 filter=10 channel=63
    1, 13, 9, -42, 16, -12, 12, -3, -15,
    -- layer=2 filter=11 channel=0
    31, -7, 9, 30, 0, -1, 39, -4, -7,
    -- layer=2 filter=11 channel=1
    -6, 1, -13, -29, -35, 6, 2, -7, -19,
    -- layer=2 filter=11 channel=2
    44, -18, -23, 27, 2, -12, 38, -22, 12,
    -- layer=2 filter=11 channel=3
    15, 18, -14, 15, 9, 15, -12, -17, -7,
    -- layer=2 filter=11 channel=4
    22, -4, 8, 18, 8, -23, 17, -2, -10,
    -- layer=2 filter=11 channel=5
    -24, -14, -11, -17, -16, 3, -34, -2, 9,
    -- layer=2 filter=11 channel=6
    -15, -4, -10, -4, -4, 5, 11, -11, -11,
    -- layer=2 filter=11 channel=7
    -6, 4, -2, 4, -20, 5, -10, -24, -19,
    -- layer=2 filter=11 channel=8
    8, -11, -6, -36, -7, -22, 20, -11, 3,
    -- layer=2 filter=11 channel=9
    3, -13, 22, -17, 8, 12, 2, 10, 53,
    -- layer=2 filter=11 channel=10
    -4, -5, 14, -6, 17, -3, 3, 7, 13,
    -- layer=2 filter=11 channel=11
    -13, -19, 15, -26, -19, 1, -8, -9, 5,
    -- layer=2 filter=11 channel=12
    12, 1, 1, 9, -5, 12, 4, -13, 3,
    -- layer=2 filter=11 channel=13
    -56, -29, -23, -12, -18, -2, -23, -24, -14,
    -- layer=2 filter=11 channel=14
    -15, 11, -24, -6, 1, -25, -25, 14, 5,
    -- layer=2 filter=11 channel=15
    -14, 9, 0, -9, -29, -29, -4, -8, 3,
    -- layer=2 filter=11 channel=16
    -5, -8, -17, 0, -4, 7, -14, -3, -10,
    -- layer=2 filter=11 channel=17
    -30, 14, -16, -28, -7, -3, -20, -24, -9,
    -- layer=2 filter=11 channel=18
    -44, -16, -16, -6, 6, -3, -37, -25, -20,
    -- layer=2 filter=11 channel=19
    -8, 17, 22, 3, 0, 14, 10, 24, 28,
    -- layer=2 filter=11 channel=20
    -42, -1, 17, -18, -19, -8, -3, -2, -7,
    -- layer=2 filter=11 channel=21
    -10, -17, -2, 2, -18, -29, -17, -24, -12,
    -- layer=2 filter=11 channel=22
    -6, 19, -6, 6, -20, 16, 10, 0, 16,
    -- layer=2 filter=11 channel=23
    6, -20, -17, -9, -8, -3, -14, -19, -7,
    -- layer=2 filter=11 channel=24
    3, 0, 14, 9, -6, 7, 3, 13, -11,
    -- layer=2 filter=11 channel=25
    7, 15, 9, 0, -6, 12, -11, -2, -4,
    -- layer=2 filter=11 channel=26
    16, 0, 10, 12, -12, 8, 8, 14, -10,
    -- layer=2 filter=11 channel=27
    0, 0, 23, 16, 21, 9, -19, 4, 0,
    -- layer=2 filter=11 channel=28
    -6, 18, 5, 5, 8, 10, 24, 0, 1,
    -- layer=2 filter=11 channel=29
    -23, -17, 17, -8, -3, -2, 1, 11, -6,
    -- layer=2 filter=11 channel=30
    -12, 0, -4, 0, 2, 8, -4, -3, -7,
    -- layer=2 filter=11 channel=31
    -40, -31, 7, -17, -10, -5, -17, 8, -24,
    -- layer=2 filter=11 channel=32
    -5, 18, 2, 10, 8, -16, 2, 12, 5,
    -- layer=2 filter=11 channel=33
    -20, 14, 11, -13, 18, 32, -13, 47, -11,
    -- layer=2 filter=11 channel=34
    -19, -1, -6, -14, -19, -3, 6, -3, -18,
    -- layer=2 filter=11 channel=35
    -41, -12, -18, -5, 7, -5, -26, 0, -35,
    -- layer=2 filter=11 channel=36
    -27, -14, 0, 0, -17, -2, -22, -33, -9,
    -- layer=2 filter=11 channel=37
    5, 10, -27, -1, -21, -1, 23, -15, -24,
    -- layer=2 filter=11 channel=38
    -14, -12, -14, 19, 2, -2, 32, -27, -30,
    -- layer=2 filter=11 channel=39
    -5, 4, 2, -21, 1, 15, -7, -10, 2,
    -- layer=2 filter=11 channel=40
    -4, 21, -13, -19, 0, 2, 3, 14, -16,
    -- layer=2 filter=11 channel=41
    11, -36, 0, 8, -21, 7, 1, -18, -16,
    -- layer=2 filter=11 channel=42
    0, -17, -21, -11, -10, -38, 29, 17, -13,
    -- layer=2 filter=11 channel=43
    2, 10, 9, 8, 10, -8, 1, 21, -32,
    -- layer=2 filter=11 channel=44
    17, 12, -22, 28, 13, -12, 26, 3, -6,
    -- layer=2 filter=11 channel=45
    -36, -1, -11, 12, -17, 5, 2, -33, -13,
    -- layer=2 filter=11 channel=46
    3, -7, -1, 0, 10, -9, 9, -25, -4,
    -- layer=2 filter=11 channel=47
    -7, 6, 16, -16, -1, 4, -11, -17, -6,
    -- layer=2 filter=11 channel=48
    7, -5, 17, 29, -12, -1, 15, -3, -20,
    -- layer=2 filter=11 channel=49
    -16, 3, -5, 16, -20, -5, 6, 5, 0,
    -- layer=2 filter=11 channel=50
    -6, 2, 17, -16, 17, 0, 0, 10, 7,
    -- layer=2 filter=11 channel=51
    3, -13, 3, 2, 2, 7, -1, -11, 4,
    -- layer=2 filter=11 channel=52
    16, 6, -1, 1, -25, 6, -17, 1, 26,
    -- layer=2 filter=11 channel=53
    -5, -15, -15, 16, -1, -31, 3, -4, -7,
    -- layer=2 filter=11 channel=54
    -6, 4, -23, 12, -25, -8, -3, -10, -22,
    -- layer=2 filter=11 channel=55
    11, -15, 0, -7, 8, 3, 12, 9, -8,
    -- layer=2 filter=11 channel=56
    3, 17, 1, 26, -5, -8, 21, -7, -23,
    -- layer=2 filter=11 channel=57
    -3, -4, -11, 7, -2, 10, -23, -10, 0,
    -- layer=2 filter=11 channel=58
    6, -8, 12, -20, -14, -4, -15, 3, -22,
    -- layer=2 filter=11 channel=59
    -2, 15, -7, -10, -10, 2, 0, 8, -3,
    -- layer=2 filter=11 channel=60
    -13, 1, 12, -16, -6, -24, -29, 7, 4,
    -- layer=2 filter=11 channel=61
    16, 0, -10, 13, 2, 19, 1, -1, 16,
    -- layer=2 filter=11 channel=62
    -1, 52, 16, 14, 2, 0, -12, 20, -18,
    -- layer=2 filter=11 channel=63
    -20, -12, -5, -33, -47, -12, -19, -3, -20,
    -- layer=2 filter=12 channel=0
    2, -7, -27, 5, -30, -50, 7, -4, -44,
    -- layer=2 filter=12 channel=1
    14, 17, -5, 4, -5, 1, 3, 19, 26,
    -- layer=2 filter=12 channel=2
    -30, -9, -20, -27, -14, -51, -28, -39, -52,
    -- layer=2 filter=12 channel=3
    17, -8, 8, -30, 0, 9, -23, -15, -26,
    -- layer=2 filter=12 channel=4
    -19, 31, 30, -20, 31, 29, -23, 6, 25,
    -- layer=2 filter=12 channel=5
    13, -1, 1, 11, 6, 27, 27, 23, 32,
    -- layer=2 filter=12 channel=6
    -17, 13, 18, -2, 8, 13, -29, 6, -5,
    -- layer=2 filter=12 channel=7
    -7, 21, 4, -18, 44, 29, -24, -21, 9,
    -- layer=2 filter=12 channel=8
    0, 13, 21, 11, 12, 40, 29, 30, 19,
    -- layer=2 filter=12 channel=9
    17, 18, -18, -44, 0, 2, -16, -51, -27,
    -- layer=2 filter=12 channel=10
    11, 0, -10, 4, 11, 5, 0, -17, -13,
    -- layer=2 filter=12 channel=11
    -12, -6, 1, 0, 16, 18, 10, 4, 26,
    -- layer=2 filter=12 channel=12
    -19, -5, 0, 0, -19, 0, 0, 14, 0,
    -- layer=2 filter=12 channel=13
    35, 5, -13, 26, 5, 1, 2, -21, -8,
    -- layer=2 filter=12 channel=14
    -4, -17, -1, 21, -11, -1, 35, 15, 24,
    -- layer=2 filter=12 channel=15
    5, -1, 5, 3, -19, 2, 12, 1, 3,
    -- layer=2 filter=12 channel=16
    -9, 17, 2, -16, 0, 1, -9, 11, 13,
    -- layer=2 filter=12 channel=17
    6, -20, -9, -1, -11, -19, 1, 1, 0,
    -- layer=2 filter=12 channel=18
    19, -9, -3, 9, -14, -9, 17, -8, 25,
    -- layer=2 filter=12 channel=19
    11, 18, -14, -6, 0, -4, -2, 1, 10,
    -- layer=2 filter=12 channel=20
    4, -4, -9, 4, 11, 0, 33, 9, 22,
    -- layer=2 filter=12 channel=21
    -4, 11, 6, -4, 27, 33, -3, -7, -2,
    -- layer=2 filter=12 channel=22
    15, 19, -1, -4, -12, -12, 17, 5, -15,
    -- layer=2 filter=12 channel=23
    -19, 4, 29, -22, 18, 41, -32, 4, 7,
    -- layer=2 filter=12 channel=24
    23, 15, 19, 3, -14, 10, 0, -1, -13,
    -- layer=2 filter=12 channel=25
    8, -14, 6, -4, 4, -12, -14, 10, -13,
    -- layer=2 filter=12 channel=26
    -14, -10, 9, 0, -8, 13, 11, 0, -7,
    -- layer=2 filter=12 channel=27
    26, -6, -5, 2, 11, -9, 12, -3, 20,
    -- layer=2 filter=12 channel=28
    -3, 0, -44, 11, 3, -50, 11, -8, -25,
    -- layer=2 filter=12 channel=29
    10, -10, -3, 27, -9, 9, 0, 9, -1,
    -- layer=2 filter=12 channel=30
    -4, 16, -9, -24, 8, 20, -5, 10, 0,
    -- layer=2 filter=12 channel=31
    -12, -14, -20, 20, 8, -11, 32, -18, -9,
    -- layer=2 filter=12 channel=32
    -9, -15, -7, -7, 16, -13, -18, 2, 7,
    -- layer=2 filter=12 channel=33
    -36, -32, -68, -31, -79, -86, -46, -55, -54,
    -- layer=2 filter=12 channel=34
    -10, 28, 13, -4, 18, 40, -28, -10, -19,
    -- layer=2 filter=12 channel=35
    26, -26, -31, 10, -14, -7, 10, 12, 17,
    -- layer=2 filter=12 channel=36
    1, 25, 18, 6, 23, 5, -5, 14, -2,
    -- layer=2 filter=12 channel=37
    -27, -2, 9, -9, 2, 29, -6, -11, -11,
    -- layer=2 filter=12 channel=38
    -30, 10, 34, -3, 2, 14, -18, -16, -10,
    -- layer=2 filter=12 channel=39
    -13, -31, 13, 7, 3, 3, -2, -2, 5,
    -- layer=2 filter=12 channel=40
    4, 5, -5, 16, 8, -2, 1, 3, 6,
    -- layer=2 filter=12 channel=41
    16, -27, -21, 35, -12, 4, 8, 2, 15,
    -- layer=2 filter=12 channel=42
    -20, -11, -16, 0, -37, -20, -35, -3, -7,
    -- layer=2 filter=12 channel=43
    -16, -3, 6, -21, -7, 0, -14, 6, -20,
    -- layer=2 filter=12 channel=44
    3, -15, 18, -24, 0, 7, -23, -25, 2,
    -- layer=2 filter=12 channel=45
    0, -3, -22, -9, -20, 7, 12, -2, 12,
    -- layer=2 filter=12 channel=46
    -17, -9, 2, -16, 14, 43, -16, -17, -2,
    -- layer=2 filter=12 channel=47
    13, 0, 10, 15, -4, 7, -8, 2, -3,
    -- layer=2 filter=12 channel=48
    22, -4, -21, 45, 2, -31, 19, 29, -10,
    -- layer=2 filter=12 channel=49
    -16, 18, -8, -13, 31, 4, -37, -22, 0,
    -- layer=2 filter=12 channel=50
    -10, 2, -6, -13, 17, -8, 14, -14, -8,
    -- layer=2 filter=12 channel=51
    19, 8, -1, 14, 1, 18, 1, 16, 15,
    -- layer=2 filter=12 channel=52
    0, -21, -12, 18, -15, -6, -25, -30, -47,
    -- layer=2 filter=12 channel=53
    -31, -3, 41, 7, 0, 31, -23, 5, -16,
    -- layer=2 filter=12 channel=54
    -12, -8, -1, -22, 11, 21, -10, -6, 1,
    -- layer=2 filter=12 channel=55
    -17, -13, 8, 15, -15, 14, 0, 0, -10,
    -- layer=2 filter=12 channel=56
    -15, -18, -16, -28, 18, 17, -17, -27, -11,
    -- layer=2 filter=12 channel=57
    -3, 22, 15, -7, 8, -5, -40, -34, 0,
    -- layer=2 filter=12 channel=58
    18, -14, 2, 9, 17, 20, 21, 30, 39,
    -- layer=2 filter=12 channel=59
    -13, -5, 4, 3, 4, -9, 2, -6, -13,
    -- layer=2 filter=12 channel=60
    0, -25, -20, -25, -10, -20, -15, -18, -19,
    -- layer=2 filter=12 channel=61
    7, -1, -2, 0, 8, -3, 0, 4, -13,
    -- layer=2 filter=12 channel=62
    -36, -46, -36, -2, 3, -13, -9, 7, 5,
    -- layer=2 filter=12 channel=63
    -16, 32, 7, -10, -11, 4, -37, -19, 7,
    -- layer=2 filter=13 channel=0
    -19, 8, -16, 3, 35, 16, 61, 80, 37,
    -- layer=2 filter=13 channel=1
    17, 19, 1, 3, 17, -9, 15, -3, -9,
    -- layer=2 filter=13 channel=2
    -1, -13, -31, 15, 56, 40, 64, 34, 41,
    -- layer=2 filter=13 channel=3
    -13, -3, -8, 5, -2, -7, -4, 24, 12,
    -- layer=2 filter=13 channel=4
    12, -23, 31, 18, 10, 29, -7, -5, 3,
    -- layer=2 filter=13 channel=5
    23, 40, 4, -7, 19, 17, 13, 1, -8,
    -- layer=2 filter=13 channel=6
    6, -10, 15, 18, 8, 0, 2, -3, -11,
    -- layer=2 filter=13 channel=7
    1, -6, -11, 23, 7, -10, -22, -1, 3,
    -- layer=2 filter=13 channel=8
    50, -2, -4, 36, 12, -13, 5, -70, -47,
    -- layer=2 filter=13 channel=9
    30, 0, 9, 15, 4, -53, 45, -5, -13,
    -- layer=2 filter=13 channel=10
    -16, 3, -2, -3, 17, 13, 7, -11, 14,
    -- layer=2 filter=13 channel=11
    13, 16, 10, 12, 19, -24, 34, 9, 0,
    -- layer=2 filter=13 channel=12
    -1, 9, -4, 3, 0, 3, 5, -16, 13,
    -- layer=2 filter=13 channel=13
    26, 7, 0, 5, 3, 2, 7, -18, -13,
    -- layer=2 filter=13 channel=14
    6, 1, 6, 0, 0, 29, 31, 35, 40,
    -- layer=2 filter=13 channel=15
    8, -6, 13, -2, -12, -13, -25, -8, -12,
    -- layer=2 filter=13 channel=16
    12, 6, 13, -10, -3, -12, -21, 12, -15,
    -- layer=2 filter=13 channel=17
    12, 9, 14, -26, -26, -21, -15, 6, -22,
    -- layer=2 filter=13 channel=18
    20, 3, -17, 38, 0, -2, -19, 0, -9,
    -- layer=2 filter=13 channel=19
    8, -1, 9, 9, 19, -6, -7, -3, -10,
    -- layer=2 filter=13 channel=20
    27, -6, 14, -24, 0, 20, -1, 36, 20,
    -- layer=2 filter=13 channel=21
    24, -14, 27, 48, 24, 9, 0, 15, -18,
    -- layer=2 filter=13 channel=22
    7, -16, 1, -1, 13, -2, -11, 18, 14,
    -- layer=2 filter=13 channel=23
    21, 13, 13, 30, -7, 13, 18, -19, -21,
    -- layer=2 filter=13 channel=24
    19, 1, 20, 2, 12, -13, -13, 7, -9,
    -- layer=2 filter=13 channel=25
    -12, 0, -10, 4, 16, -7, 5, 3, 4,
    -- layer=2 filter=13 channel=26
    7, -6, -13, 15, 17, 2, 2, 2, -8,
    -- layer=2 filter=13 channel=27
    -6, 8, 7, -11, -9, 3, -6, 5, 3,
    -- layer=2 filter=13 channel=28
    -19, -26, -33, -10, 7, -36, 21, 2, 15,
    -- layer=2 filter=13 channel=29
    17, 5, 0, -16, -23, -1, 10, 21, 0,
    -- layer=2 filter=13 channel=30
    4, 42, 33, 13, 6, 2, -14, 11, -4,
    -- layer=2 filter=13 channel=31
    16, 2, -11, 28, 9, 18, 23, 42, 16,
    -- layer=2 filter=13 channel=32
    3, -5, 13, -10, -4, 4, -7, 15, -18,
    -- layer=2 filter=13 channel=33
    26, 30, 29, 14, 36, 37, 28, 55, 90,
    -- layer=2 filter=13 channel=34
    12, -6, 23, 36, 8, 2, -23, -24, -44,
    -- layer=2 filter=13 channel=35
    15, 12, -10, 12, 1, 1, 36, -10, 2,
    -- layer=2 filter=13 channel=36
    14, 29, 34, 10, -15, 6, 1, -17, 4,
    -- layer=2 filter=13 channel=37
    24, 2, 11, 7, -23, -14, -28, -40, -34,
    -- layer=2 filter=13 channel=38
    0, -10, 4, 17, -11, 20, 5, -4, 17,
    -- layer=2 filter=13 channel=39
    -1, -2, -3, -17, -47, -18, 22, 8, 32,
    -- layer=2 filter=13 channel=40
    21, -12, 1, 6, 0, 17, -29, -35, -7,
    -- layer=2 filter=13 channel=41
    -12, -16, -30, 10, -8, -14, 21, 5, -9,
    -- layer=2 filter=13 channel=42
    -41, -10, -6, 6, -49, 3, 21, -18, -27,
    -- layer=2 filter=13 channel=43
    4, 7, -14, 4, -25, -40, 12, 11, -14,
    -- layer=2 filter=13 channel=44
    12, 13, 10, 3, -1, -1, 22, -10, 5,
    -- layer=2 filter=13 channel=45
    9, 9, -4, -6, -44, -11, 0, -43, -9,
    -- layer=2 filter=13 channel=46
    15, -4, -5, 3, -49, -5, -40, -45, -1,
    -- layer=2 filter=13 channel=47
    4, 7, -1, -8, -11, -4, -1, 6, 9,
    -- layer=2 filter=13 channel=48
    -9, -5, -50, -20, -15, -38, -11, -14, -31,
    -- layer=2 filter=13 channel=49
    -2, -2, 27, -5, -16, -23, 18, -2, -11,
    -- layer=2 filter=13 channel=50
    -1, 13, 0, 14, 5, -13, -11, 13, -16,
    -- layer=2 filter=13 channel=51
    16, -17, -15, 13, -3, -1, -14, 19, 11,
    -- layer=2 filter=13 channel=52
    -10, -45, -35, -17, -26, -9, 66, 5, -6,
    -- layer=2 filter=13 channel=53
    28, -29, -8, 18, -6, -16, -62, -49, -40,
    -- layer=2 filter=13 channel=54
    -14, 15, 3, 8, -25, -12, -4, -3, -37,
    -- layer=2 filter=13 channel=55
    6, -13, 15, 2, 9, -7, 5, 4, 13,
    -- layer=2 filter=13 channel=56
    6, 40, 16, -9, 3, 16, 6, 9, 11,
    -- layer=2 filter=13 channel=57
    -5, -8, -2, 1, 0, -11, -5, -13, -47,
    -- layer=2 filter=13 channel=58
    25, 49, -13, -12, 23, -13, 1, -8, 3,
    -- layer=2 filter=13 channel=59
    -7, -5, 6, -14, 1, 12, -12, -5, 0,
    -- layer=2 filter=13 channel=60
    -14, -13, -9, 32, 12, 1, 40, 36, 36,
    -- layer=2 filter=13 channel=61
    -8, -10, 13, -4, 1, -10, 3, 11, -8,
    -- layer=2 filter=13 channel=62
    -8, -42, -8, -13, -63, -21, -59, -76, -67,
    -- layer=2 filter=13 channel=63
    1, 1, -13, 15, 15, -24, -19, -30, -20,
    -- layer=2 filter=14 channel=0
    -26, -6, -15, -30, 9, -35, -60, -24, -27,
    -- layer=2 filter=14 channel=1
    -2, -17, -11, -1, 0, -8, 21, 21, 45,
    -- layer=2 filter=14 channel=2
    12, 13, 4, -4, 20, -31, 7, -18, -22,
    -- layer=2 filter=14 channel=3
    14, -4, 0, 2, 19, 2, -24, -21, 1,
    -- layer=2 filter=14 channel=4
    25, 34, 45, -7, 11, 6, -16, -19, -46,
    -- layer=2 filter=14 channel=5
    20, -4, -10, 19, 24, 31, 25, 28, 57,
    -- layer=2 filter=14 channel=6
    16, 18, 19, -6, -2, 4, -25, -51, -53,
    -- layer=2 filter=14 channel=7
    20, 0, -11, 8, -16, -16, 7, -16, -30,
    -- layer=2 filter=14 channel=8
    41, -12, 32, -50, -16, 31, 29, 46, 65,
    -- layer=2 filter=14 channel=9
    40, 28, -19, 18, 10, -19, 16, -25, -34,
    -- layer=2 filter=14 channel=10
    -6, -13, 1, 5, -18, 16, -13, 1, -4,
    -- layer=2 filter=14 channel=11
    22, -17, -9, 20, -17, 7, -21, 0, 15,
    -- layer=2 filter=14 channel=12
    7, 18, -9, 2, 0, -14, 2, 1, 15,
    -- layer=2 filter=14 channel=13
    13, 9, 4, 24, 9, -1, 36, -22, -36,
    -- layer=2 filter=14 channel=14
    7, 11, 13, 40, 21, 9, 6, -8, -25,
    -- layer=2 filter=14 channel=15
    -17, 6, -8, -2, -14, 10, -18, 29, 23,
    -- layer=2 filter=14 channel=16
    -2, -6, 4, -13, -1, 18, -18, -12, -6,
    -- layer=2 filter=14 channel=17
    23, 4, 2, -19, -18, -19, -14, -9, 6,
    -- layer=2 filter=14 channel=18
    -12, -19, 23, 12, 20, 2, 58, 4, -29,
    -- layer=2 filter=14 channel=19
    -4, -8, -8, -3, 21, 4, 32, 21, -3,
    -- layer=2 filter=14 channel=20
    -9, 21, -17, 42, 10, -4, 33, 15, -7,
    -- layer=2 filter=14 channel=21
    14, 29, -4, -20, -25, -32, -28, -23, -18,
    -- layer=2 filter=14 channel=22
    -13, -3, 8, 5, -13, 10, -10, 4, -14,
    -- layer=2 filter=14 channel=23
    23, -1, -1, 15, -11, -11, -31, -45, -28,
    -- layer=2 filter=14 channel=24
    0, 0, -24, -16, -1, -14, -2, 9, -20,
    -- layer=2 filter=14 channel=25
    18, 0, 5, -1, 0, 8, -8, 8, 0,
    -- layer=2 filter=14 channel=26
    12, 19, 7, -17, 12, -12, 10, -12, -3,
    -- layer=2 filter=14 channel=27
    29, -10, 3, -8, -1, 8, -1, 6, 18,
    -- layer=2 filter=14 channel=28
    14, 18, 30, 52, 41, 23, 52, -7, -24,
    -- layer=2 filter=14 channel=29
    10, 6, 11, 13, 9, -2, 15, -25, 6,
    -- layer=2 filter=14 channel=30
    -12, 2, -8, -7, -22, -12, -16, 6, 28,
    -- layer=2 filter=14 channel=31
    18, 4, 9, 29, 5, -16, -32, -26, -62,
    -- layer=2 filter=14 channel=32
    11, -16, -12, -5, 1, 14, 17, -11, 7,
    -- layer=2 filter=14 channel=33
    -37, 5, 6, -45, -49, -54, -88, -85, -90,
    -- layer=2 filter=14 channel=34
    -11, -17, -4, -7, -26, 2, -6, -5, 18,
    -- layer=2 filter=14 channel=35
    5, 9, 19, 36, 27, 2, -6, -18, -27,
    -- layer=2 filter=14 channel=36
    -12, -8, -40, 11, -3, 7, -1, 27, 32,
    -- layer=2 filter=14 channel=37
    28, -3, 7, -34, -38, -39, -40, -44, -40,
    -- layer=2 filter=14 channel=38
    3, 12, 18, 3, 9, -23, -57, -28, -54,
    -- layer=2 filter=14 channel=39
    26, 16, -29, 23, 8, -20, -21, -43, -12,
    -- layer=2 filter=14 channel=40
    28, 31, 24, -16, -3, 3, 11, 24, -38,
    -- layer=2 filter=14 channel=41
    12, 0, 2, 18, -9, 10, -28, -17, -36,
    -- layer=2 filter=14 channel=42
    -5, 8, -3, -38, -29, -20, -11, 13, -3,
    -- layer=2 filter=14 channel=43
    7, 4, -31, -5, -31, -15, -55, -25, 33,
    -- layer=2 filter=14 channel=44
    -6, 1, 9, 10, -4, -53, -42, -12, -73,
    -- layer=2 filter=14 channel=45
    1, -6, 13, 16, 5, 27, -2, -16, -21,
    -- layer=2 filter=14 channel=46
    14, -21, -9, -15, -8, -9, -27, -29, -7,
    -- layer=2 filter=14 channel=47
    -9, 11, 8, 12, -4, -15, 18, 7, 3,
    -- layer=2 filter=14 channel=48
    20, 3, 3, 26, 40, 16, 14, -13, -4,
    -- layer=2 filter=14 channel=49
    13, 15, 9, -4, -26, -14, -32, -46, -23,
    -- layer=2 filter=14 channel=50
    0, 5, -11, -15, -5, -4, -13, -3, 9,
    -- layer=2 filter=14 channel=51
    5, -14, -9, -18, 9, 12, -8, 14, 6,
    -- layer=2 filter=14 channel=52
    25, 19, 14, -4, 6, 8, -7, -47, -9,
    -- layer=2 filter=14 channel=53
    38, 11, 18, -6, -10, -7, -3, 7, -7,
    -- layer=2 filter=14 channel=54
    8, -13, 5, -4, -24, -11, 7, 5, 8,
    -- layer=2 filter=14 channel=55
    -17, -1, 0, 15, -15, -3, 16, 0, -19,
    -- layer=2 filter=14 channel=56
    12, 7, -10, 9, 10, -35, -15, -18, -51,
    -- layer=2 filter=14 channel=57
    -6, 18, -20, -2, -24, -34, 4, -9, 32,
    -- layer=2 filter=14 channel=58
    0, 6, 4, 17, 12, 24, 30, 3, 33,
    -- layer=2 filter=14 channel=59
    -6, 18, 12, -13, -11, -2, -1, 4, -17,
    -- layer=2 filter=14 channel=60
    10, -7, 13, 43, 12, 12, 4, 4, -53,
    -- layer=2 filter=14 channel=61
    13, -4, -12, 0, 12, -17, 2, -13, 0,
    -- layer=2 filter=14 channel=62
    -15, -20, -2, -3, -45, 13, -23, 2, -18,
    -- layer=2 filter=14 channel=63
    -19, -26, -38, 2, -20, 5, 22, 23, -21,
    -- layer=2 filter=15 channel=0
    -40, 25, -1, 0, -8, -17, 1, -47, -84,
    -- layer=2 filter=15 channel=1
    -14, -9, -15, 9, 5, 8, 10, 27, 11,
    -- layer=2 filter=15 channel=2
    -3, 42, 16, 12, 4, -29, -2, 0, -90,
    -- layer=2 filter=15 channel=3
    19, -11, 12, 5, 8, -2, 11, 24, -5,
    -- layer=2 filter=15 channel=4
    0, -12, -23, 4, 14, 4, -15, -11, -22,
    -- layer=2 filter=15 channel=5
    -13, 2, 1, -22, -2, 18, -8, -19, 15,
    -- layer=2 filter=15 channel=6
    13, 8, 0, 5, -5, 15, -24, -20, -17,
    -- layer=2 filter=15 channel=7
    -13, 13, -18, -22, 8, 18, -31, -4, 21,
    -- layer=2 filter=15 channel=8
    1, 38, 45, 2, 0, 21, 25, 5, 32,
    -- layer=2 filter=15 channel=9
    -14, -44, -78, 9, -18, -26, 27, 17, 27,
    -- layer=2 filter=15 channel=10
    0, -12, -17, 4, -11, 10, 6, -9, 13,
    -- layer=2 filter=15 channel=11
    -33, -14, -21, -11, -21, -14, 12, 0, 5,
    -- layer=2 filter=15 channel=12
    -6, -13, -9, -2, 1, -3, -9, 5, -11,
    -- layer=2 filter=15 channel=13
    15, -12, 0, 16, 17, 21, -20, -1, 24,
    -- layer=2 filter=15 channel=14
    -3, 34, -1, 2, 27, -12, 5, -16, -8,
    -- layer=2 filter=15 channel=15
    -5, 2, -14, 7, -8, -12, -1, 15, 6,
    -- layer=2 filter=15 channel=16
    0, -6, 12, 0, 16, -9, 12, -22, -11,
    -- layer=2 filter=15 channel=17
    -23, -39, -4, -21, -27, -13, 24, 5, -7,
    -- layer=2 filter=15 channel=18
    23, 1, 8, 7, 0, 15, -4, 21, 35,
    -- layer=2 filter=15 channel=19
    -8, -12, 1, -11, 16, 7, 12, 9, -1,
    -- layer=2 filter=15 channel=20
    -13, -18, -31, -14, 14, -3, -3, -2, 6,
    -- layer=2 filter=15 channel=21
    10, 18, 6, -10, 21, 2, -3, 16, -4,
    -- layer=2 filter=15 channel=22
    10, 7, -9, 12, -20, 7, 18, -8, 16,
    -- layer=2 filter=15 channel=23
    5, 12, 14, 5, -12, 19, 0, -7, -11,
    -- layer=2 filter=15 channel=24
    11, 0, -13, -2, -9, -8, 21, 5, -8,
    -- layer=2 filter=15 channel=25
    0, -14, -3, 10, -8, 14, -11, 3, 3,
    -- layer=2 filter=15 channel=26
    12, 19, 9, -1, -3, -9, 13, -9, -10,
    -- layer=2 filter=15 channel=27
    2, -9, 9, 3, 4, -2, -10, -23, 6,
    -- layer=2 filter=15 channel=28
    17, 16, -3, 12, 33, 6, 11, 20, -34,
    -- layer=2 filter=15 channel=29
    -28, -34, -30, -43, -31, -49, -9, 0, -24,
    -- layer=2 filter=15 channel=30
    17, -19, 0, -21, -29, 20, -1, 34, 9,
    -- layer=2 filter=15 channel=31
    -20, -2, -12, -3, 4, 7, 21, 13, 23,
    -- layer=2 filter=15 channel=32
    -1, -13, 2, -3, 19, -9, -13, -6, 13,
    -- layer=2 filter=15 channel=33
    15, 37, 44, 7, -15, 22, -41, -21, 14,
    -- layer=2 filter=15 channel=34
    15, 0, 26, -12, -5, -15, 13, 5, -9,
    -- layer=2 filter=15 channel=35
    15, 31, 25, 2, -7, 4, -23, 27, 29,
    -- layer=2 filter=15 channel=36
    34, -3, 43, 24, 20, 5, 2, 8, 31,
    -- layer=2 filter=15 channel=37
    0, 18, 7, 7, 24, 22, 18, 8, 26,
    -- layer=2 filter=15 channel=38
    0, -3, 14, -11, 0, 4, -22, -9, -15,
    -- layer=2 filter=15 channel=39
    -42, -16, 8, -4, -15, 16, 28, 14, 44,
    -- layer=2 filter=15 channel=40
    11, 36, 22, 14, -4, 15, 0, 19, 20,
    -- layer=2 filter=15 channel=41
    -24, -40, 4, -10, -41, 9, -2, 1, -26,
    -- layer=2 filter=15 channel=42
    -10, 29, 22, 14, 13, 24, 0, -11, 3,
    -- layer=2 filter=15 channel=43
    -23, -3, 16, -16, -47, -13, -8, -32, -52,
    -- layer=2 filter=15 channel=44
    12, -6, 5, -9, 13, -23, 15, -1, -40,
    -- layer=2 filter=15 channel=45
    9, 34, 16, 17, -8, 19, 0, 15, 3,
    -- layer=2 filter=15 channel=46
    -32, 8, 38, -28, 6, 48, -10, 39, 36,
    -- layer=2 filter=15 channel=47
    -16, 12, 2, -4, -17, -19, 8, -5, 4,
    -- layer=2 filter=15 channel=48
    -4, 26, 3, 30, 20, -4, 11, 26, -23,
    -- layer=2 filter=15 channel=49
    0, 20, -4, -5, -9, 0, -7, -4, -22,
    -- layer=2 filter=15 channel=50
    -6, 12, 8, -6, 8, 20, -9, -16, 0,
    -- layer=2 filter=15 channel=51
    -12, 12, 18, -9, 6, -17, 16, 16, -8,
    -- layer=2 filter=15 channel=52
    24, 13, -45, 7, -38, -30, 34, -11, -39,
    -- layer=2 filter=15 channel=53
    -12, 13, 15, 0, 15, 11, -7, 30, 33,
    -- layer=2 filter=15 channel=54
    -10, -14, 23, -25, -10, 23, 34, 13, 34,
    -- layer=2 filter=15 channel=55
    -2, 16, -2, -2, 8, 2, -7, 0, -14,
    -- layer=2 filter=15 channel=56
    31, 4, 18, 0, 11, -6, 6, 13, -2,
    -- layer=2 filter=15 channel=57
    -6, -16, -20, -10, -1, -11, 22, -22, -2,
    -- layer=2 filter=15 channel=58
    -28, 0, -2, -25, -2, -5, -2, -17, -1,
    -- layer=2 filter=15 channel=59
    -1, 4, 3, -4, -9, 11, -16, -5, 11,
    -- layer=2 filter=15 channel=60
    10, 1, -17, -16, 13, -20, 17, -4, -34,
    -- layer=2 filter=15 channel=61
    -9, 9, -5, -13, 4, 13, -4, 2, -10,
    -- layer=2 filter=15 channel=62
    -43, -13, -18, 13, 29, 13, -37, 1, 3,
    -- layer=2 filter=15 channel=63
    -22, 45, 36, -3, 6, 24, -26, 46, 29,
    -- layer=2 filter=16 channel=0
    9, 10, -28, 16, 0, 18, 13, -10, -7,
    -- layer=2 filter=16 channel=1
    12, 21, 15, 22, 6, 6, 24, 5, -12,
    -- layer=2 filter=16 channel=2
    -6, -23, 43, 13, 29, 16, -10, -11, 2,
    -- layer=2 filter=16 channel=3
    22, -1, -8, 8, 3, -19, 22, 0, -20,
    -- layer=2 filter=16 channel=4
    -39, -17, 15, -21, 4, 55, -8, 17, 50,
    -- layer=2 filter=16 channel=5
    20, 7, 29, -5, 23, -6, 29, 24, 10,
    -- layer=2 filter=16 channel=6
    -13, -14, 8, -4, -4, 25, -39, -8, 25,
    -- layer=2 filter=16 channel=7
    -50, -17, -40, -14, -15, -15, -48, -33, 7,
    -- layer=2 filter=16 channel=8
    -24, -36, -3, 3, -39, -4, 10, -5, -38,
    -- layer=2 filter=16 channel=9
    -3, 3, -29, -3, -14, -29, -2, 0, -28,
    -- layer=2 filter=16 channel=10
    -14, -8, 3, -6, 13, 9, -5, 16, -4,
    -- layer=2 filter=16 channel=11
    25, 16, -18, 11, 21, 11, 6, 17, 11,
    -- layer=2 filter=16 channel=12
    -5, -13, -16, 5, 11, -9, -9, -2, -7,
    -- layer=2 filter=16 channel=13
    -6, -35, -56, -7, -41, -75, 19, 6, -26,
    -- layer=2 filter=16 channel=14
    -3, 8, 8, 17, 4, 1, 32, 14, -7,
    -- layer=2 filter=16 channel=15
    3, 4, 16, 24, 21, 25, 1, 12, -8,
    -- layer=2 filter=16 channel=16
    3, 0, -10, 11, -16, 9, -18, 0, 18,
    -- layer=2 filter=16 channel=17
    7, 36, -4, 28, 20, 19, 3, -2, 18,
    -- layer=2 filter=16 channel=18
    -7, -35, -46, 4, -41, -91, 8, -5, -32,
    -- layer=2 filter=16 channel=19
    3, 11, 1, 18, -1, 20, 28, 7, 22,
    -- layer=2 filter=16 channel=20
    3, -7, -23, 32, -20, -17, 12, 9, -20,
    -- layer=2 filter=16 channel=21
    5, 11, -19, 12, -3, 14, 0, 4, 13,
    -- layer=2 filter=16 channel=22
    19, -14, 9, 11, 0, 3, 20, 2, 16,
    -- layer=2 filter=16 channel=23
    15, 3, -21, -9, 21, 1, 0, 8, 1,
    -- layer=2 filter=16 channel=24
    28, 21, -9, 4, -6, 5, 9, -2, 22,
    -- layer=2 filter=16 channel=25
    -5, 18, 11, 16, 4, -5, -15, -11, -1,
    -- layer=2 filter=16 channel=26
    9, 0, -12, -5, -3, 2, 15, -17, 17,
    -- layer=2 filter=16 channel=27
    3, 2, -1, -7, -7, -10, 20, 34, 17,
    -- layer=2 filter=16 channel=28
    -24, 6, 6, 18, 16, -5, 1, 21, -4,
    -- layer=2 filter=16 channel=29
    23, 9, -34, 25, 22, -30, 27, 20, -15,
    -- layer=2 filter=16 channel=30
    26, 18, -6, 21, 20, 2, -19, 19, 23,
    -- layer=2 filter=16 channel=31
    38, -1, -17, 36, 18, -27, 25, 3, -27,
    -- layer=2 filter=16 channel=32
    -6, 3, 20, 10, -6, -9, -3, 7, -5,
    -- layer=2 filter=16 channel=33
    9, -5, 36, 26, -10, 14, -36, -15, -5,
    -- layer=2 filter=16 channel=34
    -16, 11, -27, -6, 3, 15, -12, 12, 20,
    -- layer=2 filter=16 channel=35
    -20, -15, -30, 24, -15, -73, 16, -19, -40,
    -- layer=2 filter=16 channel=36
    -16, 19, 45, -26, 16, 36, -1, 15, 36,
    -- layer=2 filter=16 channel=37
    -32, -6, 46, -13, 1, 23, 7, 10, 22,
    -- layer=2 filter=16 channel=38
    -12, 15, -5, -12, 14, 38, -16, -11, 14,
    -- layer=2 filter=16 channel=39
    -11, -13, -37, -9, -31, -17, -16, -11, -23,
    -- layer=2 filter=16 channel=40
    -36, -26, 5, 0, -24, -3, 22, 5, -17,
    -- layer=2 filter=16 channel=41
    5, -8, -48, 38, -20, -45, 37, 24, -15,
    -- layer=2 filter=16 channel=42
    -3, 7, 1, 46, 20, -16, 20, -6, -16,
    -- layer=2 filter=16 channel=43
    27, -12, -11, 21, 3, -13, -14, -13, -16,
    -- layer=2 filter=16 channel=44
    -8, 5, -30, -9, 8, 18, -38, -2, 41,
    -- layer=2 filter=16 channel=45
    -22, -29, -72, 4, -14, -51, 10, -9, -40,
    -- layer=2 filter=16 channel=46
    6, -22, -10, -20, -49, -22, -25, -18, -13,
    -- layer=2 filter=16 channel=47
    -7, -4, -16, -3, -3, -7, 19, 12, 1,
    -- layer=2 filter=16 channel=48
    -2, -16, -14, 23, 30, -9, 3, 8, -8,
    -- layer=2 filter=16 channel=49
    18, 18, -13, 7, 25, -10, -22, -10, 5,
    -- layer=2 filter=16 channel=50
    6, -2, 16, 10, 3, 16, 8, 7, -8,
    -- layer=2 filter=16 channel=51
    -2, -8, -19, 7, 4, 1, 8, -7, -11,
    -- layer=2 filter=16 channel=52
    19, -12, 14, -48, 14, -36, -18, -24, -39,
    -- layer=2 filter=16 channel=53
    -45, 13, 34, -10, -1, 38, -14, 5, 29,
    -- layer=2 filter=16 channel=54
    11, 15, -12, -18, 6, -7, -10, -12, 19,
    -- layer=2 filter=16 channel=55
    8, 1, -2, 18, 0, -17, 1, 7, -6,
    -- layer=2 filter=16 channel=56
    11, -9, -1, -15, 1, -14, -9, -3, 15,
    -- layer=2 filter=16 channel=57
    24, 16, -1, 3, 5, 31, -14, 4, 1,
    -- layer=2 filter=16 channel=58
    16, -11, -10, 14, -2, 5, 23, -1, -30,
    -- layer=2 filter=16 channel=59
    -4, 7, -13, -5, -14, -13, 9, -12, 6,
    -- layer=2 filter=16 channel=60
    24, 6, -3, 27, 21, 8, -13, 2, 3,
    -- layer=2 filter=16 channel=61
    -13, -8, -1, 6, 12, -17, -15, -6, 16,
    -- layer=2 filter=16 channel=62
    -25, -4, 23, -20, -4, -39, -22, -43, -29,
    -- layer=2 filter=16 channel=63
    -38, -17, 12, -4, 0, 1, -46, -11, -28,
    -- layer=2 filter=17 channel=0
    -21, 10, 15, -8, 8, 49, -70, -37, 20,
    -- layer=2 filter=17 channel=1
    -1, 2, 20, 6, -8, -3, 7, -16, 25,
    -- layer=2 filter=17 channel=2
    42, 38, 29, 20, 35, 24, -8, 26, 10,
    -- layer=2 filter=17 channel=3
    20, -7, 15, -11, -21, -8, -24, -6, 0,
    -- layer=2 filter=17 channel=4
    1, -15, -10, 51, 17, 4, 29, 19, -20,
    -- layer=2 filter=17 channel=5
    -7, -5, 7, 31, 26, -17, -16, -17, -14,
    -- layer=2 filter=17 channel=6
    7, -6, -7, 22, -9, -4, 21, -10, -24,
    -- layer=2 filter=17 channel=7
    39, 23, -3, 24, 6, -14, 27, -22, -19,
    -- layer=2 filter=17 channel=8
    20, -21, -36, 25, -2, -18, 39, 18, -9,
    -- layer=2 filter=17 channel=9
    -15, -15, 9, 7, -27, -28, 9, -5, -45,
    -- layer=2 filter=17 channel=10
    -13, 18, 3, 7, 11, 1, 7, -12, 4,
    -- layer=2 filter=17 channel=11
    -13, 2, 19, -13, 21, 14, -17, -3, -5,
    -- layer=2 filter=17 channel=12
    -14, 11, -17, 15, 14, 11, 6, 11, -4,
    -- layer=2 filter=17 channel=13
    -18, -7, 8, -24, -2, -32, -49, -28, 1,
    -- layer=2 filter=17 channel=14
    -5, -1, 22, -12, 10, 19, 3, -30, 22,
    -- layer=2 filter=17 channel=15
    9, 14, 12, 0, 7, 13, -1, -12, 0,
    -- layer=2 filter=17 channel=16
    -11, -4, -1, 12, -7, 5, -5, 0, 0,
    -- layer=2 filter=17 channel=17
    -30, 0, 0, -20, -8, -20, -14, -8, 21,
    -- layer=2 filter=17 channel=18
    0, 17, 17, -21, 2, -28, -34, -18, -4,
    -- layer=2 filter=17 channel=19
    -12, -4, 0, 2, -5, 22, -5, 17, 21,
    -- layer=2 filter=17 channel=20
    -34, -24, -12, -31, -20, 0, -18, -37, 9,
    -- layer=2 filter=17 channel=21
    24, 17, 2, -10, 9, 14, 26, -10, 9,
    -- layer=2 filter=17 channel=22
    -1, 0, 10, 11, -8, 16, 5, 11, 0,
    -- layer=2 filter=17 channel=23
    1, -6, 27, -20, 9, -1, 8, 14, 19,
    -- layer=2 filter=17 channel=24
    0, -13, 9, 16, 12, -25, -20, 1, 13,
    -- layer=2 filter=17 channel=25
    16, 6, -7, 10, 14, -2, 6, -13, -16,
    -- layer=2 filter=17 channel=26
    -18, 3, 6, -13, -3, 0, -4, 10, 7,
    -- layer=2 filter=17 channel=27
    1, -9, 5, -11, -23, -18, 4, 4, -18,
    -- layer=2 filter=17 channel=28
    9, 10, 30, 28, 37, 32, -3, 22, 12,
    -- layer=2 filter=17 channel=29
    -13, -34, -29, -40, -36, -12, -29, -62, -20,
    -- layer=2 filter=17 channel=30
    -8, 7, -10, 1, -20, -15, 18, 1, -6,
    -- layer=2 filter=17 channel=31
    9, 8, -7, -30, -23, 15, -9, -17, 44,
    -- layer=2 filter=17 channel=32
    15, -15, 13, -11, 17, 18, -11, 6, -7,
    -- layer=2 filter=17 channel=33
    -26, -5, -22, 23, 27, -16, -12, -65, -14,
    -- layer=2 filter=17 channel=34
    1, -16, -8, 21, 4, 10, 29, 23, 9,
    -- layer=2 filter=17 channel=35
    -7, 9, -1, 7, -13, -6, -37, -49, 3,
    -- layer=2 filter=17 channel=36
    32, 26, -5, 19, 8, -13, 16, 40, 11,
    -- layer=2 filter=17 channel=37
    -2, -6, -23, -16, -21, -41, 25, -37, -15,
    -- layer=2 filter=17 channel=38
    28, -13, 7, 12, -10, -16, 19, -6, 10,
    -- layer=2 filter=17 channel=39
    36, 12, -5, 7, 14, 31, -14, -60, -2,
    -- layer=2 filter=17 channel=40
    9, 8, 0, -7, 2, -10, -4, -24, -25,
    -- layer=2 filter=17 channel=41
    -25, -18, 8, -24, -6, 32, -25, -19, 44,
    -- layer=2 filter=17 channel=42
    -16, -16, -44, 30, 5, -3, -23, -25, -38,
    -- layer=2 filter=17 channel=43
    -3, -16, 0, 23, 5, 35, -17, 8, 2,
    -- layer=2 filter=17 channel=44
    -27, -10, 5, -28, 8, 14, 14, 1, 14,
    -- layer=2 filter=17 channel=45
    16, -12, -3, 11, -3, -12, -48, -23, -20,
    -- layer=2 filter=17 channel=46
    66, 20, 5, 45, 19, 18, -20, -8, -18,
    -- layer=2 filter=17 channel=47
    -18, -8, -8, -2, 16, -2, 9, 0, -1,
    -- layer=2 filter=17 channel=48
    20, 22, 30, 16, 25, 55, -25, 12, -4,
    -- layer=2 filter=17 channel=49
    11, 5, -2, 0, 5, -23, 8, 11, 24,
    -- layer=2 filter=17 channel=50
    -7, -10, -1, -14, 2, -1, -16, 4, 18,
    -- layer=2 filter=17 channel=51
    -9, -6, -19, 10, 5, -14, 10, -14, -3,
    -- layer=2 filter=17 channel=52
    7, -2, 7, -25, -5, -14, 14, 40, -37,
    -- layer=2 filter=17 channel=53
    9, 0, -12, 19, 0, -12, 28, 11, -28,
    -- layer=2 filter=17 channel=54
    25, 16, 1, 4, 6, 9, 11, -7, 23,
    -- layer=2 filter=17 channel=55
    -10, -1, 0, 2, -1, 14, -14, -17, 6,
    -- layer=2 filter=17 channel=56
    -11, 2, 16, 0, -4, -9, -19, 0, -9,
    -- layer=2 filter=17 channel=57
    -2, -19, 4, -6, -7, -1, 17, 5, 24,
    -- layer=2 filter=17 channel=58
    -8, -3, -26, 17, 10, 6, -9, -16, 8,
    -- layer=2 filter=17 channel=59
    17, 8, -8, -2, 8, -17, -9, 3, -9,
    -- layer=2 filter=17 channel=60
    -26, 17, 17, 14, 32, 59, -22, -3, 43,
    -- layer=2 filter=17 channel=61
    -20, 13, -10, 16, 15, 11, 14, -14, 13,
    -- layer=2 filter=17 channel=62
    3, 22, -6, -11, -6, -4, -7, -18, 28,
    -- layer=2 filter=17 channel=63
    58, 34, -4, 26, 10, -7, 49, 3, 16,
    -- layer=2 filter=18 channel=0
    -36, -49, -35, 18, -62, -41, 10, -13, -47,
    -- layer=2 filter=18 channel=1
    2, 5, -11, -39, 6, 17, -41, 3, 1,
    -- layer=2 filter=18 channel=2
    -61, -42, -22, -9, -68, -9, -8, -50, -29,
    -- layer=2 filter=18 channel=3
    2, -24, 7, 18, -8, -12, 11, 12, -13,
    -- layer=2 filter=18 channel=4
    -22, 12, -22, 13, 18, 23, 12, -8, -12,
    -- layer=2 filter=18 channel=5
    -13, -6, 25, -46, 21, 27, -17, -13, 22,
    -- layer=2 filter=18 channel=6
    -32, -20, -24, 32, -30, -43, 13, 6, -47,
    -- layer=2 filter=18 channel=7
    13, 9, -33, 23, -14, -24, -32, -26, -13,
    -- layer=2 filter=18 channel=8
    15, -16, -3, -37, 33, 31, 29, -3, 0,
    -- layer=2 filter=18 channel=9
    -51, 10, 17, -54, 13, 20, -2, 0, 10,
    -- layer=2 filter=18 channel=10
    -13, 0, -14, 10, -13, 0, 18, 13, -12,
    -- layer=2 filter=18 channel=11
    -10, 6, 6, -22, -18, 19, -13, -5, 27,
    -- layer=2 filter=18 channel=12
    16, -1, 17, 4, -6, 10, -6, 6, 14,
    -- layer=2 filter=18 channel=13
    0, 31, -12, 53, 10, -27, -2, 21, -31,
    -- layer=2 filter=18 channel=14
    11, -5, -17, -4, 38, -32, -5, -5, 1,
    -- layer=2 filter=18 channel=15
    -4, 8, 3, -41, -5, 5, -30, 4, 11,
    -- layer=2 filter=18 channel=16
    -11, -6, -1, 1, 8, -3, -3, -15, 12,
    -- layer=2 filter=18 channel=17
    6, 5, 16, -22, 17, 31, -24, 2, -2,
    -- layer=2 filter=18 channel=18
    -14, 19, -7, 36, 14, -21, 22, -1, -40,
    -- layer=2 filter=18 channel=19
    13, 18, 12, 0, -4, 13, 0, 21, 12,
    -- layer=2 filter=18 channel=20
    40, 25, -2, 7, 23, 1, -14, 5, -15,
    -- layer=2 filter=18 channel=21
    0, -20, -25, 13, 9, -31, -11, -16, -68,
    -- layer=2 filter=18 channel=22
    3, 17, -9, 7, -5, -15, -1, 18, 5,
    -- layer=2 filter=18 channel=23
    9, 6, -10, 28, -2, -18, 8, -12, -15,
    -- layer=2 filter=18 channel=24
    12, 3, -10, -4, 15, 6, 19, -11, 0,
    -- layer=2 filter=18 channel=25
    1, -11, -12, 7, 13, -5, 1, 13, 6,
    -- layer=2 filter=18 channel=26
    -3, 0, 1, 11, 8, 2, -15, 8, 14,
    -- layer=2 filter=18 channel=27
    -14, 3, 19, -7, -7, -7, -20, 3, 18,
    -- layer=2 filter=18 channel=28
    -72, -29, -3, 3, -55, -5, 11, -9, -59,
    -- layer=2 filter=18 channel=29
    -31, 12, -10, 3, -15, 8, -23, -2, 0,
    -- layer=2 filter=18 channel=30
    4, 16, 4, -29, 14, 33, 1, -18, 7,
    -- layer=2 filter=18 channel=31
    41, 30, -13, 37, 29, -42, 9, 2, -10,
    -- layer=2 filter=18 channel=32
    -14, -11, -2, -14, 23, 11, -10, -13, -4,
    -- layer=2 filter=18 channel=33
    63, 58, 34, 51, 56, 45, 54, 23, 40,
    -- layer=2 filter=18 channel=34
    15, 16, -10, 0, -14, 20, 33, 4, -20,
    -- layer=2 filter=18 channel=35
    -15, -4, -18, 40, 10, -34, 23, -4, 0,
    -- layer=2 filter=18 channel=36
    -46, -1, 28, -57, -6, 24, -29, -17, 8,
    -- layer=2 filter=18 channel=37
    25, 39, -2, 14, 30, 41, 5, -18, -19,
    -- layer=2 filter=18 channel=38
    10, -20, 15, 27, -17, -24, 31, 13, -47,
    -- layer=2 filter=18 channel=39
    -30, -3, 33, -38, -14, 26, -43, 10, 31,
    -- layer=2 filter=18 channel=40
    71, 35, -27, 11, 60, -7, 5, 17, 17,
    -- layer=2 filter=18 channel=41
    25, -21, -24, 11, -3, -28, -23, -4, 4,
    -- layer=2 filter=18 channel=42
    -17, -39, -49, -67, -27, 5, -43, -39, -37,
    -- layer=2 filter=18 channel=43
    -4, 0, -11, 5, 4, 10, -9, -9, 9,
    -- layer=2 filter=18 channel=44
    -15, 2, -21, 9, -19, -57, 3, 5, -52,
    -- layer=2 filter=18 channel=45
    -24, 10, 8, 34, -5, 10, 23, 36, -9,
    -- layer=2 filter=18 channel=46
    6, 12, 3, -28, -2, 0, -41, -4, 49,
    -- layer=2 filter=18 channel=47
    -13, -14, 6, 1, 4, 15, -6, 8, 0,
    -- layer=2 filter=18 channel=48
    -39, -10, -18, 15, -52, -9, -10, -4, -58,
    -- layer=2 filter=18 channel=49
    -8, 8, 6, 16, -9, -7, -3, 30, -12,
    -- layer=2 filter=18 channel=50
    -20, -19, -14, 3, 9, 10, -13, -5, 4,
    -- layer=2 filter=18 channel=51
    -6, -2, -7, -14, -4, -5, 7, 1, -14,
    -- layer=2 filter=18 channel=52
    -58, 18, 51, -76, 18, 58, -5, -5, 27,
    -- layer=2 filter=18 channel=53
    11, 5, 6, 44, -18, -12, 37, -6, -50,
    -- layer=2 filter=18 channel=54
    13, 10, 3, 4, -30, 40, 0, -7, -4,
    -- layer=2 filter=18 channel=55
    5, -8, 3, -6, -6, 9, -2, 14, 0,
    -- layer=2 filter=18 channel=56
    -10, -3, -17, 14, -1, 15, 48, 17, -35,
    -- layer=2 filter=18 channel=57
    6, 12, 5, -18, 19, 11, -8, -5, -6,
    -- layer=2 filter=18 channel=58
    -9, 13, 27, -24, -9, 7, -27, 18, 20,
    -- layer=2 filter=18 channel=59
    -17, 10, -1, -5, -16, 1, -14, 2, 8,
    -- layer=2 filter=18 channel=60
    -12, -37, -23, 5, -11, -37, -12, -35, -40,
    -- layer=2 filter=18 channel=61
    4, 7, 3, -1, -3, -2, 5, 7, -17,
    -- layer=2 filter=18 channel=62
    19, 42, 9, 38, 5, 39, 91, 46, 28,
    -- layer=2 filter=18 channel=63
    -5, -9, -9, 13, -23, -5, -45, -5, -36,
    -- layer=2 filter=19 channel=0
    -41, -9, -46, 49, 22, -2, 23, 36, -14,
    -- layer=2 filter=19 channel=1
    -18, -2, 12, -7, -10, -7, 1, -16, -8,
    -- layer=2 filter=19 channel=2
    -36, -7, 25, 15, 17, 25, 4, 34, 19,
    -- layer=2 filter=19 channel=3
    27, 8, 3, 0, -7, 11, 0, -16, 11,
    -- layer=2 filter=19 channel=4
    10, 6, 22, -10, -26, -7, 0, -19, -5,
    -- layer=2 filter=19 channel=5
    -38, -31, -26, -17, -18, -7, -24, -21, 7,
    -- layer=2 filter=19 channel=6
    11, 12, 25, 3, 3, -16, 9, 20, 19,
    -- layer=2 filter=19 channel=7
    -17, -13, 0, -18, 11, -1, -27, -10, -8,
    -- layer=2 filter=19 channel=8
    -9, 31, 22, -21, -15, -34, 12, -10, 13,
    -- layer=2 filter=19 channel=9
    -44, 4, 8, -33, 0, 17, -17, 8, 37,
    -- layer=2 filter=19 channel=10
    -3, -10, 18, -8, 15, -6, -7, -10, -13,
    -- layer=2 filter=19 channel=11
    -10, 8, 7, 18, 26, 18, -14, 4, -16,
    -- layer=2 filter=19 channel=12
    -14, -15, 1, -5, 8, 14, 15, 2, -13,
    -- layer=2 filter=19 channel=13
    11, 3, 5, 2, 32, 12, 22, 3, 2,
    -- layer=2 filter=19 channel=14
    -6, -5, -21, 12, 21, -9, 21, 26, 7,
    -- layer=2 filter=19 channel=15
    -9, -6, 18, -15, 11, -12, -20, 6, -8,
    -- layer=2 filter=19 channel=16
    0, 18, 11, 2, 2, -8, -14, -7, 3,
    -- layer=2 filter=19 channel=17
    -5, -13, 17, -4, 15, -1, -17, -8, -5,
    -- layer=2 filter=19 channel=18
    1, 13, -6, -11, 10, 3, 13, 1, -9,
    -- layer=2 filter=19 channel=19
    -4, -22, 12, 1, 3, -12, -19, 14, -15,
    -- layer=2 filter=19 channel=20
    -13, -7, -25, 21, -2, -10, 6, 23, 11,
    -- layer=2 filter=19 channel=21
    -18, 0, 3, -23, 10, 2, 0, 0, 11,
    -- layer=2 filter=19 channel=22
    -16, 15, 18, -16, 14, -4, 8, 4, 13,
    -- layer=2 filter=19 channel=23
    16, -5, -6, -19, -1, 0, -19, 1, -7,
    -- layer=2 filter=19 channel=24
    11, -1, 0, -14, 14, 0, 19, 1, 14,
    -- layer=2 filter=19 channel=25
    -13, -14, -7, 6, -10, -16, -18, 4, 10,
    -- layer=2 filter=19 channel=26
    1, -15, 2, -14, -5, -1, 9, 13, 14,
    -- layer=2 filter=19 channel=27
    -9, 10, -11, -20, 16, -15, -13, 18, -14,
    -- layer=2 filter=19 channel=28
    -20, -10, 39, 32, 23, 50, 10, 36, 15,
    -- layer=2 filter=19 channel=29
    5, -8, -25, -7, -8, 1, -15, 20, 16,
    -- layer=2 filter=19 channel=30
    4, 23, 3, -19, 8, 4, -5, -17, 11,
    -- layer=2 filter=19 channel=31
    -18, -21, -9, 2, 17, 4, 6, 9, -9,
    -- layer=2 filter=19 channel=32
    -9, -15, 4, -4, -19, -16, -2, -6, 8,
    -- layer=2 filter=19 channel=33
    -12, -40, -21, 0, -5, 3, -14, 10, 7,
    -- layer=2 filter=19 channel=34
    -12, 21, 20, 2, 5, -4, -9, -4, -10,
    -- layer=2 filter=19 channel=35
    20, 0, 0, -1, 24, -14, 31, 13, -7,
    -- layer=2 filter=19 channel=36
    -3, 26, 12, -16, 2, -4, -28, 4, -20,
    -- layer=2 filter=19 channel=37
    -5, -18, 27, -13, -17, 6, -33, -25, 38,
    -- layer=2 filter=19 channel=38
    0, -26, 17, -10, -25, -14, -22, 8, 10,
    -- layer=2 filter=19 channel=39
    0, -4, -31, 10, 22, 16, -25, 22, 25,
    -- layer=2 filter=19 channel=40
    6, 11, 11, -34, -23, 23, 15, 3, 8,
    -- layer=2 filter=19 channel=41
    -12, -31, -20, 8, 18, -5, 12, 0, -15,
    -- layer=2 filter=19 channel=42
    87, 79, 32, 43, 4, 5, 43, 4, -12,
    -- layer=2 filter=19 channel=43
    -4, -23, -8, 37, 2, 0, 6, -10, -2,
    -- layer=2 filter=19 channel=44
    -4, 6, -14, 0, -10, 4, -35, -28, 4,
    -- layer=2 filter=19 channel=45
    -19, 13, -7, 27, 12, 13, 17, 28, 17,
    -- layer=2 filter=19 channel=46
    -8, 20, -32, 17, 24, -10, 0, -5, 5,
    -- layer=2 filter=19 channel=47
    -14, -8, 10, 9, -10, 0, -18, 7, 10,
    -- layer=2 filter=19 channel=48
    -26, -27, 12, 24, 4, 2, 32, 18, 12,
    -- layer=2 filter=19 channel=49
    6, 3, -20, -6, 25, 13, 2, 0, 2,
    -- layer=2 filter=19 channel=50
    17, 17, -13, -12, 11, -9, 14, -14, 14,
    -- layer=2 filter=19 channel=51
    -15, 20, 10, 14, -11, -12, 15, -10, -6,
    -- layer=2 filter=19 channel=52
    -11, -30, -12, -50, -7, 11, -16, 29, 53,
    -- layer=2 filter=19 channel=53
    20, -5, 19, -8, -34, -19, -11, -38, 18,
    -- layer=2 filter=19 channel=54
    -5, 5, -11, 0, 11, 8, 10, -5, -10,
    -- layer=2 filter=19 channel=55
    16, 2, 19, -11, 4, 6, -4, -2, 17,
    -- layer=2 filter=19 channel=56
    13, 4, 9, 7, -1, -4, -33, 2, 13,
    -- layer=2 filter=19 channel=57
    -16, 18, 8, -1, 19, 19, -9, -16, -9,
    -- layer=2 filter=19 channel=58
    -21, 2, -23, -14, -6, -20, 3, -9, -17,
    -- layer=2 filter=19 channel=59
    -10, 4, 6, -15, 12, -9, -17, 7, -2,
    -- layer=2 filter=19 channel=60
    18, 16, -16, 10, -6, 37, 12, 17, 14,
    -- layer=2 filter=19 channel=61
    0, -16, 6, -2, 16, -13, -12, 4, 0,
    -- layer=2 filter=19 channel=62
    -29, 3, 41, -60, -16, -4, 12, 20, 38,
    -- layer=2 filter=19 channel=63
    -20, -20, -32, -12, -22, -1, -18, -31, 14,
    -- layer=2 filter=20 channel=0
    12, 32, 18, 39, 55, 30, -41, -9, 19,
    -- layer=2 filter=20 channel=1
    19, 0, -2, 13, 14, -18, 27, 0, -2,
    -- layer=2 filter=20 channel=2
    21, 63, 16, 46, 50, 25, 4, 22, -15,
    -- layer=2 filter=20 channel=3
    15, 24, 18, -3, -2, 0, 25, 33, 10,
    -- layer=2 filter=20 channel=4
    -9, -1, 6, -19, 11, -5, -5, 6, -6,
    -- layer=2 filter=20 channel=5
    26, 19, 7, 24, 9, -2, 23, -17, 10,
    -- layer=2 filter=20 channel=6
    3, 2, 12, 8, -2, -21, 14, -19, -14,
    -- layer=2 filter=20 channel=7
    -36, -53, -68, -54, -95, -77, -26, -27, -27,
    -- layer=2 filter=20 channel=8
    26, -4, 15, 19, -19, -31, 59, -20, -14,
    -- layer=2 filter=20 channel=9
    29, -19, -2, 12, -20, 26, 46, 35, -3,
    -- layer=2 filter=20 channel=10
    6, -16, -15, 5, 3, 19, -9, -15, 5,
    -- layer=2 filter=20 channel=11
    -16, -15, 11, -10, -26, 11, -12, 8, 5,
    -- layer=2 filter=20 channel=12
    14, 10, -5, 6, -2, -13, 5, 17, 8,
    -- layer=2 filter=20 channel=13
    -2, 1, 2, 16, -7, -21, 1, -51, -27,
    -- layer=2 filter=20 channel=14
    13, 9, 30, 13, 16, 35, -13, -2, 7,
    -- layer=2 filter=20 channel=15
    -9, 3, -21, 6, -2, -6, 23, 18, 10,
    -- layer=2 filter=20 channel=16
    12, -6, 3, 10, -8, 20, -5, -18, -12,
    -- layer=2 filter=20 channel=17
    -9, -8, -6, -16, -26, 16, -12, -1, 5,
    -- layer=2 filter=20 channel=18
    -4, 12, -12, 13, -13, -20, 20, -25, -27,
    -- layer=2 filter=20 channel=19
    0, -5, -20, 1, -6, 21, 3, 23, 24,
    -- layer=2 filter=20 channel=20
    3, 3, -3, 2, 10, 22, 24, -15, 20,
    -- layer=2 filter=20 channel=21
    0, -13, 2, 14, -3, -4, 28, 31, 15,
    -- layer=2 filter=20 channel=22
    -1, 13, 13, -10, 18, 14, 6, 0, -15,
    -- layer=2 filter=20 channel=23
    1, 8, 4, -19, -17, 12, 3, 10, 0,
    -- layer=2 filter=20 channel=24
    -1, -18, -1, 0, 3, 19, 4, 2, 11,
    -- layer=2 filter=20 channel=25
    8, -12, -10, 10, -7, 12, 10, 6, -8,
    -- layer=2 filter=20 channel=26
    0, 10, -10, -5, -3, -5, -3, -12, -16,
    -- layer=2 filter=20 channel=27
    0, -9, -4, 16, -6, -3, 26, 1, -5,
    -- layer=2 filter=20 channel=28
    16, 9, 37, 31, 65, 20, -17, 33, 18,
    -- layer=2 filter=20 channel=29
    14, 0, 3, -7, 6, 32, -17, -10, 22,
    -- layer=2 filter=20 channel=30
    13, -18, 0, -16, 6, -13, 1, 19, -4,
    -- layer=2 filter=20 channel=31
    -2, 9, 11, -2, 14, 14, 18, 2, 52,
    -- layer=2 filter=20 channel=32
    2, 14, 19, 3, -17, 7, 0, 5, 0,
    -- layer=2 filter=20 channel=33
    19, 34, 13, -14, 3, 5, -12, -26, 0,
    -- layer=2 filter=20 channel=34
    17, -14, -6, 8, -22, -15, 12, 32, 18,
    -- layer=2 filter=20 channel=35
    14, 25, 23, 20, -41, -12, -1, -54, -13,
    -- layer=2 filter=20 channel=36
    -9, 6, -8, 0, -10, -8, -11, 2, -1,
    -- layer=2 filter=20 channel=37
    -2, -10, 13, 7, 0, 23, 0, 9, -3,
    -- layer=2 filter=20 channel=38
    2, -18, -14, 12, 10, 6, -6, -6, -18,
    -- layer=2 filter=20 channel=39
    -42, -29, -1, -49, -43, -19, -39, -32, 8,
    -- layer=2 filter=20 channel=40
    -15, 6, 34, -8, 21, 11, 10, 0, -1,
    -- layer=2 filter=20 channel=41
    -9, -13, 7, -16, -6, 3, -20, -5, 8,
    -- layer=2 filter=20 channel=42
    60, 65, 0, 45, 26, 8, 37, 27, 5,
    -- layer=2 filter=20 channel=43
    -13, 4, 0, 7, -4, -20, -30, -19, 3,
    -- layer=2 filter=20 channel=44
    -15, -37, -19, -6, 11, 10, 7, 14, 33,
    -- layer=2 filter=20 channel=45
    11, -8, 2, 4, -18, -27, 3, -56, -25,
    -- layer=2 filter=20 channel=46
    -61, -14, -27, -22, -52, -8, -32, -44, 19,
    -- layer=2 filter=20 channel=47
    -14, -3, 0, -9, 19, 11, -2, -6, 0,
    -- layer=2 filter=20 channel=48
    -15, 19, 26, 28, 43, 33, -10, -6, 1,
    -- layer=2 filter=20 channel=49
    -5, 0, 18, 6, -18, 0, 13, -7, 0,
    -- layer=2 filter=20 channel=50
    11, 11, 12, -6, 9, 0, -4, -22, 10,
    -- layer=2 filter=20 channel=51
    -6, -6, -9, -9, -13, 11, 16, 13, -11,
    -- layer=2 filter=20 channel=52
    8, 14, 18, 8, -27, 7, -12, 25, 32,
    -- layer=2 filter=20 channel=53
    -7, -33, -6, -10, -4, 4, 10, 14, -9,
    -- layer=2 filter=20 channel=54
    -15, -1, 3, -18, 0, -7, -9, 13, 22,
    -- layer=2 filter=20 channel=55
    -7, -18, 15, -18, -3, 1, 5, 9, 6,
    -- layer=2 filter=20 channel=56
    -5, -22, -25, 5, -13, -5, -24, -11, -6,
    -- layer=2 filter=20 channel=57
    2, -25, -18, -33, 2, -17, -5, 9, 16,
    -- layer=2 filter=20 channel=58
    0, 0, 7, 4, -3, 21, -2, 5, 0,
    -- layer=2 filter=20 channel=59
    -7, -7, -7, -8, -11, -7, 16, -13, -12,
    -- layer=2 filter=20 channel=60
    12, 0, 9, 15, 23, 13, 32, 12, -1,
    -- layer=2 filter=20 channel=61
    -3, -1, 1, 10, -16, -14, 12, -11, -9,
    -- layer=2 filter=20 channel=62
    16, -36, 16, -6, -26, 8, -9, -13, -13,
    -- layer=2 filter=20 channel=63
    -20, -47, -72, -26, -73, -66, -46, -20, -25,
    -- layer=2 filter=21 channel=0
    17, -14, 1, 36, 6, 18, 20, 15, -12,
    -- layer=2 filter=21 channel=1
    -18, 11, -36, 6, -20, -13, -5, -43, -12,
    -- layer=2 filter=21 channel=2
    54, 36, 7, 33, 46, 21, 42, 13, 33,
    -- layer=2 filter=21 channel=3
    17, 0, -4, 1, -5, -7, 10, 20, 16,
    -- layer=2 filter=21 channel=4
    -5, -1, 5, 5, 0, 18, 36, 26, 10,
    -- layer=2 filter=21 channel=5
    0, 17, 0, 26, 36, 31, 37, 18, 0,
    -- layer=2 filter=21 channel=6
    -19, -24, -13, -18, -7, -2, -7, 32, 1,
    -- layer=2 filter=21 channel=7
    -35, -3, -26, -5, 22, 16, 20, 19, 21,
    -- layer=2 filter=21 channel=8
    -11, 1, -21, -45, -25, -40, -14, -78, 2,
    -- layer=2 filter=21 channel=9
    35, 18, 55, 8, 17, 21, 11, 44, 7,
    -- layer=2 filter=21 channel=10
    -13, 6, -2, 14, 15, -5, -2, -11, 8,
    -- layer=2 filter=21 channel=11
    -12, 12, -2, -20, -19, 4, -26, -46, -6,
    -- layer=2 filter=21 channel=12
    -5, 18, 6, -6, 5, 14, 16, 17, 17,
    -- layer=2 filter=21 channel=13
    -30, -13, -20, -51, -67, 4, 0, -11, -21,
    -- layer=2 filter=21 channel=14
    28, 29, -17, 27, 0, 18, 9, -20, -3,
    -- layer=2 filter=21 channel=15
    -4, -5, -20, -3, 9, -23, -9, -18, -34,
    -- layer=2 filter=21 channel=16
    23, -12, -28, -12, 4, 3, 6, -1, 12,
    -- layer=2 filter=21 channel=17
    -18, 3, -4, -14, -10, 5, -21, 2, 1,
    -- layer=2 filter=21 channel=18
    -39, -30, -54, -60, -25, -45, -6, -11, -27,
    -- layer=2 filter=21 channel=19
    -3, -10, 30, 12, 0, 8, 25, 24, 16,
    -- layer=2 filter=21 channel=20
    6, -11, -26, -8, -4, -11, -2, -10, -16,
    -- layer=2 filter=21 channel=21
    -16, -6, 12, 14, 25, 14, 1, 39, 17,
    -- layer=2 filter=21 channel=22
    -12, 12, -14, -17, 13, 15, 12, 17, 2,
    -- layer=2 filter=21 channel=23
    -18, -23, 4, -21, 5, -13, 2, 1, -5,
    -- layer=2 filter=21 channel=24
    -22, -3, -18, -23, -16, 3, -20, 9, 9,
    -- layer=2 filter=21 channel=25
    -16, 17, -16, -9, -12, -18, 12, 7, -3,
    -- layer=2 filter=21 channel=26
    -10, 0, -6, 18, 14, 6, 12, 12, -3,
    -- layer=2 filter=21 channel=27
    12, -2, -16, 0, -12, -7, 22, -14, 3,
    -- layer=2 filter=21 channel=28
    17, -4, -18, 12, -12, 26, 27, 21, 7,
    -- layer=2 filter=21 channel=29
    -98, -39, -10, -60, -60, 38, -35, -20, 23,
    -- layer=2 filter=21 channel=30
    -22, 7, -22, -21, 7, 4, -34, -36, -32,
    -- layer=2 filter=21 channel=31
    -23, -20, -18, 13, 21, 17, 16, 13, 49,
    -- layer=2 filter=21 channel=32
    -15, -1, -19, 7, -10, -7, 27, -5, -13,
    -- layer=2 filter=21 channel=33
    -21, 2, 24, 33, 17, 22, 19, 26, 27,
    -- layer=2 filter=21 channel=34
    -26, -22, 14, 4, 3, 4, 14, 7, 9,
    -- layer=2 filter=21 channel=35
    -35, -17, -21, -44, -66, -17, -34, -7, 9,
    -- layer=2 filter=21 channel=36
    -9, -12, 27, -5, 0, 3, -39, -30, -9,
    -- layer=2 filter=21 channel=37
    -13, -3, 0, -7, -1, 6, 9, 6, 22,
    -- layer=2 filter=21 channel=38
    -9, -12, 13, -15, 0, 20, 27, 39, 29,
    -- layer=2 filter=21 channel=39
    -49, -20, -15, 2, -21, -6, -23, -12, -2,
    -- layer=2 filter=21 channel=40
    -16, 24, 4, 9, -10, 26, 25, -30, 0,
    -- layer=2 filter=21 channel=41
    -35, -36, -3, -5, -34, 7, 21, -12, 23,
    -- layer=2 filter=21 channel=42
    -49, 1, -22, -21, 5, -12, 4, 0, 22,
    -- layer=2 filter=21 channel=43
    -13, -26, -10, 23, 13, 2, -5, -6, 25,
    -- layer=2 filter=21 channel=44
    -7, -12, 13, 18, 18, 5, 47, 32, 23,
    -- layer=2 filter=21 channel=45
    -30, -32, -11, -25, -32, -4, -40, -1, 14,
    -- layer=2 filter=21 channel=46
    -61, -35, -25, 6, 14, -8, -17, 2, 24,
    -- layer=2 filter=21 channel=47
    -12, -14, -5, 11, 11, 3, -12, 0, -15,
    -- layer=2 filter=21 channel=48
    31, 24, -11, 35, 13, 52, 29, 18, 27,
    -- layer=2 filter=21 channel=49
    -1, 7, -16, -2, 19, 12, 6, 6, 5,
    -- layer=2 filter=21 channel=50
    -8, 8, 11, 2, 1, -9, 3, -6, 9,
    -- layer=2 filter=21 channel=51
    -3, 13, -15, 0, 10, 13, -15, -18, 3,
    -- layer=2 filter=21 channel=52
    29, 54, 11, 15, 4, 26, 6, 33, 48,
    -- layer=2 filter=21 channel=53
    -17, -1, -17, 12, 11, -3, 5, 18, 20,
    -- layer=2 filter=21 channel=54
    -8, -15, 14, -11, -20, -22, -37, -9, -13,
    -- layer=2 filter=21 channel=55
    -14, -15, -7, 19, -2, 4, -1, -13, 0,
    -- layer=2 filter=21 channel=56
    20, 2, -8, 1, -11, 14, 4, 18, 6,
    -- layer=2 filter=21 channel=57
    5, 9, 16, -7, -17, -16, 5, 2, -7,
    -- layer=2 filter=21 channel=58
    -11, 16, -24, 17, -4, 30, -5, -40, 11,
    -- layer=2 filter=21 channel=59
    0, 5, -10, 2, 0, -16, -17, 15, -8,
    -- layer=2 filter=21 channel=60
    -7, -1, 14, 35, 13, 23, 28, -6, -2,
    -- layer=2 filter=21 channel=61
    12, 16, -13, 17, 1, 4, 10, -15, -5,
    -- layer=2 filter=21 channel=62
    -12, 23, -25, 15, -18, 61, -14, 1, 26,
    -- layer=2 filter=21 channel=63
    -14, -11, -29, 14, -7, -18, 19, -8, 5,
    -- layer=2 filter=22 channel=0
    -54, -60, -34, -7, -19, -15, 18, -20, -32,
    -- layer=2 filter=22 channel=1
    18, 34, 5, 4, 23, 0, -3, -9, 0,
    -- layer=2 filter=22 channel=2
    -26, -24, 14, 2, -33, -7, -12, -26, -2,
    -- layer=2 filter=22 channel=3
    -6, 3, 13, 4, 5, -9, -10, -10, 7,
    -- layer=2 filter=22 channel=4
    -8, 22, -10, 29, 12, -30, 30, -7, -38,
    -- layer=2 filter=22 channel=5
    -2, 36, 30, 10, 0, -7, -34, -24, -34,
    -- layer=2 filter=22 channel=6
    -1, -10, -11, -9, 6, -17, 11, -15, -1,
    -- layer=2 filter=22 channel=7
    59, 22, -28, 14, 32, -40, -12, -20, -90,
    -- layer=2 filter=22 channel=8
    -20, 27, 42, -3, 8, 37, 20, -17, 10,
    -- layer=2 filter=22 channel=9
    -19, 9, 26, 0, 36, 3, 23, 1, 12,
    -- layer=2 filter=22 channel=10
    11, -11, -16, 0, 3, 19, 0, -14, 8,
    -- layer=2 filter=22 channel=11
    -9, 4, -13, 4, -2, 10, -18, -8, -39,
    -- layer=2 filter=22 channel=12
    -2, -13, 2, 0, 9, -14, -14, 16, 17,
    -- layer=2 filter=22 channel=13
    -30, -13, 18, -5, -2, 40, 17, 1, 24,
    -- layer=2 filter=22 channel=14
    17, 1, 46, -9, 28, 1, -27, -11, -17,
    -- layer=2 filter=22 channel=15
    16, 0, -3, -2, 7, -13, 3, -19, -17,
    -- layer=2 filter=22 channel=16
    9, -5, -11, 14, 6, -21, -3, 4, 9,
    -- layer=2 filter=22 channel=17
    13, -15, -9, 6, -10, 7, -22, 7, -6,
    -- layer=2 filter=22 channel=18
    -8, 3, 36, -6, 18, 47, 8, 13, 6,
    -- layer=2 filter=22 channel=19
    -4, 10, 1, 1, 26, -4, -1, 4, 20,
    -- layer=2 filter=22 channel=20
    -2, 21, 30, 7, 23, 32, 14, 32, 14,
    -- layer=2 filter=22 channel=21
    25, 19, 0, 10, 8, 6, 10, 3, 23,
    -- layer=2 filter=22 channel=22
    3, -1, -5, -16, -3, 9, 2, -4, 12,
    -- layer=2 filter=22 channel=23
    12, -5, 8, -3, -24, -18, -3, 21, 10,
    -- layer=2 filter=22 channel=24
    -5, 13, 7, 10, 16, 4, -18, -17, -19,
    -- layer=2 filter=22 channel=25
    2, -12, -13, 7, -14, 15, 7, -12, -13,
    -- layer=2 filter=22 channel=26
    3, 11, -7, 16, 20, 6, -10, 4, 16,
    -- layer=2 filter=22 channel=27
    6, 6, -15, -22, -12, 12, -12, 8, -3,
    -- layer=2 filter=22 channel=28
    8, -24, 2, 30, -7, -14, 20, -16, -42,
    -- layer=2 filter=22 channel=29
    12, -9, -10, -10, 26, 5, -9, -5, 1,
    -- layer=2 filter=22 channel=30
    30, 4, -20, -19, 20, -2, -42, 3, 6,
    -- layer=2 filter=22 channel=31
    -16, -17, -14, -28, -16, -21, 12, 2, 0,
    -- layer=2 filter=22 channel=32
    -13, 11, 4, -11, -10, 9, -3, -4, 0,
    -- layer=2 filter=22 channel=33
    27, -37, 1, 25, -7, 9, -3, 9, -5,
    -- layer=2 filter=22 channel=34
    4, 3, 2, -12, 12, 0, -2, -7, 3,
    -- layer=2 filter=22 channel=35
    -12, 14, 22, -11, 16, 13, 3, -33, -19,
    -- layer=2 filter=22 channel=36
    10, 26, 10, 29, 3, -14, -8, -34, -25,
    -- layer=2 filter=22 channel=37
    2, -30, -29, 11, -8, -14, 8, -5, -28,
    -- layer=2 filter=22 channel=38
    26, 15, -15, 7, -16, 0, 31, 2, 5,
    -- layer=2 filter=22 channel=39
    14, 26, -35, 22, -4, -12, -3, 0, -42,
    -- layer=2 filter=22 channel=40
    10, -1, 24, 5, -25, -20, 7, 8, 10,
    -- layer=2 filter=22 channel=41
    -16, -7, -19, -30, -7, -12, 12, 37, 7,
    -- layer=2 filter=22 channel=42
    -12, -36, -3, 6, -4, 15, 7, -1, 30,
    -- layer=2 filter=22 channel=43
    -5, -15, -29, -6, 13, 15, 5, -5, 23,
    -- layer=2 filter=22 channel=44
    10, 4, -9, 10, 9, -19, -9, -10, -8,
    -- layer=2 filter=22 channel=45
    -14, 12, 25, -22, -1, 15, 13, -24, 8,
    -- layer=2 filter=22 channel=46
    10, 23, -33, -6, 7, -55, -4, -3, -50,
    -- layer=2 filter=22 channel=47
    9, 11, 4, -18, -7, -13, -3, 10, -6,
    -- layer=2 filter=22 channel=48
    0, -25, 10, 0, -13, 0, 5, -50, -16,
    -- layer=2 filter=22 channel=49
    19, -14, -1, 7, -27, -33, -5, 11, 14,
    -- layer=2 filter=22 channel=50
    5, 0, 8, -17, -6, -5, -8, 5, -8,
    -- layer=2 filter=22 channel=51
    -8, -10, -15, -4, 4, -19, -11, -11, -6,
    -- layer=2 filter=22 channel=52
    -25, -11, -29, 10, 14, 3, 36, 29, 35,
    -- layer=2 filter=22 channel=53
    6, 26, 5, 1, 13, -19, 19, -14, -12,
    -- layer=2 filter=22 channel=54
    26, -16, -5, 14, 8, -10, -17, -8, -13,
    -- layer=2 filter=22 channel=55
    -4, -6, -7, 5, -11, -2, 4, 11, 7,
    -- layer=2 filter=22 channel=56
    22, 26, 19, 17, -1, -13, 1, 6, -15,
    -- layer=2 filter=22 channel=57
    5, 0, -30, 24, -10, -5, 16, 2, 8,
    -- layer=2 filter=22 channel=58
    0, 32, 31, 20, 18, 28, 8, 0, 7,
    -- layer=2 filter=22 channel=59
    -14, -13, -15, -8, 11, 4, 12, -16, -7,
    -- layer=2 filter=22 channel=60
    16, -4, -12, 2, -21, -11, 0, -7, -9,
    -- layer=2 filter=22 channel=61
    -16, -7, 16, 20, 15, 3, -14, 14, -11,
    -- layer=2 filter=22 channel=62
    11, -45, -6, -11, -38, -17, 4, -23, -25,
    -- layer=2 filter=22 channel=63
    22, 26, 6, 36, 32, -25, 36, -18, -44,
    -- layer=2 filter=23 channel=0
    -4, 13, 11, 14, 32, -13, 18, 4, -7,
    -- layer=2 filter=23 channel=1
    20, 31, 33, 9, 28, 29, 19, 24, 7,
    -- layer=2 filter=23 channel=2
    -21, 17, 10, 14, 37, 11, 9, 19, -19,
    -- layer=2 filter=23 channel=3
    0, -17, 2, 15, 10, -4, 6, -24, -4,
    -- layer=2 filter=23 channel=4
    -13, -14, 25, 37, 26, 12, 20, 2, 27,
    -- layer=2 filter=23 channel=5
    18, 25, 25, 28, 34, 10, 7, 19, 49,
    -- layer=2 filter=23 channel=6
    -12, 17, 20, 14, 20, 5, 28, 4, 21,
    -- layer=2 filter=23 channel=7
    -25, -32, -16, 8, -34, -49, 53, -13, -23,
    -- layer=2 filter=23 channel=8
    -23, -13, 7, -16, -9, 7, -15, -2, 14,
    -- layer=2 filter=23 channel=9
    17, -17, 3, -21, -12, -10, -5, -55, -15,
    -- layer=2 filter=23 channel=10
    -6, 17, 14, 0, 16, 3, -9, -12, 8,
    -- layer=2 filter=23 channel=11
    24, 24, -2, -4, 3, 21, 7, 6, 14,
    -- layer=2 filter=23 channel=12
    -5, 3, 8, 6, 16, -7, -3, 2, -15,
    -- layer=2 filter=23 channel=13
    -36, -9, -18, -37, -33, 5, -34, -3, -5,
    -- layer=2 filter=23 channel=14
    -7, 25, 4, 0, 14, 29, -21, 38, 20,
    -- layer=2 filter=23 channel=15
    -1, 18, 18, 20, 9, 33, 30, 4, 8,
    -- layer=2 filter=23 channel=16
    -3, 13, -4, 15, -11, 22, -19, -7, -4,
    -- layer=2 filter=23 channel=17
    22, 5, 14, -6, 19, 12, -8, 0, 0,
    -- layer=2 filter=23 channel=18
    -11, -2, -9, -17, -15, 8, -23, -8, 12,
    -- layer=2 filter=23 channel=19
    -10, 21, -1, 18, 3, -7, -22, -7, -5,
    -- layer=2 filter=23 channel=20
    -14, 26, 8, 2, 2, 8, -12, 13, 15,
    -- layer=2 filter=23 channel=21
    -21, -28, -6, -13, 0, -14, -20, 0, -24,
    -- layer=2 filter=23 channel=22
    -1, -8, -10, -7, -10, -6, -6, -16, -10,
    -- layer=2 filter=23 channel=23
    -1, 12, -2, 7, 16, 16, 19, 1, 3,
    -- layer=2 filter=23 channel=24
    10, 16, -5, -9, 12, -4, -7, -5, -7,
    -- layer=2 filter=23 channel=25
    -1, 0, -4, -14, 11, -10, -18, -5, 15,
    -- layer=2 filter=23 channel=26
    1, -4, 0, -15, -19, 6, -3, -9, -7,
    -- layer=2 filter=23 channel=27
    6, 6, 10, 5, 14, -2, 23, 14, 14,
    -- layer=2 filter=23 channel=28
    -19, 28, 14, 14, 8, 6, 20, 24, -29,
    -- layer=2 filter=23 channel=29
    0, 7, 4, -4, 14, 26, -20, -8, 2,
    -- layer=2 filter=23 channel=30
    -5, -20, 0, 13, -17, -12, 7, -1, 17,
    -- layer=2 filter=23 channel=31
    -7, 15, 0, 3, 8, 10, 8, -9, -3,
    -- layer=2 filter=23 channel=32
    -1, 22, 0, -9, -16, -18, 17, 1, -2,
    -- layer=2 filter=23 channel=33
    -9, 4, -11, -14, -32, -39, -33, -21, -17,
    -- layer=2 filter=23 channel=34
    -26, -2, -13, -4, -24, -3, 4, -26, 6,
    -- layer=2 filter=23 channel=35
    -33, -28, -2, -4, -33, -11, -4, -22, -18,
    -- layer=2 filter=23 channel=36
    11, 1, -18, 16, 6, 17, 0, 17, 15,
    -- layer=2 filter=23 channel=37
    -32, -33, -15, -15, -8, 7, -43, -58, -45,
    -- layer=2 filter=23 channel=38
    19, -6, 12, 25, 4, 8, 33, 10, -5,
    -- layer=2 filter=23 channel=39
    -8, -18, -13, -23, -42, -37, -45, -69, -60,
    -- layer=2 filter=23 channel=40
    -3, -14, -3, -24, 1, 6, -26, -1, 7,
    -- layer=2 filter=23 channel=41
    31, 4, -8, 11, 13, 21, -6, -3, -10,
    -- layer=2 filter=23 channel=42
    1, -12, -6, 14, 30, 20, -14, -37, -9,
    -- layer=2 filter=23 channel=43
    -1, 0, 1, 9, -2, -9, -21, -18, -13,
    -- layer=2 filter=23 channel=44
    -3, -10, -33, 3, -8, -18, -22, 5, -54,
    -- layer=2 filter=23 channel=45
    -47, -22, -8, -7, -49, -3, -10, -18, -1,
    -- layer=2 filter=23 channel=46
    -19, -45, -52, -7, -82, -61, -59, -55, -61,
    -- layer=2 filter=23 channel=47
    8, 13, -15, 3, 2, -6, 4, -11, -12,
    -- layer=2 filter=23 channel=48
    -14, 32, -8, -11, 42, 16, -11, 4, 34,
    -- layer=2 filter=23 channel=49
    17, -16, -10, 9, -6, -23, 1, -10, -29,
    -- layer=2 filter=23 channel=50
    -3, -7, -7, 3, 2, 12, -13, -1, -15,
    -- layer=2 filter=23 channel=51
    19, 8, -13, -7, 11, 2, 7, -2, 6,
    -- layer=2 filter=23 channel=52
    27, 38, 16, 32, -6, -16, -6, -32, -12,
    -- layer=2 filter=23 channel=53
    2, -6, 6, 18, -18, 2, 24, 29, -5,
    -- layer=2 filter=23 channel=54
    6, -22, 22, 3, -4, -11, -23, -3, 12,
    -- layer=2 filter=23 channel=55
    14, 9, 0, -3, -4, 17, 11, 2, 3,
    -- layer=2 filter=23 channel=56
    9, -12, 9, 16, 0, -8, 13, -15, -13,
    -- layer=2 filter=23 channel=57
    1, 17, 8, -4, -13, 13, 3, 0, -5,
    -- layer=2 filter=23 channel=58
    -10, 9, 26, 1, 7, 28, 12, 23, 23,
    -- layer=2 filter=23 channel=59
    -8, -4, 13, -9, -11, -11, -6, -2, 12,
    -- layer=2 filter=23 channel=60
    13, 15, -7, -3, 10, -17, -14, -31, -26,
    -- layer=2 filter=23 channel=61
    18, 14, 6, 0, -6, 11, 3, -20, 18,
    -- layer=2 filter=23 channel=62
    -42, 2, -18, -2, -1, -11, -47, -20, 35,
    -- layer=2 filter=23 channel=63
    -18, -25, -25, 38, -2, -13, 18, -24, -9,
    -- layer=2 filter=24 channel=0
    9, 44, 1, 9, 42, 25, 31, -2, 4,
    -- layer=2 filter=24 channel=1
    -9, -9, 30, -17, 6, 13, -22, 10, 1,
    -- layer=2 filter=24 channel=2
    20, 7, 13, -15, 30, 10, 21, -3, 37,
    -- layer=2 filter=24 channel=3
    3, -41, -9, 8, -20, -12, 14, 9, -7,
    -- layer=2 filter=24 channel=4
    0, 0, 9, -5, 3, -20, 11, 4, 31,
    -- layer=2 filter=24 channel=5
    -4, -28, -17, -41, -39, -19, -15, 1, 1,
    -- layer=2 filter=24 channel=6
    -10, 3, 4, 16, 14, -21, 24, 3, 27,
    -- layer=2 filter=24 channel=7
    -38, -79, -87, 48, 9, -11, 73, 8, 21,
    -- layer=2 filter=24 channel=8
    6, 8, -28, 35, 49, -19, 28, 45, -6,
    -- layer=2 filter=24 channel=9
    24, 28, -29, 45, -12, 4, 22, -45, -23,
    -- layer=2 filter=24 channel=10
    -5, -11, 3, 12, -16, 12, 8, 3, -9,
    -- layer=2 filter=24 channel=11
    -4, 5, 31, 2, -11, 17, 14, 0, -7,
    -- layer=2 filter=24 channel=12
    16, 8, -3, 0, 8, -9, -8, 14, -5,
    -- layer=2 filter=24 channel=13
    5, 0, -12, 29, -3, 6, 24, 5, -6,
    -- layer=2 filter=24 channel=14
    -24, 11, 9, -13, -21, 39, -34, -26, 3,
    -- layer=2 filter=24 channel=15
    23, 22, 23, -1, -2, 6, 14, 19, 19,
    -- layer=2 filter=24 channel=16
    -12, -19, 18, 6, -1, 12, 21, 19, 15,
    -- layer=2 filter=24 channel=17
    -8, 2, 6, -17, -6, 11, -15, 7, 1,
    -- layer=2 filter=24 channel=18
    23, 23, 7, 41, 0, -16, 5, 27, -19,
    -- layer=2 filter=24 channel=19
    15, 6, 5, 31, 13, 9, -1, -16, -19,
    -- layer=2 filter=24 channel=20
    5, -11, 19, 11, -18, 16, -25, -14, 0,
    -- layer=2 filter=24 channel=21
    10, -7, 1, 20, 0, 9, -3, -12, -25,
    -- layer=2 filter=24 channel=22
    9, -15, -2, -4, -16, 16, 19, 0, 9,
    -- layer=2 filter=24 channel=23
    -8, 12, 25, -10, -3, -1, 1, -3, 2,
    -- layer=2 filter=24 channel=24
    18, 10, -16, 0, 7, -15, 13, 13, -6,
    -- layer=2 filter=24 channel=25
    7, 3, -1, 17, -13, 2, 15, 0, -15,
    -- layer=2 filter=24 channel=26
    -9, -5, 2, 14, 15, -7, 7, 0, 8,
    -- layer=2 filter=24 channel=27
    1, -13, -27, -1, -3, 0, 2, -19, -6,
    -- layer=2 filter=24 channel=28
    7, -7, 34, -21, -15, -13, -17, -42, -18,
    -- layer=2 filter=24 channel=29
    -24, -37, -3, 4, -7, 10, -15, -29, -17,
    -- layer=2 filter=24 channel=30
    -9, 16, 17, -21, -10, 18, -4, 17, 9,
    -- layer=2 filter=24 channel=31
    -14, 0, 2, 15, 3, 7, -12, -6, 2,
    -- layer=2 filter=24 channel=32
    -16, -8, 14, 3, -11, 14, 1, -8, -19,
    -- layer=2 filter=24 channel=33
    -22, -48, -35, -29, 9, -25, -28, 40, 43,
    -- layer=2 filter=24 channel=34
    3, 15, -5, 26, 7, 17, 11, 19, 7,
    -- layer=2 filter=24 channel=35
    -3, -17, 7, 26, 4, -10, 27, 15, -3,
    -- layer=2 filter=24 channel=36
    -3, 12, -12, -5, 6, 7, 22, 6, 5,
    -- layer=2 filter=24 channel=37
    8, 16, -16, -17, -8, -39, -20, -43, -49,
    -- layer=2 filter=24 channel=38
    14, 17, 0, 8, 0, -14, 31, 19, 20,
    -- layer=2 filter=24 channel=39
    -8, -17, -2, 41, -3, 10, 45, 1, 2,
    -- layer=2 filter=24 channel=40
    -21, 3, 3, 18, 0, -8, -46, -15, -18,
    -- layer=2 filter=24 channel=41
    3, 15, 24, 22, 6, 43, 31, -10, -24,
    -- layer=2 filter=24 channel=42
    -1, 0, -41, 39, 32, -45, 47, 41, -20,
    -- layer=2 filter=24 channel=43
    -19, 20, 17, 7, -10, 21, -21, -6, 9,
    -- layer=2 filter=24 channel=44
    8, -4, 8, -14, -19, -7, 5, -17, 3,
    -- layer=2 filter=24 channel=45
    6, -15, -6, 54, 5, 18, 33, -1, 1,
    -- layer=2 filter=24 channel=46
    -28, -45, -7, 51, 25, 1, 62, 30, 0,
    -- layer=2 filter=24 channel=47
    -1, 0, 1, 10, -3, 7, 17, -18, 7,
    -- layer=2 filter=24 channel=48
    -29, 4, 37, -25, -9, 31, -57, -67, -25,
    -- layer=2 filter=24 channel=49
    -18, 15, 19, -21, 14, 6, 21, -10, -6,
    -- layer=2 filter=24 channel=50
    13, 1, -3, -3, -2, -11, -3, 16, -11,
    -- layer=2 filter=24 channel=51
    -9, 16, 3, 8, -6, -18, -15, -4, 1,
    -- layer=2 filter=24 channel=52
    -30, -53, 0, -4, -42, 5, 2, -37, -8,
    -- layer=2 filter=24 channel=53
    19, 11, -9, 33, 11, -18, 2, 27, 0,
    -- layer=2 filter=24 channel=54
    8, -7, 29, 5, -5, 4, 28, -7, -10,
    -- layer=2 filter=24 channel=55
    -12, 19, 6, -2, 18, 14, 7, 5, 2,
    -- layer=2 filter=24 channel=56
    -26, -11, -2, -19, 0, -8, 8, 0, -18,
    -- layer=2 filter=24 channel=57
    7, -1, -7, 1, -6, 4, 19, -7, 2,
    -- layer=2 filter=24 channel=58
    -14, -7, 25, -3, -14, -11, 12, 3, 7,
    -- layer=2 filter=24 channel=59
    7, -15, 11, 15, 0, -1, 9, 19, -20,
    -- layer=2 filter=24 channel=60
    13, 4, 10, -8, 9, 24, -44, -25, 22,
    -- layer=2 filter=24 channel=61
    -8, 12, -6, 0, 6, 15, -6, -6, 14,
    -- layer=2 filter=24 channel=62
    -56, -8, -30, -54, 12, -32, -26, -29, -30,
    -- layer=2 filter=24 channel=63
    13, -25, -49, 29, 13, 0, 41, 18, 7,
    -- layer=2 filter=25 channel=0
    -10, -1, 36, 28, 14, 20, 67, 34, 0,
    -- layer=2 filter=25 channel=1
    2, 14, 10, 0, -7, 13, -5, -18, 1,
    -- layer=2 filter=25 channel=2
    -4, 0, -16, -5, 0, 0, -12, 10, 11,
    -- layer=2 filter=25 channel=3
    10, 11, 7, -14, -5, 1, 16, -5, -3,
    -- layer=2 filter=25 channel=4
    20, -1, -23, 5, -16, -21, 44, 1, 3,
    -- layer=2 filter=25 channel=5
    20, 36, 29, 4, 11, 0, 4, -4, -21,
    -- layer=2 filter=25 channel=6
    6, -32, -16, 25, -1, 11, 19, 36, 27,
    -- layer=2 filter=25 channel=7
    -39, -60, -35, -49, -63, -13, -22, -31, -40,
    -- layer=2 filter=25 channel=8
    -1, 25, 22, 0, 21, -3, 22, 16, -17,
    -- layer=2 filter=25 channel=9
    22, 34, 2, 50, 0, -21, 6, -67, -97,
    -- layer=2 filter=25 channel=10
    11, -2, -4, 13, -19, -10, -6, -7, -11,
    -- layer=2 filter=25 channel=11
    4, 2, 3, -2, -1, -4, -20, -26, -6,
    -- layer=2 filter=25 channel=12
    12, 3, 16, 17, -6, 5, -5, 17, 12,
    -- layer=2 filter=25 channel=13
    -7, 6, 5, 6, 24, -11, 15, -9, -6,
    -- layer=2 filter=25 channel=14
    7, 11, 48, 4, -13, 4, -38, -18, 0,
    -- layer=2 filter=25 channel=15
    16, 8, 14, 3, -16, 6, -1, 17, -8,
    -- layer=2 filter=25 channel=16
    13, -12, -6, -26, -17, -15, 6, -15, -22,
    -- layer=2 filter=25 channel=17
    8, -22, -21, -25, -8, 8, -29, 20, 24,
    -- layer=2 filter=25 channel=18
    -8, 29, 22, -12, 16, -9, 1, 9, -14,
    -- layer=2 filter=25 channel=19
    -20, -13, 8, 16, 9, -6, 23, 6, 3,
    -- layer=2 filter=25 channel=20
    -6, 37, 22, -19, 20, -6, -43, -2, -2,
    -- layer=2 filter=25 channel=21
    13, 4, -13, 21, 17, 31, 17, 5, 9,
    -- layer=2 filter=25 channel=22
    -6, 1, 14, 15, 0, -10, 15, 1, 6,
    -- layer=2 filter=25 channel=23
    30, -4, -21, -4, 14, -16, -12, 27, 21,
    -- layer=2 filter=25 channel=24
    29, 8, -4, 8, -11, -17, -16, -33, 11,
    -- layer=2 filter=25 channel=25
    13, 9, 12, 7, -6, -17, 9, -7, -12,
    -- layer=2 filter=25 channel=26
    -3, 12, 0, 2, 8, 9, 16, 16, 14,
    -- layer=2 filter=25 channel=27
    0, -10, -10, -10, 10, -5, -4, 8, 1,
    -- layer=2 filter=25 channel=28
    0, -29, -51, -19, -10, -23, -37, -38, -26,
    -- layer=2 filter=25 channel=29
    -18, 17, -6, 9, 34, 23, 0, 18, 8,
    -- layer=2 filter=25 channel=30
    23, 11, -11, -20, -12, -19, -41, 4, -10,
    -- layer=2 filter=25 channel=31
    0, 11, 19, -5, 5, 6, 10, 35, 53,
    -- layer=2 filter=25 channel=32
    12, -12, -4, 5, 7, -4, -8, 0, 15,
    -- layer=2 filter=25 channel=33
    38, 25, 25, 67, 29, 4, 32, 25, 12,
    -- layer=2 filter=25 channel=34
    -9, -19, -25, 11, -7, 14, 18, -8, 0,
    -- layer=2 filter=25 channel=35
    1, -3, 8, 2, 3, -14, 23, -13, 7,
    -- layer=2 filter=25 channel=36
    -3, -37, 1, -12, -23, -6, -3, -19, -25,
    -- layer=2 filter=25 channel=37
    14, -24, -35, -11, -6, -43, -24, 23, -59,
    -- layer=2 filter=25 channel=38
    0, -13, -20, 17, 4, 1, 39, 41, 26,
    -- layer=2 filter=25 channel=39
    -5, -5, -15, 35, 17, -5, 37, 25, 26,
    -- layer=2 filter=25 channel=40
    -14, 24, 40, -2, 11, -27, -14, 2, -7,
    -- layer=2 filter=25 channel=41
    -7, -3, 24, 3, 0, 7, 19, 28, 36,
    -- layer=2 filter=25 channel=42
    -32, -33, -18, -6, -42, -42, 0, -23, -18,
    -- layer=2 filter=25 channel=43
    -19, -37, -6, 4, -14, 27, 6, 34, 59,
    -- layer=2 filter=25 channel=44
    -5, -20, 1, -1, 0, 10, 31, -14, 6,
    -- layer=2 filter=25 channel=45
    9, -26, -2, 13, -15, -15, 12, -7, -11,
    -- layer=2 filter=25 channel=46
    -21, -72, -37, -8, -37, -36, 28, 2, 3,
    -- layer=2 filter=25 channel=47
    -9, 0, 4, 3, -9, 0, 18, -14, -6,
    -- layer=2 filter=25 channel=48
    -20, -15, 25, 2, 9, 10, 28, -18, -35,
    -- layer=2 filter=25 channel=49
    1, -30, -25, 12, 1, -2, -4, 14, 13,
    -- layer=2 filter=25 channel=50
    -6, -11, 0, 12, -8, -16, 1, -6, 10,
    -- layer=2 filter=25 channel=51
    -12, 1, -6, 0, 4, -12, 9, 14, -3,
    -- layer=2 filter=25 channel=52
    19, 21, -6, 25, 10, 10, 50, 44, -15,
    -- layer=2 filter=25 channel=53
    10, -15, -24, 4, -19, -34, 12, 21, 16,
    -- layer=2 filter=25 channel=54
    19, -31, -14, 9, 0, -4, -38, -8, -4,
    -- layer=2 filter=25 channel=55
    15, -16, 4, 4, 5, 10, 9, 7, -3,
    -- layer=2 filter=25 channel=56
    21, -4, -32, 11, -24, 14, 3, -4, 5,
    -- layer=2 filter=25 channel=57
    22, -24, -25, -10, -33, -4, -29, 6, 6,
    -- layer=2 filter=25 channel=58
    12, 19, 36, -12, -4, 25, 1, -4, 13,
    -- layer=2 filter=25 channel=59
    -5, -12, 13, -2, 4, 0, -5, 10, -5,
    -- layer=2 filter=25 channel=60
    7, -9, 12, 10, -2, -14, -55, -14, -28,
    -- layer=2 filter=25 channel=61
    10, 11, -15, -5, 13, -17, -18, -14, 12,
    -- layer=2 filter=25 channel=62
    -1, -81, -1, 15, -41, -50, -6, -34, 17,
    -- layer=2 filter=25 channel=63
    -34, -29, -39, -12, -36, -4, 18, 5, -2,
    -- layer=2 filter=26 channel=0
    -19, -18, -36, -39, -23, -62, -69, -26, -40,
    -- layer=2 filter=26 channel=1
    -7, -3, -10, -7, -14, -8, 30, 22, 3,
    -- layer=2 filter=26 channel=2
    -10, -6, -9, -22, -8, -24, -42, -33, 0,
    -- layer=2 filter=26 channel=3
    -16, -23, -1, -4, -2, -29, 7, -6, 6,
    -- layer=2 filter=26 channel=4
    -23, 2, 0, 9, 0, -9, 32, 30, 30,
    -- layer=2 filter=26 channel=5
    9, -29, -52, -24, -8, -34, 1, -14, -13,
    -- layer=2 filter=26 channel=6
    8, -1, 7, 23, 13, 9, 19, 11, -6,
    -- layer=2 filter=26 channel=7
    9, -7, -15, 0, -13, -21, -7, -26, -19,
    -- layer=2 filter=26 channel=8
    -54, -42, -61, -14, -29, -28, 3, 47, 6,
    -- layer=2 filter=26 channel=9
    33, 15, 35, 5, 10, 0, 8, -70, -1,
    -- layer=2 filter=26 channel=10
    -2, 14, 8, 1, -19, 0, -9, -13, 16,
    -- layer=2 filter=26 channel=11
    35, 1, 10, 9, -5, 25, 0, -3, -11,
    -- layer=2 filter=26 channel=12
    -2, 5, -1, 0, -4, 15, 6, 13, 8,
    -- layer=2 filter=26 channel=13
    -10, -20, -1, 16, -3, 14, -29, -10, -4,
    -- layer=2 filter=26 channel=14
    -3, -9, -5, 13, 0, -3, -20, -6, 7,
    -- layer=2 filter=26 channel=15
    7, -9, 1, -14, 10, 13, 5, 4, -2,
    -- layer=2 filter=26 channel=16
    10, 12, -5, -6, 19, -11, -8, -12, 3,
    -- layer=2 filter=26 channel=17
    25, 25, 8, 38, 4, 5, 31, 16, -2,
    -- layer=2 filter=26 channel=18
    -43, 9, -15, 9, -3, -15, -37, -11, -14,
    -- layer=2 filter=26 channel=19
    -4, 3, 19, 7, 0, 5, 3, 6, -3,
    -- layer=2 filter=26 channel=20
    -22, -25, -31, 0, -23, -20, -19, -16, 13,
    -- layer=2 filter=26 channel=21
    6, 23, 19, 16, 7, 10, 33, 31, 32,
    -- layer=2 filter=26 channel=22
    4, -9, -1, 2, -1, 15, 6, -18, 11,
    -- layer=2 filter=26 channel=23
    10, 22, 8, 14, 31, 4, 22, 26, 21,
    -- layer=2 filter=26 channel=24
    3, -4, 1, 18, 2, 9, 0, -9, 7,
    -- layer=2 filter=26 channel=25
    10, 11, 3, -14, -10, 2, 16, 4, 13,
    -- layer=2 filter=26 channel=26
    11, 0, 14, 4, 1, -5, 0, 3, -16,
    -- layer=2 filter=26 channel=27
    -13, 9, -3, -19, 17, -17, -28, 1, -15,
    -- layer=2 filter=26 channel=28
    -38, -32, -39, 1, -20, -24, -13, -9, 10,
    -- layer=2 filter=26 channel=29
    19, -9, 2, 15, 34, -3, -11, -10, -31,
    -- layer=2 filter=26 channel=30
    25, 6, 0, 32, 25, 13, 21, -2, 17,
    -- layer=2 filter=26 channel=31
    10, 3, 16, 4, 9, 8, 21, -11, -5,
    -- layer=2 filter=26 channel=32
    9, 4, 12, -16, 7, -15, 9, -20, -14,
    -- layer=2 filter=26 channel=33
    -63, -60, -2, -19, -43, -12, -48, -49, -50,
    -- layer=2 filter=26 channel=34
    11, 6, 14, -7, 26, 24, 0, -6, -3,
    -- layer=2 filter=26 channel=35
    -12, -17, -17, 17, -11, -12, -21, -6, -13,
    -- layer=2 filter=26 channel=36
    -17, 2, -5, 12, 4, -22, 7, 0, 14,
    -- layer=2 filter=26 channel=37
    -9, -32, -23, 27, -22, -30, -2, -4, -14,
    -- layer=2 filter=26 channel=38
    -2, -4, 6, 20, 15, 11, 10, 17, -4,
    -- layer=2 filter=26 channel=39
    47, 32, -1, 26, 47, 14, 0, -13, -29,
    -- layer=2 filter=26 channel=40
    -41, -39, -43, -4, -10, -10, 30, 2, 15,
    -- layer=2 filter=26 channel=41
    35, 24, 37, 10, 3, -12, -12, -22, 0,
    -- layer=2 filter=26 channel=42
    -52, -15, -34, -23, 0, 1, 17, 54, 47,
    -- layer=2 filter=26 channel=43
    23, 44, 13, -2, 33, 15, 5, 12, 25,
    -- layer=2 filter=26 channel=44
    6, 0, 10, -9, 4, 3, 24, 12, 8,
    -- layer=2 filter=26 channel=45
    -26, 0, 0, 1, -10, -31, -20, -39, -37,
    -- layer=2 filter=26 channel=46
    21, 31, 7, 39, 33, 19, -3, -40, -31,
    -- layer=2 filter=26 channel=47
    -14, -13, 8, 13, 9, 4, -13, 0, -19,
    -- layer=2 filter=26 channel=48
    -14, -45, -26, -11, -39, -41, -63, -13, 0,
    -- layer=2 filter=26 channel=49
    16, 20, -1, -3, 27, 16, 23, 4, -14,
    -- layer=2 filter=26 channel=50
    16, -1, -12, 0, 13, 13, -13, -12, 1,
    -- layer=2 filter=26 channel=51
    4, 8, 8, 4, 13, 9, -15, 2, -6,
    -- layer=2 filter=26 channel=52
    22, -6, -17, 12, 31, 13, 5, -18, -18,
    -- layer=2 filter=26 channel=53
    1, -5, -18, 2, 0, 15, 41, 39, 11,
    -- layer=2 filter=26 channel=54
    13, 26, 33, 9, 1, 11, 30, 4, 22,
    -- layer=2 filter=26 channel=55
    12, 15, 18, -9, 8, 2, -7, -8, 18,
    -- layer=2 filter=26 channel=56
    10, 8, 8, -2, -6, 12, 7, 5, 11,
    -- layer=2 filter=26 channel=57
    5, 27, 15, 11, -4, 19, 25, 29, 0,
    -- layer=2 filter=26 channel=58
    16, -27, -28, -5, -6, -2, -25, 11, 7,
    -- layer=2 filter=26 channel=59
    11, 8, 10, 8, -15, -3, 11, -18, -21,
    -- layer=2 filter=26 channel=60
    26, 18, 32, 0, 17, 31, 3, 9, 9,
    -- layer=2 filter=26 channel=61
    7, 6, 2, -15, 16, -4, -8, -5, 3,
    -- layer=2 filter=26 channel=62
    -15, -5, -13, 11, 10, 3, -14, -13, -8,
    -- layer=2 filter=26 channel=63
    -23, -31, -15, -12, -7, -47, -7, -25, -39,
    -- layer=2 filter=27 channel=0
    18, -2, 16, 3, 33, 20, 2, 6, -17,
    -- layer=2 filter=27 channel=1
    -11, -10, 11, 0, 0, 7, -11, -20, 4,
    -- layer=2 filter=27 channel=2
    30, 5, 36, 10, 25, 20, 34, -12, -47,
    -- layer=2 filter=27 channel=3
    0, -15, -19, 8, -17, -9, 6, -14, -8,
    -- layer=2 filter=27 channel=4
    1, -16, -12, -24, 0, -5, 10, -10, 9,
    -- layer=2 filter=27 channel=5
    6, 13, 3, 12, -1, -2, -31, -8, 1,
    -- layer=2 filter=27 channel=6
    -14, -7, 2, 4, 0, 3, 7, -6, -1,
    -- layer=2 filter=27 channel=7
    36, 44, 43, 6, 7, 13, -13, -7, -8,
    -- layer=2 filter=27 channel=8
    -8, 8, -10, -19, 21, 15, 16, 1, -19,
    -- layer=2 filter=27 channel=9
    4, -11, -29, -46, 0, 8, -29, -23, 17,
    -- layer=2 filter=27 channel=10
    -11, 1, 5, 3, -6, 5, -4, 14, 6,
    -- layer=2 filter=27 channel=11
    -15, 9, 12, -1, 6, 8, -26, -39, -12,
    -- layer=2 filter=27 channel=12
    0, 10, 8, 8, -2, 8, 14, -11, 2,
    -- layer=2 filter=27 channel=13
    -5, -5, 11, 22, 6, 0, -38, -24, -10,
    -- layer=2 filter=27 channel=14
    2, 25, -33, 6, 30, 0, -36, -26, 13,
    -- layer=2 filter=27 channel=15
    -11, -27, -9, -10, -10, 1, -36, -10, -11,
    -- layer=2 filter=27 channel=16
    -8, 3, 2, 3, 16, -18, 16, -12, 2,
    -- layer=2 filter=27 channel=17
    -15, -19, -27, 2, -25, -17, -12, 7, -5,
    -- layer=2 filter=27 channel=18
    -4, 9, -14, 7, 20, 0, -7, -2, -12,
    -- layer=2 filter=27 channel=19
    -13, -7, -18, -17, -7, -6, 14, 14, -17,
    -- layer=2 filter=27 channel=20
    27, 11, -5, 5, 12, -6, -26, -32, -12,
    -- layer=2 filter=27 channel=21
    -2, 10, -1, -14, -3, -1, 17, 32, 29,
    -- layer=2 filter=27 channel=22
    -1, -11, -13, -3, 7, -15, 1, -6, -3,
    -- layer=2 filter=27 channel=23
    -5, -30, -17, 0, -6, -9, 13, 34, 10,
    -- layer=2 filter=27 channel=24
    3, 17, -3, 3, 11, 7, 1, -4, -11,
    -- layer=2 filter=27 channel=25
    6, 11, -1, -14, 13, -18, -8, 13, 17,
    -- layer=2 filter=27 channel=26
    -10, -16, -5, -8, 7, 0, -14, 14, -15,
    -- layer=2 filter=27 channel=27
    -10, 13, 9, 3, -10, 6, -6, 8, 8,
    -- layer=2 filter=27 channel=28
    33, 9, 10, 9, -3, 23, -4, -22, -48,
    -- layer=2 filter=27 channel=29
    6, 25, 18, 20, -5, -7, -35, -25, -20,
    -- layer=2 filter=27 channel=30
    -22, -19, -19, -4, -27, 16, 2, -17, -22,
    -- layer=2 filter=27 channel=31
    24, 26, 4, -18, 15, -9, -33, -4, 23,
    -- layer=2 filter=27 channel=32
    11, -1, -13, -9, -7, -5, -8, 14, -9,
    -- layer=2 filter=27 channel=33
    11, 26, -7, -17, 29, 25, -17, -19, 13,
    -- layer=2 filter=27 channel=34
    -31, -60, -36, -32, -15, -10, -12, 12, -18,
    -- layer=2 filter=27 channel=35
    2, 22, 10, 34, 8, 10, -20, -11, -34,
    -- layer=2 filter=27 channel=36
    -19, -28, -37, -26, -29, -2, -31, -9, -15,
    -- layer=2 filter=27 channel=37
    -16, -27, -25, -1, -5, 22, 26, 4, 2,
    -- layer=2 filter=27 channel=38
    -25, -3, -11, -21, -5, -24, 6, 1, 5,
    -- layer=2 filter=27 channel=39
    4, 20, 9, -29, -8, -5, -44, -23, 0,
    -- layer=2 filter=27 channel=40
    3, 19, -23, 3, 33, -19, 8, 4, 12,
    -- layer=2 filter=27 channel=41
    9, 5, 39, 0, 5, 18, 1, -19, -23,
    -- layer=2 filter=27 channel=42
    21, -2, 34, -1, 13, 17, 48, 32, -13,
    -- layer=2 filter=27 channel=43
    12, -30, 17, -15, -11, -2, 32, 14, 3,
    -- layer=2 filter=27 channel=44
    -27, -12, 0, -7, -5, -8, 21, 15, 16,
    -- layer=2 filter=27 channel=45
    -16, 6, 13, 11, -15, 7, -13, -12, -26,
    -- layer=2 filter=27 channel=46
    -5, 35, 36, 5, 7, -3, -12, -33, 2,
    -- layer=2 filter=27 channel=47
    -7, -2, -5, 1, 5, -8, 5, -6, 7,
    -- layer=2 filter=27 channel=48
    19, 12, 23, 20, 20, 34, 5, -13, -41,
    -- layer=2 filter=27 channel=49
    -23, -57, 11, -59, -44, 1, -31, -12, 1,
    -- layer=2 filter=27 channel=50
    7, 8, 0, -3, -15, 15, -10, -8, 12,
    -- layer=2 filter=27 channel=51
    -15, 2, 10, -1, -8, 5, 4, -17, -12,
    -- layer=2 filter=27 channel=52
    8, -3, 5, -5, 11, 4, -29, -34, -14,
    -- layer=2 filter=27 channel=53
    -13, 8, -18, -29, -36, 11, 13, 5, 7,
    -- layer=2 filter=27 channel=54
    -39, -33, -15, -56, -24, -21, -19, -20, 0,
    -- layer=2 filter=27 channel=55
    10, -13, -14, 9, -7, 12, 4, -10, 13,
    -- layer=2 filter=27 channel=56
    -9, -36, 6, -4, -10, 1, -21, 7, -13,
    -- layer=2 filter=27 channel=57
    -63, -34, -27, -44, -13, -46, 6, -12, 11,
    -- layer=2 filter=27 channel=58
    -3, -10, 8, 19, -5, 3, -32, -24, 0,
    -- layer=2 filter=27 channel=59
    1, 4, -18, 5, -11, 1, -6, 2, 6,
    -- layer=2 filter=27 channel=60
    -8, -9, -14, -22, -21, -55, -30, -12, -11,
    -- layer=2 filter=27 channel=61
    9, -8, -6, 5, 11, 17, -7, -14, 8,
    -- layer=2 filter=27 channel=62
    -10, -14, 20, 22, 42, 26, 3, 24, -8,
    -- layer=2 filter=27 channel=63
    -7, 13, 29, -3, 29, 3, -22, -7, 26,
    -- layer=2 filter=28 channel=0
    3, -17, -48, 6, 27, -57, -6, 60, 21,
    -- layer=2 filter=28 channel=1
    -12, -30, -12, -1, 0, -4, 33, 15, 19,
    -- layer=2 filter=28 channel=2
    22, -36, 0, 14, -17, -30, 10, -10, 26,
    -- layer=2 filter=28 channel=3
    -1, 11, -7, -10, 13, 13, 7, 13, -3,
    -- layer=2 filter=28 channel=4
    7, 23, 32, -5, 18, 24, -28, -29, -8,
    -- layer=2 filter=28 channel=5
    -15, -18, 11, -30, -21, 0, 22, -3, 20,
    -- layer=2 filter=28 channel=6
    1, -36, -33, 14, -11, -23, -3, 11, -19,
    -- layer=2 filter=28 channel=7
    -30, -17, -4, -28, 16, 42, -49, -33, -4,
    -- layer=2 filter=28 channel=8
    -2, 14, 9, 24, 31, 22, 1, -7, 11,
    -- layer=2 filter=28 channel=9
    -2, -40, 11, 32, 5, 6, 2, 2, 45,
    -- layer=2 filter=28 channel=10
    -2, 5, -2, -7, -2, -10, -12, -6, 7,
    -- layer=2 filter=28 channel=11
    -40, -45, -38, 8, 0, -4, 19, 27, 1,
    -- layer=2 filter=28 channel=12
    -10, 12, 3, 18, -7, -13, 5, -5, 18,
    -- layer=2 filter=28 channel=13
    -46, -10, -50, 13, 20, -30, -16, 12, 8,
    -- layer=2 filter=28 channel=14
    -2, -8, -5, 9, 19, -5, 0, 15, -13,
    -- layer=2 filter=28 channel=15
    -26, -24, 12, 6, 2, 5, 32, 0, 23,
    -- layer=2 filter=28 channel=16
    4, -9, -2, 10, -9, -8, -19, -16, -7,
    -- layer=2 filter=28 channel=17
    8, -26, -7, 9, 7, 11, 2, 14, 6,
    -- layer=2 filter=28 channel=18
    -32, -30, -46, -19, 7, -32, -17, 18, -31,
    -- layer=2 filter=28 channel=19
    -17, -1, 14, 16, 18, -18, -11, 0, 18,
    -- layer=2 filter=28 channel=20
    6, -39, 5, 11, -30, -16, 20, -7, -13,
    -- layer=2 filter=28 channel=21
    -11, 4, -30, 4, 8, -4, 29, 13, 2,
    -- layer=2 filter=28 channel=22
    -10, -5, -4, 0, 16, -12, -9, 19, -7,
    -- layer=2 filter=28 channel=23
    -15, -28, -32, 9, 16, 8, 14, 14, 19,
    -- layer=2 filter=28 channel=24
    -15, -4, 26, 4, 1, 19, -3, -7, 3,
    -- layer=2 filter=28 channel=25
    -13, 17, 15, 3, 8, 0, 16, -14, 10,
    -- layer=2 filter=28 channel=26
    15, -4, 1, -10, 8, -14, -6, 5, 11,
    -- layer=2 filter=28 channel=27
    -6, 0, 15, 30, 8, -4, -5, 5, 1,
    -- layer=2 filter=28 channel=28
    10, 18, -8, 3, 13, -2, -7, 0, -17,
    -- layer=2 filter=28 channel=29
    -27, -29, -58, 44, 26, 0, 13, 18, 6,
    -- layer=2 filter=28 channel=30
    -8, -19, -26, 6, 6, 8, 19, 20, 29,
    -- layer=2 filter=28 channel=31
    20, -7, -16, 46, 26, 8, 27, 5, -11,
    -- layer=2 filter=28 channel=32
    -8, -16, -7, -10, 6, 17, 0, -9, 0,
    -- layer=2 filter=28 channel=33
    23, -4, 12, -1, -16, -13, -25, -5, 28,
    -- layer=2 filter=28 channel=34
    -15, -32, -19, 6, 2, -7, 34, 11, 11,
    -- layer=2 filter=28 channel=35
    -25, -38, -26, -4, 29, -10, 6, 23, 19,
    -- layer=2 filter=28 channel=36
    -10, -5, -7, -13, -9, -3, 22, 5, 37,
    -- layer=2 filter=28 channel=37
    14, 40, 38, 27, 68, 30, -9, 27, -1,
    -- layer=2 filter=28 channel=38
    -3, -12, -34, -4, -15, -11, 15, -1, 0,
    -- layer=2 filter=28 channel=39
    -37, -58, -63, 42, 8, 0, 10, 35, 28,
    -- layer=2 filter=28 channel=40
    22, 2, 11, 31, 16, 4, 13, 21, -4,
    -- layer=2 filter=28 channel=41
    -10, -39, -70, 28, 34, 14, 7, 4, -5,
    -- layer=2 filter=28 channel=42
    49, 44, 16, 44, 70, 36, 10, 48, 35,
    -- layer=2 filter=28 channel=43
    -32, -56, -71, -4, 16, -40, 4, 34, 14,
    -- layer=2 filter=28 channel=44
    -1, -18, -20, -7, -3, -33, 12, -4, 9,
    -- layer=2 filter=28 channel=45
    -29, -25, -49, 20, -3, -11, -17, 12, -8,
    -- layer=2 filter=28 channel=46
    -38, -55, -41, 15, 2, 6, 14, 29, 24,
    -- layer=2 filter=28 channel=47
    -10, -2, 15, 5, -2, -8, 0, 8, 18,
    -- layer=2 filter=28 channel=48
    10, 13, 7, 44, 25, -17, -37, -10, -13,
    -- layer=2 filter=28 channel=49
    -21, -25, -50, 2, 1, -27, 19, 41, 6,
    -- layer=2 filter=28 channel=50
    13, 0, 8, 0, 11, -2, -24, 10, 19,
    -- layer=2 filter=28 channel=51
    -7, 4, 0, 0, 22, -10, -15, -24, 13,
    -- layer=2 filter=28 channel=52
    -10, 31, -3, 38, 14, 49, 36, -3, 20,
    -- layer=2 filter=28 channel=53
    8, 22, 8, -4, 12, 13, -16, -30, -33,
    -- layer=2 filter=28 channel=54
    -24, -21, -49, 31, 11, -2, 52, 36, 22,
    -- layer=2 filter=28 channel=55
    15, -6, -9, 12, -1, -11, 11, -3, 14,
    -- layer=2 filter=28 channel=56
    -41, -19, -23, -18, 7, -5, -12, -27, -21,
    -- layer=2 filter=28 channel=57
    14, -17, -19, -5, 16, 25, 43, 36, 17,
    -- layer=2 filter=28 channel=58
    -10, -19, -24, -14, -14, -15, -3, 5, -16,
    -- layer=2 filter=28 channel=59
    8, 22, 5, 19, 4, -7, -9, -5, 15,
    -- layer=2 filter=28 channel=60
    -7, -30, -28, 2, -18, 33, 6, 33, 5,
    -- layer=2 filter=28 channel=61
    -6, -16, 17, 13, 17, -6, 0, 11, 14,
    -- layer=2 filter=28 channel=62
    9, 37, 16, 36, 5, 14, 45, 19, 12,
    -- layer=2 filter=28 channel=63
    -26, -44, 0, -9, 34, 20, 3, 0, 26,
    -- layer=2 filter=29 channel=0
    21, 13, 17, 17, 8, 8, 6, 5, 20,
    -- layer=2 filter=29 channel=1
    -17, -3, 22, 0, 9, 34, -9, 16, 10,
    -- layer=2 filter=29 channel=2
    11, -7, -22, 6, 7, -6, 0, 0, -47,
    -- layer=2 filter=29 channel=3
    -34, -18, 2, 9, 17, 25, -29, -10, -8,
    -- layer=2 filter=29 channel=4
    -7, -9, -29, 61, -3, -32, 75, 43, 0,
    -- layer=2 filter=29 channel=5
    -1, 26, 25, -25, 7, 38, -18, 15, 28,
    -- layer=2 filter=29 channel=6
    -10, -30, -14, 21, -7, -8, 35, 0, 13,
    -- layer=2 filter=29 channel=7
    -21, -17, 15, -13, -29, -8, 18, -11, 11,
    -- layer=2 filter=29 channel=8
    -12, -17, -10, -22, -34, 9, 2, -16, -8,
    -- layer=2 filter=29 channel=9
    -43, 29, 0, -35, -6, 0, -49, 32, 34,
    -- layer=2 filter=29 channel=10
    -19, 11, 0, -6, 10, -8, -11, 18, -13,
    -- layer=2 filter=29 channel=11
    -23, 13, 20, -9, 5, 16, -10, 2, -8,
    -- layer=2 filter=29 channel=12
    7, -1, -2, -12, -3, 8, 9, 16, 15,
    -- layer=2 filter=29 channel=13
    -2, 2, -10, -7, 2, -3, 8, 5, -11,
    -- layer=2 filter=29 channel=14
    7, 26, -9, -5, 22, -7, 0, -12, -7,
    -- layer=2 filter=29 channel=15
    8, -3, 0, 14, 1, 21, 23, 6, -1,
    -- layer=2 filter=29 channel=16
    -4, -15, 15, 1, -3, 16, -25, -10, 0,
    -- layer=2 filter=29 channel=17
    -4, 12, 3, -34, 21, 12, -1, 10, 16,
    -- layer=2 filter=29 channel=18
    0, -51, 13, -12, -44, -10, -27, -35, 12,
    -- layer=2 filter=29 channel=19
    7, -4, 4, -12, 21, -8, 3, 11, -9,
    -- layer=2 filter=29 channel=20
    -14, -18, 21, -4, -6, -7, -16, 7, 15,
    -- layer=2 filter=29 channel=21
    4, -33, -34, 24, 9, -24, 23, 26, 11,
    -- layer=2 filter=29 channel=22
    -12, 9, -2, 19, 1, 8, -13, -4, 1,
    -- layer=2 filter=29 channel=23
    9, -24, -4, 14, 14, -2, 1, 27, 1,
    -- layer=2 filter=29 channel=24
    -12, 20, 16, -3, 12, -22, 19, -14, 21,
    -- layer=2 filter=29 channel=25
    0, 10, 8, -14, 12, -13, 5, -14, 8,
    -- layer=2 filter=29 channel=26
    -12, -8, 4, 1, -17, 0, 8, -15, -9,
    -- layer=2 filter=29 channel=27
    16, 6, 20, -4, 16, 6, 16, 22, -6,
    -- layer=2 filter=29 channel=28
    30, 16, -20, 38, 2, 5, 31, 41, 3,
    -- layer=2 filter=29 channel=29
    30, 14, -11, 20, 9, 28, -7, 11, 13,
    -- layer=2 filter=29 channel=30
    7, 0, -6, -17, 7, 9, -14, -2, 1,
    -- layer=2 filter=29 channel=31
    38, -2, -20, 22, -7, -8, 36, 18, 5,
    -- layer=2 filter=29 channel=32
    14, 8, 0, -13, 14, 6, 9, 9, 16,
    -- layer=2 filter=29 channel=33
    39, 15, 18, 20, -13, -11, 28, -7, -1,
    -- layer=2 filter=29 channel=34
    -3, -26, -9, -8, -9, 1, 13, -9, -16,
    -- layer=2 filter=29 channel=35
    -20, -10, 7, -9, -23, 6, -3, -11, 10,
    -- layer=2 filter=29 channel=36
    -15, -7, -1, -4, -2, 9, -8, 18, 7,
    -- layer=2 filter=29 channel=37
    -19, -44, -20, 30, -18, -20, 47, 5, -8,
    -- layer=2 filter=29 channel=38
    -11, -29, -5, 18, -15, -17, 53, 9, 2,
    -- layer=2 filter=29 channel=39
    -2, 3, -13, 12, -6, 0, 32, 7, -21,
    -- layer=2 filter=29 channel=40
    35, -10, 6, 20, 0, -13, 22, -6, 23,
    -- layer=2 filter=29 channel=41
    29, 27, 5, -2, -10, 12, -4, 27, 14,
    -- layer=2 filter=29 channel=42
    3, -23, -8, -1, -7, -18, 1, -39, -19,
    -- layer=2 filter=29 channel=43
    -10, -27, -33, 9, -20, -21, -10, -16, 1,
    -- layer=2 filter=29 channel=44
    -15, -23, -32, 24, 20, -6, 29, 8, 3,
    -- layer=2 filter=29 channel=45
    8, -9, 5, 2, -7, -15, 3, -4, -2,
    -- layer=2 filter=29 channel=46
    3, -14, 2, 8, -37, -29, 10, 3, -4,
    -- layer=2 filter=29 channel=47
    -13, 12, -14, -7, -17, -10, -7, 9, -16,
    -- layer=2 filter=29 channel=48
    12, 17, 24, 44, 49, 4, 35, 40, 16,
    -- layer=2 filter=29 channel=49
    -5, -24, -3, 29, -12, -25, 3, -6, -20,
    -- layer=2 filter=29 channel=50
    -3, 2, -14, -8, -10, 9, -12, 4, 0,
    -- layer=2 filter=29 channel=51
    0, 17, 11, -5, -9, 0, 16, -18, 0,
    -- layer=2 filter=29 channel=52
    5, 63, 6, 17, -18, -16, -6, 33, -34,
    -- layer=2 filter=29 channel=53
    6, -37, -12, 34, -5, 3, 57, 38, 13,
    -- layer=2 filter=29 channel=54
    0, -12, 10, -12, 13, 21, -3, 14, 5,
    -- layer=2 filter=29 channel=55
    -8, 8, 12, 18, 0, 9, 10, 8, -5,
    -- layer=2 filter=29 channel=56
    3, -20, -10, 4, -2, -13, 16, 19, -7,
    -- layer=2 filter=29 channel=57
    19, 4, -6, -19, -6, -21, 7, 10, -17,
    -- layer=2 filter=29 channel=58
    -13, 2, 24, -14, 12, 21, -18, 0, 20,
    -- layer=2 filter=29 channel=59
    4, -5, -15, 17, 1, 13, 8, -12, -6,
    -- layer=2 filter=29 channel=60
    15, 5, -3, -16, 12, -25, 0, -23, -41,
    -- layer=2 filter=29 channel=61
    -15, -1, -13, -11, 8, 1, -4, -7, -12,
    -- layer=2 filter=29 channel=62
    -22, 8, 9, 48, -14, 12, -9, 34, 40,
    -- layer=2 filter=29 channel=63
    1, -25, -25, -12, -12, 17, -6, -2, 7,
    -- layer=2 filter=30 channel=0
    -28, -17, 29, -48, -59, 18, -21, -61, 15,
    -- layer=2 filter=30 channel=1
    2, 16, 0, 23, 16, -21, 7, 3, 1,
    -- layer=2 filter=30 channel=2
    -24, 31, 57, -41, -12, 25, -32, -35, 13,
    -- layer=2 filter=30 channel=3
    0, 8, -19, -8, -10, 24, 29, 35, 0,
    -- layer=2 filter=30 channel=4
    -13, -19, 21, -45, -19, 43, -76, -3, 47,
    -- layer=2 filter=30 channel=5
    2, 18, 0, 26, 16, -19, 13, 7, -30,
    -- layer=2 filter=30 channel=6
    14, -11, 7, 14, 7, 42, -16, 5, 23,
    -- layer=2 filter=30 channel=7
    -28, -35, -34, -16, 7, -22, -14, -20, 15,
    -- layer=2 filter=30 channel=8
    -8, 1, -11, 29, 21, 11, 33, 38, -20,
    -- layer=2 filter=30 channel=9
    64, 62, -26, 20, 46, -17, 44, 16, 15,
    -- layer=2 filter=30 channel=10
    13, 6, -6, 16, 9, -8, 9, -13, -7,
    -- layer=2 filter=30 channel=11
    29, 16, -12, 26, 13, 1, 31, 15, 8,
    -- layer=2 filter=30 channel=12
    9, 8, 4, 7, 10, 0, 3, 15, -3,
    -- layer=2 filter=30 channel=13
    -11, -9, 24, 4, 1, -1, 20, 16, 16,
    -- layer=2 filter=30 channel=14
    19, -9, 19, -11, -14, 15, 22, 11, 25,
    -- layer=2 filter=30 channel=15
    10, 5, -13, 12, -11, 6, 12, 5, 15,
    -- layer=2 filter=30 channel=16
    -14, -16, 11, -10, 0, 3, -16, -22, -13,
    -- layer=2 filter=30 channel=17
    39, 9, -2, 41, 2, -10, 10, -16, -40,
    -- layer=2 filter=30 channel=18
    22, -4, -3, 2, 0, -6, 24, 5, 12,
    -- layer=2 filter=30 channel=19
    -4, 8, -2, -10, -16, 12, -14, -5, -9,
    -- layer=2 filter=30 channel=20
    -22, -17, -15, 10, -7, -19, 4, 11, 5,
    -- layer=2 filter=30 channel=21
    16, 12, 23, -18, 20, 16, -12, 5, 1,
    -- layer=2 filter=30 channel=22
    17, -3, -13, 18, -17, -7, 0, 0, 8,
    -- layer=2 filter=30 channel=23
    0, -8, 2, 19, 26, -12, -8, 13, -19,
    -- layer=2 filter=30 channel=24
    -7, -6, -8, 13, 18, -9, -9, 3, -24,
    -- layer=2 filter=30 channel=25
    -10, 13, -10, 9, -6, -8, 13, -17, -18,
    -- layer=2 filter=30 channel=26
    -6, -7, -4, 11, 4, -16, -8, -5, 17,
    -- layer=2 filter=30 channel=27
    25, 20, 15, 0, 14, -19, 5, -22, -6,
    -- layer=2 filter=30 channel=28
    -35, -24, 25, -44, -53, -13, -50, -41, 15,
    -- layer=2 filter=30 channel=29
    26, 21, 25, 5, -15, -26, 12, 4, -17,
    -- layer=2 filter=30 channel=30
    17, -4, -12, 21, 25, -23, 26, 15, 0,
    -- layer=2 filter=30 channel=31
    15, 2, 23, 20, -6, -5, 22, 25, 16,
    -- layer=2 filter=30 channel=32
    0, 15, -8, 2, -6, -11, 7, -13, 4,
    -- layer=2 filter=30 channel=33
    16, 13, 22, -10, -45, -27, -19, -41, -11,
    -- layer=2 filter=30 channel=34
    -3, 1, -2, 0, 0, -8, -27, 21, -17,
    -- layer=2 filter=30 channel=35
    9, -3, -5, 21, 8, -16, 2, -5, 7,
    -- layer=2 filter=30 channel=36
    14, -2, -4, -14, 9, -22, 8, -13, -36,
    -- layer=2 filter=30 channel=37
    -33, 11, 29, -21, -4, 10, -10, -22, -20,
    -- layer=2 filter=30 channel=38
    -14, 8, 17, 8, 12, 47, -14, -7, 44,
    -- layer=2 filter=30 channel=39
    4, 0, -22, 17, -8, 1, 4, -3, 8,
    -- layer=2 filter=30 channel=40
    4, -2, 21, 0, -15, 37, 1, 6, 18,
    -- layer=2 filter=30 channel=41
    -2, 14, 24, 5, -7, -23, 18, -4, -11,
    -- layer=2 filter=30 channel=42
    -26, -19, 24, -23, -9, 5, -11, -6, -30,
    -- layer=2 filter=30 channel=43
    -32, -21, -17, -19, -25, -14, 9, -36, 2,
    -- layer=2 filter=30 channel=44
    0, -29, 11, -32, -49, -15, -29, -17, 0,
    -- layer=2 filter=30 channel=45
    -12, -23, -8, -17, -9, 21, -23, 4, -6,
    -- layer=2 filter=30 channel=46
    -22, -6, 2, 4, 2, -13, -15, 4, -13,
    -- layer=2 filter=30 channel=47
    4, 10, 19, -18, -11, 6, -4, 17, -7,
    -- layer=2 filter=30 channel=48
    -22, 5, 19, -11, -32, 12, -18, -37, 4,
    -- layer=2 filter=30 channel=49
    -11, 14, -1, -18, -8, 2, 5, -6, -12,
    -- layer=2 filter=30 channel=50
    3, -7, 9, -5, 9, 0, -8, 0, -10,
    -- layer=2 filter=30 channel=51
    7, -8, -1, 7, 0, 5, 15, -8, -6,
    -- layer=2 filter=30 channel=52
    46, 56, 44, 18, -10, -4, -8, -37, -28,
    -- layer=2 filter=30 channel=53
    -4, -32, 1, -18, 9, 27, -12, -15, 3,
    -- layer=2 filter=30 channel=54
    16, -3, 6, 22, -2, -8, -15, -8, -20,
    -- layer=2 filter=30 channel=55
    -12, 0, 10, 5, 1, -10, 9, 0, -1,
    -- layer=2 filter=30 channel=56
    1, -1, 18, -26, -7, -10, -22, -7, -15,
    -- layer=2 filter=30 channel=57
    13, 0, -15, 6, -19, 0, -14, -8, -13,
    -- layer=2 filter=30 channel=58
    -6, -2, -17, 9, 5, -1, 27, 11, -15,
    -- layer=2 filter=30 channel=59
    -16, -9, 10, 17, -13, 10, 16, -9, -12,
    -- layer=2 filter=30 channel=60
    0, -6, -4, -3, 6, -4, -19, 7, -4,
    -- layer=2 filter=30 channel=61
    -15, 3, 13, 15, -12, -13, 15, -14, 17,
    -- layer=2 filter=30 channel=62
    27, 4, 16, -14, -11, -21, 5, -31, 0,
    -- layer=2 filter=30 channel=63
    -10, -37, -44, 1, 10, 9, -30, -37, -3,
    -- layer=2 filter=31 channel=0
    17, -20, -7, 0, -5, -5, -3, 5, 6,
    -- layer=2 filter=31 channel=1
    -10, -5, -12, -16, -21, 1, -4, -24, -20,
    -- layer=2 filter=31 channel=2
    11, -10, 0, -28, -8, 7, -22, -6, -23,
    -- layer=2 filter=31 channel=3
    -7, 8, -17, -4, -4, -17, -2, -3, -15,
    -- layer=2 filter=31 channel=4
    -36, 0, 9, -31, -21, -2, 5, -30, 2,
    -- layer=2 filter=31 channel=5
    -16, -11, -22, 11, -8, -23, -11, -13, 0,
    -- layer=2 filter=31 channel=6
    1, 9, -11, -16, 3, 14, 8, -3, 2,
    -- layer=2 filter=31 channel=7
    17, 5, -26, 15, -20, -24, 3, -10, -12,
    -- layer=2 filter=31 channel=8
    8, -4, 23, 8, 2, -11, -7, -4, -18,
    -- layer=2 filter=31 channel=9
    -30, -21, 4, -24, -5, 0, 4, 1, 15,
    -- layer=2 filter=31 channel=10
    -2, -2, -7, -16, 16, -11, -9, -3, 3,
    -- layer=2 filter=31 channel=11
    0, 4, -8, -10, 0, -14, 3, -30, -18,
    -- layer=2 filter=31 channel=12
    17, 4, -14, -14, 10, 11, 1, -16, -13,
    -- layer=2 filter=31 channel=13
    -22, -7, -28, -10, -13, -14, -15, 8, 3,
    -- layer=2 filter=31 channel=14
    -21, -10, -7, 2, 0, 5, -9, -14, -14,
    -- layer=2 filter=31 channel=15
    -18, 5, -2, 12, -19, -9, -5, -22, -18,
    -- layer=2 filter=31 channel=16
    -14, 12, -15, -18, 11, -8, -16, 17, -16,
    -- layer=2 filter=31 channel=17
    3, -7, 9, 6, -16, -1, -8, -4, -3,
    -- layer=2 filter=31 channel=18
    -26, -31, -24, 13, -4, -15, 18, -16, 12,
    -- layer=2 filter=31 channel=19
    -18, -8, -5, 18, -4, 18, -7, -12, 5,
    -- layer=2 filter=31 channel=20
    -1, -10, -13, 6, -13, -4, 11, -22, 0,
    -- layer=2 filter=31 channel=21
    -4, -13, -13, 3, -1, 5, 3, 1, -14,
    -- layer=2 filter=31 channel=22
    3, 6, 15, -12, -3, 15, -8, 10, -15,
    -- layer=2 filter=31 channel=23
    -7, 7, -16, -10, -14, -4, -12, -10, -17,
    -- layer=2 filter=31 channel=24
    0, 7, 10, -13, 1, 18, 12, -8, 14,
    -- layer=2 filter=31 channel=25
    -16, -3, 16, 3, 13, -18, -1, -15, -7,
    -- layer=2 filter=31 channel=26
    9, 12, -8, -3, 13, 14, -8, 0, -4,
    -- layer=2 filter=31 channel=27
    2, 6, 10, 2, 12, 14, -7, -14, -15,
    -- layer=2 filter=31 channel=28
    -11, -4, -19, -28, -4, -15, -5, -11, -15,
    -- layer=2 filter=31 channel=29
    -14, 2, -22, 2, 11, 7, -13, -2, -1,
    -- layer=2 filter=31 channel=30
    0, -1, -5, 8, -2, 9, -10, 9, 11,
    -- layer=2 filter=31 channel=31
    6, 8, -21, -19, -9, 8, 0, -19, -5,
    -- layer=2 filter=31 channel=32
    7, 18, -5, -14, 11, -11, -18, -11, -9,
    -- layer=2 filter=31 channel=33
    -15, 21, -8, -6, -13, 3, -12, 12, -22,
    -- layer=2 filter=31 channel=34
    -19, 6, 14, -10, -6, -7, -20, 5, -19,
    -- layer=2 filter=31 channel=35
    -18, -4, -11, 0, -2, -17, 8, -24, 0,
    -- layer=2 filter=31 channel=36
    -20, -21, -20, -14, 10, 1, -8, -17, 13,
    -- layer=2 filter=31 channel=37
    -10, 2, 3, 0, -13, -4, 1, -10, 6,
    -- layer=2 filter=31 channel=38
    -8, -18, -18, -17, 0, -4, -20, -15, 10,
    -- layer=2 filter=31 channel=39
    8, 10, -20, 10, -1, -17, -1, -3, 7,
    -- layer=2 filter=31 channel=40
    4, 5, -9, 8, -21, -20, -13, -23, 0,
    -- layer=2 filter=31 channel=41
    6, 17, -17, -18, 1, 3, -29, -6, 10,
    -- layer=2 filter=31 channel=42
    4, -8, 14, 3, -26, -15, -12, -5, -19,
    -- layer=2 filter=31 channel=43
    -5, -10, -16, -12, -11, -19, -14, -8, -8,
    -- layer=2 filter=31 channel=44
    -14, 2, -12, 4, 6, 13, -14, -16, -20,
    -- layer=2 filter=31 channel=45
    5, -17, -30, 2, -13, -8, 13, -5, -2,
    -- layer=2 filter=31 channel=46
    3, -12, 0, 1, 12, 4, -22, -2, -24,
    -- layer=2 filter=31 channel=47
    17, 4, -2, -14, -7, -4, 12, 7, -10,
    -- layer=2 filter=31 channel=48
    -16, 0, 0, -4, -22, 1, 16, -17, -13,
    -- layer=2 filter=31 channel=49
    10, 4, 12, -5, -19, -7, 0, 0, -6,
    -- layer=2 filter=31 channel=50
    -9, -7, -8, 6, -9, 16, 0, -16, 3,
    -- layer=2 filter=31 channel=51
    11, 3, 6, 11, 7, 6, -12, 10, 15,
    -- layer=2 filter=31 channel=52
    -19, 11, -8, -5, -22, 5, -23, -6, 6,
    -- layer=2 filter=31 channel=53
    14, -19, 1, -20, 11, -10, -1, 0, 0,
    -- layer=2 filter=31 channel=54
    0, -13, -1, -23, 15, 14, 2, -9, 0,
    -- layer=2 filter=31 channel=55
    13, 15, -9, 6, -3, -15, -1, 1, -6,
    -- layer=2 filter=31 channel=56
    -4, 9, 5, 8, -13, -16, -10, 9, 2,
    -- layer=2 filter=31 channel=57
    -9, -13, -6, 8, 14, 8, -10, -3, -11,
    -- layer=2 filter=31 channel=58
    14, 15, 0, -11, -9, 2, -18, -23, 6,
    -- layer=2 filter=31 channel=59
    -9, 10, 7, 18, 8, 17, -1, -17, 7,
    -- layer=2 filter=31 channel=60
    -4, 0, 3, 2, 5, -7, 2, 12, 11,
    -- layer=2 filter=31 channel=61
    3, 14, 9, -15, 3, -8, 15, 12, 11,
    -- layer=2 filter=31 channel=62
    13, 0, 0, -17, -17, -14, 4, 2, 5,
    -- layer=2 filter=31 channel=63
    15, -12, -14, -13, -12, -25, 3, -24, 3,
    -- layer=2 filter=32 channel=0
    -1, 10, -9, -14, 12, 0, 14, -5, -16,
    -- layer=2 filter=32 channel=1
    -3, 6, 13, 10, 14, -14, -17, -14, -11,
    -- layer=2 filter=32 channel=2
    0, -6, -13, 1, -2, 0, -5, -17, -16,
    -- layer=2 filter=32 channel=3
    -4, -3, 0, 9, -11, 11, -10, 4, -8,
    -- layer=2 filter=32 channel=4
    12, -7, -19, -7, -15, 15, 2, -3, -8,
    -- layer=2 filter=32 channel=5
    16, -16, -4, 7, -8, 12, 0, -1, -7,
    -- layer=2 filter=32 channel=6
    -8, -8, 7, -8, -11, 11, -18, 13, -13,
    -- layer=2 filter=32 channel=7
    -11, -13, -13, -8, -16, 15, -8, -10, 14,
    -- layer=2 filter=32 channel=8
    -19, -17, -17, 9, -10, -3, 10, -17, 8,
    -- layer=2 filter=32 channel=9
    0, -14, -1, 14, 0, 15, -6, -3, -13,
    -- layer=2 filter=32 channel=10
    -1, -11, 0, -15, 13, 0, 15, 5, -11,
    -- layer=2 filter=32 channel=11
    -15, 15, -16, 16, 10, -17, -4, -14, 2,
    -- layer=2 filter=32 channel=12
    0, 0, -2, -9, 3, 11, -7, -9, -11,
    -- layer=2 filter=32 channel=13
    -5, -9, -15, 5, -7, -15, -7, 2, -1,
    -- layer=2 filter=32 channel=14
    -3, -8, 0, 11, 8, -7, 4, -12, -9,
    -- layer=2 filter=32 channel=15
    -8, -10, 3, -6, -15, -18, -4, -8, -8,
    -- layer=2 filter=32 channel=16
    0, -8, -6, -15, 13, 8, 15, 0, -7,
    -- layer=2 filter=32 channel=17
    0, 15, 4, -5, -8, 9, -5, 2, -7,
    -- layer=2 filter=32 channel=18
    -12, -11, 4, -1, -13, -15, -2, 2, -5,
    -- layer=2 filter=32 channel=19
    9, -1, 8, -13, 18, 1, 8, 0, 13,
    -- layer=2 filter=32 channel=20
    10, -15, 12, -3, -5, 11, 8, -13, -8,
    -- layer=2 filter=32 channel=21
    -5, -5, -11, 10, -8, 4, -13, -18, -11,
    -- layer=2 filter=32 channel=22
    8, 4, -1, -4, 1, -11, -4, -2, 12,
    -- layer=2 filter=32 channel=23
    -7, 10, -18, -12, 0, -10, 1, -16, -18,
    -- layer=2 filter=32 channel=24
    4, 0, -5, 8, 4, 17, 17, 7, 10,
    -- layer=2 filter=32 channel=25
    5, 10, 1, 5, -10, -1, 0, -17, 5,
    -- layer=2 filter=32 channel=26
    16, -15, -15, 18, -3, -11, 5, 15, -18,
    -- layer=2 filter=32 channel=27
    -11, -2, 0, -10, -5, -13, 7, 12, -6,
    -- layer=2 filter=32 channel=28
    8, 1, 10, 0, 13, 4, -11, -11, -19,
    -- layer=2 filter=32 channel=29
    -8, -9, 5, -8, -11, 1, -13, 5, -13,
    -- layer=2 filter=32 channel=30
    -2, -6, 2, -17, 11, 0, -5, -14, -10,
    -- layer=2 filter=32 channel=31
    -16, -13, 5, -11, 12, 9, -17, 8, -8,
    -- layer=2 filter=32 channel=32
    -6, 16, 16, -9, -14, 15, 0, -14, -5,
    -- layer=2 filter=32 channel=33
    -7, -16, -4, 12, -15, 5, 2, -13, 0,
    -- layer=2 filter=32 channel=34
    -10, -12, 0, 3, 0, 11, 5, 0, 5,
    -- layer=2 filter=32 channel=35
    -9, -17, -8, -10, 4, -5, 10, -3, -11,
    -- layer=2 filter=32 channel=36
    -13, -12, -12, 7, -1, -13, 2, -1, 1,
    -- layer=2 filter=32 channel=37
    10, -11, -11, 4, 10, -10, 10, 5, -19,
    -- layer=2 filter=32 channel=38
    5, -2, 11, -9, -4, -17, 17, -5, 15,
    -- layer=2 filter=32 channel=39
    12, -6, 9, 4, 3, -12, -16, 0, 0,
    -- layer=2 filter=32 channel=40
    1, 0, 11, -8, 0, 0, 13, 3, 0,
    -- layer=2 filter=32 channel=41
    5, -15, 9, -6, -3, -10, 4, -1, -5,
    -- layer=2 filter=32 channel=42
    -12, 4, 17, -11, 11, -4, 8, -3, -7,
    -- layer=2 filter=32 channel=43
    -16, -8, 11, -15, -15, -19, -2, 4, -13,
    -- layer=2 filter=32 channel=44
    -4, 4, 0, -8, -16, -13, 5, -14, 6,
    -- layer=2 filter=32 channel=45
    14, 2, -15, -12, -11, -11, -8, -7, 3,
    -- layer=2 filter=32 channel=46
    -3, -12, -16, 0, 9, -16, -15, 7, -8,
    -- layer=2 filter=32 channel=47
    -10, -17, 9, 7, -11, -12, -10, 3, 12,
    -- layer=2 filter=32 channel=48
    -13, 16, -5, 12, 13, -4, -7, 0, 0,
    -- layer=2 filter=32 channel=49
    5, 10, -1, 1, -8, -6, -5, -8, -16,
    -- layer=2 filter=32 channel=50
    -14, -1, 12, -9, 0, -4, 6, -7, 0,
    -- layer=2 filter=32 channel=51
    -14, 11, 8, 0, -12, -10, -9, -18, 0,
    -- layer=2 filter=32 channel=52
    -5, -13, -19, 6, -8, 0, -11, -6, 2,
    -- layer=2 filter=32 channel=53
    1, 11, -14, -15, -15, -5, -16, 11, 11,
    -- layer=2 filter=32 channel=54
    -9, -2, 0, -7, -7, 0, -12, 11, -18,
    -- layer=2 filter=32 channel=55
    -1, -17, -10, -4, 9, -7, -14, -13, 0,
    -- layer=2 filter=32 channel=56
    -7, -16, 3, -9, 3, 11, -2, -2, 11,
    -- layer=2 filter=32 channel=57
    -12, -11, -16, 11, -19, 4, -5, -7, -2,
    -- layer=2 filter=32 channel=58
    -15, -16, -19, -8, -13, -3, -21, -15, -3,
    -- layer=2 filter=32 channel=59
    0, -3, -10, 12, -6, -13, -3, 16, 3,
    -- layer=2 filter=32 channel=60
    -21, -1, 0, -12, 12, 9, -1, -19, -2,
    -- layer=2 filter=32 channel=61
    -6, -18, -4, -17, 14, -1, 5, 8, 5,
    -- layer=2 filter=32 channel=62
    -11, 9, -17, -18, -5, 10, -12, 5, 14,
    -- layer=2 filter=32 channel=63
    -8, 0, -10, -15, 2, -7, -15, 2, -5,
    -- layer=2 filter=33 channel=0
    13, 6, -33, 7, -33, 33, -26, 1, 24,
    -- layer=2 filter=33 channel=1
    1, 8, 11, -20, -19, 0, -8, -27, 8,
    -- layer=2 filter=33 channel=2
    3, -53, -15, -6, 0, 14, -33, 18, 43,
    -- layer=2 filter=33 channel=3
    21, 19, -5, -25, 7, -1, -15, -23, -38,
    -- layer=2 filter=33 channel=4
    15, 7, -20, 7, 14, 15, 17, 19, -1,
    -- layer=2 filter=33 channel=5
    17, 25, 22, -21, 15, 6, -18, -11, -14,
    -- layer=2 filter=33 channel=6
    -6, -5, -27, -11, -1, 12, 3, 15, -1,
    -- layer=2 filter=33 channel=7
    19, -13, -14, -26, 6, -30, 9, 15, -26,
    -- layer=2 filter=33 channel=8
    -27, -13, -30, -27, 3, -4, -11, -2, -5,
    -- layer=2 filter=33 channel=9
    -27, -62, -24, 11, 14, 5, -21, 5, -31,
    -- layer=2 filter=33 channel=10
    -15, 16, 8, 12, 2, -16, 8, 13, 16,
    -- layer=2 filter=33 channel=11
    21, 22, 32, -15, -1, 0, -24, -54, -51,
    -- layer=2 filter=33 channel=12
    10, -9, -11, 15, 6, -10, -9, 2, -10,
    -- layer=2 filter=33 channel=13
    -7, 16, 13, 3, 38, 19, 25, 36, 6,
    -- layer=2 filter=33 channel=14
    33, 19, 39, 15, -1, 8, 23, -27, -46,
    -- layer=2 filter=33 channel=15
    9, 22, 19, 10, -34, 12, 11, -2, 15,
    -- layer=2 filter=33 channel=16
    12, 7, -15, 13, 9, 7, 17, 0, 20,
    -- layer=2 filter=33 channel=17
    9, -5, -11, -28, -27, -18, 12, -5, -3,
    -- layer=2 filter=33 channel=18
    -17, -2, 10, 20, 45, 14, 56, 45, -3,
    -- layer=2 filter=33 channel=19
    -20, 10, -4, 30, 18, 0, 22, 32, 9,
    -- layer=2 filter=33 channel=20
    12, 15, 18, 19, 10, -15, 33, 13, -37,
    -- layer=2 filter=33 channel=21
    15, -1, 2, -12, 6, -4, -22, -26, 13,
    -- layer=2 filter=33 channel=22
    16, 4, -1, 15, -7, -16, -13, 10, -7,
    -- layer=2 filter=33 channel=23
    5, -19, -13, -15, 8, -11, -5, -3, 11,
    -- layer=2 filter=33 channel=24
    -6, -13, -18, 1, -20, -26, -14, 4, -19,
    -- layer=2 filter=33 channel=25
    0, 1, 6, -11, 17, -7, 4, 1, 2,
    -- layer=2 filter=33 channel=26
    8, 2, 20, 5, -15, -12, -16, -13, -13,
    -- layer=2 filter=33 channel=27
    8, -8, -12, 0, 9, 1, -11, 13, -21,
    -- layer=2 filter=33 channel=28
    0, -17, -32, -11, -3, 27, -24, 5, 36,
    -- layer=2 filter=33 channel=29
    11, 38, 14, -1, 4, 17, -39, -30, -60,
    -- layer=2 filter=33 channel=30
    2, 24, 23, -4, -17, -20, 24, -40, -36,
    -- layer=2 filter=33 channel=31
    24, 51, 43, 2, -13, -5, -14, -19, -55,
    -- layer=2 filter=33 channel=32
    -6, -12, 3, -4, -5, 21, -8, -19, 1,
    -- layer=2 filter=33 channel=33
    -13, 4, -15, 5, -10, -28, 12, -31, -9,
    -- layer=2 filter=33 channel=34
    -24, -16, -37, -30, 9, 6, -13, 6, 20,
    -- layer=2 filter=33 channel=35
    3, 24, 27, 14, 22, -12, -1, -5, -36,
    -- layer=2 filter=33 channel=36
    8, 33, 20, -1, 6, -2, -40, -41, -35,
    -- layer=2 filter=33 channel=37
    -4, -22, -34, -21, -5, -19, -14, -10, -29,
    -- layer=2 filter=33 channel=38
    -11, 4, 10, 1, -11, 5, -22, 3, 13,
    -- layer=2 filter=33 channel=39
    20, 47, 52, 15, 28, -11, -40, -58, -61,
    -- layer=2 filter=33 channel=40
    -20, 11, 0, 13, 7, -19, 53, 29, -4,
    -- layer=2 filter=33 channel=41
    8, 12, 37, 6, -2, -30, -36, -62, -62,
    -- layer=2 filter=33 channel=42
    0, 26, 41, -28, -17, 45, -30, 7, 6,
    -- layer=2 filter=33 channel=43
    16, 14, -28, -3, -13, -10, -40, 22, 44,
    -- layer=2 filter=33 channel=44
    2, -26, -36, 12, -47, 7, 0, -25, 1,
    -- layer=2 filter=33 channel=45
    -14, 23, 11, 10, 17, 3, -1, -8, -34,
    -- layer=2 filter=33 channel=46
    31, 36, 28, 13, 17, -3, -19, -30, -34,
    -- layer=2 filter=33 channel=47
    -8, 6, -11, -9, -5, 20, 1, 8, -3,
    -- layer=2 filter=33 channel=48
    -8, -29, -26, 18, 0, 7, 24, 1, 38,
    -- layer=2 filter=33 channel=49
    2, 12, -33, -4, 1, -26, -16, -3, -25,
    -- layer=2 filter=33 channel=50
    -3, 9, -8, 2, 10, -12, 1, 10, -18,
    -- layer=2 filter=33 channel=51
    -3, 15, -11, -1, -13, -2, -2, 14, 4,
    -- layer=2 filter=33 channel=52
    -13, -31, -20, -7, -27, 16, -46, 2, 36,
    -- layer=2 filter=33 channel=53
    7, -2, -1, -6, 19, -24, 16, 5, 18,
    -- layer=2 filter=33 channel=54
    -7, 10, 9, 0, -15, -36, 0, -11, -10,
    -- layer=2 filter=33 channel=55
    -15, 3, 2, 19, -10, 0, 5, -4, -15,
    -- layer=2 filter=33 channel=56
    -19, -19, -8, -5, -1, -8, -30, -20, -10,
    -- layer=2 filter=33 channel=57
    5, 26, -4, -11, -8, -20, -8, 25, 16,
    -- layer=2 filter=33 channel=58
    11, 29, 13, -7, -5, 1, -1, -10, -32,
    -- layer=2 filter=33 channel=59
    4, 1, 12, -15, -15, 0, -14, 20, 12,
    -- layer=2 filter=33 channel=60
    13, 19, -7, 3, -11, 37, -2, -26, 35,
    -- layer=2 filter=33 channel=61
    -15, -10, -14, -9, 12, -6, -2, -16, 9,
    -- layer=2 filter=33 channel=62
    -32, -26, 10, -7, -11, -42, -9, -47, -51,
    -- layer=2 filter=33 channel=63
    26, 20, -2, 8, -1, 13, 36, 43, 12,
    -- layer=2 filter=34 channel=0
    46, -20, 27, -4, 22, 39, -34, 23, 14,
    -- layer=2 filter=34 channel=1
    19, -16, 8, 26, -20, -28, 9, -7, -39,
    -- layer=2 filter=34 channel=2
    5, 6, 66, -10, 4, 52, -10, 0, -14,
    -- layer=2 filter=34 channel=3
    -6, -4, -5, 16, -13, 18, -4, -1, 17,
    -- layer=2 filter=34 channel=4
    -48, -11, 3, -23, 33, 34, -6, 33, 58,
    -- layer=2 filter=34 channel=5
    13, -19, 25, 20, -23, -12, 26, 23, 13,
    -- layer=2 filter=34 channel=6
    3, 21, -4, -52, 17, 8, -65, -54, -13,
    -- layer=2 filter=34 channel=7
    -3, -2, 18, -33, -20, -23, -8, 1, -23,
    -- layer=2 filter=34 channel=8
    -54, -14, 19, 19, -5, -17, 12, 17, 15,
    -- layer=2 filter=34 channel=9
    -37, 11, -9, -19, -19, 39, -20, -41, -1,
    -- layer=2 filter=34 channel=10
    9, -10, 3, 0, 8, 6, -1, 2, 1,
    -- layer=2 filter=34 channel=11
    42, -12, -37, 18, -24, -47, 40, -20, -15,
    -- layer=2 filter=34 channel=12
    -1, -14, -9, 9, 12, 16, 14, 10, 5,
    -- layer=2 filter=34 channel=13
    -16, 8, -23, 24, 10, 2, -16, -15, 51,
    -- layer=2 filter=34 channel=14
    17, -18, -6, -2, 1, -12, 21, 1, 37,
    -- layer=2 filter=34 channel=15
    2, 0, 5, 10, -22, -14, 5, 3, -7,
    -- layer=2 filter=34 channel=16
    0, -4, 11, 11, 14, 1, 23, 9, 15,
    -- layer=2 filter=34 channel=17
    9, -12, 2, 21, -29, -45, 19, -25, -27,
    -- layer=2 filter=34 channel=18
    14, -7, -33, 13, 19, 1, -18, 8, 52,
    -- layer=2 filter=34 channel=19
    12, -22, -17, -16, 0, 15, -13, 25, 18,
    -- layer=2 filter=34 channel=20
    12, -28, -28, 19, 8, 17, 12, -18, 40,
    -- layer=2 filter=34 channel=21
    -8, 15, 6, -30, 13, -7, -9, -12, -35,
    -- layer=2 filter=34 channel=22
    9, 5, -7, 13, -16, 20, -2, 10, -15,
    -- layer=2 filter=34 channel=23
    -17, 20, -15, -28, -36, -2, -28, -48, -44,
    -- layer=2 filter=34 channel=24
    1, 5, 6, -8, -19, 7, 5, 2, 1,
    -- layer=2 filter=34 channel=25
    4, -10, -5, -1, -1, 9, -16, -2, -9,
    -- layer=2 filter=34 channel=26
    -6, 16, 12, -2, 12, 5, -4, 9, 0,
    -- layer=2 filter=34 channel=27
    -14, 20, 2, -14, 17, 0, 9, 11, 35,
    -- layer=2 filter=34 channel=28
    -24, 13, 18, -31, 25, 24, 0, 12, 0,
    -- layer=2 filter=34 channel=29
    36, -21, -18, 37, -24, -55, 25, -10, -60,
    -- layer=2 filter=34 channel=30
    13, -1, 7, 22, -20, -21, 31, -17, -24,
    -- layer=2 filter=34 channel=31
    -9, 4, -23, -12, -19, -20, 42, -32, -25,
    -- layer=2 filter=34 channel=32
    0, 3, -3, 11, 6, -9, 19, 21, -26,
    -- layer=2 filter=34 channel=33
    11, 26, 65, 20, 16, 71, 29, 44, 59,
    -- layer=2 filter=34 channel=34
    -6, 4, 24, -15, -23, -20, -51, -20, -34,
    -- layer=2 filter=34 channel=35
    -3, -29, -26, -21, 0, -1, -13, 11, 46,
    -- layer=2 filter=34 channel=36
    7, 0, -18, 14, 5, -2, 33, -11, -41,
    -- layer=2 filter=34 channel=37
    -59, 6, 0, 11, 31, 10, 27, 45, -7,
    -- layer=2 filter=34 channel=38
    -31, 7, 12, -46, 24, 13, -42, -16, -24,
    -- layer=2 filter=34 channel=39
    37, -13, -9, 22, -25, -29, 38, -43, -37,
    -- layer=2 filter=34 channel=40
    -11, -18, 11, 16, -14, -13, 18, 20, 17,
    -- layer=2 filter=34 channel=41
    45, -3, -6, 9, -47, -24, -18, 5, -49,
    -- layer=2 filter=34 channel=42
    -34, 4, -1, -30, -38, -38, -46, 8, -13,
    -- layer=2 filter=34 channel=43
    26, 3, 19, 4, -14, 24, -15, -13, -70,
    -- layer=2 filter=34 channel=44
    2, 31, 22, -24, 17, 17, -29, 10, -25,
    -- layer=2 filter=34 channel=45
    -1, -8, -13, 0, 17, 6, -26, 5, 21,
    -- layer=2 filter=34 channel=46
    1, -15, -6, -10, -49, -25, 27, -29, -50,
    -- layer=2 filter=34 channel=47
    -5, -7, -6, 8, -11, 6, 15, 9, -11,
    -- layer=2 filter=34 channel=48
    7, -33, 3, 42, 35, 26, -8, 25, 24,
    -- layer=2 filter=34 channel=49
    -9, -8, -3, -5, -22, -18, -15, -12, -42,
    -- layer=2 filter=34 channel=50
    -15, -7, 6, 13, -2, -26, -9, 0, 0,
    -- layer=2 filter=34 channel=51
    2, 4, -3, 3, -9, 1, 7, -14, -11,
    -- layer=2 filter=34 channel=52
    -31, 7, 9, 5, 14, 14, 31, -8, 10,
    -- layer=2 filter=34 channel=53
    -90, 19, 21, -4, 31, 8, -13, 23, 11,
    -- layer=2 filter=34 channel=54
    6, -17, -20, 8, -19, -52, 32, -25, -49,
    -- layer=2 filter=34 channel=55
    10, 15, 5, -11, -3, -9, -9, 4, -5,
    -- layer=2 filter=34 channel=56
    -4, 14, 10, -53, 0, 44, -27, -35, 0,
    -- layer=2 filter=34 channel=57
    12, -19, -6, -42, -25, -15, 0, -29, -51,
    -- layer=2 filter=34 channel=58
    15, -15, 11, 10, -17, -8, 35, -16, 11,
    -- layer=2 filter=34 channel=59
    11, 6, 4, 12, 10, -1, -6, -15, -14,
    -- layer=2 filter=34 channel=60
    1, -11, 2, -23, 32, -11, -38, -10, -44,
    -- layer=2 filter=34 channel=61
    12, 17, -5, 3, 6, 7, 5, 14, 12,
    -- layer=2 filter=34 channel=62
    12, -27, -45, 56, -27, -33, 46, 45, -53,
    -- layer=2 filter=34 channel=63
    11, 31, 44, 44, -6, 5, -5, 43, -7,
    -- layer=2 filter=35 channel=0
    -4, 2, -31, 16, 34, -28, 1, 16, -31,
    -- layer=2 filter=35 channel=1
    -13, -8, -1, 13, 18, 20, 33, 3, 13,
    -- layer=2 filter=35 channel=2
    3, 2, 19, 23, 10, -26, 10, 34, -20,
    -- layer=2 filter=35 channel=3
    2, -6, 4, 8, 8, -2, -14, -5, -3,
    -- layer=2 filter=35 channel=4
    33, 45, 5, -44, -23, 7, -50, -38, -22,
    -- layer=2 filter=35 channel=5
    1, 0, -10, 22, -12, 12, 17, -28, -15,
    -- layer=2 filter=35 channel=6
    31, 34, 36, 10, -27, 11, -38, -31, -5,
    -- layer=2 filter=35 channel=7
    -39, -32, 9, -37, -29, 2, -45, -11, -45,
    -- layer=2 filter=35 channel=8
    3, -42, 9, 50, 5, 20, 30, 5, 8,
    -- layer=2 filter=35 channel=9
    -27, -30, -33, 8, 26, 22, 24, 44, 29,
    -- layer=2 filter=35 channel=10
    16, 6, 7, 5, -4, 17, 8, 2, -15,
    -- layer=2 filter=35 channel=11
    -34, -34, -26, 22, 11, -2, 12, 1, -2,
    -- layer=2 filter=35 channel=12
    2, -14, 18, -8, -2, -2, 13, -12, 16,
    -- layer=2 filter=35 channel=13
    9, -19, -9, 29, 16, -18, 23, 22, -18,
    -- layer=2 filter=35 channel=14
    4, -8, -4, 8, 13, -15, 25, 11, 1,
    -- layer=2 filter=35 channel=15
    -22, -13, -22, -1, 14, -9, 2, 9, 5,
    -- layer=2 filter=35 channel=16
    -5, -15, -5, 4, 10, -14, -1, -1, 2,
    -- layer=2 filter=35 channel=17
    -6, -5, -27, 0, 15, 31, 1, 34, 26,
    -- layer=2 filter=35 channel=18
    14, 23, 16, 48, -8, -12, 49, 21, 9,
    -- layer=2 filter=35 channel=19
    -18, 3, 2, -20, -3, -7, 4, 9, -6,
    -- layer=2 filter=35 channel=20
    -8, -7, -16, 31, 14, -21, 5, -14, 17,
    -- layer=2 filter=35 channel=21
    34, 44, 39, 2, -13, -5, -17, -25, -3,
    -- layer=2 filter=35 channel=22
    8, 14, 4, 11, -16, -5, -4, 1, 6,
    -- layer=2 filter=35 channel=23
    4, 18, 28, -22, -21, 11, -33, -7, 0,
    -- layer=2 filter=35 channel=24
    17, -11, 10, 7, -11, 11, -13, 0, -13,
    -- layer=2 filter=35 channel=25
    -12, 6, -6, 13, -4, -1, -13, -7, 15,
    -- layer=2 filter=35 channel=26
    -14, -15, -1, 7, 0, 3, -10, 12, -6,
    -- layer=2 filter=35 channel=27
    -4, 4, -9, -29, -5, 6, -28, -2, 11,
    -- layer=2 filter=35 channel=28
    8, 4, 19, 8, 24, 21, -22, 16, 0,
    -- layer=2 filter=35 channel=29
    -56, -24, -19, 8, -15, -6, 26, 24, -2,
    -- layer=2 filter=35 channel=30
    -5, 1, -6, 21, 0, -18, 8, -3, 24,
    -- layer=2 filter=35 channel=31
    -43, -56, -40, -10, 0, -3, 22, 18, -5,
    -- layer=2 filter=35 channel=32
    -5, -9, -10, 16, 9, 4, 14, 2, -9,
    -- layer=2 filter=35 channel=33
    -1, 16, -26, -29, 0, -6, -31, -11, 5,
    -- layer=2 filter=35 channel=34
    30, 10, 3, -9, -16, 14, -28, -23, 13,
    -- layer=2 filter=35 channel=35
    34, -10, -1, 14, 19, -6, -2, 20, 16,
    -- layer=2 filter=35 channel=36
    25, 43, 18, 17, 23, -7, 23, 1, 13,
    -- layer=2 filter=35 channel=37
    18, 20, 10, -22, -10, -2, -19, -28, 9,
    -- layer=2 filter=35 channel=38
    39, 30, 30, -35, -25, -1, -46, -35, -13,
    -- layer=2 filter=35 channel=39
    -57, -54, -35, 4, -3, -13, 14, 38, 13,
    -- layer=2 filter=35 channel=40
    -40, -49, -16, -15, -17, 3, 14, 4, -4,
    -- layer=2 filter=35 channel=41
    -35, -70, -8, -4, -6, 0, 7, 26, 2,
    -- layer=2 filter=35 channel=42
    35, 7, -21, 67, 59, 36, 58, 57, 38,
    -- layer=2 filter=35 channel=43
    9, -2, -7, 4, 18, -12, -6, 46, 24,
    -- layer=2 filter=35 channel=44
    30, 44, 3, -6, 11, -4, -39, 0, -12,
    -- layer=2 filter=35 channel=45
    19, -10, 10, 14, 13, 15, 1, 0, 18,
    -- layer=2 filter=35 channel=46
    -63, -14, 8, 21, 8, -21, 7, 6, -20,
    -- layer=2 filter=35 channel=47
    17, 0, -8, 15, -6, 0, 6, 0, 10,
    -- layer=2 filter=35 channel=48
    -5, -17, 19, -5, 1, 3, -7, 12, 14,
    -- layer=2 filter=35 channel=49
    35, 32, 15, 6, 2, -10, -13, -25, 5,
    -- layer=2 filter=35 channel=50
    11, 14, -4, 6, 11, -10, 10, 9, 22,
    -- layer=2 filter=35 channel=51
    -6, -4, 3, -13, -15, 13, -10, 3, -12,
    -- layer=2 filter=35 channel=52
    -3, -6, 3, -24, 8, 9, -21, 9, 12,
    -- layer=2 filter=35 channel=53
    -22, -23, 6, -45, -35, 5, -58, -32, -9,
    -- layer=2 filter=35 channel=54
    -7, 1, -6, 10, 1, -13, 10, 30, 8,
    -- layer=2 filter=35 channel=55
    -8, 3, -11, 11, 14, 2, -14, -1, 6,
    -- layer=2 filter=35 channel=56
    36, 39, 19, -7, -5, 8, -28, -13, -32,
    -- layer=2 filter=35 channel=57
    -9, 6, 18, 15, 21, 17, 22, 9, 38,
    -- layer=2 filter=35 channel=58
    -32, -1, -3, 15, -12, -11, 18, -1, -2,
    -- layer=2 filter=35 channel=59
    -2, 7, 9, 0, 5, 8, 15, 9, 19,
    -- layer=2 filter=35 channel=60
    18, 27, 17, -5, 29, 34, 19, 5, 42,
    -- layer=2 filter=35 channel=61
    -5, -16, -5, 12, -3, 14, 14, 20, 5,
    -- layer=2 filter=35 channel=62
    10, -21, 16, -24, -8, -9, -29, -42, 2,
    -- layer=2 filter=35 channel=63
    -28, -21, 19, -48, -53, -32, -24, -18, -40,
    -- layer=2 filter=36 channel=0
    11, 15, 0, -5, -11, 3, 10, -21, -1,
    -- layer=2 filter=36 channel=1
    8, 0, -3, -2, 6, 28, 15, 26, 4,
    -- layer=2 filter=36 channel=2
    -61, -34, 11, -13, -3, 13, -7, -2, 10,
    -- layer=2 filter=36 channel=3
    5, -17, -16, 0, 8, 21, -2, -1, 5,
    -- layer=2 filter=36 channel=4
    -11, -18, 15, -5, 1, 8, 27, -2, 6,
    -- layer=2 filter=36 channel=5
    0, 4, 7, 2, 6, 1, 15, 14, 22,
    -- layer=2 filter=36 channel=6
    2, -35, 5, -7, -5, -11, 30, 19, 30,
    -- layer=2 filter=36 channel=7
    -85, -38, -47, -83, -45, -2, -81, -25, 42,
    -- layer=2 filter=36 channel=8
    14, -22, 0, -13, -10, 16, -7, -7, 6,
    -- layer=2 filter=36 channel=9
    -11, -16, -15, 25, 8, -24, 20, -30, 9,
    -- layer=2 filter=36 channel=10
    -10, -5, -12, 14, 6, -12, -5, -16, 0,
    -- layer=2 filter=36 channel=11
    -18, -8, -20, 18, 6, 15, -8, 8, 8,
    -- layer=2 filter=36 channel=12
    -1, -6, -5, -15, 0, 6, 11, 15, -16,
    -- layer=2 filter=36 channel=13
    13, 16, -15, 20, -20, -23, 5, -28, -15,
    -- layer=2 filter=36 channel=14
    10, 5, -17, 15, 17, 10, 9, 22, 15,
    -- layer=2 filter=36 channel=15
    0, 5, 12, -11, 0, -8, 18, 0, 0,
    -- layer=2 filter=36 channel=16
    4, 8, -9, -13, 8, -11, 3, -12, -14,
    -- layer=2 filter=36 channel=17
    18, -1, 10, 0, 4, -1, -28, -25, 2,
    -- layer=2 filter=36 channel=18
    20, -6, 6, -8, -37, 6, -13, -4, -31,
    -- layer=2 filter=36 channel=19
    -20, 8, -5, 14, -11, -7, -10, 10, 3,
    -- layer=2 filter=36 channel=20
    -2, 1, -5, -1, -3, -15, 7, -8, 0,
    -- layer=2 filter=36 channel=21
    15, -2, -26, 37, 23, -9, 31, 5, 7,
    -- layer=2 filter=36 channel=22
    0, -6, -17, 2, 9, 12, -10, 19, 19,
    -- layer=2 filter=36 channel=23
    2, 1, -12, 26, 23, -11, 31, -8, -20,
    -- layer=2 filter=36 channel=24
    8, -3, -2, 9, 6, 7, 9, -23, -6,
    -- layer=2 filter=36 channel=25
    -6, 6, 8, 6, 9, 2, 9, -7, 16,
    -- layer=2 filter=36 channel=26
    14, -14, -6, 7, 2, -5, -14, -12, -9,
    -- layer=2 filter=36 channel=27
    -14, -16, -5, 25, -5, -8, 6, 7, 8,
    -- layer=2 filter=36 channel=28
    -45, -18, -20, -7, -17, -47, -26, 7, -20,
    -- layer=2 filter=36 channel=29
    10, 31, -8, 42, 27, 24, 6, 21, 17,
    -- layer=2 filter=36 channel=30
    17, 18, -2, 7, -5, -16, -7, -6, 12,
    -- layer=2 filter=36 channel=31
    56, 19, -15, 52, 24, -5, 9, 0, 2,
    -- layer=2 filter=36 channel=32
    -7, -6, -2, 8, 11, 18, -15, 10, 7,
    -- layer=2 filter=36 channel=33
    11, -7, 24, 4, 6, -12, -68, -30, 12,
    -- layer=2 filter=36 channel=34
    3, 9, 0, 13, -15, -20, 4, -18, 11,
    -- layer=2 filter=36 channel=35
    27, 6, -14, -1, 5, -7, -1, -14, 8,
    -- layer=2 filter=36 channel=36
    10, 29, 20, 7, -3, -5, 20, 4, 5,
    -- layer=2 filter=36 channel=37
    7, 14, 42, -3, 32, 37, 1, 13, 38,
    -- layer=2 filter=36 channel=38
    11, -25, -4, -1, -1, -16, 31, 13, 0,
    -- layer=2 filter=36 channel=39
    19, 1, -41, 36, -9, -54, 17, -5, 2,
    -- layer=2 filter=36 channel=40
    -10, -7, -13, 10, 17, 19, -15, -12, 2,
    -- layer=2 filter=36 channel=41
    26, 19, 3, 54, 33, 18, 15, -27, -10,
    -- layer=2 filter=36 channel=42
    2, -31, -22, 2, -14, 38, 12, -29, 28,
    -- layer=2 filter=36 channel=43
    35, -1, -13, -8, -2, -37, -1, -24, -21,
    -- layer=2 filter=36 channel=44
    -8, -1, -43, -14, 1, -27, 12, 2, 24,
    -- layer=2 filter=36 channel=45
    -4, -9, -3, 17, -14, -29, -9, 24, -2,
    -- layer=2 filter=36 channel=46
    -32, -21, -29, 26, 14, -20, -10, -45, -13,
    -- layer=2 filter=36 channel=47
    -7, -5, -1, 13, -10, -14, -14, 2, 0,
    -- layer=2 filter=36 channel=48
    -15, -24, -7, -1, -7, -26, 1, 14, 20,
    -- layer=2 filter=36 channel=49
    0, 14, -18, 33, 18, -3, 24, 5, -18,
    -- layer=2 filter=36 channel=50
    -1, -25, 4, -5, -6, 15, -7, -2, 5,
    -- layer=2 filter=36 channel=51
    18, -4, 11, -2, 18, -9, -10, -11, -10,
    -- layer=2 filter=36 channel=52
    -20, -5, -48, -1, 15, -34, 26, 1, -9,
    -- layer=2 filter=36 channel=53
    8, -11, -15, -36, -2, 33, -15, 22, 21,
    -- layer=2 filter=36 channel=54
    29, 35, 15, 13, 13, -16, 19, 23, 13,
    -- layer=2 filter=36 channel=55
    6, 13, -18, -13, -15, 14, -9, 12, -15,
    -- layer=2 filter=36 channel=56
    12, -31, -25, 18, 3, -30, 17, 30, -7,
    -- layer=2 filter=36 channel=57
    11, 31, 11, 8, 0, -18, -27, -31, -15,
    -- layer=2 filter=36 channel=58
    -13, 0, 12, 14, -1, -14, 10, 1, 13,
    -- layer=2 filter=36 channel=59
    6, -5, 15, 0, 9, -15, 3, 0, -9,
    -- layer=2 filter=36 channel=60
    5, -7, -19, 24, 2, -20, -4, 11, -33,
    -- layer=2 filter=36 channel=61
    6, -6, -7, 16, -1, 6, 20, 0, 7,
    -- layer=2 filter=36 channel=62
    -3, 21, 51, -10, 75, 33, -42, 46, 61,
    -- layer=2 filter=36 channel=63
    -74, -27, -32, -68, -45, 10, -42, -53, 13,
    -- layer=2 filter=37 channel=0
    -18, 20, 26, 43, 20, 23, 3, 19, -7,
    -- layer=2 filter=37 channel=1
    25, 7, -3, 29, 9, -27, 14, -13, -36,
    -- layer=2 filter=37 channel=2
    -32, 29, 53, -16, 16, 14, 8, 14, 39,
    -- layer=2 filter=37 channel=3
    14, -4, 0, 1, 6, -20, -18, -5, -10,
    -- layer=2 filter=37 channel=4
    -19, -4, 8, -9, 22, 10, -41, 13, 28,
    -- layer=2 filter=37 channel=5
    18, 3, -13, 16, 12, 0, -8, -11, -32,
    -- layer=2 filter=37 channel=6
    5, -12, 32, -20, 24, -7, -23, 0, -7,
    -- layer=2 filter=37 channel=7
    24, 24, -2, 66, 40, 11, 4, 1, -27,
    -- layer=2 filter=37 channel=8
    -21, -38, -31, 0, -56, -38, -3, 27, -1,
    -- layer=2 filter=37 channel=9
    41, -31, -92, 15, -11, -20, -19, -32, -26,
    -- layer=2 filter=37 channel=10
    -16, -16, -1, 5, 1, -16, -15, -7, 5,
    -- layer=2 filter=37 channel=11
    25, 6, 16, 18, -10, -21, 14, -12, -35,
    -- layer=2 filter=37 channel=12
    15, -2, -11, 9, -4, 5, 10, 10, -9,
    -- layer=2 filter=37 channel=13
    0, -15, -24, 10, -1, 9, 39, 25, 0,
    -- layer=2 filter=37 channel=14
    16, 2, -7, -7, 9, 0, 21, 8, 10,
    -- layer=2 filter=37 channel=15
    -3, 22, 23, -9, -10, -25, -20, -12, -9,
    -- layer=2 filter=37 channel=16
    2, -13, -24, -16, 2, -14, 2, 9, 1,
    -- layer=2 filter=37 channel=17
    -4, -16, -4, -14, 2, -2, -9, -12, -4,
    -- layer=2 filter=37 channel=18
    1, 11, 0, 1, -21, 26, 32, 24, 21,
    -- layer=2 filter=37 channel=19
    -3, -1, -20, -5, 0, 4, 8, -7, -4,
    -- layer=2 filter=37 channel=20
    24, 17, -2, -17, 24, 34, 13, 17, 10,
    -- layer=2 filter=37 channel=21
    -8, 6, 16, -12, 16, 0, -12, 8, 2,
    -- layer=2 filter=37 channel=22
    -12, 3, -10, 16, 6, 16, -12, -9, 0,
    -- layer=2 filter=37 channel=23
    -21, 9, -8, -8, 14, 13, -22, -20, -9,
    -- layer=2 filter=37 channel=24
    -9, -6, -3, -18, -3, 3, -6, -13, 15,
    -- layer=2 filter=37 channel=25
    -3, -18, -6, -3, 1, -1, -10, -1, 12,
    -- layer=2 filter=37 channel=26
    9, 8, 0, 4, 11, 3, -14, 6, -14,
    -- layer=2 filter=37 channel=27
    -2, -20, 4, -8, -13, -3, 3, 20, 1,
    -- layer=2 filter=37 channel=28
    -41, 34, 39, 3, 37, 34, 9, 9, 35,
    -- layer=2 filter=37 channel=29
    17, -7, -9, 4, 11, 5, -2, -6, -40,
    -- layer=2 filter=37 channel=30
    8, 11, 7, -8, -11, 12, 6, -37, -31,
    -- layer=2 filter=37 channel=31
    -24, -19, -9, -3, 15, 14, 21, -11, -8,
    -- layer=2 filter=37 channel=32
    9, -6, 4, -10, 9, 0, -14, -6, -23,
    -- layer=2 filter=37 channel=33
    -24, -23, 15, 18, 19, 41, 11, 30, 65,
    -- layer=2 filter=37 channel=34
    -13, 2, 13, -21, 0, -7, -27, 16, 10,
    -- layer=2 filter=37 channel=35
    -3, -8, 9, -23, 2, 18, 41, 12, 2,
    -- layer=2 filter=37 channel=36
    18, 35, 1, 21, -14, -3, -29, -8, -16,
    -- layer=2 filter=37 channel=37
    0, 25, -4, -3, 6, -40, 0, 16, 19,
    -- layer=2 filter=37 channel=38
    11, 8, 26, -27, 6, 25, -39, 9, -6,
    -- layer=2 filter=37 channel=39
    13, 14, 11, 12, 38, -1, -24, -8, -17,
    -- layer=2 filter=37 channel=40
    -7, -24, -28, -9, 0, 9, 30, 52, 8,
    -- layer=2 filter=37 channel=41
    5, -12, -30, -7, 19, 7, -15, -7, -33,
    -- layer=2 filter=37 channel=42
    -35, -38, 8, -33, -44, -9, -49, 37, 16,
    -- layer=2 filter=37 channel=43
    -26, 7, 12, 22, 5, -7, -10, -1, -16,
    -- layer=2 filter=37 channel=44
    -13, -6, 14, 9, 8, 9, 2, 7, -16,
    -- layer=2 filter=37 channel=45
    -12, -7, -18, 4, -21, 0, 6, 6, 13,
    -- layer=2 filter=37 channel=46
    34, -17, -45, 27, 41, -10, -23, 19, -14,
    -- layer=2 filter=37 channel=47
    16, -1, -11, 12, 19, -6, -11, 4, 7,
    -- layer=2 filter=37 channel=48
    -14, 17, 22, 21, 5, -13, 12, -11, 3,
    -- layer=2 filter=37 channel=49
    -24, -7, -3, -3, 13, 7, -20, -23, -26,
    -- layer=2 filter=37 channel=50
    -4, -9, -3, 7, 1, -6, 12, 24, 9,
    -- layer=2 filter=37 channel=51
    12, 8, 13, 2, 3, -3, 6, -4, 17,
    -- layer=2 filter=37 channel=52
    25, -30, -28, 8, 13, -9, -7, 19, 52,
    -- layer=2 filter=37 channel=53
    -5, 17, 12, -11, -2, -7, -29, 8, 16,
    -- layer=2 filter=37 channel=54
    -17, -7, 11, -25, -15, -31, -32, -15, -35,
    -- layer=2 filter=37 channel=55
    6, 8, -13, 1, 0, 14, -7, 3, 12,
    -- layer=2 filter=37 channel=56
    -11, -3, 29, -25, 10, 5, -37, -4, -3,
    -- layer=2 filter=37 channel=57
    -8, -13, 12, 5, 14, -3, 4, -4, -17,
    -- layer=2 filter=37 channel=58
    21, 7, -26, 0, -2, -25, -7, -17, -26,
    -- layer=2 filter=37 channel=59
    8, 3, 6, 9, 12, 5, 15, -6, -14,
    -- layer=2 filter=37 channel=60
    22, 2, 15, 4, 2, 24, 1, -3, 5,
    -- layer=2 filter=37 channel=61
    9, -15, 12, 13, 5, 15, -4, 23, -6,
    -- layer=2 filter=37 channel=62
    -4, -73, -24, -5, -23, -43, -6, -9, -22,
    -- layer=2 filter=37 channel=63
    45, 38, 9, -4, 25, 4, -9, -5, 20,
    -- layer=2 filter=38 channel=0
    -19, -22, -24, -19, 13, -14, 0, -25, -34,
    -- layer=2 filter=38 channel=1
    -12, -16, -7, -22, -20, -14, -9, 5, -23,
    -- layer=2 filter=38 channel=2
    -36, -11, 25, 5, -15, 15, 10, -28, -3,
    -- layer=2 filter=38 channel=3
    12, 2, 6, 4, 7, -11, -4, 16, -18,
    -- layer=2 filter=38 channel=4
    11, 15, -10, -15, 2, 13, -4, 1, -6,
    -- layer=2 filter=38 channel=5
    -25, -4, 0, -30, -6, -15, 5, 5, 2,
    -- layer=2 filter=38 channel=6
    9, -13, -14, 12, -2, -16, 13, -5, 1,
    -- layer=2 filter=38 channel=7
    -19, -13, -3, -20, -34, -2, -12, -1, -9,
    -- layer=2 filter=38 channel=8
    11, -17, 13, -19, -15, 9, 0, -12, 19,
    -- layer=2 filter=38 channel=9
    -7, 14, -10, -11, -22, 9, 5, 3, -6,
    -- layer=2 filter=38 channel=10
    12, -16, 7, 1, -3, -4, -9, 2, -13,
    -- layer=2 filter=38 channel=11
    -16, -9, -27, -9, 1, -17, -11, -14, -6,
    -- layer=2 filter=38 channel=12
    14, 6, 20, 19, -7, 18, 18, -21, -11,
    -- layer=2 filter=38 channel=13
    -33, 4, 6, -7, 4, -27, -22, 12, -14,
    -- layer=2 filter=38 channel=14
    -18, 0, -6, 8, -9, -25, -3, -11, 4,
    -- layer=2 filter=38 channel=15
    -18, 2, -22, -9, 11, 7, 8, -22, 10,
    -- layer=2 filter=38 channel=16
    3, 1, -14, 2, 9, 4, 0, 3, 2,
    -- layer=2 filter=38 channel=17
    -14, -25, -13, -17, -13, -2, 3, -17, -3,
    -- layer=2 filter=38 channel=18
    -33, 7, 9, -1, -18, 9, -12, -5, 12,
    -- layer=2 filter=38 channel=19
    -3, -22, 4, -2, -24, -14, -2, 16, 11,
    -- layer=2 filter=38 channel=20
    0, -15, -24, -2, -28, -1, 9, -14, -18,
    -- layer=2 filter=38 channel=21
    4, -16, -1, -15, -6, -3, -10, -12, -19,
    -- layer=2 filter=38 channel=22
    18, -3, -3, -11, 15, 6, 17, 5, -8,
    -- layer=2 filter=38 channel=23
    11, -27, 0, -7, -9, -16, 5, 7, 7,
    -- layer=2 filter=38 channel=24
    12, -8, -3, 6, 7, -12, -18, 7, 4,
    -- layer=2 filter=38 channel=25
    14, -15, -6, 11, 3, 2, 3, 6, -4,
    -- layer=2 filter=38 channel=26
    5, -11, -16, 10, 19, -13, 11, 9, 11,
    -- layer=2 filter=38 channel=27
    16, 18, 0, 0, -10, 1, -11, -4, -7,
    -- layer=2 filter=38 channel=28
    -29, -11, 10, -2, 6, 5, 4, -14, -25,
    -- layer=2 filter=38 channel=29
    -17, -6, -18, -7, -12, 1, -14, -19, -7,
    -- layer=2 filter=38 channel=30
    1, -5, -3, -18, 12, -22, -13, -17, -17,
    -- layer=2 filter=38 channel=31
    -16, -16, 8, -14, -5, -21, -15, -31, 1,
    -- layer=2 filter=38 channel=32
    -5, -19, 6, -2, 11, 2, -15, 17, -4,
    -- layer=2 filter=38 channel=33
    -26, 3, -33, 15, 0, -29, 6, -25, 4,
    -- layer=2 filter=38 channel=34
    -21, -9, -18, -7, 13, 7, -3, 11, 6,
    -- layer=2 filter=38 channel=35
    -17, -16, -18, -2, -13, 1, -14, -9, 16,
    -- layer=2 filter=38 channel=36
    -14, -4, 0, 0, -8, 1, 4, 6, 15,
    -- layer=2 filter=38 channel=37
    11, -18, -3, -17, 0, 5, 9, -10, 1,
    -- layer=2 filter=38 channel=38
    5, 2, -15, -20, -15, 9, 8, 11, 0,
    -- layer=2 filter=38 channel=39
    -28, -19, -14, 0, -20, -19, -20, -12, -11,
    -- layer=2 filter=38 channel=40
    -23, 3, 8, -3, 5, -12, -14, -5, -6,
    -- layer=2 filter=38 channel=41
    -21, -28, -9, -25, -11, -22, -7, -3, -2,
    -- layer=2 filter=38 channel=42
    1, -18, -14, -30, -14, -17, -40, -3, -29,
    -- layer=2 filter=38 channel=43
    -18, 5, -20, -5, -8, -5, -18, -18, -5,
    -- layer=2 filter=38 channel=44
    10, 0, -17, -13, 3, 10, -18, -17, -4,
    -- layer=2 filter=38 channel=45
    -45, -7, 6, -16, 1, -11, -5, -23, 0,
    -- layer=2 filter=38 channel=46
    -32, -53, -14, 13, -15, 1, -24, -20, -3,
    -- layer=2 filter=38 channel=47
    16, -7, -11, 11, -10, 4, 12, -10, 9,
    -- layer=2 filter=38 channel=48
    -25, -29, 8, -30, -4, 0, -26, -10, -12,
    -- layer=2 filter=38 channel=49
    5, -15, 2, -11, 2, -6, -9, 10, 5,
    -- layer=2 filter=38 channel=50
    -1, -6, -3, -17, -1, 19, -4, 7, 13,
    -- layer=2 filter=38 channel=51
    1, -11, 1, -5, 16, -7, 12, 2, -5,
    -- layer=2 filter=38 channel=52
    -26, -27, -22, -19, -20, -24, -16, -3, -23,
    -- layer=2 filter=38 channel=53
    -13, -3, 3, 5, 4, 4, 10, -27, 8,
    -- layer=2 filter=38 channel=54
    14, -22, -5, -4, -18, 2, -4, 8, 7,
    -- layer=2 filter=38 channel=55
    7, -1, 5, -1, 1, 14, 11, -20, -6,
    -- layer=2 filter=38 channel=56
    -7, 12, -21, -2, -4, -9, -7, 0, -18,
    -- layer=2 filter=38 channel=57
    -12, 3, -10, -11, 6, 10, 7, 0, -4,
    -- layer=2 filter=38 channel=58
    -20, -6, -28, -19, -19, -13, -26, -3, 11,
    -- layer=2 filter=38 channel=59
    11, 4, -10, -3, 14, -6, 8, -17, 7,
    -- layer=2 filter=38 channel=60
    -15, 9, -7, 22, -5, -23, 10, -15, 8,
    -- layer=2 filter=38 channel=61
    4, -2, -15, -16, -1, 0, -2, 11, -10,
    -- layer=2 filter=38 channel=62
    -1, 4, -10, 6, -14, -1, 11, 4, -9,
    -- layer=2 filter=38 channel=63
    2, -15, -2, 0, -13, -15, -13, -27, -25,
    -- layer=2 filter=39 channel=0
    -5, 0, 1, 6, 24, -1, 53, 37, 1,
    -- layer=2 filter=39 channel=1
    -15, 12, 15, 8, 7, 6, -6, -7, 9,
    -- layer=2 filter=39 channel=2
    -6, 50, -8, -16, 31, 45, 17, 17, 37,
    -- layer=2 filter=39 channel=3
    -10, 3, -17, -17, -29, 0, 16, 12, 0,
    -- layer=2 filter=39 channel=4
    -2, -14, -31, 3, -7, -21, 29, 26, -6,
    -- layer=2 filter=39 channel=5
    -17, 2, 1, 8, -12, 2, 16, 33, 34,
    -- layer=2 filter=39 channel=6
    28, 14, -8, -4, 2, -21, -32, -28, -5,
    -- layer=2 filter=39 channel=7
    11, -18, -12, 0, -12, 3, 57, 13, 38,
    -- layer=2 filter=39 channel=8
    -65, -91, -71, -20, -60, -60, -42, -63, -53,
    -- layer=2 filter=39 channel=9
    -7, -20, -33, -44, -27, -13, 29, 52, 30,
    -- layer=2 filter=39 channel=10
    3, -1, -13, -6, -16, 10, -5, -16, 3,
    -- layer=2 filter=39 channel=11
    -8, -1, 36, -15, 19, 32, 22, 11, 38,
    -- layer=2 filter=39 channel=12
    -1, -10, -10, 9, 0, 12, -12, -9, -9,
    -- layer=2 filter=39 channel=13
    -44, -43, 0, -3, -38, -61, -21, -37, -37,
    -- layer=2 filter=39 channel=14
    -24, -22, -2, 18, 9, -4, 17, 10, -7,
    -- layer=2 filter=39 channel=15
    5, 7, -2, -14, 26, 5, 1, 9, 12,
    -- layer=2 filter=39 channel=16
    12, -18, 14, -13, -2, -15, 12, -18, 6,
    -- layer=2 filter=39 channel=17
    29, 0, 27, 11, 25, 36, -16, 0, 30,
    -- layer=2 filter=39 channel=18
    -74, -63, -36, -15, -73, -61, -15, -56, -51,
    -- layer=2 filter=39 channel=19
    7, -1, -1, -21, -14, -18, -9, 1, -13,
    -- layer=2 filter=39 channel=20
    -35, 4, 14, -10, -34, 2, 18, -6, 25,
    -- layer=2 filter=39 channel=21
    20, 21, -9, 5, -22, 0, -26, -4, -24,
    -- layer=2 filter=39 channel=22
    -15, 4, -10, 8, 3, -21, 15, 0, -4,
    -- layer=2 filter=39 channel=23
    4, 19, 0, 12, 13, 18, -27, -19, -12,
    -- layer=2 filter=39 channel=24
    -18, -1, 7, 17, 0, -2, 2, -25, -14,
    -- layer=2 filter=39 channel=25
    13, 16, -16, -4, 0, 0, -18, -17, -8,
    -- layer=2 filter=39 channel=26
    -5, 13, -11, 2, 4, 2, 8, 4, -10,
    -- layer=2 filter=39 channel=27
    11, -1, 26, 13, 11, 21, 11, 22, 24,
    -- layer=2 filter=39 channel=28
    -29, 5, 6, 16, 30, 33, 20, 30, 63,
    -- layer=2 filter=39 channel=29
    -4, 4, 6, -11, -10, 18, 20, -17, 34,
    -- layer=2 filter=39 channel=30
    4, 10, 16, -26, 14, 0, 0, -18, 16,
    -- layer=2 filter=39 channel=31
    0, 13, 17, 0, -11, -11, 0, -31, -34,
    -- layer=2 filter=39 channel=32
    -16, -4, 10, -6, 6, 8, 8, 11, 11,
    -- layer=2 filter=39 channel=33
    11, 32, -17, 34, 12, -16, 74, 75, 22,
    -- layer=2 filter=39 channel=34
    12, 14, 7, 2, 11, 25, -3, -4, -15,
    -- layer=2 filter=39 channel=35
    -41, -35, -21, -10, -23, -44, -12, -25, -7,
    -- layer=2 filter=39 channel=36
    -1, -11, -6, 5, 15, 17, 16, 27, 13,
    -- layer=2 filter=39 channel=37
    -3, 3, -22, 35, 8, -22, 18, -5, -2,
    -- layer=2 filter=39 channel=38
    3, 17, 3, 27, 9, -2, -22, -21, 0,
    -- layer=2 filter=39 channel=39
    24, 19, 14, -13, -12, 9, 25, 0, -23,
    -- layer=2 filter=39 channel=40
    -19, -32, -55, -6, -21, -41, 4, -17, -42,
    -- layer=2 filter=39 channel=41
    -1, -8, 6, 12, -20, -10, 6, -8, 4,
    -- layer=2 filter=39 channel=42
    -33, -57, -54, -2, 10, -17, -51, -49, -35,
    -- layer=2 filter=39 channel=43
    -3, 28, 7, 2, 33, 30, 0, -26, 17,
    -- layer=2 filter=39 channel=44
    9, 1, 16, 42, 22, 32, 28, 19, -2,
    -- layer=2 filter=39 channel=45
    -61, -44, 1, -13, -43, -30, 26, -23, -22,
    -- layer=2 filter=39 channel=46
    24, 25, 32, 21, 5, 24, -11, -2, -16,
    -- layer=2 filter=39 channel=47
    -7, 16, 15, -12, -5, 9, 9, -2, 7,
    -- layer=2 filter=39 channel=48
    -21, 11, 24, -10, 16, 6, 49, 21, 42,
    -- layer=2 filter=39 channel=49
    14, 40, 14, 21, 18, 27, -7, 10, 12,
    -- layer=2 filter=39 channel=50
    7, -2, 17, -11, -6, 17, 13, -14, -14,
    -- layer=2 filter=39 channel=51
    -11, -11, 8, 17, -11, 13, 4, 12, -8,
    -- layer=2 filter=39 channel=52
    -16, 7, 8, 17, 13, 34, 34, 19, 45,
    -- layer=2 filter=39 channel=53
    -14, -5, -35, 8, 1, -15, -4, 9, -26,
    -- layer=2 filter=39 channel=54
    16, 18, 10, 18, -2, 23, 9, -3, 14,
    -- layer=2 filter=39 channel=55
    10, 15, 3, 2, -12, -7, -12, -15, -2,
    -- layer=2 filter=39 channel=56
    23, 13, 13, 18, -3, 18, 22, -4, 12,
    -- layer=2 filter=39 channel=57
    22, 34, 12, 0, 29, 20, 18, 20, 4,
    -- layer=2 filter=39 channel=58
    -29, 11, 23, -8, 5, -2, -3, 23, 10,
    -- layer=2 filter=39 channel=59
    20, 8, -1, 0, -12, -17, -15, -1, -12,
    -- layer=2 filter=39 channel=60
    30, 26, 0, 36, 26, 7, -11, -14, -12,
    -- layer=2 filter=39 channel=61
    -18, -12, 17, -3, -2, -4, -1, 0, 1,
    -- layer=2 filter=39 channel=62
    37, 53, 24, 46, 17, 30, 16, 34, 1,
    -- layer=2 filter=39 channel=63
    -14, -31, -5, 12, -14, 18, 7, -10, 1,
    -- layer=2 filter=40 channel=0
    -16, -10, 5, 51, 3, 15, 49, -32, 4,
    -- layer=2 filter=40 channel=1
    27, -13, -15, 12, 7, -24, 25, -10, 4,
    -- layer=2 filter=40 channel=2
    4, -37, 5, -18, 37, 53, -3, -4, 28,
    -- layer=2 filter=40 channel=3
    -12, -20, 4, -25, -2, -16, 2, 9, -12,
    -- layer=2 filter=40 channel=4
    6, -27, -33, -17, 11, -31, 8, 6, -12,
    -- layer=2 filter=40 channel=5
    13, -10, -19, -30, 4, -15, 3, -13, -14,
    -- layer=2 filter=40 channel=6
    9, -10, 7, 8, -2, 21, -5, 14, 14,
    -- layer=2 filter=40 channel=7
    3, 35, 40, 1, 24, 14, -2, -6, 18,
    -- layer=2 filter=40 channel=8
    -32, -43, -9, -52, 1, 10, -32, 33, 46,
    -- layer=2 filter=40 channel=9
    16, -18, 25, 24, 39, 5, 13, 19, -25,
    -- layer=2 filter=40 channel=10
    13, 15, 8, -7, -12, -15, -10, -11, -15,
    -- layer=2 filter=40 channel=11
    5, 26, -15, 14, 11, -14, 36, 13, -10,
    -- layer=2 filter=40 channel=12
    -21, 4, 3, -5, -2, -4, 13, 5, 10,
    -- layer=2 filter=40 channel=13
    -45, -20, -15, -43, -13, 0, -16, 8, 20,
    -- layer=2 filter=40 channel=14
    7, -21, -22, 22, -9, 1, 0, 3, -15,
    -- layer=2 filter=40 channel=15
    5, 11, -15, 11, -1, -7, 3, -11, -16,
    -- layer=2 filter=40 channel=16
    -7, 13, 2, 10, 9, -8, 2, 16, -11,
    -- layer=2 filter=40 channel=17
    4, 10, 9, 23, 14, -9, 2, 12, 20,
    -- layer=2 filter=40 channel=18
    -49, -32, 9, -36, 9, -9, -21, -15, -8,
    -- layer=2 filter=40 channel=19
    1, 17, 19, -4, 28, -18, -4, 17, -8,
    -- layer=2 filter=40 channel=20
    -13, 0, 7, 0, 1, 6, -3, 13, 2,
    -- layer=2 filter=40 channel=21
    -9, 1, -4, 29, 13, -2, 33, 21, 26,
    -- layer=2 filter=40 channel=22
    2, 11, 2, -18, -13, -12, 0, -9, 5,
    -- layer=2 filter=40 channel=23
    -5, 6, 0, 14, -3, 20, 1, 20, 7,
    -- layer=2 filter=40 channel=24
    18, -7, -28, 16, -1, 3, -7, 7, 8,
    -- layer=2 filter=40 channel=25
    10, -9, 3, 11, 13, -12, -6, 1, -10,
    -- layer=2 filter=40 channel=26
    7, 14, -11, 14, -8, -17, -15, 6, -2,
    -- layer=2 filter=40 channel=27
    -2, 2, 4, -27, -18, 1, -19, -18, -23,
    -- layer=2 filter=40 channel=28
    -47, -43, -4, -36, -4, -3, -14, -40, -16,
    -- layer=2 filter=40 channel=29
    9, 15, -6, -18, 27, -6, -3, 5, 1,
    -- layer=2 filter=40 channel=30
    -6, 1, 15, 0, 3, -11, 17, -4, -9,
    -- layer=2 filter=40 channel=31
    -48, -11, -37, 42, 6, 31, 42, 29, 12,
    -- layer=2 filter=40 channel=32
    -10, -7, 4, -10, 3, -18, -19, -10, -1,
    -- layer=2 filter=40 channel=33
    22, 15, 9, 29, 16, 0, -12, -29, -57,
    -- layer=2 filter=40 channel=34
    5, 5, 6, -14, 8, -7, 22, 3, 0,
    -- layer=2 filter=40 channel=35
    -35, -4, -15, -24, -7, -20, -38, -11, 10,
    -- layer=2 filter=40 channel=36
    3, 4, 8, 24, 11, -10, 0, -9, -19,
    -- layer=2 filter=40 channel=37
    -2, -20, 3, 9, 15, -14, 5, 28, 16,
    -- layer=2 filter=40 channel=38
    6, 17, 2, -16, 8, 12, 13, 0, 17,
    -- layer=2 filter=40 channel=39
    20, 39, 24, -5, 10, -4, 29, 17, 1,
    -- layer=2 filter=40 channel=40
    -16, -19, -23, -17, 30, -6, 2, 28, 2,
    -- layer=2 filter=40 channel=41
    -29, -18, -8, 2, -7, 7, 45, 1, 18,
    -- layer=2 filter=40 channel=42
    -20, -34, -18, -29, -1, 49, -19, 31, 68,
    -- layer=2 filter=40 channel=43
    -10, 10, 10, 22, 0, 34, 12, 15, 6,
    -- layer=2 filter=40 channel=44
    22, 10, -6, 42, 3, -5, 26, 27, 20,
    -- layer=2 filter=40 channel=45
    -81, -27, -3, -37, -5, -31, -36, -33, -3,
    -- layer=2 filter=40 channel=46
    2, 35, 0, -3, 25, -10, 15, 1, 9,
    -- layer=2 filter=40 channel=47
    -3, 8, -5, -8, 11, -19, 9, 0, 14,
    -- layer=2 filter=40 channel=48
    -22, -34, -32, -9, -8, -35, 2, -47, -18,
    -- layer=2 filter=40 channel=49
    0, 0, 13, 2, -13, 13, 34, -10, 16,
    -- layer=2 filter=40 channel=50
    13, 18, 13, 3, 6, 6, 6, -8, -11,
    -- layer=2 filter=40 channel=51
    8, -9, -14, -9, 3, 1, 0, 7, -11,
    -- layer=2 filter=40 channel=52
    12, -59, -10, -64, 2, -55, -68, 23, -37,
    -- layer=2 filter=40 channel=53
    -24, -10, 12, 6, 9, 10, -10, 20, 24,
    -- layer=2 filter=40 channel=54
    -10, 24, 24, -8, 8, -19, 12, 4, -4,
    -- layer=2 filter=40 channel=55
    7, -6, -14, -9, 1, -17, -4, 1, -4,
    -- layer=2 filter=40 channel=56
    -9, 10, 1, -1, -22, 9, 31, 10, 1,
    -- layer=2 filter=40 channel=57
    -13, 15, 12, 21, 1, -1, 22, 8, 20,
    -- layer=2 filter=40 channel=58
    6, -3, -11, 8, 14, -21, -17, 0, -6,
    -- layer=2 filter=40 channel=59
    -10, -11, -2, -20, 7, -2, 2, -16, -16,
    -- layer=2 filter=40 channel=60
    -15, 8, 10, -12, -21, -24, 18, 7, -4,
    -- layer=2 filter=40 channel=61
    11, 1, -18, -18, -4, -16, 13, -2, -15,
    -- layer=2 filter=40 channel=62
    62, 39, 29, 17, 17, -14, 54, 50, -3,
    -- layer=2 filter=40 channel=63
    -9, -11, 17, -33, 2, 18, -34, -13, 20,
    -- layer=2 filter=41 channel=0
    -54, -65, -91, -7, -66, -98, -81, -24, -81,
    -- layer=2 filter=41 channel=1
    -3, -5, -23, 5, 14, 0, -4, -12, 0,
    -- layer=2 filter=41 channel=2
    -34, -68, -40, -16, -70, -55, 2, -27, -39,
    -- layer=2 filter=41 channel=3
    20, 3, 0, 9, 18, 1, 5, -4, 5,
    -- layer=2 filter=41 channel=4
    -22, -6, 7, -22, 7, 2, 23, 16, -6,
    -- layer=2 filter=41 channel=5
    4, -13, -11, -18, -2, 10, -11, 17, 20,
    -- layer=2 filter=41 channel=6
    6, 26, 19, -5, 9, 18, -18, 12, 15,
    -- layer=2 filter=41 channel=7
    1, 43, 11, -18, 13, 19, -17, 13, 1,
    -- layer=2 filter=41 channel=8
    -19, 15, 19, -19, 11, 19, 16, -8, 14,
    -- layer=2 filter=41 channel=9
    8, 9, 44, 35, 46, 33, 26, 6, 17,
    -- layer=2 filter=41 channel=10
    -15, -14, -17, 14, -13, 9, -8, 10, 18,
    -- layer=2 filter=41 channel=11
    13, -1, -17, -1, 27, -6, -18, -6, 34,
    -- layer=2 filter=41 channel=12
    -9, 3, 7, 5, -1, -6, 0, 7, 13,
    -- layer=2 filter=41 channel=13
    -9, -1, -18, 8, -10, -20, 18, 13, 14,
    -- layer=2 filter=41 channel=14
    39, 17, -8, -4, 13, -24, -10, -14, 13,
    -- layer=2 filter=41 channel=15
    -14, -19, -13, 11, 17, 17, -3, -9, 0,
    -- layer=2 filter=41 channel=16
    -10, -15, -5, 5, -7, -2, 9, 13, 11,
    -- layer=2 filter=41 channel=17
    15, 9, -21, 14, 12, 0, -17, 1, 6,
    -- layer=2 filter=41 channel=18
    7, 13, -11, -25, -29, 0, -8, 8, -5,
    -- layer=2 filter=41 channel=19
    -12, -7, 18, -9, -6, -5, -17, -3, 16,
    -- layer=2 filter=41 channel=20
    1, -7, -1, 4, -14, -22, 7, 7, -1,
    -- layer=2 filter=41 channel=21
    14, 1, 24, -8, 4, -10, 16, -24, 2,
    -- layer=2 filter=41 channel=22
    0, 5, 11, 7, -9, 1, -12, -7, -5,
    -- layer=2 filter=41 channel=23
    29, -5, 12, -13, 17, 0, 7, 11, -17,
    -- layer=2 filter=41 channel=24
    -5, 5, -4, -12, 8, 0, 5, -1, -1,
    -- layer=2 filter=41 channel=25
    -8, 3, 17, 3, 0, 13, 0, 14, 12,
    -- layer=2 filter=41 channel=26
    -8, 11, -5, 14, -13, 11, -13, -7, 3,
    -- layer=2 filter=41 channel=27
    12, 13, 17, 12, 7, 5, 30, -2, 8,
    -- layer=2 filter=41 channel=28
    -26, -49, -73, -6, -67, -56, -29, -10, -67,
    -- layer=2 filter=41 channel=29
    27, 16, 2, -3, 1, -22, -14, -21, -17,
    -- layer=2 filter=41 channel=30
    0, 5, -2, 12, 17, 11, 0, 8, 4,
    -- layer=2 filter=41 channel=31
    16, 12, -11, 33, -15, -33, -4, 3, 7,
    -- layer=2 filter=41 channel=32
    -9, -5, -9, 5, -9, 4, 4, -3, -7,
    -- layer=2 filter=41 channel=33
    36, 37, 0, 32, 34, 16, 1, 45, 28,
    -- layer=2 filter=41 channel=34
    19, 0, 8, 8, -1, 33, -3, 4, 1,
    -- layer=2 filter=41 channel=35
    18, 33, 2, -2, -3, -6, -2, 12, 3,
    -- layer=2 filter=41 channel=36
    -6, -1, -3, -9, 15, 10, -4, 16, 32,
    -- layer=2 filter=41 channel=37
    -4, -3, 35, 13, 29, 45, 17, 12, 25,
    -- layer=2 filter=41 channel=38
    19, -1, 13, -11, 11, 21, -9, 17, 1,
    -- layer=2 filter=41 channel=39
    5, 6, 12, 5, 17, 19, -6, -11, 42,
    -- layer=2 filter=41 channel=40
    -5, 1, -12, 4, 0, 20, 29, 11, 38,
    -- layer=2 filter=41 channel=41
    -3, -6, -21, 2, -6, -29, -15, 17, 11,
    -- layer=2 filter=41 channel=42
    -46, -7, 7, -32, -4, -10, 19, -25, -9,
    -- layer=2 filter=41 channel=43
    1, -13, -18, 20, 5, -11, -6, -23, 6,
    -- layer=2 filter=41 channel=44
    9, -16, -4, -6, -5, 10, 1, 5, 10,
    -- layer=2 filter=41 channel=45
    -1, 40, 5, -6, -30, -26, -16, -1, -9,
    -- layer=2 filter=41 channel=46
    -16, -8, 24, 12, 11, 48, -38, 11, 49,
    -- layer=2 filter=41 channel=47
    -7, 0, -5, 6, -4, -12, -3, -11, -10,
    -- layer=2 filter=41 channel=48
    -50, -46, -47, -18, -37, -27, -45, -36, -45,
    -- layer=2 filter=41 channel=49
    18, 11, 16, 0, -8, 8, -11, 11, -10,
    -- layer=2 filter=41 channel=50
    -9, -2, 8, -1, -3, -19, 2, 5, -5,
    -- layer=2 filter=41 channel=51
    4, 16, 9, 0, 9, 12, -1, 7, -17,
    -- layer=2 filter=41 channel=52
    -8, -7, 9, 32, 6, 2, 32, 32, 46,
    -- layer=2 filter=41 channel=53
    7, -1, 11, 5, -6, 18, 20, 24, 14,
    -- layer=2 filter=41 channel=54
    5, 16, 24, 20, 12, 5, -9, 3, 22,
    -- layer=2 filter=41 channel=55
    -6, 9, 8, -8, 1, -5, -12, -16, 10,
    -- layer=2 filter=41 channel=56
    3, 12, 11, -5, -7, 17, -4, 2, 0,
    -- layer=2 filter=41 channel=57
    13, -5, 14, 9, 5, 0, 7, 1, 23,
    -- layer=2 filter=41 channel=58
    -31, -25, -9, -14, -11, -13, -9, 0, 8,
    -- layer=2 filter=41 channel=59
    12, -16, -18, 3, 2, 10, -3, 5, 8,
    -- layer=2 filter=41 channel=60
    5, 3, 0, 7, -6, -20, 23, -26, -21,
    -- layer=2 filter=41 channel=61
    14, 10, 18, 2, 1, -8, -14, 13, -17,
    -- layer=2 filter=41 channel=62
    15, 13, 20, -7, -8, 17, -16, 37, 8,
    -- layer=2 filter=41 channel=63
    0, 38, 23, -8, 8, 34, -4, 23, 28,
    -- layer=2 filter=42 channel=0
    11, 11, -1, -23, 16, 24, -19, -1, -2,
    -- layer=2 filter=42 channel=1
    16, 18, 4, 46, -6, -47, 13, -11, -2,
    -- layer=2 filter=42 channel=2
    17, -17, 23, -31, 12, 32, -28, -18, -10,
    -- layer=2 filter=42 channel=3
    0, -17, 0, 0, -17, -9, 15, -8, 10,
    -- layer=2 filter=42 channel=4
    19, 10, 4, 27, 5, 14, 20, -8, -2,
    -- layer=2 filter=42 channel=5
    34, 31, 19, 0, 13, -23, -18, -3, -7,
    -- layer=2 filter=42 channel=6
    -20, -9, -9, 7, 6, 0, 5, -3, -22,
    -- layer=2 filter=42 channel=7
    -54, -23, 36, -43, 12, 45, -52, -26, 2,
    -- layer=2 filter=42 channel=8
    -15, 4, -12, 9, -33, 0, -17, 21, -14,
    -- layer=2 filter=42 channel=9
    -44, 22, -11, -41, 13, -1, -52, -60, -1,
    -- layer=2 filter=42 channel=10
    10, -12, 3, 5, -9, -11, -10, 8, 8,
    -- layer=2 filter=42 channel=11
    -9, 7, 0, -3, -24, 4, 3, -25, 12,
    -- layer=2 filter=42 channel=12
    -3, -4, -4, 17, -18, -12, -6, -5, -13,
    -- layer=2 filter=42 channel=13
    -8, 21, 26, -24, 7, 40, -39, -17, -10,
    -- layer=2 filter=42 channel=14
    18, -12, 6, 0, 5, 9, -4, 13, -11,
    -- layer=2 filter=42 channel=15
    29, 6, -1, 34, -26, -26, 18, 10, 14,
    -- layer=2 filter=42 channel=16
    7, -2, 12, -14, 14, -1, -15, -4, -3,
    -- layer=2 filter=42 channel=17
    -7, 0, -5, 22, -2, -18, 63, 16, 0,
    -- layer=2 filter=42 channel=18
    13, 24, 3, -15, 0, 30, -25, 14, 27,
    -- layer=2 filter=42 channel=19
    -29, -2, 3, 14, 12, 0, 16, 18, 20,
    -- layer=2 filter=42 channel=20
    -5, 9, 26, 0, 10, -12, -19, -1, -2,
    -- layer=2 filter=42 channel=21
    -14, -23, -17, 4, 9, 8, 41, 0, -21,
    -- layer=2 filter=42 channel=22
    13, -10, -12, -14, 4, 16, -16, 0, -6,
    -- layer=2 filter=42 channel=23
    -23, -18, 10, -4, 10, -8, 54, 4, -4,
    -- layer=2 filter=42 channel=24
    -10, -9, -14, 6, 7, 2, -18, 12, 4,
    -- layer=2 filter=42 channel=25
    4, -2, 5, 13, 7, 9, -7, -1, -8,
    -- layer=2 filter=42 channel=26
    8, 0, 13, 8, -16, 16, -3, 11, 11,
    -- layer=2 filter=42 channel=27
    2, 4, 27, -6, 11, 12, 14, 8, 21,
    -- layer=2 filter=42 channel=28
    0, 10, 13, -12, 14, 34, -35, -10, -42,
    -- layer=2 filter=42 channel=29
    0, 16, 9, -9, -11, 31, 3, -6, -6,
    -- layer=2 filter=42 channel=30
    12, -33, 11, 32, -31, -33, 41, 6, 19,
    -- layer=2 filter=42 channel=31
    -15, -8, 18, -23, 16, 45, 16, 4, 1,
    -- layer=2 filter=42 channel=32
    -12, 9, -18, 0, 4, -11, 5, 14, 0,
    -- layer=2 filter=42 channel=33
    -3, 35, 23, 30, 50, 49, 32, 34, 0,
    -- layer=2 filter=42 channel=34
    -23, 4, -17, 8, 8, -25, 40, 12, 13,
    -- layer=2 filter=42 channel=35
    -16, 3, 8, -34, 19, 39, -64, -8, 24,
    -- layer=2 filter=42 channel=36
    1, -12, -10, 5, -58, -25, 20, -13, -14,
    -- layer=2 filter=42 channel=37
    8, 12, 24, -3, -2, -15, 29, 2, -28,
    -- layer=2 filter=42 channel=38
    -16, -19, 8, -16, -19, 24, 12, -6, -10,
    -- layer=2 filter=42 channel=39
    -48, -17, 24, -14, -13, 40, -19, -21, 33,
    -- layer=2 filter=42 channel=40
    40, 26, 3, 55, 18, 26, 50, 39, -23,
    -- layer=2 filter=42 channel=41
    -9, 23, 29, -14, -1, 20, -29, -8, 5,
    -- layer=2 filter=42 channel=42
    -9, -18, -22, -46, -43, 5, -62, -31, 8,
    -- layer=2 filter=42 channel=43
    -17, -43, -7, -15, -6, 8, 30, 19, 13,
    -- layer=2 filter=42 channel=44
    -33, -1, 8, -23, -29, 10, 20, -16, -4,
    -- layer=2 filter=42 channel=45
    -12, 33, 18, -41, -3, 35, -53, -11, 23,
    -- layer=2 filter=42 channel=46
    -37, -18, 28, -65, -28, 51, -44, -12, 30,
    -- layer=2 filter=42 channel=47
    -5, 0, 0, 11, 13, -8, -12, -16, -17,
    -- layer=2 filter=42 channel=48
    31, 27, 1, 19, 64, 19, -29, -3, -8,
    -- layer=2 filter=42 channel=49
    -20, -15, 11, 9, -24, -3, 54, -15, 2,
    -- layer=2 filter=42 channel=50
    8, -8, -14, -12, -15, 12, -14, 17, 9,
    -- layer=2 filter=42 channel=51
    1, 3, -7, 9, -6, 0, -13, -1, -2,
    -- layer=2 filter=42 channel=52
    -5, -24, 16, -10, 6, 25, -32, -14, 0,
    -- layer=2 filter=42 channel=53
    -29, 15, 23, 7, -6, 1, 36, -14, -36,
    -- layer=2 filter=42 channel=54
    -22, -33, -2, 15, -20, -6, 37, -3, 0,
    -- layer=2 filter=42 channel=55
    0, -11, -12, -7, 17, -18, -9, -15, 1,
    -- layer=2 filter=42 channel=56
    0, -3, -8, -33, -14, 2, 12, -10, -24,
    -- layer=2 filter=42 channel=57
    -3, -21, 14, 3, -16, -22, 48, 12, 24,
    -- layer=2 filter=42 channel=58
    26, 37, 30, 10, -18, -29, -16, -9, -13,
    -- layer=2 filter=42 channel=59
    9, 11, 7, -17, 11, -5, 6, 12, 1,
    -- layer=2 filter=42 channel=60
    -14, -10, -15, -6, 3, -5, 33, 11, -20,
    -- layer=2 filter=42 channel=61
    -1, -18, -7, 12, -11, -13, -2, 0, 17,
    -- layer=2 filter=42 channel=62
    -4, 8, 6, -16, -41, -7, 34, -21, -20,
    -- layer=2 filter=42 channel=63
    35, 2, 35, 7, 8, 28, 31, 35, 33,
    -- layer=2 filter=43 channel=0
    29, 41, 31, 54, 83, 18, 45, 44, 2,
    -- layer=2 filter=43 channel=1
    0, -15, 14, 2, 0, 17, 11, -4, 10,
    -- layer=2 filter=43 channel=2
    17, 21, 6, 31, 56, 6, 17, 24, -19,
    -- layer=2 filter=43 channel=3
    -6, -29, 18, -4, -7, 2, -3, 19, -9,
    -- layer=2 filter=43 channel=4
    9, -17, -7, -1, -21, -29, 8, 1, -25,
    -- layer=2 filter=43 channel=5
    -7, 1, 0, -20, 10, 5, -23, 0, -29,
    -- layer=2 filter=43 channel=6
    6, -8, -4, 3, -43, 8, 23, 8, -6,
    -- layer=2 filter=43 channel=7
    -8, -34, -48, -29, -86, -49, -3, 18, 1,
    -- layer=2 filter=43 channel=8
    -17, -30, -15, 14, -37, -25, 47, 14, -18,
    -- layer=2 filter=43 channel=9
    -21, 10, -18, 16, 0, 37, -45, -37, -7,
    -- layer=2 filter=43 channel=10
    -11, 12, 0, -15, -15, -14, 5, 7, 5,
    -- layer=2 filter=43 channel=11
    -22, 28, -1, -13, 6, 18, -28, -10, -6,
    -- layer=2 filter=43 channel=12
    -14, -8, 18, -10, -9, -6, 17, 1, 12,
    -- layer=2 filter=43 channel=13
    15, -20, 25, -8, 5, 5, 11, -4, 2,
    -- layer=2 filter=43 channel=14
    -23, 29, 39, -4, 24, 16, -41, -11, -29,
    -- layer=2 filter=43 channel=15
    -7, 6, -2, 8, 7, 0, -4, 6, 6,
    -- layer=2 filter=43 channel=16
    0, -14, 6, 17, 11, 25, 8, -12, -5,
    -- layer=2 filter=43 channel=17
    -25, -3, 16, -6, -7, 17, -15, -8, 41,
    -- layer=2 filter=43 channel=18
    -3, 3, 15, -2, -19, 10, 22, -16, -31,
    -- layer=2 filter=43 channel=19
    -22, -16, -13, -2, 22, 7, 23, 6, -10,
    -- layer=2 filter=43 channel=20
    -13, 25, 26, -35, 22, 22, -26, -23, 15,
    -- layer=2 filter=43 channel=21
    -22, -10, 26, -10, -5, 1, -6, 2, 2,
    -- layer=2 filter=43 channel=22
    0, -11, 6, -8, -5, -6, 3, -5, 11,
    -- layer=2 filter=43 channel=23
    19, 19, 10, -11, -7, 9, -15, 13, 21,
    -- layer=2 filter=43 channel=24
    18, -17, 22, 13, 17, 16, -11, -2, 8,
    -- layer=2 filter=43 channel=25
    -1, -5, -2, -15, -12, 0, 0, 12, -9,
    -- layer=2 filter=43 channel=26
    -3, 0, 7, -9, 18, -2, -10, -12, 17,
    -- layer=2 filter=43 channel=27
    -20, 0, -31, -3, -12, -1, 7, -15, 33,
    -- layer=2 filter=43 channel=28
    -2, 30, 45, 6, 51, 19, -13, -7, -45,
    -- layer=2 filter=43 channel=29
    1, -5, 30, -42, -2, 25, -32, -8, 16,
    -- layer=2 filter=43 channel=30
    -1, 11, 17, 1, -13, 0, -23, 14, 23,
    -- layer=2 filter=43 channel=31
    -66, -18, -1, -34, -22, 22, -16, -5, 25,
    -- layer=2 filter=43 channel=32
    10, 14, -21, -14, -12, 18, 9, 5, 0,
    -- layer=2 filter=43 channel=33
    51, 11, 33, 19, 63, 31, 30, 6, 18,
    -- layer=2 filter=43 channel=34
    16, 14, -9, -6, -20, -1, 18, 17, 37,
    -- layer=2 filter=43 channel=35
    3, -5, 26, -20, 0, 3, 14, -1, -13,
    -- layer=2 filter=43 channel=36
    -8, -12, -20, -11, -28, -28, -8, -6, -16,
    -- layer=2 filter=43 channel=37
    20, 13, 52, -2, -18, -35, -18, -41, 15,
    -- layer=2 filter=43 channel=38
    0, -21, -3, -18, -33, 8, 13, -4, -14,
    -- layer=2 filter=43 channel=39
    -14, -10, 6, -29, -37, 27, -17, -4, 46,
    -- layer=2 filter=43 channel=40
    -13, -7, -5, -15, 19, 3, -11, 23, 6,
    -- layer=2 filter=43 channel=41
    -5, 3, 16, -11, 2, 4, -23, 15, 12,
    -- layer=2 filter=43 channel=42
    3, -11, -2, 32, 38, 18, 59, 54, 21,
    -- layer=2 filter=43 channel=43
    20, 43, -18, 24, 33, -4, 15, 14, 27,
    -- layer=2 filter=43 channel=44
    15, 19, 10, -1, 12, 28, -8, 2, 25,
    -- layer=2 filter=43 channel=45
    44, 14, -8, -26, -14, -10, 35, -12, -6,
    -- layer=2 filter=43 channel=46
    5, -6, 20, -38, -19, -24, 1, 14, 32,
    -- layer=2 filter=43 channel=47
    -15, 8, 3, -4, 11, -6, -7, 12, -16,
    -- layer=2 filter=43 channel=48
    34, 19, 36, 2, 44, 35, -14, -31, -29,
    -- layer=2 filter=43 channel=49
    26, 35, 0, -23, -1, 8, -15, -4, 0,
    -- layer=2 filter=43 channel=50
    12, 25, -2, -13, 18, 0, 11, 2, -9,
    -- layer=2 filter=43 channel=51
    8, -2, 20, -1, 1, 16, 13, 15, 0,
    -- layer=2 filter=43 channel=52
    8, -2, -11, -17, 21, 24, -8, 0, 16,
    -- layer=2 filter=43 channel=53
    11, -9, -3, 20, -42, -37, 63, 7, 8,
    -- layer=2 filter=43 channel=54
    -6, 3, -11, -2, -16, -11, -12, 27, 32,
    -- layer=2 filter=43 channel=55
    10, -15, 19, 6, -17, 14, 13, 12, -9,
    -- layer=2 filter=43 channel=56
    28, 17, 0, -20, 14, 16, -26, -1, -3,
    -- layer=2 filter=43 channel=57
    -10, 16, 11, -27, -17, -17, 7, 20, 36,
    -- layer=2 filter=43 channel=58
    14, -1, -11, 9, 3, 14, -21, -22, -19,
    -- layer=2 filter=43 channel=59
    -11, 14, -11, -9, -2, -11, 17, -11, 2,
    -- layer=2 filter=43 channel=60
    9, 34, 58, 4, 30, 22, -40, 2, 15,
    -- layer=2 filter=43 channel=61
    -6, -7, 11, 15, -5, -12, 4, 6, 20,
    -- layer=2 filter=43 channel=62
    -20, -23, -19, -13, 9, -19, -12, -11, -18,
    -- layer=2 filter=43 channel=63
    -16, -51, -32, 10, -17, 16, -1, 9, 7,
    -- layer=2 filter=44 channel=0
    54, 52, 24, 30, 39, 6, 35, 25, 32,
    -- layer=2 filter=44 channel=1
    17, 23, 6, 3, -5, 8, -18, 6, -1,
    -- layer=2 filter=44 channel=2
    48, 34, -10, -6, 30, 4, 16, 37, 6,
    -- layer=2 filter=44 channel=3
    -22, 16, 2, 1, 22, -2, 7, 14, -6,
    -- layer=2 filter=44 channel=4
    -34, -25, 25, -23, -11, 32, -32, -6, 38,
    -- layer=2 filter=44 channel=5
    -17, 7, -26, 5, 12, 16, -17, 31, 31,
    -- layer=2 filter=44 channel=6
    -23, -39, -8, 6, -2, 19, 12, -3, 47,
    -- layer=2 filter=44 channel=7
    -53, -64, -27, -56, -46, -15, -72, -30, 0,
    -- layer=2 filter=44 channel=8
    -2, 2, -19, 55, -22, -18, 15, -3, 13,
    -- layer=2 filter=44 channel=9
    41, 35, 11, 19, 14, -3, 19, -35, -33,
    -- layer=2 filter=44 channel=10
    3, -11, 2, -6, -8, -13, 1, -13, 0,
    -- layer=2 filter=44 channel=11
    -6, 15, -12, 14, -5, -9, 29, 16, -7,
    -- layer=2 filter=44 channel=12
    0, 5, 12, 9, 6, 15, -5, -12, -1,
    -- layer=2 filter=44 channel=13
    8, -37, 25, 27, 1, 2, 42, 24, -51,
    -- layer=2 filter=44 channel=14
    0, 19, 21, -9, 37, 24, 35, 42, 12,
    -- layer=2 filter=44 channel=15
    6, 8, -14, -9, -15, -4, -27, 6, 0,
    -- layer=2 filter=44 channel=16
    2, 2, -11, -16, -4, 16, -16, 13, 10,
    -- layer=2 filter=44 channel=17
    -17, -13, 21, -21, -3, 6, -35, -15, -4,
    -- layer=2 filter=44 channel=18
    14, -9, -5, 0, 20, -2, 39, 14, -32,
    -- layer=2 filter=44 channel=19
    18, 8, -13, -14, 19, -12, 13, -2, -3,
    -- layer=2 filter=44 channel=20
    26, -6, -13, 8, 6, 36, 7, 33, -13,
    -- layer=2 filter=44 channel=21
    4, -21, 9, 29, 10, 0, 10, -15, -11,
    -- layer=2 filter=44 channel=22
    -13, 10, 2, -19, 0, -3, -13, -14, -7,
    -- layer=2 filter=44 channel=23
    -12, 6, 7, 0, -11, -21, 24, 3, -11,
    -- layer=2 filter=44 channel=24
    -17, 24, -5, 7, 7, -16, -15, -8, 8,
    -- layer=2 filter=44 channel=25
    11, 15, 3, 2, -16, -3, -11, 5, -7,
    -- layer=2 filter=44 channel=26
    12, 8, 11, 11, -7, 1, 18, 0, 15,
    -- layer=2 filter=44 channel=27
    17, 25, 0, 14, 19, 1, -7, 7, 19,
    -- layer=2 filter=44 channel=28
    -4, -13, -16, -16, -44, -14, -19, -23, -18,
    -- layer=2 filter=44 channel=29
    23, 20, -5, 0, -2, -9, 13, 29, 13,
    -- layer=2 filter=44 channel=30
    11, 17, -9, 14, 25, 19, -3, -4, 20,
    -- layer=2 filter=44 channel=31
    -27, -1, 5, 18, 35, 8, 50, 22, -1,
    -- layer=2 filter=44 channel=32
    -2, -4, 14, 20, 20, -2, 3, 10, 13,
    -- layer=2 filter=44 channel=33
    5, 26, 28, 11, -4, 43, 12, 41, 17,
    -- layer=2 filter=44 channel=34
    -11, 5, -5, 23, -3, -5, -18, -5, -1,
    -- layer=2 filter=44 channel=35
    1, -37, -11, 2, 11, -2, 54, 13, -39,
    -- layer=2 filter=44 channel=36
    -12, -9, 1, -7, 14, 1, -13, -16, 35,
    -- layer=2 filter=44 channel=37
    -32, -10, 3, 5, -31, 7, -17, -38, -5,
    -- layer=2 filter=44 channel=38
    2, -8, 0, -1, 2, 12, -2, 1, 27,
    -- layer=2 filter=44 channel=39
    -30, -27, -10, -23, -30, 0, 26, -12, 3,
    -- layer=2 filter=44 channel=40
    5, 21, 26, 0, -4, 29, 21, 20, 4,
    -- layer=2 filter=44 channel=41
    -11, 3, 3, 33, 17, -24, 59, -15, -23,
    -- layer=2 filter=44 channel=42
    6, -1, -30, 20, 0, -39, 29, -10, 9,
    -- layer=2 filter=44 channel=43
    33, 41, -27, 11, 15, -37, -21, 7, -11,
    -- layer=2 filter=44 channel=44
    -18, -11, 15, -6, -3, 12, -22, -36, 1,
    -- layer=2 filter=44 channel=45
    -7, -24, -23, 19, -19, 0, 15, 5, -43,
    -- layer=2 filter=44 channel=46
    -18, -20, 0, -22, -33, -32, 0, -11, -1,
    -- layer=2 filter=44 channel=47
    -5, -17, 5, -3, 15, -3, 3, 10, 13,
    -- layer=2 filter=44 channel=48
    7, 17, -15, -22, -50, -8, -25, -30, -48,
    -- layer=2 filter=44 channel=49
    -28, -13, 0, -8, 21, -26, 3, 0, -1,
    -- layer=2 filter=44 channel=50
    1, -4, 5, 7, -5, 16, -2, -9, 5,
    -- layer=2 filter=44 channel=51
    5, 15, -17, -11, -12, 18, 16, -10, 0,
    -- layer=2 filter=44 channel=52
    24, -24, 11, 8, -23, -20, 12, -12, -46,
    -- layer=2 filter=44 channel=53
    0, -43, -22, -17, -33, -4, -37, -30, 4,
    -- layer=2 filter=44 channel=54
    -27, -5, -8, -17, -10, -8, -16, -28, -23,
    -- layer=2 filter=44 channel=55
    -20, 3, 2, 2, -11, -9, -11, 9, 14,
    -- layer=2 filter=44 channel=56
    -9, -21, 6, -19, 17, -23, 10, -16, 32,
    -- layer=2 filter=44 channel=57
    1, -5, -8, -1, 5, -3, -33, -16, -20,
    -- layer=2 filter=44 channel=58
    25, 10, -4, -6, 18, -1, 23, 8, -9,
    -- layer=2 filter=44 channel=59
    4, -16, -4, -15, 4, 9, -15, -9, -16,
    -- layer=2 filter=44 channel=60
    16, 27, -11, 32, -6, -32, -3, 9, -16,
    -- layer=2 filter=44 channel=61
    12, 12, -14, 14, -8, -9, 4, -6, 6,
    -- layer=2 filter=44 channel=62
    11, -13, 3, -24, -53, -11, -29, -12, -22,
    -- layer=2 filter=44 channel=63
    -50, -12, -17, -55, -28, -11, -62, -29, -21,
    -- layer=2 filter=45 channel=0
    2, 6, -6, -20, -8, -5, -5, -6, -24,
    -- layer=2 filter=45 channel=1
    5, 0, 1, 7, 11, -10, -11, -7, 12,
    -- layer=2 filter=45 channel=2
    -13, -9, -14, 0, 6, -22, -10, -20, 2,
    -- layer=2 filter=45 channel=3
    6, 11, -3, -11, -9, -16, 8, 10, -16,
    -- layer=2 filter=45 channel=4
    3, -19, 4, 2, 3, -27, 15, -18, -9,
    -- layer=2 filter=45 channel=5
    6, -9, 7, -20, -16, 8, 12, -18, 0,
    -- layer=2 filter=45 channel=6
    -1, -15, 2, 8, -8, -21, 3, -1, -7,
    -- layer=2 filter=45 channel=7
    2, -1, 8, 6, 10, 14, -3, -2, -3,
    -- layer=2 filter=45 channel=8
    16, 15, -22, -6, 7, 0, 11, -2, -9,
    -- layer=2 filter=45 channel=9
    6, -19, -28, -1, -1, -5, -11, -5, 23,
    -- layer=2 filter=45 channel=10
    9, -13, -14, -13, 6, -1, 0, 13, -8,
    -- layer=2 filter=45 channel=11
    4, -8, -25, 6, -23, 0, -9, -19, -15,
    -- layer=2 filter=45 channel=12
    -3, -10, 9, 0, 1, 4, -10, 8, 2,
    -- layer=2 filter=45 channel=13
    5, 0, -19, -22, 12, -19, 0, 0, -1,
    -- layer=2 filter=45 channel=14
    0, -19, 9, -18, -13, -3, 4, 3, -6,
    -- layer=2 filter=45 channel=15
    7, -8, -2, -3, -10, -1, -16, 13, -15,
    -- layer=2 filter=45 channel=16
    14, 16, 13, 8, -11, -2, -7, -2, 0,
    -- layer=2 filter=45 channel=17
    -18, 8, -4, 1, -13, -20, -21, -5, 10,
    -- layer=2 filter=45 channel=18
    1, -27, -17, 10, 1, 0, 1, -11, -16,
    -- layer=2 filter=45 channel=19
    5, 0, -1, -7, -5, 10, 1, -8, 8,
    -- layer=2 filter=45 channel=20
    -14, -23, -4, -13, 1, 5, -8, -5, 6,
    -- layer=2 filter=45 channel=21
    0, -18, -15, -21, -13, -12, 7, -5, 5,
    -- layer=2 filter=45 channel=22
    2, -10, 17, -15, 5, 16, 7, 3, -10,
    -- layer=2 filter=45 channel=23
    -3, 7, 7, -12, 6, -1, -15, -11, 0,
    -- layer=2 filter=45 channel=24
    20, 7, -8, 10, -8, 13, -4, 1, 2,
    -- layer=2 filter=45 channel=25
    -6, 16, -1, 12, -16, -6, -7, 2, -11,
    -- layer=2 filter=45 channel=26
    -8, -6, 10, -8, 8, 0, -6, 11, -7,
    -- layer=2 filter=45 channel=27
    15, -8, 14, -9, 13, 14, -12, 10, -4,
    -- layer=2 filter=45 channel=28
    0, -9, -19, -20, -15, 4, 3, -19, -1,
    -- layer=2 filter=45 channel=29
    -23, -4, -21, -2, -6, -23, 2, -19, -11,
    -- layer=2 filter=45 channel=30
    -21, -14, 8, 14, 10, -5, 4, -13, 4,
    -- layer=2 filter=45 channel=31
    -10, -8, 0, -7, 6, -17, -24, -30, -14,
    -- layer=2 filter=45 channel=32
    6, -18, -9, -10, 10, 7, -15, 3, -20,
    -- layer=2 filter=45 channel=33
    -3, 6, 10, -8, -14, 5, -4, -11, 13,
    -- layer=2 filter=45 channel=34
    4, -6, -19, -8, -6, 11, -13, 0, -8,
    -- layer=2 filter=45 channel=35
    -19, 0, -18, 12, -15, -2, -1, -7, 4,
    -- layer=2 filter=45 channel=36
    -9, -12, 7, -5, 8, 0, -18, -20, 11,
    -- layer=2 filter=45 channel=37
    -5, -8, 7, 16, 6, 0, -5, 0, -15,
    -- layer=2 filter=45 channel=38
    -3, 3, -8, -10, -14, -9, 10, 6, 10,
    -- layer=2 filter=45 channel=39
    -19, -1, -11, 2, -6, 7, -24, -4, -14,
    -- layer=2 filter=45 channel=40
    13, -18, -5, -13, 5, 3, -8, -18, -5,
    -- layer=2 filter=45 channel=41
    -10, -24, -1, -2, -9, 6, -23, -11, -1,
    -- layer=2 filter=45 channel=42
    -9, 0, -15, 3, -4, -12, -16, -23, 0,
    -- layer=2 filter=45 channel=43
    -8, -4, 7, -7, 0, 0, 1, 0, 4,
    -- layer=2 filter=45 channel=44
    0, -13, 0, -7, 15, 0, -4, -21, -15,
    -- layer=2 filter=45 channel=45
    4, -27, -8, -5, 7, -12, -18, -20, -15,
    -- layer=2 filter=45 channel=46
    -35, -26, -17, 0, 9, 10, 2, -19, -18,
    -- layer=2 filter=45 channel=47
    -3, 9, -3, 4, -8, 0, -11, -3, -15,
    -- layer=2 filter=45 channel=48
    -20, -18, 0, -12, 8, -3, -15, -12, -29,
    -- layer=2 filter=45 channel=49
    1, 9, 10, 3, -15, 10, -17, 6, 0,
    -- layer=2 filter=45 channel=50
    3, 8, -4, 18, -2, 14, 4, -15, 16,
    -- layer=2 filter=45 channel=51
    -4, -12, -3, -5, 0, -7, 8, 0, 6,
    -- layer=2 filter=45 channel=52
    -23, 0, 7, -7, 2, -20, 11, -12, 9,
    -- layer=2 filter=45 channel=53
    10, -10, 4, -22, 11, -22, -20, -20, -26,
    -- layer=2 filter=45 channel=54
    -12, 11, -19, 8, -6, 14, -17, 13, -17,
    -- layer=2 filter=45 channel=55
    -18, 8, 5, 3, -2, -4, -8, 1, 11,
    -- layer=2 filter=45 channel=56
    -10, -13, -5, 7, 7, -10, 15, 4, -11,
    -- layer=2 filter=45 channel=57
    5, -2, -12, -12, 4, -22, 8, -7, 7,
    -- layer=2 filter=45 channel=58
    -7, 13, -8, 0, -20, -26, -8, -19, -19,
    -- layer=2 filter=45 channel=59
    -17, -14, -8, -17, 6, -18, -6, -15, 1,
    -- layer=2 filter=45 channel=60
    -2, -19, -21, 9, -20, -5, 11, 10, -8,
    -- layer=2 filter=45 channel=61
    18, 12, -2, 16, 0, 8, -14, 10, 14,
    -- layer=2 filter=45 channel=62
    -6, -7, 15, 0, 6, -10, 14, -18, -10,
    -- layer=2 filter=45 channel=63
    -23, -26, -20, -14, 3, -11, -25, 11, -8,
    -- layer=2 filter=46 channel=0
    73, 55, -17, 67, 26, 4, 24, 43, -56,
    -- layer=2 filter=46 channel=1
    10, 8, 14, 19, 13, 9, -7, -4, -10,
    -- layer=2 filter=46 channel=2
    52, 45, -42, 34, 26, 12, 11, 3, -3,
    -- layer=2 filter=46 channel=3
    -12, -15, -4, -4, -22, -9, 5, -14, -1,
    -- layer=2 filter=46 channel=4
    -30, -22, -14, 7, 10, -11, 16, 1, 26,
    -- layer=2 filter=46 channel=5
    -4, -12, -2, -15, -15, 18, -2, -4, 2,
    -- layer=2 filter=46 channel=6
    0, 11, 32, 14, -2, -2, -7, 14, 32,
    -- layer=2 filter=46 channel=7
    -4, -41, -5, 10, -2, -28, 5, 0, -28,
    -- layer=2 filter=46 channel=8
    -4, -46, -31, -23, -63, -34, 6, -3, -1,
    -- layer=2 filter=46 channel=9
    2, -26, 14, 47, 38, 52, 53, 65, 102,
    -- layer=2 filter=46 channel=10
    -12, -7, 12, -5, -2, 9, 0, 3, 1,
    -- layer=2 filter=46 channel=11
    -7, 6, 20, 9, 26, -4, 6, 11, -11,
    -- layer=2 filter=46 channel=12
    -1, 3, 13, -2, -11, -1, -21, 8, 10,
    -- layer=2 filter=46 channel=13
    -13, -22, 0, 15, -29, 5, -6, -8, -10,
    -- layer=2 filter=46 channel=14
    -12, -7, 10, 5, 9, 4, 14, -34, -8,
    -- layer=2 filter=46 channel=15
    6, 5, 19, 1, 18, 1, 0, -1, 21,
    -- layer=2 filter=46 channel=16
    2, -6, 10, -14, 4, 12, -8, -1, -8,
    -- layer=2 filter=46 channel=17
    21, 22, 9, -5, 1, 11, -19, -5, 11,
    -- layer=2 filter=46 channel=18
    -17, -24, -10, -13, -12, -3, -51, -48, -13,
    -- layer=2 filter=46 channel=19
    13, -3, -24, -10, -3, -12, -2, 3, -3,
    -- layer=2 filter=46 channel=20
    4, 7, -13, -4, 0, -3, -16, -17, -15,
    -- layer=2 filter=46 channel=21
    6, 0, 23, 0, -5, -10, -3, -11, -35,
    -- layer=2 filter=46 channel=22
    -5, -18, 4, -15, -19, 4, -16, -11, 15,
    -- layer=2 filter=46 channel=23
    4, 24, 38, -2, 24, 25, -20, 12, 13,
    -- layer=2 filter=46 channel=24
    -9, -16, -10, -16, -31, 17, 8, 8, 15,
    -- layer=2 filter=46 channel=25
    -12, 12, -1, 18, -8, 18, 15, -1, 3,
    -- layer=2 filter=46 channel=26
    16, -3, 7, 13, 16, 4, -3, -8, -5,
    -- layer=2 filter=46 channel=27
    -2, -19, -12, 25, 2, 36, -1, 3, 7,
    -- layer=2 filter=46 channel=28
    30, 27, -43, 39, 7, -37, 9, 22, -42,
    -- layer=2 filter=46 channel=29
    1, 23, 7, 22, -2, 6, 9, -23, -10,
    -- layer=2 filter=46 channel=30
    -9, -5, 15, 11, -1, 34, -13, -3, 0,
    -- layer=2 filter=46 channel=31
    -8, 5, -1, -23, -29, -20, -1, -24, 13,
    -- layer=2 filter=46 channel=32
    -15, 1, 0, -4, 17, -1, 18, 7, -16,
    -- layer=2 filter=46 channel=33
    20, -1, 34, 66, 0, 15, 61, 3, 42,
    -- layer=2 filter=46 channel=34
    11, 27, 42, -14, 2, 3, -9, -1, -7,
    -- layer=2 filter=46 channel=35
    -12, -18, 2, 6, 0, -9, -34, 4, -10,
    -- layer=2 filter=46 channel=36
    -2, -9, 10, 8, 9, 15, 13, 41, 29,
    -- layer=2 filter=46 channel=37
    7, -6, 21, -6, 0, 14, 2, -1, 23,
    -- layer=2 filter=46 channel=38
    7, 4, 33, 10, -6, 0, -12, 16, -2,
    -- layer=2 filter=46 channel=39
    34, 18, 21, 3, 0, 17, 2, -9, -4,
    -- layer=2 filter=46 channel=40
    -17, -26, -14, -26, -36, -37, 6, -40, -5,
    -- layer=2 filter=46 channel=41
    33, 1, 9, 7, 19, -10, 13, -13, -33,
    -- layer=2 filter=46 channel=42
    0, -11, -38, 3, -13, -13, -2, 12, 10,
    -- layer=2 filter=46 channel=43
    23, 50, 1, 28, 46, 4, -34, -2, -36,
    -- layer=2 filter=46 channel=44
    30, 13, 17, 8, 25, 8, -11, 17, -20,
    -- layer=2 filter=46 channel=45
    13, -13, 17, 15, 6, -17, -26, -14, -13,
    -- layer=2 filter=46 channel=46
    34, 10, 5, 6, 23, 12, 6, -3, 7,
    -- layer=2 filter=46 channel=47
    12, 2, -12, -6, 6, 10, -5, -7, -9,
    -- layer=2 filter=46 channel=48
    15, 18, -50, 18, 0, -37, -12, 5, -59,
    -- layer=2 filter=46 channel=49
    20, 16, 34, 17, 31, 5, -2, 22, 10,
    -- layer=2 filter=46 channel=50
    -17, -11, -5, 0, -12, -8, -1, -16, 14,
    -- layer=2 filter=46 channel=51
    16, 15, -6, 10, 0, 3, -3, 3, 7,
    -- layer=2 filter=46 channel=52
    17, -22, -9, 26, 15, 15, 29, 41, 61,
    -- layer=2 filter=46 channel=53
    -37, -31, -2, -9, -6, 3, 26, 9, 13,
    -- layer=2 filter=46 channel=54
    -5, 43, 22, 0, 6, 40, -8, 23, 19,
    -- layer=2 filter=46 channel=55
    -12, -2, 5, -8, 3, 17, -10, 4, 12,
    -- layer=2 filter=46 channel=56
    21, 11, 6, -7, 16, 4, -19, 17, -23,
    -- layer=2 filter=46 channel=57
    22, 13, 29, -19, 4, 6, -7, 2, -12,
    -- layer=2 filter=46 channel=58
    0, 18, 11, 19, 5, -13, 7, 1, -3,
    -- layer=2 filter=46 channel=59
    12, 17, 11, -5, 3, 14, -1, -5, -16,
    -- layer=2 filter=46 channel=60
    11, 32, 7, -8, 32, 5, 0, -23, -18,
    -- layer=2 filter=46 channel=61
    8, -13, -5, 3, 17, -4, -2, 4, 16,
    -- layer=2 filter=46 channel=62
    34, 20, -5, 8, -1, -31, 0, 31, -12,
    -- layer=2 filter=46 channel=63
    -26, -27, -16, 8, -38, -11, -45, -19, -38,
    -- layer=2 filter=47 channel=0
    -33, -60, -48, -36, -77, -74, -19, -16, -63,
    -- layer=2 filter=47 channel=1
    0, 5, -3, -9, -18, -1, 4, -6, 6,
    -- layer=2 filter=47 channel=2
    -59, -63, -59, -63, -90, -72, -25, -50, -74,
    -- layer=2 filter=47 channel=3
    -10, -17, -15, -9, 9, 15, 16, 8, 4,
    -- layer=2 filter=47 channel=4
    -18, -17, -16, -1, 0, 9, -5, 14, -10,
    -- layer=2 filter=47 channel=5
    0, -30, -4, -11, -12, -10, 5, 5, 2,
    -- layer=2 filter=47 channel=6
    23, 18, -6, 20, 19, 15, -13, 7, -2,
    -- layer=2 filter=47 channel=7
    -6, -24, -40, 0, 19, -27, 12, 14, 0,
    -- layer=2 filter=47 channel=8
    22, 35, 27, 36, 60, 42, 24, 44, 39,
    -- layer=2 filter=47 channel=9
    21, -2, 6, -13, 10, -5, 14, -49, 18,
    -- layer=2 filter=47 channel=10
    15, -5, 12, 11, -16, 5, 9, 0, -12,
    -- layer=2 filter=47 channel=11
    -20, 1, 10, -16, 3, -11, -4, -10, -20,
    -- layer=2 filter=47 channel=12
    12, 8, 7, 11, 10, 5, 6, 17, -1,
    -- layer=2 filter=47 channel=13
    33, 19, 13, 12, 16, 10, 0, -3, -7,
    -- layer=2 filter=47 channel=14
    0, -21, -5, -25, -34, -8, -20, -38, -12,
    -- layer=2 filter=47 channel=15
    -10, -12, 8, -4, -21, -16, 19, 10, -11,
    -- layer=2 filter=47 channel=16
    -1, 0, 2, 0, 10, 6, -10, 9, -4,
    -- layer=2 filter=47 channel=17
    -3, 8, 23, 14, -2, -1, 16, -10, -13,
    -- layer=2 filter=47 channel=18
    8, 18, 9, 13, 25, 28, 27, 31, 8,
    -- layer=2 filter=47 channel=19
    8, -11, -20, -15, -17, 1, -21, -21, -11,
    -- layer=2 filter=47 channel=20
    4, 18, 11, 2, 0, -20, 1, -25, -25,
    -- layer=2 filter=47 channel=21
    11, 7, 14, 9, -4, 10, 3, 13, 18,
    -- layer=2 filter=47 channel=22
    -11, 4, 9, 15, -13, 7, -2, -12, 18,
    -- layer=2 filter=47 channel=23
    13, -11, 21, 12, 21, 14, -7, -10, 23,
    -- layer=2 filter=47 channel=24
    0, 1, -4, -3, 10, 12, -7, -15, -4,
    -- layer=2 filter=47 channel=25
    -13, 18, 9, 9, -5, -18, 0, 2, -17,
    -- layer=2 filter=47 channel=26
    10, 4, 20, 1, -5, -2, -7, 15, -9,
    -- layer=2 filter=47 channel=27
    -8, 6, -3, -2, -14, -10, -17, -17, 12,
    -- layer=2 filter=47 channel=28
    -63, -1, -37, -53, -66, -44, -8, -34, -23,
    -- layer=2 filter=47 channel=29
    5, -2, 8, 16, 34, -4, 15, -24, -2,
    -- layer=2 filter=47 channel=30
    14, 20, 19, 4, -2, 0, 0, 15, 3,
    -- layer=2 filter=47 channel=31
    -1, 26, 0, 28, 15, -11, 5, -18, 7,
    -- layer=2 filter=47 channel=32
    -8, -6, 9, -10, -8, -1, 17, -11, -10,
    -- layer=2 filter=47 channel=33
    -45, -37, -67, -33, -87, -80, -68, -69, -83,
    -- layer=2 filter=47 channel=34
    26, 15, 14, -12, 1, 2, -5, 1, 4,
    -- layer=2 filter=47 channel=35
    0, 3, 4, 36, 19, 33, 28, 9, -2,
    -- layer=2 filter=47 channel=36
    -5, 12, -8, 16, 22, -2, -1, -2, -14,
    -- layer=2 filter=47 channel=37
    2, 11, -5, -17, -10, -11, -18, -7, 3,
    -- layer=2 filter=47 channel=38
    1, 26, 18, 7, 4, 24, 16, 14, 20,
    -- layer=2 filter=47 channel=39
    8, 24, 2, 27, 12, 5, 0, -13, 7,
    -- layer=2 filter=47 channel=40
    -1, -1, 16, 8, 4, -22, -3, 0, 14,
    -- layer=2 filter=47 channel=41
    -8, 14, 23, 8, -2, 28, 13, -9, 15,
    -- layer=2 filter=47 channel=42
    32, 28, 10, 46, 14, 29, 7, 38, 16,
    -- layer=2 filter=47 channel=43
    2, -5, 15, -10, 5, -25, -22, -20, 7,
    -- layer=2 filter=47 channel=44
    -21, 4, -13, -16, -4, -2, -27, -26, -21,
    -- layer=2 filter=47 channel=45
    12, 20, 6, 31, -1, 34, 20, 8, -13,
    -- layer=2 filter=47 channel=46
    -14, -14, -10, 16, 39, 7, 14, -3, -18,
    -- layer=2 filter=47 channel=47
    -2, 8, -15, 1, 15, -7, -11, 14, 9,
    -- layer=2 filter=47 channel=48
    -19, -40, -39, -23, -57, -27, -26, -36, -37,
    -- layer=2 filter=47 channel=49
    7, 7, 3, 14, 5, 6, -23, 13, 9,
    -- layer=2 filter=47 channel=50
    0, -12, 0, 11, 14, -5, 11, 15, -8,
    -- layer=2 filter=47 channel=51
    6, 15, -9, -9, 16, -9, 2, 15, -4,
    -- layer=2 filter=47 channel=52
    7, 29, -5, 16, 11, -1, 23, -9, 3,
    -- layer=2 filter=47 channel=53
    12, 20, 25, 16, 16, 8, 3, 5, 17,
    -- layer=2 filter=47 channel=54
    -2, -1, 23, -9, 9, 27, 10, -13, 19,
    -- layer=2 filter=47 channel=55
    14, 8, 5, 10, -6, -13, -7, 12, 1,
    -- layer=2 filter=47 channel=56
    7, -4, -10, -16, -13, -12, -10, -8, -14,
    -- layer=2 filter=47 channel=57
    3, -1, 5, 3, -3, 18, 0, 11, 18,
    -- layer=2 filter=47 channel=58
    -11, -4, -12, 13, 11, 1, 16, 8, -8,
    -- layer=2 filter=47 channel=59
    -9, -1, -12, -13, -7, 12, -5, -4, -6,
    -- layer=2 filter=47 channel=60
    0, 8, 0, -11, -2, -6, -19, -14, 5,
    -- layer=2 filter=47 channel=61
    8, -2, 16, -17, -17, -14, -10, -12, 13,
    -- layer=2 filter=47 channel=62
    -38, -6, 25, -27, -6, -9, -24, 0, -3,
    -- layer=2 filter=47 channel=63
    -6, 7, -8, -10, 11, 3, 47, 17, 18,
    -- layer=2 filter=48 channel=0
    16, 50, 44, 30, 44, 30, 53, 85, 6,
    -- layer=2 filter=48 channel=1
    1, -18, -11, 8, -1, -18, 26, 22, -17,
    -- layer=2 filter=48 channel=2
    30, 45, 38, 32, 45, 53, 49, 47, 48,
    -- layer=2 filter=48 channel=3
    24, 14, -12, 0, 13, 0, 6, -16, -2,
    -- layer=2 filter=48 channel=4
    -33, -7, 17, -49, -16, 28, -14, -23, 28,
    -- layer=2 filter=48 channel=5
    6, -14, -19, 44, 4, -39, 42, 0, -38,
    -- layer=2 filter=48 channel=6
    -44, -25, 12, -21, 3, 59, -37, 3, 65,
    -- layer=2 filter=48 channel=7
    9, 10, 16, -45, -11, -9, -14, 16, 43,
    -- layer=2 filter=48 channel=8
    24, -3, 10, 9, 32, 0, 8, 0, -10,
    -- layer=2 filter=48 channel=9
    30, 1, -25, 20, 31, -49, 25, -4, -28,
    -- layer=2 filter=48 channel=10
    8, 2, -13, 11, 3, 6, -7, 11, -7,
    -- layer=2 filter=48 channel=11
    -2, 3, -7, 12, -5, -40, 36, 20, -15,
    -- layer=2 filter=48 channel=12
    15, 17, 0, -4, 9, -1, 6, -19, -3,
    -- layer=2 filter=48 channel=13
    -9, 7, -5, 2, 0, -20, -12, 13, 27,
    -- layer=2 filter=48 channel=14
    -49, -32, -39, -25, -49, -37, -37, -17, 0,
    -- layer=2 filter=48 channel=15
    -14, -20, -16, 15, -25, -21, 16, -8, -42,
    -- layer=2 filter=48 channel=16
    -6, 1, 12, 0, 5, -3, 14, -17, 15,
    -- layer=2 filter=48 channel=17
    -19, -9, -12, -5, -29, -2, 22, -14, -31,
    -- layer=2 filter=48 channel=18
    -1, 14, -12, 7, 0, -15, -26, -19, 30,
    -- layer=2 filter=48 channel=19
    -4, 10, -3, 3, -21, 20, 2, 6, 7,
    -- layer=2 filter=48 channel=20
    21, -6, -18, -12, -19, -17, -5, -13, 1,
    -- layer=2 filter=48 channel=21
    -43, 20, 29, -58, -10, 50, -47, -9, 23,
    -- layer=2 filter=48 channel=22
    0, 0, -6, -1, 4, 13, 13, -10, 0,
    -- layer=2 filter=48 channel=23
    -22, 13, -6, -32, 11, 42, -42, -16, 7,
    -- layer=2 filter=48 channel=24
    -10, -8, 5, -4, 5, -11, -5, -2, 13,
    -- layer=2 filter=48 channel=25
    -17, -9, 7, -13, -3, 7, -14, 15, -15,
    -- layer=2 filter=48 channel=26
    -5, -4, -15, 10, 12, -4, -18, 17, -7,
    -- layer=2 filter=48 channel=27
    28, -7, 13, 5, 0, 5, 3, 12, 4,
    -- layer=2 filter=48 channel=28
    -15, 7, 14, 10, 6, 8, -14, 24, 28,
    -- layer=2 filter=48 channel=29
    6, -9, -1, 6, 18, -3, 36, 14, -28,
    -- layer=2 filter=48 channel=30
    -10, -23, -9, 16, 5, -6, 34, 3, -20,
    -- layer=2 filter=48 channel=31
    -14, -16, 7, -32, -31, 0, -33, -39, 16,
    -- layer=2 filter=48 channel=32
    17, 17, 18, 0, -7, -8, -1, -19, -16,
    -- layer=2 filter=48 channel=33
    12, -26, 44, 14, -36, 0, 36, 12, -28,
    -- layer=2 filter=48 channel=34
    2, 23, 13, 6, 15, 52, -45, -1, 12,
    -- layer=2 filter=48 channel=35
    20, 0, -1, 15, 7, -30, -26, -3, 40,
    -- layer=2 filter=48 channel=36
    9, 6, -43, 72, 26, -32, 50, 10, -26,
    -- layer=2 filter=48 channel=37
    -19, 14, 55, -17, 21, 32, -12, 8, 62,
    -- layer=2 filter=48 channel=38
    -25, -4, 36, -12, -3, 53, -48, 5, 58,
    -- layer=2 filter=48 channel=39
    -5, 1, -22, 25, -16, -14, 14, -9, -17,
    -- layer=2 filter=48 channel=40
    -15, -21, -16, -22, -14, -10, -3, -29, -29,
    -- layer=2 filter=48 channel=41
    15, 10, 13, 9, 28, 17, -1, 17, 15,
    -- layer=2 filter=48 channel=42
    20, 4, 35, 13, 20, 26, 26, 49, -42,
    -- layer=2 filter=48 channel=43
    2, 6, 2, -13, 19, 15, 34, 40, -4,
    -- layer=2 filter=48 channel=44
    -33, 25, 21, -74, -10, 41, -49, 19, 30,
    -- layer=2 filter=48 channel=45
    8, 15, -24, 8, 16, -29, -12, -2, 38,
    -- layer=2 filter=48 channel=46
    -6, 7, -7, 20, 7, -13, 30, 17, -8,
    -- layer=2 filter=48 channel=47
    0, -13, -7, 6, 11, 16, -19, -13, -4,
    -- layer=2 filter=48 channel=48
    -6, 9, 4, -16, -3, 1, -6, 31, 24,
    -- layer=2 filter=48 channel=49
    -28, 1, 15, -20, 27, 51, -53, -16, 15,
    -- layer=2 filter=48 channel=50
    -22, 5, -7, -4, 24, 0, -1, -1, -8,
    -- layer=2 filter=48 channel=51
    0, -4, 6, -18, 3, -9, -4, 16, 14,
    -- layer=2 filter=48 channel=52
    3, -12, -18, 0, 8, -27, 33, 28, -47,
    -- layer=2 filter=48 channel=53
    -3, -10, 55, -2, -27, 41, -7, -16, 26,
    -- layer=2 filter=48 channel=54
    24, 1, 7, 17, 11, 15, -11, -13, 2,
    -- layer=2 filter=48 channel=55
    15, -10, 11, -14, -1, -5, 0, 6, 11,
    -- layer=2 filter=48 channel=56
    -37, -17, 21, -34, -14, 22, -25, 4, 28,
    -- layer=2 filter=48 channel=57
    11, -14, 13, 13, 4, 8, 0, 1, -10,
    -- layer=2 filter=48 channel=58
    26, 3, -13, 15, 17, -38, 24, -8, -25,
    -- layer=2 filter=48 channel=59
    19, -7, -15, 6, 10, 0, -18, -9, 4,
    -- layer=2 filter=48 channel=60
    -60, -14, 0, -30, -30, -3, -32, -10, 4,
    -- layer=2 filter=48 channel=61
    -6, -3, -3, 1, 8, -10, -4, 18, -5,
    -- layer=2 filter=48 channel=62
    38, 0, 7, -2, 2, -13, 3, -4, -23,
    -- layer=2 filter=48 channel=63
    -15, -16, 8, 8, 0, 33, 21, 41, 23,
    -- layer=2 filter=49 channel=0
    -32, -4, -5, -55, -38, -1, -73, -41, -9,
    -- layer=2 filter=49 channel=1
    23, 6, -11, 32, -3, -4, 40, 25, 8,
    -- layer=2 filter=49 channel=2
    -18, -33, -35, -59, -28, -13, -46, -45, -13,
    -- layer=2 filter=49 channel=3
    -21, -16, -19, -1, -10, 5, -16, 2, 9,
    -- layer=2 filter=49 channel=4
    -10, -12, -14, 0, -37, 9, -45, -44, -6,
    -- layer=2 filter=49 channel=5
    42, 8, 12, 50, 7, 13, 40, 31, 27,
    -- layer=2 filter=49 channel=6
    7, -3, -16, 18, 30, 30, 16, 9, 1,
    -- layer=2 filter=49 channel=7
    24, -24, -30, 33, 22, -15, 54, 33, 1,
    -- layer=2 filter=49 channel=8
    44, 28, 23, 22, -12, -9, 37, 11, -3,
    -- layer=2 filter=49 channel=9
    28, 27, 46, -37, 36, 40, 52, 63, 28,
    -- layer=2 filter=49 channel=10
    -12, 0, -1, -11, 0, 4, 15, -1, 5,
    -- layer=2 filter=49 channel=11
    10, 6, 10, 34, 3, -7, 30, 1, 26,
    -- layer=2 filter=49 channel=12
    -13, -7, 11, 3, -4, 13, 2, -5, -10,
    -- layer=2 filter=49 channel=13
    -11, -8, -4, -5, -28, -16, -5, -2, 22,
    -- layer=2 filter=49 channel=14
    -2, -11, 21, 9, -10, 34, 22, 26, 24,
    -- layer=2 filter=49 channel=15
    33, 24, 9, 36, 5, 3, 21, 13, 11,
    -- layer=2 filter=49 channel=16
    0, 1, 7, 0, 0, -5, 0, -14, 19,
    -- layer=2 filter=49 channel=17
    27, 2, 4, 14, -1, 21, 1, 7, 0,
    -- layer=2 filter=49 channel=18
    8, -7, -5, -4, -8, 3, 15, 12, 43,
    -- layer=2 filter=49 channel=19
    6, 14, -25, 27, -14, -16, -15, 2, 0,
    -- layer=2 filter=49 channel=20
    -8, -1, 13, 8, -2, 16, 11, 28, 3,
    -- layer=2 filter=49 channel=21
    -44, -5, -16, -36, -22, -7, -30, -7, -14,
    -- layer=2 filter=49 channel=22
    -2, 15, -11, 7, 10, -6, -2, 4, -12,
    -- layer=2 filter=49 channel=23
    6, -16, -2, 13, 24, 26, -9, 10, 16,
    -- layer=2 filter=49 channel=24
    -8, 18, 13, 13, 11, 13, 0, 2, 2,
    -- layer=2 filter=49 channel=25
    5, -16, -16, -14, 2, -8, -10, -7, 4,
    -- layer=2 filter=49 channel=26
    -15, 2, 17, 1, 15, 1, -17, 7, -16,
    -- layer=2 filter=49 channel=27
    9, 29, 23, 1, 2, 26, 1, -4, 7,
    -- layer=2 filter=49 channel=28
    -7, -25, -20, -16, -21, 2, -23, -46, -18,
    -- layer=2 filter=49 channel=29
    -1, 3, 18, -10, -14, 14, 24, 20, 11,
    -- layer=2 filter=49 channel=30
    34, -5, -13, 12, 31, 1, 40, 5, 11,
    -- layer=2 filter=49 channel=31
    -21, 4, 24, -29, -27, -4, -11, -29, 10,
    -- layer=2 filter=49 channel=32
    -10, 2, -18, -8, -5, 6, -15, -13, 0,
    -- layer=2 filter=49 channel=33
    -13, 12, 19, -71, -2, -18, -62, 1, -19,
    -- layer=2 filter=49 channel=34
    12, 0, -20, 17, 17, 3, -21, -8, -36,
    -- layer=2 filter=49 channel=35
    -7, -21, -21, -22, 5, 8, -22, -19, 13,
    -- layer=2 filter=49 channel=36
    11, -10, -18, 17, 0, -24, 16, 16, -14,
    -- layer=2 filter=49 channel=37
    -11, -36, 3, -58, -34, -29, -77, -57, -47,
    -- layer=2 filter=49 channel=38
    -5, 5, -11, -6, 12, 39, -19, -30, 23,
    -- layer=2 filter=49 channel=39
    2, 4, 12, -9, -6, 11, -2, -4, -18,
    -- layer=2 filter=49 channel=40
    4, 13, 40, -14, -17, 21, -19, 15, -4,
    -- layer=2 filter=49 channel=41
    -8, 12, 39, -18, -22, 14, -4, -8, 24,
    -- layer=2 filter=49 channel=42
    -3, 6, 39, -14, -15, -29, -33, -50, -31,
    -- layer=2 filter=49 channel=43
    -15, -4, -22, -7, -3, 21, 1, 4, 2,
    -- layer=2 filter=49 channel=44
    -50, -37, -2, -56, -55, -18, -56, -58, -44,
    -- layer=2 filter=49 channel=45
    12, -11, -20, -38, -8, 3, 3, -5, -1,
    -- layer=2 filter=49 channel=46
    14, 19, 11, 15, 20, -27, -2, -26, -16,
    -- layer=2 filter=49 channel=47
    13, 15, 8, 15, 6, 14, 11, 14, 1,
    -- layer=2 filter=49 channel=48
    21, 2, -4, -56, -1, 6, -28, -5, 8,
    -- layer=2 filter=49 channel=49
    -41, -9, -8, -7, -10, 26, -27, -20, -11,
    -- layer=2 filter=49 channel=50
    12, 1, -5, 4, -6, 6, -11, 5, -9,
    -- layer=2 filter=49 channel=51
    11, -10, 10, -18, 13, -3, 2, -8, -13,
    -- layer=2 filter=49 channel=52
    32, 28, 58, -19, -15, 16, -26, -8, -5,
    -- layer=2 filter=49 channel=53
    6, -31, -23, 33, -14, -6, -34, -41, 15,
    -- layer=2 filter=49 channel=54
    3, -14, -3, 31, 21, 8, 6, -10, 3,
    -- layer=2 filter=49 channel=55
    14, -10, 10, 6, -7, 12, -5, -4, -3,
    -- layer=2 filter=49 channel=56
    -25, -4, -23, -29, -9, 25, -29, -16, -28,
    -- layer=2 filter=49 channel=57
    4, 17, -10, 21, -1, 1, 2, -3, -4,
    -- layer=2 filter=49 channel=58
    32, 21, 9, 34, 0, 0, 17, 0, 23,
    -- layer=2 filter=49 channel=59
    -9, 6, -2, 6, -5, 12, -4, 1, 6,
    -- layer=2 filter=49 channel=60
    -7, -36, -3, 2, 2, 2, 25, 7, 10,
    -- layer=2 filter=49 channel=61
    11, 3, 9, -16, -2, -1, -14, -8, -11,
    -- layer=2 filter=49 channel=62
    0, 6, 18, -29, -19, -6, -34, -51, 11,
    -- layer=2 filter=49 channel=63
    -4, -4, -44, 5, 33, -28, 20, 5, -26,
    -- layer=2 filter=50 channel=0
    -9, -25, -33, -9, -33, -38, -23, -40, -21,
    -- layer=2 filter=50 channel=1
    -3, -1, -5, -14, -17, -20, 3, -16, -5,
    -- layer=2 filter=50 channel=2
    -26, -37, -9, 5, -40, -16, -9, -17, -26,
    -- layer=2 filter=50 channel=3
    17, 9, 14, -7, 31, 22, 7, -1, 7,
    -- layer=2 filter=50 channel=4
    -17, 11, -13, 21, 39, -3, 42, 40, 15,
    -- layer=2 filter=50 channel=5
    16, 5, -19, 10, -26, -10, -22, -30, 0,
    -- layer=2 filter=50 channel=6
    -22, -5, -1, 5, 26, 8, 10, 20, -6,
    -- layer=2 filter=50 channel=7
    -46, 2, -32, 20, 46, 27, 12, 21, 14,
    -- layer=2 filter=50 channel=8
    5, 7, -15, 5, -4, 6, 10, 46, 10,
    -- layer=2 filter=50 channel=9
    -35, -19, -22, 7, -8, -16, -21, -63, -25,
    -- layer=2 filter=50 channel=10
    -11, -6, -10, 17, -13, -12, -8, 7, -15,
    -- layer=2 filter=50 channel=11
    18, 0, -8, 5, -16, -4, -30, -9, -24,
    -- layer=2 filter=50 channel=12
    0, 13, -15, -11, 11, -3, 15, -12, 3,
    -- layer=2 filter=50 channel=13
    16, -18, -15, 4, 22, 20, 18, 36, 15,
    -- layer=2 filter=50 channel=14
    28, 3, 29, 2, 6, 24, -6, 11, -4,
    -- layer=2 filter=50 channel=15
    11, 17, 25, -24, -27, -7, 19, 0, -3,
    -- layer=2 filter=50 channel=16
    15, 13, 1, 13, 9, 10, -2, -15, 2,
    -- layer=2 filter=50 channel=17
    -5, 10, 2, -21, -28, -12, -3, -6, -30,
    -- layer=2 filter=50 channel=18
    14, -6, -13, 0, 3, 31, 22, 12, 28,
    -- layer=2 filter=50 channel=19
    19, 9, 14, 11, -10, -3, -8, -12, 17,
    -- layer=2 filter=50 channel=20
    -5, -22, 9, -6, -7, 10, -4, -13, 11,
    -- layer=2 filter=50 channel=21
    7, 13, -5, -16, 1, -11, 5, -9, -26,
    -- layer=2 filter=50 channel=22
    20, 8, -4, 12, -5, -8, 14, 13, 19,
    -- layer=2 filter=50 channel=23
    -16, 18, 9, -7, 12, -1, -5, -9, 10,
    -- layer=2 filter=50 channel=24
    20, 13, -13, 12, 12, 12, 4, -1, -10,
    -- layer=2 filter=50 channel=25
    -6, -15, -13, -9, -1, 6, 14, -8, 0,
    -- layer=2 filter=50 channel=26
    9, 9, 9, -4, 7, 8, 10, -12, 0,
    -- layer=2 filter=50 channel=27
    9, 0, 2, -13, 8, -22, 7, -10, -17,
    -- layer=2 filter=50 channel=28
    9, 16, 5, 16, -11, -8, 28, -3, 1,
    -- layer=2 filter=50 channel=29
    -2, -23, 3, -23, -10, 6, -19, -35, -16,
    -- layer=2 filter=50 channel=30
    12, 14, -17, 2, -6, -28, -21, -7, -12,
    -- layer=2 filter=50 channel=31
    -30, 15, 2, 20, 0, 15, 4, 2, 11,
    -- layer=2 filter=50 channel=32
    -7, -11, 6, 5, -13, -8, 14, -1, -15,
    -- layer=2 filter=50 channel=33
    -16, 2, -12, -13, -37, -35, -6, -27, -18,
    -- layer=2 filter=50 channel=34
    5, 13, 7, -10, 11, -23, 12, 0, 15,
    -- layer=2 filter=50 channel=35
    9, -24, 3, 7, 2, 0, 16, 9, -7,
    -- layer=2 filter=50 channel=36
    -7, 2, -3, -20, -21, -28, 14, 0, 8,
    -- layer=2 filter=50 channel=37
    -13, -1, 5, 15, -3, -26, 17, -5, -27,
    -- layer=2 filter=50 channel=38
    3, 12, -3, 1, 8, 8, 11, 4, -5,
    -- layer=2 filter=50 channel=39
    1, 6, 6, 50, 42, 34, -2, -5, -9,
    -- layer=2 filter=50 channel=40
    0, 3, 21, 14, 3, 33, 40, 34, 26,
    -- layer=2 filter=50 channel=41
    -26, -4, 0, -7, 25, 0, -6, -34, -7,
    -- layer=2 filter=50 channel=42
    0, -25, -15, -16, -53, -7, -19, -2, 17,
    -- layer=2 filter=50 channel=43
    -11, -6, -37, -27, -19, -26, -51, -27, -8,
    -- layer=2 filter=50 channel=44
    -15, 3, -2, -27, 1, 12, -16, -11, -9,
    -- layer=2 filter=50 channel=45
    31, 5, 0, 4, 16, 15, 30, 4, 8,
    -- layer=2 filter=50 channel=46
    -13, -1, -13, 55, 44, 18, 4, 18, 11,
    -- layer=2 filter=50 channel=47
    -5, 4, -1, 0, 17, 10, 5, 16, -10,
    -- layer=2 filter=50 channel=48
    28, -11, 27, 9, 10, -12, 33, -5, 20,
    -- layer=2 filter=50 channel=49
    3, -14, -3, -29, -10, -18, -20, -11, -1,
    -- layer=2 filter=50 channel=50
    -16, -7, 21, -18, -15, 13, 14, -13, -2,
    -- layer=2 filter=50 channel=51
    -4, 13, 0, 4, -18, -4, 11, -8, 0,
    -- layer=2 filter=50 channel=52
    -27, -17, -48, 9, -33, -26, -17, -23, -18,
    -- layer=2 filter=50 channel=53
    12, -4, 9, 13, 26, 9, 36, 58, -2,
    -- layer=2 filter=50 channel=54
    23, 6, -17, -3, -13, -4, -24, -3, 0,
    -- layer=2 filter=50 channel=55
    -13, -14, 3, -4, -18, 4, -5, -6, 1,
    -- layer=2 filter=50 channel=56
    17, 9, 21, -15, -6, -24, -15, 1, 0,
    -- layer=2 filter=50 channel=57
    -15, 15, -6, -17, 2, -3, -4, -5, 20,
    -- layer=2 filter=50 channel=58
    -21, -31, -27, 0, -7, -12, -23, -24, 11,
    -- layer=2 filter=50 channel=59
    -11, 8, 19, -6, 11, 0, -9, 5, 12,
    -- layer=2 filter=50 channel=60
    -17, 22, -14, -16, -5, 25, -18, -19, 14,
    -- layer=2 filter=50 channel=61
    -17, -15, -5, -5, -1, 15, -5, 13, 9,
    -- layer=2 filter=50 channel=62
    -54, -36, -7, 17, 0, 13, -51, -57, -65,
    -- layer=2 filter=50 channel=63
    -18, 5, 27, 6, 45, 50, 23, 4, 19,
    -- layer=2 filter=51 channel=0
    0, 2, 2, -32, -7, -8, -4, -42, -34,
    -- layer=2 filter=51 channel=1
    5, -2, 0, 8, -7, 14, 25, -2, -13,
    -- layer=2 filter=51 channel=2
    -39, 21, 73, -34, 29, 39, -1, -55, -10,
    -- layer=2 filter=51 channel=3
    -1, -2, -11, -13, -5, 4, -2, -30, -8,
    -- layer=2 filter=51 channel=4
    28, -5, 57, 22, 11, 40, 8, 3, -8,
    -- layer=2 filter=51 channel=5
    1, 11, 8, 26, 2, -9, -6, 7, 23,
    -- layer=2 filter=51 channel=6
    6, -3, 17, -52, 6, -28, -18, -32, -29,
    -- layer=2 filter=51 channel=7
    -2, 0, 20, 2, 13, 23, 25, -5, 37,
    -- layer=2 filter=51 channel=8
    -3, 0, -22, 5, 0, -4, 0, 6, 11,
    -- layer=2 filter=51 channel=9
    -5, 9, 24, -61, 0, 11, 5, -7, 9,
    -- layer=2 filter=51 channel=10
    0, -6, 14, -7, -15, 9, 8, -4, 18,
    -- layer=2 filter=51 channel=11
    -8, -12, -13, -12, 10, -11, 14, -19, -10,
    -- layer=2 filter=51 channel=12
    15, 20, 0, -5, -9, -7, -13, -3, 14,
    -- layer=2 filter=51 channel=13
    26, -3, 18, -1, -7, -12, -60, 0, -11,
    -- layer=2 filter=51 channel=14
    10, -2, -18, 20, 12, 6, -5, -15, 12,
    -- layer=2 filter=51 channel=15
    -4, -16, -27, 6, 17, 5, 21, -25, 6,
    -- layer=2 filter=51 channel=16
    -3, -11, 5, -13, -2, 0, 16, -2, 0,
    -- layer=2 filter=51 channel=17
    -10, -5, -23, 9, -19, -14, 22, 12, 15,
    -- layer=2 filter=51 channel=18
    16, 8, 0, -23, -35, 9, -50, -7, -3,
    -- layer=2 filter=51 channel=19
    -7, 21, 9, 23, 17, 7, -7, 19, 6,
    -- layer=2 filter=51 channel=20
    38, 1, -11, 23, -6, -9, -10, -2, 26,
    -- layer=2 filter=51 channel=21
    -7, -4, -15, -2, -15, -30, 5, 1, -32,
    -- layer=2 filter=51 channel=22
    12, 2, -9, 3, -14, -10, -2, 0, 10,
    -- layer=2 filter=51 channel=23
    1, -7, -1, -35, -9, -44, -4, -28, -31,
    -- layer=2 filter=51 channel=24
    -8, -7, -5, 0, 0, 25, 10, -10, 20,
    -- layer=2 filter=51 channel=25
    11, 12, -6, -13, 6, 17, 1, 4, 9,
    -- layer=2 filter=51 channel=26
    9, 12, -1, 0, -6, 15, 8, -5, -13,
    -- layer=2 filter=51 channel=27
    12, 9, -2, -7, -4, 2, 22, -12, 17,
    -- layer=2 filter=51 channel=28
    4, 42, 31, -1, 22, 29, -12, -13, 0,
    -- layer=2 filter=51 channel=29
    16, 13, -21, 0, 1, 19, 16, 7, 1,
    -- layer=2 filter=51 channel=30
    -5, 1, -27, 5, -24, -13, 19, -1, -14,
    -- layer=2 filter=51 channel=31
    -4, 0, -26, -24, -10, -22, 11, 18, -19,
    -- layer=2 filter=51 channel=32
    -14, 8, -4, 10, 19, 8, -6, -12, 2,
    -- layer=2 filter=51 channel=33
    14, 30, 0, 27, 28, -18, -13, 2, -3,
    -- layer=2 filter=51 channel=34
    -13, -23, 5, -54, -18, -2, -43, -36, -37,
    -- layer=2 filter=51 channel=35
    17, 0, -8, -18, -32, -20, -67, -27, -31,
    -- layer=2 filter=51 channel=36
    8, 0, 9, -4, -28, -22, -12, -29, -48,
    -- layer=2 filter=51 channel=37
    -19, -13, -22, 21, -2, 15, 18, 25, -20,
    -- layer=2 filter=51 channel=38
    8, 2, 31, -22, -3, -16, -21, -25, -23,
    -- layer=2 filter=51 channel=39
    -14, -9, -33, -22, 2, -25, -1, 9, -3,
    -- layer=2 filter=51 channel=40
    0, -1, -20, 9, -4, 19, 13, 27, 34,
    -- layer=2 filter=51 channel=41
    0, -8, -8, 1, -11, -1, -5, -29, -16,
    -- layer=2 filter=51 channel=42
    -16, -35, -67, 18, 14, 6, -15, 7, -19,
    -- layer=2 filter=51 channel=43
    -36, 10, 3, -35, -34, -6, -12, -31, -21,
    -- layer=2 filter=51 channel=44
    21, -46, 14, -49, -42, -8, -15, -73, -26,
    -- layer=2 filter=51 channel=45
    -2, 9, 4, -3, -46, -10, -38, -1, -12,
    -- layer=2 filter=51 channel=46
    -3, -49, -50, -41, -27, -43, 5, -6, 12,
    -- layer=2 filter=51 channel=47
    12, -9, 14, -6, 14, 1, 10, -1, -16,
    -- layer=2 filter=51 channel=48
    -17, 6, 10, 8, 21, 1, -29, -22, -15,
    -- layer=2 filter=51 channel=49
    -7, -30, -39, -36, -51, -34, -11, -27, -47,
    -- layer=2 filter=51 channel=50
    11, 5, 20, 11, -23, -2, -1, -1, 5,
    -- layer=2 filter=51 channel=51
    18, -18, -19, -10, -3, 3, -6, 4, -19,
    -- layer=2 filter=51 channel=52
    0, 14, 18, 13, 80, 36, -1, -12, 13,
    -- layer=2 filter=51 channel=53
    -14, 1, 43, -13, -23, 14, -23, -15, -10,
    -- layer=2 filter=51 channel=54
    0, -26, -25, -17, -31, -27, -19, -15, -50,
    -- layer=2 filter=51 channel=55
    0, -3, 3, -18, -13, 6, -11, -8, 3,
    -- layer=2 filter=51 channel=56
    9, -29, 51, -21, 0, 4, -35, -16, 0,
    -- layer=2 filter=51 channel=57
    -45, -28, -17, -4, -23, -39, -12, -11, -2,
    -- layer=2 filter=51 channel=58
    10, 10, -22, 13, -11, -20, -11, 0, -13,
    -- layer=2 filter=51 channel=59
    -13, 0, 16, 11, 0, 18, -8, 16, -8,
    -- layer=2 filter=51 channel=60
    8, 5, -12, -24, -13, 5, -3, -62, -30,
    -- layer=2 filter=51 channel=61
    -9, 0, 16, -14, 15, -15, -12, 15, 16,
    -- layer=2 filter=51 channel=62
    12, 16, -28, 3, -8, -26, 35, -8, -5,
    -- layer=2 filter=51 channel=63
    0, -15, 25, -10, 5, 28, 17, 19, 16,
    -- layer=2 filter=52 channel=0
    32, -9, 25, 21, 21, 22, 21, 37, 9,
    -- layer=2 filter=52 channel=1
    0, -6, -10, -23, -19, -3, 13, 8, 12,
    -- layer=2 filter=52 channel=2
    -13, -23, 0, 18, -10, -3, 4, -11, 11,
    -- layer=2 filter=52 channel=3
    3, -2, -1, -18, -11, 14, -16, 14, -15,
    -- layer=2 filter=52 channel=4
    -2, 23, 12, -28, -16, -5, -18, -11, 22,
    -- layer=2 filter=52 channel=5
    20, 8, 25, -3, -6, 22, -15, -6, 23,
    -- layer=2 filter=52 channel=6
    -20, 11, 16, -22, 15, 9, -6, 7, -12,
    -- layer=2 filter=52 channel=7
    -4, 44, 47, -93, 2, 40, -94, -36, -28,
    -- layer=2 filter=52 channel=8
    -20, 18, -22, -28, -10, -6, -17, -3, -26,
    -- layer=2 filter=52 channel=9
    1, 17, -13, 16, 24, -31, -17, -36, -30,
    -- layer=2 filter=52 channel=10
    -12, 9, 19, -6, -12, 10, -14, 3, 14,
    -- layer=2 filter=52 channel=11
    -5, -14, -4, 16, -2, 12, -12, -7, 8,
    -- layer=2 filter=52 channel=12
    16, -18, 15, -16, 6, -10, 5, -10, -13,
    -- layer=2 filter=52 channel=13
    15, -6, -7, 16, 17, -2, -10, 0, -7,
    -- layer=2 filter=52 channel=14
    8, 12, 4, -1, 0, -5, -10, -21, 8,
    -- layer=2 filter=52 channel=15
    0, 10, 5, -24, 2, -5, -26, 4, 19,
    -- layer=2 filter=52 channel=16
    4, 6, -7, 9, -6, -15, -8, -12, 9,
    -- layer=2 filter=52 channel=17
    18, -2, 0, 6, 1, -2, -17, -24, 11,
    -- layer=2 filter=52 channel=18
    13, 11, -9, -5, -5, -3, 14, 10, 4,
    -- layer=2 filter=52 channel=19
    -2, 15, -1, 26, -4, 4, -9, -5, 12,
    -- layer=2 filter=52 channel=20
    1, 3, -26, 15, 10, -4, -6, 0, -7,
    -- layer=2 filter=52 channel=21
    15, 25, 15, 7, 17, 17, -4, 1, 19,
    -- layer=2 filter=52 channel=22
    6, 3, 4, -7, -14, 9, -5, -13, 14,
    -- layer=2 filter=52 channel=23
    18, -10, 2, -7, 24, -7, -5, 14, -9,
    -- layer=2 filter=52 channel=24
    10, -13, -14, 21, 9, -19, -6, -1, 23,
    -- layer=2 filter=52 channel=25
    16, -9, -14, -2, -1, 10, -16, -15, 7,
    -- layer=2 filter=52 channel=26
    2, -10, -7, -2, 10, -1, 7, -9, -2,
    -- layer=2 filter=52 channel=27
    -10, -2, -13, -9, -14, -27, 1, -19, 3,
    -- layer=2 filter=52 channel=28
    -23, 28, 9, 1, 3, -9, -24, -16, 20,
    -- layer=2 filter=52 channel=29
    3, -2, 16, 33, 17, 39, 13, 0, -7,
    -- layer=2 filter=52 channel=30
    -3, 19, -4, -10, 1, 8, 8, -19, -13,
    -- layer=2 filter=52 channel=31
    7, 12, 3, 24, 39, -9, -2, 3, -13,
    -- layer=2 filter=52 channel=32
    25, -13, -5, -2, 5, 0, 8, -14, 17,
    -- layer=2 filter=52 channel=33
    -12, -10, 0, 18, 2, -19, 20, -1, -1,
    -- layer=2 filter=52 channel=34
    5, -10, 15, -20, 9, -15, -8, 8, 26,
    -- layer=2 filter=52 channel=35
    14, -1, -14, 1, 22, 8, -4, 10, 16,
    -- layer=2 filter=52 channel=36
    -5, 11, 6, -14, -12, 9, -18, 15, -3,
    -- layer=2 filter=52 channel=37
    17, 32, -9, 16, 40, 20, -8, 30, -11,
    -- layer=2 filter=52 channel=38
    -3, -10, 5, -9, 11, -12, 2, 5, -8,
    -- layer=2 filter=52 channel=39
    5, -8, 7, 34, 58, 7, -17, 15, 30,
    -- layer=2 filter=52 channel=40
    -15, 9, -1, 12, -1, -28, 6, 25, -13,
    -- layer=2 filter=52 channel=41
    9, -8, -1, 27, 19, -3, -13, 15, -24,
    -- layer=2 filter=52 channel=42
    -19, -5, -29, -13, -18, 39, -25, 30, -8,
    -- layer=2 filter=52 channel=43
    -10, -27, 13, 4, -30, 6, 5, 4, 0,
    -- layer=2 filter=52 channel=44
    4, -13, 6, 1, 8, 23, 13, 7, 7,
    -- layer=2 filter=52 channel=45
    11, 29, 10, 18, 0, 21, 17, 44, -5,
    -- layer=2 filter=52 channel=46
    -17, -30, 5, -2, 54, 42, -8, 14, 9,
    -- layer=2 filter=52 channel=47
    -1, -16, 12, 14, 0, -13, -4, 17, 13,
    -- layer=2 filter=52 channel=48
    0, 35, 3, 0, 30, 0, 5, 26, 9,
    -- layer=2 filter=52 channel=49
    -10, -4, -26, 0, 27, 8, 10, 11, 1,
    -- layer=2 filter=52 channel=50
    -12, -9, -5, -12, 2, -11, 21, 2, 8,
    -- layer=2 filter=52 channel=51
    14, -9, 18, 14, -7, -15, 1, -2, 13,
    -- layer=2 filter=52 channel=52
    -25, -46, -15, 17, 33, 28, 19, -15, 0,
    -- layer=2 filter=52 channel=53
    0, 13, 9, -30, -22, -26, -77, -6, -35,
    -- layer=2 filter=52 channel=54
    -14, -25, -20, 3, -10, 13, -10, 27, 1,
    -- layer=2 filter=52 channel=55
    4, -5, 14, -7, -3, 14, 17, -8, 8,
    -- layer=2 filter=52 channel=56
    -6, -13, -2, 9, 24, -19, 5, 10, 15,
    -- layer=2 filter=52 channel=57
    -2, -4, -24, -4, -12, 11, -6, 2, -2,
    -- layer=2 filter=52 channel=58
    22, -10, 5, 23, -16, 10, 13, -15, -11,
    -- layer=2 filter=52 channel=59
    14, -11, 14, -8, -7, -18, 5, 5, 9,
    -- layer=2 filter=52 channel=60
    -17, -22, -19, -31, -19, 9, 6, 15, 0,
    -- layer=2 filter=52 channel=61
    13, 0, -12, -17, 16, -11, -4, 1, 5,
    -- layer=2 filter=52 channel=62
    23, 29, 71, 24, 9, -1, 6, 8, 28,
    -- layer=2 filter=52 channel=63
    13, 31, 42, -71, -4, 18, -29, -43, -18,
    -- layer=2 filter=53 channel=0
    36, 30, 41, 58, 63, 22, 28, 7, 13,
    -- layer=2 filter=53 channel=1
    8, 8, 5, -9, 21, 31, 5, 9, 11,
    -- layer=2 filter=53 channel=2
    -8, 6, 10, 34, 37, 45, 37, 16, -2,
    -- layer=2 filter=53 channel=3
    2, 3, -22, 6, -6, 25, -16, 17, -10,
    -- layer=2 filter=53 channel=4
    -5, -4, 19, -15, -7, 9, 12, 10, 20,
    -- layer=2 filter=53 channel=5
    16, 3, 10, 5, 17, 15, 20, 11, 19,
    -- layer=2 filter=53 channel=6
    -5, -1, 13, -7, -5, 16, -19, -25, -7,
    -- layer=2 filter=53 channel=7
    -42, -69, -41, -11, -45, -22, 36, -23, -8,
    -- layer=2 filter=53 channel=8
    0, -10, 23, -25, -10, 4, -25, -59, -8,
    -- layer=2 filter=53 channel=9
    -32, -20, -28, 48, 31, 3, 6, 17, 16,
    -- layer=2 filter=53 channel=10
    16, 12, -10, 11, 2, 12, -17, 8, 14,
    -- layer=2 filter=53 channel=11
    8, 17, 1, -2, 27, 0, 0, 1, 29,
    -- layer=2 filter=53 channel=12
    -6, -16, -4, -16, -17, 0, 16, 0, 12,
    -- layer=2 filter=53 channel=13
    22, 6, 4, -16, -64, -45, -23, -12, 15,
    -- layer=2 filter=53 channel=14
    3, 4, 5, -12, 18, -1, -1, 15, 28,
    -- layer=2 filter=53 channel=15
    -7, 10, -3, -12, 34, 0, -6, 13, 18,
    -- layer=2 filter=53 channel=16
    8, 10, -15, -19, -7, 13, 3, 2, 8,
    -- layer=2 filter=53 channel=17
    8, -5, 5, 4, 38, 8, 10, 18, -2,
    -- layer=2 filter=53 channel=18
    23, -11, 19, -14, -41, -35, -36, -36, 2,
    -- layer=2 filter=53 channel=19
    5, -10, -8, 1, -16, 20, -7, -8, -12,
    -- layer=2 filter=53 channel=20
    0, -4, -15, 3, -29, 9, -14, -19, 10,
    -- layer=2 filter=53 channel=21
    9, 6, -9, 30, 17, 12, -3, 6, -8,
    -- layer=2 filter=53 channel=22
    2, -15, -14, 8, -11, 7, -17, 2, -14,
    -- layer=2 filter=53 channel=23
    -7, 28, 20, -5, 18, -6, 16, 9, -9,
    -- layer=2 filter=53 channel=24
    13, 25, 2, -4, 16, 18, 8, 12, 10,
    -- layer=2 filter=53 channel=25
    -6, -7, 5, 0, 5, 9, 14, -16, 12,
    -- layer=2 filter=53 channel=26
    12, 2, 0, 8, 5, -16, -16, 12, -3,
    -- layer=2 filter=53 channel=27
    5, -17, 10, -8, 0, 23, -4, 5, 16,
    -- layer=2 filter=53 channel=28
    -10, 25, -10, 6, 0, 26, 32, 16, 31,
    -- layer=2 filter=53 channel=29
    36, 9, -20, 14, -23, -13, -11, -7, 7,
    -- layer=2 filter=53 channel=30
    5, 0, 18, -12, 14, 19, 5, 0, -8,
    -- layer=2 filter=53 channel=31
    10, -9, 7, 2, -47, -20, 2, -44, 0,
    -- layer=2 filter=53 channel=32
    3, 6, 14, -2, -16, -14, -2, -14, -1,
    -- layer=2 filter=53 channel=33
    -4, 0, -19, 19, 8, 5, 0, 18, 15,
    -- layer=2 filter=53 channel=34
    -5, 11, 3, 11, -13, 12, 3, -12, -29,
    -- layer=2 filter=53 channel=35
    9, -7, 8, -22, -53, -32, -21, -14, 9,
    -- layer=2 filter=53 channel=36
    -31, -13, 25, 0, -8, 34, -4, 23, 19,
    -- layer=2 filter=53 channel=37
    -21, 15, 32, -8, 30, 16, 9, -3, -2,
    -- layer=2 filter=53 channel=38
    -9, 11, 22, 3, -18, 0, -9, 9, -3,
    -- layer=2 filter=53 channel=39
    4, 0, -1, -14, -29, -17, -12, -45, -28,
    -- layer=2 filter=53 channel=40
    -6, -7, -23, -2, -7, 12, -18, -12, 11,
    -- layer=2 filter=53 channel=41
    25, 4, -4, 5, -15, -29, 16, -5, -19,
    -- layer=2 filter=53 channel=42
    11, -23, -21, -21, -28, -51, -31, -45, -34,
    -- layer=2 filter=53 channel=43
    8, 20, -6, 24, 25, -19, 13, -22, -41,
    -- layer=2 filter=53 channel=44
    -7, 2, -12, 13, 13, -14, -9, 2, -9,
    -- layer=2 filter=53 channel=45
    0, 1, 1, -9, -18, -21, -23, -22, 16,
    -- layer=2 filter=53 channel=46
    -11, -23, 0, -1, -56, -18, -39, -35, -27,
    -- layer=2 filter=53 channel=47
    3, -10, -4, -18, -11, 0, -16, 14, 13,
    -- layer=2 filter=53 channel=48
    17, -8, -16, 41, -1, 44, 21, 27, 0,
    -- layer=2 filter=53 channel=49
    -6, 24, 20, 14, 6, 0, 0, 0, -12,
    -- layer=2 filter=53 channel=50
    -2, 20, -11, -6, -1, 1, -9, 13, 6,
    -- layer=2 filter=53 channel=51
    2, 0, -8, 17, -8, 15, 4, -18, -13,
    -- layer=2 filter=53 channel=52
    -11, 2, 10, 3, 5, -1, 23, -3, 30,
    -- layer=2 filter=53 channel=53
    3, -8, 12, -21, -16, 19, -9, -11, 6,
    -- layer=2 filter=53 channel=54
    -3, 9, 8, 11, 8, -15, -13, -1, 1,
    -- layer=2 filter=53 channel=55
    16, -3, -2, 6, -15, -11, 18, 12, 15,
    -- layer=2 filter=53 channel=56
    -8, 1, 20, -13, 0, -12, 24, -2, 1,
    -- layer=2 filter=53 channel=57
    -3, -10, -6, 22, 12, -9, 16, -8, 2,
    -- layer=2 filter=53 channel=58
    11, -5, 23, 2, 10, 16, 18, 4, 28,
    -- layer=2 filter=53 channel=59
    -9, 5, -6, -18, -15, -5, 15, -16, 0,
    -- layer=2 filter=53 channel=60
    -4, 0, -17, 37, 24, -18, 25, 41, 0,
    -- layer=2 filter=53 channel=61
    -10, -8, 5, -5, 10, 1, 9, 2, 1,
    -- layer=2 filter=53 channel=62
    -2, 19, 10, -2, 13, 21, -3, -16, -28,
    -- layer=2 filter=53 channel=63
    -24, -30, -29, 1, 15, -13, 30, -4, 2,
    -- layer=2 filter=54 channel=0
    9, 8, -10, 17, 7, 0, 10, -1, 4,
    -- layer=2 filter=54 channel=1
    0, 10, -11, 0, -10, 8, -7, 5, 1,
    -- layer=2 filter=54 channel=2
    -6, -15, 17, 3, -10, -17, 1, -4, 4,
    -- layer=2 filter=54 channel=3
    9, 0, -16, -13, -12, 11, -14, 1, 7,
    -- layer=2 filter=54 channel=4
    -13, -19, 5, 1, -22, -5, 1, -10, -2,
    -- layer=2 filter=54 channel=5
    -16, 0, -21, 6, -6, -17, 0, 15, 10,
    -- layer=2 filter=54 channel=6
    -17, 13, 10, 6, -6, -18, 8, -18, 13,
    -- layer=2 filter=54 channel=7
    -14, -12, -2, 10, -19, -3, -4, -20, 13,
    -- layer=2 filter=54 channel=8
    1, -18, 3, 7, -18, -8, -9, -6, 13,
    -- layer=2 filter=54 channel=9
    19, -2, 7, -2, -8, 10, -7, 2, -16,
    -- layer=2 filter=54 channel=10
    1, -11, -17, -14, 14, 6, 7, -16, -7,
    -- layer=2 filter=54 channel=11
    14, 6, -4, 9, -18, 0, -16, 4, -18,
    -- layer=2 filter=54 channel=12
    0, 2, -3, -17, 8, -12, -8, -7, -6,
    -- layer=2 filter=54 channel=13
    -17, -15, -9, 5, 7, -13, 0, 10, -17,
    -- layer=2 filter=54 channel=14
    1, -8, -4, 6, -5, -18, -19, 10, -12,
    -- layer=2 filter=54 channel=15
    -14, -6, -17, 6, 0, -12, 5, 1, -11,
    -- layer=2 filter=54 channel=16
    -3, 0, -5, -7, 8, 0, -10, 14, 9,
    -- layer=2 filter=54 channel=17
    -6, -9, 3, 14, -9, -7, 12, -21, 14,
    -- layer=2 filter=54 channel=18
    -19, 10, 12, 6, 0, 7, 7, -10, 8,
    -- layer=2 filter=54 channel=19
    2, -2, 15, 13, -4, 11, 10, 8, 2,
    -- layer=2 filter=54 channel=20
    -9, -1, 8, -18, 5, -7, -5, -11, -20,
    -- layer=2 filter=54 channel=21
    -1, -8, 9, -6, -2, 2, -16, 3, 7,
    -- layer=2 filter=54 channel=22
    -3, 15, -9, 1, 2, -18, 12, -10, -18,
    -- layer=2 filter=54 channel=23
    -11, 4, -13, 11, -14, -1, 4, -13, -1,
    -- layer=2 filter=54 channel=24
    -1, 0, 16, -1, -4, 0, 7, 5, -10,
    -- layer=2 filter=54 channel=25
    12, -15, -8, 16, 1, 6, 11, 1, -5,
    -- layer=2 filter=54 channel=26
    -14, 11, -13, 10, 0, 6, -1, -17, 0,
    -- layer=2 filter=54 channel=27
    -3, 12, 3, 1, -15, 15, 14, -4, -14,
    -- layer=2 filter=54 channel=28
    -17, -8, 2, -17, 1, 0, -7, 10, -21,
    -- layer=2 filter=54 channel=29
    2, -18, 0, -12, -18, 13, -8, -4, -18,
    -- layer=2 filter=54 channel=30
    11, -5, 15, -11, -17, -15, -11, 8, -4,
    -- layer=2 filter=54 channel=31
    -14, -9, -11, -11, -17, -6, 8, 7, -4,
    -- layer=2 filter=54 channel=32
    0, -5, 6, 9, 5, 1, -12, -5, 7,
    -- layer=2 filter=54 channel=33
    -7, 3, -12, 0, 16, -8, -15, 12, -15,
    -- layer=2 filter=54 channel=34
    6, 7, 0, -20, -11, 11, 14, -18, 3,
    -- layer=2 filter=54 channel=35
    -17, 1, -1, 1, -2, 3, 8, -3, 9,
    -- layer=2 filter=54 channel=36
    -2, -7, 10, -11, -1, -2, -10, -6, 15,
    -- layer=2 filter=54 channel=37
    13, 12, -3, -16, 2, -18, -8, 0, -11,
    -- layer=2 filter=54 channel=38
    14, 1, -10, -12, -15, -18, -1, 9, -14,
    -- layer=2 filter=54 channel=39
    -9, 9, -14, -7, -3, 14, -14, 11, -9,
    -- layer=2 filter=54 channel=40
    -20, -9, 3, -12, -15, -7, -3, -2, 3,
    -- layer=2 filter=54 channel=41
    -14, 5, -6, -18, 7, 0, -13, 12, 6,
    -- layer=2 filter=54 channel=42
    6, 12, 12, 7, -1, 5, 9, -4, -13,
    -- layer=2 filter=54 channel=43
    8, -17, -4, -7, -20, -11, -1, -2, -14,
    -- layer=2 filter=54 channel=44
    10, -16, -15, 8, 1, 2, 10, -4, -20,
    -- layer=2 filter=54 channel=45
    7, -5, -12, -1, -13, -3, -10, 0, -14,
    -- layer=2 filter=54 channel=46
    -6, 1, 10, -19, -9, -5, 11, 12, 0,
    -- layer=2 filter=54 channel=47
    12, 5, 1, 1, 10, -15, -19, 2, -2,
    -- layer=2 filter=54 channel=48
    -13, -11, -13, 7, -15, -2, -16, 2, -6,
    -- layer=2 filter=54 channel=49
    -10, -18, 5, -21, -15, 6, -10, -1, -6,
    -- layer=2 filter=54 channel=50
    4, -9, -15, -1, 1, 9, -11, 13, -3,
    -- layer=2 filter=54 channel=51
    -4, 5, 18, -12, 5, -15, -16, 1, 7,
    -- layer=2 filter=54 channel=52
    11, -16, -14, -3, 5, -11, 3, 11, -2,
    -- layer=2 filter=54 channel=53
    11, -22, 11, -12, 0, -3, -4, 13, 0,
    -- layer=2 filter=54 channel=54
    -5, 11, 8, 7, -21, 9, 0, 3, 0,
    -- layer=2 filter=54 channel=55
    -6, 14, -1, -8, -1, 17, 15, -15, 9,
    -- layer=2 filter=54 channel=56
    4, 2, -14, -16, -17, 13, -17, 12, 10,
    -- layer=2 filter=54 channel=57
    15, 8, -13, -17, 4, -10, -17, -18, -18,
    -- layer=2 filter=54 channel=58
    13, 16, -11, -19, 0, 10, -2, -21, 14,
    -- layer=2 filter=54 channel=59
    12, -6, 8, 8, -3, 17, -3, -2, -14,
    -- layer=2 filter=54 channel=60
    -16, 4, 0, -15, -15, 8, -10, 6, 2,
    -- layer=2 filter=54 channel=61
    -8, -11, 11, -2, -4, 17, 9, 0, 10,
    -- layer=2 filter=54 channel=62
    -14, -14, -13, -2, 11, -8, 5, -18, 10,
    -- layer=2 filter=54 channel=63
    13, -7, -1, -11, 14, -4, -9, 18, -14,
    -- layer=2 filter=55 channel=0
    -13, -62, -31, -17, -78, -88, -45, -71, -67,
    -- layer=2 filter=55 channel=1
    28, 0, 14, -11, 2, 6, 9, 25, -11,
    -- layer=2 filter=55 channel=2
    -3, -65, -27, -12, -79, -86, -27, -91, -64,
    -- layer=2 filter=55 channel=3
    -23, 11, 5, 24, 9, -20, 8, 24, 14,
    -- layer=2 filter=55 channel=4
    12, -11, -16, 23, 25, -10, 50, 10, 27,
    -- layer=2 filter=55 channel=5
    3, 13, 6, -7, 34, 0, 31, 31, 32,
    -- layer=2 filter=55 channel=6
    15, 17, 18, -13, 1, 17, 1, 21, -6,
    -- layer=2 filter=55 channel=7
    -44, 1, 0, 10, -39, 2, -12, 1, 2,
    -- layer=2 filter=55 channel=8
    17, 29, -23, 18, 31, -29, 40, 19, 24,
    -- layer=2 filter=55 channel=9
    -12, 16, 26, -11, -21, 9, -23, 10, 12,
    -- layer=2 filter=55 channel=10
    17, -17, 19, -16, -3, 16, 0, 10, 11,
    -- layer=2 filter=55 channel=11
    -4, 24, 27, -15, 21, 20, -16, 12, 22,
    -- layer=2 filter=55 channel=12
    15, -8, 13, 13, 18, 14, 3, 0, -5,
    -- layer=2 filter=55 channel=13
    3, 8, 1, -19, -7, -11, 19, -30, 33,
    -- layer=2 filter=55 channel=14
    36, 15, 29, 2, -10, 8, 7, -4, 23,
    -- layer=2 filter=55 channel=15
    4, 6, 19, 21, 18, 25, 18, 25, -2,
    -- layer=2 filter=55 channel=16
    -9, -2, 9, -5, -6, -13, 6, -11, -17,
    -- layer=2 filter=55 channel=17
    27, 17, 20, 6, 16, -2, -24, 8, 0,
    -- layer=2 filter=55 channel=18
    19, 15, 9, -2, 7, 0, 18, -14, 21,
    -- layer=2 filter=55 channel=19
    -3, 0, 11, 0, 1, 8, -11, -15, -3,
    -- layer=2 filter=55 channel=20
    -12, -12, 26, 6, -4, 4, 15, 2, 11,
    -- layer=2 filter=55 channel=21
    -27, 5, -9, 6, -12, -21, -1, 1, -37,
    -- layer=2 filter=55 channel=22
    4, 5, -19, -9, -14, 7, -12, 10, 1,
    -- layer=2 filter=55 channel=23
    -4, -5, 22, -6, 10, 14, 9, -3, 0,
    -- layer=2 filter=55 channel=24
    13, 3, 0, -13, 1, 13, 24, 0, 1,
    -- layer=2 filter=55 channel=25
    13, 0, -5, 5, 10, -1, -4, -11, -3,
    -- layer=2 filter=55 channel=26
    -14, 16, -1, -1, 9, -10, -2, -3, -14,
    -- layer=2 filter=55 channel=27
    -9, 1, 14, -1, -12, 9, 16, 0, -9,
    -- layer=2 filter=55 channel=28
    0, -68, -18, 0, -45, -61, 7, -78, -66,
    -- layer=2 filter=55 channel=29
    -11, 2, 37, -28, -5, -15, -21, -2, -3,
    -- layer=2 filter=55 channel=30
    5, 27, 17, -12, 18, -1, -22, 6, 16,
    -- layer=2 filter=55 channel=31
    14, -18, 9, 15, -7, 6, 8, 4, -16,
    -- layer=2 filter=55 channel=32
    -6, -14, 13, -19, 6, -7, -4, -10, 0,
    -- layer=2 filter=55 channel=33
    14, -6, 12, -17, -7, 69, 13, 18, 8,
    -- layer=2 filter=55 channel=34
    10, 11, -4, 7, 0, -7, 5, 18, 7,
    -- layer=2 filter=55 channel=35
    21, 12, 1, -19, 2, -21, 0, -35, 20,
    -- layer=2 filter=55 channel=36
    -6, -9, 10, -4, 33, 10, 9, 21, 26,
    -- layer=2 filter=55 channel=37
    -32, -32, 15, 8, -16, 8, -12, -20, -30,
    -- layer=2 filter=55 channel=38
    -6, -10, 4, 7, 12, -4, 12, -2, 12,
    -- layer=2 filter=55 channel=39
    -15, 14, 6, -19, -20, 4, -27, -11, -11,
    -- layer=2 filter=55 channel=40
    -2, -6, -27, 22, -3, -21, -18, -18, -3,
    -- layer=2 filter=55 channel=41
    -15, 40, 19, -21, -30, -28, 0, -10, -13,
    -- layer=2 filter=55 channel=42
    -52, -53, -78, -42, -38, -100, -15, -14, -35,
    -- layer=2 filter=55 channel=43
    -16, -2, 4, -13, -10, -52, -47, -52, -62,
    -- layer=2 filter=55 channel=44
    2, -8, 6, 9, -5, 21, -3, 3, 2,
    -- layer=2 filter=55 channel=45
    -3, 7, -13, 3, -18, -19, 33, -14, 3,
    -- layer=2 filter=55 channel=46
    -28, 4, 7, -16, -26, 7, -34, -24, 5,
    -- layer=2 filter=55 channel=47
    19, 12, 6, -15, -12, 7, 16, 5, -6,
    -- layer=2 filter=55 channel=48
    27, -16, 2, -25, -18, -54, 31, -53, -39,
    -- layer=2 filter=55 channel=49
    4, 1, 24, 12, 3, 18, 3, 6, -32,
    -- layer=2 filter=55 channel=50
    2, -10, 15, -17, 3, -5, 8, 17, -10,
    -- layer=2 filter=55 channel=51
    -10, 15, -19, -20, -9, -9, -9, -1, 6,
    -- layer=2 filter=55 channel=52
    21, 0, 6, -35, -32, -22, -17, -22, -2,
    -- layer=2 filter=55 channel=53
    -19, 8, 0, 39, 8, 21, 59, 21, -13,
    -- layer=2 filter=55 channel=54
    -10, 14, 7, 11, 11, 19, -9, 13, 6,
    -- layer=2 filter=55 channel=55
    -12, -6, -9, 2, -3, 6, 14, -12, 13,
    -- layer=2 filter=55 channel=56
    -10, -2, 6, 20, 9, 24, 25, -1, -10,
    -- layer=2 filter=55 channel=57
    -14, -3, 8, -24, -12, -7, -13, 0, 0,
    -- layer=2 filter=55 channel=58
    -3, -5, -2, -11, 22, 15, 31, 14, 9,
    -- layer=2 filter=55 channel=59
    6, 0, 16, -12, 15, -17, 4, -8, 9,
    -- layer=2 filter=55 channel=60
    -17, -19, 30, -2, 16, -15, -8, 6, -17,
    -- layer=2 filter=55 channel=61
    -2, -9, -18, -1, 11, 0, 10, -13, -11,
    -- layer=2 filter=55 channel=62
    -42, 7, 32, -16, -14, 11, -19, -21, 39,
    -- layer=2 filter=55 channel=63
    -30, 8, -7, 36, -8, -1, -25, -2, 1,
    -- layer=2 filter=56 channel=0
    -19, -19, 9, -10, -1, 0, 3, -5, -9,
    -- layer=2 filter=56 channel=1
    0, -18, -22, -5, 7, 0, -7, -11, -19,
    -- layer=2 filter=56 channel=2
    -4, -8, -10, 11, -17, -4, -2, 7, 0,
    -- layer=2 filter=56 channel=3
    18, 15, 0, 9, 12, -4, 13, -16, 18,
    -- layer=2 filter=56 channel=4
    6, -19, 10, -1, 4, -16, -5, -6, 3,
    -- layer=2 filter=56 channel=5
    6, -13, -7, -2, -7, -7, -2, -18, 6,
    -- layer=2 filter=56 channel=6
    -9, 12, 6, 0, -7, -14, -11, 11, -16,
    -- layer=2 filter=56 channel=7
    4, -2, 15, -2, 9, -17, -4, -4, 0,
    -- layer=2 filter=56 channel=8
    3, 9, 4, -6, -21, 2, -5, -10, 9,
    -- layer=2 filter=56 channel=9
    -5, -19, 1, -17, -1, 0, 1, -6, -13,
    -- layer=2 filter=56 channel=10
    14, -19, -17, -8, 2, 5, 0, -14, -7,
    -- layer=2 filter=56 channel=11
    10, 0, -11, -20, -9, 11, -20, -10, -5,
    -- layer=2 filter=56 channel=12
    -15, 15, -4, -16, -5, -13, 9, -3, -7,
    -- layer=2 filter=56 channel=13
    -15, 9, 15, -7, -15, 12, 14, 2, 3,
    -- layer=2 filter=56 channel=14
    14, -14, -9, -10, 7, -18, -9, -7, -3,
    -- layer=2 filter=56 channel=15
    0, -14, -23, -1, -10, -19, -11, -20, -1,
    -- layer=2 filter=56 channel=16
    15, 7, 13, -9, -1, 2, -2, -16, 5,
    -- layer=2 filter=56 channel=17
    -19, 2, -7, -4, 2, -20, 10, -6, 12,
    -- layer=2 filter=56 channel=18
    -19, -25, 0, 0, 1, -14, 10, -25, 5,
    -- layer=2 filter=56 channel=19
    -3, 8, -4, 9, 9, -5, 14, -12, -16,
    -- layer=2 filter=56 channel=20
    16, 6, -14, 0, -4, -10, 8, -9, -22,
    -- layer=2 filter=56 channel=21
    -7, -7, -18, 8, -10, -2, 3, 3, -19,
    -- layer=2 filter=56 channel=22
    7, -11, 0, 6, 15, 2, -12, -1, 11,
    -- layer=2 filter=56 channel=23
    4, -5, -13, -3, -2, -18, 0, -14, 0,
    -- layer=2 filter=56 channel=24
    6, -14, -7, 4, -17, 9, 2, -16, -5,
    -- layer=2 filter=56 channel=25
    -11, -15, 6, 3, 16, -4, 2, -14, -8,
    -- layer=2 filter=56 channel=26
    11, -9, 12, 19, 0, 5, 7, 0, 13,
    -- layer=2 filter=56 channel=27
    17, 7, 2, -6, -3, 9, -15, -19, -12,
    -- layer=2 filter=56 channel=28
    -24, 5, -10, -2, 2, 4, -3, -14, -26,
    -- layer=2 filter=56 channel=29
    -4, 5, 2, -3, -18, -15, 3, -6, -15,
    -- layer=2 filter=56 channel=30
    0, 11, -12, 7, -4, -19, -10, -13, -3,
    -- layer=2 filter=56 channel=31
    13, 13, 1, -10, 10, 12, -20, -17, -14,
    -- layer=2 filter=56 channel=32
    2, 12, -13, -1, 1, 5, -5, 14, -10,
    -- layer=2 filter=56 channel=33
    -15, -14, -16, 7, 16, 18, -7, -1, -9,
    -- layer=2 filter=56 channel=34
    5, -9, -15, -1, -9, -2, -1, -8, -17,
    -- layer=2 filter=56 channel=35
    -4, -4, 2, -20, 8, -6, -14, -14, -5,
    -- layer=2 filter=56 channel=36
    -5, -8, 16, 6, 3, -13, 4, 4, 8,
    -- layer=2 filter=56 channel=37
    -13, -11, 6, 10, -8, -5, 4, -18, -14,
    -- layer=2 filter=56 channel=38
    -9, 11, 14, 0, -17, -19, -11, -3, -13,
    -- layer=2 filter=56 channel=39
    7, 9, -19, -20, -3, 3, 7, -12, -1,
    -- layer=2 filter=56 channel=40
    -16, -17, -19, -17, 2, -7, 11, -4, -7,
    -- layer=2 filter=56 channel=41
    0, 0, -8, 5, -6, -11, 2, 1, -17,
    -- layer=2 filter=56 channel=42
    -7, -3, -21, 1, 0, 0, -21, -12, 12,
    -- layer=2 filter=56 channel=43
    -9, 13, -11, -15, -14, -13, -23, -18, 7,
    -- layer=2 filter=56 channel=44
    13, -19, 11, 4, -7, 7, -18, 0, -7,
    -- layer=2 filter=56 channel=45
    -10, -6, -6, 0, 3, 15, -20, -21, 4,
    -- layer=2 filter=56 channel=46
    -16, -1, -8, -10, -10, 10, -1, 6, -11,
    -- layer=2 filter=56 channel=47
    13, 5, -4, 7, 15, -9, 0, 19, -18,
    -- layer=2 filter=56 channel=48
    -16, -8, 8, -15, 6, -21, -10, 9, 6,
    -- layer=2 filter=56 channel=49
    -13, -10, -8, -5, 0, -16, 12, 11, 2,
    -- layer=2 filter=56 channel=50
    7, 18, -1, 15, -14, -10, 11, -11, 3,
    -- layer=2 filter=56 channel=51
    0, 10, -14, -11, -7, -14, -5, 10, -8,
    -- layer=2 filter=56 channel=52
    8, -16, -4, 10, -15, -8, -9, -3, -7,
    -- layer=2 filter=56 channel=53
    7, -1, 6, -4, -5, -2, -11, -18, 6,
    -- layer=2 filter=56 channel=54
    6, 2, -20, 15, 7, -19, -12, -6, -15,
    -- layer=2 filter=56 channel=55
    18, 17, -2, -13, -16, -16, -2, 12, 16,
    -- layer=2 filter=56 channel=56
    -17, -15, 19, 10, -9, -1, -3, 14, 3,
    -- layer=2 filter=56 channel=57
    14, -16, 4, -19, 1, -2, -15, -18, -6,
    -- layer=2 filter=56 channel=58
    11, -12, 4, 4, 10, 0, -3, -20, 0,
    -- layer=2 filter=56 channel=59
    -13, -13, -14, 2, 10, 6, 7, -15, 2,
    -- layer=2 filter=56 channel=60
    12, 0, -16, 10, -13, 13, 14, 13, -17,
    -- layer=2 filter=56 channel=61
    -10, -5, 9, 8, -6, -16, 19, -13, -1,
    -- layer=2 filter=56 channel=62
    -14, 0, -8, 11, -9, -7, 9, -13, -13,
    -- layer=2 filter=56 channel=63
    12, 1, -8, -10, 5, 0, -5, -12, 9,
    -- layer=2 filter=57 channel=0
    7, -29, -23, 17, -50, -11, 11, -13, -48,
    -- layer=2 filter=57 channel=1
    4, -1, -17, 5, -3, 9, -6, 6, -6,
    -- layer=2 filter=57 channel=2
    18, -39, -25, -2, -46, -24, 13, -46, 12,
    -- layer=2 filter=57 channel=3
    -6, -7, -14, 18, 10, 11, -7, 18, 7,
    -- layer=2 filter=57 channel=4
    -1, 29, 9, 2, 23, -25, -4, -12, -15,
    -- layer=2 filter=57 channel=5
    18, -1, 12, 18, 16, 15, 24, -9, -1,
    -- layer=2 filter=57 channel=6
    -5, 18, -17, -8, 27, -2, -14, 2, -19,
    -- layer=2 filter=57 channel=7
    0, 42, 11, -18, 17, 41, -38, -5, 15,
    -- layer=2 filter=57 channel=8
    -4, 32, 9, 14, 38, 18, -7, -12, 9,
    -- layer=2 filter=57 channel=9
    -2, 4, 0, 12, 38, 20, 13, -10, 37,
    -- layer=2 filter=57 channel=10
    -4, -12, -18, 13, 0, -16, -16, -7, -13,
    -- layer=2 filter=57 channel=11
    -1, -5, -22, -1, -12, 20, 3, -4, 13,
    -- layer=2 filter=57 channel=12
    3, -9, 3, -8, -7, -13, -13, -12, 0,
    -- layer=2 filter=57 channel=13
    -2, 5, -2, 23, 25, 37, -16, -3, 10,
    -- layer=2 filter=57 channel=14
    9, -1, -4, 6, -36, -34, -12, -25, -9,
    -- layer=2 filter=57 channel=15
    -6, -15, -3, 0, 0, -16, -19, -1, 9,
    -- layer=2 filter=57 channel=16
    -11, 4, 1, -9, 15, 12, 14, 9, 11,
    -- layer=2 filter=57 channel=17
    -31, -7, -12, 0, -18, -27, 7, 24, -8,
    -- layer=2 filter=57 channel=18
    23, 45, 16, 13, 18, 14, 10, -8, 28,
    -- layer=2 filter=57 channel=19
    -6, -7, -3, 0, 9, -9, 11, -2, -11,
    -- layer=2 filter=57 channel=20
    0, -15, -23, 1, -6, 8, 11, -24, -12,
    -- layer=2 filter=57 channel=21
    8, 34, 28, 11, 25, -8, 16, 14, 20,
    -- layer=2 filter=57 channel=22
    9, 13, 10, 9, -16, 2, 0, 1, -4,
    -- layer=2 filter=57 channel=23
    6, 8, 22, 15, 20, 9, 0, 16, 19,
    -- layer=2 filter=57 channel=24
    5, -22, 0, 8, 0, 8, 16, -20, 7,
    -- layer=2 filter=57 channel=25
    5, 8, -8, -8, -3, 16, 6, 9, 14,
    -- layer=2 filter=57 channel=26
    -16, 7, 5, -11, -7, 0, -6, -14, 14,
    -- layer=2 filter=57 channel=27
    -5, 5, -7, 0, -10, 5, -19, -10, 16,
    -- layer=2 filter=57 channel=28
    -19, -2, -2, -18, -10, 10, 41, 9, -4,
    -- layer=2 filter=57 channel=29
    -6, -27, -28, -11, -32, -21, -25, -19, -11,
    -- layer=2 filter=57 channel=30
    -8, -11, -5, -13, 19, 7, 11, 23, 32,
    -- layer=2 filter=57 channel=31
    16, -1, -14, 19, -11, 3, -11, -24, -7,
    -- layer=2 filter=57 channel=32
    -7, 2, -25, -10, -2, 1, -2, -14, 15,
    -- layer=2 filter=57 channel=33
    12, -37, -21, 0, 9, -32, 21, -3, 0,
    -- layer=2 filter=57 channel=34
    -11, -16, 23, 0, -2, -16, 3, 15, 18,
    -- layer=2 filter=57 channel=35
    10, 45, 24, -7, 5, 35, 2, -9, 26,
    -- layer=2 filter=57 channel=36
    1, 17, 16, 2, 13, 13, -10, 1, 4,
    -- layer=2 filter=57 channel=37
    -3, 0, 4, -9, 24, 7, 7, 31, 3,
    -- layer=2 filter=57 channel=38
    12, 7, 4, -17, 26, 0, -22, 5, 3,
    -- layer=2 filter=57 channel=39
    9, 7, 27, 8, 2, 38, -22, 34, 27,
    -- layer=2 filter=57 channel=40
    27, 11, -16, -7, 15, -1, 9, -33, -20,
    -- layer=2 filter=57 channel=41
    3, -36, -30, -11, -8, 13, -8, -18, -8,
    -- layer=2 filter=57 channel=42
    54, 44, -17, 11, 8, -42, -41, -17, -26,
    -- layer=2 filter=57 channel=43
    -40, -45, -21, -12, -47, -19, -2, -15, -34,
    -- layer=2 filter=57 channel=44
    -7, -19, -5, -3, -3, -13, 36, 35, 5,
    -- layer=2 filter=57 channel=45
    -1, 28, -2, 2, 1, 40, 23, 21, 30,
    -- layer=2 filter=57 channel=46
    14, 11, 20, 9, 38, 22, -23, 16, 28,
    -- layer=2 filter=57 channel=47
    -8, 3, 2, 3, 6, -13, -14, -14, 2,
    -- layer=2 filter=57 channel=48
    -6, -17, 27, -13, -28, 13, 18, -31, 0,
    -- layer=2 filter=57 channel=49
    -1, -23, 7, 5, 2, 1, -1, 20, -9,
    -- layer=2 filter=57 channel=50
    -4, -6, 5, 13, 6, -12, -8, 23, 14,
    -- layer=2 filter=57 channel=51
    -15, 2, 2, -7, -12, 12, -12, -4, -7,
    -- layer=2 filter=57 channel=52
    -11, 1, -41, 0, 22, -14, 55, 25, 41,
    -- layer=2 filter=57 channel=53
    -13, 25, -2, -15, 48, 0, -12, 8, 1,
    -- layer=2 filter=57 channel=54
    -1, -4, 20, 9, 18, 6, 5, 13, -3,
    -- layer=2 filter=57 channel=55
    1, 16, 13, 7, 19, 13, -7, 5, -14,
    -- layer=2 filter=57 channel=56
    -23, -10, 37, 5, 14, -6, -6, 35, 11,
    -- layer=2 filter=57 channel=57
    2, -5, -3, 2, 0, -9, -5, 1, 10,
    -- layer=2 filter=57 channel=58
    -19, -23, 8, 17, 13, 19, -17, 7, 2,
    -- layer=2 filter=57 channel=59
    -4, 16, -2, -2, -14, 3, -14, -7, 10,
    -- layer=2 filter=57 channel=60
    -25, -52, -16, -8, -44, -46, 21, 0, -15,
    -- layer=2 filter=57 channel=61
    13, 15, -3, 8, -11, -6, 4, 14, -4,
    -- layer=2 filter=57 channel=62
    -50, -9, -1, 28, 54, 32, -13, -18, -46,
    -- layer=2 filter=57 channel=63
    33, 22, 26, -8, -1, 1, -40, 17, 2,
    -- layer=2 filter=58 channel=0
    -40, -29, 11, -5, -13, 27, -16, 23, -26,
    -- layer=2 filter=58 channel=1
    -3, 8, -17, -9, -27, -22, -17, -6, -17,
    -- layer=2 filter=58 channel=2
    -22, -11, 37, 1, -30, 14, -4, 0, 7,
    -- layer=2 filter=58 channel=3
    -3, 25, 29, -7, 24, 8, -2, 3, -5,
    -- layer=2 filter=58 channel=4
    -9, -5, 3, 1, 7, -13, 17, 13, 36,
    -- layer=2 filter=58 channel=5
    -21, -15, -30, -18, -29, -39, -9, -38, -8,
    -- layer=2 filter=58 channel=6
    -3, -5, 7, -12, 14, -3, 8, 33, 29,
    -- layer=2 filter=58 channel=7
    -20, -17, -24, 23, 44, 9, 6, 34, -8,
    -- layer=2 filter=58 channel=8
    1, -2, -14, 4, 19, 8, -40, -28, -27,
    -- layer=2 filter=58 channel=9
    -33, -44, -33, -21, -38, -15, -15, -18, -3,
    -- layer=2 filter=58 channel=10
    -6, -1, 6, 2, -11, 12, 2, -4, 17,
    -- layer=2 filter=58 channel=11
    -22, -21, -20, -9, -35, -17, -13, -10, -12,
    -- layer=2 filter=58 channel=12
    0, 3, 9, 0, -14, -15, 13, -7, -7,
    -- layer=2 filter=58 channel=13
    7, 13, -4, 18, 16, 1, -2, -15, 18,
    -- layer=2 filter=58 channel=14
    11, -10, 28, 4, 12, -6, 1, 12, 8,
    -- layer=2 filter=58 channel=15
    -16, -3, -17, -6, -3, -10, 8, -5, -11,
    -- layer=2 filter=58 channel=16
    -11, 4, -14, -9, -11, 3, -5, 0, 5,
    -- layer=2 filter=58 channel=17
    -19, -5, -4, -33, -14, -35, -14, -14, 1,
    -- layer=2 filter=58 channel=18
    16, 14, 13, 12, 42, 0, -1, -20, 2,
    -- layer=2 filter=58 channel=19
    5, 7, -20, -12, -15, 11, 4, -20, 10,
    -- layer=2 filter=58 channel=20
    9, -4, -4, 8, -12, -14, -10, -17, 11,
    -- layer=2 filter=58 channel=21
    3, 21, 14, 0, -6, 22, 5, -20, 16,
    -- layer=2 filter=58 channel=22
    -5, -8, 12, -15, -16, 0, 3, -5, 5,
    -- layer=2 filter=58 channel=23
    2, 9, 1, 19, 1, 14, -13, -6, 14,
    -- layer=2 filter=58 channel=24
    14, -5, -22, 2, 8, 8, 3, -7, 11,
    -- layer=2 filter=58 channel=25
    1, -16, -3, 9, -5, 10, -11, 0, -5,
    -- layer=2 filter=58 channel=26
    6, 5, 14, -6, 16, -6, -4, -7, 3,
    -- layer=2 filter=58 channel=27
    -23, -24, -24, 5, 10, -20, 6, 8, 0,
    -- layer=2 filter=58 channel=28
    -4, -23, 41, -26, -14, 6, 9, 15, 30,
    -- layer=2 filter=58 channel=29
    0, -5, -11, -4, 28, 22, -25, -15, -4,
    -- layer=2 filter=58 channel=30
    10, 4, -11, -29, -5, -24, 0, -5, -8,
    -- layer=2 filter=58 channel=31
    5, -12, 12, 12, 28, 39, -13, 0, -9,
    -- layer=2 filter=58 channel=32
    13, -7, 6, 0, 0, -13, 4, 10, -15,
    -- layer=2 filter=58 channel=33
    -1, -14, -18, 24, 18, -12, 41, 49, 28,
    -- layer=2 filter=58 channel=34
    -4, 2, 10, -10, 12, 13, -3, 11, -8,
    -- layer=2 filter=58 channel=35
    16, 0, 2, -4, 10, 21, 2, -9, 14,
    -- layer=2 filter=58 channel=36
    -1, 3, -13, -30, -35, -3, -7, -3, 18,
    -- layer=2 filter=58 channel=37
    15, 8, 2, 17, 32, -17, 10, 0, -10,
    -- layer=2 filter=58 channel=38
    10, 7, 14, 22, 18, 16, 6, 33, 33,
    -- layer=2 filter=58 channel=39
    -6, -7, -9, 11, 17, 30, 3, 36, 15,
    -- layer=2 filter=58 channel=40
    19, -22, 0, 9, 18, -4, 5, -8, -5,
    -- layer=2 filter=58 channel=41
    -24, 3, -1, 12, -2, 21, -5, -7, 16,
    -- layer=2 filter=58 channel=42
    21, 31, 9, 1, -5, -24, -34, -24, -32,
    -- layer=2 filter=58 channel=43
    -31, 1, 10, -16, -8, -7, -39, -14, -17,
    -- layer=2 filter=58 channel=44
    -13, -9, 18, -13, -7, 19, 5, -7, 7,
    -- layer=2 filter=58 channel=45
    9, 15, 13, 9, 36, 3, 3, -2, -1,
    -- layer=2 filter=58 channel=46
    1, -9, -33, 21, 40, 27, 8, 42, 27,
    -- layer=2 filter=58 channel=47
    16, -14, -3, 2, -7, 2, 17, -2, 1,
    -- layer=2 filter=58 channel=48
    -28, -26, 36, -1, -21, 12, 1, 6, -15,
    -- layer=2 filter=58 channel=49
    -1, 6, -21, 13, 1, -8, 12, 2, 12,
    -- layer=2 filter=58 channel=50
    1, -5, -14, 0, -14, 13, 5, 9, -4,
    -- layer=2 filter=58 channel=51
    -19, 10, -2, -17, 20, -14, 17, 15, -3,
    -- layer=2 filter=58 channel=52
    -17, 23, -33, -5, -15, 2, 14, 0, 5,
    -- layer=2 filter=58 channel=53
    -9, 6, 0, 7, 15, 20, 15, 3, 20,
    -- layer=2 filter=58 channel=54
    -25, 0, -9, 14, -15, 1, -15, 16, 4,
    -- layer=2 filter=58 channel=55
    -14, -4, 2, 9, -10, 13, 5, 11, 17,
    -- layer=2 filter=58 channel=56
    3, 6, 32, 2, -22, 15, -7, 21, 21,
    -- layer=2 filter=58 channel=57
    -12, -2, -14, 5, -8, -3, -21, 6, 12,
    -- layer=2 filter=58 channel=58
    -7, -23, -10, -11, -18, -17, -23, -3, -6,
    -- layer=2 filter=58 channel=59
    15, 3, -6, 3, -7, 9, 6, 9, -4,
    -- layer=2 filter=58 channel=60
    -17, -15, -6, -24, 6, -20, 1, 0, -26,
    -- layer=2 filter=58 channel=61
    14, -16, 10, 8, 8, -9, -20, -14, 11,
    -- layer=2 filter=58 channel=62
    -13, -13, -4, -23, -14, -13, -10, -13, -30,
    -- layer=2 filter=58 channel=63
    -7, 6, 2, -2, 10, -17, -10, 28, 8,
    -- layer=2 filter=59 channel=0
    5, 29, 43, 35, -18, 28, -18, -9, -6,
    -- layer=2 filter=59 channel=1
    5, -5, -16, 20, 19, 7, 3, 3, -13,
    -- layer=2 filter=59 channel=2
    6, 31, 46, 0, -8, 7, -51, -21, 45,
    -- layer=2 filter=59 channel=3
    -10, 21, -14, -4, 0, -15, -6, -11, -4,
    -- layer=2 filter=59 channel=4
    -3, 0, 42, -11, -14, 6, -38, -3, 14,
    -- layer=2 filter=59 channel=5
    1, 24, 6, 0, 30, -5, 15, -18, -3,
    -- layer=2 filter=59 channel=6
    -3, 10, 6, 2, -6, -13, -15, 19, 20,
    -- layer=2 filter=59 channel=7
    19, -14, -22, -16, -16, 29, 2, 33, 30,
    -- layer=2 filter=59 channel=8
    -47, -6, 7, -55, 0, -11, 9, -2, -25,
    -- layer=2 filter=59 channel=9
    -12, -65, 5, -46, -33, -15, -31, -4, -29,
    -- layer=2 filter=59 channel=10
    2, 9, -10, -3, -5, -16, 0, 16, -7,
    -- layer=2 filter=59 channel=11
    27, 12, 0, 34, -7, 9, 17, -6, 16,
    -- layer=2 filter=59 channel=12
    -2, 10, -17, 15, 19, 5, 17, 12, 2,
    -- layer=2 filter=59 channel=13
    20, 25, 16, -15, -16, 8, 38, -3, 13,
    -- layer=2 filter=59 channel=14
    24, 32, -22, -2, -25, 1, -14, -26, 14,
    -- layer=2 filter=59 channel=15
    14, 13, -4, 5, 4, 10, 11, -20, 13,
    -- layer=2 filter=59 channel=16
    6, 2, -3, -12, 10, -5, -22, -21, 12,
    -- layer=2 filter=59 channel=17
    -10, -7, -22, 25, 20, 5, 7, 15, 19,
    -- layer=2 filter=59 channel=18
    15, 34, 40, 0, -6, 9, 12, 17, 8,
    -- layer=2 filter=59 channel=19
    8, -15, 4, 12, 11, -10, 19, 1, -6,
    -- layer=2 filter=59 channel=20
    16, 10, -1, 16, -8, -6, 32, -11, 9,
    -- layer=2 filter=59 channel=21
    3, 20, -12, 22, 15, 15, 7, 0, 0,
    -- layer=2 filter=59 channel=22
    -14, 6, -12, -14, 10, -5, 8, -15, -4,
    -- layer=2 filter=59 channel=23
    14, 5, -8, -8, 13, -18, -1, -3, 14,
    -- layer=2 filter=59 channel=24
    18, 12, -9, -15, -4, -10, 20, 7, 13,
    -- layer=2 filter=59 channel=25
    5, -12, 7, 7, -9, 9, -12, -8, -14,
    -- layer=2 filter=59 channel=26
    -8, 18, -17, -9, 12, 20, 7, -7, -14,
    -- layer=2 filter=59 channel=27
    -13, 3, -8, -6, 5, 3, 9, -9, 8,
    -- layer=2 filter=59 channel=28
    30, -3, 40, 25, -22, 10, 0, -25, 37,
    -- layer=2 filter=59 channel=29
    2, 29, -14, 12, 8, 2, 14, -9, -8,
    -- layer=2 filter=59 channel=30
    -4, 18, 0, 20, 4, 12, 32, 1, 10,
    -- layer=2 filter=59 channel=31
    27, 10, 8, 8, -23, -1, 18, -3, -4,
    -- layer=2 filter=59 channel=32
    4, 5, -7, -10, 4, -5, 8, -11, -14,
    -- layer=2 filter=59 channel=33
    -49, -29, -49, -57, -34, -8, -20, -50, -40,
    -- layer=2 filter=59 channel=34
    17, -19, -22, 4, 12, 9, 9, 24, 10,
    -- layer=2 filter=59 channel=35
    29, 26, 56, -18, -5, 2, -3, 2, 24,
    -- layer=2 filter=59 channel=36
    -4, 22, 3, 17, -17, -1, 0, 21, -3,
    -- layer=2 filter=59 channel=37
    -55, -28, 10, -54, -22, 15, -5, -21, 11,
    -- layer=2 filter=59 channel=38
    12, 3, 3, -19, 14, 5, -29, 7, 25,
    -- layer=2 filter=59 channel=39
    9, 28, 12, -16, -18, -7, -23, -2, -14,
    -- layer=2 filter=59 channel=40
    -29, 0, 13, -11, 5, 25, 6, -9, -8,
    -- layer=2 filter=59 channel=41
    26, -3, -4, 9, 0, 3, 14, -15, -1,
    -- layer=2 filter=59 channel=42
    -33, -16, -17, -25, -34, -20, -36, -20, -21,
    -- layer=2 filter=59 channel=43
    -10, -2, -14, 28, 17, 12, 36, 29, -14,
    -- layer=2 filter=59 channel=44
    -14, -27, -5, -4, 0, 29, 0, -1, 5,
    -- layer=2 filter=59 channel=45
    -7, 35, 29, -35, 6, 14, 26, 21, 15,
    -- layer=2 filter=59 channel=46
    22, 22, -12, -31, -10, -20, -22, -27, 3,
    -- layer=2 filter=59 channel=47
    10, 2, -13, 8, 13, -8, -4, 6, 17,
    -- layer=2 filter=59 channel=48
    14, 34, 49, 21, -12, 11, 8, 0, -4,
    -- layer=2 filter=59 channel=49
    12, 21, 2, 26, 3, -7, 22, 16, 7,
    -- layer=2 filter=59 channel=50
    7, 0, -15, -17, 2, -3, -14, -23, -13,
    -- layer=2 filter=59 channel=51
    8, -15, 12, 2, -13, 7, 12, 19, -8,
    -- layer=2 filter=59 channel=52
    39, -7, 16, 15, -26, -6, -26, -15, -13,
    -- layer=2 filter=59 channel=53
    -28, -21, -8, -47, -1, 0, -3, -10, 26,
    -- layer=2 filter=59 channel=54
    10, 15, 11, 20, -13, 10, 23, 5, -11,
    -- layer=2 filter=59 channel=55
    -16, 7, 11, -18, 15, 15, -15, 6, -17,
    -- layer=2 filter=59 channel=56
    4, -15, -7, 3, -17, 20, -18, 20, 28,
    -- layer=2 filter=59 channel=57
    -2, -23, -15, 13, 6, -7, 7, 33, 28,
    -- layer=2 filter=59 channel=58
    33, 9, -11, 7, 4, 1, 15, -16, -7,
    -- layer=2 filter=59 channel=59
    0, 10, -2, -12, 5, 12, 1, -2, -5,
    -- layer=2 filter=59 channel=60
    20, 26, -5, 50, 11, 10, 25, 24, 12,
    -- layer=2 filter=59 channel=61
    -4, -13, 15, 20, -15, -6, 18, 6, 8,
    -- layer=2 filter=59 channel=62
    -31, -57, -29, -56, -30, 30, -15, -3, -70,
    -- layer=2 filter=59 channel=63
    -7, -34, 7, -12, 3, 0, 20, 9, 17,
    -- layer=2 filter=60 channel=0
    35, 7, 15, 54, 1, 26, 64, 35, -14,
    -- layer=2 filter=60 channel=1
    -23, 23, 23, -31, 18, 42, -26, -16, 22,
    -- layer=2 filter=60 channel=2
    14, -23, -21, -5, -8, -1, 29, 2, 18,
    -- layer=2 filter=60 channel=3
    -2, -2, -4, 14, 2, -16, -3, 8, 6,
    -- layer=2 filter=60 channel=4
    34, 7, -45, 50, -7, -81, 45, -32, -64,
    -- layer=2 filter=60 channel=5
    -13, 25, 27, -6, 10, 34, -7, -6, 27,
    -- layer=2 filter=60 channel=6
    -3, 2, -26, 40, -3, -39, 19, 5, -26,
    -- layer=2 filter=60 channel=7
    21, 5, 29, 44, 47, 43, 0, 21, 8,
    -- layer=2 filter=60 channel=8
    26, 44, 29, 21, 15, -8, 19, 2, -4,
    -- layer=2 filter=60 channel=9
    25, -2, -7, 19, -2, -40, -8, -34, -41,
    -- layer=2 filter=60 channel=10
    13, 0, 14, 8, -3, 5, 11, 8, -17,
    -- layer=2 filter=60 channel=11
    -5, -11, 18, -41, -8, 2, -18, 19, 14,
    -- layer=2 filter=60 channel=12
    -12, 0, -1, 19, -16, 0, 6, 1, -3,
    -- layer=2 filter=60 channel=13
    26, 5, -35, 27, -17, -36, -6, 2, -11,
    -- layer=2 filter=60 channel=14
    -4, -1, -4, -41, -16, -23, -46, -32, -13,
    -- layer=2 filter=60 channel=15
    -12, 8, 38, -35, 14, 0, -16, 10, 30,
    -- layer=2 filter=60 channel=16
    -10, -12, -7, -1, -13, 16, -14, 4, -12,
    -- layer=2 filter=60 channel=17
    -27, -8, 12, -25, 28, 21, -40, -16, 18,
    -- layer=2 filter=60 channel=18
    4, 4, -47, 25, -44, -65, -6, -8, -38,
    -- layer=2 filter=60 channel=19
    13, 2, 12, -15, -9, -15, 7, -11, -6,
    -- layer=2 filter=60 channel=20
    -25, -6, 10, -43, -16, -26, -45, -19, -17,
    -- layer=2 filter=60 channel=21
    4, -31, -31, 25, 5, -20, 23, 17, 5,
    -- layer=2 filter=60 channel=22
    13, -15, -1, -8, -12, 7, 3, -5, 14,
    -- layer=2 filter=60 channel=23
    -14, -7, -4, -22, 0, -13, -22, 26, 26,
    -- layer=2 filter=60 channel=24
    12, 7, 11, 10, -24, -20, -16, 4, -6,
    -- layer=2 filter=60 channel=25
    -10, 5, 3, 13, -1, 1, 17, 18, 6,
    -- layer=2 filter=60 channel=26
    2, -8, -4, 13, 1, -9, 7, -7, -7,
    -- layer=2 filter=60 channel=27
    16, 9, -14, 5, 20, 3, 13, 22, 12,
    -- layer=2 filter=60 channel=28
    8, 5, 2, 17, -14, -17, 17, -4, 2,
    -- layer=2 filter=60 channel=29
    8, 12, 14, -26, 8, 8, -25, 4, 29,
    -- layer=2 filter=60 channel=30
    -51, -13, 0, -65, -13, 29, -51, 6, 31,
    -- layer=2 filter=60 channel=31
    -16, -2, -3, -14, -3, -9, -21, 7, 15,
    -- layer=2 filter=60 channel=32
    10, 5, -6, -7, 0, 0, 0, 2, -4,
    -- layer=2 filter=60 channel=33
    23, 11, 34, -15, 2, 1, -5, -6, -2,
    -- layer=2 filter=60 channel=34
    -11, -8, -25, 3, 0, 10, -6, -14, 11,
    -- layer=2 filter=60 channel=35
    14, -24, -52, -4, -14, -38, -7, -2, 1,
    -- layer=2 filter=60 channel=36
    -10, 9, -13, -21, 3, -1, -4, 4, -3,
    -- layer=2 filter=60 channel=37
    6, -1, -18, -4, 15, -77, 47, 3, -37,
    -- layer=2 filter=60 channel=38
    10, -5, -29, 25, 0, -32, 21, 3, -24,
    -- layer=2 filter=60 channel=39
    11, -2, 25, -5, 5, 11, -24, -9, 18,
    -- layer=2 filter=60 channel=40
    27, 26, 16, -9, -6, -31, -11, -11, -34,
    -- layer=2 filter=60 channel=41
    0, -7, -25, 1, 9, 4, 23, 13, 23,
    -- layer=2 filter=60 channel=42
    -12, -21, -1, -35, -19, -9, -2, -23, 9,
    -- layer=2 filter=60 channel=43
    -15, 1, 4, -11, 12, 50, -10, 24, 52,
    -- layer=2 filter=60 channel=44
    31, -7, -55, 29, 34, -36, 6, 13, -23,
    -- layer=2 filter=60 channel=45
    38, 12, -36, 22, -19, -37, 13, 17, -35,
    -- layer=2 filter=60 channel=46
    28, -10, 22, 0, -4, 16, -14, 23, 9,
    -- layer=2 filter=60 channel=47
    -10, -3, -9, 14, 1, -13, 5, 13, -15,
    -- layer=2 filter=60 channel=48
    21, -6, -6, 24, -9, -2, 45, 25, -29,
    -- layer=2 filter=60 channel=49
    7, -20, -26, 7, 7, -12, 5, 3, 16,
    -- layer=2 filter=60 channel=50
    -5, 7, -9, -16, -5, -13, 4, -7, 11,
    -- layer=2 filter=60 channel=51
    6, -19, 4, 6, 16, -13, 18, 3, 3,
    -- layer=2 filter=60 channel=52
    29, 7, 49, 39, 27, 15, 24, -12, -36,
    -- layer=2 filter=60 channel=53
    22, -15, -30, 54, -13, -45, 35, 20, -54,
    -- layer=2 filter=60 channel=54
    -18, -2, 0, -17, 20, 4, -27, 20, 30,
    -- layer=2 filter=60 channel=55
    -7, 14, 13, -18, -8, 12, 15, 5, 0,
    -- layer=2 filter=60 channel=56
    15, -15, -35, 47, -25, -24, 45, 35, -37,
    -- layer=2 filter=60 channel=57
    -12, -15, 2, -15, 19, 2, -28, 26, 21,
    -- layer=2 filter=60 channel=58
    -14, 7, 32, -23, 12, 31, -17, 15, 10,
    -- layer=2 filter=60 channel=59
    -20, -8, 0, -16, 0, -10, -1, -3, -16,
    -- layer=2 filter=60 channel=60
    -49, -38, -12, -39, -8, -3, -29, -26, 1,
    -- layer=2 filter=60 channel=61
    -12, -6, 17, 17, -16, 17, 0, 2, 21,
    -- layer=2 filter=60 channel=62
    42, 4, -9, 27, -6, -39, 11, 3, -37,
    -- layer=2 filter=60 channel=63
    42, 13, 8, 52, 23, 33, 2, 41, 0,
    -- layer=2 filter=61 channel=0
    -15, -12, -17, -12, 15, -5, 5, 9, -18,
    -- layer=2 filter=61 channel=1
    3, 9, -14, -8, -3, -5, 4, 12, -8,
    -- layer=2 filter=61 channel=2
    -15, 9, -22, -17, 13, -21, 5, 4, 7,
    -- layer=2 filter=61 channel=3
    -11, -4, -15, 0, -4, 17, -3, -11, -18,
    -- layer=2 filter=61 channel=4
    -16, -19, -27, 0, 3, -24, 8, 10, -13,
    -- layer=2 filter=61 channel=5
    -15, -3, -17, 4, 10, -14, -11, -2, -4,
    -- layer=2 filter=61 channel=6
    -6, -6, 8, -3, -19, -1, -5, -11, 9,
    -- layer=2 filter=61 channel=7
    1, -2, 10, -10, 0, -2, -7, -12, 11,
    -- layer=2 filter=61 channel=8
    -8, 9, 1, -1, -5, 7, 8, -13, -2,
    -- layer=2 filter=61 channel=9
    1, -25, -6, -14, 8, -8, -3, 7, 10,
    -- layer=2 filter=61 channel=10
    -16, 11, 1, -12, 7, -18, 7, -13, 15,
    -- layer=2 filter=61 channel=11
    -5, -24, 0, 5, 12, -15, -15, -29, -22,
    -- layer=2 filter=61 channel=12
    -19, -9, -9, 16, -19, 15, 10, -2, -7,
    -- layer=2 filter=61 channel=13
    -14, -15, 4, -7, -17, -19, -11, 11, 2,
    -- layer=2 filter=61 channel=14
    -2, 6, 3, 0, 0, -13, -11, 2, 3,
    -- layer=2 filter=61 channel=15
    -6, 7, 2, -20, -17, -1, -19, -13, -12,
    -- layer=2 filter=61 channel=16
    10, -19, 13, -8, 3, 13, -3, -2, -14,
    -- layer=2 filter=61 channel=17
    -20, -24, -3, 1, -1, -13, -18, 2, -24,
    -- layer=2 filter=61 channel=18
    -2, -6, -7, -12, 4, 7, -24, 4, -16,
    -- layer=2 filter=61 channel=19
    -10, 6, 8, 14, -16, 2, 16, 6, 3,
    -- layer=2 filter=61 channel=20
    -21, 6, 7, -19, -19, 5, -24, 0, -12,
    -- layer=2 filter=61 channel=21
    -17, 6, -22, -3, 5, 12, 9, -18, 7,
    -- layer=2 filter=61 channel=22
    11, -8, 11, -6, 4, -15, 3, -13, 6,
    -- layer=2 filter=61 channel=23
    -25, 0, 4, -19, 3, 0, -19, -3, -18,
    -- layer=2 filter=61 channel=24
    10, 9, -5, 15, 16, -2, 18, -10, -9,
    -- layer=2 filter=61 channel=25
    16, 0, 6, -16, 7, -17, 12, 16, 0,
    -- layer=2 filter=61 channel=26
    -14, 8, -15, -15, -8, -18, -12, -2, 0,
    -- layer=2 filter=61 channel=27
    -11, -19, -5, 1, -9, 16, -1, -12, -10,
    -- layer=2 filter=61 channel=28
    12, -10, 6, -9, -7, -17, -18, -19, 7,
    -- layer=2 filter=61 channel=29
    -8, -6, 9, 0, -19, -21, 13, 9, 8,
    -- layer=2 filter=61 channel=30
    -16, -2, -17, -9, -18, 6, 4, 2, -8,
    -- layer=2 filter=61 channel=31
    -2, 12, 5, -4, -4, 10, -20, -21, 2,
    -- layer=2 filter=61 channel=32
    -17, 15, 8, -15, 12, 3, -6, 6, 12,
    -- layer=2 filter=61 channel=33
    -7, -1, 13, -11, 11, -18, -2, 7, 13,
    -- layer=2 filter=61 channel=34
    -8, -24, 8, 3, 5, -23, 4, -1, -16,
    -- layer=2 filter=61 channel=35
    0, -13, 5, 5, -14, -4, -4, -10, -9,
    -- layer=2 filter=61 channel=36
    -21, 0, -13, -9, 8, -6, -13, -13, -17,
    -- layer=2 filter=61 channel=37
    -12, -10, 3, 8, 4, -14, 5, 1, -13,
    -- layer=2 filter=61 channel=38
    -13, 10, 10, -15, -9, -2, -5, 11, -13,
    -- layer=2 filter=61 channel=39
    5, -12, 8, -5, -15, -22, -17, -18, 15,
    -- layer=2 filter=61 channel=40
    -24, 10, -23, -10, 4, -12, 11, -8, -26,
    -- layer=2 filter=61 channel=41
    1, -12, -1, -5, -4, 6, -5, -29, -25,
    -- layer=2 filter=61 channel=42
    -7, 4, 0, 10, 5, -5, 5, -13, -14,
    -- layer=2 filter=61 channel=43
    5, -20, -19, -16, -16, 10, 0, 0, -19,
    -- layer=2 filter=61 channel=44
    -12, -1, 4, -7, -22, 12, -2, -3, -22,
    -- layer=2 filter=61 channel=45
    -8, -2, -24, 6, 2, -21, 0, -14, -3,
    -- layer=2 filter=61 channel=46
    6, -7, 0, 8, 12, 7, -21, -12, 6,
    -- layer=2 filter=61 channel=47
    -3, 2, -2, 0, -7, -16, 10, 17, 6,
    -- layer=2 filter=61 channel=48
    -7, -4, -13, -20, 1, -6, -26, -10, -25,
    -- layer=2 filter=61 channel=49
    10, -12, 1, 8, -9, -18, -11, 11, 2,
    -- layer=2 filter=61 channel=50
    8, 9, 10, -15, -1, 2, 0, -16, 13,
    -- layer=2 filter=61 channel=51
    17, 2, 4, 10, -14, 9, 2, 0, -16,
    -- layer=2 filter=61 channel=52
    0, 0, 5, 2, 5, -11, -5, 14, 13,
    -- layer=2 filter=61 channel=53
    -8, -8, -16, -20, -16, -16, -6, -13, -4,
    -- layer=2 filter=61 channel=54
    -15, -7, 2, 3, -9, 13, 4, 8, -5,
    -- layer=2 filter=61 channel=55
    11, 0, -6, -10, 10, 10, -18, -9, -18,
    -- layer=2 filter=61 channel=56
    4, -20, 2, -22, 3, -19, -9, 6, -18,
    -- layer=2 filter=61 channel=57
    -11, -17, -6, -22, -21, 0, -24, 7, -3,
    -- layer=2 filter=61 channel=58
    -27, -26, -6, -2, -17, -5, -22, -18, -19,
    -- layer=2 filter=61 channel=59
    -7, -4, -5, 4, -3, 7, 14, 3, -5,
    -- layer=2 filter=61 channel=60
    12, 1, -9, -18, -20, -16, 12, -21, -3,
    -- layer=2 filter=61 channel=61
    16, 0, -12, -13, 4, -6, 13, 16, -1,
    -- layer=2 filter=61 channel=62
    -14, 15, 8, 15, -7, -11, -15, 5, -15,
    -- layer=2 filter=61 channel=63
    -11, 1, -22, 8, -11, 5, -13, 10, -11,
    -- layer=2 filter=62 channel=0
    -10, -3, 3, -25, -21, 53, 0, 8, 28,
    -- layer=2 filter=62 channel=1
    -2, -36, -34, -15, 16, 28, -6, 15, 13,
    -- layer=2 filter=62 channel=2
    -12, -24, 32, -26, 8, 54, -10, 34, 34,
    -- layer=2 filter=62 channel=3
    -18, -4, -16, 29, 19, 2, 29, 7, 10,
    -- layer=2 filter=62 channel=4
    -17, 9, 2, -2, -31, -12, -7, 8, 23,
    -- layer=2 filter=62 channel=5
    -19, 2, 3, -1, 31, -4, 2, -23, -27,
    -- layer=2 filter=62 channel=6
    1, 5, 33, 21, 13, 15, -10, 12, 20,
    -- layer=2 filter=62 channel=7
    -16, -44, -48, 19, 2, 15, 29, 29, 12,
    -- layer=2 filter=62 channel=8
    43, 56, 38, 20, 24, 21, -21, -31, -21,
    -- layer=2 filter=62 channel=9
    18, 14, 27, 21, 24, 1, 36, 15, 21,
    -- layer=2 filter=62 channel=10
    -11, 12, 4, -12, 12, 2, -14, -15, -5,
    -- layer=2 filter=62 channel=11
    -2, -29, -34, -4, 9, 12, -1, -25, -32,
    -- layer=2 filter=62 channel=12
    4, 4, 11, 0, 0, 6, 4, -9, 4,
    -- layer=2 filter=62 channel=13
    28, 46, 33, 25, -13, -65, -17, -48, -63,
    -- layer=2 filter=62 channel=14
    -41, -3, -6, -14, -27, -17, -25, -51, -37,
    -- layer=2 filter=62 channel=15
    -5, -40, -45, 13, 0, 0, 1, 8, 4,
    -- layer=2 filter=62 channel=16
    18, -8, -14, 8, -12, 15, -11, -10, 10,
    -- layer=2 filter=62 channel=17
    -9, -21, -31, 19, 42, 16, 20, 12, -7,
    -- layer=2 filter=62 channel=18
    36, 38, 52, 28, 6, -51, 3, -49, -69,
    -- layer=2 filter=62 channel=19
    16, -13, -3, -1, -9, -14, -11, -22, -2,
    -- layer=2 filter=62 channel=20
    -1, 28, 3, 24, -1, -26, 25, 3, -40,
    -- layer=2 filter=62 channel=21
    5, -21, -10, -30, -13, 11, -21, -37, 6,
    -- layer=2 filter=62 channel=22
    3, -7, -10, 8, 15, 12, -14, 7, -9,
    -- layer=2 filter=62 channel=23
    7, 2, -3, -2, 14, 16, -20, 0, 20,
    -- layer=2 filter=62 channel=24
    0, 14, 22, -11, 1, 3, 5, -9, 7,
    -- layer=2 filter=62 channel=25
    -14, 11, -1, 13, -16, -6, 12, -17, 16,
    -- layer=2 filter=62 channel=26
    -2, 19, -3, -9, 0, -16, 7, 8, 12,
    -- layer=2 filter=62 channel=27
    12, 20, 5, 2, -7, 13, 21, -13, -11,
    -- layer=2 filter=62 channel=28
    -34, -2, -3, -30, -31, 12, -30, 13, 8,
    -- layer=2 filter=62 channel=29
    -20, -7, 2, 12, 34, 9, 34, 44, -19,
    -- layer=2 filter=62 channel=30
    -1, -30, -23, 1, -4, -1, -3, 12, -8,
    -- layer=2 filter=62 channel=31
    -12, -5, 36, -2, -28, -34, -32, -50, -22,
    -- layer=2 filter=62 channel=32
    5, -13, 12, -14, -16, 4, 19, 16, -5,
    -- layer=2 filter=62 channel=33
    -21, 0, -5, 17, 56, 2, 42, -4, -36,
    -- layer=2 filter=62 channel=34
    25, 33, 9, 21, 22, 4, 14, -17, 34,
    -- layer=2 filter=62 channel=35
    28, 20, 47, 26, 9, -62, 0, -74, -74,
    -- layer=2 filter=62 channel=36
    -3, 5, -11, 4, -21, -31, -17, -30, -30,
    -- layer=2 filter=62 channel=37
    16, -26, 13, -32, -21, -14, -11, -18, -10,
    -- layer=2 filter=62 channel=38
    20, 6, 0, 16, -2, 7, 12, 3, 24,
    -- layer=2 filter=62 channel=39
    5, -22, -37, -23, -2, 10, 0, -15, -22,
    -- layer=2 filter=62 channel=40
    23, 14, -15, -15, 0, 0, -2, -54, -61,
    -- layer=2 filter=62 channel=41
    4, -6, 0, 6, -25, 19, 0, -8, 10,
    -- layer=2 filter=62 channel=42
    0, -3, 34, 0, -15, 37, 4, 23, 32,
    -- layer=2 filter=62 channel=43
    -15, 0, 17, -12, 8, 67, -2, 28, 47,
    -- layer=2 filter=62 channel=44
    -18, -19, -35, 0, -48, 17, -26, -24, 19,
    -- layer=2 filter=62 channel=45
    16, 39, 21, -1, 15, -26, 20, -64, -44,
    -- layer=2 filter=62 channel=46
    22, 7, -30, -33, 15, 14, 8, -38, -45,
    -- layer=2 filter=62 channel=47
    -7, 4, -8, -4, 11, -17, 1, 9, -7,
    -- layer=2 filter=62 channel=48
    -39, -13, -4, -51, -24, -15, -20, -6, 0,
    -- layer=2 filter=62 channel=49
    -10, -18, -15, 30, 29, 13, 3, 0, 13,
    -- layer=2 filter=62 channel=50
    -18, -2, -8, -13, 10, -4, 0, -12, 8,
    -- layer=2 filter=62 channel=51
    -11, -5, 2, -17, -11, -10, 2, -8, -4,
    -- layer=2 filter=62 channel=52
    8, 29, 40, 34, 65, 58, 9, 55, -26,
    -- layer=2 filter=62 channel=53
    36, 12, 11, 0, 12, 8, -16, -10, 6,
    -- layer=2 filter=62 channel=54
    -33, -16, -25, -20, -10, 6, -27, 7, 10,
    -- layer=2 filter=62 channel=55
    -10, 13, 2, -9, 9, -11, -17, -8, -3,
    -- layer=2 filter=62 channel=56
    -22, -6, -15, 12, -6, 17, 10, 8, 8,
    -- layer=2 filter=62 channel=57
    1, -3, -6, 34, 21, 20, 4, 28, 21,
    -- layer=2 filter=62 channel=58
    9, -9, -10, 0, 1, 10, -8, 0, -25,
    -- layer=2 filter=62 channel=59
    15, -4, -5, 7, 2, -16, 1, -10, 11,
    -- layer=2 filter=62 channel=60
    -38, -14, -36, -6, -20, -5, -27, -34, -11,
    -- layer=2 filter=62 channel=61
    -15, 18, -7, 0, 0, -11, 13, -9, 0,
    -- layer=2 filter=62 channel=62
    14, 11, 41, -27, -26, 5, 6, -8, -4,
    -- layer=2 filter=62 channel=63
    8, -44, -21, 18, -31, 51, 27, -15, 21,
    -- layer=2 filter=63 channel=0
    6, -21, -12, 57, 24, -11, 31, 38, 26,
    -- layer=2 filter=63 channel=1
    13, 13, 44, 8, 14, 0, 3, -14, 9,
    -- layer=2 filter=63 channel=2
    -4, -23, -16, 38, 0, -32, 43, 0, -11,
    -- layer=2 filter=63 channel=3
    -20, 11, 0, 30, -13, 4, -23, -22, 12,
    -- layer=2 filter=63 channel=4
    -23, -28, -33, -3, 3, -2, 24, 40, 11,
    -- layer=2 filter=63 channel=5
    21, 32, 27, 15, -19, 10, -38, -50, -46,
    -- layer=2 filter=63 channel=6
    -23, -25, -29, 14, -5, -38, -4, 13, 17,
    -- layer=2 filter=63 channel=7
    -9, -13, -49, 37, 14, -32, 36, 27, 25,
    -- layer=2 filter=63 channel=8
    -6, -3, 5, 6, 18, 30, 47, 23, 40,
    -- layer=2 filter=63 channel=9
    3, 24, 23, -1, 29, 9, 9, 16, -24,
    -- layer=2 filter=63 channel=10
    11, 7, -10, 7, 13, -3, 15, 10, -11,
    -- layer=2 filter=63 channel=11
    16, 21, 12, -28, -31, 7, -10, -29, -24,
    -- layer=2 filter=63 channel=12
    7, -8, -6, -15, -5, 14, 0, -17, -14,
    -- layer=2 filter=63 channel=13
    18, -18, 13, -34, -33, -28, -2, -5, 5,
    -- layer=2 filter=63 channel=14
    -21, -31, 16, -32, -27, 28, 13, -2, 30,
    -- layer=2 filter=63 channel=15
    30, 33, 11, -15, -5, 8, -36, -43, -3,
    -- layer=2 filter=63 channel=16
    -5, -13, -13, 0, 15, -1, -6, -12, 7,
    -- layer=2 filter=63 channel=17
    9, 13, 11, 2, -9, 18, -61, -34, -20,
    -- layer=2 filter=63 channel=18
    9, -31, 10, -34, -31, -10, -1, 17, 5,
    -- layer=2 filter=63 channel=19
    -12, 11, -14, -21, 6, -24, 11, -7, -11,
    -- layer=2 filter=63 channel=20
    18, -23, 24, -26, -23, 0, -29, -22, -6,
    -- layer=2 filter=63 channel=21
    -17, -5, -25, -8, 28, 0, -15, 32, 33,
    -- layer=2 filter=63 channel=22
    5, 1, -18, 11, -16, 3, -13, -5, 0,
    -- layer=2 filter=63 channel=23
    -23, -31, -41, -23, 0, 13, -11, 19, 18,
    -- layer=2 filter=63 channel=24
    9, 16, 26, 1, 0, 21, -12, 0, -8,
    -- layer=2 filter=63 channel=25
    -5, -13, 0, -7, -10, -16, 14, 15, 8,
    -- layer=2 filter=63 channel=26
    12, -15, 12, 2, 5, 2, 12, -17, -7,
    -- layer=2 filter=63 channel=27
    6, 3, 10, 5, -3, 4, 2, -26, 3,
    -- layer=2 filter=63 channel=28
    -11, -48, -4, 12, -22, -7, 15, 49, 41,
    -- layer=2 filter=63 channel=29
    64, 50, 26, -1, -11, 0, -24, -44, -36,
    -- layer=2 filter=63 channel=30
    14, 36, 27, 8, 7, 5, -16, -26, -12,
    -- layer=2 filter=63 channel=31
    0, 18, 17, -3, 4, 35, -30, -1, 16,
    -- layer=2 filter=63 channel=32
    10, -7, -7, -6, 6, 16, -7, 4, 0,
    -- layer=2 filter=63 channel=33
    -7, -10, 11, 4, 12, 20, 0, 7, 11,
    -- layer=2 filter=63 channel=34
    4, -31, -22, -28, -7, -38, -16, -12, -12,
    -- layer=2 filter=63 channel=35
    -4, -30, -15, -59, -44, -26, 5, 18, 21,
    -- layer=2 filter=63 channel=36
    56, 27, 16, 0, -5, -23, -8, -27, -16,
    -- layer=2 filter=63 channel=37
    -15, -2, 7, -42, -2, 13, 28, 1, 38,
    -- layer=2 filter=63 channel=38
    -42, -11, -35, -5, 13, -15, 17, 27, 24,
    -- layer=2 filter=63 channel=39
    48, 13, 4, -7, -39, -16, -2, -16, -55,
    -- layer=2 filter=63 channel=40
    -11, 17, 30, 4, 28, 45, 0, 28, 31,
    -- layer=2 filter=63 channel=41
    9, 4, -6, 2, 14, 0, -17, 18, -24,
    -- layer=2 filter=63 channel=42
    13, 60, 31, 37, 31, 4, 43, 13, 21,
    -- layer=2 filter=63 channel=43
    -3, -7, -28, 25, 11, -1, 24, 1, -39,
    -- layer=2 filter=63 channel=44
    -46, -26, -18, 0, -9, 10, -16, 2, 6,
    -- layer=2 filter=63 channel=45
    -10, -10, -22, -43, -34, -13, -6, 35, 22,
    -- layer=2 filter=63 channel=46
    63, 23, 19, 26, 9, -3, -5, -19, -12,
    -- layer=2 filter=63 channel=47
    15, -11, -4, 2, 16, 10, -6, 5, -10,
    -- layer=2 filter=63 channel=48
    -38, -22, 1, 7, -32, -13, 8, 24, 23,
    -- layer=2 filter=63 channel=49
    -16, 0, -1, -11, -34, -19, -8, 15, 8,
    -- layer=2 filter=63 channel=50
    5, 16, 10, -15, -8, 5, -12, 10, -9,
    -- layer=2 filter=63 channel=51
    -18, 7, -1, 3, -5, -8, -5, -8, 13,
    -- layer=2 filter=63 channel=52
    4, 17, 20, 20, -11, 2, -4, -18, -42,
    -- layer=2 filter=63 channel=53
    16, 0, 14, -12, 1, -5, 22, 16, 32,
    -- layer=2 filter=63 channel=54
    25, 8, 1, -10, 6, 12, -9, 0, 10,
    -- layer=2 filter=63 channel=55
    -2, 13, 16, 16, -3, 11, -7, 18, 15,
    -- layer=2 filter=63 channel=56
    -36, -14, -28, -21, -18, -39, 4, 13, 20,
    -- layer=2 filter=63 channel=57
    11, -2, -4, 11, 3, 0, -28, -30, -50,
    -- layer=2 filter=63 channel=58
    40, 28, 28, 11, -20, 21, -24, -55, -17,
    -- layer=2 filter=63 channel=59
    -3, 13, 10, -9, -1, 0, -13, 1, -8,
    -- layer=2 filter=63 channel=60
    -24, -31, -50, -20, -2, -59, -27, 3, -21,
    -- layer=2 filter=63 channel=61
    3, 10, -15, 0, -16, 13, 11, -15, -16,
    -- layer=2 filter=63 channel=62
    -33, 70, 103, 9, -3, 45, -16, 39, 16,
    -- layer=2 filter=63 channel=63
    27, -5, -46, 26, -1, -34, 39, 32, 23,

    others => 0);
end iwght_package;

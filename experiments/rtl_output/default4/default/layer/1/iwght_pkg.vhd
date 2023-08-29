library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=1
    1767, 4728, 936, -960, 2427, 7745, 4552, -2538, 1201, 5116, -631, 2961, -632, -1740, 409, 4122, -1569, 5667, -937, -1306, 3650, -4263, -702, 4541, -2147, -961, -699, -2311, -2257, 8293, 5835, -603, -1060, 2537, 4908, -3484, 5735, -4691, 5282, -4606, -1383, 3554, -3128, -638, -3781, -2715, -4389, -591, -735, 5234, -1051, -264, 11372, 4094, 7924, -609, 2183, 9927, 6534, -722, 383, -455, -3261, -1865,

    -- weights
    -- layer=1 filter=0 channel=0
    -3, 17, -4, -21, -2, 26, -14, 8, 25,
    -- layer=1 filter=0 channel=1
    -19, 11, 14, -22, -2, 12, -6, -9, -5,
    -- layer=1 filter=0 channel=2
    4, 3, -4, -9, -9, 20, 24, 21, -11,
    -- layer=1 filter=0 channel=3
    -3, 15, 25, -21, 4, 7, -14, -3, 17,
    -- layer=1 filter=0 channel=4
    19, 0, 6, -3, -4, 0, 17, -12, 9,
    -- layer=1 filter=0 channel=5
    -25, -12, 3, -19, 25, 18, -5, -3, 16,
    -- layer=1 filter=0 channel=6
    73, 28, 32, 44, -43, 35, 52, 17, 42,
    -- layer=1 filter=0 channel=7
    -7, 5, 4, -16, -13, 9, 13, 9, -4,
    -- layer=1 filter=0 channel=8
    14, -6, 12, -16, 8, 14, -16, 0, 11,
    -- layer=1 filter=0 channel=9
    -35, -20, 0, -44, 11, 11, -16, 19, 33,
    -- layer=1 filter=0 channel=10
    -12, 10, 13, -6, 3, 6, 0, 12, -9,
    -- layer=1 filter=0 channel=11
    -38, -12, 29, -44, 8, 32, -22, 6, 34,
    -- layer=1 filter=0 channel=12
    -10, -13, -41, -20, -41, -37, -12, -9, -4,
    -- layer=1 filter=0 channel=13
    -16, -21, 11, -46, 5, 23, -8, 19, 25,
    -- layer=1 filter=0 channel=14
    -31, -25, 2, -58, -43, -26, -66, -69, -63,
    -- layer=1 filter=0 channel=15
    -29, 23, -1, -25, 30, 29, -10, 4, 1,
    -- layer=1 filter=0 channel=16
    -32, 4, 15, -37, 16, 14, -27, 28, 17,
    -- layer=1 filter=0 channel=17
    8, -2, 9, -9, -62, -12, -52, -34, -30,
    -- layer=1 filter=0 channel=18
    38, 22, 9, 46, 8, -25, 13, 0, -20,
    -- layer=1 filter=0 channel=19
    23, -10, -13, 37, -30, -14, 14, -11, -14,
    -- layer=1 filter=0 channel=20
    3, -39, -5, 8, -47, 8, 11, -16, 21,
    -- layer=1 filter=0 channel=21
    -8, -11, -5, -9, -4, 14, -14, 12, 1,
    -- layer=1 filter=0 channel=22
    18, -8, -5, 30, -38, -12, 21, -30, 0,
    -- layer=1 filter=0 channel=23
    -44, -20, 32, -64, 9, 15, -49, 18, 26,
    -- layer=1 filter=0 channel=24
    -18, -5, -2, -29, -11, 22, -24, 12, 39,
    -- layer=1 filter=0 channel=25
    13, -7, -1, -22, -22, -20, -30, -23, -13,
    -- layer=1 filter=0 channel=26
    -29, 1, 22, -16, 19, 24, -28, 24, 25,
    -- layer=1 filter=0 channel=27
    13, 46, 3, 43, 9, 18, 25, 30, 6,
    -- layer=1 filter=0 channel=28
    -29, -25, 14, -46, -10, 27, -25, 16, 44,
    -- layer=1 filter=0 channel=29
    -4, -1, -1, 0, 0, 0, 8, 7, 13,
    -- layer=1 filter=0 channel=30
    -27, 19, 21, -11, 8, 1, -4, 25, 6,
    -- layer=1 filter=0 channel=31
    -24, -29, 20, -64, -6, 27, -30, -3, 36,
    -- layer=1 filter=0 channel=32
    -6, 9, 13, -2, -16, 2, -13, 4, -4,
    -- layer=1 filter=0 channel=33
    11, -20, -12, -4, -10, -18, 10, -7, -7,
    -- layer=1 filter=0 channel=34
    29, 2, -33, 3, -70, -21, -33, -21, -53,
    -- layer=1 filter=0 channel=35
    13, -43, 1, 39, -68, -27, -22, -49, -31,
    -- layer=1 filter=0 channel=36
    -21, 7, -21, -4, -5, -6, -19, -8, -2,
    -- layer=1 filter=0 channel=37
    3, 3, 32, 7, -5, 22, 42, -23, 1,
    -- layer=1 filter=0 channel=38
    11, 4, -14, 11, -19, -4, 5, 10, -17,
    -- layer=1 filter=0 channel=39
    -14, 0, 13, -4, -2, 5, -18, 10, 16,
    -- layer=1 filter=0 channel=40
    -17, -9, 17, -44, -4, 21, -36, -1, 29,
    -- layer=1 filter=0 channel=41
    -3, -22, -26, -16, -23, 13, 10, -42, 5,
    -- layer=1 filter=0 channel=42
    -19, 15, 20, -18, 10, 26, -1, -2, 23,
    -- layer=1 filter=0 channel=43
    55, 49, 36, 74, 57, -18, 73, 34, -1,
    -- layer=1 filter=0 channel=44
    -15, -22, -3, -41, 8, 20, -28, -2, 11,
    -- layer=1 filter=0 channel=45
    2, -14, 22, 6, -29, 15, 22, -30, 31,
    -- layer=1 filter=0 channel=46
    -23, 8, 17, -35, 12, 7, 5, -11, 11,
    -- layer=1 filter=0 channel=47
    -34, -10, 25, -29, 6, 6, -9, 15, 28,
    -- layer=1 filter=0 channel=48
    -1, 5, 0, -15, 0, -2, -23, 15, 12,
    -- layer=1 filter=0 channel=49
    -24, 17, 19, -4, 21, 9, -25, -10, 9,
    -- layer=1 filter=0 channel=50
    -64, -4, 3, -57, -29, -10, 13, -23, -31,
    -- layer=1 filter=0 channel=51
    -19, -28, 10, 4, -36, 23, -20, -7, 14,
    -- layer=1 filter=0 channel=52
    -8, -8, 1, -30, 11, 0, -13, -8, 20,
    -- layer=1 filter=0 channel=53
    -30, -4, 1, -24, 13, 16, -3, 27, 1,
    -- layer=1 filter=0 channel=54
    -15, 1, 36, 2, -4, 48, 29, 39, 51,
    -- layer=1 filter=0 channel=55
    -33, -23, -7, -47, -11, 6, -42, -14, 20,
    -- layer=1 filter=0 channel=56
    18, -10, -17, -34, -43, -26, -66, -36, -50,
    -- layer=1 filter=0 channel=57
    -11, 3, 9, -2, 3, 10, 16, -14, 16,
    -- layer=1 filter=0 channel=58
    27, 15, -1, 35, 25, -29, 47, -2, 4,
    -- layer=1 filter=0 channel=59
    11, 8, -9, -14, -10, 6, -2, -18, -8,
    -- layer=1 filter=0 channel=60
    -15, -1, 23, -36, 19, 26, -10, 7, 9,
    -- layer=1 filter=0 channel=61
    15, -19, -15, 3, -30, 6, 12, -37, -5,
    -- layer=1 filter=0 channel=62
    -20, 0, -1, -17, -1, 21, -5, 4, -5,
    -- layer=1 filter=0 channel=63
    66, 62, 19, 76, 47, -7, 69, 62, -9,
    -- layer=1 filter=1 channel=0
    10, 2, -6, -2, 14, -10, 12, 6, 11,
    -- layer=1 filter=1 channel=1
    22, 6, 4, 21, -9, 3, 32, 10, 14,
    -- layer=1 filter=1 channel=2
    6, 26, -4, -8, 19, -3, 9, 26, 11,
    -- layer=1 filter=1 channel=3
    -14, 8, 1, -8, 10, -2, -11, 18, 5,
    -- layer=1 filter=1 channel=4
    13, -6, 8, 16, -6, -4, 17, 11, 8,
    -- layer=1 filter=1 channel=5
    10, 7, -12, -22, -13, 1, -3, -11, 11,
    -- layer=1 filter=1 channel=6
    34, 0, 8, 12, 49, -16, 30, -11, 14,
    -- layer=1 filter=1 channel=7
    -13, 7, -11, -1, 19, -8, -5, 6, 19,
    -- layer=1 filter=1 channel=8
    -17, -11, 10, 13, 8, 6, -7, -1, -11,
    -- layer=1 filter=1 channel=9
    -5, -24, -6, -30, -19, 3, -18, -10, 0,
    -- layer=1 filter=1 channel=10
    -12, 19, 17, -10, -4, 1, 17, -6, 8,
    -- layer=1 filter=1 channel=11
    -2, 12, 5, -4, 2, -15, -12, 13, -1,
    -- layer=1 filter=1 channel=12
    -54, -28, -43, -53, -60, -62, -57, -43, -79,
    -- layer=1 filter=1 channel=13
    -28, -18, 9, -18, -26, 18, -14, -16, -16,
    -- layer=1 filter=1 channel=14
    -32, -52, -20, -7, -14, -41, 1, -1, 20,
    -- layer=1 filter=1 channel=15
    -15, -5, 3, -12, 13, -16, 5, 16, 10,
    -- layer=1 filter=1 channel=16
    -26, -30, -4, -18, -29, 3, -14, 13, -6,
    -- layer=1 filter=1 channel=17
    -23, -2, -2, 7, 5, -12, -29, -28, -11,
    -- layer=1 filter=1 channel=18
    -11, -20, -39, -25, -49, -3, -24, -15, -44,
    -- layer=1 filter=1 channel=19
    -11, -47, -29, -32, -2, -34, -40, -45, -8,
    -- layer=1 filter=1 channel=20
    14, -12, -20, 11, 22, -12, 16, 5, 6,
    -- layer=1 filter=1 channel=21
    -1, 13, -13, -9, 6, -12, -5, 16, -4,
    -- layer=1 filter=1 channel=22
    9, -4, 2, 9, -10, -11, 6, 5, -4,
    -- layer=1 filter=1 channel=23
    -3, 2, 0, 8, -13, 4, 16, -7, -4,
    -- layer=1 filter=1 channel=24
    -14, 0, -10, -28, -16, 2, -21, -5, -23,
    -- layer=1 filter=1 channel=25
    -18, -22, -10, -15, -24, -2, -26, -32, -21,
    -- layer=1 filter=1 channel=26
    3, 3, 9, -5, -1, 17, 11, -10, -2,
    -- layer=1 filter=1 channel=27
    -36, -27, -40, -27, -33, -41, -38, -11, -37,
    -- layer=1 filter=1 channel=28
    -9, -4, 0, -24, -9, -9, -37, -18, -26,
    -- layer=1 filter=1 channel=29
    -10, -10, -2, -14, -7, -24, -9, -8, 2,
    -- layer=1 filter=1 channel=30
    -27, -8, -18, -30, -11, -1, 3, -15, -18,
    -- layer=1 filter=1 channel=31
    0, -3, -12, -17, -6, -6, 8, -11, -11,
    -- layer=1 filter=1 channel=32
    -21, 20, 1, -13, 5, -4, 15, 3, 10,
    -- layer=1 filter=1 channel=33
    -15, 1, -19, -5, 18, -15, 4, 19, -19,
    -- layer=1 filter=1 channel=34
    0, -22, -10, 15, 0, -6, -15, -3, 1,
    -- layer=1 filter=1 channel=35
    -21, -18, 18, 2, 6, -21, -5, -16, 12,
    -- layer=1 filter=1 channel=36
    -54, -45, -54, -31, -41, -25, -22, -45, -35,
    -- layer=1 filter=1 channel=37
    0, 1, 5, -2, -16, -31, 28, -1, 39,
    -- layer=1 filter=1 channel=38
    8, 9, 5, 27, 8, 1, 8, -8, 12,
    -- layer=1 filter=1 channel=39
    -15, -12, 2, 11, -7, 8, 10, 13, 18,
    -- layer=1 filter=1 channel=40
    -7, 6, 2, 16, 3, -1, -5, 19, 19,
    -- layer=1 filter=1 channel=41
    -5, -1, -16, -1, 16, -12, 21, 15, 1,
    -- layer=1 filter=1 channel=42
    -6, -2, 8, 5, 5, -6, 12, 22, 16,
    -- layer=1 filter=1 channel=43
    -7, 27, -5, 9, 30, 7, -1, 11, 23,
    -- layer=1 filter=1 channel=44
    -9, -18, 9, -12, -5, 6, -5, -28, -18,
    -- layer=1 filter=1 channel=45
    37, 11, 17, 11, 39, 0, 16, 21, -15,
    -- layer=1 filter=1 channel=46
    -2, 23, 26, -11, -2, -6, 29, 38, 40,
    -- layer=1 filter=1 channel=47
    -16, -18, -8, -6, 0, 11, -1, -4, 6,
    -- layer=1 filter=1 channel=48
    -8, 16, 0, -4, -5, 10, 10, 15, -1,
    -- layer=1 filter=1 channel=49
    11, -5, 8, 16, 1, -13, 22, 20, 8,
    -- layer=1 filter=1 channel=50
    -20, -11, 10, 3, -11, -4, -15, -17, 13,
    -- layer=1 filter=1 channel=51
    17, 4, 23, 1, 15, -6, 31, -2, 13,
    -- layer=1 filter=1 channel=52
    4, 4, 14, -9, -11, -6, 12, 20, 0,
    -- layer=1 filter=1 channel=53
    -6, -3, 12, -11, -18, -1, 9, -4, 19,
    -- layer=1 filter=1 channel=54
    16, 20, -4, 16, 59, -22, 4, 25, 11,
    -- layer=1 filter=1 channel=55
    2, 3, 17, 6, 22, 10, 12, 7, 16,
    -- layer=1 filter=1 channel=56
    -44, -40, -3, -20, -21, 8, -27, -47, -27,
    -- layer=1 filter=1 channel=57
    -9, 0, 12, -8, -3, -14, -10, -5, -13,
    -- layer=1 filter=1 channel=58
    14, -3, -3, -9, 25, 0, 3, 15, 0,
    -- layer=1 filter=1 channel=59
    15, -14, -26, 0, -7, -11, 10, 7, 5,
    -- layer=1 filter=1 channel=60
    -15, 11, 17, -17, -11, 17, 1, 6, -12,
    -- layer=1 filter=1 channel=61
    22, -14, 5, 25, -21, -8, 27, -1, -4,
    -- layer=1 filter=1 channel=62
    -5, 5, -6, -6, -15, -11, 14, -4, -24,
    -- layer=1 filter=1 channel=63
    11, 25, 23, 0, 21, 7, 11, 19, 55,
    -- layer=1 filter=2 channel=0
    -4, -24, 10, 8, 0, -1, -12, -7, 10,
    -- layer=1 filter=2 channel=1
    -2, -2, -7, 20, 0, -23, 5, -14, 1,
    -- layer=1 filter=2 channel=2
    -7, 0, 1, -22, -3, -12, -2, 1, -3,
    -- layer=1 filter=2 channel=3
    -53, -11, 42, -13, 5, 25, -2, 24, 20,
    -- layer=1 filter=2 channel=4
    3, -9, 7, 10, 16, -18, -12, -3, 9,
    -- layer=1 filter=2 channel=5
    -30, -15, 14, -24, -10, 39, -18, 7, 31,
    -- layer=1 filter=2 channel=6
    66, 64, -66, 87, 40, -64, 65, 33, -38,
    -- layer=1 filter=2 channel=7
    14, 0, 25, 16, -1, -1, 10, 4, -10,
    -- layer=1 filter=2 channel=8
    3, 8, 9, 18, -15, 17, -17, 17, -8,
    -- layer=1 filter=2 channel=9
    -18, -22, 36, -33, -10, 47, -24, 20, 36,
    -- layer=1 filter=2 channel=10
    -33, 9, 32, -33, 1, 33, -22, 10, 19,
    -- layer=1 filter=2 channel=11
    -14, -26, 0, -39, 17, 5, -2, 21, 41,
    -- layer=1 filter=2 channel=12
    2, -17, -48, 4, -26, -29, 6, -13, -13,
    -- layer=1 filter=2 channel=13
    -24, -34, 28, -43, -8, 34, 5, 0, 34,
    -- layer=1 filter=2 channel=14
    -80, -53, -7, -96, -46, -39, -49, -107, -26,
    -- layer=1 filter=2 channel=15
    -21, -17, 34, -33, -13, 49, -1, -4, 29,
    -- layer=1 filter=2 channel=16
    -46, -3, 43, -15, -16, 42, -22, 21, 19,
    -- layer=1 filter=2 channel=17
    29, -4, -24, 17, -70, -51, -35, -24, -26,
    -- layer=1 filter=2 channel=18
    36, 35, -5, 30, 28, -11, 43, 6, -6,
    -- layer=1 filter=2 channel=19
    35, 25, -42, 21, -4, -49, 36, 7, -26,
    -- layer=1 filter=2 channel=20
    23, -2, -45, 23, -32, -36, 20, -20, -19,
    -- layer=1 filter=2 channel=21
    -3, 12, 2, 9, -3, -6, 1, 4, 4,
    -- layer=1 filter=2 channel=22
    8, -12, -30, 9, -3, -38, 1, -25, -23,
    -- layer=1 filter=2 channel=23
    -12, -30, 7, 7, -35, 5, -17, -22, 33,
    -- layer=1 filter=2 channel=24
    -35, -8, 1, -47, -8, 21, -16, 14, 48,
    -- layer=1 filter=2 channel=25
    -8, 5, 16, -40, -67, -23, -33, -30, -7,
    -- layer=1 filter=2 channel=26
    -24, -9, 15, 1, -16, 13, -12, -5, 22,
    -- layer=1 filter=2 channel=27
    6, 15, 48, 14, 34, 51, 9, 20, 24,
    -- layer=1 filter=2 channel=28
    -20, -14, 26, -5, -14, 36, -17, -3, 51,
    -- layer=1 filter=2 channel=29
    28, -6, -42, 21, -15, -53, 25, -13, -23,
    -- layer=1 filter=2 channel=30
    -19, -3, 36, -17, 25, 11, -14, 23, 33,
    -- layer=1 filter=2 channel=31
    -7, -11, -24, -8, -5, -9, 8, -5, 12,
    -- layer=1 filter=2 channel=32
    -15, -12, -3, -10, -18, 2, -21, 7, -10,
    -- layer=1 filter=2 channel=33
    41, 18, -16, 30, 18, -35, 30, -23, -47,
    -- layer=1 filter=2 channel=34
    22, 13, -37, 0, -85, -69, -19, -15, -12,
    -- layer=1 filter=2 channel=35
    4, -1, -41, -6, -46, -61, -18, -18, -14,
    -- layer=1 filter=2 channel=36
    1, -4, -30, -19, -30, -13, -2, -18, 3,
    -- layer=1 filter=2 channel=37
    -6, -9, 11, 7, -4, 5, -1, -10, -13,
    -- layer=1 filter=2 channel=38
    -2, 14, -7, 18, 3, -27, -4, -6, -31,
    -- layer=1 filter=2 channel=39
    16, -10, -3, -9, 11, 13, -13, -6, 17,
    -- layer=1 filter=2 channel=40
    -1, -33, 29, -20, -5, 15, -16, 7, 36,
    -- layer=1 filter=2 channel=41
    15, -10, -41, 37, -23, -26, 12, -17, -12,
    -- layer=1 filter=2 channel=42
    12, -19, 25, -6, -19, 21, -22, -12, 21,
    -- layer=1 filter=2 channel=43
    -27, 47, 74, -15, 53, 42, 17, 38, 36,
    -- layer=1 filter=2 channel=44
    -11, -28, 15, -28, -9, 11, -3, -5, 20,
    -- layer=1 filter=2 channel=45
    44, -14, -56, 70, -12, -23, 26, -22, -12,
    -- layer=1 filter=2 channel=46
    -8, -30, 24, -16, -11, 19, -16, -28, -21,
    -- layer=1 filter=2 channel=47
    -8, 1, 29, -24, -16, 31, -27, -11, 13,
    -- layer=1 filter=2 channel=48
    -18, -9, 27, -9, -4, 11, -8, 8, 27,
    -- layer=1 filter=2 channel=49
    -13, 10, 18, -10, -15, 0, -22, 9, 13,
    -- layer=1 filter=2 channel=50
    -33, -85, 5, -23, -55, 23, -18, -19, -39,
    -- layer=1 filter=2 channel=51
    4, 4, -39, 30, -28, -37, 21, -27, -37,
    -- layer=1 filter=2 channel=52
    -23, -16, 27, -26, 0, 24, -31, -15, 16,
    -- layer=1 filter=2 channel=53
    -36, -18, 34, -16, -19, 21, -21, -6, 28,
    -- layer=1 filter=2 channel=54
    30, 37, -33, 47, 6, 1, 46, 9, -5,
    -- layer=1 filter=2 channel=55
    -1, -6, -22, 21, -7, -9, 13, -7, -2,
    -- layer=1 filter=2 channel=56
    -9, -6, 4, -36, -57, -48, -55, -52, -8,
    -- layer=1 filter=2 channel=57
    -3, -7, -3, 16, -5, -6, -7, 2, -17,
    -- layer=1 filter=2 channel=58
    -3, 20, 31, -3, 21, 3, 11, 41, 7,
    -- layer=1 filter=2 channel=59
    33, -7, 1, 14, 1, -28, 17, -18, -24,
    -- layer=1 filter=2 channel=60
    -18, -20, 18, -21, -19, 8, -15, -3, 36,
    -- layer=1 filter=2 channel=61
    43, 6, -27, 14, 0, -43, 8, -13, -17,
    -- layer=1 filter=2 channel=62
    29, 1, 0, 0, -23, 22, -7, -1, 23,
    -- layer=1 filter=2 channel=63
    -26, 61, 115, 11, 75, 108, 33, 87, 54,
    -- layer=1 filter=3 channel=0
    10, 0, -11, 16, -25, -31, -1, -1, -28,
    -- layer=1 filter=3 channel=1
    11, 0, -3, 2, -1, -4, 19, -6, 21,
    -- layer=1 filter=3 channel=2
    -27, -19, -6, -26, 0, -16, -15, -1, 1,
    -- layer=1 filter=3 channel=3
    -36, -5, -12, -22, -19, -25, -8, -16, -18,
    -- layer=1 filter=3 channel=4
    -12, -15, 13, 5, 3, 5, 13, 15, -15,
    -- layer=1 filter=3 channel=5
    -29, -12, -8, 19, -25, -38, 14, -1, -11,
    -- layer=1 filter=3 channel=6
    8, 18, 19, 0, -11, -1, -20, 8, 25,
    -- layer=1 filter=3 channel=7
    0, 4, -16, 11, -2, -11, -10, -10, 0,
    -- layer=1 filter=3 channel=8
    -17, 10, -16, 8, 2, 4, 13, 2, 4,
    -- layer=1 filter=3 channel=9
    -12, -31, -1, -20, -27, -23, -7, -19, -26,
    -- layer=1 filter=3 channel=10
    -10, 19, -23, -11, -19, -7, 0, -8, -6,
    -- layer=1 filter=3 channel=11
    -10, -2, -27, -15, -23, -4, -24, 1, -18,
    -- layer=1 filter=3 channel=12
    4, -16, -12, 0, 3, -3, -8, -6, -2,
    -- layer=1 filter=3 channel=13
    -2, -7, -26, 8, 5, -12, -8, 0, -3,
    -- layer=1 filter=3 channel=14
    12, 9, 14, -21, 13, -14, 10, -13, -21,
    -- layer=1 filter=3 channel=15
    -25, 2, 9, 13, -31, -6, 6, -16, -27,
    -- layer=1 filter=3 channel=16
    -24, -14, -4, -26, -7, -12, 6, -9, -20,
    -- layer=1 filter=3 channel=17
    14, 20, 3, 16, 12, 5, -14, -16, -23,
    -- layer=1 filter=3 channel=18
    5, 10, -16, -6, 1, 19, -18, -15, 14,
    -- layer=1 filter=3 channel=19
    27, 16, 28, -3, 4, 3, 20, 6, -7,
    -- layer=1 filter=3 channel=20
    8, -20, -16, 7, -6, 23, -15, 2, 28,
    -- layer=1 filter=3 channel=21
    -11, 0, -10, 4, 11, -3, 15, 9, 0,
    -- layer=1 filter=3 channel=22
    -21, -22, -9, -20, 7, 8, 13, 0, -3,
    -- layer=1 filter=3 channel=23
    -2, 8, 8, -4, 6, -8, -17, -9, -17,
    -- layer=1 filter=3 channel=24
    -23, -16, 0, 2, 7, -29, -13, -6, -11,
    -- layer=1 filter=3 channel=25
    -2, 5, 0, 12, 0, 11, -23, -18, -25,
    -- layer=1 filter=3 channel=26
    10, -3, -3, 4, -10, -27, -19, -21, -32,
    -- layer=1 filter=3 channel=27
    5, -10, -7, 12, -4, 24, 1, -2, -6,
    -- layer=1 filter=3 channel=28
    -2, -3, -6, -20, 1, -6, 0, -21, -34,
    -- layer=1 filter=3 channel=29
    -14, -1, 4, 7, 16, -5, 0, 9, -12,
    -- layer=1 filter=3 channel=30
    -24, 3, -5, -20, -1, -25, -8, -14, -21,
    -- layer=1 filter=3 channel=31
    11, 6, -4, -6, -16, -13, 5, 2, 7,
    -- layer=1 filter=3 channel=32
    -18, 10, 5, -16, -17, -17, 3, 14, 0,
    -- layer=1 filter=3 channel=33
    -18, 6, 27, 14, 1, 22, 8, -8, 13,
    -- layer=1 filter=3 channel=34
    4, -5, 26, 21, -5, -20, -9, 2, -1,
    -- layer=1 filter=3 channel=35
    -5, 13, 16, 24, 0, -10, -7, 0, -4,
    -- layer=1 filter=3 channel=36
    5, 18, 15, 3, -3, 5, 20, 12, 1,
    -- layer=1 filter=3 channel=37
    2, 1, -17, -22, -5, -10, 1, 8, 21,
    -- layer=1 filter=3 channel=38
    -11, -26, 0, 10, -9, -5, -20, -2, -11,
    -- layer=1 filter=3 channel=39
    -20, 1, -24, 11, -20, -2, 12, 13, -3,
    -- layer=1 filter=3 channel=40
    -21, -4, -11, -16, -19, -12, -14, 10, -25,
    -- layer=1 filter=3 channel=41
    3, 18, -11, 8, -10, -19, -23, -4, -4,
    -- layer=1 filter=3 channel=42
    9, 18, 11, -18, -18, -21, -22, -7, -27,
    -- layer=1 filter=3 channel=43
    3, 21, -8, 3, -21, -31, 25, 9, -36,
    -- layer=1 filter=3 channel=44
    -11, 8, 15, -11, -1, -9, 4, -2, -13,
    -- layer=1 filter=3 channel=45
    -16, 23, 2, 0, 5, 19, -7, 16, 31,
    -- layer=1 filter=3 channel=46
    -16, 5, -12, -8, -2, 18, 22, 15, 8,
    -- layer=1 filter=3 channel=47
    -12, 1, -13, 4, -21, -16, -10, 6, 3,
    -- layer=1 filter=3 channel=48
    -5, -14, -10, 9, -26, -21, -12, 5, -15,
    -- layer=1 filter=3 channel=49
    -16, -7, -10, -7, 0, -2, 0, 1, 6,
    -- layer=1 filter=3 channel=50
    12, -23, 5, 2, 0, -19, 5, -3, -22,
    -- layer=1 filter=3 channel=51
    -7, -13, -21, -14, -12, -11, -5, 0, 6,
    -- layer=1 filter=3 channel=52
    0, 13, 2, 7, 12, 12, -7, 7, -5,
    -- layer=1 filter=3 channel=53
    -24, 11, -1, -9, -5, -11, -14, -21, -26,
    -- layer=1 filter=3 channel=54
    -1, 6, 25, 10, 15, 0, -22, -9, 25,
    -- layer=1 filter=3 channel=55
    -20, -19, -17, 2, -13, -7, -13, 3, 1,
    -- layer=1 filter=3 channel=56
    -3, 24, -1, 8, -11, -6, -3, 9, -3,
    -- layer=1 filter=3 channel=57
    0, -1, -18, -12, -17, 12, -5, 4, 6,
    -- layer=1 filter=3 channel=58
    0, 13, 0, -6, -20, 4, 20, -6, -4,
    -- layer=1 filter=3 channel=59
    19, 25, -9, 7, -14, -5, -1, 14, 4,
    -- layer=1 filter=3 channel=60
    2, -17, -22, 10, -6, -11, -21, -16, -13,
    -- layer=1 filter=3 channel=61
    5, 7, -13, 11, 13, -10, -15, 7, 1,
    -- layer=1 filter=3 channel=62
    -9, 13, 0, -5, -11, 2, -12, -16, 3,
    -- layer=1 filter=3 channel=63
    -15, -18, -22, 7, -25, -43, 25, 1, -34,
    -- layer=1 filter=4 channel=0
    20, -1, -3, -1, 2, -6, -9, -18, -6,
    -- layer=1 filter=4 channel=1
    -42, 0, -13, -19, 8, -20, -11, -5, 3,
    -- layer=1 filter=4 channel=2
    21, 26, 7, 68, 58, 27, 24, 47, 66,
    -- layer=1 filter=4 channel=3
    14, 2, 10, 19, 20, 2, 9, 28, 16,
    -- layer=1 filter=4 channel=4
    0, -17, 4, 9, -6, 5, -10, 12, 12,
    -- layer=1 filter=4 channel=5
    -18, 6, -4, -10, 17, -7, -14, 2, -16,
    -- layer=1 filter=4 channel=6
    -30, 5, -23, -17, -23, -10, 0, -10, 22,
    -- layer=1 filter=4 channel=7
    18, 12, 5, -6, 16, -17, 14, 24, -16,
    -- layer=1 filter=4 channel=8
    5, 4, -19, -3, -11, 0, 1, 13, 18,
    -- layer=1 filter=4 channel=9
    31, 20, 22, 39, 49, 30, 20, 8, 27,
    -- layer=1 filter=4 channel=10
    15, -6, -22, 18, -2, 0, -2, 19, -8,
    -- layer=1 filter=4 channel=11
    27, 15, 32, 30, 26, 24, 26, 17, 30,
    -- layer=1 filter=4 channel=12
    42, 46, 55, 46, 6, 46, 69, 42, 52,
    -- layer=1 filter=4 channel=13
    17, 0, 34, 35, 29, 20, 43, 31, 53,
    -- layer=1 filter=4 channel=14
    -23, 38, -8, 23, 23, 53, 76, 48, 59,
    -- layer=1 filter=4 channel=15
    -7, 8, -18, -8, 17, 0, -1, -9, 3,
    -- layer=1 filter=4 channel=16
    -8, 0, -23, 23, 29, -14, 11, -13, 18,
    -- layer=1 filter=4 channel=17
    10, -3, -19, -5, -17, -26, -19, 17, 18,
    -- layer=1 filter=4 channel=18
    -7, -1, 0, 3, 9, 19, 42, 45, 38,
    -- layer=1 filter=4 channel=19
    -28, -67, -77, -44, -96, -75, -52, -27, -50,
    -- layer=1 filter=4 channel=20
    -5, 34, 32, -3, 0, 41, 20, 29, 42,
    -- layer=1 filter=4 channel=21
    14, 18, 6, 3, -6, 9, 15, -6, 8,
    -- layer=1 filter=4 channel=22
    1, 20, 25, 35, 32, 42, 16, 29, 44,
    -- layer=1 filter=4 channel=23
    -11, -6, 6, 0, 25, 0, 17, 7, -2,
    -- layer=1 filter=4 channel=24
    16, -6, -11, 9, -8, 21, 3, 1, 6,
    -- layer=1 filter=4 channel=25
    -15, -28, -44, -21, -8, 0, 12, 15, 6,
    -- layer=1 filter=4 channel=26
    -11, 14, -7, 6, 13, -1, -10, -10, 3,
    -- layer=1 filter=4 channel=27
    0, -28, -12, -29, -28, -27, 15, -4, -5,
    -- layer=1 filter=4 channel=28
    34, 36, 24, 26, 65, 54, 42, 54, 38,
    -- layer=1 filter=4 channel=29
    3, -20, 21, -18, -41, -16, -6, -5, -23,
    -- layer=1 filter=4 channel=30
    1, -3, 5, 17, -2, 27, 27, 5, -1,
    -- layer=1 filter=4 channel=31
    -15, -17, -8, 6, 16, 1, -11, -5, 18,
    -- layer=1 filter=4 channel=32
    13, 15, 14, 1, 12, -2, 1, 24, 16,
    -- layer=1 filter=4 channel=33
    -13, 5, -18, -21, 4, -11, -9, 1, 10,
    -- layer=1 filter=4 channel=34
    8, -8, -13, -3, -11, -11, 12, 20, 41,
    -- layer=1 filter=4 channel=35
    2, -18, 6, -4, -27, -21, 4, 14, 21,
    -- layer=1 filter=4 channel=36
    45, 55, 58, 19, 35, 10, 74, 80, 58,
    -- layer=1 filter=4 channel=37
    14, -7, 5, 32, 3, 0, -1, 5, 14,
    -- layer=1 filter=4 channel=38
    43, 58, 55, 26, 28, 45, 30, 47, 39,
    -- layer=1 filter=4 channel=39
    8, 18, -6, -5, 0, -7, 13, 10, -18,
    -- layer=1 filter=4 channel=40
    22, 10, 18, 22, 30, 26, -3, 8, -6,
    -- layer=1 filter=4 channel=41
    -21, 25, -8, -8, -25, 6, -7, 16, 12,
    -- layer=1 filter=4 channel=42
    -5, -19, -19, -30, -3, -19, -20, -21, 0,
    -- layer=1 filter=4 channel=43
    -1, -13, 25, -7, 5, -22, -9, -6, -10,
    -- layer=1 filter=4 channel=44
    -7, -20, -9, -14, -21, 13, -22, 7, 5,
    -- layer=1 filter=4 channel=45
    1, 39, -4, -7, 11, 35, 27, 9, 35,
    -- layer=1 filter=4 channel=46
    -25, 5, 10, 22, 23, 10, 5, 16, -1,
    -- layer=1 filter=4 channel=47
    -6, -17, 1, -18, -13, -20, -2, -27, -17,
    -- layer=1 filter=4 channel=48
    4, 23, 17, -10, -14, 6, 13, -6, -5,
    -- layer=1 filter=4 channel=49
    -22, -13, 3, -9, -1, -12, 11, 9, -27,
    -- layer=1 filter=4 channel=50
    8, 18, 15, 55, 15, -3, 18, 24, 16,
    -- layer=1 filter=4 channel=51
    29, 1, 16, 24, 0, 39, 33, 45, 15,
    -- layer=1 filter=4 channel=52
    -8, 5, -10, -3, 18, -1, 1, 20, 16,
    -- layer=1 filter=4 channel=53
    -7, 16, 1, -11, 3, 11, 2, 6, -8,
    -- layer=1 filter=4 channel=54
    24, 28, 53, 16, 17, 67, 10, 31, 34,
    -- layer=1 filter=4 channel=55
    19, 37, 37, 2, 14, 30, 5, 17, 23,
    -- layer=1 filter=4 channel=56
    28, 1, -23, 14, -16, -3, 13, 36, 18,
    -- layer=1 filter=4 channel=57
    -11, -14, 5, -20, 3, -4, -10, -18, -15,
    -- layer=1 filter=4 channel=58
    4, 0, -17, 4, -13, -41, 16, -22, -11,
    -- layer=1 filter=4 channel=59
    -28, -20, -17, -65, -50, -41, -18, -11, -30,
    -- layer=1 filter=4 channel=60
    10, -20, -15, 10, -20, 0, -3, 2, -11,
    -- layer=1 filter=4 channel=61
    -37, -29, -30, -19, -36, -47, -1, -11, 4,
    -- layer=1 filter=4 channel=62
    -46, -39, -60, -59, -36, -69, -45, -50, -40,
    -- layer=1 filter=4 channel=63
    -1, 11, 15, -18, 2, -26, -17, -3, -6,
    -- layer=1 filter=5 channel=0
    -6, -10, 18, -10, -4, 14, -6, 4, -12,
    -- layer=1 filter=5 channel=1
    19, 17, -1, 26, 12, 24, 20, 32, 20,
    -- layer=1 filter=5 channel=2
    16, 13, 31, 24, 44, 43, 40, 29, 31,
    -- layer=1 filter=5 channel=3
    -5, -4, 8, 14, -12, -7, 2, 18, 0,
    -- layer=1 filter=5 channel=4
    -12, 8, 0, -6, -7, -14, 15, 13, -19,
    -- layer=1 filter=5 channel=5
    7, 0, 2, 4, -3, 4, 5, -19, -7,
    -- layer=1 filter=5 channel=6
    -7, -1, -4, 12, 9, 16, 26, 24, 0,
    -- layer=1 filter=5 channel=7
    12, -7, 7, -2, -2, 13, -5, 4, 16,
    -- layer=1 filter=5 channel=8
    4, -17, -12, 5, -8, 11, 0, -17, 14,
    -- layer=1 filter=5 channel=9
    -10, -17, -15, -26, -13, 0, -6, 0, -23,
    -- layer=1 filter=5 channel=10
    8, 21, 10, -11, -7, 7, -5, 4, -6,
    -- layer=1 filter=5 channel=11
    0, 5, -14, -17, -3, 0, 1, -19, -18,
    -- layer=1 filter=5 channel=12
    -24, -10, -25, -50, -32, -22, -22, -37, -20,
    -- layer=1 filter=5 channel=13
    18, -7, 0, -22, 0, 23, -1, 5, 15,
    -- layer=1 filter=5 channel=14
    32, 22, -13, 30, 11, 0, -28, 27, -19,
    -- layer=1 filter=5 channel=15
    -26, -31, 0, -23, -36, -8, -33, 1, -15,
    -- layer=1 filter=5 channel=16
    -15, -32, -3, -33, -31, -17, -16, -35, -32,
    -- layer=1 filter=5 channel=17
    -2, -7, -1, -17, -19, -23, -36, -12, -11,
    -- layer=1 filter=5 channel=18
    9, -8, -7, 2, -21, -3, -7, -6, -5,
    -- layer=1 filter=5 channel=19
    -30, -13, 1, -18, -34, -13, -9, -21, -19,
    -- layer=1 filter=5 channel=20
    14, 17, -4, 24, 5, -8, 9, -6, 17,
    -- layer=1 filter=5 channel=21
    -15, -9, 4, 4, -1, 13, -15, 10, 4,
    -- layer=1 filter=5 channel=22
    31, 25, 14, 3, 3, 27, 17, 0, 25,
    -- layer=1 filter=5 channel=23
    -18, 0, 3, 12, 4, 1, 0, 16, -5,
    -- layer=1 filter=5 channel=24
    -40, -8, -32, -33, -31, -11, -48, -32, -38,
    -- layer=1 filter=5 channel=25
    -14, -10, -15, -21, -41, -32, -16, -7, -3,
    -- layer=1 filter=5 channel=26
    9, -1, 3, -1, -15, -1, -13, -1, 5,
    -- layer=1 filter=5 channel=27
    -42, -36, -25, -35, -34, -22, -45, -32, -39,
    -- layer=1 filter=5 channel=28
    -22, -7, 17, 2, -5, -12, -21, 8, -9,
    -- layer=1 filter=5 channel=29
    -20, -20, -8, -12, -28, -6, 14, -20, 0,
    -- layer=1 filter=5 channel=30
    -38, -39, -13, -29, -53, -32, -53, -36, -29,
    -- layer=1 filter=5 channel=31
    -13, -16, -18, 0, -16, 12, 9, 7, -1,
    -- layer=1 filter=5 channel=32
    -16, -11, 1, 14, -6, -1, -18, 3, -1,
    -- layer=1 filter=5 channel=33
    9, 8, -7, 5, 22, -11, -5, -9, -4,
    -- layer=1 filter=5 channel=34
    3, 9, 4, 16, -9, 21, 3, -11, 28,
    -- layer=1 filter=5 channel=35
    3, 32, 22, -19, -10, -21, 7, -5, 6,
    -- layer=1 filter=5 channel=36
    -18, -41, -18, -34, -22, -30, -27, -15, -25,
    -- layer=1 filter=5 channel=37
    20, 10, -10, 10, -22, -1, 26, -3, -2,
    -- layer=1 filter=5 channel=38
    13, 42, 43, 18, 41, 24, 43, 23, 25,
    -- layer=1 filter=5 channel=39
    9, 16, 19, 8, -7, -5, 4, 0, 19,
    -- layer=1 filter=5 channel=40
    1, -8, 14, 14, 13, 14, 5, 5, -13,
    -- layer=1 filter=5 channel=41
    14, 12, -8, 12, -3, 25, 31, 13, -5,
    -- layer=1 filter=5 channel=42
    0, 5, 3, 1, -13, 3, 0, -12, -13,
    -- layer=1 filter=5 channel=43
    14, 15, -30, -14, 1, -10, -18, 10, -12,
    -- layer=1 filter=5 channel=44
    -28, -13, 4, -8, -30, -22, -47, -36, -21,
    -- layer=1 filter=5 channel=45
    3, 23, -5, 26, 12, -1, 29, 52, -10,
    -- layer=1 filter=5 channel=46
    8, -1, 10, -3, 2, 3, 15, 11, 1,
    -- layer=1 filter=5 channel=47
    -16, 4, -13, 1, -1, -17, -16, 1, 8,
    -- layer=1 filter=5 channel=48
    9, -5, 17, 16, 11, 22, -4, -8, 18,
    -- layer=1 filter=5 channel=49
    10, 1, -1, -11, -1, -1, -9, 16, 14,
    -- layer=1 filter=5 channel=50
    -2, 5, -1, -10, -22, 3, 9, 12, 25,
    -- layer=1 filter=5 channel=51
    26, 0, 29, 5, 25, 8, 11, 27, 23,
    -- layer=1 filter=5 channel=52
    10, -9, -7, 11, 1, -4, -15, 4, -5,
    -- layer=1 filter=5 channel=53
    0, -12, 7, 4, -11, -15, -5, -18, 19,
    -- layer=1 filter=5 channel=54
    27, 33, 9, 23, 23, 16, 42, 33, 34,
    -- layer=1 filter=5 channel=55
    15, 5, 13, 31, 28, 10, 36, 19, 16,
    -- layer=1 filter=5 channel=56
    1, -10, 10, -17, -25, -7, -13, -7, 3,
    -- layer=1 filter=5 channel=57
    0, -3, -11, 13, 11, 12, 6, -16, -8,
    -- layer=1 filter=5 channel=58
    -5, 8, 7, 2, 15, -6, -2, 7, 18,
    -- layer=1 filter=5 channel=59
    -3, 13, -18, 18, 12, 10, -21, -9, 8,
    -- layer=1 filter=5 channel=60
    9, -16, -6, -20, 8, -3, 11, 7, -16,
    -- layer=1 filter=5 channel=61
    21, 18, 8, 6, 23, 10, 15, 23, -10,
    -- layer=1 filter=5 channel=62
    -28, -28, -28, -17, -3, -33, -13, 1, -19,
    -- layer=1 filter=5 channel=63
    27, 2, 8, 26, 31, 20, 27, 27, 51,
    -- layer=1 filter=6 channel=0
    19, 0, 5, -1, -15, 8, -9, -13, 11,
    -- layer=1 filter=6 channel=1
    -24, 4, 2, -14, -10, -25, 1, -23, -25,
    -- layer=1 filter=6 channel=2
    0, -10, 3, 4, 0, 19, 22, 23, 9,
    -- layer=1 filter=6 channel=3
    2, -7, -10, 18, 10, 2, 4, 24, 6,
    -- layer=1 filter=6 channel=4
    -14, -7, -11, 0, 13, -7, 0, 1, 14,
    -- layer=1 filter=6 channel=5
    -9, 9, -15, 0, 13, -2, -12, 0, 8,
    -- layer=1 filter=6 channel=6
    -52, -83, -53, -69, -56, -62, -45, -53, -48,
    -- layer=1 filter=6 channel=7
    3, -18, 10, -19, -4, -16, -11, 12, 18,
    -- layer=1 filter=6 channel=8
    13, -9, -3, 12, -12, 13, -13, -3, 13,
    -- layer=1 filter=6 channel=9
    0, 23, 19, -1, 19, 29, 17, 17, 38,
    -- layer=1 filter=6 channel=10
    -10, -9, 15, -9, 10, -5, -6, 0, 1,
    -- layer=1 filter=6 channel=11
    21, 8, 17, 6, 0, -7, 6, 11, 35,
    -- layer=1 filter=6 channel=12
    16, 1, -3, 14, -22, -8, -11, -47, -28,
    -- layer=1 filter=6 channel=13
    25, -11, 11, 5, -5, 25, -3, 0, 35,
    -- layer=1 filter=6 channel=14
    -24, -22, -24, -3, -18, -24, 7, -3, 1,
    -- layer=1 filter=6 channel=15
    -8, -9, 13, 3, 4, 13, -6, -14, 8,
    -- layer=1 filter=6 channel=16
    -17, -10, -20, -13, 20, 0, 5, -13, -12,
    -- layer=1 filter=6 channel=17
    45, 7, 2, 5, 8, 7, 30, 20, 29,
    -- layer=1 filter=6 channel=18
    59, 55, 33, 21, 10, 33, 5, 8, 8,
    -- layer=1 filter=6 channel=19
    -1, 19, 2, -6, -13, -12, -42, -34, -18,
    -- layer=1 filter=6 channel=20
    3, -2, -7, 10, 1, -2, -2, -9, -5,
    -- layer=1 filter=6 channel=21
    0, -3, 11, 1, 7, -15, 15, -7, 5,
    -- layer=1 filter=6 channel=22
    -10, -24, -4, -20, -23, -26, 1, 2, 0,
    -- layer=1 filter=6 channel=23
    5, 2, -9, -15, 15, -12, 17, 14, 0,
    -- layer=1 filter=6 channel=24
    12, 15, 10, 0, -1, 17, -18, 4, 0,
    -- layer=1 filter=6 channel=25
    34, 11, 0, 10, 0, 5, 2, 6, 0,
    -- layer=1 filter=6 channel=26
    3, 4, 0, 18, 16, 3, 17, 4, 7,
    -- layer=1 filter=6 channel=27
    -2, 5, 11, -19, -17, -20, 14, -6, -10,
    -- layer=1 filter=6 channel=28
    10, -7, 5, 19, 0, 23, 25, 8, 35,
    -- layer=1 filter=6 channel=29
    4, 29, 19, 18, 3, 16, -10, -2, -2,
    -- layer=1 filter=6 channel=30
    -2, -11, 12, -14, -1, 13, 15, -11, 0,
    -- layer=1 filter=6 channel=31
    -9, 7, 15, -9, 12, -23, 4, -23, -10,
    -- layer=1 filter=6 channel=32
    16, 1, 9, -12, -9, -8, -16, 10, 9,
    -- layer=1 filter=6 channel=33
    -19, -9, -43, -12, -3, -20, -13, -27, -23,
    -- layer=1 filter=6 channel=34
    19, 14, -10, 24, 20, -6, 35, 5, 14,
    -- layer=1 filter=6 channel=35
    20, 13, 21, 44, 7, -14, 33, 9, 29,
    -- layer=1 filter=6 channel=36
    28, 47, 48, 19, -8, 15, 35, 9, 11,
    -- layer=1 filter=6 channel=37
    40, 27, -22, 23, 32, 37, 32, 36, 14,
    -- layer=1 filter=6 channel=38
    -6, 23, 6, 24, 25, -1, 16, 6, 20,
    -- layer=1 filter=6 channel=39
    -2, -14, -7, 18, -3, -9, -1, -12, -16,
    -- layer=1 filter=6 channel=40
    11, 13, 13, 5, 9, 1, 3, -5, -3,
    -- layer=1 filter=6 channel=41
    -8, -3, -7, -18, -16, -25, -10, -20, -33,
    -- layer=1 filter=6 channel=42
    5, 1, -12, -3, 14, -17, -7, -13, -18,
    -- layer=1 filter=6 channel=43
    -17, -43, -20, -18, -36, -31, -4, -17, 7,
    -- layer=1 filter=6 channel=44
    1, -13, 7, 7, 0, -3, 11, 0, -6,
    -- layer=1 filter=6 channel=45
    -80, -110, -91, -85, -63, -43, -36, -38, -36,
    -- layer=1 filter=6 channel=46
    7, -19, -10, 40, 13, -6, 11, 11, 23,
    -- layer=1 filter=6 channel=47
    -4, -13, 0, -7, -3, 0, -20, 3, -5,
    -- layer=1 filter=6 channel=48
    22, -3, 18, 13, 11, -8, 1, -12, -11,
    -- layer=1 filter=6 channel=49
    0, -3, 7, 19, 10, 12, 0, -6, 18,
    -- layer=1 filter=6 channel=50
    0, 15, -2, 24, 29, 0, 13, 45, 57,
    -- layer=1 filter=6 channel=51
    4, -12, -6, -1, 0, -22, -3, 1, -28,
    -- layer=1 filter=6 channel=52
    13, 13, 13, -2, 4, -1, 6, 19, -1,
    -- layer=1 filter=6 channel=53
    -7, 10, 17, -2, 1, -4, 9, -8, 1,
    -- layer=1 filter=6 channel=54
    -60, -85, -75, -39, -23, -29, -11, -27, -4,
    -- layer=1 filter=6 channel=55
    6, 19, -8, 0, 21, -3, -3, 23, 19,
    -- layer=1 filter=6 channel=56
    47, 15, 3, 29, 26, 15, 52, 8, 25,
    -- layer=1 filter=6 channel=57
    12, 4, -15, -4, -15, 16, -14, 6, 15,
    -- layer=1 filter=6 channel=58
    -3, 1, -35, -17, -10, 0, -20, -23, 2,
    -- layer=1 filter=6 channel=59
    14, 1, -8, -20, -15, 0, -16, -22, -6,
    -- layer=1 filter=6 channel=60
    18, 0, -11, -12, -9, 10, 0, -3, -10,
    -- layer=1 filter=6 channel=61
    -27, -23, -40, -26, -38, -28, -44, -22, -33,
    -- layer=1 filter=6 channel=62
    -20, 7, -14, 0, -5, -16, -26, -24, -33,
    -- layer=1 filter=6 channel=63
    -68, -30, -28, -55, -25, -51, -16, -34, -4,
    -- layer=1 filter=7 channel=0
    -9, -25, 3, 7, -11, 1, 5, 7, -23,
    -- layer=1 filter=7 channel=1
    -7, 2, -4, -22, -40, -26, -33, -43, -25,
    -- layer=1 filter=7 channel=2
    -43, -64, -54, -43, -74, -67, -33, -41, -48,
    -- layer=1 filter=7 channel=3
    -8, -26, 1, -10, -31, -18, 4, 0, 5,
    -- layer=1 filter=7 channel=4
    -8, -3, 9, -4, 12, 16, 2, -1, -4,
    -- layer=1 filter=7 channel=5
    -16, -20, -19, -19, -5, -26, 0, 13, -3,
    -- layer=1 filter=7 channel=6
    37, 16, 18, 35, 35, 42, 34, 4, 26,
    -- layer=1 filter=7 channel=7
    -12, 11, -17, -12, -1, 14, -17, 2, -9,
    -- layer=1 filter=7 channel=8
    -14, 6, 6, -1, -11, -11, -12, -17, 15,
    -- layer=1 filter=7 channel=9
    -9, 0, -24, 11, -17, -18, 20, 19, 10,
    -- layer=1 filter=7 channel=10
    -29, -29, -28, -25, 3, 0, -10, -16, -16,
    -- layer=1 filter=7 channel=11
    -22, -11, 4, -10, -5, -4, 6, 10, 32,
    -- layer=1 filter=7 channel=12
    37, 63, 47, 41, 10, 18, 24, 7, 5,
    -- layer=1 filter=7 channel=13
    -25, -35, 0, 20, -31, -11, 38, 3, 27,
    -- layer=1 filter=7 channel=14
    -1, -42, 6, -50, -9, -62, 24, 5, -12,
    -- layer=1 filter=7 channel=15
    0, 8, -2, 4, 21, -15, 0, 17, 4,
    -- layer=1 filter=7 channel=16
    -14, -10, -13, -6, -4, -29, 8, 0, -12,
    -- layer=1 filter=7 channel=17
    6, 29, 23, 9, 0, -8, 8, -2, 40,
    -- layer=1 filter=7 channel=18
    -18, -10, -13, -10, 3, -28, -13, 0, -27,
    -- layer=1 filter=7 channel=19
    103, 100, 72, 74, 80, 87, 68, 58, 40,
    -- layer=1 filter=7 channel=20
    -5, -19, -27, -23, -35, -46, -27, -48, -1,
    -- layer=1 filter=7 channel=21
    -14, -10, 2, 0, -1, -18, -17, -14, 8,
    -- layer=1 filter=7 channel=22
    -4, 3, -27, -13, -49, -46, -53, -35, -6,
    -- layer=1 filter=7 channel=23
    -20, -15, -28, -9, -16, -24, 21, -10, -5,
    -- layer=1 filter=7 channel=24
    -8, 0, -12, 9, -20, -6, 12, 1, 16,
    -- layer=1 filter=7 channel=25
    75, 52, 31, 53, 56, -4, 57, 0, 18,
    -- layer=1 filter=7 channel=26
    -28, -15, -18, -9, 1, -17, 6, 18, 11,
    -- layer=1 filter=7 channel=27
    127, 143, 107, 89, 102, 83, 50, 77, 65,
    -- layer=1 filter=7 channel=28
    -11, -16, -26, 6, -19, -7, 33, 20, 14,
    -- layer=1 filter=7 channel=29
    66, 67, 53, 51, 48, 44, 40, 19, 40,
    -- layer=1 filter=7 channel=30
    10, -1, -8, 2, 14, 1, 14, -2, 3,
    -- layer=1 filter=7 channel=31
    -14, -5, -10, 7, -15, -8, 6, 22, 6,
    -- layer=1 filter=7 channel=32
    11, 14, 3, 9, -11, -1, 0, -11, 4,
    -- layer=1 filter=7 channel=33
    28, 12, 0, -13, -25, -13, -24, -21, -1,
    -- layer=1 filter=7 channel=34
    -12, -16, 2, -1, -10, -24, -9, -41, -13,
    -- layer=1 filter=7 channel=35
    2, 10, 25, 17, 16, -8, 29, 21, 45,
    -- layer=1 filter=7 channel=36
    84, 94, 88, 76, 70, 63, 26, 31, 38,
    -- layer=1 filter=7 channel=37
    15, 1, -22, -1, -19, 0, -25, -31, -20,
    -- layer=1 filter=7 channel=38
    -61, -53, -62, -63, -46, -39, -30, -65, -34,
    -- layer=1 filter=7 channel=39
    -29, -9, -10, -21, -9, 2, -21, -31, -8,
    -- layer=1 filter=7 channel=40
    -18, -31, -8, -5, -8, 0, 9, 13, 1,
    -- layer=1 filter=7 channel=41
    17, -3, -16, -16, -11, -12, -19, -37, -10,
    -- layer=1 filter=7 channel=42
    6, 12, -16, -2, 7, 2, -2, -12, -5,
    -- layer=1 filter=7 channel=43
    21, 71, 45, 41, 62, 19, 45, 53, 42,
    -- layer=1 filter=7 channel=44
    -29, -11, -5, 3, -24, -20, 9, 2, 13,
    -- layer=1 filter=7 channel=45
    7, 6, 26, 9, 17, -13, 9, -4, 6,
    -- layer=1 filter=7 channel=46
    7, 19, -1, 6, -9, -5, 11, -8, -19,
    -- layer=1 filter=7 channel=47
    10, 1, 8, -6, 11, 14, 0, -3, -1,
    -- layer=1 filter=7 channel=48
    -19, -31, -27, -27, -17, -33, -10, -27, -11,
    -- layer=1 filter=7 channel=49
    -17, -10, 0, 2, -24, 4, -24, 6, -2,
    -- layer=1 filter=7 channel=50
    77, 52, 78, 77, 42, 49, 62, 56, 16,
    -- layer=1 filter=7 channel=51
    -41, -28, -8, -21, -25, -16, -21, -27, 2,
    -- layer=1 filter=7 channel=52
    -16, 23, 14, -22, 2, -21, -1, 7, 6,
    -- layer=1 filter=7 channel=53
    0, -36, -21, -19, 6, -6, 6, 3, 10,
    -- layer=1 filter=7 channel=54
    -77, -55, -32, -34, -45, -67, -8, -51, -1,
    -- layer=1 filter=7 channel=55
    -58, -72, -30, -58, -53, -19, -38, -19, -2,
    -- layer=1 filter=7 channel=56
    -9, 6, -15, 4, -22, -21, 8, -24, -13,
    -- layer=1 filter=7 channel=57
    -12, 2, 10, -10, 18, 4, -11, -13, 3,
    -- layer=1 filter=7 channel=58
    40, 53, 35, 2, 5, 9, -11, 3, -12,
    -- layer=1 filter=7 channel=59
    35, 48, 32, 21, 19, 22, 19, -3, 0,
    -- layer=1 filter=7 channel=60
    3, -5, -2, -2, 7, 12, 8, 11, 15,
    -- layer=1 filter=7 channel=61
    4, 20, 3, 13, 24, -2, -6, -4, 5,
    -- layer=1 filter=7 channel=62
    31, 48, 38, 28, 29, 39, 5, 22, 7,
    -- layer=1 filter=7 channel=63
    -57, -23, -27, -63, -24, -60, -16, -14, -38,
    -- layer=1 filter=8 channel=0
    -26, -21, -9, -6, -2, -5, 26, 23, 26,
    -- layer=1 filter=8 channel=1
    -6, -5, 10, 21, 5, 18, 16, 33, 30,
    -- layer=1 filter=8 channel=2
    5, -23, 0, 20, 10, 44, 16, 19, 24,
    -- layer=1 filter=8 channel=3
    17, -3, -10, 2, 5, -3, -15, 16, -13,
    -- layer=1 filter=8 channel=4
    14, 13, -15, 1, 11, -6, 0, -13, 8,
    -- layer=1 filter=8 channel=5
    -16, 3, 1, -4, -25, 5, 18, -4, 2,
    -- layer=1 filter=8 channel=6
    0, 7, -35, -25, -57, -43, -50, -64, -50,
    -- layer=1 filter=8 channel=7
    -15, 6, 4, -22, -25, -4, 6, 0, -22,
    -- layer=1 filter=8 channel=8
    3, 11, -20, -2, -11, -7, 3, -3, 7,
    -- layer=1 filter=8 channel=9
    -21, -8, -19, 7, 10, -4, 1, -19, 6,
    -- layer=1 filter=8 channel=10
    -6, 3, -24, -28, -21, -22, 29, 15, 27,
    -- layer=1 filter=8 channel=11
    -1, 8, 4, -21, 15, -3, -16, -3, -6,
    -- layer=1 filter=8 channel=12
    26, 17, -13, -12, 2, -15, 2, -10, -10,
    -- layer=1 filter=8 channel=13
    -7, -1, 24, -7, -43, -23, -7, -7, -13,
    -- layer=1 filter=8 channel=14
    56, 0, -4, 50, 77, 33, 66, 29, 1,
    -- layer=1 filter=8 channel=15
    -22, -12, 6, 17, 6, -2, -6, 5, 0,
    -- layer=1 filter=8 channel=16
    4, -30, -14, -1, 16, 18, 17, 14, -12,
    -- layer=1 filter=8 channel=17
    51, 52, 42, 33, 57, 14, 28, 22, 26,
    -- layer=1 filter=8 channel=18
    31, 19, 25, 58, 57, 31, -4, -8, -15,
    -- layer=1 filter=8 channel=19
    -10, -1, -9, -10, -35, -39, -37, -36, -33,
    -- layer=1 filter=8 channel=20
    33, 9, 19, 26, -6, 12, 0, -14, -3,
    -- layer=1 filter=8 channel=21
    2, 2, 9, -10, 9, 13, 8, 0, 14,
    -- layer=1 filter=8 channel=22
    0, 12, 11, -3, -3, 7, -1, 3, 0,
    -- layer=1 filter=8 channel=23
    1, -2, -22, -12, -21, -8, -4, 24, 12,
    -- layer=1 filter=8 channel=24
    -1, 24, 13, -12, 10, 12, -13, -17, 6,
    -- layer=1 filter=8 channel=25
    40, 61, 37, 11, 54, 20, 38, 25, 24,
    -- layer=1 filter=8 channel=26
    -19, 0, -19, -8, 8, 15, 10, 12, 25,
    -- layer=1 filter=8 channel=27
    14, 15, 12, -2, 17, -13, -13, -24, -21,
    -- layer=1 filter=8 channel=28
    27, 18, 19, -27, -13, -37, -25, -1, -12,
    -- layer=1 filter=8 channel=29
    -12, -25, -30, 15, 12, 9, 4, 6, 1,
    -- layer=1 filter=8 channel=30
    3, 15, 16, 6, 30, 32, -18, 0, 6,
    -- layer=1 filter=8 channel=31
    -13, -20, -8, 0, 5, -2, 20, 20, 12,
    -- layer=1 filter=8 channel=32
    1, -2, 8, 2, 9, -6, -9, 12, 0,
    -- layer=1 filter=8 channel=33
    6, 0, 4, 12, -15, -28, -22, -42, 7,
    -- layer=1 filter=8 channel=34
    53, 61, 15, 26, 20, 25, -11, 30, 0,
    -- layer=1 filter=8 channel=35
    28, 66, 41, 35, 45, 39, 18, 25, 6,
    -- layer=1 filter=8 channel=36
    3, -17, -22, -17, 0, -12, 24, 28, 1,
    -- layer=1 filter=8 channel=37
    58, 59, 53, 61, 102, 91, 85, 77, 47,
    -- layer=1 filter=8 channel=38
    13, 19, 0, 14, -3, -1, -4, -8, -2,
    -- layer=1 filter=8 channel=39
    -9, 4, -22, -10, -14, 5, 31, 34, 11,
    -- layer=1 filter=8 channel=40
    -6, 1, 0, 4, -6, -5, 17, 1, 0,
    -- layer=1 filter=8 channel=41
    -8, -3, -7, 12, 3, -11, -8, 23, 26,
    -- layer=1 filter=8 channel=42
    -23, -25, -14, -11, 3, -3, 23, 8, 20,
    -- layer=1 filter=8 channel=43
    5, -21, -31, -84, -78, -55, -16, -56, -45,
    -- layer=1 filter=8 channel=44
    -5, 9, 12, -25, -34, -20, 0, 10, 18,
    -- layer=1 filter=8 channel=45
    24, 3, -12, -14, -37, -42, -46, -56, -22,
    -- layer=1 filter=8 channel=46
    37, 34, 18, 55, 80, 43, 74, 42, 41,
    -- layer=1 filter=8 channel=47
    3, -15, -15, -2, -10, -7, 2, 14, 36,
    -- layer=1 filter=8 channel=48
    -21, 1, -2, -18, -22, 0, 24, 27, 32,
    -- layer=1 filter=8 channel=49
    -28, -2, -18, -6, 23, 31, 38, 15, 13,
    -- layer=1 filter=8 channel=50
    44, 68, 64, 104, 115, 94, 93, 77, 55,
    -- layer=1 filter=8 channel=51
    4, 10, -6, 21, 8, 3, 25, 7, 18,
    -- layer=1 filter=8 channel=52
    -15, -31, 0, 9, 6, -11, 3, 8, 17,
    -- layer=1 filter=8 channel=53
    -13, 15, -3, -4, -9, -9, 17, 5, 13,
    -- layer=1 filter=8 channel=54
    -23, -12, -43, -55, -81, -48, -79, -82, -40,
    -- layer=1 filter=8 channel=55
    -5, 3, -9, 0, -24, -5, 5, 10, 21,
    -- layer=1 filter=8 channel=56
    66, 78, 37, 68, 74, 36, 32, 48, 24,
    -- layer=1 filter=8 channel=57
    -15, 6, 9, 15, 15, -1, -4, 15, 16,
    -- layer=1 filter=8 channel=58
    -2, 18, 5, -18, -31, -27, 1, 4, -12,
    -- layer=1 filter=8 channel=59
    5, 5, 0, 3, -28, -16, 18, 1, -2,
    -- layer=1 filter=8 channel=60
    -18, -11, -10, -10, -10, 0, 28, 5, 1,
    -- layer=1 filter=8 channel=61
    -1, -15, -4, 13, 13, 30, 27, 37, 34,
    -- layer=1 filter=8 channel=62
    -29, -40, -33, -14, -11, -19, 25, 27, 33,
    -- layer=1 filter=8 channel=63
    0, -31, 16, -29, -20, 1, -28, -28, -29,
    -- layer=1 filter=9 channel=0
    -2, -5, 3, -5, -7, -12, -43, -23, -33,
    -- layer=1 filter=9 channel=1
    25, -11, -8, -7, 6, -7, 20, 16, -1,
    -- layer=1 filter=9 channel=2
    22, 11, 5, 7, 24, -5, 36, 37, 10,
    -- layer=1 filter=9 channel=3
    -1, -18, 22, -36, -7, 21, -43, -31, -13,
    -- layer=1 filter=9 channel=4
    6, 2, 10, 17, -9, -9, -10, -13, 9,
    -- layer=1 filter=9 channel=5
    -7, -9, 43, -37, -35, -12, -7, -39, -16,
    -- layer=1 filter=9 channel=6
    -11, -1, 38, 9, 34, -2, 35, -8, -10,
    -- layer=1 filter=9 channel=7
    18, -9, 25, 5, 6, 2, -12, 14, -13,
    -- layer=1 filter=9 channel=8
    8, 11, 1, -15, -11, 13, 8, -5, -18,
    -- layer=1 filter=9 channel=9
    -15, -16, -26, 11, 7, 14, -28, -39, -18,
    -- layer=1 filter=9 channel=10
    20, 32, 14, 14, -10, 0, -25, -32, -31,
    -- layer=1 filter=9 channel=11
    -15, -18, -6, 1, 3, 7, -34, -33, 8,
    -- layer=1 filter=9 channel=12
    47, 33, 31, 36, 14, 5, 8, 21, -5,
    -- layer=1 filter=9 channel=13
    -21, 8, 27, -12, 6, 15, -37, -8, -26,
    -- layer=1 filter=9 channel=14
    48, 43, 37, 22, 27, 25, 60, 23, 7,
    -- layer=1 filter=9 channel=15
    -20, -11, -10, 10, -44, -26, -39, -44, -14,
    -- layer=1 filter=9 channel=16
    -17, -36, -18, 21, 2, -4, -14, -9, -4,
    -- layer=1 filter=9 channel=17
    15, 5, 52, -11, 25, 36, -40, -41, -33,
    -- layer=1 filter=9 channel=18
    55, 34, 47, 83, 62, 71, 49, 57, 62,
    -- layer=1 filter=9 channel=19
    43, 43, 26, 49, 28, 15, 23, 29, 50,
    -- layer=1 filter=9 channel=20
    -19, 19, 25, 22, 38, 21, 22, 8, 18,
    -- layer=1 filter=9 channel=21
    -8, -18, 8, -9, 3, -18, 4, 16, 0,
    -- layer=1 filter=9 channel=22
    23, 38, 31, 32, 26, 12, 47, 27, 26,
    -- layer=1 filter=9 channel=23
    -28, -32, 0, -51, -44, -56, -46, -87, -76,
    -- layer=1 filter=9 channel=24
    -35, -18, 20, 6, -21, -4, -5, -3, 8,
    -- layer=1 filter=9 channel=25
    16, 51, 78, 23, -7, 13, -35, -40, -9,
    -- layer=1 filter=9 channel=26
    -18, 13, -5, -32, -25, -7, -51, -43, -51,
    -- layer=1 filter=9 channel=27
    45, 39, 21, 35, 56, 47, 55, 36, 46,
    -- layer=1 filter=9 channel=28
    -9, -14, -5, -5, -4, -4, 5, -5, -12,
    -- layer=1 filter=9 channel=29
    8, -2, 1, 1, -13, 0, 19, -7, 10,
    -- layer=1 filter=9 channel=30
    10, -24, -3, 32, -12, -1, -21, -13, -26,
    -- layer=1 filter=9 channel=31
    -17, -49, -20, -50, -67, -48, -35, -60, -114,
    -- layer=1 filter=9 channel=32
    13, -4, -17, 7, 15, 8, -6, -9, -1,
    -- layer=1 filter=9 channel=33
    -24, -31, 11, -22, 6, -19, -22, -45, -47,
    -- layer=1 filter=9 channel=34
    7, 15, 23, 23, 19, 17, -54, -65, -89,
    -- layer=1 filter=9 channel=35
    8, 26, 51, 20, 4, 42, -39, -46, -21,
    -- layer=1 filter=9 channel=36
    34, 9, 19, 3, 7, 19, 8, 27, -8,
    -- layer=1 filter=9 channel=37
    -80, -114, -73, -51, -91, -61, -20, -24, -19,
    -- layer=1 filter=9 channel=38
    4, 36, 22, 17, 5, 7, 22, 33, 32,
    -- layer=1 filter=9 channel=39
    2, 17, 10, 13, -23, -16, -24, -20, 0,
    -- layer=1 filter=9 channel=40
    -35, 4, 0, -46, -28, -41, -48, -75, -72,
    -- layer=1 filter=9 channel=41
    4, 31, 2, 1, 8, -6, 13, 4, 21,
    -- layer=1 filter=9 channel=42
    -2, 30, 23, -10, 3, -30, -15, -34, -23,
    -- layer=1 filter=9 channel=43
    18, 9, 38, -4, -8, 14, -18, 0, 21,
    -- layer=1 filter=9 channel=44
    -9, -21, 23, -9, 5, 17, -1, -7, -31,
    -- layer=1 filter=9 channel=45
    -45, -29, -20, -58, -16, -4, -8, -43, -59,
    -- layer=1 filter=9 channel=46
    -76, -77, -99, -99, -121, -58, -6, -34, -44,
    -- layer=1 filter=9 channel=47
    4, 33, 0, -7, -34, -20, -30, -31, -20,
    -- layer=1 filter=9 channel=48
    0, 4, 37, -10, -1, -4, -47, -46, -44,
    -- layer=1 filter=9 channel=49
    -33, -42, -56, -46, -65, -39, -31, -42, -47,
    -- layer=1 filter=9 channel=50
    -79, -52, -101, -86, -141, -125, -67, -77, -49,
    -- layer=1 filter=9 channel=51
    22, -8, 15, 22, 30, -1, 21, 0, 5,
    -- layer=1 filter=9 channel=52
    -66, -50, -38, -41, -47, -39, -3, -32, -14,
    -- layer=1 filter=9 channel=53
    -36, -8, 11, -22, -14, 5, -36, -25, -17,
    -- layer=1 filter=9 channel=54
    -51, -56, -44, -81, -81, -75, -41, -56, -87,
    -- layer=1 filter=9 channel=55
    2, 3, 15, -3, 0, -4, -2, -2, -4,
    -- layer=1 filter=9 channel=56
    0, 27, 48, -7, -23, 0, -52, -52, -38,
    -- layer=1 filter=9 channel=57
    7, -1, 13, 16, -9, 3, -8, -17, -6,
    -- layer=1 filter=9 channel=58
    31, 8, 11, 15, -7, 11, 6, 17, 9,
    -- layer=1 filter=9 channel=59
    29, 2, 15, 14, 28, 25, 3, 0, 9,
    -- layer=1 filter=9 channel=60
    -30, 0, -2, -13, -54, -16, -72, -48, -24,
    -- layer=1 filter=9 channel=61
    16, 22, 16, 8, -9, 17, 11, 21, 11,
    -- layer=1 filter=9 channel=62
    3, 14, 20, 11, -3, -7, -17, -21, -10,
    -- layer=1 filter=9 channel=63
    2, -35, 4, -65, -86, 1, -64, -52, -14,
    -- layer=1 filter=10 channel=0
    -10, 2, 11, -8, 2, -10, -8, -5, -17,
    -- layer=1 filter=10 channel=1
    7, -2, 14, -15, -8, 6, -17, -3, -19,
    -- layer=1 filter=10 channel=2
    -5, -2, 7, -1, 0, -12, -5, -17, 1,
    -- layer=1 filter=10 channel=3
    4, 0, 12, -4, -13, -6, -2, 13, -6,
    -- layer=1 filter=10 channel=4
    8, 17, 8, 0, -15, -17, 8, 15, -3,
    -- layer=1 filter=10 channel=5
    14, -14, 1, 7, 8, 12, 10, -14, 6,
    -- layer=1 filter=10 channel=6
    8, 8, 1, 1, 10, 5, 7, 1, 3,
    -- layer=1 filter=10 channel=7
    17, 0, 18, 10, 16, -12, 11, -7, -5,
    -- layer=1 filter=10 channel=8
    14, 3, -5, -5, 11, -13, -5, 11, -15,
    -- layer=1 filter=10 channel=9
    -17, 6, -17, 11, -1, 13, -19, -1, 10,
    -- layer=1 filter=10 channel=10
    -18, -14, -18, 11, -18, -11, -5, -3, 9,
    -- layer=1 filter=10 channel=11
    -14, 3, -17, 4, 16, 5, -7, 17, -10,
    -- layer=1 filter=10 channel=12
    -17, -18, 15, -18, 3, 3, -15, 8, 1,
    -- layer=1 filter=10 channel=13
    13, -12, -10, 15, 0, -11, -18, -2, -10,
    -- layer=1 filter=10 channel=14
    -16, 15, -2, 7, 0, 11, -17, 11, -4,
    -- layer=1 filter=10 channel=15
    10, 9, -5, -19, 2, -19, 15, -6, 0,
    -- layer=1 filter=10 channel=16
    -5, 0, -4, 13, 0, 15, -7, -10, -1,
    -- layer=1 filter=10 channel=17
    -18, -3, 17, 10, -13, -18, -18, 10, 2,
    -- layer=1 filter=10 channel=18
    -22, 0, 9, -13, -20, -23, 12, 3, -15,
    -- layer=1 filter=10 channel=19
    -14, -17, 8, -17, -3, -22, 1, 10, -23,
    -- layer=1 filter=10 channel=20
    -12, -18, -16, -1, 13, -15, -13, 0, 14,
    -- layer=1 filter=10 channel=21
    10, 4, -15, 3, -4, 11, -16, -3, -9,
    -- layer=1 filter=10 channel=22
    12, 8, 0, -14, 13, 11, -12, -2, 10,
    -- layer=1 filter=10 channel=23
    -6, 15, 0, -1, 13, 10, -3, 11, 11,
    -- layer=1 filter=10 channel=24
    -16, 7, 0, 9, -5, -7, -15, 11, -10,
    -- layer=1 filter=10 channel=25
    17, 2, -7, -2, -2, -15, 1, -15, -9,
    -- layer=1 filter=10 channel=26
    -13, -12, -1, 9, 0, -14, 6, 8, 8,
    -- layer=1 filter=10 channel=27
    -1, 0, -11, -20, -16, -20, 10, 5, 2,
    -- layer=1 filter=10 channel=28
    9, -4, -17, 11, -12, -3, -15, -5, -18,
    -- layer=1 filter=10 channel=29
    6, -21, -3, -15, -12, -5, -12, 6, -12,
    -- layer=1 filter=10 channel=30
    -13, 11, 9, 0, -12, -2, 11, 2, -6,
    -- layer=1 filter=10 channel=31
    -12, -18, 3, -12, -13, -7, 11, -12, -8,
    -- layer=1 filter=10 channel=32
    -1, 3, 4, -8, -2, -3, 10, 9, 0,
    -- layer=1 filter=10 channel=33
    -9, 6, -6, 13, 2, -3, -1, -14, 3,
    -- layer=1 filter=10 channel=34
    -17, 0, 3, 1, 0, -1, 10, 1, 6,
    -- layer=1 filter=10 channel=35
    13, 13, 2, 3, 12, -1, -19, -11, -13,
    -- layer=1 filter=10 channel=36
    6, -9, -17, -3, 2, -5, 8, -11, 6,
    -- layer=1 filter=10 channel=37
    8, 2, 1, -16, -11, -1, 4, 11, 2,
    -- layer=1 filter=10 channel=38
    -5, 7, 2, 5, -3, -3, 1, -22, 14,
    -- layer=1 filter=10 channel=39
    9, 5, 12, -7, 2, 0, 14, 0, -17,
    -- layer=1 filter=10 channel=40
    -14, -16, -6, -6, -10, 2, 7, 8, -12,
    -- layer=1 filter=10 channel=41
    -3, -17, -6, -20, 9, 7, -12, 5, -12,
    -- layer=1 filter=10 channel=42
    10, 0, -7, 3, 6, 13, -2, -15, -10,
    -- layer=1 filter=10 channel=43
    -11, -9, 12, 13, 1, -4, -19, -16, 15,
    -- layer=1 filter=10 channel=44
    -11, -20, -7, -20, -10, 5, 12, -4, -3,
    -- layer=1 filter=10 channel=45
    -2, -4, 15, -5, -17, 12, -15, -5, -7,
    -- layer=1 filter=10 channel=46
    -2, 12, -11, 0, -4, -9, -6, -1, 3,
    -- layer=1 filter=10 channel=47
    -7, -14, -8, 5, -1, -15, -14, -9, -6,
    -- layer=1 filter=10 channel=48
    -6, 8, 0, -7, -3, 2, 10, -6, -20,
    -- layer=1 filter=10 channel=49
    15, -1, 0, -3, 12, 15, 4, -15, -18,
    -- layer=1 filter=10 channel=50
    -6, -3, 15, -2, -9, -9, -15, -5, 1,
    -- layer=1 filter=10 channel=51
    12, -9, -6, -6, -16, -16, -8, -2, -22,
    -- layer=1 filter=10 channel=52
    -10, 9, -7, -14, -3, -12, 0, -19, -4,
    -- layer=1 filter=10 channel=53
    4, 14, -14, 9, 11, 0, -13, -7, 4,
    -- layer=1 filter=10 channel=54
    -6, 9, -17, 6, -16, -10, 0, 3, -19,
    -- layer=1 filter=10 channel=55
    -15, 11, -2, 1, -5, -9, 6, -3, 2,
    -- layer=1 filter=10 channel=56
    15, 0, -10, -12, -11, 2, 10, 9, 0,
    -- layer=1 filter=10 channel=57
    -12, 17, -16, 1, -13, -8, 15, 14, -15,
    -- layer=1 filter=10 channel=58
    -5, 5, 6, -6, -17, -19, -6, -11, -19,
    -- layer=1 filter=10 channel=59
    5, 6, -19, 11, -2, 12, -19, -6, -9,
    -- layer=1 filter=10 channel=60
    -4, -16, 5, 9, 1, 0, -19, 6, -12,
    -- layer=1 filter=10 channel=61
    -9, -23, 9, 0, 3, 8, -7, 3, 12,
    -- layer=1 filter=10 channel=62
    2, -1, -17, 4, 1, -13, -17, 15, -3,
    -- layer=1 filter=10 channel=63
    -10, 12, 5, -4, -17, 4, -5, 11, 0,
    -- layer=1 filter=11 channel=0
    -4, 11, 9, -2, 14, 17, -10, 8, 4,
    -- layer=1 filter=11 channel=1
    31, 0, 8, 35, 22, 20, 24, 29, 6,
    -- layer=1 filter=11 channel=2
    1, 0, 3, -4, -16, -7, -9, -12, -15,
    -- layer=1 filter=11 channel=3
    -13, -11, -9, -26, -16, -16, -12, -3, -16,
    -- layer=1 filter=11 channel=4
    -9, 3, 7, -7, 10, 7, 12, -11, -5,
    -- layer=1 filter=11 channel=5
    -8, 5, 8, 0, 13, 0, -13, 2, -4,
    -- layer=1 filter=11 channel=6
    -4, -6, 7, -4, 15, 2, 22, 26, 35,
    -- layer=1 filter=11 channel=7
    -2, 4, 15, -7, -17, 15, -6, 0, -7,
    -- layer=1 filter=11 channel=8
    0, -9, -18, 1, 17, 3, 15, -6, 11,
    -- layer=1 filter=11 channel=9
    -31, -7, 3, -39, -10, -17, -26, -21, 4,
    -- layer=1 filter=11 channel=10
    8, 12, -1, 25, 27, 1, 9, 18, 8,
    -- layer=1 filter=11 channel=11
    -30, -19, -4, -27, 1, -8, -31, -36, -1,
    -- layer=1 filter=11 channel=12
    -15, 1, -31, -26, 2, -5, -34, -7, -19,
    -- layer=1 filter=11 channel=13
    -22, -3, -24, -6, -9, -3, -30, -13, -31,
    -- layer=1 filter=11 channel=14
    -34, -43, 0, -23, -9, -27, -53, -41, -23,
    -- layer=1 filter=11 channel=15
    -24, -16, 11, 0, 15, -11, -6, -17, -16,
    -- layer=1 filter=11 channel=16
    -41, -22, -24, -26, -12, 4, -20, -30, 0,
    -- layer=1 filter=11 channel=17
    -20, -29, -11, -6, -37, -19, -16, -26, 7,
    -- layer=1 filter=11 channel=18
    -22, -22, -7, -49, -26, -23, -63, -39, -41,
    -- layer=1 filter=11 channel=19
    3, -21, 22, 3, 15, -1, 9, 0, 24,
    -- layer=1 filter=11 channel=20
    14, 0, 6, 19, -6, 24, 14, -2, -2,
    -- layer=1 filter=11 channel=21
    4, -17, -2, 11, 4, -7, -12, -11, -18,
    -- layer=1 filter=11 channel=22
    23, 6, 14, 27, 13, 12, 31, 14, 27,
    -- layer=1 filter=11 channel=23
    -5, 21, -4, -20, 6, 12, 4, -3, 1,
    -- layer=1 filter=11 channel=24
    -30, -40, -6, -15, -15, 9, -15, -35, 1,
    -- layer=1 filter=11 channel=25
    -5, -21, 0, -29, -19, 11, 0, -18, 0,
    -- layer=1 filter=11 channel=26
    3, 5, 0, 3, -12, -10, -4, -11, -4,
    -- layer=1 filter=11 channel=27
    -20, -20, -21, -17, -22, 17, -16, -12, -6,
    -- layer=1 filter=11 channel=28
    -29, -6, -37, -39, -6, -18, -52, -38, -35,
    -- layer=1 filter=11 channel=29
    -7, 0, 12, 15, 9, -7, 20, 3, 35,
    -- layer=1 filter=11 channel=30
    -17, -23, -22, -12, 0, -24, -32, 0, 1,
    -- layer=1 filter=11 channel=31
    3, 17, -2, 8, 16, 0, -16, 17, -1,
    -- layer=1 filter=11 channel=32
    -15, -8, -8, -4, -1, -1, -10, 2, -7,
    -- layer=1 filter=11 channel=33
    5, -13, -23, 21, 4, 3, 23, 17, 37,
    -- layer=1 filter=11 channel=34
    -25, -16, -6, -9, -20, -9, -7, 12, 15,
    -- layer=1 filter=11 channel=35
    -16, -11, -6, -16, -28, 1, -16, -12, 10,
    -- layer=1 filter=11 channel=36
    -18, -13, -10, -21, 4, -3, 3, -15, 0,
    -- layer=1 filter=11 channel=37
    -25, -27, -10, -14, -29, -3, -11, -22, -1,
    -- layer=1 filter=11 channel=38
    16, -18, 11, 7, 18, 3, 18, 18, 23,
    -- layer=1 filter=11 channel=39
    12, 0, -6, -1, 3, 19, -4, 1, 21,
    -- layer=1 filter=11 channel=40
    7, 8, 11, 8, -18, -2, 0, -17, -17,
    -- layer=1 filter=11 channel=41
    0, 27, 15, 30, 2, 17, 11, 34, 12,
    -- layer=1 filter=11 channel=42
    -4, 11, 22, -2, 16, -1, 16, 21, 13,
    -- layer=1 filter=11 channel=43
    15, 0, 15, 11, 19, 18, 6, 22, 32,
    -- layer=1 filter=11 channel=44
    -3, 1, -21, -1, -18, 10, -14, -29, 3,
    -- layer=1 filter=11 channel=45
    -9, 16, -19, -2, -9, 10, 18, 30, 12,
    -- layer=1 filter=11 channel=46
    -1, 3, -9, -10, -18, 23, 24, -2, 22,
    -- layer=1 filter=11 channel=47
    5, 15, 8, -8, 1, 14, 18, 1, 7,
    -- layer=1 filter=11 channel=48
    5, 12, -4, -11, -4, 17, 14, 18, 16,
    -- layer=1 filter=11 channel=49
    -2, 10, -13, -4, 5, 4, -6, -8, 13,
    -- layer=1 filter=11 channel=50
    -52, -58, -34, -52, -42, -33, -19, -7, 20,
    -- layer=1 filter=11 channel=51
    13, 0, 13, 14, 0, 3, 20, 16, 23,
    -- layer=1 filter=11 channel=52
    -12, 9, 7, -9, 0, 0, -15, 18, 9,
    -- layer=1 filter=11 channel=53
    -6, -14, -10, 5, -13, 9, -4, 3, -6,
    -- layer=1 filter=11 channel=54
    -19, 23, 21, 8, 38, 4, 18, 44, 42,
    -- layer=1 filter=11 channel=55
    -13, 3, 4, -10, 4, -6, 9, 22, 4,
    -- layer=1 filter=11 channel=56
    -30, -53, -31, -19, -49, -35, -13, -25, -5,
    -- layer=1 filter=11 channel=57
    -7, 2, -13, -13, -12, 0, -7, -15, 0,
    -- layer=1 filter=11 channel=58
    5, 32, -6, 20, 12, 33, 33, 38, 32,
    -- layer=1 filter=11 channel=59
    23, 3, 1, 17, 31, -4, 34, 35, 24,
    -- layer=1 filter=11 channel=60
    -12, 12, 3, -17, -15, -2, -2, 6, 12,
    -- layer=1 filter=11 channel=61
    26, 30, 16, 36, 1, 17, 3, 8, 32,
    -- layer=1 filter=11 channel=62
    10, 9, 22, 3, 22, -4, 14, 0, 17,
    -- layer=1 filter=11 channel=63
    -17, -22, 7, -11, 4, 25, 3, 21, 34,
    -- layer=1 filter=12 channel=0
    14, -17, -18, -18, -3, -10, 0, 9, 0,
    -- layer=1 filter=12 channel=1
    -11, -10, -8, -1, -11, 3, -14, 13, 8,
    -- layer=1 filter=12 channel=2
    -7, -6, -18, -18, 9, 14, -6, -12, -18,
    -- layer=1 filter=12 channel=3
    -9, -1, 14, -8, 3, 5, -9, -8, 5,
    -- layer=1 filter=12 channel=4
    -14, -17, -15, 0, -14, 9, -8, 5, -2,
    -- layer=1 filter=12 channel=5
    -1, -20, -4, -1, 5, 7, 12, -19, -12,
    -- layer=1 filter=12 channel=6
    -5, -20, 18, 10, 5, -10, 4, -22, 2,
    -- layer=1 filter=12 channel=7
    12, 7, 9, -2, -4, -11, -3, 13, -13,
    -- layer=1 filter=12 channel=8
    14, 18, -6, 0, -12, -2, 3, -15, -12,
    -- layer=1 filter=12 channel=9
    -14, 6, -6, 7, 13, 15, -12, -14, -15,
    -- layer=1 filter=12 channel=10
    0, -18, 6, -20, -12, -17, 1, -5, 9,
    -- layer=1 filter=12 channel=11
    -1, 2, -1, 9, -3, -7, -2, -1, -20,
    -- layer=1 filter=12 channel=12
    16, 8, -5, 0, 15, -1, -3, -6, -10,
    -- layer=1 filter=12 channel=13
    11, -13, -2, 12, -4, 3, -13, -6, -2,
    -- layer=1 filter=12 channel=14
    16, -15, 2, -10, 0, 3, 18, 14, -9,
    -- layer=1 filter=12 channel=15
    8, -16, -19, 8, -10, 4, 13, -3, 12,
    -- layer=1 filter=12 channel=16
    0, 6, -18, -4, 0, 0, -18, 14, 6,
    -- layer=1 filter=12 channel=17
    5, -2, 5, -17, 3, 18, 5, -7, -17,
    -- layer=1 filter=12 channel=18
    -10, 11, -11, -1, -14, -16, -7, -11, 7,
    -- layer=1 filter=12 channel=19
    -15, 5, 4, 11, 2, 0, 5, -1, -19,
    -- layer=1 filter=12 channel=20
    12, 13, -8, -16, 7, -11, 11, 0, -3,
    -- layer=1 filter=12 channel=21
    16, -18, -9, 14, 18, 13, 14, 8, -1,
    -- layer=1 filter=12 channel=22
    6, 0, -10, -3, 11, 7, -14, -20, -6,
    -- layer=1 filter=12 channel=23
    15, 6, 3, -9, 7, -7, -20, -18, 10,
    -- layer=1 filter=12 channel=24
    -7, -6, -4, -19, -9, 13, 10, -4, -13,
    -- layer=1 filter=12 channel=25
    -13, -4, -6, 10, 9, -3, -13, 10, -17,
    -- layer=1 filter=12 channel=26
    -4, 7, 0, -6, -10, -10, -20, 13, 5,
    -- layer=1 filter=12 channel=27
    9, -11, -2, 6, -17, -2, -11, -16, -16,
    -- layer=1 filter=12 channel=28
    9, 0, -18, 14, 13, 15, 13, 13, 3,
    -- layer=1 filter=12 channel=29
    4, -6, 4, 10, -2, 9, 0, 1, -19,
    -- layer=1 filter=12 channel=30
    -10, 2, 2, -16, -3, 8, 13, 0, -11,
    -- layer=1 filter=12 channel=31
    7, 8, -18, 1, 14, 2, 4, -9, -9,
    -- layer=1 filter=12 channel=32
    11, 17, -5, 14, -12, 7, 17, 10, 13,
    -- layer=1 filter=12 channel=33
    0, 7, -20, 12, -7, 14, 12, -17, 6,
    -- layer=1 filter=12 channel=34
    0, -17, -16, -20, 10, -4, 4, 6, -6,
    -- layer=1 filter=12 channel=35
    -18, 10, 1, 5, 4, 15, 4, -7, -17,
    -- layer=1 filter=12 channel=36
    -14, -13, -5, -15, 6, -9, -5, 0, -3,
    -- layer=1 filter=12 channel=37
    -19, 15, 4, -3, 7, 2, 5, -13, 4,
    -- layer=1 filter=12 channel=38
    0, -1, -3, -6, -19, -21, 2, -1, -11,
    -- layer=1 filter=12 channel=39
    -1, -18, 12, -2, 0, 3, -20, 13, -7,
    -- layer=1 filter=12 channel=40
    -17, -6, 12, -19, -5, 2, 15, -2, -6,
    -- layer=1 filter=12 channel=41
    10, -21, -20, -16, -15, 13, -6, 0, -14,
    -- layer=1 filter=12 channel=42
    -9, -15, -16, -18, -20, -16, -1, 0, 2,
    -- layer=1 filter=12 channel=43
    1, 1, -12, -10, 13, -9, -19, 4, 1,
    -- layer=1 filter=12 channel=44
    5, 0, 11, 13, 6, 7, -10, 7, -15,
    -- layer=1 filter=12 channel=45
    -18, 12, -3, -9, 1, -10, -24, -5, -6,
    -- layer=1 filter=12 channel=46
    0, 12, -10, -1, -7, 11, 10, -15, -11,
    -- layer=1 filter=12 channel=47
    -17, 15, 7, 15, -14, 8, 11, -20, 4,
    -- layer=1 filter=12 channel=48
    15, -15, 11, 14, 13, 6, 11, -16, -6,
    -- layer=1 filter=12 channel=49
    0, -10, -17, 9, -13, 0, -12, 11, 11,
    -- layer=1 filter=12 channel=50
    -8, 0, 16, 10, 4, -13, 9, -6, -9,
    -- layer=1 filter=12 channel=51
    -11, 15, -10, 1, 10, 2, 15, -1, 7,
    -- layer=1 filter=12 channel=52
    3, -7, -6, 2, 0, -19, 15, -3, -5,
    -- layer=1 filter=12 channel=53
    0, 11, -9, -14, -1, 4, -7, 2, 10,
    -- layer=1 filter=12 channel=54
    10, 13, -3, 8, -8, 14, 1, 3, -8,
    -- layer=1 filter=12 channel=55
    -18, 12, -17, -9, -5, -2, 11, 13, 8,
    -- layer=1 filter=12 channel=56
    -3, -15, 13, 8, -18, 18, -11, -11, 17,
    -- layer=1 filter=12 channel=57
    8, 4, 2, 1, 4, -18, 10, -6, -6,
    -- layer=1 filter=12 channel=58
    -9, -7, 4, 3, 8, 1, -3, -6, -16,
    -- layer=1 filter=12 channel=59
    -16, -21, -2, 15, 6, -7, -10, 9, -15,
    -- layer=1 filter=12 channel=60
    13, -11, -19, 12, -13, 9, 8, -1, -13,
    -- layer=1 filter=12 channel=61
    13, -12, 13, -4, -9, -16, 0, 15, 16,
    -- layer=1 filter=12 channel=62
    6, 1, -20, -13, -8, -8, -8, -2, -13,
    -- layer=1 filter=12 channel=63
    16, -16, 0, -5, -13, 7, 7, -19, 14,
    -- layer=1 filter=13 channel=0
    4, 23, -3, 6, -14, 2, -1, -14, -9,
    -- layer=1 filter=13 channel=1
    -5, 11, 1, -13, 1, -7, -7, 0, -33,
    -- layer=1 filter=13 channel=2
    8, -3, 21, 1, -22, -2, -15, -10, -2,
    -- layer=1 filter=13 channel=3
    -2, 11, -8, -13, 5, -15, 0, 5, -5,
    -- layer=1 filter=13 channel=4
    -7, 4, -9, -18, -15, -14, 0, 5, -5,
    -- layer=1 filter=13 channel=5
    14, -4, 0, 2, 14, 15, -20, -6, 6,
    -- layer=1 filter=13 channel=6
    -50, -25, -12, -7, 0, 0, 29, -8, 15,
    -- layer=1 filter=13 channel=7
    12, -17, -13, 12, 13, 11, 19, -9, -5,
    -- layer=1 filter=13 channel=8
    0, -7, -9, 1, -6, 2, -10, 2, 16,
    -- layer=1 filter=13 channel=9
    -14, 6, 2, 2, -22, -3, -2, 0, -6,
    -- layer=1 filter=13 channel=10
    19, -9, -1, -2, 10, -8, -14, -8, -20,
    -- layer=1 filter=13 channel=11
    -14, -15, 0, -18, -9, -18, 12, 0, -7,
    -- layer=1 filter=13 channel=12
    12, 11, 23, 20, 36, 36, 3, -9, 9,
    -- layer=1 filter=13 channel=13
    -16, 1, 5, -7, -12, -5, -17, 17, -7,
    -- layer=1 filter=13 channel=14
    14, -6, -17, 44, 54, 29, 42, 32, 22,
    -- layer=1 filter=13 channel=15
    16, 16, 2, 10, 7, 0, -5, 4, -2,
    -- layer=1 filter=13 channel=16
    -4, 5, 15, -9, -10, -33, -15, -21, -16,
    -- layer=1 filter=13 channel=17
    3, 17, 23, 46, 44, 66, 64, 62, 47,
    -- layer=1 filter=13 channel=18
    1, -36, -27, 57, 18, 9, 36, 21, 31,
    -- layer=1 filter=13 channel=19
    -5, 20, 15, 45, 39, 13, -8, 16, -9,
    -- layer=1 filter=13 channel=20
    -9, -15, -11, 15, 14, 5, 12, 19, -8,
    -- layer=1 filter=13 channel=21
    15, -13, -2, 6, 6, 12, -6, -7, -11,
    -- layer=1 filter=13 channel=22
    2, 31, 1, 1, 21, 3, 0, -10, -22,
    -- layer=1 filter=13 channel=23
    -5, 23, 24, -15, -16, -20, 3, -12, -22,
    -- layer=1 filter=13 channel=24
    11, 5, -18, 10, -13, 4, -17, -12, 2,
    -- layer=1 filter=13 channel=25
    -1, 10, -1, 56, 59, 52, 60, 37, 24,
    -- layer=1 filter=13 channel=26
    -9, 22, 14, -2, -2, -4, -17, 2, -2,
    -- layer=1 filter=13 channel=27
    6, 15, 10, -3, 37, 7, -6, 34, 23,
    -- layer=1 filter=13 channel=28
    2, -16, 12, -17, 16, 20, 14, 20, 7,
    -- layer=1 filter=13 channel=29
    21, 18, 4, -6, 7, 6, -18, 15, 4,
    -- layer=1 filter=13 channel=30
    2, -18, 12, -10, -23, -27, -21, -16, 11,
    -- layer=1 filter=13 channel=31
    2, 4, 7, -3, -18, 7, 10, -19, -32,
    -- layer=1 filter=13 channel=32
    7, -16, 16, 11, 10, 3, 20, 15, 7,
    -- layer=1 filter=13 channel=33
    -24, -17, 11, 6, 1, -8, 10, 20, 6,
    -- layer=1 filter=13 channel=34
    8, -6, 14, 38, 62, 39, 54, 44, 22,
    -- layer=1 filter=13 channel=35
    -8, 20, 29, 80, 61, 61, 70, 80, 36,
    -- layer=1 filter=13 channel=36
    5, 27, 17, 7, -3, 11, 3, -2, 4,
    -- layer=1 filter=13 channel=37
    -20, 8, -4, 29, 9, 2, 41, 67, 35,
    -- layer=1 filter=13 channel=38
    7, 14, -19, -11, 15, -6, -19, -27, -1,
    -- layer=1 filter=13 channel=39
    13, 18, 2, 4, -15, 17, -8, -2, 0,
    -- layer=1 filter=13 channel=40
    6, 0, 8, -19, -22, -11, -2, -16, -3,
    -- layer=1 filter=13 channel=41
    -1, 4, -3, -11, 0, -8, 17, 6, 1,
    -- layer=1 filter=13 channel=42
    -8, 19, 23, 0, -10, -10, 6, -18, 6,
    -- layer=1 filter=13 channel=43
    21, 16, -19, 12, 29, 17, -4, 9, 12,
    -- layer=1 filter=13 channel=44
    -6, -5, -13, -13, 10, 7, 18, 2, -11,
    -- layer=1 filter=13 channel=45
    -30, -9, 22, 9, -24, 14, 30, 18, 15,
    -- layer=1 filter=13 channel=46
    2, 26, 2, 18, -7, 12, 10, 29, 1,
    -- layer=1 filter=13 channel=47
    14, 21, -6, -5, -6, 4, 7, -1, -24,
    -- layer=1 filter=13 channel=48
    21, 12, 20, 3, 9, 2, -15, -22, -23,
    -- layer=1 filter=13 channel=49
    24, -1, 7, -19, -4, -21, -19, -8, -21,
    -- layer=1 filter=13 channel=50
    54, 57, 32, 83, 63, 87, 80, 75, 61,
    -- layer=1 filter=13 channel=51
    3, -15, 7, 6, 4, -17, 5, 4, 1,
    -- layer=1 filter=13 channel=52
    -10, 15, 24, -23, 0, -11, -2, -29, -17,
    -- layer=1 filter=13 channel=53
    11, 3, -12, 16, 7, 5, -17, -1, 11,
    -- layer=1 filter=13 channel=54
    -41, -9, 21, -1, 4, 1, 30, 21, 12,
    -- layer=1 filter=13 channel=55
    -12, -10, 19, -18, 2, 0, -19, -24, -10,
    -- layer=1 filter=13 channel=56
    19, 25, 31, 57, 71, 71, 36, 71, 44,
    -- layer=1 filter=13 channel=57
    8, -2, 17, -7, -15, -15, -5, 5, -11,
    -- layer=1 filter=13 channel=58
    22, 20, 22, 7, 20, 5, -24, -7, -9,
    -- layer=1 filter=13 channel=59
    -5, 5, 0, 26, 6, 7, 17, 14, 0,
    -- layer=1 filter=13 channel=60
    19, -3, 3, -7, -10, -16, 2, -3, -25,
    -- layer=1 filter=13 channel=61
    12, 22, 21, 13, 6, 18, 16, 14, 2,
    -- layer=1 filter=13 channel=62
    -8, 4, 7, 18, 21, -8, 9, -21, -2,
    -- layer=1 filter=13 channel=63
    -10, -10, 1, -5, -4, 20, -9, -2, 17,
    -- layer=1 filter=14 channel=0
    10, 9, 10, 17, 12, -1, -2, -2, 3,
    -- layer=1 filter=14 channel=1
    -16, -11, -10, -11, 1, 1, 9, -12, -1,
    -- layer=1 filter=14 channel=2
    -8, -5, -12, -7, -15, -24, 5, -30, -14,
    -- layer=1 filter=14 channel=3
    -2, -13, 27, 0, -9, 8, -2, -8, -15,
    -- layer=1 filter=14 channel=4
    -15, 0, -9, -6, -15, 10, 12, -1, -1,
    -- layer=1 filter=14 channel=5
    5, 2, 10, 8, -10, -2, 12, -8, -28,
    -- layer=1 filter=14 channel=6
    17, 56, 52, 28, 66, 72, 68, 122, 80,
    -- layer=1 filter=14 channel=7
    3, 12, 11, 0, 19, -16, -15, -16, -13,
    -- layer=1 filter=14 channel=8
    -15, 1, 12, -6, 14, -19, -1, -15, 3,
    -- layer=1 filter=14 channel=9
    8, -6, 7, 15, 7, 18, 4, 1, -10,
    -- layer=1 filter=14 channel=10
    3, 2, -11, 5, -8, 10, 3, 10, -11,
    -- layer=1 filter=14 channel=11
    -12, 15, 22, 0, 17, -3, -14, 6, -10,
    -- layer=1 filter=14 channel=12
    -41, -54, -27, -4, -8, 13, 0, -8, 14,
    -- layer=1 filter=14 channel=13
    2, -1, -7, 2, -19, -3, -7, 9, -15,
    -- layer=1 filter=14 channel=14
    -48, -86, -38, -73, -55, -67, -82, -87, -68,
    -- layer=1 filter=14 channel=15
    1, 1, -7, 2, 0, -15, -9, 9, -9,
    -- layer=1 filter=14 channel=16
    4, 3, 1, -2, 3, -3, -17, -12, -2,
    -- layer=1 filter=14 channel=17
    17, 10, 8, -7, -41, 9, -11, 14, -2,
    -- layer=1 filter=14 channel=18
    -7, -28, 4, -14, -50, -32, -57, -52, -30,
    -- layer=1 filter=14 channel=19
    9, 44, 35, -13, 28, 40, -5, 18, 30,
    -- layer=1 filter=14 channel=20
    -23, -2, 3, -4, 15, 38, 19, 17, -6,
    -- layer=1 filter=14 channel=21
    17, -14, -3, 1, 8, 9, 11, -14, 13,
    -- layer=1 filter=14 channel=22
    9, -15, 0, -3, -11, 26, -3, 11, 3,
    -- layer=1 filter=14 channel=23
    5, 21, 12, 18, 0, 2, 23, 8, -8,
    -- layer=1 filter=14 channel=24
    7, -3, 19, 8, -17, 11, -18, -10, -14,
    -- layer=1 filter=14 channel=25
    -12, 5, 30, -46, -12, 3, -31, 4, 24,
    -- layer=1 filter=14 channel=26
    9, -2, -11, 13, -8, -20, -4, -11, -21,
    -- layer=1 filter=14 channel=27
    -17, 19, -7, -44, 12, -18, -19, -2, 12,
    -- layer=1 filter=14 channel=28
    -9, 3, -1, -10, 3, -14, -9, -14, -7,
    -- layer=1 filter=14 channel=29
    -23, -7, -11, -24, -18, -23, -18, -9, 31,
    -- layer=1 filter=14 channel=30
    11, 5, -2, -14, 0, 14, -18, -11, 6,
    -- layer=1 filter=14 channel=31
    20, 17, 10, -2, 19, 18, 4, 4, -24,
    -- layer=1 filter=14 channel=32
    0, 12, 9, 0, 6, -8, 0, 11, 14,
    -- layer=1 filter=14 channel=33
    11, 31, 17, 11, 19, 42, 17, 54, 21,
    -- layer=1 filter=14 channel=34
    36, -17, -14, -27, -23, 4, -10, 1, 17,
    -- layer=1 filter=14 channel=35
    10, 19, 20, -15, -18, 16, 1, 27, 28,
    -- layer=1 filter=14 channel=36
    -16, -8, -4, -9, -7, -18, 4, 16, 1,
    -- layer=1 filter=14 channel=37
    -10, 0, 8, 12, -6, 48, -17, -15, 19,
    -- layer=1 filter=14 channel=38
    -6, -11, 8, -24, -10, -14, 12, 11, -16,
    -- layer=1 filter=14 channel=39
    -13, -18, -7, 2, 14, -15, 3, -1, 7,
    -- layer=1 filter=14 channel=40
    -6, 8, 1, 5, 14, 4, 7, 10, -21,
    -- layer=1 filter=14 channel=41
    18, 18, 19, 17, 20, 20, 3, 31, 7,
    -- layer=1 filter=14 channel=42
    16, -9, 16, 11, -9, 1, 6, -14, -22,
    -- layer=1 filter=14 channel=43
    24, 11, 33, 2, 37, 22, 8, 48, 26,
    -- layer=1 filter=14 channel=44
    20, 5, 14, 4, 15, 7, -11, 1, -15,
    -- layer=1 filter=14 channel=45
    21, 61, 61, 14, 86, 83, 87, 111, 82,
    -- layer=1 filter=14 channel=46
    3, 9, -4, -19, -3, 15, -13, -4, 2,
    -- layer=1 filter=14 channel=47
    6, 14, 0, 17, -7, -15, 6, -4, -16,
    -- layer=1 filter=14 channel=48
    11, 16, 4, -11, -7, -17, 2, 0, -20,
    -- layer=1 filter=14 channel=49
    -1, -8, 8, -7, 14, 2, -2, -19, -11,
    -- layer=1 filter=14 channel=50
    -20, -46, -34, 9, -3, 5, 25, 22, 27,
    -- layer=1 filter=14 channel=51
    -17, -5, 5, 9, 7, -2, 4, 0, -7,
    -- layer=1 filter=14 channel=52
    -18, 21, 0, -4, 23, 18, 9, 5, -7,
    -- layer=1 filter=14 channel=53
    13, 8, 14, 15, -8, 3, -3, -4, 0,
    -- layer=1 filter=14 channel=54
    20, 101, 73, 66, 93, 97, 80, 138, 95,
    -- layer=1 filter=14 channel=55
    5, 3, 6, 3, 7, 9, 23, 18, -11,
    -- layer=1 filter=14 channel=56
    -17, -13, 5, -51, -47, -21, -36, -16, -6,
    -- layer=1 filter=14 channel=57
    -1, -9, -13, -19, -2, 6, -16, -13, 9,
    -- layer=1 filter=14 channel=58
    -12, -10, 8, -12, 22, -4, 19, -7, 19,
    -- layer=1 filter=14 channel=59
    19, 11, 2, 19, 17, -4, 27, 30, 10,
    -- layer=1 filter=14 channel=60
    17, 1, 12, -10, 4, 1, -4, -13, -8,
    -- layer=1 filter=14 channel=61
    -12, -19, 13, 13, -11, -3, 3, 24, 26,
    -- layer=1 filter=14 channel=62
    13, -1, -1, 2, 3, 5, 23, 0, -1,
    -- layer=1 filter=14 channel=63
    31, 31, 47, 28, 76, 17, 66, 84, 62,
    -- layer=1 filter=15 channel=0
    0, -23, 11, 14, 3, 17, 2, 9, -14,
    -- layer=1 filter=15 channel=1
    16, -6, 6, 21, -7, 1, -1, 22, 29,
    -- layer=1 filter=15 channel=2
    3, 12, -8, 27, 6, 5, 19, 6, 34,
    -- layer=1 filter=15 channel=3
    15, 10, 13, 17, 7, 0, -3, 15, -8,
    -- layer=1 filter=15 channel=4
    15, 3, 19, -13, -2, -3, 8, -15, -16,
    -- layer=1 filter=15 channel=5
    -7, 0, -19, -12, 6, -17, 14, 11, 18,
    -- layer=1 filter=15 channel=6
    41, -4, 26, 25, 28, 31, 14, -13, 17,
    -- layer=1 filter=15 channel=7
    -5, 0, 8, -5, 16, -2, -7, -8, -5,
    -- layer=1 filter=15 channel=8
    -7, -4, 16, 17, 0, 0, 11, -12, 13,
    -- layer=1 filter=15 channel=9
    18, 20, 1, -5, 9, -11, 2, -10, 15,
    -- layer=1 filter=15 channel=10
    -21, -14, 8, -12, -15, 8, 0, 6, -4,
    -- layer=1 filter=15 channel=11
    2, 14, 14, 17, -11, -4, 6, -9, -9,
    -- layer=1 filter=15 channel=12
    -3, -28, -12, -22, -24, -23, -30, -43, -23,
    -- layer=1 filter=15 channel=13
    4, 14, -9, 1, 18, 15, -10, -2, 15,
    -- layer=1 filter=15 channel=14
    -35, 10, -11, -50, 28, -45, 22, -9, 0,
    -- layer=1 filter=15 channel=15
    -18, 13, 4, -17, -15, 3, -23, -5, -8,
    -- layer=1 filter=15 channel=16
    -24, -5, -2, -5, -22, 4, -18, 3, -23,
    -- layer=1 filter=15 channel=17
    -14, -39, -4, -20, -20, -30, -17, -38, -37,
    -- layer=1 filter=15 channel=18
    -21, -18, -26, -44, -8, -17, -61, -32, -44,
    -- layer=1 filter=15 channel=19
    -31, -7, -1, -13, 15, -1, -10, -6, -8,
    -- layer=1 filter=15 channel=20
    -2, -12, 8, 22, -12, -8, -8, -7, 7,
    -- layer=1 filter=15 channel=21
    15, 1, 11, -15, 14, 10, -7, -12, 8,
    -- layer=1 filter=15 channel=22
    15, -6, -6, 17, 19, 1, 3, 12, -14,
    -- layer=1 filter=15 channel=23
    0, -13, 16, -6, 4, 6, -13, 21, 8,
    -- layer=1 filter=15 channel=24
    -1, -16, -8, -29, 7, -7, -9, -19, -27,
    -- layer=1 filter=15 channel=25
    -45, -32, -19, -22, -48, -36, -39, -66, -33,
    -- layer=1 filter=15 channel=26
    -18, 8, -13, 8, 12, 12, 8, -11, 0,
    -- layer=1 filter=15 channel=27
    -45, -19, -11, -11, -24, -3, -12, -29, -37,
    -- layer=1 filter=15 channel=28
    -3, -12, 4, 4, 22, 25, -4, 16, -14,
    -- layer=1 filter=15 channel=29
    1, -2, -13, 10, 3, -6, 4, -1, -3,
    -- layer=1 filter=15 channel=30
    -9, -21, -25, -9, -34, -4, -7, -8, 0,
    -- layer=1 filter=15 channel=31
    12, 1, 11, 9, 2, -8, -13, -11, -5,
    -- layer=1 filter=15 channel=32
    -11, -14, -2, 11, -5, -11, -18, 9, 11,
    -- layer=1 filter=15 channel=33
    18, 5, 11, 11, 14, 10, 15, -10, 0,
    -- layer=1 filter=15 channel=34
    -4, -27, -25, 12, -8, -8, 6, -9, -15,
    -- layer=1 filter=15 channel=35
    -20, -25, -33, -11, -43, -41, -33, -35, -24,
    -- layer=1 filter=15 channel=36
    0, 2, -21, 11, -1, -8, 15, -2, -16,
    -- layer=1 filter=15 channel=37
    16, -7, -13, -3, -31, -43, -1, 10, 6,
    -- layer=1 filter=15 channel=38
    15, -8, -7, 9, -3, 19, 35, 14, 15,
    -- layer=1 filter=15 channel=39
    -3, 11, 16, 1, 0, 14, -2, 5, 14,
    -- layer=1 filter=15 channel=40
    -14, -6, 7, 14, 5, 13, -6, 8, -11,
    -- layer=1 filter=15 channel=41
    12, -7, 2, 6, 19, 25, 4, 18, 21,
    -- layer=1 filter=15 channel=42
    -8, -11, -19, 8, 15, 1, -2, 15, -11,
    -- layer=1 filter=15 channel=43
    -13, 37, -22, -18, 9, 6, -7, -27, -9,
    -- layer=1 filter=15 channel=44
    -8, -23, 5, -11, 13, -12, -25, -26, -34,
    -- layer=1 filter=15 channel=45
    25, 23, 22, 9, 13, 27, -11, -18, -4,
    -- layer=1 filter=15 channel=46
    9, 5, 1, 10, -41, -15, 3, 8, 11,
    -- layer=1 filter=15 channel=47
    -20, -22, 6, -8, -18, 9, 15, 16, -3,
    -- layer=1 filter=15 channel=48
    12, -16, 5, 6, 13, 0, -12, 17, 17,
    -- layer=1 filter=15 channel=49
    9, -14, -1, -1, 13, 8, 8, -3, 16,
    -- layer=1 filter=15 channel=50
    -3, -17, 17, 8, -24, -40, -41, -18, 0,
    -- layer=1 filter=15 channel=51
    30, 2, 10, -5, 9, 27, 29, 3, 28,
    -- layer=1 filter=15 channel=52
    18, -9, 6, -1, 5, 17, -12, 17, -18,
    -- layer=1 filter=15 channel=53
    -23, -4, -14, -11, 17, -9, 1, 19, 8,
    -- layer=1 filter=15 channel=54
    19, 33, 45, 19, 39, 52, 16, 10, 24,
    -- layer=1 filter=15 channel=55
    -8, -4, 4, -1, 28, 0, 30, 31, 23,
    -- layer=1 filter=15 channel=56
    -39, -41, -45, -14, -32, -52, -20, -39, -27,
    -- layer=1 filter=15 channel=57
    2, -5, -16, -5, 6, 7, 0, 13, 1,
    -- layer=1 filter=15 channel=58
    -13, -2, -14, 0, 1, -3, 7, 0, -5,
    -- layer=1 filter=15 channel=59
    0, -12, 1, 3, 6, 0, -21, -11, -14,
    -- layer=1 filter=15 channel=60
    11, -18, -12, 6, -14, 2, 9, -18, 0,
    -- layer=1 filter=15 channel=61
    -5, -10, 8, 5, -12, 18, 23, -1, 4,
    -- layer=1 filter=15 channel=62
    -20, 4, 6, -12, -24, -19, -3, -6, 0,
    -- layer=1 filter=15 channel=63
    10, 36, 13, -14, 18, 1, -6, -6, 51,
    -- layer=1 filter=16 channel=0
    11, -8, 5, -7, -22, -7, -4, -16, 10,
    -- layer=1 filter=16 channel=1
    -8, -1, 4, 2, -21, -19, 9, 0, -18,
    -- layer=1 filter=16 channel=2
    3, -11, -20, 0, -4, -9, 5, -2, -1,
    -- layer=1 filter=16 channel=3
    11, -6, -17, 0, -10, -3, -18, 3, 4,
    -- layer=1 filter=16 channel=4
    14, 12, -11, 13, 0, -7, -15, 12, 3,
    -- layer=1 filter=16 channel=5
    -13, 8, 10, 12, -20, -15, -12, 2, -3,
    -- layer=1 filter=16 channel=6
    13, 10, 10, -1, -3, 6, 8, -9, -6,
    -- layer=1 filter=16 channel=7
    -10, 14, 15, -4, -9, -16, -14, 10, -11,
    -- layer=1 filter=16 channel=8
    11, -6, 14, -10, 11, -4, -11, 9, 12,
    -- layer=1 filter=16 channel=9
    11, -8, -8, -13, 12, 11, 8, 2, -16,
    -- layer=1 filter=16 channel=10
    -14, -15, 12, -10, -1, -7, -11, -18, -14,
    -- layer=1 filter=16 channel=11
    0, -9, 21, 7, 0, 12, -11, 12, -18,
    -- layer=1 filter=16 channel=12
    17, 12, -12, -3, 9, 7, 5, -8, -14,
    -- layer=1 filter=16 channel=13
    5, 12, -11, -6, -16, -14, 0, 1, 0,
    -- layer=1 filter=16 channel=14
    -29, 8, -15, 6, 16, 13, -26, 19, 7,
    -- layer=1 filter=16 channel=15
    -20, -5, -2, -4, 0, -21, -16, -19, 3,
    -- layer=1 filter=16 channel=16
    -4, 5, 3, 7, -2, 5, 6, 3, 5,
    -- layer=1 filter=16 channel=17
    -23, -17, -33, -14, -3, -9, -19, 0, 0,
    -- layer=1 filter=16 channel=18
    -26, 4, -13, 16, -17, -12, -2, -2, -17,
    -- layer=1 filter=16 channel=19
    -33, -29, -4, -11, -4, -17, -14, -4, -5,
    -- layer=1 filter=16 channel=20
    1, 1, 9, 10, 8, -21, 2, 13, -18,
    -- layer=1 filter=16 channel=21
    -16, 16, 9, 1, 2, -2, 12, -16, 14,
    -- layer=1 filter=16 channel=22
    -27, -4, -2, -1, -4, -23, 8, -19, -28,
    -- layer=1 filter=16 channel=23
    0, -5, 1, -4, -7, 0, -20, 15, -10,
    -- layer=1 filter=16 channel=24
    -4, -14, 3, -11, -13, 8, 0, -14, -14,
    -- layer=1 filter=16 channel=25
    0, -4, -34, 8, 8, -3, 2, 0, -17,
    -- layer=1 filter=16 channel=26
    5, -6, -15, -9, 13, -3, -15, 2, -19,
    -- layer=1 filter=16 channel=27
    -9, -7, 0, -2, -5, -7, 9, -9, 3,
    -- layer=1 filter=16 channel=28
    1, -8, -11, 0, 1, 1, -17, 0, 21,
    -- layer=1 filter=16 channel=29
    -11, -9, 16, 6, -6, 14, -1, 14, 14,
    -- layer=1 filter=16 channel=30
    -4, -12, 5, -3, 0, -4, 15, 0, -12,
    -- layer=1 filter=16 channel=31
    -1, 0, 12, -16, 7, 14, -5, 3, -20,
    -- layer=1 filter=16 channel=32
    6, 5, -17, 6, 19, 4, -7, 0, -16,
    -- layer=1 filter=16 channel=33
    -20, -3, -3, -10, -12, 14, -3, 9, -10,
    -- layer=1 filter=16 channel=34
    -7, -12, -17, -5, -9, 18, -18, 16, -26,
    -- layer=1 filter=16 channel=35
    -36, -4, -21, -1, -15, 7, 0, 19, 7,
    -- layer=1 filter=16 channel=36
    1, 13, 14, 0, -1, 2, -1, 13, -6,
    -- layer=1 filter=16 channel=37
    -18, -3, 28, -23, -15, 4, -2, -16, -28,
    -- layer=1 filter=16 channel=38
    -9, -4, -18, -6, -2, -6, 6, 7, -25,
    -- layer=1 filter=16 channel=39
    13, -14, -10, -5, -9, -11, -10, -6, -17,
    -- layer=1 filter=16 channel=40
    -4, -3, 10, 11, -21, -6, -2, 4, 0,
    -- layer=1 filter=16 channel=41
    -16, -9, 1, 12, -15, -2, 5, 3, 3,
    -- layer=1 filter=16 channel=42
    -9, -2, 8, -13, -10, -9, -13, 3, -2,
    -- layer=1 filter=16 channel=43
    10, -15, -17, -17, 5, -15, 0, -7, -15,
    -- layer=1 filter=16 channel=44
    -2, -2, 3, 2, 1, -6, -2, 1, 10,
    -- layer=1 filter=16 channel=45
    11, -10, 16, -27, -10, 17, 14, -9, -17,
    -- layer=1 filter=16 channel=46
    -19, -20, -11, 7, 13, 12, -8, 5, 7,
    -- layer=1 filter=16 channel=47
    0, -5, 2, -17, -2, 13, 7, 6, 1,
    -- layer=1 filter=16 channel=48
    -16, -2, -10, -7, -12, 10, 9, -8, -1,
    -- layer=1 filter=16 channel=49
    14, -9, 9, -4, 1, -15, 12, 0, 12,
    -- layer=1 filter=16 channel=50
    11, -11, -1, 0, -3, 7, -6, -22, -27,
    -- layer=1 filter=16 channel=51
    -20, 0, -13, -24, -15, 0, -8, 4, -16,
    -- layer=1 filter=16 channel=52
    11, 10, 11, 9, -15, -11, -18, 6, 0,
    -- layer=1 filter=16 channel=53
    -19, 11, 13, -8, -4, 7, 9, -6, -12,
    -- layer=1 filter=16 channel=54
    7, -8, 13, 4, 0, 4, 15, 7, -17,
    -- layer=1 filter=16 channel=55
    9, 5, 6, -10, 3, 6, -16, -7, -12,
    -- layer=1 filter=16 channel=56
    -24, -18, -4, -1, 17, 0, -32, 4, -6,
    -- layer=1 filter=16 channel=57
    -11, 0, -9, -11, 10, 11, 16, 10, -10,
    -- layer=1 filter=16 channel=58
    -11, 16, -8, -12, -6, -14, 0, -11, -1,
    -- layer=1 filter=16 channel=59
    -15, 7, 2, 2, 8, -2, 2, 0, -16,
    -- layer=1 filter=16 channel=60
    10, -1, 7, 14, -20, -1, 14, 11, -15,
    -- layer=1 filter=16 channel=61
    -12, 0, -18, -3, -3, -9, -22, -25, -19,
    -- layer=1 filter=16 channel=62
    -6, -1, 1, -16, -2, -7, 3, -20, -5,
    -- layer=1 filter=16 channel=63
    -7, -1, 15, -5, 0, -11, -26, 3, -13,
    -- layer=1 filter=17 channel=0
    -3, 1, -10, 8, -13, -15, -13, 16, -13,
    -- layer=1 filter=17 channel=1
    6, 20, 26, 24, 6, -4, 30, -5, 22,
    -- layer=1 filter=17 channel=2
    20, 11, 18, -7, 6, 10, -19, -18, -9,
    -- layer=1 filter=17 channel=3
    8, 15, 7, 6, 7, 7, -11, -11, -8,
    -- layer=1 filter=17 channel=4
    -6, -3, -3, 6, 15, 15, 3, -11, 12,
    -- layer=1 filter=17 channel=5
    -3, 0, -23, 16, 20, -7, -12, -5, 6,
    -- layer=1 filter=17 channel=6
    37, -5, 19, -2, 21, -21, 30, -4, -9,
    -- layer=1 filter=17 channel=7
    0, 11, -9, 13, 9, 0, -6, -2, -9,
    -- layer=1 filter=17 channel=8
    19, -9, -11, -8, -1, -13, 9, 4, -9,
    -- layer=1 filter=17 channel=9
    1, 1, 3, -9, 3, 9, 13, -19, -17,
    -- layer=1 filter=17 channel=10
    -22, -24, -11, -8, 10, -7, 11, 5, -7,
    -- layer=1 filter=17 channel=11
    -5, 7, 0, -6, -9, 7, -18, 14, 5,
    -- layer=1 filter=17 channel=12
    -33, -10, -23, -16, -42, -42, -38, -19, -32,
    -- layer=1 filter=17 channel=13
    -4, -8, -23, -18, -5, 8, -2, -27, 8,
    -- layer=1 filter=17 channel=14
    -70, -52, -4, -43, 24, -10, -88, -41, 10,
    -- layer=1 filter=17 channel=15
    9, 6, 2, -17, -2, -9, -21, 0, -17,
    -- layer=1 filter=17 channel=16
    -4, 16, -8, -1, -18, 1, -8, 0, -9,
    -- layer=1 filter=17 channel=17
    -64, -49, -53, -59, -45, -52, -51, -47, -43,
    -- layer=1 filter=17 channel=18
    -10, 17, 18, 0, 19, 33, -6, 26, 5,
    -- layer=1 filter=17 channel=19
    -7, 17, 14, 6, 5, 26, 18, -11, 17,
    -- layer=1 filter=17 channel=20
    28, 9, -5, -11, -1, -20, 6, -11, -12,
    -- layer=1 filter=17 channel=21
    6, -7, 14, 18, 17, -9, -4, 6, 11,
    -- layer=1 filter=17 channel=22
    0, -1, 15, -16, -12, -10, 13, -14, 13,
    -- layer=1 filter=17 channel=23
    0, -15, 18, -6, 8, -12, 6, -12, -14,
    -- layer=1 filter=17 channel=24
    -9, 2, -15, 2, 14, -4, -11, -18, -14,
    -- layer=1 filter=17 channel=25
    -46, -49, -28, -49, -35, -40, -65, -39, -18,
    -- layer=1 filter=17 channel=26
    2, -18, -9, 2, 11, 10, 6, 8, -2,
    -- layer=1 filter=17 channel=27
    -16, -20, -16, -36, -34, -26, -10, -30, -6,
    -- layer=1 filter=17 channel=28
    -13, -15, -1, 3, 1, 8, -15, -16, -17,
    -- layer=1 filter=17 channel=29
    11, 7, 10, -2, 28, -2, 4, -4, 24,
    -- layer=1 filter=17 channel=30
    -1, -7, 5, -6, -19, 3, 10, 24, -7,
    -- layer=1 filter=17 channel=31
    2, -9, -9, -8, 8, -10, 19, 16, 15,
    -- layer=1 filter=17 channel=32
    -8, 2, 14, -10, -10, -1, -3, 10, 1,
    -- layer=1 filter=17 channel=33
    30, 2, 13, 6, -20, 19, 21, -8, -13,
    -- layer=1 filter=17 channel=34
    -63, -77, -72, -77, -51, -59, -45, -43, -27,
    -- layer=1 filter=17 channel=35
    -53, -59, -51, -45, -63, -53, -56, -46, -18,
    -- layer=1 filter=17 channel=36
    18, 8, 5, 13, 7, 25, -1, 0, 8,
    -- layer=1 filter=17 channel=37
    -14, 4, 0, -14, -19, -20, -17, -8, 37,
    -- layer=1 filter=17 channel=38
    -12, 1, 4, 9, -18, -3, -2, 9, 18,
    -- layer=1 filter=17 channel=39
    12, -18, 0, 10, 17, 15, 23, 3, 14,
    -- layer=1 filter=17 channel=40
    11, 5, -9, -16, -11, 6, -14, -3, -20,
    -- layer=1 filter=17 channel=41
    -4, 10, 16, 2, -5, 20, 27, 8, 6,
    -- layer=1 filter=17 channel=42
    3, 0, -2, 5, 1, -2, 12, 20, 17,
    -- layer=1 filter=17 channel=43
    9, -28, -25, -12, -17, -10, 4, -7, -22,
    -- layer=1 filter=17 channel=44
    6, -21, -11, -8, -4, -20, 9, 0, 0,
    -- layer=1 filter=17 channel=45
    37, 0, 10, 42, 9, 29, 31, 0, -10,
    -- layer=1 filter=17 channel=46
    30, 14, 16, -21, -46, 15, 1, 2, 29,
    -- layer=1 filter=17 channel=47
    2, 8, -17, 16, -5, -10, 2, -5, -6,
    -- layer=1 filter=17 channel=48
    -4, -9, -3, 2, -11, -13, 8, -10, -14,
    -- layer=1 filter=17 channel=49
    14, 4, -1, 20, 17, 4, 5, 10, 1,
    -- layer=1 filter=17 channel=50
    -40, -45, -35, -45, -65, -51, -58, -78, -20,
    -- layer=1 filter=17 channel=51
    2, -4, 10, 8, 15, 15, 8, 0, 26,
    -- layer=1 filter=17 channel=52
    4, -12, 13, 9, -15, 13, 5, -13, 9,
    -- layer=1 filter=17 channel=53
    -5, 0, -3, 8, -14, -18, 13, -9, 6,
    -- layer=1 filter=17 channel=54
    25, -12, -8, -11, -40, -27, 22, -39, -13,
    -- layer=1 filter=17 channel=55
    -22, 1, -16, -2, 4, 11, -5, -2, -23,
    -- layer=1 filter=17 channel=56
    -76, -74, -63, -77, -68, -62, -61, -82, -40,
    -- layer=1 filter=17 channel=57
    6, -15, 11, -7, -7, -15, 10, 10, -16,
    -- layer=1 filter=17 channel=58
    15, -23, -24, 6, 9, -16, -12, 16, 0,
    -- layer=1 filter=17 channel=59
    -5, 17, -15, 8, 19, -4, 17, 0, 22,
    -- layer=1 filter=17 channel=60
    6, -17, -23, -12, 1, 16, -13, -11, 19,
    -- layer=1 filter=17 channel=61
    17, 13, 26, 5, 9, 27, 10, 9, 10,
    -- layer=1 filter=17 channel=62
    27, -6, -10, 26, 28, 19, 31, 24, 17,
    -- layer=1 filter=17 channel=63
    -5, 7, -14, -15, -31, -29, -24, -9, -29,
    -- layer=1 filter=18 channel=0
    8, 9, 10, 10, -16, -10, 0, -5, -14,
    -- layer=1 filter=18 channel=1
    -9, -8, -2, -3, -26, -5, 12, -17, -22,
    -- layer=1 filter=18 channel=2
    15, 21, 8, -10, -26, 1, -1, -16, 2,
    -- layer=1 filter=18 channel=3
    0, 0, 5, -7, 8, -17, -1, -4, 0,
    -- layer=1 filter=18 channel=4
    3, 3, -7, 10, 14, 1, 11, 1, -10,
    -- layer=1 filter=18 channel=5
    25, 1, 6, 0, -20, -16, -3, -3, 2,
    -- layer=1 filter=18 channel=6
    -36, 18, -5, 16, 13, 14, -8, -33, -10,
    -- layer=1 filter=18 channel=7
    -16, -17, -21, 0, -1, 16, -5, 11, -5,
    -- layer=1 filter=18 channel=8
    -1, 8, -13, 16, -3, 2, -4, -5, -9,
    -- layer=1 filter=18 channel=9
    8, 3, -3, -21, -13, -8, -9, -22, 5,
    -- layer=1 filter=18 channel=10
    19, -7, 6, 3, 6, 15, -14, -8, -11,
    -- layer=1 filter=18 channel=11
    -4, -11, 9, -11, -1, 4, 11, -17, 7,
    -- layer=1 filter=18 channel=12
    9, 18, 7, 0, -3, 2, 20, 16, 19,
    -- layer=1 filter=18 channel=13
    14, -4, 22, 13, 9, 15, -31, -18, -29,
    -- layer=1 filter=18 channel=14
    2, -26, -56, 12, 15, 6, 44, 54, 18,
    -- layer=1 filter=18 channel=15
    10, 12, 11, 5, -3, -18, -21, -11, 4,
    -- layer=1 filter=18 channel=16
    10, -11, -8, -21, -25, -29, -11, -13, 6,
    -- layer=1 filter=18 channel=17
    17, 61, 64, 59, 86, 51, 57, 48, 32,
    -- layer=1 filter=18 channel=18
    -8, -20, -33, 12, 12, 15, 38, 12, 22,
    -- layer=1 filter=18 channel=19
    -9, 3, -8, 21, -5, 8, -19, 14, -11,
    -- layer=1 filter=18 channel=20
    6, 0, 12, -1, 2, -5, 16, -8, 4,
    -- layer=1 filter=18 channel=21
    12, 13, -15, 11, -15, -11, 17, -12, -2,
    -- layer=1 filter=18 channel=22
    13, 16, 28, 8, 11, -16, -18, -1, -22,
    -- layer=1 filter=18 channel=23
    14, 6, 0, -2, 4, -4, 1, -21, -26,
    -- layer=1 filter=18 channel=24
    4, 15, -4, 2, 2, 12, -23, -21, 9,
    -- layer=1 filter=18 channel=25
    32, 49, 52, 72, 66, 43, 9, 44, 7,
    -- layer=1 filter=18 channel=26
    19, -1, 11, -3, 10, -18, 0, 6, -22,
    -- layer=1 filter=18 channel=27
    21, 11, 26, -12, 21, -2, -11, 15, -17,
    -- layer=1 filter=18 channel=28
    0, -15, 17, -11, -5, 9, -33, -24, -20,
    -- layer=1 filter=18 channel=29
    -11, -17, -13, -28, -25, -6, 0, -14, -30,
    -- layer=1 filter=18 channel=30
    10, 13, 2, -26, -19, -32, 0, -14, 17,
    -- layer=1 filter=18 channel=31
    -2, 19, 18, 7, 5, -28, 1, -8, 1,
    -- layer=1 filter=18 channel=32
    10, -13, -10, -17, -17, -10, 6, -9, -10,
    -- layer=1 filter=18 channel=33
    -5, 2, 26, 20, 0, 7, 3, 9, 9,
    -- layer=1 filter=18 channel=34
    27, 45, 27, 59, 81, 60, 67, 76, 43,
    -- layer=1 filter=18 channel=35
    21, 57, 56, 61, 91, 72, 71, 71, 67,
    -- layer=1 filter=18 channel=36
    6, 14, 7, 4, -5, -8, -30, -3, -31,
    -- layer=1 filter=18 channel=37
    0, 18, -35, 32, 52, 26, 58, 38, 66,
    -- layer=1 filter=18 channel=38
    13, 0, -6, 16, 16, 6, -20, -6, 1,
    -- layer=1 filter=18 channel=39
    19, 12, 0, 9, -16, 15, -1, -22, -14,
    -- layer=1 filter=18 channel=40
    20, 10, 8, 18, -2, -4, -20, -2, -23,
    -- layer=1 filter=18 channel=41
    -2, 7, 13, 5, 20, 4, 0, -20, -16,
    -- layer=1 filter=18 channel=42
    2, 26, 9, 0, 5, -7, 2, -21, -20,
    -- layer=1 filter=18 channel=43
    10, 0, -4, 16, 16, 22, -27, 18, -5,
    -- layer=1 filter=18 channel=44
    25, 26, 13, -10, -6, 9, 2, -15, -13,
    -- layer=1 filter=18 channel=45
    -37, 4, -5, 20, -12, 15, 30, 9, 20,
    -- layer=1 filter=18 channel=46
    4, 14, -4, 29, 18, 21, 33, 48, 60,
    -- layer=1 filter=18 channel=47
    3, 9, 19, -4, -7, -20, -11, -15, -9,
    -- layer=1 filter=18 channel=48
    24, 8, 3, -9, 1, 1, -19, 1, -20,
    -- layer=1 filter=18 channel=49
    25, -1, -13, -3, -4, -21, 1, -13, 11,
    -- layer=1 filter=18 channel=50
    68, 76, 63, 91, 120, 112, 35, 41, 70,
    -- layer=1 filter=18 channel=51
    -3, -12, 4, -14, -24, -14, 4, -16, 10,
    -- layer=1 filter=18 channel=52
    -7, -10, 12, -6, -24, 1, -15, -2, -22,
    -- layer=1 filter=18 channel=53
    -5, 0, 11, 10, -18, -13, -7, -12, 13,
    -- layer=1 filter=18 channel=54
    -22, -17, -3, 12, -5, 12, 7, -15, -26,
    -- layer=1 filter=18 channel=55
    -5, 0, 0, 18, -12, 7, -7, -4, -8,
    -- layer=1 filter=18 channel=56
    47, 50, 59, 87, 97, 76, 55, 58, 51,
    -- layer=1 filter=18 channel=57
    3, 2, -11, -13, 17, 18, -10, -10, -5,
    -- layer=1 filter=18 channel=58
    5, 30, 10, 16, 15, 22, -27, 7, -1,
    -- layer=1 filter=18 channel=59
    6, 17, 13, -3, 3, 22, 10, -17, -19,
    -- layer=1 filter=18 channel=60
    -4, 18, 2, 19, 16, 7, 11, -7, -13,
    -- layer=1 filter=18 channel=61
    -10, -3, 18, -13, -6, -3, 23, -6, -3,
    -- layer=1 filter=18 channel=62
    0, 7, 19, -11, -4, 11, -13, -29, -12,
    -- layer=1 filter=18 channel=63
    -1, 1, -6, -1, -9, 21, -14, 7, 29,
    -- layer=1 filter=19 channel=0
    -13, -12, 4, -20, -11, -10, -16, -28, -11,
    -- layer=1 filter=19 channel=1
    1, -2, 6, -25, 0, 3, -6, -22, 5,
    -- layer=1 filter=19 channel=2
    0, -7, -15, 23, -16, -23, -7, 1, 14,
    -- layer=1 filter=19 channel=3
    4, 1, -5, 7, 5, -8, -2, -24, 0,
    -- layer=1 filter=19 channel=4
    11, -13, 12, 5, -7, 10, -13, -10, -9,
    -- layer=1 filter=19 channel=5
    11, 2, -16, -6, 0, 6, -5, -4, -19,
    -- layer=1 filter=19 channel=6
    -2, 4, -11, 0, 4, 22, -6, -10, 7,
    -- layer=1 filter=19 channel=7
    -13, 13, -3, -12, 2, 14, 1, -14, 5,
    -- layer=1 filter=19 channel=8
    17, -11, 14, -10, 9, -6, 12, 1, -17,
    -- layer=1 filter=19 channel=9
    1, -25, -15, -14, -13, -15, 17, 5, 0,
    -- layer=1 filter=19 channel=10
    1, -25, 6, 1, -6, -8, -5, 2, -15,
    -- layer=1 filter=19 channel=11
    -9, -18, -1, -7, -27, -18, 0, -3, -6,
    -- layer=1 filter=19 channel=12
    -5, 0, -14, -11, -4, -14, -6, 6, 7,
    -- layer=1 filter=19 channel=13
    -19, 0, -2, -3, -19, 0, -29, 0, 5,
    -- layer=1 filter=19 channel=14
    -12, -3, 15, 7, 5, -5, 3, -5, 8,
    -- layer=1 filter=19 channel=15
    -12, -11, -18, -13, 6, -5, -5, 5, -3,
    -- layer=1 filter=19 channel=16
    -17, 3, 3, 4, -23, -11, -10, -13, 6,
    -- layer=1 filter=19 channel=17
    10, -15, -6, 0, 6, 2, -24, -8, 8,
    -- layer=1 filter=19 channel=18
    8, 0, -12, 19, -14, -15, 11, -9, 10,
    -- layer=1 filter=19 channel=19
    0, -23, -8, -28, 2, -6, -21, -2, 8,
    -- layer=1 filter=19 channel=20
    -17, 0, -19, -14, -17, -17, -8, -6, -5,
    -- layer=1 filter=19 channel=21
    -1, 1, -8, -10, 9, 7, -11, 17, -15,
    -- layer=1 filter=19 channel=22
    6, -15, -20, -15, -17, -8, -3, 3, -11,
    -- layer=1 filter=19 channel=23
    3, -14, -8, -20, 10, -6, -14, -15, -8,
    -- layer=1 filter=19 channel=24
    3, 0, 2, -30, 16, 7, -4, 4, -22,
    -- layer=1 filter=19 channel=25
    -2, -6, 0, 14, -19, -13, -19, 7, 3,
    -- layer=1 filter=19 channel=26
    -8, -13, -4, -5, -18, -17, 0, -7, -2,
    -- layer=1 filter=19 channel=27
    -16, 7, -17, 0, -17, -23, -16, 6, -7,
    -- layer=1 filter=19 channel=28
    -4, -8, 4, 3, -13, -8, -26, -5, -14,
    -- layer=1 filter=19 channel=29
    -21, -27, -25, -8, -27, -17, -27, -3, -16,
    -- layer=1 filter=19 channel=30
    -13, -10, 2, -7, 14, -8, 8, 6, 20,
    -- layer=1 filter=19 channel=31
    -10, -5, -10, 3, -25, 11, -5, 10, 0,
    -- layer=1 filter=19 channel=32
    12, 11, 10, 15, 9, 13, -5, -14, -1,
    -- layer=1 filter=19 channel=33
    -7, -20, -10, -16, -22, 1, -13, 6, -19,
    -- layer=1 filter=19 channel=34
    3, 10, -13, 5, -13, 5, -16, -13, 6,
    -- layer=1 filter=19 channel=35
    3, -6, 6, 15, -1, -2, -8, 9, 3,
    -- layer=1 filter=19 channel=36
    -29, 1, -2, 0, -7, -30, 0, -23, -9,
    -- layer=1 filter=19 channel=37
    0, 2, -1, 3, -9, 0, 22, 18, 3,
    -- layer=1 filter=19 channel=38
    6, 12, 9, 16, 4, -1, -17, -8, 14,
    -- layer=1 filter=19 channel=39
    -33, -19, -14, -16, -25, -24, -19, -8, -6,
    -- layer=1 filter=19 channel=40
    -22, -9, 11, 0, 0, -1, -22, -4, -3,
    -- layer=1 filter=19 channel=41
    9, -12, 6, -27, 7, 10, -19, 0, -6,
    -- layer=1 filter=19 channel=42
    -15, -30, -29, -26, 4, -1, -9, -1, -27,
    -- layer=1 filter=19 channel=43
    -22, 14, -12, -17, 4, -5, -27, 2, -13,
    -- layer=1 filter=19 channel=44
    -2, 3, -20, 4, -13, -17, -18, 4, -10,
    -- layer=1 filter=19 channel=45
    9, -10, 3, -14, 4, -2, -1, 18, -3,
    -- layer=1 filter=19 channel=46
    13, 15, 6, -8, -18, -25, 10, 23, -15,
    -- layer=1 filter=19 channel=47
    -24, -21, -21, -25, -17, -23, -12, 7, -7,
    -- layer=1 filter=19 channel=48
    -19, -14, -28, -23, 6, -7, 3, -2, -4,
    -- layer=1 filter=19 channel=49
    -21, -7, -11, 4, -10, -24, -8, -10, 0,
    -- layer=1 filter=19 channel=50
    -8, -13, 3, -7, 13, -12, -7, 8, 8,
    -- layer=1 filter=19 channel=51
    0, -8, 1, -7, -16, -8, 14, 5, -19,
    -- layer=1 filter=19 channel=52
    -18, 8, 3, 1, -9, -19, -8, -1, 6,
    -- layer=1 filter=19 channel=53
    -4, 3, -10, -22, -12, -11, -2, 2, 6,
    -- layer=1 filter=19 channel=54
    -10, -6, -3, -7, -11, 26, -15, 18, -2,
    -- layer=1 filter=19 channel=55
    -13, -3, -14, -5, 14, -8, -18, -12, -4,
    -- layer=1 filter=19 channel=56
    1, 17, -11, -9, -7, 14, -17, 10, -18,
    -- layer=1 filter=19 channel=57
    14, 1, -8, -8, -6, -10, -10, -14, 9,
    -- layer=1 filter=19 channel=58
    -18, 0, -10, -4, -7, -3, -26, -17, -23,
    -- layer=1 filter=19 channel=59
    -29, -23, -26, -18, -20, 2, -11, -5, -5,
    -- layer=1 filter=19 channel=60
    -2, -22, -2, -13, -6, -8, 1, -10, 2,
    -- layer=1 filter=19 channel=61
    -11, 4, -9, -25, -23, -9, 6, -2, -9,
    -- layer=1 filter=19 channel=62
    -13, -9, -14, -5, -27, -4, -16, -8, -20,
    -- layer=1 filter=19 channel=63
    -20, 10, -12, 4, -15, 15, 7, -9, 4,
    -- layer=1 filter=20 channel=0
    -10, -4, 14, -8, 6, 6, -15, -19, -3,
    -- layer=1 filter=20 channel=1
    31, 4, -3, 11, 0, -17, 19, 3, 6,
    -- layer=1 filter=20 channel=2
    -8, -12, 21, -9, 8, -8, -27, 5, -9,
    -- layer=1 filter=20 channel=3
    0, -4, -11, -17, -2, 2, -13, -19, 0,
    -- layer=1 filter=20 channel=4
    -12, -3, 9, 13, -10, 0, -6, 18, 0,
    -- layer=1 filter=20 channel=5
    -9, -6, 2, -6, 5, -29, -6, 15, -4,
    -- layer=1 filter=20 channel=6
    47, 22, 19, 30, 73, 49, 51, 32, 17,
    -- layer=1 filter=20 channel=7
    -8, -13, 22, 2, -3, -7, 3, -5, 6,
    -- layer=1 filter=20 channel=8
    8, 11, 8, -1, -8, 2, -10, 12, -6,
    -- layer=1 filter=20 channel=9
    -26, -18, -7, -26, 8, -21, -34, -20, -26,
    -- layer=1 filter=20 channel=10
    -5, 10, -12, 8, -18, -14, -3, -21, -16,
    -- layer=1 filter=20 channel=11
    -10, -2, 12, 7, 4, -3, -23, 2, -4,
    -- layer=1 filter=20 channel=12
    -12, 7, -13, -23, -20, 8, -45, -25, -23,
    -- layer=1 filter=20 channel=13
    -31, -25, 18, -22, -21, -7, -13, -22, -33,
    -- layer=1 filter=20 channel=14
    -21, -24, -33, -3, -3, 17, -15, -18, -102,
    -- layer=1 filter=20 channel=15
    -13, -6, -10, 4, 0, -19, 1, 9, 4,
    -- layer=1 filter=20 channel=16
    -7, 15, -7, -27, -9, 2, -23, -27, 7,
    -- layer=1 filter=20 channel=17
    -8, 4, 24, -17, 17, 56, 1, -8, 0,
    -- layer=1 filter=20 channel=18
    -52, -33, -6, -46, -41, 1, -7, -11, 21,
    -- layer=1 filter=20 channel=19
    23, 25, 32, 0, 23, 45, 48, 10, 4,
    -- layer=1 filter=20 channel=20
    4, -4, -9, -7, -6, 0, -1, 1, -19,
    -- layer=1 filter=20 channel=21
    -18, 1, 4, -14, 4, 13, -1, 12, 3,
    -- layer=1 filter=20 channel=22
    17, 0, 27, 3, -20, -1, 9, -3, -14,
    -- layer=1 filter=20 channel=23
    21, -22, 16, -2, -10, -5, -7, -13, -9,
    -- layer=1 filter=20 channel=24
    -17, 10, -3, -17, -1, 6, -4, 17, -9,
    -- layer=1 filter=20 channel=25
    -26, -30, -11, 11, -12, 18, 17, 7, -4,
    -- layer=1 filter=20 channel=26
    9, 17, -3, 14, 13, -6, -6, -12, -5,
    -- layer=1 filter=20 channel=27
    -18, 12, 1, -24, -1, -22, -30, -21, 8,
    -- layer=1 filter=20 channel=28
    -27, -15, 20, -29, 1, -4, -34, 1, 0,
    -- layer=1 filter=20 channel=29
    -22, -22, -32, -9, 0, -21, 3, 4, -3,
    -- layer=1 filter=20 channel=30
    -10, 8, -8, 5, 15, 23, -28, -15, 9,
    -- layer=1 filter=20 channel=31
    -8, -15, -1, -6, -20, 16, -5, -21, -9,
    -- layer=1 filter=20 channel=32
    0, -1, -7, -10, 8, -17, 1, 1, 9,
    -- layer=1 filter=20 channel=33
    19, -3, -12, 23, 38, 0, 33, 8, -4,
    -- layer=1 filter=20 channel=34
    6, 5, 56, 12, 48, 50, 53, 25, 39,
    -- layer=1 filter=20 channel=35
    -10, 6, 27, 6, 48, 43, 32, 24, 8,
    -- layer=1 filter=20 channel=36
    -22, -31, -4, -36, -4, -6, -22, 3, -1,
    -- layer=1 filter=20 channel=37
    1, -32, -6, -21, 7, 23, -3, -13, 28,
    -- layer=1 filter=20 channel=38
    -8, 29, -2, -18, 12, -7, -13, -7, 5,
    -- layer=1 filter=20 channel=39
    9, 21, -12, 6, -7, -15, -12, -17, 0,
    -- layer=1 filter=20 channel=40
    -11, -4, 7, -6, -17, -13, -11, -22, -8,
    -- layer=1 filter=20 channel=41
    10, 19, 3, 2, 4, -9, 23, 1, -25,
    -- layer=1 filter=20 channel=42
    9, 8, 7, -3, 7, -21, 14, 11, -12,
    -- layer=1 filter=20 channel=43
    -1, 36, -16, -4, 39, -25, -26, 32, -6,
    -- layer=1 filter=20 channel=44
    -8, -14, 20, -17, 5, 2, -17, -25, -9,
    -- layer=1 filter=20 channel=45
    56, 16, 36, 44, 83, 38, 26, 41, 45,
    -- layer=1 filter=20 channel=46
    -8, -20, -29, -9, -23, 29, -6, -1, 16,
    -- layer=1 filter=20 channel=47
    -20, 14, 10, -15, 1, -14, -18, -15, -11,
    -- layer=1 filter=20 channel=48
    9, 13, 0, 14, 8, -18, -18, -23, -24,
    -- layer=1 filter=20 channel=49
    -5, 1, -1, -17, 3, -11, -12, 8, -7,
    -- layer=1 filter=20 channel=50
    1, 15, 68, 41, 39, 14, 12, 38, 43,
    -- layer=1 filter=20 channel=51
    15, -12, 2, 17, 16, 8, 1, -21, 11,
    -- layer=1 filter=20 channel=52
    -7, -7, 12, 11, -12, -16, 0, -29, -15,
    -- layer=1 filter=20 channel=53
    -34, -13, -25, -3, -6, -6, -12, 6, -2,
    -- layer=1 filter=20 channel=54
    56, 36, 23, 40, 69, 53, 20, 25, 16,
    -- layer=1 filter=20 channel=55
    -12, 0, 27, 16, 6, 14, -17, -21, -34,
    -- layer=1 filter=20 channel=56
    -29, -39, 0, 9, 11, 31, 23, 0, -10,
    -- layer=1 filter=20 channel=57
    7, -12, -9, 2, -9, -15, -16, 16, 5,
    -- layer=1 filter=20 channel=58
    -18, 12, 4, -17, 8, 0, -13, -1, -2,
    -- layer=1 filter=20 channel=59
    17, 16, 4, -8, 16, 22, 14, 9, -7,
    -- layer=1 filter=20 channel=60
    10, 8, 1, 15, -7, -21, -11, -8, -16,
    -- layer=1 filter=20 channel=61
    9, -10, 6, 26, 1, -7, 18, 11, 9,
    -- layer=1 filter=20 channel=62
    15, -2, 1, 6, 2, -1, 8, -1, 28,
    -- layer=1 filter=20 channel=63
    33, 66, 50, 23, 81, 26, 1, 55, 38,
    -- layer=1 filter=21 channel=0
    9, 12, -15, -6, -19, 15, -2, 6, -5,
    -- layer=1 filter=21 channel=1
    -27, -15, -26, -26, -33, -34, -16, 8, -11,
    -- layer=1 filter=21 channel=2
    -41, -24, -46, -10, -22, -44, -14, -22, -28,
    -- layer=1 filter=21 channel=3
    -12, -11, 5, -8, 13, -10, -6, -3, -8,
    -- layer=1 filter=21 channel=4
    -14, 0, 8, -17, -4, 9, -14, 9, 1,
    -- layer=1 filter=21 channel=5
    -8, 13, 10, 0, 9, 0, 0, 24, 3,
    -- layer=1 filter=21 channel=6
    25, -7, 26, -9, -2, -32, -27, -39, -44,
    -- layer=1 filter=21 channel=7
    18, 0, 11, 3, -15, 2, 13, -5, 7,
    -- layer=1 filter=21 channel=8
    -3, -16, -21, -10, -11, 15, -9, -8, 12,
    -- layer=1 filter=21 channel=9
    7, 6, 16, 28, 14, 19, 2, 24, 20,
    -- layer=1 filter=21 channel=10
    -14, -3, -15, 7, 4, 6, 4, 15, -10,
    -- layer=1 filter=21 channel=11
    11, 6, -18, -4, 15, 8, -1, -6, 19,
    -- layer=1 filter=21 channel=12
    -13, -20, -36, -7, -58, -33, 3, -27, -19,
    -- layer=1 filter=21 channel=13
    12, -11, -11, -15, -3, -6, -12, -17, 0,
    -- layer=1 filter=21 channel=14
    1, -6, -35, -24, 0, -51, -27, -65, 5,
    -- layer=1 filter=21 channel=15
    9, 15, 22, 13, 15, 14, -3, 32, 13,
    -- layer=1 filter=21 channel=16
    25, 6, 9, 4, 5, 10, 4, 26, 25,
    -- layer=1 filter=21 channel=17
    34, 26, 17, 12, 32, 21, 11, -9, -3,
    -- layer=1 filter=21 channel=18
    28, 51, 6, 23, 14, 20, 2, -10, -16,
    -- layer=1 filter=21 channel=19
    -1, -15, -11, 21, 1, 13, 13, -13, 10,
    -- layer=1 filter=21 channel=20
    15, 7, 14, -25, -26, 7, -16, 2, -28,
    -- layer=1 filter=21 channel=21
    10, 13, -17, -18, -9, 15, -4, -7, -17,
    -- layer=1 filter=21 channel=22
    0, -14, -17, -30, -37, -11, -9, -14, -14,
    -- layer=1 filter=21 channel=23
    16, -5, -11, 3, 0, 9, -3, 15, 17,
    -- layer=1 filter=21 channel=24
    10, 16, 4, 21, 12, 22, 7, 0, 4,
    -- layer=1 filter=21 channel=25
    17, -6, -10, 21, 32, -20, 2, 1, -12,
    -- layer=1 filter=21 channel=26
    15, -13, 6, 15, 0, -12, -10, -12, 19,
    -- layer=1 filter=21 channel=27
    -2, -4, -8, 0, 6, 7, -5, 32, -14,
    -- layer=1 filter=21 channel=28
    -5, -10, -11, 0, -1, 19, -12, 7, 13,
    -- layer=1 filter=21 channel=29
    17, -5, 5, -1, 20, 6, 9, -8, 6,
    -- layer=1 filter=21 channel=30
    9, 13, 20, -2, 3, -4, 1, 15, 10,
    -- layer=1 filter=21 channel=31
    17, 20, -5, 27, 13, 9, 13, 28, 21,
    -- layer=1 filter=21 channel=32
    13, -16, 3, -3, 0, 5, 14, 4, 16,
    -- layer=1 filter=21 channel=33
    27, 30, -15, -1, -1, 1, 6, -14, -29,
    -- layer=1 filter=21 channel=34
    40, 18, 23, -4, 29, 1, -6, -36, -28,
    -- layer=1 filter=21 channel=35
    20, 48, 23, 13, 27, 6, -15, -46, -12,
    -- layer=1 filter=21 channel=36
    11, 31, 35, 54, 29, 49, 44, 59, 48,
    -- layer=1 filter=21 channel=37
    59, 41, 10, 30, 54, 19, 3, 33, 17,
    -- layer=1 filter=21 channel=38
    -41, -44, -51, -53, -39, -50, -59, -36, -56,
    -- layer=1 filter=21 channel=39
    -10, -18, 2, -10, 6, -17, -8, 8, 0,
    -- layer=1 filter=21 channel=40
    -7, -12, -10, 15, 10, 5, -3, 9, -8,
    -- layer=1 filter=21 channel=41
    -23, -22, -28, -19, -6, -11, 3, -19, 4,
    -- layer=1 filter=21 channel=42
    18, -10, 16, 14, 12, -9, 25, 25, 23,
    -- layer=1 filter=21 channel=43
    3, -20, 1, -1, 17, -22, -5, -5, -5,
    -- layer=1 filter=21 channel=44
    27, 15, -2, 3, 26, 10, 24, 24, 15,
    -- layer=1 filter=21 channel=45
    7, -3, -1, -17, 27, 1, -33, -6, -27,
    -- layer=1 filter=21 channel=46
    56, 36, 6, 16, 62, 34, 22, 14, 12,
    -- layer=1 filter=21 channel=47
    -6, 20, 14, 33, 15, 3, 15, 23, 27,
    -- layer=1 filter=21 channel=48
    -3, 11, -15, -9, 2, -3, 12, 5, 12,
    -- layer=1 filter=21 channel=49
    17, 19, 9, 19, -2, -11, 0, 12, -1,
    -- layer=1 filter=21 channel=50
    59, 74, 41, 22, 43, 22, -7, 25, 5,
    -- layer=1 filter=21 channel=51
    -11, -11, -12, -44, -22, -21, -15, -22, -38,
    -- layer=1 filter=21 channel=52
    -10, -3, -18, 15, 1, 2, 20, 7, -11,
    -- layer=1 filter=21 channel=53
    3, -4, 9, -8, 13, -8, 22, 19, -12,
    -- layer=1 filter=21 channel=54
    5, 9, 15, -12, 13, -29, -25, -21, -10,
    -- layer=1 filter=21 channel=55
    -17, -5, -12, -9, 2, -4, -8, -13, -14,
    -- layer=1 filter=21 channel=56
    7, 28, -2, 3, 13, -8, -15, -30, -20,
    -- layer=1 filter=21 channel=57
    2, 6, -1, -12, 3, -6, -4, 16, -13,
    -- layer=1 filter=21 channel=58
    -4, -12, -2, -24, -10, -25, 2, -15, -21,
    -- layer=1 filter=21 channel=59
    -1, -9, 2, -6, -20, 5, -8, -16, -15,
    -- layer=1 filter=21 channel=60
    11, 5, -7, -1, 13, 4, 22, 0, 10,
    -- layer=1 filter=21 channel=61
    -3, -28, -23, -1, -26, -11, 22, 10, -9,
    -- layer=1 filter=21 channel=62
    -3, 17, 25, 12, 14, 27, 7, 33, 26,
    -- layer=1 filter=21 channel=63
    5, -7, 37, -33, 6, -26, -41, -34, -18,
    -- layer=1 filter=22 channel=0
    13, 9, 16, -4, -18, 7, -12, -7, -4,
    -- layer=1 filter=22 channel=1
    -4, -6, 1, 11, -15, 6, 8, 9, -12,
    -- layer=1 filter=22 channel=2
    11, -13, 10, -5, 12, 7, -9, 12, -17,
    -- layer=1 filter=22 channel=3
    -5, -7, 9, -3, 10, 4, -9, 8, 15,
    -- layer=1 filter=22 channel=4
    -11, 18, -12, -10, 0, -17, -16, -18, 7,
    -- layer=1 filter=22 channel=5
    -2, 0, -5, 11, -12, 10, -3, 8, -11,
    -- layer=1 filter=22 channel=6
    -19, -6, -2, -22, -19, -1, 11, 1, -11,
    -- layer=1 filter=22 channel=7
    1, -9, -3, -10, 13, -8, 2, -13, 15,
    -- layer=1 filter=22 channel=8
    0, 6, 2, 15, 16, -10, 17, 10, 2,
    -- layer=1 filter=22 channel=9
    -17, -4, 0, -4, -18, 2, -10, 11, -18,
    -- layer=1 filter=22 channel=10
    -15, -16, -11, 7, -14, -1, 14, 9, -3,
    -- layer=1 filter=22 channel=11
    1, 4, 3, 1, -4, -1, 0, 11, -16,
    -- layer=1 filter=22 channel=12
    19, -3, 7, -3, 0, 7, 0, 6, -15,
    -- layer=1 filter=22 channel=13
    -11, -15, -14, 5, -12, 17, 14, 2, 17,
    -- layer=1 filter=22 channel=14
    8, 5, 13, 7, 5, -4, 8, -14, -3,
    -- layer=1 filter=22 channel=15
    12, -14, 10, 4, 0, -9, 4, -8, 0,
    -- layer=1 filter=22 channel=16
    -8, 17, 3, 10, -11, 0, 0, 4, -14,
    -- layer=1 filter=22 channel=17
    -5, 18, 16, 8, -4, -12, -2, -14, -2,
    -- layer=1 filter=22 channel=18
    -14, 11, -8, -20, 3, 2, -12, 0, -22,
    -- layer=1 filter=22 channel=19
    -10, -21, -14, 9, 0, 10, -1, 5, -1,
    -- layer=1 filter=22 channel=20
    -1, -14, 3, -1, -12, 3, -17, 3, -5,
    -- layer=1 filter=22 channel=21
    -16, 10, -11, 15, -7, -5, 12, -15, -15,
    -- layer=1 filter=22 channel=22
    -2, 5, 11, 1, -2, 13, -17, 5, -18,
    -- layer=1 filter=22 channel=23
    -11, 5, -7, 16, 6, 2, 1, 0, -11,
    -- layer=1 filter=22 channel=24
    -1, -18, 14, -8, -7, -16, 16, -7, -14,
    -- layer=1 filter=22 channel=25
    -12, 16, -5, 0, -3, 0, -16, -9, 14,
    -- layer=1 filter=22 channel=26
    7, -8, 13, 3, -13, 4, -5, -18, 3,
    -- layer=1 filter=22 channel=27
    -19, 4, -16, 9, -11, 12, 7, -1, 4,
    -- layer=1 filter=22 channel=28
    10, 12, 12, -5, 17, 10, 1, 0, 5,
    -- layer=1 filter=22 channel=29
    -12, 16, -2, 2, 18, -14, -20, 0, -10,
    -- layer=1 filter=22 channel=30
    9, -4, -9, 12, 1, 10, -1, -13, -2,
    -- layer=1 filter=22 channel=31
    11, -13, -12, 10, 13, 14, -1, 9, -4,
    -- layer=1 filter=22 channel=32
    17, -17, 14, -6, -8, 11, 0, -1, -18,
    -- layer=1 filter=22 channel=33
    0, -8, -14, 9, 2, 1, -5, -12, 11,
    -- layer=1 filter=22 channel=34
    -21, 14, -18, -11, -11, 7, -10, -10, -17,
    -- layer=1 filter=22 channel=35
    -16, -8, -20, 9, 6, -3, -1, -17, 11,
    -- layer=1 filter=22 channel=36
    -2, -17, -11, -11, 17, 12, -15, -8, -18,
    -- layer=1 filter=22 channel=37
    0, -13, -15, -3, -12, -17, 2, 3, -9,
    -- layer=1 filter=22 channel=38
    -17, 9, -12, 3, 10, 1, 13, -15, -6,
    -- layer=1 filter=22 channel=39
    -9, -19, 8, 11, 15, 0, 5, -18, 8,
    -- layer=1 filter=22 channel=40
    -4, 0, -3, 0, 0, 14, 10, -13, 0,
    -- layer=1 filter=22 channel=41
    0, -8, -8, -8, -14, -5, 14, -17, -13,
    -- layer=1 filter=22 channel=42
    0, 11, -15, 0, 9, -7, 5, -5, 14,
    -- layer=1 filter=22 channel=43
    8, -5, 6, -13, 5, 11, -14, 12, -3,
    -- layer=1 filter=22 channel=44
    -15, 1, 3, -3, -1, -14, 12, 14, 8,
    -- layer=1 filter=22 channel=45
    2, -15, 0, -8, -8, 10, 0, 13, -17,
    -- layer=1 filter=22 channel=46
    -9, -7, -13, -12, -3, -1, -5, -7, -15,
    -- layer=1 filter=22 channel=47
    -18, -9, 11, 16, -1, 9, -2, -19, -7,
    -- layer=1 filter=22 channel=48
    15, 0, -14, 6, -10, -12, -5, 10, -15,
    -- layer=1 filter=22 channel=49
    -18, -12, 4, -17, -1, -13, -15, -15, 4,
    -- layer=1 filter=22 channel=50
    -18, -16, -5, 7, 14, -6, -3, 11, 2,
    -- layer=1 filter=22 channel=51
    13, 7, 3, -1, 9, -6, 5, 15, -6,
    -- layer=1 filter=22 channel=52
    14, 7, -8, -16, 1, -9, -6, -2, -6,
    -- layer=1 filter=22 channel=53
    -5, 5, 0, -20, -15, -10, 9, 16, -13,
    -- layer=1 filter=22 channel=54
    -15, 0, -1, 9, 7, 16, -13, -1, -9,
    -- layer=1 filter=22 channel=55
    7, -11, -15, -12, 7, 8, -10, -9, 6,
    -- layer=1 filter=22 channel=56
    15, 2, -8, 16, 10, -2, 13, 18, -16,
    -- layer=1 filter=22 channel=57
    15, -17, -2, -13, -11, -3, -7, -14, 9,
    -- layer=1 filter=22 channel=58
    -1, -9, 9, -11, 2, -2, 8, -7, 9,
    -- layer=1 filter=22 channel=59
    -19, 7, -1, -13, 6, 16, 6, -13, -17,
    -- layer=1 filter=22 channel=60
    -9, 15, -17, -4, -17, -13, -12, 4, -13,
    -- layer=1 filter=22 channel=61
    -10, 1, -14, 4, -10, 10, 6, -15, 7,
    -- layer=1 filter=22 channel=62
    -19, 0, -8, 6, -3, 9, -8, -10, 4,
    -- layer=1 filter=22 channel=63
    -12, 7, 12, -5, 14, -10, 9, 6, -5,
    -- layer=1 filter=23 channel=0
    18, 12, 17, 19, -6, -10, 14, 2, -15,
    -- layer=1 filter=23 channel=1
    -19, -7, -18, -4, -18, -5, -3, -8, 10,
    -- layer=1 filter=23 channel=2
    -29, 7, -31, 20, -11, 2, -10, 9, 12,
    -- layer=1 filter=23 channel=3
    -11, 6, -1, 5, 4, 3, -8, 1, 6,
    -- layer=1 filter=23 channel=4
    -10, 5, -18, 3, -2, -9, 11, 15, -8,
    -- layer=1 filter=23 channel=5
    -12, 13, 4, -15, -12, 13, -27, -2, -20,
    -- layer=1 filter=23 channel=6
    -47, -51, -41, -67, -30, -31, -15, -75, -4,
    -- layer=1 filter=23 channel=7
    11, 3, 13, -13, 7, 13, -19, -8, 9,
    -- layer=1 filter=23 channel=8
    16, -19, -13, -1, 8, -2, -13, 9, 7,
    -- layer=1 filter=23 channel=9
    14, 12, -11, 19, -4, 20, 7, 3, 14,
    -- layer=1 filter=23 channel=10
    6, 23, -1, -6, 3, 17, 7, 17, -23,
    -- layer=1 filter=23 channel=11
    23, -3, 13, 5, 12, 13, 2, -4, 16,
    -- layer=1 filter=23 channel=12
    2, -18, -40, 23, 7, -19, 34, -14, 0,
    -- layer=1 filter=23 channel=13
    4, -8, -11, 21, -20, 3, 25, -10, 0,
    -- layer=1 filter=23 channel=14
    -8, 6, 6, -64, -29, -21, -17, -25, -47,
    -- layer=1 filter=23 channel=15
    4, 9, 15, -14, 8, 5, 8, 9, 3,
    -- layer=1 filter=23 channel=16
    -4, -7, -19, 12, 5, 9, -5, -8, -9,
    -- layer=1 filter=23 channel=17
    12, 14, -3, -27, -20, -10, 27, 1, -7,
    -- layer=1 filter=23 channel=18
    35, 30, 53, 29, 31, 12, 34, 19, 10,
    -- layer=1 filter=23 channel=19
    -37, -12, -4, 1, 9, 13, -15, -17, 13,
    -- layer=1 filter=23 channel=20
    -7, 13, -13, -15, -17, -20, 12, 21, 15,
    -- layer=1 filter=23 channel=21
    5, 13, 0, -17, -3, -9, 16, 5, 7,
    -- layer=1 filter=23 channel=22
    8, 11, -16, -12, -7, -5, 3, -22, 10,
    -- layer=1 filter=23 channel=23
    -6, -12, -6, 12, -7, -9, 16, 9, -9,
    -- layer=1 filter=23 channel=24
    8, -4, 8, -3, 16, 20, 22, 9, 21,
    -- layer=1 filter=23 channel=25
    4, 13, 1, -1, -3, 4, 7, 9, -8,
    -- layer=1 filter=23 channel=26
    1, 14, 15, 19, 19, -10, 6, -3, -15,
    -- layer=1 filter=23 channel=27
    -31, 0, 0, 1, -15, -2, -34, 10, -31,
    -- layer=1 filter=23 channel=28
    16, -11, 11, 2, 16, -9, 25, 21, 14,
    -- layer=1 filter=23 channel=29
    -13, -16, -30, 10, 5, -15, -20, -21, -8,
    -- layer=1 filter=23 channel=30
    12, -15, 8, -13, -5, -16, -11, -2, -1,
    -- layer=1 filter=23 channel=31
    8, 17, -5, 27, 4, -6, 15, -8, 5,
    -- layer=1 filter=23 channel=32
    -14, -2, 5, 7, -13, 12, -4, 9, 6,
    -- layer=1 filter=23 channel=33
    2, -26, 10, -25, -25, -16, 0, -30, 14,
    -- layer=1 filter=23 channel=34
    -23, -47, 14, -34, -48, -21, 15, -43, -35,
    -- layer=1 filter=23 channel=35
    -13, -18, 11, -33, -12, -9, 32, -10, 4,
    -- layer=1 filter=23 channel=36
    -2, -7, 0, 40, 37, 10, 16, 20, 4,
    -- layer=1 filter=23 channel=37
    -1, 4, -46, 2, -13, 1, 33, 7, 13,
    -- layer=1 filter=23 channel=38
    -1, 13, -1, -14, -13, -7, -2, 0, -11,
    -- layer=1 filter=23 channel=39
    -8, -8, 3, 14, -4, 10, 9, -7, 0,
    -- layer=1 filter=23 channel=40
    19, -8, -1, 24, 9, 0, 20, 15, 8,
    -- layer=1 filter=23 channel=41
    -22, -13, 9, -17, 11, 1, -2, -7, 9,
    -- layer=1 filter=23 channel=42
    27, -4, 35, -6, 17, 24, -5, 20, 6,
    -- layer=1 filter=23 channel=43
    -50, -7, 13, -58, -6, 7, -47, 4, -34,
    -- layer=1 filter=23 channel=44
    -5, -4, 16, 18, -2, -18, -9, 5, 6,
    -- layer=1 filter=23 channel=45
    -32, -54, -18, -62, -21, -24, -15, -56, -31,
    -- layer=1 filter=23 channel=46
    -11, 6, -19, -17, -13, 23, 21, 12, 15,
    -- layer=1 filter=23 channel=47
    24, 21, 14, 17, 1, 13, -11, 4, -12,
    -- layer=1 filter=23 channel=48
    4, -2, 22, 7, 0, -10, 19, 1, 13,
    -- layer=1 filter=23 channel=49
    21, 17, -15, 10, 21, 13, -15, 0, -2,
    -- layer=1 filter=23 channel=50
    -16, -24, -37, 1, -6, -8, 2, -9, -11,
    -- layer=1 filter=23 channel=51
    1, -22, -11, -21, -6, -20, -14, 6, 5,
    -- layer=1 filter=23 channel=52
    0, -3, 6, -12, 3, -2, -10, -15, 0,
    -- layer=1 filter=23 channel=53
    16, 0, 15, 4, -1, -9, 9, 11, 3,
    -- layer=1 filter=23 channel=54
    -35, -85, -37, -57, -38, -9, -23, -44, -39,
    -- layer=1 filter=23 channel=55
    0, -3, -10, 12, -14, 11, 0, -3, -17,
    -- layer=1 filter=23 channel=56
    -1, 5, 27, -5, -19, 15, 2, -19, 15,
    -- layer=1 filter=23 channel=57
    16, 16, -11, 14, 18, -7, -18, -12, 10,
    -- layer=1 filter=23 channel=58
    -26, 11, -13, 0, 11, 18, 1, 1, -18,
    -- layer=1 filter=23 channel=59
    -6, -5, 0, 5, 23, -3, -9, 0, 29,
    -- layer=1 filter=23 channel=60
    15, -2, 0, -3, 1, 17, 3, 13, 5,
    -- layer=1 filter=23 channel=61
    18, 2, 4, 0, -3, 4, 8, 1, -6,
    -- layer=1 filter=23 channel=62
    24, 12, 35, 14, 12, 7, -16, -2, 5,
    -- layer=1 filter=23 channel=63
    -77, -3, -11, -108, -44, -32, -60, -38, -56,
    -- layer=1 filter=24 channel=0
    -23, -14, -1, -2, -16, -9, -3, -17, 4,
    -- layer=1 filter=24 channel=1
    -6, -17, -14, -6, -25, -1, -16, -24, -5,
    -- layer=1 filter=24 channel=2
    -9, 0, -16, 3, -22, -6, 8, -18, -22,
    -- layer=1 filter=24 channel=3
    -20, 14, 17, 0, -15, -6, 9, -22, 12,
    -- layer=1 filter=24 channel=4
    10, 16, 18, 12, 5, 2, -2, -17, 1,
    -- layer=1 filter=24 channel=5
    -13, -20, -12, 0, -12, 0, -13, -2, 0,
    -- layer=1 filter=24 channel=6
    -12, -20, -2, -8, 5, -15, -1, -17, 4,
    -- layer=1 filter=24 channel=7
    13, -9, -1, -4, -5, -12, -10, -1, -12,
    -- layer=1 filter=24 channel=8
    8, -1, -2, -5, 6, 9, 0, -10, 11,
    -- layer=1 filter=24 channel=9
    -5, 7, 0, -11, -6, -9, -22, -6, -2,
    -- layer=1 filter=24 channel=10
    -24, -15, 15, 0, 4, 6, -14, -11, 0,
    -- layer=1 filter=24 channel=11
    -1, 6, -14, -14, -12, 1, -1, 11, -18,
    -- layer=1 filter=24 channel=12
    5, 10, -12, 0, -13, -1, 8, 15, -21,
    -- layer=1 filter=24 channel=13
    -1, -13, 12, -2, 0, 1, -17, -12, -15,
    -- layer=1 filter=24 channel=14
    4, 20, -8, 1, -18, 7, 2, -4, 3,
    -- layer=1 filter=24 channel=15
    -26, -6, 1, -14, 8, -18, -17, 2, 15,
    -- layer=1 filter=24 channel=16
    -3, -3, 13, -10, -7, 3, -2, -4, 21,
    -- layer=1 filter=24 channel=17
    -21, -23, -20, -23, -17, -14, -6, -10, -15,
    -- layer=1 filter=24 channel=18
    9, -11, -16, 0, 14, -13, -5, -12, -1,
    -- layer=1 filter=24 channel=19
    -7, -14, -10, 3, -13, -20, -10, -18, -30,
    -- layer=1 filter=24 channel=20
    -14, -3, -6, -4, -10, -12, -7, 9, -31,
    -- layer=1 filter=24 channel=21
    3, 9, -6, -11, 6, -1, -6, 9, -17,
    -- layer=1 filter=24 channel=22
    0, -1, 7, -2, -20, -1, -3, -18, 4,
    -- layer=1 filter=24 channel=23
    5, 2, -14, -4, -13, -9, 10, -6, 7,
    -- layer=1 filter=24 channel=24
    -1, 3, 3, -12, -8, 15, 4, -16, -13,
    -- layer=1 filter=24 channel=25
    3, -5, -14, 0, -20, 7, -6, -27, 0,
    -- layer=1 filter=24 channel=26
    -29, -6, -8, -3, 5, 8, -18, -28, 0,
    -- layer=1 filter=24 channel=27
    -20, -12, -18, 0, -25, 15, -31, -7, -18,
    -- layer=1 filter=24 channel=28
    -18, 6, 17, -21, -3, 0, 6, -6, 12,
    -- layer=1 filter=24 channel=29
    1, 8, 6, 4, -10, 11, -1, 2, -21,
    -- layer=1 filter=24 channel=30
    -4, -20, -10, 6, -24, -13, 7, -1, -10,
    -- layer=1 filter=24 channel=31
    -18, -8, 1, -18, -16, -20, -2, -22, -15,
    -- layer=1 filter=24 channel=32
    -6, 12, -10, -17, -13, -1, 6, 7, -16,
    -- layer=1 filter=24 channel=33
    -14, -14, -10, 12, -26, -4, -25, -10, -14,
    -- layer=1 filter=24 channel=34
    -27, -2, -21, -15, 9, 15, -9, -32, -26,
    -- layer=1 filter=24 channel=35
    6, -17, -4, -10, 0, -6, -13, -27, 5,
    -- layer=1 filter=24 channel=36
    -1, -17, -5, 11, 0, -20, 0, -10, -15,
    -- layer=1 filter=24 channel=37
    -23, -21, -12, -23, -15, -10, 0, -10, 12,
    -- layer=1 filter=24 channel=38
    -10, -3, 6, -16, -8, 0, -18, -18, -26,
    -- layer=1 filter=24 channel=39
    -23, -5, -15, -1, -16, -12, -17, 2, 1,
    -- layer=1 filter=24 channel=40
    12, 4, -7, -10, -2, 6, -20, -21, -2,
    -- layer=1 filter=24 channel=41
    -23, -1, 1, -17, -18, 2, -27, -2, -5,
    -- layer=1 filter=24 channel=42
    -30, -19, 0, -4, -4, -23, -3, -17, -6,
    -- layer=1 filter=24 channel=43
    0, 4, 1, -11, 8, 12, -30, -12, 9,
    -- layer=1 filter=24 channel=44
    -7, -6, -1, -8, 0, -18, 3, 8, 0,
    -- layer=1 filter=24 channel=45
    -12, 0, 8, 4, -11, 6, -24, -2, -8,
    -- layer=1 filter=24 channel=46
    -5, -15, 9, -5, 1, 12, 5, -13, -16,
    -- layer=1 filter=24 channel=47
    -4, -22, -1, -2, -15, 9, 1, -19, -17,
    -- layer=1 filter=24 channel=48
    -31, -14, 1, -1, 1, -7, -21, -23, -18,
    -- layer=1 filter=24 channel=49
    -16, 6, -11, -8, -17, -4, 0, -16, -10,
    -- layer=1 filter=24 channel=50
    12, 12, -6, 7, -18, -29, -5, -14, -4,
    -- layer=1 filter=24 channel=51
    -4, -12, 4, -27, 6, -26, -7, -15, -8,
    -- layer=1 filter=24 channel=52
    9, -12, 7, 12, -11, 0, 9, 11, 4,
    -- layer=1 filter=24 channel=53
    -25, 5, -8, -15, -8, 14, -14, -23, -2,
    -- layer=1 filter=24 channel=54
    11, 5, 0, 11, 1, -12, -15, -16, 3,
    -- layer=1 filter=24 channel=55
    6, 4, 11, 0, 10, -6, -1, 2, -24,
    -- layer=1 filter=24 channel=56
    -1, -4, -7, -19, 1, -13, 5, 0, -4,
    -- layer=1 filter=24 channel=57
    -1, -13, 13, 17, -10, 18, 2, -7, -11,
    -- layer=1 filter=24 channel=58
    -13, -10, 15, -11, -28, -17, -13, -29, 9,
    -- layer=1 filter=24 channel=59
    -10, -15, 12, 8, -21, -20, -15, 4, -17,
    -- layer=1 filter=24 channel=60
    -12, -22, 1, -7, 4, -2, 8, -11, -8,
    -- layer=1 filter=24 channel=61
    0, -15, -4, -18, -24, 0, -5, 0, -5,
    -- layer=1 filter=24 channel=62
    3, 5, 0, -26, -14, -2, -1, -4, -19,
    -- layer=1 filter=24 channel=63
    -5, 15, 9, 7, -11, 0, -24, -5, 10,
    -- layer=1 filter=25 channel=0
    -19, 2, -8, -17, -17, 1, -2, -7, -5,
    -- layer=1 filter=25 channel=1
    4, -18, 14, 13, 10, -16, 13, -15, -6,
    -- layer=1 filter=25 channel=2
    0, -4, -5, -15, -1, -3, -22, 7, -21,
    -- layer=1 filter=25 channel=3
    -14, -18, -7, 8, 3, -6, -6, 0, -14,
    -- layer=1 filter=25 channel=4
    -17, 7, 5, -15, -2, 17, 11, -12, 2,
    -- layer=1 filter=25 channel=5
    -17, -14, -18, 8, 4, -10, -5, -11, 5,
    -- layer=1 filter=25 channel=6
    6, 0, -7, 3, -1, -16, -6, -11, 1,
    -- layer=1 filter=25 channel=7
    -1, -9, 11, -4, -4, -15, -1, -6, 0,
    -- layer=1 filter=25 channel=8
    -5, -3, -11, -2, 0, -4, -18, -9, -3,
    -- layer=1 filter=25 channel=9
    15, -5, -5, -17, -19, -1, -8, 13, -2,
    -- layer=1 filter=25 channel=10
    -9, 3, -15, -3, -14, -12, -10, 7, 0,
    -- layer=1 filter=25 channel=11
    -16, -19, -2, -10, 9, -1, 6, 11, 0,
    -- layer=1 filter=25 channel=12
    11, -2, -6, -4, 0, -1, -11, -18, 7,
    -- layer=1 filter=25 channel=13
    -8, -19, -16, 1, -16, -8, 3, -2, -3,
    -- layer=1 filter=25 channel=14
    6, -18, -10, -11, -17, -3, -6, -1, -10,
    -- layer=1 filter=25 channel=15
    3, -4, -2, -9, -14, -3, 0, 8, 13,
    -- layer=1 filter=25 channel=16
    13, -8, -9, 2, 4, 15, 17, 12, -10,
    -- layer=1 filter=25 channel=17
    -14, -4, 6, -3, 0, -13, 9, -7, 12,
    -- layer=1 filter=25 channel=18
    -10, -21, 0, -11, 10, -7, -11, 10, 2,
    -- layer=1 filter=25 channel=19
    -21, 13, -16, 9, 12, -14, -11, 5, 2,
    -- layer=1 filter=25 channel=20
    -18, -8, -10, 13, -12, -14, 3, 6, 2,
    -- layer=1 filter=25 channel=21
    -14, 18, -17, 13, -7, 3, 14, -3, -2,
    -- layer=1 filter=25 channel=22
    -13, -15, -2, 1, -17, 8, -2, -22, 2,
    -- layer=1 filter=25 channel=23
    -16, 3, -1, -17, -15, 12, -13, 8, 10,
    -- layer=1 filter=25 channel=24
    16, 4, 4, -7, -6, -11, -14, 1, -17,
    -- layer=1 filter=25 channel=25
    8, -15, -17, 5, -9, 16, -20, 6, -2,
    -- layer=1 filter=25 channel=26
    9, 9, 7, -12, 0, -20, 16, 3, 10,
    -- layer=1 filter=25 channel=27
    0, -1, -3, 0, 8, 13, -7, 11, -15,
    -- layer=1 filter=25 channel=28
    17, 17, -1, 12, -16, 8, -11, 8, -13,
    -- layer=1 filter=25 channel=29
    -22, -1, -6, 0, 16, 8, 7, 16, -2,
    -- layer=1 filter=25 channel=30
    -11, 13, 17, 11, 0, -11, 14, -10, -8,
    -- layer=1 filter=25 channel=31
    13, 7, -1, -12, 12, 0, -10, 0, 8,
    -- layer=1 filter=25 channel=32
    0, 0, 5, 17, 15, -2, 18, -10, -16,
    -- layer=1 filter=25 channel=33
    10, -12, 4, 3, 0, -12, 6, -10, 8,
    -- layer=1 filter=25 channel=34
    -3, 3, -16, 10, -10, 8, 0, 9, 7,
    -- layer=1 filter=25 channel=35
    9, 13, -13, 0, -13, -11, 13, -11, 3,
    -- layer=1 filter=25 channel=36
    -6, -4, -13, -12, 0, 12, -2, -2, 3,
    -- layer=1 filter=25 channel=37
    2, -4, -1, -20, 10, 0, 0, 13, -10,
    -- layer=1 filter=25 channel=38
    -13, 9, 1, -10, -5, -18, -15, 11, -9,
    -- layer=1 filter=25 channel=39
    -5, 14, -12, -1, -7, 0, -8, -12, 14,
    -- layer=1 filter=25 channel=40
    -5, -18, -17, -14, 14, -7, -10, -8, -1,
    -- layer=1 filter=25 channel=41
    -14, -10, 11, 12, -14, -6, -1, 1, -3,
    -- layer=1 filter=25 channel=42
    3, -3, 5, 8, -7, -6, 10, -20, 1,
    -- layer=1 filter=25 channel=43
    -15, -7, -9, 11, 13, -20, -10, -9, -5,
    -- layer=1 filter=25 channel=44
    -13, 14, 9, 3, -8, -17, -7, -13, -11,
    -- layer=1 filter=25 channel=45
    -14, -16, -1, 0, 0, 6, -5, 0, -17,
    -- layer=1 filter=25 channel=46
    -18, 1, -9, 2, -10, -8, -2, -11, 0,
    -- layer=1 filter=25 channel=47
    14, 6, -6, 6, -5, -8, -7, -1, 2,
    -- layer=1 filter=25 channel=48
    -11, 14, 8, 2, -4, 11, -17, -12, -17,
    -- layer=1 filter=25 channel=49
    -12, 0, 16, 11, 6, 10, -12, -15, 7,
    -- layer=1 filter=25 channel=50
    -4, 0, 1, -4, -11, -15, 4, -17, 4,
    -- layer=1 filter=25 channel=51
    8, 7, 0, 0, -12, 0, 13, -15, -23,
    -- layer=1 filter=25 channel=52
    12, 9, -8, -4, -12, -15, -8, -10, 10,
    -- layer=1 filter=25 channel=53
    2, -11, -6, 2, 4, 8, -10, 3, -4,
    -- layer=1 filter=25 channel=54
    7, -6, 6, 2, 11, -4, -11, 7, 5,
    -- layer=1 filter=25 channel=55
    15, 3, -17, -21, 0, -19, 13, 9, 0,
    -- layer=1 filter=25 channel=56
    0, -2, 0, 0, -11, 3, 0, 16, 16,
    -- layer=1 filter=25 channel=57
    -9, -10, 2, -1, -15, -8, 0, 12, 0,
    -- layer=1 filter=25 channel=58
    -15, 11, 10, -18, -10, 7, -3, -15, -17,
    -- layer=1 filter=25 channel=59
    -10, 7, 12, -13, -13, 12, -11, -19, 6,
    -- layer=1 filter=25 channel=60
    6, 2, -9, -15, -9, 6, -16, -13, 0,
    -- layer=1 filter=25 channel=61
    -23, 5, -1, 10, 3, 11, -6, 1, -14,
    -- layer=1 filter=25 channel=62
    0, 1, -6, -7, -9, -2, -11, -8, -2,
    -- layer=1 filter=25 channel=63
    0, 2, -7, 6, 12, -10, -1, -9, 2,
    -- layer=1 filter=26 channel=0
    -6, -11, 13, -16, 15, -16, -11, 11, -3,
    -- layer=1 filter=26 channel=1
    -4, -10, 13, -17, 10, 11, -5, -12, -5,
    -- layer=1 filter=26 channel=2
    10, -20, 2, -19, -16, -2, -15, -18, 9,
    -- layer=1 filter=26 channel=3
    0, 1, -11, -9, 5, -14, 9, -14, 10,
    -- layer=1 filter=26 channel=4
    4, 2, 13, -13, 14, 17, 16, -2, 1,
    -- layer=1 filter=26 channel=5
    -5, -13, 4, 0, 0, -11, 1, -11, -2,
    -- layer=1 filter=26 channel=6
    -20, -14, 5, 5, 3, 7, 7, -1, -11,
    -- layer=1 filter=26 channel=7
    -9, -1, -10, -8, -1, 0, -9, 1, 0,
    -- layer=1 filter=26 channel=8
    -3, 10, -9, -17, 8, -10, 0, 13, 1,
    -- layer=1 filter=26 channel=9
    -18, 0, 16, 7, -3, -17, -9, 2, -7,
    -- layer=1 filter=26 channel=10
    -11, -2, 4, -12, 11, 0, 12, 5, 4,
    -- layer=1 filter=26 channel=11
    6, -17, -19, -4, -18, 3, -5, -4, -22,
    -- layer=1 filter=26 channel=12
    -10, 17, -2, 0, -16, -13, -2, 1, -13,
    -- layer=1 filter=26 channel=13
    -13, 3, 4, 14, 11, 13, 5, -11, -5,
    -- layer=1 filter=26 channel=14
    0, -5, 10, -18, -16, -3, -11, 2, 5,
    -- layer=1 filter=26 channel=15
    15, 2, 0, -9, 5, -20, -8, -1, 15,
    -- layer=1 filter=26 channel=16
    5, 3, 15, 17, -14, 11, -14, 2, 12,
    -- layer=1 filter=26 channel=17
    -5, -8, -17, 5, 11, -16, 5, 16, 9,
    -- layer=1 filter=26 channel=18
    -1, -22, -7, -9, 0, 5, -18, -18, -12,
    -- layer=1 filter=26 channel=19
    11, -10, -12, -16, -16, -2, 15, -18, 2,
    -- layer=1 filter=26 channel=20
    -12, -4, 2, 15, -17, -19, -13, -8, -18,
    -- layer=1 filter=26 channel=21
    -17, 18, -2, -12, -5, -11, 2, 9, 12,
    -- layer=1 filter=26 channel=22
    -9, -2, -16, -18, 5, -4, -11, 17, 1,
    -- layer=1 filter=26 channel=23
    6, -1, -7, -16, -17, -9, -8, -16, -20,
    -- layer=1 filter=26 channel=24
    7, -11, 6, 5, -9, -6, -8, 0, -13,
    -- layer=1 filter=26 channel=25
    -11, -4, -5, -10, -6, -13, 8, -1, 0,
    -- layer=1 filter=26 channel=26
    -10, -18, 14, -4, 13, -13, 7, -2, -18,
    -- layer=1 filter=26 channel=27
    4, -14, 6, -8, 1, 0, -5, -15, 2,
    -- layer=1 filter=26 channel=28
    3, -4, -1, -4, -12, 5, 2, 16, -12,
    -- layer=1 filter=26 channel=29
    9, 0, 16, -2, 3, 4, 11, 0, -10,
    -- layer=1 filter=26 channel=30
    17, 2, 3, -18, -8, 10, 7, -17, 14,
    -- layer=1 filter=26 channel=31
    14, -10, 9, -3, 11, 5, -2, 11, 6,
    -- layer=1 filter=26 channel=32
    0, 9, -12, 10, -13, -1, -18, 10, 7,
    -- layer=1 filter=26 channel=33
    3, -17, -12, -13, -1, 9, -16, -5, 12,
    -- layer=1 filter=26 channel=34
    10, 4, 1, 14, 2, 1, -18, -11, -4,
    -- layer=1 filter=26 channel=35
    -4, 1, -16, 1, 10, -1, 2, 9, -12,
    -- layer=1 filter=26 channel=36
    3, -1, 7, 12, -8, -10, -7, -18, -13,
    -- layer=1 filter=26 channel=37
    -1, 4, -16, 3, -18, 4, 0, 1, -8,
    -- layer=1 filter=26 channel=38
    -20, -6, -22, -16, 10, -20, 1, 0, 11,
    -- layer=1 filter=26 channel=39
    -11, 14, -8, 9, 10, -19, 15, 15, 1,
    -- layer=1 filter=26 channel=40
    -5, -9, -12, 3, -14, 2, -1, 9, -5,
    -- layer=1 filter=26 channel=41
    -3, -9, -15, 0, -2, 15, -6, 1, -20,
    -- layer=1 filter=26 channel=42
    16, -12, -12, 12, -10, -10, -10, -2, -14,
    -- layer=1 filter=26 channel=43
    0, -7, -13, 14, -9, -7, 2, 6, 4,
    -- layer=1 filter=26 channel=44
    13, -14, -15, 0, 4, -2, -12, 13, 11,
    -- layer=1 filter=26 channel=45
    -14, -15, -5, 3, -17, -17, 11, 5, 11,
    -- layer=1 filter=26 channel=46
    7, -9, -20, -9, 11, -6, -6, 5, 4,
    -- layer=1 filter=26 channel=47
    11, -19, 6, -3, -11, 1, -7, 0, 3,
    -- layer=1 filter=26 channel=48
    -10, -16, -9, -9, 6, -2, 1, 12, -4,
    -- layer=1 filter=26 channel=49
    3, 2, -10, 16, -19, -10, -2, 1, 11,
    -- layer=1 filter=26 channel=50
    2, -18, -16, 10, -15, 10, 0, 4, 12,
    -- layer=1 filter=26 channel=51
    -14, 1, 10, 5, -8, -13, -15, -4, 11,
    -- layer=1 filter=26 channel=52
    -2, 1, 5, 17, 14, 15, -12, -4, 5,
    -- layer=1 filter=26 channel=53
    -8, -8, 11, -8, 1, -4, 5, 3, 12,
    -- layer=1 filter=26 channel=54
    11, 9, 15, 17, -5, -1, 9, -14, 0,
    -- layer=1 filter=26 channel=55
    3, 10, 15, 6, -15, 10, -7, 14, 15,
    -- layer=1 filter=26 channel=56
    -8, 15, -15, -17, 1, -13, 13, -6, -5,
    -- layer=1 filter=26 channel=57
    -13, 8, -17, 1, -5, -6, 8, -10, 13,
    -- layer=1 filter=26 channel=58
    -6, 2, 12, 3, -18, 12, -21, -16, -12,
    -- layer=1 filter=26 channel=59
    -13, -7, 12, -14, -5, -3, 14, -12, 10,
    -- layer=1 filter=26 channel=60
    12, 8, 10, -3, 16, 15, -15, -4, -2,
    -- layer=1 filter=26 channel=61
    14, 5, 5, -6, 8, -7, 7, 9, 7,
    -- layer=1 filter=26 channel=62
    -1, 15, -18, -7, -11, -12, -19, 0, 2,
    -- layer=1 filter=26 channel=63
    0, 7, 17, 11, 4, 13, 0, -16, -6,
    -- layer=1 filter=27 channel=0
    -22, 3, -11, -4, -22, -17, -19, -26, -12,
    -- layer=1 filter=27 channel=1
    1, 1, -8, -12, 3, 9, 5, -1, -8,
    -- layer=1 filter=27 channel=2
    1, 9, 9, 10, -1, -17, -28, 12, 12,
    -- layer=1 filter=27 channel=3
    -6, -20, -20, -7, -22, -26, -6, -11, -19,
    -- layer=1 filter=27 channel=4
    18, -15, 3, 8, -7, 12, -12, 1, -13,
    -- layer=1 filter=27 channel=5
    2, -17, -12, 11, 19, 8, 3, 15, -13,
    -- layer=1 filter=27 channel=6
    -3, -10, 13, -9, -2, 7, 13, 9, 16,
    -- layer=1 filter=27 channel=7
    0, -6, -13, -5, 1, 5, 0, 2, 9,
    -- layer=1 filter=27 channel=8
    -8, -3, 10, 8, -3, 11, -9, 14, 14,
    -- layer=1 filter=27 channel=9
    15, -4, -12, 6, -1, -2, -2, -12, -8,
    -- layer=1 filter=27 channel=10
    -13, 13, -25, -27, -4, 7, -25, 2, -12,
    -- layer=1 filter=27 channel=11
    9, -4, 4, -4, 6, -3, -14, -21, 0,
    -- layer=1 filter=27 channel=12
    -10, -16, 13, -10, 13, 6, -2, -9, 17,
    -- layer=1 filter=27 channel=13
    0, 0, -1, -22, 7, 3, -20, 1, -17,
    -- layer=1 filter=27 channel=14
    -26, 2, -13, -11, -21, -16, -13, 8, 0,
    -- layer=1 filter=27 channel=15
    -4, -9, -1, -23, -12, -8, 5, -15, 0,
    -- layer=1 filter=27 channel=16
    -4, -2, 2, 3, 17, 4, -17, 14, -2,
    -- layer=1 filter=27 channel=17
    13, -12, 4, -1, 4, 8, 7, 9, 0,
    -- layer=1 filter=27 channel=18
    -5, 7, -5, 6, -6, 8, 24, -10, 6,
    -- layer=1 filter=27 channel=19
    -15, 6, 5, -6, 0, 19, 13, -4, 12,
    -- layer=1 filter=27 channel=20
    -10, -20, -11, -4, -12, 21, 7, 4, 6,
    -- layer=1 filter=27 channel=21
    12, 4, 1, 6, 9, 1, -6, 15, -18,
    -- layer=1 filter=27 channel=22
    -5, -15, 19, -26, 13, -4, 3, -17, -8,
    -- layer=1 filter=27 channel=23
    9, -15, -4, -6, -21, -21, 14, -15, -6,
    -- layer=1 filter=27 channel=24
    14, 11, 8, 4, -23, -13, -1, -12, -30,
    -- layer=1 filter=27 channel=25
    5, 0, 2, 16, -1, 11, 0, -17, -23,
    -- layer=1 filter=27 channel=26
    -7, 11, -21, -20, -1, -30, 0, -20, -15,
    -- layer=1 filter=27 channel=27
    8, 0, -7, 0, -7, -3, 9, 6, -4,
    -- layer=1 filter=27 channel=28
    -9, 4, -13, 8, 14, -5, -16, -19, 3,
    -- layer=1 filter=27 channel=29
    -4, -4, -2, 6, 13, 21, -23, -6, -10,
    -- layer=1 filter=27 channel=30
    16, -14, -28, 13, 5, -14, 9, 1, 6,
    -- layer=1 filter=27 channel=31
    -11, 6, 12, 4, 6, 6, -16, -9, -3,
    -- layer=1 filter=27 channel=32
    1, 14, -5, -5, -12, -9, 5, 12, 18,
    -- layer=1 filter=27 channel=33
    -4, -8, 11, -25, 3, 4, -6, -17, -10,
    -- layer=1 filter=27 channel=34
    13, 0, -1, -17, 5, -5, 14, -13, 8,
    -- layer=1 filter=27 channel=35
    -13, -21, -3, -18, -12, -18, 1, 0, -6,
    -- layer=1 filter=27 channel=36
    -19, -16, -12, -23, 9, 8, -5, -23, -6,
    -- layer=1 filter=27 channel=37
    -2, 7, -4, -9, -25, -19, -17, -20, -5,
    -- layer=1 filter=27 channel=38
    -11, -3, -6, 0, -7, -21, 10, 6, -13,
    -- layer=1 filter=27 channel=39
    -2, -21, -15, -21, -13, -12, -26, -13, -13,
    -- layer=1 filter=27 channel=40
    -4, 9, -2, -6, -15, -11, 4, -22, 4,
    -- layer=1 filter=27 channel=41
    11, 12, 6, -22, -10, 4, 10, -18, -3,
    -- layer=1 filter=27 channel=42
    -23, 2, -13, -12, -19, -27, -1, -27, -7,
    -- layer=1 filter=27 channel=43
    -6, -8, -16, 16, -31, -10, 7, -6, -20,
    -- layer=1 filter=27 channel=44
    -1, -3, -6, 3, 8, -4, -7, 12, -20,
    -- layer=1 filter=27 channel=45
    -23, -2, 1, -15, -16, -6, -6, -20, 2,
    -- layer=1 filter=27 channel=46
    -20, 4, -21, -3, -22, -22, 5, -24, -5,
    -- layer=1 filter=27 channel=47
    -1, 7, -21, 4, 11, -20, -8, -15, -17,
    -- layer=1 filter=27 channel=48
    -21, -17, -14, -10, 1, 1, -18, -28, -13,
    -- layer=1 filter=27 channel=49
    -27, -17, -13, -5, -12, -17, -11, 2, -22,
    -- layer=1 filter=27 channel=50
    8, -7, -18, -4, 6, -6, -19, -19, 7,
    -- layer=1 filter=27 channel=51
    13, -4, 16, -1, -1, 11, -27, -17, 7,
    -- layer=1 filter=27 channel=52
    0, 0, -23, 17, -3, 6, -1, -15, 6,
    -- layer=1 filter=27 channel=53
    -10, -19, -7, -13, -21, -14, -6, -4, -16,
    -- layer=1 filter=27 channel=54
    -16, 10, -13, 3, -4, -15, 3, -15, 11,
    -- layer=1 filter=27 channel=55
    -1, -13, 13, 8, 1, 17, -9, 1, -17,
    -- layer=1 filter=27 channel=56
    -10, 11, 15, -19, 0, 12, -3, -4, -23,
    -- layer=1 filter=27 channel=57
    10, 16, -7, 8, -9, -9, -6, -1, 17,
    -- layer=1 filter=27 channel=58
    16, -20, -6, 14, 11, -13, -16, 4, -2,
    -- layer=1 filter=27 channel=59
    -21, 13, 18, -8, 19, -4, 11, -8, -10,
    -- layer=1 filter=27 channel=60
    -4, -9, -9, 3, -20, 0, 8, -26, -11,
    -- layer=1 filter=27 channel=61
    -16, -20, 7, -19, 8, 8, 1, -21, 7,
    -- layer=1 filter=27 channel=62
    -1, -11, -1, -20, -11, -2, -10, -6, -20,
    -- layer=1 filter=27 channel=63
    9, 4, -2, 3, -8, -10, 0, -24, -23,
    -- layer=1 filter=28 channel=0
    -20, -2, 7, -1, -24, 4, -13, -2, -2,
    -- layer=1 filter=28 channel=1
    -17, -17, 13, -17, -6, 8, -31, -32, -6,
    -- layer=1 filter=28 channel=2
    -14, -14, -5, -39, -15, 8, -21, -9, 14,
    -- layer=1 filter=28 channel=3
    -21, 11, 18, -20, -1, 16, -24, -9, 2,
    -- layer=1 filter=28 channel=4
    4, -4, -1, 10, 6, -9, 16, 1, -7,
    -- layer=1 filter=28 channel=5
    -31, 20, 30, -14, 6, 0, -13, -2, 6,
    -- layer=1 filter=28 channel=6
    23, 52, 10, 65, 64, 31, 49, 118, 7,
    -- layer=1 filter=28 channel=7
    -10, -2, -19, 10, -4, -16, 0, 16, -3,
    -- layer=1 filter=28 channel=8
    -1, 19, 21, -2, 3, 18, -11, -3, 7,
    -- layer=1 filter=28 channel=9
    -4, 15, 28, -4, -11, 10, -15, 2, 17,
    -- layer=1 filter=28 channel=10
    4, -2, 30, -8, 4, 9, -4, 20, 15,
    -- layer=1 filter=28 channel=11
    16, 13, 3, 6, 17, 17, 20, 1, 25,
    -- layer=1 filter=28 channel=12
    -22, -47, -29, 2, -32, -14, 9, -26, -22,
    -- layer=1 filter=28 channel=13
    0, 23, 28, -21, 9, 14, 3, -19, 28,
    -- layer=1 filter=28 channel=14
    -15, -5, 17, -58, -11, -14, -26, -31, 14,
    -- layer=1 filter=28 channel=15
    -13, -15, 22, -5, 15, 21, -29, 14, 23,
    -- layer=1 filter=28 channel=16
    -12, 2, 23, -19, 23, 29, -24, -14, 10,
    -- layer=1 filter=28 channel=17
    24, -7, -22, 14, -30, -41, 11, -37, -40,
    -- layer=1 filter=28 channel=18
    -20, -18, -56, 6, 5, -44, 40, 19, -43,
    -- layer=1 filter=28 channel=19
    49, 29, -28, 38, 10, -35, 37, 28, -17,
    -- layer=1 filter=28 channel=20
    0, 2, -5, 14, 23, 11, 30, -16, -26,
    -- layer=1 filter=28 channel=21
    -15, 2, -6, 13, 5, 17, 4, -16, 7,
    -- layer=1 filter=28 channel=22
    26, 7, 0, -3, -6, -21, 7, -1, 0,
    -- layer=1 filter=28 channel=23
    9, -2, 2, 5, -15, 7, 0, -10, 8,
    -- layer=1 filter=28 channel=24
    -6, 23, 28, -11, 24, 6, -16, 27, 24,
    -- layer=1 filter=28 channel=25
    30, 11, 25, -3, 2, -12, -10, -25, 28,
    -- layer=1 filter=28 channel=26
    -30, 2, 10, -5, -4, 22, -5, -1, -7,
    -- layer=1 filter=28 channel=27
    4, 39, -4, 6, 32, 15, 44, 50, 13,
    -- layer=1 filter=28 channel=28
    15, 16, 14, -2, 12, 28, 12, -6, 1,
    -- layer=1 filter=28 channel=29
    12, 3, 11, 16, -3, -17, 1, 0, -31,
    -- layer=1 filter=28 channel=30
    -3, -2, 10, -7, 24, 0, -1, 15, -8,
    -- layer=1 filter=28 channel=31
    -17, 0, 18, 6, -17, 14, 9, -15, -12,
    -- layer=1 filter=28 channel=32
    -7, 13, 0, 15, 1, -3, 1, 7, 7,
    -- layer=1 filter=28 channel=33
    10, 9, 3, 45, 40, 29, 31, 40, 20,
    -- layer=1 filter=28 channel=34
    34, 4, -42, 21, -37, -62, 21, -24, -47,
    -- layer=1 filter=28 channel=35
    7, -9, -34, -5, -11, -29, 10, -22, -14,
    -- layer=1 filter=28 channel=36
    13, 0, -29, 19, -11, -15, 28, 22, -11,
    -- layer=1 filter=28 channel=37
    -37, -24, -2, 0, -17, -22, -21, -39, -72,
    -- layer=1 filter=28 channel=38
    -4, 3, 5, -9, -22, -8, -19, 11, -5,
    -- layer=1 filter=28 channel=39
    -8, -21, 0, -5, -24, -2, -39, -19, 0,
    -- layer=1 filter=28 channel=40
    -14, -5, 21, -10, -26, 18, -26, -30, 10,
    -- layer=1 filter=28 channel=41
    4, 2, -9, 18, -11, -26, 0, -20, -7,
    -- layer=1 filter=28 channel=42
    -3, -22, 4, -30, -29, 20, -34, -2, -15,
    -- layer=1 filter=28 channel=43
    -15, 49, 57, -8, 62, 48, 27, 56, 67,
    -- layer=1 filter=28 channel=44
    -10, -3, 4, 12, 13, 6, -9, -3, -6,
    -- layer=1 filter=28 channel=45
    53, 26, 14, 40, 34, 67, 48, 84, 28,
    -- layer=1 filter=28 channel=46
    -29, -56, -5, -3, -38, 0, -15, -46, -49,
    -- layer=1 filter=28 channel=47
    -19, -15, 27, 0, -29, 1, -25, -28, 9,
    -- layer=1 filter=28 channel=48
    -6, -12, 15, -13, -23, 2, -17, -7, 10,
    -- layer=1 filter=28 channel=49
    -16, -12, 11, -2, -22, 6, -40, -42, -11,
    -- layer=1 filter=28 channel=50
    -13, -36, 9, -31, -44, -8, 1, -43, -41,
    -- layer=1 filter=28 channel=51
    1, -32, -3, 8, -19, -24, 14, -26, -22,
    -- layer=1 filter=28 channel=52
    -11, -3, 5, -5, -6, 29, 9, 17, 27,
    -- layer=1 filter=28 channel=53
    -5, 0, 13, -18, 9, 25, -24, -12, 30,
    -- layer=1 filter=28 channel=54
    53, 57, 82, 76, 96, 99, 61, 83, 46,
    -- layer=1 filter=28 channel=55
    19, -25, 11, 7, -41, 11, 8, -29, 5,
    -- layer=1 filter=28 channel=56
    -6, -2, 1, -27, -39, -38, -12, -37, -17,
    -- layer=1 filter=28 channel=57
    -12, -15, -13, -7, 14, -13, 8, 3, 0,
    -- layer=1 filter=28 channel=58
    8, 34, 28, 5, 49, 10, 31, 39, 19,
    -- layer=1 filter=28 channel=59
    30, -2, -13, 28, -3, -15, 24, 8, -4,
    -- layer=1 filter=28 channel=60
    -13, -11, 25, 0, -6, 10, -31, -23, 26,
    -- layer=1 filter=28 channel=61
    43, 12, -25, 5, -7, -7, 8, -9, -16,
    -- layer=1 filter=28 channel=62
    12, -7, -8, 0, -24, 10, 10, -17, 20,
    -- layer=1 filter=28 channel=63
    -34, 95, 80, -2, 71, 82, 22, 91, 99,
    -- layer=1 filter=29 channel=0
    -16, 11, -7, 6, 9, -1, -3, 5, 9,
    -- layer=1 filter=29 channel=1
    16, 14, -3, -5, 6, -13, 0, 15, -15,
    -- layer=1 filter=29 channel=2
    -34, -6, -17, -39, -15, -4, 5, 7, 9,
    -- layer=1 filter=29 channel=3
    -6, -11, -17, -38, -21, -25, -3, -29, 7,
    -- layer=1 filter=29 channel=4
    4, 3, -16, -12, 4, -13, 2, -15, -15,
    -- layer=1 filter=29 channel=5
    -6, -20, -11, -34, -17, -19, -24, -6, 0,
    -- layer=1 filter=29 channel=6
    21, 28, 37, 9, 20, -4, 55, 78, 30,
    -- layer=1 filter=29 channel=7
    16, 6, -1, 4, -20, 16, 0, 3, -4,
    -- layer=1 filter=29 channel=8
    -7, 3, 10, -17, -9, 11, 0, 16, 14,
    -- layer=1 filter=29 channel=9
    -33, -34, -29, -26, -26, -26, -30, -13, 1,
    -- layer=1 filter=29 channel=10
    -7, 15, -13, -12, -20, -15, -5, 6, -1,
    -- layer=1 filter=29 channel=11
    -10, -18, -5, -31, -18, -8, -10, 10, -2,
    -- layer=1 filter=29 channel=12
    -43, -40, -61, -40, -47, -63, -52, -41, -53,
    -- layer=1 filter=29 channel=13
    -35, -13, -15, -42, -51, -48, -22, -36, 1,
    -- layer=1 filter=29 channel=14
    -13, -15, 4, -38, -18, -34, -38, -76, -68,
    -- layer=1 filter=29 channel=15
    9, -14, -12, 19, 19, 13, -5, -8, 18,
    -- layer=1 filter=29 channel=16
    0, -26, -10, 18, -18, 23, 2, 1, -8,
    -- layer=1 filter=29 channel=17
    15, 19, 27, 0, 6, 13, -14, 0, -21,
    -- layer=1 filter=29 channel=18
    -4, -22, 0, -28, -36, -23, -6, -25, -41,
    -- layer=1 filter=29 channel=19
    44, 39, 51, 65, 57, 40, 50, 53, 37,
    -- layer=1 filter=29 channel=20
    -12, -22, -6, -3, -4, -22, -6, -1, -27,
    -- layer=1 filter=29 channel=21
    3, 4, 17, 10, -15, -3, -7, 0, 16,
    -- layer=1 filter=29 channel=22
    12, 3, -8, 11, 7, -2, -3, 28, -14,
    -- layer=1 filter=29 channel=23
    -9, -10, -19, -4, -18, -6, -11, -28, 6,
    -- layer=1 filter=29 channel=24
    8, 6, 4, 16, 21, 18, 11, 8, 17,
    -- layer=1 filter=29 channel=25
    39, 25, 46, -16, -5, 0, 17, 14, 12,
    -- layer=1 filter=29 channel=26
    -10, 8, -9, -27, 7, 10, 6, -20, 10,
    -- layer=1 filter=29 channel=27
    -21, -23, -6, -6, -2, 23, 18, 0, 11,
    -- layer=1 filter=29 channel=28
    -36, -31, -17, -9, -34, -32, -16, -33, -24,
    -- layer=1 filter=29 channel=29
    0, -3, 5, -15, 10, 0, 6, -3, 0,
    -- layer=1 filter=29 channel=30
    -8, 1, -15, 15, 0, 0, 0, -17, 2,
    -- layer=1 filter=29 channel=31
    -5, -17, 2, -16, -30, -33, 16, 17, 9,
    -- layer=1 filter=29 channel=32
    -3, -5, -14, 8, -9, 17, -7, 15, -2,
    -- layer=1 filter=29 channel=33
    -14, -13, 5, 26, 0, -16, 31, 2, -3,
    -- layer=1 filter=29 channel=34
    6, 6, 17, -21, -2, -9, -21, -27, -41,
    -- layer=1 filter=29 channel=35
    3, 12, 33, -5, 8, -21, 10, 25, -18,
    -- layer=1 filter=29 channel=36
    -15, -20, -23, -19, -19, -15, -10, -3, 0,
    -- layer=1 filter=29 channel=37
    10, -15, 20, 17, 3, -8, 22, 0, 0,
    -- layer=1 filter=29 channel=38
    11, -2, -2, -11, 4, 9, -4, -18, -7,
    -- layer=1 filter=29 channel=39
    0, -3, -7, -3, 11, -13, -17, -21, 14,
    -- layer=1 filter=29 channel=40
    -4, -33, -15, -8, -21, -16, -17, -7, -14,
    -- layer=1 filter=29 channel=41
    0, 17, 0, -11, -14, 6, 19, -4, -15,
    -- layer=1 filter=29 channel=42
    23, -1, 14, 17, 18, 1, 5, -16, 10,
    -- layer=1 filter=29 channel=43
    15, -4, -7, 5, 28, -8, 27, 50, 25,
    -- layer=1 filter=29 channel=44
    0, 13, 0, -20, 7, 0, -14, -9, -1,
    -- layer=1 filter=29 channel=45
    3, 29, 32, 29, 8, 19, 39, 49, 20,
    -- layer=1 filter=29 channel=46
    -15, -3, 4, 17, 0, 4, 19, -12, 7,
    -- layer=1 filter=29 channel=47
    10, 2, -5, -1, 0, 13, -4, -28, -8,
    -- layer=1 filter=29 channel=48
    15, -4, 4, 1, -18, 3, -21, -14, 6,
    -- layer=1 filter=29 channel=49
    -7, 2, -16, -9, 1, -17, -16, -9, -1,
    -- layer=1 filter=29 channel=50
    -3, -59, -15, -38, -65, -33, 4, 19, -1,
    -- layer=1 filter=29 channel=51
    -2, -5, -8, 5, -8, 1, 10, 11, -18,
    -- layer=1 filter=29 channel=52
    -23, 0, -2, -24, -21, 0, 14, -26, 12,
    -- layer=1 filter=29 channel=53
    -1, -6, -17, -21, -26, 8, -36, -3, -5,
    -- layer=1 filter=29 channel=54
    -25, 8, -18, 3, -7, -15, 51, 28, -10,
    -- layer=1 filter=29 channel=55
    -24, -10, -30, -30, -43, -40, -33, -13, -21,
    -- layer=1 filter=29 channel=56
    6, -5, 13, -35, -34, -24, -4, -7, -17,
    -- layer=1 filter=29 channel=57
    -5, -1, 15, 0, -13, 3, -18, 11, 4,
    -- layer=1 filter=29 channel=58
    1, 13, 0, 3, 25, 23, 5, 19, 14,
    -- layer=1 filter=29 channel=59
    38, 28, 29, 40, 35, 34, 38, 31, 10,
    -- layer=1 filter=29 channel=60
    11, 5, 4, 0, -13, 11, -19, -2, 7,
    -- layer=1 filter=29 channel=61
    -6, -2, 10, 0, 37, 19, 28, 35, 14,
    -- layer=1 filter=29 channel=62
    26, 42, 28, 38, 22, 19, 3, 10, 33,
    -- layer=1 filter=29 channel=63
    8, 19, 10, 11, 27, 8, 48, 42, 69,
    -- layer=1 filter=30 channel=0
    -4, 2, 10, 16, -17, -3, 22, 10, 0,
    -- layer=1 filter=30 channel=1
    15, 10, -6, 36, -1, 17, 48, 11, 19,
    -- layer=1 filter=30 channel=2
    2, 14, -26, 12, -12, 17, 17, 16, 8,
    -- layer=1 filter=30 channel=3
    -3, -3, 9, 1, -10, 4, -14, 7, 7,
    -- layer=1 filter=30 channel=4
    13, 8, 13, 7, 5, -15, 12, 16, 13,
    -- layer=1 filter=30 channel=5
    10, 0, 12, 4, 7, -9, -15, -24, -9,
    -- layer=1 filter=30 channel=6
    9, -32, -15, 0, -22, 6, 10, -47, -25,
    -- layer=1 filter=30 channel=7
    -7, 9, -17, -17, 3, 10, -12, -15, 5,
    -- layer=1 filter=30 channel=8
    17, 8, 15, -14, -16, -14, 13, -11, -16,
    -- layer=1 filter=30 channel=9
    -5, -10, -7, -28, -16, -11, -26, 1, -13,
    -- layer=1 filter=30 channel=10
    20, -11, -19, 20, -16, -17, 17, 11, -14,
    -- layer=1 filter=30 channel=11
    10, 21, 15, -30, -26, -4, -38, 6, 10,
    -- layer=1 filter=30 channel=12
    -58, -54, -60, -21, -39, -54, -66, -55, -45,
    -- layer=1 filter=30 channel=13
    -7, 14, 24, -10, 5, -3, -10, -4, -22,
    -- layer=1 filter=30 channel=14
    -32, -52, -4, -75, -29, -13, -31, -39, 7,
    -- layer=1 filter=30 channel=15
    -6, -1, -19, -31, -6, -21, -14, -25, -25,
    -- layer=1 filter=30 channel=16
    -24, -3, -12, -24, -33, 1, -22, 0, -32,
    -- layer=1 filter=30 channel=17
    9, -11, 34, -9, -22, -9, -12, -34, -2,
    -- layer=1 filter=30 channel=18
    -34, -24, 16, -43, -13, 12, -32, 13, 28,
    -- layer=1 filter=30 channel=19
    -26, -52, 17, -11, 15, -15, -6, -5, 29,
    -- layer=1 filter=30 channel=20
    -6, -17, 9, 0, -10, -22, 8, -11, 15,
    -- layer=1 filter=30 channel=21
    15, -14, 6, 0, 17, -5, 11, 15, 11,
    -- layer=1 filter=30 channel=22
    11, -24, 0, 7, 23, -15, 24, 25, 24,
    -- layer=1 filter=30 channel=23
    -3, 4, 19, -9, 4, -4, 4, -13, 4,
    -- layer=1 filter=30 channel=24
    -4, -14, 23, -52, -21, -17, -39, -45, -34,
    -- layer=1 filter=30 channel=25
    -16, 1, 25, -13, -17, -29, -43, -40, 1,
    -- layer=1 filter=30 channel=26
    21, -11, 0, 12, 18, -2, 12, -8, -11,
    -- layer=1 filter=30 channel=27
    -49, -36, -4, -48, -32, -9, -25, -39, -10,
    -- layer=1 filter=30 channel=28
    -21, -4, 37, -8, -24, -1, -19, -25, -9,
    -- layer=1 filter=30 channel=29
    -8, -13, -3, 22, -3, -11, 1, -11, 1,
    -- layer=1 filter=30 channel=30
    -26, 2, -14, -38, -9, -20, -9, 0, -9,
    -- layer=1 filter=30 channel=31
    -4, 17, 9, -1, 5, -1, -12, 16, 8,
    -- layer=1 filter=30 channel=32
    11, -14, -8, 4, 17, 13, 6, -19, -4,
    -- layer=1 filter=30 channel=33
    18, -16, 7, 14, -27, 5, 15, 5, 6,
    -- layer=1 filter=30 channel=34
    15, 13, 14, 24, -23, 18, -21, -48, 3,
    -- layer=1 filter=30 channel=35
    2, -22, 7, -15, -2, 2, -20, -24, -20,
    -- layer=1 filter=30 channel=36
    -6, 7, -13, -3, -1, -5, 23, -2, -19,
    -- layer=1 filter=30 channel=37
    -31, -18, -24, 18, -28, -24, -7, 3, 8,
    -- layer=1 filter=30 channel=38
    17, 14, -15, 11, 6, -11, 26, 3, 17,
    -- layer=1 filter=30 channel=39
    15, -13, -1, 5, -8, 7, 32, 10, -6,
    -- layer=1 filter=30 channel=40
    17, 3, 16, 14, 0, 9, 16, -9, -2,
    -- layer=1 filter=30 channel=41
    23, 13, -8, 29, 20, 3, 27, 29, 9,
    -- layer=1 filter=30 channel=42
    21, 1, 1, 13, 17, -12, 28, 2, 0,
    -- layer=1 filter=30 channel=43
    -7, -17, -16, -8, -28, -29, -43, -64, -11,
    -- layer=1 filter=30 channel=44
    19, 20, 7, -5, -10, -6, -12, -29, 5,
    -- layer=1 filter=30 channel=45
    -13, -12, 9, -2, -42, 20, -23, -24, -14,
    -- layer=1 filter=30 channel=46
    23, -3, 3, 38, -33, 28, 32, 3, 29,
    -- layer=1 filter=30 channel=47
    -10, 6, -4, -4, -9, -8, -9, -5, 15,
    -- layer=1 filter=30 channel=48
    23, -3, 20, 0, 11, -14, 6, -10, 5,
    -- layer=1 filter=30 channel=49
    8, 8, 0, 7, 17, -2, 12, 7, -5,
    -- layer=1 filter=30 channel=50
    -23, -58, -30, 3, -38, -9, -2, -53, 15,
    -- layer=1 filter=30 channel=51
    4, -9, 2, 17, -4, 11, 22, 28, 15,
    -- layer=1 filter=30 channel=52
    4, 13, -5, -7, -10, 5, 20, 2, 0,
    -- layer=1 filter=30 channel=53
    -11, 14, 22, -26, -6, -8, 3, -11, -7,
    -- layer=1 filter=30 channel=54
    -6, -30, -2, 2, -41, -14, 6, -24, -14,
    -- layer=1 filter=30 channel=55
    -9, 0, -15, 5, 2, -9, 7, 10, -4,
    -- layer=1 filter=30 channel=56
    3, -17, 11, -14, -18, -10, -25, -48, -5,
    -- layer=1 filter=30 channel=57
    9, -11, 10, 7, -5, 7, 13, 2, 8,
    -- layer=1 filter=30 channel=58
    9, -10, -18, 6, 5, -3, 15, 9, -7,
    -- layer=1 filter=30 channel=59
    -1, -10, -12, 11, 27, 20, 19, -1, 20,
    -- layer=1 filter=30 channel=60
    17, -12, -8, -9, 13, -22, 17, -10, 5,
    -- layer=1 filter=30 channel=61
    39, -5, -8, 34, 25, 11, 46, 25, 32,
    -- layer=1 filter=30 channel=62
    20, 3, -3, 19, -3, -2, 26, 0, 13,
    -- layer=1 filter=30 channel=63
    -10, -48, -21, -38, -59, -68, -45, -79, -15,
    -- layer=1 filter=31 channel=0
    5, 5, -13, -4, 0, -18, -15, 9, 8,
    -- layer=1 filter=31 channel=1
    22, -2, -14, -6, -16, 0, -20, -15, -26,
    -- layer=1 filter=31 channel=2
    -14, -30, -17, -18, -28, -16, -46, -31, -2,
    -- layer=1 filter=31 channel=3
    -18, -6, -17, 9, 16, -4, -1, 3, -5,
    -- layer=1 filter=31 channel=4
    0, -4, -15, -5, -9, 11, 15, -12, -11,
    -- layer=1 filter=31 channel=5
    -4, -23, -4, -3, -9, 0, -22, -3, -3,
    -- layer=1 filter=31 channel=6
    23, 12, -6, 2, -13, -1, 50, 1, -5,
    -- layer=1 filter=31 channel=7
    -3, -17, -15, 9, 10, -11, 8, -16, -17,
    -- layer=1 filter=31 channel=8
    -1, -10, 3, 8, -11, 0, -1, 12, 17,
    -- layer=1 filter=31 channel=9
    -5, 4, -18, 5, -10, -15, 18, 9, 17,
    -- layer=1 filter=31 channel=10
    13, -9, 9, 1, -14, -18, 6, -16, 8,
    -- layer=1 filter=31 channel=11
    3, -20, 1, -6, -16, 9, -1, -1, -6,
    -- layer=1 filter=31 channel=12
    -43, -38, -40, -22, -33, -33, -18, -7, -2,
    -- layer=1 filter=31 channel=13
    -14, -22, -15, 0, -9, -8, 11, 18, -12,
    -- layer=1 filter=31 channel=14
    -22, -14, -36, 12, -20, -11, -95, -76, -61,
    -- layer=1 filter=31 channel=15
    11, -16, 6, 8, 9, 22, -15, 26, 27,
    -- layer=1 filter=31 channel=16
    1, -4, -4, 16, 2, 10, -20, 0, 13,
    -- layer=1 filter=31 channel=17
    14, 13, 8, -2, 1, -2, 7, 12, 1,
    -- layer=1 filter=31 channel=18
    12, -12, 0, 12, 5, -3, 3, 8, 21,
    -- layer=1 filter=31 channel=19
    53, 62, 75, 52, 63, 86, 45, 54, 56,
    -- layer=1 filter=31 channel=20
    -17, 7, -10, 9, -3, 1, 1, -6, 4,
    -- layer=1 filter=31 channel=21
    6, 9, 8, 4, 18, -5, -5, -11, -17,
    -- layer=1 filter=31 channel=22
    -28, -6, -1, -10, -30, 5, -2, -17, -7,
    -- layer=1 filter=31 channel=23
    11, -8, -2, -9, -4, 6, 5, -7, -11,
    -- layer=1 filter=31 channel=24
    -30, 6, -4, 28, 22, -1, 23, 32, 15,
    -- layer=1 filter=31 channel=25
    13, 34, 30, -4, 31, 50, 16, 36, 7,
    -- layer=1 filter=31 channel=26
    -10, 10, 7, 14, 9, -20, 10, 4, -19,
    -- layer=1 filter=31 channel=27
    8, 46, 37, 27, 1, 61, -19, -5, 24,
    -- layer=1 filter=31 channel=28
    -34, -37, -21, 0, -3, 13, -5, -3, 16,
    -- layer=1 filter=31 channel=29
    9, 2, 15, -6, 32, 15, 2, 17, 26,
    -- layer=1 filter=31 channel=30
    0, 16, 6, -7, 35, 32, 3, 26, 16,
    -- layer=1 filter=31 channel=31
    22, -13, -13, 9, 19, 6, -1, 4, 7,
    -- layer=1 filter=31 channel=32
    1, -2, 10, 13, -6, 14, 7, 3, -9,
    -- layer=1 filter=31 channel=33
    14, -7, -8, 11, -24, -26, 34, 9, -19,
    -- layer=1 filter=31 channel=34
    16, -13, -16, -8, 18, -35, -2, 5, -20,
    -- layer=1 filter=31 channel=35
    12, 22, -12, 1, 33, 28, 23, 45, 6,
    -- layer=1 filter=31 channel=36
    20, 4, 21, -9, 20, 8, 3, 17, 7,
    -- layer=1 filter=31 channel=37
    31, 28, 30, -27, -3, 31, 7, -9, -4,
    -- layer=1 filter=31 channel=38
    -21, -2, -22, -5, -22, -30, -32, -13, -16,
    -- layer=1 filter=31 channel=39
    -14, -7, 13, -12, 4, -11, 5, -16, -4,
    -- layer=1 filter=31 channel=40
    -18, -23, -21, 11, 10, -10, 0, -25, -12,
    -- layer=1 filter=31 channel=41
    6, 7, 6, 10, 5, 0, 20, -16, -21,
    -- layer=1 filter=31 channel=42
    -6, 7, -4, 28, 8, 8, 2, 19, 21,
    -- layer=1 filter=31 channel=43
    -19, -11, 5, -6, 7, 10, -29, 18, 13,
    -- layer=1 filter=31 channel=44
    -5, -13, 0, 29, 7, -2, 35, -5, 2,
    -- layer=1 filter=31 channel=45
    47, 24, 23, 23, -9, -3, 46, 11, -8,
    -- layer=1 filter=31 channel=46
    54, 11, 33, 0, 13, 41, 7, -19, 21,
    -- layer=1 filter=31 channel=47
    16, 10, 16, 26, 23, -10, 14, -15, 20,
    -- layer=1 filter=31 channel=48
    -2, -8, 4, 16, -5, 14, -3, 8, -19,
    -- layer=1 filter=31 channel=49
    18, 14, 13, 11, -13, -17, -4, -5, -3,
    -- layer=1 filter=31 channel=50
    32, 25, 34, 58, 29, 38, -1, 6, 16,
    -- layer=1 filter=31 channel=51
    -11, 8, -9, -21, -34, -7, -27, 1, -5,
    -- layer=1 filter=31 channel=52
    -11, -9, -4, -11, 0, 10, 1, -23, 8,
    -- layer=1 filter=31 channel=53
    -19, -13, -23, 3, 1, -14, 2, 5, 4,
    -- layer=1 filter=31 channel=54
    19, -18, -11, 14, -30, 22, 62, -16, -2,
    -- layer=1 filter=31 channel=55
    -28, -19, -26, -11, -36, -3, -16, -23, 0,
    -- layer=1 filter=31 channel=56
    1, -11, -2, 8, 12, 20, -22, 21, 6,
    -- layer=1 filter=31 channel=57
    8, 9, 5, 11, 13, 12, -6, 2, 6,
    -- layer=1 filter=31 channel=58
    -7, -3, 8, -16, 23, -11, 9, -1, 7,
    -- layer=1 filter=31 channel=59
    -4, 21, 4, 24, 12, 39, 38, 33, 37,
    -- layer=1 filter=31 channel=60
    13, -13, -4, 23, 21, -8, 2, -16, 2,
    -- layer=1 filter=31 channel=61
    0, 16, 8, -10, 0, -1, 3, 0, 4,
    -- layer=1 filter=31 channel=62
    24, 46, 37, 44, 45, 52, 36, 20, 28,
    -- layer=1 filter=31 channel=63
    14, 6, -26, -4, -5, -35, -27, -1, -1,
    -- layer=1 filter=32 channel=0
    3, -2, -9, 3, 10, -9, -8, -14, 3,
    -- layer=1 filter=32 channel=1
    -10, -3, -15, -4, -2, -12, -7, 13, -20,
    -- layer=1 filter=32 channel=2
    9, 3, -17, -14, -9, -16, -5, -15, -18,
    -- layer=1 filter=32 channel=3
    1, -5, 9, 9, 1, -17, -9, 11, -14,
    -- layer=1 filter=32 channel=4
    13, -14, 13, 0, 14, 0, 9, -12, -11,
    -- layer=1 filter=32 channel=5
    -5, -9, 4, 16, 4, 4, -8, -15, 13,
    -- layer=1 filter=32 channel=6
    0, 16, 1, 18, -9, 17, -7, 10, 13,
    -- layer=1 filter=32 channel=7
    2, 17, -7, 0, 3, 2, 4, -10, 5,
    -- layer=1 filter=32 channel=8
    -13, -1, -9, -7, 12, 6, 12, 6, 18,
    -- layer=1 filter=32 channel=9
    -3, -16, -6, -6, -18, -1, -9, -9, 2,
    -- layer=1 filter=32 channel=10
    -2, 5, -9, -3, 4, -14, 4, 10, 13,
    -- layer=1 filter=32 channel=11
    3, -8, 1, -6, 0, 7, -24, -15, -23,
    -- layer=1 filter=32 channel=12
    -13, 7, -29, -18, -17, -5, -20, -1, 8,
    -- layer=1 filter=32 channel=13
    -9, -2, 13, 14, 5, -20, -15, 11, -12,
    -- layer=1 filter=32 channel=14
    -9, 0, 0, -15, 0, 5, -2, -25, 14,
    -- layer=1 filter=32 channel=15
    -12, -2, -14, -9, -18, -1, 10, -19, 2,
    -- layer=1 filter=32 channel=16
    -7, -2, 8, -2, -3, 9, -12, -8, -24,
    -- layer=1 filter=32 channel=17
    -6, -11, 0, -11, 0, -12, -15, 10, 0,
    -- layer=1 filter=32 channel=18
    -4, 21, -9, -10, 2, 15, -23, -5, 19,
    -- layer=1 filter=32 channel=19
    3, -9, 3, -8, 21, 1, -6, -4, 5,
    -- layer=1 filter=32 channel=20
    7, 7, -18, -17, -10, 5, -3, 12, -21,
    -- layer=1 filter=32 channel=21
    7, -14, 10, -14, 7, 8, -1, 9, 14,
    -- layer=1 filter=32 channel=22
    -10, -11, 3, -4, -18, -10, -11, -8, -11,
    -- layer=1 filter=32 channel=23
    8, 17, -16, 2, -13, 9, -18, 2, -6,
    -- layer=1 filter=32 channel=24
    9, -9, -12, -12, -7, 2, -21, 4, 7,
    -- layer=1 filter=32 channel=25
    14, -26, 8, 0, 1, -6, -13, -15, -9,
    -- layer=1 filter=32 channel=26
    2, -19, 13, -20, 1, -19, 13, -12, -14,
    -- layer=1 filter=32 channel=27
    2, 5, 1, 7, 21, -5, -9, 13, 5,
    -- layer=1 filter=32 channel=28
    -12, -3, -8, -6, -20, 4, -10, -12, -15,
    -- layer=1 filter=32 channel=29
    4, 7, 8, 10, -18, -20, 15, 4, 4,
    -- layer=1 filter=32 channel=30
    -6, -21, -20, -4, 0, -12, 15, -6, 4,
    -- layer=1 filter=32 channel=31
    -10, -2, 1, 15, -10, -5, -21, 5, -3,
    -- layer=1 filter=32 channel=32
    -6, 12, 0, -12, 0, -10, -17, 16, -10,
    -- layer=1 filter=32 channel=33
    9, -18, -7, -20, 13, -19, 5, -18, -4,
    -- layer=1 filter=32 channel=34
    -18, 14, -22, 17, 8, -18, -10, 8, -12,
    -- layer=1 filter=32 channel=35
    -18, -4, -8, 12, -11, -12, 12, 0, -22,
    -- layer=1 filter=32 channel=36
    -16, -9, 5, -19, 0, 12, 13, -12, 0,
    -- layer=1 filter=32 channel=37
    -15, 9, -8, 7, 6, 6, 22, 7, 6,
    -- layer=1 filter=32 channel=38
    -1, -17, 0, 6, 17, -19, 9, -13, -7,
    -- layer=1 filter=32 channel=39
    -16, -22, -6, 9, 4, -9, -1, -21, -13,
    -- layer=1 filter=32 channel=40
    -10, -7, 5, -18, -2, -1, 0, 4, -9,
    -- layer=1 filter=32 channel=41
    -27, -9, -24, 8, -19, -13, 6, -20, -2,
    -- layer=1 filter=32 channel=42
    -9, 9, -1, 13, -3, -3, 12, -6, 6,
    -- layer=1 filter=32 channel=43
    11, -18, 2, -10, -9, 8, 5, 2, 0,
    -- layer=1 filter=32 channel=44
    10, 12, 3, -14, 0, -3, -3, 0, -20,
    -- layer=1 filter=32 channel=45
    0, 22, -16, -15, -7, 16, 14, -13, 12,
    -- layer=1 filter=32 channel=46
    -11, 2, 1, -3, -9, 3, 6, 2, -4,
    -- layer=1 filter=32 channel=47
    6, 5, -13, 5, -16, -10, 5, -19, 0,
    -- layer=1 filter=32 channel=48
    -18, 2, -21, 6, 2, 12, 0, 7, 8,
    -- layer=1 filter=32 channel=49
    1, 11, -16, -5, 4, -16, -6, 7, -20,
    -- layer=1 filter=32 channel=50
    -1, -12, -25, 13, 0, 13, 19, 5, -1,
    -- layer=1 filter=32 channel=51
    -6, -2, 3, 13, 8, 13, 3, -2, -11,
    -- layer=1 filter=32 channel=52
    -16, -8, 0, 1, -9, -18, 0, 3, -7,
    -- layer=1 filter=32 channel=53
    0, -5, 6, 6, 0, 8, 0, -17, 5,
    -- layer=1 filter=32 channel=54
    -14, 2, -10, -3, 6, 4, 29, -15, -18,
    -- layer=1 filter=32 channel=55
    -11, 0, -4, -18, 12, 7, -18, -1, -23,
    -- layer=1 filter=32 channel=56
    1, -23, -28, 1, -5, -9, 4, 6, 0,
    -- layer=1 filter=32 channel=57
    10, 14, 0, -9, -14, 13, -12, -4, 1,
    -- layer=1 filter=32 channel=58
    -14, -20, -17, -25, 9, -10, 3, 2, -2,
    -- layer=1 filter=32 channel=59
    9, -7, 4, -4, -2, 2, -1, 8, -13,
    -- layer=1 filter=32 channel=60
    -10, 7, 1, 12, 8, 4, -13, 2, 7,
    -- layer=1 filter=32 channel=61
    -31, -8, -18, -17, 3, 7, -17, -10, 0,
    -- layer=1 filter=32 channel=62
    0, -17, -17, -15, 3, -12, -8, 0, 9,
    -- layer=1 filter=32 channel=63
    -20, 3, 19, -16, -2, 18, -16, -11, -23,
    -- layer=1 filter=33 channel=0
    13, -1, 5, 7, -13, -31, 14, -9, -23,
    -- layer=1 filter=33 channel=1
    -6, 7, 17, 0, -7, -6, -9, -14, -12,
    -- layer=1 filter=33 channel=2
    -34, -7, -17, -19, 0, -10, -7, -18, 13,
    -- layer=1 filter=33 channel=3
    18, -37, -52, 29, -11, -30, 14, -30, -21,
    -- layer=1 filter=33 channel=4
    13, 9, -15, -15, -16, 13, 17, 17, 1,
    -- layer=1 filter=33 channel=5
    27, -37, -41, 21, -36, -60, 32, -39, -46,
    -- layer=1 filter=33 channel=6
    29, 68, 35, 30, 42, 46, 59, 69, 65,
    -- layer=1 filter=33 channel=7
    1, 0, 1, -12, -9, 10, -9, 0, 0,
    -- layer=1 filter=33 channel=8
    8, -5, -15, 9, -15, 5, -12, 2, -8,
    -- layer=1 filter=33 channel=9
    27, -16, -57, 21, 0, -39, 46, 10, -12,
    -- layer=1 filter=33 channel=10
    9, -46, -9, -7, -49, -31, 8, -24, -47,
    -- layer=1 filter=33 channel=11
    49, 11, -37, 27, -13, -43, 33, 8, -3,
    -- layer=1 filter=33 channel=12
    -35, -22, 31, -20, 8, 25, -6, 7, 2,
    -- layer=1 filter=33 channel=13
    26, 6, -35, 22, -2, -63, 72, -8, -27,
    -- layer=1 filter=33 channel=14
    -65, -23, 19, -88, -40, -39, -48, -26, -21,
    -- layer=1 filter=33 channel=15
    34, -16, -42, 15, -15, -53, 44, -20, -47,
    -- layer=1 filter=33 channel=16
    46, -18, -50, 27, -19, -61, 23, -19, -23,
    -- layer=1 filter=33 channel=17
    28, 24, 9, 0, -48, -31, -11, -1, -13,
    -- layer=1 filter=33 channel=18
    -15, 5, 32, 15, 10, 42, 1, 21, 55,
    -- layer=1 filter=33 channel=19
    -17, 12, 28, -25, -6, 28, -10, 29, 27,
    -- layer=1 filter=33 channel=20
    -8, 7, 15, 0, 11, 17, 1, 31, 14,
    -- layer=1 filter=33 channel=21
    2, -16, 14, -14, -4, -11, 3, 0, 15,
    -- layer=1 filter=33 channel=22
    -20, 7, 18, -32, 0, 25, -12, 3, 1,
    -- layer=1 filter=33 channel=23
    54, 1, -32, 61, 24, -19, 19, 1, -17,
    -- layer=1 filter=33 channel=24
    24, 11, -17, 49, -14, -20, 55, 2, -8,
    -- layer=1 filter=33 channel=25
    6, -7, -7, -29, -50, -29, -9, -15, -18,
    -- layer=1 filter=33 channel=26
    14, -7, -46, 21, -21, -51, 38, 8, -40,
    -- layer=1 filter=33 channel=27
    -18, -32, -17, -41, -38, 8, -11, -13, 4,
    -- layer=1 filter=33 channel=28
    29, -21, -53, 33, -20, -41, 37, 11, -8,
    -- layer=1 filter=33 channel=29
    -14, 12, 3, 1, 23, 27, 10, 23, 38,
    -- layer=1 filter=33 channel=30
    21, -6, -36, 12, -27, -37, 24, 4, -24,
    -- layer=1 filter=33 channel=31
    63, 16, -37, 57, 2, -44, 52, 19, -18,
    -- layer=1 filter=33 channel=32
    -7, 9, -14, -9, 8, 18, -9, -2, 0,
    -- layer=1 filter=33 channel=33
    7, 4, -15, 5, 7, 0, 17, -1, 0,
    -- layer=1 filter=33 channel=34
    8, 15, -37, 22, -35, -47, -8, -5, -35,
    -- layer=1 filter=33 channel=35
    11, 4, -9, -2, -49, -21, -2, -24, -17,
    -- layer=1 filter=33 channel=36
    -23, -11, 0, -13, -8, 17, 0, 14, 39,
    -- layer=1 filter=33 channel=37
    20, 1, -32, -2, -24, -22, -36, -9, -16,
    -- layer=1 filter=33 channel=38
    -12, 8, -5, -13, 15, 5, -12, 11, 12,
    -- layer=1 filter=33 channel=39
    -9, 5, -12, 16, 13, -12, -7, -7, -17,
    -- layer=1 filter=33 channel=40
    51, 23, -15, 19, -12, -31, 12, 19, -35,
    -- layer=1 filter=33 channel=41
    11, 18, 24, -10, 34, -1, -4, 21, 14,
    -- layer=1 filter=33 channel=42
    29, -14, -12, 15, -15, -9, 0, -3, -40,
    -- layer=1 filter=33 channel=43
    -49, -91, -40, -51, -114, -57, -3, -73, -33,
    -- layer=1 filter=33 channel=44
    65, 6, -37, 57, 12, -38, 40, 4, -20,
    -- layer=1 filter=33 channel=45
    60, 59, 25, 64, 56, 14, 60, 47, 32,
    -- layer=1 filter=33 channel=46
    17, -35, -71, -20, -24, -43, -30, -26, 5,
    -- layer=1 filter=33 channel=47
    54, 9, -28, 15, 5, -52, 16, 8, -41,
    -- layer=1 filter=33 channel=48
    16, -15, -10, 35, 2, -23, 16, 0, -15,
    -- layer=1 filter=33 channel=49
    33, 2, -25, 29, -12, -20, -9, 9, -13,
    -- layer=1 filter=33 channel=50
    20, -17, -124, -11, -55, -103, -41, -30, -13,
    -- layer=1 filter=33 channel=51
    -3, 29, 12, 11, 29, -4, 2, -2, 23,
    -- layer=1 filter=33 channel=52
    15, -18, -26, 23, -23, -19, 18, -15, -10,
    -- layer=1 filter=33 channel=53
    35, -25, -43, 24, -27, -39, 40, -34, -42,
    -- layer=1 filter=33 channel=54
    58, 72, -9, 49, 53, -2, 66, 49, 25,
    -- layer=1 filter=33 channel=55
    6, 17, -20, 8, 27, -6, 12, -2, 2,
    -- layer=1 filter=33 channel=56
    -13, -4, -19, -40, -57, -73, -38, -55, -38,
    -- layer=1 filter=33 channel=57
    -5, 16, -15, -9, 16, -7, 8, 13, 0,
    -- layer=1 filter=33 channel=58
    -59, -43, -14, -43, -56, -37, -13, -23, -27,
    -- layer=1 filter=33 channel=59
    17, 6, -1, -15, 0, 9, 9, 18, 3,
    -- layer=1 filter=33 channel=60
    42, -17, -43, 48, -20, -48, 40, -7, -33,
    -- layer=1 filter=33 channel=61
    17, 25, 16, 0, 29, 27, -9, -2, 29,
    -- layer=1 filter=33 channel=62
    29, 11, 2, 12, 19, 10, 23, 2, -7,
    -- layer=1 filter=33 channel=63
    -23, -92, -84, -27, -101, -90, -15, -110, -58,
    -- layer=1 filter=34 channel=0
    10, -16, 12, 9, 1, 11, -13, 13, 0,
    -- layer=1 filter=34 channel=1
    -15, 8, -7, 23, 5, 3, 16, 3, -2,
    -- layer=1 filter=34 channel=2
    -21, -11, -3, 24, 20, 0, 31, 9, 34,
    -- layer=1 filter=34 channel=3
    7, 4, 16, -4, -15, -3, -9, -8, 16,
    -- layer=1 filter=34 channel=4
    -14, 1, 18, 17, -17, 0, 0, -19, -8,
    -- layer=1 filter=34 channel=5
    2, 4, 22, -14, -2, 6, -9, 0, 2,
    -- layer=1 filter=34 channel=6
    -3, -32, -71, -57, -56, -72, -64, -141, -73,
    -- layer=1 filter=34 channel=7
    -5, 13, -22, -11, 7, -1, 0, -9, 17,
    -- layer=1 filter=34 channel=8
    -10, 17, -5, -20, 0, -16, -4, 4, -14,
    -- layer=1 filter=34 channel=9
    15, 6, -9, 3, 4, -3, 5, -10, 23,
    -- layer=1 filter=34 channel=10
    -14, 5, -10, 9, -19, 4, 3, 4, -10,
    -- layer=1 filter=34 channel=11
    16, 16, 1, 5, -17, 3, -21, 1, 18,
    -- layer=1 filter=34 channel=12
    -9, 6, 3, 10, -13, -2, 32, 17, -3,
    -- layer=1 filter=34 channel=13
    17, 18, 22, -7, 2, -13, -16, -30, -8,
    -- layer=1 filter=34 channel=14
    6, -25, -11, -15, -2, -18, 11, -30, -20,
    -- layer=1 filter=34 channel=15
    17, 20, 20, 10, 3, 19, -6, 0, 0,
    -- layer=1 filter=34 channel=16
    12, -2, 16, 16, 18, 4, -6, -4, 14,
    -- layer=1 filter=34 channel=17
    6, 28, 1, 3, -16, -16, -13, -43, -47,
    -- layer=1 filter=34 channel=18
    34, 57, 27, 42, 28, 56, 18, -2, 0,
    -- layer=1 filter=34 channel=19
    -32, -6, -8, -5, -6, -1, 9, 5, 11,
    -- layer=1 filter=34 channel=20
    -5, -8, 9, -2, -16, -8, -9, -19, 1,
    -- layer=1 filter=34 channel=21
    -13, -1, -10, 12, 2, -7, 1, 18, -4,
    -- layer=1 filter=34 channel=22
    -8, -12, -7, -3, -7, -5, -3, -6, -6,
    -- layer=1 filter=34 channel=23
    2, 14, 3, -4, -13, -19, 16, 6, 4,
    -- layer=1 filter=34 channel=24
    32, 13, 31, -8, -1, -8, 10, 6, 7,
    -- layer=1 filter=34 channel=25
    0, 5, 4, -15, -17, -30, -15, -55, -45,
    -- layer=1 filter=34 channel=26
    19, 21, 12, -4, 11, -5, 17, -3, 9,
    -- layer=1 filter=34 channel=27
    -23, 0, 6, -21, -22, 3, 2, -6, 3,
    -- layer=1 filter=34 channel=28
    15, 21, 26, 9, -23, 8, -7, 5, -26,
    -- layer=1 filter=34 channel=29
    13, 7, 1, -2, -5, 0, 20, 30, 23,
    -- layer=1 filter=34 channel=30
    -4, 5, 15, -4, 5, -5, 7, -8, 14,
    -- layer=1 filter=34 channel=31
    6, 12, 9, -4, 13, 1, -16, 0, -6,
    -- layer=1 filter=34 channel=32
    2, 8, -4, 8, 13, -11, -3, 0, -12,
    -- layer=1 filter=34 channel=33
    -4, 6, -22, -27, -23, -20, -6, -17, -31,
    -- layer=1 filter=34 channel=34
    6, 15, -21, -14, -23, -46, -39, -55, -66,
    -- layer=1 filter=34 channel=35
    40, 35, 9, -21, -19, -31, -44, -50, -56,
    -- layer=1 filter=34 channel=36
    7, -16, 5, 40, 9, -16, 59, 26, 36,
    -- layer=1 filter=34 channel=37
    -19, -36, -30, 27, 17, 6, 21, -1, 1,
    -- layer=1 filter=34 channel=38
    -4, -5, -4, 22, 11, 7, 12, 15, 41,
    -- layer=1 filter=34 channel=39
    -3, -11, -2, -13, -17, -9, 8, -5, 24,
    -- layer=1 filter=34 channel=40
    11, 2, -7, -3, -15, 8, -4, 11, -10,
    -- layer=1 filter=34 channel=41
    -3, -8, -24, -6, 17, 0, 0, 21, -1,
    -- layer=1 filter=34 channel=42
    -9, -1, 13, 4, 14, 0, 17, 2, 0,
    -- layer=1 filter=34 channel=43
    -15, -14, 24, -47, -17, -5, -63, -54, -8,
    -- layer=1 filter=34 channel=44
    14, -8, 27, -12, -6, -10, -24, -30, -3,
    -- layer=1 filter=34 channel=45
    -18, -45, -86, -39, -41, -87, -62, -106, -78,
    -- layer=1 filter=34 channel=46
    -31, -16, -38, 8, 17, -36, 19, 4, -18,
    -- layer=1 filter=34 channel=47
    -11, 16, 17, -11, 8, 6, 11, 11, 7,
    -- layer=1 filter=34 channel=48
    -9, 22, 4, 7, 14, -5, 0, 15, -11,
    -- layer=1 filter=34 channel=49
    -21, -14, -10, 16, 5, 9, 14, 7, 23,
    -- layer=1 filter=34 channel=50
    -14, 5, -15, 24, -11, -36, 10, -11, -11,
    -- layer=1 filter=34 channel=51
    -1, 3, -33, 0, 14, 12, 21, 33, -13,
    -- layer=1 filter=34 channel=52
    -12, -12, 7, -15, 14, 10, 0, 13, -17,
    -- layer=1 filter=34 channel=53
    7, 11, 7, -11, 9, -16, -8, -11, -3,
    -- layer=1 filter=34 channel=54
    -27, -65, -67, -53, -54, -82, -56, -122, -100,
    -- layer=1 filter=34 channel=55
    6, -22, -12, 3, -8, -22, -22, 13, 3,
    -- layer=1 filter=34 channel=56
    31, 36, 19, 21, -13, -19, -36, -36, -40,
    -- layer=1 filter=34 channel=57
    -14, -17, -14, 0, -5, 6, 15, -12, 12,
    -- layer=1 filter=34 channel=58
    -5, 4, -12, -6, -23, -22, -6, -26, -20,
    -- layer=1 filter=34 channel=59
    2, 10, 8, 12, 7, 5, -7, -13, -8,
    -- layer=1 filter=34 channel=60
    2, 15, -7, 11, -14, -2, 0, -7, 0,
    -- layer=1 filter=34 channel=61
    -7, 7, 0, 9, 26, 18, 19, 37, 18,
    -- layer=1 filter=34 channel=62
    -1, 7, -12, 2, -14, 13, -1, 8, 1,
    -- layer=1 filter=34 channel=63
    -19, -24, 4, -47, -53, -12, -80, -67, -38,
    -- layer=1 filter=35 channel=0
    10, 8, 10, 0, 9, 6, -16, -19, 1,
    -- layer=1 filter=35 channel=1
    16, 13, 0, 4, 2, 6, 10, -4, 2,
    -- layer=1 filter=35 channel=2
    10, -1, 11, 0, -3, 16, -3, -2, 0,
    -- layer=1 filter=35 channel=3
    15, 19, 4, -14, -18, 3, -21, -6, -20,
    -- layer=1 filter=35 channel=4
    14, 14, -15, 13, -13, 13, -2, 0, -2,
    -- layer=1 filter=35 channel=5
    9, 14, 23, 18, -1, -15, -2, -26, 4,
    -- layer=1 filter=35 channel=6
    -38, -23, -4, -16, -29, 15, 7, -14, -8,
    -- layer=1 filter=35 channel=7
    9, 11, -6, 7, -18, -4, 20, 20, -17,
    -- layer=1 filter=35 channel=8
    0, 2, 6, 9, -10, 14, -4, -10, -7,
    -- layer=1 filter=35 channel=9
    -2, 28, 9, -8, 8, -11, -9, -22, -34,
    -- layer=1 filter=35 channel=10
    -12, 21, 4, -5, 18, -6, -11, 10, -2,
    -- layer=1 filter=35 channel=11
    25, -1, 3, -11, -16, 0, 1, -23, -20,
    -- layer=1 filter=35 channel=12
    7, -10, -12, 12, 7, 13, 15, 22, 15,
    -- layer=1 filter=35 channel=13
    1, -1, 25, 17, -8, 9, -23, -5, -13,
    -- layer=1 filter=35 channel=14
    -24, -41, -11, 3, -5, -7, -23, 20, -13,
    -- layer=1 filter=35 channel=15
    8, -7, 14, -3, 14, 15, -11, -29, -33,
    -- layer=1 filter=35 channel=16
    20, 26, 8, -6, -21, 1, -13, -20, -13,
    -- layer=1 filter=35 channel=17
    0, 7, 26, 31, 26, 26, 22, 37, 27,
    -- layer=1 filter=35 channel=18
    15, -11, -27, -1, -28, -21, 15, 7, 25,
    -- layer=1 filter=35 channel=19
    2, 8, 12, 10, 20, 4, -2, 15, -1,
    -- layer=1 filter=35 channel=20
    13, 8, -15, -2, 7, -13, 0, 20, -7,
    -- layer=1 filter=35 channel=21
    12, -7, -17, 14, -2, -3, 0, 3, -10,
    -- layer=1 filter=35 channel=22
    -3, 8, 2, 6, 21, 6, -2, 5, 7,
    -- layer=1 filter=35 channel=23
    28, 0, 14, -6, -2, 18, 8, -25, -11,
    -- layer=1 filter=35 channel=24
    20, 28, 17, -13, 1, 15, -1, -9, -1,
    -- layer=1 filter=35 channel=25
    23, 25, 44, 49, 32, 27, 15, 35, 26,
    -- layer=1 filter=35 channel=26
    -2, -2, 25, -6, 16, -2, -4, -25, -21,
    -- layer=1 filter=35 channel=27
    -1, 46, 0, -2, 13, -13, -3, 15, -9,
    -- layer=1 filter=35 channel=28
    13, -6, 24, 3, 11, -9, -19, 3, -19,
    -- layer=1 filter=35 channel=29
    13, -13, 0, 13, -8, -12, -1, 14, 16,
    -- layer=1 filter=35 channel=30
    16, 14, 10, -24, -34, -28, -11, -15, -13,
    -- layer=1 filter=35 channel=31
    18, 15, 15, 18, 17, -12, -5, -17, -20,
    -- layer=1 filter=35 channel=32
    9, -6, 9, 9, -18, -12, 15, -9, 21,
    -- layer=1 filter=35 channel=33
    -12, 12, 17, 8, 6, 5, 18, 23, 9,
    -- layer=1 filter=35 channel=34
    -21, -4, 25, 36, 22, 27, 27, 32, 12,
    -- layer=1 filter=35 channel=35
    8, 23, 17, 47, 44, 50, 28, 41, 57,
    -- layer=1 filter=35 channel=36
    29, 29, 21, 22, 5, -3, 2, 5, -1,
    -- layer=1 filter=35 channel=37
    37, 48, 24, -7, -3, 8, 8, 34, -9,
    -- layer=1 filter=35 channel=38
    0, -10, -10, 18, -6, 4, 7, -13, 0,
    -- layer=1 filter=35 channel=39
    15, -8, 2, -1, -13, 15, -11, -16, -19,
    -- layer=1 filter=35 channel=40
    9, 20, 12, -8, -14, 0, -24, -1, -16,
    -- layer=1 filter=35 channel=41
    -14, 0, 2, 18, -8, 1, 6, -2, 0,
    -- layer=1 filter=35 channel=42
    25, 24, 27, 11, -5, -4, -11, -13, -22,
    -- layer=1 filter=35 channel=43
    -10, 14, 0, -12, 22, 5, 9, 21, 2,
    -- layer=1 filter=35 channel=44
    15, 4, 16, -2, -3, -11, 13, -13, -9,
    -- layer=1 filter=35 channel=45
    -22, -4, -14, -23, 0, 0, 21, 0, 1,
    -- layer=1 filter=35 channel=46
    17, 44, 30, 3, 10, 20, -11, 0, 6,
    -- layer=1 filter=35 channel=47
    8, 8, 5, 0, 1, 14, -10, -13, -10,
    -- layer=1 filter=35 channel=48
    -4, 24, 7, -1, 5, 5, -16, -1, 4,
    -- layer=1 filter=35 channel=49
    12, -4, -6, -19, -1, -13, -3, -20, -13,
    -- layer=1 filter=35 channel=50
    52, 36, 46, 72, 54, 58, 24, 41, 42,
    -- layer=1 filter=35 channel=51
    -17, -19, 5, -17, -4, -19, 17, -16, 12,
    -- layer=1 filter=35 channel=52
    22, 10, 15, -7, -10, -12, -14, -3, 0,
    -- layer=1 filter=35 channel=53
    23, 1, 14, 16, 0, -10, -18, -21, -12,
    -- layer=1 filter=35 channel=54
    -30, -31, -20, -6, -23, -8, 19, 7, 12,
    -- layer=1 filter=35 channel=55
    8, 4, 6, -12, 12, -14, 12, -11, -20,
    -- layer=1 filter=35 channel=56
    10, 15, 45, 47, 51, 32, 37, 44, 53,
    -- layer=1 filter=35 channel=57
    -8, -4, -8, 0, 0, 4, -7, 9, 13,
    -- layer=1 filter=35 channel=58
    13, -6, -1, 22, -2, 5, 3, 1, 3,
    -- layer=1 filter=35 channel=59
    1, 6, -11, 22, 6, -7, -8, 22, 23,
    -- layer=1 filter=35 channel=60
    0, 21, 3, -11, 14, 5, -6, -26, -11,
    -- layer=1 filter=35 channel=61
    -6, 15, -5, -10, 28, -11, -12, 7, 17,
    -- layer=1 filter=35 channel=62
    0, 29, 15, -4, 11, -8, 6, -14, 11,
    -- layer=1 filter=35 channel=63
    -7, 16, 4, -12, 3, 6, -6, 25, 1,
    -- layer=1 filter=36 channel=0
    -5, 14, 3, -12, 9, 8, -16, -3, -11,
    -- layer=1 filter=36 channel=1
    -3, 19, -11, 34, 10, 10, 8, 17, 17,
    -- layer=1 filter=36 channel=2
    0, -1, -7, 30, 33, 23, 33, 26, 39,
    -- layer=1 filter=36 channel=3
    -1, 20, 19, 6, -7, -7, -29, -6, -14,
    -- layer=1 filter=36 channel=4
    0, 9, 4, -5, -5, 16, -13, -17, 17,
    -- layer=1 filter=36 channel=5
    11, 21, 9, -15, -23, 11, -35, 7, -26,
    -- layer=1 filter=36 channel=6
    -4, -72, -13, -35, -65, -47, -20, -56, -45,
    -- layer=1 filter=36 channel=7
    12, 2, 4, 17, -15, -9, 0, 0, 9,
    -- layer=1 filter=36 channel=8
    16, -17, 17, -11, -6, -17, -6, -5, 1,
    -- layer=1 filter=36 channel=9
    8, 12, 18, -14, 7, 8, -40, -6, -13,
    -- layer=1 filter=36 channel=10
    21, 21, -12, 3, -13, 2, -2, 16, 1,
    -- layer=1 filter=36 channel=11
    -5, 11, 7, -18, 14, 30, -38, -13, -9,
    -- layer=1 filter=36 channel=12
    -49, -51, -48, -20, -42, -39, -30, -35, -69,
    -- layer=1 filter=36 channel=13
    15, 32, 40, -7, 7, 13, -28, -11, -3,
    -- layer=1 filter=36 channel=14
    -33, -13, -18, -64, -34, -42, -42, -41, -20,
    -- layer=1 filter=36 channel=15
    -21, 12, 23, -16, -27, -22, -39, -35, -22,
    -- layer=1 filter=36 channel=16
    -27, -10, 10, -24, 5, -2, -12, -28, -23,
    -- layer=1 filter=36 channel=17
    3, -16, 9, -2, -24, -7, 16, -19, 9,
    -- layer=1 filter=36 channel=18
    -3, 13, -11, -8, 0, -8, 2, 7, 2,
    -- layer=1 filter=36 channel=19
    -47, -71, -38, -64, -71, -73, -22, -34, -43,
    -- layer=1 filter=36 channel=20
    22, 9, 4, 17, 11, 22, 34, 10, -17,
    -- layer=1 filter=36 channel=21
    3, -6, -8, -16, 8, -6, 9, 10, 17,
    -- layer=1 filter=36 channel=22
    29, -5, -4, 10, 7, -4, 43, 24, 34,
    -- layer=1 filter=36 channel=23
    0, -4, 26, -13, -3, 9, 3, 0, 13,
    -- layer=1 filter=36 channel=24
    -13, -7, 27, -28, -4, 4, -43, -28, -16,
    -- layer=1 filter=36 channel=25
    0, -23, -15, -9, -28, -32, 6, -31, 2,
    -- layer=1 filter=36 channel=26
    0, 20, 1, 10, 1, 17, 6, -14, -3,
    -- layer=1 filter=36 channel=27
    -52, -64, -55, -27, -51, -29, -42, -25, -17,
    -- layer=1 filter=36 channel=28
    7, 20, 32, -19, 0, 12, -24, 3, -1,
    -- layer=1 filter=36 channel=29
    -13, -19, -34, 0, -40, -28, -13, -24, -41,
    -- layer=1 filter=36 channel=30
    -38, -13, -12, -49, -30, -17, -25, -35, -29,
    -- layer=1 filter=36 channel=31
    5, 11, 29, -6, -27, -11, -17, -24, -17,
    -- layer=1 filter=36 channel=32
    18, -10, -1, 0, 11, -10, -2, -16, 6,
    -- layer=1 filter=36 channel=33
    -11, -16, 6, -31, -26, 2, -3, -6, -19,
    -- layer=1 filter=36 channel=34
    23, -13, 12, -15, -14, 7, 15, -30, 16,
    -- layer=1 filter=36 channel=35
    26, 15, -6, 1, -25, -10, -2, -21, -3,
    -- layer=1 filter=36 channel=36
    -15, -47, -40, -41, -39, -48, -16, -20, -56,
    -- layer=1 filter=36 channel=37
    -65, -59, -60, -2, -38, 1, 26, -14, -4,
    -- layer=1 filter=36 channel=38
    12, 32, 22, 42, 18, 19, 47, 40, 21,
    -- layer=1 filter=36 channel=39
    -7, 16, 10, -8, -10, -19, -2, 12, 0,
    -- layer=1 filter=36 channel=40
    23, 28, 13, 18, 0, 26, -2, 3, -4,
    -- layer=1 filter=36 channel=41
    23, 21, -12, 35, 5, -5, 25, 23, 21,
    -- layer=1 filter=36 channel=42
    -11, -7, 18, -7, 0, -16, 10, -14, -6,
    -- layer=1 filter=36 channel=43
    -17, 8, -14, -7, -15, -19, -45, -20, -32,
    -- layer=1 filter=36 channel=44
    5, 11, 11, -23, 5, 3, -38, -14, -18,
    -- layer=1 filter=36 channel=45
    -29, -27, -25, -33, -49, -24, -23, -48, -36,
    -- layer=1 filter=36 channel=46
    -30, -42, -37, -4, -26, 18, 41, 3, 7,
    -- layer=1 filter=36 channel=47
    -15, -2, 10, -1, -14, 4, -22, 0, -5,
    -- layer=1 filter=36 channel=48
    21, 3, 13, 9, -10, -14, 10, 11, -7,
    -- layer=1 filter=36 channel=49
    -3, 0, -13, 4, -9, -19, 2, -14, 8,
    -- layer=1 filter=36 channel=50
    -70, -66, -12, -30, -29, -34, 24, -9, 39,
    -- layer=1 filter=36 channel=51
    12, 0, -1, 23, 32, 30, 27, 13, 20,
    -- layer=1 filter=36 channel=52
    -3, 4, 13, -8, 13, 0, 11, -16, 0,
    -- layer=1 filter=36 channel=53
    17, 5, 18, 0, -6, 17, -23, -2, 4,
    -- layer=1 filter=36 channel=54
    -3, -47, -14, -21, -52, -32, -16, -29, -41,
    -- layer=1 filter=36 channel=55
    33, 25, 31, 11, 25, 36, 24, 17, 38,
    -- layer=1 filter=36 channel=56
    7, 5, -2, 5, -5, 8, 0, -19, 5,
    -- layer=1 filter=36 channel=57
    -10, 15, 17, 2, 13, 1, -16, 10, 0,
    -- layer=1 filter=36 channel=58
    11, 25, -5, 20, -11, -17, 15, 14, -3,
    -- layer=1 filter=36 channel=59
    20, -22, -8, -23, -10, -19, -1, -24, 4,
    -- layer=1 filter=36 channel=60
    8, 4, 27, -16, -12, -1, -2, -14, -18,
    -- layer=1 filter=36 channel=61
    1, -20, -5, 15, -5, -20, 32, 19, -3,
    -- layer=1 filter=36 channel=62
    -10, -6, -24, -36, -42, -37, -10, -24, -31,
    -- layer=1 filter=36 channel=63
    -17, -8, -19, -37, -24, -16, -38, -48, -29,
    -- layer=1 filter=37 channel=0
    -9, -6, -19, 12, -10, 0, 20, 9, -4,
    -- layer=1 filter=37 channel=1
    -2, -16, -28, 6, 7, -7, 36, 17, 3,
    -- layer=1 filter=37 channel=2
    -26, -33, -17, -19, 5, -31, 9, -13, -4,
    -- layer=1 filter=37 channel=3
    -11, 3, 18, -13, -9, 5, -11, 9, -8,
    -- layer=1 filter=37 channel=4
    -4, 15, -1, -6, 9, 17, -1, 15, -5,
    -- layer=1 filter=37 channel=5
    -21, -26, -14, -10, -14, -13, 6, 4, 0,
    -- layer=1 filter=37 channel=6
    27, 11, -50, 4, -1, -12, -17, -8, -19,
    -- layer=1 filter=37 channel=7
    14, 2, 21, 11, 7, 2, 3, 4, 13,
    -- layer=1 filter=37 channel=8
    14, -15, -22, 2, 12, 11, 4, -3, 10,
    -- layer=1 filter=37 channel=9
    13, 12, 0, -11, 23, 13, -1, 7, 9,
    -- layer=1 filter=37 channel=10
    -31, -3, -21, 13, -9, -10, 30, 14, -20,
    -- layer=1 filter=37 channel=11
    -8, 19, 0, -10, 0, -13, 3, 7, 7,
    -- layer=1 filter=37 channel=12
    -37, -8, 3, -12, -3, -15, 58, 63, 81,
    -- layer=1 filter=37 channel=13
    16, 10, 8, 13, 5, -3, -12, -4, -20,
    -- layer=1 filter=37 channel=14
    -18, 27, 25, -12, 24, 73, 17, -9, 76,
    -- layer=1 filter=37 channel=15
    9, 1, 13, 3, 2, -16, 25, 23, -1,
    -- layer=1 filter=37 channel=16
    -3, -20, 17, -3, 41, 8, 12, 10, 37,
    -- layer=1 filter=37 channel=17
    12, -13, 33, -4, -25, -22, 30, -1, -10,
    -- layer=1 filter=37 channel=18
    -25, -3, -8, -21, -17, 12, -2, 16, 46,
    -- layer=1 filter=37 channel=19
    -33, -36, -40, 6, -11, 1, -2, -23, 5,
    -- layer=1 filter=37 channel=20
    44, 17, 11, 27, 14, 11, 2, 19, 45,
    -- layer=1 filter=37 channel=21
    1, -17, 10, -10, 12, -15, 2, -17, 15,
    -- layer=1 filter=37 channel=22
    4, 27, 3, -3, 2, 15, 13, -6, 6,
    -- layer=1 filter=37 channel=23
    17, -8, -26, -8, -11, -13, -5, 9, 10,
    -- layer=1 filter=37 channel=24
    -9, 25, 10, 7, 11, 18, 19, 14, 18,
    -- layer=1 filter=37 channel=25
    5, 8, 21, 8, -5, 21, 8, 4, 15,
    -- layer=1 filter=37 channel=26
    -13, -25, 4, 14, -10, -21, 18, 17, -6,
    -- layer=1 filter=37 channel=27
    -23, -22, 13, 5, -8, 11, 24, 24, -10,
    -- layer=1 filter=37 channel=28
    7, 20, 23, 10, 4, -13, 8, 8, 8,
    -- layer=1 filter=37 channel=29
    -26, 12, -2, 14, 8, 29, 22, 35, 18,
    -- layer=1 filter=37 channel=30
    0, 21, 13, 18, 3, 14, 30, 40, 17,
    -- layer=1 filter=37 channel=31
    10, 4, -20, 2, 34, -10, 8, 23, 8,
    -- layer=1 filter=37 channel=32
    -15, 1, 12, 10, 0, 12, -13, -14, 0,
    -- layer=1 filter=37 channel=33
    33, -15, -35, -4, 18, -17, -12, 19, 22,
    -- layer=1 filter=37 channel=34
    16, -6, 3, -3, -38, 4, 10, -14, -30,
    -- layer=1 filter=37 channel=35
    23, -8, 9, 3, -46, -15, 21, 7, 11,
    -- layer=1 filter=37 channel=36
    -24, -23, 0, 31, 10, 39, 44, 47, 76,
    -- layer=1 filter=37 channel=37
    63, 32, -11, 75, 72, 85, 56, 63, 86,
    -- layer=1 filter=37 channel=38
    -40, -12, -16, -45, -30, -2, -8, -36, 3,
    -- layer=1 filter=37 channel=39
    -15, -25, -20, -5, -28, -38, 15, 8, -2,
    -- layer=1 filter=37 channel=40
    10, -14, -10, 9, 0, -8, 4, -4, 7,
    -- layer=1 filter=37 channel=41
    4, -8, -36, -13, -19, -17, 29, 17, 8,
    -- layer=1 filter=37 channel=42
    0, -26, -9, 23, -20, -4, 13, 9, -10,
    -- layer=1 filter=37 channel=43
    -26, -19, 7, -46, -66, -35, -1, -19, -54,
    -- layer=1 filter=37 channel=44
    7, 9, 12, 18, 13, 8, 6, 2, -1,
    -- layer=1 filter=37 channel=45
    64, -20, -23, 33, 43, 22, -20, 24, 32,
    -- layer=1 filter=37 channel=46
    30, 23, -29, 83, 93, 67, 55, 92, 55,
    -- layer=1 filter=37 channel=47
    -5, -20, 0, 10, 17, -7, 34, 19, -6,
    -- layer=1 filter=37 channel=48
    -12, -17, -15, 0, -7, -13, -7, 10, -24,
    -- layer=1 filter=37 channel=49
    1, -32, -35, -3, -1, -16, 27, 37, 24,
    -- layer=1 filter=37 channel=50
    -2, -26, 1, 2, 55, 7, 33, 18, 26,
    -- layer=1 filter=37 channel=51
    16, -13, -7, -2, 24, 21, 20, 28, 45,
    -- layer=1 filter=37 channel=52
    7, -13, -32, 10, 29, 23, 0, 0, 7,
    -- layer=1 filter=37 channel=53
    -1, -3, -14, -1, -10, -6, 5, 2, 7,
    -- layer=1 filter=37 channel=54
    54, -7, -32, -7, 37, 16, -26, 50, -2,
    -- layer=1 filter=37 channel=55
    -9, -32, -14, -27, 0, -18, -16, -8, -14,
    -- layer=1 filter=37 channel=56
    7, 7, 43, 17, -17, -5, 11, 13, 4,
    -- layer=1 filter=37 channel=57
    0, -18, 8, -6, -8, 0, 7, -2, -2,
    -- layer=1 filter=37 channel=58
    -39, -20, -15, -7, -58, -6, 47, -26, -4,
    -- layer=1 filter=37 channel=59
    -16, -44, -29, 0, -26, -35, 27, 9, 2,
    -- layer=1 filter=37 channel=60
    -1, -17, 3, -5, -16, -13, 14, 8, -6,
    -- layer=1 filter=37 channel=61
    19, -1, -36, 36, -4, 28, 22, 37, 45,
    -- layer=1 filter=37 channel=62
    -34, -32, -36, 18, 5, -35, 22, 6, -10,
    -- layer=1 filter=37 channel=63
    -61, -60, -8, -81, -101, -64, -42, -68, -94,
    -- layer=1 filter=38 channel=0
    -11, 10, 13, 14, 13, -13, 2, 3, -19,
    -- layer=1 filter=38 channel=1
    -2, -14, -13, -5, -18, -21, 1, -8, 5,
    -- layer=1 filter=38 channel=2
    2, -17, -14, 19, 2, 31, 17, 10, 26,
    -- layer=1 filter=38 channel=3
    2, 11, 12, 13, 21, -3, 11, 4, 21,
    -- layer=1 filter=38 channel=4
    -10, -6, 13, 1, -10, -11, 19, -3, 15,
    -- layer=1 filter=38 channel=5
    -2, 16, 1, -8, -6, -11, 6, 0, 4,
    -- layer=1 filter=38 channel=6
    -45, -34, -43, -46, -63, -40, -34, -49, -33,
    -- layer=1 filter=38 channel=7
    -2, 1, 0, -9, 6, -6, -14, 9, -1,
    -- layer=1 filter=38 channel=8
    4, 0, 3, 16, 10, 6, -2, 1, 4,
    -- layer=1 filter=38 channel=9
    23, 6, 0, 27, 8, 20, 32, 39, 25,
    -- layer=1 filter=38 channel=10
    -8, 9, 6, 2, 7, 12, 2, -21, -20,
    -- layer=1 filter=38 channel=11
    24, 5, 18, 0, 13, 31, 23, 13, 12,
    -- layer=1 filter=38 channel=12
    15, 4, 23, 11, 0, 27, -13, -50, 0,
    -- layer=1 filter=38 channel=13
    -2, -2, 16, 12, 24, 27, 16, 3, 39,
    -- layer=1 filter=38 channel=14
    -29, -41, -16, -3, -55, -58, -8, -27, -33,
    -- layer=1 filter=38 channel=15
    -12, -2, 20, 14, 0, -9, 4, 15, -9,
    -- layer=1 filter=38 channel=16
    13, -3, 9, -6, -3, 16, -2, 22, 13,
    -- layer=1 filter=38 channel=17
    5, -8, 17, 18, 29, 0, 32, 0, 24,
    -- layer=1 filter=38 channel=18
    15, 46, 36, 29, 15, 32, 24, 5, 3,
    -- layer=1 filter=38 channel=19
    18, 9, -8, 6, -17, -27, 0, -11, -29,
    -- layer=1 filter=38 channel=20
    3, 14, -12, -8, -10, 11, -7, -18, -23,
    -- layer=1 filter=38 channel=21
    -8, -10, -18, -4, 9, -1, 15, -15, -12,
    -- layer=1 filter=38 channel=22
    14, 5, 14, 0, -26, -20, -7, -5, 8,
    -- layer=1 filter=38 channel=23
    5, -12, -16, 3, 13, -14, 0, 3, 8,
    -- layer=1 filter=38 channel=24
    8, 12, 25, 25, 15, -1, 6, 6, 26,
    -- layer=1 filter=38 channel=25
    -10, -24, 14, 0, 13, -10, -13, 3, -1,
    -- layer=1 filter=38 channel=26
    -2, 12, 0, 15, 0, 8, 5, 3, -4,
    -- layer=1 filter=38 channel=27
    0, -25, -4, 0, -22, -31, 2, 2, 0,
    -- layer=1 filter=38 channel=28
    19, 23, 3, 7, 24, 40, 17, 44, 43,
    -- layer=1 filter=38 channel=29
    30, 3, 6, 2, 9, 19, 16, 2, -4,
    -- layer=1 filter=38 channel=30
    22, 10, 3, 19, -4, 12, 17, 16, 26,
    -- layer=1 filter=38 channel=31
    10, 2, -4, -13, -4, 0, -21, -13, -2,
    -- layer=1 filter=38 channel=32
    -5, 11, 19, -11, 6, -11, 3, 6, 13,
    -- layer=1 filter=38 channel=33
    12, 6, -18, -5, 11, -14, -8, -13, -13,
    -- layer=1 filter=38 channel=34
    14, 6, 3, 28, 7, -25, 7, 4, 20,
    -- layer=1 filter=38 channel=35
    19, -4, 29, 29, -2, 18, 25, 14, 33,
    -- layer=1 filter=38 channel=36
    56, 48, 41, 60, 39, 31, 63, 17, 45,
    -- layer=1 filter=38 channel=37
    28, 7, -19, -9, -1, -7, -5, 16, 1,
    -- layer=1 filter=38 channel=38
    26, 26, 17, 12, -10, 20, -1, 7, 0,
    -- layer=1 filter=38 channel=39
    -16, -7, -16, -18, -10, -3, -8, -22, -22,
    -- layer=1 filter=38 channel=40
    -2, -5, 16, 2, 13, -1, 6, 17, 8,
    -- layer=1 filter=38 channel=41
    -13, -12, -3, -13, 1, -26, -26, -7, 1,
    -- layer=1 filter=38 channel=42
    6, -13, 8, -4, 0, 16, -5, -11, -17,
    -- layer=1 filter=38 channel=43
    -24, -32, 4, -26, 0, -28, -19, -2, -4,
    -- layer=1 filter=38 channel=44
    11, -19, -13, 12, 9, 16, 16, 17, 0,
    -- layer=1 filter=38 channel=45
    -50, -38, -37, -62, -21, -45, -19, -31, -31,
    -- layer=1 filter=38 channel=46
    14, -23, -3, -2, -6, -17, -4, -9, -9,
    -- layer=1 filter=38 channel=47
    0, -17, -9, 5, 6, 6, -22, -27, -24,
    -- layer=1 filter=38 channel=48
    -14, -10, 17, 12, -15, 13, -16, 6, 0,
    -- layer=1 filter=38 channel=49
    14, 3, -3, -2, 6, 6, -15, -14, -6,
    -- layer=1 filter=38 channel=50
    20, 28, 21, 15, 9, 39, 18, 8, 14,
    -- layer=1 filter=38 channel=51
    14, 6, -27, -10, -9, -9, -12, -10, -8,
    -- layer=1 filter=38 channel=52
    0, -14, 8, -7, 14, 2, 11, 3, 16,
    -- layer=1 filter=38 channel=53
    -8, -1, 13, 5, -10, 10, -6, -3, -7,
    -- layer=1 filter=38 channel=54
    -13, -24, -46, -22, -24, -1, -20, -20, 5,
    -- layer=1 filter=38 channel=55
    15, 2, -7, -8, 16, -11, 15, 10, 23,
    -- layer=1 filter=38 channel=56
    10, 0, 33, 20, 24, -3, 5, 21, 33,
    -- layer=1 filter=38 channel=57
    -10, 9, -8, 14, -3, -13, 3, -14, -5,
    -- layer=1 filter=38 channel=58
    -2, -12, 1, -3, -22, -19, -18, -20, -23,
    -- layer=1 filter=38 channel=59
    -16, -12, 2, -4, -28, -15, 0, 2, -7,
    -- layer=1 filter=38 channel=60
    -6, -6, 16, -4, 13, 6, -4, 13, 10,
    -- layer=1 filter=38 channel=61
    4, 3, -32, -13, -22, 0, -12, -12, -24,
    -- layer=1 filter=38 channel=62
    -17, -1, -16, -1, -15, -6, -22, -31, -5,
    -- layer=1 filter=38 channel=63
    -28, -11, 28, -51, -2, -12, -18, -35, 1,
    -- layer=1 filter=39 channel=0
    7, -6, 0, -9, 7, -8, 7, -8, -1,
    -- layer=1 filter=39 channel=1
    1, 17, 28, 16, 14, 23, -8, 14, -6,
    -- layer=1 filter=39 channel=2
    22, -3, 16, 21, 0, -1, 10, -9, -24,
    -- layer=1 filter=39 channel=3
    -14, -7, 8, -22, -1, -8, 4, 16, 4,
    -- layer=1 filter=39 channel=4
    3, 4, 2, -16, 1, -2, -5, 7, -18,
    -- layer=1 filter=39 channel=5
    -1, 0, 2, -19, -1, -9, 0, -18, 2,
    -- layer=1 filter=39 channel=6
    -8, -36, -53, -31, -35, -36, -7, -30, -25,
    -- layer=1 filter=39 channel=7
    14, 19, 9, -5, 9, 0, -10, 16, 18,
    -- layer=1 filter=39 channel=8
    -10, 3, -17, 8, 10, -1, -6, 0, -16,
    -- layer=1 filter=39 channel=9
    -5, 1, 24, -13, -23, 10, 48, 39, 52,
    -- layer=1 filter=39 channel=10
    -4, 19, 7, 15, 21, -7, 0, 20, -5,
    -- layer=1 filter=39 channel=11
    -21, -4, -10, -39, -57, -18, 27, 20, 16,
    -- layer=1 filter=39 channel=12
    37, 41, 22, 75, 65, 56, 76, 58, 34,
    -- layer=1 filter=39 channel=13
    19, -11, 11, -27, -34, -35, 5, -10, -7,
    -- layer=1 filter=39 channel=14
    -22, -9, 0, -42, -15, 0, -57, -56, -48,
    -- layer=1 filter=39 channel=15
    -5, -16, -8, -14, -26, 2, 7, 9, 0,
    -- layer=1 filter=39 channel=16
    5, 1, 1, 17, -38, -14, 41, 25, 8,
    -- layer=1 filter=39 channel=17
    12, -5, 0, 2, 8, 7, -19, -21, -6,
    -- layer=1 filter=39 channel=18
    -13, -8, -16, -26, -20, 0, -30, -8, -7,
    -- layer=1 filter=39 channel=19
    24, 55, 58, 25, 43, 32, 43, 21, 45,
    -- layer=1 filter=39 channel=20
    1, 12, -1, 15, 6, 9, 29, 10, 4,
    -- layer=1 filter=39 channel=21
    -13, -12, -10, 6, -9, -5, 2, -4, 17,
    -- layer=1 filter=39 channel=22
    41, 36, 42, 32, 12, 33, 0, 2, 11,
    -- layer=1 filter=39 channel=23
    -12, -12, -4, -5, -30, 14, 14, -10, -13,
    -- layer=1 filter=39 channel=24
    39, 0, 1, 10, -19, 0, 10, 8, 9,
    -- layer=1 filter=39 channel=25
    2, 10, 39, 11, 36, 28, -14, 2, 6,
    -- layer=1 filter=39 channel=26
    -17, -11, -8, -6, -5, -4, 3, -9, -21,
    -- layer=1 filter=39 channel=27
    67, 49, 61, 26, 44, 47, 41, 34, 44,
    -- layer=1 filter=39 channel=28
    9, -13, 2, -22, -28, -1, 21, 8, 30,
    -- layer=1 filter=39 channel=29
    0, 20, 8, 17, 21, 10, 3, -3, 0,
    -- layer=1 filter=39 channel=30
    24, 13, 28, 30, 13, 10, 20, 47, 38,
    -- layer=1 filter=39 channel=31
    18, -2, 11, 0, -27, -18, -8, -10, -26,
    -- layer=1 filter=39 channel=32
    6, 16, 1, 8, 17, -1, -8, -7, 17,
    -- layer=1 filter=39 channel=33
    20, 18, 5, 13, 13, -7, 4, -2, 12,
    -- layer=1 filter=39 channel=34
    -18, -36, -29, -30, -11, -9, -43, -32, -49,
    -- layer=1 filter=39 channel=35
    -17, -1, -3, -7, 26, 2, -6, -22, -11,
    -- layer=1 filter=39 channel=36
    23, 51, 11, 40, 23, 36, 2, 23, 23,
    -- layer=1 filter=39 channel=37
    5, -3, 1, -2, -10, -11, -38, -50, -50,
    -- layer=1 filter=39 channel=38
    1, 16, 8, 41, 9, -5, 25, -4, 10,
    -- layer=1 filter=39 channel=39
    -8, 22, 10, 25, 21, 23, 24, 8, -3,
    -- layer=1 filter=39 channel=40
    -18, -6, -2, -18, -23, 12, -6, -12, 3,
    -- layer=1 filter=39 channel=41
    30, 9, 11, 13, 27, 26, 24, 30, 12,
    -- layer=1 filter=39 channel=42
    22, 0, -11, 2, 5, -7, -18, -6, 0,
    -- layer=1 filter=39 channel=43
    15, -4, 14, -10, 7, 10, -8, 20, 0,
    -- layer=1 filter=39 channel=44
    -4, 0, -23, 3, -14, -33, 28, -5, 11,
    -- layer=1 filter=39 channel=45
    5, -19, -8, -20, -41, -23, -25, -38, -2,
    -- layer=1 filter=39 channel=46
    28, 33, 38, 9, 6, 13, -14, -7, -2,
    -- layer=1 filter=39 channel=47
    18, -3, -14, 7, 1, -5, -23, 8, -29,
    -- layer=1 filter=39 channel=48
    0, 14, -4, 2, -10, -17, 18, 12, -5,
    -- layer=1 filter=39 channel=49
    15, -6, 15, 12, 15, -4, -8, 0, -22,
    -- layer=1 filter=39 channel=50
    3, -17, -22, 7, -5, -10, 32, 0, 21,
    -- layer=1 filter=39 channel=51
    8, 6, 20, 37, 30, 11, 13, 21, 13,
    -- layer=1 filter=39 channel=52
    30, 27, 26, 4, 8, -2, -11, 3, -10,
    -- layer=1 filter=39 channel=53
    3, -11, 14, -19, -2, 5, -1, -22, 16,
    -- layer=1 filter=39 channel=54
    -42, -58, -72, -54, -87, -42, -21, -41, -7,
    -- layer=1 filter=39 channel=55
    -10, -13, 5, 4, 16, -4, 34, 4, 5,
    -- layer=1 filter=39 channel=56
    -8, -39, 0, -10, 6, 7, -13, -28, -19,
    -- layer=1 filter=39 channel=57
    15, -8, -3, -18, -19, -6, 17, -3, 9,
    -- layer=1 filter=39 channel=58
    8, 18, 10, 30, 38, 17, 5, 33, 11,
    -- layer=1 filter=39 channel=59
    15, 29, 26, 26, 16, 34, 15, 27, 13,
    -- layer=1 filter=39 channel=60
    7, -24, -24, 10, -6, -2, 7, 9, -19,
    -- layer=1 filter=39 channel=61
    33, 23, 30, 30, 36, 24, -2, 1, 17,
    -- layer=1 filter=39 channel=62
    0, 20, 23, 38, 37, 29, 15, -1, 19,
    -- layer=1 filter=39 channel=63
    -39, -41, -40, -28, -33, -34, -28, -46, -40,
    -- layer=1 filter=40 channel=0
    13, -5, 3, -1, -21, -4, 24, 3, 1,
    -- layer=1 filter=40 channel=1
    15, -6, -22, -16, 0, 2, -15, 13, -2,
    -- layer=1 filter=40 channel=2
    1, -2, 7, -11, 4, 24, -15, 17, 16,
    -- layer=1 filter=40 channel=3
    -17, -19, -12, -2, 2, 7, 1, 5, 16,
    -- layer=1 filter=40 channel=4
    10, 15, 2, 5, -9, 0, 14, -14, 2,
    -- layer=1 filter=40 channel=5
    -24, -2, -31, -13, -21, -13, 3, 1, -6,
    -- layer=1 filter=40 channel=6
    25, 56, 11, 11, 27, 17, 26, 24, 19,
    -- layer=1 filter=40 channel=7
    -4, 23, -12, 13, 2, -3, 0, 26, 12,
    -- layer=1 filter=40 channel=8
    -20, -1, -6, 13, -18, -2, -6, -20, 8,
    -- layer=1 filter=40 channel=9
    8, -14, 4, 20, 8, 4, -1, 27, 3,
    -- layer=1 filter=40 channel=10
    -30, -16, -23, -21, -12, 1, 2, 10, 16,
    -- layer=1 filter=40 channel=11
    -13, -23, 5, -12, 14, 13, 15, 19, 7,
    -- layer=1 filter=40 channel=12
    25, 25, 27, 5, 26, 15, 11, 16, 42,
    -- layer=1 filter=40 channel=13
    -4, -7, -18, -10, -29, -7, 22, -7, -10,
    -- layer=1 filter=40 channel=14
    36, 28, 20, 11, 57, 65, 37, 84, 117,
    -- layer=1 filter=40 channel=15
    -18, -16, -17, 9, -4, -12, 17, -8, 10,
    -- layer=1 filter=40 channel=16
    -32, -5, -16, -11, 2, -17, 17, 19, -17,
    -- layer=1 filter=40 channel=17
    10, 7, 0, 4, 24, 20, 20, 16, 24,
    -- layer=1 filter=40 channel=18
    12, 6, 52, -4, 14, 29, -15, 30, 17,
    -- layer=1 filter=40 channel=19
    27, 54, 33, -6, 19, 27, -20, -7, -2,
    -- layer=1 filter=40 channel=20
    30, 24, 5, 4, 29, 14, -2, 37, 23,
    -- layer=1 filter=40 channel=21
    0, -11, 10, 0, 7, -14, 15, 2, 5,
    -- layer=1 filter=40 channel=22
    4, 25, 19, -19, 12, -11, -12, -4, -19,
    -- layer=1 filter=40 channel=23
    9, -11, 2, 12, 12, -2, 14, 16, -5,
    -- layer=1 filter=40 channel=24
    -21, -20, 1, -4, -10, 12, 0, 25, 1,
    -- layer=1 filter=40 channel=25
    -13, 18, 3, 11, 25, 65, 24, 49, 32,
    -- layer=1 filter=40 channel=26
    -6, -5, -29, -6, -7, -8, 23, 8, -14,
    -- layer=1 filter=40 channel=27
    33, 49, 32, -1, 3, 33, 2, 18, 18,
    -- layer=1 filter=40 channel=28
    -29, -20, -9, -14, -11, 3, 19, 7, 5,
    -- layer=1 filter=40 channel=29
    2, 25, 0, 18, 12, 32, 0, 0, 27,
    -- layer=1 filter=40 channel=30
    3, -9, 10, 19, 12, 11, 20, 3, 5,
    -- layer=1 filter=40 channel=31
    -15, -35, -5, 7, 1, 12, 12, -8, -9,
    -- layer=1 filter=40 channel=32
    3, 18, -10, 4, -9, -11, -11, -3, 3,
    -- layer=1 filter=40 channel=33
    26, 38, 14, 9, 25, 20, -15, 11, 25,
    -- layer=1 filter=40 channel=34
    -6, -20, -15, 4, 5, 16, 15, 32, 8,
    -- layer=1 filter=40 channel=35
    16, 2, 14, 25, 46, 31, 27, 46, 24,
    -- layer=1 filter=40 channel=36
    11, 4, 41, -23, 18, 2, -5, 12, 0,
    -- layer=1 filter=40 channel=37
    49, 59, 41, 40, 60, 43, 66, 64, 54,
    -- layer=1 filter=40 channel=38
    12, 10, -9, -23, -7, -1, -20, -7, 8,
    -- layer=1 filter=40 channel=39
    -5, -8, -23, -9, -16, -11, 4, 0, -9,
    -- layer=1 filter=40 channel=40
    8, -10, -9, 4, 8, -14, 20, 25, 7,
    -- layer=1 filter=40 channel=41
    25, 4, 6, -14, -6, -5, -22, -15, 1,
    -- layer=1 filter=40 channel=42
    -27, 2, 0, -1, -12, -7, -2, -13, -13,
    -- layer=1 filter=40 channel=43
    11, 19, -4, -12, 3, 22, -3, -10, 8,
    -- layer=1 filter=40 channel=44
    -4, -18, -24, -9, -14, -13, 8, -3, -13,
    -- layer=1 filter=40 channel=45
    50, 66, 56, 11, 67, 32, 18, 34, 47,
    -- layer=1 filter=40 channel=46
    29, 35, 44, 40, 53, 48, 12, 40, 42,
    -- layer=1 filter=40 channel=47
    -5, -21, -8, -12, 1, -22, -11, -8, 12,
    -- layer=1 filter=40 channel=48
    -24, -14, -30, -15, -22, -7, 2, 0, 16,
    -- layer=1 filter=40 channel=49
    1, -9, -14, 5, 0, -2, 11, 18, -9,
    -- layer=1 filter=40 channel=50
    50, 52, 44, 100, 74, 52, 39, 40, 22,
    -- layer=1 filter=40 channel=51
    29, 31, -1, 5, 23, 19, -13, 30, 20,
    -- layer=1 filter=40 channel=52
    6, -15, 13, 8, 0, -3, -6, -1, 18,
    -- layer=1 filter=40 channel=53
    -12, -26, 2, 3, -6, -25, 20, -3, 13,
    -- layer=1 filter=40 channel=54
    45, 35, 19, 29, 46, 55, 16, 45, 33,
    -- layer=1 filter=40 channel=55
    1, -3, -16, 1, -10, -15, -10, 4, 7,
    -- layer=1 filter=40 channel=56
    9, 25, 10, 20, 24, 38, 25, 49, 26,
    -- layer=1 filter=40 channel=57
    4, 12, 8, -19, -4, -15, 13, 11, -3,
    -- layer=1 filter=40 channel=58
    20, 13, -11, -15, -14, -11, -19, -15, -28,
    -- layer=1 filter=40 channel=59
    21, 24, 1, 4, -9, -3, -11, 10, -1,
    -- layer=1 filter=40 channel=60
    -22, -21, 4, 17, 1, -19, 12, 0, 15,
    -- layer=1 filter=40 channel=61
    12, 24, -16, 11, -1, 10, -6, 5, -12,
    -- layer=1 filter=40 channel=62
    -13, 0, -12, 2, 2, -1, -9, 10, 6,
    -- layer=1 filter=40 channel=63
    11, -12, -23, -5, 7, -9, 5, -19, 33,
    -- layer=1 filter=41 channel=0
    -15, -4, 13, -4, 16, 0, -9, 17, -8,
    -- layer=1 filter=41 channel=1
    14, 5, 7, -15, -8, -1, -4, -2, 12,
    -- layer=1 filter=41 channel=2
    -20, -7, -19, -22, -43, -29, -38, -15, -6,
    -- layer=1 filter=41 channel=3
    -28, -20, 0, -16, -13, -4, -3, -18, 19,
    -- layer=1 filter=41 channel=4
    18, -5, 1, 12, -9, 16, -11, 9, 11,
    -- layer=1 filter=41 channel=5
    12, -6, 5, 6, -15, -15, 19, -2, 19,
    -- layer=1 filter=41 channel=6
    10, 15, 2, -2, 24, -16, 25, 27, -16,
    -- layer=1 filter=41 channel=7
    -17, 2, 8, 15, -1, 0, -22, 4, -10,
    -- layer=1 filter=41 channel=8
    -8, 14, 12, -4, 7, 2, 7, -2, -15,
    -- layer=1 filter=41 channel=9
    -36, -45, -39, -30, -25, -12, -1, -6, 12,
    -- layer=1 filter=41 channel=10
    -20, -9, 6, 17, 0, -13, 16, 11, 8,
    -- layer=1 filter=41 channel=11
    -19, -31, -30, -2, -23, -28, -6, 0, 12,
    -- layer=1 filter=41 channel=12
    -75, -71, -73, -59, -48, -62, -26, -30, -57,
    -- layer=1 filter=41 channel=13
    -41, -6, -37, -17, -13, -1, -6, -5, 0,
    -- layer=1 filter=41 channel=14
    27, -7, 29, -9, -18, 11, -29, -48, -26,
    -- layer=1 filter=41 channel=15
    10, -26, 1, 5, 3, -5, 5, 2, 11,
    -- layer=1 filter=41 channel=16
    -27, -6, -35, 0, 5, 10, -8, 12, 1,
    -- layer=1 filter=41 channel=17
    18, 10, 2, -11, -3, -7, 41, 25, 35,
    -- layer=1 filter=41 channel=18
    18, -26, -21, 15, -14, 2, 0, -33, -23,
    -- layer=1 filter=41 channel=19
    68, 84, 40, 93, 84, 52, 72, 49, 37,
    -- layer=1 filter=41 channel=20
    -14, 4, -6, -21, -9, 4, 3, 25, 0,
    -- layer=1 filter=41 channel=21
    7, 10, 0, 4, 7, 8, 12, -13, 9,
    -- layer=1 filter=41 channel=22
    -18, 2, -15, -9, 0, -13, -6, -18, 19,
    -- layer=1 filter=41 channel=23
    9, -3, -12, -9, -4, -5, -28, 8, -4,
    -- layer=1 filter=41 channel=24
    -4, -25, -27, 0, 8, 0, 12, 14, 16,
    -- layer=1 filter=41 channel=25
    53, 30, 41, 17, 13, 27, 70, 36, 64,
    -- layer=1 filter=41 channel=26
    -15, 8, -10, 5, 5, 18, 14, 0, -3,
    -- layer=1 filter=41 channel=27
    16, 19, 13, 16, 0, 4, 16, 7, -13,
    -- layer=1 filter=41 channel=28
    -34, -36, -42, -23, -16, -24, 3, 10, 7,
    -- layer=1 filter=41 channel=29
    3, 3, 9, 17, 12, -1, -11, 8, -6,
    -- layer=1 filter=41 channel=30
    -9, -1, -25, -18, -11, -15, 10, 10, 9,
    -- layer=1 filter=41 channel=31
    -18, -9, -17, -9, -8, 1, 0, 18, 6,
    -- layer=1 filter=41 channel=32
    -16, 4, 7, 12, -14, -19, 20, 5, -9,
    -- layer=1 filter=41 channel=33
    -22, 3, -36, -22, 3, -13, 4, 23, -21,
    -- layer=1 filter=41 channel=34
    -11, 2, 10, -16, -13, -36, 18, 13, 30,
    -- layer=1 filter=41 channel=35
    7, 19, -13, 19, 0, 0, 30, 30, 27,
    -- layer=1 filter=41 channel=36
    1, 19, -9, -3, 25, -5, 2, -11, -9,
    -- layer=1 filter=41 channel=37
    13, -18, -11, -19, 30, 9, -17, 1, 12,
    -- layer=1 filter=41 channel=38
    -2, -26, -22, -12, -38, -18, -3, -23, -1,
    -- layer=1 filter=41 channel=39
    8, -9, 8, -6, 10, 18, -19, 16, -7,
    -- layer=1 filter=41 channel=40
    -13, 5, -12, -14, 2, -14, -21, -18, 13,
    -- layer=1 filter=41 channel=41
    -21, 6, 7, -18, -17, -22, 6, -12, 14,
    -- layer=1 filter=41 channel=42
    -5, 16, 23, 16, 9, 2, 7, 1, 4,
    -- layer=1 filter=41 channel=43
    0, -2, 42, 26, 36, 4, 35, 16, 10,
    -- layer=1 filter=41 channel=44
    -34, -25, -15, 0, -4, -1, 5, 1, 16,
    -- layer=1 filter=41 channel=45
    -4, 26, -2, 12, 26, -7, 21, 42, 3,
    -- layer=1 filter=41 channel=46
    1, 16, 37, -7, 2, 10, -24, 19, 7,
    -- layer=1 filter=41 channel=47
    16, 5, 18, -12, 10, 24, -5, -6, 16,
    -- layer=1 filter=41 channel=48
    -20, 6, 18, 15, 16, 3, -9, 3, 19,
    -- layer=1 filter=41 channel=49
    8, 10, -4, -17, -12, 3, -25, 12, -6,
    -- layer=1 filter=41 channel=50
    -26, -31, -41, -35, -53, -8, -15, 16, 3,
    -- layer=1 filter=41 channel=51
    -21, -4, -27, -15, -26, -14, -5, 7, 4,
    -- layer=1 filter=41 channel=52
    6, 11, 2, -21, 7, -23, -13, -13, -5,
    -- layer=1 filter=41 channel=53
    -1, 4, -15, -15, -11, -8, 22, 8, 11,
    -- layer=1 filter=41 channel=54
    -33, -3, -21, -26, 15, 0, 21, 16, -6,
    -- layer=1 filter=41 channel=55
    -16, -19, -37, -50, -36, -13, -8, -12, -5,
    -- layer=1 filter=41 channel=56
    -16, -9, -4, -1, -33, -6, 25, 31, 33,
    -- layer=1 filter=41 channel=57
    7, 15, 17, 14, 8, 5, 12, 17, 5,
    -- layer=1 filter=41 channel=58
    12, 6, 8, -12, 10, -3, 25, 21, -4,
    -- layer=1 filter=41 channel=59
    18, 12, 17, 9, 11, 26, 1, 24, 27,
    -- layer=1 filter=41 channel=60
    12, -8, 4, 15, -6, 23, -9, -7, 0,
    -- layer=1 filter=41 channel=61
    23, -1, 20, 7, 25, -12, 11, 7, 19,
    -- layer=1 filter=41 channel=62
    22, 50, 38, 35, 28, 45, 0, 44, 29,
    -- layer=1 filter=41 channel=63
    8, 6, 3, 15, 10, -5, 15, -16, -26,
    -- layer=1 filter=42 channel=0
    -37, -32, -16, -1, -9, 1, 3, 10, 41,
    -- layer=1 filter=42 channel=1
    -27, 2, -14, 9, 1, 20, 34, 16, 36,
    -- layer=1 filter=42 channel=2
    -1, 2, 12, 29, 26, 8, 38, 19, 10,
    -- layer=1 filter=42 channel=3
    -18, -5, -8, -4, -5, 1, 17, 33, 3,
    -- layer=1 filter=42 channel=4
    -8, -8, -12, 11, 18, -5, 4, -7, 8,
    -- layer=1 filter=42 channel=5
    -34, -11, -23, 3, 15, 21, 21, 13, 20,
    -- layer=1 filter=42 channel=6
    -36, -16, -29, -27, -81, -43, -55, -29, -12,
    -- layer=1 filter=42 channel=7
    0, -7, 0, -15, -3, 4, 8, 13, -5,
    -- layer=1 filter=42 channel=8
    11, 1, -1, -7, -3, 8, -12, 2, 16,
    -- layer=1 filter=42 channel=9
    -29, -2, -7, 4, -9, 27, 29, 6, 25,
    -- layer=1 filter=42 channel=10
    -45, -41, -53, -14, -23, -12, -3, 25, 20,
    -- layer=1 filter=42 channel=11
    2, -4, -16, -14, -12, 6, 15, -3, 13,
    -- layer=1 filter=42 channel=12
    -36, -12, -20, -18, -37, -37, 40, 39, 61,
    -- layer=1 filter=42 channel=13
    5, -5, -41, -1, -17, 5, -19, -24, 7,
    -- layer=1 filter=42 channel=14
    -34, -128, -90, -81, -55, -30, -47, -49, -62,
    -- layer=1 filter=42 channel=15
    -23, -16, 6, 9, 2, 5, 11, 12, 27,
    -- layer=1 filter=42 channel=16
    -14, 29, 28, 30, 26, 43, 46, 28, 11,
    -- layer=1 filter=42 channel=17
    37, -7, -28, 44, 10, 8, -33, -2, 0,
    -- layer=1 filter=42 channel=18
    1, -16, -2, 28, 6, 14, -33, -32, -19,
    -- layer=1 filter=42 channel=19
    17, 4, -27, 16, -46, -30, -32, -35, -22,
    -- layer=1 filter=42 channel=20
    -20, 0, -32, -12, -14, -4, 0, 9, 8,
    -- layer=1 filter=42 channel=21
    -8, 5, 6, 2, -12, 1, -13, -10, -16,
    -- layer=1 filter=42 channel=22
    -22, -7, -51, -3, 7, 13, -1, -4, -7,
    -- layer=1 filter=42 channel=23
    -11, -39, -11, -33, -3, 19, 14, 39, 16,
    -- layer=1 filter=42 channel=24
    -8, -33, -12, -13, -14, -1, 12, 9, 18,
    -- layer=1 filter=42 channel=25
    21, 1, 7, -21, -9, 36, -42, 1, 22,
    -- layer=1 filter=42 channel=26
    -30, -18, -24, -12, -2, 23, 9, 39, 29,
    -- layer=1 filter=42 channel=27
    4, -5, -9, 22, 23, 14, -6, 6, -16,
    -- layer=1 filter=42 channel=28
    -16, -24, -17, -5, -19, -4, -25, -33, -7,
    -- layer=1 filter=42 channel=29
    19, 9, -28, -9, -17, 3, 25, 3, 19,
    -- layer=1 filter=42 channel=30
    -1, 3, 27, 15, 46, 35, 48, 44, 21,
    -- layer=1 filter=42 channel=31
    -45, -33, -42, -18, -16, 16, 11, 38, 34,
    -- layer=1 filter=42 channel=32
    -12, 13, -3, -14, 5, -9, 5, 1, 18,
    -- layer=1 filter=42 channel=33
    -14, 15, 0, -7, -45, 11, 9, -5, 14,
    -- layer=1 filter=42 channel=34
    38, 9, 0, 26, 4, -13, -29, -17, -11,
    -- layer=1 filter=42 channel=35
    1, -32, -24, 9, 11, 21, -14, -3, -17,
    -- layer=1 filter=42 channel=36
    21, -1, -8, -5, -11, 14, 23, 21, 51,
    -- layer=1 filter=42 channel=37
    42, 96, 77, 86, 71, 56, 136, 111, 73,
    -- layer=1 filter=42 channel=38
    14, -22, -37, -18, 9, -18, 11, 19, 3,
    -- layer=1 filter=42 channel=39
    -19, -21, -20, -5, 3, 0, 20, 33, 41,
    -- layer=1 filter=42 channel=40
    -6, -10, -9, -23, 5, -8, 0, 15, 33,
    -- layer=1 filter=42 channel=41
    -13, -26, -30, -22, -1, -25, 25, 14, 29,
    -- layer=1 filter=42 channel=42
    -24, -48, -32, -28, -3, 5, 14, 44, 40,
    -- layer=1 filter=42 channel=43
    -19, -24, -11, -15, -4, -29, -5, -10, -31,
    -- layer=1 filter=42 channel=44
    -33, -34, -13, -19, -23, 10, -7, 0, 20,
    -- layer=1 filter=42 channel=45
    -37, -22, -17, -52, -81, -43, -28, -44, -4,
    -- layer=1 filter=42 channel=46
    44, 60, 59, 49, 39, 62, 109, 92, 54,
    -- layer=1 filter=42 channel=47
    -49, -39, -21, -29, -11, 5, 20, 43, 29,
    -- layer=1 filter=42 channel=48
    -28, -29, -24, -30, 8, 6, 14, 23, 40,
    -- layer=1 filter=42 channel=49
    -14, -26, 11, 14, 33, 30, 20, 35, 44,
    -- layer=1 filter=42 channel=50
    29, 63, 82, 72, 59, 50, 102, 43, 34,
    -- layer=1 filter=42 channel=51
    3, 12, 3, 12, -14, -6, 28, 29, 20,
    -- layer=1 filter=42 channel=52
    -17, -19, -23, -32, 4, 19, 0, 7, 31,
    -- layer=1 filter=42 channel=53
    -22, -25, -13, -24, 2, 3, 17, 20, 35,
    -- layer=1 filter=42 channel=54
    -56, -21, -46, -82, -78, -31, -25, -23, -23,
    -- layer=1 filter=42 channel=55
    -33, -11, -17, -28, -16, -10, -3, 3, 32,
    -- layer=1 filter=42 channel=56
    6, -11, -39, 9, -13, 0, -22, -8, -11,
    -- layer=1 filter=42 channel=57
    -13, -13, 4, 12, 7, 11, -3, -13, 13,
    -- layer=1 filter=42 channel=58
    -20, -19, -23, -24, -30, -40, -10, 3, 0,
    -- layer=1 filter=42 channel=59
    -1, -25, -56, 2, -21, -14, -2, 8, 18,
    -- layer=1 filter=42 channel=60
    -45, -20, -22, -17, -6, 5, 7, 31, 19,
    -- layer=1 filter=42 channel=61
    6, 7, -17, 2, -5, -2, 30, 34, 21,
    -- layer=1 filter=42 channel=62
    -45, -67, -46, -18, -8, 5, 16, 7, 42,
    -- layer=1 filter=42 channel=63
    -16, 5, 35, 18, 6, 22, 26, 47, 12,
    -- layer=1 filter=43 channel=0
    -13, 5, -5, 9, -11, 29, 2, 2, 23,
    -- layer=1 filter=43 channel=1
    -10, 25, 16, -7, 23, 0, 22, 6, 27,
    -- layer=1 filter=43 channel=2
    8, 11, -7, -4, -5, -19, -2, 14, -1,
    -- layer=1 filter=43 channel=3
    -9, -18, 17, -8, 1, 0, 13, 10, 7,
    -- layer=1 filter=43 channel=4
    -4, 12, -5, -18, -3, -15, -14, 14, -5,
    -- layer=1 filter=43 channel=5
    -26, -14, 30, -11, -2, 37, 12, 9, -1,
    -- layer=1 filter=43 channel=6
    63, -26, -60, 12, -39, -46, 18, -27, 4,
    -- layer=1 filter=43 channel=7
    2, -19, 4, -5, 3, 3, -20, 17, 2,
    -- layer=1 filter=43 channel=8
    0, 15, -14, 12, 3, -10, -6, -7, -10,
    -- layer=1 filter=43 channel=9
    -36, -26, -4, -10, 8, 0, -1, -9, 18,
    -- layer=1 filter=43 channel=10
    3, 4, 27, -8, 17, 29, 17, 29, 22,
    -- layer=1 filter=43 channel=11
    -4, -29, -6, -14, -3, -8, 13, -12, -8,
    -- layer=1 filter=43 channel=12
    11, -16, -7, 11, 6, -6, 9, -7, -4,
    -- layer=1 filter=43 channel=13
    -7, -27, 1, -25, -3, -18, -6, -17, -1,
    -- layer=1 filter=43 channel=14
    -26, -27, -19, -54, -73, -49, -78, -84, -71,
    -- layer=1 filter=43 channel=15
    4, 1, 28, -14, 20, 12, 9, 7, 28,
    -- layer=1 filter=43 channel=16
    -4, -9, 18, -4, 18, -10, 14, 29, 18,
    -- layer=1 filter=43 channel=17
    -16, -53, -73, -66, -89, -73, -60, -76, -61,
    -- layer=1 filter=43 channel=18
    55, 60, 15, 29, 63, -7, 4, -24, -35,
    -- layer=1 filter=43 channel=19
    5, -32, -21, 3, -16, -41, -13, -40, -13,
    -- layer=1 filter=43 channel=20
    14, -20, -29, 10, -22, -4, 7, -16, 5,
    -- layer=1 filter=43 channel=21
    -10, 12, -2, -12, -11, -4, -18, 17, -17,
    -- layer=1 filter=43 channel=22
    20, -6, -10, -4, -12, -10, -11, 19, -11,
    -- layer=1 filter=43 channel=23
    -10, -15, -9, -20, -14, 12, -4, -5, 6,
    -- layer=1 filter=43 channel=24
    -15, -22, -10, 1, -14, 10, 7, -6, 9,
    -- layer=1 filter=43 channel=25
    -50, -42, -57, -79, -68, -69, -51, -39, -58,
    -- layer=1 filter=43 channel=26
    3, -9, 26, 0, -7, -3, 11, 0, 20,
    -- layer=1 filter=43 channel=27
    -6, 20, 18, 4, 4, -16, -11, -7, -34,
    -- layer=1 filter=43 channel=28
    -11, -30, -29, -26, -14, -35, -5, -22, -15,
    -- layer=1 filter=43 channel=29
    25, 3, 39, 16, 11, 21, 4, 27, 22,
    -- layer=1 filter=43 channel=30
    9, 15, -4, -2, 3, 21, 4, 9, 6,
    -- layer=1 filter=43 channel=31
    -15, -34, 9, -8, -6, 18, -5, -12, 0,
    -- layer=1 filter=43 channel=32
    9, 5, -11, 10, -3, -17, 20, -12, 10,
    -- layer=1 filter=43 channel=33
    22, -30, -47, -10, -30, -53, -15, -8, -1,
    -- layer=1 filter=43 channel=34
    5, -37, -76, -28, -88, -77, -55, -59, -75,
    -- layer=1 filter=43 channel=35
    -50, -88, -89, -55, -123, -105, -73, -81, -77,
    -- layer=1 filter=43 channel=36
    -9, 3, 25, 29, 26, 9, 14, 0, -1,
    -- layer=1 filter=43 channel=37
    -24, -31, -34, -11, -5, -25, 5, -34, -73,
    -- layer=1 filter=43 channel=38
    -7, 13, 6, -10, 20, -9, -2, 10, 0,
    -- layer=1 filter=43 channel=39
    -7, 3, 5, -17, 23, 29, 12, 26, 20,
    -- layer=1 filter=43 channel=40
    3, -18, 11, -9, 11, 15, -12, 8, 11,
    -- layer=1 filter=43 channel=41
    4, 2, -1, 17, 1, 14, 15, -9, 0,
    -- layer=1 filter=43 channel=42
    -11, 4, 1, -7, -9, 26, 6, 6, 24,
    -- layer=1 filter=43 channel=43
    14, 5, 37, 13, 28, 44, 29, 39, 0,
    -- layer=1 filter=43 channel=44
    12, -9, -14, -23, 0, 15, 7, 16, 24,
    -- layer=1 filter=43 channel=45
    20, -51, -85, -19, -43, -52, -36, -39, -33,
    -- layer=1 filter=43 channel=46
    -19, -26, -22, -5, 0, -34, 10, -41, -59,
    -- layer=1 filter=43 channel=47
    -16, 0, 14, -15, -9, 28, -4, 0, 33,
    -- layer=1 filter=43 channel=48
    -28, -24, 23, -5, 9, 9, 0, 0, 25,
    -- layer=1 filter=43 channel=49
    -3, 1, 26, -12, 9, 33, 12, 1, 18,
    -- layer=1 filter=43 channel=50
    -34, -49, -28, -44, -50, -47, -29, -44, -78,
    -- layer=1 filter=43 channel=51
    -14, 10, 3, 22, 16, -10, -13, -10, 4,
    -- layer=1 filter=43 channel=52
    10, -9, 7, -23, 7, 14, 9, -9, 13,
    -- layer=1 filter=43 channel=53
    -4, -10, 14, -16, -13, -4, -1, 11, 25,
    -- layer=1 filter=43 channel=54
    -15, -68, -81, -38, -81, -41, -18, -29, -24,
    -- layer=1 filter=43 channel=55
    -2, -13, -5, -20, -15, 11, 3, 1, 25,
    -- layer=1 filter=43 channel=56
    -44, -79, -93, -84, -105, -105, -75, -75, -102,
    -- layer=1 filter=43 channel=57
    -15, -7, 15, 4, 6, -11, 14, 0, -8,
    -- layer=1 filter=43 channel=58
    8, 30, 18, 4, 26, 17, 20, 29, 5,
    -- layer=1 filter=43 channel=59
    7, -12, 20, -1, 19, 36, 0, 18, 30,
    -- layer=1 filter=43 channel=60
    -23, -9, 24, -5, 4, 26, -8, 18, 33,
    -- layer=1 filter=43 channel=61
    1, 23, 7, 5, -6, 6, -10, 24, 29,
    -- layer=1 filter=43 channel=62
    3, -4, 48, -4, 17, 40, 18, 20, 25,
    -- layer=1 filter=43 channel=63
    4, 42, 81, 42, 33, 52, 40, 42, 6,
    -- layer=1 filter=44 channel=0
    2, 17, 15, -18, 2, 17, -19, -7, 20,
    -- layer=1 filter=44 channel=1
    -29, -8, 3, -12, -19, -6, -1, -27, 13,
    -- layer=1 filter=44 channel=2
    -16, -44, -11, -15, -40, -37, -19, -34, -39,
    -- layer=1 filter=44 channel=3
    17, -11, -1, 16, 11, -8, -3, 24, 9,
    -- layer=1 filter=44 channel=4
    5, 3, 14, -14, 10, 6, -3, -10, -15,
    -- layer=1 filter=44 channel=5
    14, 26, 0, 7, 2, -8, -10, 39, -2,
    -- layer=1 filter=44 channel=6
    -1, 30, 87, 0, 18, 95, -46, 20, 93,
    -- layer=1 filter=44 channel=7
    -7, 0, 4, -7, -6, 16, -9, 8, 2,
    -- layer=1 filter=44 channel=8
    -18, 16, 10, 10, -13, 18, 9, -7, -4,
    -- layer=1 filter=44 channel=9
    1, 15, 2, 4, 13, -2, 9, 30, 18,
    -- layer=1 filter=44 channel=10
    9, 3, -11, -2, -11, -19, -15, 12, -22,
    -- layer=1 filter=44 channel=11
    -1, -11, -19, 0, 0, -5, -9, 8, 4,
    -- layer=1 filter=44 channel=12
    15, -43, 5, -4, -15, 12, 21, -5, 23,
    -- layer=1 filter=44 channel=13
    11, 0, -17, -4, 9, 16, -7, 16, -4,
    -- layer=1 filter=44 channel=14
    38, -5, 4, 35, -22, 0, -13, -20, -52,
    -- layer=1 filter=44 channel=15
    18, 10, 13, 0, 30, -8, 29, 11, 23,
    -- layer=1 filter=44 channel=16
    32, 14, -5, 8, 30, 4, 13, 22, 33,
    -- layer=1 filter=44 channel=17
    -36, -54, -19, -14, -36, -3, -17, -40, -43,
    -- layer=1 filter=44 channel=18
    24, 40, 36, 43, 30, 32, 52, 32, 61,
    -- layer=1 filter=44 channel=19
    -17, -26, 2, 21, 0, 24, 33, -25, 3,
    -- layer=1 filter=44 channel=20
    -29, 28, 34, -30, 18, 58, -8, 3, 17,
    -- layer=1 filter=44 channel=21
    14, 1, 12, 7, -13, 2, -3, 17, 16,
    -- layer=1 filter=44 channel=22
    -16, -8, 8, 15, -48, 10, 12, -22, -16,
    -- layer=1 filter=44 channel=23
    -28, 9, 6, -9, 12, 15, -36, 17, 22,
    -- layer=1 filter=44 channel=24
    30, 26, 4, 21, 9, 23, 18, 14, 3,
    -- layer=1 filter=44 channel=25
    -43, -58, -38, -4, -9, -70, -33, -9, -73,
    -- layer=1 filter=44 channel=26
    12, 10, -14, -19, 4, -2, 1, 3, 15,
    -- layer=1 filter=44 channel=27
    8, -16, 25, 18, -6, -3, 52, 54, 22,
    -- layer=1 filter=44 channel=28
    14, 19, -14, -18, 24, -12, -6, 26, 5,
    -- layer=1 filter=44 channel=29
    8, -2, 31, -19, -11, 37, -4, -12, 16,
    -- layer=1 filter=44 channel=30
    18, 25, 8, 25, 26, 6, 25, 16, 38,
    -- layer=1 filter=44 channel=31
    -26, 0, 10, -17, 0, 29, -17, 17, 20,
    -- layer=1 filter=44 channel=32
    -13, 15, 15, 14, 11, 3, -4, 10, 13,
    -- layer=1 filter=44 channel=33
    -24, 32, 28, -29, 27, 35, -39, 0, 41,
    -- layer=1 filter=44 channel=34
    -42, -82, -37, -21, -32, -44, -49, -61, -59,
    -- layer=1 filter=44 channel=35
    -33, -77, -53, -43, -90, -14, -84, -71, -84,
    -- layer=1 filter=44 channel=36
    0, 8, 30, 20, -15, 24, 32, 19, 26,
    -- layer=1 filter=44 channel=37
    -47, -3, -48, -53, -32, -7, -6, -26, -36,
    -- layer=1 filter=44 channel=38
    -49, -27, 0, -22, -53, -14, -13, -52, -27,
    -- layer=1 filter=44 channel=39
    8, -2, -14, 0, -2, -5, 2, 3, 13,
    -- layer=1 filter=44 channel=40
    3, -1, -5, -25, 24, -11, 6, -9, 14,
    -- layer=1 filter=44 channel=41
    -17, -6, 9, -8, 8, 6, -21, -24, 20,
    -- layer=1 filter=44 channel=42
    14, 4, -13, -13, 26, -2, -9, 22, 15,
    -- layer=1 filter=44 channel=43
    75, -31, 16, 52, -11, -42, 56, 43, -30,
    -- layer=1 filter=44 channel=44
    21, 7, 4, 27, 25, 29, 2, -1, 17,
    -- layer=1 filter=44 channel=45
    -33, 5, 42, -80, 28, 63, -54, 16, 64,
    -- layer=1 filter=44 channel=46
    -27, 6, -34, -56, -24, -29, -40, -27, -9,
    -- layer=1 filter=44 channel=47
    12, 21, 3, -17, 23, 10, -13, 5, 6,
    -- layer=1 filter=44 channel=48
    16, -15, 10, -19, 18, -19, -1, 19, 1,
    -- layer=1 filter=44 channel=49
    -4, 15, 10, -19, -16, 1, -16, 17, 12,
    -- layer=1 filter=44 channel=50
    -27, 48, -11, -42, -51, -40, -63, -47, -25,
    -- layer=1 filter=44 channel=51
    -41, -10, -3, -39, -19, 34, -8, -26, -2,
    -- layer=1 filter=44 channel=52
    2, 1, -11, -7, 0, 1, -1, -8, 19,
    -- layer=1 filter=44 channel=53
    -2, 23, 2, 25, 22, 13, 5, 3, 13,
    -- layer=1 filter=44 channel=54
    -79, 27, 22, -55, 33, 73, -77, 27, 37,
    -- layer=1 filter=44 channel=55
    -39, -3, -21, -12, -20, -2, -15, -28, 5,
    -- layer=1 filter=44 channel=56
    -19, -63, -61, -11, -49, -69, -44, -37, -86,
    -- layer=1 filter=44 channel=57
    -2, -12, 13, 5, 15, -1, -4, -12, -10,
    -- layer=1 filter=44 channel=58
    41, -18, -29, 41, -18, -42, 10, 3, -13,
    -- layer=1 filter=44 channel=59
    -31, -11, 0, -18, 10, 20, 8, -14, -10,
    -- layer=1 filter=44 channel=60
    -15, 16, 16, -6, -5, -12, -8, 25, -1,
    -- layer=1 filter=44 channel=61
    -28, 2, 27, -20, -22, 4, -27, 4, 31,
    -- layer=1 filter=44 channel=62
    15, 11, 22, 15, 31, -5, -15, -1, 10,
    -- layer=1 filter=44 channel=63
    28, -11, -10, 59, -14, -34, 36, 36, -68,
    -- layer=1 filter=45 channel=0
    10, 1, 20, -10, 0, -6, -5, -10, -14,
    -- layer=1 filter=45 channel=1
    -5, -18, -1, -1, -14, -4, -8, -9, -3,
    -- layer=1 filter=45 channel=2
    -8, -8, 0, 6, -18, 7, -12, -2, 0,
    -- layer=1 filter=45 channel=3
    27, 16, 4, -7, 9, 2, 2, 1, 11,
    -- layer=1 filter=45 channel=4
    3, 9, -14, 16, -9, -5, -2, -12, -8,
    -- layer=1 filter=45 channel=5
    4, 17, 0, -8, -15, 15, -18, -21, -16,
    -- layer=1 filter=45 channel=6
    -48, -39, -5, 7, -4, -29, -15, -11, 0,
    -- layer=1 filter=45 channel=7
    9, 5, 9, -10, 0, -4, 10, 15, -25,
    -- layer=1 filter=45 channel=8
    -7, 0, -14, -13, -13, -18, -14, -4, -13,
    -- layer=1 filter=45 channel=9
    8, 10, 1, -11, -8, -19, -7, 12, -12,
    -- layer=1 filter=45 channel=10
    17, -1, 11, -4, -1, 13, -6, 0, 12,
    -- layer=1 filter=45 channel=11
    17, 8, 11, -17, -3, -11, -3, 0, -9,
    -- layer=1 filter=45 channel=12
    14, 4, -13, 18, 33, 16, 31, 19, -5,
    -- layer=1 filter=45 channel=13
    21, 9, 7, 10, -7, 10, 0, -21, 7,
    -- layer=1 filter=45 channel=14
    61, -8, -4, 31, 38, 34, 25, 50, 43,
    -- layer=1 filter=45 channel=15
    -8, -4, 14, -4, -16, 0, 2, 3, -24,
    -- layer=1 filter=45 channel=16
    17, -17, 19, -19, -11, -15, -19, -33, -25,
    -- layer=1 filter=45 channel=17
    56, 59, 53, 24, 39, 20, 31, 2, 24,
    -- layer=1 filter=45 channel=18
    5, -2, -9, 1, 3, -9, 9, 9, 9,
    -- layer=1 filter=45 channel=19
    -6, -10, 7, 21, 13, 16, 8, 23, 19,
    -- layer=1 filter=45 channel=20
    3, 2, -13, 12, -4, 1, 4, -8, 7,
    -- layer=1 filter=45 channel=21
    -12, 3, 9, 0, -5, 9, 13, 14, 2,
    -- layer=1 filter=45 channel=22
    4, 24, 0, 24, -1, 21, -12, -1, 1,
    -- layer=1 filter=45 channel=23
    -3, 3, 18, 9, -19, 12, -9, -6, -22,
    -- layer=1 filter=45 channel=24
    23, 14, 7, 2, -13, 2, -17, -11, -8,
    -- layer=1 filter=45 channel=25
    53, 29, 26, 49, 53, 39, 9, 27, 38,
    -- layer=1 filter=45 channel=26
    -5, 25, 7, 7, -17, 1, -26, -14, -23,
    -- layer=1 filter=45 channel=27
    19, 31, 10, -6, 34, 16, -11, 20, 14,
    -- layer=1 filter=45 channel=28
    24, 19, 1, 5, 9, -13, 14, -11, -2,
    -- layer=1 filter=45 channel=29
    -15, -3, -21, 11, -3, -9, 15, -17, 1,
    -- layer=1 filter=45 channel=30
    -24, 8, -2, 2, -15, -6, -8, -12, -5,
    -- layer=1 filter=45 channel=31
    14, 2, 19, -11, -18, -7, -34, -14, -28,
    -- layer=1 filter=45 channel=32
    20, -16, 20, 13, 1, 7, -10, 14, -13,
    -- layer=1 filter=45 channel=33
    -19, -9, 28, -7, -20, 1, 4, -6, 14,
    -- layer=1 filter=45 channel=34
    8, 26, 3, 20, 17, -7, 16, 11, 6,
    -- layer=1 filter=45 channel=35
    30, 25, 15, 27, 43, 29, 12, 22, 11,
    -- layer=1 filter=45 channel=36
    20, -6, -6, 12, 10, 17, 16, 17, 18,
    -- layer=1 filter=45 channel=37
    -1, 18, 9, 0, 34, 21, 14, 12, 7,
    -- layer=1 filter=45 channel=38
    19, 3, -1, 13, 0, 16, 5, 8, 8,
    -- layer=1 filter=45 channel=39
    9, 10, 9, 6, 10, -1, -16, -19, 5,
    -- layer=1 filter=45 channel=40
    -3, 26, 13, -22, -9, -7, -30, -8, -18,
    -- layer=1 filter=45 channel=41
    -13, -2, 10, -4, -14, -14, 0, 5, -15,
    -- layer=1 filter=45 channel=42
    6, 5, 27, -14, 0, 10, -2, -9, 8,
    -- layer=1 filter=45 channel=43
    30, 9, 18, 35, 21, 11, 26, 28, 9,
    -- layer=1 filter=45 channel=44
    24, 29, 12, 13, -3, -7, -16, -11, 5,
    -- layer=1 filter=45 channel=45
    -52, -27, 20, -3, -30, 0, 1, 0, 29,
    -- layer=1 filter=45 channel=46
    -9, 35, 6, 18, 23, 4, -18, -5, -32,
    -- layer=1 filter=45 channel=47
    27, 11, 17, -8, -3, 9, -20, 2, 7,
    -- layer=1 filter=45 channel=48
    29, 25, 21, 12, -1, -13, -23, -10, -6,
    -- layer=1 filter=45 channel=49
    -10, -8, -3, -25, -5, 16, -29, 0, -13,
    -- layer=1 filter=45 channel=50
    36, 55, 45, 31, 24, 70, 55, 34, 40,
    -- layer=1 filter=45 channel=51
    5, -12, 7, -14, -3, -9, 4, 11, 7,
    -- layer=1 filter=45 channel=52
    0, 8, 13, -15, -8, -3, -5, 0, 2,
    -- layer=1 filter=45 channel=53
    0, 21, 12, 15, -2, 9, -5, -22, 12,
    -- layer=1 filter=45 channel=54
    -33, -20, 8, -12, -9, 1, 8, -1, 45,
    -- layer=1 filter=45 channel=55
    3, 18, 2, -15, -10, -19, -21, -18, 5,
    -- layer=1 filter=45 channel=56
    60, 62, 31, 46, 67, 20, 2, 8, 10,
    -- layer=1 filter=45 channel=57
    1, -1, -1, -3, 8, 12, -9, 8, -11,
    -- layer=1 filter=45 channel=58
    10, 1, -2, 19, 25, 18, -2, 20, 3,
    -- layer=1 filter=45 channel=59
    14, 0, 3, 26, 25, 10, -15, -3, -20,
    -- layer=1 filter=45 channel=60
    27, 17, -2, -19, -6, -11, -21, -20, -7,
    -- layer=1 filter=45 channel=61
    -27, 0, -12, 6, 18, 14, -17, -13, -18,
    -- layer=1 filter=45 channel=62
    -8, -3, 4, 8, 14, 17, -25, -7, 0,
    -- layer=1 filter=45 channel=63
    -16, -18, -20, 21, 20, 23, -7, 10, 13,
    -- layer=1 filter=46 channel=0
    24, 5, -2, -12, 18, 23, 4, 0, -8,
    -- layer=1 filter=46 channel=1
    14, 13, 22, -8, 28, -1, -18, -23, -4,
    -- layer=1 filter=46 channel=2
    30, 18, 25, -5, 12, 10, -6, -15, 0,
    -- layer=1 filter=46 channel=3
    -7, -38, -39, -6, -15, -32, 32, 32, 30,
    -- layer=1 filter=46 channel=4
    -16, 8, 4, -11, 12, 9, -12, -13, 16,
    -- layer=1 filter=46 channel=5
    1, -16, 3, -32, -19, 5, 10, 4, 21,
    -- layer=1 filter=46 channel=6
    -83, -59, -76, -62, -66, -47, -40, -64, -55,
    -- layer=1 filter=46 channel=7
    -11, 9, 11, -7, -6, 6, -7, -10, 9,
    -- layer=1 filter=46 channel=8
    -8, 8, 18, 15, -15, -7, -11, -10, -13,
    -- layer=1 filter=46 channel=9
    -32, -55, -36, 7, -24, -18, 69, 75, 73,
    -- layer=1 filter=46 channel=10
    -2, 23, 33, 10, 10, 1, 9, 8, 15,
    -- layer=1 filter=46 channel=11
    -35, -38, -49, -11, -20, -24, 48, 36, 33,
    -- layer=1 filter=46 channel=12
    36, 57, 46, 31, 41, 47, 45, 15, 43,
    -- layer=1 filter=46 channel=13
    -9, -33, -51, 4, -25, -19, 48, 22, 29,
    -- layer=1 filter=46 channel=14
    -4, 19, 5, -42, -61, -31, -33, -67, -39,
    -- layer=1 filter=46 channel=15
    -34, -31, -32, -4, -9, -2, 38, 24, 17,
    -- layer=1 filter=46 channel=16
    -18, -14, -33, 0, -21, -7, 44, 61, 38,
    -- layer=1 filter=46 channel=17
    0, -23, 12, 4, 4, 1, -4, -8, 0,
    -- layer=1 filter=46 channel=18
    3, -6, -28, -34, -34, -35, -33, -32, -39,
    -- layer=1 filter=46 channel=19
    56, 67, 63, 53, 45, 67, 17, 15, 24,
    -- layer=1 filter=46 channel=20
    7, -4, 0, 11, 10, 8, -6, 0, -7,
    -- layer=1 filter=46 channel=21
    2, -2, -4, 4, 17, -3, -1, -15, -6,
    -- layer=1 filter=46 channel=22
    17, 42, 24, 11, 14, 6, -26, -13, -1,
    -- layer=1 filter=46 channel=23
    -13, -30, -16, 5, -14, -8, 23, 12, 1,
    -- layer=1 filter=46 channel=24
    -4, -29, -32, -7, 0, -16, 46, 47, 16,
    -- layer=1 filter=46 channel=25
    44, 29, 32, 55, 40, 57, 13, -2, 2,
    -- layer=1 filter=46 channel=26
    -17, 3, -10, 0, -16, -11, 22, 15, 5,
    -- layer=1 filter=46 channel=27
    67, 73, 79, 45, 59, 55, 34, 23, 11,
    -- layer=1 filter=46 channel=28
    -9, -44, -42, -3, -3, -19, 59, 69, 42,
    -- layer=1 filter=46 channel=29
    24, 42, 19, 21, 28, 21, -31, -21, -2,
    -- layer=1 filter=46 channel=30
    -30, -22, -8, 9, -2, 23, 67, 74, 73,
    -- layer=1 filter=46 channel=31
    -19, -19, 5, -5, -13, -30, 2, -7, -6,
    -- layer=1 filter=46 channel=32
    13, 22, -4, 3, 0, 0, 10, 17, 2,
    -- layer=1 filter=46 channel=33
    -14, -29, 0, -28, -20, 4, -19, -7, 6,
    -- layer=1 filter=46 channel=34
    -20, -50, -21, -21, -14, -21, -7, -31, -14,
    -- layer=1 filter=46 channel=35
    -27, -5, 12, 11, 11, 21, -8, -16, -17,
    -- layer=1 filter=46 channel=36
    36, 58, 40, 3, 10, 31, -47, -35, -34,
    -- layer=1 filter=46 channel=37
    -17, -7, 1, 4, 20, -8, 0, 8, 14,
    -- layer=1 filter=46 channel=38
    6, 39, 17, 3, 10, 27, 10, 9, 0,
    -- layer=1 filter=46 channel=39
    28, 5, 14, 11, 10, 13, 9, -13, 2,
    -- layer=1 filter=46 channel=40
    10, -22, -8, -7, -14, -10, 32, 23, 27,
    -- layer=1 filter=46 channel=41
    42, 21, 32, 16, 29, 38, 4, -5, 18,
    -- layer=1 filter=46 channel=42
    -3, 26, 6, -12, -7, 0, -13, -14, -6,
    -- layer=1 filter=46 channel=43
    -12, 4, 13, -18, 1, 9, 8, 0, -1,
    -- layer=1 filter=46 channel=44
    -35, -42, -17, -4, 6, -24, 32, 31, 41,
    -- layer=1 filter=46 channel=45
    -57, -65, -67, -48, -66, -81, -49, -64, -52,
    -- layer=1 filter=46 channel=46
    0, 5, 6, -25, -38, 10, -30, -18, 0,
    -- layer=1 filter=46 channel=47
    6, -9, 19, -5, -28, 7, -16, -9, 5,
    -- layer=1 filter=46 channel=48
    6, 19, 19, -12, -2, -5, 1, -9, 11,
    -- layer=1 filter=46 channel=49
    9, 0, 4, -8, 10, 7, -13, -7, 10,
    -- layer=1 filter=46 channel=50
    12, -18, -14, -6, 17, 1, 42, 26, 68,
    -- layer=1 filter=46 channel=51
    8, 26, 6, 10, 11, 33, -8, 2, 14,
    -- layer=1 filter=46 channel=52
    12, 0, 7, -16, -10, -15, 25, -7, 4,
    -- layer=1 filter=46 channel=53
    -22, -10, 3, -11, -17, -17, 7, 3, 9,
    -- layer=1 filter=46 channel=54
    -81, -125, -72, -56, -105, -67, -19, -18, -26,
    -- layer=1 filter=46 channel=55
    6, 17, 2, 14, 8, 1, 1, 28, 27,
    -- layer=1 filter=46 channel=56
    -4, -4, 0, 16, 13, -1, 22, -1, -4,
    -- layer=1 filter=46 channel=57
    14, -5, -5, -16, -16, 7, -5, 7, -12,
    -- layer=1 filter=46 channel=58
    0, 20, 17, 37, 37, 14, -11, -9, 15,
    -- layer=1 filter=46 channel=59
    34, 29, 30, 23, 33, 38, -26, -23, -4,
    -- layer=1 filter=46 channel=60
    -7, -20, 0, -14, 6, -11, -8, 22, 3,
    -- layer=1 filter=46 channel=61
    3, 24, 30, -14, 21, 24, -20, -30, -30,
    -- layer=1 filter=46 channel=62
    2, 30, 28, 4, 24, 21, -40, -26, 0,
    -- layer=1 filter=46 channel=63
    -69, -45, -42, -68, -53, -54, -28, -27, -33,
    -- layer=1 filter=47 channel=0
    -17, 4, -19, -14, 14, -2, 3, -17, 1,
    -- layer=1 filter=47 channel=1
    0, -12, 8, -17, 1, 2, 13, 14, -12,
    -- layer=1 filter=47 channel=2
    -21, 0, 12, 3, 8, 9, -16, -14, 1,
    -- layer=1 filter=47 channel=3
    6, 5, -8, -1, -17, -12, 4, -15, 5,
    -- layer=1 filter=47 channel=4
    4, 8, -7, -3, 10, -6, 14, 5, 9,
    -- layer=1 filter=47 channel=5
    -18, -2, 12, -16, 4, 5, -11, -18, -15,
    -- layer=1 filter=47 channel=6
    -8, -13, -7, -17, -16, -7, 1, 2, 10,
    -- layer=1 filter=47 channel=7
    -7, 3, -9, -8, 6, -1, -8, -5, 1,
    -- layer=1 filter=47 channel=8
    14, 11, -4, -1, -13, -9, -7, -4, -4,
    -- layer=1 filter=47 channel=9
    1, -18, 15, 0, -6, 16, 6, 11, -3,
    -- layer=1 filter=47 channel=10
    11, 6, -17, 9, -19, 15, -6, 15, 6,
    -- layer=1 filter=47 channel=11
    -8, -18, 5, -14, -14, -7, -14, -11, -17,
    -- layer=1 filter=47 channel=12
    -4, 6, -1, 16, 12, 16, -12, 3, 11,
    -- layer=1 filter=47 channel=13
    5, -16, -5, -11, 15, 15, -16, -1, -1,
    -- layer=1 filter=47 channel=14
    9, 4, -17, -6, 7, 14, 10, 7, 5,
    -- layer=1 filter=47 channel=15
    -10, -14, -10, 0, -4, -16, 6, -13, 4,
    -- layer=1 filter=47 channel=16
    13, -2, 11, 9, 4, 1, -14, 14, 7,
    -- layer=1 filter=47 channel=17
    14, -13, 15, -8, 20, -4, 16, -7, 9,
    -- layer=1 filter=47 channel=18
    -14, 5, 0, 3, -14, 3, -4, 11, -20,
    -- layer=1 filter=47 channel=19
    -4, 9, -9, 5, 0, -14, 3, 13, -7,
    -- layer=1 filter=47 channel=20
    0, 12, -18, 0, 13, -9, 1, 12, 10,
    -- layer=1 filter=47 channel=21
    -14, -7, 13, 6, -5, -12, 9, -12, -16,
    -- layer=1 filter=47 channel=22
    2, -23, 4, -14, -18, -2, -18, -21, 11,
    -- layer=1 filter=47 channel=23
    -7, -18, -2, -12, -18, 9, 5, -19, -1,
    -- layer=1 filter=47 channel=24
    -21, -14, 12, -3, -19, 15, 4, 9, 17,
    -- layer=1 filter=47 channel=25
    -17, -14, -11, -18, -11, -3, -24, -9, -17,
    -- layer=1 filter=47 channel=26
    0, -10, 3, -16, 3, -2, -5, -9, 6,
    -- layer=1 filter=47 channel=27
    -16, -17, 2, -23, -8, -22, -16, 6, 12,
    -- layer=1 filter=47 channel=28
    11, -5, 14, 2, 1, -18, 6, 10, 12,
    -- layer=1 filter=47 channel=29
    -4, -18, 3, -4, -4, 12, -2, 12, -5,
    -- layer=1 filter=47 channel=30
    -13, 0, -9, -18, -17, -12, 12, 7, -12,
    -- layer=1 filter=47 channel=31
    -15, -12, -12, 8, -6, -14, 3, 6, 10,
    -- layer=1 filter=47 channel=32
    12, -9, -8, 16, 11, -2, 6, 16, -10,
    -- layer=1 filter=47 channel=33
    -7, -12, 10, 5, 0, 4, 10, -3, -2,
    -- layer=1 filter=47 channel=34
    14, 14, -2, -11, 2, 12, 17, -3, -11,
    -- layer=1 filter=47 channel=35
    -17, 10, -11, 8, -1, 5, -5, 7, -11,
    -- layer=1 filter=47 channel=36
    -4, 11, -2, 0, -6, 10, -8, -11, -10,
    -- layer=1 filter=47 channel=37
    0, -12, -10, -14, -12, 12, 19, -16, 6,
    -- layer=1 filter=47 channel=38
    5, -20, -23, -1, 14, -22, -7, -3, -9,
    -- layer=1 filter=47 channel=39
    13, 16, 3, -8, 2, -15, -20, 1, 2,
    -- layer=1 filter=47 channel=40
    -1, 6, 14, 0, 3, 8, 3, 16, 11,
    -- layer=1 filter=47 channel=41
    -3, -6, -17, 6, -8, -8, -8, -12, 4,
    -- layer=1 filter=47 channel=42
    1, 3, 12, -5, 8, 0, 16, -13, 6,
    -- layer=1 filter=47 channel=43
    0, 13, 12, -20, 0, -4, -16, -18, 15,
    -- layer=1 filter=47 channel=44
    -1, -11, 16, 15, 15, -3, 1, -18, -13,
    -- layer=1 filter=47 channel=45
    0, -6, -20, 2, -3, -19, -6, 9, -5,
    -- layer=1 filter=47 channel=46
    -14, 17, -10, -8, 0, 1, -12, 12, 8,
    -- layer=1 filter=47 channel=47
    0, -8, 9, 13, -14, -18, 1, -16, -7,
    -- layer=1 filter=47 channel=48
    3, -7, -16, -15, -15, -16, -12, 0, -8,
    -- layer=1 filter=47 channel=49
    10, 8, -17, 1, 16, 0, -14, -5, 0,
    -- layer=1 filter=47 channel=50
    -10, 2, 17, -14, -16, -9, 2, 6, -8,
    -- layer=1 filter=47 channel=51
    -6, -10, -16, -7, -22, -6, 5, 11, -10,
    -- layer=1 filter=47 channel=52
    -15, 1, 9, -6, -4, 0, 8, 6, -19,
    -- layer=1 filter=47 channel=53
    1, 4, -9, -15, 0, -11, -12, -17, 12,
    -- layer=1 filter=47 channel=54
    -23, 10, -1, -2, -13, -9, 4, -20, 4,
    -- layer=1 filter=47 channel=55
    -12, -1, -4, 2, 6, -18, 5, 0, 0,
    -- layer=1 filter=47 channel=56
    13, -16, -12, -6, -6, 17, 12, -17, -16,
    -- layer=1 filter=47 channel=57
    -12, -8, 5, -11, -16, -6, -10, -14, 7,
    -- layer=1 filter=47 channel=58
    -14, 5, -10, 15, 0, -17, -13, -13, -19,
    -- layer=1 filter=47 channel=59
    -7, -1, -14, 5, 9, -12, -5, 15, -10,
    -- layer=1 filter=47 channel=60
    -10, 3, -14, -4, -7, 0, 15, 3, 5,
    -- layer=1 filter=47 channel=61
    2, 6, -2, -11, 1, 0, -20, -4, 0,
    -- layer=1 filter=47 channel=62
    -17, 13, 12, 14, -12, -15, -1, -3, 1,
    -- layer=1 filter=47 channel=63
    -7, -12, -18, 10, 10, 14, 7, 0, -16,
    -- layer=1 filter=48 channel=0
    -2, -15, 4, -31, -11, 24, 5, 2, 6,
    -- layer=1 filter=48 channel=1
    -9, -15, 10, -13, -28, -10, 5, -6, 5,
    -- layer=1 filter=48 channel=2
    -15, 6, 10, -14, -8, 9, -8, -9, -2,
    -- layer=1 filter=48 channel=3
    5, 8, 34, -12, 0, 16, 5, -11, 1,
    -- layer=1 filter=48 channel=4
    14, -5, -2, 5, 12, -1, 18, -9, 8,
    -- layer=1 filter=48 channel=5
    6, 30, 29, -30, -2, 17, -21, 5, 26,
    -- layer=1 filter=48 channel=6
    52, 69, 0, 61, 134, 4, 57, 100, 37,
    -- layer=1 filter=48 channel=7
    11, 12, 0, 3, -11, 3, 19, -2, -10,
    -- layer=1 filter=48 channel=8
    -2, -15, -6, -7, 5, 10, 1, 12, 13,
    -- layer=1 filter=48 channel=9
    -13, -1, 17, -26, 4, 20, -16, 3, 9,
    -- layer=1 filter=48 channel=10
    -17, 30, 8, -15, 21, 35, -28, -3, 21,
    -- layer=1 filter=48 channel=11
    -7, -1, 16, -12, -5, 20, 8, -9, 3,
    -- layer=1 filter=48 channel=12
    7, 1, 8, 7, -10, 0, 7, 18, 29,
    -- layer=1 filter=48 channel=13
    2, 9, 29, 0, -7, 28, -13, -9, 12,
    -- layer=1 filter=48 channel=14
    23, 25, 24, 11, 20, 17, 20, 38, 31,
    -- layer=1 filter=48 channel=15
    7, 3, 34, -28, 3, 16, -15, -5, 9,
    -- layer=1 filter=48 channel=16
    -10, 0, 37, -25, 8, 17, -25, -25, 9,
    -- layer=1 filter=48 channel=17
    -7, 11, -18, 7, -1, -20, -19, -30, -23,
    -- layer=1 filter=48 channel=18
    -20, -4, -36, -5, 0, -40, 1, 7, -18,
    -- layer=1 filter=48 channel=19
    29, 31, -11, -1, 10, -11, 12, -2, -19,
    -- layer=1 filter=48 channel=20
    10, -16, 17, 29, 13, 0, 19, 20, 8,
    -- layer=1 filter=48 channel=21
    2, 0, 9, -17, 4, 16, -8, 12, -12,
    -- layer=1 filter=48 channel=22
    1, 0, -2, 13, 15, 11, 13, 8, 17,
    -- layer=1 filter=48 channel=23
    -22, -8, 14, -15, -16, 25, -12, -17, -15,
    -- layer=1 filter=48 channel=24
    0, 19, 21, -7, 7, 19, 5, 12, 4,
    -- layer=1 filter=48 channel=25
    30, 16, -1, -12, 23, 0, -39, 0, 20,
    -- layer=1 filter=48 channel=26
    -19, -4, 31, 1, -19, 23, -15, -4, 0,
    -- layer=1 filter=48 channel=27
    22, 33, 16, 26, 27, 25, 3, 12, 41,
    -- layer=1 filter=48 channel=28
    0, 11, 34, 2, 13, 15, -4, -2, 28,
    -- layer=1 filter=48 channel=29
    -14, 7, 1, 7, 4, 6, 18, -11, -23,
    -- layer=1 filter=48 channel=30
    -4, -9, 8, -7, -13, -6, -12, -17, 7,
    -- layer=1 filter=48 channel=31
    4, -14, 25, -21, -28, -6, 22, 10, -15,
    -- layer=1 filter=48 channel=32
    17, 14, -3, 1, 13, -7, -3, -12, -5,
    -- layer=1 filter=48 channel=33
    1, 26, -12, 21, 53, -25, 35, 54, 1,
    -- layer=1 filter=48 channel=34
    18, 3, -38, 11, 0, -45, -7, -13, -10,
    -- layer=1 filter=48 channel=35
    10, -6, -35, -4, -4, -19, -4, -7, 4,
    -- layer=1 filter=48 channel=36
    -9, 17, -1, -15, -13, -5, -21, 19, -14,
    -- layer=1 filter=48 channel=37
    -1, -42, -15, 15, -12, -40, 28, 4, -37,
    -- layer=1 filter=48 channel=38
    0, 9, -2, 19, 15, -7, 18, -4, -2,
    -- layer=1 filter=48 channel=39
    -19, 11, 23, -7, 6, 17, -16, -6, 15,
    -- layer=1 filter=48 channel=40
    -22, -1, 10, -11, -18, 14, -6, -27, 3,
    -- layer=1 filter=48 channel=41
    5, -15, -18, 16, -6, -2, 0, 11, -16,
    -- layer=1 filter=48 channel=42
    -23, -6, -6, -30, -25, 16, 0, -4, 12,
    -- layer=1 filter=48 channel=43
    35, 48, 38, 38, 74, 45, 44, 69, 67,
    -- layer=1 filter=48 channel=44
    -4, -9, 27, -24, 4, 0, 2, -14, 20,
    -- layer=1 filter=48 channel=45
    14, 18, 16, 53, 66, 7, 76, 109, 15,
    -- layer=1 filter=48 channel=46
    -38, -62, -7, -27, -30, -18, 27, -11, -39,
    -- layer=1 filter=48 channel=47
    -10, -14, 29, -15, -8, 16, -24, -6, 1,
    -- layer=1 filter=48 channel=48
    7, 14, 26, -18, -15, 4, -9, -8, -11,
    -- layer=1 filter=48 channel=49
    -14, 4, 9, -25, -33, 22, 12, -16, -22,
    -- layer=1 filter=48 channel=50
    2, -44, -24, 3, -51, -41, 1, -14, -37,
    -- layer=1 filter=48 channel=51
    0, -7, 0, 4, 1, 0, 2, 26, -29,
    -- layer=1 filter=48 channel=52
    4, 12, 9, 6, 10, 28, -13, 5, 3,
    -- layer=1 filter=48 channel=53
    -17, 1, 31, -25, 5, 30, 0, -21, 19,
    -- layer=1 filter=48 channel=54
    40, 46, 72, 89, 105, 65, 62, 118, 55,
    -- layer=1 filter=48 channel=55
    -27, -14, 10, 5, -25, 7, 12, -4, -21,
    -- layer=1 filter=48 channel=56
    1, 9, -37, -10, -15, -14, -31, -19, 8,
    -- layer=1 filter=48 channel=57
    -18, 13, -11, 12, -6, -7, 1, -10, 15,
    -- layer=1 filter=48 channel=58
    38, 48, 4, 2, 42, 9, -2, 24, 25,
    -- layer=1 filter=48 channel=59
    19, 0, 5, 4, -5, 7, 0, 9, -4,
    -- layer=1 filter=48 channel=60
    -11, 7, 3, -17, 5, 11, -15, -5, 20,
    -- layer=1 filter=48 channel=61
    5, -1, -12, 2, -11, -24, 8, 16, -2,
    -- layer=1 filter=48 channel=62
    14, 21, 5, -24, -16, 1, -18, -19, 8,
    -- layer=1 filter=48 channel=63
    69, 52, 7, 82, 108, 76, 68, 91, 84,
    -- layer=1 filter=49 channel=0
    8, 25, 15, -7, 6, 19, 3, -14, -16,
    -- layer=1 filter=49 channel=1
    -23, -8, 8, 10, 0, 10, -12, -18, -11,
    -- layer=1 filter=49 channel=2
    -4, 3, 5, 7, -5, -10, -11, -10, 13,
    -- layer=1 filter=49 channel=3
    -10, -12, 10, 10, -15, 13, 12, 12, -15,
    -- layer=1 filter=49 channel=4
    17, -4, 14, -14, 11, 17, 2, -13, 0,
    -- layer=1 filter=49 channel=5
    9, 5, -22, -18, 0, -18, -2, 10, -20,
    -- layer=1 filter=49 channel=6
    -54, -83, -10, -82, -35, -39, -58, -43, -9,
    -- layer=1 filter=49 channel=7
    0, 4, 4, 7, 12, 0, -11, 10, -14,
    -- layer=1 filter=49 channel=8
    -7, -6, 13, 16, 13, 16, -10, 8, 4,
    -- layer=1 filter=49 channel=9
    9, 9, 16, 22, 15, 8, -9, 2, 11,
    -- layer=1 filter=49 channel=10
    9, 29, -3, -17, 12, 10, 2, 3, -9,
    -- layer=1 filter=49 channel=11
    4, -14, 5, 2, 16, -5, 8, 6, 7,
    -- layer=1 filter=49 channel=12
    4, -20, -4, -10, -21, -10, -12, -36, 2,
    -- layer=1 filter=49 channel=13
    8, 1, 10, 13, -7, 5, 0, -12, -4,
    -- layer=1 filter=49 channel=14
    11, -29, -67, 2, -32, -18, -49, -60, -45,
    -- layer=1 filter=49 channel=15
    15, 23, 10, 1, 6, 8, -4, 9, 5,
    -- layer=1 filter=49 channel=16
    -8, 2, -7, 3, -4, 9, 9, 0, 6,
    -- layer=1 filter=49 channel=17
    16, -17, -4, -15, -22, -1, 1, -32, -3,
    -- layer=1 filter=49 channel=18
    31, 32, 22, 22, 3, 11, 19, -1, 1,
    -- layer=1 filter=49 channel=19
    12, -27, 7, 14, 0, 14, 11, 11, 9,
    -- layer=1 filter=49 channel=20
    -7, 9, 11, -24, -18, -14, 16, 1, 21,
    -- layer=1 filter=49 channel=21
    15, 14, -12, 5, -11, -15, 12, 13, 6,
    -- layer=1 filter=49 channel=22
    -11, -3, -4, 12, -6, 19, 0, -15, 2,
    -- layer=1 filter=49 channel=23
    20, 23, 30, 12, -11, 9, 4, 8, 13,
    -- layer=1 filter=49 channel=24
    9, -3, 3, 1, -2, 11, 6, 15, 17,
    -- layer=1 filter=49 channel=25
    10, 2, -14, 0, -26, -2, 4, 6, -24,
    -- layer=1 filter=49 channel=26
    -2, 6, -4, 6, 7, 16, -7, -10, 10,
    -- layer=1 filter=49 channel=27
    -7, -8, -23, 0, 1, -11, 30, 25, -3,
    -- layer=1 filter=49 channel=28
    22, 3, 2, -16, 15, 2, 34, 9, 12,
    -- layer=1 filter=49 channel=29
    -24, -15, -15, -8, -26, -6, 2, -3, -7,
    -- layer=1 filter=49 channel=30
    -4, -2, -23, 6, -16, -11, 20, -11, 0,
    -- layer=1 filter=49 channel=31
    9, 11, 6, -12, 7, -11, -15, -13, 2,
    -- layer=1 filter=49 channel=32
    -5, 1, 0, 12, 0, -4, 18, 1, 15,
    -- layer=1 filter=49 channel=33
    -8, -23, -15, -30, -29, -37, -17, 6, 0,
    -- layer=1 filter=49 channel=34
    -12, -12, -1, -34, -36, -39, -3, -64, -45,
    -- layer=1 filter=49 channel=35
    22, 3, 21, -16, -58, -11, -2, -51, -24,
    -- layer=1 filter=49 channel=36
    13, 17, 10, 27, 0, 29, 21, 12, 0,
    -- layer=1 filter=49 channel=37
    -63, -85, -61, -84, -77, -94, -57, -89, -63,
    -- layer=1 filter=49 channel=38
    -5, 0, 21, 3, -9, 2, 29, 0, 7,
    -- layer=1 filter=49 channel=39
    12, 11, 6, -13, -7, 9, -2, 6, 11,
    -- layer=1 filter=49 channel=40
    -4, 14, 6, 3, 0, 7, -18, -7, 11,
    -- layer=1 filter=49 channel=41
    -7, -7, 25, -17, 12, -3, 8, -15, 13,
    -- layer=1 filter=49 channel=42
    -4, 22, 22, -1, 24, -9, -20, -3, -15,
    -- layer=1 filter=49 channel=43
    15, 5, -46, 10, 32, -21, 17, 22, -22,
    -- layer=1 filter=49 channel=44
    3, 0, -7, 7, -2, 2, 18, 0, -12,
    -- layer=1 filter=49 channel=45
    -63, -60, -1, -72, -65, -53, -62, -16, -20,
    -- layer=1 filter=49 channel=46
    -79, -79, -29, -75, -71, -70, -73, -59, -71,
    -- layer=1 filter=49 channel=47
    12, 0, 18, -18, -13, 8, -34, -22, -14,
    -- layer=1 filter=49 channel=48
    27, 30, 19, 4, 11, 21, -11, 11, -8,
    -- layer=1 filter=49 channel=49
    -13, 7, 7, -10, -9, 14, 0, -21, -5,
    -- layer=1 filter=49 channel=50
    -39, -62, -61, -65, -81, -68, -86, -70, -54,
    -- layer=1 filter=49 channel=51
    -27, -29, -16, -1, -20, -15, -19, 14, -5,
    -- layer=1 filter=49 channel=52
    13, 0, -17, -11, -6, 8, -14, 5, 7,
    -- layer=1 filter=49 channel=53
    2, 23, -12, 1, -12, -18, -23, 4, -5,
    -- layer=1 filter=49 channel=54
    -81, -93, -29, -57, -39, -35, -41, -21, 5,
    -- layer=1 filter=49 channel=55
    -3, 5, 9, 0, -19, 21, -10, -1, 15,
    -- layer=1 filter=49 channel=56
    0, 0, -2, -24, -37, -31, 5, -15, -25,
    -- layer=1 filter=49 channel=57
    -7, 6, 17, -2, 6, 9, -13, -14, -3,
    -- layer=1 filter=49 channel=58
    25, -15, -8, 29, 7, -9, 24, 7, -15,
    -- layer=1 filter=49 channel=59
    29, 7, 28, 22, 21, 1, 11, -2, 25,
    -- layer=1 filter=49 channel=60
    9, 19, -8, 11, 7, 0, -2, -4, -23,
    -- layer=1 filter=49 channel=61
    -18, 8, 8, 11, 10, 24, 0, -10, 20,
    -- layer=1 filter=49 channel=62
    29, 31, 27, 19, 9, 15, -3, 9, -20,
    -- layer=1 filter=49 channel=63
    -41, -26, -74, -13, -30, -53, -11, 14, -54,
    -- layer=1 filter=50 channel=0
    -8, -1, 9, -9, -19, 3, -9, -1, -18,
    -- layer=1 filter=50 channel=1
    -19, -3, 14, -6, -11, 9, -1, -18, -5,
    -- layer=1 filter=50 channel=2
    -12, 13, 10, -22, -8, -1, 13, -14, -16,
    -- layer=1 filter=50 channel=3
    -16, -19, 5, -15, -3, -7, 13, -6, -6,
    -- layer=1 filter=50 channel=4
    12, 11, 14, -7, -5, 1, 16, 7, 15,
    -- layer=1 filter=50 channel=5
    8, 1, 12, -7, -3, -16, 13, 8, -10,
    -- layer=1 filter=50 channel=6
    4, -8, -9, -7, -20, -24, -9, 1, 6,
    -- layer=1 filter=50 channel=7
    4, -2, -7, -15, 9, -6, -3, 7, -18,
    -- layer=1 filter=50 channel=8
    -16, -7, -17, -14, -17, 8, -14, -8, -9,
    -- layer=1 filter=50 channel=9
    -7, 0, 1, -2, -5, -3, -7, 10, 3,
    -- layer=1 filter=50 channel=10
    16, -14, -5, 4, 6, -9, -6, 11, 8,
    -- layer=1 filter=50 channel=11
    -21, -14, -8, 5, 1, -10, 7, -2, 4,
    -- layer=1 filter=50 channel=12
    -11, 2, -4, 4, -15, 11, 1, -14, -3,
    -- layer=1 filter=50 channel=13
    -13, -18, 8, 11, 4, 9, -1, 3, 16,
    -- layer=1 filter=50 channel=14
    17, -6, -5, -7, 13, -4, 1, 9, 12,
    -- layer=1 filter=50 channel=15
    14, -7, 0, 9, 10, 1, -7, 10, -13,
    -- layer=1 filter=50 channel=16
    1, 12, -20, -10, -14, 10, 1, -14, 0,
    -- layer=1 filter=50 channel=17
    9, 13, 12, -8, 0, -8, 7, -4, 4,
    -- layer=1 filter=50 channel=18
    5, 4, 2, 7, -7, -23, -1, -24, -9,
    -- layer=1 filter=50 channel=19
    -9, 14, -30, -4, -5, -12, 13, -6, 5,
    -- layer=1 filter=50 channel=20
    8, 11, -11, 3, -3, -16, 1, -2, -6,
    -- layer=1 filter=50 channel=21
    17, -7, -17, 0, 0, 6, 13, 4, -7,
    -- layer=1 filter=50 channel=22
    7, -17, -14, -18, -15, -11, 9, 7, -18,
    -- layer=1 filter=50 channel=23
    14, 6, 10, -7, -17, 10, -3, 4, -19,
    -- layer=1 filter=50 channel=24
    -12, 11, -4, -11, -2, 7, -10, -13, -4,
    -- layer=1 filter=50 channel=25
    -18, -6, -9, -11, -11, -6, -1, -5, 25,
    -- layer=1 filter=50 channel=26
    -14, 2, -12, -19, -6, 5, 3, -20, -1,
    -- layer=1 filter=50 channel=27
    8, 12, 2, -20, -8, 0, -21, -4, -19,
    -- layer=1 filter=50 channel=28
    -10, -17, -20, 2, -10, 10, 4, -11, -9,
    -- layer=1 filter=50 channel=29
    5, 7, -3, -6, -6, -23, 15, -20, -18,
    -- layer=1 filter=50 channel=30
    -3, -18, -16, -16, 2, 2, -14, -20, 0,
    -- layer=1 filter=50 channel=31
    5, -2, -5, 7, 5, 3, -9, -17, 0,
    -- layer=1 filter=50 channel=32
    2, 1, 6, -2, -13, 8, -1, 12, -17,
    -- layer=1 filter=50 channel=33
    -2, -10, -17, -13, -5, 12, -6, 9, -10,
    -- layer=1 filter=50 channel=34
    -19, -6, -9, -19, -17, -9, 20, 0, -8,
    -- layer=1 filter=50 channel=35
    -5, -10, 2, 10, 3, -17, 18, 14, 8,
    -- layer=1 filter=50 channel=36
    4, 7, -3, 19, 11, -6, -4, -16, -19,
    -- layer=1 filter=50 channel=37
    6, 0, 8, 7, 5, 7, 0, -20, -13,
    -- layer=1 filter=50 channel=38
    9, -27, -7, -10, -17, -17, -4, -25, -4,
    -- layer=1 filter=50 channel=39
    -12, -13, -16, -10, -4, 17, -4, -8, 0,
    -- layer=1 filter=50 channel=40
    -10, -18, 13, -11, -4, -17, -6, 3, 11,
    -- layer=1 filter=50 channel=41
    9, 2, 4, -2, 11, 9, -13, -23, 0,
    -- layer=1 filter=50 channel=42
    -14, 4, -18, -17, -2, -4, -21, -11, -14,
    -- layer=1 filter=50 channel=43
    4, -15, -7, -19, -8, 4, -18, -9, -17,
    -- layer=1 filter=50 channel=44
    -7, -1, 4, -19, -1, 15, 10, 12, -19,
    -- layer=1 filter=50 channel=45
    -23, -8, -13, 13, 0, -17, -14, -11, -17,
    -- layer=1 filter=50 channel=46
    13, 17, -8, -15, 5, 7, 16, -15, -19,
    -- layer=1 filter=50 channel=47
    -10, 1, 14, -5, -2, 15, 0, 5, 3,
    -- layer=1 filter=50 channel=48
    12, 1, -14, -6, -17, 15, 0, 9, -10,
    -- layer=1 filter=50 channel=49
    -3, 10, -1, 2, 8, -13, -15, 12, -20,
    -- layer=1 filter=50 channel=50
    -9, -11, 13, -5, 1, 2, 19, -3, 0,
    -- layer=1 filter=50 channel=51
    3, -17, -19, 13, -12, -1, -13, 0, -20,
    -- layer=1 filter=50 channel=52
    -2, 4, -9, 0, 11, -1, 0, 11, -4,
    -- layer=1 filter=50 channel=53
    -3, -8, -20, -2, -14, 13, -22, 3, -19,
    -- layer=1 filter=50 channel=54
    -4, 6, -8, -7, -23, -26, 9, -7, -9,
    -- layer=1 filter=50 channel=55
    14, -13, -3, 14, -15, 14, -3, -17, 12,
    -- layer=1 filter=50 channel=56
    -25, 12, -11, -21, 9, -6, 12, -6, 6,
    -- layer=1 filter=50 channel=57
    -10, 0, 18, 2, -12, -10, -8, 4, 10,
    -- layer=1 filter=50 channel=58
    16, -3, -3, 14, -4, 9, 18, 4, -10,
    -- layer=1 filter=50 channel=59
    10, -14, -8, 12, 11, -5, 4, -15, 10,
    -- layer=1 filter=50 channel=60
    -16, -13, -4, -18, 2, 0, -21, 13, -3,
    -- layer=1 filter=50 channel=61
    -24, -11, -15, -12, -19, -18, 7, -18, 5,
    -- layer=1 filter=50 channel=62
    2, 5, -14, -13, 4, 13, -3, 13, -13,
    -- layer=1 filter=50 channel=63
    5, -16, 2, 0, -20, 1, -13, -10, 0,
    -- layer=1 filter=51 channel=0
    -18, 15, -12, -7, 9, -17, 6, -5, -16,
    -- layer=1 filter=51 channel=1
    15, 7, -15, -4, 6, -18, -15, 12, -15,
    -- layer=1 filter=51 channel=2
    4, -1, 11, -7, -1, -19, -11, 4, -12,
    -- layer=1 filter=51 channel=3
    -15, -7, 16, -12, 13, 13, 5, -16, 10,
    -- layer=1 filter=51 channel=4
    -14, 1, 11, -9, 0, 12, -3, -12, 5,
    -- layer=1 filter=51 channel=5
    5, -12, 2, -2, 14, 7, 5, 0, 13,
    -- layer=1 filter=51 channel=6
    -4, 1, -11, 4, 8, -19, -22, -18, 4,
    -- layer=1 filter=51 channel=7
    4, -4, -5, -14, -16, 16, -4, 16, 10,
    -- layer=1 filter=51 channel=8
    0, 1, -10, 14, 4, 15, 14, -1, -3,
    -- layer=1 filter=51 channel=9
    0, 15, 0, -13, 1, -9, -16, -11, -1,
    -- layer=1 filter=51 channel=10
    16, -9, -1, -8, -16, -7, 12, 9, 12,
    -- layer=1 filter=51 channel=11
    -15, 16, -6, -19, -8, -1, -12, -16, 2,
    -- layer=1 filter=51 channel=12
    5, -4, -1, 5, 10, -6, -5, 11, 1,
    -- layer=1 filter=51 channel=13
    -17, -10, -11, 16, -16, 0, 7, -8, -2,
    -- layer=1 filter=51 channel=14
    2, 6, 13, -10, 15, 9, 13, -15, -9,
    -- layer=1 filter=51 channel=15
    7, -5, -10, -18, 0, -9, -8, -10, -5,
    -- layer=1 filter=51 channel=16
    -8, 6, -10, -20, -15, 13, -2, -13, 3,
    -- layer=1 filter=51 channel=17
    5, -15, -5, -8, -19, 7, 11, 10, -16,
    -- layer=1 filter=51 channel=18
    -15, -12, -2, -23, 9, -10, -3, -26, -7,
    -- layer=1 filter=51 channel=19
    -5, -21, -10, -15, 3, -2, 4, 0, -15,
    -- layer=1 filter=51 channel=20
    -15, -1, -16, 0, -7, 14, -1, -10, -6,
    -- layer=1 filter=51 channel=21
    -3, -9, -1, -13, 14, 11, 1, -2, -15,
    -- layer=1 filter=51 channel=22
    10, 11, 4, 5, -17, -6, -20, 15, -19,
    -- layer=1 filter=51 channel=23
    -12, 6, 2, 10, -8, -4, 14, -2, 7,
    -- layer=1 filter=51 channel=24
    13, 0, 14, 1, 15, -15, 0, 13, -7,
    -- layer=1 filter=51 channel=25
    12, 9, -19, -4, -18, -10, -19, -8, -4,
    -- layer=1 filter=51 channel=26
    8, 8, 0, -10, -15, -12, 11, 4, -18,
    -- layer=1 filter=51 channel=27
    -2, -6, 6, -14, 16, -9, 4, 15, -19,
    -- layer=1 filter=51 channel=28
    -8, 14, -4, -13, 1, 14, -10, -3, -4,
    -- layer=1 filter=51 channel=29
    1, -6, -9, -9, 10, -8, 9, 12, -11,
    -- layer=1 filter=51 channel=30
    -2, -17, 4, 6, -6, -3, -9, -9, -3,
    -- layer=1 filter=51 channel=31
    -2, 8, 4, 0, -1, 14, -9, -4, -16,
    -- layer=1 filter=51 channel=32
    -12, -18, -14, 9, -17, -12, -4, -11, -10,
    -- layer=1 filter=51 channel=33
    -14, 14, -9, 5, -11, -13, -13, -11, -19,
    -- layer=1 filter=51 channel=34
    -1, -6, -5, -15, 8, -20, -14, -12, -6,
    -- layer=1 filter=51 channel=35
    17, -12, -12, -7, 10, -1, -13, 3, 2,
    -- layer=1 filter=51 channel=36
    -13, -3, -5, 0, 12, -1, -8, 15, -3,
    -- layer=1 filter=51 channel=37
    -9, 0, 14, 14, -12, -1, 13, -12, 9,
    -- layer=1 filter=51 channel=38
    -18, 9, -8, -16, 10, -3, 0, -2, -15,
    -- layer=1 filter=51 channel=39
    9, -16, -9, 13, -17, -11, -6, -10, -20,
    -- layer=1 filter=51 channel=40
    10, -15, -11, -1, -15, -9, 15, 2, 6,
    -- layer=1 filter=51 channel=41
    8, -10, -5, 2, -8, 5, -16, 12, 13,
    -- layer=1 filter=51 channel=42
    -8, 2, 10, 3, 12, 10, 14, -1, 15,
    -- layer=1 filter=51 channel=43
    0, -13, -6, 6, 8, -13, -9, -2, -8,
    -- layer=1 filter=51 channel=44
    -13, -2, 7, -7, 9, -16, 12, -5, 0,
    -- layer=1 filter=51 channel=45
    14, -1, -2, -18, 6, -8, -14, 9, 10,
    -- layer=1 filter=51 channel=46
    13, 1, -1, 8, 6, -15, 12, 9, -17,
    -- layer=1 filter=51 channel=47
    -15, -1, -13, -1, -4, -14, 3, 0, -8,
    -- layer=1 filter=51 channel=48
    -1, 1, -1, -7, -13, -10, -11, -3, -16,
    -- layer=1 filter=51 channel=49
    4, -7, 3, -12, 5, -17, -9, -14, -15,
    -- layer=1 filter=51 channel=50
    4, -14, 3, 2, -16, -18, 14, -20, 18,
    -- layer=1 filter=51 channel=51
    12, -15, -11, -12, -8, 10, -9, 0, 1,
    -- layer=1 filter=51 channel=52
    -19, 15, 4, 4, 2, -8, 8, 0, -6,
    -- layer=1 filter=51 channel=53
    1, 15, 12, 13, 1, 11, -8, -11, -18,
    -- layer=1 filter=51 channel=54
    -14, -10, -4, 0, 0, -20, -13, 9, -11,
    -- layer=1 filter=51 channel=55
    -7, 2, 9, -1, -2, -8, -12, 17, -7,
    -- layer=1 filter=51 channel=56
    3, 3, -9, 5, -20, 8, 11, 18, -16,
    -- layer=1 filter=51 channel=57
    -12, -1, 4, 15, 17, 11, -3, -1, -18,
    -- layer=1 filter=51 channel=58
    -11, -10, 15, -19, -18, -19, 10, 14, 3,
    -- layer=1 filter=51 channel=59
    -3, -9, -5, -7, -4, -20, 4, 6, -1,
    -- layer=1 filter=51 channel=60
    8, -14, 13, -19, -14, 6, -10, -12, -18,
    -- layer=1 filter=51 channel=61
    -10, -7, 16, 10, -9, -5, -18, 6, -22,
    -- layer=1 filter=51 channel=62
    10, 0, -18, 14, -18, -9, 1, 9, -3,
    -- layer=1 filter=51 channel=63
    -5, -1, -4, -12, 9, 6, -7, 12, -2,
    -- layer=1 filter=52 channel=0
    -16, -17, 13, -24, -18, 1, 6, -14, -7,
    -- layer=1 filter=52 channel=1
    8, 3, 2, 2, -2, -8, 0, 9, -12,
    -- layer=1 filter=52 channel=2
    17, 21, 29, 12, 27, 17, 35, 33, 22,
    -- layer=1 filter=52 channel=3
    -2, -31, 3, 0, 11, 10, -17, 7, 22,
    -- layer=1 filter=52 channel=4
    -7, 9, -9, 10, 1, 13, 17, -15, 16,
    -- layer=1 filter=52 channel=5
    -23, -37, 5, 0, -30, -1, -33, -25, 4,
    -- layer=1 filter=52 channel=6
    -9, 9, 5, 11, 18, 0, 38, 27, 9,
    -- layer=1 filter=52 channel=7
    22, 18, 24, 20, 11, 2, 11, 23, 8,
    -- layer=1 filter=52 channel=8
    1, -1, 17, -10, 4, -1, 9, 14, -7,
    -- layer=1 filter=52 channel=9
    7, -37, -29, -12, 13, -13, 2, 0, 26,
    -- layer=1 filter=52 channel=10
    -32, -18, 14, -21, -38, -13, -8, -22, 18,
    -- layer=1 filter=52 channel=11
    19, -6, 2, 15, 14, 7, 27, 27, 9,
    -- layer=1 filter=52 channel=12
    4, 0, -25, -15, -7, -35, 4, -5, -5,
    -- layer=1 filter=52 channel=13
    -15, -30, -31, -9, -11, 0, 23, -14, 23,
    -- layer=1 filter=52 channel=14
    -17, 11, -11, 0, -25, 3, -7, -5, -49,
    -- layer=1 filter=52 channel=15
    -12, -26, -12, -14, -29, 21, -5, -24, 2,
    -- layer=1 filter=52 channel=16
    -9, -9, -6, 15, -8, -7, 15, 9, 5,
    -- layer=1 filter=52 channel=17
    -28, -41, -9, -59, -81, -47, -39, -71, -65,
    -- layer=1 filter=52 channel=18
    102, 82, 80, 95, 79, 49, 67, 83, 66,
    -- layer=1 filter=52 channel=19
    28, 39, 35, 41, 47, 14, 32, 10, 43,
    -- layer=1 filter=52 channel=20
    1, -4, -6, 18, 0, -6, 31, -5, -31,
    -- layer=1 filter=52 channel=21
    0, 3, -6, -3, 11, 4, 7, 7, 16,
    -- layer=1 filter=52 channel=22
    8, 34, 5, 23, 18, -7, 22, 11, 12,
    -- layer=1 filter=52 channel=23
    -6, -44, -43, 10, -38, -13, 4, -21, 1,
    -- layer=1 filter=52 channel=24
    -9, -22, -13, 18, 24, 38, -1, 7, 2,
    -- layer=1 filter=52 channel=25
    17, -19, 36, -36, -21, 3, -45, -58, -7,
    -- layer=1 filter=52 channel=26
    -27, -6, 3, 13, 11, 14, 19, 0, 12,
    -- layer=1 filter=52 channel=27
    39, 32, 12, 34, 7, 47, 16, 22, 37,
    -- layer=1 filter=52 channel=28
    -2, -17, -12, 3, -10, 11, 27, 18, 10,
    -- layer=1 filter=52 channel=29
    -16, -21, -38, -8, 5, -5, 12, 2, 20,
    -- layer=1 filter=52 channel=30
    2, -5, 30, 13, 5, 0, 31, -4, 26,
    -- layer=1 filter=52 channel=31
    -29, -41, -35, 1, -18, -27, 3, -12, -1,
    -- layer=1 filter=52 channel=32
    -20, -12, 0, 12, 11, -10, 5, -24, 9,
    -- layer=1 filter=52 channel=33
    -34, -28, -36, 17, 0, -31, 12, 3, 8,
    -- layer=1 filter=52 channel=34
    -25, -59, -44, -75, -95, -94, -6, -77, -77,
    -- layer=1 filter=52 channel=35
    -51, -38, -39, -51, -57, -56, -47, -55, -50,
    -- layer=1 filter=52 channel=36
    -26, -18, -15, -25, -18, -20, -17, 0, 2,
    -- layer=1 filter=52 channel=37
    51, -2, -1, 51, 25, -8, 24, 13, 23,
    -- layer=1 filter=52 channel=38
    16, 19, 13, 7, 32, 6, 27, 31, 25,
    -- layer=1 filter=52 channel=39
    -19, -32, 4, -27, 6, 10, -6, -11, -13,
    -- layer=1 filter=52 channel=40
    -26, -32, -1, 19, -34, -14, -3, 6, -16,
    -- layer=1 filter=52 channel=41
    10, -18, -32, 8, 4, -15, 13, 20, -12,
    -- layer=1 filter=52 channel=42
    -19, -9, 12, -30, -3, 0, -13, -6, 6,
    -- layer=1 filter=52 channel=43
    -5, 13, 51, -1, 22, 45, -24, 27, 24,
    -- layer=1 filter=52 channel=44
    -19, -40, -34, -14, -5, -20, -11, -10, -16,
    -- layer=1 filter=52 channel=45
    25, -4, -12, 19, 19, -12, 46, 36, 17,
    -- layer=1 filter=52 channel=46
    -13, -48, -17, 8, -37, 3, 32, 7, 9,
    -- layer=1 filter=52 channel=47
    -38, -33, -18, -12, -11, 11, -19, 2, 4,
    -- layer=1 filter=52 channel=48
    -28, -26, -2, -4, -28, 15, -3, 2, 4,
    -- layer=1 filter=52 channel=49
    -10, -29, -4, -13, -5, 8, -6, -5, 3,
    -- layer=1 filter=52 channel=50
    -38, -97, -77, -10, -51, -77, -21, -23, 2,
    -- layer=1 filter=52 channel=51
    30, 8, -16, 9, 17, -23, 19, -16, 3,
    -- layer=1 filter=52 channel=52
    -14, -21, -16, 14, -4, 0, 3, -1, 9,
    -- layer=1 filter=52 channel=53
    -28, -42, -17, -27, -25, 1, -14, -19, 14,
    -- layer=1 filter=52 channel=54
    2, -51, -22, 42, 8, -51, 64, -13, -6,
    -- layer=1 filter=52 channel=55
    -9, -21, -37, 7, -16, -32, 17, 1, -24,
    -- layer=1 filter=52 channel=56
    -38, -65, -19, -85, -95, -56, -51, -73, -39,
    -- layer=1 filter=52 channel=57
    -17, -10, -1, 4, 7, -12, 3, -16, -11,
    -- layer=1 filter=52 channel=58
    -2, 2, 7, -46, -15, 20, -1, -4, -12,
    -- layer=1 filter=52 channel=59
    -14, -7, 19, -14, -2, 1, 16, -8, 19,
    -- layer=1 filter=52 channel=60
    0, -12, 3, -11, -13, 20, 4, 0, 3,
    -- layer=1 filter=52 channel=61
    -11, 16, -4, -7, -4, 8, 10, 21, 8,
    -- layer=1 filter=52 channel=62
    -8, -16, 9, 3, -14, 3, 3, 12, 26,
    -- layer=1 filter=52 channel=63
    -26, 25, 47, -1, 28, 41, -5, 51, 33,
    -- layer=1 filter=53 channel=0
    8, 7, 13, -11, 5, -14, 10, 9, 11,
    -- layer=1 filter=53 channel=1
    -13, -14, -2, -20, -27, -16, -7, -14, 3,
    -- layer=1 filter=53 channel=2
    -1, 17, 11, -12, -4, 5, 8, 3, 11,
    -- layer=1 filter=53 channel=3
    12, 0, -20, -9, 22, 0, 22, 23, 20,
    -- layer=1 filter=53 channel=4
    -5, -13, -1, 1, 6, 9, 7, 0, 11,
    -- layer=1 filter=53 channel=5
    -1, -13, 3, 6, 1, 0, 3, -13, 11,
    -- layer=1 filter=53 channel=6
    -24, -34, 27, -24, -43, -49, -51, -38, -37,
    -- layer=1 filter=53 channel=7
    -9, -17, -13, 4, 20, 15, -15, -4, 12,
    -- layer=1 filter=53 channel=8
    -6, -2, -18, 0, 9, -7, 6, -19, 8,
    -- layer=1 filter=53 channel=9
    22, -9, 16, 7, 21, 15, 23, 34, 34,
    -- layer=1 filter=53 channel=10
    -8, 3, 16, -9, 3, 12, -25, -23, -19,
    -- layer=1 filter=53 channel=11
    1, 9, -20, 25, 24, 15, 19, 21, 2,
    -- layer=1 filter=53 channel=12
    41, 73, 70, 3, -11, 23, -14, -31, 13,
    -- layer=1 filter=53 channel=13
    21, -4, -22, 27, 9, 20, 5, 0, 2,
    -- layer=1 filter=53 channel=14
    30, 32, 12, 46, 65, 13, 62, 50, 76,
    -- layer=1 filter=53 channel=15
    -14, -14, -10, 8, 2, 3, 28, 3, 14,
    -- layer=1 filter=53 channel=16
    -21, -1, 0, 18, -6, 6, 35, 14, 10,
    -- layer=1 filter=53 channel=17
    8, 10, 25, 3, 28, 34, 5, 4, 13,
    -- layer=1 filter=53 channel=18
    11, -5, -10, -5, 2, 7, 19, 35, 27,
    -- layer=1 filter=53 channel=19
    -15, -5, -3, -41, -13, -29, -38, -47, -10,
    -- layer=1 filter=53 channel=20
    36, 22, 14, 22, 10, 15, 0, 4, 27,
    -- layer=1 filter=53 channel=21
    2, -12, -15, -8, 12, -1, -17, 2, 15,
    -- layer=1 filter=53 channel=22
    -7, 18, 17, -14, 9, 11, 6, 0, 10,
    -- layer=1 filter=53 channel=23
    -12, -19, -17, 12, 9, -19, 0, -5, -12,
    -- layer=1 filter=53 channel=24
    5, -3, -10, 23, 17, 8, 26, 6, 32,
    -- layer=1 filter=53 channel=25
    19, 29, 18, 30, 44, 29, 15, -9, 30,
    -- layer=1 filter=53 channel=26
    -18, 0, 11, -6, -14, 9, 9, 16, 18,
    -- layer=1 filter=53 channel=27
    -1, -23, 0, -5, -12, -24, -19, 1, 1,
    -- layer=1 filter=53 channel=28
    20, -8, -17, 27, 16, 33, 23, 6, 0,
    -- layer=1 filter=53 channel=29
    5, 44, 18, -14, -8, 28, 14, 17, 5,
    -- layer=1 filter=53 channel=30
    9, -15, 11, 1, 16, 26, 18, 30, 20,
    -- layer=1 filter=53 channel=31
    -2, -31, -7, -1, -3, -8, 11, 11, -13,
    -- layer=1 filter=53 channel=32
    1, 12, 1, 0, 3, 5, -9, 16, -11,
    -- layer=1 filter=53 channel=33
    6, -25, -2, -15, -22, -16, 8, -27, -17,
    -- layer=1 filter=53 channel=34
    23, 12, 2, 14, 18, 19, 0, -5, 19,
    -- layer=1 filter=53 channel=35
    35, 23, 14, 34, 52, 10, -17, -13, 5,
    -- layer=1 filter=53 channel=36
    28, 32, 51, -14, 7, 46, 39, 36, 41,
    -- layer=1 filter=53 channel=37
    57, 38, 30, 63, 42, 17, 58, 71, 62,
    -- layer=1 filter=53 channel=38
    21, 28, 25, 4, -4, 17, -18, 11, 19,
    -- layer=1 filter=53 channel=39
    12, 13, 21, -22, 0, 7, -5, -6, 0,
    -- layer=1 filter=53 channel=40
    5, -10, -8, 3, 11, -4, -1, 4, -13,
    -- layer=1 filter=53 channel=41
    -24, -15, 13, -37, -11, 0, -37, -27, -26,
    -- layer=1 filter=53 channel=42
    -12, 4, -9, -20, 13, 3, -4, -15, -14,
    -- layer=1 filter=53 channel=43
    -12, 4, -18, -55, 6, 4, -60, -66, -22,
    -- layer=1 filter=53 channel=44
    4, -26, -12, 17, -4, -7, -6, 6, -2,
    -- layer=1 filter=53 channel=45
    7, 1, 1, -18, -27, -15, -6, -23, -30,
    -- layer=1 filter=53 channel=46
    0, 23, 3, 46, 3, 1, 31, 47, 52,
    -- layer=1 filter=53 channel=47
    -16, -15, 4, 6, 3, -11, 18, -7, 16,
    -- layer=1 filter=53 channel=48
    -4, -5, 1, -16, 0, -13, 11, 1, 7,
    -- layer=1 filter=53 channel=49
    -12, -14, -18, -12, -8, 7, 29, -5, -2,
    -- layer=1 filter=53 channel=50
    30, 74, 30, 40, 52, 55, 18, 9, 47,
    -- layer=1 filter=53 channel=51
    12, 24, 35, -4, 9, 17, 5, 2, 21,
    -- layer=1 filter=53 channel=52
    3, -16, -6, 14, -19, -10, 21, 9, -19,
    -- layer=1 filter=53 channel=53
    11, 0, -8, -9, 13, -2, 9, 11, -4,
    -- layer=1 filter=53 channel=54
    -3, -31, 14, 9, -28, -31, -22, -57, -48,
    -- layer=1 filter=53 channel=55
    -22, -6, -11, -6, -22, -26, 9, -28, 2,
    -- layer=1 filter=53 channel=56
    52, 32, 44, 69, 76, 55, 21, 18, 48,
    -- layer=1 filter=53 channel=57
    -7, 5, 0, 7, 5, -5, -12, 11, 16,
    -- layer=1 filter=53 channel=58
    -1, 9, 15, -54, -26, -8, -41, -67, -34,
    -- layer=1 filter=53 channel=59
    -14, -13, 17, -26, -6, -4, -33, -35, -22,
    -- layer=1 filter=53 channel=60
    15, -13, 14, 6, 16, 4, 14, 19, 13,
    -- layer=1 filter=53 channel=61
    -39, -33, 18, -39, -45, -18, -25, -21, 4,
    -- layer=1 filter=53 channel=62
    -16, -16, 3, -21, -36, -24, -32, -37, -16,
    -- layer=1 filter=53 channel=63
    -37, 0, -27, -66, -32, 0, -67, -48, -4,
    -- layer=1 filter=54 channel=0
    -13, 7, 12, -9, -10, 1, 7, -21, -21,
    -- layer=1 filter=54 channel=1
    -18, 4, -13, -12, 6, 3, 17, 24, 15,
    -- layer=1 filter=54 channel=2
    -5, 11, 1, 0, 3, 8, 10, 30, 21,
    -- layer=1 filter=54 channel=3
    3, 19, 0, 0, 14, 7, -22, -29, -20,
    -- layer=1 filter=54 channel=4
    7, -2, 5, -14, 13, 6, 14, -3, -16,
    -- layer=1 filter=54 channel=5
    -9, -1, 15, 0, 7, 20, -23, -4, 0,
    -- layer=1 filter=54 channel=6
    -17, -34, -22, -39, -85, -65, -42, -82, -103,
    -- layer=1 filter=54 channel=7
    -8, 9, 9, -17, -2, -2, -16, 1, -5,
    -- layer=1 filter=54 channel=8
    11, -14, 16, 1, 15, -9, -16, 10, 15,
    -- layer=1 filter=54 channel=9
    20, 4, -11, 1, -3, -13, -3, -8, -21,
    -- layer=1 filter=54 channel=10
    -10, -5, -7, 4, 19, 15, -4, 9, -26,
    -- layer=1 filter=54 channel=11
    1, 7, -9, 4, 8, -3, 3, 1, -31,
    -- layer=1 filter=54 channel=12
    -17, -38, -25, -11, -20, -19, -32, -32, -33,
    -- layer=1 filter=54 channel=13
    33, 22, -1, 7, 7, 17, 12, -9, -38,
    -- layer=1 filter=54 channel=14
    7, -18, 5, -40, -32, -55, -7, -11, 8,
    -- layer=1 filter=54 channel=15
    9, 3, 20, 11, 10, -8, -18, -4, -10,
    -- layer=1 filter=54 channel=16
    -8, 7, 12, -10, -16, -18, -14, 1, -2,
    -- layer=1 filter=54 channel=17
    6, 22, -8, -20, -23, -15, -8, -12, -8,
    -- layer=1 filter=54 channel=18
    -49, -15, -22, -11, -40, 18, 9, -7, 10,
    -- layer=1 filter=54 channel=19
    10, 4, -1, 8, 10, 23, 39, 23, 26,
    -- layer=1 filter=54 channel=20
    -18, -23, 8, 6, 2, -16, 2, -16, 11,
    -- layer=1 filter=54 channel=21
    -2, 9, 15, 0, -5, -10, 14, -13, -5,
    -- layer=1 filter=54 channel=22
    0, 2, -14, -12, -3, -18, 15, 18, 43,
    -- layer=1 filter=54 channel=23
    17, -1, 25, -6, -6, 4, 12, -12, 0,
    -- layer=1 filter=54 channel=24
    41, 18, 16, -1, 12, 14, 13, 0, -27,
    -- layer=1 filter=54 channel=25
    13, 2, 0, -22, 16, 29, -41, -11, 3,
    -- layer=1 filter=54 channel=26
    0, 13, 16, -1, -3, -13, -3, 12, -1,
    -- layer=1 filter=54 channel=27
    0, -8, -20, -33, -17, -16, -10, -18, -25,
    -- layer=1 filter=54 channel=28
    27, 2, -1, 14, -12, 12, -16, -7, -33,
    -- layer=1 filter=54 channel=29
    -6, -13, -4, -24, -27, -4, 6, 0, -26,
    -- layer=1 filter=54 channel=30
    8, 9, -9, 7, -13, -13, -5, -27, 1,
    -- layer=1 filter=54 channel=31
    25, 12, 12, 12, 5, -12, 0, -23, -9,
    -- layer=1 filter=54 channel=32
    -18, 6, 7, -15, 14, 6, -3, -11, -14,
    -- layer=1 filter=54 channel=33
    -6, -18, 0, -42, -32, -39, -27, -13, -26,
    -- layer=1 filter=54 channel=34
    -35, -29, -18, -38, -27, -30, -26, -65, -41,
    -- layer=1 filter=54 channel=35
    -5, -9, 8, -41, -6, 5, -12, -49, -8,
    -- layer=1 filter=54 channel=36
    10, 13, 11, -2, -4, 1, 6, -22, 0,
    -- layer=1 filter=54 channel=37
    -29, -47, 18, -67, -61, -73, -30, -19, 21,
    -- layer=1 filter=54 channel=38
    6, 1, 0, 18, 3, 15, 45, 29, 41,
    -- layer=1 filter=54 channel=39
    5, 13, -18, 8, 4, -13, 16, 17, 0,
    -- layer=1 filter=54 channel=40
    5, -7, 6, -1, 3, -14, 4, 0, 5,
    -- layer=1 filter=54 channel=41
    -16, -18, -12, 0, 12, 20, -3, 6, 2,
    -- layer=1 filter=54 channel=42
    13, 27, 21, 21, 15, 13, 7, 2, 8,
    -- layer=1 filter=54 channel=43
    16, -1, -5, 21, -19, 16, -17, -6, -23,
    -- layer=1 filter=54 channel=44
    23, -5, 1, 16, 8, -10, -27, -6, -36,
    -- layer=1 filter=54 channel=45
    -8, -23, 17, -44, -61, -20, -56, -65, -80,
    -- layer=1 filter=54 channel=46
    -21, -28, 43, -59, -82, -35, -16, -38, -1,
    -- layer=1 filter=54 channel=47
    -10, 26, 3, -12, 10, 14, -24, -21, -5,
    -- layer=1 filter=54 channel=48
    5, 9, 3, 10, -3, 18, -10, 8, -8,
    -- layer=1 filter=54 channel=49
    -15, 13, 16, -18, 5, 0, -25, -19, 0,
    -- layer=1 filter=54 channel=50
    -68, -69, -27, -75, -107, -64, -86, -113, -63,
    -- layer=1 filter=54 channel=51
    -10, -9, 11, 7, 2, 2, 18, -6, 31,
    -- layer=1 filter=54 channel=52
    10, 6, -11, -22, -24, -14, -17, -5, -1,
    -- layer=1 filter=54 channel=53
    3, 14, -11, 8, -15, 11, -13, -16, -4,
    -- layer=1 filter=54 channel=54
    -1, -59, -26, -56, -73, -87, -35, -76, -83,
    -- layer=1 filter=54 channel=55
    -3, -23, 11, 11, 12, -6, 11, 6, 9,
    -- layer=1 filter=54 channel=56
    -7, -10, -5, -43, -33, -6, -37, -53, -25,
    -- layer=1 filter=54 channel=57
    10, -9, -2, -14, 5, -13, -8, -7, 13,
    -- layer=1 filter=54 channel=58
    22, 11, -9, 21, 17, 24, -9, 6, -14,
    -- layer=1 filter=54 channel=59
    14, 2, 2, 20, 6, 25, 16, 26, 23,
    -- layer=1 filter=54 channel=60
    24, -4, -1, 11, -3, 15, 2, -20, -10,
    -- layer=1 filter=54 channel=61
    -1, 0, 30, 7, 8, 0, 16, 3, 31,
    -- layer=1 filter=54 channel=62
    1, 24, 12, 1, -5, 23, -21, -21, -3,
    -- layer=1 filter=54 channel=63
    -59, -27, -32, -20, -54, -51, -20, -56, -80,
    -- layer=1 filter=55 channel=0
    1, 5, -17, -13, 6, -12, -16, 0, -19,
    -- layer=1 filter=55 channel=1
    -13, 14, 7, 7, 0, -19, 5, -5, -2,
    -- layer=1 filter=55 channel=2
    -1, -12, -16, -17, -20, 3, -17, -15, -22,
    -- layer=1 filter=55 channel=3
    6, -6, 3, 8, -3, 12, -12, 15, 3,
    -- layer=1 filter=55 channel=4
    4, 7, -2, 17, -6, -17, 10, -5, -11,
    -- layer=1 filter=55 channel=5
    15, 0, 10, -6, 8, 9, -5, 13, 2,
    -- layer=1 filter=55 channel=6
    -16, 10, -19, -22, 10, -20, -12, -16, -9,
    -- layer=1 filter=55 channel=7
    4, 3, 6, 7, -4, -3, 0, 15, 0,
    -- layer=1 filter=55 channel=8
    -2, -18, 6, 4, -12, -12, 7, -11, -1,
    -- layer=1 filter=55 channel=9
    16, 11, 11, 15, -8, -5, -10, 5, -12,
    -- layer=1 filter=55 channel=10
    13, 0, -13, -11, 10, -1, -8, -11, -15,
    -- layer=1 filter=55 channel=11
    -9, -2, 10, -12, -2, 1, 0, -13, -8,
    -- layer=1 filter=55 channel=12
    2, -3, -17, 4, 7, 15, 2, 7, -15,
    -- layer=1 filter=55 channel=13
    13, 10, -17, 13, -13, 0, -18, 10, 15,
    -- layer=1 filter=55 channel=14
    10, -14, 13, -16, 1, 2, 20, -20, -2,
    -- layer=1 filter=55 channel=15
    -18, 5, 11, 15, -17, 2, -17, -7, 11,
    -- layer=1 filter=55 channel=16
    -2, 7, -1, 5, -8, -2, -8, 16, 4,
    -- layer=1 filter=55 channel=17
    1, 15, -1, -7, -8, 5, -5, 13, -11,
    -- layer=1 filter=55 channel=18
    8, 13, 17, -22, -15, 11, -22, -13, 3,
    -- layer=1 filter=55 channel=19
    -10, 7, -14, -17, -20, -9, -5, -22, 13,
    -- layer=1 filter=55 channel=20
    -17, -1, -3, -11, -4, 4, -1, 5, -6,
    -- layer=1 filter=55 channel=21
    5, 12, -2, -15, -2, 6, 16, 12, -4,
    -- layer=1 filter=55 channel=22
    -19, 16, 9, -7, 1, -20, -14, -7, 17,
    -- layer=1 filter=55 channel=23
    -4, -7, -1, 3, 10, 14, -18, -11, 10,
    -- layer=1 filter=55 channel=24
    13, -3, -18, -11, -21, 7, 14, 12, -7,
    -- layer=1 filter=55 channel=25
    3, 3, -21, -21, 2, -18, 2, -13, 0,
    -- layer=1 filter=55 channel=26
    -19, -10, -12, -10, -10, 3, 2, -16, -1,
    -- layer=1 filter=55 channel=27
    6, -10, -7, -19, -8, 8, 11, 3, 1,
    -- layer=1 filter=55 channel=28
    2, -4, -17, 9, -11, -19, 0, 0, 10,
    -- layer=1 filter=55 channel=29
    -20, 5, -19, -1, -8, -3, -16, 7, 9,
    -- layer=1 filter=55 channel=30
    0, 8, -15, 10, -5, -10, -16, -9, -8,
    -- layer=1 filter=55 channel=31
    0, -3, 12, -17, 5, 13, 7, -8, -18,
    -- layer=1 filter=55 channel=32
    -2, 14, -9, 4, 5, -17, -3, 10, -16,
    -- layer=1 filter=55 channel=33
    -14, 13, -9, -5, 13, -18, 11, -8, -18,
    -- layer=1 filter=55 channel=34
    0, -3, 2, -3, -19, -7, -17, 7, -3,
    -- layer=1 filter=55 channel=35
    -16, -9, -4, -12, -6, -8, 3, -12, -8,
    -- layer=1 filter=55 channel=36
    -16, 11, 0, 9, -14, -16, -19, 10, 1,
    -- layer=1 filter=55 channel=37
    0, 12, -10, -16, 0, 6, -4, -6, 10,
    -- layer=1 filter=55 channel=38
    1, 0, -6, 6, -1, 3, -5, -3, 14,
    -- layer=1 filter=55 channel=39
    -8, 13, 4, 6, -19, -7, -1, -2, -2,
    -- layer=1 filter=55 channel=40
    9, -17, -4, 15, 5, -1, -12, 1, -8,
    -- layer=1 filter=55 channel=41
    -3, -15, -10, 17, -19, 8, 17, -1, 11,
    -- layer=1 filter=55 channel=42
    -9, -4, 9, -8, -5, 2, -9, -9, 9,
    -- layer=1 filter=55 channel=43
    -1, 14, 17, -16, -6, -15, 0, -13, -14,
    -- layer=1 filter=55 channel=44
    -4, 0, 2, 9, -3, 15, -5, 4, -11,
    -- layer=1 filter=55 channel=45
    6, -17, -3, -3, -4, 9, -13, 16, 7,
    -- layer=1 filter=55 channel=46
    -19, 8, 4, -3, 11, 7, 11, -12, 12,
    -- layer=1 filter=55 channel=47
    -2, 3, -1, -18, 15, -5, 12, -18, 3,
    -- layer=1 filter=55 channel=48
    -14, 5, 12, -5, -16, 5, -12, 0, -9,
    -- layer=1 filter=55 channel=49
    -9, -12, 2, -8, -11, 16, 2, -1, -8,
    -- layer=1 filter=55 channel=50
    10, 12, -14, 10, 8, -4, -12, -6, 8,
    -- layer=1 filter=55 channel=51
    -21, -11, 9, 1, -13, -13, -12, -2, -2,
    -- layer=1 filter=55 channel=52
    3, -16, 12, -4, -3, -18, 9, 1, 10,
    -- layer=1 filter=55 channel=53
    5, 1, -11, -17, -13, -10, -1, 5, 1,
    -- layer=1 filter=55 channel=54
    -13, -9, -18, -20, -15, 5, -6, 7, 0,
    -- layer=1 filter=55 channel=55
    9, -17, -11, -16, 12, 2, 13, 17, 1,
    -- layer=1 filter=55 channel=56
    10, -16, 12, -19, 2, -10, 1, 6, 14,
    -- layer=1 filter=55 channel=57
    -16, 7, -16, -17, -10, -13, 9, 16, -3,
    -- layer=1 filter=55 channel=58
    13, 9, 2, -13, 0, 16, 1, 8, -7,
    -- layer=1 filter=55 channel=59
    -8, 10, 6, 4, -1, 0, -9, -12, -3,
    -- layer=1 filter=55 channel=60
    16, 5, -16, -1, -12, 13, 3, -18, -19,
    -- layer=1 filter=55 channel=61
    9, 4, -11, -12, -11, 9, 7, 9, 0,
    -- layer=1 filter=55 channel=62
    11, -6, 4, 9, -11, -2, 2, 5, 9,
    -- layer=1 filter=55 channel=63
    6, -14, -6, -12, -6, 5, -10, 12, 11,
    -- layer=1 filter=56 channel=0
    12, 0, 4, -1, -4, -10, -6, -11, 12,
    -- layer=1 filter=56 channel=1
    -42, -27, -33, -31, -34, -8, -32, -31, -13,
    -- layer=1 filter=56 channel=2
    -42, -53, -47, 3, -4, 6, 4, 6, -14,
    -- layer=1 filter=56 channel=3
    2, 16, 6, 8, 3, 13, 7, 0, -9,
    -- layer=1 filter=56 channel=4
    15, -7, 8, 4, 2, -5, 12, 8, -6,
    -- layer=1 filter=56 channel=5
    -3, 25, 15, -10, 13, 0, -2, 8, 14,
    -- layer=1 filter=56 channel=6
    -18, -48, 0, -15, -3, 82, 1, -10, 40,
    -- layer=1 filter=56 channel=7
    -7, 9, -1, 2, 9, -10, 0, 20, 4,
    -- layer=1 filter=56 channel=8
    -12, -15, 15, 7, 0, 1, -11, -7, -9,
    -- layer=1 filter=56 channel=9
    0, 5, 6, 8, 20, 17, -6, 0, 8,
    -- layer=1 filter=56 channel=10
    -13, 22, 12, 16, 12, 14, 2, 6, 13,
    -- layer=1 filter=56 channel=11
    25, 9, 20, 15, -16, 5, -3, 8, -5,
    -- layer=1 filter=56 channel=12
    -32, -15, 24, -27, 0, -2, -10, -11, 6,
    -- layer=1 filter=56 channel=13
    25, 0, -1, 6, 28, 6, 7, -8, 4,
    -- layer=1 filter=56 channel=14
    1, 50, 7, 0, -24, 25, -45, -28, -27,
    -- layer=1 filter=56 channel=15
    23, 15, 12, 15, 16, 16, -7, 1, 17,
    -- layer=1 filter=56 channel=16
    2, 6, 0, 14, -3, -6, 4, 1, -7,
    -- layer=1 filter=56 channel=17
    -29, -46, -4, -11, -16, 8, -6, 0, 7,
    -- layer=1 filter=56 channel=18
    57, 41, 32, 65, 60, 24, 32, 43, 41,
    -- layer=1 filter=56 channel=19
    -13, -14, -6, -7, -48, -4, -33, -15, -19,
    -- layer=1 filter=56 channel=20
    -23, -17, -19, -24, 4, 22, -9, 5, 2,
    -- layer=1 filter=56 channel=21
    -16, 4, 9, 3, 12, 16, 18, 0, 5,
    -- layer=1 filter=56 channel=22
    9, 3, 4, 1, -19, 17, 8, 8, 11,
    -- layer=1 filter=56 channel=23
    -5, 19, 8, 0, 8, -5, -8, -16, 9,
    -- layer=1 filter=56 channel=24
    37, 21, 44, 27, -6, 12, 2, -5, 1,
    -- layer=1 filter=56 channel=25
    -15, -13, -3, -6, 3, -16, -18, 10, -10,
    -- layer=1 filter=56 channel=26
    16, 1, 13, -19, 11, 10, 9, 0, -3,
    -- layer=1 filter=56 channel=27
    -32, 3, -8, 13, 11, -5, -23, -3, -18,
    -- layer=1 filter=56 channel=28
    9, 6, 18, 21, -4, 17, 25, 4, -2,
    -- layer=1 filter=56 channel=29
    -7, -16, 1, -9, -17, -3, 0, 0, -5,
    -- layer=1 filter=56 channel=30
    0, 13, 11, -13, 5, -17, -12, 14, 12,
    -- layer=1 filter=56 channel=31
    -7, 4, 21, 0, -8, 2, 0, -24, 8,
    -- layer=1 filter=56 channel=32
    12, 14, 0, 15, -9, -10, -7, 0, 0,
    -- layer=1 filter=56 channel=33
    -26, 4, -13, -33, -2, 26, -13, 12, 16,
    -- layer=1 filter=56 channel=34
    -36, -68, 4, -17, -47, -13, -36, -49, -14,
    -- layer=1 filter=56 channel=35
    -18, -44, 29, -52, -35, -27, -26, -34, 3,
    -- layer=1 filter=56 channel=36
    -17, 5, 31, 13, 9, 28, 2, -9, 30,
    -- layer=1 filter=56 channel=37
    -51, -96, -43, -57, -69, -2, -27, -30, -20,
    -- layer=1 filter=56 channel=38
    -20, 2, 15, 9, -5, 13, 14, -9, 20,
    -- layer=1 filter=56 channel=39
    1, 7, 13, 3, -7, -3, -16, -18, -12,
    -- layer=1 filter=56 channel=40
    2, 4, 8, 0, 12, 11, 13, 4, 1,
    -- layer=1 filter=56 channel=41
    -21, -17, -13, -37, -16, 18, -31, -6, 7,
    -- layer=1 filter=56 channel=42
    7, 0, 17, 2, -3, 20, -4, -5, -14,
    -- layer=1 filter=56 channel=43
    11, 14, 61, 3, 0, 39, 23, 59, 23,
    -- layer=1 filter=56 channel=44
    13, 23, 27, -6, -4, -9, -2, -13, -11,
    -- layer=1 filter=56 channel=45
    -41, -32, -29, -22, -5, 32, 28, 20, 43,
    -- layer=1 filter=56 channel=46
    -42, -56, -54, -73, -53, -5, -50, -18, -13,
    -- layer=1 filter=56 channel=47
    -3, 12, -3, -7, 4, 1, -23, 9, -16,
    -- layer=1 filter=56 channel=48
    18, 22, 7, 0, 20, -7, -16, 8, -8,
    -- layer=1 filter=56 channel=49
    -7, -11, 6, -15, -10, -2, -2, 7, -17,
    -- layer=1 filter=56 channel=50
    -22, -58, -35, -63, -49, -16, 2, -24, -28,
    -- layer=1 filter=56 channel=51
    -28, -28, -32, -5, -10, -1, -8, 6, 8,
    -- layer=1 filter=56 channel=52
    -15, 15, -19, -18, -11, 8, -9, -15, 16,
    -- layer=1 filter=56 channel=53
    21, 32, 2, 6, 9, -15, -9, 12, 13,
    -- layer=1 filter=56 channel=54
    -27, -18, 0, -35, 4, 47, 23, 26, 17,
    -- layer=1 filter=56 channel=55
    -22, -12, -12, -29, -27, 0, -22, 3, -11,
    -- layer=1 filter=56 channel=56
    1, -42, 6, -28, -28, 4, -14, -1, 8,
    -- layer=1 filter=56 channel=57
    -16, 17, 1, -4, 1, 3, 9, 7, 14,
    -- layer=1 filter=56 channel=58
    0, -18, 15, -1, -18, -7, -8, 15, 24,
    -- layer=1 filter=56 channel=59
    -4, -21, -6, -26, -30, -12, -18, 2, -2,
    -- layer=1 filter=56 channel=60
    17, 20, 10, -8, -9, 9, -21, 2, -14,
    -- layer=1 filter=56 channel=61
    -42, -36, -30, -45, -40, 14, -43, -23, 18,
    -- layer=1 filter=56 channel=62
    -14, -3, 15, 2, 13, 9, -11, -26, -6,
    -- layer=1 filter=56 channel=63
    -2, -19, 46, -4, 2, 17, 7, 31, 0,
    -- layer=1 filter=57 channel=0
    -6, -1, -16, 10, 12, -5, 2, 1, 11,
    -- layer=1 filter=57 channel=1
    -13, 14, 0, 16, 10, 2, 4, 19, 15,
    -- layer=1 filter=57 channel=2
    19, 17, 4, 8, -4, 16, 8, 29, 24,
    -- layer=1 filter=57 channel=3
    -9, -1, 5, 4, 12, 8, -2, 6, 13,
    -- layer=1 filter=57 channel=4
    0, -7, -13, -18, 17, -5, 7, 3, -8,
    -- layer=1 filter=57 channel=5
    -27, -17, 0, 0, 12, -11, -28, 3, -25,
    -- layer=1 filter=57 channel=6
    -28, -72, -49, -44, -54, -56, -25, -63, -34,
    -- layer=1 filter=57 channel=7
    4, 9, 15, -7, 3, -15, -16, -1, 7,
    -- layer=1 filter=57 channel=8
    2, -7, -12, 15, -17, 3, 16, 9, -17,
    -- layer=1 filter=57 channel=9
    11, 22, 11, 16, 16, 2, -18, 8, -11,
    -- layer=1 filter=57 channel=10
    -25, -1, -19, 4, -11, -5, 6, 6, -7,
    -- layer=1 filter=57 channel=11
    23, 12, 17, 3, -13, 7, 15, 5, 1,
    -- layer=1 filter=57 channel=12
    -35, -7, -29, -56, -38, -49, -25, -47, -62,
    -- layer=1 filter=57 channel=13
    17, -12, -2, 0, 18, 1, -26, -2, 6,
    -- layer=1 filter=57 channel=14
    -25, -41, -46, -33, -28, -98, -35, -114, -58,
    -- layer=1 filter=57 channel=15
    13, -13, 7, -12, 12, -13, 2, -6, -21,
    -- layer=1 filter=57 channel=16
    0, 24, 18, -15, 5, 4, 6, -12, -15,
    -- layer=1 filter=57 channel=17
    -43, -73, -86, -25, -66, -60, -49, -46, -38,
    -- layer=1 filter=57 channel=18
    30, 20, -4, 56, 48, 19, 61, 28, 26,
    -- layer=1 filter=57 channel=19
    -22, -26, -15, -7, 26, 29, 34, 16, 12,
    -- layer=1 filter=57 channel=20
    8, -27, 1, 6, -14, -4, 10, -4, -8,
    -- layer=1 filter=57 channel=21
    5, -13, 16, -7, 15, -9, -16, 0, -12,
    -- layer=1 filter=57 channel=22
    6, 8, -12, -12, 0, 5, 4, 9, 23,
    -- layer=1 filter=57 channel=23
    -2, -6, -15, 12, -17, 21, 4, -20, -10,
    -- layer=1 filter=57 channel=24
    12, 1, -5, 7, 2, -2, 12, 5, -17,
    -- layer=1 filter=57 channel=25
    -38, -72, -50, -44, -67, -37, -29, -43, -41,
    -- layer=1 filter=57 channel=26
    22, 7, 12, -7, 16, 1, -7, 1, -5,
    -- layer=1 filter=57 channel=27
    -4, -19, -46, -3, -27, -21, -24, -14, -31,
    -- layer=1 filter=57 channel=28
    0, -10, -11, 6, 10, -5, -6, 0, -6,
    -- layer=1 filter=57 channel=29
    -16, -30, 3, -15, -2, -17, 11, -2, -15,
    -- layer=1 filter=57 channel=30
    -4, 5, 19, 17, 11, 11, 8, -18, -24,
    -- layer=1 filter=57 channel=31
    13, -17, -9, 6, -14, 2, -12, 4, 4,
    -- layer=1 filter=57 channel=32
    -17, -10, -7, -4, -1, 8, 13, -7, 14,
    -- layer=1 filter=57 channel=33
    -4, -19, -10, 7, -26, -5, -20, -32, -15,
    -- layer=1 filter=57 channel=34
    -47, -49, -89, -45, -39, -63, -54, -51, -28,
    -- layer=1 filter=57 channel=35
    -49, -67, -58, -62, -71, -57, -45, -68, -49,
    -- layer=1 filter=57 channel=36
    -10, -17, -3, 6, -3, 9, 1, 10, 3,
    -- layer=1 filter=57 channel=37
    0, -34, -1, -14, -26, -58, -10, -23, -19,
    -- layer=1 filter=57 channel=38
    -1, 18, 18, 7, 31, 20, 34, 11, 37,
    -- layer=1 filter=57 channel=39
    -21, -6, -5, 17, 15, 5, -5, 12, -12,
    -- layer=1 filter=57 channel=40
    9, 11, 14, -12, 3, 6, -13, 12, -15,
    -- layer=1 filter=57 channel=41
    -2, -5, -10, 19, -4, -8, 6, 16, 4,
    -- layer=1 filter=57 channel=42
    -15, 8, -6, 10, 18, -7, 16, 25, -9,
    -- layer=1 filter=57 channel=43
    -37, -30, -21, -18, -34, -40, -29, -23, -31,
    -- layer=1 filter=57 channel=44
    18, 3, -6, 11, -21, -10, -25, -27, -16,
    -- layer=1 filter=57 channel=45
    -18, -65, -21, -36, -89, -67, -30, -60, -41,
    -- layer=1 filter=57 channel=46
    -26, -18, 4, -20, -52, -39, -34, -33, -43,
    -- layer=1 filter=57 channel=47
    14, -9, 0, 14, 4, 5, 13, 3, 15,
    -- layer=1 filter=57 channel=48
    14, -12, -4, 19, 11, 6, 17, -1, -10,
    -- layer=1 filter=57 channel=49
    11, 17, -7, -11, -5, -2, -1, -8, 12,
    -- layer=1 filter=57 channel=50
    -32, -53, -28, -47, -55, -53, -53, -79, -89,
    -- layer=1 filter=57 channel=51
    0, 0, 22, 6, -9, 13, 14, 22, -3,
    -- layer=1 filter=57 channel=52
    1, -18, 11, 11, 0, 5, -14, 8, -1,
    -- layer=1 filter=57 channel=53
    -2, -18, -8, -19, -15, -17, -6, 3, 7,
    -- layer=1 filter=57 channel=54
    -2, -63, -33, -48, -67, -71, -4, -67, -41,
    -- layer=1 filter=57 channel=55
    18, -12, -5, -4, -6, 3, 8, -4, 12,
    -- layer=1 filter=57 channel=56
    -65, -65, -101, -66, -69, -56, -69, -50, -44,
    -- layer=1 filter=57 channel=57
    -11, 15, -6, -15, 15, 12, -3, 1, -15,
    -- layer=1 filter=57 channel=58
    -33, -4, -26, -13, 8, 11, -2, 6, -11,
    -- layer=1 filter=57 channel=59
    -23, -10, 0, -2, 18, 22, 35, -1, 11,
    -- layer=1 filter=57 channel=60
    11, -14, 18, -8, -7, 22, 6, -9, 14,
    -- layer=1 filter=57 channel=61
    -15, -22, 15, 5, 5, 6, 37, 9, 28,
    -- layer=1 filter=57 channel=62
    -14, 5, 16, -11, 6, 5, 26, 7, -7,
    -- layer=1 filter=57 channel=63
    -62, 6, -43, -32, -26, -16, -34, -20, -48,
    -- layer=1 filter=58 channel=0
    0, -9, -13, 9, 9, 4, 8, -2, 12,
    -- layer=1 filter=58 channel=1
    13, 31, 26, 1, 25, 1, 14, 19, 5,
    -- layer=1 filter=58 channel=2
    34, 34, 35, 4, 12, 39, 17, 9, -1,
    -- layer=1 filter=58 channel=3
    -14, 1, 19, -6, -1, -9, -1, -8, 21,
    -- layer=1 filter=58 channel=4
    -11, -2, 5, -2, 10, 0, 13, 2, -4,
    -- layer=1 filter=58 channel=5
    -9, -12, -14, 11, -1, 12, 18, -6, 27,
    -- layer=1 filter=58 channel=6
    -9, -7, 0, -1, 20, 23, -14, 23, 7,
    -- layer=1 filter=58 channel=7
    -9, -11, 18, 24, 3, -9, 8, -23, 8,
    -- layer=1 filter=58 channel=8
    9, 1, 11, 12, -9, -10, 4, -6, 11,
    -- layer=1 filter=58 channel=9
    1, -9, 1, -26, -14, -22, -13, -21, -27,
    -- layer=1 filter=58 channel=10
    1, 1, 20, 13, 15, 9, 9, -15, 23,
    -- layer=1 filter=58 channel=11
    -18, 0, -17, -16, 4, -21, 8, 6, 0,
    -- layer=1 filter=58 channel=12
    -25, -19, -24, -41, -34, -15, -57, -49, -60,
    -- layer=1 filter=58 channel=13
    6, -13, -6, 0, 5, 1, 1, 21, -9,
    -- layer=1 filter=58 channel=14
    14, 0, -29, 25, 5, -3, 0, -23, -41,
    -- layer=1 filter=58 channel=15
    0, 3, -9, 8, -20, -4, -22, -15, -6,
    -- layer=1 filter=58 channel=16
    -20, -22, -30, -15, -28, -3, -14, -6, -2,
    -- layer=1 filter=58 channel=17
    -30, -16, -5, 4, -12, -7, -14, -3, 6,
    -- layer=1 filter=58 channel=18
    2, 6, 10, -15, -54, -20, -26, -46, -32,
    -- layer=1 filter=58 channel=19
    8, -21, 4, 1, -9, -29, -9, -10, -24,
    -- layer=1 filter=58 channel=20
    -1, 19, 4, 13, -4, -4, 13, 10, 0,
    -- layer=1 filter=58 channel=21
    -6, 6, -15, -13, -14, 7, 12, -9, -18,
    -- layer=1 filter=58 channel=22
    31, -2, 12, 15, 11, 17, 21, -6, 5,
    -- layer=1 filter=58 channel=23
    -16, 9, 2, 3, -4, -14, 2, -16, -15,
    -- layer=1 filter=58 channel=24
    -34, -19, -9, -10, -24, -26, -17, -3, -24,
    -- layer=1 filter=58 channel=25
    -17, -23, -18, -16, 0, -16, -13, 1, 9,
    -- layer=1 filter=58 channel=26
    12, 9, 11, 13, -8, -11, -1, -3, 18,
    -- layer=1 filter=58 channel=27
    -15, -39, -50, -38, -39, -35, -22, -17, -43,
    -- layer=1 filter=58 channel=28
    -30, 2, -21, -15, -11, -21, -6, 3, 1,
    -- layer=1 filter=58 channel=29
    -5, -22, -21, -6, -2, 6, 0, -4, -11,
    -- layer=1 filter=58 channel=30
    -4, -5, -12, -22, -23, -29, -36, -32, -25,
    -- layer=1 filter=58 channel=31
    4, -7, 10, -10, 3, -15, -9, -5, 0,
    -- layer=1 filter=58 channel=32
    -6, -6, -6, 13, 19, -1, 8, -7, 4,
    -- layer=1 filter=58 channel=33
    3, -13, 2, -10, -12, -18, 14, -6, -23,
    -- layer=1 filter=58 channel=34
    10, -8, 16, 4, 17, 35, 12, 20, 13,
    -- layer=1 filter=58 channel=35
    -14, 0, 26, 5, 25, 10, 21, 4, 21,
    -- layer=1 filter=58 channel=36
    -27, -33, -23, -22, -18, -17, -48, -29, -31,
    -- layer=1 filter=58 channel=37
    34, 0, -9, 20, -12, 26, -15, 7, -4,
    -- layer=1 filter=58 channel=38
    28, 7, 25, 37, 25, 25, 3, 31, 14,
    -- layer=1 filter=58 channel=39
    12, 12, 27, 16, 24, 17, -11, 1, 27,
    -- layer=1 filter=58 channel=40
    12, 18, 12, 0, -11, -12, 14, -8, -9,
    -- layer=1 filter=58 channel=41
    5, -2, 30, 25, 4, 7, -5, -6, 17,
    -- layer=1 filter=58 channel=42
    -2, -2, 14, -15, -2, 13, -3, 3, -11,
    -- layer=1 filter=58 channel=43
    0, -1, -21, -11, 13, -2, -3, 32, 0,
    -- layer=1 filter=58 channel=44
    -11, -32, -19, -13, 8, -13, -3, -26, -29,
    -- layer=1 filter=58 channel=45
    2, 7, -13, 9, 2, 32, 31, 37, 13,
    -- layer=1 filter=58 channel=46
    7, -11, -11, 12, 11, 19, 4, -3, 26,
    -- layer=1 filter=58 channel=47
    -17, -6, 0, -5, 0, -6, -9, 9, 1,
    -- layer=1 filter=58 channel=48
    15, -3, 16, 3, -10, 14, -4, -3, -7,
    -- layer=1 filter=58 channel=49
    2, 8, 21, -3, -4, 9, 13, 10, 14,
    -- layer=1 filter=58 channel=50
    33, -20, 23, 8, 6, 19, 5, 26, 38,
    -- layer=1 filter=58 channel=51
    33, 16, 15, 8, 0, 1, 15, 19, 0,
    -- layer=1 filter=58 channel=52
    9, -7, -3, -21, 2, -5, -2, 0, -1,
    -- layer=1 filter=58 channel=53
    11, -3, -10, -14, -11, 8, 17, 8, -5,
    -- layer=1 filter=58 channel=54
    7, 17, 0, 29, 23, -3, 40, 42, -9,
    -- layer=1 filter=58 channel=55
    -9, 3, 13, -2, -9, -2, 7, -1, -1,
    -- layer=1 filter=58 channel=56
    -5, -11, -11, -9, -4, 20, -3, 8, 6,
    -- layer=1 filter=58 channel=57
    18, 12, -16, 14, 3, -6, -13, -6, 16,
    -- layer=1 filter=58 channel=58
    9, 19, 27, 0, 16, 3, 17, 0, 25,
    -- layer=1 filter=58 channel=59
    -12, -11, 16, 15, 8, 16, -8, -13, -10,
    -- layer=1 filter=58 channel=60
    -13, -10, 9, 12, 4, 4, -8, 17, 13,
    -- layer=1 filter=58 channel=61
    2, 20, -4, -6, -11, 6, 15, -2, 4,
    -- layer=1 filter=58 channel=62
    -3, -11, 9, 6, 5, -5, -3, -11, -9,
    -- layer=1 filter=58 channel=63
    17, 26, -1, -6, 44, 18, 12, 39, 35,
    -- layer=1 filter=59 channel=0
    -4, 12, -5, 5, 15, -8, 11, 2, -9,
    -- layer=1 filter=59 channel=1
    10, -7, -10, 0, -3, -10, 9, -5, -7,
    -- layer=1 filter=59 channel=2
    10, 1, 10, 6, 14, 16, -9, -13, -14,
    -- layer=1 filter=59 channel=3
    -4, 5, -7, -4, -15, 5, -4, -8, 13,
    -- layer=1 filter=59 channel=4
    17, 15, -5, -9, 5, 13, -6, 0, 10,
    -- layer=1 filter=59 channel=5
    -7, -3, -10, -18, -17, 7, -4, 10, -14,
    -- layer=1 filter=59 channel=6
    -10, -20, 9, 9, 4, 5, -2, 6, -13,
    -- layer=1 filter=59 channel=7
    -1, -18, 6, -16, -7, 3, -12, 12, 2,
    -- layer=1 filter=59 channel=8
    -4, 16, 8, -16, -1, 17, -15, -14, -13,
    -- layer=1 filter=59 channel=9
    -16, -19, 8, -20, -12, -4, 11, -4, 19,
    -- layer=1 filter=59 channel=10
    -5, -2, 1, 12, 13, 9, -15, 10, 17,
    -- layer=1 filter=59 channel=11
    1, 5, -17, 3, 8, -9, -20, -15, -18,
    -- layer=1 filter=59 channel=12
    -12, 2, -3, -4, 1, -1, -13, -7, -17,
    -- layer=1 filter=59 channel=13
    -16, -11, 12, -15, 11, -8, -16, -2, 12,
    -- layer=1 filter=59 channel=14
    -10, 10, 3, -9, 6, 3, 0, -16, 1,
    -- layer=1 filter=59 channel=15
    -8, 5, 7, -13, -9, -6, 1, 16, -17,
    -- layer=1 filter=59 channel=16
    11, 13, -3, 15, 6, 10, -14, 2, 13,
    -- layer=1 filter=59 channel=17
    -10, 3, -16, -8, -16, 6, -13, -8, -10,
    -- layer=1 filter=59 channel=18
    -15, 7, 0, -17, 7, 13, -21, 0, -23,
    -- layer=1 filter=59 channel=19
    -11, -18, -3, 15, 5, 3, -1, 13, -6,
    -- layer=1 filter=59 channel=20
    -5, -9, 4, 2, 0, -2, 1, 10, -11,
    -- layer=1 filter=59 channel=21
    -13, 12, 7, -5, -16, -10, 0, 8, -1,
    -- layer=1 filter=59 channel=22
    7, -12, -6, -17, 3, 8, -12, -11, -12,
    -- layer=1 filter=59 channel=23
    -14, -12, -2, 1, -3, 1, 4, 14, -13,
    -- layer=1 filter=59 channel=24
    3, -6, -7, 13, 3, -22, 5, -11, -7,
    -- layer=1 filter=59 channel=25
    -4, 6, -15, -25, -10, 4, 9, 12, -5,
    -- layer=1 filter=59 channel=26
    -11, -2, 5, -10, -8, 15, -10, -10, 17,
    -- layer=1 filter=59 channel=27
    -2, -3, -5, 5, -16, 5, 13, 0, 10,
    -- layer=1 filter=59 channel=28
    -19, -12, 1, -2, -13, -7, 1, 6, -10,
    -- layer=1 filter=59 channel=29
    4, 12, 12, 12, -15, -9, -6, -10, -10,
    -- layer=1 filter=59 channel=30
    0, -16, -15, 15, 0, 12, 0, -1, -7,
    -- layer=1 filter=59 channel=31
    10, -15, 8, -19, -10, 11, -1, 17, -17,
    -- layer=1 filter=59 channel=32
    15, 2, -2, 4, -11, 10, 6, -7, 6,
    -- layer=1 filter=59 channel=33
    5, 3, -19, 13, 1, -4, -15, -7, -9,
    -- layer=1 filter=59 channel=34
    -14, -20, 0, -7, 2, 9, -18, 4, 13,
    -- layer=1 filter=59 channel=35
    -18, 3, 12, -19, -8, -7, 9, -2, 0,
    -- layer=1 filter=59 channel=36
    13, -14, 2, 10, 18, -14, 15, 7, -15,
    -- layer=1 filter=59 channel=37
    -23, -19, -18, 3, 1, 7, -9, -16, -16,
    -- layer=1 filter=59 channel=38
    -6, -24, -8, -8, -20, 10, -11, -18, -11,
    -- layer=1 filter=59 channel=39
    9, -11, -9, -3, 10, 2, -1, -9, -16,
    -- layer=1 filter=59 channel=40
    -15, -10, 0, 6, 5, -14, 1, -11, 4,
    -- layer=1 filter=59 channel=41
    -9, 12, 3, 1, 1, 13, -15, 7, 5,
    -- layer=1 filter=59 channel=42
    -15, -1, -7, 3, -9, 5, -7, -19, 3,
    -- layer=1 filter=59 channel=43
    -5, 2, -15, -4, 13, 4, 13, -7, -9,
    -- layer=1 filter=59 channel=44
    -3, -9, -18, -12, 0, -17, 5, -15, 8,
    -- layer=1 filter=59 channel=45
    -17, 2, -18, 9, -6, -19, 13, -8, 0,
    -- layer=1 filter=59 channel=46
    3, -14, -15, 10, 1, 9, 8, 10, 6,
    -- layer=1 filter=59 channel=47
    0, -5, -14, 15, -6, 3, 10, -11, 9,
    -- layer=1 filter=59 channel=48
    13, -20, -12, 7, -6, 0, -10, -4, -4,
    -- layer=1 filter=59 channel=49
    -1, 0, -6, -1, 0, 1, -14, 6, 0,
    -- layer=1 filter=59 channel=50
    1, -7, -4, 11, -11, -9, -12, 3, 8,
    -- layer=1 filter=59 channel=51
    -8, -2, -14, -15, 14, -19, -18, 14, 1,
    -- layer=1 filter=59 channel=52
    -20, -13, -15, -2, 5, 3, 10, -1, -2,
    -- layer=1 filter=59 channel=53
    -13, -19, -13, -19, -7, 6, 13, 6, -14,
    -- layer=1 filter=59 channel=54
    -9, 11, -3, -14, -6, -20, 7, -2, 11,
    -- layer=1 filter=59 channel=55
    -11, -15, -16, -5, 12, 1, 3, 9, 0,
    -- layer=1 filter=59 channel=56
    9, 3, 1, -19, 14, -11, -13, -14, -14,
    -- layer=1 filter=59 channel=57
    17, 5, -15, -14, 16, 10, 7, 10, -10,
    -- layer=1 filter=59 channel=58
    15, 14, -7, -13, -14, -14, 7, -21, -5,
    -- layer=1 filter=59 channel=59
    8, -14, -12, 0, -17, 11, -20, 0, 7,
    -- layer=1 filter=59 channel=60
    3, 1, 5, 11, -3, 1, 9, -3, -13,
    -- layer=1 filter=59 channel=61
    -6, 15, -7, -4, -18, 10, 1, -6, 9,
    -- layer=1 filter=59 channel=62
    13, -11, 6, 4, -2, 7, 5, -4, 16,
    -- layer=1 filter=59 channel=63
    18, 11, 9, -1, -1, -7, 8, 5, -3,
    -- layer=1 filter=60 channel=0
    11, 7, -14, 5, 11, -4, -1, -11, -8,
    -- layer=1 filter=60 channel=1
    -17, 20, -11, 9, 0, -13, -8, 15, -25,
    -- layer=1 filter=60 channel=2
    -1, -22, -16, -17, -36, -32, -11, -4, -11,
    -- layer=1 filter=60 channel=3
    8, 5, -8, -2, -15, 12, -20, -24, 25,
    -- layer=1 filter=60 channel=4
    17, -2, -11, 1, 6, 14, -1, 0, 5,
    -- layer=1 filter=60 channel=5
    1, 3, 16, 5, -26, 1, -10, -5, 1,
    -- layer=1 filter=60 channel=6
    -45, 24, 51, -103, 106, -12, -19, 93, -31,
    -- layer=1 filter=60 channel=7
    8, 6, -11, 1, 1, -6, -4, -13, 0,
    -- layer=1 filter=60 channel=8
    -9, 4, -14, -10, 14, 8, 6, -15, -12,
    -- layer=1 filter=60 channel=9
    4, -6, -10, -6, 11, 2, -11, 3, -7,
    -- layer=1 filter=60 channel=10
    -5, 9, 3, 7, 9, 1, 10, -8, 15,
    -- layer=1 filter=60 channel=11
    -13, 21, 16, -15, 4, 2, 9, 27, 21,
    -- layer=1 filter=60 channel=12
    -2, -23, -12, -5, -6, -5, 3, 17, -18,
    -- layer=1 filter=60 channel=13
    -2, 0, 8, -17, 9, 15, -16, 10, -10,
    -- layer=1 filter=60 channel=14
    28, -27, 24, 4, -14, -17, -13, 21, 24,
    -- layer=1 filter=60 channel=15
    10, -21, 10, -9, -19, 6, -18, -19, 2,
    -- layer=1 filter=60 channel=16
    9, -13, -8, 6, -22, 13, -12, -17, 8,
    -- layer=1 filter=60 channel=17
    -11, 0, -17, -68, -16, -27, -22, 11, -47,
    -- layer=1 filter=60 channel=18
    75, 37, 82, 31, 14, 71, 23, 36, 66,
    -- layer=1 filter=60 channel=19
    -29, 16, 1, -18, 14, 12, -14, 25, 0,
    -- layer=1 filter=60 channel=20
    -36, 38, 0, -30, 21, -19, -1, 46, -37,
    -- layer=1 filter=60 channel=21
    -5, -3, 13, 16, 13, 9, 3, 0, -5,
    -- layer=1 filter=60 channel=22
    -10, 0, -15, -10, 25, -18, 26, 19, -21,
    -- layer=1 filter=60 channel=23
    -6, 33, -9, -15, 38, -31, 2, 3, -15,
    -- layer=1 filter=60 channel=24
    0, 2, -2, -15, -1, 10, 4, 3, 8,
    -- layer=1 filter=60 channel=25
    -37, -13, -47, -29, -49, -49, -36, -45, -45,
    -- layer=1 filter=60 channel=26
    19, -11, 8, 16, -19, -18, 7, -10, 12,
    -- layer=1 filter=60 channel=27
    -21, -17, 31, -4, -28, 7, -19, -19, 38,
    -- layer=1 filter=60 channel=28
    -15, 17, 4, -23, -15, 4, -11, 15, 17,
    -- layer=1 filter=60 channel=29
    -36, 3, 1, -19, 4, -10, -5, -9, -23,
    -- layer=1 filter=60 channel=30
    7, 0, 2, -8, -11, 26, -10, -12, 33,
    -- layer=1 filter=60 channel=31
    7, 7, 11, -15, 28, -27, -18, 29, -10,
    -- layer=1 filter=60 channel=32
    5, 15, -10, -17, 15, 1, -9, 10, 11,
    -- layer=1 filter=60 channel=33
    -22, 29, 7, -58, 44, -6, 1, 72, -49,
    -- layer=1 filter=60 channel=34
    -19, -32, -2, -68, 2, -22, -6, 17, -19,
    -- layer=1 filter=60 channel=35
    -24, -13, -30, -45, -6, -45, -13, 5, -41,
    -- layer=1 filter=60 channel=36
    -1, 6, -26, 2, -5, 9, 15, 11, -6,
    -- layer=1 filter=60 channel=37
    -70, -76, -62, -47, -64, -58, -82, -63, -49,
    -- layer=1 filter=60 channel=38
    -9, -11, -31, 10, -8, -14, -7, -9, -14,
    -- layer=1 filter=60 channel=39
    9, 9, -1, 11, 0, -5, 9, 2, -4,
    -- layer=1 filter=60 channel=40
    -7, -6, -12, -5, 21, 0, -10, 17, -4,
    -- layer=1 filter=60 channel=41
    15, 8, -9, 10, 34, -2, 14, 13, -19,
    -- layer=1 filter=60 channel=42
    0, 15, -2, -1, 20, -17, 12, -10, -12,
    -- layer=1 filter=60 channel=43
    34, -38, 54, 19, -38, 60, 12, -18, 53,
    -- layer=1 filter=60 channel=44
    6, 27, 9, -12, 2, -13, 12, -1, 16,
    -- layer=1 filter=60 channel=45
    -69, 35, 24, -67, 46, -12, -33, 81, -39,
    -- layer=1 filter=60 channel=46
    -37, -55, -51, -26, -50, -57, -35, -40, -45,
    -- layer=1 filter=60 channel=47
    -2, 18, 7, 8, 8, -22, 0, -22, 0,
    -- layer=1 filter=60 channel=48
    15, -1, 14, 18, -17, -2, 20, -21, 0,
    -- layer=1 filter=60 channel=49
    14, -3, -19, 6, -9, -8, -10, -18, -1,
    -- layer=1 filter=60 channel=50
    -74, -35, -72, -51, -87, -91, -38, -94, -62,
    -- layer=1 filter=60 channel=51
    -37, 10, -18, -34, 14, -38, -15, 16, -30,
    -- layer=1 filter=60 channel=52
    -4, 31, -13, -19, 39, 2, 12, 16, -15,
    -- layer=1 filter=60 channel=53
    -12, 9, 1, 10, -22, -3, 14, -23, -8,
    -- layer=1 filter=60 channel=54
    -73, 34, 15, -62, 102, -30, -4, 87, -38,
    -- layer=1 filter=60 channel=55
    -14, 17, 6, -28, 4, -21, -18, 33, -33,
    -- layer=1 filter=60 channel=56
    -48, -37, -33, -74, -72, -52, -62, -59, -69,
    -- layer=1 filter=60 channel=57
    -16, 12, -14, 16, 2, -11, -15, -1, 14,
    -- layer=1 filter=60 channel=58
    38, -20, -2, 18, -28, 13, 32, 6, 17,
    -- layer=1 filter=60 channel=59
    21, 40, 1, 19, 34, -24, 7, 11, -6,
    -- layer=1 filter=60 channel=60
    -3, 15, -2, 13, -13, -23, 14, -4, -20,
    -- layer=1 filter=60 channel=61
    2, 24, -6, 6, 27, -17, 10, 43, -29,
    -- layer=1 filter=60 channel=62
    32, 16, 9, 30, 18, 7, 32, 19, -21,
    -- layer=1 filter=60 channel=63
    10, -37, 23, 34, -51, 65, 2, -58, 74,
    -- layer=1 filter=61 channel=0
    -14, 5, -17, 10, 0, -19, -1, 1, -13,
    -- layer=1 filter=61 channel=1
    -3, -8, 10, 9, 1, 2, 4, -17, 0,
    -- layer=1 filter=61 channel=2
    -12, 8, -12, 0, 13, -21, -17, -9, -3,
    -- layer=1 filter=61 channel=3
    -14, -5, -1, 14, 1, -9, -9, -18, 3,
    -- layer=1 filter=61 channel=4
    12, 11, -9, 13, 6, 2, -7, 11, -14,
    -- layer=1 filter=61 channel=5
    -5, -9, -8, -12, -7, -13, -13, -5, -6,
    -- layer=1 filter=61 channel=6
    5, 12, 4, -10, -6, -23, -3, -1, -7,
    -- layer=1 filter=61 channel=7
    -18, 11, -10, -1, -11, -11, 11, 17, 15,
    -- layer=1 filter=61 channel=8
    -3, -6, 13, 9, 0, -2, 8, 5, 9,
    -- layer=1 filter=61 channel=9
    -11, 8, 15, 5, -10, 3, 9, -15, -1,
    -- layer=1 filter=61 channel=10
    -15, -17, 10, -15, 1, -13, 10, -18, -8,
    -- layer=1 filter=61 channel=11
    0, -12, -2, -12, 9, 2, 0, 2, -1,
    -- layer=1 filter=61 channel=12
    -8, -5, -9, -3, -14, 14, 3, -18, 1,
    -- layer=1 filter=61 channel=13
    -8, 15, -12, 0, -12, 14, -10, 9, 16,
    -- layer=1 filter=61 channel=14
    15, 1, 2, -5, 0, 1, -14, -19, 6,
    -- layer=1 filter=61 channel=15
    0, -4, -9, 1, 6, -4, -15, 11, 7,
    -- layer=1 filter=61 channel=16
    14, 0, -9, -13, -15, 3, 11, -5, 3,
    -- layer=1 filter=61 channel=17
    -14, -20, 8, -7, 2, -8, -10, -2, 13,
    -- layer=1 filter=61 channel=18
    5, -8, 7, -4, 1, -10, 1, -21, 0,
    -- layer=1 filter=61 channel=19
    -3, -12, -7, -23, -10, 0, -17, 4, -14,
    -- layer=1 filter=61 channel=20
    4, 0, -8, 17, 10, -11, -12, -14, -15,
    -- layer=1 filter=61 channel=21
    7, -10, -1, 17, 4, -4, 15, -9, 2,
    -- layer=1 filter=61 channel=22
    12, -16, 2, 7, -20, -4, -3, -11, -5,
    -- layer=1 filter=61 channel=23
    -5, 0, -1, 8, 10, 12, -6, 12, 3,
    -- layer=1 filter=61 channel=24
    8, -9, -10, 9, -6, -6, -16, 13, -10,
    -- layer=1 filter=61 channel=25
    -2, 14, -8, -8, 4, -1, -11, 2, 0,
    -- layer=1 filter=61 channel=26
    0, 10, -3, -10, -11, -19, -16, 3, 14,
    -- layer=1 filter=61 channel=27
    0, -9, 4, -21, -11, 13, 8, 0, -7,
    -- layer=1 filter=61 channel=28
    -5, 10, 3, 7, 10, 7, -3, -11, -15,
    -- layer=1 filter=61 channel=29
    -2, -17, -10, -5, 10, -11, 12, 10, -5,
    -- layer=1 filter=61 channel=30
    9, 8, 12, -8, 6, -14, 13, -19, -16,
    -- layer=1 filter=61 channel=31
    -16, -10, -14, 6, 14, 4, 18, -13, -2,
    -- layer=1 filter=61 channel=32
    2, -5, -13, 4, -6, -14, 6, 0, -7,
    -- layer=1 filter=61 channel=33
    5, -20, 11, -5, 6, 5, 9, -17, -15,
    -- layer=1 filter=61 channel=34
    -14, 14, -3, -16, 5, 4, -16, -6, -10,
    -- layer=1 filter=61 channel=35
    10, -11, -5, -7, 9, 13, -15, 3, -12,
    -- layer=1 filter=61 channel=36
    -14, -12, 0, -9, 6, 8, -3, -18, 3,
    -- layer=1 filter=61 channel=37
    -7, -9, 3, 0, -15, 10, 12, 4, 0,
    -- layer=1 filter=61 channel=38
    -13, -7, 5, -7, -6, -7, -21, -25, -7,
    -- layer=1 filter=61 channel=39
    15, 6, -1, 12, -5, 10, -1, 12, -4,
    -- layer=1 filter=61 channel=40
    9, 2, 0, 7, 7, -18, -9, -13, 16,
    -- layer=1 filter=61 channel=41
    0, -18, 4, 0, -21, -15, 9, -8, 4,
    -- layer=1 filter=61 channel=42
    8, -9, 12, 3, -6, 10, -15, 4, -18,
    -- layer=1 filter=61 channel=43
    8, 11, -9, 9, 13, -12, -17, 0, -12,
    -- layer=1 filter=61 channel=44
    -10, -11, 1, 11, -17, 10, -2, 14, -7,
    -- layer=1 filter=61 channel=45
    -9, 0, -12, 6, 6, -10, 4, 0, 6,
    -- layer=1 filter=61 channel=46
    -19, -8, 12, -10, 9, -5, 4, 1, -4,
    -- layer=1 filter=61 channel=47
    -5, 6, -2, 2, -5, -16, -9, 8, -5,
    -- layer=1 filter=61 channel=48
    1, -8, 11, -11, -4, 4, -1, -10, 9,
    -- layer=1 filter=61 channel=49
    14, 0, -19, 5, -10, 0, -17, 11, -1,
    -- layer=1 filter=61 channel=50
    4, -15, 0, -17, -18, -10, 8, 1, -7,
    -- layer=1 filter=61 channel=51
    8, -10, -9, -18, -22, 14, 0, -13, -1,
    -- layer=1 filter=61 channel=52
    6, -19, 0, -8, 8, 12, -14, -4, -9,
    -- layer=1 filter=61 channel=53
    11, -6, -13, 1, -2, 4, -16, -7, -8,
    -- layer=1 filter=61 channel=54
    -9, 12, 9, -11, -15, 0, -2, 15, -3,
    -- layer=1 filter=61 channel=55
    14, -15, 4, -17, -1, 6, 13, 7, -18,
    -- layer=1 filter=61 channel=56
    7, 18, 9, -5, 4, 2, 10, 2, 9,
    -- layer=1 filter=61 channel=57
    17, 15, -3, -14, 11, 15, 5, -16, 12,
    -- layer=1 filter=61 channel=58
    -3, 1, 5, -3, -13, -3, -8, -11, 5,
    -- layer=1 filter=61 channel=59
    -17, -18, -19, -3, -17, -12, 12, 1, -16,
    -- layer=1 filter=61 channel=60
    17, -19, 10, 16, -18, 8, 4, 4, -10,
    -- layer=1 filter=61 channel=61
    13, 2, -2, -8, -16, 3, 0, -18, 6,
    -- layer=1 filter=61 channel=62
    -18, -17, 9, 5, -14, -15, -3, 8, -17,
    -- layer=1 filter=61 channel=63
    -21, -9, -3, -6, -6, -13, -16, -20, -17,
    -- layer=1 filter=62 channel=0
    -22, -6, -1, -15, -12, 6, -4, 1, -4,
    -- layer=1 filter=62 channel=1
    13, 8, 1, -8, -9, 2, 17, 24, -11,
    -- layer=1 filter=62 channel=2
    -26, -19, -28, -5, -57, -17, -4, 0, -34,
    -- layer=1 filter=62 channel=3
    -31, -9, -31, -24, -15, -36, -3, -26, 9,
    -- layer=1 filter=62 channel=4
    -10, 3, 10, 17, 0, -18, 16, -16, -14,
    -- layer=1 filter=62 channel=5
    -27, -6, -5, -17, -9, 6, 9, -11, 13,
    -- layer=1 filter=62 channel=6
    15, -38, 29, 19, 50, 13, -30, 59, 54,
    -- layer=1 filter=62 channel=7
    5, 18, -9, 7, -16, -5, 1, -8, 16,
    -- layer=1 filter=62 channel=8
    3, 9, -10, 10, 13, -1, -4, 14, 4,
    -- layer=1 filter=62 channel=9
    -19, -50, -26, 20, -14, -35, 0, 13, -4,
    -- layer=1 filter=62 channel=10
    -5, 14, 31, -8, -12, -11, -7, -18, 33,
    -- layer=1 filter=62 channel=11
    -32, -57, -35, 17, -7, -27, 0, 23, -28,
    -- layer=1 filter=62 channel=12
    44, 21, 41, -4, -13, 11, -14, -49, -22,
    -- layer=1 filter=62 channel=13
    -66, -31, -39, -5, -26, -27, 48, 0, -19,
    -- layer=1 filter=62 channel=14
    30, 57, 19, -17, 18, 19, -57, 28, 19,
    -- layer=1 filter=62 channel=15
    -47, -18, 2, 23, -26, -14, 31, 10, -15,
    -- layer=1 filter=62 channel=16
    -35, -33, -18, 8, -40, -42, 47, 28, -45,
    -- layer=1 filter=62 channel=17
    2, -21, -5, -66, -43, -1, -4, -11, -12,
    -- layer=1 filter=62 channel=18
    -7, -2, 20, -22, 31, 22, -64, -50, 16,
    -- layer=1 filter=62 channel=19
    36, 36, 22, -18, 5, 4, -91, -63, -17,
    -- layer=1 filter=62 channel=20
    16, -26, -10, 36, 24, 13, -28, 32, 42,
    -- layer=1 filter=62 channel=21
    -8, -8, 14, 3, -6, -14, -11, -6, -12,
    -- layer=1 filter=62 channel=22
    26, -13, 12, -19, 48, -6, -32, -27, 35,
    -- layer=1 filter=62 channel=23
    -29, -37, -37, 38, 0, -13, 20, 54, -16,
    -- layer=1 filter=62 channel=24
    -20, -12, -9, -7, 13, 0, 22, -12, -7,
    -- layer=1 filter=62 channel=25
    11, -10, 1, -39, -21, -16, -2, 0, 0,
    -- layer=1 filter=62 channel=26
    -25, -27, -13, 6, -15, -35, 21, -13, -33,
    -- layer=1 filter=62 channel=27
    -12, 21, -10, -45, 1, 7, -36, -52, -13,
    -- layer=1 filter=62 channel=28
    -41, -58, -48, -4, -37, -38, 41, 2, -52,
    -- layer=1 filter=62 channel=29
    30, 31, 33, 36, 45, 18, -46, 18, 48,
    -- layer=1 filter=62 channel=30
    -14, -24, -34, 29, -31, -44, 3, 19, -27,
    -- layer=1 filter=62 channel=31
    -10, -53, -36, 27, -2, -2, 27, 69, -15,
    -- layer=1 filter=62 channel=32
    -1, -14, 1, 6, -10, -2, -5, 11, -4,
    -- layer=1 filter=62 channel=33
    3, -29, -8, 24, 3, 13, -15, 50, 50,
    -- layer=1 filter=62 channel=34
    -10, -28, -27, -50, -55, -9, 3, -27, -15,
    -- layer=1 filter=62 channel=35
    -31, -17, -34, -85, -25, -36, -9, -28, 7,
    -- layer=1 filter=62 channel=36
    14, 38, 46, -34, 11, 22, -43, -1, -13,
    -- layer=1 filter=62 channel=37
    43, -20, -15, 77, 59, -38, 4, 57, 64,
    -- layer=1 filter=62 channel=38
    11, -16, 0, -7, 4, -11, -38, -14, 9,
    -- layer=1 filter=62 channel=39
    -19, 9, -9, -16, -20, -9, 11, -15, -2,
    -- layer=1 filter=62 channel=40
    -47, -68, -33, 20, -5, -35, 27, 40, -22,
    -- layer=1 filter=62 channel=41
    2, -13, -6, -9, 20, 22, -27, -1, 16,
    -- layer=1 filter=62 channel=42
    -6, -14, -1, 6, -4, -14, 7, -10, -12,
    -- layer=1 filter=62 channel=43
    -49, 1, -4, -77, -27, 35, -7, -29, 60,
    -- layer=1 filter=62 channel=44
    -14, -35, -10, 3, -27, -5, 22, 19, -31,
    -- layer=1 filter=62 channel=45
    -1, -48, 2, 52, -8, -2, 9, 106, 55,
    -- layer=1 filter=62 channel=46
    34, -49, -14, 77, 20, -24, 23, 67, 7,
    -- layer=1 filter=62 channel=47
    -34, -22, -24, -4, -22, -8, 4, 33, -26,
    -- layer=1 filter=62 channel=48
    -31, -14, -6, -24, -15, 0, 29, -27, -5,
    -- layer=1 filter=62 channel=49
    -26, -48, -31, 31, -4, -43, 6, 17, 9,
    -- layer=1 filter=62 channel=50
    28, -50, -4, 43, 27, -55, 1, 58, 55,
    -- layer=1 filter=62 channel=51
    19, -32, 5, 20, 18, -25, -18, 47, 12,
    -- layer=1 filter=62 channel=52
    -24, -79, -10, 38, 1, -35, 4, 82, 19,
    -- layer=1 filter=62 channel=53
    -27, -29, 16, -26, -20, -15, 1, -6, 7,
    -- layer=1 filter=62 channel=54
    -9, -81, -14, 51, 43, -30, -23, 106, 80,
    -- layer=1 filter=62 channel=55
    -35, -59, -13, -15, -13, -8, 22, 22, -12,
    -- layer=1 filter=62 channel=56
    4, -13, -28, 0, -38, -16, 28, -16, 23,
    -- layer=1 filter=62 channel=57
    -9, 10, -8, 8, -9, 9, 13, 2, 17,
    -- layer=1 filter=62 channel=58
    -25, 38, 7, -65, -16, 10, -25, -62, 12,
    -- layer=1 filter=62 channel=59
    11, 9, 29, -18, -23, 7, -17, -6, -10,
    -- layer=1 filter=62 channel=60
    -20, -16, -5, 0, -20, -25, 34, 21, 0,
    -- layer=1 filter=62 channel=61
    5, 12, 16, -14, -5, 22, 1, 20, -5,
    -- layer=1 filter=62 channel=62
    -8, 12, 2, -18, -11, -6, -1, -4, -2,
    -- layer=1 filter=62 channel=63
    -63, -18, -24, -50, -40, -8, -31, -46, 17,
    -- layer=1 filter=63 channel=0
    -5, -36, 0, 0, -2, -18, -16, 11, -23,
    -- layer=1 filter=63 channel=1
    4, -7, -10, -19, 0, -1, -33, -38, -36,
    -- layer=1 filter=63 channel=2
    -26, -16, -25, -60, -60, -47, -63, -61, -41,
    -- layer=1 filter=63 channel=3
    -21, 5, -3, -26, -33, -7, 7, 8, 33,
    -- layer=1 filter=63 channel=4
    -8, 13, -4, 17, 8, -2, -13, -2, 6,
    -- layer=1 filter=63 channel=5
    -22, -7, -27, -10, -23, -9, -35, -21, -20,
    -- layer=1 filter=63 channel=6
    0, 21, -2, -3, -11, 42, 2, 7, 4,
    -- layer=1 filter=63 channel=7
    -11, 11, -13, -15, 3, 2, -20, 14, 17,
    -- layer=1 filter=63 channel=8
    9, -6, 4, -12, -17, 5, 12, -13, 15,
    -- layer=1 filter=63 channel=9
    -4, -11, 6, -22, -22, -4, 1, -4, 39,
    -- layer=1 filter=63 channel=10
    -32, -34, -16, 7, 5, 12, -23, -22, -14,
    -- layer=1 filter=63 channel=11
    -25, -5, 11, -36, -40, -20, 13, 6, 19,
    -- layer=1 filter=63 channel=12
    -38, -37, -56, 32, 18, -2, -3, 0, -24,
    -- layer=1 filter=63 channel=13
    -42, -41, 18, -43, -31, -30, 6, 0, 28,
    -- layer=1 filter=63 channel=14
    16, -23, 25, -20, -42, -39, 38, 32, 5,
    -- layer=1 filter=63 channel=15
    -1, -15, 4, -30, -31, 8, -25, -3, 0,
    -- layer=1 filter=63 channel=16
    0, -9, -5, -26, -50, -38, -25, -30, -22,
    -- layer=1 filter=63 channel=17
    16, 21, 22, 38, 27, 30, 23, 42, 37,
    -- layer=1 filter=63 channel=18
    -5, 29, 1, -32, -36, -13, 8, 17, 19,
    -- layer=1 filter=63 channel=19
    32, 36, 25, 44, 75, 72, 31, 44, 27,
    -- layer=1 filter=63 channel=20
    -1, -39, -31, -21, -48, -4, 3, 25, 1,
    -- layer=1 filter=63 channel=21
    -2, 10, -10, -5, -10, -4, 4, -11, -8,
    -- layer=1 filter=63 channel=22
    4, 8, 3, -17, -37, -32, -21, -44, -48,
    -- layer=1 filter=63 channel=23
    -26, -25, -17, -24, -34, -1, 36, -24, -17,
    -- layer=1 filter=63 channel=24
    23, 23, 15, -49, -32, -36, -36, -47, -14,
    -- layer=1 filter=63 channel=25
    17, 23, 35, 42, 40, 36, 6, 27, 8,
    -- layer=1 filter=63 channel=26
    6, -12, 8, -28, -19, -7, -18, -1, 0,
    -- layer=1 filter=63 channel=27
    54, 72, 62, 37, 47, 46, 29, 23, 10,
    -- layer=1 filter=63 channel=28
    -25, -5, 18, -25, -26, -25, 14, 19, 26,
    -- layer=1 filter=63 channel=29
    33, 7, 19, 54, 41, 21, 1, 4, -22,
    -- layer=1 filter=63 channel=30
    5, -22, -27, -36, -56, -38, 2, -15, -4,
    -- layer=1 filter=63 channel=31
    5, 12, 11, -26, -32, -12, 10, -20, -7,
    -- layer=1 filter=63 channel=32
    18, -6, 8, -17, -8, -2, 5, -2, 0,
    -- layer=1 filter=63 channel=33
    5, 19, -6, 12, -9, 9, -9, -37, -28,
    -- layer=1 filter=63 channel=34
    -2, 0, 8, -10, 11, 4, -9, 19, 18,
    -- layer=1 filter=63 channel=35
    34, 15, 31, 40, 43, 22, 25, 41, 44,
    -- layer=1 filter=63 channel=36
    29, 51, -2, 52, 60, 34, 24, 9, 4,
    -- layer=1 filter=63 channel=37
    2, 36, 8, 12, -17, -35, 32, 23, 8,
    -- layer=1 filter=63 channel=38
    -34, -42, -40, -39, -46, -56, -17, -24, -22,
    -- layer=1 filter=63 channel=39
    -9, -29, -28, -6, -7, -3, -19, -3, -23,
    -- layer=1 filter=63 channel=40
    -22, -40, -8, -36, -41, 0, 8, 29, 7,
    -- layer=1 filter=63 channel=41
    0, -22, -27, 7, 14, -2, -9, -21, -14,
    -- layer=1 filter=63 channel=42
    20, -8, -2, -2, -1, 4, -22, -2, 6,
    -- layer=1 filter=63 channel=43
    5, 22, 32, 35, 55, 29, 18, 41, 0,
    -- layer=1 filter=63 channel=44
    -42, -8, -14, -29, -30, -23, 13, -5, -20,
    -- layer=1 filter=63 channel=45
    33, 21, 3, -5, -9, 9, 21, -19, -23,
    -- layer=1 filter=63 channel=46
    40, 45, 38, 6, -30, -21, 33, -5, -12,
    -- layer=1 filter=63 channel=47
    35, 6, 11, -8, 3, 16, -1, -24, -22,
    -- layer=1 filter=63 channel=48
    -7, -35, 1, -1, 4, 3, -15, -7, 2,
    -- layer=1 filter=63 channel=49
    -7, -14, -1, -22, -30, -26, -1, -16, 1,
    -- layer=1 filter=63 channel=50
    0, 7, 0, 64, 55, 59, 66, 35, 47,
    -- layer=1 filter=63 channel=51
    -38, -35, -50, -3, -40, -9, 0, -4, -20,
    -- layer=1 filter=63 channel=52
    15, 27, 47, -20, -18, 7, 12, 3, -12,
    -- layer=1 filter=63 channel=53
    -14, -11, 7, -10, -45, -15, -13, -10, 0,
    -- layer=1 filter=63 channel=54
    -39, -23, -20, -14, -67, -20, 6, -54, -31,
    -- layer=1 filter=63 channel=55
    -47, -55, -31, -60, -66, -29, -19, -19, -2,
    -- layer=1 filter=63 channel=56
    -19, -13, -20, 10, 7, 0, 21, 29, 1,
    -- layer=1 filter=63 channel=57
    14, -13, 11, -5, -17, -11, -17, -13, 11,
    -- layer=1 filter=63 channel=58
    14, -1, -4, 19, 47, 15, -12, 18, -11,
    -- layer=1 filter=63 channel=59
    40, -1, 7, 48, 33, 22, -15, 3, -15,
    -- layer=1 filter=63 channel=60
    -12, -21, 14, 9, 4, -10, 8, -9, -6,
    -- layer=1 filter=63 channel=61
    11, 31, -11, 19, 30, 25, 3, -10, -11,
    -- layer=1 filter=63 channel=62
    22, 14, 9, 53, 58, 37, 3, 10, 12,
    -- layer=1 filter=63 channel=63
    -25, 4, -12, -34, -39, -20, -57, -37, -33,

    others => 0);
end iwght_package;

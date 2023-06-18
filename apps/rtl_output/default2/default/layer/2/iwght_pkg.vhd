library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=2
    1279, -772, -2115, 7931, -4066, 9299, 1719, -7383, -3387, 7011, -6174, 4763, 3645, 7092, 269, 2054,

    -- weights
    -- layer=2 filter=0 channel=0
    25, -13, 23, 47, 36, 57, 23, 14, 40,
    -- layer=2 filter=0 channel=1
    -21, -34, -72, -65, -96, -15, 21, -64, -14,
    -- layer=2 filter=0 channel=2
    -55, -57, -18, -118, -104, -6, -66, -72, -8,
    -- layer=2 filter=0 channel=3
    59, 86, 56, 106, 78, 42, 37, 69, 67,
    -- layer=2 filter=0 channel=4
    25, -5, -35, 39, 18, 21, 65, 55, 29,
    -- layer=2 filter=0 channel=5
    2, -77, -86, 0, -12, 29, 22, 22, -39,
    -- layer=2 filter=0 channel=6
    8, -35, 3, -43, -52, 3, -60, -41, 2,
    -- layer=2 filter=0 channel=7
    -18, 17, 8, -68, -97, -26, -68, -88, -67,
    -- layer=2 filter=0 channel=8
    -10, 17, 10, 21, 20, -53, 61, 33, -7,
    -- layer=2 filter=0 channel=9
    28, 24, 38, 29, 37, 9, 14, 44, 46,
    -- layer=2 filter=0 channel=10
    -10, -26, -22, -64, -41, -59, -31, -79, -72,
    -- layer=2 filter=0 channel=11
    23, 36, 8, -6, 50, 53, -20, 29, 30,
    -- layer=2 filter=0 channel=12
    2, -48, -25, -42, -107, -60, -31, -99, -81,
    -- layer=2 filter=0 channel=13
    44, 38, -14, 12, 62, 58, 4, 66, 47,
    -- layer=2 filter=0 channel=14
    -56, 23, 1, -27, -7, -12, 19, 14, 18,
    -- layer=2 filter=0 channel=15
    1, -5, 7, 32, -25, -11, 41, 43, 27,
    -- layer=2 filter=1 channel=0
    11, -5, 16, -34, -16, 8, -2, 41, 29,
    -- layer=2 filter=1 channel=1
    21, 18, -13, 38, 76, -10, 1, -20, 2,
    -- layer=2 filter=1 channel=2
    73, 18, 6, 56, 34, -43, -45, -62, -43,
    -- layer=2 filter=1 channel=3
    -28, -67, -41, 31, 27, 9, 41, 63, 0,
    -- layer=2 filter=1 channel=4
    -54, -12, 27, 0, 4, -17, 42, 47, 16,
    -- layer=2 filter=1 channel=5
    -9, 14, -16, 8, 2, -11, 18, 38, -41,
    -- layer=2 filter=1 channel=6
    -19, -7, -14, 14, 0, -14, -28, 22, 16,
    -- layer=2 filter=1 channel=7
    66, 34, 48, 2, -21, 67, 9, 35, 37,
    -- layer=2 filter=1 channel=8
    -17, -28, 32, 24, 14, -30, 20, -20, 0,
    -- layer=2 filter=1 channel=9
    31, 30, 39, -4, -6, 0, -6, -24, 8,
    -- layer=2 filter=1 channel=10
    39, 21, -6, 29, 56, 49, -16, 2, 13,
    -- layer=2 filter=1 channel=11
    -30, -72, -33, -2, -53, -55, 6, -33, -26,
    -- layer=2 filter=1 channel=12
    68, 50, 2, 96, 62, 23, 63, -1, 38,
    -- layer=2 filter=1 channel=13
    10, 16, 42, 40, -7, 33, 8, 27, 21,
    -- layer=2 filter=1 channel=14
    -8, -3, -27, -37, -30, 22, 8, -27, 16,
    -- layer=2 filter=1 channel=15
    6, 61, 20, -28, 15, 18, 8, -7, -7,
    -- layer=2 filter=2 channel=0
    48, 11, -15, 13, -54, -11, 2, -12, 1,
    -- layer=2 filter=2 channel=1
    -4, -9, -9, -52, 60, 64, -26, 39, 47,
    -- layer=2 filter=2 channel=2
    13, 7, 38, 5, 9, 0, -5, 48, 29,
    -- layer=2 filter=2 channel=3
    -56, -16, 17, -5, -15, -11, 21, -54, -90,
    -- layer=2 filter=2 channel=4
    32, 33, -33, 2, 0, -51, -40, 0, -66,
    -- layer=2 filter=2 channel=5
    8, 23, -28, 17, 9, 13, -36, 15, 7,
    -- layer=2 filter=2 channel=6
    22, -11, -16, 32, 6, -21, 12, -23, -27,
    -- layer=2 filter=2 channel=7
    -18, 19, 29, -34, 50, 28, -24, 12, 66,
    -- layer=2 filter=2 channel=8
    12, -17, -67, 21, -20, 37, 54, 75, 96,
    -- layer=2 filter=2 channel=9
    -2, 33, 25, 46, 25, -30, 45, 6, -3,
    -- layer=2 filter=2 channel=10
    -10, 26, 50, 36, 2, -12, 33, 38, 60,
    -- layer=2 filter=2 channel=11
    6, 33, 32, 10, 10, 12, 10, -37, -6,
    -- layer=2 filter=2 channel=12
    8, 68, 11, -1, 45, 93, -11, 35, 77,
    -- layer=2 filter=2 channel=13
    26, 40, 5, 26, -23, -62, -30, -42, -50,
    -- layer=2 filter=2 channel=14
    58, 27, 5, 40, 16, -16, 36, -38, -42,
    -- layer=2 filter=2 channel=15
    23, -5, 21, 27, -26, -29, -13, -2, -9,
    -- layer=2 filter=3 channel=0
    -20, 13, 1, -49, 41, 32, -6, 4, 78,
    -- layer=2 filter=3 channel=1
    27, -59, -45, -19, -44, -52, 11, -30, 43,
    -- layer=2 filter=3 channel=2
    53, -7, 8, -13, -3, -12, -3, 7, 41,
    -- layer=2 filter=3 channel=3
    13, 54, 80, 60, 26, 11, 59, 19, 9,
    -- layer=2 filter=3 channel=4
    5, 20, 3, -10, 77, 25, -5, 28, 33,
    -- layer=2 filter=3 channel=5
    71, 89, 113, 42, -9, -5, 29, -30, 13,
    -- layer=2 filter=3 channel=6
    25, 8, -23, -23, -23, -19, -17, -10, -29,
    -- layer=2 filter=3 channel=7
    -7, -9, 8, -38, -1, 1, 41, 6, 7,
    -- layer=2 filter=3 channel=8
    0, -4, 37, -65, -56, -3, -10, -51, -69,
    -- layer=2 filter=3 channel=9
    -16, -54, -20, 10, 13, 19, -30, -36, 0,
    -- layer=2 filter=3 channel=10
    0, -20, 23, -11, -58, 4, 30, -7, -38,
    -- layer=2 filter=3 channel=11
    50, 55, 54, 29, 54, 9, 19, -14, -5,
    -- layer=2 filter=3 channel=12
    57, 9, -1, 57, -27, 28, 41, 41, 40,
    -- layer=2 filter=3 channel=13
    13, -41, 15, 56, -21, 33, 59, 43, -15,
    -- layer=2 filter=3 channel=14
    28, 67, 34, 9, 0, 19, 31, -40, 4,
    -- layer=2 filter=3 channel=15
    -45, -3, -34, -22, 19, 4, -41, -53, -53,
    -- layer=2 filter=4 channel=0
    -64, -38, -3, -47, -22, -23, 42, 7, -8,
    -- layer=2 filter=4 channel=1
    -6, 35, 20, 38, 59, 54, 33, 83, 69,
    -- layer=2 filter=4 channel=2
    54, 5, -37, 54, 29, 29, 72, 50, 23,
    -- layer=2 filter=4 channel=3
    15, 6, -15, 38, -15, -12, 48, 4, -18,
    -- layer=2 filter=4 channel=4
    -1, -49, -14, 2, -18, 22, 1, -20, 25,
    -- layer=2 filter=4 channel=5
    -12, -6, 12, -11, -2, 29, 30, 41, 49,
    -- layer=2 filter=4 channel=6
    -7, 23, 26, 27, 20, -16, 54, 39, 51,
    -- layer=2 filter=4 channel=7
    -8, 55, -3, 55, 37, 96, 39, 72, 78,
    -- layer=2 filter=4 channel=8
    -68, -11, 20, -15, 26, -6, -72, -13, 24,
    -- layer=2 filter=4 channel=9
    -3, -34, 33, -21, 21, -3, -33, -33, 35,
    -- layer=2 filter=4 channel=10
    -10, 3, 11, -40, 3, 70, 11, 12, 54,
    -- layer=2 filter=4 channel=11
    35, -35, -3, 55, 13, -4, 20, -16, 5,
    -- layer=2 filter=4 channel=12
    -42, 32, 24, 45, 85, 27, 40, 31, 33,
    -- layer=2 filter=4 channel=13
    -47, 26, 46, 17, -8, 23, -29, -20, -13,
    -- layer=2 filter=4 channel=14
    -6, -44, -8, -23, -2, 12, 18, -28, -24,
    -- layer=2 filter=4 channel=15
    -14, 38, 6, 7, 36, 51, -37, -7, 27,
    -- layer=2 filter=5 channel=0
    16, 36, 51, 13, 104, 74, 44, 58, -1,
    -- layer=2 filter=5 channel=1
    -32, 8, 26, -22, -66, -8, -33, -82, -54,
    -- layer=2 filter=5 channel=2
    22, 29, 56, 2, 60, 16, 13, -4, 0,
    -- layer=2 filter=5 channel=3
    4, -4, 14, -30, -14, 22, -1, -1, 45,
    -- layer=2 filter=5 channel=4
    24, 20, 14, -18, 54, 15, 44, 39, -5,
    -- layer=2 filter=5 channel=5
    -2, 45, 16, 11, 29, -21, 43, -4, 22,
    -- layer=2 filter=5 channel=6
    37, -14, 41, 36, 29, 21, 62, 0, -14,
    -- layer=2 filter=5 channel=7
    -6, -2, 8, -16, -54, -96, -38, -32, -6,
    -- layer=2 filter=5 channel=8
    39, 56, 20, 0, -13, 84, 24, -37, -51,
    -- layer=2 filter=5 channel=9
    -15, -41, -33, -17, 6, -9, 3, -6, 11,
    -- layer=2 filter=5 channel=10
    55, 3, -39, -8, -32, -37, 4, -31, -18,
    -- layer=2 filter=5 channel=11
    -21, 1, 31, 24, 40, 1, -21, 46, 53,
    -- layer=2 filter=5 channel=12
    17, -3, 22, -66, -40, -8, -27, -49, -19,
    -- layer=2 filter=5 channel=13
    -9, 12, -26, 21, -13, -12, 38, -34, 16,
    -- layer=2 filter=5 channel=14
    4, 32, 12, 47, 65, 11, 12, 31, 30,
    -- layer=2 filter=5 channel=15
    -34, -8, -45, -5, -54, -43, 6, -32, 9,
    -- layer=2 filter=6 channel=0
    -15, -31, -30, -15, -32, -24, -24, 19, -48,
    -- layer=2 filter=6 channel=1
    -6, 15, 5, 19, -25, 8, 40, -8, 34,
    -- layer=2 filter=6 channel=2
    -64, -90, -5, -82, 0, 50, 27, -9, 30,
    -- layer=2 filter=6 channel=3
    38, 48, -12, 13, 43, 1, -4, 0, -29,
    -- layer=2 filter=6 channel=4
    35, -13, 47, -23, 13, 74, 9, 57, 52,
    -- layer=2 filter=6 channel=5
    -45, -5, -9, 46, 50, 73, 45, -6, 6,
    -- layer=2 filter=6 channel=6
    -69, -40, -1, -62, -36, 9, -27, 27, 26,
    -- layer=2 filter=6 channel=7
    6, 15, 11, 31, 30, 27, 11, 15, 12,
    -- layer=2 filter=6 channel=8
    67, -11, -50, 54, 0, 0, 25, 5, -30,
    -- layer=2 filter=6 channel=9
    23, 30, -13, -20, -16, 53, -71, -33, 48,
    -- layer=2 filter=6 channel=10
    -52, -4, 33, -36, -15, 9, -28, -16, 43,
    -- layer=2 filter=6 channel=11
    -21, -21, -19, -21, -41, 27, -72, 26, 9,
    -- layer=2 filter=6 channel=12
    24, -20, -34, -52, -29, -34, 2, -9, -31,
    -- layer=2 filter=6 channel=13
    9, -7, -6, 6, -46, 4, 1, -18, 67,
    -- layer=2 filter=6 channel=14
    11, 18, -1, 11, 12, 26, 5, 49, 11,
    -- layer=2 filter=6 channel=15
    -29, -40, 23, -43, -41, 71, -57, -2, 124,
    -- layer=2 filter=7 channel=0
    -19, 32, -14, 24, 0, -25, -15, 16, 34,
    -- layer=2 filter=7 channel=1
    2, -56, -17, -22, -52, 14, -70, -48, -25,
    -- layer=2 filter=7 channel=2
    -68, -19, 2, -24, -29, -28, 22, -26, -23,
    -- layer=2 filter=7 channel=3
    29, -7, 7, 47, 54, 15, -31, 45, 31,
    -- layer=2 filter=7 channel=4
    -3, 15, -52, 40, 7, 3, 8, 63, 25,
    -- layer=2 filter=7 channel=5
    52, 12, -30, 72, 15, 31, 11, -7, 21,
    -- layer=2 filter=7 channel=6
    35, 55, 22, 54, 33, 33, 16, 20, 42,
    -- layer=2 filter=7 channel=7
    -41, -51, 28, -3, -26, -34, -8, -47, -73,
    -- layer=2 filter=7 channel=8
    -18, -15, 11, 0, -24, 78, -14, 13, 79,
    -- layer=2 filter=7 channel=9
    55, -22, 30, 20, 32, 27, -18, 47, 59,
    -- layer=2 filter=7 channel=10
    21, 10, -12, 9, -6, 39, -5, 30, -6,
    -- layer=2 filter=7 channel=11
    32, 6, -31, 45, 38, -33, 4, -13, -19,
    -- layer=2 filter=7 channel=12
    -39, -22, -20, -33, -25, 15, -54, -20, -27,
    -- layer=2 filter=7 channel=13
    -14, -25, -34, -8, -6, 18, -25, 33, 6,
    -- layer=2 filter=7 channel=14
    -1, 37, -53, 0, 28, -32, 23, 20, 14,
    -- layer=2 filter=7 channel=15
    -25, -24, 35, -2, 27, 25, 59, 37, 56,
    -- layer=2 filter=8 channel=0
    37, 15, 29, 43, 61, 14, -55, 8, 4,
    -- layer=2 filter=8 channel=1
    0, 24, 64, 17, 31, 45, -8, 37, 33,
    -- layer=2 filter=8 channel=2
    31, -18, -5, -26, -8, 50, -42, -5, -10,
    -- layer=2 filter=8 channel=3
    -12, -30, -4, 14, -19, -17, -13, -12, 39,
    -- layer=2 filter=8 channel=4
    -1, 34, 56, 2, -21, -14, -10, 24, 43,
    -- layer=2 filter=8 channel=5
    -20, -18, -44, -27, -23, 3, -36, -11, 30,
    -- layer=2 filter=8 channel=6
    29, 40, 17, 26, 14, 10, 2, 0, 20,
    -- layer=2 filter=8 channel=7
    74, 50, 80, 35, 107, 110, 9, 67, 56,
    -- layer=2 filter=8 channel=8
    65, 31, -7, 67, -24, -32, 7, 66, -20,
    -- layer=2 filter=8 channel=9
    1, -23, -20, 29, 13, -43, 15, 26, -7,
    -- layer=2 filter=8 channel=10
    30, 45, 34, 0, 45, 20, 7, 16, -22,
    -- layer=2 filter=8 channel=11
    10, -20, 9, -26, 12, 6, -7, 6, 10,
    -- layer=2 filter=8 channel=12
    13, 69, 63, -16, -19, -1, -49, -64, -68,
    -- layer=2 filter=8 channel=13
    -19, 3, -77, 6, -50, -46, 64, 2, -15,
    -- layer=2 filter=8 channel=14
    -12, 9, 68, 7, -5, 59, 9, -10, 34,
    -- layer=2 filter=8 channel=15
    39, 32, -12, 39, 31, 2, 45, 42, 16,
    -- layer=2 filter=9 channel=0
    -21, 16, 14, -47, -40, -53, -62, -75, -46,
    -- layer=2 filter=9 channel=1
    49, -39, -39, 11, 38, -41, 7, 5, 5,
    -- layer=2 filter=9 channel=2
    3, 52, -12, 1, -5, 4, 5, 59, -1,
    -- layer=2 filter=9 channel=3
    -62, -4, -33, -29, 12, -14, -5, -14, -36,
    -- layer=2 filter=9 channel=4
    -37, 41, 10, -52, -25, -1, 14, -11, 39,
    -- layer=2 filter=9 channel=5
    40, 84, 15, 14, 48, 17, 13, 2, -14,
    -- layer=2 filter=9 channel=6
    11, 23, 18, -55, 19, -28, -24, 30, 36,
    -- layer=2 filter=9 channel=7
    3, 6, 7, -21, -48, -67, -18, -49, -11,
    -- layer=2 filter=9 channel=8
    18, -73, -38, 31, 10, -34, 11, -41, -17,
    -- layer=2 filter=9 channel=9
    22, 19, 36, 13, 25, 27, 5, -17, 45,
    -- layer=2 filter=9 channel=10
    29, 10, -20, -19, 21, 16, -11, 2, 40,
    -- layer=2 filter=9 channel=11
    4, 18, 43, -19, 11, -7, 9, -24, -24,
    -- layer=2 filter=9 channel=12
    23, 27, 20, 77, 17, 7, 64, 41, 88,
    -- layer=2 filter=9 channel=13
    3, -10, -36, -2, 36, -26, -20, -3, 25,
    -- layer=2 filter=9 channel=14
    22, 24, 61, -1, 27, 44, -26, -41, 1,
    -- layer=2 filter=9 channel=15
    -37, -36, 30, -49, -6, 33, -32, -28, -14,
    -- layer=2 filter=10 channel=0
    -3, 75, -24, 65, 74, 30, 93, 65, 64,
    -- layer=2 filter=10 channel=1
    25, 49, 31, 62, -5, 31, -26, -19, -5,
    -- layer=2 filter=10 channel=2
    62, 53, -2, 32, -2, 33, 30, 59, 63,
    -- layer=2 filter=10 channel=3
    -49, 1, 46, -39, -44, -12, 12, 9, 34,
    -- layer=2 filter=10 channel=4
    -29, -13, -12, 22, 16, -3, 44, -10, 44,
    -- layer=2 filter=10 channel=5
    -5, 23, -10, 27, -26, -57, -7, 5, 18,
    -- layer=2 filter=10 channel=6
    -18, 23, -31, 34, -24, -44, 64, 29, -55,
    -- layer=2 filter=10 channel=7
    82, 44, 14, 54, -14, 31, -26, 15, 33,
    -- layer=2 filter=10 channel=8
    -3, 26, -36, -67, -81, -57, -82, -68, -119,
    -- layer=2 filter=10 channel=9
    -11, 11, 28, -22, 0, 24, 27, -22, -30,
    -- layer=2 filter=10 channel=10
    5, 3, 22, 38, 7, -14, 28, 21, -41,
    -- layer=2 filter=10 channel=11
    -4, -37, -10, 13, -59, 2, -8, 39, 46,
    -- layer=2 filter=10 channel=12
    -9, -7, 1, -29, 18, 28, -43, 4, -12,
    -- layer=2 filter=10 channel=13
    -6, 30, 35, -21, -25, -8, -32, 33, 36,
    -- layer=2 filter=10 channel=14
    38, 36, -8, 32, 38, -3, 3, -12, -23,
    -- layer=2 filter=10 channel=15
    21, 3, 21, 32, 14, -30, 7, 5, 28,
    -- layer=2 filter=11 channel=0
    -64, -104, -51, -96, -88, -106, -33, -25, -10,
    -- layer=2 filter=11 channel=1
    -8, 67, 19, 46, 60, 18, -3, 20, -2,
    -- layer=2 filter=11 channel=2
    -5, 38, 84, 13, 44, 64, -42, 23, 34,
    -- layer=2 filter=11 channel=3
    15, -7, 3, -39, 2, -2, -20, 21, 22,
    -- layer=2 filter=11 channel=4
    -50, -52, -55, -38, 0, -38, 46, -1, -8,
    -- layer=2 filter=11 channel=5
    42, -30, 8, 1, -16, 19, 6, -26, -36,
    -- layer=2 filter=11 channel=6
    36, -5, 21, 26, 26, 27, -9, 13, -5,
    -- layer=2 filter=11 channel=7
    -73, -58, -20, 23, 16, 18, 58, 16, -6,
    -- layer=2 filter=11 channel=8
    29, -1, -47, 17, 18, 5, 81, 32, 35,
    -- layer=2 filter=11 channel=9
    36, 7, -1, 39, 14, -27, 0, 13, 10,
    -- layer=2 filter=11 channel=10
    12, -4, -35, 54, 44, -2, 43, 31, -12,
    -- layer=2 filter=11 channel=11
    -41, -22, 3, 11, 2, 43, -15, 23, 63,
    -- layer=2 filter=11 channel=12
    -5, 24, 89, 109, 114, 124, 40, 40, -4,
    -- layer=2 filter=11 channel=13
    54, 68, 38, 2, 59, -5, 15, -28, -15,
    -- layer=2 filter=11 channel=14
    -58, -68, 1, -5, -50, 28, -20, 23, 0,
    -- layer=2 filter=11 channel=15
    38, 28, 5, 12, 3, 10, -21, 20, -41,
    -- layer=2 filter=12 channel=0
    -12, 19, 3, -73, -58, -61, -38, -23, -38,
    -- layer=2 filter=12 channel=1
    71, 43, 9, 65, 48, 62, 49, 31, 58,
    -- layer=2 filter=12 channel=2
    20, 31, -4, -11, 2, 50, -19, 24, -25,
    -- layer=2 filter=12 channel=3
    -1, -35, -44, 6, -7, 6, -16, 24, 19,
    -- layer=2 filter=12 channel=4
    -8, 1, 11, -59, 10, -31, -51, -64, -33,
    -- layer=2 filter=12 channel=5
    -20, -17, 10, -6, -27, 18, -37, -25, -64,
    -- layer=2 filter=12 channel=6
    24, -7, -29, -16, 41, -2, 18, -52, 6,
    -- layer=2 filter=12 channel=7
    19, 13, 27, -9, 31, 38, 48, -23, -14,
    -- layer=2 filter=12 channel=8
    16, -7, 13, 53, 19, 26, 74, 55, 63,
    -- layer=2 filter=12 channel=9
    -6, 45, 28, 14, 8, 47, 10, 7, 7,
    -- layer=2 filter=12 channel=10
    22, 39, -15, 58, 42, 53, 29, 15, 12,
    -- layer=2 filter=12 channel=11
    -37, 32, 0, 2, -16, 17, -28, 31, -23,
    -- layer=2 filter=12 channel=12
    51, 55, 16, 37, 93, 37, 54, 85, 59,
    -- layer=2 filter=12 channel=13
    35, 5, -4, 3, 0, 17, 0, 7, 12,
    -- layer=2 filter=12 channel=14
    14, 13, 41, -25, -19, 30, 17, -27, 2,
    -- layer=2 filter=12 channel=15
    13, 2, 12, -32, 38, -26, 22, 6, -48,
    -- layer=2 filter=13 channel=0
    -3, -1, -16, -9, 18, 25, 26, 58, -3,
    -- layer=2 filter=13 channel=1
    -41, 3, 61, -36, -49, -48, -43, -14, -30,
    -- layer=2 filter=13 channel=2
    -53, 10, 64, -31, -38, 31, 16, 17, -23,
    -- layer=2 filter=13 channel=3
    96, 40, -34, 1, 26, -69, -19, -39, -12,
    -- layer=2 filter=13 channel=4
    27, -6, -37, -7, 16, 14, 74, 22, 27,
    -- layer=2 filter=13 channel=5
    -3, 30, 4, -44, -21, -52, -31, -82, -48,
    -- layer=2 filter=13 channel=6
    -25, 41, 33, 31, 25, 21, 30, -16, 12,
    -- layer=2 filter=13 channel=7
    -83, -40, -24, -67, -77, -33, -21, -12, 3,
    -- layer=2 filter=13 channel=8
    19, 36, 48, 27, 16, 53, 18, 25, 2,
    -- layer=2 filter=13 channel=9
    -8, 44, -5, 21, 49, 15, 21, -2, 19,
    -- layer=2 filter=13 channel=10
    -14, -29, -28, -48, -22, 21, -3, 35, 31,
    -- layer=2 filter=13 channel=11
    75, 43, -34, 9, -8, -18, 9, 11, -52,
    -- layer=2 filter=13 channel=12
    -12, -54, 31, -9, 34, -4, 29, 5, 58,
    -- layer=2 filter=13 channel=13
    -10, 27, -25, 20, 17, -2, 28, -29, -34,
    -- layer=2 filter=13 channel=14
    22, 17, -23, 36, -21, 14, 37, 8, 4,
    -- layer=2 filter=13 channel=15
    -46, -45, -31, -31, 14, 0, 34, 10, 43,
    -- layer=2 filter=14 channel=0
    14, 79, 20, 58, 42, 35, 77, 48, 20,
    -- layer=2 filter=14 channel=1
    -29, -57, -6, -58, -29, -67, -88, -41, -36,
    -- layer=2 filter=14 channel=2
    -44, 53, 6, -7, -7, 12, 2, 12, -29,
    -- layer=2 filter=14 channel=3
    20, -1, 35, 7, -12, -10, -8, -4, -23,
    -- layer=2 filter=14 channel=4
    -54, 21, 14, -31, 41, 31, 15, 63, 43,
    -- layer=2 filter=14 channel=5
    -43, -46, 0, 10, -47, -35, 8, -5, -43,
    -- layer=2 filter=14 channel=6
    37, 8, -12, 15, 13, 4, 11, 18, -9,
    -- layer=2 filter=14 channel=7
    -6, 7, 4, 9, 37, 0, 38, 49, -21,
    -- layer=2 filter=14 channel=8
    4, -21, 20, 9, 39, 79, 51, 66, 109,
    -- layer=2 filter=14 channel=9
    69, 12, -66, 10, -24, 15, -1, 10, -20,
    -- layer=2 filter=14 channel=10
    -22, -29, 7, -36, -19, -48, 9, -34, -58,
    -- layer=2 filter=14 channel=11
    36, -38, -16, -21, -21, -47, -32, -5, -61,
    -- layer=2 filter=14 channel=12
    -46, -14, -12, -49, -79, -23, -75, -58, -90,
    -- layer=2 filter=14 channel=13
    37, -44, -68, 64, -70, -53, -9, -12, 12,
    -- layer=2 filter=14 channel=14
    29, 21, -31, 41, 13, -25, 43, 3, 40,
    -- layer=2 filter=14 channel=15
    33, 16, -86, 54, -35, -12, 20, 12, 0,
    -- layer=2 filter=15 channel=0
    15, 35, 18, -4, 23, 15, 9, 6, 1,
    -- layer=2 filter=15 channel=1
    18, -23, -56, 8, -56, -5, -32, -5, 29,
    -- layer=2 filter=15 channel=2
    7, 4, -28, 31, 2, 11, 33, 44, 56,
    -- layer=2 filter=15 channel=3
    -8, -13, 28, 28, 34, -6, 1, -5, 8,
    -- layer=2 filter=15 channel=4
    15, 14, -28, 16, -25, 30, 6, 3, 8,
    -- layer=2 filter=15 channel=5
    27, 60, 73, 72, 33, -51, 14, 56, -16,
    -- layer=2 filter=15 channel=6
    -27, 17, -41, 9, 44, -1, 6, 1, 18,
    -- layer=2 filter=15 channel=7
    -43, -13, -5, -21, -8, 7, -66, -6, 20,
    -- layer=2 filter=15 channel=8
    44, 98, 53, 27, 71, 61, 36, 2, -20,
    -- layer=2 filter=15 channel=9
    -52, -21, -5, -51, -16, 0, 41, 12, -17,
    -- layer=2 filter=15 channel=10
    -78, -27, -63, -45, -73, -7, 24, 16, 34,
    -- layer=2 filter=15 channel=11
    -33, -12, 11, 18, -22, 13, 3, -4, -40,
    -- layer=2 filter=15 channel=12
    -35, -76, -68, -11, -54, -87, 14, 28, -20,
    -- layer=2 filter=15 channel=13
    -32, -61, 0, 10, -17, 7, 27, 14, -14,
    -- layer=2 filter=15 channel=14
    5, -16, -2, 43, 6, 41, 19, -9, -8,
    -- layer=2 filter=15 channel=15
    -97, -34, -11, -45, -58, -10, -10, -18, -2,

    others => 0);
end iwght_package;

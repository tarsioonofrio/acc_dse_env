library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=2
    8568, -2623, 15596, 9994, 20886, -10440, 4435, 22457, 7105, 3658, -968, 13392, 4929, 421, 10628, -2747, 17687, -8219, 955, -625, -3821, 9301, -1170, -6617, -2240, 65, 8811, -10612, 4710, 10914, 13329, -1074, -1352, 2452, -1252, -1958, -5108, 794, -694, -232, -3625, 5058, -5805, -2822, 2, 546, -923, -476, 1368, -2947, 3168, -3238, -7428, -3817, 14825, 2341, -1101, 11423, 258, -48, 9344, 22188, 14496, -2446,

    -- weights
    -- layer=2 filter=0 channel=0
    -8, -63, -89, 41, -39, -56, 59, -23, -64,
    -- layer=2 filter=0 channel=1
    -31, -66, -73, -111, -126, -122, -46, -123, -25,
    -- layer=2 filter=0 channel=2
    4, -24, -15, -14, -18, -24, 21, 14, -14,
    -- layer=2 filter=0 channel=3
    -133, -119, -132, -58, -78, -104, -24, -27, -80,
    -- layer=2 filter=0 channel=4
    -62, -66, -51, -32, -47, -22, -59, -18, -9,
    -- layer=2 filter=0 channel=5
    36, -37, -74, 37, -32, -22, 40, 0, 11,
    -- layer=2 filter=0 channel=6
    48, 0, 10, 44, -5, -35, 50, -3, 8,
    -- layer=2 filter=0 channel=7
    56, -18, -53, 39, -12, -17, 41, -10, 7,
    -- layer=2 filter=0 channel=8
    22, 5, -12, 47, -33, -43, 24, -28, -8,
    -- layer=2 filter=0 channel=9
    24, 67, 45, 1, 9, 18, -9, -11, -20,
    -- layer=2 filter=0 channel=10
    0, -36, -13, 68, -14, -5, 59, 21, -51,
    -- layer=2 filter=0 channel=11
    -24, 18, 34, -48, 29, 7, -26, -17, 21,
    -- layer=2 filter=0 channel=12
    21, -7, -26, 23, 7, 24, 22, 40, 6,
    -- layer=2 filter=0 channel=13
    19, -1, 16, -2, -16, 2, -19, 0, 17,
    -- layer=2 filter=0 channel=14
    -4, -48, -51, 15, -17, -34, 10, -20, 4,
    -- layer=2 filter=0 channel=15
    25, -20, -54, -14, -52, -63, 9, -5, -57,
    -- layer=2 filter=0 channel=16
    38, -34, 6, 32, -62, -31, 0, -66, -55,
    -- layer=2 filter=0 channel=17
    7, 52, 45, 1, 23, 27, 13, 24, 24,
    -- layer=2 filter=0 channel=18
    45, -20, -110, 23, 3, -9, 28, 5, 14,
    -- layer=2 filter=0 channel=19
    -2, 42, 73, -17, -3, 11, 43, 7, -12,
    -- layer=2 filter=0 channel=20
    29, 1, -2, 32, -37, -41, 42, -15, 6,
    -- layer=2 filter=0 channel=21
    -52, -20, -11, -64, 17, -11, -59, 0, -19,
    -- layer=2 filter=0 channel=22
    -38, 6, -9, -46, -3, 12, -21, -4, -32,
    -- layer=2 filter=0 channel=23
    -18, -1, -19, -9, -45, -39, 37, -23, -62,
    -- layer=2 filter=0 channel=24
    25, 14, 13, 11, -34, -32, -10, 0, -29,
    -- layer=2 filter=0 channel=25
    66, 91, 83, 43, 3, 43, 14, 5, -9,
    -- layer=2 filter=0 channel=26
    -16, 15, 21, -11, -4, -1, 11, -6, 28,
    -- layer=2 filter=0 channel=27
    -28, 1, -11, 57, -24, 2, 54, 54, -15,
    -- layer=2 filter=0 channel=28
    4, -32, -11, -33, -23, -31, -13, -34, 0,
    -- layer=2 filter=0 channel=29
    17, -42, -29, 16, -51, -27, 22, 15, -26,
    -- layer=2 filter=0 channel=30
    -15, 4, 22, 12, -14, 10, -13, -27, -79,
    -- layer=2 filter=0 channel=31
    10, 68, 30, 26, 35, 34, 2, 43, 9,
    -- layer=2 filter=1 channel=0
    -27, -11, -13, -15, 1, 6, -9, 14, -12,
    -- layer=2 filter=1 channel=1
    5, 4, 12, 19, -7, -16, -19, -21, 5,
    -- layer=2 filter=1 channel=2
    -17, 0, 2, 5, 18, -5, -4, 13, 4,
    -- layer=2 filter=1 channel=3
    -17, -1, -12, -6, -9, -14, -2, 2, -1,
    -- layer=2 filter=1 channel=4
    -18, -6, -15, -1, -3, 13, -20, 8, 14,
    -- layer=2 filter=1 channel=5
    -25, 7, -2, -13, 17, -31, -21, 15, 4,
    -- layer=2 filter=1 channel=6
    -8, -29, -9, -32, -6, 14, -3, -19, -10,
    -- layer=2 filter=1 channel=7
    -18, -1, -7, -14, -13, -6, -11, 15, -2,
    -- layer=2 filter=1 channel=8
    -5, -8, -27, -4, -17, -27, -4, -19, 3,
    -- layer=2 filter=1 channel=9
    -17, 12, -10, -22, -23, -13, -4, -20, -3,
    -- layer=2 filter=1 channel=10
    -23, 11, -17, -9, -5, -21, -14, 4, -13,
    -- layer=2 filter=1 channel=11
    3, 11, 1, -6, -33, -4, 14, -15, 10,
    -- layer=2 filter=1 channel=12
    4, 4, -33, -4, 17, -24, -25, -7, -32,
    -- layer=2 filter=1 channel=13
    -1, 3, 6, -7, 9, -13, 12, -17, -18,
    -- layer=2 filter=1 channel=14
    -6, -12, -21, -12, 10, -3, -15, 12, -22,
    -- layer=2 filter=1 channel=15
    8, -33, -26, -10, 2, 8, -21, 2, 6,
    -- layer=2 filter=1 channel=16
    -26, 4, -20, -7, -12, 11, 8, 3, -13,
    -- layer=2 filter=1 channel=17
    -4, -14, 2, -18, -12, -16, -9, -19, -15,
    -- layer=2 filter=1 channel=18
    -15, -13, -11, -2, -15, -25, -4, -11, -14,
    -- layer=2 filter=1 channel=19
    -9, -2, -16, 6, 3, 4, -34, -2, 3,
    -- layer=2 filter=1 channel=20
    -15, -14, -27, 12, -20, -21, -22, 5, -25,
    -- layer=2 filter=1 channel=21
    5, -24, -9, -2, 6, 0, -27, -19, -7,
    -- layer=2 filter=1 channel=22
    1, -15, 0, 11, -32, 14, -19, -8, -4,
    -- layer=2 filter=1 channel=23
    11, -27, -7, -29, -32, -36, 11, -22, -10,
    -- layer=2 filter=1 channel=24
    -18, -28, -1, 6, -7, -18, -25, 13, 5,
    -- layer=2 filter=1 channel=25
    -15, -32, -30, -12, -15, -44, -29, -2, -21,
    -- layer=2 filter=1 channel=26
    -27, 6, -26, -28, -40, -35, 1, -32, -24,
    -- layer=2 filter=1 channel=27
    6, 6, -7, -4, -24, 14, -12, 6, 9,
    -- layer=2 filter=1 channel=28
    8, -36, 8, 18, 6, 6, 16, -27, -25,
    -- layer=2 filter=1 channel=29
    -27, -7, -20, 13, 3, 7, -8, -13, -3,
    -- layer=2 filter=1 channel=30
    -11, -28, 16, -18, -29, -17, -15, -37, 15,
    -- layer=2 filter=1 channel=31
    -6, -12, -2, -7, -2, 3, -22, -24, 8,
    -- layer=2 filter=2 channel=0
    -17, 0, 28, 18, -10, 22, 35, -37, -17,
    -- layer=2 filter=2 channel=1
    -26, -17, -4, -32, 25, 38, -20, -1, 48,
    -- layer=2 filter=2 channel=2
    3, 5, 23, 16, -1, 11, -12, -11, -1,
    -- layer=2 filter=2 channel=3
    -17, 23, -56, 29, -26, -36, 2, -86, -71,
    -- layer=2 filter=2 channel=4
    -26, -9, 2, -14, -69, -39, -10, -80, -68,
    -- layer=2 filter=2 channel=5
    -21, 0, -15, -24, -43, -30, 23, -48, -30,
    -- layer=2 filter=2 channel=6
    -3, 3, 47, -45, 20, -19, -19, -33, -72,
    -- layer=2 filter=2 channel=7
    -36, 9, -10, 8, -15, -6, -1, -19, -11,
    -- layer=2 filter=2 channel=8
    -4, -5, 45, -26, 12, 18, -53, -44, -50,
    -- layer=2 filter=2 channel=9
    18, 29, -26, 50, 23, -1, 46, 27, 58,
    -- layer=2 filter=2 channel=10
    38, 28, 31, 41, 39, -3, 28, 44, 41,
    -- layer=2 filter=2 channel=11
    -7, -14, -19, 10, 15, 21, 43, 51, 63,
    -- layer=2 filter=2 channel=12
    4, 14, -13, 29, 14, 6, 0, 3, 12,
    -- layer=2 filter=2 channel=13
    11, 4, -11, -7, 28, 18, -22, -24, -35,
    -- layer=2 filter=2 channel=14
    0, 28, 15, 27, -9, 0, 41, -52, 30,
    -- layer=2 filter=2 channel=15
    -15, 28, -30, 8, 8, -2, 16, 10, -9,
    -- layer=2 filter=2 channel=16
    -41, -13, 1, -24, 30, 73, 17, 70, 51,
    -- layer=2 filter=2 channel=17
    15, 3, -28, 31, 11, -12, -13, 27, 12,
    -- layer=2 filter=2 channel=18
    -16, -7, -25, 35, 7, 24, 49, -14, 81,
    -- layer=2 filter=2 channel=19
    3, 0, 8, -20, 7, -5, -86, -45, 68,
    -- layer=2 filter=2 channel=20
    -2, -13, 18, -33, -2, 2, -36, -56, -33,
    -- layer=2 filter=2 channel=21
    41, 19, 2, 8, 5, -26, 10, 30, 26,
    -- layer=2 filter=2 channel=22
    35, -18, -11, -6, -2, -12, 40, 24, 20,
    -- layer=2 filter=2 channel=23
    -37, -6, -15, -123, -95, -5, -155, -58, 87,
    -- layer=2 filter=2 channel=24
    -25, 31, -4, 39, 4, 9, 13, 23, 77,
    -- layer=2 filter=2 channel=25
    -28, 4, -3, -6, -4, 16, 30, 13, 15,
    -- layer=2 filter=2 channel=26
    -28, 13, 35, -60, 2, 55, -88, -47, 25,
    -- layer=2 filter=2 channel=27
    -13, 15, 15, -85, -9, -33, -101, -47, 46,
    -- layer=2 filter=2 channel=28
    19, 32, 36, -36, -1, 76, -100, -33, -7,
    -- layer=2 filter=2 channel=29
    -47, -10, -23, -10, -54, 1, 5, -59, -2,
    -- layer=2 filter=2 channel=30
    1, 2, -7, 14, -18, 0, 30, 0, 4,
    -- layer=2 filter=2 channel=31
    22, 0, 1, 25, 27, -6, 30, 36, 31,
    -- layer=2 filter=3 channel=0
    -14, -8, -34, -16, 25, 9, -12, 19, -2,
    -- layer=2 filter=3 channel=1
    -11, -48, -42, 52, -47, -39, -90, -89, -76,
    -- layer=2 filter=3 channel=2
    11, 4, 4, 13, 11, -10, 22, -21, 9,
    -- layer=2 filter=3 channel=3
    -10, -102, -56, -55, -111, -102, -33, -39, -68,
    -- layer=2 filter=3 channel=4
    -4, -58, -69, 88, 70, 9, 0, 24, 18,
    -- layer=2 filter=3 channel=5
    -42, -27, 13, 10, 13, 18, 36, 12, 8,
    -- layer=2 filter=3 channel=6
    6, -50, 2, -22, 13, -35, -2, 19, 32,
    -- layer=2 filter=3 channel=7
    -30, -7, -30, -6, 32, 25, 22, -6, 5,
    -- layer=2 filter=3 channel=8
    -30, -22, -46, 1, -28, 13, -4, 15, 43,
    -- layer=2 filter=3 channel=9
    6, 9, -16, -14, -11, -31, -27, -35, -34,
    -- layer=2 filter=3 channel=10
    21, -37, -35, -4, 18, 6, -35, -1, 12,
    -- layer=2 filter=3 channel=11
    43, 14, 3, 32, 35, -1, 31, 23, 44,
    -- layer=2 filter=3 channel=12
    13, -25, -2, 13, 16, 0, 23, 25, 29,
    -- layer=2 filter=3 channel=13
    -49, -35, -24, -23, 14, 20, -18, -46, -14,
    -- layer=2 filter=3 channel=14
    -38, -15, -26, 30, 17, -17, 12, -48, -53,
    -- layer=2 filter=3 channel=15
    -23, -3, 7, -40, -17, 20, -29, -25, -10,
    -- layer=2 filter=3 channel=16
    -8, -35, -26, 37, -35, -83, -135, -52, -91,
    -- layer=2 filter=3 channel=17
    18, 12, 13, -5, 0, -15, 9, 6, 40,
    -- layer=2 filter=3 channel=18
    -5, -26, -47, -33, 18, 17, -34, -20, -29,
    -- layer=2 filter=3 channel=19
    65, 58, 23, 54, 55, 19, 49, -36, 4,
    -- layer=2 filter=3 channel=20
    -15, -81, -56, -36, -21, 7, 33, 27, 35,
    -- layer=2 filter=3 channel=21
    27, 21, 40, 38, 25, 24, 54, -13, -8,
    -- layer=2 filter=3 channel=22
    45, 54, -4, 71, -2, -6, 31, -54, -55,
    -- layer=2 filter=3 channel=23
    7, 36, 31, 41, -36, -8, -5, -62, -73,
    -- layer=2 filter=3 channel=24
    -22, -3, 12, -34, 23, 40, -8, 18, 39,
    -- layer=2 filter=3 channel=25
    -10, 26, -2, 42, 2, 32, 11, 12, 10,
    -- layer=2 filter=3 channel=26
    17, 19, 52, 18, -14, -7, 1, 7, 5,
    -- layer=2 filter=3 channel=27
    17, 37, 45, -1, -25, 3, 30, 30, 44,
    -- layer=2 filter=3 channel=28
    5, -36, -9, -20, -34, -50, -5, 69, -5,
    -- layer=2 filter=3 channel=29
    -24, -6, -13, -4, 12, 47, 25, -24, 4,
    -- layer=2 filter=3 channel=30
    -48, -30, -17, -10, 17, 5, -7, -43, -12,
    -- layer=2 filter=3 channel=31
    3, 20, 15, 18, -5, 18, 36, 12, 22,
    -- layer=2 filter=4 channel=0
    -63, -10, -48, -13, -12, 0, -23, -4, -13,
    -- layer=2 filter=4 channel=1
    0, 0, 3, -8, -31, 67, 20, 30, 22,
    -- layer=2 filter=4 channel=2
    -6, 10, -14, -13, 13, 13, -2, 24, 4,
    -- layer=2 filter=4 channel=3
    8, 4, 44, 12, -61, -69, 43, 7, -87,
    -- layer=2 filter=4 channel=4
    -9, -79, -59, -69, -79, -76, -70, -75, -115,
    -- layer=2 filter=4 channel=5
    -55, -45, -62, -29, -13, -6, -1, -14, 17,
    -- layer=2 filter=4 channel=6
    -32, -1, 6, -49, 8, -38, -66, -17, 29,
    -- layer=2 filter=4 channel=7
    -55, -34, -55, -23, -10, -26, 2, 24, -17,
    -- layer=2 filter=4 channel=8
    -25, 7, 2, -69, -16, -38, -60, -43, -7,
    -- layer=2 filter=4 channel=9
    27, 15, -37, 17, 35, 19, 33, 28, 51,
    -- layer=2 filter=4 channel=10
    64, 11, -8, 64, 2, -21, 24, 4, 10,
    -- layer=2 filter=4 channel=11
    -50, -12, 3, -14, -16, 6, 27, -40, -24,
    -- layer=2 filter=4 channel=12
    -31, -7, -27, 15, 4, -10, 56, 17, -12,
    -- layer=2 filter=4 channel=13
    -3, -21, -76, -94, -14, -30, -76, -56, 11,
    -- layer=2 filter=4 channel=14
    -21, 22, -25, 31, 3, 16, 18, 40, -4,
    -- layer=2 filter=4 channel=15
    -58, -26, -59, -53, -21, -28, -1, 17, 27,
    -- layer=2 filter=4 channel=16
    -16, -23, 39, 49, 2, -53, -40, -21, 7,
    -- layer=2 filter=4 channel=17
    3, -11, 12, 6, -8, 21, -4, -13, 5,
    -- layer=2 filter=4 channel=18
    7, 21, -7, -7, -2, 2, 6, 18, 0,
    -- layer=2 filter=4 channel=19
    -25, -11, 32, -9, -21, 19, -52, -10, 14,
    -- layer=2 filter=4 channel=20
    -23, -30, -16, -80, -34, -37, -74, -26, 29,
    -- layer=2 filter=4 channel=21
    -2, 15, 32, 48, 8, -22, 89, 19, -55,
    -- layer=2 filter=4 channel=22
    5, 13, 38, 37, -36, -12, 87, -28, -23,
    -- layer=2 filter=4 channel=23
    74, 49, 9, 70, -22, 40, -22, 3, -42,
    -- layer=2 filter=4 channel=24
    64, 5, -18, 31, 2, 28, -2, 46, -6,
    -- layer=2 filter=4 channel=25
    32, 17, -1, 11, 9, 10, -13, 17, 61,
    -- layer=2 filter=4 channel=26
    10, 9, 6, 7, 9, 44, -64, 2, 5,
    -- layer=2 filter=4 channel=27
    96, 66, -6, 4, 14, -7, -22, 31, -10,
    -- layer=2 filter=4 channel=28
    -16, 14, 61, 28, 10, -12, -24, -2, -26,
    -- layer=2 filter=4 channel=29
    -61, -26, -50, -3, 18, -12, -6, -12, -8,
    -- layer=2 filter=4 channel=30
    -19, -82, -67, -29, -82, -13, 11, -61, -61,
    -- layer=2 filter=4 channel=31
    -18, 4, 5, 10, -3, -4, -7, 3, 20,
    -- layer=2 filter=5 channel=0
    15, -5, 0, 4, 7, -58, 26, 47, -22,
    -- layer=2 filter=5 channel=1
    -4, 13, -56, 45, 17, -5, 41, 14, 6,
    -- layer=2 filter=5 channel=2
    16, -5, 0, 15, 0, 5, 21, 16, -13,
    -- layer=2 filter=5 channel=3
    44, 34, -39, 38, 13, -31, 28, 10, -83,
    -- layer=2 filter=5 channel=4
    26, 37, 44, 56, -17, 4, 75, 7, -31,
    -- layer=2 filter=5 channel=5
    23, -14, -13, 11, -21, -28, 63, 54, -14,
    -- layer=2 filter=5 channel=6
    25, -24, -41, -22, -10, 40, -46, 6, 28,
    -- layer=2 filter=5 channel=7
    19, -33, -1, 19, 0, -45, 58, 63, -12,
    -- layer=2 filter=5 channel=8
    -40, 28, 6, -15, -33, 35, -27, -38, -20,
    -- layer=2 filter=5 channel=9
    -45, -60, -73, -3, -19, -86, 31, -10, -1,
    -- layer=2 filter=5 channel=10
    -107, 64, 7, -20, -6, 14, -81, -51, 37,
    -- layer=2 filter=5 channel=11
    0, -41, -43, -16, 39, 106, -7, -36, 75,
    -- layer=2 filter=5 channel=12
    -20, -4, 31, 23, -39, -5, 37, -7, -38,
    -- layer=2 filter=5 channel=13
    -35, -4, -8, -25, -11, 16, -38, -9, -77,
    -- layer=2 filter=5 channel=14
    12, -19, 35, 17, -3, -76, 43, 38, 2,
    -- layer=2 filter=5 channel=15
    5, -11, 33, 6, -34, -31, 26, 26, -23,
    -- layer=2 filter=5 channel=16
    -54, 15, -39, 4, -45, -13, 20, 35, 100,
    -- layer=2 filter=5 channel=17
    -50, -16, -54, -11, -1, -1, -12, -45, -52,
    -- layer=2 filter=5 channel=18
    -12, -10, 53, -34, -34, -38, 44, 62, -25,
    -- layer=2 filter=5 channel=19
    29, -60, -49, 21, 69, 5, -90, 45, 48,
    -- layer=2 filter=5 channel=20
    -22, 21, -3, -38, -7, 38, -55, -59, -22,
    -- layer=2 filter=5 channel=21
    -43, -53, 12, -31, 9, -4, -36, 24, -35,
    -- layer=2 filter=5 channel=22
    -55, -76, -42, -72, 4, 24, -3, -37, -12,
    -- layer=2 filter=5 channel=23
    -68, 5, -39, -121, -52, 44, -60, 26, 37,
    -- layer=2 filter=5 channel=24
    -15, 48, 48, -6, 10, -31, -39, -64, -29,
    -- layer=2 filter=5 channel=25
    -86, 9, 4, -61, 9, -19, 7, -20, -4,
    -- layer=2 filter=5 channel=26
    11, -24, -33, -3, 65, -12, -7, 7, -36,
    -- layer=2 filter=5 channel=27
    -20, 98, 20, -38, -31, 57, -65, -22, 21,
    -- layer=2 filter=5 channel=28
    92, 109, -54, 6, 19, 3, -56, -65, 85,
    -- layer=2 filter=5 channel=29
    19, 22, 43, 32, -20, -39, 59, 21, -46,
    -- layer=2 filter=5 channel=30
    -67, 26, 17, -13, 46, 46, 0, -1, -9,
    -- layer=2 filter=5 channel=31
    -19, -31, -4, -10, 8, 17, -26, -55, -32,
    -- layer=2 filter=6 channel=0
    19, -4, 29, 0, 14, 43, 8, 17, 38,
    -- layer=2 filter=6 channel=1
    -28, 12, 29, -65, -53, -56, -16, -14, -33,
    -- layer=2 filter=6 channel=2
    13, -24, 1, -3, -8, -9, -8, 7, -4,
    -- layer=2 filter=6 channel=3
    -34, 45, 12, 14, 15, 63, -35, -56, -18,
    -- layer=2 filter=6 channel=4
    -79, -44, -52, -25, -8, 25, 39, 37, 60,
    -- layer=2 filter=6 channel=5
    23, -26, -19, -6, -2, -4, 33, 13, -22,
    -- layer=2 filter=6 channel=6
    7, -30, -15, 14, 9, 12, 37, 51, 44,
    -- layer=2 filter=6 channel=7
    -26, -1, -8, -9, -31, -5, 40, 19, 3,
    -- layer=2 filter=6 channel=8
    15, -58, -39, 20, 1, 46, 44, 8, 66,
    -- layer=2 filter=6 channel=9
    36, 35, 40, 26, -6, -62, -26, -69, -72,
    -- layer=2 filter=6 channel=10
    22, 13, -34, -2, 12, 24, 18, 27, 40,
    -- layer=2 filter=6 channel=11
    20, 4, -59, 7, -1, -4, -46, 9, 9,
    -- layer=2 filter=6 channel=12
    5, 5, 3, -26, 15, 20, 7, -35, 28,
    -- layer=2 filter=6 channel=13
    6, -5, -23, -8, -38, 11, 39, 32, 46,
    -- layer=2 filter=6 channel=14
    4, 3, -14, 10, 2, -4, 3, -31, -44,
    -- layer=2 filter=6 channel=15
    -15, 23, 24, 13, 9, 12, 0, 7, 9,
    -- layer=2 filter=6 channel=16
    16, -3, -33, 20, 0, -31, -19, -56, -51,
    -- layer=2 filter=6 channel=17
    51, 7, 23, 9, -24, -28, -2, -68, -50,
    -- layer=2 filter=6 channel=18
    16, 19, 12, -3, 28, 7, -11, -17, -22,
    -- layer=2 filter=6 channel=19
    -41, -30, 6, 45, 66, 55, 83, 55, 49,
    -- layer=2 filter=6 channel=20
    20, -38, -29, -11, 5, 47, 9, 46, 58,
    -- layer=2 filter=6 channel=21
    -56, -40, -5, -24, 14, 24, -40, 17, 65,
    -- layer=2 filter=6 channel=22
    -54, -79, -75, -19, 48, 3, -26, 24, 59,
    -- layer=2 filter=6 channel=23
    -8, -22, 3, -12, -74, -54, -51, -126, -44,
    -- layer=2 filter=6 channel=24
    -30, -32, 19, 19, -21, 19, 0, -3, -34,
    -- layer=2 filter=6 channel=25
    12, -16, 16, -3, -18, -9, -20, -13, -14,
    -- layer=2 filter=6 channel=26
    -19, -50, 15, 43, 24, 20, 11, 29, 56,
    -- layer=2 filter=6 channel=27
    -11, 8, 2, -16, 1, 18, 20, -11, 11,
    -- layer=2 filter=6 channel=28
    13, 21, 50, 4, -46, -48, -37, -40, -10,
    -- layer=2 filter=6 channel=29
    -3, 2, -23, -10, -17, -2, 4, -8, -1,
    -- layer=2 filter=6 channel=30
    41, -9, -17, 30, 24, -23, 0, 20, 34,
    -- layer=2 filter=6 channel=31
    43, -5, -8, 29, -6, -20, 0, 1, -21,
    -- layer=2 filter=7 channel=0
    -21, -16, -11, -7, -16, 8, 22, 5, 38,
    -- layer=2 filter=7 channel=1
    6, 56, 12, -11, -47, -55, 15, -92, -94,
    -- layer=2 filter=7 channel=2
    -10, -12, -3, -10, -13, 0, 0, 0, 14,
    -- layer=2 filter=7 channel=3
    15, 15, -53, 8, 6, -41, -22, -25, -103,
    -- layer=2 filter=7 channel=4
    -62, -45, -47, -11, -11, -8, -9, -10, -6,
    -- layer=2 filter=7 channel=5
    6, 6, 11, 11, -8, 29, 30, -17, 16,
    -- layer=2 filter=7 channel=6
    -22, -53, -104, -7, 0, -41, 14, 28, -17,
    -- layer=2 filter=7 channel=7
    -14, 0, 28, 4, -7, 24, -3, 15, 43,
    -- layer=2 filter=7 channel=8
    -6, -49, -49, 10, -36, -69, -1, 22, -19,
    -- layer=2 filter=7 channel=9
    14, 57, 53, 12, 47, 37, -7, 14, 52,
    -- layer=2 filter=7 channel=10
    23, -15, -27, 54, -13, -14, 45, 24, 1,
    -- layer=2 filter=7 channel=11
    4, 14, 19, -30, -21, 1, -8, -10, 40,
    -- layer=2 filter=7 channel=12
    -10, -4, -7, 6, 8, 20, -10, 18, 36,
    -- layer=2 filter=7 channel=13
    19, 2, -13, 2, -59, -42, -23, 3, 15,
    -- layer=2 filter=7 channel=14
    -6, -31, 18, -3, -14, 23, -25, -30, 34,
    -- layer=2 filter=7 channel=15
    -7, -38, 3, 10, 0, -15, 10, 20, 17,
    -- layer=2 filter=7 channel=16
    -63, -86, -61, -14, -18, 13, -14, 23, -58,
    -- layer=2 filter=7 channel=17
    14, 34, 36, -11, 4, 26, 28, -1, 16,
    -- layer=2 filter=7 channel=18
    -6, -27, -1, 18, 1, 28, -15, 0, 21,
    -- layer=2 filter=7 channel=19
    0, -16, -80, -28, -16, -87, 47, 41, 65,
    -- layer=2 filter=7 channel=20
    -5, -31, -25, 13, -37, -28, 11, 1, -19,
    -- layer=2 filter=7 channel=21
    -24, 22, 31, -39, 10, 5, -17, 0, 83,
    -- layer=2 filter=7 channel=22
    -15, 24, -12, -33, -7, -24, -22, 6, 59,
    -- layer=2 filter=7 channel=23
    -66, -87, -38, -29, -83, -56, -30, -60, 8,
    -- layer=2 filter=7 channel=24
    0, -37, -2, 55, 2, -13, -7, 51, 34,
    -- layer=2 filter=7 channel=25
    50, 26, -1, 24, -48, -32, 48, 31, -3,
    -- layer=2 filter=7 channel=26
    -4, -5, -39, 21, -37, 11, 78, 51, 69,
    -- layer=2 filter=7 channel=27
    0, -55, -43, 6, -39, -75, 20, 6, 16,
    -- layer=2 filter=7 channel=28
    -39, -6, -40, 14, -25, -11, 37, -22, -93,
    -- layer=2 filter=7 channel=29
    -18, -10, 26, 32, -12, 28, -18, 14, 27,
    -- layer=2 filter=7 channel=30
    8, 27, 48, -48, 1, -21, -12, -37, -11,
    -- layer=2 filter=7 channel=31
    -9, 19, 4, -2, 17, 24, 20, -17, 7,
    -- layer=2 filter=8 channel=0
    4, 4, -10, 5, 15, 17, 33, 17, 28,
    -- layer=2 filter=8 channel=1
    30, 68, 34, 54, 18, 4, 9, 43, -41,
    -- layer=2 filter=8 channel=2
    -10, -7, -2, 30, 20, -20, 0, -12, 17,
    -- layer=2 filter=8 channel=3
    -5, 9, -45, 11, 37, -43, 35, -27, -52,
    -- layer=2 filter=8 channel=4
    -28, -8, 6, -36, -4, -29, -17, -8, -4,
    -- layer=2 filter=8 channel=5
    -37, -12, 10, -15, -27, -4, -28, -6, -29,
    -- layer=2 filter=8 channel=6
    51, -21, 0, 26, 0, 18, 16, -26, 23,
    -- layer=2 filter=8 channel=7
    -2, -13, 38, -30, -14, 0, -37, -30, 0,
    -- layer=2 filter=8 channel=8
    26, -3, 57, 11, 49, 31, 28, -19, 43,
    -- layer=2 filter=8 channel=9
    -3, 26, 63, -40, 0, 20, -30, 41, 26,
    -- layer=2 filter=8 channel=10
    74, 6, 18, 54, 25, 4, 60, 27, 20,
    -- layer=2 filter=8 channel=11
    -11, -50, -56, 33, 50, -28, -17, 36, 1,
    -- layer=2 filter=8 channel=12
    -29, 2, 40, -33, 10, 9, 1, 2, 32,
    -- layer=2 filter=8 channel=13
    60, 17, 49, 25, 1, 21, 8, 16, 2,
    -- layer=2 filter=8 channel=14
    -24, 2, 24, -74, -103, -36, -56, -53, -14,
    -- layer=2 filter=8 channel=15
    5, -22, 4, -8, 3, 7, 6, 29, 52,
    -- layer=2 filter=8 channel=16
    49, -6, 45, 59, 29, 33, 67, 26, 7,
    -- layer=2 filter=8 channel=17
    8, 7, -1, -17, 24, -10, -23, 15, 17,
    -- layer=2 filter=8 channel=18
    -8, 5, -13, 18, 0, -40, 81, -36, -52,
    -- layer=2 filter=8 channel=19
    -37, -9, -79, 40, 45, 68, 27, 15, 57,
    -- layer=2 filter=8 channel=20
    52, 30, 19, 35, 52, 30, 4, -14, 19,
    -- layer=2 filter=8 channel=21
    -40, 1, -7, 4, 18, 25, -11, 14, 6,
    -- layer=2 filter=8 channel=22
    -2, -28, -48, 19, 28, 12, -23, -3, 26,
    -- layer=2 filter=8 channel=23
    -13, -13, 22, -55, -87, -38, -59, -50, -10,
    -- layer=2 filter=8 channel=24
    -7, 7, 35, -26, -23, -5, -16, -27, 2,
    -- layer=2 filter=8 channel=25
    12, 27, 11, 22, -1, -39, 42, 29, 18,
    -- layer=2 filter=8 channel=26
    6, 17, 17, 33, 6, 15, 1, 9, 1,
    -- layer=2 filter=8 channel=27
    12, 37, 27, -16, 52, -16, -63, -67, -24,
    -- layer=2 filter=8 channel=28
    27, 75, 7, -17, -23, -53, -10, -146, -109,
    -- layer=2 filter=8 channel=29
    -40, 16, 29, -34, -8, -1, -55, -73, -66,
    -- layer=2 filter=8 channel=30
    -1, -15, 7, 7, -3, -12, -13, 23, -26,
    -- layer=2 filter=8 channel=31
    -22, -5, -15, -10, 23, -7, 13, 27, -3,
    -- layer=2 filter=9 channel=0
    36, 22, 5, -4, -24, 21, 23, -19, 2,
    -- layer=2 filter=9 channel=1
    -33, -133, -52, -6, -9, 35, 21, -3, 45,
    -- layer=2 filter=9 channel=2
    0, 11, -9, 1, 6, -13, 2, -12, -24,
    -- layer=2 filter=9 channel=3
    -85, -84, -3, -23, -35, 50, 31, -51, 126,
    -- layer=2 filter=9 channel=4
    35, 9, -49, 9, -73, -28, 37, -56, 98,
    -- layer=2 filter=9 channel=5
    17, 0, 39, -17, -32, 14, 3, -9, -10,
    -- layer=2 filter=9 channel=6
    12, -9, 4, 0, -51, -2, -15, -61, -16,
    -- layer=2 filter=9 channel=7
    6, -1, 0, -29, 1, 20, -31, -48, 3,
    -- layer=2 filter=9 channel=8
    25, 4, 3, 7, -31, -5, 13, -16, -43,
    -- layer=2 filter=9 channel=9
    32, 37, 20, 51, 41, 29, -6, 36, 22,
    -- layer=2 filter=9 channel=10
    12, 13, 4, 21, -7, -33, -1, 37, -2,
    -- layer=2 filter=9 channel=11
    0, -27, -12, 24, -13, -4, 19, -45, -1,
    -- layer=2 filter=9 channel=12
    18, 45, 38, 9, 28, 3, -27, 0, -7,
    -- layer=2 filter=9 channel=13
    6, 7, -1, 7, 1, -11, 30, 0, 6,
    -- layer=2 filter=9 channel=14
    39, 34, 11, -1, 45, 36, -2, 21, 18,
    -- layer=2 filter=9 channel=15
    30, 35, 50, 12, 13, 20, 29, 4, -43,
    -- layer=2 filter=9 channel=16
    7, -38, -23, 79, 26, 36, 43, 41, -6,
    -- layer=2 filter=9 channel=17
    -14, 2, 6, 4, 19, 15, -39, 21, 15,
    -- layer=2 filter=9 channel=18
    45, 32, 40, 48, 13, 13, 42, -30, -16,
    -- layer=2 filter=9 channel=19
    -194, -96, -123, -117, -101, -99, -63, -7, 12,
    -- layer=2 filter=9 channel=20
    0, 2, 51, -6, -49, -25, -34, -10, 7,
    -- layer=2 filter=9 channel=21
    10, 18, 19, 2, 13, -1, 15, -3, 10,
    -- layer=2 filter=9 channel=22
    -14, -38, -31, -6, 15, -18, 8, 21, -26,
    -- layer=2 filter=9 channel=23
    -91, -27, 23, -26, 31, -37, -30, 37, 32,
    -- layer=2 filter=9 channel=24
    21, 15, -19, 50, 46, 16, 28, 34, 68,
    -- layer=2 filter=9 channel=25
    34, 6, -19, -27, -51, -36, 22, -49, 10,
    -- layer=2 filter=9 channel=26
    -87, -94, -35, -63, -37, -15, -1, -37, 39,
    -- layer=2 filter=9 channel=27
    -87, 0, 16, -26, 51, -30, -48, 101, 70,
    -- layer=2 filter=9 channel=28
    -44, -80, -21, -37, -40, 24, -3, -56, 127,
    -- layer=2 filter=9 channel=29
    18, 0, 29, -7, -8, 2, -18, -17, -12,
    -- layer=2 filter=9 channel=30
    91, 48, -24, 71, 28, -42, 82, 0, -33,
    -- layer=2 filter=9 channel=31
    -11, 9, 26, 0, 18, -10, -43, 21, 16,
    -- layer=2 filter=10 channel=0
    -20, -9, -24, -5, -6, 9, -25, -4, 2,
    -- layer=2 filter=10 channel=1
    -7, -4, -14, 1, -15, -10, -2, -18, -20,
    -- layer=2 filter=10 channel=2
    0, 8, 7, 2, 1, -4, -1, 20, 15,
    -- layer=2 filter=10 channel=3
    12, 19, -1, -13, 1, 15, -16, -2, 9,
    -- layer=2 filter=10 channel=4
    13, -4, -7, -15, -12, 8, -4, 3, 15,
    -- layer=2 filter=10 channel=5
    -24, 13, -24, 12, -8, 12, 4, -2, -20,
    -- layer=2 filter=10 channel=6
    -7, -15, 11, -5, -2, -4, 12, -16, 1,
    -- layer=2 filter=10 channel=7
    -12, -22, 2, -17, 11, 5, -9, -21, 9,
    -- layer=2 filter=10 channel=8
    -12, 6, -10, -20, -19, 0, -17, -17, -18,
    -- layer=2 filter=10 channel=9
    -18, -8, -14, -18, 9, 5, -10, -23, 3,
    -- layer=2 filter=10 channel=10
    -26, -17, -30, -22, -27, -17, 1, 0, -1,
    -- layer=2 filter=10 channel=11
    -4, 16, 17, -3, -17, -13, -17, -13, -20,
    -- layer=2 filter=10 channel=12
    -9, -1, -23, 16, 8, -6, -3, -7, 2,
    -- layer=2 filter=10 channel=13
    -21, 7, -15, -8, 3, -16, -6, 17, -9,
    -- layer=2 filter=10 channel=14
    5, 2, -21, 3, -23, -5, -17, 4, 0,
    -- layer=2 filter=10 channel=15
    -23, -13, 4, -9, -17, 1, -9, 16, 10,
    -- layer=2 filter=10 channel=16
    0, 7, 11, -12, -11, 15, -5, 7, -9,
    -- layer=2 filter=10 channel=17
    10, -18, -24, -4, 0, -1, 7, -27, 4,
    -- layer=2 filter=10 channel=18
    15, 11, -4, -22, -20, -1, 6, -6, 12,
    -- layer=2 filter=10 channel=19
    -5, 4, -2, 4, -3, -17, -9, -9, -7,
    -- layer=2 filter=10 channel=20
    7, -2, 15, -7, 8, -2, -13, -17, 12,
    -- layer=2 filter=10 channel=21
    15, -8, -18, -19, -27, -20, -11, -15, 0,
    -- layer=2 filter=10 channel=22
    5, -14, -14, 0, -4, 0, -1, 1, -16,
    -- layer=2 filter=10 channel=23
    6, -11, 0, 5, 5, 9, -25, -25, -19,
    -- layer=2 filter=10 channel=24
    3, -19, -18, -5, -15, -6, -29, -7, -21,
    -- layer=2 filter=10 channel=25
    10, -15, -16, -12, 10, -9, -11, 7, -24,
    -- layer=2 filter=10 channel=26
    2, 1, -29, -15, -21, -2, -20, -27, 4,
    -- layer=2 filter=10 channel=27
    4, -8, 11, 0, -12, 9, 15, 13, -2,
    -- layer=2 filter=10 channel=28
    -20, 2, -12, 19, 10, -19, 6, -6, -5,
    -- layer=2 filter=10 channel=29
    -12, -17, -4, 5, -1, -26, -27, 2, -11,
    -- layer=2 filter=10 channel=30
    1, -16, 18, -12, 5, 6, 6, -19, -3,
    -- layer=2 filter=10 channel=31
    17, -12, 0, -14, 9, -18, -13, -4, 16,
    -- layer=2 filter=11 channel=0
    -15, -5, 5, -1, -10, -5, 10, 1, -23,
    -- layer=2 filter=11 channel=1
    -66, -60, -28, -19, 46, 10, 86, 74, 40,
    -- layer=2 filter=11 channel=2
    11, -22, 0, 14, 4, 0, 16, -10, 15,
    -- layer=2 filter=11 channel=3
    -12, -38, -4, -15, 6, 53, -17, 55, 6,
    -- layer=2 filter=11 channel=4
    4, 31, 17, 17, -22, 31, 21, -28, -42,
    -- layer=2 filter=11 channel=5
    -1, -10, 1, -6, -13, 11, 0, 17, -18,
    -- layer=2 filter=11 channel=6
    -89, -79, -88, -11, -21, -55, -16, -18, 39,
    -- layer=2 filter=11 channel=7
    -4, -8, 13, 2, -4, 2, 0, -6, -20,
    -- layer=2 filter=11 channel=8
    -37, -72, -54, -43, -6, -62, -39, -48, 19,
    -- layer=2 filter=11 channel=9
    1, 13, 11, 17, 14, 49, 48, 39, -18,
    -- layer=2 filter=11 channel=10
    6, -46, -32, -27, 4, -7, -4, 23, -2,
    -- layer=2 filter=11 channel=11
    30, 12, -3, 58, -8, -37, 8, 2, 54,
    -- layer=2 filter=11 channel=12
    17, 3, 22, -2, -9, 22, 13, -25, 1,
    -- layer=2 filter=11 channel=13
    -76, -56, -84, -25, 0, -17, -19, 6, 51,
    -- layer=2 filter=11 channel=14
    11, 19, 28, 6, -6, 36, 30, 11, -45,
    -- layer=2 filter=11 channel=15
    9, 1, 35, 8, -8, 22, 0, 1, -25,
    -- layer=2 filter=11 channel=16
    -50, -31, -33, -42, -21, 8, 0, 25, 43,
    -- layer=2 filter=11 channel=17
    5, -7, 7, 6, -17, 1, 10, 14, 33,
    -- layer=2 filter=11 channel=18
    -6, -11, 19, 0, 28, 21, 12, 3, -21,
    -- layer=2 filter=11 channel=19
    -152, -107, -163, -78, -84, -50, 89, 80, 16,
    -- layer=2 filter=11 channel=20
    -44, -54, -36, -37, 21, -33, -96, -11, 47,
    -- layer=2 filter=11 channel=21
    16, -7, 5, 18, -4, 22, -2, 3, 5,
    -- layer=2 filter=11 channel=22
    -16, -17, 4, -19, -15, 4, -20, 34, -23,
    -- layer=2 filter=11 channel=23
    -188, -167, -70, -110, -69, 24, -51, -5, 6,
    -- layer=2 filter=11 channel=24
    -28, -26, -7, -19, 46, 53, -49, 36, 56,
    -- layer=2 filter=11 channel=25
    14, -8, -27, 32, -27, -53, 42, 32, -20,
    -- layer=2 filter=11 channel=26
    -111, -93, -63, -13, 10, 30, 57, 89, 37,
    -- layer=2 filter=11 channel=27
    -171, -115, -86, -79, 2, 1, -65, 51, 76,
    -- layer=2 filter=11 channel=28
    -130, -102, -116, -13, 22, 13, 25, 89, 103,
    -- layer=2 filter=11 channel=29
    -25, -9, 27, -1, -5, 10, 1, 16, 10,
    -- layer=2 filter=11 channel=30
    90, 81, 54, 9, -10, -7, -47, -59, -52,
    -- layer=2 filter=11 channel=31
    -15, 11, -10, -11, -5, -13, 15, 16, 3,
    -- layer=2 filter=12 channel=0
    -8, -22, -3, -16, 40, 32, -33, 10, 12,
    -- layer=2 filter=12 channel=1
    3, 8, 29, 14, 30, 15, 0, -4, -41,
    -- layer=2 filter=12 channel=2
    -14, -2, 4, 0, -3, 10, 18, 10, -19,
    -- layer=2 filter=12 channel=3
    1, 55, 56, 47, 62, -57, 29, -64, -42,
    -- layer=2 filter=12 channel=4
    -33, -20, -95, 53, 12, 97, -53, 26, 88,
    -- layer=2 filter=12 channel=5
    -29, -5, -37, -25, 4, 26, -36, 8, -54,
    -- layer=2 filter=12 channel=6
    -45, -25, -24, -38, -38, 33, -19, 17, 49,
    -- layer=2 filter=12 channel=7
    -43, -36, -10, -29, 9, 5, -2, -28, -30,
    -- layer=2 filter=12 channel=8
    0, -27, -7, -31, -44, -9, 1, -6, 30,
    -- layer=2 filter=12 channel=9
    39, 16, 41, -13, 31, 5, 1, -13, 3,
    -- layer=2 filter=12 channel=10
    13, -10, -16, -11, -9, 4, 41, -24, -7,
    -- layer=2 filter=12 channel=11
    17, 26, 26, -30, -38, -49, 3, 23, -15,
    -- layer=2 filter=12 channel=12
    -31, -33, -17, -26, -8, -24, -4, 4, 37,
    -- layer=2 filter=12 channel=13
    -27, 29, 21, -8, -19, 6, -12, 29, 15,
    -- layer=2 filter=12 channel=14
    8, 6, -6, -28, 7, -37, -70, -39, -67,
    -- layer=2 filter=12 channel=15
    -13, -17, 17, -9, 0, 9, 38, 0, -5,
    -- layer=2 filter=12 channel=16
    43, 34, 14, 58, 5, 8, 1, -63, -2,
    -- layer=2 filter=12 channel=17
    39, 20, 37, 14, -5, 20, 45, 28, -9,
    -- layer=2 filter=12 channel=18
    19, 73, 31, 23, 21, 32, -47, -20, 28,
    -- layer=2 filter=12 channel=19
    -53, -52, -32, 38, 37, 58, 25, 15, 28,
    -- layer=2 filter=12 channel=20
    -55, -50, -29, -27, -54, 1, 2, 33, 72,
    -- layer=2 filter=12 channel=21
    -13, -18, 25, -12, -15, -10, -3, -12, -14,
    -- layer=2 filter=12 channel=22
    17, -24, 26, 1, -55, -36, 49, 23, 7,
    -- layer=2 filter=12 channel=23
    -42, -95, -82, -65, -29, -19, 19, -73, -22,
    -- layer=2 filter=12 channel=24
    -17, -32, -44, 0, -40, 69, 6, -26, 17,
    -- layer=2 filter=12 channel=25
    23, -35, -58, 4, -34, 8, 11, 6, 17,
    -- layer=2 filter=12 channel=26
    5, -62, -18, 35, 35, 71, 39, 8, 27,
    -- layer=2 filter=12 channel=27
    -87, -87, -44, -13, -48, 6, 63, -41, -22,
    -- layer=2 filter=12 channel=28
    -110, -128, -105, -79, -43, -87, -61, 7, 0,
    -- layer=2 filter=12 channel=29
    -40, -28, -1, 17, 7, 38, -35, -11, -28,
    -- layer=2 filter=12 channel=30
    36, 35, 46, -29, -24, -36, -32, -37, -57,
    -- layer=2 filter=12 channel=31
    6, 32, 28, 1, -5, -13, 21, -4, -2,
    -- layer=2 filter=13 channel=0
    36, 31, 7, 23, 4, 0, 13, -4, 21,
    -- layer=2 filter=13 channel=1
    -44, -7, 33, 2, 45, 66, -33, 12, 73,
    -- layer=2 filter=13 channel=2
    -20, 14, -3, 14, -13, -19, -11, 20, 9,
    -- layer=2 filter=13 channel=3
    -27, -51, 32, -52, -11, -3, -4, -14, 16,
    -- layer=2 filter=13 channel=4
    -4, -22, 31, -26, -9, -37, -41, -10, -35,
    -- layer=2 filter=13 channel=5
    39, 12, -2, 43, 34, -12, -14, -24, -5,
    -- layer=2 filter=13 channel=6
    -14, 24, 11, -10, 1, 16, 20, -9, -6,
    -- layer=2 filter=13 channel=7
    44, 0, -19, 11, -10, -26, 6, -9, -5,
    -- layer=2 filter=13 channel=8
    -47, 3, -10, -12, -17, 4, 3, -15, -10,
    -- layer=2 filter=13 channel=9
    26, 0, -14, 29, -5, -9, -46, -5, -20,
    -- layer=2 filter=13 channel=10
    -58, -50, -3, -47, -17, 6, 9, -30, -26,
    -- layer=2 filter=13 channel=11
    -65, -47, 5, -84, -64, -33, -68, -45, -53,
    -- layer=2 filter=13 channel=12
    40, 46, 24, 13, -12, 12, 17, 7, -5,
    -- layer=2 filter=13 channel=13
    -19, -20, 36, -17, -27, -29, 46, 14, -21,
    -- layer=2 filter=13 channel=14
    60, -10, -26, 24, -2, -9, -32, -35, -9,
    -- layer=2 filter=13 channel=15
    15, 7, 6, -5, -5, -20, 0, -8, -1,
    -- layer=2 filter=13 channel=16
    -48, 8, 1, -45, -20, 41, -52, -57, -62,
    -- layer=2 filter=13 channel=17
    -21, -43, -28, -35, -17, -30, -24, -1, -12,
    -- layer=2 filter=13 channel=18
    66, 5, 7, 28, -17, -28, -17, -9, 28,
    -- layer=2 filter=13 channel=19
    -16, -54, -12, 21, 6, 14, -57, -26, 2,
    -- layer=2 filter=13 channel=20
    -8, -2, 21, -12, -16, 0, 26, 0, -11,
    -- layer=2 filter=13 channel=21
    -13, -14, 10, -22, -24, 1, 5, -22, -6,
    -- layer=2 filter=13 channel=22
    -55, -44, -17, -63, -11, 20, -27, -73, -51,
    -- layer=2 filter=13 channel=23
    -3, -22, -7, -38, 12, -14, -31, -71, 7,
    -- layer=2 filter=13 channel=24
    15, -55, -37, 0, -57, -27, 20, -23, 19,
    -- layer=2 filter=13 channel=25
    -26, -42, -22, -59, -45, -34, -77, -38, -41,
    -- layer=2 filter=13 channel=26
    -15, -15, -9, -25, 0, 32, -28, -17, 10,
    -- layer=2 filter=13 channel=27
    -7, -29, 15, -49, 37, 3, -9, -11, 44,
    -- layer=2 filter=13 channel=28
    -36, 24, -27, -4, -4, 5, 18, 22, 25,
    -- layer=2 filter=13 channel=29
    41, 14, 5, 31, 8, -1, 14, -29, 3,
    -- layer=2 filter=13 channel=30
    -35, -32, 30, -19, 55, -32, -40, -23, -37,
    -- layer=2 filter=13 channel=31
    -3, -16, -21, 11, 17, 7, 9, 20, -8,
    -- layer=2 filter=14 channel=0
    -23, 13, 17, -13, 46, 49, -6, 8, 35,
    -- layer=2 filter=14 channel=1
    -22, -80, -40, 3, 36, -13, 30, -43, 39,
    -- layer=2 filter=14 channel=2
    2, 15, -13, 23, 13, -6, -8, 3, 9,
    -- layer=2 filter=14 channel=3
    17, -48, 3, -10, -33, -61, -31, -69, -15,
    -- layer=2 filter=14 channel=4
    -8, -8, -23, -49, -63, -55, 4, 32, 61,
    -- layer=2 filter=14 channel=5
    -4, -24, 12, -20, 0, -1, -36, -19, -7,
    -- layer=2 filter=14 channel=6
    -11, -11, 30, -17, 4, 4, 11, -12, -5,
    -- layer=2 filter=14 channel=7
    -7, -3, -27, -20, -1, 14, -35, -15, -31,
    -- layer=2 filter=14 channel=8
    -3, 4, -4, -10, -3, 39, 3, 44, 39,
    -- layer=2 filter=14 channel=9
    35, -18, -22, 31, -63, -43, 21, 27, 12,
    -- layer=2 filter=14 channel=10
    12, -26, 26, 44, 15, 23, 56, 83, 30,
    -- layer=2 filter=14 channel=11
    44, -3, -59, -7, -48, -119, -17, -33, -42,
    -- layer=2 filter=14 channel=12
    35, 31, -10, 12, -10, 16, -10, -4, -24,
    -- layer=2 filter=14 channel=13
    -6, 1, -18, -40, -52, -29, -35, -2, 12,
    -- layer=2 filter=14 channel=14
    5, -25, -24, 0, -50, -43, -32, -59, -8,
    -- layer=2 filter=14 channel=15
    4, -15, 25, -24, 23, 36, 17, 53, 27,
    -- layer=2 filter=14 channel=16
    48, -24, -22, 18, -52, 8, -9, -27, -4,
    -- layer=2 filter=14 channel=17
    44, -39, -42, 6, -35, -42, 52, 43, 2,
    -- layer=2 filter=14 channel=18
    -31, -4, -31, 13, 44, 0, -23, 0, 11,
    -- layer=2 filter=14 channel=19
    35, 67, 100, 8, 6, 16, -4, -35, -24,
    -- layer=2 filter=14 channel=20
    4, -7, 0, -12, -10, 5, 3, 19, -3,
    -- layer=2 filter=14 channel=21
    17, 0, 0, 4, -5, -8, -25, -40, -40,
    -- layer=2 filter=14 channel=22
    24, 13, 20, 30, -44, -20, -22, -118, -85,
    -- layer=2 filter=14 channel=23
    22, 53, 48, -11, -21, -11, -19, -47, -47,
    -- layer=2 filter=14 channel=24
    -75, -75, -53, -16, 34, 29, 74, 104, 70,
    -- layer=2 filter=14 channel=25
    -38, -64, -67, -24, -47, -16, 67, 42, 53,
    -- layer=2 filter=14 channel=26
    17, 36, 11, 25, 37, 1, 27, 19, 6,
    -- layer=2 filter=14 channel=27
    -40, 24, 43, -31, -11, -7, 5, 23, 7,
    -- layer=2 filter=14 channel=28
    -16, 22, 43, -82, -1, 23, 26, 33, 26,
    -- layer=2 filter=14 channel=29
    0, -27, -19, -7, -2, 7, -27, -5, 2,
    -- layer=2 filter=14 channel=30
    3, -6, -53, -18, -34, -102, -61, 6, -46,
    -- layer=2 filter=14 channel=31
    13, 1, -27, 31, -31, -50, 20, -3, -12,
    -- layer=2 filter=15 channel=0
    -1, -8, 11, -24, -21, -20, -7, 0, 15,
    -- layer=2 filter=15 channel=1
    -18, -6, 11, -1, -15, 11, -7, 5, -11,
    -- layer=2 filter=15 channel=2
    -5, 3, 15, -1, 15, 4, -5, -17, 10,
    -- layer=2 filter=15 channel=3
    -6, 5, 6, -22, -6, -5, 6, 14, -7,
    -- layer=2 filter=15 channel=4
    -29, -6, -19, -21, -12, -18, -27, 1, 9,
    -- layer=2 filter=15 channel=5
    1, -14, -37, -18, -11, 2, -21, -33, 5,
    -- layer=2 filter=15 channel=6
    0, 20, -7, -9, 6, -3, 11, 4, 14,
    -- layer=2 filter=15 channel=7
    -21, -21, -11, -24, -29, -29, -21, 4, -30,
    -- layer=2 filter=15 channel=8
    -13, 4, 10, -2, -16, -3, -5, -21, 15,
    -- layer=2 filter=15 channel=9
    -16, -20, -17, -8, -19, -4, -28, 4, -27,
    -- layer=2 filter=15 channel=10
    -29, -15, -4, -25, -5, -11, -18, -5, -13,
    -- layer=2 filter=15 channel=11
    -9, -7, -7, -24, -19, -5, -20, 0, 2,
    -- layer=2 filter=15 channel=12
    -2, 3, -25, -1, 0, 1, 14, -29, -33,
    -- layer=2 filter=15 channel=13
    3, 7, -1, -3, 3, 3, -26, 11, 2,
    -- layer=2 filter=15 channel=14
    -4, -16, 0, 0, -30, -14, 6, 9, 2,
    -- layer=2 filter=15 channel=15
    -7, -7, 19, -9, -5, -28, 4, -17, 16,
    -- layer=2 filter=15 channel=16
    -18, -13, -7, 3, -12, -15, -22, 1, 27,
    -- layer=2 filter=15 channel=17
    13, -9, -8, -1, -17, -11, -29, 0, -7,
    -- layer=2 filter=15 channel=18
    -7, -2, -3, 13, -5, -3, 8, 10, -20,
    -- layer=2 filter=15 channel=19
    14, -7, -9, -13, 0, -5, 11, -15, 3,
    -- layer=2 filter=15 channel=20
    -12, -3, 7, -18, -22, -16, -3, -12, -23,
    -- layer=2 filter=15 channel=21
    -6, -19, 19, -3, -18, -8, -7, 18, 9,
    -- layer=2 filter=15 channel=22
    -5, -8, 23, 5, -12, -1, -12, -10, 29,
    -- layer=2 filter=15 channel=23
    1, -26, 14, -21, 6, 0, -17, -28, -25,
    -- layer=2 filter=15 channel=24
    12, -19, -25, 6, -23, -1, -21, 8, 9,
    -- layer=2 filter=15 channel=25
    0, -2, 4, -15, -11, 3, -17, -2, 17,
    -- layer=2 filter=15 channel=26
    -5, 0, 0, 9, 1, -33, 3, -1, -17,
    -- layer=2 filter=15 channel=27
    10, -41, 4, 0, -12, -7, -35, -10, 7,
    -- layer=2 filter=15 channel=28
    -2, 7, -11, -41, 12, -21, 1, 7, 1,
    -- layer=2 filter=15 channel=29
    14, -23, -8, -29, 3, 4, -8, -18, -29,
    -- layer=2 filter=15 channel=30
    -21, -29, -18, -11, 10, -5, -24, 5, -4,
    -- layer=2 filter=15 channel=31
    0, 1, -35, -22, -12, 8, 6, -13, -36,
    -- layer=2 filter=16 channel=0
    -1, -13, 13, -27, -28, -14, -22, -48, -74,
    -- layer=2 filter=16 channel=1
    23, -6, 46, -55, -26, -36, -24, -22, -45,
    -- layer=2 filter=16 channel=2
    5, -9, -9, -22, -5, 11, -24, 12, 6,
    -- layer=2 filter=16 channel=3
    -30, -39, -22, -7, -79, -23, 15, -68, -8,
    -- layer=2 filter=16 channel=4
    37, 79, 43, -13, -6, -53, 6, -11, -76,
    -- layer=2 filter=16 channel=5
    16, 21, -10, -38, -19, 18, -4, 22, -25,
    -- layer=2 filter=16 channel=6
    -25, 1, -12, -46, -31, -69, 33, -7, 13,
    -- layer=2 filter=16 channel=7
    2, -10, -33, -12, -22, -19, 19, -13, -6,
    -- layer=2 filter=16 channel=8
    -17, -11, -37, -68, -12, -20, -26, -20, 2,
    -- layer=2 filter=16 channel=9
    -28, -12, -24, 19, 23, 39, 15, 23, 3,
    -- layer=2 filter=16 channel=10
    71, 13, -32, 6, 23, 0, 0, -15, 22,
    -- layer=2 filter=16 channel=11
    -1, 18, -4, -20, 32, -14, -18, 3, -6,
    -- layer=2 filter=16 channel=12
    -21, 6, 19, -19, 8, 0, 17, -31, -17,
    -- layer=2 filter=16 channel=13
    -87, -53, -73, -47, -55, -54, -30, 15, -10,
    -- layer=2 filter=16 channel=14
    -56, -4, -2, 14, 14, -19, 19, -24, -63,
    -- layer=2 filter=16 channel=15
    11, 7, 3, -20, -18, -43, -14, -73, -81,
    -- layer=2 filter=16 channel=16
    29, -8, -16, 24, -26, -30, -48, -21, 4,
    -- layer=2 filter=16 channel=17
    -40, -36, -48, -10, 20, 1, 20, 42, 39,
    -- layer=2 filter=16 channel=18
    23, -2, 40, 46, 11, -18, -3, -55, -88,
    -- layer=2 filter=16 channel=19
    17, 2, -23, 47, 47, -26, 71, 56, 53,
    -- layer=2 filter=16 channel=20
    -29, 3, -50, -46, -10, -59, -20, -56, -4,
    -- layer=2 filter=16 channel=21
    30, 43, 50, 2, 33, -15, 29, 4, -35,
    -- layer=2 filter=16 channel=22
    40, 53, 43, 40, 27, -12, 19, -10, -76,
    -- layer=2 filter=16 channel=23
    -40, -43, -94, 14, -45, -55, 97, 27, 29,
    -- layer=2 filter=16 channel=24
    0, -38, -14, -32, 34, 27, 63, 35, 61,
    -- layer=2 filter=16 channel=25
    19, -13, -41, 54, 11, 24, 29, 26, 92,
    -- layer=2 filter=16 channel=26
    -6, -11, -29, 2, 3, 46, 41, 41, 26,
    -- layer=2 filter=16 channel=27
    5, -42, -23, -48, -42, -35, 60, 12, 12,
    -- layer=2 filter=16 channel=28
    -45, -35, 16, -66, -11, 13, 27, 12, 52,
    -- layer=2 filter=16 channel=29
    -6, -4, 25, -15, 0, 19, 17, 30, -22,
    -- layer=2 filter=16 channel=30
    -40, -55, -36, -54, -18, -2, -95, -9, -22,
    -- layer=2 filter=16 channel=31
    -20, -23, -48, -17, -9, -4, 3, 37, 23,
    -- layer=2 filter=17 channel=0
    -68, -31, -1, -63, 37, 42, -10, 3, 40,
    -- layer=2 filter=17 channel=1
    -13, -25, 13, -47, -22, -17, -21, -12, -59,
    -- layer=2 filter=17 channel=2
    -17, 21, -16, 20, 23, -19, 13, -20, -14,
    -- layer=2 filter=17 channel=3
    -48, -24, -44, -59, -16, 3, 19, 8, 23,
    -- layer=2 filter=17 channel=4
    -34, 5, 21, 27, -29, 17, -6, 15, 56,
    -- layer=2 filter=17 channel=5
    -49, -17, 1, -45, -16, -11, -29, 14, 0,
    -- layer=2 filter=17 channel=6
    28, 5, 5, 34, 40, 25, 12, 39, 27,
    -- layer=2 filter=17 channel=7
    -16, -15, -30, -7, -19, 13, -13, 6, 5,
    -- layer=2 filter=17 channel=8
    -9, 15, 34, 28, 28, 25, -10, 47, 0,
    -- layer=2 filter=17 channel=9
    -22, -18, -13, 10, -46, -32, -18, -18, -4,
    -- layer=2 filter=17 channel=10
    -69, -1, 63, -28, 6, 21, -19, -5, -17,
    -- layer=2 filter=17 channel=11
    81, 8, -22, 2, -62, -69, -11, -68, -34,
    -- layer=2 filter=17 channel=12
    -3, -12, 0, -41, -26, -14, 18, 16, -13,
    -- layer=2 filter=17 channel=13
    2, 32, -37, 51, 9, -1, -16, -12, 7,
    -- layer=2 filter=17 channel=14
    -12, -20, -14, -48, -40, -31, -11, -20, -22,
    -- layer=2 filter=17 channel=15
    -60, -25, 14, -21, 40, 57, -13, 11, 0,
    -- layer=2 filter=17 channel=16
    10, -14, 5, 14, -32, -16, -36, -32, -55,
    -- layer=2 filter=17 channel=17
    21, -23, -11, 13, -34, -22, 30, -41, -16,
    -- layer=2 filter=17 channel=18
    -57, -73, -51, -39, -4, -6, 13, 0, 19,
    -- layer=2 filter=17 channel=19
    -12, 95, 90, 9, 77, 53, -3, 45, 45,
    -- layer=2 filter=17 channel=20
    10, 17, 18, 1, 15, -5, 12, 6, 18,
    -- layer=2 filter=17 channel=21
    11, -5, 0, 23, 20, 20, 3, 12, -5,
    -- layer=2 filter=17 channel=22
    34, 26, 27, 28, -6, 1, 16, -17, -38,
    -- layer=2 filter=17 channel=23
    74, 35, -11, 49, -7, -31, 8, -24, -27,
    -- layer=2 filter=17 channel=24
    6, 3, -47, -5, -61, 9, -11, -42, -24,
    -- layer=2 filter=17 channel=25
    21, 0, -34, 37, -1, 3, -13, -21, 19,
    -- layer=2 filter=17 channel=26
    -15, 48, -13, 53, 67, 14, 40, 21, -20,
    -- layer=2 filter=17 channel=27
    -35, -22, 2, 21, 20, 14, 32, -26, 16,
    -- layer=2 filter=17 channel=28
    -26, -65, -42, -13, -24, 0, 49, -17, -30,
    -- layer=2 filter=17 channel=29
    -14, -52, -4, -29, -18, -11, -20, -22, 3,
    -- layer=2 filter=17 channel=30
    39, 41, -34, 36, -4, -4, -3, -48, -42,
    -- layer=2 filter=17 channel=31
    -10, 2, -20, 4, -32, -24, -13, -29, 3,
    -- layer=2 filter=18 channel=0
    -62, -31, -14, -49, 29, 31, -5, 52, 12,
    -- layer=2 filter=18 channel=1
    13, 31, 27, -23, 17, -14, -47, 21, -49,
    -- layer=2 filter=18 channel=2
    0, 4, 12, 17, 7, -6, 3, 17, -20,
    -- layer=2 filter=18 channel=3
    19, -69, 25, -54, 3, 0, -11, -57, 35,
    -- layer=2 filter=18 channel=4
    0, -41, -63, -39, -37, -8, -16, 32, 52,
    -- layer=2 filter=18 channel=5
    -19, -4, -26, 0, 11, -1, 23, 9, 52,
    -- layer=2 filter=18 channel=6
    -88, -27, 42, -39, 42, 29, 13, -17, -6,
    -- layer=2 filter=18 channel=7
    0, -16, 15, -18, 10, -14, 12, -9, 5,
    -- layer=2 filter=18 channel=8
    -69, -18, 25, -13, 32, 41, 16, 4, 46,
    -- layer=2 filter=18 channel=9
    57, 7, -27, 50, -22, -74, -26, 1, -55,
    -- layer=2 filter=18 channel=10
    -35, -28, 20, -117, 19, 72, -61, 27, 47,
    -- layer=2 filter=18 channel=11
    52, 29, 7, 30, -20, -53, -12, -60, -83,
    -- layer=2 filter=18 channel=12
    -46, -8, 12, -13, 28, 37, 20, -9, 16,
    -- layer=2 filter=18 channel=13
    -22, 40, 55, 8, -22, -32, -26, -38, -36,
    -- layer=2 filter=18 channel=14
    -2, 20, -19, 15, -34, -8, -35, 26, 9,
    -- layer=2 filter=18 channel=15
    -34, -32, 26, -33, 14, 54, -71, 44, 36,
    -- layer=2 filter=18 channel=16
    99, 29, 54, -44, 48, -40, -49, -54, -54,
    -- layer=2 filter=18 channel=17
    77, 16, 3, 31, -53, -32, 19, -26, -54,
    -- layer=2 filter=18 channel=18
    12, 23, -3, -12, 45, 10, -72, -11, -10,
    -- layer=2 filter=18 channel=19
    -9, -7, -3, -68, -22, 10, -18, 12, 36,
    -- layer=2 filter=18 channel=20
    -76, 1, 53, -25, 20, 32, 10, 2, -6,
    -- layer=2 filter=18 channel=21
    -10, -17, -12, 4, 18, 20, -12, 19, 24,
    -- layer=2 filter=18 channel=22
    5, -27, -22, 28, 50, 9, 15, -22, -24,
    -- layer=2 filter=18 channel=23
    65, 57, 9, 23, 6, -22, -27, -9, -19,
    -- layer=2 filter=18 channel=24
    5, -27, -44, -54, -25, 22, 2, 4, 63,
    -- layer=2 filter=18 channel=25
    57, 13, 6, 14, -17, -19, 6, -30, -16,
    -- layer=2 filter=18 channel=26
    10, -11, -30, 16, 20, 18, 21, 28, 55,
    -- layer=2 filter=18 channel=27
    18, 18, -20, -4, -9, 26, 0, 39, 43,
    -- layer=2 filter=18 channel=28
    36, -82, -101, -64, -60, -35, 55, -27, 2,
    -- layer=2 filter=18 channel=29
    -5, -14, -18, -18, -3, -4, -19, 4, 52,
    -- layer=2 filter=18 channel=30
    85, 17, -60, 74, -7, -50, -17, -55, -131,
    -- layer=2 filter=18 channel=31
    64, 35, -10, 18, -39, -38, 2, -16, -22,
    -- layer=2 filter=19 channel=0
    19, 11, -7, -4, -10, 18, 27, 7, 30,
    -- layer=2 filter=19 channel=1
    -24, -68, -101, 19, 29, 18, 14, 27, 59,
    -- layer=2 filter=19 channel=2
    -10, -25, 6, 1, -2, -3, 8, 0, -8,
    -- layer=2 filter=19 channel=3
    44, 6, -40, -42, 66, -5, -26, 41, 66,
    -- layer=2 filter=19 channel=4
    27, 19, 48, 11, -5, 2, 46, 38, 32,
    -- layer=2 filter=19 channel=5
    -26, -25, -28, -20, 3, -15, -81, -7, 4,
    -- layer=2 filter=19 channel=6
    28, 43, 7, 29, 20, -5, 56, 20, 89,
    -- layer=2 filter=19 channel=7
    1, -30, -25, -31, -14, 15, -25, -6, 8,
    -- layer=2 filter=19 channel=8
    41, 15, 44, 24, 2, 35, 58, 7, 87,
    -- layer=2 filter=19 channel=9
    2, -20, -21, 11, -20, 12, -62, -46, -27,
    -- layer=2 filter=19 channel=10
    0, 19, 40, 16, 12, 40, 118, 8, 13,
    -- layer=2 filter=19 channel=11
    9, -52, -69, -19, -2, -32, -76, -26, -29,
    -- layer=2 filter=19 channel=12
    2, 8, -2, 7, 23, 22, -41, 8, -18,
    -- layer=2 filter=19 channel=13
    13, 8, 15, 27, -3, 0, 47, 2, 90,
    -- layer=2 filter=19 channel=14
    -32, -23, -12, -12, 6, 9, -43, 8, -5,
    -- layer=2 filter=19 channel=15
    -7, -28, -7, 14, -8, 15, 52, 36, 24,
    -- layer=2 filter=19 channel=16
    58, 26, 12, 1, -29, -17, 43, -28, 0,
    -- layer=2 filter=19 channel=17
    5, -18, 18, -5, -7, 30, -43, -21, -19,
    -- layer=2 filter=19 channel=18
    -5, 5, -28, 0, 23, 13, 9, -20, -29,
    -- layer=2 filter=19 channel=19
    22, 40, 35, 19, 0, 27, -10, 32, 3,
    -- layer=2 filter=19 channel=20
    50, 40, 49, -16, -11, -8, 11, -18, 71,
    -- layer=2 filter=19 channel=21
    -7, 4, -29, 24, 20, 38, -44, 55, 26,
    -- layer=2 filter=19 channel=22
    -22, -24, -35, 17, 10, 12, -25, 0, 31,
    -- layer=2 filter=19 channel=23
    22, 53, 50, 21, -15, -25, -44, -99, -111,
    -- layer=2 filter=19 channel=24
    -9, -32, -29, -39, -53, 17, 65, 14, 0,
    -- layer=2 filter=19 channel=25
    26, 23, -1, 28, 22, 27, 20, -19, 45,
    -- layer=2 filter=19 channel=26
    2, 26, 20, 20, 20, 9, 58, 63, 40,
    -- layer=2 filter=19 channel=27
    -20, -14, 24, 1, -45, -20, -17, -2, -14,
    -- layer=2 filter=19 channel=28
    24, 67, -28, -9, -16, -5, -50, -28, -76,
    -- layer=2 filter=19 channel=29
    -5, -21, -46, -25, -3, -1, -23, 0, -17,
    -- layer=2 filter=19 channel=30
    38, 6, -37, 48, -25, -32, -6, 5, 58,
    -- layer=2 filter=19 channel=31
    -13, 11, -29, 18, -8, 3, -68, -3, -20,
    -- layer=2 filter=20 channel=0
    -16, -9, -20, -26, 30, -10, -48, 8, -17,
    -- layer=2 filter=20 channel=1
    -20, 21, -7, -37, 5, -5, 0, -5, -41,
    -- layer=2 filter=20 channel=2
    -11, 0, 0, 0, 1, 4, -7, -18, 8,
    -- layer=2 filter=20 channel=3
    -21, -6, 0, 8, 12, 4, -32, -8, 0,
    -- layer=2 filter=20 channel=4
    -13, -2, -26, -8, -14, -2, 20, 8, 17,
    -- layer=2 filter=20 channel=5
    -31, -6, -37, -9, 21, -12, -23, -2, -18,
    -- layer=2 filter=20 channel=6
    -38, 18, -6, -5, -2, 13, -38, 1, 26,
    -- layer=2 filter=20 channel=7
    -20, 7, -26, 4, -7, -30, -25, -13, -28,
    -- layer=2 filter=20 channel=8
    -3, -15, -12, -4, -4, 18, 3, -10, 28,
    -- layer=2 filter=20 channel=9
    -42, -13, -22, -23, -3, -20, -21, 0, -31,
    -- layer=2 filter=20 channel=10
    6, -16, -16, -31, -1, -14, 21, -30, -29,
    -- layer=2 filter=20 channel=11
    -38, -15, -16, -30, -12, -9, -22, 2, 20,
    -- layer=2 filter=20 channel=12
    -6, 17, -13, -3, 3, 0, -13, -14, 6,
    -- layer=2 filter=20 channel=13
    6, 1, 8, -19, -34, -9, 13, -19, -1,
    -- layer=2 filter=20 channel=14
    -33, -20, 18, -6, 23, -23, -10, 12, 0,
    -- layer=2 filter=20 channel=15
    10, 16, -16, 22, -14, -6, 10, -5, 9,
    -- layer=2 filter=20 channel=16
    -29, 8, 3, -7, 11, 24, -28, -35, 1,
    -- layer=2 filter=20 channel=17
    -4, -35, -5, -40, -8, -12, -33, -34, -17,
    -- layer=2 filter=20 channel=18
    -2, -12, -10, 30, -26, 3, 41, -5, -23,
    -- layer=2 filter=20 channel=19
    14, -14, -13, -9, 2, -14, 3, 15, 0,
    -- layer=2 filter=20 channel=20
    -24, -10, -32, 0, 27, 4, -19, -25, 23,
    -- layer=2 filter=20 channel=21
    7, -7, -26, 29, -30, -17, -14, -24, -27,
    -- layer=2 filter=20 channel=22
    -3, -18, -33, -3, 1, -15, 6, -21, 20,
    -- layer=2 filter=20 channel=23
    47, -21, 1, 20, -1, 8, 14, -27, -21,
    -- layer=2 filter=20 channel=24
    39, -49, -3, 34, -6, -15, 32, -15, 24,
    -- layer=2 filter=20 channel=25
    10, 18, 4, -25, 16, 10, -14, -13, 19,
    -- layer=2 filter=20 channel=26
    5, -23, -8, -7, -16, -21, 0, -26, 11,
    -- layer=2 filter=20 channel=27
    50, -20, 25, 22, -37, 33, 12, -6, -26,
    -- layer=2 filter=20 channel=28
    -63, 24, -19, -11, 35, -32, -6, -9, 19,
    -- layer=2 filter=20 channel=29
    4, -31, -6, 17, -10, -25, 5, 0, -1,
    -- layer=2 filter=20 channel=30
    -42, -8, 20, -11, -14, 17, 33, -30, 21,
    -- layer=2 filter=20 channel=31
    -19, -25, -8, -13, -20, 6, -22, 0, -6,
    -- layer=2 filter=21 channel=0
    -29, -17, 17, 9, 0, -23, -20, -43, -24,
    -- layer=2 filter=21 channel=1
    -33, -33, -11, -59, -128, -97, 5, -26, -83,
    -- layer=2 filter=21 channel=2
    18, -14, -2, -20, -8, 14, 5, 2, -7,
    -- layer=2 filter=21 channel=3
    -18, 42, 26, 13, 34, -52, 10, 17, 21,
    -- layer=2 filter=21 channel=4
    -59, -23, -25, -6, 31, 66, 26, 34, 53,
    -- layer=2 filter=21 channel=5
    -19, -12, 2, -3, 0, 8, 13, -45, -57,
    -- layer=2 filter=21 channel=6
    16, -31, -19, 39, -15, 3, 52, 13, 62,
    -- layer=2 filter=21 channel=7
    10, -10, -21, -40, 3, -35, -43, -33, -19,
    -- layer=2 filter=21 channel=8
    18, -17, 0, 28, 7, -9, -7, 13, 66,
    -- layer=2 filter=21 channel=9
    5, 3, 28, -17, 31, 35, 43, -31, -44,
    -- layer=2 filter=21 channel=10
    8, 12, -5, 26, 1, -14, -6, -2, -39,
    -- layer=2 filter=21 channel=11
    15, 38, 39, -27, 25, 38, -61, -41, 1,
    -- layer=2 filter=21 channel=12
    -16, -6, -17, -16, -5, -30, -45, -43, -70,
    -- layer=2 filter=21 channel=13
    -37, -62, -39, -19, -35, 0, -64, 41, 90,
    -- layer=2 filter=21 channel=14
    -46, -17, -4, 0, 20, -3, -20, -35, -65,
    -- layer=2 filter=21 channel=15
    -53, -15, -24, 25, 44, 52, -9, 3, -62,
    -- layer=2 filter=21 channel=16
    4, 2, -24, 14, 6, 10, 31, -10, 35,
    -- layer=2 filter=21 channel=17
    0, 18, 31, -22, 12, 43, 8, 4, 29,
    -- layer=2 filter=21 channel=18
    -38, 8, 25, 48, 76, 47, -11, 71, 66,
    -- layer=2 filter=21 channel=19
    -10, 9, 20, 32, -57, -55, 100, -16, 16,
    -- layer=2 filter=21 channel=20
    10, -63, -33, 12, -9, -51, 21, -4, 32,
    -- layer=2 filter=21 channel=21
    -5, 11, -3, -17, 27, 31, -15, -20, -34,
    -- layer=2 filter=21 channel=22
    28, 17, 34, 31, 60, 51, 56, 4, 40,
    -- layer=2 filter=21 channel=23
    39, 42, 18, -13, -33, -54, 6, -19, -71,
    -- layer=2 filter=21 channel=24
    -27, -14, 0, -35, -7, 9, -37, -30, -28,
    -- layer=2 filter=21 channel=25
    35, -6, -22, -1, 25, 40, 26, 24, 16,
    -- layer=2 filter=21 channel=26
    25, -8, 1, 65, 23, 0, 54, 26, 87,
    -- layer=2 filter=21 channel=27
    43, 38, 23, 14, 15, -1, 36, 38, 3,
    -- layer=2 filter=21 channel=28
    70, 91, 58, 18, 25, 26, 79, 0, -24,
    -- layer=2 filter=21 channel=29
    -45, -34, 9, -7, 21, 11, -21, -16, -25,
    -- layer=2 filter=21 channel=30
    -23, -21, 31, -6, 40, 20, -49, -38, -22,
    -- layer=2 filter=21 channel=31
    21, 16, 9, -1, 20, 9, -11, 28, -10,
    -- layer=2 filter=22 channel=0
    -4, -28, -26, 0, -1, -30, -26, 6, 0,
    -- layer=2 filter=22 channel=1
    6, -8, 2, -1, 4, -8, -3, -26, -17,
    -- layer=2 filter=22 channel=2
    8, -12, -12, 4, 3, 16, 13, 3, 0,
    -- layer=2 filter=22 channel=3
    4, -7, 15, -14, -20, -12, 9, -21, 9,
    -- layer=2 filter=22 channel=4
    -17, 10, -15, 4, -3, 7, 8, -17, 9,
    -- layer=2 filter=22 channel=5
    -2, -8, -7, -7, -4, -2, 17, -7, 0,
    -- layer=2 filter=22 channel=6
    -1, -20, -5, -19, 0, -15, -2, 0, -28,
    -- layer=2 filter=22 channel=7
    -19, 4, -11, -8, 12, 10, -4, 20, 11,
    -- layer=2 filter=22 channel=8
    -33, 1, 6, 10, -6, -20, -13, 0, -8,
    -- layer=2 filter=22 channel=9
    -22, 14, -13, -5, -11, 2, -22, -22, -7,
    -- layer=2 filter=22 channel=10
    16, -24, -5, -26, -18, 4, -14, 5, 3,
    -- layer=2 filter=22 channel=11
    -20, 0, -13, -14, -4, 3, -28, -18, -17,
    -- layer=2 filter=22 channel=12
    7, -18, -12, -5, -9, -6, -16, -12, -9,
    -- layer=2 filter=22 channel=13
    -19, -15, -8, -19, 8, -14, -15, 12, -22,
    -- layer=2 filter=22 channel=14
    8, -10, -10, 15, -18, -2, -19, -22, -3,
    -- layer=2 filter=22 channel=15
    12, -3, 9, 9, 5, -10, 9, -4, -13,
    -- layer=2 filter=22 channel=16
    -12, -1, -3, -16, 16, 2, 4, -21, 1,
    -- layer=2 filter=22 channel=17
    4, -25, -14, 0, -17, -20, -2, -8, 7,
    -- layer=2 filter=22 channel=18
    -4, 11, 3, -10, -9, 5, -17, 0, 10,
    -- layer=2 filter=22 channel=19
    -5, -1, -21, -8, -7, -26, -33, -14, -10,
    -- layer=2 filter=22 channel=20
    11, -14, 2, -5, -20, -15, 0, -11, 7,
    -- layer=2 filter=22 channel=21
    6, -12, -19, -20, -19, -21, 6, 11, -25,
    -- layer=2 filter=22 channel=22
    -21, -12, -16, 14, -13, 5, 0, -24, 13,
    -- layer=2 filter=22 channel=23
    9, 3, 18, -21, 2, 8, -4, -13, 11,
    -- layer=2 filter=22 channel=24
    -11, 16, 13, -1, 12, 0, 12, -11, -15,
    -- layer=2 filter=22 channel=25
    3, 4, -20, -29, -26, 7, -20, -30, 1,
    -- layer=2 filter=22 channel=26
    1, -3, -2, -15, -5, -5, -15, 14, -22,
    -- layer=2 filter=22 channel=27
    -24, 1, -33, -16, -10, -27, -16, -18, 4,
    -- layer=2 filter=22 channel=28
    5, 3, -11, 3, -14, 7, -20, -10, -2,
    -- layer=2 filter=22 channel=29
    -5, -7, 7, 8, 0, 2, -12, 0, -15,
    -- layer=2 filter=22 channel=30
    0, -16, 13, -20, -16, -12, -2, -15, -1,
    -- layer=2 filter=22 channel=31
    12, -14, -24, -5, -6, -24, -12, 4, 12,
    -- layer=2 filter=23 channel=0
    13, -2, 21, 19, 7, 33, -30, -44, 45,
    -- layer=2 filter=23 channel=1
    -3, 23, -56, 33, 78, 59, -4, 55, 40,
    -- layer=2 filter=23 channel=2
    7, 30, 14, -2, -12, -11, -23, -19, -12,
    -- layer=2 filter=23 channel=3
    11, 27, -10, 24, -35, 9, -45, 19, 3,
    -- layer=2 filter=23 channel=4
    21, 95, 51, -9, 2, 85, 80, 30, 44,
    -- layer=2 filter=23 channel=5
    -1, -5, 16, -6, -31, 22, -23, 34, 32,
    -- layer=2 filter=23 channel=6
    -11, 40, 15, 14, -34, -7, -29, -41, -6,
    -- layer=2 filter=23 channel=7
    -20, 11, -11, 6, -6, 30, -9, -13, 17,
    -- layer=2 filter=23 channel=8
    -52, 5, -14, -2, -11, -1, 29, -12, 54,
    -- layer=2 filter=23 channel=9
    56, 0, -27, 69, 18, -33, 66, 25, -18,
    -- layer=2 filter=23 channel=10
    -41, -5, 38, -49, -3, 25, -8, 33, 34,
    -- layer=2 filter=23 channel=11
    40, 7, -34, 46, 34, -106, 55, 38, -33,
    -- layer=2 filter=23 channel=12
    -25, 5, 4, 6, -12, 4, -8, -22, 30,
    -- layer=2 filter=23 channel=13
    13, 23, 8, 14, 15, -32, 4, -4, -7,
    -- layer=2 filter=23 channel=14
    5, 13, -14, 6, -27, 1, -1, -15, 24,
    -- layer=2 filter=23 channel=15
    4, 31, 28, 10, 16, 28, -7, -27, 27,
    -- layer=2 filter=23 channel=16
    -62, 21, -10, -9, -2, -18, 14, -26, -44,
    -- layer=2 filter=23 channel=17
    43, -11, -49, 35, -53, -61, 55, 0, -45,
    -- layer=2 filter=23 channel=18
    -27, -25, -18, -54, -33, 0, -67, -12, 94,
    -- layer=2 filter=23 channel=19
    -9, -53, -7, 26, -5, 68, -38, 8, -5,
    -- layer=2 filter=23 channel=20
    -32, 24, -26, -12, 16, 37, -29, -8, 14,
    -- layer=2 filter=23 channel=21
    -26, -23, 3, -5, -1, 39, -2, -21, 13,
    -- layer=2 filter=23 channel=22
    -11, -22, -22, -7, -15, 5, 14, -12, -29,
    -- layer=2 filter=23 channel=23
    54, 52, 44, -34, 29, 130, -114, 15, 98,
    -- layer=2 filter=23 channel=24
    -10, 9, 5, -19, -6, 44, -45, 30, 39,
    -- layer=2 filter=23 channel=25
    14, -14, -44, 0, -9, -53, 13, 5, -32,
    -- layer=2 filter=23 channel=26
    12, 0, -29, -8, 44, 36, -35, 14, 5,
    -- layer=2 filter=23 channel=27
    9, 7, 26, -21, -23, 51, -85, 8, 6,
    -- layer=2 filter=23 channel=28
    -14, 16, 21, -27, 26, 58, -56, 62, 56,
    -- layer=2 filter=23 channel=29
    -6, 22, 12, -27, 8, 14, -41, 24, 56,
    -- layer=2 filter=23 channel=30
    4, 38, -36, 15, 12, -11, 27, 8, -24,
    -- layer=2 filter=23 channel=31
    27, -35, -39, 34, -44, -35, 46, 0, -38,
    -- layer=2 filter=24 channel=0
    -68, -21, -33, -83, 25, -7, -55, 37, -49,
    -- layer=2 filter=24 channel=1
    -11, -35, -7, -1, 23, 75, -57, -26, 57,
    -- layer=2 filter=24 channel=2
    -22, -1, 22, -19, 0, -1, -14, -15, -20,
    -- layer=2 filter=24 channel=3
    85, -76, -35, 50, -56, -27, 5, 49, -98,
    -- layer=2 filter=24 channel=4
    61, 2, -18, -12, -71, -54, -39, -79, -105,
    -- layer=2 filter=24 channel=5
    -37, 4, 8, -60, 6, -40, -40, -6, -67,
    -- layer=2 filter=24 channel=6
    -27, 38, 71, -33, 9, 1, -51, -30, -33,
    -- layer=2 filter=24 channel=7
    -56, 36, -11, -23, 10, 11, -25, -2, -73,
    -- layer=2 filter=24 channel=8
    -19, 3, 44, -15, 11, -7, -41, 9, -44,
    -- layer=2 filter=24 channel=9
    13, 8, -5, -17, -40, -5, 14, 16, 55,
    -- layer=2 filter=24 channel=10
    7, 38, 38, 10, 36, -26, -13, -7, -12,
    -- layer=2 filter=24 channel=11
    -17, -63, 54, 24, -68, -8, 55, 6, 74,
    -- layer=2 filter=24 channel=12
    2, 25, -9, -3, 12, 12, 4, 16, -18,
    -- layer=2 filter=24 channel=13
    3, 0, 30, 43, 17, 15, -2, -50, -50,
    -- layer=2 filter=24 channel=14
    18, 31, 7, -36, -18, -19, -6, 0, -4,
    -- layer=2 filter=24 channel=15
    12, -2, -38, -60, 2, -44, -40, -3, 5,
    -- layer=2 filter=24 channel=16
    -44, 39, 9, -55, -18, 3, -15, 13, 5,
    -- layer=2 filter=24 channel=17
    31, 6, -43, 22, -16, -51, 42, 11, -3,
    -- layer=2 filter=24 channel=18
    -3, -11, -26, -14, 44, 40, 7, 53, 19,
    -- layer=2 filter=24 channel=19
    10, 57, 72, -89, -71, -20, -91, 27, 77,
    -- layer=2 filter=24 channel=20
    -44, 25, -5, -20, 12, 8, -49, 14, -26,
    -- layer=2 filter=24 channel=21
    38, 0, -18, -2, -71, -110, 21, 18, 14,
    -- layer=2 filter=24 channel=22
    -8, -21, -27, -47, -119, -100, 31, 16, 25,
    -- layer=2 filter=24 channel=23
    105, 87, 1, 21, 59, -20, 42, 82, 47,
    -- layer=2 filter=24 channel=24
    72, 12, -13, -5, 8, -26, 5, 28, -44,
    -- layer=2 filter=24 channel=25
    -1, 0, 0, 24, 32, 40, 25, -4, 27,
    -- layer=2 filter=24 channel=26
    -15, 18, 15, -50, 3, 0, -41, -1, -29,
    -- layer=2 filter=24 channel=27
    87, 51, 1, 3, 18, 1, 12, 39, -25,
    -- layer=2 filter=24 channel=28
    -6, 6, 46, 47, 71, 45, 106, 38, 47,
    -- layer=2 filter=24 channel=29
    -24, -41, -64, -24, -13, -25, -25, -13, -103,
    -- layer=2 filter=24 channel=30
    5, -23, 5, -45, 4, 20, -24, -16, 25,
    -- layer=2 filter=24 channel=31
    0, 44, 0, 37, -10, -12, 11, 29, 13,
    -- layer=2 filter=25 channel=0
    18, 22, 6, -5, 17, -15, -43, 2, 13,
    -- layer=2 filter=25 channel=1
    -54, -25, -47, -31, -42, -25, -22, 19, -24,
    -- layer=2 filter=25 channel=2
    -20, 11, 21, 2, 14, 12, -23, -14, 18,
    -- layer=2 filter=25 channel=3
    -48, -29, -23, -88, -7, 7, 0, 68, -21,
    -- layer=2 filter=25 channel=4
    8, -26, -40, -39, 1, -6, -8, -16, 5,
    -- layer=2 filter=25 channel=5
    18, 15, -11, -49, 4, 5, -75, 9, -18,
    -- layer=2 filter=25 channel=6
    16, 39, 70, 32, 12, 11, -2, -9, 74,
    -- layer=2 filter=25 channel=7
    20, 15, 8, -18, 12, 14, -51, 25, -3,
    -- layer=2 filter=25 channel=8
    62, 26, 56, 44, 18, 24, 30, -18, 65,
    -- layer=2 filter=25 channel=9
    -48, -19, -4, -25, -4, -4, -4, -29, -9,
    -- layer=2 filter=25 channel=10
    52, 42, 24, 66, -23, 18, 2, -28, -28,
    -- layer=2 filter=25 channel=11
    -34, -20, 15, -13, 31, 30, -8, -11, 53,
    -- layer=2 filter=25 channel=12
    54, 35, 32, 39, 12, -7, -51, 50, -31,
    -- layer=2 filter=25 channel=13
    -46, -48, -6, -21, -1, -1, 29, -35, 32,
    -- layer=2 filter=25 channel=14
    -6, 8, -1, -93, -47, -4, -53, -30, -48,
    -- layer=2 filter=25 channel=15
    25, -3, 15, 3, -9, -10, -26, 18, 15,
    -- layer=2 filter=25 channel=16
    53, -17, 16, -1, -35, -33, -31, -64, -19,
    -- layer=2 filter=25 channel=17
    -24, -4, -9, -9, -1, 14, 31, 17, 15,
    -- layer=2 filter=25 channel=18
    9, -12, -48, -16, -34, -41, -54, -3, 25,
    -- layer=2 filter=25 channel=19
    -9, 0, 67, -30, -11, -5, -47, -6, -69,
    -- layer=2 filter=25 channel=20
    66, 26, 42, 44, 8, 23, 22, -4, 28,
    -- layer=2 filter=25 channel=21
    19, 67, 23, -12, 25, -14, -48, 1, -58,
    -- layer=2 filter=25 channel=22
    19, 33, 47, 4, 22, -19, -38, -25, -57,
    -- layer=2 filter=25 channel=23
    -18, 51, 72, -67, -44, -38, 30, -25, -112,
    -- layer=2 filter=25 channel=24
    -47, -10, -25, 15, -63, 4, 12, -11, -9,
    -- layer=2 filter=25 channel=25
    -49, -106, -107, 37, -20, 13, 47, -2, 65,
    -- layer=2 filter=25 channel=26
    -92, -31, -3, -34, -2, 5, 59, -1, 3,
    -- layer=2 filter=25 channel=27
    -37, 19, 43, 7, -36, -47, 64, 1, -1,
    -- layer=2 filter=25 channel=28
    44, 35, 23, -7, -54, -33, 32, 62, -9,
    -- layer=2 filter=25 channel=29
    8, 3, -18, -24, -31, 2, 4, 4, -25,
    -- layer=2 filter=25 channel=30
    -65, -33, -20, 1, -5, 11, 17, -23, -6,
    -- layer=2 filter=25 channel=31
    16, 39, 32, 9, 28, 16, 14, -19, -2,
    -- layer=2 filter=26 channel=0
    25, -20, -14, 6, -12, -52, 24, -7, -9,
    -- layer=2 filter=26 channel=1
    -69, -97, 30, -21, -108, -91, 63, -18, -92,
    -- layer=2 filter=26 channel=2
    14, 0, 5, -23, -11, -23, 7, 11, 2,
    -- layer=2 filter=26 channel=3
    -49, -68, 22, -21, -54, 23, -13, 37, 21,
    -- layer=2 filter=26 channel=4
    -23, 25, -35, -25, 10, 2, -21, 8, 22,
    -- layer=2 filter=26 channel=5
    9, 8, -6, 1, -29, -16, -12, -62, -84,
    -- layer=2 filter=26 channel=6
    29, 25, 4, 35, -14, -55, 28, 42, -18,
    -- layer=2 filter=26 channel=7
    21, -13, -20, -14, -42, -36, -7, -38, -50,
    -- layer=2 filter=26 channel=8
    13, 2, 8, 23, -18, -42, 56, -1, 9,
    -- layer=2 filter=26 channel=9
    26, 35, 26, -15, 41, 40, -7, -9, -34,
    -- layer=2 filter=26 channel=10
    19, 18, -9, 12, -3, -38, 44, 5, -14,
    -- layer=2 filter=26 channel=11
    -26, 30, 39, -35, 1, 23, 1, 13, 18,
    -- layer=2 filter=26 channel=12
    22, -11, -40, 1, -5, -39, 17, -65, -57,
    -- layer=2 filter=26 channel=13
    10, 14, 2, 2, -9, 6, 15, 37, 30,
    -- layer=2 filter=26 channel=14
    20, -21, -21, 19, 27, 49, -47, -54, -21,
    -- layer=2 filter=26 channel=15
    10, -36, -42, 39, -43, -59, 32, 4, -37,
    -- layer=2 filter=26 channel=16
    -51, 39, 16, 66, 30, -46, 86, 70, 107,
    -- layer=2 filter=26 channel=17
    4, 15, 58, -45, 25, 28, -8, 10, 30,
    -- layer=2 filter=26 channel=18
    4, -2, -2, -7, 35, 59, -6, -34, 49,
    -- layer=2 filter=26 channel=19
    10, -16, -65, 8, -62, -116, 75, -18, -7,
    -- layer=2 filter=26 channel=20
    27, -2, -25, 17, -22, -51, 52, 33, 26,
    -- layer=2 filter=26 channel=21
    20, -26, -16, 10, 23, 2, -1, -3, -13,
    -- layer=2 filter=26 channel=22
    -25, -17, 13, -13, 16, 18, 23, 7, 23,
    -- layer=2 filter=26 channel=23
    75, 24, 3, 28, 24, 16, 17, -31, 1,
    -- layer=2 filter=26 channel=24
    17, 42, 33, -13, -5, 35, -28, -36, -55,
    -- layer=2 filter=26 channel=25
    12, 33, 39, -21, 39, 0, -10, 0, -1,
    -- layer=2 filter=26 channel=26
    3, 15, 1, 15, 1, -25, 32, 20, 26,
    -- layer=2 filter=26 channel=27
    32, 17, 55, 59, 33, 21, 42, -28, 30,
    -- layer=2 filter=26 channel=28
    25, 38, 71, -30, 33, 10, 14, -23, 5,
    -- layer=2 filter=26 channel=29
    27, 2, 3, -21, 3, 35, -32, -12, 6,
    -- layer=2 filter=26 channel=30
    -31, 0, 6, -45, 12, 16, -64, -21, -27,
    -- layer=2 filter=26 channel=31
    27, 20, 18, -2, 8, -5, 9, 26, 4,
    -- layer=2 filter=27 channel=0
    -5, -21, -14, 26, -37, -28, 31, -60, -27,
    -- layer=2 filter=27 channel=1
    1, -3, -7, 31, 43, -5, 35, 11, -56,
    -- layer=2 filter=27 channel=2
    -20, -10, 0, 17, -10, 12, 2, 21, 8,
    -- layer=2 filter=27 channel=3
    2, 0, -35, 26, 36, 4, -29, 31, -16,
    -- layer=2 filter=27 channel=4
    42, -21, -23, 0, 21, -8, -17, 31, 37,
    -- layer=2 filter=27 channel=5
    -4, -28, 3, 22, -16, 4, 19, -8, 21,
    -- layer=2 filter=27 channel=6
    -22, -17, 4, -37, 19, -28, -4, 32, -37,
    -- layer=2 filter=27 channel=7
    -17, -37, -36, 15, -13, 0, 16, 5, 25,
    -- layer=2 filter=27 channel=8
    -28, -2, -1, -66, -41, 0, -36, -23, -45,
    -- layer=2 filter=27 channel=9
    13, -9, -18, -12, 11, 29, 30, -15, 32,
    -- layer=2 filter=27 channel=10
    13, -9, -19, -80, -60, -27, -64, -54, -72,
    -- layer=2 filter=27 channel=11
    0, 25, -23, -2, 15, 14, 2, 30, 6,
    -- layer=2 filter=27 channel=12
    -24, -42, -34, 27, 8, 6, 15, -12, 9,
    -- layer=2 filter=27 channel=13
    -53, -16, 21, -4, 12, -13, 13, 31, 8,
    -- layer=2 filter=27 channel=14
    41, 10, 31, 8, 25, 14, -23, -33, -1,
    -- layer=2 filter=27 channel=15
    15, -31, -22, 31, -30, -31, 1, -50, -75,
    -- layer=2 filter=27 channel=16
    -8, -8, 9, -48, -24, 0, -27, -56, -35,
    -- layer=2 filter=27 channel=17
    -11, 0, -50, -17, 31, -9, 29, 9, 50,
    -- layer=2 filter=27 channel=18
    19, 19, 4, 37, -20, -12, 28, -38, -53,
    -- layer=2 filter=27 channel=19
    77, 61, -17, 45, 44, 44, -32, -21, 29,
    -- layer=2 filter=27 channel=20
    -47, -37, -15, 22, -6, -20, 5, 24, 12,
    -- layer=2 filter=27 channel=21
    47, -4, -28, 20, -10, -31, 13, -1, -33,
    -- layer=2 filter=27 channel=22
    37, 1, 2, 6, 15, -40, -4, -28, -83,
    -- layer=2 filter=27 channel=23
    62, -15, -24, -28, 62, 37, -8, 13, 56,
    -- layer=2 filter=27 channel=24
    -7, -28, 17, -6, 1, 17, -10, -25, -2,
    -- layer=2 filter=27 channel=25
    -19, -23, 52, -69, -30, 30, -40, -33, 18,
    -- layer=2 filter=27 channel=26
    36, -32, 14, -5, 37, 34, -15, 5, 40,
    -- layer=2 filter=27 channel=27
    -24, -17, -13, -59, 19, 30, -7, 32, 33,
    -- layer=2 filter=27 channel=28
    -15, 7, -1, -14, 68, 5, -38, 42, 47,
    -- layer=2 filter=27 channel=29
    22, 7, -4, -4, 14, 2, -6, 9, 9,
    -- layer=2 filter=27 channel=30
    6, 39, 13, -4, 24, 17, -27, -14, -25,
    -- layer=2 filter=27 channel=31
    -9, -5, -51, 1, 0, -3, 41, 36, 23,
    -- layer=2 filter=28 channel=0
    -1, -18, 1, -23, 40, 10, -52, 24, 4,
    -- layer=2 filter=28 channel=1
    37, -18, 9, 51, 29, -25, -20, -10, 67,
    -- layer=2 filter=28 channel=2
    -5, -18, 5, -15, 1, 3, 10, 9, -12,
    -- layer=2 filter=28 channel=3
    8, -12, -26, -31, 29, -71, 5, 0, -12,
    -- layer=2 filter=28 channel=4
    44, -31, -51, -66, -39, -21, -17, 16, 11,
    -- layer=2 filter=28 channel=5
    -37, -16, -21, -39, -4, 13, -36, 31, 39,
    -- layer=2 filter=28 channel=6
    16, 42, 21, 3, -24, -8, -15, 52, 0,
    -- layer=2 filter=28 channel=7
    10, -26, 7, -41, 24, -8, -47, -7, -7,
    -- layer=2 filter=28 channel=8
    -18, -3, 15, 20, 0, 14, 22, 37, 33,
    -- layer=2 filter=28 channel=9
    -17, 12, 0, 45, 18, -7, -12, -79, -82,
    -- layer=2 filter=28 channel=10
    -16, -24, 19, -24, -4, 15, -24, 16, 0,
    -- layer=2 filter=28 channel=11
    -4, 30, 14, 48, 28, 44, 20, -20, 3,
    -- layer=2 filter=28 channel=12
    22, 2, -3, 19, -7, -2, -21, 1, -2,
    -- layer=2 filter=28 channel=13
    -8, -8, -18, -7, 16, -13, -20, -8, -36,
    -- layer=2 filter=28 channel=14
    -49, 11, -11, -2, 25, 26, -31, 1, 5,
    -- layer=2 filter=28 channel=15
    -17, -20, -10, -74, 29, 23, -65, 15, 24,
    -- layer=2 filter=28 channel=16
    -19, -40, -44, 5, 9, 17, -20, -8, -62,
    -- layer=2 filter=28 channel=17
    -1, -8, 8, 31, -5, 6, 39, -13, 1,
    -- layer=2 filter=28 channel=18
    -37, -22, -54, -64, 14, 29, -40, 23, 26,
    -- layer=2 filter=28 channel=19
    -58, -3, 56, -10, 3, 12, -33, -28, -47,
    -- layer=2 filter=28 channel=20
    14, -10, -20, 10, 5, -9, 10, 20, 7,
    -- layer=2 filter=28 channel=21
    -14, 14, 23, 14, 35, 6, 8, 14, -28,
    -- layer=2 filter=28 channel=22
    20, 15, 34, 21, -4, 30, 30, 12, -3,
    -- layer=2 filter=28 channel=23
    23, 78, 30, 36, -30, -33, 3, -7, 10,
    -- layer=2 filter=28 channel=24
    14, -53, -70, -23, -19, -45, -15, 2, 69,
    -- layer=2 filter=28 channel=25
    41, 1, -26, 12, 37, -5, 12, 31, 13,
    -- layer=2 filter=28 channel=26
    -60, -15, -6, 26, 24, 27, 10, 38, 16,
    -- layer=2 filter=28 channel=27
    23, -12, -26, 25, -22, -56, 31, 48, 69,
    -- layer=2 filter=28 channel=28
    7, 16, 6, 1, -62, -57, -9, 51, 44,
    -- layer=2 filter=28 channel=29
    8, -12, -31, -52, -4, -12, 1, 17, 24,
    -- layer=2 filter=28 channel=30
    22, 42, -41, 9, 31, 2, -11, 4, 5,
    -- layer=2 filter=28 channel=31
    6, -7, 3, 21, 0, -27, 10, -43, 0,
    -- layer=2 filter=29 channel=0
    -20, 6, -2, -15, 20, 72, -2, 36, 92,
    -- layer=2 filter=29 channel=1
    17, -21, -31, -41, -6, -50, 36, 62, 37,
    -- layer=2 filter=29 channel=2
    14, -10, 5, -3, -16, 10, 2, -9, -6,
    -- layer=2 filter=29 channel=3
    -17, -21, -31, -28, 2, 24, -48, -68, -13,
    -- layer=2 filter=29 channel=4
    -10, -17, -31, -18, -32, -106, -45, -76, -83,
    -- layer=2 filter=29 channel=5
    -3, -11, -6, -26, 6, 28, 34, 17, 32,
    -- layer=2 filter=29 channel=6
    48, 37, 18, -18, -36, -26, 44, 1, 13,
    -- layer=2 filter=29 channel=7
    1, 9, 34, 8, 14, 31, 10, 40, 41,
    -- layer=2 filter=29 channel=8
    13, -13, 23, -16, 0, -29, 33, 18, 32,
    -- layer=2 filter=29 channel=9
    17, -18, -29, 0, -42, -21, 36, 18, -29,
    -- layer=2 filter=29 channel=10
    14, 7, 14, -43, -28, -41, 35, 47, 26,
    -- layer=2 filter=29 channel=11
    7, -45, -12, 9, -36, -46, 49, 47, -6,
    -- layer=2 filter=29 channel=12
    0, 11, -17, -18, 26, 35, 18, 23, 23,
    -- layer=2 filter=29 channel=13
    27, 23, 39, -54, -116, -102, 34, 1, 8,
    -- layer=2 filter=29 channel=14
    -21, -43, -24, 0, -2, 10, 23, 39, 47,
    -- layer=2 filter=29 channel=15
    8, -3, 2, 9, -12, 62, 24, 16, 79,
    -- layer=2 filter=29 channel=16
    28, 28, 21, -9, 3, -30, 29, 7, -46,
    -- layer=2 filter=29 channel=17
    -29, -18, -21, -22, -60, -73, 17, -37, -62,
    -- layer=2 filter=29 channel=18
    -7, -25, -41, -20, -1, 47, -7, 6, 39,
    -- layer=2 filter=29 channel=19
    4, 18, 9, 87, 71, 46, 30, 75, 59,
    -- layer=2 filter=29 channel=20
    35, 15, 1, 24, 1, -1, 38, -5, 29,
    -- layer=2 filter=29 channel=21
    -42, -14, -12, -14, 21, 32, -3, -6, 39,
    -- layer=2 filter=29 channel=22
    -35, -9, -3, 23, -23, -11, -26, -16, 0,
    -- layer=2 filter=29 channel=23
    28, 64, -14, 15, 23, 13, -50, -17, -10,
    -- layer=2 filter=29 channel=24
    -14, 0, -43, -70, -88, -60, 54, 33, 59,
    -- layer=2 filter=29 channel=25
    42, 23, 10, -57, -85, -111, 25, -12, -26,
    -- layer=2 filter=29 channel=26
    -21, 2, 40, 8, 18, 26, 40, 60, 93,
    -- layer=2 filter=29 channel=27
    9, -6, -3, -33, -44, -37, -101, -12, -7,
    -- layer=2 filter=29 channel=28
    5, -27, 2, -66, -64, 0, -70, -71, -81,
    -- layer=2 filter=29 channel=29
    -1, -22, -28, -29, -11, 48, -12, 49, 56,
    -- layer=2 filter=29 channel=30
    26, 49, 21, -22, -42, -142, 58, 24, 46,
    -- layer=2 filter=29 channel=31
    -11, -26, -12, -5, -27, -75, 20, -14, -14,
    -- layer=2 filter=30 channel=0
    26, 22, 18, -2, -23, -26, 0, -30, -75,
    -- layer=2 filter=30 channel=1
    23, 35, 69, 43, 5, -11, 57, -15, -61,
    -- layer=2 filter=30 channel=2
    21, -3, -26, 0, 13, -17, -7, -15, 4,
    -- layer=2 filter=30 channel=3
    -103, 30, 74, 17, 30, -4, -13, -18, -7,
    -- layer=2 filter=30 channel=4
    5, -42, 8, -64, -94, -40, -69, -127, -69,
    -- layer=2 filter=30 channel=5
    6, 5, -24, -7, -37, -46, 19, -45, -77,
    -- layer=2 filter=30 channel=6
    18, -11, 52, 5, 24, -23, 22, -4, 3,
    -- layer=2 filter=30 channel=7
    -3, 31, 1, -19, -34, -27, 37, -55, -48,
    -- layer=2 filter=30 channel=8
    40, 16, 38, 24, 16, -23, 9, -18, -17,
    -- layer=2 filter=30 channel=9
    -29, 8, -17, 12, 22, 25, 52, 17, 12,
    -- layer=2 filter=30 channel=10
    43, 2, -31, 19, 17, 3, 13, 40, 3,
    -- layer=2 filter=30 channel=11
    -20, -24, -22, 4, -2, 25, -22, 3, 7,
    -- layer=2 filter=30 channel=12
    -17, 20, 13, -20, 13, 23, 21, -22, 4,
    -- layer=2 filter=30 channel=13
    26, 34, 39, 3, 0, 0, 35, -1, -15,
    -- layer=2 filter=30 channel=14
    -33, 17, -22, -32, 6, -34, 28, -11, -39,
    -- layer=2 filter=30 channel=15
    -4, 24, 14, -30, 14, -33, -31, -82, -71,
    -- layer=2 filter=30 channel=16
    13, -33, 39, -15, 41, 26, 22, -35, -39,
    -- layer=2 filter=30 channel=17
    -16, -32, -7, -10, 41, 0, 15, 21, 34,
    -- layer=2 filter=30 channel=18
    -11, 56, -18, -8, -21, -84, 15, -30, -41,
    -- layer=2 filter=30 channel=19
    8, -5, -24, 91, -31, 31, 48, -9, -7,
    -- layer=2 filter=30 channel=20
    28, 2, 22, 33, 21, -27, 22, 4, 5,
    -- layer=2 filter=30 channel=21
    -26, -7, -25, -26, -23, 3, -22, -47, -3,
    -- layer=2 filter=30 channel=22
    3, 12, -18, -19, -25, -19, -43, -38, 9,
    -- layer=2 filter=30 channel=23
    -48, 2, -57, -1, -23, 35, -20, 0, 37,
    -- layer=2 filter=30 channel=24
    26, 12, -34, 20, -13, 5, 3, 23, 35,
    -- layer=2 filter=30 channel=25
    -5, 1, 17, 5, -19, 6, 11, 0, -5,
    -- layer=2 filter=30 channel=26
    28, 32, 11, 31, 6, 22, 41, -14, 10,
    -- layer=2 filter=30 channel=27
    -6, 36, -45, -41, 3, -17, 1, -1, 21,
    -- layer=2 filter=30 channel=28
    37, -12, 8, -21, 13, 13, -6, 30, 20,
    -- layer=2 filter=30 channel=29
    0, 22, -37, -5, -29, -83, -20, -101, -66,
    -- layer=2 filter=30 channel=30
    16, 31, 22, 22, 22, -6, 23, -15, -6,
    -- layer=2 filter=30 channel=31
    12, 8, -11, -19, 4, 30, 0, 6, 11,
    -- layer=2 filter=31 channel=0
    8, -4, -57, -12, -12, -24, 3, 41, 12,
    -- layer=2 filter=31 channel=1
    26, 40, 18, -21, -25, 18, -65, -29, 1,
    -- layer=2 filter=31 channel=2
    0, 23, -12, 17, -1, 3, -8, 1, 11,
    -- layer=2 filter=31 channel=3
    -107, -1, 23, -50, -24, 79, -17, 2, 0,
    -- layer=2 filter=31 channel=4
    24, -20, 40, -25, -15, -22, -47, -14, -66,
    -- layer=2 filter=31 channel=5
    -6, -33, -14, -6, -4, -7, 2, 36, 2,
    -- layer=2 filter=31 channel=6
    31, -7, 11, 10, 7, -3, -41, 36, 0,
    -- layer=2 filter=31 channel=7
    1, -25, 2, 15, 0, -17, 29, 23, 20,
    -- layer=2 filter=31 channel=8
    24, -2, -35, 3, -82, -26, -24, 6, -15,
    -- layer=2 filter=31 channel=9
    23, 56, 60, 47, 13, -49, 8, -6, -21,
    -- layer=2 filter=31 channel=10
    2, -23, -13, -3, -11, 9, 0, -24, -19,
    -- layer=2 filter=31 channel=11
    42, 49, 13, 36, 2, -23, -26, -54, -22,
    -- layer=2 filter=31 channel=12
    -9, -18, -24, 26, -17, -6, 31, 29, 27,
    -- layer=2 filter=31 channel=13
    42, -2, 28, 0, -13, 13, 4, -12, -49,
    -- layer=2 filter=31 channel=14
    29, -17, 4, 15, -10, -9, 14, 8, 36,
    -- layer=2 filter=31 channel=15
    -15, -15, 1, 1, -31, -3, -1, 39, 2,
    -- layer=2 filter=31 channel=16
    6, 33, 6, -25, -5, 19, -99, 32, 36,
    -- layer=2 filter=31 channel=17
    23, 53, 38, 13, -24, -10, -1, -33, -40,
    -- layer=2 filter=31 channel=18
    10, 11, -23, -21, -5, -28, -19, 4, 7,
    -- layer=2 filter=31 channel=19
    9, -16, -17, 2, 24, -14, 30, 46, 44,
    -- layer=2 filter=31 channel=20
    4, 0, -29, 7, -88, 6, -12, 36, 6,
    -- layer=2 filter=31 channel=21
    8, -21, -25, 20, 9, 17, 2, 0, -27,
    -- layer=2 filter=31 channel=22
    11, 13, 8, -19, 6, -24, -22, -59, -46,
    -- layer=2 filter=31 channel=23
    -17, -10, 17, -23, 26, 40, 45, 12, 41,
    -- layer=2 filter=31 channel=24
    23, -6, -31, -6, -4, -17, 12, -38, -44,
    -- layer=2 filter=31 channel=25
    28, 18, 32, -10, -14, 13, -65, -71, -65,
    -- layer=2 filter=31 channel=26
    24, -49, 12, -23, 6, 22, 24, 38, 2,
    -- layer=2 filter=31 channel=27
    -22, -16, -42, 10, -14, 9, 8, 16, -53,
    -- layer=2 filter=31 channel=28
    0, 17, 3, 41, -10, 3, -62, -32, -9,
    -- layer=2 filter=31 channel=29
    -12, -18, -33, -3, 9, -28, 2, 39, 13,
    -- layer=2 filter=31 channel=30
    16, 8, 6, 80, 5, -18, -37, -79, -28,
    -- layer=2 filter=31 channel=31
    43, 50, -2, 24, 16, -1, 9, -29, -62,
    -- layer=2 filter=32 channel=0
    49, 45, 42, 21, 5, -28, -3, -14, -81,
    -- layer=2 filter=32 channel=1
    22, 37, -10, 27, -14, -64, 11, -36, -80,
    -- layer=2 filter=32 channel=2
    16, -8, -13, 8, -5, 19, 8, -16, 9,
    -- layer=2 filter=32 channel=3
    -29, -5, -30, 2, 34, -41, -28, 26, -27,
    -- layer=2 filter=32 channel=4
    -62, -33, -8, -51, -8, 8, -7, -5, -21,
    -- layer=2 filter=32 channel=5
    27, 41, 36, -11, 0, -10, -47, 12, -35,
    -- layer=2 filter=32 channel=6
    26, 15, 25, 24, -6, 12, -4, -34, -2,
    -- layer=2 filter=32 channel=7
    44, 33, 1, 8, 9, -17, -30, -1, -31,
    -- layer=2 filter=32 channel=8
    27, -11, 20, 3, -9, -25, 6, -18, 7,
    -- layer=2 filter=32 channel=9
    -41, 7, -21, -23, 22, 32, 1, 46, 20,
    -- layer=2 filter=32 channel=10
    -11, 31, 24, 15, -2, 16, 2, -14, -9,
    -- layer=2 filter=32 channel=11
    -6, 8, -4, -4, 3, -1, 20, 69, 11,
    -- layer=2 filter=32 channel=12
    59, 45, 39, 21, 1, -13, -22, -26, -56,
    -- layer=2 filter=32 channel=13
    5, -28, -13, 13, -12, -31, 17, 6, 30,
    -- layer=2 filter=32 channel=14
    14, 23, -19, -35, 9, -22, -31, 24, -2,
    -- layer=2 filter=32 channel=15
    59, 33, 30, 5, 13, -30, 9, 8, -33,
    -- layer=2 filter=32 channel=16
    5, -33, -62, 10, -11, 7, -1, -10, -43,
    -- layer=2 filter=32 channel=17
    -30, 4, 21, 0, -17, 18, 33, 33, 14,
    -- layer=2 filter=32 channel=18
    23, -4, -13, 2, -14, -50, 27, 24, 3,
    -- layer=2 filter=32 channel=19
    43, -8, -51, 35, -62, -84, -53, -68, -113,
    -- layer=2 filter=32 channel=20
    55, 25, 50, 23, -29, -30, 22, -12, -38,
    -- layer=2 filter=32 channel=21
    6, 1, 0, 28, 13, -22, -4, -17, -73,
    -- layer=2 filter=32 channel=22
    -35, -9, -52, 41, 20, -51, -3, -9, -77,
    -- layer=2 filter=32 channel=23
    17, 63, 29, 0, 67, -22, 25, 11, -20,
    -- layer=2 filter=32 channel=24
    -41, 0, 14, -87, -2, 33, 0, 34, 36,
    -- layer=2 filter=32 channel=25
    -48, -63, -24, -13, -35, 46, -4, -4, 77,
    -- layer=2 filter=32 channel=26
    13, -19, -27, 17, -11, -62, 25, -34, -58,
    -- layer=2 filter=32 channel=27
    -17, 22, 33, -31, 49, 43, -33, 8, 44,
    -- layer=2 filter=32 channel=28
    -13, 9, 55, -1, 26, 69, -31, 20, 72,
    -- layer=2 filter=32 channel=29
    52, 29, 18, -29, -28, -51, -4, -2, 0,
    -- layer=2 filter=32 channel=30
    -57, -53, -45, -16, -12, -38, 32, 19, 32,
    -- layer=2 filter=32 channel=31
    -4, 21, 25, 0, 30, 0, 36, 2, 44,
    -- layer=2 filter=33 channel=0
    -48, 22, 41, -8, 36, 0, -5, 56, -29,
    -- layer=2 filter=33 channel=1
    -75, 6, 12, 28, 14, 25, 25, 11, 3,
    -- layer=2 filter=33 channel=2
    -9, 1, -11, 11, 5, -13, -3, 9, 7,
    -- layer=2 filter=33 channel=3
    3, 42, -10, -10, 8, -44, 5, -43, -31,
    -- layer=2 filter=33 channel=4
    17, -10, 9, 13, 5, -5, 59, -11, -68,
    -- layer=2 filter=33 channel=5
    8, 0, -13, 43, 6, -79, 49, 29, -19,
    -- layer=2 filter=33 channel=6
    -25, 35, 31, 19, -2, 26, -14, 18, -31,
    -- layer=2 filter=33 channel=7
    26, -11, -40, 20, -11, -49, 48, 30, -17,
    -- layer=2 filter=33 channel=8
    -89, 15, 21, -17, -9, 49, -29, 34, -58,
    -- layer=2 filter=33 channel=9
    18, -16, -59, 33, -1, -40, 41, -14, -13,
    -- layer=2 filter=33 channel=10
    -90, -51, 53, -56, -65, -10, -32, -34, -3,
    -- layer=2 filter=33 channel=11
    22, -11, 17, 32, 14, 44, 45, 36, 53,
    -- layer=2 filter=33 channel=12
    1, -4, -5, 27, 16, -28, 32, 4, -32,
    -- layer=2 filter=33 channel=13
    -22, 26, 23, 20, -13, -9, -13, 11, -61,
    -- layer=2 filter=33 channel=14
    36, 11, -18, 32, -11, -91, 18, 14, -17,
    -- layer=2 filter=33 channel=15
    -6, -2, 19, -20, 49, -38, -18, 61, -63,
    -- layer=2 filter=33 channel=16
    -90, -7, 69, -76, 13, 61, -37, 21, 7,
    -- layer=2 filter=33 channel=17
    48, -5, -31, 51, -22, -24, 29, -34, -37,
    -- layer=2 filter=33 channel=18
    -8, 7, 9, 5, 46, -36, 13, 59, -44,
    -- layer=2 filter=33 channel=19
    -55, 0, -24, -68, -26, 17, -36, 12, -3,
    -- layer=2 filter=33 channel=20
    -72, 3, 50, -13, -6, 7, 27, -18, -100,
    -- layer=2 filter=33 channel=21
    28, 11, -1, 0, -20, -32, 1, -26, -21,
    -- layer=2 filter=33 channel=22
    -27, 22, 20, -65, -36, 64, 12, -20, 8,
    -- layer=2 filter=33 channel=23
    15, 33, 5, -1, -63, 5, -17, -96, -42,
    -- layer=2 filter=33 channel=24
    11, -29, -36, 56, -27, -60, 58, -26, -44,
    -- layer=2 filter=33 channel=25
    63, 23, -8, 7, 26, -63, 8, 31, -25,
    -- layer=2 filter=33 channel=26
    -37, 1, -17, -4, 5, -18, 29, 1, -21,
    -- layer=2 filter=33 channel=27
    66, 5, -5, 23, -21, -22, 33, -25, -26,
    -- layer=2 filter=33 channel=28
    40, 53, 20, 25, -31, 29, 53, -28, 9,
    -- layer=2 filter=33 channel=29
    -8, -10, 0, 25, 6, -100, 35, 53, -68,
    -- layer=2 filter=33 channel=30
    11, 12, 30, 7, -18, 24, 18, 13, 21,
    -- layer=2 filter=33 channel=31
    49, 11, -20, 48, -33, -54, 17, -28, -27,
    -- layer=2 filter=34 channel=0
    -47, 12, 6, -14, 39, 17, -74, 5, -7,
    -- layer=2 filter=34 channel=1
    15, -28, -15, 11, 1, -15, -60, -29, 11,
    -- layer=2 filter=34 channel=2
    0, -11, -9, 7, 16, 8, 10, -10, 1,
    -- layer=2 filter=34 channel=3
    17, -27, -34, -13, -45, 10, 15, -41, -4,
    -- layer=2 filter=34 channel=4
    -29, -3, -11, -28, -21, -16, -1, 1, 48,
    -- layer=2 filter=34 channel=5
    -56, 17, -1, -56, 0, 25, -51, -8, -23,
    -- layer=2 filter=34 channel=6
    -13, -15, -26, -10, -17, -22, -34, 10, 20,
    -- layer=2 filter=34 channel=7
    -40, 21, 17, -59, 8, 30, -77, -35, -52,
    -- layer=2 filter=34 channel=8
    26, 0, 22, 18, -20, -17, 1, -6, 25,
    -- layer=2 filter=34 channel=9
    -13, 9, 33, 15, -21, -1, -14, -28, -41,
    -- layer=2 filter=34 channel=10
    63, 28, -11, 29, 1, 10, -27, -9, 1,
    -- layer=2 filter=34 channel=11
    -17, -19, -22, 20, -1, -32, 15, 39, 14,
    -- layer=2 filter=34 channel=12
    15, -18, -23, -52, 19, 15, -36, 2, -33,
    -- layer=2 filter=34 channel=13
    20, 7, -9, 7, -1, -43, 2, -54, -20,
    -- layer=2 filter=34 channel=14
    -57, 13, 29, -27, 6, 29, -81, 18, -26,
    -- layer=2 filter=34 channel=15
    17, 0, -32, 1, 10, 8, -69, 15, 14,
    -- layer=2 filter=34 channel=16
    23, -14, -7, -4, -27, 12, -32, -11, 0,
    -- layer=2 filter=34 channel=17
    21, 0, 22, 4, -8, 10, 47, 14, 12,
    -- layer=2 filter=34 channel=18
    -58, -24, -18, -8, 71, 28, -45, 51, 18,
    -- layer=2 filter=34 channel=19
    5, 19, 2, -16, -35, -80, 38, -5, -40,
    -- layer=2 filter=34 channel=20
    -17, -2, -56, -6, 10, -10, 11, 38, 29,
    -- layer=2 filter=34 channel=21
    16, 0, -7, 31, 31, 8, -1, -4, -15,
    -- layer=2 filter=34 channel=22
    54, -10, -42, 72, 31, -17, 23, 9, 16,
    -- layer=2 filter=34 channel=23
    54, 53, 33, 38, 42, 60, 59, -3, -2,
    -- layer=2 filter=34 channel=24
    56, 28, 41, -10, 23, 26, 0, 4, -29,
    -- layer=2 filter=34 channel=25
    -9, -6, 50, 20, -29, 41, 54, -17, 14,
    -- layer=2 filter=34 channel=26
    20, 35, 27, 44, 3, -13, 11, 21, -32,
    -- layer=2 filter=34 channel=27
    55, 44, 33, 61, 11, 12, 78, -6, 36,
    -- layer=2 filter=34 channel=28
    17, 40, 62, -34, 28, 38, 43, 71, 89,
    -- layer=2 filter=34 channel=29
    -43, 13, -4, -14, 38, 9, -18, -7, -28,
    -- layer=2 filter=34 channel=30
    -39, 31, 0, 41, 80, 35, -15, 12, -22,
    -- layer=2 filter=34 channel=31
    -2, 33, 35, 3, -12, -10, 17, -14, -18,
    -- layer=2 filter=35 channel=0
    -18, -12, -22, 2, 13, 21, -25, 5, -5,
    -- layer=2 filter=35 channel=1
    -2, -3, 2, -7, 0, 18, 2, 27, 13,
    -- layer=2 filter=35 channel=2
    -2, 13, -4, 0, -15, -15, -16, -9, 17,
    -- layer=2 filter=35 channel=3
    -12, 23, 4, 3, 9, 14, 16, 26, -4,
    -- layer=2 filter=35 channel=4
    -23, -16, -14, 15, -27, 7, 1, -29, 13,
    -- layer=2 filter=35 channel=5
    -28, -1, -20, 0, -5, -3, 4, 3, -7,
    -- layer=2 filter=35 channel=6
    -5, 13, -15, -31, -8, -2, -12, -21, -28,
    -- layer=2 filter=35 channel=7
    -4, -26, -7, -22, -7, -22, -12, -8, -2,
    -- layer=2 filter=35 channel=8
    7, 12, -15, -17, -26, -17, -22, -15, -20,
    -- layer=2 filter=35 channel=9
    -30, -16, 4, 3, -3, 11, -21, -7, 9,
    -- layer=2 filter=35 channel=10
    -10, 8, -19, -7, -17, -5, -21, -8, -11,
    -- layer=2 filter=35 channel=11
    -6, -22, -12, -11, -5, 2, -2, -4, 15,
    -- layer=2 filter=35 channel=12
    -18, -6, -22, -28, 11, -22, 4, -3, 0,
    -- layer=2 filter=35 channel=13
    16, 9, -22, 7, -5, -19, -8, -34, -27,
    -- layer=2 filter=35 channel=14
    -9, 0, -17, -9, -8, -2, -2, -5, 1,
    -- layer=2 filter=35 channel=15
    3, -21, -33, -18, 0, 0, -29, -21, -29,
    -- layer=2 filter=35 channel=16
    0, -7, 4, -10, -3, 3, 1, 1, -5,
    -- layer=2 filter=35 channel=17
    1, -10, -2, -1, -7, 1, 15, 0, -29,
    -- layer=2 filter=35 channel=18
    -6, 23, 16, -10, 12, 14, -18, 21, -1,
    -- layer=2 filter=35 channel=19
    0, 2, 6, 9, -14, -8, -21, -29, -22,
    -- layer=2 filter=35 channel=20
    -6, -26, -31, 5, -9, -30, -5, -19, -8,
    -- layer=2 filter=35 channel=21
    -19, -14, -8, -23, -15, -15, 14, 0, 14,
    -- layer=2 filter=35 channel=22
    4, 0, -7, 12, -3, -14, 0, -12, -2,
    -- layer=2 filter=35 channel=23
    -22, -22, -8, -10, 2, -19, -30, -18, -37,
    -- layer=2 filter=35 channel=24
    -9, -1, -26, -24, 4, -22, -14, -6, -30,
    -- layer=2 filter=35 channel=25
    12, 0, -6, 4, -23, -36, -22, -1, -14,
    -- layer=2 filter=35 channel=26
    -9, 7, -14, -3, -5, -4, -26, -15, -14,
    -- layer=2 filter=35 channel=27
    25, -19, -19, 6, -18, -21, -23, -7, -3,
    -- layer=2 filter=35 channel=28
    -1, -14, 3, 6, -12, 0, -10, -6, -14,
    -- layer=2 filter=35 channel=29
    -21, -8, -20, -7, -8, -23, 4, -6, 7,
    -- layer=2 filter=35 channel=30
    18, -21, -8, 0, -4, 10, -1, 3, 0,
    -- layer=2 filter=35 channel=31
    -24, 10, 0, -10, -23, -28, -21, -14, -27,
    -- layer=2 filter=36 channel=0
    33, 7, 23, -32, 4, -19, -24, 13, 38,
    -- layer=2 filter=36 channel=1
    -2, 25, -17, -11, -21, -38, -3, 28, -19,
    -- layer=2 filter=36 channel=2
    11, 11, -12, -3, -7, -6, 15, 19, 18,
    -- layer=2 filter=36 channel=3
    37, 130, 33, 21, 90, 76, 35, 36, 44,
    -- layer=2 filter=36 channel=4
    -62, -68, -61, 0, 35, 44, 16, 26, 44,
    -- layer=2 filter=36 channel=5
    -27, 10, 25, -37, -18, 5, -57, -5, -4,
    -- layer=2 filter=36 channel=6
    2, 2, -10, 13, 8, 61, -26, -16, -26,
    -- layer=2 filter=36 channel=7
    -15, 20, -22, 2, 37, -24, -8, 2, 2,
    -- layer=2 filter=36 channel=8
    19, -9, -10, 48, 32, 46, -21, -9, -6,
    -- layer=2 filter=36 channel=9
    39, 27, -5, 22, 4, 5, 8, -20, -11,
    -- layer=2 filter=36 channel=10
    36, 5, 15, 35, 31, 46, -79, -68, 8,
    -- layer=2 filter=36 channel=11
    16, 50, 36, 8, -8, -69, -11, -46, -49,
    -- layer=2 filter=36 channel=12
    13, 46, 25, -18, 2, 3, -20, 15, 54,
    -- layer=2 filter=36 channel=13
    -21, -41, -19, 69, 53, 38, -9, -68, -77,
    -- layer=2 filter=36 channel=14
    4, 12, 2, -28, -38, -37, 2, 44, 37,
    -- layer=2 filter=36 channel=15
    25, 58, 26, -46, -8, -20, -76, 13, 2,
    -- layer=2 filter=36 channel=16
    -41, -17, -13, 13, -34, 9, -10, -36, -68,
    -- layer=2 filter=36 channel=17
    29, 25, 57, 4, -15, -29, 11, -40, -30,
    -- layer=2 filter=36 channel=18
    33, 16, 20, -51, -52, -51, -70, -73, -30,
    -- layer=2 filter=36 channel=19
    -46, -69, -88, 6, -41, -43, 57, 90, 41,
    -- layer=2 filter=36 channel=20
    28, -1, 23, -9, 2, 12, 11, -14, -8,
    -- layer=2 filter=36 channel=21
    -17, 6, 0, -15, -20, 7, 8, 51, 47,
    -- layer=2 filter=36 channel=22
    -76, -18, -12, 0, 15, 0, 7, 20, -6,
    -- layer=2 filter=36 channel=23
    -41, -37, 44, -44, -18, 35, 79, 22, 40,
    -- layer=2 filter=36 channel=24
    19, 13, 11, 19, -19, 12, -58, -91, -26,
    -- layer=2 filter=36 channel=25
    6, -38, -17, 34, 27, 45, -15, -31, -51,
    -- layer=2 filter=36 channel=26
    -32, -80, -38, 27, -1, -3, 64, 35, 23,
    -- layer=2 filter=36 channel=27
    14, 12, 36, 80, 3, 15, 36, -52, -2,
    -- layer=2 filter=36 channel=28
    21, 29, 61, -21, 30, 36, 10, 10, 0,
    -- layer=2 filter=36 channel=29
    6, 6, -17, -37, -28, -36, -40, -5, 6,
    -- layer=2 filter=36 channel=30
    24, -11, 0, 30, 76, 55, -17, -61, -62,
    -- layer=2 filter=36 channel=31
    43, 19, 18, -10, -6, -20, -9, -48, -29,
    -- layer=2 filter=37 channel=0
    42, 0, -23, 5, -10, -23, -14, -50, -62,
    -- layer=2 filter=37 channel=1
    20, 3, 3, 11, 1, 13, 70, -4, -4,
    -- layer=2 filter=37 channel=2
    -15, 9, 20, 25, 15, -16, 0, 6, -14,
    -- layer=2 filter=37 channel=3
    42, 11, -2, 12, 29, 35, -50, 13, 14,
    -- layer=2 filter=37 channel=4
    54, -3, 29, 18, -59, -102, 14, -29, -76,
    -- layer=2 filter=37 channel=5
    0, -9, 9, 0, 26, 30, -37, -16, 7,
    -- layer=2 filter=37 channel=6
    -4, -9, 31, 14, -8, 20, 35, -41, -14,
    -- layer=2 filter=37 channel=7
    22, 21, -17, 14, 29, -22, -13, -18, -22,
    -- layer=2 filter=37 channel=8
    -29, 2, 21, 25, -19, 3, 27, -17, 4,
    -- layer=2 filter=37 channel=9
    0, 21, -11, 15, -18, 11, -37, -8, 15,
    -- layer=2 filter=37 channel=10
    -36, 22, 9, -15, 19, -56, -9, 27, -21,
    -- layer=2 filter=37 channel=11
    35, -16, 1, 57, -27, 35, 52, -32, 38,
    -- layer=2 filter=37 channel=12
    0, -1, 9, -3, 13, -1, -13, 9, 20,
    -- layer=2 filter=37 channel=13
    24, 16, 14, 28, 7, -33, 28, -46, -64,
    -- layer=2 filter=37 channel=14
    9, -19, -49, 6, -9, -5, -55, -16, 30,
    -- layer=2 filter=37 channel=15
    2, -7, 11, 40, -2, -72, 10, 19, -45,
    -- layer=2 filter=37 channel=16
    -115, -23, -12, 0, -19, -12, 53, -33, -46,
    -- layer=2 filter=37 channel=17
    -5, 0, 3, -26, 2, -13, -3, 42, 0,
    -- layer=2 filter=37 channel=18
    35, -11, -18, 32, 5, -28, -5, 60, 25,
    -- layer=2 filter=37 channel=19
    61, -15, -5, 9, -73, -6, -57, -59, 57,
    -- layer=2 filter=37 channel=20
    -40, -2, 30, 15, -17, -18, -2, -42, -22,
    -- layer=2 filter=37 channel=21
    69, 10, -11, 75, -41, -80, -2, -42, 14,
    -- layer=2 filter=37 channel=22
    74, 14, 21, 54, -66, 7, 23, -34, 20,
    -- layer=2 filter=37 channel=23
    36, 22, -37, 50, 66, -23, -83, 110, 49,
    -- layer=2 filter=37 channel=24
    3, 40, -15, 3, 30, -58, -56, 39, -4,
    -- layer=2 filter=37 channel=25
    -41, 9, -4, -33, 44, 37, 12, 19, 26,
    -- layer=2 filter=37 channel=26
    27, -4, 12, -13, -6, -6, -70, -52, 4,
    -- layer=2 filter=37 channel=27
    24, 20, -4, 3, 5, -5, -72, 71, 47,
    -- layer=2 filter=37 channel=28
    48, 43, -6, 79, 48, -19, 38, 82, 46,
    -- layer=2 filter=37 channel=29
    29, 21, -24, 27, 12, -54, -18, 15, -7,
    -- layer=2 filter=37 channel=30
    -61, 62, 0, -69, 8, 25, -64, 7, 3,
    -- layer=2 filter=37 channel=31
    -24, 24, 6, 10, 7, -4, -10, -28, 0,
    -- layer=2 filter=38 channel=0
    1, 0, 18, -9, 8, -1, -7, -13, -9,
    -- layer=2 filter=38 channel=1
    -21, 5, -2, 14, 9, -10, -8, 7, -14,
    -- layer=2 filter=38 channel=2
    14, 13, -1, -13, 4, 20, 5, 18, -1,
    -- layer=2 filter=38 channel=3
    -11, -4, -1, 16, 18, 4, -14, 19, -16,
    -- layer=2 filter=38 channel=4
    13, 3, -8, 19, 2, 5, -13, 10, 7,
    -- layer=2 filter=38 channel=5
    3, -9, 6, 7, -14, -10, 7, -19, -13,
    -- layer=2 filter=38 channel=6
    -18, -19, -12, 16, 0, -12, 6, -17, -13,
    -- layer=2 filter=38 channel=7
    -13, -7, -21, 11, 18, 13, -1, 10, 10,
    -- layer=2 filter=38 channel=8
    -9, 16, -14, -20, 0, -22, -3, -23, -14,
    -- layer=2 filter=38 channel=9
    -22, 0, 3, -16, 11, -8, -24, -26, 4,
    -- layer=2 filter=38 channel=10
    5, -18, -9, 0, -9, 5, -18, 12, -9,
    -- layer=2 filter=38 channel=11
    -10, 7, -15, -19, 9, -15, 10, 17, 20,
    -- layer=2 filter=38 channel=12
    6, -20, -15, -10, -21, -22, -10, -4, 5,
    -- layer=2 filter=38 channel=13
    -1, 5, 10, 6, -17, 0, -25, -4, 10,
    -- layer=2 filter=38 channel=14
    9, -8, 0, -1, 0, -7, 3, 6, -7,
    -- layer=2 filter=38 channel=15
    -14, 3, -18, -3, 11, 16, 14, 8, 0,
    -- layer=2 filter=38 channel=16
    -5, 14, 0, -8, -14, -1, 18, -20, -6,
    -- layer=2 filter=38 channel=17
    -19, -6, -10, -19, -3, 3, 4, -19, -10,
    -- layer=2 filter=38 channel=18
    13, 11, 10, -9, -20, 15, -13, 6, -4,
    -- layer=2 filter=38 channel=19
    -16, 5, -26, -4, -14, -13, 14, -4, 4,
    -- layer=2 filter=38 channel=20
    -16, -15, 9, 10, 6, 13, 11, 1, -12,
    -- layer=2 filter=38 channel=21
    -2, -14, 5, -5, -18, -7, 4, 11, -3,
    -- layer=2 filter=38 channel=22
    16, -2, 2, -14, -8, -21, -10, -6, -17,
    -- layer=2 filter=38 channel=23
    7, -18, 10, 3, -21, -3, -5, -15, -22,
    -- layer=2 filter=38 channel=24
    -25, -13, -2, 12, 13, 0, 15, -8, 1,
    -- layer=2 filter=38 channel=25
    -4, 11, 9, -15, 3, -24, -17, -5, -14,
    -- layer=2 filter=38 channel=26
    4, -3, -25, -22, -6, 9, -18, 13, -16,
    -- layer=2 filter=38 channel=27
    2, -12, -24, 6, 11, -1, 5, 9, -1,
    -- layer=2 filter=38 channel=28
    -11, -25, -23, -15, 11, -7, -8, 1, 5,
    -- layer=2 filter=38 channel=29
    0, -1, -8, -10, 2, 9, 2, -14, -21,
    -- layer=2 filter=38 channel=30
    -8, 0, -26, 9, -24, -11, 14, -10, -22,
    -- layer=2 filter=38 channel=31
    -28, 0, 1, 9, 0, 4, 8, -20, 0,
    -- layer=2 filter=39 channel=0
    2, -9, -31, -17, -29, 5, 60, -28, -4,
    -- layer=2 filter=39 channel=1
    -11, 33, 38, 40, 48, 29, 2, 1, 52,
    -- layer=2 filter=39 channel=2
    -18, 3, -15, 12, 9, 24, -8, 9, 0,
    -- layer=2 filter=39 channel=3
    13, 37, -17, 41, 92, -30, 62, 20, 25,
    -- layer=2 filter=39 channel=4
    -2, -10, 0, 16, 7, -28, 63, 47, 57,
    -- layer=2 filter=39 channel=5
    -16, 16, 3, 10, 21, -4, 51, 38, 34,
    -- layer=2 filter=39 channel=6
    -23, 4, 15, -4, -25, -29, 34, 25, 3,
    -- layer=2 filter=39 channel=7
    -5, 21, -20, -2, 21, 26, 19, 13, 59,
    -- layer=2 filter=39 channel=8
    -5, -26, -28, -15, -27, -35, 0, 18, 8,
    -- layer=2 filter=39 channel=9
    43, 5, 43, 3, 3, 32, -3, 16, 15,
    -- layer=2 filter=39 channel=10
    0, 19, -13, -31, 12, 9, 56, 78, 37,
    -- layer=2 filter=39 channel=11
    32, -76, -15, 23, -74, 34, -9, -51, -24,
    -- layer=2 filter=39 channel=12
    43, 21, -20, 26, 19, 0, 38, 16, 39,
    -- layer=2 filter=39 channel=13
    16, -43, -39, 2, -10, 8, 1, 24, 31,
    -- layer=2 filter=39 channel=14
    33, 36, 15, 2, -7, 2, 22, 4, 5,
    -- layer=2 filter=39 channel=15
    33, -21, -31, 35, 0, -28, 61, 13, 17,
    -- layer=2 filter=39 channel=16
    24, 62, 4, 4, 9, -20, 2, 39, 66,
    -- layer=2 filter=39 channel=17
    14, -12, 32, 12, 23, -5, -73, -17, 15,
    -- layer=2 filter=39 channel=18
    24, -35, -48, -2, -43, -20, 20, -101, -47,
    -- layer=2 filter=39 channel=19
    -56, 17, 55, -20, 11, 23, -19, 60, 102,
    -- layer=2 filter=39 channel=20
    -38, 1, -17, -13, 34, 2, -28, 6, 16,
    -- layer=2 filter=39 channel=21
    23, -1, -26, 36, -20, -41, 43, 8, -5,
    -- layer=2 filter=39 channel=22
    40, -12, -46, -4, -68, -81, 9, -29, -33,
    -- layer=2 filter=39 channel=23
    34, 71, 84, 59, 34, -11, 27, 6, 27,
    -- layer=2 filter=39 channel=24
    8, 38, 17, 12, -1, -10, 19, 28, 36,
    -- layer=2 filter=39 channel=25
    -8, -6, 5, -9, -58, -67, 10, -43, 1,
    -- layer=2 filter=39 channel=26
    -6, -2, 0, -2, -2, 5, -12, 7, 62,
    -- layer=2 filter=39 channel=27
    2, 36, 54, -19, 31, 8, -19, 10, 35,
    -- layer=2 filter=39 channel=28
    1, 53, 87, -2, 10, 27, -5, -17, -70,
    -- layer=2 filter=39 channel=29
    -3, 0, -29, 10, 12, 0, 44, -1, 30,
    -- layer=2 filter=39 channel=30
    54, -54, -67, 78, -56, -66, 86, -39, -18,
    -- layer=2 filter=39 channel=31
    -17, -4, 13, -11, 26, 0, -15, 24, 45,
    -- layer=2 filter=40 channel=0
    2, -9, -8, -28, -6, 15, -3, -29, -20,
    -- layer=2 filter=40 channel=1
    18, -2, 29, -5, -29, 14, -3, -21, -29,
    -- layer=2 filter=40 channel=2
    5, 15, -12, 2, 10, 0, 11, -5, -9,
    -- layer=2 filter=40 channel=3
    4, -13, 9, -6, 10, 34, 0, 8, 0,
    -- layer=2 filter=40 channel=4
    13, -15, 12, -28, -2, -1, 0, 29, 17,
    -- layer=2 filter=40 channel=5
    -7, 8, -17, 6, -27, 7, -31, -30, -19,
    -- layer=2 filter=40 channel=6
    -9, -3, -16, -13, -12, -19, -17, -4, -12,
    -- layer=2 filter=40 channel=7
    -20, -28, -18, 7, 5, 11, -19, -31, -3,
    -- layer=2 filter=40 channel=8
    -2, -2, -12, -22, -6, -26, -19, 9, -22,
    -- layer=2 filter=40 channel=9
    2, -14, 2, -20, -19, -19, 6, -11, 2,
    -- layer=2 filter=40 channel=10
    -24, -22, -6, -4, -6, -18, -7, -13, -8,
    -- layer=2 filter=40 channel=11
    -7, 25, 7, -3, 7, -22, -9, -7, 0,
    -- layer=2 filter=40 channel=12
    -23, -4, -4, -24, -18, 0, 0, -6, -25,
    -- layer=2 filter=40 channel=13
    -18, -10, -3, -24, 0, -3, 18, 0, -2,
    -- layer=2 filter=40 channel=14
    -26, 5, -11, -17, 11, -23, 0, -17, -22,
    -- layer=2 filter=40 channel=15
    -29, 0, -9, -21, 7, 14, -18, 4, -24,
    -- layer=2 filter=40 channel=16
    -8, 1, -10, -17, -22, -24, -1, 10, 19,
    -- layer=2 filter=40 channel=17
    -2, 2, 14, -31, -15, -17, -23, -21, -21,
    -- layer=2 filter=40 channel=18
    -10, -5, 0, -24, 19, -7, 7, 13, -12,
    -- layer=2 filter=40 channel=19
    -12, 14, -5, 16, 2, -23, -6, -27, -10,
    -- layer=2 filter=40 channel=20
    10, 1, -21, -20, -38, 11, -13, 0, 6,
    -- layer=2 filter=40 channel=21
    -6, 11, -20, 6, -19, -1, 1, -25, 0,
    -- layer=2 filter=40 channel=22
    -13, -17, 12, 0, -21, -33, 1, -8, -35,
    -- layer=2 filter=40 channel=23
    -26, 2, 0, 0, 17, -26, 18, -18, 6,
    -- layer=2 filter=40 channel=24
    -6, -26, -7, -8, 28, 15, 15, -5, -22,
    -- layer=2 filter=40 channel=25
    5, -26, -6, -37, -15, -11, 0, 6, 10,
    -- layer=2 filter=40 channel=26
    0, 16, -13, -21, -19, 4, -7, -24, -4,
    -- layer=2 filter=40 channel=27
    -27, -9, -16, 0, 11, -12, -6, -19, -8,
    -- layer=2 filter=40 channel=28
    -20, -3, 2, -19, -23, 12, -11, 10, -4,
    -- layer=2 filter=40 channel=29
    -21, 0, -27, -16, -17, 4, -17, 2, -27,
    -- layer=2 filter=40 channel=30
    4, 15, 14, 8, 1, -7, 24, -26, 0,
    -- layer=2 filter=40 channel=31
    -11, -35, 5, -34, -36, 0, -7, -29, -6,
    -- layer=2 filter=41 channel=0
    -17, 16, 14, -26, -15, -10, -20, -36, -24,
    -- layer=2 filter=41 channel=1
    28, -25, 7, 33, -32, -28, 26, -30, -40,
    -- layer=2 filter=41 channel=2
    -15, -15, 27, 8, 14, 0, 16, -15, -5,
    -- layer=2 filter=41 channel=3
    28, -11, 22, 46, -20, -1, 78, -36, -87,
    -- layer=2 filter=41 channel=4
    -50, -41, 36, -76, -91, 12, -30, -51, -44,
    -- layer=2 filter=41 channel=5
    -8, 9, 26, -8, -26, -7, -30, -25, -13,
    -- layer=2 filter=41 channel=6
    -6, 37, 30, -22, 21, 22, -75, -54, 32,
    -- layer=2 filter=41 channel=7
    2, -5, 5, -1, 5, 20, -21, 8, -20,
    -- layer=2 filter=41 channel=8
    -66, -9, 24, -7, -3, 24, -53, -43, 38,
    -- layer=2 filter=41 channel=9
    -14, -2, -48, 26, 2, -24, 35, 29, 16,
    -- layer=2 filter=41 channel=10
    -18, -38, 54, 38, -42, 46, 16, -12, 8,
    -- layer=2 filter=41 channel=11
    5, -13, -14, 5, 32, -59, 22, 58, 1,
    -- layer=2 filter=41 channel=12
    24, -9, -3, 27, 8, 4, 6, 24, -32,
    -- layer=2 filter=41 channel=13
    -44, 7, 39, -28, -8, 43, -10, -32, 7,
    -- layer=2 filter=41 channel=14
    -13, -34, -21, -32, 11, 0, 13, -13, -43,
    -- layer=2 filter=41 channel=15
    19, -24, 3, 36, -23, 0, 10, -4, 20,
    -- layer=2 filter=41 channel=16
    -82, -17, 21, -7, -14, 13, -18, -47, -12,
    -- layer=2 filter=41 channel=17
    5, 15, -13, 15, 12, -28, -4, 30, 15,
    -- layer=2 filter=41 channel=18
    -19, -49, -23, -11, 12, 20, 9, 47, 53,
    -- layer=2 filter=41 channel=19
    -60, 37, 51, -6, -8, -51, -56, -72, -27,
    -- layer=2 filter=41 channel=20
    -35, 12, 33, -50, -16, 43, -85, -71, 14,
    -- layer=2 filter=41 channel=21
    24, -4, -5, 71, 28, -64, 45, 21, -104,
    -- layer=2 filter=41 channel=22
    39, 24, 25, 83, -2, -68, 70, 23, -57,
    -- layer=2 filter=41 channel=23
    2, 53, 19, 80, 65, 71, 37, -21, 15,
    -- layer=2 filter=41 channel=24
    -41, -27, -5, 31, 28, 38, 28, 37, 28,
    -- layer=2 filter=41 channel=25
    -79, -29, 33, -73, 15, 92, 8, 28, 90,
    -- layer=2 filter=41 channel=26
    -49, 14, 45, -45, 9, 34, -44, -22, 38,
    -- layer=2 filter=41 channel=27
    -59, 21, -21, -4, 45, 24, 23, 7, 44,
    -- layer=2 filter=41 channel=28
    -65, -7, 10, -6, 32, 69, -50, 39, 128,
    -- layer=2 filter=41 channel=29
    13, -7, 0, -11, -21, -24, -2, 23, 21,
    -- layer=2 filter=41 channel=30
    -11, -25, 22, -6, -53, -47, -1, 13, -28,
    -- layer=2 filter=41 channel=31
    -6, 19, -4, 7, 13, -31, -11, -18, -20,
    -- layer=2 filter=42 channel=0
    -67, -30, 8, -89, -16, -18, -59, -18, -36,
    -- layer=2 filter=42 channel=1
    -78, 10, 19, 56, 61, 85, 62, 74, 42,
    -- layer=2 filter=42 channel=2
    15, -18, 4, -3, 20, 6, -5, 10, -8,
    -- layer=2 filter=42 channel=3
    42, 37, 29, -3, -8, 20, -17, 31, 33,
    -- layer=2 filter=42 channel=4
    -20, -38, -56, -59, -119, -150, 77, -1, -80,
    -- layer=2 filter=42 channel=5
    -45, -6, 51, -32, 39, 15, -35, 21, -3,
    -- layer=2 filter=42 channel=6
    24, 60, 58, -19, 2, -48, -1, -12, -6,
    -- layer=2 filter=42 channel=7
    -17, 6, -17, -26, 37, 16, -17, 41, 9,
    -- layer=2 filter=42 channel=8
    11, 28, 19, 11, -24, -44, 51, -36, -10,
    -- layer=2 filter=42 channel=9
    -4, -36, -44, 5, 7, 56, 7, 44, 38,
    -- layer=2 filter=42 channel=10
    50, 24, 46, 32, 15, 15, 28, -14, 43,
    -- layer=2 filter=42 channel=11
    -9, -46, 8, 31, -31, -9, 12, -40, -6,
    -- layer=2 filter=42 channel=12
    -1, 15, -24, -32, 48, 19, -18, -9, 19,
    -- layer=2 filter=42 channel=13
    22, 47, 20, 26, -42, -92, 61, 5, -24,
    -- layer=2 filter=42 channel=14
    18, -14, -8, -25, 27, 17, 13, 53, 17,
    -- layer=2 filter=42 channel=15
    18, -25, -26, -14, 9, -11, 19, -36, -72,
    -- layer=2 filter=42 channel=16
    -22, 66, 21, -3, 13, -2, 38, 15, -1,
    -- layer=2 filter=42 channel=17
    26, -17, 9, 15, -7, 17, 9, -17, 10,
    -- layer=2 filter=42 channel=18
    -7, -71, -45, -66, -40, -10, -64, -39, -33,
    -- layer=2 filter=42 channel=19
    -31, 8, 57, -14, -5, 35, -29, -2, -32,
    -- layer=2 filter=42 channel=20
    25, 39, 30, -12, -9, -31, 5, -12, 1,
    -- layer=2 filter=42 channel=21
    9, -32, -25, -15, 4, -22, -11, 8, -28,
    -- layer=2 filter=42 channel=22
    22, -20, -29, 8, -47, -37, -8, -1, -28,
    -- layer=2 filter=42 channel=23
    59, 35, 73, 66, 83, 67, 67, 57, 15,
    -- layer=2 filter=42 channel=24
    16, -21, 1, 3, -8, 20, 59, -19, 5,
    -- layer=2 filter=42 channel=25
    37, 10, 30, 32, 0, -34, 34, -35, -15,
    -- layer=2 filter=42 channel=26
    11, -3, 14, 29, 44, -15, 10, 6, -57,
    -- layer=2 filter=42 channel=27
    39, 0, 39, 15, 43, 39, 43, -1, 0,
    -- layer=2 filter=42 channel=28
    48, 34, 87, 5, 43, 108, 30, 90, 98,
    -- layer=2 filter=42 channel=29
    4, -56, -11, -25, 0, 4, 13, -15, -21,
    -- layer=2 filter=42 channel=30
    18, -33, -59, 29, -54, -36, 51, 0, -18,
    -- layer=2 filter=42 channel=31
    20, 11, -24, -9, -11, 16, 0, -4, 33,
    -- layer=2 filter=43 channel=0
    25, 9, 18, -4, -28, -17, -4, -43, -26,
    -- layer=2 filter=43 channel=1
    2, -41, -94, -7, 6, -10, 9, -12, -59,
    -- layer=2 filter=43 channel=2
    14, -16, 13, 9, -8, -13, 2, 7, 3,
    -- layer=2 filter=43 channel=3
    -3, -1, 11, -1, -16, -11, 16, 6, -17,
    -- layer=2 filter=43 channel=4
    35, 39, -13, -24, -32, -124, -106, -82, -38,
    -- layer=2 filter=43 channel=5
    1, 9, 5, 5, -4, -9, -47, -19, -12,
    -- layer=2 filter=43 channel=6
    -24, -22, 7, -17, -4, 6, 17, -4, 51,
    -- layer=2 filter=43 channel=7
    -14, 13, 18, -6, -24, 5, -25, 4, -4,
    -- layer=2 filter=43 channel=8
    8, -14, 2, -26, -9, 20, 49, 29, 71,
    -- layer=2 filter=43 channel=9
    2, -9, -34, 12, 30, 18, 25, 12, 35,
    -- layer=2 filter=43 channel=10
    46, 3, -49, -2, -18, 5, 27, 37, 38,
    -- layer=2 filter=43 channel=11
    -5, 18, -5, -2, 10, -10, -5, -44, -52,
    -- layer=2 filter=43 channel=12
    21, 1, 8, -25, 22, 2, -39, -24, -48,
    -- layer=2 filter=43 channel=13
    -11, 0, -23, -10, -4, -23, 41, 52, 94,
    -- layer=2 filter=43 channel=14
    -9, -28, 14, 0, 13, 25, -4, -32, -23,
    -- layer=2 filter=43 channel=15
    17, 8, -5, 3, -16, -18, -5, -13, -3,
    -- layer=2 filter=43 channel=16
    2, -22, -26, -26, -8, -31, 18, 52, 94,
    -- layer=2 filter=43 channel=17
    -42, -14, -23, 25, 30, -12, 26, 35, -2,
    -- layer=2 filter=43 channel=18
    41, 3, 43, 6, -60, -27, 5, -36, -41,
    -- layer=2 filter=43 channel=19
    20, -3, -24, 70, 40, 35, 36, -15, 8,
    -- layer=2 filter=43 channel=20
    15, 2, 1, 11, -8, 11, 26, 23, 37,
    -- layer=2 filter=43 channel=21
    -3, -18, 29, 7, -9, 18, -27, -133, -147,
    -- layer=2 filter=43 channel=22
    -20, 44, 24, -36, -15, -5, -9, -81, -83,
    -- layer=2 filter=43 channel=23
    -42, -32, 23, 58, 4, 60, -10, -52, -17,
    -- layer=2 filter=43 channel=24
    -29, -45, -47, 39, -14, 3, 4, 4, -10,
    -- layer=2 filter=43 channel=25
    -17, -35, -55, -13, -3, -21, -6, 59, 109,
    -- layer=2 filter=43 channel=26
    -17, -21, 7, 41, -11, 27, 24, 19, 44,
    -- layer=2 filter=43 channel=27
    -29, -9, 18, 17, -2, -5, -10, -42, -41,
    -- layer=2 filter=43 channel=28
    -37, 8, 10, -11, 31, -10, 67, 54, -61,
    -- layer=2 filter=43 channel=29
    15, 21, 25, -25, -7, -20, -19, -39, -57,
    -- layer=2 filter=43 channel=30
    -11, 9, -5, -12, 25, 29, -42, -9, -2,
    -- layer=2 filter=43 channel=31
    -35, -5, -11, 14, 14, 27, -9, -6, -9,
    -- layer=2 filter=44 channel=0
    -28, -4, -1, 21, -16, 9, 15, -6, -9,
    -- layer=2 filter=44 channel=1
    41, -39, -37, -12, 78, -41, 22, 10, -10,
    -- layer=2 filter=44 channel=2
    -9, 0, -18, 5, -11, 8, -19, 8, 23,
    -- layer=2 filter=44 channel=3
    11, -32, 17, 32, 30, -1, 13, 24, 17,
    -- layer=2 filter=44 channel=4
    27, -30, -16, -43, -4, -29, -60, -14, -6,
    -- layer=2 filter=44 channel=5
    4, -7, -20, 5, -37, -41, 16, 0, 26,
    -- layer=2 filter=44 channel=6
    0, -10, -14, -8, 22, -15, -4, -27, 21,
    -- layer=2 filter=44 channel=7
    -9, -20, 12, -24, 1, 21, -28, -14, 8,
    -- layer=2 filter=44 channel=8
    21, 1, -10, 3, 20, -10, 5, -40, -1,
    -- layer=2 filter=44 channel=9
    19, -16, -19, 14, -17, -12, 18, 24, 30,
    -- layer=2 filter=44 channel=10
    68, 9, -32, -21, -1, -23, -50, -31, -13,
    -- layer=2 filter=44 channel=11
    -53, -42, -18, 12, -6, -22, 77, 101, 91,
    -- layer=2 filter=44 channel=12
    -44, 22, 38, -36, -1, 9, 2, -22, 33,
    -- layer=2 filter=44 channel=13
    31, -43, -29, 0, -13, -6, -7, -29, -2,
    -- layer=2 filter=44 channel=14
    0, -1, 12, 0, -17, 6, 3, -34, 35,
    -- layer=2 filter=44 channel=15
    -34, -25, -6, 5, 5, 3, 8, -49, 14,
    -- layer=2 filter=44 channel=16
    13, -16, -1, 21, 24, 8, 29, 18, 43,
    -- layer=2 filter=44 channel=17
    -15, -25, -39, -1, -17, -21, 39, 53, 29,
    -- layer=2 filter=44 channel=18
    -9, 0, -11, 53, 33, 11, 31, -30, 0,
    -- layer=2 filter=44 channel=19
    11, -51, -34, 36, -46, 0, 52, 100, 70,
    -- layer=2 filter=44 channel=20
    -22, -3, -34, 17, 0, -11, -22, -37, 44,
    -- layer=2 filter=44 channel=21
    -35, -62, -73, -16, -39, 2, 22, 48, 55,
    -- layer=2 filter=44 channel=22
    -30, -75, -64, -14, -20, -26, 31, 81, 15,
    -- layer=2 filter=44 channel=23
    -51, -35, -58, -83, -49, 8, -6, 63, 60,
    -- layer=2 filter=44 channel=24
    16, 22, 11, -29, -3, -8, -21, -5, 4,
    -- layer=2 filter=44 channel=25
    34, 33, 25, 13, 51, 46, 14, -6, 3,
    -- layer=2 filter=44 channel=26
    31, -15, 32, -1, -10, 20, -7, -5, 19,
    -- layer=2 filter=44 channel=27
    21, 38, 9, -20, -2, -4, -8, -2, 29,
    -- layer=2 filter=44 channel=28
    -31, -8, 3, 48, 16, -33, 8, 11, 2,
    -- layer=2 filter=44 channel=29
    -32, 23, -23, -20, 16, -27, 0, -18, 30,
    -- layer=2 filter=44 channel=30
    19, 29, -33, 0, 10, -27, 21, -3, 7,
    -- layer=2 filter=44 channel=31
    -15, -9, -37, 22, -1, -7, 69, 47, 27,
    -- layer=2 filter=45 channel=0
    55, 20, 10, 27, -18, 8, -10, -16, -33,
    -- layer=2 filter=45 channel=1
    -67, -54, -58, 3, -89, -41, -32, -69, -53,
    -- layer=2 filter=45 channel=2
    -4, -11, 16, 11, 10, 1, -14, -16, -9,
    -- layer=2 filter=45 channel=3
    15, -12, -15, 35, 18, -2, 32, 42, -27,
    -- layer=2 filter=45 channel=4
    -76, -64, -17, -59, -34, -74, -1, 9, -3,
    -- layer=2 filter=45 channel=5
    51, 36, 43, 14, 5, 25, -10, 15, 44,
    -- layer=2 filter=45 channel=6
    35, 36, 38, 57, 14, 21, -3, 1, -73,
    -- layer=2 filter=45 channel=7
    56, 34, 81, 24, 34, 38, 18, -3, 31,
    -- layer=2 filter=45 channel=8
    13, 0, 46, 24, 1, 24, -7, -59, -45,
    -- layer=2 filter=45 channel=9
    31, 3, -32, 20, 33, 5, 28, 23, 51,
    -- layer=2 filter=45 channel=10
    54, 26, -7, 11, 3, 28, -24, -65, -14,
    -- layer=2 filter=45 channel=11
    -36, -9, 6, -53, -32, -28, -38, 6, -41,
    -- layer=2 filter=45 channel=12
    58, 52, 42, 40, 35, 23, 51, 15, 49,
    -- layer=2 filter=45 channel=13
    31, 26, 24, 19, 43, 35, -16, -11, 8,
    -- layer=2 filter=45 channel=14
    27, 24, 30, 15, 18, 16, 41, 13, 22,
    -- layer=2 filter=45 channel=15
    32, 20, 8, 19, -4, 24, 43, -40, -22,
    -- layer=2 filter=45 channel=16
    9, -64, -44, 10, -68, -34, -31, -78, -92,
    -- layer=2 filter=45 channel=17
    -31, 13, 43, -7, 50, 24, -31, 8, 55,
    -- layer=2 filter=45 channel=18
    9, -27, -7, 1, -34, -21, -39, -46, -37,
    -- layer=2 filter=45 channel=19
    32, -30, 19, 58, -6, 1, 14, -50, -4,
    -- layer=2 filter=45 channel=20
    69, 66, 47, 23, -12, 64, -12, -10, -32,
    -- layer=2 filter=45 channel=21
    -15, -19, 11, 14, -8, 3, 50, 43, 28,
    -- layer=2 filter=45 channel=22
    -50, -24, -40, -1, -19, -41, 42, 30, -9,
    -- layer=2 filter=45 channel=23
    -22, -5, 37, 66, 37, 36, 30, 22, 11,
    -- layer=2 filter=45 channel=24
    -12, 6, -20, -18, -24, 1, -30, -36, 15,
    -- layer=2 filter=45 channel=25
    -67, -55, -53, -11, 19, 34, -31, -15, -1,
    -- layer=2 filter=45 channel=26
    -6, -45, 17, 0, -3, 1, 17, -25, -5,
    -- layer=2 filter=45 channel=27
    -40, -6, -6, -13, 24, 5, 31, 14, 31,
    -- layer=2 filter=45 channel=28
    21, 16, -18, -6, 9, -4, 22, 28, 51,
    -- layer=2 filter=45 channel=29
    44, 20, 35, -11, -13, 27, 12, -4, 24,
    -- layer=2 filter=45 channel=30
    -35, -30, -9, -40, -35, -7, 9, 49, 15,
    -- layer=2 filter=45 channel=31
    -1, 25, 35, 25, 15, -2, 0, 47, 36,
    -- layer=2 filter=46 channel=0
    1, 6, -23, 0, 0, -23, -8, -16, -11,
    -- layer=2 filter=46 channel=1
    0, -14, 19, 11, -9, -9, 18, -17, 0,
    -- layer=2 filter=46 channel=2
    17, 16, -17, 16, -14, -13, -2, -3, 16,
    -- layer=2 filter=46 channel=3
    0, -14, 8, 21, -11, 10, -15, 14, -1,
    -- layer=2 filter=46 channel=4
    20, 15, 3, 13, -8, -11, -11, 13, 1,
    -- layer=2 filter=46 channel=5
    -20, -19, 3, -20, -32, -16, -29, -20, 10,
    -- layer=2 filter=46 channel=6
    8, -26, -4, 9, -14, 2, -7, -2, 1,
    -- layer=2 filter=46 channel=7
    0, 0, 14, 5, 0, 10, -18, 17, -13,
    -- layer=2 filter=46 channel=8
    -25, -25, -2, -15, -4, -18, 1, 10, -16,
    -- layer=2 filter=46 channel=9
    -18, -7, -9, -21, -13, -10, -1, -2, -1,
    -- layer=2 filter=46 channel=10
    -22, 11, -4, 4, -13, -7, -31, -3, 5,
    -- layer=2 filter=46 channel=11
    -11, 3, -33, -24, -6, 2, -2, 12, -17,
    -- layer=2 filter=46 channel=12
    -2, -24, 14, -18, -17, -1, -2, 0, -3,
    -- layer=2 filter=46 channel=13
    -25, -20, 6, -11, -14, -18, -10, 2, -8,
    -- layer=2 filter=46 channel=14
    -7, -15, -9, -13, -18, -1, 2, -6, -3,
    -- layer=2 filter=46 channel=15
    4, -16, -15, -14, -20, -7, 5, 14, 8,
    -- layer=2 filter=46 channel=16
    11, -23, -14, -6, 18, -2, 6, 2, 2,
    -- layer=2 filter=46 channel=17
    -19, -24, 7, 7, 0, 0, -19, -21, -8,
    -- layer=2 filter=46 channel=18
    0, -7, 17, 14, 7, -13, -17, 7, 15,
    -- layer=2 filter=46 channel=19
    -15, -14, 5, -3, -2, 0, -11, -11, -12,
    -- layer=2 filter=46 channel=20
    -25, -18, 4, 11, -4, -14, -19, 4, -4,
    -- layer=2 filter=46 channel=21
    -17, 6, -10, -11, -6, -5, 6, -25, -4,
    -- layer=2 filter=46 channel=22
    11, -8, 6, 9, 12, 14, -19, -12, -14,
    -- layer=2 filter=46 channel=23
    -17, -20, 3, -18, 0, -11, 4, 8, 5,
    -- layer=2 filter=46 channel=24
    -3, 12, 0, -23, 9, -14, -19, -21, -13,
    -- layer=2 filter=46 channel=25
    -1, 13, -7, -19, -5, 8, 2, 11, 0,
    -- layer=2 filter=46 channel=26
    -6, 2, 6, -22, -9, -22, -11, -17, -16,
    -- layer=2 filter=46 channel=27
    -11, -8, -3, -13, 7, 13, 5, -24, -4,
    -- layer=2 filter=46 channel=28
    -4, -14, -5, 2, -9, 11, -2, -6, -14,
    -- layer=2 filter=46 channel=29
    1, -8, -21, -21, -19, 5, -10, 3, 3,
    -- layer=2 filter=46 channel=30
    -13, -17, -2, -3, -9, -18, -6, -18, 8,
    -- layer=2 filter=46 channel=31
    0, -30, -12, -10, -17, -13, -26, 9, 8,
    -- layer=2 filter=47 channel=0
    -11, -1, 6, 6, 4, 8, 4, 14, 1,
    -- layer=2 filter=47 channel=1
    -2, -12, -44, -52, 2, -24, -22, -8, 5,
    -- layer=2 filter=47 channel=2
    2, 7, 10, 1, -19, -17, -2, -20, 17,
    -- layer=2 filter=47 channel=3
    27, 7, 29, 13, -43, 8, 34, -4, -6,
    -- layer=2 filter=47 channel=4
    -14, -18, 10, -2, -23, -28, -10, -18, -48,
    -- layer=2 filter=47 channel=5
    1, 32, 26, 24, 39, 29, 37, 17, 3,
    -- layer=2 filter=47 channel=6
    -14, -38, -23, -2, 5, 1, 0, -14, 46,
    -- layer=2 filter=47 channel=7
    17, 20, 23, 28, 18, -2, 7, 37, 5,
    -- layer=2 filter=47 channel=8
    14, -17, 13, -10, -12, -16, -11, -2, -14,
    -- layer=2 filter=47 channel=9
    -8, 16, 7, -17, -12, -26, 7, -5, -28,
    -- layer=2 filter=47 channel=10
    -16, -10, -31, -3, -12, -18, -1, -17, -5,
    -- layer=2 filter=47 channel=11
    5, 0, 8, -18, 11, 11, 10, -33, 30,
    -- layer=2 filter=47 channel=12
    16, 36, 13, 34, 28, 27, 0, 32, -4,
    -- layer=2 filter=47 channel=13
    -9, -31, -24, -4, -19, -27, -41, -26, -42,
    -- layer=2 filter=47 channel=14
    -8, -7, 17, -14, 40, -37, 15, 29, -3,
    -- layer=2 filter=47 channel=15
    -25, 12, -1, 1, 10, -13, 21, 29, 9,
    -- layer=2 filter=47 channel=16
    18, 3, -11, -6, -27, -15, 0, 12, 13,
    -- layer=2 filter=47 channel=17
    -55, -72, -28, -40, -63, -36, -50, -17, -10,
    -- layer=2 filter=47 channel=18
    2, 16, -21, -25, 8, 1, 34, 40, 12,
    -- layer=2 filter=47 channel=19
    -20, -7, -38, -29, 10, -33, -1, -9, -3,
    -- layer=2 filter=47 channel=20
    -1, -22, 30, 16, 6, 10, -7, -14, 16,
    -- layer=2 filter=47 channel=21
    -39, -14, -26, -34, -16, -31, -4, -26, -52,
    -- layer=2 filter=47 channel=22
    -1, -29, -22, -3, 12, 13, -6, 2, -27,
    -- layer=2 filter=47 channel=23
    13, -24, -17, 13, -15, -25, -8, 0, -17,
    -- layer=2 filter=47 channel=24
    -35, -19, -7, -32, 0, -24, -24, -15, 9,
    -- layer=2 filter=47 channel=25
    3, -18, 14, 3, -30, 12, -4, -10, -16,
    -- layer=2 filter=47 channel=26
    -31, -23, -28, -14, 3, -23, -9, -22, -17,
    -- layer=2 filter=47 channel=27
    5, -22, -16, 4, 17, -27, -41, 14, -19,
    -- layer=2 filter=47 channel=28
    13, -39, -19, -12, -64, 16, -18, 3, 67,
    -- layer=2 filter=47 channel=29
    13, 26, -1, 17, 29, 23, 29, 37, -26,
    -- layer=2 filter=47 channel=30
    -2, -19, -2, 2, -6, -10, -23, 4, 24,
    -- layer=2 filter=47 channel=31
    -77, -56, -56, -66, -62, -17, -61, -25, -23,
    -- layer=2 filter=48 channel=0
    37, 68, 36, 23, 6, -5, -40, -57, -28,
    -- layer=2 filter=48 channel=1
    -5, -19, 21, 64, 17, 89, 14, -22, 48,
    -- layer=2 filter=48 channel=2
    -13, 2, 1, 14, -14, 2, 27, 9, 11,
    -- layer=2 filter=48 channel=3
    -56, 24, 132, -17, -18, 48, -5, 64, 106,
    -- layer=2 filter=48 channel=4
    27, 6, 51, 28, 73, 97, -16, -18, 45,
    -- layer=2 filter=48 channel=5
    -17, -20, -27, -10, -17, -26, -59, -45, -28,
    -- layer=2 filter=48 channel=6
    -21, 16, 17, 18, 0, 33, 18, 22, 24,
    -- layer=2 filter=48 channel=7
    -9, -12, -9, 17, 25, 3, -37, -36, -50,
    -- layer=2 filter=48 channel=8
    19, -63, -5, 47, 17, 14, 25, 25, 9,
    -- layer=2 filter=48 channel=9
    10, -10, 20, 11, -11, 8, 11, -32, -21,
    -- layer=2 filter=48 channel=10
    17, -35, 5, -8, 36, 41, 15, 34, 34,
    -- layer=2 filter=48 channel=11
    7, 29, 8, 35, 20, 48, 18, -37, 23,
    -- layer=2 filter=48 channel=12
    -17, -3, 1, 18, 7, -21, -16, -35, -57,
    -- layer=2 filter=48 channel=13
    -15, -51, -44, 45, 42, 52, 36, -33, 22,
    -- layer=2 filter=48 channel=14
    -21, 4, 14, -3, 25, -5, 10, -1, -50,
    -- layer=2 filter=48 channel=15
    53, 22, 28, -18, 2, 27, -63, -61, -53,
    -- layer=2 filter=48 channel=16
    -22, -64, 3, 40, 31, 20, 39, -10, 16,
    -- layer=2 filter=48 channel=17
    21, -38, -12, 13, 0, -3, 4, -22, 10,
    -- layer=2 filter=48 channel=18
    30, 31, 21, -2, -13, -13, -40, 20, -2,
    -- layer=2 filter=48 channel=19
    54, 55, 53, -15, 1, 17, -12, -155, -132,
    -- layer=2 filter=48 channel=20
    25, -35, -25, 34, 6, 40, -15, -34, 26,
    -- layer=2 filter=48 channel=21
    16, 33, 13, -13, -28, -8, 32, -56, -53,
    -- layer=2 filter=48 channel=22
    -16, -26, -10, 36, -5, -19, 30, -57, 0,
    -- layer=2 filter=48 channel=23
    3, -7, 43, -59, -27, -62, -55, 37, -4,
    -- layer=2 filter=48 channel=24
    31, -14, -11, 14, 31, 48, -41, 6, -5,
    -- layer=2 filter=48 channel=25
    -9, -33, -36, 47, 28, 64, 14, 20, 85,
    -- layer=2 filter=48 channel=26
    61, 29, 50, 33, -7, 45, -12, -80, -69,
    -- layer=2 filter=48 channel=27
    9, -3, -22, -50, -3, -50, 9, 60, 10,
    -- layer=2 filter=48 channel=28
    44, 32, 43, 36, -41, 19, 47, 66, 75,
    -- layer=2 filter=48 channel=29
    1, -20, -40, 10, -2, -14, -16, -49, -56,
    -- layer=2 filter=48 channel=30
    -24, -22, -22, 40, 31, 64, 31, -4, 63,
    -- layer=2 filter=48 channel=31
    -1, -26, -42, 10, 20, 14, 18, -17, -7,
    -- layer=2 filter=49 channel=0
    7, 17, 0, 33, 20, -11, 31, 0, -73,
    -- layer=2 filter=49 channel=1
    -28, 5, -90, 22, 5, -89, -21, -37, -80,
    -- layer=2 filter=49 channel=2
    -14, 14, 23, 23, 2, -10, -20, -11, 26,
    -- layer=2 filter=49 channel=3
    5, -8, 22, 55, 5, -14, 10, 14, -15,
    -- layer=2 filter=49 channel=4
    -19, 56, 47, -77, -103, -73, -9, -40, -96,
    -- layer=2 filter=49 channel=5
    0, 3, 28, -23, -25, 27, 11, -27, -55,
    -- layer=2 filter=49 channel=6
    -9, -12, 3, 16, 17, -15, -6, 13, 0,
    -- layer=2 filter=49 channel=7
    -21, -16, 29, -11, -2, 0, 2, -31, -76,
    -- layer=2 filter=49 channel=8
    -18, 37, 20, -16, -2, 40, 8, 12, -4,
    -- layer=2 filter=49 channel=9
    18, -47, -6, 5, -20, -29, 30, 5, -35,
    -- layer=2 filter=49 channel=10
    -1, 67, -3, -26, 11, 41, -13, -50, 35,
    -- layer=2 filter=49 channel=11
    11, -12, -10, 37, 8, -101, 26, 71, 27,
    -- layer=2 filter=49 channel=12
    -14, 24, 29, 0, -25, 39, 30, -5, 0,
    -- layer=2 filter=49 channel=13
    -12, -17, -7, 45, -5, 10, 47, -17, -92,
    -- layer=2 filter=49 channel=14
    -36, -56, 15, 2, -26, -59, 28, 6, -61,
    -- layer=2 filter=49 channel=15
    -12, 13, -12, -23, -16, 29, 40, -43, -10,
    -- layer=2 filter=49 channel=16
    -36, -1, -22, -55, -62, -19, 11, 48, 16,
    -- layer=2 filter=49 channel=17
    6, -7, -13, 1, -30, -34, 58, -4, 31,
    -- layer=2 filter=49 channel=18
    -1, 7, -14, -8, -23, 0, 90, -22, -69,
    -- layer=2 filter=49 channel=19
    47, -40, 33, 121, 10, -99, 23, 25, -60,
    -- layer=2 filter=49 channel=20
    7, 37, 1, -18, -10, 27, 44, 8, 7,
    -- layer=2 filter=49 channel=21
    16, -42, 11, 29, -1, -117, 62, 22, -25,
    -- layer=2 filter=49 channel=22
    22, -39, -12, 52, -31, -121, 59, 31, 1,
    -- layer=2 filter=49 channel=23
    1, 10, 8, 2, 52, -4, 19, -64, 39,
    -- layer=2 filter=49 channel=24
    40, 53, 3, -11, 8, 55, -24, -40, 36,
    -- layer=2 filter=49 channel=25
    23, 9, -4, 13, 6, 28, 0, -10, 53,
    -- layer=2 filter=49 channel=26
    29, 7, 30, 39, 12, -38, 19, -92, -45,
    -- layer=2 filter=49 channel=27
    40, 82, 29, -31, 60, 76, -62, -111, 19,
    -- layer=2 filter=49 channel=28
    14, 34, -23, 29, 78, 12, -95, 46, 117,
    -- layer=2 filter=49 channel=29
    6, 40, -15, -6, -32, -15, 54, -57, -69,
    -- layer=2 filter=49 channel=30
    3, 32, 27, 15, 1, 58, -4, -74, -33,
    -- layer=2 filter=49 channel=31
    -12, -13, 6, -4, 2, -6, 27, -6, -6,
    -- layer=2 filter=50 channel=0
    -1, -63, 11, -23, 15, -10, 10, 0, -6,
    -- layer=2 filter=50 channel=1
    26, 50, -5, 48, -35, -8, 37, 18, 76,
    -- layer=2 filter=50 channel=2
    -26, 7, -4, -8, -15, -24, 20, 20, 0,
    -- layer=2 filter=50 channel=3
    -6, -25, -62, -20, 2, -49, 30, 43, 24,
    -- layer=2 filter=50 channel=4
    -6, -17, 48, -12, 20, -3, 41, 54, 51,
    -- layer=2 filter=50 channel=5
    -51, -36, -12, -34, 6, -18, 21, 17, 32,
    -- layer=2 filter=50 channel=6
    -16, -12, 26, -54, -23, -12, 66, 12, 14,
    -- layer=2 filter=50 channel=7
    -60, -44, -9, -40, 0, 25, 2, 20, 55,
    -- layer=2 filter=50 channel=8
    23, 9, 21, 33, -13, 27, 32, -8, 30,
    -- layer=2 filter=50 channel=9
    23, 12, 29, 11, -30, 13, 16, 7, 0,
    -- layer=2 filter=50 channel=10
    96, -43, -6, 48, -27, 18, 42, 16, 39,
    -- layer=2 filter=50 channel=11
    -34, 17, 12, -32, 35, 8, -73, -9, 25,
    -- layer=2 filter=50 channel=12
    -55, -36, -3, -48, 26, 7, -44, 18, 25,
    -- layer=2 filter=50 channel=13
    -18, -30, 14, 23, -40, -5, 23, -31, 10,
    -- layer=2 filter=50 channel=14
    -46, -14, -30, -15, 9, -8, 2, -3, -14,
    -- layer=2 filter=50 channel=15
    -7, -35, -8, 23, 1, 9, 48, -17, -15,
    -- layer=2 filter=50 channel=16
    84, 2, 35, 48, -70, -17, -7, -6, -7,
    -- layer=2 filter=50 channel=17
    27, 22, 24, -16, 10, -3, -12, -5, 27,
    -- layer=2 filter=50 channel=18
    41, 17, 0, 28, 7, -26, -14, -31, -26,
    -- layer=2 filter=50 channel=19
    43, 52, 9, 11, -22, 2, 8, 10, 27,
    -- layer=2 filter=50 channel=20
    -14, -15, 27, 11, 0, -11, 6, -6, 49,
    -- layer=2 filter=50 channel=21
    -43, 0, -55, -38, 19, 26, -6, 44, -8,
    -- layer=2 filter=50 channel=22
    -10, 32, -14, -37, 18, 0, -66, -16, -36,
    -- layer=2 filter=50 channel=23
    34, 34, 47, 53, -14, -26, 38, -27, -10,
    -- layer=2 filter=50 channel=24
    73, -9, 11, 29, -26, -3, 58, -1, 61,
    -- layer=2 filter=50 channel=25
    106, 73, 64, 29, -24, 36, 24, -38, 0,
    -- layer=2 filter=50 channel=26
    67, 44, 22, 33, 3, 10, 36, 23, 44,
    -- layer=2 filter=50 channel=27
    22, 36, 67, 60, -11, 21, 47, 39, 21,
    -- layer=2 filter=50 channel=28
    95, -49, 17, -60, -21, -16, 37, -35, 2,
    -- layer=2 filter=50 channel=29
    -9, -24, 9, 4, 32, 17, 1, 8, 16,
    -- layer=2 filter=50 channel=30
    31, 1, 15, 46, -17, -21, 3, -1, -26,
    -- layer=2 filter=50 channel=31
    13, -9, -10, -10, 0, 23, -16, 26, -2,
    -- layer=2 filter=51 channel=0
    -26, -44, -13, -42, 17, 31, 6, -26, 32,
    -- layer=2 filter=51 channel=1
    -32, -81, -42, -24, -51, -35, -17, 0, 10,
    -- layer=2 filter=51 channel=2
    -4, 16, 5, 3, 4, 4, -11, -17, -14,
    -- layer=2 filter=51 channel=3
    60, 0, 11, -7, 24, -14, 11, -45, 47,
    -- layer=2 filter=51 channel=4
    -16, 26, -17, -22, -42, -15, -51, -48, 14,
    -- layer=2 filter=51 channel=5
    -71, -2, 29, -59, -2, -14, -54, -4, 23,
    -- layer=2 filter=51 channel=6
    -45, -12, 25, -51, 1, 38, -14, -47, -1,
    -- layer=2 filter=51 channel=7
    -62, -20, -5, -53, -37, -9, -38, -7, 65,
    -- layer=2 filter=51 channel=8
    -19, 14, 26, -34, -6, 33, 29, -29, 3,
    -- layer=2 filter=51 channel=9
    -45, -14, -7, -32, 7, -9, -39, 5, 33,
    -- layer=2 filter=51 channel=10
    6, 25, 26, 32, -30, 18, 18, 0, 17,
    -- layer=2 filter=51 channel=11
    65, -3, 10, 18, -58, -18, -71, -90, -36,
    -- layer=2 filter=51 channel=12
    -22, 12, 4, -34, 10, -22, -19, 11, 11,
    -- layer=2 filter=51 channel=13
    17, 24, -1, -9, -10, 52, -31, -6, 56,
    -- layer=2 filter=51 channel=14
    5, 0, -17, 11, -4, -30, -15, 3, 6,
    -- layer=2 filter=51 channel=15
    -8, 6, 18, 25, -23, -1, 64, -9, -21,
    -- layer=2 filter=51 channel=16
    23, 7, -38, 45, -4, -12, -26, -7, -51,
    -- layer=2 filter=51 channel=17
    43, 10, 39, -14, 36, -8, -84, 1, 33,
    -- layer=2 filter=51 channel=18
    36, 0, 12, 60, -20, -59, 19, -50, -49,
    -- layer=2 filter=51 channel=19
    -57, 3, 26, -3, 21, 48, 12, 12, 67,
    -- layer=2 filter=51 channel=20
    -35, 14, 51, -40, -2, 18, -4, -30, 4,
    -- layer=2 filter=51 channel=21
    3, -1, 16, 8, -31, 0, -11, 4, 21,
    -- layer=2 filter=51 channel=22
    19, -12, -16, -16, -2, -4, 3, -28, -11,
    -- layer=2 filter=51 channel=23
    33, 49, 57, 89, 59, 23, 46, 13, -25,
    -- layer=2 filter=51 channel=24
    -2, 41, 41, 31, -28, -22, 29, -14, -21,
    -- layer=2 filter=51 channel=25
    67, 5, -30, -15, -30, -36, -82, -66, -33,
    -- layer=2 filter=51 channel=26
    0, -6, -5, 10, 0, 10, 31, -22, 29,
    -- layer=2 filter=51 channel=27
    -19, 73, 93, 58, 44, 30, 44, 2, -15,
    -- layer=2 filter=51 channel=28
    -1, -96, -41, -63, -43, -25, -120, -105, -54,
    -- layer=2 filter=51 channel=29
    -40, -20, 6, 12, -3, 13, 0, -11, -13,
    -- layer=2 filter=51 channel=30
    86, 61, 25, 62, -40, 1, -33, -98, 6,
    -- layer=2 filter=51 channel=31
    32, 5, 17, -7, 10, 3, -53, 19, 32,
    -- layer=2 filter=52 channel=0
    19, 25, 31, 6, 28, 16, -14, -12, -52,
    -- layer=2 filter=52 channel=1
    -13, -98, -50, 1, -15, -49, -45, -85, -57,
    -- layer=2 filter=52 channel=2
    -27, 17, 12, 24, -9, -2, 13, -7, 14,
    -- layer=2 filter=52 channel=3
    12, -16, -15, 20, -4, -14, 10, -43, -4,
    -- layer=2 filter=52 channel=4
    -40, -17, -36, -27, -33, 8, 11, 19, 54,
    -- layer=2 filter=52 channel=5
    11, 32, 20, -12, 7, -18, -42, 14, -65,
    -- layer=2 filter=52 channel=6
    20, -67, 49, 15, 18, 42, 19, 25, 35,
    -- layer=2 filter=52 channel=7
    14, 27, 38, 16, 40, -2, 3, 0, -17,
    -- layer=2 filter=52 channel=8
    29, -3, 50, 6, 34, 31, 0, 30, 53,
    -- layer=2 filter=52 channel=9
    -10, 31, 20, -22, -52, -43, 7, -24, -75,
    -- layer=2 filter=52 channel=10
    64, 9, 38, 43, 81, -30, -32, -57, 8,
    -- layer=2 filter=52 channel=11
    -27, -54, -56, -27, -45, -1, 26, 33, 98,
    -- layer=2 filter=52 channel=12
    27, 33, 20, -24, 12, 40, 1, 3, 38,
    -- layer=2 filter=52 channel=13
    44, 23, 28, 44, -13, -13, 4, -15, 14,
    -- layer=2 filter=52 channel=14
    -6, 25, 22, -5, -8, 2, -6, 9, -50,
    -- layer=2 filter=52 channel=15
    13, 10, 12, -21, 55, -13, -18, -4, -10,
    -- layer=2 filter=52 channel=16
    61, 62, 55, -14, -44, -10, -30, -28, -4,
    -- layer=2 filter=52 channel=17
    11, 27, 0, 6, -18, -42, 58, 36, -16,
    -- layer=2 filter=52 channel=18
    -10, 12, 29, -26, 22, -34, 6, -22, -59,
    -- layer=2 filter=52 channel=19
    6, 0, 19, 62, 22, 58, 26, -1, 63,
    -- layer=2 filter=52 channel=20
    32, -53, 17, 37, 47, 37, 52, 12, 31,
    -- layer=2 filter=52 channel=21
    -13, 12, -12, -13, -14, -4, -23, 23, 52,
    -- layer=2 filter=52 channel=22
    -2, -25, -58, -22, -54, -13, 20, 55, 47,
    -- layer=2 filter=52 channel=23
    -6, -48, -13, -50, -70, -59, -102, 6, 13,
    -- layer=2 filter=52 channel=24
    51, 42, 21, 0, 42, 1, -71, -16, -30,
    -- layer=2 filter=52 channel=25
    8, 36, -10, 18, 6, -13, 6, 11, 20,
    -- layer=2 filter=52 channel=26
    6, 29, -24, 66, -46, 3, -2, -1, -32,
    -- layer=2 filter=52 channel=27
    36, 14, -47, 36, 76, -5, -9, 23, 39,
    -- layer=2 filter=52 channel=28
    -77, -45, -25, -18, -22, -11, 5, 14, 21,
    -- layer=2 filter=52 channel=29
    24, 22, 9, 7, 4, -12, -12, 15, -42,
    -- layer=2 filter=52 channel=30
    -5, -5, -15, -30, -31, -4, -42, -40, -18,
    -- layer=2 filter=52 channel=31
    6, 16, 5, 18, -24, -18, 20, 7, -22,
    -- layer=2 filter=53 channel=0
    12, 14, 15, 15, 47, 32, -26, -30, -29,
    -- layer=2 filter=53 channel=1
    -33, -60, -21, -54, -59, -49, -39, -29, -57,
    -- layer=2 filter=53 channel=2
    18, 13, -14, -8, -8, -5, -13, 2, 6,
    -- layer=2 filter=53 channel=3
    -22, -26, 41, -52, -26, -1, 37, 8, -56,
    -- layer=2 filter=53 channel=4
    -48, -20, 4, -29, 21, 48, 6, 60, 101,
    -- layer=2 filter=53 channel=5
    24, 16, 10, 23, 35, -18, -36, -32, -45,
    -- layer=2 filter=53 channel=6
    -50, 27, 68, 33, -14, -5, 35, -21, 10,
    -- layer=2 filter=53 channel=7
    43, 25, -9, 9, 18, -7, -8, 7, -53,
    -- layer=2 filter=53 channel=8
    23, 4, 70, 13, -1, 14, 70, 13, 36,
    -- layer=2 filter=53 channel=9
    0, -13, -46, -4, -27, -19, 21, -9, -38,
    -- layer=2 filter=53 channel=10
    1, -7, 31, 12, -14, 0, 14, -12, -18,
    -- layer=2 filter=53 channel=11
    -23, -56, -41, -33, -28, -16, 4, 39, 44,
    -- layer=2 filter=53 channel=12
    42, 14, -2, 13, 17, 0, 3, 17, -49,
    -- layer=2 filter=53 channel=13
    20, -11, 8, -37, -46, -50, -8, -32, 14,
    -- layer=2 filter=53 channel=14
    22, 11, -36, -1, 13, 18, -34, 8, -8,
    -- layer=2 filter=53 channel=15
    3, -2, 1, -10, 18, 5, -70, 7, -13,
    -- layer=2 filter=53 channel=16
    13, -6, 44, -13, -53, -35, 6, -45, -24,
    -- layer=2 filter=53 channel=17
    17, -33, -63, 11, -41, -33, 79, -6, 9,
    -- layer=2 filter=53 channel=18
    -15, -6, -61, -28, 7, -22, -47, -9, 19,
    -- layer=2 filter=53 channel=19
    18, -3, 42, 34, 73, 78, -36, -30, -12,
    -- layer=2 filter=53 channel=20
    17, 6, 42, 12, -37, -18, 57, -10, 10,
    -- layer=2 filter=53 channel=21
    -33, -2, 8, 17, 22, 34, -47, 23, 36,
    -- layer=2 filter=53 channel=22
    -7, -8, 39, 21, -14, -6, -10, -5, 10,
    -- layer=2 filter=53 channel=23
    -5, 62, 58, -35, -9, 29, 12, -56, -38,
    -- layer=2 filter=53 channel=24
    -31, -48, -49, 26, 23, 41, 16, -4, 4,
    -- layer=2 filter=53 channel=25
    -54, -100, -49, 12, -13, 9, 28, 25, 60,
    -- layer=2 filter=53 channel=26
    -46, -55, 0, 10, 53, 20, 42, -2, -28,
    -- layer=2 filter=53 channel=27
    -27, -15, 1, -11, -28, -32, 36, -2, 48,
    -- layer=2 filter=53 channel=28
    -24, 49, 40, -4, 9, 15, 32, 13, -12,
    -- layer=2 filter=53 channel=29
    26, -7, -61, -19, 14, -20, -11, -7, -2,
    -- layer=2 filter=53 channel=30
    -13, -45, -81, 7, 20, -47, -1, 43, 91,
    -- layer=2 filter=53 channel=31
    37, -11, -8, -6, -3, -38, 37, 22, 13,
    -- layer=2 filter=54 channel=0
    0, 6, 15, -6, -18, -29, 10, -16, -70,
    -- layer=2 filter=54 channel=1
    -12, -52, -66, 44, -38, -27, 34, -23, -20,
    -- layer=2 filter=54 channel=2
    6, -10, 20, -14, -16, 11, -7, -13, -7,
    -- layer=2 filter=54 channel=3
    -14, -53, -48, 15, -98, -77, 16, -44, -54,
    -- layer=2 filter=54 channel=4
    -23, 11, 40, 36, 11, 6, -7, -64, -102,
    -- layer=2 filter=54 channel=5
    11, -27, -29, 13, -52, -35, 42, -15, -34,
    -- layer=2 filter=54 channel=6
    15, 13, 6, 24, 21, -19, -8, 38, 12,
    -- layer=2 filter=54 channel=7
    -1, 15, 12, 2, -27, -45, 9, 2, -60,
    -- layer=2 filter=54 channel=8
    -15, 42, 53, 0, 19, -5, -38, 13, 11,
    -- layer=2 filter=54 channel=9
    22, -9, -30, 23, -2, 24, 32, 23, -4,
    -- layer=2 filter=54 channel=10
    17, 3, 22, 19, 7, 35, -6, 37, 48,
    -- layer=2 filter=54 channel=11
    -17, 19, 51, -12, 35, 36, 16, -18, 13,
    -- layer=2 filter=54 channel=12
    4, 7, 4, 26, 15, -24, 38, -15, -84,
    -- layer=2 filter=54 channel=13
    -27, 42, 31, -18, 1, -15, -39, -5, 45,
    -- layer=2 filter=54 channel=14
    -11, -10, -1, 9, -26, -47, 55, -29, -33,
    -- layer=2 filter=54 channel=15
    7, 7, 11, 0, 2, -10, 12, -50, -89,
    -- layer=2 filter=54 channel=16
    -57, -13, 29, 5, 10, -12, 0, 14, 25,
    -- layer=2 filter=54 channel=17
    14, 8, -3, -8, 14, 58, 11, 42, 58,
    -- layer=2 filter=54 channel=18
    7, 38, 33, 10, -9, -8, 39, -39, -42,
    -- layer=2 filter=54 channel=19
    28, 21, 9, -40, -8, 5, 33, -11, 1,
    -- layer=2 filter=54 channel=20
    -26, 25, 19, -5, 39, -10, -37, -7, 30,
    -- layer=2 filter=54 channel=21
    46, 24, 27, 25, -31, -57, 38, -94, -100,
    -- layer=2 filter=54 channel=22
    14, 41, 21, 6, -21, -40, 21, -41, -37,
    -- layer=2 filter=54 channel=23
    89, 30, -25, 40, -23, -5, -4, -19, 42,
    -- layer=2 filter=54 channel=24
    43, 8, -23, 39, 4, 36, 56, 7, 31,
    -- layer=2 filter=54 channel=25
    14, 26, 28, 22, 26, 21, 10, 64, 42,
    -- layer=2 filter=54 channel=26
    -14, 35, 1, 8, 31, 5, 5, 4, -15,
    -- layer=2 filter=54 channel=27
    88, -7, -14, 13, 8, -30, 29, 45, 40,
    -- layer=2 filter=54 channel=28
    -22, -60, -68, -11, -7, -64, 24, 43, -2,
    -- layer=2 filter=54 channel=29
    -22, 10, 3, -19, -36, -36, -11, -57, -54,
    -- layer=2 filter=54 channel=30
    -26, -33, -46, -24, -34, -42, 12, -31, -47,
    -- layer=2 filter=54 channel=31
    9, 45, 50, 9, 50, 47, 10, 33, 60,
    -- layer=2 filter=55 channel=0
    22, 19, -13, -1, 0, 9, -3, 13, 53,
    -- layer=2 filter=55 channel=1
    -21, -5, 19, -19, -75, -93, 49, 27, -70,
    -- layer=2 filter=55 channel=2
    19, 20, 2, 11, 12, -7, 19, 3, 14,
    -- layer=2 filter=55 channel=3
    30, 17, -69, 12, -23, -66, 31, 16, -32,
    -- layer=2 filter=55 channel=4
    -105, -22, -46, -21, 81, 80, -26, 99, 69,
    -- layer=2 filter=55 channel=5
    9, -7, 1, 19, 15, -21, -40, -31, -3,
    -- layer=2 filter=55 channel=6
    -4, -5, 27, 27, 12, 14, 29, 42, 2,
    -- layer=2 filter=55 channel=7
    39, 6, -18, 0, -21, 1, -24, -17, 10,
    -- layer=2 filter=55 channel=8
    -31, -3, 35, 11, 13, 59, -3, -10, 14,
    -- layer=2 filter=55 channel=9
    21, 0, -4, -14, 17, -13, -33, 10, 6,
    -- layer=2 filter=55 channel=10
    -38, -1, 24, -32, 22, 21, 2, -13, -30,
    -- layer=2 filter=55 channel=11
    -28, -26, -34, 7, -29, -41, -33, -12, -40,
    -- layer=2 filter=55 channel=12
    48, 30, -15, 29, -40, -61, -10, -49, -7,
    -- layer=2 filter=55 channel=13
    -71, -9, -10, -22, 30, 42, -13, 52, 36,
    -- layer=2 filter=55 channel=14
    34, 3, -10, 8, -17, -31, -13, -39, 9,
    -- layer=2 filter=55 channel=15
    31, 13, 41, -11, 12, 27, -12, 13, 19,
    -- layer=2 filter=55 channel=16
    78, 7, 27, 60, 4, 33, 8, -48, 26,
    -- layer=2 filter=55 channel=17
    -35, -16, -6, -33, -5, -3, -33, -37, -8,
    -- layer=2 filter=55 channel=18
    3, -40, -51, 13, -29, -31, -28, 33, 48,
    -- layer=2 filter=55 channel=19
    -53, 4, 19, -50, 51, 44, 65, 67, 58,
    -- layer=2 filter=55 channel=20
    -5, 7, 23, -4, -7, 18, 14, -4, -11,
    -- layer=2 filter=55 channel=21
    -26, -22, 10, -23, 15, 27, 19, 27, 55,
    -- layer=2 filter=55 channel=22
    7, -21, 7, -5, 44, 30, 17, 33, 40,
    -- layer=2 filter=55 channel=23
    -14, 28, 45, -15, -3, -36, 37, -40, -4,
    -- layer=2 filter=55 channel=24
    -51, 17, 80, -23, 12, 36, -52, -84, -69,
    -- layer=2 filter=55 channel=25
    -9, 38, 14, -5, 66, 12, -16, 6, -1,
    -- layer=2 filter=55 channel=26
    -97, -35, 55, -55, 55, 60, 48, 49, 46,
    -- layer=2 filter=55 channel=27
    -62, -12, 42, -17, 3, -16, -16, -14, -55,
    -- layer=2 filter=55 channel=28
    42, -2, 6, -14, -42, -51, -52, -31, -106,
    -- layer=2 filter=55 channel=29
    42, -8, 11, -10, -8, 10, -34, -29, 1,
    -- layer=2 filter=55 channel=30
    -21, -3, -18, -26, 10, 37, -59, 24, 60,
    -- layer=2 filter=55 channel=31
    -3, -44, -13, -3, -37, -1, -34, -3, -10,
    -- layer=2 filter=56 channel=0
    -6, -16, -12, -11, 10, 12, 1, -4, -3,
    -- layer=2 filter=56 channel=1
    5, -10, -6, 5, -11, 3, 8, -15, 16,
    -- layer=2 filter=56 channel=2
    -13, -19, 0, 11, 15, -11, -6, 17, -21,
    -- layer=2 filter=56 channel=3
    11, -3, 1, 12, -23, 18, 60, -16, -22,
    -- layer=2 filter=56 channel=4
    9, -23, -2, -9, 4, -17, -18, 2, -6,
    -- layer=2 filter=56 channel=5
    -19, 6, 12, -21, -24, -19, 15, -19, -25,
    -- layer=2 filter=56 channel=6
    -4, -12, 12, -15, 11, -8, 1, 4, -35,
    -- layer=2 filter=56 channel=7
    -2, 18, -18, 14, -22, 3, -29, 2, -16,
    -- layer=2 filter=56 channel=8
    15, 29, -9, 4, -5, -4, -2, -7, -1,
    -- layer=2 filter=56 channel=9
    -1, -23, -5, 3, -29, -1, -16, 14, -6,
    -- layer=2 filter=56 channel=10
    -4, -2, 16, 7, 13, 7, 4, 0, 9,
    -- layer=2 filter=56 channel=11
    -19, -3, -1, -19, -25, -18, -6, -16, -32,
    -- layer=2 filter=56 channel=12
    11, 13, -4, 1, -13, 1, -18, -11, -14,
    -- layer=2 filter=56 channel=13
    -6, -22, -22, 6, 17, 11, 6, -21, -18,
    -- layer=2 filter=56 channel=14
    9, -14, -24, 1, 6, -23, 6, -3, 1,
    -- layer=2 filter=56 channel=15
    -7, 1, -22, -7, -1, -15, 8, -3, 12,
    -- layer=2 filter=56 channel=16
    0, -24, -2, 1, 4, -21, -28, 13, -22,
    -- layer=2 filter=56 channel=17
    -19, -7, 0, -13, -28, -24, -10, -16, 9,
    -- layer=2 filter=56 channel=18
    -11, 0, -22, -14, -23, -10, 3, -10, 12,
    -- layer=2 filter=56 channel=19
    -17, 0, -11, -26, -2, -26, -25, -12, -19,
    -- layer=2 filter=56 channel=20
    -12, 16, 15, 16, -7, -3, 0, -36, -33,
    -- layer=2 filter=56 channel=21
    -9, 12, -11, 13, -24, 5, 10, 14, 12,
    -- layer=2 filter=56 channel=22
    2, -20, -17, -4, -12, 6, -11, -13, -15,
    -- layer=2 filter=56 channel=23
    12, 5, 1, -4, -28, -6, 4, -13, 20,
    -- layer=2 filter=56 channel=24
    -28, 13, -12, -1, -9, 1, -3, -12, -15,
    -- layer=2 filter=56 channel=25
    -14, -45, -21, -22, -17, 0, 13, -1, 7,
    -- layer=2 filter=56 channel=26
    -8, 0, -20, -5, -10, -37, -28, -15, 5,
    -- layer=2 filter=56 channel=27
    -10, 9, -7, 7, 2, 6, -29, -31, -2,
    -- layer=2 filter=56 channel=28
    -18, 6, 34, 15, 4, -11, 13, -10, -10,
    -- layer=2 filter=56 channel=29
    0, -6, 21, 2, -22, -27, -21, -7, 13,
    -- layer=2 filter=56 channel=30
    7, -10, -33, -4, 5, -10, -34, -29, 14,
    -- layer=2 filter=56 channel=31
    -14, 1, -23, -22, -22, -6, -5, -24, -18,
    -- layer=2 filter=57 channel=0
    35, -9, -10, 43, -1, -48, 57, -20, -101,
    -- layer=2 filter=57 channel=1
    3, -3, 4, 17, -1, -35, -9, -28, 5,
    -- layer=2 filter=57 channel=2
    -2, 6, -25, -13, 7, 7, 25, 9, 19,
    -- layer=2 filter=57 channel=3
    -5, 15, -42, -70, 4, -12, -14, 17, 18,
    -- layer=2 filter=57 channel=4
    -8, -26, 24, 66, 22, -45, 55, 1, -21,
    -- layer=2 filter=57 channel=5
    39, -4, -26, 64, 6, -59, 91, -14, -83,
    -- layer=2 filter=57 channel=6
    10, -4, 3, 24, -31, -58, 1, -12, -31,
    -- layer=2 filter=57 channel=7
    34, -7, -15, 44, -10, -46, 36, -28, -71,
    -- layer=2 filter=57 channel=8
    -23, 1, 8, 9, -30, -47, -24, -21, -39,
    -- layer=2 filter=57 channel=9
    28, 18, 47, 17, 20, 4, 9, 6, 48,
    -- layer=2 filter=57 channel=10
    -45, -48, 10, -5, -42, 16, 22, 13, 18,
    -- layer=2 filter=57 channel=11
    -46, -3, 41, -58, 7, 87, -95, -3, 87,
    -- layer=2 filter=57 channel=12
    16, 7, -16, 40, -2, -30, 36, -19, -54,
    -- layer=2 filter=57 channel=13
    -11, -9, -2, -20, -20, 25, -51, -23, 7,
    -- layer=2 filter=57 channel=14
    45, -6, -31, 18, -23, -42, 54, -6, -63,
    -- layer=2 filter=57 channel=15
    11, -16, 7, 49, -15, -33, 62, -17, -49,
    -- layer=2 filter=57 channel=16
    3, 25, 26, -3, -33, -24, -18, -27, 27,
    -- layer=2 filter=57 channel=17
    -44, -20, 8, -83, 28, 54, -108, 0, 43,
    -- layer=2 filter=57 channel=18
    11, -6, -52, 55, -13, -47, 64, -5, -102,
    -- layer=2 filter=57 channel=19
    10, 21, -1, 3, -10, -21, 23, 2, -23,
    -- layer=2 filter=57 channel=20
    -3, -9, 23, 1, -29, -29, -33, -13, -23,
    -- layer=2 filter=57 channel=21
    14, -4, -11, 41, -21, -20, 17, 6, -5,
    -- layer=2 filter=57 channel=22
    5, -12, 15, -32, -18, 23, -102, -31, 47,
    -- layer=2 filter=57 channel=23
    55, -33, -28, 43, -21, -5, 39, -31, -71,
    -- layer=2 filter=57 channel=24
    38, -23, -51, 48, -16, 0, 20, 12, -31,
    -- layer=2 filter=57 channel=25
    7, 12, 23, -11, 45, 13, -25, 17, 24,
    -- layer=2 filter=57 channel=26
    -30, -11, -3, 2, -32, -15, -8, -57, -16,
    -- layer=2 filter=57 channel=27
    22, -39, -55, 33, 15, -29, 16, 28, -30,
    -- layer=2 filter=57 channel=28
    8, 4, 19, 7, 5, -32, 56, 12, -34,
    -- layer=2 filter=57 channel=29
    4, -19, -10, 35, 0, -59, 22, -42, -37,
    -- layer=2 filter=57 channel=30
    -59, -32, -31, -19, -19, 19, 1, -12, -10,
    -- layer=2 filter=57 channel=31
    -12, 9, 6, -34, -16, 13, -43, 15, 57,
    -- layer=2 filter=58 channel=0
    3, -56, -53, 23, -22, 16, 31, -22, -22,
    -- layer=2 filter=58 channel=1
    -17, -46, -3, 21, -2, 121, 57, -17, -15,
    -- layer=2 filter=58 channel=2
    -13, 11, -22, 10, -11, 19, 19, -2, -26,
    -- layer=2 filter=58 channel=3
    -16, -13, -24, -26, -64, -70, 18, -63, 7,
    -- layer=2 filter=58 channel=4
    45, 4, 37, 34, -38, 13, 60, 11, 33,
    -- layer=2 filter=58 channel=5
    3, -42, 15, 24, -13, -3, 18, 7, 4,
    -- layer=2 filter=58 channel=6
    35, 28, 55, -21, -43, -19, 0, -28, -22,
    -- layer=2 filter=58 channel=7
    -10, -29, 2, 28, -11, -9, 16, 1, 27,
    -- layer=2 filter=58 channel=8
    35, 16, 67, -12, -31, -14, -2, -9, 3,
    -- layer=2 filter=58 channel=9
    -8, 8, -6, 29, 30, 23, 0, 26, 3,
    -- layer=2 filter=58 channel=10
    -32, 23, 16, -2, 11, -12, 79, 31, 27,
    -- layer=2 filter=58 channel=11
    14, 9, -33, 24, 24, 14, -40, -26, 7,
    -- layer=2 filter=58 channel=12
    19, -58, -57, 37, -1, 25, 29, 7, 11,
    -- layer=2 filter=58 channel=13
    46, 10, 39, -16, -30, -10, -3, 14, 10,
    -- layer=2 filter=58 channel=14
    5, -31, 12, 35, -5, 9, 40, 14, 3,
    -- layer=2 filter=58 channel=15
    -7, -79, -40, 25, -9, -17, 29, 2, -52,
    -- layer=2 filter=58 channel=16
    21, 40, 32, 15, 6, -18, 17, -13, -63,
    -- layer=2 filter=58 channel=17
    -29, 5, 5, 7, -1, 20, -23, 5, -4,
    -- layer=2 filter=58 channel=18
    -2, -75, -29, 6, -25, 40, 41, -34, -50,
    -- layer=2 filter=58 channel=19
    -56, 60, 59, -49, -30, -35, -97, -53, -6,
    -- layer=2 filter=58 channel=20
    -17, -15, 43, -60, -25, 21, -29, 24, -5,
    -- layer=2 filter=58 channel=21
    -25, -28, -22, 13, 6, -56, 37, -28, -26,
    -- layer=2 filter=58 channel=22
    -12, -34, -36, -12, -42, -1, -38, -72, -80,
    -- layer=2 filter=58 channel=23
    -28, 130, 85, 5, 28, 0, -29, -11, -12,
    -- layer=2 filter=58 channel=24
    34, 37, -13, 22, -18, -50, 42, 13, 51,
    -- layer=2 filter=58 channel=25
    47, 63, 67, 21, -1, 0, 4, 11, 26,
    -- layer=2 filter=58 channel=26
    -33, 67, 65, -35, -20, 8, -44, -15, 21,
    -- layer=2 filter=58 channel=27
    -18, 54, 76, -13, 44, -11, 0, -19, 0,
    -- layer=2 filter=58 channel=28
    41, 62, 4, 48, 2, -12, 20, -54, 23,
    -- layer=2 filter=58 channel=29
    -2, -70, -36, 45, 0, -8, 48, -12, -7,
    -- layer=2 filter=58 channel=30
    16, 38, 21, 33, -5, 4, 52, -7, -26,
    -- layer=2 filter=58 channel=31
    -17, 8, 42, -17, 10, 15, -14, 16, -11,
    -- layer=2 filter=59 channel=0
    -23, 4, 0, -22, 2, 10, 20, 7, 9,
    -- layer=2 filter=59 channel=1
    5, -13, 10, -19, -9, 14, -8, -11, -17,
    -- layer=2 filter=59 channel=2
    12, 0, -13, 5, 18, 18, 1, -19, 4,
    -- layer=2 filter=59 channel=3
    -9, 6, 15, 15, 16, -10, 9, 5, 15,
    -- layer=2 filter=59 channel=4
    13, 3, -11, 0, 11, -18, 0, -18, -18,
    -- layer=2 filter=59 channel=5
    -21, -25, -11, -14, -12, -10, 15, -9, -7,
    -- layer=2 filter=59 channel=6
    -9, -21, -8, -14, -19, 15, -17, -12, -24,
    -- layer=2 filter=59 channel=7
    -17, -9, 9, 17, -4, 7, -2, 6, -4,
    -- layer=2 filter=59 channel=8
    15, -25, -15, 19, -10, -17, 17, 8, 15,
    -- layer=2 filter=59 channel=9
    -6, 16, -17, -3, -25, 5, -14, -19, -15,
    -- layer=2 filter=59 channel=10
    -12, -7, -10, 11, -16, 15, -18, -4, -17,
    -- layer=2 filter=59 channel=11
    18, 10, -27, -6, -11, 11, 0, -15, 16,
    -- layer=2 filter=59 channel=12
    7, -15, -9, -21, 5, 0, -10, 10, -13,
    -- layer=2 filter=59 channel=13
    -5, 10, -3, 9, -2, 16, 10, -18, -10,
    -- layer=2 filter=59 channel=14
    13, 14, 16, -14, -16, -11, 4, 9, 7,
    -- layer=2 filter=59 channel=15
    14, 8, 12, 9, -9, 5, 7, 2, 6,
    -- layer=2 filter=59 channel=16
    9, 5, 1, -5, 5, 5, -9, -19, -9,
    -- layer=2 filter=59 channel=17
    5, 16, 11, 6, 11, 9, 0, -29, -4,
    -- layer=2 filter=59 channel=18
    -17, -12, -8, 2, 6, 10, -10, 6, -20,
    -- layer=2 filter=59 channel=19
    -13, 9, -1, 10, 1, -6, -15, 0, -10,
    -- layer=2 filter=59 channel=20
    11, -19, -3, -12, -9, -18, -5, 14, -13,
    -- layer=2 filter=59 channel=21
    -9, 10, 5, -14, -4, 8, -10, -10, 5,
    -- layer=2 filter=59 channel=22
    -8, 0, -4, 4, -7, -7, -3, -9, -19,
    -- layer=2 filter=59 channel=23
    0, 2, -16, 15, 17, -20, -7, 11, 16,
    -- layer=2 filter=59 channel=24
    16, -16, -17, -5, 12, -15, -3, -16, -8,
    -- layer=2 filter=59 channel=25
    11, -14, 14, -18, -25, 10, -4, -7, -4,
    -- layer=2 filter=59 channel=26
    -10, -15, -13, -21, -3, 2, -16, 1, -23,
    -- layer=2 filter=59 channel=27
    3, -19, -13, -13, -1, 11, 15, -23, -11,
    -- layer=2 filter=59 channel=28
    9, -8, 1, 3, -1, -15, -18, 6, 17,
    -- layer=2 filter=59 channel=29
    5, 11, -11, -20, -12, 17, -23, -4, -1,
    -- layer=2 filter=59 channel=30
    -23, 16, -14, -21, -16, -2, 10, -7, 16,
    -- layer=2 filter=59 channel=31
    -18, -22, -16, -10, -17, 8, 13, -4, -5,
    -- layer=2 filter=60 channel=0
    -24, 23, -27, -43, -5, -51, -114, -34, -12,
    -- layer=2 filter=60 channel=1
    53, 4, 83, 32, 18, 5, 2, 28, 56,
    -- layer=2 filter=60 channel=2
    -10, 12, -6, -6, -4, 7, -2, -7, -6,
    -- layer=2 filter=60 channel=3
    -5, 11, -20, 1, -5, -42, -22, -32, 3,
    -- layer=2 filter=60 channel=4
    -30, -22, -30, -62, -64, -75, -37, -52, -7,
    -- layer=2 filter=60 channel=5
    -31, -17, -36, -59, -58, -69, -109, -79, -42,
    -- layer=2 filter=60 channel=6
    13, -3, -8, -1, -29, 0, 14, -5, -50,
    -- layer=2 filter=60 channel=7
    34, -8, -46, -34, -25, -7, -108, -79, -27,
    -- layer=2 filter=60 channel=8
    4, 39, 5, 4, 7, 7, 18, -3, 14,
    -- layer=2 filter=60 channel=9
    31, 32, 43, 0, 30, 30, 5, 30, 33,
    -- layer=2 filter=60 channel=10
    65, 1, -18, 47, 4, 6, 3, -33, 16,
    -- layer=2 filter=60 channel=11
    -21, -22, -2, 5, 7, 41, 15, 36, 91,
    -- layer=2 filter=60 channel=12
    20, -23, -40, -35, 9, -17, -85, 13, 7,
    -- layer=2 filter=60 channel=13
    -24, -25, 1, -22, -25, -23, -1, -25, -28,
    -- layer=2 filter=60 channel=14
    11, 12, -2, -38, 26, -6, -95, -9, 12,
    -- layer=2 filter=60 channel=15
    56, -9, -13, 13, -1, -8, -72, -71, -50,
    -- layer=2 filter=60 channel=16
    1, 8, 4, 28, 5, -1, 79, 33, 41,
    -- layer=2 filter=60 channel=17
    -5, -30, 1, -1, -7, -12, 5, 5, 30,
    -- layer=2 filter=60 channel=18
    64, -25, -40, 47, -20, -16, -18, -32, -14,
    -- layer=2 filter=60 channel=19
    -41, 27, 57, -73, -25, -25, -84, 73, 47,
    -- layer=2 filter=60 channel=20
    -25, -32, -32, 2, -6, -31, -17, -27, -20,
    -- layer=2 filter=60 channel=21
    -24, -26, -86, -61, -34, -46, -46, 32, 70,
    -- layer=2 filter=60 channel=22
    0, -31, -66, -39, -17, -38, -14, 77, 80,
    -- layer=2 filter=60 channel=23
    5, -2, -11, -19, 12, -42, 97, 75, -30,
    -- layer=2 filter=60 channel=24
    8, 5, 24, 16, -6, 13, 43, 7, 8,
    -- layer=2 filter=60 channel=25
    -17, -6, 28, 19, 20, 72, 37, 10, 50,
    -- layer=2 filter=60 channel=26
    -7, 42, 56, -8, -18, 15, -30, 34, 37,
    -- layer=2 filter=60 channel=27
    8, -23, -3, -3, -28, -53, 45, -31, -55,
    -- layer=2 filter=60 channel=28
    14, 75, 71, 47, -7, 18, 99, -1, 53,
    -- layer=2 filter=60 channel=29
    27, -36, -59, -40, -64, -52, -44, -43, -51,
    -- layer=2 filter=60 channel=30
    -76, -77, -40, -37, 17, 59, -47, 50, 11,
    -- layer=2 filter=60 channel=31
    -28, 1, -9, -2, -22, -3, -18, -10, 8,
    -- layer=2 filter=61 channel=0
    -6, 0, -6, 13, -3, -11, 24, -8, -51,
    -- layer=2 filter=61 channel=1
    23, -32, -16, -25, 9, -24, -8, -11, 57,
    -- layer=2 filter=61 channel=2
    -8, -3, 3, -11, -14, 0, 19, -3, -16,
    -- layer=2 filter=61 channel=3
    36, -96, 1, -10, -41, -22, -25, -10, -41,
    -- layer=2 filter=61 channel=4
    -62, 8, 28, -13, -2, -25, -50, -46, -61,
    -- layer=2 filter=61 channel=5
    -7, -21, -10, 16, -23, -24, 43, -5, -46,
    -- layer=2 filter=61 channel=6
    23, 29, 10, 13, 5, 7, -10, 9, 43,
    -- layer=2 filter=61 channel=7
    7, -23, -7, 27, -22, -15, 62, -2, -25,
    -- layer=2 filter=61 channel=8
    -20, 3, -9, -56, 9, -25, -20, -32, 14,
    -- layer=2 filter=61 channel=9
    51, 38, 29, 37, 35, 29, 34, 69, 2,
    -- layer=2 filter=61 channel=10
    0, -1, 8, 9, 13, 1, 52, 43, 1,
    -- layer=2 filter=61 channel=11
    24, 20, 25, -11, 11, -2, -53, 16, 50,
    -- layer=2 filter=61 channel=12
    -4, 9, -3, 28, -1, 8, 42, 10, -47,
    -- layer=2 filter=61 channel=13
    14, 6, -30, -20, -26, 1, -15, -10, 4,
    -- layer=2 filter=61 channel=14
    -15, -3, 6, 28, -13, -35, 22, 16, -86,
    -- layer=2 filter=61 channel=15
    0, 16, -9, -18, -18, -14, 57, -33, -54,
    -- layer=2 filter=61 channel=16
    -17, -3, 18, -32, -34, 25, -48, -24, 50,
    -- layer=2 filter=61 channel=17
    -14, 21, 11, -23, 46, 34, -38, 39, 42,
    -- layer=2 filter=61 channel=18
    -5, -25, 23, 18, -24, -13, 81, 7, -99,
    -- layer=2 filter=61 channel=19
    -8, -23, 22, 15, 1, 21, -35, 25, 25,
    -- layer=2 filter=61 channel=20
    -4, 8, 10, -49, 24, 7, -38, -44, 30,
    -- layer=2 filter=61 channel=21
    47, 12, 52, 2, -8, 7, 50, -7, -11,
    -- layer=2 filter=61 channel=22
    57, -3, 41, -28, -19, -28, 15, -13, 43,
    -- layer=2 filter=61 channel=23
    -1, -37, -23, -16, -33, -4, 16, -19, -72,
    -- layer=2 filter=61 channel=24
    -19, -29, -7, 64, 21, 26, 37, 45, -42,
    -- layer=2 filter=61 channel=25
    6, 32, 20, -5, 8, 14, -2, 19, 35,
    -- layer=2 filter=61 channel=26
    -14, -19, -23, -33, 37, 32, 1, 30, 11,
    -- layer=2 filter=61 channel=27
    -3, -44, -51, -5, 23, 27, 15, 28, -16,
    -- layer=2 filter=61 channel=28
    -5, -39, -12, -46, -3, -5, -65, 33, 6,
    -- layer=2 filter=61 channel=29
    -3, -11, 14, -11, -43, 8, 34, -23, -57,
    -- layer=2 filter=61 channel=30
    24, 0, 0, -9, 6, -40, 12, -11, -86,
    -- layer=2 filter=61 channel=31
    -4, -12, 21, 10, 43, 22, -32, 21, 51,
    -- layer=2 filter=62 channel=0
    -10, 7, -38, 9, -14, 2, 21, -13, 0,
    -- layer=2 filter=62 channel=1
    16, 5, -3, 36, 2, 41, 35, 5, 47,
    -- layer=2 filter=62 channel=2
    -24, -23, 20, 1, 16, 13, -9, -4, 8,
    -- layer=2 filter=62 channel=3
    -34, -27, -74, 14, -61, -60, -12, -50, -50,
    -- layer=2 filter=62 channel=4
    -72, -88, -28, -101, -172, -60, -130, -104, -124,
    -- layer=2 filter=62 channel=5
    9, -68, -95, 9, -40, -13, 49, -5, -3,
    -- layer=2 filter=62 channel=6
    16, 40, -43, 58, -20, -70, 2, 12, -12,
    -- layer=2 filter=62 channel=7
    7, -48, -68, 4, -51, -6, 53, -7, 7,
    -- layer=2 filter=62 channel=8
    -8, 7, 10, 4, -17, -38, -30, -26, -5,
    -- layer=2 filter=62 channel=9
    4, 0, 52, -11, 49, 46, 31, -1, -11,
    -- layer=2 filter=62 channel=10
    -41, 5, 63, 3, 48, 12, 45, 26, 64,
    -- layer=2 filter=62 channel=11
    -20, 31, 17, 31, 35, 1, -11, -5, 30,
    -- layer=2 filter=62 channel=12
    8, -19, -64, 57, -44, -54, 40, -2, -11,
    -- layer=2 filter=62 channel=13
    0, -2, -32, -30, -33, 44, -45, 5, -16,
    -- layer=2 filter=62 channel=14
    21, -60, -4, 18, 8, -9, 17, -28, -13,
    -- layer=2 filter=62 channel=15
    -17, -19, -7, -56, -42, -40, -28, -48, 24,
    -- layer=2 filter=62 channel=16
    1, 26, 68, 65, 45, -13, 4, 7, 24,
    -- layer=2 filter=62 channel=17
    -9, 8, 30, -1, 22, 39, 20, 25, 8,
    -- layer=2 filter=62 channel=18
    27, -29, -45, -8, 15, 16, 43, 14, 14,
    -- layer=2 filter=62 channel=19
    -15, 5, 56, -33, 41, 6, 1, 0, -7,
    -- layer=2 filter=62 channel=20
    11, 18, -2, 57, -14, -34, -49, 4, 5,
    -- layer=2 filter=62 channel=21
    17, -36, -69, -49, -19, -54, 15, -8, -12,
    -- layer=2 filter=62 channel=22
    10, -6, -15, -12, -13, -11, -27, -18, -24,
    -- layer=2 filter=62 channel=23
    32, 21, 40, -9, 46, 30, -5, -24, 32,
    -- layer=2 filter=62 channel=24
    -3, -8, 51, 14, 26, 27, 1, -17, -7,
    -- layer=2 filter=62 channel=25
    -64, 26, 68, -35, 45, 14, -26, -22, 9,
    -- layer=2 filter=62 channel=26
    -16, 1, 68, -56, 43, 43, -44, 13, 6,
    -- layer=2 filter=62 channel=27
    20, -30, 9, -4, 10, 34, 23, -15, 5,
    -- layer=2 filter=62 channel=28
    -2, 61, 41, 87, 26, -33, 32, -18, -4,
    -- layer=2 filter=62 channel=29
    0, -56, -27, -37, -43, 45, -4, -35, -8,
    -- layer=2 filter=62 channel=30
    -59, -51, 40, -28, 8, 26, -47, -30, -11,
    -- layer=2 filter=62 channel=31
    27, -11, 2, 0, 7, 5, 7, 12, -10,
    -- layer=2 filter=63 channel=0
    -1, -18, 10, -16, -10, 4, -4, -7, -30,
    -- layer=2 filter=63 channel=1
    -14, 6, 4, -8, -8, 4, -20, -20, 11,
    -- layer=2 filter=63 channel=2
    6, 15, -2, 2, -9, -17, 16, -6, 10,
    -- layer=2 filter=63 channel=3
    -15, 11, -8, -10, 5, 9, 19, 20, 7,
    -- layer=2 filter=63 channel=4
    -4, 15, 12, 11, 4, -3, -10, 0, -8,
    -- layer=2 filter=63 channel=5
    10, -2, -23, 3, -19, 6, -1, 6, 9,
    -- layer=2 filter=63 channel=6
    10, -26, -17, -26, 0, -6, -2, -17, 3,
    -- layer=2 filter=63 channel=7
    -25, -22, 11, 12, -21, -17, -18, -22, 9,
    -- layer=2 filter=63 channel=8
    -2, -23, -17, 12, 13, -4, 3, -14, -24,
    -- layer=2 filter=63 channel=9
    3, -26, -9, -23, 6, 8, -13, -21, -21,
    -- layer=2 filter=63 channel=10
    13, 9, -7, -6, -29, 2, -15, -4, -28,
    -- layer=2 filter=63 channel=11
    -26, -27, -13, 4, 5, -26, 0, 8, -25,
    -- layer=2 filter=63 channel=12
    -11, -3, 2, 0, -3, -6, -17, -2, -9,
    -- layer=2 filter=63 channel=13
    -18, -2, -19, 4, -1, 8, -14, -9, -10,
    -- layer=2 filter=63 channel=14
    -23, 15, -1, -26, -21, -5, 6, -15, 3,
    -- layer=2 filter=63 channel=15
    10, 8, -6, -4, -19, -6, -21, -5, 7,
    -- layer=2 filter=63 channel=16
    -2, -10, -1, -2, -14, -16, 4, 6, -19,
    -- layer=2 filter=63 channel=17
    11, 4, -15, -2, -26, -26, -11, -22, -18,
    -- layer=2 filter=63 channel=18
    13, -5, 10, -2, 7, -28, -18, -6, -17,
    -- layer=2 filter=63 channel=19
    -12, 0, -4, -22, -5, -9, 3, -2, -21,
    -- layer=2 filter=63 channel=20
    -21, -19, -4, -5, -14, -5, -1, -1, -23,
    -- layer=2 filter=63 channel=21
    -10, -8, 4, 11, 10, -22, -20, -3, -23,
    -- layer=2 filter=63 channel=22
    -29, 11, 0, -18, -9, -20, 7, 3, -21,
    -- layer=2 filter=63 channel=23
    -20, -4, 0, -1, -2, -17, 1, -21, -24,
    -- layer=2 filter=63 channel=24
    -6, 8, -13, 11, -2, -20, -3, -4, -3,
    -- layer=2 filter=63 channel=25
    -6, 19, -11, -9, 14, 20, 9, 9, -23,
    -- layer=2 filter=63 channel=26
    -9, -2, -23, 0, -15, -21, 4, -24, -23,
    -- layer=2 filter=63 channel=27
    -17, -5, 0, -11, 9, -6, -5, 5, -8,
    -- layer=2 filter=63 channel=28
    -7, -17, -7, 0, 8, 5, -7, 0, -10,
    -- layer=2 filter=63 channel=29
    2, -22, 4, -13, 7, 4, -28, 1, 9,
    -- layer=2 filter=63 channel=30
    7, 19, 17, 0, -7, -4, 18, -2, 8,
    -- layer=2 filter=63 channel=31
    2, -2, -20, -29, 8, -8, -26, 11, -11,

    others => 0);
end iwght_package;

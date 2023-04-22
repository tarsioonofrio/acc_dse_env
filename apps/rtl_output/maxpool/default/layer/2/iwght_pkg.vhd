library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=2
    4649, 7513, -3852, -668, 10220, -1519, 7636, -1049, 6669, 2835, -5557, 5494, -5411, 10456, -6051, 17492, 4185, -3962, -3826, 596, 1069, 9912, 11668, -3125, 11364, -2027, 1286, 918, 11092, -7586, -716, 2129, 16097, 8495, -4492, 3533, 8540, 15080, -3115, -1025, -9354, -2916, -10585, 4337, -301, -1945, 17378, 19886, 5505, -975, 12107, 3886, 7336, 10068, -894, 11998, -4045, -1256, 1706, 17091, 9132, -371, 13142, 1005,

    -- weights
    -- layer=2 filter=0 channel=0
    15, 23, 28, 22, -5, 15, -50, -64, -78,
    -- layer=2 filter=0 channel=1
    -37, -33, -27, 35, -30, -5, -13, -55, 22,
    -- layer=2 filter=0 channel=2
    49, 28, 12, 56, 34, 40, 55, 42, 31,
    -- layer=2 filter=0 channel=3
    -14, -7, -23, -83, -77, -77, -39, -2, -26,
    -- layer=2 filter=0 channel=4
    -16, -8, -4, -55, -62, -72, -19, -46, -27,
    -- layer=2 filter=0 channel=5
    6, -19, 9, -14, -86, -58, -26, -116, -52,
    -- layer=2 filter=0 channel=6
    44, -10, 35, 30, 57, 12, 12, 22, -14,
    -- layer=2 filter=0 channel=7
    -1, 19, -17, 17, 56, 34, -13, 5, -8,
    -- layer=2 filter=0 channel=8
    29, 0, -8, 10, 33, -2, 3, -12, -19,
    -- layer=2 filter=0 channel=9
    63, 86, 29, -6, 4, 7, 13, -36, 59,
    -- layer=2 filter=0 channel=10
    -3, 6, 13, 0, -8, -7, -27, -38, -75,
    -- layer=2 filter=0 channel=11
    -9, -17, -44, 53, -17, 7, 40, 33, 12,
    -- layer=2 filter=0 channel=12
    67, 70, 6, 70, 106, 34, 50, 84, 96,
    -- layer=2 filter=0 channel=13
    9, 29, 16, -49, -33, -9, -35, -35, -1,
    -- layer=2 filter=0 channel=14
    12, 7, 23, 17, -1, 8, -16, -17, -11,
    -- layer=2 filter=0 channel=15
    -8, 12, 0, 52, 22, 39, 55, 62, 86,
    -- layer=2 filter=0 channel=16
    -1, 0, -33, -8, -25, -75, 34, 7, -21,
    -- layer=2 filter=0 channel=17
    -21, 16, 26, 8, 29, 67, -17, 4, -30,
    -- layer=2 filter=0 channel=18
    -31, -72, -62, -64, -110, -42, -24, -50, -24,
    -- layer=2 filter=0 channel=19
    -1, -65, 6, 6, 67, 31, -70, 8, -16,
    -- layer=2 filter=0 channel=20
    39, -12, -9, 21, 29, 14, -7, 13, 1,
    -- layer=2 filter=0 channel=21
    22, 12, 19, 31, 21, 20, 42, 26, -1,
    -- layer=2 filter=0 channel=22
    0, 48, 23, 35, 48, 17, 65, 75, 26,
    -- layer=2 filter=0 channel=23
    -3, -21, -25, -34, -24, -84, -24, -7, -42,
    -- layer=2 filter=0 channel=24
    8, -37, -9, 61, 52, 16, 8, 37, 30,
    -- layer=2 filter=0 channel=25
    23, 15, 38, 16, 0, -20, 8, -37, -32,
    -- layer=2 filter=0 channel=26
    28, 18, -4, -4, 46, 47, -7, -24, 7,
    -- layer=2 filter=0 channel=27
    -17, -37, -43, -58, -63, -76, -41, -38, -68,
    -- layer=2 filter=0 channel=28
    -62, -34, -27, -8, 30, -28, -10, 7, 16,
    -- layer=2 filter=0 channel=29
    -8, -13, 34, 21, -15, -36, 63, 83, 21,
    -- layer=2 filter=0 channel=30
    7, -27, 4, 0, -14, -25, -3, 23, 24,
    -- layer=2 filter=0 channel=31
    3, 41, -17, 27, 30, 15, -23, -1, 9,
    -- layer=2 filter=1 channel=0
    3, 7, 12, -23, -28, -5, -17, 1, 7,
    -- layer=2 filter=1 channel=1
    8, 12, -15, 8, -4, 23, -54, 22, 30,
    -- layer=2 filter=1 channel=2
    0, -48, -19, -36, -20, 8, 12, 25, 30,
    -- layer=2 filter=1 channel=3
    14, -23, -83, -34, -13, -18, -14, -4, 40,
    -- layer=2 filter=1 channel=4
    66, 23, 1, -7, -33, 22, -58, -72, -19,
    -- layer=2 filter=1 channel=5
    47, 31, 23, -12, 0, 7, -29, -45, -2,
    -- layer=2 filter=1 channel=6
    8, 27, 60, 50, 11, -6, -8, 36, 48,
    -- layer=2 filter=1 channel=7
    -38, -26, -42, -10, 0, -6, 12, 32, 48,
    -- layer=2 filter=1 channel=8
    34, 48, 40, 20, 30, -4, -18, 0, -21,
    -- layer=2 filter=1 channel=9
    7, -1, 15, 10, 11, 1, -7, -29, 35,
    -- layer=2 filter=1 channel=10
    4, -1, 1, 3, 9, 3, 16, -62, -18,
    -- layer=2 filter=1 channel=11
    -10, 26, -18, 0, -14, -6, 13, 7, 48,
    -- layer=2 filter=1 channel=12
    -36, -31, 14, 25, 67, -6, -2, 16, 58,
    -- layer=2 filter=1 channel=13
    4, -27, 44, -81, -41, 9, -30, -112, -80,
    -- layer=2 filter=1 channel=14
    3, -1, -1, -14, 20, 1, 2, 11, -4,
    -- layer=2 filter=1 channel=15
    7, 6, -26, 43, 48, -16, 41, 44, 65,
    -- layer=2 filter=1 channel=16
    13, -3, 29, -45, -35, 10, -45, -59, -85,
    -- layer=2 filter=1 channel=17
    20, 46, 6, 0, 24, 12, -83, -52, -40,
    -- layer=2 filter=1 channel=18
    -93, -116, -141, -27, -75, -33, 46, -12, -51,
    -- layer=2 filter=1 channel=19
    -49, -40, -18, -98, -23, -54, -19, 25, 0,
    -- layer=2 filter=1 channel=20
    70, 11, 43, 37, 20, 28, -57, -13, -60,
    -- layer=2 filter=1 channel=21
    20, 15, 16, 11, 8, 16, -20, 51, 12,
    -- layer=2 filter=1 channel=22
    23, 98, 5, 56, 73, 42, -35, 31, 6,
    -- layer=2 filter=1 channel=23
    -68, -77, -90, -22, -8, -12, 33, -26, -37,
    -- layer=2 filter=1 channel=24
    44, -3, 8, 33, 53, 36, -44, -3, -56,
    -- layer=2 filter=1 channel=25
    39, 25, 43, 8, -3, 0, -52, -53, -60,
    -- layer=2 filter=1 channel=26
    38, 36, -11, 45, 34, 25, 69, 28, 13,
    -- layer=2 filter=1 channel=27
    -54, -91, -50, -32, -11, -7, -35, -29, -49,
    -- layer=2 filter=1 channel=28
    57, 40, 31, 5, -8, 8, -18, -27, -19,
    -- layer=2 filter=1 channel=29
    7, 12, 20, -52, -58, 5, -10, -13, -26,
    -- layer=2 filter=1 channel=30
    53, 31, 38, 32, 16, 16, -73, -38, -60,
    -- layer=2 filter=1 channel=31
    16, -37, -8, 7, 13, 13, 33, 1, 54,
    -- layer=2 filter=2 channel=0
    -52, -55, 12, -15, -21, 15, -21, -26, -12,
    -- layer=2 filter=2 channel=1
    24, 0, -4, 36, 8, -43, 76, -11, -28,
    -- layer=2 filter=2 channel=2
    45, -6, -57, 57, -27, -37, 52, 20, -30,
    -- layer=2 filter=2 channel=3
    54, 2, 4, 57, -40, 37, 4, -52, 3,
    -- layer=2 filter=2 channel=4
    29, 32, 0, -4, 25, 35, -4, -31, 3,
    -- layer=2 filter=2 channel=5
    11, 14, 49, -28, -12, 72, -95, -120, 21,
    -- layer=2 filter=2 channel=6
    5, -35, 3, 5, -62, -12, 4, -4, 34,
    -- layer=2 filter=2 channel=7
    -73, -97, -24, -37, 9, 13, -2, -6, -34,
    -- layer=2 filter=2 channel=8
    31, -34, 15, 40, -38, -5, 62, 0, 32,
    -- layer=2 filter=2 channel=9
    -35, 48, -8, -8, 23, -20, -87, -8, 3,
    -- layer=2 filter=2 channel=10
    -72, -23, 21, -25, 17, 9, -8, -7, 1,
    -- layer=2 filter=2 channel=11
    39, 22, -11, 6, -53, -60, 43, -1, -27,
    -- layer=2 filter=2 channel=12
    54, -22, -85, 49, -28, -62, 134, 71, 11,
    -- layer=2 filter=2 channel=13
    0, 25, 1, -19, 31, 13, -73, 10, -30,
    -- layer=2 filter=2 channel=14
    19, -7, 0, -19, 7, 12, 15, -4, -10,
    -- layer=2 filter=2 channel=15
    -26, -45, -63, 15, -38, -56, -29, -52, -33,
    -- layer=2 filter=2 channel=16
    12, 6, -14, 11, 16, -19, 5, -8, 11,
    -- layer=2 filter=2 channel=17
    20, -28, 12, 49, -30, 42, 1, -81, -3,
    -- layer=2 filter=2 channel=18
    34, 34, 56, 52, 38, -17, -23, -6, -39,
    -- layer=2 filter=2 channel=19
    12, -11, -15, 66, 14, 34, 13, 2, 13,
    -- layer=2 filter=2 channel=20
    5, 17, 50, -41, -14, 2, 2, -23, -13,
    -- layer=2 filter=2 channel=21
    -20, -66, -42, -24, -53, -31, -9, -9, -30,
    -- layer=2 filter=2 channel=22
    56, 41, 2, 15, -6, -90, 72, 39, 9,
    -- layer=2 filter=2 channel=23
    -65, 19, -33, -23, 8, -62, -20, 18, -63,
    -- layer=2 filter=2 channel=24
    20, -5, 2, 6, -16, -33, 4, 10, -48,
    -- layer=2 filter=2 channel=25
    32, 1, 30, 8, -23, 43, -43, -40, 8,
    -- layer=2 filter=2 channel=26
    -45, -56, -22, -26, -27, -53, 29, -2, 5,
    -- layer=2 filter=2 channel=27
    -42, 3, -4, -10, 12, -24, -28, -59, -36,
    -- layer=2 filter=2 channel=28
    -13, -16, -1, 42, 13, -18, 19, 2, -6,
    -- layer=2 filter=2 channel=29
    51, 74, -58, 51, 22, -29, 50, -32, -61,
    -- layer=2 filter=2 channel=30
    -13, 25, -18, -15, -1, -33, 10, 19, -46,
    -- layer=2 filter=2 channel=31
    -36, -63, -63, -2, 24, -46, 12, 34, -28,
    -- layer=2 filter=3 channel=0
    -13, -9, 5, -21, -10, 19, -24, 1, -31,
    -- layer=2 filter=3 channel=1
    -26, -47, -33, -33, -12, -24, 11, -10, -46,
    -- layer=2 filter=3 channel=2
    -71, -39, -15, 9, 54, 39, 36, 44, 62,
    -- layer=2 filter=3 channel=3
    28, 41, 26, 37, 24, -15, -21, 0, -28,
    -- layer=2 filter=3 channel=4
    26, 6, 3, 8, -21, -23, 6, -28, 27,
    -- layer=2 filter=3 channel=5
    -11, -55, -39, 26, 46, 1, -3, 21, 26,
    -- layer=2 filter=3 channel=6
    -6, -12, -29, 26, 18, 52, 24, 18, 15,
    -- layer=2 filter=3 channel=7
    24, 7, 3, 14, 8, 1, 27, 48, 23,
    -- layer=2 filter=3 channel=8
    49, 39, 48, 1, -46, -10, 0, -37, -20,
    -- layer=2 filter=3 channel=9
    -56, -57, -58, -12, -1, 10, -17, 0, 21,
    -- layer=2 filter=3 channel=10
    -17, -8, -22, -11, -9, 2, 2, -17, -21,
    -- layer=2 filter=3 channel=11
    7, 55, 28, 26, 64, 47, 41, 47, 25,
    -- layer=2 filter=3 channel=12
    35, 38, 12, -9, 0, -15, -7, 4, 52,
    -- layer=2 filter=3 channel=13
    -7, -90, -77, -21, -25, 0, -24, 9, 40,
    -- layer=2 filter=3 channel=14
    10, 1, -8, -2, -12, -2, 0, -10, -14,
    -- layer=2 filter=3 channel=15
    12, 23, 5, 39, 22, 40, 41, 44, 53,
    -- layer=2 filter=3 channel=16
    44, -5, 26, -17, -71, -39, -42, -74, -31,
    -- layer=2 filter=3 channel=17
    -31, -105, -15, 23, -8, 20, 66, 124, 112,
    -- layer=2 filter=3 channel=18
    -24, 27, 3, -29, -16, -5, -38, 14, 4,
    -- layer=2 filter=3 channel=19
    30, 22, -9, -44, -58, -68, -17, 1, 36,
    -- layer=2 filter=3 channel=20
    64, 8, 42, -33, -77, -29, -27, -76, -7,
    -- layer=2 filter=3 channel=21
    -7, -36, -24, -18, 1, -2, 37, 27, 25,
    -- layer=2 filter=3 channel=22
    -118, -13, -11, -19, 38, 37, 37, 44, 107,
    -- layer=2 filter=3 channel=23
    15, 4, 28, -20, 19, -24, -9, -8, -37,
    -- layer=2 filter=3 channel=24
    34, -28, -19, -40, -78, 6, 23, -5, 63,
    -- layer=2 filter=3 channel=25
    -28, -68, -20, -1, 1, 11, 26, 29, 37,
    -- layer=2 filter=3 channel=26
    -17, 27, 8, -39, 9, -18, -11, 45, 21,
    -- layer=2 filter=3 channel=27
    -23, 21, 8, 1, 39, -6, -20, -60, -29,
    -- layer=2 filter=3 channel=28
    14, -32, -7, -13, -78, -55, -12, -25, -18,
    -- layer=2 filter=3 channel=29
    -46, 3, 56, 54, 114, 27, -1, 43, -7,
    -- layer=2 filter=3 channel=30
    112, 58, 59, 20, -12, 27, -56, -83, -29,
    -- layer=2 filter=3 channel=31
    5, 19, -43, 24, 20, -4, 21, 9, -34,
    -- layer=2 filter=4 channel=0
    8, -6, 7, -12, 15, 16, 1, -5, 4,
    -- layer=2 filter=4 channel=1
    21, -20, -23, 1, 2, -40, 4, -25, 3,
    -- layer=2 filter=4 channel=2
    31, 33, 17, 8, -9, -46, 30, 38, 17,
    -- layer=2 filter=4 channel=3
    17, -2, -38, 25, 13, -22, 25, -18, -46,
    -- layer=2 filter=4 channel=4
    28, 11, -6, -1, -11, 19, 18, 10, 8,
    -- layer=2 filter=4 channel=5
    -45, -17, -5, -41, -43, -11, -54, -65, -30,
    -- layer=2 filter=4 channel=6
    26, -4, -9, 2, -15, 21, 8, 19, 19,
    -- layer=2 filter=4 channel=7
    5, 36, -3, -11, 12, -46, -12, 2, -51,
    -- layer=2 filter=4 channel=8
    48, -1, -63, 4, 20, -56, 4, 22, 6,
    -- layer=2 filter=4 channel=9
    -20, 27, 75, -32, -15, 30, -5, 17, 19,
    -- layer=2 filter=4 channel=10
    26, 24, 1, 9, -5, -25, -4, 39, -22,
    -- layer=2 filter=4 channel=11
    8, 23, -13, -41, 9, -31, -1, -13, -29,
    -- layer=2 filter=4 channel=12
    12, 40, -9, 33, 44, 17, 81, 70, 105,
    -- layer=2 filter=4 channel=13
    -54, 25, 8, -69, -13, 4, -73, 7, -2,
    -- layer=2 filter=4 channel=14
    -19, -6, 18, -4, -5, 3, 1, -10, -1,
    -- layer=2 filter=4 channel=15
    -37, -26, 8, -45, -19, -34, -88, -35, -56,
    -- layer=2 filter=4 channel=16
    21, 13, -6, 20, 8, 12, 2, 16, 31,
    -- layer=2 filter=4 channel=17
    -18, -58, 56, -45, -72, 20, 0, -26, 0,
    -- layer=2 filter=4 channel=18
    9, -9, 57, -5, -111, -28, -29, -18, -54,
    -- layer=2 filter=4 channel=19
    0, -13, 24, 1, 22, 5, 0, -6, -11,
    -- layer=2 filter=4 channel=20
    -7, 2, 29, -11, -11, 0, 2, -23, 28,
    -- layer=2 filter=4 channel=21
    -17, 8, -9, -49, -19, 0, -37, 13, 18,
    -- layer=2 filter=4 channel=22
    11, -17, -13, 16, 25, -35, 37, 46, 35,
    -- layer=2 filter=4 channel=23
    3, -13, -7, 0, -22, -63, 1, 10, -80,
    -- layer=2 filter=4 channel=24
    -41, -68, -8, -9, -42, -45, -37, -19, -26,
    -- layer=2 filter=4 channel=25
    -57, -42, 15, -35, -41, 3, -36, -29, -7,
    -- layer=2 filter=4 channel=26
    37, -14, 2, 14, 53, -24, 36, 23, 10,
    -- layer=2 filter=4 channel=27
    -11, 6, -8, -22, -18, -77, -29, -10, -44,
    -- layer=2 filter=4 channel=28
    47, 59, 0, 29, 28, 26, 36, 36, 9,
    -- layer=2 filter=4 channel=29
    -6, 18, 21, -20, -14, -32, 68, 19, -6,
    -- layer=2 filter=4 channel=30
    1, 29, -8, -12, 6, -24, -3, 10, -41,
    -- layer=2 filter=4 channel=31
    9, 37, 16, 15, 43, 28, 13, 47, 11,
    -- layer=2 filter=5 channel=0
    -11, -5, -22, 8, -22, -22, -53, -47, -7,
    -- layer=2 filter=5 channel=1
    -22, 5, 42, -37, -22, -42, 10, 27, -37,
    -- layer=2 filter=5 channel=2
    -26, 7, 14, -100, -97, -43, 44, 31, 46,
    -- layer=2 filter=5 channel=3
    -19, 0, -81, -71, -53, 7, -9, 47, 43,
    -- layer=2 filter=5 channel=4
    -57, -56, -23, -89, -59, -8, -9, 30, 33,
    -- layer=2 filter=5 channel=5
    0, -28, -5, 41, 23, 71, -40, -36, -30,
    -- layer=2 filter=5 channel=6
    6, -5, 52, 20, 19, 11, 44, 18, -39,
    -- layer=2 filter=5 channel=7
    9, 27, -55, -5, 36, -40, -40, 8, -54,
    -- layer=2 filter=5 channel=8
    52, 17, -1, 6, -42, -49, -73, -78, 0,
    -- layer=2 filter=5 channel=9
    -39, 7, 32, 8, 23, 23, 50, 17, -33,
    -- layer=2 filter=5 channel=10
    -27, -19, -52, -13, -27, -43, -11, -16, 10,
    -- layer=2 filter=5 channel=11
    0, 7, 50, -5, 33, -13, -35, -35, -23,
    -- layer=2 filter=5 channel=12
    27, 19, 4, -35, -30, -14, 131, 93, 38,
    -- layer=2 filter=5 channel=13
    -68, -10, 51, -5, 25, 34, -20, -47, -85,
    -- layer=2 filter=5 channel=14
    12, 0, -8, -18, 10, 0, 21, 1, 17,
    -- layer=2 filter=5 channel=15
    22, 3, 15, 14, 18, 0, 19, 90, 28,
    -- layer=2 filter=5 channel=16
    -29, -20, 11, -49, -59, -8, 1, -42, -4,
    -- layer=2 filter=5 channel=17
    -8, 39, -5, -20, -1, 15, -32, 35, 37,
    -- layer=2 filter=5 channel=18
    4, -17, 1, -30, 8, -1, 70, -4, -66,
    -- layer=2 filter=5 channel=19
    -37, 20, 26, -10, -10, 6, 6, -8, -25,
    -- layer=2 filter=5 channel=20
    48, 38, 9, 16, 17, 14, -58, -38, 18,
    -- layer=2 filter=5 channel=21
    -18, -6, 10, -4, 23, -28, 43, 23, -9,
    -- layer=2 filter=5 channel=22
    26, 12, 29, 72, 57, 17, 22, 26, -10,
    -- layer=2 filter=5 channel=23
    -14, 35, -53, -120, -7, -33, 10, -20, -39,
    -- layer=2 filter=5 channel=24
    58, 39, 29, 18, 33, -31, -42, 10, -37,
    -- layer=2 filter=5 channel=25
    38, -3, 31, 37, -12, 0, -12, 21, -7,
    -- layer=2 filter=5 channel=26
    41, 97, -35, 10, 76, -18, -46, 5, -40,
    -- layer=2 filter=5 channel=27
    18, 34, 14, -50, 0, -8, -17, -25, -40,
    -- layer=2 filter=5 channel=28
    18, 45, 33, -4, 16, -3, -2, -24, 4,
    -- layer=2 filter=5 channel=29
    37, 5, -20, -27, -18, -79, -47, -2, -6,
    -- layer=2 filter=5 channel=30
    -11, -36, 52, -2, -24, -17, -80, -74, -44,
    -- layer=2 filter=5 channel=31
    -4, 34, -15, 14, 31, 37, -82, -10, -20,
    -- layer=2 filter=6 channel=0
    -1, 15, 0, 23, 5, 17, 36, 11, -2,
    -- layer=2 filter=6 channel=1
    14, 31, 48, 75, 7, 22, -18, 21, 2,
    -- layer=2 filter=6 channel=2
    69, 2, 64, -18, 11, -15, -5, 10, 29,
    -- layer=2 filter=6 channel=3
    -1, 0, 17, -1, 4, -4, 14, -58, 0,
    -- layer=2 filter=6 channel=4
    -7, -27, -44, -17, -23, -1, -1, -6, -6,
    -- layer=2 filter=6 channel=5
    30, 39, -14, -26, 27, 37, -27, -28, 35,
    -- layer=2 filter=6 channel=6
    36, 28, 26, 6, 12, 43, -37, -24, -48,
    -- layer=2 filter=6 channel=7
    5, -11, -22, 12, -52, 13, 2, 9, 28,
    -- layer=2 filter=6 channel=8
    -41, -22, -5, 9, 3, -22, 26, -12, 0,
    -- layer=2 filter=6 channel=9
    65, 58, 67, 45, 63, 21, -29, 49, 2,
    -- layer=2 filter=6 channel=10
    -7, -33, -29, 4, -36, -28, 58, 23, 8,
    -- layer=2 filter=6 channel=11
    39, 0, 46, 51, 46, 36, -50, -32, 14,
    -- layer=2 filter=6 channel=12
    47, 41, 85, -15, -44, -71, -39, -36, -18,
    -- layer=2 filter=6 channel=13
    8, -1, -28, -17, 39, 4, 17, 23, -16,
    -- layer=2 filter=6 channel=14
    17, -1, 17, -5, 2, 0, -3, -16, -14,
    -- layer=2 filter=6 channel=15
    37, 36, 37, 12, -36, 32, -62, -52, -58,
    -- layer=2 filter=6 channel=16
    0, 10, 6, -7, 35, 14, 17, 43, 21,
    -- layer=2 filter=6 channel=17
    -44, -29, -10, -36, 3, 7, 30, -10, 27,
    -- layer=2 filter=6 channel=18
    88, -2, 32, -18, 59, -21, -57, -17, -28,
    -- layer=2 filter=6 channel=19
    46, -10, 2, -16, -11, 28, -1, -54, -6,
    -- layer=2 filter=6 channel=20
    -22, 32, 31, 3, 36, 20, 1, -2, 36,
    -- layer=2 filter=6 channel=21
    61, 61, 44, 63, 22, 39, -58, -60, -59,
    -- layer=2 filter=6 channel=22
    53, -47, 24, -17, 14, -21, -29, -8, 22,
    -- layer=2 filter=6 channel=23
    65, -57, 2, 15, 36, -37, 0, -29, -28,
    -- layer=2 filter=6 channel=24
    47, 36, 34, -16, 12, 42, -3, -25, -10,
    -- layer=2 filter=6 channel=25
    19, 34, 32, 24, 56, 20, -24, -37, 15,
    -- layer=2 filter=6 channel=26
    29, -57, -3, 14, -15, 21, -10, -22, 48,
    -- layer=2 filter=6 channel=27
    9, -67, 19, 18, 21, -22, -1, -5, 17,
    -- layer=2 filter=6 channel=28
    -39, -6, -38, -29, 18, -25, 57, 69, 35,
    -- layer=2 filter=6 channel=29
    22, -49, 93, 20, 15, -5, -2, -45, 34,
    -- layer=2 filter=6 channel=30
    23, 7, 0, 3, 56, 26, 30, 29, 19,
    -- layer=2 filter=6 channel=31
    11, -22, -21, 31, -13, 1, 35, 45, 40,
    -- layer=2 filter=7 channel=0
    0, -20, 13, -13, -6, 12, 26, 0, 2,
    -- layer=2 filter=7 channel=1
    4, -16, -52, -53, -28, -44, -8, -6, 13,
    -- layer=2 filter=7 channel=2
    38, 28, 39, 68, 52, 64, -18, -27, -1,
    -- layer=2 filter=7 channel=3
    11, 25, 37, 11, 5, -8, -21, -28, -15,
    -- layer=2 filter=7 channel=4
    1, -16, -18, -22, 17, 9, -23, -20, -24,
    -- layer=2 filter=7 channel=5
    -48, -28, -20, -19, 54, -2, -6, -12, -78,
    -- layer=2 filter=7 channel=6
    -33, -34, 2, -9, 46, -11, 10, -6, -19,
    -- layer=2 filter=7 channel=7
    -9, -9, 43, -7, 0, -5, 24, -23, -8,
    -- layer=2 filter=7 channel=8
    -26, 28, -3, 9, 0, 18, 25, 29, 39,
    -- layer=2 filter=7 channel=9
    17, -32, -23, 75, 14, 12, 23, -45, -52,
    -- layer=2 filter=7 channel=10
    -4, -29, 6, 28, -8, 0, -12, -5, 8,
    -- layer=2 filter=7 channel=11
    6, -6, 7, 52, 21, 48, 75, 6, 57,
    -- layer=2 filter=7 channel=12
    7, 27, 45, 8, 7, 51, -46, 16, 29,
    -- layer=2 filter=7 channel=13
    21, -24, -66, 30, 8, -14, 30, 8, -32,
    -- layer=2 filter=7 channel=14
    -7, -4, 3, -13, 0, -9, 5, 15, -2,
    -- layer=2 filter=7 channel=15
    -8, -17, -14, 57, 47, 54, 39, -19, -17,
    -- layer=2 filter=7 channel=16
    -19, -3, -2, 10, -13, -1, 25, 3, 16,
    -- layer=2 filter=7 channel=17
    -18, -35, -12, 15, 6, 16, 0, 16, -2,
    -- layer=2 filter=7 channel=18
    -14, -9, -42, 48, 14, 25, 25, -24, -55,
    -- layer=2 filter=7 channel=19
    -75, -71, -50, -28, 23, 22, -7, 19, 2,
    -- layer=2 filter=7 channel=20
    -4, -17, -24, -6, -2, 6, 37, 6, 27,
    -- layer=2 filter=7 channel=21
    -20, -21, -20, -6, 5, 8, 14, -4, 30,
    -- layer=2 filter=7 channel=22
    29, 19, 33, 63, 40, 23, 18, -53, -12,
    -- layer=2 filter=7 channel=23
    -21, 22, 2, 33, 15, -2, -58, -30, -29,
    -- layer=2 filter=7 channel=24
    -29, -36, 1, 18, -21, 48, 46, 34, 18,
    -- layer=2 filter=7 channel=25
    18, -12, 1, 38, 67, 46, 0, 23, -33,
    -- layer=2 filter=7 channel=26
    1, 2, -6, -3, -22, 5, 0, 0, -3,
    -- layer=2 filter=7 channel=27
    -12, -11, -10, 15, 24, 19, -61, 12, 0,
    -- layer=2 filter=7 channel=28
    -18, 4, -11, -21, -11, -18, -21, -40, -25,
    -- layer=2 filter=7 channel=29
    51, 27, 25, 39, 46, 60, 20, 49, 97,
    -- layer=2 filter=7 channel=30
    -19, 17, -6, 36, -28, 19, 44, 23, 25,
    -- layer=2 filter=7 channel=31
    -5, 5, -5, -15, -25, -28, 0, -12, -5,
    -- layer=2 filter=8 channel=0
    -28, -5, 2, -6, 0, 6, -6, -24, 3,
    -- layer=2 filter=8 channel=1
    -2, -19, -41, -24, -1, -8, 51, 62, 54,
    -- layer=2 filter=8 channel=2
    8, 8, -21, 25, -2, -83, 9, 7, 21,
    -- layer=2 filter=8 channel=3
    -5, 38, -15, -28, -46, -27, -73, -39, -32,
    -- layer=2 filter=8 channel=4
    39, 13, -17, -2, -13, -16, -30, 3, -22,
    -- layer=2 filter=8 channel=5
    -4, 31, 33, -19, -17, 44, -53, -36, 10,
    -- layer=2 filter=8 channel=6
    11, 71, 20, -19, -9, -29, -7, -5, -15,
    -- layer=2 filter=8 channel=7
    -13, 59, 5, 2, 51, 29, -40, 13, 6,
    -- layer=2 filter=8 channel=8
    1, 14, 27, -33, 2, -8, -22, -46, -33,
    -- layer=2 filter=8 channel=9
    -5, 27, 30, 4, -6, 20, 34, 13, 44,
    -- layer=2 filter=8 channel=10
    2, -20, 3, -35, -33, 20, -36, -39, -1,
    -- layer=2 filter=8 channel=11
    -7, 48, 18, -22, -3, -40, -16, -41, -70,
    -- layer=2 filter=8 channel=12
    37, 23, -31, -26, -7, -71, 15, 26, 40,
    -- layer=2 filter=8 channel=13
    -36, -30, 15, -28, -10, -3, 7, 33, 22,
    -- layer=2 filter=8 channel=14
    8, 13, -3, -8, 19, -20, -6, 14, 2,
    -- layer=2 filter=8 channel=15
    -38, 47, 0, 0, 29, 18, 9, 67, 43,
    -- layer=2 filter=8 channel=16
    6, -83, -12, -19, -45, -17, 0, -22, -35,
    -- layer=2 filter=8 channel=17
    -34, -72, -22, -12, 14, -21, 86, 92, 76,
    -- layer=2 filter=8 channel=18
    -3, 26, 31, -52, 15, -53, 65, 19, 34,
    -- layer=2 filter=8 channel=19
    18, 19, 20, -16, -54, -56, -33, 44, 18,
    -- layer=2 filter=8 channel=20
    23, -60, -33, -45, -28, -16, -4, -1, -10,
    -- layer=2 filter=8 channel=21
    -7, 40, 7, 5, 8, 1, -15, 31, 31,
    -- layer=2 filter=8 channel=22
    -42, 34, -14, -2, 45, -20, -3, 13, -9,
    -- layer=2 filter=8 channel=23
    -48, -38, -21, -51, 2, -3, 43, 18, -14,
    -- layer=2 filter=8 channel=24
    -48, -13, -83, -29, -15, -64, 64, 38, 46,
    -- layer=2 filter=8 channel=25
    -5, 9, -3, -19, -3, 0, -3, 0, -4,
    -- layer=2 filter=8 channel=26
    -30, 27, 16, -41, -20, 19, -67, -23, -33,
    -- layer=2 filter=8 channel=27
    -43, -40, 40, -56, -30, 26, -32, 9, -50,
    -- layer=2 filter=8 channel=28
    50, -21, -26, -5, -30, -46, -30, -13, -2,
    -- layer=2 filter=8 channel=29
    47, 71, 7, 40, 29, -2, -4, 15, -44,
    -- layer=2 filter=8 channel=30
    24, -32, -15, 6, -28, -11, 3, -29, -46,
    -- layer=2 filter=8 channel=31
    -6, 47, 8, -9, 0, 45, -39, -28, -14,
    -- layer=2 filter=9 channel=0
    34, 24, -15, -50, -44, -18, -38, -44, -33,
    -- layer=2 filter=9 channel=1
    -62, -60, -72, -21, -59, -50, 32, 36, 10,
    -- layer=2 filter=9 channel=2
    10, 23, 17, 39, -8, 42, 40, 12, -2,
    -- layer=2 filter=9 channel=3
    -59, -29, -51, -60, -9, -40, -1, -9, 0,
    -- layer=2 filter=9 channel=4
    -22, -17, -25, 4, 16, -3, 30, -8, 18,
    -- layer=2 filter=9 channel=5
    8, -12, 30, -20, -6, 3, -58, -52, -11,
    -- layer=2 filter=9 channel=6
    34, -2, 2, -24, -26, 0, -7, 7, 6,
    -- layer=2 filter=9 channel=7
    39, 93, 55, 29, 43, 19, -62, -41, -74,
    -- layer=2 filter=9 channel=8
    -16, -24, -43, 0, -35, -10, 20, 8, 2,
    -- layer=2 filter=9 channel=9
    13, 11, 36, -1, 1, 24, 2, -4, 8,
    -- layer=2 filter=9 channel=10
    35, 30, 0, -32, -46, -70, -37, -25, -71,
    -- layer=2 filter=9 channel=11
    -5, 4, 37, 17, -61, -8, 29, -19, 30,
    -- layer=2 filter=9 channel=12
    -2, -9, 16, 23, 35, 67, 31, 37, 28,
    -- layer=2 filter=9 channel=13
    0, 13, 0, -13, -12, -2, -7, -10, -10,
    -- layer=2 filter=9 channel=14
    19, 4, 0, 7, 0, -18, -8, 9, 11,
    -- layer=2 filter=9 channel=15
    23, 11, -10, 7, 25, 2, 22, 21, 24,
    -- layer=2 filter=9 channel=16
    -24, 1, -38, 0, -5, 10, 45, 4, 25,
    -- layer=2 filter=9 channel=17
    -32, -49, -47, 34, 36, 22, 15, 42, 15,
    -- layer=2 filter=9 channel=18
    -9, -7, -49, -30, -44, -47, 6, -6, -13,
    -- layer=2 filter=9 channel=19
    11, -12, 9, -41, -13, -74, -56, 14, -43,
    -- layer=2 filter=9 channel=20
    -29, -22, -95, 18, 30, 24, 85, 41, 42,
    -- layer=2 filter=9 channel=21
    26, 19, 47, -3, -22, -9, 21, -6, 7,
    -- layer=2 filter=9 channel=22
    12, 31, 79, 85, 35, 9, 37, 3, -1,
    -- layer=2 filter=9 channel=23
    -43, -94, -54, -14, 11, -57, 3, -29, -15,
    -- layer=2 filter=9 channel=24
    -68, -96, -94, -5, -18, 9, 71, 71, 49,
    -- layer=2 filter=9 channel=25
    -16, -37, -35, 39, 24, 17, -3, 15, 37,
    -- layer=2 filter=9 channel=26
    18, 35, 22, -20, 61, -5, -36, 30, 15,
    -- layer=2 filter=9 channel=27
    -41, -117, -33, -10, -24, -38, -51, -19, -4,
    -- layer=2 filter=9 channel=28
    -7, 4, -29, 27, 5, -13, 40, 1, 15,
    -- layer=2 filter=9 channel=29
    40, 23, 21, -23, -3, 24, 32, 15, 14,
    -- layer=2 filter=9 channel=30
    -69, -66, -23, 4, 13, -2, 39, 16, 42,
    -- layer=2 filter=9 channel=31
    70, 74, 51, -9, -21, 33, -55, -45, -50,
    -- layer=2 filter=10 channel=0
    7, 27, 1, -7, 10, -19, -19, -28, 16,
    -- layer=2 filter=10 channel=1
    -21, -12, 6, -2, 6, 26, -29, -67, -26,
    -- layer=2 filter=10 channel=2
    -13, -38, -33, 5, -4, 39, 6, 34, 24,
    -- layer=2 filter=10 channel=3
    5, 13, 30, -43, -49, 4, -16, -37, -22,
    -- layer=2 filter=10 channel=4
    -32, -39, -22, -32, -26, -22, 0, 8, 9,
    -- layer=2 filter=10 channel=5
    -40, -58, 0, -2, 48, -22, 34, 21, -16,
    -- layer=2 filter=10 channel=6
    -61, -78, -8, 59, 58, 35, 66, 37, 29,
    -- layer=2 filter=10 channel=7
    16, -8, 28, -22, -11, -31, -7, -9, 10,
    -- layer=2 filter=10 channel=8
    -6, -18, -26, -14, -20, -27, 25, 8, 16,
    -- layer=2 filter=10 channel=9
    -47, -25, -29, 32, 38, 0, 11, 14, -5,
    -- layer=2 filter=10 channel=10
    18, 10, 18, -10, 14, -13, -32, 3, -17,
    -- layer=2 filter=10 channel=11
    -36, -94, -41, 26, 40, 27, 9, 0, 8,
    -- layer=2 filter=10 channel=12
    69, -6, -17, 1, -18, -32, 7, 1, -7,
    -- layer=2 filter=10 channel=13
    -61, -14, 26, 11, 32, 14, 33, 10, 40,
    -- layer=2 filter=10 channel=14
    3, -18, -11, 13, -18, 1, 19, 16, -17,
    -- layer=2 filter=10 channel=15
    0, -47, 1, 43, 44, 33, 18, 7, -10,
    -- layer=2 filter=10 channel=16
    -38, -28, -26, -4, -12, 19, 39, 20, 60,
    -- layer=2 filter=10 channel=17
    28, -27, 32, 25, -21, -22, -64, -65, -11,
    -- layer=2 filter=10 channel=18
    33, -21, 12, 29, -115, -59, 3, 0, 6,
    -- layer=2 filter=10 channel=19
    -55, 14, -6, -28, -35, -56, 4, -37, -8,
    -- layer=2 filter=10 channel=20
    -10, -34, -12, 8, 52, 18, 34, -12, -25,
    -- layer=2 filter=10 channel=21
    -65, -26, 23, 53, 22, 3, 35, 48, 19,
    -- layer=2 filter=10 channel=22
    -1, -34, -61, 58, 3, 12, -20, -48, -1,
    -- layer=2 filter=10 channel=23
    28, 9, 24, 0, 19, 18, -4, -7, -37,
    -- layer=2 filter=10 channel=24
    15, -7, 31, 32, -5, 0, -22, -93, -12,
    -- layer=2 filter=10 channel=25
    2, -33, -44, 36, 28, 19, -20, -27, -33,
    -- layer=2 filter=10 channel=26
    23, 30, 57, 13, -8, -4, 24, 26, -11,
    -- layer=2 filter=10 channel=27
    -4, -1, 23, 6, -3, -6, 33, -7, -42,
    -- layer=2 filter=10 channel=28
    -35, -57, -33, -3, 39, 17, 28, 76, 33,
    -- layer=2 filter=10 channel=29
    -49, -15, -18, 84, 43, 65, 27, -2, -8,
    -- layer=2 filter=10 channel=30
    -28, -6, 23, -6, 2, 44, -7, -8, 20,
    -- layer=2 filter=10 channel=31
    -28, -2, 3, 31, 16, 17, 50, 32, 48,
    -- layer=2 filter=11 channel=0
    -19, -14, -5, 2, 5, 24, 31, 66, 28,
    -- layer=2 filter=11 channel=1
    -36, 27, 17, -36, -9, 47, -27, -28, -8,
    -- layer=2 filter=11 channel=2
    35, 43, 13, 0, 0, -3, 35, -16, 2,
    -- layer=2 filter=11 channel=3
    -11, -21, 49, -20, 3, 30, 15, 12, 5,
    -- layer=2 filter=11 channel=4
    37, 33, 30, -7, 7, -34, 15, 0, -21,
    -- layer=2 filter=11 channel=5
    -34, -28, 38, 12, 27, 12, 41, 9, -35,
    -- layer=2 filter=11 channel=6
    -14, 17, 55, 51, 31, 15, 53, 27, -58,
    -- layer=2 filter=11 channel=7
    -53, -58, -25, 3, 10, 38, 35, 30, 28,
    -- layer=2 filter=11 channel=8
    2, 10, 15, 2, 11, -13, -22, -19, -9,
    -- layer=2 filter=11 channel=9
    -18, 19, 20, 8, 3, -3, -3, 1, 12,
    -- layer=2 filter=11 channel=10
    2, -28, 0, 20, 0, 29, 43, 28, 52,
    -- layer=2 filter=11 channel=11
    -55, 4, 54, 19, 44, -10, 23, -7, -40,
    -- layer=2 filter=11 channel=12
    -80, -17, 4, -35, -40, -14, 49, 8, -23,
    -- layer=2 filter=11 channel=13
    15, 6, 4, -22, -50, -27, -65, -57, -26,
    -- layer=2 filter=11 channel=14
    -19, 14, -16, 5, 17, 13, 5, 21, -4,
    -- layer=2 filter=11 channel=15
    -13, 35, -25, 13, -16, 8, 17, 28, -4,
    -- layer=2 filter=11 channel=16
    13, 35, 13, -6, -13, -4, -8, -53, -20,
    -- layer=2 filter=11 channel=17
    -17, 10, 42, 0, -16, -9, -12, -48, 16,
    -- layer=2 filter=11 channel=18
    -27, -24, -24, -28, 10, -38, 6, -9, 0,
    -- layer=2 filter=11 channel=19
    50, 31, 60, 0, 33, -2, -28, -23, -20,
    -- layer=2 filter=11 channel=20
    58, 56, 32, 39, -4, 4, -15, 25, 0,
    -- layer=2 filter=11 channel=21
    -25, 16, -3, 24, -58, -7, 42, 0, -47,
    -- layer=2 filter=11 channel=22
    -56, -91, -18, 15, -15, 19, -5, 0, 41,
    -- layer=2 filter=11 channel=23
    22, -5, -17, -8, 7, 11, 11, 43, 36,
    -- layer=2 filter=11 channel=24
    27, 3, 29, 6, 1, 45, 28, 30, 12,
    -- layer=2 filter=11 channel=25
    -5, -7, 33, -3, 35, 29, 55, 43, 34,
    -- layer=2 filter=11 channel=26
    17, -37, -1, 10, 45, 15, 6, 41, 30,
    -- layer=2 filter=11 channel=27
    -23, -38, -36, 12, -14, -4, -17, 69, 63,
    -- layer=2 filter=11 channel=28
    73, 76, 59, 31, 32, 1, 27, -25, -25,
    -- layer=2 filter=11 channel=29
    12, -37, -3, -37, -15, -33, -27, 0, -29,
    -- layer=2 filter=11 channel=30
    23, 52, 29, -32, -22, -4, -34, -40, -6,
    -- layer=2 filter=11 channel=31
    -2, 27, -2, 35, -30, 11, -7, -15, 16,
    -- layer=2 filter=12 channel=0
    16, 14, 15, -11, 2, 9, -32, 9, -25,
    -- layer=2 filter=12 channel=1
    -95, -106, -64, 21, 48, 19, 31, 10, 45,
    -- layer=2 filter=12 channel=2
    0, -17, -15, -5, 22, 7, 20, 25, 36,
    -- layer=2 filter=12 channel=3
    30, -13, 47, 6, 0, -20, 34, 25, -23,
    -- layer=2 filter=12 channel=4
    6, -6, 4, 37, -18, 3, 50, 31, 9,
    -- layer=2 filter=12 channel=5
    -17, 38, -13, 26, 24, -14, 66, 48, -27,
    -- layer=2 filter=12 channel=6
    8, 36, 23, 39, 43, 21, 8, -8, -52,
    -- layer=2 filter=12 channel=7
    5, 1, -30, 24, -7, -33, -8, -29, -30,
    -- layer=2 filter=12 channel=8
    34, 31, 50, 8, 3, 46, -6, 0, 14,
    -- layer=2 filter=12 channel=9
    -29, -11, -60, -9, 54, -31, -9, 46, -10,
    -- layer=2 filter=12 channel=10
    18, 28, 0, 5, 3, -24, -16, 14, -13,
    -- layer=2 filter=12 channel=11
    -5, 44, 7, 52, 49, 64, -18, 2, -41,
    -- layer=2 filter=12 channel=12
    26, 49, 39, 34, 38, -2, 11, 39, 44,
    -- layer=2 filter=12 channel=13
    -20, -3, 0, -25, 13, 7, -14, 70, 24,
    -- layer=2 filter=12 channel=14
    -20, -2, 0, -8, 9, 1, 5, 17, 10,
    -- layer=2 filter=12 channel=15
    20, 41, 2, 10, 25, 48, -81, -17, -19,
    -- layer=2 filter=12 channel=16
    -32, -50, 20, -12, -40, 5, -19, -19, 26,
    -- layer=2 filter=12 channel=17
    -14, 22, -9, -35, -5, 8, 14, 23, 7,
    -- layer=2 filter=12 channel=18
    -15, 36, -24, -31, 31, -35, 23, 66, -1,
    -- layer=2 filter=12 channel=19
    -52, 36, 3, -80, -56, -28, -25, 10, -31,
    -- layer=2 filter=12 channel=20
    -8, -37, 10, -25, -58, 32, 2, -54, 6,
    -- layer=2 filter=12 channel=21
    -14, 32, 4, 7, 13, -14, -3, -17, -19,
    -- layer=2 filter=12 channel=22
    -74, -68, 16, 24, 80, 53, -13, 5, -9,
    -- layer=2 filter=12 channel=23
    32, 60, 27, 12, 32, -10, -30, 16, 22,
    -- layer=2 filter=12 channel=24
    -29, -32, -7, -9, -30, 28, -51, -62, -30,
    -- layer=2 filter=12 channel=25
    -15, 10, -6, -34, 17, 21, 0, 19, -27,
    -- layer=2 filter=12 channel=26
    -10, -32, -16, -5, -19, -10, 1, -36, -4,
    -- layer=2 filter=12 channel=27
    20, 59, -9, -12, 33, 9, -6, 31, -18,
    -- layer=2 filter=12 channel=28
    3, -62, -16, -27, -79, -22, 0, -23, -9,
    -- layer=2 filter=12 channel=29
    32, 15, -46, 71, 25, -15, 42, 39, -7,
    -- layer=2 filter=12 channel=30
    0, -22, 35, -6, -40, 13, -47, -45, 44,
    -- layer=2 filter=12 channel=31
    -8, -9, 20, -28, -2, -5, -64, 8, 32,
    -- layer=2 filter=13 channel=0
    -54, -27, -68, -32, 21, -3, 2, 36, 16,
    -- layer=2 filter=13 channel=1
    36, 19, 44, 34, -66, 3, -21, -45, -95,
    -- layer=2 filter=13 channel=2
    12, 51, 44, 4, 10, 81, -36, -38, 0,
    -- layer=2 filter=13 channel=3
    36, 6, -11, 16, 41, -37, -7, 11, -35,
    -- layer=2 filter=13 channel=4
    -14, 9, -38, 5, 20, -6, 1, 41, 6,
    -- layer=2 filter=13 channel=5
    -36, -71, -24, 52, -8, -4, 26, 30, 31,
    -- layer=2 filter=13 channel=6
    -45, -23, -6, -10, -42, 2, 2, 9, -10,
    -- layer=2 filter=13 channel=7
    -52, -62, -33, -67, -57, -49, -51, -12, -25,
    -- layer=2 filter=13 channel=8
    -2, 0, -47, -33, 0, -23, -33, 13, 16,
    -- layer=2 filter=13 channel=9
    2, 36, 43, 57, -12, 58, 62, 35, 18,
    -- layer=2 filter=13 channel=10
    -40, -6, -23, 5, -27, -39, 13, -7, 10,
    -- layer=2 filter=13 channel=11
    19, -31, -9, 35, -18, -43, -90, -67, -60,
    -- layer=2 filter=13 channel=12
    -9, 38, 8, -77, -36, 14, -62, -5, -20,
    -- layer=2 filter=13 channel=13
    -5, -39, 35, -12, -51, 9, 46, 40, 33,
    -- layer=2 filter=13 channel=14
    20, 11, 16, -19, -19, -13, -1, -20, -5,
    -- layer=2 filter=13 channel=15
    -8, 11, 5, -25, -68, -85, -66, -109, -57,
    -- layer=2 filter=13 channel=16
    13, 25, 28, -21, -13, 11, 17, -3, 0,
    -- layer=2 filter=13 channel=17
    8, 46, 12, 59, 37, 34, 6, 9, -4,
    -- layer=2 filter=13 channel=18
    33, 25, 61, 30, 0, 70, -26, -43, -25,
    -- layer=2 filter=13 channel=19
    25, -17, -41, 37, 44, -65, 11, -7, -7,
    -- layer=2 filter=13 channel=20
    6, 38, 37, -1, 26, 13, 26, -4, 12,
    -- layer=2 filter=13 channel=21
    -15, 2, -25, -2, -54, -56, -26, -31, -19,
    -- layer=2 filter=13 channel=22
    -32, -21, -34, -40, -135, -40, -37, -38, -25,
    -- layer=2 filter=13 channel=23
    -49, -26, 45, -14, -26, 45, -54, -78, -64,
    -- layer=2 filter=13 channel=24
    6, 30, 24, 0, -10, 22, -4, -31, -14,
    -- layer=2 filter=13 channel=25
    -16, -20, -10, 0, 18, 8, 11, 30, 25,
    -- layer=2 filter=13 channel=26
    27, 30, 16, 16, 21, -9, 34, -21, -3,
    -- layer=2 filter=13 channel=27
    -102, 26, 9, -34, -15, 10, -46, -51, 7,
    -- layer=2 filter=13 channel=28
    -8, 9, 36, -38, -26, 7, -9, 8, -2,
    -- layer=2 filter=13 channel=29
    -33, 45, 22, -1, 74, 50, -5, -17, 25,
    -- layer=2 filter=13 channel=30
    -2, -13, 6, -26, -27, 38, -11, 23, -5,
    -- layer=2 filter=13 channel=31
    -4, 13, 6, 12, -5, -8, 30, -2, 8,
    -- layer=2 filter=14 channel=0
    87, 69, 59, 39, 50, 25, -9, 25, 9,
    -- layer=2 filter=14 channel=1
    -32, -38, -25, -49, -47, -72, -25, 6, -53,
    -- layer=2 filter=14 channel=2
    -12, 8, -55, -75, -40, -20, 24, -25, -16,
    -- layer=2 filter=14 channel=3
    -10, -38, -50, -65, -42, -59, -4, -28, -17,
    -- layer=2 filter=14 channel=4
    6, -1, -13, -5, 22, -20, 4, 7, -5,
    -- layer=2 filter=14 channel=5
    0, 9, 5, -8, 4, 29, -19, -33, -23,
    -- layer=2 filter=14 channel=6
    19, 0, 19, -5, -9, -8, -14, -10, -29,
    -- layer=2 filter=14 channel=7
    34, 46, 37, -10, -2, 11, 13, 36, -14,
    -- layer=2 filter=14 channel=8
    19, 34, 31, 9, 17, -13, 2, 17, -29,
    -- layer=2 filter=14 channel=9
    20, 33, 12, 6, 35, 5, -8, -1, 2,
    -- layer=2 filter=14 channel=10
    86, 45, 46, 43, 27, -4, 12, 24, -21,
    -- layer=2 filter=14 channel=11
    -54, 8, 18, 47, 13, 14, -11, -3, -4,
    -- layer=2 filter=14 channel=12
    30, -49, 14, -6, -12, 5, 24, 4, 52,
    -- layer=2 filter=14 channel=13
    55, 16, 14, 19, 7, 8, 19, 18, 13,
    -- layer=2 filter=14 channel=14
    15, 4, 9, 9, -4, 16, 2, 18, 17,
    -- layer=2 filter=14 channel=15
    16, 10, 15, 6, 2, -4, 37, 19, -24,
    -- layer=2 filter=14 channel=16
    -33, -9, 4, -13, -21, -23, -5, 1, -25,
    -- layer=2 filter=14 channel=17
    0, 9, -5, -41, -5, 3, -6, 21, 7,
    -- layer=2 filter=14 channel=18
    -71, -35, -31, -43, -1, -23, -41, 5, -28,
    -- layer=2 filter=14 channel=19
    -14, -56, -33, -6, -6, -27, -23, 35, -69,
    -- layer=2 filter=14 channel=20
    -40, -30, 19, 19, 22, 19, 3, 2, -4,
    -- layer=2 filter=14 channel=21
    43, 31, 69, 4, 0, -5, -9, -17, -33,
    -- layer=2 filter=14 channel=22
    -64, 31, 72, 46, 42, -22, 16, 7, -11,
    -- layer=2 filter=14 channel=23
    14, 12, 3, -23, -19, -11, -26, -14, -17,
    -- layer=2 filter=14 channel=24
    -22, -77, -31, -37, -42, 14, -2, 17, -2,
    -- layer=2 filter=14 channel=25
    14, -11, -29, -28, -19, 27, -15, -5, 15,
    -- layer=2 filter=14 channel=26
    -39, -54, -56, -70, -34, 30, -59, -4, 21,
    -- layer=2 filter=14 channel=27
    20, 5, -24, -50, -27, -6, -71, -19, 12,
    -- layer=2 filter=14 channel=28
    -47, -35, -52, -16, 0, -18, 23, -8, -16,
    -- layer=2 filter=14 channel=29
    23, 47, 68, -6, -8, -1, 17, -2, 6,
    -- layer=2 filter=14 channel=30
    -48, -51, -16, 40, -16, 1, 14, -20, 3,
    -- layer=2 filter=14 channel=31
    57, 75, 40, 29, 27, -16, -10, -3, -26,
    -- layer=2 filter=15 channel=0
    -1, 0, 3, 3, -19, 21, -2, 0, 21,
    -- layer=2 filter=15 channel=1
    33, 25, 37, 29, -51, 12, 30, 4, 24,
    -- layer=2 filter=15 channel=2
    -48, -9, -77, -25, -41, -31, -7, -6, -17,
    -- layer=2 filter=15 channel=3
    31, 2, 11, 37, 0, 34, 26, -8, 30,
    -- layer=2 filter=15 channel=4
    -17, 34, -14, 0, 27, -5, 1, 15, 0,
    -- layer=2 filter=15 channel=5
    -37, -11, -30, -11, 39, -18, 24, 18, 49,
    -- layer=2 filter=15 channel=6
    -35, -60, -30, -107, -29, -122, -22, 20, 0,
    -- layer=2 filter=15 channel=7
    0, -7, 0, -17, -1, 29, 4, -12, 30,
    -- layer=2 filter=15 channel=8
    24, 55, 39, 4, -3, 13, -35, -5, 25,
    -- layer=2 filter=15 channel=9
    -19, -26, -26, -8, 18, 21, 56, 67, -23,
    -- layer=2 filter=15 channel=10
    -3, 2, -4, 16, -6, 21, 10, -6, -16,
    -- layer=2 filter=15 channel=11
    -41, -15, -27, -62, -70, -80, -54, -59, -64,
    -- layer=2 filter=15 channel=12
    -25, 8, -11, -30, -62, -41, 14, -4, -18,
    -- layer=2 filter=15 channel=13
    -5, -2, -37, -18, 24, -29, -9, 57, -22,
    -- layer=2 filter=15 channel=14
    -12, -8, -20, -9, 22, 8, -5, 8, -19,
    -- layer=2 filter=15 channel=15
    9, -31, 12, -64, -15, -28, 5, -1, -25,
    -- layer=2 filter=15 channel=16
    1, -25, 0, -8, 3, 44, -10, 29, 58,
    -- layer=2 filter=15 channel=17
    -8, -17, 3, 18, -23, 8, 23, -10, 16,
    -- layer=2 filter=15 channel=18
    12, 23, 0, 22, -52, -13, 35, 25, -2,
    -- layer=2 filter=15 channel=19
    25, -11, -2, -18, 24, -25, 3, -23, 31,
    -- layer=2 filter=15 channel=20
    -20, 23, -19, -22, 8, 3, 25, -36, 2,
    -- layer=2 filter=15 channel=21
    -70, -37, -80, -122, -13, -124, -49, -26, 16,
    -- layer=2 filter=15 channel=22
    -45, 17, -54, 7, -74, -38, -39, -55, -1,
    -- layer=2 filter=15 channel=23
    18, -20, 23, 6, -19, 1, 53, 13, -2,
    -- layer=2 filter=15 channel=24
    -8, -16, -7, -28, -13, -4, 32, -50, -12,
    -- layer=2 filter=15 channel=25
    -36, 0, -34, -38, -5, 0, 0, 40, 55,
    -- layer=2 filter=15 channel=26
    22, -20, -10, 24, -7, 34, 47, -1, 10,
    -- layer=2 filter=15 channel=27
    -35, -16, -17, 9, -26, 0, 17, -18, 4,
    -- layer=2 filter=15 channel=28
    -32, 16, -18, -40, 0, -2, -44, 9, 24,
    -- layer=2 filter=15 channel=29
    -82, -22, -75, -83, -75, -75, -34, -16, -5,
    -- layer=2 filter=15 channel=30
    -1, 25, 33, -45, -6, 0, -28, 2, 11,
    -- layer=2 filter=15 channel=31
    15, 9, 3, 37, 8, 9, 47, 37, 5,
    -- layer=2 filter=16 channel=0
    9, 4, 16, -15, -16, 22, -20, -8, 21,
    -- layer=2 filter=16 channel=1
    80, -24, -31, 26, 15, -21, 9, -6, 20,
    -- layer=2 filter=16 channel=2
    -20, 14, 12, 37, -44, 14, -24, -28, 4,
    -- layer=2 filter=16 channel=3
    -6, 28, 20, -31, 9, 54, -42, -11, 63,
    -- layer=2 filter=16 channel=4
    9, 18, 5, 3, 8, 23, 4, -3, 30,
    -- layer=2 filter=16 channel=5
    -34, 38, 8, 0, 29, 30, 45, 24, 52,
    -- layer=2 filter=16 channel=6
    -28, -11, 8, -14, -15, 18, -7, -21, -4,
    -- layer=2 filter=16 channel=7
    12, 10, 30, -46, -60, 23, -49, -67, 0,
    -- layer=2 filter=16 channel=8
    -14, 48, 42, -31, 12, 25, -1, -22, 28,
    -- layer=2 filter=16 channel=9
    -23, -26, 22, -6, -52, 4, -3, 14, -3,
    -- layer=2 filter=16 channel=10
    -1, 44, 40, 14, 3, 11, 4, 4, 9,
    -- layer=2 filter=16 channel=11
    27, -12, -20, -8, -56, -23, -61, -106, -68,
    -- layer=2 filter=16 channel=12
    12, -66, -40, -15, -75, -21, -23, -51, -55,
    -- layer=2 filter=16 channel=13
    -19, -41, 16, -21, -56, -4, -7, -2, -73,
    -- layer=2 filter=16 channel=14
    24, -1, -1, 17, 1, 0, -5, 6, 14,
    -- layer=2 filter=16 channel=15
    21, -19, 0, -52, -62, -72, -49, -52, -73,
    -- layer=2 filter=16 channel=16
    0, -19, 1, 25, -2, -20, 23, 37, -41,
    -- layer=2 filter=16 channel=17
    44, 25, -11, 25, 17, -23, 34, 1, -2,
    -- layer=2 filter=16 channel=18
    12, -4, 47, -30, -62, -53, -82, -40, -41,
    -- layer=2 filter=16 channel=19
    4, 10, 23, 5, -6, -39, 51, 0, -3,
    -- layer=2 filter=16 channel=20
    -10, 10, -21, 18, 44, -17, 29, 57, 2,
    -- layer=2 filter=16 channel=21
    21, 14, 37, 8, -9, 2, -1, -7, 33,
    -- layer=2 filter=16 channel=22
    30, -61, -50, 41, -44, -31, 16, -44, 15,
    -- layer=2 filter=16 channel=23
    17, -1, 10, -15, -34, -17, -24, 31, -16,
    -- layer=2 filter=16 channel=24
    48, 1, -50, 26, 0, -43, 72, 5, -58,
    -- layer=2 filter=16 channel=25
    -26, 5, -6, -9, 15, -1, 30, 22, 5,
    -- layer=2 filter=16 channel=26
    12, 34, 44, -40, -26, 38, -26, -27, 4,
    -- layer=2 filter=16 channel=27
    -4, 5, 24, -9, -46, -6, -33, -17, -41,
    -- layer=2 filter=16 channel=28
    -14, 5, -2, -3, 5, 25, -21, -12, 22,
    -- layer=2 filter=16 channel=29
    -20, 19, 8, 16, -68, -48, -33, -98, -43,
    -- layer=2 filter=16 channel=30
    -1, -22, -18, 0, 12, -72, 22, -5, -42,
    -- layer=2 filter=16 channel=31
    13, 19, 37, -8, -89, 2, -65, -79, 13,
    -- layer=2 filter=17 channel=0
    15, -18, -17, 12, -36, 3, 14, -7, -4,
    -- layer=2 filter=17 channel=1
    3, -52, 14, 25, 3, -28, 24, 13, 34,
    -- layer=2 filter=17 channel=2
    0, 12, 5, -48, -7, -35, -30, 7, 6,
    -- layer=2 filter=17 channel=3
    45, -41, -2, 27, -10, -44, -12, 8, -47,
    -- layer=2 filter=17 channel=4
    6, -33, -2, -8, 0, -27, 21, 31, 2,
    -- layer=2 filter=17 channel=5
    -30, -21, 58, -50, 20, 26, -90, 19, -102,
    -- layer=2 filter=17 channel=6
    22, 1, 13, -29, 0, -15, -42, 21, -3,
    -- layer=2 filter=17 channel=7
    30, -16, -10, 10, 26, -6, -59, 30, 11,
    -- layer=2 filter=17 channel=8
    26, -95, -10, 25, -48, -25, 47, 31, -19,
    -- layer=2 filter=17 channel=9
    -22, 75, -25, -69, 39, 25, -70, -13, 48,
    -- layer=2 filter=17 channel=10
    0, -11, -22, 34, 0, 3, 14, 13, -3,
    -- layer=2 filter=17 channel=11
    65, 35, 47, 1, 9, 6, -85, -62, -49,
    -- layer=2 filter=17 channel=12
    46, 22, -1, -13, -19, -50, 1, 36, 64,
    -- layer=2 filter=17 channel=13
    -36, 62, -28, -46, -5, 2, -29, -75, 21,
    -- layer=2 filter=17 channel=14
    -16, -17, 17, 3, -13, -13, 0, 0, 3,
    -- layer=2 filter=17 channel=15
    40, 30, 46, -20, -20, 22, -58, -49, -18,
    -- layer=2 filter=17 channel=16
    9, 16, -21, 31, -7, 2, 56, 24, 39,
    -- layer=2 filter=17 channel=17
    -17, -21, 26, -39, -22, 29, -15, -22, -10,
    -- layer=2 filter=17 channel=18
    -30, 46, 23, -62, -45, -10, -35, -33, 29,
    -- layer=2 filter=17 channel=19
    8, -3, 33, 33, -2, 1, -7, 48, -14,
    -- layer=2 filter=17 channel=20
    12, 12, 17, -38, -8, -1, 26, 9, 21,
    -- layer=2 filter=17 channel=21
    40, -19, 22, 1, -23, -11, -8, -4, -28,
    -- layer=2 filter=17 channel=22
    0, 6, -18, -41, 48, 5, -45, -68, -16,
    -- layer=2 filter=17 channel=23
    7, 15, -93, -3, 25, 2, -11, -6, 37,
    -- layer=2 filter=17 channel=24
    -18, -33, 29, -12, -30, 6, -14, -12, 1,
    -- layer=2 filter=17 channel=25
    6, 13, 51, -63, -32, 44, -50, -37, -1,
    -- layer=2 filter=17 channel=26
    2, -28, -10, 20, 33, 2, -17, 22, 26,
    -- layer=2 filter=17 channel=27
    18, -6, -6, -29, 25, 31, -7, -3, 52,
    -- layer=2 filter=17 channel=28
    18, -23, -16, 77, 5, -9, 53, -2, -7,
    -- layer=2 filter=17 channel=29
    57, 14, 10, -62, -37, -33, -39, -34, -9,
    -- layer=2 filter=17 channel=30
    -15, 24, 27, 44, -15, 0, 31, -18, -8,
    -- layer=2 filter=17 channel=31
    45, -13, -44, 32, -3, -31, -12, -28, -11,
    -- layer=2 filter=18 channel=0
    -9, -4, -19, 0, 3, -33, -23, -12, 1,
    -- layer=2 filter=18 channel=1
    14, 0, -11, -16, -25, -4, -11, -25, 11,
    -- layer=2 filter=18 channel=2
    -11, 1, -23, 9, -13, 7, 0, -18, 4,
    -- layer=2 filter=18 channel=3
    12, -20, 8, -10, 10, -8, -17, 7, -14,
    -- layer=2 filter=18 channel=4
    -16, 4, -4, -24, -10, 4, -6, -8, 0,
    -- layer=2 filter=18 channel=5
    -19, 9, 0, -5, -9, 3, -25, -22, -3,
    -- layer=2 filter=18 channel=6
    0, 7, -20, -10, -4, -34, -10, -26, -19,
    -- layer=2 filter=18 channel=7
    -5, -28, -1, 5, -5, -11, -2, 5, -18,
    -- layer=2 filter=18 channel=8
    -1, 7, -27, -25, 5, -15, -6, -16, 4,
    -- layer=2 filter=18 channel=9
    -28, 0, -21, -5, -6, -24, 5, -1, -8,
    -- layer=2 filter=18 channel=10
    -8, -19, -11, 0, -10, -4, -1, -12, -28,
    -- layer=2 filter=18 channel=11
    15, -10, 3, 0, 2, -7, -3, -8, -12,
    -- layer=2 filter=18 channel=12
    -5, -32, 2, 1, 19, 1, -11, -7, -38,
    -- layer=2 filter=18 channel=13
    18, 1, -15, -23, -4, 0, 12, -28, 6,
    -- layer=2 filter=18 channel=14
    -21, -17, 3, -15, -18, -19, -14, -21, 18,
    -- layer=2 filter=18 channel=15
    -12, 3, -20, -15, -12, -33, -27, 3, -17,
    -- layer=2 filter=18 channel=16
    3, 5, 3, -11, 11, -30, 0, -16, 7,
    -- layer=2 filter=18 channel=17
    0, 3, -10, -22, -8, -10, -11, 3, 0,
    -- layer=2 filter=18 channel=18
    13, -2, -12, -7, 15, -4, 0, -10, 3,
    -- layer=2 filter=18 channel=19
    21, 8, -5, -20, -7, -14, 10, -16, 7,
    -- layer=2 filter=18 channel=20
    10, -17, 6, 10, -24, -12, -15, -11, -25,
    -- layer=2 filter=18 channel=21
    -17, 9, 4, -14, 3, -23, -16, -17, -14,
    -- layer=2 filter=18 channel=22
    14, -8, -26, -14, -3, 4, -6, 7, -6,
    -- layer=2 filter=18 channel=23
    9, 2, 3, 1, -11, -25, -10, 5, -8,
    -- layer=2 filter=18 channel=24
    -28, -13, -6, 3, 3, 5, 10, -4, -15,
    -- layer=2 filter=18 channel=25
    -12, -32, 0, -8, 2, -16, 3, -13, -18,
    -- layer=2 filter=18 channel=26
    -18, 5, -16, -8, -19, -23, -12, -6, -20,
    -- layer=2 filter=18 channel=27
    -4, 9, -14, 4, -4, -21, -1, -7, -20,
    -- layer=2 filter=18 channel=28
    -22, 0, -7, -20, -17, 5, 9, 8, -13,
    -- layer=2 filter=18 channel=29
    6, 3, -4, -1, 5, -18, -24, -20, 0,
    -- layer=2 filter=18 channel=30
    -2, -14, -12, -12, -24, -10, -13, -12, -10,
    -- layer=2 filter=18 channel=31
    -16, -14, -9, 1, 8, -4, -22, 7, -30,
    -- layer=2 filter=19 channel=0
    -1, 8, 5, 14, 0, 13, -20, 0, -25,
    -- layer=2 filter=19 channel=1
    -61, -33, -22, -8, -27, -10, -10, -64, -31,
    -- layer=2 filter=19 channel=2
    55, 52, 72, 55, 47, 40, 23, -5, 32,
    -- layer=2 filter=19 channel=3
    10, 14, 21, -13, -62, -35, -61, -49, -50,
    -- layer=2 filter=19 channel=4
    5, -7, -7, -42, -62, -35, -14, -78, -48,
    -- layer=2 filter=19 channel=5
    -42, -5, -38, -27, -20, 33, -36, -65, -18,
    -- layer=2 filter=19 channel=6
    9, 20, 5, -3, 1, 13, 19, 23, 12,
    -- layer=2 filter=19 channel=7
    -37, 14, 0, -6, 9, 11, 33, 47, 33,
    -- layer=2 filter=19 channel=8
    -4, -31, 14, 9, -7, -1, 6, 11, -8,
    -- layer=2 filter=19 channel=9
    43, 35, 21, 35, 5, -3, -27, -20, 17,
    -- layer=2 filter=19 channel=10
    0, 10, 0, -18, 9, 7, 32, 6, -37,
    -- layer=2 filter=19 channel=11
    2, 29, 37, 48, 11, 1, 59, 36, 14,
    -- layer=2 filter=19 channel=12
    85, 65, 47, 33, 30, 18, 16, 7, 2,
    -- layer=2 filter=19 channel=13
    -12, -28, -18, 3, 16, -38, -28, -11, -24,
    -- layer=2 filter=19 channel=14
    -5, 13, -1, 0, 13, 15, -6, 7, -17,
    -- layer=2 filter=19 channel=15
    -6, 11, -43, 46, 9, 9, 58, 18, 32,
    -- layer=2 filter=19 channel=16
    8, -20, 3, -43, -21, -43, -3, -32, -27,
    -- layer=2 filter=19 channel=17
    -39, 10, -12, 38, 21, 41, 0, -6, 5,
    -- layer=2 filter=19 channel=18
    -7, 31, 30, -32, 8, -29, -11, -28, 26,
    -- layer=2 filter=19 channel=19
    -5, -33, -48, 12, -16, -76, -60, 22, -9,
    -- layer=2 filter=19 channel=20
    -4, -38, -27, 18, -23, -15, 7, -27, -13,
    -- layer=2 filter=19 channel=21
    -3, 25, 5, -6, -27, 6, 23, 14, 39,
    -- layer=2 filter=19 channel=22
    -4, 41, 81, 26, 24, 45, 27, 44, 45,
    -- layer=2 filter=19 channel=23
    -29, 1, 7, -36, -41, -54, -34, 6, -60,
    -- layer=2 filter=19 channel=24
    -27, -36, -62, 59, 0, 4, 44, 22, 42,
    -- layer=2 filter=19 channel=25
    -17, 15, 22, 26, 33, 40, -1, 14, 21,
    -- layer=2 filter=19 channel=26
    0, -14, 1, -49, 13, 14, 14, -1, 6,
    -- layer=2 filter=19 channel=27
    -15, 7, 35, 2, -16, -39, -32, -52, -48,
    -- layer=2 filter=19 channel=28
    -1, -23, -4, -11, -28, -4, 2, -20, -18,
    -- layer=2 filter=19 channel=29
    30, 68, 81, 93, -3, 9, 22, 27, 33,
    -- layer=2 filter=19 channel=30
    32, -42, -64, 33, -6, -19, 18, 8, -30,
    -- layer=2 filter=19 channel=31
    0, -36, -38, -5, 20, -11, -14, 15, -6,
    -- layer=2 filter=20 channel=0
    -73, -17, -35, -29, 0, -51, -12, -28, 8,
    -- layer=2 filter=20 channel=1
    26, -15, -6, 0, 10, -2, 72, 54, 45,
    -- layer=2 filter=20 channel=2
    -75, 25, 54, -49, -15, 4, 55, 59, 32,
    -- layer=2 filter=20 channel=3
    35, 47, -38, 24, 4, 4, 3, 20, 10,
    -- layer=2 filter=20 channel=4
    37, 51, 17, 37, 2, 28, -35, 12, 15,
    -- layer=2 filter=20 channel=5
    41, -4, -4, 29, 14, 3, 37, 4, -23,
    -- layer=2 filter=20 channel=6
    -18, 5, 48, 2, 4, 24, 60, 27, -30,
    -- layer=2 filter=20 channel=7
    -14, -7, -5, 12, 23, -24, -33, -17, -43,
    -- layer=2 filter=20 channel=8
    -47, -14, 11, -22, -28, -15, -22, -6, 17,
    -- layer=2 filter=20 channel=9
    22, 11, 27, -7, -5, 51, 5, -4, 5,
    -- layer=2 filter=20 channel=10
    -17, -39, -65, 13, -6, 20, -40, -9, 12,
    -- layer=2 filter=20 channel=11
    41, 18, -22, 7, -45, -36, 24, 63, -32,
    -- layer=2 filter=20 channel=12
    -11, 6, 63, 33, 35, 29, 57, 44, 22,
    -- layer=2 filter=20 channel=13
    26, 18, -6, -17, 12, -14, -32, -78, -26,
    -- layer=2 filter=20 channel=14
    -14, -12, -18, 17, 10, 8, -11, 18, 18,
    -- layer=2 filter=20 channel=15
    -28, -9, 29, 0, 8, 10, 50, 11, -32,
    -- layer=2 filter=20 channel=16
    14, -1, 19, -7, -5, 1, -24, -52, -8,
    -- layer=2 filter=20 channel=17
    0, 5, -4, -24, -24, -37, -39, -63, -72,
    -- layer=2 filter=20 channel=18
    -40, 0, 11, -30, -28, 17, 25, -16, -13,
    -- layer=2 filter=20 channel=19
    18, 9, 10, 9, 21, 6, -9, 8, -8,
    -- layer=2 filter=20 channel=20
    47, 53, 36, 15, 14, 23, 18, -59, -60,
    -- layer=2 filter=20 channel=21
    -34, -1, 9, 8, -26, 10, 39, 25, -3,
    -- layer=2 filter=20 channel=22
    -24, 3, 7, 34, 17, -13, 50, 88, 15,
    -- layer=2 filter=20 channel=23
    -97, -47, -26, -76, -12, -24, -10, -16, 12,
    -- layer=2 filter=20 channel=24
    26, 44, 45, 13, 0, 22, 3, -31, -35,
    -- layer=2 filter=20 channel=25
    -9, 12, 8, 3, -18, -22, 18, -2, -22,
    -- layer=2 filter=20 channel=26
    -7, -62, -13, -48, -17, -29, 4, -46, -36,
    -- layer=2 filter=20 channel=27
    -9, 15, 17, -10, -9, 23, -21, -8, 10,
    -- layer=2 filter=20 channel=28
    26, 40, 41, 6, 11, 20, -24, 0, -35,
    -- layer=2 filter=20 channel=29
    -55, 31, -2, -85, -43, 20, 6, 10, 31,
    -- layer=2 filter=20 channel=30
    4, 35, 22, -22, -14, 2, -19, -35, -46,
    -- layer=2 filter=20 channel=31
    -25, -35, -47, -96, -17, -22, -27, -30, -16,
    -- layer=2 filter=21 channel=0
    -19, -14, 30, 3, -16, -6, 16, -9, -2,
    -- layer=2 filter=21 channel=1
    -38, 13, -20, -43, -15, -2, -60, -53, -42,
    -- layer=2 filter=21 channel=2
    -42, -55, -60, 0, 18, 13, 30, 60, 36,
    -- layer=2 filter=21 channel=3
    -13, 28, -10, 23, 43, 14, 42, 17, 10,
    -- layer=2 filter=21 channel=4
    9, 9, -6, 14, -12, 13, 4, 20, 21,
    -- layer=2 filter=21 channel=5
    62, 38, 14, 1, -3, -9, -6, -76, -11,
    -- layer=2 filter=21 channel=6
    -10, -5, 13, -15, 35, 0, -38, -124, -28,
    -- layer=2 filter=21 channel=7
    -39, 7, 49, -21, -7, -17, -49, -7, -47,
    -- layer=2 filter=21 channel=8
    -57, -42, -23, -14, -25, -4, 56, 40, 13,
    -- layer=2 filter=21 channel=9
    28, 2, -25, 11, 9, -1, 1, -2, 8,
    -- layer=2 filter=21 channel=10
    -2, -3, 21, 51, -5, -2, 37, 34, 22,
    -- layer=2 filter=21 channel=11
    15, -37, -22, 9, -31, -2, 6, -24, -46,
    -- layer=2 filter=21 channel=12
    -73, -31, -89, 44, 47, 29, -17, -8, 8,
    -- layer=2 filter=21 channel=13
    31, 13, 4, 25, 0, 0, 23, -1, 2,
    -- layer=2 filter=21 channel=14
    -6, -22, -2, 8, 11, -3, -10, -8, 0,
    -- layer=2 filter=21 channel=15
    -8, 11, 9, -30, 32, -15, -31, -40, -58,
    -- layer=2 filter=21 channel=16
    15, -2, 11, -12, -11, -9, 45, 61, 50,
    -- layer=2 filter=21 channel=17
    -11, -13, -26, -35, -61, -14, 80, 52, 55,
    -- layer=2 filter=21 channel=18
    -27, -31, 0, 21, 5, 28, 29, 36, 11,
    -- layer=2 filter=21 channel=19
    11, -9, -1, -14, 5, -43, -5, 14, -6,
    -- layer=2 filter=21 channel=20
    -14, -5, 20, -12, -23, -20, 1, 31, 11,
    -- layer=2 filter=21 channel=21
    -32, -17, 14, -67, -18, -22, -15, -1, -25,
    -- layer=2 filter=21 channel=22
    0, 8, 22, -2, 29, 19, -52, 2, -49,
    -- layer=2 filter=21 channel=23
    -23, -67, -53, -8, -13, 14, 23, 24, 22,
    -- layer=2 filter=21 channel=24
    14, -3, 19, -46, -20, -1, -31, -26, -19,
    -- layer=2 filter=21 channel=25
    17, -3, 44, -51, -44, -26, -42, -13, -41,
    -- layer=2 filter=21 channel=26
    -6, 45, 70, 14, 32, -17, -56, -19, -32,
    -- layer=2 filter=21 channel=27
    -20, -28, 9, -8, -22, -44, -12, -12, -18,
    -- layer=2 filter=21 channel=28
    23, -2, 3, 51, 48, 40, 59, 32, 64,
    -- layer=2 filter=21 channel=29
    -3, -7, -76, -13, 25, 12, 61, 56, 34,
    -- layer=2 filter=21 channel=30
    1, -21, 19, -15, -19, -29, 2, -4, 10,
    -- layer=2 filter=21 channel=31
    13, 25, 8, -24, -6, 6, 2, 55, -5,
    -- layer=2 filter=22 channel=0
    1, 6, -28, -32, 36, 4, -14, 52, 18,
    -- layer=2 filter=22 channel=1
    15, 50, -13, -11, -65, -13, 16, -62, -112,
    -- layer=2 filter=22 channel=2
    -4, -22, -46, 58, -27, -49, 83, 28, -25,
    -- layer=2 filter=22 channel=3
    -16, -2, 7, -48, 6, 2, -1, 4, 12,
    -- layer=2 filter=22 channel=4
    1, 1, 14, 8, -1, -4, 29, 1, -44,
    -- layer=2 filter=22 channel=5
    -11, -27, 11, 24, -12, 3, 40, 8, 15,
    -- layer=2 filter=22 channel=6
    -8, -40, -10, 58, -5, -10, 77, 42, -59,
    -- layer=2 filter=22 channel=7
    -30, -22, -5, 17, 36, 9, 0, 35, 9,
    -- layer=2 filter=22 channel=8
    0, 21, -19, 16, 9, -16, 27, 19, -1,
    -- layer=2 filter=22 channel=9
    38, 12, 7, 9, 27, -5, -7, -36, 22,
    -- layer=2 filter=22 channel=10
    -43, -29, 5, -32, -8, 33, -19, 18, 9,
    -- layer=2 filter=22 channel=11
    -17, -60, -81, 28, -41, -111, 46, -37, -106,
    -- layer=2 filter=22 channel=12
    -25, -19, -45, 0, -33, -20, 20, -53, -74,
    -- layer=2 filter=22 channel=13
    14, -2, 4, -50, -26, 16, -100, -33, 1,
    -- layer=2 filter=22 channel=14
    -11, -12, 18, 16, 9, 16, -18, -5, -1,
    -- layer=2 filter=22 channel=15
    -12, -57, -54, -9, -16, -11, 49, -14, -36,
    -- layer=2 filter=22 channel=16
    -1, 16, 31, -16, -20, 22, 30, -43, -8,
    -- layer=2 filter=22 channel=17
    0, -8, 5, -6, 19, 10, -40, 6, 17,
    -- layer=2 filter=22 channel=18
    -47, -51, -42, -29, -55, -36, -24, -21, -41,
    -- layer=2 filter=22 channel=19
    9, -13, 78, -28, 7, 38, -2, 59, 37,
    -- layer=2 filter=22 channel=20
    18, 20, 34, 49, -17, -1, 69, 16, 23,
    -- layer=2 filter=22 channel=21
    -16, -75, -96, 57, -47, -85, 66, -3, -48,
    -- layer=2 filter=22 channel=22
    -64, -33, -43, 90, -25, -1, 42, -33, -6,
    -- layer=2 filter=22 channel=23
    9, 28, 14, -5, -3, 40, -13, 10, 23,
    -- layer=2 filter=22 channel=24
    -38, -16, 27, -35, -23, -5, 20, 6, 47,
    -- layer=2 filter=22 channel=25
    18, -17, 18, 8, 3, 37, 43, 43, 41,
    -- layer=2 filter=22 channel=26
    17, 1, -32, 15, 48, -11, -6, 38, 19,
    -- layer=2 filter=22 channel=27
    13, 14, 4, 6, 26, 22, -44, 34, 33,
    -- layer=2 filter=22 channel=28
    19, 4, 39, -7, -17, 25, 54, 30, 11,
    -- layer=2 filter=22 channel=29
    -29, -61, -41, 9, -70, -47, 15, -2, -30,
    -- layer=2 filter=22 channel=30
    28, 25, 26, -42, -48, 33, -27, -28, -9,
    -- layer=2 filter=22 channel=31
    13, -21, -39, -38, 7, -6, -55, -37, 16,
    -- layer=2 filter=23 channel=0
    -36, -24, 1, -11, 6, -4, -14, -33, 8,
    -- layer=2 filter=23 channel=1
    14, 20, 4, 11, 4, -16, 4, 40, 9,
    -- layer=2 filter=23 channel=2
    -4, 20, -9, -41, -19, 14, -17, -19, -11,
    -- layer=2 filter=23 channel=3
    -26, 0, -3, -14, -15, -36, -31, -25, 0,
    -- layer=2 filter=23 channel=4
    -3, -4, 8, 0, -31, -45, -43, -36, 7,
    -- layer=2 filter=23 channel=5
    -23, -25, 27, 6, 16, -14, -39, -2, 11,
    -- layer=2 filter=23 channel=6
    -25, -30, 20, -18, -12, 3, -20, -5, 13,
    -- layer=2 filter=23 channel=7
    -26, -16, -10, -1, -21, -23, -26, -22, -32,
    -- layer=2 filter=23 channel=8
    11, -6, -9, -14, -4, -2, 8, -32, -30,
    -- layer=2 filter=23 channel=9
    -25, -29, -14, -2, -39, -23, -3, -17, 5,
    -- layer=2 filter=23 channel=10
    -33, -35, -25, -39, -27, -30, -22, -18, 14,
    -- layer=2 filter=23 channel=11
    32, -27, -14, 9, -36, -24, -12, 33, 2,
    -- layer=2 filter=23 channel=12
    8, -26, -13, -17, -15, 6, 2, -6, -26,
    -- layer=2 filter=23 channel=13
    -33, -2, -6, 11, -2, -20, -32, -35, -17,
    -- layer=2 filter=23 channel=14
    12, 4, -11, 9, 14, -14, 7, 16, -4,
    -- layer=2 filter=23 channel=15
    1, -37, 11, -24, -19, 8, -29, 2, 16,
    -- layer=2 filter=23 channel=16
    -1, -24, -27, -9, -39, -27, -16, -23, -5,
    -- layer=2 filter=23 channel=17
    2, -17, 29, -15, -15, -26, -27, -6, 13,
    -- layer=2 filter=23 channel=18
    23, -12, -8, 16, 12, 3, -13, 16, 32,
    -- layer=2 filter=23 channel=19
    -6, 21, 30, 20, 39, 2, 14, 21, 14,
    -- layer=2 filter=23 channel=20
    -23, -29, 3, -30, -34, -11, 0, -9, -8,
    -- layer=2 filter=23 channel=21
    8, -35, -13, -3, -30, 5, -24, -24, 12,
    -- layer=2 filter=23 channel=22
    41, -13, -14, 0, 11, 3, 10, 2, 13,
    -- layer=2 filter=23 channel=23
    -6, 20, -23, -19, 22, 23, 2, 4, -16,
    -- layer=2 filter=23 channel=24
    10, -23, 3, 0, -19, 3, 10, -3, -10,
    -- layer=2 filter=23 channel=25
    -18, -2, 8, -37, -10, -24, -5, -25, -10,
    -- layer=2 filter=23 channel=26
    7, 4, -12, 19, 17, 12, -4, 9, -22,
    -- layer=2 filter=23 channel=27
    -36, -21, 18, 5, -21, 2, -4, -23, -11,
    -- layer=2 filter=23 channel=28
    -14, -1, -11, -2, 12, -22, -2, 2, -36,
    -- layer=2 filter=23 channel=29
    -24, -5, -6, -30, -29, 0, -31, -4, -7,
    -- layer=2 filter=23 channel=30
    -35, -21, -24, 2, -1, -18, -36, -39, -39,
    -- layer=2 filter=23 channel=31
    -5, 6, -20, 7, -10, -34, -10, -27, -5,
    -- layer=2 filter=24 channel=0
    24, -9, -15, -10, -16, -12, 0, -55, -68,
    -- layer=2 filter=24 channel=1
    5, 42, 45, -35, 44, 40, -24, -14, 19,
    -- layer=2 filter=24 channel=2
    -21, 56, 30, 18, 18, 17, 22, 35, 32,
    -- layer=2 filter=24 channel=3
    -18, -5, -10, -10, -5, 10, -6, -6, 43,
    -- layer=2 filter=24 channel=4
    -16, -46, 3, -44, -19, -11, -78, -32, -25,
    -- layer=2 filter=24 channel=5
    -95, -77, -49, -67, -66, -29, -63, -48, 1,
    -- layer=2 filter=24 channel=6
    -18, 14, 31, -33, -4, -4, -56, -23, -24,
    -- layer=2 filter=24 channel=7
    1, -18, -8, 10, -9, 8, 4, -26, 2,
    -- layer=2 filter=24 channel=8
    7, 7, 52, -38, 17, -8, -91, -67, -21,
    -- layer=2 filter=24 channel=9
    -1, -13, -59, 22, -18, -23, 12, -2, -42,
    -- layer=2 filter=24 channel=10
    11, 1, -10, -17, -21, -23, -24, -43, -43,
    -- layer=2 filter=24 channel=11
    10, -13, 19, -13, 37, 20, 21, -34, -34,
    -- layer=2 filter=24 channel=12
    -18, 3, 50, -12, 15, 61, -6, 27, 5,
    -- layer=2 filter=24 channel=13
    36, -21, -90, 47, -27, -42, 50, 8, -19,
    -- layer=2 filter=24 channel=14
    -21, -10, -13, 3, -4, 10, -18, -21, 15,
    -- layer=2 filter=24 channel=15
    -10, 6, -5, -31, 12, 8, -27, -55, -48,
    -- layer=2 filter=24 channel=16
    13, 22, -4, 50, 16, -21, 38, 37, -38,
    -- layer=2 filter=24 channel=17
    -31, -20, 56, 46, 12, -22, -15, 2, -1,
    -- layer=2 filter=24 channel=18
    22, 40, -31, 38, 11, 10, 40, 37, -7,
    -- layer=2 filter=24 channel=19
    15, 4, 19, 8, 6, 0, -32, -5, 14,
    -- layer=2 filter=24 channel=20
    -5, 22, 19, 19, 45, 1, -76, 0, -48,
    -- layer=2 filter=24 channel=21
    -11, 18, 7, -21, 22, -12, -48, -20, -27,
    -- layer=2 filter=24 channel=22
    11, 12, 12, 23, 14, -1, -22, -41, -24,
    -- layer=2 filter=24 channel=23
    4, -24, 1, 2, 2, 10, 30, 53, -18,
    -- layer=2 filter=24 channel=24
    -6, 49, 48, 18, 29, -4, -21, -33, -27,
    -- layer=2 filter=24 channel=25
    -45, -35, -8, -41, -29, -54, -36, -102, -59,
    -- layer=2 filter=24 channel=26
    -9, 12, 10, 37, 41, 30, 23, 5, 19,
    -- layer=2 filter=24 channel=27
    -29, -42, -63, 23, -2, -20, 21, -18, -72,
    -- layer=2 filter=24 channel=28
    45, 36, 23, 9, 26, 25, -25, 5, 7,
    -- layer=2 filter=24 channel=29
    -6, 7, 17, -2, -15, 7, 29, -42, -62,
    -- layer=2 filter=24 channel=30
    41, 34, -1, 50, 31, 14, 25, -10, -74,
    -- layer=2 filter=24 channel=31
    42, 27, -14, 45, 28, 45, 63, 65, 27,
    -- layer=2 filter=25 channel=0
    -3, -26, -30, -22, 7, 0, 7, -15, -20,
    -- layer=2 filter=25 channel=1
    -32, 1, -14, -20, -24, -25, -1, 3, 4,
    -- layer=2 filter=25 channel=2
    -15, 12, -2, -5, 5, 4, -1, 2, -13,
    -- layer=2 filter=25 channel=3
    7, -6, 12, 10, 11, 10, 0, 0, 11,
    -- layer=2 filter=25 channel=4
    -14, 4, 2, 2, 0, -21, -27, -31, -1,
    -- layer=2 filter=25 channel=5
    6, -7, -7, -6, -26, -5, -28, 9, 3,
    -- layer=2 filter=25 channel=6
    -7, 1, -22, 4, 3, -9, 15, 0, -10,
    -- layer=2 filter=25 channel=7
    -23, -32, 3, 13, -13, 17, -23, 0, -34,
    -- layer=2 filter=25 channel=8
    3, 10, 6, -10, -18, -19, -17, 11, -17,
    -- layer=2 filter=25 channel=9
    -27, -21, -22, -7, -35, -26, 11, -25, -26,
    -- layer=2 filter=25 channel=10
    4, 14, -17, -16, 14, -24, -16, -22, -5,
    -- layer=2 filter=25 channel=11
    0, -13, 2, -13, 0, -15, 0, -20, -17,
    -- layer=2 filter=25 channel=12
    -13, 17, 10, -17, -4, 2, 0, -23, -14,
    -- layer=2 filter=25 channel=13
    0, 1, -28, 7, -8, 3, -6, -4, 0,
    -- layer=2 filter=25 channel=14
    0, 8, -5, -2, 0, 19, 8, 13, -1,
    -- layer=2 filter=25 channel=15
    0, -33, -27, -6, -25, -2, -20, -6, -16,
    -- layer=2 filter=25 channel=16
    -5, -24, -26, -24, 4, -28, -26, -2, 11,
    -- layer=2 filter=25 channel=17
    -33, -37, -1, 1, 8, -2, -5, -32, -1,
    -- layer=2 filter=25 channel=18
    7, -19, -25, -16, -40, 3, 14, 2, -27,
    -- layer=2 filter=25 channel=19
    -3, 0, 5, -1, 2, 3, -23, 13, -19,
    -- layer=2 filter=25 channel=20
    0, -33, -21, 13, -34, -12, -30, -32, 3,
    -- layer=2 filter=25 channel=21
    -8, -9, -7, -9, -27, 17, 1, 13, -22,
    -- layer=2 filter=25 channel=22
    4, -13, 12, -6, 0, -37, -12, -15, -18,
    -- layer=2 filter=25 channel=23
    12, -1, -23, -9, -24, -34, -10, 1, -27,
    -- layer=2 filter=25 channel=24
    -28, -20, -21, 4, -30, -7, 3, -25, 4,
    -- layer=2 filter=25 channel=25
    -1, -1, -25, -14, -32, -26, 10, 0, -2,
    -- layer=2 filter=25 channel=26
    -9, 3, -25, 10, 4, -21, -18, -6, -6,
    -- layer=2 filter=25 channel=27
    2, -12, -11, 3, -10, -29, -18, -15, -8,
    -- layer=2 filter=25 channel=28
    -18, -19, 2, -17, -12, 5, 2, 0, 12,
    -- layer=2 filter=25 channel=29
    -31, -5, 9, -8, -17, -19, 4, -28, -33,
    -- layer=2 filter=25 channel=30
    3, -13, 6, -30, 6, 5, -2, 1, 2,
    -- layer=2 filter=25 channel=31
    2, 11, -21, 9, 16, 6, -1, 21, -2,
    -- layer=2 filter=26 channel=0
    -3, 2, -23, 11, 1, -30, -31, -6, -43,
    -- layer=2 filter=26 channel=1
    29, 37, 35, 33, -7, -10, 98, 35, 5,
    -- layer=2 filter=26 channel=2
    12, -2, -51, -2, -93, 15, 16, -70, -71,
    -- layer=2 filter=26 channel=3
    53, -46, 30, 10, -13, -1, 34, -47, -36,
    -- layer=2 filter=26 channel=4
    46, -27, -56, 14, -37, -49, 42, 1, -38,
    -- layer=2 filter=26 channel=5
    64, -37, 30, 60, 0, 35, 16, 16, 53,
    -- layer=2 filter=26 channel=6
    53, -40, 17, -19, -102, -28, 6, -39, -10,
    -- layer=2 filter=26 channel=7
    -4, 6, 14, 17, 17, -17, -13, -5, -36,
    -- layer=2 filter=26 channel=8
    75, -94, 3, 52, -45, -20, 37, -44, 1,
    -- layer=2 filter=26 channel=9
    -6, 26, -19, -56, 47, -22, -16, 38, -13,
    -- layer=2 filter=26 channel=10
    15, -5, -12, 1, -13, -30, -30, 2, -36,
    -- layer=2 filter=26 channel=11
    64, -29, 15, 33, -35, 7, 48, -78, -48,
    -- layer=2 filter=26 channel=12
    9, -37, -37, -20, -114, -29, 14, -19, -17,
    -- layer=2 filter=26 channel=13
    -50, 75, -33, -16, 21, -26, -31, 45, 7,
    -- layer=2 filter=26 channel=14
    -14, 12, -8, -6, -5, -12, 1, -1, 8,
    -- layer=2 filter=26 channel=15
    28, 33, -23, -25, -7, 16, -28, -19, -20,
    -- layer=2 filter=26 channel=16
    -14, 21, 17, -29, 33, 13, -33, 18, 28,
    -- layer=2 filter=26 channel=17
    6, -11, 39, 50, 21, 23, 58, 26, 43,
    -- layer=2 filter=26 channel=18
    55, -8, 60, 58, 53, 24, 12, 28, -12,
    -- layer=2 filter=26 channel=19
    28, 10, -22, -23, 6, -54, 38, 8, 37,
    -- layer=2 filter=26 channel=20
    -12, -8, 53, 9, 22, 27, 14, -8, 30,
    -- layer=2 filter=26 channel=21
    33, -27, -10, 23, -32, -25, -13, -46, -31,
    -- layer=2 filter=26 channel=22
    -26, -19, 8, 32, -24, 11, 65, -33, -24,
    -- layer=2 filter=26 channel=23
    -7, 37, -4, -60, -6, 24, -67, 9, -20,
    -- layer=2 filter=26 channel=24
    3, 5, 61, -15, 27, 56, 4, 3, 47,
    -- layer=2 filter=26 channel=25
    32, -15, 26, 23, -39, -14, 23, -17, 20,
    -- layer=2 filter=26 channel=26
    13, 22, 42, 5, -2, 14, -49, -54, -26,
    -- layer=2 filter=26 channel=27
    20, 23, -44, -12, 3, 31, -41, -48, 5,
    -- layer=2 filter=26 channel=28
    24, -30, 12, 15, -47, -33, 4, -12, -20,
    -- layer=2 filter=26 channel=29
    4, 15, -20, 41, -54, 0, 21, -64, -74,
    -- layer=2 filter=26 channel=30
    -56, 21, 4, -47, 23, 24, -43, 10, 20,
    -- layer=2 filter=26 channel=31
    16, 22, -29, 29, 13, -15, 29, 11, -19,
    -- layer=2 filter=27 channel=0
    -32, -40, -43, -11, -22, -16, -37, -60, -44,
    -- layer=2 filter=27 channel=1
    23, 26, -20, -15, -58, 17, 65, 116, 77,
    -- layer=2 filter=27 channel=2
    -58, -9, -34, -81, -101, -8, 16, 62, 24,
    -- layer=2 filter=27 channel=3
    -93, -23, -74, -69, -69, 11, -26, 52, 59,
    -- layer=2 filter=27 channel=4
    -55, -40, -4, -23, -30, 24, -26, 0, 44,
    -- layer=2 filter=27 channel=5
    47, -13, -26, 99, 61, 39, -11, -49, -84,
    -- layer=2 filter=27 channel=6
    34, -11, -39, 1, 0, -41, 30, 20, -29,
    -- layer=2 filter=27 channel=7
    6, 60, 11, -10, 24, -17, -62, -32, -91,
    -- layer=2 filter=27 channel=8
    -49, -3, -82, -102, -47, -73, 14, 0, 58,
    -- layer=2 filter=27 channel=9
    10, 12, 0, 10, 16, 41, 25, 22, -21,
    -- layer=2 filter=27 channel=10
    -8, -18, -35, -14, -4, -60, -11, -11, -4,
    -- layer=2 filter=27 channel=11
    36, 7, -65, -21, -37, -18, -42, 10, -20,
    -- layer=2 filter=27 channel=12
    -95, -58, -13, 20, 21, 42, 73, 87, 94,
    -- layer=2 filter=27 channel=13
    26, -45, 42, 57, 34, 50, 8, -41, -37,
    -- layer=2 filter=27 channel=14
    -5, 5, 0, -15, 17, 21, -1, 5, -8,
    -- layer=2 filter=27 channel=15
    7, 31, -7, 36, 14, 8, 11, 29, 1,
    -- layer=2 filter=27 channel=16
    2, -38, -14, -24, -71, -28, 43, 7, 42,
    -- layer=2 filter=27 channel=17
    -6, 55, 26, 19, 12, -25, -63, -47, -3,
    -- layer=2 filter=27 channel=18
    10, 0, -1, 33, 56, 4, 13, 7, -19,
    -- layer=2 filter=27 channel=19
    -21, -19, 18, -22, 4, -24, -33, -32, -33,
    -- layer=2 filter=27 channel=20
    28, 42, 24, 20, -22, -5, -34, -69, -17,
    -- layer=2 filter=27 channel=21
    16, 12, -20, -14, -22, -14, 14, 7, -27,
    -- layer=2 filter=27 channel=22
    42, 59, 24, 5, 30, 40, -41, 17, -15,
    -- layer=2 filter=27 channel=23
    -56, -36, -68, -20, -61, -69, 27, 2, 28,
    -- layer=2 filter=27 channel=24
    20, 28, 22, -19, 25, -6, -63, -21, -28,
    -- layer=2 filter=27 channel=25
    22, -1, 17, 18, 28, -20, -42, -2, -23,
    -- layer=2 filter=27 channel=26
    12, 32, 5, -67, -41, 0, -33, 0, -11,
    -- layer=2 filter=27 channel=27
    -38, -36, 24, -64, -10, 0, -14, -14, -17,
    -- layer=2 filter=27 channel=28
    32, -25, -13, 22, -1, 2, 29, 19, 33,
    -- layer=2 filter=27 channel=29
    29, 7, 8, -75, -73, -36, 0, 26, 14,
    -- layer=2 filter=27 channel=30
    12, 16, 24, -30, -60, -12, -35, -59, -6,
    -- layer=2 filter=27 channel=31
    29, 19, 1, 7, 4, 14, -49, -47, -36,
    -- layer=2 filter=28 channel=0
    -33, -15, -25, -21, -14, -8, -19, -17, 32,
    -- layer=2 filter=28 channel=1
    44, 45, 28, 14, 13, -2, 32, 18, 17,
    -- layer=2 filter=28 channel=2
    25, 38, 36, 63, 23, 46, 9, 9, 10,
    -- layer=2 filter=28 channel=3
    -37, -44, 34, -13, 29, 52, 0, 19, 46,
    -- layer=2 filter=28 channel=4
    -45, 10, 18, -10, 28, 44, -45, -26, -1,
    -- layer=2 filter=28 channel=5
    -42, -14, 20, -10, 22, 30, 15, 15, 13,
    -- layer=2 filter=28 channel=6
    15, 9, 28, -23, 14, 17, -15, 20, 51,
    -- layer=2 filter=28 channel=7
    -9, -52, -4, 16, -17, -4, 39, -26, 60,
    -- layer=2 filter=28 channel=8
    -13, 35, 34, 12, 33, 48, 0, 17, 28,
    -- layer=2 filter=28 channel=9
    2, 31, 50, -52, -21, -8, -56, -55, -12,
    -- layer=2 filter=28 channel=10
    -40, -28, -3, -49, -61, -22, -35, -50, -7,
    -- layer=2 filter=28 channel=11
    -23, -11, -65, -42, -6, 22, -22, 11, 27,
    -- layer=2 filter=28 channel=12
    34, 73, 71, 20, 35, -4, -25, -25, -17,
    -- layer=2 filter=28 channel=13
    -26, -53, 0, -39, -134, -106, -64, -114, -33,
    -- layer=2 filter=28 channel=14
    3, 13, -12, -11, -8, -17, 14, -5, -10,
    -- layer=2 filter=28 channel=15
    -8, 5, -7, 5, 0, 39, -40, -26, 34,
    -- layer=2 filter=28 channel=16
    14, 28, -17, 13, 6, -62, -41, -34, -26,
    -- layer=2 filter=28 channel=17
    -19, 31, 88, -7, -22, 16, -60, -76, -69,
    -- layer=2 filter=28 channel=18
    39, -34, 47, 9, -16, -20, -20, -11, -9,
    -- layer=2 filter=28 channel=19
    -36, -48, 44, 0, -31, 17, -6, 6, -26,
    -- layer=2 filter=28 channel=20
    18, 31, 42, 16, 49, 3, -28, -18, -54,
    -- layer=2 filter=28 channel=21
    7, 19, 14, -3, 10, -10, -61, 0, 28,
    -- layer=2 filter=28 channel=22
    -22, -8, -1, -5, -34, 16, 14, 15, 17,
    -- layer=2 filter=28 channel=23
    18, 8, 2, 1, -37, -52, 14, -62, -66,
    -- layer=2 filter=28 channel=24
    6, 18, -7, -27, -14, -4, -56, -32, -19,
    -- layer=2 filter=28 channel=25
    19, 52, 58, -3, -12, 47, -40, 22, -2,
    -- layer=2 filter=28 channel=26
    46, -33, -45, 19, -46, 13, 91, -28, 40,
    -- layer=2 filter=28 channel=27
    -4, 15, -50, -50, -31, -21, -20, -65, -21,
    -- layer=2 filter=28 channel=28
    12, 27, -15, 19, 19, 6, -5, -22, -42,
    -- layer=2 filter=28 channel=29
    -10, -6, 43, -54, 1, 49, -37, 24, 39,
    -- layer=2 filter=28 channel=30
    -5, -14, -40, -5, 27, -26, -23, -42, 2,
    -- layer=2 filter=28 channel=31
    -51, -67, -35, 25, -19, -44, 66, 26, 24,
    -- layer=2 filter=29 channel=0
    42, 49, 43, 8, 19, 5, -13, 0, -19,
    -- layer=2 filter=29 channel=1
    25, -10, 10, 52, -1, -20, 18, -9, 1,
    -- layer=2 filter=29 channel=2
    -24, -49, -61, -30, -25, -13, -90, -100, -63,
    -- layer=2 filter=29 channel=3
    17, 11, 10, 38, 9, 10, 1, 31, -45,
    -- layer=2 filter=29 channel=4
    -41, -24, -36, 40, 14, -19, 27, 47, 23,
    -- layer=2 filter=29 channel=5
    29, 4, 9, 16, -14, 21, 20, -7, 20,
    -- layer=2 filter=29 channel=6
    -18, -11, -15, 3, 6, 1, -32, -16, -10,
    -- layer=2 filter=29 channel=7
    81, 59, 49, 7, -14, 13, -14, -3, -19,
    -- layer=2 filter=29 channel=8
    -5, 5, 23, -10, 27, 13, -17, 0, 29,
    -- layer=2 filter=29 channel=9
    -15, -62, -61, 15, -32, 53, 1, -55, -22,
    -- layer=2 filter=29 channel=10
    46, 43, 29, 31, 3, 6, 23, -1, -4,
    -- layer=2 filter=29 channel=11
    15, -4, 9, 10, -42, 23, -23, -26, -48,
    -- layer=2 filter=29 channel=12
    -27, -12, 5, -18, -42, -28, -104, -67, -148,
    -- layer=2 filter=29 channel=13
    -10, -34, -62, 34, 0, 21, 65, 30, 57,
    -- layer=2 filter=29 channel=14
    -4, -14, 14, -6, 3, 0, -17, -12, 6,
    -- layer=2 filter=29 channel=15
    -8, -6, 0, 6, -31, 0, -61, -48, -35,
    -- layer=2 filter=29 channel=16
    -24, -30, -24, 36, -7, 33, 37, 50, 19,
    -- layer=2 filter=29 channel=17
    26, -44, 26, 27, -9, 8, 3, 5, 31,
    -- layer=2 filter=29 channel=18
    27, 0, -15, -33, -16, 36, -44, -99, 0,
    -- layer=2 filter=29 channel=19
    -65, -48, -21, -10, -62, 0, -23, -25, 1,
    -- layer=2 filter=29 channel=20
    -55, -45, -32, 21, 12, 39, 41, 42, 81,
    -- layer=2 filter=29 channel=21
    24, 34, 20, 13, 8, 6, -42, -43, -51,
    -- layer=2 filter=29 channel=22
    -4, -23, -11, -2, -28, -45, -63, -60, -90,
    -- layer=2 filter=29 channel=23
    38, 21, 35, -5, 2, 6, -5, -9, 41,
    -- layer=2 filter=29 channel=24
    -3, -20, -3, -27, -5, 23, 24, 46, 52,
    -- layer=2 filter=29 channel=25
    17, -31, -28, 4, -6, 3, -12, -2, -9,
    -- layer=2 filter=29 channel=26
    33, 34, 38, 13, 17, 21, -12, -32, -30,
    -- layer=2 filter=29 channel=27
    29, 22, 13, 23, 27, -18, 4, 52, -4,
    -- layer=2 filter=29 channel=28
    -68, -52, -54, -5, -8, -22, -36, -22, -6,
    -- layer=2 filter=29 channel=29
    19, -15, 35, -7, 0, -31, -59, -55, -19,
    -- layer=2 filter=29 channel=30
    -51, -22, -51, -23, 12, 21, 7, 30, 16,
    -- layer=2 filter=29 channel=31
    49, 25, 31, 40, 10, -15, -20, 0, -33,
    -- layer=2 filter=30 channel=0
    -11, -12, -51, -4, -8, -14, 12, 3, -21,
    -- layer=2 filter=30 channel=1
    -28, 12, 5, -23, 12, -13, 15, 44, 18,
    -- layer=2 filter=30 channel=2
    -25, 4, 44, -39, -21, 11, -22, -27, -30,
    -- layer=2 filter=30 channel=3
    23, -43, 4, 47, 36, 29, -39, 44, 28,
    -- layer=2 filter=30 channel=4
    23, -8, -1, 10, -9, 39, -45, 2, 34,
    -- layer=2 filter=30 channel=5
    -37, -89, -6, -76, -64, 49, -139, -14, 65,
    -- layer=2 filter=30 channel=6
    -89, -40, -2, -66, -47, -1, -70, -56, 7,
    -- layer=2 filter=30 channel=7
    -51, -27, 10, -30, -6, 31, 32, -27, 25,
    -- layer=2 filter=30 channel=8
    13, -4, -17, 0, 27, -11, -2, 30, -27,
    -- layer=2 filter=30 channel=9
    -55, -9, 64, -61, -4, 17, 8, -6, -26,
    -- layer=2 filter=30 channel=10
    25, -19, -29, 14, -27, 3, 10, 1, -20,
    -- layer=2 filter=30 channel=11
    -3, 4, 16, -55, 23, 48, -46, -3, 45,
    -- layer=2 filter=30 channel=12
    35, 2, 42, -11, 8, 40, -3, -25, -16,
    -- layer=2 filter=30 channel=13
    -54, -2, 52, -27, -4, -52, 32, 2, 9,
    -- layer=2 filter=30 channel=14
    4, 16, -7, 7, -13, -13, 10, 21, 0,
    -- layer=2 filter=30 channel=15
    -72, 7, -6, -23, 35, 55, 39, -36, 37,
    -- layer=2 filter=30 channel=16
    -11, -1, 18, 13, 33, -24, 28, 34, -49,
    -- layer=2 filter=30 channel=17
    -28, -3, 15, -22, -15, 57, 14, -11, 28,
    -- layer=2 filter=30 channel=18
    -51, 2, 66, -54, 16, 26, -26, -14, -16,
    -- layer=2 filter=30 channel=19
    8, -35, -55, -26, -16, 14, -66, 48, -19,
    -- layer=2 filter=30 channel=20
    22, -8, 5, -25, -18, 6, -9, -17, 1,
    -- layer=2 filter=30 channel=21
    -119, -1, -28, -64, -22, -9, -1, -46, -8,
    -- layer=2 filter=30 channel=22
    -3, -9, 35, -43, -19, 7, -42, -57, -15,
    -- layer=2 filter=30 channel=23
    21, 22, 59, 51, 28, -16, 10, -14, -13,
    -- layer=2 filter=30 channel=24
    -12, 17, -9, -29, -10, 50, 30, 6, 26,
    -- layer=2 filter=30 channel=25
    -52, -25, -15, -25, -57, 63, -20, -15, 52,
    -- layer=2 filter=30 channel=26
    -24, -39, -2, -36, -33, 12, -44, -38, 0,
    -- layer=2 filter=30 channel=27
    -4, -8, 21, 24, -26, -46, -43, -35, 4,
    -- layer=2 filter=30 channel=28
    -12, 4, 20, -13, -4, 3, 2, 9, -33,
    -- layer=2 filter=30 channel=29
    -111, 2, 48, -102, -88, 19, -55, -42, 22,
    -- layer=2 filter=30 channel=30
    21, 30, -5, 23, -12, -31, 27, 33, 10,
    -- layer=2 filter=30 channel=31
    -33, 16, -13, 15, 26, -22, 19, 43, -45,
    -- layer=2 filter=31 channel=0
    -32, -31, -28, 2, -12, -32, -9, -27, -69,
    -- layer=2 filter=31 channel=1
    50, 54, 60, 30, 78, 65, 52, 22, 79,
    -- layer=2 filter=31 channel=2
    22, 34, 8, -66, -38, -56, -18, -3, 9,
    -- layer=2 filter=31 channel=3
    -39, -12, 18, 27, 9, -14, -11, -20, -12,
    -- layer=2 filter=31 channel=4
    27, 16, 2, 8, 2, -7, 5, 7, -17,
    -- layer=2 filter=31 channel=5
    19, 47, 36, 2, -6, 16, 25, 14, 7,
    -- layer=2 filter=31 channel=6
    2, -4, 45, -65, -112, -14, -9, -38, 18,
    -- layer=2 filter=31 channel=7
    -35, -27, -2, -23, -25, 10, -44, -45, -15,
    -- layer=2 filter=31 channel=8
    6, -20, -43, -3, -80, -43, -36, -58, -62,
    -- layer=2 filter=31 channel=9
    22, 11, 38, 8, 15, -2, 21, 33, 28,
    -- layer=2 filter=31 channel=10
    -45, -13, -81, -22, 29, -10, -12, -5, -42,
    -- layer=2 filter=31 channel=11
    32, 15, 39, -10, -59, -46, -15, -39, -79,
    -- layer=2 filter=31 channel=12
    -3, -12, 11, -85, -58, -45, 4, -14, -17,
    -- layer=2 filter=31 channel=13
    15, 10, 0, 17, 25, 11, -15, -6, 7,
    -- layer=2 filter=31 channel=14
    13, -11, 1, -19, 12, -19, -21, -17, -1,
    -- layer=2 filter=31 channel=15
    -15, -6, 59, -12, -78, -31, -11, 28, 10,
    -- layer=2 filter=31 channel=16
    31, 14, 12, 11, 20, -8, 3, -20, -53,
    -- layer=2 filter=31 channel=17
    -37, -19, 17, 1, -10, 47, 0, -37, 2,
    -- layer=2 filter=31 channel=18
    25, 37, 37, -9, 21, 41, 49, 29, 67,
    -- layer=2 filter=31 channel=19
    -51, -43, -20, 23, -37, -7, 56, -6, -45,
    -- layer=2 filter=31 channel=20
    31, -3, 36, 31, 29, 8, 0, -24, -23,
    -- layer=2 filter=31 channel=21
    0, 28, 35, -37, -75, -36, -26, -66, -54,
    -- layer=2 filter=31 channel=22
    41, 32, 35, -34, -69, -90, 4, -10, -44,
    -- layer=2 filter=31 channel=23
    -16, -9, 72, -37, 20, 31, 6, -33, 37,
    -- layer=2 filter=31 channel=24
    -2, -13, -5, -1, -14, -43, 0, 8, -34,
    -- layer=2 filter=31 channel=25
    30, -24, -9, -50, -59, -9, 13, -34, -27,
    -- layer=2 filter=31 channel=26
    -12, 4, 26, 6, 4, 45, 6, -50, 5,
    -- layer=2 filter=31 channel=27
    7, -2, 31, -8, 21, -1, -30, -12, 39,
    -- layer=2 filter=31 channel=28
    -22, -29, -29, -4, 9, -18, 12, 0, 5,
    -- layer=2 filter=31 channel=29
    -39, 4, 37, -13, -29, -30, -3, 40, 13,
    -- layer=2 filter=31 channel=30
    18, 0, -19, 9, 24, -37, -10, -2, -61,
    -- layer=2 filter=31 channel=31
    -24, 0, 6, 31, 17, -49, 0, 11, -35,
    -- layer=2 filter=32 channel=0
    9, 43, 41, -15, -10, 33, -17, 2, -6,
    -- layer=2 filter=32 channel=1
    30, 15, 68, 30, 49, 84, -7, 22, 10,
    -- layer=2 filter=32 channel=2
    -8, -55, -62, -6, -6, -15, 27, 47, 50,
    -- layer=2 filter=32 channel=3
    -37, -11, 3, -19, 11, 0, 16, 5, 12,
    -- layer=2 filter=32 channel=4
    -18, -30, -31, -23, -33, -19, -27, -15, -22,
    -- layer=2 filter=32 channel=5
    -90, -33, -32, -67, -113, -58, -4, -37, -29,
    -- layer=2 filter=32 channel=6
    -12, -38, -20, -43, -23, -8, -38, -14, 7,
    -- layer=2 filter=32 channel=7
    39, 16, 57, 5, -4, 38, 6, 3, -9,
    -- layer=2 filter=32 channel=8
    16, 19, 19, 14, 13, -10, -4, -4, -18,
    -- layer=2 filter=32 channel=9
    -74, -30, -73, -6, -51, -2, 8, 16, 50,
    -- layer=2 filter=32 channel=10
    17, 32, 23, 11, -4, 24, -16, 10, 6,
    -- layer=2 filter=32 channel=11
    27, 8, 16, -24, -30, -8, -19, -19, -28,
    -- layer=2 filter=32 channel=12
    -52, -58, -45, -14, 5, -21, -21, 13, 9,
    -- layer=2 filter=32 channel=13
    -85, -91, -140, -67, -86, -49, -67, 16, 58,
    -- layer=2 filter=32 channel=14
    13, 23, -4, -6, -11, -5, -12, -19, 19,
    -- layer=2 filter=32 channel=15
    -7, -4, -9, -34, -57, -16, -10, -9, 54,
    -- layer=2 filter=32 channel=16
    7, -17, -20, -5, 15, -12, -17, -7, 12,
    -- layer=2 filter=32 channel=17
    -22, -38, -43, -21, -103, -53, 0, -5, 0,
    -- layer=2 filter=32 channel=18
    -56, -52, -55, 5, -45, -22, 9, 44, 34,
    -- layer=2 filter=32 channel=19
    -12, 25, 5, -31, 18, 20, -41, 26, 63,
    -- layer=2 filter=32 channel=20
    -19, -13, -7, -15, -34, -23, -29, -37, -9,
    -- layer=2 filter=32 channel=21
    25, -11, 22, -36, -7, -21, 0, -46, 32,
    -- layer=2 filter=32 channel=22
    61, -17, 15, 17, 10, -23, -7, -13, 48,
    -- layer=2 filter=32 channel=23
    30, 21, 14, 6, 15, 9, 10, 22, -4,
    -- layer=2 filter=32 channel=24
    -45, -38, -22, -1, -58, -76, 20, 19, 70,
    -- layer=2 filter=32 channel=25
    -82, -44, -38, -52, -56, -52, -4, 36, 55,
    -- layer=2 filter=32 channel=26
    -7, -6, 12, 11, 12, 10, -1, -4, -54,
    -- layer=2 filter=32 channel=27
    -10, 8, -9, 1, 1, 16, 15, 36, -24,
    -- layer=2 filter=32 channel=28
    -1, 0, -21, 0, 39, -5, 12, 27, 32,
    -- layer=2 filter=32 channel=29
    -115, -86, -95, -58, -96, -53, -1, 24, 29,
    -- layer=2 filter=32 channel=30
    -22, -16, -22, -6, 14, -38, -4, -18, 44,
    -- layer=2 filter=32 channel=31
    47, 23, 37, 0, 10, -3, -18, -25, 22,
    -- layer=2 filter=33 channel=0
    21, -21, 22, -16, -35, -9, -22, -3, -7,
    -- layer=2 filter=33 channel=1
    -3, 22, 25, 0, -24, 21, 6, 27, -33,
    -- layer=2 filter=33 channel=2
    -54, -47, -61, -11, 35, 38, -5, -12, 3,
    -- layer=2 filter=33 channel=3
    -13, 5, 30, 25, 37, 20, -20, -9, -20,
    -- layer=2 filter=33 channel=4
    -43, -20, -33, 28, 55, 20, -9, -12, -2,
    -- layer=2 filter=33 channel=5
    -27, -33, -98, 42, -1, 5, 68, 57, 69,
    -- layer=2 filter=33 channel=6
    -33, -27, -37, -45, -20, -65, 4, -26, -3,
    -- layer=2 filter=33 channel=7
    59, 10, 39, -13, 15, -14, -26, -36, -24,
    -- layer=2 filter=33 channel=8
    -16, -3, 25, -39, -3, -25, -31, -6, -24,
    -- layer=2 filter=33 channel=9
    -59, -102, -118, 26, 2, 13, 58, 31, 52,
    -- layer=2 filter=33 channel=10
    16, -5, 33, -13, 24, 1, -44, 4, -5,
    -- layer=2 filter=33 channel=11
    -5, 29, -60, -52, -24, -37, 0, 7, 13,
    -- layer=2 filter=33 channel=12
    -54, -84, -70, -15, 1, -24, -29, -67, -99,
    -- layer=2 filter=33 channel=13
    -46, -82, -78, 12, -36, -38, 20, 43, 52,
    -- layer=2 filter=33 channel=14
    19, -3, 0, -15, 23, 6, 12, -17, 0,
    -- layer=2 filter=33 channel=15
    -69, -116, -96, -59, -74, -100, 56, -25, 61,
    -- layer=2 filter=33 channel=16
    8, 11, 32, 0, 9, -6, 5, -21, 0,
    -- layer=2 filter=33 channel=17
    -38, -46, -50, -6, 0, 5, 42, 5, 34,
    -- layer=2 filter=33 channel=18
    -10, -109, -61, 8, 33, 53, 2, 18, 54,
    -- layer=2 filter=33 channel=19
    -66, -24, -28, 28, 0, 15, 24, 59, -9,
    -- layer=2 filter=33 channel=20
    10, 13, 26, -15, -5, -9, 28, 30, 7,
    -- layer=2 filter=33 channel=21
    -35, -45, -43, -51, -76, -86, 27, -15, 5,
    -- layer=2 filter=33 channel=22
    -39, -64, -69, -45, -3, -5, 7, 11, 7,
    -- layer=2 filter=33 channel=23
    9, 5, 48, 41, 37, 14, -12, -28, -53,
    -- layer=2 filter=33 channel=24
    21, 7, -13, -23, -33, -9, 18, 11, 24,
    -- layer=2 filter=33 channel=25
    -67, -89, -97, -10, 4, 4, 66, 38, 67,
    -- layer=2 filter=33 channel=26
    20, 47, 44, -3, 16, 4, 23, 14, -18,
    -- layer=2 filter=33 channel=27
    -5, 34, -1, 31, 7, 31, 13, -2, -32,
    -- layer=2 filter=33 channel=28
    11, 20, 3, 33, 27, 11, -13, -46, -55,
    -- layer=2 filter=33 channel=29
    -117, -53, -75, -14, -17, 27, 62, 44, 29,
    -- layer=2 filter=33 channel=30
    -8, 14, -2, -24, -2, 0, 26, 24, 19,
    -- layer=2 filter=33 channel=31
    54, 17, 28, -17, 21, 6, 0, -17, 1,
    -- layer=2 filter=34 channel=0
    -7, 11, 5, -8, 1, -41, 11, 0, 15,
    -- layer=2 filter=34 channel=1
    20, 7, -29, -57, -32, -26, -20, 31, 24,
    -- layer=2 filter=34 channel=2
    -70, -42, -65, 20, 28, 27, 14, 31, 44,
    -- layer=2 filter=34 channel=3
    -4, 27, -29, 19, 7, 11, 24, 13, 11,
    -- layer=2 filter=34 channel=4
    37, -37, -5, 1, -2, -11, -5, -44, -27,
    -- layer=2 filter=34 channel=5
    6, -1, 12, 14, -13, 3, -62, -96, -27,
    -- layer=2 filter=34 channel=6
    6, 2, 29, 24, 22, 8, -45, -28, -43,
    -- layer=2 filter=34 channel=7
    -26, 32, -1, 32, 61, 21, 0, 30, 23,
    -- layer=2 filter=34 channel=8
    16, -17, 1, -51, -88, -10, 42, 1, 60,
    -- layer=2 filter=34 channel=9
    8, -27, -16, 3, 48, -1, -12, -31, -75,
    -- layer=2 filter=34 channel=10
    -14, -6, -23, 22, 19, -39, -3, 0, -34,
    -- layer=2 filter=34 channel=11
    50, 82, 61, -14, -32, -28, -55, -37, -12,
    -- layer=2 filter=34 channel=12
    -53, -18, -20, 83, 81, 66, -13, 15, 12,
    -- layer=2 filter=34 channel=13
    20, -43, -1, 32, -24, -2, -17, -9, -69,
    -- layer=2 filter=34 channel=14
    -11, -5, 2, -18, -9, 12, 4, -17, -18,
    -- layer=2 filter=34 channel=15
    31, 40, 44, -14, 49, 10, -6, 31, 40,
    -- layer=2 filter=34 channel=16
    -18, -75, 12, -5, -54, -29, 72, 9, 19,
    -- layer=2 filter=34 channel=17
    -28, 17, 33, -37, 39, 18, -11, 11, 0,
    -- layer=2 filter=34 channel=18
    -38, 16, -7, 25, 19, 1, -29, 38, 46,
    -- layer=2 filter=34 channel=19
    -7, 57, 32, -23, -22, -19, -4, -14, 27,
    -- layer=2 filter=34 channel=20
    57, -10, 2, -45, -56, -18, -16, -18, 5,
    -- layer=2 filter=34 channel=21
    -26, 26, 12, -23, -37, -16, 15, 52, 21,
    -- layer=2 filter=34 channel=22
    23, 117, 57, -8, 40, 54, -25, -12, 1,
    -- layer=2 filter=34 channel=23
    -46, 20, -36, 10, 20, 4, 26, 26, 6,
    -- layer=2 filter=34 channel=24
    56, 44, 57, -63, -4, 7, -8, 13, 1,
    -- layer=2 filter=34 channel=25
    6, 18, 18, -29, -22, 6, -47, -54, -30,
    -- layer=2 filter=34 channel=26
    -22, 16, -35, 13, 29, 23, -27, 18, -40,
    -- layer=2 filter=34 channel=27
    4, 11, -22, -10, 6, 46, -20, 20, -24,
    -- layer=2 filter=34 channel=28
    41, -25, -23, 35, -57, -49, 25, -28, -9,
    -- layer=2 filter=34 channel=29
    -1, -14, -7, -18, 1, 51, 30, 76, 42,
    -- layer=2 filter=34 channel=30
    57, 38, 41, -9, -76, -36, 46, -1, -26,
    -- layer=2 filter=34 channel=31
    -40, 32, 15, -33, 13, 9, -34, -3, -23,
    -- layer=2 filter=35 channel=0
    -15, 0, -28, 37, 31, 10, 4, 1, 34,
    -- layer=2 filter=35 channel=1
    -3, -13, -54, 33, 17, -41, 7, -16, 7,
    -- layer=2 filter=35 channel=2
    91, 49, 26, 21, 38, 27, -117, -113, -148,
    -- layer=2 filter=35 channel=3
    50, 6, -18, -3, -33, 4, -50, -39, 45,
    -- layer=2 filter=35 channel=4
    20, -22, -1, -3, 4, -8, 1, -14, 25,
    -- layer=2 filter=35 channel=5
    -14, -73, -29, -15, -32, 4, 51, 31, 67,
    -- layer=2 filter=35 channel=6
    39, 22, 26, -35, -29, -23, -1, -34, -36,
    -- layer=2 filter=35 channel=7
    25, -10, 10, -5, -3, -3, -46, -23, 4,
    -- layer=2 filter=35 channel=8
    21, 1, -2, 0, 6, -9, -19, -17, -4,
    -- layer=2 filter=35 channel=9
    -4, -2, 35, -14, 23, 16, 33, 29, 27,
    -- layer=2 filter=35 channel=10
    0, 14, -5, -16, -25, 9, -73, -32, -8,
    -- layer=2 filter=35 channel=11
    31, 0, 1, 27, 37, -25, 31, 24, -24,
    -- layer=2 filter=35 channel=12
    87, 56, 36, -31, -15, -34, -82, -59, -96,
    -- layer=2 filter=35 channel=13
    -17, -30, 28, -3, -25, 16, 5, 29, 23,
    -- layer=2 filter=35 channel=14
    -20, -4, -6, -6, -11, 11, 13, 5, -16,
    -- layer=2 filter=35 channel=15
    -15, 4, -46, -14, 9, -21, 26, 18, -17,
    -- layer=2 filter=35 channel=16
    3, 10, 28, 28, 25, 7, -10, 11, -31,
    -- layer=2 filter=35 channel=17
    -42, -43, -70, 46, 14, -6, -26, -53, 28,
    -- layer=2 filter=35 channel=18
    -8, -24, 18, 48, 43, 22, -25, 21, -29,
    -- layer=2 filter=35 channel=19
    -36, -57, -29, -11, -9, -31, -16, 14, -5,
    -- layer=2 filter=35 channel=20
    -44, -25, -23, 22, 49, 51, 51, 68, 51,
    -- layer=2 filter=35 channel=21
    -13, 22, 13, -2, 9, 0, 6, 9, -3,
    -- layer=2 filter=35 channel=22
    9, -20, -24, 1, 14, -56, -19, 4, -79,
    -- layer=2 filter=35 channel=23
    -23, -9, 55, 17, 19, 36, -152, -91, -117,
    -- layer=2 filter=35 channel=24
    -98, -68, -82, 39, 35, -1, 54, 32, 16,
    -- layer=2 filter=35 channel=25
    9, -17, -39, 22, 18, -3, 11, 4, 21,
    -- layer=2 filter=35 channel=26
    24, 10, 14, -56, -19, 12, -40, -7, 5,
    -- layer=2 filter=35 channel=27
    2, 28, 32, -12, 15, 18, -61, -92, -69,
    -- layer=2 filter=35 channel=28
    -2, -22, -5, -12, -39, -16, -28, -52, -1,
    -- layer=2 filter=35 channel=29
    63, 46, 32, 83, 20, 0, 0, 3, -29,
    -- layer=2 filter=35 channel=30
    -43, -32, -26, 26, 33, 15, 23, 48, 6,
    -- layer=2 filter=35 channel=31
    29, -2, 15, -9, -51, -15, -49, -51, -34,
    -- layer=2 filter=36 channel=0
    -54, -49, 5, -20, -22, -29, -5, -61, -51,
    -- layer=2 filter=36 channel=1
    59, 46, 19, -29, -40, 10, -94, -102, -56,
    -- layer=2 filter=36 channel=2
    56, 25, 25, -1, -27, 52, 33, 3, 56,
    -- layer=2 filter=36 channel=3
    -4, 12, -8, -5, -37, -31, -78, -36, -4,
    -- layer=2 filter=36 channel=4
    11, 0, -2, 19, -30, 0, -32, -2, 25,
    -- layer=2 filter=36 channel=5
    1, 40, 15, 1, -12, 16, 40, -10, -7,
    -- layer=2 filter=36 channel=6
    21, 47, 63, 7, -7, 46, 23, 4, 34,
    -- layer=2 filter=36 channel=7
    -1, 2, 25, -21, 51, 0, -109, -49, -69,
    -- layer=2 filter=36 channel=8
    12, 8, 14, 31, -46, -14, -26, -20, -21,
    -- layer=2 filter=36 channel=9
    1, 9, 41, -38, 20, 23, 16, 43, 47,
    -- layer=2 filter=36 channel=10
    -71, -42, -30, -50, -46, -28, -24, -39, -42,
    -- layer=2 filter=36 channel=11
    24, -4, 54, -15, 11, 47, 36, 5, 7,
    -- layer=2 filter=36 channel=12
    8, 27, 20, 0, -33, 8, -59, -8, 62,
    -- layer=2 filter=36 channel=13
    -4, -8, -34, -44, -6, -24, 29, 27, 2,
    -- layer=2 filter=36 channel=14
    7, -6, 0, -5, -12, -10, 19, -2, -25,
    -- layer=2 filter=36 channel=15
    7, 0, 36, 8, 17, -13, -6, 7, -23,
    -- layer=2 filter=36 channel=16
    33, 30, -16, -1, 38, 40, 18, 23, 12,
    -- layer=2 filter=36 channel=17
    42, 1, -33, -11, -37, -21, -57, -35, -27,
    -- layer=2 filter=36 channel=18
    8, 45, 13, -40, -18, -9, -3, -14, 23,
    -- layer=2 filter=36 channel=19
    2, 12, 3, 22, -17, 13, -28, -65, 23,
    -- layer=2 filter=36 channel=20
    0, 2, -24, 2, 5, -31, 25, 17, 4,
    -- layer=2 filter=36 channel=21
    18, 22, 55, -7, 3, 66, 16, 4, -7,
    -- layer=2 filter=36 channel=22
    40, 4, 8, 25, 44, 83, 48, -26, 0,
    -- layer=2 filter=36 channel=23
    -6, 13, -4, -58, -49, -31, -13, -70, -26,
    -- layer=2 filter=36 channel=24
    60, -29, 0, -34, -5, -29, -10, 7, 11,
    -- layer=2 filter=36 channel=25
    -2, -26, -5, 31, -19, 23, 41, 15, 37,
    -- layer=2 filter=36 channel=26
    4, 62, 74, -9, -5, 3, -35, 5, -33,
    -- layer=2 filter=36 channel=27
    -26, 15, 16, -74, -74, -38, -61, -72, -47,
    -- layer=2 filter=36 channel=28
    21, 62, -9, 42, 50, 14, 19, 16, 30,
    -- layer=2 filter=36 channel=29
    15, -16, -36, -25, -48, -28, -33, -73, 27,
    -- layer=2 filter=36 channel=30
    15, -21, -16, -8, 42, -34, 30, 2, -2,
    -- layer=2 filter=36 channel=31
    17, 15, 13, -46, 46, 26, -21, -22, -4,
    -- layer=2 filter=37 channel=0
    -17, 5, -22, 6, -21, -8, 28, 15, 21,
    -- layer=2 filter=37 channel=1
    -76, -14, -18, -19, -50, 56, 72, 62, 68,
    -- layer=2 filter=37 channel=2
    -31, 8, -18, 44, 3, -19, 70, 67, 35,
    -- layer=2 filter=37 channel=3
    24, 2, 24, 32, 35, -25, -40, -106, -31,
    -- layer=2 filter=37 channel=4
    12, 48, 40, 37, 42, 22, -34, -25, 25,
    -- layer=2 filter=37 channel=5
    30, -14, 25, -1, 17, -24, 28, 29, 7,
    -- layer=2 filter=37 channel=6
    -41, -3, -42, -25, -14, -31, 51, 48, 9,
    -- layer=2 filter=37 channel=7
    12, -26, -5, 21, -61, -22, 24, -48, -14,
    -- layer=2 filter=37 channel=8
    5, -9, 21, -14, 1, -22, 13, 40, 4,
    -- layer=2 filter=37 channel=9
    63, 40, 40, 34, 35, 46, 17, 33, 15,
    -- layer=2 filter=37 channel=10
    4, -1, 10, -15, 7, 52, -10, -59, -22,
    -- layer=2 filter=37 channel=11
    -69, -84, -48, 0, -45, -24, 17, -16, 36,
    -- layer=2 filter=37 channel=12
    2, -13, 0, 58, 16, 29, 11, 16, 5,
    -- layer=2 filter=37 channel=13
    53, 14, 0, -1, -11, 5, -5, 15, 24,
    -- layer=2 filter=37 channel=14
    -6, 3, 13, 10, -4, -9, -17, 4, 6,
    -- layer=2 filter=37 channel=15
    -6, -38, -44, 8, -40, -45, 71, 38, 58,
    -- layer=2 filter=37 channel=16
    7, 41, 19, 12, 8, 26, 11, 66, 16,
    -- layer=2 filter=37 channel=17
    12, 1, -33, -26, -41, -33, -26, -34, 2,
    -- layer=2 filter=37 channel=18
    -45, -76, -33, -51, -38, -39, 33, -22, -8,
    -- layer=2 filter=37 channel=19
    -16, -22, -6, -46, -40, 22, 22, -10, -22,
    -- layer=2 filter=37 channel=20
    21, 23, 7, -9, -8, 30, 0, 19, 32,
    -- layer=2 filter=37 channel=21
    -81, -16, -24, -12, -29, 33, 79, 62, 10,
    -- layer=2 filter=37 channel=22
    24, -15, -6, 3, -17, 31, 85, 13, 38,
    -- layer=2 filter=37 channel=23
    -4, -51, -20, 21, -43, 17, 25, -9, -40,
    -- layer=2 filter=37 channel=24
    35, -9, -9, 0, 8, -25, 47, 4, 38,
    -- layer=2 filter=37 channel=25
    35, 34, 10, 56, 2, 9, 21, 11, 9,
    -- layer=2 filter=37 channel=26
    -13, -61, 13, 25, -43, -21, 15, -10, 30,
    -- layer=2 filter=37 channel=27
    -9, -47, -23, 55, -21, -10, -15, -13, -55,
    -- layer=2 filter=37 channel=28
    12, 77, 36, -41, 23, 3, -19, 30, 16,
    -- layer=2 filter=37 channel=29
    -30, -17, -42, -27, -50, -27, 34, 14, 35,
    -- layer=2 filter=37 channel=30
    45, 62, -1, 12, 54, 9, 23, 25, 13,
    -- layer=2 filter=37 channel=31
    21, -17, -15, -11, -64, -12, 13, 1, 21,
    -- layer=2 filter=38 channel=0
    -25, -16, -7, -36, -9, -34, -15, -10, 3,
    -- layer=2 filter=38 channel=1
    6, 24, 6, 13, -30, -25, -6, -7, 2,
    -- layer=2 filter=38 channel=2
    -8, 15, 17, -26, -9, -26, 22, 2, 7,
    -- layer=2 filter=38 channel=3
    1, 9, 15, -14, -10, -23, 24, -27, -3,
    -- layer=2 filter=38 channel=4
    -8, -20, -8, -26, -35, -3, -23, -15, -17,
    -- layer=2 filter=38 channel=5
    -36, -12, -12, -38, 1, -17, -22, -31, -19,
    -- layer=2 filter=38 channel=6
    24, -11, -12, -5, -3, 5, -4, -27, 10,
    -- layer=2 filter=38 channel=7
    -17, -11, 7, 0, -13, 12, 11, 4, 9,
    -- layer=2 filter=38 channel=8
    -5, 9, -2, -5, -13, -26, 9, -7, 3,
    -- layer=2 filter=38 channel=9
    -47, -20, -44, -2, -21, -53, 4, -36, -48,
    -- layer=2 filter=38 channel=10
    -7, 8, -28, -16, -33, -2, -6, -6, -18,
    -- layer=2 filter=38 channel=11
    -16, 5, -10, 13, -8, 0, -24, -11, -7,
    -- layer=2 filter=38 channel=12
    -5, -8, 11, -1, -16, -11, 16, 8, -33,
    -- layer=2 filter=38 channel=13
    -21, -8, -38, -18, -27, -21, 10, -36, -26,
    -- layer=2 filter=38 channel=14
    -5, -8, 14, -1, -14, -15, 10, 1, -13,
    -- layer=2 filter=38 channel=15
    -40, -8, -27, -24, -29, -15, -32, -34, -37,
    -- layer=2 filter=38 channel=16
    4, -4, -5, -23, -7, 9, -3, 14, -1,
    -- layer=2 filter=38 channel=17
    -37, -20, 4, -24, 10, 16, 8, 21, -22,
    -- layer=2 filter=38 channel=18
    -20, -17, -9, 13, -18, -5, -10, -35, 7,
    -- layer=2 filter=38 channel=19
    -12, -44, -6, 19, -5, 11, 18, 10, -14,
    -- layer=2 filter=38 channel=20
    -28, -26, 5, -38, -1, 3, -4, -5, 2,
    -- layer=2 filter=38 channel=21
    3, -20, -8, 14, 0, 15, -1, -23, -9,
    -- layer=2 filter=38 channel=22
    -37, -23, -23, -22, -1, -10, -33, -10, -4,
    -- layer=2 filter=38 channel=23
    -31, 4, 31, -43, -23, 4, -26, 0, -2,
    -- layer=2 filter=38 channel=24
    -16, 3, 15, -33, 17, 19, -37, 21, 18,
    -- layer=2 filter=38 channel=25
    -25, -21, -26, -28, -9, 20, -42, -20, 0,
    -- layer=2 filter=38 channel=26
    -18, -21, 9, -33, -14, -16, 6, 12, -13,
    -- layer=2 filter=38 channel=27
    -7, -14, -2, -27, -64, 27, -34, -28, -42,
    -- layer=2 filter=38 channel=28
    24, 3, 1, 20, -32, -35, 20, -29, -8,
    -- layer=2 filter=38 channel=29
    -25, -24, 6, -31, -11, 11, -1, 1, -5,
    -- layer=2 filter=38 channel=30
    -20, 0, -34, 1, 1, -8, -2, 8, 6,
    -- layer=2 filter=38 channel=31
    3, -30, -29, 15, -7, -29, 6, -6, 6,
    -- layer=2 filter=39 channel=0
    9, 0, 9, -19, 14, 7, 5, 3, 2,
    -- layer=2 filter=39 channel=1
    8, 0, -10, 14, 5, -8, -5, -9, 0,
    -- layer=2 filter=39 channel=2
    11, -10, 9, -5, -14, -25, -19, -22, 2,
    -- layer=2 filter=39 channel=3
    -19, -9, 10, -15, -24, -21, 12, -24, -18,
    -- layer=2 filter=39 channel=4
    -3, 4, 9, -15, -1, 7, 3, 20, 6,
    -- layer=2 filter=39 channel=5
    -9, 13, 6, -15, 0, -6, -22, -8, 0,
    -- layer=2 filter=39 channel=6
    4, -5, 4, -9, -2, -9, 5, -13, 11,
    -- layer=2 filter=39 channel=7
    -26, 13, -5, 2, 1, 8, -10, 3, 10,
    -- layer=2 filter=39 channel=8
    -7, -19, -3, -9, 6, -22, 8, -23, -2,
    -- layer=2 filter=39 channel=9
    -8, -30, -7, 4, 0, -6, -7, 0, -14,
    -- layer=2 filter=39 channel=10
    3, -24, -24, 11, -18, 8, -20, -18, -2,
    -- layer=2 filter=39 channel=11
    -9, -19, -13, 7, 9, -18, -10, -21, -17,
    -- layer=2 filter=39 channel=12
    -19, 8, -28, -12, -24, -10, 0, 15, 6,
    -- layer=2 filter=39 channel=13
    14, -1, 16, -6, -21, -15, -16, 4, 1,
    -- layer=2 filter=39 channel=14
    -12, 6, -14, 4, 10, 17, 17, -16, -10,
    -- layer=2 filter=39 channel=15
    -14, 7, -1, 0, -21, 4, 13, 6, -5,
    -- layer=2 filter=39 channel=16
    7, -15, -1, -8, -16, -6, 15, 16, 2,
    -- layer=2 filter=39 channel=17
    -17, -15, 15, 20, -16, -5, -15, 16, -19,
    -- layer=2 filter=39 channel=18
    0, -25, 8, -20, 9, -18, -13, -21, 9,
    -- layer=2 filter=39 channel=19
    -15, -10, 21, -10, -5, 10, -14, -8, 18,
    -- layer=2 filter=39 channel=20
    -9, -24, -16, 5, -10, -11, 1, -4, -14,
    -- layer=2 filter=39 channel=21
    0, -19, -2, -26, -29, -13, -8, -1, -4,
    -- layer=2 filter=39 channel=22
    19, -17, 11, -8, -21, -16, 14, 14, 5,
    -- layer=2 filter=39 channel=23
    -15, -14, 0, 5, -15, -13, 12, 1, 18,
    -- layer=2 filter=39 channel=24
    13, -30, -8, -17, -1, -16, -30, -12, 4,
    -- layer=2 filter=39 channel=25
    -13, -16, -6, 14, 0, -18, -3, -1, -9,
    -- layer=2 filter=39 channel=26
    -8, 9, 7, 10, -6, -22, -4, -9, -2,
    -- layer=2 filter=39 channel=27
    -18, 2, 14, -22, -21, 9, -15, 12, -12,
    -- layer=2 filter=39 channel=28
    -18, -21, 7, -4, -8, -22, -7, -26, -23,
    -- layer=2 filter=39 channel=29
    -20, 14, -6, -14, -2, -6, 12, 3, -6,
    -- layer=2 filter=39 channel=30
    -10, -7, 1, 6, 0, -21, -3, -13, -16,
    -- layer=2 filter=39 channel=31
    -29, 11, 3, 5, -7, 3, -9, 11, 8,
    -- layer=2 filter=40 channel=0
    -71, -83, -33, -42, -41, -12, 9, 32, -20,
    -- layer=2 filter=40 channel=1
    32, 31, 43, 35, 55, 43, 35, 5, 1,
    -- layer=2 filter=40 channel=2
    -57, -7, 9, 3, -1, -29, -24, -17, -17,
    -- layer=2 filter=40 channel=3
    -25, 28, 7, -13, 45, -57, 4, 21, 15,
    -- layer=2 filter=40 channel=4
    7, 19, -15, -8, 28, -17, -33, 21, -39,
    -- layer=2 filter=40 channel=5
    13, 41, 13, 26, 33, -45, -7, -32, -52,
    -- layer=2 filter=40 channel=6
    -30, -3, -46, -5, -31, -47, 14, -24, -56,
    -- layer=2 filter=40 channel=7
    -31, -49, -31, -10, -9, 11, 33, -1, 18,
    -- layer=2 filter=40 channel=8
    -40, -5, -41, -25, -24, -51, -13, 12, -27,
    -- layer=2 filter=40 channel=9
    37, 28, 11, 0, -27, 25, 17, -46, 18,
    -- layer=2 filter=40 channel=10
    -48, -66, -26, -11, 12, -4, -21, 20, -13,
    -- layer=2 filter=40 channel=11
    -47, -20, 36, -29, -20, -49, -22, -29, -32,
    -- layer=2 filter=40 channel=12
    -29, -8, -39, 18, 9, -28, 30, -5, 27,
    -- layer=2 filter=40 channel=13
    47, -35, 8, 12, -19, 52, -19, 12, 6,
    -- layer=2 filter=40 channel=14
    15, 6, -7, 12, 4, 6, -7, -4, -5,
    -- layer=2 filter=40 channel=15
    -44, -16, -11, 35, -37, 36, 10, -54, -30,
    -- layer=2 filter=40 channel=16
    0, -5, 4, -27, -48, 8, 4, -34, 47,
    -- layer=2 filter=40 channel=17
    38, 27, 51, 2, -3, -5, 21, -33, 32,
    -- layer=2 filter=40 channel=18
    26, 47, 23, 4, 48, 34, 10, -15, -2,
    -- layer=2 filter=40 channel=19
    -46, -8, 32, -42, 16, 76, -14, 0, 14,
    -- layer=2 filter=40 channel=20
    27, 30, -16, 16, -35, -40, 8, -9, -14,
    -- layer=2 filter=40 channel=21
    -72, -96, 12, -6, -22, 12, 10, -24, -55,
    -- layer=2 filter=40 channel=22
    13, -61, 12, -53, -52, -47, -47, -23, 1,
    -- layer=2 filter=40 channel=23
    -14, -43, 0, -14, -27, 5, 56, 9, 13,
    -- layer=2 filter=40 channel=24
    58, 0, 23, 10, -22, 56, 26, -24, 37,
    -- layer=2 filter=40 channel=25
    -7, 27, 27, 1, 13, -16, -28, 18, -4,
    -- layer=2 filter=40 channel=26
    1, -10, -26, 10, 6, 6, 77, 6, 36,
    -- layer=2 filter=40 channel=27
    8, -19, -7, -3, 19, 15, 35, 14, 17,
    -- layer=2 filter=40 channel=28
    -47, 22, -12, 0, 25, -27, -5, -23, -15,
    -- layer=2 filter=40 channel=29
    -27, 43, 33, 4, 63, 1, 7, 12, -1,
    -- layer=2 filter=40 channel=30
    11, 1, 32, -22, -5, 17, -4, -12, 37,
    -- layer=2 filter=40 channel=31
    -7, -84, -31, 6, 5, -15, 14, 21, 9,
    -- layer=2 filter=41 channel=0
    -23, 36, 26, -23, -10, -10, -21, -8, -10,
    -- layer=2 filter=41 channel=1
    20, 7, -38, 75, -23, 22, 70, -10, -9,
    -- layer=2 filter=41 channel=2
    -33, -43, -22, -3, -34, -20, -53, -84, -126,
    -- layer=2 filter=41 channel=3
    28, 27, -57, 37, 26, -60, -1, 56, -62,
    -- layer=2 filter=41 channel=4
    13, 66, -11, 24, 42, -22, 12, 65, -26,
    -- layer=2 filter=41 channel=5
    8, 34, -35, 18, 43, -43, 18, 42, -31,
    -- layer=2 filter=41 channel=6
    27, 53, -15, -25, 4, -36, -21, 2, -68,
    -- layer=2 filter=41 channel=7
    -26, 26, 5, -19, 18, 15, -17, 21, -14,
    -- layer=2 filter=41 channel=8
    26, 16, -40, 0, 11, -58, 28, 39, -10,
    -- layer=2 filter=41 channel=9
    -26, -13, 23, -6, -52, 36, -17, -32, 22,
    -- layer=2 filter=41 channel=10
    -8, 41, 13, 18, -6, 19, -58, -10, -33,
    -- layer=2 filter=41 channel=11
    64, 39, 10, -1, -23, -39, -44, -51, -56,
    -- layer=2 filter=41 channel=12
    -12, -24, -14, -30, -36, -9, -59, -45, -50,
    -- layer=2 filter=41 channel=13
    -7, 78, 54, 6, -2, 48, 10, -20, 67,
    -- layer=2 filter=41 channel=14
    14, 17, -6, -4, 13, 20, 7, 10, -5,
    -- layer=2 filter=41 channel=15
    16, 10, 53, 7, -55, 3, 12, -12, -9,
    -- layer=2 filter=41 channel=16
    -13, -51, 63, -1, -49, 57, -13, 4, 52,
    -- layer=2 filter=41 channel=17
    36, -54, -8, 56, 31, -10, 34, 20, -12,
    -- layer=2 filter=41 channel=18
    -13, -75, -11, 6, -29, 34, 3, 39, 72,
    -- layer=2 filter=41 channel=19
    -29, -12, -17, -3, -24, 11, 32, -38, -6,
    -- layer=2 filter=41 channel=20
    -32, -4, -14, -11, 20, -26, 0, -6, 0,
    -- layer=2 filter=41 channel=21
    3, 13, 9, -6, -7, -32, -35, -3, -32,
    -- layer=2 filter=41 channel=22
    61, 21, 48, 10, -3, -28, -18, -48, -24,
    -- layer=2 filter=41 channel=23
    5, -25, 13, -11, 7, 8, -61, -21, 41,
    -- layer=2 filter=41 channel=24
    57, -53, -35, -5, -9, 15, 46, -14, 18,
    -- layer=2 filter=41 channel=25
    -8, 20, -19, 27, 19, -24, 1, 13, -41,
    -- layer=2 filter=41 channel=26
    -4, 32, -2, -1, 5, -4, -17, 29, -18,
    -- layer=2 filter=41 channel=27
    -3, 16, -12, 3, 5, 28, 7, -10, 22,
    -- layer=2 filter=41 channel=28
    -7, -24, 8, 13, 5, -22, 3, -2, -13,
    -- layer=2 filter=41 channel=29
    3, -35, -17, -30, -52, -43, -64, -46, -77,
    -- layer=2 filter=41 channel=30
    -4, -1, 33, -25, -8, 47, -39, -31, 54,
    -- layer=2 filter=41 channel=31
    9, -1, 3, 14, -48, 41, -40, -29, 12,
    -- layer=2 filter=42 channel=0
    -23, -19, 40, 21, 12, -3, -26, -14, 16,
    -- layer=2 filter=42 channel=1
    -10, 32, 20, 46, -1, -17, 29, -11, -35,
    -- layer=2 filter=42 channel=2
    31, 14, 2, -87, -50, 46, -26, 12, -15,
    -- layer=2 filter=42 channel=3
    18, 16, -12, -41, -5, -24, -10, 22, -55,
    -- layer=2 filter=42 channel=4
    38, -51, -6, -25, -50, -51, 39, 10, 22,
    -- layer=2 filter=42 channel=5
    25, -30, 3, 2, 8, 9, 23, 15, 46,
    -- layer=2 filter=42 channel=6
    22, 13, 25, -19, -33, 8, -3, 10, 5,
    -- layer=2 filter=42 channel=7
    -18, -3, 35, -7, 0, -14, -17, -14, -22,
    -- layer=2 filter=42 channel=8
    -2, -36, -43, 7, 2, -36, -35, 29, 23,
    -- layer=2 filter=42 channel=9
    -3, 22, 33, -26, -29, 21, -9, -36, 8,
    -- layer=2 filter=42 channel=10
    6, -32, -2, 22, -2, -25, 6, 2, 13,
    -- layer=2 filter=42 channel=11
    40, 36, 13, -25, -4, -20, 17, 10, -2,
    -- layer=2 filter=42 channel=12
    13, 2, -21, -67, -68, -59, 40, 10, 5,
    -- layer=2 filter=42 channel=13
    -10, -6, 4, 32, -43, 19, 28, 16, 25,
    -- layer=2 filter=42 channel=14
    2, 2, -1, 17, 1, 6, -3, -4, 12,
    -- layer=2 filter=42 channel=15
    0, 20, 0, 18, -2, 1, -4, -20, -8,
    -- layer=2 filter=42 channel=16
    -9, 0, -36, -16, -35, -39, 30, 0, 48,
    -- layer=2 filter=42 channel=17
    43, -8, 20, -3, 30, 4, 10, -10, 21,
    -- layer=2 filter=42 channel=18
    37, -5, 9, -1, 2, 55, -2, 19, 52,
    -- layer=2 filter=42 channel=19
    21, -82, -24, 12, -75, -25, 27, 3, 5,
    -- layer=2 filter=42 channel=20
    -16, -41, -13, 21, 9, -2, 9, 28, 5,
    -- layer=2 filter=42 channel=21
    11, 18, -16, -3, -3, 42, 33, 22, 38,
    -- layer=2 filter=42 channel=22
    54, 34, -35, -90, -74, -21, -7, -20, -31,
    -- layer=2 filter=42 channel=23
    -20, 9, 21, -46, -46, -13, -44, -32, 20,
    -- layer=2 filter=42 channel=24
    46, -21, 25, 81, 20, -14, 0, -20, -20,
    -- layer=2 filter=42 channel=25
    44, 43, 27, 23, -27, 8, -22, -5, -21,
    -- layer=2 filter=42 channel=26
    -18, 18, 7, -7, -26, -5, -37, -3, -17,
    -- layer=2 filter=42 channel=27
    -1, 0, -10, -32, -36, 35, -15, -6, 16,
    -- layer=2 filter=42 channel=28
    16, -21, -42, -29, -68, -52, 33, -2, 21,
    -- layer=2 filter=42 channel=29
    81, 113, 15, 30, 24, 106, 30, 35, -35,
    -- layer=2 filter=42 channel=30
    -25, -33, -20, 42, -13, -14, -25, 21, 12,
    -- layer=2 filter=42 channel=31
    -18, -19, 8, 31, 33, -18, 11, -6, -17,
    -- layer=2 filter=43 channel=0
    -35, 7, -23, -53, 12, -7, -29, 0, -19,
    -- layer=2 filter=43 channel=1
    -41, -88, 9, -32, 6, 12, -55, -1, 32,
    -- layer=2 filter=43 channel=2
    -13, -38, 49, -67, -85, 36, 27, 20, 105,
    -- layer=2 filter=43 channel=3
    -81, 24, 18, -43, 24, 4, -18, 2, -1,
    -- layer=2 filter=43 channel=4
    7, -5, 5, 19, 1, -3, 29, 0, 25,
    -- layer=2 filter=43 channel=5
    19, 66, -87, 28, -1, -88, 0, -77, -178,
    -- layer=2 filter=43 channel=6
    -43, 4, 23, -35, -35, -60, -10, 10, -13,
    -- layer=2 filter=43 channel=7
    -19, 2, 25, 27, 0, -7, -10, 7, -26,
    -- layer=2 filter=43 channel=8
    -56, -1, 26, -40, -3, 64, -17, 23, 87,
    -- layer=2 filter=43 channel=9
    62, 26, 19, 53, -5, -76, 14, -14, -47,
    -- layer=2 filter=43 channel=10
    -1, -19, -46, 10, -7, -7, 19, -13, -24,
    -- layer=2 filter=43 channel=11
    38, 23, 41, -5, -35, -9, -21, -51, -17,
    -- layer=2 filter=43 channel=12
    -49, -58, 15, -62, -46, 48, 6, 87, 151,
    -- layer=2 filter=43 channel=13
    19, 14, -6, 33, -1, -69, 30, -20, -83,
    -- layer=2 filter=43 channel=14
    -19, 12, 1, -6, 1, -21, 2, -18, -8,
    -- layer=2 filter=43 channel=15
    -3, 15, -38, -10, 8, -42, -3, 13, -60,
    -- layer=2 filter=43 channel=16
    1, 0, 50, 9, -16, 19, 28, 8, 54,
    -- layer=2 filter=43 channel=17
    5, 60, -49, -14, 22, -52, 13, 6, 14,
    -- layer=2 filter=43 channel=18
    17, 11, 8, -3, -18, 14, -9, -4, -12,
    -- layer=2 filter=43 channel=19
    -52, -17, -80, -64, 8, -3, -33, 5, -32,
    -- layer=2 filter=43 channel=20
    24, 23, -4, 18, -23, 4, -14, -23, -4,
    -- layer=2 filter=43 channel=21
    -9, -17, -3, -19, -39, -25, 4, -28, 4,
    -- layer=2 filter=43 channel=22
    20, 23, 38, -22, -43, -35, -13, 42, 22,
    -- layer=2 filter=43 channel=23
    -7, -25, 13, -103, -23, 17, -45, 0, 23,
    -- layer=2 filter=43 channel=24
    1, -19, -47, -49, -22, 11, -29, -32, -6,
    -- layer=2 filter=43 channel=25
    21, 18, -28, 0, 2, -43, -11, -27, -78,
    -- layer=2 filter=43 channel=26
    -43, 17, 40, -13, 34, 18, -14, 23, 23,
    -- layer=2 filter=43 channel=27
    -15, 0, 18, -22, 13, -15, -34, 1, 8,
    -- layer=2 filter=43 channel=28
    -6, -4, 60, 35, 1, 44, 55, 15, 61,
    -- layer=2 filter=43 channel=29
    -43, -12, 49, -42, -13, 17, -33, 11, 56,
    -- layer=2 filter=43 channel=30
    22, -40, 9, 17, -10, 21, 24, -42, 15,
    -- layer=2 filter=43 channel=31
    -33, -29, 13, -8, 12, 63, -2, 1, 20,
    -- layer=2 filter=44 channel=0
    -19, -22, -10, -22, -5, -11, -23, -7, -17,
    -- layer=2 filter=44 channel=1
    -26, -10, 13, -14, -3, 5, -13, -1, -25,
    -- layer=2 filter=44 channel=2
    -13, -11, 18, -4, 3, 11, 14, 9, -18,
    -- layer=2 filter=44 channel=3
    -6, 9, 0, 13, 6, -22, 13, 15, -14,
    -- layer=2 filter=44 channel=4
    -8, 7, 8, 16, -10, -13, -18, 2, 8,
    -- layer=2 filter=44 channel=5
    -1, -29, -3, -24, 4, -7, 6, -21, -33,
    -- layer=2 filter=44 channel=6
    -14, -1, -28, 9, -3, 5, 12, -5, 15,
    -- layer=2 filter=44 channel=7
    1, 10, -24, -20, -1, -3, -10, 0, 4,
    -- layer=2 filter=44 channel=8
    11, -22, -8, -23, 10, 5, -8, -10, -7,
    -- layer=2 filter=44 channel=9
    -22, 16, 3, 10, -15, 15, 5, -5, 0,
    -- layer=2 filter=44 channel=10
    -1, 5, -3, -11, 13, 3, 4, -18, -18,
    -- layer=2 filter=44 channel=11
    15, -19, 10, 12, 13, 4, 6, -4, -1,
    -- layer=2 filter=44 channel=12
    -10, 9, -6, -1, 3, -20, 2, -10, 6,
    -- layer=2 filter=44 channel=13
    -14, 3, -22, -7, -29, -10, -5, -10, -1,
    -- layer=2 filter=44 channel=14
    13, 19, -19, 15, -6, -17, -3, -17, 7,
    -- layer=2 filter=44 channel=15
    -9, -19, 4, -12, -23, 2, -5, -15, 14,
    -- layer=2 filter=44 channel=16
    0, -24, 10, 4, -23, -2, 13, 14, 6,
    -- layer=2 filter=44 channel=17
    10, -27, 5, -26, 16, -19, -1, -11, 10,
    -- layer=2 filter=44 channel=18
    -14, -8, -28, 0, -7, -16, 4, -6, -31,
    -- layer=2 filter=44 channel=19
    -10, 3, 18, -11, 19, -10, -4, -8, -3,
    -- layer=2 filter=44 channel=20
    17, 14, -20, -18, 12, -19, 6, 0, -16,
    -- layer=2 filter=44 channel=21
    23, 10, -27, -14, 16, 20, -13, 14, 3,
    -- layer=2 filter=44 channel=22
    -12, 1, -19, -12, 4, -19, -25, 6, -22,
    -- layer=2 filter=44 channel=23
    8, -16, -19, 16, -19, -7, 1, -16, 13,
    -- layer=2 filter=44 channel=24
    -14, -8, -23, 4, -5, 2, -1, -20, -15,
    -- layer=2 filter=44 channel=25
    11, -5, -18, 3, 8, 2, -10, -9, -7,
    -- layer=2 filter=44 channel=26
    -19, -22, 6, -23, 1, 17, 5, 6, -10,
    -- layer=2 filter=44 channel=27
    5, -16, -5, -6, 6, -1, 11, -3, 21,
    -- layer=2 filter=44 channel=28
    -1, 10, 11, 11, -12, -7, -16, 2, 4,
    -- layer=2 filter=44 channel=29
    -6, -7, -20, -12, -15, 8, -13, 5, -5,
    -- layer=2 filter=44 channel=30
    -23, -14, -16, -14, 5, -1, -21, -9, 6,
    -- layer=2 filter=44 channel=31
    -22, -10, -6, 5, -1, -16, 1, 15, -9,
    -- layer=2 filter=45 channel=0
    -7, 12, -13, -11, -10, 15, -2, -2, -4,
    -- layer=2 filter=45 channel=1
    0, 4, 8, -11, 0, -28, -21, -8, -5,
    -- layer=2 filter=45 channel=2
    -10, 4, -4, -18, -20, -25, -16, 20, 3,
    -- layer=2 filter=45 channel=3
    -20, -14, -13, -3, -20, 3, 10, 12, -19,
    -- layer=2 filter=45 channel=4
    -17, -11, -15, 13, -1, -15, 2, -10, 2,
    -- layer=2 filter=45 channel=5
    -1, 9, 0, 12, -11, 19, -1, -18, -2,
    -- layer=2 filter=45 channel=6
    6, -17, -1, 0, -14, 4, -8, -9, -3,
    -- layer=2 filter=45 channel=7
    2, -30, -2, -10, -15, 20, 11, -4, 19,
    -- layer=2 filter=45 channel=8
    8, 3, 5, -18, 3, -11, 6, -22, 3,
    -- layer=2 filter=45 channel=9
    -1, -5, -16, -4, -19, 0, -9, -32, 13,
    -- layer=2 filter=45 channel=10
    -26, 8, -7, -12, -17, -14, 18, -13, -5,
    -- layer=2 filter=45 channel=11
    20, -20, -21, -48, -13, 16, -13, -16, 11,
    -- layer=2 filter=45 channel=12
    0, 18, -3, 0, 2, -13, -34, 5, -18,
    -- layer=2 filter=45 channel=13
    3, -12, 13, 20, 8, -10, -27, -18, 30,
    -- layer=2 filter=45 channel=14
    -17, 10, -3, -9, 14, -12, 6, 3, -4,
    -- layer=2 filter=45 channel=15
    5, -17, 5, 3, 9, 15, 0, -5, -17,
    -- layer=2 filter=45 channel=16
    -19, -11, 15, -10, -19, -14, 5, -34, -15,
    -- layer=2 filter=45 channel=17
    -20, 12, -15, -2, -9, 6, -29, 14, 1,
    -- layer=2 filter=45 channel=18
    12, -7, 3, -15, -2, -26, -22, -2, 27,
    -- layer=2 filter=45 channel=19
    0, -7, -4, -9, -16, -33, 15, 24, -2,
    -- layer=2 filter=45 channel=20
    -22, 9, -26, -30, 5, 0, 0, -18, -17,
    -- layer=2 filter=45 channel=21
    -18, 2, -18, -11, -20, 8, -25, -5, 8,
    -- layer=2 filter=45 channel=22
    0, -8, 4, 1, -18, -4, -38, -8, 0,
    -- layer=2 filter=45 channel=23
    -17, -5, -15, -12, -27, -27, 3, 4, 17,
    -- layer=2 filter=45 channel=24
    -14, -33, -16, -13, -5, 8, -30, -41, -21,
    -- layer=2 filter=45 channel=25
    -9, -9, -15, 11, 15, 3, -36, 0, 13,
    -- layer=2 filter=45 channel=26
    -25, -26, -21, -15, -5, -5, -25, -1, -15,
    -- layer=2 filter=45 channel=27
    2, -11, -7, -1, -8, -13, -21, -7, -20,
    -- layer=2 filter=45 channel=28
    10, -32, 6, -10, -3, 7, 6, 0, -24,
    -- layer=2 filter=45 channel=29
    -25, 7, 23, 6, 2, -22, -3, 1, -27,
    -- layer=2 filter=45 channel=30
    17, -17, -19, 8, 5, 5, -13, -20, 2,
    -- layer=2 filter=45 channel=31
    3, -12, -36, 0, -16, -17, 2, 5, -14,
    -- layer=2 filter=46 channel=0
    34, 31, 28, 0, -1, 21, 22, -4, 26,
    -- layer=2 filter=46 channel=1
    -22, -58, -60, -9, -56, -51, -35, -88, -91,
    -- layer=2 filter=46 channel=2
    30, 20, 14, -40, -30, -16, -12, -11, -20,
    -- layer=2 filter=46 channel=3
    -2, 10, 3, 10, -18, 11, 50, 30, 26,
    -- layer=2 filter=46 channel=4
    6, 29, 5, -5, -19, -12, 1, 29, 1,
    -- layer=2 filter=46 channel=5
    -53, -24, 2, -17, 1, 1, 20, 2, 10,
    -- layer=2 filter=46 channel=6
    -19, -22, 21, -7, 31, 20, -26, -75, -23,
    -- layer=2 filter=46 channel=7
    27, 7, 22, 32, 26, 27, 42, 10, 8,
    -- layer=2 filter=46 channel=8
    33, 38, 38, 7, 18, 14, 31, 38, -20,
    -- layer=2 filter=46 channel=9
    7, -4, -2, -26, 11, -5, -18, 14, -32,
    -- layer=2 filter=46 channel=10
    -1, 51, 28, 4, 18, 24, 31, 24, 36,
    -- layer=2 filter=46 channel=11
    -9, -27, 20, -17, 14, 16, 3, -40, 14,
    -- layer=2 filter=46 channel=12
    17, 0, 0, -73, -63, -32, -40, -37, -37,
    -- layer=2 filter=46 channel=13
    -41, -18, -50, 23, 54, -16, 14, 17, -3,
    -- layer=2 filter=46 channel=14
    6, -13, -9, 15, 0, 17, -17, 0, -15,
    -- layer=2 filter=46 channel=15
    -15, -18, 21, -28, -20, -32, -50, -84, -63,
    -- layer=2 filter=46 channel=16
    8, 23, 7, -32, -21, -13, -24, -17, 6,
    -- layer=2 filter=46 channel=17
    0, 10, -37, 20, -46, -5, -10, -93, -28,
    -- layer=2 filter=46 channel=18
    -58, -2, -63, -35, 4, -19, 8, -9, 11,
    -- layer=2 filter=46 channel=19
    -43, -28, -22, -33, 0, 4, -27, 1, -39,
    -- layer=2 filter=46 channel=20
    -15, -19, -22, 24, 32, 18, 12, 24, -8,
    -- layer=2 filter=46 channel=21
    17, 12, 24, -12, 0, 8, -52, -84, -26,
    -- layer=2 filter=46 channel=22
    9, 18, 29, 17, 22, 36, -70, -19, -25,
    -- layer=2 filter=46 channel=23
    13, -1, 1, -21, -3, -25, -36, 13, -2,
    -- layer=2 filter=46 channel=24
    -55, -24, -11, 11, -41, 12, -10, -51, 1,
    -- layer=2 filter=46 channel=25
    -16, 4, 28, 16, -33, -24, -5, -39, -24,
    -- layer=2 filter=46 channel=26
    25, 1, 13, 17, -11, 24, 40, 34, 52,
    -- layer=2 filter=46 channel=27
    9, 4, 1, -17, -18, 14, -3, -23, -5,
    -- layer=2 filter=46 channel=28
    11, 6, 28, -9, -4, -5, -1, 25, 23,
    -- layer=2 filter=46 channel=29
    -8, 10, 12, 8, -4, -21, -11, -30, -6,
    -- layer=2 filter=46 channel=30
    -20, 1, 13, -29, -27, 5, -87, -29, -5,
    -- layer=2 filter=46 channel=31
    37, 2, 19, 37, 12, 43, 66, 61, 39,
    -- layer=2 filter=47 channel=0
    -26, -28, -27, 7, -11, -26, 4, -7, 17,
    -- layer=2 filter=47 channel=1
    20, 47, 27, 38, -20, -13, -33, -39, 45,
    -- layer=2 filter=47 channel=2
    7, 11, -46, 29, 14, 3, 59, 22, 20,
    -- layer=2 filter=47 channel=3
    22, 4, -16, 5, 4, -22, 11, 39, 26,
    -- layer=2 filter=47 channel=4
    40, -21, 25, 3, 19, -12, -11, -5, -16,
    -- layer=2 filter=47 channel=5
    64, 20, -6, 37, 0, -25, -6, -33, -5,
    -- layer=2 filter=47 channel=6
    -12, -58, -30, 1, -45, -28, -16, -40, 0,
    -- layer=2 filter=47 channel=7
    -36, -31, -62, -57, -1, -21, -15, -23, 32,
    -- layer=2 filter=47 channel=8
    -39, -29, -89, -56, -34, -48, -4, -32, -47,
    -- layer=2 filter=47 channel=9
    3, 9, 72, 12, 14, 11, 25, 45, 38,
    -- layer=2 filter=47 channel=10
    -42, -20, -48, 4, -7, 3, -10, 11, 22,
    -- layer=2 filter=47 channel=11
    -92, -132, -81, -52, -82, 15, -12, -2, 24,
    -- layer=2 filter=47 channel=12
    -27, -43, -96, 12, -18, -7, 32, 41, -16,
    -- layer=2 filter=47 channel=13
    -9, -37, 29, -17, -1, 9, 1, -11, 52,
    -- layer=2 filter=47 channel=14
    10, -13, -5, 11, 12, -16, 0, -17, -16,
    -- layer=2 filter=47 channel=15
    -64, -71, -16, -23, -55, -20, -40, -44, 0,
    -- layer=2 filter=47 channel=16
    11, -2, -3, 0, 20, 2, 0, -2, 17,
    -- layer=2 filter=47 channel=17
    45, 31, -16, 22, 24, -16, 8, -38, -1,
    -- layer=2 filter=47 channel=18
    21, 30, 31, 1, -28, 61, 9, 8, -5,
    -- layer=2 filter=47 channel=19
    31, 9, -7, 10, 46, -37, -11, -11, -27,
    -- layer=2 filter=47 channel=20
    42, -4, 11, 48, 18, 16, 21, -10, 25,
    -- layer=2 filter=47 channel=21
    -35, -73, -59, -29, -33, -8, -4, -61, 2,
    -- layer=2 filter=47 channel=22
    -82, -103, -66, -34, -74, 10, 0, -42, -9,
    -- layer=2 filter=47 channel=23
    -30, -35, -51, 17, -5, -8, 33, 54, 10,
    -- layer=2 filter=47 channel=24
    0, -22, -17, 9, -5, -14, 9, -12, 15,
    -- layer=2 filter=47 channel=25
    12, 10, -13, 47, 9, 12, 19, 31, 22,
    -- layer=2 filter=47 channel=26
    -27, -15, -51, 19, 9, -8, 21, 43, 21,
    -- layer=2 filter=47 channel=27
    -39, -10, -31, -31, -13, -19, 51, 27, 2,
    -- layer=2 filter=47 channel=28
    24, 23, 0, 17, 23, 21, 17, 10, 33,
    -- layer=2 filter=47 channel=29
    1, -2, -32, 38, -3, -1, 78, 44, 23,
    -- layer=2 filter=47 channel=30
    -21, -4, 16, 16, 0, 9, -17, -5, 7,
    -- layer=2 filter=47 channel=31
    -69, -39, -12, -13, -10, -7, 44, 17, 53,
    -- layer=2 filter=48 channel=0
    20, -49, -22, 17, -10, 0, -16, 6, -6,
    -- layer=2 filter=48 channel=1
    -7, -12, -67, -4, -18, -5, 56, -82, 0,
    -- layer=2 filter=48 channel=2
    -21, 31, 27, 1, -4, 14, -31, -39, 6,
    -- layer=2 filter=48 channel=3
    -45, -20, 42, -53, -10, -11, -18, -8, -12,
    -- layer=2 filter=48 channel=4
    -22, -19, 14, -40, -16, -32, 27, 16, -27,
    -- layer=2 filter=48 channel=5
    5, -15, 49, 0, -6, 29, -19, 35, -17,
    -- layer=2 filter=48 channel=6
    -27, -7, 35, -12, 6, -6, 14, 5, -32,
    -- layer=2 filter=48 channel=7
    13, -20, 33, 11, 38, 31, 20, -18, -17,
    -- layer=2 filter=48 channel=8
    -40, -45, 16, -47, -5, 2, -7, -40, 10,
    -- layer=2 filter=48 channel=9
    40, 53, 1, 28, 11, -15, 69, 7, -5,
    -- layer=2 filter=48 channel=10
    18, -64, -27, 20, -35, -8, 10, 6, 7,
    -- layer=2 filter=48 channel=11
    -2, -9, -3, 23, 3, 3, 0, -8, -32,
    -- layer=2 filter=48 channel=12
    -33, 26, -16, -49, -75, -67, 32, -54, 3,
    -- layer=2 filter=48 channel=13
    38, 3, -61, 45, -4, -17, 42, 52, 0,
    -- layer=2 filter=48 channel=14
    -15, -1, 4, -5, -4, -15, -6, -13, 9,
    -- layer=2 filter=48 channel=15
    14, 7, -28, 98, -11, 0, 20, -24, -2,
    -- layer=2 filter=48 channel=16
    31, 48, -28, 31, 15, 28, 32, -1, 50,
    -- layer=2 filter=48 channel=17
    20, -4, 9, 11, -2, 8, 32, -22, -21,
    -- layer=2 filter=48 channel=18
    -2, 75, -9, -45, -7, 16, 44, -6, -8,
    -- layer=2 filter=48 channel=19
    -19, 36, -6, 26, -1, 7, -4, 18, -40,
    -- layer=2 filter=48 channel=20
    17, -30, -17, 7, 0, 2, 36, -1, 19,
    -- layer=2 filter=48 channel=21
    13, -11, 15, 6, 10, 18, -3, 17, -21,
    -- layer=2 filter=48 channel=22
    -9, 17, 27, 14, 37, -41, -22, -41, -10,
    -- layer=2 filter=48 channel=23
    8, -12, -22, -11, 3, 1, 18, -45, -33,
    -- layer=2 filter=48 channel=24
    32, -15, -11, 51, -48, 29, 4, -58, 49,
    -- layer=2 filter=48 channel=25
    -48, -20, 24, -37, 3, 0, -42, 20, -22,
    -- layer=2 filter=48 channel=26
    -14, -26, 37, 2, 44, 21, -5, -18, -24,
    -- layer=2 filter=48 channel=27
    -13, -16, 0, 14, -14, 25, -21, -10, -28,
    -- layer=2 filter=48 channel=28
    34, 11, 17, 7, -7, 37, 40, 34, 0,
    -- layer=2 filter=48 channel=29
    -24, 54, 23, 28, -5, 17, -44, -27, -28,
    -- layer=2 filter=48 channel=30
    52, -2, -60, 33, 2, -6, 33, -5, 3,
    -- layer=2 filter=48 channel=31
    45, 23, -67, 53, -39, 24, 8, -30, 4,
    -- layer=2 filter=49 channel=0
    3, 16, 35, 17, -4, 25, 9, 12, -13,
    -- layer=2 filter=49 channel=1
    -18, -3, -32, -33, -9, -20, 8, 12, 18,
    -- layer=2 filter=49 channel=2
    4, 10, 42, -87, -52, -48, -3, 19, 62,
    -- layer=2 filter=49 channel=3
    2, -3, -25, 5, 0, -20, 11, -42, -62,
    -- layer=2 filter=49 channel=4
    13, -6, -29, 17, 11, -45, -25, -53, -76,
    -- layer=2 filter=49 channel=5
    27, 15, -20, 27, 45, -36, 26, -38, -57,
    -- layer=2 filter=49 channel=6
    43, 41, 9, -37, -26, -8, 30, 25, 18,
    -- layer=2 filter=49 channel=7
    -6, 0, 52, 25, -10, 40, 22, -4, 19,
    -- layer=2 filter=49 channel=8
    -36, 6, -26, -43, 4, -29, 6, 15, 27,
    -- layer=2 filter=49 channel=9
    37, -2, -2, 35, 22, -2, 5, -34, -11,
    -- layer=2 filter=49 channel=10
    18, 36, 15, -2, 15, 14, -2, -4, -24,
    -- layer=2 filter=49 channel=11
    -16, 4, 46, -47, -44, -35, 3, 3, 18,
    -- layer=2 filter=49 channel=12
    34, 24, 76, -57, 17, 56, -2, 0, 13,
    -- layer=2 filter=49 channel=13
    2, -8, -31, 48, 15, -9, -12, -63, -55,
    -- layer=2 filter=49 channel=14
    0, 10, 12, 8, 9, 0, 7, -1, 17,
    -- layer=2 filter=49 channel=15
    2, 21, 10, -46, -67, -18, 43, 27, 13,
    -- layer=2 filter=49 channel=16
    -28, -40, -48, -9, -2, -72, -58, 7, -3,
    -- layer=2 filter=49 channel=17
    -22, -58, -64, 23, -52, -36, -21, -86, 12,
    -- layer=2 filter=49 channel=18
    -10, -39, -2, -9, -16, -32, -4, -53, -52,
    -- layer=2 filter=49 channel=19
    -12, -40, -18, -7, -21, 13, 14, 10, 4,
    -- layer=2 filter=49 channel=20
    3, -22, -28, -8, 10, -58, -31, -33, -31,
    -- layer=2 filter=49 channel=21
    9, 12, -7, -43, -24, -23, 43, 31, 35,
    -- layer=2 filter=49 channel=22
    -14, 22, 88, -75, -5, 9, 40, 22, 77,
    -- layer=2 filter=49 channel=23
    -34, 5, 31, -50, 22, 15, -47, -32, -50,
    -- layer=2 filter=49 channel=24
    36, -24, -10, -27, -43, -64, -17, 61, 36,
    -- layer=2 filter=49 channel=25
    41, 3, 5, 34, 0, -4, 20, -32, 0,
    -- layer=2 filter=49 channel=26
    11, -24, -6, -26, -33, -23, 19, -30, -3,
    -- layer=2 filter=49 channel=27
    9, -9, 42, 5, -6, 24, 16, -27, -38,
    -- layer=2 filter=49 channel=28
    -46, -46, -57, -20, 12, -19, -58, -40, -51,
    -- layer=2 filter=49 channel=29
    -22, -33, 30, -18, -28, -22, 30, 30, 68,
    -- layer=2 filter=49 channel=30
    -6, 0, -70, -27, -18, -27, -53, -14, -15,
    -- layer=2 filter=49 channel=31
    -50, -29, -16, -33, -51, -24, -52, 9, 30,
    -- layer=2 filter=50 channel=0
    25, -5, -24, 34, -13, -30, 55, 14, -16,
    -- layer=2 filter=50 channel=1
    -14, 3, 35, 1, 6, -43, 11, -29, -4,
    -- layer=2 filter=50 channel=2
    -36, -24, 29, 41, -26, -19, -52, -17, -16,
    -- layer=2 filter=50 channel=3
    17, -63, -19, 43, -75, -22, -4, -74, -50,
    -- layer=2 filter=50 channel=4
    -7, -36, -2, 11, -19, -17, -43, -29, -25,
    -- layer=2 filter=50 channel=5
    32, -31, -44, 5, -4, -61, 41, 16, -36,
    -- layer=2 filter=50 channel=6
    23, -7, -7, -103, -84, -44, -34, -52, 18,
    -- layer=2 filter=50 channel=7
    17, -8, -59, 35, -9, -51, 40, 4, -73,
    -- layer=2 filter=50 channel=8
    -2, -47, 0, -21, -65, -11, -18, -61, -44,
    -- layer=2 filter=50 channel=9
    36, 33, 84, 36, 6, 35, 11, 22, 25,
    -- layer=2 filter=50 channel=10
    28, -9, -27, 44, -21, -50, 26, -16, -24,
    -- layer=2 filter=50 channel=11
    -80, -90, 28, -28, -70, -98, -22, -53, -13,
    -- layer=2 filter=50 channel=12
    -33, -53, 55, -90, -39, -47, -86, -91, 18,
    -- layer=2 filter=50 channel=13
    37, 38, 29, 6, -3, 37, 30, 44, 31,
    -- layer=2 filter=50 channel=14
    -11, -3, 18, -4, 8, 13, -20, 18, 16,
    -- layer=2 filter=50 channel=15
    6, -47, 27, -6, -83, -38, -2, -38, 17,
    -- layer=2 filter=50 channel=16
    23, 65, 39, 0, 26, 37, 3, 38, 66,
    -- layer=2 filter=50 channel=17
    -9, -13, -22, 20, -33, -47, 9, -40, -51,
    -- layer=2 filter=50 channel=18
    -66, -83, 38, -70, -16, -21, -10, -43, -68,
    -- layer=2 filter=50 channel=19
    37, 0, -59, 10, -1, -95, 0, 14, -5,
    -- layer=2 filter=50 channel=20
    39, 35, 12, -3, -5, 21, 0, -11, 31,
    -- layer=2 filter=50 channel=21
    -39, -2, 15, -45, -54, -12, -24, -29, 35,
    -- layer=2 filter=50 channel=22
    -65, -66, -11, 28, -100, -63, -17, -31, -35,
    -- layer=2 filter=50 channel=23
    7, -26, -2, 18, -5, -8, 27, -7, -22,
    -- layer=2 filter=50 channel=24
    31, 24, 5, -2, -24, -34, -3, -26, -4,
    -- layer=2 filter=50 channel=25
    30, -9, -16, 33, -8, -5, 31, -6, 15,
    -- layer=2 filter=50 channel=26
    38, -21, -57, 38, -11, -60, 34, 11, -34,
    -- layer=2 filter=50 channel=27
    19, 9, 3, 57, -6, -2, 50, 24, -37,
    -- layer=2 filter=50 channel=28
    -17, 19, 46, -15, 31, 24, -20, 19, 8,
    -- layer=2 filter=50 channel=29
    -11, -35, 34, -11, -106, -18, -73, -31, 2,
    -- layer=2 filter=50 channel=30
    34, 30, 18, 11, 20, 38, -12, 18, 40,
    -- layer=2 filter=50 channel=31
    44, 16, -2, 63, 26, -30, 69, 61, 25,
    -- layer=2 filter=51 channel=0
    -25, -20, 4, -61, -38, -36, 1, -30, -26,
    -- layer=2 filter=51 channel=1
    41, 31, 46, 49, 81, 12, 64, 77, 48,
    -- layer=2 filter=51 channel=2
    42, 15, 17, -20, 66, 24, 2, 35, 2,
    -- layer=2 filter=51 channel=3
    -11, -77, -62, -17, -36, -20, -1, -29, -8,
    -- layer=2 filter=51 channel=4
    15, -33, -47, 2, -13, 11, 7, 16, 17,
    -- layer=2 filter=51 channel=5
    13, 13, -29, -13, -72, -27, -34, -52, -42,
    -- layer=2 filter=51 channel=6
    16, 5, -37, 0, 11, 20, -15, 4, 17,
    -- layer=2 filter=51 channel=7
    0, 45, 0, -26, -22, -40, -8, -42, -41,
    -- layer=2 filter=51 channel=8
    -18, -31, -20, 51, -13, -1, 39, 44, 44,
    -- layer=2 filter=51 channel=9
    -3, -45, 14, -27, 1, -15, -52, -32, -51,
    -- layer=2 filter=51 channel=10
    -25, 34, 29, -50, -7, 25, -4, -11, 5,
    -- layer=2 filter=51 channel=11
    -74, -30, 55, -67, 32, 0, -40, -3, -13,
    -- layer=2 filter=51 channel=12
    39, -82, -75, 9, 50, 35, 18, 15, 14,
    -- layer=2 filter=51 channel=13
    -1, -47, -1, 10, 32, -1, -12, -43, -15,
    -- layer=2 filter=51 channel=14
    3, -2, 18, 11, 12, -11, 5, 15, 0,
    -- layer=2 filter=51 channel=15
    -24, 3, -14, 5, 18, -12, -8, 9, 35,
    -- layer=2 filter=51 channel=16
    -7, -47, -11, 7, 45, 11, 38, 68, 20,
    -- layer=2 filter=51 channel=17
    25, 33, -17, -52, -17, -25, -43, -35, -40,
    -- layer=2 filter=51 channel=18
    45, 26, -10, -17, 17, -2, 19, 38, -16,
    -- layer=2 filter=51 channel=19
    -22, 27, 50, -3, 9, 36, 26, 31, -8,
    -- layer=2 filter=51 channel=20
    -6, -2, -25, 10, 7, 0, 35, 26, 56,
    -- layer=2 filter=51 channel=21
    4, 0, 29, 7, -3, -17, 0, 0, 20,
    -- layer=2 filter=51 channel=22
    -20, -9, 17, -76, -5, -8, -49, -25, -28,
    -- layer=2 filter=51 channel=23
    -1, -26, -35, -28, -4, 9, 32, 41, 19,
    -- layer=2 filter=51 channel=24
    -1, 2, 18, 20, 0, -32, -20, 17, 9,
    -- layer=2 filter=51 channel=25
    0, 19, -20, -19, -56, -19, -65, -42, -59,
    -- layer=2 filter=51 channel=26
    -32, -5, -31, -19, 6, -19, 26, -18, -33,
    -- layer=2 filter=51 channel=27
    -6, -57, 5, -15, 0, -60, 7, 9, 28,
    -- layer=2 filter=51 channel=28
    5, -25, -39, 43, 38, 21, 37, 47, 45,
    -- layer=2 filter=51 channel=29
    59, 36, 61, 27, 44, 2, 11, 12, 38,
    -- layer=2 filter=51 channel=30
    -15, -25, -20, -7, -3, 17, 29, 20, 43,
    -- layer=2 filter=51 channel=31
    -42, -20, 30, -59, -20, -43, -29, -43, -29,
    -- layer=2 filter=52 channel=0
    22, -21, -22, 26, 32, 9, 40, 60, 27,
    -- layer=2 filter=52 channel=1
    18, 19, -1, -39, 19, 34, -44, -25, -41,
    -- layer=2 filter=52 channel=2
    -24, 8, 0, -17, 20, -10, -23, 8, 37,
    -- layer=2 filter=52 channel=3
    -38, -26, 2, -5, -19, -45, -24, -56, 0,
    -- layer=2 filter=52 channel=4
    48, 22, 38, -18, -32, -39, -42, -25, 5,
    -- layer=2 filter=52 channel=5
    27, 9, 7, -67, -49, -67, -5, -34, -74,
    -- layer=2 filter=52 channel=6
    -24, 50, 2, 1, -39, 38, -3, -22, 12,
    -- layer=2 filter=52 channel=7
    -50, -35, -8, -3, -6, 18, 21, 18, 36,
    -- layer=2 filter=52 channel=8
    2, 29, 22, 35, -39, 24, -8, -5, -4,
    -- layer=2 filter=52 channel=9
    57, 62, -1, 19, 20, 8, -23, 9, -19,
    -- layer=2 filter=52 channel=10
    -3, -5, 23, 28, 27, 21, 48, 13, -8,
    -- layer=2 filter=52 channel=11
    -34, -22, 7, -46, -19, -1, -53, 23, 36,
    -- layer=2 filter=52 channel=12
    -5, -3, -24, 11, -7, 43, -30, -38, -20,
    -- layer=2 filter=52 channel=13
    66, 18, 26, -8, 12, 2, -32, 8, -50,
    -- layer=2 filter=52 channel=14
    9, -5, 16, 2, -15, 2, 10, 5, 1,
    -- layer=2 filter=52 channel=15
    -25, -25, -6, -41, -42, 2, -29, -15, 30,
    -- layer=2 filter=52 channel=16
    56, 24, 29, -50, 7, 11, -59, -31, 32,
    -- layer=2 filter=52 channel=17
    -45, -15, 37, -68, -50, -44, -6, 12, 8,
    -- layer=2 filter=52 channel=18
    10, 21, 13, 32, 23, -21, -73, -24, -2,
    -- layer=2 filter=52 channel=19
    -17, 35, 62, -2, -20, -54, -7, -5, -21,
    -- layer=2 filter=52 channel=20
    21, 38, 36, -13, -26, 46, -13, -26, -4,
    -- layer=2 filter=52 channel=21
    -16, 2, -23, -75, -33, 5, 18, 14, 23,
    -- layer=2 filter=52 channel=22
    18, -63, 13, -37, 0, 14, -6, 4, 9,
    -- layer=2 filter=52 channel=23
    27, -5, 1, 18, 2, 2, 21, 38, 21,
    -- layer=2 filter=52 channel=24
    -21, 22, 23, -54, -33, -27, -45, -35, -28,
    -- layer=2 filter=52 channel=25
    10, 41, 22, -32, -24, -31, -3, -15, -41,
    -- layer=2 filter=52 channel=26
    -17, 7, 20, -18, 15, 7, 17, -30, -13,
    -- layer=2 filter=52 channel=27
    19, 28, 16, 21, 12, -6, 22, 22, 1,
    -- layer=2 filter=52 channel=28
    10, 23, 62, -73, -71, -11, -98, -44, 2,
    -- layer=2 filter=52 channel=29
    -10, -19, 24, -33, 28, -27, -10, 18, 10,
    -- layer=2 filter=52 channel=30
    57, 36, 41, -35, 4, 33, 3, -15, 18,
    -- layer=2 filter=52 channel=31
    -30, -42, -17, 10, 10, 48, 25, 49, 51,
    -- layer=2 filter=53 channel=0
    -21, -36, 25, -16, 26, 17, 27, 21, 7,
    -- layer=2 filter=53 channel=1
    49, 12, -21, -30, 6, 25, -2, -22, -9,
    -- layer=2 filter=53 channel=2
    36, 14, -19, 49, -54, 13, 7, 22, 4,
    -- layer=2 filter=53 channel=3
    -8, 38, 28, 3, -27, 18, -33, -51, -4,
    -- layer=2 filter=53 channel=4
    -19, 19, -10, 3, 11, -37, 1, 35, -16,
    -- layer=2 filter=53 channel=5
    -37, 41, -57, 18, -31, -47, 35, -26, -7,
    -- layer=2 filter=53 channel=6
    -19, 1, -29, 23, -14, -6, 7, -49, 7,
    -- layer=2 filter=53 channel=7
    -60, -57, 9, -16, -19, -8, -9, 7, -15,
    -- layer=2 filter=53 channel=8
    -43, 17, 32, -44, 7, 14, 8, -8, 33,
    -- layer=2 filter=53 channel=9
    24, 9, -52, 45, -25, -31, 32, 38, -21,
    -- layer=2 filter=53 channel=10
    -72, -37, 13, 2, -12, 6, -20, 18, 14,
    -- layer=2 filter=53 channel=11
    22, 3, -21, -15, -72, -38, -5, -14, -74,
    -- layer=2 filter=53 channel=12
    27, 0, -22, 9, -22, 12, 7, -29, -2,
    -- layer=2 filter=53 channel=13
    2, -46, -19, -35, -4, -34, -27, 51, 6,
    -- layer=2 filter=53 channel=14
    10, 15, -12, 3, 5, -19, 18, 5, 0,
    -- layer=2 filter=53 channel=15
    -3, -28, -18, 50, 0, -62, -36, -42, -40,
    -- layer=2 filter=53 channel=16
    4, 30, 18, -40, -3, -4, -8, 49, 26,
    -- layer=2 filter=53 channel=17
    13, 72, -38, 70, -37, -30, 5, -3, -17,
    -- layer=2 filter=53 channel=18
    27, 20, -32, 2, -64, -103, -14, -1, -35,
    -- layer=2 filter=53 channel=19
    8, 52, 43, 43, 0, -11, -45, -57, -58,
    -- layer=2 filter=53 channel=20
    -9, -2, 13, 9, 1, 18, 8, 43, -4,
    -- layer=2 filter=53 channel=21
    -19, -32, -29, -6, 10, -36, 21, -21, -36,
    -- layer=2 filter=53 channel=22
    -4, -14, -43, -35, -85, -32, 24, -16, -12,
    -- layer=2 filter=53 channel=23
    -31, -26, -13, -16, -29, 14, -50, -8, -3,
    -- layer=2 filter=53 channel=24
    16, 22, -3, -22, 3, 0, 5, -16, -27,
    -- layer=2 filter=53 channel=25
    34, 41, 4, 50, 11, -29, 46, 16, 16,
    -- layer=2 filter=53 channel=26
    -47, -22, 10, 9, 26, 44, -5, 9, -6,
    -- layer=2 filter=53 channel=27
    -35, -48, -6, -14, -26, 38, -9, -4, -39,
    -- layer=2 filter=53 channel=28
    23, 15, 27, -31, 23, 23, -7, 13, 50,
    -- layer=2 filter=53 channel=29
    45, 91, -30, 20, 2, -71, 20, 6, -23,
    -- layer=2 filter=53 channel=30
    -8, -29, 12, -51, -7, -3, -30, 40, 20,
    -- layer=2 filter=53 channel=31
    -8, 5, 53, -30, 4, 24, -9, -5, 16,
    -- layer=2 filter=54 channel=0
    -8, 4, -21, 17, 13, 13, -6, -10, 5,
    -- layer=2 filter=54 channel=1
    -10, -11, -7, 19, -5, 5, 16, 19, 7,
    -- layer=2 filter=54 channel=2
    -12, -9, 4, 13, -10, 11, -25, -30, 3,
    -- layer=2 filter=54 channel=3
    6, 2, -29, -16, -28, -3, -28, -4, 2,
    -- layer=2 filter=54 channel=4
    19, -8, -31, -11, 5, -22, 0, -24, -15,
    -- layer=2 filter=54 channel=5
    -7, -19, 19, -23, -8, 19, 18, -7, 14,
    -- layer=2 filter=54 channel=6
    -6, 2, -5, -22, -8, -24, 17, 10, -10,
    -- layer=2 filter=54 channel=7
    -17, -12, 3, 18, 14, -27, 8, -5, -18,
    -- layer=2 filter=54 channel=8
    4, 9, 13, -6, 0, -18, -15, 3, 5,
    -- layer=2 filter=54 channel=9
    6, 7, 16, -5, -24, 0, 12, 3, -8,
    -- layer=2 filter=54 channel=10
    1, 15, -23, -12, -20, -28, 12, -18, -30,
    -- layer=2 filter=54 channel=11
    13, -24, 0, 11, -5, -21, 13, -5, 8,
    -- layer=2 filter=54 channel=12
    -17, -4, -14, 24, -8, -9, -19, 5, -16,
    -- layer=2 filter=54 channel=13
    -22, -8, 17, -7, -1, 2, -7, -2, -13,
    -- layer=2 filter=54 channel=14
    3, 7, 11, -2, -10, 11, 14, -6, -11,
    -- layer=2 filter=54 channel=15
    12, -7, -27, -1, -16, -16, -6, -12, -24,
    -- layer=2 filter=54 channel=16
    -8, -12, -3, -4, 5, -9, -2, -3, -13,
    -- layer=2 filter=54 channel=17
    -6, -29, 11, -5, -11, 15, -8, 8, 9,
    -- layer=2 filter=54 channel=18
    0, -25, 11, 2, 5, -3, -22, -18, -30,
    -- layer=2 filter=54 channel=19
    -16, -4, -13, -10, 2, 19, -14, -5, -8,
    -- layer=2 filter=54 channel=20
    -15, -2, -11, 12, -7, -1, 14, -1, 3,
    -- layer=2 filter=54 channel=21
    -18, 0, -6, -20, -1, -30, -29, -30, -12,
    -- layer=2 filter=54 channel=22
    -9, -13, 0, -26, 11, -22, -21, 11, -7,
    -- layer=2 filter=54 channel=23
    -22, 9, -6, -10, 18, -20, -19, -8, -20,
    -- layer=2 filter=54 channel=24
    0, 1, 12, -12, -16, -5, 2, -14, -6,
    -- layer=2 filter=54 channel=25
    8, 3, -6, -3, -18, -16, 15, -2, -2,
    -- layer=2 filter=54 channel=26
    18, -8, -24, -11, -3, 4, -14, -8, -23,
    -- layer=2 filter=54 channel=27
    -14, 15, 13, -6, 12, -23, -7, 1, 14,
    -- layer=2 filter=54 channel=28
    5, 4, 12, -15, -11, -6, -6, -3, -9,
    -- layer=2 filter=54 channel=29
    0, -22, 0, -22, 0, 8, 3, 6, 17,
    -- layer=2 filter=54 channel=30
    7, -3, 9, 16, -16, -11, 10, -16, -25,
    -- layer=2 filter=54 channel=31
    -9, 0, 1, 12, -6, 2, 1, -20, -31,
    -- layer=2 filter=55 channel=0
    -56, -44, -13, 32, 9, 21, 45, 30, 63,
    -- layer=2 filter=55 channel=1
    -15, -11, 0, -59, -71, 37, -10, 25, 0,
    -- layer=2 filter=55 channel=2
    38, 41, 0, 36, 7, -9, 21, 49, -13,
    -- layer=2 filter=55 channel=3
    18, 7, 16, 0, 11, 54, -30, 16, 25,
    -- layer=2 filter=55 channel=4
    5, 42, 17, 0, -16, 48, -40, 31, 12,
    -- layer=2 filter=55 channel=5
    20, -3, -6, 28, -32, 21, 36, 28, -20,
    -- layer=2 filter=55 channel=6
    -24, -8, 12, 0, -18, -39, 65, -41, -3,
    -- layer=2 filter=55 channel=7
    -91, -66, 21, -41, -22, 45, 18, 9, 18,
    -- layer=2 filter=55 channel=8
    -7, -1, 24, 6, 3, 3, -11, 14, -3,
    -- layer=2 filter=55 channel=9
    50, 21, 52, 11, 34, -11, 31, 34, 8,
    -- layer=2 filter=55 channel=10
    -61, -65, 0, 4, -29, 34, 12, 28, 55,
    -- layer=2 filter=55 channel=11
    -19, -3, 2, -41, -65, -47, 3, 9, -62,
    -- layer=2 filter=55 channel=12
    -49, -34, -3, -36, -39, 0, 21, 5, -29,
    -- layer=2 filter=55 channel=13
    -22, -12, -3, -14, -39, -37, -33, -34, 6,
    -- layer=2 filter=55 channel=14
    1, -14, 16, -19, 11, -15, 17, 13, 0,
    -- layer=2 filter=55 channel=15
    -83, -28, -39, -32, 17, -12, 63, -109, 3,
    -- layer=2 filter=55 channel=16
    46, 49, 15, 0, 40, -6, -12, 9, 10,
    -- layer=2 filter=55 channel=17
    -27, -6, 39, -9, -9, 16, -23, 0, -3,
    -- layer=2 filter=55 channel=18
    -38, -38, -28, -29, -87, -63, -39, -26, -28,
    -- layer=2 filter=55 channel=19
    36, 5, 12, 27, 9, 46, -32, 23, 37,
    -- layer=2 filter=55 channel=20
    -9, 31, 48, 11, -7, 1, 30, -12, -13,
    -- layer=2 filter=55 channel=21
    -22, -3, -21, 18, 17, -29, 60, -69, 15,
    -- layer=2 filter=55 channel=22
    -26, -43, 20, -7, -38, 3, -3, -25, -11,
    -- layer=2 filter=55 channel=23
    -30, -65, -4, 13, 1, 6, 44, 13, 15,
    -- layer=2 filter=55 channel=24
    -10, -6, 43, -61, -8, 28, 25, -36, 9,
    -- layer=2 filter=55 channel=25
    -3, 26, 31, 39, 15, 34, 44, 53, 61,
    -- layer=2 filter=55 channel=26
    -19, 0, 19, -1, -26, 12, 29, 0, 18,
    -- layer=2 filter=55 channel=27
    -5, -57, -55, -13, -50, 12, 33, 42, 0,
    -- layer=2 filter=55 channel=28
    46, 62, 0, -6, 21, 6, -10, 8, 8,
    -- layer=2 filter=55 channel=29
    -14, 21, -66, -6, -47, -31, -28, 30, -2,
    -- layer=2 filter=55 channel=30
    18, 36, 46, -30, 10, 0, -32, -33, 5,
    -- layer=2 filter=55 channel=31
    -33, -8, 4, 8, -14, 14, 19, -75, 39,
    -- layer=2 filter=56 channel=0
    6, 14, -6, 19, -10, -3, -14, -9, 15,
    -- layer=2 filter=56 channel=1
    -53, 45, -23, -90, -44, -66, -24, -60, -51,
    -- layer=2 filter=56 channel=2
    0, 24, -1, -6, -5, -49, 29, -39, -7,
    -- layer=2 filter=56 channel=3
    0, -44, -37, -103, -79, -2, -53, -68, -58,
    -- layer=2 filter=56 channel=4
    -24, -59, -17, -25, 7, -2, 1, -30, 0,
    -- layer=2 filter=56 channel=5
    -46, -31, 0, 10, -13, -24, 63, 19, -18,
    -- layer=2 filter=56 channel=6
    24, 44, 14, -15, -14, -47, 5, 20, 10,
    -- layer=2 filter=56 channel=7
    -6, -21, -14, 7, 15, -19, 10, -33, -23,
    -- layer=2 filter=56 channel=8
    9, -49, 22, -39, -39, -63, -50, -48, -29,
    -- layer=2 filter=56 channel=9
    8, 23, 12, 36, 50, 15, 64, 2, 37,
    -- layer=2 filter=56 channel=10
    2, -5, -1, 4, 27, 36, 1, 37, -4,
    -- layer=2 filter=56 channel=11
    51, 55, 21, 42, -8, 22, 14, 2, 1,
    -- layer=2 filter=56 channel=12
    54, -14, -81, -21, 22, -19, -8, 9, 4,
    -- layer=2 filter=56 channel=13
    39, 12, -20, 21, 34, -6, 12, 18, 2,
    -- layer=2 filter=56 channel=14
    18, -7, -10, 12, 5, -5, -20, -15, -16,
    -- layer=2 filter=56 channel=15
    33, 1, -15, -12, -30, -13, 6, 13, 26,
    -- layer=2 filter=56 channel=16
    9, 21, -9, 17, 13, -2, 8, 20, -4,
    -- layer=2 filter=56 channel=17
    -76, -9, 15, -6, -2, 20, 14, 39, 28,
    -- layer=2 filter=56 channel=18
    0, 8, 57, -14, -6, -20, -2, -20, -46,
    -- layer=2 filter=56 channel=19
    3, -53, 38, -34, -11, -36, -46, 57, 44,
    -- layer=2 filter=56 channel=20
    -41, 3, 28, -12, 13, 45, -20, -11, 30,
    -- layer=2 filter=56 channel=21
    20, 9, -8, 47, -28, -30, -1, -32, 14,
    -- layer=2 filter=56 channel=22
    0, 29, 21, 16, 30, 19, 52, 36, 2,
    -- layer=2 filter=56 channel=23
    -35, -13, 45, -51, -14, 24, -45, -4, 37,
    -- layer=2 filter=56 channel=24
    -8, 37, 13, -17, -13, 27, -12, -8, 18,
    -- layer=2 filter=56 channel=25
    -27, 3, -14, -21, -1, 13, 38, 19, 33,
    -- layer=2 filter=56 channel=26
    -28, -10, 38, -18, -45, 12, -48, -50, -30,
    -- layer=2 filter=56 channel=27
    -4, 15, -5, -33, -10, 39, -51, 0, 47,
    -- layer=2 filter=56 channel=28
    43, 18, 3, 1, -26, -3, -15, -3, 3,
    -- layer=2 filter=56 channel=29
    70, 83, -25, -5, -26, -47, -13, -43, -17,
    -- layer=2 filter=56 channel=30
    32, 33, 14, 0, -8, 18, -2, -4, 4,
    -- layer=2 filter=56 channel=31
    62, -9, -12, 0, -11, 10, -32, -26, -13,
    -- layer=2 filter=57 channel=0
    -3, -20, -17, 4, 11, 15, 15, 1, -10,
    -- layer=2 filter=57 channel=1
    9, 5, -1, 18, -6, -17, 5, 5, 5,
    -- layer=2 filter=57 channel=2
    3, 5, -1, -4, -21, 12, -17, -24, 3,
    -- layer=2 filter=57 channel=3
    -3, -20, -5, 6, 6, -9, 1, 8, 8,
    -- layer=2 filter=57 channel=4
    -8, 15, -22, -19, -11, -4, -19, 13, -6,
    -- layer=2 filter=57 channel=5
    -2, -5, 7, -6, -2, -9, -11, 9, -22,
    -- layer=2 filter=57 channel=6
    8, -6, -16, 7, -28, -20, 0, -13, -10,
    -- layer=2 filter=57 channel=7
    -13, 7, 11, -23, -1, -22, 11, -19, -14,
    -- layer=2 filter=57 channel=8
    10, -29, 12, -10, 12, -18, -13, -21, -23,
    -- layer=2 filter=57 channel=9
    7, 8, 0, -5, -23, 3, 5, 12, 16,
    -- layer=2 filter=57 channel=10
    -16, -28, 4, -3, -16, -15, -21, 9, -16,
    -- layer=2 filter=57 channel=11
    0, 3, 5, 10, -6, -17, -13, -4, 3,
    -- layer=2 filter=57 channel=12
    -16, 17, 18, 7, -20, -17, 13, -1, 5,
    -- layer=2 filter=57 channel=13
    -24, -14, -18, -2, 11, -7, -2, 15, -19,
    -- layer=2 filter=57 channel=14
    9, -10, -9, 1, -6, -17, -12, -20, 2,
    -- layer=2 filter=57 channel=15
    11, -8, 3, 7, -8, -12, -18, 5, -21,
    -- layer=2 filter=57 channel=16
    -4, 9, 2, -16, 4, -12, -18, -6, 2,
    -- layer=2 filter=57 channel=17
    -11, 9, 8, 13, 11, 11, -3, -6, -6,
    -- layer=2 filter=57 channel=18
    -10, -13, 7, 13, 5, -5, -22, -15, -1,
    -- layer=2 filter=57 channel=19
    5, 3, -2, 0, -13, -1, 11, -10, 8,
    -- layer=2 filter=57 channel=20
    -18, 9, -20, -21, -13, -16, -21, -15, 0,
    -- layer=2 filter=57 channel=21
    16, 1, 1, -18, -14, -9, 17, -25, -10,
    -- layer=2 filter=57 channel=22
    -15, 1, 1, -2, 11, 1, -1, -9, -5,
    -- layer=2 filter=57 channel=23
    -18, -13, 0, -7, 1, 19, -12, 3, -1,
    -- layer=2 filter=57 channel=24
    -22, 0, -20, 8, -23, -23, 2, 13, 15,
    -- layer=2 filter=57 channel=25
    3, -8, -15, -18, 2, -20, -13, 3, 10,
    -- layer=2 filter=57 channel=26
    -4, -12, 0, 0, -20, -17, -13, 9, -13,
    -- layer=2 filter=57 channel=27
    5, 17, -21, -3, -3, 17, -19, 7, 2,
    -- layer=2 filter=57 channel=28
    -18, 11, 11, -3, -18, 4, 6, 10, 5,
    -- layer=2 filter=57 channel=29
    -4, -7, 1, -14, 15, -9, -12, 4, -21,
    -- layer=2 filter=57 channel=30
    -17, -5, 13, -15, -12, -14, 7, -11, -27,
    -- layer=2 filter=57 channel=31
    -21, -31, 7, -21, -24, 5, -13, -13, 10,
    -- layer=2 filter=58 channel=0
    1, -8, -16, 7, 21, 24, -18, -8, -32,
    -- layer=2 filter=58 channel=1
    11, 27, 18, 107, 71, 75, 41, 30, 10,
    -- layer=2 filter=58 channel=2
    23, 16, 3, -15, -15, -6, 23, -44, -51,
    -- layer=2 filter=58 channel=3
    7, 26, 13, -15, -20, -8, -6, -5, 35,
    -- layer=2 filter=58 channel=4
    21, 12, 29, 37, 19, 32, 20, 7, -2,
    -- layer=2 filter=58 channel=5
    38, -5, 9, 21, -9, 8, 9, 8, 22,
    -- layer=2 filter=58 channel=6
    -5, -14, -9, -14, 11, 21, 2, -11, 14,
    -- layer=2 filter=58 channel=7
    -31, -49, -53, -14, -15, 12, -1, -18, -12,
    -- layer=2 filter=58 channel=8
    -7, 7, -5, 23, 2, 33, 29, -24, -15,
    -- layer=2 filter=58 channel=9
    24, -1, 30, -13, -13, -15, -12, 0, 42,
    -- layer=2 filter=58 channel=10
    -6, 17, -5, 1, 12, 18, -32, -17, -2,
    -- layer=2 filter=58 channel=11
    -18, -26, -1, 38, -24, 19, 53, 26, 26,
    -- layer=2 filter=58 channel=12
    3, -13, 37, -8, 13, 35, 1, -27, 43,
    -- layer=2 filter=58 channel=13
    54, -2, 15, 0, -5, 21, -26, 19, -23,
    -- layer=2 filter=58 channel=14
    -2, -14, 6, 9, 6, 8, -3, 14, -9,
    -- layer=2 filter=58 channel=15
    0, 1, -21, -13, 0, -2, 47, 47, 50,
    -- layer=2 filter=58 channel=16
    -20, 8, 6, 8, 1, -8, -44, -14, -19,
    -- layer=2 filter=58 channel=17
    4, -5, -13, 56, 59, 72, -10, 47, 16,
    -- layer=2 filter=58 channel=18
    -16, -48, 2, -8, -23, -58, 9, 28, 0,
    -- layer=2 filter=58 channel=19
    -68, -60, 12, -12, 11, 19, 2, 14, 54,
    -- layer=2 filter=58 channel=20
    -25, -17, -25, 34, 61, 49, 25, 23, 16,
    -- layer=2 filter=58 channel=21
    -37, 3, -7, 8, 26, 56, 5, -2, -5,
    -- layer=2 filter=58 channel=22
    14, 0, 10, 49, 48, 77, 49, 56, 28,
    -- layer=2 filter=58 channel=23
    -66, -22, 3, -42, -18, -12, 4, -16, -2,
    -- layer=2 filter=58 channel=24
    15, -5, -9, 47, 36, 56, 70, 27, 36,
    -- layer=2 filter=58 channel=25
    22, 21, 3, 36, 30, 6, 26, 7, -7,
    -- layer=2 filter=58 channel=26
    -10, -2, 5, -5, 3, -20, -28, 1, 6,
    -- layer=2 filter=58 channel=27
    -3, 3, 39, -2, -20, -3, -41, -24, 8,
    -- layer=2 filter=58 channel=28
    5, -1, 32, -23, -30, -12, -32, -5, -31,
    -- layer=2 filter=58 channel=29
    37, 35, 61, -29, -12, 43, -40, -38, -75,
    -- layer=2 filter=58 channel=30
    -4, 8, -25, -28, -7, 11, -9, 25, 4,
    -- layer=2 filter=58 channel=31
    -14, -20, 5, -13, 5, 50, -23, 1, 26,
    -- layer=2 filter=59 channel=0
    -5, 13, -14, 6, 11, 24, -22, 6, 12,
    -- layer=2 filter=59 channel=1
    -24, -11, 48, -15, 58, 7, 98, 98, 88,
    -- layer=2 filter=59 channel=2
    -57, -34, -36, -54, -59, -34, -35, -30, -4,
    -- layer=2 filter=59 channel=3
    21, 2, -15, 13, 16, 22, -12, 28, 22,
    -- layer=2 filter=59 channel=4
    49, 27, -13, 12, -21, 16, -24, -13, -16,
    -- layer=2 filter=59 channel=5
    -12, -57, -86, 11, -46, -46, 18, -60, -86,
    -- layer=2 filter=59 channel=6
    4, -45, -68, -59, -84, -47, -29, -69, -30,
    -- layer=2 filter=59 channel=7
    -22, -5, 5, 28, -2, 16, 42, 22, 46,
    -- layer=2 filter=59 channel=8
    25, 9, 24, -6, 5, 28, 23, -6, -5,
    -- layer=2 filter=59 channel=9
    -11, -44, 39, -3, -49, -44, 0, -40, -18,
    -- layer=2 filter=59 channel=10
    -25, 0, 0, -11, 6, 0, -36, 21, 21,
    -- layer=2 filter=59 channel=11
    -12, -2, -44, -79, -62, -96, -71, -103, -77,
    -- layer=2 filter=59 channel=12
    -8, -43, 6, -67, -45, -43, 0, 44, 30,
    -- layer=2 filter=59 channel=13
    5, -21, -30, 44, -29, -36, 16, -69, -1,
    -- layer=2 filter=59 channel=14
    -14, -19, -2, -17, 7, 16, 9, 19, 16,
    -- layer=2 filter=59 channel=15
    38, 3, -12, 33, 0, -29, 34, -8, -45,
    -- layer=2 filter=59 channel=16
    22, 44, 12, -11, 23, 20, 4, 13, 31,
    -- layer=2 filter=59 channel=17
    3, -40, -37, -1, -45, -37, -14, -5, -33,
    -- layer=2 filter=59 channel=18
    20, -25, 17, 21, -8, 6, 47, 1, -9,
    -- layer=2 filter=59 channel=19
    1, 0, -31, -1, -8, -7, -3, 12, -41,
    -- layer=2 filter=59 channel=20
    35, 44, 5, 3, 13, 20, 48, 7, 15,
    -- layer=2 filter=59 channel=21
    -48, -40, -72, -70, -90, -76, -6, -113, -39,
    -- layer=2 filter=59 channel=22
    -26, -51, -14, -76, -53, -25, -3, -22, -31,
    -- layer=2 filter=59 channel=23
    -3, -3, 20, 21, 0, 20, -27, 35, 26,
    -- layer=2 filter=59 channel=24
    17, 25, 6, -4, 11, -15, -28, -33, -10,
    -- layer=2 filter=59 channel=25
    2, -18, -33, 36, -75, -62, -2, -77, -56,
    -- layer=2 filter=59 channel=26
    17, 5, -27, 2, -2, 1, 8, 42, 23,
    -- layer=2 filter=59 channel=27
    4, -26, 18, 22, -14, 21, 13, 6, -32,
    -- layer=2 filter=59 channel=28
    24, 53, 37, 25, 18, 30, 22, 26, 19,
    -- layer=2 filter=59 channel=29
    -82, -78, -33, -43, -104, -52, -89, -80, -74,
    -- layer=2 filter=59 channel=30
    13, 31, 36, -8, 6, 0, -29, 1, 21,
    -- layer=2 filter=59 channel=31
    -4, 20, 15, 10, 31, -5, -14, 19, 11,
    -- layer=2 filter=60 channel=0
    -48, -40, -23, 14, 8, 0, 14, 14, -4,
    -- layer=2 filter=60 channel=1
    -30, -64, -9, -8, 20, -3, -25, -50, -1,
    -- layer=2 filter=60 channel=2
    2, 21, -36, 5, -58, -26, 3, -1, -26,
    -- layer=2 filter=60 channel=3
    2, 0, 22, 2, -13, 36, 14, 30, 82,
    -- layer=2 filter=60 channel=4
    26, 12, -24, 9, 2, -25, 13, 9, -14,
    -- layer=2 filter=60 channel=5
    33, 28, -68, -26, -31, -135, -25, -59, -74,
    -- layer=2 filter=60 channel=6
    -5, -31, -34, -1, -22, -53, -46, -41, -13,
    -- layer=2 filter=60 channel=7
    -33, -41, 0, -14, -40, 30, -8, -32, 8,
    -- layer=2 filter=60 channel=8
    8, 22, -9, 21, 11, 5, 26, 5, 40,
    -- layer=2 filter=60 channel=9
    27, 71, 37, -34, 22, 12, 22, -2, -33,
    -- layer=2 filter=60 channel=10
    -18, -26, -11, 4, 2, 18, 0, -1, 23,
    -- layer=2 filter=60 channel=11
    6, -36, -11, -14, 8, -62, 22, -21, -75,
    -- layer=2 filter=60 channel=12
    8, -10, 32, 5, -19, -24, 59, 50, 43,
    -- layer=2 filter=60 channel=13
    23, 20, 50, -61, 3, -7, -25, 22, -64,
    -- layer=2 filter=60 channel=14
    -16, 17, -22, 9, -18, 17, 4, -3, -2,
    -- layer=2 filter=60 channel=15
    -48, -40, 13, 16, -40, -27, 7, -14, -50,
    -- layer=2 filter=60 channel=16
    -19, 14, 21, 14, 28, 14, -12, 5, -15,
    -- layer=2 filter=60 channel=17
    -4, 15, -31, 29, -31, -48, 22, -32, -10,
    -- layer=2 filter=60 channel=18
    -18, -29, 8, -50, -77, -53, 14, -5, -4,
    -- layer=2 filter=60 channel=19
    -21, 16, -19, 21, -19, -33, -13, -52, 9,
    -- layer=2 filter=60 channel=20
    -9, 21, -29, 20, 18, -10, -12, -23, -52,
    -- layer=2 filter=60 channel=21
    -20, -12, -17, -11, -2, -59, -44, -25, -45,
    -- layer=2 filter=60 channel=22
    66, -50, -18, 14, 0, -49, 7, -40, -39,
    -- layer=2 filter=60 channel=23
    11, -2, 14, -1, 2, 44, 64, 0, 22,
    -- layer=2 filter=60 channel=24
    16, 0, 22, 3, 24, 20, 5, 3, 16,
    -- layer=2 filter=60 channel=25
    39, 35, 15, 26, -8, -45, 17, 19, -55,
    -- layer=2 filter=60 channel=26
    -2, -22, 35, -13, -15, 40, 10, -21, 29,
    -- layer=2 filter=60 channel=27
    21, -19, -21, -19, -28, 4, 8, -28, -26,
    -- layer=2 filter=60 channel=28
    -36, -10, -29, -18, -11, -23, 20, 5, 29,
    -- layer=2 filter=60 channel=29
    17, 57, 33, 1, -90, -42, 26, -8, 9,
    -- layer=2 filter=60 channel=30
    -49, 23, 5, -11, 28, -8, -8, 29, -19,
    -- layer=2 filter=60 channel=31
    7, -1, 17, 22, 5, 45, 82, 34, 37,
    -- layer=2 filter=61 channel=0
    16, 18, 32, 14, 27, 36, -14, -29, 22,
    -- layer=2 filter=61 channel=1
    -23, 7, -1, 44, 39, 18, 0, -4, 13,
    -- layer=2 filter=61 channel=2
    20, -43, 60, 3, -110, 44, 12, -114, -30,
    -- layer=2 filter=61 channel=3
    12, 11, 12, 2, -11, 29, -51, -43, -11,
    -- layer=2 filter=61 channel=4
    29, -34, -17, 50, 2, 7, 30, -3, 32,
    -- layer=2 filter=61 channel=5
    -80, 71, -7, -15, 63, 16, -122, 69, -20,
    -- layer=2 filter=61 channel=6
    -52, -13, 7, -31, -11, 6, -34, 5, -29,
    -- layer=2 filter=61 channel=7
    20, -33, -2, 54, -57, 23, 6, -24, -18,
    -- layer=2 filter=61 channel=8
    -30, -1, 25, -16, -57, 34, 12, -50, 49,
    -- layer=2 filter=61 channel=9
    35, 25, 20, 13, 66, -41, -7, 37, -35,
    -- layer=2 filter=61 channel=10
    -2, 1, 0, 18, 6, -2, 11, -31, 1,
    -- layer=2 filter=61 channel=11
    36, -44, 8, 15, -34, -15, -21, -104, -69,
    -- layer=2 filter=61 channel=12
    3, -55, 54, 7, -104, 16, -31, -52, -21,
    -- layer=2 filter=61 channel=13
    44, 20, -38, 13, 22, -23, 4, 38, 2,
    -- layer=2 filter=61 channel=14
    -18, 6, 0, 0, 7, -3, -22, 3, 1,
    -- layer=2 filter=61 channel=15
    6, 41, -26, -51, -34, -29, -14, -26, -61,
    -- layer=2 filter=61 channel=16
    1, -5, -8, -11, 24, -9, 26, 29, -2,
    -- layer=2 filter=61 channel=17
    -56, 50, -17, -55, 56, 1, -50, 61, -18,
    -- layer=2 filter=61 channel=18
    18, 44, 30, -17, 24, 19, -91, -9, -60,
    -- layer=2 filter=61 channel=19
    19, -7, -22, 17, 3, 38, -1, 12, -31,
    -- layer=2 filter=61 channel=20
    12, 17, -23, 7, -11, -2, 19, 15, 16,
    -- layer=2 filter=61 channel=21
    -7, -10, 19, -1, -48, 25, -12, -64, 12,
    -- layer=2 filter=61 channel=22
    12, -59, 1, -29, -70, -68, 3, -24, -58,
    -- layer=2 filter=61 channel=23
    34, -34, -4, 0, 3, -49, -27, -16, -65,
    -- layer=2 filter=61 channel=24
    -27, 10, -19, -1, 5, -29, -2, 4, -31,
    -- layer=2 filter=61 channel=25
    -36, 50, 31, -4, 52, 50, -39, 1, 22,
    -- layer=2 filter=61 channel=26
    15, -77, 25, 67, -10, 7, 33, -11, 21,
    -- layer=2 filter=61 channel=27
    32, -50, 37, -9, -12, 25, -62, -10, -52,
    -- layer=2 filter=61 channel=28
    35, -49, 18, 6, -51, -23, 14, -35, 31,
    -- layer=2 filter=61 channel=29
    -8, 6, 48, 1, -37, 40, 36, -96, -35,
    -- layer=2 filter=61 channel=30
    41, 25, -41, 17, -10, -22, 54, 5, -6,
    -- layer=2 filter=61 channel=31
    11, -56, -53, 25, -51, 23, -1, -27, 17,
    -- layer=2 filter=62 channel=0
    13, -13, 16, -6, -39, 1, -7, -50, -50,
    -- layer=2 filter=62 channel=1
    20, 13, 7, 54, 30, 57, 13, 77, 43,
    -- layer=2 filter=62 channel=2
    23, 32, 9, 30, 39, 17, 47, 63, 65,
    -- layer=2 filter=62 channel=3
    -18, 55, -52, 4, -39, -22, -17, -15, 81,
    -- layer=2 filter=62 channel=4
    -15, -12, -23, -1, -49, -36, -59, -43, 11,
    -- layer=2 filter=62 channel=5
    -14, -18, -22, -46, -65, -61, -76, -67, -1,
    -- layer=2 filter=62 channel=6
    -12, 7, 4, 29, 25, 35, 33, 33, -26,
    -- layer=2 filter=62 channel=7
    -33, -2, 7, -6, 1, -18, -30, -34, -9,
    -- layer=2 filter=62 channel=8
    9, -8, -24, -20, 31, -15, -20, -17, 1,
    -- layer=2 filter=62 channel=9
    16, 16, -7, 3, -7, -4, 53, 25, 0,
    -- layer=2 filter=62 channel=10
    -29, 12, 5, -18, -22, 16, 11, -81, -33,
    -- layer=2 filter=62 channel=11
    22, 22, -1, 47, -11, -22, 17, 3, 23,
    -- layer=2 filter=62 channel=12
    27, 31, -3, 62, 35, 55, 89, 96, 94,
    -- layer=2 filter=62 channel=13
    -37, -17, -17, -25, -61, -52, -18, -90, -101,
    -- layer=2 filter=62 channel=14
    11, 7, -6, -7, -3, 16, -12, -21, -21,
    -- layer=2 filter=62 channel=15
    -2, -5, -34, 32, 32, 58, 70, 65, 10,
    -- layer=2 filter=62 channel=16
    -8, -34, -49, -21, -28, -44, -29, -24, -27,
    -- layer=2 filter=62 channel=17
    -42, -21, -24, 39, 19, 0, -75, -1, 0,
    -- layer=2 filter=62 channel=18
    9, -8, 8, 20, -36, -60, 16, 24, 25,
    -- layer=2 filter=62 channel=19
    3, 46, 15, 25, 48, -25, -15, -27, -22,
    -- layer=2 filter=62 channel=20
    -14, -9, -14, 8, 11, -4, -45, 6, -59,
    -- layer=2 filter=62 channel=21
    18, 5, 12, -3, 20, 35, 6, 24, -60,
    -- layer=2 filter=62 channel=22
    0, 24, 32, 49, 36, 77, 11, 20, 28,
    -- layer=2 filter=62 channel=23
    -27, 17, -4, 16, 18, -44, 58, 11, -1,
    -- layer=2 filter=62 channel=24
    -16, -25, -14, 18, 56, 61, 39, 62, -1,
    -- layer=2 filter=62 channel=25
    0, 12, 26, 17, 37, -13, -28, -4, -10,
    -- layer=2 filter=62 channel=26
    -32, 49, 0, -34, 17, -9, -12, -69, -12,
    -- layer=2 filter=62 channel=27
    -15, 11, -33, 12, -19, -34, 16, -29, -38,
    -- layer=2 filter=62 channel=28
    -12, -25, -53, 0, -15, -46, 14, 14, 42,
    -- layer=2 filter=62 channel=29
    52, 29, 2, 14, 21, 4, 19, 10, 36,
    -- layer=2 filter=62 channel=30
    14, -31, -36, 7, -22, -10, 9, 9, -12,
    -- layer=2 filter=62 channel=31
    2, -11, 19, -33, 2, 78, -27, -13, -9,
    -- layer=2 filter=63 channel=0
    -34, 8, 14, -20, 16, 23, -3, 13, 11,
    -- layer=2 filter=63 channel=1
    -31, 1, 27, -79, 20, 58, -58, 51, 31,
    -- layer=2 filter=63 channel=2
    49, 1, 26, 22, 4, 4, 14, -34, -18,
    -- layer=2 filter=63 channel=3
    12, 41, -3, 26, 4, 18, -9, -25, -34,
    -- layer=2 filter=63 channel=4
    46, 0, -6, 29, -23, -1, 36, 38, -52,
    -- layer=2 filter=63 channel=5
    -3, -3, 3, -24, -19, -21, -7, -7, 9,
    -- layer=2 filter=63 channel=6
    -26, -4, 27, -40, -54, -4, -14, 1, 14,
    -- layer=2 filter=63 channel=7
    -94, 3, 28, -68, 16, 38, -36, 14, 66,
    -- layer=2 filter=63 channel=8
    63, 17, -30, 23, -32, -46, 37, 2, -70,
    -- layer=2 filter=63 channel=9
    -15, 0, 8, 2, -17, -8, 7, 19, 19,
    -- layer=2 filter=63 channel=10
    -30, 32, -6, 28, -13, 33, -13, 30, 24,
    -- layer=2 filter=63 channel=11
    -8, 15, 30, -14, 16, 27, 10, 19, 16,
    -- layer=2 filter=63 channel=12
    31, -24, 1, -17, -18, -23, 0, -12, -4,
    -- layer=2 filter=63 channel=13
    13, -18, -7, 44, -5, -56, 28, -26, 5,
    -- layer=2 filter=63 channel=14
    13, 12, -11, -8, 7, -20, 9, 12, -8,
    -- layer=2 filter=63 channel=15
    -71, 13, 37, -39, 3, 59, -33, -6, 69,
    -- layer=2 filter=63 channel=16
    70, 14, -52, 40, -17, -89, 48, -19, -57,
    -- layer=2 filter=63 channel=17
    7, 15, -15, -23, -33, -21, -55, -7, -50,
    -- layer=2 filter=63 channel=18
    -17, -15, 26, -87, 41, 19, -58, -10, 67,
    -- layer=2 filter=63 channel=19
    -5, 19, 11, -29, -20, 40, -78, 33, -14,
    -- layer=2 filter=63 channel=20
    50, 0, -27, 55, -11, -48, 57, -15, -62,
    -- layer=2 filter=63 channel=21
    -25, 13, 11, 5, 2, 41, -11, -16, 15,
    -- layer=2 filter=63 channel=22
    -14, -41, 21, -6, -105, -52, 25, -26, -41,
    -- layer=2 filter=63 channel=23
    -45, -6, 40, -38, -26, 27, -43, 12, 34,
    -- layer=2 filter=63 channel=24
    0, 9, 2, 4, 0, -42, 9, -27, -52,
    -- layer=2 filter=63 channel=25
    10, -27, 12, 7, -19, -30, -28, 7, 14,
    -- layer=2 filter=63 channel=26
    -68, 25, -8, -39, -3, 25, -28, -19, 45,
    -- layer=2 filter=63 channel=27
    -47, -9, 26, -44, 3, 24, -44, -15, -16,
    -- layer=2 filter=63 channel=28
    54, -3, -46, 60, 2, -27, 35, 6, -82,
    -- layer=2 filter=63 channel=29
    8, 8, 12, 1, -10, 7, -17, 24, 12,
    -- layer=2 filter=63 channel=30
    47, 32, -47, 35, -8, -38, 54, -43, -16,
    -- layer=2 filter=63 channel=31
    -31, 19, 38, -15, -10, -7, 22, -37, -13,

    others => 0);
end iwght_package;

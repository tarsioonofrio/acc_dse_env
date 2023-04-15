library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=1
    -2336, 13514, -2152, 2155, 5954, -16098, -4232, -16977, -2714, 17585, 12267, 12440, 988, -10755, 2950, 3636, 11903, 13176, 9004, -5367, -11557, 7641, 3000, -2332, 8389, 15792, -744, -1957, 5632, -10314, -2792, 10904,

    -- weights
    -- layer=1 filter=0 channel=0
    45, 59, 48, 7, 46, 26, 41, 38, 34,
    -- layer=1 filter=0 channel=1
    19, -39, -1, 10, 3, 1, -15, -5, -30,
    -- layer=1 filter=0 channel=2
    58, 37, 47, 39, 91, 60, 67, 65, 96,
    -- layer=1 filter=0 channel=3
    -2, 43, 3, -1, 39, -9, 32, 57, 82,
    -- layer=1 filter=0 channel=4
    18, 26, 20, 45, 24, 41, 13, 11, -15,
    -- layer=1 filter=0 channel=5
    -49, 38, 56, 1, 72, 99, 102, 102, 105,
    -- layer=1 filter=0 channel=6
    39, 4, 19, 66, 43, 16, 38, 56, 20,
    -- layer=1 filter=0 channel=7
    7, -25, -4, -5, -5, -24, 39, 17, 7,
    -- layer=1 filter=0 channel=8
    21, 32, -57, 19, -19, -41, -47, -62, -69,
    -- layer=1 filter=0 channel=9
    12, -20, 0, -9, 17, -39, 31, 3, 12,
    -- layer=1 filter=0 channel=10
    -43, -43, 36, -43, -45, 2, -46, -58, 3,
    -- layer=1 filter=0 channel=11
    19, -29, -38, 19, 0, -27, 44, -3, -4,
    -- layer=1 filter=0 channel=12
    20, -18, -11, -8, -9, 14, 30, 23, -26,
    -- layer=1 filter=0 channel=13
    -26, -54, -2, -6, -8, -42, -3, -13, -2,
    -- layer=1 filter=0 channel=14
    -64, -5, -10, -65, -51, -26, 13, -24, 0,
    -- layer=1 filter=0 channel=15
    15, -9, 0, 49, -19, -33, 23, 38, -22,
    -- layer=1 filter=1 channel=0
    80, 99, 56, 114, 118, 131, 69, 139, 120,
    -- layer=1 filter=1 channel=1
    16, -11, -70, -47, -66, -55, 38, 6, -47,
    -- layer=1 filter=1 channel=2
    37, 11, 53, -11, 27, -56, 22, 2, -43,
    -- layer=1 filter=1 channel=3
    58, 12, 14, 100, 59, 1, 42, 6, 44,
    -- layer=1 filter=1 channel=4
    45, 42, 50, 17, 48, -2, 1, 52, -6,
    -- layer=1 filter=1 channel=5
    -67, -102, -104, -88, -104, -121, -57, -25, -48,
    -- layer=1 filter=1 channel=6
    23, 37, 27, -10, -17, -31, 0, 12, 0,
    -- layer=1 filter=1 channel=7
    -62, 0, -51, 26, -15, -42, 62, 22, -45,
    -- layer=1 filter=1 channel=8
    -51, 15, 126, -7, 22, -6, 45, 68, 58,
    -- layer=1 filter=1 channel=9
    4, -39, -7, 0, -61, -81, 34, -51, -58,
    -- layer=1 filter=1 channel=10
    -2, 13, -19, -25, -44, -64, -31, -30, -48,
    -- layer=1 filter=1 channel=11
    -47, -26, -67, -8, -62, -115, 33, 12, -67,
    -- layer=1 filter=1 channel=12
    -43, -19, -62, -19, -22, -45, 58, -8, -38,
    -- layer=1 filter=1 channel=13
    -31, -40, -49, 26, 24, -17, 42, 48, 0,
    -- layer=1 filter=1 channel=14
    -5, 8, -4, 0, -17, 8, 45, -31, -29,
    -- layer=1 filter=1 channel=15
    1, 42, 12, -37, -45, -33, 38, 44, -49,
    -- layer=1 filter=2 channel=0
    -38, -16, -5, 9, 0, -19, -1, -14, -23,
    -- layer=1 filter=2 channel=1
    -31, -25, -6, -26, -21, 4, 7, 7, -12,
    -- layer=1 filter=2 channel=2
    -31, 1, 15, 27, -3, 0, -21, 1, -1,
    -- layer=1 filter=2 channel=3
    -9, -5, 22, 0, -22, 32, 0, -14, -2,
    -- layer=1 filter=2 channel=4
    11, 0, -25, 5, 25, 4, -4, 19, -20,
    -- layer=1 filter=2 channel=5
    3, -10, 2, -13, 33, -18, 30, -10, -13,
    -- layer=1 filter=2 channel=6
    -27, -30, 12, -27, -34, -3, 18, -24, -37,
    -- layer=1 filter=2 channel=7
    -32, 9, 6, -36, 5, -12, -23, -32, 3,
    -- layer=1 filter=2 channel=8
    29, -15, 26, 0, 18, -3, 8, -6, -22,
    -- layer=1 filter=2 channel=9
    -39, -42, -11, 7, -14, 20, 16, -9, -35,
    -- layer=1 filter=2 channel=10
    2, -1, 12, -28, 15, -32, -35, -12, 0,
    -- layer=1 filter=2 channel=11
    -19, -16, 26, -21, -36, -36, -8, -17, -36,
    -- layer=1 filter=2 channel=12
    -24, 7, -13, -4, 0, 3, -11, -6, -32,
    -- layer=1 filter=2 channel=13
    1, 18, -24, -30, -23, -1, -34, 12, 24,
    -- layer=1 filter=2 channel=14
    -13, -18, -16, -39, 12, 12, 11, -6, 0,
    -- layer=1 filter=2 channel=15
    -29, -2, -7, -10, -9, -30, -10, 25, 16,
    -- layer=1 filter=3 channel=0
    35, 23, 25, 46, 48, -1, 9, 46, 44,
    -- layer=1 filter=3 channel=1
    -43, 2, 22, -12, -33, 21, -11, -43, -6,
    -- layer=1 filter=3 channel=2
    -76, -64, -46, -38, -84, -43, 6, -27, 2,
    -- layer=1 filter=3 channel=3
    -6, 36, 62, -30, -11, 24, -4, -24, -23,
    -- layer=1 filter=3 channel=4
    -22, -9, 30, -40, 29, -4, 26, 2, 63,
    -- layer=1 filter=3 channel=5
    -3, -26, 27, -54, 9, -37, -19, -18, -45,
    -- layer=1 filter=3 channel=6
    -2, 10, 30, 4, -16, -3, -23, -17, -11,
    -- layer=1 filter=3 channel=7
    29, -55, -35, 61, -25, -17, 23, -88, 0,
    -- layer=1 filter=3 channel=8
    145, -9, 17, 139, -24, -17, 139, 4, 30,
    -- layer=1 filter=3 channel=9
    -88, 14, -8, -70, -8, -21, -45, 9, -41,
    -- layer=1 filter=3 channel=10
    -16, -14, -27, 12, -65, -13, 87, 81, 15,
    -- layer=1 filter=3 channel=11
    28, -42, 0, -11, -30, -27, 17, -47, -40,
    -- layer=1 filter=3 channel=12
    -5, -5, 36, 2, -22, -9, -36, -43, -60,
    -- layer=1 filter=3 channel=13
    35, 10, -21, 39, 6, -11, 18, -43, -22,
    -- layer=1 filter=3 channel=14
    -50, 15, 30, -31, 9, 22, -68, 18, -15,
    -- layer=1 filter=3 channel=15
    21, -84, -6, 18, -24, 0, 47, 11, 34,
    -- layer=1 filter=4 channel=0
    -50, 10, -32, -90, -65, -46, -73, -25, -31,
    -- layer=1 filter=4 channel=1
    -78, -116, -81, -11, -58, -63, -19, -6, -13,
    -- layer=1 filter=4 channel=2
    15, 29, 2, 33, 37, 76, 61, 24, 39,
    -- layer=1 filter=4 channel=3
    88, 49, 83, 48, 61, 21, -51, -31, -15,
    -- layer=1 filter=4 channel=4
    1, -6, -43, 10, -32, -48, 3, 8, 18,
    -- layer=1 filter=4 channel=5
    43, 98, 113, 21, 36, 56, -53, -42, -84,
    -- layer=1 filter=4 channel=6
    -7, -64, -64, 6, -28, -36, -1, 21, 20,
    -- layer=1 filter=4 channel=7
    32, 54, 73, 3, 55, 31, -19, -33, -14,
    -- layer=1 filter=4 channel=8
    -39, -52, 15, -58, -9, 12, -30, 48, 18,
    -- layer=1 filter=4 channel=9
    68, 92, 71, 31, 46, 74, -14, 26, -19,
    -- layer=1 filter=4 channel=10
    -37, -46, -32, 21, -60, -16, -18, -38, 4,
    -- layer=1 filter=4 channel=11
    -12, -67, -33, -8, -45, -83, 13, -27, 1,
    -- layer=1 filter=4 channel=12
    -33, -49, -97, 2, -54, -33, 5, 30, -14,
    -- layer=1 filter=4 channel=13
    -35, -76, -59, -60, -34, -30, -14, -55, -36,
    -- layer=1 filter=4 channel=14
    12, 66, 97, 10, 16, 19, -57, -31, -56,
    -- layer=1 filter=4 channel=15
    61, 35, 40, 43, 9, 24, -18, -20, 24,
    -- layer=1 filter=5 channel=0
    33, 81, 106, 0, 48, 93, 35, 93, 52,
    -- layer=1 filter=5 channel=1
    13, 28, 45, -19, 2, -1, -1, 23, -36,
    -- layer=1 filter=5 channel=2
    10, 26, 11, -108, -76, -14, -83, -41, -6,
    -- layer=1 filter=5 channel=3
    -56, -37, -36, 26, 54, 30, 55, 61, 46,
    -- layer=1 filter=5 channel=4
    22, -16, 5, 20, -16, -26, 53, 5, -42,
    -- layer=1 filter=5 channel=5
    -10, -8, 4, 72, 74, 88, 71, 95, 77,
    -- layer=1 filter=5 channel=6
    -30, -44, -20, 33, -21, -17, 75, 29, 38,
    -- layer=1 filter=5 channel=7
    0, -10, 5, 13, 8, -9, 58, 39, 50,
    -- layer=1 filter=5 channel=8
    10, 5, 25, 52, -9, 40, 37, 13, 25,
    -- layer=1 filter=5 channel=9
    26, 27, -10, 21, 13, 32, 20, 21, 32,
    -- layer=1 filter=5 channel=10
    -16, 0, 59, -63, -17, -16, -132, -79, -61,
    -- layer=1 filter=5 channel=11
    -27, -3, 5, 33, 13, 4, 20, 20, -28,
    -- layer=1 filter=5 channel=12
    -27, -23, 27, 22, -14, -26, 37, -16, -17,
    -- layer=1 filter=5 channel=13
    -25, -28, -47, -14, 3, -18, -33, -29, 23,
    -- layer=1 filter=5 channel=14
    -35, -42, 5, -48, -15, 3, 0, 25, -11,
    -- layer=1 filter=5 channel=15
    40, 54, 0, 57, 6, 30, 41, 31, 15,
    -- layer=1 filter=6 channel=0
    -50, -20, -49, 2, 56, 22, 14, 20, 45,
    -- layer=1 filter=6 channel=1
    15, 29, 21, 26, -28, -21, -13, -18, -24,
    -- layer=1 filter=6 channel=2
    57, 91, 144, 84, 44, 70, 44, 90, 75,
    -- layer=1 filter=6 channel=3
    -67, -63, -68, -43, -57, -75, 17, -28, -9,
    -- layer=1 filter=6 channel=4
    0, 0, -6, 24, -22, -7, 33, -10, 15,
    -- layer=1 filter=6 channel=5
    -45, -12, 37, 6, 74, 66, 14, 73, 71,
    -- layer=1 filter=6 channel=6
    -19, 18, -30, 19, -27, -38, 13, 37, 10,
    -- layer=1 filter=6 channel=7
    8, 15, -22, 0, -8, 25, 12, -3, 9,
    -- layer=1 filter=6 channel=8
    49, -42, -14, 64, 5, 8, 72, 37, 101,
    -- layer=1 filter=6 channel=9
    26, -30, -21, 26, 22, -44, 20, -14, 8,
    -- layer=1 filter=6 channel=10
    11, 76, 86, 24, 0, 40, -7, 38, 36,
    -- layer=1 filter=6 channel=11
    2, 9, 9, -13, 0, -25, 22, -1, -8,
    -- layer=1 filter=6 channel=12
    20, 10, 28, 23, -18, -33, 11, -22, -23,
    -- layer=1 filter=6 channel=13
    -16, 35, -5, -12, -2, -22, -40, 1, 1,
    -- layer=1 filter=6 channel=14
    -24, -23, 12, -16, 26, 29, -11, -1, -15,
    -- layer=1 filter=6 channel=15
    -11, -6, -5, -5, 7, -9, 40, 15, 18,
    -- layer=1 filter=7 channel=0
    22, 8, 51, 36, -9, 5, 60, 57, 28,
    -- layer=1 filter=7 channel=1
    15, -4, -26, 31, -8, 39, 4, -2, 1,
    -- layer=1 filter=7 channel=2
    -13, -4, 13, -51, -14, 19, -23, -4, 32,
    -- layer=1 filter=7 channel=3
    -59, -4, 4, 47, 56, 17, 52, 44, 86,
    -- layer=1 filter=7 channel=4
    -13, -15, -25, 4, -6, -26, 33, -27, 9,
    -- layer=1 filter=7 channel=5
    -9, -11, 47, 56, 50, 51, 65, 75, 76,
    -- layer=1 filter=7 channel=6
    5, -44, -12, -18, 1, -38, 56, 52, 48,
    -- layer=1 filter=7 channel=7
    33, -1, 25, -16, 4, 27, 31, 3, 8,
    -- layer=1 filter=7 channel=8
    30, 17, -8, -3, 28, -60, -70, -41, -88,
    -- layer=1 filter=7 channel=9
    23, 14, 33, 9, 34, 6, -8, -5, 39,
    -- layer=1 filter=7 channel=10
    -47, -24, -40, -17, -5, -10, -42, -18, -31,
    -- layer=1 filter=7 channel=11
    16, 8, -10, 26, -26, 18, 30, 29, 22,
    -- layer=1 filter=7 channel=12
    -18, -7, 4, 7, 14, 19, 7, 28, 25,
    -- layer=1 filter=7 channel=13
    -20, -4, 16, 0, -4, 3, 0, -30, -17,
    -- layer=1 filter=7 channel=14
    -8, -39, 25, -33, 2, -8, -41, 0, -27,
    -- layer=1 filter=7 channel=15
    34, 38, 14, 14, 26, 9, 40, -17, -7,
    -- layer=1 filter=8 channel=0
    -35, -4, 5, -55, -16, -27, -65, -48, -72,
    -- layer=1 filter=8 channel=1
    -8, -16, -11, -6, 4, -11, -27, -5, 5,
    -- layer=1 filter=8 channel=2
    65, 23, 87, 81, 108, 111, 26, 34, 68,
    -- layer=1 filter=8 channel=3
    40, -6, -22, -29, 17, -8, 0, -6, -18,
    -- layer=1 filter=8 channel=4
    12, 34, 26, 13, 17, -5, 2, 18, -12,
    -- layer=1 filter=8 channel=5
    -6, -21, 9, 60, 43, 43, 30, 50, 60,
    -- layer=1 filter=8 channel=6
    42, 51, 38, -36, -30, -28, -35, 30, -5,
    -- layer=1 filter=8 channel=7
    21, 6, 14, 12, -10, -18, -5, -1, -37,
    -- layer=1 filter=8 channel=8
    13, -4, -64, 22, 14, -8, 75, 54, 43,
    -- layer=1 filter=8 channel=9
    17, 32, -2, -12, -7, 21, -11, -14, -41,
    -- layer=1 filter=8 channel=10
    2, -3, 38, 33, 57, 5, 15, 36, 20,
    -- layer=1 filter=8 channel=11
    38, 24, 41, -31, -29, -25, -3, -37, -31,
    -- layer=1 filter=8 channel=12
    4, 26, 21, -33, -7, -33, -32, -2, -40,
    -- layer=1 filter=8 channel=13
    30, -7, 26, -33, 27, -7, 3, -32, -28,
    -- layer=1 filter=8 channel=14
    4, -25, -10, 47, 6, 40, 39, 23, 11,
    -- layer=1 filter=8 channel=15
    -22, 18, -19, -20, 0, 6, -22, -6, 31,
    -- layer=1 filter=9 channel=0
    78, 19, 29, 62, 68, 53, 64, 55, 14,
    -- layer=1 filter=9 channel=1
    -2, -23, -20, -18, -25, 9, -12, 30, 20,
    -- layer=1 filter=9 channel=2
    -130, -103, -88, -160, -130, -121, -193, -167, -167,
    -- layer=1 filter=9 channel=3
    23, -22, 10, -59, -48, -14, -39, 14, -11,
    -- layer=1 filter=9 channel=4
    13, -26, 0, 18, -3, -24, 20, -4, 6,
    -- layer=1 filter=9 channel=5
    38, -15, 46, -27, -16, -11, -64, -37, -76,
    -- layer=1 filter=9 channel=6
    27, 0, -8, 4, 17, -30, 35, -1, -5,
    -- layer=1 filter=9 channel=7
    23, 20, 14, 9, 17, 17, -7, 13, -19,
    -- layer=1 filter=9 channel=8
    -3, -44, -16, -59, -23, 13, -6, -27, 6,
    -- layer=1 filter=9 channel=9
    -19, 8, 15, 6, 10, 12, -6, -22, 25,
    -- layer=1 filter=9 channel=10
    -59, -50, -68, -60, -72, -93, -75, -86, -96,
    -- layer=1 filter=9 channel=11
    -27, -4, 4, 16, 8, 4, 34, 29, -15,
    -- layer=1 filter=9 channel=12
    -15, -3, 9, -14, 3, -23, 13, 13, 30,
    -- layer=1 filter=9 channel=13
    48, 18, 13, 32, 21, 13, 31, 4, 42,
    -- layer=1 filter=9 channel=14
    52, 26, 37, -15, 10, 37, 9, 27, -14,
    -- layer=1 filter=9 channel=15
    18, 21, -13, 10, 21, -21, 27, -6, -6,
    -- layer=1 filter=10 channel=0
    -30, 21, -12, 30, 42, 6, -11, -12, 10,
    -- layer=1 filter=10 channel=1
    21, 11, 38, 11, -5, -1, -65, -26, 0,
    -- layer=1 filter=10 channel=2
    67, 97, 47, 73, 43, 50, 52, 51, 35,
    -- layer=1 filter=10 channel=3
    -4, -67, -34, 1, -46, -110, 1, -67, -120,
    -- layer=1 filter=10 channel=4
    44, -4, -15, 28, -19, -33, 62, -16, 0,
    -- layer=1 filter=10 channel=5
    50, -2, -7, 101, 83, 25, 39, 43, -1,
    -- layer=1 filter=10 channel=6
    28, -8, 5, -37, -14, 5, 27, 0, -6,
    -- layer=1 filter=10 channel=7
    -14, 26, -26, -22, -1, 11, -47, -59, -18,
    -- layer=1 filter=10 channel=8
    3, 24, 0, -17, -50, -30, -6, 13, -25,
    -- layer=1 filter=10 channel=9
    -21, -13, 30, -45, 6, 6, -43, 4, 39,
    -- layer=1 filter=10 channel=10
    79, 21, -57, -51, -46, -39, -110, -106, -48,
    -- layer=1 filter=10 channel=11
    15, -3, 40, -28, -17, 53, 2, -39, 10,
    -- layer=1 filter=10 channel=12
    -25, 37, 42, -54, 16, 41, -41, -55, 25,
    -- layer=1 filter=10 channel=13
    15, 37, 12, -25, -5, 23, -44, -38, -25,
    -- layer=1 filter=10 channel=14
    -30, 6, 18, 52, 24, 50, 16, 8, 81,
    -- layer=1 filter=10 channel=15
    12, -15, -26, -58, -21, -2, -38, -90, -34,
    -- layer=1 filter=11 channel=0
    61, 23, 38, 72, 28, -19, 15, -39, -39,
    -- layer=1 filter=11 channel=1
    13, 11, -32, 27, 22, -34, 27, -7, 23,
    -- layer=1 filter=11 channel=2
    -14, -8, 32, -31, -2, 4, 3, 17, -75,
    -- layer=1 filter=11 channel=3
    -10, 16, 62, 32, 45, 30, -4, 53, 7,
    -- layer=1 filter=11 channel=4
    23, 8, 9, -25, -22, -55, -58, -122, -92,
    -- layer=1 filter=11 channel=5
    7, -39, -36, -10, -41, 15, -43, -67, -19,
    -- layer=1 filter=11 channel=6
    -18, 10, 2, -35, -68, -56, -109, -137, -93,
    -- layer=1 filter=11 channel=7
    23, 5, -21, -20, 23, -18, 18, 12, -29,
    -- layer=1 filter=11 channel=8
    -20, -40, -10, -70, -10, 24, -29, -10, 61,
    -- layer=1 filter=11 channel=9
    -25, -23, 5, -48, -63, 1, -53, -76, -59,
    -- layer=1 filter=11 channel=10
    32, 27, 10, 64, 42, -1, 69, 69, 53,
    -- layer=1 filter=11 channel=11
    21, 33, 1, 47, 11, -17, -7, 2, -11,
    -- layer=1 filter=11 channel=12
    7, 6, -1, 49, 39, 25, 42, 37, 25,
    -- layer=1 filter=11 channel=13
    3, 3, 20, 57, 7, 38, 68, 38, 44,
    -- layer=1 filter=11 channel=14
    -18, -20, -6, 1, -28, -20, 5, 10, 0,
    -- layer=1 filter=11 channel=15
    -3, 4, 0, -17, -17, -49, -46, -30, -58,
    -- layer=1 filter=12 channel=0
    13, -12, -21, -10, 31, 16, -2, 76, 37,
    -- layer=1 filter=12 channel=1
    59, 39, -9, 9, -16, -22, 15, 6, 0,
    -- layer=1 filter=12 channel=2
    14, -17, 36, -21, -42, -4, -35, 14, -22,
    -- layer=1 filter=12 channel=3
    -56, -36, -30, -11, 17, -4, 25, 12, 99,
    -- layer=1 filter=12 channel=4
    83, 36, -29, -1, -14, -26, 18, -10, -51,
    -- layer=1 filter=12 channel=5
    -131, -107, -28, -183, -93, -88, -129, -90, -46,
    -- layer=1 filter=12 channel=6
    13, 3, 9, 10, -25, 13, -4, -41, 19,
    -- layer=1 filter=12 channel=7
    -17, 3, 39, -24, -11, 22, -25, -24, 31,
    -- layer=1 filter=12 channel=8
    9, -18, -4, 34, -32, -62, 45, -60, -56,
    -- layer=1 filter=12 channel=9
    40, -7, -6, -35, 0, -39, -9, 5, 43,
    -- layer=1 filter=12 channel=10
    -25, 49, 12, -24, 29, 21, 1, -13, -90,
    -- layer=1 filter=12 channel=11
    8, 24, 13, 26, 0, 19, 35, -7, 54,
    -- layer=1 filter=12 channel=12
    52, 38, 24, 41, 8, 35, 17, -4, 21,
    -- layer=1 filter=12 channel=13
    -47, -33, -28, -34, 3, -20, 21, 1, 25,
    -- layer=1 filter=12 channel=14
    -107, -114, -87, -73, -68, -49, -51, -11, 20,
    -- layer=1 filter=12 channel=15
    41, 39, 31, -19, -6, -1, -60, -26, -3,
    -- layer=1 filter=13 channel=0
    20, 38, 33, 25, 47, 17, -2, 5, 29,
    -- layer=1 filter=13 channel=1
    2, -3, 11, -13, 8, -5, -2, 14, -17,
    -- layer=1 filter=13 channel=2
    -84, -75, -8, 21, 35, 61, 77, 95, 123,
    -- layer=1 filter=13 channel=3
    49, 17, -8, -4, 23, 7, 65, 49, 56,
    -- layer=1 filter=13 channel=4
    -37, -64, -24, -53, -60, -12, -28, 18, 33,
    -- layer=1 filter=13 channel=5
    51, 18, 39, 112, 115, 100, 88, 135, 95,
    -- layer=1 filter=13 channel=6
    -71, -13, -12, -59, -36, 2, 44, 46, 65,
    -- layer=1 filter=13 channel=7
    46, 31, 10, -4, 14, 25, -28, -3, 0,
    -- layer=1 filter=13 channel=8
    -66, -3, -53, -127, -5, -36, -144, -55, -42,
    -- layer=1 filter=13 channel=9
    32, 42, 12, 7, 15, 32, -14, 16, -21,
    -- layer=1 filter=13 channel=10
    -34, -8, 11, 45, 47, 40, 41, 34, 104,
    -- layer=1 filter=13 channel=11
    14, 25, 6, -5, -19, 13, -23, -3, -21,
    -- layer=1 filter=13 channel=12
    29, 0, 25, 25, -5, -6, -19, 1, -3,
    -- layer=1 filter=13 channel=13
    41, -4, 16, 12, 51, -12, 17, 10, 0,
    -- layer=1 filter=13 channel=14
    41, 48, 49, 42, 21, -10, 19, 3, -38,
    -- layer=1 filter=13 channel=15
    -25, -22, -6, -5, 1, 32, 15, 11, 21,
    -- layer=1 filter=14 channel=0
    -26, 37, -17, -84, -66, -34, -11, -5, 12,
    -- layer=1 filter=14 channel=1
    2, 12, -16, -6, -6, 12, 31, 22, 1,
    -- layer=1 filter=14 channel=2
    -119, -128, -93, -216, -183, -160, -186, -152, -91,
    -- layer=1 filter=14 channel=3
    6, 54, 3, 12, 60, 6, 7, 14, 41,
    -- layer=1 filter=14 channel=4
    -14, 15, -46, 2, 8, 24, 52, 20, 29,
    -- layer=1 filter=14 channel=5
    18, -28, -3, -4, -21, -34, 6, -15, -9,
    -- layer=1 filter=14 channel=6
    24, -1, 19, 41, 5, 0, 37, 44, 18,
    -- layer=1 filter=14 channel=7
    0, 22, -1, -6, 13, 8, 3, 16, 38,
    -- layer=1 filter=14 channel=8
    -89, -78, -17, -79, -63, -15, -130, -99, 1,
    -- layer=1 filter=14 channel=9
    -14, -21, -25, -18, 19, -22, 26, 9, 28,
    -- layer=1 filter=14 channel=10
    -129, -87, -84, -41, -28, -36, -59, -56, -40,
    -- layer=1 filter=14 channel=11
    -4, 28, -26, 25, 14, 23, 1, 17, 17,
    -- layer=1 filter=14 channel=12
    8, -6, -1, 16, 29, 1, 32, 30, 38,
    -- layer=1 filter=14 channel=13
    -15, -5, 27, 21, 11, -8, 9, 28, 30,
    -- layer=1 filter=14 channel=14
    -15, -49, 15, -45, -24, -19, -52, 19, 19,
    -- layer=1 filter=14 channel=15
    -27, 6, -32, -19, 6, -18, -36, 31, -6,
    -- layer=1 filter=15 channel=0
    -73, -30, -4, -94, -31, 4, -34, -30, -27,
    -- layer=1 filter=15 channel=1
    -23, 0, 9, -32, 21, 6, 6, -25, -13,
    -- layer=1 filter=15 channel=2
    49, 70, 72, 51, 6, 15, 1, 11, 5,
    -- layer=1 filter=15 channel=3
    44, 25, -5, -65, -27, -39, 17, 26, 15,
    -- layer=1 filter=15 channel=4
    28, 45, 25, 44, 26, 42, 33, 14, 15,
    -- layer=1 filter=15 channel=5
    -74, -68, -31, 55, 110, 53, 160, 187, 178,
    -- layer=1 filter=15 channel=6
    53, 42, 17, 53, 13, 6, 58, 0, -13,
    -- layer=1 filter=15 channel=7
    19, 14, -7, -36, -22, -26, -10, 47, 20,
    -- layer=1 filter=15 channel=8
    -62, -16, -126, -50, -36, -40, -90, -15, -23,
    -- layer=1 filter=15 channel=9
    -12, 18, 4, 26, -16, -5, -5, 28, 20,
    -- layer=1 filter=15 channel=10
    -14, -30, -1, -19, 9, 26, -30, -35, 9,
    -- layer=1 filter=15 channel=11
    33, 31, 17, 13, 2, -28, -8, -9, -17,
    -- layer=1 filter=15 channel=12
    -2, 26, 20, -20, -18, 5, -17, -7, 3,
    -- layer=1 filter=15 channel=13
    -42, -23, -68, -35, -39, -53, -5, -10, 14,
    -- layer=1 filter=15 channel=14
    -93, -62, -55, -51, -18, -9, -10, 38, 72,
    -- layer=1 filter=15 channel=15
    3, 6, -4, -16, -27, 11, -44, -44, 2,
    -- layer=1 filter=16 channel=0
    6, -26, -28, 58, 55, 66, 165, 153, 133,
    -- layer=1 filter=16 channel=1
    44, 1, -13, -21, -45, 2, -61, -49, -8,
    -- layer=1 filter=16 channel=2
    103, 63, 33, 84, 95, 99, 62, -12, 70,
    -- layer=1 filter=16 channel=3
    8, -1, 17, 105, 89, 52, 42, -4, -24,
    -- layer=1 filter=16 channel=4
    64, 57, -15, 48, -40, -72, -32, -114, -120,
    -- layer=1 filter=16 channel=5
    -13, 13, -26, -26, -31, -56, -17, -67, -73,
    -- layer=1 filter=16 channel=6
    38, -1, 9, -15, -138, -101, -22, -74, -61,
    -- layer=1 filter=16 channel=7
    34, 36, 17, 19, 16, -26, 21, -45, -21,
    -- layer=1 filter=16 channel=8
    32, 36, 59, 3, -38, -130, -70, -109, -148,
    -- layer=1 filter=16 channel=9
    40, -1, 40, -5, -51, -11, -49, -53, -26,
    -- layer=1 filter=16 channel=10
    22, 76, 66, 63, 70, 39, -69, -81, -30,
    -- layer=1 filter=16 channel=11
    13, 4, 28, -13, -18, -17, -31, -5, -27,
    -- layer=1 filter=16 channel=12
    -13, -9, 1, -39, -2, -15, -45, -39, 16,
    -- layer=1 filter=16 channel=13
    -10, -41, 22, 28, 6, 41, 40, 9, 49,
    -- layer=1 filter=16 channel=14
    11, 5, -1, -37, 31, 11, 16, -11, 3,
    -- layer=1 filter=16 channel=15
    64, 44, 2, 12, -15, -60, 8, -100, -51,
    -- layer=1 filter=17 channel=0
    -7, -12, -10, 17, 7, -18, 52, -61, -32,
    -- layer=1 filter=17 channel=1
    -2, -19, 4, -4, 4, -17, 2, -7, 28,
    -- layer=1 filter=17 channel=2
    -3, -21, 2, -35, -44, -22, -57, -65, -69,
    -- layer=1 filter=17 channel=3
    -39, 32, -31, -37, -42, 10, -56, -44, -24,
    -- layer=1 filter=17 channel=4
    -52, -27, 16, -71, -26, -8, -44, -55, -2,
    -- layer=1 filter=17 channel=5
    -43, -41, -3, -107, -61, -66, -116, -71, -100,
    -- layer=1 filter=17 channel=6
    -30, -7, 31, -58, -43, -29, -82, -60, -23,
    -- layer=1 filter=17 channel=7
    18, 2, 7, 32, 8, 1, 27, 7, -33,
    -- layer=1 filter=17 channel=8
    52, 31, -33, 44, 29, -21, 92, 114, 59,
    -- layer=1 filter=17 channel=9
    -22, 21, 22, -32, 30, 39, -14, -22, 56,
    -- layer=1 filter=17 channel=10
    -25, 1, 4, -36, -22, -13, -6, -18, -20,
    -- layer=1 filter=17 channel=11
    -27, -3, 30, 14, 24, 1, -8, 21, 17,
    -- layer=1 filter=17 channel=12
    -3, 7, -12, 15, -15, 8, -3, -23, 24,
    -- layer=1 filter=17 channel=13
    -4, -9, 16, 5, -17, -20, 22, 10, -8,
    -- layer=1 filter=17 channel=14
    10, 16, 60, 33, 35, 39, 16, -13, 5,
    -- layer=1 filter=17 channel=15
    10, 32, 37, -27, -13, -13, -2, 23, 15,
    -- layer=1 filter=18 channel=0
    64, 72, 55, 52, 22, 46, 21, 51, 26,
    -- layer=1 filter=18 channel=1
    4, -12, 11, -27, 20, -21, -30, -2, -20,
    -- layer=1 filter=18 channel=2
    -9, -64, -60, -72, -88, -82, -45, -69, -35,
    -- layer=1 filter=18 channel=3
    -7, -19, 6, -4, -42, 0, 32, -19, -25,
    -- layer=1 filter=18 channel=4
    25, 47, 40, 43, 26, 72, 72, 75, 79,
    -- layer=1 filter=18 channel=5
    -72, -41, -54, 0, -25, -64, 18, -50, -41,
    -- layer=1 filter=18 channel=6
    23, 33, 21, 74, 84, 60, 58, 71, 78,
    -- layer=1 filter=18 channel=7
    -3, 2, 12, -17, -38, 16, -23, -3, -21,
    -- layer=1 filter=18 channel=8
    -11, -50, -19, -40, -58, -13, -21, -55, 53,
    -- layer=1 filter=18 channel=9
    9, 11, 4, 21, -25, -41, -41, -22, -3,
    -- layer=1 filter=18 channel=10
    -54, -36, -36, -47, -31, -45, -11, -11, 15,
    -- layer=1 filter=18 channel=11
    -10, 16, -19, 18, -22, 6, -12, -11, -38,
    -- layer=1 filter=18 channel=12
    -1, 25, -14, 19, 11, -11, -24, -1, -43,
    -- layer=1 filter=18 channel=13
    -24, -5, -26, -29, -16, -16, -67, -39, -74,
    -- layer=1 filter=18 channel=14
    -53, -60, -49, -54, -51, -21, -91, -79, -93,
    -- layer=1 filter=18 channel=15
    -22, 28, -12, -24, -28, -9, 8, -22, 31,
    -- layer=1 filter=19 channel=0
    23, 20, 52, 51, 0, 4, 27, 11, -8,
    -- layer=1 filter=19 channel=1
    -80, -93, -74, -4, 24, -20, 41, 57, 57,
    -- layer=1 filter=19 channel=2
    77, 89, 88, 211, 228, 160, 86, 108, 127,
    -- layer=1 filter=19 channel=3
    37, 95, 39, 17, 58, 8, 49, 33, 58,
    -- layer=1 filter=19 channel=4
    -69, -48, -25, -7, -38, -19, 16, 39, 42,
    -- layer=1 filter=19 channel=5
    36, 68, 33, -10, 14, 1, 0, -21, -32,
    -- layer=1 filter=19 channel=6
    15, -27, -47, 42, -2, 12, 49, 39, 34,
    -- layer=1 filter=19 channel=7
    -26, -34, -41, -19, 20, -12, 46, 62, 52,
    -- layer=1 filter=19 channel=8
    43, 62, 1, -19, 11, 9, -20, -45, -42,
    -- layer=1 filter=19 channel=9
    -42, -54, -38, 48, 38, 19, 15, 23, 25,
    -- layer=1 filter=19 channel=10
    -37, -19, -28, 30, 11, 34, 11, -2, -15,
    -- layer=1 filter=19 channel=11
    -7, -62, -51, -22, 34, 26, 43, 60, 61,
    -- layer=1 filter=19 channel=12
    -19, -29, -39, -4, 20, 23, 21, 60, 45,
    -- layer=1 filter=19 channel=13
    -38, 33, -31, 2, 4, 12, 22, 37, 54,
    -- layer=1 filter=19 channel=14
    -21, -10, -21, -16, 4, -40, 15, 21, -20,
    -- layer=1 filter=19 channel=15
    -54, -40, -84, 14, -10, 0, 45, 33, 45,
    -- layer=1 filter=20 channel=0
    -31, 12, -66, -2, 15, -1, -60, -17, -44,
    -- layer=1 filter=20 channel=1
    -26, 32, 38, 7, 23, 13, 5, -13, -21,
    -- layer=1 filter=20 channel=2
    84, 81, 94, 76, 66, 66, 70, 62, 81,
    -- layer=1 filter=20 channel=3
    1, 24, 35, 14, 18, 15, 12, 5, -17,
    -- layer=1 filter=20 channel=4
    26, 60, 21, 2, 25, -6, -49, -29, -23,
    -- layer=1 filter=20 channel=5
    -58, -32, 16, 8, 56, 59, 14, 62, 46,
    -- layer=1 filter=20 channel=6
    18, 48, 66, -37, 21, 6, -47, -51, -40,
    -- layer=1 filter=20 channel=7
    -29, 17, -4, 18, 14, 0, 26, 13, -9,
    -- layer=1 filter=20 channel=8
    -33, -18, -27, 80, -10, -13, 54, 90, 28,
    -- layer=1 filter=20 channel=9
    37, 29, 41, 13, 7, 5, -35, -34, -26,
    -- layer=1 filter=20 channel=10
    10, 24, 32, 3, 11, 16, 42, 59, 53,
    -- layer=1 filter=20 channel=11
    30, -4, -16, -19, 5, 31, 16, -26, -27,
    -- layer=1 filter=20 channel=12
    -23, -20, 30, 0, 34, 0, -27, -26, -30,
    -- layer=1 filter=20 channel=13
    -21, -4, -41, 35, -22, 16, 18, -9, 17,
    -- layer=1 filter=20 channel=14
    1, -14, -39, 18, 20, 14, -5, 19, 32,
    -- layer=1 filter=20 channel=15
    15, 21, 3, -2, 26, -8, -22, 5, -22,
    -- layer=1 filter=21 channel=0
    59, 61, 10, 7, -33, -53, -6, -8, -44,
    -- layer=1 filter=21 channel=1
    20, -27, 20, 21, 39, 10, 15, 4, 51,
    -- layer=1 filter=21 channel=2
    13, 75, 60, -13, 4, -20, -38, 26, 28,
    -- layer=1 filter=21 channel=3
    -71, 13, -27, -39, -37, -49, -25, 24, -42,
    -- layer=1 filter=21 channel=4
    -2, -38, 11, 2, 20, 48, 13, -4, 52,
    -- layer=1 filter=21 channel=5
    -36, -44, 19, -16, -45, 5, 22, -20, 16,
    -- layer=1 filter=21 channel=6
    -37, 13, 0, 5, 27, 26, 16, 1, 46,
    -- layer=1 filter=21 channel=7
    -45, 17, -16, -40, -37, -1, -46, -41, -29,
    -- layer=1 filter=21 channel=8
    -27, 0, -84, -42, 13, -43, -63, -44, -27,
    -- layer=1 filter=21 channel=9
    -62, -61, -3, -70, -40, -35, -45, -62, -33,
    -- layer=1 filter=21 channel=10
    69, 76, 15, 99, 98, 52, 84, 68, 68,
    -- layer=1 filter=21 channel=11
    -2, -1, -11, 27, 36, 26, -12, 30, 40,
    -- layer=1 filter=21 channel=12
    6, 3, 35, 19, 30, 60, 52, 41, 29,
    -- layer=1 filter=21 channel=13
    13, 35, 6, 14, 28, 40, 77, 83, -16,
    -- layer=1 filter=21 channel=14
    -44, -54, 3, -77, -80, -56, -23, -36, -15,
    -- layer=1 filter=21 channel=15
    -28, -40, -29, -84, -63, -10, -66, -16, -26,
    -- layer=1 filter=22 channel=0
    78, 87, 35, 71, 42, 3, 15, 10, -40,
    -- layer=1 filter=22 channel=1
    -3, 11, -3, -14, -1, 0, 16, 2, 16,
    -- layer=1 filter=22 channel=2
    20, 51, 20, 82, 62, 87, 16, 12, 37,
    -- layer=1 filter=22 channel=3
    -41, 13, 10, -8, -26, 4, -31, -37, -12,
    -- layer=1 filter=22 channel=4
    -30, -6, 4, 10, 6, 26, -49, 8, 25,
    -- layer=1 filter=22 channel=5
    -27, -10, 16, -34, -8, 5, -63, -46, -43,
    -- layer=1 filter=22 channel=6
    39, -2, 30, -63, -17, -13, -40, 11, 1,
    -- layer=1 filter=22 channel=7
    1, -33, 6, -16, -62, -37, 19, -46, -52,
    -- layer=1 filter=22 channel=8
    14, -8, -30, -16, 20, -29, 7, 0, -9,
    -- layer=1 filter=22 channel=9
    -26, -39, -31, -61, -58, -19, -79, -84, -67,
    -- layer=1 filter=22 channel=10
    3, 16, 74, 56, 53, 71, 27, 16, 117,
    -- layer=1 filter=22 channel=11
    -23, -14, 12, 7, 21, 24, 25, 34, 1,
    -- layer=1 filter=22 channel=12
    -6, 19, 26, -11, 33, 26, 29, 48, 72,
    -- layer=1 filter=22 channel=13
    37, 57, 25, 16, 0, 13, 92, 94, 57,
    -- layer=1 filter=22 channel=14
    -19, -38, -29, -31, -10, 2, 23, -38, -60,
    -- layer=1 filter=22 channel=15
    -49, -44, -41, -35, -16, -43, -59, -59, -12,
    -- layer=1 filter=23 channel=0
    -68, -22, -52, -37, 33, 3, -13, 48, 26,
    -- layer=1 filter=23 channel=1
    -84, -50, 42, -38, 27, 42, -24, 37, 47,
    -- layer=1 filter=23 channel=2
    42, 23, 0, 0, -94, -5, -110, -105, -30,
    -- layer=1 filter=23 channel=3
    -4, 53, 21, 34, 82, 1, 79, 53, 41,
    -- layer=1 filter=23 channel=4
    -85, -68, -15, -79, -6, 57, -21, 22, 65,
    -- layer=1 filter=23 channel=5
    62, 36, 11, 15, -53, -71, -26, -48, -68,
    -- layer=1 filter=23 channel=6
    -90, -38, 63, -24, 37, 37, 2, 44, 41,
    -- layer=1 filter=23 channel=7
    -34, -50, -7, -11, -40, 0, -11, 5, 34,
    -- layer=1 filter=23 channel=8
    40, 52, -55, 58, 47, -12, 61, -20, -1,
    -- layer=1 filter=23 channel=9
    -58, -32, 40, -16, 23, 76, -25, 14, 31,
    -- layer=1 filter=23 channel=10
    33, 4, -11, 33, -78, 27, -50, 3, -36,
    -- layer=1 filter=23 channel=11
    -67, -43, 32, -35, -13, 59, -17, 27, 72,
    -- layer=1 filter=23 channel=12
    -68, -4, 47, -60, 13, 48, -34, 55, 74,
    -- layer=1 filter=23 channel=13
    5, -5, 8, -27, -16, 40, -19, -2, 1,
    -- layer=1 filter=23 channel=14
    -23, 37, 53, -22, -7, -13, 22, 12, 1,
    -- layer=1 filter=23 channel=15
    -67, -46, -1, -47, -42, 61, -52, 29, 22,
    -- layer=1 filter=24 channel=0
    -2, -23, -24, -1, -10, -21, -6, 0, 18,
    -- layer=1 filter=24 channel=1
    -29, -19, -31, -30, 0, 1, -60, 1, 18,
    -- layer=1 filter=24 channel=2
    27, -30, 5, 54, -57, -34, 9, -23, -46,
    -- layer=1 filter=24 channel=3
    -18, -26, 0, -4, 3, -28, -33, -47, -17,
    -- layer=1 filter=24 channel=4
    17, 40, -19, 27, 4, -27, -31, -25, 29,
    -- layer=1 filter=24 channel=5
    45, -6, -7, 72, 31, 12, 48, 56, 70,
    -- layer=1 filter=24 channel=6
    21, 27, 10, -28, 31, -4, -38, -2, 15,
    -- layer=1 filter=24 channel=7
    -13, 5, 31, 4, 10, 24, 2, -29, 47,
    -- layer=1 filter=24 channel=8
    11, 51, 10, 49, 46, 11, 61, -10, 0,
    -- layer=1 filter=24 channel=9
    29, 3, 47, 29, 44, 51, 15, 22, 64,
    -- layer=1 filter=24 channel=10
    -2, -37, -43, -30, -149, -96, -73, -85, -57,
    -- layer=1 filter=24 channel=11
    14, -14, 3, -57, 0, 30, -32, 3, -11,
    -- layer=1 filter=24 channel=12
    0, -38, 18, -35, 8, -3, -76, -11, 11,
    -- layer=1 filter=24 channel=13
    -34, -44, -43, -40, -5, 3, -40, -64, 4,
    -- layer=1 filter=24 channel=14
    -21, 30, 36, 28, 7, 69, 50, 65, 64,
    -- layer=1 filter=24 channel=15
    -1, -21, -2, 18, 39, 10, -48, -42, 19,
    -- layer=1 filter=25 channel=0
    2, 4, 55, -31, -21, -14, -66, -63, -53,
    -- layer=1 filter=25 channel=1
    -12, -13, -46, -28, -28, -43, -43, 16, -7,
    -- layer=1 filter=25 channel=2
    43, 31, 61, 89, 60, 17, 69, 53, 83,
    -- layer=1 filter=25 channel=3
    25, 55, 18, -41, -10, 24, 15, -30, 3,
    -- layer=1 filter=25 channel=4
    -68, -61, -144, -69, -13, -85, -109, -100, -83,
    -- layer=1 filter=25 channel=5
    60, 78, 104, -3, 3, 33, -8, -27, 10,
    -- layer=1 filter=25 channel=6
    -60, -8, -102, -45, -45, -27, -50, -17, -78,
    -- layer=1 filter=25 channel=7
    21, 34, 70, 33, -13, 34, 3, 24, -8,
    -- layer=1 filter=25 channel=8
    66, -8, 19, 88, 20, 41, 75, 76, 39,
    -- layer=1 filter=25 channel=9
    35, 39, 1, 5, 44, -21, -19, -2, 2,
    -- layer=1 filter=25 channel=10
    -48, -82, -76, 17, -59, -52, -21, -12, 23,
    -- layer=1 filter=25 channel=11
    -12, 2, -3, -36, -30, -34, -2, -12, 4,
    -- layer=1 filter=25 channel=12
    -60, -35, -27, -1, -51, -37, 0, 6, 10,
    -- layer=1 filter=25 channel=13
    5, 20, 32, -13, 6, 34, 5, 2, 28,
    -- layer=1 filter=25 channel=14
    80, 100, 72, 42, 61, 43, 21, 25, 19,
    -- layer=1 filter=25 channel=15
    -4, 14, 10, 28, -17, 33, -27, -8, -21,
    -- layer=1 filter=26 channel=0
    -18, -6, 30, -6, -13, 45, -72, -3, 15,
    -- layer=1 filter=26 channel=1
    -53, -29, -51, -29, 0, -20, 49, 46, 3,
    -- layer=1 filter=26 channel=2
    18, 101, 68, 25, 82, 105, 87, 101, 94,
    -- layer=1 filter=26 channel=3
    26, -7, 17, 12, -6, -21, 42, 63, 60,
    -- layer=1 filter=26 channel=4
    6, -7, 11, -38, 22, 36, -11, 26, 0,
    -- layer=1 filter=26 channel=5
    -15, -10, 8, 20, 26, 23, 12, 80, 29,
    -- layer=1 filter=26 channel=6
    -10, 1, 17, -18, 20, 42, 13, 45, 80,
    -- layer=1 filter=26 channel=7
    -29, -51, -26, -2, 14, -28, 27, 63, 28,
    -- layer=1 filter=26 channel=8
    28, 65, 68, 33, 9, -31, -13, 9, -62,
    -- layer=1 filter=26 channel=9
    -41, -35, -18, -35, 7, 33, 61, 20, 52,
    -- layer=1 filter=26 channel=10
    37, 28, 6, -52, -23, 5, 22, 37, 45,
    -- layer=1 filter=26 channel=11
    -35, -13, -3, 14, -31, -6, -6, 45, 24,
    -- layer=1 filter=26 channel=12
    -4, -42, -29, -21, 0, -25, -7, 9, 39,
    -- layer=1 filter=26 channel=13
    22, -12, 1, 41, 33, -37, 11, 52, 4,
    -- layer=1 filter=26 channel=14
    43, -7, -18, 0, 16, 8, 49, 13, -11,
    -- layer=1 filter=26 channel=15
    -25, -20, -18, -12, -57, 4, 11, 33, 30,
    -- layer=1 filter=27 channel=0
    3, 17, -27, 41, -2, 4, -8, -34, -43,
    -- layer=1 filter=27 channel=1
    -26, 28, -2, -19, 23, 52, 0, 18, 8,
    -- layer=1 filter=27 channel=2
    45, -12, 0, 33, 0, -36, -35, -55, 17,
    -- layer=1 filter=27 channel=3
    68, 14, -29, -11, 24, -30, 34, 28, -12,
    -- layer=1 filter=27 channel=4
    -55, 16, 36, -14, 4, 65, -26, 41, 9,
    -- layer=1 filter=27 channel=5
    2, 8, 18, -1, 13, -13, 10, 5, 9,
    -- layer=1 filter=27 channel=6
    -39, 29, 26, 2, 21, 44, -50, -3, 5,
    -- layer=1 filter=27 channel=7
    -71, 18, 33, -85, -18, 43, -71, 14, 11,
    -- layer=1 filter=27 channel=8
    35, 49, 55, 87, 88, 136, 62, 119, 64,
    -- layer=1 filter=27 channel=9
    0, -8, 13, -16, 42, 28, -21, 21, 15,
    -- layer=1 filter=27 channel=10
    12, -49, 28, -3, -25, 40, -55, 24, 54,
    -- layer=1 filter=27 channel=11
    -15, 5, 40, -63, 46, 2, -59, 12, 32,
    -- layer=1 filter=27 channel=12
    -36, 1, 45, -55, 24, 17, -16, 14, 11,
    -- layer=1 filter=27 channel=13
    -41, 13, 35, -63, 11, 33, -39, 20, -4,
    -- layer=1 filter=27 channel=14
    40, 17, 0, 18, -3, 18, 41, -13, -7,
    -- layer=1 filter=27 channel=15
    -61, -23, 44, -124, 11, 32, -67, 40, 33,
    -- layer=1 filter=28 channel=0
    -23, -58, -17, 2, -40, -22, 15, -27, -41,
    -- layer=1 filter=28 channel=1
    46, -68, -3, 30, -89, 23, 19, -61, 34,
    -- layer=1 filter=28 channel=2
    19, 14, -49, 14, -52, -74, -23, -80, -65,
    -- layer=1 filter=28 channel=3
    -32, -43, -16, 10, 10, 13, 74, 20, -22,
    -- layer=1 filter=28 channel=4
    47, -3, -19, 49, -36, 21, 44, -55, -21,
    -- layer=1 filter=28 channel=5
    -1, 30, 5, 18, -25, -22, -27, -26, -15,
    -- layer=1 filter=28 channel=6
    11, -44, 42, 17, 1, 31, 25, -12, -28,
    -- layer=1 filter=28 channel=7
    17, -2, 0, 51, 19, -14, 33, 8, -44,
    -- layer=1 filter=28 channel=8
    52, 69, 71, 80, 116, 104, 88, 81, 138,
    -- layer=1 filter=28 channel=9
    -6, -57, 52, -17, -81, 44, 1, -60, 57,
    -- layer=1 filter=28 channel=10
    52, -21, -138, 76, -20, -148, 32, -39, -102,
    -- layer=1 filter=28 channel=11
    50, -36, -12, 11, -39, -25, 31, -48, 19,
    -- layer=1 filter=28 channel=12
    39, -43, -9, 41, -56, -18, 24, -35, -38,
    -- layer=1 filter=28 channel=13
    19, 17, -16, 58, -6, -47, 47, -9, -35,
    -- layer=1 filter=28 channel=14
    -21, 12, 69, -35, -2, 64, -62, -13, 35,
    -- layer=1 filter=28 channel=15
    58, 13, -29, 82, 9, -63, 51, -28, -32,
    -- layer=1 filter=29 channel=0
    17, 32, 46, -26, -36, -1, -12, 20, -16,
    -- layer=1 filter=29 channel=1
    -25, -21, -8, 19, -27, 26, 21, -8, -3,
    -- layer=1 filter=29 channel=2
    -55, -85, -36, -13, -59, -29, -24, 25, 3,
    -- layer=1 filter=29 channel=3
    -50, -35, -66, 39, 47, 39, 52, 32, 67,
    -- layer=1 filter=29 channel=4
    24, 33, 11, -6, 22, 35, -7, -27, 21,
    -- layer=1 filter=29 channel=5
    -39, 12, -2, 44, 82, 30, 92, 89, 87,
    -- layer=1 filter=29 channel=6
    46, -10, 43, 13, 32, 25, -22, 28, 67,
    -- layer=1 filter=29 channel=7
    13, -13, -34, -3, 18, 12, 8, 30, -9,
    -- layer=1 filter=29 channel=8
    33, 8, 42, 70, 51, 16, 32, 35, -9,
    -- layer=1 filter=29 channel=9
    25, 45, 41, 3, 20, 46, 17, 49, 7,
    -- layer=1 filter=29 channel=10
    -78, -34, -62, 8, -35, -63, -40, -13, 26,
    -- layer=1 filter=29 channel=11
    12, -7, 0, -20, -30, -17, 27, -19, -20,
    -- layer=1 filter=29 channel=12
    -30, 4, 25, 0, -11, 21, 4, -8, -9,
    -- layer=1 filter=29 channel=13
    -35, -54, -67, -35, -19, -48, 0, -27, -52,
    -- layer=1 filter=29 channel=14
    -20, -14, -36, 32, 0, 0, 13, 60, -1,
    -- layer=1 filter=29 channel=15
    -8, -1, 13, 21, 14, 2, -5, 28, -17,
    -- layer=1 filter=30 channel=0
    -27, -57, -10, 16, -2, -33, -5, -34, -11,
    -- layer=1 filter=30 channel=1
    3, -20, -21, -1, 24, 25, -17, 8, 38,
    -- layer=1 filter=30 channel=2
    -136, -130, -72, -50, -92, -69, -87, -77, -55,
    -- layer=1 filter=30 channel=3
    31, 10, 22, 91, 99, 14, 102, 57, 44,
    -- layer=1 filter=30 channel=4
    -34, -81, -4, -121, -81, 23, -82, -48, 55,
    -- layer=1 filter=30 channel=5
    66, 11, 12, 84, 46, 6, 56, -14, -42,
    -- layer=1 filter=30 channel=6
    -61, -29, -1, -57, -71, 39, -24, 84, 96,
    -- layer=1 filter=30 channel=7
    -6, 10, -22, 5, 29, 11, 22, -35, -26,
    -- layer=1 filter=30 channel=8
    -123, -134, -81, -70, -159, -94, -133, -150, -108,
    -- layer=1 filter=30 channel=9
    -14, -31, -34, -40, -41, -50, 0, -59, -28,
    -- layer=1 filter=30 channel=10
    74, 94, 38, 27, 48, 33, 59, 52, -7,
    -- layer=1 filter=30 channel=11
    -11, -5, 23, 8, -2, -3, -18, 32, 1,
    -- layer=1 filter=30 channel=12
    9, -1, 16, 5, -7, 28, -21, 5, -5,
    -- layer=1 filter=30 channel=13
    68, 25, 36, 51, 57, 50, 45, 41, 32,
    -- layer=1 filter=30 channel=14
    55, 44, -8, 75, 20, 0, 50, 37, -30,
    -- layer=1 filter=30 channel=15
    -40, -29, -68, -23, -59, -35, -14, -40, -1,
    -- layer=1 filter=31 channel=0
    -40, -33, -11, -13, -14, -45, 36, 9, -2,
    -- layer=1 filter=31 channel=1
    11, -20, -6, 11, 29, 13, -2, 1, 24,
    -- layer=1 filter=31 channel=2
    28, 17, 3, -16, -22, -44, 3, -27, 14,
    -- layer=1 filter=31 channel=3
    -9, -26, -10, -37, -34, -19, -74, -32, -97,
    -- layer=1 filter=31 channel=4
    -51, -36, -35, -52, -46, -19, -68, -22, -50,
    -- layer=1 filter=31 channel=5
    -25, -59, -14, -73, -91, -68, -52, -67, -91,
    -- layer=1 filter=31 channel=6
    -19, -1, -34, -53, -37, -53, -66, -25, -20,
    -- layer=1 filter=31 channel=7
    -18, 33, -11, 11, 31, -3, -19, 36, 16,
    -- layer=1 filter=31 channel=8
    21, 36, 32, 53, 28, -12, -8, -22, -12,
    -- layer=1 filter=31 channel=9
    -17, 23, 5, 0, 13, 17, -1, -18, -9,
    -- layer=1 filter=31 channel=10
    31, -1, -28, -7, -5, -21, -29, -3, -6,
    -- layer=1 filter=31 channel=11
    -23, 15, 21, 13, 28, 29, 25, 24, -36,
    -- layer=1 filter=31 channel=12
    36, -10, 29, 9, 27, 11, -18, 4, -26,
    -- layer=1 filter=31 channel=13
    -6, -13, -3, 3, 13, 3, -9, 34, -3,
    -- layer=1 filter=31 channel=14
    -3, 18, 7, 32, 32, -9, -25, 13, 19,
    -- layer=1 filter=31 channel=15
    28, -11, -6, -14, -23, 22, 15, 38, -19,

    others => 0);
end iwght_package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=2
    -782, -3826, -3158, 7943, 9091, -144, 5290, 321, -324, 5592, 5907, -539, -2505, 5183, -532, 8775, -4427, -1886, 2659, 1523, 8575, -5119, -1295, 10859, -1295, 8929, -89, -4090, -1677, 2202, -678, -394,

    -- weights
    -- layer=2 filter=0 channel=0
    -21, 7, 38, -21, -10, 27, -33, 7, 33,
    -- layer=2 filter=0 channel=1
    -7, 8, 18, 0, 19, 6, -5, 2, 34,
    -- layer=2 filter=0 channel=2
    -8, -24, 28, -42, -46, -16, -10, -39, -50,
    -- layer=2 filter=0 channel=3
    41, 22, -12, -22, 16, 26, 3, -4, 7,
    -- layer=2 filter=0 channel=4
    -10, -3, -13, 18, 3, 29, -16, 3, 25,
    -- layer=2 filter=0 channel=5
    -4, 17, -11, 10, 4, 40, 6, 32, 0,
    -- layer=2 filter=0 channel=6
    -34, 8, 26, 25, 10, -5, 1, 37, -4,
    -- layer=2 filter=0 channel=7
    20, 2, 5, 16, -16, -4, 9, -17, -12,
    -- layer=2 filter=0 channel=8
    19, 38, -34, 38, -18, 0, 5, 5, -61,
    -- layer=2 filter=0 channel=9
    2, 30, 34, -28, -9, 21, -21, 29, 5,
    -- layer=2 filter=0 channel=10
    6, 16, 2, -19, -30, 18, -17, -14, 19,
    -- layer=2 filter=0 channel=11
    -20, 4, -7, -20, -12, 0, -21, 25, 20,
    -- layer=2 filter=0 channel=12
    -12, 12, 30, -22, -3, 39, -9, -15, 29,
    -- layer=2 filter=0 channel=13
    37, 26, 4, 17, 10, -14, -25, -14, -44,
    -- layer=2 filter=0 channel=14
    13, -13, 23, -3, -11, 5, 8, 1, -5,
    -- layer=2 filter=0 channel=15
    53, 63, 14, 28, 58, 13, 18, 56, -28,
    -- layer=2 filter=0 channel=16
    18, 17, 15, 3, 10, -21, -21, 9, 25,
    -- layer=2 filter=0 channel=17
    42, 17, -30, -5, 41, 3, -30, 13, -3,
    -- layer=2 filter=0 channel=18
    0, -39, -5, 21, 8, 6, 40, 13, -2,
    -- layer=2 filter=0 channel=19
    -18, -27, -46, -13, -52, -51, -13, -67, -55,
    -- layer=2 filter=0 channel=20
    -20, -1, 10, -29, 4, -9, -20, 16, 12,
    -- layer=2 filter=0 channel=21
    29, -5, 8, 10, 0, -17, 37, 11, -22,
    -- layer=2 filter=0 channel=22
    13, 15, 13, -3, -4, 24, 0, 11, 19,
    -- layer=2 filter=0 channel=23
    -15, -26, -13, -8, -10, -12, -13, -14, 10,
    -- layer=2 filter=0 channel=24
    -27, -54, -73, -22, -31, -2, 12, -1, -11,
    -- layer=2 filter=0 channel=25
    25, 3, -8, 53, -5, -30, 20, -3, -29,
    -- layer=2 filter=0 channel=26
    6, 28, 66, -9, 0, 11, 6, 30, -4,
    -- layer=2 filter=0 channel=27
    18, 15, 47, 51, 43, 8, 45, 35, -16,
    -- layer=2 filter=0 channel=28
    -27, -14, 20, -8, 7, -6, 8, 14, -23,
    -- layer=2 filter=0 channel=29
    -10, 4, -8, 17, 1, -21, 22, -9, -22,
    -- layer=2 filter=0 channel=30
    -12, 14, -37, 29, 32, 20, 13, 4, 34,
    -- layer=2 filter=0 channel=31
    -19, -11, 0, 20, -9, 7, 7, -9, 19,
    -- layer=2 filter=1 channel=0
    -15, -2, -3, 0, 11, 13, 0, 26, 20,
    -- layer=2 filter=1 channel=1
    10, -18, -26, 38, -6, 11, 51, 39, 44,
    -- layer=2 filter=1 channel=2
    -15, -3, -77, 6, -77, -58, -79, -51, -90,
    -- layer=2 filter=1 channel=3
    -26, -10, 3, -7, 24, -9, -24, 20, 6,
    -- layer=2 filter=1 channel=4
    -14, 2, -23, 17, 7, 4, -7, -22, 10,
    -- layer=2 filter=1 channel=5
    -33, -29, -12, 20, 15, -14, 21, -23, 13,
    -- layer=2 filter=1 channel=6
    -18, 10, 1, 12, 13, 4, 29, 22, -18,
    -- layer=2 filter=1 channel=7
    6, -17, -4, 11, -7, 9, -11, -26, 15,
    -- layer=2 filter=1 channel=8
    -18, 49, 8, 13, -10, -41, 1, 17, -2,
    -- layer=2 filter=1 channel=9
    -27, -1, -9, 10, -21, 10, 52, 27, 0,
    -- layer=2 filter=1 channel=10
    1, 11, 27, 26, 14, -4, -2, 12, 9,
    -- layer=2 filter=1 channel=11
    1, -3, -12, -11, -7, 24, 6, 15, 7,
    -- layer=2 filter=1 channel=12
    0, 24, 17, 22, 5, -26, -8, 13, 2,
    -- layer=2 filter=1 channel=13
    56, 37, 60, 53, 40, 29, 30, 20, -8,
    -- layer=2 filter=1 channel=14
    -3, -9, 4, 9, -34, -11, 17, -5, 24,
    -- layer=2 filter=1 channel=15
    -24, 21, -17, 20, 15, -8, -35, -17, -7,
    -- layer=2 filter=1 channel=16
    -27, -23, 12, 12, 26, -24, -25, -15, 11,
    -- layer=2 filter=1 channel=17
    -6, -19, -1, -7, -2, 12, -45, 40, -6,
    -- layer=2 filter=1 channel=18
    33, -14, 22, 39, 0, 21, 6, -27, -44,
    -- layer=2 filter=1 channel=19
    12, -4, 26, 33, 40, 23, 36, 62, 14,
    -- layer=2 filter=1 channel=20
    11, -14, -15, -9, 15, 10, -24, 33, 10,
    -- layer=2 filter=1 channel=21
    49, 32, -3, 60, 15, 13, -8, 17, 0,
    -- layer=2 filter=1 channel=22
    -27, -22, -20, -14, -22, -12, 42, 0, 3,
    -- layer=2 filter=1 channel=23
    57, 39, -9, 8, 30, 23, -9, -11, -12,
    -- layer=2 filter=1 channel=24
    -30, -25, -40, -64, -56, 10, -20, -15, -9,
    -- layer=2 filter=1 channel=25
    -8, 21, -2, -23, -7, -25, -51, 14, -7,
    -- layer=2 filter=1 channel=26
    57, -9, 14, 29, 44, -1, -10, -39, -20,
    -- layer=2 filter=1 channel=27
    12, 22, 12, 30, 6, 1, -1, -17, -24,
    -- layer=2 filter=1 channel=28
    15, -11, 4, -20, -13, -3, -17, 25, -4,
    -- layer=2 filter=1 channel=29
    -25, 11, 22, -43, -3, 17, -51, -6, 4,
    -- layer=2 filter=1 channel=30
    -26, 7, 13, -50, 6, 36, -16, 11, -14,
    -- layer=2 filter=1 channel=31
    -8, 11, 40, -33, -31, -16, -18, -28, -52,
    -- layer=2 filter=2 channel=0
    -23, -28, -7, -1, -11, -3, 23, -1, -13,
    -- layer=2 filter=2 channel=1
    -6, -42, -37, 3, -17, -6, -3, -20, 9,
    -- layer=2 filter=2 channel=2
    -27, 10, -4, 18, 14, 56, 18, 37, 58,
    -- layer=2 filter=2 channel=3
    -13, -14, 5, -1, -29, -8, -8, -14, -25,
    -- layer=2 filter=2 channel=4
    0, -9, 17, 14, 11, -9, -3, 15, -7,
    -- layer=2 filter=2 channel=5
    -7, -6, -24, 29, 11, -38, 29, 20, -48,
    -- layer=2 filter=2 channel=6
    15, 32, 1, -20, -15, -14, -24, 2, -23,
    -- layer=2 filter=2 channel=7
    -22, -20, 0, 0, 18, -17, -8, 1, 16,
    -- layer=2 filter=2 channel=8
    41, -19, -45, 0, 17, -12, 8, -11, -33,
    -- layer=2 filter=2 channel=9
    22, 10, 27, -7, 12, -30, 4, 9, -8,
    -- layer=2 filter=2 channel=10
    22, 43, 15, 2, -15, -17, 6, -27, -28,
    -- layer=2 filter=2 channel=11
    -28, 10, -41, 2, 23, 11, 30, -21, -9,
    -- layer=2 filter=2 channel=12
    41, 12, -24, 15, 1, 2, 6, 15, 15,
    -- layer=2 filter=2 channel=13
    44, 2, 42, 10, -24, -4, 20, 17, 14,
    -- layer=2 filter=2 channel=14
    1, 35, 39, -14, -10, -28, 7, 0, -37,
    -- layer=2 filter=2 channel=15
    33, 43, -31, 1, 64, 23, 16, 12, 25,
    -- layer=2 filter=2 channel=16
    16, 14, -24, 18, 0, -7, -18, -23, -10,
    -- layer=2 filter=2 channel=17
    -36, -21, 2, 1, -22, 20, -7, 8, 0,
    -- layer=2 filter=2 channel=18
    7, 63, 13, 0, 54, -13, 29, 28, 35,
    -- layer=2 filter=2 channel=19
    15, 11, 6, -5, 35, 47, -17, 24, 31,
    -- layer=2 filter=2 channel=20
    8, 29, 8, -24, 8, 10, 7, 24, -17,
    -- layer=2 filter=2 channel=21
    0, -34, -7, -21, -5, -59, 1, -23, -57,
    -- layer=2 filter=2 channel=22
    42, 32, 43, 15, -5, 17, 23, -14, -6,
    -- layer=2 filter=2 channel=23
    9, 5, 33, -56, -7, 22, -10, -19, -20,
    -- layer=2 filter=2 channel=24
    -24, -16, -12, 1, -2, 35, 52, 70, 90,
    -- layer=2 filter=2 channel=25
    -13, 9, 2, 18, 61, 34, 13, 11, 11,
    -- layer=2 filter=2 channel=26
    5, -24, -48, 14, -63, 29, -8, 9, 22,
    -- layer=2 filter=2 channel=27
    31, 46, 23, 5, 41, 28, -14, 7, 29,
    -- layer=2 filter=2 channel=28
    3, -25, 0, -3, -5, 17, 15, 3, 10,
    -- layer=2 filter=2 channel=29
    11, 14, 27, 2, 7, 19, -20, -31, 7,
    -- layer=2 filter=2 channel=30
    -51, -73, -76, 56, -32, -38, 51, -13, -31,
    -- layer=2 filter=2 channel=31
    11, 22, 13, -59, -4, 17, -27, -29, 8,
    -- layer=2 filter=3 channel=0
    33, 12, 27, 31, 34, 31, 15, -1, 4,
    -- layer=2 filter=3 channel=1
    -18, 0, 10, 18, 37, 32, -24, -10, -17,
    -- layer=2 filter=3 channel=2
    10, -40, -40, -53, -54, -21, 7, -23, -25,
    -- layer=2 filter=3 channel=3
    -2, -9, -2, -23, -14, -24, 32, 16, 1,
    -- layer=2 filter=3 channel=4
    -2, -18, 24, -12, -15, 35, -7, -50, 0,
    -- layer=2 filter=3 channel=5
    26, 7, 24, 21, 49, 57, -18, 29, 44,
    -- layer=2 filter=3 channel=6
    6, 7, 11, -16, 8, 23, -11, 12, -3,
    -- layer=2 filter=3 channel=7
    -1, 20, 3, -9, 12, 18, 11, 4, 16,
    -- layer=2 filter=3 channel=8
    52, 21, 39, 8, -23, -31, -12, -25, -61,
    -- layer=2 filter=3 channel=9
    -17, 10, -5, -4, -27, 11, -29, -6, 2,
    -- layer=2 filter=3 channel=10
    -2, 12, -12, -16, -16, 21, -3, -31, 20,
    -- layer=2 filter=3 channel=11
    -23, 28, 14, 14, 21, 30, 12, 18, 7,
    -- layer=2 filter=3 channel=12
    20, -12, 39, -5, 14, 25, 8, 39, 30,
    -- layer=2 filter=3 channel=13
    -1, -37, 2, -14, -28, -3, -55, -37, 0,
    -- layer=2 filter=3 channel=14
    -8, -13, -5, 18, 8, -26, -17, -20, -43,
    -- layer=2 filter=3 channel=15
    -27, 25, 1, 37, 19, 42, 7, 15, 62,
    -- layer=2 filter=3 channel=16
    13, 4, 7, 23, 14, 5, 8, -23, -20,
    -- layer=2 filter=3 channel=17
    -8, 22, 38, -22, 12, 8, -2, 28, 14,
    -- layer=2 filter=3 channel=18
    -43, -11, -17, -51, -35, -59, -8, -31, 18,
    -- layer=2 filter=3 channel=19
    -1, -8, 6, -40, -64, -49, -37, -20, 12,
    -- layer=2 filter=3 channel=20
    5, 24, 25, -14, 33, 0, -5, 9, 31,
    -- layer=2 filter=3 channel=21
    -21, 20, 29, 8, 13, 26, -13, 21, 56,
    -- layer=2 filter=3 channel=22
    -15, -20, 31, -27, -1, 35, -2, -29, -26,
    -- layer=2 filter=3 channel=23
    -24, -42, -5, -27, -44, -25, -9, -32, -5,
    -- layer=2 filter=3 channel=24
    -31, -15, -4, 10, -10, 5, 26, -44, -14,
    -- layer=2 filter=3 channel=25
    25, -7, -1, -23, -28, 1, -6, -29, 9,
    -- layer=2 filter=3 channel=26
    -22, -23, 39, -2, -36, -45, 4, -32, -20,
    -- layer=2 filter=3 channel=27
    -4, 0, 5, -10, 43, 9, 32, -7, 20,
    -- layer=2 filter=3 channel=28
    -12, -7, 5, 2, -3, 9, 17, 16, -15,
    -- layer=2 filter=3 channel=29
    7, -6, -16, 22, -23, -21, 22, 21, 28,
    -- layer=2 filter=3 channel=30
    1, 38, 46, 37, -1, 18, 28, 37, -17,
    -- layer=2 filter=3 channel=31
    -13, -37, -4, 20, 11, -13, 27, 4, -6,
    -- layer=2 filter=4 channel=0
    -37, -8, -23, -20, -21, -5, 2, 12, -10,
    -- layer=2 filter=4 channel=1
    2, -21, 8, -13, -10, 0, -47, 4, 18,
    -- layer=2 filter=4 channel=2
    15, 16, 7, 15, -50, -14, 0, -65, 47,
    -- layer=2 filter=4 channel=3
    -29, -1, 10, 10, 3, -29, 2, 8, -9,
    -- layer=2 filter=4 channel=4
    -2, 0, 20, -19, 23, -9, 4, -18, -1,
    -- layer=2 filter=4 channel=5
    -34, -27, -7, -28, 18, -31, -6, 13, 16,
    -- layer=2 filter=4 channel=6
    -13, -11, -6, -4, 15, -16, 9, 4, -18,
    -- layer=2 filter=4 channel=7
    0, -1, 7, 10, 4, -21, 2, -7, -25,
    -- layer=2 filter=4 channel=8
    -2, -28, -7, 49, 39, -39, 49, 48, 45,
    -- layer=2 filter=4 channel=9
    13, 6, -16, 16, -2, 16, -4, -16, 19,
    -- layer=2 filter=4 channel=10
    -4, 24, -1, 15, 19, 25, 32, 33, 42,
    -- layer=2 filter=4 channel=11
    -15, 10, -1, 18, 23, -5, -8, 28, 6,
    -- layer=2 filter=4 channel=12
    3, -10, 30, 16, -9, 7, 3, 12, 30,
    -- layer=2 filter=4 channel=13
    -12, -49, -28, 12, -26, -10, 42, 42, 18,
    -- layer=2 filter=4 channel=14
    25, 5, 28, -10, 19, 11, 17, -23, -22,
    -- layer=2 filter=4 channel=15
    -133, -47, -51, -136, -130, -69, -75, -76, -34,
    -- layer=2 filter=4 channel=16
    -22, -15, -9, 13, 2, -26, 23, 14, -2,
    -- layer=2 filter=4 channel=17
    22, 31, 2, 25, 22, 33, -10, 30, 7,
    -- layer=2 filter=4 channel=18
    -24, -37, -38, 4, -39, 31, -25, 7, -3,
    -- layer=2 filter=4 channel=19
    31, 17, 13, 33, 13, 45, 19, 26, 61,
    -- layer=2 filter=4 channel=20
    -19, 27, 4, 7, 42, 7, 16, 33, 49,
    -- layer=2 filter=4 channel=21
    17, 27, 33, 9, 9, 11, 7, 46, 17,
    -- layer=2 filter=4 channel=22
    -13, 21, 16, -12, -9, 15, -21, -26, 27,
    -- layer=2 filter=4 channel=23
    8, 16, 10, 24, -4, 6, 38, 20, 53,
    -- layer=2 filter=4 channel=24
    50, 23, 31, 30, -11, 58, 12, -21, 5,
    -- layer=2 filter=4 channel=25
    -11, -3, -18, 11, -6, -6, 17, 18, 14,
    -- layer=2 filter=4 channel=26
    -16, -18, -1, 8, 1, -13, 6, -13, 3,
    -- layer=2 filter=4 channel=27
    -61, -78, -53, -88, -87, -63, -34, -71, -32,
    -- layer=2 filter=4 channel=28
    7, -3, 6, -2, 6, -32, -23, -8, -21,
    -- layer=2 filter=4 channel=29
    9, -33, 6, -8, 1, 46, -24, -56, -8,
    -- layer=2 filter=4 channel=30
    20, -20, -13, 17, 30, -22, 15, -47, -26,
    -- layer=2 filter=4 channel=31
    -15, -17, 21, 19, -2, 11, 17, 8, -6,
    -- layer=2 filter=5 channel=0
    27, -19, 0, 9, -41, 15, -25, 16, 12,
    -- layer=2 filter=5 channel=1
    7, 0, -14, -7, -49, -17, 8, -10, 40,
    -- layer=2 filter=5 channel=2
    -5, 9, -21, 41, -40, -24, -23, -28, -52,
    -- layer=2 filter=5 channel=3
    -30, -16, -12, 10, 19, 25, -5, -11, 20,
    -- layer=2 filter=5 channel=4
    27, -19, 35, -21, -14, 15, -21, 27, 26,
    -- layer=2 filter=5 channel=5
    17, 9, 32, -6, 17, 8, -20, 15, 3,
    -- layer=2 filter=5 channel=6
    18, -6, 36, 25, 8, 2, -27, -35, -29,
    -- layer=2 filter=5 channel=7
    17, 19, -1, 23, -8, 25, 21, -25, -6,
    -- layer=2 filter=5 channel=8
    -61, -37, 8, -29, -38, -10, -49, -13, -56,
    -- layer=2 filter=5 channel=9
    23, 31, 19, 17, 0, -24, -23, -29, -44,
    -- layer=2 filter=5 channel=10
    -5, 16, 0, 22, -16, 5, 21, 6, -4,
    -- layer=2 filter=5 channel=11
    -19, -12, -1, -19, -27, -23, -20, 10, 23,
    -- layer=2 filter=5 channel=12
    -18, 15, 9, 23, -17, -9, -18, -28, -25,
    -- layer=2 filter=5 channel=13
    13, 24, 10, 35, 25, 32, 41, 38, 69,
    -- layer=2 filter=5 channel=14
    37, 0, 8, -15, -25, -22, -8, -1, -8,
    -- layer=2 filter=5 channel=15
    0, -5, 34, 8, 0, 25, 0, 60, -34,
    -- layer=2 filter=5 channel=16
    -21, -13, -22, 18, 11, 11, 8, -13, 0,
    -- layer=2 filter=5 channel=17
    -4, -27, 2, 6, 5, 11, -24, -11, -19,
    -- layer=2 filter=5 channel=18
    36, 17, 14, 13, -33, -61, 43, 15, -31,
    -- layer=2 filter=5 channel=19
    -45, -54, -46, -41, -18, 2, 5, 53, 9,
    -- layer=2 filter=5 channel=20
    -4, -2, 31, -9, -9, 2, -30, -40, -31,
    -- layer=2 filter=5 channel=21
    -5, 18, 34, 21, 7, 13, -13, 12, 27,
    -- layer=2 filter=5 channel=22
    -13, -5, -4, 28, -22, 4, -25, -43, -46,
    -- layer=2 filter=5 channel=23
    29, -11, 9, 15, -1, -25, 2, -2, -14,
    -- layer=2 filter=5 channel=24
    -57, -50, -67, -48, -58, -67, -29, -43, -59,
    -- layer=2 filter=5 channel=25
    -6, 5, -26, 40, 15, -5, 16, 20, 6,
    -- layer=2 filter=5 channel=26
    13, 5, 12, -18, -26, -34, 4, -2, 9,
    -- layer=2 filter=5 channel=27
    -12, 10, -8, 17, 50, 21, 36, 56, -15,
    -- layer=2 filter=5 channel=28
    3, 29, -17, -14, 0, 0, 14, -11, 13,
    -- layer=2 filter=5 channel=29
    2, 13, 9, 16, 31, 29, -3, -60, -29,
    -- layer=2 filter=5 channel=30
    -6, -29, 0, 36, 34, 17, 25, 8, 19,
    -- layer=2 filter=5 channel=31
    25, 41, 23, 2, 4, 37, -5, -31, -37,
    -- layer=2 filter=6 channel=0
    41, -2, 11, 25, 5, 52, 3, 9, 54,
    -- layer=2 filter=6 channel=1
    -1, -2, 0, 37, 34, -10, 42, 34, 31,
    -- layer=2 filter=6 channel=2
    -24, -39, -1, -13, -20, 18, 14, -11, 13,
    -- layer=2 filter=6 channel=3
    -3, 17, 15, -28, 5, -1, -1, 0, 12,
    -- layer=2 filter=6 channel=4
    13, 10, 0, -1, -21, 6, -13, -4, 2,
    -- layer=2 filter=6 channel=5
    9, -18, -34, -2, -13, 21, 36, 11, -9,
    -- layer=2 filter=6 channel=6
    -25, -25, -32, 4, 7, -29, -41, -13, -14,
    -- layer=2 filter=6 channel=7
    2, 4, -9, 7, -14, 4, 6, 14, 25,
    -- layer=2 filter=6 channel=8
    8, 1, 13, 19, 19, 24, -10, -20, -5,
    -- layer=2 filter=6 channel=9
    -14, 0, 26, -7, 10, -10, -27, -9, -17,
    -- layer=2 filter=6 channel=10
    -29, 1, -25, 3, 18, -15, -3, -39, 22,
    -- layer=2 filter=6 channel=11
    33, -13, 2, 37, 37, 9, 50, 6, 1,
    -- layer=2 filter=6 channel=12
    3, 15, 30, 22, 0, 32, -2, 0, 27,
    -- layer=2 filter=6 channel=13
    -13, -40, -50, -30, -52, -37, 2, -58, -18,
    -- layer=2 filter=6 channel=14
    9, 14, -1, -5, 31, 24, 6, 9, -21,
    -- layer=2 filter=6 channel=15
    -16, -26, -69, 6, -63, -19, 1, -20, -24,
    -- layer=2 filter=6 channel=16
    -10, -24, -13, -9, 7, -8, 19, 5, -6,
    -- layer=2 filter=6 channel=17
    12, -14, -15, 18, -5, 17, -20, -4, 15,
    -- layer=2 filter=6 channel=18
    14, 30, 45, -25, -6, 10, -21, 24, -11,
    -- layer=2 filter=6 channel=19
    12, 32, -40, 17, -11, 3, -17, -39, 16,
    -- layer=2 filter=6 channel=20
    -16, 37, -2, 38, 11, 26, 29, 16, 31,
    -- layer=2 filter=6 channel=21
    -21, -7, -29, -18, -42, -56, -38, -38, -45,
    -- layer=2 filter=6 channel=22
    -23, 37, 33, -12, 15, 9, 12, 13, 7,
    -- layer=2 filter=6 channel=23
    -4, 36, 5, 9, 11, -7, -10, -20, -53,
    -- layer=2 filter=6 channel=24
    -46, -15, 34, 42, 8, 93, 17, 6, 9,
    -- layer=2 filter=6 channel=25
    -51, 27, 37, -37, -38, -40, -22, -49, -16,
    -- layer=2 filter=6 channel=26
    24, 5, 43, 14, 0, 10, -21, -30, 10,
    -- layer=2 filter=6 channel=27
    -2, -47, -33, -8, -60, -13, -5, -29, -42,
    -- layer=2 filter=6 channel=28
    -8, 21, -22, -22, -20, -3, 10, 17, 0,
    -- layer=2 filter=6 channel=29
    -34, -20, 22, -20, -58, 0, -6, -42, -5,
    -- layer=2 filter=6 channel=30
    -51, 6, 22, -54, -26, 0, -60, -37, 44,
    -- layer=2 filter=6 channel=31
    -9, 19, -6, 2, -6, 2, -21, -38, -41,
    -- layer=2 filter=7 channel=0
    15, -6, -5, -31, -6, 0, 26, 15, 43,
    -- layer=2 filter=7 channel=1
    -21, 5, -23, -24, -29, -35, -2, -19, -32,
    -- layer=2 filter=7 channel=2
    33, -18, 30, 21, 6, 22, -10, 44, 82,
    -- layer=2 filter=7 channel=3
    -12, -17, 4, -2, 0, 22, 13, -9, 9,
    -- layer=2 filter=7 channel=4
    0, 3, 18, -2, -27, 11, 32, -4, -14,
    -- layer=2 filter=7 channel=5
    -40, -19, -34, -5, -44, -9, 5, -49, -4,
    -- layer=2 filter=7 channel=6
    -4, -7, 27, 38, 2, 26, 23, 13, 31,
    -- layer=2 filter=7 channel=7
    -3, -13, 11, 1, 12, -12, -24, 0, 23,
    -- layer=2 filter=7 channel=8
    36, 36, 16, 112, 6, -19, 107, 23, 30,
    -- layer=2 filter=7 channel=9
    23, 0, 20, 28, 4, 10, 8, 22, 32,
    -- layer=2 filter=7 channel=10
    44, 27, 19, 32, 29, 13, 1, -24, 1,
    -- layer=2 filter=7 channel=11
    -23, -41, -45, -25, -17, -24, -17, -22, -20,
    -- layer=2 filter=7 channel=12
    -4, -38, -15, 28, -26, -32, 29, 15, 6,
    -- layer=2 filter=7 channel=13
    -14, 28, -1, 18, 10, 23, 3, -55, -29,
    -- layer=2 filter=7 channel=14
    6, -16, -10, -10, -8, -12, -2, 37, 28,
    -- layer=2 filter=7 channel=15
    -9, -10, 17, 10, -11, -3, -5, 16, 13,
    -- layer=2 filter=7 channel=16
    26, -18, -13, -2, -6, 6, -17, 2, 8,
    -- layer=2 filter=7 channel=17
    45, -6, 27, 21, 13, 6, 10, 14, -2,
    -- layer=2 filter=7 channel=18
    13, -43, -12, 53, -8, -50, 8, 14, -24,
    -- layer=2 filter=7 channel=19
    5, 18, 5, 35, 27, 35, 20, -41, -45,
    -- layer=2 filter=7 channel=20
    -7, 0, -25, -13, 5, -11, -21, 27, 11,
    -- layer=2 filter=7 channel=21
    12, 9, 26, 7, 0, 30, -11, -30, -8,
    -- layer=2 filter=7 channel=22
    19, -18, -16, 27, 18, 7, 8, 25, 15,
    -- layer=2 filter=7 channel=23
    32, 32, 20, -11, 47, 5, 11, -19, -6,
    -- layer=2 filter=7 channel=24
    37, -33, -24, 25, 0, -28, -3, -20, 28,
    -- layer=2 filter=7 channel=25
    -24, 38, -3, 32, 54, 21, -39, -18, -5,
    -- layer=2 filter=7 channel=26
    38, 21, 60, 1, -13, 15, 40, 21, 21,
    -- layer=2 filter=7 channel=27
    2, 24, 2, 16, 21, 10, -25, 11, 28,
    -- layer=2 filter=7 channel=28
    -6, -21, 0, -15, 18, 29, -1, -14, 2,
    -- layer=2 filter=7 channel=29
    -35, -1, -25, 28, 14, 10, -46, -33, 14,
    -- layer=2 filter=7 channel=30
    26, -3, -32, 31, 1, -21, 26, -17, 23,
    -- layer=2 filter=7 channel=31
    21, -9, 12, 5, 6, 34, -15, 26, 28,
    -- layer=2 filter=8 channel=0
    5, 30, 43, -30, 21, 16, -18, 14, 0,
    -- layer=2 filter=8 channel=1
    -26, -10, 32, -45, -10, 14, -46, -4, 0,
    -- layer=2 filter=8 channel=2
    44, 58, 12, 44, 43, 0, 64, 55, 21,
    -- layer=2 filter=8 channel=3
    0, 10, 23, 13, 31, 27, 18, -10, -15,
    -- layer=2 filter=8 channel=4
    -16, 0, -11, 3, -8, 19, -31, 9, 36,
    -- layer=2 filter=8 channel=5
    -37, 7, 6, -18, -32, 38, -18, 17, 24,
    -- layer=2 filter=8 channel=6
    15, -9, -15, 40, -52, -29, 20, 1, -53,
    -- layer=2 filter=8 channel=7
    -7, 10, 17, 3, 9, -10, 11, -8, -22,
    -- layer=2 filter=8 channel=8
    -11, -5, -28, -29, -11, -12, 9, 38, -37,
    -- layer=2 filter=8 channel=9
    36, -14, -33, 43, -25, -25, 22, -27, -15,
    -- layer=2 filter=8 channel=10
    11, -9, 4, 18, -12, 14, 41, -13, -4,
    -- layer=2 filter=8 channel=11
    -31, -12, 26, 0, -18, 12, -41, 5, 36,
    -- layer=2 filter=8 channel=12
    -1, 2, -1, -10, -3, -5, -15, 15, 24,
    -- layer=2 filter=8 channel=13
    -8, -3, -7, -19, -39, 17, -17, -27, 17,
    -- layer=2 filter=8 channel=14
    16, -16, 23, 36, -18, -11, -9, -30, -25,
    -- layer=2 filter=8 channel=15
    31, 34, 5, 31, 36, -67, 30, 16, 17,
    -- layer=2 filter=8 channel=16
    -5, -11, 24, 0, -19, -8, -2, -16, 23,
    -- layer=2 filter=8 channel=17
    0, -25, -8, 13, 42, 37, -39, 13, 2,
    -- layer=2 filter=8 channel=18
    29, -5, 4, 49, 50, -2, 56, 24, 24,
    -- layer=2 filter=8 channel=19
    -13, -6, 14, 8, -29, 0, -13, -21, -2,
    -- layer=2 filter=8 channel=20
    2, 21, 13, -14, -22, 61, -10, -14, 28,
    -- layer=2 filter=8 channel=21
    -33, 3, 36, -8, -38, 44, -21, -16, 14,
    -- layer=2 filter=8 channel=22
    32, -13, -22, 10, -11, -8, 18, -13, 0,
    -- layer=2 filter=8 channel=23
    32, 2, -45, 38, -18, -45, 29, -15, -18,
    -- layer=2 filter=8 channel=24
    -14, 25, 6, 15, 43, 52, -10, -19, 21,
    -- layer=2 filter=8 channel=25
    -6, 12, 31, -45, 9, 72, -15, 2, 19,
    -- layer=2 filter=8 channel=26
    15, 31, 34, 12, 31, 21, 3, 52, 4,
    -- layer=2 filter=8 channel=27
    41, 52, -15, 57, 19, -42, 53, 64, -12,
    -- layer=2 filter=8 channel=28
    -12, -17, 2, -3, 1, 22, -13, 15, -5,
    -- layer=2 filter=8 channel=29
    -57, -3, -1, -26, -9, 25, -31, 10, 3,
    -- layer=2 filter=8 channel=30
    -49, -18, -32, -27, 11, -19, -21, 30, -7,
    -- layer=2 filter=8 channel=31
    69, -29, -53, 82, -39, -76, 82, -6, -41,
    -- layer=2 filter=9 channel=0
    20, 23, -20, 10, -12, 5, 35, 20, -18,
    -- layer=2 filter=9 channel=1
    -28, 5, -12, 15, 4, 8, 26, 7, -28,
    -- layer=2 filter=9 channel=2
    -26, 10, 2, -37, 14, 41, -29, 12, 19,
    -- layer=2 filter=9 channel=3
    2, 13, 14, 7, -4, 19, 24, -10, -1,
    -- layer=2 filter=9 channel=4
    -3, 4, -4, -15, 28, 2, -32, 19, 15,
    -- layer=2 filter=9 channel=5
    31, 55, -8, -6, 40, 5, 37, 52, 25,
    -- layer=2 filter=9 channel=6
    -19, 0, 5, 25, 21, 11, -6, 1, 29,
    -- layer=2 filter=9 channel=7
    -4, 0, 22, -14, -3, 2, 20, -21, -9,
    -- layer=2 filter=9 channel=8
    -37, -35, -32, -24, 8, 31, 50, 31, 53,
    -- layer=2 filter=9 channel=9
    4, 22, 27, 8, 21, 39, -3, 1, 5,
    -- layer=2 filter=9 channel=10
    0, -6, 7, 1, -20, -10, -51, -11, -8,
    -- layer=2 filter=9 channel=11
    -9, 31, 16, -27, 15, -34, 8, 4, -3,
    -- layer=2 filter=9 channel=12
    46, 38, 15, 24, 15, -4, -17, 30, -4,
    -- layer=2 filter=9 channel=13
    -15, 9, 17, -39, -19, -39, -63, -58, -47,
    -- layer=2 filter=9 channel=14
    -5, -21, 11, 13, -3, 26, -17, -20, -13,
    -- layer=2 filter=9 channel=15
    -22, -2, -5, -41, -2, -3, -36, 4, 23,
    -- layer=2 filter=9 channel=16
    15, -22, 16, 17, 16, -21, -6, -15, 25,
    -- layer=2 filter=9 channel=17
    -9, 50, 35, 22, -3, 44, 10, 19, -24,
    -- layer=2 filter=9 channel=18
    21, 21, 31, -43, -28, -6, 35, 27, 13,
    -- layer=2 filter=9 channel=19
    -15, 12, 6, 6, -7, -32, -49, -42, -48,
    -- layer=2 filter=9 channel=20
    15, 25, -17, -25, 27, -13, 22, 14, -39,
    -- layer=2 filter=9 channel=21
    -8, 40, 45, -47, -46, -19, -20, -24, -27,
    -- layer=2 filter=9 channel=22
    22, 19, 0, 23, 22, 36, 9, -25, 11,
    -- layer=2 filter=9 channel=23
    -9, -41, 2, -57, -49, -17, -21, -17, 44,
    -- layer=2 filter=9 channel=24
    -37, 17, -7, 27, 38, 54, 60, -4, 3,
    -- layer=2 filter=9 channel=25
    38, 28, -31, 52, 29, -33, 55, -13, 11,
    -- layer=2 filter=9 channel=26
    -12, -7, -16, 12, -13, -34, 9, 17, -8,
    -- layer=2 filter=9 channel=27
    -21, -37, -20, -20, 10, 4, -35, -1, 16,
    -- layer=2 filter=9 channel=28
    23, 1, -9, 25, 11, -11, 6, 8, 19,
    -- layer=2 filter=9 channel=29
    25, -9, -53, 41, -1, 5, 47, 36, -17,
    -- layer=2 filter=9 channel=30
    46, 20, 2, -5, -41, 3, 8, -1, 45,
    -- layer=2 filter=9 channel=31
    -16, -21, 36, -6, -16, 21, 15, 20, 89,
    -- layer=2 filter=10 channel=0
    -12, -12, -29, 3, -23, -12, -3, -22, -36,
    -- layer=2 filter=10 channel=1
    29, -22, -8, -10, -48, -13, -24, -3, -2,
    -- layer=2 filter=10 channel=2
    42, 56, -3, 56, 13, -14, 30, -10, -79,
    -- layer=2 filter=10 channel=3
    -27, 16, -21, -4, 0, -1, 4, 9, 6,
    -- layer=2 filter=10 channel=4
    3, 15, -5, -20, -11, -10, -20, -11, 18,
    -- layer=2 filter=10 channel=5
    -19, -14, 15, -44, -50, -34, -20, -10, 0,
    -- layer=2 filter=10 channel=6
    -23, 16, -28, -9, -13, -16, -31, -13, -1,
    -- layer=2 filter=10 channel=7
    -3, 17, 13, -22, 0, -18, 26, 0, 11,
    -- layer=2 filter=10 channel=8
    -19, -9, -78, -4, 52, -10, 13, 13, -41,
    -- layer=2 filter=10 channel=9
    -6, -4, 19, 11, -9, -23, 27, -27, -1,
    -- layer=2 filter=10 channel=10
    22, 26, 37, 51, 55, -14, -9, -46, -57,
    -- layer=2 filter=10 channel=11
    21, 37, 25, 11, -21, -5, -20, 7, 31,
    -- layer=2 filter=10 channel=12
    34, -5, 45, -13, 12, -56, -9, -35, -22,
    -- layer=2 filter=10 channel=13
    36, 18, 44, 23, 41, -15, 1, -22, -53,
    -- layer=2 filter=10 channel=14
    1, 0, -19, -26, -12, 3, -5, -2, 63,
    -- layer=2 filter=10 channel=15
    -5, -17, -88, -4, -16, -85, 3, -59, -87,
    -- layer=2 filter=10 channel=16
    -7, 4, 18, 14, 9, -5, 7, 18, -6,
    -- layer=2 filter=10 channel=17
    -36, -13, 5, 34, 7, 13, 79, 15, 7,
    -- layer=2 filter=10 channel=18
    -39, -46, -25, 4, 23, 32, -27, -15, 2,
    -- layer=2 filter=10 channel=19
    51, 37, 56, 14, 12, -1, 34, -31, -68,
    -- layer=2 filter=10 channel=20
    54, 11, 21, -10, -41, -35, 0, -24, 6,
    -- layer=2 filter=10 channel=21
    -24, -16, -5, 4, -46, 21, -36, -11, 32,
    -- layer=2 filter=10 channel=22
    39, 30, -3, 19, 15, -18, 27, -3, -24,
    -- layer=2 filter=10 channel=23
    -19, 10, 8, -11, -18, 8, 17, 20, -6,
    -- layer=2 filter=10 channel=24
    31, 15, 22, 84, 75, 19, 94, 52, 32,
    -- layer=2 filter=10 channel=25
    13, -37, -12, -8, -22, 6, -7, 32, 55,
    -- layer=2 filter=10 channel=26
    10, -15, -69, 76, 64, -21, -11, 20, -62,
    -- layer=2 filter=10 channel=27
    -18, -37, -52, -11, -3, -76, 32, -34, -100,
    -- layer=2 filter=10 channel=28
    11, 13, 21, -1, 22, -20, 15, -11, 13,
    -- layer=2 filter=10 channel=29
    -15, 3, -37, 20, -18, -27, 16, -6, -19,
    -- layer=2 filter=10 channel=30
    -28, -35, -39, 9, 49, 18, 58, 46, 34,
    -- layer=2 filter=10 channel=31
    18, 13, -21, 24, 27, -9, 13, 13, -12,
    -- layer=2 filter=11 channel=0
    -8, -16, -25, 13, 20, -19, 8, -20, 10,
    -- layer=2 filter=11 channel=1
    -17, -3, -3, -24, 1, 5, -14, -4, 0,
    -- layer=2 filter=11 channel=2
    -12, -42, -3, 39, 11, 5, 53, -5, 18,
    -- layer=2 filter=11 channel=3
    16, 25, -22, 15, -9, 8, -12, 6, -1,
    -- layer=2 filter=11 channel=4
    -9, 8, -3, 27, -8, -15, 11, -9, -21,
    -- layer=2 filter=11 channel=5
    16, 0, 25, -22, 3, 13, -17, -13, 4,
    -- layer=2 filter=11 channel=6
    12, 38, 2, 10, -12, 6, -5, -1, 11,
    -- layer=2 filter=11 channel=7
    -17, 8, 18, 10, -23, 9, -21, -22, -24,
    -- layer=2 filter=11 channel=8
    41, 75, 83, 50, 24, 16, 65, 31, 40,
    -- layer=2 filter=11 channel=9
    48, 5, 25, 30, -11, 9, 2, 22, 15,
    -- layer=2 filter=11 channel=10
    30, -26, -7, 18, -10, -17, 6, -8, 15,
    -- layer=2 filter=11 channel=11
    2, 8, 16, -20, 9, -5, 21, 18, -18,
    -- layer=2 filter=11 channel=12
    4, 11, 39, -10, 18, 22, 10, -8, -15,
    -- layer=2 filter=11 channel=13
    -33, -14, -13, -25, -46, 1, -40, -20, -24,
    -- layer=2 filter=11 channel=14
    18, 10, -12, -6, 2, -11, 23, 26, -11,
    -- layer=2 filter=11 channel=15
    -63, -48, -53, -59, -29, -41, 2, -31, 51,
    -- layer=2 filter=11 channel=16
    1, -1, -17, -23, 15, -2, -27, -21, 6,
    -- layer=2 filter=11 channel=17
    0, -12, 48, -27, -8, 13, -17, -6, 27,
    -- layer=2 filter=11 channel=18
    -10, -38, -17, -33, 31, -8, -12, 7, 11,
    -- layer=2 filter=11 channel=19
    -19, -2, 3, 4, -36, 7, -6, -31, 17,
    -- layer=2 filter=11 channel=20
    4, 18, 10, -3, 9, -1, 7, -18, 6,
    -- layer=2 filter=11 channel=21
    -69, -19, -26, -11, -27, 21, 19, 7, 37,
    -- layer=2 filter=11 channel=22
    42, 30, 33, 20, 13, 7, -8, 7, -25,
    -- layer=2 filter=11 channel=23
    -3, -9, -40, -21, 7, -10, 20, 29, 30,
    -- layer=2 filter=11 channel=24
    -2, -12, 0, 26, 6, 6, 52, 21, 24,
    -- layer=2 filter=11 channel=25
    15, 21, 15, -30, 4, 11, 18, 12, 6,
    -- layer=2 filter=11 channel=26
    40, 51, 25, 49, -22, 44, 25, 56, 19,
    -- layer=2 filter=11 channel=27
    -50, -42, -46, -3, -39, -14, -30, -28, 18,
    -- layer=2 filter=11 channel=28
    0, 37, -16, -19, 14, -14, -19, -25, -14,
    -- layer=2 filter=11 channel=29
    44, 32, 30, -2, 7, 4, 42, 17, 0,
    -- layer=2 filter=11 channel=30
    49, 16, 9, 26, -2, 20, 5, 23, 42,
    -- layer=2 filter=11 channel=31
    29, -27, -39, 26, -13, -59, -21, 19, 0,
    -- layer=2 filter=12 channel=0
    -36, 11, -22, -12, 12, -3, -25, -33, 11,
    -- layer=2 filter=12 channel=1
    2, 22, 7, -33, 3, 4, -15, -6, 30,
    -- layer=2 filter=12 channel=2
    57, 5, -11, 26, -8, 10, 42, -26, -32,
    -- layer=2 filter=12 channel=3
    30, -23, -11, -24, 12, 30, -7, 27, -5,
    -- layer=2 filter=12 channel=4
    -5, 16, -15, -16, 22, 5, -12, 25, 3,
    -- layer=2 filter=12 channel=5
    -16, 10, 17, -30, 0, 24, -21, 2, 16,
    -- layer=2 filter=12 channel=6
    -11, 20, -4, -32, 20, 33, -37, 35, 46,
    -- layer=2 filter=12 channel=7
    1, 14, 14, -9, 14, 6, -23, -8, -11,
    -- layer=2 filter=12 channel=8
    -15, -4, -30, -6, -43, -13, -22, 9, -34,
    -- layer=2 filter=12 channel=9
    -52, -4, -7, -63, 6, 27, 4, 23, 66,
    -- layer=2 filter=12 channel=10
    6, -26, -14, -38, -2, 39, -63, -22, 36,
    -- layer=2 filter=12 channel=11
    -55, 6, 26, -11, 2, 18, -3, 27, 28,
    -- layer=2 filter=12 channel=12
    -35, 4, 6, -6, -29, 17, -4, 14, 27,
    -- layer=2 filter=12 channel=13
    39, -21, -14, 15, 9, -22, -12, -6, -15,
    -- layer=2 filter=12 channel=14
    -57, 23, 24, -20, 12, 50, -7, 53, 65,
    -- layer=2 filter=12 channel=15
    20, 7, -11, 4, 14, -22, -33, -76, 14,
    -- layer=2 filter=12 channel=16
    10, 11, 22, -9, 1, 9, -23, 4, -1,
    -- layer=2 filter=12 channel=17
    23, 18, 17, 47, 17, 10, -25, 40, -3,
    -- layer=2 filter=12 channel=18
    -37, 5, -2, 10, 8, -36, 4, -39, -1,
    -- layer=2 filter=12 channel=19
    27, 1, 5, 24, -2, -15, -23, -51, -26,
    -- layer=2 filter=12 channel=20
    -48, -15, -3, -21, -25, 49, -18, 15, 45,
    -- layer=2 filter=12 channel=21
    42, 21, 30, 17, 12, 33, 0, 31, -1,
    -- layer=2 filter=12 channel=22
    -40, -39, -23, -44, -9, 13, -21, 19, 12,
    -- layer=2 filter=12 channel=23
    -37, -9, 4, -42, -11, 22, 16, -21, 25,
    -- layer=2 filter=12 channel=24
    -13, 4, 7, 42, 22, -26, -18, 18, 14,
    -- layer=2 filter=12 channel=25
    56, 18, 21, 6, 16, 0, 59, -19, 12,
    -- layer=2 filter=12 channel=26
    -28, 11, 12, -16, 31, 23, 3, 23, -55,
    -- layer=2 filter=12 channel=27
    53, 22, 7, 2, -10, -35, -48, -68, -35,
    -- layer=2 filter=12 channel=28
    -1, -12, 5, -22, 19, -4, -14, -7, -20,
    -- layer=2 filter=12 channel=29
    38, -12, 2, 33, -40, -5, 5, 9, -3,
    -- layer=2 filter=12 channel=30
    25, 33, 32, 60, 37, -17, 73, 42, -66,
    -- layer=2 filter=12 channel=31
    -29, 17, 0, -49, -21, 23, -11, 0, -6,
    -- layer=2 filter=13 channel=0
    31, -21, -19, 27, 0, -5, 27, 16, 22,
    -- layer=2 filter=13 channel=1
    13, 6, -15, 16, 15, 14, 54, 39, 40,
    -- layer=2 filter=13 channel=2
    -32, -40, -32, -24, -69, -17, 0, -42, 9,
    -- layer=2 filter=13 channel=3
    6, 12, 0, -17, -16, -6, -9, 0, -9,
    -- layer=2 filter=13 channel=4
    5, -5, -3, 7, 0, -19, 2, -10, -19,
    -- layer=2 filter=13 channel=5
    33, 15, 20, 37, 28, 14, 13, -25, 15,
    -- layer=2 filter=13 channel=6
    -25, 1, 49, -10, 11, 52, -11, -32, -10,
    -- layer=2 filter=13 channel=7
    -20, 15, 18, -11, -23, -18, -10, -13, 13,
    -- layer=2 filter=13 channel=8
    -60, -15, -102, -27, -47, -22, -59, -15, 0,
    -- layer=2 filter=13 channel=9
    -2, -14, 26, -26, 10, -11, -20, 9, 0,
    -- layer=2 filter=13 channel=10
    -19, 5, 1, -29, -39, 1, -42, -46, 6,
    -- layer=2 filter=13 channel=11
    3, -13, 22, 10, -36, -39, 7, 2, 11,
    -- layer=2 filter=13 channel=12
    4, 30, 18, -14, 17, 15, -19, -37, -35,
    -- layer=2 filter=13 channel=13
    21, -19, 9, 11, 2, 12, -22, -1, 38,
    -- layer=2 filter=13 channel=14
    -55, 15, 0, -37, -46, -7, 3, 3, 25,
    -- layer=2 filter=13 channel=15
    -10, 33, 13, 17, 20, 27, 29, 18, 14,
    -- layer=2 filter=13 channel=16
    -14, -20, 4, 0, 8, -20, 4, -16, -24,
    -- layer=2 filter=13 channel=17
    1, 50, 26, -23, 9, -18, -43, -49, 6,
    -- layer=2 filter=13 channel=18
    48, 31, 27, 6, 1, -11, -3, -14, -25,
    -- layer=2 filter=13 channel=19
    -17, -39, -33, -3, -20, -2, -39, 30, 25,
    -- layer=2 filter=13 channel=20
    14, 4, 12, -19, -38, 4, -15, -51, -8,
    -- layer=2 filter=13 channel=21
    2, 14, 16, -9, -22, 4, -13, -16, 10,
    -- layer=2 filter=13 channel=22
    -14, -7, 17, -3, -30, 26, -38, 4, -11,
    -- layer=2 filter=13 channel=23
    -40, -17, 10, -27, 1, 44, 2, 47, 26,
    -- layer=2 filter=13 channel=24
    -15, -24, -11, -13, -49, -13, -8, -9, 10,
    -- layer=2 filter=13 channel=25
    55, 31, 43, -37, -27, -2, -22, -59, -24,
    -- layer=2 filter=13 channel=26
    -9, -17, -64, -33, -3, -70, 15, -34, -15,
    -- layer=2 filter=13 channel=27
    -36, 13, 22, 12, 32, 1, 43, -12, 19,
    -- layer=2 filter=13 channel=28
    -15, 20, 11, -6, -8, 7, 9, 9, -12,
    -- layer=2 filter=13 channel=29
    14, -5, 16, 19, -5, -25, 3, -39, -54,
    -- layer=2 filter=13 channel=30
    97, 38, 23, 57, 42, 37, 50, 43, 36,
    -- layer=2 filter=13 channel=31
    -11, 10, 47, -30, 15, 56, -46, -27, 28,
    -- layer=2 filter=14 channel=0
    24, 5, 26, 28, 30, 26, -23, 7, -13,
    -- layer=2 filter=14 channel=1
    -2, -18, -2, -14, 15, 16, -11, 14, 31,
    -- layer=2 filter=14 channel=2
    3, -27, -29, 11, 25, -10, -32, 9, -15,
    -- layer=2 filter=14 channel=3
    -14, 15, -11, -2, -16, -25, 16, -14, 15,
    -- layer=2 filter=14 channel=4
    -5, 1, 37, -17, -8, 25, -10, 11, 3,
    -- layer=2 filter=14 channel=5
    -29, 4, -17, -3, -2, 31, -5, -21, -19,
    -- layer=2 filter=14 channel=6
    32, 23, 48, 0, -24, -13, -18, -33, -46,
    -- layer=2 filter=14 channel=7
    16, -1, 2, 19, 0, 2, -1, 16, -11,
    -- layer=2 filter=14 channel=8
    -10, 2, -18, -6, -10, 9, -15, -10, 15,
    -- layer=2 filter=14 channel=9
    0, -11, 22, 3, -18, -16, -5, -34, -24,
    -- layer=2 filter=14 channel=10
    42, -2, -2, 21, 30, -9, 4, -2, 21,
    -- layer=2 filter=14 channel=11
    -24, -29, 19, 17, -8, 16, 6, -19, 18,
    -- layer=2 filter=14 channel=12
    -11, 16, -10, 8, -8, 28, -5, 17, -13,
    -- layer=2 filter=14 channel=13
    14, 31, 32, 18, 66, 27, 66, 26, 26,
    -- layer=2 filter=14 channel=14
    -16, 41, 15, -1, -23, 5, 13, -13, -22,
    -- layer=2 filter=14 channel=15
    17, -9, 5, -43, -29, -19, -2, -22, 17,
    -- layer=2 filter=14 channel=16
    0, 16, -24, 19, 22, -19, 27, -23, -14,
    -- layer=2 filter=14 channel=17
    -29, -34, 1, -25, -23, -16, 10, -32, -18,
    -- layer=2 filter=14 channel=18
    32, -2, -9, 6, 9, -26, -23, -19, 29,
    -- layer=2 filter=14 channel=19
    -28, -15, -23, 30, 52, 49, 3, 24, 15,
    -- layer=2 filter=14 channel=20
    8, 21, 23, 15, 19, -3, 2, -17, -27,
    -- layer=2 filter=14 channel=21
    4, 3, 10, 6, 23, 34, 13, 28, 11,
    -- layer=2 filter=14 channel=22
    -1, 29, 34, 4, -3, -22, -10, 1, -33,
    -- layer=2 filter=14 channel=23
    28, 17, 0, 32, 24, 23, 25, -11, 10,
    -- layer=2 filter=14 channel=24
    -47, -60, -66, 5, 7, 29, 0, -19, 31,
    -- layer=2 filter=14 channel=25
    -15, -84, -81, 9, -20, -4, 7, -4, -17,
    -- layer=2 filter=14 channel=26
    -17, -14, -41, -31, -5, -49, 22, -9, -6,
    -- layer=2 filter=14 channel=27
    -1, 10, 43, -1, -24, -2, 3, -28, -12,
    -- layer=2 filter=14 channel=28
    0, -18, -17, 25, 21, -12, -14, 25, -21,
    -- layer=2 filter=14 channel=29
    -46, -51, -73, -36, 25, 4, 33, 43, 18,
    -- layer=2 filter=14 channel=30
    -39, -20, -37, 33, 3, -2, -8, 23, -2,
    -- layer=2 filter=14 channel=31
    7, 42, -20, 41, 26, -26, 2, -21, -42,
    -- layer=2 filter=15 channel=0
    10, 44, 32, 28, 6, 22, 48, 19, 31,
    -- layer=2 filter=15 channel=1
    31, 36, 1, 19, -7, -7, -7, 14, 29,
    -- layer=2 filter=15 channel=2
    -42, -60, -11, -27, -63, -50, -10, -10, 4,
    -- layer=2 filter=15 channel=3
    -12, -24, -5, 27, -19, 2, 1, 24, -9,
    -- layer=2 filter=15 channel=4
    -4, -23, -13, 9, -7, 0, -24, -3, -12,
    -- layer=2 filter=15 channel=5
    -3, -6, 31, 22, 13, -9, 15, 22, 28,
    -- layer=2 filter=15 channel=6
    -10, -26, -3, 10, 1, -21, -4, -50, -60,
    -- layer=2 filter=15 channel=7
    13, 20, 21, 0, -24, -9, -11, 16, 20,
    -- layer=2 filter=15 channel=8
    -19, 19, 12, 2, -39, 34, -5, 20, -16,
    -- layer=2 filter=15 channel=9
    -6, -3, -11, 15, 30, 11, -21, -19, -64,
    -- layer=2 filter=15 channel=10
    8, -20, -14, 5, -31, -6, -5, -31, -26,
    -- layer=2 filter=15 channel=11
    31, -8, 23, 25, 34, 22, -15, 19, 2,
    -- layer=2 filter=15 channel=12
    26, -18, -13, 40, -4, 10, 19, 20, 26,
    -- layer=2 filter=15 channel=13
    1, -40, -3, -30, -40, -22, 41, 0, 17,
    -- layer=2 filter=15 channel=14
    -7, 26, 2, 19, 11, -43, -35, -12, -28,
    -- layer=2 filter=15 channel=15
    -40, -8, -20, -26, -63, -61, -47, -9, -25,
    -- layer=2 filter=15 channel=16
    10, -10, -18, 22, 17, -18, -7, 23, -5,
    -- layer=2 filter=15 channel=17
    46, 0, 42, 14, -13, -4, -6, 31, 1,
    -- layer=2 filter=15 channel=18
    18, -4, -16, 3, 15, 37, -15, 2, 2,
    -- layer=2 filter=15 channel=19
    35, -7, 29, 12, 10, 20, 23, 14, -15,
    -- layer=2 filter=15 channel=20
    25, -5, 25, 10, 26, 24, 32, 31, 8,
    -- layer=2 filter=15 channel=21
    -21, -3, -16, -34, -42, -15, -1, -35, -8,
    -- layer=2 filter=15 channel=22
    -14, 14, 28, -5, -3, 9, 1, -50, -26,
    -- layer=2 filter=15 channel=23
    5, -3, -10, 23, 20, 16, -12, -30, -40,
    -- layer=2 filter=15 channel=24
    35, -20, 13, 5, -17, -2, 40, -12, 26,
    -- layer=2 filter=15 channel=25
    34, 39, 24, 0, -15, 8, -5, -45, 10,
    -- layer=2 filter=15 channel=26
    -2, 10, 47, -39, 18, -31, -26, -6, 7,
    -- layer=2 filter=15 channel=27
    -78, -16, -29, -74, -50, -18, -74, -6, -12,
    -- layer=2 filter=15 channel=28
    17, 22, 16, -8, 14, -28, 38, 7, 0,
    -- layer=2 filter=15 channel=29
    44, 15, 8, 14, 44, 11, 29, 34, 16,
    -- layer=2 filter=15 channel=30
    41, -6, 41, 21, 9, 14, 20, 48, 5,
    -- layer=2 filter=15 channel=31
    0, 43, 44, 57, 15, 16, 28, 4, 10,
    -- layer=2 filter=16 channel=0
    16, -7, -28, 14, 0, -29, -18, -5, -10,
    -- layer=2 filter=16 channel=1
    20, 6, -13, -13, 22, -10, 7, -23, 7,
    -- layer=2 filter=16 channel=2
    44, 14, 17, 60, -22, 35, 38, -29, 26,
    -- layer=2 filter=16 channel=3
    -12, 14, 6, 19, 9, -12, -11, 4, -18,
    -- layer=2 filter=16 channel=4
    9, -2, 4, 14, -17, 33, 5, -1, -16,
    -- layer=2 filter=16 channel=5
    22, 1, -34, 45, 15, -4, 35, 35, -20,
    -- layer=2 filter=16 channel=6
    -6, -14, 18, -9, 1, 39, -32, 41, -5,
    -- layer=2 filter=16 channel=7
    23, 15, -2, -19, -8, 11, -9, 25, 5,
    -- layer=2 filter=16 channel=8
    -30, -52, 21, 5, -25, 16, -2, 1, 40,
    -- layer=2 filter=16 channel=9
    -19, -33, 13, -34, -19, 45, -8, 8, 33,
    -- layer=2 filter=16 channel=10
    -9, -34, -16, -22, -84, 38, -42, -28, 29,
    -- layer=2 filter=16 channel=11
    -25, 11, 9, -14, -13, 1, 4, -6, 23,
    -- layer=2 filter=16 channel=12
    0, -13, -18, 12, -17, -2, 25, 9, -3,
    -- layer=2 filter=16 channel=13
    12, -23, -31, 17, -40, 13, 26, -36, -8,
    -- layer=2 filter=16 channel=14
    -30, -11, -3, -69, 5, 34, -57, 22, 43,
    -- layer=2 filter=16 channel=15
    49, 20, 26, 21, 7, 5, 28, -76, -14,
    -- layer=2 filter=16 channel=16
    -16, 8, 0, -16, 25, 0, -17, -22, -20,
    -- layer=2 filter=16 channel=17
    -8, -30, -20, 21, -43, -13, -5, 2, 30,
    -- layer=2 filter=16 channel=18
    -10, -28, 41, 31, -4, -21, 21, 1, 44,
    -- layer=2 filter=16 channel=19
    -45, -40, 18, -22, -38, -4, -21, -35, -14,
    -- layer=2 filter=16 channel=20
    15, 6, -39, -6, -13, 7, -59, 30, -27,
    -- layer=2 filter=16 channel=21
    -54, -22, 28, -10, 0, 5, 0, 3, -4,
    -- layer=2 filter=16 channel=22
    -21, -20, -9, -30, -30, -7, -33, 4, -11,
    -- layer=2 filter=16 channel=23
    -45, -29, 25, -42, -10, 37, -38, -1, 17,
    -- layer=2 filter=16 channel=24
    -33, -48, -11, -28, -54, -1, -12, -73, -1,
    -- layer=2 filter=16 channel=25
    -28, 28, 29, -18, 31, -2, 8, 22, -36,
    -- layer=2 filter=16 channel=26
    44, 7, 1, 24, -33, 32, 16, -26, 18,
    -- layer=2 filter=16 channel=27
    23, 7, 10, 58, -17, -21, 48, -51, 15,
    -- layer=2 filter=16 channel=28
    -25, -23, 5, -10, 1, 4, 5, 9, -12,
    -- layer=2 filter=16 channel=29
    -27, 9, 15, -23, -7, -5, 0, -29, -29,
    -- layer=2 filter=16 channel=30
    -4, -35, -30, -1, 1, -36, 36, 7, -49,
    -- layer=2 filter=16 channel=31
    -32, 7, 21, -27, 15, 21, -10, 12, 20,
    -- layer=2 filter=17 channel=0
    -15, 19, 0, -14, -13, 13, 25, 1, -5,
    -- layer=2 filter=17 channel=1
    0, 2, 34, -10, 9, -13, -25, -13, -15,
    -- layer=2 filter=17 channel=2
    -3, 0, -50, -48, -113, -57, -31, -48, -47,
    -- layer=2 filter=17 channel=3
    -14, 23, 22, 3, 30, 2, 19, 9, 1,
    -- layer=2 filter=17 channel=4
    -31, -28, -21, 18, -4, 1, -32, -8, -31,
    -- layer=2 filter=17 channel=5
    37, 37, 23, 57, 3, 11, 27, -39, 0,
    -- layer=2 filter=17 channel=6
    -8, 19, 1, 6, 13, -32, -19, 9, -24,
    -- layer=2 filter=17 channel=7
    18, -14, 2, 18, -10, 1, 0, 17, 22,
    -- layer=2 filter=17 channel=8
    77, 57, -23, 36, 59, -51, -20, -13, -76,
    -- layer=2 filter=17 channel=9
    0, -17, -15, -7, 0, -8, 2, 15, 16,
    -- layer=2 filter=17 channel=10
    11, -4, 9, 14, -17, 25, -14, 22, 23,
    -- layer=2 filter=17 channel=11
    23, 43, 23, -15, 22, -17, -17, 2, 12,
    -- layer=2 filter=17 channel=12
    33, 26, 22, 13, -4, -17, -9, -15, 20,
    -- layer=2 filter=17 channel=13
    35, 11, 31, 19, -17, -14, -20, 11, 51,
    -- layer=2 filter=17 channel=14
    -27, -25, -2, -4, -42, 1, 15, -28, -18,
    -- layer=2 filter=17 channel=15
    78, 28, 97, 81, 20, 75, 34, 30, 45,
    -- layer=2 filter=17 channel=16
    14, 0, -10, -6, -22, 23, 24, 7, 23,
    -- layer=2 filter=17 channel=17
    -19, 11, 2, 29, 13, 39, -41, -12, 17,
    -- layer=2 filter=17 channel=18
    14, -39, -32, -26, 17, 5, -1, 17, -1,
    -- layer=2 filter=17 channel=19
    -37, -13, -5, -53, -26, -28, -40, 1, 10,
    -- layer=2 filter=17 channel=20
    -31, 6, 0, 19, 12, 16, 23, 0, -7,
    -- layer=2 filter=17 channel=21
    16, 35, 16, -8, 20, -16, 0, -26, -13,
    -- layer=2 filter=17 channel=22
    16, 26, -4, 24, 19, -13, 26, 15, -9,
    -- layer=2 filter=17 channel=23
    -7, -5, 14, -16, -16, -19, -15, -13, 1,
    -- layer=2 filter=17 channel=24
    -40, 7, 32, -40, 10, 34, 15, 86, 56,
    -- layer=2 filter=17 channel=25
    -48, -9, 3, -4, -53, -10, 8, -35, 3,
    -- layer=2 filter=17 channel=26
    46, -2, 0, 24, -5, -67, -45, -44, -42,
    -- layer=2 filter=17 channel=27
    53, -1, 18, 52, 5, 18, 0, -8, 24,
    -- layer=2 filter=17 channel=28
    -28, -24, 17, 22, -10, -12, 3, 24, -11,
    -- layer=2 filter=17 channel=29
    -13, -10, -36, 12, 8, -4, -1, 16, -25,
    -- layer=2 filter=17 channel=30
    49, 32, -23, 13, 44, 1, 16, -17, -20,
    -- layer=2 filter=17 channel=31
    -44, 15, 16, 4, 6, 19, 13, 3, 48,
    -- layer=2 filter=18 channel=0
    4, 48, 42, 0, -29, -16, -5, -16, 0,
    -- layer=2 filter=18 channel=1
    -1, 14, 1, -21, -27, -18, 0, -5, -25,
    -- layer=2 filter=18 channel=2
    34, 68, 4, 50, -12, -13, -10, -33, -24,
    -- layer=2 filter=18 channel=3
    -21, 3, 11, -28, -19, -7, 13, 0, 13,
    -- layer=2 filter=18 channel=4
    -5, 21, -3, -13, 22, 18, 14, -1, 8,
    -- layer=2 filter=18 channel=5
    32, 4, 2, 18, -19, 7, 15, -48, 5,
    -- layer=2 filter=18 channel=6
    12, -6, -10, 16, 13, -20, 0, 5, -18,
    -- layer=2 filter=18 channel=7
    22, 2, -25, 10, 0, -18, -9, -21, -6,
    -- layer=2 filter=18 channel=8
    -7, -2, 9, -55, -45, -41, -39, -35, -80,
    -- layer=2 filter=18 channel=9
    6, 2, 11, -37, -16, -17, 22, 13, 3,
    -- layer=2 filter=18 channel=10
    5, 10, 6, 32, 9, 30, -25, -21, 10,
    -- layer=2 filter=18 channel=11
    -8, 33, 23, -14, 0, -23, -31, -38, 4,
    -- layer=2 filter=18 channel=12
    45, 2, 28, 23, 4, -1, 1, -22, -5,
    -- layer=2 filter=18 channel=13
    75, 56, 45, 29, 44, 40, 31, 30, -5,
    -- layer=2 filter=18 channel=14
    7, -24, -35, 7, -40, -28, -6, -1, 24,
    -- layer=2 filter=18 channel=15
    28, 27, -9, -2, -20, -20, -16, -7, 7,
    -- layer=2 filter=18 channel=16
    -9, -17, -4, -9, -13, 7, 1, -3, 0,
    -- layer=2 filter=18 channel=17
    -9, -6, -2, -33, -4, -18, 6, 1, -23,
    -- layer=2 filter=18 channel=18
    -42, -3, 23, 32, 9, -31, 8, -9, -6,
    -- layer=2 filter=18 channel=19
    41, 31, 10, 20, 19, 1, 18, -14, -31,
    -- layer=2 filter=18 channel=20
    35, -5, 2, -12, -19, 14, -11, -14, 13,
    -- layer=2 filter=18 channel=21
    30, -6, -10, 30, 9, 13, 14, -6, -1,
    -- layer=2 filter=18 channel=22
    5, 0, 10, -23, -4, -39, -8, 13, 0,
    -- layer=2 filter=18 channel=23
    3, -12, -19, -11, -4, 3, -17, 17, 4,
    -- layer=2 filter=18 channel=24
    -29, -36, -3, -25, -61, -59, -27, -18, -29,
    -- layer=2 filter=18 channel=25
    28, -2, -55, 10, -26, -28, -30, -45, 10,
    -- layer=2 filter=18 channel=26
    -47, 0, -27, -48, -75, -12, -44, -64, -57,
    -- layer=2 filter=18 channel=27
    11, 16, -44, -31, -13, -27, -25, -16, -8,
    -- layer=2 filter=18 channel=28
    5, 8, 20, -29, 4, -21, -3, 28, 21,
    -- layer=2 filter=18 channel=29
    58, 30, -4, 36, 5, -60, 5, -12, -14,
    -- layer=2 filter=18 channel=30
    67, 9, 21, 41, 18, -6, 17, -30, -61,
    -- layer=2 filter=18 channel=31
    28, 13, -29, -22, -13, 11, 16, 40, 8,
    -- layer=2 filter=19 channel=0
    -8, -35, 10, -18, 23, -15, 52, 25, 3,
    -- layer=2 filter=19 channel=1
    -3, -5, -12, 15, -11, 5, -12, -24, -1,
    -- layer=2 filter=19 channel=2
    -15, 41, 31, 3, 13, -19, 16, 34, -11,
    -- layer=2 filter=19 channel=3
    5, -20, 8, 17, 3, 22, -19, -10, -21,
    -- layer=2 filter=19 channel=4
    30, 6, 1, 30, 26, -10, 14, -20, 18,
    -- layer=2 filter=19 channel=5
    -14, -21, 1, 0, -67, 0, 23, -42, -50,
    -- layer=2 filter=19 channel=6
    10, -1, 0, 12, 4, -41, -10, 25, -8,
    -- layer=2 filter=19 channel=7
    -11, 10, -12, 9, 17, 0, 0, 19, 22,
    -- layer=2 filter=19 channel=8
    3, -6, -16, -36, -38, -31, -24, -46, -23,
    -- layer=2 filter=19 channel=9
    -22, 17, 17, -30, -5, -21, 0, 11, -34,
    -- layer=2 filter=19 channel=10
    15, 36, 29, 0, 18, 1, 22, 19, 3,
    -- layer=2 filter=19 channel=11
    21, -2, 7, 7, -26, 20, 16, -20, 22,
    -- layer=2 filter=19 channel=12
    0, 0, 18, 17, 6, -6, 1, 1, 15,
    -- layer=2 filter=19 channel=13
    12, 3, 20, 16, 14, 16, 55, 27, 21,
    -- layer=2 filter=19 channel=14
    16, 28, -1, 19, 35, -43, 2, 18, -28,
    -- layer=2 filter=19 channel=15
    -17, -50, -67, -44, -71, -59, -3, -50, -57,
    -- layer=2 filter=19 channel=16
    23, 14, -16, -5, -17, 7, -13, -14, 18,
    -- layer=2 filter=19 channel=17
    0, -8, 17, -27, -9, -2, 32, 3, 31,
    -- layer=2 filter=19 channel=18
    0, 14, -12, 30, -5, 24, -8, -31, 51,
    -- layer=2 filter=19 channel=19
    -7, 21, -18, 48, 36, 57, 0, 45, 54,
    -- layer=2 filter=19 channel=20
    31, 12, -4, 6, 38, -9, 7, 30, -17,
    -- layer=2 filter=19 channel=21
    12, 41, 10, 38, -14, 26, 2, 4, -27,
    -- layer=2 filter=19 channel=22
    -26, 26, -4, 0, -1, -1, 6, -3, -19,
    -- layer=2 filter=19 channel=23
    33, 57, 8, 43, 62, 32, -10, 2, 21,
    -- layer=2 filter=19 channel=24
    34, 4, -25, 11, 21, 31, 1, 10, 23,
    -- layer=2 filter=19 channel=25
    7, 10, 21, 12, 24, 34, 15, 19, 4,
    -- layer=2 filter=19 channel=26
    -34, -34, -28, -13, -34, -11, -34, -56, -5,
    -- layer=2 filter=19 channel=27
    38, -1, -14, 9, -9, -64, 12, -43, -18,
    -- layer=2 filter=19 channel=28
    -18, 8, 17, 28, -20, -25, -6, -11, 1,
    -- layer=2 filter=19 channel=29
    -36, 8, 45, -22, 27, 21, -31, -21, -31,
    -- layer=2 filter=19 channel=30
    -42, -20, 7, -15, -31, 20, -57, -58, -11,
    -- layer=2 filter=19 channel=31
    -14, 17, 15, 28, 27, -19, 25, 17, -30,
    -- layer=2 filter=20 channel=0
    -30, 8, 1, -60, 4, 6, 31, 45, 42,
    -- layer=2 filter=20 channel=1
    -33, -9, -4, -7, 1, 13, 16, 55, 63,
    -- layer=2 filter=20 channel=2
    -13, -26, -37, 16, -20, -36, -14, 4, -32,
    -- layer=2 filter=20 channel=3
    -23, -2, -3, -12, -13, 8, 11, 8, 30,
    -- layer=2 filter=20 channel=4
    -11, -8, -2, 16, 25, -13, 24, 13, -18,
    -- layer=2 filter=20 channel=5
    23, -45, -52, 16, -29, -18, 26, -22, 5,
    -- layer=2 filter=20 channel=6
    11, 6, -50, 42, 28, -11, -3, 7, -15,
    -- layer=2 filter=20 channel=7
    -12, 4, -15, 9, -8, 10, 14, 25, 9,
    -- layer=2 filter=20 channel=8
    -24, -4, 20, -16, -60, -31, 4, -18, 23,
    -- layer=2 filter=20 channel=9
    23, -6, -32, 23, 19, -4, 19, 19, -36,
    -- layer=2 filter=20 channel=10
    22, -33, -21, 11, 0, -6, 25, 11, -3,
    -- layer=2 filter=20 channel=11
    -27, 0, 7, 0, 21, 0, 34, 26, 21,
    -- layer=2 filter=20 channel=12
    26, -11, -41, 22, -11, -24, -10, 38, 4,
    -- layer=2 filter=20 channel=13
    -16, -33, -48, -1, -2, 11, 4, -7, 3,
    -- layer=2 filter=20 channel=14
    -31, -25, -6, 30, 10, -9, 2, 28, 14,
    -- layer=2 filter=20 channel=15
    -14, -29, -29, -46, -39, 23, -46, -2, 7,
    -- layer=2 filter=20 channel=16
    12, -19, -14, 6, 12, -12, -23, 22, 1,
    -- layer=2 filter=20 channel=17
    41, 20, 15, 7, -4, 13, -39, 5, -21,
    -- layer=2 filter=20 channel=18
    -10, 2, 43, 22, 7, 29, -4, 0, -13,
    -- layer=2 filter=20 channel=19
    -11, 18, 13, 8, -11, 6, -16, 23, -1,
    -- layer=2 filter=20 channel=20
    -22, -26, 17, -31, -12, -8, -5, 30, 30,
    -- layer=2 filter=20 channel=21
    -26, -26, 5, 32, 54, 61, 35, 10, 39,
    -- layer=2 filter=20 channel=22
    -5, 19, -32, 16, 9, 0, 2, -25, -32,
    -- layer=2 filter=20 channel=23
    -28, 30, -16, 49, 36, 36, 21, 0, -27,
    -- layer=2 filter=20 channel=24
    -35, -32, 3, -42, 24, -4, -64, 9, -6,
    -- layer=2 filter=20 channel=25
    -45, -20, 24, -10, 9, 25, 15, 22, 32,
    -- layer=2 filter=20 channel=26
    0, 18, -20, -38, 0, 1, 16, 13, 0,
    -- layer=2 filter=20 channel=27
    -67, -23, -35, -14, -30, -29, -23, 22, -39,
    -- layer=2 filter=20 channel=28
    28, 11, 19, 8, -22, -13, -5, 12, -1,
    -- layer=2 filter=20 channel=29
    13, 9, -38, 20, 45, 36, 52, 14, 54,
    -- layer=2 filter=20 channel=30
    -51, -1, -14, -35, 3, -52, -32, -24, 11,
    -- layer=2 filter=20 channel=31
    18, 16, -1, 50, 36, -16, 11, 22, -21,
    -- layer=2 filter=21 channel=0
    -28, 23, 12, -28, -16, 7, 27, 5, -7,
    -- layer=2 filter=21 channel=1
    -39, 7, 14, -33, 4, 2, -18, -2, -22,
    -- layer=2 filter=21 channel=2
    14, -10, -59, -3, 3, -13, 32, 32, 43,
    -- layer=2 filter=21 channel=3
    -23, 0, -25, 15, 31, -32, -21, 27, 10,
    -- layer=2 filter=21 channel=4
    -6, -5, -15, -4, -8, 7, 3, 10, 13,
    -- layer=2 filter=21 channel=5
    -59, -30, -15, 18, -3, 23, -8, 2, 45,
    -- layer=2 filter=21 channel=6
    13, 6, -11, -10, 25, -2, -38, 16, 10,
    -- layer=2 filter=21 channel=7
    -12, -25, -13, 2, 22, 10, -4, 17, 6,
    -- layer=2 filter=21 channel=8
    -24, -16, 17, -13, -22, 32, 60, 0, -33,
    -- layer=2 filter=21 channel=9
    -18, 20, 1, -14, 10, 8, -33, 21, 4,
    -- layer=2 filter=21 channel=10
    27, 22, 27, -10, -20, -10, -18, 7, -20,
    -- layer=2 filter=21 channel=11
    -4, -4, 4, -6, 0, 5, -4, 23, 31,
    -- layer=2 filter=21 channel=12
    -23, -28, -20, 3, 19, 24, -20, 34, 57,
    -- layer=2 filter=21 channel=13
    33, -3, 10, 30, -23, 4, 17, -7, -4,
    -- layer=2 filter=21 channel=14
    0, 19, 11, 5, 8, 4, -27, 10, -12,
    -- layer=2 filter=21 channel=15
    -19, -15, 25, -16, 23, 54, -12, 41, 54,
    -- layer=2 filter=21 channel=16
    -19, -26, -17, -5, -22, 16, -25, 6, -22,
    -- layer=2 filter=21 channel=17
    -23, -20, 10, -2, -2, -15, 18, -29, -30,
    -- layer=2 filter=21 channel=18
    45, 5, 6, 7, 65, 5, 61, -23, -21,
    -- layer=2 filter=21 channel=19
    5, 11, 12, 30, -27, -10, 12, -66, -30,
    -- layer=2 filter=21 channel=20
    20, -7, -13, -17, 0, 21, 6, 16, 18,
    -- layer=2 filter=21 channel=21
    -3, -19, -10, -9, -5, 10, 43, -10, 0,
    -- layer=2 filter=21 channel=22
    -22, -9, 14, 20, -8, -22, -31, 2, 31,
    -- layer=2 filter=21 channel=23
    41, 5, 39, -21, -23, -16, -33, -31, -67,
    -- layer=2 filter=21 channel=24
    37, -7, -9, 10, 7, 29, 22, -8, -5,
    -- layer=2 filter=21 channel=25
    17, -3, -61, 32, 0, 12, -6, 0, -1,
    -- layer=2 filter=21 channel=26
    23, 17, 50, 32, 37, 2, 15, 79, -7,
    -- layer=2 filter=21 channel=27
    25, 21, 5, -1, 11, 2, 22, 41, 49,
    -- layer=2 filter=21 channel=28
    8, -14, 7, -13, -31, -21, -24, 3, 24,
    -- layer=2 filter=21 channel=29
    -10, -50, -37, 30, -11, -24, 9, 27, 47,
    -- layer=2 filter=21 channel=30
    -52, -51, -64, 15, 0, -27, 49, 60, 18,
    -- layer=2 filter=21 channel=31
    3, 16, 40, -14, 3, -19, -7, -31, -29,
    -- layer=2 filter=22 channel=0
    -27, -17, -10, -16, 5, 9, -22, 7, -2,
    -- layer=2 filter=22 channel=1
    -11, -8, -14, -29, -1, -27, -6, 11, 22,
    -- layer=2 filter=22 channel=2
    -15, 30, -23, -16, 9, 14, 9, 10, -15,
    -- layer=2 filter=22 channel=3
    -14, -22, -15, -17, 8, 11, -26, 4, 19,
    -- layer=2 filter=22 channel=4
    10, 26, 8, 5, -10, -14, 4, 10, -10,
    -- layer=2 filter=22 channel=5
    -31, 1, -18, 8, -8, -21, 13, -9, -11,
    -- layer=2 filter=22 channel=6
    -16, -18, -21, 20, 0, -15, -14, 0, 15,
    -- layer=2 filter=22 channel=7
    0, -12, -1, 4, -11, -20, 6, 0, -10,
    -- layer=2 filter=22 channel=8
    -23, 20, 3, 14, 0, -24, 14, -17, 4,
    -- layer=2 filter=22 channel=9
    -14, 6, 20, 11, 10, 21, -2, -21, -27,
    -- layer=2 filter=22 channel=10
    6, -13, -19, -28, -26, 5, 11, -27, -21,
    -- layer=2 filter=22 channel=11
    -13, 13, -31, -9, -3, -7, -2, 5, -20,
    -- layer=2 filter=22 channel=12
    -29, -17, -1, 6, -10, 4, -32, 9, -24,
    -- layer=2 filter=22 channel=13
    -19, -4, 21, -7, -15, 2, -12, -20, 3,
    -- layer=2 filter=22 channel=14
    -14, -10, 19, -5, 14, -4, -7, 7, 22,
    -- layer=2 filter=22 channel=15
    26, -18, 14, -3, 22, -8, 20, 1, -14,
    -- layer=2 filter=22 channel=16
    10, 22, 18, 15, -9, -14, 3, -23, -6,
    -- layer=2 filter=22 channel=17
    14, -3, 7, -10, -25, 22, -21, 25, 2,
    -- layer=2 filter=22 channel=18
    -8, 14, -1, -10, -15, -10, 11, -21, -16,
    -- layer=2 filter=22 channel=19
    -31, -1, -13, 0, -7, -6, 18, 14, -20,
    -- layer=2 filter=22 channel=20
    17, -20, -24, 23, -26, -24, -27, 4, -14,
    -- layer=2 filter=22 channel=21
    -27, -14, -20, -34, 10, -28, -17, -5, -26,
    -- layer=2 filter=22 channel=22
    -29, -21, 14, -7, -11, -10, -27, 1, -26,
    -- layer=2 filter=22 channel=23
    -29, 6, 6, 14, 18, 2, 14, -9, 6,
    -- layer=2 filter=22 channel=24
    -2, -4, -20, 19, 15, 9, -25, 17, 9,
    -- layer=2 filter=22 channel=25
    -4, 13, -32, -16, -8, -11, 0, -24, 20,
    -- layer=2 filter=22 channel=26
    -9, 1, 2, 8, 19, 15, 8, 20, -6,
    -- layer=2 filter=22 channel=27
    15, -23, -30, -8, -19, -20, -25, -5, 5,
    -- layer=2 filter=22 channel=28
    -5, -11, -19, 14, 16, -17, -10, 13, -24,
    -- layer=2 filter=22 channel=29
    -1, 6, -11, 18, -2, 30, 0, 22, 18,
    -- layer=2 filter=22 channel=30
    -26, 29, -17, -11, -19, -12, -15, 18, 10,
    -- layer=2 filter=22 channel=31
    3, -11, -25, -8, 2, -30, -26, 0, -21,
    -- layer=2 filter=23 channel=0
    24, -11, 18, 13, 23, 14, -2, -33, 15,
    -- layer=2 filter=23 channel=1
    -46, -9, 12, 1, -16, 9, 34, 2, 17,
    -- layer=2 filter=23 channel=2
    37, 65, 78, 0, -17, 67, -21, -15, 33,
    -- layer=2 filter=23 channel=3
    6, 5, -13, 8, -24, 5, 13, -21, -18,
    -- layer=2 filter=23 channel=4
    14, 23, -19, -19, 28, -6, -25, -21, -13,
    -- layer=2 filter=23 channel=5
    37, -60, -6, 0, -69, -41, -24, -24, -7,
    -- layer=2 filter=23 channel=6
    38, -6, 7, -24, -4, -28, 15, -26, -14,
    -- layer=2 filter=23 channel=7
    -21, -1, -4, -19, 14, -13, -24, 18, 6,
    -- layer=2 filter=23 channel=8
    -52, -31, 40, 50, 78, 54, 44, 49, 110,
    -- layer=2 filter=23 channel=9
    29, -11, -4, -37, -17, -19, 18, -6, 13,
    -- layer=2 filter=23 channel=10
    19, 9, 29, -18, 39, -10, -23, 21, 20,
    -- layer=2 filter=23 channel=11
    0, -52, -38, 25, 28, -8, 39, 16, -6,
    -- layer=2 filter=23 channel=12
    9, 5, -12, -18, -16, -9, 36, 31, 17,
    -- layer=2 filter=23 channel=13
    31, 0, 30, -14, 28, -22, 6, 23, 23,
    -- layer=2 filter=23 channel=14
    -23, -21, -17, -3, 9, -21, 34, -40, -17,
    -- layer=2 filter=23 channel=15
    16, 15, 18, -9, -21, 5, 45, 32, 23,
    -- layer=2 filter=23 channel=16
    0, 13, 16, -25, -17, 0, 6, 10, 23,
    -- layer=2 filter=23 channel=17
    9, -32, -1, 8, 8, -43, -33, 44, 42,
    -- layer=2 filter=23 channel=18
    -12, 0, -18, 5, -4, 1, -17, -30, -28,
    -- layer=2 filter=23 channel=19
    -21, 10, -11, -29, -5, -15, -29, 57, 44,
    -- layer=2 filter=23 channel=20
    -12, -23, -9, -39, -21, -3, 15, 29, 4,
    -- layer=2 filter=23 channel=21
    -18, -9, -30, 5, 29, 2, -18, 0, 27,
    -- layer=2 filter=23 channel=22
    33, 19, -8, -22, -37, -26, 36, 20, -7,
    -- layer=2 filter=23 channel=23
    -1, -2, 7, 0, 32, 54, -1, 6, 26,
    -- layer=2 filter=23 channel=24
    15, 22, 34, 18, 1, 26, -15, 24, 17,
    -- layer=2 filter=23 channel=25
    -11, -40, -9, -15, -48, -22, 27, -8, -22,
    -- layer=2 filter=23 channel=26
    -36, -31, -54, 13, 38, -4, 28, 71, 15,
    -- layer=2 filter=23 channel=27
    25, 8, -15, 20, -17, -34, 23, 47, 19,
    -- layer=2 filter=23 channel=28
    16, -3, 4, 24, -4, 2, 20, 1, 2,
    -- layer=2 filter=23 channel=29
    -16, -18, -53, -24, 1, -3, 27, -14, 23,
    -- layer=2 filter=23 channel=30
    24, 16, 43, 29, -14, 25, -16, 5, 16,
    -- layer=2 filter=23 channel=31
    13, 13, -28, -39, -2, 4, -6, -3, 12,
    -- layer=2 filter=24 channel=0
    -3, 11, -41, 46, 13, -7, 78, 37, -2,
    -- layer=2 filter=24 channel=1
    0, 10, -18, 56, -9, -15, 66, 32, 1,
    -- layer=2 filter=24 channel=2
    -32, -19, -52, -62, -19, -24, -28, -37, -60,
    -- layer=2 filter=24 channel=3
    17, -18, 6, 15, -6, -24, -15, -30, -27,
    -- layer=2 filter=24 channel=4
    14, -2, 2, -5, 0, 0, -17, -24, -12,
    -- layer=2 filter=24 channel=5
    -6, 19, 32, -5, 9, -7, 19, -15, 31,
    -- layer=2 filter=24 channel=6
    15, 28, -3, -48, -17, 3, -76, -29, -39,
    -- layer=2 filter=24 channel=7
    -11, 6, 23, 12, 16, -16, 20, -5, 18,
    -- layer=2 filter=24 channel=8
    1, 38, 20, -36, 27, 23, 3, -13, 7,
    -- layer=2 filter=24 channel=9
    2, 1, -11, -19, 1, -34, -33, -10, -25,
    -- layer=2 filter=24 channel=10
    22, -4, -15, -4, -5, 37, -51, -32, -13,
    -- layer=2 filter=24 channel=11
    -10, -9, 5, 49, 5, -14, 35, 7, -5,
    -- layer=2 filter=24 channel=12
    0, 5, -3, 2, -3, -15, -13, -37, -5,
    -- layer=2 filter=24 channel=13
    35, 40, 39, 22, 14, 23, 3, 3, 14,
    -- layer=2 filter=24 channel=14
    21, 20, -17, -15, -32, -36, -5, -2, 19,
    -- layer=2 filter=24 channel=15
    0, 17, 45, -5, 4, 35, -9, 29, -23,
    -- layer=2 filter=24 channel=16
    22, -24, -10, -3, 21, 18, 2, -8, -3,
    -- layer=2 filter=24 channel=17
    15, 28, 19, 4, -13, -15, 15, -23, 5,
    -- layer=2 filter=24 channel=18
    20, 42, 43, 49, 20, 19, 4, -28, -6,
    -- layer=2 filter=24 channel=19
    42, 9, 34, 17, 8, 11, 37, -18, 36,
    -- layer=2 filter=24 channel=20
    31, -25, -18, 31, 1, 4, 30, 3, -18,
    -- layer=2 filter=24 channel=21
    22, 30, 45, -30, 7, 35, -26, -35, 32,
    -- layer=2 filter=24 channel=22
    4, -16, -10, -6, 11, 5, -26, -39, -11,
    -- layer=2 filter=24 channel=23
    14, -11, -14, -21, 1, 5, -30, 1, -1,
    -- layer=2 filter=24 channel=24
    12, -14, -20, -2, -8, 17, 5, -12, -20,
    -- layer=2 filter=24 channel=25
    21, 13, 43, -32, -62, -19, -67, -51, -42,
    -- layer=2 filter=24 channel=26
    55, 27, 34, -23, -13, -57, -24, -25, -16,
    -- layer=2 filter=24 channel=27
    -9, 43, 36, -64, 19, 28, -52, 1, -42,
    -- layer=2 filter=24 channel=28
    -7, -1, -1, -28, 14, 0, 13, -14, -12,
    -- layer=2 filter=24 channel=29
    34, 9, -15, 2, 0, -26, 9, -28, 46,
    -- layer=2 filter=24 channel=30
    44, 62, 61, -29, 13, 19, 8, 35, 47,
    -- layer=2 filter=24 channel=31
    44, 56, 7, -8, -4, -19, -40, -26, -47,
    -- layer=2 filter=25 channel=0
    -15, 9, 62, 31, 51, 48, 36, 12, 42,
    -- layer=2 filter=25 channel=1
    4, 23, 57, -3, 19, 46, 23, 34, 49,
    -- layer=2 filter=25 channel=2
    15, 11, -9, 2, -29, -7, 8, -21, -27,
    -- layer=2 filter=25 channel=3
    -19, 0, -15, 12, 0, -35, -23, 16, 4,
    -- layer=2 filter=25 channel=4
    2, 1, 5, 4, 15, 7, -2, -26, 1,
    -- layer=2 filter=25 channel=5
    15, -3, -9, 3, 18, 0, 21, 11, -10,
    -- layer=2 filter=25 channel=6
    30, 8, -42, 35, -5, -17, -13, -41, -14,
    -- layer=2 filter=25 channel=7
    22, 20, -10, 2, 7, 2, 3, 3, 7,
    -- layer=2 filter=25 channel=8
    -1, 33, 43, 15, 7, -8, -20, -5, -19,
    -- layer=2 filter=25 channel=9
    21, -4, -15, -2, -9, -16, -32, 0, -14,
    -- layer=2 filter=25 channel=10
    42, -28, -37, 19, -24, -32, 5, -12, -13,
    -- layer=2 filter=25 channel=11
    -13, -6, 18, 10, 27, 41, -5, 21, 28,
    -- layer=2 filter=25 channel=12
    38, 29, -23, 32, 36, 18, -2, 25, 20,
    -- layer=2 filter=25 channel=13
    -18, -35, -33, -11, -56, -79, 53, -22, -47,
    -- layer=2 filter=25 channel=14
    24, -23, -49, -9, -14, -14, -26, -34, -12,
    -- layer=2 filter=25 channel=15
    3, 19, 32, 0, -26, -29, -6, -23, -14,
    -- layer=2 filter=25 channel=16
    1, 10, 20, -20, -11, 2, 12, 0, 7,
    -- layer=2 filter=25 channel=17
    11, -8, -6, -11, 15, -24, 28, 3, 16,
    -- layer=2 filter=25 channel=18
    -8, -7, 16, -4, -58, -55, -38, -13, 7,
    -- layer=2 filter=25 channel=19
    0, -50, -55, 28, -53, -29, 11, -21, -19,
    -- layer=2 filter=25 channel=20
    8, 17, 10, 10, 36, 15, -25, 24, 9,
    -- layer=2 filter=25 channel=21
    -30, -32, -5, 15, -39, -23, 24, 0, -27,
    -- layer=2 filter=25 channel=22
    6, -25, -47, -28, -10, -30, -14, -3, -12,
    -- layer=2 filter=25 channel=23
    3, -8, -5, 25, 17, 0, 20, -8, 19,
    -- layer=2 filter=25 channel=24
    2, -41, 20, -9, -74, -2, 9, -12, 4,
    -- layer=2 filter=25 channel=25
    -7, -1, 10, -7, -50, -55, -31, -56, -57,
    -- layer=2 filter=25 channel=26
    -65, -23, -6, -61, -51, -35, -46, -65, -46,
    -- layer=2 filter=25 channel=27
    38, 8, 28, 8, -31, -33, -13, -62, -40,
    -- layer=2 filter=25 channel=28
    15, -17, -16, -28, -8, -5, 28, 1, -10,
    -- layer=2 filter=25 channel=29
    29, -32, -56, -58, -67, -59, -40, -45, -41,
    -- layer=2 filter=25 channel=30
    2, 10, 61, -38, -4, -39, -2, 23, -8,
    -- layer=2 filter=25 channel=31
    55, 18, -2, 36, 19, 9, 32, 7, 19,
    -- layer=2 filter=26 channel=0
    -24, -29, -55, -13, 14, -21, 32, 37, 28,
    -- layer=2 filter=26 channel=1
    11, -10, -5, 7, -3, -15, -15, 42, 31,
    -- layer=2 filter=26 channel=2
    -6, 1, 33, 21, -10, -5, 33, -33, 18,
    -- layer=2 filter=26 channel=3
    -9, 6, -6, -12, -23, 28, -23, 10, 5,
    -- layer=2 filter=26 channel=4
    22, 12, -7, -19, -36, -7, -7, -18, 21,
    -- layer=2 filter=26 channel=5
    -4, 76, 69, -2, 28, 37, -37, -15, 7,
    -- layer=2 filter=26 channel=6
    -3, 24, 35, 0, -7, 47, 7, 0, 5,
    -- layer=2 filter=26 channel=7
    2, 13, 22, 24, 5, -9, 5, -15, -12,
    -- layer=2 filter=26 channel=8
    29, 14, -31, 48, -3, -59, 19, 9, -47,
    -- layer=2 filter=26 channel=9
    25, 7, 24, 35, 21, -3, -3, 25, 37,
    -- layer=2 filter=26 channel=10
    -7, -33, -4, -46, -34, 1, -30, -7, -19,
    -- layer=2 filter=26 channel=11
    6, 16, -17, 11, 9, 0, 8, 24, 25,
    -- layer=2 filter=26 channel=12
    -7, 41, 50, -16, 25, 9, -9, -22, -6,
    -- layer=2 filter=26 channel=13
    -23, -32, -9, -47, -68, -31, -15, -70, -21,
    -- layer=2 filter=26 channel=14
    10, -27, 27, 23, 7, 5, 40, 8, 5,
    -- layer=2 filter=26 channel=15
    3, 73, 69, 46, 111, 88, -40, 20, 34,
    -- layer=2 filter=26 channel=16
    15, 23, 16, 3, 5, 0, -6, -12, 10,
    -- layer=2 filter=26 channel=17
    -4, 11, 1, 49, 15, 32, -10, 17, 12,
    -- layer=2 filter=26 channel=18
    -6, -18, -14, 0, 17, 26, 26, -18, 3,
    -- layer=2 filter=26 channel=19
    -8, -10, -36, -29, -54, -51, 8, -29, -25,
    -- layer=2 filter=26 channel=20
    21, -1, 0, -16, 1, -5, 26, 18, 26,
    -- layer=2 filter=26 channel=21
    -25, 3, 27, -10, -9, -20, -33, -59, -21,
    -- layer=2 filter=26 channel=22
    -11, 21, 44, 21, 28, -3, -1, 24, 40,
    -- layer=2 filter=26 channel=23
    -37, -77, -24, 13, -71, 4, 18, -17, 4,
    -- layer=2 filter=26 channel=24
    -7, -60, -30, 27, -35, -1, 83, 58, 82,
    -- layer=2 filter=26 channel=25
    8, 73, 52, -30, 26, 28, -21, 9, -13,
    -- layer=2 filter=26 channel=26
    28, 18, 3, 4, 6, 11, 47, -15, 9,
    -- layer=2 filter=26 channel=27
    38, 51, 56, 30, 83, 47, -12, -4, 16,
    -- layer=2 filter=26 channel=28
    -16, -12, -18, 2, 22, 4, -9, 21, 13,
    -- layer=2 filter=26 channel=29
    1, -6, 25, 5, 22, 14, 3, 5, 46,
    -- layer=2 filter=26 channel=30
    11, -8, -6, 9, -2, -32, 33, 13, -52,
    -- layer=2 filter=26 channel=31
    -2, -4, 9, 8, -9, -13, 30, -6, 18,
    -- layer=2 filter=27 channel=0
    -50, 6, -12, -12, 15, 19, 9, 13, 22,
    -- layer=2 filter=27 channel=1
    -6, 23, 5, -17, -6, -32, -9, -5, -30,
    -- layer=2 filter=27 channel=2
    54, 67, 28, 7, -65, -48, -41, -40, -36,
    -- layer=2 filter=27 channel=3
    0, -8, 4, -3, -11, -18, 4, -25, 12,
    -- layer=2 filter=27 channel=4
    9, -26, 10, 37, 0, 3, -10, 4, -28,
    -- layer=2 filter=27 channel=5
    -4, -17, -14, 14, 29, -56, 48, -2, -3,
    -- layer=2 filter=27 channel=6
    33, -10, -42, 18, 13, -20, 0, 3, -4,
    -- layer=2 filter=27 channel=7
    3, 0, -10, -2, 15, -12, -20, -16, -16,
    -- layer=2 filter=27 channel=8
    14, -22, 0, 36, 77, 20, 24, 44, 50,
    -- layer=2 filter=27 channel=9
    64, 41, 28, 24, 24, 33, -21, 15, 20,
    -- layer=2 filter=27 channel=10
    -24, -13, 41, 14, 27, 11, 28, 57, 61,
    -- layer=2 filter=27 channel=11
    -8, 32, -10, 17, 3, 25, 0, -3, 8,
    -- layer=2 filter=27 channel=12
    36, 11, 7, 30, 14, -5, 34, 19, -2,
    -- layer=2 filter=27 channel=13
    -9, -16, -5, 23, -44, -49, -20, 29, 18,
    -- layer=2 filter=27 channel=14
    38, 15, -32, -10, -11, -24, -30, -51, -30,
    -- layer=2 filter=27 channel=15
    1, 47, 27, -11, -4, -14, 19, 66, 39,
    -- layer=2 filter=27 channel=16
    0, 24, -6, 9, 9, 11, -1, 0, -14,
    -- layer=2 filter=27 channel=17
    25, 16, 4, 0, -16, 0, 16, 2, 0,
    -- layer=2 filter=27 channel=18
    -16, -7, 19, -8, 12, 44, 57, 56, 73,
    -- layer=2 filter=27 channel=19
    -16, -26, -3, 1, -22, 6, -23, -46, -31,
    -- layer=2 filter=27 channel=20
    2, 3, 0, 4, 40, 3, -3, 33, 0,
    -- layer=2 filter=27 channel=21
    28, 11, -10, 30, -1, -33, 7, -19, 9,
    -- layer=2 filter=27 channel=22
    49, 5, 27, 49, 13, 41, 15, -14, 11,
    -- layer=2 filter=27 channel=23
    17, 0, 19, -26, -21, 34, -39, 4, 21,
    -- layer=2 filter=27 channel=24
    37, 34, 59, -4, 10, 2, -10, -3, 68,
    -- layer=2 filter=27 channel=25
    -3, -5, -30, 21, 25, -13, -10, 25, 13,
    -- layer=2 filter=27 channel=26
    3, 40, 53, 63, 22, 52, -6, 50, 31,
    -- layer=2 filter=27 channel=27
    -5, 12, -20, -14, -24, -7, 13, 84, 30,
    -- layer=2 filter=27 channel=28
    8, -8, -5, -6, 24, -18, 8, -25, 5,
    -- layer=2 filter=27 channel=29
    2, -11, 0, 45, 28, 6, -7, 5, -18,
    -- layer=2 filter=27 channel=30
    -22, -34, -57, -9, -43, -42, 50, -30, -55,
    -- layer=2 filter=27 channel=31
    -12, -24, -28, -28, -10, 48, -16, 26, 46,
    -- layer=2 filter=28 channel=0
    -15, -9, 10, 8, 8, -24, -31, -14, -24,
    -- layer=2 filter=28 channel=1
    -1, 12, -27, -28, 3, 15, -3, -34, 15,
    -- layer=2 filter=28 channel=2
    -18, 14, 20, 5, -14, -12, 10, -7, -18,
    -- layer=2 filter=28 channel=3
    -21, -27, 16, 9, 16, 6, -20, 18, -3,
    -- layer=2 filter=28 channel=4
    3, -19, 9, 7, -1, -14, 19, -10, -15,
    -- layer=2 filter=28 channel=5
    -8, 0, 9, 0, -21, -12, -1, 17, 1,
    -- layer=2 filter=28 channel=6
    -6, 8, 10, 8, -2, 12, 4, 18, -22,
    -- layer=2 filter=28 channel=7
    8, -17, 16, 0, 7, 0, 18, -15, 3,
    -- layer=2 filter=28 channel=8
    -23, 25, 23, 2, 0, -8, 11, 2, 19,
    -- layer=2 filter=28 channel=9
    15, 12, -3, -26, -16, -27, -7, 0, -24,
    -- layer=2 filter=28 channel=10
    -22, -24, -25, 0, 1, 8, 7, -1, -10,
    -- layer=2 filter=28 channel=11
    1, -28, -26, -23, 19, 3, 16, -4, 0,
    -- layer=2 filter=28 channel=12
    -10, -29, -12, 16, 18, -25, -3, -13, -28,
    -- layer=2 filter=28 channel=13
    9, -4, 15, -4, -2, -4, -22, -27, -12,
    -- layer=2 filter=28 channel=14
    -30, -24, -2, 9, 8, 22, -29, -11, 1,
    -- layer=2 filter=28 channel=15
    -6, -24, 6, -12, -24, -28, -30, -27, -28,
    -- layer=2 filter=28 channel=16
    20, 8, -15, 25, -12, 24, -21, -18, -22,
    -- layer=2 filter=28 channel=17
    -13, 4, -14, -4, -4, 24, 10, -14, 10,
    -- layer=2 filter=28 channel=18
    7, 15, -1, -5, -21, -1, 8, -26, 12,
    -- layer=2 filter=28 channel=19
    13, 21, 0, 19, 9, -20, 14, 9, 15,
    -- layer=2 filter=28 channel=20
    10, -26, 9, 12, -4, -24, -18, 2, -16,
    -- layer=2 filter=28 channel=21
    -21, -17, -2, 1, -29, 13, -13, -20, 14,
    -- layer=2 filter=28 channel=22
    -29, -23, -1, -19, -1, -25, -7, -23, -3,
    -- layer=2 filter=28 channel=23
    -9, -17, -3, -30, 6, 9, 9, -2, -3,
    -- layer=2 filter=28 channel=24
    5, -8, 23, -20, -11, -1, -16, 19, 20,
    -- layer=2 filter=28 channel=25
    -22, -19, -10, 24, -13, -27, 22, -2, 8,
    -- layer=2 filter=28 channel=26
    -23, -14, -13, -14, -19, 18, 8, -22, 15,
    -- layer=2 filter=28 channel=27
    -13, -5, -1, -26, -6, 16, 3, 10, 11,
    -- layer=2 filter=28 channel=28
    -22, -10, 6, -17, -8, 5, -12, 19, -19,
    -- layer=2 filter=28 channel=29
    10, -19, -21, -8, -8, -8, 5, 23, 8,
    -- layer=2 filter=28 channel=30
    3, -26, 3, 12, 0, -17, -7, 19, -17,
    -- layer=2 filter=28 channel=31
    -1, 7, -7, 13, 13, -34, 12, -27, -11,
    -- layer=2 filter=29 channel=0
    -21, -5, 23, 16, -36, -25, -2, -20, 36,
    -- layer=2 filter=29 channel=1
    33, 10, -5, -28, -16, -26, -2, -11, -4,
    -- layer=2 filter=29 channel=2
    14, 3, 31, 55, 35, 22, 4, -24, 2,
    -- layer=2 filter=29 channel=3
    -7, -23, 10, 9, 0, -10, 15, 0, -7,
    -- layer=2 filter=29 channel=4
    -6, 9, -32, -6, 17, 20, 26, 20, -28,
    -- layer=2 filter=29 channel=5
    45, -27, 15, -11, -25, -8, -56, -75, -47,
    -- layer=2 filter=29 channel=6
    -26, -21, -11, 24, -21, -15, 9, 13, -13,
    -- layer=2 filter=29 channel=7
    12, 22, 24, -5, 6, -5, -11, 7, 9,
    -- layer=2 filter=29 channel=8
    -61, -58, -29, 0, 23, 0, -15, 59, 60,
    -- layer=2 filter=29 channel=9
    -20, 10, 22, 19, -22, -23, 50, 25, -16,
    -- layer=2 filter=29 channel=10
    -8, 22, -12, 19, 36, 35, 17, 12, 31,
    -- layer=2 filter=29 channel=11
    44, 4, 53, 5, -5, -5, 0, -25, 14,
    -- layer=2 filter=29 channel=12
    25, 14, 36, 24, -17, 21, 8, -67, -24,
    -- layer=2 filter=29 channel=13
    26, 45, -5, 46, 43, 66, -22, 24, 24,
    -- layer=2 filter=29 channel=14
    -28, -23, 17, -24, -25, -40, 13, 12, -17,
    -- layer=2 filter=29 channel=15
    -2, -34, -34, 52, -4, -15, 12, 13, 35,
    -- layer=2 filter=29 channel=16
    25, -16, 16, 12, -4, -17, 2, 26, 18,
    -- layer=2 filter=29 channel=17
    -7, -19, 20, -1, 8, 17, -52, 14, 42,
    -- layer=2 filter=29 channel=18
    11, 11, -3, 8, -3, 3, -50, 22, 24,
    -- layer=2 filter=29 channel=19
    -16, 38, -4, -9, 49, 51, -24, 16, 62,
    -- layer=2 filter=29 channel=20
    -15, 17, 40, -24, 0, 12, -21, -21, -20,
    -- layer=2 filter=29 channel=21
    44, 42, 4, 11, 25, 40, -72, -7, -7,
    -- layer=2 filter=29 channel=22
    0, 4, -24, 19, 0, -1, 28, -10, -19,
    -- layer=2 filter=29 channel=23
    -23, 26, -5, 9, 0, 6, 33, 21, 4,
    -- layer=2 filter=29 channel=24
    -32, 21, -11, -36, 12, 32, -43, 9, -23,
    -- layer=2 filter=29 channel=25
    -3, -20, 12, -36, 13, 34, -49, -71, -45,
    -- layer=2 filter=29 channel=26
    -45, -42, -25, 28, 23, 9, 44, 10, 22,
    -- layer=2 filter=29 channel=27
    24, -27, -34, 60, 11, -36, 59, -3, -6,
    -- layer=2 filter=29 channel=28
    0, 13, 8, -25, -31, -8, 13, -15, 9,
    -- layer=2 filter=29 channel=29
    16, 36, 81, 15, 30, 39, -80, -79, -30,
    -- layer=2 filter=29 channel=30
    -19, -45, -15, -8, 63, 38, -47, 8, 31,
    -- layer=2 filter=29 channel=31
    -17, -12, -15, 22, 45, -23, 20, 16, -18,
    -- layer=2 filter=30 channel=0
    4, 12, 5, -6, -22, 7, -10, -27, -38,
    -- layer=2 filter=30 channel=1
    -1, 14, 15, 1, -42, -45, -31, -20, 0,
    -- layer=2 filter=30 channel=2
    13, -23, -31, 22, 19, 40, -24, 57, 10,
    -- layer=2 filter=30 channel=3
    -15, 13, -7, -1, -6, 16, 21, 11, -14,
    -- layer=2 filter=30 channel=4
    13, 0, -9, 4, -2, -27, -5, 30, 8,
    -- layer=2 filter=30 channel=5
    -7, -31, -4, 20, 17, 29, 19, 17, -3,
    -- layer=2 filter=30 channel=6
    -43, -2, -13, -35, -17, -29, -19, -2, -38,
    -- layer=2 filter=30 channel=7
    -7, -17, -8, 16, -10, -2, -10, -17, 24,
    -- layer=2 filter=30 channel=8
    0, -11, 2, -38, 26, -42, -42, 0, 2,
    -- layer=2 filter=30 channel=9
    -25, 16, 29, -30, -17, -11, -40, 24, 1,
    -- layer=2 filter=30 channel=10
    19, -12, -2, 17, 19, 3, 26, -6, -39,
    -- layer=2 filter=30 channel=11
    13, 21, -3, -16, -24, -20, -7, -60, -43,
    -- layer=2 filter=30 channel=12
    -4, 0, 25, -3, 29, 16, -6, 12, 19,
    -- layer=2 filter=30 channel=13
    12, -31, 2, 11, 27, 25, 20, 17, 8,
    -- layer=2 filter=30 channel=14
    9, 34, 2, -22, -7, -37, -7, -28, -30,
    -- layer=2 filter=30 channel=15
    -40, -46, -58, 6, -14, -14, 25, -8, 0,
    -- layer=2 filter=30 channel=16
    17, 19, 15, -3, 24, 3, 17, 21, -2,
    -- layer=2 filter=30 channel=17
    37, -27, 10, -7, -45, 1, 11, 31, -30,
    -- layer=2 filter=30 channel=18
    1, 18, -18, -7, -39, 0, -72, -56, 6,
    -- layer=2 filter=30 channel=19
    -11, -8, 7, 14, 23, 18, 8, 4, -16,
    -- layer=2 filter=30 channel=20
    -12, 3, -4, 24, 19, -28, 0, -41, 1,
    -- layer=2 filter=30 channel=21
    24, -19, 10, 34, 38, 7, 4, -23, -30,
    -- layer=2 filter=30 channel=22
    -10, -6, -11, -38, 14, -10, -13, 21, -27,
    -- layer=2 filter=30 channel=23
    13, -13, 25, 9, -13, -14, -37, 1, -5,
    -- layer=2 filter=30 channel=24
    -9, 20, -5, 16, 16, 2, 7, 40, 1,
    -- layer=2 filter=30 channel=25
    21, 3, -7, 50, 55, 52, 10, 26, 24,
    -- layer=2 filter=30 channel=26
    15, -39, -14, -8, -1, -42, -30, -13, 9,
    -- layer=2 filter=30 channel=27
    -2, -42, -50, 6, 14, -3, 24, 17, 4,
    -- layer=2 filter=30 channel=28
    -1, -15, 11, -38, -28, -4, 26, 2, 4,
    -- layer=2 filter=30 channel=29
    12, -4, -11, 26, 43, 55, 48, 34, 11,
    -- layer=2 filter=30 channel=30
    -27, -38, -7, 20, -8, 2, 2, -4, 11,
    -- layer=2 filter=30 channel=31
    -55, -15, 24, -23, -32, -37, -31, 6, -7,
    -- layer=2 filter=31 channel=0
    9, -30, 7, -16, -26, 23, -13, -11, -3,
    -- layer=2 filter=31 channel=1
    -19, -12, -12, -14, -15, -27, 13, -13, 16,
    -- layer=2 filter=31 channel=2
    -25, 2, -2, 0, 24, -8, 11, -19, 6,
    -- layer=2 filter=31 channel=3
    -22, -25, -26, 6, -1, 21, -4, 20, -16,
    -- layer=2 filter=31 channel=4
    0, -1, -15, 0, 21, -2, 17, -5, -9,
    -- layer=2 filter=31 channel=5
    -11, 20, 0, -12, 0, 21, -6, 15, -16,
    -- layer=2 filter=31 channel=6
    -17, -14, -12, -13, -19, -16, -17, 1, 8,
    -- layer=2 filter=31 channel=7
    2, -13, -24, 23, 21, -16, 22, 0, 15,
    -- layer=2 filter=31 channel=8
    -2, 22, 24, -8, 4, 10, -4, -13, 11,
    -- layer=2 filter=31 channel=9
    -20, 10, 21, -19, -26, 22, 4, 24, -19,
    -- layer=2 filter=31 channel=10
    -19, 23, -18, 12, -12, 2, -24, 7, 2,
    -- layer=2 filter=31 channel=11
    9, 21, 16, 10, 8, 24, -27, -14, 14,
    -- layer=2 filter=31 channel=12
    -21, -7, -7, -6, -8, -21, 11, 7, -5,
    -- layer=2 filter=31 channel=13
    -4, -23, 1, -10, -14, 17, 9, -16, -14,
    -- layer=2 filter=31 channel=14
    23, -23, -10, -15, 19, -5, -24, -15, -14,
    -- layer=2 filter=31 channel=15
    18, -22, -18, -27, -11, -12, 1, -29, -23,
    -- layer=2 filter=31 channel=16
    0, 21, 5, 3, 12, -17, -23, 24, 3,
    -- layer=2 filter=31 channel=17
    -5, -12, 14, -17, 20, 4, -4, 15, 0,
    -- layer=2 filter=31 channel=18
    20, -20, -22, 21, -12, -16, 24, 5, 19,
    -- layer=2 filter=31 channel=19
    -25, -25, 17, 1, 0, -21, 17, -1, -17,
    -- layer=2 filter=31 channel=20
    -27, -21, -6, -8, -9, -26, -9, -19, -20,
    -- layer=2 filter=31 channel=21
    8, 13, -6, 16, -3, -8, -10, -3, 10,
    -- layer=2 filter=31 channel=22
    10, -20, 23, 9, -1, -8, 12, 18, 15,
    -- layer=2 filter=31 channel=23
    16, -8, -15, 15, -13, -5, -7, -11, 16,
    -- layer=2 filter=31 channel=24
    -18, 8, -1, 18, -27, -23, 7, 17, -2,
    -- layer=2 filter=31 channel=25
    -14, 0, -2, -14, 19, 5, -24, -28, 13,
    -- layer=2 filter=31 channel=26
    -7, -14, -7, -8, 21, 4, -10, 8, 3,
    -- layer=2 filter=31 channel=27
    -12, -3, 8, 13, -25, -1, -13, 14, -16,
    -- layer=2 filter=31 channel=28
    -12, -5, -2, -14, 4, -12, 22, 3, 15,
    -- layer=2 filter=31 channel=29
    -24, -17, 3, -28, -8, -1, -8, -24, 3,
    -- layer=2 filter=31 channel=30
    -2, -16, 19, -8, -4, 2, -6, 8, -5,
    -- layer=2 filter=31 channel=31
    0, -26, -25, 6, 3, 21, -23, 16, -1,

    others => 0);
end iwght_package;

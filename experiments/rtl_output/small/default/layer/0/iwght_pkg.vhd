library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    294, -21557, -18063, 5398, 3933, 8894, -1438, 6541, 956, 1329, -3164, -3664, -3829, -5452, 3893, -1493,

    -- weights
    -- layer=0 filter=0 channel=0
    -31, -26, 10, -82, 38, 37, -48, 71, 22,
    -- layer=0 filter=0 channel=1
    -55, 33, 12, -63, -3, 72, -41, 63, -11,
    -- layer=0 filter=0 channel=2
    -32, -35, 19, -79, 7, 1, -28, 59, 67,
    -- layer=0 filter=1 channel=0
    -67, 28, 32, 1, 16, 18, -25, 31, 38,
    -- layer=0 filter=1 channel=1
    21, 57, 29, 29, 61, 52, 25, 57, 60,
    -- layer=0 filter=1 channel=2
    -4, 52, 3, 25, -1, 21, 9, 40, 62,
    -- layer=0 filter=2 channel=0
    -5, 48, 55, -17, 35, 2, -40, -5, 24,
    -- layer=0 filter=2 channel=1
    -9, -12, -12, -48, -32, 28, -6, -47, 6,
    -- layer=0 filter=2 channel=2
    21, 72, 61, -1, 24, 76, -19, 40, -26,
    -- layer=0 filter=3 channel=0
    6, 8, -24, -16, -55, -2, -27, 14, 23,
    -- layer=0 filter=3 channel=1
    5, -50, -27, 1, 13, -34, -49, -39, -49,
    -- layer=0 filter=3 channel=2
    43, 26, 16, 24, -8, 55, 72, 7, 66,
    -- layer=0 filter=4 channel=0
    12, 39, 45, 13, 37, 64, 39, 34, 0,
    -- layer=0 filter=4 channel=1
    -58, 34, -47, 10, -36, 31, -3, -3, 11,
    -- layer=0 filter=4 channel=2
    -43, 6, 0, -5, -20, -4, -64, -38, -23,
    -- layer=0 filter=5 channel=0
    -52, -24, 17, -47, -14, 39, -59, 18, -22,
    -- layer=0 filter=5 channel=1
    -17, 59, 72, 39, 7, 47, 27, 23, 30,
    -- layer=0 filter=5 channel=2
    -19, 38, -37, -45, -45, -30, 1, 4, -56,
    -- layer=0 filter=6 channel=0
    -53, 0, -25, -68, -39, -13, -72, 9, -42,
    -- layer=0 filter=6 channel=1
    8, 60, 34, 17, -7, 22, 55, 8, 15,
    -- layer=0 filter=6 channel=2
    32, 47, 51, 38, 38, 11, -6, 39, 7,
    -- layer=0 filter=7 channel=0
    29, -30, -13, -10, 42, -13, 44, 44, 43,
    -- layer=0 filter=7 channel=1
    53, -13, 17, 56, -30, 47, 44, -16, -11,
    -- layer=0 filter=7 channel=2
    -47, 29, -27, -41, -49, -33, -56, -57, -17,
    -- layer=0 filter=8 channel=0
    -21, -12, 71, -70, -6, 39, -72, 15, 51,
    -- layer=0 filter=8 channel=1
    -37, 26, 79, -33, 45, 7, -69, -45, 18,
    -- layer=0 filter=8 channel=2
    -1, -13, 38, -40, -22, 59, -35, -26, 54,
    -- layer=0 filter=9 channel=0
    66, 48, 57, 34, -13, -52, -70, -62, -40,
    -- layer=0 filter=9 channel=1
    56, 24, 25, -29, 18, 37, -19, -39, -40,
    -- layer=0 filter=9 channel=2
    -18, 43, 26, 4, -16, 30, -49, -63, 18,
    -- layer=0 filter=10 channel=0
    -33, 32, 55, -22, 39, 54, 22, 63, 29,
    -- layer=0 filter=10 channel=1
    -16, 10, 30, 23, 22, 44, -14, 35, 33,
    -- layer=0 filter=10 channel=2
    -72, -65, -49, 10, -45, 22, 33, -42, -18,
    -- layer=0 filter=11 channel=0
    39, -14, -61, 50, 35, -36, 51, 9, -8,
    -- layer=0 filter=11 channel=1
    47, -43, -18, 56, 2, -49, 24, -43, -40,
    -- layer=0 filter=11 channel=2
    37, 52, 5, 80, 7, -41, 1, -31, -22,
    -- layer=0 filter=12 channel=0
    29, 0, -29, 59, 56, -25, -17, 11, -5,
    -- layer=0 filter=12 channel=1
    75, 22, -38, 26, -13, -62, 55, 27, -6,
    -- layer=0 filter=12 channel=2
    82, -18, -21, 33, 36, -40, 55, -27, -59,
    -- layer=0 filter=13 channel=0
    51, 46, 24, -17, 13, 67, -5, -34, 21,
    -- layer=0 filter=13 channel=1
    41, -22, 28, -23, 8, 1, -27, -2, 29,
    -- layer=0 filter=13 channel=2
    -18, -48, -55, 31, -50, -73, 10, 14, -41,
    -- layer=0 filter=14 channel=0
    20, 69, 38, 66, -17, 50, 46, -36, -5,
    -- layer=0 filter=14 channel=1
    -29, 8, 4, -17, -22, -55, -72, -36, -74,
    -- layer=0 filter=14 channel=2
    68, -15, 54, 12, 8, -54, -17, -11, -35,
    -- layer=0 filter=15 channel=0
    42, 26, 44, 9, 31, 60, -50, -67, -52,
    -- layer=0 filter=15 channel=1
    24, -51, -38, 1, -13, 39, -43, 14, -26,
    -- layer=0 filter=15 channel=2
    -50, -21, 37, 50, 57, -16, 13, 0, -30,

    others => 0);
end iwght_package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -13815, 7488, -20789, -10399, 6170, 496, 203, 10003, -3073, 243, -6604, -1286, 864, 3009, -7452, -7118,

    -- weights
    -- layer=0 filter=0 channel=0
    63, 25, -16, 35, 28, -8, 18, -35, 9,
    -- layer=0 filter=0 channel=1
    13, -9, 22, 3, -4, -13, -37, -54, -17,
    -- layer=0 filter=0 channel=2
    71, 72, 68, 43, -28, 44, -22, -37, -32,
    -- layer=0 filter=1 channel=0
    9, -25, 49, 29, -5, 61, 51, -6, 3,
    -- layer=0 filter=1 channel=1
    -22, 7, 0, 17, 9, 52, 5, -4, 33,
    -- layer=0 filter=1 channel=2
    -42, 14, -44, -65, -48, -10, -69, 17, -33,
    -- layer=0 filter=2 channel=0
    13, 31, 2, -50, 33, -37, 32, -36, -27,
    -- layer=0 filter=2 channel=1
    33, 32, -40, -45, -22, 0, -37, 13, 18,
    -- layer=0 filter=2 channel=2
    16, -7, 28, 50, 43, 53, 53, 23, 10,
    -- layer=0 filter=3 channel=0
    -21, -17, -23, 30, 9, -36, -20, 29, 32,
    -- layer=0 filter=3 channel=1
    35, 25, -12, -11, -34, 31, -15, 6, -5,
    -- layer=0 filter=3 channel=2
    42, 49, 48, 64, 44, 53, -25, 51, 27,
    -- layer=0 filter=4 channel=0
    27, 19, -1, 47, 12, -29, -23, -41, -49,
    -- layer=0 filter=4 channel=1
    67, 57, 28, 52, 39, -3, 20, 56, 43,
    -- layer=0 filter=4 channel=2
    31, -5, 12, -29, -61, -42, -59, -60, -66,
    -- layer=0 filter=5 channel=0
    26, 51, 19, -14, 33, -20, -72, -2, -16,
    -- layer=0 filter=5 channel=1
    57, 45, -28, 15, 4, 40, -33, -80, -61,
    -- layer=0 filter=5 channel=2
    -20, 56, -12, -6, 52, 2, -21, -58, 1,
    -- layer=0 filter=6 channel=0
    -36, 14, 22, -68, 20, 36, -64, 24, 36,
    -- layer=0 filter=6 channel=1
    -12, -47, 73, -28, -1, 72, -74, 23, 22,
    -- layer=0 filter=6 channel=2
    -53, -24, 76, -49, 10, 44, -84, -36, 91,
    -- layer=0 filter=7 channel=0
    -35, -21, -56, -34, -32, -35, -29, -9, -17,
    -- layer=0 filter=7 channel=1
    -32, -48, -30, -2, -39, 13, 6, 32, 8,
    -- layer=0 filter=7 channel=2
    -9, 57, -24, 72, -3, 64, 44, 71, 61,
    -- layer=0 filter=8 channel=0
    -52, -17, 0, 6, 5, 5, -28, -25, -13,
    -- layer=0 filter=8 channel=1
    -25, -3, 4, -35, 26, 21, -4, 7, -42,
    -- layer=0 filter=8 channel=2
    27, -43, -39, -43, 26, -26, -52, -5, -28,
    -- layer=0 filter=9 channel=0
    -36, -44, -28, -50, 16, -45, 4, -4, 39,
    -- layer=0 filter=9 channel=1
    -5, -35, 22, -6, 7, 53, 45, 50, 50,
    -- layer=0 filter=9 channel=2
    -51, -42, -2, -9, 40, 0, 24, 12, 73,
    -- layer=0 filter=10 channel=0
    -31, 47, 6, 41, 43, 29, 58, -24, 44,
    -- layer=0 filter=10 channel=1
    16, 23, 23, 23, -7, 9, 16, 39, 10,
    -- layer=0 filter=10 channel=2
    -23, -28, -15, -31, -72, -39, 9, -4, -60,
    -- layer=0 filter=11 channel=0
    4, 42, 80, -24, -29, 3, -28, -72, 25,
    -- layer=0 filter=11 channel=1
    -1, 78, 33, 10, 35, -18, -42, -74, -63,
    -- layer=0 filter=11 channel=2
    19, 61, 54, -13, -9, -17, -1, -23, -32,
    -- layer=0 filter=12 channel=0
    -16, -24, 28, 83, 26, -50, 17, 48, -70,
    -- layer=0 filter=12 channel=1
    70, -52, -11, 3, 3, -77, 85, -26, -67,
    -- layer=0 filter=12 channel=2
    41, -58, 25, 79, -47, -4, 64, -12, -69,
    -- layer=0 filter=13 channel=0
    -4, 53, 2, 46, 56, 53, 63, 55, 58,
    -- layer=0 filter=13 channel=1
    -44, -41, -47, -49, -39, -3, -12, -47, -29,
    -- layer=0 filter=13 channel=2
    28, -6, 10, 25, -23, -50, -34, 49, -27,
    -- layer=0 filter=14 channel=0
    -25, 26, -45, -21, -1, 12, -16, -32, -3,
    -- layer=0 filter=14 channel=1
    -4, 13, 24, 17, 24, 3, -27, 37, 26,
    -- layer=0 filter=14 channel=2
    50, 11, 68, 18, 12, 11, -22, -7, 26,
    -- layer=0 filter=15 channel=0
    48, -12, 70, 3, 60, 79, 13, 37, 23,
    -- layer=0 filter=15 channel=1
    4, 3, -52, 20, -59, -42, -32, -13, -15,
    -- layer=0 filter=15 channel=2
    -42, -1, 14, -12, -40, -58, 4, -62, 3,

    others => 0);
end iwght_package;

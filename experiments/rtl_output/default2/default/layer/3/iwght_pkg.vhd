library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=3
    -9527, 6, 3207, 349, 9790, -9312, 10015, -8330, 3359, 712,

    -- weights
    -- layer=3 filter=0 channel=0
    14, -9, 11, -8, 43, -81, -33, 39, -25, 1, -9, -12, 24, -8, 27, -39, 41, 29, -40, 39, -15, -75, -18, -18, -55, -32, -62, 29, -40, 16, 87, 47, 9, 25, -26, 9, 19, -70, 99, 36, -24, -23, -52, 21, 2, 22, 31, -72, -71, 19, 50, 50, 33, -58, -28, 5, -13, 40, -9, 19, 32, -29, 9, -29, -19, 17, -1, -51, -9, 5, 4, -28, 18, -28, 54, 64, 14, 0, -18, 8, -39, -58, 4, -28, 37, -53, 29, -27, 19, 79, -38, 69, 15, -64, 47, -53, 39, 15, -12, 47, -7, -67, -23, 46, 1, 20, -5, 28, 56, -16, 0, 8, 30, 32, -24, -48, 1, 22, -51, 6, -2, -33, -17, -32, -12, -85, -69, -13, 44, 59, 11, -14, -11, -29, -85, 2, -57, -21, 34, 17, 55, -27, -44, 11,
    -- layer=3 filter=0 channel=1
    -19, 7, 58, 62, 50, -25, -76, 32, -48, 22, 37, -78, 20, 0, -49, -6, -8, 21, 48, 26, 36, -32, -46, -68, 41, 58, 13, -40, 24, 6, -32, 0, -31, -22, 7, 17, -41, 7, -39, -59, 18, 53, 7, 14, 30, 33, -74, 29, -59, 10, 1, -45, 68, -87, -93, 63, -64, -58, 5, -27, 43, 6, -36, 84, -4, 80, -5, -65, 2, -10, -4, 40, -27, 11, -6, 117, 14, -34, -56, -22, -1, 4, -21, 9, 0, -81, -65, -55, 48, -13, -8, 58, 59, 2, -32, -6, -41, -13, 91, 7, -4, -67, -3, -108, 19, -50, 55, -11, 6, -31, -88, -30, -35, -18, 18, 58, 78, -26, 17, -54, 22, -58, 0, -9, 7, -81, 51, 48, -30, 17, -14, -35, 18, -60, -5, -73, 84, -67, -3, 20, -15, -91, -62, -50,
    -- layer=3 filter=0 channel=2
    42, 9, -44, -5, -22, -30, 26, 35, 16, 9, -11, -52, -28, 25, 28, -46, -26, 3, -27, 45, 17, -15, 52, -30, -10, 21, -6, 8, 16, 48, 0, -13, 38, 48, -12, 40, -40, 5, 11, -18, -59, -28, -14, 47, -52, 2, 39, 7, 59, -35, 23, 14, -29, 17, 23, -9, 16, -23, -33, 35, 38, -3, -15, 16, -17, 1, -12, 3, -26, -37, 17, -5, -28, -29, -18, -90, 28, -66, 19, -77, 15, 3, -27, -8, -20, 56, 10, 0, -78, 13, 7, -52, 6, -43, 21, -41, 40, 32, -36, 6, 11, 10, 83, 40, -54, -34, -35, 84, 14, 66, 17, 21, -7, 32, -59, -15, -12, 25, -10, -6, -12, 7, 26, -29, -44, -9, 13, -43, 32, 76, 10, 4, 28, -32, -8, 20, -126, 30, 37, 6, 33, 26, 91, 40,
    -- layer=3 filter=0 channel=3
    23, -71, -14, 27, 21, -6, -34, 44, 68, -36, 40, -36, 13, -38, 0, -13, -2, -59, 16, 31, 3, 1, -14, -18, 56, -27, -21, 9, -41, 1, -13, -26, 4, -3, -14, -26, 44, 30, 44, 32, -2, 8, -37, -38, 0, -6, 11, -43, 31, -15, -18, -31, -95, -20, 8, 1, 41, -26, 14, -49, -40, -28, 1, -32, 16, -55, -54, 20, -15, 53, 13, -5, -73, 44, 22, -44, -52, -8, 61, 64, 35, -32, -6, -33, -26, 15, 19, 41, 27, -27, -56, -57, -3, 4, 16, 17, 11, -8, -44, -59, 24, -10, 99, 19, 3, 0, 8, 8, 32, -14, -1, 17, -12, -60, 10, -12, -14, -1, 38, 25, -60, 32, -25, -12, 33, 79, 27, 50, 17, -11, 18, -21, 1, 8, 63, 55, 28, -5, -34, -38, -33, 54, 11, -17,
    -- layer=3 filter=0 channel=4
    -28, 22, -41, -16, -15, 60, -66, -17, -36, 15, -20, -39, 36, -17, -60, -4, 62, 52, -62, 40, -66, 42, -73, 36, -47, 26, 21, -24, -23, 4, -13, 46, -13, -21, -39, -35, -38, -12, -53, -20, 1, 19, -35, 27, -40, 24, 68, -10, 1, 79, 14, 15, -14, -38, -7, -15, 20, -2, -15, 15, 45, 38, -63, 41, -35, -30, -27, -17, -18, 47, 4, 17, -5, -68, -4, -17, -44, -27, -61, -69, -17, 60, -45, 20, 6, 32, 19, 6, -81, -37, 15, 26, -9, 14, -21, -21, 78, -19, -22, 11, -37, 50, -55, -13, -35, 35, 39, 59, 42, 18, 10, 14, 27, -54, -80, 21, -41, 56, 31, -13, 24, -27, 58, -45, -22, 32, -14, 25, 54, 17, -46, -16, 37, 0, -15, 24, -52, -67, -3, -38, 0, -16, -46, 34,
    -- layer=3 filter=0 channel=5
    -36, -55, -2, 35, 27, -1, 15, 4, 44, -76, -1, 17, -89, -18, -15, -93, -4, -52, 43, 2, 82, 14, 23, 30, 17, 9, 50, 51, -15, 34, -13, -70, 13, -31, -22, 8, 19, 19, 14, 13, 44, -98, 0, 32, -3, 21, 1, -20, 38, -47, -72, 1, -34, -42, 1, -34, 8, -29, -56, -50, -72, -19, 56, -25, 1, -75, -20, -32, -69, 51, 10, 6, 43, 33, 32, -45, 26, -48, 0, 99, 7, -47, -46, -35, -71, 17, 44, 19, -3, 7, 12, -49, -86, 11, -4, 33, 14, 4, -21, -17, -43, -32, 22, 19, -24, 27, -11, -42, 21, -8, 69, -23, 40, -46, 13, -49, -23, -6, -27, 75, 9, -23, 51, -33, 7, 73, -30, -13, 19, -25, 41, -16, -38, -21, 52, 87, -2, -28, 8, -81, 16, 70, -28, -18,
    -- layer=3 filter=0 channel=6
    -1, -59, 45, 58, -1, -7, 50, 21, -22, -55, 75, -26, 25, 39, -97, 44, 41, -47, -22, 3, -78, -12, -79, 17, -45, -21, 14, 6, 19, -29, -148, 4, -29, 5, -5, 24, 37, -6, -10, -50, -14, 40, -29, -35, -57, 20, -157, 100, -4, 5, 82, 15, -85, 40, -22, -29, 29, -60, 16, 3, -44, -31, -40, -97, 93, 2, -22, 101, -58, 24, -126, 0, -76, 30, -70, -24, -76, 28, -164, -49, -18, 41, -32, 35, 23, 31, -47, 0, -6, -18, -21, -122, -67, 64, 19, -9, -5, -3, 32, -17, -6, 59, -4, -18, 42, 33, -5, 5, -9, -14, -57, 5, -29, -17, 72, 38, -1, 39, -29, -56, 1, -45, 53, -32, 1, 36, -32, -30, -19, -19, -67, -9, -15, -9, -24, 50, 19, -5, 7, -20, -39, -26, -29, -35,
    -- layer=3 filter=0 channel=7
    10, 21, -5, -98, 91, -39, -34, -38, 9, 33, -12, -15, -21, -14, -32, 21, -29, 8, -26, -38, -13, 27, 10, 18, 6, -20, -1, -21, -11, -27, 27, 28, -3, 25, 90, -114, 16, -46, -3, 17, 6, -35, 47, 22, -38, -27, -27, 15, -7, 39, 7, 74, 3, 37, 22, 13, 23, 20, 45, -76, -51, -36, -34, 27, -26, -99, 44, -28, 22, -85, -58, 12, 28, 73, 82, -22, -46, -38, 58, -23, 15, -72, -6, -3, -6, 31, 27, -3, 28, -66, 21, -44, -41, 16, 1, -55, 25, 55, -6, 30, -74, 66, -80, 19, -92, 63, 55, -17, -27, 12, -14, -42, 15, -14, -45, 8, -56, 77, -62, -20, -65, -56, 44, -32, -63, 15, -61, -7, 68, 42, -16, 78, -5, -10, -123, -8, 16, -51, 47, -71, 1, 2, -64, 63,
    -- layer=3 filter=0 channel=8
    46, 35, -26, -45, 14, -31, -29, 13, -39, 72, -55, 28, 54, -60, -37, -18, -5, -48, -37, -12, -6, 4, 22, 10, -29, 0, -28, 37, 13, 1, 11, 32, 39, 48, 34, -63, 22, -75, -65, 32, -112, 32, 15, -7, -3, 44, -63, 14, -19, -65, -13, -63, -5, -16, 24, 2, -11, 25, 31, 36, 27, -3, -34, -35, -40, -37, 59, -8, -10, 44, -47, 21, 0, 78, 13, 35, 26, 16, -57, -35, -15, -38, 71, -29, 11, -19, -15, -20, -9, -19, -12, 23, -15, -9, -87, 38, -86, -22, 19, -21, -71, -32, -2, -30, 29, -59, -26, 25, 62, -55, 5, -50, -16, 38, 71, 17, -5, -51, 25, -34, -33, 68, -124, 68, 71, 4, -71, 62, -35, 54, 62, -18, -41, -81, 112, -32, -9, 2, -108, 24, 47, 25, 16, 52,
    -- layer=3 filter=0 channel=9
    7, 3, 73, -8, 0, -61, -2, 57, -3, 4, 55, 8, 25, -11, 86, -45, 28, 67, 64, -7, -10, 9, 27, -19, 37, 2, 32, 36, 31, -38, 88, -38, 21, 46, -11, -25, 10, -58, -25, 14, -12, 5, 36, 20, 29, -5, 32, -35, -49, 26, -60, 3, 77, -42, -88, -23, -37, 11, 19, -55, -10, 21, -79, -70, 76, 41, 16, 53, -11, 12, -45, 24, 31, -39, -1, -51, -14, 47, -47, -24, -19, -15, 47, -33, -25, -23, -143, 11, 28, -28, -42, -10, 23, -33, -50, -90, -121, 12, 0, 9, 59, -27, -63, -119, 16, -66, 50, -53, -65, -49, -82, -1, -43, -36, 55, 20, -13, -16, 10, -99, 22, -29, -29, -6, 27, -50, -46, -50, -85, -26, 4, -38, -11, 3, 0, -128, 72, -13, 49, 0, 8, -43, -68, -42,

    others => 0);
end iwght_package;
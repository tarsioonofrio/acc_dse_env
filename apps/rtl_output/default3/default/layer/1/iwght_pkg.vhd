library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=1
    5450, -4195, -635, 16526, -12320, 5637, -2534, 1652, -592, 8966, 15856, 3054, -1763, -763, -7699, 10306, -4120, -1109, -1053, 1400, -442, -2198, -1001, -922, 12465, 3510, -1016, 5515, -2245, -882, -4803, 1736, -1088, -1363, 1722, -2672, -1458, 4891, -5096, 5168, -2669, -1344, 5684, 13800, -1254, 3183, -3493, -4511, -1391, 5029, -1567, 3874, 4055, -183, 671, -1145, 2819, -1759, -1080, 1566, 863, 1650, -3500, -5634, 7475, -138, 2027, 4437, -581, 5256, 1013, -1753, -362, 14508, -3979, -4901, 441, -560, 5823, -404, 8232, -1784, -596, -5616, -824, -1815, -1187, -2328, -3623, -3765, -502, 420, -3061, 5015, -79, -2414, -360, 9342, 2466, 7278, 846, -1429, -555, -4029, 1743, -7438, -2215, 1503, -2772, -2345, 2347, -195, 5181, -6939, -1888, -816, 2293, 616, 16200, -7805, -1327, -1812, -2326, 1360, 8076, -1926, 4244, -9580,

    -- weights
    -- layer=1 filter=0 channel=0
    -7, 10, -10, -9, -13, 8, 4, -30, 4,
    -- layer=1 filter=0 channel=1
    10, -4, 25, -15, 1, -12, 8, 11, 5,
    -- layer=1 filter=0 channel=2
    -27, -3, -28, -34, -21, -8, -24, -23, -18,
    -- layer=1 filter=0 channel=3
    -47, -64, -99, -40, 13, -18, -19, 10, 25,
    -- layer=1 filter=0 channel=4
    -20, 9, 4, 11, 6, 6, 16, -6, 0,
    -- layer=1 filter=0 channel=5
    -43, -19, -5, 24, 5, -20, 3, 21, 6,
    -- layer=1 filter=0 channel=6
    12, -21, 12, 1, 13, -15, 16, 20, 1,
    -- layer=1 filter=0 channel=7
    1, 10, -9, 13, 6, -2, -7, -8, 3,
    -- layer=1 filter=0 channel=8
    15, 14, 0, 20, 2, -14, 33, 27, -7,
    -- layer=1 filter=0 channel=9
    10, 14, -10, 16, 2, 4, -20, 7, 10,
    -- layer=1 filter=0 channel=10
    -6, 1, -31, 14, -13, -18, 11, -17, -19,
    -- layer=1 filter=0 channel=11
    -4, -9, 19, 1, 2, 23, 19, 15, 1,
    -- layer=1 filter=0 channel=12
    -23, -15, 8, -29, -25, -4, -11, -56, -17,
    -- layer=1 filter=0 channel=13
    -31, 0, -22, -8, 4, 2, -9, 7, 7,
    -- layer=1 filter=0 channel=14
    -1, -17, -26, -13, -12, -6, -10, 10, 19,
    -- layer=1 filter=0 channel=15
    -21, -2, -4, -18, -14, -3, -4, -8, -35,
    -- layer=1 filter=0 channel=16
    -5, -58, -4, -78, -18, -66, 30, -3, 16,
    -- layer=1 filter=0 channel=17
    -34, -16, -54, -40, -24, -29, 1, -28, 10,
    -- layer=1 filter=0 channel=18
    10, 8, -6, -7, 14, -2, 3, -8, 0,
    -- layer=1 filter=0 channel=19
    -20, 4, 0, 22, 7, 6, 14, 6, -25,
    -- layer=1 filter=0 channel=20
    7, -16, 10, -7, -8, -8, -3, 3, 18,
    -- layer=1 filter=0 channel=21
    -32, -29, 5, -17, 18, 16, -28, -25, 22,
    -- layer=1 filter=0 channel=22
    -31, 9, 6, -57, -29, -32, 34, 56, 31,
    -- layer=1 filter=0 channel=23
    -39, -34, -18, -64, -48, -62, -46, -53, -23,
    -- layer=1 filter=0 channel=24
    -59, -49, -72, -36, -26, -79, 7, 15, -11,
    -- layer=1 filter=0 channel=25
    32, -52, 30, 0, 26, -44, 35, -16, 21,
    -- layer=1 filter=0 channel=26
    -2, -7, 0, 6, 0, -8, 3, 12, -10,
    -- layer=1 filter=0 channel=27
    -27, 7, -17, 1, -14, 0, -41, -26, -32,
    -- layer=1 filter=0 channel=28
    -21, 55, -26, 51, -20, 22, 39, 27, -9,
    -- layer=1 filter=0 channel=29
    24, -12, 1, 23, -1, -6, 13, 23, -12,
    -- layer=1 filter=0 channel=30
    9, -2, -6, -3, 11, -6, 12, 4, -6,
    -- layer=1 filter=0 channel=31
    -3, -3, 13, 0, -18, 3, 14, -14, -5,
    -- layer=1 filter=0 channel=32
    0, 5, -13, -15, -18, 37, -44, -7, -33,
    -- layer=1 filter=0 channel=33
    -16, 5, -10, 13, 15, 2, -5, -7, -1,
    -- layer=1 filter=0 channel=34
    -9, -1, -3, 14, 0, -8, 8, -2, -22,
    -- layer=1 filter=0 channel=35
    4, -1, 2, 0, -5, -19, 8, 13, -10,
    -- layer=1 filter=0 channel=36
    -31, -46, -42, -78, -21, 13, -27, 17, 13,
    -- layer=1 filter=0 channel=37
    6, -12, 0, 18, -1, 3, 10, 7, -12,
    -- layer=1 filter=0 channel=38
    -7, -2, 8, 0, 3, 0, -14, -8, 0,
    -- layer=1 filter=0 channel=39
    7, 8, 7, 7, 14, 12, 0, 9, 5,
    -- layer=1 filter=0 channel=40
    3, -12, -14, -2, 2, -17, 6, 1, 1,
    -- layer=1 filter=0 channel=41
    -18, -7, 8, 8, 0, -9, -18, 26, 20,
    -- layer=1 filter=0 channel=42
    9, -1, -3, -2, 23, 7, 3, -2, 31,
    -- layer=1 filter=0 channel=43
    53, -6, 13, 4, -15, -24, 25, 6, -7,
    -- layer=1 filter=0 channel=44
    -21, -25, -27, -8, -11, -11, -24, -20, -15,
    -- layer=1 filter=0 channel=45
    67, -34, -11, 33, -17, -26, 40, -18, -7,
    -- layer=1 filter=0 channel=46
    -12, -24, -28, 11, 10, 7, -8, 8, -12,
    -- layer=1 filter=0 channel=47
    2, -4, -32, 27, 16, -2, 16, 5, -2,
    -- layer=1 filter=0 channel=48
    -34, -24, -1, -14, -10, -13, 2, 24, 11,
    -- layer=1 filter=0 channel=49
    -12, 0, 23, -16, -4, 2, 11, 8, -3,
    -- layer=1 filter=0 channel=50
    -5, -10, -5, 17, -4, 23, 21, 12, 15,
    -- layer=1 filter=0 channel=51
    6, 2, 20, -2, 4, -15, 10, 5, 9,
    -- layer=1 filter=0 channel=52
    -57, -32, -52, -13, -24, -52, -6, -36, -25,
    -- layer=1 filter=0 channel=53
    -37, -30, -79, -38, -31, 8, -25, 14, 32,
    -- layer=1 filter=0 channel=54
    16, -11, -7, 14, 16, 0, 24, 16, 9,
    -- layer=1 filter=0 channel=55
    -44, -50, -35, -34, -13, -42, -30, -34, -29,
    -- layer=1 filter=0 channel=56
    15, -24, -2, 12, 17, -12, 26, 30, -5,
    -- layer=1 filter=0 channel=57
    7, -8, -11, 8, 8, 10, 12, 5, 9,
    -- layer=1 filter=0 channel=58
    -23, -17, -4, -21, 16, -14, 22, 2, 9,
    -- layer=1 filter=0 channel=59
    6, 9, 1, -11, -12, -15, -16, -8, -6,
    -- layer=1 filter=0 channel=60
    4, -2, -10, -13, -12, 5, 8, 4, 8,
    -- layer=1 filter=0 channel=61
    -14, -5, -2, 12, 6, 9, 15, 1, 26,
    -- layer=1 filter=0 channel=62
    12, -20, 35, 7, -14, 41, -9, -12, -21,
    -- layer=1 filter=0 channel=63
    -55, -50, -16, -68, -44, 2, 8, 20, 16,
    -- layer=1 filter=1 channel=0
    13, 0, 9, 5, -6, 29, -9, -9, -3,
    -- layer=1 filter=1 channel=1
    0, 10, -7, -2, -13, -12, 4, -2, 0,
    -- layer=1 filter=1 channel=2
    -6, -1, -1, 16, -17, -7, -2, 2, -8,
    -- layer=1 filter=1 channel=3
    18, 3, 12, 28, 35, -28, 7, 32, 54,
    -- layer=1 filter=1 channel=4
    25, 8, 0, -11, -5, -14, -11, -16, -2,
    -- layer=1 filter=1 channel=5
    6, 21, 0, -17, -14, -21, 43, 35, -27,
    -- layer=1 filter=1 channel=6
    -18, 17, 14, 16, 0, -9, -7, 15, -15,
    -- layer=1 filter=1 channel=7
    12, 0, -8, -14, 10, -13, 3, -29, -12,
    -- layer=1 filter=1 channel=8
    -5, 22, -5, -16, 4, 15, 10, -8, -19,
    -- layer=1 filter=1 channel=9
    3, 0, 8, 33, 30, -5, 1, -15, 11,
    -- layer=1 filter=1 channel=10
    25, 24, -10, 16, 13, -14, 4, -16, -33,
    -- layer=1 filter=1 channel=11
    5, 9, 4, -15, -19, 5, -4, -3, -34,
    -- layer=1 filter=1 channel=12
    -7, 9, -18, 53, 28, -7, 4, 28, 57,
    -- layer=1 filter=1 channel=13
    19, 17, -13, 1, -1, -2, -8, 0, -11,
    -- layer=1 filter=1 channel=14
    -14, -1, -2, -11, -21, -11, -29, -16, 5,
    -- layer=1 filter=1 channel=15
    37, 24, 20, -5, 37, 0, -11, -32, -34,
    -- layer=1 filter=1 channel=16
    -28, 3, -8, 12, 17, 14, 37, 49, 37,
    -- layer=1 filter=1 channel=17
    22, 12, -6, 29, 10, 13, 0, 11, 12,
    -- layer=1 filter=1 channel=18
    10, -8, -15, -7, -12, 7, 6, -17, 0,
    -- layer=1 filter=1 channel=19
    16, 16, 3, -14, -13, -5, 5, -22, -35,
    -- layer=1 filter=1 channel=20
    4, 2, -4, 17, 12, -19, -3, 3, 13,
    -- layer=1 filter=1 channel=21
    13, 30, 4, 2, 1, 1, 10, 17, 2,
    -- layer=1 filter=1 channel=22
    0, 1, 0, 46, 26, -14, 46, 54, 15,
    -- layer=1 filter=1 channel=23
    28, 23, 23, 9, 0, 13, 0, 15, 15,
    -- layer=1 filter=1 channel=24
    -28, -21, -59, 18, -11, -21, 31, 48, 29,
    -- layer=1 filter=1 channel=25
    -5, 30, 13, 14, 3, -7, 20, 5, 8,
    -- layer=1 filter=1 channel=26
    -20, -11, 8, -8, 0, -4, -7, 0, 2,
    -- layer=1 filter=1 channel=27
    15, 4, 12, 38, 37, 28, 28, 13, 39,
    -- layer=1 filter=1 channel=28
    12, 4, 9, -18, 14, 23, 25, 5, -5,
    -- layer=1 filter=1 channel=29
    -23, 8, 8, -11, 9, -9, 41, 5, 3,
    -- layer=1 filter=1 channel=30
    10, -7, 8, 10, 12, 5, 0, -2, 4,
    -- layer=1 filter=1 channel=31
    10, 10, 19, -15, 0, 9, 0, -28, -15,
    -- layer=1 filter=1 channel=32
    34, 14, -11, 65, 24, 14, 32, 16, 49,
    -- layer=1 filter=1 channel=33
    -1, -8, 8, 6, -2, -1, 9, 9, -9,
    -- layer=1 filter=1 channel=34
    -8, 14, 14, -23, -12, 2, 0, -23, -3,
    -- layer=1 filter=1 channel=35
    14, 12, 5, 6, 3, -1, 10, -25, -27,
    -- layer=1 filter=1 channel=36
    14, -3, 0, 17, 45, -3, 18, 13, 8,
    -- layer=1 filter=1 channel=37
    12, 6, -7, -5, -2, -11, -37, -16, -2,
    -- layer=1 filter=1 channel=38
    32, 23, 23, 8, 47, -10, -18, -40, -25,
    -- layer=1 filter=1 channel=39
    -6, -3, 5, 8, 16, 10, 8, 1, 0,
    -- layer=1 filter=1 channel=40
    -17, 2, 3, -11, -19, -5, -10, -26, -51,
    -- layer=1 filter=1 channel=41
    -16, 8, -1, -2, -21, -31, 21, 16, -21,
    -- layer=1 filter=1 channel=42
    -21, -8, -15, 4, -20, -8, -17, -1, -14,
    -- layer=1 filter=1 channel=43
    -20, 5, 4, -4, 2, -9, 46, 15, -2,
    -- layer=1 filter=1 channel=44
    18, 28, -1, 13, 2, -4, -8, -23, -6,
    -- layer=1 filter=1 channel=45
    -22, 0, 7, 23, 25, 5, 25, 3, -1,
    -- layer=1 filter=1 channel=46
    -27, 20, -5, -4, 0, -17, -18, -23, -43,
    -- layer=1 filter=1 channel=47
    5, 17, 2, -22, 18, 3, 9, -32, -36,
    -- layer=1 filter=1 channel=48
    -26, 16, -18, -1, -8, -41, 43, 44, -22,
    -- layer=1 filter=1 channel=49
    24, 40, -13, 13, 11, -13, -14, -5, 3,
    -- layer=1 filter=1 channel=50
    14, -4, 20, -2, 24, 8, -6, -31, -23,
    -- layer=1 filter=1 channel=51
    -10, 26, -8, -17, -24, -7, -23, -31, -31,
    -- layer=1 filter=1 channel=52
    20, 30, 3, 40, -3, 25, 11, 4, 11,
    -- layer=1 filter=1 channel=53
    -15, 4, -18, 4, 37, -22, 16, 36, 39,
    -- layer=1 filter=1 channel=54
    6, 12, 7, -17, -18, 2, -13, -22, -35,
    -- layer=1 filter=1 channel=55
    20, 21, -9, 25, 2, 0, 23, 32, 22,
    -- layer=1 filter=1 channel=56
    -18, 15, -8, -28, 0, -30, -4, -1, -14,
    -- layer=1 filter=1 channel=57
    9, 11, 0, -11, 13, -8, -41, -36, -22,
    -- layer=1 filter=1 channel=58
    -20, -4, 4, -23, 5, 3, 4, -4, 10,
    -- layer=1 filter=1 channel=59
    16, 17, 0, 11, 25, 5, -16, -28, -12,
    -- layer=1 filter=1 channel=60
    4, -14, -4, 8, 11, 10, -9, -20, 8,
    -- layer=1 filter=1 channel=61
    -5, -17, -12, -16, -5, -13, -7, 0, -5,
    -- layer=1 filter=1 channel=62
    48, 34, -20, 79, 44, 18, 41, 39, 24,
    -- layer=1 filter=1 channel=63
    25, 36, -3, 62, 32, 59, 41, 38, 12,
    -- layer=1 filter=2 channel=0
    -8, 6, -15, 7, 2, 8, 4, -4, -17,
    -- layer=1 filter=2 channel=1
    0, 0, -1, -2, -14, -8, 9, 7, 0,
    -- layer=1 filter=2 channel=2
    -3, -5, 0, -7, -11, 12, 1, 5, -15,
    -- layer=1 filter=2 channel=3
    10, -12, -4, -11, 6, 10, 2, 9, 4,
    -- layer=1 filter=2 channel=4
    10, -12, 6, 3, -9, -5, -12, -10, 1,
    -- layer=1 filter=2 channel=5
    8, 12, 7, -14, -14, -12, -6, 12, 0,
    -- layer=1 filter=2 channel=6
    -14, -13, -14, 0, 5, -5, -11, 9, -3,
    -- layer=1 filter=2 channel=7
    0, -13, 10, -11, 0, 1, -3, -2, 7,
    -- layer=1 filter=2 channel=8
    5, -15, -9, -13, -3, -10, -7, 9, -5,
    -- layer=1 filter=2 channel=9
    -1, 0, -12, -13, -2, -4, 1, 8, -12,
    -- layer=1 filter=2 channel=10
    -13, -9, -2, 11, -15, 9, -11, 2, -7,
    -- layer=1 filter=2 channel=11
    0, -4, 9, -12, -13, 4, -5, -5, -8,
    -- layer=1 filter=2 channel=12
    4, -4, -5, -6, -9, 4, 1, 1, -4,
    -- layer=1 filter=2 channel=13
    0, 7, 5, -11, 5, 7, 0, -14, -13,
    -- layer=1 filter=2 channel=14
    0, 11, -11, -6, 12, -7, 4, -2, 0,
    -- layer=1 filter=2 channel=15
    -13, -3, -6, -8, -10, 13, 4, 9, 3,
    -- layer=1 filter=2 channel=16
    0, -1, -7, -13, -5, 0, 1, -9, -12,
    -- layer=1 filter=2 channel=17
    -3, -15, 11, -2, 6, 12, -11, 13, -17,
    -- layer=1 filter=2 channel=18
    13, -7, 14, 10, -8, -4, -10, 0, -5,
    -- layer=1 filter=2 channel=19
    -14, -8, -4, -4, -1, 7, -5, -15, 1,
    -- layer=1 filter=2 channel=20
    13, -14, -7, -14, -4, -8, 2, 7, -6,
    -- layer=1 filter=2 channel=21
    10, -10, -14, 7, -13, -9, 3, -8, -12,
    -- layer=1 filter=2 channel=22
    5, 2, 5, 4, -12, 6, 5, 5, -11,
    -- layer=1 filter=2 channel=23
    16, -7, -12, 5, -13, 0, -9, -8, -14,
    -- layer=1 filter=2 channel=24
    -2, 13, -1, -1, -11, 7, 7, -15, -14,
    -- layer=1 filter=2 channel=25
    0, 10, 1, -9, 4, 0, -16, -7, 1,
    -- layer=1 filter=2 channel=26
    12, 0, -9, 5, -8, -11, -7, 0, -7,
    -- layer=1 filter=2 channel=27
    -7, 12, 3, 2, 6, -5, -9, 10, -2,
    -- layer=1 filter=2 channel=28
    -12, -7, 0, -16, -11, -4, 2, -16, 3,
    -- layer=1 filter=2 channel=29
    -16, 12, 4, -2, -12, 11, 1, 10, 2,
    -- layer=1 filter=2 channel=30
    0, 10, -14, -3, 1, -15, 0, 13, -4,
    -- layer=1 filter=2 channel=31
    -6, -9, -4, 11, 12, -15, 0, -13, 1,
    -- layer=1 filter=2 channel=32
    12, -8, 10, 14, 13, 1, -3, -7, 2,
    -- layer=1 filter=2 channel=33
    15, -11, -10, -2, -1, 2, -13, -7, 0,
    -- layer=1 filter=2 channel=34
    1, -1, -2, 4, -4, -1, 9, -12, 8,
    -- layer=1 filter=2 channel=35
    -12, -12, 2, -8, -2, 9, 10, 3, 3,
    -- layer=1 filter=2 channel=36
    3, -10, 2, 9, -10, 4, 7, -6, -16,
    -- layer=1 filter=2 channel=37
    4, 3, -3, -12, 4, -6, -9, -5, -5,
    -- layer=1 filter=2 channel=38
    -6, -11, -5, -8, -11, 9, 5, -11, 1,
    -- layer=1 filter=2 channel=39
    -2, -14, 7, -12, -14, -5, -4, -16, 12,
    -- layer=1 filter=2 channel=40
    -2, 10, 6, -3, 7, 2, -11, -1, -2,
    -- layer=1 filter=2 channel=41
    10, 0, 0, -6, -8, 11, -13, 8, -5,
    -- layer=1 filter=2 channel=42
    -3, 2, 12, 0, -10, 0, 0, -14, 0,
    -- layer=1 filter=2 channel=43
    -10, -5, 3, -1, 12, -11, 7, -8, 7,
    -- layer=1 filter=2 channel=44
    -6, 6, -7, 14, -8, -13, 8, 0, -17,
    -- layer=1 filter=2 channel=45
    9, -8, -6, -14, -10, -2, -2, -9, 1,
    -- layer=1 filter=2 channel=46
    6, -16, 9, 5, -13, 3, 0, -3, 3,
    -- layer=1 filter=2 channel=47
    2, 4, -17, 11, 3, -14, 8, -10, -7,
    -- layer=1 filter=2 channel=48
    -10, -2, -4, -10, 7, 3, 2, 0, 6,
    -- layer=1 filter=2 channel=49
    11, 7, 4, -7, -14, 3, 8, -10, 12,
    -- layer=1 filter=2 channel=50
    -11, -6, 0, 8, 7, -5, -8, 10, 8,
    -- layer=1 filter=2 channel=51
    5, -9, -6, -14, -9, 9, -10, 0, -14,
    -- layer=1 filter=2 channel=52
    -16, 4, -15, -15, -4, 9, 8, 5, -5,
    -- layer=1 filter=2 channel=53
    5, 0, 6, -15, -7, -3, -9, -11, 2,
    -- layer=1 filter=2 channel=54
    -12, 0, 2, 3, 9, 8, 9, -2, 0,
    -- layer=1 filter=2 channel=55
    -11, -1, 0, 7, -15, -7, 3, -6, 12,
    -- layer=1 filter=2 channel=56
    4, -12, 8, 1, 6, -1, 7, -13, -7,
    -- layer=1 filter=2 channel=57
    9, 3, 6, 1, 9, -6, 5, 8, -3,
    -- layer=1 filter=2 channel=58
    9, -8, -9, -1, -9, 10, -10, 2, -7,
    -- layer=1 filter=2 channel=59
    2, -16, 8, -10, 10, 2, -8, 0, 3,
    -- layer=1 filter=2 channel=60
    -5, -10, 7, 0, -10, -15, 0, 1, 7,
    -- layer=1 filter=2 channel=61
    -16, 8, -16, 9, -3, 3, -5, 6, -11,
    -- layer=1 filter=2 channel=62
    -8, 14, 2, -12, -2, -16, 13, -8, 0,
    -- layer=1 filter=2 channel=63
    9, -8, 12, -3, -16, 7, -10, 14, -9,
    -- layer=1 filter=3 channel=0
    -12, 0, 3, -8, -2, -13, 16, 14, 11,
    -- layer=1 filter=3 channel=1
    -12, 10, 10, -19, 14, -15, 15, 12, 21,
    -- layer=1 filter=3 channel=2
    -3, -4, 19, 6, 22, 6, 16, 11, 17,
    -- layer=1 filter=3 channel=3
    37, 25, 19, -22, 43, 38, -91, -57, -72,
    -- layer=1 filter=3 channel=4
    -4, -18, -8, -6, 1, -17, -12, 10, -4,
    -- layer=1 filter=3 channel=5
    -2, -1, 49, 39, 40, 11, -4, -9, 7,
    -- layer=1 filter=3 channel=6
    -18, -12, -25, 4, -11, 2, 14, 16, 18,
    -- layer=1 filter=3 channel=7
    7, 4, 0, -5, 8, 8, -16, 4, -3,
    -- layer=1 filter=3 channel=8
    0, -18, -20, -7, -30, -22, -25, -14, -24,
    -- layer=1 filter=3 channel=9
    22, 0, 6, -9, -6, 0, -44, -21, -44,
    -- layer=1 filter=3 channel=10
    2, 10, 13, -52, -35, -22, -53, -44, -3,
    -- layer=1 filter=3 channel=11
    -7, 0, -16, -5, -7, -12, 3, -12, 5,
    -- layer=1 filter=3 channel=12
    -16, -37, -28, -44, -87, -25, -79, -116, -33,
    -- layer=1 filter=3 channel=13
    10, 0, 10, -24, -6, -24, -10, 10, -11,
    -- layer=1 filter=3 channel=14
    14, 11, 0, -5, 0, -3, -3, 21, 18,
    -- layer=1 filter=3 channel=15
    16, 9, 8, 0, -7, -5, 1, -9, -1,
    -- layer=1 filter=3 channel=16
    6, -18, 28, -18, 3, 2, -43, -56, -38,
    -- layer=1 filter=3 channel=17
    -18, -5, 21, -47, -9, -18, -17, -30, -14,
    -- layer=1 filter=3 channel=18
    5, 5, -2, 9, -3, 2, -10, 10, -3,
    -- layer=1 filter=3 channel=19
    -14, -16, -10, -3, 1, 0, -1, -5, 3,
    -- layer=1 filter=3 channel=20
    2, -4, -11, 9, 8, 0, 27, 26, 44,
    -- layer=1 filter=3 channel=21
    14, 13, 31, 20, 6, 16, 4, -23, 16,
    -- layer=1 filter=3 channel=22
    20, 46, 48, 12, -13, -14, -20, -11, -31,
    -- layer=1 filter=3 channel=23
    -28, -45, -33, -50, -46, -58, -35, -24, -28,
    -- layer=1 filter=3 channel=24
    0, -7, 11, -42, -29, -21, -70, -42, -23,
    -- layer=1 filter=3 channel=25
    6, -8, 3, -58, -33, -66, -17, -47, -46,
    -- layer=1 filter=3 channel=26
    -4, 25, 23, -18, -14, -14, -10, -21, 10,
    -- layer=1 filter=3 channel=27
    -13, -23, -20, -35, -47, -33, -35, -52, -40,
    -- layer=1 filter=3 channel=28
    -2, -22, -12, -14, -26, -30, -8, -40, -39,
    -- layer=1 filter=3 channel=29
    -16, -29, -11, -42, -73, -66, -68, -49, -75,
    -- layer=1 filter=3 channel=30
    -9, 16, 3, 5, 0, 8, -15, 2, 9,
    -- layer=1 filter=3 channel=31
    10, 5, 13, -7, -1, 7, -8, -3, -6,
    -- layer=1 filter=3 channel=32
    10, -36, -9, -50, -91, -31, -124, -118, -88,
    -- layer=1 filter=3 channel=33
    9, 0, 0, -14, 9, -8, 7, 8, -8,
    -- layer=1 filter=3 channel=34
    -1, 3, -17, 6, -3, -5, -3, 3, -9,
    -- layer=1 filter=3 channel=35
    -7, 0, -18, 6, -7, 7, -6, -1, 10,
    -- layer=1 filter=3 channel=36
    9, -11, 4, -21, 0, 4, -43, -43, -17,
    -- layer=1 filter=3 channel=37
    2, 6, 2, -16, -28, -24, -30, -29, -13,
    -- layer=1 filter=3 channel=38
    14, 18, 7, 13, 10, 4, -31, -4, 4,
    -- layer=1 filter=3 channel=39
    -15, -17, -4, 0, -11, -1, 3, 3, 1,
    -- layer=1 filter=3 channel=40
    -5, -9, 2, 8, 13, 14, 15, 18, 28,
    -- layer=1 filter=3 channel=41
    11, 8, 7, 20, 51, 21, -15, -20, 21,
    -- layer=1 filter=3 channel=42
    -7, 14, 6, 3, 1, 2, 29, 35, 16,
    -- layer=1 filter=3 channel=43
    6, -23, -5, -20, -44, -36, 0, -28, -54,
    -- layer=1 filter=3 channel=44
    -2, -14, -19, -1, 1, 22, 12, 6, 23,
    -- layer=1 filter=3 channel=45
    -1, -63, -45, -57, -103, -90, -66, -113, -103,
    -- layer=1 filter=3 channel=46
    -48, -45, -49, -38, -36, -35, 1, 2, -15,
    -- layer=1 filter=3 channel=47
    -3, -4, 8, 14, -6, -13, -1, -9, -3,
    -- layer=1 filter=3 channel=48
    -2, 8, 18, 16, 10, 2, -3, 9, -3,
    -- layer=1 filter=3 channel=49
    0, -4, 16, 22, -12, 13, 1, 14, 13,
    -- layer=1 filter=3 channel=50
    18, 22, 15, -9, -24, -16, -29, -18, -29,
    -- layer=1 filter=3 channel=51
    -1, -11, -17, -1, 10, 13, 0, 24, 28,
    -- layer=1 filter=3 channel=52
    -65, -41, -22, -82, -50, -59, -33, -14, -21,
    -- layer=1 filter=3 channel=53
    17, -7, 27, -27, 2, 19, -76, -49, -56,
    -- layer=1 filter=3 channel=54
    -12, 5, 6, 14, 4, -15, 13, 17, 7,
    -- layer=1 filter=3 channel=55
    -41, -29, -12, -51, -28, -28, -34, -52, -58,
    -- layer=1 filter=3 channel=56
    -22, -11, -11, -4, 2, 12, 28, 24, 21,
    -- layer=1 filter=3 channel=57
    -2, 15, 17, -5, 5, -1, 5, 3, 1,
    -- layer=1 filter=3 channel=58
    29, 28, 50, -1, 20, 2, -26, -26, -17,
    -- layer=1 filter=3 channel=59
    -3, -20, -24, -6, -15, -10, -10, -23, -3,
    -- layer=1 filter=3 channel=60
    15, 4, 21, -9, 6, -3, -3, -35, -20,
    -- layer=1 filter=3 channel=61
    -8, 13, 13, 11, 9, 0, 22, 38, 8,
    -- layer=1 filter=3 channel=62
    -26, -53, -45, -95, -100, -54, -133, -104, -79,
    -- layer=1 filter=3 channel=63
    12, -8, 63, -27, -27, -19, -61, -50, -76,
    -- layer=1 filter=4 channel=0
    -27, 10, 12, -13, 17, 29, -2, 10, 5,
    -- layer=1 filter=4 channel=1
    -7, -34, -6, 6, 7, 2, 0, 42, 3,
    -- layer=1 filter=4 channel=2
    -3, 3, -16, -33, 2, -7, -39, -30, -41,
    -- layer=1 filter=4 channel=3
    -29, -10, -2, -38, -17, -18, -71, -30, 19,
    -- layer=1 filter=4 channel=4
    6, 12, 26, -14, -4, 12, 5, 17, 32,
    -- layer=1 filter=4 channel=5
    -23, -4, 15, -3, 9, 8, 50, 57, 51,
    -- layer=1 filter=4 channel=6
    -1, -9, 12, -15, -3, -12, 14, 11, 28,
    -- layer=1 filter=4 channel=7
    -13, -11, 3, -37, -5, -1, -20, 21, 26,
    -- layer=1 filter=4 channel=8
    -10, -2, 27, -1, -15, 12, 24, 10, 13,
    -- layer=1 filter=4 channel=9
    -17, 15, 20, -4, 7, 35, -15, 0, 22,
    -- layer=1 filter=4 channel=10
    17, -10, -21, 26, 3, 18, 1, 9, 10,
    -- layer=1 filter=4 channel=11
    -24, 0, 11, 2, 23, 44, 31, 30, 12,
    -- layer=1 filter=4 channel=12
    23, 70, 34, -2, 45, 65, -14, 37, 32,
    -- layer=1 filter=4 channel=13
    -14, -7, -6, -23, 28, 39, -6, 14, 31,
    -- layer=1 filter=4 channel=14
    -17, -6, -5, -36, -5, -1, -19, -7, -8,
    -- layer=1 filter=4 channel=15
    16, 10, 17, 13, 28, 1, 25, 7, 12,
    -- layer=1 filter=4 channel=16
    -56, -69, -31, -35, -50, -7, -26, -39, -2,
    -- layer=1 filter=4 channel=17
    4, -21, -7, 18, 38, 25, 17, 36, 13,
    -- layer=1 filter=4 channel=18
    9, -5, 9, -2, -7, -14, 8, 13, 14,
    -- layer=1 filter=4 channel=19
    -6, -18, 10, 9, -2, 24, 23, 2, 20,
    -- layer=1 filter=4 channel=20
    8, 20, -9, 11, 12, 6, -31, 17, 0,
    -- layer=1 filter=4 channel=21
    -36, -7, -7, 0, 13, 27, -13, 12, 7,
    -- layer=1 filter=4 channel=22
    -20, -27, -33, -3, 3, 26, 47, 89, 0,
    -- layer=1 filter=4 channel=23
    18, 4, -34, 22, 27, 5, 14, -6, -9,
    -- layer=1 filter=4 channel=24
    -55, -23, 32, -34, 24, 5, -82, -63, -61,
    -- layer=1 filter=4 channel=25
    -17, 7, -6, 5, -46, 21, -21, 24, 60,
    -- layer=1 filter=4 channel=26
    -17, 0, 1, -25, -9, -24, -28, -36, -3,
    -- layer=1 filter=4 channel=27
    -15, 65, 1, -15, 20, 64, -19, 34, 27,
    -- layer=1 filter=4 channel=28
    -33, -15, -9, -44, -3, 1, -14, -18, 20,
    -- layer=1 filter=4 channel=29
    -17, -47, -32, 6, -45, 14, 15, 0, 3,
    -- layer=1 filter=4 channel=30
    14, -3, -2, -13, -4, -4, 10, 12, 9,
    -- layer=1 filter=4 channel=31
    0, -18, -7, -4, 14, 8, 24, -3, 4,
    -- layer=1 filter=4 channel=32
    8, 49, 45, -18, 48, 73, -61, 12, 19,
    -- layer=1 filter=4 channel=33
    3, 11, 15, 15, 13, 6, -11, 17, -10,
    -- layer=1 filter=4 channel=34
    12, 9, 28, -16, 5, 16, 5, 2, 11,
    -- layer=1 filter=4 channel=35
    -34, -11, -17, 0, 1, -7, -4, -1, 20,
    -- layer=1 filter=4 channel=36
    -15, 0, 2, -13, -11, 11, -26, -32, 3,
    -- layer=1 filter=4 channel=37
    2, 25, 7, 0, 15, 36, 4, 26, 24,
    -- layer=1 filter=4 channel=38
    1, 10, 0, 11, -4, 20, 11, 7, 18,
    -- layer=1 filter=4 channel=39
    16, -5, 7, 10, -11, 7, 14, 15, 21,
    -- layer=1 filter=4 channel=40
    -31, -53, -66, -36, -32, -71, -28, -43, -31,
    -- layer=1 filter=4 channel=41
    -59, -1, -1, 0, -15, -8, 59, 47, 20,
    -- layer=1 filter=4 channel=42
    -7, -17, 0, -29, 2, 6, -7, -2, 5,
    -- layer=1 filter=4 channel=43
    -34, -61, -64, -23, -58, -20, -9, -47, -16,
    -- layer=1 filter=4 channel=44
    -17, 28, -5, -11, 0, 9, -13, -14, -23,
    -- layer=1 filter=4 channel=45
    -1, -46, -39, -8, -44, 4, -34, -57, 0,
    -- layer=1 filter=4 channel=46
    25, -25, -8, 19, -35, -23, 35, -7, 4,
    -- layer=1 filter=4 channel=47
    -8, -23, -3, -24, -38, -16, -8, 5, 8,
    -- layer=1 filter=4 channel=48
    -34, -23, -26, -3, -5, 30, 62, 61, 20,
    -- layer=1 filter=4 channel=49
    -15, 30, -5, -9, 6, 53, 39, 59, 27,
    -- layer=1 filter=4 channel=50
    -12, 18, 8, -3, 1, 38, 30, 14, 18,
    -- layer=1 filter=4 channel=51
    -19, 14, -1, -17, -6, -8, 4, -3, 14,
    -- layer=1 filter=4 channel=52
    -2, -12, -15, 9, 11, 23, 20, 12, 21,
    -- layer=1 filter=4 channel=53
    -20, 4, 21, -44, 11, 2, -82, -66, 6,
    -- layer=1 filter=4 channel=54
    1, 11, 23, 2, 5, -10, 16, -6, 20,
    -- layer=1 filter=4 channel=55
    18, -16, -25, 40, 10, 14, 20, 34, 18,
    -- layer=1 filter=4 channel=56
    -29, -52, -9, -15, -30, -15, -6, -30, -31,
    -- layer=1 filter=4 channel=57
    -5, 14, 19, 0, 5, 1, 2, 7, 20,
    -- layer=1 filter=4 channel=58
    -19, -14, 15, -40, -13, 20, -28, 11, 13,
    -- layer=1 filter=4 channel=59
    -9, -6, 27, 17, 18, 24, 22, 29, 17,
    -- layer=1 filter=4 channel=60
    -13, 0, 24, 14, 1, 5, 22, 24, 40,
    -- layer=1 filter=4 channel=61
    -21, -29, -30, -30, 0, 7, -7, 5, 3,
    -- layer=1 filter=4 channel=62
    -1, -1, 40, 21, 22, 31, 0, 17, 6,
    -- layer=1 filter=4 channel=63
    7, -60, -14, -28, 4, -43, 53, 28, 0,
    -- layer=1 filter=5 channel=0
    5, 27, -7, 22, 8, -5, -1, -19, 22,
    -- layer=1 filter=5 channel=1
    -2, -20, 28, -1, 14, -13, 5, 4, 13,
    -- layer=1 filter=5 channel=2
    8, 12, -18, -14, -5, 5, -18, -15, -4,
    -- layer=1 filter=5 channel=3
    5, -26, -36, -28, -20, -7, 16, 33, 44,
    -- layer=1 filter=5 channel=4
    -19, 6, -19, 7, 5, -19, -15, -22, 6,
    -- layer=1 filter=5 channel=5
    20, 27, -16, 7, -36, -54, -18, -2, 48,
    -- layer=1 filter=5 channel=6
    3, -9, -6, 8, 5, -21, 6, -29, -3,
    -- layer=1 filter=5 channel=7
    14, -7, 7, 10, 12, -11, 7, 4, 7,
    -- layer=1 filter=5 channel=8
    4, -6, -17, 20, 11, 18, 0, 12, -14,
    -- layer=1 filter=5 channel=9
    19, -13, 14, 6, 7, -5, 8, 0, 15,
    -- layer=1 filter=5 channel=10
    -25, 0, -8, -11, 14, -17, -16, -24, -27,
    -- layer=1 filter=5 channel=11
    0, 9, 1, 3, -2, -12, 7, -14, 7,
    -- layer=1 filter=5 channel=12
    27, 20, -34, -7, 7, 1, -15, -35, 30,
    -- layer=1 filter=5 channel=13
    9, 13, -21, 13, 21, 15, -2, 9, 19,
    -- layer=1 filter=5 channel=14
    1, -9, 0, -10, -5, 5, -7, 19, 1,
    -- layer=1 filter=5 channel=15
    -10, -13, -28, -29, -14, -29, -5, -3, -37,
    -- layer=1 filter=5 channel=16
    21, 7, 5, -33, -10, 3, 21, 49, 36,
    -- layer=1 filter=5 channel=17
    -6, -12, -30, -36, -34, -32, -11, 9, -8,
    -- layer=1 filter=5 channel=18
    -3, 10, -11, 1, 1, -14, 8, -14, -9,
    -- layer=1 filter=5 channel=19
    13, 10, -12, 22, -2, 7, -6, 2, -22,
    -- layer=1 filter=5 channel=20
    21, 27, -1, 2, 11, -22, 12, -24, 19,
    -- layer=1 filter=5 channel=21
    12, 6, 30, 28, 44, 19, 26, 14, 26,
    -- layer=1 filter=5 channel=22
    3, -3, -34, -30, -17, -4, -11, 24, 31,
    -- layer=1 filter=5 channel=23
    -38, -30, -38, -48, -83, -51, -36, -49, -29,
    -- layer=1 filter=5 channel=24
    -29, -8, -29, -37, -49, -54, -32, -36, -27,
    -- layer=1 filter=5 channel=25
    24, -31, 26, -10, 26, 6, 33, 19, 35,
    -- layer=1 filter=5 channel=26
    14, 6, -12, 2, 2, 5, 18, 26, -7,
    -- layer=1 filter=5 channel=27
    44, 39, -36, 16, -12, 8, -10, -2, 32,
    -- layer=1 filter=5 channel=28
    -9, 3, -35, 9, -44, -1, -3, 1, -12,
    -- layer=1 filter=5 channel=29
    31, -14, 1, 3, 4, 10, 30, 10, -13,
    -- layer=1 filter=5 channel=30
    -6, 18, -4, 3, -12, -10, 4, 6, -13,
    -- layer=1 filter=5 channel=31
    17, 11, -5, 5, -2, 5, -5, 27, 8,
    -- layer=1 filter=5 channel=32
    31, 23, -37, -10, 5, 13, -24, -7, 5,
    -- layer=1 filter=5 channel=33
    6, -15, -12, 8, 6, 1, 0, -13, -21,
    -- layer=1 filter=5 channel=34
    -7, -7, -8, 20, 0, 8, 15, 8, -21,
    -- layer=1 filter=5 channel=35
    -4, -19, -1, -3, -8, -17, 17, 0, -1,
    -- layer=1 filter=5 channel=36
    21, -2, -9, -35, -14, 33, 11, 31, 50,
    -- layer=1 filter=5 channel=37
    -14, -8, 3, -12, 21, 7, 25, 5, 2,
    -- layer=1 filter=5 channel=38
    -27, -23, -14, -21, -17, 0, -11, -5, -8,
    -- layer=1 filter=5 channel=39
    0, -7, 0, 2, 7, 10, 5, -11, -18,
    -- layer=1 filter=5 channel=40
    -9, 15, 8, -13, -42, -21, -18, -21, -30,
    -- layer=1 filter=5 channel=41
    19, 27, 4, -5, -40, -33, -40, -5, 41,
    -- layer=1 filter=5 channel=42
    -9, 4, 12, 24, 22, 4, 17, -5, -1,
    -- layer=1 filter=5 channel=43
    21, -12, 7, -29, -30, -21, -9, 11, -10,
    -- layer=1 filter=5 channel=44
    15, -5, -20, -11, -13, -45, -3, -23, -11,
    -- layer=1 filter=5 channel=45
    32, 9, 11, 22, -5, 12, 0, 9, 8,
    -- layer=1 filter=5 channel=46
    -1, 0, 17, 15, -21, 6, -7, -20, -9,
    -- layer=1 filter=5 channel=47
    15, -6, 4, 9, -20, -1, 7, 9, -18,
    -- layer=1 filter=5 channel=48
    -12, 14, -31, -38, -39, -38, -43, 6, 49,
    -- layer=1 filter=5 channel=49
    5, 39, -4, -2, 0, -9, -4, -11, 18,
    -- layer=1 filter=5 channel=50
    -9, -12, -9, 22, -8, 6, 6, 4, 19,
    -- layer=1 filter=5 channel=51
    -8, -13, 10, 13, -13, -10, 5, -19, -21,
    -- layer=1 filter=5 channel=52
    -24, -24, -26, -18, -18, -4, -39, -32, -50,
    -- layer=1 filter=5 channel=53
    0, -5, -57, -68, -49, -10, -8, 17, 13,
    -- layer=1 filter=5 channel=54
    -14, 4, -4, 13, 6, -6, -12, -11, -11,
    -- layer=1 filter=5 channel=55
    -32, -56, -60, -30, -33, -55, -40, -43, -66,
    -- layer=1 filter=5 channel=56
    10, -16, 15, 14, -8, -4, 7, 0, -13,
    -- layer=1 filter=5 channel=57
    10, -10, -17, 8, -9, -13, 10, 4, -13,
    -- layer=1 filter=5 channel=58
    -11, -20, -11, -22, -7, 11, 9, 26, 24,
    -- layer=1 filter=5 channel=59
    -20, -7, -15, -12, -15, -12, -12, -24, -12,
    -- layer=1 filter=5 channel=60
    1, 0, -4, -2, 0, 14, 17, 5, 24,
    -- layer=1 filter=5 channel=61
    3, 14, 28, 10, 13, 6, -2, 17, 19,
    -- layer=1 filter=5 channel=62
    6, 50, -14, -46, -38, 11, -18, -28, -8,
    -- layer=1 filter=5 channel=63
    15, -7, -47, -1, -27, 24, 14, 43, 33,
    -- layer=1 filter=6 channel=0
    9, -43, 48, -3, -79, 68, -2, -52, 43,
    -- layer=1 filter=6 channel=1
    0, 19, -10, 16, 16, -2, 25, -7, -12,
    -- layer=1 filter=6 channel=2
    17, -54, 29, 6, -44, 53, -2, -48, 37,
    -- layer=1 filter=6 channel=3
    -4, -9, -17, -31, 9, -2, 25, -4, -4,
    -- layer=1 filter=6 channel=4
    -3, -11, 7, 5, -34, 36, 13, -41, 22,
    -- layer=1 filter=6 channel=5
    5, -10, -3, 6, -35, 9, -18, -29, 6,
    -- layer=1 filter=6 channel=6
    9, -8, 11, 16, -12, -6, -2, -23, 19,
    -- layer=1 filter=6 channel=7
    13, -20, 7, 3, 12, 7, 19, 6, -9,
    -- layer=1 filter=6 channel=8
    -4, 18, -16, 15, 12, -39, 12, 28, -48,
    -- layer=1 filter=6 channel=9
    -11, 0, 18, 15, -27, 38, -9, -15, 16,
    -- layer=1 filter=6 channel=10
    -12, 33, 4, -2, 19, -20, 40, 46, 0,
    -- layer=1 filter=6 channel=11
    1, -15, 25, 20, -25, 17, 13, -32, -5,
    -- layer=1 filter=6 channel=12
    -47, -61, 31, -9, -54, 68, 8, -100, 81,
    -- layer=1 filter=6 channel=13
    7, -18, 41, 10, -42, 48, -16, -36, 45,
    -- layer=1 filter=6 channel=14
    5, -10, 9, -1, -8, 16, 10, -15, 24,
    -- layer=1 filter=6 channel=15
    16, 0, -18, 17, 5, -14, 9, 25, -35,
    -- layer=1 filter=6 channel=16
    30, 28, -50, 4, 16, -33, -12, 12, -78,
    -- layer=1 filter=6 channel=17
    0, -11, 23, -5, -1, 27, 11, -7, 28,
    -- layer=1 filter=6 channel=18
    3, -1, 14, -1, 2, 14, 2, 3, 3,
    -- layer=1 filter=6 channel=19
    14, 12, -31, 3, 17, -15, -1, 2, -16,
    -- layer=1 filter=6 channel=20
    -23, -14, 17, 14, -41, 45, 23, -50, 28,
    -- layer=1 filter=6 channel=21
    0, -7, 17, 5, -23, 26, 6, -13, 29,
    -- layer=1 filter=6 channel=22
    37, -18, -2, -27, -43, -27, -30, -74, -27,
    -- layer=1 filter=6 channel=23
    -13, -17, -28, 13, -25, -27, 31, -29, -29,
    -- layer=1 filter=6 channel=24
    -28, -16, -8, -1, 35, -47, -11, -48, -27,
    -- layer=1 filter=6 channel=25
    -7, 36, -110, -32, 57, -95, -22, 44, -49,
    -- layer=1 filter=6 channel=26
    -4, -20, -8, -9, -8, -30, -12, 1, -8,
    -- layer=1 filter=6 channel=27
    -9, -65, 67, -14, -70, 90, -17, -79, 89,
    -- layer=1 filter=6 channel=28
    -18, -3, -3, -20, -4, 12, -8, 39, 9,
    -- layer=1 filter=6 channel=29
    17, 37, -59, -25, 75, -151, -6, 53, -93,
    -- layer=1 filter=6 channel=30
    7, -7, 8, -4, 4, -15, -6, -8, 5,
    -- layer=1 filter=6 channel=31
    11, 15, -27, -3, 32, -53, -20, 10, -49,
    -- layer=1 filter=6 channel=32
    -33, -64, 9, 45, -114, 60, 0, -96, 58,
    -- layer=1 filter=6 channel=33
    -12, 19, -7, -9, 10, -12, -9, -8, 1,
    -- layer=1 filter=6 channel=34
    8, 1, 7, 3, -20, -17, 12, -11, -20,
    -- layer=1 filter=6 channel=35
    0, 7, -21, -9, 40, -28, 4, 22, -39,
    -- layer=1 filter=6 channel=36
    21, 2, -4, -5, 10, 17, -5, 14, -21,
    -- layer=1 filter=6 channel=37
    22, 0, 10, 22, -17, -1, 14, -25, 18,
    -- layer=1 filter=6 channel=38
    13, 10, -18, 8, 8, -24, 26, 5, 1,
    -- layer=1 filter=6 channel=39
    -17, 7, -8, -2, -12, -5, 6, -9, 12,
    -- layer=1 filter=6 channel=40
    21, 18, -11, 22, 6, -35, 16, 30, -38,
    -- layer=1 filter=6 channel=41
    37, -7, 25, 19, 7, 5, 12, -12, -1,
    -- layer=1 filter=6 channel=42
    14, -15, 6, 7, -30, 7, 21, -26, 25,
    -- layer=1 filter=6 channel=43
    -7, 63, -129, -12, 61, -173, -26, 58, -113,
    -- layer=1 filter=6 channel=44
    -6, -11, 11, 10, -31, 33, 10, -33, 55,
    -- layer=1 filter=6 channel=45
    -20, 52, -115, -49, 66, -167, -39, 85, -71,
    -- layer=1 filter=6 channel=46
    16, 17, -31, 29, 15, -36, 8, 22, -24,
    -- layer=1 filter=6 channel=47
    -5, 18, -43, -12, 41, -53, 14, 28, -64,
    -- layer=1 filter=6 channel=48
    18, -5, 19, -2, -8, -24, -31, -75, -25,
    -- layer=1 filter=6 channel=49
    -21, -47, 34, 3, -44, 37, 2, -60, 37,
    -- layer=1 filter=6 channel=50
    12, 12, -25, 8, 8, -42, 17, 2, -23,
    -- layer=1 filter=6 channel=51
    9, -7, -3, 30, 0, 9, 26, -16, -5,
    -- layer=1 filter=6 channel=52
    -4, 0, 36, -17, 3, 13, 1, -14, -16,
    -- layer=1 filter=6 channel=53
    -1, -38, 18, -16, -26, 42, -4, -40, 44,
    -- layer=1 filter=6 channel=54
    9, -3, 13, 6, 4, 1, 22, -3, -14,
    -- layer=1 filter=6 channel=55
    15, 24, 31, 18, -4, 19, 48, -17, 13,
    -- layer=1 filter=6 channel=56
    11, 34, -56, 10, 38, -100, 2, 49, -66,
    -- layer=1 filter=6 channel=57
    5, -28, 13, 22, -12, 16, 10, -17, 17,
    -- layer=1 filter=6 channel=58
    5, 0, -11, -3, 27, -13, 8, 28, -21,
    -- layer=1 filter=6 channel=59
    -8, 1, -22, 10, 19, -4, 22, -5, -11,
    -- layer=1 filter=6 channel=60
    21, 4, -17, -18, 8, -35, 14, -2, -25,
    -- layer=1 filter=6 channel=61
    15, -15, 4, 18, -9, -1, 24, -5, -13,
    -- layer=1 filter=6 channel=62
    42, 150, 52, 124, 137, 110, 83, 146, 80,
    -- layer=1 filter=6 channel=63
    17, 5, 9, 1, -23, 3, -52, -21, -48,
    -- layer=1 filter=7 channel=0
    8, 23, 21, -20, -31, -30, 15, -2, -2,
    -- layer=1 filter=7 channel=1
    -11, -31, 5, -11, -7, -24, 15, 15, 16,
    -- layer=1 filter=7 channel=2
    0, -1, -3, 9, 24, 29, -26, -40, -17,
    -- layer=1 filter=7 channel=3
    19, 8, 27, 15, 34, 36, -16, 14, -46,
    -- layer=1 filter=7 channel=4
    13, 2, 12, -39, -20, -18, 6, 1, 13,
    -- layer=1 filter=7 channel=5
    -33, -8, -9, 39, 0, -5, 66, 72, 30,
    -- layer=1 filter=7 channel=6
    -28, -19, -9, 4, -38, -37, 14, 40, 23,
    -- layer=1 filter=7 channel=7
    35, 43, 31, -17, -23, -31, 10, 10, -10,
    -- layer=1 filter=7 channel=8
    -25, -18, -17, -7, -30, -28, 21, 16, 8,
    -- layer=1 filter=7 channel=9
    12, 15, 22, -19, -18, 8, -7, -19, -20,
    -- layer=1 filter=7 channel=10
    17, 4, 8, 5, -20, 4, 5, 4, -2,
    -- layer=1 filter=7 channel=11
    -34, -4, -7, 3, -10, -15, 38, 44, 30,
    -- layer=1 filter=7 channel=12
    12, -5, -6, 6, -20, 6, -10, -34, -40,
    -- layer=1 filter=7 channel=13
    -20, -9, 12, -35, -34, -41, -9, -15, -5,
    -- layer=1 filter=7 channel=14
    38, 32, 41, -23, -25, -9, -28, -22, -26,
    -- layer=1 filter=7 channel=15
    -5, 19, 0, 15, -10, -2, -6, -7, 10,
    -- layer=1 filter=7 channel=16
    -20, -9, -2, 46, 62, 70, -45, -46, -4,
    -- layer=1 filter=7 channel=17
    -11, -13, 4, -53, -51, -27, -45, -24, -36,
    -- layer=1 filter=7 channel=18
    -20, 9, 11, 13, 15, -11, 4, 6, 3,
    -- layer=1 filter=7 channel=19
    -11, -10, 3, -5, -19, -22, 35, 24, 20,
    -- layer=1 filter=7 channel=20
    18, 20, 31, -17, -9, -13, 8, -19, -16,
    -- layer=1 filter=7 channel=21
    -17, 12, 3, 0, -26, -17, 11, -4, 25,
    -- layer=1 filter=7 channel=22
    -60, -97, -34, 72, 58, 64, 53, 49, 50,
    -- layer=1 filter=7 channel=23
    47, 69, 75, -61, -61, -23, -21, 14, -1,
    -- layer=1 filter=7 channel=24
    -20, -50, -62, -11, 32, -2, -96, -41, -61,
    -- layer=1 filter=7 channel=25
    20, -6, 29, 14, -9, -47, -23, -31, -20,
    -- layer=1 filter=7 channel=26
    2, -22, 3, -20, -36, -21, -19, -21, -28,
    -- layer=1 filter=7 channel=27
    3, 6, -9, -6, -35, -24, 7, -14, -4,
    -- layer=1 filter=7 channel=28
    0, 49, 19, -52, -74, -60, 6, -7, -14,
    -- layer=1 filter=7 channel=29
    -5, 5, 8, 3, -3, -48, 30, 45, 1,
    -- layer=1 filter=7 channel=30
    2, 6, 1, -5, 18, 10, -23, 0, -17,
    -- layer=1 filter=7 channel=31
    -8, -13, -17, 33, 9, 18, 11, 4, 11,
    -- layer=1 filter=7 channel=32
    29, 24, 2, -42, -43, -11, -38, -89, -64,
    -- layer=1 filter=7 channel=33
    11, 4, 6, 17, 10, -14, -9, -8, 2,
    -- layer=1 filter=7 channel=34
    3, 29, 5, -24, -22, 0, 15, 8, -1,
    -- layer=1 filter=7 channel=35
    -17, -25, 7, -5, -8, -11, 21, 9, 0,
    -- layer=1 filter=7 channel=36
    -15, -14, -19, 1, 16, 17, -66, -63, -66,
    -- layer=1 filter=7 channel=37
    8, 11, 14, -47, -50, -29, 0, -7, 5,
    -- layer=1 filter=7 channel=38
    24, 13, 33, -16, -10, 10, 3, -9, -12,
    -- layer=1 filter=7 channel=39
    -1, 0, 0, -6, -13, -1, -1, 14, -5,
    -- layer=1 filter=7 channel=40
    -2, -3, 17, -11, -9, -30, 25, 23, 35,
    -- layer=1 filter=7 channel=41
    -78, -41, -22, 4, -17, 0, 56, 50, 24,
    -- layer=1 filter=7 channel=42
    15, 9, 19, -16, -21, -44, 11, 25, 25,
    -- layer=1 filter=7 channel=43
    -23, -42, -25, 24, 7, -18, 30, 37, 23,
    -- layer=1 filter=7 channel=44
    7, 2, -4, -9, 18, 2, -19, -7, -7,
    -- layer=1 filter=7 channel=45
    5, 11, 4, 8, 6, -62, -33, -32, -51,
    -- layer=1 filter=7 channel=46
    -3, 16, 16, -28, -25, -25, -17, -13, -26,
    -- layer=1 filter=7 channel=47
    12, 32, 28, -6, -13, -19, -8, -9, -24,
    -- layer=1 filter=7 channel=48
    -60, -95, -43, 46, 47, 35, 42, 67, 40,
    -- layer=1 filter=7 channel=49
    -32, -48, -37, 25, 0, 0, 31, 34, 21,
    -- layer=1 filter=7 channel=50
    -4, 7, 3, -6, -30, -24, 27, -5, -1,
    -- layer=1 filter=7 channel=51
    -8, -1, 12, -10, -21, -35, 41, 30, 23,
    -- layer=1 filter=7 channel=52
    1, -28, -5, 0, -2, -6, -43, -11, -10,
    -- layer=1 filter=7 channel=53
    12, 7, -20, 17, 41, 45, -39, -63, -100,
    -- layer=1 filter=7 channel=54
    -4, 11, 11, -17, -31, -29, 21, 32, 10,
    -- layer=1 filter=7 channel=55
    48, 55, 45, -60, -16, 7, -65, -30, -38,
    -- layer=1 filter=7 channel=56
    3, 20, 34, 7, -22, -36, 11, 7, 2,
    -- layer=1 filter=7 channel=57
    4, -10, -15, 2, 4, 1, 4, -3, 1,
    -- layer=1 filter=7 channel=58
    1, 4, 21, -14, 11, -6, -62, -58, -69,
    -- layer=1 filter=7 channel=59
    1, -2, 7, -15, 14, 8, -10, 3, -2,
    -- layer=1 filter=7 channel=60
    3, -16, -2, -15, 6, 12, -5, -6, -11,
    -- layer=1 filter=7 channel=61
    9, 1, 23, -33, -42, -34, 19, 5, 0,
    -- layer=1 filter=7 channel=62
    60, -7, 10, -16, -42, -13, -11, -65, -16,
    -- layer=1 filter=7 channel=63
    31, -18, -12, 80, 72, 74, -6, -39, 44,
    -- layer=1 filter=8 channel=0
    9, -7, 5, 2, 12, -7, -12, -6, 0,
    -- layer=1 filter=8 channel=1
    1, -4, -16, -15, -14, 0, -15, -15, 7,
    -- layer=1 filter=8 channel=2
    -5, -15, 11, -16, -6, -3, -17, -12, 0,
    -- layer=1 filter=8 channel=3
    -12, 0, 0, -4, 10, -9, -2, -6, 5,
    -- layer=1 filter=8 channel=4
    2, -14, -12, -1, -5, 8, 0, -10, 2,
    -- layer=1 filter=8 channel=5
    -7, 5, 4, 9, 6, -7, -5, 2, 1,
    -- layer=1 filter=8 channel=6
    -2, 1, -13, 3, 2, -10, 2, 0, -9,
    -- layer=1 filter=8 channel=7
    -13, -14, 5, -12, -4, 7, 13, -15, -11,
    -- layer=1 filter=8 channel=8
    12, 5, 5, -15, 5, -1, -9, -6, 4,
    -- layer=1 filter=8 channel=9
    -14, -5, 5, -16, 7, -6, 0, -4, -8,
    -- layer=1 filter=8 channel=10
    -2, -12, -7, -3, 11, -10, -11, 11, -12,
    -- layer=1 filter=8 channel=11
    -10, 4, 5, -8, 10, -12, 13, -11, -15,
    -- layer=1 filter=8 channel=12
    -13, -8, -1, 8, -9, 0, 2, 2, 5,
    -- layer=1 filter=8 channel=13
    5, -5, -6, -11, 8, 11, 11, 6, 2,
    -- layer=1 filter=8 channel=14
    -7, -10, -4, -15, -3, -10, -14, 4, 5,
    -- layer=1 filter=8 channel=15
    6, -9, -11, 10, -16, -4, 10, -4, 2,
    -- layer=1 filter=8 channel=16
    -3, -8, 11, -15, 4, 12, 9, 0, 4,
    -- layer=1 filter=8 channel=17
    2, -9, -13, -7, -2, -7, -3, 7, -13,
    -- layer=1 filter=8 channel=18
    -4, 4, -6, -2, -4, -12, 10, -9, 0,
    -- layer=1 filter=8 channel=19
    12, 4, 0, 4, -5, -1, -14, 0, -8,
    -- layer=1 filter=8 channel=20
    7, -9, -12, -8, 8, 0, -6, 10, -16,
    -- layer=1 filter=8 channel=21
    3, -2, 7, -13, 10, -7, 6, -15, -1,
    -- layer=1 filter=8 channel=22
    8, 2, -18, 2, -6, 4, -7, -11, -7,
    -- layer=1 filter=8 channel=23
    3, 10, -9, 7, -8, -1, 11, -1, 13,
    -- layer=1 filter=8 channel=24
    -12, -13, -3, -3, -13, 10, 8, 0, 12,
    -- layer=1 filter=8 channel=25
    5, 0, -3, 0, 11, 5, -12, -7, 1,
    -- layer=1 filter=8 channel=26
    -10, -14, 14, -13, -9, -13, -3, 0, -5,
    -- layer=1 filter=8 channel=27
    -1, -15, -14, -14, 4, 6, -4, -12, 8,
    -- layer=1 filter=8 channel=28
    12, -12, -11, -11, -15, 0, -11, 9, 0,
    -- layer=1 filter=8 channel=29
    0, -4, 8, 13, 9, 10, -8, 7, -1,
    -- layer=1 filter=8 channel=30
    9, -1, -5, 9, 13, -5, 5, 7, -11,
    -- layer=1 filter=8 channel=31
    -13, -1, -7, 0, 5, 6, 10, 4, 10,
    -- layer=1 filter=8 channel=32
    -7, -8, 9, -14, -11, 6, -5, -9, 4,
    -- layer=1 filter=8 channel=33
    7, -12, -11, -11, 14, -14, -1, 9, 10,
    -- layer=1 filter=8 channel=34
    10, 12, -11, 0, -4, 7, -16, -15, -5,
    -- layer=1 filter=8 channel=35
    6, 10, -4, -15, -10, 0, -2, -4, 6,
    -- layer=1 filter=8 channel=36
    -2, -16, 2, -1, 0, 10, 4, 11, -8,
    -- layer=1 filter=8 channel=37
    -11, -3, -8, -6, -14, -1, 6, -6, -11,
    -- layer=1 filter=8 channel=38
    -11, -4, -13, 12, -8, -10, -13, -3, 2,
    -- layer=1 filter=8 channel=39
    -14, 0, -6, 7, 4, -2, 1, -14, -13,
    -- layer=1 filter=8 channel=40
    -18, 4, 6, -11, -14, -11, 9, -4, 3,
    -- layer=1 filter=8 channel=41
    -16, -2, -13, 3, -8, -14, -12, -9, -16,
    -- layer=1 filter=8 channel=42
    1, -11, -5, -10, -9, 10, -15, -2, -15,
    -- layer=1 filter=8 channel=43
    8, -8, 4, 11, 5, 10, 3, -16, -5,
    -- layer=1 filter=8 channel=44
    11, 2, -6, -13, -11, 7, 7, 9, -14,
    -- layer=1 filter=8 channel=45
    0, 3, 11, -14, -9, -1, 6, -4, 2,
    -- layer=1 filter=8 channel=46
    3, 7, 8, 9, -2, 1, -16, -5, -9,
    -- layer=1 filter=8 channel=47
    -13, -6, -13, -15, -2, 7, -14, -2, 1,
    -- layer=1 filter=8 channel=48
    -1, -7, -2, -8, -14, 0, -13, 12, -3,
    -- layer=1 filter=8 channel=49
    -5, 11, 1, -1, -13, -2, -13, -3, -9,
    -- layer=1 filter=8 channel=50
    -10, -10, 8, 5, -9, 10, -8, 13, -16,
    -- layer=1 filter=8 channel=51
    -4, 7, 3, -3, -16, 4, 1, 8, -15,
    -- layer=1 filter=8 channel=52
    2, 9, 8, 1, 1, 14, 13, 10, 14,
    -- layer=1 filter=8 channel=53
    -1, -5, 1, 10, -2, -3, -11, -9, -3,
    -- layer=1 filter=8 channel=54
    11, -8, -7, -13, -2, 0, -9, 11, 11,
    -- layer=1 filter=8 channel=55
    7, -6, -2, -4, 13, -6, -12, -5, 9,
    -- layer=1 filter=8 channel=56
    0, 9, 5, 2, -6, 5, -2, -1, 10,
    -- layer=1 filter=8 channel=57
    -5, -11, 8, 12, -6, -5, 0, -8, 7,
    -- layer=1 filter=8 channel=58
    -4, -4, -12, 1, -9, -6, 6, -12, 3,
    -- layer=1 filter=8 channel=59
    3, -8, 2, 3, -3, 0, -6, -11, 3,
    -- layer=1 filter=8 channel=60
    10, -7, -14, 11, -6, -15, -14, -6, 0,
    -- layer=1 filter=8 channel=61
    -15, 6, 10, -4, -13, -8, 7, 1, 0,
    -- layer=1 filter=8 channel=62
    -4, 6, -16, 2, -12, 10, -6, -15, -5,
    -- layer=1 filter=8 channel=63
    0, -3, -8, -12, -4, -8, -13, -14, -1,
    -- layer=1 filter=9 channel=0
    19, 15, -16, -12, 2, -10, 10, 5, 8,
    -- layer=1 filter=9 channel=1
    -2, -2, 3, 0, -9, -9, -15, 5, -8,
    -- layer=1 filter=9 channel=2
    12, 30, -1, 12, 32, 7, 35, 35, 19,
    -- layer=1 filter=9 channel=3
    -9, -18, -26, 30, 38, 13, -4, -28, -17,
    -- layer=1 filter=9 channel=4
    7, 14, -7, -13, -11, -10, -11, -5, -22,
    -- layer=1 filter=9 channel=5
    -59, -109, -60, -115, -191, -178, -105, -124, -130,
    -- layer=1 filter=9 channel=6
    -5, -10, 4, -21, -19, 0, -6, 2, -26,
    -- layer=1 filter=9 channel=7
    8, -2, 1, 11, 19, 24, -5, 6, 11,
    -- layer=1 filter=9 channel=8
    -2, -3, 10, -26, -8, 12, -48, -30, -17,
    -- layer=1 filter=9 channel=9
    -15, 11, 9, 7, 17, 9, -25, -28, -13,
    -- layer=1 filter=9 channel=10
    -2, -13, -20, -13, -5, -16, -8, 20, -9,
    -- layer=1 filter=9 channel=11
    1, 12, 0, -38, -34, -1, -30, -16, -33,
    -- layer=1 filter=9 channel=12
    2, -42, -82, -18, -76, -113, -49, -29, -67,
    -- layer=1 filter=9 channel=13
    -5, 31, 16, 9, 9, 8, 3, 0, -7,
    -- layer=1 filter=9 channel=14
    21, 4, -4, 7, 12, 13, 16, 16, 19,
    -- layer=1 filter=9 channel=15
    10, 18, 13, 5, -2, 9, -33, -5, 2,
    -- layer=1 filter=9 channel=16
    -8, -27, 9, -57, -90, -46, -17, -46, 2,
    -- layer=1 filter=9 channel=17
    -5, 5, 0, 0, -21, 4, 26, 13, 4,
    -- layer=1 filter=9 channel=18
    2, 3, -5, 4, 3, -8, 11, 5, -12,
    -- layer=1 filter=9 channel=19
    -14, 12, 18, -31, -29, 10, -27, -14, -2,
    -- layer=1 filter=9 channel=20
    24, -1, -28, 27, 19, -17, 14, 30, 18,
    -- layer=1 filter=9 channel=21
    31, 8, 18, 24, 15, 18, 30, 17, 28,
    -- layer=1 filter=9 channel=22
    -156, -132, -96, -186, -215, -227, -105, -109, -94,
    -- layer=1 filter=9 channel=23
    -26, -45, -48, -33, -40, -41, -24, -17, -46,
    -- layer=1 filter=9 channel=24
    -64, -46, -38, -20, -40, -49, -15, -23, -31,
    -- layer=1 filter=9 channel=25
    -13, -22, 7, 0, -22, 19, 14, -50, -5,
    -- layer=1 filter=9 channel=26
    17, 15, 13, 0, 7, 9, -23, -6, 16,
    -- layer=1 filter=9 channel=27
    -13, -28, -93, -46, -72, -133, -72, -23, -84,
    -- layer=1 filter=9 channel=28
    -12, 7, 27, -13, 11, 6, -18, -10, -8,
    -- layer=1 filter=9 channel=29
    -70, -34, -2, -72, -73, -19, -53, -77, -26,
    -- layer=1 filter=9 channel=30
    -15, 8, 0, -12, 0, 3, 0, -7, -4,
    -- layer=1 filter=9 channel=31
    11, 11, 9, -28, -4, 11, -27, -9, -16,
    -- layer=1 filter=9 channel=32
    18, 4, -34, 22, -2, -24, -22, 0, -31,
    -- layer=1 filter=9 channel=33
    -2, -10, 5, -15, 6, -2, -11, 13, -8,
    -- layer=1 filter=9 channel=34
    4, 11, 16, -28, -11, -4, -22, -35, -7,
    -- layer=1 filter=9 channel=35
    -7, -4, 4, 5, -1, 8, -7, -5, 1,
    -- layer=1 filter=9 channel=36
    14, 11, 19, 15, 7, 0, 19, -4, -13,
    -- layer=1 filter=9 channel=37
    11, 18, 23, 19, 12, 23, -8, -14, 6,
    -- layer=1 filter=9 channel=38
    22, -3, -5, -6, 10, -8, -23, -18, -21,
    -- layer=1 filter=9 channel=39
    -12, 7, -9, -1, 7, -10, 6, -13, 0,
    -- layer=1 filter=9 channel=40
    -17, -12, 16, -14, 1, 8, 8, 0, 31,
    -- layer=1 filter=9 channel=41
    -31, -48, -69, -103, -142, -127, -54, -79, -95,
    -- layer=1 filter=9 channel=42
    22, 4, -10, 15, 13, 20, 17, 13, 13,
    -- layer=1 filter=9 channel=43
    -79, -64, 7, -47, -122, -35, -42, -79, -42,
    -- layer=1 filter=9 channel=44
    0, 12, -13, 36, 32, 25, 27, 25, 11,
    -- layer=1 filter=9 channel=45
    -51, -97, 17, -68, -122, -39, -66, -125, -64,
    -- layer=1 filter=9 channel=46
    -4, 11, -3, -4, 1, 1, 7, 25, 41,
    -- layer=1 filter=9 channel=47
    10, 0, 19, 13, 14, 17, -3, 3, 20,
    -- layer=1 filter=9 channel=48
    -99, -117, -100, -127, -165, -167, -91, -101, -104,
    -- layer=1 filter=9 channel=49
    11, 5, -6, -17, -43, -24, -12, -17, -28,
    -- layer=1 filter=9 channel=50
    19, 30, 23, -16, 17, 6, -17, -26, -7,
    -- layer=1 filter=9 channel=51
    16, 8, 2, -17, 12, 8, -13, 10, 5,
    -- layer=1 filter=9 channel=52
    -14, -25, -1, -22, -51, -21, 41, 27, 7,
    -- layer=1 filter=9 channel=53
    14, 12, 0, 38, 9, -8, 14, 0, -24,
    -- layer=1 filter=9 channel=54
    1, 27, 12, -12, -6, 20, -21, 3, -10,
    -- layer=1 filter=9 channel=55
    -16, -11, 5, 0, -13, -11, 35, 21, 0,
    -- layer=1 filter=9 channel=56
    -14, -28, 22, 6, -28, -4, -7, 8, 17,
    -- layer=1 filter=9 channel=57
    3, 33, 15, 20, 20, 26, 8, -8, 19,
    -- layer=1 filter=9 channel=58
    26, 42, 40, 28, 27, 28, -1, -17, -7,
    -- layer=1 filter=9 channel=59
    4, -11, 10, -7, -5, -22, -22, -38, -30,
    -- layer=1 filter=9 channel=60
    22, 39, 25, 10, 15, 9, -14, -16, -3,
    -- layer=1 filter=9 channel=61
    6, 18, 18, 4, 1, 5, -9, -6, 17,
    -- layer=1 filter=9 channel=62
    -53, -149, -68, -52, -118, -142, -70, -130, -65,
    -- layer=1 filter=9 channel=63
    -76, -139, -14, -148, -177, -156, -64, -124, -63,
    -- layer=1 filter=10 channel=0
    -17, -6, -12, 6, 0, -22, -4, -17, -6,
    -- layer=1 filter=10 channel=1
    -12, 14, 13, 0, -5, -11, 1, 14, 31,
    -- layer=1 filter=10 channel=2
    1, -10, -4, -4, -6, 12, 25, 21, 11,
    -- layer=1 filter=10 channel=3
    13, -20, -22, 10, -2, -15, -63, -30, -18,
    -- layer=1 filter=10 channel=4
    -10, -13, -10, -6, -2, -9, 9, -6, 10,
    -- layer=1 filter=10 channel=5
    12, 52, 43, 22, -11, -26, -49, -11, 14,
    -- layer=1 filter=10 channel=6
    -3, -3, 9, -7, 15, -17, 1, 16, 14,
    -- layer=1 filter=10 channel=7
    15, 5, 13, -7, 20, -1, 0, -3, -19,
    -- layer=1 filter=10 channel=8
    -20, 2, -6, 11, -1, 5, 27, 10, -6,
    -- layer=1 filter=10 channel=9
    11, -3, -8, -19, 3, -7, -31, -31, -28,
    -- layer=1 filter=10 channel=10
    -32, 7, -2, -33, -19, -19, -30, -26, -49,
    -- layer=1 filter=10 channel=11
    -20, 20, -11, 23, 2, 5, 10, 0, 3,
    -- layer=1 filter=10 channel=12
    -40, -55, -7, -53, -104, -56, -43, -57, -17,
    -- layer=1 filter=10 channel=13
    0, -6, -19, 0, -12, 0, 11, 15, 6,
    -- layer=1 filter=10 channel=14
    10, -8, -23, -9, 10, -5, 13, -7, 5,
    -- layer=1 filter=10 channel=15
    2, -6, -2, -15, 4, -4, -10, -24, -21,
    -- layer=1 filter=10 channel=16
    -7, -21, -5, -65, -58, -21, 10, -6, 32,
    -- layer=1 filter=10 channel=17
    -42, -19, -30, -55, -36, -64, -51, -40, -25,
    -- layer=1 filter=10 channel=18
    -5, 3, -11, 6, -4, -12, -8, 15, 14,
    -- layer=1 filter=10 channel=19
    -1, -12, 1, -3, 9, 14, 26, 3, 11,
    -- layer=1 filter=10 channel=20
    -15, 0, -3, -8, -21, 0, -7, 0, 7,
    -- layer=1 filter=10 channel=21
    -8, 21, 27, 17, 30, 11, 3, -9, 18,
    -- layer=1 filter=10 channel=22
    -19, 11, 11, -31, -46, -25, -10, 24, 8,
    -- layer=1 filter=10 channel=23
    -18, -38, -23, -42, -44, -50, -61, -21, -30,
    -- layer=1 filter=10 channel=24
    -11, -24, -8, -24, -31, -45, -7, -44, -52,
    -- layer=1 filter=10 channel=25
    0, -47, 20, -39, 5, -11, -19, -28, 2,
    -- layer=1 filter=10 channel=26
    -2, 2, 20, -13, -4, -20, -6, -10, -19,
    -- layer=1 filter=10 channel=27
    -13, -42, -29, -51, -82, -61, -35, -61, -35,
    -- layer=1 filter=10 channel=28
    23, -8, -61, -3, -10, -8, 11, -18, -26,
    -- layer=1 filter=10 channel=29
    2, -21, 19, -11, -20, -7, 1, -7, 8,
    -- layer=1 filter=10 channel=30
    0, -12, 18, -7, 1, 1, 2, -13, 4,
    -- layer=1 filter=10 channel=31
    18, 3, 13, -7, 13, 7, 11, 23, -4,
    -- layer=1 filter=10 channel=32
    -25, -52, -26, -43, -60, -27, -32, -67, -69,
    -- layer=1 filter=10 channel=33
    -10, -2, -7, -12, 0, 1, -12, -4, 2,
    -- layer=1 filter=10 channel=34
    -23, -5, -17, -1, 0, 8, -6, -1, -22,
    -- layer=1 filter=10 channel=35
    3, -4, 0, -23, -6, 6, 23, 11, -16,
    -- layer=1 filter=10 channel=36
    20, 1, 4, -53, -27, -15, -42, -36, -3,
    -- layer=1 filter=10 channel=37
    -13, -21, -16, 5, 15, -14, 8, 8, 3,
    -- layer=1 filter=10 channel=38
    -6, -12, 3, -22, -8, -11, -29, -21, -1,
    -- layer=1 filter=10 channel=39
    -14, -6, -5, -4, 12, 1, 5, -12, -9,
    -- layer=1 filter=10 channel=40
    24, 19, 16, 6, 10, 0, 0, 9, -3,
    -- layer=1 filter=10 channel=41
    0, 24, 25, 33, -12, -10, -33, 0, 0,
    -- layer=1 filter=10 channel=42
    -1, 8, 0, 27, 2, 16, 13, 20, 25,
    -- layer=1 filter=10 channel=43
    -4, -9, 8, -10, -23, -2, -4, -25, -22,
    -- layer=1 filter=10 channel=44
    2, 1, -12, -10, -18, -23, -14, -19, 0,
    -- layer=1 filter=10 channel=45
    -10, -56, -14, -11, -35, -27, -11, -43, -43,
    -- layer=1 filter=10 channel=46
    -5, -25, -15, 0, -19, -15, -15, -13, -22,
    -- layer=1 filter=10 channel=47
    8, 6, -18, 1, -4, 9, 9, 4, 12,
    -- layer=1 filter=10 channel=48
    -23, 18, 18, 30, -6, -2, 7, 15, 16,
    -- layer=1 filter=10 channel=49
    10, 13, 10, 26, -18, 2, 13, 36, 1,
    -- layer=1 filter=10 channel=50
    4, 6, 12, -9, 3, -8, 20, 9, 4,
    -- layer=1 filter=10 channel=51
    3, -2, 14, 13, 22, -12, 15, 3, 9,
    -- layer=1 filter=10 channel=52
    -46, -33, -58, -44, -66, -67, -29, -73, -42,
    -- layer=1 filter=10 channel=53
    6, -20, -10, -24, -34, -22, -21, -30, -18,
    -- layer=1 filter=10 channel=54
    7, 4, -8, 11, 7, -12, 11, 3, 14,
    -- layer=1 filter=10 channel=55
    -62, -78, -68, -18, -12, -71, -51, -86, -57,
    -- layer=1 filter=10 channel=56
    19, -18, 1, 26, 4, 0, 9, 10, 8,
    -- layer=1 filter=10 channel=57
    14, 16, 6, -2, 12, 3, 25, 7, 20,
    -- layer=1 filter=10 channel=58
    33, 2, 22, -36, 3, -2, 7, -23, 0,
    -- layer=1 filter=10 channel=59
    -1, -30, -21, -26, -12, -19, -7, -19, -12,
    -- layer=1 filter=10 channel=60
    0, -9, 5, 0, -4, 8, 7, -4, 16,
    -- layer=1 filter=10 channel=61
    -6, 0, 1, -1, 0, 11, 30, 9, 28,
    -- layer=1 filter=10 channel=62
    -73, -14, 20, -73, -61, -5, -87, -15, -53,
    -- layer=1 filter=10 channel=63
    -41, -29, -11, -95, -100, -11, -6, 21, 13,
    -- layer=1 filter=11 channel=0
    1, 0, 15, 19, 14, 7, -1, -2, 20,
    -- layer=1 filter=11 channel=1
    6, 8, -7, -3, 6, -8, 4, -8, -9,
    -- layer=1 filter=11 channel=2
    11, 3, 5, -11, -3, 2, 12, 0, -17,
    -- layer=1 filter=11 channel=3
    4, -19, -1, 8, -22, 3, 29, 17, 15,
    -- layer=1 filter=11 channel=4
    17, 2, 2, 0, -3, 1, -4, 18, 10,
    -- layer=1 filter=11 channel=5
    -18, 24, 5, 5, -27, 0, 10, 14, -4,
    -- layer=1 filter=11 channel=6
    -6, -6, -12, 12, 2, 10, 7, 4, 3,
    -- layer=1 filter=11 channel=7
    -7, -1, 2, -2, -4, -9, -2, 0, 4,
    -- layer=1 filter=11 channel=8
    16, 16, 0, 16, 16, -11, -5, -3, -6,
    -- layer=1 filter=11 channel=9
    3, 15, 2, -3, 16, 5, 25, 17, -17,
    -- layer=1 filter=11 channel=10
    -4, -24, -6, -20, -21, -22, -9, -23, -31,
    -- layer=1 filter=11 channel=11
    -12, -2, -1, -3, -19, -6, 2, 6, -11,
    -- layer=1 filter=11 channel=12
    19, 7, 18, 6, 28, 20, 10, 18, -2,
    -- layer=1 filter=11 channel=13
    13, 13, 0, -2, 7, 14, 4, -8, -3,
    -- layer=1 filter=11 channel=14
    6, 0, 12, 6, 8, 21, 15, 16, 16,
    -- layer=1 filter=11 channel=15
    -30, -44, -18, -23, -43, -51, -27, -25, -49,
    -- layer=1 filter=11 channel=16
    -29, -42, -33, -13, 26, 2, 20, -7, 11,
    -- layer=1 filter=11 channel=17
    -14, -6, -8, -2, -25, 5, -11, -7, -12,
    -- layer=1 filter=11 channel=18
    8, -6, 2, 0, -4, 0, -9, 12, -4,
    -- layer=1 filter=11 channel=19
    4, -4, 0, 12, -6, -9, 4, -8, 6,
    -- layer=1 filter=11 channel=20
    -7, 9, 13, -19, -7, 4, 12, 17, 15,
    -- layer=1 filter=11 channel=21
    -6, -16, -9, -5, 7, -4, -3, -5, 7,
    -- layer=1 filter=11 channel=22
    20, 0, -1, 17, -28, 25, 43, -10, 22,
    -- layer=1 filter=11 channel=23
    -6, -35, -8, -33, -55, -30, -42, -16, -34,
    -- layer=1 filter=11 channel=24
    -1, -14, -12, -9, -8, 3, 8, -12, -7,
    -- layer=1 filter=11 channel=25
    2, -6, -2, -23, 26, -13, 7, -5, 23,
    -- layer=1 filter=11 channel=26
    -3, 12, 4, -9, -3, 10, 23, 17, 4,
    -- layer=1 filter=11 channel=27
    37, 29, -2, 8, 23, 28, 22, 25, 24,
    -- layer=1 filter=11 channel=28
    17, 8, 12, -9, 7, 5, 24, 27, 4,
    -- layer=1 filter=11 channel=29
    -10, 0, -21, 1, 6, 2, -2, -8, -15,
    -- layer=1 filter=11 channel=30
    17, -3, 11, -1, 7, -3, 0, 15, 7,
    -- layer=1 filter=11 channel=31
    -19, -10, -26, -15, 2, -39, -30, -21, -16,
    -- layer=1 filter=11 channel=32
    0, -7, -22, 3, 0, 27, 15, 32, -1,
    -- layer=1 filter=11 channel=33
    -1, -6, -2, 5, -15, 8, 3, 9, 2,
    -- layer=1 filter=11 channel=34
    -7, 8, 0, 10, 4, 13, 6, 15, -7,
    -- layer=1 filter=11 channel=35
    -12, -15, -13, -2, 14, -29, -10, 6, -2,
    -- layer=1 filter=11 channel=36
    -2, -26, -23, -30, -10, -15, 16, -2, -10,
    -- layer=1 filter=11 channel=37
    -7, -15, 13, -3, -4, 19, 19, -6, -7,
    -- layer=1 filter=11 channel=38
    -4, -17, -19, -7, -32, -31, -15, -24, -15,
    -- layer=1 filter=11 channel=39
    -3, 12, 14, 1, 6, 7, -11, -13, -1,
    -- layer=1 filter=11 channel=40
    -12, -3, -6, -22, 9, -7, -19, 9, 12,
    -- layer=1 filter=11 channel=41
    9, -5, -4, 6, -25, 15, 0, 5, 4,
    -- layer=1 filter=11 channel=42
    -4, 25, 4, 21, 17, 7, 17, 24, 25,
    -- layer=1 filter=11 channel=43
    13, -3, -4, -8, 11, -4, -14, -2, -6,
    -- layer=1 filter=11 channel=44
    -12, -27, -4, -16, -25, -22, 2, -10, -10,
    -- layer=1 filter=11 channel=45
    4, -7, 5, 5, 42, -18, 8, 19, -8,
    -- layer=1 filter=11 channel=46
    -12, 5, 6, 4, 5, -16, -9, -12, 13,
    -- layer=1 filter=11 channel=47
    -15, 8, 0, -5, 15, -10, 3, -10, -2,
    -- layer=1 filter=11 channel=48
    13, 12, 0, 11, -11, 7, 28, 9, 12,
    -- layer=1 filter=11 channel=49
    -16, -5, -18, -14, -6, 7, -15, -8, 3,
    -- layer=1 filter=11 channel=50
    -9, 6, 0, -3, -3, 4, -6, -10, -10,
    -- layer=1 filter=11 channel=51
    -2, 16, -5, 3, -13, -8, -11, 0, -2,
    -- layer=1 filter=11 channel=52
    -59, -52, -47, -18, -46, -35, -52, -30, -31,
    -- layer=1 filter=11 channel=53
    -9, -4, -32, -12, -1, -1, 57, 18, 8,
    -- layer=1 filter=11 channel=54
    -3, 15, -1, 3, -10, 2, 8, 9, 7,
    -- layer=1 filter=11 channel=55
    -42, -51, -46, -23, -34, -38, -57, -35, -46,
    -- layer=1 filter=11 channel=56
    -6, 9, 10, 0, -3, -4, -10, 1, 15,
    -- layer=1 filter=11 channel=57
    -2, 12, -9, -6, -3, 8, -8, -17, 8,
    -- layer=1 filter=11 channel=58
    -18, -2, -7, -2, 3, -8, 12, 3, 20,
    -- layer=1 filter=11 channel=59
    -27, -13, -7, -18, -39, -12, -10, -8, -13,
    -- layer=1 filter=11 channel=60
    -5, 0, 11, -13, -6, -15, 1, -6, 9,
    -- layer=1 filter=11 channel=61
    -1, 11, 20, 3, 3, 3, 20, 16, 28,
    -- layer=1 filter=11 channel=62
    -18, 11, 31, -16, 10, 23, 6, 33, 12,
    -- layer=1 filter=11 channel=63
    16, -7, -7, 1, 38, 0, 19, 37, 2,
    -- layer=1 filter=12 channel=0
    6, 33, 37, -11, -12, 16, -46, -33, -1,
    -- layer=1 filter=12 channel=1
    -3, 17, 14, -10, -15, 7, -8, -11, -2,
    -- layer=1 filter=12 channel=2
    15, -7, -5, -4, 9, 5, 1, 16, 5,
    -- layer=1 filter=12 channel=3
    -18, 1, -11, 65, 46, 54, 3, 37, 35,
    -- layer=1 filter=12 channel=4
    21, 11, 3, 1, 3, -8, -23, -36, -28,
    -- layer=1 filter=12 channel=5
    -5, -5, -4, 20, 49, 25, 21, 0, 21,
    -- layer=1 filter=12 channel=6
    17, 10, 18, 4, 6, -1, -17, -30, -26,
    -- layer=1 filter=12 channel=7
    -10, -3, 20, 3, 19, 25, -30, -39, -30,
    -- layer=1 filter=12 channel=8
    22, 8, 5, -7, -9, -5, -28, -10, -22,
    -- layer=1 filter=12 channel=9
    -23, -21, 0, 30, 17, 2, -16, -19, -8,
    -- layer=1 filter=12 channel=10
    1, 8, -11, -12, 2, 23, -27, -6, -14,
    -- layer=1 filter=12 channel=11
    16, 16, 9, -16, -14, -25, -3, -30, -30,
    -- layer=1 filter=12 channel=12
    -1, 9, 17, -14, -5, -4, -16, 6, 20,
    -- layer=1 filter=12 channel=13
    1, 23, 12, -12, -6, 18, -20, -28, 6,
    -- layer=1 filter=12 channel=14
    12, 0, 0, 0, 21, 15, -28, -26, -1,
    -- layer=1 filter=12 channel=15
    -7, -16, 17, 4, 7, 16, -20, -8, -23,
    -- layer=1 filter=12 channel=16
    4, 4, 16, 50, 60, 61, 37, 69, 73,
    -- layer=1 filter=12 channel=17
    3, -23, 4, 4, 12, 39, -39, -15, 5,
    -- layer=1 filter=12 channel=18
    10, -10, 0, -4, -12, -1, 4, 6, -3,
    -- layer=1 filter=12 channel=19
    15, 17, 0, -22, 11, 5, -8, -16, -1,
    -- layer=1 filter=12 channel=20
    4, 6, 26, -2, 0, -7, -16, -10, 18,
    -- layer=1 filter=12 channel=21
    8, -4, 26, -1, 21, 13, 0, -18, -9,
    -- layer=1 filter=12 channel=22
    12, 47, 26, 37, 44, 11, 44, 54, 37,
    -- layer=1 filter=12 channel=23
    38, 48, 33, 2, 0, 1, -36, -36, -20,
    -- layer=1 filter=12 channel=24
    -67, -70, -76, 35, 15, 6, 17, 25, 29,
    -- layer=1 filter=12 channel=25
    -35, 14, 16, 15, 11, 30, -14, -12, -22,
    -- layer=1 filter=12 channel=26
    10, 8, -5, -13, 2, -25, -7, -10, -22,
    -- layer=1 filter=12 channel=27
    8, 8, 31, -19, 3, -7, -51, 0, 18,
    -- layer=1 filter=12 channel=28
    16, 13, 10, -14, 30, 13, -39, -31, -20,
    -- layer=1 filter=12 channel=29
    -9, 23, 14, -23, -18, 8, -8, -14, 0,
    -- layer=1 filter=12 channel=30
    4, 2, 23, -6, 5, 10, -12, -11, -16,
    -- layer=1 filter=12 channel=31
    -2, 1, 13, -18, -7, -1, -1, -2, 2,
    -- layer=1 filter=12 channel=32
    -1, -1, 20, 1, 10, 27, -36, -10, 14,
    -- layer=1 filter=12 channel=33
    -2, -10, 17, 5, -8, 20, 0, 7, 10,
    -- layer=1 filter=12 channel=34
    2, -3, -1, 4, 0, 4, -2, -21, -2,
    -- layer=1 filter=12 channel=35
    -13, -6, 5, 6, 7, -10, 2, -13, -23,
    -- layer=1 filter=12 channel=36
    -21, -45, -11, 37, 29, 27, -2, 3, 0,
    -- layer=1 filter=12 channel=37
    -14, 14, 14, 24, 27, 21, -18, -24, -8,
    -- layer=1 filter=12 channel=38
    -25, 5, 1, 16, 27, 19, -10, -18, -21,
    -- layer=1 filter=12 channel=39
    -1, 9, 8, 5, 9, 3, -15, -6, 5,
    -- layer=1 filter=12 channel=40
    -1, 0, 15, 1, -29, -25, -9, -13, -11,
    -- layer=1 filter=12 channel=41
    14, 5, 13, 8, 18, 0, -6, 14, 10,
    -- layer=1 filter=12 channel=42
    1, 2, 1, -6, -7, -11, -36, -20, -14,
    -- layer=1 filter=12 channel=43
    -23, 6, 9, -2, -29, -6, 22, 3, -17,
    -- layer=1 filter=12 channel=44
    0, -21, -18, -7, 1, 12, 2, 7, -5,
    -- layer=1 filter=12 channel=45
    -34, -1, -4, 0, 8, 13, 13, -1, -23,
    -- layer=1 filter=12 channel=46
    -2, 21, 27, 13, 6, -12, -30, -22, -17,
    -- layer=1 filter=12 channel=47
    0, 17, 3, 13, 20, 15, -30, -24, -23,
    -- layer=1 filter=12 channel=48
    -9, 10, 7, -20, 0, -18, 26, 21, 30,
    -- layer=1 filter=12 channel=49
    0, 37, 4, -24, -18, -20, -28, -8, 0,
    -- layer=1 filter=12 channel=50
    11, 4, 14, -1, 22, 0, -7, -18, -14,
    -- layer=1 filter=12 channel=51
    11, -1, 22, -15, 4, 3, -1, -7, -27,
    -- layer=1 filter=12 channel=52
    -5, 0, -19, 15, 17, 38, -11, 14, 9,
    -- layer=1 filter=12 channel=53
    -14, -18, -20, 41, 49, 16, 19, 28, 35,
    -- layer=1 filter=12 channel=54
    -5, 15, 13, 12, -7, 12, -11, -25, -29,
    -- layer=1 filter=12 channel=55
    -1, 3, -7, 33, 6, 32, -22, -8, 3,
    -- layer=1 filter=12 channel=56
    8, 16, 2, -15, -3, -13, -10, -2, -24,
    -- layer=1 filter=12 channel=57
    5, 9, 6, 13, 0, 16, -18, -9, -25,
    -- layer=1 filter=12 channel=58
    -7, -23, -20, 25, 18, 27, -4, 12, -3,
    -- layer=1 filter=12 channel=59
    -6, -1, 3, 5, 15, 5, -17, -3, -2,
    -- layer=1 filter=12 channel=60
    -9, -5, 17, 28, 22, 29, -2, -10, -4,
    -- layer=1 filter=12 channel=61
    0, 23, 2, -11, -6, -4, -25, -19, -17,
    -- layer=1 filter=12 channel=62
    22, 34, 31, -7, -24, 27, -7, -9, 0,
    -- layer=1 filter=12 channel=63
    32, 33, 28, 74, 69, 76, 37, 53, 58,
    -- layer=1 filter=13 channel=0
    3, -6, 7, -1, -5, -15, 7, -7, 5,
    -- layer=1 filter=13 channel=1
    -13, 12, -5, 14, -11, -8, -5, 1, -13,
    -- layer=1 filter=13 channel=2
    -8, 11, -9, 13, -5, -15, 9, -12, -8,
    -- layer=1 filter=13 channel=3
    -10, 13, 8, -13, -1, 4, -2, 12, -14,
    -- layer=1 filter=13 channel=4
    -12, 4, -11, -8, -12, -10, 0, -15, 8,
    -- layer=1 filter=13 channel=5
    -3, 4, -14, 6, -1, -13, -3, -16, -15,
    -- layer=1 filter=13 channel=6
    -13, 0, -7, -7, -2, -12, -14, -5, 4,
    -- layer=1 filter=13 channel=7
    -7, 9, -4, 8, -12, -11, -12, 1, 2,
    -- layer=1 filter=13 channel=8
    3, -16, 6, 8, -10, -1, 12, 1, 12,
    -- layer=1 filter=13 channel=9
    9, 7, 1, -15, -8, -3, 5, 5, 13,
    -- layer=1 filter=13 channel=10
    9, -14, 8, -5, 7, -11, -1, -16, -15,
    -- layer=1 filter=13 channel=11
    1, 9, 8, -15, -12, 12, 1, -10, 6,
    -- layer=1 filter=13 channel=12
    3, -5, 0, 7, -14, -10, -13, 4, -9,
    -- layer=1 filter=13 channel=13
    5, 0, -12, 4, -11, 7, 12, 13, -2,
    -- layer=1 filter=13 channel=14
    -1, -2, -3, 4, -5, 13, 8, 8, 0,
    -- layer=1 filter=13 channel=15
    7, -7, -1, 0, -8, -9, 12, -5, -5,
    -- layer=1 filter=13 channel=16
    -5, 1, 4, -10, -8, 2, 7, 0, -11,
    -- layer=1 filter=13 channel=17
    11, -12, 13, 7, 4, 0, -12, 3, 5,
    -- layer=1 filter=13 channel=18
    -10, 15, -9, 2, 9, 9, -3, -7, 7,
    -- layer=1 filter=13 channel=19
    1, -13, 11, -15, -5, 0, -16, 1, 1,
    -- layer=1 filter=13 channel=20
    3, 0, 1, -15, -11, -15, -8, -9, -3,
    -- layer=1 filter=13 channel=21
    2, -7, -11, 10, 0, 3, 0, -1, 3,
    -- layer=1 filter=13 channel=22
    -13, 5, 5, 1, 7, 8, -1, 1, 2,
    -- layer=1 filter=13 channel=23
    12, -13, -6, 6, 2, 8, -1, -1, -2,
    -- layer=1 filter=13 channel=24
    4, -3, 8, -14, 15, 3, 4, 0, 9,
    -- layer=1 filter=13 channel=25
    -13, 7, 3, -14, 7, -1, -14, -8, 0,
    -- layer=1 filter=13 channel=26
    11, -6, -4, 12, -3, -7, 9, -13, 3,
    -- layer=1 filter=13 channel=27
    8, -12, 12, -12, 7, 0, -7, -19, 0,
    -- layer=1 filter=13 channel=28
    10, -15, -8, 13, -16, 3, -10, 7, 12,
    -- layer=1 filter=13 channel=29
    3, 2, 9, 0, 6, 12, -4, -8, 7,
    -- layer=1 filter=13 channel=30
    1, -5, 6, 1, 0, 5, -11, -11, 2,
    -- layer=1 filter=13 channel=31
    2, -8, 3, -12, 12, 9, 2, -12, -1,
    -- layer=1 filter=13 channel=32
    6, -4, -5, -13, -10, -7, 0, -14, -1,
    -- layer=1 filter=13 channel=33
    9, 4, 7, 6, 7, 3, -6, 5, -8,
    -- layer=1 filter=13 channel=34
    5, -4, 12, 10, 10, -9, -10, -11, -3,
    -- layer=1 filter=13 channel=35
    -15, -3, 6, 10, -7, -1, 9, 9, 0,
    -- layer=1 filter=13 channel=36
    -8, 13, -8, 6, 0, 3, 5, 8, -14,
    -- layer=1 filter=13 channel=37
    5, -4, -4, -13, 2, 8, 9, 0, 3,
    -- layer=1 filter=13 channel=38
    -6, 11, 1, -14, -2, 8, -4, 6, -2,
    -- layer=1 filter=13 channel=39
    13, 9, 1, 2, 0, 1, -1, 10, -5,
    -- layer=1 filter=13 channel=40
    1, -13, -7, -3, 9, -14, 10, -3, -10,
    -- layer=1 filter=13 channel=41
    -14, -1, 4, 8, -2, 13, 13, -7, 1,
    -- layer=1 filter=13 channel=42
    -11, -2, -10, -9, -10, -4, -16, -1, -4,
    -- layer=1 filter=13 channel=43
    7, -16, -12, 0, 13, -3, 10, 6, 1,
    -- layer=1 filter=13 channel=44
    -15, -7, -18, 10, -3, -8, -13, 11, 0,
    -- layer=1 filter=13 channel=45
    1, -2, -3, 6, -1, -11, -15, -1, -6,
    -- layer=1 filter=13 channel=46
    4, 12, 6, -3, 9, -2, -6, -9, -4,
    -- layer=1 filter=13 channel=47
    -9, -7, -5, 1, 11, -15, -1, -9, -9,
    -- layer=1 filter=13 channel=48
    12, 8, -11, -8, 0, 9, 5, -8, 2,
    -- layer=1 filter=13 channel=49
    0, -12, -10, 2, -14, 2, -4, 10, -8,
    -- layer=1 filter=13 channel=50
    3, -2, 6, -2, 0, -1, 0, 3, 3,
    -- layer=1 filter=13 channel=51
    -8, -2, -11, -7, -3, 12, 2, 2, 10,
    -- layer=1 filter=13 channel=52
    1, -5, 9, 0, -10, 5, -13, 6, 6,
    -- layer=1 filter=13 channel=53
    -10, 4, 5, 7, -8, -13, -6, -10, -9,
    -- layer=1 filter=13 channel=54
    -11, -14, -3, 1, 9, 10, -13, -11, -14,
    -- layer=1 filter=13 channel=55
    -3, -11, -13, 6, -10, 9, -8, -6, 8,
    -- layer=1 filter=13 channel=56
    6, -11, -8, 13, 3, 5, -7, -8, -3,
    -- layer=1 filter=13 channel=57
    10, -13, -9, 4, 12, -15, 6, -15, -13,
    -- layer=1 filter=13 channel=58
    7, -13, -11, 0, 0, 11, 7, 8, 9,
    -- layer=1 filter=13 channel=59
    -12, -2, -9, -12, -16, 5, 11, -14, 2,
    -- layer=1 filter=13 channel=60
    6, -6, 7, -6, 1, 4, 4, 4, -8,
    -- layer=1 filter=13 channel=61
    -15, -4, 5, -12, -15, -14, 7, -8, 1,
    -- layer=1 filter=13 channel=62
    -7, -13, 10, -14, -12, -9, 10, 3, -8,
    -- layer=1 filter=13 channel=63
    -11, -14, 10, 5, -9, -13, 12, -10, 6,
    -- layer=1 filter=14 channel=0
    0, -18, 0, 21, 1, -3, -6, 12, 9,
    -- layer=1 filter=14 channel=1
    -35, 1, 1, -15, 13, -11, 11, -5, -14,
    -- layer=1 filter=14 channel=2
    0, -12, -7, 6, 4, 9, -7, 11, 3,
    -- layer=1 filter=14 channel=3
    35, 28, 19, 64, 54, 3, 49, 48, 63,
    -- layer=1 filter=14 channel=4
    22, 19, 16, -6, 10, 22, -13, 0, -25,
    -- layer=1 filter=14 channel=5
    -2, -6, -19, 22, 40, 39, 45, 17, -5,
    -- layer=1 filter=14 channel=6
    12, 13, 4, 5, 15, -11, -14, -15, -16,
    -- layer=1 filter=14 channel=7
    -8, 10, -9, -1, 0, 14, -14, 8, -2,
    -- layer=1 filter=14 channel=8
    19, 24, 8, 15, 2, 23, 8, -4, -6,
    -- layer=1 filter=14 channel=9
    25, 23, -1, 5, 10, -8, -8, 16, 18,
    -- layer=1 filter=14 channel=10
    14, 19, 7, 0, 9, -5, -7, -4, -16,
    -- layer=1 filter=14 channel=11
    31, 29, 0, -16, -11, 6, -29, -36, -14,
    -- layer=1 filter=14 channel=12
    15, -8, 2, 13, 20, 21, 2, 15, 6,
    -- layer=1 filter=14 channel=13
    1, -25, -11, -2, 16, -3, -12, 0, -3,
    -- layer=1 filter=14 channel=14
    4, 0, -2, 18, 20, 13, 1, 7, -2,
    -- layer=1 filter=14 channel=15
    32, 21, 8, -5, -10, -30, -24, -37, -46,
    -- layer=1 filter=14 channel=16
    12, 19, -3, 44, 24, 7, 46, 58, 48,
    -- layer=1 filter=14 channel=17
    0, -28, -11, 44, 16, 33, 28, 28, 4,
    -- layer=1 filter=14 channel=18
    0, 6, -5, 9, 0, -6, -8, -9, 6,
    -- layer=1 filter=14 channel=19
    16, 18, -5, -17, -10, -8, 1, -28, 1,
    -- layer=1 filter=14 channel=20
    -7, 14, 10, 13, 4, 19, -3, 10, 22,
    -- layer=1 filter=14 channel=21
    -6, -29, -3, -10, 9, -8, -9, 1, -18,
    -- layer=1 filter=14 channel=22
    51, 58, 30, 54, 55, 0, 39, 35, 22,
    -- layer=1 filter=14 channel=23
    -12, 29, -19, 37, 28, 16, 5, 13, 17,
    -- layer=1 filter=14 channel=24
    24, -2, -29, 31, -16, -2, 14, 12, 25,
    -- layer=1 filter=14 channel=25
    -20, -13, -21, 9, -4, -14, -2, 6, 11,
    -- layer=1 filter=14 channel=26
    15, 3, 33, -19, 0, -3, 15, 0, 0,
    -- layer=1 filter=14 channel=27
    0, -6, 14, 39, 1, 27, -21, -2, -15,
    -- layer=1 filter=14 channel=28
    44, 9, 8, 10, 30, 13, 0, -2, 5,
    -- layer=1 filter=14 channel=29
    3, -10, -16, -10, -5, 15, 25, 0, 3,
    -- layer=1 filter=14 channel=30
    5, -7, -4, 1, 8, 21, -4, 7, 4,
    -- layer=1 filter=14 channel=31
    6, 28, 11, -13, -11, -14, -36, -30, -33,
    -- layer=1 filter=14 channel=32
    28, 6, 8, 45, 10, 5, 2, 43, 12,
    -- layer=1 filter=14 channel=33
    1, -2, 4, 3, 10, -6, 7, 19, -1,
    -- layer=1 filter=14 channel=34
    8, 5, 15, 0, 7, 6, -1, 0, 6,
    -- layer=1 filter=14 channel=35
    39, 21, 27, -5, 0, 4, -5, -12, -17,
    -- layer=1 filter=14 channel=36
    9, 5, -17, 3, 29, -21, 28, -8, 17,
    -- layer=1 filter=14 channel=37
    0, 4, 11, 7, 21, 14, -8, 1, 12,
    -- layer=1 filter=14 channel=38
    30, 23, -3, 6, -16, -26, -6, -9, -36,
    -- layer=1 filter=14 channel=39
    -24, 7, -9, -14, 8, 3, 0, 8, -2,
    -- layer=1 filter=14 channel=40
    -6, 13, -3, 1, -6, 2, 10, -20, -19,
    -- layer=1 filter=14 channel=41
    8, -14, -31, 0, 5, 30, 23, 22, -8,
    -- layer=1 filter=14 channel=42
    -10, 3, 1, -10, 7, -6, -7, 0, 0,
    -- layer=1 filter=14 channel=43
    -11, 11, -6, 22, 10, 3, 26, 25, 18,
    -- layer=1 filter=14 channel=44
    33, 16, 9, 13, -20, -7, -1, -4, 2,
    -- layer=1 filter=14 channel=45
    17, 9, -4, 19, 16, 18, 11, 9, 18,
    -- layer=1 filter=14 channel=46
    -30, -10, -2, -8, 1, 10, 5, 22, -15,
    -- layer=1 filter=14 channel=47
    0, -7, 7, 0, 14, 7, -4, -24, -14,
    -- layer=1 filter=14 channel=48
    3, 23, -19, 12, 9, -7, 42, 25, -12,
    -- layer=1 filter=14 channel=49
    7, 16, 8, -21, -7, 2, -41, -31, -37,
    -- layer=1 filter=14 channel=50
    18, -1, -8, 8, -4, -11, -27, -14, 3,
    -- layer=1 filter=14 channel=51
    5, 25, 24, -21, 0, 8, -7, -35, -14,
    -- layer=1 filter=14 channel=52
    -6, 14, -3, 28, -14, 0, -12, -7, 4,
    -- layer=1 filter=14 channel=53
    35, 41, 14, 47, 43, 29, 36, 52, 60,
    -- layer=1 filter=14 channel=54
    10, 15, 22, -17, 12, 0, 1, -30, -6,
    -- layer=1 filter=14 channel=55
    8, 0, -7, 42, 5, 11, 23, 19, 16,
    -- layer=1 filter=14 channel=56
    -22, -6, -13, -13, 4, -1, 5, 11, 2,
    -- layer=1 filter=14 channel=57
    36, 23, 33, -11, -13, 0, -34, -20, -7,
    -- layer=1 filter=14 channel=58
    -16, -14, -25, 0, 0, -11, -5, 11, 30,
    -- layer=1 filter=14 channel=59
    33, 23, 17, 2, 7, -16, 3, -14, -29,
    -- layer=1 filter=14 channel=60
    27, 11, 1, 9, -14, 4, -16, -26, 7,
    -- layer=1 filter=14 channel=61
    -18, -9, 1, 15, -3, 13, -11, 3, -12,
    -- layer=1 filter=14 channel=62
    -29, -11, -21, -41, -44, -28, 3, -3, -13,
    -- layer=1 filter=14 channel=63
    52, 31, 3, 60, 64, 10, 78, 54, 40,
    -- layer=1 filter=15 channel=0
    1, 15, 36, -19, 38, 38, 16, 50, 15,
    -- layer=1 filter=15 channel=1
    24, -16, 38, -11, -14, 35, -19, 18, 76,
    -- layer=1 filter=15 channel=2
    4, 24, 29, 21, 32, 8, 21, 27, -11,
    -- layer=1 filter=15 channel=3
    66, 35, 25, 52, 10, -37, -32, -48, -30,
    -- layer=1 filter=15 channel=4
    -22, -14, -25, -63, -22, -12, -65, -4, 11,
    -- layer=1 filter=15 channel=5
    48, 1, 6, 73, 45, 41, -17, 9, 14,
    -- layer=1 filter=15 channel=6
    15, 7, 1, -38, -8, 3, -42, -15, 0,
    -- layer=1 filter=15 channel=7
    38, 0, -29, -23, -59, -26, -45, -27, -10,
    -- layer=1 filter=15 channel=8
    -13, -96, -43, -94, -112, -66, -85, -115, -40,
    -- layer=1 filter=15 channel=9
    -21, -3, 24, 28, -14, -45, -49, -78, -41,
    -- layer=1 filter=15 channel=10
    36, 0, 26, 21, 1, 7, 13, 3, -12,
    -- layer=1 filter=15 channel=11
    -17, -43, -31, -60, -15, 5, -68, -13, 14,
    -- layer=1 filter=15 channel=12
    17, 27, 34, 7, 48, 16, -6, 72, 11,
    -- layer=1 filter=15 channel=13
    -4, 1, 15, -55, -17, 30, -4, 14, 38,
    -- layer=1 filter=15 channel=14
    21, 3, 3, 0, -2, -1, -3, 11, 15,
    -- layer=1 filter=15 channel=15
    0, 5, 9, 4, 18, -26, -30, -69, -23,
    -- layer=1 filter=15 channel=16
    63, 70, 8, 45, -29, -65, -51, -74, -78,
    -- layer=1 filter=15 channel=17
    69, 17, 8, -3, -21, 7, -6, 13, 47,
    -- layer=1 filter=15 channel=18
    5, 13, -15, 6, -12, 7, 6, 8, -11,
    -- layer=1 filter=15 channel=19
    -9, -75, -19, -58, -75, -32, -71, -53, -13,
    -- layer=1 filter=15 channel=20
    -32, -15, 7, -32, 11, 17, 2, 34, 7,
    -- layer=1 filter=15 channel=21
    33, 20, 28, 27, 29, 62, 31, 51, 50,
    -- layer=1 filter=15 channel=22
    -12, -9, 31, 37, 28, 9, 3, 20, 24,
    -- layer=1 filter=15 channel=23
    51, 6, -4, -17, 8, 31, 3, 45, 44,
    -- layer=1 filter=15 channel=24
    52, 63, 12, 61, 27, -9, 55, 22, -22,
    -- layer=1 filter=15 channel=25
    60, 58, -28, -19, -87, -31, -32, -51, -10,
    -- layer=1 filter=15 channel=26
    -10, 2, -15, -24, -16, -12, -16, -18, -35,
    -- layer=1 filter=15 channel=27
    13, 31, 8, 14, 55, 36, 5, 69, 29,
    -- layer=1 filter=15 channel=28
    -5, -70, -16, -71, -46, -14, -49, -78, -57,
    -- layer=1 filter=15 channel=29
    -13, -18, -16, -69, -87, -61, -93, -139, -38,
    -- layer=1 filter=15 channel=30
    -6, 20, -5, 23, 25, 8, -2, 5, 3,
    -- layer=1 filter=15 channel=31
    33, 21, 9, 16, -9, -8, -32, -75, 6,
    -- layer=1 filter=15 channel=32
    -17, 8, 21, -25, 3, -11, -27, 45, -4,
    -- layer=1 filter=15 channel=33
    -16, -13, -2, 7, 4, 0, -1, 11, 4,
    -- layer=1 filter=15 channel=34
    -22, -34, -43, -8, -25, -29, -22, -55, -35,
    -- layer=1 filter=15 channel=35
    -2, -14, -26, -40, -50, -10, -79, -97, -51,
    -- layer=1 filter=15 channel=36
    48, 49, 42, 76, 57, 28, 52, -3, -15,
    -- layer=1 filter=15 channel=37
    -13, -24, -29, -64, -80, -62, -66, -54, -22,
    -- layer=1 filter=15 channel=38
    24, 12, 13, 17, -11, -2, -80, -72, -64,
    -- layer=1 filter=15 channel=39
    -17, 4, -14, 6, -2, -15, 28, -13, -1,
    -- layer=1 filter=15 channel=40
    24, 12, 7, 0, 31, -2, 3, 13, 13,
    -- layer=1 filter=15 channel=41
    27, -31, -22, 72, 27, 8, -29, -13, 0,
    -- layer=1 filter=15 channel=42
    12, -11, -15, -26, 11, 7, -15, 30, 21,
    -- layer=1 filter=15 channel=43
    -29, -37, -30, -69, -88, -82, -85, -169, -45,
    -- layer=1 filter=15 channel=44
    -3, 23, 12, 17, 4, -12, 2, -5, -8,
    -- layer=1 filter=15 channel=45
    -14, -15, -5, -52, -83, -100, -107, -181, -55,
    -- layer=1 filter=15 channel=46
    19, 4, -15, -22, -31, -51, -22, -51, -57,
    -- layer=1 filter=15 channel=47
    55, 9, -4, -25, -66, -58, -55, -107, -18,
    -- layer=1 filter=15 channel=48
    31, -3, 34, 60, 50, 38, -7, 19, 24,
    -- layer=1 filter=15 channel=49
    37, 15, 14, 19, 20, 33, -36, 29, 14,
    -- layer=1 filter=15 channel=50
    2, 0, -4, -32, -44, -21, -64, -85, -9,
    -- layer=1 filter=15 channel=51
    -6, -21, -18, -31, -10, 3, -61, -10, -10,
    -- layer=1 filter=15 channel=52
    58, 65, 23, 44, 8, 0, -19, -23, -18,
    -- layer=1 filter=15 channel=53
    28, 32, 8, 35, -22, -78, -33, -35, -57,
    -- layer=1 filter=15 channel=54
    -18, -48, -31, -52, -47, -15, -58, -19, -2,
    -- layer=1 filter=15 channel=55
    50, 26, 7, -25, -47, -17, -37, -12, 26,
    -- layer=1 filter=15 channel=56
    20, -9, -27, -46, -47, -31, -49, -70, 1,
    -- layer=1 filter=15 channel=57
    -31, -7, -18, -24, -23, -17, -64, -16, -2,
    -- layer=1 filter=15 channel=58
    59, 46, -20, 11, -48, -48, -72, -103, -29,
    -- layer=1 filter=15 channel=59
    -10, -23, -10, 18, -35, -23, -51, -59, -79,
    -- layer=1 filter=15 channel=60
    -8, 29, -9, 22, -2, -3, -51, -38, -4,
    -- layer=1 filter=15 channel=61
    11, -9, 10, -9, -9, 25, 1, 16, 40,
    -- layer=1 filter=15 channel=62
    -1, 5, 69, -43, 32, -18, 5, 11, -46,
    -- layer=1 filter=15 channel=63
    67, 95, 72, 3, 0, -112, 4, -47, -50,
    -- layer=1 filter=16 channel=0
    0, -33, -34, -33, -57, -22, -17, -33, 5,
    -- layer=1 filter=16 channel=1
    -15, -18, -14, 21, -20, -15, 26, -24, -3,
    -- layer=1 filter=16 channel=2
    8, 10, -5, 15, 1, -7, 0, -8, -15,
    -- layer=1 filter=16 channel=3
    -16, -25, -23, -56, -20, -58, -10, 9, 9,
    -- layer=1 filter=16 channel=4
    -7, -24, -34, -24, -28, -38, -23, -8, -29,
    -- layer=1 filter=16 channel=5
    -9, 10, -17, 48, 32, 48, 27, 13, 35,
    -- layer=1 filter=16 channel=6
    -23, -50, -13, 0, 0, -22, 7, -20, -8,
    -- layer=1 filter=16 channel=7
    -36, -11, -18, -44, -36, -30, -10, -29, -4,
    -- layer=1 filter=16 channel=8
    -48, -41, -33, -13, 4, 7, 0, 20, 17,
    -- layer=1 filter=16 channel=9
    -1, -4, -4, 17, 39, 16, 22, 41, 22,
    -- layer=1 filter=16 channel=10
    20, 16, -31, -5, -3, -23, 11, -1, -19,
    -- layer=1 filter=16 channel=11
    -48, -23, -38, -13, 21, -5, 11, -7, 11,
    -- layer=1 filter=16 channel=12
    11, 7, -3, 8, -46, -25, 35, 11, 25,
    -- layer=1 filter=16 channel=13
    29, -18, -12, 4, -61, -28, 4, -17, -13,
    -- layer=1 filter=16 channel=14
    10, 6, -4, -35, -37, -56, -13, -47, -42,
    -- layer=1 filter=16 channel=15
    11, 33, 19, 42, 54, 50, 23, 45, 35,
    -- layer=1 filter=16 channel=16
    22, -27, -9, -84, -27, -16, -25, -50, -3,
    -- layer=1 filter=16 channel=17
    31, 39, 41, 24, -6, 8, 114, 80, 67,
    -- layer=1 filter=16 channel=18
    -8, -14, -11, 1, -15, -3, 0, 8, 2,
    -- layer=1 filter=16 channel=19
    -23, -14, -16, -7, 25, 14, -11, 7, 8,
    -- layer=1 filter=16 channel=20
    0, -21, -16, -19, -90, -35, 25, -14, -18,
    -- layer=1 filter=16 channel=21
    16, 8, 28, 64, 18, 2, 60, 9, -15,
    -- layer=1 filter=16 channel=22
    -29, -14, -58, 48, 57, 81, 51, 94, 92,
    -- layer=1 filter=16 channel=23
    38, 27, 48, 61, 29, 70, 111, 102, 71,
    -- layer=1 filter=16 channel=24
    -10, 10, 17, -42, -6, 0, 52, 28, 62,
    -- layer=1 filter=16 channel=25
    2, 4, -6, 11, -40, 0, 19, -38, 8,
    -- layer=1 filter=16 channel=26
    28, 24, 1, -21, -14, -17, -43, -8, -8,
    -- layer=1 filter=16 channel=27
    -24, -13, -29, 11, -34, -14, -3, 1, 8,
    -- layer=1 filter=16 channel=28
    0, -30, -18, -42, -62, -17, 2, 11, -8,
    -- layer=1 filter=16 channel=29
    -13, -24, -4, 6, -12, 6, 0, 0, 19,
    -- layer=1 filter=16 channel=30
    9, 13, 7, 4, 10, 5, -2, 16, 18,
    -- layer=1 filter=16 channel=31
    17, 1, 0, 9, 40, 35, 5, 25, 20,
    -- layer=1 filter=16 channel=32
    -16, -13, 19, 11, -86, -28, 0, 0, 1,
    -- layer=1 filter=16 channel=33
    5, 12, 6, 10, 13, -11, 8, 2, -11,
    -- layer=1 filter=16 channel=34
    5, -6, 4, -8, -3, 1, -8, -8, 0,
    -- layer=1 filter=16 channel=35
    -27, -17, 1, 6, 33, 31, -5, 35, 20,
    -- layer=1 filter=16 channel=36
    29, 31, 36, 29, 53, 66, 44, 66, 58,
    -- layer=1 filter=16 channel=37
    -22, -16, -38, -25, -61, -54, 11, -15, -16,
    -- layer=1 filter=16 channel=38
    18, 28, 9, 24, 37, 31, 34, 56, 46,
    -- layer=1 filter=16 channel=39
    14, 19, 10, 1, 15, -2, 13, 9, 13,
    -- layer=1 filter=16 channel=40
    11, -13, -40, 8, -4, -27, 15, -11, 5,
    -- layer=1 filter=16 channel=41
    -13, 7, -43, 30, 53, 52, 34, 18, 46,
    -- layer=1 filter=16 channel=42
    -45, -70, -61, -62, -72, -64, -15, -34, -41,
    -- layer=1 filter=16 channel=43
    -11, -12, -13, 20, 2, 33, 43, 5, 51,
    -- layer=1 filter=16 channel=44
    -1, 8, 15, 6, 20, 17, 19, 22, 24,
    -- layer=1 filter=16 channel=45
    -8, 0, 9, -4, -36, -28, 0, -18, 4,
    -- layer=1 filter=16 channel=46
    54, 0, 36, 39, 13, 24, 14, 9, 29,
    -- layer=1 filter=16 channel=47
    -16, 0, -7, -54, -37, -35, -17, -20, -6,
    -- layer=1 filter=16 channel=48
    -4, 39, -25, 57, 72, 55, 50, 57, 66,
    -- layer=1 filter=16 channel=49
    -8, -13, -32, 42, 42, 37, 28, 33, 16,
    -- layer=1 filter=16 channel=50
    -30, -11, 0, -9, 3, 7, -3, 19, 11,
    -- layer=1 filter=16 channel=51
    -19, -11, -20, 4, -6, -17, -18, 4, 3,
    -- layer=1 filter=16 channel=52
    19, 12, -6, 2, -6, 7, 66, 44, 19,
    -- layer=1 filter=16 channel=53
    39, 4, 15, 16, 10, -31, 27, 36, 12,
    -- layer=1 filter=16 channel=54
    -48, -27, -10, -9, -30, -20, -3, 2, -17,
    -- layer=1 filter=16 channel=55
    37, 39, 38, 33, 14, 18, 88, 22, 42,
    -- layer=1 filter=16 channel=56
    -26, -35, -25, -20, -56, -47, 4, -68, -10,
    -- layer=1 filter=16 channel=57
    -19, -5, -11, -2, 4, 12, -13, 13, -5,
    -- layer=1 filter=16 channel=58
    20, -19, 4, -18, -1, -16, 0, -8, 5,
    -- layer=1 filter=16 channel=59
    -21, 15, 0, 10, 44, 35, 20, 40, 37,
    -- layer=1 filter=16 channel=60
    -22, 3, -1, 8, 5, 4, 24, 34, 18,
    -- layer=1 filter=16 channel=61
    -19, -38, -67, -25, -77, -54, 5, -10, -35,
    -- layer=1 filter=16 channel=62
    -14, 6, -12, -5, -25, -6, 7, 8, 4,
    -- layer=1 filter=16 channel=63
    65, -13, 4, 34, 37, 36, 0, 16, -5,
    -- layer=1 filter=17 channel=0
    -9, 5, -11, -5, -7, 5, -5, 8, -2,
    -- layer=1 filter=17 channel=1
    -2, 0, -6, 4, -18, -9, -5, -8, 10,
    -- layer=1 filter=17 channel=2
    -9, -6, -6, -6, -7, 0, 8, -4, 8,
    -- layer=1 filter=17 channel=3
    0, -1, 4, 0, 3, -14, 4, 10, -14,
    -- layer=1 filter=17 channel=4
    -1, 6, -9, -1, 10, -15, -5, -13, 7,
    -- layer=1 filter=17 channel=5
    -12, 2, -5, -1, -1, -9, 7, -14, -5,
    -- layer=1 filter=17 channel=6
    -11, -15, -6, 9, 5, -9, 13, -14, -3,
    -- layer=1 filter=17 channel=7
    -12, 0, 0, 9, -11, -9, -14, -14, -7,
    -- layer=1 filter=17 channel=8
    -11, -4, 5, 5, 0, -13, 0, -1, -4,
    -- layer=1 filter=17 channel=9
    -2, 0, -3, -9, -4, 7, 3, 11, -2,
    -- layer=1 filter=17 channel=10
    -2, -2, -10, 12, 8, -5, -5, 8, 8,
    -- layer=1 filter=17 channel=11
    4, 1, 14, 7, -5, -13, 6, 6, -13,
    -- layer=1 filter=17 channel=12
    -2, 1, 0, -6, -13, -13, -20, -3, -8,
    -- layer=1 filter=17 channel=13
    -6, 13, 5, -12, 4, -9, 2, 8, -9,
    -- layer=1 filter=17 channel=14
    -4, 5, 6, 2, -1, 9, 5, -1, 11,
    -- layer=1 filter=17 channel=15
    4, -12, -16, 9, 0, -15, -13, -5, 0,
    -- layer=1 filter=17 channel=16
    0, 10, -10, -5, -2, -6, -6, -7, 2,
    -- layer=1 filter=17 channel=17
    13, 9, -2, -14, 0, 12, -2, -3, -6,
    -- layer=1 filter=17 channel=18
    -8, 4, 12, -4, 0, -11, 12, 8, -7,
    -- layer=1 filter=17 channel=19
    10, -11, 10, -12, 1, -13, -12, 11, 0,
    -- layer=1 filter=17 channel=20
    -5, -15, -15, 6, -10, 3, -3, -14, -3,
    -- layer=1 filter=17 channel=21
    5, 2, -12, -2, -17, 1, -18, -12, -1,
    -- layer=1 filter=17 channel=22
    -14, -11, -14, -7, 1, 11, 5, 6, -5,
    -- layer=1 filter=17 channel=23
    -11, 4, 1, -4, 4, -2, -11, -10, -8,
    -- layer=1 filter=17 channel=24
    -17, -5, -10, -8, -9, 0, -15, 9, -4,
    -- layer=1 filter=17 channel=25
    0, -7, -1, -9, -2, -19, 13, -1, 6,
    -- layer=1 filter=17 channel=26
    -11, -10, -7, -12, -6, -6, 1, -8, 0,
    -- layer=1 filter=17 channel=27
    -9, -11, 8, -10, -2, -8, -3, -5, -17,
    -- layer=1 filter=17 channel=28
    7, 7, -2, 7, 8, 9, 6, -14, -2,
    -- layer=1 filter=17 channel=29
    -1, 13, -5, 8, -8, 3, -10, 1, -3,
    -- layer=1 filter=17 channel=30
    -11, -12, 8, -7, 6, 11, 5, 6, -6,
    -- layer=1 filter=17 channel=31
    5, 6, -11, -1, -14, 5, 4, 0, 4,
    -- layer=1 filter=17 channel=32
    5, -15, -12, 4, -11, 8, 3, -2, -12,
    -- layer=1 filter=17 channel=33
    12, 11, 1, -5, -6, -6, 6, 13, 7,
    -- layer=1 filter=17 channel=34
    7, 3, -8, 14, 13, -13, 7, -11, -10,
    -- layer=1 filter=17 channel=35
    -5, -9, 5, -10, -13, 11, -3, 5, -14,
    -- layer=1 filter=17 channel=36
    3, -17, -10, 4, 4, 12, -10, -3, 0,
    -- layer=1 filter=17 channel=37
    7, 0, 0, -3, 6, -14, -8, -1, 2,
    -- layer=1 filter=17 channel=38
    -17, -15, -17, -9, -13, -5, 0, 0, 12,
    -- layer=1 filter=17 channel=39
    13, 6, -4, 4, -7, 11, 4, 0, 2,
    -- layer=1 filter=17 channel=40
    2, -10, -7, 0, -14, -4, -1, -14, -13,
    -- layer=1 filter=17 channel=41
    6, 3, -12, 10, -3, 12, 2, -11, 4,
    -- layer=1 filter=17 channel=42
    -13, -1, -12, 9, 1, 8, 1, -13, 11,
    -- layer=1 filter=17 channel=43
    6, -16, 0, -14, -11, -14, -1, -7, -9,
    -- layer=1 filter=17 channel=44
    0, -17, 3, 2, 0, 0, -18, -7, 3,
    -- layer=1 filter=17 channel=45
    -13, -1, 0, -10, -10, 5, 9, -13, -3,
    -- layer=1 filter=17 channel=46
    11, -4, -3, 6, 9, -12, 12, -7, 10,
    -- layer=1 filter=17 channel=47
    -4, 9, 0, -3, 8, 7, 0, -7, -15,
    -- layer=1 filter=17 channel=48
    15, -8, 6, -1, -10, 4, -11, -6, 11,
    -- layer=1 filter=17 channel=49
    12, 14, 4, 9, -1, 6, -9, -2, -6,
    -- layer=1 filter=17 channel=50
    -15, 6, 0, 2, -12, -10, -13, -15, -4,
    -- layer=1 filter=17 channel=51
    0, -12, 1, -12, -13, 0, 0, -11, -15,
    -- layer=1 filter=17 channel=52
    -11, 0, 4, -1, -12, -15, -7, 11, -4,
    -- layer=1 filter=17 channel=53
    5, 4, -12, -1, -2, -12, 2, -9, -12,
    -- layer=1 filter=17 channel=54
    -14, -4, 3, -6, -10, -13, -11, 0, 1,
    -- layer=1 filter=17 channel=55
    -8, -1, -3, -14, -10, -12, -12, 0, -3,
    -- layer=1 filter=17 channel=56
    -5, -11, 6, 1, -6, -4, -4, 11, -2,
    -- layer=1 filter=17 channel=57
    -12, 2, -11, 11, 4, 11, 0, 3, -7,
    -- layer=1 filter=17 channel=58
    -6, -13, 12, -15, 11, -5, 9, 8, 13,
    -- layer=1 filter=17 channel=59
    -17, -4, -2, -2, 0, 14, -7, 5, 8,
    -- layer=1 filter=17 channel=60
    3, 7, -9, -11, 4, 13, -14, 0, -11,
    -- layer=1 filter=17 channel=61
    -9, -13, -16, -1, 5, -12, -10, -17, -12,
    -- layer=1 filter=17 channel=62
    4, 4, -17, -8, 0, -9, -4, -4, -19,
    -- layer=1 filter=17 channel=63
    3, 5, -2, 10, 9, 0, -8, -7, 0,
    -- layer=1 filter=18 channel=0
    12, 18, 27, 13, 22, 27, 2, 5, 2,
    -- layer=1 filter=18 channel=1
    -2, -15, 13, 5, 4, -5, 15, 2, 2,
    -- layer=1 filter=18 channel=2
    -12, 2, 8, 12, 27, 17, 4, 17, 9,
    -- layer=1 filter=18 channel=3
    19, 0, -49, -20, -20, -10, -25, -8, 5,
    -- layer=1 filter=18 channel=4
    -9, 15, 31, -18, 0, 30, -4, -11, -1,
    -- layer=1 filter=18 channel=5
    -17, 15, 19, 25, 30, 29, 34, 11, -11,
    -- layer=1 filter=18 channel=6
    -12, -13, 16, -9, 4, 16, -7, -9, -8,
    -- layer=1 filter=18 channel=7
    -14, -2, -4, -28, -5, 26, -9, -2, 17,
    -- layer=1 filter=18 channel=8
    -17, 0, 32, -45, -24, 19, -36, -13, 22,
    -- layer=1 filter=18 channel=9
    -2, 5, 11, -51, -1, 48, -6, 0, 34,
    -- layer=1 filter=18 channel=10
    15, -8, -4, 33, -7, -16, 12, -14, -12,
    -- layer=1 filter=18 channel=11
    -28, 13, 40, -13, 1, 12, -8, -2, 13,
    -- layer=1 filter=18 channel=12
    1, 38, 33, 30, 31, 23, 26, 7, 28,
    -- layer=1 filter=18 channel=13
    10, 5, 19, 6, 11, 11, 14, 0, 24,
    -- layer=1 filter=18 channel=14
    -7, 12, -7, 18, 7, 0, 12, 8, 0,
    -- layer=1 filter=18 channel=15
    -24, -9, 1, -43, -10, 29, -38, 19, 26,
    -- layer=1 filter=18 channel=16
    -14, -15, -14, 29, -68, -47, 14, -13, -27,
    -- layer=1 filter=18 channel=17
    19, 16, -15, 19, -11, -4, -2, 12, 7,
    -- layer=1 filter=18 channel=18
    1, 2, 7, 12, -1, 11, 1, 7, 12,
    -- layer=1 filter=18 channel=19
    -35, -7, 18, -29, 0, 11, -26, 3, 10,
    -- layer=1 filter=18 channel=20
    13, 29, 30, 22, 19, 7, 27, -1, 11,
    -- layer=1 filter=18 channel=21
    26, 30, -13, 19, 10, -11, 8, 11, -21,
    -- layer=1 filter=18 channel=22
    1, 28, 12, 24, 32, 0, 40, -3, -12,
    -- layer=1 filter=18 channel=23
    29, -8, -21, -6, -4, -11, -7, -16, -5,
    -- layer=1 filter=18 channel=24
    19, 49, 27, 59, 15, 15, 47, -5, -30,
    -- layer=1 filter=18 channel=25
    -31, -27, -28, -29, -64, -26, -50, -37, -12,
    -- layer=1 filter=18 channel=26
    0, -21, -12, 1, -21, -24, 13, 7, -29,
    -- layer=1 filter=18 channel=27
    -9, 60, 66, 46, 54, 51, 41, 13, 38,
    -- layer=1 filter=18 channel=28
    0, 18, 11, -20, -11, 23, -41, -9, 12,
    -- layer=1 filter=18 channel=29
    -36, -61, -15, -34, -93, -36, -35, -50, -7,
    -- layer=1 filter=18 channel=30
    0, 13, 7, 3, 7, 0, -9, -6, -17,
    -- layer=1 filter=18 channel=31
    -54, -36, 0, -36, -17, -3, -52, -5, 6,
    -- layer=1 filter=18 channel=32
    -18, 15, 30, 19, 15, 21, -1, 7, 27,
    -- layer=1 filter=18 channel=33
    1, -8, -13, -7, 3, 4, -13, 11, -14,
    -- layer=1 filter=18 channel=34
    -17, -10, 23, -30, -18, 10, -3, -13, 8,
    -- layer=1 filter=18 channel=35
    -32, 0, -13, -58, -23, 9, -36, 3, 0,
    -- layer=1 filter=18 channel=36
    -1, 10, -6, -22, -42, -28, -17, 4, -21,
    -- layer=1 filter=18 channel=37
    -8, 2, 10, 5, 3, 27, -4, -1, 27,
    -- layer=1 filter=18 channel=38
    -16, 0, -17, -35, -13, 31, -43, 11, 26,
    -- layer=1 filter=18 channel=39
    6, -12, 0, 3, -14, 15, 7, -5, -2,
    -- layer=1 filter=18 channel=40
    -9, -10, -11, 6, -19, -21, -4, -27, -34,
    -- layer=1 filter=18 channel=41
    -27, 1, 8, 27, 20, 3, 21, 7, -5,
    -- layer=1 filter=18 channel=42
    10, -9, 18, -5, 8, 3, 2, -7, 20,
    -- layer=1 filter=18 channel=43
    -46, -43, -38, -56, -79, -21, -71, -54, -8,
    -- layer=1 filter=18 channel=44
    0, 1, 30, -14, -6, 30, -10, 13, 15,
    -- layer=1 filter=18 channel=45
    -45, -45, -16, -73, -121, -26, -58, -75, -14,
    -- layer=1 filter=18 channel=46
    -9, -11, -41, -14, -42, -58, -8, -10, -56,
    -- layer=1 filter=18 channel=47
    -39, -34, -18, -33, -24, -11, -38, -20, 12,
    -- layer=1 filter=18 channel=48
    -15, 10, 15, 22, 15, -4, 30, -6, -17,
    -- layer=1 filter=18 channel=49
    -47, 22, 20, 7, 35, 14, 5, 9, 8,
    -- layer=1 filter=18 channel=50
    -31, -4, 20, -24, -2, 23, -41, 12, 27,
    -- layer=1 filter=18 channel=51
    -26, 4, 19, -14, 12, 10, 0, -3, 4,
    -- layer=1 filter=18 channel=52
    5, 8, -22, 9, -59, -60, -10, -38, -69,
    -- layer=1 filter=18 channel=53
    7, 45, 25, 21, 20, 33, 8, 14, 47,
    -- layer=1 filter=18 channel=54
    -28, -3, 16, -14, -6, 26, -28, 8, 19,
    -- layer=1 filter=18 channel=55
    28, -1, -2, 28, -39, -18, 0, -1, -22,
    -- layer=1 filter=18 channel=56
    -8, -29, -32, -11, -44, -20, -5, -28, -23,
    -- layer=1 filter=18 channel=57
    -35, 11, 9, -43, 16, 33, -20, 7, 31,
    -- layer=1 filter=18 channel=58
    -25, -5, -9, -2, -6, 28, -26, 9, 27,
    -- layer=1 filter=18 channel=59
    -17, 10, 4, -26, -3, 20, -37, 12, 1,
    -- layer=1 filter=18 channel=60
    -21, 0, 8, -30, 4, 2, -24, 21, 14,
    -- layer=1 filter=18 channel=61
    -3, -10, 2, 19, -9, 0, -13, 0, 0,
    -- layer=1 filter=18 channel=62
    -31, -20, -3, -19, -33, -29, 15, -54, -39,
    -- layer=1 filter=18 channel=63
    2, 25, 16, 47, -13, -37, 19, 19, -50,
    -- layer=1 filter=19 channel=0
    21, 12, 15, 18, -7, -5, -3, -20, 21,
    -- layer=1 filter=19 channel=1
    0, 30, 11, -5, 28, -13, 6, -1, -13,
    -- layer=1 filter=19 channel=2
    -28, 3, -11, 3, 12, 1, 14, -7, 4,
    -- layer=1 filter=19 channel=3
    31, 25, -10, -4, -7, -7, 0, 22, 17,
    -- layer=1 filter=19 channel=4
    -11, 5, -1, -2, -34, -13, -19, -33, -3,
    -- layer=1 filter=19 channel=5
    -20, -7, -32, 24, -5, -5, 6, 21, 33,
    -- layer=1 filter=19 channel=6
    -10, -14, -12, -19, -25, -32, -13, -27, -14,
    -- layer=1 filter=19 channel=7
    15, 13, 30, -21, -20, -26, 0, -25, -7,
    -- layer=1 filter=19 channel=8
    -30, -7, -9, -31, -11, -1, -21, -22, -44,
    -- layer=1 filter=19 channel=9
    -2, -5, 3, -2, 7, 1, 13, 11, -5,
    -- layer=1 filter=19 channel=10
    3, 31, 21, 5, 21, -5, 10, 12, -11,
    -- layer=1 filter=19 channel=11
    -15, 7, -58, -2, -35, -23, -2, -28, -10,
    -- layer=1 filter=19 channel=12
    -27, 6, 0, 25, 32, 35, 37, 34, 48,
    -- layer=1 filter=19 channel=13
    35, 51, 28, 8, 17, -4, -11, -14, -2,
    -- layer=1 filter=19 channel=14
    6, 25, 21, -9, -20, -26, -22, -48, -49,
    -- layer=1 filter=19 channel=15
    -13, 1, 5, 0, 0, -11, -12, -1, -23,
    -- layer=1 filter=19 channel=16
    28, 15, -6, 20, 25, 31, 18, 48, 11,
    -- layer=1 filter=19 channel=17
    33, 34, 18, 12, 0, -4, -3, 6, -31,
    -- layer=1 filter=19 channel=18
    0, -2, 12, -9, 8, -2, 2, -10, 4,
    -- layer=1 filter=19 channel=19
    -31, -15, -16, 0, 8, -17, 20, 15, -16,
    -- layer=1 filter=19 channel=20
    -4, 6, -13, 20, -5, -22, 0, -23, -8,
    -- layer=1 filter=19 channel=21
    26, 50, 30, 25, 31, 14, 24, 35, 5,
    -- layer=1 filter=19 channel=22
    -21, -30, -55, 51, 53, 23, 47, 11, 41,
    -- layer=1 filter=19 channel=23
    2, 28, 11, -17, -13, -35, -29, -19, -39,
    -- layer=1 filter=19 channel=24
    4, 15, 26, -1, 11, -23, 40, -5, -1,
    -- layer=1 filter=19 channel=25
    18, 11, 40, 0, 36, 17, 5, 21, -15,
    -- layer=1 filter=19 channel=26
    -11, -32, 2, -32, -34, -17, 5, -28, -26,
    -- layer=1 filter=19 channel=27
    7, 13, 19, 58, 34, 38, 24, 13, 47,
    -- layer=1 filter=19 channel=28
    1, 17, 16, 17, -5, 16, -10, 33, -27,
    -- layer=1 filter=19 channel=29
    16, 19, 49, 27, 20, 28, 12, 43, -5,
    -- layer=1 filter=19 channel=30
    3, -12, 5, 2, -11, 14, 20, 7, 5,
    -- layer=1 filter=19 channel=31
    3, 1, 22, 21, 18, 33, 9, 23, 10,
    -- layer=1 filter=19 channel=32
    3, 22, -1, 58, 10, -4, 56, 26, 33,
    -- layer=1 filter=19 channel=33
    -6, 1, 14, 21, 12, 5, 9, -1, 16,
    -- layer=1 filter=19 channel=34
    3, 15, 14, -24, -29, 10, -12, -16, -25,
    -- layer=1 filter=19 channel=35
    -21, -22, 9, -16, 0, 15, 27, -1, -19,
    -- layer=1 filter=19 channel=36
    4, 6, -4, 11, -15, 7, 8, 26, 25,
    -- layer=1 filter=19 channel=37
    11, 43, 18, 4, -3, -28, -23, -32, -42,
    -- layer=1 filter=19 channel=38
    2, -1, 27, -20, -18, -17, -6, -14, 8,
    -- layer=1 filter=19 channel=39
    3, 14, -3, -2, -4, 2, 2, 9, -11,
    -- layer=1 filter=19 channel=40
    -10, -22, -14, 4, -21, -7, 10, -9, -10,
    -- layer=1 filter=19 channel=41
    -12, -28, -46, 14, 4, -34, 23, 8, 11,
    -- layer=1 filter=19 channel=42
    7, 14, -17, -37, -9, -38, -20, -33, -20,
    -- layer=1 filter=19 channel=43
    -8, -24, 30, 43, 45, 21, 47, 29, 15,
    -- layer=1 filter=19 channel=44
    -14, -15, -1, -19, 8, -25, 11, -14, 8,
    -- layer=1 filter=19 channel=45
    16, 16, 32, 27, 54, 63, 22, 45, 43,
    -- layer=1 filter=19 channel=46
    9, -5, 2, 9, -51, -42, -27, -56, -52,
    -- layer=1 filter=19 channel=47
    -5, 8, 22, -14, -1, 9, -26, -4, -39,
    -- layer=1 filter=19 channel=48
    -47, -66, -111, 30, -3, 10, 10, 6, 35,
    -- layer=1 filter=19 channel=49
    -16, 28, -28, 39, 13, 9, 21, 20, 38,
    -- layer=1 filter=19 channel=50
    6, -4, 14, 1, -1, 8, -17, -16, -8,
    -- layer=1 filter=19 channel=51
    -29, -17, -25, -21, -46, -47, -6, -31, -4,
    -- layer=1 filter=19 channel=52
    34, 26, 33, 32, 29, 16, -10, -7, -27,
    -- layer=1 filter=19 channel=53
    -33, -9, -10, 17, 17, -6, 9, 8, 25,
    -- layer=1 filter=19 channel=54
    -18, -28, 1, -39, -37, -56, -5, -11, -25,
    -- layer=1 filter=19 channel=55
    51, 62, 28, 5, 21, 22, -6, 13, -35,
    -- layer=1 filter=19 channel=56
    3, 7, 0, -20, -1, -21, -27, 0, -25,
    -- layer=1 filter=19 channel=57
    -32, -29, -19, -16, -10, -27, -9, -18, -27,
    -- layer=1 filter=19 channel=58
    23, 12, -9, -6, 7, 1, -1, 15, -21,
    -- layer=1 filter=19 channel=59
    -17, -20, 16, -24, -8, 0, -22, -24, -9,
    -- layer=1 filter=19 channel=60
    3, 4, 17, 7, 14, -12, -21, 5, -2,
    -- layer=1 filter=19 channel=61
    13, 0, -3, -16, -22, -17, -35, -24, -25,
    -- layer=1 filter=19 channel=62
    86, 81, 13, 116, 89, 94, 47, 84, 82,
    -- layer=1 filter=19 channel=63
    29, 47, 8, 104, 62, 62, 18, 49, 67,
    -- layer=1 filter=20 channel=0
    -9, 13, 12, -3, 1, -2, 10, -5, -15,
    -- layer=1 filter=20 channel=1
    -15, 1, 1, -16, 0, -7, -4, -9, 1,
    -- layer=1 filter=20 channel=2
    -14, 4, -2, -12, -9, -11, -16, -8, -12,
    -- layer=1 filter=20 channel=3
    4, -5, -1, 7, -9, 12, -1, 0, 3,
    -- layer=1 filter=20 channel=4
    4, -15, 0, -1, 8, -4, -1, 8, -5,
    -- layer=1 filter=20 channel=5
    -12, 17, -9, -3, -10, -5, 4, -18, 4,
    -- layer=1 filter=20 channel=6
    4, 1, -8, 1, -16, -9, -1, 12, 0,
    -- layer=1 filter=20 channel=7
    -9, 0, -5, -11, 10, -3, 3, 3, 11,
    -- layer=1 filter=20 channel=8
    9, -8, 9, 0, 4, 12, -13, -2, -9,
    -- layer=1 filter=20 channel=9
    -3, 6, -16, -5, -3, 3, -2, -16, -13,
    -- layer=1 filter=20 channel=10
    2, -2, 3, 12, 2, -6, 11, -6, 8,
    -- layer=1 filter=20 channel=11
    6, -9, -13, 2, -11, 10, 8, 0, -3,
    -- layer=1 filter=20 channel=12
    -11, 0, 12, 4, -15, -9, -12, -1, -9,
    -- layer=1 filter=20 channel=13
    -11, 5, 0, -14, 6, 3, -5, -1, -4,
    -- layer=1 filter=20 channel=14
    11, 4, -7, -6, 2, 5, -13, -14, 3,
    -- layer=1 filter=20 channel=15
    -3, -9, -11, 1, -12, 3, -14, 9, -12,
    -- layer=1 filter=20 channel=16
    -9, -5, -3, 10, 8, 1, 12, -2, -7,
    -- layer=1 filter=20 channel=17
    -9, -8, 8, -8, 12, -8, 2, -11, -5,
    -- layer=1 filter=20 channel=18
    14, 0, -7, 6, -9, -16, 5, -15, 11,
    -- layer=1 filter=20 channel=19
    7, 5, -2, 8, 3, -6, 2, -10, 0,
    -- layer=1 filter=20 channel=20
    11, -14, 6, 11, -7, -7, 7, 4, -7,
    -- layer=1 filter=20 channel=21
    5, -4, -10, -7, -11, -10, -14, 0, -10,
    -- layer=1 filter=20 channel=22
    -2, 8, -1, -3, -11, 4, -3, -14, -2,
    -- layer=1 filter=20 channel=23
    -2, 9, 5, 5, -4, -11, -5, 4, 14,
    -- layer=1 filter=20 channel=24
    15, -6, 6, -1, -16, -11, 11, -15, 11,
    -- layer=1 filter=20 channel=25
    -8, -7, -14, -3, -10, 9, 4, 12, -17,
    -- layer=1 filter=20 channel=26
    13, 4, 0, 10, -14, -4, 14, -9, 6,
    -- layer=1 filter=20 channel=27
    -12, -9, -9, -5, -3, 3, 5, -15, 4,
    -- layer=1 filter=20 channel=28
    0, -6, -9, -5, -8, 9, -16, -1, 5,
    -- layer=1 filter=20 channel=29
    5, -9, -10, 4, -12, 0, 10, 6, 5,
    -- layer=1 filter=20 channel=30
    9, -5, 0, -1, 16, 10, 4, -1, -6,
    -- layer=1 filter=20 channel=31
    12, 9, -8, -1, 2, 7, 7, 13, 9,
    -- layer=1 filter=20 channel=32
    9, -2, 0, 0, 2, -6, 2, 6, 0,
    -- layer=1 filter=20 channel=33
    -4, -12, 5, -1, 12, 6, 12, 2, 4,
    -- layer=1 filter=20 channel=34
    -4, 8, 11, -9, -12, 0, 10, 9, -13,
    -- layer=1 filter=20 channel=35
    -11, -2, 9, 2, -1, -13, -1, 9, -6,
    -- layer=1 filter=20 channel=36
    -13, 5, -2, -8, -3, -12, -6, 3, -9,
    -- layer=1 filter=20 channel=37
    -15, 13, -3, 0, 8, -11, -7, 1, 0,
    -- layer=1 filter=20 channel=38
    -14, 5, -7, 12, -3, 6, -9, -3, -12,
    -- layer=1 filter=20 channel=39
    6, -11, -1, -15, -2, -16, 3, -12, -13,
    -- layer=1 filter=20 channel=40
    -2, 1, 8, 5, -5, -5, -8, -10, -9,
    -- layer=1 filter=20 channel=41
    13, 6, -6, 11, -11, 2, 0, 6, -1,
    -- layer=1 filter=20 channel=42
    -2, -9, -4, -16, -6, -15, -1, -14, -7,
    -- layer=1 filter=20 channel=43
    8, -19, -9, -19, -10, 7, -3, 12, 5,
    -- layer=1 filter=20 channel=44
    -5, -13, -5, 4, 4, 5, 9, -12, -13,
    -- layer=1 filter=20 channel=45
    -4, -6, -15, -16, -2, -8, 1, 9, 4,
    -- layer=1 filter=20 channel=46
    -10, -16, -2, 7, 7, -15, 1, -13, 8,
    -- layer=1 filter=20 channel=47
    0, -8, 0, 0, 7, 8, -2, -10, -5,
    -- layer=1 filter=20 channel=48
    -9, -2, 2, 8, 4, 4, -7, -16, -13,
    -- layer=1 filter=20 channel=49
    6, 8, -2, -15, -8, 5, -9, 2, 4,
    -- layer=1 filter=20 channel=50
    -13, 1, -7, -4, 4, -13, 5, -5, 3,
    -- layer=1 filter=20 channel=51
    8, -5, -7, 7, 8, -9, 10, -5, -14,
    -- layer=1 filter=20 channel=52
    -11, -6, 7, -8, 0, 13, -6, 0, 1,
    -- layer=1 filter=20 channel=53
    -3, 1, 3, -12, -12, -2, -6, 0, -5,
    -- layer=1 filter=20 channel=54
    -13, -3, -16, -2, 0, 2, 0, -9, -2,
    -- layer=1 filter=20 channel=55
    4, -9, -5, -10, 0, 1, -10, -11, -3,
    -- layer=1 filter=20 channel=56
    -13, 4, 9, 7, 13, -8, -11, -14, 9,
    -- layer=1 filter=20 channel=57
    6, -2, -12, -9, 2, 6, -4, 2, 0,
    -- layer=1 filter=20 channel=58
    -9, -11, 0, 9, -7, 8, 9, 1, 5,
    -- layer=1 filter=20 channel=59
    0, 12, -9, -14, 9, -3, -6, -11, 12,
    -- layer=1 filter=20 channel=60
    6, 0, -1, -16, 5, -5, -9, 12, -7,
    -- layer=1 filter=20 channel=61
    -1, -4, 12, 0, 9, -3, -12, 3, 8,
    -- layer=1 filter=20 channel=62
    9, -12, -15, -7, -13, 9, -7, 2, 8,
    -- layer=1 filter=20 channel=63
    12, 4, 3, 2, -20, 11, 6, 4, -5,
    -- layer=1 filter=21 channel=0
    -1, 12, -23, 9, -15, -26, -5, 5, -16,
    -- layer=1 filter=21 channel=1
    5, -5, -11, -3, 8, -3, -21, 5, -11,
    -- layer=1 filter=21 channel=2
    -8, 5, 2, -21, -17, -13, -1, -8, -14,
    -- layer=1 filter=21 channel=3
    -8, -14, 3, -2, -11, -7, 2, 10, -3,
    -- layer=1 filter=21 channel=4
    -17, 1, 6, -11, 0, -3, 7, 0, -3,
    -- layer=1 filter=21 channel=5
    3, 3, 10, 10, 8, -12, -19, -17, -17,
    -- layer=1 filter=21 channel=6
    -5, -15, 0, -1, 7, -7, -17, -6, -11,
    -- layer=1 filter=21 channel=7
    -3, -5, 6, -16, 10, -19, 1, -12, -12,
    -- layer=1 filter=21 channel=8
    -19, 4, -2, -22, -5, -3, -24, 9, -11,
    -- layer=1 filter=21 channel=9
    -6, -3, -8, -5, 3, 5, -18, -12, 0,
    -- layer=1 filter=21 channel=10
    -38, -20, -12, -30, -10, -7, -17, -3, -22,
    -- layer=1 filter=21 channel=11
    -4, -16, -23, -15, -5, -10, 3, -26, 0,
    -- layer=1 filter=21 channel=12
    -8, 2, -6, -8, -17, -13, -17, -9, 0,
    -- layer=1 filter=21 channel=13
    -17, -1, -20, -16, 4, -9, -7, 0, -10,
    -- layer=1 filter=21 channel=14
    -5, -2, 4, 0, -17, -12, -11, -5, -6,
    -- layer=1 filter=21 channel=15
    3, -14, -11, -17, -29, 2, -10, -3, -20,
    -- layer=1 filter=21 channel=16
    -18, 0, -18, -22, 7, -17, 3, 9, -10,
    -- layer=1 filter=21 channel=17
    -13, -14, -14, 4, 8, -13, -9, -1, 1,
    -- layer=1 filter=21 channel=18
    -11, -1, 2, -7, -7, 12, -5, 6, 11,
    -- layer=1 filter=21 channel=19
    -27, -24, -7, -24, -23, -3, -26, -12, -20,
    -- layer=1 filter=21 channel=20
    -8, 9, -22, -4, -11, 1, -3, -2, -15,
    -- layer=1 filter=21 channel=21
    -23, -4, -24, -16, -6, -17, -16, 0, -4,
    -- layer=1 filter=21 channel=22
    -20, 2, -26, -11, -12, 5, -24, -19, -23,
    -- layer=1 filter=21 channel=23
    5, 4, 24, 1, -8, 25, 15, 0, 21,
    -- layer=1 filter=21 channel=24
    -16, -9, -2, -11, 8, 5, 1, -2, -2,
    -- layer=1 filter=21 channel=25
    -10, -20, -8, -16, 2, 4, -1, -12, 17,
    -- layer=1 filter=21 channel=26
    18, -6, 19, -7, 8, 18, 13, 8, 26,
    -- layer=1 filter=21 channel=27
    -5, -6, -23, 1, 2, -1, -10, -2, -16,
    -- layer=1 filter=21 channel=28
    1, -14, 9, -1, 1, -10, 0, 12, 17,
    -- layer=1 filter=21 channel=29
    -4, -16, 1, -27, 0, -12, -24, 0, 0,
    -- layer=1 filter=21 channel=30
    -10, 8, 10, 4, 9, 6, 7, -11, -4,
    -- layer=1 filter=21 channel=31
    -12, 0, -12, -11, -8, -4, -22, -17, 8,
    -- layer=1 filter=21 channel=32
    -10, 16, -10, -21, -12, 0, -15, -19, 5,
    -- layer=1 filter=21 channel=33
    -3, -8, -12, 9, 1, -11, 2, 6, -8,
    -- layer=1 filter=21 channel=34
    -7, 5, 10, 2, 5, -3, 0, 7, -13,
    -- layer=1 filter=21 channel=35
    -27, -25, -20, -25, -23, 0, -31, -23, 0,
    -- layer=1 filter=21 channel=36
    -6, -9, 0, -12, 1, 19, 13, -5, -16,
    -- layer=1 filter=21 channel=37
    -24, -13, 0, -1, -20, -19, -14, 0, -12,
    -- layer=1 filter=21 channel=38
    -12, -14, -9, -18, -3, -20, -23, -18, 7,
    -- layer=1 filter=21 channel=39
    -9, -1, 6, 0, 14, -12, -3, -4, 4,
    -- layer=1 filter=21 channel=40
    2, 2, 2, -5, -18, -3, -7, -4, -12,
    -- layer=1 filter=21 channel=41
    -5, 7, 0, 1, 15, -3, -6, 0, -25,
    -- layer=1 filter=21 channel=42
    -12, -1, -20, 5, -10, 7, -14, -9, 9,
    -- layer=1 filter=21 channel=43
    4, -4, 11, 0, -2, -4, -12, -9, 6,
    -- layer=1 filter=21 channel=44
    3, 5, -7, -13, 8, -24, -2, -22, -26,
    -- layer=1 filter=21 channel=45
    -4, -21, 16, -21, -8, -10, -17, -2, -5,
    -- layer=1 filter=21 channel=46
    2, -5, 14, 7, -9, 13, -8, 14, 6,
    -- layer=1 filter=21 channel=47
    5, -13, 11, -9, -17, -17, -16, -9, -13,
    -- layer=1 filter=21 channel=48
    -3, -10, -11, -13, 1, -22, -21, -10, -24,
    -- layer=1 filter=21 channel=49
    -7, -16, -25, -14, -16, -6, -3, -9, -3,
    -- layer=1 filter=21 channel=50
    -22, -28, -6, -12, -28, -12, -23, -16, -22,
    -- layer=1 filter=21 channel=51
    1, -21, -14, -12, -1, -13, -19, -23, -8,
    -- layer=1 filter=21 channel=52
    -33, -13, -23, -12, -29, -13, -19, -14, -12,
    -- layer=1 filter=21 channel=53
    -8, -15, -1, 2, 8, -10, 10, -13, 4,
    -- layer=1 filter=21 channel=54
    5, 1, -16, 6, 9, -10, -10, 6, 3,
    -- layer=1 filter=21 channel=55
    -7, -4, -10, 2, 8, 7, 18, 2, 1,
    -- layer=1 filter=21 channel=56
    2, -10, 9, 4, 3, -3, -7, 6, 1,
    -- layer=1 filter=21 channel=57
    -8, -13, 0, -11, -8, -23, -17, -21, -22,
    -- layer=1 filter=21 channel=58
    4, -16, 5, -19, 6, -3, -5, -2, -4,
    -- layer=1 filter=21 channel=59
    -25, -27, -9, -2, -16, -8, -29, -30, -9,
    -- layer=1 filter=21 channel=60
    -16, -13, -8, -16, -7, -5, -11, -2, -6,
    -- layer=1 filter=21 channel=61
    11, -15, 4, 0, -12, 8, 3, 10, 0,
    -- layer=1 filter=21 channel=62
    0, 18, -11, 10, -3, -4, 4, -21, -21,
    -- layer=1 filter=21 channel=63
    0, -4, -10, -3, -12, -8, 7, -4, -5,
    -- layer=1 filter=22 channel=0
    -2, -6, -15, -12, -13, -7, -4, -11, -7,
    -- layer=1 filter=22 channel=1
    -16, 7, -11, 6, -1, 1, 6, 0, 2,
    -- layer=1 filter=22 channel=2
    -4, 4, 2, 12, -4, 5, 6, 5, -14,
    -- layer=1 filter=22 channel=3
    0, -12, 7, -13, -11, -10, 12, 7, 4,
    -- layer=1 filter=22 channel=4
    -3, -11, 5, -8, 6, -14, -14, -3, -12,
    -- layer=1 filter=22 channel=5
    1, 15, -2, -11, -7, -18, -7, 1, -12,
    -- layer=1 filter=22 channel=6
    10, -13, -4, -9, 3, -10, 4, 8, 5,
    -- layer=1 filter=22 channel=7
    -14, -15, 7, -10, 4, -7, 3, 1, 5,
    -- layer=1 filter=22 channel=8
    -6, -5, -16, -5, -16, -15, 6, -9, -13,
    -- layer=1 filter=22 channel=9
    -13, -4, 4, -13, 11, -11, 4, -15, 4,
    -- layer=1 filter=22 channel=10
    -4, 0, -12, 5, 10, 4, -3, -5, -1,
    -- layer=1 filter=22 channel=11
    -12, -5, -9, 4, -5, -10, -15, -6, 2,
    -- layer=1 filter=22 channel=12
    -16, -7, 0, 6, -14, -8, 1, 3, 3,
    -- layer=1 filter=22 channel=13
    9, 4, -13, 1, -7, 11, -7, 9, 12,
    -- layer=1 filter=22 channel=14
    -5, 0, 3, -17, -13, -5, -19, 7, -11,
    -- layer=1 filter=22 channel=15
    1, -16, 4, 4, 8, -10, -4, 2, 5,
    -- layer=1 filter=22 channel=16
    -11, -17, 4, 10, -2, -5, 4, 7, -16,
    -- layer=1 filter=22 channel=17
    -12, 6, -11, -1, 1, -14, 0, 7, -9,
    -- layer=1 filter=22 channel=18
    -2, 5, 2, 5, 10, -9, -1, -4, -11,
    -- layer=1 filter=22 channel=19
    0, 4, -14, 12, 7, -5, -14, -10, 1,
    -- layer=1 filter=22 channel=20
    11, -10, -5, 6, -3, -6, 9, 9, -13,
    -- layer=1 filter=22 channel=21
    -11, -5, -17, -5, -1, -6, 4, 5, 1,
    -- layer=1 filter=22 channel=22
    -2, -2, -7, 2, 6, 0, -2, 5, -1,
    -- layer=1 filter=22 channel=23
    -5, -5, -8, -2, 6, -5, 4, -14, -5,
    -- layer=1 filter=22 channel=24
    0, -1, -2, 4, 8, -18, 6, 0, -14,
    -- layer=1 filter=22 channel=25
    -10, -1, 5, 6, -9, 3, 10, 7, 4,
    -- layer=1 filter=22 channel=26
    -6, 0, -4, -12, 14, 8, 3, 6, -1,
    -- layer=1 filter=22 channel=27
    10, -3, 0, 0, -11, 5, -8, 6, -1,
    -- layer=1 filter=22 channel=28
    4, -3, -5, -8, -2, -10, -12, 1, -11,
    -- layer=1 filter=22 channel=29
    -2, 6, 0, -1, 2, -4, 4, -8, 0,
    -- layer=1 filter=22 channel=30
    -4, 13, 13, 13, 13, 8, 11, 11, 0,
    -- layer=1 filter=22 channel=31
    0, -11, -8, -9, 9, 7, 1, 0, -5,
    -- layer=1 filter=22 channel=32
    -8, 7, -3, -5, -11, 8, -12, 8, -5,
    -- layer=1 filter=22 channel=33
    0, 1, -14, -13, 12, 5, -7, -1, 8,
    -- layer=1 filter=22 channel=34
    1, -17, 7, -1, 1, -6, -13, 11, -13,
    -- layer=1 filter=22 channel=35
    -16, -10, 11, 11, 3, -10, -4, -9, -2,
    -- layer=1 filter=22 channel=36
    13, -6, 9, 4, 8, 3, 11, -10, 9,
    -- layer=1 filter=22 channel=37
    -12, 0, 0, -16, 7, -14, 6, 0, 5,
    -- layer=1 filter=22 channel=38
    -13, 8, -6, -12, 2, -14, -16, 4, -2,
    -- layer=1 filter=22 channel=39
    4, -11, 0, 8, 7, 11, -1, 8, 13,
    -- layer=1 filter=22 channel=40
    -1, -6, 1, -1, 0, -18, -24, -13, 7,
    -- layer=1 filter=22 channel=41
    -16, 11, -11, 8, -10, -6, -9, 0, -11,
    -- layer=1 filter=22 channel=42
    -4, 9, -17, 10, -8, 3, 0, -17, -5,
    -- layer=1 filter=22 channel=43
    -13, -5, -15, -19, -5, -9, -18, 8, -11,
    -- layer=1 filter=22 channel=44
    1, 10, -4, -14, -14, 10, -1, 7, 0,
    -- layer=1 filter=22 channel=45
    6, -13, 2, -10, 3, 7, -6, -9, -7,
    -- layer=1 filter=22 channel=46
    -15, 1, -16, -10, 2, 0, -1, 3, -11,
    -- layer=1 filter=22 channel=47
    -15, 10, 9, -13, -8, -10, -14, 11, 8,
    -- layer=1 filter=22 channel=48
    -2, 14, -8, 0, -12, 7, 13, 2, -12,
    -- layer=1 filter=22 channel=49
    3, -4, -9, -4, 0, -3, -3, -13, -7,
    -- layer=1 filter=22 channel=50
    -8, -7, -1, 2, 12, -9, 8, 2, 9,
    -- layer=1 filter=22 channel=51
    10, 0, -8, 2, -15, -2, -12, -2, -13,
    -- layer=1 filter=22 channel=52
    11, 2, 1, -10, 8, -14, 4, 6, -11,
    -- layer=1 filter=22 channel=53
    3, -4, -4, -7, 6, 5, -13, 0, 1,
    -- layer=1 filter=22 channel=54
    -16, 4, -8, 3, -11, 11, -3, -3, -9,
    -- layer=1 filter=22 channel=55
    -8, 3, 3, -16, -7, -3, -4, 1, 8,
    -- layer=1 filter=22 channel=56
    4, 12, 5, 10, -13, -9, 3, -10, -15,
    -- layer=1 filter=22 channel=57
    -13, -7, 10, 5, 9, 10, -6, -6, -2,
    -- layer=1 filter=22 channel=58
    -6, 4, -12, 8, -9, 5, 9, -14, -11,
    -- layer=1 filter=22 channel=59
    0, -11, -8, -7, 5, -8, -9, 9, -1,
    -- layer=1 filter=22 channel=60
    0, 0, 7, 9, 0, -2, -8, 11, -4,
    -- layer=1 filter=22 channel=61
    7, 1, -6, -12, 7, 3, 7, 6, -3,
    -- layer=1 filter=22 channel=62
    -12, 10, -6, 10, 8, -21, -12, -15, 2,
    -- layer=1 filter=22 channel=63
    12, -13, 1, -10, 13, 2, -9, 0, -9,
    -- layer=1 filter=23 channel=0
    -33, 1, 4, -45, -19, -13, -53, 0, -23,
    -- layer=1 filter=23 channel=1
    24, -13, 21, -45, -23, -15, -37, 5, -4,
    -- layer=1 filter=23 channel=2
    -19, -1, 0, -20, -4, -23, -12, 19, -4,
    -- layer=1 filter=23 channel=3
    -5, 9, -5, -12, 10, -4, -15, 1, -1,
    -- layer=1 filter=23 channel=4
    -16, 0, -2, -6, 9, -5, -12, 0, 2,
    -- layer=1 filter=23 channel=5
    32, 13, 35, 15, 43, 2, 15, 25, 50,
    -- layer=1 filter=23 channel=6
    5, -19, -2, -31, 11, 2, -5, -15, 11,
    -- layer=1 filter=23 channel=7
    2, -4, -5, -23, -2, 12, -8, -6, 15,
    -- layer=1 filter=23 channel=8
    8, 3, 7, 7, 19, 0, -5, -12, 4,
    -- layer=1 filter=23 channel=9
    9, -11, -4, 6, 0, -6, 4, 19, 23,
    -- layer=1 filter=23 channel=10
    -15, 9, 4, -33, -14, -2, -13, -6, 6,
    -- layer=1 filter=23 channel=11
    -16, -12, 9, -8, -2, 6, 18, 10, 20,
    -- layer=1 filter=23 channel=12
    5, 48, 20, 3, 38, 8, 13, 41, 0,
    -- layer=1 filter=23 channel=13
    -60, 8, 2, -60, -49, -34, -28, -26, -31,
    -- layer=1 filter=23 channel=14
    -38, -15, -5, -53, -25, 0, -60, -21, -49,
    -- layer=1 filter=23 channel=15
    2, -15, -9, 22, 6, 15, 23, 24, 11,
    -- layer=1 filter=23 channel=16
    15, 31, 42, 3, 29, -5, -9, 11, -18,
    -- layer=1 filter=23 channel=17
    -1, 19, 51, -56, -3, -18, 27, -41, -12,
    -- layer=1 filter=23 channel=18
    -15, 12, 9, -8, -9, -15, -3, 9, -10,
    -- layer=1 filter=23 channel=19
    13, -17, -4, 12, 17, 0, 3, -10, 11,
    -- layer=1 filter=23 channel=20
    -11, -2, 9, -9, 8, 0, -30, -16, -12,
    -- layer=1 filter=23 channel=21
    -34, -18, -13, -38, -2, -19, -6, -14, -1,
    -- layer=1 filter=23 channel=22
    64, 40, 34, 3, 6, -6, 9, 29, 30,
    -- layer=1 filter=23 channel=23
    27, 102, 137, 42, 25, 56, 17, -15, 0,
    -- layer=1 filter=23 channel=24
    -19, 18, -16, -47, 12, 11, 17, 11, -42,
    -- layer=1 filter=23 channel=25
    33, 7, 28, -1, 42, -2, 0, -12, -17,
    -- layer=1 filter=23 channel=26
    -36, -8, -6, -10, 0, -2, -47, -18, 7,
    -- layer=1 filter=23 channel=27
    -39, 27, -11, -12, 0, -5, -14, 38, 16,
    -- layer=1 filter=23 channel=28
    -19, 32, 38, 0, 5, 30, 0, -21, 3,
    -- layer=1 filter=23 channel=29
    9, -11, -3, 13, 34, 0, -20, -15, -39,
    -- layer=1 filter=23 channel=30
    8, 10, 6, -1, 6, 16, -7, 13, -5,
    -- layer=1 filter=23 channel=31
    8, 0, 5, 7, 19, -6, 9, 10, 19,
    -- layer=1 filter=23 channel=32
    14, 57, 19, 42, 57, 24, 3, 43, 20,
    -- layer=1 filter=23 channel=33
    -8, 15, -2, 10, -10, -4, 10, 0, 11,
    -- layer=1 filter=23 channel=34
    0, 4, 5, 1, -5, -14, -18, 4, -14,
    -- layer=1 filter=23 channel=35
    -14, -21, -15, 3, -1, -17, 14, 1, 4,
    -- layer=1 filter=23 channel=36
    -19, 4, 0, 16, 10, -14, 0, 0, -11,
    -- layer=1 filter=23 channel=37
    -9, 7, -6, 0, 1, 0, -2, -20, 13,
    -- layer=1 filter=23 channel=38
    0, -4, -29, 15, 8, -14, 8, 11, 12,
    -- layer=1 filter=23 channel=39
    13, 9, -10, -3, -10, 8, 17, 10, 14,
    -- layer=1 filter=23 channel=40
    -21, -36, -31, -25, -30, -26, -17, -41, -26,
    -- layer=1 filter=23 channel=41
    34, 15, 28, 0, 13, 10, 7, 16, 37,
    -- layer=1 filter=23 channel=42
    -38, -40, -22, -71, -20, -17, -32, -36, -24,
    -- layer=1 filter=23 channel=43
    34, 4, -2, 8, 19, -28, 4, -7, -52,
    -- layer=1 filter=23 channel=44
    -12, 0, -34, 2, -7, -10, 17, 4, 10,
    -- layer=1 filter=23 channel=45
    34, 0, 48, 33, 11, -12, 11, -10, -9,
    -- layer=1 filter=23 channel=46
    18, 16, 34, -60, -68, -16, -32, -41, -24,
    -- layer=1 filter=23 channel=47
    20, -9, 28, 16, 2, 0, -5, -22, -24,
    -- layer=1 filter=23 channel=48
    63, 22, 28, 1, 28, 4, 3, 43, 34,
    -- layer=1 filter=23 channel=49
    -18, -2, -4, -2, 3, -1, 7, 28, 12,
    -- layer=1 filter=23 channel=50
    -3, 18, -1, 21, 7, 3, 13, 22, 15,
    -- layer=1 filter=23 channel=51
    -3, -14, 6, -18, -6, -5, -2, 6, 23,
    -- layer=1 filter=23 channel=52
    -25, 9, 19, -49, -30, 1, -13, 2, -18,
    -- layer=1 filter=23 channel=53
    -10, 17, -1, 18, 19, 23, 0, 28, -23,
    -- layer=1 filter=23 channel=54
    13, 8, 15, -17, 20, 4, -10, 0, 19,
    -- layer=1 filter=23 channel=55
    -4, 55, 67, -35, 6, 15, -17, -27, -19,
    -- layer=1 filter=23 channel=56
    -2, -36, 9, -41, -20, -34, -43, -35, -48,
    -- layer=1 filter=23 channel=57
    -12, -13, 2, 20, 21, -8, 17, 7, 16,
    -- layer=1 filter=23 channel=58
    -2, 11, 11, 1, 13, -1, 0, 8, -6,
    -- layer=1 filter=23 channel=59
    4, -16, -9, 18, -14, 8, 19, 10, 10,
    -- layer=1 filter=23 channel=60
    8, -5, -11, 3, -3, -1, 18, 14, 11,
    -- layer=1 filter=23 channel=61
    -79, -42, -12, -81, -72, -60, -68, -57, -27,
    -- layer=1 filter=23 channel=62
    18, 18, 40, 43, 5, 41, 47, 37, -5,
    -- layer=1 filter=23 channel=63
    74, 100, 91, 13, 5, 49, 5, 63, -10,
    -- layer=1 filter=24 channel=0
    -2, -6, 7, 8, 3, -4, 17, -19, -17,
    -- layer=1 filter=24 channel=1
    -23, -23, -20, -3, -24, 1, -25, -24, -22,
    -- layer=1 filter=24 channel=2
    19, 32, 14, 26, 30, 33, 49, 38, 18,
    -- layer=1 filter=24 channel=3
    42, -6, -21, -15, -4, 11, 5, 25, 16,
    -- layer=1 filter=24 channel=4
    -22, 0, -10, 11, 9, 5, -19, -20, -23,
    -- layer=1 filter=24 channel=5
    -50, -30, -29, -3, -26, 0, 22, 1, -9,
    -- layer=1 filter=24 channel=6
    -7, -12, 5, 17, 17, -4, -7, 11, -14,
    -- layer=1 filter=24 channel=7
    -10, 8, -16, 19, 22, 14, -1, 12, -4,
    -- layer=1 filter=24 channel=8
    -20, -34, -13, -3, -26, -12, -13, -31, -14,
    -- layer=1 filter=24 channel=9
    2, -7, -4, 0, -29, 7, -8, -25, -42,
    -- layer=1 filter=24 channel=10
    -54, -18, -19, -58, -43, -60, -73, -78, -83,
    -- layer=1 filter=24 channel=11
    -20, -6, -7, -8, 2, -6, -10, -11, -7,
    -- layer=1 filter=24 channel=12
    -38, -63, -5, -48, -59, -25, 0, -55, -12,
    -- layer=1 filter=24 channel=13
    -10, -1, -7, -38, -44, -19, -12, -43, -35,
    -- layer=1 filter=24 channel=14
    26, 1, 16, 13, 5, -3, 7, 29, 20,
    -- layer=1 filter=24 channel=15
    20, 2, 16, -7, 0, 21, -1, -12, 10,
    -- layer=1 filter=24 channel=16
    -8, -14, -35, -47, -49, -18, -22, 3, 19,
    -- layer=1 filter=24 channel=17
    -22, -15, 9, -42, -27, -8, 11, -53, -17,
    -- layer=1 filter=24 channel=18
    -2, -4, 4, 2, 9, 2, 3, 6, 4,
    -- layer=1 filter=24 channel=19
    -16, 7, 1, 23, -19, 0, 15, 14, -12,
    -- layer=1 filter=24 channel=20
    22, -4, 7, 15, 18, 6, 12, 22, 34,
    -- layer=1 filter=24 channel=21
    -60, -45, -4, -68, -55, -41, -53, -93, -50,
    -- layer=1 filter=24 channel=22
    -26, -23, 3, -48, -32, -20, 15, -1, 8,
    -- layer=1 filter=24 channel=23
    1, 2, 7, -33, -19, -22, -39, -40, -48,
    -- layer=1 filter=24 channel=24
    -56, -41, -26, -13, 21, 5, -35, -16, -36,
    -- layer=1 filter=24 channel=25
    0, -39, -4, -19, -25, -26, -31, -19, -27,
    -- layer=1 filter=24 channel=26
    4, 19, 20, 0, -6, 8, 7, 0, -27,
    -- layer=1 filter=24 channel=27
    -65, -68, -25, -35, -56, -56, -10, -54, -29,
    -- layer=1 filter=24 channel=28
    1, 34, -25, 34, -4, -4, 13, -12, -6,
    -- layer=1 filter=24 channel=29
    -23, -60, -49, -2, -43, -13, -29, -5, -28,
    -- layer=1 filter=24 channel=30
    -3, 0, -1, 5, 2, 0, -15, -5, 1,
    -- layer=1 filter=24 channel=31
    21, 1, 11, -10, -41, -18, 7, -15, -16,
    -- layer=1 filter=24 channel=32
    -39, -37, 5, -26, -8, 17, -6, -51, -6,
    -- layer=1 filter=24 channel=33
    -4, 10, 9, -12, -1, 3, 2, -8, -10,
    -- layer=1 filter=24 channel=34
    -8, -11, -16, 12, -6, -4, 13, -19, -7,
    -- layer=1 filter=24 channel=35
    -3, 6, 8, 19, 5, 23, 5, 6, 12,
    -- layer=1 filter=24 channel=36
    6, -4, -9, -9, -8, 1, -37, -16, -21,
    -- layer=1 filter=24 channel=37
    -6, -6, -3, -43, -19, -11, -37, -53, -37,
    -- layer=1 filter=24 channel=38
    -1, -2, 6, 0, -4, 15, -11, -9, 2,
    -- layer=1 filter=24 channel=39
    8, -18, 1, -6, -8, 5, 13, -8, -11,
    -- layer=1 filter=24 channel=40
    19, 44, 11, 40, 29, 24, 11, 57, 44,
    -- layer=1 filter=24 channel=41
    -52, -29, -14, 0, -19, -22, 9, 29, 9,
    -- layer=1 filter=24 channel=42
    7, 15, 5, 28, 26, 13, -4, 26, 26,
    -- layer=1 filter=24 channel=43
    -4, 0, 3, 22, 26, 36, 22, 28, 21,
    -- layer=1 filter=24 channel=44
    -4, 12, 15, 24, 8, 14, 20, 12, 32,
    -- layer=1 filter=24 channel=45
    35, -19, 22, 22, -2, -19, -16, -23, -35,
    -- layer=1 filter=24 channel=46
    -1, 16, -3, -16, 21, 4, -31, 28, 15,
    -- layer=1 filter=24 channel=47
    28, 12, -11, 8, -6, 6, 9, 1, 5,
    -- layer=1 filter=24 channel=48
    -37, -35, 5, -17, -3, 4, 40, 15, -5,
    -- layer=1 filter=24 channel=49
    -22, -21, 0, -36, -43, -15, 4, 3, 0,
    -- layer=1 filter=24 channel=50
    3, -6, -18, -34, -25, -37, -36, -33, -46,
    -- layer=1 filter=24 channel=51
    -3, 9, 22, 14, 24, 12, 0, 27, 16,
    -- layer=1 filter=24 channel=52
    -68, -77, -72, -67, -61, -75, -86, -85, -118,
    -- layer=1 filter=24 channel=53
    31, 20, -6, 18, 5, 15, 52, 11, -1,
    -- layer=1 filter=24 channel=54
    -4, -2, -5, 11, 3, 0, -6, 13, 16,
    -- layer=1 filter=24 channel=55
    -35, -26, -16, -25, -20, -13, -47, -38, -67,
    -- layer=1 filter=24 channel=56
    15, -8, 17, 28, 4, 12, 3, 31, -1,
    -- layer=1 filter=24 channel=57
    6, 6, -7, 20, 7, 12, 26, 11, 4,
    -- layer=1 filter=24 channel=58
    20, 0, -25, -36, -46, -25, 0, -11, 1,
    -- layer=1 filter=24 channel=59
    -9, -12, -14, -20, -34, -20, -4, -42, -16,
    -- layer=1 filter=24 channel=60
    14, -6, -4, -36, -28, -23, -5, -45, -16,
    -- layer=1 filter=24 channel=61
    -3, -11, 4, 23, 19, 13, 4, -5, -7,
    -- layer=1 filter=24 channel=62
    -63, -93, -38, -142, -126, -56, -70, -126, -45,
    -- layer=1 filter=24 channel=63
    -37, -21, -15, -80, -58, -15, -34, 31, 30,
    -- layer=1 filter=25 channel=0
    -1, -15, 6, 5, 3, 0, -8, -1, -9,
    -- layer=1 filter=25 channel=1
    -17, -22, -7, 0, -20, -6, -20, -22, 2,
    -- layer=1 filter=25 channel=2
    3, 9, 0, 34, 31, 37, 10, 31, 16,
    -- layer=1 filter=25 channel=3
    49, 18, 21, 18, 23, 48, 16, 46, 25,
    -- layer=1 filter=25 channel=4
    -7, 11, 5, 17, -3, 1, 8, -9, -1,
    -- layer=1 filter=25 channel=5
    -12, 5, 21, 22, -23, 1, 10, -18, -4,
    -- layer=1 filter=25 channel=6
    5, 3, 13, 2, 3, 11, 25, 6, 12,
    -- layer=1 filter=25 channel=7
    10, 24, -5, 0, 11, 9, 24, 4, 7,
    -- layer=1 filter=25 channel=8
    -20, -7, -5, -18, -2, -26, 0, -21, -17,
    -- layer=1 filter=25 channel=9
    1, -16, 24, 10, 2, 2, -36, -27, -1,
    -- layer=1 filter=25 channel=10
    -51, -31, -22, -48, -40, -50, -41, -39, -46,
    -- layer=1 filter=25 channel=11
    -11, 6, 0, -16, -21, -17, -22, -12, -1,
    -- layer=1 filter=25 channel=12
    -10, -16, -7, 13, -5, -1, 13, -8, 2,
    -- layer=1 filter=25 channel=13
    -43, -31, -24, -33, -18, -39, -39, -31, -42,
    -- layer=1 filter=25 channel=14
    5, 18, 11, -1, 8, 24, 23, 28, 20,
    -- layer=1 filter=25 channel=15
    -11, -25, -12, -36, -24, -13, -50, -41, -40,
    -- layer=1 filter=25 channel=16
    -11, 8, -23, 23, 12, 28, 38, 49, 31,
    -- layer=1 filter=25 channel=17
    12, -21, 6, -13, -20, -19, 0, 7, 1,
    -- layer=1 filter=25 channel=18
    0, 10, -3, -12, -10, -2, 5, 6, 10,
    -- layer=1 filter=25 channel=19
    4, 16, 5, -6, -3, -10, -4, -8, 13,
    -- layer=1 filter=25 channel=20
    25, -1, 14, 3, 15, 1, 9, 44, 8,
    -- layer=1 filter=25 channel=21
    -55, -79, -26, -58, -78, -50, -51, -79, -45,
    -- layer=1 filter=25 channel=22
    8, 27, 18, 32, 8, 8, 8, 5, 13,
    -- layer=1 filter=25 channel=23
    -8, -10, 5, -6, -27, -14, -5, 0, -18,
    -- layer=1 filter=25 channel=24
    -20, -7, -20, 22, 34, 49, -7, 18, 48,
    -- layer=1 filter=25 channel=25
    21, -17, -2, -13, -1, -5, 10, 1, -9,
    -- layer=1 filter=25 channel=26
    -8, 8, -13, -15, 3, -28, -7, 8, -4,
    -- layer=1 filter=25 channel=27
    4, -15, -12, 6, 22, -1, 10, 14, -4,
    -- layer=1 filter=25 channel=28
    12, 43, -9, 4, 7, 3, -1, -13, 6,
    -- layer=1 filter=25 channel=29
    -36, -32, -46, -26, -29, -6, -3, -21, -31,
    -- layer=1 filter=25 channel=30
    -10, -14, -7, -6, 1, -9, -7, 0, 0,
    -- layer=1 filter=25 channel=31
    -45, -56, -31, -52, -84, -66, -65, -53, -83,
    -- layer=1 filter=25 channel=32
    -13, -3, -31, -11, -3, 9, -27, 28, -11,
    -- layer=1 filter=25 channel=33
    0, 0, 0, 18, -11, 18, 4, 6, 0,
    -- layer=1 filter=25 channel=34
    0, 17, 4, 7, -3, 2, -8, 19, 2,
    -- layer=1 filter=25 channel=35
    0, 0, 15, 33, 17, 19, 3, -4, 12,
    -- layer=1 filter=25 channel=36
    10, 1, -1, 18, 24, 23, -44, -19, -4,
    -- layer=1 filter=25 channel=37
    -23, -29, -34, -43, -59, -46, -30, -60, -60,
    -- layer=1 filter=25 channel=38
    4, -12, 26, -2, 10, 9, -13, -3, 12,
    -- layer=1 filter=25 channel=39
    -2, 7, 14, -12, 24, -13, 7, 15, 0,
    -- layer=1 filter=25 channel=40
    18, 33, 25, 46, 48, 14, 22, 42, 44,
    -- layer=1 filter=25 channel=41
    -15, 0, 12, 12, 7, -6, 23, -10, 19,
    -- layer=1 filter=25 channel=42
    0, -3, 1, 5, 6, 3, 6, 2, 25,
    -- layer=1 filter=25 channel=43
    29, -8, -1, 33, -3, 21, 12, 7, 16,
    -- layer=1 filter=25 channel=44
    21, 10, 0, 13, 22, 20, 17, 14, 28,
    -- layer=1 filter=25 channel=45
    14, -16, -17, 19, -30, 3, 24, -16, -26,
    -- layer=1 filter=25 channel=46
    29, 35, -9, 22, 45, 33, 19, 40, 36,
    -- layer=1 filter=25 channel=47
    14, 13, -2, 30, 16, 7, 33, 19, 20,
    -- layer=1 filter=25 channel=48
    39, 14, 47, 42, 12, 42, 41, 20, 43,
    -- layer=1 filter=25 channel=49
    -1, -15, -17, -23, -37, -18, -49, -17, -37,
    -- layer=1 filter=25 channel=50
    -35, -21, -24, -48, -56, -52, -53, -70, -69,
    -- layer=1 filter=25 channel=51
    8, 2, 23, 26, 37, 29, 13, 1, 22,
    -- layer=1 filter=25 channel=52
    -34, -54, -38, -43, -66, -35, -46, -54, -31,
    -- layer=1 filter=25 channel=53
    35, 20, 15, 24, 13, 39, 25, 44, 34,
    -- layer=1 filter=25 channel=54
    19, 9, 0, 5, 7, 7, 5, 19, 5,
    -- layer=1 filter=25 channel=55
    -32, -23, -16, -25, -18, -20, -21, -44, -20,
    -- layer=1 filter=25 channel=56
    18, 16, 7, 34, 2, 15, 25, 7, 35,
    -- layer=1 filter=25 channel=57
    10, 3, -11, 3, 0, -8, 16, -9, -3,
    -- layer=1 filter=25 channel=58
    17, -18, -7, -11, -4, -20, 8, 12, -8,
    -- layer=1 filter=25 channel=59
    -12, -43, -33, -22, -26, -35, -41, -66, -53,
    -- layer=1 filter=25 channel=60
    -24, -36, -26, -42, -34, -35, -61, -66, -49,
    -- layer=1 filter=25 channel=61
    -9, 16, 7, -5, 9, 8, 12, 7, 22,
    -- layer=1 filter=25 channel=62
    3, 12, -5, -19, -31, 1, -29, 47, 11,
    -- layer=1 filter=25 channel=63
    0, 22, 10, 21, 40, 39, 33, 79, 64,
    -- layer=1 filter=26 channel=0
    5, -6, 0, -5, -8, 0, -15, 6, 8,
    -- layer=1 filter=26 channel=1
    7, -12, 2, 1, 0, -5, -12, -2, 0,
    -- layer=1 filter=26 channel=2
    2, -5, -10, 6, -12, -13, -5, -5, -14,
    -- layer=1 filter=26 channel=3
    -15, -10, -7, -10, -13, 11, 11, -10, -10,
    -- layer=1 filter=26 channel=4
    -2, -8, -7, -14, 0, 6, -8, 7, 5,
    -- layer=1 filter=26 channel=5
    -10, 0, 4, -6, 4, 5, 3, 6, -13,
    -- layer=1 filter=26 channel=6
    10, -3, -3, 10, -3, -2, -2, -12, -12,
    -- layer=1 filter=26 channel=7
    6, -7, -4, 2, -12, -16, 6, 2, -11,
    -- layer=1 filter=26 channel=8
    0, 0, 10, -14, -14, -11, 7, 0, -9,
    -- layer=1 filter=26 channel=9
    -17, -10, -12, -2, 0, -5, 6, -1, 0,
    -- layer=1 filter=26 channel=10
    14, 7, 3, 9, 12, -2, 4, 3, -4,
    -- layer=1 filter=26 channel=11
    7, 7, -1, -13, -12, -1, 0, 3, -10,
    -- layer=1 filter=26 channel=12
    7, 2, 1, -13, -1, -14, 10, 4, 10,
    -- layer=1 filter=26 channel=13
    2, -1, -12, -11, -1, -2, -9, 9, -16,
    -- layer=1 filter=26 channel=14
    -14, 10, 10, -17, -2, 9, 0, -4, -17,
    -- layer=1 filter=26 channel=15
    -10, 5, 4, -4, -11, -2, 1, -5, -1,
    -- layer=1 filter=26 channel=16
    -15, 3, 0, -5, 4, 10, -5, -12, -12,
    -- layer=1 filter=26 channel=17
    -4, 7, -3, 5, -1, 3, 1, 14, -2,
    -- layer=1 filter=26 channel=18
    2, 3, -5, 0, 8, -11, 5, -15, -11,
    -- layer=1 filter=26 channel=19
    -15, 2, -14, -4, 0, 7, -8, 12, -3,
    -- layer=1 filter=26 channel=20
    4, -9, -10, -11, 4, 5, 1, -3, 0,
    -- layer=1 filter=26 channel=21
    -16, -13, -10, -5, -7, -13, -13, -15, 4,
    -- layer=1 filter=26 channel=22
    4, -10, -4, 1, 14, 12, -13, 12, 8,
    -- layer=1 filter=26 channel=23
    -1, 15, -4, 5, -15, -9, -5, 8, 8,
    -- layer=1 filter=26 channel=24
    -9, -2, 8, -12, -6, 4, 2, -7, -3,
    -- layer=1 filter=26 channel=25
    3, -11, -2, 14, 2, 6, -9, 9, 9,
    -- layer=1 filter=26 channel=26
    -13, -8, 11, -8, 0, -2, 12, 4, -11,
    -- layer=1 filter=26 channel=27
    2, -4, -4, 10, 4, -8, -4, -13, 1,
    -- layer=1 filter=26 channel=28
    -6, 0, -11, 4, 9, 4, -5, -9, -1,
    -- layer=1 filter=26 channel=29
    -9, -2, 7, -3, -8, 7, 9, 3, -9,
    -- layer=1 filter=26 channel=30
    -1, 8, 10, 11, 0, 12, 7, -8, 12,
    -- layer=1 filter=26 channel=31
    14, -15, 4, 12, 8, 13, 6, -8, 6,
    -- layer=1 filter=26 channel=32
    -12, 4, -6, 13, -11, -3, 7, -10, -3,
    -- layer=1 filter=26 channel=33
    -7, -4, 7, 9, -6, -9, -2, 0, 6,
    -- layer=1 filter=26 channel=34
    -3, 8, -11, -12, -9, 1, -10, -9, -10,
    -- layer=1 filter=26 channel=35
    -3, 10, 4, -9, 0, 5, 12, -12, 0,
    -- layer=1 filter=26 channel=36
    -1, -16, -3, -1, -9, 11, 2, 2, -1,
    -- layer=1 filter=26 channel=37
    -8, 0, -2, -13, -2, -10, -8, 8, 6,
    -- layer=1 filter=26 channel=38
    -6, 8, -5, -8, 13, 5, 4, -6, 0,
    -- layer=1 filter=26 channel=39
    4, -4, -7, 4, 14, 7, -15, 1, 6,
    -- layer=1 filter=26 channel=40
    2, 2, -15, 10, 0, 5, -13, -14, 6,
    -- layer=1 filter=26 channel=41
    -9, -14, -7, 1, -11, -14, -14, 5, -3,
    -- layer=1 filter=26 channel=42
    -4, 9, -12, -7, 4, 3, -15, -5, 8,
    -- layer=1 filter=26 channel=43
    6, 3, -9, 13, 5, 7, 4, 1, 1,
    -- layer=1 filter=26 channel=44
    2, 5, 5, -7, 0, 12, -8, -8, 5,
    -- layer=1 filter=26 channel=45
    -10, -11, -16, -10, -4, -16, -10, 4, 5,
    -- layer=1 filter=26 channel=46
    13, 8, -6, -15, -2, -8, -5, -7, 13,
    -- layer=1 filter=26 channel=47
    12, -16, -16, -7, -10, -7, 5, 12, -15,
    -- layer=1 filter=26 channel=48
    -14, 3, -1, 5, 13, -3, -4, -14, -8,
    -- layer=1 filter=26 channel=49
    0, -1, 0, -12, -11, 6, 12, -14, 0,
    -- layer=1 filter=26 channel=50
    5, 0, 3, 0, -7, -3, 3, -11, 12,
    -- layer=1 filter=26 channel=51
    -3, -9, -13, -2, 3, -2, -2, 6, -6,
    -- layer=1 filter=26 channel=52
    13, 4, 11, -10, 3, -11, -6, -1, 9,
    -- layer=1 filter=26 channel=53
    8, -11, 12, 2, -6, 0, 11, 9, -7,
    -- layer=1 filter=26 channel=54
    -7, 11, 11, -13, 2, 2, -11, 5, -9,
    -- layer=1 filter=26 channel=55
    9, 7, -3, 6, -13, 9, -1, 3, -4,
    -- layer=1 filter=26 channel=56
    3, -2, 10, 1, -6, 11, 6, -6, -13,
    -- layer=1 filter=26 channel=57
    3, -15, 10, -12, -2, -4, 1, -2, -1,
    -- layer=1 filter=26 channel=58
    -7, -5, 5, 0, -14, 10, -15, -14, -10,
    -- layer=1 filter=26 channel=59
    6, -13, -14, 12, 7, -11, -12, 9, -12,
    -- layer=1 filter=26 channel=60
    7, -4, -16, 8, 5, -12, 5, 7, 12,
    -- layer=1 filter=26 channel=61
    1, -16, -4, -7, 6, -14, 12, -4, -15,
    -- layer=1 filter=26 channel=62
    -9, 2, 3, 0, 9, -9, 3, 13, -9,
    -- layer=1 filter=26 channel=63
    12, -7, -2, 13, -3, -14, -1, 2, 11,
    -- layer=1 filter=27 channel=0
    25, 32, -6, 38, 38, 17, 21, 6, -8,
    -- layer=1 filter=27 channel=1
    7, 7, 14, 26, 46, 27, 2, 2, 7,
    -- layer=1 filter=27 channel=2
    -26, -17, -31, -8, -32, -16, 20, -2, 0,
    -- layer=1 filter=27 channel=3
    12, 14, -8, 14, 1, 0, 1, -31, -13,
    -- layer=1 filter=27 channel=4
    -1, -20, -5, -20, 6, 19, 9, -6, -5,
    -- layer=1 filter=27 channel=5
    -5, -3, 6, 33, 16, 19, 18, 3, 21,
    -- layer=1 filter=27 channel=6
    -3, 0, 13, -13, -2, -3, 0, 7, -16,
    -- layer=1 filter=27 channel=7
    -8, -3, -32, -23, -5, -2, 6, -5, 0,
    -- layer=1 filter=27 channel=8
    17, 4, -1, 23, -16, -21, -15, -3, -10,
    -- layer=1 filter=27 channel=9
    11, -10, 5, -18, 0, 17, -14, -35, -41,
    -- layer=1 filter=27 channel=10
    -29, -37, -15, -21, -7, -21, -2, -8, 7,
    -- layer=1 filter=27 channel=11
    9, 6, 10, -1, -14, -7, 12, 13, 9,
    -- layer=1 filter=27 channel=12
    -13, -40, -11, -14, -6, -14, 2, -21, 7,
    -- layer=1 filter=27 channel=13
    39, 45, 27, 41, 48, 51, 40, 34, -15,
    -- layer=1 filter=27 channel=14
    9, 14, 5, 24, 10, 0, 20, 16, 9,
    -- layer=1 filter=27 channel=15
    5, -12, 10, -23, -21, 12, 7, 14, 26,
    -- layer=1 filter=27 channel=16
    25, -14, 16, 28, 18, 28, 10, -5, 17,
    -- layer=1 filter=27 channel=17
    36, 81, 8, 47, 43, 19, 33, 24, -11,
    -- layer=1 filter=27 channel=18
    0, 11, 9, -15, 8, 3, -10, 12, -6,
    -- layer=1 filter=27 channel=19
    5, 10, -17, 1, -6, -14, 7, -7, 8,
    -- layer=1 filter=27 channel=20
    21, -1, -6, 6, 12, -22, 8, -11, -14,
    -- layer=1 filter=27 channel=21
    70, 83, 73, 90, 90, 70, 58, 45, 23,
    -- layer=1 filter=27 channel=22
    -3, -47, -4, -19, -22, -23, -28, -31, -4,
    -- layer=1 filter=27 channel=23
    -47, -36, -29, -27, 4, -55, -26, -35, -42,
    -- layer=1 filter=27 channel=24
    -6, -25, -25, 17, -23, -24, -28, -27, -34,
    -- layer=1 filter=27 channel=25
    -9, 7, -11, 33, 39, 30, 29, 15, 62,
    -- layer=1 filter=27 channel=26
    18, 11, 13, 13, -9, -24, 11, -12, -12,
    -- layer=1 filter=27 channel=27
    -17, -31, -35, -24, -17, -39, 21, -22, -24,
    -- layer=1 filter=27 channel=28
    -23, -19, -28, -4, -14, -29, 38, -27, -12,
    -- layer=1 filter=27 channel=29
    5, 3, 14, 42, 25, 12, 35, 12, 0,
    -- layer=1 filter=27 channel=30
    4, -9, -10, 5, 5, 4, 20, 5, 1,
    -- layer=1 filter=27 channel=31
    31, 34, 25, 10, 30, 14, 9, 26, 35,
    -- layer=1 filter=27 channel=32
    1, -5, -8, 5, -8, -31, 52, 14, -14,
    -- layer=1 filter=27 channel=33
    5, -5, -4, 6, 18, 4, 14, 5, 12,
    -- layer=1 filter=27 channel=34
    -2, 1, -14, -4, 0, -2, -1, -6, -15,
    -- layer=1 filter=27 channel=35
    -11, 6, -14, -30, -33, -24, -6, -13, 9,
    -- layer=1 filter=27 channel=36
    31, 27, 20, 10, -6, 25, -27, -32, -25,
    -- layer=1 filter=27 channel=37
    29, 19, 40, 23, 44, 21, 23, 23, 0,
    -- layer=1 filter=27 channel=38
    -32, 0, -11, -45, -14, 5, -8, -22, 19,
    -- layer=1 filter=27 channel=39
    13, -12, -8, -9, 6, -20, 17, 19, -6,
    -- layer=1 filter=27 channel=40
    -10, -26, -30, -26, -45, -46, -8, 0, -4,
    -- layer=1 filter=27 channel=41
    -13, -6, -29, 12, -16, 12, -25, -12, -12,
    -- layer=1 filter=27 channel=42
    12, 13, -5, 16, 20, -3, 0, 16, -19,
    -- layer=1 filter=27 channel=43
    -18, -40, -20, -5, -43, -30, 2, -12, -5,
    -- layer=1 filter=27 channel=44
    -10, -36, -16, -52, -76, -18, -33, -31, -9,
    -- layer=1 filter=27 channel=45
    0, -19, -21, -34, -11, -40, 13, 8, -18,
    -- layer=1 filter=27 channel=46
    -19, -54, -43, -34, -60, -43, -23, -10, -24,
    -- layer=1 filter=27 channel=47
    -7, -11, -12, 12, -40, -7, 11, 13, -20,
    -- layer=1 filter=27 channel=48
    -8, -10, -6, 3, -14, -9, 0, -24, -11,
    -- layer=1 filter=27 channel=49
    -3, 17, 39, 2, 21, 18, 23, 22, 47,
    -- layer=1 filter=27 channel=50
    16, 35, 45, 32, 22, 36, 7, 28, 30,
    -- layer=1 filter=27 channel=51
    -19, -16, -27, -37, -46, -14, -2, -18, 6,
    -- layer=1 filter=27 channel=52
    46, 31, 40, 36, 55, 55, 18, 43, 15,
    -- layer=1 filter=27 channel=53
    11, 0, -5, -12, -19, 9, -37, -29, -27,
    -- layer=1 filter=27 channel=54
    -12, -5, -20, 0, -2, -20, -22, -1, -13,
    -- layer=1 filter=27 channel=55
    34, 32, 22, 22, 44, 11, 24, 10, 5,
    -- layer=1 filter=27 channel=56
    1, 2, 4, -2, -8, -11, 6, -11, -19,
    -- layer=1 filter=27 channel=57
    -19, -2, -3, -29, -22, -12, -27, -26, -8,
    -- layer=1 filter=27 channel=58
    25, 18, 4, 22, 5, 28, 1, -30, 19,
    -- layer=1 filter=27 channel=59
    -7, -5, 13, -7, 3, 13, -4, -6, 16,
    -- layer=1 filter=27 channel=60
    37, 35, 43, 38, 22, 38, -2, -7, 39,
    -- layer=1 filter=27 channel=61
    32, 32, 20, 35, 31, 2, 17, 7, 3,
    -- layer=1 filter=27 channel=62
    -53, -71, -19, -80, -50, -34, -16, -6, 2,
    -- layer=1 filter=27 channel=63
    -37, -47, -15, -25, -7, 2, 30, 45, 44,
    -- layer=1 filter=28 channel=0
    -20, 0, -3, 14, 17, 10, -29, -11, -10,
    -- layer=1 filter=28 channel=1
    -5, -3, -10, 0, -3, 5, -16, -17, -19,
    -- layer=1 filter=28 channel=2
    9, 12, -2, -1, -12, -15, -1, 0, -5,
    -- layer=1 filter=28 channel=3
    57, 9, 28, -2, 10, -12, 24, 29, 20,
    -- layer=1 filter=28 channel=4
    -7, -22, -3, 24, 13, 34, -10, 11, 0,
    -- layer=1 filter=28 channel=5
    30, 5, 29, 87, 85, 66, 1, -38, -24,
    -- layer=1 filter=28 channel=6
    3, 5, 4, 26, 28, 10, -6, -10, -8,
    -- layer=1 filter=28 channel=7
    -38, -31, -26, 21, 24, 7, 0, 16, 21,
    -- layer=1 filter=28 channel=8
    -12, -17, 2, 0, 4, 16, 2, -3, 10,
    -- layer=1 filter=28 channel=9
    -30, -20, 18, -28, -21, -29, 7, 30, 25,
    -- layer=1 filter=28 channel=10
    30, -3, 16, 30, 23, 18, 11, -8, 14,
    -- layer=1 filter=28 channel=11
    -10, 10, 11, 20, 26, 24, 1, -15, -8,
    -- layer=1 filter=28 channel=12
    24, 32, 32, -9, -22, -8, -63, -69, -83,
    -- layer=1 filter=28 channel=13
    -17, 2, -4, 3, 3, 12, -9, -2, -17,
    -- layer=1 filter=28 channel=14
    -6, -33, -20, 3, -9, -1, 14, 11, 28,
    -- layer=1 filter=28 channel=15
    -31, -23, 3, -5, 3, -16, 28, 18, 15,
    -- layer=1 filter=28 channel=16
    40, 47, 62, -5, 38, 9, 8, -7, -37,
    -- layer=1 filter=28 channel=17
    -7, -10, -3, 8, 21, 10, -3, -12, -18,
    -- layer=1 filter=28 channel=18
    -6, 5, -14, -6, 13, 0, 15, 9, -4,
    -- layer=1 filter=28 channel=19
    -9, -1, 5, 0, 7, -5, 14, 1, -10,
    -- layer=1 filter=28 channel=20
    10, 16, 2, 0, 9, -10, -18, -17, 0,
    -- layer=1 filter=28 channel=21
    22, -6, 23, 19, 31, 20, -20, -20, -16,
    -- layer=1 filter=28 channel=22
    89, 114, 85, 54, 59, 48, -45, -68, -55,
    -- layer=1 filter=28 channel=23
    -22, -23, -21, 34, 8, 1, 14, 29, 11,
    -- layer=1 filter=28 channel=24
    61, 54, 49, -24, -9, -28, -62, -36, -56,
    -- layer=1 filter=28 channel=25
    6, -10, -40, -15, -66, -7, -5, -48, -43,
    -- layer=1 filter=28 channel=26
    -12, 14, 32, -37, -26, -19, -8, -25, -20,
    -- layer=1 filter=28 channel=27
    -4, 20, 28, 11, 15, 7, -60, -63, -73,
    -- layer=1 filter=28 channel=28
    16, -5, -8, 20, 35, 9, -26, 2, 17,
    -- layer=1 filter=28 channel=29
    10, -4, -24, 16, 4, 14, -31, -50, -38,
    -- layer=1 filter=28 channel=30
    13, 3, -1, 10, 6, 4, 9, -15, -13,
    -- layer=1 filter=28 channel=31
    -7, -6, -10, 7, 7, -4, 2, 5, -1,
    -- layer=1 filter=28 channel=32
    -20, 18, 23, -35, -36, -22, -64, -27, -42,
    -- layer=1 filter=28 channel=33
    4, 2, 14, 0, 1, 18, 9, -15, -2,
    -- layer=1 filter=28 channel=34
    -14, -7, -13, 13, 6, 20, 22, 1, 11,
    -- layer=1 filter=28 channel=35
    -11, -2, -11, -17, -7, -10, 20, -2, 20,
    -- layer=1 filter=28 channel=36
    36, 10, 24, -56, -33, -39, -40, 1, -20,
    -- layer=1 filter=28 channel=37
    -18, -25, 1, 18, 19, 12, 3, 18, 20,
    -- layer=1 filter=28 channel=38
    -35, -14, -6, -8, -9, -12, 18, 20, 26,
    -- layer=1 filter=28 channel=39
    4, -17, 1, 13, -12, 4, 6, -18, 22,
    -- layer=1 filter=28 channel=40
    -2, -20, -2, 31, 25, 28, 0, 14, 21,
    -- layer=1 filter=28 channel=41
    18, 14, 22, 52, 46, 42, -37, -55, -60,
    -- layer=1 filter=28 channel=42
    -17, -25, 0, 33, 31, 25, 14, 18, 5,
    -- layer=1 filter=28 channel=43
    43, 20, -44, 2, -3, 0, -33, -58, -59,
    -- layer=1 filter=28 channel=44
    -11, 6, 13, -21, -15, -8, 12, 6, 25,
    -- layer=1 filter=28 channel=45
    -8, -11, -42, -64, -79, -35, -60, -61, -55,
    -- layer=1 filter=28 channel=46
    -1, -16, -22, -2, 4, -9, 23, 25, 15,
    -- layer=1 filter=28 channel=47
    -13, -38, -37, 4, 0, -17, 9, 21, 19,
    -- layer=1 filter=28 channel=48
    66, 50, 45, 73, 61, 59, -8, -42, -47,
    -- layer=1 filter=28 channel=49
    21, 15, 22, 31, 35, 21, -33, -54, -47,
    -- layer=1 filter=28 channel=50
    -26, -26, -20, -1, 0, 0, 20, 26, 33,
    -- layer=1 filter=28 channel=51
    -1, -21, -21, 14, 28, 23, 0, 15, 15,
    -- layer=1 filter=28 channel=52
    33, 39, 26, 26, 12, 18, 15, 31, 8,
    -- layer=1 filter=28 channel=53
    19, 13, 45, -35, -63, -64, -3, 15, 20,
    -- layer=1 filter=28 channel=54
    -8, -17, -11, 7, 8, 24, 15, 9, 9,
    -- layer=1 filter=28 channel=55
    -16, 7, -18, 8, 32, 27, 17, 24, 2,
    -- layer=1 filter=28 channel=56
    -1, -13, -29, 13, 0, -6, 9, 13, -5,
    -- layer=1 filter=28 channel=57
    -21, 0, -10, -16, -10, 14, 19, 30, 25,
    -- layer=1 filter=28 channel=58
    16, -32, -3, -32, -32, -32, 24, 22, 11,
    -- layer=1 filter=28 channel=59
    -27, -13, -1, -26, -25, 10, 37, 33, 16,
    -- layer=1 filter=28 channel=60
    -3, -18, -10, -29, -39, -6, 32, 34, 20,
    -- layer=1 filter=28 channel=61
    -18, -5, -18, 7, 14, 0, 13, -7, -6,
    -- layer=1 filter=28 channel=62
    -14, -24, -29, -40, -65, -57, -86, -135, -65,
    -- layer=1 filter=28 channel=63
    57, 107, 64, 29, 68, 56, -28, -75, -45,
    -- layer=1 filter=29 channel=0
    -5, 6, -6, -15, -3, 0, -2, -4, -11,
    -- layer=1 filter=29 channel=1
    15, 3, -3, -1, 13, -2, 5, -7, 8,
    -- layer=1 filter=29 channel=2
    -4, -12, -8, 5, 1, -16, -18, -15, -11,
    -- layer=1 filter=29 channel=3
    -15, 7, -16, 9, 9, -9, 10, -3, -13,
    -- layer=1 filter=29 channel=4
    -10, 2, -2, 7, 4, 3, -3, 0, 8,
    -- layer=1 filter=29 channel=5
    9, 4, 6, -10, -1, 4, -17, -17, -6,
    -- layer=1 filter=29 channel=6
    6, 6, -9, -5, -9, 4, -1, 8, 0,
    -- layer=1 filter=29 channel=7
    3, -17, -10, -7, -9, 1, 0, -12, -8,
    -- layer=1 filter=29 channel=8
    -12, 10, -15, 5, -16, 2, -8, 2, -13,
    -- layer=1 filter=29 channel=9
    11, 4, 13, 14, -7, 14, 9, 12, 0,
    -- layer=1 filter=29 channel=10
    -10, -7, -6, 4, -17, 0, -2, 6, -4,
    -- layer=1 filter=29 channel=11
    9, -17, 8, 9, -7, -15, -3, 7, 10,
    -- layer=1 filter=29 channel=12
    2, -3, -6, -5, -1, -14, 2, -11, -1,
    -- layer=1 filter=29 channel=13
    -15, -16, -8, 5, -10, 10, 8, 1, 1,
    -- layer=1 filter=29 channel=14
    -13, -9, -4, -6, -2, -12, -11, 11, -13,
    -- layer=1 filter=29 channel=15
    -4, -5, 9, 0, -14, -8, 5, 4, 9,
    -- layer=1 filter=29 channel=16
    8, -4, 4, -12, 0, -14, -7, 1, 3,
    -- layer=1 filter=29 channel=17
    0, 5, 5, -2, 12, 4, -9, -9, -1,
    -- layer=1 filter=29 channel=18
    8, -13, -13, 4, 2, 13, -2, 14, 4,
    -- layer=1 filter=29 channel=19
    0, 2, 1, -6, 8, -5, -12, 5, 2,
    -- layer=1 filter=29 channel=20
    -4, 1, -2, 8, 5, 6, 4, -10, 2,
    -- layer=1 filter=29 channel=21
    -14, 8, -15, -5, 6, -9, 13, -4, 6,
    -- layer=1 filter=29 channel=22
    2, -3, -13, -10, 5, 1, 2, 3, -10,
    -- layer=1 filter=29 channel=23
    15, 6, 4, 11, 1, -2, 12, 11, 7,
    -- layer=1 filter=29 channel=24
    -1, 9, 0, -11, -11, -8, 0, 12, -5,
    -- layer=1 filter=29 channel=25
    14, -11, -7, -7, -7, -1, 14, 6, 12,
    -- layer=1 filter=29 channel=26
    -1, 7, -3, -4, 13, 2, 4, 11, -2,
    -- layer=1 filter=29 channel=27
    1, 6, -9, -12, -8, -10, -16, 12, 3,
    -- layer=1 filter=29 channel=28
    -5, -3, 7, -4, 2, -16, -9, 1, -14,
    -- layer=1 filter=29 channel=29
    -13, 5, -9, -6, 0, 9, 5, -5, 10,
    -- layer=1 filter=29 channel=30
    6, 11, 0, 2, -8, 0, -6, 0, 15,
    -- layer=1 filter=29 channel=31
    0, 1, -6, -4, -10, 6, -1, -3, -7,
    -- layer=1 filter=29 channel=32
    -5, 6, -4, 0, 0, -3, 4, -17, -7,
    -- layer=1 filter=29 channel=33
    8, 8, -4, -4, -11, 5, 4, 0, 8,
    -- layer=1 filter=29 channel=34
    9, -2, 7, -14, 6, -2, 1, 11, 9,
    -- layer=1 filter=29 channel=35
    -16, -17, -6, 6, -3, -16, 0, 9, -11,
    -- layer=1 filter=29 channel=36
    12, -13, 1, -12, 10, 14, 12, 11, 15,
    -- layer=1 filter=29 channel=37
    -14, 2, -6, -16, -3, 11, -9, -17, -6,
    -- layer=1 filter=29 channel=38
    -4, 2, 8, -13, -2, 3, -12, -9, -17,
    -- layer=1 filter=29 channel=39
    5, -11, 9, -9, -13, 5, -12, 14, -16,
    -- layer=1 filter=29 channel=40
    -18, 11, -5, 8, 10, -11, 3, -9, -15,
    -- layer=1 filter=29 channel=41
    -14, 5, -8, 7, -12, -5, -1, 2, -1,
    -- layer=1 filter=29 channel=42
    -14, 2, 10, -14, -9, 7, -3, -16, 4,
    -- layer=1 filter=29 channel=43
    0, 4, 8, -14, 3, 6, -13, 4, -6,
    -- layer=1 filter=29 channel=44
    1, -8, 1, 1, 3, 7, 8, -5, -17,
    -- layer=1 filter=29 channel=45
    0, -6, -2, 11, 0, -7, -2, -8, -11,
    -- layer=1 filter=29 channel=46
    -18, -8, 0, 8, -13, 10, 5, -1, -18,
    -- layer=1 filter=29 channel=47
    -11, -1, 9, -12, -3, -3, -8, 6, -8,
    -- layer=1 filter=29 channel=48
    0, 1, -15, -8, 11, 14, 4, 0, 7,
    -- layer=1 filter=29 channel=49
    11, 1, 0, -10, 1, 5, 11, 11, -16,
    -- layer=1 filter=29 channel=50
    -1, 11, 13, -4, 1, -9, -10, -3, 6,
    -- layer=1 filter=29 channel=51
    8, 5, 6, -7, -4, 3, 3, -3, 0,
    -- layer=1 filter=29 channel=52
    0, -11, -10, 0, -5, -12, 7, 6, 7,
    -- layer=1 filter=29 channel=53
    8, -4, 9, 12, 10, 11, 5, 3, -2,
    -- layer=1 filter=29 channel=54
    0, 0, -17, -17, -7, -11, -9, 0, -13,
    -- layer=1 filter=29 channel=55
    17, -7, -4, 0, -9, -5, 14, 2, -2,
    -- layer=1 filter=29 channel=56
    -16, 10, -13, -3, 3, -4, -10, -18, 2,
    -- layer=1 filter=29 channel=57
    -15, 5, -17, 11, 9, 2, -16, 10, -4,
    -- layer=1 filter=29 channel=58
    -7, 0, -8, -6, 5, -13, 2, 3, 7,
    -- layer=1 filter=29 channel=59
    -1, 0, -4, 0, -13, -17, 12, 1, 6,
    -- layer=1 filter=29 channel=60
    6, 3, 9, 6, 1, 6, 7, -8, -2,
    -- layer=1 filter=29 channel=61
    -18, -7, -1, -1, -2, -2, -5, 9, -3,
    -- layer=1 filter=29 channel=62
    0, -15, -9, 6, 0, -11, -16, 9, 9,
    -- layer=1 filter=29 channel=63
    3, 6, 7, -10, 6, -14, -12, -2, 3,
    -- layer=1 filter=30 channel=0
    -11, 8, 20, -6, 37, 6, 4, 34, 0,
    -- layer=1 filter=30 channel=1
    -33, 26, 35, -17, -1, 27, -34, -14, 22,
    -- layer=1 filter=30 channel=2
    7, -17, -60, 1, 7, -31, 5, 11, -25,
    -- layer=1 filter=30 channel=3
    -6, -60, -22, -67, -38, -33, -23, -29, -6,
    -- layer=1 filter=30 channel=4
    0, 0, 13, -12, 24, 4, -9, 11, 12,
    -- layer=1 filter=30 channel=5
    6, 58, 26, -42, -8, -26, -80, -67, -35,
    -- layer=1 filter=30 channel=6
    -19, 5, 5, 17, -15, -2, -21, 4, 5,
    -- layer=1 filter=30 channel=7
    -28, -6, -2, -10, 16, 6, -28, 9, 0,
    -- layer=1 filter=30 channel=8
    0, 39, 28, -13, 7, 22, -22, 20, 24,
    -- layer=1 filter=30 channel=9
    3, -2, -9, 1, 4, -25, 5, 11, 1,
    -- layer=1 filter=30 channel=10
    20, 16, 5, 15, 10, 3, -2, 0, 21,
    -- layer=1 filter=30 channel=11
    28, 26, 1, 14, 14, 5, 0, 3, 11,
    -- layer=1 filter=30 channel=12
    21, -4, -45, 31, 1, -101, 32, 10, -48,
    -- layer=1 filter=30 channel=13
    -23, 11, 24, -6, 6, 3, -22, 24, 5,
    -- layer=1 filter=30 channel=14
    -11, -28, -3, -13, 10, 9, -17, 1, 12,
    -- layer=1 filter=30 channel=15
    22, 0, -30, 31, 36, -15, 27, 22, 6,
    -- layer=1 filter=30 channel=16
    -33, -44, 4, -51, -21, -28, -37, -53, -8,
    -- layer=1 filter=30 channel=17
    -18, -9, 5, -35, 6, 32, -10, 4, 24,
    -- layer=1 filter=30 channel=18
    0, 6, -6, -1, -16, 12, -3, -13, -11,
    -- layer=1 filter=30 channel=19
    2, 32, -5, 0, 6, 19, -2, 23, -2,
    -- layer=1 filter=30 channel=20
    3, -39, -8, 15, -25, -21, 0, 1, 0,
    -- layer=1 filter=30 channel=21
    -16, 13, 24, -34, -23, -7, -35, 0, -14,
    -- layer=1 filter=30 channel=22
    -25, -14, -32, -93, -77, -66, -70, -105, -79,
    -- layer=1 filter=30 channel=23
    -40, -4, 16, 2, 45, 70, 30, 45, 64,
    -- layer=1 filter=30 channel=24
    18, -40, 49, 32, -7, -2, -23, -6, 36,
    -- layer=1 filter=30 channel=25
    -63, 25, 9, -28, -16, 15, -54, 5, 8,
    -- layer=1 filter=30 channel=26
    -3, 5, 15, 2, 10, 9, 18, 18, 12,
    -- layer=1 filter=30 channel=27
    3, 34, -36, -27, 32, -134, -9, 61, -61,
    -- layer=1 filter=30 channel=28
    -26, 37, 1, -36, 40, 13, -38, 0, 12,
    -- layer=1 filter=30 channel=29
    -4, 56, 53, -30, 17, 38, -42, 25, 47,
    -- layer=1 filter=30 channel=30
    7, -11, 8, -13, -12, 8, 2, -8, -5,
    -- layer=1 filter=30 channel=31
    30, 32, 2, 18, 22, 4, -3, 13, 0,
    -- layer=1 filter=30 channel=32
    62, 21, -54, 45, 6, -76, 43, 59, -26,
    -- layer=1 filter=30 channel=33
    -10, -3, -12, 4, 6, 0, 4, 12, 4,
    -- layer=1 filter=30 channel=34
    -13, 18, 5, 8, 21, 2, -21, -1, -8,
    -- layer=1 filter=30 channel=35
    -3, 1, -6, 10, -2, -22, -10, -8, -12,
    -- layer=1 filter=30 channel=36
    11, -17, -5, -29, -10, -34, 9, -6, 4,
    -- layer=1 filter=30 channel=37
    0, 19, -8, -7, 0, 6, -22, -2, 6,
    -- layer=1 filter=30 channel=38
    0, -9, -1, 26, -5, -11, -2, -3, 6,
    -- layer=1 filter=30 channel=39
    -9, 8, -8, 13, 10, 1, -3, 6, 16,
    -- layer=1 filter=30 channel=40
    -4, -29, 7, -24, -9, -8, -19, -28, 12,
    -- layer=1 filter=30 channel=41
    14, 49, 1, -41, 15, 0, -56, -45, -29,
    -- layer=1 filter=30 channel=42
    -8, 16, 20, -18, 3, 11, -28, -5, -1,
    -- layer=1 filter=30 channel=43
    -6, 25, 12, -13, 15, 29, -45, 9, 4,
    -- layer=1 filter=30 channel=44
    19, 7, -26, 35, -9, -33, 41, 11, -9,
    -- layer=1 filter=30 channel=45
    -15, 11, 31, -4, -2, 34, -24, 12, 7,
    -- layer=1 filter=30 channel=46
    -56, -37, -51, -22, -23, -9, -7, -8, 0,
    -- layer=1 filter=30 channel=47
    -7, 26, 5, -21, -3, 31, -5, -10, 1,
    -- layer=1 filter=30 channel=48
    -22, -10, -19, -93, -66, -45, -77, -101, -56,
    -- layer=1 filter=30 channel=49
    44, 18, -12, 26, -2, -44, 20, -3, -37,
    -- layer=1 filter=30 channel=50
    8, 30, 4, 10, 12, 0, 3, 16, 12,
    -- layer=1 filter=30 channel=51
    8, 9, -1, 0, 12, -10, -17, -6, -21,
    -- layer=1 filter=30 channel=52
    11, 13, 6, -28, 0, 19, -6, -20, 30,
    -- layer=1 filter=30 channel=53
    22, -65, -31, -33, -14, -80, 2, -22, -30,
    -- layer=1 filter=30 channel=54
    -18, 15, 8, 10, 16, 14, -3, 2, -13,
    -- layer=1 filter=30 channel=55
    -10, 14, 25, -13, -18, 44, 8, 25, 50,
    -- layer=1 filter=30 channel=56
    -22, 17, 24, -37, -7, 17, -42, -1, 28,
    -- layer=1 filter=30 channel=57
    17, 5, -15, 23, 14, -29, 0, -1, -14,
    -- layer=1 filter=30 channel=58
    4, 9, 4, -16, 9, -25, -25, 10, -1,
    -- layer=1 filter=30 channel=59
    -2, -1, 0, 17, 1, -30, 9, -4, 0,
    -- layer=1 filter=30 channel=60
    8, -4, -26, 20, 14, -19, -3, 7, -12,
    -- layer=1 filter=30 channel=61
    -23, 2, 27, -37, 18, 31, -25, -5, 25,
    -- layer=1 filter=30 channel=62
    54, -99, -75, 28, -140, -121, 10, -156, -17,
    -- layer=1 filter=30 channel=63
    -15, -129, -55, -133, -146, -101, -42, -187, -85,
    -- layer=1 filter=31 channel=0
    -18, -66, 55, -29, -31, 38, 6, 0, 66,
    -- layer=1 filter=31 channel=1
    -22, 5, -7, -11, -3, -14, -1, -7, 10,
    -- layer=1 filter=31 channel=2
    -3, -17, 10, 9, 22, 30, 13, 22, 55,
    -- layer=1 filter=31 channel=3
    10, -40, 0, -80, -71, -38, -94, -68, -106,
    -- layer=1 filter=31 channel=4
    -11, -64, 10, -13, -3, 33, -7, -20, 73,
    -- layer=1 filter=31 channel=5
    -71, -90, -20, -120, -80, 4, -52, 5, 66,
    -- layer=1 filter=31 channel=6
    -45, -109, -50, -50, -76, 41, -99, -47, 9,
    -- layer=1 filter=31 channel=7
    -75, -34, -43, -121, -149, -50, -103, -66, -49,
    -- layer=1 filter=31 channel=8
    -17, -80, -44, -32, 3, -66, -89, -8, -53,
    -- layer=1 filter=31 channel=9
    -43, -43, -32, -51, -47, -5, -16, 16, 14,
    -- layer=1 filter=31 channel=10
    101, 118, 77, 105, 112, 75, 121, 79, 61,
    -- layer=1 filter=31 channel=11
    -17, -81, 4, -6, 15, 6, -21, -18, 77,
    -- layer=1 filter=31 channel=12
    28, -44, 69, -3, -40, 49, 39, 36, 92,
    -- layer=1 filter=31 channel=13
    -23, -47, -3, -34, -71, -9, 17, -7, 50,
    -- layer=1 filter=31 channel=14
    -2, -20, -3, -69, -51, -21, -43, -55, -11,
    -- layer=1 filter=31 channel=15
    -14, -29, -95, 11, 24, -50, 0, 3, -16,
    -- layer=1 filter=31 channel=16
    30, -41, -45, -60, -32, -34, -91, -44, -54,
    -- layer=1 filter=31 channel=17
    12, 6, 75, -22, -68, -8, -37, -27, -24,
    -- layer=1 filter=31 channel=18
    -12, -8, -7, -14, -8, 14, 0, -12, 5,
    -- layer=1 filter=31 channel=19
    -21, -45, -57, -65, -9, -70, -85, 0, -5,
    -- layer=1 filter=31 channel=20
    -1, -46, 48, -1, -42, 36, 14, 10, 20,
    -- layer=1 filter=31 channel=21
    15, 38, 67, 35, 15, 18, 40, 34, 27,
    -- layer=1 filter=31 channel=22
    -14, -48, -12, -23, -19, 26, 34, 50, 127,
    -- layer=1 filter=31 channel=23
    -32, -28, -15, -38, -53, -69, -61, -79, -74,
    -- layer=1 filter=31 channel=24
    130, 97, 111, 107, 101, 104, 124, 117, 73,
    -- layer=1 filter=31 channel=25
    -23, 14, 11, -6, 17, 6, -5, 30, 11,
    -- layer=1 filter=31 channel=26
    71, 94, 84, 99, 91, 57, 88, 69, 64,
    -- layer=1 filter=31 channel=27
    7, -100, 49, -18, -19, 25, 5, 27, 72,
    -- layer=1 filter=31 channel=28
    34, -48, -65, -95, -110, -113, -52, -53, -28,
    -- layer=1 filter=31 channel=29
    -28, -18, -32, -64, -35, -35, -67, 8, -30,
    -- layer=1 filter=31 channel=30
    -11, -17, -9, -6, -4, -8, 3, -10, 2,
    -- layer=1 filter=31 channel=31
    36, 1, -33, -22, 11, -13, -4, 30, -9,
    -- layer=1 filter=31 channel=32
    -42, -84, 76, -45, -57, 48, 37, 61, 86,
    -- layer=1 filter=31 channel=33
    -12, -19, -13, 0, -3, 1, 1, -5, 4,
    -- layer=1 filter=31 channel=34
    20, 4, -3, -3, -29, -11, -1, 19, -13,
    -- layer=1 filter=31 channel=35
    -41, -86, -116, -54, -20, -20, -28, 16, -51,
    -- layer=1 filter=31 channel=36
    73, -37, -51, -25, -6, 6, -31, -74, -89,
    -- layer=1 filter=31 channel=37
    3, 6, 6, -11, -54, 3, 24, -25, 6,
    -- layer=1 filter=31 channel=38
    -48, -78, -88, -12, -3, -27, -25, 1, -91,
    -- layer=1 filter=31 channel=39
    6, -14, -2, -10, -1, -4, -14, -10, 13,
    -- layer=1 filter=31 channel=40
    15, 27, 10, 2, 16, 6, -11, 0, 4,
    -- layer=1 filter=31 channel=41
    -100, -104, -39, -135, -62, -10, -71, -41, 51,
    -- layer=1 filter=31 channel=42
    -47, -51, -8, -53, -95, -4, -80, -42, 15,
    -- layer=1 filter=31 channel=43
    -31, 40, 4, -41, -13, -12, -31, 38, -15,
    -- layer=1 filter=31 channel=44
    -9, -25, 32, 40, 5, 40, 15, 25, 12,
    -- layer=1 filter=31 channel=45
    -1, -8, -46, -58, -23, -49, -39, 14, -15,
    -- layer=1 filter=31 channel=46
    15, 28, 12, 16, 24, -6, 14, 33, 37,
    -- layer=1 filter=31 channel=47
    -1, -25, -76, -102, -74, -93, -116, -66, -86,
    -- layer=1 filter=31 channel=48
    -85, -124, -19, -102, -53, 11, -11, 1, 97,
    -- layer=1 filter=31 channel=49
    -6, -83, 26, -20, -8, 31, 9, 43, 110,
    -- layer=1 filter=31 channel=50
    22, -4, -11, 20, 1, -26, -26, -5, -40,
    -- layer=1 filter=31 channel=51
    -79, -80, -61, -82, -70, -45, -93, -54, 16,
    -- layer=1 filter=31 channel=52
    127, 44, 66, 55, 54, 51, 64, 54, 49,
    -- layer=1 filter=31 channel=53
    14, -71, -9, -97, -84, -14, -75, -74, -33,
    -- layer=1 filter=31 channel=54
    -76, -71, -71, -39, -17, -6, -109, -42, -16,
    -- layer=1 filter=31 channel=55
    11, 10, 59, -27, -61, -48, -37, -50, -13,
    -- layer=1 filter=31 channel=56
    -43, -24, -30, -69, -38, -21, -58, -16, -51,
    -- layer=1 filter=31 channel=57
    -84, -106, -54, -41, -46, -15, -38, -60, -4,
    -- layer=1 filter=31 channel=58
    2, -52, -19, -46, -116, -77, -54, -54, -57,
    -- layer=1 filter=31 channel=59
    -57, -60, -68, 38, 48, -14, 52, 43, -40,
    -- layer=1 filter=31 channel=60
    -8, -64, -39, -15, -1, -51, 20, 4, -97,
    -- layer=1 filter=31 channel=61
    -45, -29, -8, -38, -59, -50, -58, -36, -20,
    -- layer=1 filter=31 channel=62
    42, 0, 75, -30, 41, 86, 51, 61, 123,
    -- layer=1 filter=31 channel=63
    68, -42, 4, -77, -14, 22, 47, 93, 55,
    -- layer=1 filter=32 channel=0
    -5, 11, 5, 7, -2, -4, -8, -8, -1,
    -- layer=1 filter=32 channel=1
    5, -2, 4, -8, 2, 12, 1, -14, 2,
    -- layer=1 filter=32 channel=2
    -4, -5, -9, -13, 0, -5, -11, 3, 11,
    -- layer=1 filter=32 channel=3
    -13, -13, 11, -9, 11, 9, -12, -14, 8,
    -- layer=1 filter=32 channel=4
    -12, -1, 2, 2, 10, -3, -3, 0, 0,
    -- layer=1 filter=32 channel=5
    -5, -13, 7, -9, -13, 2, 5, 4, 9,
    -- layer=1 filter=32 channel=6
    -7, -9, 8, -14, 6, -11, 3, -13, 7,
    -- layer=1 filter=32 channel=7
    1, -2, -12, -13, 6, -1, -16, 1, -12,
    -- layer=1 filter=32 channel=8
    -9, -7, 10, 2, -8, 8, 2, -8, -15,
    -- layer=1 filter=32 channel=9
    -1, -9, 2, -7, 0, 0, -11, 5, -7,
    -- layer=1 filter=32 channel=10
    8, 3, -1, 11, -10, -6, 1, 7, -14,
    -- layer=1 filter=32 channel=11
    -9, 9, -4, 0, -15, -12, -6, 7, -15,
    -- layer=1 filter=32 channel=12
    2, -16, -18, -11, -16, 3, 8, -4, -24,
    -- layer=1 filter=32 channel=13
    -15, -11, 2, 7, -10, 1, -6, -9, -3,
    -- layer=1 filter=32 channel=14
    4, -4, 0, 7, 4, -17, 10, 6, 0,
    -- layer=1 filter=32 channel=15
    10, 11, -5, -4, 4, -4, 12, -13, -15,
    -- layer=1 filter=32 channel=16
    12, -5, -7, 4, 1, 12, -3, 0, 8,
    -- layer=1 filter=32 channel=17
    15, 11, -5, 12, -11, -4, 1, -11, 0,
    -- layer=1 filter=32 channel=18
    5, 10, -3, 0, 8, 2, -9, -7, 2,
    -- layer=1 filter=32 channel=19
    -5, 3, -10, 3, 11, 8, 11, 0, 4,
    -- layer=1 filter=32 channel=20
    -2, -11, 7, -1, -7, 13, -16, -7, 9,
    -- layer=1 filter=32 channel=21
    -13, -10, -18, -2, -2, -5, 0, -1, 9,
    -- layer=1 filter=32 channel=22
    -2, -16, -11, -15, -6, -19, -2, 6, 8,
    -- layer=1 filter=32 channel=23
    -2, 13, 0, -12, 12, -13, -2, -11, 0,
    -- layer=1 filter=32 channel=24
    4, 9, 0, -5, -3, -6, 4, -14, -8,
    -- layer=1 filter=32 channel=25
    -5, 4, -14, 0, -7, -15, -17, -7, -6,
    -- layer=1 filter=32 channel=26
    12, -1, 4, -1, -4, -12, 2, -6, -7,
    -- layer=1 filter=32 channel=27
    2, 0, 0, 11, -2, 3, 7, 5, -12,
    -- layer=1 filter=32 channel=28
    -12, 8, -6, 11, -7, 5, 9, -7, -4,
    -- layer=1 filter=32 channel=29
    -7, 11, 10, 7, 5, 1, -14, -11, -1,
    -- layer=1 filter=32 channel=30
    -6, 3, -4, 1, 4, -1, 1, -2, -3,
    -- layer=1 filter=32 channel=31
    -16, 7, 7, 5, -1, 7, 0, 3, 11,
    -- layer=1 filter=32 channel=32
    -18, -12, -9, 7, -1, 4, -9, 4, 4,
    -- layer=1 filter=32 channel=33
    4, 2, -11, 12, -5, 3, -13, -6, -4,
    -- layer=1 filter=32 channel=34
    13, -7, -9, 0, 2, -14, 11, 2, 0,
    -- layer=1 filter=32 channel=35
    -11, -11, 12, -3, 1, -9, 12, 0, 0,
    -- layer=1 filter=32 channel=36
    -10, 11, -16, -13, 5, 10, -2, -6, 8,
    -- layer=1 filter=32 channel=37
    11, -15, -4, -1, -1, 5, -2, -14, 1,
    -- layer=1 filter=32 channel=38
    -14, -3, -13, 0, 0, 0, -7, -10, -13,
    -- layer=1 filter=32 channel=39
    -9, -15, 9, -12, 0, 7, -11, 7, -5,
    -- layer=1 filter=32 channel=40
    6, -1, -6, 8, -15, -6, 1, 3, 6,
    -- layer=1 filter=32 channel=41
    11, -4, -3, -1, 8, 1, 7, -15, -12,
    -- layer=1 filter=32 channel=42
    -14, 0, -1, -14, -8, -12, 8, 3, -8,
    -- layer=1 filter=32 channel=43
    5, -12, -8, -1, -8, -13, -3, -12, 2,
    -- layer=1 filter=32 channel=44
    -11, -3, -5, -18, -16, 8, 0, 1, 8,
    -- layer=1 filter=32 channel=45
    -1, 8, 10, -6, -4, -16, 0, 5, -7,
    -- layer=1 filter=32 channel=46
    7, -11, 0, 0, 7, -9, 7, 12, -10,
    -- layer=1 filter=32 channel=47
    -3, -8, 7, 5, 1, 0, 10, -8, -5,
    -- layer=1 filter=32 channel=48
    -8, 0, 0, -8, -5, -14, -12, -9, 6,
    -- layer=1 filter=32 channel=49
    -6, 1, 4, 1, 2, 8, 10, -2, -4,
    -- layer=1 filter=32 channel=50
    -7, 11, -5, -5, -4, 12, 2, -9, -13,
    -- layer=1 filter=32 channel=51
    -14, -11, -9, 7, 9, 8, 10, 0, -4,
    -- layer=1 filter=32 channel=52
    0, 6, 6, 13, 6, -11, 1, -8, 5,
    -- layer=1 filter=32 channel=53
    -2, 1, -13, 9, 5, 7, 2, 8, 2,
    -- layer=1 filter=32 channel=54
    -13, -2, 9, -9, -13, -3, 12, -14, -10,
    -- layer=1 filter=32 channel=55
    2, 0, -13, 5, 14, -3, -15, 0, -11,
    -- layer=1 filter=32 channel=56
    11, 8, -11, -8, -2, -6, 3, -18, -3,
    -- layer=1 filter=32 channel=57
    -4, 7, 1, 5, 1, -9, 3, -7, 10,
    -- layer=1 filter=32 channel=58
    9, 7, -10, -13, -8, -7, -4, -3, -12,
    -- layer=1 filter=32 channel=59
    -16, -12, -9, 4, 6, -13, 5, -4, 3,
    -- layer=1 filter=32 channel=60
    -2, -7, 13, -2, -7, -9, -8, 8, 9,
    -- layer=1 filter=32 channel=61
    -9, 9, -16, -8, 11, 5, -2, -4, -10,
    -- layer=1 filter=32 channel=62
    2, -12, 7, -8, -15, 6, -16, 0, -9,
    -- layer=1 filter=32 channel=63
    -6, 0, 11, 4, 0, 9, 4, 0, 7,
    -- layer=1 filter=33 channel=0
    -38, -27, -3, -16, 2, 0, 34, 57, 63,
    -- layer=1 filter=33 channel=1
    -31, -34, -29, -37, -17, 15, 21, 35, 38,
    -- layer=1 filter=33 channel=2
    21, -7, 0, 8, -8, -17, -9, -1, -11,
    -- layer=1 filter=33 channel=3
    26, 48, 14, 27, 25, 33, 1, 33, -35,
    -- layer=1 filter=33 channel=4
    -26, -23, -5, -19, -41, -26, 15, 31, 51,
    -- layer=1 filter=33 channel=5
    20, 15, -32, 6, 23, 13, 49, 52, 22,
    -- layer=1 filter=33 channel=6
    -19, 0, 3, -31, -12, 0, 9, 17, 31,
    -- layer=1 filter=33 channel=7
    32, 22, 14, -41, -9, -20, -1, 22, 17,
    -- layer=1 filter=33 channel=8
    4, -1, 9, -4, 4, 3, 2, 0, 16,
    -- layer=1 filter=33 channel=9
    27, 19, 24, 14, -12, -56, -25, -31, -25,
    -- layer=1 filter=33 channel=10
    -23, -42, -22, 3, 6, -12, 19, 15, 24,
    -- layer=1 filter=33 channel=11
    10, -13, -9, -13, 2, 8, 0, 12, 20,
    -- layer=1 filter=33 channel=12
    0, -2, -25, 7, -5, -40, -3, -11, -12,
    -- layer=1 filter=33 channel=13
    -40, -29, -5, -18, 6, 16, 23, 41, 47,
    -- layer=1 filter=33 channel=14
    -18, -2, 9, 0, 10, 30, 9, 39, 25,
    -- layer=1 filter=33 channel=15
    47, 34, 3, 38, -11, -55, -72, -51, -49,
    -- layer=1 filter=33 channel=16
    19, 22, 52, 83, 32, 61, 37, 20, -9,
    -- layer=1 filter=33 channel=17
    -32, -30, 7, 32, 11, 46, 37, 47, 17,
    -- layer=1 filter=33 channel=18
    -13, 5, 7, -8, -4, -12, -5, 9, 11,
    -- layer=1 filter=33 channel=19
    17, 7, 2, -6, -10, -11, -11, -10, 2,
    -- layer=1 filter=33 channel=20
    -18, 2, -10, -22, 15, 17, 5, 18, 41,
    -- layer=1 filter=33 channel=21
    -29, -19, -7, 6, 9, -6, 30, 19, 45,
    -- layer=1 filter=33 channel=22
    34, 8, -11, 92, 107, 93, 46, 34, 35,
    -- layer=1 filter=33 channel=23
    -61, -70, -18, -15, -2, 28, -33, -16, 12,
    -- layer=1 filter=33 channel=24
    -65, -70, -25, 23, -14, -14, 4, 48, 3,
    -- layer=1 filter=33 channel=25
    26, 20, -38, -57, -64, -31, -33, -38, -47,
    -- layer=1 filter=33 channel=26
    -13, 19, 31, 3, 9, -18, 8, -11, -19,
    -- layer=1 filter=33 channel=27
    1, 9, -5, -20, 1, -12, 12, -8, 12,
    -- layer=1 filter=33 channel=28
    -18, 1, 17, -29, -22, -44, -13, -21, 2,
    -- layer=1 filter=33 channel=29
    -40, -9, -34, -54, -76, -39, -50, -28, -24,
    -- layer=1 filter=33 channel=30
    4, 2, 15, -5, 6, 3, 7, -8, 14,
    -- layer=1 filter=33 channel=31
    52, 36, 1, 16, -25, -26, -43, -41, -53,
    -- layer=1 filter=33 channel=32
    -19, -2, -16, -78, -58, -76, -92, -60, -50,
    -- layer=1 filter=33 channel=33
    1, 6, 5, 0, -7, -9, 9, -10, -8,
    -- layer=1 filter=33 channel=34
    20, 3, 6, 7, -18, 0, 10, -3, 12,
    -- layer=1 filter=33 channel=35
    54, 30, 1, 36, 2, -23, -34, -45, -70,
    -- layer=1 filter=33 channel=36
    -29, 25, 21, 52, 9, -4, -67, -46, -66,
    -- layer=1 filter=33 channel=37
    0, 11, -1, -25, -39, 3, 0, 11, 22,
    -- layer=1 filter=33 channel=38
    59, 47, 23, 18, -30, -63, -33, -18, -44,
    -- layer=1 filter=33 channel=39
    15, -18, 10, -1, -9, 4, -3, 5, -10,
    -- layer=1 filter=33 channel=40
    -34, -17, -18, -23, 2, -3, 6, 16, 45,
    -- layer=1 filter=33 channel=41
    -29, 1, -40, -21, 10, 28, 44, 31, 26,
    -- layer=1 filter=33 channel=42
    -32, -21, 12, -12, 17, 14, 37, 41, 59,
    -- layer=1 filter=33 channel=43
    -8, -34, -78, -51, -67, -39, -69, -105, -61,
    -- layer=1 filter=33 channel=44
    34, 32, 36, 16, 0, -52, -34, -50, -68,
    -- layer=1 filter=33 channel=45
    -3, -22, -6, -32, -78, -59, -129, -157, -89,
    -- layer=1 filter=33 channel=46
    -47, -38, -19, -44, -28, -13, -45, -14, 9,
    -- layer=1 filter=33 channel=47
    29, 43, 37, -23, -37, -16, -28, -1, 1,
    -- layer=1 filter=33 channel=48
    1, -22, -58, 16, 54, 58, 39, 31, 32,
    -- layer=1 filter=33 channel=49
    25, -1, -41, 6, 25, 17, 7, -4, -12,
    -- layer=1 filter=33 channel=50
    14, 16, -7, -1, -15, -36, -3, -19, -13,
    -- layer=1 filter=33 channel=51
    29, 17, 0, -28, -16, -22, -2, 4, -3,
    -- layer=1 filter=33 channel=52
    -3, -32, -16, 49, -8, 12, 34, 64, 43,
    -- layer=1 filter=33 channel=53
    -20, 19, 20, 31, -9, -8, -63, -66, -74,
    -- layer=1 filter=33 channel=54
    29, 6, 6, -18, 4, 13, 1, 7, 0,
    -- layer=1 filter=33 channel=55
    -24, -26, -14, -7, -3, 38, 27, 11, 3,
    -- layer=1 filter=33 channel=56
    -36, -30, 3, -44, -16, 5, 11, 30, 19,
    -- layer=1 filter=33 channel=57
    22, 43, 11, 24, 6, -11, -12, -16, -27,
    -- layer=1 filter=33 channel=58
    6, 34, 30, 38, 12, 6, -21, -23, -61,
    -- layer=1 filter=33 channel=59
    40, 19, 18, 25, -1, -31, -18, -33, -41,
    -- layer=1 filter=33 channel=60
    37, 35, 26, 31, -7, -13, -52, -40, -51,
    -- layer=1 filter=33 channel=61
    -38, -33, 14, -11, 0, 32, 20, 52, 61,
    -- layer=1 filter=33 channel=62
    12, -6, -44, -6, -64, -73, -39, -73, -22,
    -- layer=1 filter=33 channel=63
    50, 31, 72, 120, 56, 63, 53, 59, 68,
    -- layer=1 filter=34 channel=0
    -9, 12, -11, 66, -15, -22, 39, -34, -25,
    -- layer=1 filter=34 channel=1
    -81, -1, -11, -47, 48, -10, 31, 16, 12,
    -- layer=1 filter=34 channel=2
    -15, 14, -21, 69, 1, -32, 32, -17, -2,
    -- layer=1 filter=34 channel=3
    -4, -67, -17, -44, -52, 6, -53, -13, -44,
    -- layer=1 filter=34 channel=4
    -57, 20, -16, 8, 21, -26, 25, 0, -12,
    -- layer=1 filter=34 channel=5
    -98, 25, 35, 6, 56, 1, 45, -16, -4,
    -- layer=1 filter=34 channel=6
    -69, -12, -5, -9, 30, -24, 48, -2, -3,
    -- layer=1 filter=34 channel=7
    -13, 9, 0, -69, 58, -10, 24, 47, -23,
    -- layer=1 filter=34 channel=8
    -18, -26, 1, -68, -4, 8, -30, 49, 9,
    -- layer=1 filter=34 channel=9
    -42, -34, -2, -55, 15, 16, -4, -29, 15,
    -- layer=1 filter=34 channel=10
    -11, -12, -66, -57, 4, -7, -25, 17, 39,
    -- layer=1 filter=34 channel=11
    -76, 21, -5, 24, 11, -4, 1, -4, -4,
    -- layer=1 filter=34 channel=12
    -12, 28, -6, 89, 0, -46, 109, -45, 5,
    -- layer=1 filter=34 channel=13
    -25, 8, -6, 24, 13, -9, -4, -6, -21,
    -- layer=1 filter=34 channel=14
    18, -3, 12, 6, 0, 12, -14, 0, -13,
    -- layer=1 filter=34 channel=15
    -20, -6, 21, -78, 38, 46, -38, 48, 9,
    -- layer=1 filter=34 channel=16
    13, -38, -24, 26, -41, -29, -60, 57, -2,
    -- layer=1 filter=34 channel=17
    11, 26, 14, 29, 3, 7, 8, 45, 8,
    -- layer=1 filter=34 channel=18
    1, -15, 16, 3, 4, 13, -4, 11, -15,
    -- layer=1 filter=34 channel=19
    -20, -29, 17, -75, 41, 5, -13, 33, 11,
    -- layer=1 filter=34 channel=20
    -27, 4, -9, 58, -59, -37, 72, -62, 18,
    -- layer=1 filter=34 channel=21
    -20, 29, -1, -17, 33, 10, 24, 15, -1,
    -- layer=1 filter=34 channel=22
    -38, 81, 3, 77, 29, 0, 76, -14, 6,
    -- layer=1 filter=34 channel=23
    22, 8, 37, -13, 49, 34, -14, 25, 26,
    -- layer=1 filter=34 channel=24
    -1, -47, -27, 41, -33, -5, -20, -14, -16,
    -- layer=1 filter=34 channel=25
    45, -41, 23, -106, 25, 22, 27, 75, 17,
    -- layer=1 filter=34 channel=26
    -5, -30, -43, -27, -26, -2, 0, -8, 8,
    -- layer=1 filter=34 channel=27
    -45, 43, -21, 80, 25, -41, 88, 0, -38,
    -- layer=1 filter=34 channel=28
    17, -7, -25, -61, 1, -8, -31, 61, -65,
    -- layer=1 filter=34 channel=29
    14, -104, -34, -116, -18, -29, -55, 60, -5,
    -- layer=1 filter=34 channel=30
    -5, -10, 8, -4, 13, 10, 7, -1, -4,
    -- layer=1 filter=34 channel=31
    9, -15, 19, -54, 8, 32, -54, 50, 11,
    -- layer=1 filter=34 channel=32
    -13, 5, -35, 67, -45, -34, 55, -61, 0,
    -- layer=1 filter=34 channel=33
    -3, -14, -10, 3, -4, 2, 0, 12, -2,
    -- layer=1 filter=34 channel=34
    10, 0, 0, -32, -13, 8, 2, 3, -6,
    -- layer=1 filter=34 channel=35
    -14, -53, 15, -52, 10, 32, -49, 47, 11,
    -- layer=1 filter=34 channel=36
    33, -12, 25, 23, -41, 50, -53, 24, -4,
    -- layer=1 filter=34 channel=37
    -14, 11, 6, -45, 21, 7, -3, 10, 11,
    -- layer=1 filter=34 channel=38
    -50, -12, 18, -95, 40, 39, -13, 56, -13,
    -- layer=1 filter=34 channel=39
    11, 6, -6, -18, -18, -16, 4, -10, 15,
    -- layer=1 filter=34 channel=40
    47, -21, 8, 30, -1, 16, -31, 29, -12,
    -- layer=1 filter=34 channel=41
    -133, 29, 32, -4, 61, -31, 54, -28, -2,
    -- layer=1 filter=34 channel=42
    -40, 15, 13, -9, 42, 5, 31, -25, -24,
    -- layer=1 filter=34 channel=43
    -28, -89, -10, -95, -4, 22, -47, 37, 29,
    -- layer=1 filter=34 channel=44
    -51, 11, 14, -2, 12, 9, 41, -16, 14,
    -- layer=1 filter=34 channel=45
    67, -80, -38, -26, -47, 0, 14, 59, 29,
    -- layer=1 filter=34 channel=46
    42, 14, 29, 15, 14, 20, 22, 21, 0,
    -- layer=1 filter=34 channel=47
    64, -57, 20, -67, -18, 14, -60, 56, -3,
    -- layer=1 filter=34 channel=48
    -80, 75, 35, 66, 49, -19, 50, -16, -9,
    -- layer=1 filter=34 channel=49
    -61, 42, -12, 61, -7, -17, 58, -27, -29,
    -- layer=1 filter=34 channel=50
    6, -2, 21, -75, 11, -5, -33, 56, -3,
    -- layer=1 filter=34 channel=51
    -68, 21, 0, -26, 24, 3, 20, -9, -1,
    -- layer=1 filter=34 channel=52
    -2, -33, -16, -45, -37, -13, -59, 54, 10,
    -- layer=1 filter=34 channel=53
    -47, -62, -68, -12, -105, -15, -64, -44, -36,
    -- layer=1 filter=34 channel=54
    -23, 1, 8, -53, 28, -9, 23, 27, -11,
    -- layer=1 filter=34 channel=55
    0, 8, 1, -66, 13, -6, -4, 59, 21,
    -- layer=1 filter=34 channel=56
    -6, -51, -15, -77, -7, 9, -27, 30, 23,
    -- layer=1 filter=34 channel=57
    -30, -6, 10, -43, 14, 15, 2, 22, 14,
    -- layer=1 filter=34 channel=58
    16, 10, 18, -60, 23, -11, -22, 95, -21,
    -- layer=1 filter=34 channel=59
    -30, -39, 9, -43, -18, 28, -16, 4, -21,
    -- layer=1 filter=34 channel=60
    -29, -12, 20, -58, 18, 30, -17, 53, 15,
    -- layer=1 filter=34 channel=61
    -4, 9, -9, -14, 28, 6, -14, 23, -16,
    -- layer=1 filter=34 channel=62
    113, 18, -26, 252, -77, -20, 143, 32, 98,
    -- layer=1 filter=34 channel=63
    130, 49, 16, 199, 7, -17, 43, 78, -28,
    -- layer=1 filter=35 channel=0
    25, 28, 11, 0, 6, -19, -29, -37, -58,
    -- layer=1 filter=35 channel=1
    18, 33, 30, 4, -19, -12, -13, 3, -34,
    -- layer=1 filter=35 channel=2
    -14, 16, -5, 23, 15, 9, 19, 25, 16,
    -- layer=1 filter=35 channel=3
    42, -19, -22, -27, -56, -41, -30, -36, 1,
    -- layer=1 filter=35 channel=4
    1, -13, -10, 13, 20, 17, 12, 16, -5,
    -- layer=1 filter=35 channel=5
    61, 35, 27, 39, 39, 21, 49, 49, 0,
    -- layer=1 filter=35 channel=6
    17, 18, -3, 14, -1, -5, 4, 7, -7,
    -- layer=1 filter=35 channel=7
    -9, -24, 5, 2, 18, 1, -4, 16, 11,
    -- layer=1 filter=35 channel=8
    -22, -23, -4, -26, -16, 10, 13, 7, 11,
    -- layer=1 filter=35 channel=9
    -66, -40, -19, -3, 7, -9, 1, 30, 21,
    -- layer=1 filter=35 channel=10
    37, 40, 40, 18, 18, 0, -16, -3, -22,
    -- layer=1 filter=35 channel=11
    -16, 13, -1, 2, -17, -5, 11, 3, -7,
    -- layer=1 filter=35 channel=12
    -7, 27, -10, -7, 1, 0, -22, -22, -21,
    -- layer=1 filter=35 channel=13
    20, 34, 13, 6, 0, -14, -20, -17, -42,
    -- layer=1 filter=35 channel=14
    16, 28, 3, 18, -2, -13, -29, -22, -36,
    -- layer=1 filter=35 channel=15
    -55, -55, -11, -6, 4, 20, 49, 54, 59,
    -- layer=1 filter=35 channel=16
    53, -7, 0, 42, 19, 8, 11, -16, 15,
    -- layer=1 filter=35 channel=17
    83, 48, 25, -31, -4, -34, -61, -63, -50,
    -- layer=1 filter=35 channel=18
    -7, -10, -1, -6, 0, 6, 9, -4, 4,
    -- layer=1 filter=35 channel=19
    -30, -24, -1, -3, -8, 9, 18, 49, 8,
    -- layer=1 filter=35 channel=20
    0, 30, 9, 5, -25, -21, -38, -19, 4,
    -- layer=1 filter=35 channel=21
    59, 45, 20, 0, 8, -16, -22, -45, -66,
    -- layer=1 filter=35 channel=22
    65, 90, 58, 52, 28, 18, 37, 22, -46,
    -- layer=1 filter=35 channel=23
    10, -2, -12, -61, -59, -52, -83, -44, -33,
    -- layer=1 filter=35 channel=24
    36, 1, -33, -1, -35, -22, -71, -40, -38,
    -- layer=1 filter=35 channel=25
    25, 3, 14, 32, -37, 19, -32, -58, 19,
    -- layer=1 filter=35 channel=26
    5, 1, 9, -14, -21, -9, -1, -15, -8,
    -- layer=1 filter=35 channel=27
    1, 10, 16, 14, 13, -15, -2, -6, -51,
    -- layer=1 filter=35 channel=28
    40, -13, 11, -15, -9, -6, -32, -17, -41,
    -- layer=1 filter=35 channel=29
    11, 27, 20, -14, -27, -7, 0, 1, -4,
    -- layer=1 filter=35 channel=30
    -11, -4, 13, 0, 4, -16, -7, 3, 1,
    -- layer=1 filter=35 channel=31
    -26, -49, -19, -23, 0, 25, 33, 20, 37,
    -- layer=1 filter=35 channel=32
    -25, 4, -20, -58, -23, -11, -57, -25, -22,
    -- layer=1 filter=35 channel=33
    -7, 0, 6, 17, 1, 0, 8, 7, 12,
    -- layer=1 filter=35 channel=34
    9, -33, -18, -14, -7, 15, -4, -3, 18,
    -- layer=1 filter=35 channel=35
    -51, -48, -8, -19, -1, 12, 5, 47, 44,
    -- layer=1 filter=35 channel=36
    10, -72, -34, -31, -38, -73, -40, -24, -26,
    -- layer=1 filter=35 channel=37
    -25, -17, 7, 9, 26, 6, -29, 5, -9,
    -- layer=1 filter=35 channel=38
    -71, -64, -4, 0, -4, 10, 39, 33, 61,
    -- layer=1 filter=35 channel=39
    5, 13, 6, -4, -12, 2, 6, 7, -11,
    -- layer=1 filter=35 channel=40
    29, 17, 10, 22, 12, 18, 4, 1, -3,
    -- layer=1 filter=35 channel=41
    46, 37, 19, 11, -1, -19, 44, 33, -10,
    -- layer=1 filter=35 channel=42
    27, 8, 10, 1, 9, 1, -8, -11, -20,
    -- layer=1 filter=35 channel=43
    -27, -14, 11, -29, -19, -3, 0, -8, 4,
    -- layer=1 filter=35 channel=44
    -51, -7, -2, 0, 6, 12, 19, 36, 57,
    -- layer=1 filter=35 channel=45
    -9, -45, -24, -44, -76, -23, -7, -26, 2,
    -- layer=1 filter=35 channel=46
    -5, 30, 21, 26, 17, 22, -9, 7, -18,
    -- layer=1 filter=35 channel=47
    16, -10, -17, 12, 9, 24, 10, 21, 0,
    -- layer=1 filter=35 channel=48
    75, 92, 66, 55, 17, 26, 48, 58, 0,
    -- layer=1 filter=35 channel=49
    -3, 25, 12, 6, -12, 3, 35, 24, -26,
    -- layer=1 filter=35 channel=50
    -27, -31, -10, -17, -8, 5, 20, -2, 12,
    -- layer=1 filter=35 channel=51
    -7, -10, -13, 11, 22, 4, 38, 44, 15,
    -- layer=1 filter=35 channel=52
    69, 75, 28, 3, -4, -34, -42, -52, -43,
    -- layer=1 filter=35 channel=53
    1, -41, -38, -45, -28, -103, -85, -44, -30,
    -- layer=1 filter=35 channel=54
    -16, -7, -17, 0, 2, 2, 29, 38, 9,
    -- layer=1 filter=35 channel=55
    81, 63, 27, 9, -12, -12, -43, -28, -7,
    -- layer=1 filter=35 channel=56
    9, 28, 9, 23, -2, -7, -13, -16, -5,
    -- layer=1 filter=35 channel=57
    -42, -39, -21, -12, 1, 19, 16, 43, 26,
    -- layer=1 filter=35 channel=58
    -11, -52, -37, -18, -8, -9, -30, 1, -2,
    -- layer=1 filter=35 channel=59
    -70, -43, -36, -5, -17, 15, 19, 39, 38,
    -- layer=1 filter=35 channel=60
    -74, -53, -44, -37, -28, -14, 9, 3, 27,
    -- layer=1 filter=35 channel=61
    33, 8, 5, -12, -3, -9, -22, -31, -39,
    -- layer=1 filter=35 channel=62
    -14, -13, -16, -7, -86, -75, -30, -96, -28,
    -- layer=1 filter=35 channel=63
    106, 88, 52, 121, 85, 60, 80, -4, -15,
    -- layer=1 filter=36 channel=0
    -1, -10, 9, 13, -6, -9, 14, -6, 4,
    -- layer=1 filter=36 channel=1
    -17, 2, -4, 2, 7, 14, -5, 8, -3,
    -- layer=1 filter=36 channel=2
    -11, 1, 7, -8, -7, -7, -2, -11, -14,
    -- layer=1 filter=36 channel=3
    -5, 6, 5, -6, -2, -10, -20, -21, -4,
    -- layer=1 filter=36 channel=4
    -19, -7, -15, -9, -19, -22, -10, -11, -1,
    -- layer=1 filter=36 channel=5
    4, 9, -21, 2, -1, 9, 9, -10, 18,
    -- layer=1 filter=36 channel=6
    -12, -16, 3, -1, -21, -13, -12, -17, -17,
    -- layer=1 filter=36 channel=7
    -17, -15, 2, 0, -3, -17, -12, -13, -5,
    -- layer=1 filter=36 channel=8
    -5, -19, -18, -22, -4, -11, 4, -13, -3,
    -- layer=1 filter=36 channel=9
    -6, -10, 6, 4, -22, 3, 0, -9, 3,
    -- layer=1 filter=36 channel=10
    -20, -20, -12, -8, 9, -2, -12, -19, -13,
    -- layer=1 filter=36 channel=11
    -20, -6, -2, 2, -6, 4, -12, -14, 0,
    -- layer=1 filter=36 channel=12
    -16, 10, 0, 0, -3, 1, 17, -22, 0,
    -- layer=1 filter=36 channel=13
    -6, 0, 5, 9, 4, -1, 1, -5, -10,
    -- layer=1 filter=36 channel=14
    -10, -1, 6, -8, -14, -8, -6, -13, -14,
    -- layer=1 filter=36 channel=15
    -20, 7, 6, -15, -13, -2, -4, 0, 0,
    -- layer=1 filter=36 channel=16
    -5, -18, 1, 0, -16, -8, 0, -10, 1,
    -- layer=1 filter=36 channel=17
    4, -7, -1, -12, 6, -22, -6, 3, -19,
    -- layer=1 filter=36 channel=18
    6, -13, -4, 2, 0, 11, 10, -1, -2,
    -- layer=1 filter=36 channel=19
    3, -8, -13, -2, 0, -9, -6, -20, 6,
    -- layer=1 filter=36 channel=20
    -11, -14, -5, -16, 11, -16, -9, 11, -12,
    -- layer=1 filter=36 channel=21
    0, 5, 0, -7, -8, -13, 15, -13, 1,
    -- layer=1 filter=36 channel=22
    -10, -20, -20, 0, 11, 15, -5, -24, -11,
    -- layer=1 filter=36 channel=23
    -8, -4, 4, -11, 6, -22, -9, -7, -8,
    -- layer=1 filter=36 channel=24
    -16, 4, 8, -2, -22, 5, -11, 7, -2,
    -- layer=1 filter=36 channel=25
    0, -6, 0, 0, 13, -4, -14, -12, 1,
    -- layer=1 filter=36 channel=26
    4, -13, 2, 2, -4, 6, -14, -10, -3,
    -- layer=1 filter=36 channel=27
    -8, 19, -5, -13, -9, -1, 17, -19, -5,
    -- layer=1 filter=36 channel=28
    12, -1, -2, 8, -15, 6, -10, -6, -10,
    -- layer=1 filter=36 channel=29
    11, 1, -9, -19, -7, -11, -5, 3, -8,
    -- layer=1 filter=36 channel=30
    -10, 3, 0, 11, 0, -15, 15, 11, -15,
    -- layer=1 filter=36 channel=31
    -3, -23, -23, 6, -19, -14, -19, -1, 5,
    -- layer=1 filter=36 channel=32
    5, 2, 17, -13, 6, 10, 19, -4, 4,
    -- layer=1 filter=36 channel=33
    1, 4, 9, 15, 2, 6, 4, -13, 12,
    -- layer=1 filter=36 channel=34
    0, 1, -4, -6, -10, -10, 1, -5, -15,
    -- layer=1 filter=36 channel=35
    8, -12, 0, 0, -13, -3, -4, -8, -18,
    -- layer=1 filter=36 channel=36
    6, -2, -11, -8, 5, -13, -13, -11, 4,
    -- layer=1 filter=36 channel=37
    -15, -2, 7, -12, -18, 2, -11, 4, -15,
    -- layer=1 filter=36 channel=38
    9, -2, -7, 7, 8, -5, -7, -17, -12,
    -- layer=1 filter=36 channel=39
    -5, 1, 12, -13, -12, 9, -10, -9, 2,
    -- layer=1 filter=36 channel=40
    -2, 6, -13, -16, -1, -5, -12, 9, 8,
    -- layer=1 filter=36 channel=41
    1, -14, -2, 0, -13, 5, 9, -8, 16,
    -- layer=1 filter=36 channel=42
    -13, -9, 7, -22, 6, -6, 0, 11, -3,
    -- layer=1 filter=36 channel=43
    14, -8, -5, -26, -7, -6, -8, -9, -6,
    -- layer=1 filter=36 channel=44
    2, 14, -1, -9, 9, 12, 0, -11, -7,
    -- layer=1 filter=36 channel=45
    1, 13, -10, -2, -13, 7, -14, -9, -10,
    -- layer=1 filter=36 channel=46
    -1, -10, -1, -2, -7, -13, 8, 8, -2,
    -- layer=1 filter=36 channel=47
    2, -13, -17, -11, -16, 0, -6, -20, 1,
    -- layer=1 filter=36 channel=48
    -1, 5, -9, 3, 16, 6, -5, -5, -6,
    -- layer=1 filter=36 channel=49
    2, -6, -10, -13, -14, -17, -7, -13, 0,
    -- layer=1 filter=36 channel=50
    8, -17, -9, -8, -19, 7, -14, 0, -21,
    -- layer=1 filter=36 channel=51
    -14, -8, -12, -2, 6, 7, -6, -14, 8,
    -- layer=1 filter=36 channel=52
    8, -7, 9, 7, -11, -2, -6, -7, -17,
    -- layer=1 filter=36 channel=53
    -14, -10, 2, -3, -17, 0, -8, 3, 1,
    -- layer=1 filter=36 channel=54
    -6, -23, -8, -24, 4, -2, 1, -4, 6,
    -- layer=1 filter=36 channel=55
    -10, -13, -13, -16, -2, 2, -11, 6, -20,
    -- layer=1 filter=36 channel=56
    0, 0, -10, -2, -16, -6, -25, -11, -8,
    -- layer=1 filter=36 channel=57
    -23, 3, -8, -4, -12, 6, -2, -6, -8,
    -- layer=1 filter=36 channel=58
    8, 5, -13, -15, -1, -8, -9, 5, 8,
    -- layer=1 filter=36 channel=59
    6, -1, -15, -10, -18, -17, 0, -10, 5,
    -- layer=1 filter=36 channel=60
    -10, -21, -12, -13, 3, -21, 0, -14, -16,
    -- layer=1 filter=36 channel=61
    -6, -8, -7, -15, 4, -2, -1, -3, -10,
    -- layer=1 filter=36 channel=62
    10, -2, 0, 24, -3, -3, -10, -1, 11,
    -- layer=1 filter=36 channel=63
    0, -6, 7, 10, 5, -4, -4, 17, 10,
    -- layer=1 filter=37 channel=0
    12, 3, -6, 2, -11, -1, -10, 13, 19,
    -- layer=1 filter=37 channel=1
    -12, 4, 1, 9, 21, 4, -6, 4, 10,
    -- layer=1 filter=37 channel=2
    3, 3, -2, 15, 5, -6, 5, 0, 17,
    -- layer=1 filter=37 channel=3
    4, -1, 3, -10, -33, -16, 3, -26, -2,
    -- layer=1 filter=37 channel=4
    1, -7, -14, 6, -12, 2, 14, -17, 18,
    -- layer=1 filter=37 channel=5
    2, 6, -15, 18, -5, 1, -29, -7, -5,
    -- layer=1 filter=37 channel=6
    13, 2, -18, -7, 0, 5, 2, -5, 10,
    -- layer=1 filter=37 channel=7
    18, -8, 5, -13, 4, 0, 0, 1, 3,
    -- layer=1 filter=37 channel=8
    -7, -2, -1, -1, -7, -14, 4, 3, -16,
    -- layer=1 filter=37 channel=9
    -1, -6, 3, -7, -10, 0, 0, 1, -2,
    -- layer=1 filter=37 channel=10
    -28, -26, 2, -18, -21, -21, -22, -14, -25,
    -- layer=1 filter=37 channel=11
    12, 9, -9, 22, -18, -1, 5, 11, -8,
    -- layer=1 filter=37 channel=12
    25, -12, -3, 9, 32, 1, 36, 24, -1,
    -- layer=1 filter=37 channel=13
    12, -7, 6, 9, 21, 2, 17, 16, 10,
    -- layer=1 filter=37 channel=14
    6, 0, 16, 5, -14, 14, 5, 18, 4,
    -- layer=1 filter=37 channel=15
    -6, -11, -31, -3, -43, -38, 5, -16, -28,
    -- layer=1 filter=37 channel=16
    -13, 7, -22, -11, -9, 30, 12, 5, 14,
    -- layer=1 filter=37 channel=17
    10, -3, -16, -8, 6, -2, -13, 16, -21,
    -- layer=1 filter=37 channel=18
    3, -3, 6, 3, -9, -10, 5, -5, -6,
    -- layer=1 filter=37 channel=19
    -9, -6, -20, 4, 10, 0, 16, -5, 10,
    -- layer=1 filter=37 channel=20
    2, -15, 0, -5, 10, -15, 15, 6, -7,
    -- layer=1 filter=37 channel=21
    16, 20, 24, 22, 19, -6, 4, 4, 19,
    -- layer=1 filter=37 channel=22
    -30, -30, -1, 8, -36, -14, -26, -39, 18,
    -- layer=1 filter=37 channel=23
    -37, -44, -28, -62, -43, -48, -25, -30, -18,
    -- layer=1 filter=37 channel=24
    -8, 8, -7, 31, -1, 9, 19, -5, -23,
    -- layer=1 filter=37 channel=25
    -16, 6, 11, 2, 11, -2, 31, -2, 5,
    -- layer=1 filter=37 channel=26
    2, 3, -8, 8, -7, -10, 23, 3, -19,
    -- layer=1 filter=37 channel=27
    9, 4, 0, 24, 19, -3, 31, 10, 33,
    -- layer=1 filter=37 channel=28
    11, 17, -14, 12, -27, -6, 6, 33, -7,
    -- layer=1 filter=37 channel=29
    9, -6, -15, -7, 18, 21, 5, -6, 13,
    -- layer=1 filter=37 channel=30
    -4, -2, 6, 20, 13, 18, 12, 17, 10,
    -- layer=1 filter=37 channel=31
    -8, -2, -3, 12, 1, -16, 24, -2, -3,
    -- layer=1 filter=37 channel=32
    -6, -15, -9, 0, -15, -19, 13, 23, 0,
    -- layer=1 filter=37 channel=33
    -10, -7, -7, -7, 7, 1, 10, 9, 9,
    -- layer=1 filter=37 channel=34
    14, -2, 2, -5, 9, 13, -6, -6, 0,
    -- layer=1 filter=37 channel=35
    -10, -16, -10, -19, -8, -5, 6, 6, -28,
    -- layer=1 filter=37 channel=36
    -18, 13, -9, -12, -27, 8, 10, -22, -27,
    -- layer=1 filter=37 channel=37
    14, -4, -1, -13, -12, -1, 19, 7, -6,
    -- layer=1 filter=37 channel=38
    -8, -15, -4, -12, -20, -41, 18, -17, -26,
    -- layer=1 filter=37 channel=39
    -14, 21, 8, 5, 7, -15, 6, 6, 5,
    -- layer=1 filter=37 channel=40
    -13, 4, 10, -24, -15, -15, -10, -17, 7,
    -- layer=1 filter=37 channel=41
    -2, -21, -17, 0, 0, 18, -1, -37, 6,
    -- layer=1 filter=37 channel=42
    6, 9, 12, 13, -5, 7, 5, -4, 20,
    -- layer=1 filter=37 channel=43
    -8, -13, -18, -28, -1, -19, 23, -9, -22,
    -- layer=1 filter=37 channel=44
    -10, -8, -7, -20, -26, -37, 3, -24, -25,
    -- layer=1 filter=37 channel=45
    -13, 7, 17, -9, 33, 8, 11, 11, 8,
    -- layer=1 filter=37 channel=46
    2, -4, 5, -13, -7, 6, -13, 0, 10,
    -- layer=1 filter=37 channel=47
    1, 8, -12, -8, -9, 10, -18, -11, -7,
    -- layer=1 filter=37 channel=48
    6, -12, -17, 0, -8, 7, -34, -43, 0,
    -- layer=1 filter=37 channel=49
    -1, -3, -20, 10, 2, 3, 5, -13, 14,
    -- layer=1 filter=37 channel=50
    12, 9, 10, 19, 5, -11, 9, 1, -13,
    -- layer=1 filter=37 channel=51
    -14, -10, -9, 0, 2, -2, -2, -3, -10,
    -- layer=1 filter=37 channel=52
    -53, -23, -19, -7, -7, -11, -42, -16, -44,
    -- layer=1 filter=37 channel=53
    -22, 13, -10, -6, -21, -15, 21, -6, -23,
    -- layer=1 filter=37 channel=54
    -7, 10, 12, -6, 9, -2, -9, 7, -6,
    -- layer=1 filter=37 channel=55
    -22, -46, -43, -31, -12, -7, -44, -36, -30,
    -- layer=1 filter=37 channel=56
    3, -10, 14, -19, -3, 6, 4, 2, -15,
    -- layer=1 filter=37 channel=57
    -5, 0, -3, 1, -2, -17, 17, -19, 11,
    -- layer=1 filter=37 channel=58
    10, 0, 7, -14, 9, 2, 11, 2, -10,
    -- layer=1 filter=37 channel=59
    -7, -16, 10, 11, 6, -30, -9, -2, -25,
    -- layer=1 filter=37 channel=60
    12, 2, 10, 17, 8, -3, 24, -5, -11,
    -- layer=1 filter=37 channel=61
    12, 7, 9, 12, 19, 18, -3, 17, 25,
    -- layer=1 filter=37 channel=62
    -20, 30, 13, -29, 21, -4, 11, 40, 14,
    -- layer=1 filter=37 channel=63
    -45, 0, -18, 16, -3, 16, -13, 40, 26,
    -- layer=1 filter=38 channel=0
    27, -13, -29, 9, -7, -10, 14, -5, 5,
    -- layer=1 filter=38 channel=1
    -13, 19, -17, 20, 31, -6, 10, 12, -12,
    -- layer=1 filter=38 channel=2
    0, -47, -40, -26, -63, -16, -24, -31, -24,
    -- layer=1 filter=38 channel=3
    27, 39, 47, -29, 2, -30, -14, -25, -21,
    -- layer=1 filter=38 channel=4
    26, 5, 15, 25, 6, 4, -1, 11, -2,
    -- layer=1 filter=38 channel=5
    0, 53, 35, 3, -36, -3, -41, -30, 36,
    -- layer=1 filter=38 channel=6
    -8, 43, -11, 36, -8, 8, -4, -23, -15,
    -- layer=1 filter=38 channel=7
    -9, 32, -14, 2, 11, -27, 2, -2, 1,
    -- layer=1 filter=38 channel=8
    30, 43, 7, 28, 18, -10, 8, 0, -19,
    -- layer=1 filter=38 channel=9
    -13, -3, 4, -8, -28, -23, -32, -13, -26,
    -- layer=1 filter=38 channel=10
    -32, -30, -21, -55, -20, -42, -36, -25, -22,
    -- layer=1 filter=38 channel=11
    29, 11, 8, -1, -18, -19, -22, 0, -14,
    -- layer=1 filter=38 channel=12
    14, -6, 6, 4, -2, 53, -4, -17, 54,
    -- layer=1 filter=38 channel=13
    7, 3, 0, 37, 41, 2, 27, 16, 0,
    -- layer=1 filter=38 channel=14
    8, 20, -10, 19, 3, 8, 27, -2, 2,
    -- layer=1 filter=38 channel=15
    0, -21, 4, -32, 0, -22, -42, -6, 6,
    -- layer=1 filter=38 channel=16
    21, 48, 55, 28, 53, 50, 34, 5, 18,
    -- layer=1 filter=38 channel=17
    11, 42, -26, 21, 4, 16, 14, 19, -9,
    -- layer=1 filter=38 channel=18
    10, -9, -4, 7, 1, 7, 5, 0, -7,
    -- layer=1 filter=38 channel=19
    8, 13, 12, 3, -6, -17, -18, -25, -9,
    -- layer=1 filter=38 channel=20
    19, -17, -14, 19, -38, -9, -1, -32, 0,
    -- layer=1 filter=38 channel=21
    -13, 6, -15, 29, 21, 23, -4, 28, 0,
    -- layer=1 filter=38 channel=22
    9, 28, -11, -24, -13, -25, -68, -8, -47,
    -- layer=1 filter=38 channel=23
    -47, -30, -56, -52, -29, -41, -10, -34, -14,
    -- layer=1 filter=38 channel=24
    -29, 2, -19, 3, -33, 21, -40, -83, -76,
    -- layer=1 filter=38 channel=25
    -40, 25, 0, 9, 47, 51, 23, -6, 46,
    -- layer=1 filter=38 channel=26
    15, 31, 2, 7, 18, 0, 31, 11, 25,
    -- layer=1 filter=38 channel=27
    10, 17, 1, 15, 12, 30, 9, -16, 31,
    -- layer=1 filter=38 channel=28
    9, -27, -6, -1, -2, -28, 11, 0, -12,
    -- layer=1 filter=38 channel=29
    27, 16, 42, 17, 31, 18, 28, 26, 19,
    -- layer=1 filter=38 channel=30
    3, -1, 9, 11, -15, 2, 7, 1, -4,
    -- layer=1 filter=38 channel=31
    -18, 8, 0, -31, -2, 14, -25, 1, 1,
    -- layer=1 filter=38 channel=32
    16, -3, 27, 11, -62, 27, 8, -24, 11,
    -- layer=1 filter=38 channel=33
    -15, -10, -12, -4, -4, 11, 21, -7, -3,
    -- layer=1 filter=38 channel=34
    18, 18, 14, 16, 19, 9, 26, -11, -11,
    -- layer=1 filter=38 channel=35
    14, -2, -5, -7, 8, -6, -13, -11, 9,
    -- layer=1 filter=38 channel=36
    41, 28, 48, -31, -11, 14, -18, -47, -42,
    -- layer=1 filter=38 channel=37
    35, 24, 6, 19, 24, 28, 19, 31, 26,
    -- layer=1 filter=38 channel=38
    -11, 10, 11, -3, 9, 12, -30, -11, 1,
    -- layer=1 filter=38 channel=39
    -4, -22, -10, -1, -13, -11, -5, 8, 0,
    -- layer=1 filter=38 channel=40
    2, -44, 0, -30, -29, -52, -36, -47, -33,
    -- layer=1 filter=38 channel=41
    24, 24, 16, 6, -38, -19, -15, -14, -1,
    -- layer=1 filter=38 channel=42
    17, 4, 7, 31, 0, -12, 11, 17, -17,
    -- layer=1 filter=38 channel=43
    -29, -27, 19, -37, -22, 15, -2, -36, -1,
    -- layer=1 filter=38 channel=44
    -14, -18, 7, -37, -74, -22, -71, -69, -8,
    -- layer=1 filter=38 channel=45
    20, 8, 35, -16, 33, 34, 23, 14, 53,
    -- layer=1 filter=38 channel=46
    8, -24, -13, -20, -68, -22, -21, -45, -32,
    -- layer=1 filter=38 channel=47
    -1, -6, 23, -16, -5, 1, 24, -5, -7,
    -- layer=1 filter=38 channel=48
    0, 18, -12, 3, -62, -26, -63, -56, -21,
    -- layer=1 filter=38 channel=49
    25, 9, 0, 2, 0, -3, -46, -21, 54,
    -- layer=1 filter=38 channel=50
    15, 33, 24, 14, 15, 0, 10, 0, 1,
    -- layer=1 filter=38 channel=51
    3, 9, 1, 4, -32, -28, -5, -37, -11,
    -- layer=1 filter=38 channel=52
    -8, 21, 1, -14, -6, -13, -17, -3, -5,
    -- layer=1 filter=38 channel=53
    12, -1, 34, -29, -44, 11, -18, -45, -46,
    -- layer=1 filter=38 channel=54
    -1, 14, 7, 18, 0, 1, 15, -8, -13,
    -- layer=1 filter=38 channel=55
    7, 4, -14, 2, -8, 6, 4, 22, 18,
    -- layer=1 filter=38 channel=56
    -10, 12, 8, -15, -5, 11, 16, 0, 3,
    -- layer=1 filter=38 channel=57
    -6, 14, 0, 5, -21, -10, -4, -29, -11,
    -- layer=1 filter=38 channel=58
    37, 44, 21, 20, 31, 1, 31, 10, 13,
    -- layer=1 filter=38 channel=59
    -4, -2, 9, -16, -10, 0, -9, -3, -16,
    -- layer=1 filter=38 channel=60
    16, 8, 31, -1, 23, 2, -21, 1, 3,
    -- layer=1 filter=38 channel=61
    20, 28, 11, 23, 39, -11, 29, 2, 7,
    -- layer=1 filter=38 channel=62
    42, -17, 7, -1, -6, 29, 3, 37, 56,
    -- layer=1 filter=38 channel=63
    -12, -8, 18, 15, 43, 24, 32, 34, -7,
    -- layer=1 filter=39 channel=0
    -42, -44, -27, -34, -53, -13, 0, -18, -11,
    -- layer=1 filter=39 channel=1
    2, -18, -12, -22, -60, -57, 16, 11, 0,
    -- layer=1 filter=39 channel=2
    -15, -39, -11, 17, -5, 16, 3, 0, 14,
    -- layer=1 filter=39 channel=3
    40, 26, 6, 45, -13, -37, -10, 0, -20,
    -- layer=1 filter=39 channel=4
    -11, -7, -19, -12, -11, 18, 46, 10, -4,
    -- layer=1 filter=39 channel=5
    13, -6, -22, -51, -33, 4, 100, 48, 35,
    -- layer=1 filter=39 channel=6
    -4, -16, -4, -27, -27, -3, 57, 18, 36,
    -- layer=1 filter=39 channel=7
    7, -10, 19, 1, 2, -3, 1, 9, 7,
    -- layer=1 filter=39 channel=8
    0, -2, -17, -18, -15, -3, 7, 19, -7,
    -- layer=1 filter=39 channel=9
    2, -7, 2, 9, 11, -22, -9, -13, -15,
    -- layer=1 filter=39 channel=10
    14, -3, -10, 5, 2, 25, -1, 22, 31,
    -- layer=1 filter=39 channel=11
    -1, -1, -35, -30, -13, 6, 38, 31, 8,
    -- layer=1 filter=39 channel=12
    -26, -144, -6, -22, -108, -9, 54, -48, 43,
    -- layer=1 filter=39 channel=13
    -20, -49, -48, -26, -59, -70, -16, -25, -54,
    -- layer=1 filter=39 channel=14
    19, -1, -15, 1, -19, -37, -40, -22, -15,
    -- layer=1 filter=39 channel=15
    7, 19, 6, 42, 22, 33, 17, 16, 0,
    -- layer=1 filter=39 channel=16
    48, 35, 30, 56, 5, 21, -7, 14, 18,
    -- layer=1 filter=39 channel=17
    -51, -41, -17, -28, -77, -65, 29, 9, 8,
    -- layer=1 filter=39 channel=18
    -8, 1, 6, 1, 2, 2, 3, -10, -4,
    -- layer=1 filter=39 channel=19
    -13, -12, -22, -4, 2, 2, 5, 19, -1,
    -- layer=1 filter=39 channel=20
    -71, -71, -8, -58, -78, -39, -10, -65, -8,
    -- layer=1 filter=39 channel=21
    -3, -15, -17, 14, -28, -37, 43, -3, 1,
    -- layer=1 filter=39 channel=22
    25, -41, -38, -4, -23, 5, 26, 38, 38,
    -- layer=1 filter=39 channel=23
    -13, 0, 32, 42, -35, 30, -36, 20, 17,
    -- layer=1 filter=39 channel=24
    -60, -58, -12, -53, -13, 8, 21, 46, 51,
    -- layer=1 filter=39 channel=25
    55, 4, 6, 17, -23, -16, 43, 41, 5,
    -- layer=1 filter=39 channel=26
    22, 25, 23, -35, -20, -22, -52, -12, 14,
    -- layer=1 filter=39 channel=27
    -73, -155, -69, -54, -120, -29, 13, -32, 7,
    -- layer=1 filter=39 channel=28
    -24, -13, -31, 5, -37, -14, 22, -58, -21,
    -- layer=1 filter=39 channel=29
    -30, -40, -45, -19, -50, -46, 3, 34, -13,
    -- layer=1 filter=39 channel=30
    -5, 14, 6, -1, 0, 4, 20, 9, -6,
    -- layer=1 filter=39 channel=31
    24, 17, 0, 25, 16, 12, 13, 38, -1,
    -- layer=1 filter=39 channel=32
    -80, -168, -24, -9, -106, 10, 11, -38, -16,
    -- layer=1 filter=39 channel=33
    13, -6, 3, -5, 6, 6, 6, 15, 3,
    -- layer=1 filter=39 channel=34
    24, 18, 16, -11, -12, 6, 11, -10, -2,
    -- layer=1 filter=39 channel=35
    5, 3, -10, 20, 19, 6, -4, 31, 0,
    -- layer=1 filter=39 channel=36
    21, 28, 22, 59, 13, 22, -15, 35, 37,
    -- layer=1 filter=39 channel=37
    33, 11, 7, 11, -19, -8, -1, -12, -21,
    -- layer=1 filter=39 channel=38
    5, 1, 0, 33, 19, 11, -2, 36, 10,
    -- layer=1 filter=39 channel=39
    -7, 3, 10, 0, 3, 9, 1, 5, -7,
    -- layer=1 filter=39 channel=40
    -22, -12, 9, -20, -12, -4, 22, 26, 2,
    -- layer=1 filter=39 channel=41
    -6, -27, -25, -29, -24, -24, 98, 73, 38,
    -- layer=1 filter=39 channel=42
    -5, -18, -10, -37, -44, -35, 6, -19, 0,
    -- layer=1 filter=39 channel=43
    -5, 9, -24, 0, -30, -35, 38, 41, 3,
    -- layer=1 filter=39 channel=44
    -23, -18, 3, -3, 18, 8, 0, 11, 30,
    -- layer=1 filter=39 channel=45
    0, 17, -18, 29, -28, -37, 37, 13, 3,
    -- layer=1 filter=39 channel=46
    -14, -24, -15, -22, -32, -14, -33, -22, -12,
    -- layer=1 filter=39 channel=47
    36, 11, 0, 10, 9, -11, 10, -18, -2,
    -- layer=1 filter=39 channel=48
    29, -12, -41, -58, -63, -24, 64, 68, 34,
    -- layer=1 filter=39 channel=49
    0, -45, -59, -29, -48, 10, 49, 13, 12,
    -- layer=1 filter=39 channel=50
    22, 28, -4, 22, -4, -5, -6, 12, 0,
    -- layer=1 filter=39 channel=51
    8, -7, 3, -18, 0, -18, 36, 10, 11,
    -- layer=1 filter=39 channel=52
    9, 13, -2, 6, -27, 9, 57, 59, 78,
    -- layer=1 filter=39 channel=53
    3, -8, -12, 63, -12, -41, -19, -5, -34,
    -- layer=1 filter=39 channel=54
    22, -6, -5, -1, -19, -17, 23, 5, 1,
    -- layer=1 filter=39 channel=55
    -11, -52, -48, -42, -103, -84, 0, -13, -2,
    -- layer=1 filter=39 channel=56
    -7, -17, -24, -26, -56, -49, 3, 1, -19,
    -- layer=1 filter=39 channel=57
    18, 13, -4, 1, 21, -8, -6, 2, 1,
    -- layer=1 filter=39 channel=58
    46, 34, 5, 47, 10, -20, -14, 12, -10,
    -- layer=1 filter=39 channel=59
    14, 13, 6, 17, 6, -6, -26, -8, -4,
    -- layer=1 filter=39 channel=60
    25, 12, 8, 40, 19, -12, 9, 27, 11,
    -- layer=1 filter=39 channel=61
    -20, -19, -27, -40, -59, -55, -2, -22, -47,
    -- layer=1 filter=39 channel=62
    -76, -77, 5, -128, -122, 14, -28, -12, -5,
    -- layer=1 filter=39 channel=63
    46, 58, 70, 74, 21, 10, -13, 40, -12,
    -- layer=1 filter=40 channel=0
    -40, 19, 34, 13, 41, 30, 75, -19, 69,
    -- layer=1 filter=40 channel=1
    -55, -23, 1, -51, -12, 51, -28, 47, -14,
    -- layer=1 filter=40 channel=2
    -18, 24, 32, 13, 27, -16, 41, -29, 46,
    -- layer=1 filter=40 channel=3
    -10, -11, 24, -83, -65, -40, -23, 24, 53,
    -- layer=1 filter=40 channel=4
    -73, -65, -9, -51, 20, 11, 12, -13, 0,
    -- layer=1 filter=40 channel=5
    -63, 0, 55, 7, 75, 78, 60, -3, 2,
    -- layer=1 filter=40 channel=6
    -46, -39, -9, -52, 10, 72, 3, 63, -19,
    -- layer=1 filter=40 channel=7
    -31, -23, -38, -32, -35, 23, -26, 62, 1,
    -- layer=1 filter=40 channel=8
    -73, -60, -20, -46, -45, 24, -33, -30, -9,
    -- layer=1 filter=40 channel=9
    -16, -42, -14, -46, -15, -39, -38, -33, 16,
    -- layer=1 filter=40 channel=10
    34, -6, -1, -42, -39, 16, -34, 9, 23,
    -- layer=1 filter=40 channel=11
    -48, -42, -9, -50, 15, 0, 5, -52, -12,
    -- layer=1 filter=40 channel=12
    -9, -2, 42, 6, 62, 34, 102, -20, 49,
    -- layer=1 filter=40 channel=13
    -48, -25, 5, -2, 28, 2, 29, 18, 49,
    -- layer=1 filter=40 channel=14
    -24, -12, -8, -35, -11, 4, 16, 14, 38,
    -- layer=1 filter=40 channel=15
    4, 21, -67, -13, -11, -31, -82, -33, -8,
    -- layer=1 filter=40 channel=16
    5, -13, -13, -56, -17, -54, -106, -27, 13,
    -- layer=1 filter=40 channel=17
    6, 52, 59, -35, -15, 32, 34, 37, 64,
    -- layer=1 filter=40 channel=18
    10, 6, -4, 12, 0, 7, -7, -6, 4,
    -- layer=1 filter=40 channel=19
    -60, -50, -14, -76, -74, -5, -32, -42, -38,
    -- layer=1 filter=40 channel=20
    -37, -15, 18, -7, 44, 15, 55, 1, 44,
    -- layer=1 filter=40 channel=21
    -14, -12, -1, -20, -20, 18, -6, 16, 4,
    -- layer=1 filter=40 channel=22
    -14, 36, 123, 7, 82, 18, 48, -54, 32,
    -- layer=1 filter=40 channel=23
    33, 16, 23, -25, 18, 47, 24, 53, 43,
    -- layer=1 filter=40 channel=24
    37, 71, 5, -38, 0, -57, -42, -31, -29,
    -- layer=1 filter=40 channel=25
    -47, -31, -42, -37, -41, 3, -106, 43, -55,
    -- layer=1 filter=40 channel=26
    22, 17, 6, -24, -25, -17, -44, -19, -16,
    -- layer=1 filter=40 channel=27
    -34, 10, 42, 24, 94, 40, 114, 1, 55,
    -- layer=1 filter=40 channel=28
    -10, -33, -24, -4, -61, 6, 27, 14, 69,
    -- layer=1 filter=40 channel=29
    -32, -76, -11, -36, -69, 34, -81, 8, -41,
    -- layer=1 filter=40 channel=30
    10, -7, -8, 2, 16, 2, 0, 16, -5,
    -- layer=1 filter=40 channel=31
    -25, -30, -68, -75, -79, -50, -74, -49, -43,
    -- layer=1 filter=40 channel=32
    -70, -3, 33, 28, 59, 23, 93, -16, 52,
    -- layer=1 filter=40 channel=33
    -10, -15, 14, 10, 6, -14, 2, 0, -1,
    -- layer=1 filter=40 channel=34
    -10, -28, -9, -31, -26, -5, -33, -21, -4,
    -- layer=1 filter=40 channel=35
    0, -8, -12, -23, -46, -6, -73, -18, 7,
    -- layer=1 filter=40 channel=36
    24, -29, -17, -66, 4, -5, -67, 3, 26,
    -- layer=1 filter=40 channel=37
    -50, -83, -46, -72, -47, -17, -67, 7, 17,
    -- layer=1 filter=40 channel=38
    2, 25, -49, -37, -57, 0, -49, 13, -36,
    -- layer=1 filter=40 channel=39
    -2, 2, 1, 7, 1, 1, 11, 14, 11,
    -- layer=1 filter=40 channel=40
    -11, 20, 47, 7, 27, -2, -1, 8, 7,
    -- layer=1 filter=40 channel=41
    -43, -30, 48, -2, 91, 72, 53, -13, 0,
    -- layer=1 filter=40 channel=42
    -49, -14, -5, -26, 13, 27, 27, 28, 17,
    -- layer=1 filter=40 channel=43
    -27, -50, -5, -48, -39, 13, -85, -19, -33,
    -- layer=1 filter=40 channel=44
    17, 25, 16, 20, 34, 28, 23, -2, 4,
    -- layer=1 filter=40 channel=45
    -43, -58, -13, -22, -34, 0, -98, -16, -29,
    -- layer=1 filter=40 channel=46
    25, 36, 67, 36, 20, 7, -12, 1, 32,
    -- layer=1 filter=40 channel=47
    -6, -17, -44, -25, -97, 4, -78, 10, 14,
    -- layer=1 filter=40 channel=48
    -35, 25, 130, 6, 70, 40, 78, -21, 31,
    -- layer=1 filter=40 channel=49
    -38, -6, 38, -29, 56, 8, 26, -34, 1,
    -- layer=1 filter=40 channel=50
    -79, -52, -99, -98, -64, -38, -90, -50, -18,
    -- layer=1 filter=40 channel=51
    -46, -40, -1, -56, 8, 37, -17, 9, -32,
    -- layer=1 filter=40 channel=52
    14, 4, 26, -44, -17, 16, -17, 46, 86,
    -- layer=1 filter=40 channel=53
    -4, -32, 10, -57, -64, -30, -22, -54, 47,
    -- layer=1 filter=40 channel=54
    -89, -71, -36, -65, -42, 28, -51, 21, -33,
    -- layer=1 filter=40 channel=55
    0, 34, 27, -30, 1, 38, -24, 43, 64,
    -- layer=1 filter=40 channel=56
    -21, -61, 18, -14, -45, 25, -58, 38, -9,
    -- layer=1 filter=40 channel=57
    -48, -56, -42, -57, -50, -11, -66, -31, -8,
    -- layer=1 filter=40 channel=58
    3, -24, -25, -41, -60, -9, -87, 36, 39,
    -- layer=1 filter=40 channel=59
    -43, -13, -12, 22, -37, -3, -66, -45, -22,
    -- layer=1 filter=40 channel=60
    -19, -39, -34, -36, -60, -54, -93, -31, -38,
    -- layer=1 filter=40 channel=61
    -27, -11, 5, -15, 2, 45, 29, 46, 33,
    -- layer=1 filter=40 channel=62
    -38, -37, 45, 24, 39, -21, 82, -85, 20,
    -- layer=1 filter=40 channel=63
    23, 21, 80, -20, 36, -60, -51, -18, -19,
    -- layer=1 filter=41 channel=0
    -1, -17, -12, 9, -18, -7, -10, 10, 7,
    -- layer=1 filter=41 channel=1
    -14, 13, -10, -6, 0, 4, 0, 9, -6,
    -- layer=1 filter=41 channel=2
    -13, 0, -6, 6, -9, 10, 5, 1, 2,
    -- layer=1 filter=41 channel=3
    9, 2, -7, -10, 0, -1, -10, -7, 4,
    -- layer=1 filter=41 channel=4
    0, -5, -16, 9, -16, -2, 11, -4, 7,
    -- layer=1 filter=41 channel=5
    0, -2, -3, 4, -16, -15, 0, -9, -5,
    -- layer=1 filter=41 channel=6
    -6, 2, 12, 9, 3, -17, -5, 3, -7,
    -- layer=1 filter=41 channel=7
    -13, -18, 1, -5, 3, -9, -5, 11, -3,
    -- layer=1 filter=41 channel=8
    10, -12, -16, -1, 0, -6, 9, -7, 11,
    -- layer=1 filter=41 channel=9
    0, -8, -3, 1, -7, -6, -5, 4, -13,
    -- layer=1 filter=41 channel=10
    13, 11, 12, -4, -12, -5, 8, 7, 8,
    -- layer=1 filter=41 channel=11
    -2, -4, 0, 0, 7, 10, -13, 11, -10,
    -- layer=1 filter=41 channel=12
    0, -17, 9, 3, -3, 2, -21, -5, 1,
    -- layer=1 filter=41 channel=13
    -15, -8, 6, 0, 7, 1, 11, -11, -3,
    -- layer=1 filter=41 channel=14
    3, -6, 0, 1, -8, 0, -2, 2, -12,
    -- layer=1 filter=41 channel=15
    5, 6, -16, 3, -13, -14, -10, 4, 7,
    -- layer=1 filter=41 channel=16
    0, 3, -12, -2, 1, 11, -12, -14, -2,
    -- layer=1 filter=41 channel=17
    11, 11, 10, 8, -7, -17, 10, -8, 9,
    -- layer=1 filter=41 channel=18
    1, 0, 9, 3, 11, 6, -7, 2, -10,
    -- layer=1 filter=41 channel=19
    -9, -2, 9, -5, -11, -17, 7, -16, 10,
    -- layer=1 filter=41 channel=20
    -11, 7, -11, -10, -8, -14, 0, -13, 2,
    -- layer=1 filter=41 channel=21
    6, -10, -10, -3, -5, -15, -18, 5, -10,
    -- layer=1 filter=41 channel=22
    3, -11, 3, -11, 6, -6, -17, -5, -8,
    -- layer=1 filter=41 channel=23
    12, -10, 13, -13, -12, -8, -11, 8, 3,
    -- layer=1 filter=41 channel=24
    2, -13, 0, -13, -11, -6, -13, -7, -1,
    -- layer=1 filter=41 channel=25
    0, -2, 6, 4, -2, -15, -9, 1, -13,
    -- layer=1 filter=41 channel=26
    -14, 3, -2, -5, -4, -10, -4, 15, 15,
    -- layer=1 filter=41 channel=27
    10, -12, -13, -16, 1, 0, 8, -1, -3,
    -- layer=1 filter=41 channel=28
    -9, 1, -1, -13, 0, 12, -7, -12, -2,
    -- layer=1 filter=41 channel=29
    -4, -4, -1, 6, -6, 6, 3, -8, -4,
    -- layer=1 filter=41 channel=30
    2, -3, -10, 2, 6, -7, 4, -7, -7,
    -- layer=1 filter=41 channel=31
    -1, -12, -10, 0, 5, -5, 3, -6, 12,
    -- layer=1 filter=41 channel=32
    4, 5, -15, -5, -13, -9, -16, 0, -3,
    -- layer=1 filter=41 channel=33
    -12, -6, -7, 5, 14, -4, 4, 4, -6,
    -- layer=1 filter=41 channel=34
    2, -15, 6, 6, 4, -3, -16, -8, -14,
    -- layer=1 filter=41 channel=35
    -16, 3, -17, -6, -4, -14, 11, 5, 5,
    -- layer=1 filter=41 channel=36
    3, -4, 5, 10, 6, -11, 0, 9, 3,
    -- layer=1 filter=41 channel=37
    -3, -6, 0, 9, -1, 12, 12, -6, 0,
    -- layer=1 filter=41 channel=38
    1, -10, 0, -6, -5, 1, 9, 5, -8,
    -- layer=1 filter=41 channel=39
    -3, -7, -1, 12, -3, 6, 0, 1, -7,
    -- layer=1 filter=41 channel=40
    -14, 5, -16, 0, -14, -19, -16, -12, 9,
    -- layer=1 filter=41 channel=41
    9, -8, 3, 4, -16, -8, 10, 6, 12,
    -- layer=1 filter=41 channel=42
    -2, -19, -12, -7, 0, 10, -4, -16, 12,
    -- layer=1 filter=41 channel=43
    -13, -1, 5, 7, 5, -12, -6, 1, -9,
    -- layer=1 filter=41 channel=44
    4, -10, -5, -17, 0, -3, -17, 8, -4,
    -- layer=1 filter=41 channel=45
    -13, 0, 1, -4, 7, -9, -7, -14, -3,
    -- layer=1 filter=41 channel=46
    -6, -4, -16, 3, 9, 3, 8, -10, 1,
    -- layer=1 filter=41 channel=47
    -1, 0, 0, -5, -4, 10, -14, 7, 10,
    -- layer=1 filter=41 channel=48
    2, -1, 8, -17, -12, -9, 5, -10, -3,
    -- layer=1 filter=41 channel=49
    0, 8, -8, 6, -14, -9, 13, -13, 6,
    -- layer=1 filter=41 channel=50
    -9, -9, 1, -15, -11, 9, -4, -11, 2,
    -- layer=1 filter=41 channel=51
    -7, 7, -14, 7, -9, 10, -5, -17, 3,
    -- layer=1 filter=41 channel=52
    -6, -3, 4, 11, -14, 12, -12, 2, 2,
    -- layer=1 filter=41 channel=53
    -11, -4, 1, -9, 9, 11, 0, 2, -7,
    -- layer=1 filter=41 channel=54
    -6, -7, 0, 1, -12, -14, 8, -7, -8,
    -- layer=1 filter=41 channel=55
    -13, -6, -3, -3, 8, 5, -11, 0, 11,
    -- layer=1 filter=41 channel=56
    1, 3, -16, 0, 11, -15, -16, 10, 5,
    -- layer=1 filter=41 channel=57
    -11, 1, 6, 4, 9, -4, -11, -10, -6,
    -- layer=1 filter=41 channel=58
    -2, -6, 10, -6, -12, 4, 8, -7, 9,
    -- layer=1 filter=41 channel=59
    -15, -7, -3, -17, -8, 9, 2, 1, 8,
    -- layer=1 filter=41 channel=60
    0, -16, 6, 5, 4, 2, -7, 13, -13,
    -- layer=1 filter=41 channel=61
    9, -12, -13, 15, 9, -2, -13, 2, -4,
    -- layer=1 filter=41 channel=62
    -16, 4, 0, 0, -12, -3, -2, 3, 4,
    -- layer=1 filter=41 channel=63
    3, 16, -3, -7, 1, -13, 7, 11, -8,
    -- layer=1 filter=42 channel=0
    -14, 8, -2, -46, -44, 1, -40, -59, -41,
    -- layer=1 filter=42 channel=1
    -9, 22, 7, -16, -33, -44, -23, -31, -46,
    -- layer=1 filter=42 channel=2
    8, 24, 25, -21, 0, 37, -12, 19, 29,
    -- layer=1 filter=42 channel=3
    48, 3, -3, -1, 32, 11, 6, -3, -24,
    -- layer=1 filter=42 channel=4
    12, 17, -7, 12, -18, -1, -9, -7, -4,
    -- layer=1 filter=42 channel=5
    53, 21, 4, 56, 64, 40, 23, -19, -22,
    -- layer=1 filter=42 channel=6
    -14, 11, -9, -8, -8, -22, 10, 0, 4,
    -- layer=1 filter=42 channel=7
    20, -6, 11, -17, 1, 13, -31, -11, 4,
    -- layer=1 filter=42 channel=8
    26, -4, 5, 0, 0, 1, -8, -7, -7,
    -- layer=1 filter=42 channel=9
    -19, 6, 12, -9, 3, -8, -23, -13, 11,
    -- layer=1 filter=42 channel=10
    11, 17, -2, -30, -5, -34, -22, -12, 8,
    -- layer=1 filter=42 channel=11
    -11, 13, -11, -9, -27, -11, -13, -16, -20,
    -- layer=1 filter=42 channel=12
    -19, -3, 38, -19, -24, 15, -22, -18, 31,
    -- layer=1 filter=42 channel=13
    0, 3, -8, -48, -57, -50, -24, -97, -63,
    -- layer=1 filter=42 channel=14
    11, 15, -7, 1, -4, -8, -12, -50, -43,
    -- layer=1 filter=42 channel=15
    -9, -5, 20, 14, 19, 29, 19, 19, 5,
    -- layer=1 filter=42 channel=16
    25, 20, -17, 29, 35, 46, 19, -18, -2,
    -- layer=1 filter=42 channel=17
    18, -22, -38, -11, -31, -60, -40, -90, -60,
    -- layer=1 filter=42 channel=18
    5, -17, -14, -13, -3, 2, -2, -15, -14,
    -- layer=1 filter=42 channel=19
    -14, -17, -10, -19, 2, 3, -9, 10, 7,
    -- layer=1 filter=42 channel=20
    -17, 10, 26, -30, -13, 18, -44, -24, -2,
    -- layer=1 filter=42 channel=21
    15, 26, 18, 29, -6, -14, -9, -31, -5,
    -- layer=1 filter=42 channel=22
    51, 63, 44, 36, 32, 29, 3, 7, -16,
    -- layer=1 filter=42 channel=23
    56, 84, 86, 62, -37, 29, -1, -39, -11,
    -- layer=1 filter=42 channel=24
    7, 50, -4, -15, 6, -11, 0, 31, 25,
    -- layer=1 filter=42 channel=25
    2, -30, 48, 40, 0, -44, 3, -23, -3,
    -- layer=1 filter=42 channel=26
    -23, 14, 8, -9, 7, -3, -35, -24, -27,
    -- layer=1 filter=42 channel=27
    -46, -26, -6, -39, -45, -6, -27, -69, -6,
    -- layer=1 filter=42 channel=28
    12, 21, 28, -71, -14, 28, -18, -50, -6,
    -- layer=1 filter=42 channel=29
    -17, -53, -14, -42, -32, -49, 8, -41, -30,
    -- layer=1 filter=42 channel=30
    5, 6, -23, 11, -2, -3, 8, -2, -4,
    -- layer=1 filter=42 channel=31
    6, 1, 5, 15, 20, 23, 34, 17, 10,
    -- layer=1 filter=42 channel=32
    -11, -8, 48, -17, 3, 56, -28, -3, 58,
    -- layer=1 filter=42 channel=33
    -5, 24, -1, 6, -10, 12, 0, -4, 10,
    -- layer=1 filter=42 channel=34
    -4, 12, 13, -17, -15, 0, -5, -6, -13,
    -- layer=1 filter=42 channel=35
    -19, -37, 7, 0, -5, -4, -3, 8, 18,
    -- layer=1 filter=42 channel=36
    16, -1, -34, 3, 15, 13, 17, -11, -6,
    -- layer=1 filter=42 channel=37
    5, 21, 25, 7, 9, 4, -17, -29, -31,
    -- layer=1 filter=42 channel=38
    1, -19, 15, -11, -3, 15, 6, 0, 7,
    -- layer=1 filter=42 channel=39
    7, 0, -7, -16, 6, 0, 5, 15, -10,
    -- layer=1 filter=42 channel=40
    16, 7, 2, -5, -10, -6, -1, 11, -19,
    -- layer=1 filter=42 channel=41
    16, 9, -10, 27, 37, 15, 14, -28, -47,
    -- layer=1 filter=42 channel=42
    -11, 22, -6, -22, -18, -27, -44, -23, -23,
    -- layer=1 filter=42 channel=43
    0, -38, -13, 10, -14, -34, 35, -10, 7,
    -- layer=1 filter=42 channel=44
    -27, -9, 2, -19, 8, 10, -15, 3, 34,
    -- layer=1 filter=42 channel=45
    7, -57, -4, 3, -22, -17, 37, -25, -4,
    -- layer=1 filter=42 channel=46
    17, -9, -4, -27, -31, -34, -43, -38, -45,
    -- layer=1 filter=42 channel=47
    6, -20, 20, -2, -13, -7, 16, -39, 7,
    -- layer=1 filter=42 channel=48
    49, 47, 39, 17, 10, 14, 29, 16, -17,
    -- layer=1 filter=42 channel=49
    4, -7, 6, -23, -15, 1, 1, -16, -8,
    -- layer=1 filter=42 channel=50
    21, 0, 19, 19, -3, 17, 0, -10, -15,
    -- layer=1 filter=42 channel=51
    -19, -10, 13, -4, 0, -1, -10, 11, 6,
    -- layer=1 filter=42 channel=52
    -26, -12, -48, -27, -26, -24, -38, -26, -43,
    -- layer=1 filter=42 channel=53
    34, 22, 6, 7, 45, 28, 0, -4, 6,
    -- layer=1 filter=42 channel=54
    5, 9, 17, 7, 3, 5, -21, -20, -9,
    -- layer=1 filter=42 channel=55
    -8, 5, 0, -29, -31, -26, -39, -76, -21,
    -- layer=1 filter=42 channel=56
    10, 2, 20, -25, -31, -19, -17, -50, -39,
    -- layer=1 filter=42 channel=57
    -1, -9, 13, -12, -4, 16, 5, 15, 6,
    -- layer=1 filter=42 channel=58
    32, -19, 15, 8, 17, 15, -13, -40, -7,
    -- layer=1 filter=42 channel=59
    -11, -17, 10, -7, 15, -16, -8, -7, 11,
    -- layer=1 filter=42 channel=60
    8, 2, 17, 21, 6, 0, 18, 9, 23,
    -- layer=1 filter=42 channel=61
    -7, 2, -30, -25, -41, -50, -35, -61, -74,
    -- layer=1 filter=42 channel=62
    -40, -51, 13, -48, -79, 54, -20, -22, -12,
    -- layer=1 filter=42 channel=63
    77, 61, 44, 29, 72, 55, -17, -23, -47,
    -- layer=1 filter=43 channel=0
    36, 32, 12, 33, 16, 31, 39, 17, 31,
    -- layer=1 filter=43 channel=1
    -5, 7, 35, 7, 3, 9, 10, 9, 17,
    -- layer=1 filter=43 channel=2
    38, 25, 14, 29, 12, 5, 5, 23, 19,
    -- layer=1 filter=43 channel=3
    -74, -100, -120, -114, -79, -128, -147, -166, -119,
    -- layer=1 filter=43 channel=4
    -31, 8, 7, 7, 2, 13, -3, 19, -2,
    -- layer=1 filter=43 channel=5
    -8, 51, 40, 21, -5, 7, -33, -18, -29,
    -- layer=1 filter=43 channel=6
    -26, -8, 16, 20, 12, 6, -4, 0, -5,
    -- layer=1 filter=43 channel=7
    -24, -6, 1, 2, 3, -13, -2, 0, 16,
    -- layer=1 filter=43 channel=8
    -36, -21, 0, -28, -7, 1, -17, 3, -3,
    -- layer=1 filter=43 channel=9
    4, -28, -29, 0, 11, 2, -20, -14, -12,
    -- layer=1 filter=43 channel=10
    29, 19, 9, 20, -1, 10, 30, 8, -4,
    -- layer=1 filter=43 channel=11
    2, -1, 20, -11, 2, 0, 18, 20, 4,
    -- layer=1 filter=43 channel=12
    25, -3, -27, 17, -40, 6, -34, -5, -38,
    -- layer=1 filter=43 channel=13
    16, 27, 27, 19, 16, 23, 33, 39, 2,
    -- layer=1 filter=43 channel=14
    -20, -14, 6, 8, 11, 11, 22, 20, 16,
    -- layer=1 filter=43 channel=15
    1, -8, -22, 14, -2, -8, 6, -9, 12,
    -- layer=1 filter=43 channel=16
    -7, -40, -87, -98, -129, -133, -121, -136, -134,
    -- layer=1 filter=43 channel=17
    7, -5, 22, -40, -15, -43, 1, -46, -26,
    -- layer=1 filter=43 channel=18
    -12, 6, -9, 14, -5, 14, -8, 8, -9,
    -- layer=1 filter=43 channel=19
    -20, -7, -10, -1, -21, 7, 6, 15, 11,
    -- layer=1 filter=43 channel=20
    6, -6, 12, 1, -1, 36, 15, 5, 14,
    -- layer=1 filter=43 channel=21
    41, 31, 51, 39, 4, 15, 47, 11, -12,
    -- layer=1 filter=43 channel=22
    50, 28, 4, -9, 11, -60, -31, -26, -86,
    -- layer=1 filter=43 channel=23
    -10, -12, -14, -36, -3, -10, -30, -22, -17,
    -- layer=1 filter=43 channel=24
    54, 53, 67, 5, 20, -22, -16, -40, -39,
    -- layer=1 filter=43 channel=25
    -68, -55, -68, -73, -50, -64, -97, -104, 2,
    -- layer=1 filter=43 channel=26
    37, 64, 31, 17, -4, 17, -6, -7, 1,
    -- layer=1 filter=43 channel=27
    27, 17, -18, 33, -13, 9, 14, -1, -50,
    -- layer=1 filter=43 channel=28
    -15, -33, -47, -47, -30, -5, 4, -23, -38,
    -- layer=1 filter=43 channel=29
    -56, -48, 1, -85, -45, -48, -102, -66, -13,
    -- layer=1 filter=43 channel=30
    -10, -12, -16, -4, -12, 6, -15, -17, 7,
    -- layer=1 filter=43 channel=31
    2, -1, -13, -23, -11, -5, 8, 0, 12,
    -- layer=1 filter=43 channel=32
    23, -44, -32, -9, -44, -27, -26, -26, -58,
    -- layer=1 filter=43 channel=33
    -11, -3, 13, -10, 10, -8, -12, 4, -1,
    -- layer=1 filter=43 channel=34
    -20, -34, 4, -37, -1, -2, -21, -4, -18,
    -- layer=1 filter=43 channel=35
    -6, -5, -24, -21, 7, 1, 0, 8, 9,
    -- layer=1 filter=43 channel=36
    0, -12, -44, -32, -36, -74, -59, -69, -69,
    -- layer=1 filter=43 channel=37
    -35, -19, -27, -25, 0, 19, -7, 21, 17,
    -- layer=1 filter=43 channel=38
    2, -22, -21, 9, 9, -28, -21, -27, 23,
    -- layer=1 filter=43 channel=39
    -15, -12, 6, -3, -8, -4, -7, -7, -9,
    -- layer=1 filter=43 channel=40
    16, 2, 39, 2, 11, 5, -6, 5, 10,
    -- layer=1 filter=43 channel=41
    -3, 20, 23, 12, 0, -18, -12, -34, -48,
    -- layer=1 filter=43 channel=42
    15, 34, 13, 31, 34, 36, 21, 32, 32,
    -- layer=1 filter=43 channel=43
    -66, -44, -38, -61, -90, -79, -72, -94, -31,
    -- layer=1 filter=43 channel=44
    6, 6, -17, 16, 3, 0, 3, -7, -8,
    -- layer=1 filter=43 channel=45
    -109, -142, -113, -191, -175, -127, -181, -185, -61,
    -- layer=1 filter=43 channel=46
    -8, 12, 29, 2, -4, -14, -10, 0, -9,
    -- layer=1 filter=43 channel=47
    -10, -31, -8, -10, -5, -3, -12, -8, -6,
    -- layer=1 filter=43 channel=48
    0, 18, 16, 20, -7, -24, -30, -1, -42,
    -- layer=1 filter=43 channel=49
    29, 23, 15, 29, 14, 11, 3, 46, 3,
    -- layer=1 filter=43 channel=50
    -10, -24, -1, -12, -8, 15, -9, 18, 33,
    -- layer=1 filter=43 channel=51
    -28, 5, -8, 14, 6, 0, 27, 14, 31,
    -- layer=1 filter=43 channel=52
    5, 10, -24, -24, -10, -25, -5, -36, -28,
    -- layer=1 filter=43 channel=53
    -35, -88, -107, -149, -115, -140, -114, -124, -153,
    -- layer=1 filter=43 channel=54
    -21, -1, -10, -12, -6, -6, 14, 17, 3,
    -- layer=1 filter=43 channel=55
    -33, -40, -1, -20, -37, -35, -15, -46, -49,
    -- layer=1 filter=43 channel=56
    -10, -18, 9, 2, -2, -3, -13, -11, 9,
    -- layer=1 filter=43 channel=57
    -15, -11, -18, -11, -11, 12, 0, 20, 21,
    -- layer=1 filter=43 channel=58
    -11, -32, -44, -46, -23, -23, -24, -29, -31,
    -- layer=1 filter=43 channel=59
    -18, 4, -19, -11, -10, -1, 0, -9, 14,
    -- layer=1 filter=43 channel=60
    -21, -13, -21, -6, 0, -9, -8, -3, 8,
    -- layer=1 filter=43 channel=61
    -2, 34, 13, 2, 23, 34, 9, 12, 31,
    -- layer=1 filter=43 channel=62
    42, -26, 5, -62, -46, -51, -126, -95, -90,
    -- layer=1 filter=43 channel=63
    -38, -78, -1, -60, -56, -128, -69, -118, -146,
    -- layer=1 filter=44 channel=0
    0, -10, 9, 6, 8, -6, 6, 0, -5,
    -- layer=1 filter=44 channel=1
    11, -10, 12, -1, 6, 8, -16, 5, -14,
    -- layer=1 filter=44 channel=2
    -13, -15, 7, -11, -11, 0, -2, 7, 1,
    -- layer=1 filter=44 channel=3
    -9, 10, -2, 5, 4, 4, -2, 10, 6,
    -- layer=1 filter=44 channel=4
    2, -14, 11, -14, -11, -12, -9, 4, -11,
    -- layer=1 filter=44 channel=5
    9, -2, 10, 7, 2, 7, -1, 6, -6,
    -- layer=1 filter=44 channel=6
    3, -13, 5, -5, -1, 6, -11, -13, -5,
    -- layer=1 filter=44 channel=7
    -11, 6, -8, -12, 4, -2, 7, 0, 7,
    -- layer=1 filter=44 channel=8
    -17, 12, -16, 13, 7, -15, -10, -9, -11,
    -- layer=1 filter=44 channel=9
    -11, 0, -11, 6, -2, 12, -4, 0, -14,
    -- layer=1 filter=44 channel=10
    3, 13, -2, 1, -13, 13, -5, -6, -5,
    -- layer=1 filter=44 channel=11
    -6, -15, -11, 2, 7, -11, 12, -1, -14,
    -- layer=1 filter=44 channel=12
    -4, 10, -10, -11, -3, -12, -12, 6, -8,
    -- layer=1 filter=44 channel=13
    -11, 0, 8, 11, 0, -8, -6, -13, -13,
    -- layer=1 filter=44 channel=14
    -11, 1, -14, -11, -14, -9, -13, -13, -11,
    -- layer=1 filter=44 channel=15
    1, 1, 8, -12, -8, -12, -11, 11, 10,
    -- layer=1 filter=44 channel=16
    10, 9, 0, -10, 1, -4, -1, -15, 0,
    -- layer=1 filter=44 channel=17
    -13, -4, 3, 14, 12, -9, -3, 12, 11,
    -- layer=1 filter=44 channel=18
    6, -1, 11, 0, 8, 5, 11, -10, -15,
    -- layer=1 filter=44 channel=19
    -3, 7, 4, -9, -7, 12, 6, 9, -6,
    -- layer=1 filter=44 channel=20
    8, -12, 13, -7, -2, -12, 3, 0, 1,
    -- layer=1 filter=44 channel=21
    -10, 6, 7, 11, 9, -14, 10, -12, -2,
    -- layer=1 filter=44 channel=22
    2, 12, -4, -2, -3, 10, -5, -5, 4,
    -- layer=1 filter=44 channel=23
    9, -3, 9, -14, -10, 5, 5, 8, 12,
    -- layer=1 filter=44 channel=24
    13, -6, -11, 0, -16, -16, 0, 5, -18,
    -- layer=1 filter=44 channel=25
    -5, -9, 0, -2, -15, -14, -6, 3, 3,
    -- layer=1 filter=44 channel=26
    -3, -2, 12, 5, 14, -1, 7, -2, 6,
    -- layer=1 filter=44 channel=27
    -10, -10, 5, -11, -3, -4, -4, 0, 7,
    -- layer=1 filter=44 channel=28
    8, -14, -9, 9, -4, 5, -10, -8, 4,
    -- layer=1 filter=44 channel=29
    -4, -3, -1, 10, 10, 10, 1, 8, -12,
    -- layer=1 filter=44 channel=30
    11, 1, 0, 3, -10, -4, -10, -14, 0,
    -- layer=1 filter=44 channel=31
    1, 8, 10, -11, 7, -16, 13, 11, -13,
    -- layer=1 filter=44 channel=32
    -4, 8, -6, -16, -14, -4, 5, -5, 1,
    -- layer=1 filter=44 channel=33
    6, -11, 8, -5, 11, 0, -10, 12, 0,
    -- layer=1 filter=44 channel=34
    0, -15, 2, 6, -8, -7, -16, -10, 1,
    -- layer=1 filter=44 channel=35
    1, 6, 4, 7, -14, -10, -5, 9, -10,
    -- layer=1 filter=44 channel=36
    10, 5, -12, 10, -5, 10, 5, 6, -9,
    -- layer=1 filter=44 channel=37
    -14, -6, -1, -14, 3, 11, -14, 4, -3,
    -- layer=1 filter=44 channel=38
    -10, -1, -11, -16, 4, 1, 5, -8, 8,
    -- layer=1 filter=44 channel=39
    5, 0, -13, 10, 2, 11, 14, 0, 10,
    -- layer=1 filter=44 channel=40
    9, -2, -1, -17, -11, 6, 3, -11, -9,
    -- layer=1 filter=44 channel=41
    -13, -14, -10, 6, -11, 0, -15, 0, -4,
    -- layer=1 filter=44 channel=42
    -2, 0, -12, -12, -4, 7, 0, 12, -1,
    -- layer=1 filter=44 channel=43
    7, 1, 8, -3, 0, 0, -2, -11, 4,
    -- layer=1 filter=44 channel=44
    -4, 5, 3, 9, -7, -10, -3, -4, -10,
    -- layer=1 filter=44 channel=45
    -8, -14, 4, -1, 0, 1, 1, -13, -4,
    -- layer=1 filter=44 channel=46
    -1, 0, -13, 11, -1, -3, -12, 4, 8,
    -- layer=1 filter=44 channel=47
    10, -10, 5, -6, -2, 1, -11, -13, 9,
    -- layer=1 filter=44 channel=48
    11, 11, 8, -1, -15, -2, -8, -17, -11,
    -- layer=1 filter=44 channel=49
    -13, -9, 12, -1, 5, -9, 8, -5, -7,
    -- layer=1 filter=44 channel=50
    10, -8, -10, 1, 7, -5, -14, -10, -11,
    -- layer=1 filter=44 channel=51
    6, 2, -2, -4, -14, 2, 9, -6, -15,
    -- layer=1 filter=44 channel=52
    0, 9, -3, -2, 8, 3, -4, 0, -1,
    -- layer=1 filter=44 channel=53
    -4, 3, -10, 11, 6, -12, 8, 7, 2,
    -- layer=1 filter=44 channel=54
    -18, -5, 6, -12, -13, -14, 9, -1, -10,
    -- layer=1 filter=44 channel=55
    11, 11, 9, 12, 9, -6, 11, 0, 11,
    -- layer=1 filter=44 channel=56
    10, -7, -14, -11, 6, 6, 9, -7, -13,
    -- layer=1 filter=44 channel=57
    3, 5, -6, 0, -7, 8, -11, -4, 10,
    -- layer=1 filter=44 channel=58
    -11, 1, 1, -1, -5, -13, 6, 6, -10,
    -- layer=1 filter=44 channel=59
    -2, -8, 4, 3, 5, 1, -14, -12, 7,
    -- layer=1 filter=44 channel=60
    10, -1, -13, -11, 0, -12, -11, 11, 8,
    -- layer=1 filter=44 channel=61
    -17, 7, 0, 0, -15, -3, 10, 0, 3,
    -- layer=1 filter=44 channel=62
    6, -7, -1, 4, -13, -1, -12, 1, -10,
    -- layer=1 filter=44 channel=63
    -1, -12, -14, -14, 5, 11, 9, 1, 10,
    -- layer=1 filter=45 channel=0
    -8, -31, -36, 25, 15, 4, 7, 13, 23,
    -- layer=1 filter=45 channel=1
    -13, 2, -40, 45, 34, 36, 46, 52, 51,
    -- layer=1 filter=45 channel=2
    -25, -12, -3, -24, -21, -36, -7, 8, 3,
    -- layer=1 filter=45 channel=3
    -1, 11, 47, 1, -4, -16, -15, -13, 11,
    -- layer=1 filter=45 channel=4
    -64, -67, -62, -25, -4, -42, 19, 8, 25,
    -- layer=1 filter=45 channel=5
    -12, 5, 0, 9, 12, 3, 41, 26, 76,
    -- layer=1 filter=45 channel=6
    -29, -45, -26, -20, -12, -40, -13, -19, 2,
    -- layer=1 filter=45 channel=7
    -71, -17, -23, -39, -65, -67, -6, -34, -6,
    -- layer=1 filter=45 channel=8
    19, 2, -18, 54, 39, -7, -12, 0, -5,
    -- layer=1 filter=45 channel=9
    11, -25, 42, 10, -71, -72, -22, -36, -36,
    -- layer=1 filter=45 channel=10
    59, 40, 6, 81, 95, 90, 61, 70, 50,
    -- layer=1 filter=45 channel=11
    -1, 7, 2, 27, 13, -3, 6, 4, 6,
    -- layer=1 filter=45 channel=12
    -22, 13, -8, -20, -36, 28, -17, 6, 18,
    -- layer=1 filter=45 channel=13
    4, -1, -32, 56, 54, 43, 33, 28, 31,
    -- layer=1 filter=45 channel=14
    -29, -51, -16, -38, 0, -19, -2, 26, -6,
    -- layer=1 filter=45 channel=15
    3, -13, -9, -32, -53, -65, -49, -65, -34,
    -- layer=1 filter=45 channel=16
    2, -6, 9, -13, 21, 8, 22, 8, 47,
    -- layer=1 filter=45 channel=17
    23, 6, -3, 49, 92, 47, 53, 54, 21,
    -- layer=1 filter=45 channel=18
    9, -6, 0, 2, 5, -3, 11, -17, -12,
    -- layer=1 filter=45 channel=19
    -25, 4, -24, 19, -31, -46, 28, -10, 14,
    -- layer=1 filter=45 channel=20
    -35, -8, -5, -30, -27, -2, -40, -7, -19,
    -- layer=1 filter=45 channel=21
    46, 28, -3, 92, 93, 78, 56, 67, 40,
    -- layer=1 filter=45 channel=22
    22, 0, -20, 58, 43, 17, 59, 52, 56,
    -- layer=1 filter=45 channel=23
    -49, -72, -96, -25, -11, -39, -34, -38, -50,
    -- layer=1 filter=45 channel=24
    33, 20, 34, 48, 21, 18, 38, 5, 10,
    -- layer=1 filter=45 channel=25
    -8, -4, -3, 17, 2, 67, -2, 33, 51,
    -- layer=1 filter=45 channel=26
    17, 2, 1, 15, -26, -45, -17, -23, -41,
    -- layer=1 filter=45 channel=27
    -85, -50, -50, -40, -14, -29, -1, 15, 14,
    -- layer=1 filter=45 channel=28
    -82, -65, -61, -60, -47, -70, 14, -28, -3,
    -- layer=1 filter=45 channel=29
    -29, -29, -35, 32, 19, 6, 19, 36, 29,
    -- layer=1 filter=45 channel=30
    9, -1, 9, 11, 0, 15, 15, 3, -8,
    -- layer=1 filter=45 channel=31
    0, -23, -35, -3, -17, -19, -5, -3, 40,
    -- layer=1 filter=45 channel=32
    -60, -34, -6, -58, -66, -29, -60, -2, -9,
    -- layer=1 filter=45 channel=33
    -8, 9, -14, 3, -5, 9, 15, -12, 1,
    -- layer=1 filter=45 channel=34
    -33, -31, -25, -14, -17, -11, 1, 3, 0,
    -- layer=1 filter=45 channel=35
    28, -6, 17, 0, -20, 12, -22, -37, -6,
    -- layer=1 filter=45 channel=36
    38, 17, 49, 2, 10, -51, -69, -43, 1,
    -- layer=1 filter=45 channel=37
    -20, 2, -3, 34, 56, 9, 40, 39, 15,
    -- layer=1 filter=45 channel=38
    25, 15, 21, -19, -53, -41, 6, -23, 2,
    -- layer=1 filter=45 channel=39
    25, -3, -1, -15, 11, 6, 8, 9, 0,
    -- layer=1 filter=45 channel=40
    -30, -35, -11, -43, -41, -45, -13, 9, 3,
    -- layer=1 filter=45 channel=41
    -36, -17, -14, 1, -12, -19, 20, 38, 52,
    -- layer=1 filter=45 channel=42
    -40, -33, -32, 6, 11, 7, -2, 2, -4,
    -- layer=1 filter=45 channel=43
    -69, -77, -70, -9, -64, -31, 16, -2, 7,
    -- layer=1 filter=45 channel=44
    34, 31, 36, -1, -27, -33, -25, -32, -28,
    -- layer=1 filter=45 channel=45
    -58, -57, -56, -41, -75, -82, -66, -60, -45,
    -- layer=1 filter=45 channel=46
    -34, -82, -42, -57, -66, -46, 0, -2, -19,
    -- layer=1 filter=45 channel=47
    -51, -43, -54, -61, -67, -109, -1, -12, -9,
    -- layer=1 filter=45 channel=48
    6, 6, -17, 24, 11, -8, 41, 36, 66,
    -- layer=1 filter=45 channel=49
    -8, 12, -2, 30, 19, 40, 4, 25, 41,
    -- layer=1 filter=45 channel=50
    -2, -3, -3, 47, 36, 31, 23, 47, 22,
    -- layer=1 filter=45 channel=51
    -31, -27, -10, -52, -57, -46, -20, -25, 3,
    -- layer=1 filter=45 channel=52
    45, 39, 32, 88, 124, 79, 95, 99, 65,
    -- layer=1 filter=45 channel=53
    -10, 4, 47, -27, -5, -17, -12, 10, 12,
    -- layer=1 filter=45 channel=54
    -26, -9, -5, -42, -49, -35, -30, -16, -24,
    -- layer=1 filter=45 channel=55
    0, -1, -39, 45, 53, 30, 46, 33, 25,
    -- layer=1 filter=45 channel=56
    -78, -40, -52, -27, -18, -24, -20, 15, 1,
    -- layer=1 filter=45 channel=57
    21, 34, 40, -12, -34, -21, -36, -48, -60,
    -- layer=1 filter=45 channel=58
    -18, -11, 15, 18, 20, 18, 49, 9, 0,
    -- layer=1 filter=45 channel=59
    -16, -36, -8, -28, -36, -58, -21, -54, -21,
    -- layer=1 filter=45 channel=60
    18, 41, 30, 24, 27, 32, -13, 6, 13,
    -- layer=1 filter=45 channel=61
    -30, -16, -21, 11, 38, 19, 21, 11, 19,
    -- layer=1 filter=45 channel=62
    -18, -47, 2, -1, -36, 77, 15, 17, 57,
    -- layer=1 filter=45 channel=63
    6, -68, -18, -4, 16, 0, 96, 87, 105,
    -- layer=1 filter=46 channel=0
    5, -8, -28, 12, 0, -7, 12, -5, 7,
    -- layer=1 filter=46 channel=1
    3, 5, -19, -8, 3, 5, 2, 6, 8,
    -- layer=1 filter=46 channel=2
    -13, -47, -24, 16, -26, -35, 12, -8, -35,
    -- layer=1 filter=46 channel=3
    -115, -99, -16, -65, -48, -9, -93, -82, -35,
    -- layer=1 filter=46 channel=4
    12, 5, -14, 11, 20, 9, 30, 29, 14,
    -- layer=1 filter=46 channel=5
    -7, -15, 0, -41, -39, 4, -10, 0, 54,
    -- layer=1 filter=46 channel=6
    -4, 5, 1, 6, -4, 2, 23, 7, 2,
    -- layer=1 filter=46 channel=7
    4, 0, -6, 3, -2, -6, -8, 7, 5,
    -- layer=1 filter=46 channel=8
    -6, 23, 13, 5, 19, 15, 12, 34, 9,
    -- layer=1 filter=46 channel=9
    -18, -2, -22, -7, -1, -9, 0, -36, -21,
    -- layer=1 filter=46 channel=10
    2, 26, 5, -7, -1, 7, -12, -2, 0,
    -- layer=1 filter=46 channel=11
    18, 12, 15, 3, 13, -7, 32, 22, 25,
    -- layer=1 filter=46 channel=12
    3, -107, -115, -14, -85, -147, -5, -48, -66,
    -- layer=1 filter=46 channel=13
    38, 7, -12, 26, 21, -1, 20, 6, 11,
    -- layer=1 filter=46 channel=14
    15, -11, -3, 9, 10, 15, -5, -4, -10,
    -- layer=1 filter=46 channel=15
    -1, -3, 19, 7, 23, 0, -4, 25, -10,
    -- layer=1 filter=46 channel=16
    -85, -78, -25, -94, -72, -32, -105, -49, -21,
    -- layer=1 filter=46 channel=17
    6, 24, 18, -14, -25, 21, 3, -8, -1,
    -- layer=1 filter=46 channel=18
    -9, 11, 11, -1, -12, 9, -15, -16, -12,
    -- layer=1 filter=46 channel=19
    1, 13, 0, -11, 9, -1, 13, 42, 6,
    -- layer=1 filter=46 channel=20
    7, -31, -30, -1, -30, -13, 28, -14, -5,
    -- layer=1 filter=46 channel=21
    -10, 4, 15, -2, -12, -22, 4, -15, 5,
    -- layer=1 filter=46 channel=22
    -69, -82, -52, -101, -59, -24, 36, 59, 60,
    -- layer=1 filter=46 channel=23
    -6, 24, 31, -8, -9, 31, 13, 22, 32,
    -- layer=1 filter=46 channel=24
    -62, -57, -20, -58, -57, 19, -39, -15, -7,
    -- layer=1 filter=46 channel=25
    -30, 15, 7, -40, 17, 4, -47, 26, -5,
    -- layer=1 filter=46 channel=26
    -17, -17, -10, -33, -19, -3, -8, 0, 12,
    -- layer=1 filter=46 channel=27
    2, -83, -76, -5, -57, -118, 5, -19, -76,
    -- layer=1 filter=46 channel=28
    -6, 4, -12, -8, 21, -17, -16, 14, -7,
    -- layer=1 filter=46 channel=29
    -10, 2, 4, -33, 36, 15, -3, 45, 9,
    -- layer=1 filter=46 channel=30
    -9, -5, -13, -7, 0, 2, -7, 9, 9,
    -- layer=1 filter=46 channel=31
    -10, 7, 2, -9, 8, -7, -10, 40, 9,
    -- layer=1 filter=46 channel=32
    -12, -131, -119, 12, -88, -128, 25, -77, -97,
    -- layer=1 filter=46 channel=33
    2, 14, 0, -7, -15, -11, 2, 3, 1,
    -- layer=1 filter=46 channel=34
    3, -10, 2, -7, 11, -13, 7, 14, 2,
    -- layer=1 filter=46 channel=35
    1, 13, 12, -17, 7, 8, 0, 1, -6,
    -- layer=1 filter=46 channel=36
    -45, -59, -12, -51, -53, 0, -33, -88, -13,
    -- layer=1 filter=46 channel=37
    25, 31, 4, 27, 17, 18, 19, 13, 20,
    -- layer=1 filter=46 channel=38
    -8, 4, 25, -19, -2, 8, -4, 10, -7,
    -- layer=1 filter=46 channel=39
    -7, -2, 12, -8, 11, 6, 6, 8, 6,
    -- layer=1 filter=46 channel=40
    -7, -22, -19, -16, -1, -3, -7, -19, 9,
    -- layer=1 filter=46 channel=41
    -10, -19, -20, -21, -1, -18, 13, 27, 34,
    -- layer=1 filter=46 channel=42
    1, 4, -9, 17, -8, -1, 7, 1, 8,
    -- layer=1 filter=46 channel=43
    -37, -24, -6, -47, 0, -18, 4, 27, -12,
    -- layer=1 filter=46 channel=44
    -16, -17, -10, -15, -17, -13, -8, -36, -8,
    -- layer=1 filter=46 channel=45
    -46, -37, -34, -91, 6, -39, -55, 1, -24,
    -- layer=1 filter=46 channel=46
    -31, -40, -22, 10, -11, -16, 12, 0, -27,
    -- layer=1 filter=46 channel=47
    -5, 16, -7, -7, 25, -5, -6, 9, -21,
    -- layer=1 filter=46 channel=48
    -60, -77, -61, -79, -42, -3, 18, 21, 73,
    -- layer=1 filter=46 channel=49
    2, -5, -13, 15, -6, -9, 27, 15, 42,
    -- layer=1 filter=46 channel=50
    -4, 18, 14, -1, 23, 16, 1, 37, 6,
    -- layer=1 filter=46 channel=51
    11, 2, 6, 15, 3, -4, 15, 17, 7,
    -- layer=1 filter=46 channel=52
    12, 2, -1, -41, -32, -3, -36, -23, 2,
    -- layer=1 filter=46 channel=53
    -34, -106, -100, -56, -89, -39, -20, -129, -67,
    -- layer=1 filter=46 channel=54
    12, 16, 12, 2, 8, -4, 25, 19, 16,
    -- layer=1 filter=46 channel=55
    6, 31, 21, -9, 9, 17, -5, 6, 8,
    -- layer=1 filter=46 channel=56
    0, 8, 10, 11, 12, 22, -5, 36, 10,
    -- layer=1 filter=46 channel=57
    -2, -2, 6, -2, 0, 3, 20, 16, 14,
    -- layer=1 filter=46 channel=58
    -10, 0, 8, -10, 10, 14, -22, 11, -10,
    -- layer=1 filter=46 channel=59
    -6, -6, -4, -2, -2, 17, 5, 12, 8,
    -- layer=1 filter=46 channel=60
    -4, 7, -3, -24, 4, -5, -17, -1, -3,
    -- layer=1 filter=46 channel=61
    13, 15, 20, 2, 14, -4, 10, 22, 20,
    -- layer=1 filter=46 channel=62
    -36, -152, -136, -82, -145, -66, -30, -73, -10,
    -- layer=1 filter=46 channel=63
    -131, -190, -136, -97, -143, -67, -32, -63, -22,
    -- layer=1 filter=47 channel=0
    -66, -25, -50, 10, 3, -6, 40, 36, 45,
    -- layer=1 filter=47 channel=1
    -33, -46, -32, 3, 4, 6, 44, 25, 51,
    -- layer=1 filter=47 channel=2
    29, 32, 5, -27, -18, -15, -17, -12, -19,
    -- layer=1 filter=47 channel=3
    30, -32, -6, 30, 10, 22, 26, 37, 31,
    -- layer=1 filter=47 channel=4
    -38, -14, -41, 14, 4, 0, 15, 6, -1,
    -- layer=1 filter=47 channel=5
    -26, -34, -17, 61, 56, 49, 36, 29, 33,
    -- layer=1 filter=47 channel=6
    0, -12, -32, 19, 26, 7, 2, 8, 13,
    -- layer=1 filter=47 channel=7
    -16, -38, -21, -1, -11, -19, 20, -7, -6,
    -- layer=1 filter=47 channel=8
    -32, -18, -37, 15, 24, 11, 12, 21, 30,
    -- layer=1 filter=47 channel=9
    -7, -7, 16, -4, -1, -7, -30, -31, -26,
    -- layer=1 filter=47 channel=10
    -46, -62, -43, 30, 0, 10, 7, 19, 22,
    -- layer=1 filter=47 channel=11
    -9, -15, -24, 33, 30, 25, 0, -1, 15,
    -- layer=1 filter=47 channel=12
    4, 6, 11, -12, -27, -26, 8, -13, -46,
    -- layer=1 filter=47 channel=13
    -70, -56, -43, 5, -1, 0, 42, 64, 51,
    -- layer=1 filter=47 channel=14
    -49, -27, -31, -16, -17, -24, 52, 44, 38,
    -- layer=1 filter=47 channel=15
    33, 28, 30, 12, 7, 13, -21, -26, -20,
    -- layer=1 filter=47 channel=16
    48, 30, 13, -22, 10, 24, 56, 38, 8,
    -- layer=1 filter=47 channel=17
    -83, -73, -59, 57, 43, 51, 74, 72, 67,
    -- layer=1 filter=47 channel=18
    5, 3, 0, 0, -10, -12, 3, 5, 8,
    -- layer=1 filter=47 channel=19
    5, 0, -15, 14, -1, -7, -20, 1, 2,
    -- layer=1 filter=47 channel=20
    -27, -30, -25, 5, -10, -13, 23, 23, 30,
    -- layer=1 filter=47 channel=21
    -54, -66, -34, 26, 32, -4, 47, 29, 53,
    -- layer=1 filter=47 channel=22
    78, 68, 18, 33, 52, 35, 36, 69, 60,
    -- layer=1 filter=47 channel=23
    -54, -53, -49, 18, 45, 46, 54, 57, 41,
    -- layer=1 filter=47 channel=24
    12, -38, -42, -29, -49, -55, -73, 27, -36,
    -- layer=1 filter=47 channel=25
    -17, -38, -44, 2, -23, 14, 8, 9, 10,
    -- layer=1 filter=47 channel=26
    -20, -34, -14, -44, -41, -30, -16, -19, -24,
    -- layer=1 filter=47 channel=27
    -24, -16, -5, -2, 22, -22, 8, -5, -5,
    -- layer=1 filter=47 channel=28
    -33, -45, -80, 8, 16, -11, 25, 6, 35,
    -- layer=1 filter=47 channel=29
    -15, -34, -49, 16, -3, 7, 15, 0, 17,
    -- layer=1 filter=47 channel=30
    -13, 0, -1, -7, 1, 9, -20, -11, -10,
    -- layer=1 filter=47 channel=31
    19, 11, 7, -4, 0, 23, -6, -6, -17,
    -- layer=1 filter=47 channel=32
    -27, -39, -22, -30, -8, -57, 7, 2, -42,
    -- layer=1 filter=47 channel=33
    -1, -5, 0, 13, -5, 2, -5, 8, -12,
    -- layer=1 filter=47 channel=34
    -23, -19, -36, -2, -9, -11, 22, 15, 9,
    -- layer=1 filter=47 channel=35
    12, 19, 10, 8, 14, -8, -19, -25, -20,
    -- layer=1 filter=47 channel=36
    50, -16, -14, 23, -36, -37, -49, -41, -41,
    -- layer=1 filter=47 channel=37
    -58, -63, -45, 3, -13, -21, 12, 37, 36,
    -- layer=1 filter=47 channel=38
    11, 33, 41, 13, 2, 15, -35, -41, -31,
    -- layer=1 filter=47 channel=39
    -1, -20, 3, 5, -1, -11, 2, -20, 9,
    -- layer=1 filter=47 channel=40
    -23, -34, -37, 10, 17, 22, 14, 17, 5,
    -- layer=1 filter=47 channel=41
    -40, -26, -29, 37, 32, 34, 25, 10, 30,
    -- layer=1 filter=47 channel=42
    -33, -61, -29, 24, 19, 6, 37, 50, 24,
    -- layer=1 filter=47 channel=43
    30, -11, -40, 1, 4, 15, -13, -8, 0,
    -- layer=1 filter=47 channel=44
    26, 45, 22, -14, -12, 0, -38, -49, -31,
    -- layer=1 filter=47 channel=45
    28, -19, -46, -20, -37, -2, -48, -37, -15,
    -- layer=1 filter=47 channel=46
    -21, -39, -29, -28, -10, -16, 12, 27, 15,
    -- layer=1 filter=47 channel=47
    -21, -25, -33, -17, -3, -23, 12, -9, 18,
    -- layer=1 filter=47 channel=48
    13, 11, 10, 35, 23, 40, 21, 49, 37,
    -- layer=1 filter=47 channel=49
    13, 2, 0, 16, 18, 26, -5, 2, -20,
    -- layer=1 filter=47 channel=50
    4, -5, -17, -11, -11, -4, -7, -9, -3,
    -- layer=1 filter=47 channel=51
    -17, -1, -14, 9, 0, 7, 5, 9, -6,
    -- layer=1 filter=47 channel=52
    -42, -64, -49, 17, 15, 40, 38, 77, 36,
    -- layer=1 filter=47 channel=53
    24, -24, -16, 4, -10, -36, -12, -6, 0,
    -- layer=1 filter=47 channel=54
    -3, -5, -4, -4, 20, 0, 1, 14, 0,
    -- layer=1 filter=47 channel=55
    -97, -71, -62, 9, 2, 26, 36, 56, 40,
    -- layer=1 filter=47 channel=56
    -22, -38, -47, 19, 1, -3, 20, 39, 40,
    -- layer=1 filter=47 channel=57
    0, 9, 13, 12, 6, 7, -16, -9, -4,
    -- layer=1 filter=47 channel=58
    -18, -32, -19, -32, -70, -27, 18, 15, 5,
    -- layer=1 filter=47 channel=59
    19, 3, 19, 6, 4, 3, 3, -13, 8,
    -- layer=1 filter=47 channel=60
    15, 2, 8, -13, -3, 17, -1, 0, -5,
    -- layer=1 filter=47 channel=61
    -51, -66, -59, 22, 10, 1, 59, 62, 48,
    -- layer=1 filter=47 channel=62
    -57, -62, -71, -47, -96, -106, -11, -41, -56,
    -- layer=1 filter=47 channel=63
    17, 29, 10, -36, -15, -3, 81, 48, 12,
    -- layer=1 filter=48 channel=0
    0, 2, 0, 0, 2, 5, -3, -12, 13,
    -- layer=1 filter=48 channel=1
    -1, 4, -2, -7, 8, -1, -9, 8, 8,
    -- layer=1 filter=48 channel=2
    -2, 11, -6, -10, -2, -7, -3, 3, -13,
    -- layer=1 filter=48 channel=3
    0, -6, 2, -9, 2, 8, 3, -14, -13,
    -- layer=1 filter=48 channel=4
    5, -5, -8, 6, 6, 7, -2, -2, -5,
    -- layer=1 filter=48 channel=5
    -14, 8, 7, -3, 4, 0, -6, 2, -3,
    -- layer=1 filter=48 channel=6
    10, -12, 0, 1, -2, -17, -3, -7, 12,
    -- layer=1 filter=48 channel=7
    4, -6, -3, 4, -10, 5, 9, -15, -16,
    -- layer=1 filter=48 channel=8
    0, -9, -4, -11, 7, -13, -13, -3, 2,
    -- layer=1 filter=48 channel=9
    -16, 0, 7, 10, 4, -6, 9, 9, -10,
    -- layer=1 filter=48 channel=10
    3, -1, 8, 1, 6, -14, -7, 12, 9,
    -- layer=1 filter=48 channel=11
    -6, 12, 0, -11, -15, -12, -9, 11, -13,
    -- layer=1 filter=48 channel=12
    -4, -3, 0, -10, -9, -8, 8, -14, -5,
    -- layer=1 filter=48 channel=13
    11, -7, 4, -7, 10, -15, 0, -5, -15,
    -- layer=1 filter=48 channel=14
    -9, -7, -15, -2, -16, 11, 8, 6, -6,
    -- layer=1 filter=48 channel=15
    9, 0, 9, 9, 1, -11, 12, 7, 0,
    -- layer=1 filter=48 channel=16
    -2, 5, -8, 2, 0, -4, 4, -5, 11,
    -- layer=1 filter=48 channel=17
    -1, -3, -1, 9, 12, 0, -13, -14, -9,
    -- layer=1 filter=48 channel=18
    -9, -8, -3, -5, -11, 3, 8, 8, -10,
    -- layer=1 filter=48 channel=19
    0, 5, -9, 8, -15, -6, 9, -10, 0,
    -- layer=1 filter=48 channel=20
    -3, -8, -11, -5, -3, -6, 1, 1, 10,
    -- layer=1 filter=48 channel=21
    1, 5, -8, -11, -14, 4, -8, -9, 0,
    -- layer=1 filter=48 channel=22
    10, -1, -10, -10, 1, -17, -2, -13, 6,
    -- layer=1 filter=48 channel=23
    5, -5, 4, -3, 9, 6, 1, -11, 0,
    -- layer=1 filter=48 channel=24
    11, -10, -2, -6, -15, -13, -11, -18, 2,
    -- layer=1 filter=48 channel=25
    -4, 0, -9, -11, -16, -15, -10, -17, -13,
    -- layer=1 filter=48 channel=26
    2, 10, 14, 0, -12, 6, -8, 0, -7,
    -- layer=1 filter=48 channel=27
    7, -7, 0, -3, -8, 1, -11, -1, 16,
    -- layer=1 filter=48 channel=28
    2, 3, -2, 0, 0, -11, -6, 0, -13,
    -- layer=1 filter=48 channel=29
    -12, 5, 7, 6, -12, 11, -2, -9, 5,
    -- layer=1 filter=48 channel=30
    9, -12, -10, 3, 6, -1, 5, 2, 13,
    -- layer=1 filter=48 channel=31
    4, -8, 3, -10, -10, -14, -9, 14, -9,
    -- layer=1 filter=48 channel=32
    8, -14, -13, 6, 2, 7, 0, -6, 12,
    -- layer=1 filter=48 channel=33
    0, -4, 9, 7, 0, 0, 12, 0, 2,
    -- layer=1 filter=48 channel=34
    -7, -16, -14, -14, 8, -4, -10, 8, -16,
    -- layer=1 filter=48 channel=35
    8, 2, 2, 2, -6, -9, 0, -14, -15,
    -- layer=1 filter=48 channel=36
    9, 0, 9, 10, -9, -12, -2, 10, 7,
    -- layer=1 filter=48 channel=37
    1, -13, -8, 10, -9, 0, 3, -14, -4,
    -- layer=1 filter=48 channel=38
    11, -6, -7, -1, 11, -7, 13, 11, 10,
    -- layer=1 filter=48 channel=39
    -6, 10, 6, -5, -12, -4, -8, -14, 7,
    -- layer=1 filter=48 channel=40
    8, -2, 8, -8, -11, 0, -10, -12, -2,
    -- layer=1 filter=48 channel=41
    2, -4, 0, -11, 9, 1, 11, -1, -5,
    -- layer=1 filter=48 channel=42
    -15, -5, 9, 1, 9, -13, 4, -12, -11,
    -- layer=1 filter=48 channel=43
    -6, 2, 1, 13, -16, -7, -9, -3, -14,
    -- layer=1 filter=48 channel=44
    -1, -8, 9, -3, -7, 7, -5, -10, 3,
    -- layer=1 filter=48 channel=45
    5, 9, 11, 7, -3, -3, -10, -17, -12,
    -- layer=1 filter=48 channel=46
    -5, -17, -1, -11, 1, 2, -1, -5, -3,
    -- layer=1 filter=48 channel=47
    -18, 1, -6, 0, -1, 4, -4, 6, -12,
    -- layer=1 filter=48 channel=48
    4, 3, -4, -8, 6, -1, -6, 4, 0,
    -- layer=1 filter=48 channel=49
    -15, 0, 11, -11, -7, -8, -1, -8, -2,
    -- layer=1 filter=48 channel=50
    -8, -6, 0, -13, 7, -2, -15, -15, 1,
    -- layer=1 filter=48 channel=51
    -4, 6, -1, -19, 11, -10, 0, 3, 0,
    -- layer=1 filter=48 channel=52
    -8, 0, 12, -13, 11, 11, -1, 4, 0,
    -- layer=1 filter=48 channel=53
    -3, -12, 1, -9, 8, -9, -11, -15, -12,
    -- layer=1 filter=48 channel=54
    -1, -8, 8, 4, 6, -13, 5, -1, 6,
    -- layer=1 filter=48 channel=55
    -16, -3, 5, -6, -9, -4, 0, -5, -12,
    -- layer=1 filter=48 channel=56
    -15, -9, 3, -15, 8, 2, -1, 1, 6,
    -- layer=1 filter=48 channel=57
    3, -13, -4, 1, 9, -6, -4, -6, 9,
    -- layer=1 filter=48 channel=58
    12, -8, 0, 11, -2, -1, -7, -8, -8,
    -- layer=1 filter=48 channel=59
    1, -4, -12, -15, -4, -9, 3, 0, 0,
    -- layer=1 filter=48 channel=60
    -15, -15, -12, -2, 1, -16, -6, 0, 13,
    -- layer=1 filter=48 channel=61
    -9, 2, -15, 0, -4, -4, -19, 7, -17,
    -- layer=1 filter=48 channel=62
    -12, -11, -12, -4, -13, -7, -9, 5, -9,
    -- layer=1 filter=48 channel=63
    6, 13, 11, -14, 9, -4, -11, 0, -15,
    -- layer=1 filter=49 channel=0
    17, 1, 3, -7, 27, 18, -28, 2, 0,
    -- layer=1 filter=49 channel=1
    -12, -9, -7, 7, -12, -10, 12, -25, 17,
    -- layer=1 filter=49 channel=2
    -1, 30, 20, 34, 27, 32, -16, 31, 47,
    -- layer=1 filter=49 channel=3
    7, -41, -33, -26, 7, -32, -61, -43, -25,
    -- layer=1 filter=49 channel=4
    -27, 0, 14, -16, -3, 10, -27, -26, 1,
    -- layer=1 filter=49 channel=5
    -11, -6, -12, -12, -15, -26, -28, -70, -80,
    -- layer=1 filter=49 channel=6
    -15, -2, 7, 7, 1, 8, 14, -6, 2,
    -- layer=1 filter=49 channel=7
    3, -19, 9, 4, -5, -7, -8, -6, 5,
    -- layer=1 filter=49 channel=8
    -30, 3, 25, -76, -58, -11, -17, -23, -11,
    -- layer=1 filter=49 channel=9
    -9, -7, 9, -56, 18, 41, -50, -16, 31,
    -- layer=1 filter=49 channel=10
    -22, -19, -20, 1, -26, -31, -20, -44, -18,
    -- layer=1 filter=49 channel=11
    -37, 7, 27, -40, -19, 15, -17, -33, 33,
    -- layer=1 filter=49 channel=12
    40, 25, 50, 26, 22, 40, 1, 46, 48,
    -- layer=1 filter=49 channel=13
    2, 10, 7, -7, 5, 7, -30, -14, 14,
    -- layer=1 filter=49 channel=14
    29, 12, 4, 5, 11, 1, 1, 16, 9,
    -- layer=1 filter=49 channel=15
    -11, 5, 46, -47, 4, 37, -24, 16, 49,
    -- layer=1 filter=49 channel=16
    -37, -74, -76, -43, -67, -81, 0, -34, -42,
    -- layer=1 filter=49 channel=17
    5, 15, -34, 15, 27, -8, -2, 22, 21,
    -- layer=1 filter=49 channel=18
    0, -16, -3, 1, 6, -11, 8, -11, -16,
    -- layer=1 filter=49 channel=19
    -22, 12, 26, -34, -13, 9, -5, -11, 6,
    -- layer=1 filter=49 channel=20
    17, 2, 32, 32, 13, 31, 23, 16, 24,
    -- layer=1 filter=49 channel=21
    37, 32, 27, 25, 0, 18, -8, -5, -11,
    -- layer=1 filter=49 channel=22
    -51, -2, -8, -37, -56, -70, -16, -28, -43,
    -- layer=1 filter=49 channel=23
    -20, -10, -40, 19, 30, 9, -2, 10, 4,
    -- layer=1 filter=49 channel=24
    -6, 18, -35, 9, -10, -56, 36, 11, -4,
    -- layer=1 filter=49 channel=25
    -76, -67, -50, 15, -81, -106, 24, -29, -33,
    -- layer=1 filter=49 channel=26
    -6, -11, -14, 0, -25, -2, -7, -23, 0,
    -- layer=1 filter=49 channel=27
    49, 6, 38, 26, 14, 23, -21, 23, 23,
    -- layer=1 filter=49 channel=28
    8, 13, 9, -48, -9, 24, -34, -6, 15,
    -- layer=1 filter=49 channel=29
    -67, -46, -17, -34, -84, -70, 32, -32, -39,
    -- layer=1 filter=49 channel=30
    20, 8, -3, 3, -7, 12, 23, -4, 8,
    -- layer=1 filter=49 channel=31
    -15, -10, 37, -30, -5, 9, -27, 4, 19,
    -- layer=1 filter=49 channel=32
    48, 20, 45, 40, 15, 31, -9, 44, 59,
    -- layer=1 filter=49 channel=33
    -5, 7, -10, -8, -1, -5, 20, -6, 6,
    -- layer=1 filter=49 channel=34
    -13, 0, 9, -31, -37, 6, -20, -23, 5,
    -- layer=1 filter=49 channel=35
    -31, -10, 22, -38, 2, 7, -25, 5, 3,
    -- layer=1 filter=49 channel=36
    -1, -23, 3, -34, -21, -5, -20, -9, -13,
    -- layer=1 filter=49 channel=37
    5, 18, 25, -23, -5, 28, -44, -36, 19,
    -- layer=1 filter=49 channel=38
    -15, -11, 12, -35, 21, 42, -15, 1, 39,
    -- layer=1 filter=49 channel=39
    7, -7, -2, 0, -2, 11, 17, 1, 1,
    -- layer=1 filter=49 channel=40
    28, 16, -6, 9, -14, -17, 24, 1, -46,
    -- layer=1 filter=49 channel=41
    -15, -36, -18, -18, -17, -48, -11, -54, -66,
    -- layer=1 filter=49 channel=42
    7, 5, 11, 10, 11, 7, 12, 7, 3,
    -- layer=1 filter=49 channel=43
    -21, -24, -7, -3, -34, -53, 49, 6, -54,
    -- layer=1 filter=49 channel=44
    -14, 13, 41, -19, 9, 24, -7, 22, 58,
    -- layer=1 filter=49 channel=45
    -30, -51, -13, -16, -51, -64, 55, -2, -49,
    -- layer=1 filter=49 channel=46
    -8, 3, -31, 0, 6, -43, -12, -13, -45,
    -- layer=1 filter=49 channel=47
    -17, -28, -9, -33, -45, -25, -3, -17, -50,
    -- layer=1 filter=49 channel=48
    -36, -8, -7, -28, -52, -62, -16, -63, -48,
    -- layer=1 filter=49 channel=49
    -18, 13, 55, 6, -20, 30, -28, -22, 61,
    -- layer=1 filter=49 channel=50
    -29, 7, 32, -38, -7, 27, -49, -21, -10,
    -- layer=1 filter=49 channel=51
    -20, 19, 38, -1, -8, 9, -6, -11, 5,
    -- layer=1 filter=49 channel=52
    -19, 7, -36, -5, -21, -22, -43, -20, -29,
    -- layer=1 filter=49 channel=53
    14, 10, 25, -7, 58, 43, -47, 41, 57,
    -- layer=1 filter=49 channel=54
    -8, -2, 20, -20, -19, 22, 6, -16, 6,
    -- layer=1 filter=49 channel=55
    0, 16, -1, -1, 4, -23, 3, -10, 17,
    -- layer=1 filter=49 channel=56
    -11, -13, -35, -5, -31, -48, 55, -18, -30,
    -- layer=1 filter=49 channel=57
    -15, -6, 19, -26, -3, 48, -31, 8, 34,
    -- layer=1 filter=49 channel=58
    -22, -13, -10, -46, -16, -9, -51, -61, -7,
    -- layer=1 filter=49 channel=59
    -26, 5, 17, -39, 13, 39, -33, 2, 35,
    -- layer=1 filter=49 channel=60
    -7, -4, 31, -19, -2, 37, -17, 9, 26,
    -- layer=1 filter=49 channel=61
    2, 14, -9, 7, 9, 3, 4, -7, 6,
    -- layer=1 filter=49 channel=62
    -81, -40, 18, -43, -36, 25, 25, -20, 27,
    -- layer=1 filter=49 channel=63
    -51, -73, -61, -90, -90, -69, -49, -5, -39,
    -- layer=1 filter=50 channel=0
    -16, -2, -2, -26, -3, -3, -18, -16, -4,
    -- layer=1 filter=50 channel=1
    -1, -17, -18, -24, -13, -10, -1, -17, -12,
    -- layer=1 filter=50 channel=2
    -17, -22, 0, -13, 3, -4, 6, -9, 8,
    -- layer=1 filter=50 channel=3
    15, 5, 7, 4, 15, 11, -23, -9, -5,
    -- layer=1 filter=50 channel=4
    -12, -11, -23, -26, -11, -7, -37, -20, -19,
    -- layer=1 filter=50 channel=5
    -12, -1, 22, -18, -12, -8, -28, -28, -6,
    -- layer=1 filter=50 channel=6
    5, 5, -11, -12, -11, 10, 0, -27, 0,
    -- layer=1 filter=50 channel=7
    -14, 4, -13, -1, -18, -15, -29, -12, -29,
    -- layer=1 filter=50 channel=8
    -12, 0, -19, -16, -20, -6, -34, -17, -17,
    -- layer=1 filter=50 channel=9
    -3, -3, 8, -4, 8, -11, -15, -23, 13,
    -- layer=1 filter=50 channel=10
    -22, -13, -11, -1, -1, 0, -10, -13, -12,
    -- layer=1 filter=50 channel=11
    -18, 8, 3, -14, -27, -15, -16, -33, -18,
    -- layer=1 filter=50 channel=12
    -5, 2, -2, 8, 0, 15, -7, -7, 5,
    -- layer=1 filter=50 channel=13
    -24, -11, -5, -28, -24, 5, -36, -9, -6,
    -- layer=1 filter=50 channel=14
    -4, -25, 0, -9, -17, 2, -34, -31, -5,
    -- layer=1 filter=50 channel=15
    2, 7, 3, -1, 0, -15, -8, -6, 17,
    -- layer=1 filter=50 channel=16
    -16, -26, -10, 16, 24, 1, -13, 0, 0,
    -- layer=1 filter=50 channel=17
    -9, -16, -26, 3, 2, -4, -21, -43, -23,
    -- layer=1 filter=50 channel=18
    -3, 7, -7, 10, -1, 10, 9, 0, -5,
    -- layer=1 filter=50 channel=19
    -15, 0, -4, -18, -27, -13, -21, -30, -34,
    -- layer=1 filter=50 channel=20
    -9, -22, -21, -14, -3, 1, -14, -10, 7,
    -- layer=1 filter=50 channel=21
    0, -5, 13, -16, -6, -4, -5, -13, 3,
    -- layer=1 filter=50 channel=22
    9, -24, -18, -16, 1, 13, 5, -20, 0,
    -- layer=1 filter=50 channel=23
    -2, -9, -21, -41, -5, 0, -17, -24, -27,
    -- layer=1 filter=50 channel=24
    -16, -7, -1, 8, 28, 5, -10, 1, -2,
    -- layer=1 filter=50 channel=25
    -11, -6, -2, -8, -8, -23, -22, -16, -27,
    -- layer=1 filter=50 channel=26
    -13, -5, -24, -20, -12, -32, -27, -25, -15,
    -- layer=1 filter=50 channel=27
    -18, -15, -5, -7, -11, -13, -25, -9, -16,
    -- layer=1 filter=50 channel=28
    -3, 6, 21, -9, -15, -29, -15, -37, -21,
    -- layer=1 filter=50 channel=29
    1, -22, -22, -6, -31, -27, -7, -12, -36,
    -- layer=1 filter=50 channel=30
    5, 3, 1, 0, 14, 13, 5, -15, 3,
    -- layer=1 filter=50 channel=31
    -4, 0, 9, 5, -14, -4, -4, -7, -17,
    -- layer=1 filter=50 channel=32
    3, 1, -29, -13, -18, 16, -14, -16, -8,
    -- layer=1 filter=50 channel=33
    -10, -6, 16, -4, -14, 12, -4, -3, 7,
    -- layer=1 filter=50 channel=34
    -13, -9, -13, 4, 1, -11, -15, -4, -1,
    -- layer=1 filter=50 channel=35
    -19, 4, -7, 12, -17, 5, 0, -25, -3,
    -- layer=1 filter=50 channel=36
    -11, -16, 4, 17, 10, 9, -8, -12, -3,
    -- layer=1 filter=50 channel=37
    9, -12, 6, -26, -1, -13, -10, -25, -14,
    -- layer=1 filter=50 channel=38
    15, 6, 10, 2, -19, -12, -24, -9, 5,
    -- layer=1 filter=50 channel=39
    13, -4, 15, 3, 5, -5, -5, 8, -8,
    -- layer=1 filter=50 channel=40
    -6, -27, 11, -12, -13, -13, -19, -22, -33,
    -- layer=1 filter=50 channel=41
    -9, -22, -8, -22, -3, -11, -10, -19, -10,
    -- layer=1 filter=50 channel=42
    1, 2, -12, -15, -11, -24, -20, -7, -21,
    -- layer=1 filter=50 channel=43
    -18, -3, -6, 0, -33, -25, 1, -14, -15,
    -- layer=1 filter=50 channel=44
    -18, -11, -3, 7, -6, 0, -9, 6, -2,
    -- layer=1 filter=50 channel=45
    7, 3, 12, 10, -5, -17, -11, -5, 0,
    -- layer=1 filter=50 channel=46
    -34, -33, -4, -7, -17, -22, -24, -16, -24,
    -- layer=1 filter=50 channel=47
    -8, -15, -18, -5, -19, -10, -23, -5, -31,
    -- layer=1 filter=50 channel=48
    2, -6, -5, -10, -9, 4, -27, -18, -24,
    -- layer=1 filter=50 channel=49
    -14, -15, -18, -31, -16, -15, -26, -20, -7,
    -- layer=1 filter=50 channel=50
    -2, 6, 14, -19, -23, -19, -9, -30, -23,
    -- layer=1 filter=50 channel=51
    -1, -16, -11, -24, -12, -3, -11, -17, -15,
    -- layer=1 filter=50 channel=52
    -2, -11, -2, 23, -3, -7, 3, -8, -16,
    -- layer=1 filter=50 channel=53
    -5, -8, -17, 16, -7, 0, -19, -3, 11,
    -- layer=1 filter=50 channel=54
    -11, -3, 7, -30, -4, -20, -6, -27, -14,
    -- layer=1 filter=50 channel=55
    -14, -20, -17, -12, -13, 6, 7, 15, -7,
    -- layer=1 filter=50 channel=56
    -11, -22, -2, -23, -27, -41, -24, -8, -19,
    -- layer=1 filter=50 channel=57
    -14, -4, -5, -9, -10, 8, -19, -19, -14,
    -- layer=1 filter=50 channel=58
    7, 9, 0, 0, -3, 3, -25, -2, -2,
    -- layer=1 filter=50 channel=59
    1, 19, -9, 3, 8, 6, -17, -16, -15,
    -- layer=1 filter=50 channel=60
    6, 3, -12, 8, 5, -8, -26, -2, -4,
    -- layer=1 filter=50 channel=61
    -21, -29, -23, -28, -29, -28, -27, -9, -16,
    -- layer=1 filter=50 channel=62
    -28, -9, 5, -3, -18, 15, -15, 0, -19,
    -- layer=1 filter=50 channel=63
    -18, -18, 24, 11, 26, 20, 16, -1, -13,
    -- layer=1 filter=51 channel=0
    12, 12, -7, 3, 9, -4, 13, -1, 21,
    -- layer=1 filter=51 channel=1
    -20, 11, 2, -11, 13, 8, -4, -2, 3,
    -- layer=1 filter=51 channel=2
    -6, -7, -10, 15, -8, -5, -17, 7, -18,
    -- layer=1 filter=51 channel=3
    -23, -8, -10, 1, -2, 5, -3, 23, 0,
    -- layer=1 filter=51 channel=4
    -9, 16, -20, 7, 13, -2, 1, 10, 5,
    -- layer=1 filter=51 channel=5
    4, 9, 4, 16, -19, 25, 7, -18, 10,
    -- layer=1 filter=51 channel=6
    -6, 1, -6, 9, 4, -12, -1, 5, 14,
    -- layer=1 filter=51 channel=7
    -13, -6, 6, -1, 6, 11, 14, 10, 4,
    -- layer=1 filter=51 channel=8
    10, -2, 2, -9, 15, -8, 20, 0, -16,
    -- layer=1 filter=51 channel=9
    3, 0, 2, 5, -12, 2, -7, -22, -2,
    -- layer=1 filter=51 channel=10
    -23, -7, -9, -11, -22, -12, -4, -16, -25,
    -- layer=1 filter=51 channel=11
    12, 0, -10, -11, -17, 19, 14, -1, -3,
    -- layer=1 filter=51 channel=12
    21, 1, -6, 21, 4, 2, 13, 0, 22,
    -- layer=1 filter=51 channel=13
    6, 0, -13, -1, 9, -2, 8, 19, -3,
    -- layer=1 filter=51 channel=14
    10, 5, -3, -5, 24, 8, 16, 5, 20,
    -- layer=1 filter=51 channel=15
    -27, -24, -25, -47, -28, -42, -26, -7, -33,
    -- layer=1 filter=51 channel=16
    -31, -34, -10, 3, -3, -12, 3, 18, 24,
    -- layer=1 filter=51 channel=17
    -16, 4, -35, -5, -16, -16, -8, 5, 6,
    -- layer=1 filter=51 channel=18
    -15, -8, -10, -8, -8, 1, -13, -9, 0,
    -- layer=1 filter=51 channel=19
    6, -3, -7, 9, 15, 8, 0, 8, -2,
    -- layer=1 filter=51 channel=20
    4, 0, -8, 16, 1, 0, -11, 5, 15,
    -- layer=1 filter=51 channel=21
    -11, -17, -22, -20, -8, -27, -15, 0, 2,
    -- layer=1 filter=51 channel=22
    -25, -9, 20, -23, -44, 16, -6, -31, -14,
    -- layer=1 filter=51 channel=23
    -30, -11, 7, -25, -21, -22, -40, -31, -15,
    -- layer=1 filter=51 channel=24
    0, 1, 1, -22, -10, -13, 0, -13, 16,
    -- layer=1 filter=51 channel=25
    4, -20, 31, -34, 1, -30, 10, 7, 27,
    -- layer=1 filter=51 channel=26
    10, 8, 15, -15, 23, 13, -1, 25, -4,
    -- layer=1 filter=51 channel=27
    8, 2, -20, 13, 10, 37, 0, 27, 18,
    -- layer=1 filter=51 channel=28
    11, 7, 0, 1, 7, 33, 1, 16, 8,
    -- layer=1 filter=51 channel=29
    6, 3, 26, -19, -5, 6, 30, 7, 21,
    -- layer=1 filter=51 channel=30
    12, 0, 1, 1, 4, -2, -10, 3, -7,
    -- layer=1 filter=51 channel=31
    0, -6, -9, -11, -23, -12, -11, -17, -13,
    -- layer=1 filter=51 channel=32
    27, 8, -14, 19, -3, 35, -15, 23, -5,
    -- layer=1 filter=51 channel=33
    10, -5, 9, 7, -2, -16, -5, -2, 6,
    -- layer=1 filter=51 channel=34
    5, -6, -8, -2, 2, 11, 11, 0, 4,
    -- layer=1 filter=51 channel=35
    13, 13, 4, -1, -3, -3, 17, -7, -8,
    -- layer=1 filter=51 channel=36
    -40, 0, -4, -12, -18, -9, -2, -11, 2,
    -- layer=1 filter=51 channel=37
    -13, -8, -15, 13, -10, -2, -10, -4, -3,
    -- layer=1 filter=51 channel=38
    -6, 12, 0, -33, -11, -44, 0, -24, -32,
    -- layer=1 filter=51 channel=39
    13, 5, 4, -3, -21, 8, -1, 12, -2,
    -- layer=1 filter=51 channel=40
    -2, -8, -9, -1, -3, 14, 0, 4, -9,
    -- layer=1 filter=51 channel=41
    -9, 13, -7, 16, 2, 34, -9, -4, 8,
    -- layer=1 filter=51 channel=42
    -7, -2, 11, 21, -2, 20, 1, 3, 31,
    -- layer=1 filter=51 channel=43
    14, -10, 23, -10, 11, -10, 32, -13, 11,
    -- layer=1 filter=51 channel=44
    -12, -10, -15, -8, -16, -20, 0, -12, -5,
    -- layer=1 filter=51 channel=45
    28, -12, 41, 1, 16, 25, 43, -6, 3,
    -- layer=1 filter=51 channel=46
    -9, -15, -2, 7, -4, 11, -8, -1, -2,
    -- layer=1 filter=51 channel=47
    1, 6, 10, 4, 12, 8, 11, -13, 8,
    -- layer=1 filter=51 channel=48
    -23, -5, -1, 1, -32, 3, 0, -28, -3,
    -- layer=1 filter=51 channel=49
    -3, -2, -1, 3, -27, 14, -27, -14, -13,
    -- layer=1 filter=51 channel=50
    -16, 1, -10, -5, -2, -14, 6, -9, -11,
    -- layer=1 filter=51 channel=51
    2, 9, -9, -7, -12, 8, 6, -2, 1,
    -- layer=1 filter=51 channel=52
    -56, -58, -56, -53, -65, -25, -35, -40, -27,
    -- layer=1 filter=51 channel=53
    11, 3, -24, 8, -21, 33, 1, 9, 7,
    -- layer=1 filter=51 channel=54
    11, 9, 5, 14, 1, 0, 17, 0, 13,
    -- layer=1 filter=51 channel=55
    -55, -57, -40, -12, -26, -28, -24, -21, -25,
    -- layer=1 filter=51 channel=56
    15, -4, -5, 13, 6, 15, 18, -3, 12,
    -- layer=1 filter=51 channel=57
    15, -9, -19, -2, 8, -5, 8, 0, 0,
    -- layer=1 filter=51 channel=58
    -8, 3, 4, -1, 7, -14, 4, -2, 3,
    -- layer=1 filter=51 channel=59
    0, -7, -1, -12, -9, -38, -16, -27, -5,
    -- layer=1 filter=51 channel=60
    -1, -13, -1, -9, -22, -31, -11, -8, 11,
    -- layer=1 filter=51 channel=61
    -7, 22, 10, 15, 5, 9, 10, 4, 20,
    -- layer=1 filter=51 channel=62
    24, -8, 24, 13, 3, 26, 9, 24, 8,
    -- layer=1 filter=51 channel=63
    -28, -50, -21, -16, -37, 15, -40, 5, -12,
    -- layer=1 filter=52 channel=0
    9, -19, 9, -4, 28, 0, -13, 41, -3,
    -- layer=1 filter=52 channel=1
    10, 14, -14, 0, -29, 20, 12, 10, 8,
    -- layer=1 filter=52 channel=2
    23, -14, 10, -14, 12, -8, -19, 3, -26,
    -- layer=1 filter=52 channel=3
    -39, -25, -22, -2, -41, -83, -1, -34, 40,
    -- layer=1 filter=52 channel=4
    -6, -28, 2, -35, 8, -22, -21, -10, -1,
    -- layer=1 filter=52 channel=5
    12, 21, -3, -23, 2, 0, 25, 6, -1,
    -- layer=1 filter=52 channel=6
    -1, 4, -15, 0, -34, 20, -5, 2, -10,
    -- layer=1 filter=52 channel=7
    -11, 19, 1, -28, -9, -17, -2, 11, -1,
    -- layer=1 filter=52 channel=8
    -22, 7, -37, -6, 9, -24, -14, -20, 0,
    -- layer=1 filter=52 channel=9
    9, -26, -24, -14, 8, -21, -14, -16, -32,
    -- layer=1 filter=52 channel=10
    -40, -13, -6, -47, -37, -15, -53, -40, -35,
    -- layer=1 filter=52 channel=11
    1, -23, -25, -23, 13, -8, 14, 11, -12,
    -- layer=1 filter=52 channel=12
    70, 10, 12, 59, 43, 38, 19, 33, 15,
    -- layer=1 filter=52 channel=13
    14, 0, 13, 5, 18, 0, 11, 30, -11,
    -- layer=1 filter=52 channel=14
    -20, 0, 1, 1, 10, -10, -9, 21, 22,
    -- layer=1 filter=52 channel=15
    -7, -9, -31, -36, -14, -35, -7, -11, -47,
    -- layer=1 filter=52 channel=16
    -23, 29, -9, 39, -16, -52, -2, -12, 29,
    -- layer=1 filter=52 channel=17
    0, 12, -13, 2, -14, -2, -19, -3, 1,
    -- layer=1 filter=52 channel=18
    5, 3, 10, -5, 6, -9, -16, -11, -16,
    -- layer=1 filter=52 channel=19
    2, 2, -4, -11, 9, -20, 7, 0, -23,
    -- layer=1 filter=52 channel=20
    21, -15, 8, 23, -16, 27, 0, 29, -6,
    -- layer=1 filter=52 channel=21
    49, 25, 1, 37, 21, 37, 15, 43, 0,
    -- layer=1 filter=52 channel=22
    5, -8, 16, -5, 0, -40, 25, -33, 12,
    -- layer=1 filter=52 channel=23
    -47, -61, -53, -58, -69, -42, -75, -41, -39,
    -- layer=1 filter=52 channel=24
    -60, -54, -26, 17, -45, -81, -28, -52, -45,
    -- layer=1 filter=52 channel=25
    4, 75, 0, 15, -25, 10, 2, -13, 33,
    -- layer=1 filter=52 channel=26
    -9, -21, -10, -10, 0, -19, -10, -15, -14,
    -- layer=1 filter=52 channel=27
    80, 15, 47, 35, 33, 23, 8, 57, -9,
    -- layer=1 filter=52 channel=28
    -18, 34, 27, -57, 64, -19, 15, -20, -7,
    -- layer=1 filter=52 channel=29
    7, 53, -9, 11, -1, 19, 25, -30, 18,
    -- layer=1 filter=52 channel=30
    4, 7, -2, 10, 13, 0, -10, 10, -12,
    -- layer=1 filter=52 channel=31
    5, 31, 5, 16, -2, -8, 17, -8, -4,
    -- layer=1 filter=52 channel=32
    76, -6, 18, 21, 14, -4, -9, 22, -38,
    -- layer=1 filter=52 channel=33
    8, -11, -5, 11, 0, -8, -2, -14, 0,
    -- layer=1 filter=52 channel=34
    3, -9, -15, -15, -5, -1, 3, -15, 0,
    -- layer=1 filter=52 channel=35
    -17, -7, -42, -14, -25, -15, 9, -13, -8,
    -- layer=1 filter=52 channel=36
    -12, -19, -8, -1, 6, -73, 1, -41, 43,
    -- layer=1 filter=52 channel=37
    6, 4, -8, -24, -9, -14, -18, 7, -22,
    -- layer=1 filter=52 channel=38
    -32, -18, -49, -31, -25, -54, -47, -25, -9,
    -- layer=1 filter=52 channel=39
    -1, 2, 0, 7, -20, 11, 1, -3, -7,
    -- layer=1 filter=52 channel=40
    -7, -10, -23, -10, 4, 0, 4, -14, 21,
    -- layer=1 filter=52 channel=41
    4, -14, 6, -12, 10, 15, 31, -1, 11,
    -- layer=1 filter=52 channel=42
    5, -11, -4, -14, -17, 29, -2, 27, 21,
    -- layer=1 filter=52 channel=43
    15, 61, -7, -3, -37, 6, 10, -62, 0,
    -- layer=1 filter=52 channel=44
    7, -42, -18, -14, 6, 0, -34, 7, -37,
    -- layer=1 filter=52 channel=45
    27, 78, 14, 45, 32, 20, 13, -39, 48,
    -- layer=1 filter=52 channel=46
    10, -26, -12, -3, -9, 1, 0, -2, 18,
    -- layer=1 filter=52 channel=47
    -15, 18, -25, -11, -10, -5, 0, -51, 0,
    -- layer=1 filter=52 channel=48
    -5, -18, 1, 2, -7, -22, 49, -12, -5,
    -- layer=1 filter=52 channel=49
    26, 4, 5, -7, 0, 3, 33, 8, -18,
    -- layer=1 filter=52 channel=50
    -2, 22, -21, 10, 0, -6, -4, 2, 5,
    -- layer=1 filter=52 channel=51
    -24, -20, -13, -33, -37, 6, 1, -5, -12,
    -- layer=1 filter=52 channel=52
    -34, -24, -3, -33, -18, -38, -46, -50, -3,
    -- layer=1 filter=52 channel=53
    -19, -51, 7, 5, -4, -43, 20, -34, 1,
    -- layer=1 filter=52 channel=54
    -10, 9, -17, -26, -21, 2, -9, -1, 8,
    -- layer=1 filter=52 channel=55
    -27, 7, -40, 3, -47, -16, -60, -26, -17,
    -- layer=1 filter=52 channel=56
    -3, 25, -12, 3, -24, 2, -16, -25, 32,
    -- layer=1 filter=52 channel=57
    -31, -21, -8, -32, -3, -24, -24, 5, -26,
    -- layer=1 filter=52 channel=58
    -31, 32, -26, 14, -19, -45, -1, -25, 13,
    -- layer=1 filter=52 channel=59
    9, -50, -29, -25, -31, -24, -12, -19, -17,
    -- layer=1 filter=52 channel=60
    -2, 1, -22, 32, -12, -16, 2, -13, 10,
    -- layer=1 filter=52 channel=61
    -5, 0, -12, -4, 12, 23, -3, 24, 14,
    -- layer=1 filter=52 channel=62
    122, 51, 23, 105, 56, 27, 94, 44, 78,
    -- layer=1 filter=52 channel=63
    -7, -8, 3, 52, 7, -52, -3, -8, 6,
    -- layer=1 filter=53 channel=0
    -10, 32, 78, -38, 7, 56, -38, 12, 40,
    -- layer=1 filter=53 channel=1
    3, -13, 10, 20, -32, 21, 38, -29, 5,
    -- layer=1 filter=53 channel=2
    -59, -14, 45, -33, 0, 9, -65, 0, 30,
    -- layer=1 filter=53 channel=3
    43, 0, -8, -9, -17, -1, -51, -41, 15,
    -- layer=1 filter=53 channel=4
    -37, 27, 47, -57, -2, 33, -24, 0, 9,
    -- layer=1 filter=53 channel=5
    -62, -97, -24, -30, -90, -26, 21, -42, 7,
    -- layer=1 filter=53 channel=6
    -64, -24, 39, -35, -41, 16, 19, -15, 0,
    -- layer=1 filter=53 channel=7
    27, -34, 22, -37, -44, 25, 15, -47, 24,
    -- layer=1 filter=53 channel=8
    -8, -41, -26, -14, -75, -15, 21, -35, -23,
    -- layer=1 filter=53 channel=9
    -29, -31, -11, -63, -52, 29, -29, -26, -4,
    -- layer=1 filter=53 channel=10
    -24, -8, -17, 8, -15, 7, 62, 37, 6,
    -- layer=1 filter=53 channel=11
    -84, -66, -13, -40, -47, -8, -6, -29, -15,
    -- layer=1 filter=53 channel=12
    -68, 39, 105, -52, 43, 82, -88, 21, 86,
    -- layer=1 filter=53 channel=13
    -4, 0, 44, -15, -13, 37, -30, -10, 24,
    -- layer=1 filter=53 channel=14
    24, 1, 45, 13, -2, 28, -26, 7, 9,
    -- layer=1 filter=53 channel=15
    -3, -49, -44, -40, 23, 17, -22, -20, -15,
    -- layer=1 filter=53 channel=16
    14, -11, 9, 47, -57, -37, -15, -35, -20,
    -- layer=1 filter=53 channel=17
    8, 0, 31, -7, 25, 28, 3, 13, 46,
    -- layer=1 filter=53 channel=18
    1, 3, -1, -10, 11, -3, 15, 5, 0,
    -- layer=1 filter=53 channel=19
    -39, -84, -56, -16, -58, -20, 29, -31, -11,
    -- layer=1 filter=53 channel=20
    -55, 16, 47, -38, 30, 24, -22, 37, 11,
    -- layer=1 filter=53 channel=21
    -4, 5, 16, -4, -9, 17, -13, 9, 40,
    -- layer=1 filter=53 channel=22
    -72, -104, -28, 10, -53, -48, 13, -20, 0,
    -- layer=1 filter=53 channel=23
    -11, -5, 26, 4, 12, -6, 15, -4, -29,
    -- layer=1 filter=53 channel=24
    8, -6, -11, -3, 34, -12, -4, 53, -16,
    -- layer=1 filter=53 channel=25
    36, 24, -71, 37, 9, -33, 104, 9, -5,
    -- layer=1 filter=53 channel=26
    9, 9, 0, -20, 8, -2, -33, -27, -19,
    -- layer=1 filter=53 channel=27
    -55, 40, 96, -31, 29, 78, -89, -2, 65,
    -- layer=1 filter=53 channel=28
    18, -67, -53, -30, -45, -4, -11, -50, -9,
    -- layer=1 filter=53 channel=29
    22, 5, -67, 9, -6, -29, 67, -13, -18,
    -- layer=1 filter=53 channel=30
    -15, -19, -14, -12, -17, -21, -3, -1, -14,
    -- layer=1 filter=53 channel=31
    -12, -51, -126, -15, 13, -50, 21, -14, -22,
    -- layer=1 filter=53 channel=32
    -61, 44, 99, -68, 62, 61, -121, 47, 86,
    -- layer=1 filter=53 channel=33
    5, 11, 0, 14, 9, 4, 13, -10, 0,
    -- layer=1 filter=53 channel=34
    5, -6, -4, -6, -31, 14, 0, -31, 7,
    -- layer=1 filter=53 channel=35
    -22, -48, -43, -21, 7, -34, 43, 10, 1,
    -- layer=1 filter=53 channel=36
    45, 13, 6, -6, -22, 16, -32, -24, -34,
    -- layer=1 filter=53 channel=37
    14, 3, 38, -37, -23, 10, -39, -7, 13,
    -- layer=1 filter=53 channel=38
    -33, -22, -30, -50, 40, 25, -30, -56, -29,
    -- layer=1 filter=53 channel=39
    0, 9, 8, 13, 6, -18, 3, 13, -9,
    -- layer=1 filter=53 channel=40
    -4, -45, -79, -9, -18, -67, 9, 4, -53,
    -- layer=1 filter=53 channel=41
    -66, -130, -31, 7, -115, -11, 44, -35, -14,
    -- layer=1 filter=53 channel=42
    -16, 0, 53, -5, -16, 23, -3, -15, 12,
    -- layer=1 filter=53 channel=43
    -1, -19, -94, 34, -10, -60, 103, -1, -41,
    -- layer=1 filter=53 channel=44
    -79, -37, 21, -31, 6, 16, -63, -1, 44,
    -- layer=1 filter=53 channel=45
    20, 27, -50, 23, 5, -65, 83, 17, -54,
    -- layer=1 filter=53 channel=46
    -20, -59, -48, -3, -48, -41, -4, -9, -55,
    -- layer=1 filter=53 channel=47
    39, -3, -43, 2, -33, -45, 24, -17, -17,
    -- layer=1 filter=53 channel=48
    -68, -64, -25, -17, -61, -25, 35, -32, -10,
    -- layer=1 filter=53 channel=49
    -79, -16, -8, -23, -1, 16, -36, 3, 1,
    -- layer=1 filter=53 channel=50
    7, -32, -56, -56, -24, -19, -13, -54, 4,
    -- layer=1 filter=53 channel=51
    -37, -44, -9, -51, -49, -7, 33, -50, -28,
    -- layer=1 filter=53 channel=52
    9, 0, -11, -2, -20, -2, 10, 11, 21,
    -- layer=1 filter=53 channel=53
    1, 5, 41, -5, -30, 40, -55, -72, 42,
    -- layer=1 filter=53 channel=54
    -18, -47, 22, -15, -34, 1, 19, -42, -23,
    -- layer=1 filter=53 channel=55
    11, 2, 2, 10, 24, 5, 6, 25, 22,
    -- layer=1 filter=53 channel=56
    32, -11, -13, 16, -36, -30, 59, -11, -26,
    -- layer=1 filter=53 channel=57
    -57, -65, 22, -56, -25, 19, -25, -50, 5,
    -- layer=1 filter=53 channel=58
    41, -39, -7, -22, -62, 4, -38, -76, 6,
    -- layer=1 filter=53 channel=59
    -41, -49, -27, 0, -9, -16, -15, -8, -51,
    -- layer=1 filter=53 channel=60
    -33, -45, -46, -21, -46, -24, -34, -46, -30,
    -- layer=1 filter=53 channel=61
    22, 10, 17, 8, -20, 0, -3, -34, 6,
    -- layer=1 filter=53 channel=62
    -43, 97, 49, -43, 83, 10, -37, 87, 11,
    -- layer=1 filter=53 channel=63
    -56, -45, 12, -11, -31, -33, -28, 10, -24,
    -- layer=1 filter=54 channel=0
    -13, 12, 4, -22, -6, 15, 15, -5, 10,
    -- layer=1 filter=54 channel=1
    6, -11, 17, 18, 12, -30, 10, 23, 17,
    -- layer=1 filter=54 channel=2
    7, 15, 8, -13, 0, 23, -1, -3, 23,
    -- layer=1 filter=54 channel=3
    10, -8, -25, 0, 32, 6, 43, 13, 23,
    -- layer=1 filter=54 channel=4
    -8, -3, -23, 0, -7, -11, 4, -1, 0,
    -- layer=1 filter=54 channel=5
    39, 22, 13, 33, 12, 0, 5, 11, 15,
    -- layer=1 filter=54 channel=6
    0, 0, 18, 16, 23, -28, -1, 7, 0,
    -- layer=1 filter=54 channel=7
    5, -22, 0, 4, 32, 14, 19, -17, -10,
    -- layer=1 filter=54 channel=8
    -16, 0, -22, 8, -39, 14, 7, 10, -19,
    -- layer=1 filter=54 channel=9
    -12, -18, -33, 7, 26, 29, 9, -24, -3,
    -- layer=1 filter=54 channel=10
    -22, -16, -14, -15, -13, -35, -7, 3, 0,
    -- layer=1 filter=54 channel=11
    -8, 16, -16, -3, -37, 9, 20, 20, 6,
    -- layer=1 filter=54 channel=12
    36, 31, 16, 17, 37, 32, 2, 14, 21,
    -- layer=1 filter=54 channel=13
    -5, -11, -7, -35, -25, -16, 15, 5, 21,
    -- layer=1 filter=54 channel=14
    -29, -1, -31, -31, -6, -14, 10, -10, -19,
    -- layer=1 filter=54 channel=15
    -10, 8, -11, -10, 1, 12, 7, -27, -14,
    -- layer=1 filter=54 channel=16
    10, 5, 17, 0, 12, 24, 87, 39, 28,
    -- layer=1 filter=54 channel=17
    13, 5, -9, -35, -16, -15, 11, 8, 9,
    -- layer=1 filter=54 channel=18
    5, -12, 0, 0, 11, 9, -6, -10, -9,
    -- layer=1 filter=54 channel=19
    -21, -3, -7, -2, -12, 19, 21, 22, 0,
    -- layer=1 filter=54 channel=20
    -4, -8, 0, -12, 8, -13, -4, 16, 33,
    -- layer=1 filter=54 channel=21
    -6, -4, 6, -2, 35, -7, 1, 9, 8,
    -- layer=1 filter=54 channel=22
    85, 92, 48, 57, 18, 16, 69, 72, 75,
    -- layer=1 filter=54 channel=23
    10, 18, -12, -16, -16, -24, 21, 23, -3,
    -- layer=1 filter=54 channel=24
    18, -4, -5, -6, 14, 9, 54, 45, -9,
    -- layer=1 filter=54 channel=25
    1, -27, 55, -5, 50, -6, -16, -2, 19,
    -- layer=1 filter=54 channel=26
    -7, 16, 6, 17, 26, -15, 29, 15, 6,
    -- layer=1 filter=54 channel=27
    50, 39, 53, 0, 34, 52, 16, 9, 47,
    -- layer=1 filter=54 channel=28
    11, 46, -19, -9, 13, 36, 37, 10, -11,
    -- layer=1 filter=54 channel=29
    -17, -4, 14, 4, -13, -2, -13, 22, 2,
    -- layer=1 filter=54 channel=30
    5, -2, -4, 7, 5, 14, 10, 3, 8,
    -- layer=1 filter=54 channel=31
    -4, 0, 3, -3, -31, 7, 17, 10, -12,
    -- layer=1 filter=54 channel=32
    4, -1, -5, -40, 6, 13, -16, -40, -22,
    -- layer=1 filter=54 channel=33
    -8, 2, 16, 4, 0, -6, 4, 11, 7,
    -- layer=1 filter=54 channel=34
    -28, 5, -9, 14, -12, 24, 19, 7, 10,
    -- layer=1 filter=54 channel=35
    -13, -18, -2, 4, 4, 14, 9, 1, -13,
    -- layer=1 filter=54 channel=36
    1, -7, -29, -46, 16, 0, 17, -30, -24,
    -- layer=1 filter=54 channel=37
    -28, -31, -37, -13, 5, -16, -1, -11, -22,
    -- layer=1 filter=54 channel=38
    -10, -18, 10, -6, 9, -7, -4, -37, -17,
    -- layer=1 filter=54 channel=39
    -10, 20, -13, 16, 12, 9, -6, 2, -17,
    -- layer=1 filter=54 channel=40
    -11, -2, -19, -3, 8, 17, 12, 18, 6,
    -- layer=1 filter=54 channel=41
    27, 19, 31, 45, -5, -31, 3, 24, -14,
    -- layer=1 filter=54 channel=42
    -10, -9, 1, 6, 12, -24, 18, 20, 12,
    -- layer=1 filter=54 channel=43
    -24, -18, 22, 14, -15, 8, -3, 0, 5,
    -- layer=1 filter=54 channel=44
    0, -2, 0, 5, 34, 20, -24, -25, -10,
    -- layer=1 filter=54 channel=45
    -7, -7, 35, -1, 21, 27, -9, -19, -21,
    -- layer=1 filter=54 channel=46
    1, -31, -15, -13, -22, -15, 5, 17, 0,
    -- layer=1 filter=54 channel=47
    -29, -14, -14, -15, 0, 20, 21, 1, -31,
    -- layer=1 filter=54 channel=48
    75, 58, 32, 52, -11, -7, 42, 52, 58,
    -- layer=1 filter=54 channel=49
    21, 50, 16, -4, -31, -23, 4, 15, 13,
    -- layer=1 filter=54 channel=50
    -34, -16, -24, -1, -7, 19, 14, -12, -20,
    -- layer=1 filter=54 channel=51
    -7, -1, 6, 19, 11, 7, -10, 16, -13,
    -- layer=1 filter=54 channel=52
    -31, -50, -17, -32, -61, -35, 1, -18, -37,
    -- layer=1 filter=54 channel=53
    9, 5, -47, -21, 17, 10, 19, -22, -24,
    -- layer=1 filter=54 channel=54
    -20, -18, -9, 1, 1, -10, 18, -7, -7,
    -- layer=1 filter=54 channel=55
    0, -13, -18, -27, -16, -29, -29, -15, -44,
    -- layer=1 filter=54 channel=56
    -22, -36, 6, -1, -1, -18, 4, 27, -14,
    -- layer=1 filter=54 channel=57
    7, 3, 8, -3, -2, 7, -2, -17, -15,
    -- layer=1 filter=54 channel=58
    0, -29, -19, -5, 19, 8, 42, -15, 0,
    -- layer=1 filter=54 channel=59
    -9, -15, 1, -27, -4, -1, -34, -32, -21,
    -- layer=1 filter=54 channel=60
    -17, -17, 5, -26, 5, -17, 6, -37, -8,
    -- layer=1 filter=54 channel=61
    -31, -14, -13, -17, -12, -15, 0, 23, 20,
    -- layer=1 filter=54 channel=62
    76, 122, 72, 66, 49, 85, 50, 40, 64,
    -- layer=1 filter=54 channel=63
    78, 137, 80, 108, 65, 76, 87, 113, 63,
    -- layer=1 filter=55 channel=0
    0, -6, 4, -9, 5, -6, -7, -1, 3,
    -- layer=1 filter=55 channel=1
    -7, -10, 5, 0, -10, -14, -9, -2, -8,
    -- layer=1 filter=55 channel=2
    0, 0, 5, -5, 4, 0, 8, -11, -7,
    -- layer=1 filter=55 channel=3
    11, -3, 3, -7, 14, -10, -2, -10, -10,
    -- layer=1 filter=55 channel=4
    -13, 0, -15, 5, -17, -6, -12, -5, 3,
    -- layer=1 filter=55 channel=5
    -2, -1, 2, -8, -2, 11, 9, -7, 14,
    -- layer=1 filter=55 channel=6
    5, -1, 5, -11, 1, -15, -3, -6, -9,
    -- layer=1 filter=55 channel=7
    5, -2, -5, -10, 13, 12, 8, 2, 7,
    -- layer=1 filter=55 channel=8
    -12, -15, -12, -7, -14, 12, -11, -15, -8,
    -- layer=1 filter=55 channel=9
    -10, -9, -9, 5, -3, -8, 3, -2, 4,
    -- layer=1 filter=55 channel=10
    -3, -4, 9, -6, 7, -1, 4, -1, -10,
    -- layer=1 filter=55 channel=11
    6, -12, -6, 2, 3, 9, -3, 4, 5,
    -- layer=1 filter=55 channel=12
    -14, -14, 0, -12, 4, -9, -17, -3, -6,
    -- layer=1 filter=55 channel=13
    -3, -3, 9, -10, -4, -5, -7, -3, -6,
    -- layer=1 filter=55 channel=14
    -9, 7, 1, 6, -11, 1, -11, 4, -3,
    -- layer=1 filter=55 channel=15
    -6, -16, 8, -13, 0, 4, -18, -3, -7,
    -- layer=1 filter=55 channel=16
    5, -6, -9, 7, 12, -7, -18, -3, 0,
    -- layer=1 filter=55 channel=17
    1, 4, 19, 6, 5, -10, -8, -13, -3,
    -- layer=1 filter=55 channel=18
    0, 15, 2, -6, 8, -11, -14, -7, -14,
    -- layer=1 filter=55 channel=19
    7, 1, -6, 0, -13, 4, 12, -3, 7,
    -- layer=1 filter=55 channel=20
    -4, 7, -14, -19, 6, -14, -12, 0, -16,
    -- layer=1 filter=55 channel=21
    -2, 0, -7, 0, -12, -1, -12, -14, 10,
    -- layer=1 filter=55 channel=22
    -1, -16, -2, -11, -8, -4, -3, 4, -7,
    -- layer=1 filter=55 channel=23
    -10, -13, -3, -18, -10, -8, 5, 13, -14,
    -- layer=1 filter=55 channel=24
    8, -3, -11, -9, 13, 3, -10, 4, 9,
    -- layer=1 filter=55 channel=25
    -1, -17, 2, -21, 4, -1, -9, 3, -2,
    -- layer=1 filter=55 channel=26
    -8, 11, -6, -2, 5, 7, -10, 2, -5,
    -- layer=1 filter=55 channel=27
    11, 0, 8, -12, -5, -12, -11, -14, 9,
    -- layer=1 filter=55 channel=28
    6, -11, -10, 16, 7, -15, 4, -16, 5,
    -- layer=1 filter=55 channel=29
    -4, 4, -8, -9, -1, 0, -10, 12, -11,
    -- layer=1 filter=55 channel=30
    12, 0, 5, 6, 6, -9, 7, 11, 2,
    -- layer=1 filter=55 channel=31
    4, -8, -15, 0, 0, -16, 14, 0, 4,
    -- layer=1 filter=55 channel=32
    -1, -9, -18, -3, 11, 1, 0, -15, 13,
    -- layer=1 filter=55 channel=33
    2, 8, -10, 11, 13, 5, -14, -3, -3,
    -- layer=1 filter=55 channel=34
    8, -8, 11, -2, -6, 0, -1, -17, -7,
    -- layer=1 filter=55 channel=35
    12, -1, 2, 5, 9, 0, -17, 4, 8,
    -- layer=1 filter=55 channel=36
    12, 0, -15, -11, -10, -5, -2, -1, 13,
    -- layer=1 filter=55 channel=37
    -9, -4, 6, -6, -9, 4, -13, -4, -4,
    -- layer=1 filter=55 channel=38
    -17, -4, -10, 8, -2, -4, -12, 0, -7,
    -- layer=1 filter=55 channel=39
    -8, 5, -5, 12, -12, 0, 5, -10, 6,
    -- layer=1 filter=55 channel=40
    -8, -2, -9, 2, -5, -13, 7, -8, -5,
    -- layer=1 filter=55 channel=41
    -6, -8, -4, -7, 1, 5, 4, -7, -3,
    -- layer=1 filter=55 channel=42
    -7, -12, 13, -8, -8, 5, -7, -3, 11,
    -- layer=1 filter=55 channel=43
    -6, 8, -12, -12, -16, -11, -10, 1, -12,
    -- layer=1 filter=55 channel=44
    0, -10, -9, -11, 3, -12, 0, -1, 9,
    -- layer=1 filter=55 channel=45
    -2, -9, -14, 4, 4, -6, -16, -9, -9,
    -- layer=1 filter=55 channel=46
    -11, -17, -14, -12, -21, -5, -7, -1, -11,
    -- layer=1 filter=55 channel=47
    3, -17, -17, -11, -14, 3, -18, 2, -18,
    -- layer=1 filter=55 channel=48
    -1, 15, 4, 6, -7, 7, 14, -7, -13,
    -- layer=1 filter=55 channel=49
    0, 3, 9, 4, -19, 0, 7, 0, -2,
    -- layer=1 filter=55 channel=50
    9, 9, 5, 2, -18, 9, 10, -15, -4,
    -- layer=1 filter=55 channel=51
    12, 0, -1, -2, 8, -5, -17, -18, 4,
    -- layer=1 filter=55 channel=52
    -12, -2, 0, 6, -14, 12, -8, 13, -5,
    -- layer=1 filter=55 channel=53
    -14, -13, -5, 7, -7, 5, -5, -9, -18,
    -- layer=1 filter=55 channel=54
    -9, -11, 6, 3, -15, -7, 2, -15, 8,
    -- layer=1 filter=55 channel=55
    3, -21, -8, -10, -11, -3, 4, -11, 4,
    -- layer=1 filter=55 channel=56
    12, -11, 9, -12, -3, -6, -5, -9, -3,
    -- layer=1 filter=55 channel=57
    1, 7, -11, 0, -11, -6, -3, 8, -10,
    -- layer=1 filter=55 channel=58
    -4, -7, 1, 3, 1, -4, -2, 14, -12,
    -- layer=1 filter=55 channel=59
    -6, 1, 2, -4, -15, -13, -13, -7, -2,
    -- layer=1 filter=55 channel=60
    1, 2, 6, -12, 3, 2, -18, 6, -3,
    -- layer=1 filter=55 channel=61
    1, 0, -9, -16, -15, 1, -11, 1, 4,
    -- layer=1 filter=55 channel=62
    -1, -10, 1, -1, 4, 8, 12, 9, 0,
    -- layer=1 filter=55 channel=63
    -9, -11, 3, 10, 10, -2, -13, -1, 7,
    -- layer=1 filter=56 channel=0
    -10, 13, 17, 5, 20, -8, 24, -6, -4,
    -- layer=1 filter=56 channel=1
    11, -13, -6, -3, 23, 13, -23, -17, -7,
    -- layer=1 filter=56 channel=2
    -21, -21, -13, -20, -7, 5, 19, -16, 2,
    -- layer=1 filter=56 channel=3
    -27, 6, 12, 32, 14, 15, 31, 31, 12,
    -- layer=1 filter=56 channel=4
    -11, 9, 19, 4, 10, 12, 8, -2, -3,
    -- layer=1 filter=56 channel=5
    1, 23, -17, 10, -7, 6, -21, 21, 13,
    -- layer=1 filter=56 channel=6
    13, -3, -11, 3, -6, 18, -2, 0, -12,
    -- layer=1 filter=56 channel=7
    -9, 7, -7, 0, -10, 9, -3, 22, -5,
    -- layer=1 filter=56 channel=8
    19, -17, -7, 28, 16, 6, -11, 6, -6,
    -- layer=1 filter=56 channel=9
    -6, 0, 11, -26, -28, 7, 2, -7, -19,
    -- layer=1 filter=56 channel=10
    -36, -26, -20, -27, -37, -26, -16, -26, -23,
    -- layer=1 filter=56 channel=11
    5, 5, 21, 6, 4, -9, 4, -11, 0,
    -- layer=1 filter=56 channel=12
    10, 25, 13, -20, 11, -3, 32, 13, 12,
    -- layer=1 filter=56 channel=13
    -1, 25, 5, 26, 28, 22, 23, -3, 13,
    -- layer=1 filter=56 channel=14
    18, 8, 1, 23, 5, 7, 27, 2, 20,
    -- layer=1 filter=56 channel=15
    -62, -48, -38, -46, -52, -23, -20, -12, -20,
    -- layer=1 filter=56 channel=16
    -45, 11, -14, -9, 3, 6, 28, 26, 26,
    -- layer=1 filter=56 channel=17
    -12, -9, -29, -7, -15, -16, 2, 7, -12,
    -- layer=1 filter=56 channel=18
    -7, -16, -13, 8, -6, -6, -8, 9, -10,
    -- layer=1 filter=56 channel=19
    6, -2, 0, -9, -9, -8, -24, 16, -23,
    -- layer=1 filter=56 channel=20
    18, 4, 15, -3, 11, 0, 20, -3, 3,
    -- layer=1 filter=56 channel=21
    -1, -14, -5, -5, -13, -10, -13, -4, -15,
    -- layer=1 filter=56 channel=22
    -1, 0, -1, 3, -40, -22, -33, -48, 1,
    -- layer=1 filter=56 channel=23
    -30, -48, -24, -45, -58, -55, -46, -39, -39,
    -- layer=1 filter=56 channel=24
    -15, 14, 19, -14, -22, 0, 14, -17, 1,
    -- layer=1 filter=56 channel=25
    2, 3, -9, 8, 1, -6, -8, -1, -2,
    -- layer=1 filter=56 channel=26
    18, -2, -12, 4, 6, 5, 7, 10, -20,
    -- layer=1 filter=56 channel=27
    18, 33, 10, 15, 3, 7, 26, 10, 11,
    -- layer=1 filter=56 channel=28
    7, 4, -27, 27, -18, -17, 15, 15, -21,
    -- layer=1 filter=56 channel=29
    23, -20, -34, 9, 6, -10, -13, -9, -10,
    -- layer=1 filter=56 channel=30
    -2, 9, 9, 12, -13, 13, -8, 11, -13,
    -- layer=1 filter=56 channel=31
    -18, -42, -22, -14, -32, -19, -17, -15, -27,
    -- layer=1 filter=56 channel=32
    -2, 28, -5, -21, 6, 7, 26, 11, -1,
    -- layer=1 filter=56 channel=33
    -5, -3, -6, 9, 15, -7, 8, 4, 0,
    -- layer=1 filter=56 channel=34
    -9, -14, 15, -1, -3, -13, 15, 13, 11,
    -- layer=1 filter=56 channel=35
    -10, -17, -17, -17, -23, -13, -19, -7, -12,
    -- layer=1 filter=56 channel=36
    -40, 8, 5, -25, -5, 7, 22, 13, 0,
    -- layer=1 filter=56 channel=37
    -9, -13, 16, 9, 2, 19, 9, 16, 11,
    -- layer=1 filter=56 channel=38
    -34, -30, -7, -27, -25, -8, -7, -31, -19,
    -- layer=1 filter=56 channel=39
    12, -2, 4, 0, -2, 5, 11, -4, 12,
    -- layer=1 filter=56 channel=40
    -6, 2, -21, -11, -18, -14, -26, 2, -17,
    -- layer=1 filter=56 channel=41
    29, 16, -21, 10, 4, 20, -12, 19, 16,
    -- layer=1 filter=56 channel=42
    12, 31, 7, 22, 3, 23, 16, 18, 13,
    -- layer=1 filter=56 channel=43
    3, -2, -40, -14, 1, -10, -21, -18, -25,
    -- layer=1 filter=56 channel=44
    -40, -23, -29, -31, -28, -42, 0, -21, -37,
    -- layer=1 filter=56 channel=45
    -11, -2, -1, 2, 11, -25, 4, 8, 2,
    -- layer=1 filter=56 channel=46
    -3, -4, 6, -19, -31, -24, -29, -23, -30,
    -- layer=1 filter=56 channel=47
    0, -9, -22, 19, -2, -10, 0, -4, -7,
    -- layer=1 filter=56 channel=48
    14, 14, 3, 9, 3, -16, 1, -11, -6,
    -- layer=1 filter=56 channel=49
    -8, -8, 15, 1, 13, 6, -16, 1, -20,
    -- layer=1 filter=56 channel=50
    -12, -9, -16, -9, 8, 5, -13, 7, 9,
    -- layer=1 filter=56 channel=51
    6, 1, 2, -23, -18, 10, -10, 2, -8,
    -- layer=1 filter=56 channel=52
    -56, -45, -63, -35, -52, -52, -22, -34, -22,
    -- layer=1 filter=56 channel=53
    -15, 29, 24, 9, 11, 37, 69, 24, 9,
    -- layer=1 filter=56 channel=54
    -4, 3, -8, 12, 9, 1, -3, 0, 1,
    -- layer=1 filter=56 channel=55
    -48, -58, -45, -27, -45, -48, -35, -51, -36,
    -- layer=1 filter=56 channel=56
    4, -4, 6, -1, 13, 7, -13, -13, -18,
    -- layer=1 filter=56 channel=57
    -24, -17, 0, -15, -6, 0, -18, -19, -2,
    -- layer=1 filter=56 channel=58
    -8, 5, -5, 4, 9, 5, 27, 30, 12,
    -- layer=1 filter=56 channel=59
    -10, -13, -17, -26, -22, -26, -6, -17, -24,
    -- layer=1 filter=56 channel=60
    -24, 0, 8, -16, -29, 2, 1, -19, 6,
    -- layer=1 filter=56 channel=61
    31, 15, 24, 27, 19, 26, -6, 10, 21,
    -- layer=1 filter=56 channel=62
    -30, 9, 18, -30, -1, 8, -24, -24, 8,
    -- layer=1 filter=56 channel=63
    -38, -41, -30, -2, -36, -2, 8, 2, 23,
    -- layer=1 filter=57 channel=0
    -14, -13, 0, -13, 5, -6, -11, -1, 2,
    -- layer=1 filter=57 channel=1
    -11, 0, -5, -20, -13, -3, -19, -3, -15,
    -- layer=1 filter=57 channel=2
    -8, -18, 5, -19, -7, -3, -17, -16, -13,
    -- layer=1 filter=57 channel=3
    -5, 10, 4, 0, -19, 2, -10, -4, -17,
    -- layer=1 filter=57 channel=4
    -15, -7, 4, -13, 10, 5, -8, 9, -18,
    -- layer=1 filter=57 channel=5
    -8, -9, 3, -3, -16, 4, -13, -9, -13,
    -- layer=1 filter=57 channel=6
    -14, -6, -12, 9, 6, -2, 10, -7, -17,
    -- layer=1 filter=57 channel=7
    7, 9, -13, 4, -4, -17, 0, -3, -15,
    -- layer=1 filter=57 channel=8
    -3, -15, -15, 9, -9, -4, 3, -4, 0,
    -- layer=1 filter=57 channel=9
    -9, -10, -3, 6, -5, -20, 10, -21, -6,
    -- layer=1 filter=57 channel=10
    -9, -20, -2, 4, -2, -11, 0, -13, -19,
    -- layer=1 filter=57 channel=11
    8, -17, 6, -14, 3, -20, -12, -14, -21,
    -- layer=1 filter=57 channel=12
    -3, -18, -16, -20, 8, 7, 3, -7, 6,
    -- layer=1 filter=57 channel=13
    -1, -16, 10, -5, -15, -3, -10, 3, -9,
    -- layer=1 filter=57 channel=14
    3, 6, -18, 3, 0, -11, -10, 8, 1,
    -- layer=1 filter=57 channel=15
    -13, -1, -2, -7, -6, -8, -7, -16, 2,
    -- layer=1 filter=57 channel=16
    -6, -2, 11, 12, -19, -15, 0, -17, 7,
    -- layer=1 filter=57 channel=17
    2, -3, -11, 6, 8, 10, 4, 0, 6,
    -- layer=1 filter=57 channel=18
    -2, 1, 3, 12, -1, -4, 5, -6, -5,
    -- layer=1 filter=57 channel=19
    -15, -8, -8, 11, 5, 5, 12, 1, -14,
    -- layer=1 filter=57 channel=20
    0, -10, -7, -1, 9, -15, -18, 9, -11,
    -- layer=1 filter=57 channel=21
    -7, 5, -11, -24, -13, -14, 3, -15, 8,
    -- layer=1 filter=57 channel=22
    5, 1, 7, -18, -9, -18, -16, -7, -10,
    -- layer=1 filter=57 channel=23
    -13, 2, -1, 0, -4, 12, -9, -8, 6,
    -- layer=1 filter=57 channel=24
    -3, -2, 0, -13, 0, 12, 0, 8, -20,
    -- layer=1 filter=57 channel=25
    0, 10, -17, -10, -1, -5, -16, 0, -11,
    -- layer=1 filter=57 channel=26
    10, 3, -5, 6, -8, -13, -14, -4, -7,
    -- layer=1 filter=57 channel=27
    -12, -18, -8, 3, 0, -13, 4, 6, 1,
    -- layer=1 filter=57 channel=28
    8, 9, -16, -4, -2, 6, -9, -15, 10,
    -- layer=1 filter=57 channel=29
    2, -10, -11, 8, 2, 4, 2, 1, 7,
    -- layer=1 filter=57 channel=30
    2, -4, -4, 1, 5, -9, 4, 10, 13,
    -- layer=1 filter=57 channel=31
    8, -12, 2, 11, -9, -23, -8, -10, -13,
    -- layer=1 filter=57 channel=32
    0, 10, 1, -14, -3, -7, -2, -13, 11,
    -- layer=1 filter=57 channel=33
    7, -5, 10, 9, 12, 13, 8, -7, -13,
    -- layer=1 filter=57 channel=34
    -2, -3, -17, 7, 8, -13, -1, 1, 3,
    -- layer=1 filter=57 channel=35
    5, -6, 1, -3, 3, -17, 12, -7, -6,
    -- layer=1 filter=57 channel=36
    2, -13, 5, 5, 4, -11, 6, -1, -18,
    -- layer=1 filter=57 channel=37
    1, -5, 5, 4, 3, 10, 5, -16, -10,
    -- layer=1 filter=57 channel=38
    -7, 5, -16, -12, -16, 1, -12, 6, -1,
    -- layer=1 filter=57 channel=39
    -6, 3, -7, -1, 11, 3, 1, -7, -11,
    -- layer=1 filter=57 channel=40
    -4, -4, -8, 12, 8, 7, 6, 8, -6,
    -- layer=1 filter=57 channel=41
    -2, -4, 8, -7, 8, -1, 4, 2, 15,
    -- layer=1 filter=57 channel=42
    -9, 4, 6, 3, -8, -9, -11, 7, 1,
    -- layer=1 filter=57 channel=43
    17, -15, -13, 20, -7, 3, -11, -10, -4,
    -- layer=1 filter=57 channel=44
    -16, -11, -13, -18, 4, 4, 1, 0, -10,
    -- layer=1 filter=57 channel=45
    2, 12, -13, 23, -12, -3, 6, -6, 3,
    -- layer=1 filter=57 channel=46
    8, 10, -17, -8, 10, 7, -4, 8, 7,
    -- layer=1 filter=57 channel=47
    -2, 7, -10, -2, -1, 8, -8, 6, -7,
    -- layer=1 filter=57 channel=48
    13, 5, -12, -6, 5, -8, -12, -7, -4,
    -- layer=1 filter=57 channel=49
    -13, -2, -12, 7, -4, -1, -13, -14, -17,
    -- layer=1 filter=57 channel=50
    -7, 10, -1, 2, -5, -1, -1, 7, -6,
    -- layer=1 filter=57 channel=51
    -2, 9, 0, 10, -1, -8, -6, -15, 0,
    -- layer=1 filter=57 channel=52
    -6, 11, -8, -4, -1, -9, -7, -10, 3,
    -- layer=1 filter=57 channel=53
    -4, -1, -3, 3, 0, -2, 10, 16, 0,
    -- layer=1 filter=57 channel=54
    -3, -5, -5, 0, -3, -11, -15, -6, 0,
    -- layer=1 filter=57 channel=55
    6, -7, -8, 5, -18, -20, 1, -19, -14,
    -- layer=1 filter=57 channel=56
    -11, -10, -14, -14, -18, -6, -5, -13, -13,
    -- layer=1 filter=57 channel=57
    -5, -13, -9, -13, -16, -3, -10, 7, 5,
    -- layer=1 filter=57 channel=58
    -15, 0, 7, 4, 2, -20, -13, -17, 10,
    -- layer=1 filter=57 channel=59
    -12, -1, -15, 13, -11, -16, -19, -5, -17,
    -- layer=1 filter=57 channel=60
    -14, 2, 2, -14, -3, -14, 5, 2, -7,
    -- layer=1 filter=57 channel=61
    -16, 4, 1, 0, 5, -16, -13, 7, -14,
    -- layer=1 filter=57 channel=62
    -20, -10, -6, 0, -4, -18, 8, -8, 7,
    -- layer=1 filter=57 channel=63
    -3, -9, -16, -11, -1, -6, 10, 16, 7,
    -- layer=1 filter=58 channel=0
    21, 35, -3, -1, -12, -9, -37, 8, 3,
    -- layer=1 filter=58 channel=1
    18, 30, 12, 3, -5, -10, -16, -20, 0,
    -- layer=1 filter=58 channel=2
    -17, -21, -3, 0, -12, -4, 18, 28, 18,
    -- layer=1 filter=58 channel=3
    -20, -9, 32, 50, 60, 14, 57, 3, 9,
    -- layer=1 filter=58 channel=4
    27, -4, 0, 9, -15, -14, -29, -21, 5,
    -- layer=1 filter=58 channel=5
    51, 32, 1, -10, 33, 0, -5, 7, 45,
    -- layer=1 filter=58 channel=6
    36, 34, 21, -13, -7, -20, -33, -48, -18,
    -- layer=1 filter=58 channel=7
    17, -3, 1, 32, 0, 8, -18, -39, -19,
    -- layer=1 filter=58 channel=8
    6, 9, 11, -7, -1, -17, -16, -45, -12,
    -- layer=1 filter=58 channel=9
    -15, -41, -14, 21, 14, -4, 11, 2, 6,
    -- layer=1 filter=58 channel=10
    -4, 20, 9, -8, 1, -6, -26, -7, -31,
    -- layer=1 filter=58 channel=11
    29, 15, 4, -32, -30, -4, -39, -6, 8,
    -- layer=1 filter=58 channel=12
    1, 6, -11, -24, -48, -18, 3, 29, 6,
    -- layer=1 filter=58 channel=13
    19, 22, 11, 7, 9, -8, -16, -7, 10,
    -- layer=1 filter=58 channel=14
    14, -5, 9, 11, 0, 8, -13, -2, -21,
    -- layer=1 filter=58 channel=15
    -23, -20, 17, 22, 15, 0, 11, -3, 9,
    -- layer=1 filter=58 channel=16
    -13, 5, 10, 50, 33, 25, 83, 48, 38,
    -- layer=1 filter=58 channel=17
    19, 2, 20, 34, 25, 33, -14, 5, -34,
    -- layer=1 filter=58 channel=18
    1, -3, 6, 9, -2, -1, -4, 11, -1,
    -- layer=1 filter=58 channel=19
    24, 12, -1, -10, -6, 3, -16, -6, -7,
    -- layer=1 filter=58 channel=20
    12, 37, 20, 1, 2, -16, -13, -19, -24,
    -- layer=1 filter=58 channel=21
    26, 25, 8, 9, 24, 15, -29, 2, 6,
    -- layer=1 filter=58 channel=22
    37, 41, -1, 80, 55, 20, 74, 78, 38,
    -- layer=1 filter=58 channel=23
    16, 31, 27, -3, -8, -26, -25, -57, -41,
    -- layer=1 filter=58 channel=24
    -43, -39, -47, 23, 0, 12, 3, 21, -13,
    -- layer=1 filter=58 channel=25
    -33, 5, 31, 22, 10, 11, -6, -10, -22,
    -- layer=1 filter=58 channel=26
    -3, 1, 5, -10, 12, -10, 5, -13, -3,
    -- layer=1 filter=58 channel=27
    20, 10, -1, -20, -33, -25, -22, 19, 39,
    -- layer=1 filter=58 channel=28
    0, -39, -2, -19, 7, 4, -23, -47, -16,
    -- layer=1 filter=58 channel=29
    18, 1, 8, 5, -24, -20, 1, -36, -32,
    -- layer=1 filter=58 channel=30
    -2, 10, 9, -9, 7, -4, -20, -1, 6,
    -- layer=1 filter=58 channel=31
    2, -13, 0, -9, 9, 5, 16, 17, 0,
    -- layer=1 filter=58 channel=32
    -21, -20, -8, -20, -31, -17, -35, 7, -19,
    -- layer=1 filter=58 channel=33
    1, -6, 3, -3, 15, 24, 19, 18, -7,
    -- layer=1 filter=58 channel=34
    12, -12, -9, 6, 11, -7, -2, -31, -24,
    -- layer=1 filter=58 channel=35
    -10, -19, -3, 11, -7, 10, 0, -10, -23,
    -- layer=1 filter=58 channel=36
    -55, -66, -16, 12, 35, 26, 43, 13, -14,
    -- layer=1 filter=58 channel=37
    9, 0, -2, 19, 18, -11, -14, -29, -32,
    -- layer=1 filter=58 channel=38
    -3, -19, -3, 15, 30, 17, -7, -10, -20,
    -- layer=1 filter=58 channel=39
    -9, 3, 7, 15, 2, 1, -16, 0, 1,
    -- layer=1 filter=58 channel=40
    39, 18, 13, 6, -4, -10, -17, -33, -29,
    -- layer=1 filter=58 channel=41
    56, 24, 13, -3, -5, 21, -16, -12, 21,
    -- layer=1 filter=58 channel=42
    23, 34, 18, 4, -10, -5, -41, -37, -16,
    -- layer=1 filter=58 channel=43
    3, 9, 14, -9, -23, -23, 3, -16, -14,
    -- layer=1 filter=58 channel=44
    -11, -11, 11, -2, 2, 11, 12, 0, 1,
    -- layer=1 filter=58 channel=45
    -41, -7, -18, -10, 0, -25, 22, -5, -28,
    -- layer=1 filter=58 channel=46
    12, 5, 28, 21, 4, 2, -19, -24, -55,
    -- layer=1 filter=58 channel=47
    -5, -8, 3, 6, 30, -4, 0, -41, -39,
    -- layer=1 filter=58 channel=48
    40, 40, 1, -18, -10, 0, 19, 41, 42,
    -- layer=1 filter=58 channel=49
    30, 33, -2, -30, -8, -9, 7, 21, 30,
    -- layer=1 filter=58 channel=50
    3, -4, -4, 7, 16, 0, -8, -4, 0,
    -- layer=1 filter=58 channel=51
    24, 24, -4, -12, -19, -21, -11, -34, -20,
    -- layer=1 filter=58 channel=52
    9, 21, -13, 25, 27, 10, -10, 1, -25,
    -- layer=1 filter=58 channel=53
    -79, -42, -7, 24, 19, 7, 41, 9, -7,
    -- layer=1 filter=58 channel=54
    24, 23, -2, 16, 6, 5, -17, -11, -18,
    -- layer=1 filter=58 channel=55
    -5, 3, -9, 34, 19, 9, -16, -7, -20,
    -- layer=1 filter=58 channel=56
    13, 14, 2, 4, 10, -15, -21, -32, -39,
    -- layer=1 filter=58 channel=57
    5, 1, 14, 6, -4, -9, -2, -11, -7,
    -- layer=1 filter=58 channel=58
    -53, -26, -4, 23, 10, 12, 26, 8, -11,
    -- layer=1 filter=58 channel=59
    -4, -18, -2, 18, 0, -13, -10, -3, -10,
    -- layer=1 filter=58 channel=60
    -32, -21, 1, 32, 9, 6, -7, -8, -12,
    -- layer=1 filter=58 channel=61
    29, 24, 13, -4, 12, -10, -26, -43, -13,
    -- layer=1 filter=58 channel=62
    39, 23, -23, 14, -12, 26, 20, 40, 17,
    -- layer=1 filter=58 channel=63
    41, 37, 38, 95, 66, 40, 101, 107, 71,
    -- layer=1 filter=59 channel=0
    32, -10, -13, -26, 15, 11, 22, 22, -1,
    -- layer=1 filter=59 channel=1
    14, 9, 8, 5, 8, 11, -23, 13, 8,
    -- layer=1 filter=59 channel=2
    -6, -61, -10, -64, -28, 7, 12, 14, -6,
    -- layer=1 filter=59 channel=3
    -46, 20, 10, 12, 7, -40, 40, -8, -35,
    -- layer=1 filter=59 channel=4
    8, 1, -5, -13, -33, -10, 1, 12, 24,
    -- layer=1 filter=59 channel=5
    -7, -108, -124, -74, -94, 0, -28, 66, 38,
    -- layer=1 filter=59 channel=6
    26, 17, -23, 0, -12, -25, -37, 8, 19,
    -- layer=1 filter=59 channel=7
    5, 41, 13, 52, -11, -58, -24, -10, 11,
    -- layer=1 filter=59 channel=8
    11, 17, -8, 37, 4, -16, 5, -28, -13,
    -- layer=1 filter=59 channel=9
    -2, -25, -34, -20, -44, -54, -6, -16, -30,
    -- layer=1 filter=59 channel=10
    -12, -26, 2, -10, -4, -13, -24, -29, -32,
    -- layer=1 filter=59 channel=11
    25, -40, -28, -22, -38, 11, 19, 48, 19,
    -- layer=1 filter=59 channel=12
    2, -61, -23, -54, -1, 11, 60, 37, 25,
    -- layer=1 filter=59 channel=13
    5, 15, 1, -12, 11, 31, -2, 9, 10,
    -- layer=1 filter=59 channel=14
    14, 36, 39, 6, 3, 9, 6, -10, -6,
    -- layer=1 filter=59 channel=15
    -3, 10, 0, 40, -7, -39, 0, -40, 23,
    -- layer=1 filter=59 channel=16
    -22, 4, 29, 60, 68, 47, 88, 22, -20,
    -- layer=1 filter=59 channel=17
    5, 35, 14, 23, 14, -2, -6, -12, -23,
    -- layer=1 filter=59 channel=18
    10, -7, -8, -12, 2, -3, -8, 1, 4,
    -- layer=1 filter=59 channel=19
    11, 11, -9, 21, -25, -35, -33, -17, 16,
    -- layer=1 filter=59 channel=20
    1, -25, -5, -42, -8, 18, -22, -3, 8,
    -- layer=1 filter=59 channel=21
    1, 34, -5, 23, 6, 23, -1, 51, 26,
    -- layer=1 filter=59 channel=22
    -10, -123, -86, -48, 59, 75, 66, 23, -7,
    -- layer=1 filter=59 channel=23
    9, 34, 25, -9, -7, -17, -24, -55, -37,
    -- layer=1 filter=59 channel=24
    -60, -20, 25, -17, -50, -14, 45, 15, -11,
    -- layer=1 filter=59 channel=25
    -64, 69, 22, 81, 35, -10, 2, -45, 3,
    -- layer=1 filter=59 channel=26
    -24, -28, -11, -7, -8, -3, 5, -35, -6,
    -- layer=1 filter=59 channel=27
    16, -35, -30, -30, -20, 27, 36, 37, 19,
    -- layer=1 filter=59 channel=28
    -57, -52, -10, -21, -8, -42, -23, -53, -16,
    -- layer=1 filter=59 channel=29
    -56, 50, 41, 58, 32, 3, 12, -13, -25,
    -- layer=1 filter=59 channel=30
    4, -2, 8, -11, 15, -6, 19, -2, 0,
    -- layer=1 filter=59 channel=31
    4, 24, 14, 39, 11, 23, 1, -27, 14,
    -- layer=1 filter=59 channel=32
    -20, -42, -17, -40, 0, -7, 53, 17, 4,
    -- layer=1 filter=59 channel=33
    15, 19, 4, -4, 3, 12, -8, 20, 10,
    -- layer=1 filter=59 channel=34
    -8, 0, -14, 16, 17, -22, 2, -17, 8,
    -- layer=1 filter=59 channel=35
    1, 23, -15, 48, -11, -36, -18, -62, -31,
    -- layer=1 filter=59 channel=36
    -71, -40, -6, 30, 9, -23, 65, 15, -11,
    -- layer=1 filter=59 channel=37
    15, 10, 14, 10, 13, 13, -8, -3, 15,
    -- layer=1 filter=59 channel=38
    5, 15, 5, 34, -14, -32, -3, -32, 16,
    -- layer=1 filter=59 channel=39
    -11, 0, -22, -24, -8, -13, 19, 8, -5,
    -- layer=1 filter=59 channel=40
    -32, -3, -18, -7, 15, -12, 14, 12, 0,
    -- layer=1 filter=59 channel=41
    11, -104, -143, -92, -96, -9, -21, 45, 39,
    -- layer=1 filter=59 channel=42
    22, 24, -2, 14, -9, -18, -9, 15, -2,
    -- layer=1 filter=59 channel=43
    -67, 4, 10, 21, 11, -12, -2, -38, -6,
    -- layer=1 filter=59 channel=44
    10, -38, -6, -19, -51, -36, -37, -33, 4,
    -- layer=1 filter=59 channel=45
    -52, 55, 43, 54, 54, -1, 44, -15, 2,
    -- layer=1 filter=59 channel=46
    -13, -19, -25, -17, -11, -28, 0, -44, -30,
    -- layer=1 filter=59 channel=47
    -6, 25, 33, 63, 19, -47, 9, -28, -18,
    -- layer=1 filter=59 channel=48
    -20, -142, -149, -94, -36, 38, 19, 49, -3,
    -- layer=1 filter=59 channel=49
    14, -51, -71, -88, 3, 22, 31, 44, 16,
    -- layer=1 filter=59 channel=50
    16, 31, 14, 48, 17, -2, -5, 0, 20,
    -- layer=1 filter=59 channel=51
    42, -4, -14, -14, -71, -45, -56, -2, 16,
    -- layer=1 filter=59 channel=52
    6, 19, 39, 4, 13, 26, 26, -10, 7,
    -- layer=1 filter=59 channel=53
    -62, -53, 17, -49, -17, -24, -3, -13, -42,
    -- layer=1 filter=59 channel=54
    16, 27, -8, 40, -28, -26, -34, -15, 9,
    -- layer=1 filter=59 channel=55
    15, 15, 16, 8, 16, 12, 0, 11, -9,
    -- layer=1 filter=59 channel=56
    -9, 44, 0, 39, 27, -33, -8, -23, -30,
    -- layer=1 filter=59 channel=57
    29, 16, -20, 22, -40, -35, -27, -36, -9,
    -- layer=1 filter=59 channel=58
    -16, 44, 15, 82, 15, -11, 54, -41, -8,
    -- layer=1 filter=59 channel=59
    2, -15, -22, 21, -8, -15, -10, 1, -10,
    -- layer=1 filter=59 channel=60
    2, 10, -1, 27, 13, -6, 15, -25, -20,
    -- layer=1 filter=59 channel=61
    16, 37, 5, 9, 0, 0, 6, 16, 12,
    -- layer=1 filter=59 channel=62
    46, -16, -13, -55, 73, 22, 74, 45, -18,
    -- layer=1 filter=59 channel=63
    -12, 1, -2, 61, 144, 96, 140, 50, 11,
    -- layer=1 filter=60 channel=0
    29, 22, -53, 2, -30, -61, -28, -34, -16,
    -- layer=1 filter=60 channel=1
    23, 25, 2, 48, 24, -16, 31, -28, -29,
    -- layer=1 filter=60 channel=2
    0, 3, -1, -27, -77, -30, -88, -49, 10,
    -- layer=1 filter=60 channel=3
    -45, -13, 34, -43, 12, 43, 9, 40, -16,
    -- layer=1 filter=60 channel=4
    7, 9, -19, 7, -15, -77, 13, -35, -26,
    -- layer=1 filter=60 channel=5
    7, -7, -22, 30, 42, -2, -11, -2, 46,
    -- layer=1 filter=60 channel=6
    15, 10, -13, 21, 11, -11, 22, -18, -23,
    -- layer=1 filter=60 channel=7
    -4, 12, 26, 22, 2, -10, 45, -30, -35,
    -- layer=1 filter=60 channel=8
    -34, -39, 5, 25, 7, -21, 44, -21, -19,
    -- layer=1 filter=60 channel=9
    -12, 15, 18, -29, -16, -3, -4, -17, -16,
    -- layer=1 filter=60 channel=10
    14, 7, 22, -4, -4, -8, -2, -25, -26,
    -- layer=1 filter=60 channel=11
    0, -19, -26, 23, -7, -95, -16, -47, -5,
    -- layer=1 filter=60 channel=12
    38, 30, -28, 75, 19, -34, -6, -4, 51,
    -- layer=1 filter=60 channel=13
    13, 5, -32, -8, -21, -62, -19, -30, -20,
    -- layer=1 filter=60 channel=14
    0, 18, 13, -15, 3, -14, -14, -12, -42,
    -- layer=1 filter=60 channel=15
    -24, 2, 53, -19, 1, 10, -1, -17, -17,
    -- layer=1 filter=60 channel=16
    7, 32, 56, -9, 73, 81, 60, 105, 10,
    -- layer=1 filter=60 channel=17
    -11, -9, 6, -17, -22, -14, -20, -2, -88,
    -- layer=1 filter=60 channel=18
    7, -13, 4, 0, -7, -13, -5, 5, -15,
    -- layer=1 filter=60 channel=19
    -2, -5, 6, 33, 0, -22, 34, -26, -13,
    -- layer=1 filter=60 channel=20
    17, 25, -39, 19, -41, -54, -60, -53, -20,
    -- layer=1 filter=60 channel=21
    14, 21, -12, 12, 25, 14, -11, -12, -15,
    -- layer=1 filter=60 channel=22
    11, 35, -25, 50, 35, 18, -27, 8, 67,
    -- layer=1 filter=60 channel=23
    10, 36, 26, 0, 41, 14, 19, 23, 5,
    -- layer=1 filter=60 channel=24
    6, 9, 35, -36, -13, 26, 33, 53, 55,
    -- layer=1 filter=60 channel=25
    18, 39, 30, 58, 85, 101, 72, 70, 17,
    -- layer=1 filter=60 channel=26
    14, -5, 12, 5, 24, 14, 44, 0, 24,
    -- layer=1 filter=60 channel=27
    28, 33, -33, 66, 6, -49, -28, -40, 23,
    -- layer=1 filter=60 channel=28
    -6, -45, 13, -21, -15, 0, 25, -15, -7,
    -- layer=1 filter=60 channel=29
    -3, -19, 30, 53, 62, 59, 65, 60, 25,
    -- layer=1 filter=60 channel=30
    -17, -18, 16, -10, -12, 5, -10, -12, -13,
    -- layer=1 filter=60 channel=31
    -8, -20, 20, 14, 23, 18, 15, 32, -1,
    -- layer=1 filter=60 channel=32
    11, 4, -40, 60, 5, -27, -8, 36, 10,
    -- layer=1 filter=60 channel=33
    9, 21, -7, 11, 0, 14, 3, 3, -4,
    -- layer=1 filter=60 channel=34
    -4, -11, 8, -21, -4, -27, 33, -8, -33,
    -- layer=1 filter=60 channel=35
    -7, -6, 10, 16, 7, 33, 33, 1, -34,
    -- layer=1 filter=60 channel=36
    -12, -8, 47, -18, 23, 65, 0, 60, 12,
    -- layer=1 filter=60 channel=37
    -17, 0, -2, -6, -16, -34, 3, -20, -48,
    -- layer=1 filter=60 channel=38
    -10, 24, 54, -9, -1, 11, 31, -7, -20,
    -- layer=1 filter=60 channel=39
    -4, -5, 4, 9, -8, 9, 14, -2, -18,
    -- layer=1 filter=60 channel=40
    24, 7, 3, -2, -2, 1, 0, 27, 10,
    -- layer=1 filter=60 channel=41
    -13, -33, -20, 40, 34, -33, 0, -35, 35,
    -- layer=1 filter=60 channel=42
    11, 30, -22, 27, -8, -27, 7, -44, -29,
    -- layer=1 filter=60 channel=43
    -8, -15, -8, 32, 50, 46, 53, 59, 22,
    -- layer=1 filter=60 channel=44
    -6, 5, 29, -15, -45, -21, -36, -29, -7,
    -- layer=1 filter=60 channel=45
    -14, 24, 5, 26, 68, 79, 84, 97, 49,
    -- layer=1 filter=60 channel=46
    14, 9, 39, -34, -10, 11, -50, -9, -16,
    -- layer=1 filter=60 channel=47
    -20, -28, 24, 13, 8, 12, 43, 40, -25,
    -- layer=1 filter=60 channel=48
    -8, -6, -47, 45, 6, -27, -25, -25, 54,
    -- layer=1 filter=60 channel=49
    19, 15, -19, 16, -11, -65, -50, -29, 52,
    -- layer=1 filter=60 channel=50
    -14, -22, 6, -20, -5, -23, 35, -2, -27,
    -- layer=1 filter=60 channel=51
    17, 18, 16, 20, -7, -31, -2, -51, -21,
    -- layer=1 filter=60 channel=52
    -15, 12, 46, -29, -12, 19, 7, 21, -44,
    -- layer=1 filter=60 channel=53
    -83, -8, 15, -81, -36, 8, -36, 7, 5,
    -- layer=1 filter=60 channel=54
    13, -1, 5, 28, 9, -16, 33, -39, -52,
    -- layer=1 filter=60 channel=55
    -29, 2, 33, -31, 13, -5, -9, -21, -47,
    -- layer=1 filter=60 channel=56
    13, 5, 7, 50, 24, 15, 43, 48, -26,
    -- layer=1 filter=60 channel=57
    9, 17, 15, 4, -19, -28, 15, -45, -47,
    -- layer=1 filter=60 channel=58
    -34, -26, 36, -20, 29, 33, 39, 46, -48,
    -- layer=1 filter=60 channel=59
    -20, 16, 27, 0, -19, 15, 9, -22, -54,
    -- layer=1 filter=60 channel=60
    -35, 14, 2, -7, 21, 13, 31, 7, -34,
    -- layer=1 filter=60 channel=61
    5, 16, -3, 13, -1, -14, -1, -14, -14,
    -- layer=1 filter=60 channel=62
    85, 71, -52, 82, 3, -30, 11, 83, 64,
    -- layer=1 filter=60 channel=63
    70, 73, 68, 124, 127, 123, 64, 179, 82,
    -- layer=1 filter=61 channel=0
    -35, -35, 10, -22, -48, 15, -16, -31, -17,
    -- layer=1 filter=61 channel=1
    9, 4, -2, 4, 10, -6, -13, 7, 16,
    -- layer=1 filter=61 channel=2
    -25, -43, 2, -5, -56, -1, -7, -43, -9,
    -- layer=1 filter=61 channel=3
    -28, -3, 9, -11, -44, -24, -27, -31, -33,
    -- layer=1 filter=61 channel=4
    0, -32, 4, 9, -22, -23, 15, 5, -6,
    -- layer=1 filter=61 channel=5
    19, 0, -27, 33, -8, -19, 12, 33, 0,
    -- layer=1 filter=61 channel=6
    3, -14, 12, 4, 0, -22, -17, 4, 0,
    -- layer=1 filter=61 channel=7
    6, -29, -23, 18, 1, -26, 17, 8, -13,
    -- layer=1 filter=61 channel=8
    27, -9, -26, 35, 13, -41, 34, 29, -27,
    -- layer=1 filter=61 channel=9
    10, 3, -22, -7, -27, -59, 16, -12, -26,
    -- layer=1 filter=61 channel=10
    11, -3, 10, -20, 15, 6, 13, 7, 11,
    -- layer=1 filter=61 channel=11
    6, -24, -11, 18, -6, -38, 28, 26, -26,
    -- layer=1 filter=61 channel=12
    -54, 4, 21, -43, -44, 13, -7, -44, -15,
    -- layer=1 filter=61 channel=13
    8, -21, 18, -15, -15, 19, -15, -19, -19,
    -- layer=1 filter=61 channel=14
    -17, -7, 4, -14, -22, -3, -18, -11, -3,
    -- layer=1 filter=61 channel=15
    22, -28, -21, 30, -34, -46, 54, 1, -38,
    -- layer=1 filter=61 channel=16
    26, -23, -14, -13, 1, -19, 16, -18, -27,
    -- layer=1 filter=61 channel=17
    -36, -6, 32, -37, -26, 42, 2, 7, 26,
    -- layer=1 filter=61 channel=18
    17, 13, -7, 1, 6, 0, 9, -4, 12,
    -- layer=1 filter=61 channel=19
    20, -17, -25, 52, 16, -38, 44, 16, -11,
    -- layer=1 filter=61 channel=20
    -46, -6, 32, -49, -28, 18, -35, -44, 10,
    -- layer=1 filter=61 channel=21
    -9, 2, 29, -12, -26, 27, -22, -1, 10,
    -- layer=1 filter=61 channel=22
    -31, -13, -46, 31, -9, 28, -7, 10, 4,
    -- layer=1 filter=61 channel=23
    -23, 29, 25, -23, 22, 47, -17, 6, 28,
    -- layer=1 filter=61 channel=24
    16, 36, 44, -66, -20, 36, -47, -5, 33,
    -- layer=1 filter=61 channel=25
    14, 8, 8, -3, 33, 39, -21, 21, 39,
    -- layer=1 filter=61 channel=26
    -37, -32, -13, -20, -13, -6, -35, -43, -10,
    -- layer=1 filter=61 channel=27
    -22, -42, -4, -44, -90, -3, -10, -34, -35,
    -- layer=1 filter=61 channel=28
    42, -26, -3, 7, 3, -23, 15, 19, -36,
    -- layer=1 filter=61 channel=29
    80, 38, 14, 55, 58, 37, 35, 68, 60,
    -- layer=1 filter=61 channel=30
    -11, -5, 0, 14, -6, 10, 12, 0, 4,
    -- layer=1 filter=61 channel=31
    52, -16, -25, 53, 19, -9, 47, 19, -19,
    -- layer=1 filter=61 channel=32
    -35, 9, 20, -20, -44, 9, 10, -15, 0,
    -- layer=1 filter=61 channel=33
    -6, -2, -7, 5, 7, -13, 18, -6, 14,
    -- layer=1 filter=61 channel=34
    12, -19, -19, 2, -22, -15, 10, 4, -19,
    -- layer=1 filter=61 channel=35
    28, -9, -42, 17, 5, -29, 42, 21, -32,
    -- layer=1 filter=61 channel=36
    24, -9, 27, -11, -48, -17, -8, 0, -48,
    -- layer=1 filter=61 channel=37
    -20, -25, -10, 0, -16, -8, 12, -2, 4,
    -- layer=1 filter=61 channel=38
    9, -47, -15, 26, -19, -26, 45, -11, -20,
    -- layer=1 filter=61 channel=39
    -11, -4, -13, -26, 0, -4, -17, -13, 7,
    -- layer=1 filter=61 channel=40
    5, -3, 1, 13, 20, -2, -6, 2, 27,
    -- layer=1 filter=61 channel=41
    37, 25, -19, 48, 12, -25, 46, 50, 6,
    -- layer=1 filter=61 channel=42
    -2, -4, 0, -10, 8, -6, -11, -10, -12,
    -- layer=1 filter=61 channel=43
    27, 48, 3, 34, 37, 40, 22, 66, 60,
    -- layer=1 filter=61 channel=44
    -11, -21, -19, 16, -39, -20, 38, -34, -6,
    -- layer=1 filter=61 channel=45
    55, 39, 20, 44, 44, 58, 43, 80, 75,
    -- layer=1 filter=61 channel=46
    0, -18, -25, -27, -9, 15, -10, 6, 19,
    -- layer=1 filter=61 channel=47
    33, -5, -16, 30, 26, -26, 28, 33, -11,
    -- layer=1 filter=61 channel=48
    19, 8, -24, 32, 0, 5, 2, 23, 11,
    -- layer=1 filter=61 channel=49
    -17, -38, -36, 7, -47, 6, 10, -9, -24,
    -- layer=1 filter=61 channel=50
    23, -24, -32, 22, -9, -49, 32, 15, -19,
    -- layer=1 filter=61 channel=51
    -6, -6, -15, 4, -21, -22, 26, 16, 4,
    -- layer=1 filter=61 channel=52
    -9, -16, -5, -25, -9, 9, 15, 15, 20,
    -- layer=1 filter=61 channel=53
    0, -15, 28, -47, -72, -5, -29, -42, -32,
    -- layer=1 filter=61 channel=54
    13, -20, -14, 21, 4, -28, 23, 19, -9,
    -- layer=1 filter=61 channel=55
    4, 21, 27, -13, 22, 31, 2, 21, 37,
    -- layer=1 filter=61 channel=56
    19, 31, 1, 23, 27, 28, -12, 30, 31,
    -- layer=1 filter=61 channel=57
    3, -14, -25, 29, -27, -42, 31, 16, -32,
    -- layer=1 filter=61 channel=58
    21, -23, -28, 11, -25, -33, 28, 0, -45,
    -- layer=1 filter=61 channel=59
    1, -24, -26, -1, -26, -28, 29, 4, -23,
    -- layer=1 filter=61 channel=60
    5, 3, -6, 8, -12, -9, 45, -8, -37,
    -- layer=1 filter=61 channel=61
    9, -15, 7, -2, 3, 1, -9, -7, -3,
    -- layer=1 filter=61 channel=62
    -111, -55, -45, -86, -56, -17, -72, -44, -22,
    -- layer=1 filter=61 channel=63
    -37, -100, -56, -48, -32, 0, -25, -57, -24,
    -- layer=1 filter=62 channel=0
    6, -2, -14, 30, -48, 14, 27, -26, 10,
    -- layer=1 filter=62 channel=1
    -5, 38, -26, -8, 10, -15, 16, 1, -1,
    -- layer=1 filter=62 channel=2
    -22, -16, 34, 17, -35, 19, 9, -27, 21,
    -- layer=1 filter=62 channel=3
    -23, -32, -7, -33, -58, -68, -12, -26, -39,
    -- layer=1 filter=62 channel=4
    -18, 0, 8, 13, -9, 18, -5, -15, 12,
    -- layer=1 filter=62 channel=5
    -37, -44, -15, -22, -19, -14, 1, -22, -37,
    -- layer=1 filter=62 channel=6
    0, 9, -12, -7, 9, -5, 8, -18, 9,
    -- layer=1 filter=62 channel=7
    4, -17, -2, -16, 10, 11, -15, 6, -3,
    -- layer=1 filter=62 channel=8
    -20, -16, -4, -22, 2, 2, -9, -7, 4,
    -- layer=1 filter=62 channel=9
    -23, -13, 35, -3, -6, 26, -6, -15, 24,
    -- layer=1 filter=62 channel=10
    34, 34, -6, -1, 38, -8, 27, 23, -7,
    -- layer=1 filter=62 channel=11
    -24, -4, 7, 5, -1, 0, 0, -2, 33,
    -- layer=1 filter=62 channel=12
    -20, 28, -8, 52, -18, 11, 58, 21, 30,
    -- layer=1 filter=62 channel=13
    -4, -12, 2, 18, 0, -21, 8, -6, -15,
    -- layer=1 filter=62 channel=14
    1, -1, 5, 3, 0, -3, 0, -21, -16,
    -- layer=1 filter=62 channel=15
    -35, -24, 37, -44, 0, 26, -15, 16, 24,
    -- layer=1 filter=62 channel=16
    14, 0, -2, 22, -7, -64, 48, 24, -76,
    -- layer=1 filter=62 channel=17
    22, 12, -7, -4, -17, -21, 10, -16, -19,
    -- layer=1 filter=62 channel=18
    16, 10, 20, -9, -11, 4, -9, 6, 0,
    -- layer=1 filter=62 channel=19
    -4, -12, 23, -36, 3, 10, -20, 16, 22,
    -- layer=1 filter=62 channel=20
    -24, 0, -21, 51, -27, 11, 33, -6, 19,
    -- layer=1 filter=62 channel=21
    1, 23, -24, -9, -10, -13, -1, -22, -23,
    -- layer=1 filter=62 channel=22
    -50, -3, -30, 2, -6, -38, 46, 10, 16,
    -- layer=1 filter=62 channel=23
    -6, -26, -15, -18, -6, 7, 4, 2, -1,
    -- layer=1 filter=62 channel=24
    -60, -14, -45, -32, -12, -99, 10, -35, -25,
    -- layer=1 filter=62 channel=25
    -6, 58, 3, 0, 27, -83, -26, 52, -34,
    -- layer=1 filter=62 channel=26
    -13, -22, -12, 2, -9, -10, 23, -3, -33,
    -- layer=1 filter=62 channel=27
    17, 15, 28, 80, 14, 54, 50, 34, 58,
    -- layer=1 filter=62 channel=28
    3, -41, 36, -12, 23, 60, 1, 29, 11,
    -- layer=1 filter=62 channel=29
    20, 8, 5, 34, 20, -75, 0, 24, -46,
    -- layer=1 filter=62 channel=30
    0, -3, 15, 6, -3, 17, -8, -7, -6,
    -- layer=1 filter=62 channel=31
    -21, -23, 23, -16, 13, 27, -4, 18, -2,
    -- layer=1 filter=62 channel=32
    -24, -25, -11, 58, -32, -8, 43, -4, 5,
    -- layer=1 filter=62 channel=33
    -15, -4, 4, 6, -3, -9, -1, 6, -4,
    -- layer=1 filter=62 channel=34
    -3, -6, 16, -16, 14, 6, 18, 9, -10,
    -- layer=1 filter=62 channel=35
    -29, -4, 30, -36, 13, 25, -21, 17, 31,
    -- layer=1 filter=62 channel=36
    -21, -15, -13, -7, -32, -29, 0, 7, -30,
    -- layer=1 filter=62 channel=37
    -1, 17, -9, -15, 18, -4, -9, -11, 0,
    -- layer=1 filter=62 channel=38
    -37, -4, 31, -49, -4, 36, -37, 5, 14,
    -- layer=1 filter=62 channel=39
    -4, 0, -15, -8, -2, -1, -17, -3, -5,
    -- layer=1 filter=62 channel=40
    28, -13, -3, 20, 11, 11, -13, 6, -19,
    -- layer=1 filter=62 channel=41
    -7, -25, 14, -43, -19, -15, -9, -13, -2,
    -- layer=1 filter=62 channel=42
    -13, 0, -5, 5, 5, 6, 6, -24, -4,
    -- layer=1 filter=62 channel=43
    -18, 22, -30, 21, 33, -51, 8, 35, -24,
    -- layer=1 filter=62 channel=44
    -48, -15, 18, -21, -4, 38, -14, -8, 40,
    -- layer=1 filter=62 channel=45
    15, 61, 26, 75, 80, -17, 42, 86, -16,
    -- layer=1 filter=62 channel=46
    15, 20, 14, 15, -17, 3, -22, -4, 0,
    -- layer=1 filter=62 channel=47
    6, -1, 13, -10, -4, 13, -8, 23, -27,
    -- layer=1 filter=62 channel=48
    -53, -24, -13, -24, -20, -17, 25, -22, 20,
    -- layer=1 filter=62 channel=49
    -12, 9, 12, 14, -21, 24, 0, 15, 49,
    -- layer=1 filter=62 channel=50
    12, -6, 0, 1, -5, 12, -18, -6, 24,
    -- layer=1 filter=62 channel=51
    -18, 20, 14, -25, -5, 16, -11, -14, 26,
    -- layer=1 filter=62 channel=52
    28, -14, -11, -7, -21, -22, 29, -15, -49,
    -- layer=1 filter=62 channel=53
    -15, -9, 18, -7, -6, -24, 36, -15, 15,
    -- layer=1 filter=62 channel=54
    -8, 5, -3, 4, -7, 15, -7, -3, 3,
    -- layer=1 filter=62 channel=55
    37, 26, -17, -5, 21, -36, -2, 21, -18,
    -- layer=1 filter=62 channel=56
    5, 21, -31, 27, 24, -57, -6, 10, -42,
    -- layer=1 filter=62 channel=57
    -31, -11, 10, -7, -11, 10, -17, -4, 32,
    -- layer=1 filter=62 channel=58
    -9, -6, 22, -7, -7, -26, -24, 42, -4,
    -- layer=1 filter=62 channel=59
    -7, 3, 35, -7, -10, 24, -7, -5, 33,
    -- layer=1 filter=62 channel=60
    -16, -7, 13, -18, 6, -9, -10, -6, 10,
    -- layer=1 filter=62 channel=61
    3, -8, -12, -3, -1, -14, 8, -4, -26,
    -- layer=1 filter=62 channel=62
    151, 158, 58, 212, 122, 100, 199, 120, 93,
    -- layer=1 filter=62 channel=63
    66, 51, 12, 59, 20, 1, 25, 42, -9,
    -- layer=1 filter=63 channel=0
    -86, -39, -51, -43, -9, -18, 5, 2, -13,
    -- layer=1 filter=63 channel=1
    -9, -19, 7, -1, 17, -3, 4, 11, 13,
    -- layer=1 filter=63 channel=2
    -31, -35, -17, -39, -19, -17, -3, -2, -9,
    -- layer=1 filter=63 channel=3
    14, -2, 33, 1, 33, 8, 13, 20, 32,
    -- layer=1 filter=63 channel=4
    9, -13, -8, -2, 0, 12, 0, -8, -7,
    -- layer=1 filter=63 channel=5
    12, -13, 4, 19, 47, 47, -4, 1, 29,
    -- layer=1 filter=63 channel=6
    -14, -24, 14, -22, 1, 10, -5, -5, 11,
    -- layer=1 filter=63 channel=7
    5, -1, 22, -11, -1, -2, 5, -15, -1,
    -- layer=1 filter=63 channel=8
    22, -4, -4, 36, 26, -8, 24, 32, -4,
    -- layer=1 filter=63 channel=9
    -10, 13, 0, 3, 15, 0, 3, -16, -3,
    -- layer=1 filter=63 channel=10
    -12, 2, -8, 8, 1, 19, 3, 35, 21,
    -- layer=1 filter=63 channel=11
    0, 6, -18, 27, 33, 21, 7, 16, 15,
    -- layer=1 filter=63 channel=12
    -35, -6, -18, -31, 15, -60, 43, 18, 2,
    -- layer=1 filter=63 channel=13
    -44, -37, -16, -22, -36, -23, 7, -3, -3,
    -- layer=1 filter=63 channel=14
    -8, -4, -29, -8, -37, -12, -3, -2, -14,
    -- layer=1 filter=63 channel=15
    28, 21, -8, 30, 25, 6, -4, 7, -16,
    -- layer=1 filter=63 channel=16
    33, 5, 17, 22, 16, -9, 41, 35, 38,
    -- layer=1 filter=63 channel=17
    -41, 2, 13, -32, 3, -3, 22, 38, 36,
    -- layer=1 filter=63 channel=18
    6, -7, 14, -7, -16, -1, 12, -6, 2,
    -- layer=1 filter=63 channel=19
    27, -9, 3, 16, 21, 3, 14, 19, 1,
    -- layer=1 filter=63 channel=20
    -72, -29, -37, -39, 0, -36, 22, -16, 8,
    -- layer=1 filter=63 channel=21
    -55, -54, -28, -26, -9, -18, 4, -31, -11,
    -- layer=1 filter=63 channel=22
    -20, 19, -10, -27, 45, 12, 14, 60, 42,
    -- layer=1 filter=63 channel=23
    -21, 11, 13, 34, 23, 42, 24, 32, 48,
    -- layer=1 filter=63 channel=24
    -40, -48, -71, -25, 11, -19, -8, 3, -14,
    -- layer=1 filter=63 channel=25
    30, 5, 26, 9, 26, -14, -4, 10, 0,
    -- layer=1 filter=63 channel=26
    -26, -9, -19, -29, -6, 3, -3, -11, 15,
    -- layer=1 filter=63 channel=27
    -58, -16, -45, -25, -29, -50, 21, -19, -18,
    -- layer=1 filter=63 channel=28
    30, 5, -15, 33, 2, 22, 16, 15, 2,
    -- layer=1 filter=63 channel=29
    42, -14, -29, 44, 44, -1, 5, 33, 13,
    -- layer=1 filter=63 channel=30
    -12, 0, 0, 0, 6, -7, 0, -9, 3,
    -- layer=1 filter=63 channel=31
    9, 6, 4, 21, 4, 5, 16, -3, 9,
    -- layer=1 filter=63 channel=32
    -43, -4, -37, 18, 20, -2, 40, 15, -20,
    -- layer=1 filter=63 channel=33
    -11, -1, 5, -1, 11, 11, -10, 6, -5,
    -- layer=1 filter=63 channel=34
    12, 7, -11, 23, 6, -4, 18, -2, 14,
    -- layer=1 filter=63 channel=35
    6, -20, 6, 28, 26, 13, 20, -2, -8,
    -- layer=1 filter=63 channel=36
    -1, 8, 0, 12, 5, 18, -5, -1, -10,
    -- layer=1 filter=63 channel=37
    10, 19, -1, 28, -4, -15, 14, 10, 15,
    -- layer=1 filter=63 channel=38
    26, -1, 17, -7, 17, 1, 1, -15, -7,
    -- layer=1 filter=63 channel=39
    -17, 3, -6, -16, 4, -18, 0, 12, -11,
    -- layer=1 filter=63 channel=40
    -25, -38, -50, -29, -29, -9, -24, -6, -33,
    -- layer=1 filter=63 channel=41
    -9, -8, -17, 9, 46, 11, -6, -8, 34,
    -- layer=1 filter=63 channel=42
    -38, -31, -8, -12, 1, -8, -7, -12, -20,
    -- layer=1 filter=63 channel=43
    19, -6, -35, 41, 36, 12, 9, 35, -11,
    -- layer=1 filter=63 channel=44
    -29, 2, -9, -6, -9, -24, -12, -14, -6,
    -- layer=1 filter=63 channel=45
    71, 19, 0, 52, 37, 2, 21, 17, 9,
    -- layer=1 filter=63 channel=46
    -18, -18, -30, -48, -30, -14, -28, -2, -21,
    -- layer=1 filter=63 channel=47
    13, 5, -2, 13, 11, 0, 5, 6, -15,
    -- layer=1 filter=63 channel=48
    -18, 10, 11, -30, 60, 17, -25, 52, 59,
    -- layer=1 filter=63 channel=49
    -14, 3, -22, -11, -3, 0, -20, 15, 15,
    -- layer=1 filter=63 channel=50
    34, -7, -14, 29, 5, 0, 16, 23, 4,
    -- layer=1 filter=63 channel=51
    6, -2, -6, 19, 14, -6, -17, 1, 16,
    -- layer=1 filter=63 channel=52
    0, -21, -16, -15, -9, 0, 50, 66, 56,
    -- layer=1 filter=63 channel=53
    -8, -7, -8, 4, 12, 6, 1, -1, 9,
    -- layer=1 filter=63 channel=54
    13, 2, -10, 16, 23, 17, -4, -8, -10,
    -- layer=1 filter=63 channel=55
    -29, -15, 4, -7, 21, 1, 34, 24, 52,
    -- layer=1 filter=63 channel=56
    0, -1, -31, 4, 8, -13, 4, -9, -12,
    -- layer=1 filter=63 channel=57
    11, 0, 8, 26, -5, 12, -3, -6, -15,
    -- layer=1 filter=63 channel=58
    42, 7, 6, 14, 0, -10, 13, -2, 9,
    -- layer=1 filter=63 channel=59
    20, 4, -7, 10, 8, 12, 11, 10, -21,
    -- layer=1 filter=63 channel=60
    2, 8, 5, -3, 5, 2, 18, -5, -8,
    -- layer=1 filter=63 channel=61
    -42, -30, -31, -34, -29, -24, -12, -21, -24,
    -- layer=1 filter=63 channel=62
    -77, -19, -36, -3, -25, -49, 9, -43, -61,
    -- layer=1 filter=63 channel=63
    9, 35, 8, 0, -24, 2, 28, 59, 19,
    -- layer=1 filter=64 channel=0
    -30, 0, 1, -38, -1, -40, -23, 3, -15,
    -- layer=1 filter=64 channel=1
    -19, -9, -10, -31, -12, -33, -53, -45, -52,
    -- layer=1 filter=64 channel=2
    8, 6, 2, 10, 29, 9, 25, 28, 24,
    -- layer=1 filter=64 channel=3
    15, -6, -9, -10, -35, -52, -34, -6, -29,
    -- layer=1 filter=64 channel=4
    -20, 14, 23, 5, -4, -16, 0, -1, 21,
    -- layer=1 filter=64 channel=5
    16, 18, 12, -20, -1, -66, 1, -12, 10,
    -- layer=1 filter=64 channel=6
    -22, -2, 5, -8, -3, 15, 20, -1, -5,
    -- layer=1 filter=64 channel=7
    6, 10, 8, -20, 19, 10, -4, 20, -5,
    -- layer=1 filter=64 channel=8
    10, -1, -5, -17, 0, -5, 0, 8, 0,
    -- layer=1 filter=64 channel=9
    -7, 6, -20, -6, -11, -24, -6, -7, -3,
    -- layer=1 filter=64 channel=10
    -27, 8, 6, -33, -13, -22, -1, -25, -24,
    -- layer=1 filter=64 channel=11
    7, -11, 14, -11, 21, -23, -5, -26, 1,
    -- layer=1 filter=64 channel=12
    10, -9, 11, 39, -8, 21, 47, 41, 42,
    -- layer=1 filter=64 channel=13
    -41, -16, 2, -69, -38, -63, -58, -56, -48,
    -- layer=1 filter=64 channel=14
    -18, -8, -2, -32, 1, 4, -24, -21, -11,
    -- layer=1 filter=64 channel=15
    26, 12, -3, 21, 19, 11, 7, 5, 7,
    -- layer=1 filter=64 channel=16
    -14, -16, -3, -33, -7, 9, -37, -31, -18,
    -- layer=1 filter=64 channel=17
    -15, 0, -10, -60, -65, -32, -39, -80, -53,
    -- layer=1 filter=64 channel=18
    -13, 0, -13, 3, -7, 0, -6, -8, 8,
    -- layer=1 filter=64 channel=19
    -11, -18, 2, -1, 19, 13, 2, 3, -4,
    -- layer=1 filter=64 channel=20
    -20, -13, 9, -13, -20, -23, 4, 19, 5,
    -- layer=1 filter=64 channel=21
    -31, -42, -16, -52, -60, -53, -57, -61, -57,
    -- layer=1 filter=64 channel=22
    16, 4, 0, -14, -21, -16, -6, -4, -47,
    -- layer=1 filter=64 channel=23
    -8, 41, 50, -10, -24, 16, -53, -52, -19,
    -- layer=1 filter=64 channel=24
    -31, 2, 6, 25, 29, 5, -20, -36, -41,
    -- layer=1 filter=64 channel=25
    -5, -35, -4, -16, -28, 26, -31, 31, 0,
    -- layer=1 filter=64 channel=26
    -20, 33, 32, -20, -9, 19, -49, -14, 8,
    -- layer=1 filter=64 channel=27
    -24, -36, -26, -24, -21, -16, 4, 33, 28,
    -- layer=1 filter=64 channel=28
    15, -9, 4, -5, -1, -18, -9, 2, 7,
    -- layer=1 filter=64 channel=29
    -39, -43, -28, -33, -4, -29, -14, 0, -3,
    -- layer=1 filter=64 channel=30
    7, -9, 5, 4, 10, 13, 5, -8, 0,
    -- layer=1 filter=64 channel=31
    3, 1, -4, -2, -3, -2, 2, -4, -6,
    -- layer=1 filter=64 channel=32
    15, -12, 25, 54, 37, 19, 44, 69, 41,
    -- layer=1 filter=64 channel=33
    -5, 5, -5, 17, 2, 0, 11, -11, -11,
    -- layer=1 filter=64 channel=34
    -1, 3, -10, -2, -12, -2, -9, 7, -2,
    -- layer=1 filter=64 channel=35
    5, -7, 1, 19, 11, 10, -3, 0, 13,
    -- layer=1 filter=64 channel=36
    -13, -1, 5, 1, -15, -41, -3, -2, -23,
    -- layer=1 filter=64 channel=37
    2, 23, 18, -23, -28, -27, -40, -13, -24,
    -- layer=1 filter=64 channel=38
    21, -5, -24, 8, -9, -19, -5, 15, -4,
    -- layer=1 filter=64 channel=39
    -9, -26, -7, -12, 9, -2, -10, -8, 6,
    -- layer=1 filter=64 channel=40
    -2, 12, 18, 16, 0, 10, 22, 24, 21,
    -- layer=1 filter=64 channel=41
    14, 16, -16, 0, 18, -38, -11, -13, -15,
    -- layer=1 filter=64 channel=42
    -15, 1, 14, -34, -14, -1, -6, -7, -7,
    -- layer=1 filter=64 channel=43
    6, -37, 10, 25, 31, 21, 23, 38, 33,
    -- layer=1 filter=64 channel=44
    0, 21, -7, 43, 39, 9, 36, 40, 17,
    -- layer=1 filter=64 channel=45
    7, -14, 35, 34, 3, 28, 18, 17, 56,
    -- layer=1 filter=64 channel=46
    -23, 0, 21, -23, -25, -7, -21, 1, -3,
    -- layer=1 filter=64 channel=47
    6, -7, -6, 3, -3, 12, 12, 27, 31,
    -- layer=1 filter=64 channel=48
    23, 0, 25, -12, -2, -30, 2, 4, -10,
    -- layer=1 filter=64 channel=49
    -23, -10, 0, -16, -20, -23, -6, 12, -1,
    -- layer=1 filter=64 channel=50
    17, 9, -6, -7, 0, -26, -22, -27, -17,
    -- layer=1 filter=64 channel=51
    -3, 5, 4, 2, 17, 10, -2, 16, 27,
    -- layer=1 filter=64 channel=52
    -55, -30, -19, -48, -20, -45, -63, -57, -26,
    -- layer=1 filter=64 channel=53
    18, -4, 5, 50, 36, -13, 34, 29, 15,
    -- layer=1 filter=64 channel=54
    0, 8, 12, 6, 3, 5, 8, -3, -6,
    -- layer=1 filter=64 channel=55
    3, 28, 24, -34, -2, 10, -29, -46, -39,
    -- layer=1 filter=64 channel=56
    -27, -26, 13, -25, -5, 17, -34, 2, -4,
    -- layer=1 filter=64 channel=57
    -5, 13, 12, 21, 23, 4, 18, 28, 15,
    -- layer=1 filter=64 channel=58
    13, 29, -4, -5, -8, 10, -16, -1, -7,
    -- layer=1 filter=64 channel=59
    -11, 3, -11, 2, -8, -12, -24, -11, -5,
    -- layer=1 filter=64 channel=60
    18, 7, 19, -10, -1, -14, -3, -9, -12,
    -- layer=1 filter=64 channel=61
    -53, -22, -33, -60, -36, -31, -51, -33, -45,
    -- layer=1 filter=64 channel=62
    -89, -35, 18, -13, -38, -34, -3, -38, 24,
    -- layer=1 filter=64 channel=63
    25, 17, 35, -51, -24, -38, -16, -54, -5,
    -- layer=1 filter=65 channel=0
    -1, -26, 21, 9, -46, 9, -11, -8, -8,
    -- layer=1 filter=65 channel=1
    0, 36, -18, -3, 12, 15, 0, -21, 23,
    -- layer=1 filter=65 channel=2
    0, -71, 10, 26, -63, 4, 5, -9, -10,
    -- layer=1 filter=65 channel=3
    -9, -11, 17, -25, -56, 7, -33, -58, -55,
    -- layer=1 filter=65 channel=4
    19, -15, 4, 26, -34, -35, 16, 16, -19,
    -- layer=1 filter=65 channel=5
    52, -10, -22, -3, -45, -25, -6, -25, 37,
    -- layer=1 filter=65 channel=6
    7, 1, -5, 18, -31, 1, 19, -27, -8,
    -- layer=1 filter=65 channel=7
    13, 5, -31, 18, 0, -28, 9, 13, 3,
    -- layer=1 filter=65 channel=8
    24, 12, -37, 10, 42, -50, 6, 5, -2,
    -- layer=1 filter=65 channel=9
    25, 5, -11, 20, -40, -10, -16, -28, -24,
    -- layer=1 filter=65 channel=10
    -26, 13, -35, -1, 39, -18, 19, -6, -6,
    -- layer=1 filter=65 channel=11
    13, -19, -34, 21, 10, -19, 0, 2, 14,
    -- layer=1 filter=65 channel=12
    -20, -24, 36, 15, -74, 55, -3, -25, 26,
    -- layer=1 filter=65 channel=13
    19, -35, 8, 17, -12, -3, -10, 5, -30,
    -- layer=1 filter=65 channel=14
    -15, -18, -2, 12, -4, 9, 11, 1, -10,
    -- layer=1 filter=65 channel=15
    28, -11, -11, 26, -1, -30, 16, 15, -28,
    -- layer=1 filter=65 channel=16
    -7, 19, -7, -33, 12, 0, -19, -30, -17,
    -- layer=1 filter=65 channel=17
    -9, -34, -4, -2, -24, 19, -15, -16, -16,
    -- layer=1 filter=65 channel=18
    13, -2, -10, 8, -2, 5, 3, 11, 5,
    -- layer=1 filter=65 channel=19
    19, -2, -50, -3, 15, -46, 4, 2, -3,
    -- layer=1 filter=65 channel=20
    -28, -20, 40, 13, -75, 60, 6, -32, 12,
    -- layer=1 filter=65 channel=21
    1, 4, 34, 7, -26, 9, 2, -16, 14,
    -- layer=1 filter=65 channel=22
    -19, -33, -72, -31, -45, -2, -30, -23, 5,
    -- layer=1 filter=65 channel=23
    -27, 12, -14, 0, 8, 24, 2, -1, -37,
    -- layer=1 filter=65 channel=24
    9, -13, 4, -46, -16, 19, -14, -9, 30,
    -- layer=1 filter=65 channel=25
    -63, 38, 0, -74, 33, 34, -27, -10, 28,
    -- layer=1 filter=65 channel=26
    -32, -9, -42, -20, -6, -22, 1, 3, -17,
    -- layer=1 filter=65 channel=27
    5, -35, 35, 21, -61, 15, -9, 1, 24,
    -- layer=1 filter=65 channel=28
    24, 11, -20, -32, 50, -62, -32, 55, -9,
    -- layer=1 filter=65 channel=29
    12, 72, 20, -40, 75, 22, -22, 34, 55,
    -- layer=1 filter=65 channel=30
    -5, -12, 5, 5, -14, 9, -9, -1, 1,
    -- layer=1 filter=65 channel=31
    9, 20, -7, -7, 39, -22, 10, 30, 10,
    -- layer=1 filter=65 channel=32
    -8, 7, 35, 29, -84, 27, -6, 0, 4,
    -- layer=1 filter=65 channel=33
    0, 13, -5, 12, -18, -14, -8, -10, 6,
    -- layer=1 filter=65 channel=34
    -8, -13, -22, 3, 3, -16, 11, 12, -32,
    -- layer=1 filter=65 channel=35
    25, -2, -24, -14, 12, -47, 23, 11, -23,
    -- layer=1 filter=65 channel=36
    21, -3, 27, -10, -60, -12, -44, -59, -49,
    -- layer=1 filter=65 channel=37
    18, -26, -8, 31, -10, -19, 14, 14, -7,
    -- layer=1 filter=65 channel=38
    14, -10, -35, 8, 9, -41, 12, -2, -21,
    -- layer=1 filter=65 channel=39
    -18, -7, 7, -11, 1, 0, -4, 1, 1,
    -- layer=1 filter=65 channel=40
    16, 5, -15, 2, 22, -10, -4, -7, -6,
    -- layer=1 filter=65 channel=41
    40, 21, -26, 2, -1, -36, -3, -7, 31,
    -- layer=1 filter=65 channel=42
    13, -1, 0, 10, -16, 1, 0, -17, -4,
    -- layer=1 filter=65 channel=43
    -19, 57, 18, -64, 57, 22, -31, 13, 59,
    -- layer=1 filter=65 channel=44
    18, -31, -10, 3, -47, 10, 18, -25, 0,
    -- layer=1 filter=65 channel=45
    -9, 39, 17, -74, 57, 66, -28, 16, 72,
    -- layer=1 filter=65 channel=46
    23, -6, -39, 14, -5, -9, 25, -16, 0,
    -- layer=1 filter=65 channel=47
    9, 18, -45, -7, 26, -43, 0, 19, -11,
    -- layer=1 filter=65 channel=48
    -4, -9, -29, -32, -32, 17, -43, -21, 21,
    -- layer=1 filter=65 channel=49
    -4, -51, -12, 5, -73, 16, 37, -12, 30,
    -- layer=1 filter=65 channel=50
    9, 15, -6, 22, 15, -28, 19, 23, -2,
    -- layer=1 filter=65 channel=51
    22, 1, -40, 19, -7, -18, 0, 4, 8,
    -- layer=1 filter=65 channel=52
    2, -7, 11, -40, -10, -21, -6, -16, 10,
    -- layer=1 filter=65 channel=53
    2, -45, 44, -17, -117, 5, -68, -77, -36,
    -- layer=1 filter=65 channel=54
    -3, 0, -9, 9, 16, -35, 28, 12, -14,
    -- layer=1 filter=65 channel=55
    -4, 30, 4, 16, 0, 21, -5, -4, 3,
    -- layer=1 filter=65 channel=56
    -12, 43, -22, -28, 47, 2, -20, 11, 20,
    -- layer=1 filter=65 channel=57
    7, 0, -19, 14, 0, -37, 26, 18, -8,
    -- layer=1 filter=65 channel=58
    12, -4, -13, 4, 23, -23, 11, -9, -42,
    -- layer=1 filter=65 channel=59
    4, -16, -4, 18, 1, -18, 4, -6, 0,
    -- layer=1 filter=65 channel=60
    21, -4, -17, 28, 16, -1, 8, 4, 0,
    -- layer=1 filter=65 channel=61
    17, -3, 11, 4, 7, -6, 3, 10, 0,
    -- layer=1 filter=65 channel=62
    -11, 10, 57, 62, -18, 100, 4, -7, 54,
    -- layer=1 filter=65 channel=63
    -35, -90, -16, -32, -41, 14, -48, -79, -25,
    -- layer=1 filter=66 channel=0
    -26, -82, -12, -22, -3, 11, -45, -28, -15,
    -- layer=1 filter=66 channel=1
    40, 56, -35, -32, -44, -26, -11, -40, -62,
    -- layer=1 filter=66 channel=2
    -15, 0, 16, 35, -19, -12, 23, 23, 34,
    -- layer=1 filter=66 channel=3
    -21, -22, 9, 46, 15, -31, -25, 4, 22,
    -- layer=1 filter=66 channel=4
    -8, -47, -47, -32, -4, -4, -44, -34, -19,
    -- layer=1 filter=66 channel=5
    56, -9, -49, -11, 56, 77, 6, -46, -60,
    -- layer=1 filter=66 channel=6
    24, -1, -59, -59, 3, 17, -11, -27, -43,
    -- layer=1 filter=66 channel=7
    -15, -31, -23, 23, 33, -4, -65, -38, -33,
    -- layer=1 filter=66 channel=8
    36, -12, -44, -48, -14, 0, -41, -39, -46,
    -- layer=1 filter=66 channel=9
    -17, -30, -3, 60, 43, -30, -37, -27, -6,
    -- layer=1 filter=66 channel=10
    0, 18, 2, -24, -17, -40, -8, -28, -30,
    -- layer=1 filter=66 channel=11
    29, -37, -60, -31, 3, 13, -40, -42, -23,
    -- layer=1 filter=66 channel=12
    -25, -10, 3, -16, -13, -23, 5, 27, -13,
    -- layer=1 filter=66 channel=13
    -27, -51, -26, -20, -21, -13, -43, -39, -11,
    -- layer=1 filter=66 channel=14
    -22, -5, 15, 54, -15, -38, -39, -10, 38,
    -- layer=1 filter=66 channel=15
    -8, 2, 0, 21, 38, -9, 0, 4, -4,
    -- layer=1 filter=66 channel=16
    -6, 14, 0, 41, -13, -43, -5, 42, 76,
    -- layer=1 filter=66 channel=17
    7, -32, 23, 9, -51, -36, -7, 34, 60,
    -- layer=1 filter=66 channel=18
    0, 5, -4, 0, 5, -5, 1, 9, -15,
    -- layer=1 filter=66 channel=19
    46, -1, -42, -31, 6, 23, -14, -20, -42,
    -- layer=1 filter=66 channel=20
    -7, 2, 2, 10, -4, -18, 16, 13, 26,
    -- layer=1 filter=66 channel=21
    15, 1, 22, -7, -9, 23, 15, 15, -21,
    -- layer=1 filter=66 channel=22
    73, 56, -19, 9, -22, -18, 32, 7, 42,
    -- layer=1 filter=66 channel=23
    -2, -9, 6, -7, -38, -27, 0, 18, 15,
    -- layer=1 filter=66 channel=24
    -27, -19, 36, 49, -22, -17, 8, 50, 65,
    -- layer=1 filter=66 channel=25
    31, 51, 21, -24, -49, -7, 12, -9, 6,
    -- layer=1 filter=66 channel=26
    -5, 8, 2, -2, 3, -14, 4, -12, -1,
    -- layer=1 filter=66 channel=27
    -11, -36, -35, -34, -6, 8, -31, -16, -36,
    -- layer=1 filter=66 channel=28
    8, -39, -2, 33, 84, 41, -51, -17, -12,
    -- layer=1 filter=66 channel=29
    50, 22, -22, -40, -21, 0, -25, -55, -37,
    -- layer=1 filter=66 channel=30
    5, -2, 12, 10, 9, 13, 2, 13, 1,
    -- layer=1 filter=66 channel=31
    33, 4, -11, -5, -12, 0, -2, -1, -6,
    -- layer=1 filter=66 channel=32
    -7, -10, 20, 25, -37, -46, 0, -7, 0,
    -- layer=1 filter=66 channel=33
    7, 14, 12, -10, 13, -1, 5, -5, -7,
    -- layer=1 filter=66 channel=34
    11, -37, 2, -14, 23, 3, -8, -17, -29,
    -- layer=1 filter=66 channel=35
    18, 0, -22, -17, -6, -24, -2, 12, 2,
    -- layer=1 filter=66 channel=36
    -38, -14, -25, 60, 34, -41, -17, 3, 34,
    -- layer=1 filter=66 channel=37
    -39, -50, -11, 2, 0, -42, -77, -40, -30,
    -- layer=1 filter=66 channel=38
    -12, -13, -11, 45, 31, -5, -17, -8, -2,
    -- layer=1 filter=66 channel=39
    5, -4, 12, -2, -2, 0, -11, -5, 8,
    -- layer=1 filter=66 channel=40
    50, -12, 7, 5, 47, 60, 13, 0, -21,
    -- layer=1 filter=66 channel=41
    61, -5, -52, -4, 21, 65, -19, -30, -73,
    -- layer=1 filter=66 channel=42
    10, 0, -20, -45, -14, 17, -16, -18, -33,
    -- layer=1 filter=66 channel=43
    81, 54, -7, -39, -56, -1, 13, -21, -31,
    -- layer=1 filter=66 channel=44
    -19, -2, 14, 28, 2, -11, 10, 18, 18,
    -- layer=1 filter=66 channel=45
    51, 27, -9, -16, -18, -14, -21, -15, -5,
    -- layer=1 filter=66 channel=46
    0, -2, -47, -25, -9, -13, 8, 8, -32,
    -- layer=1 filter=66 channel=47
    -1, -26, -15, -7, 45, 18, -24, -24, -36,
    -- layer=1 filter=66 channel=48
    72, 36, -41, -28, 25, 26, -5, -22, -52,
    -- layer=1 filter=66 channel=49
    29, 6, -48, -30, -4, 20, -4, -25, -42,
    -- layer=1 filter=66 channel=50
    -10, -32, -21, -4, 8, -19, -59, -35, -31,
    -- layer=1 filter=66 channel=51
    28, -12, -35, -30, -8, 37, -6, -8, -30,
    -- layer=1 filter=66 channel=52
    -30, -60, 1, 19, -17, -38, -11, 13, 44,
    -- layer=1 filter=66 channel=53
    -27, 6, 19, 62, 0, -36, -12, 11, 31,
    -- layer=1 filter=66 channel=54
    6, -36, -50, -36, -12, 5, -47, -36, -58,
    -- layer=1 filter=66 channel=55
    -20, -23, -1, 33, -48, -44, -22, 20, 19,
    -- layer=1 filter=66 channel=56
    25, 5, -33, -22, -33, -13, -24, -30, -22,
    -- layer=1 filter=66 channel=57
    -25, -8, -10, -1, 0, -19, -14, -22, -3,
    -- layer=1 filter=66 channel=58
    -12, -20, -16, 36, -5, -44, -39, 0, 11,
    -- layer=1 filter=66 channel=59
    -1, 1, -32, 11, -11, -43, -16, -17, -18,
    -- layer=1 filter=66 channel=60
    -26, -24, -9, 33, -21, -22, -30, 11, 26,
    -- layer=1 filter=66 channel=61
    -8, -28, -31, -12, 0, 0, -9, -59, -23,
    -- layer=1 filter=66 channel=62
    -48, -41, -58, 7, 20, 3, -41, -7, -9,
    -- layer=1 filter=66 channel=63
    42, 3, -32, 19, -27, -25, 0, 56, 78,
    -- layer=1 filter=67 channel=0
    18, 0, 3, 11, -2, 1, -10, -8, 2,
    -- layer=1 filter=67 channel=1
    25, 18, 6, 12, 1, -12, 17, -7, 1,
    -- layer=1 filter=67 channel=2
    0, 2, 8, 4, 1, 16, 10, 13, 34,
    -- layer=1 filter=67 channel=3
    -149, -158, -101, -91, -25, -22, -31, -14, -19,
    -- layer=1 filter=67 channel=4
    19, -1, -8, -12, -8, 12, 3, -20, -8,
    -- layer=1 filter=67 channel=5
    -76, -130, -133, -179, -226, -148, -151, -166, -99,
    -- layer=1 filter=67 channel=6
    3, 7, 11, 8, -12, 0, 3, 10, -9,
    -- layer=1 filter=67 channel=7
    19, 14, 9, 6, 27, 4, 1, 19, 9,
    -- layer=1 filter=67 channel=8
    13, 25, 0, 15, -9, 7, 8, 18, -23,
    -- layer=1 filter=67 channel=9
    -12, 9, -9, 3, -16, -19, 38, 2, 0,
    -- layer=1 filter=67 channel=10
    13, 19, -15, 15, 22, -9, 9, 7, 7,
    -- layer=1 filter=67 channel=11
    23, -8, 0, 12, -1, 2, -6, -25, 1,
    -- layer=1 filter=67 channel=12
    -45, -132, -106, -115, -140, -96, -78, -118, -26,
    -- layer=1 filter=67 channel=13
    12, 5, 4, 14, -3, 18, 15, -9, 3,
    -- layer=1 filter=67 channel=14
    12, 7, 21, 1, 12, 40, 17, 22, 17,
    -- layer=1 filter=67 channel=15
    30, 6, -5, 23, 9, 12, 14, -5, 9,
    -- layer=1 filter=67 channel=16
    -77, -65, -39, -160, -94, -82, -49, -48, -44,
    -- layer=1 filter=67 channel=17
    0, 2, 5, -7, 16, 10, -3, 19, 7,
    -- layer=1 filter=67 channel=18
    -14, -8, -3, 0, -12, -5, -5, -3, -1,
    -- layer=1 filter=67 channel=19
    -2, 3, 4, 22, 6, 10, -1, 11, -10,
    -- layer=1 filter=67 channel=20
    18, -13, 9, -5, 3, 15, -11, 14, 28,
    -- layer=1 filter=67 channel=21
    18, 31, 4, 3, 19, -1, 12, 23, 29,
    -- layer=1 filter=67 channel=22
    -182, -162, -114, -249, -281, -197, -171, -192, -95,
    -- layer=1 filter=67 channel=23
    -9, 1, -6, 7, 13, 28, -22, 0, -8,
    -- layer=1 filter=67 channel=24
    -53, -44, -5, -71, -43, 3, 25, 42, 62,
    -- layer=1 filter=67 channel=25
    -14, 13, 14, -9, 44, -6, 40, 48, 2,
    -- layer=1 filter=67 channel=26
    -24, -32, -16, -17, -30, 2, -20, -25, 2,
    -- layer=1 filter=67 channel=27
    -58, -145, -109, -86, -134, -108, -57, -102, -50,
    -- layer=1 filter=67 channel=28
    -14, 8, 25, 12, 12, 12, 2, 10, -29,
    -- layer=1 filter=67 channel=29
    -45, 2, 26, -50, 3, -18, -19, 37, -13,
    -- layer=1 filter=67 channel=30
    4, 0, -11, -12, -3, -4, 4, 4, 9,
    -- layer=1 filter=67 channel=31
    25, -1, 14, 16, 16, 3, 3, 7, 10,
    -- layer=1 filter=67 channel=32
    -62, -113, -99, -108, -115, -35, -47, -50, 25,
    -- layer=1 filter=67 channel=33
    7, 10, 8, -16, 6, 17, -5, -12, 0,
    -- layer=1 filter=67 channel=34
    -1, 4, 13, 9, 9, -8, -4, 7, -15,
    -- layer=1 filter=67 channel=35
    15, 9, 4, 14, 7, 0, -2, 16, 5,
    -- layer=1 filter=67 channel=36
    -7, -37, -33, -40, -49, -33, 63, 30, 43,
    -- layer=1 filter=67 channel=37
    28, 23, 15, 10, 19, 20, 9, 7, 17,
    -- layer=1 filter=67 channel=38
    25, 15, -13, 3, 5, -8, 25, 4, 10,
    -- layer=1 filter=67 channel=39
    5, -15, 1, -5, 9, -14, -9, -7, 26,
    -- layer=1 filter=67 channel=40
    -8, 24, 37, 0, 13, 17, 31, 28, 27,
    -- layer=1 filter=67 channel=41
    -41, -64, -54, -84, -115, -80, -69, -73, -41,
    -- layer=1 filter=67 channel=42
    7, 16, 21, 24, 6, 29, 13, 7, 2,
    -- layer=1 filter=67 channel=43
    -43, -4, 24, -37, -5, -27, 9, 25, -21,
    -- layer=1 filter=67 channel=44
    1, 16, 0, 17, 13, -5, 39, 10, 26,
    -- layer=1 filter=67 channel=45
    -58, -19, -7, -91, -1, -16, -52, 7, -41,
    -- layer=1 filter=67 channel=46
    3, 24, 25, 31, 45, 46, 46, 67, 59,
    -- layer=1 filter=67 channel=47
    0, 26, 13, 12, 35, 20, 21, 15, -10,
    -- layer=1 filter=67 channel=48
    -111, -157, -97, -194, -179, -163, -133, -139, -88,
    -- layer=1 filter=67 channel=49
    7, -30, -6, -21, -13, 0, -9, -34, -3,
    -- layer=1 filter=67 channel=50
    31, 19, 5, 16, 2, 11, 13, 10, -5,
    -- layer=1 filter=67 channel=51
    12, 17, 3, 23, 15, -6, 9, -2, 16,
    -- layer=1 filter=67 channel=52
    21, -6, -12, -4, 6, -22, 40, 39, 33,
    -- layer=1 filter=67 channel=53
    -110, -107, -116, -92, -113, -71, -17, -37, -25,
    -- layer=1 filter=67 channel=54
    14, 12, -7, 11, 11, -2, 18, 17, -3,
    -- layer=1 filter=67 channel=55
    9, 18, 7, -3, 15, 0, 22, 5, 24,
    -- layer=1 filter=67 channel=56
    -5, 8, 45, 3, 16, 23, -2, 18, 16,
    -- layer=1 filter=67 channel=57
    29, 9, 11, 0, 2, 0, 26, 4, -12,
    -- layer=1 filter=67 channel=58
    10, 21, -12, 6, 16, 1, 12, -5, 0,
    -- layer=1 filter=67 channel=59
    22, -1, 0, 21, 7, -14, 0, 8, -9,
    -- layer=1 filter=67 channel=60
    23, 10, 9, 8, 0, -9, 3, 3, 9,
    -- layer=1 filter=67 channel=61
    22, 19, 33, 21, 16, 13, 5, 12, 0,
    -- layer=1 filter=67 channel=62
    -105, -122, -115, -139, -134, -37, -120, -63, -12,
    -- layer=1 filter=67 channel=63
    -150, -189, -125, -224, -272, -156, -158, -152, -100,
    -- layer=1 filter=68 channel=0
    -4, 0, -9, -2, 5, -1, -17, 10, -9,
    -- layer=1 filter=68 channel=1
    -13, -4, 6, -5, 4, 0, 0, -13, -4,
    -- layer=1 filter=68 channel=2
    -1, 8, 6, 3, -8, 7, -9, -9, -13,
    -- layer=1 filter=68 channel=3
    11, -3, 0, 13, -13, -11, -8, -10, 10,
    -- layer=1 filter=68 channel=4
    -2, 9, 9, 6, 9, 4, 3, 0, 1,
    -- layer=1 filter=68 channel=5
    -12, -10, 10, -5, -10, -7, -13, -3, -1,
    -- layer=1 filter=68 channel=6
    -7, -5, -5, 0, -4, 3, 11, -9, -5,
    -- layer=1 filter=68 channel=7
    1, -8, -13, -13, 9, -4, -6, 10, -11,
    -- layer=1 filter=68 channel=8
    -4, -11, -4, -7, -3, -7, 2, 8, -11,
    -- layer=1 filter=68 channel=9
    5, -13, -4, -3, -9, 4, -4, -7, 5,
    -- layer=1 filter=68 channel=10
    -4, -6, 8, -9, -4, -14, -7, -14, 2,
    -- layer=1 filter=68 channel=11
    10, 3, -8, -12, -7, 6, -6, -6, -11,
    -- layer=1 filter=68 channel=12
    14, -4, 8, 0, 7, 6, 4, -4, 6,
    -- layer=1 filter=68 channel=13
    8, 4, 3, -2, -9, 4, -11, -6, 1,
    -- layer=1 filter=68 channel=14
    0, 7, 5, -7, -12, 11, -7, 5, -11,
    -- layer=1 filter=68 channel=15
    0, 10, -13, 5, -12, 6, -3, -1, 2,
    -- layer=1 filter=68 channel=16
    -1, 11, 0, -5, 3, -16, -8, 11, 12,
    -- layer=1 filter=68 channel=17
    -1, 0, -11, 9, 5, 7, -9, -5, -12,
    -- layer=1 filter=68 channel=18
    12, -12, -14, 8, 14, -12, -3, -11, 2,
    -- layer=1 filter=68 channel=19
    6, 3, 1, 3, 12, 9, -9, -13, 8,
    -- layer=1 filter=68 channel=20
    -8, 11, 2, 3, -10, -15, 2, -4, 8,
    -- layer=1 filter=68 channel=21
    -13, 0, -2, 9, 8, -14, -6, -6, 7,
    -- layer=1 filter=68 channel=22
    10, 14, 2, 11, 1, 0, -12, -13, 6,
    -- layer=1 filter=68 channel=23
    -3, 2, 13, 15, -8, -3, -4, -3, 0,
    -- layer=1 filter=68 channel=24
    8, -2, -12, -3, -2, -4, -7, 4, 2,
    -- layer=1 filter=68 channel=25
    -16, -2, -13, 11, -10, 9, -15, 6, -15,
    -- layer=1 filter=68 channel=26
    -8, 9, 14, -10, 4, 10, 5, 0, 0,
    -- layer=1 filter=68 channel=27
    -9, -8, -1, -9, -12, -7, -11, 2, -15,
    -- layer=1 filter=68 channel=28
    2, 11, 3, 1, 3, 8, 11, 12, 1,
    -- layer=1 filter=68 channel=29
    -11, -11, -1, 2, -14, -3, 11, -6, -9,
    -- layer=1 filter=68 channel=30
    -11, 9, 0, 5, -6, -1, -1, -2, 11,
    -- layer=1 filter=68 channel=31
    -12, 5, -4, 4, -7, 9, -1, 1, 12,
    -- layer=1 filter=68 channel=32
    9, -16, 10, 1, 5, 1, -13, -7, -9,
    -- layer=1 filter=68 channel=33
    15, -5, 0, 7, 0, 7, 3, -13, -8,
    -- layer=1 filter=68 channel=34
    7, -3, 6, -1, 12, -9, 2, 3, -2,
    -- layer=1 filter=68 channel=35
    11, -1, 2, 10, 8, 5, 0, -9, 11,
    -- layer=1 filter=68 channel=36
    -11, -9, -14, -9, -7, 0, -3, 6, -11,
    -- layer=1 filter=68 channel=37
    5, -9, -1, 6, 6, -2, -8, -14, -1,
    -- layer=1 filter=68 channel=38
    -12, -8, 3, -5, -4, -9, 7, -5, 2,
    -- layer=1 filter=68 channel=39
    -2, 0, -14, 3, 14, 0, 1, 13, -5,
    -- layer=1 filter=68 channel=40
    4, 7, -13, -16, -14, 2, -8, -7, -3,
    -- layer=1 filter=68 channel=41
    10, 11, -2, 11, -3, 10, -5, 12, 1,
    -- layer=1 filter=68 channel=42
    -13, 4, -7, -12, -7, -6, -6, 11, -1,
    -- layer=1 filter=68 channel=43
    10, -12, -14, -12, 7, -3, 7, -4, -4,
    -- layer=1 filter=68 channel=44
    -8, 3, -4, 0, 6, -10, -12, 9, -6,
    -- layer=1 filter=68 channel=45
    -5, 8, 16, 6, -1, 10, 12, 13, 6,
    -- layer=1 filter=68 channel=46
    12, -3, 1, 12, -15, -13, 9, -3, 0,
    -- layer=1 filter=68 channel=47
    -1, 0, -8, 6, -13, -6, 0, 6, 3,
    -- layer=1 filter=68 channel=48
    -2, -5, -3, 12, -4, -12, -5, -3, 14,
    -- layer=1 filter=68 channel=49
    -16, 11, -10, -6, -11, 6, 3, 6, 3,
    -- layer=1 filter=68 channel=50
    -7, 3, -3, 2, 8, 9, -3, 2, 6,
    -- layer=1 filter=68 channel=51
    -16, -8, -13, 3, -12, 3, -15, -16, -14,
    -- layer=1 filter=68 channel=52
    12, -8, -1, 9, 0, -3, -3, -15, -10,
    -- layer=1 filter=68 channel=53
    5, 12, -12, -6, -16, -12, -13, 4, 10,
    -- layer=1 filter=68 channel=54
    10, -15, 7, 4, 1, -14, -9, -12, -2,
    -- layer=1 filter=68 channel=55
    -6, 0, -5, -2, -12, -5, 6, 5, 2,
    -- layer=1 filter=68 channel=56
    -1, -16, -6, -5, -10, -1, -12, -3, -8,
    -- layer=1 filter=68 channel=57
    -7, -8, -8, -9, 10, -4, 1, -7, -10,
    -- layer=1 filter=68 channel=58
    -4, 10, -2, -14, -3, -2, 2, 4, -2,
    -- layer=1 filter=68 channel=59
    -6, -2, -7, -14, -16, -2, 5, 10, 11,
    -- layer=1 filter=68 channel=60
    -15, 11, -5, 11, 1, -6, -14, 6, 3,
    -- layer=1 filter=68 channel=61
    9, 10, -13, 10, 0, -4, -6, 10, 8,
    -- layer=1 filter=68 channel=62
    -7, -5, -7, 5, 2, -16, 6, 6, -1,
    -- layer=1 filter=68 channel=63
    1, 15, -15, 2, 13, -10, -11, 9, -13,
    -- layer=1 filter=69 channel=0
    -21, -47, -35, -11, -45, -44, -6, -8, -1,
    -- layer=1 filter=69 channel=1
    -29, -25, -19, -27, -44, -32, 2, -14, -38,
    -- layer=1 filter=69 channel=2
    3, -7, 10, -4, 26, 1, 6, 16, 26,
    -- layer=1 filter=69 channel=3
    -3, -23, -13, 6, 7, -35, 38, 21, -5,
    -- layer=1 filter=69 channel=4
    3, -12, 4, 2, -16, 2, 10, -18, -1,
    -- layer=1 filter=69 channel=5
    29, 26, -1, -30, 4, -4, 26, 8, -25,
    -- layer=1 filter=69 channel=6
    5, -18, 4, 6, -6, -1, 10, -1, 11,
    -- layer=1 filter=69 channel=7
    -3, 6, 14, 4, 7, -9, -10, -10, -4,
    -- layer=1 filter=69 channel=8
    -12, 0, -5, -20, 14, 9, -16, -8, 3,
    -- layer=1 filter=69 channel=9
    1, -5, -10, 11, -7, 0, 5, 0, 26,
    -- layer=1 filter=69 channel=10
    -40, -17, 0, -14, -28, 6, 2, 2, -9,
    -- layer=1 filter=69 channel=11
    -9, 5, 2, -8, 3, 9, -18, -4, 9,
    -- layer=1 filter=69 channel=12
    11, -11, -8, 19, 6, -16, 40, 48, 38,
    -- layer=1 filter=69 channel=13
    -16, -44, -37, -25, -55, -24, -14, -4, -4,
    -- layer=1 filter=69 channel=14
    -6, -31, -35, -23, -17, -39, 12, -7, -14,
    -- layer=1 filter=69 channel=15
    28, 2, 16, 24, 26, 8, 6, 0, 7,
    -- layer=1 filter=69 channel=16
    -16, -26, -22, -16, -16, -1, -8, -35, -21,
    -- layer=1 filter=69 channel=17
    -34, -65, -16, -42, -29, -56, 46, -29, 1,
    -- layer=1 filter=69 channel=18
    -5, 6, 5, 0, 9, 5, -14, -14, 9,
    -- layer=1 filter=69 channel=19
    15, 20, 7, -20, 6, 1, -16, -8, 7,
    -- layer=1 filter=69 channel=20
    -4, -36, -4, -1, -41, -22, 31, 27, 20,
    -- layer=1 filter=69 channel=21
    -23, -27, 6, -8, -14, -1, -8, -19, -6,
    -- layer=1 filter=69 channel=22
    18, -15, -19, 14, 14, 22, -21, -7, -27,
    -- layer=1 filter=69 channel=23
    -22, -31, 28, 116, 56, 56, 64, 64, 56,
    -- layer=1 filter=69 channel=24
    -15, 13, -11, -13, 35, 6, 56, 47, 7,
    -- layer=1 filter=69 channel=25
    -1, 8, 10, 23, 5, -34, 9, 36, -7,
    -- layer=1 filter=69 channel=26
    -8, 7, 1, -3, -5, 9, -31, 4, 4,
    -- layer=1 filter=69 channel=27
    -15, -26, -27, -17, -14, -6, -1, 39, 31,
    -- layer=1 filter=69 channel=28
    -22, -21, -38, 11, -7, 18, 53, 17, 22,
    -- layer=1 filter=69 channel=29
    -27, -23, -44, -18, -2, -14, -4, 0, -16,
    -- layer=1 filter=69 channel=30
    -9, -1, -3, 5, -8, -9, 6, -6, 0,
    -- layer=1 filter=69 channel=31
    26, 17, -5, 5, 16, 23, 1, 0, -16,
    -- layer=1 filter=69 channel=32
    18, 5, 8, 46, 2, 1, 29, 85, 60,
    -- layer=1 filter=69 channel=33
    -13, 13, 4, -1, -4, -9, 10, 13, 10,
    -- layer=1 filter=69 channel=34
    4, 12, -11, -1, -15, 0, 1, -1, -2,
    -- layer=1 filter=69 channel=35
    -15, -7, -4, 15, 18, 5, -5, -16, -6,
    -- layer=1 filter=69 channel=36
    -6, -4, -6, 31, 8, -14, 22, 41, -11,
    -- layer=1 filter=69 channel=37
    -9, 14, 1, 10, -19, -21, -20, -11, -19,
    -- layer=1 filter=69 channel=38
    16, 6, 9, 6, -4, 12, -9, 7, 11,
    -- layer=1 filter=69 channel=39
    -9, 5, 1, -7, 0, 13, 0, 0, 0,
    -- layer=1 filter=69 channel=40
    -20, 0, -28, 8, 15, 0, 23, 23, -5,
    -- layer=1 filter=69 channel=41
    20, 16, -11, -24, 23, 19, 14, -11, -24,
    -- layer=1 filter=69 channel=42
    -23, -36, -9, -27, -38, -40, 8, -24, -19,
    -- layer=1 filter=69 channel=43
    -8, 6, -28, 22, 22, 13, 24, 35, -5,
    -- layer=1 filter=69 channel=44
    -3, -6, 3, 8, 17, 17, 3, 21, 23,
    -- layer=1 filter=69 channel=45
    -4, 16, -5, 27, 30, 3, 15, 33, 22,
    -- layer=1 filter=69 channel=46
    4, -23, -22, -34, -50, -23, 19, -10, -34,
    -- layer=1 filter=69 channel=47
    12, -1, 4, -11, -5, -17, 19, -4, -1,
    -- layer=1 filter=69 channel=48
    14, -8, -8, -21, 1, 1, 0, 9, -21,
    -- layer=1 filter=69 channel=49
    18, 4, -30, -9, -12, 19, 0, 11, -4,
    -- layer=1 filter=69 channel=50
    -5, 4, -7, -9, -1, -2, -12, -13, -17,
    -- layer=1 filter=69 channel=51
    11, -3, 7, 9, -7, 7, -14, -2, 3,
    -- layer=1 filter=69 channel=52
    -81, -72, -69, -54, -59, -16, -4, -51, -33,
    -- layer=1 filter=69 channel=53
    22, 6, -8, 52, 39, 1, 31, 58, 25,
    -- layer=1 filter=69 channel=54
    -16, 4, -4, -12, -11, 12, -20, -13, 2,
    -- layer=1 filter=69 channel=55
    -35, -68, 9, -35, -33, -15, 40, -33, 4,
    -- layer=1 filter=69 channel=56
    -9, -18, -19, -21, -4, -39, 1, 0, -9,
    -- layer=1 filter=69 channel=57
    0, 20, 24, 5, 9, 14, -12, -1, 13,
    -- layer=1 filter=69 channel=58
    27, -7, 13, 14, 26, 3, -6, -5, 8,
    -- layer=1 filter=69 channel=59
    -5, 14, 12, -13, 12, 4, -31, -23, -10,
    -- layer=1 filter=69 channel=60
    8, 12, 20, 22, 11, -1, -4, 15, 9,
    -- layer=1 filter=69 channel=61
    -40, -38, -49, -28, -64, -55, 5, -29, -25,
    -- layer=1 filter=69 channel=62
    -60, -46, -34, 4, -13, -39, 4, 8, -18,
    -- layer=1 filter=69 channel=63
    -7, -29, -40, -42, -17, -23, -31, -60, -65,
    -- layer=1 filter=70 channel=0
    -15, 17, 2, 6, 19, -2, -23, -7, 4,
    -- layer=1 filter=70 channel=1
    25, -11, 24, 8, -2, 8, -2, -17, -30,
    -- layer=1 filter=70 channel=2
    -33, 2, -15, 6, -8, 10, 1, 2, 5,
    -- layer=1 filter=70 channel=3
    43, 24, -27, -34, -2, 4, 27, 27, 31,
    -- layer=1 filter=70 channel=4
    -8, -7, -19, 9, 17, 0, 18, 13, 5,
    -- layer=1 filter=70 channel=5
    82, 60, 69, 29, 34, 47, 57, 23, 16,
    -- layer=1 filter=70 channel=6
    19, -18, 21, -18, -11, -27, -5, 0, -13,
    -- layer=1 filter=70 channel=7
    25, 1, -8, -15, -3, 3, -5, 1, -11,
    -- layer=1 filter=70 channel=8
    5, 21, -24, -7, -9, 27, 11, 2, 9,
    -- layer=1 filter=70 channel=9
    -2, -35, -21, 0, 21, 8, 10, 27, 36,
    -- layer=1 filter=70 channel=10
    -10, -6, 24, 11, 13, -1, -27, -25, -15,
    -- layer=1 filter=70 channel=11
    4, 22, -14, 0, 8, -9, 4, -6, 7,
    -- layer=1 filter=70 channel=12
    10, 1, 21, -18, -5, -23, -3, -11, -6,
    -- layer=1 filter=70 channel=13
    -15, 5, -10, 18, 27, 8, -20, -3, 2,
    -- layer=1 filter=70 channel=14
    -5, -20, -6, 9, -8, -21, -17, -5, -4,
    -- layer=1 filter=70 channel=15
    -27, -11, -37, -27, 15, -3, -3, 25, 2,
    -- layer=1 filter=70 channel=16
    -8, 21, -25, 22, 8, 25, 19, 48, 14,
    -- layer=1 filter=70 channel=17
    8, 25, -14, 11, 1, -9, -26, 23, -10,
    -- layer=1 filter=70 channel=18
    2, -16, 1, -2, -11, 4, -11, 1, 0,
    -- layer=1 filter=70 channel=19
    0, -13, 0, -11, -7, -7, 4, 13, 1,
    -- layer=1 filter=70 channel=20
    6, 4, -4, -11, -13, -25, -34, -22, -19,
    -- layer=1 filter=70 channel=21
    35, 12, 20, 0, 32, 0, 12, -1, -26,
    -- layer=1 filter=70 channel=22
    34, 50, 66, 37, 55, 18, 37, 40, 39,
    -- layer=1 filter=70 channel=23
    -5, 23, -2, -48, -36, -32, -39, -24, -36,
    -- layer=1 filter=70 channel=24
    32, 48, -6, 56, 29, -4, -28, 30, -29,
    -- layer=1 filter=70 channel=25
    14, -17, 17, -11, 4, 28, 33, -2, -24,
    -- layer=1 filter=70 channel=26
    20, 31, 38, -4, 41, 17, 30, 22, 37,
    -- layer=1 filter=70 channel=27
    0, 0, 16, 3, 20, 14, -1, -45, 0,
    -- layer=1 filter=70 channel=28
    1, 0, -34, -33, -21, -14, 9, -11, 17,
    -- layer=1 filter=70 channel=29
    11, 24, -5, -26, -32, 28, 5, -1, -34,
    -- layer=1 filter=70 channel=30
    3, 3, -4, 13, 9, 5, 18, 18, 17,
    -- layer=1 filter=70 channel=31
    -27, -1, -21, 3, -8, 9, -1, 19, 3,
    -- layer=1 filter=70 channel=32
    -31, -18, -37, -38, -31, -34, -42, -14, -4,
    -- layer=1 filter=70 channel=33
    5, -14, -9, -4, -11, 6, -14, 3, 15,
    -- layer=1 filter=70 channel=34
    -2, -13, -6, -2, 4, 22, 8, -4, 2,
    -- layer=1 filter=70 channel=35
    -14, -35, -30, -8, -11, 1, 14, 10, -2,
    -- layer=1 filter=70 channel=36
    14, 9, -18, -30, -12, 24, 0, 17, 10,
    -- layer=1 filter=70 channel=37
    -19, -29, -28, 16, 36, 21, 20, 4, -2,
    -- layer=1 filter=70 channel=38
    -11, -5, -7, -11, 25, -5, 28, 21, 2,
    -- layer=1 filter=70 channel=39
    3, 14, -14, 8, 3, 1, 12, 14, -5,
    -- layer=1 filter=70 channel=40
    5, 19, 6, -19, -4, 21, -4, 9, -10,
    -- layer=1 filter=70 channel=41
    73, 33, 40, 19, 13, 31, 32, 23, -1,
    -- layer=1 filter=70 channel=42
    -1, -17, -8, 0, 3, -13, 4, 0, 0,
    -- layer=1 filter=70 channel=43
    2, 19, -30, -45, -23, -10, 14, -16, -26,
    -- layer=1 filter=70 channel=44
    -9, -10, -13, -7, 16, -6, -1, -3, 22,
    -- layer=1 filter=70 channel=45
    -9, 31, -50, -62, -41, -13, -10, -13, -23,
    -- layer=1 filter=70 channel=46
    0, 16, 25, 12, 0, 1, -9, -25, -3,
    -- layer=1 filter=70 channel=47
    -7, 22, -14, -23, -27, 15, -4, 2, 6,
    -- layer=1 filter=70 channel=48
    74, 78, 70, 38, 23, 49, 70, 32, 22,
    -- layer=1 filter=70 channel=49
    -11, 12, -4, -11, 24, 2, 13, -28, -3,
    -- layer=1 filter=70 channel=50
    -25, -22, -20, 27, 18, 25, 36, 28, 23,
    -- layer=1 filter=70 channel=51
    17, 0, -2, -24, 11, 0, 14, -5, 8,
    -- layer=1 filter=70 channel=52
    -10, 14, 3, 9, 2, -2, -8, 11, 11,
    -- layer=1 filter=70 channel=53
    -16, -4, -42, -29, -53, -28, -19, 36, 1,
    -- layer=1 filter=70 channel=54
    13, -15, -7, -6, -8, 8, 16, 18, -5,
    -- layer=1 filter=70 channel=55
    -31, -21, -10, 15, 25, -1, -15, -5, -25,
    -- layer=1 filter=70 channel=56
    0, 3, 2, -24, -15, 1, -5, 3, -34,
    -- layer=1 filter=70 channel=57
    -21, -28, -24, -12, -9, -15, 10, 7, -1,
    -- layer=1 filter=70 channel=58
    -18, -22, -54, -6, -3, 20, 4, 44, 21,
    -- layer=1 filter=70 channel=59
    -40, -37, -42, -28, 14, 9, 2, 17, 25,
    -- layer=1 filter=70 channel=60
    -12, -17, -36, 5, -5, 13, 28, 39, 35,
    -- layer=1 filter=70 channel=61
    11, -15, 2, 14, 13, -13, 0, -5, -7,
    -- layer=1 filter=70 channel=62
    -27, 40, -3, -16, -31, -38, -19, -10, -9,
    -- layer=1 filter=70 channel=63
    5, 77, 36, 128, 42, 86, 26, 91, 56,
    -- layer=1 filter=71 channel=0
    25, 34, 1, 19, 42, 12, 5, 0, -11,
    -- layer=1 filter=71 channel=1
    -11, 17, 6, -17, 37, 3, -23, -7, 5,
    -- layer=1 filter=71 channel=2
    -14, -6, 6, 7, 2, 0, 36, 5, 22,
    -- layer=1 filter=71 channel=3
    -36, 16, 4, -2, 28, 26, -2, -13, -10,
    -- layer=1 filter=71 channel=4
    -31, 5, 7, -25, 14, -6, 3, 2, -1,
    -- layer=1 filter=71 channel=5
    -85, -44, -51, -24, -38, 7, 10, 14, -23,
    -- layer=1 filter=71 channel=6
    -12, 12, 25, 10, -10, 0, -17, 8, -9,
    -- layer=1 filter=71 channel=7
    19, 12, 14, -2, -2, 7, 0, 10, 12,
    -- layer=1 filter=71 channel=8
    16, -18, 0, -2, -21, -30, -21, -32, -45,
    -- layer=1 filter=71 channel=9
    -4, -61, -27, -38, -41, -45, -35, -53, -20,
    -- layer=1 filter=71 channel=10
    2, 2, -6, -8, 21, 0, 0, 11, 11,
    -- layer=1 filter=71 channel=11
    -25, -15, 0, -40, -34, -11, -26, -13, -11,
    -- layer=1 filter=71 channel=12
    -25, -10, -34, -22, 6, -21, -23, -7, -5,
    -- layer=1 filter=71 channel=13
    22, 60, 36, 2, 32, 12, -24, 13, 0,
    -- layer=1 filter=71 channel=14
    8, 27, 12, 11, 45, 35, -4, 25, -5,
    -- layer=1 filter=71 channel=15
    -23, -69, -5, 16, -43, -13, 35, 42, 72,
    -- layer=1 filter=71 channel=16
    -31, 1, 10, 41, 21, 35, 35, 26, 46,
    -- layer=1 filter=71 channel=17
    62, 60, -2, 47, 67, 11, -13, 27, -6,
    -- layer=1 filter=71 channel=18
    12, 14, -13, 9, -7, -2, -15, 1, 0,
    -- layer=1 filter=71 channel=19
    20, -13, -20, 21, -37, -34, -8, 7, -19,
    -- layer=1 filter=71 channel=20
    20, 45, 24, 37, 32, 4, 17, -5, 11,
    -- layer=1 filter=71 channel=21
    18, 24, 10, 29, 27, 40, -25, 2, 4,
    -- layer=1 filter=71 channel=22
    -63, -81, -33, -32, -8, -26, -30, -33, -34,
    -- layer=1 filter=71 channel=23
    24, 39, 25, 24, 58, 12, -13, -29, -11,
    -- layer=1 filter=71 channel=24
    -5, -34, -34, -2, -31, -27, -66, -40, -73,
    -- layer=1 filter=71 channel=25
    7, -12, -23, 19, 4, -2, 7, -7, 7,
    -- layer=1 filter=71 channel=26
    5, -12, -13, 12, 0, -15, 6, 5, 11,
    -- layer=1 filter=71 channel=27
    -5, -5, -22, -45, 4, -43, -5, -12, 5,
    -- layer=1 filter=71 channel=28
    4, 17, 21, -3, -41, 0, -3, -21, -38,
    -- layer=1 filter=71 channel=29
    19, -21, -41, 27, -10, -48, -8, -2, -38,
    -- layer=1 filter=71 channel=30
    6, -2, 13, 10, 5, 5, 2, -5, -1,
    -- layer=1 filter=71 channel=31
    1, -45, -21, 0, -32, -44, 16, 22, 14,
    -- layer=1 filter=71 channel=32
    -7, 3, -8, -13, 0, -26, -25, -38, -43,
    -- layer=1 filter=71 channel=33
    17, -2, 10, -5, -4, 11, 2, 4, 12,
    -- layer=1 filter=71 channel=34
    6, -7, 21, 4, 13, 12, 8, -12, -2,
    -- layer=1 filter=71 channel=35
    2, 0, 2, 2, -58, -38, -1, -22, -23,
    -- layer=1 filter=71 channel=36
    -75, -70, -39, -38, -50, -41, -72, -74, -36,
    -- layer=1 filter=71 channel=37
    0, 25, 22, -28, 19, 33, -18, -16, 0,
    -- layer=1 filter=71 channel=38
    -51, -63, -11, -25, -42, 1, 33, 15, 53,
    -- layer=1 filter=71 channel=39
    12, -10, 1, -15, 1, -7, -1, 15, 8,
    -- layer=1 filter=71 channel=40
    -5, -5, 1, -2, -12, 3, 28, 11, 9,
    -- layer=1 filter=71 channel=41
    -53, -26, -22, -50, -51, -5, 11, -1, -31,
    -- layer=1 filter=71 channel=42
    13, 33, 17, 0, 36, 24, -6, 7, -1,
    -- layer=1 filter=71 channel=43
    -9, -52, -48, -8, -60, -79, -5, 10, -13,
    -- layer=1 filter=71 channel=44
    27, -43, 1, -21, -51, -8, 16, -15, 8,
    -- layer=1 filter=71 channel=45
    -23, -73, -72, -17, -63, -97, -28, -68, -44,
    -- layer=1 filter=71 channel=46
    25, 12, 36, 25, 31, 42, 28, 36, 45,
    -- layer=1 filter=71 channel=47
    16, -9, -19, 22, 7, -5, 23, 22, -18,
    -- layer=1 filter=71 channel=48
    -38, -54, -28, -19, -7, -6, -10, -6, -29,
    -- layer=1 filter=71 channel=49
    -53, -4, 24, -15, 20, -12, -5, -10, -1,
    -- layer=1 filter=71 channel=50
    1, -19, 16, -1, -19, 1, 1, -8, -29,
    -- layer=1 filter=71 channel=51
    -30, -5, -1, -24, -25, 3, 9, -9, 3,
    -- layer=1 filter=71 channel=52
    29, 45, 25, 43, 63, 54, 19, 22, 16,
    -- layer=1 filter=71 channel=53
    -41, -25, -8, -48, -7, -9, -45, -57, -16,
    -- layer=1 filter=71 channel=54
    -4, 10, 17, -7, -20, 3, 0, 4, -11,
    -- layer=1 filter=71 channel=55
    60, 49, 18, 30, 66, 49, 17, 38, 15,
    -- layer=1 filter=71 channel=56
    9, 19, 11, 16, -5, 17, 0, 6, -12,
    -- layer=1 filter=71 channel=57
    -12, -25, 5, -37, -36, -25, -25, -19, -21,
    -- layer=1 filter=71 channel=58
    18, 38, 29, 10, 16, 20, 3, -16, -24,
    -- layer=1 filter=71 channel=59
    -9, -31, 11, -4, -39, -14, 19, 2, 15,
    -- layer=1 filter=71 channel=60
    -12, 20, 25, -28, -32, -6, -23, -33, -9,
    -- layer=1 filter=71 channel=61
    14, 29, 24, 8, 17, 31, -2, -1, -3,
    -- layer=1 filter=71 channel=62
    15, -8, -32, -1, 1, -70, 48, -13, -5,
    -- layer=1 filter=71 channel=63
    -44, -38, -49, 28, 25, -3, 76, 53, 66,
    -- layer=1 filter=72 channel=0
    -34, -10, -21, 14, 11, 27, 16, -15, -18,
    -- layer=1 filter=72 channel=1
    -3, -31, -9, -16, 20, 1, -13, 9, -5,
    -- layer=1 filter=72 channel=2
    -2, 30, -12, 12, 15, 36, -14, -33, -28,
    -- layer=1 filter=72 channel=3
    84, 123, 61, 25, -21, 11, 68, 63, 24,
    -- layer=1 filter=72 channel=4
    -11, 12, 0, -14, -25, 1, -5, 0, 1,
    -- layer=1 filter=72 channel=5
    19, 25, 40, 40, 45, -8, 27, 17, -17,
    -- layer=1 filter=72 channel=6
    16, -9, -15, 0, 6, 0, -14, -7, -2,
    -- layer=1 filter=72 channel=7
    35, 39, 2, -23, -42, -8, 14, -4, 13,
    -- layer=1 filter=72 channel=8
    3, -20, 19, 13, 17, -5, -9, 18, -2,
    -- layer=1 filter=72 channel=9
    30, 39, 16, -35, -45, 11, -13, -15, -33,
    -- layer=1 filter=72 channel=10
    9, 4, 37, -24, 0, 22, -21, -20, -13,
    -- layer=1 filter=72 channel=11
    -27, -21, 0, 11, 5, -15, 7, 5, -18,
    -- layer=1 filter=72 channel=12
    16, 4, -46, -26, 60, 35, -16, -20, -29,
    -- layer=1 filter=72 channel=13
    -31, -2, 9, 7, -12, -4, 4, -9, -22,
    -- layer=1 filter=72 channel=14
    11, 25, 7, -14, -14, 15, -4, 2, -8,
    -- layer=1 filter=72 channel=15
    19, 20, 33, -29, -51, -57, -2, -20, -17,
    -- layer=1 filter=72 channel=16
    57, 48, 62, 75, 46, 33, -17, -1, -2,
    -- layer=1 filter=72 channel=17
    7, 22, 2, -8, -11, 18, -14, -31, -23,
    -- layer=1 filter=72 channel=18
    -7, 7, 1, 11, -8, 0, 0, -13, 15,
    -- layer=1 filter=72 channel=19
    -3, -15, 12, 16, 6, -8, -24, 12, -8,
    -- layer=1 filter=72 channel=20
    33, 15, -15, -8, 38, 35, -16, -7, -6,
    -- layer=1 filter=72 channel=21
    -4, -6, -4, 0, 18, 1, -2, 24, 0,
    -- layer=1 filter=72 channel=22
    81, 0, 27, 31, 50, 25, -14, -33, -11,
    -- layer=1 filter=72 channel=23
    43, 33, 26, 2, -11, -22, -38, -19, -25,
    -- layer=1 filter=72 channel=24
    47, 26, 0, -14, -13, 43, -13, -12, -25,
    -- layer=1 filter=72 channel=25
    47, 16, -6, -23, 34, 4, 0, -20, -3,
    -- layer=1 filter=72 channel=26
    16, 41, 34, 8, 17, 30, -21, -18, -11,
    -- layer=1 filter=72 channel=27
    -22, -19, -26, 6, 28, 33, 11, -35, -39,
    -- layer=1 filter=72 channel=28
    -6, 59, 50, 9, -13, -44, -10, 16, -2,
    -- layer=1 filter=72 channel=29
    -31, -34, 19, 9, 28, 7, -27, 11, 21,
    -- layer=1 filter=72 channel=30
    -3, -10, -6, 9, 7, -13, -8, 0, -12,
    -- layer=1 filter=72 channel=31
    -8, -22, 20, 13, 6, -22, -1, 1, -14,
    -- layer=1 filter=72 channel=32
    8, 17, 7, -50, 38, 20, -25, -19, -24,
    -- layer=1 filter=72 channel=33
    9, 6, 18, 9, 8, -10, 0, 10, -7,
    -- layer=1 filter=72 channel=34
    1, 19, 29, -14, -2, -27, 15, 20, -3,
    -- layer=1 filter=72 channel=35
    17, 30, 32, 11, -4, -15, -23, -22, -23,
    -- layer=1 filter=72 channel=36
    15, 68, 35, 21, -31, -36, 11, 6, -3,
    -- layer=1 filter=72 channel=37
    -3, 39, 14, -33, -16, 6, 23, 5, -7,
    -- layer=1 filter=72 channel=38
    32, 42, 6, -55, -49, -43, 0, -9, -6,
    -- layer=1 filter=72 channel=39
    -9, -2, 7, 0, -2, 0, -22, -6, -6,
    -- layer=1 filter=72 channel=40
    -34, -23, 12, 0, 8, -23, -11, 1, -5,
    -- layer=1 filter=72 channel=41
    1, -11, 14, 12, 31, -5, -2, 1, -23,
    -- layer=1 filter=72 channel=42
    -5, 8, -22, -8, 0, -2, -10, 16, -5,
    -- layer=1 filter=72 channel=43
    1, -42, -12, 18, 50, 9, -30, -23, 18,
    -- layer=1 filter=72 channel=44
    38, 30, 1, -37, -23, 7, -14, -6, -36,
    -- layer=1 filter=72 channel=45
    10, 15, 16, 29, 20, 3, -33, -50, 3,
    -- layer=1 filter=72 channel=46
    -36, -4, -7, -18, -22, -11, -41, -17, -20,
    -- layer=1 filter=72 channel=47
    19, 31, 23, 13, -8, -33, 6, 12, -8,
    -- layer=1 filter=72 channel=48
    -1, -58, 8, 48, 39, 27, 16, -6, -29,
    -- layer=1 filter=72 channel=49
    -23, -60, -37, -9, 15, 9, 7, -18, -33,
    -- layer=1 filter=72 channel=50
    8, 12, 32, -13, -35, -21, -8, 21, 12,
    -- layer=1 filter=72 channel=51
    4, -14, 7, -17, 7, -11, 9, -7, 8,
    -- layer=1 filter=72 channel=52
    -11, 21, 20, -10, -23, -12, -14, -37, -7,
    -- layer=1 filter=72 channel=53
    41, 96, 62, 37, 19, 43, 17, 20, -6,
    -- layer=1 filter=72 channel=54
    5, 0, 0, -18, -13, -19, 5, 13, -12,
    -- layer=1 filter=72 channel=55
    35, 14, 8, -24, 8, 3, -31, -47, -37,
    -- layer=1 filter=72 channel=56
    -5, 0, 16, -8, 33, -4, -18, -18, -14,
    -- layer=1 filter=72 channel=57
    28, 13, 24, -24, -17, 6, -16, -5, -17,
    -- layer=1 filter=72 channel=58
    47, 69, 43, -10, -45, -19, -8, 0, -11,
    -- layer=1 filter=72 channel=59
    27, 45, 10, -19, -50, -22, -12, -21, -25,
    -- layer=1 filter=72 channel=60
    36, 31, 19, -33, -26, -4, -13, -7, -7,
    -- layer=1 filter=72 channel=61
    2, -12, 13, -6, -1, 0, 8, 15, 0,
    -- layer=1 filter=72 channel=62
    27, -15, 1, 2, 17, -3, -25, -45, -4,
    -- layer=1 filter=72 channel=63
    61, 50, 72, 109, 57, 26, -60, -50, 0,
    -- layer=1 filter=73 channel=0
    -5, -19, -25, -30, 0, -18, -3, 2, -12,
    -- layer=1 filter=73 channel=1
    -8, 3, -8, 13, -5, 27, 17, 12, 11,
    -- layer=1 filter=73 channel=2
    3, 10, 10, 20, 14, 29, 25, 32, 24,
    -- layer=1 filter=73 channel=3
    -15, -29, 0, -121, -102, -69, -99, -59, -25,
    -- layer=1 filter=73 channel=4
    -72, -50, -58, -52, -50, -70, -43, -22, -30,
    -- layer=1 filter=73 channel=5
    -92, -138, -177, -28, -63, -53, 9, 5, 1,
    -- layer=1 filter=73 channel=6
    -50, -29, -60, -19, -44, -6, -10, 0, -31,
    -- layer=1 filter=73 channel=7
    -16, -8, -27, -21, -27, -39, -20, -17, -24,
    -- layer=1 filter=73 channel=8
    -44, -90, -90, -3, -67, -41, 9, -26, -9,
    -- layer=1 filter=73 channel=9
    -19, -20, 42, 27, -52, -8, -21, -44, -24,
    -- layer=1 filter=73 channel=10
    8, 11, 31, 17, 0, 7, 2, 28, 52,
    -- layer=1 filter=73 channel=11
    -101, -127, -93, -50, -60, -78, -5, -22, -28,
    -- layer=1 filter=73 channel=12
    16, 29, 18, -43, -3, 15, 0, 24, 0,
    -- layer=1 filter=73 channel=13
    -28, 5, -13, -20, -7, -24, -9, -18, -3,
    -- layer=1 filter=73 channel=14
    12, 9, 6, -19, 15, 5, 12, 0, 16,
    -- layer=1 filter=73 channel=15
    23, -21, 21, 13, 9, 20, 29, 10, 26,
    -- layer=1 filter=73 channel=16
    -3, -77, -98, -56, -69, -6, -51, -54, -61,
    -- layer=1 filter=73 channel=17
    8, 13, 10, -41, 14, 20, -12, -11, 6,
    -- layer=1 filter=73 channel=18
    -11, -3, 8, -1, 0, -14, -3, 1, 9,
    -- layer=1 filter=73 channel=19
    -42, -62, -80, -14, -47, -49, 32, -32, -29,
    -- layer=1 filter=73 channel=20
    7, 15, 18, -9, 10, 18, -12, 11, -6,
    -- layer=1 filter=73 channel=21
    41, 54, 40, 40, 43, 30, 18, 21, 40,
    -- layer=1 filter=73 channel=22
    -65, -94, -58, 7, -20, 7, 62, 28, 26,
    -- layer=1 filter=73 channel=23
    -2, -8, -19, -31, -9, -22, 3, -10, -14,
    -- layer=1 filter=73 channel=24
    29, 56, 40, 15, 42, 89, 9, 51, 51,
    -- layer=1 filter=73 channel=25
    17, 0, -9, 52, 6, 22, 58, 59, 35,
    -- layer=1 filter=73 channel=26
    -27, -3, 3, -9, -17, -23, -50, -20, -11,
    -- layer=1 filter=73 channel=27
    -24, -38, -39, -59, -14, -29, -24, 2, -16,
    -- layer=1 filter=73 channel=28
    -23, -62, -22, -39, -36, -46, 13, -61, -19,
    -- layer=1 filter=73 channel=29
    -17, -55, -40, 39, -33, -19, 51, 14, 19,
    -- layer=1 filter=73 channel=30
    -6, -4, -11, -18, -11, 2, 5, -13, -15,
    -- layer=1 filter=73 channel=31
    51, -12, -9, 17, -7, -23, 53, 17, 3,
    -- layer=1 filter=73 channel=32
    -13, 29, 32, -36, -7, -7, -33, -4, 0,
    -- layer=1 filter=73 channel=33
    -10, -17, -13, -19, 10, -7, -11, -17, 12,
    -- layer=1 filter=73 channel=34
    -33, -65, -2, -49, -58, -41, -23, -41, -2,
    -- layer=1 filter=73 channel=35
    -5, -57, -38, -2, -15, -39, 17, -2, -20,
    -- layer=1 filter=73 channel=36
    68, -20, 4, -42, -41, 31, -28, 20, 9,
    -- layer=1 filter=73 channel=37
    -51, -11, 18, -50, -47, -40, -43, -13, -24,
    -- layer=1 filter=73 channel=38
    -1, -20, -3, -16, -14, -15, 5, -31, -8,
    -- layer=1 filter=73 channel=39
    16, 5, -9, -20, 16, -27, -11, -3, -16,
    -- layer=1 filter=73 channel=40
    12, 4, 6, 23, 17, 19, 30, 32, 6,
    -- layer=1 filter=73 channel=41
    -79, -143, -160, -55, -96, -57, 24, -9, 6,
    -- layer=1 filter=73 channel=42
    -14, 7, -18, 0, -11, -5, -18, -10, -11,
    -- layer=1 filter=73 channel=43
    -2, -10, -14, 65, 19, 11, 67, 19, 26,
    -- layer=1 filter=73 channel=44
    13, 35, 29, 49, 21, 21, 26, 23, 19,
    -- layer=1 filter=73 channel=45
    12, -59, -76, 37, -20, -52, 57, 30, 13,
    -- layer=1 filter=73 channel=46
    -16, -18, -8, 18, 1, -4, 23, 7, 15,
    -- layer=1 filter=73 channel=47
    13, -26, -33, -4, -8, -49, 11, 7, 2,
    -- layer=1 filter=73 channel=48
    -54, -104, -94, -28, -42, -33, 39, 24, 11,
    -- layer=1 filter=73 channel=49
    -49, -118, -59, -62, -58, -37, 8, 0, -2,
    -- layer=1 filter=73 channel=50
    -1, -36, -1, -33, -79, -69, 6, -50, -38,
    -- layer=1 filter=73 channel=51
    -41, -26, -27, -10, -47, -24, -12, 2, -15,
    -- layer=1 filter=73 channel=52
    38, 21, 9, 3, 31, 38, 2, 23, 35,
    -- layer=1 filter=73 channel=53
    -39, -16, 25, -101, -81, -14, -74, -72, -19,
    -- layer=1 filter=73 channel=54
    -54, -49, -43, -27, -70, -44, -15, -43, -48,
    -- layer=1 filter=73 channel=55
    3, 29, -2, -40, -21, -15, -33, -11, 15,
    -- layer=1 filter=73 channel=56
    5, -25, 0, 29, -10, 17, 28, 11, -1,
    -- layer=1 filter=73 channel=57
    -19, -13, 13, -28, -41, -21, -21, -52, -42,
    -- layer=1 filter=73 channel=58
    -36, -47, -52, -128, -112, -49, -48, -117, -45,
    -- layer=1 filter=73 channel=59
    9, -2, 19, 36, 7, 25, -15, -26, -20,
    -- layer=1 filter=73 channel=60
    5, -14, 38, -7, -3, 4, 2, -13, -20,
    -- layer=1 filter=73 channel=61
    -6, 9, -13, -2, -5, 1, 11, -9, -7,
    -- layer=1 filter=73 channel=62
    15, -52, -20, -6, -16, -12, 19, -15, 36,
    -- layer=1 filter=73 channel=63
    -52, -93, -80, -111, -58, -37, -8, -14, -12,
    -- layer=1 filter=74 channel=0
    -7, 4, 15, -27, -15, -14, 0, 28, 4,
    -- layer=1 filter=74 channel=1
    -19, -13, -1, -6, -15, -5, 17, -9, 12,
    -- layer=1 filter=74 channel=2
    -39, -50, -37, -37, -30, -31, -34, -29, -20,
    -- layer=1 filter=74 channel=3
    35, 19, 52, -25, 16, 11, 36, 0, -2,
    -- layer=1 filter=74 channel=4
    20, 11, 1, 19, 11, 14, 5, 16, 22,
    -- layer=1 filter=74 channel=5
    23, 13, 27, -31, -5, -28, -40, 15, 16,
    -- layer=1 filter=74 channel=6
    13, 17, 1, 20, 8, 10, 8, -2, 21,
    -- layer=1 filter=74 channel=7
    14, 28, 15, 21, -4, -4, 24, -5, 6,
    -- layer=1 filter=74 channel=8
    18, 21, 5, 31, 9, 2, 17, 11, -10,
    -- layer=1 filter=74 channel=9
    0, 2, 5, -5, -8, -11, 10, 22, -2,
    -- layer=1 filter=74 channel=10
    6, -8, -11, -30, -7, -34, -21, -21, -8,
    -- layer=1 filter=74 channel=11
    39, 0, -3, 13, 17, 13, 0, 3, 5,
    -- layer=1 filter=74 channel=12
    -32, -111, -57, -98, -119, -78, -81, -63, -56,
    -- layer=1 filter=74 channel=13
    2, 20, 15, 0, 5, 0, 11, 19, 6,
    -- layer=1 filter=74 channel=14
    -10, -8, 16, 3, 5, 6, 7, 8, 0,
    -- layer=1 filter=74 channel=15
    13, 3, -11, 27, 20, 2, 16, -6, -5,
    -- layer=1 filter=74 channel=16
    34, -5, 43, 0, 16, 25, 31, -31, -16,
    -- layer=1 filter=74 channel=17
    -11, -9, -20, -39, -47, 3, 7, 6, 34,
    -- layer=1 filter=74 channel=18
    -2, 9, -2, 3, -3, 0, 7, -12, 5,
    -- layer=1 filter=74 channel=19
    27, -1, -7, 24, 2, -29, 6, -15, -20,
    -- layer=1 filter=74 channel=20
    -8, -22, -7, -50, -28, 3, -9, 1, 12,
    -- layer=1 filter=74 channel=21
    -11, -6, -17, -34, -28, -40, -43, -11, -16,
    -- layer=1 filter=74 channel=22
    -8, -40, -30, -34, -66, -35, -24, -54, -19,
    -- layer=1 filter=74 channel=23
    -41, -29, 9, -28, 2, 23, 7, 41, 50,
    -- layer=1 filter=74 channel=24
    -1, 0, 8, -68, 0, 10, -8, 6, 31,
    -- layer=1 filter=74 channel=25
    -29, 15, -1, 42, -5, -1, 64, 10, -10,
    -- layer=1 filter=74 channel=26
    -4, 22, 18, -14, 10, 39, -11, -8, 44,
    -- layer=1 filter=74 channel=27
    -51, -77, -77, -72, -103, -108, -85, -55, -59,
    -- layer=1 filter=74 channel=28
    23, -5, 0, 2, -3, -9, 8, -21, -14,
    -- layer=1 filter=74 channel=29
    -23, -12, -18, 0, -30, -28, 23, -4, -41,
    -- layer=1 filter=74 channel=30
    -4, 12, 16, -12, -4, 5, 15, 1, 9,
    -- layer=1 filter=74 channel=31
    12, 7, -10, 20, -16, -15, 20, -22, -27,
    -- layer=1 filter=74 channel=32
    -81, -179, -60, -123, -101, -80, -41, -13, -24,
    -- layer=1 filter=74 channel=33
    -5, 12, -8, -10, 2, 15, 6, -12, -2,
    -- layer=1 filter=74 channel=34
    24, 1, 17, 14, 6, -23, 16, -1, -8,
    -- layer=1 filter=74 channel=35
    -4, 5, -15, 2, 6, -6, -2, 2, -10,
    -- layer=1 filter=74 channel=36
    6, -13, 4, -28, 0, -7, 27, 12, 18,
    -- layer=1 filter=74 channel=37
    48, 35, 24, 19, 1, 13, 4, 1, 9,
    -- layer=1 filter=74 channel=38
    11, 27, 9, 12, -6, -1, 18, 21, -7,
    -- layer=1 filter=74 channel=39
    13, 4, -2, 6, -10, -1, 9, -2, -6,
    -- layer=1 filter=74 channel=40
    -8, -10, -5, -15, -10, -9, -10, -6, -20,
    -- layer=1 filter=74 channel=41
    42, 3, -13, -27, -32, -22, -24, 38, 19,
    -- layer=1 filter=74 channel=42
    9, 5, 23, 2, -12, 15, -7, 16, 4,
    -- layer=1 filter=74 channel=43
    -53, -36, -16, -4, -26, -30, 28, -5, -49,
    -- layer=1 filter=74 channel=44
    -16, -34, -32, -36, -28, -14, -19, 0, -15,
    -- layer=1 filter=74 channel=45
    -48, -27, -21, -11, -4, -44, 19, -8, -53,
    -- layer=1 filter=74 channel=46
    -62, -59, -26, -40, -63, -34, -47, -46, -9,
    -- layer=1 filter=74 channel=47
    9, 9, 10, 22, 13, 14, 28, -3, -8,
    -- layer=1 filter=74 channel=48
    -21, -21, -29, -82, -56, -37, -22, -36, -5,
    -- layer=1 filter=74 channel=49
    13, -26, -27, -7, -17, -8, -41, -24, 4,
    -- layer=1 filter=74 channel=50
    28, 25, 7, 9, 15, 9, 28, 15, 4,
    -- layer=1 filter=74 channel=51
    22, 0, 0, 13, -11, -1, 9, -11, 4,
    -- layer=1 filter=74 channel=52
    13, -10, -34, -23, -45, -34, -20, -31, 4,
    -- layer=1 filter=74 channel=53
    0, -22, -1, -72, -11, -19, 3, -3, -38,
    -- layer=1 filter=74 channel=54
    30, 10, 3, 9, -5, 3, 15, 2, 16,
    -- layer=1 filter=74 channel=55
    -32, -14, -15, -33, -18, -9, -15, 1, 19,
    -- layer=1 filter=74 channel=56
    -11, -4, 4, 1, 2, -4, 28, 16, 8,
    -- layer=1 filter=74 channel=57
    29, 17, -1, 12, -4, 8, 0, 3, -3,
    -- layer=1 filter=74 channel=58
    35, 19, 23, 29, 8, 7, 29, -18, -8,
    -- layer=1 filter=74 channel=59
    3, 5, -10, 4, 12, -7, 2, 9, -12,
    -- layer=1 filter=74 channel=60
    4, 20, 23, 27, 3, -5, 3, 6, -12,
    -- layer=1 filter=74 channel=61
    7, 15, 7, 3, -8, 0, 2, 0, -3,
    -- layer=1 filter=74 channel=62
    -31, -74, -63, -150, -43, -53, -31, -31, -24,
    -- layer=1 filter=74 channel=63
    -48, -27, 8, -26, -47, -12, -46, -67, -58,
    -- layer=1 filter=75 channel=0
    4, 14, 8, 4, 21, 27, -48, -55, -21,
    -- layer=1 filter=75 channel=1
    -1, 11, 1, 20, 35, 20, -5, -21, -52,
    -- layer=1 filter=75 channel=2
    -12, -10, 20, -44, -24, 8, 29, 44, 16,
    -- layer=1 filter=75 channel=3
    -23, -50, -6, 24, 19, -32, 81, 95, 113,
    -- layer=1 filter=75 channel=4
    -23, -10, 9, 38, 42, 50, -63, -15, -17,
    -- layer=1 filter=75 channel=5
    -52, -41, -72, 70, 35, 29, -50, -9, -80,
    -- layer=1 filter=75 channel=6
    -38, 9, -5, 23, 32, 17, -70, -78, -21,
    -- layer=1 filter=75 channel=7
    -13, -16, 11, 9, 41, 28, -22, -17, 44,
    -- layer=1 filter=75 channel=8
    -21, -10, -7, 8, 27, 17, 0, -44, -36,
    -- layer=1 filter=75 channel=9
    -13, -5, -3, 46, 25, -19, 18, 53, 84,
    -- layer=1 filter=75 channel=10
    28, 8, 11, 6, 9, -5, -13, -5, -39,
    -- layer=1 filter=75 channel=11
    -4, 8, -10, 30, 13, 39, -21, -24, -44,
    -- layer=1 filter=75 channel=12
    -3, -3, 38, -36, 0, 7, -17, -10, 3,
    -- layer=1 filter=75 channel=13
    -3, 0, 2, -6, 8, 16, -25, -24, -36,
    -- layer=1 filter=75 channel=14
    6, -8, 23, -4, 14, 10, 2, 19, 26,
    -- layer=1 filter=75 channel=15
    17, -1, 17, -8, 5, -4, 25, 8, 8,
    -- layer=1 filter=75 channel=16
    -20, -31, 17, -19, -44, -88, 138, 161, 102,
    -- layer=1 filter=75 channel=17
    29, 32, 27, -16, 32, 3, 23, 20, 29,
    -- layer=1 filter=75 channel=18
    10, -2, -12, 1, -5, 15, 4, 0, -11,
    -- layer=1 filter=75 channel=19
    -10, -11, 3, 2, 25, 14, -14, -28, -24,
    -- layer=1 filter=75 channel=20
    21, 19, 18, -12, -1, 2, -40, -16, -9,
    -- layer=1 filter=75 channel=21
    -6, -10, -1, -10, 32, -10, -29, -36, -13,
    -- layer=1 filter=75 channel=22
    -27, -15, -10, 37, 56, 50, 188, 158, 34,
    -- layer=1 filter=75 channel=23
    59, 50, 67, 33, 28, 29, -40, -15, 15,
    -- layer=1 filter=75 channel=24
    -25, -54, -5, 61, -31, -37, 111, 155, 85,
    -- layer=1 filter=75 channel=25
    -8, -18, -15, -42, 1, -47, 6, 9, -9,
    -- layer=1 filter=75 channel=26
    28, 24, 37, 45, 28, 40, 50, 24, 21,
    -- layer=1 filter=75 channel=27
    -14, -23, 19, 0, 3, 31, -39, -54, -15,
    -- layer=1 filter=75 channel=28
    8, 11, 2, 41, 44, 40, -44, -65, -9,
    -- layer=1 filter=75 channel=29
    4, 5, 0, 2, 37, -6, -30, -70, -103,
    -- layer=1 filter=75 channel=30
    6, 14, 4, 13, 20, 13, -5, 11, 2,
    -- layer=1 filter=75 channel=31
    -12, -23, 14, 7, -7, -7, 5, -36, -38,
    -- layer=1 filter=75 channel=32
    -34, 2, 34, -37, 2, -17, -10, -7, -4,
    -- layer=1 filter=75 channel=33
    15, -11, 6, -6, 1, 12, -2, 5, 9,
    -- layer=1 filter=75 channel=34
    -10, 12, 12, 2, 22, 3, -18, 2, 0,
    -- layer=1 filter=75 channel=35
    -10, 7, -1, -12, -7, -18, 18, -4, -9,
    -- layer=1 filter=75 channel=36
    -33, -29, -1, 0, 0, -50, 94, 86, 79,
    -- layer=1 filter=75 channel=37
    -28, -6, -4, 4, 3, 13, -9, 16, 7,
    -- layer=1 filter=75 channel=38
    24, 8, 8, 20, 19, -13, 15, 31, 45,
    -- layer=1 filter=75 channel=39
    -15, -6, -1, -12, 6, 2, 1, 0, -14,
    -- layer=1 filter=75 channel=40
    1, -10, -18, 13, 34, 52, -96, -75, -121,
    -- layer=1 filter=75 channel=41
    -56, -53, -58, 42, 44, 30, -67, -33, -104,
    -- layer=1 filter=75 channel=42
    -13, 2, 15, 21, 35, 37, -73, -56, -36,
    -- layer=1 filter=75 channel=43
    -23, -28, 4, -30, 8, -13, 12, -36, -94,
    -- layer=1 filter=75 channel=44
    -1, -6, -2, -1, -28, -12, 21, 7, 51,
    -- layer=1 filter=75 channel=45
    -22, -55, -8, -58, -43, -74, 0, -32, -69,
    -- layer=1 filter=75 channel=46
    14, 6, 2, -1, -5, 0, -45, 20, -32,
    -- layer=1 filter=75 channel=47
    -9, -22, 12, 3, 20, -6, -13, -23, -15,
    -- layer=1 filter=75 channel=48
    -69, -36, -31, 21, 27, 31, 55, 71, -65,
    -- layer=1 filter=75 channel=49
    -27, -6, -2, -3, 3, 41, 4, 11, -17,
    -- layer=1 filter=75 channel=50
    4, -8, -3, 4, -8, 3, -4, -15, -5,
    -- layer=1 filter=75 channel=51
    -8, -3, 3, 9, 16, 9, -68, -57, -36,
    -- layer=1 filter=75 channel=52
    21, 22, -18, 0, 4, -11, 37, 74, 45,
    -- layer=1 filter=75 channel=53
    -33, -34, -21, -13, -1, -40, 85, 117, 108,
    -- layer=1 filter=75 channel=54
    -13, 1, -11, 17, 26, 10, -56, -47, -17,
    -- layer=1 filter=75 channel=55
    55, 32, 33, 29, 16, 24, 24, 81, 26,
    -- layer=1 filter=75 channel=56
    11, 3, 19, 1, 28, -5, -21, -54, -69,
    -- layer=1 filter=75 channel=57
    2, -15, -9, 0, -18, 6, -8, -2, 17,
    -- layer=1 filter=75 channel=58
    -46, -34, -3, -38, -29, -39, 50, 49, 56,
    -- layer=1 filter=75 channel=59
    9, 6, -6, 7, -25, 2, 32, -2, 13,
    -- layer=1 filter=75 channel=60
    -12, -21, -5, -15, -23, -41, 20, 27, 34,
    -- layer=1 filter=75 channel=61
    7, 13, 10, 16, 33, 47, -59, -55, -22,
    -- layer=1 filter=75 channel=62
    20, -11, 30, -26, -31, 9, -111, -63, -22,
    -- layer=1 filter=75 channel=63
    -3, -23, -18, 59, 4, 6, 172, 165, 79,
    -- layer=1 filter=76 channel=0
    -5, -24, 26, -46, 38, 43, -68, 58, 52,
    -- layer=1 filter=76 channel=1
    11, -19, -6, 31, -55, 27, 7, -51, 38,
    -- layer=1 filter=76 channel=2
    -69, -47, -14, -39, 14, 22, -58, 54, 16,
    -- layer=1 filter=76 channel=3
    -15, -51, -31, -80, -65, -126, -51, -106, -106,
    -- layer=1 filter=76 channel=4
    -25, -44, -18, -10, 13, 28, -38, 35, 48,
    -- layer=1 filter=76 channel=5
    -7, -12, 7, -2, 3, 74, 5, 16, 48,
    -- layer=1 filter=76 channel=6
    -36, -37, -13, 9, -38, 25, -8, -6, 46,
    -- layer=1 filter=76 channel=7
    -44, -41, -33, -13, -55, -13, 13, -33, 30,
    -- layer=1 filter=76 channel=8
    -31, 1, -50, 10, -21, 15, 61, -38, 32,
    -- layer=1 filter=76 channel=9
    -35, -46, 5, -32, -39, -64, -29, 31, -19,
    -- layer=1 filter=76 channel=10
    0, -8, -29, 14, -8, -39, 68, 15, 48,
    -- layer=1 filter=76 channel=11
    -42, -39, -10, -19, 8, 33, -9, 20, 49,
    -- layer=1 filter=76 channel=12
    0, 7, 44, 27, 49, 12, -83, 99, 69,
    -- layer=1 filter=76 channel=13
    -6, -25, -3, -22, 8, 7, -56, 34, 34,
    -- layer=1 filter=76 channel=14
    -17, -41, -11, -42, -14, -15, -36, -21, 21,
    -- layer=1 filter=76 channel=15
    -13, -49, -44, -27, -28, -34, 25, -52, -11,
    -- layer=1 filter=76 channel=16
    -25, -47, -100, -33, -60, -60, 4, -33, -43,
    -- layer=1 filter=76 channel=17
    44, -9, 14, -29, -27, -36, -11, -22, 53,
    -- layer=1 filter=76 channel=18
    1, 10, 13, -2, 0, 1, -10, -12, -11,
    -- layer=1 filter=76 channel=19
    -20, 3, -11, 4, -13, 17, 41, -27, 9,
    -- layer=1 filter=76 channel=20
    -34, -8, -1, -28, 12, -10, -81, 48, 17,
    -- layer=1 filter=76 channel=21
    26, 3, 30, -20, 1, 17, -8, 27, 9,
    -- layer=1 filter=76 channel=22
    11, -26, 32, 26, 18, 87, -7, 29, 53,
    -- layer=1 filter=76 channel=23
    -60, -21, -26, -11, -2, -35, -33, -18, -13,
    -- layer=1 filter=76 channel=24
    -28, -23, -23, -14, 10, -35, 25, 42, -44,
    -- layer=1 filter=76 channel=25
    9, 35, -48, 41, 14, -33, 55, -1, -11,
    -- layer=1 filter=76 channel=26
    6, 10, -1, -21, -30, -33, 7, -8, 3,
    -- layer=1 filter=76 channel=27
    1, 7, 28, -34, 36, 59, -76, 93, 74,
    -- layer=1 filter=76 channel=28
    -20, -23, -28, -16, -16, 19, 32, -47, 9,
    -- layer=1 filter=76 channel=29
    3, 23, -56, 27, -10, -7, 53, -25, -11,
    -- layer=1 filter=76 channel=30
    1, -26, -7, -2, -15, -14, 7, -8, 9,
    -- layer=1 filter=76 channel=31
    -2, -4, -61, 21, 6, -16, 48, -1, -16,
    -- layer=1 filter=76 channel=32
    0, 9, 6, -7, 35, 8, -36, 74, 42,
    -- layer=1 filter=76 channel=33
    -4, -8, -3, -1, 3, -14, 4, -14, -11,
    -- layer=1 filter=76 channel=34
    -40, 7, -38, -11, -17, -25, 17, -21, 25,
    -- layer=1 filter=76 channel=35
    -23, -23, -66, -4, -37, -46, 30, -15, 9,
    -- layer=1 filter=76 channel=36
    -4, -45, -35, -79, -50, -46, -23, -26, -68,
    -- layer=1 filter=76 channel=37
    -13, -54, -16, -64, -58, -21, -29, 18, 49,
    -- layer=1 filter=76 channel=38
    -29, -34, -48, -36, -22, -35, 10, -40, -49,
    -- layer=1 filter=76 channel=39
    6, 18, 7, -11, -3, -7, 7, -11, 1,
    -- layer=1 filter=76 channel=40
    -6, 2, -35, -18, 7, 6, -3, -13, -7,
    -- layer=1 filter=76 channel=41
    -18, -29, 34, 25, -32, 76, 18, -17, 43,
    -- layer=1 filter=76 channel=42
    -37, -33, 14, -18, -22, 9, -40, -9, 34,
    -- layer=1 filter=76 channel=43
    28, 34, -36, 47, 3, -4, 74, -20, 5,
    -- layer=1 filter=76 channel=44
    -78, -41, 22, -30, -18, -13, -32, 47, 31,
    -- layer=1 filter=76 channel=45
    2, 22, -87, 38, 33, -64, 74, 55, -1,
    -- layer=1 filter=76 channel=46
    -71, -80, -95, -53, -28, 16, 18, -6, -2,
    -- layer=1 filter=76 channel=47
    -9, -5, -60, -10, -4, -28, 35, -10, 18,
    -- layer=1 filter=76 channel=48
    -15, -33, 20, 15, 10, 79, 2, 35, 68,
    -- layer=1 filter=76 channel=49
    -17, -13, 0, -28, 16, 47, -59, 45, 34,
    -- layer=1 filter=76 channel=50
    -18, -27, -40, -27, -11, -47, 36, -38, 25,
    -- layer=1 filter=76 channel=51
    -62, -60, -29, -9, -40, 9, 2, -20, 32,
    -- layer=1 filter=76 channel=52
    -24, -24, -48, -50, -28, -41, -8, 16, 17,
    -- layer=1 filter=76 channel=53
    -18, -38, -8, -92, -61, -74, -50, -65, -51,
    -- layer=1 filter=76 channel=54
    -27, -51, -39, -13, -40, 1, 14, -25, 44,
    -- layer=1 filter=76 channel=55
    -10, 0, -16, -12, -50, -10, -34, -32, 48,
    -- layer=1 filter=76 channel=56
    -17, -3, -57, 17, -17, -10, 39, -43, -7,
    -- layer=1 filter=76 channel=57
    -50, -51, -28, -34, -33, -26, -9, 6, 43,
    -- layer=1 filter=76 channel=58
    -7, -14, -38, -43, -52, -29, 32, -56, -5,
    -- layer=1 filter=76 channel=59
    -31, -62, -40, -20, -8, -18, -10, -6, -27,
    -- layer=1 filter=76 channel=60
    -5, -33, -14, -14, -42, -56, -19, -52, -27,
    -- layer=1 filter=76 channel=61
    -36, -16, -5, -32, -21, 2, -21, -7, 17,
    -- layer=1 filter=76 channel=62
    -16, 29, -7, -38, 77, -7, -3, 139, 30,
    -- layer=1 filter=76 channel=63
    -38, -58, -61, -58, 50, 62, 20, 55, 27,
    -- layer=1 filter=77 channel=0
    -11, -1, -14, -11, -6, -7, 0, 3, 12,
    -- layer=1 filter=77 channel=1
    3, -3, -9, -13, 0, -6, -2, 0, 1,
    -- layer=1 filter=77 channel=2
    -12, -6, -3, 10, 9, -4, -14, 2, 6,
    -- layer=1 filter=77 channel=3
    -3, -5, -12, -2, 12, -13, 12, 2, -15,
    -- layer=1 filter=77 channel=4
    10, -14, 0, 7, 3, -7, -1, 4, 0,
    -- layer=1 filter=77 channel=5
    7, 8, -19, -7, -4, -9, 5, 2, -7,
    -- layer=1 filter=77 channel=6
    -6, -6, 10, 10, 5, -4, -11, 9, 0,
    -- layer=1 filter=77 channel=7
    9, -5, 7, 10, -13, -11, -14, 0, -17,
    -- layer=1 filter=77 channel=8
    -9, 9, 5, -9, -12, 13, -5, -8, 8,
    -- layer=1 filter=77 channel=9
    -1, -5, -1, -9, 4, 0, -13, 9, 11,
    -- layer=1 filter=77 channel=10
    -12, 1, -16, 13, -10, -4, 9, 6, -2,
    -- layer=1 filter=77 channel=11
    -15, 1, 7, -4, 0, 11, -5, -13, 2,
    -- layer=1 filter=77 channel=12
    -7, -3, -10, -14, -18, -12, -5, -4, -4,
    -- layer=1 filter=77 channel=13
    0, -3, 11, -2, 4, -3, 9, -13, 5,
    -- layer=1 filter=77 channel=14
    6, -10, -7, -3, 1, 6, -3, -16, -13,
    -- layer=1 filter=77 channel=15
    -3, 4, -11, 2, -2, 9, -9, -4, -7,
    -- layer=1 filter=77 channel=16
    6, 3, -12, -2, -3, 6, -15, 0, -16,
    -- layer=1 filter=77 channel=17
    8, 12, 7, 0, -8, -16, -11, 3, 11,
    -- layer=1 filter=77 channel=18
    -9, 2, 1, -9, 1, 11, -6, 10, 10,
    -- layer=1 filter=77 channel=19
    5, 7, 9, 10, -1, -4, -11, -16, -15,
    -- layer=1 filter=77 channel=20
    6, -14, -14, -5, -13, 0, 5, -4, 3,
    -- layer=1 filter=77 channel=21
    -15, -5, -14, 6, 5, -6, -14, -3, 12,
    -- layer=1 filter=77 channel=22
    -10, -7, 6, 10, -8, 0, 3, -9, -2,
    -- layer=1 filter=77 channel=23
    2, 8, 0, 2, -14, -12, -6, -11, 1,
    -- layer=1 filter=77 channel=24
    -10, -13, -14, -1, -11, -1, 11, 2, -6,
    -- layer=1 filter=77 channel=25
    -13, -1, 11, -1, 2, -5, -13, -5, -9,
    -- layer=1 filter=77 channel=26
    -14, -13, 3, -10, -14, -7, -9, -7, 1,
    -- layer=1 filter=77 channel=27
    4, 10, -16, -4, 12, -3, 0, -13, -15,
    -- layer=1 filter=77 channel=28
    0, -15, 8, -2, -7, 13, 5, 7, 6,
    -- layer=1 filter=77 channel=29
    7, 0, -5, -9, -7, -14, 0, 9, -10,
    -- layer=1 filter=77 channel=30
    7, 7, -8, 0, -6, 2, -1, 14, 4,
    -- layer=1 filter=77 channel=31
    -14, -2, -4, -16, 3, 0, -3, 6, 12,
    -- layer=1 filter=77 channel=32
    -11, -8, 0, -10, 6, 0, 2, -8, -8,
    -- layer=1 filter=77 channel=33
    -13, 8, -13, -13, 8, 9, 13, -1, -4,
    -- layer=1 filter=77 channel=34
    12, -1, -4, 4, -6, 0, 8, -12, -11,
    -- layer=1 filter=77 channel=35
    -3, -14, 9, -6, 8, 1, -7, -12, -4,
    -- layer=1 filter=77 channel=36
    0, -11, 13, 3, -13, 3, 12, 9, 4,
    -- layer=1 filter=77 channel=37
    -14, -15, -1, -14, 0, 4, -12, 5, 8,
    -- layer=1 filter=77 channel=38
    8, 0, -16, 7, -1, 11, -3, 6, -12,
    -- layer=1 filter=77 channel=39
    0, -9, 0, 13, 6, 6, 9, -6, 4,
    -- layer=1 filter=77 channel=40
    -7, 7, 12, 3, 6, 10, -6, -9, -10,
    -- layer=1 filter=77 channel=41
    -6, -15, 8, 0, 6, -16, -1, -9, -8,
    -- layer=1 filter=77 channel=42
    10, 2, -4, -3, -11, 3, 10, -3, 2,
    -- layer=1 filter=77 channel=43
    -15, -18, -3, -2, -8, -8, 9, -5, -5,
    -- layer=1 filter=77 channel=44
    0, -10, -5, 3, 1, -4, 4, -5, -1,
    -- layer=1 filter=77 channel=45
    8, 1, -14, -2, 6, 1, -15, 9, 10,
    -- layer=1 filter=77 channel=46
    -7, 3, -14, 0, 3, 2, 0, -17, 10,
    -- layer=1 filter=77 channel=47
    -4, -4, -12, 2, -8, -11, -12, -13, -9,
    -- layer=1 filter=77 channel=48
    -9, 3, -5, -2, -7, -2, -1, -16, -1,
    -- layer=1 filter=77 channel=49
    -4, -8, 12, 2, 12, 6, 4, -9, -4,
    -- layer=1 filter=77 channel=50
    -3, 6, -10, 6, -11, 10, -7, 2, -9,
    -- layer=1 filter=77 channel=51
    9, 3, -2, -17, -14, 12, -11, -9, -9,
    -- layer=1 filter=77 channel=52
    -4, 0, 2, -2, -8, 7, 3, 0, 0,
    -- layer=1 filter=77 channel=53
    4, -17, 0, -7, -6, -6, -12, -1, 7,
    -- layer=1 filter=77 channel=54
    4, -1, -9, 2, -12, 10, -8, 7, -4,
    -- layer=1 filter=77 channel=55
    10, 0, 3, -11, -14, 10, 0, 11, -3,
    -- layer=1 filter=77 channel=56
    5, -12, 10, 3, 9, -9, -16, 5, 7,
    -- layer=1 filter=77 channel=57
    8, -1, -12, 2, 0, 6, -4, -12, 8,
    -- layer=1 filter=77 channel=58
    -11, -14, 4, -9, -13, 12, -17, -7, -9,
    -- layer=1 filter=77 channel=59
    -7, 10, -8, -7, -4, -12, 11, -12, 0,
    -- layer=1 filter=77 channel=60
    8, -4, -14, 7, -8, -1, -6, 2, -15,
    -- layer=1 filter=77 channel=61
    0, -6, 13, 7, 5, 12, -6, 5, 2,
    -- layer=1 filter=77 channel=62
    -14, 2, -13, -2, 0, -12, -4, -13, -11,
    -- layer=1 filter=77 channel=63
    -2, 5, 6, -2, -11, 7, -3, 6, -14,
    -- layer=1 filter=78 channel=0
    5, 1, 4, 2, -13, 16, 3, 17, -6,
    -- layer=1 filter=78 channel=1
    0, -5, 8, -5, 16, -13, 6, 7, 26,
    -- layer=1 filter=78 channel=2
    15, 10, 6, 23, 11, 20, 7, 25, -11,
    -- layer=1 filter=78 channel=3
    -7, -11, -13, -2, -13, 10, -5, -1, 3,
    -- layer=1 filter=78 channel=4
    18, -11, 18, 0, 2, 23, -18, 11, 8,
    -- layer=1 filter=78 channel=5
    -14, -26, -12, 26, -15, -15, -3, 14, -3,
    -- layer=1 filter=78 channel=6
    0, 6, 11, -8, -11, -13, -4, -10, 1,
    -- layer=1 filter=78 channel=7
    9, -14, 2, -5, -4, 10, -10, 5, 0,
    -- layer=1 filter=78 channel=8
    -3, 0, -14, -5, -9, -21, 0, 6, 2,
    -- layer=1 filter=78 channel=9
    7, -8, -8, 15, 22, -6, 0, -11, -16,
    -- layer=1 filter=78 channel=10
    -54, -46, -18, -31, -35, -28, -32, -17, -39,
    -- layer=1 filter=78 channel=11
    4, -3, -20, 8, -11, 10, -16, -11, 9,
    -- layer=1 filter=78 channel=12
    44, 36, 4, 2, 22, 11, -9, 31, -12,
    -- layer=1 filter=78 channel=13
    -13, 1, 0, 7, -7, 5, -18, 16, -16,
    -- layer=1 filter=78 channel=14
    7, -10, 6, 8, 13, 11, 8, -11, -5,
    -- layer=1 filter=78 channel=15
    -19, -32, -20, -26, -4, -29, -33, -15, -42,
    -- layer=1 filter=78 channel=16
    -23, 0, -14, -21, -19, -25, 36, -17, 0,
    -- layer=1 filter=78 channel=17
    -24, 4, -33, -15, -22, 5, -14, -37, 0,
    -- layer=1 filter=78 channel=18
    0, 13, 6, -10, 10, -10, -12, 2, 1,
    -- layer=1 filter=78 channel=19
    0, -2, 1, -3, -8, -9, 12, 16, 14,
    -- layer=1 filter=78 channel=20
    5, 24, -1, -1, 15, 19, 8, -5, 15,
    -- layer=1 filter=78 channel=21
    9, -23, 2, -17, -11, -20, -8, -1, -17,
    -- layer=1 filter=78 channel=22
    -2, -17, -28, 9, -31, -20, 15, 12, 15,
    -- layer=1 filter=78 channel=23
    0, -3, 4, -22, -63, -4, -38, -43, -32,
    -- layer=1 filter=78 channel=24
    -45, 17, -10, -16, 0, -37, 7, -10, -8,
    -- layer=1 filter=78 channel=25
    1, 4, -31, -42, 20, -18, 0, 5, 17,
    -- layer=1 filter=78 channel=26
    14, 2, -8, 7, -3, -13, 21, 4, -3,
    -- layer=1 filter=78 channel=27
    52, 35, 32, 38, 2, 39, 16, 58, 21,
    -- layer=1 filter=78 channel=28
    26, -3, 21, 3, 8, -4, 13, 27, -9,
    -- layer=1 filter=78 channel=29
    15, -2, -27, -26, 15, -39, -3, 5, -7,
    -- layer=1 filter=78 channel=30
    -2, 3, 12, 13, 7, -1, -4, 12, -4,
    -- layer=1 filter=78 channel=31
    -18, -7, -29, -37, -4, -31, -30, 0, -30,
    -- layer=1 filter=78 channel=32
    18, 34, -15, -11, 0, 18, 8, 28, 2,
    -- layer=1 filter=78 channel=33
    -7, 0, 0, 1, -4, -1, 0, -4, -12,
    -- layer=1 filter=78 channel=34
    -16, -4, 11, 0, 6, -4, -4, -12, 0,
    -- layer=1 filter=78 channel=35
    -26, -18, -23, -12, 12, -11, -14, 6, 18,
    -- layer=1 filter=78 channel=36
    -30, -28, -8, -12, -22, -13, -24, -10, -8,
    -- layer=1 filter=78 channel=37
    -20, 1, 6, -4, 4, -6, -12, -8, -7,
    -- layer=1 filter=78 channel=38
    -33, -24, -8, -34, -9, -29, -31, -17, -1,
    -- layer=1 filter=78 channel=39
    -1, 9, 9, 11, -6, 6, 4, 5, 9,
    -- layer=1 filter=78 channel=40
    13, -13, 12, 8, 13, 9, -10, 15, 14,
    -- layer=1 filter=78 channel=41
    8, -28, -19, 26, -10, -18, -17, 0, 4,
    -- layer=1 filter=78 channel=42
    1, 10, 0, 12, -6, 20, 7, 12, 7,
    -- layer=1 filter=78 channel=43
    8, 16, -47, -7, 28, -48, 12, 3, 29,
    -- layer=1 filter=78 channel=44
    20, 15, -6, 23, 17, 0, 22, 22, 9,
    -- layer=1 filter=78 channel=45
    8, 32, -2, -6, 39, -27, 28, 15, 39,
    -- layer=1 filter=78 channel=46
    4, -7, -18, 6, 6, -7, 2, -8, -11,
    -- layer=1 filter=78 channel=47
    6, -1, 3, 2, 7, -6, -2, 6, 6,
    -- layer=1 filter=78 channel=48
    1, -25, -31, 12, -2, -24, 3, 18, 25,
    -- layer=1 filter=78 channel=49
    3, -1, -16, 8, -10, -13, -5, 10, -25,
    -- layer=1 filter=78 channel=50
    -29, -8, 7, -24, -11, -14, -20, -6, -25,
    -- layer=1 filter=78 channel=51
    14, 1, 3, 0, -8, -12, 5, 15, 25,
    -- layer=1 filter=78 channel=52
    -102, -67, -82, -60, -82, -38, -40, -51, -39,
    -- layer=1 filter=78 channel=53
    -12, 3, -18, 14, 1, -8, 45, 36, 19,
    -- layer=1 filter=78 channel=54
    7, 6, -8, 7, -7, 4, -7, 4, 17,
    -- layer=1 filter=78 channel=55
    -18, -39, -24, -41, -17, -22, -45, -45, -20,
    -- layer=1 filter=78 channel=56
    -10, -13, -28, 2, -13, -24, 10, 1, 7,
    -- layer=1 filter=78 channel=57
    -15, -5, 9, 0, 15, 18, 19, 18, 8,
    -- layer=1 filter=78 channel=58
    0, 0, -20, -13, -12, -3, 18, -11, -6,
    -- layer=1 filter=78 channel=59
    -20, -29, -10, -29, -28, -42, -36, -39, 0,
    -- layer=1 filter=78 channel=60
    -37, -17, -11, -16, -32, -22, -14, -24, -10,
    -- layer=1 filter=78 channel=61
    0, -6, 1, -5, -7, 3, 14, -4, 10,
    -- layer=1 filter=78 channel=62
    7, 55, 17, -20, 45, 11, -10, 32, -7,
    -- layer=1 filter=78 channel=63
    -10, -12, 6, -25, -4, -9, 23, 2, -29,
    -- layer=1 filter=79 channel=0
    6, 2, -11, 0, 10, -15, 10, -12, -4,
    -- layer=1 filter=79 channel=1
    -7, -11, 9, -15, 11, -2, -15, -12, 11,
    -- layer=1 filter=79 channel=2
    -16, -15, -7, 6, 5, -12, -2, -9, 12,
    -- layer=1 filter=79 channel=3
    -3, -8, -7, -14, 2, -2, 4, -14, -15,
    -- layer=1 filter=79 channel=4
    9, -6, -12, -6, 5, 9, 0, 13, 5,
    -- layer=1 filter=79 channel=5
    -5, 7, 4, -12, -6, 5, 5, -6, 8,
    -- layer=1 filter=79 channel=6
    12, -13, -16, -15, -7, -8, -12, -6, 13,
    -- layer=1 filter=79 channel=7
    -15, 0, 5, -13, -12, 1, -7, 6, -9,
    -- layer=1 filter=79 channel=8
    -12, -3, 2, -5, -13, -6, 9, -15, 1,
    -- layer=1 filter=79 channel=9
    12, 9, 3, -11, 12, 2, -13, -2, 4,
    -- layer=1 filter=79 channel=10
    -10, -4, -11, -1, -1, -4, -10, 2, 14,
    -- layer=1 filter=79 channel=11
    6, -13, 1, 0, -14, 10, 4, -6, -8,
    -- layer=1 filter=79 channel=12
    7, 2, -8, 0, 11, 2, -4, -3, -8,
    -- layer=1 filter=79 channel=13
    -8, 1, 13, -5, 1, -9, 10, 7, -12,
    -- layer=1 filter=79 channel=14
    11, -11, -9, 3, -2, -15, -9, 8, -12,
    -- layer=1 filter=79 channel=15
    10, -13, -9, 12, -12, -15, 12, 6, -2,
    -- layer=1 filter=79 channel=16
    7, -7, 2, -4, 2, -15, -7, 0, 7,
    -- layer=1 filter=79 channel=17
    0, 11, -2, 5, -13, -12, -8, 8, -2,
    -- layer=1 filter=79 channel=18
    -12, 1, 7, -14, -15, -2, -14, -10, 7,
    -- layer=1 filter=79 channel=19
    11, 0, 12, 12, -9, 0, -4, -7, 7,
    -- layer=1 filter=79 channel=20
    -10, -7, -3, 12, 7, 2, 0, 9, 8,
    -- layer=1 filter=79 channel=21
    5, 3, -12, -12, -1, 11, 15, 12, 6,
    -- layer=1 filter=79 channel=22
    -7, -1, 15, 10, 0, 2, 0, -4, -10,
    -- layer=1 filter=79 channel=23
    -4, -12, 4, -13, 10, -13, 13, 1, -8,
    -- layer=1 filter=79 channel=24
    0, 7, -4, 9, -7, -15, -4, -9, 1,
    -- layer=1 filter=79 channel=25
    -15, -14, -10, 6, -8, 10, -9, -13, -11,
    -- layer=1 filter=79 channel=26
    10, 5, 6, -14, 10, -13, -5, -4, -6,
    -- layer=1 filter=79 channel=27
    -1, -16, -3, 12, -7, -6, -15, -14, 12,
    -- layer=1 filter=79 channel=28
    0, 4, 8, -9, -8, 6, 8, -15, 10,
    -- layer=1 filter=79 channel=29
    -11, 10, 3, -4, -15, -4, 8, -10, -4,
    -- layer=1 filter=79 channel=30
    0, -1, -1, 10, -12, 9, 10, 15, -15,
    -- layer=1 filter=79 channel=31
    11, 6, 3, -15, -3, -11, 0, -15, 8,
    -- layer=1 filter=79 channel=32
    3, 1, 12, 7, 3, -3, 14, 0, -1,
    -- layer=1 filter=79 channel=33
    2, -9, 10, -6, -10, 0, 5, 13, 7,
    -- layer=1 filter=79 channel=34
    11, 4, 3, 12, -3, 7, -6, -11, -13,
    -- layer=1 filter=79 channel=35
    -11, 7, -10, 11, 12, 0, -7, 4, -14,
    -- layer=1 filter=79 channel=36
    4, 15, -13, -7, -11, -3, 1, 0, 3,
    -- layer=1 filter=79 channel=37
    8, -16, -1, -14, -12, 0, 10, 1, -2,
    -- layer=1 filter=79 channel=38
    -15, 1, -11, -13, -14, -1, -5, 0, 8,
    -- layer=1 filter=79 channel=39
    -1, 11, -12, -1, -8, 7, -3, -15, 0,
    -- layer=1 filter=79 channel=40
    8, 3, 9, 2, 0, -14, 1, -13, 12,
    -- layer=1 filter=79 channel=41
    -8, 12, -6, 1, -1, -12, -12, 2, 2,
    -- layer=1 filter=79 channel=42
    1, 5, 10, 1, 11, -2, 3, -13, 1,
    -- layer=1 filter=79 channel=43
    6, -3, -7, 3, 4, -7, -4, -13, 0,
    -- layer=1 filter=79 channel=44
    -4, 2, 9, -2, -14, -10, 7, 2, -9,
    -- layer=1 filter=79 channel=45
    -4, 7, 2, 1, -15, -5, -11, 8, 9,
    -- layer=1 filter=79 channel=46
    -3, -3, -10, 6, 4, -1, 7, 3, -12,
    -- layer=1 filter=79 channel=47
    10, 0, -12, -7, 12, -8, -11, -5, -11,
    -- layer=1 filter=79 channel=48
    -3, 2, 0, 0, 9, -12, 12, 5, -5,
    -- layer=1 filter=79 channel=49
    13, -13, -13, 2, 6, -4, -11, -3, 2,
    -- layer=1 filter=79 channel=50
    -8, 4, -9, -16, -16, 12, 1, -2, -1,
    -- layer=1 filter=79 channel=51
    7, 8, -1, -11, -3, 0, 9, -12, -6,
    -- layer=1 filter=79 channel=52
    -2, -7, 9, 6, 14, -9, -12, 9, -15,
    -- layer=1 filter=79 channel=53
    2, -13, -10, -12, -12, -8, -14, -3, 0,
    -- layer=1 filter=79 channel=54
    -8, 11, -12, 0, -9, 12, 6, -3, -8,
    -- layer=1 filter=79 channel=55
    -3, -10, -7, 12, 9, -1, 2, -12, 1,
    -- layer=1 filter=79 channel=56
    -13, -12, 2, 3, -5, -7, -12, 9, -3,
    -- layer=1 filter=79 channel=57
    2, 0, 9, 1, 12, -9, -4, 10, 2,
    -- layer=1 filter=79 channel=58
    6, 2, 11, 9, 4, 2, -2, -5, -3,
    -- layer=1 filter=79 channel=59
    -10, -4, -14, -13, -2, -10, 8, -12, -16,
    -- layer=1 filter=79 channel=60
    -11, -7, 9, 10, 13, -10, -13, -11, -7,
    -- layer=1 filter=79 channel=61
    -12, -1, -7, -12, -12, 1, 7, -8, 4,
    -- layer=1 filter=79 channel=62
    -6, -9, -7, -13, 6, -1, -11, -13, -5,
    -- layer=1 filter=79 channel=63
    1, 0, -5, -1, 1, 2, -10, 9, -12,
    -- layer=1 filter=80 channel=0
    -9, 1, 24, -8, -42, 20, -1, -7, -9,
    -- layer=1 filter=80 channel=1
    0, -12, 7, -16, -7, -14, -11, -10, -6,
    -- layer=1 filter=80 channel=2
    21, 0, 11, 1, -2, 27, 20, 21, 28,
    -- layer=1 filter=80 channel=3
    -58, -72, -40, -116, -94, -58, -55, -63, -49,
    -- layer=1 filter=80 channel=4
    -13, 14, 21, -10, -14, 7, 20, 13, 35,
    -- layer=1 filter=80 channel=5
    -36, -54, -26, -35, -8, -9, -10, -9, -2,
    -- layer=1 filter=80 channel=6
    -13, -19, -8, 7, 4, -12, 17, -5, 7,
    -- layer=1 filter=80 channel=7
    -15, 7, -2, -19, -14, -1, 4, 0, 17,
    -- layer=1 filter=80 channel=8
    0, -9, -7, 2, 11, -11, 5, 18, 12,
    -- layer=1 filter=80 channel=9
    -23, -19, -23, -41, -33, -2, 2, -18, 10,
    -- layer=1 filter=80 channel=10
    43, 26, -3, 22, 10, 11, 9, -9, 21,
    -- layer=1 filter=80 channel=11
    4, 10, 8, 0, 9, 26, 11, 19, 35,
    -- layer=1 filter=80 channel=12
    -37, -24, 17, -46, -51, 2, -21, -30, 14,
    -- layer=1 filter=80 channel=13
    15, -14, -2, -2, -10, -6, 5, -6, 9,
    -- layer=1 filter=80 channel=14
    -19, -19, -11, -10, -20, -9, -22, -13, -17,
    -- layer=1 filter=80 channel=15
    14, -4, 11, -3, 11, 3, 17, 24, 8,
    -- layer=1 filter=80 channel=16
    -1, -80, -40, -73, -68, -22, -77, -68, -49,
    -- layer=1 filter=80 channel=17
    31, 0, 48, -43, -40, -7, 29, -15, 13,
    -- layer=1 filter=80 channel=18
    11, -4, 2, 4, 0, 8, 9, 4, 4,
    -- layer=1 filter=80 channel=19
    -12, 1, -18, 0, 18, -11, -1, 28, 19,
    -- layer=1 filter=80 channel=20
    -33, -9, 4, -36, -39, -5, -2, 0, 6,
    -- layer=1 filter=80 channel=21
    35, 48, 56, 36, 1, 31, 14, 25, 23,
    -- layer=1 filter=80 channel=22
    -11, -80, -59, -38, -17, -9, -2, 10, -15,
    -- layer=1 filter=80 channel=23
    16, -22, 4, 17, -60, 61, -21, -47, -36,
    -- layer=1 filter=80 channel=24
    0, -4, -22, -21, -7, 13, 9, -1, 33,
    -- layer=1 filter=80 channel=25
    -24, -36, -46, 5, -46, 13, -23, -38, -27,
    -- layer=1 filter=80 channel=26
    -17, -27, -32, -9, -27, -26, 4, -9, 3,
    -- layer=1 filter=80 channel=27
    -80, -55, -27, -27, -82, 11, -29, -44, 20,
    -- layer=1 filter=80 channel=28
    -25, -37, -17, -30, -40, -11, -4, 11, -3,
    -- layer=1 filter=80 channel=29
    -59, -68, -41, -21, -32, -37, -42, -46, -17,
    -- layer=1 filter=80 channel=30
    -2, -6, -11, -3, 10, 12, -13, 5, 6,
    -- layer=1 filter=80 channel=31
    11, 11, -11, 19, 27, 11, 29, 20, 2,
    -- layer=1 filter=80 channel=32
    -67, -61, 21, -7, -71, 53, -6, -26, 42,
    -- layer=1 filter=80 channel=33
    9, 1, 8, 10, 2, 0, 6, -10, 2,
    -- layer=1 filter=80 channel=34
    -5, -9, 10, -6, -11, 7, 0, 21, 12,
    -- layer=1 filter=80 channel=35
    -24, -22, -10, 10, 6, 7, 13, 15, 11,
    -- layer=1 filter=80 channel=36
    -27, -26, -41, -58, -30, -20, -1, -12, -16,
    -- layer=1 filter=80 channel=37
    12, 0, 10, -2, -18, 6, -3, 7, 21,
    -- layer=1 filter=80 channel=38
    -11, 4, -1, -15, 7, 0, 15, -2, 1,
    -- layer=1 filter=80 channel=39
    -13, 0, 2, -14, 6, -2, 4, -14, -3,
    -- layer=1 filter=80 channel=40
    6, -9, -9, 17, -11, -21, 0, 7, 6,
    -- layer=1 filter=80 channel=41
    -27, -26, -55, -20, -16, -32, 5, -21, -9,
    -- layer=1 filter=80 channel=42
    -19, 6, 10, -10, -4, -12, -13, -11, -1,
    -- layer=1 filter=80 channel=43
    -43, -64, -62, -5, -6, -18, 1, -33, -12,
    -- layer=1 filter=80 channel=44
    -6, -8, 8, -7, -18, 0, -6, 16, 12,
    -- layer=1 filter=80 channel=45
    -78, -71, -71, -33, -42, -59, -32, -68, -34,
    -- layer=1 filter=80 channel=46
    -37, -74, -31, -57, -66, -35, -54, -54, -34,
    -- layer=1 filter=80 channel=47
    1, -7, -17, -15, -10, -7, 12, 0, -16,
    -- layer=1 filter=80 channel=48
    -56, -73, -54, -21, -12, 2, -1, 5, -15,
    -- layer=1 filter=80 channel=49
    4, 5, 16, 12, 11, 46, 20, 43, 44,
    -- layer=1 filter=80 channel=50
    -12, -1, 17, -7, 18, 14, -3, 3, 5,
    -- layer=1 filter=80 channel=51
    4, 17, -2, 6, 14, -3, 10, 16, 22,
    -- layer=1 filter=80 channel=52
    40, 6, 4, 12, 3, 24, -4, 14, 38,
    -- layer=1 filter=80 channel=53
    -25, -47, -3, -73, -84, -68, -31, -50, -42,
    -- layer=1 filter=80 channel=54
    -16, -3, -1, 3, 4, 4, -3, 24, -1,
    -- layer=1 filter=80 channel=55
    39, 14, 41, -24, -62, -1, -14, -31, -27,
    -- layer=1 filter=80 channel=56
    -17, -36, -29, -28, -15, -17, -9, -41, -12,
    -- layer=1 filter=80 channel=57
    4, 16, 0, 19, 20, 25, 15, 25, 28,
    -- layer=1 filter=80 channel=58
    0, -20, -7, -36, -12, -3, -4, -8, -35,
    -- layer=1 filter=80 channel=59
    -8, 0, -4, -1, 6, -4, 16, 17, 16,
    -- layer=1 filter=80 channel=60
    6, -2, -2, -10, 0, 4, 22, 25, 20,
    -- layer=1 filter=80 channel=61
    -7, -24, -21, -8, -22, -26, -14, -23, -10,
    -- layer=1 filter=80 channel=62
    -73, -12, 15, -86, -41, -2, -23, -15, -6,
    -- layer=1 filter=80 channel=63
    1, -86, -3, -53, -61, -42, -63, -86, -62,
    -- layer=1 filter=81 channel=0
    -7, 12, -20, 1, 3, -20, 5, -3, -5,
    -- layer=1 filter=81 channel=1
    0, 7, -12, 10, 14, -6, -2, 5, -10,
    -- layer=1 filter=81 channel=2
    -12, -11, -14, -17, -15, 3, 4, -3, -1,
    -- layer=1 filter=81 channel=3
    -8, -12, 8, -22, 4, -10, -2, -2, -18,
    -- layer=1 filter=81 channel=4
    5, -2, -4, 0, -18, -18, -13, -5, -7,
    -- layer=1 filter=81 channel=5
    0, 11, -18, 21, 0, -2, -11, -14, -2,
    -- layer=1 filter=81 channel=6
    -12, -7, -13, -9, -19, 0, -6, -3, 4,
    -- layer=1 filter=81 channel=7
    -15, -8, -10, -15, 8, -10, -9, -17, 4,
    -- layer=1 filter=81 channel=8
    -18, -19, 5, -15, -3, -8, 7, 5, -6,
    -- layer=1 filter=81 channel=9
    -8, -18, -6, -12, -7, -22, -11, -6, 0,
    -- layer=1 filter=81 channel=10
    -4, -8, -9, -10, -4, -23, -9, -19, -18,
    -- layer=1 filter=81 channel=11
    -18, -11, -4, -3, -9, 1, 7, -7, -9,
    -- layer=1 filter=81 channel=12
    14, -26, -14, 3, 0, -6, -8, -12, -22,
    -- layer=1 filter=81 channel=13
    0, -4, -1, 0, 4, 4, 5, 0, -9,
    -- layer=1 filter=81 channel=14
    -3, 9, -14, 8, 9, -2, 9, -9, 1,
    -- layer=1 filter=81 channel=15
    -4, -14, 4, -16, 0, 6, -1, 5, -2,
    -- layer=1 filter=81 channel=16
    -15, -14, -14, -17, 7, -19, 7, 4, -15,
    -- layer=1 filter=81 channel=17
    11, -13, 10, 2, -11, -7, -3, -4, 9,
    -- layer=1 filter=81 channel=18
    9, 5, 10, -8, 0, 10, 0, -11, 3,
    -- layer=1 filter=81 channel=19
    -1, 6, -4, 3, -18, -17, -7, 3, 7,
    -- layer=1 filter=81 channel=20
    12, 7, -20, 3, -18, -3, -13, -13, -5,
    -- layer=1 filter=81 channel=21
    4, 10, 0, 13, -3, -15, 0, -9, -18,
    -- layer=1 filter=81 channel=22
    21, 14, 18, -17, -4, 1, -23, -2, 1,
    -- layer=1 filter=81 channel=23
    17, -5, 4, -6, 12, -11, 7, 4, -1,
    -- layer=1 filter=81 channel=24
    0, -3, -5, 5, -12, -7, 0, -5, 0,
    -- layer=1 filter=81 channel=25
    2, -4, -14, -7, 0, -14, -17, -2, -15,
    -- layer=1 filter=81 channel=26
    -3, -4, -9, -4, 8, -7, 9, 1, -8,
    -- layer=1 filter=81 channel=27
    -8, -16, -21, 0, -5, -13, -4, 11, -9,
    -- layer=1 filter=81 channel=28
    0, -1, -8, -10, 10, 6, -19, -4, -8,
    -- layer=1 filter=81 channel=29
    -11, -12, -19, -13, -11, 8, -13, 4, -10,
    -- layer=1 filter=81 channel=30
    -3, 4, -3, -6, 0, 13, -12, 9, -12,
    -- layer=1 filter=81 channel=31
    -15, -12, -2, 0, 7, -13, 7, -3, -7,
    -- layer=1 filter=81 channel=32
    2, 9, -9, 5, 9, 11, 9, 3, -7,
    -- layer=1 filter=81 channel=33
    12, 0, 5, -6, -11, 11, 14, 8, -2,
    -- layer=1 filter=81 channel=34
    -22, 4, -8, -2, -19, 1, 8, 0, 7,
    -- layer=1 filter=81 channel=35
    5, -11, -4, -6, -6, -1, -16, -11, -17,
    -- layer=1 filter=81 channel=36
    2, 6, -2, -8, -18, -7, -5, 3, 6,
    -- layer=1 filter=81 channel=37
    7, -18, 3, 5, -12, -11, -8, 0, -13,
    -- layer=1 filter=81 channel=38
    -17, -2, -2, -5, 0, -4, -11, -10, -7,
    -- layer=1 filter=81 channel=39
    10, -2, 12, -4, -7, -7, 8, -3, 6,
    -- layer=1 filter=81 channel=40
    -16, -1, -15, -2, -9, 1, -4, -11, -7,
    -- layer=1 filter=81 channel=41
    -15, 0, -19, 7, 10, 10, -23, -13, -4,
    -- layer=1 filter=81 channel=42
    1, -6, -20, 15, 7, -18, 8, 5, -13,
    -- layer=1 filter=81 channel=43
    -1, 0, -11, 1, 14, 11, -7, 1, 4,
    -- layer=1 filter=81 channel=44
    -14, -2, -1, -8, -10, -19, -14, 3, -16,
    -- layer=1 filter=81 channel=45
    1, -18, -15, -17, 0, -15, -12, 0, -4,
    -- layer=1 filter=81 channel=46
    5, -1, -10, -6, 9, -3, 10, 1, -11,
    -- layer=1 filter=81 channel=47
    -5, -7, 0, -19, -3, -22, 4, -20, -1,
    -- layer=1 filter=81 channel=48
    9, -15, 1, 7, -11, -2, 0, -4, -23,
    -- layer=1 filter=81 channel=49
    0, -2, -12, -7, -2, 0, 0, -1, -3,
    -- layer=1 filter=81 channel=50
    -13, -14, 7, -19, -3, 7, -14, 7, -18,
    -- layer=1 filter=81 channel=51
    1, -18, 3, -17, -8, -16, -14, 4, -5,
    -- layer=1 filter=81 channel=52
    12, -5, -6, 4, -8, 8, 0, 16, 6,
    -- layer=1 filter=81 channel=53
    -1, 0, -1, 8, 4, 6, -13, -10, 1,
    -- layer=1 filter=81 channel=54
    -4, -11, 0, 6, 7, -16, -20, 5, 2,
    -- layer=1 filter=81 channel=55
    -7, 7, -6, 1, -17, 3, -7, 9, 9,
    -- layer=1 filter=81 channel=56
    0, -5, 13, -3, -7, 12, -2, -13, -4,
    -- layer=1 filter=81 channel=57
    5, 6, -5, -21, -2, -1, -16, -12, 2,
    -- layer=1 filter=81 channel=58
    -18, -17, 5, 2, 5, -12, -8, -16, -19,
    -- layer=1 filter=81 channel=59
    9, -7, 1, -9, -9, 0, -11, 4, -12,
    -- layer=1 filter=81 channel=60
    -8, 9, -8, -17, 1, -6, -19, 10, -18,
    -- layer=1 filter=81 channel=61
    13, 7, -3, -1, -13, 8, 13, -4, -14,
    -- layer=1 filter=81 channel=62
    0, 6, -14, -3, 4, 7, 2, 6, 11,
    -- layer=1 filter=81 channel=63
    -5, -20, 13, 1, -18, -10, -18, 4, 7,
    -- layer=1 filter=82 channel=0
    8, -11, -15, 11, 9, -12, -7, 10, -9,
    -- layer=1 filter=82 channel=1
    -14, -15, -15, 2, 1, 0, -12, -18, -4,
    -- layer=1 filter=82 channel=2
    7, -4, -6, -16, -13, 9, 9, -7, -11,
    -- layer=1 filter=82 channel=3
    -14, -8, -5, -14, 0, -2, 3, -15, -9,
    -- layer=1 filter=82 channel=4
    12, 0, 0, 7, -15, 0, -1, -5, 6,
    -- layer=1 filter=82 channel=5
    6, -6, 8, 13, 9, 0, -6, -11, -10,
    -- layer=1 filter=82 channel=6
    7, -3, -6, 9, -13, -12, -12, -9, -5,
    -- layer=1 filter=82 channel=7
    -8, -14, -9, -10, -4, 10, 2, -15, 12,
    -- layer=1 filter=82 channel=8
    8, -2, 11, -6, 3, -1, 5, -4, 0,
    -- layer=1 filter=82 channel=9
    -3, -4, 11, -1, 2, -5, -13, 3, -13,
    -- layer=1 filter=82 channel=10
    -8, -11, 14, 4, -13, -6, -3, 3, 5,
    -- layer=1 filter=82 channel=11
    -13, -1, 5, 5, 8, -17, 2, 5, -7,
    -- layer=1 filter=82 channel=12
    -15, -1, 11, -15, 1, 12, -4, 5, 5,
    -- layer=1 filter=82 channel=13
    0, -3, 0, -11, 4, -4, 11, -4, 1,
    -- layer=1 filter=82 channel=14
    -13, -8, 4, -15, -4, 0, -1, -17, -16,
    -- layer=1 filter=82 channel=15
    9, 3, -1, 0, 9, 2, 6, -9, 6,
    -- layer=1 filter=82 channel=16
    0, 1, 5, -14, 5, 1, -14, -16, 6,
    -- layer=1 filter=82 channel=17
    0, -6, -11, -3, -13, 0, -16, -8, 5,
    -- layer=1 filter=82 channel=18
    -3, 4, 1, 8, -11, -4, -1, -14, 11,
    -- layer=1 filter=82 channel=19
    -16, -13, -2, -8, -4, -9, 8, 8, 0,
    -- layer=1 filter=82 channel=20
    -5, 4, -15, 12, 3, 9, -4, 7, -15,
    -- layer=1 filter=82 channel=21
    -11, 6, 4, -5, -18, 8, -5, -9, -13,
    -- layer=1 filter=82 channel=22
    -16, 2, -13, -5, 0, 10, 8, -20, 4,
    -- layer=1 filter=82 channel=23
    7, -13, 5, 12, -11, 8, 2, -4, -2,
    -- layer=1 filter=82 channel=24
    -15, -8, -6, -12, -6, -14, -5, -10, 3,
    -- layer=1 filter=82 channel=25
    -17, 2, 13, -4, 11, 0, 5, -3, 2,
    -- layer=1 filter=82 channel=26
    13, -12, 3, 13, 1, -3, 6, 2, 10,
    -- layer=1 filter=82 channel=27
    -2, 6, -4, -6, -12, 2, 3, 4, 1,
    -- layer=1 filter=82 channel=28
    12, -10, -7, -2, -12, 2, -14, -10, 5,
    -- layer=1 filter=82 channel=29
    -15, -8, 2, -15, -7, -7, 9, -13, -15,
    -- layer=1 filter=82 channel=30
    -6, 10, 8, 1, 0, -1, 11, 12, 5,
    -- layer=1 filter=82 channel=31
    -3, -6, 1, 11, 10, 9, -4, 0, -1,
    -- layer=1 filter=82 channel=32
    6, 8, 0, -1, -6, 5, -19, 4, -12,
    -- layer=1 filter=82 channel=33
    -4, 3, -1, -1, 13, 8, 10, 6, -14,
    -- layer=1 filter=82 channel=34
    0, -7, 0, -9, -7, -16, -9, 11, -1,
    -- layer=1 filter=82 channel=35
    7, 5, -7, 9, -14, -9, -10, -5, 4,
    -- layer=1 filter=82 channel=36
    -3, -13, -15, 1, -3, -7, -9, 0, -13,
    -- layer=1 filter=82 channel=37
    4, 5, -2, -6, -9, 8, 2, 2, 5,
    -- layer=1 filter=82 channel=38
    2, -9, 2, -4, -4, 12, 5, 1, 0,
    -- layer=1 filter=82 channel=39
    -1, 0, -10, 3, 4, -8, 3, -1, 1,
    -- layer=1 filter=82 channel=40
    -10, -3, 0, -8, 5, -9, -15, -14, -4,
    -- layer=1 filter=82 channel=41
    -3, -13, 1, 10, -6, 6, 2, -13, 9,
    -- layer=1 filter=82 channel=42
    3, 12, 10, 11, 7, -3, -9, 0, -16,
    -- layer=1 filter=82 channel=43
    8, 4, -5, -5, -14, -5, 0, 9, -5,
    -- layer=1 filter=82 channel=44
    10, -16, -19, -4, -1, 5, 2, 6, -11,
    -- layer=1 filter=82 channel=45
    4, -11, -12, 3, 0, 10, -2, 10, 3,
    -- layer=1 filter=82 channel=46
    -10, 7, 1, 0, -5, 11, -12, -13, 8,
    -- layer=1 filter=82 channel=47
    5, -10, -6, 8, 7, -1, -9, -7, -8,
    -- layer=1 filter=82 channel=48
    8, -14, -15, -2, -9, 7, -16, -7, -10,
    -- layer=1 filter=82 channel=49
    -14, -8, 9, -10, -2, 1, -1, 2, -14,
    -- layer=1 filter=82 channel=50
    -14, -1, -13, -8, -14, -8, 4, 8, 5,
    -- layer=1 filter=82 channel=51
    0, -12, 1, 4, -14, -3, 12, -6, 7,
    -- layer=1 filter=82 channel=52
    6, -9, -7, -7, 13, 5, -10, -9, 7,
    -- layer=1 filter=82 channel=53
    -15, -7, 5, 5, 11, 5, -1, 1, -11,
    -- layer=1 filter=82 channel=54
    9, 0, -8, -5, 9, 7, -8, 9, -5,
    -- layer=1 filter=82 channel=55
    -3, -9, 6, -12, 6, -15, 8, 11, -9,
    -- layer=1 filter=82 channel=56
    -11, -3, -16, -8, -3, -17, -6, 10, -10,
    -- layer=1 filter=82 channel=57
    -12, -6, 4, -10, -12, -13, 13, -9, -4,
    -- layer=1 filter=82 channel=58
    -13, -1, -3, -3, 9, 6, 5, 0, -5,
    -- layer=1 filter=82 channel=59
    -12, 10, 7, 0, 9, 5, 0, -1, 11,
    -- layer=1 filter=82 channel=60
    -3, -5, -17, -5, -3, 9, 1, 11, 0,
    -- layer=1 filter=82 channel=61
    -8, 2, -15, -1, 9, 1, -10, 9, 3,
    -- layer=1 filter=82 channel=62
    -10, 10, -14, -14, -12, 3, -18, -8, 6,
    -- layer=1 filter=82 channel=63
    -17, 11, -14, 0, 8, -9, 7, -11, 6,
    -- layer=1 filter=83 channel=0
    -28, 49, 29, -9, 16, 21, -7, -7, 0,
    -- layer=1 filter=83 channel=1
    18, 10, 36, -15, -3, 30, -26, 0, 8,
    -- layer=1 filter=83 channel=2
    -12, 19, 0, -12, -23, -2, 8, -8, 3,
    -- layer=1 filter=83 channel=3
    -42, -23, -6, -25, 11, -5, -34, -2, -16,
    -- layer=1 filter=83 channel=4
    -10, 14, 12, 6, -9, -13, -15, -17, 11,
    -- layer=1 filter=83 channel=5
    28, 9, 12, 17, 42, 26, -21, -13, 21,
    -- layer=1 filter=83 channel=6
    -9, -6, 22, -10, -4, -4, -14, -30, 12,
    -- layer=1 filter=83 channel=7
    -21, -24, 4, 7, -28, 4, -22, 0, 2,
    -- layer=1 filter=83 channel=8
    19, -4, 14, 12, 14, 14, -8, 21, 19,
    -- layer=1 filter=83 channel=9
    -11, 0, -6, 39, -7, 3, 6, 29, -1,
    -- layer=1 filter=83 channel=10
    27, 54, 38, 2, 27, 32, 2, 4, -7,
    -- layer=1 filter=83 channel=11
    2, 11, -11, 0, 3, 3, -6, 20, 18,
    -- layer=1 filter=83 channel=12
    -5, 70, 56, -36, -1, 14, -16, -8, 3,
    -- layer=1 filter=83 channel=13
    -3, 45, 37, 1, 2, 44, -10, 6, 5,
    -- layer=1 filter=83 channel=14
    -31, -18, 6, -45, -6, 21, -51, -28, 3,
    -- layer=1 filter=83 channel=15
    19, 9, -6, 66, 15, -16, 52, 21, -3,
    -- layer=1 filter=83 channel=16
    -31, -21, -25, -46, 26, 5, -28, -22, 17,
    -- layer=1 filter=83 channel=17
    42, 44, 30, 12, 77, 49, 6, -16, -21,
    -- layer=1 filter=83 channel=18
    2, -10, 10, -10, 4, -2, 3, -6, -5,
    -- layer=1 filter=83 channel=19
    7, 0, -14, 12, -2, 14, -3, -3, -2,
    -- layer=1 filter=83 channel=20
    -6, 11, 19, -56, -5, 4, -28, -24, -21,
    -- layer=1 filter=83 channel=21
    32, 45, 22, 16, 28, 36, 25, 9, 12,
    -- layer=1 filter=83 channel=22
    24, 18, -32, 4, 29, 6, -12, 39, -18,
    -- layer=1 filter=83 channel=23
    11, 33, 23, 0, 13, 22, -18, -33, -67,
    -- layer=1 filter=83 channel=24
    -40, -13, 2, -11, 10, -24, 0, -15, 3,
    -- layer=1 filter=83 channel=25
    8, -1, 39, -17, -9, 52, -18, -8, -7,
    -- layer=1 filter=83 channel=26
    -24, -13, -15, 11, -18, -7, -2, -22, -2,
    -- layer=1 filter=83 channel=27
    -27, 24, 6, -30, 0, -7, -8, -35, 3,
    -- layer=1 filter=83 channel=28
    27, 35, 28, 22, 20, 52, -12, -28, 31,
    -- layer=1 filter=83 channel=29
    46, 45, 25, 5, 21, 60, -11, -7, -1,
    -- layer=1 filter=83 channel=30
    -1, 4, 17, 15, 0, 9, 5, -2, -9,
    -- layer=1 filter=83 channel=31
    11, -10, -12, 40, 11, 20, 33, 8, 14,
    -- layer=1 filter=83 channel=32
    -4, 61, 50, 5, 15, 26, 22, 5, 27,
    -- layer=1 filter=83 channel=33
    10, -10, 8, 1, 16, 2, 20, -4, 18,
    -- layer=1 filter=83 channel=34
    -14, -2, 3, 1, -20, -10, -11, -4, 7,
    -- layer=1 filter=83 channel=35
    5, -29, -1, 19, 8, -24, 28, 18, -18,
    -- layer=1 filter=83 channel=36
    -10, -17, 8, 7, 47, 14, 25, 6, 16,
    -- layer=1 filter=83 channel=37
    4, 2, 10, 16, 21, 29, 4, -6, 19,
    -- layer=1 filter=83 channel=38
    12, -17, -12, 45, 4, -33, 31, 22, -10,
    -- layer=1 filter=83 channel=39
    -7, -7, -13, 18, 24, 17, -21, 20, -10,
    -- layer=1 filter=83 channel=40
    -11, -28, -40, -38, -30, -8, -40, -55, -15,
    -- layer=1 filter=83 channel=41
    -8, -2, 12, 21, 9, 28, -29, -27, 23,
    -- layer=1 filter=83 channel=42
    -19, 0, 32, -37, -16, 0, -57, -40, -1,
    -- layer=1 filter=83 channel=43
    33, -1, 15, -20, -8, 10, -33, -12, -1,
    -- layer=1 filter=83 channel=44
    3, 15, -16, 35, 22, -19, 12, 11, -10,
    -- layer=1 filter=83 channel=45
    6, -26, 24, -46, -3, -4, -52, -39, -10,
    -- layer=1 filter=83 channel=46
    24, 25, 20, -12, -27, 24, -14, -27, -2,
    -- layer=1 filter=83 channel=47
    8, 3, -20, 0, -15, 10, -13, -5, -4,
    -- layer=1 filter=83 channel=48
    36, 14, -16, 1, 36, -2, -17, -1, 18,
    -- layer=1 filter=83 channel=49
    4, 10, 4, 2, 13, 0, 13, 17, 22,
    -- layer=1 filter=83 channel=50
    4, -7, -2, 17, 13, 7, 24, 18, 16,
    -- layer=1 filter=83 channel=51
    2, -24, -6, -6, -2, -3, -19, -9, 0,
    -- layer=1 filter=83 channel=52
    22, 44, 23, 39, 70, 49, 0, 31, 1,
    -- layer=1 filter=83 channel=53
    -30, -19, 30, -8, 7, 39, 3, -27, -8,
    -- layer=1 filter=83 channel=54
    -13, -16, 8, -7, 3, -7, -8, 5, -18,
    -- layer=1 filter=83 channel=55
    32, 60, 35, 44, 56, 69, -10, 6, 17,
    -- layer=1 filter=83 channel=56
    -2, -27, 20, -32, -10, 30, -41, -32, -28,
    -- layer=1 filter=83 channel=57
    -13, 7, -8, 17, -3, -3, 13, 0, -2,
    -- layer=1 filter=83 channel=58
    -21, -20, 0, 2, 3, 26, -10, -31, -3,
    -- layer=1 filter=83 channel=59
    -14, 4, -2, 18, 2, -1, 6, 31, -6,
    -- layer=1 filter=83 channel=60
    5, -15, 19, 38, 1, 0, 21, 27, -11,
    -- layer=1 filter=83 channel=61
    -32, -8, 21, -53, -24, 19, -45, -52, -21,
    -- layer=1 filter=83 channel=62
    -12, 17, -15, -68, 2, 0, -66, 30, -23,
    -- layer=1 filter=83 channel=63
    33, 23, 14, -9, 46, 26, 22, 24, 38,
    -- layer=1 filter=84 channel=0
    7, 14, 1, -5, 13, 0, 7, -7, 3,
    -- layer=1 filter=84 channel=1
    6, -9, 1, -14, -1, -3, -6, -3, -10,
    -- layer=1 filter=84 channel=2
    -4, 4, 9, -3, 1, -5, 4, 12, -13,
    -- layer=1 filter=84 channel=3
    -14, 10, 5, -5, -7, -15, 0, -3, 7,
    -- layer=1 filter=84 channel=4
    0, 11, 1, 9, -10, 6, -11, -8, 0,
    -- layer=1 filter=84 channel=5
    2, 0, 8, -10, -5, -11, 0, 2, -2,
    -- layer=1 filter=84 channel=6
    -5, 3, -1, 5, -5, -4, -14, 11, -15,
    -- layer=1 filter=84 channel=7
    5, -7, 0, -16, -15, -6, -7, 5, -17,
    -- layer=1 filter=84 channel=8
    3, -3, -5, -15, -2, 4, 3, 10, -6,
    -- layer=1 filter=84 channel=9
    -4, -1, -4, -15, 5, 9, -5, 6, 12,
    -- layer=1 filter=84 channel=10
    -13, 5, 12, -13, -1, 1, -4, -10, -12,
    -- layer=1 filter=84 channel=11
    -12, 5, 4, 6, 4, -6, -11, 3, 1,
    -- layer=1 filter=84 channel=12
    -9, 4, -3, 2, -12, 2, -8, -4, 5,
    -- layer=1 filter=84 channel=13
    2, -12, 8, 4, -6, -15, 4, -13, -3,
    -- layer=1 filter=84 channel=14
    9, 2, 5, -11, 12, -2, 2, 15, 3,
    -- layer=1 filter=84 channel=15
    -2, 7, -4, 9, 0, -16, 0, -10, 0,
    -- layer=1 filter=84 channel=16
    -1, -3, -7, -3, 0, 0, -11, 4, 1,
    -- layer=1 filter=84 channel=17
    -6, 6, 8, -5, 6, -4, 11, -3, 1,
    -- layer=1 filter=84 channel=18
    -2, -1, 6, 4, 8, -13, -1, -1, 7,
    -- layer=1 filter=84 channel=19
    1, 7, 0, 4, 12, -14, -8, 7, 2,
    -- layer=1 filter=84 channel=20
    -5, 2, -14, 11, 13, 8, 10, -11, -13,
    -- layer=1 filter=84 channel=21
    -5, -15, -4, -5, 2, 10, -1, -15, -5,
    -- layer=1 filter=84 channel=22
    -13, 11, -1, 8, -15, -4, 12, 0, -16,
    -- layer=1 filter=84 channel=23
    -4, -8, 9, -6, 10, 4, -4, -17, 1,
    -- layer=1 filter=84 channel=24
    -4, 0, 5, -16, -8, 0, -2, 5, 10,
    -- layer=1 filter=84 channel=25
    -6, -5, -10, -13, -10, 0, -11, -12, -17,
    -- layer=1 filter=84 channel=26
    0, -7, 1, 0, 5, 0, 12, 2, -4,
    -- layer=1 filter=84 channel=27
    -9, 2, -6, -9, -6, -5, -11, 4, 9,
    -- layer=1 filter=84 channel=28
    6, 7, 13, 5, 7, 7, 1, 7, -16,
    -- layer=1 filter=84 channel=29
    -18, 8, -14, 0, -2, -11, -14, 4, -16,
    -- layer=1 filter=84 channel=30
    9, 7, 9, -13, -10, -10, -12, 12, 9,
    -- layer=1 filter=84 channel=31
    11, -13, -10, 4, 0, 9, -5, 2, -3,
    -- layer=1 filter=84 channel=32
    1, -9, -10, 4, -11, -12, 6, 3, 2,
    -- layer=1 filter=84 channel=33
    -1, 10, 0, 10, -11, -4, 2, -6, 9,
    -- layer=1 filter=84 channel=34
    -4, 0, 5, 6, 2, 5, 4, 1, -13,
    -- layer=1 filter=84 channel=35
    -10, -15, -14, -10, 8, -1, -9, -12, 6,
    -- layer=1 filter=84 channel=36
    2, -10, -12, 9, 6, -13, -8, -8, 1,
    -- layer=1 filter=84 channel=37
    -12, -9, -4, -12, -5, 2, -14, -8, -5,
    -- layer=1 filter=84 channel=38
    -10, -8, -1, -7, -9, -1, 9, -12, 4,
    -- layer=1 filter=84 channel=39
    9, 5, -4, -3, 11, 11, 6, 8, -14,
    -- layer=1 filter=84 channel=40
    11, 1, -1, 7, -2, 6, 1, 9, -5,
    -- layer=1 filter=84 channel=41
    0, 0, -9, 5, -14, -7, -10, -10, 4,
    -- layer=1 filter=84 channel=42
    2, -10, -1, -11, -8, 12, 10, -7, 5,
    -- layer=1 filter=84 channel=43
    -1, -3, 7, 7, -5, 0, -4, -15, -10,
    -- layer=1 filter=84 channel=44
    -5, -1, 6, -11, 0, -12, 10, -1, -5,
    -- layer=1 filter=84 channel=45
    0, -14, 11, -7, -16, -5, -11, 1, -16,
    -- layer=1 filter=84 channel=46
    -13, 7, -11, 11, -9, 10, 13, -9, 9,
    -- layer=1 filter=84 channel=47
    6, 8, -11, -12, -7, 3, -5, -5, 8,
    -- layer=1 filter=84 channel=48
    12, -2, -3, -17, -15, 4, -9, -8, -15,
    -- layer=1 filter=84 channel=49
    -3, 3, 5, 7, 5, 3, -8, -9, -8,
    -- layer=1 filter=84 channel=50
    -1, -1, -16, -14, 0, -6, -4, -13, -14,
    -- layer=1 filter=84 channel=51
    5, 2, 1, -13, 7, 7, 0, -10, 4,
    -- layer=1 filter=84 channel=52
    6, 8, 8, -15, 0, 4, 0, 1, 12,
    -- layer=1 filter=84 channel=53
    -9, -2, -4, -13, -12, 10, -8, -12, 6,
    -- layer=1 filter=84 channel=54
    -4, -8, -14, -16, -4, -9, 1, 1, 6,
    -- layer=1 filter=84 channel=55
    -7, 3, -1, 13, 0, 3, 10, -8, -5,
    -- layer=1 filter=84 channel=56
    0, 14, -13, -12, 2, -11, -12, -11, -11,
    -- layer=1 filter=84 channel=57
    1, 11, 7, -11, 0, 0, -14, 0, -11,
    -- layer=1 filter=84 channel=58
    6, -1, -6, 8, -6, -9, 0, -8, -8,
    -- layer=1 filter=84 channel=59
    7, 8, 10, 11, -15, -6, -8, 9, 4,
    -- layer=1 filter=84 channel=60
    12, -1, 0, -6, 8, -12, -5, -10, -5,
    -- layer=1 filter=84 channel=61
    -3, 0, -13, -1, 1, -6, -3, -1, 7,
    -- layer=1 filter=84 channel=62
    -10, -9, -13, 1, -10, -11, 7, 0, -6,
    -- layer=1 filter=84 channel=63
    -11, -2, -3, 2, -13, 9, -5, 1, 11,
    -- layer=1 filter=85 channel=0
    9, -1, -18, 3, -16, -4, 1, -17, 0,
    -- layer=1 filter=85 channel=1
    -2, 9, 2, 11, -5, 0, 4, -12, -8,
    -- layer=1 filter=85 channel=2
    -3, -4, -27, -2, -1, -14, -10, -6, -11,
    -- layer=1 filter=85 channel=3
    0, -15, -4, 4, 1, -14, -15, -11, 8,
    -- layer=1 filter=85 channel=4
    -14, 5, -21, 8, -14, -14, -12, -15, 9,
    -- layer=1 filter=85 channel=5
    2, -6, -12, -10, 7, -5, -11, -16, 13,
    -- layer=1 filter=85 channel=6
    -4, -4, 0, 1, -17, -15, -2, -13, -11,
    -- layer=1 filter=85 channel=7
    -20, -12, -16, -1, -9, -8, 3, 9, -4,
    -- layer=1 filter=85 channel=8
    -23, -17, -23, -22, 8, -3, -2, -7, 3,
    -- layer=1 filter=85 channel=9
    -13, 0, 2, 9, 5, -4, -1, 3, 12,
    -- layer=1 filter=85 channel=10
    -6, 1, -3, -6, -11, 14, -9, 3, 4,
    -- layer=1 filter=85 channel=11
    -21, -12, -8, 8, -5, -10, -6, -12, -19,
    -- layer=1 filter=85 channel=12
    12, 10, -4, -2, -7, 0, -14, 4, -7,
    -- layer=1 filter=85 channel=13
    2, 8, -15, 1, -7, -2, -10, -1, 14,
    -- layer=1 filter=85 channel=14
    -7, 9, -15, -11, -9, -6, -5, -1, -6,
    -- layer=1 filter=85 channel=15
    0, 8, -11, 0, -20, -7, 4, -3, -18,
    -- layer=1 filter=85 channel=16
    7, -19, -16, -12, -10, -16, -2, 1, -15,
    -- layer=1 filter=85 channel=17
    6, -10, -3, 8, -4, 3, 8, -17, -7,
    -- layer=1 filter=85 channel=18
    -13, 10, -10, 0, -13, -7, -12, 9, 12,
    -- layer=1 filter=85 channel=19
    -25, -12, 0, -4, -2, -6, -8, -16, -12,
    -- layer=1 filter=85 channel=20
    -13, -12, -5, 5, -5, -3, -11, 5, 4,
    -- layer=1 filter=85 channel=21
    9, -11, -8, -4, 6, -20, 22, -11, -7,
    -- layer=1 filter=85 channel=22
    -9, -17, -13, 13, 9, -13, -20, 2, -5,
    -- layer=1 filter=85 channel=23
    -13, 3, -14, 1, -10, -12, 5, 0, 7,
    -- layer=1 filter=85 channel=24
    -6, -7, 5, 10, -9, -13, 0, -2, 1,
    -- layer=1 filter=85 channel=25
    0, -6, 0, 3, 6, -12, 0, -17, 12,
    -- layer=1 filter=85 channel=26
    2, -4, 1, 8, -12, 1, -8, 13, 14,
    -- layer=1 filter=85 channel=27
    -11, 15, 13, 18, -8, -19, 12, -7, 19,
    -- layer=1 filter=85 channel=28
    0, -5, -18, 5, -11, -3, -7, -10, 1,
    -- layer=1 filter=85 channel=29
    -17, -20, 14, -7, 5, -17, 4, -2, -5,
    -- layer=1 filter=85 channel=30
    2, 11, 0, -11, 11, -13, 6, -11, -15,
    -- layer=1 filter=85 channel=31
    -16, 8, -5, -21, -3, -5, -11, -7, 1,
    -- layer=1 filter=85 channel=32
    -7, 20, 7, 1, 4, 0, 12, 5, 14,
    -- layer=1 filter=85 channel=33
    4, 4, -9, 1, 9, 4, -7, 2, 0,
    -- layer=1 filter=85 channel=34
    -17, -21, -10, -23, -6, -12, -24, -5, -11,
    -- layer=1 filter=85 channel=35
    -21, 3, 0, -4, -14, -13, -3, -4, -16,
    -- layer=1 filter=85 channel=36
    -8, 1, -9, 2, -2, -6, 12, 0, -8,
    -- layer=1 filter=85 channel=37
    8, -5, -13, -15, -7, 0, -8, -8, 7,
    -- layer=1 filter=85 channel=38
    7, -16, -16, 3, 4, 2, 0, 7, 14,
    -- layer=1 filter=85 channel=39
    8, 8, 0, 7, 7, -6, 7, 10, 0,
    -- layer=1 filter=85 channel=40
    -9, -10, -10, 4, 5, -22, -3, 8, 16,
    -- layer=1 filter=85 channel=41
    -3, -15, -10, 6, -15, 2, -24, -21, -16,
    -- layer=1 filter=85 channel=42
    -12, 8, 6, -2, 7, 0, 5, -4, -8,
    -- layer=1 filter=85 channel=43
    -8, 3, 14, -5, 10, 0, -14, -11, -16,
    -- layer=1 filter=85 channel=44
    11, -16, -5, 3, 6, -5, 12, -4, 11,
    -- layer=1 filter=85 channel=45
    -5, -5, -2, -17, 14, 7, 3, 4, -4,
    -- layer=1 filter=85 channel=46
    14, -5, 2, -17, -5, 2, -18, -1, -11,
    -- layer=1 filter=85 channel=47
    1, 8, 7, -22, -20, -19, -4, 3, -2,
    -- layer=1 filter=85 channel=48
    -4, -20, 5, 0, -1, -10, 0, -18, -6,
    -- layer=1 filter=85 channel=49
    10, 4, -14, -8, 6, 12, -20, -11, -13,
    -- layer=1 filter=85 channel=50
    0, -2, 1, -1, -11, 2, 10, -13, -9,
    -- layer=1 filter=85 channel=51
    2, -13, -26, -3, -19, -23, -16, -15, -21,
    -- layer=1 filter=85 channel=52
    -7, -6, -5, -2, 10, 9, -9, 5, -3,
    -- layer=1 filter=85 channel=53
    1, 5, -15, -6, -4, -10, -2, 7, 5,
    -- layer=1 filter=85 channel=54
    -4, -11, -5, -8, 0, -17, -20, -22, -9,
    -- layer=1 filter=85 channel=55
    -2, 10, -11, 4, -1, -11, 11, 6, -12,
    -- layer=1 filter=85 channel=56
    0, 2, 15, -5, -6, -24, -22, -13, -13,
    -- layer=1 filter=85 channel=57
    -11, -1, 3, -2, -18, -13, 3, 0, -2,
    -- layer=1 filter=85 channel=58
    3, 2, -5, -18, 2, -4, 3, -11, -8,
    -- layer=1 filter=85 channel=59
    0, -2, 4, -8, 4, -1, -1, -4, 8,
    -- layer=1 filter=85 channel=60
    -4, -7, -14, 1, 0, -23, -2, -14, -19,
    -- layer=1 filter=85 channel=61
    -8, -6, -15, -14, 6, -10, -20, -15, -12,
    -- layer=1 filter=85 channel=62
    -7, -3, -17, 12, -15, 0, -7, 7, -5,
    -- layer=1 filter=85 channel=63
    -8, -13, 6, -6, 1, 0, -10, -2, 4,
    -- layer=1 filter=86 channel=0
    2, 10, 4, -7, -20, -7, -2, -11, -13,
    -- layer=1 filter=86 channel=1
    -5, -9, -11, -17, 0, -18, -17, -24, 3,
    -- layer=1 filter=86 channel=2
    -10, -13, -14, 8, -24, 8, -3, -8, 1,
    -- layer=1 filter=86 channel=3
    -7, 5, -16, -5, -15, -4, -5, -23, -20,
    -- layer=1 filter=86 channel=4
    -7, -11, -15, -10, -1, -3, -12, -15, 4,
    -- layer=1 filter=86 channel=5
    -14, -20, -6, -13, -22, 5, 8, 0, -20,
    -- layer=1 filter=86 channel=6
    2, -21, -8, -11, -5, -12, 2, -10, -11,
    -- layer=1 filter=86 channel=7
    0, 0, -14, -11, -19, 4, -10, 1, 1,
    -- layer=1 filter=86 channel=8
    -2, -25, -19, -21, -16, -23, -6, -16, -7,
    -- layer=1 filter=86 channel=9
    -17, -16, -2, -2, -24, 1, -16, -11, -11,
    -- layer=1 filter=86 channel=10
    -14, -8, -22, -21, 4, -1, -5, -11, 7,
    -- layer=1 filter=86 channel=11
    -6, -17, 0, -3, -18, -4, -17, 0, 2,
    -- layer=1 filter=86 channel=12
    11, 10, 8, 9, -14, -5, 0, 2, 6,
    -- layer=1 filter=86 channel=13
    5, -2, 0, 3, -11, 1, -12, -12, -11,
    -- layer=1 filter=86 channel=14
    -10, 9, -7, 5, 3, -24, -4, -13, -18,
    -- layer=1 filter=86 channel=15
    -20, 3, 5, -19, -3, 0, 1, -14, 11,
    -- layer=1 filter=86 channel=16
    -2, -4, 0, -24, -26, -5, -6, -20, -20,
    -- layer=1 filter=86 channel=17
    7, 1, -11, -9, -2, -4, -2, -4, -19,
    -- layer=1 filter=86 channel=18
    4, 12, 13, 6, -11, -3, 7, 3, 2,
    -- layer=1 filter=86 channel=19
    -10, -13, 9, -5, -19, 9, -15, -20, -6,
    -- layer=1 filter=86 channel=20
    -9, -12, 1, 0, 4, 5, -7, 3, 8,
    -- layer=1 filter=86 channel=21
    0, -1, -10, -1, -6, -4, 2, 0, -8,
    -- layer=1 filter=86 channel=22
    7, -1, 10, 3, -1, 1, -25, -24, 1,
    -- layer=1 filter=86 channel=23
    -3, 4, -5, 0, -4, -19, -5, -17, -10,
    -- layer=1 filter=86 channel=24
    -10, -29, -20, -3, -16, -30, -2, -15, -9,
    -- layer=1 filter=86 channel=25
    -23, 11, 0, -12, -15, -5, -2, 0, -17,
    -- layer=1 filter=86 channel=26
    -3, -4, 12, 11, -9, 7, 13, 13, 3,
    -- layer=1 filter=86 channel=27
    4, 3, -21, -9, -1, 10, -9, 1, -7,
    -- layer=1 filter=86 channel=28
    -15, -14, -14, -2, 2, -17, -14, -18, -14,
    -- layer=1 filter=86 channel=29
    -29, 8, -14, 3, -1, -9, -14, -11, -15,
    -- layer=1 filter=86 channel=30
    11, 3, 4, 3, -9, -11, 7, -12, -8,
    -- layer=1 filter=86 channel=31
    -23, -1, 6, -21, -6, -4, 0, 8, 2,
    -- layer=1 filter=86 channel=32
    12, -12, -24, 18, 15, 0, -7, 1, -8,
    -- layer=1 filter=86 channel=33
    -14, -6, 0, 9, -8, 0, 7, 12, -12,
    -- layer=1 filter=86 channel=34
    -8, 2, -6, 5, -6, -8, -14, 11, 3,
    -- layer=1 filter=86 channel=35
    -3, -15, -12, -27, 3, 6, -11, 0, -3,
    -- layer=1 filter=86 channel=36
    -13, -6, 15, -16, -1, -12, -21, -1, -12,
    -- layer=1 filter=86 channel=37
    -4, -4, 0, -13, 1, 2, -17, -14, -9,
    -- layer=1 filter=86 channel=38
    -19, -6, -5, -14, 6, -9, -10, 3, 8,
    -- layer=1 filter=86 channel=39
    13, 0, -12, -2, -3, -9, 16, 2, -2,
    -- layer=1 filter=86 channel=40
    -19, -5, -6, -6, -2, -11, 2, 4, -12,
    -- layer=1 filter=86 channel=41
    -15, -14, -1, -27, -10, -15, -12, -15, -5,
    -- layer=1 filter=86 channel=42
    -3, -7, 1, -4, -20, 0, -17, -10, -19,
    -- layer=1 filter=86 channel=43
    -12, 6, -16, -23, -17, -16, 2, -2, 8,
    -- layer=1 filter=86 channel=44
    2, -12, -12, -15, 4, -4, -17, 2, 4,
    -- layer=1 filter=86 channel=45
    1, -11, -11, -33, -11, 3, 4, -5, 0,
    -- layer=1 filter=86 channel=46
    5, -7, 8, -4, -4, -20, -18, 4, -2,
    -- layer=1 filter=86 channel=47
    -15, -17, 3, -17, -7, -10, -8, -5, -9,
    -- layer=1 filter=86 channel=48
    6, -16, 8, -24, -8, -8, -18, -9, 2,
    -- layer=1 filter=86 channel=49
    -3, 5, -9, -22, -5, 0, -22, -17, -11,
    -- layer=1 filter=86 channel=50
    -16, 0, -4, -1, -2, -7, -3, 6, -7,
    -- layer=1 filter=86 channel=51
    -21, 6, -5, 3, 4, 4, -23, -9, -16,
    -- layer=1 filter=86 channel=52
    -11, 0, 16, -5, -8, 1, 0, -6, 1,
    -- layer=1 filter=86 channel=53
    1, -6, -11, -2, -15, -7, -10, 1, 1,
    -- layer=1 filter=86 channel=54
    -2, -14, -20, -16, -21, -9, 8, -10, 0,
    -- layer=1 filter=86 channel=55
    -16, -6, -18, -5, -14, -19, -7, -10, -3,
    -- layer=1 filter=86 channel=56
    -12, -9, -23, -6, -2, -9, -7, -8, -13,
    -- layer=1 filter=86 channel=57
    -23, 0, -12, -19, -8, -2, -17, -8, 8,
    -- layer=1 filter=86 channel=58
    -23, -14, -19, -2, -31, -18, 3, -10, -8,
    -- layer=1 filter=86 channel=59
    0, 4, -7, -23, -4, -1, -12, 11, 10,
    -- layer=1 filter=86 channel=60
    -6, -13, 4, -16, 13, 12, -2, 0, -17,
    -- layer=1 filter=86 channel=61
    -13, -6, -19, 0, -2, -20, -21, 0, 11,
    -- layer=1 filter=86 channel=62
    10, 5, 12, 15, -5, -18, 19, -5, 0,
    -- layer=1 filter=86 channel=63
    12, 11, 17, 0, 7, -34, 4, -2, -11,
    -- layer=1 filter=87 channel=0
    -34, -24, 49, -2, 19, 11, 8, 11, -24,
    -- layer=1 filter=87 channel=1
    5, -62, 39, -22, -26, 18, -11, 12, 21,
    -- layer=1 filter=87 channel=2
    -58, -35, 40, -27, 30, 42, 20, 33, -36,
    -- layer=1 filter=87 channel=3
    0, 15, -62, 53, -90, -103, -43, -112, -12,
    -- layer=1 filter=87 channel=4
    -11, -20, 23, -30, -6, 22, -6, 27, -12,
    -- layer=1 filter=87 channel=5
    -72, -58, 57, -23, 11, 7, 32, 48, -37,
    -- layer=1 filter=87 channel=6
    8, -34, 16, -28, 7, 22, -19, 38, -2,
    -- layer=1 filter=87 channel=7
    31, -33, -1, 16, -26, 12, -31, 20, 16,
    -- layer=1 filter=87 channel=8
    26, -17, -14, -8, -58, -5, -6, -7, 24,
    -- layer=1 filter=87 channel=9
    17, -43, 19, -53, -24, 0, -6, 21, 33,
    -- layer=1 filter=87 channel=10
    20, -3, -20, 19, 24, 2, 20, -11, 22,
    -- layer=1 filter=87 channel=11
    -31, -23, 52, -49, 14, 30, 0, 15, -11,
    -- layer=1 filter=87 channel=12
    -103, -16, 85, -36, 42, 81, 10, 65, -23,
    -- layer=1 filter=87 channel=13
    -21, -36, 27, -28, -5, 30, -17, 6, -21,
    -- layer=1 filter=87 channel=14
    8, 2, -10, 37, 21, -6, 0, 12, 0,
    -- layer=1 filter=87 channel=15
    3, -22, -2, -15, -35, 43, 4, 7, 62,
    -- layer=1 filter=87 channel=16
    0, 42, -57, 57, -43, -60, 36, -63, 20,
    -- layer=1 filter=87 channel=17
    40, 0, 11, 50, -15, 20, -9, -13, 0,
    -- layer=1 filter=87 channel=18
    -6, 0, 8, 12, -13, -2, -12, 4, 0,
    -- layer=1 filter=87 channel=19
    9, -45, -1, -8, -29, 17, -14, 15, 6,
    -- layer=1 filter=87 channel=20
    -53, 10, 38, -16, 44, 19, 4, 17, -31,
    -- layer=1 filter=87 channel=21
    -31, -14, 15, -29, -26, 44, -22, 28, 35,
    -- layer=1 filter=87 channel=22
    -86, 0, 47, -14, 75, 9, 44, 11, -91,
    -- layer=1 filter=87 channel=23
    75, 29, -8, 31, 7, -16, -4, -19, 0,
    -- layer=1 filter=87 channel=24
    -11, 42, -49, 9, -25, -34, 11, -86, -70,
    -- layer=1 filter=87 channel=25
    40, 67, -40, 49, -107, 20, -55, 2, 77,
    -- layer=1 filter=87 channel=26
    26, 3, 5, 4, 8, -9, -3, -1, -10,
    -- layer=1 filter=87 channel=27
    -102, -52, 86, -60, 17, 64, 25, 40, -34,
    -- layer=1 filter=87 channel=28
    8, -21, -18, 11, -70, -19, -25, -53, -11,
    -- layer=1 filter=87 channel=29
    -12, 20, -75, -1, -97, -45, -27, -56, 38,
    -- layer=1 filter=87 channel=30
    -12, 13, -8, -15, 1, -8, -4, -15, 12,
    -- layer=1 filter=87 channel=31
    8, -15, -25, 4, -55, 11, -4, -35, 38,
    -- layer=1 filter=87 channel=32
    -120, -29, 39, -75, -13, 23, 11, 0, -50,
    -- layer=1 filter=87 channel=33
    -2, -7, -3, -14, -16, 10, -15, -4, -3,
    -- layer=1 filter=87 channel=34
    18, 10, 16, 10, 7, 22, -6, -1, 4,
    -- layer=1 filter=87 channel=35
    32, 0, -16, 0, -49, 15, -16, 0, 51,
    -- layer=1 filter=87 channel=36
    -29, 36, -37, 59, -21, -76, 8, -54, 15,
    -- layer=1 filter=87 channel=37
    20, -15, 19, -40, -17, 30, -37, 1, 32,
    -- layer=1 filter=87 channel=38
    4, -4, -16, 6, -76, 45, -31, 41, 65,
    -- layer=1 filter=87 channel=39
    -4, -12, -2, 3, -16, 5, 1, 0, -13,
    -- layer=1 filter=87 channel=40
    12, 59, -3, 25, 2, -36, 9, -5, -12,
    -- layer=1 filter=87 channel=41
    -51, -89, 58, -21, -15, -2, 24, 34, -23,
    -- layer=1 filter=87 channel=42
    17, -12, 1, -14, 8, 16, -6, 24, 3,
    -- layer=1 filter=87 channel=43
    -31, 13, -53, -22, -79, -39, -25, -85, 16,
    -- layer=1 filter=87 channel=44
    -22, -36, 21, -27, -4, 36, -5, 29, 30,
    -- layer=1 filter=87 channel=45
    -10, 71, -35, 8, -66, -36, -16, -68, 35,
    -- layer=1 filter=87 channel=46
    -16, 33, 12, 24, 44, 2, 9, 19, 16,
    -- layer=1 filter=87 channel=47
    52, 49, -44, 45, -39, -4, -24, -32, 24,
    -- layer=1 filter=87 channel=48
    -59, 7, 68, -1, 59, 26, 43, 44, -59,
    -- layer=1 filter=87 channel=49
    -116, -10, 83, -54, 26, 27, 20, 49, -37,
    -- layer=1 filter=87 channel=50
    12, -27, -5, -15, -57, 31, -10, -17, 53,
    -- layer=1 filter=87 channel=51
    -8, -29, 31, -30, 5, 36, -9, 32, 19,
    -- layer=1 filter=87 channel=52
    38, 20, -46, 7, -14, -14, 5, -37, 0,
    -- layer=1 filter=87 channel=53
    -48, 6, -31, 9, -30, -61, -33, -64, -35,
    -- layer=1 filter=87 channel=54
    26, -19, -6, 1, -11, 11, -13, 24, 15,
    -- layer=1 filter=87 channel=55
    30, -30, -14, 42, 4, -3, -34, -55, 25,
    -- layer=1 filter=87 channel=56
    24, 24, -67, 21, -26, -52, -20, -34, 5,
    -- layer=1 filter=87 channel=57
    9, -20, 6, -23, -27, 37, -19, 15, 41,
    -- layer=1 filter=87 channel=58
    43, 20, -54, 90, -72, 24, -49, -8, 51,
    -- layer=1 filter=87 channel=59
    -21, -30, -5, -10, -41, 28, 2, 4, 48,
    -- layer=1 filter=87 channel=60
    14, 5, -27, -7, -48, 21, -41, -5, 65,
    -- layer=1 filter=87 channel=61
    19, -2, -26, 6, -5, -15, -21, -16, -12,
    -- layer=1 filter=87 channel=62
    -144, 114, 103, -36, 98, -5, 79, 38, -74,
    -- layer=1 filter=87 channel=63
    -22, 122, 47, 68, 143, -18, 111, 38, -11,
    -- layer=1 filter=88 channel=0
    -26, -6, 25, -30, 33, 20, -16, 39, 51,
    -- layer=1 filter=88 channel=1
    -59, -31, -15, -39, -21, -9, -14, 7, 42,
    -- layer=1 filter=88 channel=2
    -10, -6, -1, -12, -9, -18, -3, -7, -2,
    -- layer=1 filter=88 channel=3
    20, -12, 17, 7, 16, 36, 15, -6, 2,
    -- layer=1 filter=88 channel=4
    9, 19, 9, -22, 0, 5, -11, -15, -14,
    -- layer=1 filter=88 channel=5
    1, -7, 18, -32, -24, -6, -42, 0, -37,
    -- layer=1 filter=88 channel=6
    -18, -22, 13, -29, -11, 9, -12, 14, 14,
    -- layer=1 filter=88 channel=7
    -11, 12, 6, -15, 21, 24, -1, -1, 20,
    -- layer=1 filter=88 channel=8
    12, 22, 24, -11, 2, 2, 5, 12, -2,
    -- layer=1 filter=88 channel=9
    31, -17, -18, 45, 34, -7, 9, 11, -27,
    -- layer=1 filter=88 channel=10
    -12, -26, -14, -7, 11, 2, -11, 5, 39,
    -- layer=1 filter=88 channel=11
    32, 7, -4, -14, 9, 1, -21, 0, -40,
    -- layer=1 filter=88 channel=12
    -12, -16, 22, 17, 11, -27, 16, 4, 3,
    -- layer=1 filter=88 channel=13
    -48, 0, 20, -37, 0, 10, -21, 4, 38,
    -- layer=1 filter=88 channel=14
    -33, -23, 6, -39, -4, 23, -31, 17, 55,
    -- layer=1 filter=88 channel=15
    52, 20, 0, 50, 32, -23, 12, -22, -38,
    -- layer=1 filter=88 channel=16
    2, 0, -18, -13, -6, 19, -13, 1, 6,
    -- layer=1 filter=88 channel=17
    -82, -35, 26, -54, 4, 47, 5, 41, 86,
    -- layer=1 filter=88 channel=18
    11, 4, -10, -6, -4, -6, -4, 9, 2,
    -- layer=1 filter=88 channel=19
    2, 26, -3, 18, 14, -15, 10, 8, -38,
    -- layer=1 filter=88 channel=20
    -38, -31, 8, -20, 3, 15, 1, 6, 44,
    -- layer=1 filter=88 channel=21
    -42, -24, -17, -41, -24, -6, -26, 11, 10,
    -- layer=1 filter=88 channel=22
    -25, -33, 8, -69, -73, -49, -44, 15, 8,
    -- layer=1 filter=88 channel=23
    -88, -90, -9, -38, 38, 76, 30, 51, 126,
    -- layer=1 filter=88 channel=24
    -41, 6, -7, -12, -24, 32, -39, -35, -14,
    -- layer=1 filter=88 channel=25
    -29, 16, 4, 12, 1, 5, 3, 17, 27,
    -- layer=1 filter=88 channel=26
    -16, -7, 4, -3, -8, 1, -14, -6, 4,
    -- layer=1 filter=88 channel=27
    -51, -32, -13, -4, 9, -33, -14, 7, 3,
    -- layer=1 filter=88 channel=28
    -40, 10, 6, -32, 12, 15, 17, 26, 13,
    -- layer=1 filter=88 channel=29
    7, 6, 8, 15, 16, -13, 3, 32, 21,
    -- layer=1 filter=88 channel=30
    6, -12, -7, -2, 1, 7, 4, 13, -14,
    -- layer=1 filter=88 channel=31
    42, 26, -5, 21, -6, -38, 19, -20, -53,
    -- layer=1 filter=88 channel=32
    18, -31, -2, 27, 24, -17, 45, 26, 18,
    -- layer=1 filter=88 channel=33
    -3, 12, 1, -5, -7, 3, 0, 1, 2,
    -- layer=1 filter=88 channel=34
    16, 13, -7, 8, -4, 8, 0, -19, -18,
    -- layer=1 filter=88 channel=35
    16, -3, -4, 36, 5, -4, 18, -16, -18,
    -- layer=1 filter=88 channel=36
    24, -4, -12, 30, 22, 0, 38, -20, 4,
    -- layer=1 filter=88 channel=37
    9, 13, 1, -7, -17, -2, -38, -7, -3,
    -- layer=1 filter=88 channel=38
    27, 1, -20, 48, 24, -25, 24, -8, -35,
    -- layer=1 filter=88 channel=39
    -2, -11, 13, -9, 8, 3, 9, 15, 0,
    -- layer=1 filter=88 channel=40
    -40, -37, -4, -26, -32, 9, -8, -5, 36,
    -- layer=1 filter=88 channel=41
    -4, 7, 25, -40, -20, -1, -18, 5, -3,
    -- layer=1 filter=88 channel=42
    -42, -20, 7, -43, -17, 38, -22, 17, 32,
    -- layer=1 filter=88 channel=43
    -4, -9, -16, 21, 27, -2, 16, 18, 20,
    -- layer=1 filter=88 channel=44
    15, -14, -25, 51, 12, -23, 31, -15, -38,
    -- layer=1 filter=88 channel=45
    -2, -13, 11, 30, 16, 5, 8, 44, 25,
    -- layer=1 filter=88 channel=46
    -43, -46, -27, -56, -53, 21, -5, 23, 60,
    -- layer=1 filter=88 channel=47
    -9, 19, 19, 1, 16, 7, -19, -1, 23,
    -- layer=1 filter=88 channel=48
    -13, -17, 20, -71, -60, -61, -55, -17, -11,
    -- layer=1 filter=88 channel=49
    14, 18, -8, 20, -12, -32, -18, -14, -40,
    -- layer=1 filter=88 channel=50
    24, 12, 16, 3, 7, 4, -5, -20, -35,
    -- layer=1 filter=88 channel=51
    12, 14, 14, 2, -9, 4, 10, -12, -26,
    -- layer=1 filter=88 channel=52
    -33, -16, 13, -48, 2, 21, -15, 37, 51,
    -- layer=1 filter=88 channel=53
    9, -35, -1, 6, 15, -16, 28, -10, -2,
    -- layer=1 filter=88 channel=54
    5, 20, 21, 15, 9, 16, -4, 3, -18,
    -- layer=1 filter=88 channel=55
    -80, -53, 3, -64, -27, 13, 0, 32, 75,
    -- layer=1 filter=88 channel=56
    -39, -24, 4, -42, -28, 3, -36, 34, 41,
    -- layer=1 filter=88 channel=57
    34, 9, 0, 32, 24, -14, 0, -18, -35,
    -- layer=1 filter=88 channel=58
    35, 23, 16, 12, 28, 18, 5, -6, 12,
    -- layer=1 filter=88 channel=59
    42, 0, -18, 40, 22, -4, 4, 7, -35,
    -- layer=1 filter=88 channel=60
    16, 16, -12, 41, 26, -10, 18, -15, -34,
    -- layer=1 filter=88 channel=61
    -46, -37, 15, -37, 0, 38, -17, 17, 59,
    -- layer=1 filter=88 channel=62
    0, -67, -24, -17, -3, -46, 19, -43, -11,
    -- layer=1 filter=88 channel=63
    -47, -32, -9, -126, -110, -86, -37, -54, -42,
    -- layer=1 filter=89 channel=0
    32, -4, 18, 14, -10, 34, -13, 20, -2,
    -- layer=1 filter=89 channel=1
    -19, 20, 14, -17, -3, -3, -27, -36, -6,
    -- layer=1 filter=89 channel=2
    -3, -33, -10, 0, 22, 24, 4, 4, -12,
    -- layer=1 filter=89 channel=3
    42, 48, 17, 23, 11, -30, 56, 58, 44,
    -- layer=1 filter=89 channel=4
    9, 0, 10, -16, -15, 24, -25, -6, -18,
    -- layer=1 filter=89 channel=5
    3, -15, -50, 7, -37, -18, -9, 19, -12,
    -- layer=1 filter=89 channel=6
    14, 28, 2, -9, -28, 0, -37, -15, 4,
    -- layer=1 filter=89 channel=7
    6, 15, 19, -6, -21, -16, -6, 6, 28,
    -- layer=1 filter=89 channel=8
    1, 15, 3, 3, -13, -3, -33, -24, -10,
    -- layer=1 filter=89 channel=9
    31, 6, 11, -2, -18, -17, 15, 17, 10,
    -- layer=1 filter=89 channel=10
    0, 1, 16, -10, 4, -12, -9, -39, -44,
    -- layer=1 filter=89 channel=11
    17, 11, -11, -24, -13, 11, -14, -9, -19,
    -- layer=1 filter=89 channel=12
    -8, -35, -22, -14, 1, 22, 1, 29, 23,
    -- layer=1 filter=89 channel=13
    15, 21, 17, -13, 11, 14, -37, -20, -33,
    -- layer=1 filter=89 channel=14
    6, 14, 12, -4, 23, 16, -22, -5, -6,
    -- layer=1 filter=89 channel=15
    -4, -3, 19, -3, -8, -25, -7, -20, 3,
    -- layer=1 filter=89 channel=16
    10, 3, -3, 45, 72, 29, 39, 18, 19,
    -- layer=1 filter=89 channel=17
    26, 23, 27, -4, -11, -4, -27, -30, -12,
    -- layer=1 filter=89 channel=18
    5, 13, -4, -5, 8, -13, 4, -16, 17,
    -- layer=1 filter=89 channel=19
    -4, 14, 12, 7, -4, -2, -24, -20, -21,
    -- layer=1 filter=89 channel=20
    3, -6, -15, -17, -1, 8, -6, 27, 19,
    -- layer=1 filter=89 channel=21
    -6, 14, 11, 10, -1, 0, -13, -19, 1,
    -- layer=1 filter=89 channel=22
    0, 0, -17, 62, 59, 31, -5, 29, -18,
    -- layer=1 filter=89 channel=23
    43, 30, 33, 24, 2, -21, -8, -25, -11,
    -- layer=1 filter=89 channel=24
    -30, -23, -34, 0, -12, -17, 36, 15, 11,
    -- layer=1 filter=89 channel=25
    3, 31, -4, 25, -7, -5, -8, -11, 4,
    -- layer=1 filter=89 channel=26
    0, 8, 26, 0, 21, 19, 15, 25, -3,
    -- layer=1 filter=89 channel=27
    27, -14, 6, 14, 1, 38, 5, 25, 3,
    -- layer=1 filter=89 channel=28
    26, 12, 24, -18, 0, -1, -13, 0, 2,
    -- layer=1 filter=89 channel=29
    -31, -10, -29, 21, -13, -16, -12, -41, -16,
    -- layer=1 filter=89 channel=30
    -8, 12, 0, -4, 6, 17, -7, -12, -12,
    -- layer=1 filter=89 channel=31
    15, -3, -9, -4, -12, -15, -4, -25, -10,
    -- layer=1 filter=89 channel=32
    0, -22, 2, 17, 2, 2, -17, 24, 14,
    -- layer=1 filter=89 channel=33
    16, -3, 13, -14, -7, 11, -12, 0, 8,
    -- layer=1 filter=89 channel=34
    2, 26, 20, 8, 0, 0, -3, -4, 9,
    -- layer=1 filter=89 channel=35
    0, 0, 15, 34, -15, -26, -22, -21, -6,
    -- layer=1 filter=89 channel=36
    24, -1, -24, 26, 20, -37, 25, 0, 27,
    -- layer=1 filter=89 channel=37
    23, 9, 30, -11, 2, -7, -32, -3, -9,
    -- layer=1 filter=89 channel=38
    7, -2, 13, 3, -24, -37, 17, -14, 2,
    -- layer=1 filter=89 channel=39
    -20, 10, 7, 17, 2, 18, 9, -9, -4,
    -- layer=1 filter=89 channel=40
    7, -2, 7, 9, 9, 1, 2, 6, 12,
    -- layer=1 filter=89 channel=41
    -4, -27, -31, -26, -18, -19, -44, 23, 1,
    -- layer=1 filter=89 channel=42
    22, 5, 17, -10, -9, -6, -36, -9, -12,
    -- layer=1 filter=89 channel=43
    -33, -11, -9, 47, -12, 0, -15, -9, 0,
    -- layer=1 filter=89 channel=44
    22, 5, 0, -14, 1, -13, -1, 23, 19,
    -- layer=1 filter=89 channel=45
    -32, -4, -28, 38, 18, 4, 25, -10, 2,
    -- layer=1 filter=89 channel=46
    16, 25, 15, 39, 14, 14, 6, -8, 3,
    -- layer=1 filter=89 channel=47
    11, 20, 18, 21, -2, -10, 2, -5, 12,
    -- layer=1 filter=89 channel=48
    -7, -4, -55, 3, 15, 14, -13, 30, -21,
    -- layer=1 filter=89 channel=49
    -10, 6, -30, -6, -14, 17, -42, 16, -46,
    -- layer=1 filter=89 channel=50
    8, 22, 15, 0, 1, -8, -17, -7, -21,
    -- layer=1 filter=89 channel=51
    12, 20, 0, 0, -23, -17, -9, -15, 9,
    -- layer=1 filter=89 channel=52
    9, 11, 0, 11, 4, 12, -28, -41, -24,
    -- layer=1 filter=89 channel=53
    30, 13, 6, 15, 42, -8, 14, 32, 43,
    -- layer=1 filter=89 channel=54
    17, 19, 3, 1, -6, -15, -29, -28, -9,
    -- layer=1 filter=89 channel=55
    27, 38, 20, 2, 3, -13, -28, -27, -9,
    -- layer=1 filter=89 channel=56
    -4, 1, 0, 17, 6, 2, -24, -31, -5,
    -- layer=1 filter=89 channel=57
    13, -5, 25, -19, -23, -14, -20, -10, -22,
    -- layer=1 filter=89 channel=58
    9, 12, 26, 21, 19, -1, -4, 10, 36,
    -- layer=1 filter=89 channel=59
    12, -5, 25, 21, -4, -14, -8, -15, 9,
    -- layer=1 filter=89 channel=60
    26, 12, 2, 2, 0, -20, 1, -14, -9,
    -- layer=1 filter=89 channel=61
    19, 0, 13, -19, -9, 20, -29, -35, -3,
    -- layer=1 filter=89 channel=62
    23, 54, -15, 19, 31, 16, 32, 58, 19,
    -- layer=1 filter=89 channel=63
    42, 44, 14, 132, 130, 81, 50, 32, 0,
    -- layer=1 filter=90 channel=0
    -10, 6, 10, 1, -13, -12, -10, -2, -15,
    -- layer=1 filter=90 channel=1
    -4, 10, 9, 1, -10, -1, -4, -3, -10,
    -- layer=1 filter=90 channel=2
    -15, -13, 0, -4, 11, -16, 8, -14, 6,
    -- layer=1 filter=90 channel=3
    7, -16, 13, -10, -13, 4, 7, -12, 13,
    -- layer=1 filter=90 channel=4
    -12, 0, -5, -5, -12, 5, -7, -14, -1,
    -- layer=1 filter=90 channel=5
    -12, 1, -7, -7, -5, 10, -2, -17, 0,
    -- layer=1 filter=90 channel=6
    -16, 1, -15, -1, 6, -8, 8, 10, 7,
    -- layer=1 filter=90 channel=7
    -17, 2, 4, 9, -12, -3, -12, 9, 8,
    -- layer=1 filter=90 channel=8
    -10, -2, 5, 0, -15, 8, -5, -1, -8,
    -- layer=1 filter=90 channel=9
    -6, -15, 0, -4, 3, -10, 10, -14, 3,
    -- layer=1 filter=90 channel=10
    0, -1, 0, 2, 9, -8, 12, -5, 7,
    -- layer=1 filter=90 channel=11
    -10, -1, -13, 0, 10, 0, 11, -8, -11,
    -- layer=1 filter=90 channel=12
    9, -5, -15, 9, -15, -11, 9, -4, -1,
    -- layer=1 filter=90 channel=13
    5, -10, -16, 9, -11, -2, 12, -12, 0,
    -- layer=1 filter=90 channel=14
    -18, -13, 12, 1, -15, -17, 2, -5, 0,
    -- layer=1 filter=90 channel=15
    7, 8, -13, -16, 2, -16, -15, -18, -9,
    -- layer=1 filter=90 channel=16
    13, -9, -6, -12, 2, -8, 6, 10, -3,
    -- layer=1 filter=90 channel=17
    8, 1, -17, 12, 4, -2, -7, -7, -4,
    -- layer=1 filter=90 channel=18
    6, -3, -1, 3, -5, 6, -10, -9, -11,
    -- layer=1 filter=90 channel=19
    -3, -11, -6, -15, -17, -5, 3, -7, 0,
    -- layer=1 filter=90 channel=20
    -16, 4, -14, 0, -16, -5, -4, -8, -1,
    -- layer=1 filter=90 channel=21
    -8, -4, -9, -4, 0, -7, -14, -2, -14,
    -- layer=1 filter=90 channel=22
    2, -3, -7, 6, 3, -10, 5, 15, 11,
    -- layer=1 filter=90 channel=23
    -11, 5, -12, 5, 6, -12, 6, 11, 12,
    -- layer=1 filter=90 channel=24
    -9, -1, -7, -10, 4, -6, -11, 0, 0,
    -- layer=1 filter=90 channel=25
    -8, 11, 7, 10, -10, -4, -7, 1, 5,
    -- layer=1 filter=90 channel=26
    1, -5, 1, 0, 8, 13, 7, 6, 5,
    -- layer=1 filter=90 channel=27
    2, -1, 5, -15, 5, -12, -6, -8, -14,
    -- layer=1 filter=90 channel=28
    -9, 8, -7, -4, -8, 6, -12, 2, 9,
    -- layer=1 filter=90 channel=29
    10, -5, -8, -2, -4, 0, 4, 11, 11,
    -- layer=1 filter=90 channel=30
    -11, 9, 3, 6, 3, 8, -5, -10, 0,
    -- layer=1 filter=90 channel=31
    1, -4, 4, 0, 10, 0, 8, 8, -18,
    -- layer=1 filter=90 channel=32
    -7, -1, 2, -15, 10, 8, -5, 3, 13,
    -- layer=1 filter=90 channel=33
    -2, -2, 7, 0, 8, -13, -2, 9, 0,
    -- layer=1 filter=90 channel=34
    0, -9, 0, 3, -4, 12, 0, 0, 9,
    -- layer=1 filter=90 channel=35
    3, -10, -1, 1, -16, -14, -7, -15, 12,
    -- layer=1 filter=90 channel=36
    -7, 9, -9, -5, 8, 5, -15, 6, -13,
    -- layer=1 filter=90 channel=37
    -14, 1, 3, -2, -3, -2, -17, 1, -12,
    -- layer=1 filter=90 channel=38
    0, 9, -12, -7, -4, -6, -4, 10, -3,
    -- layer=1 filter=90 channel=39
    -2, 10, 0, 0, 9, -3, -8, 4, 10,
    -- layer=1 filter=90 channel=40
    4, -1, -1, 5, -9, 10, 3, 7, -16,
    -- layer=1 filter=90 channel=41
    -6, 0, -6, -10, 3, -10, -12, -16, 0,
    -- layer=1 filter=90 channel=42
    -4, -12, -3, -2, 7, -15, -5, 9, -10,
    -- layer=1 filter=90 channel=43
    0, -9, -2, -3, -5, -6, 13, -13, -4,
    -- layer=1 filter=90 channel=44
    -1, 7, 5, -13, 11, 8, 7, 2, 7,
    -- layer=1 filter=90 channel=45
    -1, -6, -2, 11, -7, -14, 7, -10, 5,
    -- layer=1 filter=90 channel=46
    0, 5, -9, -2, -4, -10, 4, 3, -4,
    -- layer=1 filter=90 channel=47
    6, -16, -8, 0, -5, -6, -15, -4, -4,
    -- layer=1 filter=90 channel=48
    -1, 1, 9, 0, -8, 8, 2, -14, 8,
    -- layer=1 filter=90 channel=49
    0, -10, 3, -2, 8, -5, -8, -9, -9,
    -- layer=1 filter=90 channel=50
    1, -10, -2, -8, -1, 3, 3, -16, -6,
    -- layer=1 filter=90 channel=51
    4, 1, 12, -9, -2, -9, 3, -11, 1,
    -- layer=1 filter=90 channel=52
    10, -7, -11, -12, -10, -10, -2, 3, -8,
    -- layer=1 filter=90 channel=53
    0, 2, 6, 0, 5, 11, -19, 8, 6,
    -- layer=1 filter=90 channel=54
    12, -12, 7, -1, 0, -10, -2, 10, -15,
    -- layer=1 filter=90 channel=55
    1, 10, 3, 0, -12, 2, 14, -15, 8,
    -- layer=1 filter=90 channel=56
    -3, -11, 4, -13, 8, -14, -3, -5, 7,
    -- layer=1 filter=90 channel=57
    -18, -5, -8, 9, -13, -12, 3, -12, -8,
    -- layer=1 filter=90 channel=58
    -6, -5, 11, 4, 10, -16, -7, -9, 9,
    -- layer=1 filter=90 channel=59
    -15, -13, 0, -5, -9, 7, -7, -3, -8,
    -- layer=1 filter=90 channel=60
    -12, -3, -7, 5, 5, -16, -12, 9, -2,
    -- layer=1 filter=90 channel=61
    -8, 5, 4, -5, -6, -15, -10, 0, -10,
    -- layer=1 filter=90 channel=62
    -3, -9, -13, -16, -11, -6, 2, 2, -16,
    -- layer=1 filter=90 channel=63
    -1, -1, 10, 6, -13, 12, 15, -5, 9,
    -- layer=1 filter=91 channel=0
    31, 5, 0, 6, -7, -20, -24, -18, -37,
    -- layer=1 filter=91 channel=1
    30, 27, 27, 30, 15, 7, -7, -41, -25,
    -- layer=1 filter=91 channel=2
    -11, -31, -26, 7, -6, -13, -3, -1, 11,
    -- layer=1 filter=91 channel=3
    51, 63, 42, 48, 55, 29, 43, 25, 21,
    -- layer=1 filter=91 channel=4
    16, 10, -9, 16, -7, -14, -22, -5, -42,
    -- layer=1 filter=91 channel=5
    -6, -22, -33, 56, 57, 28, -1, 1, -8,
    -- layer=1 filter=91 channel=6
    1, 4, -15, 1, 0, -23, -30, -22, -27,
    -- layer=1 filter=91 channel=7
    11, 4, 26, 0, 4, -4, 11, 3, -5,
    -- layer=1 filter=91 channel=8
    17, -10, -6, -23, -13, -19, -16, -42, -22,
    -- layer=1 filter=91 channel=9
    5, 8, 20, -8, 2, 5, 0, 15, -13,
    -- layer=1 filter=91 channel=10
    36, 15, 28, -10, 16, 4, -50, -41, -35,
    -- layer=1 filter=91 channel=11
    -9, 1, 6, 3, -11, 2, -41, -27, -44,
    -- layer=1 filter=91 channel=12
    -2, -51, -56, -43, -14, -19, -65, -26, -17,
    -- layer=1 filter=91 channel=13
    31, 35, 3, 12, -2, -8, -31, -30, -45,
    -- layer=1 filter=91 channel=14
    21, 30, 22, 20, -1, 5, -2, -8, -13,
    -- layer=1 filter=91 channel=15
    6, -11, 20, -1, 0, -2, 0, 10, 6,
    -- layer=1 filter=91 channel=16
    30, 0, 5, 80, 79, 78, 55, 51, 21,
    -- layer=1 filter=91 channel=17
    57, 16, 36, 17, 20, -12, -18, -52, -81,
    -- layer=1 filter=91 channel=18
    -4, -10, 13, -4, 3, -3, -13, 7, 7,
    -- layer=1 filter=91 channel=19
    -4, -17, -13, -4, -13, 0, -11, -19, -21,
    -- layer=1 filter=91 channel=20
    13, -10, -22, -7, -13, -16, -22, -26, -40,
    -- layer=1 filter=91 channel=21
    51, 55, 28, 16, 31, 19, 10, -17, -29,
    -- layer=1 filter=91 channel=22
    3, 27, 13, 104, 123, 62, 39, 28, 11,
    -- layer=1 filter=91 channel=23
    50, 28, 15, 17, -15, -38, -36, -36, -39,
    -- layer=1 filter=91 channel=24
    20, -31, -11, 30, 38, 15, 2, -9, 1,
    -- layer=1 filter=91 channel=25
    -3, -6, 33, 31, 7, 6, 1, -29, 14,
    -- layer=1 filter=91 channel=26
    8, -6, 21, -3, 6, 9, 7, -2, 28,
    -- layer=1 filter=91 channel=27
    -9, -27, -43, 22, -17, 4, -35, -20, -16,
    -- layer=1 filter=91 channel=28
    18, 19, 0, 7, -27, 1, -19, -40, -46,
    -- layer=1 filter=91 channel=29
    -6, 7, -11, -15, -23, -9, -12, -45, -36,
    -- layer=1 filter=91 channel=30
    14, 17, 16, 15, 2, 21, 12, -10, 0,
    -- layer=1 filter=91 channel=31
    -5, -7, -12, -14, 15, 21, 2, -6, 4,
    -- layer=1 filter=91 channel=32
    -5, -36, -82, -44, -62, -39, -64, -42, -55,
    -- layer=1 filter=91 channel=33
    -3, 17, 21, 3, 15, 2, 11, -4, -1,
    -- layer=1 filter=91 channel=34
    17, -1, -7, -5, -17, -6, 18, -16, -17,
    -- layer=1 filter=91 channel=35
    -2, -7, 6, -21, 0, 15, -19, -4, 4,
    -- layer=1 filter=91 channel=36
    26, 19, -2, 30, 69, 45, 32, 37, 7,
    -- layer=1 filter=91 channel=37
    6, 34, 25, 12, 6, -7, -19, -30, -50,
    -- layer=1 filter=91 channel=38
    9, 16, 34, -4, 23, 12, 5, -9, 14,
    -- layer=1 filter=91 channel=39
    -14, 3, -2, -6, -15, -13, -22, -6, -3,
    -- layer=1 filter=91 channel=40
    -5, 1, -4, 23, 15, -1, 9, 17, 10,
    -- layer=1 filter=91 channel=41
    -4, -10, -13, 54, 56, 50, 2, 0, -8,
    -- layer=1 filter=91 channel=42
    25, 7, 2, 34, 11, -7, -16, -32, -15,
    -- layer=1 filter=91 channel=43
    -30, -33, -29, 9, -23, -25, 22, -17, -1,
    -- layer=1 filter=91 channel=44
    0, -10, 7, -32, -24, -13, -2, -10, 5,
    -- layer=1 filter=91 channel=45
    -28, -30, -27, -7, -31, -14, -6, -22, -4,
    -- layer=1 filter=91 channel=46
    -1, 32, 20, 22, 13, 9, -24, -7, -41,
    -- layer=1 filter=91 channel=47
    32, 0, -2, -16, 15, -5, -3, -21, 7,
    -- layer=1 filter=91 channel=48
    -16, 6, -15, 47, 46, 25, 26, -4, -24,
    -- layer=1 filter=91 channel=49
    -14, 18, 0, 11, 23, 4, 1, 9, -3,
    -- layer=1 filter=91 channel=50
    17, 10, 26, -11, -2, 1, 11, -12, -4,
    -- layer=1 filter=91 channel=51
    9, 4, 3, 11, 3, 0, -11, -23, -21,
    -- layer=1 filter=91 channel=52
    51, 24, 17, 26, 30, 4, -23, -50, -54,
    -- layer=1 filter=91 channel=53
    -6, 12, -23, 17, 33, 21, 32, 39, 17,
    -- layer=1 filter=91 channel=54
    16, 3, 7, 6, -1, -2, -5, -33, -29,
    -- layer=1 filter=91 channel=55
    30, 13, 37, 29, 6, -23, -25, -52, -57,
    -- layer=1 filter=91 channel=56
    22, 27, -3, 19, -3, -20, -15, -20, -27,
    -- layer=1 filter=91 channel=57
    -7, -8, 9, -13, -12, -5, -4, -18, -12,
    -- layer=1 filter=91 channel=58
    -8, -11, 10, 12, 26, 5, 24, -3, -1,
    -- layer=1 filter=91 channel=59
    9, 0, 0, 4, 0, 9, 9, 0, 3,
    -- layer=1 filter=91 channel=60
    16, 19, 2, -4, 10, 11, -2, 9, -15,
    -- layer=1 filter=91 channel=61
    42, 11, 3, 12, -8, -3, -13, -23, -16,
    -- layer=1 filter=91 channel=62
    14, 45, 43, 2, 32, 50, -32, 28, 6,
    -- layer=1 filter=91 channel=63
    42, 32, 14, 160, 120, 107, 50, 56, 4,
    -- layer=1 filter=92 channel=0
    31, -4, 12, 8, -21, 22, -6, -39, -21,
    -- layer=1 filter=92 channel=1
    -4, 20, 29, -10, 2, 0, 3, -3, -20,
    -- layer=1 filter=92 channel=2
    21, 3, -21, 15, -5, 22, -24, -14, 12,
    -- layer=1 filter=92 channel=3
    28, 27, 11, 18, 46, -5, 0, -10, 18,
    -- layer=1 filter=92 channel=4
    25, 16, -10, -9, -18, 0, 0, -30, -5,
    -- layer=1 filter=92 channel=5
    17, 27, 6, 0, 15, 3, 4, 11, -35,
    -- layer=1 filter=92 channel=6
    9, 13, 7, -5, 1, 0, 13, -20, -6,
    -- layer=1 filter=92 channel=7
    8, 27, 7, 1, -12, 4, 10, -22, -10,
    -- layer=1 filter=92 channel=8
    25, 0, 5, 0, -9, -10, -6, -19, -12,
    -- layer=1 filter=92 channel=9
    10, 11, 15, -8, 10, -4, -22, -17, -12,
    -- layer=1 filter=92 channel=10
    -1, 14, 10, 3, 3, 4, -25, -6, -11,
    -- layer=1 filter=92 channel=11
    11, 27, -15, -39, -16, -1, 3, -19, -40,
    -- layer=1 filter=92 channel=12
    12, -11, -9, -9, 15, 5, -2, -2, 41,
    -- layer=1 filter=92 channel=13
    12, 19, 1, 6, 12, 0, -6, -13, -6,
    -- layer=1 filter=92 channel=14
    15, 24, -4, 0, 15, 1, -23, -28, -5,
    -- layer=1 filter=92 channel=15
    16, 21, 24, -6, 8, 7, -23, -28, -33,
    -- layer=1 filter=92 channel=16
    28, 7, -16, 48, 70, 35, -12, 34, 31,
    -- layer=1 filter=92 channel=17
    17, 3, 10, 9, 12, 15, -4, -6, -31,
    -- layer=1 filter=92 channel=18
    9, 7, 4, 12, -10, 0, -9, 1, -7,
    -- layer=1 filter=92 channel=19
    15, -5, 3, 9, -8, 7, -11, 6, -15,
    -- layer=1 filter=92 channel=20
    8, -10, -1, -7, 15, 7, -9, -26, 1,
    -- layer=1 filter=92 channel=21
    8, 22, 20, 24, 8, 0, 11, 4, -8,
    -- layer=1 filter=92 channel=22
    40, 28, 18, 66, 83, 0, -7, 35, -20,
    -- layer=1 filter=92 channel=23
    21, 18, 20, 16, 8, -6, -21, -41, -33,
    -- layer=1 filter=92 channel=24
    9, -52, -49, 17, 11, -23, 1, -11, -2,
    -- layer=1 filter=92 channel=25
    -25, -5, 27, 20, 5, -16, -4, -19, -5,
    -- layer=1 filter=92 channel=26
    -11, -12, 0, -5, -1, 11, -5, 0, 18,
    -- layer=1 filter=92 channel=27
    15, -17, 13, -1, -2, 28, -2, -16, 8,
    -- layer=1 filter=92 channel=28
    35, 36, 19, -13, -25, 29, -11, -22, -52,
    -- layer=1 filter=92 channel=29
    -10, 4, 7, -3, 2, 7, 20, 10, -11,
    -- layer=1 filter=92 channel=30
    4, 8, 8, 5, 19, 8, 10, -15, -11,
    -- layer=1 filter=92 channel=31
    0, 15, 0, -18, -6, 9, -4, -9, -6,
    -- layer=1 filter=92 channel=32
    34, -12, 0, 7, 4, 22, -5, -27, 0,
    -- layer=1 filter=92 channel=33
    8, -11, 3, -4, 4, -8, -13, -4, 7,
    -- layer=1 filter=92 channel=34
    18, 11, 3, -3, 9, 0, 11, -20, -7,
    -- layer=1 filter=92 channel=35
    26, 13, 4, 18, -3, -5, -8, -11, -19,
    -- layer=1 filter=92 channel=36
    5, 24, -8, 6, 29, 24, -12, -20, -23,
    -- layer=1 filter=92 channel=37
    4, 26, 20, -11, -1, -18, -4, -15, -23,
    -- layer=1 filter=92 channel=38
    9, 8, 27, 11, 2, -2, -27, -31, -24,
    -- layer=1 filter=92 channel=39
    -22, 12, -17, -3, -4, 15, -14, 2, -3,
    -- layer=1 filter=92 channel=40
    1, 26, 0, -4, 0, 0, 14, -22, -47,
    -- layer=1 filter=92 channel=41
    25, 9, -12, -16, 3, 5, -2, 12, -36,
    -- layer=1 filter=92 channel=42
    23, 18, 16, -15, -23, -27, -13, -30, -8,
    -- layer=1 filter=92 channel=43
    -35, 1, 18, 0, 10, -20, 12, 7, -1,
    -- layer=1 filter=92 channel=44
    25, 10, -6, 6, 9, -10, -19, -32, 22,
    -- layer=1 filter=92 channel=45
    -8, 22, 25, 12, -7, -11, 8, 6, 3,
    -- layer=1 filter=92 channel=46
    -4, 22, 25, 25, 26, 24, -15, -13, -42,
    -- layer=1 filter=92 channel=47
    -1, 8, 18, 14, -13, 5, -2, -15, -39,
    -- layer=1 filter=92 channel=48
    9, 32, 7, 8, 34, 9, -7, 28, -25,
    -- layer=1 filter=92 channel=49
    13, 31, -22, -27, -5, 16, -21, 4, -29,
    -- layer=1 filter=92 channel=50
    -3, 23, 23, -15, 4, -10, -15, -10, -24,
    -- layer=1 filter=92 channel=51
    6, 21, 21, -13, -26, -5, -13, -7, -35,
    -- layer=1 filter=92 channel=52
    29, 4, 6, 8, 1, 11, -10, -18, -7,
    -- layer=1 filter=92 channel=53
    20, 11, -17, 2, 44, 35, -13, -4, 10,
    -- layer=1 filter=92 channel=54
    7, 17, 20, -1, -22, -4, 0, -15, -31,
    -- layer=1 filter=92 channel=55
    9, 1, 22, 30, 8, 21, 9, -11, 10,
    -- layer=1 filter=92 channel=56
    -1, 23, 14, -10, -6, -4, -2, -7, -37,
    -- layer=1 filter=92 channel=57
    20, 7, 4, -5, -14, 7, -31, -15, -2,
    -- layer=1 filter=92 channel=58
    3, -10, 11, 20, 27, 0, -38, -14, -16,
    -- layer=1 filter=92 channel=59
    15, 11, 10, -10, 1, 3, -34, -9, -22,
    -- layer=1 filter=92 channel=60
    18, 19, 22, -1, 27, 7, -35, -25, -11,
    -- layer=1 filter=92 channel=61
    8, 22, 12, 4, 0, -14, -5, -26, -40,
    -- layer=1 filter=92 channel=62
    9, 0, -35, 16, -14, 0, 14, -5, 3,
    -- layer=1 filter=92 channel=63
    33, 47, 9, 100, 85, 60, -7, 42, 1,
    -- layer=1 filter=93 channel=0
    20, -61, -9, 33, -39, -6, 16, -38, -7,
    -- layer=1 filter=93 channel=1
    -44, 9, -31, -26, 38, -59, -17, 15, -29,
    -- layer=1 filter=93 channel=2
    25, -3, 25, 51, -6, 33, 45, -21, 7,
    -- layer=1 filter=93 channel=3
    -44, -26, -58, 32, 23, -29, -29, -24, -44,
    -- layer=1 filter=93 channel=4
    1, -50, -15, -4, -35, -18, 16, -14, -31,
    -- layer=1 filter=93 channel=5
    -9, 0, 12, 10, -3, -19, -12, -30, -22,
    -- layer=1 filter=93 channel=6
    7, -43, -22, -1, -6, -48, 22, -17, -25,
    -- layer=1 filter=93 channel=7
    9, -5, -25, -18, 26, -34, -16, 15, -17,
    -- layer=1 filter=93 channel=8
    -48, -1, -74, -49, 1, -61, -31, 12, -57,
    -- layer=1 filter=93 channel=9
    -51, -35, -21, 57, -41, 17, 20, -15, -23,
    -- layer=1 filter=93 channel=10
    30, 38, 71, 22, 28, 55, 14, 14, 26,
    -- layer=1 filter=93 channel=11
    -23, -42, -27, -11, -38, -14, -8, -49, -16,
    -- layer=1 filter=93 channel=12
    45, -78, 18, 69, -62, 22, 74, -60, 16,
    -- layer=1 filter=93 channel=13
    -14, -16, -26, 9, -25, -25, -21, -22, -45,
    -- layer=1 filter=93 channel=14
    -14, -26, -58, 21, -38, -28, 0, -20, -22,
    -- layer=1 filter=93 channel=15
    1, 2, -9, -10, 31, -19, 8, 38, -23,
    -- layer=1 filter=93 channel=16
    -16, 38, 14, -9, 84, 3, -30, 16, -53,
    -- layer=1 filter=93 channel=17
    8, -7, -41, 10, 58, -39, 0, 7, -19,
    -- layer=1 filter=93 channel=18
    1, -6, -14, 4, 8, -7, 8, 3, 10,
    -- layer=1 filter=93 channel=19
    -37, 38, -30, -31, 17, -3, -15, 21, -12,
    -- layer=1 filter=93 channel=20
    56, -60, 0, 64, -43, 0, 72, -42, 1,
    -- layer=1 filter=93 channel=21
    15, 17, 27, 19, -6, 28, 27, 17, 27,
    -- layer=1 filter=93 channel=22
    -18, -15, -14, 39, -5, -2, 21, -29, -7,
    -- layer=1 filter=93 channel=23
    23, -38, -83, 60, 7, -84, 31, -49, -112,
    -- layer=1 filter=93 channel=24
    9, 20, 31, 55, 28, 37, 19, 5, 53,
    -- layer=1 filter=93 channel=25
    -49, 67, 0, -65, 82, -53, -65, 82, -34,
    -- layer=1 filter=93 channel=26
    27, 21, 16, 0, 3, 14, 4, 13, 5,
    -- layer=1 filter=93 channel=27
    45, -66, 5, 43, -36, 38, 45, -69, 16,
    -- layer=1 filter=93 channel=28
    -75, 46, -40, -56, 27, -21, -41, 33, -31,
    -- layer=1 filter=93 channel=29
    -65, 74, -31, -80, 62, -53, -37, 78, -54,
    -- layer=1 filter=93 channel=30
    -9, 9, -3, -12, 6, -13, -8, 13, -8,
    -- layer=1 filter=93 channel=31
    -4, 30, -21, -38, 36, -18, -11, 43, -30,
    -- layer=1 filter=93 channel=32
    45, -90, 11, 53, -122, 29, 60, -151, 33,
    -- layer=1 filter=93 channel=33
    8, 6, 8, 2, -6, 9, 8, 16, -7,
    -- layer=1 filter=93 channel=34
    -40, 17, -41, -25, -17, -17, 13, -9, -16,
    -- layer=1 filter=93 channel=35
    -7, 20, -11, -12, 52, -9, -15, 28, -37,
    -- layer=1 filter=93 channel=36
    -29, -29, -17, 29, 22, -8, -30, -11, -58,
    -- layer=1 filter=93 channel=37
    -41, -49, -38, -48, -49, -32, -26, -37, -45,
    -- layer=1 filter=93 channel=38
    -6, 11, -4, -12, 7, -10, 22, 29, 5,
    -- layer=1 filter=93 channel=39
    6, -10, -2, -20, 12, -3, 6, 14, -9,
    -- layer=1 filter=93 channel=40
    3, 25, 23, 8, 31, -15, 0, 51, -1,
    -- layer=1 filter=93 channel=41
    -25, 12, -17, 10, 30, -35, -1, 0, -60,
    -- layer=1 filter=93 channel=42
    10, -47, -31, 14, -30, -48, 14, -22, -11,
    -- layer=1 filter=93 channel=43
    -59, 87, -29, -59, 92, -40, -60, 76, -83,
    -- layer=1 filter=93 channel=44
    45, -24, 36, 50, -12, 21, 59, -37, 34,
    -- layer=1 filter=93 channel=45
    -39, 85, -35, -70, 92, -48, -61, 87, -47,
    -- layer=1 filter=93 channel=46
    9, -1, -6, 13, -6, -24, 8, 10, -29,
    -- layer=1 filter=93 channel=47
    -27, 30, -35, -38, 47, -30, -28, 47, -46,
    -- layer=1 filter=93 channel=48
    -36, -32, -30, 29, 2, -21, 12, -44, -50,
    -- layer=1 filter=93 channel=49
    39, -54, 15, 56, -17, 21, 50, -63, 30,
    -- layer=1 filter=93 channel=50
    -29, 13, -58, -37, 2, -43, -28, -4, -12,
    -- layer=1 filter=93 channel=51
    16, 4, 0, -1, -4, -36, 14, -13, -13,
    -- layer=1 filter=93 channel=52
    8, -16, 43, 4, 43, 14, -5, -20, -26,
    -- layer=1 filter=93 channel=53
    -55, -30, -28, 71, -12, 30, -13, -62, -35,
    -- layer=1 filter=93 channel=54
    0, -4, -24, -38, -4, -47, -5, 12, -38,
    -- layer=1 filter=93 channel=55
    37, -7, -33, 73, 27, -26, 29, 0, -63,
    -- layer=1 filter=93 channel=56
    -33, 32, -51, -38, 46, -56, -38, 35, -46,
    -- layer=1 filter=93 channel=57
    4, -21, -23, -6, -3, -4, 12, 0, 5,
    -- layer=1 filter=93 channel=58
    -10, 9, -54, -37, 42, 5, -39, 6, -29,
    -- layer=1 filter=93 channel=59
    18, -15, -13, 22, -2, -18, 4, -16, 8,
    -- layer=1 filter=93 channel=60
    -36, -19, -33, -17, 20, -12, -31, -16, -22,
    -- layer=1 filter=93 channel=61
    -17, -2, -47, -11, -23, -43, -13, -5, -31,
    -- layer=1 filter=93 channel=62
    135, 83, 59, 174, 104, 97, 127, 72, 68,
    -- layer=1 filter=93 channel=63
    18, 9, 1, 37, 17, 8, -5, -4, -20,
    -- layer=1 filter=94 channel=0
    -38, 17, 14, -31, -38, 36, -26, -55, 1,
    -- layer=1 filter=94 channel=1
    46, 5, -5, 33, 13, -41, 13, 9, 8,
    -- layer=1 filter=94 channel=2
    -43, -12, 5, -30, -33, 32, 18, -65, 25,
    -- layer=1 filter=94 channel=3
    -32, 13, 8, -9, -8, -19, 13, -26, 27,
    -- layer=1 filter=94 channel=4
    -10, 8, 1, 13, -27, -19, 7, -8, -20,
    -- layer=1 filter=94 channel=5
    33, -71, -9, 31, -28, -35, 1, 26, 23,
    -- layer=1 filter=94 channel=6
    15, -12, -41, -8, -12, -32, 10, 1, 8,
    -- layer=1 filter=94 channel=7
    12, -55, -7, 29, -59, 10, 10, -29, -7,
    -- layer=1 filter=94 channel=8
    29, -47, -3, 33, 5, -39, 17, 36, -23,
    -- layer=1 filter=94 channel=9
    -20, 28, 38, -4, -43, 42, 11, -18, 33,
    -- layer=1 filter=94 channel=10
    -4, 12, -38, -23, 3, -50, -1, -13, -15,
    -- layer=1 filter=94 channel=11
    -9, -38, -2, 17, -20, -21, 8, 17, -16,
    -- layer=1 filter=94 channel=12
    -69, 74, 10, -53, 73, 60, -33, -8, 51,
    -- layer=1 filter=94 channel=13
    25, 0, 37, 0, -34, 9, -2, -35, -31,
    -- layer=1 filter=94 channel=14
    0, -17, 2, -1, -33, 6, 26, -47, -24,
    -- layer=1 filter=94 channel=15
    -15, -13, 22, 14, -39, -1, 29, 8, -28,
    -- layer=1 filter=94 channel=16
    34, 10, -25, 32, 5, -39, 20, -28, -21,
    -- layer=1 filter=94 channel=17
    -71, -10, -15, -27, -21, 14, 2, -52, 23,
    -- layer=1 filter=94 channel=18
    -13, 6, 8, -4, 2, 0, 0, -2, -9,
    -- layer=1 filter=94 channel=19
    36, -71, 14, 21, -15, -12, 5, 15, 17,
    -- layer=1 filter=94 channel=20
    -68, 47, -16, -80, 29, 13, -22, -9, 10,
    -- layer=1 filter=94 channel=21
    -4, 31, 19, -34, -4, 24, -17, -43, -3,
    -- layer=1 filter=94 channel=22
    68, -63, -61, 14, -5, -29, 14, 13, 34,
    -- layer=1 filter=94 channel=23
    -22, -10, -28, 11, 20, 30, 17, -37, -22,
    -- layer=1 filter=94 channel=24
    -56, 12, -6, -68, 33, -8, 17, 18, 29,
    -- layer=1 filter=94 channel=25
    36, 31, -95, 5, 88, -31, -19, 41, 23,
    -- layer=1 filter=94 channel=26
    -50, -11, 20, 0, 4, 3, -5, 5, -4,
    -- layer=1 filter=94 channel=27
    -5, 34, 22, 3, 29, 45, 17, -21, 33,
    -- layer=1 filter=94 channel=28
    41, -50, 2, 90, -14, 57, 27, 60, -38,
    -- layer=1 filter=94 channel=29
    85, 5, -36, 46, 78, -88, 12, 73, 8,
    -- layer=1 filter=94 channel=30
    -10, 4, 6, -6, -23, -10, 2, 2, 9,
    -- layer=1 filter=94 channel=31
    19, -22, 12, 27, 31, -18, -1, 46, -6,
    -- layer=1 filter=94 channel=32
    -59, 88, 10, -42, 68, 62, 3, 0, 23,
    -- layer=1 filter=94 channel=33
    5, -13, 0, 4, -12, -13, -4, -10, -15,
    -- layer=1 filter=94 channel=34
    -3, -14, 4, 30, -27, 11, 12, 1, -23,
    -- layer=1 filter=94 channel=35
    3, -39, 18, 5, -1, -44, -15, 8, 5,
    -- layer=1 filter=94 channel=36
    -11, -3, 28, -4, -23, -10, -4, -14, -14,
    -- layer=1 filter=94 channel=37
    7, 24, 29, 30, -21, 8, 6, -7, -38,
    -- layer=1 filter=94 channel=38
    -24, -21, 21, -12, -37, 25, 8, -25, -7,
    -- layer=1 filter=94 channel=39
    -1, 9, -15, -5, 3, 7, 7, -14, 0,
    -- layer=1 filter=94 channel=40
    19, -49, -38, 15, -29, -67, 26, -1, -32,
    -- layer=1 filter=94 channel=41
    35, -81, 4, 55, -3, -41, 18, 32, 2,
    -- layer=1 filter=94 channel=42
    12, -17, -7, 11, -44, -22, 3, -32, -5,
    -- layer=1 filter=94 channel=43
    55, -19, -64, 6, 75, -64, -12, 76, 51,
    -- layer=1 filter=94 channel=44
    -58, 11, -1, -85, -15, 31, -14, -44, 28,
    -- layer=1 filter=94 channel=45
    57, 27, -95, 28, 103, -46, -38, 104, 19,
    -- layer=1 filter=94 channel=46
    12, -90, -72, 13, -64, -99, 34, -17, -69,
    -- layer=1 filter=94 channel=47
    26, -54, -14, 28, 0, -66, -4, 29, -40,
    -- layer=1 filter=94 channel=48
    40, -97, -48, 2, 6, -48, -1, 11, 18,
    -- layer=1 filter=94 channel=49
    -27, -7, -25, -27, 0, -3, -18, 0, 15,
    -- layer=1 filter=94 channel=50
    19, -20, 36, 35, -1, -29, 16, 3, -41,
    -- layer=1 filter=94 channel=51
    8, -34, -25, 7, -33, -39, 18, -8, 5,
    -- layer=1 filter=94 channel=52
    -33, -11, -40, -34, 13, -45, 14, -5, -13,
    -- layer=1 filter=94 channel=53
    -66, 13, 28, -40, -12, 51, -2, -57, 57,
    -- layer=1 filter=94 channel=54
    4, -38, 5, 7, -27, -29, 8, 4, -17,
    -- layer=1 filter=94 channel=55
    7, 36, -13, 0, 25, 25, 29, -13, 7,
    -- layer=1 filter=94 channel=56
    56, -21, -42, 27, 30, -86, -10, 26, -26,
    -- layer=1 filter=94 channel=57
    -23, -22, 10, 0, -47, 15, 4, -20, -6,
    -- layer=1 filter=94 channel=58
    19, -29, 19, 69, -37, 13, 34, -50, 0,
    -- layer=1 filter=94 channel=59
    4, 18, 34, -50, 6, 7, -20, -16, 3,
    -- layer=1 filter=94 channel=60
    -17, 36, 22, -19, 21, 23, -4, -13, 5,
    -- layer=1 filter=94 channel=61
    10, -37, 12, 33, -39, -12, 15, -35, -31,
    -- layer=1 filter=94 channel=62
    -78, 91, -20, -34, 124, 24, -27, 78, 36,
    -- layer=1 filter=94 channel=63
    -28, -31, -36, -16, 11, -11, 16, -20, 1,
    -- layer=1 filter=95 channel=0
    -2, -15, 5, -8, -15, 4, 29, -6, 16,
    -- layer=1 filter=95 channel=1
    -10, -5, -7, -9, -9, -20, -19, -7, -9,
    -- layer=1 filter=95 channel=2
    -19, -6, 5, -20, -12, -21, -5, -8, -5,
    -- layer=1 filter=95 channel=3
    -8, 0, 0, 6, 4, 2, -3, 0, 9,
    -- layer=1 filter=95 channel=4
    -17, -17, -9, 1, -12, -19, -16, -3, -4,
    -- layer=1 filter=95 channel=5
    -18, 14, 16, 0, 15, 2, 17, -5, -13,
    -- layer=1 filter=95 channel=6
    -24, -4, -5, -21, -20, -18, -10, -15, 0,
    -- layer=1 filter=95 channel=7
    -25, -8, -12, 2, -5, -23, -18, -11, 0,
    -- layer=1 filter=95 channel=8
    -12, -23, 0, -3, -13, 0, -25, -2, -23,
    -- layer=1 filter=95 channel=9
    -7, 6, 8, 10, -1, -10, 0, -3, -10,
    -- layer=1 filter=95 channel=10
    18, 3, 4, 17, 28, -1, 5, 22, 0,
    -- layer=1 filter=95 channel=11
    -17, -20, -12, -4, 5, -14, 0, -16, 0,
    -- layer=1 filter=95 channel=12
    -4, -30, -39, -10, -15, -13, 30, -18, 12,
    -- layer=1 filter=95 channel=13
    6, -6, 9, -17, -12, -18, 0, -5, 9,
    -- layer=1 filter=95 channel=14
    0, -9, -2, -19, -12, -3, -9, -21, -5,
    -- layer=1 filter=95 channel=15
    -6, 0, 11, -8, -15, -16, 14, 0, 5,
    -- layer=1 filter=95 channel=16
    -11, 4, -6, 2, 5, -14, -3, 9, -15,
    -- layer=1 filter=95 channel=17
    0, -9, 0, 6, -8, 10, 23, 12, 14,
    -- layer=1 filter=95 channel=18
    -3, -3, 13, 6, -6, 6, -9, 4, 6,
    -- layer=1 filter=95 channel=19
    -7, 6, -18, -18, -3, -14, -7, -17, -14,
    -- layer=1 filter=95 channel=20
    -18, -4, -17, -12, -22, 4, 1, -19, 3,
    -- layer=1 filter=95 channel=21
    -10, -12, -8, -14, -10, 4, -10, 6, 4,
    -- layer=1 filter=95 channel=22
    -5, -7, -4, -7, 7, 3, -4, -7, -19,
    -- layer=1 filter=95 channel=23
    15, 14, -3, 11, 11, 16, 15, 14, 8,
    -- layer=1 filter=95 channel=24
    21, 11, -18, 11, 1, -20, -9, -21, 12,
    -- layer=1 filter=95 channel=25
    -21, -2, -10, -15, -7, 4, -8, 10, -26,
    -- layer=1 filter=95 channel=26
    7, -2, 5, 15, -3, -1, 11, -20, -15,
    -- layer=1 filter=95 channel=27
    -3, -12, -12, -18, -21, -8, 22, 0, 16,
    -- layer=1 filter=95 channel=28
    -4, -13, -13, -5, -19, -6, -18, -14, -17,
    -- layer=1 filter=95 channel=29
    4, -7, -14, -28, -14, 0, -20, 8, -24,
    -- layer=1 filter=95 channel=30
    -7, -11, -7, -10, 6, -10, -11, -6, 0,
    -- layer=1 filter=95 channel=31
    -9, 8, -10, 9, -14, -11, -19, -5, -8,
    -- layer=1 filter=95 channel=32
    -1, -12, -5, -12, -2, 1, 44, -21, 9,
    -- layer=1 filter=95 channel=33
    -11, 11, 6, 15, 13, -4, 7, -6, -6,
    -- layer=1 filter=95 channel=34
    -3, -20, -9, 5, 3, -5, 0, -5, -20,
    -- layer=1 filter=95 channel=35
    2, -3, 1, 5, 10, -6, -9, -6, -14,
    -- layer=1 filter=95 channel=36
    2, 14, -2, 1, -18, -3, -19, -5, 24,
    -- layer=1 filter=95 channel=37
    -7, -16, 3, 3, -20, -14, -13, 3, -5,
    -- layer=1 filter=95 channel=38
    14, -3, 0, -8, -8, 9, -12, 6, -10,
    -- layer=1 filter=95 channel=39
    8, -2, -13, 10, -2, -7, 15, 8, 13,
    -- layer=1 filter=95 channel=40
    -23, -24, -8, -6, -10, -21, -11, -2, -1,
    -- layer=1 filter=95 channel=41
    0, 3, 1, -14, 5, -18, 5, -4, -22,
    -- layer=1 filter=95 channel=42
    -23, -14, -6, -11, -1, 8, -5, 3, -3,
    -- layer=1 filter=95 channel=43
    -6, 4, -17, -33, 12, 8, -27, 27, -10,
    -- layer=1 filter=95 channel=44
    -17, -24, -5, -17, -3, -19, 8, -22, 2,
    -- layer=1 filter=95 channel=45
    7, -1, 6, -2, -5, -21, -6, 3, 3,
    -- layer=1 filter=95 channel=46
    -1, -2, -2, 5, 11, -12, -6, -15, -9,
    -- layer=1 filter=95 channel=47
    -2, -12, -8, -15, 2, -3, -1, 4, -21,
    -- layer=1 filter=95 channel=48
    -2, -2, 1, -8, 1, -10, -10, -10, -24,
    -- layer=1 filter=95 channel=49
    0, -10, -9, 8, -2, 5, -1, -18, -4,
    -- layer=1 filter=95 channel=50
    -8, 1, -8, 7, -8, -2, -6, -21, 4,
    -- layer=1 filter=95 channel=51
    3, -5, -12, -1, 1, -3, -23, -17, -22,
    -- layer=1 filter=95 channel=52
    0, 25, 6, 20, 11, 5, -5, 12, 11,
    -- layer=1 filter=95 channel=53
    -7, -9, 1, -15, -17, -1, -4, -6, -9,
    -- layer=1 filter=95 channel=54
    -17, -2, 0, -10, -20, -14, -21, 6, -10,
    -- layer=1 filter=95 channel=55
    -11, 2, 10, -6, 7, 9, 13, 0, 0,
    -- layer=1 filter=95 channel=56
    -1, -13, -4, -3, -5, 3, -26, 3, -7,
    -- layer=1 filter=95 channel=57
    3, -3, 0, -7, -1, -13, -12, 3, -6,
    -- layer=1 filter=95 channel=58
    7, -5, 0, 3, 0, -3, 4, 2, 3,
    -- layer=1 filter=95 channel=59
    -10, 12, 0, 0, 2, 9, -5, 10, 10,
    -- layer=1 filter=95 channel=60
    -17, -13, -8, -7, -1, 2, -13, -10, -17,
    -- layer=1 filter=95 channel=61
    2, -14, -9, 0, -18, -5, -2, -20, -9,
    -- layer=1 filter=95 channel=62
    17, -3, -7, 17, -10, 8, 21, -6, 11,
    -- layer=1 filter=95 channel=63
    -8, 1, 2, 1, 0, -13, -12, -6, 3,
    -- layer=1 filter=96 channel=0
    -60, 48, -1, -84, 45, -12, -55, 51, 21,
    -- layer=1 filter=96 channel=1
    47, -18, 14, 35, -8, 1, 5, -17, -8,
    -- layer=1 filter=96 channel=2
    -35, 35, 2, -76, 51, -32, -42, 50, 2,
    -- layer=1 filter=96 channel=3
    -10, -16, 6, 17, -20, -1, 6, -33, -16,
    -- layer=1 filter=96 channel=4
    -16, 13, -8, -31, 2, 13, -13, -5, 4,
    -- layer=1 filter=96 channel=5
    -35, -12, -5, -54, 2, 5, -45, -1, -3,
    -- layer=1 filter=96 channel=6
    11, 5, -6, -12, -6, 22, -37, 23, -2,
    -- layer=1 filter=96 channel=7
    -4, -9, 4, 19, -10, 5, 10, 3, -2,
    -- layer=1 filter=96 channel=8
    16, -20, -8, 30, -39, 28, 35, -53, 13,
    -- layer=1 filter=96 channel=9
    -2, 2, 7, -33, 18, -4, -5, 15, 1,
    -- layer=1 filter=96 channel=10
    0, -35, -19, -8, -44, -46, 16, -14, -33,
    -- layer=1 filter=96 channel=11
    -5, 16, -15, -16, 13, 16, -4, -7, -4,
    -- layer=1 filter=96 channel=12
    -82, 63, -6, -115, 61, -45, -93, 80, -19,
    -- layer=1 filter=96 channel=13
    -33, 31, 9, -55, 46, -14, -40, 33, -2,
    -- layer=1 filter=96 channel=14
    -10, 10, 7, -20, 15, 5, -5, -6, 21,
    -- layer=1 filter=96 channel=15
    24, -12, -7, 17, -35, 14, 13, -35, -10,
    -- layer=1 filter=96 channel=16
    38, -20, -6, 41, -72, -23, 56, -34, -12,
    -- layer=1 filter=96 channel=17
    -35, 26, 25, -53, -9, 0, -9, 39, 34,
    -- layer=1 filter=96 channel=18
    17, -3, 7, -14, -7, -3, 11, -5, 8,
    -- layer=1 filter=96 channel=19
    25, -13, 5, 16, -20, 14, 19, -30, 17,
    -- layer=1 filter=96 channel=20
    -43, 40, 0, -67, 50, -10, -68, 44, 9,
    -- layer=1 filter=96 channel=21
    2, 28, 5, -18, 10, 2, -40, 45, -17,
    -- layer=1 filter=96 channel=22
    -23, 9, 29, 6, -6, -20, -31, -38, 12,
    -- layer=1 filter=96 channel=23
    -5, -30, -9, -4, -7, 15, 17, -5, 23,
    -- layer=1 filter=96 channel=24
    -22, 9, 13, 3, 4, -3, 4, 35, 27,
    -- layer=1 filter=96 channel=25
    53, -96, -9, 82, -80, 5, 64, -36, -19,
    -- layer=1 filter=96 channel=26
    -7, 0, -7, -3, 0, 0, 12, 17, 1,
    -- layer=1 filter=96 channel=27
    -93, 63, 0, -79, 88, -46, -40, 78, -4,
    -- layer=1 filter=96 channel=28
    0, -32, -23, 34, 21, 23, 42, -17, 19,
    -- layer=1 filter=96 channel=29
    55, -73, -4, 68, -143, 23, 81, -91, 12,
    -- layer=1 filter=96 channel=30
    2, -1, 3, -1, 3, 20, 8, -18, -5,
    -- layer=1 filter=96 channel=31
    43, -36, 13, 42, -51, 2, 29, -40, -2,
    -- layer=1 filter=96 channel=32
    -59, 45, -22, -125, 49, -62, -59, 50, 2,
    -- layer=1 filter=96 channel=33
    -10, -6, 0, -11, 8, 6, 0, -15, 4,
    -- layer=1 filter=96 channel=34
    0, -20, -13, 19, -14, -2, 10, -2, 13,
    -- layer=1 filter=96 channel=35
    8, -32, 7, 37, -55, -3, 17, -32, 15,
    -- layer=1 filter=96 channel=36
    -12, 13, -8, 0, -3, 8, 23, 0, 15,
    -- layer=1 filter=96 channel=37
    4, -6, 13, -5, -1, -5, -11, 4, 0,
    -- layer=1 filter=96 channel=38
    17, -22, 20, 12, -20, 19, 0, -29, -16,
    -- layer=1 filter=96 channel=39
    8, 9, -10, -3, -7, -8, 11, -26, 1,
    -- layer=1 filter=96 channel=40
    6, -17, -11, 8, -60, 2, 29, -36, 13,
    -- layer=1 filter=96 channel=41
    0, -29, 6, -8, -13, 21, -13, -6, 20,
    -- layer=1 filter=96 channel=42
    -17, 6, 25, -33, 6, 21, -38, 26, -6,
    -- layer=1 filter=96 channel=43
    46, -92, 0, 63, -124, 17, 64, -65, 27,
    -- layer=1 filter=96 channel=44
    -19, 12, 13, -27, 38, -27, -28, 27, -13,
    -- layer=1 filter=96 channel=45
    36, -43, 13, 77, -84, 42, 98, -20, 36,
    -- layer=1 filter=96 channel=46
    11, -27, -12, 1, -61, 21, 39, -11, 10,
    -- layer=1 filter=96 channel=47
    29, -26, -11, 45, -86, 32, 50, -63, 25,
    -- layer=1 filter=96 channel=48
    -16, -17, 0, -29, -13, -32, -29, -24, 13,
    -- layer=1 filter=96 channel=49
    -17, 14, 10, -32, 60, -19, -15, 25, -12,
    -- layer=1 filter=96 channel=50
    20, -3, -6, 31, -25, 10, 26, -43, -2,
    -- layer=1 filter=96 channel=51
    7, -7, -6, 8, 0, 9, 0, -6, 12,
    -- layer=1 filter=96 channel=52
    1, -11, -6, -5, -33, -23, 13, -31, -3,
    -- layer=1 filter=96 channel=53
    -58, -16, 16, -47, 10, -22, -47, 27, -5,
    -- layer=1 filter=96 channel=54
    -3, -22, 20, 3, -24, 21, 4, -20, 6,
    -- layer=1 filter=96 channel=55
    23, -9, 25, 18, -4, 12, 11, 5, 24,
    -- layer=1 filter=96 channel=56
    43, -55, -6, 42, -79, 28, 41, -49, 4,
    -- layer=1 filter=96 channel=57
    2, 2, 12, -10, 0, 15, 4, 13, -8,
    -- layer=1 filter=96 channel=58
    19, -20, 23, 24, -46, -9, 21, -35, 20,
    -- layer=1 filter=96 channel=59
    3, 2, 3, -8, -4, -10, 14, -9, -13,
    -- layer=1 filter=96 channel=60
    23, -17, 14, 30, -11, 9, -6, -18, -7,
    -- layer=1 filter=96 channel=61
    -5, -3, 3, 11, 9, -3, -6, -2, 15,
    -- layer=1 filter=96 channel=62
    105, 135, 23, 92, 111, 64, 141, 102, 110,
    -- layer=1 filter=96 channel=63
    -60, 41, -19, -43, -16, -6, 6, 4, 28,
    -- layer=1 filter=97 channel=0
    -5, -28, -16, -30, -18, -20, 13, 24, 26,
    -- layer=1 filter=97 channel=1
    -58, -39, -46, -16, -19, -29, -1, 3, 5,
    -- layer=1 filter=97 channel=2
    18, 36, 29, 4, 44, 34, 20, 40, 37,
    -- layer=1 filter=97 channel=3
    3, -2, 15, -2, 11, 3, 41, 33, 48,
    -- layer=1 filter=97 channel=4
    2, 11, 0, 1, 1, 0, -32, 12, 5,
    -- layer=1 filter=97 channel=5
    -42, -78, -71, 7, -2, 35, 8, 14, 28,
    -- layer=1 filter=97 channel=6
    8, 5, -5, 0, -1, 9, -25, 19, 13,
    -- layer=1 filter=97 channel=7
    11, -1, 0, 0, 1, -11, 0, 1, -19,
    -- layer=1 filter=97 channel=8
    -24, 0, -13, -1, -12, -3, -15, -32, -7,
    -- layer=1 filter=97 channel=9
    -32, 0, 0, 1, -17, -21, -24, 0, -8,
    -- layer=1 filter=97 channel=10
    -15, 5, -20, -1, -7, 0, 17, 0, -29,
    -- layer=1 filter=97 channel=11
    -13, -11, 2, -8, 7, 22, -21, 9, 8,
    -- layer=1 filter=97 channel=12
    -46, -44, 4, -91, -54, -10, -50, -5, 0,
    -- layer=1 filter=97 channel=13
    -35, -20, -38, -41, -38, -30, 31, 5, 10,
    -- layer=1 filter=97 channel=14
    -6, 6, -2, -13, 6, 6, 27, 13, 23,
    -- layer=1 filter=97 channel=15
    -10, 19, 22, 1, 5, 12, -46, -22, -21,
    -- layer=1 filter=97 channel=16
    -8, -35, 32, -16, -3, 45, 59, 20, 65,
    -- layer=1 filter=97 channel=17
    -84, -120, -51, -66, -42, -35, 49, 30, 20,
    -- layer=1 filter=97 channel=18
    -5, 4, 4, -8, -16, -10, -3, 5, -2,
    -- layer=1 filter=97 channel=19
    -14, -15, 11, 10, -4, 8, -37, -20, -3,
    -- layer=1 filter=97 channel=20
    7, 16, 5, 2, 12, 0, 6, 5, 22,
    -- layer=1 filter=97 channel=21
    -42, -37, -45, -26, 13, -28, 26, 6, 17,
    -- layer=1 filter=97 channel=22
    -69, -52, -46, 37, 15, 41, 73, 54, 62,
    -- layer=1 filter=97 channel=23
    -39, -47, -52, -44, -72, -51, -34, -62, -48,
    -- layer=1 filter=97 channel=24
    -51, -36, -30, -37, -29, -36, -4, -22, -25,
    -- layer=1 filter=97 channel=25
    -25, -89, -13, -69, -65, -55, -26, -75, -49,
    -- layer=1 filter=97 channel=26
    -5, 2, 3, -15, -20, 6, -27, -53, 5,
    -- layer=1 filter=97 channel=27
    -70, -62, -31, -83, -47, -31, -31, -2, 0,
    -- layer=1 filter=97 channel=28
    -27, -17, -6, -32, -2, -13, 18, -35, -41,
    -- layer=1 filter=97 channel=29
    -103, -101, -47, -82, -117, -90, -61, -101, -77,
    -- layer=1 filter=97 channel=30
    -11, -8, 3, -6, -12, 3, 11, -8, -14,
    -- layer=1 filter=97 channel=31
    -7, 7, 14, -25, -19, 5, -39, -26, -37,
    -- layer=1 filter=97 channel=32
    -39, 1, 39, -82, -41, 19, -8, -7, 46,
    -- layer=1 filter=97 channel=33
    -17, -11, 3, -6, 7, 4, 11, 7, 0,
    -- layer=1 filter=97 channel=34
    -8, 9, 9, -1, -9, -6, -12, -21, -17,
    -- layer=1 filter=97 channel=35
    3, -1, 6, 14, 6, 8, -17, -6, 11,
    -- layer=1 filter=97 channel=36
    -17, -20, 17, 11, -11, -7, 26, 4, 28,
    -- layer=1 filter=97 channel=37
    -3, 10, -3, 4, 2, -17, -7, 3, 8,
    -- layer=1 filter=97 channel=38
    1, 5, 16, 6, -5, -4, -19, -7, -19,
    -- layer=1 filter=97 channel=39
    10, -20, -3, 7, 3, -4, -4, -8, 7,
    -- layer=1 filter=97 channel=40
    25, 12, 3, 15, 24, 26, 6, 28, 28,
    -- layer=1 filter=97 channel=41
    -55, -86, -76, -17, 10, 40, -10, 25, 53,
    -- layer=1 filter=97 channel=42
    6, 19, 6, 1, 7, 5, 20, 9, 19,
    -- layer=1 filter=97 channel=43
    -30, -85, -38, -31, -83, -29, -41, -47, -37,
    -- layer=1 filter=97 channel=44
    6, 16, 33, 16, 9, 20, -22, 13, 27,
    -- layer=1 filter=97 channel=45
    -27, -134, -30, -88, -161, -103, -91, -137, -110,
    -- layer=1 filter=97 channel=46
    4, 8, -5, 12, 14, -4, -17, 11, 2,
    -- layer=1 filter=97 channel=47
    -6, 10, 28, 0, -11, -5, -4, -8, 2,
    -- layer=1 filter=97 channel=48
    -84, -77, -51, 28, 7, 42, 34, 44, 61,
    -- layer=1 filter=97 channel=49
    -31, -7, -2, 6, 22, 49, -13, 41, 27,
    -- layer=1 filter=97 channel=50
    12, 10, 1, -4, 2, 3, -28, -22, -13,
    -- layer=1 filter=97 channel=51
    12, 9, 20, 21, 27, 17, -8, -3, 11,
    -- layer=1 filter=97 channel=52
    -116, -104, -68, -44, -14, -26, 66, 0, 18,
    -- layer=1 filter=97 channel=53
    14, 23, 25, 2, 20, 15, 69, 40, 38,
    -- layer=1 filter=97 channel=54
    15, 16, -3, 2, 0, 1, -18, 0, 9,
    -- layer=1 filter=97 channel=55
    -88, -96, -49, -38, 4, -47, 22, -10, 11,
    -- layer=1 filter=97 channel=56
    -22, -9, -3, -8, -32, 0, 7, -9, 7,
    -- layer=1 filter=97 channel=57
    5, 32, 34, -4, 0, 28, 2, -9, 18,
    -- layer=1 filter=97 channel=58
    -14, 0, 22, -17, -7, -9, 13, 0, 26,
    -- layer=1 filter=97 channel=59
    -20, 6, 7, 0, -16, -29, -35, -35, -27,
    -- layer=1 filter=97 channel=60
    6, 16, 32, -12, 9, -21, 0, -6, -8,
    -- layer=1 filter=97 channel=61
    -3, 0, -27, 9, 5, -8, 16, 4, 21,
    -- layer=1 filter=97 channel=62
    -134, -97, -12, -139, -107, -37, -72, -74, -10,
    -- layer=1 filter=97 channel=63
    -20, -30, 22, -2, -2, 57, 49, 22, 55,
    -- layer=1 filter=98 channel=0
    -43, -4, -6, -2, 0, 0, 19, 11, 7,
    -- layer=1 filter=98 channel=1
    27, -24, -18, 14, 9, 14, 7, -7, 7,
    -- layer=1 filter=98 channel=2
    -14, -2, 20, 3, -24, -16, 28, -9, 0,
    -- layer=1 filter=98 channel=3
    18, 16, -11, 30, -12, 14, 31, 57, 50,
    -- layer=1 filter=98 channel=4
    -21, -45, -20, 7, 22, 7, 31, 4, 0,
    -- layer=1 filter=98 channel=5
    12, -37, 24, 69, 70, 41, 45, 52, 47,
    -- layer=1 filter=98 channel=6
    -3, -30, -12, 3, 36, 14, 9, 10, 4,
    -- layer=1 filter=98 channel=7
    2, -43, -31, -11, 7, 13, 28, 26, 0,
    -- layer=1 filter=98 channel=8
    -19, -27, -47, 19, 0, -11, 9, 9, 6,
    -- layer=1 filter=98 channel=9
    -13, -15, 8, 7, -12, -5, -7, 18, -6,
    -- layer=1 filter=98 channel=10
    14, -9, 3, 37, 0, 6, -3, -10, 9,
    -- layer=1 filter=98 channel=11
    -22, -37, -13, 17, 34, -5, 9, 12, 29,
    -- layer=1 filter=98 channel=12
    -5, -12, 12, -31, 0, -14, 28, -4, -10,
    -- layer=1 filter=98 channel=13
    -16, -13, -5, 18, -5, -15, 28, 4, -4,
    -- layer=1 filter=98 channel=14
    -22, -7, -27, -5, -7, -23, 28, 12, 17,
    -- layer=1 filter=98 channel=15
    -2, -4, 7, -8, -21, -3, 18, 6, 30,
    -- layer=1 filter=98 channel=16
    -8, 8, -8, 13, -55, 12, 4, 23, 44,
    -- layer=1 filter=98 channel=17
    -22, 27, -8, -32, -10, 17, 31, 23, -14,
    -- layer=1 filter=98 channel=18
    0, 4, 5, -4, 11, 0, -9, -19, 15,
    -- layer=1 filter=98 channel=19
    -10, -30, -27, 21, 15, -5, -8, 7, 24,
    -- layer=1 filter=98 channel=20
    -21, -22, -13, -6, -12, 16, 5, 28, 4,
    -- layer=1 filter=98 channel=21
    6, 8, 8, 8, 26, 25, 20, 0, 4,
    -- layer=1 filter=98 channel=22
    87, 61, 37, 64, 76, 65, 15, 24, 58,
    -- layer=1 filter=98 channel=23
    -12, 19, -7, 7, -2, -8, 16, 10, 1,
    -- layer=1 filter=98 channel=24
    25, 8, 26, 21, 7, 0, -26, 22, -27,
    -- layer=1 filter=98 channel=25
    44, -25, -50, -38, -4, 35, -4, 4, -8,
    -- layer=1 filter=98 channel=26
    -1, 24, 6, 2, -16, 4, -6, 25, 26,
    -- layer=1 filter=98 channel=27
    -49, -38, 0, 14, 19, -18, 40, -29, -18,
    -- layer=1 filter=98 channel=28
    -18, -10, 10, 45, 5, -53, 33, 14, 34,
    -- layer=1 filter=98 channel=29
    12, -43, -44, 15, 0, 2, -13, 26, -3,
    -- layer=1 filter=98 channel=30
    29, 10, 0, 34, 12, 10, 6, -1, 0,
    -- layer=1 filter=98 channel=31
    15, 9, 10, -5, 10, 13, -14, 19, 12,
    -- layer=1 filter=98 channel=32
    -60, -34, 0, -40, -23, -20, 25, 6, -9,
    -- layer=1 filter=98 channel=33
    12, -11, 8, -5, 4, -1, 17, 15, -1,
    -- layer=1 filter=98 channel=34
    -3, -16, -25, 8, 16, 1, 24, 19, 19,
    -- layer=1 filter=98 channel=35
    7, -19, -22, -6, 2, 0, -16, 26, 26,
    -- layer=1 filter=98 channel=36
    19, 0, -16, -33, -83, -56, -18, -21, -1,
    -- layer=1 filter=98 channel=37
    -41, -37, -33, 12, -2, -23, 28, 15, -3,
    -- layer=1 filter=98 channel=38
    7, -1, 3, -35, -2, -5, 12, -2, 21,
    -- layer=1 filter=98 channel=39
    26, 9, -19, 6, -6, -4, -1, 9, 17,
    -- layer=1 filter=98 channel=40
    -14, -17, -27, 16, 40, 28, 18, 11, 24,
    -- layer=1 filter=98 channel=41
    16, -54, 5, 75, 74, 15, 20, 36, 30,
    -- layer=1 filter=98 channel=42
    -7, -12, -30, 12, 35, -1, 6, 33, -5,
    -- layer=1 filter=98 channel=43
    28, -28, -47, 10, 33, 16, 4, 38, 34,
    -- layer=1 filter=98 channel=44
    -3, 4, 2, -15, -31, -17, 11, 17, 1,
    -- layer=1 filter=98 channel=45
    12, -35, -65, -35, -18, -29, -48, 7, 25,
    -- layer=1 filter=98 channel=46
    -23, -50, -26, -5, 11, -11, -11, 7, 3,
    -- layer=1 filter=98 channel=47
    -29, -13, -45, -1, -19, -25, 11, 16, 33,
    -- layer=1 filter=98 channel=48
    57, 12, 24, 70, 71, 54, 42, 28, 55,
    -- layer=1 filter=98 channel=49
    0, 5, 33, 14, 22, -5, -7, -12, 19,
    -- layer=1 filter=98 channel=50
    -28, -8, -35, -1, 8, -17, 2, 2, 17,
    -- layer=1 filter=98 channel=51
    -10, -32, -27, 0, 14, 21, 0, 23, 19,
    -- layer=1 filter=98 channel=52
    -19, 23, 21, -21, -25, -21, -11, -5, 10,
    -- layer=1 filter=98 channel=53
    -10, 18, 3, 9, -63, -25, 48, 39, -2,
    -- layer=1 filter=98 channel=54
    -11, -37, -28, -5, 16, 0, 24, 8, 19,
    -- layer=1 filter=98 channel=55
    -7, 3, 4, -11, -13, 7, -17, 10, 0,
    -- layer=1 filter=98 channel=56
    9, -39, -46, -2, 13, 15, -19, 29, 0,
    -- layer=1 filter=98 channel=57
    -6, -16, -20, -18, -1, -2, 29, 13, 3,
    -- layer=1 filter=98 channel=58
    -19, 2, -32, -46, -111, -7, 42, 9, -3,
    -- layer=1 filter=98 channel=59
    1, -14, 11, -22, -29, 16, 5, 6, 8,
    -- layer=1 filter=98 channel=60
    11, -7, 8, -37, -44, -11, 11, 2, 3,
    -- layer=1 filter=98 channel=61
    -11, -35, -9, 0, 16, 5, 26, 30, -1,
    -- layer=1 filter=98 channel=62
    -83, -39, -46, -44, -70, -60, -33, -51, 1,
    -- layer=1 filter=98 channel=63
    9, 43, 14, 52, 32, 63, 26, 21, 55,
    -- layer=1 filter=99 channel=0
    9, -13, 0, -9, 12, -22, -12, 20, 12,
    -- layer=1 filter=99 channel=1
    -1, 22, 1, 16, 12, 18, 22, 2, 2,
    -- layer=1 filter=99 channel=2
    -10, -40, -11, 14, -20, 4, 26, 32, -12,
    -- layer=1 filter=99 channel=3
    -7, 6, 0, -16, -51, -24, -8, -5, 1,
    -- layer=1 filter=99 channel=4
    -25, -14, -32, -8, -3, -54, -31, -4, -15,
    -- layer=1 filter=99 channel=5
    13, 18, -22, -1, 16, -6, -35, -5, 46,
    -- layer=1 filter=99 channel=6
    -28, -28, -18, -10, -25, 0, -14, -30, 19,
    -- layer=1 filter=99 channel=7
    14, 7, 11, 3, -26, -24, 0, -22, 2,
    -- layer=1 filter=99 channel=8
    -12, -31, -53, -12, -5, -8, -5, -23, -19,
    -- layer=1 filter=99 channel=9
    -30, -40, -26, 3, -20, 0, -15, 5, -10,
    -- layer=1 filter=99 channel=10
    -35, -12, -29, -32, -22, -37, 6, 8, -16,
    -- layer=1 filter=99 channel=11
    -39, -54, -59, -22, -31, -65, -34, -27, 16,
    -- layer=1 filter=99 channel=12
    -9, 37, 27, 36, 48, 8, 36, 81, 21,
    -- layer=1 filter=99 channel=13
    24, 7, 15, 5, 26, -27, -10, 22, -18,
    -- layer=1 filter=99 channel=14
    6, 2, 10, 19, -17, -4, 17, 4, -12,
    -- layer=1 filter=99 channel=15
    -31, -40, -15, 8, 0, -22, -10, 3, -35,
    -- layer=1 filter=99 channel=16
    -21, 14, -16, 29, 5, 32, 3, 7, 39,
    -- layer=1 filter=99 channel=17
    13, 3, 9, 15, 10, -7, 11, 29, 22,
    -- layer=1 filter=99 channel=18
    -5, -15, 10, 0, -8, -15, -2, -12, 8,
    -- layer=1 filter=99 channel=19
    1, -19, -44, 2, 0, -23, 16, -20, 21,
    -- layer=1 filter=99 channel=20
    -30, -13, 18, 9, -31, -5, 5, 8, -13,
    -- layer=1 filter=99 channel=21
    31, 40, 27, 26, 21, 24, 10, 16, 4,
    -- layer=1 filter=99 channel=22
    1, 20, -8, 14, -1, 61, 34, 14, 57,
    -- layer=1 filter=99 channel=23
    -9, -11, -10, -8, 13, 12, 5, 12, -6,
    -- layer=1 filter=99 channel=24
    -33, -34, 20, -16, -26, -39, 35, 6, -12,
    -- layer=1 filter=99 channel=25
    -2, 46, 31, 11, 15, 56, 35, 28, 27,
    -- layer=1 filter=99 channel=26
    -36, -37, -17, -35, -49, -28, -37, -26, -12,
    -- layer=1 filter=99 channel=27
    4, 27, 15, 31, 41, 18, 21, 66, 41,
    -- layer=1 filter=99 channel=28
    32, -21, -16, 17, 38, -8, 23, 27, 8,
    -- layer=1 filter=99 channel=29
    18, 19, -9, 6, 27, 52, 19, 5, 37,
    -- layer=1 filter=99 channel=30
    -8, 17, 9, 0, 17, -5, 2, 15, 7,
    -- layer=1 filter=99 channel=31
    5, 11, -14, 4, 23, 33, 9, 10, 24,
    -- layer=1 filter=99 channel=32
    15, 21, 10, 48, 51, 18, 26, 59, 9,
    -- layer=1 filter=99 channel=33
    -7, 9, 7, -14, -5, -5, 0, -8, -6,
    -- layer=1 filter=99 channel=34
    -10, -30, -23, -46, -19, -27, -10, -22, -7,
    -- layer=1 filter=99 channel=35
    -32, -42, -69, -28, -21, -19, 14, -23, -1,
    -- layer=1 filter=99 channel=36
    -65, -47, -44, 16, -29, -40, 12, 11, 19,
    -- layer=1 filter=99 channel=37
    15, -11, -13, -30, -37, -50, -30, -26, -29,
    -- layer=1 filter=99 channel=38
    -55, -67, -37, -13, -20, 0, -13, -23, -28,
    -- layer=1 filter=99 channel=39
    20, 15, -4, -3, -4, 8, 16, 18, 3,
    -- layer=1 filter=99 channel=40
    -3, -3, -46, -6, 0, 14, -1, 4, 19,
    -- layer=1 filter=99 channel=41
    11, 3, -18, 10, 22, -12, -16, -4, 45,
    -- layer=1 filter=99 channel=42
    2, -3, 1, 14, -23, -9, 4, -8, -9,
    -- layer=1 filter=99 channel=43
    2, 33, 5, -4, 28, 73, 25, 10, 58,
    -- layer=1 filter=99 channel=44
    -68, -50, -26, -15, -15, -23, 0, 16, 11,
    -- layer=1 filter=99 channel=45
    13, 94, 24, 26, 73, 101, 45, 47, 105,
    -- layer=1 filter=99 channel=46
    15, -61, -53, -12, -40, -40, 22, -24, 11,
    -- layer=1 filter=99 channel=47
    -4, 1, -13, 0, 3, 3, 8, -1, -1,
    -- layer=1 filter=99 channel=48
    0, -9, -36, -18, -3, 0, -16, -9, 49,
    -- layer=1 filter=99 channel=49
    -2, 2, -48, 0, -3, -27, -25, 3, 11,
    -- layer=1 filter=99 channel=50
    -19, -6, -20, -6, -23, -48, -46, -44, -46,
    -- layer=1 filter=99 channel=51
    -25, -52, -46, -26, -14, -27, -20, -25, -10,
    -- layer=1 filter=99 channel=52
    -20, -47, -30, -30, -33, -15, -1, -3, -15,
    -- layer=1 filter=99 channel=53
    -62, -35, -2, 1, -28, -17, 15, 47, -6,
    -- layer=1 filter=99 channel=54
    -17, -12, -39, 0, -37, -18, -19, -34, -2,
    -- layer=1 filter=99 channel=55
    5, 35, 23, -4, 10, 10, 14, 16, -3,
    -- layer=1 filter=99 channel=56
    6, 17, 1, -11, 5, 24, 25, -24, 29,
    -- layer=1 filter=99 channel=57
    -52, -72, -53, -19, -24, -61, -34, -10, -23,
    -- layer=1 filter=99 channel=58
    7, 16, -15, 23, -4, -34, 19, -15, -9,
    -- layer=1 filter=99 channel=59
    -47, -48, -30, -36, -13, 15, -30, -48, 3,
    -- layer=1 filter=99 channel=60
    -20, -25, -8, -4, -21, -15, -14, -14, -35,
    -- layer=1 filter=99 channel=61
    8, 3, 6, 6, 11, 0, 17, 19, 17,
    -- layer=1 filter=99 channel=62
    -3, 61, 25, 78, 43, 34, 46, 60, 74,
    -- layer=1 filter=99 channel=63
    -9, 0, -10, 30, 22, 56, 3, 28, 26,
    -- layer=1 filter=100 channel=0
    31, 38, 3, 31, 9, -22, -39, 3, -21,
    -- layer=1 filter=100 channel=1
    7, 49, 29, 47, 10, -4, 5, -12, -6,
    -- layer=1 filter=100 channel=2
    5, 13, -16, -16, -22, -29, -32, 9, -4,
    -- layer=1 filter=100 channel=3
    -27, -14, 3, -43, 18, -17, -2, -6, -22,
    -- layer=1 filter=100 channel=4
    -18, 11, -6, 30, 7, 0, -17, -6, -17,
    -- layer=1 filter=100 channel=5
    -8, 40, 19, 74, 20, -54, -48, -40, 38,
    -- layer=1 filter=100 channel=6
    -7, 8, 25, 20, 10, -31, -6, -42, 1,
    -- layer=1 filter=100 channel=7
    3, 3, 10, -22, 19, -4, -20, -43, -25,
    -- layer=1 filter=100 channel=8
    14, 19, 0, 26, 7, 0, 16, -6, -28,
    -- layer=1 filter=100 channel=9
    -6, -4, 3, 14, -19, -10, -5, 20, -15,
    -- layer=1 filter=100 channel=10
    -47, -32, -53, -44, -21, -35, -52, -26, -45,
    -- layer=1 filter=100 channel=11
    23, 1, -13, 34, -23, -21, -13, -5, 10,
    -- layer=1 filter=100 channel=12
    21, 42, 42, 44, -35, -8, -64, -52, -7,
    -- layer=1 filter=100 channel=13
    20, 54, 18, 39, 17, 19, 4, 0, 12,
    -- layer=1 filter=100 channel=14
    16, 14, 12, -9, 11, 4, -28, -18, 4,
    -- layer=1 filter=100 channel=15
    19, -9, 0, 0, 17, -2, 35, 18, 6,
    -- layer=1 filter=100 channel=16
    85, 46, 49, -4, 31, -3, 81, 18, -22,
    -- layer=1 filter=100 channel=17
    15, 28, -34, -8, 10, -10, -19, -8, -44,
    -- layer=1 filter=100 channel=18
    -5, 5, -4, -11, 6, -17, -1, 17, 11,
    -- layer=1 filter=100 channel=19
    -10, -18, -5, 0, 5, -9, 5, -17, -14,
    -- layer=1 filter=100 channel=20
    32, 30, 5, 0, -10, -25, -60, -57, -33,
    -- layer=1 filter=100 channel=21
    20, 46, 49, 57, 69, 36, 34, 12, 14,
    -- layer=1 filter=100 channel=22
    22, 37, 10, 13, -72, -47, -62, -19, -9,
    -- layer=1 filter=100 channel=23
    16, 32, -10, -43, -17, -56, -40, -59, -37,
    -- layer=1 filter=100 channel=24
    -28, -20, -6, -40, -106, -42, -30, -52, -29,
    -- layer=1 filter=100 channel=25
    -28, 30, 27, 12, 73, 11, 19, -18, -26,
    -- layer=1 filter=100 channel=26
    -5, 14, 7, -2, -10, 0, -5, 3, 5,
    -- layer=1 filter=100 channel=27
    -4, 42, 5, 15, -37, -70, -66, -88, -31,
    -- layer=1 filter=100 channel=28
    -9, -33, -21, -54, -2, -23, -30, -32, -26,
    -- layer=1 filter=100 channel=29
    -8, 43, 44, 28, 41, 4, 7, -20, -61,
    -- layer=1 filter=100 channel=30
    4, -13, 3, 4, 6, -16, -13, -9, 0,
    -- layer=1 filter=100 channel=31
    -3, -15, 4, 14, 36, 30, 56, 23, 19,
    -- layer=1 filter=100 channel=32
    -7, 33, 28, -7, -54, -59, -55, -76, -39,
    -- layer=1 filter=100 channel=33
    -11, 17, -16, -16, 3, -2, -5, -1, -3,
    -- layer=1 filter=100 channel=34
    -6, 2, 2, 8, -6, -3, 9, -3, -28,
    -- layer=1 filter=100 channel=35
    -5, -25, 5, 4, -11, -15, 17, 12, -19,
    -- layer=1 filter=100 channel=36
    3, 14, 42, -50, 22, 27, 48, 12, -6,
    -- layer=1 filter=100 channel=37
    22, 37, 25, 37, 26, 33, 13, 12, 19,
    -- layer=1 filter=100 channel=38
    14, 0, 9, 26, 33, 3, 31, -11, 1,
    -- layer=1 filter=100 channel=39
    6, -4, 10, 18, -18, -13, 8, 16, 3,
    -- layer=1 filter=100 channel=40
    -27, -18, -21, -27, -43, -45, -58, -50, -14,
    -- layer=1 filter=100 channel=41
    -30, 47, 15, 63, -21, -63, -31, -47, 23,
    -- layer=1 filter=100 channel=42
    -7, 33, 23, 19, 13, -7, -29, -37, -27,
    -- layer=1 filter=100 channel=43
    -44, -36, 32, -24, -11, -59, -23, -61, -73,
    -- layer=1 filter=100 channel=44
    1, 9, 3, -4, -1, -15, -2, -3, 23,
    -- layer=1 filter=100 channel=45
    -2, -22, 44, -54, 2, -40, -13, -2, -70,
    -- layer=1 filter=100 channel=46
    57, -3, 21, 10, -21, 24, -51, -15, 13,
    -- layer=1 filter=100 channel=47
    11, -21, 2, -24, 3, 9, 18, -11, -37,
    -- layer=1 filter=100 channel=48
    3, 41, 8, 59, -60, -79, -101, -22, 18,
    -- layer=1 filter=100 channel=49
    6, 21, -12, 57, -4, -42, -41, 1, 23,
    -- layer=1 filter=100 channel=50
    9, 0, 6, 12, 39, 15, 40, 30, 8,
    -- layer=1 filter=100 channel=51
    -27, -6, -11, 12, -18, -24, -24, -13, 1,
    -- layer=1 filter=100 channel=52
    -7, -4, -38, -28, -1, -41, 3, -3, -30,
    -- layer=1 filter=100 channel=53
    -36, -24, -3, -105, -59, -31, -12, -31, -43,
    -- layer=1 filter=100 channel=54
    -13, 7, -7, 21, -9, 0, 2, -5, -7,
    -- layer=1 filter=100 channel=55
    24, 12, -32, 10, 17, -3, 1, 2, -32,
    -- layer=1 filter=100 channel=56
    -7, 7, 11, -21, 9, -16, -21, -35, -51,
    -- layer=1 filter=100 channel=57
    -3, 0, -11, -3, 2, -22, 21, 6, -3,
    -- layer=1 filter=100 channel=58
    13, 7, 10, 15, 45, -1, 49, 2, -12,
    -- layer=1 filter=100 channel=59
    -10, -8, -14, 0, -12, -3, 24, 4, 7,
    -- layer=1 filter=100 channel=60
    -4, -5, 23, 20, 29, 20, 51, 27, 19,
    -- layer=1 filter=100 channel=61
    24, 27, 3, 2, 12, -1, -20, -25, -24,
    -- layer=1 filter=100 channel=62
    81, 12, -53, -21, -106, -81, -110, -20, -29,
    -- layer=1 filter=100 channel=63
    123, 118, 27, 29, 22, -1, 47, 36, 16,
    -- layer=1 filter=101 channel=0
    4, 3, 3, -1, 7, 2, 27, -5, 4,
    -- layer=1 filter=101 channel=1
    -8, 9, -7, 4, -1, 2, 6, 15, -9,
    -- layer=1 filter=101 channel=2
    -7, 4, 16, 4, 24, -1, 13, 25, -2,
    -- layer=1 filter=101 channel=3
    39, 31, 51, 97, 37, 44, -14, 28, 57,
    -- layer=1 filter=101 channel=4
    -38, -2, -9, -36, 13, 16, -8, 19, -11,
    -- layer=1 filter=101 channel=5
    58, 43, 41, 28, 23, 78, 36, 55, 31,
    -- layer=1 filter=101 channel=6
    14, 22, 15, -8, -5, 25, 8, 22, 9,
    -- layer=1 filter=101 channel=7
    -10, 22, 8, 1, 10, 8, -21, 0, -8,
    -- layer=1 filter=101 channel=8
    -7, -43, -41, -30, -79, -23, 10, -29, -11,
    -- layer=1 filter=101 channel=9
    19, 13, 17, 23, 31, -5, -23, -43, 4,
    -- layer=1 filter=101 channel=10
    3, 0, -18, 5, 0, 0, -2, 11, 17,
    -- layer=1 filter=101 channel=11
    -27, -7, -13, -66, -26, 5, -8, 9, -10,
    -- layer=1 filter=101 channel=12
    -28, -69, -47, -60, -15, -55, 0, 18, -21,
    -- layer=1 filter=101 channel=13
    6, 8, -9, 6, 4, -18, -3, -24, -26,
    -- layer=1 filter=101 channel=14
    14, 15, 22, 25, 47, 17, 1, -4, -1,
    -- layer=1 filter=101 channel=15
    -67, -46, -63, -26, -43, -45, -44, -35, -43,
    -- layer=1 filter=101 channel=16
    -20, -14, -5, 93, 63, 71, 25, 43, 96,
    -- layer=1 filter=101 channel=17
    23, 7, -2, 44, 33, 14, -17, -17, 12,
    -- layer=1 filter=101 channel=18
    -8, -3, 9, 9, 12, 0, 6, 11, -13,
    -- layer=1 filter=101 channel=19
    -19, -11, -6, -33, -42, 4, -12, 4, -27,
    -- layer=1 filter=101 channel=20
    41, 31, 27, 8, 10, 11, 9, 26, 29,
    -- layer=1 filter=101 channel=21
    0, -5, -30, -30, -2, -24, 7, 6, -25,
    -- layer=1 filter=101 channel=22
    73, 46, 75, 21, -2, 18, 5, 24, 3,
    -- layer=1 filter=101 channel=23
    43, 23, 45, 41, 36, 42, -8, 2, 33,
    -- layer=1 filter=101 channel=24
    -29, 0, 11, 23, 45, 68, -22, 18, 32,
    -- layer=1 filter=101 channel=25
    -9, -82, -40, 29, -49, -1, 24, -18, 27,
    -- layer=1 filter=101 channel=26
    -12, 5, 4, -36, -16, -12, 9, -17, -22,
    -- layer=1 filter=101 channel=27
    -13, -21, -39, -59, 18, -28, 40, 34, -2,
    -- layer=1 filter=101 channel=28
    28, -2, -9, -19, -2, -19, -5, -39, -13,
    -- layer=1 filter=101 channel=29
    4, -62, -57, -31, -110, -32, 18, -40, -12,
    -- layer=1 filter=101 channel=30
    14, 14, -5, 19, -3, 13, -7, -14, -13,
    -- layer=1 filter=101 channel=31
    -35, -48, -52, -60, -71, -69, -3, -36, -22,
    -- layer=1 filter=101 channel=32
    -55, -96, -91, -61, -22, -48, 3, -36, -29,
    -- layer=1 filter=101 channel=33
    -9, 8, 0, 11, 17, -5, 3, -3, -9,
    -- layer=1 filter=101 channel=34
    4, -24, 12, -11, -9, -1, -26, -30, 4,
    -- layer=1 filter=101 channel=35
    -28, -43, -40, -13, -41, -34, -22, -45, -25,
    -- layer=1 filter=101 channel=36
    -27, 9, -4, 30, 25, 23, -25, 4, 33,
    -- layer=1 filter=101 channel=37
    -12, -11, -19, -17, -17, -7, -46, -45, -30,
    -- layer=1 filter=101 channel=38
    -14, 1, -14, 21, -4, -25, -21, -16, 11,
    -- layer=1 filter=101 channel=39
    -9, 1, 17, -3, -2, -5, -3, -3, -7,
    -- layer=1 filter=101 channel=40
    40, 36, 40, 9, 16, 40, 23, 22, 25,
    -- layer=1 filter=101 channel=41
    45, 38, 29, 16, 30, 42, 23, 38, 26,
    -- layer=1 filter=101 channel=42
    21, 39, 31, 13, 20, 23, -7, 7, 5,
    -- layer=1 filter=101 channel=43
    36, -16, -32, -20, -57, -16, 30, -13, 2,
    -- layer=1 filter=101 channel=44
    -14, -40, -5, -33, -5, -1, -31, -20, -10,
    -- layer=1 filter=101 channel=45
    -36, -154, -111, -8, -173, -68, 18, -97, -24,
    -- layer=1 filter=101 channel=46
    -2, 38, 9, 25, 26, 23, 10, 39, 17,
    -- layer=1 filter=101 channel=47
    0, -19, -9, 0, -4, 6, -2, -23, 0,
    -- layer=1 filter=101 channel=48
    73, 83, 66, 9, 32, 70, 26, 41, 25,
    -- layer=1 filter=101 channel=49
    6, 14, 16, -23, -18, -11, 17, 16, -9,
    -- layer=1 filter=101 channel=50
    -16, -41, -41, -21, -63, -40, -21, -47, -9,
    -- layer=1 filter=101 channel=51
    2, 19, 6, -11, 9, 14, 4, 3, -8,
    -- layer=1 filter=101 channel=52
    -7, -14, -9, 56, 12, 36, -4, 0, 44,
    -- layer=1 filter=101 channel=53
    -3, -25, 14, 60, 56, 37, 18, 28, 46,
    -- layer=1 filter=101 channel=54
    0, -6, -2, -29, -4, 23, -13, 6, -9,
    -- layer=1 filter=101 channel=55
    18, -7, 16, 79, 50, 27, -3, 4, 39,
    -- layer=1 filter=101 channel=56
    30, 19, 6, 32, 3, 15, 9, 7, 14,
    -- layer=1 filter=101 channel=57
    -36, -40, -8, -39, -6, -17, -37, -21, -21,
    -- layer=1 filter=101 channel=58
    -2, -3, -20, 21, 22, -4, -42, -36, 13,
    -- layer=1 filter=101 channel=59
    -31, -36, -49, -23, -36, -22, -42, -14, -11,
    -- layer=1 filter=101 channel=60
    -33, -19, -21, 14, 11, -18, -44, -38, -2,
    -- layer=1 filter=101 channel=61
    14, 8, 31, 7, 30, 26, 8, 22, -7,
    -- layer=1 filter=101 channel=62
    7, -94, -34, -43, -70, -30, 53, -29, -7,
    -- layer=1 filter=101 channel=63
    -14, 22, 22, 38, 69, 61, 65, 84, 75,
    -- layer=1 filter=102 channel=0
    7, 33, -19, -15, 27, -18, 16, 34, -12,
    -- layer=1 filter=102 channel=1
    9, 8, 13, 2, -10, -4, -2, 13, -20,
    -- layer=1 filter=102 channel=2
    -21, 35, 10, -41, 21, -16, -21, 37, 10,
    -- layer=1 filter=102 channel=3
    4, -37, -6, 13, -28, -49, -80, -47, -55,
    -- layer=1 filter=102 channel=4
    -28, 3, -2, -26, 4, 4, 0, -7, 15,
    -- layer=1 filter=102 channel=5
    -60, -13, -39, -31, -25, 20, -31, -12, -59,
    -- layer=1 filter=102 channel=6
    -24, 16, -12, -10, 8, 8, -28, 1, -2,
    -- layer=1 filter=102 channel=7
    -8, -1, 23, -18, -12, 17, -25, -4, 24,
    -- layer=1 filter=102 channel=8
    -10, -17, 24, -9, -45, 28, -28, -32, 23,
    -- layer=1 filter=102 channel=9
    -10, 0, 28, -60, 10, 24, -24, 13, 21,
    -- layer=1 filter=102 channel=10
    8, 10, 13, -12, -15, 21, 24, -16, -12,
    -- layer=1 filter=102 channel=11
    -19, -5, -2, -34, 14, 25, -12, 7, 6,
    -- layer=1 filter=102 channel=12
    11, 43, -14, 28, 59, -42, 42, 50, -51,
    -- layer=1 filter=102 channel=13
    4, 39, -8, -5, 25, -13, -19, 19, 9,
    -- layer=1 filter=102 channel=14
    14, -7, -10, 2, 3, -18, -2, 10, -13,
    -- layer=1 filter=102 channel=15
    -31, 21, 28, -23, 4, 28, -31, 0, 44,
    -- layer=1 filter=102 channel=16
    9, -59, 13, -2, -94, -28, -1, -70, -21,
    -- layer=1 filter=102 channel=17
    14, 11, -2, 5, 29, -6, -6, 32, 25,
    -- layer=1 filter=102 channel=18
    -7, 9, -8, -13, -8, 7, -1, 17, 2,
    -- layer=1 filter=102 channel=19
    -13, -18, 13, -37, -14, 26, -13, -20, 17,
    -- layer=1 filter=102 channel=20
    34, 1, -31, 37, 29, -52, 22, 32, -28,
    -- layer=1 filter=102 channel=21
    16, 32, -34, 4, 12, -16, -17, 19, -24,
    -- layer=1 filter=102 channel=22
    -46, -15, -15, -67, -43, -69, 1, -47, 13,
    -- layer=1 filter=102 channel=23
    19, -23, -1, 23, -1, 11, 3, -16, -19,
    -- layer=1 filter=102 channel=24
    7, 23, 29, 22, -26, 10, 19, 21, 22,
    -- layer=1 filter=102 channel=25
    16, -42, 3, 56, -68, -12, 8, -4, -32,
    -- layer=1 filter=102 channel=26
    -9, -24, -22, 13, -7, 0, 5, -20, -11,
    -- layer=1 filter=102 channel=27
    -4, 43, -7, -24, 52, -12, 25, 61, -6,
    -- layer=1 filter=102 channel=28
    -29, 12, -8, 0, 26, 43, -27, -23, 13,
    -- layer=1 filter=102 channel=29
    46, -61, -6, 48, -94, -11, 47, -33, 9,
    -- layer=1 filter=102 channel=30
    16, -12, -5, 11, -3, -13, -6, 6, -4,
    -- layer=1 filter=102 channel=31
    -17, 0, 33, -12, -47, 24, -4, -32, 19,
    -- layer=1 filter=102 channel=32
    16, 2, -51, 19, 43, -94, 20, 34, -12,
    -- layer=1 filter=102 channel=33
    4, -5, 4, 6, 12, -4, 7, 9, 4,
    -- layer=1 filter=102 channel=34
    -11, 10, 10, 6, 3, 26, -12, -14, -1,
    -- layer=1 filter=102 channel=35
    -13, 1, 44, -22, -39, 19, -19, -2, 36,
    -- layer=1 filter=102 channel=36
    9, 13, 13, -6, -11, 13, -20, -6, -18,
    -- layer=1 filter=102 channel=37
    -12, 21, 9, -3, 12, 1, -37, -8, 8,
    -- layer=1 filter=102 channel=38
    -30, -8, 20, -35, -7, 24, -28, 14, 17,
    -- layer=1 filter=102 channel=39
    0, 10, -1, 0, -5, 3, 13, -5, 6,
    -- layer=1 filter=102 channel=40
    -6, -19, -15, -10, -45, 21, -12, -30, -2,
    -- layer=1 filter=102 channel=41
    -37, -20, -32, -51, -17, 37, -34, -36, -33,
    -- layer=1 filter=102 channel=42
    8, 18, -17, -15, 8, -12, -5, 5, 10,
    -- layer=1 filter=102 channel=43
    34, -23, 26, 25, -90, -13, 39, -15, 16,
    -- layer=1 filter=102 channel=44
    -13, 5, 30, -30, 15, 0, -30, 21, 20,
    -- layer=1 filter=102 channel=45
    55, -1, 25, 54, -62, 26, 65, 22, 8,
    -- layer=1 filter=102 channel=46
    -31, -27, -35, -37, -44, -6, -11, -33, -26,
    -- layer=1 filter=102 channel=47
    -8, -20, 24, 4, -65, 39, -9, -53, 24,
    -- layer=1 filter=102 channel=48
    -50, -4, -42, -43, -45, -33, -26, -44, -41,
    -- layer=1 filter=102 channel=49
    -25, 31, -26, -15, 14, -23, -16, 21, -17,
    -- layer=1 filter=102 channel=50
    -15, -15, 7, -26, -18, 12, -24, -14, 8,
    -- layer=1 filter=102 channel=51
    -29, 4, 14, -37, 2, 28, -21, 6, 15,
    -- layer=1 filter=102 channel=52
    13, 5, 7, 21, -22, -13, 15, -10, -11,
    -- layer=1 filter=102 channel=53
    5, 29, 0, -28, 58, -37, -5, 20, -9,
    -- layer=1 filter=102 channel=54
    -5, -4, 21, 2, -15, 6, -13, -4, -3,
    -- layer=1 filter=102 channel=55
    27, -11, 2, 18, -5, -4, 0, 11, -2,
    -- layer=1 filter=102 channel=56
    14, -36, 8, 27, -49, 3, 25, -26, 0,
    -- layer=1 filter=102 channel=57
    -35, 14, 15, -37, 26, 22, -34, 0, 20,
    -- layer=1 filter=102 channel=58
    -5, 0, 38, 11, -17, 9, -51, -35, 16,
    -- layer=1 filter=102 channel=59
    -14, 18, 42, -18, 0, 19, -10, -2, 9,
    -- layer=1 filter=102 channel=60
    -19, 15, 22, -15, 14, 8, -25, -6, 15,
    -- layer=1 filter=102 channel=61
    8, 17, 8, 1, 4, -2, -19, 0, -10,
    -- layer=1 filter=102 channel=62
    87, 18, -33, 89, 52, -62, 104, 38, -36,
    -- layer=1 filter=102 channel=63
    0, -34, -63, -31, -61, -75, 24, -45, 17,
    -- layer=1 filter=103 channel=0
    27, -13, -6, -6, -35, -14, 6, -23, -7,
    -- layer=1 filter=103 channel=1
    -36, -5, -43, -25, -31, -40, -1, 26, 4,
    -- layer=1 filter=103 channel=2
    16, -20, -60, 12, -3, 13, 3, -21, -3,
    -- layer=1 filter=103 channel=3
    5, 0, -23, 23, 68, 74, -27, -65, -29,
    -- layer=1 filter=103 channel=4
    14, 16, 35, -27, -69, -37, -11, -29, -2,
    -- layer=1 filter=103 channel=5
    19, 13, 30, -14, -11, -22, 11, 12, -20,
    -- layer=1 filter=103 channel=6
    13, 0, -4, -34, -6, -26, -14, -24, -26,
    -- layer=1 filter=103 channel=7
    7, 26, 37, -1, 25, 2, -92, -52, -74,
    -- layer=1 filter=103 channel=8
    -37, -21, 17, -61, -32, -37, -48, 19, -22,
    -- layer=1 filter=103 channel=9
    12, 20, -6, 3, 27, 41, -15, -32, -32,
    -- layer=1 filter=103 channel=10
    -33, -15, 3, 9, 3, 39, 31, 42, 51,
    -- layer=1 filter=103 channel=11
    20, 26, 36, -21, -36, -20, 0, -4, -10,
    -- layer=1 filter=103 channel=12
    42, 4, -92, 54, -38, -25, 27, -48, -4,
    -- layer=1 filter=103 channel=13
    20, -13, -4, 10, -20, 3, 0, 3, -14,
    -- layer=1 filter=103 channel=14
    14, 7, -9, 1, 31, 13, -21, -33, -31,
    -- layer=1 filter=103 channel=15
    -32, -17, -9, -30, 3, -4, -15, -5, -11,
    -- layer=1 filter=103 channel=16
    -87, -74, -80, 40, 80, 69, -18, -20, -24,
    -- layer=1 filter=103 channel=17
    -11, -39, -41, 72, 89, 85, -9, -14, 22,
    -- layer=1 filter=103 channel=18
    -14, -3, 0, 10, -1, 5, -4, 3, -6,
    -- layer=1 filter=103 channel=19
    -31, -6, 11, -64, -22, -35, -46, 7, -16,
    -- layer=1 filter=103 channel=20
    8, 1, -34, 25, -7, 3, -13, -39, 9,
    -- layer=1 filter=103 channel=21
    12, -8, -21, 7, -31, -61, 15, -4, 7,
    -- layer=1 filter=103 channel=22
    -56, -61, -68, 14, -11, 6, -30, -20, 3,
    -- layer=1 filter=103 channel=23
    -33, -33, -20, 16, 39, 41, 9, 3, 2,
    -- layer=1 filter=103 channel=24
    9, -54, -21, 84, 104, 105, 44, 29, 76,
    -- layer=1 filter=103 channel=25
    -43, -26, -53, 3, 25, -5, -28, 10, 3,
    -- layer=1 filter=103 channel=26
    -9, 11, 13, 10, -15, 0, 62, 75, 87,
    -- layer=1 filter=103 channel=27
    36, 12, -63, -17, -38, 0, 38, -10, -13,
    -- layer=1 filter=103 channel=28
    11, 7, 33, -72, -20, -12, -9, -26, -8,
    -- layer=1 filter=103 channel=29
    -43, -41, -13, -70, 1, -56, -25, 51, -8,
    -- layer=1 filter=103 channel=30
    0, 13, -4, 0, 0, 10, -10, 8, 4,
    -- layer=1 filter=103 channel=31
    -50, -20, -10, -70, -13, -42, -13, -7, -36,
    -- layer=1 filter=103 channel=32
    74, 5, -65, 34, -1, 43, -7, -52, -23,
    -- layer=1 filter=103 channel=33
    6, 3, -14, 7, 2, -10, 13, 1, 6,
    -- layer=1 filter=103 channel=34
    13, 25, 27, 1, -4, -7, -10, -8, -34,
    -- layer=1 filter=103 channel=35
    -45, -26, -13, -46, -9, -24, -42, 2, -19,
    -- layer=1 filter=103 channel=36
    10, 0, -32, 25, 67, 86, 5, -24, -6,
    -- layer=1 filter=103 channel=37
    23, 6, 8, -3, -6, 12, -13, -16, -36,
    -- layer=1 filter=103 channel=38
    -24, -16, 7, -20, 27, 28, -49, -32, -24,
    -- layer=1 filter=103 channel=39
    4, 1, -5, -10, 3, -1, 6, -2, 0,
    -- layer=1 filter=103 channel=40
    -55, -26, -21, -82, -37, -68, -21, 8, -24,
    -- layer=1 filter=103 channel=41
    23, 32, 11, 14, 4, 1, -8, 23, -7,
    -- layer=1 filter=103 channel=42
    1, 6, 22, -20, -55, -61, -18, -11, -12,
    -- layer=1 filter=103 channel=43
    -54, -59, -52, -81, -12, -65, -37, 42, 8,
    -- layer=1 filter=103 channel=44
    18, -7, -5, 4, 5, 28, -14, -17, -5,
    -- layer=1 filter=103 channel=45
    -66, -47, -55, -50, 2, -70, -29, 20, -19,
    -- layer=1 filter=103 channel=46
    -34, -20, -50, -20, -14, -14, -61, -24, -45,
    -- layer=1 filter=103 channel=47
    -27, -11, 7, -57, -2, -21, -54, -18, -46,
    -- layer=1 filter=103 channel=48
    -4, 8, 2, -8, 10, -12, -14, 6, 17,
    -- layer=1 filter=103 channel=49
    5, 5, -6, -24, -59, -24, 4, 1, -2,
    -- layer=1 filter=103 channel=50
    3, 6, 22, -20, -5, -14, -45, -46, -54,
    -- layer=1 filter=103 channel=51
    4, 24, 34, -62, -25, -61, -26, -26, -33,
    -- layer=1 filter=103 channel=52
    -39, -53, -34, 39, 84, 66, 35, -3, 34,
    -- layer=1 filter=103 channel=53
    35, 11, -29, 51, 62, 81, -35, -75, -34,
    -- layer=1 filter=103 channel=54
    1, 18, 22, -55, -44, -33, -63, -26, -51,
    -- layer=1 filter=103 channel=55
    -19, -12, -41, 64, 86, 82, 23, 6, 26,
    -- layer=1 filter=103 channel=56
    -48, -36, -15, -40, -20, -76, -45, 4, -10,
    -- layer=1 filter=103 channel=57
    14, 7, 19, -24, -15, 17, -21, -40, -24,
    -- layer=1 filter=103 channel=58
    2, -6, -9, 17, 59, 57, -51, -38, -17,
    -- layer=1 filter=103 channel=59
    -52, -28, -37, -21, 0, 25, -13, -21, -11,
    -- layer=1 filter=103 channel=60
    -22, -5, -17, 27, 19, 44, -37, -38, -28,
    -- layer=1 filter=103 channel=61
    -9, -16, -12, -23, -25, -21, -15, -8, -5,
    -- layer=1 filter=103 channel=62
    18, -19, -45, -27, -32, -45, 17, -3, 34,
    -- layer=1 filter=103 channel=63
    -73, -66, -88, 64, 73, 55, -8, -49, -12,
    -- layer=1 filter=104 channel=0
    6, 31, 14, -9, 9, 8, -6, -3, 16,
    -- layer=1 filter=104 channel=1
    19, -27, 5, 18, 5, -17, -4, 13, -11,
    -- layer=1 filter=104 channel=2
    -18, 5, 19, -28, 5, 41, -15, -17, 29,
    -- layer=1 filter=104 channel=3
    -12, -29, -64, -4, -12, -10, -2, -32, -44,
    -- layer=1 filter=104 channel=4
    -17, 15, 28, -10, -12, 38, -15, -3, 7,
    -- layer=1 filter=104 channel=5
    18, -61, -11, 36, -32, 6, -8, 7, -47,
    -- layer=1 filter=104 channel=6
    -1, -11, 10, 4, -17, -8, -10, 12, 10,
    -- layer=1 filter=104 channel=7
    5, -15, 21, 14, -30, 28, 5, -13, 7,
    -- layer=1 filter=104 channel=8
    9, -39, 15, 14, -40, -20, -1, -27, -23,
    -- layer=1 filter=104 channel=9
    -30, -8, 19, -39, -12, 54, -6, -20, 16,
    -- layer=1 filter=104 channel=10
    -7, -16, 0, 0, -24, -30, 13, -28, -37,
    -- layer=1 filter=104 channel=11
    -26, -32, 36, -18, -9, 12, 7, -5, 14,
    -- layer=1 filter=104 channel=12
    11, 32, 47, -17, 27, 36, -16, 35, 38,
    -- layer=1 filter=104 channel=13
    -5, 11, 15, -7, 20, 23, -24, -9, 15,
    -- layer=1 filter=104 channel=14
    -2, 28, 7, -9, 14, 8, -4, 1, 10,
    -- layer=1 filter=104 channel=15
    -55, -15, 17, -27, -26, 41, 0, -5, 37,
    -- layer=1 filter=104 channel=16
    0, -52, -36, 30, -42, -64, 7, -61, -50,
    -- layer=1 filter=104 channel=17
    -11, 26, 0, -6, 17, -5, -5, -10, 12,
    -- layer=1 filter=104 channel=18
    8, -7, -10, -1, 10, -7, -8, 11, -11,
    -- layer=1 filter=104 channel=19
    -12, -45, 14, -5, -53, 5, -10, -5, -18,
    -- layer=1 filter=104 channel=20
    -16, 39, -4, -23, 46, 0, -4, 27, 22,
    -- layer=1 filter=104 channel=21
    -2, 31, -9, 0, 15, 0, 8, 3, 7,
    -- layer=1 filter=104 channel=22
    19, -22, 2, -12, -37, -34, 6, -14, -36,
    -- layer=1 filter=104 channel=23
    -15, -5, 2, -11, 29, -23, -7, 13, -30,
    -- layer=1 filter=104 channel=24
    -3, -23, 0, -11, 40, -29, 48, -2, 14,
    -- layer=1 filter=104 channel=25
    29, -14, -76, 24, -41, -81, -11, -34, -33,
    -- layer=1 filter=104 channel=26
    -9, 9, 25, 28, -10, 11, -11, -15, 2,
    -- layer=1 filter=104 channel=27
    7, 40, 22, -12, 27, 30, -28, 23, 36,
    -- layer=1 filter=104 channel=28
    -8, 0, 36, 15, -53, 32, 10, -34, -12,
    -- layer=1 filter=104 channel=29
    18, -43, -40, 41, -51, -93, 7, -8, -58,
    -- layer=1 filter=104 channel=30
    21, 15, 11, -4, 11, 2, -1, 2, 0,
    -- layer=1 filter=104 channel=31
    -1, -42, 5, 29, -40, 3, 6, -15, 6,
    -- layer=1 filter=104 channel=32
    -12, 21, 11, -27, 9, 31, -30, 0, 15,
    -- layer=1 filter=104 channel=33
    4, 2, 8, 14, 12, -10, -4, -11, -17,
    -- layer=1 filter=104 channel=34
    -11, 0, 28, 14, -20, 12, -4, -8, 15,
    -- layer=1 filter=104 channel=35
    -34, -35, 26, -12, -54, -1, -5, -25, 11,
    -- layer=1 filter=104 channel=36
    -25, -17, -25, -5, -17, 16, 13, -23, -17,
    -- layer=1 filter=104 channel=37
    -12, 1, 36, -25, -1, 22, -4, -6, 41,
    -- layer=1 filter=104 channel=38
    -32, -29, 18, -5, -34, 41, 2, -21, 24,
    -- layer=1 filter=104 channel=39
    -4, -3, 2, -3, -6, 0, 8, -3, -5,
    -- layer=1 filter=104 channel=40
    -24, -6, -12, -8, -18, -20, -13, -20, -44,
    -- layer=1 filter=104 channel=41
    0, -57, -11, 37, -67, -13, -15, 6, -52,
    -- layer=1 filter=104 channel=42
    -5, 28, 22, 4, 13, 14, -25, -6, 18,
    -- layer=1 filter=104 channel=43
    23, -16, -53, 8, -3, -135, 4, 3, -61,
    -- layer=1 filter=104 channel=44
    -20, -8, 4, -40, 3, 27, -34, -22, 18,
    -- layer=1 filter=104 channel=45
    23, -27, -39, 13, 4, -152, 3, 13, -35,
    -- layer=1 filter=104 channel=46
    -62, -39, -30, -50, -47, -16, -49, -50, -54,
    -- layer=1 filter=104 channel=47
    -5, -33, -12, 35, -32, -29, 10, -18, -40,
    -- layer=1 filter=104 channel=48
    34, -57, 12, -5, -52, -41, -20, 4, -43,
    -- layer=1 filter=104 channel=49
    -38, -6, 25, -23, 0, 27, -26, 10, 30,
    -- layer=1 filter=104 channel=50
    -8, -27, 3, -8, -22, 9, 8, -14, 20,
    -- layer=1 filter=104 channel=51
    -27, -7, 24, -2, -23, 13, -31, -4, 21,
    -- layer=1 filter=104 channel=52
    -15, -15, -41, -17, -21, -36, 0, -42, -59,
    -- layer=1 filter=104 channel=53
    -12, 34, 1, -11, 44, 56, -9, -20, 34,
    -- layer=1 filter=104 channel=54
    0, -5, 21, 11, -29, 16, 2, -13, -5,
    -- layer=1 filter=104 channel=55
    -28, -16, 0, -22, 12, -36, -7, -14, -2,
    -- layer=1 filter=104 channel=56
    20, -41, -12, 18, -5, -63, -10, -10, -37,
    -- layer=1 filter=104 channel=57
    -20, -8, 10, -19, 0, 40, -8, -10, 35,
    -- layer=1 filter=104 channel=58
    9, -11, -3, 10, -61, 20, 7, -69, 13,
    -- layer=1 filter=104 channel=59
    -16, 1, 11, 2, 2, 19, 3, -1, 35,
    -- layer=1 filter=104 channel=60
    -20, 7, 28, -18, -2, 21, 3, 2, 43,
    -- layer=1 filter=104 channel=61
    -11, 26, -3, -1, 3, 9, -10, 6, 6,
    -- layer=1 filter=104 channel=62
    -22, 10, -20, -64, 48, -56, 2, 38, -47,
    -- layer=1 filter=104 channel=63
    -34, -25, -34, -39, -38, -35, 16, -29, -22,
    -- layer=1 filter=105 channel=0
    9, -14, 4, -22, -15, 34, 20, 52, -40,
    -- layer=1 filter=105 channel=1
    10, 12, -29, 44, -1, 9, -28, -27, -10,
    -- layer=1 filter=105 channel=2
    -49, -62, -19, -72, -25, 24, -18, 23, -65,
    -- layer=1 filter=105 channel=3
    -9, 50, 78, 3, -10, 2, 23, -10, -26,
    -- layer=1 filter=105 channel=4
    -32, -40, -13, -37, -16, 46, 4, 56, -20,
    -- layer=1 filter=105 channel=5
    -55, -72, -70, 39, 51, 90, 17, 86, 25,
    -- layer=1 filter=105 channel=6
    -36, -42, -18, 26, -4, 24, -32, 28, 59,
    -- layer=1 filter=105 channel=7
    -24, 19, 26, 6, -44, -23, -1, -28, 28,
    -- layer=1 filter=105 channel=8
    -23, -17, -106, -19, -24, -52, -27, -39, 26,
    -- layer=1 filter=105 channel=9
    2, 25, 59, 0, -1, 37, 13, 27, 3,
    -- layer=1 filter=105 channel=10
    62, 43, 31, 53, 26, -25, -19, -8, -1,
    -- layer=1 filter=105 channel=11
    -62, -102, -64, 11, -10, 37, 6, 42, -16,
    -- layer=1 filter=105 channel=12
    54, -5, 5, -7, 24, 44, 47, 104, -15,
    -- layer=1 filter=105 channel=13
    -16, -11, 5, 1, 1, 25, -19, 9, -54,
    -- layer=1 filter=105 channel=14
    -40, 21, 15, 0, 4, -25, 15, -4, -33,
    -- layer=1 filter=105 channel=15
    -35, -7, -1, -5, -25, -57, 25, 23, 24,
    -- layer=1 filter=105 channel=16
    -41, 10, -26, -45, 18, 17, 84, -16, -38,
    -- layer=1 filter=105 channel=17
    7, 54, 37, 0, -1, -5, -8, -70, -25,
    -- layer=1 filter=105 channel=18
    -9, 16, 12, -14, -3, 11, 5, -11, -12,
    -- layer=1 filter=105 channel=19
    -32, -53, -98, 5, -28, -5, -10, -31, 19,
    -- layer=1 filter=105 channel=20
    26, -8, -24, -53, -18, 18, 0, 45, -23,
    -- layer=1 filter=105 channel=21
    32, 26, 13, -10, -7, -11, -14, 12, -14,
    -- layer=1 filter=105 channel=22
    -44, -160, -51, 31, 38, 112, 15, 16, -62,
    -- layer=1 filter=105 channel=23
    -23, -23, -4, 8, -3, 18, -6, 13, 64,
    -- layer=1 filter=105 channel=24
    19, 33, 28, -36, -3, 20, 20, -60, -20,
    -- layer=1 filter=105 channel=25
    2, 58, 0, 80, 65, -57, 20, -11, 33,
    -- layer=1 filter=105 channel=26
    -8, 3, 18, -36, -86, -50, -21, -63, -22,
    -- layer=1 filter=105 channel=27
    6, -57, 0, -18, 23, 72, 34, 68, -25,
    -- layer=1 filter=105 channel=28
    -36, -40, -28, -10, 0, -57, 12, -15, -18,
    -- layer=1 filter=105 channel=29
    -15, -15, -47, 47, 51, -43, 5, 9, -1,
    -- layer=1 filter=105 channel=30
    -9, 17, -4, 4, 11, -3, -5, -12, -13,
    -- layer=1 filter=105 channel=31
    -30, -49, -39, 0, 35, 0, -6, -10, -3,
    -- layer=1 filter=105 channel=32
    57, 0, 19, 2, 5, 41, 68, 103, -40,
    -- layer=1 filter=105 channel=33
    -14, -12, -13, 2, 0, 8, -11, 15, 13,
    -- layer=1 filter=105 channel=34
    -9, 10, -31, -10, -28, -50, -13, -16, -14,
    -- layer=1 filter=105 channel=35
    -50, -31, -72, -25, -42, -70, -10, -26, 23,
    -- layer=1 filter=105 channel=36
    -21, 45, 63, -20, 25, 5, 45, 39, -21,
    -- layer=1 filter=105 channel=37
    -26, 12, 48, 1, -62, 0, -18, -18, 7,
    -- layer=1 filter=105 channel=38
    -7, 16, 50, -5, -8, -8, 56, 0, 59,
    -- layer=1 filter=105 channel=39
    15, 0, 7, 14, 2, -9, -6, 11, 1,
    -- layer=1 filter=105 channel=40
    -36, -42, -60, -7, 16, -22, -1, -18, -29,
    -- layer=1 filter=105 channel=41
    -50, -104, -52, 44, 10, 102, -20, 68, 15,
    -- layer=1 filter=105 channel=42
    -17, -21, -31, 19, -46, 1, -17, 7, 9,
    -- layer=1 filter=105 channel=43
    -11, -13, -55, 38, 60, -5, 5, -4, 8,
    -- layer=1 filter=105 channel=44
    -19, -29, -14, -101, -68, -48, -24, 25, 12,
    -- layer=1 filter=105 channel=45
    -20, -4, -38, 42, 59, -34, 22, 39, 14,
    -- layer=1 filter=105 channel=46
    -45, -90, -70, -37, -3, -6, -6, -32, -23,
    -- layer=1 filter=105 channel=47
    -41, -12, -41, 6, 12, -110, 22, -25, 14,
    -- layer=1 filter=105 channel=48
    -52, -98, -84, 42, 45, 105, -17, 48, -12,
    -- layer=1 filter=105 channel=49
    -44, -104, -58, 12, 12, 73, -5, 90, -36,
    -- layer=1 filter=105 channel=50
    -18, 5, -2, -19, -51, -79, -6, -30, 29,
    -- layer=1 filter=105 channel=51
    -62, -112, -101, 3, -51, -21, -30, 9, 33,
    -- layer=1 filter=105 channel=52
    -6, 25, 17, 7, 17, -47, 12, -45, -60,
    -- layer=1 filter=105 channel=53
    -22, 18, 59, -56, -34, 22, 28, 9, -63,
    -- layer=1 filter=105 channel=54
    -52, -31, -46, -2, -44, -13, -18, 2, 38,
    -- layer=1 filter=105 channel=55
    8, 40, -7, 32, -15, -30, 15, -51, -8,
    -- layer=1 filter=105 channel=56
    -17, -25, -46, 19, 27, -57, -14, -44, -13,
    -- layer=1 filter=105 channel=57
    -28, -51, -12, -51, -111, -51, -11, -1, 20,
    -- layer=1 filter=105 channel=58
    -37, 53, 51, -3, -22, -13, 47, 5, 23,
    -- layer=1 filter=105 channel=59
    18, 4, 16, -17, -7, -6, 41, 39, 24,
    -- layer=1 filter=105 channel=60
    -16, 21, 37, -15, -27, -22, 1, -10, 37,
    -- layer=1 filter=105 channel=61
    -3, -4, -9, -11, -27, -41, 6, -42, -28,
    -- layer=1 filter=105 channel=62
    13, 23, -29, -24, 66, 23, 69, 134, 7,
    -- layer=1 filter=105 channel=63
    -55, -83, -17, 19, 138, 129, 129, 56, -54,
    -- layer=1 filter=106 channel=0
    -10, -42, -28, -14, -30, -17, 0, -11, 14,
    -- layer=1 filter=106 channel=1
    0, 0, -9, -1, -4, 0, -4, -11, 27,
    -- layer=1 filter=106 channel=2
    -16, 3, -27, -19, 7, 0, 6, 16, -20,
    -- layer=1 filter=106 channel=3
    77, 62, 49, 48, 55, 68, 73, 56, 56,
    -- layer=1 filter=106 channel=4
    4, 13, -18, 12, -4, 6, -17, 10, -3,
    -- layer=1 filter=106 channel=5
    -5, 11, 23, 54, 34, 43, 34, 38, 62,
    -- layer=1 filter=106 channel=6
    24, 12, -6, 36, 29, 0, -16, -23, 11,
    -- layer=1 filter=106 channel=7
    28, 25, -8, 34, 26, 0, 10, 6, 16,
    -- layer=1 filter=106 channel=8
    9, 3, -1, 12, 7, 3, 12, -23, 12,
    -- layer=1 filter=106 channel=9
    -5, -7, -26, 15, -13, 17, -32, -8, -8,
    -- layer=1 filter=106 channel=10
    -25, -13, 4, -38, -24, -1, 19, 5, -1,
    -- layer=1 filter=106 channel=11
    11, 17, -2, 4, 2, 1, -19, -13, -23,
    -- layer=1 filter=106 channel=12
    -52, -96, -55, -85, -126, -67, -71, -49, 4,
    -- layer=1 filter=106 channel=13
    -3, -25, -30, 1, -8, -17, 23, 5, -13,
    -- layer=1 filter=106 channel=14
    19, -6, -11, 14, 21, 11, 22, 24, 10,
    -- layer=1 filter=106 channel=15
    -10, -9, -13, -22, -21, -36, -36, -14, -29,
    -- layer=1 filter=106 channel=16
    31, -1, 40, 40, 59, 83, 100, 49, 30,
    -- layer=1 filter=106 channel=17
    5, -5, -20, 21, 20, 33, 33, 44, 47,
    -- layer=1 filter=106 channel=18
    1, 16, -12, 4, -8, -2, -3, 11, -10,
    -- layer=1 filter=106 channel=19
    -3, 6, 0, 2, -16, -7, 2, -21, 14,
    -- layer=1 filter=106 channel=20
    4, -18, -7, -9, -22, -23, -38, 2, -2,
    -- layer=1 filter=106 channel=21
    -22, -29, -21, -15, -14, -28, 17, -25, 20,
    -- layer=1 filter=106 channel=22
    30, 81, 45, 20, 12, 51, 56, 24, 21,
    -- layer=1 filter=106 channel=23
    -13, -13, -29, 2, 7, -24, 1, 13, -8,
    -- layer=1 filter=106 channel=24
    -2, -9, 43, 27, 34, 88, 28, 5, 7,
    -- layer=1 filter=106 channel=25
    0, -45, -13, -21, -31, 3, 17, -15, 15,
    -- layer=1 filter=106 channel=26
    9, -6, 15, -9, -3, -11, -3, -13, -8,
    -- layer=1 filter=106 channel=27
    -53, -66, -63, -61, -89, -9, -36, -5, -10,
    -- layer=1 filter=106 channel=28
    17, -3, -8, 24, -5, -33, 15, -18, 3,
    -- layer=1 filter=106 channel=29
    -26, -43, -76, -50, -57, -33, -7, -56, -17,
    -- layer=1 filter=106 channel=30
    12, 13, 0, -11, 6, 15, 14, 10, 20,
    -- layer=1 filter=106 channel=31
    -2, -29, -43, -25, -48, -67, -9, -65, -26,
    -- layer=1 filter=106 channel=32
    -88, -80, -121, -135, -119, -32, -92, -22, -22,
    -- layer=1 filter=106 channel=33
    -3, 6, -8, -10, 11, -6, 10, 10, 13,
    -- layer=1 filter=106 channel=34
    25, 5, -4, 30, -6, 3, 21, -8, 15,
    -- layer=1 filter=106 channel=35
    28, 4, 23, 21, 1, -18, 28, -41, -1,
    -- layer=1 filter=106 channel=36
    18, 10, 19, 21, 18, 53, 9, 6, 1,
    -- layer=1 filter=106 channel=37
    -20, -27, -21, 2, 2, -22, -5, -6, -2,
    -- layer=1 filter=106 channel=38
    13, 28, 8, 17, 6, -16, -13, -21, 14,
    -- layer=1 filter=106 channel=39
    -2, 6, 17, 8, -8, 0, 10, -1, -1,
    -- layer=1 filter=106 channel=40
    43, 43, 4, 13, 35, 13, -4, 41, 36,
    -- layer=1 filter=106 channel=41
    22, 13, 26, 43, 28, 18, 9, 24, 42,
    -- layer=1 filter=106 channel=42
    8, 12, 3, 30, 31, 14, 8, -7, 20,
    -- layer=1 filter=106 channel=43
    14, -32, -27, -26, -33, -4, 22, -48, 7,
    -- layer=1 filter=106 channel=44
    -2, -5, 4, 2, 14, 15, -10, 0, 15,
    -- layer=1 filter=106 channel=45
    10, -78, -41, -41, -79, -57, -5, -97, -9,
    -- layer=1 filter=106 channel=46
    5, 15, 8, 13, 47, 38, 0, 9, 11,
    -- layer=1 filter=106 channel=47
    26, 0, -9, 35, 12, 1, 20, -8, 22,
    -- layer=1 filter=106 channel=48
    18, 54, 39, 19, 22, 56, 52, 44, 30,
    -- layer=1 filter=106 channel=49
    2, 9, 14, -13, -9, 0, -11, 26, 16,
    -- layer=1 filter=106 channel=50
    -29, -29, -39, -14, -19, -38, -22, -34, -31,
    -- layer=1 filter=106 channel=51
    10, 31, 14, 34, 25, -15, 0, -18, 2,
    -- layer=1 filter=106 channel=52
    -1, -5, -2, 23, -6, 11, 35, 25, 19,
    -- layer=1 filter=106 channel=53
    36, 23, 14, 36, 12, 53, 49, 52, 3,
    -- layer=1 filter=106 channel=54
    22, 20, -6, 25, 17, -16, 2, -18, 4,
    -- layer=1 filter=106 channel=55
    -31, -12, -36, 15, 9, -15, 21, 28, 8,
    -- layer=1 filter=106 channel=56
    26, 13, 10, 39, 17, 11, 18, -22, 19,
    -- layer=1 filter=106 channel=57
    1, 0, 9, -4, -9, 3, -2, -18, -23,
    -- layer=1 filter=106 channel=58
    21, 1, 15, -11, -2, 24, 38, 25, 33,
    -- layer=1 filter=106 channel=59
    -11, -20, -43, -22, -33, -31, -47, -41, 2,
    -- layer=1 filter=106 channel=60
    -8, -12, -13, -26, -8, -26, -37, -38, -12,
    -- layer=1 filter=106 channel=61
    -1, 15, -2, 19, 22, 20, 22, 11, 0,
    -- layer=1 filter=106 channel=62
    -19, -75, -48, -64, -85, 10, -56, 26, 12,
    -- layer=1 filter=106 channel=63
    52, 41, 51, 90, 105, 119, 127, 118, 79,
    -- layer=1 filter=107 channel=0
    -20, -5, -7, -6, -55, 2, -34, -40, -23,
    -- layer=1 filter=107 channel=1
    -40, -25, -49, 37, 0, -67, 26, 11, 8,
    -- layer=1 filter=107 channel=2
    16, 17, 34, -8, -6, 21, -26, -29, 2,
    -- layer=1 filter=107 channel=3
    36, 19, 0, -15, 18, 40, 5, -57, 14,
    -- layer=1 filter=107 channel=4
    -28, -19, -6, -26, -80, -20, -45, -52, -91,
    -- layer=1 filter=107 channel=5
    -56, -62, -58, 7, -17, -34, 9, -19, -30,
    -- layer=1 filter=107 channel=6
    -54, -14, -24, 19, -9, -46, -20, -63, -65,
    -- layer=1 filter=107 channel=7
    -13, -11, 15, -21, -20, -3, -35, -22, -42,
    -- layer=1 filter=107 channel=8
    -29, -36, -22, -22, -48, -63, -16, -11, -68,
    -- layer=1 filter=107 channel=9
    25, 17, 24, -65, 18, 59, -53, -66, -9,
    -- layer=1 filter=107 channel=10
    -41, -36, -61, 11, 15, -40, 6, 41, 12,
    -- layer=1 filter=107 channel=11
    -49, -44, -23, -34, -54, -48, -42, -63, -79,
    -- layer=1 filter=107 channel=12
    -10, 38, -23, 22, 11, 36, -22, -71, -6,
    -- layer=1 filter=107 channel=13
    15, -25, -9, 13, -44, -5, -40, -20, -56,
    -- layer=1 filter=107 channel=14
    -1, -2, -19, -4, -1, -8, -5, -57, -68,
    -- layer=1 filter=107 channel=15
    24, 30, 55, -74, -28, 40, -40, -33, -14,
    -- layer=1 filter=107 channel=16
    38, 16, -16, 10, 23, 15, -18, -31, -12,
    -- layer=1 filter=107 channel=17
    7, -29, -51, 20, 37, 45, -4, -73, -19,
    -- layer=1 filter=107 channel=18
    -15, 0, -7, 10, -7, 4, -5, -7, -12,
    -- layer=1 filter=107 channel=19
    -44, -33, -3, -23, -18, -25, -26, -29, -80,
    -- layer=1 filter=107 channel=20
    6, 16, -40, 1, 19, 7, -13, -52, 6,
    -- layer=1 filter=107 channel=21
    -12, -20, -11, 43, 13, 19, 39, 14, 53,
    -- layer=1 filter=107 channel=22
    -28, -29, -37, -23, -30, -71, -42, -47, -44,
    -- layer=1 filter=107 channel=23
    -40, -63, -75, 14, -13, -2, -31, -6, 4,
    -- layer=1 filter=107 channel=24
    49, 4, -47, 34, 80, 69, 6, 32, 67,
    -- layer=1 filter=107 channel=25
    -25, -4, -20, 29, 40, -7, 33, 38, 5,
    -- layer=1 filter=107 channel=26
    -22, -3, -24, 22, 12, -10, 27, 79, 39,
    -- layer=1 filter=107 channel=27
    -23, 2, -10, 6, -35, 4, -49, -59, -31,
    -- layer=1 filter=107 channel=28
    50, -21, 20, -30, 3, 0, 15, -28, -78,
    -- layer=1 filter=107 channel=29
    -24, -54, -37, 25, -4, -40, 26, 29, -19,
    -- layer=1 filter=107 channel=30
    3, 7, -2, 6, -2, 17, 0, -11, 18,
    -- layer=1 filter=107 channel=31
    -8, -8, 8, -31, -22, -25, 6, 5, -29,
    -- layer=1 filter=107 channel=32
    12, 56, -1, 42, 11, 56, -23, -75, 4,
    -- layer=1 filter=107 channel=33
    -4, -12, 10, 14, 10, -1, 1, 5, -10,
    -- layer=1 filter=107 channel=34
    16, 1, 9, -49, -6, -43, 0, 14, 8,
    -- layer=1 filter=107 channel=35
    -2, 17, 36, -40, 4, 16, -22, -24, -35,
    -- layer=1 filter=107 channel=36
    57, 47, 36, -38, 32, 32, -4, -39, -8,
    -- layer=1 filter=107 channel=37
    -8, 13, 8, -27, -10, -1, -27, -44, -50,
    -- layer=1 filter=107 channel=38
    6, 23, 47, -52, -7, 32, -58, -53, -5,
    -- layer=1 filter=107 channel=39
    4, 10, -14, -4, 1, -11, -6, -9, -7,
    -- layer=1 filter=107 channel=40
    -10, -10, 0, 9, -22, -31, 17, 44, 0,
    -- layer=1 filter=107 channel=41
    -35, -48, -85, 0, -16, -22, -3, -31, -25,
    -- layer=1 filter=107 channel=42
    -35, -6, -39, 1, -38, -47, -11, -39, -26,
    -- layer=1 filter=107 channel=43
    -12, -31, -50, 11, 8, -55, 29, 45, -11,
    -- layer=1 filter=107 channel=44
    5, 28, 47, -34, 20, 50, -51, -20, 10,
    -- layer=1 filter=107 channel=45
    4, -17, -58, -14, 0, -34, 31, 56, -30,
    -- layer=1 filter=107 channel=46
    7, -1, 3, -38, -57, -21, -36, -9, -59,
    -- layer=1 filter=107 channel=47
    10, -29, 16, -39, -18, -13, 39, 11, -62,
    -- layer=1 filter=107 channel=48
    -39, -37, -57, -3, 0, -7, -19, -40, -21,
    -- layer=1 filter=107 channel=49
    -38, -1, -15, -35, -78, -7, -23, -74, -47,
    -- layer=1 filter=107 channel=50
    -16, 11, -4, -65, -15, -30, -17, -33, -69,
    -- layer=1 filter=107 channel=51
    -59, 16, 35, -12, -48, -27, -39, -45, -58,
    -- layer=1 filter=107 channel=52
    13, -20, -39, 25, 46, 20, 23, 29, 14,
    -- layer=1 filter=107 channel=53
    59, 52, 33, -13, 17, 62, -30, -75, 31,
    -- layer=1 filter=107 channel=54
    -38, -20, 12, -22, -55, -42, -8, -53, -82,
    -- layer=1 filter=107 channel=55
    -52, -51, -81, -14, 46, 28, -18, -57, -65,
    -- layer=1 filter=107 channel=56
    -12, -42, -55, 31, 23, -57, 40, 30, -28,
    -- layer=1 filter=107 channel=57
    18, 36, 23, -24, 3, 24, -53, -53, -37,
    -- layer=1 filter=107 channel=58
    31, 8, -2, -16, -9, 21, -1, -42, -1,
    -- layer=1 filter=107 channel=59
    -17, 24, 32, -65, -18, 24, -73, -60, 0,
    -- layer=1 filter=107 channel=60
    27, 23, 28, -15, 13, 36, -32, -32, 17,
    -- layer=1 filter=107 channel=61
    -18, -29, -14, 5, -14, -44, -1, 0, -35,
    -- layer=1 filter=107 channel=62
    -56, 3, -33, -26, -18, -42, 2, -39, -26,
    -- layer=1 filter=107 channel=63
    28, 14, -23, -19, -42, -38, 10, -42, -27,
    -- layer=1 filter=108 channel=0
    11, 23, 0, 26, 49, -11, -8, 30, 13,
    -- layer=1 filter=108 channel=1
    -11, 12, 8, 3, 38, 25, -1, 0, -10,
    -- layer=1 filter=108 channel=2
    -8, -10, 2, 3, -8, -35, -4, 7, 6,
    -- layer=1 filter=108 channel=3
    27, -22, -12, -11, -9, -27, -17, 5, 1,
    -- layer=1 filter=108 channel=4
    -9, 3, -4, 1, 20, -1, -33, -2, 4,
    -- layer=1 filter=108 channel=5
    -84, -56, -74, -73, -68, -29, -91, -76, -17,
    -- layer=1 filter=108 channel=6
    4, 5, -1, -19, -18, 12, -49, -33, -26,
    -- layer=1 filter=108 channel=7
    -9, -13, 5, -4, -4, 0, -33, -34, 6,
    -- layer=1 filter=108 channel=8
    15, 30, -5, 3, -13, 20, -2, -41, -7,
    -- layer=1 filter=108 channel=9
    32, 9, -4, 34, -7, -1, -10, 12, 9,
    -- layer=1 filter=108 channel=10
    -19, -27, -15, -40, -9, -5, 12, 25, -15,
    -- layer=1 filter=108 channel=11
    18, 25, 14, -12, 2, 23, -21, -25, 5,
    -- layer=1 filter=108 channel=12
    32, -18, 15, 19, 6, -27, 48, 40, 16,
    -- layer=1 filter=108 channel=13
    3, 49, 9, 22, 48, 22, -4, 30, 12,
    -- layer=1 filter=108 channel=14
    0, 28, 0, -16, 17, 1, 3, 15, 4,
    -- layer=1 filter=108 channel=15
    21, -11, 15, 20, 5, -13, 0, 6, -10,
    -- layer=1 filter=108 channel=16
    14, 17, 11, -4, -43, -10, 5, -5, 8,
    -- layer=1 filter=108 channel=17
    51, 52, -27, 35, 49, 0, 23, 54, 12,
    -- layer=1 filter=108 channel=18
    -7, -15, -6, -8, -2, 14, 2, 10, -10,
    -- layer=1 filter=108 channel=19
    13, 0, -1, 7, -4, -2, 0, -38, -18,
    -- layer=1 filter=108 channel=20
    20, 0, 8, 17, 23, -5, 21, 16, -27,
    -- layer=1 filter=108 channel=21
    47, 35, 17, 54, 52, 21, 11, 60, 17,
    -- layer=1 filter=108 channel=22
    -110, -69, -56, -103, -107, -55, -65, -99, -51,
    -- layer=1 filter=108 channel=23
    -22, -8, -17, -27, 21, 3, -28, 2, 10,
    -- layer=1 filter=108 channel=24
    22, 26, 2, 36, 6, 9, 13, 26, -6,
    -- layer=1 filter=108 channel=25
    -20, -52, 9, 13, -34, 14, 62, -18, 11,
    -- layer=1 filter=108 channel=26
    5, -29, -4, -3, -9, -27, 0, -19, 0,
    -- layer=1 filter=108 channel=27
    46, 8, 12, 24, 46, -17, 34, 45, 20,
    -- layer=1 filter=108 channel=28
    7, 30, -13, -1, 18, 29, -4, -1, 5,
    -- layer=1 filter=108 channel=29
    37, -30, 26, 26, -24, 18, 64, -48, -5,
    -- layer=1 filter=108 channel=30
    -4, 4, 3, 8, 12, 7, 6, -3, 13,
    -- layer=1 filter=108 channel=31
    21, -1, 31, -1, -5, 12, 9, -25, 20,
    -- layer=1 filter=108 channel=32
    53, -17, 0, 70, 18, -47, 69, 44, 19,
    -- layer=1 filter=108 channel=33
    0, 0, -2, 16, 12, 4, -2, -14, 2,
    -- layer=1 filter=108 channel=34
    9, 25, 19, 9, 11, 0, -4, -14, -12,
    -- layer=1 filter=108 channel=35
    22, 19, 26, -25, -18, -5, -11, -65, -10,
    -- layer=1 filter=108 channel=36
    41, 10, 11, -28, -13, -10, -26, 29, -10,
    -- layer=1 filter=108 channel=37
    14, 22, 13, -2, 14, 2, -26, -8, 12,
    -- layer=1 filter=108 channel=38
    14, -22, 22, 4, 13, -4, 0, -30, 11,
    -- layer=1 filter=108 channel=39
    19, 6, 10, 8, 17, -13, -3, -19, -7,
    -- layer=1 filter=108 channel=40
    -32, -23, 0, -43, -65, 2, -26, -47, -1,
    -- layer=1 filter=108 channel=41
    -66, -56, -79, -60, -50, -28, -59, -58, -40,
    -- layer=1 filter=108 channel=42
    -12, 14, 1, -13, 17, 3, -31, 6, -13,
    -- layer=1 filter=108 channel=43
    -17, -58, 37, 0, -65, -15, 50, -56, 15,
    -- layer=1 filter=108 channel=44
    -7, -24, 24, -16, -44, -9, 7, -16, -23,
    -- layer=1 filter=108 channel=45
    35, -2, 67, 31, -18, 39, 78, -33, 32,
    -- layer=1 filter=108 channel=46
    -31, -14, -16, -42, -29, -4, -10, -43, -14,
    -- layer=1 filter=108 channel=47
    8, -9, 17, -11, -56, 18, -9, -59, 8,
    -- layer=1 filter=108 channel=48
    -109, -85, -104, -78, -108, -64, -109, -105, -82,
    -- layer=1 filter=108 channel=49
    -15, -8, 0, -2, -15, -18, -16, -5, 11,
    -- layer=1 filter=108 channel=50
    31, 5, 22, 0, 8, -3, -7, 0, -9,
    -- layer=1 filter=108 channel=51
    -32, 5, -7, -25, -40, 5, -29, -43, -26,
    -- layer=1 filter=108 channel=52
    45, 32, 23, 30, 32, 39, 6, 48, 31,
    -- layer=1 filter=108 channel=53
    13, -1, 14, -34, 3, -32, -18, 30, -4,
    -- layer=1 filter=108 channel=54
    0, -7, -5, 2, -13, 11, -35, -42, -4,
    -- layer=1 filter=108 channel=55
    44, 26, 3, 29, 32, 19, 50, 48, 31,
    -- layer=1 filter=108 channel=56
    -20, -7, 13, -5, -18, 22, 6, -54, -4,
    -- layer=1 filter=108 channel=57
    0, 0, 22, -10, -6, 0, -36, -21, -20,
    -- layer=1 filter=108 channel=58
    17, 26, -4, -12, 2, -9, -6, -5, 12,
    -- layer=1 filter=108 channel=59
    25, 10, 31, -5, 23, 17, -10, -1, -7,
    -- layer=1 filter=108 channel=60
    41, 9, 19, -3, 16, -4, 11, -4, -2,
    -- layer=1 filter=108 channel=61
    11, 35, 20, 0, 35, 18, -7, -5, -1,
    -- layer=1 filter=108 channel=62
    25, -8, 16, 33, -4, -12, 81, 59, 27,
    -- layer=1 filter=108 channel=63
    -41, -16, -38, -32, -79, -63, -36, -41, -3,
    -- layer=1 filter=109 channel=0
    -11, -4, -4, 3, 2, -17, 4, -13, -6,
    -- layer=1 filter=109 channel=1
    -22, 1, -3, -7, -3, -11, -12, 4, -13,
    -- layer=1 filter=109 channel=2
    -2, 1, 3, -9, 2, 0, -16, -3, -12,
    -- layer=1 filter=109 channel=3
    -3, 5, -13, 2, -8, 9, 5, -3, 0,
    -- layer=1 filter=109 channel=4
    -10, 4, -4, 3, 0, 5, -3, -14, 2,
    -- layer=1 filter=109 channel=5
    -5, -26, 3, 2, -9, -9, -4, -25, -6,
    -- layer=1 filter=109 channel=6
    -9, -15, -13, -3, 3, 0, 7, 2, -17,
    -- layer=1 filter=109 channel=7
    -23, -21, 2, -2, -17, -4, 2, -10, -17,
    -- layer=1 filter=109 channel=8
    -7, -14, -6, 0, -2, -5, -23, -4, -18,
    -- layer=1 filter=109 channel=9
    -2, -9, 0, 0, -13, 5, -21, -10, 2,
    -- layer=1 filter=109 channel=10
    -27, 11, 3, -17, -6, 13, 8, -1, -10,
    -- layer=1 filter=109 channel=11
    -17, 5, -14, -17, -11, -11, 3, -3, -20,
    -- layer=1 filter=109 channel=12
    -7, 5, -8, -26, 10, -13, 7, -6, 0,
    -- layer=1 filter=109 channel=13
    -8, -9, 3, -7, 6, -7, -13, 2, -10,
    -- layer=1 filter=109 channel=14
    -10, -12, -9, 5, -10, -17, -13, 6, 4,
    -- layer=1 filter=109 channel=15
    -28, -2, -24, -33, 1, 1, -18, 0, -11,
    -- layer=1 filter=109 channel=16
    -8, 0, -19, -20, -1, -12, -6, -6, -16,
    -- layer=1 filter=109 channel=17
    -7, -4, 7, -1, 20, -10, 8, 11, -7,
    -- layer=1 filter=109 channel=18
    7, -2, 9, -13, 3, 8, -15, 7, 11,
    -- layer=1 filter=109 channel=19
    -25, 0, 7, -7, -11, 5, -4, -6, -2,
    -- layer=1 filter=109 channel=20
    -4, -1, -1, -10, -2, 9, -3, -10, -9,
    -- layer=1 filter=109 channel=21
    -1, -2, -4, -22, 0, 4, -19, -16, -11,
    -- layer=1 filter=109 channel=22
    -5, 9, 2, -19, 6, 4, -5, 1, -5,
    -- layer=1 filter=109 channel=23
    11, -15, 5, -11, -9, 6, -9, -17, -7,
    -- layer=1 filter=109 channel=24
    -10, -17, 11, -16, -8, -6, -10, 13, -1,
    -- layer=1 filter=109 channel=25
    5, -18, -2, -1, -12, -18, -8, 11, -15,
    -- layer=1 filter=109 channel=26
    -9, -5, -3, -3, -7, -2, -13, -16, 0,
    -- layer=1 filter=109 channel=27
    -15, -9, -5, -7, 10, 11, -3, -12, -4,
    -- layer=1 filter=109 channel=28
    -8, -17, -6, -14, 3, -16, -6, -16, -1,
    -- layer=1 filter=109 channel=29
    13, 6, -1, -5, -13, -20, 3, 0, -8,
    -- layer=1 filter=109 channel=30
    2, 15, 13, -2, 7, 9, -13, 15, 12,
    -- layer=1 filter=109 channel=31
    -21, -6, -22, -17, -7, -7, -3, -15, -8,
    -- layer=1 filter=109 channel=32
    -37, -22, -18, -14, -12, 0, 4, 0, 0,
    -- layer=1 filter=109 channel=33
    6, -12, 11, 1, -13, 0, -10, 6, 1,
    -- layer=1 filter=109 channel=34
    -18, 1, -13, -2, -13, 8, -18, 5, 11,
    -- layer=1 filter=109 channel=35
    -17, 1, 3, -6, -5, -13, -10, 5, -2,
    -- layer=1 filter=109 channel=36
    4, -20, -2, -26, -13, 6, -13, -5, -12,
    -- layer=1 filter=109 channel=37
    -14, -2, -16, 5, -5, -4, 6, 0, -16,
    -- layer=1 filter=109 channel=38
    3, -7, -1, 0, 5, -4, -9, -7, 2,
    -- layer=1 filter=109 channel=39
    -5, 10, -7, -1, 0, -9, 1, -1, 13,
    -- layer=1 filter=109 channel=40
    7, -11, -21, 5, 0, -17, 3, 9, -6,
    -- layer=1 filter=109 channel=41
    -20, -19, -3, -15, 0, -6, -3, -16, -21,
    -- layer=1 filter=109 channel=42
    -5, 7, -2, -17, -4, -21, -5, -9, -10,
    -- layer=1 filter=109 channel=43
    6, -25, 7, -5, -10, -17, 1, -7, -22,
    -- layer=1 filter=109 channel=44
    -23, -11, -4, -17, -7, -12, -8, -24, -1,
    -- layer=1 filter=109 channel=45
    -1, -24, -2, 14, -3, 2, 19, -5, -19,
    -- layer=1 filter=109 channel=46
    10, -14, 11, -1, -3, -12, 10, 8, 7,
    -- layer=1 filter=109 channel=47
    4, -21, -16, 2, -10, 6, -2, -7, -5,
    -- layer=1 filter=109 channel=48
    -7, 5, -8, -7, -8, -5, 7, -7, 7,
    -- layer=1 filter=109 channel=49
    -17, -16, -14, -5, -13, -12, 6, -25, -2,
    -- layer=1 filter=109 channel=50
    -20, -19, -10, -2, -2, 1, 0, -15, -2,
    -- layer=1 filter=109 channel=51
    -23, -16, -4, -15, -7, -20, -4, -12, -3,
    -- layer=1 filter=109 channel=52
    2, 9, 5, -13, 5, 10, -8, -3, -7,
    -- layer=1 filter=109 channel=53
    -5, -2, -4, 1, -12, 2, -8, -2, -8,
    -- layer=1 filter=109 channel=54
    -19, -2, -15, -13, 4, -19, -15, 3, -5,
    -- layer=1 filter=109 channel=55
    9, 19, -16, -8, 8, 19, 6, -5, -13,
    -- layer=1 filter=109 channel=56
    -11, -10, -16, 13, 9, 0, -20, -17, -18,
    -- layer=1 filter=109 channel=57
    -2, -10, 4, -9, -3, -9, 6, -5, 5,
    -- layer=1 filter=109 channel=58
    -10, 6, -4, -16, 6, -8, 2, 8, 7,
    -- layer=1 filter=109 channel=59
    -13, 0, -5, -9, -8, -13, 7, -15, 1,
    -- layer=1 filter=109 channel=60
    -2, -12, -25, -28, -9, -9, -2, 7, -12,
    -- layer=1 filter=109 channel=61
    -23, 7, 5, -10, -13, -3, -6, -11, -26,
    -- layer=1 filter=109 channel=62
    7, 1, -16, 9, 2, 7, -26, -16, -4,
    -- layer=1 filter=109 channel=63
    -21, -16, -16, -16, -5, -10, 4, 8, 10,
    -- layer=1 filter=110 channel=0
    3, 30, 9, -23, 17, 10, -25, -53, -42,
    -- layer=1 filter=110 channel=1
    -29, -8, 35, -46, -29, 24, -74, -40, -24,
    -- layer=1 filter=110 channel=2
    10, 1, 12, 12, 27, 8, 24, 43, 5,
    -- layer=1 filter=110 channel=3
    55, 4, 8, -32, 3, 27, -20, 11, -22,
    -- layer=1 filter=110 channel=4
    -1, 5, -12, -23, -17, 1, -15, -25, 5,
    -- layer=1 filter=110 channel=5
    9, 4, -16, 15, 57, 28, 22, 26, 6,
    -- layer=1 filter=110 channel=6
    -15, -25, 20, -17, 6, 13, -4, 0, -4,
    -- layer=1 filter=110 channel=7
    -5, -13, -8, -24, 32, 13, -20, 2, 5,
    -- layer=1 filter=110 channel=8
    -1, 7, 5, -31, 5, -21, -32, -17, -42,
    -- layer=1 filter=110 channel=9
    21, 4, -20, -1, 8, 13, 0, -1, -4,
    -- layer=1 filter=110 channel=10
    15, 44, 49, -51, -46, -20, -67, -72, -39,
    -- layer=1 filter=110 channel=11
    -27, -34, -17, -9, -36, -34, -21, -31, -27,
    -- layer=1 filter=110 channel=12
    21, -26, -20, 70, 21, -14, 58, 34, -18,
    -- layer=1 filter=110 channel=13
    -30, 21, 37, -36, -32, 20, -97, -82, -50,
    -- layer=1 filter=110 channel=14
    -15, 31, 28, -44, 7, 46, -70, -32, -17,
    -- layer=1 filter=110 channel=15
    31, -16, -13, 39, 7, -5, 45, 47, 40,
    -- layer=1 filter=110 channel=16
    11, 32, -2, 36, 42, 22, 2, 28, 9,
    -- layer=1 filter=110 channel=17
    51, 70, 84, -21, 27, 91, -44, -64, 15,
    -- layer=1 filter=110 channel=18
    -6, -11, -9, -3, 12, 4, 11, 0, 1,
    -- layer=1 filter=110 channel=19
    1, 4, -11, 13, 8, 0, 2, 26, 16,
    -- layer=1 filter=110 channel=20
    2, 7, 24, -5, 28, 9, -29, -12, -29,
    -- layer=1 filter=110 channel=21
    -17, -29, 39, -31, -53, -35, -51, -93, -73,
    -- layer=1 filter=110 channel=22
    25, 52, 56, 4, 21, 20, -23, 4, -18,
    -- layer=1 filter=110 channel=23
    106, 118, 174, 80, 92, 163, 11, 15, 25,
    -- layer=1 filter=110 channel=24
    -5, 7, 28, 0, -15, 0, -10, 8, 11,
    -- layer=1 filter=110 channel=25
    32, -36, 19, -9, -24, 33, -37, 0, -35,
    -- layer=1 filter=110 channel=26
    9, -6, -1, 26, -8, 18, -19, -12, 16,
    -- layer=1 filter=110 channel=27
    -6, -36, -31, 26, 0, -20, 28, 21, -18,
    -- layer=1 filter=110 channel=28
    -4, 53, 26, -15, 21, 45, -43, -16, 6,
    -- layer=1 filter=110 channel=29
    0, 9, 2, 7, 2, 20, -11, -9, 10,
    -- layer=1 filter=110 channel=30
    0, 1, -8, -6, -3, 1, -6, 23, 1,
    -- layer=1 filter=110 channel=31
    19, -13, -24, 15, -10, -14, 39, 16, -12,
    -- layer=1 filter=110 channel=32
    24, 6, -10, 66, 28, -6, 21, 33, 9,
    -- layer=1 filter=110 channel=33
    -5, 3, -15, 11, 18, -5, 12, 18, 0,
    -- layer=1 filter=110 channel=34
    -13, 24, 0, -14, -7, -8, -11, -26, -31,
    -- layer=1 filter=110 channel=35
    26, 0, -24, 18, 6, -3, 34, 20, -10,
    -- layer=1 filter=110 channel=36
    28, 20, -27, 25, -5, -17, 2, 14, -33,
    -- layer=1 filter=110 channel=37
    1, -15, 15, -28, -59, -9, -55, -91, -70,
    -- layer=1 filter=110 channel=38
    47, -32, 0, 24, -13, -10, 53, 24, 23,
    -- layer=1 filter=110 channel=39
    -15, -15, -11, 7, -1, 7, -11, -12, -4,
    -- layer=1 filter=110 channel=40
    -4, 32, 34, -7, 14, 51, 4, 31, 35,
    -- layer=1 filter=110 channel=41
    -9, -14, -10, -27, 14, 6, 17, 20, 19,
    -- layer=1 filter=110 channel=42
    -24, -2, 39, -51, 6, -8, -49, -48, -41,
    -- layer=1 filter=110 channel=43
    9, 19, 8, 23, 22, 55, 23, 29, 39,
    -- layer=1 filter=110 channel=44
    28, -11, -13, 33, 20, -4, 79, 37, 34,
    -- layer=1 filter=110 channel=45
    37, 28, 25, 28, -5, 12, 14, 39, 18,
    -- layer=1 filter=110 channel=46
    11, 59, 50, -17, 11, 38, -22, 15, 17,
    -- layer=1 filter=110 channel=47
    11, 28, 0, 5, 18, 26, 2, 19, -2,
    -- layer=1 filter=110 channel=48
    37, 27, 50, -9, 30, 9, 18, 34, 31,
    -- layer=1 filter=110 channel=49
    -23, -33, -25, 3, -24, -47, 13, 7, -28,
    -- layer=1 filter=110 channel=50
    12, -5, -31, -5, -31, -31, -24, -31, -51,
    -- layer=1 filter=110 channel=51
    5, -28, -10, 0, -11, 2, 0, -3, 15,
    -- layer=1 filter=110 channel=52
    -2, 31, 6, -79, -43, -2, -65, -93, -30,
    -- layer=1 filter=110 channel=53
    20, 25, 19, 15, 40, 26, -12, 10, 14,
    -- layer=1 filter=110 channel=54
    1, -9, -10, -27, 7, 5, -10, -17, -7,
    -- layer=1 filter=110 channel=55
    36, 96, 83, 2, 61, 122, 22, 4, 61,
    -- layer=1 filter=110 channel=56
    0, 15, 31, -21, 0, 29, -33, -31, -11,
    -- layer=1 filter=110 channel=57
    11, -2, -13, 15, -7, -19, 26, 2, -10,
    -- layer=1 filter=110 channel=58
    39, -5, -3, -6, -14, 17, -33, -17, -26,
    -- layer=1 filter=110 channel=59
    3, -22, -12, 10, -6, -28, 20, -7, -20,
    -- layer=1 filter=110 channel=60
    14, -13, -5, 4, -6, -40, 12, -6, -24,
    -- layer=1 filter=110 channel=61
    -34, 22, 29, -72, -2, 2, -76, -84, -28,
    -- layer=1 filter=110 channel=62
    -8, -28, -54, 13, -52, -73, 31, 22, -61,
    -- layer=1 filter=110 channel=63
    49, 47, 26, 27, 60, 28, -9, 49, 26,
    -- layer=1 filter=111 channel=0
    -10, -8, -7, -13, -4, 11, 11, 1, 7,
    -- layer=1 filter=111 channel=1
    6, 5, 2, 2, 7, 0, -5, -14, -1,
    -- layer=1 filter=111 channel=2
    -11, 8, -2, 8, -8, 14, 0, -6, 5,
    -- layer=1 filter=111 channel=3
    -9, 5, -12, 2, -10, -12, 5, 6, 0,
    -- layer=1 filter=111 channel=4
    -2, -16, 6, 10, -14, -9, -6, 4, -7,
    -- layer=1 filter=111 channel=5
    4, -6, -3, -12, -9, -8, -13, 1, -1,
    -- layer=1 filter=111 channel=6
    -1, -6, 0, 10, -1, 7, 10, -3, -1,
    -- layer=1 filter=111 channel=7
    -3, 1, 0, 1, 3, 8, -13, 10, 2,
    -- layer=1 filter=111 channel=8
    4, -12, -7, -15, -8, -4, -5, -8, -9,
    -- layer=1 filter=111 channel=9
    -3, 5, 8, -3, -15, -2, 0, -1, 0,
    -- layer=1 filter=111 channel=10
    11, -8, -2, 10, -2, -9, 10, 10, 8,
    -- layer=1 filter=111 channel=11
    -2, -2, -6, 10, 12, 0, -12, 5, -2,
    -- layer=1 filter=111 channel=12
    11, 10, -2, -3, 3, 2, -12, -14, 3,
    -- layer=1 filter=111 channel=13
    -15, 10, 2, -7, -10, 1, -1, 12, -2,
    -- layer=1 filter=111 channel=14
    -12, 1, -6, -9, 10, 0, 1, -12, 0,
    -- layer=1 filter=111 channel=15
    -7, 7, -5, 13, 0, 7, 9, 2, 12,
    -- layer=1 filter=111 channel=16
    0, -9, -5, -10, -16, -8, -15, -11, 7,
    -- layer=1 filter=111 channel=17
    -10, 5, -8, 3, -8, -8, 1, -2, -15,
    -- layer=1 filter=111 channel=18
    -8, 8, -9, 4, 6, -2, 15, 2, 0,
    -- layer=1 filter=111 channel=19
    -4, -15, -6, -11, -1, -14, -2, -6, 6,
    -- layer=1 filter=111 channel=20
    -6, -1, -3, 11, 4, 7, 5, -5, 0,
    -- layer=1 filter=111 channel=21
    0, 10, 10, -14, -14, 10, 8, 8, -8,
    -- layer=1 filter=111 channel=22
    1, 6, 1, 8, -12, -13, -11, -5, 8,
    -- layer=1 filter=111 channel=23
    -5, -7, 6, -2, 0, 8, -19, -2, 4,
    -- layer=1 filter=111 channel=24
    1, -10, 11, -9, -12, 14, -2, 10, -13,
    -- layer=1 filter=111 channel=25
    -10, -10, -1, 7, -6, 1, -2, 3, -14,
    -- layer=1 filter=111 channel=26
    -7, -9, -8, -2, 0, -11, 7, -11, -4,
    -- layer=1 filter=111 channel=27
    -10, 6, -4, -1, -6, -5, 9, -12, 0,
    -- layer=1 filter=111 channel=28
    11, 11, -4, -3, -9, -14, -8, 5, 6,
    -- layer=1 filter=111 channel=29
    3, -11, 3, 11, 8, -18, 2, -12, -5,
    -- layer=1 filter=111 channel=30
    5, -7, -11, 14, 4, -4, -7, 6, -4,
    -- layer=1 filter=111 channel=31
    -10, 10, 7, 13, 11, 12, -12, -12, 0,
    -- layer=1 filter=111 channel=32
    -15, -9, -13, -9, -14, -12, 7, -10, 7,
    -- layer=1 filter=111 channel=33
    -10, 2, 12, -14, 3, 4, -7, -13, 0,
    -- layer=1 filter=111 channel=34
    7, -10, -12, 5, 12, -12, -4, 6, -8,
    -- layer=1 filter=111 channel=35
    9, 12, -13, -16, 0, 10, -6, -8, -5,
    -- layer=1 filter=111 channel=36
    -12, 9, -14, 15, 2, -6, 7, -3, 1,
    -- layer=1 filter=111 channel=37
    6, 13, -4, 0, 3, 3, 11, -4, -5,
    -- layer=1 filter=111 channel=38
    0, 11, 1, 14, -17, -15, -13, -7, -14,
    -- layer=1 filter=111 channel=39
    4, 7, 3, -1, -14, 12, 4, -3, 5,
    -- layer=1 filter=111 channel=40
    -5, -10, -11, -9, -7, -17, -15, 4, -3,
    -- layer=1 filter=111 channel=41
    11, -4, 4, -13, 10, -5, 10, 6, -4,
    -- layer=1 filter=111 channel=42
    -16, -1, -1, -16, -3, -15, -1, -9, 0,
    -- layer=1 filter=111 channel=43
    -12, -7, 8, 0, -1, 7, 11, -14, -16,
    -- layer=1 filter=111 channel=44
    3, 4, -4, -14, -11, -11, -5, -2, -9,
    -- layer=1 filter=111 channel=45
    3, -11, 7, -7, 11, 0, -14, 8, 10,
    -- layer=1 filter=111 channel=46
    5, -10, -14, 7, 2, 6, -15, -9, -13,
    -- layer=1 filter=111 channel=47
    5, -12, 6, -2, -5, -16, 9, -6, -3,
    -- layer=1 filter=111 channel=48
    -12, 6, -10, 12, 5, -11, -10, -14, -2,
    -- layer=1 filter=111 channel=49
    3, 4, -12, -14, 10, -12, -13, 2, -9,
    -- layer=1 filter=111 channel=50
    -12, 0, -13, -13, 6, -8, -7, -10, -5,
    -- layer=1 filter=111 channel=51
    10, -8, 12, -9, 0, -1, -7, 2, -4,
    -- layer=1 filter=111 channel=52
    6, -2, -14, -4, -12, 9, 1, 9, 13,
    -- layer=1 filter=111 channel=53
    4, -2, 5, -6, 13, -4, 13, -12, 14,
    -- layer=1 filter=111 channel=54
    -14, -14, 8, 3, 8, 8, -4, 6, 10,
    -- layer=1 filter=111 channel=55
    11, -4, -2, 10, -2, -4, -12, 13, 1,
    -- layer=1 filter=111 channel=56
    -10, 4, -12, -2, 11, -11, -3, 12, 9,
    -- layer=1 filter=111 channel=57
    -10, 1, 13, 3, 11, 1, -8, 0, -14,
    -- layer=1 filter=111 channel=58
    -16, 7, -16, 2, 0, -3, -14, 8, -1,
    -- layer=1 filter=111 channel=59
    -10, 8, -7, 0, -2, -2, -8, 0, -6,
    -- layer=1 filter=111 channel=60
    -8, 7, -16, 9, -11, -9, -15, -13, -4,
    -- layer=1 filter=111 channel=61
    -5, -9, 10, 5, -1, -15, 5, 4, -13,
    -- layer=1 filter=111 channel=62
    4, 0, -3, -13, -2, 8, 12, -17, -9,
    -- layer=1 filter=111 channel=63
    -9, 3, 2, -11, -11, -6, 0, 6, -13,
    -- layer=1 filter=112 channel=0
    -15, -18, -27, 8, -40, -5, 1, -12, 5,
    -- layer=1 filter=112 channel=1
    23, 3, 12, 21, -3, 18, -8, 25, 27,
    -- layer=1 filter=112 channel=2
    -5, -24, -18, -1, -33, -16, 17, -18, -7,
    -- layer=1 filter=112 channel=3
    -108, -81, -42, 4, -41, -31, -14, -12, -13,
    -- layer=1 filter=112 channel=4
    13, 3, -20, 26, -15, -4, 20, 0, -2,
    -- layer=1 filter=112 channel=5
    19, 25, -39, 29, -23, 12, -2, 47, 20,
    -- layer=1 filter=112 channel=6
    7, 14, -2, 3, 5, -11, 31, 29, 2,
    -- layer=1 filter=112 channel=7
    0, -15, -9, 2, 15, -7, 1, 13, 0,
    -- layer=1 filter=112 channel=8
    -5, -3, -25, 16, 3, 11, 14, 31, 5,
    -- layer=1 filter=112 channel=9
    -39, -16, -17, 12, -13, -32, 1, -9, -30,
    -- layer=1 filter=112 channel=10
    2, 23, -8, -5, -15, 13, 10, 9, 17,
    -- layer=1 filter=112 channel=11
    -12, 6, -43, 24, 9, -10, 11, 18, 2,
    -- layer=1 filter=112 channel=12
    -79, -61, -44, -61, -72, -67, -36, -104, -31,
    -- layer=1 filter=112 channel=13
    1, -18, -11, 19, -13, -8, 13, -5, 1,
    -- layer=1 filter=112 channel=14
    7, 0, 0, 1, 9, -16, 28, 11, 0,
    -- layer=1 filter=112 channel=15
    -43, -35, -1, -24, -13, -30, -5, -19, -45,
    -- layer=1 filter=112 channel=16
    -49, -43, 8, -38, -13, -23, -30, -19, 9,
    -- layer=1 filter=112 channel=17
    -2, -13, -11, -17, 0, -21, 2, -32, -19,
    -- layer=1 filter=112 channel=18
    1, -12, 10, 14, 0, -4, -12, 7, 14,
    -- layer=1 filter=112 channel=19
    6, 13, -5, 2, 7, 13, 24, 11, 0,
    -- layer=1 filter=112 channel=20
    -24, -12, 11, 7, -6, -8, 22, -4, 3,
    -- layer=1 filter=112 channel=21
    -1, 7, 10, -23, 7, 3, -17, -30, 11,
    -- layer=1 filter=112 channel=22
    -48, -5, -29, -19, -71, 2, -7, 1, 16,
    -- layer=1 filter=112 channel=23
    -21, -7, -7, -35, -11, -15, -43, -44, -54,
    -- layer=1 filter=112 channel=24
    -2, 15, 27, -50, -15, 19, -19, -5, 14,
    -- layer=1 filter=112 channel=25
    19, 8, 47, 0, 8, 18, -19, 22, 24,
    -- layer=1 filter=112 channel=26
    7, 17, 6, -7, 10, 0, -11, -3, 10,
    -- layer=1 filter=112 channel=27
    -67, -59, -50, -55, -82, -84, -28, -76, -38,
    -- layer=1 filter=112 channel=28
    28, 1, -34, 16, 2, -6, 13, 29, 16,
    -- layer=1 filter=112 channel=29
    47, 7, 23, 30, 10, 59, 5, 30, 55,
    -- layer=1 filter=112 channel=30
    -12, -15, -10, 6, -13, -5, -1, 9, -4,
    -- layer=1 filter=112 channel=31
    -15, -24, -11, -12, -8, 7, -15, -8, -24,
    -- layer=1 filter=112 channel=32
    -65, -23, -18, -28, -65, -51, 6, -66, -34,
    -- layer=1 filter=112 channel=33
    10, 0, 4, 2, 3, -6, -5, -2, 2,
    -- layer=1 filter=112 channel=34
    3, -2, -29, 5, -12, 9, 19, 19, -11,
    -- layer=1 filter=112 channel=35
    -27, -13, -8, -13, 9, 9, -6, -3, -6,
    -- layer=1 filter=112 channel=36
    -57, -51, 3, -25, -23, -8, 18, -10, -15,
    -- layer=1 filter=112 channel=37
    -3, -26, -44, 23, -13, -37, 19, 12, -22,
    -- layer=1 filter=112 channel=38
    -58, -26, -25, -31, 7, 10, -15, -2, -28,
    -- layer=1 filter=112 channel=39
    10, 9, -8, 2, -1, -18, 13, 16, -18,
    -- layer=1 filter=112 channel=40
    34, 16, -2, 19, 19, 24, 11, 32, 29,
    -- layer=1 filter=112 channel=41
    22, 16, -44, 46, -4, -8, 9, 41, 31,
    -- layer=1 filter=112 channel=42
    7, 18, 6, 6, 1, -5, 23, 14, 4,
    -- layer=1 filter=112 channel=43
    25, 44, 47, 16, 19, 48, 16, 28, 38,
    -- layer=1 filter=112 channel=44
    -50, -38, -11, 0, -36, -29, -6, -27, -23,
    -- layer=1 filter=112 channel=45
    8, 10, 24, 9, 13, 18, -11, 13, 25,
    -- layer=1 filter=112 channel=46
    -18, 0, -37, -15, 6, -14, -9, 0, -13,
    -- layer=1 filter=112 channel=47
    1, -4, -1, 21, 17, -3, 20, 29, 2,
    -- layer=1 filter=112 channel=48
    -34, 19, -28, 15, -24, -10, 9, 26, 27,
    -- layer=1 filter=112 channel=49
    -30, -32, -39, -11, -32, -52, -20, -20, -20,
    -- layer=1 filter=112 channel=50
    -7, -8, -21, 4, 1, -28, -12, 10, 1,
    -- layer=1 filter=112 channel=51
    12, 1, -27, 21, -3, -10, 24, 8, -14,
    -- layer=1 filter=112 channel=52
    -13, -44, -28, -47, -25, -21, -14, -24, -7,
    -- layer=1 filter=112 channel=53
    -51, -47, -14, 23, -41, -45, 36, -23, -15,
    -- layer=1 filter=112 channel=54
    19, 5, -6, -3, 16, -9, 19, 25, -4,
    -- layer=1 filter=112 channel=55
    -12, -36, -10, -14, -5, -14, -44, -44, -35,
    -- layer=1 filter=112 channel=56
    20, 14, 20, 23, 12, 18, 15, 44, 9,
    -- layer=1 filter=112 channel=57
    -20, -1, -26, -15, -7, -28, 10, -12, -28,
    -- layer=1 filter=112 channel=58
    -46, -34, -29, -13, -19, -20, -1, 6, 7,
    -- layer=1 filter=112 channel=59
    -31, 0, -15, -10, 9, -17, 10, 0, -1,
    -- layer=1 filter=112 channel=60
    -62, -19, -22, -9, -12, -32, -12, -22, -25,
    -- layer=1 filter=112 channel=61
    13, 17, 0, 14, 9, 21, 16, 13, 14,
    -- layer=1 filter=112 channel=62
    -84, -86, -77, -82, -83, 13, -37, -43, -39,
    -- layer=1 filter=112 channel=63
    -75, -89, -44, -77, -78, -27, -29, -50, 27,
    -- layer=1 filter=113 channel=0
    -2, 4, 19, -2, -10, -7, -2, -3, -15,
    -- layer=1 filter=113 channel=1
    26, 23, 13, -22, -4, 34, -29, -23, -17,
    -- layer=1 filter=113 channel=2
    -18, -23, -19, 12, -17, -46, 4, 25, 1,
    -- layer=1 filter=113 channel=3
    1, -27, 37, 31, 22, -14, 19, -42, -20,
    -- layer=1 filter=113 channel=4
    25, -15, -26, -1, 25, -20, -23, -2, -15,
    -- layer=1 filter=113 channel=5
    95, 53, -8, -10, 71, 37, -30, -19, 17,
    -- layer=1 filter=113 channel=6
    12, 16, -9, -3, 5, -3, 2, -15, -11,
    -- layer=1 filter=113 channel=7
    -10, 4, 6, -18, 17, 1, -32, -7, 0,
    -- layer=1 filter=113 channel=8
    39, 18, 1, 0, 14, 31, -31, 0, 18,
    -- layer=1 filter=113 channel=9
    6, -10, -4, 2, 0, -17, 4, 17, 6,
    -- layer=1 filter=113 channel=10
    6, 16, 9, -19, -6, -9, 25, -2, 5,
    -- layer=1 filter=113 channel=11
    20, -17, -21, 4, 16, 11, -2, 2, 17,
    -- layer=1 filter=113 channel=12
    2, 9, -19, 32, -43, -101, 24, 2, -56,
    -- layer=1 filter=113 channel=13
    8, -5, 27, -3, -13, -7, -18, 2, 3,
    -- layer=1 filter=113 channel=14
    -27, -16, 5, -17, -2, 13, -7, -21, -10,
    -- layer=1 filter=113 channel=15
    13, 3, -9, 21, 14, 7, 34, 36, 23,
    -- layer=1 filter=113 channel=16
    -8, -14, -7, 10, 4, -36, 10, -7, -8,
    -- layer=1 filter=113 channel=17
    -27, 28, 77, -34, -24, 24, 2, -18, 14,
    -- layer=1 filter=113 channel=18
    5, 4, -13, -17, 8, -10, -3, 7, 8,
    -- layer=1 filter=113 channel=19
    25, -2, -8, -3, 19, 24, -20, -5, 12,
    -- layer=1 filter=113 channel=20
    -21, -12, 16, 19, -59, -10, 15, -3, -28,
    -- layer=1 filter=113 channel=21
    -16, 9, 11, -26, -30, -8, -38, -38, -27,
    -- layer=1 filter=113 channel=22
    -14, 11, -20, 3, -24, 24, -29, -10, 18,
    -- layer=1 filter=113 channel=23
    -56, 8, 71, -28, -48, 52, 23, 12, 54,
    -- layer=1 filter=113 channel=24
    -11, -7, 7, 30, 15, -8, -43, -6, -22,
    -- layer=1 filter=113 channel=25
    27, 66, 17, -29, -1, 20, -45, -54, -27,
    -- layer=1 filter=113 channel=26
    15, -15, -5, 1, 18, 15, 9, 9, -14,
    -- layer=1 filter=113 channel=27
    0, -2, -40, 0, -21, -135, -16, 13, -36,
    -- layer=1 filter=113 channel=28
    40, 18, 5, -10, 72, -15, -25, 10, 28,
    -- layer=1 filter=113 channel=29
    88, 69, 8, 12, 46, 61, -60, -2, 12,
    -- layer=1 filter=113 channel=30
    -1, -15, 3, 2, 2, 9, 10, 6, 10,
    -- layer=1 filter=113 channel=31
    10, 6, -29, 14, 7, -5, 10, 13, 10,
    -- layer=1 filter=113 channel=32
    17, -5, -29, 42, 0, -99, 42, 41, -42,
    -- layer=1 filter=113 channel=33
    -3, -13, -1, 17, 4, 12, -11, 6, 4,
    -- layer=1 filter=113 channel=34
    10, 0, -13, 2, 0, -13, -1, -16, 2,
    -- layer=1 filter=113 channel=35
    -11, -12, 2, -6, 10, -2, 7, -4, 7,
    -- layer=1 filter=113 channel=36
    18, -10, 43, -2, 13, -38, 26, -26, -29,
    -- layer=1 filter=113 channel=37
    -2, -6, -5, 8, 6, -26, 0, -4, 0,
    -- layer=1 filter=113 channel=38
    -1, 1, 18, 7, 21, 8, 16, 18, -8,
    -- layer=1 filter=113 channel=39
    11, -11, 4, -7, 8, -13, -11, 9, 9,
    -- layer=1 filter=113 channel=40
    1, -20, 7, -29, 14, 0, -18, -34, 5,
    -- layer=1 filter=113 channel=41
    74, 32, -9, -13, 50, 41, -55, -7, 33,
    -- layer=1 filter=113 channel=42
    -10, 17, 0, -33, -9, -6, -23, -17, 0,
    -- layer=1 filter=113 channel=43
    61, 48, 0, 9, 52, 34, -41, 7, 31,
    -- layer=1 filter=113 channel=44
    -13, -24, -10, 10, -14, -7, 19, 27, -4,
    -- layer=1 filter=113 channel=45
    69, 55, 0, 12, 47, 32, -18, -11, 23,
    -- layer=1 filter=113 channel=46
    0, -32, -9, -37, -23, 0, -9, -19, -19,
    -- layer=1 filter=113 channel=47
    29, 7, -7, -9, 8, 20, -34, -18, 4,
    -- layer=1 filter=113 channel=48
    15, 1, -10, -14, 30, 31, -52, -10, 27,
    -- layer=1 filter=113 channel=49
    5, -13, -50, -14, -21, -37, -5, -21, 4,
    -- layer=1 filter=113 channel=50
    16, 0, -4, 19, 28, 9, 2, 17, 0,
    -- layer=1 filter=113 channel=51
    -2, 8, -23, 7, 7, 3, -7, 17, 6,
    -- layer=1 filter=113 channel=52
    17, 31, 45, 4, 4, 42, 12, -21, 27,
    -- layer=1 filter=113 channel=53
    33, -37, 13, 32, 30, -42, 58, 21, -41,
    -- layer=1 filter=113 channel=54
    13, 14, -24, 4, 14, -5, -5, 10, -2,
    -- layer=1 filter=113 channel=55
    -5, 56, 63, -20, -24, 51, 7, -33, 38,
    -- layer=1 filter=113 channel=56
    28, 39, 5, -30, 19, 33, -59, -24, 16,
    -- layer=1 filter=113 channel=57
    -2, -13, -32, 2, 12, -26, 3, 28, 4,
    -- layer=1 filter=113 channel=58
    18, 9, 16, 15, -12, -29, -22, -17, -28,
    -- layer=1 filter=113 channel=59
    -7, 6, 13, 9, 6, -9, 1, 20, 9,
    -- layer=1 filter=113 channel=60
    -7, 1, 2, 20, -2, -43, 13, 9, -15,
    -- layer=1 filter=113 channel=61
    -22, -15, 9, -15, -7, 0, -22, -13, -14,
    -- layer=1 filter=113 channel=62
    -24, -142, -62, 11, -132, -182, 11, -156, -159,
    -- layer=1 filter=113 channel=63
    -25, -31, -1, -19, -23, -56, -8, -61, -25,
    -- layer=1 filter=114 channel=0
    -4, -6, 2, 5, -11, -21, -10, -4, -3,
    -- layer=1 filter=114 channel=1
    -13, -16, 8, -13, -9, 2, 9, -2, -9,
    -- layer=1 filter=114 channel=2
    0, -9, 2, 2, -1, 2, 2, 11, 9,
    -- layer=1 filter=114 channel=3
    3, 3, -1, -17, 9, -11, -20, -3, -19,
    -- layer=1 filter=114 channel=4
    -17, -15, -12, -21, 2, -18, 1, -7, -10,
    -- layer=1 filter=114 channel=5
    -1, 3, -15, -2, 0, -10, -6, 6, 8,
    -- layer=1 filter=114 channel=6
    -2, -8, -7, -21, 7, -3, 2, -18, -9,
    -- layer=1 filter=114 channel=7
    -15, 7, -12, -17, -5, -13, -10, -1, -4,
    -- layer=1 filter=114 channel=8
    -16, -3, -7, 7, -14, -8, -7, 4, -13,
    -- layer=1 filter=114 channel=9
    -2, 1, -10, 0, -20, -2, -19, -5, 0,
    -- layer=1 filter=114 channel=10
    23, 8, -2, 6, 2, 4, 2, -16, 16,
    -- layer=1 filter=114 channel=11
    -22, -24, -20, -8, -12, -5, -17, -12, -16,
    -- layer=1 filter=114 channel=12
    -3, -10, -4, -8, -20, -8, -3, -5, 10,
    -- layer=1 filter=114 channel=13
    -10, 9, 4, -16, 7, -7, -11, -12, -8,
    -- layer=1 filter=114 channel=14
    -7, 0, 1, -2, -8, -5, 1, 1, -8,
    -- layer=1 filter=114 channel=15
    -5, 2, -6, -7, -20, 3, 2, -11, -21,
    -- layer=1 filter=114 channel=16
    -21, 10, 9, 4, 12, 0, 5, 8, -12,
    -- layer=1 filter=114 channel=17
    -10, -3, 2, -16, -5, -6, -6, -16, 8,
    -- layer=1 filter=114 channel=18
    -11, -4, -7, 7, 3, -8, -14, -8, 6,
    -- layer=1 filter=114 channel=19
    -18, -3, 1, -10, -8, -7, -15, -9, 4,
    -- layer=1 filter=114 channel=20
    -18, -3, -9, -15, 1, -24, -22, -2, -4,
    -- layer=1 filter=114 channel=21
    -14, 17, 11, -11, 14, -9, 14, 8, -15,
    -- layer=1 filter=114 channel=22
    3, 1, -1, 7, 6, -10, -7, -9, 15,
    -- layer=1 filter=114 channel=23
    7, -4, -6, 8, 5, 10, 4, 6, 8,
    -- layer=1 filter=114 channel=24
    0, 9, -12, 0, -3, 1, -1, -7, 7,
    -- layer=1 filter=114 channel=25
    -6, 4, 7, -16, -11, 16, -4, -10, -2,
    -- layer=1 filter=114 channel=26
    -11, 10, 0, 6, -5, -5, 5, 11, 9,
    -- layer=1 filter=114 channel=27
    -22, -12, 1, 7, -16, -10, -6, -4, -1,
    -- layer=1 filter=114 channel=28
    11, 0, -4, -15, -4, 0, -9, -6, -11,
    -- layer=1 filter=114 channel=29
    -11, -4, 4, -5, 8, -6, -18, -1, -13,
    -- layer=1 filter=114 channel=30
    3, 14, 8, -2, 0, 8, 12, 4, -9,
    -- layer=1 filter=114 channel=31
    -18, -16, -17, -1, -10, 11, -13, 12, 1,
    -- layer=1 filter=114 channel=32
    -17, 6, -17, 11, 10, -4, 4, -7, -3,
    -- layer=1 filter=114 channel=33
    11, 12, 0, -5, -12, 4, 11, -3, -13,
    -- layer=1 filter=114 channel=34
    -13, -6, -15, -20, 5, -17, -16, 2, -15,
    -- layer=1 filter=114 channel=35
    4, -20, 5, 3, -2, -11, -3, -4, -4,
    -- layer=1 filter=114 channel=36
    -9, 13, -1, -18, -4, -8, -10, 9, -3,
    -- layer=1 filter=114 channel=37
    -4, 7, 12, 0, 9, -1, -15, -13, -8,
    -- layer=1 filter=114 channel=38
    7, -21, 14, -9, -16, -5, 5, -14, -18,
    -- layer=1 filter=114 channel=39
    -12, 11, -7, 14, 4, 0, -6, 0, -15,
    -- layer=1 filter=114 channel=40
    11, -13, -9, 2, 12, 9, 6, -16, -12,
    -- layer=1 filter=114 channel=41
    -5, -14, 2, 4, 7, -14, -19, 8, -2,
    -- layer=1 filter=114 channel=42
    -19, 7, 1, -11, 0, -21, 4, -1, -1,
    -- layer=1 filter=114 channel=43
    0, -16, -9, 2, -3, 6, -22, 13, 10,
    -- layer=1 filter=114 channel=44
    -8, 10, 4, 6, 6, -6, 4, -12, 10,
    -- layer=1 filter=114 channel=45
    -18, 7, -16, -15, -4, 13, -16, 21, -15,
    -- layer=1 filter=114 channel=46
    -16, 14, -5, -15, -7, -6, 6, -4, 9,
    -- layer=1 filter=114 channel=47
    -1, 8, -3, -18, -5, -5, -2, -19, 2,
    -- layer=1 filter=114 channel=48
    4, -1, -9, 1, -8, -8, -10, 11, 22,
    -- layer=1 filter=114 channel=49
    -21, 2, -17, -5, 6, -20, -22, -6, 4,
    -- layer=1 filter=114 channel=50
    -16, -8, -6, -7, 8, -4, -6, 7, 5,
    -- layer=1 filter=114 channel=51
    -11, -13, 4, -19, -19, -15, -12, -22, 0,
    -- layer=1 filter=114 channel=52
    14, -2, -2, 4, 9, 1, 2, 1, -8,
    -- layer=1 filter=114 channel=53
    3, 9, -6, 1, -4, -15, -21, -11, -17,
    -- layer=1 filter=114 channel=54
    4, -6, -9, -5, -5, 1, -6, -19, -17,
    -- layer=1 filter=114 channel=55
    1, 17, 14, 0, 9, -8, 5, 5, 14,
    -- layer=1 filter=114 channel=56
    0, -13, 8, -14, -20, 0, -22, -8, -19,
    -- layer=1 filter=114 channel=57
    -15, -13, -9, 4, -16, -20, -15, -5, -14,
    -- layer=1 filter=114 channel=58
    -2, 0, 13, -5, 0, -15, -4, 13, -22,
    -- layer=1 filter=114 channel=59
    -18, -16, 1, -12, 8, 0, -12, -17, -3,
    -- layer=1 filter=114 channel=60
    -5, -1, -4, -19, -12, 12, -1, 19, -18,
    -- layer=1 filter=114 channel=61
    -4, -14, -7, 9, 7, -8, 4, 1, -18,
    -- layer=1 filter=114 channel=62
    -1, 13, -4, -9, -16, -18, -16, 3, 13,
    -- layer=1 filter=114 channel=63
    -14, -10, -1, 10, -10, -18, -17, 3, 14,
    -- layer=1 filter=115 channel=0
    -19, -1, -16, -6, 3, -16, 14, -11, 2,
    -- layer=1 filter=115 channel=1
    -4, -6, -8, -7, -16, 0, -5, 0, 7,
    -- layer=1 filter=115 channel=2
    8, -15, -4, -17, -4, -16, -5, -3, -5,
    -- layer=1 filter=115 channel=3
    -5, 9, 7, 11, -5, -1, 12, -11, 0,
    -- layer=1 filter=115 channel=4
    -10, 8, 10, 8, -7, -16, -1, -7, -1,
    -- layer=1 filter=115 channel=5
    -4, -10, 10, 1, 2, -11, -2, 0, 12,
    -- layer=1 filter=115 channel=6
    -1, 4, -4, -1, -7, 10, -15, -3, -16,
    -- layer=1 filter=115 channel=7
    6, -3, -18, -4, -1, -10, 11, 0, 13,
    -- layer=1 filter=115 channel=8
    -6, -11, 4, -16, -14, 10, -9, -10, 0,
    -- layer=1 filter=115 channel=9
    5, 5, -12, 10, 10, 5, 5, 9, -1,
    -- layer=1 filter=115 channel=10
    -9, 3, 7, 3, 0, -15, 13, 10, -6,
    -- layer=1 filter=115 channel=11
    -14, -2, -15, 7, -9, 5, 5, -5, -11,
    -- layer=1 filter=115 channel=12
    6, 14, 7, 3, 13, -12, 2, -14, 4,
    -- layer=1 filter=115 channel=13
    2, -12, -1, -7, -11, -4, 0, 9, 6,
    -- layer=1 filter=115 channel=14
    -7, 7, -8, 5, 4, -11, -11, 3, 10,
    -- layer=1 filter=115 channel=15
    2, 2, 10, 10, 11, 1, -12, 0, 9,
    -- layer=1 filter=115 channel=16
    -11, -4, -13, -15, -4, -6, -10, 7, 7,
    -- layer=1 filter=115 channel=17
    -19, 11, 6, -9, -9, -7, -4, -6, 4,
    -- layer=1 filter=115 channel=18
    -4, -8, -3, 11, -7, -8, -14, -10, 10,
    -- layer=1 filter=115 channel=19
    -16, -12, 5, -15, -9, -9, -15, 1, -17,
    -- layer=1 filter=115 channel=20
    3, 8, 12, -8, -15, 6, 8, 6, -6,
    -- layer=1 filter=115 channel=21
    0, -12, -4, -5, -3, 10, 0, 0, 2,
    -- layer=1 filter=115 channel=22
    -5, 7, 12, -5, 4, -15, -10, -5, -3,
    -- layer=1 filter=115 channel=23
    8, -16, 2, 7, 11, -12, 0, 9, 6,
    -- layer=1 filter=115 channel=24
    -2, 11, -7, 2, -8, -1, -9, 12, 0,
    -- layer=1 filter=115 channel=25
    3, 0, -18, 5, -17, -11, -5, -8, 3,
    -- layer=1 filter=115 channel=26
    -9, -5, 11, 7, -1, 2, 3, -3, 7,
    -- layer=1 filter=115 channel=27
    -13, 11, -14, 1, 1, -13, 6, -1, -6,
    -- layer=1 filter=115 channel=28
    -3, -16, 6, 7, -10, -11, -12, 0, 14,
    -- layer=1 filter=115 channel=29
    13, 2, 9, -12, -3, -9, 7, -17, -6,
    -- layer=1 filter=115 channel=30
    0, -11, 7, -6, -4, -7, 5, -1, -5,
    -- layer=1 filter=115 channel=31
    -4, 10, 11, 7, 10, 4, 10, -3, 4,
    -- layer=1 filter=115 channel=32
    -14, -13, -10, 1, 11, 9, -2, 8, -9,
    -- layer=1 filter=115 channel=33
    -12, 14, 8, -5, -1, 2, 3, 5, -1,
    -- layer=1 filter=115 channel=34
    -8, -19, -1, -1, -13, -5, 6, -3, -3,
    -- layer=1 filter=115 channel=35
    -5, -4, 3, -3, 0, 4, 0, 13, 3,
    -- layer=1 filter=115 channel=36
    2, 2, -1, -6, 4, -13, -13, 5, -10,
    -- layer=1 filter=115 channel=37
    -15, 1, -6, -4, -9, 11, 9, 7, 8,
    -- layer=1 filter=115 channel=38
    -14, -4, 9, -13, -10, 8, 2, -4, -11,
    -- layer=1 filter=115 channel=39
    -13, -17, 4, 5, 3, 12, 12, -8, 1,
    -- layer=1 filter=115 channel=40
    0, -12, -7, 6, -5, 10, -4, 0, -7,
    -- layer=1 filter=115 channel=41
    -5, 6, 10, 2, 12, 11, -16, -6, -5,
    -- layer=1 filter=115 channel=42
    6, -11, -15, -11, -8, 0, -7, 5, -16,
    -- layer=1 filter=115 channel=43
    -10, -1, 7, 0, 7, -8, 10, -13, -7,
    -- layer=1 filter=115 channel=44
    -11, 3, 7, -9, -12, -3, -14, 5, 0,
    -- layer=1 filter=115 channel=45
    -6, 7, 13, 5, -9, -15, -2, -9, -4,
    -- layer=1 filter=115 channel=46
    9, -13, -1, 1, -17, -10, -6, -14, -4,
    -- layer=1 filter=115 channel=47
    -15, 3, -10, -9, 5, -9, 12, -7, -13,
    -- layer=1 filter=115 channel=48
    -7, 0, 2, -1, 8, -7, -5, -9, 3,
    -- layer=1 filter=115 channel=49
    -4, -4, -5, -1, -1, -11, 12, 8, -7,
    -- layer=1 filter=115 channel=50
    -9, -7, -2, -4, -15, 11, -8, 15, 11,
    -- layer=1 filter=115 channel=51
    -4, -1, 10, -8, 6, -1, 8, -7, -18,
    -- layer=1 filter=115 channel=52
    -4, -18, -1, 8, -6, 2, -6, 0, 0,
    -- layer=1 filter=115 channel=53
    11, -18, -15, -6, -6, 5, -10, -14, -12,
    -- layer=1 filter=115 channel=54
    -11, -13, -15, 9, -13, -17, -8, -9, -14,
    -- layer=1 filter=115 channel=55
    -13, 12, -3, 10, 0, -1, 4, -10, -13,
    -- layer=1 filter=115 channel=56
    -5, 6, -4, 8, -11, 12, -14, 11, 8,
    -- layer=1 filter=115 channel=57
    -16, 5, -10, 2, -14, -3, 8, 6, -10,
    -- layer=1 filter=115 channel=58
    -6, -3, 6, -14, -7, 8, 1, -6, 0,
    -- layer=1 filter=115 channel=59
    11, -10, -14, 12, 1, -9, 13, -8, 11,
    -- layer=1 filter=115 channel=60
    6, -19, 1, -2, -18, -2, -12, -8, -1,
    -- layer=1 filter=115 channel=61
    1, -12, 6, -9, 0, -10, 9, -2, -17,
    -- layer=1 filter=115 channel=62
    -13, 7, 9, -7, 13, -13, 1, -2, 0,
    -- layer=1 filter=115 channel=63
    9, 5, 9, 7, -3, -13, 16, 0, 8,
    -- layer=1 filter=116 channel=0
    -40, 3, 37, -1, 24, 14, 27, 31, -4,
    -- layer=1 filter=116 channel=1
    -14, -29, 33, -18, 4, 11, 11, 4, 8,
    -- layer=1 filter=116 channel=2
    -56, 11, 1, -4, 22, 9, 4, 8, -8,
    -- layer=1 filter=116 channel=3
    28, 7, -40, 38, -88, -98, -117, -147, -74,
    -- layer=1 filter=116 channel=4
    -38, -28, 33, -25, -4, 27, -18, -9, -16,
    -- layer=1 filter=116 channel=5
    -122, -28, 38, -3, 37, -21, 24, -12, -54,
    -- layer=1 filter=116 channel=6
    -21, -33, 35, -37, 13, 14, -10, 19, -23,
    -- layer=1 filter=116 channel=7
    21, -53, -5, -38, -32, 18, -49, 2, 12,
    -- layer=1 filter=116 channel=8
    3, -3, -5, -10, -41, -10, -5, -4, 26,
    -- layer=1 filter=116 channel=9
    14, -36, 12, -34, -2, -29, -7, -14, 7,
    -- layer=1 filter=116 channel=10
    10, -30, -12, 10, -29, -10, -18, -30, 0,
    -- layer=1 filter=116 channel=11
    -43, -10, 23, -13, 8, -7, 16, -10, -11,
    -- layer=1 filter=116 channel=12
    -54, 31, 71, -5, 61, 12, 58, 40, -12,
    -- layer=1 filter=116 channel=13
    -23, 10, 14, -42, 11, 14, -27, 27, 3,
    -- layer=1 filter=116 channel=14
    -12, -8, 3, -10, 4, 2, -20, -11, 0,
    -- layer=1 filter=116 channel=15
    37, -16, -27, 14, -16, 15, 0, -10, -4,
    -- layer=1 filter=116 channel=16
    39, 18, -53, 53, -107, -96, -77, -110, -26,
    -- layer=1 filter=116 channel=17
    40, 33, -6, -5, -8, 24, -25, -5, 19,
    -- layer=1 filter=116 channel=18
    15, -8, -11, 5, -2, 13, 10, 14, -4,
    -- layer=1 filter=116 channel=19
    13, -19, 14, -28, -31, 24, -15, 7, 24,
    -- layer=1 filter=116 channel=20
    -60, 37, 17, -21, 22, 3, 26, 8, -18,
    -- layer=1 filter=116 channel=21
    -5, -2, 26, -12, 18, 23, -6, 21, 3,
    -- layer=1 filter=116 channel=22
    -64, 60, 53, 20, 21, -78, 27, -36, -45,
    -- layer=1 filter=116 channel=23
    30, -13, 1, -21, 15, 18, -9, 18, 34,
    -- layer=1 filter=116 channel=24
    49, 34, -52, 58, -25, -59, -11, -63, -86,
    -- layer=1 filter=116 channel=25
    59, 24, -44, 8, -92, 28, -21, -6, 28,
    -- layer=1 filter=116 channel=26
    4, -18, 3, 16, -29, -20, -12, -15, -31,
    -- layer=1 filter=116 channel=27
    -86, 5, 49, -22, 50, 12, 28, 40, -28,
    -- layer=1 filter=116 channel=28
    -1, -33, 3, -34, -63, 12, -31, -25, -33,
    -- layer=1 filter=116 channel=29
    25, -14, -58, 3, -97, -21, -5, -19, 22,
    -- layer=1 filter=116 channel=30
    -5, -4, -12, -19, 1, -14, -13, -11, 7,
    -- layer=1 filter=116 channel=31
    28, 6, -20, 11, -36, 4, -5, -9, 29,
    -- layer=1 filter=116 channel=32
    -37, 3, 29, -14, 16, -6, 22, 5, -30,
    -- layer=1 filter=116 channel=33
    6, -6, -4, 3, 15, -10, -18, -12, -16,
    -- layer=1 filter=116 channel=34
    2, 13, 16, -8, 6, -1, 5, -4, 9,
    -- layer=1 filter=116 channel=35
    22, -8, -21, 8, -21, 16, -26, 12, 19,
    -- layer=1 filter=116 channel=36
    36, 47, -2, 73, -53, -59, -35, -63, -24,
    -- layer=1 filter=116 channel=37
    2, -31, 9, -72, -13, 10, -41, -16, -6,
    -- layer=1 filter=116 channel=38
    31, -25, -16, 7, -46, 26, -25, 0, 4,
    -- layer=1 filter=116 channel=39
    -5, 0, -2, -16, -8, 8, 14, 0, 16,
    -- layer=1 filter=116 channel=40
    7, 22, -34, 10, -22, -24, 4, -33, -6,
    -- layer=1 filter=116 channel=41
    -127, -57, 54, -23, 24, 5, 21, -19, -52,
    -- layer=1 filter=116 channel=42
    -27, -16, 37, -39, 14, 33, -2, 22, 19,
    -- layer=1 filter=116 channel=43
    17, 7, -44, 0, -69, -22, 11, -57, 55,
    -- layer=1 filter=116 channel=44
    5, -18, 14, 10, 18, 1, 3, 10, -18,
    -- layer=1 filter=116 channel=45
    0, 47, -59, -15, -62, -32, 15, -38, 39,
    -- layer=1 filter=116 channel=46
    -29, -40, -61, -46, -40, -13, -49, -29, -6,
    -- layer=1 filter=116 channel=47
    30, 28, -25, -1, -73, 16, -26, -18, 8,
    -- layer=1 filter=116 channel=48
    -119, 39, 55, 25, 22, -63, 29, -17, -53,
    -- layer=1 filter=116 channel=49
    -94, 40, 27, -17, 59, -18, 9, 14, -58,
    -- layer=1 filter=116 channel=50
    33, -17, 3, -24, -33, 15, -27, -3, -5,
    -- layer=1 filter=116 channel=51
    -30, -35, 15, -40, 13, 6, -4, -7, -16,
    -- layer=1 filter=116 channel=52
    55, 5, -31, -7, -52, -13, -47, -19, -18,
    -- layer=1 filter=116 channel=53
    -5, 4, -33, 2, -32, -49, -82, -51, -59,
    -- layer=1 filter=116 channel=54
    16, -23, -1, -14, -21, 18, -6, 14, 4,
    -- layer=1 filter=116 channel=55
    15, 12, 12, -32, -29, 20, -31, -8, 17,
    -- layer=1 filter=116 channel=56
    20, -22, -58, -18, -65, -20, -7, -36, 5,
    -- layer=1 filter=116 channel=57
    7, -36, 9, -23, -10, 31, -6, 28, -3,
    -- layer=1 filter=116 channel=58
    48, 13, -15, 66, -98, 18, -61, -23, 5,
    -- layer=1 filter=116 channel=59
    25, -8, -19, 12, -21, 7, -13, -5, 1,
    -- layer=1 filter=116 channel=60
    38, 0, -27, -2, -28, 19, -26, 10, 20,
    -- layer=1 filter=116 channel=61
    4, -16, 4, -5, -6, 13, -22, -1, 23,
    -- layer=1 filter=116 channel=62
    -62, 160, 56, 63, 59, -89, 88, 34, -22,
    -- layer=1 filter=116 channel=63
    63, 97, -1, 82, 13, -143, -33, -2, -36,
    -- layer=1 filter=117 channel=0
    -7, 15, -1, -29, -27, 10, 27, 0, -19,
    -- layer=1 filter=117 channel=1
    -21, -36, -21, 3, 19, -29, -5, 36, 56,
    -- layer=1 filter=117 channel=2
    30, 42, -25, -8, 13, 23, -27, -40, -61,
    -- layer=1 filter=117 channel=3
    28, 23, -39, 39, 51, 85, -65, -70, -52,
    -- layer=1 filter=117 channel=4
    0, 12, 14, -28, -7, 2, 25, 1, -12,
    -- layer=1 filter=117 channel=5
    -18, -29, -7, 87, 52, -11, 44, 73, 7,
    -- layer=1 filter=117 channel=6
    -49, -76, -43, 7, -6, -15, 25, 48, 33,
    -- layer=1 filter=117 channel=7
    -23, -18, -27, -20, -13, 0, -3, -13, -22,
    -- layer=1 filter=117 channel=8
    22, -1, 37, 0, 6, -23, 45, 24, 19,
    -- layer=1 filter=117 channel=9
    0, 35, -2, 11, 13, 38, -41, -77, -108,
    -- layer=1 filter=117 channel=10
    -5, -6, 5, -15, 9, 12, -11, 3, 0,
    -- layer=1 filter=117 channel=11
    -16, -5, 15, 7, -1, -35, 30, 13, -25,
    -- layer=1 filter=117 channel=12
    38, 21, -34, 38, 35, 40, -34, -47, -62,
    -- layer=1 filter=117 channel=13
    -26, -3, -10, -52, -36, -15, -7, 0, -21,
    -- layer=1 filter=117 channel=14
    -2, 7, -6, -32, -10, 0, 19, -20, -33,
    -- layer=1 filter=117 channel=15
    18, 7, 23, -31, -1, -14, -44, -7, -81,
    -- layer=1 filter=117 channel=16
    37, 0, -36, 16, 64, 64, -66, -49, 52,
    -- layer=1 filter=117 channel=17
    2, 25, -37, -22, 15, 21, -16, 2, -16,
    -- layer=1 filter=117 channel=18
    13, 0, 6, -9, -12, -5, -7, -7, -3,
    -- layer=1 filter=117 channel=19
    -4, -32, 0, -15, 10, -20, 3, 27, 1,
    -- layer=1 filter=117 channel=20
    22, -9, -36, 4, 17, 48, -16, -15, 17,
    -- layer=1 filter=117 channel=21
    1, 6, -12, -11, 14, 19, -39, 3, -12,
    -- layer=1 filter=117 channel=22
    84, 57, 71, 98, 72, 38, 51, 45, 59,
    -- layer=1 filter=117 channel=23
    19, 59, 12, 20, 24, 29, 46, 54, 46,
    -- layer=1 filter=117 channel=24
    117, 88, 60, 75, 104, 92, -7, 0, 67,
    -- layer=1 filter=117 channel=25
    11, -17, 1, 8, -10, -2, -42, -43, 27,
    -- layer=1 filter=117 channel=26
    -1, -15, 3, 24, 4, -5, 29, 30, 1,
    -- layer=1 filter=117 channel=27
    5, 8, -10, 15, 2, 19, -43, -15, -60,
    -- layer=1 filter=117 channel=28
    -9, -6, 71, 43, 35, 0, 50, 38, 0,
    -- layer=1 filter=117 channel=29
    21, 3, 44, 43, 26, -14, 35, 42, 48,
    -- layer=1 filter=117 channel=30
    -4, -5, 7, 5, -8, -3, 11, 11, -1,
    -- layer=1 filter=117 channel=31
    1, -14, 26, -1, -22, -17, -15, -3, -11,
    -- layer=1 filter=117 channel=32
    80, 69, 9, 0, 27, 36, -23, -30, -74,
    -- layer=1 filter=117 channel=33
    0, 6, 1, -9, -16, -4, 11, -4, 0,
    -- layer=1 filter=117 channel=34
    -20, -14, 0, -8, -16, -17, 3, 17, 6,
    -- layer=1 filter=117 channel=35
    16, -13, 9, -2, 0, -8, -27, -11, 21,
    -- layer=1 filter=117 channel=36
    33, 13, 12, 18, 20, 41, -85, -67, -29,
    -- layer=1 filter=117 channel=37
    -15, 29, -3, -4, -19, 21, -9, -12, -33,
    -- layer=1 filter=117 channel=38
    12, 20, 20, -19, 29, 14, -69, -69, -66,
    -- layer=1 filter=117 channel=39
    0, 13, 0, 23, -7, -4, -4, 13, 3,
    -- layer=1 filter=117 channel=40
    -34, -14, -9, 39, 2, -11, 56, 68, 36,
    -- layer=1 filter=117 channel=41
    -37, -47, -22, 92, 48, -18, 68, 63, -9,
    -- layer=1 filter=117 channel=42
    -25, -24, -35, -14, 0, -7, 41, 34, -1,
    -- layer=1 filter=117 channel=43
    53, -13, 36, 75, 70, 47, 40, 61, 123,
    -- layer=1 filter=117 channel=44
    5, 31, 4, 5, 8, 27, -36, -66, -51,
    -- layer=1 filter=117 channel=45
    44, -40, 73, 26, 32, 45, -22, -43, 83,
    -- layer=1 filter=117 channel=46
    -7, -10, 4, -8, 0, -32, 27, 12, 5,
    -- layer=1 filter=117 channel=47
    -9, -45, -8, -10, -37, -26, 18, -17, 4,
    -- layer=1 filter=117 channel=48
    9, 22, 3, 82, 57, -12, 30, 60, 36,
    -- layer=1 filter=117 channel=49
    8, -2, 26, 25, -12, -13, -21, 13, -25,
    -- layer=1 filter=117 channel=50
    -20, -29, 5, -19, -34, -19, -8, -3, -43,
    -- layer=1 filter=117 channel=51
    -46, -41, -32, -13, 1, -23, 22, 16, -2,
    -- layer=1 filter=117 channel=52
    12, -1, 0, -41, 15, 0, -68, -50, -35,
    -- layer=1 filter=117 channel=53
    42, 49, -28, 21, 49, 52, -33, -49, -82,
    -- layer=1 filter=117 channel=54
    -36, -46, -29, -24, -22, -21, 21, 22, -10,
    -- layer=1 filter=117 channel=55
    19, 29, -18, -5, 35, 25, -5, 4, 31,
    -- layer=1 filter=117 channel=56
    8, -47, 3, 31, 5, -13, 40, 33, 59,
    -- layer=1 filter=117 channel=57
    -22, -8, -16, -55, -6, -32, -22, -6, -67,
    -- layer=1 filter=117 channel=58
    -10, -6, -22, 8, 20, -6, -73, -42, -58,
    -- layer=1 filter=117 channel=59
    4, 9, 24, -29, -15, 35, -32, -60, -35,
    -- layer=1 filter=117 channel=60
    -2, -11, -6, -8, -2, 18, -87, -50, -60,
    -- layer=1 filter=117 channel=61
    -40, -10, -5, -5, -7, -9, 27, 19, -1,
    -- layer=1 filter=117 channel=62
    102, 15, 59, 23, -14, 40, -19, -61, 8,
    -- layer=1 filter=117 channel=63
    48, 17, 2, 38, -11, 22, -23, -66, 13,
    -- layer=1 filter=118 channel=0
    0, 16, 10, 8, 1, -2, -8, -6, -1,
    -- layer=1 filter=118 channel=1
    -14, 6, -13, -1, 7, -8, 19, 5, 13,
    -- layer=1 filter=118 channel=2
    -15, 8, 1, 5, 18, 19, 0, 35, 17,
    -- layer=1 filter=118 channel=3
    -41, -44, -32, -79, -91, -83, -109, -110, -109,
    -- layer=1 filter=118 channel=4
    2, -18, 8, -17, -9, 11, -4, -6, -4,
    -- layer=1 filter=118 channel=5
    0, -31, -7, -14, -25, 30, -40, -13, -14,
    -- layer=1 filter=118 channel=6
    -16, -11, -6, -15, -9, 12, 7, 3, 20,
    -- layer=1 filter=118 channel=7
    13, 9, -1, -19, -16, -4, -7, 6, -12,
    -- layer=1 filter=118 channel=8
    -19, -2, -20, -17, 8, -1, -5, 3, -10,
    -- layer=1 filter=118 channel=9
    7, -5, -9, -13, -26, -9, -10, -12, -10,
    -- layer=1 filter=118 channel=10
    -47, -17, -18, -18, -31, 7, 11, -14, -20,
    -- layer=1 filter=118 channel=11
    -16, -2, 7, 10, 1, 24, 16, -7, 13,
    -- layer=1 filter=118 channel=12
    3, 2, -1, 14, -21, 14, -10, -8, -9,
    -- layer=1 filter=118 channel=13
    12, 16, 2, 9, 5, 11, -1, 1, 12,
    -- layer=1 filter=118 channel=14
    -4, 8, 1, -24, -17, 7, -24, 7, -4,
    -- layer=1 filter=118 channel=15
    -14, 11, -2, 13, -16, 12, -12, 0, 8,
    -- layer=1 filter=118 channel=16
    -69, -43, -1, -53, -49, -29, -59, -75, -63,
    -- layer=1 filter=118 channel=17
    -13, -2, 11, -58, -17, -31, -36, -24, -29,
    -- layer=1 filter=118 channel=18
    5, 14, -3, 9, 3, 13, 6, -2, 0,
    -- layer=1 filter=118 channel=19
    -3, -10, -18, 4, 12, 1, 0, 13, -13,
    -- layer=1 filter=118 channel=20
    10, 0, -9, 14, -8, 26, 8, 9, 28,
    -- layer=1 filter=118 channel=21
    31, 38, 24, 9, 8, 10, 35, -3, 15,
    -- layer=1 filter=118 channel=22
    -43, -80, -55, -5, 0, -30, 7, 22, -2,
    -- layer=1 filter=118 channel=23
    1, -16, 11, 9, -3, -9, -14, -17, -5,
    -- layer=1 filter=118 channel=24
    -78, -41, -71, -58, -17, -41, -36, -59, -103,
    -- layer=1 filter=118 channel=25
    22, 20, -15, -18, 8, -27, -16, -42, -1,
    -- layer=1 filter=118 channel=26
    -10, 0, -7, -20, -20, -12, 20, -4, 9,
    -- layer=1 filter=118 channel=27
    29, 4, 3, 26, 8, 43, 17, 20, 9,
    -- layer=1 filter=118 channel=28
    -16, -21, -24, 7, 13, -2, -16, 10, -25,
    -- layer=1 filter=118 channel=29
    -3, -14, -37, -34, 26, -40, -8, -24, -36,
    -- layer=1 filter=118 channel=30
    -9, -7, 4, 7, -4, 2, 0, -9, 8,
    -- layer=1 filter=118 channel=31
    16, 13, -4, 15, 24, 5, 13, 5, -2,
    -- layer=1 filter=118 channel=32
    -1, -10, 3, -13, 0, 19, -33, -1, -31,
    -- layer=1 filter=118 channel=33
    -7, 11, -5, -2, -6, 10, 7, -7, 4,
    -- layer=1 filter=118 channel=34
    -30, -9, 1, -14, -14, -18, 2, 7, -8,
    -- layer=1 filter=118 channel=35
    -1, -9, -9, -17, 0, -15, -7, 9, 0,
    -- layer=1 filter=118 channel=36
    -37, 11, 8, -46, -56, -43, -44, -65, -58,
    -- layer=1 filter=118 channel=37
    12, 6, 5, -13, -16, -3, -14, -1, 4,
    -- layer=1 filter=118 channel=38
    -11, -11, -20, -1, -26, -5, -16, -15, 6,
    -- layer=1 filter=118 channel=39
    -15, -2, 8, -19, 14, 5, 3, 6, 8,
    -- layer=1 filter=118 channel=40
    8, -20, -26, 0, -5, -2, 15, -1, -19,
    -- layer=1 filter=118 channel=41
    8, -7, -42, -14, 7, 24, -10, -31, -16,
    -- layer=1 filter=118 channel=42
    -4, 9, 16, -5, 11, 14, 11, 3, 12,
    -- layer=1 filter=118 channel=43
    -3, 6, -32, -29, 18, -57, 16, -17, -52,
    -- layer=1 filter=118 channel=44
    4, 1, -2, 5, -7, 11, -6, 0, 22,
    -- layer=1 filter=118 channel=45
    3, 1, -11, -13, 7, -23, -22, -58, -30,
    -- layer=1 filter=118 channel=46
    -43, -23, -23, -17, -13, -25, 0, -29, 0,
    -- layer=1 filter=118 channel=47
    0, -7, -7, -15, 9, -21, 7, 4, -17,
    -- layer=1 filter=118 channel=48
    -38, -63, -52, -30, 13, -15, 0, -11, -3,
    -- layer=1 filter=118 channel=49
    3, -6, -15, 4, 11, 27, 6, 35, 9,
    -- layer=1 filter=118 channel=50
    2, 2, 8, -9, 0, 11, -9, 12, -5,
    -- layer=1 filter=118 channel=51
    -8, -6, 8, 4, 26, 24, 21, 23, 30,
    -- layer=1 filter=118 channel=52
    -51, -23, -16, -29, -29, 1, -30, -17, -19,
    -- layer=1 filter=118 channel=53
    -31, -16, -24, -68, -73, -56, -72, -40, -61,
    -- layer=1 filter=118 channel=54
    5, -18, 3, 4, 0, 16, 11, 19, 21,
    -- layer=1 filter=118 channel=55
    -27, -48, -28, -50, -16, -8, -39, -16, -24,
    -- layer=1 filter=118 channel=56
    -11, -17, -9, -21, 11, -22, 15, -2, -4,
    -- layer=1 filter=118 channel=57
    13, -10, -1, 11, 8, 8, -3, 27, 24,
    -- layer=1 filter=118 channel=58
    -6, -5, 12, -25, -14, -18, -33, 4, -19,
    -- layer=1 filter=118 channel=59
    -32, -23, -13, -12, -15, -16, -7, -30, -4,
    -- layer=1 filter=118 channel=60
    0, 21, 17, 0, 3, 5, -4, 12, 18,
    -- layer=1 filter=118 channel=61
    7, -6, -20, -12, -6, -11, 18, 14, 19,
    -- layer=1 filter=118 channel=62
    32, 89, 22, 1, 58, 22, -15, -9, 24,
    -- layer=1 filter=118 channel=63
    -85, -96, -4, -49, -70, -61, -12, -17, -82,
    -- layer=1 filter=119 channel=0
    3, -23, -31, 23, -17, -41, 34, 5, -10,
    -- layer=1 filter=119 channel=1
    44, 5, -24, 48, -11, -17, 38, 30, -32,
    -- layer=1 filter=119 channel=2
    4, 32, 20, -27, 8, -6, -10, 9, -17,
    -- layer=1 filter=119 channel=3
    -21, -18, 0, -20, -12, -32, -21, -7, -27,
    -- layer=1 filter=119 channel=4
    -2, 13, 15, 20, 1, 0, 12, 7, -2,
    -- layer=1 filter=119 channel=5
    -4, 32, 28, 29, 2, 0, 17, 8, 1,
    -- layer=1 filter=119 channel=6
    6, -16, -17, 25, -14, -12, 12, 21, -2,
    -- layer=1 filter=119 channel=7
    9, -8, -8, -4, -10, -5, -20, -7, -13,
    -- layer=1 filter=119 channel=8
    -35, -29, -6, -12, -13, -1, -13, -16, -3,
    -- layer=1 filter=119 channel=9
    -30, 7, 11, -29, 14, 28, -10, 23, 10,
    -- layer=1 filter=119 channel=10
    22, 9, -37, 69, 31, -7, 66, 53, 16,
    -- layer=1 filter=119 channel=11
    -27, 12, 14, -5, 31, 16, -8, 13, 23,
    -- layer=1 filter=119 channel=12
    23, 50, 49, 25, -9, 5, -7, 4, 13,
    -- layer=1 filter=119 channel=13
    14, 0, -21, 42, -13, -36, 60, 6, 1,
    -- layer=1 filter=119 channel=14
    18, -7, -41, 32, -23, -51, 49, 7, -1,
    -- layer=1 filter=119 channel=15
    -19, 26, 28, -22, 32, 55, -13, 36, 19,
    -- layer=1 filter=119 channel=16
    8, 2, 54, -2, 9, 29, 48, 17, 13,
    -- layer=1 filter=119 channel=17
    24, -33, -41, 68, 21, -34, 73, 12, -19,
    -- layer=1 filter=119 channel=18
    1, 0, -9, 3, 13, 15, -9, -16, -7,
    -- layer=1 filter=119 channel=19
    -27, -3, 0, -38, 0, 42, -43, -24, 13,
    -- layer=1 filter=119 channel=20
    16, 3, -1, 39, -10, -9, 29, 8, 6,
    -- layer=1 filter=119 channel=21
    -7, 0, -26, 64, 20, -18, 34, 18, -24,
    -- layer=1 filter=119 channel=22
    40, 43, 12, 33, 25, 5, 32, 45, 24,
    -- layer=1 filter=119 channel=23
    22, -32, -98, 75, 33, -38, 104, 50, -1,
    -- layer=1 filter=119 channel=24
    -1, -27, 23, -24, 35, 21, 17, 0, -10,
    -- layer=1 filter=119 channel=25
    22, -23, 6, 52, -7, -31, -8, 9, -56,
    -- layer=1 filter=119 channel=26
    5, -23, 12, -13, -22, -13, -15, -28, -11,
    -- layer=1 filter=119 channel=27
    7, 23, 43, 12, 27, 33, 6, 0, 27,
    -- layer=1 filter=119 channel=28
    -5, -27, -41, 0, -17, -1, 19, -8, 24,
    -- layer=1 filter=119 channel=29
    -18, -80, -5, 34, -73, -44, 1, -15, -30,
    -- layer=1 filter=119 channel=30
    11, 7, 9, 7, -11, -10, -13, 1, -9,
    -- layer=1 filter=119 channel=31
    -41, -7, 31, -44, 21, 28, -20, 6, 20,
    -- layer=1 filter=119 channel=32
    26, -9, 55, 12, -17, -9, -31, 0, 2,
    -- layer=1 filter=119 channel=33
    12, -10, -9, -13, -1, 9, -5, 8, -21,
    -- layer=1 filter=119 channel=34
    -11, 8, -3, -15, 8, 0, -2, -5, 9,
    -- layer=1 filter=119 channel=35
    -43, -28, 22, -14, 27, 42, -21, -1, 34,
    -- layer=1 filter=119 channel=36
    -31, -21, 6, -11, -1, 19, -2, 35, 2,
    -- layer=1 filter=119 channel=37
    0, 4, -3, 30, 11, -15, 14, 28, -6,
    -- layer=1 filter=119 channel=38
    -31, 18, 28, -10, 27, 55, -30, 26, 15,
    -- layer=1 filter=119 channel=39
    0, 13, -3, -13, 25, 12, 9, 13, 12,
    -- layer=1 filter=119 channel=40
    2, -31, -65, 21, -12, -49, 4, 0, -6,
    -- layer=1 filter=119 channel=41
    -43, 8, -1, 11, -15, -9, 3, 1, 3,
    -- layer=1 filter=119 channel=42
    -5, -28, -31, 17, -10, -37, 24, -2, -3,
    -- layer=1 filter=119 channel=43
    -57, -94, -23, -7, -89, -43, -40, -47, -35,
    -- layer=1 filter=119 channel=44
    -41, 11, 44, -30, 13, 15, -43, -11, 13,
    -- layer=1 filter=119 channel=45
    -25, -85, -12, -11, -97, -18, -63, -60, -57,
    -- layer=1 filter=119 channel=46
    21, -14, -61, 22, -36, -44, 67, 11, -23,
    -- layer=1 filter=119 channel=47
    -13, -18, -2, -30, -47, -7, -8, -12, 4,
    -- layer=1 filter=119 channel=48
    14, 50, 10, 31, 6, 0, 16, 13, -14,
    -- layer=1 filter=119 channel=49
    -2, 44, 40, 2, 20, 29, -10, 10, -8,
    -- layer=1 filter=119 channel=50
    -20, -21, 10, -14, 2, 24, -12, 2, 15,
    -- layer=1 filter=119 channel=51
    -26, 21, 29, -13, -4, 22, -18, -4, 18,
    -- layer=1 filter=119 channel=52
    16, 3, -50, 48, 13, -24, 81, 40, 0,
    -- layer=1 filter=119 channel=53
    -14, -8, 11, -6, -16, -14, -22, -11, -5,
    -- layer=1 filter=119 channel=54
    -32, 0, 8, -9, -12, 21, -12, -5, -4,
    -- layer=1 filter=119 channel=55
    41, -3, -33, 66, 9, -34, 90, 36, -13,
    -- layer=1 filter=119 channel=56
    27, -49, -51, 33, -35, -46, 25, -3, -41,
    -- layer=1 filter=119 channel=57
    -40, 17, 15, -7, 20, 25, -34, 18, 8,
    -- layer=1 filter=119 channel=58
    -14, -40, 11, -31, 2, 3, -6, -1, 7,
    -- layer=1 filter=119 channel=59
    -31, -19, 35, -16, 33, 45, -6, 34, 11,
    -- layer=1 filter=119 channel=60
    -28, -28, 17, -25, 35, 41, -7, 38, 22,
    -- layer=1 filter=119 channel=61
    17, -33, -66, 33, -13, -36, 57, 16, -6,
    -- layer=1 filter=119 channel=62
    39, -2, -12, 8, -23, -40, -2, -25, -47,
    -- layer=1 filter=119 channel=63
    112, 90, 90, 73, 47, 25, 84, 42, 30,
    -- layer=1 filter=120 channel=0
    -4, -5, 9, -4, 10, -3, 0, -12, -1,
    -- layer=1 filter=120 channel=1
    4, -7, 11, -9, -1, -6, -14, 3, -7,
    -- layer=1 filter=120 channel=2
    -9, 4, 10, -2, -11, -4, -11, 1, -16,
    -- layer=1 filter=120 channel=3
    -13, -7, 1, -5, 7, 0, 6, -12, 12,
    -- layer=1 filter=120 channel=4
    -13, 1, -15, 6, -15, -10, -12, -1, -15,
    -- layer=1 filter=120 channel=5
    -12, -12, 6, -13, -4, -11, 6, -4, -11,
    -- layer=1 filter=120 channel=6
    -4, 0, 5, 5, -8, 0, -14, 5, -3,
    -- layer=1 filter=120 channel=7
    -2, -8, 0, -8, -1, -18, 10, 10, 12,
    -- layer=1 filter=120 channel=8
    9, -10, 3, 11, -6, 6, 10, 8, -6,
    -- layer=1 filter=120 channel=9
    5, -10, 0, -5, -3, 0, -12, 11, 7,
    -- layer=1 filter=120 channel=10
    3, -11, 3, 0, 11, 14, -3, 11, 4,
    -- layer=1 filter=120 channel=11
    -7, 7, -4, 1, 7, -5, -3, 12, 0,
    -- layer=1 filter=120 channel=12
    3, -17, -12, 6, -13, 5, 7, 0, 5,
    -- layer=1 filter=120 channel=13
    5, 14, 4, -7, 14, -4, -3, -13, 8,
    -- layer=1 filter=120 channel=14
    8, -2, 10, -11, 0, 0, -9, 12, -10,
    -- layer=1 filter=120 channel=15
    -14, -11, 6, -3, 14, -2, -14, -10, -7,
    -- layer=1 filter=120 channel=16
    -7, 8, 12, -2, -2, 0, 9, 0, 6,
    -- layer=1 filter=120 channel=17
    11, -10, 10, -7, -4, -8, -8, 0, -5,
    -- layer=1 filter=120 channel=18
    8, 5, -1, 2, -11, 3, -12, 3, -15,
    -- layer=1 filter=120 channel=19
    -10, -1, -16, -13, -5, -5, -9, 13, -8,
    -- layer=1 filter=120 channel=20
    -7, 11, -15, -12, 10, -16, -3, -8, -1,
    -- layer=1 filter=120 channel=21
    5, -9, -9, -6, -10, 4, -15, -3, -10,
    -- layer=1 filter=120 channel=22
    0, 11, 1, 0, 4, 7, 2, -10, 2,
    -- layer=1 filter=120 channel=23
    -4, 0, 0, 0, 3, -5, -8, -12, 1,
    -- layer=1 filter=120 channel=24
    6, -5, 7, -5, -8, 14, 0, -11, -2,
    -- layer=1 filter=120 channel=25
    5, -15, 12, -12, -11, -15, -1, 7, -5,
    -- layer=1 filter=120 channel=26
    11, -14, -13, 7, 7, 11, -11, 12, 13,
    -- layer=1 filter=120 channel=27
    -11, -12, 5, -11, 12, -18, -12, 6, -4,
    -- layer=1 filter=120 channel=28
    -2, -13, -13, -9, 4, -8, -2, -2, -7,
    -- layer=1 filter=120 channel=29
    -14, 0, -1, 13, -1, -6, -6, -8, 8,
    -- layer=1 filter=120 channel=30
    3, 3, 12, -3, -10, -7, 4, 11, 1,
    -- layer=1 filter=120 channel=31
    -2, 11, -3, 0, 8, -12, 12, -13, -11,
    -- layer=1 filter=120 channel=32
    4, 6, 7, 1, -1, 7, 6, 3, 8,
    -- layer=1 filter=120 channel=33
    -9, 6, -6, 5, -8, 3, -11, 1, -3,
    -- layer=1 filter=120 channel=34
    -8, -4, 9, 0, 3, 5, -4, 3, -4,
    -- layer=1 filter=120 channel=35
    13, 6, -3, 11, 6, 5, -13, -8, 8,
    -- layer=1 filter=120 channel=36
    -10, -14, 13, 5, 1, -14, 3, -1, 8,
    -- layer=1 filter=120 channel=37
    9, -14, -1, -14, -10, -6, 4, 2, -14,
    -- layer=1 filter=120 channel=38
    7, -3, 9, -10, -3, -14, 5, 4, 7,
    -- layer=1 filter=120 channel=39
    0, 9, -1, -2, 9, 3, -10, -6, 2,
    -- layer=1 filter=120 channel=40
    -5, 11, 2, 0, 2, -2, -11, 2, -4,
    -- layer=1 filter=120 channel=41
    -6, -3, 6, -4, 2, 0, -2, 9, 1,
    -- layer=1 filter=120 channel=42
    -13, 1, 9, 0, -17, 6, 1, 0, -14,
    -- layer=1 filter=120 channel=43
    1, -10, -5, -10, 5, 0, -10, 4, -10,
    -- layer=1 filter=120 channel=44
    1, -3, -15, -8, -16, -9, 9, -13, -9,
    -- layer=1 filter=120 channel=45
    -3, -7, 13, -7, -15, -2, -5, 1, -8,
    -- layer=1 filter=120 channel=46
    -1, 10, 11, 7, 8, 0, -7, 10, 3,
    -- layer=1 filter=120 channel=47
    11, -1, 2, 5, -12, -7, 0, 6, -1,
    -- layer=1 filter=120 channel=48
    10, -11, 0, 2, -13, -14, 5, -13, -1,
    -- layer=1 filter=120 channel=49
    -7, -15, 1, -8, -12, 7, 6, 5, -5,
    -- layer=1 filter=120 channel=50
    -5, -13, -6, -12, -12, 7, 10, -4, 12,
    -- layer=1 filter=120 channel=51
    -4, -11, -4, 4, 4, -17, 2, -6, 3,
    -- layer=1 filter=120 channel=52
    -2, 9, -6, 4, 7, -9, -2, -11, -14,
    -- layer=1 filter=120 channel=53
    -10, -8, -5, 13, 4, -1, 8, 0, -14,
    -- layer=1 filter=120 channel=54
    -5, -11, 6, 4, 10, -5, 0, 0, -15,
    -- layer=1 filter=120 channel=55
    -6, -9, 6, 3, -1, -10, 13, 11, -6,
    -- layer=1 filter=120 channel=56
    12, -8, -13, -10, 3, -6, -4, -5, -12,
    -- layer=1 filter=120 channel=57
    2, -14, -14, 8, -7, -18, 10, 9, 10,
    -- layer=1 filter=120 channel=58
    3, 6, -5, -3, 13, 8, -13, -9, 7,
    -- layer=1 filter=120 channel=59
    -9, -7, -6, -10, -13, -16, 9, -12, -2,
    -- layer=1 filter=120 channel=60
    9, 7, 1, 0, -6, 0, 0, 8, 2,
    -- layer=1 filter=120 channel=61
    -16, -5, -10, 0, 0, -9, 3, -15, -11,
    -- layer=1 filter=120 channel=62
    -12, -13, -2, 6, -7, -8, -9, 0, -3,
    -- layer=1 filter=120 channel=63
    2, 6, -6, -1, 4, 3, 2, -9, 6,
    -- layer=1 filter=121 channel=0
    -11, 0, -16, 5, -20, -2, 3, 2, 2,
    -- layer=1 filter=121 channel=1
    -12, -7, 12, 6, -17, -19, -8, 4, -8,
    -- layer=1 filter=121 channel=2
    0, 1, -16, 6, -6, -7, -11, 3, 8,
    -- layer=1 filter=121 channel=3
    -11, -14, -8, 0, 3, 11, 5, -16, 12,
    -- layer=1 filter=121 channel=4
    4, 7, -9, -9, 1, -11, -16, 2, -7,
    -- layer=1 filter=121 channel=5
    3, -1, 2, -2, 5, -16, -5, -19, -8,
    -- layer=1 filter=121 channel=6
    -11, 9, 11, -11, 0, -10, -5, -7, -13,
    -- layer=1 filter=121 channel=7
    -2, -3, -15, -16, -3, -6, -14, 6, -13,
    -- layer=1 filter=121 channel=8
    -7, -10, 0, 10, 5, -2, 6, 10, 1,
    -- layer=1 filter=121 channel=9
    -6, -12, 10, 3, 5, -7, -16, 1, -9,
    -- layer=1 filter=121 channel=10
    -14, -14, -12, -15, 4, -1, -9, -10, -4,
    -- layer=1 filter=121 channel=11
    8, 1, -5, 12, 0, -3, -3, 2, 2,
    -- layer=1 filter=121 channel=12
    -17, -9, -10, -18, -14, -7, -2, -2, -1,
    -- layer=1 filter=121 channel=13
    2, -9, -1, -13, -1, 4, -5, -14, -2,
    -- layer=1 filter=121 channel=14
    12, 6, -13, 9, -9, 0, -5, -13, -10,
    -- layer=1 filter=121 channel=15
    2, 0, 12, -11, 6, 7, -5, -1, 2,
    -- layer=1 filter=121 channel=16
    3, -6, 7, -4, -14, -9, -1, 4, -8,
    -- layer=1 filter=121 channel=17
    -5, 11, 0, 13, -10, 2, 10, -15, -8,
    -- layer=1 filter=121 channel=18
    -11, 2, -3, 5, -10, 9, 1, 1, -8,
    -- layer=1 filter=121 channel=19
    6, 12, -2, 3, -5, -6, -2, -16, -16,
    -- layer=1 filter=121 channel=20
    8, 0, -1, 0, -15, 9, -21, 0, -7,
    -- layer=1 filter=121 channel=21
    7, 0, -9, -4, -20, -21, 7, -15, 3,
    -- layer=1 filter=121 channel=22
    -2, 4, -5, -11, 2, -5, 0, -15, 3,
    -- layer=1 filter=121 channel=23
    -10, 0, 5, -10, 7, -9, 14, 11, 6,
    -- layer=1 filter=121 channel=24
    -1, -12, -2, -18, -11, -12, -20, 1, -13,
    -- layer=1 filter=121 channel=25
    -1, -7, -16, 4, -15, -25, 0, 4, -10,
    -- layer=1 filter=121 channel=26
    -2, -4, 9, -10, 5, 1, -1, 6, 8,
    -- layer=1 filter=121 channel=27
    -6, -2, 12, -21, 3, -2, 0, -4, -23,
    -- layer=1 filter=121 channel=28
    11, 4, -4, 8, -17, 0, -7, 0, -5,
    -- layer=1 filter=121 channel=29
    -5, 3, 2, -7, 3, 5, -8, -6, -12,
    -- layer=1 filter=121 channel=30
    -12, -8, 4, 0, 12, 5, 6, -8, 14,
    -- layer=1 filter=121 channel=31
    3, -14, 4, -9, -5, -16, -5, -3, 3,
    -- layer=1 filter=121 channel=32
    5, -7, -16, -6, 2, 8, -8, -11, -11,
    -- layer=1 filter=121 channel=33
    -4, 11, -3, 3, -1, -7, -13, 6, 0,
    -- layer=1 filter=121 channel=34
    -7, 0, 0, -16, -16, -11, 9, -14, -7,
    -- layer=1 filter=121 channel=35
    -12, -12, -17, -7, -12, -8, 9, 12, 6,
    -- layer=1 filter=121 channel=36
    -13, -6, 3, 0, 11, -11, 7, 6, 6,
    -- layer=1 filter=121 channel=37
    1, 2, 3, 0, 11, 12, -14, 0, 1,
    -- layer=1 filter=121 channel=38
    -2, 1, -14, -3, -3, 3, 4, 12, -10,
    -- layer=1 filter=121 channel=39
    -4, 6, -15, 8, -2, -3, -14, -7, -4,
    -- layer=1 filter=121 channel=40
    1, -23, -5, 4, -20, -10, 8, 0, -12,
    -- layer=1 filter=121 channel=41
    -3, -10, -5, 8, 5, -8, -13, -4, -24,
    -- layer=1 filter=121 channel=42
    6, -11, -14, -5, 6, 4, -4, -2, -1,
    -- layer=1 filter=121 channel=43
    -1, 0, 4, 0, 14, -11, -4, -5, 4,
    -- layer=1 filter=121 channel=44
    3, -3, 4, -18, 0, -10, 4, -20, -6,
    -- layer=1 filter=121 channel=45
    -4, -13, 3, 0, -11, 6, -14, -8, -7,
    -- layer=1 filter=121 channel=46
    5, 0, 9, -3, 10, -1, 2, -8, -12,
    -- layer=1 filter=121 channel=47
    11, -16, -5, -6, 8, 5, 9, -13, -1,
    -- layer=1 filter=121 channel=48
    9, 7, -12, 0, -1, -21, -6, 4, -3,
    -- layer=1 filter=121 channel=49
    2, -11, 4, -18, -7, -20, -3, -4, -2,
    -- layer=1 filter=121 channel=50
    -10, -13, -1, -9, -11, -4, 7, -12, -4,
    -- layer=1 filter=121 channel=51
    -4, 0, -4, -7, -8, -1, 1, -11, 4,
    -- layer=1 filter=121 channel=52
    6, 9, 3, -8, 13, -1, 10, 8, 1,
    -- layer=1 filter=121 channel=53
    0, 6, 8, -12, 4, 5, -8, -2, -13,
    -- layer=1 filter=121 channel=54
    -4, 0, -12, 2, -9, 4, -14, 3, 3,
    -- layer=1 filter=121 channel=55
    -6, 9, -7, -1, 4, -4, -5, 14, 7,
    -- layer=1 filter=121 channel=56
    -4, -10, -16, -4, 1, -19, 0, 4, -9,
    -- layer=1 filter=121 channel=57
    -10, -14, 3, -15, 7, -9, 11, -21, -13,
    -- layer=1 filter=121 channel=58
    9, -1, -10, 10, 5, 13, 4, 0, -12,
    -- layer=1 filter=121 channel=59
    -15, -9, -7, 0, 4, -11, -11, 12, 0,
    -- layer=1 filter=121 channel=60
    8, -9, -9, 0, 13, -12, 13, -11, -11,
    -- layer=1 filter=121 channel=61
    3, 4, 5, -1, -19, 3, -2, -2, 4,
    -- layer=1 filter=121 channel=62
    -1, 9, -6, 3, -13, -1, -20, -2, -3,
    -- layer=1 filter=121 channel=63
    -5, -3, -17, -15, -7, -2, -11, 8, -7,
    -- layer=1 filter=122 channel=0
    12, -8, 0, -4, -8, -13, -4, -7, -16,
    -- layer=1 filter=122 channel=1
    -2, 2, 14, 4, -3, -11, 2, 7, -18,
    -- layer=1 filter=122 channel=2
    -12, -25, -17, -14, -23, -6, -15, -14, -4,
    -- layer=1 filter=122 channel=3
    -4, -8, -13, 4, -5, -19, -13, -18, 4,
    -- layer=1 filter=122 channel=4
    -1, -22, -14, -4, -1, -8, 1, 0, 2,
    -- layer=1 filter=122 channel=5
    -3, 4, 5, -8, -2, 2, 1, -7, 13,
    -- layer=1 filter=122 channel=6
    5, -15, 2, 4, -3, -10, -10, -22, -8,
    -- layer=1 filter=122 channel=7
    2, -2, -13, -14, -9, -21, -12, -2, -5,
    -- layer=1 filter=122 channel=8
    0, 1, -6, -1, -2, 8, 3, 5, 1,
    -- layer=1 filter=122 channel=9
    -7, -8, 6, 6, -17, -8, -5, 2, -8,
    -- layer=1 filter=122 channel=10
    -2, 4, 0, 8, 17, -12, -9, 8, 4,
    -- layer=1 filter=122 channel=11
    0, 1, -23, 6, 8, -10, 5, -18, 8,
    -- layer=1 filter=122 channel=12
    -2, 10, -18, -14, -13, -14, 13, 1, 11,
    -- layer=1 filter=122 channel=13
    4, -9, 6, -5, 10, 13, 3, -6, -6,
    -- layer=1 filter=122 channel=14
    6, -6, -20, 3, -5, -18, -2, -4, 0,
    -- layer=1 filter=122 channel=15
    5, 6, -5, -13, -12, 6, 2, 7, -5,
    -- layer=1 filter=122 channel=16
    2, -11, -5, -22, 5, 4, -6, -5, 6,
    -- layer=1 filter=122 channel=17
    11, 11, -3, -10, -3, 15, 9, -12, -15,
    -- layer=1 filter=122 channel=18
    -2, 7, -7, -3, -11, -14, 2, 6, 12,
    -- layer=1 filter=122 channel=19
    -20, -22, 3, -9, -8, -3, 9, -23, -12,
    -- layer=1 filter=122 channel=20
    0, 3, -10, -12, -2, -12, -16, -9, -11,
    -- layer=1 filter=122 channel=21
    -12, 5, 16, 7, -12, 12, 2, 0, -12,
    -- layer=1 filter=122 channel=22
    8, 7, -14, 0, -14, -8, 0, 11, 7,
    -- layer=1 filter=122 channel=23
    6, 13, 4, -13, 18, 1, -2, 11, -3,
    -- layer=1 filter=122 channel=24
    -10, -15, 5, -14, -5, -1, 7, 4, 2,
    -- layer=1 filter=122 channel=25
    1, -13, 0, -8, -5, -3, 1, -16, -1,
    -- layer=1 filter=122 channel=26
    -13, -2, 9, 0, -1, -10, -9, -11, 11,
    -- layer=1 filter=122 channel=27
    -3, 1, -8, 13, -15, 2, 7, -1, -6,
    -- layer=1 filter=122 channel=28
    -8, 9, 4, 1, 0, -10, 2, -14, -12,
    -- layer=1 filter=122 channel=29
    -7, -9, 5, -7, -5, -3, -14, -8, -4,
    -- layer=1 filter=122 channel=30
    5, -3, -12, -1, 4, 14, -4, 13, -3,
    -- layer=1 filter=122 channel=31
    -14, 0, -12, -8, -11, -8, 8, -5, 4,
    -- layer=1 filter=122 channel=32
    8, 7, -16, 13, -6, -17, 1, -4, 9,
    -- layer=1 filter=122 channel=33
    -4, 3, 7, -12, 11, 9, 8, 11, 0,
    -- layer=1 filter=122 channel=34
    -12, 6, 6, 12, -12, -3, 6, -6, 5,
    -- layer=1 filter=122 channel=35
    -8, 3, -2, 7, -4, -10, 2, -6, 13,
    -- layer=1 filter=122 channel=36
    -19, 4, 0, 0, -17, 0, 8, -7, -3,
    -- layer=1 filter=122 channel=37
    -6, 4, -18, 7, 3, 8, -7, -15, -13,
    -- layer=1 filter=122 channel=38
    -17, -6, 0, -1, 4, 4, -20, -5, -1,
    -- layer=1 filter=122 channel=39
    10, -13, -3, 12, -4, -9, 14, -9, 2,
    -- layer=1 filter=122 channel=40
    -14, -17, -7, 5, -2, -20, -24, 2, -21,
    -- layer=1 filter=122 channel=41
    -5, -21, -10, 1, 12, -8, 5, -24, -10,
    -- layer=1 filter=122 channel=42
    -7, -19, 6, -13, -15, -4, 0, -5, 9,
    -- layer=1 filter=122 channel=43
    13, 0, 5, -20, 2, 0, -15, -16, 6,
    -- layer=1 filter=122 channel=44
    -5, -12, 3, 1, -4, -21, -23, 4, -9,
    -- layer=1 filter=122 channel=45
    11, -5, -16, -15, -15, -11, -8, -13, 0,
    -- layer=1 filter=122 channel=46
    5, -11, -9, -7, -3, -12, -5, -16, 3,
    -- layer=1 filter=122 channel=47
    -18, -22, -25, -12, -9, 6, -4, -12, -7,
    -- layer=1 filter=122 channel=48
    7, -8, 3, -2, -12, 5, 5, -11, -4,
    -- layer=1 filter=122 channel=49
    -11, -14, 3, 1, -17, -8, 2, -6, 0,
    -- layer=1 filter=122 channel=50
    5, -11, -18, -9, 1, -12, 0, -9, -10,
    -- layer=1 filter=122 channel=51
    -22, 4, -16, 5, -17, -23, -19, -23, -17,
    -- layer=1 filter=122 channel=52
    -15, 8, 14, 12, -5, 0, 11, 19, -13,
    -- layer=1 filter=122 channel=53
    -23, -20, -1, -2, -21, -16, 4, -18, -16,
    -- layer=1 filter=122 channel=54
    -14, -23, -7, -20, -4, -18, -2, -15, -8,
    -- layer=1 filter=122 channel=55
    -11, -3, -8, 1, -13, -4, 7, -14, -7,
    -- layer=1 filter=122 channel=56
    -7, 4, 0, -16, 11, -13, -19, 1, -7,
    -- layer=1 filter=122 channel=57
    -21, -16, 0, -22, -8, 0, -17, -20, 7,
    -- layer=1 filter=122 channel=58
    -3, 2, 4, 6, -9, 2, -17, -3, -13,
    -- layer=1 filter=122 channel=59
    0, 10, 3, -9, -16, -9, -14, 12, 5,
    -- layer=1 filter=122 channel=60
    -8, -1, -7, 8, -3, 2, -11, 4, -4,
    -- layer=1 filter=122 channel=61
    -1, -2, -6, -17, -6, -6, 5, 0, -8,
    -- layer=1 filter=122 channel=62
    0, 6, -10, 15, 0, -10, 1, -2, 3,
    -- layer=1 filter=122 channel=63
    -18, -12, -10, 4, -16, -1, -13, -5, -7,
    -- layer=1 filter=123 channel=0
    -18, -17, -22, -32, -3, -3, 27, 4, 12,
    -- layer=1 filter=123 channel=1
    9, -19, -38, -20, 0, 3, 24, 11, -6,
    -- layer=1 filter=123 channel=2
    19, 1, -3, 4, 15, 16, -6, -2, -22,
    -- layer=1 filter=123 channel=3
    0, -1, -8, 2, -8, -19, 42, 54, 48,
    -- layer=1 filter=123 channel=4
    5, -15, -8, -2, -1, -28, 13, -2, 23,
    -- layer=1 filter=123 channel=5
    -5, -59, -36, 16, 49, 34, 23, 45, 51,
    -- layer=1 filter=123 channel=6
    -14, -17, -17, 1, -21, -11, -4, 32, 13,
    -- layer=1 filter=123 channel=7
    12, 0, 10, 2, -35, -9, 4, 0, -1,
    -- layer=1 filter=123 channel=8
    3, 11, -7, 18, -1, 1, 8, 0, 16,
    -- layer=1 filter=123 channel=9
    -1, 4, 10, -25, -24, 0, -2, 6, -15,
    -- layer=1 filter=123 channel=10
    2, -25, -45, -25, -41, -46, -27, -31, -50,
    -- layer=1 filter=123 channel=11
    -23, -50, -20, -1, 1, 0, 9, 11, 30,
    -- layer=1 filter=123 channel=12
    17, 19, 2, -18, 39, 15, -2, -5, -5,
    -- layer=1 filter=123 channel=13
    -14, -13, -22, -14, -2, -45, 0, 18, 1,
    -- layer=1 filter=123 channel=14
    9, 13, -8, -19, -42, -48, -6, -3, -4,
    -- layer=1 filter=123 channel=15
    -2, 15, 35, -1, -19, -34, -28, -23, -24,
    -- layer=1 filter=123 channel=16
    11, 32, 20, 18, 27, 30, 21, 40, 32,
    -- layer=1 filter=123 channel=17
    -40, -58, -27, -51, -95, -86, -20, -28, -24,
    -- layer=1 filter=123 channel=18
    -14, -3, -13, 8, -12, 9, -11, 3, 5,
    -- layer=1 filter=123 channel=19
    -8, 7, -10, -11, 15, 6, 17, 9, -9,
    -- layer=1 filter=123 channel=20
    4, -9, -33, -12, -14, 13, 13, 0, 7,
    -- layer=1 filter=123 channel=21
    17, 12, -7, 3, -4, 24, 18, 21, 5,
    -- layer=1 filter=123 channel=22
    17, -95, -25, 53, 82, 35, 27, 30, 58,
    -- layer=1 filter=123 channel=23
    38, -15, -20, -25, -56, -83, -4, 24, -9,
    -- layer=1 filter=123 channel=24
    -30, -29, -18, 0, -59, -13, 0, 4, -15,
    -- layer=1 filter=123 channel=25
    38, 45, 13, -8, 8, 22, -31, -31, -15,
    -- layer=1 filter=123 channel=26
    -6, -7, -2, -15, -13, -24, 11, 12, -16,
    -- layer=1 filter=123 channel=27
    11, 16, 4, -11, 35, 35, 9, 4, 28,
    -- layer=1 filter=123 channel=28
    -54, 25, 19, 6, 19, -23, 0, -10, 28,
    -- layer=1 filter=123 channel=29
    -12, 34, 6, 24, 24, 7, 17, -18, 13,
    -- layer=1 filter=123 channel=30
    16, 7, 16, -8, -2, 9, 0, -20, 8,
    -- layer=1 filter=123 channel=31
    -14, 26, 15, 16, 22, -1, -7, 0, -7,
    -- layer=1 filter=123 channel=32
    31, 11, 7, -26, 8, 10, 7, -15, -19,
    -- layer=1 filter=123 channel=33
    -1, 8, -3, -6, 0, -13, 1, 8, 2,
    -- layer=1 filter=123 channel=34
    -4, 7, 3, 6, 0, -20, 15, -6, -6,
    -- layer=1 filter=123 channel=35
    12, 20, 23, 18, -1, -16, -1, -18, -13,
    -- layer=1 filter=123 channel=36
    -13, 6, 7, 0, 17, -19, 5, 10, 16,
    -- layer=1 filter=123 channel=37
    10, -7, -2, -5, -38, -23, 12, -11, -8,
    -- layer=1 filter=123 channel=38
    -2, 30, 0, -20, -17, -27, -15, -9, -21,
    -- layer=1 filter=123 channel=39
    13, 19, 6, 6, 11, -1, 5, 20, 10,
    -- layer=1 filter=123 channel=40
    -23, -6, -25, 22, 10, -12, 1, 24, 39,
    -- layer=1 filter=123 channel=41
    -1, -78, -48, 2, 42, 32, 10, 8, 49,
    -- layer=1 filter=123 channel=42
    -14, -28, -22, -14, -14, -6, 18, 20, 13,
    -- layer=1 filter=123 channel=43
    -1, 23, -1, 12, 44, 7, -17, -11, -2,
    -- layer=1 filter=123 channel=44
    11, 35, 17, -9, 10, 6, -1, -10, -19,
    -- layer=1 filter=123 channel=45
    22, 65, 17, 6, 15, -8, -21, -16, -13,
    -- layer=1 filter=123 channel=46
    -14, -23, -27, -15, -32, -52, -36, -15, -13,
    -- layer=1 filter=123 channel=47
    12, 26, 1, 2, 6, -45, -16, 0, -2,
    -- layer=1 filter=123 channel=48
    -15, -92, -38, 30, 76, 39, 41, 26, 53,
    -- layer=1 filter=123 channel=49
    -12, -27, -27, -2, 46, 7, 11, 23, 25,
    -- layer=1 filter=123 channel=50
    11, -6, 9, -3, -15, -13, -6, -7, -6,
    -- layer=1 filter=123 channel=51
    0, -16, -30, -5, -14, -17, -2, 17, 14,
    -- layer=1 filter=123 channel=52
    -26, -21, -6, -48, -105, -58, -16, -5, -25,
    -- layer=1 filter=123 channel=53
    -25, 3, 7, 19, 6, -18, 26, 19, -22,
    -- layer=1 filter=123 channel=54
    -14, -3, -11, 5, -17, -20, 15, 4, 10,
    -- layer=1 filter=123 channel=55
    12, 11, -12, -69, -86, -89, -29, -33, -65,
    -- layer=1 filter=123 channel=56
    4, -1, 8, 6, -3, -25, 10, -8, -6,
    -- layer=1 filter=123 channel=57
    13, 10, 2, -9, -19, 10, 8, 15, -3,
    -- layer=1 filter=123 channel=58
    5, 4, 0, 2, -18, -12, -8, 12, 2,
    -- layer=1 filter=123 channel=59
    -8, 11, 14, -28, -22, -24, -29, -29, -30,
    -- layer=1 filter=123 channel=60
    20, 29, 4, -13, -15, 5, -9, -4, -24,
    -- layer=1 filter=123 channel=61
    -24, -8, -19, -27, -33, -30, -2, 5, 5,
    -- layer=1 filter=123 channel=62
    82, 24, 29, -4, 0, 11, 1, -29, -10,
    -- layer=1 filter=123 channel=63
    0, -13, 46, 98, 77, 52, -13, 11, 8,
    -- layer=1 filter=124 channel=0
    -21, -54, 10, -60, -15, 59, -27, 31, 19,
    -- layer=1 filter=124 channel=1
    -23, 2, -5, -45, -71, -20, -33, 1, 58,
    -- layer=1 filter=124 channel=2
    24, 11, 7, 36, 6, 50, 46, 54, 0,
    -- layer=1 filter=124 channel=3
    18, 17, 20, 48, 61, 8, -6, -65, -84,
    -- layer=1 filter=124 channel=4
    3, -11, -39, -39, -33, -4, -47, 0, 15,
    -- layer=1 filter=124 channel=5
    38, -12, -24, 28, 42, 69, 36, 53, 32,
    -- layer=1 filter=124 channel=6
    -2, 12, -47, -37, -25, -4, -15, 7, 34,
    -- layer=1 filter=124 channel=7
    8, 39, -18, 15, 11, -45, -85, -48, 27,
    -- layer=1 filter=124 channel=8
    -35, -26, -41, -55, -44, -14, -1, -43, -13,
    -- layer=1 filter=124 channel=9
    29, 7, 13, 29, 18, -25, -52, -73, -56,
    -- layer=1 filter=124 channel=10
    -78, -75, -36, -42, -47, -25, -25, 4, 20,
    -- layer=1 filter=124 channel=11
    -10, -25, -16, -64, -29, 15, -37, 21, 30,
    -- layer=1 filter=124 channel=12
    -10, 33, 34, 75, 19, 72, 9, 67, 57,
    -- layer=1 filter=124 channel=13
    -62, -58, -20, -93, -81, 26, -56, 10, 31,
    -- layer=1 filter=124 channel=14
    -17, -22, -16, -57, -27, -8, -83, -49, -19,
    -- layer=1 filter=124 channel=15
    10, 27, 10, 16, -7, -32, -18, -47, -16,
    -- layer=1 filter=124 channel=16
    -10, 33, 29, 9, 28, 9, 44, 9, -75,
    -- layer=1 filter=124 channel=17
    -42, -46, -17, -31, -20, 30, -78, -39, 48,
    -- layer=1 filter=124 channel=18
    13, -15, 8, 2, 13, -7, -10, -10, -12,
    -- layer=1 filter=124 channel=19
    -1, 7, -7, -13, -21, 5, -11, -13, -1,
    -- layer=1 filter=124 channel=20
    -52, -11, 27, 11, -31, 61, -21, 29, 25,
    -- layer=1 filter=124 channel=21
    -5, 11, 9, 10, -8, 43, 21, 36, 69,
    -- layer=1 filter=124 channel=22
    19, 13, 40, 33, 63, 129, 30, 75, 12,
    -- layer=1 filter=124 channel=23
    6, -28, -13, -59, 2, -11, -9, 32, 44,
    -- layer=1 filter=124 channel=24
    91, 63, 37, 88, 66, 17, 63, 20, -28,
    -- layer=1 filter=124 channel=25
    16, 66, 27, 8, -13, -40, -142, -60, -91,
    -- layer=1 filter=124 channel=26
    -36, -9, -35, -39, -14, -7, -39, -2, -32,
    -- layer=1 filter=124 channel=27
    41, 24, 25, 68, 17, 65, -4, 69, 42,
    -- layer=1 filter=124 channel=28
    -41, -6, 41, 10, 61, 22, -21, -77, -78,
    -- layer=1 filter=124 channel=29
    -27, 34, -22, -35, -19, -22, -52, -77, -157,
    -- layer=1 filter=124 channel=30
    2, -1, -1, 21, 30, 7, 20, 0, 7,
    -- layer=1 filter=124 channel=31
    -1, 11, -4, -3, 6, 1, 10, -10, -22,
    -- layer=1 filter=124 channel=32
    4, 13, 9, 70, 17, 31, -54, 21, -24,
    -- layer=1 filter=124 channel=33
    -11, -20, -10, 0, 8, 9, -3, 9, -11,
    -- layer=1 filter=124 channel=34
    -17, -16, 1, -11, -13, -17, -1, -33, -1,
    -- layer=1 filter=124 channel=35
    15, 3, 18, 13, -21, -3, -39, -67, -28,
    -- layer=1 filter=124 channel=36
    25, 46, 58, 29, 48, 38, 50, -34, -78,
    -- layer=1 filter=124 channel=37
    -48, -33, -24, -48, -60, -60, -93, -61, -1,
    -- layer=1 filter=124 channel=38
    22, 38, 5, 15, -3, -20, -69, -45, -6,
    -- layer=1 filter=124 channel=39
    15, -19, 6, -9, 0, 14, -14, 2, -2,
    -- layer=1 filter=124 channel=40
    17, 20, 9, 1, 37, 8, 25, 12, -18,
    -- layer=1 filter=124 channel=41
    36, 0, -37, 25, 0, 43, 14, 22, -1,
    -- layer=1 filter=124 channel=42
    -17, -26, -26, -67, -48, 9, -23, -7, 49,
    -- layer=1 filter=124 channel=43
    9, 59, 1, -10, -5, -40, -41, -86, -143,
    -- layer=1 filter=124 channel=44
    56, 37, 37, 52, 27, 38, 23, 13, 28,
    -- layer=1 filter=124 channel=45
    -32, 30, 15, -21, 27, 11, -77, -67, -117,
    -- layer=1 filter=124 channel=46
    -17, 10, -4, -26, -35, -42, -16, -36, -42,
    -- layer=1 filter=124 channel=47
    8, 19, 15, 8, 25, 2, -20, -82, -53,
    -- layer=1 filter=124 channel=48
    23, -4, 39, 0, 30, 96, 20, 73, 14,
    -- layer=1 filter=124 channel=49
    43, 13, 18, -8, -10, 74, -13, 39, 18,
    -- layer=1 filter=124 channel=50
    -37, -42, -27, -60, -25, -47, -52, -50, -14,
    -- layer=1 filter=124 channel=51
    27, 8, -29, -17, -28, -7, -27, -11, 24,
    -- layer=1 filter=124 channel=52
    0, -15, -25, -57, -39, 5, -45, 2, -36,
    -- layer=1 filter=124 channel=53
    -3, 31, 19, 51, 12, 7, 11, -55, -102,
    -- layer=1 filter=124 channel=54
    -23, -9, -44, -44, -53, -36, -16, -11, 2,
    -- layer=1 filter=124 channel=55
    -20, -54, -32, -72, -29, 2, -156, -70, -32,
    -- layer=1 filter=124 channel=56
    -21, -1, -18, -55, -58, -66, -68, -81, -75,
    -- layer=1 filter=124 channel=57
    1, -5, 0, 3, -27, -13, -35, -29, 4,
    -- layer=1 filter=124 channel=58
    5, 10, 26, -5, 42, 10, -41, -73, -35,
    -- layer=1 filter=124 channel=59
    0, 1, 7, -14, -62, -22, -69, -61, -28,
    -- layer=1 filter=124 channel=60
    -15, -2, -1, -2, -23, -22, -61, -66, -8,
    -- layer=1 filter=124 channel=61
    -34, -47, -44, -52, -51, -21, -35, 1, 14,
    -- layer=1 filter=124 channel=62
    29, 31, 138, 16, 96, 142, -7, 78, 11,
    -- layer=1 filter=124 channel=63
    0, 20, 103, 19, 69, 86, 50, 68, -29,
    -- layer=1 filter=125 channel=0
    7, -2, -2, -12, 5, -14, 3, -4, 5,
    -- layer=1 filter=125 channel=1
    -7, -11, -16, 6, 4, -13, -6, 11, -3,
    -- layer=1 filter=125 channel=2
    9, -18, -14, -10, -14, 2, -8, -19, -1,
    -- layer=1 filter=125 channel=3
    -11, -5, 4, -8, -6, -11, 5, -6, -11,
    -- layer=1 filter=125 channel=4
    -15, 4, 10, -2, -16, -19, -11, -12, -8,
    -- layer=1 filter=125 channel=5
    -8, -3, -11, -1, -19, 5, 7, -14, -9,
    -- layer=1 filter=125 channel=6
    -19, -12, 8, -18, -16, -6, -21, 9, -19,
    -- layer=1 filter=125 channel=7
    -2, -11, -16, 2, 0, -4, -18, 0, -8,
    -- layer=1 filter=125 channel=8
    -6, 4, -12, 8, 2, 7, -11, 0, -1,
    -- layer=1 filter=125 channel=9
    -5, -3, -12, -8, 0, 12, -19, 0, 1,
    -- layer=1 filter=125 channel=10
    2, 6, 2, -2, -5, 6, 5, -19, 7,
    -- layer=1 filter=125 channel=11
    -7, -7, -3, 3, -11, 6, -20, -5, -11,
    -- layer=1 filter=125 channel=12
    2, 1, -14, -11, -14, -16, 10, -10, 4,
    -- layer=1 filter=125 channel=13
    -7, -11, -10, 2, -10, 0, -3, -1, -21,
    -- layer=1 filter=125 channel=14
    -9, -13, 0, -9, -8, -15, -5, -4, -15,
    -- layer=1 filter=125 channel=15
    4, -1, 12, -15, -8, -15, -2, 3, 13,
    -- layer=1 filter=125 channel=16
    -9, 6, -15, -3, -8, -2, 2, 0, 2,
    -- layer=1 filter=125 channel=17
    10, -10, 0, -1, -7, -12, 0, -16, -10,
    -- layer=1 filter=125 channel=18
    0, -7, 9, -8, 0, -8, 15, -4, 14,
    -- layer=1 filter=125 channel=19
    1, -9, -10, -3, -18, -8, 1, 14, -7,
    -- layer=1 filter=125 channel=20
    -20, 5, 10, -1, 4, 0, -1, 0, -20,
    -- layer=1 filter=125 channel=21
    -2, -6, 3, 0, 7, -20, 9, -7, 10,
    -- layer=1 filter=125 channel=22
    -13, -5, 9, -15, 8, 15, 6, 9, 2,
    -- layer=1 filter=125 channel=23
    9, -11, 0, -5, 2, 4, -1, -4, -7,
    -- layer=1 filter=125 channel=24
    0, 5, -15, -15, 2, 14, -6, 2, -11,
    -- layer=1 filter=125 channel=25
    8, -11, -8, -4, -3, -14, -12, -12, -12,
    -- layer=1 filter=125 channel=26
    0, 6, 8, -13, 2, -5, -4, 4, -13,
    -- layer=1 filter=125 channel=27
    -12, 8, -10, -2, 4, 0, 0, 3, -6,
    -- layer=1 filter=125 channel=28
    -13, -20, -2, 4, -12, -22, 11, 9, -9,
    -- layer=1 filter=125 channel=29
    -10, -17, -6, -13, 4, -5, -13, -15, -22,
    -- layer=1 filter=125 channel=30
    0, -13, -10, -12, 4, -11, -4, -13, 14,
    -- layer=1 filter=125 channel=31
    -7, 14, 4, 11, -7, 2, 5, 7, 8,
    -- layer=1 filter=125 channel=32
    3, 12, 6, -6, -13, -11, -1, 11, -15,
    -- layer=1 filter=125 channel=33
    -13, 4, -4, 14, -2, 7, 8, 9, 13,
    -- layer=1 filter=125 channel=34
    -14, 0, 9, -2, 3, -5, 0, 7, -3,
    -- layer=1 filter=125 channel=35
    0, -17, -13, -8, -2, -4, -12, -9, -10,
    -- layer=1 filter=125 channel=36
    -13, -12, -3, 4, 8, -1, -7, -5, -18,
    -- layer=1 filter=125 channel=37
    0, 2, 10, -13, -16, -18, -20, -11, -11,
    -- layer=1 filter=125 channel=38
    10, -8, 7, -10, -14, -7, -9, 5, 0,
    -- layer=1 filter=125 channel=39
    0, 10, 0, 0, -10, 11, -9, -4, 15,
    -- layer=1 filter=125 channel=40
    -7, 5, -21, -7, -10, -24, -13, 9, -11,
    -- layer=1 filter=125 channel=41
    4, -9, -11, -14, -9, -11, -8, 9, -20,
    -- layer=1 filter=125 channel=42
    -8, -3, -17, -4, 2, -15, -16, -12, -10,
    -- layer=1 filter=125 channel=43
    -23, -11, -11, 9, -9, -4, 5, -1, -7,
    -- layer=1 filter=125 channel=44
    0, -11, -1, -5, -1, -10, 3, -8, -8,
    -- layer=1 filter=125 channel=45
    -8, -3, -13, -14, 0, -13, 6, -12, -8,
    -- layer=1 filter=125 channel=46
    -5, 2, 4, 2, -7, -3, -13, -15, -15,
    -- layer=1 filter=125 channel=47
    4, 2, -11, -20, -5, 0, -3, -18, -10,
    -- layer=1 filter=125 channel=48
    5, 13, 0, -5, -23, 6, 9, 12, -12,
    -- layer=1 filter=125 channel=49
    -3, -3, -10, 4, -12, 4, 0, -3, -11,
    -- layer=1 filter=125 channel=50
    -19, -9, -6, 6, -10, -3, 7, -14, -21,
    -- layer=1 filter=125 channel=51
    -15, 10, -18, -2, -15, -20, -6, -11, -20,
    -- layer=1 filter=125 channel=52
    -15, -7, -7, -6, 8, -12, -20, 2, 10,
    -- layer=1 filter=125 channel=53
    -2, 12, 13, -10, 0, 4, 1, -18, -15,
    -- layer=1 filter=125 channel=54
    -17, -4, 7, 4, -1, -21, -4, -16, -6,
    -- layer=1 filter=125 channel=55
    -11, -13, 6, -1, 0, 15, -6, -12, 0,
    -- layer=1 filter=125 channel=56
    -23, -20, -13, -9, -3, -1, 12, 8, -23,
    -- layer=1 filter=125 channel=57
    5, -8, 4, -11, 3, -20, -11, -19, -17,
    -- layer=1 filter=125 channel=58
    -14, -17, 2, -21, -1, -6, -3, -5, -9,
    -- layer=1 filter=125 channel=59
    11, -15, -13, 1, 0, 1, 11, -15, -6,
    -- layer=1 filter=125 channel=60
    2, -9, 4, -19, 6, -18, -4, -9, 0,
    -- layer=1 filter=125 channel=61
    -22, 0, 4, -15, -21, -7, -7, 2, -23,
    -- layer=1 filter=125 channel=62
    0, 10, 1, 4, -21, -18, -14, -5, -9,
    -- layer=1 filter=125 channel=63
    9, -7, 10, 10, 15, 8, -20, -5, 0,
    -- layer=1 filter=126 channel=0
    -40, 1, 13, -3, -22, -35, -66, -21, -33,
    -- layer=1 filter=126 channel=1
    10, -53, -2, 25, -66, -30, -14, -54, -42,
    -- layer=1 filter=126 channel=2
    -57, 21, 2, -71, 43, -5, -43, 34, 12,
    -- layer=1 filter=126 channel=3
    8, 1, -19, -9, -54, -34, 21, -35, -103,
    -- layer=1 filter=126 channel=4
    -48, -18, -41, 31, -23, -48, -51, -16, -61,
    -- layer=1 filter=126 channel=5
    -67, -115, -117, -32, -87, -60, -99, -54, -98,
    -- layer=1 filter=126 channel=6
    0, -55, -54, 0, -51, -51, -37, -38, -49,
    -- layer=1 filter=126 channel=7
    34, 5, -39, 17, -11, 19, 18, -37, -36,
    -- layer=1 filter=126 channel=8
    23, -35, -15, 46, -32, -53, 29, -73, 5,
    -- layer=1 filter=126 channel=9
    1, 28, 5, -27, -42, -39, -13, -24, -32,
    -- layer=1 filter=126 channel=10
    -22, -9, 24, -43, -36, 5, -7, -34, 24,
    -- layer=1 filter=126 channel=11
    -41, -22, -66, -34, -52, -67, -85, -26, -33,
    -- layer=1 filter=126 channel=12
    17, 1, 10, -38, -22, -41, -5, -22, -78,
    -- layer=1 filter=126 channel=13
    -31, -16, -26, -12, -36, -53, 2, -19, -56,
    -- layer=1 filter=126 channel=14
    -1, 7, 16, -20, -5, -1, 12, 4, -1,
    -- layer=1 filter=126 channel=15
    23, 10, -30, 12, -20, 5, 26, -1, -7,
    -- layer=1 filter=126 channel=16
    39, -23, -56, 33, -47, -54, 68, -22, 23,
    -- layer=1 filter=126 channel=17
    -71, -19, -41, -108, -53, -24, -39, -58, -37,
    -- layer=1 filter=126 channel=18
    0, 1, -9, 6, 13, 0, 3, 2, 5,
    -- layer=1 filter=126 channel=19
    37, -18, -21, 52, -37, -22, 28, -48, 7,
    -- layer=1 filter=126 channel=20
    -25, 0, 24, -48, 8, -27, 0, -10, -31,
    -- layer=1 filter=126 channel=21
    -36, 12, -3, -54, 20, 10, -69, 22, 11,
    -- layer=1 filter=126 channel=22
    -28, -97, -33, -66, -107, -120, -87, -50, -6,
    -- layer=1 filter=126 channel=23
    -19, -40, 0, -39, -37, -28, 33, -41, -10,
    -- layer=1 filter=126 channel=24
    -19, -3, -33, -53, 16, 33, 0, 64, 65,
    -- layer=1 filter=126 channel=25
    73, 0, -41, 113, -52, -3, 114, -29, -32,
    -- layer=1 filter=126 channel=26
    -9, 12, -32, -23, -29, -34, -20, 12, 1,
    -- layer=1 filter=126 channel=27
    -25, 7, -14, -51, 0, -48, -76, -20, -81,
    -- layer=1 filter=126 channel=28
    35, -16, -81, 10, -81, -28, 30, -57, -87,
    -- layer=1 filter=126 channel=29
    60, 19, -28, 71, -60, -62, 79, -70, -15,
    -- layer=1 filter=126 channel=30
    -8, -7, -5, -17, 9, 2, 6, -15, -1,
    -- layer=1 filter=126 channel=31
    63, 25, -25, 59, -6, 0, 60, -42, 11,
    -- layer=1 filter=126 channel=32
    -22, 19, -24, -37, -19, -38, -60, -23, -74,
    -- layer=1 filter=126 channel=33
    10, -1, 8, 1, 11, -14, -11, -23, 0,
    -- layer=1 filter=126 channel=34
    -3, -29, -27, 1, -45, -28, 13, -26, -42,
    -- layer=1 filter=126 channel=35
    33, 21, -35, 65, -18, -24, 47, -27, -3,
    -- layer=1 filter=126 channel=36
    -7, 32, -16, 4, -46, -28, 46, 52, -13,
    -- layer=1 filter=126 channel=37
    -19, -10, -43, -41, -22, -38, -7, -36, -44,
    -- layer=1 filter=126 channel=38
    20, 33, -10, 21, -29, 4, 38, -40, -38,
    -- layer=1 filter=126 channel=39
    11, 4, 20, -14, 0, -10, -15, 18, 0,
    -- layer=1 filter=126 channel=40
    15, 38, 2, 69, 25, 0, 54, 3, 18,
    -- layer=1 filter=126 channel=41
    -30, -113, -87, -22, -107, -51, -101, -52, -62,
    -- layer=1 filter=126 channel=42
    1, -21, -9, -7, -6, 13, -18, -30, -13,
    -- layer=1 filter=126 channel=43
    79, 18, -24, 114, -43, -37, 79, -35, 2,
    -- layer=1 filter=126 channel=44
    -34, -4, 2, -30, 2, 3, -56, 23, 0,
    -- layer=1 filter=126 channel=45
    80, 23, -28, 123, -33, -65, 124, -46, -15,
    -- layer=1 filter=126 channel=46
    -21, 3, 13, 0, 5, 3, 40, 27, 28,
    -- layer=1 filter=126 channel=47
    46, 27, -2, 65, -35, -1, 61, -34, 0,
    -- layer=1 filter=126 channel=48
    -51, -126, -53, -46, -128, -90, -106, -51, -39,
    -- layer=1 filter=126 channel=49
    -23, -36, -66, -40, -26, -37, -60, -19, -73,
    -- layer=1 filter=126 channel=50
    33, 11, -17, 39, -21, 14, 19, -42, -23,
    -- layer=1 filter=126 channel=51
    13, -30, -12, 9, 4, -9, -23, -16, -25,
    -- layer=1 filter=126 channel=52
    -27, -8, -5, -44, -22, -23, -26, 22, 44,
    -- layer=1 filter=126 channel=53
    -25, 15, -34, -65, -31, -58, -48, -33, -77,
    -- layer=1 filter=126 channel=54
    28, -30, -26, 38, -35, -5, 10, -61, -35,
    -- layer=1 filter=126 channel=55
    -24, -2, -27, -85, -47, -26, -22, -26, -38,
    -- layer=1 filter=126 channel=56
    27, 13, 21, 72, -21, -5, 66, -32, 0,
    -- layer=1 filter=126 channel=57
    16, -4, -7, 2, -7, -21, -10, -31, -10,
    -- layer=1 filter=126 channel=58
    17, -4, -56, 1, -99, -32, 54, -78, -35,
    -- layer=1 filter=126 channel=59
    31, 7, -12, 4, -31, -30, 24, -8, -7,
    -- layer=1 filter=126 channel=60
    42, -20, -10, 38, -21, -5, 40, -9, -5,
    -- layer=1 filter=126 channel=61
    20, -18, 3, 12, -10, 10, 6, -12, -18,
    -- layer=1 filter=126 channel=62
    61, -26, -27, 39, -18, -93, 131, -11, -56,
    -- layer=1 filter=126 channel=63
    -74, -42, -36, -61, -78, -110, 8, -26, 4,
    -- layer=1 filter=127 channel=0
    -1, 13, 1, 3, -10, -3, -20, 29, 16,
    -- layer=1 filter=127 channel=1
    -31, 34, 9, 0, 5, 0, 4, 25, 29,
    -- layer=1 filter=127 channel=2
    1, 18, -9, 10, -20, -30, -43, -19, -35,
    -- layer=1 filter=127 channel=3
    -5, 10, 0, 22, 31, -11, -16, 22, 9,
    -- layer=1 filter=127 channel=4
    5, 4, -7, -7, -2, 18, -11, 7, 15,
    -- layer=1 filter=127 channel=5
    11, 17, -28, 0, 52, 32, 31, 6, 20,
    -- layer=1 filter=127 channel=6
    0, 2, 8, 2, 5, 0, 32, 4, -7,
    -- layer=1 filter=127 channel=7
    -10, -3, 15, 4, 18, -17, -11, -4, 6,
    -- layer=1 filter=127 channel=8
    28, 4, 14, -17, 15, 28, 7, -7, -20,
    -- layer=1 filter=127 channel=9
    5, 30, 29, 36, 29, -17, -20, -11, -1,
    -- layer=1 filter=127 channel=10
    2, 12, 19, 6, 5, 22, 18, 24, 34,
    -- layer=1 filter=127 channel=11
    25, -4, -20, -20, 21, 11, -11, 4, 4,
    -- layer=1 filter=127 channel=12
    -6, 48, 29, 56, 18, 15, -1, 33, -22,
    -- layer=1 filter=127 channel=13
    -3, -10, 4, -24, -4, 21, 5, 29, 11,
    -- layer=1 filter=127 channel=14
    -23, -24, -11, -26, -27, -20, -12, 13, 6,
    -- layer=1 filter=127 channel=15
    20, 20, 13, 3, 17, -11, 0, -22, 7,
    -- layer=1 filter=127 channel=16
    23, 41, -27, 11, -11, 9, 41, 28, -19,
    -- layer=1 filter=127 channel=17
    2, 3, -1, 2, 15, 39, 21, 61, 36,
    -- layer=1 filter=127 channel=18
    -7, 0, -6, 3, 7, 2, 11, -7, 2,
    -- layer=1 filter=127 channel=19
    20, 9, -7, -5, 4, -2, 10, -21, -22,
    -- layer=1 filter=127 channel=20
    -28, 16, 22, 3, -14, -10, -12, 12, -22,
    -- layer=1 filter=127 channel=21
    -35, -8, 3, -20, -2, 5, 1, 13, 23,
    -- layer=1 filter=127 channel=22
    52, 60, -11, 2, -30, 12, 6, 28, -35,
    -- layer=1 filter=127 channel=23
    0, 16, -20, -3, 14, -16, 11, 8, -9,
    -- layer=1 filter=127 channel=24
    5, -12, -67, -20, 0, -47, -24, -5, -8,
    -- layer=1 filter=127 channel=25
    7, 45, 11, 33, -5, 40, 4, 11, -40,
    -- layer=1 filter=127 channel=26
    -10, -21, -15, 2, -6, -10, -5, 5, -10,
    -- layer=1 filter=127 channel=27
    5, 49, 11, 53, 38, 31, 7, 15, -17,
    -- layer=1 filter=127 channel=28
    19, 19, 11, -38, 59, -10, 6, -5, 26,
    -- layer=1 filter=127 channel=29
    3, 53, -4, 12, 26, 53, 28, 3, -43,
    -- layer=1 filter=127 channel=30
    -7, 7, 11, -7, 21, 1, -8, -15, -9,
    -- layer=1 filter=127 channel=31
    4, 5, 0, -23, -13, -3, -9, -27, -36,
    -- layer=1 filter=127 channel=32
    0, 63, 45, 63, 21, 9, -11, 25, -19,
    -- layer=1 filter=127 channel=33
    -2, 13, 13, 11, -16, 9, -6, -4, -5,
    -- layer=1 filter=127 channel=34
    19, 12, -2, 1, 7, -7, -2, -10, 2,
    -- layer=1 filter=127 channel=35
    28, 25, 12, 18, 24, 11, -1, -5, -20,
    -- layer=1 filter=127 channel=36
    -10, 8, 6, 5, 11, 9, 3, 13, 11,
    -- layer=1 filter=127 channel=37
    13, -6, 28, -1, 20, 5, -15, 24, 39,
    -- layer=1 filter=127 channel=38
    35, 11, 13, 35, 25, 2, -5, -7, -5,
    -- layer=1 filter=127 channel=39
    10, 3, -21, -6, 10, 8, 9, -8, 6,
    -- layer=1 filter=127 channel=40
    -24, 0, -59, -14, -9, -1, -17, -50, -39,
    -- layer=1 filter=127 channel=41
    0, 33, -8, -8, 44, 12, 35, 0, 14,
    -- layer=1 filter=127 channel=42
    -38, -6, -11, -30, -32, -13, -12, 9, 0,
    -- layer=1 filter=127 channel=43
    6, 35, -3, 13, 7, 24, 13, -40, -83,
    -- layer=1 filter=127 channel=44
    19, 18, 4, 19, 20, -16, -11, -19, -22,
    -- layer=1 filter=127 channel=45
    -2, 67, 32, 30, 11, 61, 21, -8, -47,
    -- layer=1 filter=127 channel=46
    11, 8, -17, -1, -22, -8, -3, -19, -14,
    -- layer=1 filter=127 channel=47
    19, 6, -11, -12, 15, 16, -12, -31, -38,
    -- layer=1 filter=127 channel=48
    32, 62, -14, -2, 28, 35, 7, 1, 0,
    -- layer=1 filter=127 channel=49
    -3, 8, -39, 3, 1, -17, -34, -35, -17,
    -- layer=1 filter=127 channel=50
    18, 10, 16, -8, 18, 9, 6, 2, 7,
    -- layer=1 filter=127 channel=51
    -2, 20, -15, -7, -5, 10, 10, -23, -20,
    -- layer=1 filter=127 channel=52
    5, 21, 0, 6, 21, 44, 16, 51, 38,
    -- layer=1 filter=127 channel=53
    -17, 17, 5, 25, 14, 0, -26, 31, 5,
    -- layer=1 filter=127 channel=54
    2, 10, 2, 0, -3, 9, -8, -3, -21,
    -- layer=1 filter=127 channel=55
    8, 47, -6, 19, 28, 25, 44, 58, 34,
    -- layer=1 filter=127 channel=56
    -22, 10, 4, -18, -14, 17, 13, -23, -27,
    -- layer=1 filter=127 channel=57
    5, 12, 8, 13, -6, -8, -5, 6, -10,
    -- layer=1 filter=127 channel=58
    26, 29, 3, 14, 1, 0, 7, 18, -3,
    -- layer=1 filter=127 channel=59
    34, 4, 24, 30, 10, 5, -16, 0, -8,
    -- layer=1 filter=127 channel=60
    1, 12, -1, 22, -7, -17, -15, 15, 14,
    -- layer=1 filter=127 channel=61
    -16, -7, -31, -39, 0, -21, -1, 5, 4,
    -- layer=1 filter=127 channel=62
    11, 7, -14, 27, 19, 2, -23, -13, -16,
    -- layer=1 filter=127 channel=63
    61, 39, -23, 35, 4, 9, 11, 38, -34,

    others => 0);
end iwght_package;

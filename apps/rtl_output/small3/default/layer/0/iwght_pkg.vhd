library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    -- layer=0
    -4541, -3269, -2880, -389, 12, -12019, 11321, -37, -411, 3854, 5438, -1053, 362, -3534, -726, 2112, -920, 4403, 1655, 8952, -10003, -557, 2751, 1078, -326, -938, -1558, -960, 2698, -748, 1863, -1288, -301, 678, -1396, -619, -1133, 3265, -859, -1032, -955, -2341, 3539, -5179, -115, -1191, 2367, -13171, -1778, 831, 1288, 2181, -3221, -1693, 829, -489, -2183, -10695, -1403, -6055, -7033, -2504, 2287, -675, -883, 13736, 2423, 908, 2172, -1341, -172, 335, 477, -252, -111, -3348, -877, 1269, -2471, -1059, 11344, -685, -1658, -338, -4611, 304, 6496, 453, 2783, 3585, -1055, 2177, -68, 1212, -1262, -157, -2725, -1506, 567, 1002, -2725, -2202, -7381, -549, -3547, -11032, -1270, -1156, 1000, 864, -5681, -413, -1898, 7223, -2242, -6818, -6169, -1891, 964, -3174, -1310, 1090, -257, 168, 277, 821, -364, -2259, 1820, -2025, -10584, -1202, -6328, -2344, 4523, -324, -7689, 2684, 13441, -1035, -1667, 2391, 4525, -761, 40, 611, 65, -784, -4356, -5346, -352, 810, -775, 2530, -5646, 248, -78, 2359, 518, -540, -1320, -99, -353, -719, -2053, 799, -782, -1430, 1009, -1647, 1683, -655, 6290, -1317, -888, 5751, 7029, -6878, -1878, -18628, -524, 5357, 1376, 2491, 1399, -4002, -674, 3842, 3746, 3517, 3369, -33, -155, -3175, 4198, -95, -2923, 11433, -2295, -459, -1210, -750, 1219, -1487, -1055, -792, -46, 1136, -3259, 453, -428, -2305, -147, 499, 1582, -2922, 570, -2357, -2885, 509, -6148, 365, -1842, -1561, 1129, -376, 3246, 1104, -1558, -1450, -809, 1170, 5168, -11074, -234, -968, 1697, 98, 1799, 5679, -698, -2029, 1515, -3561, -1663, 4173, -2561, 1727, 5202, -6940, -1999, 1088, -19, -1573, 229, 1337,

    -- weights
    -- layer=0 filter=0 channel=0
    -27, -30, -25, 35, 33, 18, 22, 11, 22,
    -- layer=0 filter=0 channel=1
    -21, -39, -20, 13, 10, 4, 8, -3, -8,
    -- layer=0 filter=0 channel=2
    0, -5, -24, 20, 30, 11, 8, -14, -17,
    -- layer=0 filter=1 channel=0
    -19, 3, 1, -15, 4, 5, 1, -18, -17,
    -- layer=0 filter=1 channel=1
    2, 6, -5, 6, -7, -9, 1, 0, -16,
    -- layer=0 filter=1 channel=2
    -9, -2, 13, 2, -8, -6, -9, -8, 0,
    -- layer=0 filter=2 channel=0
    -20, -20, -20, 5, -14, -13, 9, -7, 2,
    -- layer=0 filter=2 channel=1
    -7, -20, -13, -1, -11, -10, -5, -4, 0,
    -- layer=0 filter=2 channel=2
    -5, -11, -3, -1, -20, -6, 11, 0, -11,
    -- layer=0 filter=3 channel=0
    -14, -14, -26, -23, -6, -18, -30, -22, -24,
    -- layer=0 filter=3 channel=1
    -26, -8, -24, -4, -26, -15, -12, -16, -20,
    -- layer=0 filter=3 channel=2
    -9, -4, -11, -15, -3, -8, -21, -12, -9,
    -- layer=0 filter=4 channel=0
    27, 15, 24, -13, -2, 16, -17, -27, -23,
    -- layer=0 filter=4 channel=1
    26, 26, 2, -9, 3, 11, -7, -27, -25,
    -- layer=0 filter=4 channel=2
    26, 29, 16, -13, -12, 7, -14, -31, -16,
    -- layer=0 filter=5 channel=0
    2, 14, -2, 16, 10, 12, 5, 13, -7,
    -- layer=0 filter=5 channel=1
    -13, -1, 0, -8, 12, -3, -9, 11, -2,
    -- layer=0 filter=5 channel=2
    0, 12, 11, 1, 21, -2, 7, 12, -18,
    -- layer=0 filter=6 channel=0
    -9, -11, -1, -16, -19, -10, -2, -14, -3,
    -- layer=0 filter=6 channel=1
    4, -8, 17, 7, -11, 1, 17, 3, 10,
    -- layer=0 filter=6 channel=2
    -14, 2, -13, -8, -11, -12, 15, -7, 11,
    -- layer=0 filter=7 channel=0
    -32, 5, 23, -45, 10, 25, -31, 23, 23,
    -- layer=0 filter=7 channel=1
    -38, 14, 8, -32, 25, 21, -31, 29, 3,
    -- layer=0 filter=7 channel=2
    -44, 16, 14, -39, 18, 11, -18, 19, 10,
    -- layer=0 filter=8 channel=0
    -6, -14, -18, -15, -11, 2, 6, 2, -7,
    -- layer=0 filter=8 channel=1
    -3, 6, 5, 5, -11, -3, 0, 3, 3,
    -- layer=0 filter=8 channel=2
    -17, -4, -8, -7, 3, -4, -19, -4, -19,
    -- layer=0 filter=9 channel=0
    0, 9, 0, 16, 19, -8, 25, 5, 11,
    -- layer=0 filter=9 channel=1
    10, 2, -9, -2, -4, -21, 11, -17, -15,
    -- layer=0 filter=9 channel=2
    -13, 5, 1, -10, -17, -15, -8, -25, -17,
    -- layer=0 filter=10 channel=0
    0, 9, -13, -4, -9, -15, -25, -20, -15,
    -- layer=0 filter=10 channel=1
    39, 25, -1, 9, -4, 12, -17, 9, 0,
    -- layer=0 filter=10 channel=2
    22, -11, -34, -20, -9, -30, -34, -9, -19,
    -- layer=0 filter=11 channel=0
    0, 8, 0, -6, -7, -10, 0, -6, -2,
    -- layer=0 filter=11 channel=1
    -3, -2, 1, -14, -13, 3, -13, -5, -5,
    -- layer=0 filter=11 channel=2
    5, -6, 0, 5, 8, -14, -14, -13, -6,
    -- layer=0 filter=12 channel=0
    7, 27, 24, -10, -10, 14, 1, -29, -28,
    -- layer=0 filter=12 channel=1
    18, 22, 12, 4, 0, 0, -5, -20, -32,
    -- layer=0 filter=12 channel=2
    27, 25, 32, -5, 0, -2, -20, -35, -30,
    -- layer=0 filter=13 channel=0
    -1, -22, -21, -19, -5, -30, -22, -2, -16,
    -- layer=0 filter=13 channel=1
    -20, -4, -7, -19, -22, -23, -11, -23, -7,
    -- layer=0 filter=13 channel=2
    -13, -6, -13, -6, 15, 8, -5, 6, 12,
    -- layer=0 filter=14 channel=0
    5, 7, 25, -4, -10, 12, 0, -30, -30,
    -- layer=0 filter=14 channel=1
    23, 15, 30, 2, 7, -6, -11, -9, -30,
    -- layer=0 filter=14 channel=2
    4, 34, 30, 5, 3, -5, -7, -32, -35,
    -- layer=0 filter=15 channel=0
    27, 18, 21, 14, 16, 28, 26, 21, 0,
    -- layer=0 filter=15 channel=1
    -19, -30, -18, -18, -21, -29, -23, -22, -19,
    -- layer=0 filter=15 channel=2
    -4, 7, 7, 0, 3, 13, 11, -7, -1,
    -- layer=0 filter=16 channel=0
    -12, -7, 3, -13, 2, 0, -5, -8, 0,
    -- layer=0 filter=16 channel=1
    -2, 11, -13, 1, -1, -2, -14, -6, 10,
    -- layer=0 filter=16 channel=2
    -8, 2, -4, 3, -5, 10, -6, 4, -9,
    -- layer=0 filter=17 channel=0
    42, 13, -18, 41, -36, -50, -17, -30, -2,
    -- layer=0 filter=17 channel=1
    52, 29, -5, 39, -38, -44, -7, -41, 11,
    -- layer=0 filter=17 channel=2
    26, 0, -36, 16, -35, -43, -47, -60, -8,
    -- layer=0 filter=18 channel=0
    4, -10, 4, 15, 7, -17, 14, 11, -20,
    -- layer=0 filter=18 channel=1
    16, -10, 7, 19, -1, -20, 30, 16, 5,
    -- layer=0 filter=18 channel=2
    13, -22, -22, 5, -2, -37, 23, -7, -25,
    -- layer=0 filter=19 channel=0
    15, 10, 10, 1, -12, -4, -15, 4, 18,
    -- layer=0 filter=19 channel=1
    2, -3, -4, -28, -26, -8, -6, -1, -15,
    -- layer=0 filter=19 channel=2
    6, 2, 2, -24, -33, -32, -18, -21, -20,
    -- layer=0 filter=20 channel=0
    -13, 6, 6, 15, 26, 19, 18, 25, 1,
    -- layer=0 filter=20 channel=1
    -27, -28, -13, -19, -10, -14, 2, -4, -7,
    -- layer=0 filter=20 channel=2
    6, 4, -3, 20, 7, 7, 23, 10, 3,
    -- layer=0 filter=21 channel=0
    -11, -6, -1, 9, -9, 11, -6, 11, -12,
    -- layer=0 filter=21 channel=1
    -13, -4, -10, -11, 2, -5, 0, -3, -11,
    -- layer=0 filter=21 channel=2
    -2, -4, 5, -13, 9, -6, 2, -3, -8,
    -- layer=0 filter=22 channel=0
    -27, -34, 35, -48, -44, 39, -44, -13, 41,
    -- layer=0 filter=22 channel=1
    -28, -29, 27, -42, -28, 47, -31, -21, 51,
    -- layer=0 filter=22 channel=2
    -30, -39, 44, -19, -27, 54, -17, 0, 45,
    -- layer=0 filter=23 channel=0
    -12, -22, -29, -6, 12, -4, 17, 21, 28,
    -- layer=0 filter=23 channel=1
    -11, -32, -27, 2, 4, 18, 11, 18, 22,
    -- layer=0 filter=23 channel=2
    -23, -10, -30, 5, -2, 5, 16, 18, 25,
    -- layer=0 filter=24 channel=0
    -12, 1, 0, -1, 6, -6, -11, -7, -2,
    -- layer=0 filter=24 channel=1
    8, 2, -11, -2, 0, -5, 9, -4, -11,
    -- layer=0 filter=24 channel=2
    -6, -12, -6, -12, 7, -1, 0, -12, 4,
    -- layer=0 filter=25 channel=0
    8, -5, 5, 4, -14, -3, 12, 0, -19,
    -- layer=0 filter=25 channel=1
    -20, -3, -17, -14, 0, -5, -13, -17, 0,
    -- layer=0 filter=25 channel=2
    -13, -1, -14, -18, -22, -5, -15, -2, -15,
    -- layer=0 filter=26 channel=0
    5, -16, 2, -5, -9, 1, -1, 9, -2,
    -- layer=0 filter=26 channel=1
    -9, 3, -4, -4, -11, -13, -7, -11, -8,
    -- layer=0 filter=26 channel=2
    3, 4, -5, -9, 0, -13, -7, -1, 8,
    -- layer=0 filter=27 channel=0
    -1, -2, -5, -18, -10, -14, -14, -6, 1,
    -- layer=0 filter=27 channel=1
    2, -8, -17, 1, 0, 8, -13, -15, 0,
    -- layer=0 filter=27 channel=2
    9, -16, -11, -5, -15, -14, -18, 3, -13,
    -- layer=0 filter=28 channel=0
    -15, 3, -41, 6, 15, -51, -7, 39, -23,
    -- layer=0 filter=28 channel=1
    3, 11, -38, 4, 25, -35, 13, 50, 11,
    -- layer=0 filter=28 channel=2
    -12, -1, -40, 6, 24, -40, 18, 26, -3,
    -- layer=0 filter=29 channel=0
    3, 0, -7, 5, -5, 0, -2, 7, -5,
    -- layer=0 filter=29 channel=1
    -8, -6, -1, -6, -7, 1, 0, -9, 0,
    -- layer=0 filter=29 channel=2
    -9, -13, 11, 4, 0, 0, 2, -7, -6,
    -- layer=0 filter=30 channel=0
    18, -6, -49, 40, -6, -45, 50, 22, -43,
    -- layer=0 filter=30 channel=1
    4, -31, -54, 30, 10, -45, 64, 29, -30,
    -- layer=0 filter=30 channel=2
    -9, -36, -63, 22, -12, -35, 35, 3, -32,
    -- layer=0 filter=31 channel=0
    -4, 6, 5, 3, 8, -3, 3, -8, -14,
    -- layer=0 filter=31 channel=1
    0, -9, -7, -15, -18, -13, -5, 0, -7,
    -- layer=0 filter=31 channel=2
    -6, -11, -2, 4, -2, -8, -2, -4, -11,
    -- layer=0 filter=32 channel=0
    -13, -4, -2, 9, 0, 8, -6, 0, -4,
    -- layer=0 filter=32 channel=1
    -11, -12, -3, 0, -13, 4, 5, 0, -8,
    -- layer=0 filter=32 channel=2
    2, -12, -2, -7, -4, -9, 0, -9, 1,
    -- layer=0 filter=33 channel=0
    4, 0, -1, 0, 11, 18, 14, 7, 19,
    -- layer=0 filter=33 channel=1
    0, -4, 13, 12, 14, 7, 16, 9, 5,
    -- layer=0 filter=33 channel=2
    -18, -16, -14, -20, 2, -4, -16, -20, -3,
    -- layer=0 filter=34 channel=0
    28, 38, 35, 21, 36, 32, 8, 14, 8,
    -- layer=0 filter=34 channel=1
    -47, -30, -45, -49, -47, -54, -32, -24, -29,
    -- layer=0 filter=34 channel=2
    23, 0, 5, 12, -17, 11, 11, 6, 17,
    -- layer=0 filter=35 channel=0
    22, -41, 13, 27, -57, 31, 20, -40, 29,
    -- layer=0 filter=35 channel=1
    22, -52, 34, 31, -66, 27, 12, -50, 32,
    -- layer=0 filter=35 channel=2
    21, -58, 27, 25, -40, 38, 9, -46, 28,
    -- layer=0 filter=36 channel=0
    6, -2, 0, -7, 3, -3, -4, -2, 1,
    -- layer=0 filter=36 channel=1
    1, -9, 2, -10, -9, -7, -12, 8, -4,
    -- layer=0 filter=36 channel=2
    -2, -3, 0, 9, 0, 6, -14, -3, 2,
    -- layer=0 filter=37 channel=0
    26, 12, 1, 21, 1, -3, -2, 7, -19,
    -- layer=0 filter=37 channel=1
    -20, -28, -31, -27, -22, -34, -12, -3, -6,
    -- layer=0 filter=37 channel=2
    -3, 10, 0, -9, 4, -6, 19, -3, -4,
    -- layer=0 filter=38 channel=0
    -6, 8, -9, 1, -12, -3, 1, -3, 1,
    -- layer=0 filter=38 channel=1
    -14, -12, 1, 6, 5, -1, -6, -14, -1,
    -- layer=0 filter=38 channel=2
    0, -4, 8, 0, 3, -13, 0, 0, 8,
    -- layer=0 filter=39 channel=0
    -33, -29, -19, 16, 10, 11, 13, 20, 19,
    -- layer=0 filter=39 channel=1
    -11, -28, -30, 7, 0, 0, 6, 25, 23,
    -- layer=0 filter=39 channel=2
    -33, -17, -10, 10, -1, 4, 12, 11, 23,
    -- layer=0 filter=40 channel=0
    -9, 6, -10, -5, 2, 1, -4, -3, -9,
    -- layer=0 filter=40 channel=1
    1, -6, -8, 6, -8, -1, -6, -11, -8,
    -- layer=0 filter=40 channel=2
    -8, -12, -7, -9, -2, -8, -7, -3, -2,
    -- layer=0 filter=41 channel=0
    -5, -5, -2, -6, -19, -9, 0, 2, -11,
    -- layer=0 filter=41 channel=1
    -8, -4, -21, -7, -13, 1, 4, -8, -1,
    -- layer=0 filter=41 channel=2
    -16, -8, 1, -15, -8, 3, -17, -17, -16,
    -- layer=0 filter=42 channel=0
    5, 24, 23, 16, 29, 29, 18, 15, 26,
    -- layer=0 filter=42 channel=1
    -17, 0, -20, -8, -18, -15, -18, -14, -13,
    -- layer=0 filter=42 channel=2
    -7, -8, -13, 9, -2, -11, 5, -16, -16,
    -- layer=0 filter=43 channel=0
    29, 20, 23, 26, 15, 11, 18, 17, 7,
    -- layer=0 filter=43 channel=1
    0, 0, -3, -7, 13, -7, 8, -7, 9,
    -- layer=0 filter=43 channel=2
    -20, -9, -11, -35, -38, -12, -39, -26, -18,
    -- layer=0 filter=44 channel=0
    12, -24, -13, 25, 0, -25, 36, 0, -16,
    -- layer=0 filter=44 channel=1
    31, -30, -14, 44, -22, -33, 32, 20, -23,
    -- layer=0 filter=44 channel=2
    32, -36, -10, 36, -13, -42, 35, 23, -30,
    -- layer=0 filter=45 channel=0
    -13, 2, -12, -1, 8, -9, -1, 2, 0,
    -- layer=0 filter=45 channel=1
    6, -3, -4, 7, -10, -4, -11, 3, -9,
    -- layer=0 filter=45 channel=2
    -7, -11, -6, -6, -7, 8, -10, 1, 11,
    -- layer=0 filter=46 channel=0
    22, 17, 13, 29, 17, 23, -2, 9, 6,
    -- layer=0 filter=46 channel=1
    19, 12, -15, 15, -8, -10, -2, -30, -24,
    -- layer=0 filter=46 channel=2
    -12, -8, -16, 5, -28, -18, -4, -34, -18,
    -- layer=0 filter=47 channel=0
    1, 13, 6, 18, 14, 14, 11, 14, 6,
    -- layer=0 filter=47 channel=1
    -17, -9, -29, 4, -9, 0, -7, -5, -17,
    -- layer=0 filter=47 channel=2
    16, 7, 4, 21, 0, -8, 16, 19, 13,
    -- layer=0 filter=48 channel=0
    -17, -23, -22, -19, -6, 17, 16, 9, 10,
    -- layer=0 filter=48 channel=1
    -38, -35, -28, -5, 0, 4, 14, 18, 19,
    -- layer=0 filter=48 channel=2
    -37, -15, -2, -19, -6, 21, 21, 34, 34,
    -- layer=0 filter=49 channel=0
    -23, -9, -6, 12, 1, -3, 26, 15, 18,
    -- layer=0 filter=49 channel=1
    -35, -33, -4, 12, -11, -13, 30, 6, 2,
    -- layer=0 filter=49 channel=2
    -30, -29, 7, 10, 6, -17, 37, 20, 4,
    -- layer=0 filter=50 channel=0
    -24, -30, -9, -8, 10, -6, 32, 20, 7,
    -- layer=0 filter=50 channel=1
    -28, -27, -19, 4, -8, -6, 30, 16, 11,
    -- layer=0 filter=50 channel=2
    -12, -21, -6, 12, -11, -21, 28, 33, -4,
    -- layer=0 filter=51 channel=0
    21, 12, 5, 26, 10, 0, 7, -9, 0,
    -- layer=0 filter=51 channel=1
    10, 10, 3, -6, -7, 0, -3, -6, 3,
    -- layer=0 filter=51 channel=2
    -12, -14, -9, -5, -10, -20, -32, -38, -22,
    -- layer=0 filter=52 channel=0
    -7, -30, -18, 12, 11, 28, 14, 26, 7,
    -- layer=0 filter=52 channel=1
    -14, -33, -29, -10, 16, 17, 2, 19, 9,
    -- layer=0 filter=52 channel=2
    -25, -42, -8, 13, 9, 20, -5, 25, 15,
    -- layer=0 filter=53 channel=0
    24, 12, 12, 18, 34, 35, 23, 9, 28,
    -- layer=0 filter=53 channel=1
    -4, -12, -16, -11, -20, -20, -17, -17, -10,
    -- layer=0 filter=53 channel=2
    -4, 11, 11, -12, -19, -16, -23, -24, -20,
    -- layer=0 filter=54 channel=0
    11, -15, 4, 13, -2, -8, 0, 7, -12,
    -- layer=0 filter=54 channel=1
    8, -7, -2, 28, 5, 1, 28, 16, 8,
    -- layer=0 filter=54 channel=2
    6, -25, -23, -3, -28, -30, -6, -11, -3,
    -- layer=0 filter=55 channel=0
    -3, 2, 6, -17, -8, -11, -6, 8, -3,
    -- layer=0 filter=55 channel=1
    -9, 8, -3, -13, -15, 1, 0, 5, -2,
    -- layer=0 filter=55 channel=2
    0, -12, -2, 2, 1, -12, 0, -8, 3,
    -- layer=0 filter=56 channel=0
    -16, 0, -6, -11, -2, -13, -21, -12, -19,
    -- layer=0 filter=56 channel=1
    -16, -17, 1, 5, -1, -17, -13, -11, 0,
    -- layer=0 filter=56 channel=2
    0, -10, -15, -1, 3, -11, -1, 1, -5,
    -- layer=0 filter=57 channel=0
    3, 7, -2, 12, 2, -15, -4, -26, -30,
    -- layer=0 filter=57 channel=1
    16, 4, -7, 9, 16, 0, -6, -7, -28,
    -- layer=0 filter=57 channel=2
    6, 28, 20, 27, 14, -4, 19, 7, -7,
    -- layer=0 filter=58 channel=0
    15, 9, 9, 7, 0, 10, 20, 26, 28,
    -- layer=0 filter=58 channel=1
    -11, 7, -2, -5, -1, 9, -13, 3, 3,
    -- layer=0 filter=58 channel=2
    -3, -8, -17, 0, -24, -17, -12, -14, -8,
    -- layer=0 filter=59 channel=0
    -8, -1, -12, -10, 0, 2, -25, -8, -19,
    -- layer=0 filter=59 channel=1
    -3, 17, 13, 13, 16, 5, 10, 14, 0,
    -- layer=0 filter=59 channel=2
    -10, 9, 13, 9, 13, 6, -1, -9, 6,
    -- layer=0 filter=60 channel=0
    14, 6, 12, 7, 4, -2, -7, -4, 1,
    -- layer=0 filter=60 channel=1
    -5, -6, -7, -11, -1, -4, -23, -20, -24,
    -- layer=0 filter=60 channel=2
    20, 17, 18, 16, 18, 14, 10, 15, -7,
    -- layer=0 filter=61 channel=0
    -10, -7, -15, -16, 9, -2, -5, -13, -26,
    -- layer=0 filter=61 channel=1
    -24, -17, 2, 1, 16, -1, -3, -15, -16,
    -- layer=0 filter=61 channel=2
    -14, -6, 17, 25, 32, 18, 20, 19, 8,
    -- layer=0 filter=62 channel=0
    -4, -5, -13, -8, -8, -22, -24, -28, -27,
    -- layer=0 filter=62 channel=1
    10, 2, 7, -1, 3, -8, -19, -20, -13,
    -- layer=0 filter=62 channel=2
    21, 24, 19, 28, 20, 26, 9, 0, -7,
    -- layer=0 filter=63 channel=0
    3, 10, 23, 13, 11, 17, -3, -33, -29,
    -- layer=0 filter=63 channel=1
    0, 25, 11, 9, -4, 12, -24, -26, -33,
    -- layer=0 filter=63 channel=2
    14, 22, 11, 4, 14, 20, -12, -33, -36,
    -- layer=0 filter=64 channel=0
    7, 9, -9, -12, -7, -8, 4, -7, 1,
    -- layer=0 filter=64 channel=1
    -7, -3, 6, -3, 4, 2, 1, -3, -3,
    -- layer=0 filter=64 channel=2
    9, -15, 3, -8, 5, 10, -10, -12, -10,
    -- layer=0 filter=65 channel=0
    63, 11, -56, 29, -17, -68, -14, -26, -69,
    -- layer=0 filter=65 channel=1
    46, -25, -74, -6, -43, -86, -33, -69, -101,
    -- layer=0 filter=65 channel=2
    68, -10, -39, 34, -14, -50, 19, -18, -41,
    -- layer=0 filter=66 channel=0
    -2, -7, -7, -11, 11, 36, 5, 41, 44,
    -- layer=0 filter=66 channel=1
    -34, -42, -28, -39, -12, 0, -8, 19, 29,
    -- layer=0 filter=66 channel=2
    -35, -57, -38, -48, -19, -14, -6, 4, 21,
    -- layer=0 filter=67 channel=0
    -1, 18, 10, -17, 22, 20, -33, 16, 14,
    -- layer=0 filter=67 channel=1
    -30, 18, 4, -47, 5, 3, -42, 8, 14,
    -- layer=0 filter=67 channel=2
    -9, 17, 10, -33, 8, 16, -41, 9, 26,
    -- layer=0 filter=68 channel=0
    21, 5, 14, 5, 18, 24, 22, 7, 26,
    -- layer=0 filter=68 channel=1
    1, 2, -9, 3, 10, 8, -10, 12, -12,
    -- layer=0 filter=68 channel=2
    -3, -21, -6, -16, -18, -17, -17, -15, -21,
    -- layer=0 filter=69 channel=0
    1, -16, -4, -15, -4, 5, 1, 3, 10,
    -- layer=0 filter=69 channel=1
    2, 1, 1, -10, 0, -15, -13, -19, -3,
    -- layer=0 filter=69 channel=2
    -15, 3, 4, 1, -2, -14, -13, -8, -3,
    -- layer=0 filter=70 channel=0
    -9, -24, -9, -5, -17, -5, -16, -17, 13,
    -- layer=0 filter=70 channel=1
    0, -12, -2, -6, -6, 0, -17, 0, 18,
    -- layer=0 filter=70 channel=2
    0, -3, -5, -12, -19, 8, -8, -8, 10,
    -- layer=0 filter=71 channel=0
    -27, 11, 27, -23, 7, 15, -27, -2, 16,
    -- layer=0 filter=71 channel=1
    -14, 8, 12, -39, -8, 34, -11, -8, 31,
    -- layer=0 filter=71 channel=2
    -30, 10, 14, -30, 10, 26, -29, -1, 26,
    -- layer=0 filter=72 channel=0
    -12, -36, -32, 4, 10, 20, 4, 21, 21,
    -- layer=0 filter=72 channel=1
    -13, -19, -18, -15, 0, 0, 7, 29, 22,
    -- layer=0 filter=72 channel=2
    -6, -23, -29, -13, 1, 14, 2, 18, 28,
    -- layer=0 filter=73 channel=0
    54, 36, 11, 27, -2, -65, 4, -44, -56,
    -- layer=0 filter=73 channel=1
    59, 37, 13, 32, 0, -65, -9, -61, -80,
    -- layer=0 filter=73 channel=2
    65, 30, 17, 49, 6, -47, -2, -34, -72,
    -- layer=0 filter=74 channel=0
    27, 5, -25, 16, 9, -24, 24, 5, -24,
    -- layer=0 filter=74 channel=1
    22, 0, -24, 29, -2, -40, 18, -4, -23,
    -- layer=0 filter=74 channel=2
    15, 9, -30, 25, 1, -29, 32, -2, -18,
    -- layer=0 filter=75 channel=0
    -23, -12, -5, -13, -5, -14, -14, 0, -8,
    -- layer=0 filter=75 channel=1
    4, -19, -18, -8, -12, -8, -10, 9, 12,
    -- layer=0 filter=75 channel=2
    9, 9, 4, 18, 6, 18, 12, 8, 26,
    -- layer=0 filter=76 channel=0
    -22, -1, -16, -16, 3, 0, -15, -3, -17,
    -- layer=0 filter=76 channel=1
    -13, 2, -21, -3, -5, -15, -19, 0, 1,
    -- layer=0 filter=76 channel=2
    -2, 6, -16, -13, 5, -21, -14, 0, -2,
    -- layer=0 filter=77 channel=0
    -28, 14, 28, -19, -19, 6, -3, -17, -18,
    -- layer=0 filter=77 channel=1
    -29, 10, 33, -9, -28, 3, -5, -8, -21,
    -- layer=0 filter=77 channel=2
    -22, 0, 32, -12, -16, 0, -19, -29, -12,
    -- layer=0 filter=78 channel=0
    27, 18, 18, 23, 10, 4, 13, -5, -18,
    -- layer=0 filter=78 channel=1
    14, -6, 8, 16, -4, -22, 2, -15, -20,
    -- layer=0 filter=78 channel=2
    5, -18, -13, -10, -25, -30, 7, -17, -12,
    -- layer=0 filter=79 channel=0
    0, -3, -4, 0, 6, 0, 4, 14, 11,
    -- layer=0 filter=79 channel=1
    -2, -4, 3, 0, 19, 18, 13, 17, 8,
    -- layer=0 filter=79 channel=2
    -23, -13, -18, -4, -16, 1, -17, -1, -22,
    -- layer=0 filter=80 channel=0
    5, 2, 14, -5, -15, -4, -9, 2, 5,
    -- layer=0 filter=80 channel=1
    -25, -12, -4, -17, -25, -10, -35, -21, -18,
    -- layer=0 filter=80 channel=2
    -12, 0, 21, 2, -23, -14, -24, -23, -4,
    -- layer=0 filter=81 channel=0
    -8, 2, -11, -10, -10, 4, 0, 8, 7,
    -- layer=0 filter=81 channel=1
    -2, -11, 1, 0, -12, -16, -8, -17, -3,
    -- layer=0 filter=81 channel=2
    -2, 4, 0, 2, -1, 10, -12, -11, -13,
    -- layer=0 filter=82 channel=0
    -11, -5, 1, -14, 6, -7, 1, -14, -10,
    -- layer=0 filter=82 channel=1
    -12, -12, -2, 3, 0, -5, 6, -8, -1,
    -- layer=0 filter=82 channel=2
    -7, 5, -6, -11, -3, 1, 1, -5, -10,
    -- layer=0 filter=83 channel=0
    -10, 0, 3, 2, 14, 10, 20, 3, 3,
    -- layer=0 filter=83 channel=1
    -14, -2, 2, 17, 2, -4, 11, 17, 4,
    -- layer=0 filter=83 channel=2
    -18, -17, -18, -13, -14, -11, -6, 2, -19,
    -- layer=0 filter=84 channel=0
    28, 11, 5, -5, -10, -20, -17, -7, -18,
    -- layer=0 filter=84 channel=1
    46, 32, 10, 7, 0, -28, -19, -26, -9,
    -- layer=0 filter=84 channel=2
    43, 18, 12, 4, -8, -16, -34, -25, -44,
    -- layer=0 filter=85 channel=0
    26, 35, 23, -16, -10, 14, -26, -32, -6,
    -- layer=0 filter=85 channel=1
    22, 10, 15, -12, 3, 11, -26, -29, -17,
    -- layer=0 filter=85 channel=2
    20, 15, 13, 2, -10, -2, -7, -13, -15,
    -- layer=0 filter=86 channel=0
    -4, -12, -8, -5, 3, 2, 0, -3, 11,
    -- layer=0 filter=86 channel=1
    -18, -17, -23, 0, -23, -24, -14, -18, -15,
    -- layer=0 filter=86 channel=2
    19, 22, 6, 13, 23, 7, 16, 22, 12,
    -- layer=0 filter=87 channel=0
    -10, -20, -16, -20, -9, 1, -24, -22, -11,
    -- layer=0 filter=87 channel=1
    0, -10, 8, -5, 9, -6, -5, 2, 10,
    -- layer=0 filter=87 channel=2
    6, 4, -5, 21, 17, 10, 22, 17, 0,
    -- layer=0 filter=88 channel=0
    -22, -53, -22, -21, -30, 31, -28, 9, 81,
    -- layer=0 filter=88 channel=1
    -59, -67, -32, -49, -21, 19, -25, 15, 80,
    -- layer=0 filter=88 channel=2
    -43, -46, -20, -42, -16, 23, -35, 11, 82,
    -- layer=0 filter=89 channel=0
    -9, -20, -14, 13, -16, -15, 16, 5, -16,
    -- layer=0 filter=89 channel=1
    11, 10, 3, 28, 12, 15, 23, 15, 14,
    -- layer=0 filter=89 channel=2
    -7, -28, -11, -3, -22, -28, 13, -9, -14,
    -- layer=0 filter=90 channel=0
    0, -14, 4, 4, -7, 3, 6, -15, 4,
    -- layer=0 filter=90 channel=1
    -10, 0, -19, -14, -9, -15, -11, 1, -2,
    -- layer=0 filter=90 channel=2
    -5, -6, -15, 2, 5, -6, -17, 0, -14,
    -- layer=0 filter=91 channel=0
    14, 5, 14, 28, 18, 3, 26, 1, 6,
    -- layer=0 filter=91 channel=1
    -6, -24, -35, -14, -14, -38, 4, -25, -23,
    -- layer=0 filter=91 channel=2
    31, 3, -11, 14, 3, -17, 23, 0, -1,
    -- layer=0 filter=92 channel=0
    12, 19, 0, -27, -37, -11, 19, 10, 8,
    -- layer=0 filter=92 channel=1
    14, 4, 1, -35, -40, -36, 28, 28, 26,
    -- layer=0 filter=92 channel=2
    13, 24, 28, -46, -43, -32, 10, 25, 9,
    -- layer=0 filter=93 channel=0
    4, 35, 14, -49, -17, -13, 6, 1, -9,
    -- layer=0 filter=93 channel=1
    22, 28, 48, -44, -34, 13, 9, -17, -18,
    -- layer=0 filter=93 channel=2
    27, 27, 40, -49, -18, -10, -8, -27, -23,
    -- layer=0 filter=94 channel=0
    13, 17, -1, 2, 16, 13, 17, 16, 15,
    -- layer=0 filter=94 channel=1
    -4, -8, 4, 13, 13, 6, -8, 5, 3,
    -- layer=0 filter=94 channel=2
    -16, -7, -19, -6, -24, -7, -21, -8, -11,
    -- layer=0 filter=95 channel=0
    30, -5, -26, 31, 2, -15, 32, -2, -22,
    -- layer=0 filter=95 channel=1
    29, -13, -17, 14, -8, -35, 24, 6, -26,
    -- layer=0 filter=95 channel=2
    20, -11, -24, 16, 5, -31, 12, 8, -2,
    -- layer=0 filter=96 channel=0
    3, -21, -9, -8, 4, -10, 3, 3, -20,
    -- layer=0 filter=96 channel=1
    -14, -8, -9, -8, -9, -1, -1, -11, -7,
    -- layer=0 filter=96 channel=2
    -5, -8, -1, 2, -22, -6, -18, -16, -2,
    -- layer=0 filter=97 channel=0
    -10, -5, 0, 2, 2, -14, -15, -6, 7,
    -- layer=0 filter=97 channel=1
    -19, -5, -11, 1, -15, 0, -8, -10, 3,
    -- layer=0 filter=97 channel=2
    0, -2, 5, -2, -10, 4, -15, 2, -1,
    -- layer=0 filter=98 channel=0
    -32, -26, -28, -14, -17, -19, 20, 12, 18,
    -- layer=0 filter=98 channel=1
    -16, -19, -17, -15, -6, -16, 19, 23, 16,
    -- layer=0 filter=98 channel=2
    -19, -9, -9, 9, -5, 15, 27, 29, 12,
    -- layer=0 filter=99 channel=0
    -3, -10, -5, 0, 14, 3, -2, 3, 16,
    -- layer=0 filter=99 channel=1
    6, 12, 19, 6, 20, 24, 14, 21, 4,
    -- layer=0 filter=99 channel=2
    -9, -23, -6, -21, -25, -21, -14, -11, -16,
    -- layer=0 filter=100 channel=0
    0, -8, 6, 1, -11, -16, -18, -26, -24,
    -- layer=0 filter=100 channel=1
    13, 11, 3, 19, 10, 0, 12, -12, -7,
    -- layer=0 filter=100 channel=2
    21, 7, -8, 19, 5, -14, -1, -1, 0,
    -- layer=0 filter=101 channel=0
    -11, 2, -10, -9, -18, 4, -19, 4, -4,
    -- layer=0 filter=101 channel=1
    -6, 4, -14, -13, -3, 0, -18, 2, 5,
    -- layer=0 filter=101 channel=2
    -2, -13, -16, -9, -7, -21, -14, -10, -17,
    -- layer=0 filter=102 channel=0
    -4, 6, -1, 2, 1, -4, -11, 2, -17,
    -- layer=0 filter=102 channel=1
    -7, 9, 9, 3, 7, -10, -9, -6, -16,
    -- layer=0 filter=102 channel=2
    -11, -5, 15, -6, 9, 6, -11, -7, 0,
    -- layer=0 filter=103 channel=0
    -23, -12, -23, -13, -18, -12, -3, 0, -9,
    -- layer=0 filter=103 channel=1
    -16, -21, -15, -1, -2, -16, 5, 5, -5,
    -- layer=0 filter=103 channel=2
    -26, -9, -28, -17, -4, -12, -6, 2, 3,
    -- layer=0 filter=104 channel=0
    4, 13, -13, 14, -6, -12, -12, -12, -10,
    -- layer=0 filter=104 channel=1
    33, 34, 29, 31, 35, 34, 38, 22, 14,
    -- layer=0 filter=104 channel=2
    -41, -49, -37, -48, -37, -27, -36, -35, -23,
    -- layer=0 filter=105 channel=0
    -29, -18, -4, -23, 2, 6, 2, -4, 21,
    -- layer=0 filter=105 channel=1
    -4, -15, -7, -13, -5, 2, -6, 6, 21,
    -- layer=0 filter=105 channel=2
    0, 14, 2, 1, 21, 19, 17, 28, 28,
    -- layer=0 filter=106 channel=0
    -19, -17, -7, -24, -11, -9, -16, -6, -14,
    -- layer=0 filter=106 channel=1
    -10, -3, -7, 1, 5, 10, -13, 8, 3,
    -- layer=0 filter=106 channel=2
    22, 26, 22, 11, 7, 19, 6, 21, 17,
    -- layer=0 filter=107 channel=0
    -8, 0, -13, -5, -5, 5, -13, -5, -8,
    -- layer=0 filter=107 channel=1
    -8, 6, 6, -4, 5, -3, -5, -16, -5,
    -- layer=0 filter=107 channel=2
    -13, 3, 7, -17, -17, 5, -9, -9, 0,
    -- layer=0 filter=108 channel=0
    9, 0, 8, -5, -7, 9, -1, -8, -6,
    -- layer=0 filter=108 channel=1
    -15, -9, -19, -18, -5, -11, 1, -20, -26,
    -- layer=0 filter=108 channel=2
    19, 5, 2, 9, -1, 16, 17, -2, 9,
    -- layer=0 filter=109 channel=0
    7, 36, 13, 30, 11, 3, -43, -68, -73,
    -- layer=0 filter=109 channel=1
    24, 38, 17, 20, 27, -15, -41, -70, -70,
    -- layer=0 filter=109 channel=2
    5, 18, 12, 24, 19, 9, -49, -52, -56,
    -- layer=0 filter=110 channel=0
    -20, -23, -28, -5, 8, -15, -6, 17, -12,
    -- layer=0 filter=110 channel=1
    -19, -25, -29, 12, 9, -18, -1, 20, 8,
    -- layer=0 filter=110 channel=2
    0, -10, -15, 28, 23, 7, 20, 32, 23,
    -- layer=0 filter=111 channel=0
    0, -8, -2, -1, -11, -1, 4, -2, -6,
    -- layer=0 filter=111 channel=1
    0, -9, -2, -10, 6, 6, 0, 3, -2,
    -- layer=0 filter=111 channel=2
    5, -4, 0, -10, -1, -12, -2, 0, -8,
    -- layer=0 filter=112 channel=0
    -12, -9, -10, -6, -8, -11, 2, -13, -7,
    -- layer=0 filter=112 channel=1
    -5, 1, -7, -18, 2, -8, -4, -16, -1,
    -- layer=0 filter=112 channel=2
    4, -15, -6, 3, -4, 0, -7, 0, -8,
    -- layer=0 filter=113 channel=0
    -13, -17, -8, -18, -10, -3, -20, -20, -22,
    -- layer=0 filter=113 channel=1
    17, 18, 15, 10, 19, 15, 21, 0, 15,
    -- layer=0 filter=113 channel=2
    -6, -17, -15, -6, 3, 0, 7, 8, -13,
    -- layer=0 filter=114 channel=0
    -14, -16, -13, -14, -8, -15, -7, -3, -13,
    -- layer=0 filter=114 channel=1
    -1, -2, 3, 5, 5, -11, -10, -2, -16,
    -- layer=0 filter=114 channel=2
    17, 14, 12, 16, 19, 19, 19, 28, 18,
    -- layer=0 filter=115 channel=0
    -28, -16, 3, -15, 5, -11, -13, 0, 11,
    -- layer=0 filter=115 channel=1
    -11, -17, -20, -5, -11, 8, -7, 7, 6,
    -- layer=0 filter=115 channel=2
    3, 21, 16, 11, 17, 26, 16, 28, 30,
    -- layer=0 filter=116 channel=0
    15, 19, 17, 17, 12, 18, 15, 13, 8,
    -- layer=0 filter=116 channel=1
    3, 0, 16, 9, -6, 9, -14, 0, -10,
    -- layer=0 filter=116 channel=2
    3, -7, 0, -4, -10, -14, -14, -9, -36,
    -- layer=0 filter=117 channel=0
    9, 27, 33, 18, 32, 28, 13, 17, 23,
    -- layer=0 filter=117 channel=1
    -33, -43, -33, -46, -56, -38, -24, -22, -28,
    -- layer=0 filter=117 channel=2
    16, 11, -3, -1, -14, -3, -7, -3, 0,
    -- layer=0 filter=118 channel=0
    -11, -8, -17, -6, -14, -17, 18, 31, 11,
    -- layer=0 filter=118 channel=1
    -9, -29, -11, -12, 3, -15, 30, 32, 29,
    -- layer=0 filter=118 channel=2
    -16, -19, -12, -8, -17, 2, 13, 19, 29,
    -- layer=0 filter=119 channel=0
    -10, -4, 5, -22, -6, -14, -10, -12, -9,
    -- layer=0 filter=119 channel=1
    -2, 0, -11, -1, -10, -7, -13, -22, -7,
    -- layer=0 filter=119 channel=2
    -7, 0, -20, -22, -5, -14, -12, -2, -21,
    -- layer=0 filter=120 channel=0
    -16, 4, -1, -6, -9, 5, 1, 0, 7,
    -- layer=0 filter=120 channel=1
    -4, -6, -14, -3, -10, 7, -15, 5, -7,
    -- layer=0 filter=120 channel=2
    2, -3, -8, 5, 2, -9, 6, -15, -1,
    -- layer=0 filter=121 channel=0
    -1, 0, -22, 26, -1, -38, 10, 31, -17,
    -- layer=0 filter=121 channel=1
    0, -11, -42, 12, 20, -48, 21, 36, -2,
    -- layer=0 filter=121 channel=2
    0, -18, -41, 22, 14, -39, 33, 49, -13,
    -- layer=0 filter=122 channel=0
    2, 5, -24, 13, 20, -31, 1, 22, -9,
    -- layer=0 filter=122 channel=1
    14, 0, -39, 22, 19, -42, 21, 11, -20,
    -- layer=0 filter=122 channel=2
    30, -4, -36, 17, 1, -42, 36, 12, -16,
    -- layer=0 filter=123 channel=0
    -7, 6, 9, -37, -44, -33, 35, 37, 32,
    -- layer=0 filter=123 channel=1
    19, 11, 24, -36, -33, -29, 5, 22, 7,
    -- layer=0 filter=123 channel=2
    4, 19, 23, -31, -33, -31, 27, 8, 14,
    -- layer=0 filter=124 channel=0
    -49, 6, 47, -1, -23, 7, 53, -18, -37,
    -- layer=0 filter=124 channel=1
    -51, 6, 56, -10, -20, 1, 55, -5, -42,
    -- layer=0 filter=124 channel=2
    -30, 8, 54, -25, -46, 18, 56, -6, -30,
    -- layer=0 filter=125 channel=0
    -23, 9, 16, -29, -6, 26, -15, 3, 29,
    -- layer=0 filter=125 channel=1
    -19, -12, 18, -28, 3, 32, -27, 13, 24,
    -- layer=0 filter=125 channel=2
    -33, -18, 13, -32, -12, 36, -27, 19, 29,
    -- layer=0 filter=126 channel=0
    -3, 5, -10, -4, 8, 2, -2, -13, -11,
    -- layer=0 filter=126 channel=1
    1, 0, 0, -6, -4, -1, -3, 3, -2,
    -- layer=0 filter=126 channel=2
    7, -12, -9, -11, -7, -13, -1, -10, 11,
    -- layer=0 filter=127 channel=0
    12, 26, 27, 27, 33, 24, 6, 23, 18,
    -- layer=0 filter=127 channel=1
    -11, -4, -7, -23, -18, 1, -23, -15, -18,
    -- layer=0 filter=127 channel=2
    -6, -12, -7, -7, -33, -23, 1, -20, -22,
    -- layer=0 filter=128 channel=0
    10, 30, 22, 8, 26, 28, 5, 13, 25,
    -- layer=0 filter=128 channel=1
    -26, -39, -35, -22, -31, -42, -9, -29, -34,
    -- layer=0 filter=128 channel=2
    17, 3, 8, -2, -12, 4, 8, 0, 7,
    -- layer=0 filter=129 channel=0
    -22, -12, -22, -1, -7, -19, 8, -3, 12,
    -- layer=0 filter=129 channel=1
    -19, -2, -18, 0, -4, -11, -4, -9, -2,
    -- layer=0 filter=129 channel=2
    -12, 0, 3, -4, -17, -13, -12, -13, -10,
    -- layer=0 filter=130 channel=0
    8, 21, -6, 17, 0, -9, 5, -7, -12,
    -- layer=0 filter=130 channel=1
    16, 18, -4, 2, 2, -6, 11, 9, -25,
    -- layer=0 filter=130 channel=2
    9, 18, 5, 12, -1, -11, -4, -7, -27,
    -- layer=0 filter=131 channel=0
    -16, -5, 5, -7, -18, 2, -3, -1, -5,
    -- layer=0 filter=131 channel=1
    -9, 2, -15, -14, -14, 5, -3, -7, -15,
    -- layer=0 filter=131 channel=2
    2, -18, -12, -19, 4, 1, -19, -5, -14,
    -- layer=0 filter=132 channel=0
    -13, -23, -10, 0, -17, -4, 13, -4, 0,
    -- layer=0 filter=132 channel=1
    -19, -5, -19, 2, 4, -10, 12, -2, -1,
    -- layer=0 filter=132 channel=2
    2, 11, -6, -1, 12, -3, 21, 12, 12,
    -- layer=0 filter=133 channel=0
    -19, -11, 2, 0, -1, -21, -4, -12, -7,
    -- layer=0 filter=133 channel=1
    -17, 0, -16, -3, 3, 2, -20, 4, -12,
    -- layer=0 filter=133 channel=2
    2, 3, -14, -12, -4, -14, -20, 1, 3,
    -- layer=0 filter=134 channel=0
    -3, 0, -21, 7, -15, -9, 5, -5, 14,
    -- layer=0 filter=134 channel=1
    -2, 3, -14, -8, 5, 11, 21, 16, 14,
    -- layer=0 filter=134 channel=2
    -17, -31, -27, -21, -13, -19, 6, 1, -19,
    -- layer=0 filter=135 channel=0
    20, -7, -16, 11, 9, -15, 26, -1, -28,
    -- layer=0 filter=135 channel=1
    21, 2, -19, 29, -7, -46, 29, 11, -28,
    -- layer=0 filter=135 channel=2
    32, -9, -34, 18, 14, -45, 35, 2, -19,
    -- layer=0 filter=136 channel=0
    4, 1, -4, 6, -1, -4, 9, -2, 0,
    -- layer=0 filter=136 channel=1
    7, -3, 14, 18, 6, 14, 20, 11, 15,
    -- layer=0 filter=136 channel=2
    12, -3, 4, -6, 9, 7, -2, -1, -3,
    -- layer=0 filter=137 channel=0
    -15, 0, -9, 4, 5, -7, -13, 16, 11,
    -- layer=0 filter=137 channel=1
    3, 14, 10, 9, 15, 23, -6, 14, 23,
    -- layer=0 filter=137 channel=2
    -23, -13, -1, -24, -7, -20, -11, -16, -9,
    -- layer=0 filter=138 channel=0
    -33, -55, -39, -16, -43, -36, -36, -43, -46,
    -- layer=0 filter=138 channel=1
    -41, -51, -37, -30, -18, -48, -38, -44, -28,
    -- layer=0 filter=138 channel=2
    -12, -6, -14, 2, 1, -10, -30, -6, -7,
    -- layer=0 filter=139 channel=0
    -1, 15, 19, -2, -2, 0, -7, -11, -15,
    -- layer=0 filter=139 channel=1
    -11, 0, -9, -18, -15, -16, -7, -3, -12,
    -- layer=0 filter=139 channel=2
    3, -8, -18, -12, -15, 2, 8, -14, 1,
    -- layer=0 filter=140 channel=0
    4, -2, 5, -8, -4, -5, -9, -15, -10,
    -- layer=0 filter=140 channel=1
    -12, 8, -23, -12, 8, -18, 0, -18, -27,
    -- layer=0 filter=140 channel=2
    27, 24, 2, 34, 22, -3, 26, 22, 5,
    -- layer=0 filter=141 channel=0
    -12, -18, -23, -16, 4, -19, 6, 0, 6,
    -- layer=0 filter=141 channel=1
    0, 14, 23, 25, 27, 16, 16, 27, 9,
    -- layer=0 filter=141 channel=2
    -15, -10, -8, -19, -14, -23, 4, -5, -8,
    -- layer=0 filter=142 channel=0
    19, 15, 14, 15, 8, 29, 4, 15, 13,
    -- layer=0 filter=142 channel=1
    -34, -27, -13, -40, -41, -20, -28, -40, -8,
    -- layer=0 filter=142 channel=2
    11, 4, 26, 12, 6, 16, 8, 7, 17,
    -- layer=0 filter=143 channel=0
    1, -7, -7, 1, 2, -6, -4, -15, 1,
    -- layer=0 filter=143 channel=1
    2, 1, -8, -10, -5, -2, -11, -7, 1,
    -- layer=0 filter=143 channel=2
    3, -10, 4, -3, -5, -10, 1, -5, 2,
    -- layer=0 filter=144 channel=0
    19, 9, -20, 28, -2, -25, 11, 12, -1,
    -- layer=0 filter=144 channel=1
    20, -6, -31, 30, -13, -37, 16, 5, -33,
    -- layer=0 filter=144 channel=2
    11, 11, -13, 32, -4, -27, 25, -6, -22,
    -- layer=0 filter=145 channel=0
    -18, 0, -4, -27, -27, -17, 31, 32, 22,
    -- layer=0 filter=145 channel=1
    -14, -8, 2, -23, -15, -23, 31, 22, 21,
    -- layer=0 filter=145 channel=2
    5, -11, -6, -15, -27, -9, 22, 22, 25,
    -- layer=0 filter=146 channel=0
    -7, 1, -8, -19, -25, -23, -25, -23, -25,
    -- layer=0 filter=146 channel=1
    2, 1, 11, 10, -4, 0, -9, 10, 1,
    -- layer=0 filter=146 channel=2
    21, 0, 22, 10, 29, 24, 17, 17, 26,
    -- layer=0 filter=147 channel=0
    -12, -16, -8, -18, -10, 10, 4, 7, -9,
    -- layer=0 filter=147 channel=1
    9, -13, 0, -7, 6, 13, 3, -10, 3,
    -- layer=0 filter=147 channel=2
    -14, -2, -14, -18, -7, 1, 12, 5, -14,
    -- layer=0 filter=148 channel=0
    1, -13, -19, 11, -6, -15, -7, 9, -6,
    -- layer=0 filter=148 channel=1
    5, 14, -4, 15, 14, 10, 18, 4, 14,
    -- layer=0 filter=148 channel=2
    9, -5, -22, 7, -6, -20, -7, -9, -2,
    -- layer=0 filter=149 channel=0
    -18, 2, -2, -5, -9, -9, -19, -1, 2,
    -- layer=0 filter=149 channel=1
    6, 8, 3, -6, -9, -6, -9, -13, -4,
    -- layer=0 filter=149 channel=2
    22, 12, 18, 25, 23, 9, 8, 13, 9,
    -- layer=0 filter=150 channel=0
    1, -4, -7, -18, 4, -5, 9, 17, 25,
    -- layer=0 filter=150 channel=1
    -12, -22, -18, -4, -8, -7, 12, 7, 18,
    -- layer=0 filter=150 channel=2
    -21, -37, -31, 6, -1, 12, 10, 37, 35,
    -- layer=0 filter=151 channel=0
    -21, 13, 15, -45, -3, 21, -57, -35, 22,
    -- layer=0 filter=151 channel=1
    -16, 23, 39, -25, 7, 41, -28, -4, 20,
    -- layer=0 filter=151 channel=2
    -17, 27, 31, -44, -2, 43, -51, -17, 20,
    -- layer=0 filter=152 channel=0
    -13, -3, -10, -3, 6, -12, 2, -13, 4,
    -- layer=0 filter=152 channel=1
    0, -3, -9, -7, -17, -3, 6, -6, -12,
    -- layer=0 filter=152 channel=2
    -18, -5, -14, -18, -11, -4, -6, -14, 6,
    -- layer=0 filter=153 channel=0
    -21, 5, -6, -19, 11, 8, -14, 20, 11,
    -- layer=0 filter=153 channel=1
    -14, -9, 18, 6, 24, 14, 0, 24, 6,
    -- layer=0 filter=153 channel=2
    -16, -29, -24, -24, -18, -19, -20, 3, 0,
    -- layer=0 filter=154 channel=0
    -18, -26, -11, -12, -20, -11, 14, 9, 11,
    -- layer=0 filter=154 channel=1
    -21, -14, -11, -15, -17, -13, 13, 1, 13,
    -- layer=0 filter=154 channel=2
    -26, -22, 1, 8, 6, 12, 27, 33, 27,
    -- layer=0 filter=155 channel=0
    22, 31, 27, -5, -13, -1, -15, -28, -18,
    -- layer=0 filter=155 channel=1
    23, 34, 7, 8, -11, -12, -14, -29, -7,
    -- layer=0 filter=155 channel=2
    26, 29, 19, -8, -9, 1, -27, -21, -19,
    -- layer=0 filter=156 channel=0
    -23, -6, 22, -40, 18, 17, -24, 20, 19,
    -- layer=0 filter=156 channel=1
    -29, -5, 13, -38, -1, 25, -15, 25, 22,
    -- layer=0 filter=156 channel=2
    -39, 0, 17, -37, 19, 27, -33, 22, 13,
    -- layer=0 filter=157 channel=0
    -17, -28, 34, 32, -51, -15, 50, 3, -32,
    -- layer=0 filter=157 channel=1
    -10, -45, 37, 28, -43, -4, 63, 0, -25,
    -- layer=0 filter=157 channel=2
    -35, -41, 39, 15, -55, -11, 59, 2, -18,
    -- layer=0 filter=158 channel=0
    -13, 2, 12, -6, -4, 13, 11, 10, 17,
    -- layer=0 filter=158 channel=1
    -10, 4, 16, 1, 6, 18, 10, 11, 17,
    -- layer=0 filter=158 channel=2
    -5, -18, -9, -20, -1, -21, -17, -20, -25,
    -- layer=0 filter=159 channel=0
    -16, 3, -12, -9, -3, -8, -15, 12, -8,
    -- layer=0 filter=159 channel=1
    -12, -13, 0, -13, 9, -6, 0, 0, -14,
    -- layer=0 filter=159 channel=2
    -2, -7, -2, -14, 5, -10, -5, 10, -20,
    -- layer=0 filter=160 channel=0
    0, -7, -13, -7, -22, -1, 0, -16, -4,
    -- layer=0 filter=160 channel=1
    6, -23, -12, 7, -4, -5, -8, -6, -20,
    -- layer=0 filter=160 channel=2
    0, -10, -19, 7, -20, -15, 10, -16, 2,
    -- layer=0 filter=161 channel=0
    41, 26, 0, -3, -23, -15, -21, -17, -15,
    -- layer=0 filter=161 channel=1
    1, -10, -17, -6, -18, -4, -2, 2, -4,
    -- layer=0 filter=161 channel=2
    -4, 1, -17, -22, -23, -11, -25, -3, -20,
    -- layer=0 filter=162 channel=0
    2, 8, -7, -6, -11, -3, -12, 8, -5,
    -- layer=0 filter=162 channel=1
    -5, -7, -10, -8, 10, 1, -2, -2, 5,
    -- layer=0 filter=162 channel=2
    -1, -12, -12, -10, 1, 8, 1, -10, -9,
    -- layer=0 filter=163 channel=0
    11, -4, -14, -3, -10, -12, -10, 8, -11,
    -- layer=0 filter=163 channel=1
    -5, 0, 6, -9, 2, -11, -7, 1, -13,
    -- layer=0 filter=163 channel=2
    -7, 0, -2, -1, 4, -4, -7, -14, -11,
    -- layer=0 filter=164 channel=0
    -3, -6, 7, -13, -20, 1, -13, 2, -16,
    -- layer=0 filter=164 channel=1
    -14, 5, -1, -12, -21, -2, 1, 0, -4,
    -- layer=0 filter=164 channel=2
    5, -12, -10, -12, -10, 4, 0, -16, -15,
    -- layer=0 filter=165 channel=0
    -24, -33, -22, -6, -4, 17, 18, 36, 17,
    -- layer=0 filter=165 channel=1
    -18, -29, -32, -4, 14, 3, 18, 24, 17,
    -- layer=0 filter=165 channel=2
    -7, -36, -14, 2, -8, 8, -4, 22, 8,
    -- layer=0 filter=166 channel=0
    23, 24, 4, 35, 21, 1, -16, -16, -26,
    -- layer=0 filter=166 channel=1
    18, 23, 6, 14, -3, -4, -25, -27, -33,
    -- layer=0 filter=166 channel=2
    7, 9, -6, 30, 16, -15, -11, -31, -35,
    -- layer=0 filter=167 channel=0
    -14, 1, -3, -3, 4, -4, -5, -10, -6,
    -- layer=0 filter=167 channel=1
    -5, -5, -14, -5, 4, 3, -7, 1, -8,
    -- layer=0 filter=167 channel=2
    -13, -13, -5, -7, 6, -7, 6, -17, -9,
    -- layer=0 filter=168 channel=0
    -4, 11, 1, 18, 22, 5, 23, 8, 22,
    -- layer=0 filter=168 channel=1
    -15, -12, -8, 2, -8, -15, 0, -14, 0,
    -- layer=0 filter=168 channel=2
    -10, -17, -5, -11, -9, -6, -23, -12, 0,
    -- layer=0 filter=169 channel=0
    -9, -12, 7, -4, -14, -3, -11, -11, 2,
    -- layer=0 filter=169 channel=1
    -17, -2, -9, 5, 4, -5, -8, -14, -4,
    -- layer=0 filter=169 channel=2
    -4, 5, 0, -12, -7, -17, -3, 4, 4,
    -- layer=0 filter=170 channel=0
    -1, -25, 10, -24, -20, 4, 9, 38, 25,
    -- layer=0 filter=170 channel=1
    -17, -23, -15, -23, -28, 1, 9, 26, 29,
    -- layer=0 filter=170 channel=2
    2, -21, 6, -35, -27, 16, 2, 27, 25,
    -- layer=0 filter=171 channel=0
    18, 14, 8, 17, 22, 32, 19, 13, 29,
    -- layer=0 filter=171 channel=1
    -32, -22, -29, -31, -24, -32, -39, -29, -44,
    -- layer=0 filter=171 channel=2
    19, 15, 22, 1, 2, -8, 2, -11, -18,
    -- layer=0 filter=172 channel=0
    -56, -10, 3, 1, -54, -25, 74, 0, -41,
    -- layer=0 filter=172 channel=1
    -45, -28, -10, -9, -36, -21, 76, -1, -42,
    -- layer=0 filter=172 channel=2
    -53, -12, -8, 7, -53, -33, 66, -19, -36,
    -- layer=0 filter=173 channel=0
    -15, -4, -11, -14, -8, -17, -9, 1, -5,
    -- layer=0 filter=173 channel=1
    -9, -6, 4, 5, -1, -12, -14, -7, -5,
    -- layer=0 filter=173 channel=2
    6, 2, -11, -11, -12, -7, 1, -2, -13,
    -- layer=0 filter=174 channel=0
    -9, -3, 3, -23, -25, -5, -19, -27, -15,
    -- layer=0 filter=174 channel=1
    2, 2, 16, 8, 9, -4, 3, -10, 3,
    -- layer=0 filter=174 channel=2
    9, 13, 21, 18, 6, 1, -2, -6, 16,
    -- layer=0 filter=175 channel=0
    -3, 9, 30, 4, -22, 19, 27, -33, 15,
    -- layer=0 filter=175 channel=1
    -18, -29, 16, -8, -42, -3, 25, -47, 3,
    -- layer=0 filter=175 channel=2
    13, -4, 19, -10, -35, 15, 19, -50, -22,
    -- layer=0 filter=176 channel=0
    18, 10, 12, -4, 16, 18, -14, -15, 5,
    -- layer=0 filter=176 channel=1
    -2, 11, 11, -3, 8, 3, -16, -14, -22,
    -- layer=0 filter=176 channel=2
    -2, -13, -17, -36, -38, -17, -47, -37, -42,
    -- layer=0 filter=177 channel=0
    20, 22, 12, 11, 3, 10, -3, 4, 9,
    -- layer=0 filter=177 channel=1
    15, 12, 12, -10, 10, -4, -17, -6, -6,
    -- layer=0 filter=177 channel=2
    0, -9, 13, -23, 5, -1, -36, -24, -16,
    -- layer=0 filter=178 channel=0
    6, 23, 24, 24, 34, 26, 10, 28, 17,
    -- layer=0 filter=178 channel=1
    -12, -17, 9, -4, -14, -1, 0, 0, -9,
    -- layer=0 filter=178 channel=2
    2, -16, -3, -15, -7, -15, -24, -10, -20,
    -- layer=0 filter=179 channel=0
    16, 30, 27, -2, 21, 23, 1, 11, 3,
    -- layer=0 filter=179 channel=1
    3, 4, 10, -4, -2, 11, -17, -26, -11,
    -- layer=0 filter=179 channel=2
    2, 15, 12, 6, 12, 6, -12, -15, -1,
    -- layer=0 filter=180 channel=0
    12, -11, -5, -8, -9, 4, -12, 3, -5,
    -- layer=0 filter=180 channel=1
    2, -10, 9, -11, -8, 0, -1, -16, 6,
    -- layer=0 filter=180 channel=2
    3, 0, -10, -11, -14, -4, -4, -16, -12,
    -- layer=0 filter=181 channel=0
    0, -12, -9, -33, -32, -19, -29, -30, 0,
    -- layer=0 filter=181 channel=1
    -19, -4, 4, -19, -15, -7, -4, -20, -12,
    -- layer=0 filter=181 channel=2
    11, 3, 16, -6, 11, 15, 11, 12, 22,
    -- layer=0 filter=182 channel=0
    -23, -19, 0, -23, -18, -26, -28, -26, -13,
    -- layer=0 filter=182 channel=1
    -4, 11, 3, 5, 7, 10, 7, 8, 0,
    -- layer=0 filter=182 channel=2
    13, 18, 17, 24, 19, 12, 7, 25, 7,
    -- layer=0 filter=183 channel=0
    -22, -15, -10, 9, -9, -15, -9, -13, -11,
    -- layer=0 filter=183 channel=1
    9, 20, 23, 11, 28, 25, 20, 15, 18,
    -- layer=0 filter=183 channel=2
    -19, -12, -20, 6, 8, -20, -13, -12, -24,
    -- layer=0 filter=184 channel=0
    11, 34, 17, 23, 24, 31, 7, -4, 13,
    -- layer=0 filter=184 channel=1
    8, 1, -4, -11, -4, -12, -34, -35, -37,
    -- layer=0 filter=184 channel=2
    24, -3, -5, 1, -16, -8, -13, -28, -27,
    -- layer=0 filter=185 channel=0
    -37, -31, -13, -27, -8, -5, 5, 13, 24,
    -- layer=0 filter=185 channel=1
    -28, -21, -23, -24, 2, -5, 16, 15, 19,
    -- layer=0 filter=185 channel=2
    -12, -6, 4, -3, 14, 27, 33, 35, 33,
    -- layer=0 filter=186 channel=0
    -26, -25, 6, -29, -23, -12, -8, -6, 6,
    -- layer=0 filter=186 channel=1
    -11, -19, 2, -20, -7, 13, -6, 14, 1,
    -- layer=0 filter=186 channel=2
    -1, 12, 19, -9, 18, 19, -2, 29, 30,
    -- layer=0 filter=187 channel=0
    28, -18, -2, -26, -31, 14, -8, 39, 54,
    -- layer=0 filter=187 channel=1
    27, -38, -23, -50, -41, 14, -29, 36, 28,
    -- layer=0 filter=187 channel=2
    18, -61, -38, -40, -50, 21, -27, 40, 44,
    -- layer=0 filter=188 channel=0
    35, 44, 33, -15, -23, -6, -56, -42, -58,
    -- layer=0 filter=188 channel=1
    22, 37, 32, -8, -15, -25, -73, -68, -77,
    -- layer=0 filter=188 channel=2
    3, 3, 3, -41, -46, -44, -68, -51, -80,
    -- layer=0 filter=189 channel=0
    25, 3, 30, 25, 5, 20, -15, -7, 18,
    -- layer=0 filter=189 channel=1
    -16, -29, -11, -31, -14, -7, -36, -35, 8,
    -- layer=0 filter=189 channel=2
    -8, -21, 0, -17, -11, 29, -7, 0, 35,
    -- layer=0 filter=190 channel=0
    9, -7, 10, -5, -12, 8, 17, 13, 29,
    -- layer=0 filter=190 channel=1
    -8, -29, -6, -31, -25, 10, -3, 18, 24,
    -- layer=0 filter=190 channel=2
    -13, -18, -3, -28, -27, 9, -17, -3, 3,
    -- layer=0 filter=191 channel=0
    28, 28, 14, -21, -43, -32, 10, 5, 21,
    -- layer=0 filter=191 channel=1
    12, 11, 13, -37, -51, -40, -8, 4, 26,
    -- layer=0 filter=191 channel=2
    19, 27, 13, -6, -39, -36, 19, 4, 6,
    -- layer=0 filter=192 channel=0
    37, 21, 12, -11, -38, -36, -12, -10, 25,
    -- layer=0 filter=192 channel=1
    35, 5, -2, -13, -36, -24, -17, -4, 36,
    -- layer=0 filter=192 channel=2
    30, 18, -12, -28, -45, -35, 7, 13, 39,
    -- layer=0 filter=193 channel=0
    -55, -52, -30, -56, -46, -43, -28, -53, -31,
    -- layer=0 filter=193 channel=1
    3, 27, 21, 15, 9, 26, 9, 12, 16,
    -- layer=0 filter=193 channel=2
    30, 11, 11, 20, 11, 12, 25, 4, 5,
    -- layer=0 filter=194 channel=0
    0, -13, -26, -6, -40, -20, -46, -46, -48,
    -- layer=0 filter=194 channel=1
    44, 21, -14, 26, -28, -29, -39, -40, -34,
    -- layer=0 filter=194 channel=2
    43, 25, 19, 30, -4, -12, -19, -39, -26,
    -- layer=0 filter=195 channel=0
    -24, 10, 22, -31, 12, 28, -23, 18, 28,
    -- layer=0 filter=195 channel=1
    -39, -17, 0, -30, 0, 19, -23, 16, 8,
    -- layer=0 filter=195 channel=2
    -26, -3, 16, -38, 12, 16, 0, 11, 15,
    -- layer=0 filter=196 channel=0
    17, -3, -11, 31, 31, 17, 21, 22, 15,
    -- layer=0 filter=196 channel=1
    -38, -46, -45, -15, -7, -30, -11, -14, -1,
    -- layer=0 filter=196 channel=2
    -5, -5, 0, 19, -3, -2, 21, 19, 13,
    -- layer=0 filter=197 channel=0
    -15, -24, -8, -1, -9, 11, -16, -14, 11,
    -- layer=0 filter=197 channel=1
    -16, -13, -13, -27, -18, -19, -26, -24, 3,
    -- layer=0 filter=197 channel=2
    1, -4, 14, 0, 0, 11, 18, 0, 20,
    -- layer=0 filter=198 channel=0
    -20, -6, -4, 1, -14, 5, 16, -3, -19,
    -- layer=0 filter=198 channel=1
    8, -6, 0, 12, 13, 7, 27, 25, 7,
    -- layer=0 filter=198 channel=2
    -30, -26, -3, -12, -24, -13, -5, 4, -2,
    -- layer=0 filter=199 channel=0
    8, 28, 18, 6, -2, -3, 5, -27, -20,
    -- layer=0 filter=199 channel=1
    31, 30, 23, -10, -8, -7, -12, -32, -17,
    -- layer=0 filter=199 channel=2
    25, 25, 17, 0, -9, -11, -18, -23, -25,
    -- layer=0 filter=200 channel=0
    -11, -5, -6, -13, 0, 8, -7, 3, 6,
    -- layer=0 filter=200 channel=1
    3, -1, -17, 0, 5, -19, -17, 0, -18,
    -- layer=0 filter=200 channel=2
    -6, -5, 6, -12, -7, -17, -9, -9, 6,
    -- layer=0 filter=201 channel=0
    -2, 1, 5, -6, -13, -9, -4, -15, 11,
    -- layer=0 filter=201 channel=1
    -14, -12, -12, 4, 5, 8, 7, -13, -14,
    -- layer=0 filter=201 channel=2
    10, -4, 4, -13, -4, 7, 4, 0, -14,
    -- layer=0 filter=202 channel=0
    -13, 0, 12, 15, 17, 22, 12, 22, 12,
    -- layer=0 filter=202 channel=1
    -16, 6, 14, -15, 1, 2, -19, 1, 9,
    -- layer=0 filter=202 channel=2
    -9, -20, -16, -23, -8, -15, -23, -5, 8,
    -- layer=0 filter=203 channel=0
    -17, -17, -1, -6, 4, -18, -10, 5, -14,
    -- layer=0 filter=203 channel=1
    -8, -11, 0, -1, -10, -15, 0, -6, -10,
    -- layer=0 filter=203 channel=2
    13, 21, 11, 6, 29, 12, 26, 28, 17,
    -- layer=0 filter=204 channel=0
    -7, -6, -1, 1, -13, 8, -8, -6, -12,
    -- layer=0 filter=204 channel=1
    2, 1, -12, 8, -15, -7, -14, -9, -1,
    -- layer=0 filter=204 channel=2
    -3, -10, -11, -1, 6, -4, -4, 8, -4,
    -- layer=0 filter=205 channel=0
    -10, -44, -47, 25, -18, -47, 50, 22, -44,
    -- layer=0 filter=205 channel=1
    -10, -67, -58, 18, -7, -41, 66, 38, -31,
    -- layer=0 filter=205 channel=2
    -15, -56, -44, 29, -7, -21, 64, 37, -27,
    -- layer=0 filter=206 channel=0
    -6, -11, 17, -31, -9, 28, -8, 7, 22,
    -- layer=0 filter=206 channel=1
    -30, 1, 31, -38, 6, 29, -32, -1, 28,
    -- layer=0 filter=206 channel=2
    -35, -17, 29, -35, 8, 27, -17, 2, 32,
    -- layer=0 filter=207 channel=0
    4, 8, 12, -31, 0, 12, -30, 0, 28,
    -- layer=0 filter=207 channel=1
    -23, -8, 27, -23, 1, 32, -37, -18, 19,
    -- layer=0 filter=207 channel=2
    -6, -11, 18, -34, -12, 19, -39, 6, 32,
    -- layer=0 filter=208 channel=0
    -15, -12, -1, -18, -9, -4, -16, -7, -19,
    -- layer=0 filter=208 channel=1
    -10, -9, 2, 0, -7, -8, 1, 8, 7,
    -- layer=0 filter=208 channel=2
    21, 27, 21, 4, 11, 29, 12, 15, 26,
    -- layer=0 filter=209 channel=0
    -24, -33, -28, 4, 9, 11, 9, 33, 15,
    -- layer=0 filter=209 channel=1
    -22, -38, -27, -1, 0, 16, 16, 31, 21,
    -- layer=0 filter=209 channel=2
    -19, -22, -16, -2, 5, 6, 19, 8, 18,
    -- layer=0 filter=210 channel=0
    3, 4, -13, 24, 2, -29, 26, 14, -21,
    -- layer=0 filter=210 channel=1
    25, -7, -34, 25, -4, -37, 22, 13, -22,
    -- layer=0 filter=210 channel=2
    16, 7, -28, 26, -6, -34, 26, 22, -30,
    -- layer=0 filter=211 channel=0
    -19, -35, -24, 2, 17, 5, 27, 26, 15,
    -- layer=0 filter=211 channel=1
    -9, -37, -36, 6, 8, -1, 29, 31, 19,
    -- layer=0 filter=211 channel=2
    -36, -36, -35, -4, -13, -28, 11, -1, -24,
    -- layer=0 filter=212 channel=0
    19, 26, 12, 15, 5, 16, -26, -29, -23,
    -- layer=0 filter=212 channel=1
    9, 7, 9, -4, 7, 17, -9, -41, -24,
    -- layer=0 filter=212 channel=2
    1, 22, 17, 14, 17, 9, -16, -37, -31,
    -- layer=0 filter=213 channel=0
    -12, 3, 11, -14, -17, -24, -6, -22, -31,
    -- layer=0 filter=213 channel=1
    0, 6, 2, 4, 4, -4, 4, -11, -21,
    -- layer=0 filter=213 channel=2
    7, 19, 20, -6, -2, 13, 14, 0, 1,
    -- layer=0 filter=214 channel=0
    -19, -5, -10, 3, -3, 5, 2, 16, 0,
    -- layer=0 filter=214 channel=1
    -6, -12, -6, 10, 0, 15, 10, 17, 13,
    -- layer=0 filter=214 channel=2
    -7, -17, -17, -16, -12, -5, -5, 0, -8,
    -- layer=0 filter=215 channel=0
    1, 6, -7, 6, 3, -5, 2, 6, -16,
    -- layer=0 filter=215 channel=1
    -21, -9, -15, -14, -6, -3, -18, -22, -17,
    -- layer=0 filter=215 channel=2
    -9, -2, -13, -15, -12, -6, -10, -1, -9,
    -- layer=0 filter=216 channel=0
    48, 26, -42, 18, -37, -43, -31, -19, 49,
    -- layer=0 filter=216 channel=1
    61, 33, -23, 10, -26, -42, -18, -10, 33,
    -- layer=0 filter=216 channel=2
    55, 18, -30, 12, -53, -32, -27, -14, 49,
    -- layer=0 filter=217 channel=0
    -27, -27, -24, 23, 22, 0, 26, 20, 17,
    -- layer=0 filter=217 channel=1
    -7, -41, -21, 25, 4, -15, 11, 28, 10,
    -- layer=0 filter=217 channel=2
    -13, -35, -2, 8, 19, -14, -5, 22, 4,
    -- layer=0 filter=218 channel=0
    -15, 0, -21, -9, -7, -1, -10, -3, -18,
    -- layer=0 filter=218 channel=1
    -14, -14, -19, -24, -9, -24, -16, 2, -7,
    -- layer=0 filter=218 channel=2
    3, 0, -30, 11, -4, -15, 6, -12, -20,
    -- layer=0 filter=219 channel=0
    -20, 0, 28, -21, -11, 30, -22, 0, 21,
    -- layer=0 filter=219 channel=1
    -17, -14, 20, -14, -1, 27, -29, 0, 32,
    -- layer=0 filter=219 channel=2
    -15, -6, 26, -35, -1, 21, -18, -10, 29,
    -- layer=0 filter=220 channel=0
    -6, 16, 0, -28, -7, 1, -34, -4, 15,
    -- layer=0 filter=220 channel=1
    -24, 19, 21, -23, 11, 28, -40, -5, 10,
    -- layer=0 filter=220 channel=2
    -10, 23, 22, -41, -1, 22, -34, -17, 22,
    -- layer=0 filter=221 channel=0
    -39, -11, 1, -47, 14, 23, -11, 48, 53,
    -- layer=0 filter=221 channel=1
    -33, -53, 0, -56, 7, 21, -18, 24, 24,
    -- layer=0 filter=221 channel=2
    -61, -53, -8, -57, -15, 20, 2, 35, 38,
    -- layer=0 filter=222 channel=0
    2, -8, -14, -19, -6, -3, 0, -13, -19,
    -- layer=0 filter=222 channel=1
    1, -17, -14, -1, -7, 3, -8, -1, -8,
    -- layer=0 filter=222 channel=2
    -8, 0, -10, -13, -3, -10, -2, 8, 8,
    -- layer=0 filter=223 channel=0
    9, -16, -18, -19, -5, 2, -8, -18, 0,
    -- layer=0 filter=223 channel=1
    5, -15, -2, 5, 0, -11, 9, -10, -5,
    -- layer=0 filter=223 channel=2
    -5, -9, -3, -20, -4, -2, -6, -11, -14,
    -- layer=0 filter=224 channel=0
    -3, 9, 18, -4, 8, 4, 4, 13, 13,
    -- layer=0 filter=224 channel=1
    5, 17, 22, 11, 8, 7, -6, 0, 12,
    -- layer=0 filter=224 channel=2
    2, -3, -13, -10, -19, -24, -27, -18, -28,
    -- layer=0 filter=225 channel=0
    -17, -38, -16, 15, -11, -15, 14, 25, 16,
    -- layer=0 filter=225 channel=1
    0, -31, -1, 21, -8, -5, 29, 28, 13,
    -- layer=0 filter=225 channel=2
    -26, -22, -5, -4, -9, -22, 25, 16, 16,
    -- layer=0 filter=226 channel=0
    14, 21, 12, 8, 28, 1, 24, 3, 12,
    -- layer=0 filter=226 channel=1
    -11, 0, -14, 7, -18, -21, -9, -18, -18,
    -- layer=0 filter=226 channel=2
    -2, 0, 0, 17, -11, -8, -10, -24, -25,
    -- layer=0 filter=227 channel=0
    1, -5, 1, 7, -9, -30, -21, -36, -31,
    -- layer=0 filter=227 channel=1
    9, 18, -13, 27, 20, -10, -15, -9, -26,
    -- layer=0 filter=227 channel=2
    27, 25, 8, 12, 26, 5, 1, -16, -15,
    -- layer=0 filter=228 channel=0
    1, -14, -10, -7, 7, 10, -9, -11, -15,
    -- layer=0 filter=228 channel=1
    2, -15, -2, -9, 6, -14, 3, -2, 4,
    -- layer=0 filter=228 channel=2
    -13, 0, -9, -5, -13, 7, -7, 3, 5,
    -- layer=0 filter=229 channel=0
    -13, 6, -1, -13, 0, -12, -15, -26, -30,
    -- layer=0 filter=229 channel=1
    -1, 4, -9, 4, -2, -1, 3, 1, -20,
    -- layer=0 filter=229 channel=2
    27, 6, 1, 26, 22, 17, 21, 16, 8,
    -- layer=0 filter=230 channel=0
    -11, -5, -9, -13, -7, -7, 0, -4, 1,
    -- layer=0 filter=230 channel=1
    -9, 4, -11, -8, 1, -14, -15, 2, 1,
    -- layer=0 filter=230 channel=2
    -16, -11, -7, 5, 0, 5, 5, -11, -18,
    -- layer=0 filter=231 channel=0
    -10, -21, -30, -8, 3, -10, 5, 23, 34,
    -- layer=0 filter=231 channel=1
    6, -10, -11, 2, -16, -12, 0, 29, 36,
    -- layer=0 filter=231 channel=2
    -8, -26, -22, -12, -9, -20, 7, 35, 33,
    -- layer=0 filter=232 channel=0
    7, -5, 0, -10, -4, 6, -5, 5, 9,
    -- layer=0 filter=232 channel=1
    -13, 2, -5, 0, 6, 4, -5, 15, 9,
    -- layer=0 filter=232 channel=2
    -11, -27, -3, -9, -28, -19, -25, -23, -15,
    -- layer=0 filter=233 channel=0
    2, -12, -16, 11, 16, 22, 23, 30, 21,
    -- layer=0 filter=233 channel=1
    5, -7, -14, 0, 20, 9, 16, 6, 14,
    -- layer=0 filter=233 channel=2
    -6, -20, -25, -18, 1, -12, -13, 2, 4,
    -- layer=0 filter=234 channel=0
    21, 11, -5, 17, 1, -35, 19, -1, -34,
    -- layer=0 filter=234 channel=1
    15, 20, -7, 26, 1, -41, 28, -2, -34,
    -- layer=0 filter=234 channel=2
    26, 14, -24, 28, 19, -32, 7, -5, -31,
    -- layer=0 filter=235 channel=0
    11, 11, 1, 0, 3, -2, -4, -8, -4,
    -- layer=0 filter=235 channel=1
    -9, -2, -1, -5, -8, 5, -16, -13, -8,
    -- layer=0 filter=235 channel=2
    -8, -17, 2, -11, -18, 2, -7, -1, -6,
    -- layer=0 filter=236 channel=0
    19, 35, -13, 49, -7, -21, 13, -32, 1,
    -- layer=0 filter=236 channel=1
    28, 30, -4, 47, -10, -18, -8, -41, -19,
    -- layer=0 filter=236 channel=2
    8, 24, -28, 27, 2, -39, -19, -47, 0,
    -- layer=0 filter=237 channel=0
    -19, 20, 39, -32, -19, 39, -19, -44, -31,
    -- layer=0 filter=237 channel=1
    -17, 27, 61, -40, -13, 29, -18, -55, -30,
    -- layer=0 filter=237 channel=2
    1, 21, 59, -20, -8, 27, -17, -34, -23,
    -- layer=0 filter=238 channel=0
    20, -38, 3, 41, -50, 10, 37, -53, -1,
    -- layer=0 filter=238 channel=1
    21, -62, -8, 41, -67, 4, 26, -53, -6,
    -- layer=0 filter=238 channel=2
    21, -44, 26, 27, -32, 28, 43, -45, 20,
    -- layer=0 filter=239 channel=0
    -7, -10, 0, -15, -16, -18, -14, -18, -13,
    -- layer=0 filter=239 channel=1
    15, 20, 8, 22, 9, 15, 26, 20, 26,
    -- layer=0 filter=239 channel=2
    -5, -11, -5, -14, -17, -19, 6, -17, -2,
    -- layer=0 filter=240 channel=0
    -9, -9, 9, -2, -8, -8, 6, 1, -9,
    -- layer=0 filter=240 channel=1
    -2, 4, -12, 9, 1, -13, -8, -1, -8,
    -- layer=0 filter=240 channel=2
    -12, 9, -10, -7, -13, -3, -1, -4, -2,
    -- layer=0 filter=241 channel=0
    4, -13, -6, 5, -18, -7, -1, -15, -12,
    -- layer=0 filter=241 channel=1
    6, -16, -16, -12, -5, 0, 5, -17, -9,
    -- layer=0 filter=241 channel=2
    -17, 1, -17, 4, -4, -5, -8, -13, -8,
    -- layer=0 filter=242 channel=0
    -6, 14, -15, 19, 5, -30, 6, -17, -48,
    -- layer=0 filter=242 channel=1
    21, 30, -9, 35, 24, -27, 23, 4, -42,
    -- layer=0 filter=242 channel=2
    18, 18, -19, 11, 24, -32, -4, -7, -44,
    -- layer=0 filter=243 channel=0
    21, 22, 18, 23, 24, 14, 16, 17, 17,
    -- layer=0 filter=243 channel=1
    -8, -17, -14, -25, -7, -14, -13, -22, -23,
    -- layer=0 filter=243 channel=2
    -27, -29, -14, -51, -50, -20, -28, -23, -29,
    -- layer=0 filter=244 channel=0
    2, -7, -5, -5, 4, -13, 18, 7, 1,
    -- layer=0 filter=244 channel=1
    11, -16, -25, 14, 17, 5, 18, 16, -3,
    -- layer=0 filter=244 channel=2
    -20, -31, -27, -20, -4, -7, -17, -8, -22,
    -- layer=0 filter=245 channel=0
    19, 23, 23, 36, 11, 22, 28, 0, -4,
    -- layer=0 filter=245 channel=1
    -17, -10, 7, -10, -31, -18, -22, -42, -22,
    -- layer=0 filter=245 channel=2
    4, -11, 1, 22, -6, -10, -4, -10, -7,
    -- layer=0 filter=246 channel=0
    -12, -32, -7, -13, -10, 12, -13, 2, 23,
    -- layer=0 filter=246 channel=1
    6, 3, 6, 12, 8, 20, -1, 18, 30,
    -- layer=0 filter=246 channel=2
    -26, -25, -20, -24, -24, 11, -15, 4, 0,
    -- layer=0 filter=247 channel=0
    22, 8, -13, 11, -1, -26, 16, -28, -21,
    -- layer=0 filter=247 channel=1
    31, 1, 7, 17, -22, -18, -14, -28, -33,
    -- layer=0 filter=247 channel=2
    26, 0, -12, 1, -23, -35, 7, -34, -21,
    -- layer=0 filter=248 channel=0
    -10, 10, 16, -20, 12, 26, -21, -5, 6,
    -- layer=0 filter=248 channel=1
    11, 26, 16, -17, 19, 28, -21, -16, 5,
    -- layer=0 filter=248 channel=2
    -12, 3, 13, -19, -5, -11, -34, -28, -22,
    -- layer=0 filter=249 channel=0
    6, -7, 12, 4, -12, -4, 0, -13, 0,
    -- layer=0 filter=249 channel=1
    -19, 3, -6, -3, -1, 5, -16, 4, 7,
    -- layer=0 filter=249 channel=2
    -13, 0, 5, -3, 15, 18, -3, 7, 11,
    -- layer=0 filter=250 channel=0
    -15, -10, 1, 0, 0, -4, -14, -4, -20,
    -- layer=0 filter=250 channel=1
    3, -8, -4, 5, 1, -5, 3, 6, -6,
    -- layer=0 filter=250 channel=2
    -10, -12, 7, -11, -7, 4, -20, -17, -7,
    -- layer=0 filter=251 channel=0
    27, 8, 24, -8, 4, 3, -2, -18, -6,
    -- layer=0 filter=251 channel=1
    18, 21, 15, -25, -28, -3, -21, -28, -24,
    -- layer=0 filter=251 channel=2
    11, 20, 27, -15, -16, -11, -7, 3, 1,
    -- layer=0 filter=252 channel=0
    -9, -15, -15, 16, -17, -14, 18, 5, -14,
    -- layer=0 filter=252 channel=1
    -13, -9, 4, 6, 1, -11, -4, 9, 7,
    -- layer=0 filter=252 channel=2
    -15, -20, -4, 0, -9, -5, 10, -14, -6,
    -- layer=0 filter=253 channel=0
    -5, -5, -12, -19, -22, -10, -17, -11, -6,
    -- layer=0 filter=253 channel=1
    -12, -10, 3, 7, 6, 3, 1, 4, 5,
    -- layer=0 filter=253 channel=2
    -8, -7, -5, -8, 0, -17, -6, -21, -22,
    -- layer=0 filter=254 channel=0
    -25, -40, -6, 23, 26, -1, 1, 9, -3,
    -- layer=0 filter=254 channel=1
    -31, -40, -28, 26, 30, 5, 17, 17, 5,
    -- layer=0 filter=254 channel=2
    -33, -33, -10, 22, 20, 5, -3, 16, 8,
    -- layer=0 filter=255 channel=0
    9, 21, 14, 8, 15, 20, 17, 14, 23,
    -- layer=0 filter=255 channel=1
    -18, -6, -18, -8, -18, -22, -5, 0, -17,
    -- layer=0 filter=255 channel=2
    -19, 1, -6, -13, 2, 0, -20, -16, -4,

    others => 0);
end iwght_package;

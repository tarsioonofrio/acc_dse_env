LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
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

					-- test image
					-- image=0 channel=0 column=0
					158,159,165,166,160,156,162,159,158,159,161,160,161,166,169,170,167,162,160,160,156,149,150,148,149,143,140,141,143,137,126,116,
					-- image=0 channel=0 column=1
					152,151,159,166,162,160,164,162,163,156,155,159,163,170,171,171,169,160,154,151,145,139,140,141,149,147,145,142,143,136,125,119,
					-- image=0 channel=0 column=2
					151,151,158,167,160,163,165,165,163,162,158,157,161,166,167,169,170,159,145,121,110,98,101,114,120,134,143,140,142,139,130,120,
					-- image=0 channel=0 column=3
					155,155,160,174,167,167,169,169,165,165,167,191,177,157,162,164,158,149,104,103,98,92,80,74,86,83,113,132,140,140,136,127,
					-- image=0 channel=0 column=4
					155,156,161,170,169,163,169,166,164,164,173,246,195,151,146,142,111,78,85,113,112,106,97,93,74,84,85,105,128,138,133,129,
					-- image=0 channel=0 column=5
					148,133,130,147,161,165,167,167,163,165,163,180,157,128,97,66,69,66,89,118,122,119,114,94,99,91,58,67,108,140,138,134,
					-- image=0 channel=0 column=6
					127,109,47,88,153,170,168,170,169,166,164,147,129,127,100,68,78,72,83,132,146,124,105,107,115,85,63,46,79,132,141,134,
					-- image=0 channel=0 column=7
					131,99,42,70,143,167,165,168,171,161,140,120,130,144,116,88,91,85,77,124,163,136,102,106,100,85,54,49,57,107,138,136,
					-- image=0 channel=0 column=8
					170,103,54,124,153,161,163,166,165,174,113,125,157,156,121,86,82,84,80,81,138,146,113,87,83,86,71,56,40,74,133,137,
					-- image=0 channel=0 column=9
					180,134,94,154,174,158,156,153,207,237,207,156,174,148,125,93,86,74,59,76,137,143,133,106,86,87,84,75,50,40,95,132,
					-- image=0 channel=0 column=10
					183,108,142,165,177,155,159,122,213,237,220,164,183,156,125,120,78,80,45,91,175,157,155,107,87,103,88,78,59,41,59,104,
					-- image=0 channel=0 column=11
					188,100,135,170,187,166,173,134,117,194,199,170,185,189,134,117,102,84,38,125,210,160,146,93,83,94,104,85,73,55,62,76,
					-- image=0 channel=0 column=12
					189,90,127,175,174,166,178,159,97,168,168,137,186,216,160,123,120,115,50,150,194,155,123,91,84,84,95,86,84,73,79,73,
					-- image=0 channel=0 column=13
					189,93,152,185,119,136,173,167,103,147,145,167,189,226,180,141,126,117,71,154,186,149,114,87,80,72,80,99,100,90,97,94,
					-- image=0 channel=0 column=14
					194,108,168,186,105,99,156,167,100,115,138,198,190,172,145,154,146,103,71,152,179,137,130,110,85,91,95,109,115,100,97,117,
					-- image=0 channel=0 column=15
					197,132,172,184,130,78,140,155,115,130,143,230,242,145,135,131,121,108,95,144,168,152,112,87,71,87,105,112,120,103,121,136,
					-- image=0 channel=0 column=16
					203,146,168,191,168,78,126,138,138,96,154,173,162,140,113,113,101,105,112,171,156,148,135,109,78,79,94,101,107,125,151,144,
					-- image=0 channel=0 column=17
					214,163,164,183,176,94,96,156,148,106,129,118,114,116,102,115,86,101,144,118,68,128,133,75,60,58,71,102,116,143,150,140,
					-- image=0 channel=0 column=18
					212,178,167,173,176,124,86,141,153,135,104,77,134,124,129,147,85,92,150,132,117,107,75,64,44,65,86,133,155,160,154,151,
					-- image=0 channel=0 column=19
					199,187,171,174,177,144,86,119,122,137,144,70,129,108,145,184,116,73,131,137,134,89,51,52,47,90,121,163,171,164,158,149,
					-- image=0 channel=0 column=20
					165,195,179,177,181,152,99,131,171,103,93,80,93,122,178,191,150,100,89,87,60,46,38,24,46,60,108,144,144,128,127,120,
					-- image=0 channel=0 column=21
					117,195,177,178,181,138,83,150,245,219,133,134,149,176,190,194,168,125,110,61,35,34,49,58,61,58,69,72,78,69,59,55,
					-- image=0 channel=0 column=22
					79,175,174,176,177,140,109,211,253,252,208,124,114,124,116,122,104,68,68,60,52,50,51,56,56,51,43,51,59,48,43,42,
					-- image=0 channel=0 column=23
					41,96,144,168,178,165,165,246,253,227,110,60,53,49,49,48,45,42,46,42,38,46,46,43,42,46,46,50,55,53,51,45,
					-- image=0 channel=0 column=24
					29,29,59,131,166,132,194,254,241,141,61,50,50,51,49,50,47,42,39,34,35,39,38,42,45,56,62,59,56,50,46,51,
					-- image=0 channel=0 column=25
					48,30,34,73,128,128,215,256,187,66,54,50,52,52,46,45,43,41,36,39,40,40,43,46,59,62,64,59,54,50,70,83,
					-- image=0 channel=0 column=26
					52,35,31,41,66,128,224,240,124,58,49,56,54,44,44,47,46,43,43,44,44,45,54,58,54,46,43,36,51,73,85,76,
					-- image=0 channel=0 column=27
					50,35,29,35,44,78,202,211,97,65,54,48,58,48,40,45,47,48,47,46,51,39,39,48,47,39,28,40,67,67,46,51,
					-- image=0 channel=0 column=28
					50,35,32,33,41,46,104,170,64,54,52,53,61,58,54,45,42,41,46,49,46,42,40,39,37,40,44,63,47,31,15,51,
					-- image=0 channel=0 column=29
					68,42,31,38,37,43,42,71,49,31,27,38,49,56,58,53,56,60,57,53,50,45,39,33,42,62,79,73,56,38,13,40,
					-- image=0 channel=0 column=30
					61,49,35,43,39,42,44,40,42,27,23,30,27,29,36,47,56,62,66,75,69,49,43,43,60,85,109,93,60,26,29,20,
					-- image=0 channel=0 column=31
					54,56,45,43,40,40,40,38,36,26,22,29,25,29,19,18,32,47,61,74,66,53,52,45,67,89,105,89,48,24,34,21,
					-- image=0 channel=1 column=0
					112,111,116,118,112,109,115,113,111,113,116,111,111,117,117,119,117,113,111,112,109,107,107,106,107,101,98,97,97,95,91,85,
					-- image=0 channel=1 column=1
					112,110,114,116,112,113,117,114,116,110,111,110,113,119,117,115,115,111,112,115,110,104,102,100,105,102,102,97,98,95,91,88,
					-- image=0 channel=1 column=2
					110,109,111,111,106,115,117,117,115,115,114,109,111,115,114,113,116,114,111,96,90,78,77,85,86,96,103,99,99,98,95,89,
					-- image=0 channel=1 column=3
					107,110,109,112,110,117,120,119,115,117,123,146,130,111,115,114,112,111,80,87,90,90,75,63,70,62,85,98,102,101,99,94,
					-- image=0 channel=1 column=4
					107,114,115,114,114,113,120,116,113,116,128,214,156,114,111,108,80,53,69,103,110,114,102,94,72,78,73,83,96,101,94,93,
					-- image=0 channel=1 column=5
					109,104,100,112,115,113,116,115,111,116,118,138,122,102,75,50,58,56,83,113,121,122,116,96,100,91,58,58,84,105,98,95,
					-- image=0 channel=1 column=6
					100,95,37,74,117,118,115,118,117,116,120,107,98,108,87,67,83,75,84,130,142,118,99,102,111,83,71,47,61,98,99,93,
					-- image=0 channel=1 column=7
					115,96,43,64,111,117,114,116,119,113,109,94,110,131,106,87,95,88,77,118,153,124,93,98,93,81,60,53,47,83,103,97,
					-- image=0 channel=1 column=8
					161,105,58,121,124,113,117,122,121,135,89,105,141,143,111,80,81,85,78,71,125,135,103,79,77,82,73,57,35,59,106,103,
					-- image=0 channel=1 column=9
					176,139,100,154,149,116,116,118,180,214,180,131,153,131,110,85,84,74,57,68,125,133,124,98,81,85,85,76,49,30,75,103,
					-- image=0 channel=1 column=10
					183,116,151,169,156,112,118,89,197,224,191,135,159,137,108,111,76,80,44,85,165,147,147,100,83,102,88,79,59,36,46,81,
					-- image=0 channel=1 column=11
					191,108,144,175,167,120,123,93,95,182,171,142,161,171,119,107,98,84,38,121,201,152,139,89,80,93,104,87,75,53,55,56,
					-- image=0 channel=1 column=12
					194,96,134,180,156,123,123,109,68,154,144,114,166,202,149,113,114,114,50,147,187,149,118,88,83,84,95,87,87,73,74,55,
					-- image=0 channel=1 column=13
					192,95,154,188,110,106,124,116,72,132,125,149,174,216,172,131,117,114,71,152,181,144,110,85,80,73,80,100,101,88,89,73,
					-- image=0 channel=1 column=14
					196,107,167,186,109,89,119,122,74,106,123,185,180,165,140,143,136,100,71,152,175,133,128,109,86,93,96,110,116,96,85,95,
					-- image=0 channel=1 column=15
					197,129,167,178,137,83,120,125,94,120,131,221,236,138,130,121,112,104,88,134,159,147,108,85,72,88,104,109,110,86,96,104,
					-- image=0 channel=1 column=16
					203,146,164,182,170,86,125,126,121,80,143,163,152,132,106,106,101,101,90,143,138,141,130,105,76,79,93,91,83,88,108,104,
					-- image=0 channel=1 column=17
					215,166,167,184,182,102,96,149,137,93,116,105,102,105,91,110,91,103,128,96,56,120,126,69,56,56,70,93,94,112,116,110,
					-- image=0 channel=1 column=18
					211,184,175,181,184,131,88,139,148,128,90,64,121,111,117,143,92,96,139,117,109,99,68,59,41,62,69,105,119,120,115,111,
					-- image=0 channel=1 column=19
					192,189,176,179,182,149,90,121,124,136,134,59,118,97,134,176,118,75,119,124,129,86,49,51,49,90,91,118,121,113,111,107,
					-- image=0 channel=1 column=20
					156,193,178,173,181,157,103,135,175,105,90,77,90,118,173,182,148,100,78,77,61,52,46,33,57,71,100,125,123,109,113,105,
					-- image=0 channel=1 column=21
					120,200,178,169,179,144,87,153,247,222,140,141,156,182,196,192,172,133,109,62,49,54,70,81,85,84,99,101,104,96,92,90,
					-- image=0 channel=1 column=22
					105,197,183,172,177,146,112,211,252,253,224,143,132,141,133,133,124,93,87,82,84,84,85,93,94,91,96,104,108,97,97,95,
					-- image=0 channel=1 column=23
					89,137,168,174,182,170,166,245,251,231,136,88,80,76,75,72,79,81,81,82,86,90,89,87,89,93,94,96,96,94,95,90,
					-- image=0 channel=1 column=24
					91,87,102,153,179,136,189,250,245,159,94,84,84,85,83,84,86,84,82,79,83,86,85,89,92,103,103,101,102,99,94,103,
					-- image=0 channel=1 column=25
					111,94,85,106,148,136,213,253,198,93,91,88,90,90,83,82,82,81,80,83,86,89,92,95,108,110,109,108,108,105,123,137,
					-- image=0 channel=1 column=26
					114,99,86,83,95,145,229,245,143,92,87,94,92,82,82,83,84,83,86,88,90,97,106,110,105,97,95,91,108,130,138,125,
					-- image=0 channel=1 column=27
					110,98,89,86,83,106,219,228,126,104,94,87,97,87,80,82,84,87,89,89,97,92,93,102,101,93,85,101,129,126,98,96,
					-- image=0 channel=1 column=28
					108,97,92,88,88,84,133,197,100,97,94,95,103,100,96,83,79,80,88,92,92,95,93,92,90,93,102,125,110,90,60,93,
					-- image=0 channel=1 column=29
					124,100,88,91,87,89,79,107,89,77,71,82,93,100,102,92,94,99,99,97,95,94,88,83,91,112,132,131,116,97,64,85,
					-- image=0 channel=1 column=30
					116,102,85,91,90,92,88,81,85,72,67,74,71,73,80,86,95,101,109,119,113,95,88,88,105,130,156,145,115,82,82,64,
					-- image=0 channel=1 column=31
					107,105,89,86,89,92,87,81,79,69,66,73,69,73,63,58,70,87,104,119,111,96,95,87,109,131,146,135,99,77,84,67,
					-- image=0 channel=2 column=0
					49,47,51,53,46,41,47,45,44,41,41,52,49,41,45,44,40,38,39,43,44,45,45,43,44,39,43,41,38,36,36,33,
					-- image=0 channel=2 column=1
					51,40,45,56,49,43,47,45,46,38,41,54,52,41,40,33,30,33,41,50,53,55,52,48,50,46,45,38,34,31,32,34,
					-- image=0 channel=2 column=2
					47,33,36,48,42,44,45,45,43,43,48,57,51,38,37,35,39,47,54,49,52,50,47,50,48,55,51,39,35,34,34,33,
					-- image=0 channel=2 column=3
					40,32,31,44,43,46,48,48,44,45,57,95,75,41,47,54,58,67,47,65,76,84,66,50,52,39,45,46,43,39,39,36,
					-- image=0 channel=2 column=4
					41,48,49,47,43,40,47,44,41,42,59,164,107,56,60,71,50,31,56,98,111,118,105,93,67,70,47,45,48,46,36,36,
					-- image=0 channel=2 column=5
					54,64,57,53,44,39,41,41,37,39,42,85,78,58,43,31,43,45,76,110,120,122,116,96,97,86,47,37,49,58,44,40,
					-- image=0 channel=2 column=6
					57,80,17,28,48,43,40,43,42,37,39,52,59,75,70,57,72,64,74,121,132,108,90,94,103,77,69,39,36,58,48,39,
					-- image=0 channel=2 column=7
					90,92,38,41,56,42,36,39,49,51,51,49,77,107,93,79,88,82,69,107,140,112,81,88,84,74,58,49,32,50,51,39,
					-- image=0 channel=2 column=8
					144,105,59,113,82,43,41,50,66,95,59,78,121,128,101,74,77,82,73,61,112,123,93,70,69,76,67,53,27,35,59,45,
					-- image=0 channel=2 column=9
					163,143,105,149,112,51,47,60,146,198,166,119,145,125,107,79,79,71,53,58,112,122,114,89,74,78,78,71,43,15,44,57,
					-- image=0 channel=2 column=10
					175,122,158,168,122,50,51,47,179,226,188,131,155,132,104,104,69,77,40,77,154,137,138,92,77,96,79,73,59,33,31,46,
					-- image=0 channel=2 column=11
					189,116,153,178,136,59,55,44,80,188,164,133,151,159,106,95,89,79,34,113,192,142,130,82,75,88,94,81,78,55,48,26,
					-- image=0 channel=2 column=12
					194,105,144,185,133,68,53,47,44,152,126,94,148,183,129,98,105,109,47,140,178,140,111,83,79,80,85,81,89,73,64,24,
					-- image=0 channel=2 column=13
					193,103,163,192,98,66,58,50,39,120,103,127,155,200,157,117,107,109,68,147,174,136,104,80,76,70,72,94,99,81,69,34,
					-- image=0 channel=2 column=14
					196,112,172,188,109,67,62,55,34,88,103,169,169,159,140,134,125,95,70,149,170,127,122,105,83,91,90,104,111,80,53,47,
					-- image=0 channel=2 column=15
					197,136,174,181,142,77,88,77,52,93,116,211,230,137,130,112,101,95,75,118,146,138,101,80,68,87,99,99,93,54,48,48,
					-- image=0 channel=2 column=16
					204,160,178,188,172,90,126,113,82,37,133,155,141,117,88,90,92,87,58,104,109,126,118,97,72,77,94,82,55,45,55,46,
					-- image=0 channel=2 column=17
					215,180,184,194,186,105,102,145,111,61,105,95,89,89,73,98,88,95,102,64,32,105,115,61,51,53,65,78,64,68,64,54,
					-- image=0 channel=2 column=18
					205,192,189,193,188,133,96,143,141,111,80,55,108,96,100,133,93,93,120,93,92,86,58,52,39,60,40,59,62,54,45,46,
					-- image=0 channel=2 column=19
					180,187,181,185,184,152,99,132,130,135,126,51,108,86,123,168,118,73,103,105,118,78,44,50,52,93,60,68,64,52,50,46,
					-- image=0 channel=2 column=20
					146,187,175,172,180,160,111,146,185,111,87,73,86,116,173,177,148,101,66,63,57,54,51,41,69,83,75,82,76,61,69,63,
					-- image=0 channel=2 column=21
					124,200,176,168,179,147,91,159,250,225,144,147,164,192,208,197,181,143,109,62,58,68,87,102,110,111,122,119,120,112,112,115,
					-- image=0 channel=2 column=22
					133,213,192,177,182,150,113,209,247,252,232,157,149,162,156,152,148,119,104,101,111,110,115,125,131,130,135,141,142,132,137,132,
					-- image=0 channel=2 column=23
					135,168,188,188,192,174,164,237,241,228,153,111,105,105,107,101,115,120,113,116,125,125,126,128,132,139,137,137,135,134,139,133,
					-- image=0 channel=2 column=24
					141,130,134,176,191,137,181,242,245,175,127,118,119,121,120,116,117,117,115,113,120,125,125,130,134,145,142,142,146,144,140,149,
					-- image=0 channel=2 column=25
					162,140,124,136,167,143,209,249,205,118,128,125,127,127,121,115,113,112,113,117,123,131,134,138,150,152,147,149,154,152,167,182,
					-- image=0 channel=2 column=26
					165,147,130,122,126,164,234,247,153,114,123,131,129,119,119,119,119,119,123,127,131,141,150,154,150,141,140,138,158,178,182,169,
					-- image=0 channel=2 column=27
					162,149,138,133,126,138,233,234,140,126,129,124,133,123,116,119,122,126,130,132,140,138,139,148,147,139,133,153,182,176,142,139,
					-- image=0 channel=2 column=28
					161,147,143,141,138,125,159,211,119,121,128,130,139,135,131,120,118,120,130,135,136,139,138,136,135,138,151,178,164,140,103,136,
					-- image=0 channel=2 column=29
					177,148,137,146,139,132,113,133,114,105,105,117,128,135,137,128,131,137,139,138,137,136,131,125,133,154,179,181,168,146,108,127,
					-- image=0 channel=2 column=30
					168,148,132,143,139,134,125,112,115,104,102,109,106,108,115,120,128,135,144,156,152,134,127,127,144,170,197,190,164,130,126,107,
					-- image=0 channel=2 column=31
					160,149,132,134,134,132,123,115,114,105,101,108,104,108,98,89,100,118,137,152,145,131,130,123,145,167,182,175,145,124,129,110,

					others=>0 );
END inmem_package;

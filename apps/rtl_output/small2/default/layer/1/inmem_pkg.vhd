LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					9449, -743, 8199, 12989, -7230, 433, 407, 9927, -2054, 3650, -3615, -1411, 3341, -506, -2792, -558, -1418, -3115, 14149, -2810, 2298, -745, -773, -1613, -2730, -522, 4808, -993, -2079, 4273, 6786, -908, 6731, 3228, 925, 2095, -2716, 7072, 11610, -2253, 12053, 4240, 1167, 8166, 10723, -957, -937, -6417, 2000, 2640, -4500, 4417, 3249, -7981, 14849, -656, -5062, -5631, 850, 5864, -1484, -2753, -106, 8986, -5758, 2414, 6992, -4691, -2170, 8355, -1346, -465, -326, 5049, 949, 8164, 3183, -557, -4652, 153, 6303, 5629, -3872, 16317, 6862, 6334, 1139, -2631, -1375, -1123, -7543, 5376, 15847, 10057, -1487, -769, -529, -396, -2144, 11367, 4137, -2435, -1096, -2342, -1197, -1751, 7188, 2980, -1418, -809, 190, 16128, -4197, 5257, 2697, 3494, 4641, 2899, 6368, -7273, -273, -1376, 4575, 840, -2430, 2231, 4526, 1934,

					-- weights
					-- layer=1 filter=0 channel=0
					13, -32, -14, -42, -8, -50, 6, -21, -32,
					-- layer=1 filter=0 channel=1
					6, -7, -22, -15, -11, -8, -13, 18, 1,
					-- layer=1 filter=0 channel=2
					27, -17, 22, -59, -26, -23, 2, -24, -23,
					-- layer=1 filter=0 channel=3
					-28, -16, -18, -17, -12, -5, -22, -2, -1,
					-- layer=1 filter=0 channel=4
					14, 5, 2, 8, -5, 19, 16, 20, 1,
					-- layer=1 filter=0 channel=5
					-31, 22, -19, -9, 0, 5, -2, -43, -35,
					-- layer=1 filter=0 channel=6
					-30, 3, -33, -23, -14, -19, -27, -23, -23,
					-- layer=1 filter=0 channel=7
					10, -19, -4, 18, -13, 13, 8, 17, 38,
					-- layer=1 filter=0 channel=8
					-18, -8, -16, 1, 5, 3, 14, 19, 22,
					-- layer=1 filter=0 channel=9
					-4, -8, 24, -29, -20, 3, -55, -21, -21,
					-- layer=1 filter=0 channel=10
					-7, -13, -14, -16, -11, -20, 20, 4, -5,
					-- layer=1 filter=0 channel=11
					15, 14, -28, 15, -11, 4, 12, 22, 16,
					-- layer=1 filter=0 channel=12
					-35, -30, -26, 4, -10, 3, -10, 4, -2,
					-- layer=1 filter=0 channel=13
					1, -8, 13, 3, 3, 2, -9, 14, -7,
					-- layer=1 filter=0 channel=14
					9, -25, 5, -51, -16, -50, -12, -33, -49,
					-- layer=1 filter=0 channel=15
					-1, 19, 38, -3, 10, -9, 25, 32, 25,
					-- layer=1 filter=0 channel=16
					-33, -3, 1, -4, -30, -33, -8, 17, 23,
					-- layer=1 filter=0 channel=17
					3, 0, -5, -5, -7, 0, -4, 29, 2,
					-- layer=1 filter=0 channel=18
					-19, 5, 7, -13, -5, -22, -9, -18, 0,
					-- layer=1 filter=0 channel=19
					2, -4, 0, -3, 3, -5, -10, -12, -16,
					-- layer=1 filter=0 channel=20
					-20, 10, 25, 21, 1, -3, 13, 36, 20,
					-- layer=1 filter=0 channel=21
					-43, -6, -36, -9, 16, 27, 23, 8, 32,
					-- layer=1 filter=0 channel=22
					4, -12, 13, -27, -22, -23, -24, -40, -3,
					-- layer=1 filter=0 channel=23
					-28, -26, 2, -53, 2, -44, -52, -72, -21,
					-- layer=1 filter=0 channel=24
					18, 15, 13, 0, -2, 0, -3, 15, -23,
					-- layer=1 filter=0 channel=25
					-28, -4, -6, -22, -3, 0, 23, 37, 7,
					-- layer=1 filter=0 channel=26
					-21, -15, 0, -2, 4, -26, 2, 8, 6,
					-- layer=1 filter=0 channel=27
					25, 11, 22, 7, 7, 5, 11, 15, 17,
					-- layer=1 filter=0 channel=28
					12, 18, 8, 20, 49, 54, 47, 46, 46,
					-- layer=1 filter=0 channel=29
					-9, 1, 5, 0, 7, -18, 2, 34, 1,
					-- layer=1 filter=0 channel=30
					-11, 4, -11, -27, -6, -32, -23, -31, -2,
					-- layer=1 filter=0 channel=31
					-5, 0, -10, 12, 5, -9, -9, 12, -11,
					-- layer=1 filter=0 channel=32
					-35, -48, -29, -43, -54, -55, 39, 65, 38,
					-- layer=1 filter=0 channel=33
					-18, -17, -17, 13, 5, 3, -9, 23, -7,
					-- layer=1 filter=0 channel=34
					-36, -18, -52, -41, -78, -20, -9, -11, -16,
					-- layer=1 filter=0 channel=35
					8, 11, 24, 17, 29, 5, 33, 39, 41,
					-- layer=1 filter=0 channel=36
					-27, -35, -14, 23, 6, -11, 37, 55, -10,
					-- layer=1 filter=0 channel=37
					-50, -16, 9, -1, -31, -44, -4, 29, 5,
					-- layer=1 filter=0 channel=38
					-10, -5, -3, -19, 0, -46, -2, -10, -31,
					-- layer=1 filter=0 channel=39
					-43, -43, 3, -41, -9, 5, -21, -14, 10,
					-- layer=1 filter=0 channel=40
					33, 18, 24, -60, -21, -4, -25, -22, 4,
					-- layer=1 filter=0 channel=41
					-9, -11, -37, -24, -14, -17, -5, -20, -21,
					-- layer=1 filter=0 channel=42
					17, 1, 8, -51, -5, -44, -2, -29, -23,
					-- layer=1 filter=0 channel=43
					-52, -27, -15, -21, -17, -34, 1, 17, 2,
					-- layer=1 filter=0 channel=44
					-19, 22, 40, -3, 1, 21, 14, 13, 16,
					-- layer=1 filter=0 channel=45
					-45, -11, 6, -23, 6, -29, -28, -31, -17,
					-- layer=1 filter=0 channel=46
					-12, -36, 0, -25, -17, -45, -68, -69, -51,
					-- layer=1 filter=0 channel=47
					-33, -10, -11, -23, -48, -43, 3, 14, -20,
					-- layer=1 filter=0 channel=48
					-7, -11, 4, -26, -14, -15, -22, -34, -33,
					-- layer=1 filter=0 channel=49
					-7, -6, 47, -4, 25, 18, 36, 15, 38,
					-- layer=1 filter=0 channel=50
					-24, 0, -16, 0, -5, 8, -30, -9, -20,
					-- layer=1 filter=0 channel=51
					2, 14, 8, 25, 9, 20, -1, 26, 3,
					-- layer=1 filter=0 channel=52
					-13, -36, -40, -51, -78, -73, -35, -44, -29,
					-- layer=1 filter=0 channel=53
					19, 18, 10, -33, 3, 0, 12, 3, 11,
					-- layer=1 filter=0 channel=54
					-27, -25, 0, -13, -21, -21, -10, -11, -29,
					-- layer=1 filter=0 channel=55
					-24, -31, -6, -61, -21, -43, -71, -42, -49,
					-- layer=1 filter=0 channel=56
					19, -9, -4, 13, -7, 8, 25, -3, 13,
					-- layer=1 filter=0 channel=57
					12, 10, 2, 5, 6, -16, 5, 12, -15,
					-- layer=1 filter=0 channel=58
					-28, 4, -22, 5, -13, -15, -28, -9, -14,
					-- layer=1 filter=0 channel=59
					2, 20, 1, -22, 7, 24, 32, 8, 29,
					-- layer=1 filter=0 channel=60
					-15, 0, -14, -29, -35, -37, 1, -25, -18,
					-- layer=1 filter=0 channel=61
					-3, 13, 3, 2, 4, 25, 0, 17, 60,
					-- layer=1 filter=0 channel=62
					-41, -14, -39, -21, 1, 18, -2, -5, 17,
					-- layer=1 filter=0 channel=63
					-5, -12, -12, -77, -44, -28, -75, -99, -48,
					-- layer=1 filter=1 channel=0
					-6, 5, -2, -9, 10, -9, -5, -14, -13,
					-- layer=1 filter=1 channel=1
					0, -9, 11, 6, -1, -15, -7, -3, -8,
					-- layer=1 filter=1 channel=2
					-14, 7, -11, 4, -18, -11, -5, -9, -16,
					-- layer=1 filter=1 channel=3
					-17, -7, -10, 7, 0, 12, -3, -15, -15,
					-- layer=1 filter=1 channel=4
					0, 3, -6, -13, -3, 5, 0, -9, 0,
					-- layer=1 filter=1 channel=5
					3, -11, -8, -13, -15, 4, 3, -3, 5,
					-- layer=1 filter=1 channel=6
					6, -11, -16, -12, -11, -2, 5, 11, -6,
					-- layer=1 filter=1 channel=7
					4, -3, 9, -15, 3, 8, -15, -9, -2,
					-- layer=1 filter=1 channel=8
					-13, -10, 0, 0, -4, 4, -15, 5, -9,
					-- layer=1 filter=1 channel=9
					10, 8, 11, -3, -3, 9, -12, -10, 5,
					-- layer=1 filter=1 channel=10
					-9, -1, -5, 9, 12, -8, -2, -4, 1,
					-- layer=1 filter=1 channel=11
					-12, 9, -14, -10, 1, -12, 9, 8, -12,
					-- layer=1 filter=1 channel=12
					3, -16, 0, -14, 7, -4, -11, -5, -1,
					-- layer=1 filter=1 channel=13
					1, -14, 6, -15, -20, -11, -6, -10, -12,
					-- layer=1 filter=1 channel=14
					-6, 3, -5, -12, -4, -15, -9, 2, 6,
					-- layer=1 filter=1 channel=15
					-7, -8, 5, -6, -15, -7, 3, -17, -9,
					-- layer=1 filter=1 channel=16
					-1, -9, 3, 2, 15, -11, 7, -8, -3,
					-- layer=1 filter=1 channel=17
					-15, -17, -10, 8, -7, 6, -11, 9, 2,
					-- layer=1 filter=1 channel=18
					-13, 0, 3, -4, -13, -3, -13, 10, -5,
					-- layer=1 filter=1 channel=19
					2, 9, 7, -8, -7, -3, -11, 0, 12,
					-- layer=1 filter=1 channel=20
					10, -13, -10, -3, 1, -17, 1, 4, -17,
					-- layer=1 filter=1 channel=21
					-7, -16, 4, -4, -5, -9, -13, 0, -17,
					-- layer=1 filter=1 channel=22
					1, -1, -4, 8, 2, -5, 13, 6, 0,
					-- layer=1 filter=1 channel=23
					4, 3, -13, 7, 10, -13, -13, -17, -14,
					-- layer=1 filter=1 channel=24
					6, 5, -2, -10, -13, -14, 2, 0, 9,
					-- layer=1 filter=1 channel=25
					2, -12, 11, -12, -2, 3, 6, 0, -7,
					-- layer=1 filter=1 channel=26
					2, -8, 6, 5, 11, 6, -2, 4, -10,
					-- layer=1 filter=1 channel=27
					-11, 2, 7, 5, -11, 0, -8, -6, -4,
					-- layer=1 filter=1 channel=28
					10, -14, -16, -8, -19, 7, -1, 0, 1,
					-- layer=1 filter=1 channel=29
					0, -7, 8, -3, 7, -15, 12, -11, -7,
					-- layer=1 filter=1 channel=30
					-11, 9, -12, -1, -6, -7, 3, 0, -6,
					-- layer=1 filter=1 channel=31
					-3, 10, 12, -10, -8, 6, 9, 6, 4,
					-- layer=1 filter=1 channel=32
					10, -8, 12, 1, 0, -10, 14, 9, -7,
					-- layer=1 filter=1 channel=33
					9, -3, 3, -2, 7, -10, 1, -11, 8,
					-- layer=1 filter=1 channel=34
					-11, 13, -6, -5, -13, 2, 3, 12, -12,
					-- layer=1 filter=1 channel=35
					5, 0, -2, -8, -15, -6, -15, -2, -7,
					-- layer=1 filter=1 channel=36
					1, 14, -12, -3, 9, 9, 3, -10, -5,
					-- layer=1 filter=1 channel=37
					-1, -5, 0, -2, -5, 6, -14, -5, -7,
					-- layer=1 filter=1 channel=38
					-8, 10, -1, 4, 10, 3, 0, 4, 3,
					-- layer=1 filter=1 channel=39
					-6, 14, 6, -5, -13, -2, -14, -14, 5,
					-- layer=1 filter=1 channel=40
					-6, -6, -11, -8, -3, -13, 6, -9, -1,
					-- layer=1 filter=1 channel=41
					-11, -13, 7, 3, -10, -8, -3, 4, -9,
					-- layer=1 filter=1 channel=42
					1, -3, -5, 7, -6, 11, 2, -8, -6,
					-- layer=1 filter=1 channel=43
					7, -13, -5, -8, -8, 9, -8, 0, 1,
					-- layer=1 filter=1 channel=44
					-5, 14, -3, -1, -1, 1, 0, -8, 2,
					-- layer=1 filter=1 channel=45
					-3, -1, -2, 4, 10, -10, 2, 5, -20,
					-- layer=1 filter=1 channel=46
					-10, 11, 10, 2, 10, 2, 0, 2, 10,
					-- layer=1 filter=1 channel=47
					-1, 5, -3, -10, -8, -6, 11, -3, 9,
					-- layer=1 filter=1 channel=48
					-6, 2, 10, -1, -11, -16, -9, 5, 4,
					-- layer=1 filter=1 channel=49
					-22, -12, 9, -11, -11, 7, -10, -7, 9,
					-- layer=1 filter=1 channel=50
					-6, -9, -6, -1, -5, 10, 12, 7, -13,
					-- layer=1 filter=1 channel=51
					-6, 7, -4, 11, 3, 10, -5, 10, 3,
					-- layer=1 filter=1 channel=52
					-2, 10, 14, 6, -22, 2, 6, -5, -3,
					-- layer=1 filter=1 channel=53
					-2, -1, -3, -16, 5, 3, -2, -17, 1,
					-- layer=1 filter=1 channel=54
					11, 7, 0, 0, 0, 0, 10, -12, -14,
					-- layer=1 filter=1 channel=55
					-1, 10, -8, -13, 5, 5, -5, 7, 5,
					-- layer=1 filter=1 channel=56
					-2, -8, 11, 4, 8, -13, -12, -3, -10,
					-- layer=1 filter=1 channel=57
					-4, -11, 6, -13, 8, 1, -15, -1, 8,
					-- layer=1 filter=1 channel=58
					3, -4, 3, 5, -6, -16, 1, 2, 12,
					-- layer=1 filter=1 channel=59
					-12, -4, 6, 5, -17, -3, -11, 8, -8,
					-- layer=1 filter=1 channel=60
					12, -6, 4, 4, -10, 4, -16, 4, -8,
					-- layer=1 filter=1 channel=61
					0, -5, -24, 3, 1, -16, -12, 4, -21,
					-- layer=1 filter=1 channel=62
					4, 8, 0, 0, 6, -3, -13, -15, -13,
					-- layer=1 filter=1 channel=63
					3, 5, -15, -13, 5, -9, 0, -11, -7,
					-- layer=1 filter=2 channel=0
					10, -2, -14, 5, -20, -44, 0, -13, -10,
					-- layer=1 filter=2 channel=1
					-2, 0, 6, -16, -31, -30, -3, -15, -1,
					-- layer=1 filter=2 channel=2
					15, -5, -3, 4, -6, -17, -11, -11, -24,
					-- layer=1 filter=2 channel=3
					12, 20, 29, 20, 15, 33, 3, 12, 33,
					-- layer=1 filter=2 channel=4
					13, 2, 29, 7, -10, 19, 15, 0, 2,
					-- layer=1 filter=2 channel=5
					-1, -11, 5, -16, -32, -29, 2, 5, 1,
					-- layer=1 filter=2 channel=6
					-3, -46, -25, -11, -9, -3, -11, -17, 11,
					-- layer=1 filter=2 channel=7
					-15, -20, -11, -3, 15, 10, -6, -20, -5,
					-- layer=1 filter=2 channel=8
					-9, -6, -5, -6, -10, 3, -8, -15, -8,
					-- layer=1 filter=2 channel=9
					-25, -10, 25, -55, 3, 13, -34, -41, 0,
					-- layer=1 filter=2 channel=10
					12, 7, 8, -3, -10, -23, 3, -6, -16,
					-- layer=1 filter=2 channel=11
					-31, -88, -86, 29, -53, -42, 36, -18, -33,
					-- layer=1 filter=2 channel=12
					-1, -5, -5, 1, -1, 8, 22, 31, 5,
					-- layer=1 filter=2 channel=13
					-18, 23, 18, 1, 29, 19, 26, 22, 24,
					-- layer=1 filter=2 channel=14
					-8, 1, 3, -11, -20, -40, -32, -30, -85,
					-- layer=1 filter=2 channel=15
					23, 1, -29, -11, -38, -42, 15, -39, -52,
					-- layer=1 filter=2 channel=16
					-46, -60, -61, -8, -33, -29, -10, -31, -46,
					-- layer=1 filter=2 channel=17
					-24, 11, 23, -21, 5, -1, -16, 0, 12,
					-- layer=1 filter=2 channel=18
					-32, -25, -35, -5, -16, -16, -11, 0, 7,
					-- layer=1 filter=2 channel=19
					0, 0, 6, -9, 0, -7, -17, 4, -8,
					-- layer=1 filter=2 channel=20
					13, 14, -9, -4, 15, 24, 10, 25, -2,
					-- layer=1 filter=2 channel=21
					-7, -29, 11, -16, 5, 31, 26, 16, 46,
					-- layer=1 filter=2 channel=22
					-34, -60, -26, -88, -64, -38, -88, -75, -36,
					-- layer=1 filter=2 channel=23
					-1, -49, -17, 4, -31, -30, -16, -71, -34,
					-- layer=1 filter=2 channel=24
					-8, -5, -6, 0, -25, -26, 4, 3, -13,
					-- layer=1 filter=2 channel=25
					-42, -45, -70, -8, -33, -28, 29, 24, 8,
					-- layer=1 filter=2 channel=26
					-2, -21, -28, 7, -13, 7, -4, -4, -10,
					-- layer=1 filter=2 channel=27
					12, 10, -1, -9, 12, 9, -8, 11, 13,
					-- layer=1 filter=2 channel=28
					5, -9, 7, 16, 29, 41, 52, 26, 52,
					-- layer=1 filter=2 channel=29
					0, 9, -3, 7, -2, 8, 17, 8, -7,
					-- layer=1 filter=2 channel=30
					12, -14, 23, -11, 8, 5, -5, -15, 2,
					-- layer=1 filter=2 channel=31
					7, 6, 1, 0, 8, -6, 8, -13, -10,
					-- layer=1 filter=2 channel=32
					4, -10, -37, -33, -37, -68, -15, -19, -39,
					-- layer=1 filter=2 channel=33
					-33, -16, -6, -31, -17, -33, -5, -25, -11,
					-- layer=1 filter=2 channel=34
					-71, -109, -97, -38, -48, -43, 32, 36, -6,
					-- layer=1 filter=2 channel=35
					14, 6, 23, 0, 5, 10, -2, 4, -9,
					-- layer=1 filter=2 channel=36
					21, 24, 7, 17, 36, 1, 31, 19, -8,
					-- layer=1 filter=2 channel=37
					-82, -74, -124, -17, -42, -49, 25, 36, -2,
					-- layer=1 filter=2 channel=38
					15, 7, 14, 16, 16, -11, 4, -4, 12,
					-- layer=1 filter=2 channel=39
					18, -7, 6, 0, -4, -54, 13, -60, -24,
					-- layer=1 filter=2 channel=40
					0, -17, 30, -11, -5, 3, -70, -55, -48,
					-- layer=1 filter=2 channel=41
					10, -8, 11, -7, -7, 9, -10, -17, -15,
					-- layer=1 filter=2 channel=42
					11, -33, -12, -16, -11, -31, -5, -57, -41,
					-- layer=1 filter=2 channel=43
					-83, -62, -53, -41, -29, -39, 14, 11, 7,
					-- layer=1 filter=2 channel=44
					-28, -33, 1, 13, -34, 0, 47, 25, -11,
					-- layer=1 filter=2 channel=45
					-63, -63, -55, -31, -62, -48, -3, -14, 31,
					-- layer=1 filter=2 channel=46
					-41, -54, -28, -46, -61, -48, -34, -49, -44,
					-- layer=1 filter=2 channel=47
					-60, -64, -99, -47, -54, -67, 37, 19, 23,
					-- layer=1 filter=2 channel=48
					-17, 19, 11, -12, 7, -9, 4, 24, 5,
					-- layer=1 filter=2 channel=49
					6, -28, -3, 4, -19, -40, 4, -47, -40,
					-- layer=1 filter=2 channel=50
					1, 17, -2, -6, -1, -2, -9, 3, 27,
					-- layer=1 filter=2 channel=51
					19, 22, 23, 14, 10, 18, -7, 19, 21,
					-- layer=1 filter=2 channel=52
					-109, -97, -149, -51, -50, -72, 53, -1, 3,
					-- layer=1 filter=2 channel=53
					11, -57, 46, -24, -33, 40, -77, -72, -8,
					-- layer=1 filter=2 channel=54
					-8, 15, 7, -19, 6, -7, -10, 12, 12,
					-- layer=1 filter=2 channel=55
					-1, 5, 17, -17, 3, 0, 0, 10, -3,
					-- layer=1 filter=2 channel=56
					26, 6, 17, 16, -1, -9, -8, -13, 0,
					-- layer=1 filter=2 channel=57
					12, -12, 2, -1, -19, 8, -14, -12, -2,
					-- layer=1 filter=2 channel=58
					-19, -22, -17, -27, -36, -23, -10, 20, -2,
					-- layer=1 filter=2 channel=59
					-15, -50, 30, -87, -28, 11, -79, -91, 23,
					-- layer=1 filter=2 channel=60
					-96, -85, -54, -5, -7, 12, 75, 35, 11,
					-- layer=1 filter=2 channel=61
					-16, -79, -2, -163, -86, -43, -147, -150, -43,
					-- layer=1 filter=2 channel=62
					-42, -55, 8, -52, -18, -2, 17, -9, 48,
					-- layer=1 filter=2 channel=63
					-63, -70, -18, -48, -59, -32, -63, -43, -51,
					-- layer=1 filter=3 channel=0
					-44, -55, -83, -30, -88, -106, -43, -59, -34,
					-- layer=1 filter=3 channel=1
					0, -33, -69, 27, -90, -41, -17, -49, 0,
					-- layer=1 filter=3 channel=2
					-46, 10, -77, 49, -92, -90, 27, -46, -6,
					-- layer=1 filter=3 channel=3
					-9, 9, -30, -17, 2, -34, 8, 0, 2,
					-- layer=1 filter=3 channel=4
					30, -15, -11, -24, -60, 33, -11, 37, 16,
					-- layer=1 filter=3 channel=5
					-18, -33, -2, -62, 16, -1, -26, 18, 2,
					-- layer=1 filter=3 channel=6
					11, -55, -58, -34, -38, -49, -18, -9, -14,
					-- layer=1 filter=3 channel=7
					22, 13, 4, 6, -19, 2, -10, -32, 23,
					-- layer=1 filter=3 channel=8
					8, -23, -12, 5, -29, -20, -17, -45, -5,
					-- layer=1 filter=3 channel=9
					4, 23, -39, 22, -2, -15, 2, -55, 2,
					-- layer=1 filter=3 channel=10
					-31, -34, -48, -17, -85, -44, -57, -18, -10,
					-- layer=1 filter=3 channel=11
					25, 10, 47, 4, 67, 39, 57, 39, 4,
					-- layer=1 filter=3 channel=12
					28, -34, -16, -45, 12, 11, 1, 26, -1,
					-- layer=1 filter=3 channel=13
					1, 6, -9, -13, 4, 12, 7, 2, 15,
					-- layer=1 filter=3 channel=14
					-59, -31, -83, 14, -88, -114, 11, -37, -36,
					-- layer=1 filter=3 channel=15
					33, -33, 0, -34, 14, 28, 32, 60, -11,
					-- layer=1 filter=3 channel=16
					37, 8, 2, -9, -35, 31, -16, -2, -17,
					-- layer=1 filter=3 channel=17
					6, 24, -19, 24, -35, -6, -6, -35, 47,
					-- layer=1 filter=3 channel=18
					0, -97, -43, -78, -36, -46, -28, -1, 5,
					-- layer=1 filter=3 channel=19
					36, -21, -54, 20, -72, -13, -8, 22, 18,
					-- layer=1 filter=3 channel=20
					21, -29, -25, -36, -50, 44, -16, 37, -8,
					-- layer=1 filter=3 channel=21
					14, 11, -25, 14, -14, -9, 18, -14, 1,
					-- layer=1 filter=3 channel=22
					2, 61, -16, 87, 8, -22, 60, -3, 20,
					-- layer=1 filter=3 channel=23
					18, -7, -9, -14, 23, -6, 19, 21, -15,
					-- layer=1 filter=3 channel=24
					10, -16, -67, 38, -57, 3, 3, 1, 11,
					-- layer=1 filter=3 channel=25
					47, -67, 7, -64, -58, 7, 7, 29, 18,
					-- layer=1 filter=3 channel=26
					4, -56, -25, -46, -76, -29, 1, -24, -10,
					-- layer=1 filter=3 channel=27
					-3, 26, -2, 44, -1, -1, 17, 9, 28,
					-- layer=1 filter=3 channel=28
					3, 24, 5, 24, 45, 23, 21, 7, 35,
					-- layer=1 filter=3 channel=29
					20, -8, -10, 23, -53, 8, -14, 3, 38,
					-- layer=1 filter=3 channel=30
					-3, -20, -11, -25, 28, -23, -2, -7, 16,
					-- layer=1 filter=3 channel=31
					-2, 10, 13, 0, 8, 0, -6, 12, 4,
					-- layer=1 filter=3 channel=32
					124, -43, -24, 2, -67, 18, -11, 15, -34,
					-- layer=1 filter=3 channel=33
					31, 3, -65, 71, -94, -5, -12, 1, 15,
					-- layer=1 filter=3 channel=34
					68, -114, 25, -60, 57, 50, 37, 76, 33,
					-- layer=1 filter=3 channel=35
					13, 0, -34, 46, -24, -20, -10, -3, 21,
					-- layer=1 filter=3 channel=36
					19, -17, 1, -3, -46, 24, -29, 31, 14,
					-- layer=1 filter=3 channel=37
					41, -49, -27, -28, -59, 25, 0, 50, 29,
					-- layer=1 filter=3 channel=38
					13, -7, -62, -16, -29, -14, -43, -25, -14,
					-- layer=1 filter=3 channel=39
					0, -22, 4, -43, -31, 18, -27, 5, -12,
					-- layer=1 filter=3 channel=40
					-16, 49, -33, 65, 7, -18, 40, -8, 31,
					-- layer=1 filter=3 channel=41
					15, -24, -26, -11, -19, -4, -39, -25, -2,
					-- layer=1 filter=3 channel=42
					-24, 3, -18, 3, -18, -94, -3, 10, -68,
					-- layer=1 filter=3 channel=43
					22, -80, -53, -54, -25, -32, -17, 3, 6,
					-- layer=1 filter=3 channel=44
					42, -49, -28, -17, -8, 68, 24, 76, 16,
					-- layer=1 filter=3 channel=45
					0, -49, -65, -64, -55, -54, -36, 6, -8,
					-- layer=1 filter=3 channel=46
					-13, -27, -21, -70, -30, 7, -58, -9, 13,
					-- layer=1 filter=3 channel=47
					50, -89, 4, -74, -31, 12, 13, 31, 24,
					-- layer=1 filter=3 channel=48
					0, -10, -1, -16, -25, 38, -14, -2, 29,
					-- layer=1 filter=3 channel=49
					27, -2, 7, -23, -9, 14, -1, 30, -9,
					-- layer=1 filter=3 channel=50
					2, -11, 2, -12, -21, -6, -10, 2, -12,
					-- layer=1 filter=3 channel=51
					27, 13, -9, 1, -19, 9, 0, 26, 27,
					-- layer=1 filter=3 channel=52
					40, -81, 50, -14, 84, 66, 55, 80, 68,
					-- layer=1 filter=3 channel=53
					-23, 61, -11, 26, 59, 43, 51, 29, 61,
					-- layer=1 filter=3 channel=54
					-3, -20, 0, -18, -32, -11, -11, 0, 0,
					-- layer=1 filter=3 channel=55
					-16, -1, -61, -41, 10, -31, -26, -34, -15,
					-- layer=1 filter=3 channel=56
					-24, -8, 13, 3, -20, -4, -41, -6, 7,
					-- layer=1 filter=3 channel=57
					35, -28, -31, 20, -66, 21, -14, 8, 19,
					-- layer=1 filter=3 channel=58
					23, -56, -18, -36, -18, 11, -3, 0, 20,
					-- layer=1 filter=3 channel=59
					-11, 12, -21, 32, 4, -25, -19, -79, -3,
					-- layer=1 filter=3 channel=60
					21, -136, -107, -71, -2, -5, 82, 50, 37,
					-- layer=1 filter=3 channel=61
					4, 74, 21, 53, 12, 2, 30, -47, 15,
					-- layer=1 filter=3 channel=62
					-7, -29, -46, -57, -40, -77, -20, -27, -15,
					-- layer=1 filter=3 channel=63
					-11, 24, -43, 29, 0, -51, 24, -64, -10,
					-- layer=1 filter=4 channel=0
					16, 56, 33, -10, -18, -35, -54, -18, -30,
					-- layer=1 filter=4 channel=1
					-10, 4, 11, -9, 12, -2, -20, -36, -24,
					-- layer=1 filter=4 channel=2
					34, 53, 26, -22, -7, -6, -28, -20, -25,
					-- layer=1 filter=4 channel=3
					-16, -20, -52, -12, -10, -47, 10, -8, 1,
					-- layer=1 filter=4 channel=4
					31, 7, 7, 8, 3, -27, -3, -37, -54,
					-- layer=1 filter=4 channel=5
					-56, -38, -42, -24, 6, 8, 34, 43, 44,
					-- layer=1 filter=4 channel=6
					-26, -4, -4, -9, -7, -27, -41, -34, -43,
					-- layer=1 filter=4 channel=7
					41, 35, 16, 1, -20, 11, -34, -51, -11,
					-- layer=1 filter=4 channel=8
					16, 18, 27, -29, -8, -18, -36, -50, -2,
					-- layer=1 filter=4 channel=9
					-43, -26, -15, -19, 6, 36, 21, 58, 50,
					-- layer=1 filter=4 channel=10
					22, 33, 10, 18, 5, 7, -20, -4, -35,
					-- layer=1 filter=4 channel=11
					-26, -7, -36, -25, -23, -62, -49, -69, -63,
					-- layer=1 filter=4 channel=12
					-44, -42, -41, -19, -35, -34, -12, -6, 14,
					-- layer=1 filter=4 channel=13
					-70, -40, -23, -24, 7, 10, 29, 23, 44,
					-- layer=1 filter=4 channel=14
					24, 23, 10, -4, -1, -10, -14, 13, -3,
					-- layer=1 filter=4 channel=15
					62, 70, 58, 25, 44, 47, -2, 10, 37,
					-- layer=1 filter=4 channel=16
					0, 13, -12, 11, 15, 10, -14, -7, -44,
					-- layer=1 filter=4 channel=17
					-34, 18, 6, -9, 15, 31, 5, 8, 31,
					-- layer=1 filter=4 channel=18
					-13, 5, -3, -21, -28, -28, -16, -26, -11,
					-- layer=1 filter=4 channel=19
					11, 15, 18, 10, 20, 2, -12, -6, -32,
					-- layer=1 filter=4 channel=20
					30, 14, 14, 31, 22, 8, 18, 12, 6,
					-- layer=1 filter=4 channel=21
					-21, 21, -14, -25, -16, -8, -22, -8, -20,
					-- layer=1 filter=4 channel=22
					-35, -7, -37, -50, 7, 10, -16, 26, 4,
					-- layer=1 filter=4 channel=23
					-57, -62, -90, -45, -15, -13, -33, -10, 21,
					-- layer=1 filter=4 channel=24
					-6, 7, 24, 7, -2, 13, -9, 12, -2,
					-- layer=1 filter=4 channel=25
					-13, 7, -26, 1, -14, -16, 31, 9, 22,
					-- layer=1 filter=4 channel=26
					33, 26, -3, -9, -1, -14, -25, -62, -63,
					-- layer=1 filter=4 channel=27
					4, 33, 13, -4, 17, 0, -1, -33, -1,
					-- layer=1 filter=4 channel=28
					-28, -1, -17, -34, -28, 5, -16, -20, 0,
					-- layer=1 filter=4 channel=29
					10, 17, 8, 19, 14, -2, 0, -9, -41,
					-- layer=1 filter=4 channel=30
					-48, -62, -62, -39, 6, 8, 12, 27, 45,
					-- layer=1 filter=4 channel=31
					-3, 2, 3, 10, 8, -11, 10, -8, -10,
					-- layer=1 filter=4 channel=32
					-61, -86, -82, -24, -29, -74, -55, -41, -82,
					-- layer=1 filter=4 channel=33
					2, -2, 4, -1, 30, 17, -3, -3, -9,
					-- layer=1 filter=4 channel=34
					16, -5, 10, 14, -5, -26, -22, -35, 9,
					-- layer=1 filter=4 channel=35
					17, 17, 22, -7, -11, 7, -29, -25, -33,
					-- layer=1 filter=4 channel=36
					-32, -24, -26, -12, -12, 0, -10, -7, 0,
					-- layer=1 filter=4 channel=37
					24, 4, 25, 50, 31, 23, 35, 22, -19,
					-- layer=1 filter=4 channel=38
					-8, 5, -17, 7, -15, 34, -10, -3, 8,
					-- layer=1 filter=4 channel=39
					0, -25, -51, -7, -12, -5, 2, -4, 0,
					-- layer=1 filter=4 channel=40
					-4, -12, -7, -28, 13, 13, 1, 38, 29,
					-- layer=1 filter=4 channel=41
					-23, -50, -36, -21, -15, 14, 15, 31, 33,
					-- layer=1 filter=4 channel=42
					29, 56, 5, 0, -27, -38, -58, 3, -25,
					-- layer=1 filter=4 channel=43
					-11, 43, 14, 20, -11, 29, -7, 5, -2,
					-- layer=1 filter=4 channel=44
					14, 9, -11, 26, 0, 0, -14, 28, -21,
					-- layer=1 filter=4 channel=45
					-17, 54, 5, 36, 52, 9, 7, 27, 4,
					-- layer=1 filter=4 channel=46
					-61, -90, -61, -17, 47, 43, 42, 100, 95,
					-- layer=1 filter=4 channel=47
					8, -9, 3, 22, 8, 0, 15, 15, 14,
					-- layer=1 filter=4 channel=48
					-51, -63, -65, 8, 7, -8, 37, 51, 56,
					-- layer=1 filter=4 channel=49
					43, 54, 26, 34, 33, 38, 22, 41, 11,
					-- layer=1 filter=4 channel=50
					-52, -64, -42, -15, 4, 14, 13, 30, 43,
					-- layer=1 filter=4 channel=51
					-7, 18, 9, 0, 16, -3, 22, 1, -4,
					-- layer=1 filter=4 channel=52
					42, 38, 63, 88, 47, 48, 30, 50, 29,
					-- layer=1 filter=4 channel=53
					9, 47, 35, -28, 26, 49, -16, 0, 9,
					-- layer=1 filter=4 channel=54
					-56, -68, -73, -31, -19, -1, 23, 25, 38,
					-- layer=1 filter=4 channel=55
					-63, -47, -51, -55, 3, 35, -26, 25, 9,
					-- layer=1 filter=4 channel=56
					40, 46, 35, 12, 5, -5, -29, -11, -36,
					-- layer=1 filter=4 channel=57
					17, 23, 9, 11, 13, -10, -4, -12, -43,
					-- layer=1 filter=4 channel=58
					-17, -4, -11, 13, 4, -12, 30, 24, 13,
					-- layer=1 filter=4 channel=59
					-13, 10, 29, -10, 53, 30, 17, -1, 25,
					-- layer=1 filter=4 channel=60
					26, 13, 35, -7, -26, -12, 43, 56, 51,
					-- layer=1 filter=4 channel=61
					-23, 47, 4, -21, 12, 33, -17, 25, 20,
					-- layer=1 filter=4 channel=62
					-3, 33, 1, -14, -3, -1, -3, 4, -10,
					-- layer=1 filter=4 channel=63
					-39, -82, -87, -32, 0, 0, 18, 63, 52,
					-- layer=1 filter=5 channel=0
					-36, -6, 6, 23, 15, 7, -48, 5, -9,
					-- layer=1 filter=5 channel=1
					8, -22, 8, 14, 25, 2, 8, 3, 2,
					-- layer=1 filter=5 channel=2
					-31, -7, 16, 27, -3, 13, -17, 45, 36,
					-- layer=1 filter=5 channel=3
					4, -3, 2, 5, -16, -15, -17, -5, 3,
					-- layer=1 filter=5 channel=4
					3, -18, 1, -10, 17, -10, -33, -1, -34,
					-- layer=1 filter=5 channel=5
					-1, -1, 0, -27, 3, 19, -18, -49, 2,
					-- layer=1 filter=5 channel=6
					28, 25, 10, -36, 46, 24, 22, -21, 6,
					-- layer=1 filter=5 channel=7
					-7, -4, -15, 12, 3, -8, 24, 29, -11,
					-- layer=1 filter=5 channel=8
					13, 1, -31, -12, 13, -6, 31, -8, -24,
					-- layer=1 filter=5 channel=9
					13, 19, -7, -16, -8, -4, 11, -45, -42,
					-- layer=1 filter=5 channel=10
					-8, 4, 22, 21, 25, 2, -35, 26, 19,
					-- layer=1 filter=5 channel=11
					-12, 1, 1, -22, 0, -6, 6, -9, 22,
					-- layer=1 filter=5 channel=12
					-17, -2, -2, -37, -20, 13, 3, -14, -23,
					-- layer=1 filter=5 channel=13
					-5, 4, 5, -9, -9, 3, -3, 8, 2,
					-- layer=1 filter=5 channel=14
					16, 27, 49, 56, 31, 58, 19, 84, 86,
					-- layer=1 filter=5 channel=15
					8, -22, -10, 1, -17, -17, 4, 46, -11,
					-- layer=1 filter=5 channel=16
					-36, 17, -7, -26, -12, -12, -23, -37, -25,
					-- layer=1 filter=5 channel=17
					15, -2, -8, -21, -17, 3, 8, -38, -22,
					-- layer=1 filter=5 channel=18
					6, 20, 4, -38, 33, 20, -9, -56, 0,
					-- layer=1 filter=5 channel=19
					-10, 17, 24, -12, 0, 4, 2, -36, -17,
					-- layer=1 filter=5 channel=20
					-3, -8, -8, 2, -11, -38, -43, 18, -26,
					-- layer=1 filter=5 channel=21
					12, 25, 4, -21, 41, 37, 29, 19, 0,
					-- layer=1 filter=5 channel=22
					-43, 10, -10, -28, -49, 16, -15, -19, -1,
					-- layer=1 filter=5 channel=23
					-6, 19, 40, 24, 15, 28, -16, 38, -5,
					-- layer=1 filter=5 channel=24
					-4, -9, 16, 5, 12, 21, -15, -3, -13,
					-- layer=1 filter=5 channel=25
					27, 4, 10, 2, 24, 6, 5, -26, -11,
					-- layer=1 filter=5 channel=26
					7, 11, 23, -35, -34, -17, -33, -46, -31,
					-- layer=1 filter=5 channel=27
					-5, 1, 10, 16, 16, -18, 11, 11, -20,
					-- layer=1 filter=5 channel=28
					1, 4, -13, -4, 12, 2, 44, -1, 11,
					-- layer=1 filter=5 channel=29
					2, 7, 13, 7, 8, -11, -18, -17, -10,
					-- layer=1 filter=5 channel=30
					-4, 4, 13, -7, -4, 6, -31, -28, 1,
					-- layer=1 filter=5 channel=31
					0, 7, -15, -7, -11, 2, -7, -15, 5,
					-- layer=1 filter=5 channel=32
					-11, -29, -22, -41, -48, -46, -23, -20, -18,
					-- layer=1 filter=5 channel=33
					23, 14, 42, 0, 15, 27, -13, -5, -4,
					-- layer=1 filter=5 channel=34
					16, 14, 13, -28, -6, 4, 4, -17, -10,
					-- layer=1 filter=5 channel=35
					-26, -25, -11, 7, -4, 0, 0, 13, -4,
					-- layer=1 filter=5 channel=36
					14, -6, 19, -7, 9, 4, -24, 1, 5,
					-- layer=1 filter=5 channel=37
					-20, 10, -21, -20, -3, 0, -35, -28, -22,
					-- layer=1 filter=5 channel=38
					6, 0, 27, 1, -14, 21, -45, -3, -7,
					-- layer=1 filter=5 channel=39
					2, 16, 17, 3, 29, 25, -33, 48, 12,
					-- layer=1 filter=5 channel=40
					-29, -15, -7, -27, -51, 5, -20, -9, -3,
					-- layer=1 filter=5 channel=41
					-10, -11, 13, 3, 13, -7, -16, -8, 6,
					-- layer=1 filter=5 channel=42
					12, 4, 44, 32, 46, 30, -11, 85, 38,
					-- layer=1 filter=5 channel=43
					13, 62, 10, 3, 50, 47, 52, 29, 2,
					-- layer=1 filter=5 channel=44
					-8, 2, -2, -52, -51, -42, -48, -18, -34,
					-- layer=1 filter=5 channel=45
					26, 48, 13, 9, 67, 65, 30, -12, -11,
					-- layer=1 filter=5 channel=46
					3, 21, 43, -2, 7, 44, 3, -23, 12,
					-- layer=1 filter=5 channel=47
					-1, 8, -10, -15, -7, 8, -18, -33, -11,
					-- layer=1 filter=5 channel=48
					25, 9, 38, -9, 10, 24, -20, -15, -13,
					-- layer=1 filter=5 channel=49
					19, -21, 0, 16, 7, -27, -23, 24, -28,
					-- layer=1 filter=5 channel=50
					5, 20, 16, -10, 22, 29, -5, -26, 4,
					-- layer=1 filter=5 channel=51
					0, 8, 10, 1, 0, 2, -26, -19, -13,
					-- layer=1 filter=5 channel=52
					55, 43, 45, -13, 10, 21, 26, 50, 50,
					-- layer=1 filter=5 channel=53
					-39, -31, -76, -111, -102, -74, -28, -70, -30,
					-- layer=1 filter=5 channel=54
					4, 15, 14, -3, 2, 23, -19, -25, 2,
					-- layer=1 filter=5 channel=55
					-12, 35, 25, -1, -24, 33, -12, 12, -2,
					-- layer=1 filter=5 channel=56
					-6, -19, -5, -12, 26, -29, 3, 14, -29,
					-- layer=1 filter=5 channel=57
					-1, 11, 16, 3, -10, -8, -25, -14, -31,
					-- layer=1 filter=5 channel=58
					2, -2, -2, -33, -19, 5, -16, -49, -27,
					-- layer=1 filter=5 channel=59
					33, 11, 17, -49, 8, -22, 28, -18, -19,
					-- layer=1 filter=5 channel=60
					85, 99, 113, 103, 132, 164, 27, 93, 96,
					-- layer=1 filter=5 channel=61
					-9, -17, -40, -57, -31, -10, 40, -21, -16,
					-- layer=1 filter=5 channel=62
					41, 55, -3, -12, 51, 33, 69, 15, 21,
					-- layer=1 filter=5 channel=63
					-3, 22, -2, -10, -23, 19, -35, -23, -9,
					-- layer=1 filter=6 channel=0
					-2, 13, 28, 18, 9, -11, 18, 18, -15,
					-- layer=1 filter=6 channel=1
					18, 11, 15, 4, -33, -13, 9, -19, 7,
					-- layer=1 filter=6 channel=2
					23, 6, 36, 10, 22, -5, -26, 16, -9,
					-- layer=1 filter=6 channel=3
					0, 22, 35, -39, -27, -48, -29, -3, -9,
					-- layer=1 filter=6 channel=4
					21, 20, -7, -14, -15, 7, 4, 0, 6,
					-- layer=1 filter=6 channel=5
					-18, -1, 0, -7, -20, 1, 14, 26, 28,
					-- layer=1 filter=6 channel=6
					-36, -52, -24, 7, -2, 20, 22, -1, 4,
					-- layer=1 filter=6 channel=7
					1, 8, 11, -7, 24, 5, 7, 10, -17,
					-- layer=1 filter=6 channel=8
					8, 1, -3, 5, 10, -6, -1, -19, -19,
					-- layer=1 filter=6 channel=9
					8, -6, -19, -22, -26, -33, -28, -11, -5,
					-- layer=1 filter=6 channel=10
					13, 7, 16, -15, -32, -36, -8, -25, 21,
					-- layer=1 filter=6 channel=11
					0, -47, -39, 14, 6, 31, 4, -9, 15,
					-- layer=1 filter=6 channel=12
					1, 17, 12, 0, -14, -7, 2, 6, -3,
					-- layer=1 filter=6 channel=13
					14, -14, -25, 4, 11, -4, 42, 11, 27,
					-- layer=1 filter=6 channel=14
					41, 35, 53, 28, 48, 19, 39, 39, 52,
					-- layer=1 filter=6 channel=15
					53, 24, -21, 33, 6, 1, 20, -50, -31,
					-- layer=1 filter=6 channel=16
					-22, -56, -60, 9, 6, -6, 37, 17, 30,
					-- layer=1 filter=6 channel=17
					26, 24, 11, -18, 0, -27, -5, -7, -5,
					-- layer=1 filter=6 channel=18
					-29, -30, -30, -12, -14, 15, -10, 4, -13,
					-- layer=1 filter=6 channel=19
					11, -2, -15, -8, -31, -19, 11, -2, 2,
					-- layer=1 filter=6 channel=20
					22, 23, -19, -17, 1, -9, 1, -19, 18,
					-- layer=1 filter=6 channel=21
					-39, -35, 22, -6, 7, 31, 5, -11, -2,
					-- layer=1 filter=6 channel=22
					1, 7, 16, -31, 4, -37, -62, -10, -4,
					-- layer=1 filter=6 channel=23
					6, -15, -17, -24, -35, -56, -29, -49, -67,
					-- layer=1 filter=6 channel=24
					26, -6, -20, -17, -44, -20, 24, 3, 17,
					-- layer=1 filter=6 channel=25
					-22, -33, -49, 13, 22, 19, 16, 20, 0,
					-- layer=1 filter=6 channel=26
					-33, -64, -63, -11, -4, 5, 13, -6, 0,
					-- layer=1 filter=6 channel=27
					-6, -9, 0, 17, 17, 2, -5, 10, -9,
					-- layer=1 filter=6 channel=28
					-5, -25, 12, 3, 23, 22, 23, 28, 21,
					-- layer=1 filter=6 channel=29
					-7, -8, -26, -11, 0, 2, 28, -4, 0,
					-- layer=1 filter=6 channel=30
					5, 3, -10, -40, -21, -33, 34, 7, -4,
					-- layer=1 filter=6 channel=31
					0, -4, -6, 12, -7, -8, 10, -4, -15,
					-- layer=1 filter=6 channel=32
					130, 74, 77, 42, -45, -28, -26, -68, -67,
					-- layer=1 filter=6 channel=33
					26, -4, -30, 13, -38, -19, 27, -22, 1,
					-- layer=1 filter=6 channel=34
					-2, -29, 14, 11, 52, 46, -9, 16, 5,
					-- layer=1 filter=6 channel=35
					17, 13, 9, -10, -8, -26, -34, -31, -32,
					-- layer=1 filter=6 channel=36
					48, 64, -5, 9, -4, -33, 28, 0, 7,
					-- layer=1 filter=6 channel=37
					-8, -43, -32, 8, 47, 40, 32, 35, 12,
					-- layer=1 filter=6 channel=38
					18, 2, -3, -12, -22, -36, 16, 10, -18,
					-- layer=1 filter=6 channel=39
					18, 16, -43, -3, -74, -60, -16, -88, -41,
					-- layer=1 filter=6 channel=40
					23, 41, 11, -11, 0, -15, -50, -24, -1,
					-- layer=1 filter=6 channel=41
					4, 22, 15, -47, -25, -55, -10, 11, 0,
					-- layer=1 filter=6 channel=42
					17, 0, 16, 3, -8, 2, 0, 3, -29,
					-- layer=1 filter=6 channel=43
					-48, -70, -5, 27, 40, 33, 34, 12, 17,
					-- layer=1 filter=6 channel=44
					48, 8, -47, 6, 39, 6, -11, 10, 26,
					-- layer=1 filter=6 channel=45
					-37, -27, 42, -1, 20, 20, 49, 30, 14,
					-- layer=1 filter=6 channel=46
					-16, -30, -45, -23, -54, -65, 74, 72, 41,
					-- layer=1 filter=6 channel=47
					9, -42, -27, 7, 50, 27, 45, 12, 23,
					-- layer=1 filter=6 channel=48
					-14, -35, -51, -21, -31, -22, 47, 25, 2,
					-- layer=1 filter=6 channel=49
					39, 11, -42, 10, -30, -11, -2, -54, -16,
					-- layer=1 filter=6 channel=50
					10, 19, -13, -18, -15, -33, 10, 30, 5,
					-- layer=1 filter=6 channel=51
					23, 21, -13, 10, -17, -20, 23, 9, 13,
					-- layer=1 filter=6 channel=52
					-1, -77, -34, 35, 52, 55, 37, 26, 45,
					-- layer=1 filter=6 channel=53
					3, 51, 34, -40, 25, 8, -54, -32, 12,
					-- layer=1 filter=6 channel=54
					0, 26, 7, -11, -14, -43, 3, 14, 12,
					-- layer=1 filter=6 channel=55
					10, -32, -22, -42, 6, -6, 39, 9, -1,
					-- layer=1 filter=6 channel=56
					8, 23, 13, 20, 5, 7, 4, -5, 5,
					-- layer=1 filter=6 channel=57
					10, 9, 4, -2, -5, 17, -5, -5, 21,
					-- layer=1 filter=6 channel=58
					-19, -46, -29, -22, -10, -15, 30, 31, 37,
					-- layer=1 filter=6 channel=59
					8, 44, 34, 23, 24, 0, -7, -41, 7,
					-- layer=1 filter=6 channel=60
					21, -14, 6, 91, 82, 66, 5, 23, 15,
					-- layer=1 filter=6 channel=61
					14, 32, 25, -22, -5, -42, -52, -57, -31,
					-- layer=1 filter=6 channel=62
					-37, -11, 24, 21, 6, 19, 33, -3, 4,
					-- layer=1 filter=6 channel=63
					-40, -32, -60, -70, -81, -77, -37, -14, -3,
					-- layer=1 filter=7 channel=0
					23, 8, -10, 28, 14, 25, 31, 5, 38,
					-- layer=1 filter=7 channel=1
					-21, -5, -13, -13, -6, -10, -35, -20, -16,
					-- layer=1 filter=7 channel=2
					37, 25, 10, 59, 51, 63, 45, 67, 65,
					-- layer=1 filter=7 channel=3
					3, 10, 2, 30, 23, 36, 7, 37, 13,
					-- layer=1 filter=7 channel=4
					16, -4, -1, 11, 11, 1, 4, -7, -4,
					-- layer=1 filter=7 channel=5
					17, -1, -3, -5, -17, -12, -8, -21, 6,
					-- layer=1 filter=7 channel=6
					-10, -28, -8, 0, 19, 6, -12, -16, 16,
					-- layer=1 filter=7 channel=7
					-16, -4, -16, 15, -4, 2, 7, -16, -12,
					-- layer=1 filter=7 channel=8
					-20, -7, 1, 2, 4, -26, -22, -28, -31,
					-- layer=1 filter=7 channel=9
					-22, 0, 15, -52, -47, -10, -58, -40, 0,
					-- layer=1 filter=7 channel=10
					7, -20, -8, -6, -10, 3, -10, -27, -23,
					-- layer=1 filter=7 channel=11
					-35, -39, -45, 11, -44, -26, 24, 11, -10,
					-- layer=1 filter=7 channel=12
					-3, -10, -5, 16, 26, 16, 11, 13, 19,
					-- layer=1 filter=7 channel=13
					-11, 22, 18, 15, 27, 11, 14, 28, 14,
					-- layer=1 filter=7 channel=14
					54, 12, -10, 55, 65, 70, 45, 69, 38,
					-- layer=1 filter=7 channel=15
					-63, -112, -82, -55, -154, -132, -22, -87, -90,
					-- layer=1 filter=7 channel=16
					-16, -44, -49, 22, -19, -12, -5, 10, 3,
					-- layer=1 filter=7 channel=17
					-17, 0, -1, -6, 10, 0, -3, -18, 5,
					-- layer=1 filter=7 channel=18
					-1, -28, -15, -24, -26, -17, -23, -4, 4,
					-- layer=1 filter=7 channel=19
					5, -2, -1, -20, -24, -28, -7, -9, -14,
					-- layer=1 filter=7 channel=20
					-7, 0, -26, 8, -21, -4, -13, -16, -20,
					-- layer=1 filter=7 channel=21
					0, -16, 15, -20, -6, 23, 12, 1, 27,
					-- layer=1 filter=7 channel=22
					-35, -9, -34, -1, -20, 19, -41, -23, 18,
					-- layer=1 filter=7 channel=23
					-32, -116, -47, -40, -60, -77, -48, -57, -58,
					-- layer=1 filter=7 channel=24
					-17, -4, -8, -27, -8, -29, -33, -20, -24,
					-- layer=1 filter=7 channel=25
					-17, 11, -13, 49, 20, 14, 15, 42, 33,
					-- layer=1 filter=7 channel=26
					-38, -40, -54, -6, -38, -20, -22, -9, -20,
					-- layer=1 filter=7 channel=27
					-4, 16, -11, 10, 4, 13, 4, 11, -10,
					-- layer=1 filter=7 channel=28
					34, 0, 5, 43, 29, 18, 55, 56, 41,
					-- layer=1 filter=7 channel=29
					-2, 11, -13, -5, -3, 7, 4, 0, 7,
					-- layer=1 filter=7 channel=30
					5, 10, 3, -7, -16, -28, 1, -15, -2,
					-- layer=1 filter=7 channel=31
					-1, -13, -1, 0, -1, 10, -2, 7, -12,
					-- layer=1 filter=7 channel=32
					-19, -30, -10, -25, -46, -37, -35, -29, -60,
					-- layer=1 filter=7 channel=33
					-42, -14, -14, -15, -26, -17, -29, -27, -21,
					-- layer=1 filter=7 channel=34
					5, -5, 9, -4, -7, -6, 19, 28, -2,
					-- layer=1 filter=7 channel=35
					23, 15, -6, 34, 36, 28, 34, 31, 19,
					-- layer=1 filter=7 channel=36
					2, 1, -5, 7, -3, -22, 23, 4, 3,
					-- layer=1 filter=7 channel=37
					3, -37, -43, 19, -1, 15, 30, 26, 30,
					-- layer=1 filter=7 channel=38
					-3, -13, -38, 3, 0, -8, 27, 22, 23,
					-- layer=1 filter=7 channel=39
					-24, -98, -37, -27, -36, -65, -14, -76, -87,
					-- layer=1 filter=7 channel=40
					22, 16, 17, 11, 14, 36, 0, 9, 20,
					-- layer=1 filter=7 channel=41
					-7, 9, -10, -18, 15, -15, -11, -2, -2,
					-- layer=1 filter=7 channel=42
					2, -35, -17, 0, -2, 7, 4, -27, -5,
					-- layer=1 filter=7 channel=43
					-24, -36, -18, 27, 10, 0, 12, 22, 26,
					-- layer=1 filter=7 channel=44
					-34, -46, -8, 4, -59, -7, 0, -2, -10,
					-- layer=1 filter=7 channel=45
					-43, -54, -18, 19, 18, -7, -18, -10, 26,
					-- layer=1 filter=7 channel=46
					-30, -39, -36, -59, -69, -70, -68, -87, -64,
					-- layer=1 filter=7 channel=47
					0, -16, -15, 42, -13, 14, 5, 23, 30,
					-- layer=1 filter=7 channel=48
					-6, 1, 16, -33, -22, -5, -22, -12, -8,
					-- layer=1 filter=7 channel=49
					-57, -126, -90, -65, -152, -106, -61, -130, -101,
					-- layer=1 filter=7 channel=50
					6, 14, 7, 9, 8, 11, 10, 6, 10,
					-- layer=1 filter=7 channel=51
					0, 16, 7, 2, 14, 13, 17, 15, 19,
					-- layer=1 filter=7 channel=52
					-5, 5, -12, -26, -22, -11, 41, 16, 10,
					-- layer=1 filter=7 channel=53
					-31, -84, 11, -25, -76, 31, -14, -57, 38,
					-- layer=1 filter=7 channel=54
					-2, -2, 5, -5, 2, 0, -7, -10, 4,
					-- layer=1 filter=7 channel=55
					-5, 9, -25, -14, 10, -1, 7, 40, 19,
					-- layer=1 filter=7 channel=56
					-6, -13, 4, 17, 9, 10, -20, -31, -10,
					-- layer=1 filter=7 channel=57
					-7, 0, -5, -3, -23, -26, -8, -12, -33,
					-- layer=1 filter=7 channel=58
					-12, -18, -12, -19, 0, 0, -9, -1, -19,
					-- layer=1 filter=7 channel=59
					-77, -98, -19, -100, -95, -23, -79, -74, -27,
					-- layer=1 filter=7 channel=60
					9, 25, 73, 20, 47, 7, 63, 10, 27,
					-- layer=1 filter=7 channel=61
					-109, -160, -39, -160, -169, -67, -121, -180, -73,
					-- layer=1 filter=7 channel=62
					-16, -47, 13, -7, -17, 0, -7, -8, 19,
					-- layer=1 filter=7 channel=63
					-30, -35, -41, -53, -46, -25, -29, -32, 2,
					-- layer=1 filter=8 channel=0
					5, 2, -8, -6, -11, 1, -24, 0, -9,
					-- layer=1 filter=8 channel=1
					3, -2, 6, -10, -7, -16, -10, -3, -7,
					-- layer=1 filter=8 channel=2
					2, 15, 15, -2, -16, 13, -11, -3, -9,
					-- layer=1 filter=8 channel=3
					-2, 7, 4, 9, 7, 15, 0, 7, -2,
					-- layer=1 filter=8 channel=4
					-1, -17, -17, -3, -17, -26, -11, -19, -10,
					-- layer=1 filter=8 channel=5
					-6, -13, 6, -15, -11, -13, -21, -21, -24,
					-- layer=1 filter=8 channel=6
					0, -21, -37, -12, -24, -14, -19, -4, -9,
					-- layer=1 filter=8 channel=7
					-8, -5, -3, 2, 5, -19, 3, -8, -10,
					-- layer=1 filter=8 channel=8
					-12, -24, -2, -3, -27, -4, -12, -14, -2,
					-- layer=1 filter=8 channel=9
					-17, -8, -22, -9, -17, -2, 4, 2, -27,
					-- layer=1 filter=8 channel=10
					3, 2, -14, -12, -4, 7, -14, -1, 9,
					-- layer=1 filter=8 channel=11
					-1, -17, -12, -8, 9, -5, -4, -22, -10,
					-- layer=1 filter=8 channel=12
					0, -3, 17, 11, -2, 10, 3, 17, 11,
					-- layer=1 filter=8 channel=13
					-10, 5, -11, -15, 2, 15, -11, -1, 11,
					-- layer=1 filter=8 channel=14
					20, -2, 2, -5, -1, 1, 4, 6, -19,
					-- layer=1 filter=8 channel=15
					6, -18, -12, 18, 3, 1, -17, -12, -13,
					-- layer=1 filter=8 channel=16
					11, -8, -1, -26, -24, -9, 7, -26, -10,
					-- layer=1 filter=8 channel=17
					-4, -20, 10, 0, -14, 7, 0, -18, 9,
					-- layer=1 filter=8 channel=18
					-25, -14, 0, -28, -19, -25, -10, -7, 4,
					-- layer=1 filter=8 channel=19
					-6, -17, -14, -16, -6, -32, -23, -11, -8,
					-- layer=1 filter=8 channel=20
					-7, 0, -11, -5, -11, -8, -1, -15, -11,
					-- layer=1 filter=8 channel=21
					-11, -4, -19, -18, -6, -16, -9, -2, -1,
					-- layer=1 filter=8 channel=22
					3, 4, 11, -12, -2, -12, -19, -12, -9,
					-- layer=1 filter=8 channel=23
					-1, -10, -17, 1, -10, 3, -12, 6, -1,
					-- layer=1 filter=8 channel=24
					7, -19, 3, -19, -14, -11, -6, -21, -11,
					-- layer=1 filter=8 channel=25
					6, -7, 6, -20, -19, 7, -3, -17, 10,
					-- layer=1 filter=8 channel=26
					-14, -17, 10, -11, -7, -8, -14, -19, 0,
					-- layer=1 filter=8 channel=27
					-2, 0, -4, -7, -24, 1, -25, -14, -21,
					-- layer=1 filter=8 channel=28
					-1, -13, -1, 14, -3, 1, -6, -5, -1,
					-- layer=1 filter=8 channel=29
					-2, -6, -18, -11, 3, 8, 6, -4, -15,
					-- layer=1 filter=8 channel=30
					-7, 0, -14, -15, -16, 1, -22, -16, -13,
					-- layer=1 filter=8 channel=31
					-8, 0, 5, -8, 8, -12, 14, 8, 7,
					-- layer=1 filter=8 channel=32
					12, 9, -20, 12, -6, 10, 16, -6, 0,
					-- layer=1 filter=8 channel=33
					4, -10, -21, -9, -23, 6, -3, 7, -10,
					-- layer=1 filter=8 channel=34
					-1, 0, -15, 6, -6, -16, -12, -3, 0,
					-- layer=1 filter=8 channel=35
					13, -2, -4, 1, -10, -14, -7, -9, 6,
					-- layer=1 filter=8 channel=36
					-10, 0, -9, 6, -9, 8, 7, 12, -9,
					-- layer=1 filter=8 channel=37
					11, -8, 4, -8, 0, -14, -2, -22, -2,
					-- layer=1 filter=8 channel=38
					-3, 12, -9, -12, -2, 14, 6, -13, -6,
					-- layer=1 filter=8 channel=39
					-13, 6, -16, 2, 0, -22, 7, -13, -21,
					-- layer=1 filter=8 channel=40
					-3, -4, -9, -9, -1, -2, 0, 0, -22,
					-- layer=1 filter=8 channel=41
					-8, 3, 2, -4, 4, 4, -24, 3, -8,
					-- layer=1 filter=8 channel=42
					7, 15, 8, 3, -16, -20, -3, -7, -9,
					-- layer=1 filter=8 channel=43
					5, -6, -11, -18, 0, 6, 8, -7, -13,
					-- layer=1 filter=8 channel=44
					2, -6, -12, -3, -10, 0, 10, 2, -23,
					-- layer=1 filter=8 channel=45
					2, 4, -22, 1, -20, -26, -16, -14, -3,
					-- layer=1 filter=8 channel=46
					-5, -5, -18, 5, -13, -22, -7, -5, -18,
					-- layer=1 filter=8 channel=47
					0, -18, -11, -14, -12, -7, -9, -22, 0,
					-- layer=1 filter=8 channel=48
					-1, -20, -1, -13, -6, 0, -14, -12, 0,
					-- layer=1 filter=8 channel=49
					4, -6, -8, 12, 3, -19, 10, 1, 0,
					-- layer=1 filter=8 channel=50
					-7, 2, 8, -4, -3, 2, -20, -6, -8,
					-- layer=1 filter=8 channel=51
					-4, -14, -8, -16, -8, -26, -2, -17, -23,
					-- layer=1 filter=8 channel=52
					-12, -14, -19, -24, 8, -10, -1, -23, 0,
					-- layer=1 filter=8 channel=53
					-4, -2, 0, 3, -3, 1, -7, 10, 9,
					-- layer=1 filter=8 channel=54
					5, 3, 10, -3, -15, -6, 1, 0, -16,
					-- layer=1 filter=8 channel=55
					-14, -21, -1, -3, -4, 6, -13, 1, -9,
					-- layer=1 filter=8 channel=56
					3, -8, -2, -15, -19, -25, -13, -23, -9,
					-- layer=1 filter=8 channel=57
					-25, -2, 3, -28, -19, -23, -17, -20, -33,
					-- layer=1 filter=8 channel=58
					2, 2, -13, -2, -7, -16, -18, -7, -2,
					-- layer=1 filter=8 channel=59
					-17, -19, -16, -6, -7, -6, -9, -8, -14,
					-- layer=1 filter=8 channel=60
					-27, -34, -7, 0, 1, 5, -16, 6, -15,
					-- layer=1 filter=8 channel=61
					12, -8, -6, -1, -6, -13, 0, 3, 4,
					-- layer=1 filter=8 channel=62
					0, -13, -34, -4, -8, 2, 3, -3, -7,
					-- layer=1 filter=8 channel=63
					-5, -19, -8, -6, -3, -6, -16, -23, -29,
					-- layer=1 filter=9 channel=0
					-34, 10, -29, -37, -54, -54, -31, 33, -7,
					-- layer=1 filter=9 channel=1
					-19, 0, -22, 7, -23, 3, 30, 18, -6,
					-- layer=1 filter=9 channel=2
					0, 0, 2, 2, 0, -7, 26, 37, 16,
					-- layer=1 filter=9 channel=3
					0, -24, -8, -47, -41, -17, -21, -20, 0,
					-- layer=1 filter=9 channel=4
					-37, -28, -1, -8, 18, -20, 11, -1, 26,
					-- layer=1 filter=9 channel=5
					25, 33, -14, 24, -19, -18, -5, -7, -5,
					-- layer=1 filter=9 channel=6
					-10, 8, -8, 16, -7, -28, 4, -1, 9,
					-- layer=1 filter=9 channel=7
					-28, -38, -23, -60, -38, -31, -16, -17, -41,
					-- layer=1 filter=9 channel=8
					-32, -41, -32, -5, -49, -38, -24, -21, 5,
					-- layer=1 filter=9 channel=9
					-3, -18, 0, 17, -10, 15, 16, 30, 11,
					-- layer=1 filter=9 channel=10
					-17, 17, -10, -25, -16, -26, 1, 0, 0,
					-- layer=1 filter=9 channel=11
					2, 9, 8, 9, -2, 0, 35, 0, 13,
					-- layer=1 filter=9 channel=12
					27, -2, 0, -28, -10, -35, -25, -17, 3,
					-- layer=1 filter=9 channel=13
					2, -8, 15, -2, -3, -7, 0, -11, -7,
					-- layer=1 filter=9 channel=14
					-3, -1, -19, 35, -2, 20, 26, 45, 25,
					-- layer=1 filter=9 channel=15
					57, 47, 7, 7, 20, 7, 4, 0, 36,
					-- layer=1 filter=9 channel=16
					-4, -14, -15, -37, 15, -44, -14, -33, -25,
					-- layer=1 filter=9 channel=17
					17, 9, 8, -10, 6, -6, 25, -1, -28,
					-- layer=1 filter=9 channel=18
					9, -1, -26, 36, -7, -3, 8, 16, 9,
					-- layer=1 filter=9 channel=19
					3, -21, 15, 13, 21, -4, 50, 22, 9,
					-- layer=1 filter=9 channel=20
					21, 8, 11, -25, 23, -2, 1, -16, 23,
					-- layer=1 filter=9 channel=21
					19, -19, -10, 0, -37, -40, -1, -20, -4,
					-- layer=1 filter=9 channel=22
					-5, 3, -5, 6, -3, 20, 5, 50, 61,
					-- layer=1 filter=9 channel=23
					-7, 22, -25, -6, 0, 6, -12, -25, -12,
					-- layer=1 filter=9 channel=24
					-6, -38, 11, 0, 23, 18, 37, 14, -2,
					-- layer=1 filter=9 channel=25
					18, 22, -8, 7, 10, -54, -18, -17, -1,
					-- layer=1 filter=9 channel=26
					-23, -40, -16, -4, -15, -23, 2, -35, -7,
					-- layer=1 filter=9 channel=27
					-43, -8, -11, -24, -35, -1, -17, -13, -25,
					-- layer=1 filter=9 channel=28
					8, -38, -29, -41, -42, -39, -38, -26, -24,
					-- layer=1 filter=9 channel=29
					-16, -1, 15, -25, 3, -42, -5, -29, -21,
					-- layer=1 filter=9 channel=30
					0, -10, -13, -1, -15, -18, -19, -16, -18,
					-- layer=1 filter=9 channel=31
					6, -2, 4, -5, -5, 3, 1, 0, 7,
					-- layer=1 filter=9 channel=32
					-52, -39, -14, -41, 6, -19, -24, -17, 8,
					-- layer=1 filter=9 channel=33
					-14, -25, 2, 2, -7, 5, 22, 16, -25,
					-- layer=1 filter=9 channel=34
					9, 40, 12, 56, 22, 10, 2, 31, 34,
					-- layer=1 filter=9 channel=35
					-18, -26, -33, -82, -37, -54, -36, -9, -21,
					-- layer=1 filter=9 channel=36
					26, 14, 0, -1, 21, -4, -32, -17, 7,
					-- layer=1 filter=9 channel=37
					56, 29, 38, 19, 68, -35, 14, -25, 25,
					-- layer=1 filter=9 channel=38
					8, 14, 14, -5, -18, -39, 0, -13, -11,
					-- layer=1 filter=9 channel=39
					24, 15, -18, -36, -19, -25, -8, -21, 5,
					-- layer=1 filter=9 channel=40
					1, 6, 11, 11, 16, 14, 2, 64, 51,
					-- layer=1 filter=9 channel=41
					0, 5, -15, 11, -3, -7, -4, 3, -11,
					-- layer=1 filter=9 channel=42
					0, 23, -26, -1, -42, -35, 8, 26, 18,
					-- layer=1 filter=9 channel=43
					35, -1, 11, 16, 19, -38, 10, -9, 10,
					-- layer=1 filter=9 channel=44
					25, 44, 10, 5, 46, -13, -6, -3, 40,
					-- layer=1 filter=9 channel=45
					64, 19, -12, 38, 17, -23, 24, 24, -1,
					-- layer=1 filter=9 channel=46
					-36, -40, -31, -78, -83, -81, -76, -75, -93,
					-- layer=1 filter=9 channel=47
					19, 40, 7, 35, 34, -15, 5, 11, 43,
					-- layer=1 filter=9 channel=48
					-11, 3, 9, 18, 8, 11, 1, -4, -6,
					-- layer=1 filter=9 channel=49
					50, 48, 9, -7, 8, 23, 0, 3, 32,
					-- layer=1 filter=9 channel=50
					9, 2, -7, 3, 0, 2, 13, 12, -18,
					-- layer=1 filter=9 channel=51
					-15, 0, 9, 2, -10, -14, 12, 6, 5,
					-- layer=1 filter=9 channel=52
					37, 36, 22, 29, -1, 23, 34, 52, 49,
					-- layer=1 filter=9 channel=53
					0, 45, 23, -4, 39, 26, 8, 41, 66,
					-- layer=1 filter=9 channel=54
					0, -1, 4, 6, -9, -5, 3, -17, -4,
					-- layer=1 filter=9 channel=55
					22, 28, 18, 0, -35, -61, -55, -42, 10,
					-- layer=1 filter=9 channel=56
					-68, -17, -39, -77, -57, -45, 2, 8, -22,
					-- layer=1 filter=9 channel=57
					-2, -39, 21, -16, 21, 0, 19, -9, 23,
					-- layer=1 filter=9 channel=58
					7, 14, -5, 15, 23, -19, -7, -19, 22,
					-- layer=1 filter=9 channel=59
					18, 55, -7, 23, -14, 14, -21, 25, 16,
					-- layer=1 filter=9 channel=60
					0, -39, -55, -34, -69, -22, -46, -43, 1,
					-- layer=1 filter=9 channel=61
					41, 30, 29, 39, 25, 56, 37, 44, 44,
					-- layer=1 filter=9 channel=62
					46, 35, -34, 0, -14, -49, -1, -17, -13,
					-- layer=1 filter=9 channel=63
					-51, -30, -17, -23, -6, -18, -32, -28, -4,
					-- layer=1 filter=10 channel=0
					93, 34, 30, 70, 65, 32, -57, -45, -45,
					-- layer=1 filter=10 channel=1
					62, 55, 38, -39, -26, 0, -81, -44, -40,
					-- layer=1 filter=10 channel=2
					124, 52, 64, 35, 27, 42, -110, -94, -11,
					-- layer=1 filter=10 channel=3
					-8, 0, -29, -16, -42, 12, -31, -28, -52,
					-- layer=1 filter=10 channel=4
					-14, -34, -30, -60, -48, -18, -59, -61, -30,
					-- layer=1 filter=10 channel=5
					-9, -44, -27, 12, -20, 34, -5, -24, -3,
					-- layer=1 filter=10 channel=6
					-13, -17, -84, -36, -29, -7, -45, -49, -49,
					-- layer=1 filter=10 channel=7
					-26, -41, -43, -60, -55, -40, -20, -30, 5,
					-- layer=1 filter=10 channel=8
					-53, -33, -50, -63, -87, -29, -27, -46, -9,
					-- layer=1 filter=10 channel=9
					-17, 10, -33, -23, -27, -36, 0, -18, -33,
					-- layer=1 filter=10 channel=10
					69, 32, 34, 7, 29, 6, -77, -93, -32,
					-- layer=1 filter=10 channel=11
					-30, -32, -11, -7, 21, -1, 11, 0, 8,
					-- layer=1 filter=10 channel=12
					-45, -18, -44, -32, -3, 1, -27, -18, 0,
					-- layer=1 filter=10 channel=13
					-23, -12, -20, -3, 17, -7, 6, 22, -6,
					-- layer=1 filter=10 channel=14
					121, 84, 42, 59, 38, 61, -130, -116, -30,
					-- layer=1 filter=10 channel=15
					1, -54, 19, -57, 0, -12, -48, 10, 0,
					-- layer=1 filter=10 channel=16
					-79, -79, -19, -26, -19, 34, 0, -19, -33,
					-- layer=1 filter=10 channel=17
					28, 43, 11, -30, 1, -12, -12, 5, -24,
					-- layer=1 filter=10 channel=18
					60, 10, -4, -21, -17, -3, -18, -26, -3,
					-- layer=1 filter=10 channel=19
					8, 8, 10, -45, -46, -41, -79, -49, -45,
					-- layer=1 filter=10 channel=20
					-11, -65, 1, -59, -1, 2, -41, -21, -25,
					-- layer=1 filter=10 channel=21
					10, 3, -40, -28, -5, -38, -11, -31, 0,
					-- layer=1 filter=10 channel=22
					97, 90, 25, 19, -14, 39, -79, -68, -76,
					-- layer=1 filter=10 channel=23
					5, -24, 48, -3, 22, 21, -12, 29, -8,
					-- layer=1 filter=10 channel=24
					47, 19, 14, -11, -21, 0, -91, -85, 7,
					-- layer=1 filter=10 channel=25
					1, -66, -52, -10, 10, 27, -4, -59, 2,
					-- layer=1 filter=10 channel=26
					8, 9, 7, 2, -33, 7, -5, -23, -2,
					-- layer=1 filter=10 channel=27
					-6, 1, -17, -65, -49, -39, -55, -37, -27,
					-- layer=1 filter=10 channel=28
					-52, -14, -39, -21, -33, -26, -10, -2, -14,
					-- layer=1 filter=10 channel=29
					-25, 13, -2, -34, -31, -10, -14, -35, -2,
					-- layer=1 filter=10 channel=30
					14, 13, 28, 12, -2, 21, 0, -7, 1,
					-- layer=1 filter=10 channel=31
					-7, 7, 1, 0, 4, -5, 0, 6, 11,
					-- layer=1 filter=10 channel=32
					20, -7, -15, -13, -48, 34, -37, 19, 48,
					-- layer=1 filter=10 channel=33
					30, 67, 14, -36, -44, -7, -56, -79, -45,
					-- layer=1 filter=10 channel=34
					6, -22, -18, -36, -36, -16, -36, -71, 1,
					-- layer=1 filter=10 channel=35
					58, 13, 13, -9, 5, 3, -82, -50, -10,
					-- layer=1 filter=10 channel=36
					6, -61, 1, -35, 24, 25, 12, 33, 11,
					-- layer=1 filter=10 channel=37
					4, -15, -15, -37, -6, 48, -36, -62, -34,
					-- layer=1 filter=10 channel=38
					66, -6, 20, 15, 27, 21, -15, 10, -28,
					-- layer=1 filter=10 channel=39
					26, -20, 39, -35, -13, 3, -42, -5, -4,
					-- layer=1 filter=10 channel=40
					81, 61, 33, 31, 26, 65, -74, -65, -71,
					-- layer=1 filter=10 channel=41
					-6, -34, -13, -13, 0, -17, -4, 3, 14,
					-- layer=1 filter=10 channel=42
					100, 39, 68, 56, 21, 23, -103, -33, -47,
					-- layer=1 filter=10 channel=43
					39, -46, -6, -20, -10, -44, -24, -24, -35,
					-- layer=1 filter=10 channel=44
					17, 15, 23, -74, -9, 14, -42, -47, -47,
					-- layer=1 filter=10 channel=45
					12, -74, -58, -52, -12, -37, -14, -81, -50,
					-- layer=1 filter=10 channel=46
					14, -21, 17, 7, 1, 4, 21, 37, 8,
					-- layer=1 filter=10 channel=47
					18, -3, -28, -58, -22, 28, -38, -53, 1,
					-- layer=1 filter=10 channel=48
					-61, -54, -41, -8, -14, -21, 15, 0, 19,
					-- layer=1 filter=10 channel=49
					-32, -41, 32, -61, 1, 11, -49, 6, 5,
					-- layer=1 filter=10 channel=50
					-6, -4, -22, -13, 6, -9, 2, -16, -2,
					-- layer=1 filter=10 channel=51
					12, 6, 12, -20, -15, -18, -40, -37, -28,
					-- layer=1 filter=10 channel=52
					-23, -43, -3, -67, -29, -30, -39, -21, -31,
					-- layer=1 filter=10 channel=53
					73, 103, -1, -20, 17, 30, -55, -46, -43,
					-- layer=1 filter=10 channel=54
					-21, -28, 1, 10, -2, -5, 9, 13, 18,
					-- layer=1 filter=10 channel=55
					15, -1, 56, 36, 17, 57, -1, 24, -7,
					-- layer=1 filter=10 channel=56
					16, -3, 22, -43, -31, -28, -55, -64, -39,
					-- layer=1 filter=10 channel=57
					4, 0, -1, -51, -49, 0, -33, -47, -40,
					-- layer=1 filter=10 channel=58
					15, 5, 7, -14, -11, 26, 7, -10, 19,
					-- layer=1 filter=10 channel=59
					23, 70, -45, -43, -16, -48, -16, -34, -42,
					-- layer=1 filter=10 channel=60
					17, 19, 6, 0, 8, -8, -62, -40, -34,
					-- layer=1 filter=10 channel=61
					10, 41, -54, -67, -38, -55, -55, -17, -54,
					-- layer=1 filter=10 channel=62
					-18, 2, -53, -34, 4, -37, -5, -40, -9,
					-- layer=1 filter=10 channel=63
					79, 87, 5, 38, 2, 26, -23, -47, -59,
					-- layer=1 filter=11 channel=0
					-3, -2, -3, -7, 1, -7, -20, -14, 1,
					-- layer=1 filter=11 channel=1
					-4, -5, -1, 2, -4, -3, -2, -6, -4,
					-- layer=1 filter=11 channel=2
					5, 4, -12, -3, -14, -6, 6, -3, -6,
					-- layer=1 filter=11 channel=3
					2, 2, -4, 1, -17, -6, -10, -7, 0,
					-- layer=1 filter=11 channel=4
					8, 4, -7, -9, -10, 1, 8, -4, 3,
					-- layer=1 filter=11 channel=5
					8, -18, 5, -16, 6, 4, -1, -12, -2,
					-- layer=1 filter=11 channel=6
					-6, -19, 6, -4, 11, -19, -16, -2, -16,
					-- layer=1 filter=11 channel=7
					-5, 6, -17, -2, 5, 7, 5, -6, 0,
					-- layer=1 filter=11 channel=8
					10, -10, -5, 11, -11, -18, -14, 1, 4,
					-- layer=1 filter=11 channel=9
					-12, 9, -12, -1, 2, -16, 2, 4, -6,
					-- layer=1 filter=11 channel=10
					-4, -4, -18, -4, -4, -5, -13, 10, -5,
					-- layer=1 filter=11 channel=11
					-2, 0, 10, 5, -16, 7, -15, -2, -18,
					-- layer=1 filter=11 channel=12
					-3, -1, 8, -10, -2, -15, -3, -5, -9,
					-- layer=1 filter=11 channel=13
					-4, -10, -4, 0, -2, -7, -21, -10, -16,
					-- layer=1 filter=11 channel=14
					-14, -13, -9, 4, -15, -1, -4, -14, -2,
					-- layer=1 filter=11 channel=15
					8, 2, -4, -4, 1, -12, -5, -6, -10,
					-- layer=1 filter=11 channel=16
					1, 0, 6, -10, -8, 2, -5, -15, 10,
					-- layer=1 filter=11 channel=17
					-16, -2, -8, -8, -5, -9, 5, 0, -15,
					-- layer=1 filter=11 channel=18
					11, -5, 10, 6, 5, 12, 0, 9, 3,
					-- layer=1 filter=11 channel=19
					-8, -5, 7, -1, -13, -11, 10, -6, 8,
					-- layer=1 filter=11 channel=20
					-2, -15, 8, -12, -10, -9, 0, -5, -9,
					-- layer=1 filter=11 channel=21
					2, -5, -7, -12, 0, -1, 5, -6, -7,
					-- layer=1 filter=11 channel=22
					-15, 2, 2, 0, -11, -8, -27, 11, -17,
					-- layer=1 filter=11 channel=23
					-10, -15, 10, 5, -9, 3, -4, -11, -3,
					-- layer=1 filter=11 channel=24
					6, 0, -4, -15, 5, 6, -15, 7, -15,
					-- layer=1 filter=11 channel=25
					-8, -8, -1, -12, 2, 1, -10, -3, -13,
					-- layer=1 filter=11 channel=26
					-14, 7, -17, 12, -10, 9, -10, -5, 5,
					-- layer=1 filter=11 channel=27
					-11, 0, -1, 10, -13, -4, 5, -1, 0,
					-- layer=1 filter=11 channel=28
					-6, 9, 1, -17, -9, -11, -22, -22, -6,
					-- layer=1 filter=11 channel=29
					8, -13, -14, 3, -13, 11, 2, -11, -2,
					-- layer=1 filter=11 channel=30
					12, -2, 3, 5, -7, 3, 0, -18, -5,
					-- layer=1 filter=11 channel=31
					-9, 10, -8, 5, 10, -14, -7, -2, -6,
					-- layer=1 filter=11 channel=32
					-1, -9, -15, 0, 1, 0, -9, -6, 14,
					-- layer=1 filter=11 channel=33
					-7, -5, -11, -2, -9, 11, 6, 5, -15,
					-- layer=1 filter=11 channel=34
					-2, -7, -13, -12, 0, 5, -11, 2, -20,
					-- layer=1 filter=11 channel=35
					8, 3, -17, -6, -14, 1, -7, -1, 12,
					-- layer=1 filter=11 channel=36
					-9, -17, 3, -4, -16, 0, 0, -24, 0,
					-- layer=1 filter=11 channel=37
					5, -3, 13, -8, 5, -12, -16, -8, 8,
					-- layer=1 filter=11 channel=38
					-2, 7, -6, -4, 2, -10, -12, -8, -18,
					-- layer=1 filter=11 channel=39
					-18, -11, -4, -11, 6, -4, 6, -4, 0,
					-- layer=1 filter=11 channel=40
					-17, -13, -7, -10, 7, -8, 2, 3, 5,
					-- layer=1 filter=11 channel=41
					12, 11, 12, -9, 4, -14, 8, -8, -11,
					-- layer=1 filter=11 channel=42
					9, 2, -9, 9, -12, -6, -11, -21, -17,
					-- layer=1 filter=11 channel=43
					-10, -10, -9, -10, -6, 2, -15, 0, 0,
					-- layer=1 filter=11 channel=44
					-18, -12, -7, -13, -4, -14, -11, -8, -23,
					-- layer=1 filter=11 channel=45
					6, 1, 8, 10, 8, -9, -1, 7, -1,
					-- layer=1 filter=11 channel=46
					-10, 6, -8, 10, 9, -2, -5, -17, 2,
					-- layer=1 filter=11 channel=47
					10, -4, -16, -14, 10, 7, 10, -2, -12,
					-- layer=1 filter=11 channel=48
					-6, -1, -6, -11, -9, -11, -6, -1, -16,
					-- layer=1 filter=11 channel=49
					0, -13, 0, -15, -10, -7, 8, -12, 3,
					-- layer=1 filter=11 channel=50
					-9, -20, 9, 0, 1, -17, -17, -21, -10,
					-- layer=1 filter=11 channel=51
					-17, 5, -3, 12, -1, -10, -10, -14, -9,
					-- layer=1 filter=11 channel=52
					-8, -8, -5, 4, 0, 1, -6, -7, -16,
					-- layer=1 filter=11 channel=53
					8, -18, 4, 3, -2, 12, 7, -2, 2,
					-- layer=1 filter=11 channel=54
					-6, 0, -15, -17, 1, 8, 1, -21, 0,
					-- layer=1 filter=11 channel=55
					-11, -8, -2, 0, -12, -15, -5, -14, -4,
					-- layer=1 filter=11 channel=56
					-9, -5, -16, 4, 4, -20, -5, 2, -5,
					-- layer=1 filter=11 channel=57
					-8, 7, -7, -15, -4, 7, -16, 5, 10,
					-- layer=1 filter=11 channel=58
					4, 1, -9, -15, 3, 11, -3, -2, 9,
					-- layer=1 filter=11 channel=59
					8, 13, -18, -18, 2, -6, -10, -14, -14,
					-- layer=1 filter=11 channel=60
					-9, -7, -5, 0, -8, -8, 3, 9, 3,
					-- layer=1 filter=11 channel=61
					-3, -3, -5, -11, -3, -5, -10, -1, -9,
					-- layer=1 filter=11 channel=62
					-5, 6, 6, -17, -17, -3, -8, -6, -6,
					-- layer=1 filter=11 channel=63
					-7, -23, -9, -4, -5, 0, -6, 9, -17,
					-- layer=1 filter=12 channel=0
					-19, -35, -52, -70, -29, -25, -53, -42, -19,
					-- layer=1 filter=12 channel=1
					-4, 9, -15, 2, -35, 28, 10, -8, 11,
					-- layer=1 filter=12 channel=2
					-25, -7, -45, -29, -33, 29, -27, -30, 0,
					-- layer=1 filter=12 channel=3
					-1, -9, -5, -1, 15, -11, 16, 5, -9,
					-- layer=1 filter=12 channel=4
					-20, -19, 11, -30, 12, -3, -13, -17, -10,
					-- layer=1 filter=12 channel=5
					-22, -19, 2, -37, 4, -11, -31, -19, -21,
					-- layer=1 filter=12 channel=6
					-24, 0, -3, -17, -35, 17, -22, -21, -6,
					-- layer=1 filter=12 channel=7
					-53, -50, -45, -33, -24, -23, -37, 7, 31,
					-- layer=1 filter=12 channel=8
					-21, -5, -37, 2, -49, 18, -12, -14, 5,
					-- layer=1 filter=12 channel=9
					-7, 29, 1, -9, -5, -7, 14, 17, 7,
					-- layer=1 filter=12 channel=10
					16, -7, 4, -17, 9, 3, -6, -27, 2,
					-- layer=1 filter=12 channel=11
					-46, -9, 3, -16, 11, 3, -11, 0, 22,
					-- layer=1 filter=12 channel=12
					22, -22, 22, -37, 10, 12, -15, 14, -12,
					-- layer=1 filter=12 channel=13
					-16, -18, 12, 8, -8, -4, -12, -8, 5,
					-- layer=1 filter=12 channel=14
					-28, -15, -20, -59, -45, 0, -44, -34, -7,
					-- layer=1 filter=12 channel=15
					12, -5, 56, -2, 47, 13, 58, 17, 31,
					-- layer=1 filter=12 channel=16
					-30, -36, 1, -67, 8, -3, -17, 23, -18,
					-- layer=1 filter=12 channel=17
					-1, 19, -14, 11, -9, 8, 14, 0, 18,
					-- layer=1 filter=12 channel=18
					-13, -5, 3, 1, -15, 9, 3, -3, -27,
					-- layer=1 filter=12 channel=19
					-4, -14, -1, -7, -3, 14, 23, 24, 15,
					-- layer=1 filter=12 channel=20
					30, -4, 51, -1, 12, -3, 32, -30, -5,
					-- layer=1 filter=12 channel=21
					10, 5, -14, 3, 4, -7, -25, -23, -27,
					-- layer=1 filter=12 channel=22
					-2, 10, 18, -21, -17, 33, -12, 22, 56,
					-- layer=1 filter=12 channel=23
					7, 5, 15, -22, 16, 3, -8, 22, -12,
					-- layer=1 filter=12 channel=24
					4, -22, 11, -10, -18, 33, 22, -10, 29,
					-- layer=1 filter=12 channel=25
					-43, -36, 14, -29, -48, 15, -16, -55, -12,
					-- layer=1 filter=12 channel=26
					-29, -34, 19, -25, -5, 18, -19, -5, -8,
					-- layer=1 filter=12 channel=27
					4, -13, -19, 0, 6, -1, -19, 8, 18,
					-- layer=1 filter=12 channel=28
					-11, -13, -15, -4, -20, -22, -11, -10, -28,
					-- layer=1 filter=12 channel=29
					15, -21, 0, 13, -2, 12, 9, -5, 7,
					-- layer=1 filter=12 channel=30
					-12, 11, 5, 10, 2, 16, 12, 19, -2,
					-- layer=1 filter=12 channel=31
					8, -1, 12, -2, 7, 2, -6, 17, 6,
					-- layer=1 filter=12 channel=32
					60, 3, 78, 96, 0, 75, 76, 0, 96,
					-- layer=1 filter=12 channel=33
					-7, 5, 6, 23, -26, 42, 33, 3, 37,
					-- layer=1 filter=12 channel=34
					-36, 6, 11, -33, -7, 24, 11, -18, 19,
					-- layer=1 filter=12 channel=35
					-23, -32, -11, -7, -28, 0, -25, -11, 1,
					-- layer=1 filter=12 channel=36
					21, -15, 39, 10, 6, 13, 30, -22, 11,
					-- layer=1 filter=12 channel=37
					-16, -50, 33, -46, -18, -1, -32, 5, -20,
					-- layer=1 filter=12 channel=38
					0, -20, 12, -2, -12, -4, 17, 0, -6,
					-- layer=1 filter=12 channel=39
					15, -5, 26, -45, 0, -12, -12, -5, -29,
					-- layer=1 filter=12 channel=40
					-22, 31, 5, -2, 5, 28, 29, 25, 62,
					-- layer=1 filter=12 channel=41
					17, 0, 19, -6, 3, 5, -8, -18, 17,
					-- layer=1 filter=12 channel=42
					-6, 26, 16, -9, 35, -19, -23, 33, -1,
					-- layer=1 filter=12 channel=43
					3, -41, -7, -36, -45, -18, -59, -14, -60,
					-- layer=1 filter=12 channel=44
					-10, 10, 43, -27, 54, 10, 28, 19, 7,
					-- layer=1 filter=12 channel=45
					9, -60, 6, -11, -38, 21, -43, 6, -32,
					-- layer=1 filter=12 channel=46
					-40, -32, -13, -30, -14, -1, -26, -4, -31,
					-- layer=1 filter=12 channel=47
					-12, -17, 47, -43, -10, 38, -31, -3, -6,
					-- layer=1 filter=12 channel=48
					0, 16, 6, 0, -8, 1, -1, -18, 3,
					-- layer=1 filter=12 channel=49
					18, 40, 66, -12, 69, 22, 55, 41, 34,
					-- layer=1 filter=12 channel=50
					-3, 7, 4, 9, 8, -7, 22, 1, 5,
					-- layer=1 filter=12 channel=51
					17, -9, 1, 0, 16, 13, -7, 5, -8,
					-- layer=1 filter=12 channel=52
					-77, -45, -11, -76, -33, -12, -18, -34, 27,
					-- layer=1 filter=12 channel=53
					-36, 69, -2, -33, 48, 21, 3, 19, 15,
					-- layer=1 filter=12 channel=54
					9, 14, 13, 8, -10, 0, 5, 0, -15,
					-- layer=1 filter=12 channel=55
					-10, 19, 13, -11, 3, 40, -2, 29, -5,
					-- layer=1 filter=12 channel=56
					-43, -33, -50, -54, -14, -7, -29, 10, 2,
					-- layer=1 filter=12 channel=57
					-13, -34, 16, -14, -8, 9, -9, -1, -5,
					-- layer=1 filter=12 channel=58
					-12, -25, 13, 3, -25, 16, 7, -18, 15,
					-- layer=1 filter=12 channel=59
					-8, 60, -8, 8, 23, 35, 27, 2, 36,
					-- layer=1 filter=12 channel=60
					-63, 7, 23, -40, -21, -48, -58, -29, 31,
					-- layer=1 filter=12 channel=61
					12, 58, 50, 17, 58, 58, 50, 21, 33,
					-- layer=1 filter=12 channel=62
					10, 8, 13, -5, -11, 1, -14, -7, -33,
					-- layer=1 filter=12 channel=63
					-12, 12, 5, -14, 3, 13, -14, -17, 27,
					-- layer=1 filter=13 channel=0
					-49, -15, -22, -59, -44, -29, -67, -71, -98,
					-- layer=1 filter=13 channel=1
					-21, -14, -7, -31, -38, -46, -8, -5, 21,
					-- layer=1 filter=13 channel=2
					-53, -6, -5, -61, -7, -11, -53, -45, -55,
					-- layer=1 filter=13 channel=3
					11, 3, 2, 23, -18, 15, 28, -14, 19,
					-- layer=1 filter=13 channel=4
					47, 40, 15, 23, 32, -9, 3, 22, 0,
					-- layer=1 filter=13 channel=5
					40, 10, 16, 26, 0, -4, -3, 3, -1,
					-- layer=1 filter=13 channel=6
					28, 42, 44, 36, 9, 13, 12, 16, 25,
					-- layer=1 filter=13 channel=7
					-66, -38, -56, -78, -60, -60, 23, 32, 15,
					-- layer=1 filter=13 channel=8
					-86, -42, -40, -63, -28, -26, -3, 45, 67,
					-- layer=1 filter=13 channel=9
					9, 16, 8, 33, 4, 29, -16, -26, 0,
					-- layer=1 filter=13 channel=10
					6, 4, -16, -43, -18, -29, 11, -31, -39,
					-- layer=1 filter=13 channel=11
					-1, 13, 8, -12, 0, -13, -19, -3, -13,
					-- layer=1 filter=13 channel=12
					3, -6, -1, 8, -15, 6, -9, 2, 27,
					-- layer=1 filter=13 channel=13
					0, -17, -2, -1, -9, -4, 12, -6, 12,
					-- layer=1 filter=13 channel=14
					28, 17, 28, 13, 28, 35, 34, 10, -8,
					-- layer=1 filter=13 channel=15
					-22, -48, -43, -23, -11, -48, 18, 2, -17,
					-- layer=1 filter=13 channel=16
					-17, 8, -17, 3, 32, -9, 21, 8, -20,
					-- layer=1 filter=13 channel=17
					-21, -8, -20, -14, -50, -15, -11, -28, -8,
					-- layer=1 filter=13 channel=18
					1, -16, 19, 7, 3, -15, -26, 3, -7,
					-- layer=1 filter=13 channel=19
					-15, 1, -28, -43, -35, -31, -52, -68, -45,
					-- layer=1 filter=13 channel=20
					-26, -38, -45, -35, 5, -41, 11, 1, -13,
					-- layer=1 filter=13 channel=21
					-19, -24, -24, 45, -18, 22, 41, 22, 46,
					-- layer=1 filter=13 channel=22
					10, 14, 14, 30, 2, 45, 4, 4, 2,
					-- layer=1 filter=13 channel=23
					67, 43, 39, 39, 55, 21, 19, 35, -16,
					-- layer=1 filter=13 channel=24
					-8, 11, 7, -15, -15, -12, -64, -46, -90,
					-- layer=1 filter=13 channel=25
					-2, 26, 9, 14, 35, 30, 22, 38, 41,
					-- layer=1 filter=13 channel=26
					-30, 12, -33, -14, -9, 1, -2, -7, -3,
					-- layer=1 filter=13 channel=27
					-64, -61, -32, -56, -46, -53, -30, 7, -2,
					-- layer=1 filter=13 channel=28
					-33, -33, 2, -5, -22, -2, 14, 24, 26,
					-- layer=1 filter=13 channel=29
					-36, -6, -31, -11, -19, -9, 3, 0, 10,
					-- layer=1 filter=13 channel=30
					3, 18, -8, 8, 5, 15, 17, 5, 4,
					-- layer=1 filter=13 channel=31
					8, 15, 1, -2, 8, -6, 5, -1, 0,
					-- layer=1 filter=13 channel=32
					-45, 42, 12, -35, 15, -38, 5, 11, 33,
					-- layer=1 filter=13 channel=33
					-36, 12, 0, 7, -35, -15, -9, -9, 2,
					-- layer=1 filter=13 channel=34
					-15, 5, 20, 10, 11, 0, -7, -23, 11,
					-- layer=1 filter=13 channel=35
					-68, -45, -9, -77, -43, -49, -18, -18, -3,
					-- layer=1 filter=13 channel=36
					-1, -10, 4, 0, 33, 3, 15, 16, 12,
					-- layer=1 filter=13 channel=37
					27, 53, 23, 7, 7, 13, -11, 19, -3,
					-- layer=1 filter=13 channel=38
					-3, 11, -6, 4, 10, 7, -28, -11, -20,
					-- layer=1 filter=13 channel=39
					52, 31, 7, 3, 30, 29, 23, 0, -4,
					-- layer=1 filter=13 channel=40
					-19, -6, -8, 22, 1, 21, -7, -8, -9,
					-- layer=1 filter=13 channel=41
					0, -21, -24, 0, 18, 0, 0, -2, -1,
					-- layer=1 filter=13 channel=42
					18, 17, 14, -14, 35, 33, 10, 9, -13,
					-- layer=1 filter=13 channel=43
					8, 0, 33, 0, 4, 24, 0, 15, 22,
					-- layer=1 filter=13 channel=44
					8, -4, -21, 25, 18, -12, 28, 33, -6,
					-- layer=1 filter=13 channel=45
					66, 64, 64, 43, 16, 30, 3, -14, 11,
					-- layer=1 filter=13 channel=46
					29, 43, 23, 44, 27, 21, 0, -4, -16,
					-- layer=1 filter=13 channel=47
					1, 21, 9, 16, 17, 19, -14, 17, -3,
					-- layer=1 filter=13 channel=48
					16, 38, 21, 18, 22, 11, -1, -14, 7,
					-- layer=1 filter=13 channel=49
					5, -40, -40, -49, -22, -65, 35, -9, -29,
					-- layer=1 filter=13 channel=50
					33, 19, 18, 13, 22, 18, -5, -17, 3,
					-- layer=1 filter=13 channel=51
					-31, 0, 1, -13, -13, -8, -10, -5, -9,
					-- layer=1 filter=13 channel=52
					34, 47, 58, 3, 0, -9, -32, -33, -31,
					-- layer=1 filter=13 channel=53
					-50, -92, -70, -3, -76, -33, 8, -36, 8,
					-- layer=1 filter=13 channel=54
					12, 10, 8, 26, 24, 8, 22, 17, -12,
					-- layer=1 filter=13 channel=55
					33, 17, 36, 30, 17, 7, -23, -13, -43,
					-- layer=1 filter=13 channel=56
					-23, -34, -26, -61, -24, -52, 23, 14, -16,
					-- layer=1 filter=13 channel=57
					-11, -1, 2, -17, -21, -22, -35, -31, -45,
					-- layer=1 filter=13 channel=58
					1, 0, -9, 11, 6, -27, -32, -13, -21,
					-- layer=1 filter=13 channel=59
					-13, -70, -45, -3, -57, -24, 25, -17, 24,
					-- layer=1 filter=13 channel=60
					54, 28, 36, 40, 41, 40, 51, 97, 127,
					-- layer=1 filter=13 channel=61
					-35, -80, -61, -1, -44, 5, 25, -8, 42,
					-- layer=1 filter=13 channel=62
					-1, -10, 18, 10, -2, 15, 1, -6, 35,
					-- layer=1 filter=13 channel=63
					55, 50, 7, 38, 32, 47, 6, -4, -6,
					-- layer=1 filter=14 channel=0
					-4, 4, 7, -3, 13, 8, -10, -12, -8,
					-- layer=1 filter=14 channel=1
					7, 2, -1, -11, 5, 0, 1, 0, -9,
					-- layer=1 filter=14 channel=2
					-13, -18, -24, -7, -8, 0, -10, -2, -9,
					-- layer=1 filter=14 channel=3
					-7, -30, -15, -18, -8, -18, -5, -26, -17,
					-- layer=1 filter=14 channel=4
					-19, -2, 8, -18, 0, 4, -11, -18, 0,
					-- layer=1 filter=14 channel=5
					-4, -17, -4, 0, -23, -25, 5, -5, -21,
					-- layer=1 filter=14 channel=6
					-3, -20, -18, -7, -3, -4, -2, -28, -6,
					-- layer=1 filter=14 channel=7
					10, 6, 2, 4, 18, -1, 5, -4, 5,
					-- layer=1 filter=14 channel=8
					12, 0, 13, -7, 10, 0, 2, 5, 5,
					-- layer=1 filter=14 channel=9
					-5, -22, -14, -15, -12, -25, 0, -7, -18,
					-- layer=1 filter=14 channel=10
					-20, -17, -20, 2, 4, -19, -5, -7, -13,
					-- layer=1 filter=14 channel=11
					-16, -4, -15, -18, -19, -11, -19, -27, -8,
					-- layer=1 filter=14 channel=12
					-8, -23, -13, 2, -1, -6, -5, -4, -13,
					-- layer=1 filter=14 channel=13
					-14, 4, 2, -19, -25, 0, -23, -23, 2,
					-- layer=1 filter=14 channel=14
					2, -4, -8, -6, -15, 1, -4, -23, -15,
					-- layer=1 filter=14 channel=15
					-4, -12, -6, -21, -10, -11, -17, -14, -16,
					-- layer=1 filter=14 channel=16
					-2, -5, -1, -9, 2, 0, -15, 6, -6,
					-- layer=1 filter=14 channel=17
					-9, -2, -12, -20, -6, -13, -22, -3, -22,
					-- layer=1 filter=14 channel=18
					-10, -14, 0, 0, -1, -25, -10, -12, -1,
					-- layer=1 filter=14 channel=19
					-9, -7, -18, -8, -16, -8, -12, -15, -11,
					-- layer=1 filter=14 channel=20
					-18, -13, -15, -3, 0, 5, -14, -7, -26,
					-- layer=1 filter=14 channel=21
					-26, -13, -35, -5, 0, -12, -14, -4, 3,
					-- layer=1 filter=14 channel=22
					10, -13, -23, -15, -13, -5, -15, -31, -19,
					-- layer=1 filter=14 channel=23
					-8, -20, -15, -30, -23, -24, 0, -20, -10,
					-- layer=1 filter=14 channel=24
					-6, -23, -7, -12, -18, -21, 3, 0, -14,
					-- layer=1 filter=14 channel=25
					-3, -7, -12, -2, -13, -19, -25, -8, -3,
					-- layer=1 filter=14 channel=26
					-8, -8, -3, 13, 13, 11, 0, -20, -12,
					-- layer=1 filter=14 channel=27
					-17, 6, 4, -13, 5, 11, -1, 2, 2,
					-- layer=1 filter=14 channel=28
					-17, 4, -1, 0, -14, -12, -15, 4, 3,
					-- layer=1 filter=14 channel=29
					-19, -18, -1, 6, 8, -3, -19, -5, -3,
					-- layer=1 filter=14 channel=30
					-22, -19, -26, -25, -1, -18, -13, -1, -9,
					-- layer=1 filter=14 channel=31
					-10, 5, 12, -14, 7, -1, -4, 7, 7,
					-- layer=1 filter=14 channel=32
					-12, 3, -6, -22, 0, -19, -9, -5, -14,
					-- layer=1 filter=14 channel=33
					-5, -21, -4, 3, 0, -7, -22, -9, -7,
					-- layer=1 filter=14 channel=34
					-9, -6, -9, -2, -7, -19, -34, -27, -9,
					-- layer=1 filter=14 channel=35
					-6, -20, -7, -19, 3, -22, -8, -1, -13,
					-- layer=1 filter=14 channel=36
					-26, 2, -7, -12, -20, -11, -25, -16, -29,
					-- layer=1 filter=14 channel=37
					-4, -12, -12, -24, -20, 4, -25, -12, -28,
					-- layer=1 filter=14 channel=38
					-32, -24, -20, -23, -5, -18, -9, -26, -17,
					-- layer=1 filter=14 channel=39
					-16, -5, -14, -27, -9, -9, -11, -11, -13,
					-- layer=1 filter=14 channel=40
					-3, -14, -24, -4, -8, 0, -14, -26, -11,
					-- layer=1 filter=14 channel=41
					-25, -12, -20, -25, -22, -4, -10, -19, -21,
					-- layer=1 filter=14 channel=42
					-29, -19, -5, -17, -21, -6, -13, -4, 3,
					-- layer=1 filter=14 channel=43
					-16, -18, -6, 1, -4, -19, -18, -3, -14,
					-- layer=1 filter=14 channel=44
					-11, 2, 0, -17, -6, -26, -26, -8, -10,
					-- layer=1 filter=14 channel=45
					-12, -7, -11, -15, -21, -28, -27, -21, -7,
					-- layer=1 filter=14 channel=46
					-22, -15, 0, 0, -8, -13, 6, -14, 0,
					-- layer=1 filter=14 channel=47
					1, -8, -13, -16, -14, -1, -32, -21, -12,
					-- layer=1 filter=14 channel=48
					-22, -8, -12, -2, -15, 3, -5, -16, -23,
					-- layer=1 filter=14 channel=49
					-34, -23, -15, -10, -9, 1, -18, -20, -15,
					-- layer=1 filter=14 channel=50
					0, -5, -12, -7, 2, -4, 2, 4, 3,
					-- layer=1 filter=14 channel=51
					-23, -7, -17, -4, -21, -5, -25, -14, -20,
					-- layer=1 filter=14 channel=52
					-14, -27, -10, -3, -6, -12, -10, -19, -6,
					-- layer=1 filter=14 channel=53
					-1, -22, -16, -19, -20, -9, -14, -7, -16,
					-- layer=1 filter=14 channel=54
					0, -21, -19, 0, -3, -15, -15, -8, -23,
					-- layer=1 filter=14 channel=55
					-24, -5, -23, -9, -20, -29, -1, -5, -5,
					-- layer=1 filter=14 channel=56
					-8, -7, -8, -2, 5, -7, 0, 1, -8,
					-- layer=1 filter=14 channel=57
					7, -9, -18, -5, 1, 7, -24, 7, -21,
					-- layer=1 filter=14 channel=58
					-18, -11, 4, -17, -8, -2, -17, -1, -9,
					-- layer=1 filter=14 channel=59
					-3, -22, -5, -1, -15, -14, -7, -17, -19,
					-- layer=1 filter=14 channel=60
					-12, -23, -9, -7, 0, -16, -11, -22, -15,
					-- layer=1 filter=14 channel=61
					-9, -9, -18, 3, -15, -23, 6, -9, 8,
					-- layer=1 filter=14 channel=62
					-18, -21, -5, -14, -9, -14, -24, -7, -5,
					-- layer=1 filter=14 channel=63
					-19, -14, -6, -10, -24, -4, -3, -6, 4,
					-- layer=1 filter=15 channel=0
					-1, -4, 0, 10, 7, -16, -4, -16, -13,
					-- layer=1 filter=15 channel=1
					-10, -9, -9, -3, 9, -15, 6, 10, 6,
					-- layer=1 filter=15 channel=2
					11, 6, -12, 2, 4, -6, 4, -5, 3,
					-- layer=1 filter=15 channel=3
					1, 0, 4, 4, 1, 10, 8, 6, 11,
					-- layer=1 filter=15 channel=4
					-5, -2, 10, -6, 4, 10, -12, -16, -3,
					-- layer=1 filter=15 channel=5
					-3, 4, 8, -2, -5, 7, -14, -13, -10,
					-- layer=1 filter=15 channel=6
					2, -16, 11, 5, 3, -10, 10, 11, 0,
					-- layer=1 filter=15 channel=7
					0, -6, -4, 2, 6, 5, -11, -7, -12,
					-- layer=1 filter=15 channel=8
					-13, 12, 9, 4, 10, 11, -14, -8, -8,
					-- layer=1 filter=15 channel=9
					0, 10, 1, 10, 0, -14, -6, -10, 1,
					-- layer=1 filter=15 channel=10
					5, 2, 5, -3, 1, -5, -10, -14, -12,
					-- layer=1 filter=15 channel=11
					-6, 9, -13, -16, -2, 4, 5, -3, 8,
					-- layer=1 filter=15 channel=12
					-3, -15, 10, 9, 0, 12, 9, 8, -6,
					-- layer=1 filter=15 channel=13
					-3, 12, -10, -5, 0, 3, -4, -14, -4,
					-- layer=1 filter=15 channel=14
					-12, 5, -17, -11, -12, -8, 3, -15, 4,
					-- layer=1 filter=15 channel=15
					14, -13, -14, -14, -10, 0, 10, 12, -6,
					-- layer=1 filter=15 channel=16
					-15, 3, 13, 11, -18, 0, -16, 4, -3,
					-- layer=1 filter=15 channel=17
					0, -8, -14, -12, 13, 0, -16, -11, -10,
					-- layer=1 filter=15 channel=18
					0, 10, -5, 2, -10, -10, 8, 8, 10,
					-- layer=1 filter=15 channel=19
					-14, 0, -11, -16, -7, -16, 13, -1, -4,
					-- layer=1 filter=15 channel=20
					0, -5, 9, 10, 0, -5, -7, 5, -1,
					-- layer=1 filter=15 channel=21
					-18, -3, 0, -9, -20, -19, -10, 5, -22,
					-- layer=1 filter=15 channel=22
					-19, 5, 1, -1, -9, -17, -11, -20, 1,
					-- layer=1 filter=15 channel=23
					-14, 12, -7, -1, 5, -3, 14, -10, -9,
					-- layer=1 filter=15 channel=24
					9, -13, -16, 0, 5, 5, -15, -10, 5,
					-- layer=1 filter=15 channel=25
					-3, -10, -6, -17, -23, -8, 6, -14, -8,
					-- layer=1 filter=15 channel=26
					11, 8, -5, 3, 2, 6, -15, 6, -5,
					-- layer=1 filter=15 channel=27
					-9, 1, -12, 2, 11, -7, -11, 3, 3,
					-- layer=1 filter=15 channel=28
					-5, 3, -1, -2, -4, -5, 3, -9, -9,
					-- layer=1 filter=15 channel=29
					-7, 10, -7, 8, 2, -6, -2, -11, 2,
					-- layer=1 filter=15 channel=30
					0, -7, -14, 3, -6, -14, 5, -1, 6,
					-- layer=1 filter=15 channel=31
					12, 3, 9, 7, 5, 11, -14, -11, -13,
					-- layer=1 filter=15 channel=32
					-6, -2, 9, -6, -17, 13, -11, -1, 2,
					-- layer=1 filter=15 channel=33
					-15, -5, 1, 0, -13, 11, 2, -9, -2,
					-- layer=1 filter=15 channel=34
					-9, -4, 11, -4, -9, 1, 14, -7, 11,
					-- layer=1 filter=15 channel=35
					1, -7, -2, 4, -4, 12, -15, -2, 11,
					-- layer=1 filter=15 channel=36
					-14, -18, 0, -9, -4, -15, -7, -16, -4,
					-- layer=1 filter=15 channel=37
					-8, -17, -19, -16, 0, 0, -8, -3, 7,
					-- layer=1 filter=15 channel=38
					4, -13, -14, -11, -6, 9, 10, -1, 12,
					-- layer=1 filter=15 channel=39
					12, -8, -1, 0, -12, -2, -8, 0, -6,
					-- layer=1 filter=15 channel=40
					-10, -16, -15, -5, -1, -17, 1, -3, 10,
					-- layer=1 filter=15 channel=41
					10, 3, 1, -3, -11, 12, -11, 11, 8,
					-- layer=1 filter=15 channel=42
					-13, -1, 0, -17, -10, 1, 0, -2, -21,
					-- layer=1 filter=15 channel=43
					7, 5, 0, -3, -12, 3, -14, -4, -7,
					-- layer=1 filter=15 channel=44
					-5, -13, -15, 5, -12, -3, -12, -1, -15,
					-- layer=1 filter=15 channel=45
					2, 1, 3, 5, -13, -18, -17, 0, -2,
					-- layer=1 filter=15 channel=46
					5, 0, 6, -1, -11, -14, -9, -3, -11,
					-- layer=1 filter=15 channel=47
					2, 8, -6, 11, 11, 12, -7, -5, -10,
					-- layer=1 filter=15 channel=48
					-17, 0, 0, -1, -18, 4, -16, -10, 4,
					-- layer=1 filter=15 channel=49
					-6, -8, 14, 0, -3, -6, -9, -4, -2,
					-- layer=1 filter=15 channel=50
					-15, 8, 0, -7, 11, -14, 11, -13, -10,
					-- layer=1 filter=15 channel=51
					-5, 12, 8, -10, -13, 5, 11, 0, -6,
					-- layer=1 filter=15 channel=52
					14, -16, -3, 9, 3, -10, 19, -19, -13,
					-- layer=1 filter=15 channel=53
					-21, 7, 4, 10, -5, -3, 0, -13, -4,
					-- layer=1 filter=15 channel=54
					-5, -3, -7, 9, -7, -4, 0, 10, -10,
					-- layer=1 filter=15 channel=55
					-1, 9, 1, 7, 2, 12, 10, 9, -4,
					-- layer=1 filter=15 channel=56
					0, -15, 1, 2, 1, -11, -5, -2, -12,
					-- layer=1 filter=15 channel=57
					-12, -13, 12, 0, 4, -13, 8, -14, 11,
					-- layer=1 filter=15 channel=58
					-6, 8, 13, -12, 0, 5, -1, -1, -4,
					-- layer=1 filter=15 channel=59
					5, -2, 9, 0, -8, 7, -10, 10, 5,
					-- layer=1 filter=15 channel=60
					2, -5, -7, 4, -10, -1, 11, 1, -3,
					-- layer=1 filter=15 channel=61
					-5, 6, 0, 6, 2, -13, -8, -4, -23,
					-- layer=1 filter=15 channel=62
					-17, 5, -8, -20, -8, -4, 1, -11, -1,
					-- layer=1 filter=15 channel=63
					-15, -14, -2, -19, -12, -1, -2, 8, 0,
					-- layer=1 filter=16 channel=0
					-12, 0, -10, -1, 7, -14, -14, -14, -19,
					-- layer=1 filter=16 channel=1
					2, -9, -4, -10, 11, 3, 3, -16, -7,
					-- layer=1 filter=16 channel=2
					7, 0, -12, 0, 0, -2, -18, -18, -2,
					-- layer=1 filter=16 channel=3
					-11, -10, -9, 8, -15, -6, 3, -3, 0,
					-- layer=1 filter=16 channel=4
					-21, -16, 0, -7, -2, 0, -13, -9, -11,
					-- layer=1 filter=16 channel=5
					-8, -10, -15, 11, -15, 12, 12, -10, -5,
					-- layer=1 filter=16 channel=6
					-25, -19, -25, -7, -17, -6, 12, -1, -4,
					-- layer=1 filter=16 channel=7
					-5, 11, -3, 0, 6, -8, -2, 9, 10,
					-- layer=1 filter=16 channel=8
					-11, 4, -15, 3, 9, 8, 9, -12, 7,
					-- layer=1 filter=16 channel=9
					-10, 2, -6, 9, 0, -1, 4, 3, 3,
					-- layer=1 filter=16 channel=10
					-10, -13, -9, 1, 0, -15, -20, 8, 6,
					-- layer=1 filter=16 channel=11
					-15, -11, -16, 2, 7, 3, 6, 1, 7,
					-- layer=1 filter=16 channel=12
					-19, -7, -17, -1, -17, -4, -10, -15, 13,
					-- layer=1 filter=16 channel=13
					0, -8, -15, 6, 10, 11, -14, 11, -12,
					-- layer=1 filter=16 channel=14
					3, -8, -15, 1, -24, -8, 5, -9, -5,
					-- layer=1 filter=16 channel=15
					7, -21, 8, -16, 2, 17, 16, -5, 7,
					-- layer=1 filter=16 channel=16
					-17, 4, 11, -19, -11, 9, 1, -7, -1,
					-- layer=1 filter=16 channel=17
					7, 0, 8, 8, 10, 2, -2, -13, -8,
					-- layer=1 filter=16 channel=18
					1, 10, 11, -13, -4, 2, -9, -7, -15,
					-- layer=1 filter=16 channel=19
					-16, 10, -8, 11, -17, -8, 9, -12, 10,
					-- layer=1 filter=16 channel=20
					-4, -14, -2, -4, -6, -3, -12, 4, -13,
					-- layer=1 filter=16 channel=21
					-19, -24, -4, -11, 3, -8, -7, 7, -18,
					-- layer=1 filter=16 channel=22
					-11, -21, -5, -24, 0, -20, -10, -18, -19,
					-- layer=1 filter=16 channel=23
					-22, 1, 0, -13, -24, -10, -18, -20, 2,
					-- layer=1 filter=16 channel=24
					7, -8, 4, -17, -13, 7, -11, -11, 10,
					-- layer=1 filter=16 channel=25
					2, -5, -6, -15, 1, -2, 20, -6, 4,
					-- layer=1 filter=16 channel=26
					-9, 4, -8, -17, -18, -9, -13, 4, -4,
					-- layer=1 filter=16 channel=27
					-7, 0, -11, 1, -9, -3, -4, 6, -3,
					-- layer=1 filter=16 channel=28
					6, -5, -15, -15, -8, 11, -4, 10, 6,
					-- layer=1 filter=16 channel=29
					-16, 6, 1, -10, 0, -12, 7, 1, 9,
					-- layer=1 filter=16 channel=30
					8, -11, -14, -9, -16, -3, 11, 10, -15,
					-- layer=1 filter=16 channel=31
					-7, -10, -6, 2, 3, 11, 10, 4, 8,
					-- layer=1 filter=16 channel=32
					-12, -5, -21, -28, 22, -9, 33, -23, -5,
					-- layer=1 filter=16 channel=33
					0, -7, 3, 4, -1, 0, -9, 1, -12,
					-- layer=1 filter=16 channel=34
					0, -18, -20, -20, -22, 6, 0, -22, 0,
					-- layer=1 filter=16 channel=35
					-6, -7, 0, 5, -5, 4, -10, -12, 3,
					-- layer=1 filter=16 channel=36
					-2, -37, -3, -8, -19, -10, 18, -25, -7,
					-- layer=1 filter=16 channel=37
					-26, -17, -21, -13, -12, -24, 9, 6, 0,
					-- layer=1 filter=16 channel=38
					-19, -17, 0, -4, 8, -16, -19, -19, -15,
					-- layer=1 filter=16 channel=39
					7, -6, 5, 1, 4, 12, 8, -17, -10,
					-- layer=1 filter=16 channel=40
					4, -5, 4, -11, -4, 10, -7, -12, 7,
					-- layer=1 filter=16 channel=41
					-10, -4, -15, 5, -8, -7, -6, 6, -14,
					-- layer=1 filter=16 channel=42
					-9, -25, -5, -8, -27, 13, -15, -12, 2,
					-- layer=1 filter=16 channel=43
					-6, -17, -21, 5, -1, -13, -5, 1, -6,
					-- layer=1 filter=16 channel=44
					2, 2, -16, -18, -3, -5, -7, 5, 4,
					-- layer=1 filter=16 channel=45
					2, -17, -23, -12, -21, 0, 3, -19, 3,
					-- layer=1 filter=16 channel=46
					12, -9, 2, 0, 11, 3, -4, 11, 7,
					-- layer=1 filter=16 channel=47
					-16, 8, 1, -7, 6, 8, 7, -6, -4,
					-- layer=1 filter=16 channel=48
					-4, -9, -6, 9, -17, -1, 0, -19, -16,
					-- layer=1 filter=16 channel=49
					-12, -26, -1, -14, -18, -10, 7, 3, -1,
					-- layer=1 filter=16 channel=50
					-17, 2, -2, 10, -11, -11, 6, -19, -19,
					-- layer=1 filter=16 channel=51
					0, 3, 4, 11, -12, 5, -15, 3, 7,
					-- layer=1 filter=16 channel=52
					-4, -5, -11, -21, -11, 6, 6, 10, 16,
					-- layer=1 filter=16 channel=53
					-11, -1, 7, 6, 0, 10, -2, 21, -8,
					-- layer=1 filter=16 channel=54
					-18, -4, 9, -10, -6, -4, 6, -10, -10,
					-- layer=1 filter=16 channel=55
					3, 9, -3, 11, -3, -15, 11, -6, 0,
					-- layer=1 filter=16 channel=56
					-10, -5, 6, -1, -2, 2, -17, -10, -13,
					-- layer=1 filter=16 channel=57
					2, 2, -4, 11, 2, -16, -6, 3, 6,
					-- layer=1 filter=16 channel=58
					5, 5, -16, -5, -1, -5, 4, 0, 3,
					-- layer=1 filter=16 channel=59
					-22, -15, 4, 3, -11, 12, 4, -8, -5,
					-- layer=1 filter=16 channel=60
					-11, 3, -9, 9, -1, -11, -1, -6, 3,
					-- layer=1 filter=16 channel=61
					-22, 0, 17, -3, 4, -3, -15, 20, -10,
					-- layer=1 filter=16 channel=62
					-21, -2, -15, -3, 1, 3, -9, 7, -11,
					-- layer=1 filter=16 channel=63
					-15, -6, 8, -1, 0, 4, -14, 0, -7,
					-- layer=1 filter=17 channel=0
					-6, -18, -17, 18, -33, -36, -25, 39, -8,
					-- layer=1 filter=17 channel=1
					16, -12, -29, -29, 7, 5, 1, -3, 14,
					-- layer=1 filter=17 channel=2
					18, -15, -20, 38, -30, -29, -26, -4, 8,
					-- layer=1 filter=17 channel=3
					1, -30, -62, 11, -18, -40, 15, -14, -5,
					-- layer=1 filter=17 channel=4
					10, 10, 7, 33, 4, 3, 34, 15, 17,
					-- layer=1 filter=17 channel=5
					-7, -2, -1, 1, 14, -24, 1, 3, 2,
					-- layer=1 filter=17 channel=6
					23, 0, 6, -24, 55, 17, -26, -26, 21,
					-- layer=1 filter=17 channel=7
					4, 7, -5, -10, -11, 8, 23, 12, 28,
					-- layer=1 filter=17 channel=8
					6, -3, -13, -24, -3, 15, -10, -18, 8,
					-- layer=1 filter=17 channel=9
					14, 50, 6, -16, 43, 12, 11, 5, 18,
					-- layer=1 filter=17 channel=10
					10, -27, -37, 40, -19, -14, 1, 33, -24,
					-- layer=1 filter=17 channel=11
					-19, -6, -27, -18, -24, -34, 13, -40, -37,
					-- layer=1 filter=17 channel=12
					-30, -12, 0, -40, -19, -16, 6, -46, 22,
					-- layer=1 filter=17 channel=13
					-31, -11, -44, -24, -35, -28, -16, -8, -26,
					-- layer=1 filter=17 channel=14
					4, -23, -3, 21, -4, -20, -17, 3, 10,
					-- layer=1 filter=17 channel=15
					11, -38, -10, 58, -4, -71, 28, 69, 2,
					-- layer=1 filter=17 channel=16
					-14, 11, 17, 1, 29, 3, 24, -18, -14,
					-- layer=1 filter=17 channel=17
					19, 10, 1, -45, -12, 5, -13, -9, 30,
					-- layer=1 filter=17 channel=18
					-1, 12, 0, -11, 52, 6, -5, -28, 24,
					-- layer=1 filter=17 channel=19
					8, -3, -19, -19, 31, 22, 3, 10, 17,
					-- layer=1 filter=17 channel=20
					12, -43, -29, 29, -11, -61, -9, 51, -5,
					-- layer=1 filter=17 channel=21
					8, 2, -36, -63, 0, 32, 3, -15, -4,
					-- layer=1 filter=17 channel=22
					26, 9, -13, 31, 9, -12, 31, 8, 1,
					-- layer=1 filter=17 channel=23
					-34, -36, -19, 38, -41, -27, 5, 12, -4,
					-- layer=1 filter=17 channel=24
					2, -11, -18, 11, -5, -11, -1, 0, 0,
					-- layer=1 filter=17 channel=25
					5, -7, 6, 6, 28, -20, 33, 12, 13,
					-- layer=1 filter=17 channel=26
					0, 14, 25, 0, 25, 33, 4, -2, 22,
					-- layer=1 filter=17 channel=27
					-9, -13, -23, 1, 11, 9, -10, -5, 20,
					-- layer=1 filter=17 channel=28
					-38, -35, -49, -62, -22, -14, -1, -48, -19,
					-- layer=1 filter=17 channel=29
					-7, -17, 14, -18, 26, 6, -2, 9, 3,
					-- layer=1 filter=17 channel=30
					-34, -5, -29, -17, -5, -6, -4, -8, 10,
					-- layer=1 filter=17 channel=31
					8, -7, 6, 6, 14, 9, 7, 3, -13,
					-- layer=1 filter=17 channel=32
					6, -91, -18, -21, 69, -65, 17, -34, 0,
					-- layer=1 filter=17 channel=33
					-3, -27, -7, -10, -23, -14, -3, 4, 7,
					-- layer=1 filter=17 channel=34
					-3, -25, 9, 27, 20, 17, 17, -29, 20,
					-- layer=1 filter=17 channel=35
					-20, -13, -18, -7, -37, -7, -8, -1, 0,
					-- layer=1 filter=17 channel=36
					4, -67, -41, 15, -37, -70, -2, 19, -38,
					-- layer=1 filter=17 channel=37
					-30, 5, 31, 17, 44, 14, 48, -9, 24,
					-- layer=1 filter=17 channel=38
					-12, -27, -29, 19, -33, -41, -30, 5, -35,
					-- layer=1 filter=17 channel=39
					10, -55, -46, 39, 13, -20, 20, 45, 3,
					-- layer=1 filter=17 channel=40
					8, 26, 6, 5, 5, -33, -23, -20, -11,
					-- layer=1 filter=17 channel=41
					0, 0, 4, 11, -5, 5, 3, 12, -5,
					-- layer=1 filter=17 channel=42
					-10, -35, -36, 51, -16, -28, -22, 48, -19,
					-- layer=1 filter=17 channel=43
					-6, -17, 8, -31, 58, 43, -5, -3, 30,
					-- layer=1 filter=17 channel=44
					-24, -29, -5, 35, 5, -37, 18, 8, -43,
					-- layer=1 filter=17 channel=45
					11, 19, 45, 4, 74, 17, 13, -16, 16,
					-- layer=1 filter=17 channel=46
					-13, 19, 3, 13, 24, 28, 37, 38, 29,
					-- layer=1 filter=17 channel=47
					-16, 0, 41, -4, 50, -4, 35, -15, 22,
					-- layer=1 filter=17 channel=48
					-9, 17, 11, 1, 17, 11, 3, 21, 15,
					-- layer=1 filter=17 channel=49
					30, -30, -58, 50, -16, -79, 38, 82, 0,
					-- layer=1 filter=17 channel=50
					-28, -14, -10, 2, 3, -13, -6, 0, -4,
					-- layer=1 filter=17 channel=51
					12, -13, -15, -5, 4, -14, -4, -2, 14,
					-- layer=1 filter=17 channel=52
					5, -3, 10, 47, 26, 35, 2, -14, 18,
					-- layer=1 filter=17 channel=53
					77, 14, -46, -28, 25, -66, -16, -6, 12,
					-- layer=1 filter=17 channel=54
					-16, -6, 0, 14, 0, 2, -18, 0, 4,
					-- layer=1 filter=17 channel=55
					12, -4, -69, 10, -22, -23, 4, -22, -14,
					-- layer=1 filter=17 channel=56
					13, -15, 3, 3, 5, 19, 10, 43, 14,
					-- layer=1 filter=17 channel=57
					13, -8, 11, 4, 20, 19, 15, 0, 3,
					-- layer=1 filter=17 channel=58
					-17, 2, -3, 7, 12, 14, 8, 6, 3,
					-- layer=1 filter=17 channel=59
					46, 1, -5, -48, 61, -13, -14, 25, 53,
					-- layer=1 filter=17 channel=60
					4, 3, 9, 31, -22, 8, 25, 0, 11,
					-- layer=1 filter=17 channel=61
					59, 7, -29, -22, 29, -20, 37, 19, 30,
					-- layer=1 filter=17 channel=62
					22, 3, -11, -45, 62, 25, -14, -13, 29,
					-- layer=1 filter=17 channel=63
					15, 53, 16, 14, 53, 7, 10, 19, 24,
					-- layer=1 filter=18 channel=0
					-23, -9, -41, 0, 4, -19, 5, -3, 1,
					-- layer=1 filter=18 channel=1
					-10, -30, -4, -22, -32, 0, -52, -23, -2,
					-- layer=1 filter=18 channel=2
					-11, 6, -17, 3, 15, -13, 19, -10, 0,
					-- layer=1 filter=18 channel=3
					7, -8, -33, -9, 8, -26, -7, -20, -37,
					-- layer=1 filter=18 channel=4
					14, 0, 13, -23, 9, 35, -33, -22, 9,
					-- layer=1 filter=18 channel=5
					-3, -1, -18, 0, -23, -5, 10, -21, -34,
					-- layer=1 filter=18 channel=6
					-12, 29, 29, 3, -29, 18, 2, -53, -26,
					-- layer=1 filter=18 channel=7
					-6, -24, 10, -11, 25, 10, 23, -5, 26,
					-- layer=1 filter=18 channel=8
					-16, -7, -5, -25, -20, 0, -4, -19, 5,
					-- layer=1 filter=18 channel=9
					-29, -24, 21, -48, -77, -27, 13, -53, -15,
					-- layer=1 filter=18 channel=10
					-20, 6, -28, -2, -6, 1, -9, 9, -5,
					-- layer=1 filter=18 channel=11
					5, -4, -8, 28, -1, -6, 15, 5, 12,
					-- layer=1 filter=18 channel=12
					8, 9, -7, -6, -7, -20, -13, -18, -6,
					-- layer=1 filter=18 channel=13
					9, 25, -18, 14, 14, -27, 34, 19, -13,
					-- layer=1 filter=18 channel=14
					-20, -22, -29, 20, -20, -21, 13, -25, -33,
					-- layer=1 filter=18 channel=15
					30, -1, 24, 35, 11, 40, 26, 23, 37,
					-- layer=1 filter=18 channel=16
					7, 0, 0, -5, -27, 6, -12, 10, 18,
					-- layer=1 filter=18 channel=17
					-16, -1, -3, -37, -17, -12, -18, -25, -6,
					-- layer=1 filter=18 channel=18
					-4, 28, 14, -17, -41, 7, 5, -54, -65,
					-- layer=1 filter=18 channel=19
					-12, -12, -4, -42, -34, -14, -51, -47, -31,
					-- layer=1 filter=18 channel=20
					21, 35, 10, 14, 2, 19, 2, -5, 20,
					-- layer=1 filter=18 channel=21
					1, -2, 14, 17, -30, -10, 47, -7, -36,
					-- layer=1 filter=18 channel=22
					-78, -40, -62, -125, -128, -135, -84, -113, -128,
					-- layer=1 filter=18 channel=23
					-5, 12, 29, 4, 27, 25, 36, 21, 14,
					-- layer=1 filter=18 channel=24
					-28, -12, -19, -18, -22, -23, -34, -21, -21,
					-- layer=1 filter=18 channel=25
					27, 14, -4, 0, -23, 27, 19, -11, -15,
					-- layer=1 filter=18 channel=26
					-24, -11, 0, -23, -22, 21, -18, -10, -10,
					-- layer=1 filter=18 channel=27
					-18, 6, 10, -28, 13, 28, -23, 3, 12,
					-- layer=1 filter=18 channel=28
					21, 10, 3, 21, 45, 9, 43, 27, 24,
					-- layer=1 filter=18 channel=29
					4, 5, 14, -1, -2, 29, -32, -19, 6,
					-- layer=1 filter=18 channel=30
					4, -22, -1, 25, -2, -21, 0, 2, -28,
					-- layer=1 filter=18 channel=31
					7, 10, -1, -13, -5, 7, 15, -15, 0,
					-- layer=1 filter=18 channel=32
					-38, -51, -31, -66, -150, -10, -49, -78, -70,
					-- layer=1 filter=18 channel=33
					-27, -35, -26, -30, -25, 1, -52, -35, 3,
					-- layer=1 filter=18 channel=34
					-29, -62, -63, -105, -88, -55, -34, -95, -77,
					-- layer=1 filter=18 channel=35
					-2, 16, 12, 28, 26, 37, 4, 16, 40,
					-- layer=1 filter=18 channel=36
					21, 40, -2, 46, 5, 1, 49, 15, 19,
					-- layer=1 filter=18 channel=37
					-6, 3, -61, -54, -57, -43, 14, -59, -53,
					-- layer=1 filter=18 channel=38
					0, 0, -17, 26, 31, -16, 25, 11, 13,
					-- layer=1 filter=18 channel=39
					13, 51, 24, 33, 16, 11, 42, 43, 30,
					-- layer=1 filter=18 channel=40
					-54, -53, -36, -56, -54, -68, -21, -88, -43,
					-- layer=1 filter=18 channel=41
					-18, 3, -18, -6, -11, -26, 1, -23, -25,
					-- layer=1 filter=18 channel=42
					-23, 35, 15, 48, 57, 29, 66, 40, 38,
					-- layer=1 filter=18 channel=43
					-23, 24, -23, 16, -19, 13, 66, -2, -38,
					-- layer=1 filter=18 channel=44
					37, 9, -3, -44, -35, 0, -9, -23, -3,
					-- layer=1 filter=18 channel=45
					-2, 42, -27, 1, -28, 12, 13, -10, -56,
					-- layer=1 filter=18 channel=46
					-60, -98, -66, -9, -88, -106, 30, -37, -92,
					-- layer=1 filter=18 channel=47
					-4, -24, -51, -44, -58, -41, -3, -57, -88,
					-- layer=1 filter=18 channel=48
					12, 0, 11, 16, -4, -5, 26, 6, -18,
					-- layer=1 filter=18 channel=49
					31, 29, 21, 6, 14, 29, 34, 16, 31,
					-- layer=1 filter=18 channel=50
					0, 21, 10, 12, -2, -5, 36, 10, -23,
					-- layer=1 filter=18 channel=51
					2, 24, 29, 19, 24, 30, 0, 21, 25,
					-- layer=1 filter=18 channel=52
					-68, -122, -123, -80, -101, -141, -66, -95, -90,
					-- layer=1 filter=18 channel=53
					-60, -97, -42, -130, -171, -54, -74, -164, -124,
					-- layer=1 filter=18 channel=54
					12, 11, -5, 29, -2, 3, 32, 14, -12,
					-- layer=1 filter=18 channel=55
					0, -38, -51, -12, -24, -51, 17, -38, -46,
					-- layer=1 filter=18 channel=56
					7, 0, -6, 9, 16, 20, -21, 25, 15,
					-- layer=1 filter=18 channel=57
					-2, 10, -21, -32, -8, -8, -30, -18, -5,
					-- layer=1 filter=18 channel=58
					7, -7, -29, -15, -10, -38, -13, -39, -35,
					-- layer=1 filter=18 channel=59
					-43, -10, 20, -73, -93, 59, -5, -53, -55,
					-- layer=1 filter=18 channel=60
					-16, -19, -8, -45, -71, -61, -21, -56, -56,
					-- layer=1 filter=18 channel=61
					-76, -94, -9, -90, -141, -18, -9, -126, -58,
					-- layer=1 filter=18 channel=62
					-15, 14, 28, 44, -21, 29, 58, -13, -33,
					-- layer=1 filter=18 channel=63
					-99, -62, -53, -39, -101, -92, -4, -52, -54,
					-- layer=1 filter=19 channel=0
					6, 15, 23, -22, 1, 15, 0, -22, 4,
					-- layer=1 filter=19 channel=1
					12, -2, 29, 19, -7, 2, -1, -16, 2,
					-- layer=1 filter=19 channel=2
					23, 20, 23, -14, 24, 18, 12, 7, 18,
					-- layer=1 filter=19 channel=3
					-21, 4, 11, -48, -24, 24, -30, -25, -11,
					-- layer=1 filter=19 channel=4
					5, 16, 21, -8, -8, 28, 5, -13, -15,
					-- layer=1 filter=19 channel=5
					-2, 7, 7, -36, -8, -18, -25, -23, -40,
					-- layer=1 filter=19 channel=6
					-10, -57, -11, -16, 13, -52, 22, 21, -6,
					-- layer=1 filter=19 channel=7
					-15, 0, 19, 11, 9, 10, 7, 16, 13,
					-- layer=1 filter=19 channel=8
					6, -8, 22, 0, 10, 1, 32, 19, 24,
					-- layer=1 filter=19 channel=9
					28, -5, 40, 17, 7, -7, -10, -5, -14,
					-- layer=1 filter=19 channel=10
					6, -4, 12, -20, -14, 11, 4, -20, -11,
					-- layer=1 filter=19 channel=11
					-23, -17, -27, -27, -4, -25, -9, 4, 13,
					-- layer=1 filter=19 channel=12
					-21, -21, 8, -39, -41, -44, -30, -49, -44,
					-- layer=1 filter=19 channel=13
					3, -3, 4, -13, 0, -7, -10, -15, -15,
					-- layer=1 filter=19 channel=14
					45, 37, 35, 6, 28, 31, 22, 42, 58,
					-- layer=1 filter=19 channel=15
					-15, 10, 20, -7, 14, 14, -11, -30, 0,
					-- layer=1 filter=19 channel=16
					-16, -29, -22, -5, -12, 10, 8, -11, -20,
					-- layer=1 filter=19 channel=17
					21, -14, 31, -3, -11, -24, 0, -43, -29,
					-- layer=1 filter=19 channel=18
					-28, -29, 18, -29, 0, -49, 2, 16, -17,
					-- layer=1 filter=19 channel=19
					23, 11, 22, 8, -14, -8, 10, -29, -30,
					-- layer=1 filter=19 channel=20
					-14, -27, -15, 12, -39, -18, -16, -35, -13,
					-- layer=1 filter=19 channel=21
					-17, -90, 11, -1, 29, -24, 48, 51, 33,
					-- layer=1 filter=19 channel=22
					5, 8, 16, 14, 33, 29, 4, 5, -2,
					-- layer=1 filter=19 channel=23
					-3, 31, 7, 13, 44, 33, -24, 0, 4,
					-- layer=1 filter=19 channel=24
					18, 29, 36, 24, -19, -6, -5, -47, -31,
					-- layer=1 filter=19 channel=25
					-35, -9, -26, -42, 17, -48, -9, -2, -27,
					-- layer=1 filter=19 channel=26
					-35, -37, -32, -17, -21, -18, -29, 7, -34,
					-- layer=1 filter=19 channel=27
					14, -6, 24, 4, -14, -21, 10, -16, -12,
					-- layer=1 filter=19 channel=28
					-34, -44, 2, -30, -26, -42, 12, 25, -13,
					-- layer=1 filter=19 channel=29
					-10, -13, -3, 0, -21, -18, -19, -11, -28,
					-- layer=1 filter=19 channel=30
					-7, 22, 17, -22, -15, 20, -58, -13, -35,
					-- layer=1 filter=19 channel=31
					-1, 7, -8, -3, -9, -3, -4, 3, 0,
					-- layer=1 filter=19 channel=32
					6, -34, -37, -24, 74, 0, -1, -11, -5,
					-- layer=1 filter=19 channel=33
					8, 6, 16, 19, -12, -33, 6, -55, -17,
					-- layer=1 filter=19 channel=34
					10, -28, 6, 2, -12, -51, -18, -1, -23,
					-- layer=1 filter=19 channel=35
					4, 17, 8, -13, 0, 13, -5, -19, 1,
					-- layer=1 filter=19 channel=36
					0, -6, 8, -29, -18, -20, -45, -32, -20,
					-- layer=1 filter=19 channel=37
					-53, -41, -28, -50, -27, -16, 5, 0, -11,
					-- layer=1 filter=19 channel=38
					-17, 22, 7, -45, -2, 0, -34, -40, -26,
					-- layer=1 filter=19 channel=39
					8, 32, 24, 30, 38, 48, -6, 10, -3,
					-- layer=1 filter=19 channel=40
					29, 15, 39, 16, 25, 6, 21, 13, 11,
					-- layer=1 filter=19 channel=41
					17, 9, 3, 2, -10, -26, -43, -23, -35,
					-- layer=1 filter=19 channel=42
					6, 28, 33, -3, 32, 55, 0, 36, 36,
					-- layer=1 filter=19 channel=43
					-54, -73, -1, -22, -6, -35, 43, 38, 12,
					-- layer=1 filter=19 channel=44
					-38, -14, -18, 0, 8, -7, -22, -16, -15,
					-- layer=1 filter=19 channel=45
					-43, -14, 3, -54, 6, -9, 27, 23, 9,
					-- layer=1 filter=19 channel=46
					31, 40, 15, 0, 6, -18, -51, -55, -48,
					-- layer=1 filter=19 channel=47
					-20, -11, -17, -57, -6, -75, -17, -25, -22,
					-- layer=1 filter=19 channel=48
					27, 36, 31, -1, -4, -3, -37, -29, -30,
					-- layer=1 filter=19 channel=49
					-28, 2, -14, 17, 22, 28, -12, -8, 3,
					-- layer=1 filter=19 channel=50
					15, 32, 15, -9, 2, -2, -40, -39, -30,
					-- layer=1 filter=19 channel=51
					23, 12, 20, -13, -17, -20, -5, -20, -34,
					-- layer=1 filter=19 channel=52
					63, 28, 32, 20, -5, -17, 22, 18, 1,
					-- layer=1 filter=19 channel=53
					-25, -80, 17, 22, -52, 9, 10, 6, 27,
					-- layer=1 filter=19 channel=54
					24, 32, 8, 9, 15, 0, -44, -35, -40,
					-- layer=1 filter=19 channel=55
					-8, -1, -3, -24, -25, -9, -58, -36, -25,
					-- layer=1 filter=19 channel=56
					15, 3, 14, -22, -3, 6, 12, 0, -16,
					-- layer=1 filter=19 channel=57
					-1, 7, 17, 3, -20, 0, -3, -25, -1,
					-- layer=1 filter=19 channel=58
					2, -7, -4, -15, -43, -42, -27, -47, -41,
					-- layer=1 filter=19 channel=59
					10, -107, 7, 22, -18, -3, 39, 31, 8,
					-- layer=1 filter=19 channel=60
					104, 72, 76, 71, 84, 88, 23, 36, 62,
					-- layer=1 filter=19 channel=61
					2, -75, 16, 34, 26, 6, 22, 34, 27,
					-- layer=1 filter=19 channel=62
					-16, -92, 5, -17, 23, -5, 36, 39, 41,
					-- layer=1 filter=19 channel=63
					30, 39, 31, 21, 18, 26, -24, -15, -29,
					-- layer=1 filter=20 channel=0
					10, -16, -28, -28, 17, -12, 64, 29, -20,
					-- layer=1 filter=20 channel=1
					-39, 8, -10, -115, 4, -4, -54, 31, -1,
					-- layer=1 filter=20 channel=2
					-14, 30, -8, -65, -26, -13, 44, 33, 21,
					-- layer=1 filter=20 channel=3
					-8, -41, 20, -3, -15, -10, -9, -30, -25,
					-- layer=1 filter=20 channel=4
					-16, 0, -67, -23, -1, -61, -30, 11, -1,
					-- layer=1 filter=20 channel=5
					-20, -71, -22, -42, -24, -1, -19, -56, 0,
					-- layer=1 filter=20 channel=6
					-20, -1, 49, -14, 34, 83, 10, 22, 54,
					-- layer=1 filter=20 channel=7
					-13, -54, -10, 4, -48, -33, -17, -40, -33,
					-- layer=1 filter=20 channel=8
					-52, -47, 11, -22, -6, 39, -19, -31, -12,
					-- layer=1 filter=20 channel=9
					-51, -2, 9, -26, 2, 55, -65, -50, -23,
					-- layer=1 filter=20 channel=10
					-17, 17, -49, -20, 23, -10, 21, -8, 18,
					-- layer=1 filter=20 channel=11
					82, 60, 38, 74, 51, 12, 70, 56, 38,
					-- layer=1 filter=20 channel=12
					-33, -34, -18, 7, -61, -8, -34, -32, -29,
					-- layer=1 filter=20 channel=13
					-4, 8, 7, -27, -7, 4, -39, -30, -2,
					-- layer=1 filter=20 channel=14
					-24, 38, -19, -59, -40, 16, 9, 23, 29,
					-- layer=1 filter=20 channel=15
					51, 28, -15, 59, 51, -11, 15, 38, -27,
					-- layer=1 filter=20 channel=16
					34, 46, -14, 55, -6, -24, 18, -2, -31,
					-- layer=1 filter=20 channel=17
					-66, -6, 0, -67, 13, 7, -110, -26, -46,
					-- layer=1 filter=20 channel=18
					-113, -45, 4, -35, 32, 43, -29, -34, 28,
					-- layer=1 filter=20 channel=19
					-104, -54, -6, -118, -24, -14, -52, -34, 1,
					-- layer=1 filter=20 channel=20
					-12, 3, -34, 10, 37, -20, -41, 19, -9,
					-- layer=1 filter=20 channel=21
					-6, 12, 37, 23, 40, 74, 5, 32, 40,
					-- layer=1 filter=20 channel=22
					-5, -4, 34, 35, -20, 59, 15, -5, 10,
					-- layer=1 filter=20 channel=23
					42, 1, 12, 70, 84, -8, 88, 49, 3,
					-- layer=1 filter=20 channel=24
					-52, -29, -28, -74, -47, -27, -67, -46, -7,
					-- layer=1 filter=20 channel=25
					-10, 26, 16, -15, 5, 35, -27, 0, 35,
					-- layer=1 filter=20 channel=26
					-79, -28, -34, -10, 13, -17, -50, -22, -7,
					-- layer=1 filter=20 channel=27
					-50, -29, -26, -37, -33, -15, -27, -32, -20,
					-- layer=1 filter=20 channel=28
					13, 15, 29, 38, 4, 50, 15, -20, 1,
					-- layer=1 filter=20 channel=29
					-72, 2, -56, -40, -1, -25, -81, -47, 0,
					-- layer=1 filter=20 channel=30
					7, -73, -43, 21, -12, -32, 4, -48, -55,
					-- layer=1 filter=20 channel=31
					-6, 4, 0, 5, -7, 1, 13, -13, -4,
					-- layer=1 filter=20 channel=32
					52, 76, 53, -14, 33, 15, -68, -46, 26,
					-- layer=1 filter=20 channel=33
					-60, -4, 0, -74, 12, -1, -83, -1, 11,
					-- layer=1 filter=20 channel=34
					0, 18, 11, -13, -22, 36, -30, 1, 48,
					-- layer=1 filter=20 channel=35
					-46, -19, -20, -73, -51, -67, -16, -23, -42,
					-- layer=1 filter=20 channel=36
					23, 29, -25, 26, 50, 28, -23, 32, 24,
					-- layer=1 filter=20 channel=37
					-26, 28, -46, -19, -29, 29, -1, -26, 5,
					-- layer=1 filter=20 channel=38
					4, -34, 12, -5, 39, -10, 0, 6, -22,
					-- layer=1 filter=20 channel=39
					40, 12, -7, 58, 75, -18, 29, 33, -6,
					-- layer=1 filter=20 channel=40
					-29, 10, 25, -23, -34, 4, -50, -6, -49,
					-- layer=1 filter=20 channel=41
					-77, -51, -54, -69, -62, -30, -110, -48, -42,
					-- layer=1 filter=20 channel=42
					33, 36, 13, 65, 91, -12, 102, 2, 3,
					-- layer=1 filter=20 channel=43
					-67, 16, 6, 6, 3, 69, -7, -18, 33,
					-- layer=1 filter=20 channel=44
					28, 51, -27, 52, 48, -7, 21, 16, -26,
					-- layer=1 filter=20 channel=45
					-46, 22, 28, 8, 40, 53, 24, -20, 18,
					-- layer=1 filter=20 channel=46
					-7, -83, -17, -3, -22, -19, -40, -29, -36,
					-- layer=1 filter=20 channel=47
					-27, 14, -14, -24, -29, 23, -52, -21, 8,
					-- layer=1 filter=20 channel=48
					-33, 4, 6, -46, -21, 0, -36, -23, 7,
					-- layer=1 filter=20 channel=49
					35, 57, -1, 82, 77, -3, 14, 37, -38,
					-- layer=1 filter=20 channel=50
					-37, -33, -21, -46, -21, -17, -35, -35, -21,
					-- layer=1 filter=20 channel=51
					-66, -26, -36, -82, -38, -38, -68, -45, -17,
					-- layer=1 filter=20 channel=52
					-6, 12, 25, -1, -18, 12, -25, -15, 45,
					-- layer=1 filter=20 channel=53
					6, 15, 56, 56, 62, 68, -14, 46, -11,
					-- layer=1 filter=20 channel=54
					-49, -46, -42, -40, -24, -43, -30, -22, -3,
					-- layer=1 filter=20 channel=55
					34, -15, 29, 19, 2, 17, 12, -36, -55,
					-- layer=1 filter=20 channel=56
					-18, 3, -58, -15, -18, -68, -2, -9, -39,
					-- layer=1 filter=20 channel=57
					-55, -27, -60, -42, -24, -52, -42, -19, -16,
					-- layer=1 filter=20 channel=58
					-91, -40, -38, -56, -26, 29, -69, -23, 9,
					-- layer=1 filter=20 channel=59
					3, 21, 62, 11, 86, 106, 14, 53, 12,
					-- layer=1 filter=20 channel=60
					-70, -31, 5, -7, -16, -25, -18, -41, -17,
					-- layer=1 filter=20 channel=61
					22, 20, 49, 48, 52, 58, -9, -11, -20,
					-- layer=1 filter=20 channel=62
					-29, 16, 64, 0, 61, 98, 1, 14, 38,
					-- layer=1 filter=20 channel=63
					-39, -67, -6, -35, -66, 7, -30, -68, -46,
					-- layer=1 filter=21 channel=0
					-9, -14, -10, 11, 11, 3, -7, -8, -4,
					-- layer=1 filter=21 channel=1
					10, -2, 11, 2, 3, 3, 1, 0, 9,
					-- layer=1 filter=21 channel=2
					-3, -11, -10, -13, -17, 7, 11, -9, -1,
					-- layer=1 filter=21 channel=3
					-6, -12, -14, -10, 7, 1, -10, -12, 5,
					-- layer=1 filter=21 channel=4
					1, 10, -13, -14, -2, -13, 2, -10, 6,
					-- layer=1 filter=21 channel=5
					2, 5, 0, 1, -16, 11, 0, 3, 8,
					-- layer=1 filter=21 channel=6
					9, -7, -4, 5, -16, -8, 6, -12, -5,
					-- layer=1 filter=21 channel=7
					-5, 9, 1, 3, -15, -4, -5, 10, -7,
					-- layer=1 filter=21 channel=8
					11, -3, 10, 9, 12, -7, -15, -12, -16,
					-- layer=1 filter=21 channel=9
					6, 8, -13, -9, -1, 3, -10, -17, -9,
					-- layer=1 filter=21 channel=10
					-16, 1, -2, 3, 2, -2, 0, 1, 13,
					-- layer=1 filter=21 channel=11
					-2, -11, 6, -15, 4, 8, 4, -18, -15,
					-- layer=1 filter=21 channel=12
					3, -15, 5, -12, -9, -14, -15, -16, -16,
					-- layer=1 filter=21 channel=13
					10, -7, 7, 12, -3, 7, -13, 8, -8,
					-- layer=1 filter=21 channel=14
					2, -4, 0, 1, -23, -17, -9, -11, -15,
					-- layer=1 filter=21 channel=15
					9, -5, -2, -4, -13, -6, 9, -17, -11,
					-- layer=1 filter=21 channel=16
					-11, -11, 4, 1, 3, 14, -5, 8, 4,
					-- layer=1 filter=21 channel=17
					-11, 6, 7, 0, -6, 3, -5, -16, 6,
					-- layer=1 filter=21 channel=18
					5, -9, -4, -4, -4, -7, -1, -1, -4,
					-- layer=1 filter=21 channel=19
					-1, 0, -15, 5, 5, 10, 12, -10, 4,
					-- layer=1 filter=21 channel=20
					-11, 0, -15, -4, -4, -16, -12, 7, -5,
					-- layer=1 filter=21 channel=21
					9, -14, -7, 4, 5, 11, -14, 4, -14,
					-- layer=1 filter=21 channel=22
					3, -5, 0, -5, 1, -20, -16, 4, 7,
					-- layer=1 filter=21 channel=23
					-5, -11, 6, -13, 3, 2, 4, -14, 9,
					-- layer=1 filter=21 channel=24
					3, 11, 4, -4, -10, 3, -9, 12, -9,
					-- layer=1 filter=21 channel=25
					1, -10, -6, -14, -9, -4, 0, -22, 5,
					-- layer=1 filter=21 channel=26
					-12, 8, -3, -8, -13, 7, -3, -5, -11,
					-- layer=1 filter=21 channel=27
					-11, -10, 1, -5, -2, -2, 4, 8, -8,
					-- layer=1 filter=21 channel=28
					-7, 2, 0, 3, -4, -11, 6, -13, -18,
					-- layer=1 filter=21 channel=29
					4, 1, 1, -2, -13, -6, -4, 6, -8,
					-- layer=1 filter=21 channel=30
					-9, -14, 12, 9, -9, 9, 0, 10, -2,
					-- layer=1 filter=21 channel=31
					-13, -8, 2, 12, 4, -14, -1, -7, 6,
					-- layer=1 filter=21 channel=32
					-18, 5, -5, 7, 12, -9, -2, 8, 4,
					-- layer=1 filter=21 channel=33
					-6, -4, -13, -10, 3, 10, -3, -13, 8,
					-- layer=1 filter=21 channel=34
					-11, -1, 6, 4, -11, -1, -11, 5, 10,
					-- layer=1 filter=21 channel=35
					-15, -4, -5, 12, 8, -15, -9, -7, -8,
					-- layer=1 filter=21 channel=36
					-8, -11, 4, -19, 13, -3, 0, 1, -9,
					-- layer=1 filter=21 channel=37
					-4, 3, 4, -4, -6, -4, -3, -4, -7,
					-- layer=1 filter=21 channel=38
					12, -16, -9, 3, -15, 3, -6, -5, 11,
					-- layer=1 filter=21 channel=39
					10, 7, -9, -10, 0, 5, -16, -11, -5,
					-- layer=1 filter=21 channel=40
					9, 7, 12, -13, 5, -4, -17, 7, -10,
					-- layer=1 filter=21 channel=41
					2, -15, -4, -5, 0, 9, 9, -5, 4,
					-- layer=1 filter=21 channel=42
					4, -10, -15, 4, -1, -19, -14, -9, -19,
					-- layer=1 filter=21 channel=43
					0, -10, -5, 5, 5, 3, -1, 7, 2,
					-- layer=1 filter=21 channel=44
					8, -14, -12, -2, -16, 4, -14, -3, -15,
					-- layer=1 filter=21 channel=45
					-9, 8, -21, 1, 12, -2, 8, -6, 10,
					-- layer=1 filter=21 channel=46
					-15, -1, 4, 1, -1, -6, 11, 0, -2,
					-- layer=1 filter=21 channel=47
					2, 3, -2, 0, 3, 13, 0, 7, -3,
					-- layer=1 filter=21 channel=48
					-3, 7, -10, -15, -2, -5, -6, -11, -6,
					-- layer=1 filter=21 channel=49
					-4, -10, -13, -15, -18, 3, 7, -10, 7,
					-- layer=1 filter=21 channel=50
					-3, -8, 12, -7, -15, -7, -14, -10, 10,
					-- layer=1 filter=21 channel=51
					-2, 6, 9, -16, 6, -9, 12, -12, -15,
					-- layer=1 filter=21 channel=52
					-3, -23, -1, 1, 8, -5, -2, -12, 8,
					-- layer=1 filter=21 channel=53
					-3, -6, 2, 0, 3, 3, 7, -2, 3,
					-- layer=1 filter=21 channel=54
					-6, -9, 2, 5, 0, 3, -8, -12, 11,
					-- layer=1 filter=21 channel=55
					-2, -8, -13, 8, -1, -1, 1, 0, 2,
					-- layer=1 filter=21 channel=56
					-15, -10, -12, 3, 2, 12, 0, -6, -2,
					-- layer=1 filter=21 channel=57
					0, 2, -15, -3, -1, 3, 4, 0, 1,
					-- layer=1 filter=21 channel=58
					-6, 3, 3, -8, 4, 6, 11, -1, -9,
					-- layer=1 filter=21 channel=59
					2, -1, -8, -4, 7, 1, -3, 6, 7,
					-- layer=1 filter=21 channel=60
					-12, 5, -2, -14, 10, -13, -12, 1, 4,
					-- layer=1 filter=21 channel=61
					0, 2, 0, -12, 1, -20, 3, -13, 9,
					-- layer=1 filter=21 channel=62
					0, -11, -13, 2, -5, -1, -1, 7, -14,
					-- layer=1 filter=21 channel=63
					8, -3, -7, -10, 7, 8, -16, 3, 3,
					-- layer=1 filter=22 channel=0
					13, -6, 11, 1, 6, -12, 13, -1, 4,
					-- layer=1 filter=22 channel=1
					-9, 1, 11, 8, 9, 12, -2, -9, 0,
					-- layer=1 filter=22 channel=2
					-5, 11, -7, -3, 0, -8, 9, 9, -12,
					-- layer=1 filter=22 channel=3
					-4, 7, 5, 1, -14, 5, 9, -3, 0,
					-- layer=1 filter=22 channel=4
					-7, -7, 3, 6, -12, 9, 4, 11, -9,
					-- layer=1 filter=22 channel=5
					-5, 0, -3, -2, -11, 2, 9, -12, 8,
					-- layer=1 filter=22 channel=6
					14, 9, 4, 10, -5, 6, -13, 1, 5,
					-- layer=1 filter=22 channel=7
					-10, -4, -11, 3, 9, 0, -13, -13, -4,
					-- layer=1 filter=22 channel=8
					0, 11, -2, -3, -8, -8, -5, -9, 11,
					-- layer=1 filter=22 channel=9
					-15, -1, -6, -12, 4, -11, 9, 6, 1,
					-- layer=1 filter=22 channel=10
					2, -14, -9, 5, -14, -4, 6, 12, 6,
					-- layer=1 filter=22 channel=11
					-8, -9, -7, -1, 7, -11, -10, 7, -5,
					-- layer=1 filter=22 channel=12
					-14, -17, -6, -2, 10, 6, -3, 10, 11,
					-- layer=1 filter=22 channel=13
					-4, 5, -9, 3, -11, 0, -15, -1, 6,
					-- layer=1 filter=22 channel=14
					-8, -2, -16, -13, 10, 10, -16, 5, 2,
					-- layer=1 filter=22 channel=15
					6, -1, -1, -3, 0, -19, -8, -6, 5,
					-- layer=1 filter=22 channel=16
					9, -10, 13, -3, 13, -5, -10, -3, 0,
					-- layer=1 filter=22 channel=17
					-15, 4, -6, 11, 3, -9, 10, 2, -16,
					-- layer=1 filter=22 channel=18
					0, -10, 0, 9, -12, 2, -15, -1, -6,
					-- layer=1 filter=22 channel=19
					-5, -14, -8, -8, -8, -2, 3, -11, 4,
					-- layer=1 filter=22 channel=20
					-11, 12, 10, -7, -3, -1, -14, -3, 0,
					-- layer=1 filter=22 channel=21
					12, -3, -5, -13, 5, 11, 4, -15, 10,
					-- layer=1 filter=22 channel=22
					-6, -12, -12, 1, 0, -7, 0, -12, -4,
					-- layer=1 filter=22 channel=23
					-12, -3, -7, -11, -11, 0, -8, -5, 0,
					-- layer=1 filter=22 channel=24
					-5, 0, 9, -4, 5, 6, 4, -4, -7,
					-- layer=1 filter=22 channel=25
					-16, -14, 10, 11, -5, 1, 4, -17, -11,
					-- layer=1 filter=22 channel=26
					6, 5, -5, -9, -8, -5, -2, 14, 1,
					-- layer=1 filter=22 channel=27
					-15, -11, 0, -10, -10, -3, 5, -7, -12,
					-- layer=1 filter=22 channel=28
					1, -7, -8, 6, 2, -8, -5, 1, 7,
					-- layer=1 filter=22 channel=29
					-3, 4, -17, -11, -3, -6, 3, 0, -5,
					-- layer=1 filter=22 channel=30
					2, -11, 9, 11, -7, 11, -14, 12, -2,
					-- layer=1 filter=22 channel=31
					1, -11, -13, 13, 7, 7, 1, 0, 12,
					-- layer=1 filter=22 channel=32
					-2, -5, 7, 0, 3, 0, 11, 3, 7,
					-- layer=1 filter=22 channel=33
					-16, -6, 12, -3, 10, -16, -14, -1, 1,
					-- layer=1 filter=22 channel=34
					7, -1, -4, -3, -14, -10, 12, -2, -16,
					-- layer=1 filter=22 channel=35
					5, 3, 8, -9, -4, 12, 0, -16, 1,
					-- layer=1 filter=22 channel=36
					9, -16, 11, -9, 8, 0, -13, 7, 0,
					-- layer=1 filter=22 channel=37
					6, 5, 10, 8, 4, 0, -16, -10, -10,
					-- layer=1 filter=22 channel=38
					-2, -12, -6, -17, -18, -17, -12, -6, -17,
					-- layer=1 filter=22 channel=39
					4, 4, 6, -14, -14, -1, -6, -8, -9,
					-- layer=1 filter=22 channel=40
					8, -6, 5, -14, -7, -12, 4, 9, 5,
					-- layer=1 filter=22 channel=41
					4, -7, -11, -9, 0, -3, -3, 7, -16,
					-- layer=1 filter=22 channel=42
					-5, 8, 1, 12, -17, -6, -3, -15, -15,
					-- layer=1 filter=22 channel=43
					0, 10, -9, -13, 6, 0, 9, -7, -13,
					-- layer=1 filter=22 channel=44
					6, -6, -2, 3, -10, -6, -2, 13, 1,
					-- layer=1 filter=22 channel=45
					-12, -9, -8, -12, 13, -1, -8, -7, 13,
					-- layer=1 filter=22 channel=46
					-6, 15, -10, -3, -6, -4, -6, -13, 6,
					-- layer=1 filter=22 channel=47
					-9, -11, 7, -1, -8, 12, 0, 4, 12,
					-- layer=1 filter=22 channel=48
					-5, -19, -4, -17, 8, 3, -14, 6, -6,
					-- layer=1 filter=22 channel=49
					8, -1, -5, -16, -16, -1, -12, 11, 1,
					-- layer=1 filter=22 channel=50
					10, 3, -11, -4, -11, 10, -7, 1, -7,
					-- layer=1 filter=22 channel=51
					-8, 2, 3, -16, 7, 6, -13, 7, -14,
					-- layer=1 filter=22 channel=52
					-4, -17, 8, -6, -5, -4, -16, 9, -3,
					-- layer=1 filter=22 channel=53
					-1, 2, -1, -1, 9, 9, 2, 10, -8,
					-- layer=1 filter=22 channel=54
					3, 9, 11, 6, 0, -2, 5, -6, -10,
					-- layer=1 filter=22 channel=55
					-7, -15, -4, -14, -13, -17, 9, -3, -9,
					-- layer=1 filter=22 channel=56
					8, -11, -13, 14, 5, 14, -14, 8, -9,
					-- layer=1 filter=22 channel=57
					-8, 7, -1, 3, 0, -10, 12, 4, -9,
					-- layer=1 filter=22 channel=58
					7, -4, -10, -2, 8, -4, -3, 4, -9,
					-- layer=1 filter=22 channel=59
					-1, -9, -1, 0, -11, -5, 8, 7, -15,
					-- layer=1 filter=22 channel=60
					-12, -15, -12, 10, 10, 3, -10, 2, 1,
					-- layer=1 filter=22 channel=61
					-6, -5, 2, 8, -7, 2, -5, 10, -9,
					-- layer=1 filter=22 channel=62
					11, -15, -13, 3, -14, -6, 0, 9, 3,
					-- layer=1 filter=22 channel=63
					5, -5, 7, 0, -5, -12, -9, 11, -13,
					-- layer=1 filter=23 channel=0
					10, -13, 43, -11, -18, 18, 15, -41, 19,
					-- layer=1 filter=23 channel=1
					25, 0, -8, 15, -8, -15, 10, 30, -52,
					-- layer=1 filter=23 channel=2
					-2, -28, 21, -8, -4, 14, 16, -12, -16,
					-- layer=1 filter=23 channel=3
					2, -18, -58, -3, -1, -46, 21, 15, -46,
					-- layer=1 filter=23 channel=4
					3, -24, 26, 7, -50, 36, -10, -29, 0,
					-- layer=1 filter=23 channel=5
					5, 15, 4, -6, 7, -10, -2, 18, -13,
					-- layer=1 filter=23 channel=6
					17, 18, -48, 18, 53, -59, -6, 37, -31,
					-- layer=1 filter=23 channel=7
					15, 1, -24, -4, 15, -7, 22, 1, 8,
					-- layer=1 filter=23 channel=8
					4, 5, -40, 19, 24, -60, 0, 32, -12,
					-- layer=1 filter=23 channel=9
					28, 51, -60, -3, 53, -71, 4, 59, -54,
					-- layer=1 filter=23 channel=10
					0, -42, 21, -18, -19, 15, -24, -56, 0,
					-- layer=1 filter=23 channel=11
					5, -6, 12, 28, -31, 42, 8, -33, 23,
					-- layer=1 filter=23 channel=12
					-28, 12, -14, 10, -5, -16, 20, -1, -14,
					-- layer=1 filter=23 channel=13
					12, -9, -35, 21, 13, -29, 29, -1, -13,
					-- layer=1 filter=23 channel=14
					10, -21, 10, 1, -16, 8, 1, -38, -32,
					-- layer=1 filter=23 channel=15
					-39, -27, 29, -40, -57, 69, -75, -95, 66,
					-- layer=1 filter=23 channel=16
					-13, -40, -8, -1, -33, 19, 29, -7, 12,
					-- layer=1 filter=23 channel=17
					-1, 14, -39, 11, 4, -12, 23, 12, -51,
					-- layer=1 filter=23 channel=18
					5, -1, -51, 2, 27, -42, 21, -4, -34,
					-- layer=1 filter=23 channel=19
					10, -10, 8, -1, -8, -19, 6, 0, -31,
					-- layer=1 filter=23 channel=20
					23, -65, 14, 5, -52, 17, -8, -73, 23,
					-- layer=1 filter=23 channel=21
					1, 44, -121, 0, 59, -107, -34, 39, -50,
					-- layer=1 filter=23 channel=22
					8, 49, -58, -34, 41, -101, -8, 37, -42,
					-- layer=1 filter=23 channel=23
					-33, -21, 38, -8, -22, 31, -18, -40, 31,
					-- layer=1 filter=23 channel=24
					-1, 7, -6, 13, 0, -17, -7, -25, -28,
					-- layer=1 filter=23 channel=25
					9, -36, -3, 2, -11, -2, 26, 2, -11,
					-- layer=1 filter=23 channel=26
					4, -15, 4, 3, -23, 2, -1, -11, -24,
					-- layer=1 filter=23 channel=27
					10, 8, -2, 19, 19, -10, 30, 9, -1,
					-- layer=1 filter=23 channel=28
					1, 26, -79, 10, 21, -39, 15, 35, 1,
					-- layer=1 filter=23 channel=29
					-2, -2, 0, 12, 1, 12, 19, -5, 2,
					-- layer=1 filter=23 channel=30
					0, 22, 0, 8, 5, -19, -8, 6, 6,
					-- layer=1 filter=23 channel=31
					-13, 3, -14, 4, 7, 12, 12, 10, 11,
					-- layer=1 filter=23 channel=32
					59, 166, 64, -18, 182, 104, 10, 109, 36,
					-- layer=1 filter=23 channel=33
					21, -12, 6, 19, -5, 14, 20, 16, -34,
					-- layer=1 filter=23 channel=34
					0, -40, -9, -21, -35, -9, 3, -20, -5,
					-- layer=1 filter=23 channel=35
					14, -7, 10, 8, 5, 8, 30, 6, 26,
					-- layer=1 filter=23 channel=36
					16, -75, 40, 9, -45, 55, -16, -53, 34,
					-- layer=1 filter=23 channel=37
					-26, -23, -34, -23, -32, -4, -1, -38, -8,
					-- layer=1 filter=23 channel=38
					-6, -51, 10, 5, -43, 17, 23, -66, 1,
					-- layer=1 filter=23 channel=39
					-29, -16, 34, -9, -36, 63, -69, -74, 33,
					-- layer=1 filter=23 channel=40
					13, 25, -48, 4, 42, -72, 4, 24, -53,
					-- layer=1 filter=23 channel=41
					15, -19, -11, 7, -23, -7, -3, -8, -30,
					-- layer=1 filter=23 channel=42
					-12, -9, 36, -12, 0, 54, -5, -14, 52,
					-- layer=1 filter=23 channel=43
					-14, 16, -70, -4, 28, -48, -3, 12, -14,
					-- layer=1 filter=23 channel=44
					-29, 6, 28, 5, -51, 40, -17, -68, 38,
					-- layer=1 filter=23 channel=45
					-9, 15, -80, 5, 25, -34, -7, 18, 19,
					-- layer=1 filter=23 channel=46
					-9, 14, -11, 10, 26, 3, 12, 5, -10,
					-- layer=1 filter=23 channel=47
					-29, -43, -19, -24, -51, -15, 18, -17, -25,
					-- layer=1 filter=23 channel=48
					24, -11, -6, 3, 6, -9, 18, 12, 4,
					-- layer=1 filter=23 channel=49
					5, -10, 41, 0, -27, 80, -30, -74, 70,
					-- layer=1 filter=23 channel=50
					12, -4, -4, 4, 0, -15, 20, 3, -7,
					-- layer=1 filter=23 channel=51
					10, 4, -1, 28, 2, 3, 20, -2, 6,
					-- layer=1 filter=23 channel=52
					11, -16, -56, -24, -55, -37, -5, -18, -37,
					-- layer=1 filter=23 channel=53
					-27, 31, -131, -48, 44, -189, -33, 14, -98,
					-- layer=1 filter=23 channel=54
					-1, -25, 11, -9, -7, -10, 13, -13, -22,
					-- layer=1 filter=23 channel=55
					-42, -26, -29, 30, -23, -33, 0, -27, -23,
					-- layer=1 filter=23 channel=56
					0, -26, 12, 13, -21, 15, 2, -32, 11,
					-- layer=1 filter=23 channel=57
					-1, -16, 13, 4, -19, -19, 2, -33, 2,
					-- layer=1 filter=23 channel=58
					-19, -6, -9, 5, -19, -23, 15, -22, 0,
					-- layer=1 filter=23 channel=59
					5, 25, -112, -35, 61, -154, -38, 64, -112,
					-- layer=1 filter=23 channel=60
					50, -23, -14, 14, 26, -2, -21, -66, -9,
					-- layer=1 filter=23 channel=61
					28, 67, -155, 1, 105, -170, -19, 73, -57,
					-- layer=1 filter=23 channel=62
					12, 67, -124, -4, 77, -103, 4, 54, -53,
					-- layer=1 filter=23 channel=63
					38, 31, -20, -2, 51, -39, 20, 28, -15,
					-- layer=1 filter=24 channel=0
					9, -1, -12, -2, -5, -9, 2, -10, -12,
					-- layer=1 filter=24 channel=1
					-10, 0, -11, -14, -22, -18, -15, -28, -7,
					-- layer=1 filter=24 channel=2
					18, -4, -12, -1, 5, 9, -14, -12, -7,
					-- layer=1 filter=24 channel=3
					-17, -8, -12, -13, 10, -7, -4, 3, -11,
					-- layer=1 filter=24 channel=4
					-2, -6, -4, 2, -16, -23, -9, -2, -14,
					-- layer=1 filter=24 channel=5
					-11, -7, -1, -18, -20, 2, 0, -14, -4,
					-- layer=1 filter=24 channel=6
					-10, -24, -23, -14, -7, -16, -15, 12, -11,
					-- layer=1 filter=24 channel=7
					-3, 9, 6, 4, -1, 8, 0, -2, -6,
					-- layer=1 filter=24 channel=8
					3, 1, -6, -8, -16, -3, 7, -10, 9,
					-- layer=1 filter=24 channel=9
					1, -15, -17, -23, -2, -17, -29, -27, -17,
					-- layer=1 filter=24 channel=10
					-4, 6, 1, -9, -10, -6, -19, -24, -7,
					-- layer=1 filter=24 channel=11
					18, 2, 1, 19, 0, -2, 14, 18, 13,
					-- layer=1 filter=24 channel=12
					0, -4, -29, 6, -6, -4, -14, 7, -3,
					-- layer=1 filter=24 channel=13
					-1, 1, -31, -1, 2, -24, -37, -14, -17,
					-- layer=1 filter=24 channel=14
					30, 21, 6, 9, 14, 14, -9, 5, -24,
					-- layer=1 filter=24 channel=15
					-12, 0, 4, 1, -9, 7, -15, -15, -5,
					-- layer=1 filter=24 channel=16
					9, 6, 6, 26, 5, -2, -2, 12, 19,
					-- layer=1 filter=24 channel=17
					-27, 0, -3, -24, -5, -9, -39, -18, -10,
					-- layer=1 filter=24 channel=18
					-16, -5, -13, -22, -29, -27, -8, -5, -2,
					-- layer=1 filter=24 channel=19
					-4, -28, 2, -33, -18, -15, -42, -20, -3,
					-- layer=1 filter=24 channel=20
					-1, -30, -23, -8, -19, -5, -3, -11, -7,
					-- layer=1 filter=24 channel=21
					-22, -12, -20, 4, -10, -34, -5, 0, 4,
					-- layer=1 filter=24 channel=22
					-2, -2, 8, -4, 16, 4, 0, -17, 0,
					-- layer=1 filter=24 channel=23
					-1, 5, 3, 11, -6, 6, 7, -12, -2,
					-- layer=1 filter=24 channel=24
					-1, -12, 0, -19, -3, -7, -23, -24, -12,
					-- layer=1 filter=24 channel=25
					-18, -23, -21, 9, -13, -31, 2, 24, 7,
					-- layer=1 filter=24 channel=26
					-26, -2, 4, -4, -15, -18, -2, 8, -2,
					-- layer=1 filter=24 channel=27
					-4, -14, -14, -26, -18, -16, -8, -7, -24,
					-- layer=1 filter=24 channel=28
					-18, -13, -38, -11, -4, -10, -13, 0, -2,
					-- layer=1 filter=24 channel=29
					-17, -20, 5, -4, -6, -14, -26, -4, -6,
					-- layer=1 filter=24 channel=30
					-2, -3, 16, -25, 10, -17, -19, -3, -23,
					-- layer=1 filter=24 channel=31
					11, -5, -7, 6, 12, 7, 4, 10, 13,
					-- layer=1 filter=24 channel=32
					-13, 4, 6, -13, -19, -14, -16, -13, 0,
					-- layer=1 filter=24 channel=33
					-7, -3, -2, -14, -2, -4, -33, -13, -30,
					-- layer=1 filter=24 channel=34
					2, -13, -24, 20, -37, -22, -8, 18, 13,
					-- layer=1 filter=24 channel=35
					-13, -4, -21, -1, -14, -19, -23, 2, -7,
					-- layer=1 filter=24 channel=36
					-8, -23, -3, 16, -30, -9, -17, -23, 4,
					-- layer=1 filter=24 channel=37
					-19, -21, -28, 2, -8, -12, -16, -12, 12,
					-- layer=1 filter=24 channel=38
					1, 1, 15, -1, -15, 6, 5, -30, -11,
					-- layer=1 filter=24 channel=39
					6, 14, 11, 12, -16, 16, -2, -8, -14,
					-- layer=1 filter=24 channel=40
					-6, 2, -25, -18, -10, -19, -11, -33, -3,
					-- layer=1 filter=24 channel=41
					-16, 3, -5, -11, -16, 0, -15, -1, -4,
					-- layer=1 filter=24 channel=42
					20, 5, -4, 11, 3, -12, 3, -1, -9,
					-- layer=1 filter=24 channel=43
					-15, -7, -26, -1, -6, -11, 9, -3, -4,
					-- layer=1 filter=24 channel=44
					-13, -26, -18, -13, -33, -27, -11, -20, 7,
					-- layer=1 filter=24 channel=45
					-39, -14, -28, 11, -11, -17, -11, 5, -4,
					-- layer=1 filter=24 channel=46
					6, 0, 4, -38, -7, -20, -11, -13, -5,
					-- layer=1 filter=24 channel=47
					8, -6, -27, 1, -8, -17, 0, -1, 13,
					-- layer=1 filter=24 channel=48
					0, -30, -30, -12, -28, -34, -29, -9, -17,
					-- layer=1 filter=24 channel=49
					1, -10, -10, 0, -28, -8, -1, -18, -16,
					-- layer=1 filter=24 channel=50
					-19, -29, -23, -22, -18, -1, -25, -33, -23,
					-- layer=1 filter=24 channel=51
					-1, -26, 0, -17, -29, -17, -37, -30, -16,
					-- layer=1 filter=24 channel=52
					0, -4, -32, 5, -33, -16, 1, 12, 5,
					-- layer=1 filter=24 channel=53
					-10, -18, -7, 0, -17, -29, -27, -30, -9,
					-- layer=1 filter=24 channel=54
					-23, -4, -2, -23, -35, -29, -19, -31, -27,
					-- layer=1 filter=24 channel=55
					-21, -17, 3, 4, 12, -18, -19, -24, -11,
					-- layer=1 filter=24 channel=56
					3, 2, -11, 2, 3, 5, 20, 13, 3,
					-- layer=1 filter=24 channel=57
					0, -22, -13, -12, -20, -10, -4, -21, 8,
					-- layer=1 filter=24 channel=58
					-3, -27, -22, -10, -33, -13, -2, 2, 0,
					-- layer=1 filter=24 channel=59
					-17, -33, -3, 0, 1, -12, -21, 0, -11,
					-- layer=1 filter=24 channel=60
					-24, 1, -20, -9, -29, -5, -14, -13, 0,
					-- layer=1 filter=24 channel=61
					-14, -12, -24, -15, -6, -13, -26, 4, -18,
					-- layer=1 filter=24 channel=62
					-7, -24, -38, -14, -8, -32, -5, 6, -11,
					-- layer=1 filter=24 channel=63
					19, -4, -4, 0, 0, -22, -17, -8, -6,
					-- layer=1 filter=25 channel=0
					0, -14, 7, -6, 10, -3, -13, 6, -13,
					-- layer=1 filter=25 channel=1
					8, -3, 0, -11, 6, 0, 7, -11, -12,
					-- layer=1 filter=25 channel=2
					3, 0, 8, -8, 9, 4, -5, -13, -1,
					-- layer=1 filter=25 channel=3
					9, -11, 5, 7, -3, -8, -11, -8, 0,
					-- layer=1 filter=25 channel=4
					-9, -6, 1, 0, 3, 8, 9, -4, -16,
					-- layer=1 filter=25 channel=5
					-11, -4, 0, 0, 9, -5, -3, -8, 3,
					-- layer=1 filter=25 channel=6
					8, -12, -6, 9, 14, -13, -6, -4, 11,
					-- layer=1 filter=25 channel=7
					7, 8, -16, -7, 3, 9, 6, 12, 0,
					-- layer=1 filter=25 channel=8
					0, 10, -8, -15, 10, -5, 8, -7, 3,
					-- layer=1 filter=25 channel=9
					0, 0, 2, -6, 6, -10, -11, -3, 5,
					-- layer=1 filter=25 channel=10
					1, -5, -4, -4, -7, -4, -9, 3, 11,
					-- layer=1 filter=25 channel=11
					16, -6, 12, 0, -3, -4, -3, 7, -13,
					-- layer=1 filter=25 channel=12
					-15, 4, -5, -16, 7, -12, 11, 11, 3,
					-- layer=1 filter=25 channel=13
					-6, 4, -14, 2, -6, -2, -15, -8, 1,
					-- layer=1 filter=25 channel=14
					-11, 9, -18, -11, 7, -2, 3, -7, -5,
					-- layer=1 filter=25 channel=15
					8, -9, -3, -10, -14, -7, 9, 1, -2,
					-- layer=1 filter=25 channel=16
					6, -15, -8, 2, -8, 0, 3, -18, -11,
					-- layer=1 filter=25 channel=17
					2, -12, -6, 7, 9, 1, 5, -15, -1,
					-- layer=1 filter=25 channel=18
					-7, 0, 0, -7, 4, -5, -7, 12, 2,
					-- layer=1 filter=25 channel=19
					6, -11, 7, 7, -2, -4, -1, 6, -10,
					-- layer=1 filter=25 channel=20
					12, -4, 10, 10, 6, -16, 8, 9, -7,
					-- layer=1 filter=25 channel=21
					0, -7, 0, 10, 3, 12, -11, -14, -14,
					-- layer=1 filter=25 channel=22
					-2, -10, 9, -6, -6, 0, -13, 12, 0,
					-- layer=1 filter=25 channel=23
					-8, 3, -13, 3, 6, -17, 0, -9, -9,
					-- layer=1 filter=25 channel=24
					-5, 12, 0, -11, -2, 0, -11, 9, -10,
					-- layer=1 filter=25 channel=25
					0, -16, -1, -4, -12, -10, 8, 6, -4,
					-- layer=1 filter=25 channel=26
					-7, -12, 12, 1, -11, 0, 7, 13, -11,
					-- layer=1 filter=25 channel=27
					0, -9, -7, -6, -15, 10, -15, -15, -12,
					-- layer=1 filter=25 channel=28
					-13, 0, -5, -11, 0, 5, -11, 0, -10,
					-- layer=1 filter=25 channel=29
					3, -6, -10, 4, 11, 0, -12, -7, 6,
					-- layer=1 filter=25 channel=30
					2, 4, 7, 0, 5, 5, 7, 4, -6,
					-- layer=1 filter=25 channel=31
					0, 0, -15, -1, 7, -1, -7, -13, 10,
					-- layer=1 filter=25 channel=32
					-10, 3, -6, 2, -6, 1, 4, -1, -14,
					-- layer=1 filter=25 channel=33
					-8, 2, 9, 1, -1, 5, -6, -10, -9,
					-- layer=1 filter=25 channel=34
					6, -9, 10, -4, 10, -6, -4, -4, 1,
					-- layer=1 filter=25 channel=35
					11, 3, 0, 1, -3, 6, -9, 0, 4,
					-- layer=1 filter=25 channel=36
					-6, 10, -10, -12, -11, -14, 2, 5, 5,
					-- layer=1 filter=25 channel=37
					-6, -11, 7, -14, -1, -12, 0, 8, -10,
					-- layer=1 filter=25 channel=38
					6, 11, 9, 3, 11, 8, -6, -8, 10,
					-- layer=1 filter=25 channel=39
					-3, -9, -10, -12, -8, 0, 6, 5, -11,
					-- layer=1 filter=25 channel=40
					6, 14, -12, -4, 8, 5, -5, 2, -5,
					-- layer=1 filter=25 channel=41
					-13, -7, -11, 8, 11, 9, -11, 0, -5,
					-- layer=1 filter=25 channel=42
					-10, -12, 6, -6, -3, 9, -7, -11, -9,
					-- layer=1 filter=25 channel=43
					4, 11, 5, 4, 10, 2, -5, 5, 13,
					-- layer=1 filter=25 channel=44
					-1, 4, -8, 6, 7, -10, -9, 1, -14,
					-- layer=1 filter=25 channel=45
					-16, -14, 0, -9, -17, -6, 5, -5, -3,
					-- layer=1 filter=25 channel=46
					7, 5, 9, 1, 0, -9, -8, 6, -9,
					-- layer=1 filter=25 channel=47
					6, -4, 4, 12, 0, -15, -9, 5, 8,
					-- layer=1 filter=25 channel=48
					-16, -5, 14, -8, 10, -6, 2, 6, -15,
					-- layer=1 filter=25 channel=49
					-11, -11, -17, -11, -11, 1, -13, -11, 9,
					-- layer=1 filter=25 channel=50
					-12, 4, -9, 4, -10, 8, -5, -16, 0,
					-- layer=1 filter=25 channel=51
					-12, -14, -9, -5, 11, 5, 10, 0, 0,
					-- layer=1 filter=25 channel=52
					6, 1, 9, 14, 4, 12, 1, 0, -5,
					-- layer=1 filter=25 channel=53
					2, -14, 5, -6, 9, -18, -3, 1, 5,
					-- layer=1 filter=25 channel=54
					6, -15, 5, 4, -2, -8, 10, -6, 9,
					-- layer=1 filter=25 channel=55
					5, -7, -2, 9, 1, 6, -10, -11, 1,
					-- layer=1 filter=25 channel=56
					-11, 6, -5, 7, 9, 8, -4, 6, -8,
					-- layer=1 filter=25 channel=57
					0, 13, 5, 2, 10, -6, 5, -15, 10,
					-- layer=1 filter=25 channel=58
					-1, -11, 3, -3, 9, -10, 11, -9, 9,
					-- layer=1 filter=25 channel=59
					5, -9, 12, -14, 5, 5, -2, 1, -9,
					-- layer=1 filter=25 channel=60
					0, -10, 0, 10, -7, -12, -13, 6, -6,
					-- layer=1 filter=25 channel=61
					-4, 0, -8, 0, -4, 7, -3, -7, -12,
					-- layer=1 filter=25 channel=62
					9, 7, -8, 11, -12, 10, -4, -11, -8,
					-- layer=1 filter=25 channel=63
					0, -8, 4, 0, -6, 0, 7, -5, 0,
					-- layer=1 filter=26 channel=0
					9, -28, -15, 0, -9, -36, -6, -12, -30,
					-- layer=1 filter=26 channel=1
					-14, -26, -5, 5, -15, -18, -19, -18, -9,
					-- layer=1 filter=26 channel=2
					1, -17, -15, -8, -57, 0, -10, -40, -7,
					-- layer=1 filter=26 channel=3
					-14, -6, -3, -24, -18, -21, -21, -20, -27,
					-- layer=1 filter=26 channel=4
					29, 24, 27, 34, 35, 29, 9, 53, 6,
					-- layer=1 filter=26 channel=5
					-5, -5, 10, -15, 25, -6, 6, -15, -7,
					-- layer=1 filter=26 channel=6
					32, 23, 13, 3, 7, 5, 27, -18, 27,
					-- layer=1 filter=26 channel=7
					-18, -36, -27, 1, -27, 10, -3, 0, 1,
					-- layer=1 filter=26 channel=8
					-17, -34, -4, -10, -20, -17, 32, -10, 24,
					-- layer=1 filter=26 channel=9
					-6, 18, -3, 7, 11, 24, 18, -18, 29,
					-- layer=1 filter=26 channel=10
					-15, 7, 10, -12, -14, -1, -21, -17, -35,
					-- layer=1 filter=26 channel=11
					39, 29, -2, 24, -8, 7, 25, 17, -6,
					-- layer=1 filter=26 channel=12
					9, -30, 5, -19, -34, -9, 1, -11, -9,
					-- layer=1 filter=26 channel=13
					8, -8, -20, -13, -19, 1, -6, -9, 2,
					-- layer=1 filter=26 channel=14
					17, 24, 9, 14, -1, 7, -5, -23, -15,
					-- layer=1 filter=26 channel=15
					13, 18, 34, -25, 27, 21, 19, 7, -19,
					-- layer=1 filter=26 channel=16
					13, 53, 11, -14, -22, 2, -4, 11, -9,
					-- layer=1 filter=26 channel=17
					-19, -1, -5, -12, -18, -6, 7, -16, 20,
					-- layer=1 filter=26 channel=18
					3, -4, -15, -13, -3, -2, 3, 0, -1,
					-- layer=1 filter=26 channel=19
					0, -21, -18, -12, -6, -10, -26, -5, 4,
					-- layer=1 filter=26 channel=20
					15, -2, 20, -20, -20, 8, -34, 9, -33,
					-- layer=1 filter=26 channel=21
					-1, 22, 4, -13, -9, 7, 6, -14, 26,
					-- layer=1 filter=26 channel=22
					-15, 36, 19, 16, -9, 12, -6, 1, -10,
					-- layer=1 filter=26 channel=23
					21, 0, -10, -12, -1, 2, 5, 0, -19,
					-- layer=1 filter=26 channel=24
					-24, -22, 0, -11, -18, -10, -34, -1, -10,
					-- layer=1 filter=26 channel=25
					31, -3, 8, -24, -36, -3, 8, -16, -6,
					-- layer=1 filter=26 channel=26
					7, -26, 0, -2, -9, -4, 0, 8, 4,
					-- layer=1 filter=26 channel=27
					-3, -13, -25, 14, -6, -18, 23, -11, 19,
					-- layer=1 filter=26 channel=28
					-17, -44, -30, -21, -44, -14, -12, -27, 4,
					-- layer=1 filter=26 channel=29
					-6, -15, 0, -16, -11, -23, 11, -19, 3,
					-- layer=1 filter=26 channel=30
					1, 8, -3, -19, -9, -12, -7, -2, -8,
					-- layer=1 filter=26 channel=31
					2, -8, 0, -8, -8, -3, 3, 14, -10,
					-- layer=1 filter=26 channel=32
					10, -5, 36, -65, 8, -5, 11, -41, -20,
					-- layer=1 filter=26 channel=33
					-22, -5, -8, -20, -30, -35, -14, -14, -12,
					-- layer=1 filter=26 channel=34
					43, -5, -8, -38, 7, 5, 24, 42, 24,
					-- layer=1 filter=26 channel=35
					-7, -43, -33, -36, -70, -14, -27, -48, -18,
					-- layer=1 filter=26 channel=36
					-22, -7, 30, -48, -26, 4, -39, -23, -11,
					-- layer=1 filter=26 channel=37
					25, 17, -10, 8, -10, 0, -14, -12, -21,
					-- layer=1 filter=26 channel=38
					20, 0, 21, -10, -31, 11, -3, -28, -26,
					-- layer=1 filter=26 channel=39
					7, 22, 28, -16, 24, 45, -24, 26, -33,
					-- layer=1 filter=26 channel=40
					-5, 20, 6, 3, -9, -5, 1, -25, 14,
					-- layer=1 filter=26 channel=41
					1, 13, 5, -15, 1, -22, -7, 11, 8,
					-- layer=1 filter=26 channel=42
					12, 29, 17, 0, -13, 29, 3, 21, 1,
					-- layer=1 filter=26 channel=43
					10, 11, 4, -22, 1, 9, 2, 8, 11,
					-- layer=1 filter=26 channel=44
					6, 14, 23, 0, -6, -20, 0, 18, -22,
					-- layer=1 filter=26 channel=45
					6, 27, 17, -2, 2, 7, 14, -17, -20,
					-- layer=1 filter=26 channel=46
					-36, -15, -23, -4, -10, 7, -5, 7, -22,
					-- layer=1 filter=26 channel=47
					26, -19, -9, -3, -34, -5, -15, -22, -7,
					-- layer=1 filter=26 channel=48
					6, 18, 25, 21, 36, 4, 19, 25, 30,
					-- layer=1 filter=26 channel=49
					24, 42, 47, 10, 12, 33, 18, 25, -9,
					-- layer=1 filter=26 channel=50
					-3, 8, 19, 18, 14, -9, 12, -7, 8,
					-- layer=1 filter=26 channel=51
					-3, 13, 2, 10, -9, -1, -5, 16, -10,
					-- layer=1 filter=26 channel=52
					9, -30, -42, 2, -5, 14, 44, 48, 5,
					-- layer=1 filter=26 channel=53
					-12, 10, -5, -27, 11, -22, -2, -65, 6,
					-- layer=1 filter=26 channel=54
					9, 16, 9, -16, -3, 18, -9, 6, -12,
					-- layer=1 filter=26 channel=55
					3, -25, 5, -22, -30, -26, -2, 14, -8,
					-- layer=1 filter=26 channel=56
					-1, -27, -3, 7, -3, -6, 25, 21, 10,
					-- layer=1 filter=26 channel=57
					-11, -8, 2, 0, -4, 8, -7, 24, -4,
					-- layer=1 filter=26 channel=58
					0, -20, 0, -16, -15, 3, -4, -13, -9,
					-- layer=1 filter=26 channel=59
					-25, 41, 0, -19, 22, 2, 5, -24, 31,
					-- layer=1 filter=26 channel=60
					45, -24, -3, 30, -2, -14, 68, 63, 38,
					-- layer=1 filter=26 channel=61
					19, 74, 21, 23, 39, 25, 22, 9, 41,
					-- layer=1 filter=26 channel=62
					3, 5, 27, -29, 16, 26, 1, -27, 27,
					-- layer=1 filter=26 channel=63
					10, 24, 26, 23, 8, 12, 9, 14, 8,
					-- layer=1 filter=27 channel=0
					-10, -8, 7, 8, -15, 9, 10, -4, -8,
					-- layer=1 filter=27 channel=1
					6, 0, 8, -2, 12, 0, -5, 11, 0,
					-- layer=1 filter=27 channel=2
					-9, -11, 2, 0, -3, -14, 9, 6, -6,
					-- layer=1 filter=27 channel=3
					-2, -5, -10, -1, -4, -13, -15, 7, -15,
					-- layer=1 filter=27 channel=4
					-10, -15, -19, -1, -15, -7, -15, 9, 1,
					-- layer=1 filter=27 channel=5
					7, -15, -3, 11, 9, 4, -14, 6, -3,
					-- layer=1 filter=27 channel=6
					0, -6, -9, -11, -14, 7, -18, 2, -15,
					-- layer=1 filter=27 channel=7
					-4, -12, -8, -19, -17, -15, -15, 0, -1,
					-- layer=1 filter=27 channel=8
					-4, -6, -3, -10, 0, 4, -13, -15, -11,
					-- layer=1 filter=27 channel=9
					-5, -15, -2, 0, -10, 11, 0, -4, -7,
					-- layer=1 filter=27 channel=10
					-2, 4, 9, -9, 1, 6, -1, -1, -6,
					-- layer=1 filter=27 channel=11
					-21, -11, -3, -13, 9, 7, -22, 0, -13,
					-- layer=1 filter=27 channel=12
					12, -3, 6, -15, -9, -11, -9, 12, 6,
					-- layer=1 filter=27 channel=13
					-17, -4, 2, -10, -3, -2, -12, -2, -14,
					-- layer=1 filter=27 channel=14
					-5, -10, 17, -21, -5, 11, -11, -12, -26,
					-- layer=1 filter=27 channel=15
					-13, 5, -10, -15, -7, -7, 8, 2, -1,
					-- layer=1 filter=27 channel=16
					13, -23, -11, -23, -3, -1, 2, -15, -18,
					-- layer=1 filter=27 channel=17
					-7, 3, 1, 3, 6, -13, 12, -11, 4,
					-- layer=1 filter=27 channel=18
					-12, 9, -8, 1, -10, -10, -4, 9, -14,
					-- layer=1 filter=27 channel=19
					-8, -2, 9, -15, -16, -11, -14, 12, 6,
					-- layer=1 filter=27 channel=20
					-9, -7, -3, 6, 0, -22, -5, 5, -12,
					-- layer=1 filter=27 channel=21
					-19, -14, 5, -9, -27, -17, -36, 6, 9,
					-- layer=1 filter=27 channel=22
					-22, -17, 2, -7, -22, 12, -20, -10, 6,
					-- layer=1 filter=27 channel=23
					-20, -1, 9, -18, -2, 7, 0, -23, -8,
					-- layer=1 filter=27 channel=24
					-11, -16, -11, 7, 3, -2, 0, 4, 7,
					-- layer=1 filter=27 channel=25
					5, -5, 2, -5, -2, 1, 3, -3, -4,
					-- layer=1 filter=27 channel=26
					-11, -4, -2, -5, -16, -8, -5, -1, -1,
					-- layer=1 filter=27 channel=27
					1, 0, 4, 0, -8, 10, 0, 3, -14,
					-- layer=1 filter=27 channel=28
					-6, -16, -6, 0, -7, -17, 3, -16, -5,
					-- layer=1 filter=27 channel=29
					9, -7, 7, 0, -1, 11, 10, 5, 4,
					-- layer=1 filter=27 channel=30
					-3, -5, 10, 12, -2, 1, 6, 1, 11,
					-- layer=1 filter=27 channel=31
					0, 8, -14, 13, 9, -12, 6, 3, -13,
					-- layer=1 filter=27 channel=32
					-18, -7, 4, -1, 1, -22, -5, -18, -22,
					-- layer=1 filter=27 channel=33
					8, -7, 9, -6, 11, -15, -4, -6, 8,
					-- layer=1 filter=27 channel=34
					-10, -8, 1, -15, 7, -12, 5, -15, -1,
					-- layer=1 filter=27 channel=35
					-3, 6, 5, 3, 9, -15, -6, -13, -13,
					-- layer=1 filter=27 channel=36
					10, 3, -1, -19, 9, -15, -6, 10, -35,
					-- layer=1 filter=27 channel=37
					10, 2, 1, -7, 7, 4, 4, 2, 0,
					-- layer=1 filter=27 channel=38
					9, 10, 4, 8, 5, 1, -4, -23, -3,
					-- layer=1 filter=27 channel=39
					-17, -21, -16, -5, 8, -17, 8, -8, 11,
					-- layer=1 filter=27 channel=40
					-4, -6, -5, 5, -16, -2, 0, 10, -10,
					-- layer=1 filter=27 channel=41
					0, -12, -16, -3, 3, -2, 10, -5, -3,
					-- layer=1 filter=27 channel=42
					-1, -16, 8, -29, -14, -7, -13, -20, -2,
					-- layer=1 filter=27 channel=43
					-3, 5, -8, 11, -2, -15, 6, -19, 7,
					-- layer=1 filter=27 channel=44
					-13, 0, 8, -13, 7, -10, 9, 0, -18,
					-- layer=1 filter=27 channel=45
					11, -9, 7, 1, 13, -16, -17, 2, 15,
					-- layer=1 filter=27 channel=46
					0, -5, -12, 26, 7, -11, 15, -1, 5,
					-- layer=1 filter=27 channel=47
					8, 5, 9, 3, 7, 8, 4, -6, -6,
					-- layer=1 filter=27 channel=48
					-6, 7, 9, -4, 0, -5, -12, 0, -5,
					-- layer=1 filter=27 channel=49
					9, -8, -6, 0, -18, -7, 14, -13, -8,
					-- layer=1 filter=27 channel=50
					-13, -11, -17, -9, -8, 3, 11, -1, -3,
					-- layer=1 filter=27 channel=51
					-3, -15, -12, -14, -15, 5, 5, -5, -16,
					-- layer=1 filter=27 channel=52
					-27, -13, 2, 2, -8, -17, 9, -24, -16,
					-- layer=1 filter=27 channel=53
					-12, 3, 14, -35, -20, 14, -31, -12, 8,
					-- layer=1 filter=27 channel=54
					-15, -14, -4, 5, -11, -12, 5, -16, -12,
					-- layer=1 filter=27 channel=55
					10, 3, -9, 8, -4, 7, -12, 12, -2,
					-- layer=1 filter=27 channel=56
					-10, -10, 6, 6, 8, -16, 3, -4, 0,
					-- layer=1 filter=27 channel=57
					9, -1, 3, -9, 7, -2, 11, 11, -6,
					-- layer=1 filter=27 channel=58
					7, -5, 6, 2, 9, -5, 1, 0, -15,
					-- layer=1 filter=27 channel=59
					-9, -2, 14, -3, 8, 1, 2, 0, -20,
					-- layer=1 filter=27 channel=60
					-10, 9, 11, 6, -16, 2, -2, -2, 9,
					-- layer=1 filter=27 channel=61
					-14, 6, -10, -11, -8, 5, -29, -2, -1,
					-- layer=1 filter=27 channel=62
					11, 7, -6, -14, -1, 4, -21, -22, 6,
					-- layer=1 filter=27 channel=63
					10, 7, 4, -6, 7, 7, 5, 2, -12,
					-- layer=1 filter=28 channel=0
					8, -28, 0, -16, -24, 44, -16, 10, 21,
					-- layer=1 filter=28 channel=1
					-24, -67, 4, -57, -3, 32, -19, 12, 63,
					-- layer=1 filter=28 channel=2
					20, -33, -61, 25, -27, 17, -32, -8, 17,
					-- layer=1 filter=28 channel=3
					38, 5, -6, 15, 6, -43, 7, -7, 1,
					-- layer=1 filter=28 channel=4
					-74, -37, 34, -56, 11, 58, 13, 53, 59,
					-- layer=1 filter=28 channel=5
					44, 41, -19, 36, -2, -28, 8, -37, -57,
					-- layer=1 filter=28 channel=6
					-63, -55, -1, -92, -58, -18, -22, -13, 38,
					-- layer=1 filter=28 channel=7
					-50, -44, 22, -77, -11, 72, -28, 26, 88,
					-- layer=1 filter=28 channel=8
					-29, -45, 26, -59, -7, 52, -14, 26, 83,
					-- layer=1 filter=28 channel=9
					58, -27, -67, -14, -91, -63, -51, -89, -27,
					-- layer=1 filter=28 channel=10
					-11, -29, -31, -6, -37, 0, -34, -4, 32,
					-- layer=1 filter=28 channel=11
					-61, -8, 25, -7, 1, 57, 23, 1, 0,
					-- layer=1 filter=28 channel=12
					5, 29, -4, 30, 33, 14, 51, 1, -42,
					-- layer=1 filter=28 channel=13
					37, 23, -27, 56, -6, -53, -20, -37, -49,
					-- layer=1 filter=28 channel=14
					6, -63, -93, 7, -60, -58, -69, -44, -14,
					-- layer=1 filter=28 channel=15
					-62, 9, -5, 42, 2, 40, 19, 13, -18,
					-- layer=1 filter=28 channel=16
					-83, 1, 27, -58, 4, 69, 0, 46, 51,
					-- layer=1 filter=28 channel=17
					28, -10, -1, 2, 9, 7, -11, 13, 26,
					-- layer=1 filter=28 channel=18
					-66, -14, 32, -22, -21, 8, -4, -7, 1,
					-- layer=1 filter=28 channel=19
					-30, -7, 35, -27, -13, 33, -17, 4, 15,
					-- layer=1 filter=28 channel=20
					-67, -8, 14, -5, 13, 17, 13, 33, -41,
					-- layer=1 filter=28 channel=21
					-12, -18, 33, -33, -29, -5, -34, -51, 14,
					-- layer=1 filter=28 channel=22
					64, 8, -71, 81, -12, 16, -10, -64, -33,
					-- layer=1 filter=28 channel=23
					-36, 3, 19, 57, -25, -17, 16, -13, -30,
					-- layer=1 filter=28 channel=24
					-10, -46, -17, -49, -31, 2, -20, 13, 20,
					-- layer=1 filter=28 channel=25
					-63, 31, 41, 2, 63, 45, 23, 63, 0,
					-- layer=1 filter=28 channel=26
					-57, -37, 24, -39, -6, 41, -18, 26, 6,
					-- layer=1 filter=28 channel=27
					-16, -34, 11, -32, -20, 22, -18, 13, 62,
					-- layer=1 filter=28 channel=28
					11, -8, -2, 5, -15, -33, -18, -52, -27,
					-- layer=1 filter=28 channel=29
					-39, -16, 18, -34, 0, 26, -1, 20, 31,
					-- layer=1 filter=28 channel=30
					59, 49, -19, 60, 14, -34, 27, -46, -65,
					-- layer=1 filter=28 channel=31
					-6, 6, 9, 4, -3, -11, -5, 12, -9,
					-- layer=1 filter=28 channel=32
					-183, -103, -19, -54, 18, -1, 6, -2, 0,
					-- layer=1 filter=28 channel=33
					22, -62, 3, -25, -12, 15, -19, 4, 36,
					-- layer=1 filter=28 channel=34
					-57, 75, 68, 27, 67, 64, 70, 67, -45,
					-- layer=1 filter=28 channel=35
					-7, -21, -17, -13, -1, 14, -7, 11, 64,
					-- layer=1 filter=28 channel=36
					-26, -2, -22, 37, 41, -27, 23, 16, -51,
					-- layer=1 filter=28 channel=37
					-63, 15, 61, 20, 30, 44, 20, 50, -2,
					-- layer=1 filter=28 channel=38
					10, -12, -27, 22, -3, -26, -3, -26, -2,
					-- layer=1 filter=28 channel=39
					-63, -18, -10, 10, -6, 0, -2, -23, -22,
					-- layer=1 filter=28 channel=40
					77, 23, -51, 83, 43, 12, 36, 26, -6,
					-- layer=1 filter=28 channel=41
					50, 23, -24, 53, 22, -14, 9, -9, -37,
					-- layer=1 filter=28 channel=42
					1, -23, -40, 23, -54, -45, -49, -39, -45,
					-- layer=1 filter=28 channel=43
					-86, -15, 27, -22, -3, -3, -28, -14, -24,
					-- layer=1 filter=28 channel=44
					-102, 23, 43, 43, 50, 73, 56, 63, -35,
					-- layer=1 filter=28 channel=45
					-96, -98, -7, -84, -39, -8, -22, -15, -3,
					-- layer=1 filter=28 channel=46
					72, 39, -52, 33, 1, -41, -10, -51, -54,
					-- layer=1 filter=28 channel=47
					-45, 17, 47, 29, 40, 45, 28, 16, -38,
					-- layer=1 filter=28 channel=48
					43, 11, -5, 34, 0, -33, 8, -12, -57,
					-- layer=1 filter=28 channel=49
					-83, -9, 22, 1, -1, 11, 5, 33, -11,
					-- layer=1 filter=28 channel=50
					62, 35, -19, 58, 12, -44, 21, -9, -68,
					-- layer=1 filter=28 channel=51
					14, -20, -6, -4, -2, 15, -15, 18, 9,
					-- layer=1 filter=28 channel=52
					-42, 25, 20, -11, 20, 27, 1, 4, -15,
					-- layer=1 filter=28 channel=53
					78, 51, 18, 46, 16, 57, -1, 19, 51,
					-- layer=1 filter=28 channel=54
					41, 44, -4, 48, 32, -11, 26, -13, -66,
					-- layer=1 filter=28 channel=55
					67, 50, 0, 37, -2, -83, -4, -55, -69,
					-- layer=1 filter=28 channel=56
					-26, -34, 2, -45, -14, 45, -33, 28, 74,
					-- layer=1 filter=28 channel=57
					-61, -40, 26, -68, 3, 18, -10, 11, 44,
					-- layer=1 filter=28 channel=58
					0, 2, 8, 28, 15, 2, -5, 12, -53,
					-- layer=1 filter=28 channel=59
					37, -86, -24, -70, -139, -3, -49, -94, 10,
					-- layer=1 filter=28 channel=60
					-18, 30, 66, 71, 60, 17, 78, 33, -14,
					-- layer=1 filter=28 channel=61
					51, -13, -47, -8, -69, -3, -43, -86, 29,
					-- layer=1 filter=28 channel=62
					-57, -89, -8, -93, -84, -31, -49, -70, 1,
					-- layer=1 filter=28 channel=63
					66, 12, -78, 74, 3, -55, 27, -41, -73,
					-- layer=1 filter=29 channel=0
					-27, -18, -7, 12, -19, -8, 14, -70, -23,
					-- layer=1 filter=29 channel=1
					-2, 0, -5, -1, -17, -16, 13, 1, -17,
					-- layer=1 filter=29 channel=2
					-1, 26, -6, 3, 23, -15, 4, -30, -23,
					-- layer=1 filter=29 channel=3
					4, -25, 0, 4, -45, 3, -15, -37, -28,
					-- layer=1 filter=29 channel=4
					4, -29, -7, -46, -22, -53, -21, -49, -35,
					-- layer=1 filter=29 channel=5
					-8, 10, 15, -18, -26, -8, 8, -5, 23,
					-- layer=1 filter=29 channel=6
					-37, -21, -45, -11, -40, 14, 17, -41, 6,
					-- layer=1 filter=29 channel=7
					-21, -11, 0, -16, -30, -19, 7, -43, -42,
					-- layer=1 filter=29 channel=8
					-27, -9, -46, -7, 2, -10, 7, -6, -6,
					-- layer=1 filter=29 channel=9
					-49, -35, -6, -33, -40, 0, 9, -18, -2,
					-- layer=1 filter=29 channel=10
					39, -24, 22, -26, 1, -25, 4, -4, 12,
					-- layer=1 filter=29 channel=11
					7, -47, -63, 20, -18, -17, 24, -6, -16,
					-- layer=1 filter=29 channel=12
					3, -17, -2, -7, 10, -8, -2, 8, 3,
					-- layer=1 filter=29 channel=13
					-16, -4, -12, 17, -2, 26, 32, 21, 30,
					-- layer=1 filter=29 channel=14
					13, 31, 12, 9, 20, -33, -15, -23, -11,
					-- layer=1 filter=29 channel=15
					44, -25, -6, -6, 18, -28, 17, 21, -15,
					-- layer=1 filter=29 channel=16
					-22, -77, -50, -6, -3, -18, 10, -35, -43,
					-- layer=1 filter=29 channel=17
					-25, -12, -4, -29, -37, -14, 13, 4, -6,
					-- layer=1 filter=29 channel=18
					-13, -15, -31, -1, 16, 2, 14, -12, 25,
					-- layer=1 filter=29 channel=19
					-7, -25, -3, -15, -15, -18, 7, 3, 6,
					-- layer=1 filter=29 channel=20
					32, -1, -6, 0, 30, -5, -8, 15, -14,
					-- layer=1 filter=29 channel=21
					-6, -44, -23, -17, -24, 37, 48, 0, -1,
					-- layer=1 filter=29 channel=22
					-35, -29, 16, -43, -65, -6, -46, -63, -39,
					-- layer=1 filter=29 channel=23
					40, 7, 4, 16, 27, 16, 7, 32, -2,
					-- layer=1 filter=29 channel=24
					-23, -8, 8, -37, -30, -16, 15, 0, 0,
					-- layer=1 filter=29 channel=25
					6, 7, -45, 23, 26, 11, 17, 3, 4,
					-- layer=1 filter=29 channel=26
					-15, -51, -29, -3, -11, -26, 7, -27, -25,
					-- layer=1 filter=29 channel=27
					-29, 0, -6, -14, 0, 5, 0, 5, 3,
					-- layer=1 filter=29 channel=28
					-30, -26, -13, 0, -11, 35, 29, -2, 13,
					-- layer=1 filter=29 channel=29
					-10, -1, -12, -8, 8, -15, -2, -4, 8,
					-- layer=1 filter=29 channel=30
					1, 0, 4, 2, -12, 13, 9, 12, 19,
					-- layer=1 filter=29 channel=31
					3, 11, -3, 6, -15, 2, 5, 11, 6,
					-- layer=1 filter=29 channel=32
					12, 18, -55, 34, 24, 14, 18, 23, -16,
					-- layer=1 filter=29 channel=33
					-26, 3, -16, -22, -28, -23, 30, -2, 8,
					-- layer=1 filter=29 channel=34
					-70, -24, -85, -5, 33, -8, 18, 8, 53,
					-- layer=1 filter=29 channel=35
					3, 7, 13, -32, -40, -38, -48, -15, -30,
					-- layer=1 filter=29 channel=36
					46, 12, 4, 20, 52, 2, 29, 31, 21,
					-- layer=1 filter=29 channel=37
					-11, -1, -37, 13, 25, 0, 53, -12, 3,
					-- layer=1 filter=29 channel=38
					28, 13, -4, 0, 39, -1, -5, 27, 14,
					-- layer=1 filter=29 channel=39
					64, 23, 5, -4, 33, -9, 14, 31, -5,
					-- layer=1 filter=29 channel=40
					-17, -8, -1, -20, -38, 11, -38, -47, -12,
					-- layer=1 filter=29 channel=41
					11, 6, -1, 0, 16, 10, -12, -1, 0,
					-- layer=1 filter=29 channel=42
					48, 39, 6, 12, 37, 14, 18, -1, -9,
					-- layer=1 filter=29 channel=43
					-30, 1, -36, 22, 2, 29, 56, -8, 14,
					-- layer=1 filter=29 channel=44
					29, -5, 13, 19, 52, -9, -2, 24, -14,
					-- layer=1 filter=29 channel=45
					-14, -17, -12, 16, -4, 2, 48, -8, 12,
					-- layer=1 filter=29 channel=46
					-39, -19, 12, -24, -16, -22, -10, 11, 18,
					-- layer=1 filter=29 channel=47
					-20, 0, -43, 24, 39, 27, 24, -3, 11,
					-- layer=1 filter=29 channel=48
					6, 6, 6, 0, -8, 10, 12, 5, 18,
					-- layer=1 filter=29 channel=49
					58, -2, 6, 19, 43, -25, 19, 39, -15,
					-- layer=1 filter=29 channel=50
					0, 20, 12, -16, 17, 13, 0, 11, 30,
					-- layer=1 filter=29 channel=51
					3, 2, 7, -18, 9, 2, -17, 4, 9,
					-- layer=1 filter=29 channel=52
					-127, -101, -130, -35, -49, -60, -33, 3, 17,
					-- layer=1 filter=29 channel=53
					-38, -89, -27, -23, -90, -14, -35, -62, -73,
					-- layer=1 filter=29 channel=54
					16, 26, -3, -6, 12, -8, 12, 17, 12,
					-- layer=1 filter=29 channel=55
					9, -6, -19, 42, 11, 10, 17, 37, 38,
					-- layer=1 filter=29 channel=56
					-8, -38, -4, -26, -39, -36, -14, -35, -54,
					-- layer=1 filter=29 channel=57
					-4, -8, -6, 1, -12, -13, -7, -19, -18,
					-- layer=1 filter=29 channel=58
					-17, 21, 10, 9, 3, 6, 22, -14, 7,
					-- layer=1 filter=29 channel=59
					6, -46, -59, -23, -108, -4, -23, -11, -17,
					-- layer=1 filter=29 channel=60
					-75, -20, -39, -21, -18, -39, -15, -4, 32,
					-- layer=1 filter=29 channel=61
					7, -52, -25, -52, -98, 6, 26, -30, -28,
					-- layer=1 filter=29 channel=62
					-18, -21, -39, -9, -30, 30, 34, -9, 7,
					-- layer=1 filter=29 channel=63
					-32, -19, 7, -11, -55, -12, -23, -20, -16,
					-- layer=1 filter=30 channel=0
					-17, 7, -25, -10, -44, 9, 11, -9, -18,
					-- layer=1 filter=30 channel=1
					-27, -39, -4, 3, 2, -5, 27, 14, 2,
					-- layer=1 filter=30 channel=2
					-20, 1, 15, -75, -41, 1, -31, -49, -33,
					-- layer=1 filter=30 channel=3
					-4, -17, -6, 3, -32, -24, -9, -15, -26,
					-- layer=1 filter=30 channel=4
					0, -20, 6, -3, -18, -39, -19, -8, -24,
					-- layer=1 filter=30 channel=5
					6, 4, -13, 20, 0, 7, 30, -10, 0,
					-- layer=1 filter=30 channel=6
					19, 19, -40, 1, 8, -11, 6, -3, -10,
					-- layer=1 filter=30 channel=7
					-8, -4, -19, -34, -23, -40, -14, 3, -41,
					-- layer=1 filter=30 channel=8
					-23, -2, -30, -18, -10, 0, 10, -13, 12,
					-- layer=1 filter=30 channel=9
					-14, 19, -26, -12, 0, -2, -10, 15, -1,
					-- layer=1 filter=30 channel=10
					2, 4, 31, -10, -31, 0, 10, -2, -15,
					-- layer=1 filter=30 channel=11
					-40, -22, -35, -23, -5, -27, -17, -10, -4,
					-- layer=1 filter=30 channel=12
					-8, -6, -14, -4, 16, 15, 13, -18, 12,
					-- layer=1 filter=30 channel=13
					2, 9, -4, 6, -6, 12, 2, 4, 5,
					-- layer=1 filter=30 channel=14
					-20, -4, 0, -68, -48, -24, -36, -81, -46,
					-- layer=1 filter=30 channel=15
					37, 21, 35, 0, 22, 9, 17, 1, -2,
					-- layer=1 filter=30 channel=16
					-13, -66, -37, -74, -43, -24, -32, -41, -4,
					-- layer=1 filter=30 channel=17
					-24, -17, -23, 15, 9, 1, 23, 32, 22,
					-- layer=1 filter=30 channel=18
					0, 2, -41, 8, 1, 6, 31, -26, -7,
					-- layer=1 filter=30 channel=19
					-8, -11, -14, -6, -14, 0, 0, 5, -21,
					-- layer=1 filter=30 channel=20
					22, 0, 16, 21, 28, 10, 29, 20, 27,
					-- layer=1 filter=30 channel=21
					-4, 9, -35, 9, -11, -3, 45, 6, -29,
					-- layer=1 filter=30 channel=22
					-50, -46, -20, -16, -43, -10, -42, -73, 0,
					-- layer=1 filter=30 channel=23
					8, 13, 39, -19, 0, 1, -55, -19, -42,
					-- layer=1 filter=30 channel=24
					-24, -50, -8, 2, -17, -15, 12, -9, -25,
					-- layer=1 filter=30 channel=25
					7, -10, -22, -1, 17, 7, 29, 0, 14,
					-- layer=1 filter=30 channel=26
					-11, -46, -65, -12, -19, -50, -5, -27, -19,
					-- layer=1 filter=30 channel=27
					-25, -24, -10, 0, -3, 1, 0, 15, 10,
					-- layer=1 filter=30 channel=28
					10, -4, -24, 11, -4, 24, 15, 6, 8,
					-- layer=1 filter=30 channel=29
					-14, -28, -10, 0, 1, -9, 32, 16, 5,
					-- layer=1 filter=30 channel=30
					13, -6, 2, -24, -9, 9, -11, -8, 11,
					-- layer=1 filter=30 channel=31
					7, -6, -6, -6, 3, 8, 2, 5, -8,
					-- layer=1 filter=30 channel=32
					51, 33, -57, 35, 37, 14, 51, 21, 33,
					-- layer=1 filter=30 channel=33
					-30, -58, -14, -1, -7, -27, 30, 26, -5,
					-- layer=1 filter=30 channel=34
					-32, -20, -33, -1, -3, -3, 23, -6, 40,
					-- layer=1 filter=30 channel=35
					-30, -13, -13, -73, -31, -39, -27, 2, -12,
					-- layer=1 filter=30 channel=36
					22, 17, 1, 22, 52, -13, 32, 26, -13,
					-- layer=1 filter=30 channel=37
					39, -1, -28, -4, 5, 18, 26, -3, 16,
					-- layer=1 filter=30 channel=38
					37, -1, 24, -37, -5, -18, -27, 0, -16,
					-- layer=1 filter=30 channel=39
					12, 36, 24, 0, 15, -21, -17, -9, -30,
					-- layer=1 filter=30 channel=40
					-35, -17, -28, -18, -29, -46, -5, -36, 1,
					-- layer=1 filter=30 channel=41
					2, 17, 12, 6, 16, -14, 8, -15, -11,
					-- layer=1 filter=30 channel=42
					15, 22, 46, -61, -36, 23, -38, -79, -30,
					-- layer=1 filter=30 channel=43
					11, 3, -48, 21, -16, 31, 33, -14, 19,
					-- layer=1 filter=30 channel=44
					20, 18, 5, 17, 43, -3, 40, 7, 25,
					-- layer=1 filter=30 channel=45
					27, 10, -52, 12, -17, 39, 50, -19, 19,
					-- layer=1 filter=30 channel=46
					-72, -73, -48, -117, -91, -97, -103, -88, -75,
					-- layer=1 filter=30 channel=47
					-10, 4, -38, -1, 27, 32, 25, 2, 28,
					-- layer=1 filter=30 channel=48
					27, 1, 24, 9, 7, 14, 12, 9, 22,
					-- layer=1 filter=30 channel=49
					28, 36, 47, 23, 53, 1, 23, 26, 9,
					-- layer=1 filter=30 channel=50
					12, 22, 11, 22, 20, 17, 18, 2, 1,
					-- layer=1 filter=30 channel=51
					-1, -12, 11, 16, 12, 15, 27, 23, 23,
					-- layer=1 filter=30 channel=52
					-5, 8, -21, -59, -74, -56, -30, -29, 10,
					-- layer=1 filter=30 channel=53
					-26, -23, -45, 2, 4, -31, 28, -33, -6,
					-- layer=1 filter=30 channel=54
					2, 22, 7, 17, 9, 4, 7, -2, 3,
					-- layer=1 filter=30 channel=55
					4, 0, 24, 9, -26, -18, -28, -29, -28,
					-- layer=1 filter=30 channel=56
					-13, -13, -21, -51, -22, -47, -9, -33, -23,
					-- layer=1 filter=30 channel=57
					-10, -21, 9, -7, -4, -5, 28, -7, -15,
					-- layer=1 filter=30 channel=58
					-13, -4, -8, 14, 0, -4, 23, 21, -9,
					-- layer=1 filter=30 channel=59
					-20, -14, -31, 25, -3, 8, 50, 2, -26,
					-- layer=1 filter=30 channel=60
					-90, -121, -62, -88, -114, -83, -55, -18, -18,
					-- layer=1 filter=30 channel=61
					11, 23, -18, 24, -5, 21, 46, 12, 0,
					-- layer=1 filter=30 channel=62
					22, 49, -41, 29, 17, 35, 51, 7, -10,
					-- layer=1 filter=30 channel=63
					-50, -75, -24, -51, -67, -74, -94, -99, -49,
					-- layer=1 filter=31 channel=0
					11, -6, -2, -16, -8, 10, -14, 0, -8,
					-- layer=1 filter=31 channel=1
					-14, -4, -5, 6, 6, -2, -11, 3, 1,
					-- layer=1 filter=31 channel=2
					6, -3, 7, -15, 8, -15, 6, 8, 10,
					-- layer=1 filter=31 channel=3
					-3, 9, -4, 4, 8, 7, -15, 9, -14,
					-- layer=1 filter=31 channel=4
					-14, 6, 11, -13, -8, -4, 3, 12, -10,
					-- layer=1 filter=31 channel=5
					-5, 7, 0, 7, -6, -8, 10, 13, -10,
					-- layer=1 filter=31 channel=6
					0, 5, -6, -10, -8, 12, 5, 4, 0,
					-- layer=1 filter=31 channel=7
					-6, -4, -12, -1, 13, 3, 10, -11, -9,
					-- layer=1 filter=31 channel=8
					3, -10, -9, -4, -8, 12, -15, -12, -9,
					-- layer=1 filter=31 channel=9
					4, -4, 0, -6, -5, -3, -16, -10, -10,
					-- layer=1 filter=31 channel=10
					4, 4, 3, -4, 3, -9, -8, 11, -7,
					-- layer=1 filter=31 channel=11
					14, -17, 2, 7, -8, 5, -5, -5, 1,
					-- layer=1 filter=31 channel=12
					8, -7, 0, -17, -11, 12, 2, -7, -12,
					-- layer=1 filter=31 channel=13
					5, -3, 7, 11, -1, -9, -7, -9, -1,
					-- layer=1 filter=31 channel=14
					-6, -2, 9, 2, 0, -3, 9, -8, 2,
					-- layer=1 filter=31 channel=15
					1, -8, 4, 2, -12, -10, 7, -15, 2,
					-- layer=1 filter=31 channel=16
					8, -2, -1, -10, 2, -13, 13, -12, -6,
					-- layer=1 filter=31 channel=17
					-12, -16, -9, 12, -8, 12, 7, -5, 6,
					-- layer=1 filter=31 channel=18
					-3, -11, -11, 4, 10, 3, -9, 10, 7,
					-- layer=1 filter=31 channel=19
					-14, 6, 4, -1, 5, -5, -2, 0, -2,
					-- layer=1 filter=31 channel=20
					-14, -10, 9, -8, 3, -14, 1, -2, -3,
					-- layer=1 filter=31 channel=21
					7, -14, -9, 0, -6, -7, -6, -15, -12,
					-- layer=1 filter=31 channel=22
					11, 6, 11, -9, -9, -13, 3, -1, -10,
					-- layer=1 filter=31 channel=23
					-10, -10, 10, 11, 6, 8, -14, -15, 8,
					-- layer=1 filter=31 channel=24
					7, -15, -3, 10, -6, 6, -10, -12, -8,
					-- layer=1 filter=31 channel=25
					-11, -15, 13, 7, 1, -16, 14, -11, -3,
					-- layer=1 filter=31 channel=26
					-9, -8, 5, -5, 3, 5, -15, -10, -9,
					-- layer=1 filter=31 channel=27
					-15, -5, 11, 4, -12, -15, 6, -7, -8,
					-- layer=1 filter=31 channel=28
					-3, 6, 3, 8, -11, 11, -14, -6, -11,
					-- layer=1 filter=31 channel=29
					12, 0, 9, 1, -3, 10, -7, -10, 2,
					-- layer=1 filter=31 channel=30
					-1, -15, -2, -3, 5, 3, 10, 2, -2,
					-- layer=1 filter=31 channel=31
					5, 10, 13, -1, 5, 12, 5, 14, 6,
					-- layer=1 filter=31 channel=32
					-9, -7, -2, 3, -6, 0, -11, -1, 1,
					-- layer=1 filter=31 channel=33
					-3, -11, -14, -6, 0, -3, 0, -11, -7,
					-- layer=1 filter=31 channel=34
					5, -3, -13, -12, 3, -2, 3, 1, -13,
					-- layer=1 filter=31 channel=35
					1, -6, -4, -4, -9, -4, -10, -10, -15,
					-- layer=1 filter=31 channel=36
					14, 7, -8, 3, 2, 0, -3, -4, 12,
					-- layer=1 filter=31 channel=37
					2, -5, -3, 0, 1, -9, -11, -14, -1,
					-- layer=1 filter=31 channel=38
					0, 4, 0, -6, 9, -10, -3, 11, 11,
					-- layer=1 filter=31 channel=39
					0, -10, -16, -2, -9, -10, -15, -3, 7,
					-- layer=1 filter=31 channel=40
					3, -15, -5, 10, -6, 8, -10, -12, -9,
					-- layer=1 filter=31 channel=41
					-14, 11, -14, 3, -7, -10, 9, -7, -4,
					-- layer=1 filter=31 channel=42
					1, -17, 0, -12, -3, 0, -11, -8, -8,
					-- layer=1 filter=31 channel=43
					-17, -3, -2, 8, -3, 3, -14, 3, 8,
					-- layer=1 filter=31 channel=44
					-7, 1, 11, -4, 6, 8, 3, 8, -11,
					-- layer=1 filter=31 channel=45
					0, -1, -12, -3, -15, -7, 13, -9, 0,
					-- layer=1 filter=31 channel=46
					12, -8, 11, 7, 1, 3, -11, 6, -12,
					-- layer=1 filter=31 channel=47
					5, -8, -3, -2, 5, 0, -8, 0, 10,
					-- layer=1 filter=31 channel=48
					-1, 7, -1, 12, 10, 9, -11, -6, 12,
					-- layer=1 filter=31 channel=49
					0, -3, 8, -11, 7, -5, -12, 10, -3,
					-- layer=1 filter=31 channel=50
					4, -16, -6, -4, -11, -10, 9, 10, -14,
					-- layer=1 filter=31 channel=51
					-15, 10, -17, 3, -11, -12, 12, 13, -14,
					-- layer=1 filter=31 channel=52
					15, 9, -5, 8, -13, -10, 5, -9, -12,
					-- layer=1 filter=31 channel=53
					-12, -10, 3, 2, -11, 12, -12, -6, 14,
					-- layer=1 filter=31 channel=54
					4, 11, -11, -8, -9, -6, -3, -3, 0,
					-- layer=1 filter=31 channel=55
					10, 0, 11, -6, 5, -9, -12, 7, 2,
					-- layer=1 filter=31 channel=56
					-10, 3, -5, 0, -14, 0, 1, 2, 12,
					-- layer=1 filter=31 channel=57
					-11, 7, -8, -4, 7, -7, -11, 0, -12,
					-- layer=1 filter=31 channel=58
					4, 0, 11, -4, -9, -14, 0, -3, 13,
					-- layer=1 filter=31 channel=59
					9, 7, -14, -6, 0, 9, -9, -1, -12,
					-- layer=1 filter=31 channel=60
					9, -8, 12, 1, -4, 8, -13, -5, -3,
					-- layer=1 filter=31 channel=61
					7, 11, -15, -1, -15, -6, -16, -16, -10,
					-- layer=1 filter=31 channel=62
					8, -11, -4, 8, -8, -13, 13, -8, -4,
					-- layer=1 filter=31 channel=63
					3, -5, 4, -4, 2, -10, -2, -11, 0,
					-- layer=1 filter=32 channel=0
					0, 0, -9, 3, -1, 3, -20, -36, -28,
					-- layer=1 filter=32 channel=1
					-42, 4, 14, -1, -7, -4, -7, -5, -2,
					-- layer=1 filter=32 channel=2
					27, -9, 19, -2, 11, 22, -29, 1, 11,
					-- layer=1 filter=32 channel=3
					-17, 1, 2, -20, 3, -1, -29, -6, -7,
					-- layer=1 filter=32 channel=4
					-21, -14, -28, -22, -30, -34, 6, -12, -25,
					-- layer=1 filter=32 channel=5
					24, 21, 1, 2, -6, 4, -13, 2, -20,
					-- layer=1 filter=32 channel=6
					1, -6, 5, -2, -1, -2, 3, -2, 4,
					-- layer=1 filter=32 channel=7
					-16, 25, 10, -3, -20, -27, 19, -7, -10,
					-- layer=1 filter=32 channel=8
					-11, -8, 11, -11, 5, -25, 23, 11, -18,
					-- layer=1 filter=32 channel=9
					0, 3, -9, -7, 20, -13, 23, 23, 5,
					-- layer=1 filter=32 channel=10
					-4, 15, 16, -16, -19, -17, -4, 5, 26,
					-- layer=1 filter=32 channel=11
					-18, -18, -14, -12, -28, -20, -5, 38, 17,
					-- layer=1 filter=32 channel=12
					7, 6, 15, 1, -28, 0, -23, -14, -19,
					-- layer=1 filter=32 channel=13
					-12, -12, 15, 9, 4, 25, -13, -2, 21,
					-- layer=1 filter=32 channel=14
					42, 5, 31, 3, 14, 41, -21, -1, 40,
					-- layer=1 filter=32 channel=15
					-27, -60, -31, -13, -44, 26, -33, 12, -5,
					-- layer=1 filter=32 channel=16
					4, -19, -40, 5, -28, -57, -36, 0, -24,
					-- layer=1 filter=32 channel=17
					-3, 17, 13, 6, 20, 4, 19, -11, 7,
					-- layer=1 filter=32 channel=18
					6, -7, 0, 23, 2, -1, 9, 9, -22,
					-- layer=1 filter=32 channel=19
					-33, -7, -11, -18, 5, -20, 14, -13, -24,
					-- layer=1 filter=32 channel=20
					-26, -14, -2, -27, -36, -5, -23, -16, 15,
					-- layer=1 filter=32 channel=21
					1, 8, 26, -32, 16, 9, 18, 5, 19,
					-- layer=1 filter=32 channel=22
					-10, -47, 5, 10, 4, -13, -16, 1, 43,
					-- layer=1 filter=32 channel=23
					-2, -15, -2, -29, 5, 15, -13, 13, -4,
					-- layer=1 filter=32 channel=24
					-7, 16, 10, -14, -29, -27, -7, -5, -6,
					-- layer=1 filter=32 channel=25
					31, 31, 15, 23, -11, 3, -37, -14, -3,
					-- layer=1 filter=32 channel=26
					-9, -43, -18, -24, -56, -37, 0, 2, -3,
					-- layer=1 filter=32 channel=27
					-10, -8, 4, -30, -7, -18, 13, -2, 0,
					-- layer=1 filter=32 channel=28
					4, 16, 33, -17, 0, 5, 8, -12, 20,
					-- layer=1 filter=32 channel=29
					-17, 8, 17, 9, 4, -16, 9, 4, -1,
					-- layer=1 filter=32 channel=30
					25, -12, 8, 8, -2, -9, 0, -1, -11,
					-- layer=1 filter=32 channel=31
					5, 11, 12, -5, -12, -8, 11, -9, 1,
					-- layer=1 filter=32 channel=32
					-62, -7, -53, -8, -70, 24, -2, -19, -9,
					-- layer=1 filter=32 channel=33
					-29, -11, 9, -19, -20, -12, -11, -10, -3,
					-- layer=1 filter=32 channel=34
					7, 17, -42, -28, -25, 21, -7, 28, 0,
					-- layer=1 filter=32 channel=35
					6, 11, 25, -21, 8, -6, -32, -22, -21,
					-- layer=1 filter=32 channel=36
					-13, -6, 0, -6, -29, 12, -5, 8, -7,
					-- layer=1 filter=32 channel=37
					21, 4, 26, 29, -17, -17, 2, 3, 25,
					-- layer=1 filter=32 channel=38
					-16, -4, 19, -2, 16, 17, -4, 1, 24,
					-- layer=1 filter=32 channel=39
					34, -35, 1, -33, -30, -2, -5, 12, 0,
					-- layer=1 filter=32 channel=40
					-19, -23, -18, 2, 40, 13, -1, 32, 29,
					-- layer=1 filter=32 channel=41
					-1, -12, -5, 3, -9, -9, -12, 1, -1,
					-- layer=1 filter=32 channel=42
					43, -3, 4, -13, 13, 22, -22, -3, 17,
					-- layer=1 filter=32 channel=43
					27, 19, 15, 5, 0, 11, -11, -4, 21,
					-- layer=1 filter=32 channel=44
					-31, -56, -39, 8, -41, -44, -33, 4, 2,
					-- layer=1 filter=32 channel=45
					31, 7, 44, 43, 1, -4, -6, -5, 41,
					-- layer=1 filter=32 channel=46
					-1, -17, -19, -38, -26, -24, -33, -47, -41,
					-- layer=1 filter=32 channel=47
					32, 0, -7, 30, -28, 13, -33, 16, 8,
					-- layer=1 filter=32 channel=48
					1, 0, -6, 17, 6, 1, 0, 3, 22,
					-- layer=1 filter=32 channel=49
					-23, -57, -43, -20, -44, 5, 4, 36, 1,
					-- layer=1 filter=32 channel=50
					28, 23, 12, 8, 19, 23, 4, 7, 10,
					-- layer=1 filter=32 channel=51
					15, 7, 7, 4, -7, 0, 7, 5, -1,
					-- layer=1 filter=32 channel=52
					-12, -20, -24, -31, -18, 42, -44, -10, 9,
					-- layer=1 filter=32 channel=53
					-52, -32, -49, -52, -4, -31, 4, 18, 25,
					-- layer=1 filter=32 channel=54
					21, 22, -2, -3, -9, 2, 15, 4, -2,
					-- layer=1 filter=32 channel=55
					-42, -16, 1, -1, 18, 34, -40, -18, 11,
					-- layer=1 filter=32 channel=56
					-29, -18, -19, -32, -38, -52, -9, -4, -50,
					-- layer=1 filter=32 channel=57
					-14, -23, -13, 8, 0, -4, 21, 9, -10,
					-- layer=1 filter=32 channel=58
					-17, 2, -14, 18, -23, 3, -10, -21, -16,
					-- layer=1 filter=32 channel=59
					-8, 8, -23, -48, 13, 2, 36, 24, 37,
					-- layer=1 filter=32 channel=60
					36, 21, 34, 8, 71, 82, -33, -17, 2,
					-- layer=1 filter=32 channel=61
					-16, -32, -23, -34, -1, -4, 38, 17, 52,
					-- layer=1 filter=32 channel=62
					14, -1, 7, -7, 9, 26, 13, -13, 27,
					-- layer=1 filter=32 channel=63
					34, -6, 4, 15, 15, -5, 11, 13, 14,
					-- layer=1 filter=33 channel=0
					-34, -4, -28, 3, -19, 11, -11, 2, -5,
					-- layer=1 filter=33 channel=1
					9, 18, -1, -24, 7, -17, -17, 11, 7,
					-- layer=1 filter=33 channel=2
					-22, 21, -32, 30, 23, 22, 16, 3, -3,
					-- layer=1 filter=33 channel=3
					27, 4, 7, 3, -32, 0, 2, -10, -14,
					-- layer=1 filter=33 channel=4
					-8, 3, 23, -18, 0, 20, 20, 5, 34,
					-- layer=1 filter=33 channel=5
					15, 3, 2, 18, -3, -5, -1, 10, -9,
					-- layer=1 filter=33 channel=6
					-10, 1, -11, 13, -22, -1, -4, -2, 9,
					-- layer=1 filter=33 channel=7
					-3, -37, 6, -61, -46, -34, -23, -37, -4,
					-- layer=1 filter=33 channel=8
					-32, -37, -17, -20, -36, 5, -5, -5, 12,
					-- layer=1 filter=33 channel=9
					-5, 3, -16, -12, 23, -14, 15, 29, 9,
					-- layer=1 filter=33 channel=10
					7, 8, -8, -1, -15, 19, 15, -1, -9,
					-- layer=1 filter=33 channel=11
					-5, -34, -27, -46, -43, -20, -50, -19, -31,
					-- layer=1 filter=33 channel=12
					12, 0, 11, -13, -27, -4, -14, -29, -6,
					-- layer=1 filter=33 channel=13
					3, 1, 6, 4, 16, -15, -1, -24, -24,
					-- layer=1 filter=33 channel=14
					-2, -16, -10, 17, -1, 20, 10, 0, 5,
					-- layer=1 filter=33 channel=15
					22, -1, 2, -17, 7, 49, 33, 52, 2,
					-- layer=1 filter=33 channel=16
					-39, -36, 4, -52, -52, 3, -29, -18, -15,
					-- layer=1 filter=33 channel=17
					9, 10, 3, -20, 27, -26, 10, 5, -17,
					-- layer=1 filter=33 channel=18
					-17, -5, -28, 17, -17, -1, 10, -1, 25,
					-- layer=1 filter=33 channel=19
					10, 23, 7, -3, 13, 8, 21, 9, 1,
					-- layer=1 filter=33 channel=20
					2, 14, 13, -6, -21, 18, 9, -3, 10,
					-- layer=1 filter=33 channel=21
					-7, -4, 4, 4, 3, -5, 8, -12, -1,
					-- layer=1 filter=33 channel=22
					-12, -45, 13, 13, -2, 6, 5, 23, 1,
					-- layer=1 filter=33 channel=23
					-2, -5, -32, -6, -5, 4, 14, 18, -16,
					-- layer=1 filter=33 channel=24
					1, 2, 15, -1, 17, 21, -5, -7, 27,
					-- layer=1 filter=33 channel=25
					1, 14, -17, -16, -15, -8, -28, -8, 0,
					-- layer=1 filter=33 channel=26
					-10, -22, 10, -21, -21, 15, -28, 0, 22,
					-- layer=1 filter=33 channel=27
					0, -16, 6, -17, -29, -23, -23, -2, -21,
					-- layer=1 filter=33 channel=28
					-16, -37, -6, -53, -64, -34, -33, -58, -46,
					-- layer=1 filter=33 channel=29
					-14, -1, -6, -14, -34, -28, -3, -27, -8,
					-- layer=1 filter=33 channel=30
					-2, -16, -12, 15, 1, 19, 1, 0, -16,
					-- layer=1 filter=33 channel=31
					-3, 0, -10, 0, 13, 11, -7, -4, -8,
					-- layer=1 filter=33 channel=32
					-6, 26, 1, -19, -29, -15, -54, -19, -25,
					-- layer=1 filter=33 channel=33
					9, 18, -11, 4, 0, -4, -15, -2, 3,
					-- layer=1 filter=33 channel=34
					-17, 23, -5, -6, 31, 30, -33, 27, 17,
					-- layer=1 filter=33 channel=35
					0, -7, -9, -17, -24, -7, -7, -43, -29,
					-- layer=1 filter=33 channel=36
					11, -4, -10, -15, -8, 0, -8, -6, -22,
					-- layer=1 filter=33 channel=37
					-15, 10, 2, -4, -20, 17, -17, 9, 4,
					-- layer=1 filter=33 channel=38
					0, 1, -12, 3, -6, 17, 16, -25, -12,
					-- layer=1 filter=33 channel=39
					2, -23, 8, -24, -17, 18, 1, 29, -13,
					-- layer=1 filter=33 channel=40
					23, -17, -3, 27, 38, 16, 29, 31, 24,
					-- layer=1 filter=33 channel=41
					19, -4, -1, 15, 5, 5, -10, 9, 9,
					-- layer=1 filter=33 channel=42
					-29, 27, -5, 21, -9, 51, 46, 40, 10,
					-- layer=1 filter=33 channel=43
					-20, 29, 1, 18, -3, 8, -2, -21, 21,
					-- layer=1 filter=33 channel=44
					23, -17, 12, -16, 6, 30, 10, 54, 0,
					-- layer=1 filter=33 channel=45
					-3, 30, 0, 28, -15, 20, 4, 9, -6,
					-- layer=1 filter=33 channel=46
					-44, -48, -62, -20, -42, -36, -24, -32, -48,
					-- layer=1 filter=33 channel=47
					-9, 0, -25, 16, -19, 23, -12, -7, 10,
					-- layer=1 filter=33 channel=48
					3, 5, -15, -5, 23, 5, 5, 14, 12,
					-- layer=1 filter=33 channel=49
					3, 21, 10, -16, -13, 45, 46, 52, 11,
					-- layer=1 filter=33 channel=50
					7, 2, 3, 26, 5, 13, -3, 16, 10,
					-- layer=1 filter=33 channel=51
					13, 5, 9, 12, 11, 14, -7, -1, 5,
					-- layer=1 filter=33 channel=52
					-37, -8, -14, 7, -2, 1, -27, -35, -39,
					-- layer=1 filter=33 channel=53
					12, -37, 25, -19, 17, -12, -10, 38, 5,
					-- layer=1 filter=33 channel=54
					13, -4, -4, 10, 13, 6, 19, 6, 11,
					-- layer=1 filter=33 channel=55
					10, -9, 20, 12, 22, 4, -9, -14, -11,
					-- layer=1 filter=33 channel=56
					-34, -20, 22, -30, -9, 12, -28, 3, -3,
					-- layer=1 filter=33 channel=57
					-8, 3, 16, -1, -19, 12, -4, -4, 17,
					-- layer=1 filter=33 channel=58
					10, 7, 0, 2, -16, 4, -3, 18, -12,
					-- layer=1 filter=33 channel=59
					16, -1, 6, -4, 8, -2, -7, 45, 15,
					-- layer=1 filter=33 channel=60
					-49, -27, 0, 14, 20, 46, 6, 0, 6,
					-- layer=1 filter=33 channel=61
					42, -2, 33, 33, 25, 27, 40, 64, 51,
					-- layer=1 filter=33 channel=62
					13, 7, -10, 8, -20, 5, 22, 17, -9,
					-- layer=1 filter=33 channel=63
					5, -23, -4, 20, -7, 8, 6, 19, -6,
					-- layer=1 filter=34 channel=0
					-65, -80, -80, -68, -52, -73, -57, -53, -38,
					-- layer=1 filter=34 channel=1
					0, -4, -36, 0, -31, -23, 1, 0, 13,
					-- layer=1 filter=34 channel=2
					-32, -84, -79, -89, -80, -52, -87, -41, -60,
					-- layer=1 filter=34 channel=3
					-32, -41, -33, 0, -20, -24, 17, -2, -16,
					-- layer=1 filter=34 channel=4
					-2, -19, -21, -10, 5, 14, -14, 0, 8,
					-- layer=1 filter=34 channel=5
					-8, -32, -39, -1, 13, 15, 14, 13, 21,
					-- layer=1 filter=34 channel=6
					46, 55, 17, 8, 27, 43, 29, 19, 30,
					-- layer=1 filter=34 channel=7
					-3, 17, 3, -23, -20, -1, -25, 5, 1,
					-- layer=1 filter=34 channel=8
					-17, 17, -2, 16, 0, 9, 13, -3, 16,
					-- layer=1 filter=34 channel=9
					-9, 18, -7, 13, 0, 0, -2, -22, -17,
					-- layer=1 filter=34 channel=10
					-7, -43, -58, -49, -21, -28, 1, -24, 6,
					-- layer=1 filter=34 channel=11
					3, 21, 52, -15, -12, 14, -27, -35, 7,
					-- layer=1 filter=34 channel=12
					-28, -19, -22, 11, 3, -20, 23, 18, 18,
					-- layer=1 filter=34 channel=13
					1, -24, 7, 21, 2, -1, 33, 39, -1,
					-- layer=1 filter=34 channel=14
					-23, -64, -97, -83, -71, -60, -112, -87, -92,
					-- layer=1 filter=34 channel=15
					22, -26, 23, -31, -17, 14, -27, -75, -41,
					-- layer=1 filter=34 channel=16
					3, -8, -10, -49, -31, -12, -12, -1, 12,
					-- layer=1 filter=34 channel=17
					-14, -10, -44, 14, -6, 8, 14, 4, -14,
					-- layer=1 filter=34 channel=18
					23, 14, -27, -19, 24, 26, 18, 0, 23,
					-- layer=1 filter=34 channel=19
					-3, -20, -41, 3, -18, -5, 14, 7, 0,
					-- layer=1 filter=34 channel=20
					3, -27, 10, 2, -3, 0, 12, -15, -5,
					-- layer=1 filter=34 channel=21
					22, 60, 50, 22, 21, 36, 30, 18, 8,
					-- layer=1 filter=34 channel=22
					-50, 23, -34, -14, -71, -3, -96, -85, -95,
					-- layer=1 filter=34 channel=23
					20, -35, -12, -37, -15, -3, -58, -63, 8,
					-- layer=1 filter=34 channel=24
					-10, -46, -67, -7, -22, -35, 6, -4, -17,
					-- layer=1 filter=34 channel=25
					27, 23, 5, 5, 17, 10, 17, 37, 49,
					-- layer=1 filter=34 channel=26
					3, -11, -25, 1, 2, 12, 17, 22, 34,
					-- layer=1 filter=34 channel=27
					-18, -2, -21, 14, -9, 1, 13, 12, 23,
					-- layer=1 filter=34 channel=28
					5, 36, 20, 29, 26, 36, 44, 18, 15,
					-- layer=1 filter=34 channel=29
					11, -16, -13, 9, 1, 0, 20, 18, 7,
					-- layer=1 filter=34 channel=30
					-29, -35, -46, 5, -12, -8, 12, 15, 21,
					-- layer=1 filter=34 channel=31
					6, -1, 7, -14, -10, 11, 1, -12, 7,
					-- layer=1 filter=34 channel=32
					9, 0, 9, -26, -17, 8, -32, -3, -29,
					-- layer=1 filter=34 channel=33
					-5, -40, -51, -20, -11, -30, 2, 9, 11,
					-- layer=1 filter=34 channel=34
					14, 21, 53, 24, 30, 34, 22, 19, 22,
					-- layer=1 filter=34 channel=35
					-31, -58, -69, -74, -59, -76, -9, -1, -38,
					-- layer=1 filter=34 channel=36
					10, -29, -23, -13, -11, -23, -12, -7, -1,
					-- layer=1 filter=34 channel=37
					43, 15, 24, 14, 20, 31, 30, 28, 19,
					-- layer=1 filter=34 channel=38
					-12, -44, -53, -29, -31, -34, 5, -13, 2,
					-- layer=1 filter=34 channel=39
					36, 1, 31, -53, -28, -3, -55, -81, -23,
					-- layer=1 filter=34 channel=40
					-50, -39, -76, -15, -95, -18, -56, -62, -86,
					-- layer=1 filter=34 channel=41
					-36, -39, -40, 16, -11, -18, 21, 15, 28,
					-- layer=1 filter=34 channel=42
					34, -47, -47, -50, -31, -22, -47, -81, -38,
					-- layer=1 filter=34 channel=43
					54, 61, 59, 25, 54, 63, 36, 40, 23,
					-- layer=1 filter=34 channel=44
					38, -13, 13, -2, -15, 28, 6, -11, 25,
					-- layer=1 filter=34 channel=45
					61, 36, 30, 25, 30, 56, 13, 32, 29,
					-- layer=1 filter=34 channel=46
					-72, -79, -24, -24, -7, 15, -15, -10, 29,
					-- layer=1 filter=34 channel=47
					27, 17, 1, 21, 15, 51, 47, 38, 23,
					-- layer=1 filter=34 channel=48
					-1, 3, -6, 22, 19, 0, 19, 28, 3,
					-- layer=1 filter=34 channel=49
					49, 12, 16, -23, -31, 6, -41, -75, -16,
					-- layer=1 filter=34 channel=50
					-30, -43, -19, 0, -15, -28, 31, -3, -2,
					-- layer=1 filter=34 channel=51
					-17, -39, -24, -3, 9, -9, 17, 18, 22,
					-- layer=1 filter=34 channel=52
					36, 48, 44, -4, 24, 21, 18, 2, -18,
					-- layer=1 filter=34 channel=53
					-44, 10, -21, -53, -77, -22, -28, -64, -57,
					-- layer=1 filter=34 channel=54
					-21, -43, -34, -6, -5, -23, 29, -7, 2,
					-- layer=1 filter=34 channel=55
					-12, -53, -8, 24, -11, -12, -5, -7, 41,
					-- layer=1 filter=34 channel=56
					-7, -14, -15, -28, -33, -21, -10, -13, 23,
					-- layer=1 filter=34 channel=57
					-19, -36, -44, 4, -8, 2, 11, 9, 0,
					-- layer=1 filter=34 channel=58
					-3, -40, -37, 21, 4, 6, 28, 27, 19,
					-- layer=1 filter=34 channel=59
					35, 102, 36, 4, 7, 40, 18, -7, -6,
					-- layer=1 filter=34 channel=60
					-88, -76, -27, 10, -21, 32, -61, -91, -28,
					-- layer=1 filter=34 channel=61
					28, 87, 20, 9, -8, 12, 9, -19, -38,
					-- layer=1 filter=34 channel=62
					66, 95, 58, 17, 35, 53, 27, 27, 3,
					-- layer=1 filter=34 channel=63
					-35, -16, -40, -18, -63, -14, -38, -40, -46,
					-- layer=1 filter=35 channel=0
					6, -12, -19, 16, 20, -5, -5, 28, 9,
					-- layer=1 filter=35 channel=1
					-14, -41, -11, -9, -13, 2, -20, -28, -14,
					-- layer=1 filter=35 channel=2
					30, -2, 17, 49, 24, -5, 1, 42, 48,
					-- layer=1 filter=35 channel=3
					-36, -38, -1, 9, -11, -1, 12, 14, 3,
					-- layer=1 filter=35 channel=4
					-17, 0, 27, -23, -22, -12, -25, -6, -9,
					-- layer=1 filter=35 channel=5
					9, -3, 24, 11, -7, 7, 17, -11, -21,
					-- layer=1 filter=35 channel=6
					33, -18, 4, -12, -23, -14, -14, -23, -29,
					-- layer=1 filter=35 channel=7
					9, 11, -7, 23, 19, 12, 14, 14, 30,
					-- layer=1 filter=35 channel=8
					7, -12, -1, 6, 6, 16, 18, -14, 2,
					-- layer=1 filter=35 channel=9
					-31, -16, 8, -53, -32, -51, -16, -37, -46,
					-- layer=1 filter=35 channel=10
					3, -29, -1, 31, 4, -1, -15, 22, 10,
					-- layer=1 filter=35 channel=11
					6, 3, -6, 19, -9, 27, 23, 25, 0,
					-- layer=1 filter=35 channel=12
					-4, -1, 5, 13, -10, 0, 6, 21, -11,
					-- layer=1 filter=35 channel=13
					-25, 1, -17, 5, 0, 12, 22, -10, 1,
					-- layer=1 filter=35 channel=14
					29, 17, 30, 46, 40, -5, 66, 71, 50,
					-- layer=1 filter=35 channel=15
					-2, -29, 26, 43, -12, 0, 15, 42, 16,
					-- layer=1 filter=35 channel=16
					21, 13, 43, 0, 12, 12, 8, 42, 15,
					-- layer=1 filter=35 channel=17
					-9, 15, 18, 3, 19, 24, 12, 12, 22,
					-- layer=1 filter=35 channel=18
					23, -8, 10, -23, -9, -34, 0, -10, -42,
					-- layer=1 filter=35 channel=19
					-2, -24, -28, 5, -20, -4, -9, -25, -41,
					-- layer=1 filter=35 channel=20
					-9, 2, 21, -18, -23, -13, -20, 23, 4,
					-- layer=1 filter=35 channel=21
					19, -25, -13, -1, 2, -5, 27, 25, 4,
					-- layer=1 filter=35 channel=22
					-18, -61, -11, -53, -84, -92, 2, -27, -36,
					-- layer=1 filter=35 channel=23
					-39, -60, 27, -16, -42, -29, -8, -6, -10,
					-- layer=1 filter=35 channel=24
					-42, -19, -40, -20, -6, -30, -34, -41, -37,
					-- layer=1 filter=35 channel=25
					45, 29, 0, 0, 22, 4, 12, 46, -3,
					-- layer=1 filter=35 channel=26
					7, -4, -12, -39, -37, -10, -51, -27, -30,
					-- layer=1 filter=35 channel=27
					3, 9, -7, -9, 19, 15, 2, 10, 25,
					-- layer=1 filter=35 channel=28
					0, -4, 2, 1, 30, 2, 36, 3, 11,
					-- layer=1 filter=35 channel=29
					0, 11, -1, -15, -12, 4, -27, 15, -9,
					-- layer=1 filter=35 channel=30
					-20, -11, 4, 14, 19, -4, 14, -13, 1,
					-- layer=1 filter=35 channel=31
					-8, 3, -9, 11, -10, 12, -1, 4, 8,
					-- layer=1 filter=35 channel=32
					-62, -25, -40, -43, -54, 0, 1, 55, 11,
					-- layer=1 filter=35 channel=33
					-7, -1, -19, 27, 23, 18, 1, -8, 4,
					-- layer=1 filter=35 channel=34
					17, -7, -10, -33, 0, 3, 1, 21, 0,
					-- layer=1 filter=35 channel=35
					-5, -12, 4, 27, 26, 7, 23, 24, 55,
					-- layer=1 filter=35 channel=36
					-24, -35, -21, 18, -25, -16, 32, 38, -3,
					-- layer=1 filter=35 channel=37
					39, 21, 5, 10, 17, 0, 29, 9, -9,
					-- layer=1 filter=35 channel=38
					-18, -9, -10, 30, 8, 0, 13, 35, 7,
					-- layer=1 filter=35 channel=39
					-30, -44, 13, -15, -49, -48, 25, 8, 11,
					-- layer=1 filter=35 channel=40
					-12, -18, -9, -19, -8, -35, 14, -8, 9,
					-- layer=1 filter=35 channel=41
					5, 11, 18, 9, 7, 6, 16, 18, 11,
					-- layer=1 filter=35 channel=42
					32, -8, 42, 49, 21, -15, 20, 31, 35,
					-- layer=1 filter=35 channel=43
					35, 14, -12, 26, 30, -2, 26, 36, -22,
					-- layer=1 filter=35 channel=44
					-10, -12, 12, -12, -45, -13, -2, 24, -10,
					-- layer=1 filter=35 channel=45
					32, 0, -17, 9, 14, -16, 9, 3, -22,
					-- layer=1 filter=35 channel=46
					53, 65, 71, 119, 101, 83, 135, 125, 104,
					-- layer=1 filter=35 channel=47
					20, -11, 0, -15, 7, -29, 3, 14, -15,
					-- layer=1 filter=35 channel=48
					-19, -11, -39, -16, -39, -20, -17, -29, -34,
					-- layer=1 filter=35 channel=49
					-12, -42, 15, 6, -36, -15, 8, 1, 29,
					-- layer=1 filter=35 channel=50
					-24, -19, -4, 0, -11, -28, 1, -15, -16,
					-- layer=1 filter=35 channel=51
					11, 14, 15, -2, 8, 10, -23, -16, -4,
					-- layer=1 filter=35 channel=52
					-1, -32, -35, 34, 20, 55, -1, 7, -5,
					-- layer=1 filter=35 channel=53
					-3, -71, -17, -9, -59, -23, 24, -59, 17,
					-- layer=1 filter=35 channel=54
					3, 11, 2, -5, -12, -10, -7, 16, -4,
					-- layer=1 filter=35 channel=55
					-28, -15, -28, 28, 38, 47, 33, 32, 9,
					-- layer=1 filter=35 channel=56
					12, 9, 10, -2, 29, 17, -18, 18, -2,
					-- layer=1 filter=35 channel=57
					-12, 3, -11, -28, -17, -9, -17, -34, -10,
					-- layer=1 filter=35 channel=58
					5, 12, -4, 5, 18, -16, -5, 12, -22,
					-- layer=1 filter=35 channel=59
					6, -61, -13, 4, -5, 21, 33, 7, 34,
					-- layer=1 filter=35 channel=60
					41, 22, 48, 10, 68, 109, 34, 42, 74,
					-- layer=1 filter=35 channel=61
					-11, -75, 8, -16, -30, -36, 52, -34, 22,
					-- layer=1 filter=35 channel=62
					43, -17, -3, 33, 12, 31, 30, 38, 26,
					-- layer=1 filter=35 channel=63
					-66, -53, -58, -89, -109, -108, -20, -21, -43,
					-- layer=1 filter=36 channel=0
					28, 31, 32, 0, 11, 6, 4, 8, -43,
					-- layer=1 filter=36 channel=1
					20, -2, -18, 13, -11, -25, 1, -24, -11,
					-- layer=1 filter=36 channel=2
					-11, 46, 35, 14, 23, -7, 17, 18, -55,
					-- layer=1 filter=36 channel=3
					-3, 25, 8, 13, 19, 5, 17, 3, -2,
					-- layer=1 filter=36 channel=4
					32, 12, -29, 18, -26, -36, -5, -42, -32,
					-- layer=1 filter=36 channel=5
					-25, -17, 0, -39, 18, 12, -16, 4, 35,
					-- layer=1 filter=36 channel=6
					-23, -41, 10, -35, -27, -17, 12, -4, 19,
					-- layer=1 filter=36 channel=7
					33, 28, 16, 25, -3, -30, 19, -12, -48,
					-- layer=1 filter=36 channel=8
					17, 19, -4, 7, -4, -21, 4, -19, -33,
					-- layer=1 filter=36 channel=9
					-19, 11, 17, -2, 9, 5, 27, 0, -21,
					-- layer=1 filter=36 channel=10
					17, 0, -13, 1, -38, -12, -10, -11, 2,
					-- layer=1 filter=36 channel=11
					30, -18, -12, -16, 14, -10, -23, 3, -2,
					-- layer=1 filter=36 channel=12
					23, 0, -1, 8, 7, -1, 7, 1, 10,
					-- layer=1 filter=36 channel=13
					0, 18, 35, 7, 21, 8, 8, 12, -3,
					-- layer=1 filter=36 channel=14
					-11, 22, 29, 0, 31, -6, 7, 27, -15,
					-- layer=1 filter=36 channel=15
					24, -39, 13, -4, -34, 53, -74, -9, 45,
					-- layer=1 filter=36 channel=16
					60, 9, -29, 47, -29, -34, -6, -44, -52,
					-- layer=1 filter=36 channel=17
					2, 11, -9, 7, 11, -17, 27, -26, -13,
					-- layer=1 filter=36 channel=18
					-50, -46, -23, -50, -50, -25, -16, -3, 17,
					-- layer=1 filter=36 channel=19
					8, -3, -21, -9, 8, -27, 1, -26, -13,
					-- layer=1 filter=36 channel=20
					25, 0, -13, 18, -34, 4, -59, -13, 29,
					-- layer=1 filter=36 channel=21
					-58, -11, 1, -47, -3, -14, 11, 6, 9,
					-- layer=1 filter=36 channel=22
					-49, 60, 9, -11, 29, 21, 26, 38, -59,
					-- layer=1 filter=36 channel=23
					-59, -53, 6, -74, -55, 27, -87, -19, 27,
					-- layer=1 filter=36 channel=24
					-15, 0, 2, -5, -1, -38, 4, -5, -24,
					-- layer=1 filter=36 channel=25
					-17, -9, -24, 1, -12, -3, -10, 11, 22,
					-- layer=1 filter=36 channel=26
					25, 11, 0, 34, -10, -59, 4, -11, -37,
					-- layer=1 filter=36 channel=27
					8, 18, -9, 25, -6, -18, 8, 5, -35,
					-- layer=1 filter=36 channel=28
					-1, 12, 30, 2, 10, 3, 34, 14, -11,
					-- layer=1 filter=36 channel=29
					24, 18, -16, 39, 2, -30, 15, -16, -4,
					-- layer=1 filter=36 channel=30
					-26, 20, 29, -10, 7, 34, -27, 17, 11,
					-- layer=1 filter=36 channel=31
					10, -4, -15, -6, -5, -10, -8, -8, -16,
					-- layer=1 filter=36 channel=32
					14, -31, -48, 24, -25, 24, -35, -35, 9,
					-- layer=1 filter=36 channel=33
					-9, 25, -2, 6, -1, -35, 9, -14, -25,
					-- layer=1 filter=36 channel=34
					8, -49, 19, 4, -16, 10, 5, 16, 38,
					-- layer=1 filter=36 channel=35
					22, 18, 25, 19, -5, -28, 37, -32, -54,
					-- layer=1 filter=36 channel=36
					-13, -15, 2, -36, -53, 23, -67, -12, 43,
					-- layer=1 filter=36 channel=37
					2, -15, -8, 8, -29, -1, -5, 16, 24,
					-- layer=1 filter=36 channel=38
					-3, 18, 40, 7, -21, -6, -9, -19, 17,
					-- layer=1 filter=36 channel=39
					-32, -54, 8, -62, -76, 24, -83, -51, 46,
					-- layer=1 filter=36 channel=40
					-25, 59, 36, 24, 41, 21, 41, 28, -57,
					-- layer=1 filter=36 channel=41
					5, -2, -2, 5, 4, 16, -8, 12, 2,
					-- layer=1 filter=36 channel=42
					-69, -29, 47, -79, -18, 19, -34, 29, 19,
					-- layer=1 filter=36 channel=43
					-37, -21, 19, -50, -32, -23, -14, 2, 41,
					-- layer=1 filter=36 channel=44
					3, -8, -88, 5, -53, 10, -58, 24, 31,
					-- layer=1 filter=36 channel=45
					-21, -29, 3, -45, -25, -22, -30, -27, 22,
					-- layer=1 filter=36 channel=46
					-22, -5, -11, -52, -22, -1, -25, 5, 13,
					-- layer=1 filter=36 channel=47
					3, -23, -12, 26, -27, 12, -17, 36, 42,
					-- layer=1 filter=36 channel=48
					-22, -18, 1, -10, 3, 26, -17, -2, 28,
					-- layer=1 filter=36 channel=49
					-4, -14, -8, -1, -37, 49, -73, -3, 42,
					-- layer=1 filter=36 channel=50
					-19, 1, 17, -21, -9, 13, -5, -11, 20,
					-- layer=1 filter=36 channel=51
					17, -11, -3, 2, -19, -21, 14, -13, 0,
					-- layer=1 filter=36 channel=52
					39, -11, 34, 10, 28, 5, 8, 3, 10,
					-- layer=1 filter=36 channel=53
					-58, 15, 24, -30, 15, 17, 16, -2, -74,
					-- layer=1 filter=36 channel=54
					-18, 3, 17, -18, -9, -3, -20, 1, 19,
					-- layer=1 filter=36 channel=55
					-35, 32, 38, -15, 6, 41, -9, 41, 19,
					-- layer=1 filter=36 channel=56
					37, 30, 14, 32, -18, -25, 19, 16, -10,
					-- layer=1 filter=36 channel=57
					0, 16, -27, 37, -5, -17, 18, -21, -20,
					-- layer=1 filter=36 channel=58
					-3, -3, -3, -8, -28, -5, -5, 18, 10,
					-- layer=1 filter=36 channel=59
					-70, -19, -2, -25, 12, 26, 5, 0, -34,
					-- layer=1 filter=36 channel=60
					38, 8, 29, 6, 40, 46, -12, 24, 21,
					-- layer=1 filter=36 channel=61
					-23, 47, 53, 24, 44, 68, 38, 21, 3,
					-- layer=1 filter=36 channel=62
					-59, -36, 15, -50, -8, -1, 8, 3, 25,
					-- layer=1 filter=36 channel=63
					-23, 39, 22, -12, 41, 20, 0, 27, -10,
					-- layer=1 filter=37 channel=0
					-15, -26, 40, -26, -14, 17, 2, -40, -62,
					-- layer=1 filter=37 channel=1
					0, -30, -13, 26, 5, -1, 34, -13, -20,
					-- layer=1 filter=37 channel=2
					1, -27, -5, -71, -57, -18, -32, -38, -70,
					-- layer=1 filter=37 channel=3
					4, -48, -52, -8, -42, -30, -3, -3, -18,
					-- layer=1 filter=37 channel=4
					35, 38, 61, 40, -3, 31, 35, 18, 12,
					-- layer=1 filter=37 channel=5
					-8, -20, -27, -19, -12, -4, -10, 9, -3,
					-- layer=1 filter=37 channel=6
					58, 51, 34, 48, 36, 20, -3, 33, 46,
					-- layer=1 filter=37 channel=7
					31, -7, 1, -1, -14, 0, 4, -1, 15,
					-- layer=1 filter=37 channel=8
					33, -7, -9, 29, -16, 5, 24, 11, -6,
					-- layer=1 filter=37 channel=9
					20, 48, 40, 24, 44, 66, 26, 55, 52,
					-- layer=1 filter=37 channel=10
					-38, -9, 16, -8, -38, -5, 13, -44, -30,
					-- layer=1 filter=37 channel=11
					34, -14, -29, 5, 3, 0, 9, 23, -12,
					-- layer=1 filter=37 channel=12
					-48, -53, -66, -45, -65, -76, -26, -18, -34,
					-- layer=1 filter=37 channel=13
					-31, -38, -22, 0, -10, -13, -21, -5, -13,
					-- layer=1 filter=37 channel=14
					32, -35, 5, -63, -51, -25, -5, -19, -37,
					-- layer=1 filter=37 channel=15
					1, 39, 69, -14, 23, 2, -4, 3, 6,
					-- layer=1 filter=37 channel=16
					23, -34, -28, -19, -66, -11, -31, -34, -19,
					-- layer=1 filter=37 channel=17
					4, -14, -21, 8, -36, 6, 0, 0, 2,
					-- layer=1 filter=37 channel=18
					48, 24, -2, 21, 6, -30, -37, 17, 11,
					-- layer=1 filter=37 channel=19
					-1, -2, -21, 10, 11, -15, -11, -7, -10,
					-- layer=1 filter=37 channel=20
					-23, -26, 8, -31, -48, -30, -14, -23, -25,
					-- layer=1 filter=37 channel=21
					32, 34, -12, 16, 7, -12, 6, 34, 26,
					-- layer=1 filter=37 channel=22
					38, 39, 22, 19, 43, 88, -8, 62, 28,
					-- layer=1 filter=37 channel=23
					23, 40, 34, 20, 70, 30, 36, 59, 28,
					-- layer=1 filter=37 channel=24
					-14, 5, 0, 6, 7, 10, -2, -27, -50,
					-- layer=1 filter=37 channel=25
					30, -43, -70, -50, -134, -96, -67, -85, -38,
					-- layer=1 filter=37 channel=26
					23, -9, -44, 10, -35, -27, -26, -28, -44,
					-- layer=1 filter=37 channel=27
					19, 4, 1, 8, 1, -11, 20, -8, -19,
					-- layer=1 filter=37 channel=28
					7, -5, -30, -11, -31, -31, -23, 6, -9,
					-- layer=1 filter=37 channel=29
					-3, 3, -23, 13, -54, -25, -11, -46, -23,
					-- layer=1 filter=37 channel=30
					-13, -31, -25, -13, -12, 4, -10, 0, -2,
					-- layer=1 filter=37 channel=31
					6, 6, -10, 9, -5, -4, 0, 0, 2,
					-- layer=1 filter=37 channel=32
					29, -56, -3, 1, -124, 36, 34, -13, 76,
					-- layer=1 filter=37 channel=33
					1, -7, -8, 18, -4, -31, 11, -24, -22,
					-- layer=1 filter=37 channel=34
					-20, -92, -97, -126, -148, -125, -90, -95, -67,
					-- layer=1 filter=37 channel=35
					-9, -49, -23, -35, -59, -44, 11, -58, -72,
					-- layer=1 filter=37 channel=36
					-25, -21, -24, -48, -23, -9, -4, -38, -14,
					-- layer=1 filter=37 channel=37
					7, -31, -57, -118, -172, -117, -131, -113, -101,
					-- layer=1 filter=37 channel=38
					-19, -12, 8, -38, -28, 10, -32, -25, -56,
					-- layer=1 filter=37 channel=39
					34, 75, 66, 38, 44, 50, 32, 33, 48,
					-- layer=1 filter=37 channel=40
					16, -26, -22, -8, -23, 19, -14, 24, 2,
					-- layer=1 filter=37 channel=41
					-22, -42, -30, -28, -11, -31, -11, -24, -22,
					-- layer=1 filter=37 channel=42
					23, 50, 51, -20, 33, 44, 2, -5, -2,
					-- layer=1 filter=37 channel=43
					33, 4, 8, -46, -55, -39, -78, -36, -5,
					-- layer=1 filter=37 channel=44
					10, -14, 11, -56, -24, -31, -10, -12, -16,
					-- layer=1 filter=37 channel=45
					43, 56, 1, -10, -2, -6, -81, -30, -26,
					-- layer=1 filter=37 channel=46
					-33, -49, -64, 5, -19, 4, -27, -30, -44,
					-- layer=1 filter=37 channel=47
					-2, -74, -65, -100, -148, -122, -111, -104, -103,
					-- layer=1 filter=37 channel=48
					2, 31, 17, 37, 30, 28, 16, 9, 21,
					-- layer=1 filter=37 channel=49
					-15, 37, 47, -35, 13, 10, 0, 25, 0,
					-- layer=1 filter=37 channel=50
					0, -3, 0, 5, -5, -3, -5, -1, 16,
					-- layer=1 filter=37 channel=51
					-7, -14, 4, 4, 10, -16, 10, -8, -18,
					-- layer=1 filter=37 channel=52
					-32, -17, -5, -60, -99, -69, -81, -83, -77,
					-- layer=1 filter=37 channel=53
					38, -19, -30, -13, -30, 17, -9, 14, 30,
					-- layer=1 filter=37 channel=54
					-7, -32, -29, -1, -3, 2, 0, 3, 12,
					-- layer=1 filter=37 channel=55
					2, -12, -22, -3, -23, -24, -50, -45, -55,
					-- layer=1 filter=37 channel=56
					-24, -14, 7, -13, -34, -13, 6, -15, -19,
					-- layer=1 filter=37 channel=57
					20, 0, 21, 3, -7, 14, 8, -17, -23,
					-- layer=1 filter=37 channel=58
					13, -16, -19, 0, -45, -40, -22, -23, -43,
					-- layer=1 filter=37 channel=59
					38, 48, -20, 26, -6, 24, 0, 22, 36,
					-- layer=1 filter=37 channel=60
					-12, 16, -23, -21, 9, -36, 36, 73, 48,
					-- layer=1 filter=37 channel=61
					21, 49, -2, 25, 49, 48, 2, 63, 70,
					-- layer=1 filter=37 channel=62
					35, 59, -6, 45, 11, 6, -5, 27, 26,
					-- layer=1 filter=37 channel=63
					42, 17, 0, 22, 33, 98, 7, 37, 52,
					-- layer=1 filter=38 channel=0
					3, -21, 5, 1, 4, 10, -11, 7, -13,
					-- layer=1 filter=38 channel=1
					0, -1, 6, 5, 12, -2, 8, -16, -20,
					-- layer=1 filter=38 channel=2
					29, -1, 23, 21, 16, 28, 7, 26, 32,
					-- layer=1 filter=38 channel=3
					-16, 0, -16, 0, -9, 5, -25, 2, 3,
					-- layer=1 filter=38 channel=4
					13, 14, 30, 21, 16, 5, 4, -16, -20,
					-- layer=1 filter=38 channel=5
					-22, -11, -7, 0, -3, -21, 3, 14, 23,
					-- layer=1 filter=38 channel=6
					5, -17, 4, 30, 2, -10, 17, -4, 8,
					-- layer=1 filter=38 channel=7
					-3, -12, -10, 18, 11, 0, 13, -3, -9,
					-- layer=1 filter=38 channel=8
					-17, 2, 5, 17, -19, -1, -12, -24, -13,
					-- layer=1 filter=38 channel=9
					-67, -17, 8, -62, -15, -33, 4, 1, 8,
					-- layer=1 filter=38 channel=10
					6, -7, 5, -21, -3, 10, -1, -23, -4,
					-- layer=1 filter=38 channel=11
					15, -1, 4, -1, -3, 17, 25, 21, 17,
					-- layer=1 filter=38 channel=12
					-14, -3, -18, -29, -27, -1, -14, 3, 6,
					-- layer=1 filter=38 channel=13
					-10, 4, -28, -1, 7, 2, 19, 25, 25,
					-- layer=1 filter=38 channel=14
					89, 40, 71, 48, 30, 47, 61, 36, 34,
					-- layer=1 filter=38 channel=15
					-60, -71, -4, -74, -86, -2, -57, -45, -30,
					-- layer=1 filter=38 channel=16
					1, -12, -3, 3, 13, 26, 15, -3, -7,
					-- layer=1 filter=38 channel=17
					-4, -4, -2, -5, -14, 6, 2, 11, 20,
					-- layer=1 filter=38 channel=18
					0, -32, 2, 9, -5, -31, -2, -11, -3,
					-- layer=1 filter=38 channel=19
					-1, -16, 6, 10, 4, -3, 7, -12, -17,
					-- layer=1 filter=38 channel=20
					15, 6, -5, -38, -24, 0, -16, -24, -7,
					-- layer=1 filter=38 channel=21
					-10, -39, -1, -7, -1, -28, -18, -10, -18,
					-- layer=1 filter=38 channel=22
					-14, -37, -2, -20, -51, -17, -14, -37, -13,
					-- layer=1 filter=38 channel=23
					-9, -19, -2, -36, -23, -16, 16, -6, 23,
					-- layer=1 filter=38 channel=24
					-14, -13, -10, 0, -10, 7, 13, 9, -6,
					-- layer=1 filter=38 channel=25
					37, 7, 37, 33, 10, 5, 9, 14, 12,
					-- layer=1 filter=38 channel=26
					-17, 2, -13, 3, 3, -13, 1, -32, -16,
					-- layer=1 filter=38 channel=27
					-10, -15, 7, 19, -1, 1, 9, -11, 7,
					-- layer=1 filter=38 channel=28
					5, -19, 2, -6, -7, 9, 16, 25, 23,
					-- layer=1 filter=38 channel=29
					0, -11, -7, -6, -12, 14, -6, -18, -9,
					-- layer=1 filter=38 channel=30
					-33, -37, -9, -44, -20, -28, 36, 1, 48,
					-- layer=1 filter=38 channel=31
					-9, -9, 0, 12, -11, 0, 2, -3, -3,
					-- layer=1 filter=38 channel=32
					-70, -27, -6, -40, -66, -48, -76, -66, -80,
					-- layer=1 filter=38 channel=33
					5, 9, 4, 3, -4, -1, 7, -6, -13,
					-- layer=1 filter=38 channel=34
					57, -7, 57, 11, -6, 3, 6, -1, 29,
					-- layer=1 filter=38 channel=35
					9, 1, 4, 2, -21, 3, -17, -8, -2,
					-- layer=1 filter=38 channel=36
					-13, -31, -15, -30, -42, -20, -20, -20, -6,
					-- layer=1 filter=38 channel=37
					35, 3, -2, 48, 13, 6, 47, 3, 5,
					-- layer=1 filter=38 channel=38
					-31, -8, -31, -16, -1, 4, 9, 20, 5,
					-- layer=1 filter=38 channel=39
					-20, -45, 23, -34, -65, -10, -5, -38, -13,
					-- layer=1 filter=38 channel=40
					5, -25, 30, -25, -25, -20, -13, -28, -3,
					-- layer=1 filter=38 channel=41
					-4, 7, 4, -15, -10, -28, 17, 1, 17,
					-- layer=1 filter=38 channel=42
					7, -37, 36, -16, 5, 41, 26, 1, 15,
					-- layer=1 filter=38 channel=43
					17, 13, 14, 30, 27, 16, 33, 25, 21,
					-- layer=1 filter=38 channel=44
					8, -5, 11, -17, -26, 8, -12, -29, -1,
					-- layer=1 filter=38 channel=45
					17, -6, 20, 55, 25, 5, 33, 30, 39,
					-- layer=1 filter=38 channel=46
					-9, -10, -12, 18, 17, 3, 123, 103, 86,
					-- layer=1 filter=38 channel=47
					33, 6, 15, 20, 25, 2, 22, 27, 0,
					-- layer=1 filter=38 channel=48
					-13, -9, -19, -6, -10, -20, 43, 41, 39,
					-- layer=1 filter=38 channel=49
					-61, -103, -21, -92, -85, -9, -57, -101, -42,
					-- layer=1 filter=38 channel=50
					2, 0, -1, -18, 0, -25, 31, 23, 26,
					-- layer=1 filter=38 channel=51
					-3, 6, 1, 10, 17, -2, 3, 4, 16,
					-- layer=1 filter=38 channel=52
					47, -26, 30, 36, 14, 9, 32, 35, 57,
					-- layer=1 filter=38 channel=53
					-83, -113, -25, -88, -136, -79, -94, -111, -12,
					-- layer=1 filter=38 channel=54
					0, 7, -7, -23, 0, -27, 22, 32, 7,
					-- layer=1 filter=38 channel=55
					-48, -44, -52, -8, -9, 0, 23, 25, 30,
					-- layer=1 filter=38 channel=56
					-6, 12, -4, 23, 16, 26, 1, 2, 4,
					-- layer=1 filter=38 channel=57
					-4, -1, 0, 1, -9, 21, 0, -16, 1,
					-- layer=1 filter=38 channel=58
					-7, -14, -20, -18, -6, -35, -1, 17, 8,
					-- layer=1 filter=38 channel=59
					-89, -79, 6, -52, -59, -69, -33, -30, -22,
					-- layer=1 filter=38 channel=60
					105, 48, 88, 65, 56, 19, 69, 30, 38,
					-- layer=1 filter=38 channel=61
					-125, -126, -48, -138, -127, -132, -96, -143, -41,
					-- layer=1 filter=38 channel=62
					-6, -20, 14, 10, 8, -23, 6, 0, 0,
					-- layer=1 filter=38 channel=63
					-24, -27, -16, -84, -62, -50, 15, -16, 11,
					-- layer=1 filter=39 channel=0
					-4, 17, 10, 22, -29, -42, -32, -29, -10,
					-- layer=1 filter=39 channel=1
					-31, -56, -9, -5, 0, 4, 15, -30, 4,
					-- layer=1 filter=39 channel=2
					6, -3, -9, 4, -30, -74, -56, -57, -4,
					-- layer=1 filter=39 channel=3
					-42, 22, 20, -35, -40, 5, -3, 9, 6,
					-- layer=1 filter=39 channel=4
					14, 22, 64, 30, 8, 32, 5, -1, -36,
					-- layer=1 filter=39 channel=5
					-44, -28, -43, -4, 10, 24, 41, 46, 25,
					-- layer=1 filter=39 channel=6
					21, 19, -2, 36, -4, -1, 2, -42, -40,
					-- layer=1 filter=39 channel=7
					-8, -14, 0, -8, -10, 3, -22, 13, -11,
					-- layer=1 filter=39 channel=8
					-18, 9, -12, -5, 0, -2, -20, -12, -8,
					-- layer=1 filter=39 channel=9
					-44, -57, -60, -49, -46, -4, 26, 40, 32,
					-- layer=1 filter=39 channel=10
					-29, -3, -2, -20, 6, -5, 0, -10, 16,
					-- layer=1 filter=39 channel=11
					45, 41, 4, 47, 23, 23, -7, -21, -30,
					-- layer=1 filter=39 channel=12
					29, 18, -21, -2, -6, 3, 9, 13, -9,
					-- layer=1 filter=39 channel=13
					-32, -15, -21, -3, -9, 8, 32, 20, 39,
					-- layer=1 filter=39 channel=14
					9, 0, -21, 18, -57, -70, -46, -73, -9,
					-- layer=1 filter=39 channel=15
					32, 73, 35, 4, 21, -38, -38, -35, -97,
					-- layer=1 filter=39 channel=16
					-2, 31, 4, 64, 31, 32, -2, -11, -29,
					-- layer=1 filter=39 channel=17
					-45, -55, -22, -31, -16, 0, 2, 31, 24,
					-- layer=1 filter=39 channel=18
					9, 26, 9, 9, -4, -21, -24, -29, -23,
					-- layer=1 filter=39 channel=19
					-26, -19, 2, 22, 18, 8, 11, 3, 6,
					-- layer=1 filter=39 channel=20
					21, 46, 42, -6, -12, -16, -11, -25, -40,
					-- layer=1 filter=39 channel=21
					4, 0, -31, -4, -20, -64, -39, -63, -41,
					-- layer=1 filter=39 channel=22
					62, -12, -39, 53, -26, -75, 3, -9, -14,
					-- layer=1 filter=39 channel=23
					9, -4, -13, -23, -16, -84, -24, -8, -7,
					-- layer=1 filter=39 channel=24
					-33, -47, 18, 4, 11, 12, 23, 0, -10,
					-- layer=1 filter=39 channel=25
					47, 27, 13, 50, -1, -27, -8, -54, -50,
					-- layer=1 filter=39 channel=26
					20, 18, 20, 40, -1, 22, -11, -21, -55,
					-- layer=1 filter=39 channel=27
					-12, -5, 1, -4, 15, 3, -19, -12, -17,
					-- layer=1 filter=39 channel=28
					2, 4, -20, -17, -7, -14, -23, -40, -18,
					-- layer=1 filter=39 channel=29
					-20, -5, 23, 17, -4, -3, -23, -16, -18,
					-- layer=1 filter=39 channel=30
					-11, -32, -41, -22, -10, 11, 30, 56, 47,
					-- layer=1 filter=39 channel=31
					12, 13, -4, 11, 2, 9, 6, -10, 15,
					-- layer=1 filter=39 channel=32
					-61, -43, -55, 35, -2, -8, -10, -47, -102,
					-- layer=1 filter=39 channel=33
					-38, -46, 3, -20, 4, 21, 20, 14, 25,
					-- layer=1 filter=39 channel=34
					106, 101, 28, 62, 35, -25, -9, -26, -50,
					-- layer=1 filter=39 channel=35
					-51, -34, 9, -51, -40, -2, -22, -25, 16,
					-- layer=1 filter=39 channel=36
					-17, 0, 14, -14, -3, -1, 11, 21, -3,
					-- layer=1 filter=39 channel=37
					50, 55, 56, 80, 58, 25, 28, -6, -69,
					-- layer=1 filter=39 channel=38
					-22, -9, 22, -28, 1, -18, -6, 22, 39,
					-- layer=1 filter=39 channel=39
					-39, 5, -12, -36, -11, -64, -24, -32, 0,
					-- layer=1 filter=39 channel=40
					19, -31, -67, -3, -32, -49, -11, -14, -10,
					-- layer=1 filter=39 channel=41
					-35, -43, -12, -33, -19, -8, 15, 46, 50,
					-- layer=1 filter=39 channel=42
					-9, 20, -31, -15, -33, -107, -72, -44, -12,
					-- layer=1 filter=39 channel=43
					35, 33, -7, 66, 3, -12, -12, -35, -41,
					-- layer=1 filter=39 channel=44
					49, 81, 53, 44, 23, -29, 0, -10, -101,
					-- layer=1 filter=39 channel=45
					11, -4, -4, 77, 35, 0, 2, -7, -27,
					-- layer=1 filter=39 channel=46
					-113, -102, -71, -25, -11, 40, 42, 62, 94,
					-- layer=1 filter=39 channel=47
					70, 77, 17, 77, 29, 34, 32, -23, -53,
					-- layer=1 filter=39 channel=48
					-38, -33, -25, 0, 1, 29, 58, 55, 51,
					-- layer=1 filter=39 channel=49
					-19, 35, 30, -3, 17, -20, -24, -8, -88,
					-- layer=1 filter=39 channel=50
					-48, -41, -24, -4, 2, 15, 37, 43, 68,
					-- layer=1 filter=39 channel=51
					-30, -23, -7, 9, 5, 27, 13, 26, 33,
					-- layer=1 filter=39 channel=52
					65, 72, 0, 88, 88, 26, 15, 24, -64,
					-- layer=1 filter=39 channel=53
					34, 24, -29, -23, -90, -135, -49, -85, -83,
					-- layer=1 filter=39 channel=54
					-53, -46, -48, -8, -13, 18, 47, 47, 59,
					-- layer=1 filter=39 channel=55
					-7, -27, 55, 4, 2, 32, 13, 42, 58,
					-- layer=1 filter=39 channel=56
					-4, -4, -1, 3, 28, 5, -12, -19, -16,
					-- layer=1 filter=39 channel=57
					-18, -12, 38, 10, 3, 8, 4, 5, -17,
					-- layer=1 filter=39 channel=58
					-21, -3, 1, 9, 13, 7, 10, 0, 0,
					-- layer=1 filter=39 channel=59
					-6, -8, -12, -75, -71, -80, -65, -67, -71,
					-- layer=1 filter=39 channel=60
					66, 83, 5, 9, -13, -100, -75, -89, -95,
					-- layer=1 filter=39 channel=61
					13, -22, -89, -81, -97, -119, -73, -90, -70,
					-- layer=1 filter=39 channel=62
					-14, -5, -24, 2, -39, -46, -26, -65, -42,
					-- layer=1 filter=39 channel=63
					-38, -82, -105, -17, -45, -29, 21, 25, 25,
					-- layer=1 filter=40 channel=0
					36, 33, 17, 3, 14, 13, -26, 11, 0,
					-- layer=1 filter=40 channel=1
					-53, 3, -7, -87, -16, -11, -53, -62, -44,
					-- layer=1 filter=40 channel=2
					24, 17, -1, 36, 14, 6, -17, -4, -4,
					-- layer=1 filter=40 channel=3
					36, -3, -22, -13, -19, -41, -26, -25, -21,
					-- layer=1 filter=40 channel=4
					-21, -13, 7, -11, 9, 0, -34, 3, 11,
					-- layer=1 filter=40 channel=5
					11, -39, 12, -61, -25, -15, -35, 0, 24,
					-- layer=1 filter=40 channel=6
					1, -23, 21, -11, 0, 26, 14, -5, -13,
					-- layer=1 filter=40 channel=7
					13, -4, 1, 13, 4, 23, -30, -20, -14,
					-- layer=1 filter=40 channel=8
					-38, -24, -5, -7, -45, 6, -28, -39, -3,
					-- layer=1 filter=40 channel=9
					-21, -18, -11, -18, -75, -23, -44, -112, -39,
					-- layer=1 filter=40 channel=10
					-2, 3, -21, 14, -6, -20, -37, -1, -16,
					-- layer=1 filter=40 channel=11
					64, 47, 25, 59, 77, 51, 48, 69, 35,
					-- layer=1 filter=40 channel=12
					11, -18, -28, 0, -14, -15, -15, -8, -24,
					-- layer=1 filter=40 channel=13
					3, 13, -4, -8, -29, -1, -30, -21, -7,
					-- layer=1 filter=40 channel=14
					41, 45, 3, 43, 27, 14, 0, 10, 5,
					-- layer=1 filter=40 channel=15
					23, 18, 6, 31, 44, 32, 6, 11, 51,
					-- layer=1 filter=40 channel=16
					0, 8, 18, 23, 52, 21, 8, 5, 4,
					-- layer=1 filter=40 channel=17
					-43, -43, -45, -80, -57, -55, -84, -97, -42,
					-- layer=1 filter=40 channel=18
					-29, -68, -6, -70, -72, -16, -11, -25, -18,
					-- layer=1 filter=40 channel=19
					-64, -63, -54, -75, -100, -56, -58, -80, -42,
					-- layer=1 filter=40 channel=20
					28, 10, -32, 21, 4, 15, -12, 28, 41,
					-- layer=1 filter=40 channel=21
					17, 2, -4, 3, -31, -15, 3, -17, -34,
					-- layer=1 filter=40 channel=22
					38, 21, 2, 35, 9, -13, 9, -11, -35,
					-- layer=1 filter=40 channel=23
					31, 46, 20, -4, 48, 34, -19, 29, 25,
					-- layer=1 filter=40 channel=24
					-68, -60, -56, -77, -59, -70, -93, -94, -38,
					-- layer=1 filter=40 channel=25
					61, -3, 18, -9, 39, 27, 13, 0, 23,
					-- layer=1 filter=40 channel=26
					-87, -54, -58, -62, -43, -42, -38, -20, -31,
					-- layer=1 filter=40 channel=27
					-28, -20, -21, -30, -14, -19, -32, -33, -27,
					-- layer=1 filter=40 channel=28
					37, 0, 10, 17, 26, 14, 13, 25, 5,
					-- layer=1 filter=40 channel=29
					-11, -7, 16, -36, -22, 19, -21, -26, -16,
					-- layer=1 filter=40 channel=30
					1, 0, 13, -14, -22, -27, -26, -29, -7,
					-- layer=1 filter=40 channel=31
					-12, 7, 0, -11, 9, -6, -15, -7, 11,
					-- layer=1 filter=40 channel=32
					20, -11, 3, -21, -43, -12, -36, -61, -6,
					-- layer=1 filter=40 channel=33
					-52, -34, -45, -69, -34, -35, -65, -58, -36,
					-- layer=1 filter=40 channel=34
					-15, -4, 9, 15, -4, -12, 4, 30, 6,
					-- layer=1 filter=40 channel=35
					-11, 9, -22, -13, -5, -31, -35, -27, -53,
					-- layer=1 filter=40 channel=36
					7, 3, 22, 16, 14, 30, 18, 28, 24,
					-- layer=1 filter=40 channel=37
					28, 0, 6, 7, -1, 32, 18, 30, 11,
					-- layer=1 filter=40 channel=38
					26, 0, -25, 19, 8, 12, -27, 9, -2,
					-- layer=1 filter=40 channel=39
					5, 35, 7, 15, 24, 21, -6, 15, 31,
					-- layer=1 filter=40 channel=40
					17, 2, -3, -6, -14, -28, -21, -47, -25,
					-- layer=1 filter=40 channel=41
					21, 3, -15, -61, -54, -25, -62, -27, -16,
					-- layer=1 filter=40 channel=42
					39, 52, 12, 39, 33, 17, 38, 28, 36,
					-- layer=1 filter=40 channel=43
					13, -10, 6, -2, -11, 5, 12, 8, -1,
					-- layer=1 filter=40 channel=44
					2, 7, -22, 14, 7, 17, 0, 35, 36,
					-- layer=1 filter=40 channel=45
					29, -8, 20, 13, 29, 24, 11, 21, -6,
					-- layer=1 filter=40 channel=46
					-50, -66, -43, -111, -113, -51, -117, -48, -58,
					-- layer=1 filter=40 channel=47
					15, -7, 21, 15, 13, 7, 19, 31, 15,
					-- layer=1 filter=40 channel=48
					-7, 8, 0, -24, -36, 19, -26, -4, -1,
					-- layer=1 filter=40 channel=49
					1, -5, -19, 44, 42, 29, -18, 19, 47,
					-- layer=1 filter=40 channel=50
					-4, 9, 0, -28, -27, -6, -50, -27, 3,
					-- layer=1 filter=40 channel=51
					-22, -40, -20, -54, -22, -1, -37, -30, -13,
					-- layer=1 filter=40 channel=52
					-4, -1, 32, 24, 32, 31, 32, 46, 5,
					-- layer=1 filter=40 channel=53
					-10, -18, -22, 30, 11, -27, -19, -16, 22,
					-- layer=1 filter=40 channel=54
					-12, 9, -13, -39, -36, -21, -41, -23, 5,
					-- layer=1 filter=40 channel=55
					40, 64, -1, -12, -3, -5, -26, 5, -23,
					-- layer=1 filter=40 channel=56
					7, 8, 1, -3, 15, 5, 1, -6, 26,
					-- layer=1 filter=40 channel=57
					-73, -44, -40, -43, -37, -8, -73, -25, -5,
					-- layer=1 filter=40 channel=58
					-24, -50, -34, -94, -41, -8, -23, -7, -6,
					-- layer=1 filter=40 channel=59
					-17, -52, 2, -1, -42, 3, -24, -101, -15,
					-- layer=1 filter=40 channel=60
					15, 48, 15, 7, -22, -62, -27, -47, -53,
					-- layer=1 filter=40 channel=61
					25, -24, -9, 28, -36, 0, -13, -65, 12,
					-- layer=1 filter=40 channel=62
					23, -18, 22, 7, -18, 15, 17, -11, -29,
					-- layer=1 filter=40 channel=63
					1, 13, -9, -13, -46, -38, -85, -97, -53,
					-- layer=1 filter=41 channel=0
					-14, -18, -30, -31, -10, -17, -24, -41, -4,
					-- layer=1 filter=41 channel=1
					-3, 22, 0, 4, 4, -3, 9, -12, -6,
					-- layer=1 filter=41 channel=2
					-32, 17, -4, -13, 3, -15, -2, -6, 9,
					-- layer=1 filter=41 channel=3
					-17, -52, -45, -36, -29, -51, -13, -15, -12,
					-- layer=1 filter=41 channel=4
					19, 28, 10, 14, 1, 2, 2, -38, -17,
					-- layer=1 filter=41 channel=5
					-4, 17, 32, -6, -1, 0, -2, -1, -4,
					-- layer=1 filter=41 channel=6
					36, 17, 32, -10, -61, -15, 9, -11, -36,
					-- layer=1 filter=41 channel=7
					30, 3, -11, 6, 4, -6, -26, -34, -21,
					-- layer=1 filter=41 channel=8
					15, 1, -3, 10, -12, -16, -12, -22, -48,
					-- layer=1 filter=41 channel=9
					-28, 21, 19, 9, 30, 16, 35, 44, -5,
					-- layer=1 filter=41 channel=10
					-4, 18, 6, -17, -1, 14, 13, -5, 24,
					-- layer=1 filter=41 channel=11
					19, 0, -9, -51, -32, -58, -50, -35, -31,
					-- layer=1 filter=41 channel=12
					5, -29, -16, -21, -24, -22, -30, -21, 0,
					-- layer=1 filter=41 channel=13
					-14, -8, -8, 4, 15, -3, 8, 40, 16,
					-- layer=1 filter=41 channel=14
					-65, -50, -53, -37, -16, -16, -40, -17, -1,
					-- layer=1 filter=41 channel=15
					-37, -104, -67, -75, -53, -19, -58, -34, 28,
					-- layer=1 filter=41 channel=16
					22, 12, 26, 11, -37, -44, -33, -49, -51,
					-- layer=1 filter=41 channel=17
					-31, 12, 6, 13, 12, -4, 8, 25, -36,
					-- layer=1 filter=41 channel=18
					11, 14, 26, -3, -36, -12, -8, -3, -15,
					-- layer=1 filter=41 channel=19
					24, 29, 15, 15, 8, 9, 6, -1, -5,
					-- layer=1 filter=41 channel=20
					1, -39, -7, -14, -18, 4, -26, -9, 31,
					-- layer=1 filter=41 channel=21
					-15, -7, -1, -17, -41, -36, 42, 54, -39,
					-- layer=1 filter=41 channel=22
					-25, -42, -12, -18, 6, -38, 5, 16, 11,
					-- layer=1 filter=41 channel=23
					-28, -22, -3, -34, 0, 34, -30, 4, 50,
					-- layer=1 filter=41 channel=24
					36, 12, 26, 14, 6, 1, -4, -21, -28,
					-- layer=1 filter=41 channel=25
					-1, -16, -9, -62, -87, -75, -68, -60, -24,
					-- layer=1 filter=41 channel=26
					35, 28, 16, -6, -1, -11, -19, -8, -18,
					-- layer=1 filter=41 channel=27
					22, 17, 28, 4, 16, -5, 15, -13, -15,
					-- layer=1 filter=41 channel=28
					-37, -31, -14, -51, -39, -61, 11, -7, -40,
					-- layer=1 filter=41 channel=29
					28, 16, -8, 21, -6, -16, 0, -14, -27,
					-- layer=1 filter=41 channel=30
					-37, -24, 4, -15, 0, 19, 3, 4, 13,
					-- layer=1 filter=41 channel=31
					5, -13, -6, 2, -11, 4, -7, 1, -7,
					-- layer=1 filter=41 channel=32
					8, -27, -4, 6, 7, -51, 2, -29, -29,
					-- layer=1 filter=41 channel=33
					23, 32, 17, 18, 16, 1, 23, 5, -12,
					-- layer=1 filter=41 channel=34
					-28, -74, -25, -92, -108, -66, -97, -123, -29,
					-- layer=1 filter=41 channel=35
					-1, 25, -14, 7, 4, -12, -21, -3, -4,
					-- layer=1 filter=41 channel=36
					-43, -48, -45, -16, -23, 15, -30, -14, 16,
					-- layer=1 filter=41 channel=37
					-5, -13, -11, -25, -105, -119, -77, -90, -60,
					-- layer=1 filter=41 channel=38
					-24, -31, -49, -33, -32, 13, -36, 24, 15,
					-- layer=1 filter=41 channel=39
					-45, -73, -60, -61, -62, 37, -20, -24, 35,
					-- layer=1 filter=41 channel=40
					-35, -16, -3, 0, 16, -14, 29, 40, -12,
					-- layer=1 filter=41 channel=41
					-26, -9, -17, -4, -9, 9, -5, 0, 10,
					-- layer=1 filter=41 channel=42
					-61, -28, -29, -49, -27, 30, -21, 5, 20,
					-- layer=1 filter=41 channel=43
					-30, -33, -13, -90, -120, -91, -99, -44, -52,
					-- layer=1 filter=41 channel=44
					-6, -20, 15, -13, -43, 10, -58, -55, 43,
					-- layer=1 filter=41 channel=45
					9, 13, 30, -83, -95, -105, -84, -40, -55,
					-- layer=1 filter=41 channel=46
					-39, -12, 2, -19, 10, 18, -1, 27, 28,
					-- layer=1 filter=41 channel=47
					25, -28, 0, -86, -117, -93, -72, -97, -51,
					-- layer=1 filter=41 channel=48
					-6, 19, 26, 10, 6, 15, 10, 37, 13,
					-- layer=1 filter=41 channel=49
					-44, -75, -58, -63, -62, -28, -36, -29, 41,
					-- layer=1 filter=41 channel=50
					-13, 2, 32, 14, 32, 19, 19, 28, 38,
					-- layer=1 filter=41 channel=51
					11, 40, 33, 35, 26, 28, 30, 30, 30,
					-- layer=1 filter=41 channel=52
					-56, -34, -20, -66, -143, -116, -108, -120, -72,
					-- layer=1 filter=41 channel=53
					-70, -63, 8, -23, -1, -23, 54, 29, -56,
					-- layer=1 filter=41 channel=54
					-25, 9, 4, 1, 28, 31, 11, 9, 25,
					-- layer=1 filter=41 channel=55
					-44, -18, -38, -53, -15, -30, -40, -14, -5,
					-- layer=1 filter=41 channel=56
					26, 28, -2, 10, -11, -16, 7, -16, -22,
					-- layer=1 filter=41 channel=57
					10, 25, 5, 16, 12, -2, 0, -14, -11,
					-- layer=1 filter=41 channel=58
					1, -13, 24, -19, -21, 8, -33, -17, 2,
					-- layer=1 filter=41 channel=59
					-44, -26, 41, -24, -15, -42, 65, 7, -73,
					-- layer=1 filter=41 channel=60
					-170, -171, -136, -153, -175, -145, -173, -130, -142,
					-- layer=1 filter=41 channel=61
					-76, -44, 0, -40, -18, -36, 28, 45, -59,
					-- layer=1 filter=41 channel=62
					-13, -34, 19, -56, -64, -43, -7, 18, -60,
					-- layer=1 filter=41 channel=63
					-63, -2, 17, -43, 7, 6, -16, 29, -11,
					-- layer=1 filter=42 channel=0
					5, 57, 13, -33, 23, 28, -13, -9, 27,
					-- layer=1 filter=42 channel=1
					-47, 21, 26, -66, -1, 48, -44, -12, 10,
					-- layer=1 filter=42 channel=2
					14, 26, -31, -2, 25, 38, -9, -14, 16,
					-- layer=1 filter=42 channel=3
					-17, -43, -57, -21, 2, -65, -15, 17, -26,
					-- layer=1 filter=42 channel=4
					-20, 17, 18, -21, -1, 10, -13, 14, 35,
					-- layer=1 filter=42 channel=5
					-19, -25, 33, 14, 6, 0, -5, -14, 2,
					-- layer=1 filter=42 channel=6
					-64, -28, 38, 24, -57, -2, -12, 9, 12,
					-- layer=1 filter=42 channel=7
					-34, -7, 12, -45, -1, 3, -33, -8, 28,
					-- layer=1 filter=42 channel=8
					-63, -2, 21, -56, -29, 27, -38, -10, 33,
					-- layer=1 filter=42 channel=9
					-64, -64, -6, -20, -91, -21, -11, -54, -9,
					-- layer=1 filter=42 channel=10
					2, 42, 3, -31, 6, 26, -33, -5, 34,
					-- layer=1 filter=42 channel=11
					-8, -12, -3, 10, 11, -30, -16, 13, 34,
					-- layer=1 filter=42 channel=12
					0, -35, 4, 3, -12, -49, 0, -16, -20,
					-- layer=1 filter=42 channel=13
					17, -22, -2, 33, -3, -32, 2, 0, -2,
					-- layer=1 filter=42 channel=14
					8, 10, -22, -8, 10, 9, -25, 4, 21,
					-- layer=1 filter=42 channel=15
					52, 47, 23, -9, 69, 41, -22, 35, 76,
					-- layer=1 filter=42 channel=16
					-23, 1, 0, -21, -7, -21, -7, 7, 1,
					-- layer=1 filter=42 channel=17
					-34, -35, 8, -31, -37, 7, -21, -2, 7,
					-- layer=1 filter=42 channel=18
					-78, -13, 61, 29, -55, -3, 3, -3, 1,
					-- layer=1 filter=42 channel=19
					-49, -9, 33, -48, -21, 33, -32, -18, 19,
					-- layer=1 filter=42 channel=20
					13, 28, -4, -28, 38, 14, -21, -1, 20,
					-- layer=1 filter=42 channel=21
					-34, -37, 14, 22, -38, -7, 11, 22, 9,
					-- layer=1 filter=42 channel=22
					-45, -118, -47, -40, -80, -72, -24, -7, -35,
					-- layer=1 filter=42 channel=23
					25, 33, 8, -10, 29, 18, -6, 2, 44,
					-- layer=1 filter=42 channel=24
					-14, 1, 12, -40, -2, 35, -45, -26, 5,
					-- layer=1 filter=42 channel=25
					-2, -6, -1, 43, -5, -28, -1, 8, -39,
					-- layer=1 filter=42 channel=26
					-44, 3, 12, -12, -6, -19, -18, 3, 11,
					-- layer=1 filter=42 channel=27
					-43, 13, 27, -45, 2, 12, -18, -11, 11,
					-- layer=1 filter=42 channel=28
					-12, -34, -34, -3, -31, -51, 0, -27, -63,
					-- layer=1 filter=42 channel=29
					-34, 0, 20, -34, -20, 9, -30, 4, 9,
					-- layer=1 filter=42 channel=30
					-13, -3, -30, 6, 8, -16, 2, 0, 2,
					-- layer=1 filter=42 channel=31
					-9, -12, 13, 13, -3, -12, -13, 9, 8,
					-- layer=1 filter=42 channel=32
					-103, -88, -40, -51, -84, -96, -26, -79, -42,
					-- layer=1 filter=42 channel=33
					-8, 9, 41, -30, -19, 14, -37, -13, 5,
					-- layer=1 filter=42 channel=34
					-14, -34, 4, 46, 9, -59, -6, -15, -4,
					-- layer=1 filter=42 channel=35
					5, 24, -7, -25, -5, 7, -23, -13, 9,
					-- layer=1 filter=42 channel=36
					25, 40, 27, -4, 31, 23, -15, 10, 11,
					-- layer=1 filter=42 channel=37
					36, -31, -28, 25, 37, -38, -11, -4, -28,
					-- layer=1 filter=42 channel=38
					32, 42, -5, 20, 25, 18, -12, 0, 13,
					-- layer=1 filter=42 channel=39
					27, 64, 29, -5, 43, 19, -26, 35, 40,
					-- layer=1 filter=42 channel=40
					-45, -78, -44, -5, -47, -42, 16, -26, -1,
					-- layer=1 filter=42 channel=41
					-16, -11, 16, -1, -2, 0, 6, -5, -3,
					-- layer=1 filter=42 channel=42
					34, 78, 6, 12, 47, 58, -4, 30, 86,
					-- layer=1 filter=42 channel=43
					9, -37, 8, 51, 26, -5, 19, 3, -7,
					-- layer=1 filter=42 channel=44
					27, 27, 21, 8, 23, -14, -13, 3, 47,
					-- layer=1 filter=42 channel=45
					-21, 5, 29, 34, 32, -15, -8, 42, -2,
					-- layer=1 filter=42 channel=46
					-27, -16, -17, 0, 8, -10, -19, -16, -18,
					-- layer=1 filter=42 channel=47
					-15, -55, -9, 25, 2, -67, 0, -3, -42,
					-- layer=1 filter=42 channel=48
					-12, 0, 0, 21, 5, 11, 1, -11, 5,
					-- layer=1 filter=42 channel=49
					55, 67, 60, 4, 67, 42, -7, 29, 76,
					-- layer=1 filter=42 channel=50
					-8, 14, 15, 23, -3, 15, 0, -6, 18,
					-- layer=1 filter=42 channel=51
					-18, 17, 32, -5, -5, 23, -11, -5, 5,
					-- layer=1 filter=42 channel=52
					6, -35, -41, 35, -8, -74, -11, -41, -32,
					-- layer=1 filter=42 channel=53
					-91, -126, 0, -57, -90, -34, -27, 16, -20,
					-- layer=1 filter=42 channel=54
					-7, 20, 13, 6, 10, 18, 16, 13, 2,
					-- layer=1 filter=42 channel=55
					22, -4, -45, 20, 28, -2, 12, -22, -16,
					-- layer=1 filter=42 channel=56
					-25, 34, 8, -27, -10, 20, -21, -8, 38,
					-- layer=1 filter=42 channel=57
					-25, 8, 22, -42, 6, 12, -28, -7, 10,
					-- layer=1 filter=42 channel=58
					-15, 7, 13, 8, 19, 2, -3, -3, -10,
					-- layer=1 filter=42 channel=59
					-95, -67, 55, -39, -96, -1, -19, -18, 9,
					-- layer=1 filter=42 channel=60
					-24, -34, -78, 23, -19, -24, 53, 58, -6,
					-- layer=1 filter=42 channel=61
					-75, -86, 24, -41, -65, 0, 9, 24, 15,
					-- layer=1 filter=42 channel=62
					-26, -21, 28, 35, -3, 29, 3, 9, 4,
					-- layer=1 filter=42 channel=63
					-44, -67, -18, -15, -57, -51, -12, -22, -29,
					-- layer=1 filter=43 channel=0
					-20, -12, -15, -93, -97, -9, -55, -37, -26,
					-- layer=1 filter=43 channel=1
					-50, -47, -30, -63, -23, 0, -20, 4, -46,
					-- layer=1 filter=43 channel=2
					-14, -52, -36, -97, -99, -49, -44, -26, -11,
					-- layer=1 filter=43 channel=3
					-8, -12, -7, -6, -11, 24, -5, 5, 6,
					-- layer=1 filter=43 channel=4
					-24, -46, 26, -39, -2, -3, -13, -24, 16,
					-- layer=1 filter=43 channel=5
					0, 24, -10, -6, 5, -17, -2, -25, 15,
					-- layer=1 filter=43 channel=6
					-17, 2, -34, 1, -9, -6, 5, -9, -29,
					-- layer=1 filter=43 channel=7
					-37, -2, 43, -3, 31, 50, -19, 28, 18,
					-- layer=1 filter=43 channel=8
					-44, 7, -6, -15, -19, 2, -36, 21, -8,
					-- layer=1 filter=43 channel=9
					20, -8, -6, -2, -10, -4, 1, 4, -38,
					-- layer=1 filter=43 channel=10
					-10, -29, 0, -24, -31, 13, 12, 0, -3,
					-- layer=1 filter=43 channel=11
					0, 38, 15, 32, 34, 21, 35, 19, 38,
					-- layer=1 filter=43 channel=12
					-20, 16, -8, 1, 37, 2, -9, 5, 25,
					-- layer=1 filter=43 channel=13
					14, -16, 9, -1, 0, 0, 1, 6, -19,
					-- layer=1 filter=43 channel=14
					13, -29, -22, -68, -93, -52, -47, -43, -12,
					-- layer=1 filter=43 channel=15
					27, 11, 29, 45, 36, 14, 102, 19, 54,
					-- layer=1 filter=43 channel=16
					-18, 8, 52, -17, 23, -3, 16, -5, 21,
					-- layer=1 filter=43 channel=17
					-17, -14, -16, -19, 2, -17, 13, 38, -36,
					-- layer=1 filter=43 channel=18
					-62, -33, -97, -33, -46, -42, -71, -41, -27,
					-- layer=1 filter=43 channel=19
					-67, -36, -55, -56, -33, -45, -48, -39, -57,
					-- layer=1 filter=43 channel=20
					-2, -18, 36, -12, 0, 20, 36, 24, 10,
					-- layer=1 filter=43 channel=21
					-1, -9, -25, -1, -23, -14, 2, 0, -22,
					-- layer=1 filter=43 channel=22
					39, -10, -43, 5, -32, -22, 5, 23, 0,
					-- layer=1 filter=43 channel=23
					22, 34, -19, 29, -23, 6, 20, -5, 9,
					-- layer=1 filter=43 channel=24
					-70, -51, -10, -63, -35, -37, -70, -42, -53,
					-- layer=1 filter=43 channel=25
					-5, 34, 34, -1, 26, -35, -16, -20, 6,
					-- layer=1 filter=43 channel=26
					-64, -38, -21, -72, -22, -29, -85, -57, -19,
					-- layer=1 filter=43 channel=27
					-30, -7, -9, -22, 12, 20, -15, 6, 0,
					-- layer=1 filter=43 channel=28
					-29, -14, -26, 3, -16, 26, -8, 7, 8,
					-- layer=1 filter=43 channel=29
					-26, -37, 20, -25, 11, -14, -21, 2, -6,
					-- layer=1 filter=43 channel=30
					29, 23, -19, 26, -4, 8, 16, -21, 17,
					-- layer=1 filter=43 channel=31
					4, -14, -7, 4, 10, 9, 1, 11, 0,
					-- layer=1 filter=43 channel=32
					70, 42, 57, 61, 130, 27, 86, 76, 81,
					-- layer=1 filter=43 channel=33
					-37, -50, 12, -49, 0, -23, -44, 9, -39,
					-- layer=1 filter=43 channel=34
					13, 31, -13, -12, 5, -47, -25, -85, 18,
					-- layer=1 filter=43 channel=35
					-70, -68, -12, -69, -14, 17, -26, 6, 23,
					-- layer=1 filter=43 channel=36
					0, 0, 50, 12, 13, 12, 27, 35, 6,
					-- layer=1 filter=43 channel=37
					-7, 10, 15, -24, 9, -49, -53, -59, -8,
					-- layer=1 filter=43 channel=38
					18, -21, 7, -4, -7, 5, 16, 16, 0,
					-- layer=1 filter=43 channel=39
					11, 6, 4, 8, 2, 15, 42, 7, 12,
					-- layer=1 filter=43 channel=40
					45, -17, -33, -16, -32, -31, 0, 28, -9,
					-- layer=1 filter=43 channel=41
					24, 5, 6, 1, 12, 3, -6, 14, 9,
					-- layer=1 filter=43 channel=42
					13, 42, 0, 16, -19, 26, 43, 9, 34,
					-- layer=1 filter=43 channel=43
					-32, 24, -28, -5, 7, -8, -13, -22, -10,
					-- layer=1 filter=43 channel=44
					17, 13, 10, 38, -3, -23, 19, -38, 19,
					-- layer=1 filter=43 channel=45
					-27, 14, -48, -11, -8, -19, -27, -16, 8,
					-- layer=1 filter=43 channel=46
					0, 28, 0, 4, 17, 12, -12, 14, 3,
					-- layer=1 filter=43 channel=47
					-19, -6, -5, -34, 11, -54, -55, -74, 27,
					-- layer=1 filter=43 channel=48
					22, 0, -3, -1, 12, 0, -16, 0, -5,
					-- layer=1 filter=43 channel=49
					52, 43, 42, 39, 32, 23, 88, 37, 73,
					-- layer=1 filter=43 channel=50
					16, 8, 15, -7, 8, -2, -9, -2, 5,
					-- layer=1 filter=43 channel=51
					-11, -18, 8, -9, 8, 1, -11, 18, 17,
					-- layer=1 filter=43 channel=52
					27, 14, 7, -43, -23, -36, -42, -66, 27,
					-- layer=1 filter=43 channel=53
					29, -3, 10, 25, -4, 2, 35, 33, -25,
					-- layer=1 filter=43 channel=54
					13, 6, 17, -6, 3, 0, 13, -3, 0,
					-- layer=1 filter=43 channel=55
					8, 38, -38, 4, 1, 23, 13, -22, -20,
					-- layer=1 filter=43 channel=56
					-48, -24, 1, -10, 0, 28, 6, 11, 4,
					-- layer=1 filter=43 channel=57
					-43, -69, 13, -36, -17, -12, -33, -42, -14,
					-- layer=1 filter=43 channel=58
					-8, -2, -14, -24, 8, -5, -20, -42, 12,
					-- layer=1 filter=43 channel=59
					17, 4, 32, -5, -8, 17, 38, 32, -24,
					-- layer=1 filter=43 channel=60
					32, 47, -4, -64, -66, -58, -91, -97, -55,
					-- layer=1 filter=43 channel=61
					51, 49, 18, 54, 23, 42, 89, 54, 8,
					-- layer=1 filter=43 channel=62
					7, 26, -33, -1, 13, 22, 7, 25, -10,
					-- layer=1 filter=43 channel=63
					53, 7, -14, -21, -12, -6, -9, -24, -12,
					-- layer=1 filter=44 channel=0
					-42, -26, -8, -26, -35, 10, -23, 19, 7,
					-- layer=1 filter=44 channel=1
					-7, -9, 8, -4, 9, 12, -13, -12, -11,
					-- layer=1 filter=44 channel=2
					-66, -88, -73, -39, -64, -6, -30, 6, 21,
					-- layer=1 filter=44 channel=3
					-16, -22, -42, 2, -6, -14, 20, 23, 25,
					-- layer=1 filter=44 channel=4
					-1, 5, 28, -14, 22, 22, -17, 1, -5,
					-- layer=1 filter=44 channel=5
					31, 20, -40, 13, -19, -27, 26, -2, -33,
					-- layer=1 filter=44 channel=6
					6, 7, 30, -18, 11, 15, -15, 8, 9,
					-- layer=1 filter=44 channel=7
					0, 0, 32, -27, 19, 9, -16, -20, 9,
					-- layer=1 filter=44 channel=8
					11, 16, 26, -12, 22, 2, -18, -10, 0,
					-- layer=1 filter=44 channel=9
					43, 24, 8, 34, 17, 14, 46, 12, 18,
					-- layer=1 filter=44 channel=10
					-17, -21, 0, -13, 10, -2, -3, 22, -12,
					-- layer=1 filter=44 channel=11
					-39, -13, 9, -30, 2, 18, -33, -25, -18,
					-- layer=1 filter=44 channel=12
					1, -10, -27, -1, -8, -19, 19, 0, -4,
					-- layer=1 filter=44 channel=13
					-1, -4, -22, 27, -19, -35, 35, 20, -6,
					-- layer=1 filter=44 channel=14
					-122, -140, -138, -87, -72, -21, -57, -38, -42,
					-- layer=1 filter=44 channel=15
					1, -23, -3, -7, -37, 9, 3, -11, -14,
					-- layer=1 filter=44 channel=16
					3, 11, 54, -25, -3, 30, -38, -35, 8,
					-- layer=1 filter=44 channel=17
					12, -25, -31, 12, 16, -8, 10, 6, 9,
					-- layer=1 filter=44 channel=18
					15, 7, 3, -15, -12, -8, -15, -17, -11,
					-- layer=1 filter=44 channel=19
					15, -19, 11, -8, 10, 0, -1, 4, 11,
					-- layer=1 filter=44 channel=20
					13, -4, 12, 7, -14, -1, 13, 4, -23,
					-- layer=1 filter=44 channel=21
					9, 33, 10, -8, 6, -4, 18, 16, -4,
					-- layer=1 filter=44 channel=22
					-25, -23, -27, -32, -13, -14, 7, -17, 35,
					-- layer=1 filter=44 channel=23
					4, -4, -15, -7, -19, -15, 8, -1, -25,
					-- layer=1 filter=44 channel=24
					-17, -16, -12, 2, -7, 0, -7, -12, -11,
					-- layer=1 filter=44 channel=25
					-13, -40, -22, -2, -39, -19, -18, 2, -15,
					-- layer=1 filter=44 channel=26
					-12, -11, 23, -25, -8, 21, -32, -7, -1,
					-- layer=1 filter=44 channel=27
					-16, 11, 5, -4, 14, 1, -7, 15, 1,
					-- layer=1 filter=44 channel=28
					-22, -19, -33, -29, -2, -7, 3, 1, 8,
					-- layer=1 filter=44 channel=29
					-10, -17, 3, -7, 17, 3, 0, -8, -9,
					-- layer=1 filter=44 channel=30
					25, 18, -24, 18, 8, -27, 45, 18, -23,
					-- layer=1 filter=44 channel=31
					-10, -8, -9, -8, -3, -14, -15, 6, -5,
					-- layer=1 filter=44 channel=32
					59, 31, 61, 86, 61, -55, 30, -18, -54,
					-- layer=1 filter=44 channel=33
					-16, -30, -8, -13, -6, -2, 2, -6, -32,
					-- layer=1 filter=44 channel=34
					-56, -31, -67, -15, -34, 11, 1, -15, -44,
					-- layer=1 filter=44 channel=35
					-56, -60, -21, -41, -12, -15, -9, 13, 33,
					-- layer=1 filter=44 channel=36
					11, -17, -32, 23, -48, -22, 15, -12, -38,
					-- layer=1 filter=44 channel=37
					-39, -32, -44, -16, -42, -34, -30, -5, 3,
					-- layer=1 filter=44 channel=38
					-4, -45, -31, 3, -20, -1, 33, -1, 2,
					-- layer=1 filter=44 channel=39
					-10, -27, -33, -20, -44, -10, 2, -28, -38,
					-- layer=1 filter=44 channel=40
					-3, -50, -28, 0, -11, 4, 46, 2, 32,
					-- layer=1 filter=44 channel=41
					4, 3, -24, 34, -19, -31, 24, 1, -23,
					-- layer=1 filter=44 channel=42
					-54, -37, -14, 38, -25, 42, 11, 32, 18,
					-- layer=1 filter=44 channel=43
					6, 18, -19, 3, 10, -20, -8, 32, 7,
					-- layer=1 filter=44 channel=44
					1, -25, 25, 17, -18, 15, 39, -11, 2,
					-- layer=1 filter=44 channel=45
					-1, -41, -19, -29, -16, -19, -32, -13, -6,
					-- layer=1 filter=44 channel=46
					5, -28, -63, 0, -39, -51, 11, -13, -14,
					-- layer=1 filter=44 channel=47
					-43, -68, -66, -37, -86, -56, -21, -13, -39,
					-- layer=1 filter=44 channel=48
					22, 21, -14, 22, 4, -26, 43, 6, -18,
					-- layer=1 filter=44 channel=49
					9, -13, 10, 23, -29, 25, 4, -8, -32,
					-- layer=1 filter=44 channel=50
					23, -4, -21, 20, -1, -33, 36, 25, -18,
					-- layer=1 filter=44 channel=51
					18, 8, -3, 25, 11, -7, 29, 19, -2,
					-- layer=1 filter=44 channel=52
					-91, -104, -96, -82, -108, -22, -33, -55, -46,
					-- layer=1 filter=44 channel=53
					-11, 13, 0, -35, -8, -15, 27, 1, -2,
					-- layer=1 filter=44 channel=54
					43, 6, -23, 50, 1, -34, 37, 12, -12,
					-- layer=1 filter=44 channel=55
					-3, -31, -13, 4, -18, -16, 16, 10, -2,
					-- layer=1 filter=44 channel=56
					-16, 11, 35, -22, 15, 11, -15, 10, -4,
					-- layer=1 filter=44 channel=57
					5, 0, 28, 1, 16, 0, -26, 0, 15,
					-- layer=1 filter=44 channel=58
					14, -18, -9, 1, -38, -48, 14, -12, -32,
					-- layer=1 filter=44 channel=59
					32, 9, 14, -10, 23, 35, 9, 4, -21,
					-- layer=1 filter=44 channel=60
					-129, -129, -118, -95, -109, -47, -46, -108, -68,
					-- layer=1 filter=44 channel=61
					27, 18, 14, -3, 32, 17, 32, -12, -3,
					-- layer=1 filter=44 channel=62
					15, 9, -6, 2, 33, 14, 9, 13, -14,
					-- layer=1 filter=44 channel=63
					3, -27, -11, 22, -2, -1, 40, 2, 0,
					-- layer=1 filter=45 channel=0
					-15, 10, 0, 3, -14, -8, 1, 10, 9,
					-- layer=1 filter=45 channel=1
					2, -14, 0, -11, -10, -12, 4, -6, 2,
					-- layer=1 filter=45 channel=2
					2, -3, 0, -2, -17, -8, -3, 8, -3,
					-- layer=1 filter=45 channel=3
					6, -4, -7, 0, 12, -9, -7, 0, -6,
					-- layer=1 filter=45 channel=4
					-12, 0, -3, -1, 4, 0, 0, -19, -12,
					-- layer=1 filter=45 channel=5
					-3, -15, -2, -13, -3, -16, -5, -15, -6,
					-- layer=1 filter=45 channel=6
					-12, -17, 5, 13, 10, -7, -3, -8, -6,
					-- layer=1 filter=45 channel=7
					-7, 7, -9, 6, 13, -2, -3, 10, 7,
					-- layer=1 filter=45 channel=8
					-9, 10, 1, -4, 10, 11, 3, -5, -16,
					-- layer=1 filter=45 channel=9
					4, -12, 8, -18, -8, -11, -4, 9, -14,
					-- layer=1 filter=45 channel=10
					-4, -7, -10, 11, -15, -9, 16, 8, -12,
					-- layer=1 filter=45 channel=11
					5, 4, -8, -6, -12, 2, 4, -10, -10,
					-- layer=1 filter=45 channel=12
					3, 0, -9, -12, 14, -6, -11, 0, -4,
					-- layer=1 filter=45 channel=13
					8, 10, -6, 11, 10, 3, -2, -19, -19,
					-- layer=1 filter=45 channel=14
					8, 12, -1, -15, -9, 10, -5, 0, -7,
					-- layer=1 filter=45 channel=15
					4, 7, -7, 6, -5, -11, -1, 7, 10,
					-- layer=1 filter=45 channel=16
					4, -8, 4, -11, -9, -1, 14, -16, 0,
					-- layer=1 filter=45 channel=17
					-7, 0, 3, 3, 9, -6, 9, 10, -3,
					-- layer=1 filter=45 channel=18
					5, -9, -1, -11, 6, 7, -11, -4, 3,
					-- layer=1 filter=45 channel=19
					-10, 12, 12, 11, 0, -13, -11, 7, -8,
					-- layer=1 filter=45 channel=20
					11, 6, 3, -15, 6, -1, 2, 7, 0,
					-- layer=1 filter=45 channel=21
					-17, 6, -7, 6, -11, -2, -23, -3, 3,
					-- layer=1 filter=45 channel=22
					0, 4, -2, -7, 3, -16, 1, -14, -9,
					-- layer=1 filter=45 channel=23
					-10, 3, -19, 8, -16, 4, 12, 6, -9,
					-- layer=1 filter=45 channel=24
					-8, 8, -15, -10, 11, 3, 10, -10, -12,
					-- layer=1 filter=45 channel=25
					5, 8, 5, -5, -3, -12, -3, -5, -2,
					-- layer=1 filter=45 channel=26
					-13, -12, 2, 6, 5, 6, -7, 6, 6,
					-- layer=1 filter=45 channel=27
					-5, 7, -13, -2, 9, 8, -8, -8, -16,
					-- layer=1 filter=45 channel=28
					-10, 2, -7, -2, -9, 6, -11, 4, -9,
					-- layer=1 filter=45 channel=29
					-5, 1, 9, 11, 14, 0, -9, -10, -19,
					-- layer=1 filter=45 channel=30
					-7, -4, -2, -9, -12, 7, -3, 11, -4,
					-- layer=1 filter=45 channel=31
					-9, -6, 9, -6, 9, -1, 9, -2, 11,
					-- layer=1 filter=45 channel=32
					8, 17, -4, -3, 6, -8, 10, 6, 9,
					-- layer=1 filter=45 channel=33
					-15, -9, 0, 4, -5, 0, 11, -6, 13,
					-- layer=1 filter=45 channel=34
					9, -10, 4, 8, -11, -10, -6, -12, -13,
					-- layer=1 filter=45 channel=35
					-4, -4, -18, -8, -7, 0, -11, -12, 9,
					-- layer=1 filter=45 channel=36
					1, -20, -3, -14, -16, -8, 1, -1, 3,
					-- layer=1 filter=45 channel=37
					-21, -9, -15, -14, -2, -17, -14, -4, -24,
					-- layer=1 filter=45 channel=38
					-10, -5, -5, -7, -4, -4, 0, 11, 0,
					-- layer=1 filter=45 channel=39
					8, -4, 11, 1, 0, -2, -11, 11, 2,
					-- layer=1 filter=45 channel=40
					7, -18, -5, -7, -11, -2, 7, 4, -15,
					-- layer=1 filter=45 channel=41
					-11, -4, 5, -3, -4, 12, -3, 4, -7,
					-- layer=1 filter=45 channel=42
					-3, -10, -9, 15, -3, -15, 3, -8, -6,
					-- layer=1 filter=45 channel=43
					2, 1, -7, -6, 11, -10, 7, -4, -18,
					-- layer=1 filter=45 channel=44
					-11, 2, -15, 8, -14, 5, 4, 7, 0,
					-- layer=1 filter=45 channel=45
					6, -10, 8, 11, -13, -14, -5, -10, -2,
					-- layer=1 filter=45 channel=46
					-7, -10, 9, 0, -1, -1, 13, -13, 6,
					-- layer=1 filter=45 channel=47
					-14, -5, -14, 0, -6, 3, -10, -7, 0,
					-- layer=1 filter=45 channel=48
					-2, -4, 0, -6, 0, 3, -1, -12, 3,
					-- layer=1 filter=45 channel=49
					4, 2, -1, 1, 0, -22, -9, 11, 4,
					-- layer=1 filter=45 channel=50
					-13, -2, 5, -3, -3, 2, -2, 0, 3,
					-- layer=1 filter=45 channel=51
					-15, -14, -1, -1, -12, -10, -1, -2, -9,
					-- layer=1 filter=45 channel=52
					6, 11, 9, -14, 7, -1, -15, -6, 0,
					-- layer=1 filter=45 channel=53
					2, -21, 2, 11, 0, 8, -19, 6, 5,
					-- layer=1 filter=45 channel=54
					-3, 7, -14, 3, -16, 5, -11, -6, -13,
					-- layer=1 filter=45 channel=55
					-15, -3, -4, -18, -9, 9, -6, 8, 6,
					-- layer=1 filter=45 channel=56
					11, 5, 7, 1, -9, -16, -12, -3, 9,
					-- layer=1 filter=45 channel=57
					-6, -4, 5, 4, 7, -3, -5, 0, 4,
					-- layer=1 filter=45 channel=58
					-4, -13, 3, 6, -12, 7, -1, -6, -11,
					-- layer=1 filter=45 channel=59
					-8, 8, -10, 10, 9, 14, 8, 10, -15,
					-- layer=1 filter=45 channel=60
					-16, -5, -10, 3, -6, 4, -15, -2, 4,
					-- layer=1 filter=45 channel=61
					-11, -17, -12, 2, -20, -1, -16, -12, 0,
					-- layer=1 filter=45 channel=62
					-4, 6, -1, 0, 7, -7, -15, -21, 9,
					-- layer=1 filter=45 channel=63
					-12, -6, 10, -4, -4, -1, -10, -1, -11,
					-- layer=1 filter=46 channel=0
					-11, -4, -14, 6, 10, 6, 6, -1, -15,
					-- layer=1 filter=46 channel=1
					-13, 12, 5, 8, 12, 5, -8, 7, 0,
					-- layer=1 filter=46 channel=2
					-15, 15, -1, -12, -12, 10, -15, -17, -5,
					-- layer=1 filter=46 channel=3
					6, 1, -13, 9, 8, 2, -16, -12, -13,
					-- layer=1 filter=46 channel=4
					-4, -16, 6, -8, -4, 2, 5, 6, 5,
					-- layer=1 filter=46 channel=5
					-6, -14, -11, -8, -17, -5, -5, -1, -10,
					-- layer=1 filter=46 channel=6
					-18, -12, 2, 7, 4, -17, -12, -11, 3,
					-- layer=1 filter=46 channel=7
					-17, 1, -13, -3, -3, 5, -16, 1, -14,
					-- layer=1 filter=46 channel=8
					-7, 11, -8, -2, 9, 7, -6, 0, 1,
					-- layer=1 filter=46 channel=9
					-11, -12, -10, 4, 10, 0, 9, 10, -7,
					-- layer=1 filter=46 channel=10
					3, -1, -2, -1, 7, -16, -7, 0, -6,
					-- layer=1 filter=46 channel=11
					-11, 2, -2, 4, -17, -22, 0, 0, 5,
					-- layer=1 filter=46 channel=12
					-3, 10, -4, -16, 4, 3, 1, -6, -15,
					-- layer=1 filter=46 channel=13
					-9, -16, -11, -26, -12, 1, -20, -1, -13,
					-- layer=1 filter=46 channel=14
					0, -4, 4, -3, 0, -15, -13, -11, -17,
					-- layer=1 filter=46 channel=15
					2, -4, 0, 5, -13, 8, -4, 1, -9,
					-- layer=1 filter=46 channel=16
					10, -4, -1, 0, -13, -1, -18, -6, -17,
					-- layer=1 filter=46 channel=17
					-17, -3, 5, 5, -17, -17, -17, 3, -7,
					-- layer=1 filter=46 channel=18
					3, 8, 0, -12, -1, 1, 0, -12, 2,
					-- layer=1 filter=46 channel=19
					-6, -12, -5, 11, -12, -9, 1, -11, 3,
					-- layer=1 filter=46 channel=20
					-4, -7, -5, 4, -12, -9, -8, -13, -4,
					-- layer=1 filter=46 channel=21
					-27, 8, 7, -17, 5, -18, -4, -5, -1,
					-- layer=1 filter=46 channel=22
					6, -1, 6, -12, 12, -7, -28, -3, 15,
					-- layer=1 filter=46 channel=23
					0, 15, -16, -10, 7, -8, -9, 8, -1,
					-- layer=1 filter=46 channel=24
					-6, 6, -4, 11, 8, 7, -10, 9, 0,
					-- layer=1 filter=46 channel=25
					-16, 0, -6, 7, 7, -7, 4, 15, -2,
					-- layer=1 filter=46 channel=26
					6, -13, 10, -1, -2, -13, -1, 0, 2,
					-- layer=1 filter=46 channel=27
					2, -1, -4, 11, 11, -15, 12, 10, -9,
					-- layer=1 filter=46 channel=28
					-19, -2, -1, -16, -13, -7, -14, -3, -19,
					-- layer=1 filter=46 channel=29
					0, -2, -1, -6, -13, -7, 5, 7, -17,
					-- layer=1 filter=46 channel=30
					-6, -7, -12, -5, -12, -5, 6, -19, 10,
					-- layer=1 filter=46 channel=31
					-13, -9, 6, 7, -11, 14, 3, -3, -9,
					-- layer=1 filter=46 channel=32
					10, 14, -5, 11, 0, 13, -5, 8, 15,
					-- layer=1 filter=46 channel=33
					-14, -5, 5, 5, 5, -17, 12, 8, -7,
					-- layer=1 filter=46 channel=34
					-1, 0, -7, -7, -9, -26, 13, 15, -13,
					-- layer=1 filter=46 channel=35
					-2, -14, 0, -4, -10, 0, 3, -1, -4,
					-- layer=1 filter=46 channel=36
					8, -21, -3, -1, 4, -8, -16, 13, -17,
					-- layer=1 filter=46 channel=37
					-12, -18, 0, -4, 0, -19, -28, -1, 2,
					-- layer=1 filter=46 channel=38
					7, 1, -7, 8, 3, 3, -15, -5, 0,
					-- layer=1 filter=46 channel=39
					6, 0, 1, -14, -4, -16, -21, 0, -4,
					-- layer=1 filter=46 channel=40
					14, -2, 11, -15, -4, 1, -4, -11, 5,
					-- layer=1 filter=46 channel=41
					-6, 6, 0, 11, -4, -5, 1, 9, 4,
					-- layer=1 filter=46 channel=42
					6, -8, 14, -6, -1, 14, -25, -16, -10,
					-- layer=1 filter=46 channel=43
					3, -7, 3, -15, -4, -9, -9, -5, 5,
					-- layer=1 filter=46 channel=44
					-13, -9, -6, -9, 2, 11, -20, -9, -9,
					-- layer=1 filter=46 channel=45
					4, -10, 10, -9, -19, -15, -18, -13, -14,
					-- layer=1 filter=46 channel=46
					-15, 3, -6, -3, -4, -13, -10, -22, -8,
					-- layer=1 filter=46 channel=47
					7, -4, -3, -5, -3, -2, -14, 8, -19,
					-- layer=1 filter=46 channel=48
					-5, -6, -18, 2, -13, -25, 0, 7, -24,
					-- layer=1 filter=46 channel=49
					-11, 0, 2, -18, -10, 8, -16, -10, -9,
					-- layer=1 filter=46 channel=50
					-16, 2, -6, 6, -17, 10, -18, 0, -3,
					-- layer=1 filter=46 channel=51
					7, -1, -10, 1, -7, -17, 2, -12, -7,
					-- layer=1 filter=46 channel=52
					-18, 7, -18, -5, 1, -11, -12, 2, -1,
					-- layer=1 filter=46 channel=53
					11, 0, 0, 3, 2, 6, -12, -1, 16,
					-- layer=1 filter=46 channel=54
					5, 9, -14, -13, -7, -6, 1, -3, -7,
					-- layer=1 filter=46 channel=55
					8, -9, 10, -16, 7, 0, -3, 12, -14,
					-- layer=1 filter=46 channel=56
					-15, -5, -13, 10, 6, 8, -5, -6, 9,
					-- layer=1 filter=46 channel=57
					-7, -11, 11, 6, -4, 1, -15, 5, -7,
					-- layer=1 filter=46 channel=58
					-2, 3, -3, -4, -16, 2, -7, 8, 1,
					-- layer=1 filter=46 channel=59
					-3, 5, -13, -15, 6, -7, -18, -5, 8,
					-- layer=1 filter=46 channel=60
					5, 7, 1, 4, 8, -3, 9, -5, 0,
					-- layer=1 filter=46 channel=61
					-3, 17, 17, -18, -9, 0, -18, -14, 12,
					-- layer=1 filter=46 channel=62
					-16, 3, 12, -15, -10, -17, -15, -1, 5,
					-- layer=1 filter=46 channel=63
					-16, 2, 11, 0, -7, 0, -20, 0, -9,
					-- layer=1 filter=47 channel=0
					20, -6, -30, -24, 26, -1, -6, 18, 27,
					-- layer=1 filter=47 channel=1
					-11, -33, -30, 17, -9, -26, 13, -45, -24,
					-- layer=1 filter=47 channel=2
					0, -23, -45, -15, 31, 10, -25, 32, 35,
					-- layer=1 filter=47 channel=3
					22, 15, 11, 27, 0, 31, 17, 50, 46,
					-- layer=1 filter=47 channel=4
					12, 19, -8, -24, 2, -25, -2, -15, -16,
					-- layer=1 filter=47 channel=5
					-23, -10, 17, -5, -13, 26, 15, 15, 15,
					-- layer=1 filter=47 channel=6
					-31, 0, 3, 26, -48, 14, 13, 23, -26,
					-- layer=1 filter=47 channel=7
					29, 17, 10, 27, -18, -28, -28, -2, -29,
					-- layer=1 filter=47 channel=8
					2, -14, 8, 2, -28, -7, 6, -22, -14,
					-- layer=1 filter=47 channel=9
					-20, 0, 9, -12, -39, 1, -8, -9, -25,
					-- layer=1 filter=47 channel=10
					-5, -23, -15, -24, 13, 0, -26, -9, 0,
					-- layer=1 filter=47 channel=11
					-38, -27, -41, -22, -56, -38, 14, -17, -16,
					-- layer=1 filter=47 channel=12
					-6, -11, 16, 18, 0, 4, 28, 31, 13,
					-- layer=1 filter=47 channel=13
					-13, 1, 7, -4, -11, 16, 2, 9, 21,
					-- layer=1 filter=47 channel=14
					0, -25, -17, 7, 29, 31, -7, 58, 79,
					-- layer=1 filter=47 channel=15
					35, 7, 6, 25, 17, 25, 11, -2, 0,
					-- layer=1 filter=47 channel=16
					-15, 18, -1, 6, -35, -38, -1, 24, -38,
					-- layer=1 filter=47 channel=17
					-41, -22, -9, -1, 4, 4, -12, 0, 16,
					-- layer=1 filter=47 channel=18
					-29, -3, 4, 5, -43, 9, 10, 34, -6,
					-- layer=1 filter=47 channel=19
					-24, -14, -33, -6, -54, -26, -8, -13, -7,
					-- layer=1 filter=47 channel=20
					17, 15, 0, 0, 7, 11, 9, -22, 27,
					-- layer=1 filter=47 channel=21
					-24, -11, -6, 28, -7, 12, 7, 51, -10,
					-- layer=1 filter=47 channel=22
					6, -25, -3, 25, -11, -9, 6, 8, 25,
					-- layer=1 filter=47 channel=23
					21, -27, -3, 7, -1, 27, -3, -9, 5,
					-- layer=1 filter=47 channel=24
					-32, -19, -17, -40, -20, -21, -22, -44, -24,
					-- layer=1 filter=47 channel=25
					-31, 9, 2, 3, -40, -23, 15, 25, -10,
					-- layer=1 filter=47 channel=26
					-12, 0, -3, -9, -31, -27, 0, 0, 3,
					-- layer=1 filter=47 channel=27
					18, 2, 1, 4, 0, -19, 15, -4, -42,
					-- layer=1 filter=47 channel=28
					-14, -22, -2, 30, -19, 1, 32, 21, -12,
					-- layer=1 filter=47 channel=29
					-2, 9, 7, -7, -7, -14, -1, 5, -1,
					-- layer=1 filter=47 channel=30
					-15, 6, 1, -9, 7, 23, -2, 29, 24,
					-- layer=1 filter=47 channel=31
					8, 1, -15, 0, 7, -7, 6, -9, 2,
					-- layer=1 filter=47 channel=32
					13, 63, 3, 26, -38, 5, -38, -13, 15,
					-- layer=1 filter=47 channel=33
					0, -28, -15, -9, 15, -1, 26, -25, -9,
					-- layer=1 filter=47 channel=34
					13, 13, 18, 16, -34, 2, 6, 32, -23,
					-- layer=1 filter=47 channel=35
					12, -30, -14, 14, 23, 14, 11, -11, 22,
					-- layer=1 filter=47 channel=36
					-7, -1, 11, 7, 29, 1, 2, -5, 18,
					-- layer=1 filter=47 channel=37
					-30, -5, 17, 11, -35, -45, 0, 39, -9,
					-- layer=1 filter=47 channel=38
					5, -2, 7, 1, 9, 19, 5, 28, 40,
					-- layer=1 filter=47 channel=39
					8, -16, 27, 16, 43, 45, -28, -4, 30,
					-- layer=1 filter=47 channel=40
					-14, -29, 8, -5, -25, 4, -8, -9, 28,
					-- layer=1 filter=47 channel=41
					-11, -5, -16, -4, 5, 1, 13, 0, 27,
					-- layer=1 filter=47 channel=42
					41, -6, -15, 7, 39, 7, 10, 46, 47,
					-- layer=1 filter=47 channel=43
					-34, 10, 4, 19, -27, 0, -7, 70, -19,
					-- layer=1 filter=47 channel=44
					2, -9, 18, 24, -13, -6, 21, 7, -5,
					-- layer=1 filter=47 channel=45
					-31, 9, 23, 50, -22, -3, 3, 58, -8,
					-- layer=1 filter=47 channel=46
					-20, -6, 18, 3, 41, 50, 7, 54, 59,
					-- layer=1 filter=47 channel=47
					-54, 6, 3, 20, -30, -13, 27, 41, -8,
					-- layer=1 filter=47 channel=48
					-31, -7, 6, -14, 0, 5, 3, 13, 24,
					-- layer=1 filter=47 channel=49
					38, 16, 26, 42, 62, 7, 17, -15, -9,
					-- layer=1 filter=47 channel=50
					-34, -14, 5, -35, -7, 13, -8, 2, 10,
					-- layer=1 filter=47 channel=51
					-30, -16, -1, -14, -6, -8, -1, -29, -24,
					-- layer=1 filter=47 channel=52
					38, 74, 18, 41, 18, 44, 49, 44, 39,
					-- layer=1 filter=47 channel=53
					-30, -19, 31, 5, -17, 32, 11, 0, 42,
					-- layer=1 filter=47 channel=54
					-28, -22, 0, -22, 3, 21, -24, -13, 28,
					-- layer=1 filter=47 channel=55
					30, 9, 11, 22, 23, 7, 44, 53, 35,
					-- layer=1 filter=47 channel=56
					29, 2, -17, -7, 27, -13, 19, -32, -17,
					-- layer=1 filter=47 channel=57
					3, 0, 3, -19, -12, 0, -27, -10, 2,
					-- layer=1 filter=47 channel=58
					-19, -10, 16, -6, -19, -11, 17, 15, 11,
					-- layer=1 filter=47 channel=59
					-31, -10, 32, 11, -20, 22, 26, 10, -1,
					-- layer=1 filter=47 channel=60
					97, 75, 87, 99, 55, 111, 82, 98, 85,
					-- layer=1 filter=47 channel=61
					10, -13, 10, 59, 12, 10, 26, 31, -20,
					-- layer=1 filter=47 channel=62
					-15, 5, 33, 32, 0, 32, -2, 47, -15,
					-- layer=1 filter=47 channel=63
					1, -1, 5, 5, -22, 26, 1, 14, 29,
					-- layer=1 filter=48 channel=0
					44, 2, 27, 35, 5, -12, 22, -12, -20,
					-- layer=1 filter=48 channel=1
					8, 15, -5, 4, 3, 5, 15, -22, -16,
					-- layer=1 filter=48 channel=2
					54, 21, 17, 32, 12, 9, 5, 8, -4,
					-- layer=1 filter=48 channel=3
					-44, -9, -8, -9, -18, -20, 5, 11, 3,
					-- layer=1 filter=48 channel=4
					31, -5, 15, 16, 5, 16, -11, 12, -25,
					-- layer=1 filter=48 channel=5
					-11, -13, -5, 1, -37, -22, 24, 7, 24,
					-- layer=1 filter=48 channel=6
					8, 2, -11, 33, 12, 16, 30, 24, 13,
					-- layer=1 filter=48 channel=7
					-12, 7, -23, 18, -5, 0, -8, -17, 1,
					-- layer=1 filter=48 channel=8
					6, 19, -16, 4, 2, -10, 2, -22, 4,
					-- layer=1 filter=48 channel=9
					-43, -10, -36, -19, -49, -40, -26, -25, -24,
					-- layer=1 filter=48 channel=10
					28, -9, 17, 4, 3, 9, -12, -1, -13,
					-- layer=1 filter=48 channel=11
					-3, -33, -40, -20, -30, -15, -7, -29, -21,
					-- layer=1 filter=48 channel=12
					-16, -8, -14, -24, -45, -19, 13, 11, -4,
					-- layer=1 filter=48 channel=13
					-32, -12, -6, -20, -12, -6, -13, 16, 15,
					-- layer=1 filter=48 channel=14
					90, 64, 67, 53, 21, 46, 29, 27, 24,
					-- layer=1 filter=48 channel=15
					37, -51, -10, 12, 2, -26, 15, 17, -4,
					-- layer=1 filter=48 channel=16
					20, -9, -36, 10, -5, -11, -3, -29, -39,
					-- layer=1 filter=48 channel=17
					-12, 7, -32, 19, -33, -12, 8, -3, -3,
					-- layer=1 filter=48 channel=18
					-15, 13, -5, -6, 5, 1, 12, 14, 18,
					-- layer=1 filter=48 channel=19
					0, -1, -23, 18, 2, 8, -11, 2, -11,
					-- layer=1 filter=48 channel=20
					40, -8, -7, -17, -20, -24, -1, 16, -18,
					-- layer=1 filter=48 channel=21
					21, -1, 20, 14, 6, 28, 16, 34, 34,
					-- layer=1 filter=48 channel=22
					-28, 4, -19, -30, -39, -45, -45, -40, -41,
					-- layer=1 filter=48 channel=23
					11, -33, -8, 11, -41, -9, 18, 12, -2,
					-- layer=1 filter=48 channel=24
					6, -16, -6, -3, -25, -14, -6, 5, -5,
					-- layer=1 filter=48 channel=25
					25, 31, 5, 26, -28, -3, 22, 9, 17,
					-- layer=1 filter=48 channel=26
					21, -2, -7, 0, -12, -5, -16, -12, -1,
					-- layer=1 filter=48 channel=27
					14, 14, 11, 21, -4, 4, -16, -14, -13,
					-- layer=1 filter=48 channel=28
					-11, -17, -8, -3, -10, 17, 3, 12, 22,
					-- layer=1 filter=48 channel=29
					8, 17, -1, 9, -8, 9, 5, 2, -23,
					-- layer=1 filter=48 channel=30
					-24, -29, 8, -22, -43, -29, 4, -25, -6,
					-- layer=1 filter=48 channel=31
					6, -14, -8, -13, 11, 2, -14, 2, 1,
					-- layer=1 filter=48 channel=32
					26, 14, 17, -14, -29, -52, -16, 7, -27,
					-- layer=1 filter=48 channel=33
					14, -9, -23, -11, 13, -3, 6, -8, 2,
					-- layer=1 filter=48 channel=34
					29, 29, 13, -20, -13, -5, -13, 5, 3,
					-- layer=1 filter=48 channel=35
					-3, -5, 1, 11, -2, 3, -19, -17, 1,
					-- layer=1 filter=48 channel=36
					-5, -29, -37, -57, -20, -60, 17, -15, 15,
					-- layer=1 filter=48 channel=37
					39, 18, -11, 32, -21, -1, 12, 18, 0,
					-- layer=1 filter=48 channel=38
					-6, -20, 9, -3, 4, 5, 16, 23, 7,
					-- layer=1 filter=48 channel=39
					28, -27, 0, 12, -27, 3, -7, 14, -8,
					-- layer=1 filter=48 channel=40
					23, 1, -8, -24, -49, -48, -37, -43, -48,
					-- layer=1 filter=48 channel=41
					7, 20, 13, -32, -24, -22, -1, -15, 17,
					-- layer=1 filter=48 channel=42
					66, -14, 45, 40, 45, 22, 9, 28, 12,
					-- layer=1 filter=48 channel=43
					32, 27, 31, 48, 9, 35, 16, 38, 31,
					-- layer=1 filter=48 channel=44
					30, -38, -45, -36, -33, -25, -25, 1, -38,
					-- layer=1 filter=48 channel=45
					-2, 44, 11, 67, 4, 30, 24, 53, 20,
					-- layer=1 filter=48 channel=46
					-7, 21, 59, 74, 45, 51, 156, 123, 137,
					-- layer=1 filter=48 channel=47
					15, 22, 4, -3, -26, -13, -4, 13, 9,
					-- layer=1 filter=48 channel=48
					-45, -40, -15, -59, -27, -35, 0, -2, 10,
					-- layer=1 filter=48 channel=49
					0, -70, -24, -4, -8, -1, -19, -13, -20,
					-- layer=1 filter=48 channel=50
					-36, -40, -13, -67, -36, -61, 1, -3, -15,
					-- layer=1 filter=48 channel=51
					-4, -7, 6, -11, 8, -16, -13, 5, 8,
					-- layer=1 filter=48 channel=52
					10, 10, 11, -6, 6, 17, 11, 2, 4,
					-- layer=1 filter=48 channel=53
					-25, -7, -25, -16, -53, -37, -23, -27, -3,
					-- layer=1 filter=48 channel=54
					-20, 2, 14, -52, -31, -42, 0, -3, -19,
					-- layer=1 filter=48 channel=55
					-14, -9, -32, 17, 20, 24, 21, 34, 18,
					-- layer=1 filter=48 channel=56
					27, -3, -2, 30, 19, 12, 7, 8, 0,
					-- layer=1 filter=48 channel=57
					14, 4, -17, 17, 4, 6, -10, -12, -10,
					-- layer=1 filter=48 channel=58
					0, -7, -3, -29, -31, -9, 22, -4, 14,
					-- layer=1 filter=48 channel=59
					13, -12, -1, 49, 19, 22, 39, 7, 48,
					-- layer=1 filter=48 channel=60
					42, 62, 67, -18, -1, -12, 19, 9, 25,
					-- layer=1 filter=48 channel=61
					-19, 12, 5, 6, -20, 6, -44, -13, -10,
					-- layer=1 filter=48 channel=62
					3, 19, 17, 71, 0, 64, 25, 67, 39,
					-- layer=1 filter=48 channel=63
					-40, -41, -43, -113, -134, -114, -57, -81, -62,
					-- layer=1 filter=49 channel=0
					-23, 7, 18, 1, -23, -17, -16, -32, -42,
					-- layer=1 filter=49 channel=1
					-39, -22, -13, -10, -22, 8, -10, -32, 0,
					-- layer=1 filter=49 channel=2
					-48, 9, 2, 5, -61, -23, -30, -7, -31,
					-- layer=1 filter=49 channel=3
					19, -18, -27, -22, -16, -26, -10, -18, -22,
					-- layer=1 filter=49 channel=4
					8, 8, 48, -2, -11, 46, 20, -9, 40,
					-- layer=1 filter=49 channel=5
					-41, -66, -15, -73, -50, 32, -57, -41, 8,
					-- layer=1 filter=49 channel=6
					-1, 9, -24, 0, -12, -30, -16, 1, -46,
					-- layer=1 filter=49 channel=7
					21, -2, 1, 16, 7, -23, 33, -17, -20,
					-- layer=1 filter=49 channel=8
					9, -14, -15, -5, -6, -35, 7, -8, -28,
					-- layer=1 filter=49 channel=9
					-67, -20, -23, -82, -28, -37, -91, -4, -42,
					-- layer=1 filter=49 channel=10
					-52, -33, 40, -7, -19, 62, 9, -7, 69,
					-- layer=1 filter=49 channel=11
					31, 0, 40, 32, 13, 49, 36, 23, 32,
					-- layer=1 filter=49 channel=12
					8, 2, 45, -23, -3, -10, -10, 2, 19,
					-- layer=1 filter=49 channel=13
					-19, 0, -38, -36, -18, -58, -40, 14, -28,
					-- layer=1 filter=49 channel=14
					-50, -8, -3, -24, -66, -30, -25, -4, -35,
					-- layer=1 filter=49 channel=15
					-77, -31, 97, 0, -47, 94, 1, -24, 112,
					-- layer=1 filter=49 channel=16
					-4, -16, 12, -9, -4, 26, 24, -28, -4,
					-- layer=1 filter=49 channel=17
					-75, -51, -23, -98, -47, 0, -116, 8, -3,
					-- layer=1 filter=49 channel=18
					-31, -18, -3, -33, -24, -4, -31, -12, -22,
					-- layer=1 filter=49 channel=19
					10, 21, 0, -8, 1, 12, 9, -2, 11,
					-- layer=1 filter=49 channel=20
					-78, -50, 74, -31, -62, 84, -1, -10, 91,
					-- layer=1 filter=49 channel=21
					-16, 14, 11, -17, -15, -24, -40, 33, -41,
					-- layer=1 filter=49 channel=22
					-96, -44, -16, -51, -53, -56, -96, -42, -91,
					-- layer=1 filter=49 channel=23
					-39, -5, 68, 26, -43, 78, 37, -18, 72,
					-- layer=1 filter=49 channel=24
					-15, -7, 17, -31, 1, 27, -11, -4, 47,
					-- layer=1 filter=49 channel=25
					1, -10, 2, -30, -16, 29, -20, 15, -23,
					-- layer=1 filter=49 channel=26
					-8, 12, 8, 0, 7, 12, -5, -13, -6,
					-- layer=1 filter=49 channel=27
					0, 7, 0, 2, 8, 4, -6, -13, -1,
					-- layer=1 filter=49 channel=28
					19, 5, -29, 3, 35, -38, 13, 32, -17,
					-- layer=1 filter=49 channel=29
					-13, 2, 12, 4, 1, 6, 3, 11, 29,
					-- layer=1 filter=49 channel=30
					-12, -23, 32, -10, -45, 29, -44, -10, 28,
					-- layer=1 filter=49 channel=31
					-10, -10, -2, 1, -14, 0, -3, 5, 13,
					-- layer=1 filter=49 channel=32
					-14, -3, 67, -44, 37, 77, -101, 43, 52,
					-- layer=1 filter=49 channel=33
					-41, -20, 14, -30, 2, 22, -29, -12, 49,
					-- layer=1 filter=49 channel=34
					7, -52, 1, -24, -71, 47, -37, -2, -8,
					-- layer=1 filter=49 channel=35
					-10, 14, 18, 16, -6, 15, 9, -6, -1,
					-- layer=1 filter=49 channel=36
					-57, -37, 76, -16, -10, 50, -29, -18, 84,
					-- layer=1 filter=49 channel=37
					-61, -4, 15, -37, -19, 4, -29, -12, 22,
					-- layer=1 filter=49 channel=38
					-20, -5, 63, -1, -24, 57, 3, -11, 50,
					-- layer=1 filter=49 channel=39
					-47, -27, 80, 9, -49, 76, 29, -31, 107,
					-- layer=1 filter=49 channel=40
					-99, -43, 40, -83, -66, -61, -155, -33, -54,
					-- layer=1 filter=49 channel=41
					-44, -47, 14, -33, -67, 19, -30, -48, 9,
					-- layer=1 filter=49 channel=42
					-34, 6, 77, 37, -47, 71, 18, -33, 45,
					-- layer=1 filter=49 channel=43
					-16, 5, -53, -67, -29, -44, -55, 25, -51,
					-- layer=1 filter=49 channel=44
					-75, -61, 80, -34, -51, 79, -28, -39, 78,
					-- layer=1 filter=49 channel=45
					-63, -21, -62, -96, -10, -35, -23, 0, -55,
					-- layer=1 filter=49 channel=46
					-41, -63, -55, -41, -86, -56, -47, -4, -47,
					-- layer=1 filter=49 channel=47
					-24, -57, 9, -35, -22, 27, -39, -7, 19,
					-- layer=1 filter=49 channel=48
					-48, -39, -15, -66, -34, -8, -68, 4, 18,
					-- layer=1 filter=49 channel=49
					-62, -44, 86, -12, -59, 114, 6, -11, 117,
					-- layer=1 filter=49 channel=50
					-47, -38, 14, -57, -39, -8, -52, -27, 15,
					-- layer=1 filter=49 channel=51
					-20, -25, 18, -9, 1, 24, -14, 8, 25,
					-- layer=1 filter=49 channel=52
					-21, -54, -4, -32, -22, 6, -42, 32, 12,
					-- layer=1 filter=49 channel=53
					-101, -98, -28, -113, -56, -21, -135, -29, -78,
					-- layer=1 filter=49 channel=54
					-56, -55, -1, -44, -56, -4, -54, -35, 8,
					-- layer=1 filter=49 channel=55
					-13, 13, 19, 0, -46, 0, -38, -59, -6,
					-- layer=1 filter=49 channel=56
					-11, -12, 10, 34, -9, 20, 9, 1, 20,
					-- layer=1 filter=49 channel=57
					-10, -15, 19, -6, 0, 21, 10, -22, 35,
					-- layer=1 filter=49 channel=58
					-78, -56, 11, -48, -25, 15, -70, -25, 20,
					-- layer=1 filter=49 channel=59
					-110, -51, -59, -120, -53, -64, -97, -20, -61,
					-- layer=1 filter=49 channel=60
					1, 6, 0, -4, -94, -59, -45, 1, -34,
					-- layer=1 filter=49 channel=61
					-115, -77, 5, -110, -55, -36, -120, -11, -92,
					-- layer=1 filter=49 channel=62
					-18, -26, -41, -68, -19, -6, -71, 13, -76,
					-- layer=1 filter=49 channel=63
					-72, -68, 18, -94, -114, -74, -104, -65, -80,
					-- layer=1 filter=50 channel=0
					32, 18, 19, -27, -3, 0, 14, 3, -22,
					-- layer=1 filter=50 channel=1
					7, -12, -7, 2, 24, 13, -11, -3, 11,
					-- layer=1 filter=50 channel=2
					48, 16, 40, 5, -2, 12, -18, -22, -14,
					-- layer=1 filter=50 channel=3
					6, -15, 1, -9, -14, -8, 6, 20, 21,
					-- layer=1 filter=50 channel=4
					-1, 2, 2, -4, -15, -47, -21, -20, -40,
					-- layer=1 filter=50 channel=5
					-51, -75, -89, 34, 29, 23, 29, 16, 21,
					-- layer=1 filter=50 channel=6
					20, -19, -63, 25, 65, 46, -8, 8, 10,
					-- layer=1 filter=50 channel=7
					25, 45, 25, 3, 1, 16, -30, -14, -28,
					-- layer=1 filter=50 channel=8
					27, 32, 27, 1, 11, 34, 4, -13, -10,
					-- layer=1 filter=50 channel=9
					-10, -49, -58, -9, 5, -6, 41, 50, 8,
					-- layer=1 filter=50 channel=10
					-15, -22, -10, -16, -49, -27, -17, -10, -6,
					-- layer=1 filter=50 channel=11
					-88, -63, -100, -62, -49, -43, -25, -53, -70,
					-- layer=1 filter=50 channel=12
					0, 12, -2, 0, 12, -14, 17, -4, 6,
					-- layer=1 filter=50 channel=13
					-5, -14, -24, -8, 7, -9, 29, 18, 1,
					-- layer=1 filter=50 channel=14
					43, 30, 65, 31, 14, 12, 4, 9, -10,
					-- layer=1 filter=50 channel=15
					-18, -37, -71, -30, 19, -60, 11, 0, 17,
					-- layer=1 filter=50 channel=16
					-28, 15, -33, -7, -4, 0, -19, -12, -27,
					-- layer=1 filter=50 channel=17
					-8, -25, -26, 12, 27, 6, 11, 38, 5,
					-- layer=1 filter=50 channel=18
					25, -30, -75, 12, 41, 32, -18, -21, 6,
					-- layer=1 filter=50 channel=19
					9, -16, -30, 20, 4, 9, -12, 0, 10,
					-- layer=1 filter=50 channel=20
					-17, -14, -24, -18, 6, -61, 1, 15, 5,
					-- layer=1 filter=50 channel=21
					16, 1, -39, 6, 39, 53, -25, -11, 14,
					-- layer=1 filter=50 channel=22
					-26, -15, -2, 8, -17, 24, -10, 22, -21,
					-- layer=1 filter=50 channel=23
					-26, -56, -78, -48, -26, -15, -7, -1, 24,
					-- layer=1 filter=50 channel=24
					-20, -46, -52, 23, 1, -30, 0, 15, -5,
					-- layer=1 filter=50 channel=25
					11, -10, -85, 37, 59, 44, -30, -18, -28,
					-- layer=1 filter=50 channel=26
					16, 25, -18, 5, 12, 5, -9, -26, -49,
					-- layer=1 filter=50 channel=27
					28, 0, 4, -10, 8, -2, -10, -13, -9,
					-- layer=1 filter=50 channel=28
					0, -6, -26, 2, 24, 13, -12, -1, -10,
					-- layer=1 filter=50 channel=29
					14, -3, -21, 26, 14, -12, -27, -13, -28,
					-- layer=1 filter=50 channel=30
					-11, -26, -32, -1, -26, -21, 64, 30, 20,
					-- layer=1 filter=50 channel=31
					10, 7, 14, -14, 5, 8, 0, 7, 4,
					-- layer=1 filter=50 channel=32
					-53, -58, -64, -4, 20, -17, -57, -29, -45,
					-- layer=1 filter=50 channel=33
					-18, -40, -30, 17, 17, 1, -2, 17, 20,
					-- layer=1 filter=50 channel=34
					60, 9, -36, 23, 39, 17, -25, -29, -40,
					-- layer=1 filter=50 channel=35
					16, 17, 38, -28, -35, -47, -4, -3, -6,
					-- layer=1 filter=50 channel=36
					-5, -19, -50, -35, -32, -58, 14, -2, 16,
					-- layer=1 filter=50 channel=37
					0, 0, -71, 62, 49, 31, -12, -35, -27,
					-- layer=1 filter=50 channel=38
					21, -24, -23, -16, -8, -44, 39, 43, 31,
					-- layer=1 filter=50 channel=39
					-13, -58, -81, -43, -19, -28, 7, 8, 31,
					-- layer=1 filter=50 channel=40
					3, -20, 23, -19, -19, -44, 22, 2, -18,
					-- layer=1 filter=50 channel=41
					0, 0, 0, -3, -23, -2, 33, 11, 6,
					-- layer=1 filter=50 channel=42
					41, 6, -17, -32, 7, 13, 4, 12, 46,
					-- layer=1 filter=50 channel=43
					49, 25, -55, 43, 82, 78, -30, -13, 17,
					-- layer=1 filter=50 channel=44
					-33, -20, -73, 19, 0, -43, -34, -25, -59,
					-- layer=1 filter=50 channel=45
					-11, 1, -76, 74, 71, 72, -31, 0, 30,
					-- layer=1 filter=50 channel=46
					-25, -33, -32, 50, 21, 21, 137, 113, 93,
					-- layer=1 filter=50 channel=47
					9, -4, -74, 41, 40, 32, -13, -15, -26,
					-- layer=1 filter=50 channel=48
					-32, -55, -59, 5, -11, -3, 45, 31, 17,
					-- layer=1 filter=50 channel=49
					-61, -44, -112, -47, -31, -78, -5, -34, 20,
					-- layer=1 filter=50 channel=50
					-39, -59, -64, 11, -17, -23, 48, 46, 18,
					-- layer=1 filter=50 channel=51
					-19, 0, -3, 8, -5, -23, 10, -1, -15,
					-- layer=1 filter=50 channel=52
					59, 34, -16, 22, 35, 54, 25, 0, 13,
					-- layer=1 filter=50 channel=53
					21, 0, -23, -11, -15, -27, -8, 6, 16,
					-- layer=1 filter=50 channel=54
					-37, -53, -33, 3, -13, -35, 38, 26, 15,
					-- layer=1 filter=50 channel=55
					14, -2, -9, 13, -1, 9, 43, 29, 16,
					-- layer=1 filter=50 channel=56
					33, 7, 30, -9, 3, 0, -38, -21, -32,
					-- layer=1 filter=50 channel=57
					3, -15, -21, 12, -15, -26, -12, -6, -3,
					-- layer=1 filter=50 channel=58
					-22, -25, -47, 9, 14, 4, 8, 7, -3,
					-- layer=1 filter=50 channel=59
					28, -32, -41, 21, 65, 30, 36, 32, 51,
					-- layer=1 filter=50 channel=60
					76, 74, 54, 6, 8, 20, 85, 39, -3,
					-- layer=1 filter=50 channel=61
					8, 6, -28, -19, 13, 24, 3, 17, 16,
					-- layer=1 filter=50 channel=62
					40, -3, -78, 54, 70, 93, 0, 27, 60,
					-- layer=1 filter=50 channel=63
					-48, -48, -47, -1, -26, -24, 35, 43, 2,
					-- layer=1 filter=51 channel=0
					53, 14, -25, 43, -67, -32, 42, 34, -6,
					-- layer=1 filter=51 channel=1
					15, -21, -46, 47, -18, -31, 17, -12, -44,
					-- layer=1 filter=51 channel=2
					26, 20, 8, 19, -47, -25, 25, 6, -14,
					-- layer=1 filter=51 channel=3
					-19, 6, -8, -35, -11, 19, -23, -12, -6,
					-- layer=1 filter=51 channel=4
					11, -27, -76, 34, -24, -33, 42, 1, -34,
					-- layer=1 filter=51 channel=5
					-3, -1, 35, -15, 3, 14, -40, 15, 14,
					-- layer=1 filter=51 channel=6
					34, -9, -17, 33, 19, -13, 49, 4, -2,
					-- layer=1 filter=51 channel=7
					19, -29, -42, 56, -34, -56, 64, 10, -22,
					-- layer=1 filter=51 channel=8
					41, -31, -52, 39, 4, -55, 76, 6, -33,
					-- layer=1 filter=51 channel=9
					10, 39, 22, 31, 30, 16, 9, 30, 2,
					-- layer=1 filter=51 channel=10
					-3, 19, -17, 0, -20, -51, 20, -10, -40,
					-- layer=1 filter=51 channel=11
					8, -10, -23, 5, -2, -14, 47, 3, 1,
					-- layer=1 filter=51 channel=12
					-4, 18, 18, -11, -8, 11, -33, -7, 0,
					-- layer=1 filter=51 channel=13
					11, 18, 43, -10, 3, 22, -10, 15, 17,
					-- layer=1 filter=51 channel=14
					18, 17, 19, 5, -38, -22, 28, 13, 1,
					-- layer=1 filter=51 channel=15
					-28, -3, -15, -56, -52, -7, -14, -68, -51,
					-- layer=1 filter=51 channel=16
					12, -68, -87, 15, -66, -33, 40, -32, -59,
					-- layer=1 filter=51 channel=17
					16, 5, 3, 1, 6, -14, 14, -6, -14,
					-- layer=1 filter=51 channel=18
					16, -10, -13, 38, 5, -7, 15, -3, 6,
					-- layer=1 filter=51 channel=19
					16, -37, -56, 26, 1, -23, 24, -21, -14,
					-- layer=1 filter=51 channel=20
					-30, -28, -9, -27, -69, 3, -19, -45, -9,
					-- layer=1 filter=51 channel=21
					39, 28, 18, 29, 23, 24, 19, 26, 3,
					-- layer=1 filter=51 channel=22
					29, 29, 9, 22, -1, 27, 7, 25, 17,
					-- layer=1 filter=51 channel=23
					-67, -18, -10, -69, -57, -4, -38, -63, -13,
					-- layer=1 filter=51 channel=24
					11, -34, -48, 11, -15, -31, 26, -5, -29,
					-- layer=1 filter=51 channel=25
					-1, -23, 1, -41, -31, -21, -25, -8, 13,
					-- layer=1 filter=51 channel=26
					19, -45, -76, 21, -13, -45, 47, -14, -59,
					-- layer=1 filter=51 channel=27
					27, -9, -35, 41, -3, -39, 42, 7, -19,
					-- layer=1 filter=51 channel=28
					4, 23, 6, 26, 25, 29, 6, 29, 30,
					-- layer=1 filter=51 channel=29
					23, -7, -23, 20, -25, -19, 31, -19, -37,
					-- layer=1 filter=51 channel=30
					-29, 3, 26, -49, 9, 24, -50, -23, 5,
					-- layer=1 filter=51 channel=31
					4, 8, 4, 0, 14, -8, 9, -13, 6,
					-- layer=1 filter=51 channel=32
					27, -55, -127, -74, -89, -85, -7, -80, -55,
					-- layer=1 filter=51 channel=33
					30, -3, -32, 23, 9, -13, 17, 10, -41,
					-- layer=1 filter=51 channel=34
					17, -13, 4, -43, -33, -31, -32, -54, 0,
					-- layer=1 filter=51 channel=35
					-3, 5, -22, 21, -12, -18, 16, 5, -15,
					-- layer=1 filter=51 channel=36
					-50, -7, 25, -94, -67, 4, -53, -56, 6,
					-- layer=1 filter=51 channel=37
					12, -33, -31, -39, -70, -10, -24, -46, -24,
					-- layer=1 filter=51 channel=38
					-31, 16, 21, -57, -18, 16, -43, -25, -8,
					-- layer=1 filter=51 channel=39
					-72, -36, -28, -68, -65, -4, -20, -62, -37,
					-- layer=1 filter=51 channel=40
					17, 18, 22, 19, 3, 6, 9, 28, 9,
					-- layer=1 filter=51 channel=41
					-44, -16, 21, -30, 2, 14, -33, -2, 17,
					-- layer=1 filter=51 channel=42
					-52, 8, -1, -49, -110, -34, -30, -45, -15,
					-- layer=1 filter=51 channel=43
					41, 22, 2, 14, -24, -14, 12, 17, 8,
					-- layer=1 filter=51 channel=44
					-15, -42, -21, -54, -81, -5, -49, -89, -22,
					-- layer=1 filter=51 channel=45
					24, 27, 0, 36, -5, 5, -8, 25, 0,
					-- layer=1 filter=51 channel=46
					-45, -4, 56, -55, 6, 65, -40, -1, 34,
					-- layer=1 filter=51 channel=47
					-5, -28, -2, -24, -37, -25, -33, -14, -6,
					-- layer=1 filter=51 channel=48
					0, 31, 30, -11, 10, 7, -27, 8, -5,
					-- layer=1 filter=51 channel=49
					-13, 19, 0, -22, -34, -16, -4, -56, -17,
					-- layer=1 filter=51 channel=50
					-30, 20, 28, -28, 24, 19, -41, -1, 8,
					-- layer=1 filter=51 channel=51
					10, 3, -5, 4, 7, -11, 24, 13, 6,
					-- layer=1 filter=51 channel=52
					-4, 8, -6, -62, -41, -50, -20, -34, -48,
					-- layer=1 filter=51 channel=53
					2, 17, 0, 0, -22, 0, 10, -29, 3,
					-- layer=1 filter=51 channel=54
					-34, -3, 33, -50, 2, 15, -30, -3, 12,
					-- layer=1 filter=51 channel=55
					-27, 22, 4, -50, 12, 31, -60, -12, 15,
					-- layer=1 filter=51 channel=56
					17, -4, -42, 46, -19, -67, 57, 22, -51,
					-- layer=1 filter=51 channel=57
					20, -9, -65, 32, -19, -32, 39, 7, -44,
					-- layer=1 filter=51 channel=58
					-14, -18, 12, -9, 0, -1, -8, -22, 8,
					-- layer=1 filter=51 channel=59
					30, 15, 20, 38, 22, 15, 41, 10, 6,
					-- layer=1 filter=51 channel=60
					66, 8, 25, 0, -18, -22, 2, -23, -35,
					-- layer=1 filter=51 channel=61
					72, 75, 43, 78, 53, 70, 75, 51, 50,
					-- layer=1 filter=51 channel=62
					40, 31, 17, 58, 31, 1, 49, 19, 30,
					-- layer=1 filter=51 channel=63
					-6, 16, 7, -15, -13, -1, -13, 0, 2,
					-- layer=1 filter=52 channel=0
					-21, 12, 7, -42, -9, 19, -43, 12, 27,
					-- layer=1 filter=52 channel=1
					-42, -23, 20, -56, -20, 37, -57, 6, 41,
					-- layer=1 filter=52 channel=2
					12, -16, -9, -44, -21, -5, -30, -29, 27,
					-- layer=1 filter=52 channel=3
					13, -38, -60, -5, -46, -79, -12, -56, -61,
					-- layer=1 filter=52 channel=4
					-37, 12, 22, -38, 19, 58, -27, 35, 42,
					-- layer=1 filter=52 channel=5
					5, 17, 4, 9, -4, -19, 19, -16, -20,
					-- layer=1 filter=52 channel=6
					-11, -36, 15, -52, -72, 12, -31, -32, -10,
					-- layer=1 filter=52 channel=7
					-50, -1, 31, -37, 13, 49, -28, 15, 53,
					-- layer=1 filter=52 channel=8
					-38, -22, 36, -49, -22, 35, -62, 4, 56,
					-- layer=1 filter=52 channel=9
					3, -44, -29, 9, -61, -50, -13, -57, -20,
					-- layer=1 filter=52 channel=10
					-5, -23, 6, -18, -16, 13, -6, 10, 25,
					-- layer=1 filter=52 channel=11
					-15, 13, 30, -1, -4, 23, 0, -6, 16,
					-- layer=1 filter=52 channel=12
					-2, -19, -9, -7, 0, -2, 5, -26, -38,
					-- layer=1 filter=52 channel=13
					20, -13, -31, 21, -11, -40, 21, -19, -19,
					-- layer=1 filter=52 channel=14
					10, -16, -32, -63, -63, -47, -47, -61, -41,
					-- layer=1 filter=52 channel=15
					11, 13, 43, 44, 47, 41, 44, 28, 25,
					-- layer=1 filter=52 channel=16
					-7, 14, 16, -32, 8, 33, -23, 11, 18,
					-- layer=1 filter=52 channel=17
					-6, -21, -12, -2, -52, -8, 2, -35, -14,
					-- layer=1 filter=52 channel=18
					-17, -14, 2, -10, -62, -10, -8, -28, -44,
					-- layer=1 filter=52 channel=19
					-48, -11, 9, -35, 14, 21, -30, 7, 2,
					-- layer=1 filter=52 channel=20
					-2, 21, 9, 9, 36, 9, -3, 4, -5,
					-- layer=1 filter=52 channel=21
					-19, -48, -10, 20, -64, -37, 0, -62, -25,
					-- layer=1 filter=52 channel=22
					4, -45, -39, 4, -73, -66, 38, -58, -42,
					-- layer=1 filter=52 channel=23
					36, 32, 21, 57, 7, -5, 33, 8, 12,
					-- layer=1 filter=52 channel=24
					-43, 6, 11, -34, 0, 23, -26, 3, 23,
					-- layer=1 filter=52 channel=25
					27, 45, 30, 4, 28, 38, -22, 11, -39,
					-- layer=1 filter=52 channel=26
					-37, -12, 21, -45, -20, 33, -47, -18, 6,
					-- layer=1 filter=52 channel=27
					-38, -4, 34, -32, -13, 37, -26, 0, 52,
					-- layer=1 filter=52 channel=28
					13, -26, -24, -12, -10, -45, -13, -33, -40,
					-- layer=1 filter=52 channel=29
					-17, 0, 14, -24, -6, 30, -35, 21, 32,
					-- layer=1 filter=52 channel=30
					35, 21, -2, 24, -8, -35, 7, -16, -10,
					-- layer=1 filter=52 channel=31
					0, -12, 10, 0, 1, -14, 5, -2, -2,
					-- layer=1 filter=52 channel=32
					-85, -58, -33, -142, -76, -78, -104, -89, -81,
					-- layer=1 filter=52 channel=33
					-44, -33, 13, -23, -29, 14, -26, -11, 14,
					-- layer=1 filter=52 channel=34
					-4, 36, 46, -5, 16, -14, 22, -16, -25,
					-- layer=1 filter=52 channel=35
					-9, -16, 26, -31, 8, 15, -23, -9, 35,
					-- layer=1 filter=52 channel=36
					14, 14, 19, 23, 45, 3, 22, 17, 7,
					-- layer=1 filter=52 channel=37
					48, 17, 33, 9, 17, 26, 25, -11, -40,
					-- layer=1 filter=52 channel=38
					12, -7, -2, 0, -3, -14, -14, 0, -1,
					-- layer=1 filter=52 channel=39
					-1, 21, 39, 8, 7, 12, 33, 24, 11,
					-- layer=1 filter=52 channel=40
					17, -28, -46, 11, -74, -69, 21, -48, -16,
					-- layer=1 filter=52 channel=41
					-5, -11, -11, 6, -14, -16, -15, -3, -18,
					-- layer=1 filter=52 channel=42
					45, 23, 15, 22, 3, -7, 19, 0, 5,
					-- layer=1 filter=52 channel=43
					-11, -15, -8, -10, -29, -30, -9, -29, -48,
					-- layer=1 filter=52 channel=44
					20, 35, 50, 26, 22, 23, 47, 17, -2,
					-- layer=1 filter=52 channel=45
					9, -23, -13, -26, -61, -30, 1, -31, -55,
					-- layer=1 filter=52 channel=46
					2, -10, -8, 25, 7, -18, 27, -7, -15,
					-- layer=1 filter=52 channel=47
					0, -3, 3, -21, 4, -6, 5, -9, -68,
					-- layer=1 filter=52 channel=48
					27, 11, 10, 36, 20, -18, 18, -3, -8,
					-- layer=1 filter=52 channel=49
					11, 21, 59, 33, 27, 52, 52, 28, 35,
					-- layer=1 filter=52 channel=50
					35, 17, -3, 26, 11, 3, 32, -4, -24,
					-- layer=1 filter=52 channel=51
					-17, 1, 10, 0, -1, 20, -5, -4, 21,
					-- layer=1 filter=52 channel=52
					9, 0, 15, -14, -13, -36, -14, -32, -44,
					-- layer=1 filter=52 channel=53
					-2, -19, -47, 20, -66, -59, 11, -43, -18,
					-- layer=1 filter=52 channel=54
					13, 23, -18, 21, 14, -11, 36, 0, 2,
					-- layer=1 filter=52 channel=55
					8, 8, -22, 30, -17, -27, 9, -29, -40,
					-- layer=1 filter=52 channel=56
					-38, 3, 20, -46, 8, 54, -21, 20, 53,
					-- layer=1 filter=52 channel=57
					-34, 14, 12, -28, -12, 38, -36, 3, 30,
					-- layer=1 filter=52 channel=58
					3, 0, -1, 0, -9, -14, -19, -9, -20,
					-- layer=1 filter=52 channel=59
					-20, -94, -39, -41, -94, -10, -15, -78, -8,
					-- layer=1 filter=52 channel=60
					-15, -15, 23, -40, -32, -40, -31, -26, -62,
					-- layer=1 filter=52 channel=61
					-12, -66, -43, 6, -70, -32, 22, -52, -17,
					-- layer=1 filter=52 channel=62
					-8, -53, -28, -10, -76, -31, -33, -65, -49,
					-- layer=1 filter=52 channel=63
					36, -2, -19, 21, -33, -53, 30, -13, -44,
					-- layer=1 filter=53 channel=0
					-46, -24, -4, -4, -17, 25, -27, -58, 51,
					-- layer=1 filter=53 channel=1
					-13, -19, 10, 56, -27, 7, -59, -57, 47,
					-- layer=1 filter=53 channel=2
					-40, -50, -4, 26, 23, -5, 10, -28, 59,
					-- layer=1 filter=53 channel=3
					-30, 0, -24, 11, -7, -43, -29, 34, -21,
					-- layer=1 filter=53 channel=4
					-6, -32, -18, -55, -16, 32, -7, 33, 17,
					-- layer=1 filter=53 channel=5
					-40, -3, 7, -79, 53, 19, 35, -28, -62,
					-- layer=1 filter=53 channel=6
					10, -4, 12, -3, -45, 26, 57, -6, -10,
					-- layer=1 filter=53 channel=7
					27, -1, -18, 0, -100, -59, 11, -16, -26,
					-- layer=1 filter=53 channel=8
					18, -19, -11, 32, -65, -22, 22, -1, -12,
					-- layer=1 filter=53 channel=9
					-23, -31, -75, 19, -61, 1, -7, -4, 0,
					-- layer=1 filter=53 channel=10
					-83, -3, -10, 0, 12, -2, -16, 0, 37,
					-- layer=1 filter=53 channel=11
					-30, 8, 28, -37, 58, 32, 22, 12, -37,
					-- layer=1 filter=53 channel=12
					-35, -49, 12, -85, 71, 8, 23, 31, -11,
					-- layer=1 filter=53 channel=13
					8, 11, 12, -16, -32, -46, 8, -13, -42,
					-- layer=1 filter=53 channel=14
					-29, -34, -42, 18, 22, 6, -6, -46, 61,
					-- layer=1 filter=53 channel=15
					-91, -9, 14, -55, 53, 12, -6, 35, 13,
					-- layer=1 filter=53 channel=16
					-19, -16, -10, -107, -8, 37, 21, 53, -4,
					-- layer=1 filter=53 channel=17
					-28, -51, -32, 8, -47, 14, -17, -42, -9,
					-- layer=1 filter=53 channel=18
					-41, -33, 12, -34, -22, 32, 39, 12, -12,
					-- layer=1 filter=53 channel=19
					-6, 6, 13, 12, -29, 48, -27, 19, 29,
					-- layer=1 filter=53 channel=20
					-64, -29, -2, -68, 15, 8, -12, 28, -19,
					-- layer=1 filter=53 channel=21
					2, -12, 3, 0, -88, -28, 48, 31, -55,
					-- layer=1 filter=53 channel=22
					12, -11, -80, 75, -22, -24, -21, 14, 29,
					-- layer=1 filter=53 channel=23
					-30, 23, 40, -26, 64, 26, -29, -11, 46,
					-- layer=1 filter=53 channel=24
					-2, -9, 4, -7, -31, 47, -54, 16, 22,
					-- layer=1 filter=53 channel=25
					-4, -37, 28, -135, 7, 64, 54, 41, -14,
					-- layer=1 filter=53 channel=26
					28, -8, 10, -67, -25, 32, 53, 21, -38,
					-- layer=1 filter=53 channel=27
					5, -31, -16, 4, -67, -15, -21, -45, -2,
					-- layer=1 filter=53 channel=28
					-7, 0, -16, -18, -44, -31, 26, -25, -74,
					-- layer=1 filter=53 channel=29
					-2, -25, 3, -73, -66, 7, 16, 24, -32,
					-- layer=1 filter=53 channel=30
					-37, 44, 9, 15, 38, -11, -9, -13, -38,
					-- layer=1 filter=53 channel=31
					-2, 3, -14, -9, -7, -2, -2, 1, -3,
					-- layer=1 filter=53 channel=32
					42, -16, 16, -63, -43, 68, 39, 75, -40,
					-- layer=1 filter=53 channel=33
					-5, -8, 4, 37, -28, 45, -50, -12, 0,
					-- layer=1 filter=53 channel=34
					45, -23, 72, -94, 80, 51, 96, 18, -60,
					-- layer=1 filter=53 channel=35
					-21, -33, -45, 6, -39, -21, -69, 0, 18,
					-- layer=1 filter=53 channel=36
					-33, -28, -5, -43, -1, 27, -49, 28, -29,
					-- layer=1 filter=53 channel=37
					-11, -28, 33, -105, -11, 65, 78, 78, -26,
					-- layer=1 filter=53 channel=38
					-71, -26, -14, -39, -3, -6, -66, -2, 25,
					-- layer=1 filter=53 channel=39
					-69, -13, 7, -32, 28, 9, -49, 27, 10,
					-- layer=1 filter=53 channel=40
					-23, -56, -80, 36, -8, 6, -9, -36, 38,
					-- layer=1 filter=53 channel=41
					10, -5, 2, 23, 25, -4, -4, -32, -13,
					-- layer=1 filter=53 channel=42
					-49, 11, 3, -9, 49, 10, -52, -38, 81,
					-- layer=1 filter=53 channel=43
					-23, -45, 40, -60, -39, 41, 70, 26, -35,
					-- layer=1 filter=53 channel=44
					-51, -28, 36, -77, 55, 59, 32, 49, -11,
					-- layer=1 filter=53 channel=45
					-29, -15, 14, -35, -63, 59, 47, 30, -51,
					-- layer=1 filter=53 channel=46
					9, 8, 7, -15, 13, -4, -8, -44, -102,
					-- layer=1 filter=53 channel=47
					-19, -35, 24, -90, 47, 57, 45, 19, -35,
					-- layer=1 filter=53 channel=48
					-12, -27, -19, -56, -29, -4, 23, -6, -71,
					-- layer=1 filter=53 channel=49
					-82, -4, 6, -35, 61, 35, -1, 25, 23,
					-- layer=1 filter=53 channel=50
					-44, -46, -53, -38, -20, -15, -51, -80, -39,
					-- layer=1 filter=53 channel=51
					-46, -34, -22, -66, -40, -9, -22, -9, -6,
					-- layer=1 filter=53 channel=52
					56, 6, 88, -65, 87, 32, 79, 7, -92,
					-- layer=1 filter=53 channel=53
					17, 12, -103, 67, -41, 14, 12, -3, 36,
					-- layer=1 filter=53 channel=54
					-63, -32, -15, -52, -15, -11, -54, -61, -47,
					-- layer=1 filter=53 channel=55
					-49, 23, 36, -4, -13, -50, 15, 16, -22,
					-- layer=1 filter=53 channel=56
					-44, -9, 13, -2, -13, -11, -74, -29, -4,
					-- layer=1 filter=53 channel=57
					27, -9, -12, -17, -50, 34, -15, 53, 0,
					-- layer=1 filter=53 channel=58
					-6, -37, 8, -84, 1, 37, 54, 9, -45,
					-- layer=1 filter=53 channel=59
					-9, -10, -43, 22, -44, -26, 31, -74, 2,
					-- layer=1 filter=53 channel=60
					-16, -20, 43, -61, 37, 2, 44, 24, -39,
					-- layer=1 filter=53 channel=61
					-13, -3, -66, 45, -82, -8, 21, 27, -10,
					-- layer=1 filter=53 channel=62
					-29, 14, -5, -15, -88, 18, 50, -5, -50,
					-- layer=1 filter=53 channel=63
					-26, -13, -57, 25, -13, -46, -13, -13, -12,
					-- layer=1 filter=54 channel=0
					-2, -6, 4, 11, -7, 1, -2, -20, 2,
					-- layer=1 filter=54 channel=1
					-4, 9, 0, 7, 1, -6, -9, -24, 2,
					-- layer=1 filter=54 channel=2
					-3, -14, -4, -5, 22, 0, 0, -1, -26,
					-- layer=1 filter=54 channel=3
					5, 10, -18, -20, 10, -7, -19, 14, 1,
					-- layer=1 filter=54 channel=4
					22, 13, 16, 18, 3, -2, -6, 10, 6,
					-- layer=1 filter=54 channel=5
					4, 18, -2, -14, -5, -24, -6, -8, 13,
					-- layer=1 filter=54 channel=6
					12, -19, 0, -16, -27, -16, 15, 4, 21,
					-- layer=1 filter=54 channel=7
					15, -14, 3, -4, -7, 17, 5, 14, -15,
					-- layer=1 filter=54 channel=8
					13, -7, 8, -10, -7, -8, 15, -20, -13,
					-- layer=1 filter=54 channel=9
					40, 37, 24, 13, 19, 12, 10, -19, -8,
					-- layer=1 filter=54 channel=10
					-16, -2, 3, 5, -16, -25, -5, -2, 2,
					-- layer=1 filter=54 channel=11
					15, 30, 1, 37, 15, 8, 47, 60, 67,
					-- layer=1 filter=54 channel=12
					-11, -26, -28, -29, 2, -8, -12, 4, -15,
					-- layer=1 filter=54 channel=13
					6, 6, -6, 16, 25, -2, 31, 30, 22,
					-- layer=1 filter=54 channel=14
					7, -9, -29, 17, 17, 7, 19, 10, -29,
					-- layer=1 filter=54 channel=15
					-95, -103, -86, -134, -160, -112, -108, -110, -44,
					-- layer=1 filter=54 channel=16
					-16, -7, -16, -5, 8, -17, 3, 13, 30,
					-- layer=1 filter=54 channel=17
					5, -1, 17, 15, 12, -10, -10, 6, -14,
					-- layer=1 filter=54 channel=18
					5, 6, -2, -9, -7, 1, 24, 24, 13,
					-- layer=1 filter=54 channel=19
					13, -5, 4, -8, 13, -11, 15, 16, 6,
					-- layer=1 filter=54 channel=20
					-21, 6, -16, -14, -22, 1, -19, 6, -17,
					-- layer=1 filter=54 channel=21
					9, -8, 1, -17, -23, -17, 53, 46, 24,
					-- layer=1 filter=54 channel=22
					43, 12, 21, 30, 37, 27, -2, -27, -9,
					-- layer=1 filter=54 channel=23
					-18, -9, -7, 6, 9, 15, 17, 4, 36,
					-- layer=1 filter=54 channel=24
					8, 0, 1, 10, -8, -5, -4, 7, 0,
					-- layer=1 filter=54 channel=25
					-11, -10, -30, -42, -39, -76, 25, 13, 26,
					-- layer=1 filter=54 channel=26
					-1, -14, -9, -10, -8, -23, -5, 3, 13,
					-- layer=1 filter=54 channel=27
					18, 0, 17, -5, 0, 8, 8, -8, -14,
					-- layer=1 filter=54 channel=28
					1, -8, 12, -1, 33, 12, 47, 40, 37,
					-- layer=1 filter=54 channel=29
					-9, 5, -7, -20, -3, -20, -1, -10, -6,
					-- layer=1 filter=54 channel=30
					4, -5, 10, 6, 16, 7, -7, -10, -4,
					-- layer=1 filter=54 channel=31
					-1, 0, 13, -2, 11, -10, 1, 12, 14,
					-- layer=1 filter=54 channel=32
					-83, -40, -60, -117, -95, -129, -76, -23, -47,
					-- layer=1 filter=54 channel=33
					10, 2, -7, 6, -10, -11, 1, 7, -11,
					-- layer=1 filter=54 channel=34
					-40, -20, -39, -69, -69, -47, 37, 29, 22,
					-- layer=1 filter=54 channel=35
					-1, 11, -5, 0, 7, 6, -2, -6, -12,
					-- layer=1 filter=54 channel=36
					-23, -3, -33, -3, -27, -5, 14, 18, -13,
					-- layer=1 filter=54 channel=37
					-59, -32, -75, -71, -83, -120, 26, 5, 18,
					-- layer=1 filter=54 channel=38
					-20, 2, -7, -12, 10, -11, -12, -8, 10,
					-- layer=1 filter=54 channel=39
					-23, -31, -33, -16, -30, -26, -2, -41, -22,
					-- layer=1 filter=54 channel=40
					27, 33, 40, 40, 23, 13, 16, -9, 3,
					-- layer=1 filter=54 channel=41
					7, 14, -5, -3, 16, -6, -7, -8, 0,
					-- layer=1 filter=54 channel=42
					-14, -21, -18, 9, 18, -8, 1, -33, -8,
					-- layer=1 filter=54 channel=43
					-50, -46, -34, -80, -56, -83, 38, 8, 12,
					-- layer=1 filter=54 channel=44
					-74, -10, -18, -61, -93, -63, -36, -24, 9,
					-- layer=1 filter=54 channel=45
					-37, -28, -22, -58, -64, -84, 4, -1, 5,
					-- layer=1 filter=54 channel=46
					1, 6, 13, -10, -12, 6, -46, -45, -25,
					-- layer=1 filter=54 channel=47
					-19, -40, -65, -82, -68, -101, 19, -5, 9,
					-- layer=1 filter=54 channel=48
					13, 29, 17, 6, 9, -2, 2, 27, 13,
					-- layer=1 filter=54 channel=49
					-125, -132, -115, -176, -202, -145, -123, -140, -80,
					-- layer=1 filter=54 channel=50
					23, 15, 5, 27, 29, 4, 12, 16, 10,
					-- layer=1 filter=54 channel=51
					18, 30, 8, 12, 11, 9, 13, -1, 16,
					-- layer=1 filter=54 channel=52
					19, 8, 44, -18, -22, -9, 52, 49, 35,
					-- layer=1 filter=54 channel=53
					-2, -60, -38, -59, -85, -85, -82, -108, -60,
					-- layer=1 filter=54 channel=54
					14, 8, 17, 4, 17, -4, -10, 15, -6,
					-- layer=1 filter=54 channel=55
					-2, 19, -13, -30, 8, -12, 9, 6, 14,
					-- layer=1 filter=54 channel=56
					1, 17, -1, -9, 14, 7, -26, -19, 4,
					-- layer=1 filter=54 channel=57
					-3, -3, 2, 2, -3, 9, -14, -5, 9,
					-- layer=1 filter=54 channel=58
					3, 5, -7, -21, -30, -24, -7, 8, 18,
					-- layer=1 filter=54 channel=59
					-15, -60, -14, -77, -82, -82, -39, -85, -66,
					-- layer=1 filter=54 channel=60
					0, -13, 45, 0, -4, -7, 156, 134, 78,
					-- layer=1 filter=54 channel=61
					-34, -104, -68, -143, -136, -138, -91, -128, -129,
					-- layer=1 filter=54 channel=62
					-14, -50, -30, -59, -79, -52, 15, -1, -9,
					-- layer=1 filter=54 channel=63
					12, 14, 9, 32, 8, 14, -14, -20, -10,
					-- layer=1 filter=55 channel=0
					-3, 1, -11, -14, 4, -9, -4, 12, 12,
					-- layer=1 filter=55 channel=1
					1, 3, 5, 0, 12, -7, 1, -11, 10,
					-- layer=1 filter=55 channel=2
					-7, -4, -6, -13, 8, -3, 11, 5, 10,
					-- layer=1 filter=55 channel=3
					-9, -16, -15, 12, 5, 8, 7, -7, 11,
					-- layer=1 filter=55 channel=4
					7, -13, -12, -5, 3, -10, -7, 12, -12,
					-- layer=1 filter=55 channel=5
					6, -10, -14, -4, -12, -11, -10, -10, -6,
					-- layer=1 filter=55 channel=6
					-2, 7, 0, 13, 0, 7, 2, 6, -12,
					-- layer=1 filter=55 channel=7
					7, 3, -17, -8, -15, 3, 1, -5, -16,
					-- layer=1 filter=55 channel=8
					0, 10, -6, 7, 6, -15, 8, -7, -8,
					-- layer=1 filter=55 channel=9
					-8, -4, 7, 2, -18, -1, 0, -2, 12,
					-- layer=1 filter=55 channel=10
					-7, -1, 9, 12, 4, 1, -3, 5, 4,
					-- layer=1 filter=55 channel=11
					5, 0, -2, 0, 2, 0, -15, 2, -10,
					-- layer=1 filter=55 channel=12
					-1, -11, -5, 2, 0, -2, 2, -1, -11,
					-- layer=1 filter=55 channel=13
					-5, 5, -10, -13, 0, 8, -7, 9, -9,
					-- layer=1 filter=55 channel=14
					4, -12, -10, 1, 0, 0, -11, 11, 0,
					-- layer=1 filter=55 channel=15
					10, 0, 5, 13, -11, 11, -13, -12, -13,
					-- layer=1 filter=55 channel=16
					3, -11, -7, -4, 3, 9, -15, 6, -11,
					-- layer=1 filter=55 channel=17
					-3, -13, -7, 7, -10, 4, 8, -3, 2,
					-- layer=1 filter=55 channel=18
					0, -13, 9, 12, -8, -13, 8, -11, 0,
					-- layer=1 filter=55 channel=19
					-10, -5, 7, -14, -14, 5, 11, 4, -3,
					-- layer=1 filter=55 channel=20
					-11, -14, -12, -1, 0, 1, 3, 5, 7,
					-- layer=1 filter=55 channel=21
					-4, -10, -6, -15, 8, -8, -15, 5, -17,
					-- layer=1 filter=55 channel=22
					-7, 5, 11, -6, -10, -9, -15, 2, -7,
					-- layer=1 filter=55 channel=23
					7, 12, 6, 11, -14, -1, -11, -1, -12,
					-- layer=1 filter=55 channel=24
					9, -1, -5, -6, 0, 11, -3, -8, 3,
					-- layer=1 filter=55 channel=25
					-3, 1, 1, -4, -15, -5, 5, -12, -12,
					-- layer=1 filter=55 channel=26
					6, 0, 2, 9, 8, 5, -10, 0, -14,
					-- layer=1 filter=55 channel=27
					3, -8, 1, -13, -9, 4, -2, -17, -15,
					-- layer=1 filter=55 channel=28
					0, 0, 9, -3, -5, -19, -5, 7, -2,
					-- layer=1 filter=55 channel=29
					-6, 0, -7, -11, 11, -10, -3, -16, 11,
					-- layer=1 filter=55 channel=30
					0, 7, 3, -12, -2, 0, -4, -16, 6,
					-- layer=1 filter=55 channel=31
					-1, 11, -2, -5, -14, -8, 11, 7, -11,
					-- layer=1 filter=55 channel=32
					2, -10, 1, -7, 4, -13, -3, 1, 11,
					-- layer=1 filter=55 channel=33
					4, -8, -6, 1, -4, -10, 9, -11, 11,
					-- layer=1 filter=55 channel=34
					-9, 0, 7, -8, 1, 7, 8, 0, -1,
					-- layer=1 filter=55 channel=35
					3, -13, 1, -10, -9, 11, 6, 9, -2,
					-- layer=1 filter=55 channel=36
					4, -6, -12, -21, 3, 3, -12, 3, -6,
					-- layer=1 filter=55 channel=37
					-23, 5, 0, 3, 10, -14, 6, -12, 9,
					-- layer=1 filter=55 channel=38
					-12, -2, -8, -7, -8, -10, -11, -13, 2,
					-- layer=1 filter=55 channel=39
					-2, 2, -12, -9, -1, 9, -13, -10, -9,
					-- layer=1 filter=55 channel=40
					-9, -4, -9, -7, -19, -10, 9, 5, -4,
					-- layer=1 filter=55 channel=41
					4, 6, -8, 1, 3, -5, 5, 9, -2,
					-- layer=1 filter=55 channel=42
					11, -1, -14, -12, -16, -12, 11, -6, -6,
					-- layer=1 filter=55 channel=43
					-15, -13, 11, -6, -3, 3, 4, 11, 0,
					-- layer=1 filter=55 channel=44
					8, 0, 7, 15, 8, -10, -10, 5, 9,
					-- layer=1 filter=55 channel=45
					5, 6, -15, 4, -5, -4, 7, 2, 8,
					-- layer=1 filter=55 channel=46
					8, -4, 6, -14, 12, -5, -1, -10, -2,
					-- layer=1 filter=55 channel=47
					-16, -7, -4, 1, -13, -5, -18, 10, -6,
					-- layer=1 filter=55 channel=48
					3, -2, -2, -2, -6, -7, -12, 9, -16,
					-- layer=1 filter=55 channel=49
					-3, 0, -8, -4, 5, -14, -11, 12, -12,
					-- layer=1 filter=55 channel=50
					-16, -9, -12, 3, -5, 6, 7, 0, 8,
					-- layer=1 filter=55 channel=51
					-8, 5, -11, 11, -7, -17, 6, -12, 2,
					-- layer=1 filter=55 channel=52
					-14, -10, 6, -14, -2, 1, 2, -7, -11,
					-- layer=1 filter=55 channel=53
					0, -15, -7, -9, -23, -16, 1, -16, -13,
					-- layer=1 filter=55 channel=54
					-13, -5, -14, 7, -12, -14, 1, 13, 4,
					-- layer=1 filter=55 channel=55
					14, -12, -14, 12, 9, -2, 12, 2, -8,
					-- layer=1 filter=55 channel=56
					-1, -12, 0, -1, 4, 9, -1, -11, -14,
					-- layer=1 filter=55 channel=57
					-7, -9, 14, -1, -6, -11, -14, -8, -2,
					-- layer=1 filter=55 channel=58
					-14, -2, -2, -7, 0, 7, -1, -15, -2,
					-- layer=1 filter=55 channel=59
					-6, 11, 0, -9, 6, 0, -4, -14, -11,
					-- layer=1 filter=55 channel=60
					-15, -3, 3, -7, -12, 9, 8, -3, -11,
					-- layer=1 filter=55 channel=61
					-1, -5, -8, -11, 8, -13, -3, -19, -9,
					-- layer=1 filter=55 channel=62
					-5, 8, -3, -5, 10, -15, -7, 6, -1,
					-- layer=1 filter=55 channel=63
					-8, -6, -10, -14, -18, -2, -8, 4, -2,
					-- layer=1 filter=56 channel=0
					33, 45, 32, -9, -20, -8, -58, -70, 26,
					-- layer=1 filter=56 channel=1
					12, 8, 22, 2, -6, -3, -21, -17, -20,
					-- layer=1 filter=56 channel=2
					35, 28, 58, 4, -18, 23, -33, -72, 16,
					-- layer=1 filter=56 channel=3
					-30, -16, -20, -33, -53, 10, -21, -30, -24,
					-- layer=1 filter=56 channel=4
					7, 25, -15, -28, -5, -15, 0, -16, -39,
					-- layer=1 filter=56 channel=5
					-13, -24, -16, -9, -1, -11, 11, 13, 19,
					-- layer=1 filter=56 channel=6
					-70, -50, -25, -67, -31, -26, 7, 18, 51,
					-- layer=1 filter=56 channel=7
					25, 17, 45, -25, -13, 26, -57, -56, -22,
					-- layer=1 filter=56 channel=8
					15, -4, 20, -16, -23, -16, -48, -33, -16,
					-- layer=1 filter=56 channel=9
					-32, 21, -13, -12, 14, 26, 1, 53, 55,
					-- layer=1 filter=56 channel=10
					39, 49, 12, -9, 28, 0, 0, -24, -23,
					-- layer=1 filter=56 channel=11
					-42, -121, -99, -37, -65, -40, -2, -37, -80,
					-- layer=1 filter=56 channel=12
					-21, -23, -31, -17, -44, -24, 0, 8, -4,
					-- layer=1 filter=56 channel=13
					-26, -20, -25, 5, 15, 32, -6, -8, 12,
					-- layer=1 filter=56 channel=14
					35, 36, 10, -6, -21, 3, -50, -62, -2,
					-- layer=1 filter=56 channel=15
					29, 47, -45, 4, 46, -40, 17, -8, -71,
					-- layer=1 filter=56 channel=16
					-42, -108, -41, -70, -97, -54, -33, -42, -56,
					-- layer=1 filter=56 channel=17
					1, 14, 8, -11, 3, 1, -31, 25, 3,
					-- layer=1 filter=56 channel=18
					-29, -30, -2, -29, -20, -7, 41, 34, 37,
					-- layer=1 filter=56 channel=19
					38, 22, 30, 2, -2, 8, 14, 21, 3,
					-- layer=1 filter=56 channel=20
					25, 27, -26, 4, 31, -24, 17, 5, -69,
					-- layer=1 filter=56 channel=21
					-99, -24, -24, -75, -8, 12, -17, 41, 65,
					-- layer=1 filter=56 channel=22
					-43, 13, 12, -25, -9, 1, -49, -16, 33,
					-- layer=1 filter=56 channel=23
					-16, -52, -83, 3, -5, -24, 32, -12, -8,
					-- layer=1 filter=56 channel=24
					45, 39, 35, 21, 8, 33, -7, 9, 0,
					-- layer=1 filter=56 channel=25
					-59, -78, -52, -75, -44, -81, 31, 36, 37,
					-- layer=1 filter=56 channel=26
					5, -29, 9, -16, -59, -45, 5, -14, -41,
					-- layer=1 filter=56 channel=27
					23, 7, 35, 4, 6, 8, -19, -7, -18,
					-- layer=1 filter=56 channel=28
					-95, -60, -33, -64, -30, -15, -32, -24, 4,
					-- layer=1 filter=56 channel=29
					-4, 1, 15, -16, 0, -4, 9, 4, -8,
					-- layer=1 filter=56 channel=30
					-14, -25, -2, -21, 1, 9, -10, 3, 5,
					-- layer=1 filter=56 channel=31
					-7, 14, -2, -5, -4, -7, -5, -8, 6,
					-- layer=1 filter=56 channel=32
					-9, 11, -50, -54, -2, -28, -37, 13, -19,
					-- layer=1 filter=56 channel=33
					21, 36, 38, 10, 0, -5, -6, 10, -24,
					-- layer=1 filter=56 channel=34
					-84, -133, -114, -70, -63, -43, 9, 31, 50,
					-- layer=1 filter=56 channel=35
					27, 40, 22, -23, -26, 25, -59, -41, -13,
					-- layer=1 filter=56 channel=36
					13, 15, -34, 14, 12, -42, -4, 13, -58,
					-- layer=1 filter=56 channel=37
					-30, -138, -95, -74, -85, -44, 47, -3, -1,
					-- layer=1 filter=56 channel=38
					5, 11, 5, 23, 19, 4, -15, -4, -36,
					-- layer=1 filter=56 channel=39
					11, -6, -81, 12, 16, -57, 8, 10, -58,
					-- layer=1 filter=56 channel=40
					-13, 24, 29, -10, 6, 38, -34, 4, 54,
					-- layer=1 filter=56 channel=41
					-21, -21, -20, -7, 8, -5, -13, -9, 10,
					-- layer=1 filter=56 channel=42
					21, 35, 35, 28, 4, 5, -23, -63, 19,
					-- layer=1 filter=56 channel=43
					-83, -109, -76, -45, -30, -12, 2, 11, 61,
					-- layer=1 filter=56 channel=44
					-25, -21, -84, -40, -30, -116, 39, 7, -34,
					-- layer=1 filter=56 channel=45
					-66, -98, -79, -63, -36, -11, 6, -3, 57,
					-- layer=1 filter=56 channel=46
					-29, -35, -10, -11, 7, 19, 10, 12, 31,
					-- layer=1 filter=56 channel=47
					-55, -130, -83, -62, -81, -61, 35, 10, 31,
					-- layer=1 filter=56 channel=48
					-24, -7, -30, 15, 26, 0, 21, 44, 23,
					-- layer=1 filter=56 channel=49
					33, 33, -38, -6, 22, -79, 46, -6, -81,
					-- layer=1 filter=56 channel=50
					-9, 1, 1, 0, 2, 7, 23, 29, 3,
					-- layer=1 filter=56 channel=51
					21, 34, 31, 18, 4, 13, 19, 24, 13,
					-- layer=1 filter=56 channel=52
					-23, -80, -52, -40, -52, 0, 13, -15, 21,
					-- layer=1 filter=56 channel=53
					-81, 60, 18, -87, 39, 2, -49, 17, 3,
					-- layer=1 filter=56 channel=54
					-6, 1, -3, -3, 12, -9, 17, 4, 1,
					-- layer=1 filter=56 channel=55
					-7, -8, 20, -2, -4, 16, -24, -22, 11,
					-- layer=1 filter=56 channel=56
					10, 11, 38, -27, -16, -11, -31, -78, -36,
					-- layer=1 filter=56 channel=57
					17, 15, 4, 8, 2, 0, -7, 4, -39,
					-- layer=1 filter=56 channel=58
					-4, -24, -8, -22, -3, -30, 16, 4, 10,
					-- layer=1 filter=56 channel=59
					-63, 8, 3, -104, 31, 3, -22, 23, 76,
					-- layer=1 filter=56 channel=60
					-103, -200, -130, -49, -69, -18, 34, 83, 138,
					-- layer=1 filter=56 channel=61
					-66, 24, -13, -101, 10, 10, -45, 30, 51,
					-- layer=1 filter=56 channel=62
					-88, -23, -22, -64, 33, 14, 7, 51, 70,
					-- layer=1 filter=56 channel=63
					-39, -33, -20, -8, 3, 5, -14, 19, 41,
					-- layer=1 filter=57 channel=0
					-71, -5, -29, 69, 31, -10, -18, 36, 5,
					-- layer=1 filter=57 channel=1
					-22, -43, 2, 36, -3, 22, -25, -19, -1,
					-- layer=1 filter=57 channel=2
					-15, -23, 6, 75, 44, -2, -22, 13, -10,
					-- layer=1 filter=57 channel=3
					-2, 18, 5, -34, -49, -9, -31, -28, -6,
					-- layer=1 filter=57 channel=4
					-8, -49, -11, -24, -30, -36, -26, -18, -32,
					-- layer=1 filter=57 channel=5
					57, 31, -7, -50, -43, -44, -10, -27, -31,
					-- layer=1 filter=57 channel=6
					49, 23, 0, -56, -36, -12, 21, 3, 28,
					-- layer=1 filter=57 channel=7
					-29, 4, 30, -31, -25, 31, -36, -25, -16,
					-- layer=1 filter=57 channel=8
					2, 7, 41, -52, -35, 18, -12, -17, 7,
					-- layer=1 filter=57 channel=9
					-37, -9, -7, -5, 2, 20, -20, -30, -14,
					-- layer=1 filter=57 channel=10
					-54, -56, -25, 44, 4, -51, -41, -9, -5,
					-- layer=1 filter=57 channel=11
					25, 46, 27, -38, -7, -35, 32, 17, 27,
					-- layer=1 filter=57 channel=12
					24, 22, 35, -13, 8, -15, -53, 0, -19,
					-- layer=1 filter=57 channel=13
					3, 19, 15, -7, -49, -9, 16, -20, -21,
					-- layer=1 filter=57 channel=14
					-21, -51, 24, 106, 46, 7, -27, 16, -20,
					-- layer=1 filter=57 channel=15
					-59, -71, -14, -4, 8, -36, -17, 23, 52,
					-- layer=1 filter=57 channel=16
					36, 60, 40, -30, 5, 8, -21, 30, -2,
					-- layer=1 filter=57 channel=17
					7, 14, 27, -3, -16, 16, -16, -22, -25,
					-- layer=1 filter=57 channel=18
					34, 38, 1, -38, -58, -58, 36, 10, -22,
					-- layer=1 filter=57 channel=19
					13, 14, -7, -30, -24, -37, 13, 8, -17,
					-- layer=1 filter=57 channel=20
					-27, -77, 0, -15, -41, -48, -56, -8, -10,
					-- layer=1 filter=57 channel=21
					30, 57, 38, 7, -52, 12, 25, -12, 10,
					-- layer=1 filter=57 channel=22
					-53, -51, -20, 51, 31, 37, -9, 33, 33,
					-- layer=1 filter=57 channel=23
					-66, -7, -63, 28, 35, -24, 35, 27, 50,
					-- layer=1 filter=57 channel=24
					11, -6, -2, 11, 1, -22, 2, -9, -34,
					-- layer=1 filter=57 channel=25
					79, 47, 34, -61, -58, -45, 15, 4, -8,
					-- layer=1 filter=57 channel=26
					31, 34, -9, -64, -31, -40, 27, -1, -31,
					-- layer=1 filter=57 channel=27
					-15, -20, -18, -22, 0, -14, -16, -38, -29,
					-- layer=1 filter=57 channel=28
					21, 20, 17, -76, -54, -5, -2, -19, -12,
					-- layer=1 filter=57 channel=29
					24, 23, 7, -47, -32, -16, -16, -19, -21,
					-- layer=1 filter=57 channel=30
					-7, 39, 20, -1, 31, -2, 0, -11, 4,
					-- layer=1 filter=57 channel=31
					-10, -5, 12, -13, -2, 3, -7, -5, -12,
					-- layer=1 filter=57 channel=32
					37, 39, 46, 5, -4, 28, -4, 52, 68,
					-- layer=1 filter=57 channel=33
					12, 5, -16, 0, -22, 9, 19, -15, 7,
					-- layer=1 filter=57 channel=34
					34, 34, 30, 23, 7, -56, 17, 2, 11,
					-- layer=1 filter=57 channel=35
					-27, -12, 11, 9, 9, -36, -47, -32, -45,
					-- layer=1 filter=57 channel=36
					21, -47, 10, -6, -35, -22, -45, 27, -2,
					-- layer=1 filter=57 channel=37
					40, 65, 35, -43, -20, -24, 34, 46, -10,
					-- layer=1 filter=57 channel=38
					-39, -17, 4, 52, 8, -44, -16, -6, -25,
					-- layer=1 filter=57 channel=39
					-63, -50, -52, 61, 0, -52, -2, 32, 30,
					-- layer=1 filter=57 channel=40
					-47, -8, 32, 51, 30, 39, -58, 17, 8,
					-- layer=1 filter=57 channel=41
					22, 21, 40, 19, 20, 0, -50, -36, 29,
					-- layer=1 filter=57 channel=42
					-68, -28, -75, 75, 62, -20, 2, 27, 27,
					-- layer=1 filter=57 channel=43
					43, 42, 25, -18, -80, -20, 17, 17, -20,
					-- layer=1 filter=57 channel=44
					10, 0, 23, -58, -24, -35, -32, 8, 22,
					-- layer=1 filter=57 channel=45
					72, 77, 30, -83, -77, -7, 22, 15, -35,
					-- layer=1 filter=57 channel=46
					38, 51, 44, 7, -28, -5, -13, -22, 13,
					-- layer=1 filter=57 channel=47
					72, 43, 12, -58, -19, -34, 17, 25, -28,
					-- layer=1 filter=57 channel=48
					6, -4, -22, -41, -81, -34, -22, -7, -33,
					-- layer=1 filter=57 channel=49
					-59, -30, -14, 3, 1, -35, -29, 17, 29,
					-- layer=1 filter=57 channel=50
					4, -7, -12, -1, -23, -40, -52, -51, -26,
					-- layer=1 filter=57 channel=51
					6, -25, -27, -9, -30, -33, -27, -26, -30,
					-- layer=1 filter=57 channel=52
					43, 46, 54, 35, 11, -31, 11, 9, 0,
					-- layer=1 filter=57 channel=53
					-27, -67, 43, 3, 3, 47, -47, 6, 15,
					-- layer=1 filter=57 channel=54
					-8, -17, 7, -9, -24, -47, -59, -48, -29,
					-- layer=1 filter=57 channel=55
					23, 62, 52, 28, 13, 27, 46, 51, -15,
					-- layer=1 filter=57 channel=56
					-10, -10, -17, -2, -4, -7, -46, -40, -7,
					-- layer=1 filter=57 channel=57
					11, 3, -8, -31, -7, -7, 16, 15, -43,
					-- layer=1 filter=57 channel=58
					23, 30, -8, -47, -22, -37, 10, 18, -10,
					-- layer=1 filter=57 channel=59
					28, -10, 15, -22, -8, 57, -14, -47, 33,
					-- layer=1 filter=57 channel=60
					-53, -14, 43, 24, 17, 60, -23, 23, 3,
					-- layer=1 filter=57 channel=61
					-37, 7, 26, -22, -30, 32, 0, -21, 32,
					-- layer=1 filter=57 channel=62
					36, 55, 41, -51, -47, 6, 2, -12, 23,
					-- layer=1 filter=57 channel=63
					-50, -58, -47, 42, 50, 42, -31, 10, -4,
					-- layer=1 filter=58 channel=0
					-15, -27, -12, 17, 12, 24, 18, -10, -6,
					-- layer=1 filter=58 channel=1
					15, -9, -18, -7, -14, -4, 3, -8, -53,
					-- layer=1 filter=58 channel=2
					-7, 0, 14, 37, 15, 33, 2, -24, -1,
					-- layer=1 filter=58 channel=3
					-2, -3, 10, -3, -18, -10, -11, -12, 8,
					-- layer=1 filter=58 channel=4
					26, -4, -22, 19, -23, -35, 8, 4, -27,
					-- layer=1 filter=58 channel=5
					17, -16, -19, 12, 4, 9, 14, 16, 3,
					-- layer=1 filter=58 channel=6
					10, 12, 27, -13, 0, 2, -11, 0, 16,
					-- layer=1 filter=58 channel=7
					17, 10, 16, 20, 11, -14, 20, 5, 10,
					-- layer=1 filter=58 channel=8
					0, 2, 9, 28, 11, -15, 36, 11, 4,
					-- layer=1 filter=58 channel=9
					20, 30, 35, 40, 15, 29, 3, 43, 11,
					-- layer=1 filter=58 channel=10
					11, -35, -47, -6, -36, -46, -11, -46, -37,
					-- layer=1 filter=58 channel=11
					-7, 1, -8, -18, -13, -13, -24, 0, 5,
					-- layer=1 filter=58 channel=12
					32, -1, 0, 5, 8, 19, 12, 20, 15,
					-- layer=1 filter=58 channel=13
					-2, 21, 23, -5, 23, 11, 15, 5, 14,
					-- layer=1 filter=58 channel=14
					-30, -9, -5, 7, -9, 30, -7, -15, 2,
					-- layer=1 filter=58 channel=15
					8, -117, -83, -27, -44, -70, -16, -22, -10,
					-- layer=1 filter=58 channel=16
					13, 9, 6, 28, -20, -6, -16, -8, -10,
					-- layer=1 filter=58 channel=17
					11, 26, -2, 2, 7, -6, 20, -10, 0,
					-- layer=1 filter=58 channel=18
					12, -21, -19, -7, -27, -5, -11, -20, 0,
					-- layer=1 filter=58 channel=19
					0, -9, -25, 13, 1, -39, 3, -27, -40,
					-- layer=1 filter=58 channel=20
					29, -48, -56, -20, -52, -58, -17, 0, -22,
					-- layer=1 filter=58 channel=21
					-17, 2, 32, -22, -13, 22, -19, 15, 39,
					-- layer=1 filter=58 channel=22
					2, 34, 55, 40, 27, 56, -4, 24, 7,
					-- layer=1 filter=58 channel=23
					-24, -60, -59, -38, -97, -56, -15, -49, -28,
					-- layer=1 filter=58 channel=24
					-5, 14, -9, 26, 0, -32, 1, -29, -50,
					-- layer=1 filter=58 channel=25
					8, -25, 8, -22, -19, 36, -14, 14, 31,
					-- layer=1 filter=58 channel=26
					11, 12, -28, 26, -9, -31, -2, -16, -6,
					-- layer=1 filter=58 channel=27
					29, 7, -19, 34, -8, -19, 28, 14, -18,
					-- layer=1 filter=58 channel=28
					5, 21, 32, 19, 3, 40, -3, 35, 17,
					-- layer=1 filter=58 channel=29
					5, 0, -19, 18, -15, -27, -10, -9, -10,
					-- layer=1 filter=58 channel=30
					9, -5, -12, 7, -11, 14, 23, 19, -9,
					-- layer=1 filter=58 channel=31
					-6, 10, -2, -9, -7, -14, -13, -8, 5,
					-- layer=1 filter=58 channel=32
					-19, -60, -90, -18, -72, -61, 33, -28, 0,
					-- layer=1 filter=58 channel=33
					1, 22, 2, 16, 3, -35, -10, -12, -33,
					-- layer=1 filter=58 channel=34
					10, -6, -44, -18, 7, 9, -12, 8, 7,
					-- layer=1 filter=58 channel=35
					5, -12, -10, 24, 2, -21, 7, -22, -34,
					-- layer=1 filter=58 channel=36
					-26, -60, -36, -49, -44, -54, -31, -24, -15,
					-- layer=1 filter=58 channel=37
					1, -24, 0, 8, -64, 30, -39, -9, 12,
					-- layer=1 filter=58 channel=38
					-20, -21, -22, -21, -34, -32, -29, -36, -16,
					-- layer=1 filter=58 channel=39
					-40, -125, -69, -74, -117, -85, -47, -67, -19,
					-- layer=1 filter=58 channel=40
					19, 43, 18, 56, 36, 49, 17, 29, -8,
					-- layer=1 filter=58 channel=41
					4, 4, -11, 7, -5, -23, 3, 13, 0,
					-- layer=1 filter=58 channel=42
					-77, -71, -45, -44, -76, -23, -25, -57, 0,
					-- layer=1 filter=58 channel=43
					8, 14, 22, -7, -36, 50, -17, -4, 23,
					-- layer=1 filter=58 channel=44
					31, -65, -86, 34, -63, -34, 6, 9, -20,
					-- layer=1 filter=58 channel=45
					-12, -14, -16, 0, -38, 4, -32, -35, 10,
					-- layer=1 filter=58 channel=46
					-7, -15, -20, 0, -30, -26, 21, -12, -1,
					-- layer=1 filter=58 channel=47
					7, -10, -8, -3, -15, 28, -29, -8, 0,
					-- layer=1 filter=58 channel=48
					-10, -4, -6, -4, 9, 18, -9, 13, -1,
					-- layer=1 filter=58 channel=49
					-4, -125, -84, -42, -68, -64, -6, -44, 16,
					-- layer=1 filter=58 channel=50
					15, 11, 0, 5, -1, 6, 4, 0, -16,
					-- layer=1 filter=58 channel=51
					21, 13, -30, -3, -15, -25, 15, -8, -10,
					-- layer=1 filter=58 channel=52
					3, 0, -10, 0, 34, 57, -29, -58, -32,
					-- layer=1 filter=58 channel=53
					0, 3, 20, 34, -17, 38, 8, -2, -14,
					-- layer=1 filter=58 channel=54
					-13, 5, -8, -2, 8, -20, 21, 19, 10,
					-- layer=1 filter=58 channel=55
					-23, 18, 6, 5, -26, -3, -2, -8, -24,
					-- layer=1 filter=58 channel=56
					15, 21, -27, 13, -2, -5, 10, 3, -3,
					-- layer=1 filter=58 channel=57
					19, 14, -32, 27, 1, -25, -6, 8, -21,
					-- layer=1 filter=58 channel=58
					19, 6, -9, 20, 0, -14, 16, -4, -7,
					-- layer=1 filter=58 channel=59
					-12, 16, 55, -10, -14, 45, -29, 21, 24,
					-- layer=1 filter=58 channel=60
					18, 6, -6, 5, 24, 40, -14, 1, -15,
					-- layer=1 filter=58 channel=61
					64, 53, 85, 77, 47, 90, 35, 56, 70,
					-- layer=1 filter=58 channel=62
					-2, -10, 16, -24, -19, 41, -33, 3, 28,
					-- layer=1 filter=58 channel=63
					11, 5, 23, 21, 26, 32, 14, 39, -3,
					-- layer=1 filter=59 channel=0
					-6, -33, -2, 33, -40, -9, -10, 34, 4,
					-- layer=1 filter=59 channel=1
					-3, 1, -3, -18, 19, -25, -11, 4, -7,
					-- layer=1 filter=59 channel=2
					-52, -59, -36, -9, -11, -25, 14, 15, -39,
					-- layer=1 filter=59 channel=3
					27, 29, -6, 15, -5, 7, 16, -13, -15,
					-- layer=1 filter=59 channel=4
					-12, 13, 0, 11, 0, 10, -1, 22, 28,
					-- layer=1 filter=59 channel=5
					2, 10, 5, 1, 0, 10, 15, -12, 7,
					-- layer=1 filter=59 channel=6
					24, 2, -2, 5, 26, -26, 20, -13, 2,
					-- layer=1 filter=59 channel=7
					-26, -21, -10, -22, -8, 0, -18, 21, 11,
					-- layer=1 filter=59 channel=8
					-26, -12, -9, -28, -8, -22, -11, -8, 17,
					-- layer=1 filter=59 channel=9
					-32, 12, -24, -25, 4, -15, -10, -13, 17,
					-- layer=1 filter=59 channel=10
					9, -2, 15, 9, -15, 17, 8, 8, -26,
					-- layer=1 filter=59 channel=11
					-1, -40, -33, -36, -47, -34, -40, -67, -64,
					-- layer=1 filter=59 channel=12
					16, 2, 17, 1, 7, 19, 6, 0, 6,
					-- layer=1 filter=59 channel=13
					-2, 21, 0, -8, 11, -17, 21, 8, -8,
					-- layer=1 filter=59 channel=14
					-53, -62, -40, -15, -57, -59, -48, -35, -66,
					-- layer=1 filter=59 channel=15
					0, -8, 17, 35, 1, 49, 8, 31, -10,
					-- layer=1 filter=59 channel=16
					-21, 0, -2, -16, 2, 12, -40, -39, -44,
					-- layer=1 filter=59 channel=17
					-30, 20, -19, -24, 13, -14, -13, -9, -16,
					-- layer=1 filter=59 channel=18
					5, 13, -22, 3, -1, -14, -3, -2, 16,
					-- layer=1 filter=59 channel=19
					-29, -7, -10, -2, 0, -9, 6, 11, 27,
					-- layer=1 filter=59 channel=20
					11, 13, -2, 7, -9, 15, 20, 26, -9,
					-- layer=1 filter=59 channel=21
					29, 8, -2, -2, 15, -30, 12, -14, -10,
					-- layer=1 filter=59 channel=22
					-48, -29, -52, -14, -5, -37, -8, -44, -11,
					-- layer=1 filter=59 channel=23
					-28, -16, -1, -23, -10, 21, -19, -23, -54,
					-- layer=1 filter=59 channel=24
					-27, -16, -13, -9, 4, 8, -12, 9, 13,
					-- layer=1 filter=59 channel=25
					10, -14, -7, 11, -10, -38, -11, -2, 4,
					-- layer=1 filter=59 channel=26
					-35, -5, -35, -9, -16, -7, -25, 0, -2,
					-- layer=1 filter=59 channel=27
					-5, -22, -11, 2, -12, -17, -6, -6, 7,
					-- layer=1 filter=59 channel=28
					-6, -9, -25, -4, 0, -24, 7, -27, -21,
					-- layer=1 filter=59 channel=29
					-7, -2, -1, 5, 7, -20, 9, -9, 13,
					-- layer=1 filter=59 channel=30
					12, 8, 22, 0, -2, 7, 7, 2, -4,
					-- layer=1 filter=59 channel=31
					-7, -1, 8, -5, 10, 16, 4, -8, 4,
					-- layer=1 filter=59 channel=32
					-40, 31, -63, -3, 27, -58, -13, -26, -15,
					-- layer=1 filter=59 channel=33
					-33, -36, -10, -24, 1, -24, 3, 10, -6,
					-- layer=1 filter=59 channel=34
					1, -15, -13, -4, -1, -15, -1, 2, -28,
					-- layer=1 filter=59 channel=35
					-31, -23, 0, -14, -21, 0, 18, -17, -8,
					-- layer=1 filter=59 channel=36
					12, 21, 30, -6, 19, 0, 16, 21, -15,
					-- layer=1 filter=59 channel=37
					-8, 25, -6, -8, -38, -40, -3, -10, -3,
					-- layer=1 filter=59 channel=38
					-9, 6, 13, 5, -2, 21, 14, -2, -9,
					-- layer=1 filter=59 channel=39
					3, -18, 12, 14, -4, 26, -22, 16, -21,
					-- layer=1 filter=59 channel=40
					-42, -27, -52, 8, 2, -38, -11, -17, -26,
					-- layer=1 filter=59 channel=41
					21, 17, 35, -4, 20, 4, -10, 5, -18,
					-- layer=1 filter=59 channel=42
					-6, -40, 24, 16, -15, 27, -15, 22, -37,
					-- layer=1 filter=59 channel=43
					19, 22, -19, -3, -8, -19, 36, -15, -6,
					-- layer=1 filter=59 channel=44
					6, 6, 24, 7, 8, 17, 7, 28, 23,
					-- layer=1 filter=59 channel=45
					25, 34, -15, 18, -27, 0, 24, -2, 38,
					-- layer=1 filter=59 channel=46
					-41, -36, -7, -57, -44, -34, -25, -36, -42,
					-- layer=1 filter=59 channel=47
					-10, 7, -5, -2, -8, -36, -9, -27, -11,
					-- layer=1 filter=59 channel=48
					6, 11, 10, -15, 5, 1, -6, 11, 12,
					-- layer=1 filter=59 channel=49
					19, -2, 36, 37, 15, 59, 12, 39, -16,
					-- layer=1 filter=59 channel=50
					16, -8, 24, -3, 19, 11, 12, 21, 13,
					-- layer=1 filter=59 channel=51
					15, -2, -5, 18, 4, 12, 8, 20, 20,
					-- layer=1 filter=59 channel=52
					-6, -19, -25, -43, -58, -60, -8, -60, -40,
					-- layer=1 filter=59 channel=53
					-11, -8, -27, -11, 19, -28, -2, -35, -17,
					-- layer=1 filter=59 channel=54
					6, 2, 16, 0, 5, 14, -7, 18, -5,
					-- layer=1 filter=59 channel=55
					27, 17, 27, 26, -4, 18, 30, 11, 2,
					-- layer=1 filter=59 channel=56
					-7, -25, 2, -6, -16, -6, -4, 20, 7,
					-- layer=1 filter=59 channel=57
					-18, -12, -14, 0, 12, -3, 4, 17, 26,
					-- layer=1 filter=59 channel=58
					-5, 11, 4, -8, 5, -7, 14, 18, 14,
					-- layer=1 filter=59 channel=59
					20, -4, -27, 2, 38, -25, 29, -5, -12,
					-- layer=1 filter=59 channel=60
					-72, -55, -59, -21, -8, -44, -4, -41, -55,
					-- layer=1 filter=59 channel=61
					41, 20, -10, 41, 36, 23, 48, -14, 13,
					-- layer=1 filter=59 channel=62
					31, 23, 0, 5, 28, -15, 9, -16, 0,
					-- layer=1 filter=59 channel=63
					-55, -54, -27, -28, -21, -24, -41, -50, -36,
					-- layer=1 filter=60 channel=0
					-1, 1, -16, 3, -8, 2, -5, -5, -15,
					-- layer=1 filter=60 channel=1
					-19, -7, 3, 0, -5, -21, -1, 4, -21,
					-- layer=1 filter=60 channel=2
					7, -2, -10, -11, -10, 5, -2, -7, -6,
					-- layer=1 filter=60 channel=3
					3, 7, 0, -16, 4, -18, 5, -1, -1,
					-- layer=1 filter=60 channel=4
					-2, -19, -4, 5, -8, -9, -20, -5, -6,
					-- layer=1 filter=60 channel=5
					9, -15, -4, 5, -2, -11, -9, -3, 7,
					-- layer=1 filter=60 channel=6
					-2, -12, 2, -28, -11, 7, 0, -6, -1,
					-- layer=1 filter=60 channel=7
					-8, -15, -6, -9, -7, -1, 0, -15, -6,
					-- layer=1 filter=60 channel=8
					-14, 1, -23, -23, -11, -17, 2, -13, -2,
					-- layer=1 filter=60 channel=9
					-11, 8, -16, -8, 6, -11, 10, -11, -7,
					-- layer=1 filter=60 channel=10
					-8, -13, -14, 0, -8, -6, -6, 3, -14,
					-- layer=1 filter=60 channel=11
					0, 0, -9, 0, 7, 5, 2, 9, -11,
					-- layer=1 filter=60 channel=12
					-4, -7, 9, -12, -4, -11, 7, -15, 0,
					-- layer=1 filter=60 channel=13
					4, 8, -12, -2, 1, -6, -4, -12, -13,
					-- layer=1 filter=60 channel=14
					2, -3, 5, -16, -8, 3, 7, -10, 2,
					-- layer=1 filter=60 channel=15
					-12, 3, -8, -15, -21, -5, -15, -15, -6,
					-- layer=1 filter=60 channel=16
					2, -20, -21, -6, -1, -4, 0, 5, 1,
					-- layer=1 filter=60 channel=17
					3, 4, -3, 2, -8, -2, -1, 6, -1,
					-- layer=1 filter=60 channel=18
					11, -5, -16, -14, -10, -4, -18, -4, 6,
					-- layer=1 filter=60 channel=19
					-21, -10, -19, -13, -8, 3, -11, -10, -4,
					-- layer=1 filter=60 channel=20
					-4, 11, 0, -15, -3, -11, -4, 7, -9,
					-- layer=1 filter=60 channel=21
					-7, -1, -3, -13, -4, -21, 0, 1, -1,
					-- layer=1 filter=60 channel=22
					-2, -2, 1, -14, -3, -15, 15, -19, -3,
					-- layer=1 filter=60 channel=23
					-6, -5, 7, 4, 1, -2, -14, -15, -8,
					-- layer=1 filter=60 channel=24
					-17, -3, 9, -9, -4, 6, -2, -16, -5,
					-- layer=1 filter=60 channel=25
					-4, -12, -1, -23, -4, 0, -2, -4, 1,
					-- layer=1 filter=60 channel=26
					-18, 9, -11, -3, -1, -6, -5, 10, -8,
					-- layer=1 filter=60 channel=27
					-16, 0, 0, -1, -18, 5, 0, 0, -17,
					-- layer=1 filter=60 channel=28
					-7, 3, -10, -27, 0, -9, -4, -9, -1,
					-- layer=1 filter=60 channel=29
					0, -12, 0, 2, 0, -19, -14, 8, -5,
					-- layer=1 filter=60 channel=30
					-12, -6, -6, -7, -15, 0, 9, -6, -15,
					-- layer=1 filter=60 channel=31
					-7, 4, -11, 2, 7, -10, -3, 0, -3,
					-- layer=1 filter=60 channel=32
					12, 15, -8, -13, 14, 8, -11, 1, -3,
					-- layer=1 filter=60 channel=33
					-1, 2, 7, -11, 4, -16, -21, -4, 1,
					-- layer=1 filter=60 channel=34
					-13, -10, -9, -2, 1, -18, 5, 10, 2,
					-- layer=1 filter=60 channel=35
					-18, 11, -6, -2, -12, -6, -11, -13, -2,
					-- layer=1 filter=60 channel=36
					0, 2, 4, -5, -6, 3, -15, -7, -11,
					-- layer=1 filter=60 channel=37
					8, 6, -3, -5, -4, -20, 2, -2, 3,
					-- layer=1 filter=60 channel=38
					11, -11, 0, -10, 8, 0, -1, 7, -2,
					-- layer=1 filter=60 channel=39
					2, -10, 11, -4, 3, -11, -9, -6, -13,
					-- layer=1 filter=60 channel=40
					-3, -5, 7, 4, 10, -17, 11, 9, -7,
					-- layer=1 filter=60 channel=41
					4, -14, 2, -18, -5, -3, -10, -1, 3,
					-- layer=1 filter=60 channel=42
					17, 10, 0, -11, 6, -5, -15, 1, -6,
					-- layer=1 filter=60 channel=43
					-13, 9, 2, -14, -17, 7, -4, 9, -1,
					-- layer=1 filter=60 channel=44
					-13, -3, 0, -18, -13, 3, 10, 0, 12,
					-- layer=1 filter=60 channel=45
					4, -2, -19, -25, -1, -8, 15, 11, 2,
					-- layer=1 filter=60 channel=46
					20, 5, -3, 15, 12, 4, 7, 5, 9,
					-- layer=1 filter=60 channel=47
					-4, -5, 2, -9, 1, -7, 0, -1, -14,
					-- layer=1 filter=60 channel=48
					-13, -13, 9, -10, -4, 1, -9, -12, -15,
					-- layer=1 filter=60 channel=49
					-9, -3, 10, -7, 0, 18, -11, -10, -7,
					-- layer=1 filter=60 channel=50
					-17, -16, 9, 7, -15, -15, 3, -6, 5,
					-- layer=1 filter=60 channel=51
					-4, 3, -13, 7, -1, -13, -7, -18, -14,
					-- layer=1 filter=60 channel=52
					0, -2, 6, -21, -10, -18, 2, -1, 4,
					-- layer=1 filter=60 channel=53
					-15, -8, -10, -2, -5, 2, 12, 4, 1,
					-- layer=1 filter=60 channel=54
					7, -3, 2, -6, 4, -11, -7, -1, 6,
					-- layer=1 filter=60 channel=55
					14, -3, -15, 9, 7, -14, 10, 4, 3,
					-- layer=1 filter=60 channel=56
					-12, -1, 7, -17, -23, 0, -11, -24, -19,
					-- layer=1 filter=60 channel=57
					-18, -16, 7, 2, -17, 2, 0, 3, -9,
					-- layer=1 filter=60 channel=58
					-6, -4, -15, -5, -19, -20, -11, 8, 10,
					-- layer=1 filter=60 channel=59
					-21, 10, 2, 3, -10, -13, -21, -17, -16,
					-- layer=1 filter=60 channel=60
					1, 12, -14, -16, -13, 1, -2, -7, -15,
					-- layer=1 filter=60 channel=61
					3, -6, 1, -5, -3, -20, 1, -9, -9,
					-- layer=1 filter=60 channel=62
					-4, -8, -7, -2, -12, -8, -5, 3, -19,
					-- layer=1 filter=60 channel=63
					16, 11, -3, -11, 13, 4, -8, 5, 4,
					-- layer=1 filter=61 channel=0
					14, 14, -37, 22, 28, 18, 37, 57, 3,
					-- layer=1 filter=61 channel=1
					24, -1, -12, -3, -25, 14, 1, -12, -22,
					-- layer=1 filter=61 channel=2
					8, 20, -49, -1, -3, 5, 13, 40, 4,
					-- layer=1 filter=61 channel=3
					-11, 2, 27, -35, -22, 25, 3, -25, 3,
					-- layer=1 filter=61 channel=4
					3, -9, -2, 11, 28, 6, 12, 5, 5,
					-- layer=1 filter=61 channel=5
					-41, -15, 24, 10, -5, 18, 10, 15, 27,
					-- layer=1 filter=61 channel=6
					-11, 1, 34, 12, 1, -39, -16, -7, -7,
					-- layer=1 filter=61 channel=7
					8, -25, -23, 37, 14, -23, 13, 29, -9,
					-- layer=1 filter=61 channel=8
					0, 7, -30, 36, 15, -26, 9, 0, -22,
					-- layer=1 filter=61 channel=9
					12, -5, 10, 18, -22, 12, 0, -22, -31,
					-- layer=1 filter=61 channel=10
					1, 18, -6, -40, 29, -1, 8, -26, 0,
					-- layer=1 filter=61 channel=11
					-14, 40, -2, 20, 15, -16, -14, 12, -2,
					-- layer=1 filter=61 channel=12
					-4, 10, 3, 25, -8, 7, -13, -6, 21,
					-- layer=1 filter=61 channel=13
					-4, -6, -4, -30, -4, 8, -39, -19, 0,
					-- layer=1 filter=61 channel=14
					26, 36, -24, 15, 31, 16, 53, 51, 10,
					-- layer=1 filter=61 channel=15
					10, 45, 29, 45, 32, -6, 18, -1, -1,
					-- layer=1 filter=61 channel=16
					-2, -12, -10, 12, 33, -23, 21, -7, -37,
					-- layer=1 filter=61 channel=17
					0, -24, -21, -20, -10, -19, -22, -17, -40,
					-- layer=1 filter=61 channel=18
					-59, -6, 21, -18, -28, -39, -31, -25, -9,
					-- layer=1 filter=61 channel=19
					-27, -20, -18, -32, -17, 4, -21, -8, -4,
					-- layer=1 filter=61 channel=20
					-13, 27, 6, -6, 23, 1, 5, -31, 14,
					-- layer=1 filter=61 channel=21
					-14, -20, 12, 15, -2, -37, -23, -39, -29,
					-- layer=1 filter=61 channel=22
					-2, 25, -44, 26, 21, 50, 45, 1, -6,
					-- layer=1 filter=61 channel=23
					-5, 4, -2, 12, -5, -30, -24, -5, -26,
					-- layer=1 filter=61 channel=24
					-1, -37, -20, -25, -5, -2, -31, -24, -12,
					-- layer=1 filter=61 channel=25
					-13, 34, 20, 3, -3, -53, -5, -14, 22,
					-- layer=1 filter=61 channel=26
					-14, 9, 11, 10, 34, -20, -18, -13, -5,
					-- layer=1 filter=61 channel=27
					3, -5, -17, -5, 3, -10, -3, -13, -4,
					-- layer=1 filter=61 channel=28
					-17, 0, 4, 1, -7, -6, -35, -21, -5,
					-- layer=1 filter=61 channel=29
					11, -9, -8, 2, 27, -24, 10, -12, -4,
					-- layer=1 filter=61 channel=30
					-8, -13, 11, 14, -13, 14, -20, 0, 11,
					-- layer=1 filter=61 channel=31
					11, -15, 4, -4, 0, 2, -13, 0, -8,
					-- layer=1 filter=61 channel=32
					-8, 26, -41, 52, 27, -31, -9, -74, 41,
					-- layer=1 filter=61 channel=33
					8, -35, 2, -21, -6, -4, -19, -2, -11,
					-- layer=1 filter=61 channel=34
					30, 58, 16, 90, 59, -32, -23, 18, 15,
					-- layer=1 filter=61 channel=35
					21, -38, -65, -26, 0, 1, -12, -14, -23,
					-- layer=1 filter=61 channel=36
					-19, 21, 15, -24, 38, 0, -13, -15, 10,
					-- layer=1 filter=61 channel=37
					-31, 28, 23, 29, 38, -36, 10, -24, 19,
					-- layer=1 filter=61 channel=38
					-5, 2, -8, -42, 2, -12, -32, -30, 3,
					-- layer=1 filter=61 channel=39
					-17, 27, 8, -22, 17, -15, 1, -1, -7,
					-- layer=1 filter=61 channel=40
					3, -1, -37, 0, -22, 28, 10, 15, -33,
					-- layer=1 filter=61 channel=41
					-4, -3, 17, -18, -21, 16, -18, 2, 23,
					-- layer=1 filter=61 channel=42
					-7, -5, -29, -1, 21, -17, -2, 29, -26,
					-- layer=1 filter=61 channel=43
					-47, 2, 23, 19, 29, -34, -51, -30, -15,
					-- layer=1 filter=61 channel=44
					17, 27, 22, 20, 26, -28, -5, -16, 17,
					-- layer=1 filter=61 channel=45
					-37, 35, 20, -11, 32, -30, -1, -39, 4,
					-- layer=1 filter=61 channel=46
					0, 1, 20, 21, 24, 19, 29, 34, 6,
					-- layer=1 filter=61 channel=47
					-11, 57, 27, 26, 37, -5, -14, -14, 19,
					-- layer=1 filter=61 channel=48
					-9, -4, 22, -4, 18, 6, -16, 0, 2,
					-- layer=1 filter=61 channel=49
					25, 57, 37, 32, 34, -7, 5, -6, -3,
					-- layer=1 filter=61 channel=50
					-26, -24, 5, -22, -22, 11, -18, 0, 0,
					-- layer=1 filter=61 channel=51
					-1, -26, 11, -31, -9, 5, -23, -20, 11,
					-- layer=1 filter=61 channel=52
					16, 65, 16, 108, 58, -25, 32, 65, 15,
					-- layer=1 filter=61 channel=53
					2, 31, 16, 12, -6, 31, 28, 10, 11,
					-- layer=1 filter=61 channel=54
					-11, -22, -5, -14, -22, 9, -31, -19, -14,
					-- layer=1 filter=61 channel=55
					24, 1, 0, -19, -13, 24, 3, 3, -17,
					-- layer=1 filter=61 channel=56
					20, 23, -15, 15, 12, 8, 42, 12, 3,
					-- layer=1 filter=61 channel=57
					-5, -8, -11, -18, 34, 3, -1, 13, -9,
					-- layer=1 filter=61 channel=58
					-43, 5, 5, -1, -2, 0, -11, 2, 39,
					-- layer=1 filter=61 channel=59
					14, 18, 34, -1, 12, 6, -11, -33, -36,
					-- layer=1 filter=61 channel=60
					10, 62, 16, 121, 63, 35, 66, 64, 22,
					-- layer=1 filter=61 channel=61
					16, 50, 31, 45, 5, 30, 16, -13, -28,
					-- layer=1 filter=61 channel=62
					-18, -1, 34, 10, 6, -30, -36, -44, -35,
					-- layer=1 filter=61 channel=63
					-18, 0, -29, -7, 5, 14, 21, -10, -1,
					-- layer=1 filter=62 channel=0
					-31, -14, -16, 17, 22, -44, 12, -30, 10,
					-- layer=1 filter=62 channel=1
					-26, 8, -24, -1, 4, 11, -20, 17, -11,
					-- layer=1 filter=62 channel=2
					-16, 24, 29, 23, 43, -6, 15, 14, 54,
					-- layer=1 filter=62 channel=3
					-37, -31, -11, -26, -31, -35, -1, 21, -11,
					-- layer=1 filter=62 channel=4
					16, 21, 2, 4, -2, 14, 6, 5, 5,
					-- layer=1 filter=62 channel=5
					-11, -2, -27, -6, -20, -33, -26, -26, -30,
					-- layer=1 filter=62 channel=6
					1, 27, -20, 6, 9, -10, -20, 10, -3,
					-- layer=1 filter=62 channel=7
					-11, -24, 5, 1, 4, 2, 22, 17, -6,
					-- layer=1 filter=62 channel=8
					-4, 7, -6, 14, 5, 13, 7, -4, -10,
					-- layer=1 filter=62 channel=9
					-60, 22, -15, -41, 5, -4, -22, -12, 9,
					-- layer=1 filter=62 channel=10
					-6, 7, 15, 13, 9, 1, -6, -14, 20,
					-- layer=1 filter=62 channel=11
					15, 6, -41, 22, -14, -19, -19, 12, -46,
					-- layer=1 filter=62 channel=12
					2, 0, 4, -26, -8, 7, 13, -11, -16,
					-- layer=1 filter=62 channel=13
					-20, -17, -8, -32, 2, -7, -31, -23, -30,
					-- layer=1 filter=62 channel=14
					-9, 16, 45, 3, 33, -6, 6, 10, 30,
					-- layer=1 filter=62 channel=15
					-15, 6, 22, 14, -13, 46, -4, 64, 25,
					-- layer=1 filter=62 channel=16
					15, 12, -14, 5, -4, -12, 22, 13, 14,
					-- layer=1 filter=62 channel=17
					-49, 2, -8, 5, 4, -2, -16, 25, 11,
					-- layer=1 filter=62 channel=18
					26, 16, -16, 26, 22, -10, -30, -29, -10,
					-- layer=1 filter=62 channel=19
					15, 8, 0, 27, 3, -1, -13, -14, -5,
					-- layer=1 filter=62 channel=20
					8, 25, 14, 1, -19, 36, -5, 20, 22,
					-- layer=1 filter=62 channel=21
					-27, -21, -29, 6, 19, 7, -19, -17, 16,
					-- layer=1 filter=62 channel=22
					-33, -10, 30, -12, 0, -7, -32, -11, 31,
					-- layer=1 filter=62 channel=23
					-33, -7, 8, -27, -59, -54, -23, -55, -59,
					-- layer=1 filter=62 channel=24
					5, 2, -7, 24, 4, -9, -24, -8, -6,
					-- layer=1 filter=62 channel=25
					14, 33, -15, 42, 13, 4, 17, 30, 22,
					-- layer=1 filter=62 channel=26
					28, 17, -7, 14, -2, 5, 7, 2, -9,
					-- layer=1 filter=62 channel=27
					-9, 6, 5, 18, 24, -1, -5, 9, 23,
					-- layer=1 filter=62 channel=28
					-48, -27, -41, -19, -28, 2, 21, -4, 15,
					-- layer=1 filter=62 channel=29
					2, -3, -24, 9, -3, 14, -23, 8, 10,
					-- layer=1 filter=62 channel=30
					18, 7, 29, -24, -39, -27, -45, -66, -48,
					-- layer=1 filter=62 channel=31
					-8, -10, -4, 0, -2, 0, -12, 10, 6,
					-- layer=1 filter=62 channel=32
					-38, 19, -44, -10, -9, 14, -34, 6, 23,
					-- layer=1 filter=62 channel=33
					-4, 23, 5, 11, -10, -16, -6, -4, 16,
					-- layer=1 filter=62 channel=34
					55, 48, 8, 33, 14, 59, -11, 9, 9,
					-- layer=1 filter=62 channel=35
					-43, -10, 2, 15, 4, -2, 24, 23, 31,
					-- layer=1 filter=62 channel=36
					-12, 8, -19, -44, -34, 1, 0, -1, 21,
					-- layer=1 filter=62 channel=37
					30, 43, 30, 40, 15, 26, 35, 9, 42,
					-- layer=1 filter=62 channel=38
					-2, 6, -3, -3, 1, -23, -11, -35, -7,
					-- layer=1 filter=62 channel=39
					-16, -13, 10, -13, -27, -29, -24, -19, -5,
					-- layer=1 filter=62 channel=40
					-45, 22, 26, -27, 35, 16, -25, 0, 29,
					-- layer=1 filter=62 channel=41
					18, 10, 24, 11, -4, -7, -8, -16, 4,
					-- layer=1 filter=62 channel=42
					-23, -27, 31, 18, 2, -61, 32, -28, -3,
					-- layer=1 filter=62 channel=43
					2, -7, -18, 42, 11, -8, 6, 6, 29,
					-- layer=1 filter=62 channel=44
					33, 33, 28, 7, -16, 40, -6, 4, 10,
					-- layer=1 filter=62 channel=45
					-19, 10, -20, 38, -7, -16, 9, -17, 16,
					-- layer=1 filter=62 channel=46
					68, 43, 72, 2, -8, 18, -40, -31, -4,
					-- layer=1 filter=62 channel=47
					42, 23, 5, 39, 31, 19, 2, 34, 16,
					-- layer=1 filter=62 channel=48
					0, -8, -6, -52, -48, -13, -59, -61, -50,
					-- layer=1 filter=62 channel=49
					-18, 2, 10, 12, 3, 13, 6, 61, 30,
					-- layer=1 filter=62 channel=50
					-10, -37, -20, -36, -57, -48, -26, -39, -28,
					-- layer=1 filter=62 channel=51
					7, 6, 9, 8, 12, -8, 0, -4, -1,
					-- layer=1 filter=62 channel=52
					21, 43, -29, 69, 17, 59, 2, 17, -26,
					-- layer=1 filter=62 channel=53
					-77, -24, -3, -32, 31, 41, -3, 29, 36,
					-- layer=1 filter=62 channel=54
					13, 4, 17, -33, -40, -18, -25, -48, -38,
					-- layer=1 filter=62 channel=55
					21, 0, -15, -6, 28, -7, -39, -90, -42,
					-- layer=1 filter=62 channel=56
					14, 0, -2, 31, 28, 7, -4, 21, 0,
					-- layer=1 filter=62 channel=57
					24, 34, 7, 8, 4, -5, -17, -10, 12,
					-- layer=1 filter=62 channel=58
					12, -2, -23, -4, 7, 16, -18, -24, 2,
					-- layer=1 filter=62 channel=59
					-41, -27, -57, -18, 30, 11, -16, 23, 9,
					-- layer=1 filter=62 channel=60
					51, 81, 59, 26, 58, 39, 23, -31, -32,
					-- layer=1 filter=62 channel=61
					-89, -18, 13, -25, 16, 28, -4, 30, 47,
					-- layer=1 filter=62 channel=62
					-28, -31, -49, 11, -8, -25, -36, -9, -7,
					-- layer=1 filter=62 channel=63
					-51, -28, 3, -89, -56, -64, -86, -102, -61,
					-- layer=1 filter=63 channel=0
					17, -11, -22, -3, 0, 14, 3, -28, -22,
					-- layer=1 filter=63 channel=1
					9, -20, 0, 0, -7, 2, -4, 4, -13,
					-- layer=1 filter=63 channel=2
					-18, -58, -41, -88, -64, -20, -72, -108, -92,
					-- layer=1 filter=63 channel=3
					-17, -4, -2, 7, -9, 7, -8, 2, -2,
					-- layer=1 filter=63 channel=4
					25, 24, 7, 29, -5, 15, 30, 15, 29,
					-- layer=1 filter=63 channel=5
					-19, -6, 4, 12, 7, 13, 4, 45, 21,
					-- layer=1 filter=63 channel=6
					27, -16, -9, 31, 12, 3, 7, 3, 3,
					-- layer=1 filter=63 channel=7
					18, -6, -28, 1, -10, -13, -2, -21, -29,
					-- layer=1 filter=63 channel=8
					18, 2, -10, 7, 15, -25, 20, 15, 0,
					-- layer=1 filter=63 channel=9
					-24, -18, -14, 5, -3, 7, 23, -8, 13,
					-- layer=1 filter=63 channel=10
					-20, 0, 6, -15, -5, 24, -11, -6, 6,
					-- layer=1 filter=63 channel=11
					-12, -31, -42, 1, -5, -45, -30, -40, -50,
					-- layer=1 filter=63 channel=12
					5, 3, -7, 13, 3, 7, 1, 10, -4,
					-- layer=1 filter=63 channel=13
					-12, 4, 10, 21, 22, 26, 16, 9, 19,
					-- layer=1 filter=63 channel=14
					-88, -94, -90, -154, -115, -107, -111, -134, -154,
					-- layer=1 filter=63 channel=15
					-89, -29, -6, -53, -48, -4, -52, -23, -22,
					-- layer=1 filter=63 channel=16
					-1, -3, -27, 1, -9, -13, 4, -7, -29,
					-- layer=1 filter=63 channel=17
					-23, -12, -32, -28, 2, -27, -4, 3, 17,
					-- layer=1 filter=63 channel=18
					22, -1, -8, 0, -3, 3, 18, 17, 25,
					-- layer=1 filter=63 channel=19
					-1, -13, 14, 5, -9, -2, 22, 12, 22,
					-- layer=1 filter=63 channel=20
					-49, -14, 31, -32, -13, 44, -9, 6, 33,
					-- layer=1 filter=63 channel=21
					-13, -21, -36, 10, -6, -37, 18, -26, -5,
					-- layer=1 filter=63 channel=22
					-24, -27, -39, -28, -29, -32, -38, -52, -21,
					-- layer=1 filter=63 channel=23
					-3, -6, 16, -40, 4, 16, -5, 6, 11,
					-- layer=1 filter=63 channel=24
					-6, -11, 8, -15, -7, 12, 14, -2, 16,
					-- layer=1 filter=63 channel=25
					-11, -53, -29, -1, -13, -19, -19, -7, -16,
					-- layer=1 filter=63 channel=26
					3, 14, -9, 14, -6, 1, -3, 25, 14,
					-- layer=1 filter=63 channel=27
					3, -16, -5, 0, -4, -4, 8, 9, -14,
					-- layer=1 filter=63 channel=28
					-1, -20, -33, 22, 12, -35, -3, -2, -9,
					-- layer=1 filter=63 channel=29
					-33, -9, -29, -17, -6, -9, 2, 12, 17,
					-- layer=1 filter=63 channel=30
					-14, -6, 9, -2, 16, 16, 5, 36, 21,
					-- layer=1 filter=63 channel=31
					0, -13, 2, -11, -3, 4, 4, 15, -1,
					-- layer=1 filter=63 channel=32
					-55, -44, 24, 13, -19, 6, -72, -8, -17,
					-- layer=1 filter=63 channel=33
					-14, -20, -9, -23, -15, -10, -8, -16, 11,
					-- layer=1 filter=63 channel=34
					-42, -80, -27, -10, -22, 3, -20, -5, -35,
					-- layer=1 filter=63 channel=35
					-17, -14, -14, -17, -10, -20, -6, -42, -13,
					-- layer=1 filter=63 channel=36
					-26, 19, 46, 7, 32, 45, 12, 18, 12,
					-- layer=1 filter=63 channel=37
					-33, -39, -59, -33, -28, -42, -7, -17, -10,
					-- layer=1 filter=63 channel=38
					-19, 11, 5, 2, 0, 14, -8, -3, 19,
					-- layer=1 filter=63 channel=39
					-54, 14, 29, -47, -4, 8, 2, 8, 22,
					-- layer=1 filter=63 channel=40
					-17, -26, -66, -53, -55, -58, -27, -59, -60,
					-- layer=1 filter=63 channel=41
					-11, 4, 0, 0, -10, 21, 23, 7, 26,
					-- layer=1 filter=63 channel=42
					-54, -18, -44, -87, -58, -18, -37, -73, -54,
					-- layer=1 filter=63 channel=43
					-52, -73, -57, -42, -18, -43, 0, -28, -25,
					-- layer=1 filter=63 channel=44
					-19, 17, 23, -5, -2, 41, -13, 14, 24,
					-- layer=1 filter=63 channel=45
					-9, -16, -17, -8, -1, -29, -3, -8, -5,
					-- layer=1 filter=63 channel=46
					-16, 14, 25, 37, 20, 18, 25, 40, 50,
					-- layer=1 filter=63 channel=47
					-22, -26, -17, -15, -35, 5, -4, -1, 0,
					-- layer=1 filter=63 channel=48
					-8, 28, 48, 24, 20, 47, 34, 39, 44,
					-- layer=1 filter=63 channel=49
					-45, -19, 16, -51, -45, 30, -47, -24, -19,
					-- layer=1 filter=63 channel=50
					7, 23, 35, 16, 5, 40, 5, 45, 36,
					-- layer=1 filter=63 channel=51
					-11, 8, 2, 9, 13, 16, 10, 20, 36,
					-- layer=1 filter=63 channel=52
					-46, -91, -90, 7, -5, -11, -58, -99, -102,
					-- layer=1 filter=63 channel=53
					-17, -67, -135, -53, -73, -123, -45, -107, -103,
					-- layer=1 filter=63 channel=54
					-8, 24, 35, -11, 21, 35, 18, 43, 39,
					-- layer=1 filter=63 channel=55
					-6, 9, 20, 4, 26, 11, -22, -1, -18,
					-- layer=1 filter=63 channel=56
					30, 9, 6, 4, 20, 16, 12, 1, 8,
					-- layer=1 filter=63 channel=57
					9, 3, 12, -5, -8, 19, -5, 0, 12,
					-- layer=1 filter=63 channel=58
					-33, -9, -8, 5, 21, 30, 0, 12, 42,
					-- layer=1 filter=63 channel=59
					-16, -29, -45, -4, -39, -60, -10, -36, -51,
					-- layer=1 filter=63 channel=60
					-102, -96, -86, -141, -52, -46, -33, -61, -46,
					-- layer=1 filter=63 channel=61
					-28, -82, -86, -72, -53, -110, -44, -97, -73,
					-- layer=1 filter=63 channel=62
					-14, -49, -41, 10, -2, -18, -1, -30, 7,
					-- layer=1 filter=63 channel=63
					-31, -36, -17, -23, -24, -9, 5, -11, 3,
					-- layer=1 filter=64 channel=0
					-13, -5, -1, 10, 29, -3, 19, 27, 37,
					-- layer=1 filter=64 channel=1
					2, 0, 11, -2, 0, 0, -26, -23, -12,
					-- layer=1 filter=64 channel=2
					-6, 5, 28, 15, 46, -19, 36, 12, 49,
					-- layer=1 filter=64 channel=3
					40, 42, 36, 4, 14, -7, -14, -18, -6,
					-- layer=1 filter=64 channel=4
					13, -8, 8, -22, -4, -16, -34, -15, -28,
					-- layer=1 filter=64 channel=5
					8, 7, 0, 16, 20, 2, -4, -2, -9,
					-- layer=1 filter=64 channel=6
					6, -3, -18, -18, 19, 15, -2, -10, -42,
					-- layer=1 filter=64 channel=7
					20, 13, 30, -7, 3, 8, -32, 4, -30,
					-- layer=1 filter=64 channel=8
					11, 13, 22, -10, -3, 0, -6, -22, -17,
					-- layer=1 filter=64 channel=9
					-9, 29, 26, 4, 6, 9, -26, -28, -24,
					-- layer=1 filter=64 channel=10
					26, 17, 6, 19, 33, -21, 11, -18, 7,
					-- layer=1 filter=64 channel=11
					-3, -32, -1, -12, -20, 4, 9, 20, 20,
					-- layer=1 filter=64 channel=12
					9, 16, -15, -1, -7, 9, -16, 8, -1,
					-- layer=1 filter=64 channel=13
					9, -15, 0, -12, -3, -33, -25, -28, -33,
					-- layer=1 filter=64 channel=14
					23, 23, 37, 49, 45, 19, 67, 37, 81,
					-- layer=1 filter=64 channel=15
					42, 17, 24, 44, 36, 50, -2, 6, 3,
					-- layer=1 filter=64 channel=16
					-10, 7, -7, -10, -8, -6, 18, 11, -4,
					-- layer=1 filter=64 channel=17
					14, 29, 28, -13, 11, -8, -37, -23, -8,
					-- layer=1 filter=64 channel=18
					-13, 17, -20, -2, -4, 17, 12, -6, -29,
					-- layer=1 filter=64 channel=19
					-21, -4, -24, -23, -23, -4, -18, -28, -24,
					-- layer=1 filter=64 channel=20
					33, 7, 7, 22, 18, 18, 0, 7, 1,
					-- layer=1 filter=64 channel=21
					-20, -9, -20, 16, 38, 11, 6, 9, -21,
					-- layer=1 filter=64 channel=22
					16, 12, 10, 30, 43, 21, 10, -9, -4,
					-- layer=1 filter=64 channel=23
					40, 29, 19, 6, 34, 36, -10, 2, 8,
					-- layer=1 filter=64 channel=24
					-1, 9, -3, -7, -3, -43, -32, -32, -16,
					-- layer=1 filter=64 channel=25
					-11, -14, -45, 15, 18, -9, 18, 9, -8,
					-- layer=1 filter=64 channel=26
					-1, 10, -14, -16, -22, -9, -28, -41, -34,
					-- layer=1 filter=64 channel=27
					2, 10, 19, -5, -9, -1, -29, -24, -18,
					-- layer=1 filter=64 channel=28
					16, -10, -4, -2, -11, 6, -7, -8, -11,
					-- layer=1 filter=64 channel=29
					24, 9, 2, 1, 9, -18, -19, -29, -31,
					-- layer=1 filter=64 channel=30
					7, 5, 1, 2, -3, 0, -16, -5, -25,
					-- layer=1 filter=64 channel=31
					-16, 0, -1, 12, -4, 5, 8, -4, -6,
					-- layer=1 filter=64 channel=32
					20, 47, -20, -6, 6, 8, 16, -16, -39,
					-- layer=1 filter=64 channel=33
					10, 4, 20, 0, -10, -23, -44, -35, -23,
					-- layer=1 filter=64 channel=34
					0, 5, -11, 47, 21, 26, 0, 0, -21,
					-- layer=1 filter=64 channel=35
					31, 37, 20, 1, 22, -35, -10, -5, 16,
					-- layer=1 filter=64 channel=36
					12, 11, 15, 21, 14, -2, -25, -18, -13,
					-- layer=1 filter=64 channel=37
					-31, -43, -35, 22, 26, 8, 16, 13, -8,
					-- layer=1 filter=64 channel=38
					35, 3, 23, 11, -7, -21, -19, -13, -7,
					-- layer=1 filter=64 channel=39
					39, 31, 21, 24, 18, 32, 1, -24, -8,
					-- layer=1 filter=64 channel=40
					-5, 22, 23, 20, 31, 5, 0, 21, 4,
					-- layer=1 filter=64 channel=41
					12, 19, 7, 8, -12, 3, -25, -17, -19,
					-- layer=1 filter=64 channel=42
					11, 7, 21, 32, 49, 31, 36, 18, 30,
					-- layer=1 filter=64 channel=43
					-18, -19, -24, -2, 12, 10, 34, 1, -27,
					-- layer=1 filter=64 channel=44
					11, 12, 0, 33, 39, 26, -4, -1, 1,
					-- layer=1 filter=64 channel=45
					17, 10, -3, 8, 19, 21, 19, -8, -31,
					-- layer=1 filter=64 channel=46
					75, 67, 64, 23, 33, 18, 0, -13, -45,
					-- layer=1 filter=64 channel=47
					-22, -35, -45, 15, 22, 13, 26, 15, -2,
					-- layer=1 filter=64 channel=48
					-5, -2, -2, 6, 4, -13, -23, -18, -24,
					-- layer=1 filter=64 channel=49
					30, 2, 9, 31, 31, 19, -12, -3, 6,
					-- layer=1 filter=64 channel=50
					-5, -10, -3, -9, -6, -9, -24, -30, -31,
					-- layer=1 filter=64 channel=51
					-18, -2, -8, -18, -15, -13, -28, -36, -37,
					-- layer=1 filter=64 channel=52
					47, 64, -8, 36, 34, 22, 14, 18, -13,
					-- layer=1 filter=64 channel=53
					-7, 22, 47, 14, 35, 47, 29, 1, 23,
					-- layer=1 filter=64 channel=54
					10, 18, -1, 12, -3, -3, -8, -13, -27,
					-- layer=1 filter=64 channel=55
					43, 35, 19, 3, 12, 8, 0, -3, -8,
					-- layer=1 filter=64 channel=56
					21, 4, 1, -10, -3, 3, -5, -23, -8,
					-- layer=1 filter=64 channel=57
					-10, 5, -7, -9, -25, -19, -18, -37, -10,
					-- layer=1 filter=64 channel=58
					-3, -23, -1, 8, 11, 5, -7, -20, -35,
					-- layer=1 filter=64 channel=59
					-16, 22, 15, 8, 29, 19, 9, -22, 1,
					-- layer=1 filter=64 channel=60
					115, 77, 44, 108, 85, 96, 77, 49, 43,
					-- layer=1 filter=64 channel=61
					-7, 21, 26, 35, 42, 24, -9, -15, -24,
					-- layer=1 filter=64 channel=62
					4, -1, -6, -6, 33, 11, 34, -2, -14,
					-- layer=1 filter=64 channel=63
					3, 22, 13, -5, 32, 14, -8, -10, -42,
					-- layer=1 filter=65 channel=0
					-7, -15, -16, -4, -64, -40, -30, 0, -42,
					-- layer=1 filter=65 channel=1
					17, -15, -11, 4, 6, -15, -16, 17, 0,
					-- layer=1 filter=65 channel=2
					23, 23, 4, 0, -24, -37, -32, -63, -53,
					-- layer=1 filter=65 channel=3
					-21, -31, -48, 5, -23, -6, 0, -41, -40,
					-- layer=1 filter=65 channel=4
					16, 4, 5, -19, 7, 20, 11, -5, 9,
					-- layer=1 filter=65 channel=5
					-4, 11, -19, 25, 8, 3, 35, 23, 28,
					-- layer=1 filter=65 channel=6
					4, -11, -36, 36, 8, 23, -11, 37, 13,
					-- layer=1 filter=65 channel=7
					10, 13, 5, 2, 6, 8, 9, -4, 18,
					-- layer=1 filter=65 channel=8
					3, -14, -11, 0, 7, 10, -2, 19, -8,
					-- layer=1 filter=65 channel=9
					31, 31, -19, 50, 14, -3, 21, 9, -32,
					-- layer=1 filter=65 channel=10
					0, -31, -1, -15, -8, -15, 6, -14, -23,
					-- layer=1 filter=65 channel=11
					-13, -8, 26, -23, -11, -6, -28, 6, 31,
					-- layer=1 filter=65 channel=12
					-18, -28, -51, -14, 12, -16, 0, -8, -4,
					-- layer=1 filter=65 channel=13
					-14, -2, -15, 1, -20, -23, 0, -16, 0,
					-- layer=1 filter=65 channel=14
					-20, -5, -23, -9, -20, -44, -70, -114, -106,
					-- layer=1 filter=65 channel=15
					-134, -82, -84, -130, -110, -92, -124, -117, -122,
					-- layer=1 filter=65 channel=16
					-13, -26, 12, -18, 18, 29, -12, 3, 14,
					-- layer=1 filter=65 channel=17
					42, 2, -16, 28, 6, 0, 9, 29, -8,
					-- layer=1 filter=65 channel=18
					2, 2, 0, 34, 33, 23, 19, 33, 39,
					-- layer=1 filter=65 channel=19
					21, -5, 14, 25, 19, 31, 30, 40, 25,
					-- layer=1 filter=65 channel=20
					-57, -49, -13, -44, -25, -33, -35, -17, 2,
					-- layer=1 filter=65 channel=21
					7, -19, -48, 42, 1, -1, 32, 10, 13,
					-- layer=1 filter=65 channel=22
					61, 45, 8, 38, 12, -29, -6, -72, -76,
					-- layer=1 filter=65 channel=23
					-57, -28, -14, -51, -11, -16, -23, -31, -39,
					-- layer=1 filter=65 channel=24
					11, -10, 14, 24, 13, 28, 0, 2, 7,
					-- layer=1 filter=65 channel=25
					-40, -3, -14, 10, 8, 18, 5, 30, 30,
					-- layer=1 filter=65 channel=26
					7, -11, 0, 12, 0, 15, -15, 17, 26,
					-- layer=1 filter=65 channel=27
					30, 26, 16, 21, 15, 11, 6, 16, 20,
					-- layer=1 filter=65 channel=28
					0, -8, -13, 5, -5, -11, 2, -3, 7,
					-- layer=1 filter=65 channel=29
					-10, -7, 4, -2, 15, 16, -8, 15, 32,
					-- layer=1 filter=65 channel=30
					-8, -3, 7, 11, 8, -20, 13, -26, -12,
					-- layer=1 filter=65 channel=31
					-3, -6, 5, -15, 6, 3, -3, 9, -13,
					-- layer=1 filter=65 channel=32
					-44, -92, -78, -85, -57, -3, -62, -15, -21,
					-- layer=1 filter=65 channel=33
					18, 24, -11, 12, 10, 2, 10, 33, 36,
					-- layer=1 filter=65 channel=34
					-76, -1, -19, -22, 15, 15, -16, 7, 43,
					-- layer=1 filter=65 channel=35
					25, 7, 4, 7, 9, -15, 6, -12, -15,
					-- layer=1 filter=65 channel=36
					-100, -87, -69, -86, -49, -40, -47, 0, -53,
					-- layer=1 filter=65 channel=37
					-46, 2, 6, -24, 23, 21, -24, 8, 27,
					-- layer=1 filter=65 channel=38
					-31, -38, -18, -14, -31, -24, 5, -19, -29,
					-- layer=1 filter=65 channel=39
					-52, -93, -60, -67, -69, -17, -69, -63, -66,
					-- layer=1 filter=65 channel=40
					33, 28, -16, 26, 0, -45, -19, -71, -65,
					-- layer=1 filter=65 channel=41
					7, 3, -19, 7, 8, -21, 10, -7, -5,
					-- layer=1 filter=65 channel=42
					-47, -14, -44, -47, -68, -22, -40, -118, -114,
					-- layer=1 filter=65 channel=43
					-38, -19, -5, 12, 27, 1, 9, 43, 29,
					-- layer=1 filter=65 channel=44
					-89, -21, 14, -60, 7, -1, -57, -13, 16,
					-- layer=1 filter=65 channel=45
					-14, -26, -3, 16, 21, 15, -5, 21, 15,
					-- layer=1 filter=65 channel=46
					27, 52, 45, 25, 45, 27, 55, 33, 19,
					-- layer=1 filter=65 channel=47
					-30, -18, 8, -11, 19, 9, -26, 0, 34,
					-- layer=1 filter=65 channel=48
					18, -8, -23, 10, 7, 14, -2, 15, 24,
					-- layer=1 filter=65 channel=49
					-150, -138, -95, -139, -131, -92, -109, -114, -127,
					-- layer=1 filter=65 channel=50
					-9, 5, -33, 23, 0, 4, 34, 9, -12,
					-- layer=1 filter=65 channel=51
					15, 0, 2, 17, 0, 25, 21, 30, 24,
					-- layer=1 filter=65 channel=52
					-40, -3, 15, -16, 22, -11, -55, -10, 34,
					-- layer=1 filter=65 channel=53
					45, 62, -64, 30, -30, -83, -16, -82, -110,
					-- layer=1 filter=65 channel=54
					-2, 0, -14, 17, 19, 1, 7, 25, -6,
					-- layer=1 filter=65 channel=55
					-34, -39, -32, -14, -11, -34, -21, -32, -30,
					-- layer=1 filter=65 channel=56
					-9, -5, -12, -2, 3, 9, -16, 0, -16,
					-- layer=1 filter=65 channel=57
					3, -13, 3, 9, 24, -4, 0, 1, 25,
					-- layer=1 filter=65 channel=58
					18, -5, 8, 23, 9, 8, 25, 8, 24,
					-- layer=1 filter=65 channel=59
					5, 11, -96, 35, -25, -75, -12, -4, -65,
					-- layer=1 filter=65 channel=60
					-56, -30, 24, -6, -23, -23, -24, 22, 59,
					-- layer=1 filter=65 channel=61
					21, -9, -83, 20, -43, -77, -15, -48, -89,
					-- layer=1 filter=65 channel=62
					7, -28, -55, 41, 1, -11, 2, 36, 5,
					-- layer=1 filter=65 channel=63
					36, 45, -24, 41, 11, -35, -1, -47, -52,
					-- layer=1 filter=66 channel=0
					-26, -26, 2, -30, -41, -53, -45, -45, 1,
					-- layer=1 filter=66 channel=1
					-32, -17, 8, -19, -27, -29, -35, -2, -6,
					-- layer=1 filter=66 channel=2
					21, 10, 32, -9, 21, 8, 18, 8, 0,
					-- layer=1 filter=66 channel=3
					-9, -27, -7, -23, -11, -14, -8, -27, -14,
					-- layer=1 filter=66 channel=4
					-1, -15, -13, -20, -17, -2, -23, -16, -8,
					-- layer=1 filter=66 channel=5
					-5, 8, -50, 16, -36, 13, -16, 5, -25,
					-- layer=1 filter=66 channel=6
					-19, -7, -16, 24, -32, 21, -6, 12, -7,
					-- layer=1 filter=66 channel=7
					-17, 15, 28, -23, 1, -18, -2, -20, -7,
					-- layer=1 filter=66 channel=8
					-22, -17, 12, -16, -3, -2, -10, -8, -14,
					-- layer=1 filter=66 channel=9
					-12, -22, 1, 11, 16, -10, 2, 5, 0,
					-- layer=1 filter=66 channel=10
					13, 2, -2, -19, -18, -4, 11, -12, 7,
					-- layer=1 filter=66 channel=11
					-27, -3, -11, -45, -36, -34, -71, -23, -41,
					-- layer=1 filter=66 channel=12
					-31, 16, -25, 12, 2, -1, 0, 12, -3,
					-- layer=1 filter=66 channel=13
					-15, -15, 0, -3, -2, -19, 23, 2, 19,
					-- layer=1 filter=66 channel=14
					-24, 7, 9, -11, 8, -8, 0, 1, -3,
					-- layer=1 filter=66 channel=15
					34, 42, 16, 8, 17, 43, -5, 7, 15,
					-- layer=1 filter=66 channel=16
					-22, 17, 4, -24, -28, -14, -34, -42, -28,
					-- layer=1 filter=66 channel=17
					12, -22, 2, 8, 31, -9, 12, 4, 8,
					-- layer=1 filter=66 channel=18
					-12, -16, -27, 18, -40, 14, -27, 26, -31,
					-- layer=1 filter=66 channel=19
					-28, -17, -9, -15, -9, 0, -18, -21, -1,
					-- layer=1 filter=66 channel=20
					15, -12, -9, -5, 32, -5, 8, 5, 32,
					-- layer=1 filter=66 channel=21
					0, -18, 4, 8, -9, 6, 5, 10, 2,
					-- layer=1 filter=66 channel=22
					-10, -46, 38, -9, 3, -23, -13, -38, -11,
					-- layer=1 filter=66 channel=23
					-32, -14, -19, -33, -9, 0, -42, -1, 9,
					-- layer=1 filter=66 channel=24
					-29, -14, -17, -7, -26, -22, -5, -28, -13,
					-- layer=1 filter=66 channel=25
					8, 25, -7, 9, -15, 22, -10, 35, 8,
					-- layer=1 filter=66 channel=26
					-47, -47, -43, -22, -38, -6, -39, -12, 4,
					-- layer=1 filter=66 channel=27
					-4, 17, 16, 3, -3, 16, 5, 3, 7,
					-- layer=1 filter=66 channel=28
					6, 3, 18, 17, 17, 12, 14, 1, 8,
					-- layer=1 filter=66 channel=29
					-2, 15, -17, 4, 13, -17, 8, -5, 13,
					-- layer=1 filter=66 channel=30
					-33, -28, -38, -16, -27, 1, -11, -15, -26,
					-- layer=1 filter=66 channel=31
					3, 4, -6, -6, -9, 7, 9, 12, 11,
					-- layer=1 filter=66 channel=32
					-17, 16, -31, 0, -12, 22, -38, -5, 15,
					-- layer=1 filter=66 channel=33
					-17, -24, -20, -8, 18, -27, -10, -10, 0,
					-- layer=1 filter=66 channel=34
					1, 29, 34, 40, -7, 60, 8, 67, 30,
					-- layer=1 filter=66 channel=35
					9, 5, 40, -24, 29, -5, 22, 0, 10,
					-- layer=1 filter=66 channel=36
					-5, -10, -42, -6, -2, -23, 9, 2, -1,
					-- layer=1 filter=66 channel=37
					-10, 41, 19, 23, 16, 0, -15, 11, 40,
					-- layer=1 filter=66 channel=38
					4, -30, -18, -13, 15, -15, 4, -23, -1,
					-- layer=1 filter=66 channel=39
					10, -12, 8, -11, 15, 37, -4, -12, 0,
					-- layer=1 filter=66 channel=40
					-11, -30, 18, 4, 26, -32, 16, 2, 2,
					-- layer=1 filter=66 channel=41
					-9, -24, -45, 0, 0, -15, -11, -4, -3,
					-- layer=1 filter=66 channel=42
					9, -8, 22, -13, 14, 23, -7, 3, 12,
					-- layer=1 filter=66 channel=43
					0, 27, 18, 28, -15, 22, -1, 27, 8,
					-- layer=1 filter=66 channel=44
					-16, 5, 3, -11, 11, -1, -35, 10, 16,
					-- layer=1 filter=66 channel=45
					-5, 13, -15, 36, -21, 14, 0, 2, 25,
					-- layer=1 filter=66 channel=46
					-122, -78, -74, -132, -94, -105, -134, -87, -101,
					-- layer=1 filter=66 channel=47
					-25, 37, -15, 21, 7, 35, -1, 33, 29,
					-- layer=1 filter=66 channel=48
					4, 1, -5, 15, 1, -3, 8, -4, 0,
					-- layer=1 filter=66 channel=49
					38, 2, 3, 3, 27, 50, -20, 13, 18,
					-- layer=1 filter=66 channel=50
					14, 0, -26, -1, 17, 17, 23, 4, -12,
					-- layer=1 filter=66 channel=51
					2, 0, 3, 9, 21, 7, 14, 28, 6,
					-- layer=1 filter=66 channel=52
					6, 20, 36, -8, -48, 23, -9, -1, 3,
					-- layer=1 filter=66 channel=53
					5, -20, 27, -25, 7, -19, 8, -18, -44,
					-- layer=1 filter=66 channel=54
					-18, -3, -36, 9, 2, 0, 17, 18, -2,
					-- layer=1 filter=66 channel=55
					-51, -60, -32, -53, -34, -59, -48, -38, -5,
					-- layer=1 filter=66 channel=56
					-19, -8, 18, -66, -27, -16, -27, -27, -19,
					-- layer=1 filter=66 channel=57
					-18, -8, 0, -23, -8, -10, -8, -8, 12,
					-- layer=1 filter=66 channel=58
					0, 13, -21, -15, -19, -1, 1, 9, 8,
					-- layer=1 filter=66 channel=59
					11, -2, 26, 24, 3, 32, 6, 59, -31,
					-- layer=1 filter=66 channel=60
					-37, -68, -54, -36, -28, -57, -27, -34, 13,
					-- layer=1 filter=66 channel=61
					40, 16, 44, 26, 45, 24, 35, 16, 11,
					-- layer=1 filter=66 channel=62
					4, 5, 5, 24, -32, 22, -12, 25, -11,
					-- layer=1 filter=66 channel=63
					-34, -66, 6, -43, 0, -32, -38, -39, -31,
					-- layer=1 filter=67 channel=0
					-23, -35, -24, 10, 8, 21, 21, 4, -5,
					-- layer=1 filter=67 channel=1
					14, -6, -25, -24, -32, 0, -14, -32, 24,
					-- layer=1 filter=67 channel=2
					-17, -31, -26, 26, 18, -1, -44, -14, -34,
					-- layer=1 filter=67 channel=3
					-54, -53, -33, -76, -76, -51, -36, -27, -17,
					-- layer=1 filter=67 channel=4
					-32, 11, 21, -29, -6, 10, 9, 1, 3,
					-- layer=1 filter=67 channel=5
					-5, -11, -47, -30, -20, -33, 35, 42, 22,
					-- layer=1 filter=67 channel=6
					0, -28, -33, -6, 22, 14, 15, 39, 28,
					-- layer=1 filter=67 channel=7
					6, 0, -11, 10, -24, 8, 1, -5, -8,
					-- layer=1 filter=67 channel=8
					9, 3, 11, -1, 0, 12, -4, -9, 27,
					-- layer=1 filter=67 channel=9
					-3, -8, 6, -17, -27, -4, -26, -14, 26,
					-- layer=1 filter=67 channel=10
					4, -2, 34, -22, -12, -2, -16, 2, 28,
					-- layer=1 filter=67 channel=11
					-11, 1, -9, 14, 19, 15, 37, 13, -29,
					-- layer=1 filter=67 channel=12
					-22, -23, -45, -16, -34, -26, 0, 1, -18,
					-- layer=1 filter=67 channel=13
					-52, -47, -42, -27, -20, -16, 15, -18, -12,
					-- layer=1 filter=67 channel=14
					-9, -25, -29, 25, 33, 46, -26, -5, -16,
					-- layer=1 filter=67 channel=15
					4, 33, 52, -6, 15, 40, 22, 5, -39,
					-- layer=1 filter=67 channel=16
					-7, 12, -32, 15, 13, -11, 50, 25, -3,
					-- layer=1 filter=67 channel=17
					-3, -12, 2, -50, -29, -19, -32, 5, 21,
					-- layer=1 filter=67 channel=18
					-8, -32, -33, -6, 25, 12, 17, 25, 16,
					-- layer=1 filter=67 channel=19
					-24, -31, -37, -50, -29, -12, 12, 15, 26,
					-- layer=1 filter=67 channel=20
					2, 34, 45, -25, 8, -20, 0, 9, -34,
					-- layer=1 filter=67 channel=21
					-13, -16, 1, 23, 18, 24, -13, 17, 38,
					-- layer=1 filter=67 channel=22
					12, -12, -16, 26, 29, 14, 39, -5, -20,
					-- layer=1 filter=67 channel=23
					25, 44, 13, 5, -6, -5, -6, -19, 0,
					-- layer=1 filter=67 channel=24
					-41, -35, -5, -42, -51, -8, 6, 12, 23,
					-- layer=1 filter=67 channel=25
					-81, -16, -59, 21, 28, 11, 26, 38, 2,
					-- layer=1 filter=67 channel=26
					-14, -18, -36, 8, 39, 6, 33, 11, -16,
					-- layer=1 filter=67 channel=27
					9, -13, 1, -19, 0, -7, 2, -6, 19,
					-- layer=1 filter=67 channel=28
					-17, -26, -23, -10, -8, -29, -20, 1, -2,
					-- layer=1 filter=67 channel=29
					-1, -21, -24, -12, -9, 5, 0, 0, -9,
					-- layer=1 filter=67 channel=30
					26, -17, -35, -10, -8, -27, 43, 7, -20,
					-- layer=1 filter=67 channel=31
					12, -2, 11, 7, 0, -13, 13, 5, 2,
					-- layer=1 filter=67 channel=32
					22, 64, 2, 21, 35, 18, -7, 17, -18,
					-- layer=1 filter=67 channel=33
					0, -18, -5, 2, -22, 4, 15, 22, 46,
					-- layer=1 filter=67 channel=34
					-56, 5, -46, 89, 81, 62, 41, 25, -3,
					-- layer=1 filter=67 channel=35
					-19, -45, -40, -2, -18, -12, -39, -28, -35,
					-- layer=1 filter=67 channel=36
					-3, 11, 13, -30, -24, -30, -10, -32, -29,
					-- layer=1 filter=67 channel=37
					-51, -63, -73, 74, 58, 29, 52, 46, 25,
					-- layer=1 filter=67 channel=38
					-18, -3, -14, -35, -21, 2, -25, -25, -19,
					-- layer=1 filter=67 channel=39
					6, 32, 28, -35, 5, 1, -36, -38, -11,
					-- layer=1 filter=67 channel=40
					5, -11, -9, 30, 39, 16, -5, -6, -26,
					-- layer=1 filter=67 channel=41
					-10, -6, -29, -44, -49, -39, 0, -17, -26,
					-- layer=1 filter=67 channel=42
					-5, 13, 15, 37, 33, 69, -15, 18, -10,
					-- layer=1 filter=67 channel=43
					-28, -41, -44, 22, 56, 46, -2, 25, 41,
					-- layer=1 filter=67 channel=44
					-22, 27, 31, 55, 62, 24, 25, 29, 10,
					-- layer=1 filter=67 channel=45
					-22, -74, -60, 8, 26, 41, 11, 55, 48,
					-- layer=1 filter=67 channel=46
					0, 2, -23, 41, 4, -26, 111, 62, 66,
					-- layer=1 filter=67 channel=47
					-59, -31, -61, 47, 38, 13, 52, 53, 7,
					-- layer=1 filter=67 channel=48
					-27, -30, -17, -10, -1, -12, 8, 26, -2,
					-- layer=1 filter=67 channel=49
					-5, 46, 44, -18, -17, -2, -20, -2, -16,
					-- layer=1 filter=67 channel=50
					-8, -8, -45, -25, -48, -61, 17, 0, -18,
					-- layer=1 filter=67 channel=51
					-27, -24, -3, -12, -25, -27, 0, 16, 8,
					-- layer=1 filter=67 channel=52
					-65, -58, -80, 69, 75, 60, 43, 28, 5,
					-- layer=1 filter=67 channel=53
					0, -30, 41, -19, -24, 42, -24, -25, 34,
					-- layer=1 filter=67 channel=54
					-4, -25, -28, -34, -30, -56, 21, -8, 0,
					-- layer=1 filter=67 channel=55
					-33, -51, -72, -23, -14, -17, -9, -52, -58,
					-- layer=1 filter=67 channel=56
					-2, -4, 12, 3, -11, -28, -25, -16, -13,
					-- layer=1 filter=67 channel=57
					-36, -10, -17, -12, -3, -11, 17, 4, -8,
					-- layer=1 filter=67 channel=58
					-67, -56, -72, -9, -2, 0, 24, 18, -8,
					-- layer=1 filter=67 channel=59
					27, -11, 24, -35, -8, 10, -42, -13, 51,
					-- layer=1 filter=67 channel=60
					-19, 0, -51, 79, 81, 84, 15, 40, 25,
					-- layer=1 filter=67 channel=61
					39, 0, 69, -27, -44, -9, -59, -31, 12,
					-- layer=1 filter=67 channel=62
					-23, -20, 13, -11, 11, 30, -2, 20, 61,
					-- layer=1 filter=67 channel=63
					11, -6, -11, 6, 13, -14, 57, 22, -17,
					-- layer=1 filter=68 channel=0
					-13, -21, 4, -1, 20, -17, 29, -11, -13,
					-- layer=1 filter=68 channel=1
					-3, 5, -3, 4, -3, -19, -2, -12, 14,
					-- layer=1 filter=68 channel=2
					10, -35, -8, 17, -6, 4, 41, 32, 12,
					-- layer=1 filter=68 channel=3
					-16, -3, 9, 20, 0, -15, -8, -15, -13,
					-- layer=1 filter=68 channel=4
					8, 0, 10, -19, 15, 0, 11, 17, 5,
					-- layer=1 filter=68 channel=5
					-15, 0, -4, 6, -14, 7, -9, -13, -12,
					-- layer=1 filter=68 channel=6
					-14, 5, 22, -51, -26, -19, -3, -24, 10,
					-- layer=1 filter=68 channel=7
					38, 25, 19, -12, 10, -2, -18, -15, -39,
					-- layer=1 filter=68 channel=8
					5, 10, 28, -15, 0, -18, -25, -11, -5,
					-- layer=1 filter=68 channel=9
					-14, 2, 6, 18, 7, 26, 10, -8, 23,
					-- layer=1 filter=68 channel=10
					5, -16, -9, -13, -13, -12, 27, 6, -16,
					-- layer=1 filter=68 channel=11
					-22, 33, 25, -32, -19, -6, 21, 27, 23,
					-- layer=1 filter=68 channel=12
					-4, -26, -16, -25, -24, 3, -28, -31, -25,
					-- layer=1 filter=68 channel=13
					13, 3, -12, -7, -1, -19, -24, -29, -15,
					-- layer=1 filter=68 channel=14
					7, -25, -19, 23, 19, 17, 92, 71, 58,
					-- layer=1 filter=68 channel=15
					21, 23, 13, 20, 48, 13, 46, 48, 34,
					-- layer=1 filter=68 channel=16
					12, 29, 21, -18, -25, -14, -17, -6, -39,
					-- layer=1 filter=68 channel=17
					-22, 29, 19, 5, 23, 8, -14, -28, -9,
					-- layer=1 filter=68 channel=18
					-16, -32, -11, -43, -38, -12, -38, -13, -43,
					-- layer=1 filter=68 channel=19
					-24, -12, 0, -15, -18, 0, -39, -33, -31,
					-- layer=1 filter=68 channel=20
					10, -3, -17, 7, 3, -11, 3, 29, -5,
					-- layer=1 filter=68 channel=21
					-36, -19, -5, -12, -11, -15, 8, 0, 20,
					-- layer=1 filter=68 channel=22
					-10, -35, -18, 35, -7, 7, 10, 45, 57,
					-- layer=1 filter=68 channel=23
					-45, -18, -11, 11, 36, 26, 26, 36, 46,
					-- layer=1 filter=68 channel=24
					-8, 7, 0, -9, -7, -6, -21, -21, -26,
					-- layer=1 filter=68 channel=25
					-10, -37, -20, -40, -82, -39, 34, 9, -32,
					-- layer=1 filter=68 channel=26
					8, -5, -18, -16, -42, -26, -31, -30, -70,
					-- layer=1 filter=68 channel=27
					16, 24, 25, -10, 5, 3, -32, -30, -22,
					-- layer=1 filter=68 channel=28
					9, 23, 42, -25, -13, -12, 2, -3, -16,
					-- layer=1 filter=68 channel=29
					28, 23, 21, 1, -13, 2, -13, -17, -36,
					-- layer=1 filter=68 channel=30
					-23, 17, 16, 22, 0, 12, -19, 17, -20,
					-- layer=1 filter=68 channel=31
					-7, 12, -8, 10, 4, 8, -8, 7, 10,
					-- layer=1 filter=68 channel=32
					17, 18, -1, 53, 23, 2, 73, 55, -21,
					-- layer=1 filter=68 channel=33
					17, 31, -23, -10, 6, -15, -17, -11, -16,
					-- layer=1 filter=68 channel=34
					-23, -25, -25, -31, -38, -47, 32, 42, -12,
					-- layer=1 filter=68 channel=35
					6, 1, -1, 0, -10, -14, 7, -3, -26,
					-- layer=1 filter=68 channel=36
					21, -18, -18, 10, 8, -2, 13, 26, 9,
					-- layer=1 filter=68 channel=37
					11, -27, -6, -80, -84, -88, -2, 7, -15,
					-- layer=1 filter=68 channel=38
					11, 4, 31, 2, 35, 10, 11, 13, 0,
					-- layer=1 filter=68 channel=39
					-5, 4, -14, 41, 60, 10, 43, 51, 38,
					-- layer=1 filter=68 channel=40
					-37, -20, 2, 25, 18, 0, 6, 44, 39,
					-- layer=1 filter=68 channel=41
					-20, -8, -21, 13, 2, 4, -26, -12, -21,
					-- layer=1 filter=68 channel=42
					-6, -20, 26, 6, 27, 12, 38, 45, 28,
					-- layer=1 filter=68 channel=43
					5, -29, 22, -50, -23, -73, 3, 10, -43,
					-- layer=1 filter=68 channel=44
					-6, -2, 22, -3, -9, 9, 2, 50, 23,
					-- layer=1 filter=68 channel=45
					25, -13, 23, -53, -28, -59, 13, -11, -28,
					-- layer=1 filter=68 channel=46
					23, 24, 12, 54, 34, 31, -13, -11, -5,
					-- layer=1 filter=68 channel=47
					8, -33, 5, -72, -69, -44, -10, -13, -49,
					-- layer=1 filter=68 channel=48
					24, -2, 4, 3, 17, 18, -9, -7, -19,
					-- layer=1 filter=68 channel=49
					-7, -5, 11, 21, 27, -7, 39, 31, 43,
					-- layer=1 filter=68 channel=50
					6, -8, -17, 12, 23, 14, -1, -4, 2,
					-- layer=1 filter=68 channel=51
					-8, 0, 11, -20, -12, -8, -9, -24, -3,
					-- layer=1 filter=68 channel=52
					46, 36, 60, 39, 15, -23, 36, 28, -12,
					-- layer=1 filter=68 channel=53
					-53, -36, 11, -19, -50, -5, 1, 16, 40,
					-- layer=1 filter=68 channel=54
					4, -14, 1, -3, 5, 23, -21, 4, -2,
					-- layer=1 filter=68 channel=55
					7, 8, 29, 49, 18, 16, -5, 15, -26,
					-- layer=1 filter=68 channel=56
					23, 9, -7, 12, 11, -18, 9, -1, -42,
					-- layer=1 filter=68 channel=57
					10, -7, -8, 5, -7, -10, -7, -9, -36,
					-- layer=1 filter=68 channel=58
					13, 0, 2, -9, -9, -23, -37, -46, -54,
					-- layer=1 filter=68 channel=59
					-56, -25, -9, -23, -7, 4, 30, 6, 11,
					-- layer=1 filter=68 channel=60
					14, 18, 72, 107, 31, 61, 111, 113, 116,
					-- layer=1 filter=68 channel=61
					-44, 0, 13, 22, 12, -4, 35, 22, 48,
					-- layer=1 filter=68 channel=62
					-6, -12, 19, -39, -17, -36, 34, -4, 21,
					-- layer=1 filter=68 channel=63
					-8, -21, -6, 33, 27, 32, 3, 20, 10,
					-- layer=1 filter=69 channel=0
					20, 39, 55, 10, -15, -16, -25, -31, 19,
					-- layer=1 filter=69 channel=1
					-23, 3, -6, -8, -7, -17, -7, -20, -2,
					-- layer=1 filter=69 channel=2
					39, 31, 28, 38, 13, -11, 21, 15, 53,
					-- layer=1 filter=69 channel=3
					-32, -27, -15, -26, -15, -5, -31, -19, 7,
					-- layer=1 filter=69 channel=4
					-2, -11, -18, -22, -21, -10, -26, -23, -24,
					-- layer=1 filter=69 channel=5
					7, 28, 1, 8, -10, 24, -3, 21, 17,
					-- layer=1 filter=69 channel=6
					-19, -11, 8, 24, -33, 12, -2, -16, -6,
					-- layer=1 filter=69 channel=7
					30, 25, 40, -21, -14, 7, -33, -28, -33,
					-- layer=1 filter=69 channel=8
					-4, 9, 3, -18, -18, -18, -19, -40, -25,
					-- layer=1 filter=69 channel=9
					1, 6, 37, 13, -6, 24, 15, 6, 15,
					-- layer=1 filter=69 channel=10
					-13, -13, -9, -12, -1, -23, 16, -12, -24,
					-- layer=1 filter=69 channel=11
					-33, -45, -15, -37, -36, -38, -17, -17, 12,
					-- layer=1 filter=69 channel=12
					-4, -26, -23, 4, -2, -11, -20, 6, 7,
					-- layer=1 filter=69 channel=13
					7, 8, 3, 0, 12, -8, 14, 20, 2,
					-- layer=1 filter=69 channel=14
					32, 30, 5, 36, 7, 1, 27, 21, 25,
					-- layer=1 filter=69 channel=15
					-51, -101, -72, -61, -70, -37, -30, -24, -8,
					-- layer=1 filter=69 channel=16
					-15, -44, -34, 0, -23, -40, -51, -32, -5,
					-- layer=1 filter=69 channel=17
					-4, 10, -2, 10, -1, -8, 12, 15, 5,
					-- layer=1 filter=69 channel=18
					-7, 6, -4, 33, -15, 10, 8, 1, -5,
					-- layer=1 filter=69 channel=19
					-16, -22, -2, 20, -3, 0, 14, -3, 11,
					-- layer=1 filter=69 channel=20
					-44, -23, -25, -45, -25, -26, 2, 5, 5,
					-- layer=1 filter=69 channel=21
					3, -31, 20, 7, -5, 3, 0, -10, 6,
					-- layer=1 filter=69 channel=22
					-25, -12, 7, 0, -16, -39, -5, 10, 40,
					-- layer=1 filter=69 channel=23
					-29, -49, -18, -51, -26, 0, 4, -53, -29,
					-- layer=1 filter=69 channel=24
					-4, -6, 3, 12, -4, -7, -7, 5, -2,
					-- layer=1 filter=69 channel=25
					5, 18, 12, 43, -3, -2, 10, 15, 17,
					-- layer=1 filter=69 channel=26
					-46, -41, -32, -35, -46, -21, -21, -40, -13,
					-- layer=1 filter=69 channel=27
					14, 4, 26, -1, -1, 8, -3, 4, -12,
					-- layer=1 filter=69 channel=28
					10, -12, -1, -3, 11, 11, -8, 18, 16,
					-- layer=1 filter=69 channel=29
					-24, -5, 5, 4, 11, -24, -13, -4, -5,
					-- layer=1 filter=69 channel=30
					-12, -13, 1, 2, -6, -15, -1, 6, -5,
					-- layer=1 filter=69 channel=31
					12, -2, 9, -2, 2, 0, 15, 0, -12,
					-- layer=1 filter=69 channel=32
					-109, -68, -65, -21, -65, -52, -11, 0, 5,
					-- layer=1 filter=69 channel=33
					5, -1, -15, 13, 3, -19, 10, 15, 3,
					-- layer=1 filter=69 channel=34
					11, 1, 3, -4, -3, 23, 46, 40, 14,
					-- layer=1 filter=69 channel=35
					9, -2, 16, -8, 5, 0, 14, 2, 14,
					-- layer=1 filter=69 channel=36
					-42, -30, -55, -24, -33, -37, 22, 7, 2,
					-- layer=1 filter=69 channel=37
					32, 13, 17, 63, 17, 18, 7, 12, 46,
					-- layer=1 filter=69 channel=38
					-31, -16, -17, -24, -23, -28, 7, 9, 21,
					-- layer=1 filter=69 channel=39
					-25, -65, -56, -51, -64, -46, -11, -62, -17,
					-- layer=1 filter=69 channel=40
					-12, -5, 29, 12, 2, -13, -4, 0, 50,
					-- layer=1 filter=69 channel=41
					-20, -13, -19, 11, -2, 6, -11, -5, 3,
					-- layer=1 filter=69 channel=42
					38, 0, 24, 28, -29, -7, 36, -37, 6,
					-- layer=1 filter=69 channel=43
					12, 6, 0, 37, -4, 24, 43, 8, 28,
					-- layer=1 filter=69 channel=44
					-38, -42, -31, -24, -13, -8, -10, 17, 21,
					-- layer=1 filter=69 channel=45
					6, 8, 33, 69, -9, 14, 22, 15, 45,
					-- layer=1 filter=69 channel=46
					-34, -28, -3, -35, -32, -61, -53, -30, -15,
					-- layer=1 filter=69 channel=47
					25, 30, -6, 52, -3, 31, 5, 33, 36,
					-- layer=1 filter=69 channel=48
					3, 5, 18, 17, 20, -2, 30, 2, 8,
					-- layer=1 filter=69 channel=49
					-74, -117, -117, -71, -93, -52, -36, -44, -42,
					-- layer=1 filter=69 channel=50
					21, 8, -12, 19, 2, 14, 32, 13, 23,
					-- layer=1 filter=69 channel=51
					2, 22, 15, 29, 15, 17, 20, 29, 4,
					-- layer=1 filter=69 channel=52
					-10, 7, 34, -24, -22, -21, 19, 24, 21,
					-- layer=1 filter=69 channel=53
					-94, -89, -9, -41, -94, -19, -33, -3, 8,
					-- layer=1 filter=69 channel=54
					2, -2, -12, 1, 2, 19, 28, 27, 24,
					-- layer=1 filter=69 channel=55
					-46, -16, -15, -4, 3, -14, -15, 11, -1,
					-- layer=1 filter=69 channel=56
					-36, 11, -3, -27, -13, -19, -42, -51, -41,
					-- layer=1 filter=69 channel=57
					-2, -21, -15, -5, -15, -16, -16, -16, -3,
					-- layer=1 filter=69 channel=58
					12, -1, 7, -4, 18, 12, 23, 17, 0,
					-- layer=1 filter=69 channel=59
					-86, -36, -39, -9, -89, -2, 2, -27, 16,
					-- layer=1 filter=69 channel=60
					22, 26, 42, -43, 41, 3, 27, 48, 38,
					-- layer=1 filter=69 channel=61
					-50, -95, -26, -16, -63, -46, -9, -23, 1,
					-- layer=1 filter=69 channel=62
					-17, -12, 5, 41, -13, 9, 28, -13, 22,
					-- layer=1 filter=69 channel=63
					-11, 9, 33, 0, -17, -25, -11, -11, 24,
					-- layer=1 filter=70 channel=0
					-6, -20, -6, 20, 39, 28, 31, -4, 23,
					-- layer=1 filter=70 channel=1
					-26, -22, -16, -38, 29, -10, -17, -33, -46,
					-- layer=1 filter=70 channel=2
					-7, -16, -12, 1, 43, -20, 22, -19, -8,
					-- layer=1 filter=70 channel=3
					-8, -26, -34, -10, -16, -49, -22, -33, -54,
					-- layer=1 filter=70 channel=4
					12, 28, 6, 12, 10, -11, 6, 0, 29,
					-- layer=1 filter=70 channel=5
					30, -11, 9, 32, -4, -1, 6, 12, -6,
					-- layer=1 filter=70 channel=6
					6, -33, 6, 4, -22, 25, 3, 3, -36,
					-- layer=1 filter=70 channel=7
					-7, 5, 9, -8, 18, -6, -3, -6, 8,
					-- layer=1 filter=70 channel=8
					11, 0, 16, -16, -15, 15, -3, -3, -1,
					-- layer=1 filter=70 channel=9
					12, 30, 30, 18, 28, -21, 19, 3, -21,
					-- layer=1 filter=70 channel=10
					32, -9, -1, 16, 10, -25, -50, -45, -7,
					-- layer=1 filter=70 channel=11
					16, 26, 17, 28, 23, 39, 18, 30, 10,
					-- layer=1 filter=70 channel=12
					7, -5, -22, 25, -23, 9, -8, 5, -2,
					-- layer=1 filter=70 channel=13
					5, -1, -15, -5, -15, -33, -7, -18, -32,
					-- layer=1 filter=70 channel=14
					13, -7, 14, 29, 51, -4, 38, 4, -5,
					-- layer=1 filter=70 channel=15
					23, 0, -2, 46, 8, 0, 31, 58, 34,
					-- layer=1 filter=70 channel=16
					40, 16, 11, 41, 26, 22, 28, 22, 23,
					-- layer=1 filter=70 channel=17
					-4, 12, -26, 3, 8, -34, 9, -11, -45,
					-- layer=1 filter=70 channel=18
					2, -37, -26, -21, -31, 0, -29, -15, -63,
					-- layer=1 filter=70 channel=19
					-12, 2, -24, -27, -18, -47, -38, -24, -23,
					-- layer=1 filter=70 channel=20
					-8, -2, -28, -2, -18, -9, 0, -5, 10,
					-- layer=1 filter=70 channel=21
					-12, -59, 5, -14, 21, -18, 10, -3, -44,
					-- layer=1 filter=70 channel=22
					12, 24, 30, 12, 73, 18, 38, 40, 15,
					-- layer=1 filter=70 channel=23
					52, 4, 45, 42, 6, 3, 21, 26, -2,
					-- layer=1 filter=70 channel=24
					-25, 12, -11, 0, -18, -35, -57, -74, -39,
					-- layer=1 filter=70 channel=25
					-9, -23, -51, 14, -19, 16, 8, 15, -9,
					-- layer=1 filter=70 channel=26
					0, -8, -10, 20, -28, 0, -20, -23, -31,
					-- layer=1 filter=70 channel=27
					-9, -23, 15, -24, 0, 0, -1, -8, -10,
					-- layer=1 filter=70 channel=28
					0, -17, -4, -25, -33, -37, 3, -26, -40,
					-- layer=1 filter=70 channel=29
					8, -8, -6, -6, -32, -8, -15, -8, -15,
					-- layer=1 filter=70 channel=30
					7, 15, 23, 21, 4, 8, 3, 3, -9,
					-- layer=1 filter=70 channel=31
					-13, -4, 2, 9, 0, 6, 4, 3, -8,
					-- layer=1 filter=70 channel=32
					21, 36, -15, 35, -4, 25, 33, 11, -6,
					-- layer=1 filter=70 channel=33
					-3, -14, -12, -22, -4, -30, -26, -34, -38,
					-- layer=1 filter=70 channel=34
					-4, -17, -30, 81, 43, 40, 9, 53, -2,
					-- layer=1 filter=70 channel=35
					-14, -26, -21, 3, 2, -38, -34, -73, -51,
					-- layer=1 filter=70 channel=36
					-11, 4, -26, -2, 0, -19, -31, 0, 10,
					-- layer=1 filter=70 channel=37
					-20, -31, -22, 23, 25, 26, 23, 17, 0,
					-- layer=1 filter=70 channel=38
					6, -10, 3, 12, -25, -15, -8, -34, -36,
					-- layer=1 filter=70 channel=39
					51, 19, 36, 24, 15, -6, 0, 23, 5,
					-- layer=1 filter=70 channel=40
					-7, 0, 13, 2, 64, -21, 48, 31, -23,
					-- layer=1 filter=70 channel=41
					5, 2, -12, 0, -4, 0, -13, -8, 0,
					-- layer=1 filter=70 channel=42
					-6, -24, 34, 15, 42, 19, 11, 10, 18,
					-- layer=1 filter=70 channel=43
					-10, -64, -32, 20, -1, 2, -10, 23, -25,
					-- layer=1 filter=70 channel=44
					5, 10, -34, 57, 26, 26, 31, 43, 42,
					-- layer=1 filter=70 channel=45
					3, -26, 6, 0, -6, 3, -19, 12, -36,
					-- layer=1 filter=70 channel=46
					32, 23, -18, 26, -15, -7, -19, -15, -35,
					-- layer=1 filter=70 channel=47
					-2, -20, -44, 27, 0, 10, 13, 16, 0,
					-- layer=1 filter=70 channel=48
					9, 0, -1, 10, 19, 1, 19, -6, 5,
					-- layer=1 filter=70 channel=49
					18, 20, 7, 38, 20, 20, 8, 40, 30,
					-- layer=1 filter=70 channel=50
					31, 1, 9, 0, 2, -22, -5, -13, -8,
					-- layer=1 filter=70 channel=51
					-13, -17, -27, -24, -12, -11, -22, -38, -13,
					-- layer=1 filter=70 channel=52
					-2, -3, -16, 81, 27, 24, 38, 49, -10,
					-- layer=1 filter=70 channel=53
					-39, -11, 18, -13, 72, 0, 41, 54, 31,
					-- layer=1 filter=70 channel=54
					27, 6, -2, 11, -3, -3, -14, -18, -14,
					-- layer=1 filter=70 channel=55
					29, 2, -7, -13, -11, -13, 32, -50, -28,
					-- layer=1 filter=70 channel=56
					2, 1, -3, 10, 17, 21, -12, 5, 24,
					-- layer=1 filter=70 channel=57
					2, 18, -21, 3, -19, -27, -24, -3, 3,
					-- layer=1 filter=70 channel=58
					6, -44, -51, 6, -12, -9, -21, -33, -3,
					-- layer=1 filter=70 channel=59
					-36, -21, 6, -10, 30, 1, 20, 16, -50,
					-- layer=1 filter=70 channel=60
					45, 22, 11, 67, -2, 58, 46, 63, -14,
					-- layer=1 filter=70 channel=61
					-4, 5, 66, 12, 70, -4, 24, 35, -5,
					-- layer=1 filter=70 channel=62
					-20, -51, 0, 0, 4, -8, 3, 6, -58,
					-- layer=1 filter=70 channel=63
					39, 59, 46, 36, 48, -17, 19, 24, -54,
					-- layer=1 filter=71 channel=0
					12, 8, 1, 11, -14, 1, 9, 8, 12,
					-- layer=1 filter=71 channel=1
					4, -6, -10, -2, 2, 5, 8, 0, 2,
					-- layer=1 filter=71 channel=2
					-1, -13, -14, -1, -15, 6, -7, 5, 0,
					-- layer=1 filter=71 channel=3
					7, 10, -2, 9, 1, 12, -8, -12, -4,
					-- layer=1 filter=71 channel=4
					4, -8, 11, -9, -7, -6, 1, 5, -14,
					-- layer=1 filter=71 channel=5
					10, 6, -12, 1, -2, 12, 3, -13, -1,
					-- layer=1 filter=71 channel=6
					-4, 2, 6, 10, -6, 8, -10, 4, -13,
					-- layer=1 filter=71 channel=7
					10, 12, -14, 12, 12, 3, -13, -12, 3,
					-- layer=1 filter=71 channel=8
					-4, -2, -9, 10, -9, 0, -14, -6, -14,
					-- layer=1 filter=71 channel=9
					-3, 1, -6, 6, -9, -7, 9, -14, -1,
					-- layer=1 filter=71 channel=10
					-5, 0, 9, -12, 11, -14, -14, -8, -16,
					-- layer=1 filter=71 channel=11
					-13, -2, -6, -16, -8, 4, 13, -2, 11,
					-- layer=1 filter=71 channel=12
					2, 12, 10, -1, -15, -13, -4, -11, 3,
					-- layer=1 filter=71 channel=13
					0, 11, -8, 8, 11, 8, -2, 10, 0,
					-- layer=1 filter=71 channel=14
					-6, -4, 0, 12, -4, 9, -4, 10, 11,
					-- layer=1 filter=71 channel=15
					12, 7, -7, -5, 6, 15, -7, -5, -2,
					-- layer=1 filter=71 channel=16
					7, -10, -10, 2, 1, -5, 12, 5, 8,
					-- layer=1 filter=71 channel=17
					9, -5, 8, -4, -10, -5, 10, 11, -3,
					-- layer=1 filter=71 channel=18
					-3, 2, 9, 8, 0, -11, -16, -11, -7,
					-- layer=1 filter=71 channel=19
					-14, -8, 12, 8, 8, -3, 12, 4, -4,
					-- layer=1 filter=71 channel=20
					-15, -7, 5, -3, -3, -2, 1, 3, -9,
					-- layer=1 filter=71 channel=21
					-5, 3, -5, 6, 2, -12, -1, -3, -16,
					-- layer=1 filter=71 channel=22
					-9, -13, 9, -7, -13, 5, 4, -17, -5,
					-- layer=1 filter=71 channel=23
					-11, -7, -4, -12, 6, 5, 1, 6, 7,
					-- layer=1 filter=71 channel=24
					-9, 5, 13, 3, 12, 1, 1, -12, 2,
					-- layer=1 filter=71 channel=25
					0, 3, -13, 5, -8, -15, -7, -18, 5,
					-- layer=1 filter=71 channel=26
					3, -9, 6, -10, -9, -5, 12, 5, -12,
					-- layer=1 filter=71 channel=27
					-10, -4, -16, 3, 4, 3, -8, -11, -3,
					-- layer=1 filter=71 channel=28
					-6, -8, 0, -14, 8, 14, -15, -1, 7,
					-- layer=1 filter=71 channel=29
					13, 1, -9, 13, 6, -7, 5, 9, -3,
					-- layer=1 filter=71 channel=30
					0, 5, 3, 0, -8, 0, -14, 1, -2,
					-- layer=1 filter=71 channel=31
					5, -10, 9, 10, -10, 13, 13, 0, -9,
					-- layer=1 filter=71 channel=32
					-6, -4, 1, 9, 3, 11, 8, -5, -4,
					-- layer=1 filter=71 channel=33
					6, -13, -4, -5, -8, -10, -15, 5, -1,
					-- layer=1 filter=71 channel=34
					4, 0, -12, -14, 12, -12, 6, 4, 8,
					-- layer=1 filter=71 channel=35
					-14, 13, 12, 12, -5, 7, 9, -8, 13,
					-- layer=1 filter=71 channel=36
					3, -10, -18, 7, -10, -11, -15, -14, 4,
					-- layer=1 filter=71 channel=37
					-1, -12, -15, 1, 3, -5, -5, -3, 8,
					-- layer=1 filter=71 channel=38
					-2, 1, -16, 0, 6, 8, -2, 1, -4,
					-- layer=1 filter=71 channel=39
					11, -16, -10, -5, 0, 0, 0, -4, 4,
					-- layer=1 filter=71 channel=40
					-13, -14, -10, -7, -14, -9, -11, -3, -15,
					-- layer=1 filter=71 channel=41
					13, -16, -11, -9, -8, 11, 1, 6, -8,
					-- layer=1 filter=71 channel=42
					6, -7, 0, -17, 0, 2, 0, -3, 8,
					-- layer=1 filter=71 channel=43
					-6, -7, -13, -10, -11, 7, -5, 12, -4,
					-- layer=1 filter=71 channel=44
					9, -8, -2, -2, -7, 0, -1, 13, -4,
					-- layer=1 filter=71 channel=45
					-6, 13, -10, 5, 0, 12, -10, -9, 5,
					-- layer=1 filter=71 channel=46
					-3, -12, -5, 11, -16, -9, -10, 1, 6,
					-- layer=1 filter=71 channel=47
					5, -16, -8, 0, 7, -4, 7, 0, -12,
					-- layer=1 filter=71 channel=48
					-17, 11, -4, -11, 5, 0, -2, 10, -10,
					-- layer=1 filter=71 channel=49
					-10, 9, -18, 13, -2, 1, 7, -13, 12,
					-- layer=1 filter=71 channel=50
					8, 10, -10, -16, 4, -15, 9, -16, 1,
					-- layer=1 filter=71 channel=51
					-11, -12, 6, -11, -8, -1, 12, 8, -12,
					-- layer=1 filter=71 channel=52
					9, 8, 7, -8, 3, -14, -20, -3, -16,
					-- layer=1 filter=71 channel=53
					7, -3, 3, -12, 0, -9, -10, -1, 7,
					-- layer=1 filter=71 channel=54
					1, -16, -6, 10, -13, 11, -2, -12, 11,
					-- layer=1 filter=71 channel=55
					-3, 3, 12, -4, -16, 0, 13, -3, 0,
					-- layer=1 filter=71 channel=56
					-8, 7, -7, 3, 8, 7, -4, -4, -12,
					-- layer=1 filter=71 channel=57
					3, 3, -5, -1, 3, 13, -8, 0, 0,
					-- layer=1 filter=71 channel=58
					2, 2, 2, 3, -12, 5, 7, -15, -7,
					-- layer=1 filter=71 channel=59
					8, 4, 7, 4, 4, 7, -1, 11, -9,
					-- layer=1 filter=71 channel=60
					13, 0, -10, -8, 6, -1, -14, -16, -3,
					-- layer=1 filter=71 channel=61
					-7, 11, -5, -7, 1, 4, -14, -14, -2,
					-- layer=1 filter=71 channel=62
					-9, -1, 14, 10, 6, -2, -2, -14, -14,
					-- layer=1 filter=71 channel=63
					-10, 7, -2, 0, -13, -12, 0, -11, 2,
					-- layer=1 filter=72 channel=0
					-38, -5, -32, -38, -20, -24, -28, -40, -16,
					-- layer=1 filter=72 channel=1
					-37, -52, -11, 3, -2, -21, 27, -40, 0,
					-- layer=1 filter=72 channel=2
					-49, -39, -32, -78, -87, -71, -31, -6, 2,
					-- layer=1 filter=72 channel=3
					-20, -25, -13, -30, -56, -31, -39, -40, -7,
					-- layer=1 filter=72 channel=4
					-60, -87, -61, -76, -48, -41, -42, -56, -22,
					-- layer=1 filter=72 channel=5
					26, 0, -10, 12, 32, 32, 12, 5, 15,
					-- layer=1 filter=72 channel=6
					-30, -31, -5, 38, -16, 8, 24, -18, -30,
					-- layer=1 filter=72 channel=7
					-25, -19, -59, -52, -61, -50, -45, -34, -86,
					-- layer=1 filter=72 channel=8
					-34, -48, -7, -18, -56, -44, -13, -45, -54,
					-- layer=1 filter=72 channel=9
					-8, 0, 12, 20, 5, 15, 40, 24, 7,
					-- layer=1 filter=72 channel=10
					-35, -34, -20, -25, -26, -30, -10, -6, -2,
					-- layer=1 filter=72 channel=11
					11, 9, -29, -51, 1, -23, -67, -3, -32,
					-- layer=1 filter=72 channel=12
					-31, -11, -25, -4, -3, 10, -11, -4, 17,
					-- layer=1 filter=72 channel=13
					10, -9, -11, 4, 13, 22, 10, 6, 17,
					-- layer=1 filter=72 channel=14
					-41, -57, -24, -95, -106, -127, 4, -9, 0,
					-- layer=1 filter=72 channel=15
					-29, 16, 6, -4, 67, 24, -3, 67, 66,
					-- layer=1 filter=72 channel=16
					-16, -36, -4, -18, -14, -5, -95, -31, -25,
					-- layer=1 filter=72 channel=17
					4, -9, -22, 40, -20, -4, 28, 19, 27,
					-- layer=1 filter=72 channel=18
					-7, -20, -32, 25, -13, 10, 28, 32, -13,
					-- layer=1 filter=72 channel=19
					-35, -34, -44, 5, -64, -42, -3, -20, -17,
					-- layer=1 filter=72 channel=20
					-30, 3, -16, -4, 23, 28, -24, 18, 12,
					-- layer=1 filter=72 channel=21
					-17, -6, -15, 44, 12, 27, 25, 11, -14,
					-- layer=1 filter=72 channel=22
					-57, 3, -1, -39, -39, -36, -44, 0, 0,
					-- layer=1 filter=72 channel=23
					-27, -3, -32, -61, -4, -10, -40, 7, -44,
					-- layer=1 filter=72 channel=24
					-45, -45, -52, -30, -48, -33, -18, -30, -22,
					-- layer=1 filter=72 channel=25
					-15, -15, 5, -7, 3, 54, 8, 0, 15,
					-- layer=1 filter=72 channel=26
					-23, -28, -3, -35, -61, -29, -35, -55, -30,
					-- layer=1 filter=72 channel=27
					-24, -28, -35, -28, -43, -31, -7, -27, -17,
					-- layer=1 filter=72 channel=28
					-29, -26, -49, 2, -34, -1, -13, -24, -30,
					-- layer=1 filter=72 channel=29
					-26, -15, -26, -13, -24, 0, -6, 0, 20,
					-- layer=1 filter=72 channel=30
					-8, 0, 15, -13, -2, 5, 1, 13, 19,
					-- layer=1 filter=72 channel=31
					-3, 9, -1, -9, 8, -13, -8, -7, -9,
					-- layer=1 filter=72 channel=32
					42, -8, 48, -4, 37, 64, -45, -6, 6,
					-- layer=1 filter=72 channel=33
					-46, -53, -41, -36, -25, -10, 3, -9, -12,
					-- layer=1 filter=72 channel=34
					19, -25, -2, -26, 42, 56, 36, 21, 52,
					-- layer=1 filter=72 channel=35
					-43, -62, -41, -119, -146, -109, -72, -40, -30,
					-- layer=1 filter=72 channel=36
					-17, -16, -4, -18, 36, 28, -45, 11, 13,
					-- layer=1 filter=72 channel=37
					34, -7, -8, 27, 7, 37, 26, 27, 56,
					-- layer=1 filter=72 channel=38
					-4, -23, -14, -17, -26, -32, -36, 6, -17,
					-- layer=1 filter=72 channel=39
					-46, -20, -19, -57, 1, -8, -39, 27, -5,
					-- layer=1 filter=72 channel=40
					-42, -1, -33, -5, -15, -60, -12, 31, 27,
					-- layer=1 filter=72 channel=41
					-6, -23, -12, -7, 3, -7, -3, 3, 13,
					-- layer=1 filter=72 channel=42
					-26, -25, -27, -94, -18, -38, -43, 7, -17,
					-- layer=1 filter=72 channel=43
					19, -10, -13, 46, 2, 38, 12, 11, -7,
					-- layer=1 filter=72 channel=44
					12, 11, -24, -24, 40, 44, -28, 52, 46,
					-- layer=1 filter=72 channel=45
					22, -12, -10, 39, -17, 21, 8, 41, -21,
					-- layer=1 filter=72 channel=46
					-37, -21, -42, -31, -24, -22, -20, 6, 2,
					-- layer=1 filter=72 channel=47
					19, 23, -5, 21, 27, 77, 26, 26, 42,
					-- layer=1 filter=72 channel=48
					14, 10, -8, 10, 23, 32, 2, 7, 22,
					-- layer=1 filter=72 channel=49
					-8, 18, -3, 26, 92, 31, 5, 81, 36,
					-- layer=1 filter=72 channel=50
					17, -3, 14, 23, 27, 24, 17, 3, 28,
					-- layer=1 filter=72 channel=51
					-23, -25, -28, 1, 6, 5, 11, 10, 26,
					-- layer=1 filter=72 channel=52
					6, 0, 17, -18, -17, 0, -14, 16, -5,
					-- layer=1 filter=72 channel=53
					-80, 7, -21, 1, 43, -4, -10, 54, 15,
					-- layer=1 filter=72 channel=54
					9, -11, 6, 25, 15, 22, 5, 0, 19,
					-- layer=1 filter=72 channel=55
					17, -10, -10, 2, 7, -17, -48, 17, -12,
					-- layer=1 filter=72 channel=56
					-32, -59, -58, -45, -33, -46, -34, -78, -30,
					-- layer=1 filter=72 channel=57
					-39, -32, -35, -39, -41, -41, -14, -41, 8,
					-- layer=1 filter=72 channel=58
					10, -6, -18, 22, 27, 35, 4, 14, 6,
					-- layer=1 filter=72 channel=59
					-39, -32, 5, 23, 28, 42, 56, 43, 19,
					-- layer=1 filter=72 channel=60
					-139, -80, -56, -60, -55, -85, -106, -3, -37,
					-- layer=1 filter=72 channel=61
					-27, 15, -5, 64, 51, 23, 38, 68, 9,
					-- layer=1 filter=72 channel=62
					-23, 0, 12, 39, 3, 32, 48, 38, -28,
					-- layer=1 filter=72 channel=63
					-5, 24, 3, 2, -35, -23, -15, -11, 8,
					-- layer=1 filter=73 channel=0
					-48, 35, 24, -35, -36, 74, 13, -34, -66,
					-- layer=1 filter=73 channel=1
					-2, -64, 33, 4, -19, -48, -7, 51, -13,
					-- layer=1 filter=73 channel=2
					-77, 28, 35, -24, -63, 122, 43, -22, -63,
					-- layer=1 filter=73 channel=3
					-9, 7, -27, -25, 13, -31, 4, -37, 22,
					-- layer=1 filter=73 channel=4
					-24, 16, 23, 11, -34, 8, 57, 24, -30,
					-- layer=1 filter=73 channel=5
					21, -54, 7, 22, 22, -65, -50, 23, 23,
					-- layer=1 filter=73 channel=6
					64, -98, 44, 20, 92, -45, -59, 81, 75,
					-- layer=1 filter=73 channel=7
					-34, 22, 22, -34, -27, 18, -4, -16, -13,
					-- layer=1 filter=73 channel=8
					11, -77, 48, 3, 13, -59, -27, 38, 25,
					-- layer=1 filter=73 channel=9
					52, -41, -44, 23, 42, -50, -19, 14, 21,
					-- layer=1 filter=73 channel=10
					-96, 50, 27, 9, -54, 33, 42, 14, -79,
					-- layer=1 filter=73 channel=11
					-32, -55, -63, -36, -36, -52, 23, 13, 24,
					-- layer=1 filter=73 channel=12
					35, -16, -15, 16, 22, -26, -26, -31, 2,
					-- layer=1 filter=73 channel=13
					32, 38, 0, -13, 31, 39, -7, -17, 5,
					-- layer=1 filter=73 channel=14
					-72, 49, 38, -25, -73, 123, 20, 13, -76,
					-- layer=1 filter=73 channel=15
					-34, 104, 22, 15, -75, 38, 24, -39, -87,
					-- layer=1 filter=73 channel=16
					-38, -39, -20, -48, -51, -54, 0, 23, -1,
					-- layer=1 filter=73 channel=17
					6, -68, 8, 8, 9, -50, -47, 1, -17,
					-- layer=1 filter=73 channel=18
					37, -81, 14, 28, 69, -32, -67, 32, 55,
					-- layer=1 filter=73 channel=19
					0, -20, -18, 18, 22, -47, -19, 17, 12,
					-- layer=1 filter=73 channel=20
					-21, 53, 25, 11, -86, 14, 24, -42, -102,
					-- layer=1 filter=73 channel=21
					54, -46, -77, 12, 91, -29, -87, 33, 82,
					-- layer=1 filter=73 channel=22
					-52, -37, -93, -41, -34, -58, -20, -67, -6,
					-- layer=1 filter=73 channel=23
					-60, 92, 26, -35, -26, 107, 53, -24, -14,
					-- layer=1 filter=73 channel=24
					-31, -31, -9, 7, -21, -16, 18, 18, -47,
					-- layer=1 filter=73 channel=25
					39, -121, 28, 1, 23, -73, -44, 35, 17,
					-- layer=1 filter=73 channel=26
					-14, -20, -1, -19, -20, -56, -12, 26, -1,
					-- layer=1 filter=73 channel=27
					-12, 0, 11, 17, -15, -22, 8, 21, -16,
					-- layer=1 filter=73 channel=28
					55, -7, -71, -4, 75, -40, -56, 14, 73,
					-- layer=1 filter=73 channel=29
					8, -35, 3, 7, -27, -46, -24, 22, -10,
					-- layer=1 filter=73 channel=30
					25, 16, 5, -21, 22, 7, 9, -39, -4,
					-- layer=1 filter=73 channel=31
					-2, 6, -5, 13, 13, -4, -3, 11, 9,
					-- layer=1 filter=73 channel=32
					-17, -131, 16, -28, 15, -50, -24, -70, -22,
					-- layer=1 filter=73 channel=33
					-14, -54, 32, -15, -32, -40, -2, 12, -62,
					-- layer=1 filter=73 channel=34
					62, -56, -21, -31, -14, -53, -62, -51, 1,
					-- layer=1 filter=73 channel=35
					-25, 23, 7, -36, -37, 68, 41, -40, -54,
					-- layer=1 filter=73 channel=36
					10, 29, 84, 6, -122, 27, 22, -16, -96,
					-- layer=1 filter=73 channel=37
					13, -33, -54, -25, 6, -45, -75, -3, 17,
					-- layer=1 filter=73 channel=38
					-27, 85, 31, -19, -53, 97, 49, -40, -76,
					-- layer=1 filter=73 channel=39
					-102, 94, 42, -17, -76, 100, 61, 1, -50,
					-- layer=1 filter=73 channel=40
					-26, -68, -30, -43, -44, -56, -20, -80, -38,
					-- layer=1 filter=73 channel=41
					-18, 9, 55, 37, -44, 3, 31, -8, -63,
					-- layer=1 filter=73 channel=42
					-87, 103, 76, -2, 2, 178, 99, 26, -31,
					-- layer=1 filter=73 channel=43
					89, 2, -19, 13, 77, 0, -74, 52, 90,
					-- layer=1 filter=73 channel=44
					16, -4, -55, -62, -116, -15, -35, -108, -49,
					-- layer=1 filter=73 channel=45
					89, -19, 3, 34, 102, 5, -75, 72, 86,
					-- layer=1 filter=73 channel=46
					-24, 4, 24, -8, -25, 10, -10, -20, -24,
					-- layer=1 filter=73 channel=47
					29, -96, -32, -2, 6, -63, -54, -9, 5,
					-- layer=1 filter=73 channel=48
					43, -16, 34, 5, -13, -12, -1, 15, -8,
					-- layer=1 filter=73 channel=49
					-17, 103, 40, 44, -67, 72, 58, 16, -75,
					-- layer=1 filter=73 channel=50
					-9, -26, 44, 26, -17, 10, 9, 10, -42,
					-- layer=1 filter=73 channel=51
					-9, -8, 34, 6, -17, -7, 16, 17, -15,
					-- layer=1 filter=73 channel=52
					53, 0, -79, -65, -30, -25, -74, -40, 22,
					-- layer=1 filter=73 channel=53
					1, -121, -19, -37, -30, -148, -81, -103, -7,
					-- layer=1 filter=73 channel=54
					0, 0, 50, 18, -37, -1, 0, 12, -23,
					-- layer=1 filter=73 channel=55
					30, 90, -6, -46, 12, 88, 21, -74, 31,
					-- layer=1 filter=73 channel=56
					-8, 8, 43, 18, -10, -17, 56, 36, -26,
					-- layer=1 filter=73 channel=57
					-13, 26, -9, -1, -7, -17, 24, 22, -11,
					-- layer=1 filter=73 channel=58
					19, -50, -1, 18, -15, -27, -34, -10, -15,
					-- layer=1 filter=73 channel=59
					73, -135, 104, 51, 96, -101, -51, 64, 65,
					-- layer=1 filter=73 channel=60
					26, -12, -74, -37, 45, 41, -103, -93, 52,
					-- layer=1 filter=73 channel=61
					70, -13, -42, 45, 100, -51, -62, 39, 86,
					-- layer=1 filter=73 channel=62
					83, -52, -2, 32, 131, -15, -96, 50, 80,
					-- layer=1 filter=73 channel=63
					-30, -41, -40, -16, -47, -47, 6, -33, -32,
					-- layer=1 filter=74 channel=0
					-14, 2, -16, -28, 20, 2, 25, -17, 10,
					-- layer=1 filter=74 channel=1
					17, -4, 0, 1, -7, -10, -5, -8, -15,
					-- layer=1 filter=74 channel=2
					14, 8, 16, 10, 42, 39, 61, 21, 20,
					-- layer=1 filter=74 channel=3
					-25, -45, -36, -30, -10, -4, -11, 0, -16,
					-- layer=1 filter=74 channel=4
					6, -1, -3, 1, 3, 1, 18, 2, 26,
					-- layer=1 filter=74 channel=5
					-18, 7, -28, -28, -48, -20, -31, -5, -43,
					-- layer=1 filter=74 channel=6
					5, -12, -7, 15, -6, -14, -22, 26, -12,
					-- layer=1 filter=74 channel=7
					-1, -6, -2, -5, 24, 20, -2, 11, 28,
					-- layer=1 filter=74 channel=8
					21, -2, 0, 16, 10, -2, -17, 23, 15,
					-- layer=1 filter=74 channel=9
					-16, -22, -10, -31, -19, -38, -13, -10, -30,
					-- layer=1 filter=74 channel=10
					-12, -5, -25, -6, 0, 3, 13, -33, 8,
					-- layer=1 filter=74 channel=11
					-8, -10, -24, -17, -28, 8, -19, -6, -25,
					-- layer=1 filter=74 channel=12
					-20, 9, -16, -22, -10, -10, -8, 4, -32,
					-- layer=1 filter=74 channel=13
					-12, -26, -12, -23, -8, -41, -15, -17, -36,
					-- layer=1 filter=74 channel=14
					36, -1, 14, 17, 28, 23, 33, 6, 12,
					-- layer=1 filter=74 channel=15
					-51, 0, -50, -12, -8, 32, 46, 0, -15,
					-- layer=1 filter=74 channel=16
					-24, -7, -9, -4, -14, -13, -13, 13, -2,
					-- layer=1 filter=74 channel=17
					15, -5, 0, -3, -1, -10, 4, -4, 12,
					-- layer=1 filter=74 channel=18
					16, 0, 7, 9, -29, -18, -17, 22, 5,
					-- layer=1 filter=74 channel=19
					18, 5, 11, -12, -19, -19, -13, 5, -9,
					-- layer=1 filter=74 channel=20
					-33, 18, -22, 19, 3, 16, 23, -18, 18,
					-- layer=1 filter=74 channel=21
					0, -30, -2, -1, 5, 8, -17, 37, -10,
					-- layer=1 filter=74 channel=22
					29, -31, 47, 19, 15, -8, -12, -11, -44,
					-- layer=1 filter=74 channel=23
					-65, 15, -40, -70, -34, -71, 14, -112, -46,
					-- layer=1 filter=74 channel=24
					0, 6, 7, 1, -12, -21, -14, -13, -18,
					-- layer=1 filter=74 channel=25
					20, 22, 14, 26, 17, 31, 33, 36, 23,
					-- layer=1 filter=74 channel=26
					-12, 10, 8, -10, -10, -5, 7, -15, 15,
					-- layer=1 filter=74 channel=27
					-1, 6, 22, 0, 5, 3, -4, 22, 7,
					-- layer=1 filter=74 channel=28
					-3, -20, -4, 12, 15, 3, -13, 14, 16,
					-- layer=1 filter=74 channel=29
					1, 0, 13, 24, 5, 0, 1, 9, 1,
					-- layer=1 filter=74 channel=30
					-3, 9, 7, -34, -13, -37, -10, -33, -51,
					-- layer=1 filter=74 channel=31
					-14, -11, -3, 8, 1, 11, 0, 12, -4,
					-- layer=1 filter=74 channel=32
					-15, 20, 1, 40, 30, 25, 23, -8, 61,
					-- layer=1 filter=74 channel=33
					7, -15, -7, 5, 4, -26, 14, -12, -14,
					-- layer=1 filter=74 channel=34
					-1, 45, 33, 40, 28, 54, 35, 28, 23,
					-- layer=1 filter=74 channel=35
					8, -2, -2, -7, 7, 11, 13, 5, 34,
					-- layer=1 filter=74 channel=36
					-26, -10, -74, 6, -4, -20, 50, -36, 5,
					-- layer=1 filter=74 channel=37
					19, 11, 38, 38, 20, 26, 22, 54, 36,
					-- layer=1 filter=74 channel=38
					-48, 3, -25, -35, 20, -19, 13, -47, 1,
					-- layer=1 filter=74 channel=39
					-56, -20, -90, -32, -38, -16, 7, -47, -30,
					-- layer=1 filter=74 channel=40
					21, -26, 35, 17, 35, 5, 1, 0, -34,
					-- layer=1 filter=74 channel=41
					0, 2, -8, -7, 0, 0, -13, -31, -3,
					-- layer=1 filter=74 channel=42
					-13, 2, -18, -9, 27, 0, 62, -17, 11,
					-- layer=1 filter=74 channel=43
					20, 1, 34, 12, 0, -6, 22, 35, 33,
					-- layer=1 filter=74 channel=44
					-47, 11, 1, 2, -6, 21, 29, 8, 18,
					-- layer=1 filter=74 channel=45
					18, -11, 22, 27, 5, -16, 5, 43, 24,
					-- layer=1 filter=74 channel=46
					79, 42, 58, 5, 57, 34, -61, -9, -5,
					-- layer=1 filter=74 channel=47
					28, 30, 14, 22, 11, 18, 14, 44, 13,
					-- layer=1 filter=74 channel=48
					-46, -30, -38, -45, -69, -68, -41, -48, -43,
					-- layer=1 filter=74 channel=49
					-88, 1, -68, -9, -23, 8, 34, -23, -9,
					-- layer=1 filter=74 channel=50
					-26, -39, -47, -74, -70, -71, -50, -66, -72,
					-- layer=1 filter=74 channel=51
					-8, 18, -3, 10, -4, 1, -3, -17, -3,
					-- layer=1 filter=74 channel=52
					1, 5, 1, 38, 5, 13, -3, -15, -5,
					-- layer=1 filter=74 channel=53
					10, -35, 17, 39, 39, 51, 33, 35, 0,
					-- layer=1 filter=74 channel=54
					-24, -15, -34, -41, -66, -52, -54, -80, -66,
					-- layer=1 filter=74 channel=55
					-44, -14, 6, -51, -6, -61, -31, -52, -14,
					-- layer=1 filter=74 channel=56
					0, -8, -2, -2, 11, 30, 16, -10, 13,
					-- layer=1 filter=74 channel=57
					13, -4, 12, 3, 6, -8, -3, -15, 0,
					-- layer=1 filter=74 channel=58
					-29, -3, 7, -5, -2, -10, -23, -5, -16,
					-- layer=1 filter=74 channel=59
					18, -30, -15, 22, 31, 23, 27, 37, 6,
					-- layer=1 filter=74 channel=60
					-7, 34, 29, 3, 6, 15, 48, -9, -36,
					-- layer=1 filter=74 channel=61
					27, -18, 7, 11, 12, 24, 13, 20, -23,
					-- layer=1 filter=74 channel=62
					14, -26, -23, 15, -6, -14, -16, 30, 16,
					-- layer=1 filter=74 channel=63
					13, -45, 29, -51, -48, -34, -77, -89, -111,
					-- layer=1 filter=75 channel=0
					-13, -12, 17, -62, -75, -8, 1, -6, -46,
					-- layer=1 filter=75 channel=1
					-49, 10, -57, -16, -49, -41, 1, 5, -22,
					-- layer=1 filter=75 channel=2
					-34, -17, -16, -70, -69, -6, -3, 0, -3,
					-- layer=1 filter=75 channel=3
					24, -11, 26, 2, 1, 18, 16, 41, 43,
					-- layer=1 filter=75 channel=4
					-74, -77, -27, -73, -110, -87, -18, -61, -76,
					-- layer=1 filter=75 channel=5
					-1, -22, -19, 53, 14, -5, 2, -1, -23,
					-- layer=1 filter=75 channel=6
					49, -38, -65, 80, 27, 25, 43, 47, 9,
					-- layer=1 filter=75 channel=7
					17, 16, 43, -25, 2, 38, 28, 32, 32,
					-- layer=1 filter=75 channel=8
					-8, -21, -9, 15, -9, -13, 36, 26, -6,
					-- layer=1 filter=75 channel=9
					6, -1, -43, 49, 11, 20, 35, 31, 6,
					-- layer=1 filter=75 channel=10
					-23, -34, -21, -30, -8, -12, 3, -5, -31,
					-- layer=1 filter=75 channel=11
					11, 18, 29, -8, 26, 28, 3, 20, 36,
					-- layer=1 filter=75 channel=12
					2, -3, -29, 23, -5, -6, 36, 16, 7,
					-- layer=1 filter=75 channel=13
					28, -5, -5, 26, 20, -1, -5, 4, -18,
					-- layer=1 filter=75 channel=14
					-23, -15, -8, -38, -95, -19, -7, 20, 9,
					-- layer=1 filter=75 channel=15
					-58, -59, -20, -143, -87, -35, -63, -95, -100,
					-- layer=1 filter=75 channel=16
					-34, -13, -10, -16, -17, 8, -13, -19, -26,
					-- layer=1 filter=75 channel=17
					-29, -45, -43, 4, -22, -42, 13, 33, -41,
					-- layer=1 filter=75 channel=18
					30, -11, -61, 68, 28, 22, 38, 47, -19,
					-- layer=1 filter=75 channel=19
					-18, -11, -24, 12, 0, -10, 31, 11, -46,
					-- layer=1 filter=75 channel=20
					-49, -29, -29, -72, -54, -38, -21, -72, -66,
					-- layer=1 filter=75 channel=21
					42, -11, -40, 60, 44, 56, 57, 64, 42,
					-- layer=1 filter=75 channel=22
					-6, 3, 6, -13, -17, 30, -19, 15, 33,
					-- layer=1 filter=75 channel=23
					10, 15, 40, -58, 20, 31, -41, 1, 4,
					-- layer=1 filter=75 channel=24
					-48, -24, -7, -13, -44, -18, 12, -31, -34,
					-- layer=1 filter=75 channel=25
					-27, -85, -77, 56, 14, -7, 56, 24, -10,
					-- layer=1 filter=75 channel=26
					-29, -51, -69, -27, -43, -7, 10, -30, -64,
					-- layer=1 filter=75 channel=27
					-17, -40, -21, -6, -35, -30, 14, -8, -30,
					-- layer=1 filter=75 channel=28
					43, 6, 4, 61, 38, 18, 36, 36, 21,
					-- layer=1 filter=75 channel=29
					-47, -42, -53, -1, -48, -61, 11, -4, -54,
					-- layer=1 filter=75 channel=30
					10, -4, -14, 6, -5, 8, -32, -53, -29,
					-- layer=1 filter=75 channel=31
					-10, -1, -1, 14, 10, -12, 9, -6, -14,
					-- layer=1 filter=75 channel=32
					-122, -110, -128, -38, -67, 6, 13, -91, -74,
					-- layer=1 filter=75 channel=33
					-49, -19, -39, -16, -49, -22, 22, -20, -54,
					-- layer=1 filter=75 channel=34
					-10, -82, -137, 6, 1, 2, 18, -11, -16,
					-- layer=1 filter=75 channel=35
					-39, 7, 8, -74, -48, 18, 4, -1, 5,
					-- layer=1 filter=75 channel=36
					0, -4, -15, -56, -9, -19, -14, -65, -56,
					-- layer=1 filter=75 channel=37
					6, -62, -133, 41, -10, 11, 21, -1, -10,
					-- layer=1 filter=75 channel=38
					17, 8, -7, -22, 4, -5, 4, -33, -20,
					-- layer=1 filter=75 channel=39
					6, -7, 41, -97, -12, -6, -47, 26, -14,
					-- layer=1 filter=75 channel=40
					-39, -31, -49, -18, -38, -21, -26, -25, -18,
					-- layer=1 filter=75 channel=41
					-9, -30, -6, -11, -13, -9, 24, -26, -19,
					-- layer=1 filter=75 channel=42
					0, -3, 43, -84, -28, 47, 23, 50, 10,
					-- layer=1 filter=75 channel=43
					56, -12, -57, 87, 55, 29, 51, 75, 7,
					-- layer=1 filter=75 channel=44
					-92, -79, -95, -51, -48, -8, -72, -65, -68,
					-- layer=1 filter=75 channel=45
					65, -45, -67, 95, 54, 24, 52, 58, -4,
					-- layer=1 filter=75 channel=46
					-32, 14, 47, -46, 24, 14, -56, -60, -20,
					-- layer=1 filter=75 channel=47
					-50, -104, -140, 24, -5, -16, 21, 14, -35,
					-- layer=1 filter=75 channel=48
					-1, 6, -21, 33, 31, -5, 9, -22, 2,
					-- layer=1 filter=75 channel=49
					-63, -61, -28, -111, -77, -47, -66, -71, -84,
					-- layer=1 filter=75 channel=50
					5, -14, 9, 1, -9, 0, 9, -8, -18,
					-- layer=1 filter=75 channel=51
					-18, -34, -51, 4, -35, -64, 7, -21, -48,
					-- layer=1 filter=75 channel=52
					38, 9, -77, -23, 2, 49, -36, -32, -27,
					-- layer=1 filter=75 channel=53
					18, -42, -17, -4, -12, -12, -8, 8, 45,
					-- layer=1 filter=75 channel=54
					-8, 6, 13, 0, -5, -17, -5, -17, -13,
					-- layer=1 filter=75 channel=55
					25, 14, -43, 2, 28, 16, -47, -8, -24,
					-- layer=1 filter=75 channel=56
					-19, -37, -5, -27, -83, -44, -36, -23, -49,
					-- layer=1 filter=75 channel=57
					-52, -21, -18, -12, -47, -56, 3, -27, -59,
					-- layer=1 filter=75 channel=58
					-23, -22, -31, 37, -3, -32, 27, -15, -26,
					-- layer=1 filter=75 channel=59
					34, -64, -66, 75, 32, -3, 30, 49, 49,
					-- layer=1 filter=75 channel=60
					9, -45, -42, 7, 11, 27, -34, -17, -39,
					-- layer=1 filter=75 channel=61
					37, -30, -43, 63, 56, 33, 54, 75, 48,
					-- layer=1 filter=75 channel=62
					41, -24, -50, 86, 55, 46, 46, 66, 48,
					-- layer=1 filter=75 channel=63
					1, -26, -6, -32, -20, -1, -37, -18, -6,
					-- layer=1 filter=76 channel=0
					-14, 3, 27, 30, 39, 7, 44, 47, 26,
					-- layer=1 filter=76 channel=1
					13, 0, 7, 4, -29, -14, -51, -44, 0,
					-- layer=1 filter=76 channel=2
					25, 29, 29, 38, 45, 5, 28, 32, 54,
					-- layer=1 filter=76 channel=3
					-23, 6, -7, -42, -33, -46, -45, -29, -27,
					-- layer=1 filter=76 channel=4
					0, -20, 2, -2, 3, -5, -15, -20, 5,
					-- layer=1 filter=76 channel=5
					10, 33, 0, 16, 34, 17, -16, -3, -5,
					-- layer=1 filter=76 channel=6
					31, 25, -1, 41, 19, 10, 2, -16, -23,
					-- layer=1 filter=76 channel=7
					-19, -28, 6, -19, -20, 12, 8, 6, -9,
					-- layer=1 filter=76 channel=8
					0, -38, -6, -29, -22, -8, -9, -18, -28,
					-- layer=1 filter=76 channel=9
					32, -8, 24, -18, -2, -21, -2, -21, -28,
					-- layer=1 filter=76 channel=10
					0, -22, -14, 5, -10, -40, -9, 6, -20,
					-- layer=1 filter=76 channel=11
					-31, -22, -10, 10, 10, 7, 31, 6, 31,
					-- layer=1 filter=76 channel=12
					-30, -22, 4, -31, 6, -21, -23, -35, -30,
					-- layer=1 filter=76 channel=13
					12, 1, 2, -4, -29, -29, 1, 3, -20,
					-- layer=1 filter=76 channel=14
					47, 62, 71, 102, 78, 56, 84, 87, 89,
					-- layer=1 filter=76 channel=15
					-18, -47, -34, -40, -49, -91, -47, -66, -26,
					-- layer=1 filter=76 channel=16
					-4, 1, -3, -22, 23, 21, 22, 7, 25,
					-- layer=1 filter=76 channel=17
					10, -4, 14, -10, -37, -16, -34, -33, -16,
					-- layer=1 filter=76 channel=18
					17, 17, 8, 13, 22, -2, -28, -20, -32,
					-- layer=1 filter=76 channel=19
					8, 24, -9, 5, -17, -7, -30, -49, -30,
					-- layer=1 filter=76 channel=20
					1, -46, -42, -9, -30, -42, -8, -41, 12,
					-- layer=1 filter=76 channel=21
					3, 0, 1, 7, -7, -24, 12, -14, -40,
					-- layer=1 filter=76 channel=22
					22, 34, 44, 33, 29, 1, 32, -9, -18,
					-- layer=1 filter=76 channel=23
					0, 28, 10, 14, -4, -10, -19, -30, -26,
					-- layer=1 filter=76 channel=24
					21, -1, 1, 15, -28, -3, -37, -38, -26,
					-- layer=1 filter=76 channel=25
					14, 27, 24, 19, 56, 18, 24, 1, 34,
					-- layer=1 filter=76 channel=26
					6, -19, -15, -26, -14, -14, -37, -29, -14,
					-- layer=1 filter=76 channel=27
					0, -12, -2, 3, -6, -21, 6, -3, -5,
					-- layer=1 filter=76 channel=28
					-25, -33, 0, -5, -17, -5, 3, 4, -4,
					-- layer=1 filter=76 channel=29
					12, -4, -20, -6, -4, 1, -5, -19, 7,
					-- layer=1 filter=76 channel=30
					9, 18, 4, -21, -18, -6, -2, 2, -8,
					-- layer=1 filter=76 channel=31
					10, -8, 14, 13, 13, -4, 4, 1, 0,
					-- layer=1 filter=76 channel=32
					-12, 11, 26, -23, -24, -17, -39, -39, -15,
					-- layer=1 filter=76 channel=33
					21, 3, -16, -8, -15, -19, -61, -36, -32,
					-- layer=1 filter=76 channel=34
					32, 43, 62, 29, 47, 38, 19, 12, 29,
					-- layer=1 filter=76 channel=35
					-24, 2, -1, -4, -19, -11, 7, -5, 7,
					-- layer=1 filter=76 channel=36
					7, -26, -24, -23, -16, -46, -19, -46, -26,
					-- layer=1 filter=76 channel=37
					19, 30, 17, 27, 66, 38, 12, 6, 22,
					-- layer=1 filter=76 channel=38
					18, 8, -16, -12, -31, -42, 4, 0, -32,
					-- layer=1 filter=76 channel=39
					-5, -2, -8, 0, -3, -25, -14, -29, -24,
					-- layer=1 filter=76 channel=40
					42, 25, 44, 15, 20, -21, 23, 31, 23,
					-- layer=1 filter=76 channel=41
					0, 5, 8, -33, -17, -30, -22, -23, -14,
					-- layer=1 filter=76 channel=42
					-4, 30, 15, 23, 34, 2, 51, 34, 17,
					-- layer=1 filter=76 channel=43
					13, 27, 28, 27, 52, 1, 35, 12, -2,
					-- layer=1 filter=76 channel=44
					14, -29, 5, -8, 32, -6, 7, -10, 5,
					-- layer=1 filter=76 channel=45
					37, 61, 18, 33, 52, 14, 7, -15, -5,
					-- layer=1 filter=76 channel=46
					26, 38, 35, 9, 35, 2, -29, -32, -36,
					-- layer=1 filter=76 channel=47
					11, 17, 25, 15, 32, 26, 21, 7, 28,
					-- layer=1 filter=76 channel=48
					4, 2, 16, 14, 23, 18, 3, 11, -13,
					-- layer=1 filter=76 channel=49
					-43, -97, -86, -55, -70, -94, -65, -96, -73,
					-- layer=1 filter=76 channel=50
					14, 2, 1, -5, -2, 1, -19, -8, -14,
					-- layer=1 filter=76 channel=51
					-1, -5, -14, -11, -6, -5, -23, -17, -18,
					-- layer=1 filter=76 channel=52
					46, 74, 105, 57, 84, 30, 78, 47, 48,
					-- layer=1 filter=76 channel=53
					-17, -56, 36, -36, -33, -45, 17, -54, -3,
					-- layer=1 filter=76 channel=54
					0, 16, 5, -10, 2, -13, -23, -3, -5,
					-- layer=1 filter=76 channel=55
					20, 37, 9, 4, -40, -17, -8, 9, -50,
					-- layer=1 filter=76 channel=56
					-12, -19, -14, -14, -19, -7, -9, -9, 3,
					-- layer=1 filter=76 channel=57
					-2, -7, 1, -17, 0, -3, -32, -35, -29,
					-- layer=1 filter=76 channel=58
					11, -13, 4, -9, 0, 0, -6, -2, -16,
					-- layer=1 filter=76 channel=59
					26, -29, 6, 0, -43, -58, -16, -107, -60,
					-- layer=1 filter=76 channel=60
					113, 92, 99, 142, 132, 96, 103, 92, 59,
					-- layer=1 filter=76 channel=61
					-6, -35, -15, -26, -81, -75, -30, -91, -96,
					-- layer=1 filter=76 channel=62
					-4, -5, 4, 20, 7, 3, 22, -29, -40,
					-- layer=1 filter=76 channel=63
					20, 12, 29, 26, 38, 0, -6, -9, -23,
					-- layer=1 filter=77 channel=0
					9, -17, 6, -7, 13, 10, 12, 8, -1,
					-- layer=1 filter=77 channel=1
					-13, 6, -3, -13, -4, -3, 3, 11, 4,
					-- layer=1 filter=77 channel=2
					-10, 4, 0, -14, 7, 0, 7, 0, 0,
					-- layer=1 filter=77 channel=3
					6, -9, 6, -5, 5, -2, 2, -12, 6,
					-- layer=1 filter=77 channel=4
					0, -14, 5, -2, 4, 6, 8, 8, 12,
					-- layer=1 filter=77 channel=5
					9, 1, -7, 4, 0, -11, -1, -4, -9,
					-- layer=1 filter=77 channel=6
					4, -10, 1, 4, 7, -4, -14, 1, -1,
					-- layer=1 filter=77 channel=7
					-16, 0, -13, -3, -7, -1, -15, -2, 7,
					-- layer=1 filter=77 channel=8
					-7, 3, -7, 0, -12, -2, -5, 7, 0,
					-- layer=1 filter=77 channel=9
					0, 9, -12, -3, 8, 0, -13, 10, -1,
					-- layer=1 filter=77 channel=10
					-13, 1, 0, -11, -11, 10, -13, 0, -9,
					-- layer=1 filter=77 channel=11
					-20, 3, -13, -17, 0, -7, 7, -14, -1,
					-- layer=1 filter=77 channel=12
					-4, 8, -10, -5, -12, -8, -14, -9, -2,
					-- layer=1 filter=77 channel=13
					10, -7, -11, 11, -13, 10, 11, -11, 12,
					-- layer=1 filter=77 channel=14
					-13, 9, -8, -6, -3, -4, -6, -9, -13,
					-- layer=1 filter=77 channel=15
					-14, -18, 8, 4, -5, -11, -16, -5, -5,
					-- layer=1 filter=77 channel=16
					-17, -9, -14, 7, 5, -10, -15, 7, 3,
					-- layer=1 filter=77 channel=17
					-15, 1, 0, 9, 3, 12, -9, -5, -12,
					-- layer=1 filter=77 channel=18
					-3, 4, -9, -5, 0, -12, -2, -11, 1,
					-- layer=1 filter=77 channel=19
					-2, -1, 14, 1, -7, -11, 0, -6, 9,
					-- layer=1 filter=77 channel=20
					-5, -2, 3, 11, 0, -8, -2, 1, -9,
					-- layer=1 filter=77 channel=21
					1, 14, -5, 10, 7, 0, 0, -9, 7,
					-- layer=1 filter=77 channel=22
					-24, 1, 4, -16, 4, -4, -11, -13, -6,
					-- layer=1 filter=77 channel=23
					-9, 4, 7, 6, 8, 5, -8, -7, 5,
					-- layer=1 filter=77 channel=24
					-11, 5, -15, -6, 4, -14, 4, 7, 1,
					-- layer=1 filter=77 channel=25
					2, -1, 5, 7, -4, 14, -4, -1, -3,
					-- layer=1 filter=77 channel=26
					0, -12, 10, 7, 4, -14, 0, 0, 3,
					-- layer=1 filter=77 channel=27
					2, 6, 1, 6, -10, -9, 0, 4, 2,
					-- layer=1 filter=77 channel=28
					-2, 12, -17, -11, -12, -15, 9, 7, -1,
					-- layer=1 filter=77 channel=29
					2, -11, -6, -3, 0, -7, 7, 2, 8,
					-- layer=1 filter=77 channel=30
					4, -14, 1, 9, -11, 10, -14, -4, -6,
					-- layer=1 filter=77 channel=31
					-13, 4, -11, -7, 7, 14, 2, -5, -4,
					-- layer=1 filter=77 channel=32
					-2, 11, -11, -2, 0, 10, -6, -7, -10,
					-- layer=1 filter=77 channel=33
					8, -12, 11, 0, 11, -3, -14, 4, 3,
					-- layer=1 filter=77 channel=34
					3, -2, -17, -7, 0, 3, 9, -10, 13,
					-- layer=1 filter=77 channel=35
					-14, 0, 8, -7, 12, 7, 7, -15, -13,
					-- layer=1 filter=77 channel=36
					-13, 0, 2, -2, -11, -4, -14, -12, -13,
					-- layer=1 filter=77 channel=37
					-17, 4, -7, 2, -11, 2, 13, -17, -14,
					-- layer=1 filter=77 channel=38
					-17, -15, 3, -12, -7, -16, -11, -10, 14,
					-- layer=1 filter=77 channel=39
					10, 3, -15, 0, -17, -10, -7, -2, -10,
					-- layer=1 filter=77 channel=40
					13, 0, -6, -16, 11, -9, -9, -10, 4,
					-- layer=1 filter=77 channel=41
					-13, -3, -4, -5, 5, -4, 0, -5, -16,
					-- layer=1 filter=77 channel=42
					-12, -14, -10, 4, -6, 5, -4, 4, -8,
					-- layer=1 filter=77 channel=43
					-5, -13, 0, 6, -19, -14, -13, -9, -2,
					-- layer=1 filter=77 channel=44
					0, 3, -8, 2, 11, -9, -9, 11, -12,
					-- layer=1 filter=77 channel=45
					7, -12, -12, 11, -3, -2, 2, 0, 7,
					-- layer=1 filter=77 channel=46
					6, -5, 8, -8, 0, 8, 4, -1, -11,
					-- layer=1 filter=77 channel=47
					-16, 1, 4, 2, 0, -16, -7, 7, -4,
					-- layer=1 filter=77 channel=48
					-11, 3, -10, 7, -7, -13, 2, 4, -2,
					-- layer=1 filter=77 channel=49
					10, -9, 6, -8, 7, -12, 6, 0, -3,
					-- layer=1 filter=77 channel=50
					-12, 0, -3, -16, -9, 13, 7, -9, 4,
					-- layer=1 filter=77 channel=51
					-6, -1, -13, -3, -8, -1, -16, -8, -5,
					-- layer=1 filter=77 channel=52
					6, 10, 6, 5, 2, -18, -3, -8, 4,
					-- layer=1 filter=77 channel=53
					4, 12, 12, -8, -4, 0, 1, 3, 8,
					-- layer=1 filter=77 channel=54
					10, 12, -6, 8, 1, 13, -6, -16, -16,
					-- layer=1 filter=77 channel=55
					8, 10, -9, 1, 8, 12, -9, 0, 11,
					-- layer=1 filter=77 channel=56
					-6, 0, -7, -11, -3, 3, 11, -1, 4,
					-- layer=1 filter=77 channel=57
					3, 1, -13, -13, 9, 4, 0, -11, -6,
					-- layer=1 filter=77 channel=58
					0, -10, -1, -1, 13, -10, -14, 2, -2,
					-- layer=1 filter=77 channel=59
					-4, -6, -11, -6, 6, -14, 7, 10, -12,
					-- layer=1 filter=77 channel=60
					-8, 9, -2, -16, 1, 8, 0, -6, 0,
					-- layer=1 filter=77 channel=61
					-7, -13, 8, -7, -4, -8, -9, 7, 0,
					-- layer=1 filter=77 channel=62
					3, 10, -8, -11, 2, -5, 10, 2, -6,
					-- layer=1 filter=77 channel=63
					-6, 4, -5, -8, 8, -12, -13, 5, -12,
					-- layer=1 filter=78 channel=0
					-35, 0, 12, -24, -41, -27, -61, -64, 3,
					-- layer=1 filter=78 channel=1
					1, -2, -1, 43, -30, 11, -1, -53, -10,
					-- layer=1 filter=78 channel=2
					-30, -8, -28, -8, -26, -65, -23, -81, -70,
					-- layer=1 filter=78 channel=3
					-10, -19, -74, -20, 15, -45, 31, 20, 13,
					-- layer=1 filter=78 channel=4
					13, 5, 0, -26, -2, 42, -76, -5, 29,
					-- layer=1 filter=78 channel=5
					5, -14, -23, 43, 2, -8, 40, -5, -63,
					-- layer=1 filter=78 channel=6
					-27, -15, 11, -70, -52, -27, -37, -47, -62,
					-- layer=1 filter=78 channel=7
					2, 57, 29, -19, 12, 30, -59, -23, 62,
					-- layer=1 filter=78 channel=8
					18, 25, 42, -13, 13, 32, -84, -25, 18,
					-- layer=1 filter=78 channel=9
					36, 34, -4, 51, 37, -11, 20, 4, -37,
					-- layer=1 filter=78 channel=10
					-32, -19, -10, -48, -58, 7, -62, -52, 15,
					-- layer=1 filter=78 channel=11
					-33, -21, 44, -75, 13, 29, -40, -27, -7,
					-- layer=1 filter=78 channel=12
					-57, -49, -25, -21, 24, 0, 22, 67, 38,
					-- layer=1 filter=78 channel=13
					0, -32, -65, 1, -66, -88, 29, -38, -40,
					-- layer=1 filter=78 channel=14
					-20, -32, -39, 27, -43, -69, 31, -53, -73,
					-- layer=1 filter=78 channel=15
					37, 33, 27, -60, 44, 64, -4, 36, 55,
					-- layer=1 filter=78 channel=16
					-36, -50, -5, -130, -18, 40, -108, -2, 49,
					-- layer=1 filter=78 channel=17
					23, -5, -26, 35, -31, -40, 4, -46, -56,
					-- layer=1 filter=78 channel=18
					-28, -34, 16, -51, -74, -39, -22, -7, -37,
					-- layer=1 filter=78 channel=19
					45, 14, -8, 11, 26, -19, -25, -31, -44,
					-- layer=1 filter=78 channel=20
					-8, -24, -7, -68, -7, 20, -11, -6, 43,
					-- layer=1 filter=78 channel=21
					-7, 3, 26, -38, -18, -27, -1, -26, -39,
					-- layer=1 filter=78 channel=22
					43, 73, 7, 71, 74, -8, 42, 27, -35,
					-- layer=1 filter=78 channel=23
					28, 26, 10, 58, 45, 33, 69, 25, 16,
					-- layer=1 filter=78 channel=24
					39, 32, 4, 51, 32, -3, -18, -42, -38,
					-- layer=1 filter=78 channel=25
					-95, -77, 42, -130, 8, 49, 0, 56, 9,
					-- layer=1 filter=78 channel=26
					0, -51, -2, -86, -84, -28, -78, -5, 0,
					-- layer=1 filter=78 channel=27
					0, 26, 17, -32, -12, 19, -37, -34, 26,
					-- layer=1 filter=78 channel=28
					14, 29, 16, -2, 44, 15, -11, 30, 1,
					-- layer=1 filter=78 channel=29
					-2, -29, 0, -10, -42, 16, -50, 25, 34,
					-- layer=1 filter=78 channel=30
					-2, 3, -25, 45, 30, -37, 34, 23, -25,
					-- layer=1 filter=78 channel=31
					-6, -9, -11, -9, -4, -10, 9, -12, 8,
					-- layer=1 filter=78 channel=32
					-57, -46, 36, -82, 58, 34, -46, 55, 28,
					-- layer=1 filter=78 channel=33
					27, -3, -26, 47, -46, -18, 7, -58, -23,
					-- layer=1 filter=78 channel=34
					-80, -24, 49, -141, 17, 41, 7, 28, -47,
					-- layer=1 filter=78 channel=35
					-10, 0, -11, -15, -5, -9, -1, -10, 33,
					-- layer=1 filter=78 channel=36
					-17, -24, -9, 1, 5, 9, 46, 5, 32,
					-- layer=1 filter=78 channel=37
					-70, -80, 8, -127, -19, 40, -63, 10, 0,
					-- layer=1 filter=78 channel=38
					-19, -60, -50, -40, -37, -42, -6, -63, 2,
					-- layer=1 filter=78 channel=39
					13, 20, 14, 73, 47, 16, 49, 26, 28,
					-- layer=1 filter=78 channel=40
					39, 18, -18, 49, 44, -24, 24, 17, -51,
					-- layer=1 filter=78 channel=41
					-2, -24, -70, 30, -8, -41, 47, 9, -24,
					-- layer=1 filter=78 channel=42
					-36, 27, 25, 29, 61, 32, 4, 21, 54,
					-- layer=1 filter=78 channel=43
					-67, -72, 23, -110, -88, -27, -48, 14, -55,
					-- layer=1 filter=78 channel=44
					-5, -3, 0, -51, 33, 55, 1, 65, 52,
					-- layer=1 filter=78 channel=45
					-33, -66, 8, -95, -83, -43, -60, -42, -37,
					-- layer=1 filter=78 channel=46
					43, 25, -33, 106, 44, -19, 58, -6, -15,
					-- layer=1 filter=78 channel=47
					-61, -80, 14, -115, 0, -9, 2, 10, -39,
					-- layer=1 filter=78 channel=48
					19, 4, -29, 52, -2, -17, 51, -20, -49,
					-- layer=1 filter=78 channel=49
					37, 33, 1, -18, 13, 51, 5, -14, 58,
					-- layer=1 filter=78 channel=50
					-8, -26, -64, 54, 4, -37, 31, -16, -66,
					-- layer=1 filter=78 channel=51
					-3, -22, -21, -5, -43, -29, -15, -36, -24,
					-- layer=1 filter=78 channel=52
					7, 0, 38, -115, -32, -47, -45, 4, -65,
					-- layer=1 filter=78 channel=53
					47, 61, 19, 40, 49, -8, 2, -23, -35,
					-- layer=1 filter=78 channel=54
					-20, -20, -48, 34, 4, -39, 59, 2, -33,
					-- layer=1 filter=78 channel=55
					22, -41, -61, 18, -22, -81, 32, -67, -18,
					-- layer=1 filter=78 channel=56
					-54, 7, 21, -42, -16, 32, -117, -34, 46,
					-- layer=1 filter=78 channel=57
					42, 3, -23, -12, -10, 3, -66, -14, 29,
					-- layer=1 filter=78 channel=58
					-17, -27, -38, 11, -1, -42, 20, -7, -44,
					-- layer=1 filter=78 channel=59
					37, 61, -27, 38, 41, 1, 1, -12, -38,
					-- layer=1 filter=78 channel=60
					9, -84, -37, -19, -67, -74, 25, 28, -26,
					-- layer=1 filter=78 channel=61
					53, 71, 32, 19, 49, -4, 7, -14, -16,
					-- layer=1 filter=78 channel=62
					3, -28, 5, -40, -33, -37, -10, -44, -72,
					-- layer=1 filter=78 channel=63
					42, 42, -1, 87, 63, -12, 59, 26, -12,
					-- layer=1 filter=79 channel=0
					-4, 24, -2, 42, 21, 21, -13, -33, -57,
					-- layer=1 filter=79 channel=1
					14, 13, 5, -16, -6, -39, 3, 2, 7,
					-- layer=1 filter=79 channel=2
					26, 31, 27, 29, 19, 30, 2, -23, -21,
					-- layer=1 filter=79 channel=3
					-3, 18, 8, -30, -3, 1, -25, 4, -3,
					-- layer=1 filter=79 channel=4
					-3, -10, -1, -18, 3, -8, 5, -1, -10,
					-- layer=1 filter=79 channel=5
					19, -4, -11, 6, 21, 11, 0, 0, 15,
					-- layer=1 filter=79 channel=6
					-26, -29, -38, 4, -7, 26, 19, 6, 19,
					-- layer=1 filter=79 channel=7
					-2, 5, -4, -9, -21, -15, 14, -4, 9,
					-- layer=1 filter=79 channel=8
					-13, 0, -13, 0, 0, -15, -11, 5, 13,
					-- layer=1 filter=79 channel=9
					12, -12, 27, -35, -32, -8, -53, -48, -31,
					-- layer=1 filter=79 channel=10
					23, 16, 17, -28, -23, -20, 25, -5, 7,
					-- layer=1 filter=79 channel=11
					-9, -23, -20, 13, -19, -22, 27, 20, 17,
					-- layer=1 filter=79 channel=12
					8, -2, -24, 0, 3, -16, 3, 19, 12,
					-- layer=1 filter=79 channel=13
					-5, 2, 13, 4, -3, 10, 6, 7, 2,
					-- layer=1 filter=79 channel=14
					28, 47, 15, 72, 86, 73, 55, 40, 10,
					-- layer=1 filter=79 channel=15
					3, -27, -47, -43, -48, -63, -3, -49, -89,
					-- layer=1 filter=79 channel=16
					-11, -7, -30, 9, 21, -3, 45, 20, 37,
					-- layer=1 filter=79 channel=17
					-25, -18, 14, -56, -39, -3, 3, -18, 18,
					-- layer=1 filter=79 channel=18
					-22, -32, -19, 18, 29, 0, -22, -3, 7,
					-- layer=1 filter=79 channel=19
					-17, -14, -14, -10, -4, -2, 0, -7, 4,
					-- layer=1 filter=79 channel=20
					-6, -15, -26, -26, -1, -26, 12, 17, -2,
					-- layer=1 filter=79 channel=21
					-20, -25, -22, 18, -1, 8, 5, 19, 17,
					-- layer=1 filter=79 channel=22
					-30, -12, 27, 19, 20, 40, -52, -55, -49,
					-- layer=1 filter=79 channel=23
					13, 3, -17, 11, 18, -9, -19, -51, -42,
					-- layer=1 filter=79 channel=24
					17, 12, 10, -17, -35, -23, 12, 10, 10,
					-- layer=1 filter=79 channel=25
					-6, -35, -5, 53, 53, 34, 20, 26, 34,
					-- layer=1 filter=79 channel=26
					-26, -36, -21, 4, 6, 13, 6, 5, 8,
					-- layer=1 filter=79 channel=27
					-21, 10, -15, -26, -23, -10, 12, 14, 17,
					-- layer=1 filter=79 channel=28
					-26, -22, -24, -7, 18, 8, 19, 26, 25,
					-- layer=1 filter=79 channel=29
					-25, -15, 4, -10, 17, 8, 10, 32, 17,
					-- layer=1 filter=79 channel=30
					2, 14, 21, -4, 8, -6, -11, 0, -3,
					-- layer=1 filter=79 channel=31
					-12, 13, -10, -2, -7, 1, 5, 6, -13,
					-- layer=1 filter=79 channel=32
					16, -42, -2, 21, -53, -38, -15, -15, -26,
					-- layer=1 filter=79 channel=33
					-18, 18, -10, -17, -10, -12, 16, 17, 0,
					-- layer=1 filter=79 channel=34
					49, -4, 18, 54, 54, 43, 45, 30, 20,
					-- layer=1 filter=79 channel=35
					18, 29, -8, -21, -9, -5, -5, -18, -14,
					-- layer=1 filter=79 channel=36
					20, 16, -21, -23, -14, -24, -8, 0, -31,
					-- layer=1 filter=79 channel=37
					0, 6, -13, 87, 52, 42, 17, 11, 39,
					-- layer=1 filter=79 channel=38
					17, 0, 11, -24, -23, -9, -25, -27, -8,
					-- layer=1 filter=79 channel=39
					44, 13, -21, -48, -16, -51, -5, -84, -101,
					-- layer=1 filter=79 channel=40
					-23, -9, 27, 4, -1, 45, -26, -62, -31,
					-- layer=1 filter=79 channel=41
					-1, -4, 12, 3, 17, -14, -9, -7, 5,
					-- layer=1 filter=79 channel=42
					11, 5, -29, 32, 6, 14, 7, -56, -84,
					-- layer=1 filter=79 channel=43
					-11, -3, -26, 46, 33, 45, 25, 31, 28,
					-- layer=1 filter=79 channel=44
					-20, -14, -41, 38, 14, 21, 4, 20, 4,
					-- layer=1 filter=79 channel=45
					3, 0, -6, 33, 53, 35, 5, 13, 29,
					-- layer=1 filter=79 channel=46
					24, 15, 20, -1, 16, -10, -34, -21, -43,
					-- layer=1 filter=79 channel=47
					-8, -10, -16, 53, 66, 52, 29, 32, 22,
					-- layer=1 filter=79 channel=48
					13, 26, -2, 13, 1, 0, 13, -7, -2,
					-- layer=1 filter=79 channel=49
					-22, -39, -50, -91, -64, -86, -9, -76, -92,
					-- layer=1 filter=79 channel=50
					10, 22, 27, 0, -7, 18, -15, 1, 12,
					-- layer=1 filter=79 channel=51
					9, 3, -11, -18, -12, 6, -1, 3, -4,
					-- layer=1 filter=79 channel=52
					95, 52, 73, 42, 35, 43, 39, 24, 54,
					-- layer=1 filter=79 channel=53
					-107, -64, -9, -90, -126, -55, -86, -111, -67,
					-- layer=1 filter=79 channel=54
					9, 31, 19, 14, 22, 20, -5, 0, 0,
					-- layer=1 filter=79 channel=55
					-24, -14, -24, 19, 10, 6, -32, 4, -16,
					-- layer=1 filter=79 channel=56
					20, 22, 17, -4, -3, -11, 0, -7, 3,
					-- layer=1 filter=79 channel=57
					-4, -12, -2, 0, -11, -4, 9, -7, -12,
					-- layer=1 filter=79 channel=58
					-31, -23, -12, 0, 22, -2, -7, 3, -1,
					-- layer=1 filter=79 channel=59
					-35, -60, -5, -43, -74, -34, -61, -69, -21,
					-- layer=1 filter=79 channel=60
					70, 22, 42, 144, 131, 100, 71, 79, 65,
					-- layer=1 filter=79 channel=61
					-86, -81, -45, -113, -108, -94, -89, -87, -51,
					-- layer=1 filter=79 channel=62
					-28, -24, -29, 2, 20, 16, 15, 6, 25,
					-- layer=1 filter=79 channel=63
					22, 7, 34, 18, 21, 38, -23, -42, -48,
					-- layer=1 filter=80 channel=0
					-5, 13, -10, -18, -72, -39, -26, -52, -26,
					-- layer=1 filter=80 channel=1
					13, -17, 5, 19, -12, -21, 11, 1, 4,
					-- layer=1 filter=80 channel=2
					-14, 63, 29, -38, -47, -26, -9, -40, -12,
					-- layer=1 filter=80 channel=3
					-2, -3, 6, 9, -10, 0, 24, -4, -1,
					-- layer=1 filter=80 channel=4
					0, -18, -6, 12, 8, 12, 26, -16, 4,
					-- layer=1 filter=80 channel=5
					-5, -10, 20, -14, -1, 18, 6, 13, 7,
					-- layer=1 filter=80 channel=6
					23, -48, -27, 15, -2, 18, 2, -49, -20,
					-- layer=1 filter=80 channel=7
					-14, -38, -60, -46, -51, -55, -36, -39, -53,
					-- layer=1 filter=80 channel=8
					-29, -54, -33, -18, -35, -32, -5, -47, -45,
					-- layer=1 filter=80 channel=9
					-7, -5, 5, -6, 2, -6, 2, -5, 1,
					-- layer=1 filter=80 channel=10
					11, 2, 8, 3, -44, -9, 39, 26, 0,
					-- layer=1 filter=80 channel=11
					0, 6, -27, 24, 4, -5, 22, -6, -13,
					-- layer=1 filter=80 channel=12
					-10, -16, -5, -20, -16, 0, -9, -18, 1,
					-- layer=1 filter=80 channel=13
					-7, -9, -6, 8, 8, 9, -6, -23, -14,
					-- layer=1 filter=80 channel=14
					11, 28, 54, -33, -80, -36, 3, -25, -1,
					-- layer=1 filter=80 channel=15
					3, -25, 4, 21, 0, -2, 40, 33, 0,
					-- layer=1 filter=80 channel=16
					-10, -22, -10, -41, -23, -23, -27, -40, -11,
					-- layer=1 filter=80 channel=17
					25, 1, 13, 7, -8, -29, 8, -15, 7,
					-- layer=1 filter=80 channel=18
					4, -13, -14, 7, 21, 41, -20, -58, -1,
					-- layer=1 filter=80 channel=19
					9, -10, 6, -4, -5, 19, 0, 4, 20,
					-- layer=1 filter=80 channel=20
					27, -21, 2, 14, 1, 19, 32, 13, -12,
					-- layer=1 filter=80 channel=21
					13, -33, -12, 7, 16, 17, 8, -24, -43,
					-- layer=1 filter=80 channel=22
					-12, 21, 57, -13, -23, -20, -40, -22, -31,
					-- layer=1 filter=80 channel=23
					8, 27, -11, -8, 9, -1, 29, 11, -8,
					-- layer=1 filter=80 channel=24
					17, -3, 21, 5, -7, 8, 3, -12, 37,
					-- layer=1 filter=80 channel=25
					2, -29, 5, -10, 2, 33, -68, -50, -12,
					-- layer=1 filter=80 channel=26
					-5, -27, -31, -39, -35, 5, -37, -45, -30,
					-- layer=1 filter=80 channel=27
					-22, -25, -3, -14, -15, -16, 7, -11, -2,
					-- layer=1 filter=80 channel=28
					-3, -26, -40, -2, -14, -16, 2, -23, -27,
					-- layer=1 filter=80 channel=29
					18, -37, -14, -15, -24, -7, -14, -25, -10,
					-- layer=1 filter=80 channel=30
					6, 21, 11, 6, -11, 2, -21, -15, -6,
					-- layer=1 filter=80 channel=31
					10, -8, 10, -10, -14, 7, 10, 16, -1,
					-- layer=1 filter=80 channel=32
					24, 49, 53, 16, -32, 26, -8, -49, -4,
					-- layer=1 filter=80 channel=33
					8, 15, 14, 25, 0, -1, 23, -4, 13,
					-- layer=1 filter=80 channel=34
					-29, -13, 2, -15, 10, 52, -120, -69, -29,
					-- layer=1 filter=80 channel=35
					8, 6, -4, -44, -73, -41, -28, -3, -21,
					-- layer=1 filter=80 channel=36
					27, -1, 1, 13, -12, 21, 28, -3, -8,
					-- layer=1 filter=80 channel=37
					31, -31, -3, -29, -22, 41, -48, -47, 11,
					-- layer=1 filter=80 channel=38
					18, 37, 11, -8, -16, -9, 4, 9, 6,
					-- layer=1 filter=80 channel=39
					23, 17, 0, 7, -21, -35, 58, 20, -5,
					-- layer=1 filter=80 channel=40
					7, 48, 44, -11, 9, 0, -9, -14, -1,
					-- layer=1 filter=80 channel=41
					-9, 0, 0, 4, -4, -12, -4, -18, 0,
					-- layer=1 filter=80 channel=42
					3, 58, 18, -37, -39, -58, 20, 22, -6,
					-- layer=1 filter=80 channel=43
					5, -26, -28, -3, 10, 10, -31, -80, -28,
					-- layer=1 filter=80 channel=44
					8, -17, -13, -21, 4, 37, -12, -13, 5,
					-- layer=1 filter=80 channel=45
					37, -32, 8, -5, -2, 3, 2, -40, -3,
					-- layer=1 filter=80 channel=46
					-50, -39, -34, -53, -70, -19, -56, -57, -37,
					-- layer=1 filter=80 channel=47
					-2, -25, 13, -30, 10, 41, -59, -55, -6,
					-- layer=1 filter=80 channel=48
					11, 5, 0, 0, 22, 19, -3, -6, 20,
					-- layer=1 filter=80 channel=49
					17, 19, -8, 48, -1, 6, 78, 56, 5,
					-- layer=1 filter=80 channel=50
					23, 2, 29, 9, 7, 5, 0, 24, 13,
					-- layer=1 filter=80 channel=51
					0, 7, 16, 20, 0, 15, 8, 1, 4,
					-- layer=1 filter=80 channel=52
					-33, -36, -36, 8, -11, 47, -123, -106, -38,
					-- layer=1 filter=80 channel=53
					-23, 0, 51, 17, 7, -23, 1, 26, -36,
					-- layer=1 filter=80 channel=54
					7, 17, 18, 13, -1, 19, 6, -5, 7,
					-- layer=1 filter=80 channel=55
					0, 25, 1, -10, 16, 27, 6, -30, -1,
					-- layer=1 filter=80 channel=56
					-31, -20, -27, -22, -14, -26, 0, 8, -10,
					-- layer=1 filter=80 channel=57
					-3, -19, -1, 0, -6, 5, 6, -6, 29,
					-- layer=1 filter=80 channel=58
					-7, -38, -4, -15, -9, 10, -29, -32, 8,
					-- layer=1 filter=80 channel=59
					-5, -23, 18, 23, 22, 7, 32, -19, -34,
					-- layer=1 filter=80 channel=60
					-13, 9, 49, 27, 0, 72, -74, -67, -7,
					-- layer=1 filter=80 channel=61
					2, -12, 26, 51, 9, 17, 28, 39, -24,
					-- layer=1 filter=80 channel=62
					33, -32, -13, 7, 0, 0, 31, -22, -15,
					-- layer=1 filter=80 channel=63
					-6, 16, 45, -22, -45, -18, -28, -27, -28,
					-- layer=1 filter=81 channel=0
					23, 4, 20, -30, -37, -4, 13, -10, 5,
					-- layer=1 filter=81 channel=1
					-6, 2, 8, -20, -19, 0, -20, -27, 10,
					-- layer=1 filter=81 channel=2
					21, -3, 40, 5, 1, 1, 4, 9, 3,
					-- layer=1 filter=81 channel=3
					-30, -7, -4, -24, -12, -1, -17, -4, 7,
					-- layer=1 filter=81 channel=4
					-9, 11, 36, -14, -19, -2, -18, -5, -34,
					-- layer=1 filter=81 channel=5
					19, 7, -1, -3, -13, -31, -13, -3, -12,
					-- layer=1 filter=81 channel=6
					-44, -53, -43, -68, -112, -82, -88, -86, -89,
					-- layer=1 filter=81 channel=7
					2, 15, 19, -4, 26, 31, 3, 3, 17,
					-- layer=1 filter=81 channel=8
					2, -6, 1, 8, 0, 4, -24, 9, 9,
					-- layer=1 filter=81 channel=9
					23, -5, 8, -2, -2, -16, -10, -23, 0,
					-- layer=1 filter=81 channel=10
					10, 3, 25, -3, -4, 6, -15, -15, -16,
					-- layer=1 filter=81 channel=11
					36, 28, 46, 85, 54, 48, 42, 44, 34,
					-- layer=1 filter=81 channel=12
					-28, -6, -3, -19, -6, -8, 3, 14, 7,
					-- layer=1 filter=81 channel=13
					-10, -1, -2, -19, -8, 10, 12, 13, 24,
					-- layer=1 filter=81 channel=14
					0, -8, -6, 12, -4, -13, 26, -9, -6,
					-- layer=1 filter=81 channel=15
					29, 42, 35, -18, 3, 33, -2, -10, -19,
					-- layer=1 filter=81 channel=16
					-10, 13, 50, 22, -5, 15, -15, 1, 6,
					-- layer=1 filter=81 channel=17
					14, 20, 15, -10, 2, -5, -17, 1, -2,
					-- layer=1 filter=81 channel=18
					-32, -36, -24, -80, -83, -62, -44, -84, -58,
					-- layer=1 filter=81 channel=19
					7, 1, 8, -1, -25, 1, -45, -18, -27,
					-- layer=1 filter=81 channel=20
					5, 21, 19, -19, -9, 2, -26, 2, -6,
					-- layer=1 filter=81 channel=21
					-78, -67, -57, -69, -60, -49, -4, -51, -29,
					-- layer=1 filter=81 channel=22
					33, -9, -13, -2, -23, -45, 3, 12, 8,
					-- layer=1 filter=81 channel=23
					42, 36, 8, 25, 33, 7, 53, 24, 21,
					-- layer=1 filter=81 channel=24
					13, 12, 33, -8, 0, -1, -23, -6, -25,
					-- layer=1 filter=81 channel=25
					-65, -97, -59, -75, -74, -69, -101, -38, -71,
					-- layer=1 filter=81 channel=26
					-3, -25, -12, -18, -48, -48, -49, -34, -20,
					-- layer=1 filter=81 channel=27
					5, -5, 26, 2, -10, 14, -2, 1, -2,
					-- layer=1 filter=81 channel=28
					-37, -43, -20, -19, -13, -11, 9, 3, 10,
					-- layer=1 filter=81 channel=29
					1, -17, 1, -17, -14, -4, -38, -19, 2,
					-- layer=1 filter=81 channel=30
					23, 10, 0, -6, 9, 11, 19, 14, 19,
					-- layer=1 filter=81 channel=31
					9, 14, 6, 5, -8, 1, -3, -1, -3,
					-- layer=1 filter=81 channel=32
					22, 4, -1, -46, -50, -29, -82, 11, 2,
					-- layer=1 filter=81 channel=33
					23, 8, 0, 2, -21, -14, -41, -27, -5,
					-- layer=1 filter=81 channel=34
					-104, -103, -72, -109, -130, -99, -58, -58, -78,
					-- layer=1 filter=81 channel=35
					7, 16, 16, -7, -13, 26, 3, 8, 10,
					-- layer=1 filter=81 channel=36
					15, 36, 12, 8, 20, 18, 17, 23, -10,
					-- layer=1 filter=81 channel=37
					-104, -106, -86, -98, -91, -124, -51, -85, -84,
					-- layer=1 filter=81 channel=38
					22, 22, 13, 18, 6, 9, 19, 28, 15,
					-- layer=1 filter=81 channel=39
					28, 46, 16, 17, 23, 19, 28, 24, -16,
					-- layer=1 filter=81 channel=40
					21, 3, 6, 18, 24, 0, 9, 12, 30,
					-- layer=1 filter=81 channel=41
					19, 10, 25, -6, 28, 29, -9, 1, 3,
					-- layer=1 filter=81 channel=42
					12, 23, 50, 31, 2, 49, 53, -9, 0,
					-- layer=1 filter=81 channel=43
					-158, -129, -119, -142, -99, -145, -66, -119, -95,
					-- layer=1 filter=81 channel=44
					-15, 7, 12, 0, -36, -1, -31, -7, -7,
					-- layer=1 filter=81 channel=45
					-104, -76, -60, -82, -153, -122, -30, -115, -101,
					-- layer=1 filter=81 channel=46
					2, 5, -6, 1, 24, 5, -13, 10, -2,
					-- layer=1 filter=81 channel=47
					-56, -80, -58, -57, -94, -102, -67, -27, -107,
					-- layer=1 filter=81 channel=48
					18, 22, 0, -1, -4, 0, 14, 15, 6,
					-- layer=1 filter=81 channel=49
					15, 32, 32, 0, 0, 11, 21, -16, -15,
					-- layer=1 filter=81 channel=50
					0, 21, -4, 20, 2, 1, -4, 6, 25,
					-- layer=1 filter=81 channel=51
					17, 20, 27, -8, -8, 16, 1, -1, -2,
					-- layer=1 filter=81 channel=52
					-127, -108, -83, -101, -144, -141, -52, -43, -59,
					-- layer=1 filter=81 channel=53
					12, 12, -11, -27, -18, -24, -39, -56, -7,
					-- layer=1 filter=81 channel=54
					1, 25, 18, 2, 17, 26, -8, 6, 18,
					-- layer=1 filter=81 channel=55
					-2, 5, 3, 6, 16, -7, 38, -9, 22,
					-- layer=1 filter=81 channel=56
					0, 14, 22, 14, 4, 11, -2, 6, 14,
					-- layer=1 filter=81 channel=57
					12, 15, 24, -10, -19, -6, -22, -10, -23,
					-- layer=1 filter=81 channel=58
					-1, -8, 11, -31, -34, -12, -33, 3, -8,
					-- layer=1 filter=81 channel=59
					-14, -36, -19, -54, -54, -37, -52, -71, -24,
					-- layer=1 filter=81 channel=60
					-59, -117, -114, -111, -110, -98, 2, -68, -80,
					-- layer=1 filter=81 channel=61
					-20, -57, -38, -62, -72, -68, -32, -108, -33,
					-- layer=1 filter=81 channel=62
					-119, -97, -96, -116, -133, -64, -34, -78, -67,
					-- layer=1 filter=81 channel=63
					15, -16, 6, 8, -8, -22, 10, 5, -15,
					-- layer=1 filter=82 channel=0
					21, -19, -14, 19, -17, -10, -17, -26, -27,
					-- layer=1 filter=82 channel=1
					-8, 6, 7, -9, 28, -21, -60, -5, -27,
					-- layer=1 filter=82 channel=2
					18, 19, -6, -14, 14, 4, -44, -39, -66,
					-- layer=1 filter=82 channel=3
					-30, 1, -15, 4, 2, 2, -15, -32, 2,
					-- layer=1 filter=82 channel=4
					-5, 10, -38, 5, -19, -33, 8, -24, -36,
					-- layer=1 filter=82 channel=5
					-15, -21, -3, 6, -23, -5, -5, -20, 9,
					-- layer=1 filter=82 channel=6
					-46, 12, 17, -47, 58, -13, -30, 4, 30,
					-- layer=1 filter=82 channel=7
					-1, -13, -3, 0, 20, -22, -7, 14, -27,
					-- layer=1 filter=82 channel=8
					-21, 11, 11, -49, 19, -21, -17, -1, -19,
					-- layer=1 filter=82 channel=9
					-46, 23, 30, -125, 49, 19, -75, 34, 1,
					-- layer=1 filter=82 channel=10
					9, 8, -31, 9, -13, -9, 8, -32, -38,
					-- layer=1 filter=82 channel=11
					62, 8, -10, 62, -45, 18, 48, -25, 24,
					-- layer=1 filter=82 channel=12
					-33, -33, -19, 0, -30, -9, 27, -35, 12,
					-- layer=1 filter=82 channel=13
					-44, 0, 8, -48, -8, 6, -23, 29, 3,
					-- layer=1 filter=82 channel=14
					3, 28, -19, -2, -1, -8, -82, -54, -72,
					-- layer=1 filter=82 channel=15
					25, -34, -46, 67, -79, 21, 41, -119, 9,
					-- layer=1 filter=82 channel=16
					43, 46, 7, 36, 17, -23, 36, -18, 0,
					-- layer=1 filter=82 channel=17
					-64, -4, -20, -63, 7, -10, -56, 19, -46,
					-- layer=1 filter=82 channel=18
					-51, -13, -24, -76, -10, -30, -7, -7, 6,
					-- layer=1 filter=82 channel=19
					-27, -5, -8, -55, -5, -40, -11, -26, -21,
					-- layer=1 filter=82 channel=20
					-2, 11, -53, 22, -22, -29, 23, -25, -29,
					-- layer=1 filter=82 channel=21
					-65, 28, 18, -91, 28, 19, -37, 41, 31,
					-- layer=1 filter=82 channel=22
					-21, 41, 42, -81, 32, 51, -46, 23, 22,
					-- layer=1 filter=82 channel=23
					53, -32, 38, 40, -78, 28, 46, -73, 41,
					-- layer=1 filter=82 channel=24
					4, -10, -14, -20, 0, -30, -46, -27, -40,
					-- layer=1 filter=82 channel=25
					40, 13, -30, 12, 55, -39, 18, 10, 25,
					-- layer=1 filter=82 channel=26
					-2, 5, -8, -23, 17, -37, 13, 17, -8,
					-- layer=1 filter=82 channel=27
					8, 13, 13, -14, 14, 0, 9, 28, -1,
					-- layer=1 filter=82 channel=28
					-25, 0, 15, -15, 13, 31, 1, 17, 31,
					-- layer=1 filter=82 channel=29
					-7, 26, -7, -19, 43, -13, 4, 26, 11,
					-- layer=1 filter=82 channel=30
					17, -18, 22, 14, -29, 19, 28, -29, 13,
					-- layer=1 filter=82 channel=31
					-14, -10, 2, 6, 0, 9, 9, 7, 5,
					-- layer=1 filter=82 channel=32
					40, 117, -13, 18, 187, 24, 15, 56, 20,
					-- layer=1 filter=82 channel=33
					-17, 35, -5, -26, 14, -24, -52, 21, -47,
					-- layer=1 filter=82 channel=34
					9, -22, -42, -17, -27, -25, 40, -1, 28,
					-- layer=1 filter=82 channel=35
					30, 19, -12, 25, 8, 12, 3, -9, -22,
					-- layer=1 filter=82 channel=36
					10, 33, -16, 14, 15, 3, 44, -16, -26,
					-- layer=1 filter=82 channel=37
					15, 27, -38, -6, 25, -25, 28, -23, 23,
					-- layer=1 filter=82 channel=38
					19, 5, -22, 5, -25, -19, 6, -18, -26,
					-- layer=1 filter=82 channel=39
					20, -23, -15, 50, -57, 17, 30, -90, -3,
					-- layer=1 filter=82 channel=40
					14, 45, 10, -44, 41, 19, -81, 12, 12,
					-- layer=1 filter=82 channel=41
					-20, -13, -19, -12, -10, -25, -17, -13, -50,
					-- layer=1 filter=82 channel=42
					63, -60, 0, 71, -50, 44, 29, -91, -14,
					-- layer=1 filter=82 channel=43
					-34, 25, -6, -41, 20, -23, 15, 5, 37,
					-- layer=1 filter=82 channel=44
					33, -25, -76, 32, -6, 10, 71, -34, 4,
					-- layer=1 filter=82 channel=45
					-13, 24, 5, -30, 20, -25, 17, -26, 41,
					-- layer=1 filter=82 channel=46
					4, 18, 43, 42, 33, 29, 9, 51, 51,
					-- layer=1 filter=82 channel=47
					5, -19, -55, -11, 2, -45, 32, -9, 4,
					-- layer=1 filter=82 channel=48
					-25, 7, -3, -39, 12, -23, 6, 18, 0,
					-- layer=1 filter=82 channel=49
					49, -17, -28, 83, -60, 30, 73, -92, 3,
					-- layer=1 filter=82 channel=50
					-8, -5, 11, -14, -1, -9, 4, -13, 0,
					-- layer=1 filter=82 channel=51
					-8, -15, -19, -23, 1, -19, -10, 4, -29,
					-- layer=1 filter=82 channel=52
					21, 0, -55, -23, 5, -41, 32, 8, -11,
					-- layer=1 filter=82 channel=53
					-31, 37, 11, -114, 76, 21, -118, 29, -30,
					-- layer=1 filter=82 channel=54
					-5, 5, -14, -7, -6, -15, -18, 11, -9,
					-- layer=1 filter=82 channel=55
					20, -43, -3, -1, -49, 9, 20, -23, -4,
					-- layer=1 filter=82 channel=56
					22, -7, 0, 27, -13, 0, -4, -29, -35,
					-- layer=1 filter=82 channel=57
					-24, 8, -32, -12, -11, -35, 1, -6, -18,
					-- layer=1 filter=82 channel=58
					-31, -15, -50, -18, -22, -32, -2, -11, -11,
					-- layer=1 filter=82 channel=59
					-124, 49, 23, -174, 73, -19, -82, 48, 21,
					-- layer=1 filter=82 channel=60
					38, -23, 17, 35, 3, -10, 104, 65, 38,
					-- layer=1 filter=82 channel=61
					-107, 50, 41, -149, 53, 36, -162, 29, 29,
					-- layer=1 filter=82 channel=62
					-71, 45, 16, -82, 57, 7, -22, 33, 36,
					-- layer=1 filter=82 channel=63
					15, 26, 61, -41, 0, 54, -34, -7, 56,
					-- layer=1 filter=83 channel=0
					14, -4, -2, -55, -53, -36, -40, -32, -61,
					-- layer=1 filter=83 channel=1
					-14, 1, -4, -3, -14, -12, -18, 0, -15,
					-- layer=1 filter=83 channel=2
					63, 60, 72, -67, -44, -39, -31, -16, -44,
					-- layer=1 filter=83 channel=3
					25, -12, -3, 18, -10, -2, 2, -34, -26,
					-- layer=1 filter=83 channel=4
					15, 4, 3, 7, 24, 14, 24, 0, 25,
					-- layer=1 filter=83 channel=5
					-13, -10, 19, 3, -3, 3, 8, 15, 21,
					-- layer=1 filter=83 channel=6
					6, 26, 30, 24, 27, 14, 10, 11, 21,
					-- layer=1 filter=83 channel=7
					0, -21, -30, 5, -1, -10, 30, 13, 0,
					-- layer=1 filter=83 channel=8
					0, -11, -25, 24, -1, -22, 1, 14, -6,
					-- layer=1 filter=83 channel=9
					-17, -24, -21, -42, -20, -33, -2, 16, -2,
					-- layer=1 filter=83 channel=10
					6, 31, 34, -65, -16, -48, -25, -49, -60,
					-- layer=1 filter=83 channel=11
					54, 52, 28, 29, 24, 8, -12, 12, -20,
					-- layer=1 filter=83 channel=12
					11, -1, -22, -1, -13, 2, -18, -12, 2,
					-- layer=1 filter=83 channel=13
					13, 20, 24, 16, 12, 20, 17, 30, 34,
					-- layer=1 filter=83 channel=14
					84, 101, 100, -58, -39, -49, -35, -9, -30,
					-- layer=1 filter=83 channel=15
					-34, -106, -63, -81, -128, -86, -101, -113, -94,
					-- layer=1 filter=83 channel=16
					3, 7, -10, 25, 19, 35, 17, 12, -6,
					-- layer=1 filter=83 channel=17
					-19, -3, -13, -3, -29, -18, -29, -23, -10,
					-- layer=1 filter=83 channel=18
					-11, -24, 0, -37, -31, -10, -15, 5, -17,
					-- layer=1 filter=83 channel=19
					-27, -22, -18, -6, -27, -23, -8, -25, 3,
					-- layer=1 filter=83 channel=20
					-7, -7, 1, 7, -27, 2, -5, -27, 2,
					-- layer=1 filter=83 channel=21
					42, -13, 25, -1, 15, 2, -16, -40, -42,
					-- layer=1 filter=83 channel=22
					-4, -17, 21, -34, -88, -105, -78, -69, -78,
					-- layer=1 filter=83 channel=23
					4, -27, 11, -61, -27, -19, -32, -25, -29,
					-- layer=1 filter=83 channel=24
					-3, -8, -6, -28, -17, -8, -12, -19, -9,
					-- layer=1 filter=83 channel=25
					45, 30, 56, 51, 34, 18, 16, 0, -2,
					-- layer=1 filter=83 channel=26
					-2, -2, -23, 0, -19, -16, 17, 19, 22,
					-- layer=1 filter=83 channel=27
					-13, -2, -5, 3, 8, 0, 22, 4, -10,
					-- layer=1 filter=83 channel=28
					38, 24, 20, 45, 14, 12, 35, 12, 15,
					-- layer=1 filter=83 channel=29
					-19, 2, 0, -2, 6, 12, -3, -8, 12,
					-- layer=1 filter=83 channel=30
					9, 5, 14, 8, 1, 4, 24, 18, 24,
					-- layer=1 filter=83 channel=31
					14, -11, -8, -10, 6, 0, -7, -11, 6,
					-- layer=1 filter=83 channel=32
					-12, 26, 20, -38, -74, -21, -112, -54, -69,
					-- layer=1 filter=83 channel=33
					-23, 3, -4, -40, -27, -39, -14, -14, -16,
					-- layer=1 filter=83 channel=34
					19, 32, 54, -8, -2, 0, -10, 27, -2,
					-- layer=1 filter=83 channel=35
					24, 29, 19, -23, -44, -28, -21, -26, -40,
					-- layer=1 filter=83 channel=36
					20, 15, 22, 8, -3, 8, 11, 7, 0,
					-- layer=1 filter=83 channel=37
					48, 43, 40, 11, 9, 13, 4, 15, 35,
					-- layer=1 filter=83 channel=38
					-1, 38, 15, -14, -19, 1, 2, 19, 10,
					-- layer=1 filter=83 channel=39
					4, -43, -21, -67, -91, -50, -79, -87, -72,
					-- layer=1 filter=83 channel=40
					34, 25, 43, -40, -41, -59, -44, -34, -31,
					-- layer=1 filter=83 channel=41
					-17, -3, -3, 2, -15, 0, 11, -20, 7,
					-- layer=1 filter=83 channel=42
					59, 7, 47, -118, -95, -93, -97, -95, -108,
					-- layer=1 filter=83 channel=43
					53, 21, 23, 27, 1, -8, 15, 0, -11,
					-- layer=1 filter=83 channel=44
					12, -5, 11, 26, -23, 7, -5, -13, -11,
					-- layer=1 filter=83 channel=45
					53, 25, 46, 23, 31, 39, 2, 13, 4,
					-- layer=1 filter=83 channel=46
					-22, -25, -3, -13, -11, -21, 34, 15, 33,
					-- layer=1 filter=83 channel=47
					28, 40, 47, 14, 1, -2, -10, 3, 20,
					-- layer=1 filter=83 channel=48
					-10, 9, 21, -15, 14, 15, 28, 22, 38,
					-- layer=1 filter=83 channel=49
					-70, -94, -81, -80, -137, -97, -110, -135, -116,
					-- layer=1 filter=83 channel=50
					11, 12, 19, 9, -9, 14, 6, 11, 18,
					-- layer=1 filter=83 channel=51
					0, 19, -3, 14, -7, 7, -2, 23, 23,
					-- layer=1 filter=83 channel=52
					46, 26, 59, -14, 26, -1, 16, 27, 9,
					-- layer=1 filter=83 channel=53
					16, -114, -78, -18, -192, -178, -81, -139, -126,
					-- layer=1 filter=83 channel=54
					9, 11, 3, -17, -8, 12, 0, 5, 17,
					-- layer=1 filter=83 channel=55
					55, 13, 6, 29, 19, 22, 45, 12, 9,
					-- layer=1 filter=83 channel=56
					12, 4, -1, -3, -11, 8, 19, -7, -2,
					-- layer=1 filter=83 channel=57
					-25, -22, -18, -10, -12, -13, -8, -10, 20,
					-- layer=1 filter=83 channel=58
					-5, 5, 12, -5, -16, -9, 12, -18, -1,
					-- layer=1 filter=83 channel=59
					-22, -76, -14, -23, -110, -112, -73, -116, -84,
					-- layer=1 filter=83 channel=60
					-2, 11, 7, -33, 15, 0, -49, -54, -60,
					-- layer=1 filter=83 channel=61
					-23, -180, -115, -102, -187, -194, -133, -193, -184,
					-- layer=1 filter=83 channel=62
					28, 1, 23, 18, -24, -28, -5, -34, -36,
					-- layer=1 filter=83 channel=63
					-72, -36, -12, -39, -62, -44, -34, 7, -9,
					-- layer=1 filter=84 channel=0
					-33, -10, -36, -2, -50, -26, -19, -41, -39,
					-- layer=1 filter=84 channel=1
					-17, -15, 2, -19, -8, -2, -22, 2, -5,
					-- layer=1 filter=84 channel=2
					-3, 24, -15, 24, 20, 11, 15, -4, 18,
					-- layer=1 filter=84 channel=3
					-22, -25, -1, 1, 3, -17, -27, -10, -1,
					-- layer=1 filter=84 channel=4
					-25, -29, -23, -26, -34, -33, -32, -27, -32,
					-- layer=1 filter=84 channel=5
					15, -8, -2, -12, 5, -7, 7, 6, -17,
					-- layer=1 filter=84 channel=6
					0, -22, -34, -5, -40, -39, 2, 4, -20,
					-- layer=1 filter=84 channel=7
					23, 13, 13, -9, 8, 7, 29, 23, 7,
					-- layer=1 filter=84 channel=8
					-5, -12, -22, 7, -27, -6, 5, 6, -3,
					-- layer=1 filter=84 channel=9
					-3, 0, 3, -17, -4, -2, -4, -6, -4,
					-- layer=1 filter=84 channel=10
					-11, -18, -7, 14, 7, -4, 0, 6, -3,
					-- layer=1 filter=84 channel=11
					-24, -15, 7, -26, -17, -7, -12, -43, -2,
					-- layer=1 filter=84 channel=12
					-7, 3, 3, -17, -11, 11, -7, -6, 7,
					-- layer=1 filter=84 channel=13
					-8, 5, 1, -6, 1, 6, 9, 11, -3,
					-- layer=1 filter=84 channel=14
					1, 6, -7, 23, -3, -18, 1, 6, 12,
					-- layer=1 filter=84 channel=15
					-8, -17, -37, 0, -11, 2, 10, 37, -9,
					-- layer=1 filter=84 channel=16
					7, 11, -6, -3, 0, 9, -12, -30, -33,
					-- layer=1 filter=84 channel=17
					14, -2, 4, -5, 5, 6, 0, 20, -2,
					-- layer=1 filter=84 channel=18
					-22, -25, -12, 20, -15, -14, 8, -12, -3,
					-- layer=1 filter=84 channel=19
					-24, -26, -1, -23, -32, 2, 4, -12, 4,
					-- layer=1 filter=84 channel=20
					13, -18, 3, -13, 8, 2, 12, 17, 2,
					-- layer=1 filter=84 channel=21
					7, -17, -30, -3, -6, -4, 1, 11, -11,
					-- layer=1 filter=84 channel=22
					-4, -12, 16, -3, -5, 3, -10, 0, 14,
					-- layer=1 filter=84 channel=23
					-10, -11, -36, 5, -7, 2, 17, 0, -9,
					-- layer=1 filter=84 channel=24
					-24, -6, 0, -9, -12, -8, -16, -6, -4,
					-- layer=1 filter=84 channel=25
					-1, -1, 7, 1, 18, 17, 17, 10, 15,
					-- layer=1 filter=84 channel=26
					-38, -30, -25, -39, -32, -8, 10, -22, -6,
					-- layer=1 filter=84 channel=27
					4, -7, 7, 5, -11, 7, 8, 1, 14,
					-- layer=1 filter=84 channel=28
					-4, 20, 9, 16, 28, 9, 21, 26, 11,
					-- layer=1 filter=84 channel=29
					10, -10, 3, 0, 5, 9, 10, -3, 0,
					-- layer=1 filter=84 channel=30
					2, 14, -17, -7, 4, 9, -6, 10, -1,
					-- layer=1 filter=84 channel=31
					0, -8, 5, 6, 0, -1, -2, 11, -11,
					-- layer=1 filter=84 channel=32
					-50, -26, 0, 9, -48, 3, 1, 5, 26,
					-- layer=1 filter=84 channel=33
					-18, 8, 11, -4, -13, 8, 12, 6, 12,
					-- layer=1 filter=84 channel=34
					-2, 23, 7, -3, -2, 18, 19, 13, 38,
					-- layer=1 filter=84 channel=35
					9, 7, 8, 12, 3, 5, 11, 29, 33,
					-- layer=1 filter=84 channel=36
					-11, -24, -18, -17, -4, 1, -10, -8, -13,
					-- layer=1 filter=84 channel=37
					24, -1, 20, 3, 25, 21, 7, 10, 10,
					-- layer=1 filter=84 channel=38
					-9, -7, -23, 7, -13, -2, -1, -1, 13,
					-- layer=1 filter=84 channel=39
					17, -2, -37, -12, -22, -15, 7, 22, -8,
					-- layer=1 filter=84 channel=40
					-8, 22, -1, 13, 32, 13, 14, 18, 5,
					-- layer=1 filter=84 channel=41
					8, -1, -17, 10, -11, -9, -16, -5, 13,
					-- layer=1 filter=84 channel=42
					-2, -13, -43, -7, 0, -5, 23, 18, 15,
					-- layer=1 filter=84 channel=43
					5, -2, -4, 26, -2, -15, 36, 11, 18,
					-- layer=1 filter=84 channel=44
					-11, 12, -5, -2, 6, 10, 6, 20, 11,
					-- layer=1 filter=84 channel=45
					9, -10, -19, 26, -28, -22, 15, 0, -6,
					-- layer=1 filter=84 channel=46
					-37, -43, -26, -30, -38, -30, -31, -26, -33,
					-- layer=1 filter=84 channel=47
					2, 19, 6, 14, 7, 15, 22, 17, 3,
					-- layer=1 filter=84 channel=48
					9, 16, 7, -2, 5, 9, 11, 11, -5,
					-- layer=1 filter=84 channel=49
					-7, -16, -24, -30, 3, 4, -5, 34, -20,
					-- layer=1 filter=84 channel=50
					15, 7, -7, 25, 22, 20, 5, -1, 11,
					-- layer=1 filter=84 channel=51
					16, 10, 13, 11, 11, 23, 9, 9, 3,
					-- layer=1 filter=84 channel=52
					-33, -23, -11, -16, -26, -5, 4, -4, 12,
					-- layer=1 filter=84 channel=53
					4, 4, 9, -27, 28, -19, 5, 15, -17,
					-- layer=1 filter=84 channel=54
					-3, 14, -8, 3, 0, 21, 1, 17, -5,
					-- layer=1 filter=84 channel=55
					-29, -19, -39, -35, -32, -5, -27, 1, -19,
					-- layer=1 filter=84 channel=56
					-49, -36, -26, -40, -44, -27, -6, -27, -5,
					-- layer=1 filter=84 channel=57
					-7, -35, 4, -26, -26, -20, -21, -7, -18,
					-- layer=1 filter=84 channel=58
					-3, -8, -7, 0, 0, -5, 4, -9, -19,
					-- layer=1 filter=84 channel=59
					1, -15, -31, -1, -2, -27, -13, 1, -27,
					-- layer=1 filter=84 channel=60
					-37, -17, -12, -37, -37, -21, 11, -3, -24,
					-- layer=1 filter=84 channel=61
					-4, -8, 4, -1, -13, -18, 16, 36, 11,
					-- layer=1 filter=84 channel=62
					4, -15, -48, 7, -7, -16, 0, 7, -32,
					-- layer=1 filter=84 channel=63
					-2, 1, 13, 19, 12, 28, -15, -16, -3,
					-- layer=1 filter=85 channel=0
					-7, -3, -49, 22, 7, -10, 33, 40, 4,
					-- layer=1 filter=85 channel=1
					2, -6, 15, -8, 17, 4, 8, 8, -8,
					-- layer=1 filter=85 channel=2
					39, 33, -4, 11, 16, 36, 17, 21, 13,
					-- layer=1 filter=85 channel=3
					16, 29, 45, -34, 0, 10, -27, -33, 4,
					-- layer=1 filter=85 channel=4
					11, -25, -32, -3, -7, -12, 12, -23, -23,
					-- layer=1 filter=85 channel=5
					-31, 2, 31, -27, -12, 9, -40, -68, -23,
					-- layer=1 filter=85 channel=6
					9, -2, -23, -17, 36, -33, -13, -22, 0,
					-- layer=1 filter=85 channel=7
					-13, -32, -39, 40, -4, -1, 62, 51, 15,
					-- layer=1 filter=85 channel=8
					30, -10, -29, 25, 26, -24, 51, 7, 7,
					-- layer=1 filter=85 channel=9
					-39, -36, -6, -59, -43, -63, -83, -56, -79,
					-- layer=1 filter=85 channel=10
					18, 10, -14, 18, 4, 32, -3, -9, -10,
					-- layer=1 filter=85 channel=11
					-15, 0, -9, 19, 12, 1, 24, 4, -2,
					-- layer=1 filter=85 channel=12
					7, 12, 19, -14, 3, -3, -20, -4, -3,
					-- layer=1 filter=85 channel=13
					15, 56, 45, -39, 3, 24, -43, 6, 20,
					-- layer=1 filter=85 channel=14
					64, 67, 59, 31, 44, 58, 8, 12, 18,
					-- layer=1 filter=85 channel=15
					-10, 20, 8, 18, 3, -8, -12, 41, 5,
					-- layer=1 filter=85 channel=16
					-10, -20, -39, 23, 27, 1, 44, -2, -18,
					-- layer=1 filter=85 channel=17
					19, 18, 1, -5, 5, 10, 0, 9, -19,
					-- layer=1 filter=85 channel=18
					-3, -16, -6, -37, 14, -42, -2, -33, -15,
					-- layer=1 filter=85 channel=19
					-7, -20, -20, -22, -21, -9, -13, -23, -15,
					-- layer=1 filter=85 channel=20
					-7, -2, -5, 9, -1, 18, -22, 15, 31,
					-- layer=1 filter=85 channel=21
					15, 25, 21, -6, 32, 37, 3, 16, 9,
					-- layer=1 filter=85 channel=22
					-10, -19, 0, -51, -55, -24, -57, -37, -76,
					-- layer=1 filter=85 channel=23
					-29, 17, 1, -4, -17, -1, -38, -61, -33,
					-- layer=1 filter=85 channel=24
					-1, -5, 2, -5, 0, -7, -3, -15, -30,
					-- layer=1 filter=85 channel=25
					33, 10, 21, 27, 54, 6, 4, -2, 25,
					-- layer=1 filter=85 channel=26
					-9, -5, -28, -14, 0, -17, -20, -2, -7,
					-- layer=1 filter=85 channel=27
					13, -8, -6, 35, 22, -7, 19, 34, -5,
					-- layer=1 filter=85 channel=28
					0, 14, 15, 27, 29, 16, 39, 33, 39,
					-- layer=1 filter=85 channel=29
					-14, 0, 0, 5, 16, -4, 0, 1, -7,
					-- layer=1 filter=85 channel=30
					-15, 35, 99, -45, -46, 19, -74, -36, 0,
					-- layer=1 filter=85 channel=31
					-10, -4, 13, -1, 3, 3, -11, 11, -8,
					-- layer=1 filter=85 channel=32
					11, -12, 26, -33, 22, 9, -10, -17, 67,
					-- layer=1 filter=85 channel=33
					8, 12, -1, -18, 27, 0, -8, 2, -10,
					-- layer=1 filter=85 channel=34
					9, 31, 58, -16, 8, 5, -28, -16, 18,
					-- layer=1 filter=85 channel=35
					21, 23, -17, 24, 27, 26, 48, 38, 15,
					-- layer=1 filter=85 channel=36
					3, 34, 14, -27, 1, 4, -24, -3, -3,
					-- layer=1 filter=85 channel=37
					33, 5, 31, 11, 38, 1, 31, -20, -12,
					-- layer=1 filter=85 channel=38
					4, 49, -1, -11, 14, 28, -31, -5, 8,
					-- layer=1 filter=85 channel=39
					-16, 4, -19, 13, -32, 11, -47, -46, -31,
					-- layer=1 filter=85 channel=40
					39, 16, 13, -9, -14, 2, -15, -12, -28,
					-- layer=1 filter=85 channel=41
					22, 42, 63, -13, -14, 28, -60, -30, -21,
					-- layer=1 filter=85 channel=42
					0, 14, -4, 42, -6, 29, 16, -2, -5,
					-- layer=1 filter=85 channel=43
					19, 6, 31, 14, 41, 1, 13, -4, 4,
					-- layer=1 filter=85 channel=44
					13, 0, -5, -11, -10, 0, 9, -9, -7,
					-- layer=1 filter=85 channel=45
					24, -12, 2, -17, 21, -10, 16, -31, -8,
					-- layer=1 filter=85 channel=46
					59, 186, 237, -11, 85, 189, 11, 27, 60,
					-- layer=1 filter=85 channel=47
					15, 9, 34, 0, 33, 0, -4, -18, -12,
					-- layer=1 filter=85 channel=48
					-49, 0, 17, -96, -35, -30, -111, -68, -66,
					-- layer=1 filter=85 channel=49
					-19, 2, -45, 7, 2, 15, 2, -12, 32,
					-- layer=1 filter=85 channel=50
					-50, 9, 49, -82, -28, 5, -98, -73, -43,
					-- layer=1 filter=85 channel=51
					-9, 7, 0, -13, 8, 10, 2, -8, -5,
					-- layer=1 filter=85 channel=52
					-35, -7, -6, -16, -59, -45, -43, -68, -51,
					-- layer=1 filter=85 channel=53
					58, -30, 0, -8, -3, -5, 30, 36, 10,
					-- layer=1 filter=85 channel=54
					-25, 21, 44, -64, -19, 24, -97, -67, -35,
					-- layer=1 filter=85 channel=55
					47, 111, 58, -49, -9, 50, -51, -26, -26,
					-- layer=1 filter=85 channel=56
					14, -11, -36, 44, -2, 1, 40, 20, 15,
					-- layer=1 filter=85 channel=57
					-4, -4, -7, 0, 6, -15, 6, -27, -27,
					-- layer=1 filter=85 channel=58
					-22, -2, 10, -30, -22, -19, -43, -38, -9,
					-- layer=1 filter=85 channel=59
					20, -21, 5, -14, 12, -11, 19, 29, 22,
					-- layer=1 filter=85 channel=60
					101, 135, 110, 25, 19, 23, 27, 56, 66,
					-- layer=1 filter=85 channel=61
					3, -8, 20, -9, 13, -1, 9, 22, 16,
					-- layer=1 filter=85 channel=62
					20, -4, 17, -1, 48, 22, 13, 0, 15,
					-- layer=1 filter=85 channel=63
					-80, -41, 4, -116, -123, -35, -136, -108, -133,
					-- layer=1 filter=86 channel=0
					-55, -34, 34, -24, -15, 10, -40, -30, 32,
					-- layer=1 filter=86 channel=1
					-1, -32, 0, 16, -29, 34, -1, 5, 18,
					-- layer=1 filter=86 channel=2
					-17, -60, 0, -40, -79, -20, -39, -46, -23,
					-- layer=1 filter=86 channel=3
					-11, 0, -36, -6, 7, -44, -14, 22, -30,
					-- layer=1 filter=86 channel=4
					-56, 7, 32, -25, 21, 44, -36, 1, 36,
					-- layer=1 filter=86 channel=5
					0, 20, -8, -5, 18, 4, 0, 6, -13,
					-- layer=1 filter=86 channel=6
					39, -45, -14, 42, -41, -35, 46, -15, -31,
					-- layer=1 filter=86 channel=7
					-30, 3, 33, -1, 5, 37, 3, 16, 32,
					-- layer=1 filter=86 channel=8
					-17, -18, 6, 16, -20, 42, 6, 2, 30,
					-- layer=1 filter=86 channel=9
					22, -2, -21, 48, 2, -12, 40, 12, -28,
					-- layer=1 filter=86 channel=10
					-67, 5, -14, -50, 11, 13, -62, 28, -2,
					-- layer=1 filter=86 channel=11
					4, 15, 26, -8, 18, 41, -30, 11, 29,
					-- layer=1 filter=86 channel=12
					1, 1, -10, -5, 10, 7, -17, -1, -3,
					-- layer=1 filter=86 channel=13
					-1, -1, 0, 6, 1, -25, 2, -27, -13,
					-- layer=1 filter=86 channel=14
					-10, -55, -22, -40, -100, -7, -54, -85, -17,
					-- layer=1 filter=86 channel=15
					-59, 88, 53, -111, 81, 29, -89, 66, 47,
					-- layer=1 filter=86 channel=16
					-36, -8, 52, -15, -27, 52, -31, 24, 45,
					-- layer=1 filter=86 channel=17
					20, -45, -6, 39, -49, 13, 29, -25, -10,
					-- layer=1 filter=86 channel=18
					-5, -32, -20, 15, -55, -33, 1, -48, -69,
					-- layer=1 filter=86 channel=19
					-10, -28, 0, -20, -7, 17, -14, -39, -4,
					-- layer=1 filter=86 channel=20
					-36, 20, 14, -53, 16, 21, -55, 24, 33,
					-- layer=1 filter=86 channel=21
					25, -13, -89, 32, 23, -80, 50, 33, -87,
					-- layer=1 filter=86 channel=22
					-2, 7, -44, 4, 2, -50, -6, 59, -32,
					-- layer=1 filter=86 channel=23
					-34, 65, 12, -68, 66, -17, -52, 46, 20,
					-- layer=1 filter=86 channel=24
					-36, -13, 11, -14, -12, 32, -9, -14, 13,
					-- layer=1 filter=86 channel=25
					0, -50, 6, 5, -103, 24, -14, -45, -3,
					-- layer=1 filter=86 channel=26
					-40, -48, 21, -14, -37, 37, 0, -25, 18,
					-- layer=1 filter=86 channel=27
					-5, -9, -9, 15, -5, 9, 5, 15, 13,
					-- layer=1 filter=86 channel=28
					14, 4, -25, 15, 6, -50, 11, 18, -40,
					-- layer=1 filter=86 channel=29
					-2, -31, 5, 9, -39, 15, -2, -28, 24,
					-- layer=1 filter=86 channel=30
					-33, 2, 4, -19, 20, -23, -9, 16, -22,
					-- layer=1 filter=86 channel=31
					5, 9, -5, 6, 2, 13, -8, 0, -12,
					-- layer=1 filter=86 channel=32
					15, 0, 44, 35, -43, 21, 18, 17, 12,
					-- layer=1 filter=86 channel=33
					5, -49, 9, 0, -44, 30, -4, 0, 30,
					-- layer=1 filter=86 channel=34
					-30, -49, -1, -80, -91, -40, -41, -72, -55,
					-- layer=1 filter=86 channel=35
					-18, -39, 26, -16, -11, 28, 1, -16, 12,
					-- layer=1 filter=86 channel=36
					-52, 18, 56, -41, 22, 54, -39, -9, 31,
					-- layer=1 filter=86 channel=37
					5, -33, -17, -2, -97, -26, -71, -31, -51,
					-- layer=1 filter=86 channel=38
					-46, -9, 24, -40, 0, 0, -62, -22, 0,
					-- layer=1 filter=86 channel=39
					-69, 41, 19, -92, 72, 31, -58, 63, 41,
					-- layer=1 filter=86 channel=40
					7, -29, -19, 32, -50, -48, 37, 8, -30,
					-- layer=1 filter=86 channel=41
					4, -2, 9, -1, 11, 26, -1, 3, -1,
					-- layer=1 filter=86 channel=42
					-26, 37, 0, -69, 85, 4, -47, 56, 12,
					-- layer=1 filter=86 channel=43
					50, -42, -48, 28, -30, -85, 13, -25, -90,
					-- layer=1 filter=86 channel=44
					-33, 80, 32, -50, 29, 19, -70, 35, 18,
					-- layer=1 filter=86 channel=45
					18, -37, -49, 48, -38, -102, -20, 20, -76,
					-- layer=1 filter=86 channel=46
					-31, 7, 12, -8, 18, 39, -7, 14, 0,
					-- layer=1 filter=86 channel=47
					-36, -42, -16, -23, -110, -35, -49, -60, -33,
					-- layer=1 filter=86 channel=48
					-2, -2, 29, 5, -36, 18, 0, -23, -5,
					-- layer=1 filter=86 channel=49
					-28, 93, 41, -92, 92, 55, -67, 100, 45,
					-- layer=1 filter=86 channel=50
					-2, 9, -6, 5, -14, 9, -3, -7, -17,
					-- layer=1 filter=86 channel=51
					-17, 0, 1, -16, -17, 18, 0, -18, 2,
					-- layer=1 filter=86 channel=52
					4, -53, -20, -67, -76, -53, -43, -83, -78,
					-- layer=1 filter=86 channel=53
					2, 23, -45, -2, 51, -46, 1, 79, -55,
					-- layer=1 filter=86 channel=54
					6, 6, 12, -4, -14, 19, -7, -12, 3,
					-- layer=1 filter=86 channel=55
					-60, 4, 0, -41, 12, 0, -49, -18, -38,
					-- layer=1 filter=86 channel=56
					-44, 3, 26, -57, 9, 50, -25, 19, 35,
					-- layer=1 filter=86 channel=57
					-33, -28, 7, -23, -4, 21, -27, -9, 15,
					-- layer=1 filter=86 channel=58
					0, -3, 2, 7, -16, 1, -14, -18, -8,
					-- layer=1 filter=86 channel=59
					35, -40, -75, 37, -6, -60, 36, 27, -51,
					-- layer=1 filter=86 channel=60
					11, -51, -9, -59, -25, -84, -55, -92, -72,
					-- layer=1 filter=86 channel=61
					58, 47, -44, 73, 79, -45, 46, 95, -59,
					-- layer=1 filter=86 channel=62
					52, -21, -79, 49, -2, -90, 42, 15, -99,
					-- layer=1 filter=86 channel=63
					4, 15, -18, 10, -1, -18, 7, 44, -9,
					-- layer=1 filter=87 channel=0
					3, 1, -4, 8, 0, 0, 6, -12, -4,
					-- layer=1 filter=87 channel=1
					-17, -13, 8, 1, -10, -1, -7, -9, -9,
					-- layer=1 filter=87 channel=2
					5, -24, -10, 9, -16, -18, -10, 5, -9,
					-- layer=1 filter=87 channel=3
					-22, 2, -19, -4, -3, 2, -12, -9, 10,
					-- layer=1 filter=87 channel=4
					-11, 1, -33, -22, -9, -14, -19, -11, 0,
					-- layer=1 filter=87 channel=5
					-2, 6, 5, -9, -4, 0, -5, -1, 0,
					-- layer=1 filter=87 channel=6
					7, 9, -3, -2, -16, -19, 4, 11, -8,
					-- layer=1 filter=87 channel=7
					7, -19, -27, 4, -8, -10, -12, -8, -5,
					-- layer=1 filter=87 channel=8
					0, 2, -5, -12, -9, -4, -4, -2, -12,
					-- layer=1 filter=87 channel=9
					-4, 4, 7, -10, -8, -2, -17, -7, -28,
					-- layer=1 filter=87 channel=10
					-18, -5, -22, -3, -1, -14, 6, -12, 8,
					-- layer=1 filter=87 channel=11
					-11, -1, -2, -1, -20, 19, -7, 4, -2,
					-- layer=1 filter=87 channel=12
					-18, -13, -13, -17, -14, -19, -19, -7, -14,
					-- layer=1 filter=87 channel=13
					0, 1, 9, -15, 0, 0, -17, -14, -15,
					-- layer=1 filter=87 channel=14
					-13, -3, -29, -11, 3, 4, -9, 4, 15,
					-- layer=1 filter=87 channel=15
					-8, -16, -19, 2, -15, -25, 7, 0, 11,
					-- layer=1 filter=87 channel=16
					14, -8, 0, 0, -17, -15, 4, 8, 7,
					-- layer=1 filter=87 channel=17
					0, -10, 2, 10, 6, 1, -8, -16, -14,
					-- layer=1 filter=87 channel=18
					-11, -9, 13, -12, 3, 2, -8, 0, 10,
					-- layer=1 filter=87 channel=19
					-8, -18, -10, 3, -15, 2, -20, -3, -10,
					-- layer=1 filter=87 channel=20
					-4, -8, -15, 0, -21, -26, -8, -30, -19,
					-- layer=1 filter=87 channel=21
					-7, 11, -14, -12, -12, -4, 4, -6, -2,
					-- layer=1 filter=87 channel=22
					-18, -5, 11, -19, 8, -18, 3, 0, 3,
					-- layer=1 filter=87 channel=23
					-17, -23, -3, -20, -10, -4, 11, -7, 3,
					-- layer=1 filter=87 channel=24
					0, -11, -18, -23, -19, 0, -2, -23, 3,
					-- layer=1 filter=87 channel=25
					-18, 7, -2, -5, -13, -13, -5, -13, -2,
					-- layer=1 filter=87 channel=26
					-9, -17, -20, -8, -12, -19, -20, -9, -12,
					-- layer=1 filter=87 channel=27
					-20, -23, 0, -14, -29, -31, -7, -17, -23,
					-- layer=1 filter=87 channel=28
					-6, -7, -3, -7, -13, -14, -17, -3, -16,
					-- layer=1 filter=87 channel=29
					-17, -23, -23, -7, -23, 4, -12, -16, -18,
					-- layer=1 filter=87 channel=30
					-2, -18, -16, 8, 4, -3, -22, -1, -11,
					-- layer=1 filter=87 channel=31
					7, -8, -12, -8, 0, 12, -5, -14, -8,
					-- layer=1 filter=87 channel=32
					-1, 0, -16, 3, 9, -18, 2, -20, -10,
					-- layer=1 filter=87 channel=33
					-8, 7, 0, -14, -1, 5, -11, -1, -10,
					-- layer=1 filter=87 channel=34
					-23, -17, -9, -14, -11, 2, -13, 5, -22,
					-- layer=1 filter=87 channel=35
					-26, -14, -19, -22, -18, -17, -19, -2, 4,
					-- layer=1 filter=87 channel=36
					-17, -11, -26, 10, -1, -17, 9, -25, 11,
					-- layer=1 filter=87 channel=37
					9, -12, -5, -11, -7, -11, -14, 5, 0,
					-- layer=1 filter=87 channel=38
					3, -5, -16, -14, -1, -14, -6, 6, 4,
					-- layer=1 filter=87 channel=39
					-6, -6, -20, -4, -16, -4, 2, -14, 17,
					-- layer=1 filter=87 channel=40
					-16, -18, -3, -1, -16, -13, -9, -5, 6,
					-- layer=1 filter=87 channel=41
					-18, -2, 5, 10, -4, -13, -6, 7, 1,
					-- layer=1 filter=87 channel=42
					-17, -10, -10, -20, -6, -3, 17, -4, 9,
					-- layer=1 filter=87 channel=43
					10, -5, 0, -9, -17, -1, 0, 10, -1,
					-- layer=1 filter=87 channel=44
					-14, -6, -7, -1, -19, -11, -9, -8, -13,
					-- layer=1 filter=87 channel=45
					-14, 7, 13, -12, -17, 7, -13, -6, 6,
					-- layer=1 filter=87 channel=46
					-12, -13, 5, 11, -8, 9, -1, 7, -17,
					-- layer=1 filter=87 channel=47
					-2, -14, -20, -14, -6, -15, 0, -14, -14,
					-- layer=1 filter=87 channel=48
					8, -15, -23, 7, -5, -5, -14, -10, -15,
					-- layer=1 filter=87 channel=49
					11, -22, -19, 0, -19, -5, 0, -12, 4,
					-- layer=1 filter=87 channel=50
					-1, -3, -5, 1, -7, -20, -22, 6, 0,
					-- layer=1 filter=87 channel=51
					-10, -3, -19, -22, 0, -1, -13, -16, -24,
					-- layer=1 filter=87 channel=52
					-19, -10, 1, -1, -21, 0, -24, 0, 5,
					-- layer=1 filter=87 channel=53
					-14, -11, 11, 5, 6, -16, -7, 10, -23,
					-- layer=1 filter=87 channel=54
					6, -10, -1, -3, -16, -4, -7, -3, 7,
					-- layer=1 filter=87 channel=55
					-15, -2, 5, -5, 5, 6, 5, 0, -16,
					-- layer=1 filter=87 channel=56
					-21, -15, -5, -17, 0, -12, -19, -7, -15,
					-- layer=1 filter=87 channel=57
					-5, -1, -7, -4, -24, -9, -10, 0, 3,
					-- layer=1 filter=87 channel=58
					6, 7, 10, -16, -13, 4, -13, -15, 0,
					-- layer=1 filter=87 channel=59
					2, 4, 0, -9, -6, -7, 2, -17, -15,
					-- layer=1 filter=87 channel=60
					-7, -7, -8, -16, -2, -8, 3, 6, -7,
					-- layer=1 filter=87 channel=61
					-12, 2, 14, -14, -8, 3, -1, 5, -27,
					-- layer=1 filter=87 channel=62
					0, 7, 11, -11, 3, 6, -9, 11, -8,
					-- layer=1 filter=87 channel=63
					-18, -6, -1, -7, 0, 5, -7, -5, 2,
					-- layer=1 filter=88 channel=0
					-21, -8, -20, 3, 21, 36, 32, 18, -17,
					-- layer=1 filter=88 channel=1
					3, 2, -5, 13, -5, -24, -19, -28, -33,
					-- layer=1 filter=88 channel=2
					-16, 1, 31, 28, 70, 42, 21, 22, 14,
					-- layer=1 filter=88 channel=3
					-51, -11, -23, 3, 12, -5, 52, 41, 62,
					-- layer=1 filter=88 channel=4
					22, 46, 6, 27, 26, -11, -23, -33, -8,
					-- layer=1 filter=88 channel=5
					-24, -24, -4, -2, -12, 0, -5, 35, 4,
					-- layer=1 filter=88 channel=6
					16, 25, -11, 15, 25, 10, 11, -11, -11,
					-- layer=1 filter=88 channel=7
					10, 23, 29, 43, 32, 23, 20, 1, -4,
					-- layer=1 filter=88 channel=8
					21, 22, 16, 16, 22, 3, -20, -17, -43,
					-- layer=1 filter=88 channel=9
					1, -25, 4, 36, 19, 28, 36, 17, 36,
					-- layer=1 filter=88 channel=10
					-36, -23, -22, -13, -26, -22, -13, -1, -14,
					-- layer=1 filter=88 channel=11
					4, -1, 11, -7, 2, -12, -5, -8, -2,
					-- layer=1 filter=88 channel=12
					-36, -36, -3, -25, -37, -9, 6, 11, 38,
					-- layer=1 filter=88 channel=13
					-52, -67, -47, -63, -60, -33, -25, -24, 13,
					-- layer=1 filter=88 channel=14
					-3, -9, 41, 13, 63, 55, 45, 19, 10,
					-- layer=1 filter=88 channel=15
					-26, -32, -34, -26, -31, -13, 1, -20, 3,
					-- layer=1 filter=88 channel=16
					47, 26, 4, 36, 28, 6, -62, -44, -53,
					-- layer=1 filter=88 channel=17
					-32, -39, -18, -25, -21, -13, -27, -51, -21,
					-- layer=1 filter=88 channel=18
					23, 8, 2, 21, 26, 25, 7, 21, 8,
					-- layer=1 filter=88 channel=19
					6, 17, 5, 37, 8, 1, -11, -7, 7,
					-- layer=1 filter=88 channel=20
					-28, -36, -27, -50, -73, -56, -42, -62, -47,
					-- layer=1 filter=88 channel=21
					-33, -35, -38, -22, -48, -33, 0, -34, -34,
					-- layer=1 filter=88 channel=22
					-5, 15, 33, 76, 79, 70, 67, 59, 30,
					-- layer=1 filter=88 channel=23
					-4, -3, 4, 35, 54, 56, 40, 61, 29,
					-- layer=1 filter=88 channel=24
					0, 11, 21, 9, 28, -10, 6, -10, -6,
					-- layer=1 filter=88 channel=25
					15, 6, 11, 38, 24, 39, -25, -24, -18,
					-- layer=1 filter=88 channel=26
					18, 14, -7, 6, 11, 7, -28, -40, -56,
					-- layer=1 filter=88 channel=27
					23, 12, 15, 31, 0, 16, 18, -16, -25,
					-- layer=1 filter=88 channel=28
					-36, -21, -11, -12, -4, -5, 42, 41, 52,
					-- layer=1 filter=88 channel=29
					8, 14, -11, 18, 22, 9, -24, -22, -31,
					-- layer=1 filter=88 channel=30
					-31, -48, -39, 2, -17, 13, -15, 5, 12,
					-- layer=1 filter=88 channel=31
					-3, -1, 15, 9, -9, 10, -2, 6, -10,
					-- layer=1 filter=88 channel=32
					-41, -17, -35, -9, -10, 10, -2, 6, 74,
					-- layer=1 filter=88 channel=33
					-36, -7, -13, -9, -2, -24, -15, -31, -20,
					-- layer=1 filter=88 channel=34
					0, 28, 4, 21, 37, 21, -25, -7, -27,
					-- layer=1 filter=88 channel=35
					-31, -6, 14, 21, 12, 8, 18, 23, 25,
					-- layer=1 filter=88 channel=36
					-78, -68, -56, -85, -105, -58, -2, -50, 5,
					-- layer=1 filter=88 channel=37
					22, 15, 12, 21, 37, 40, -14, -11, -30,
					-- layer=1 filter=88 channel=38
					-28, -23, -16, -32, -31, -15, 22, -14, -16,
					-- layer=1 filter=88 channel=39
					-2, -18, 8, 37, 34, 59, 61, 37, 59,
					-- layer=1 filter=88 channel=40
					-10, -37, -14, 22, 37, 46, 14, -4, -15,
					-- layer=1 filter=88 channel=41
					-22, -36, -30, -28, -43, -33, -18, -18, -23,
					-- layer=1 filter=88 channel=42
					-21, -45, -12, 11, 46, 29, 42, 51, 17,
					-- layer=1 filter=88 channel=43
					12, 0, -7, 6, 9, 7, -11, -20, -49,
					-- layer=1 filter=88 channel=44
					17, -33, -11, -5, 0, 21, -71, -41, -36,
					-- layer=1 filter=88 channel=45
					13, 10, 13, 17, 29, 30, 30, 9, 4,
					-- layer=1 filter=88 channel=46
					21, 18, 21, 70, 69, 74, 74, 66, 73,
					-- layer=1 filter=88 channel=47
					-1, -4, 32, 11, 36, 38, -17, -4, -9,
					-- layer=1 filter=88 channel=48
					-1, -6, -29, -3, 19, 7, 23, 36, 25,
					-- layer=1 filter=88 channel=49
					-56, -87, -40, -48, -76, -24, -14, -53, -6,
					-- layer=1 filter=88 channel=50
					-38, -39, -25, -37, -18, -22, -7, -11, 15,
					-- layer=1 filter=88 channel=51
					-24, -10, 5, -8, -12, -27, -11, -37, -6,
					-- layer=1 filter=88 channel=52
					6, 17, 25, 55, 48, 59, 28, -3, -7,
					-- layer=1 filter=88 channel=53
					-75, -70, -13, -32, -17, 0, 7, -14, -73,
					-- layer=1 filter=88 channel=54
					-24, -44, -46, -20, -41, -26, -16, -11, -10,
					-- layer=1 filter=88 channel=55
					-28, -46, -47, -2, -38, -7, 37, 2, 19,
					-- layer=1 filter=88 channel=56
					2, 16, 10, 37, 11, -16, 7, 1, -33,
					-- layer=1 filter=88 channel=57
					30, 31, 25, 21, 1, 6, -6, -33, -37,
					-- layer=1 filter=88 channel=58
					-12, -6, 1, -1, 4, -7, -14, 0, 5,
					-- layer=1 filter=88 channel=59
					9, -8, -26, -33, -49, -25, 29, -36, -45,
					-- layer=1 filter=88 channel=60
					18, 15, 12, 97, 91, 56, 110, 96, 59,
					-- layer=1 filter=88 channel=61
					-64, -45, -17, -38, -45, -26, 29, -19, -22,
					-- layer=1 filter=88 channel=62
					-33, -29, -19, -20, -32, -24, 35, -32, -17,
					-- layer=1 filter=88 channel=63
					48, 38, -4, 70, 85, 66, 68, 65, 59,
					-- layer=1 filter=89 channel=0
					3, -5, -13, -1, -3, 1, -7, -12, -4,
					-- layer=1 filter=89 channel=1
					3, 1, -9, -11, 1, -2, -7, 0, 9,
					-- layer=1 filter=89 channel=2
					9, -3, 9, -11, -5, 4, 0, 0, 2,
					-- layer=1 filter=89 channel=3
					10, -9, -19, 2, -13, -17, 5, -11, 5,
					-- layer=1 filter=89 channel=4
					6, -5, -14, -12, -10, -15, 11, -10, -10,
					-- layer=1 filter=89 channel=5
					6, 0, -2, 7, 2, 0, -13, -1, 2,
					-- layer=1 filter=89 channel=6
					0, 4, -15, 12, 9, -11, 0, -1, -15,
					-- layer=1 filter=89 channel=7
					-7, 8, 10, -8, -11, -4, -3, -10, -5,
					-- layer=1 filter=89 channel=8
					-1, -5, -15, 5, -5, 7, 13, -13, 5,
					-- layer=1 filter=89 channel=9
					-14, 7, 0, 12, -2, -12, -14, -14, 12,
					-- layer=1 filter=89 channel=10
					2, -8, 10, -10, -9, -8, -15, -4, -2,
					-- layer=1 filter=89 channel=11
					-6, -1, -2, 3, -1, -7, 4, 3, -16,
					-- layer=1 filter=89 channel=12
					-6, -7, 13, -2, -4, -16, -15, -9, 1,
					-- layer=1 filter=89 channel=13
					-13, -2, 4, 7, 0, 4, -15, 11, -6,
					-- layer=1 filter=89 channel=14
					-6, -1, 0, -13, -9, -6, -13, 0, -1,
					-- layer=1 filter=89 channel=15
					10, 6, 5, -10, 1, -15, -6, -9, -7,
					-- layer=1 filter=89 channel=16
					-9, 2, 12, -13, -2, 7, -1, 10, -17,
					-- layer=1 filter=89 channel=17
					-12, 2, 1, -3, 5, 5, 7, -14, -10,
					-- layer=1 filter=89 channel=18
					4, -1, 3, 8, 2, -6, -11, -10, 9,
					-- layer=1 filter=89 channel=19
					0, -12, 0, -4, -10, -8, 1, 11, -14,
					-- layer=1 filter=89 channel=20
					-6, -14, -13, 0, -8, -16, -6, 8, 7,
					-- layer=1 filter=89 channel=21
					0, -1, -1, -8, 0, 2, 4, -4, 9,
					-- layer=1 filter=89 channel=22
					-9, 5, -15, 12, -13, 5, -6, -6, -8,
					-- layer=1 filter=89 channel=23
					-5, -4, -8, 0, -2, 4, -14, 5, -15,
					-- layer=1 filter=89 channel=24
					-7, -3, -12, -15, 3, 6, 12, 4, -4,
					-- layer=1 filter=89 channel=25
					10, 1, 10, -12, 4, 5, -2, 10, -10,
					-- layer=1 filter=89 channel=26
					-13, 3, 1, 0, -9, -12, 7, 10, 12,
					-- layer=1 filter=89 channel=27
					-8, -6, -9, 8, 6, 3, 2, -2, -11,
					-- layer=1 filter=89 channel=28
					8, 0, 1, -19, -10, -18, 0, -9, -12,
					-- layer=1 filter=89 channel=29
					-5, 6, 9, -16, 1, 10, -2, -7, -14,
					-- layer=1 filter=89 channel=30
					-13, -18, -11, -8, -11, -16, -12, -1, 4,
					-- layer=1 filter=89 channel=31
					-1, 12, -7, 13, 8, -1, 0, -12, 14,
					-- layer=1 filter=89 channel=32
					0, -5, -14, 9, 7, 14, 0, -10, 3,
					-- layer=1 filter=89 channel=33
					-9, -16, -16, -1, 1, 12, -9, -11, -5,
					-- layer=1 filter=89 channel=34
					-14, 14, 4, -14, -1, 1, -14, -7, -14,
					-- layer=1 filter=89 channel=35
					0, 7, 2, -12, 7, -3, 8, -14, -10,
					-- layer=1 filter=89 channel=36
					12, -11, -1, -11, -6, 9, -6, 10, 0,
					-- layer=1 filter=89 channel=37
					-3, 13, 1, 8, -13, -6, -12, -5, -4,
					-- layer=1 filter=89 channel=38
					-12, -7, 4, -12, 11, -10, -11, 8, -3,
					-- layer=1 filter=89 channel=39
					-2, 10, -1, 5, -11, 6, 10, 3, 6,
					-- layer=1 filter=89 channel=40
					3, -6, -14, -10, 14, -4, -14, -9, 3,
					-- layer=1 filter=89 channel=41
					-5, -15, -1, -9, 12, -7, 5, -11, 7,
					-- layer=1 filter=89 channel=42
					6, -11, 4, 4, 5, -6, -9, -14, -12,
					-- layer=1 filter=89 channel=43
					8, -6, -7, 8, -12, -11, -8, 1, 4,
					-- layer=1 filter=89 channel=44
					12, 6, 14, -8, 0, -7, -7, 0, -10,
					-- layer=1 filter=89 channel=45
					6, -7, 2, 8, 2, 11, -3, 9, -11,
					-- layer=1 filter=89 channel=46
					4, -9, 13, -13, 7, 8, 3, 0, -12,
					-- layer=1 filter=89 channel=47
					13, 1, 7, -9, 0, 12, -13, -9, 3,
					-- layer=1 filter=89 channel=48
					-13, 2, -5, -2, -14, -6, 0, 1, 3,
					-- layer=1 filter=89 channel=49
					-10, -5, 2, -4, -1, -10, 4, -1, 1,
					-- layer=1 filter=89 channel=50
					-13, -8, -18, 9, -6, 0, -10, -3, 13,
					-- layer=1 filter=89 channel=51
					-7, 8, -13, -11, -18, -3, -7, 9, -7,
					-- layer=1 filter=89 channel=52
					5, -6, 13, -7, 4, 4, 9, -11, -1,
					-- layer=1 filter=89 channel=53
					1, 13, 11, 6, 8, -1, -5, -14, -3,
					-- layer=1 filter=89 channel=54
					11, -1, -9, -9, -8, -16, 0, 7, 3,
					-- layer=1 filter=89 channel=55
					11, -12, -6, 1, -13, -7, -4, 8, 6,
					-- layer=1 filter=89 channel=56
					3, -13, -8, 9, -3, -14, 6, -3, -14,
					-- layer=1 filter=89 channel=57
					-11, -10, -18, 0, -9, -10, 0, 4, -4,
					-- layer=1 filter=89 channel=58
					12, 12, -1, -7, 7, 0, 1, -13, -5,
					-- layer=1 filter=89 channel=59
					-7, -6, 13, -4, -10, -13, -10, 13, -15,
					-- layer=1 filter=89 channel=60
					7, 0, -9, 5, 9, 1, 7, -12, 4,
					-- layer=1 filter=89 channel=61
					9, 16, 8, -10, 4, 10, -10, 13, -6,
					-- layer=1 filter=89 channel=62
					9, -7, -6, -12, 2, 12, 3, -4, 14,
					-- layer=1 filter=89 channel=63
					-15, -17, 3, 3, -8, -8, -7, 1, 5,
					-- layer=1 filter=90 channel=0
					-14, 2, 16, 19, 29, -17, -1, -1, 12,
					-- layer=1 filter=90 channel=1
					-2, 16, 5, 17, -9, 6, 3, 10, 8,
					-- layer=1 filter=90 channel=2
					-4, 11, 7, 27, 34, -9, 15, 30, 10,
					-- layer=1 filter=90 channel=3
					-28, -58, -63, -14, -30, -30, 12, -36, -30,
					-- layer=1 filter=90 channel=4
					12, 2, 32, 10, -5, 17, 4, 9, -1,
					-- layer=1 filter=90 channel=5
					-32, -19, -35, 24, 19, -29, 24, 3, -17,
					-- layer=1 filter=90 channel=6
					-18, -16, -31, 19, 43, -12, 18, 30, -12,
					-- layer=1 filter=90 channel=7
					10, 21, 12, 16, -6, 8, -13, -13, 7,
					-- layer=1 filter=90 channel=8
					14, 27, 21, 32, -3, -4, 9, -14, 17,
					-- layer=1 filter=90 channel=9
					-19, 29, -24, 44, 0, -8, 18, 32, 35,
					-- layer=1 filter=90 channel=10
					-37, -9, 18, -5, 0, 15, 10, -14, -10,
					-- layer=1 filter=90 channel=11
					-24, -49, -23, -59, 7, -55, -49, -40, -75,
					-- layer=1 filter=90 channel=12
					-4, -10, -29, -61, 29, -11, -13, -4, -42,
					-- layer=1 filter=90 channel=13
					-32, -46, -59, -52, -27, -60, -45, -41, -40,
					-- layer=1 filter=90 channel=14
					-8, -14, -4, 7, 21, -16, -6, 15, -17,
					-- layer=1 filter=90 channel=15
					-43, -3, -2, 0, 35, 51, 16, 16, 27,
					-- layer=1 filter=90 channel=16
					-3, -49, -13, -29, -14, -15, -39, -10, -8,
					-- layer=1 filter=90 channel=17
					-6, 12, -34, 15, -11, -30, -14, -17, -8,
					-- layer=1 filter=90 channel=18
					-8, -23, -4, 11, 37, -16, 33, 34, 3,
					-- layer=1 filter=90 channel=19
					21, 18, 12, 36, 6, 23, 26, 5, 10,
					-- layer=1 filter=90 channel=20
					-30, -33, -6, -25, 3, 23, -1, 18, 1,
					-- layer=1 filter=90 channel=21
					-37, -22, -61, 11, -9, -15, 12, -2, -9,
					-- layer=1 filter=90 channel=22
					12, 24, -4, 50, -1, -19, 33, 17, 38,
					-- layer=1 filter=90 channel=23
					-50, -8, -10, -61, 38, -39, 2, -23, -17,
					-- layer=1 filter=90 channel=24
					25, 26, 2, 27, 0, 22, -3, 13, 3,
					-- layer=1 filter=90 channel=25
					-45, -65, -16, -19, 48, -18, -14, 32, 0,
					-- layer=1 filter=90 channel=26
					31, -3, 6, 9, 16, -5, 8, 3, 2,
					-- layer=1 filter=90 channel=27
					14, -6, 19, 10, 1, -9, 6, -4, 13,
					-- layer=1 filter=90 channel=28
					-48, -54, -64, -23, -49, -23, -31, -36, -38,
					-- layer=1 filter=90 channel=29
					7, -14, -3, -4, -9, 6, -21, -5, -19,
					-- layer=1 filter=90 channel=30
					-2, 14, -37, -15, 9, -10, -5, -21, -27,
					-- layer=1 filter=90 channel=31
					-9, -10, 12, 9, 5, 6, 0, -5, 3,
					-- layer=1 filter=90 channel=32
					-77, -97, -1, -35, 27, -20, -57, -8, -20,
					-- layer=1 filter=90 channel=33
					9, 3, 0, 9, -19, -5, 4, -13, 5,
					-- layer=1 filter=90 channel=34
					0, -27, -9, 0, 79, -4, 30, 25, 10,
					-- layer=1 filter=90 channel=35
					-15, -15, -4, 16, -1, 0, -23, 0, -18,
					-- layer=1 filter=90 channel=36
					-100, -62, -30, -16, -28, -44, -24, 13, -29,
					-- layer=1 filter=90 channel=37
					12, -42, 18, 7, 48, 30, 8, 50, 22,
					-- layer=1 filter=90 channel=38
					-54, -50, -34, -51, -6, -27, -15, -1, -29,
					-- layer=1 filter=90 channel=39
					-81, -20, -21, -36, 31, -1, 24, 1, 0,
					-- layer=1 filter=90 channel=40
					2, 42, -7, 31, 21, -17, 6, 39, 25,
					-- layer=1 filter=90 channel=41
					-20, 2, -5, 15, 13, -7, -3, 5, -9,
					-- layer=1 filter=90 channel=42
					-21, -4, 10, -26, 42, 16, 3, -8, 11,
					-- layer=1 filter=90 channel=43
					-29, -72, 2, -14, 55, 31, 9, 41, 9,
					-- layer=1 filter=90 channel=44
					-50, -18, 3, -53, 29, 21, 4, 42, 19,
					-- layer=1 filter=90 channel=45
					-4, -63, 7, 28, 51, 26, 6, 49, 17,
					-- layer=1 filter=90 channel=46
					34, 2, -17, 50, 70, 23, 17, 31, 38,
					-- layer=1 filter=90 channel=47
					-12, -63, -6, -16, 64, -11, 7, 45, 6,
					-- layer=1 filter=90 channel=48
					-24, -39, -41, -14, 19, -1, -32, -7, -9,
					-- layer=1 filter=90 channel=49
					-63, 6, 6, -8, 36, 37, 26, 14, 4,
					-- layer=1 filter=90 channel=50
					-48, -41, -68, -28, -39, -45, -16, -23, -47,
					-- layer=1 filter=90 channel=51
					4, 4, -13, -13, 5, -2, 2, -8, -1,
					-- layer=1 filter=90 channel=52
					26, -50, 3, -25, 77, 22, 23, 57, -4,
					-- layer=1 filter=90 channel=53
					-6, 62, -27, 82, 0, 14, 38, 13, 54,
					-- layer=1 filter=90 channel=54
					-62, -24, -45, -51, -25, -34, -26, -2, -22,
					-- layer=1 filter=90 channel=55
					-3, -59, -24, -4, 52, -14, -16, 11, 25,
					-- layer=1 filter=90 channel=56
					4, 19, 27, 5, 18, 13, -2, -14, 13,
					-- layer=1 filter=90 channel=57
					9, 8, 28, 19, 0, 27, 9, 6, 6,
					-- layer=1 filter=90 channel=58
					-10, -32, -8, -9, 11, -5, 0, 23, 0,
					-- layer=1 filter=90 channel=59
					-60, 31, -28, 36, 27, -3, 35, 6, 27,
					-- layer=1 filter=90 channel=60
					-32, -36, -3, -5, 22, -16, 18, 77, 17,
					-- layer=1 filter=90 channel=61
					0, 35, -23, 92, 13, 34, 27, 30, 44,
					-- layer=1 filter=90 channel=62
					-61, -54, -40, 22, 26, 5, 20, 19, -18,
					-- layer=1 filter=90 channel=63
					28, 8, -18, 17, -17, -38, 21, 12, 32,
					-- layer=1 filter=91 channel=0
					2, -2, 0, 19, 15, 14, 10, -24, -22,
					-- layer=1 filter=91 channel=1
					-14, -1, -4, 0, -8, -18, 0, -14, 5,
					-- layer=1 filter=91 channel=2
					22, 6, 32, 37, 45, 32, 27, 22, 4,
					-- layer=1 filter=91 channel=3
					8, -23, -24, -20, -30, -10, -24, -12, -11,
					-- layer=1 filter=91 channel=4
					19, 0, 14, -8, 4, 22, -5, 4, 12,
					-- layer=1 filter=91 channel=5
					0, -9, -15, -9, -20, -37, 22, 7, -9,
					-- layer=1 filter=91 channel=6
					4, 11, 1, 14, 3, -10, 3, -11, -19,
					-- layer=1 filter=91 channel=7
					1, -8, 15, -11, 0, 0, -5, -1, -9,
					-- layer=1 filter=91 channel=8
					-11, -12, 1, -7, 7, 3, -13, -4, 6,
					-- layer=1 filter=91 channel=9
					-43, -11, -32, 0, 10, -25, -11, 0, -12,
					-- layer=1 filter=91 channel=10
					-10, -12, 13, -17, -4, 11, 28, -19, -5,
					-- layer=1 filter=91 channel=11
					0, 9, -10, 7, 1, 21, 24, 0, 21,
					-- layer=1 filter=91 channel=12
					0, -2, 10, -1, -7, -4, 1, -18, -10,
					-- layer=1 filter=91 channel=13
					-13, -11, -6, -1, -5, -16, -13, 9, -25,
					-- layer=1 filter=91 channel=14
					73, 41, 35, 52, 80, 30, 88, 55, 40,
					-- layer=1 filter=91 channel=15
					-47, -88, -6, -49, -73, 15, -7, -79, 32,
					-- layer=1 filter=91 channel=16
					9, -6, 0, 22, -10, 11, 2, 13, 31,
					-- layer=1 filter=91 channel=17
					-1, 4, 1, 2, -12, -14, -26, 9, 3,
					-- layer=1 filter=91 channel=18
					9, 4, -21, -19, -17, -26, 0, -11, -37,
					-- layer=1 filter=91 channel=19
					21, 24, 0, -2, 15, -18, 3, -14, 2,
					-- layer=1 filter=91 channel=20
					-23, -15, 0, -32, -45, -12, -4, -25, -12,
					-- layer=1 filter=91 channel=21
					-9, 0, 1, -18, -26, 2, 14, 1, -11,
					-- layer=1 filter=91 channel=22
					2, -7, -2, 32, 14, 0, 34, 26, 19,
					-- layer=1 filter=91 channel=23
					-33, -37, -26, -18, 1, 0, 51, 19, 9,
					-- layer=1 filter=91 channel=24
					15, 17, 21, -1, 10, -11, -15, -3, -3,
					-- layer=1 filter=91 channel=25
					19, 2, 7, 28, 12, 5, 21, 5, 6,
					-- layer=1 filter=91 channel=26
					0, -6, 1, -11, -10, -21, -6, 0, -4,
					-- layer=1 filter=91 channel=27
					16, 4, -8, 8, -15, 0, -19, -19, 8,
					-- layer=1 filter=91 channel=28
					-9, -13, 2, 0, -12, 0, 0, 0, 15,
					-- layer=1 filter=91 channel=29
					7, 0, -13, -2, -15, -13, 0, -9, -3,
					-- layer=1 filter=91 channel=30
					-18, -8, 1, 2, -2, 4, -4, 0, -8,
					-- layer=1 filter=91 channel=31
					3, 4, 13, -12, -4, -3, 14, 11, 13,
					-- layer=1 filter=91 channel=32
					-72, -34, -1, -3, -38, -18, -34, -18, -10,
					-- layer=1 filter=91 channel=33
					-9, 20, 1, -20, -17, -30, 4, 3, 6,
					-- layer=1 filter=91 channel=34
					44, 28, 31, 32, 53, 54, -5, -1, -2,
					-- layer=1 filter=91 channel=35
					4, -6, 15, -11, -24, -13, 1, 1, -5,
					-- layer=1 filter=91 channel=36
					-54, -53, -35, -30, -35, -39, 27, -22, -12,
					-- layer=1 filter=91 channel=37
					33, 39, 19, 40, 23, 20, 24, 38, 34,
					-- layer=1 filter=91 channel=38
					-12, -29, -26, 0, 5, 17, 33, -1, -5,
					-- layer=1 filter=91 channel=39
					-30, -52, 2, -22, -35, 7, 38, -12, 39,
					-- layer=1 filter=91 channel=40
					8, -6, -12, 37, 36, 9, 17, 2, 18,
					-- layer=1 filter=91 channel=41
					-9, 0, -26, 5, -12, -8, 7, 0, -18,
					-- layer=1 filter=91 channel=42
					20, -17, 29, 11, 34, 20, 57, 3, 35,
					-- layer=1 filter=91 channel=43
					20, 29, 30, 24, 14, -5, 32, 7, 9,
					-- layer=1 filter=91 channel=44
					-1, -6, 25, -3, 10, 18, 0, 1, 18,
					-- layer=1 filter=91 channel=45
					22, 3, 27, 20, 21, -19, 34, 16, 4,
					-- layer=1 filter=91 channel=46
					-18, -39, -66, 82, 75, 15, 112, 105, 72,
					-- layer=1 filter=91 channel=47
					26, 12, 15, 9, 4, 16, 16, 10, 11,
					-- layer=1 filter=91 channel=48
					-12, -5, -22, 17, -9, -13, 19, 26, -3,
					-- layer=1 filter=91 channel=49
					-105, -106, -40, -88, -133, -51, -10, -112, 6,
					-- layer=1 filter=91 channel=50
					-3, 0, -27, -15, -9, -36, 13, 3, -14,
					-- layer=1 filter=91 channel=51
					9, -2, -1, 14, 1, 6, -5, 15, -8,
					-- layer=1 filter=91 channel=52
					82, 32, 44, 82, 100, 64, 37, 3, -5,
					-- layer=1 filter=91 channel=53
					-53, -64, -49, -47, -73, -77, -68, -75, -19,
					-- layer=1 filter=91 channel=54
					-7, -2, -31, -9, -14, -17, 19, 9, -1,
					-- layer=1 filter=91 channel=55
					-25, -29, -14, 34, 27, 8, 15, 14, -9,
					-- layer=1 filter=91 channel=56
					17, 18, 20, -9, 1, 19, 6, -2, 0,
					-- layer=1 filter=91 channel=57
					18, 18, 0, 15, 3, -1, -18, -18, 5,
					-- layer=1 filter=91 channel=58
					6, 3, -12, 3, -17, -21, 0, 6, -27,
					-- layer=1 filter=91 channel=59
					-71, -43, -33, -92, -70, -72, -3, -75, -24,
					-- layer=1 filter=91 channel=60
					63, 66, 57, 123, 140, 124, 89, 38, 37,
					-- layer=1 filter=91 channel=61
					-105, -102, -45, -101, -122, -95, -73, -93, -46,
					-- layer=1 filter=91 channel=62
					-14, -5, 13, 3, -8, 0, 40, 13, 8,
					-- layer=1 filter=91 channel=63
					-41, -71, -58, -4, 12, -4, 27, 14, 29,
					-- layer=1 filter=92 channel=0
					-2, -20, -6, -31, -53, -58, -22, -7, -27,
					-- layer=1 filter=92 channel=1
					-7, 2, -26, -2, 11, -17, -23, -3, -13,
					-- layer=1 filter=92 channel=2
					-40, -64, -25, -58, -69, -69, -17, -21, -8,
					-- layer=1 filter=92 channel=3
					8, 6, 6, 9, 17, 3, 9, 18, 24,
					-- layer=1 filter=92 channel=4
					18, 31, 14, 22, -3, -2, -11, 4, -9,
					-- layer=1 filter=92 channel=5
					6, 15, -15, 0, 3, 1, 14, 1, -6,
					-- layer=1 filter=92 channel=6
					27, 21, 33, -1, 19, 24, -6, 9, 7,
					-- layer=1 filter=92 channel=7
					2, 9, 9, 11, 26, 8, 27, 3, 7,
					-- layer=1 filter=92 channel=8
					9, 12, 2, 7, 24, 7, 0, -1, -9,
					-- layer=1 filter=92 channel=9
					41, 22, 13, 24, 15, 14, 10, -6, 15,
					-- layer=1 filter=92 channel=10
					-9, 5, 3, -20, -3, 1, 0, 17, 6,
					-- layer=1 filter=92 channel=11
					-41, -68, -52, -39, -46, -13, -18, -29, -27,
					-- layer=1 filter=92 channel=12
					5, -2, -5, -13, 14, 0, 16, 4, 9,
					-- layer=1 filter=92 channel=13
					-6, -2, -1, 17, 14, 16, 35, 18, 11,
					-- layer=1 filter=92 channel=14
					-102, -117, -82, -121, -116, -125, -76, -79, -53,
					-- layer=1 filter=92 channel=15
					9, -11, 15, 16, -19, -28, -50, -37, -38,
					-- layer=1 filter=92 channel=16
					-53, -42, -63, -18, -59, -55, -19, -60, -46,
					-- layer=1 filter=92 channel=17
					-6, -3, -5, -3, -7, 0, -7, 6, 18,
					-- layer=1 filter=92 channel=18
					-7, 11, -4, -4, -4, 8, -19, -10, 12,
					-- layer=1 filter=92 channel=19
					-25, -8, -19, -8, 2, -8, -7, -13, 2,
					-- layer=1 filter=92 channel=20
					9, -12, -5, 1, -2, 6, -16, -9, 14,
					-- layer=1 filter=92 channel=21
					27, 42, 39, 6, 36, 28, 7, -3, 14,
					-- layer=1 filter=92 channel=22
					-1, -16, -9, -39, -24, -63, -38, -45, -7,
					-- layer=1 filter=92 channel=23
					15, 3, 5, -5, 5, -8, -25, -50, -48,
					-- layer=1 filter=92 channel=24
					-22, -1, -3, -24, -20, -21, -3, 0, -3,
					-- layer=1 filter=92 channel=25
					-9, -22, -6, -27, -43, -21, -29, -8, 19,
					-- layer=1 filter=92 channel=26
					-19, -2, -30, 7, -8, -20, 2, 5, -15,
					-- layer=1 filter=92 channel=27
					11, -12, -7, 4, 19, 15, 23, 5, 11,
					-- layer=1 filter=92 channel=28
					26, 13, 39, 29, 24, 51, 27, 42, 63,
					-- layer=1 filter=92 channel=29
					-6, 11, -20, 6, 14, 0, 17, 10, 15,
					-- layer=1 filter=92 channel=30
					2, -2, 8, -8, 6, 4, 13, 3, -13,
					-- layer=1 filter=92 channel=31
					6, -4, -15, 11, 7, -3, 8, 13, -1,
					-- layer=1 filter=92 channel=32
					8, 54, 50, -5, -2, 2, -35, -17, -6,
					-- layer=1 filter=92 channel=33
					-23, -22, -14, -7, -3, 0, 1, -9, 11,
					-- layer=1 filter=92 channel=34
					-48, -81, -74, -52, -77, -59, -75, -54, -45,
					-- layer=1 filter=92 channel=35
					-22, 0, 3, -3, -4, 0, 10, 22, 27,
					-- layer=1 filter=92 channel=36
					-11, -6, 13, 20, -41, -24, -10, -3, 9,
					-- layer=1 filter=92 channel=37
					-43, -70, -54, -37, -100, -80, -58, -20, -1,
					-- layer=1 filter=92 channel=38
					2, -11, 14, -15, -15, -40, 13, 12, 0,
					-- layer=1 filter=92 channel=39
					12, 11, 13, -10, -16, 6, -35, -45, -32,
					-- layer=1 filter=92 channel=40
					-10, -23, -1, -15, -43, -42, -12, -19, -11,
					-- layer=1 filter=92 channel=41
					13, -8, 1, -10, -1, -29, -4, -11, -12,
					-- layer=1 filter=92 channel=42
					-20, -16, 17, -15, -46, -22, -44, -4, -10,
					-- layer=1 filter=92 channel=43
					-12, 3, 3, -30, -15, 10, -31, 9, 17,
					-- layer=1 filter=92 channel=44
					32, -2, 8, 23, -21, -17, -24, -24, 8,
					-- layer=1 filter=92 channel=45
					-2, -3, 16, -22, -32, -12, -36, -35, 10,
					-- layer=1 filter=92 channel=46
					8, -28, -12, 0, -21, -16, -16, -55, -40,
					-- layer=1 filter=92 channel=47
					-49, -69, -64, -35, -95, -81, -54, -46, -19,
					-- layer=1 filter=92 channel=48
					27, 14, 5, 0, -10, -8, 15, 20, 4,
					-- layer=1 filter=92 channel=49
					30, 17, 17, 19, -13, 0, -39, -38, -27,
					-- layer=1 filter=92 channel=50
					14, -4, -6, 16, -17, 5, 20, 14, 10,
					-- layer=1 filter=92 channel=51
					-2, 11, 4, 28, 2, 15, 30, 29, 1,
					-- layer=1 filter=92 channel=52
					-127, -192, -117, -118, -146, -60, -156, -141, -117,
					-- layer=1 filter=92 channel=53
					1, -9, 10, -23, 15, 6, -27, -26, 23,
					-- layer=1 filter=92 channel=54
					-7, -17, -21, 3, -21, -24, 8, 6, -22,
					-- layer=1 filter=92 channel=55
					0, -10, 21, -24, -18, 5, 22, 7, -5,
					-- layer=1 filter=92 channel=56
					5, 6, 7, -10, -9, -7, -8, 12, 2,
					-- layer=1 filter=92 channel=57
					-5, -8, -5, 3, 19, -4, -10, 8, -17,
					-- layer=1 filter=92 channel=58
					2, 0, -13, -3, -12, -28, -14, 0, -10,
					-- layer=1 filter=92 channel=59
					27, 23, 10, 13, 33, 54, -1, -4, 8,
					-- layer=1 filter=92 channel=60
					-174, -130, -74, -116, -133, -50, -146, -139, -170,
					-- layer=1 filter=92 channel=61
					31, 15, 39, 10, 7, 18, -1, -42, 3,
					-- layer=1 filter=92 channel=62
					36, 61, 40, 2, 31, 61, -9, 20, 20,
					-- layer=1 filter=92 channel=63
					4, -37, 5, 7, -19, -36, -6, -38, -27,
					-- layer=1 filter=93 channel=0
					22, -56, -36, 11, 23, -4, 6, 0, -11,
					-- layer=1 filter=93 channel=1
					-7, 11, -11, 0, -12, 20, 9, -19, 6,
					-- layer=1 filter=93 channel=2
					24, -55, -21, 14, 5, -17, 13, -3, -37,
					-- layer=1 filter=93 channel=3
					-9, -26, -35, -35, -41, -33, -15, 4, -10,
					-- layer=1 filter=93 channel=4
					7, 16, 7, 9, 17, 22, 19, 16, 34,
					-- layer=1 filter=93 channel=5
					-5, -27, -45, -32, -15, -27, -10, -5, -24,
					-- layer=1 filter=93 channel=6
					-27, 0, -22, -1, -30, 12, 80, 19, 16,
					-- layer=1 filter=93 channel=7
					-5, -24, 0, 5, 5, 5, 27, 25, 27,
					-- layer=1 filter=93 channel=8
					-4, 9, -12, 11, -13, 4, 21, 17, 43,
					-- layer=1 filter=93 channel=9
					19, -12, -18, -24, -17, -2, 7, -5, -14,
					-- layer=1 filter=93 channel=10
					20, -4, -8, 0, 17, -6, 3, 18, 3,
					-- layer=1 filter=93 channel=11
					-37, -14, -12, 5, -11, 3, 6, 4, 29,
					-- layer=1 filter=93 channel=12
					-48, -2, -27, -1, -35, -30, -6, -4, -28,
					-- layer=1 filter=93 channel=13
					-22, 0, -12, -20, -9, -10, -34, -10, -21,
					-- layer=1 filter=93 channel=14
					20, -56, -33, 7, 5, 12, 26, 0, -50,
					-- layer=1 filter=93 channel=15
					-10, 7, -35, -19, -12, -30, -17, -7, -49,
					-- layer=1 filter=93 channel=16
					-62, -57, -25, -38, -49, -22, 23, 36, 1,
					-- layer=1 filter=93 channel=17
					-2, -5, 11, -6, -16, -4, 17, -8, -22,
					-- layer=1 filter=93 channel=18
					-34, -13, -29, -21, -37, -34, 28, 19, -30,
					-- layer=1 filter=93 channel=19
					-5, 9, 5, -18, -23, 5, -1, -13, -6,
					-- layer=1 filter=93 channel=20
					-17, -6, -2, -24, 18, -17, 0, 9, -20,
					-- layer=1 filter=93 channel=21
					-34, -30, -43, 0, -24, 0, 62, 39, 16,
					-- layer=1 filter=93 channel=22
					6, -42, -42, -8, -50, -22, -27, -28, -31,
					-- layer=1 filter=93 channel=23
					4, -1, 18, 12, 40, -5, -4, 36, 0,
					-- layer=1 filter=93 channel=24
					11, 9, 9, 0, -16, 1, -7, -9, -5,
					-- layer=1 filter=93 channel=25
					-96, -68, -83, -47, -46, -41, 42, 15, -12,
					-- layer=1 filter=93 channel=26
					-36, -26, -14, -12, -20, -10, 33, -4, 5,
					-- layer=1 filter=93 channel=27
					19, 10, 14, -8, -4, 2, 23, 6, 15,
					-- layer=1 filter=93 channel=28
					16, 0, -3, 5, 12, 14, 28, 40, 51,
					-- layer=1 filter=93 channel=29
					-4, -21, -8, -9, -30, 7, 28, -4, 19,
					-- layer=1 filter=93 channel=30
					11, -23, -20, -41, -2, -40, -72, -35, 4,
					-- layer=1 filter=93 channel=31
					-4, -6, 8, 12, -9, -7, -9, -7, -9,
					-- layer=1 filter=93 channel=32
					-52, -76, -34, -13, -66, 20, 30, -25, -53,
					-- layer=1 filter=93 channel=33
					18, 9, -1, 7, -16, 12, 3, -30, 15,
					-- layer=1 filter=93 channel=34
					-39, -32, -84, -20, -16, -33, 16, 21, -36,
					-- layer=1 filter=93 channel=35
					23, 0, 23, -1, 0, 20, 11, 29, 20,
					-- layer=1 filter=93 channel=36
					-43, -49, -15, -3, -36, -48, 26, -39, -49,
					-- layer=1 filter=93 channel=37
					-111, -79, -121, -9, -37, -74, 53, 32, -10,
					-- layer=1 filter=93 channel=38
					-3, -22, -7, -43, -8, -50, -12, 6, -36,
					-- layer=1 filter=93 channel=39
					10, -13, -20, 27, 23, -20, 29, 40, -7,
					-- layer=1 filter=93 channel=40
					0, -30, -14, -33, -18, -2, -30, -41, -29,
					-- layer=1 filter=93 channel=41
					-10, -18, -6, -26, -29, -32, -5, -22, -12,
					-- layer=1 filter=93 channel=42
					25, -44, -18, -4, 46, -20, 19, 37, -28,
					-- layer=1 filter=93 channel=43
					-78, -63, -68, 7, 0, -22, 69, 42, 11,
					-- layer=1 filter=93 channel=44
					-53, -26, -37, -51, -41, -57, -8, 7, -34,
					-- layer=1 filter=93 channel=45
					-79, -68, -60, 23, -52, -37, 65, 19, -13,
					-- layer=1 filter=93 channel=46
					26, 15, -3, 107, 153, 78, -35, 1, 19,
					-- layer=1 filter=93 channel=47
					-94, -101, -96, -34, -64, -68, 23, 6, -22,
					-- layer=1 filter=93 channel=48
					0, -1, -16, -1, -1, -3, -35, -16, -27,
					-- layer=1 filter=93 channel=49
					-27, -12, -34, -16, 11, -37, -10, 1, -56,
					-- layer=1 filter=93 channel=50
					-16, -4, -16, -30, -36, -38, -29, -30, -28,
					-- layer=1 filter=93 channel=51
					13, 27, 1, 20, 13, 1, 21, -9, 18,
					-- layer=1 filter=93 channel=52
					30, -20, -45, 19, -38, -65, -19, -22, -18,
					-- layer=1 filter=93 channel=53
					18, -18, -63, -53, -41, 25, -20, 2, -50,
					-- layer=1 filter=93 channel=54
					-18, -7, 12, -16, 11, -27, -41, -23, -33,
					-- layer=1 filter=93 channel=55
					-41, -40, 0, -64, -42, -36, -48, -47, -37,
					-- layer=1 filter=93 channel=56
					0, 0, 5, 21, 28, 17, 25, 12, 29,
					-- layer=1 filter=93 channel=57
					-14, 12, 10, 1, 11, -8, 14, 8, -3,
					-- layer=1 filter=93 channel=58
					-37, 0, -39, -23, -10, -29, -1, -21, -31,
					-- layer=1 filter=93 channel=59
					-3, 1, -100, -23, -10, 5, 40, 13, -15,
					-- layer=1 filter=93 channel=60
					6, -18, 13, 9, -38, -71, 50, 16, 47,
					-- layer=1 filter=93 channel=61
					-23, -45, -53, -22, -55, -9, 9, 11, -31,
					-- layer=1 filter=93 channel=62
					-67, -43, -59, -2, -1, -23, 48, 41, 0,
					-- layer=1 filter=93 channel=63
					3, -59, -66, -18, -48, 3, -86, -64, -39,
					-- layer=1 filter=94 channel=0
					11, -5, 10, 1, -4, 10, 4, -12, -4,
					-- layer=1 filter=94 channel=1
					-14, 4, -5, 3, -2, -2, -11, -1, -1,
					-- layer=1 filter=94 channel=2
					-1, -6, -15, 10, -9, 0, -1, 0, 0,
					-- layer=1 filter=94 channel=3
					2, -9, -13, 11, 2, -2, 2, -2, -15,
					-- layer=1 filter=94 channel=4
					0, -12, 0, 10, 8, 7, 0, -4, -8,
					-- layer=1 filter=94 channel=5
					-16, -12, -4, -8, -7, -7, -2, 10, -13,
					-- layer=1 filter=94 channel=6
					-13, -16, 5, -6, 11, 1, 8, -11, 5,
					-- layer=1 filter=94 channel=7
					7, 3, 9, 4, 7, -2, 9, 8, 2,
					-- layer=1 filter=94 channel=8
					0, -14, -17, 9, 5, 4, -13, -10, -11,
					-- layer=1 filter=94 channel=9
					-13, -1, -2, -10, 11, 4, 0, -2, -7,
					-- layer=1 filter=94 channel=10
					-13, 5, -15, -5, 7, -3, 7, 0, 4,
					-- layer=1 filter=94 channel=11
					0, -10, -15, 8, -9, 7, -13, -14, -1,
					-- layer=1 filter=94 channel=12
					-2, 3, 0, -8, -3, -5, -14, -8, 5,
					-- layer=1 filter=94 channel=13
					3, 0, 0, -11, -7, 3, -3, 0, 10,
					-- layer=1 filter=94 channel=14
					7, 3, 1, -12, 12, -2, 10, 1, -9,
					-- layer=1 filter=94 channel=15
					-9, 5, 6, -6, 10, -5, 0, 6, -1,
					-- layer=1 filter=94 channel=16
					2, -14, 6, -4, -9, -3, -7, 0, 3,
					-- layer=1 filter=94 channel=17
					-2, -16, -12, 1, 6, 10, -10, -16, -13,
					-- layer=1 filter=94 channel=18
					-13, -1, 0, 9, 1, 0, -12, 4, -7,
					-- layer=1 filter=94 channel=19
					-8, 11, 0, -1, 0, 3, 12, -16, -12,
					-- layer=1 filter=94 channel=20
					7, -4, -3, -11, -7, -2, -3, 3, -15,
					-- layer=1 filter=94 channel=21
					9, 12, 4, -4, 1, 2, 2, 9, -1,
					-- layer=1 filter=94 channel=22
					-4, 0, -16, -6, 0, -13, 1, -1, 7,
					-- layer=1 filter=94 channel=23
					-16, 5, 8, -5, -2, 10, -6, 5, -10,
					-- layer=1 filter=94 channel=24
					5, -16, -13, 0, -6, -11, 8, -11, -12,
					-- layer=1 filter=94 channel=25
					8, 7, -16, -13, -13, -7, -14, -8, 12,
					-- layer=1 filter=94 channel=26
					-10, -12, 5, 1, -13, 8, -9, -8, -12,
					-- layer=1 filter=94 channel=27
					7, -8, -18, 3, -16, -5, 0, 1, 3,
					-- layer=1 filter=94 channel=28
					0, -6, -4, -12, 1, 9, 7, 5, -1,
					-- layer=1 filter=94 channel=29
					-15, -12, -8, -15, -2, 4, -2, -15, -15,
					-- layer=1 filter=94 channel=30
					-14, 5, 4, -11, 10, 8, -11, 4, 10,
					-- layer=1 filter=94 channel=31
					11, -2, 6, 13, 1, 1, -11, 14, -14,
					-- layer=1 filter=94 channel=32
					13, -1, 11, -7, 3, -14, 10, 5, 1,
					-- layer=1 filter=94 channel=33
					-5, 7, -13, 0, 10, 10, -15, -5, -6,
					-- layer=1 filter=94 channel=34
					-7, 0, 9, 8, 0, 5, -14, -10, -9,
					-- layer=1 filter=94 channel=35
					-15, -7, 2, 10, -16, 6, -3, -16, 7,
					-- layer=1 filter=94 channel=36
					-13, -1, -10, 10, -2, 10, -5, -2, 0,
					-- layer=1 filter=94 channel=37
					1, -9, -9, -11, -5, -6, -6, 11, 10,
					-- layer=1 filter=94 channel=38
					-4, 4, 2, 10, 3, -4, -1, -6, 8,
					-- layer=1 filter=94 channel=39
					-6, 6, -10, -16, -2, -15, -6, 5, -17,
					-- layer=1 filter=94 channel=40
					13, 7, -8, 9, 0, 1, 9, 11, -14,
					-- layer=1 filter=94 channel=41
					1, -1, -15, 4, -10, -15, -10, 0, 2,
					-- layer=1 filter=94 channel=42
					-9, 8, -11, -2, -3, 5, -11, 1, 0,
					-- layer=1 filter=94 channel=43
					-5, -2, -4, -5, 2, -17, -14, -10, -3,
					-- layer=1 filter=94 channel=44
					13, -11, -3, -9, -1, 9, 2, -12, -10,
					-- layer=1 filter=94 channel=45
					-7, 3, -6, 10, 0, -11, 5, 0, -1,
					-- layer=1 filter=94 channel=46
					0, -11, 9, -1, 8, -6, -6, -13, -14,
					-- layer=1 filter=94 channel=47
					4, 2, -6, 1, 5, 9, -4, 2, 7,
					-- layer=1 filter=94 channel=48
					-15, -6, 1, -6, -6, 5, 0, 2, 11,
					-- layer=1 filter=94 channel=49
					9, -15, -9, -10, 1, -14, -5, 0, 7,
					-- layer=1 filter=94 channel=50
					0, 4, -6, -7, 3, 12, 1, -3, 9,
					-- layer=1 filter=94 channel=51
					-1, -4, 0, -11, 0, -12, -1, 6, 9,
					-- layer=1 filter=94 channel=52
					-10, 1, -14, 6, -12, -13, -10, -3, 0,
					-- layer=1 filter=94 channel=53
					-5, -12, -2, 5, -13, -10, -9, -11, -9,
					-- layer=1 filter=94 channel=54
					-8, -6, -7, 3, 0, -10, 11, -7, -15,
					-- layer=1 filter=94 channel=55
					7, 11, 8, -15, -5, -8, 0, 0, -5,
					-- layer=1 filter=94 channel=56
					5, 4, -1, -15, -7, -2, -11, -15, 0,
					-- layer=1 filter=94 channel=57
					-12, 3, -2, 10, -14, -7, -9, -16, 0,
					-- layer=1 filter=94 channel=58
					-2, -10, -9, 0, -3, 6, -4, 0, -14,
					-- layer=1 filter=94 channel=59
					-1, -8, -4, 1, -15, 0, 6, 12, 8,
					-- layer=1 filter=94 channel=60
					-8, 7, 1, -3, 1, 9, -5, 9, 5,
					-- layer=1 filter=94 channel=61
					-3, -9, 8, -1, -1, 13, -10, -6, 0,
					-- layer=1 filter=94 channel=62
					6, 9, -4, -11, -2, -2, -6, 0, -14,
					-- layer=1 filter=94 channel=63
					1, -10, -6, 3, -2, -11, 2, 8, -10,
					-- layer=1 filter=95 channel=0
					5, 12, -18, -35, -14, -24, -24, 0, -29,
					-- layer=1 filter=95 channel=1
					-5, -14, -5, 13, 2, 12, 7, -11, -3,
					-- layer=1 filter=95 channel=2
					-11, -21, 10, 13, -8, -1, -21, -3, -35,
					-- layer=1 filter=95 channel=3
					0, -46, 6, 21, -54, 21, 20, -36, 25,
					-- layer=1 filter=95 channel=4
					-10, 26, -12, -32, 47, -37, -27, 32, -23,
					-- layer=1 filter=95 channel=5
					8, -7, -24, 2, 0, -2, 5, -24, 25,
					-- layer=1 filter=95 channel=6
					13, -68, -3, 37, -66, 43, 36, -55, 58,
					-- layer=1 filter=95 channel=7
					23, -14, 34, 19, -33, 20, 33, -18, -12,
					-- layer=1 filter=95 channel=8
					22, -24, 4, 27, -50, 2, 21, -61, 9,
					-- layer=1 filter=95 channel=9
					32, -66, 23, 31, -106, 45, 37, -69, 11,
					-- layer=1 filter=95 channel=10
					-25, 15, 13, -42, 43, -32, -35, 26, -13,
					-- layer=1 filter=95 channel=11
					-11, 42, 16, 0, 54, -16, -13, 50, 2,
					-- layer=1 filter=95 channel=12
					-17, -12, 8, -9, 1, 1, -12, -12, 30,
					-- layer=1 filter=95 channel=13
					8, -22, 21, 29, -41, 20, 23, -20, 0,
					-- layer=1 filter=95 channel=14
					23, -20, 2, 40, 37, 3, -39, -12, -31,
					-- layer=1 filter=95 channel=15
					-77, 46, -41, -145, 79, -147, -60, 82, -80,
					-- layer=1 filter=95 channel=16
					-14, 18, 21, -7, 25, -13, -35, 15, -5,
					-- layer=1 filter=95 channel=17
					19, -33, 13, 23, -29, 7, 5, -43, 3,
					-- layer=1 filter=95 channel=18
					12, -47, 6, 7, -23, 21, -4, -27, 27,
					-- layer=1 filter=95 channel=19
					6, -21, 1, 3, -12, 12, -18, -30, 16,
					-- layer=1 filter=95 channel=20
					-61, 32, -28, -95, 74, -94, -36, 44, -51,
					-- layer=1 filter=95 channel=21
					39, -102, 21, 50, -131, 56, 63, -75, 51,
					-- layer=1 filter=95 channel=22
					32, -37, 32, 60, -79, 29, 43, -63, -10,
					-- layer=1 filter=95 channel=23
					-16, 38, 0, -61, 44, -55, -45, 55, -51,
					-- layer=1 filter=95 channel=24
					3, 0, 16, -19, 6, 4, -22, -5, -2,
					-- layer=1 filter=95 channel=25
					-30, 11, -22, -18, 11, -23, -13, 0, 14,
					-- layer=1 filter=95 channel=26
					-21, -3, -4, 1, 34, -20, -29, 9, -6,
					-- layer=1 filter=95 channel=27
					9, -8, 23, 20, -6, 20, 8, -27, 9,
					-- layer=1 filter=95 channel=28
					25, -72, 29, 35, -79, 23, 43, -34, 39,
					-- layer=1 filter=95 channel=29
					-16, 11, -3, 9, 4, -10, -7, 12, 0,
					-- layer=1 filter=95 channel=30
					3, -5, 20, -8, -8, 23, 12, -8, 6,
					-- layer=1 filter=95 channel=31
					-3, -1, -11, 2, 0, -6, -1, -11, 2,
					-- layer=1 filter=95 channel=32
					28, 119, 35, 128, 94, 44, 101, 18, 22,
					-- layer=1 filter=95 channel=33
					-7, 8, 9, 7, 9, 0, 2, -7, -6,
					-- layer=1 filter=95 channel=34
					-31, 0, -11, -40, -12, 0, 0, -32, 27,
					-- layer=1 filter=95 channel=35
					-15, -15, 6, 8, 11, 4, -2, 0, -19,
					-- layer=1 filter=95 channel=36
					-80, 59, -50, -96, 90, -92, -42, 48, -38,
					-- layer=1 filter=95 channel=37
					-15, -15, -16, 1, -22, -5, -46, 3, -10,
					-- layer=1 filter=95 channel=38
					-30, 26, 0, -41, 20, -38, -52, 44, -22,
					-- layer=1 filter=95 channel=39
					-46, 46, -12, -89, 64, -75, -54, 55, -54,
					-- layer=1 filter=95 channel=40
					43, -26, 29, 59, -74, 32, 32, -94, 26,
					-- layer=1 filter=95 channel=41
					3, 3, -7, -10, 8, -11, -10, -2, 3,
					-- layer=1 filter=95 channel=42
					6, 17, 27, -19, 60, -30, -17, 61, -39,
					-- layer=1 filter=95 channel=43
					0, -64, 2, 26, -36, 40, 14, -14, 30,
					-- layer=1 filter=95 channel=44
					-47, 20, -37, -47, 45, -40, -60, 65, -24,
					-- layer=1 filter=95 channel=45
					23, -93, -26, 21, -77, 55, -7, -22, 23,
					-- layer=1 filter=95 channel=46
					0, 0, 7, -20, 6, 8, -1, -1, 6,
					-- layer=1 filter=95 channel=47
					-59, -14, -54, -21, -15, -13, -39, -17, 13,
					-- layer=1 filter=95 channel=48
					14, 14, -3, -1, 10, 10, -7, 8, 10,
					-- layer=1 filter=95 channel=49
					-48, 45, -29, -131, 73, -104, -57, 66, -66,
					-- layer=1 filter=95 channel=50
					-9, 15, 9, -5, 24, 9, -6, -17, 14,
					-- layer=1 filter=95 channel=51
					-1, 21, -5, -19, 22, 9, -19, 18, 17,
					-- layer=1 filter=95 channel=52
					-46, -8, 11, -29, -35, 38, -15, -78, -9,
					-- layer=1 filter=95 channel=53
					9, -79, 8, 31, -124, 16, 11, -102, 31,
					-- layer=1 filter=95 channel=54
					-6, 18, 6, -5, 10, -13, -8, 0, 0,
					-- layer=1 filter=95 channel=55
					-3, -18, -11, -10, -17, 18, -9, 8, -17,
					-- layer=1 filter=95 channel=56
					-7, 10, -6, -26, 13, 0, -38, 17, -34,
					-- layer=1 filter=95 channel=57
					6, -5, -8, 7, 9, -3, -3, 5, 6,
					-- layer=1 filter=95 channel=58
					-19, 6, -12, -9, 9, -13, -8, 11, 1,
					-- layer=1 filter=95 channel=59
					26, -87, 21, 61, -143, 27, 33, -143, 37,
					-- layer=1 filter=95 channel=60
					-13, 13, 7, -6, -38, 55, 13, -6, 56,
					-- layer=1 filter=95 channel=61
					34, -118, 30, 75, -208, 54, 73, -133, 40,
					-- layer=1 filter=95 channel=62
					41, -71, 11, 36, -115, 42, 57, -66, 65,
					-- layer=1 filter=95 channel=63
					17, 0, 35, 34, -56, 21, 24, -12, 19,
					-- layer=1 filter=96 channel=0
					5, -12, 5, 8, -16, -15, -6, 0, 12,
					-- layer=1 filter=96 channel=1
					-13, 12, 8, 6, -12, 0, 2, 1, 8,
					-- layer=1 filter=96 channel=2
					-8, -1, 7, -14, -1, 0, 9, 6, -5,
					-- layer=1 filter=96 channel=3
					5, 10, -5, -1, -9, -9, 7, -9, 12,
					-- layer=1 filter=96 channel=4
					2, 6, -10, -15, -1, -3, -13, 1, 9,
					-- layer=1 filter=96 channel=5
					-16, 3, 1, 1, -6, 11, -12, 5, 6,
					-- layer=1 filter=96 channel=6
					-8, -12, 3, -10, -11, -5, 1, 3, 5,
					-- layer=1 filter=96 channel=7
					-18, 11, 3, 1, 7, 12, 4, 2, 2,
					-- layer=1 filter=96 channel=8
					-16, 4, 0, -11, -2, -4, 12, 12, 0,
					-- layer=1 filter=96 channel=9
					-4, -7, 0, 6, -15, -6, 0, -8, -5,
					-- layer=1 filter=96 channel=10
					0, 9, 3, -14, 7, -5, -1, -12, -6,
					-- layer=1 filter=96 channel=11
					-13, 11, 9, -19, -15, -11, -18, 7, 5,
					-- layer=1 filter=96 channel=12
					2, 9, 10, -3, -14, 10, -13, -13, 0,
					-- layer=1 filter=96 channel=13
					11, -4, -7, 8, 10, -10, -9, -11, -1,
					-- layer=1 filter=96 channel=14
					-14, 1, 14, -2, 7, 17, -16, -14, -13,
					-- layer=1 filter=96 channel=15
					-17, 6, 12, 1, -4, -13, 0, 8, -12,
					-- layer=1 filter=96 channel=16
					-3, -5, 13, -11, -10, -8, 7, -2, 4,
					-- layer=1 filter=96 channel=17
					-9, 0, 9, 12, -7, 11, 3, -11, 5,
					-- layer=1 filter=96 channel=18
					6, 8, 8, -9, 5, 6, -7, -4, -9,
					-- layer=1 filter=96 channel=19
					2, 2, 8, 11, 11, -9, -1, -7, -11,
					-- layer=1 filter=96 channel=20
					1, -10, 11, 0, 7, 4, -16, -5, -5,
					-- layer=1 filter=96 channel=21
					-11, 1, -25, 11, 2, 0, -2, -9, -22,
					-- layer=1 filter=96 channel=22
					0, -14, -15, 10, -8, 5, -4, -23, 0,
					-- layer=1 filter=96 channel=23
					6, -8, -3, -21, 1, -11, 1, 1, -14,
					-- layer=1 filter=96 channel=24
					5, 0, 9, -4, -8, -13, 0, -14, 12,
					-- layer=1 filter=96 channel=25
					7, -23, -8, 8, -13, -2, -1, 4, -16,
					-- layer=1 filter=96 channel=26
					-15, -6, -10, 0, 4, -11, 4, -2, 0,
					-- layer=1 filter=96 channel=27
					6, -12, 4, -12, 7, 2, -12, -5, 2,
					-- layer=1 filter=96 channel=28
					-14, -2, -17, 0, -4, -14, -11, 9, -2,
					-- layer=1 filter=96 channel=29
					7, -16, 0, 8, -4, -6, 12, 4, -9,
					-- layer=1 filter=96 channel=30
					-3, -1, 10, 10, -14, -2, 8, 1, 12,
					-- layer=1 filter=96 channel=31
					-12, -2, -9, -12, 7, -4, -10, 2, -4,
					-- layer=1 filter=96 channel=32
					-8, -9, -4, -5, 11, 2, 0, -4, -1,
					-- layer=1 filter=96 channel=33
					0, -13, 0, 13, 12, -6, 9, -9, -2,
					-- layer=1 filter=96 channel=34
					-9, -12, -6, -5, -3, -8, 2, -13, 10,
					-- layer=1 filter=96 channel=35
					-3, -14, -7, -6, 8, -2, -1, -1, -13,
					-- layer=1 filter=96 channel=36
					-6, 1, -19, -18, 2, -21, 4, 5, 5,
					-- layer=1 filter=96 channel=37
					5, 0, 0, -8, -19, 9, 0, 5, 10,
					-- layer=1 filter=96 channel=38
					9, -10, -16, 4, 0, -13, 5, 8, 8,
					-- layer=1 filter=96 channel=39
					7, 3, 0, -18, -11, -16, -2, -11, -6,
					-- layer=1 filter=96 channel=40
					-7, 0, -5, -3, -9, 2, -6, -4, 1,
					-- layer=1 filter=96 channel=41
					10, 7, -9, 8, -7, -6, -6, 5, -15,
					-- layer=1 filter=96 channel=42
					-10, 9, 0, -8, 0, -9, -2, 4, -1,
					-- layer=1 filter=96 channel=43
					13, -16, 0, -8, 0, -16, -13, 11, -14,
					-- layer=1 filter=96 channel=44
					-6, 11, 10, -15, 7, -2, 9, 7, -16,
					-- layer=1 filter=96 channel=45
					0, 8, -3, 3, -3, -9, -16, 0, 7,
					-- layer=1 filter=96 channel=46
					4, 7, 5, 10, -11, 4, 8, -9, -13,
					-- layer=1 filter=96 channel=47
					-2, -7, 2, 3, 3, -5, 2, 5, 11,
					-- layer=1 filter=96 channel=48
					3, 6, 5, 12, -10, -18, -16, 10, -16,
					-- layer=1 filter=96 channel=49
					5, 10, -9, -3, -2, -12, 1, -19, 1,
					-- layer=1 filter=96 channel=50
					-4, -8, -1, 11, 1, -9, -10, -12, 5,
					-- layer=1 filter=96 channel=51
					-1, -15, -14, -13, -15, 7, 12, 6, -13,
					-- layer=1 filter=96 channel=52
					-2, -5, -3, -5, -11, 6, -4, 9, -10,
					-- layer=1 filter=96 channel=53
					10, -2, 1, -4, -2, 18, 3, -19, 0,
					-- layer=1 filter=96 channel=54
					-11, 9, 6, -4, 5, 8, 0, 4, 0,
					-- layer=1 filter=96 channel=55
					12, 0, -15, 6, -6, -11, 6, -13, -3,
					-- layer=1 filter=96 channel=56
					5, -8, 11, -5, -10, -4, 10, -21, -5,
					-- layer=1 filter=96 channel=57
					-9, -10, -16, 3, 10, -7, 0, -16, -2,
					-- layer=1 filter=96 channel=58
					-5, 6, -4, -11, -9, 10, 7, 8, 9,
					-- layer=1 filter=96 channel=59
					-13, 12, 0, -15, 10, -13, -13, 0, -14,
					-- layer=1 filter=96 channel=60
					-2, 6, -10, 1, -16, -8, 11, -11, -3,
					-- layer=1 filter=96 channel=61
					5, -1, 4, -12, -4, 7, -9, 9, -6,
					-- layer=1 filter=96 channel=62
					-7, 11, -16, -9, 10, -14, 11, -10, 2,
					-- layer=1 filter=96 channel=63
					0, -1, -4, 5, 5, -13, 4, 11, -21,
					-- layer=1 filter=97 channel=0
					12, 11, 3, 43, 26, 5, 57, 50, 6,
					-- layer=1 filter=97 channel=1
					9, 3, 5, 22, -10, -1, -3, 11, -19,
					-- layer=1 filter=97 channel=2
					17, 12, 11, 19, 9, 30, 0, 14, 16,
					-- layer=1 filter=97 channel=3
					-13, -10, 15, -21, 0, -15, -25, -29, -16,
					-- layer=1 filter=97 channel=4
					4, 2, -9, 10, 12, -7, 47, 13, 23,
					-- layer=1 filter=97 channel=5
					-43, -22, -3, -55, -9, 57, -33, -3, 31,
					-- layer=1 filter=97 channel=6
					19, 19, -16, 18, 36, 45, 11, 37, 25,
					-- layer=1 filter=97 channel=7
					4, -9, -12, 42, -2, -25, 52, 5, -10,
					-- layer=1 filter=97 channel=8
					18, -14, -28, 41, 18, -1, 34, 22, 6,
					-- layer=1 filter=97 channel=9
					-21, -5, 0, -5, -26, 36, -40, -28, -1,
					-- layer=1 filter=97 channel=10
					-1, 15, 27, 10, 26, 15, -16, 2, -25,
					-- layer=1 filter=97 channel=11
					24, 17, -7, -5, 33, 9, 24, 34, -8,
					-- layer=1 filter=97 channel=12
					-24, -38, -32, -13, -27, -19, -29, -7, -15,
					-- layer=1 filter=97 channel=13
					-29, -8, 14, -60, -25, 20, -43, -7, 23,
					-- layer=1 filter=97 channel=14
					-11, -27, 3, -25, 6, -5, -59, -26, -10,
					-- layer=1 filter=97 channel=15
					-9, -10, 39, -18, -14, 26, -33, -35, -50,
					-- layer=1 filter=97 channel=16
					24, 11, -9, 50, 14, 42, 61, 31, -5,
					-- layer=1 filter=97 channel=17
					-8, -42, -6, -21, -32, -4, -38, -36, -17,
					-- layer=1 filter=97 channel=18
					17, 3, -19, -16, 2, 21, -6, 27, 19,
					-- layer=1 filter=97 channel=19
					-22, -16, -26, -14, -22, -11, -10, 5, -7,
					-- layer=1 filter=97 channel=20
					-24, -15, 38, -33, -26, 16, -26, -38, -16,
					-- layer=1 filter=97 channel=21
					36, 18, -22, 40, 26, 32, -17, 24, 4,
					-- layer=1 filter=97 channel=22
					-28, -13, 26, -1, -41, 0, -54, -28, -45,
					-- layer=1 filter=97 channel=23
					-43, 13, 67, -52, -47, 55, -45, -58, -7,
					-- layer=1 filter=97 channel=24
					-21, -7, 16, -16, -25, 9, 3, 1, -22,
					-- layer=1 filter=97 channel=25
					2, -32, -40, 26, 10, 14, -15, -8, -8,
					-- layer=1 filter=97 channel=26
					-6, -7, -31, 17, 26, 0, 38, 38, -3,
					-- layer=1 filter=97 channel=27
					9, -21, -25, 11, 2, -16, 19, -5, -18,
					-- layer=1 filter=97 channel=28
					-7, -18, -17, -3, -28, -30, -27, -11, -27,
					-- layer=1 filter=97 channel=29
					-13, 6, -19, 12, 0, -3, 11, -8, 0,
					-- layer=1 filter=97 channel=30
					-65, 7, 36, -72, -16, 68, -45, -20, 16,
					-- layer=1 filter=97 channel=31
					-13, 13, -1, -6, -5, 10, 3, -13, 6,
					-- layer=1 filter=97 channel=32
					65, 34, 23, 9, -21, 21, -56, -24, -4,
					-- layer=1 filter=97 channel=33
					-23, -18, -5, 0, -2, -7, -25, -5, -18,
					-- layer=1 filter=97 channel=34
					34, -19, -20, 4, 3, 15, 10, 11, 11,
					-- layer=1 filter=97 channel=35
					-6, 0, 2, 16, -7, -12, 3, -8, -5,
					-- layer=1 filter=97 channel=36
					-42, 0, 57, -65, -68, 18, -70, -64, -25,
					-- layer=1 filter=97 channel=37
					6, -23, -53, 2, -11, 0, -14, 0, -4,
					-- layer=1 filter=97 channel=38
					-22, -3, 52, -46, -24, 18, -10, -33, 8,
					-- layer=1 filter=97 channel=39
					-33, 16, 75, -47, -20, 30, -52, -56, -31,
					-- layer=1 filter=97 channel=40
					-31, -71, -14, -45, -65, -48, -52, -73, -48,
					-- layer=1 filter=97 channel=41
					-21, -4, 12, -28, -11, 14, -43, -35, 14,
					-- layer=1 filter=97 channel=42
					6, -11, 45, -29, 18, 17, -10, 9, -14,
					-- layer=1 filter=97 channel=43
					27, -17, -32, 9, 18, 26, -28, 5, 15,
					-- layer=1 filter=97 channel=44
					-14, -18, 16, -21, -45, 27, -11, -6, -2,
					-- layer=1 filter=97 channel=45
					15, 20, 15, 30, 34, 57, 4, 32, 27,
					-- layer=1 filter=97 channel=46
					-45, 122, 204, -53, 43, 161, -16, 6, 50,
					-- layer=1 filter=97 channel=47
					-3, -15, -50, -24, 10, 16, -38, -1, 20,
					-- layer=1 filter=97 channel=48
					-46, -8, 44, -45, -17, 49, -30, -7, 41,
					-- layer=1 filter=97 channel=49
					-47, 19, 43, -31, 6, 41, -54, -56, -41,
					-- layer=1 filter=97 channel=50
					-53, 2, 20, -84, -34, 23, -51, -24, 25,
					-- layer=1 filter=97 channel=51
					-24, -28, -21, -33, -29, -12, -26, -15, 2,
					-- layer=1 filter=97 channel=52
					-21, -30, -21, 17, 12, 14, 9, 2, 21,
					-- layer=1 filter=97 channel=53
					21, 7, -3, 16, -18, 22, -16, -55, -25,
					-- layer=1 filter=97 channel=54
					-57, -16, 54, -62, -52, 40, -61, -36, 49,
					-- layer=1 filter=97 channel=55
					-18, 38, 78, -44, 26, 91, -32, 9, 40,
					-- layer=1 filter=97 channel=56
					11, 18, -18, 46, 25, 5, 37, 22, 12,
					-- layer=1 filter=97 channel=57
					-20, -8, -8, 11, 9, -4, 17, 3, 0,
					-- layer=1 filter=97 channel=58
					-34, -39, -6, -42, -42, -13, -38, -17, 11,
					-- layer=1 filter=97 channel=59
					46, 35, -3, 29, 31, 62, 2, 5, -9,
					-- layer=1 filter=97 channel=60
					67, 65, 41, 40, 91, 64, 22, 66, 104,
					-- layer=1 filter=97 channel=61
					21, 36, 12, 21, 15, 24, -39, -7, -51,
					-- layer=1 filter=97 channel=62
					27, 29, 1, 14, 37, 39, -23, 3, 3,
					-- layer=1 filter=97 channel=63
					-26, 2, 65, -68, -56, 77, -94, -71, -37,
					-- layer=1 filter=98 channel=0
					-19, 10, 3, -15, -1, -15, -15, 2, -19,
					-- layer=1 filter=98 channel=1
					-22, 0, 6, -10, 2, -28, -4, -10, -31,
					-- layer=1 filter=98 channel=2
					-22, -2, -1, -8, -9, 9, -14, 3, -22,
					-- layer=1 filter=98 channel=3
					-14, -5, 0, 0, -8, 1, -28, 11, 12,
					-- layer=1 filter=98 channel=4
					-19, 1, -27, -5, -4, -27, -17, 1, -29,
					-- layer=1 filter=98 channel=5
					-14, -3, -5, 0, 7, -11, -5, -18, 8,
					-- layer=1 filter=98 channel=6
					-15, -3, 4, -7, 0, -11, -23, 1, 1,
					-- layer=1 filter=98 channel=7
					3, 4, -7, 5, 2, -6, 2, 0, 8,
					-- layer=1 filter=98 channel=8
					0, -2, -5, 0, 8, -3, -6, -8, -3,
					-- layer=1 filter=98 channel=9
					-10, -11, 10, -26, -7, 2, -19, -14, 1,
					-- layer=1 filter=98 channel=10
					-18, 6, -8, 2, -2, -15, -11, -11, -27,
					-- layer=1 filter=98 channel=11
					15, -13, -4, -9, -10, 1, 5, 0, -12,
					-- layer=1 filter=98 channel=12
					2, -13, -14, 1, -6, 4, -12, 1, 13,
					-- layer=1 filter=98 channel=13
					-4, 2, -5, -1, -6, 5, -20, -10, -5,
					-- layer=1 filter=98 channel=14
					-17, -9, 14, -12, -1, 3, -1, -2, -2,
					-- layer=1 filter=98 channel=15
					-8, -14, 2, -7, -7, 0, 8, -23, -17,
					-- layer=1 filter=98 channel=16
					10, -6, -16, -18, 9, -14, 0, -14, 4,
					-- layer=1 filter=98 channel=17
					-7, -1, 1, -28, -3, 9, -26, -15, -10,
					-- layer=1 filter=98 channel=18
					2, -26, -20, -16, -14, -5, -24, -28, -2,
					-- layer=1 filter=98 channel=19
					-24, -3, 3, -31, -2, -17, -5, -16, -14,
					-- layer=1 filter=98 channel=20
					-1, 7, -22, -8, -16, -7, -15, -15, -2,
					-- layer=1 filter=98 channel=21
					-8, 0, 11, -4, -6, -1, -20, -17, 9,
					-- layer=1 filter=98 channel=22
					-12, -19, 6, -22, -21, 6, -9, -11, -7,
					-- layer=1 filter=98 channel=23
					2, -21, -19, -4, 1, -23, 9, 2, -2,
					-- layer=1 filter=98 channel=24
					-13, 0, -25, -21, -22, -30, -17, -12, -17,
					-- layer=1 filter=98 channel=25
					4, -4, -16, 2, 1, -8, -21, -14, -12,
					-- layer=1 filter=98 channel=26
					-16, -18, -3, -19, -9, -6, -21, -21, -30,
					-- layer=1 filter=98 channel=27
					-21, -15, -20, -5, -19, -15, -8, -19, -15,
					-- layer=1 filter=98 channel=28
					-17, 3, 0, -3, 8, -12, -23, -10, 15,
					-- layer=1 filter=98 channel=29
					-13, -21, 1, -22, -15, -14, -3, -5, -12,
					-- layer=1 filter=98 channel=30
					3, 0, -1, -13, 11, 3, -16, -15, -8,
					-- layer=1 filter=98 channel=31
					3, 0, 5, -4, 4, 0, -6, 0, -12,
					-- layer=1 filter=98 channel=32
					3, 5, 17, -10, -4, -23, 1, 9, -22,
					-- layer=1 filter=98 channel=33
					0, -1, -20, -19, -6, -23, -7, -21, -10,
					-- layer=1 filter=98 channel=34
					-3, -24, -11, -4, -21, -17, -19, -13, 2,
					-- layer=1 filter=98 channel=35
					2, -16, 8, -14, -14, -9, -17, -9, 0,
					-- layer=1 filter=98 channel=36
					-16, 4, 7, -7, 5, -16, 5, -5, 4,
					-- layer=1 filter=98 channel=37
					8, -10, -24, -18, -19, -19, 3, -22, 4,
					-- layer=1 filter=98 channel=38
					-7, 8, -2, -6, -18, 0, -10, 3, -4,
					-- layer=1 filter=98 channel=39
					-7, -3, -9, -9, -14, 0, 4, 5, -5,
					-- layer=1 filter=98 channel=40
					-8, 5, -6, -23, -11, 13, -22, 8, -14,
					-- layer=1 filter=98 channel=41
					-12, -12, -13, -11, -7, 8, 9, 13, 1,
					-- layer=1 filter=98 channel=42
					-27, 0, 2, -1, -23, -22, 7, -2, -6,
					-- layer=1 filter=98 channel=43
					-22, -26, -6, -20, -1, -21, 0, -6, -17,
					-- layer=1 filter=98 channel=44
					2, 13, -4, -12, -12, -7, -9, -12, -19,
					-- layer=1 filter=98 channel=45
					0, -25, -14, -17, 7, -14, -23, 4, -2,
					-- layer=1 filter=98 channel=46
					7, 3, -13, 4, -9, 9, 2, 6, 7,
					-- layer=1 filter=98 channel=47
					-11, -11, -27, -2, -1, -12, 4, 0, -24,
					-- layer=1 filter=98 channel=48
					-20, -23, -11, 4, -16, 3, 0, -20, -13,
					-- layer=1 filter=98 channel=49
					-13, -7, 8, -7, -1, -20, -14, 0, -19,
					-- layer=1 filter=98 channel=50
					-13, -5, -21, 2, -18, 3, 0, -16, -15,
					-- layer=1 filter=98 channel=51
					-14, 5, -16, -11, 5, -9, 1, -7, -14,
					-- layer=1 filter=98 channel=52
					7, -11, -21, -15, -8, -11, 13, -23, -14,
					-- layer=1 filter=98 channel=53
					-10, -19, 9, -11, -19, 24, -5, 6, 14,
					-- layer=1 filter=98 channel=54
					-11, -9, 2, 2, -2, 4, 7, 3, -12,
					-- layer=1 filter=98 channel=55
					-16, -20, -1, -16, -6, -8, 5, -10, 1,
					-- layer=1 filter=98 channel=56
					-19, -12, -22, -7, 1, 0, -3, 4, -25,
					-- layer=1 filter=98 channel=57
					5, -9, -19, -22, -18, -21, -23, -5, -22,
					-- layer=1 filter=98 channel=58
					3, -7, 7, 0, -8, -14, -12, -17, -4,
					-- layer=1 filter=98 channel=59
					-22, -28, 7, -28, -1, 0, -20, 5, -2,
					-- layer=1 filter=98 channel=60
					1, -22, -27, -17, -17, -14, -13, -6, 15,
					-- layer=1 filter=98 channel=61
					-10, -29, 17, -33, -6, 14, -21, 0, -3,
					-- layer=1 filter=98 channel=62
					-7, -27, -11, -30, 0, 7, -6, -19, -19,
					-- layer=1 filter=98 channel=63
					-33, -11, -6, -27, -18, -11, 0, -13, -7,
					-- layer=1 filter=99 channel=0
					26, 12, 20, -4, -34, -14, 29, -8, -4,
					-- layer=1 filter=99 channel=1
					-47, -8, -25, -24, -29, -28, -35, -27, -35,
					-- layer=1 filter=99 channel=2
					24, 20, 34, -20, -7, -16, 5, 7, -8,
					-- layer=1 filter=99 channel=3
					-13, -7, -11, -14, -30, -11, 17, 1, 3,
					-- layer=1 filter=99 channel=4
					8, 2, 26, 11, -15, 6, -20, -37, -21,
					-- layer=1 filter=99 channel=5
					5, 3, -11, -12, -18, -28, 20, 8, 18,
					-- layer=1 filter=99 channel=6
					-76, -60, -10, -74, -71, -60, -24, -16, -21,
					-- layer=1 filter=99 channel=7
					-5, 9, 29, 17, 20, 18, 25, 3, -17,
					-- layer=1 filter=99 channel=8
					9, 13, 0, 23, 14, 12, -3, -19, -29,
					-- layer=1 filter=99 channel=9
					26, 27, 20, -9, 14, -6, 6, 3, 4,
					-- layer=1 filter=99 channel=10
					8, -25, -20, -27, -35, -41, -14, -60, -36,
					-- layer=1 filter=99 channel=11
					29, 23, 30, 58, 42, 51, 47, 22, 80,
					-- layer=1 filter=99 channel=12
					-31, -33, -20, -5, -11, -8, 15, 11, 21,
					-- layer=1 filter=99 channel=13
					16, 4, 3, 26, 24, 4, 45, 24, 5,
					-- layer=1 filter=99 channel=14
					28, 1, 18, 13, -18, -16, 12, -19, -15,
					-- layer=1 filter=99 channel=15
					35, -47, -30, 4, -78, -26, -15, -58, 3,
					-- layer=1 filter=99 channel=16
					-1, -14, 34, 1, -15, 12, -16, -26, 23,
					-- layer=1 filter=99 channel=17
					-3, 2, -6, -31, -5, -4, -15, -13, -22,
					-- layer=1 filter=99 channel=18
					-32, -23, -2, -76, -79, -59, -13, -52, -33,
					-- layer=1 filter=99 channel=19
					-46, -17, 0, -28, -38, -48, -40, -14, -36,
					-- layer=1 filter=99 channel=20
					9, -6, -10, -19, -24, -31, 12, -16, -16,
					-- layer=1 filter=99 channel=21
					-28, -43, -19, -35, -44, -17, 21, -10, -1,
					-- layer=1 filter=99 channel=22
					16, 26, 27, -2, -8, 25, 14, 4, 8,
					-- layer=1 filter=99 channel=23
					33, 28, 8, 53, 39, 27, 66, 27, 46,
					-- layer=1 filter=99 channel=24
					-27, -30, -19, -31, -31, -26, -17, -22, -31,
					-- layer=1 filter=99 channel=25
					-61, -54, -44, -72, -90, -53, -17, -27, 12,
					-- layer=1 filter=99 channel=26
					-46, -61, -21, -11, -13, -22, 13, -12, 17,
					-- layer=1 filter=99 channel=27
					-3, 2, -2, -5, -17, -23, -19, -17, -17,
					-- layer=1 filter=99 channel=28
					-19, -16, 0, 4, 10, 17, 12, 3, 8,
					-- layer=1 filter=99 channel=29
					-45, -34, -28, -33, -17, -32, -31, -12, -32,
					-- layer=1 filter=99 channel=30
					14, 25, 11, 22, 25, 22, 32, 31, 41,
					-- layer=1 filter=99 channel=31
					5, 11, -8, -12, -15, -8, 0, 1, -13,
					-- layer=1 filter=99 channel=32
					-54, -101, -92, -85, -144, -122, -77, -19, -28,
					-- layer=1 filter=99 channel=33
					-62, -29, -33, -78, -68, -75, -47, -33, -27,
					-- layer=1 filter=99 channel=34
					-53, -82, -63, -80, -79, -24, 0, -23, 42,
					-- layer=1 filter=99 channel=35
					-9, 3, -14, -26, -33, -24, -31, -49, -41,
					-- layer=1 filter=99 channel=36
					-2, 8, -25, 7, 12, -1, 44, 23, 24,
					-- layer=1 filter=99 channel=37
					-52, -93, -94, -164, -132, -110, 11, -22, 4,
					-- layer=1 filter=99 channel=38
					11, 0, -3, 24, 28, 0, 27, 9, 15,
					-- layer=1 filter=99 channel=39
					36, 38, -6, 21, 7, 5, 39, -9, -8,
					-- layer=1 filter=99 channel=40
					25, 21, 49, -17, 19, 8, -25, -9, 3,
					-- layer=1 filter=99 channel=41
					0, 13, 7, -2, 18, -14, -14, 10, 9,
					-- layer=1 filter=99 channel=42
					65, 46, 55, 26, 13, 47, 10, -20, 10,
					-- layer=1 filter=99 channel=43
					-70, -87, -50, -128, -89, -71, -12, -23, -16,
					-- layer=1 filter=99 channel=44
					-15, -59, -27, -50, -66, -26, 4, -36, 23,
					-- layer=1 filter=99 channel=45
					-87, -106, -57, -117, -127, -106, -9, -27, -14,
					-- layer=1 filter=99 channel=46
					-10, -30, -39, -5, -12, -43, -17, -9, -26,
					-- layer=1 filter=99 channel=47
					-27, -66, -35, -125, -107, -75, -5, -11, 19,
					-- layer=1 filter=99 channel=48
					32, 14, 5, 16, 17, -3, 43, 38, 10,
					-- layer=1 filter=99 channel=49
					40, -32, -31, -14, -66, -48, -8, -66, -9,
					-- layer=1 filter=99 channel=50
					17, 14, -1, 10, 11, -1, 13, 17, 29,
					-- layer=1 filter=99 channel=51
					19, 20, 5, -9, 4, -5, 0, 7, -17,
					-- layer=1 filter=99 channel=52
					-120, -143, -87, -80, -54, -63, 11, -27, 24,
					-- layer=1 filter=99 channel=53
					-31, -14, -3, -79, -83, -25, -65, -117, -80,
					-- layer=1 filter=99 channel=54
					25, 29, -2, 18, 19, 12, 16, 33, 27,
					-- layer=1 filter=99 channel=55
					0, -15, 0, 15, 4, 5, 23, 9, 17,
					-- layer=1 filter=99 channel=56
					14, 12, 28, 31, -1, 31, -18, 7, 2,
					-- layer=1 filter=99 channel=57
					-22, -27, -5, -4, -10, -12, 3, -37, -20,
					-- layer=1 filter=99 channel=58
					3, 11, 0, -20, -37, -35, 7, -6, 0,
					-- layer=1 filter=99 channel=59
					-30, -30, 22, -63, -83, -27, -71, -66, -46,
					-- layer=1 filter=99 channel=60
					-25, -48, -26, -59, -94, -39, 39, -29, -17,
					-- layer=1 filter=99 channel=61
					-27, -64, 11, -88, -110, -38, -59, -109, -94,
					-- layer=1 filter=99 channel=62
					-77, -75, -28, -84, -105, -56, -14, -53, -31,
					-- layer=1 filter=99 channel=63
					28, 17, 17, 29, 1, 9, 21, 6, -10,
					-- layer=1 filter=100 channel=0
					-13, -47, -40, -42, -60, -35, -10, -36, -35,
					-- layer=1 filter=100 channel=1
					20, 31, -19, -7, 24, -22, -14, 24, -23,
					-- layer=1 filter=100 channel=2
					-34, -39, -38, -7, -30, -30, -2, -22, -3,
					-- layer=1 filter=100 channel=3
					-17, -12, -2, -14, -10, 13, -8, 2, 21,
					-- layer=1 filter=100 channel=4
					-20, -3, 10, -36, -15, -14, -50, -22, -46,
					-- layer=1 filter=100 channel=5
					5, -35, -14, 9, 0, 10, 14, 0, 26,
					-- layer=1 filter=100 channel=6
					0, 16, -34, -21, -15, -19, -1, -20, -19,
					-- layer=1 filter=100 channel=7
					15, -1, 2, 32, -7, 10, 6, -9, 0,
					-- layer=1 filter=100 channel=8
					28, 12, 0, 12, 18, 1, -19, -2, -34,
					-- layer=1 filter=100 channel=9
					3, 11, -10, 14, 12, -4, 21, 4, 0,
					-- layer=1 filter=100 channel=10
					6, 5, -16, -15, -4, -3, -13, 24, 6,
					-- layer=1 filter=100 channel=11
					-45, -63, -47, -41, -63, -56, -45, -28, -39,
					-- layer=1 filter=100 channel=12
					4, -6, -9, -3, -10, 12, -4, -19, 4,
					-- layer=1 filter=100 channel=13
					-17, 9, 3, 0, -4, 1, 15, -6, 20,
					-- layer=1 filter=100 channel=14
					-51, -56, -74, -29, -67, -50, -11, -29, -26,
					-- layer=1 filter=100 channel=15
					14, 27, 6, 8, 52, 3, 4, 81, -1,
					-- layer=1 filter=100 channel=16
					-33, -38, -28, -28, -7, -36, -27, -29, -43,
					-- layer=1 filter=100 channel=17
					-3, 19, -10, 3, 28, -13, 7, 21, -2,
					-- layer=1 filter=100 channel=18
					-28, 4, -22, 1, -14, 15, -1, -6, -3,
					-- layer=1 filter=100 channel=19
					4, 7, -9, 7, -10, -6, 3, 6, 0,
					-- layer=1 filter=100 channel=20
					-15, -4, 1, -5, -3, 8, -44, 37, -28,
					-- layer=1 filter=100 channel=21
					40, 40, -32, -11, 23, 7, 3, 23, -5,
					-- layer=1 filter=100 channel=22
					-3, -8, 29, -23, -1, -17, 9, 16, 12,
					-- layer=1 filter=100 channel=23
					-3, 6, -4, -12, 16, 29, 32, 36, 21,
					-- layer=1 filter=100 channel=24
					-10, 2, -10, 3, 2, -15, -12, 8, -8,
					-- layer=1 filter=100 channel=25
					-51, -28, -61, -56, -9, -8, -51, -9, -61,
					-- layer=1 filter=100 channel=26
					-12, 7, 9, 2, 0, -13, -28, 4, -55,
					-- layer=1 filter=100 channel=27
					15, 17, 6, 0, 6, 3, 22, 14, 5,
					-- layer=1 filter=100 channel=28
					14, 16, -9, -6, 1, 16, 6, 3, 20,
					-- layer=1 filter=100 channel=29
					2, 1, -1, 0, 16, -3, -19, 17, -9,
					-- layer=1 filter=100 channel=30
					1, -9, 22, 18, 5, -3, 11, 14, 44,
					-- layer=1 filter=100 channel=31
					-8, -15, -13, 12, 6, -9, 12, 2, 6,
					-- layer=1 filter=100 channel=32
					-39, 154, 92, -24, 114, 18, -8, 129, 0,
					-- layer=1 filter=100 channel=33
					21, 9, -16, 5, 16, 4, -8, 22, 13,
					-- layer=1 filter=100 channel=34
					-58, -25, -36, -62, -13, 4, 45, -4, -37,
					-- layer=1 filter=100 channel=35
					16, 18, 10, 10, -2, -12, 5, -3, 7,
					-- layer=1 filter=100 channel=36
					-17, 13, -1, -3, 7, 0, -13, 32, -2,
					-- layer=1 filter=100 channel=37
					-69, -66, -81, -46, -92, -8, -10, -15, -54,
					-- layer=1 filter=100 channel=38
					-12, 0, -18, -3, 1, 13, 5, 7, 23,
					-- layer=1 filter=100 channel=39
					8, 11, -23, -33, 7, -6, -19, 28, 0,
					-- layer=1 filter=100 channel=40
					-9, -5, 0, 6, 54, -38, 6, 36, 35,
					-- layer=1 filter=100 channel=41
					16, -25, -7, 8, 16, -10, -8, -12, 17,
					-- layer=1 filter=100 channel=42
					-6, -15, -16, 8, 2, 26, 39, 5, 24,
					-- layer=1 filter=100 channel=43
					-21, 14, -91, -14, -68, 5, 31, -13, -31,
					-- layer=1 filter=100 channel=44
					-16, 5, 25, -26, 45, 13, 0, 52, -19,
					-- layer=1 filter=100 channel=45
					7, -15, -81, -14, -97, 2, 24, -37, -3,
					-- layer=1 filter=100 channel=46
					-45, -58, -41, -5, -25, -25, 2, -27, -15,
					-- layer=1 filter=100 channel=47
					-57, -54, -73, -56, -56, -7, -44, -4, -52,
					-- layer=1 filter=100 channel=48
					0, 13, -11, -7, 1, -11, 20, 17, 8,
					-- layer=1 filter=100 channel=49
					-1, 14, 16, 0, 43, 29, -12, 79, 15,
					-- layer=1 filter=100 channel=50
					-5, -3, -18, 17, 0, 21, 10, 12, 18,
					-- layer=1 filter=100 channel=51
					9, 10, -10, 9, 12, 16, 0, 7, -6,
					-- layer=1 filter=100 channel=52
					-76, -90, -79, -65, -68, -39, 4, -31, -67,
					-- layer=1 filter=100 channel=53
					2, 46, 39, -26, 52, -2, -23, 54, 8,
					-- layer=1 filter=100 channel=54
					5, 7, -19, -7, -1, -5, 0, 19, 15,
					-- layer=1 filter=100 channel=55
					-34, 2, -10, -5, -6, 17, 0, -7, 22,
					-- layer=1 filter=100 channel=56
					-1, -18, -16, -21, -26, -24, -48, -31, -38,
					-- layer=1 filter=100 channel=57
					-14, 13, -1, 10, -3, 2, 10, -5, -13,
					-- layer=1 filter=100 channel=58
					-2, -10, -36, -11, -16, 6, 7, 12, -12,
					-- layer=1 filter=100 channel=59
					23, 38, 21, -8, 70, 4, 18, 33, 24,
					-- layer=1 filter=100 channel=60
					-78, -23, -43, -76, -63, -67, 30, 14, 15,
					-- layer=1 filter=100 channel=61
					58, 34, 43, 24, 68, 30, 45, 57, 43,
					-- layer=1 filter=100 channel=62
					19, 43, -39, 4, -3, -8, 22, 18, 4,
					-- layer=1 filter=100 channel=63
					-2, -32, 27, 5, 6, -2, 9, 14, 16,
					-- layer=1 filter=101 channel=0
					-30, -20, -33, -23, -25, -27, -7, 7, -6,
					-- layer=1 filter=101 channel=1
					-10, -15, 9, 25, 20, 3, -6, 31, -15,
					-- layer=1 filter=101 channel=2
					-7, 32, 4, 7, 10, -8, 29, 19, 14,
					-- layer=1 filter=101 channel=3
					-15, 5, 1, 11, -12, 1, 8, -24, -12,
					-- layer=1 filter=101 channel=4
					-16, -22, -20, -13, 5, -13, 9, -19, -21,
					-- layer=1 filter=101 channel=5
					-17, -20, -2, 11, -12, 16, -11, -8, 5,
					-- layer=1 filter=101 channel=6
					-10, -1, -7, 3, 32, 28, 14, 2, -18,
					-- layer=1 filter=101 channel=7
					-4, -12, 10, 26, -7, -11, 38, 38, -4,
					-- layer=1 filter=101 channel=8
					-19, -20, -23, 1, 10, -7, 44, 12, -13,
					-- layer=1 filter=101 channel=9
					-12, -10, 1, -9, -17, -16, -18, -10, -28,
					-- layer=1 filter=101 channel=10
					-4, 9, -5, -1, 9, -2, 2, 8, 31,
					-- layer=1 filter=101 channel=11
					-5, -22, -12, -18, -30, 10, 28, 18, -14,
					-- layer=1 filter=101 channel=12
					-2, -6, -2, -1, -13, 5, -14, 2, 3,
					-- layer=1 filter=101 channel=13
					0, 3, 1, 14, 2, 15, 4, 9, -3,
					-- layer=1 filter=101 channel=14
					21, 31, -1, 30, 20, 45, 33, 54, 59,
					-- layer=1 filter=101 channel=15
					11, 34, 9, 4, 7, 13, 39, -2, 16,
					-- layer=1 filter=101 channel=16
					-24, -18, -7, -14, -6, -28, 32, 13, -25,
					-- layer=1 filter=101 channel=17
					12, 8, -3, -13, 9, -14, -8, 17, 0,
					-- layer=1 filter=101 channel=18
					-25, -22, -7, 8, 22, 13, -14, -20, -30,
					-- layer=1 filter=101 channel=19
					-13, 0, -13, 9, -16, -6, -1, 6, -12,
					-- layer=1 filter=101 channel=20
					-13, -17, 5, -24, 0, 14, 11, -15, 6,
					-- layer=1 filter=101 channel=21
					-5, 20, 13, 2, 23, 46, 23, 4, -6,
					-- layer=1 filter=101 channel=22
					-21, -10, -12, -22, -47, -15, -6, -31, -2,
					-- layer=1 filter=101 channel=23
					11, -4, 2, -7, 8, 26, -8, -15, 10,
					-- layer=1 filter=101 channel=24
					7, -3, 16, -6, -11, -15, 25, 7, 8,
					-- layer=1 filter=101 channel=25
					36, 40, -8, 5, 35, 20, 14, 11, -7,
					-- layer=1 filter=101 channel=26
					-8, -47, -31, -17, -2, -12, 24, -25, -40,
					-- layer=1 filter=101 channel=27
					-1, -4, 7, -2, 4, 0, 25, 7, 0,
					-- layer=1 filter=101 channel=28
					10, 23, 0, 26, 4, 34, 14, 16, -5,
					-- layer=1 filter=101 channel=29
					8, -4, -2, 20, 24, 9, 12, 22, -10,
					-- layer=1 filter=101 channel=30
					4, -16, 7, 6, 9, 7, -15, -17, -3,
					-- layer=1 filter=101 channel=31
					-16, -2, 11, -12, 5, 10, 13, -6, 5,
					-- layer=1 filter=101 channel=32
					23, 21, -21, 24, 41, 20, 30, -3, 60,
					-- layer=1 filter=101 channel=33
					14, 10, 13, 6, 24, 27, 11, 19, 22,
					-- layer=1 filter=101 channel=34
					43, 17, 4, 12, -13, 16, 0, -8, -12,
					-- layer=1 filter=101 channel=35
					6, -4, -2, -11, 5, 0, 8, 16, 6,
					-- layer=1 filter=101 channel=36
					-6, 14, -1, 2, 28, 22, 3, 20, 34,
					-- layer=1 filter=101 channel=37
					40, 33, 12, -18, -1, 8, 27, -17, -2,
					-- layer=1 filter=101 channel=38
					0, -13, -21, -2, 17, 22, -26, -14, 8,
					-- layer=1 filter=101 channel=39
					4, 11, 5, -27, 9, 6, -16, -31, 4,
					-- layer=1 filter=101 channel=40
					-26, -3, -1, -14, -17, -32, 4, -3, -21,
					-- layer=1 filter=101 channel=41
					-16, -9, -10, -6, 2, 11, 5, 1, -11,
					-- layer=1 filter=101 channel=42
					39, 35, 9, 29, 48, 30, 32, 0, 4,
					-- layer=1 filter=101 channel=43
					24, 58, 3, 31, 23, 40, 19, 8, -14,
					-- layer=1 filter=101 channel=44
					24, -6, -23, -34, 0, -8, 6, -21, -11,
					-- layer=1 filter=101 channel=45
					5, 40, -7, 3, 33, 35, 20, 27, 4,
					-- layer=1 filter=101 channel=46
					5, 29, 16, -15, 16, 9, 10, 13, 46,
					-- layer=1 filter=101 channel=47
					6, 22, -16, -2, 1, 14, 24, -20, -17,
					-- layer=1 filter=101 channel=48
					-1, 9, -13, -16, -5, -5, -18, 5, 14,
					-- layer=1 filter=101 channel=49
					47, 16, 21, 2, 12, 8, 42, 4, 0,
					-- layer=1 filter=101 channel=50
					-19, 4, -2, -5, -10, 6, -16, 6, -2,
					-- layer=1 filter=101 channel=51
					2, 10, -7, 0, 5, 0, 0, 4, -6,
					-- layer=1 filter=101 channel=52
					-5, 15, -26, -9, 16, 39, 33, 31, 19,
					-- layer=1 filter=101 channel=53
					-34, -42, -8, -46, -12, -58, 13, -51, -44,
					-- layer=1 filter=101 channel=54
					-16, 6, -15, -7, -5, -7, -24, -1, 6,
					-- layer=1 filter=101 channel=55
					0, -23, -24, 0, 0, 12, 13, 8, 0,
					-- layer=1 filter=101 channel=56
					-18, 3, -17, 10, -15, -30, 36, 9, -15,
					-- layer=1 filter=101 channel=57
					13, -9, 8, -10, -2, -15, -1, 8, -11,
					-- layer=1 filter=101 channel=58
					-25, -9, -11, -15, 8, -4, 0, 7, 9,
					-- layer=1 filter=101 channel=59
					-2, 13, 39, -6, 46, 7, 40, 0, -23,
					-- layer=1 filter=101 channel=60
					79, 64, 102, 155, 111, 150, 62, 86, 60,
					-- layer=1 filter=101 channel=61
					-1, 47, 21, 8, 8, 20, 37, -7, -28,
					-- layer=1 filter=101 channel=62
					23, 53, 37, 14, 46, 47, 32, 19, -6,
					-- layer=1 filter=101 channel=63
					-18, 14, -2, -21, -1, 5, 16, -6, -16,
					-- layer=1 filter=102 channel=0
					2, -4, -15, 4, 3, -16, 11, -3, -14,
					-- layer=1 filter=102 channel=1
					8, 11, -17, -11, -6, 5, 11, -3, -4,
					-- layer=1 filter=102 channel=2
					12, -1, 5, -9, -14, -1, -8, -13, 2,
					-- layer=1 filter=102 channel=3
					13, -13, 12, 4, -9, 5, -7, -3, 3,
					-- layer=1 filter=102 channel=4
					9, -15, -8, -9, 1, 8, 9, 0, 9,
					-- layer=1 filter=102 channel=5
					11, 4, -2, -2, -7, -2, -7, 5, 9,
					-- layer=1 filter=102 channel=6
					7, -9, -4, -11, 12, -12, -3, 3, -14,
					-- layer=1 filter=102 channel=7
					-16, -5, -7, -14, 4, -11, 5, -1, -13,
					-- layer=1 filter=102 channel=8
					2, -8, -7, -5, 11, -6, -11, -14, -12,
					-- layer=1 filter=102 channel=9
					-11, -8, 3, 9, -4, 5, 0, -12, -1,
					-- layer=1 filter=102 channel=10
					-1, -14, 5, -10, -15, -1, 0, 6, -6,
					-- layer=1 filter=102 channel=11
					-7, -3, -6, -15, -11, -4, -14, -8, -11,
					-- layer=1 filter=102 channel=12
					-2, -4, -15, 0, -15, 2, -15, 0, 11,
					-- layer=1 filter=102 channel=13
					0, -15, 0, -3, -6, -4, -16, -4, -15,
					-- layer=1 filter=102 channel=14
					3, 3, -3, -3, -14, -16, 0, -13, 0,
					-- layer=1 filter=102 channel=15
					-14, 6, -3, -9, 7, -5, -2, 1, -13,
					-- layer=1 filter=102 channel=16
					-14, -4, 7, -8, -11, -10, 6, 0, -10,
					-- layer=1 filter=102 channel=17
					3, -4, 2, 0, 0, -4, 7, -12, -16,
					-- layer=1 filter=102 channel=18
					-9, -7, -5, 10, 7, 0, -14, 12, -2,
					-- layer=1 filter=102 channel=19
					7, -15, -16, -10, -5, -6, -16, -11, -6,
					-- layer=1 filter=102 channel=20
					-11, 7, 1, 3, -8, 4, -2, -2, 4,
					-- layer=1 filter=102 channel=21
					6, -8, -11, -9, 13, 4, 9, 1, -12,
					-- layer=1 filter=102 channel=22
					-10, -11, 4, 2, -14, -15, 10, -5, -5,
					-- layer=1 filter=102 channel=23
					-19, 6, 12, 11, 0, -1, -13, -7, -9,
					-- layer=1 filter=102 channel=24
					-7, 8, 0, -10, 2, -12, -3, -13, -5,
					-- layer=1 filter=102 channel=25
					-14, -10, -17, -5, -10, -6, -16, 13, -13,
					-- layer=1 filter=102 channel=26
					5, 10, -13, 10, 1, 5, -3, 4, -6,
					-- layer=1 filter=102 channel=27
					12, 3, -10, 8, -9, 4, 2, -10, -15,
					-- layer=1 filter=102 channel=28
					6, 10, -16, -14, 8, -1, -16, 9, -5,
					-- layer=1 filter=102 channel=29
					-2, -11, -12, -8, 2, 0, -15, 3, -4,
					-- layer=1 filter=102 channel=30
					2, 5, -6, 10, 4, 6, 7, 3, -15,
					-- layer=1 filter=102 channel=31
					7, 12, -5, -6, -1, 0, 4, 6, 9,
					-- layer=1 filter=102 channel=32
					-15, 2, -6, 4, -13, 6, 7, -12, 7,
					-- layer=1 filter=102 channel=33
					7, 1, -2, 4, -10, 4, -15, 8, 9,
					-- layer=1 filter=102 channel=34
					-2, -4, -11, 9, -9, -6, 2, -2, -11,
					-- layer=1 filter=102 channel=35
					0, -9, -1, 8, -7, -14, -13, -8, -10,
					-- layer=1 filter=102 channel=36
					1, 0, 0, -13, 5, 2, 4, -3, 5,
					-- layer=1 filter=102 channel=37
					-5, 6, 8, -4, 8, -8, -16, -4, 0,
					-- layer=1 filter=102 channel=38
					3, -5, -6, 5, 1, -1, 8, -10, 12,
					-- layer=1 filter=102 channel=39
					-10, -6, 5, 5, -18, 5, -4, 6, -19,
					-- layer=1 filter=102 channel=40
					10, -9, -12, 5, 11, 1, -4, 10, -3,
					-- layer=1 filter=102 channel=41
					-13, -10, 5, 3, -14, 12, -6, 16, 1,
					-- layer=1 filter=102 channel=42
					-7, 4, 7, 6, -6, -8, 9, 6, 7,
					-- layer=1 filter=102 channel=43
					-9, -10, 5, 0, 3, 13, 7, -5, -12,
					-- layer=1 filter=102 channel=44
					2, -17, -11, -9, 0, 6, -3, 7, -1,
					-- layer=1 filter=102 channel=45
					-13, -14, 5, 6, -9, 4, -13, 0, 10,
					-- layer=1 filter=102 channel=46
					-5, 6, 2, 1, 12, 7, 12, 7, -1,
					-- layer=1 filter=102 channel=47
					8, -10, 7, 6, 7, -12, 6, -2, -9,
					-- layer=1 filter=102 channel=48
					-10, 8, -19, 4, -11, -10, -4, -6, 1,
					-- layer=1 filter=102 channel=49
					4, -20, 9, 9, 4, -4, 0, -8, -8,
					-- layer=1 filter=102 channel=50
					-1, -13, -8, -5, 0, -13, -9, -12, 10,
					-- layer=1 filter=102 channel=51
					-12, 0, -10, -16, -17, 6, -6, -8, -12,
					-- layer=1 filter=102 channel=52
					3, -11, -15, 3, 0, 6, -2, 7, 10,
					-- layer=1 filter=102 channel=53
					-10, 10, 0, 4, -6, -9, -16, -10, -11,
					-- layer=1 filter=102 channel=54
					-10, -15, -8, 10, -4, 8, -5, -8, 0,
					-- layer=1 filter=102 channel=55
					0, -12, 1, -11, 3, 11, -9, -9, -8,
					-- layer=1 filter=102 channel=56
					-2, -7, -2, 14, -18, -17, -4, -12, -2,
					-- layer=1 filter=102 channel=57
					12, 10, -12, -3, -17, -10, -7, -2, 14,
					-- layer=1 filter=102 channel=58
					-5, 3, 5, -2, -14, -12, 6, -3, -4,
					-- layer=1 filter=102 channel=59
					-3, -8, -20, -12, 5, 3, -12, -14, -9,
					-- layer=1 filter=102 channel=60
					-2, 5, 10, -5, 0, -9, -17, 11, 0,
					-- layer=1 filter=102 channel=61
					1, 8, -7, -1, 14, -9, -15, -4, -6,
					-- layer=1 filter=102 channel=62
					-13, -3, 0, -9, -8, -16, -10, 10, -12,
					-- layer=1 filter=102 channel=63
					-4, -11, -12, 2, 6, 12, -2, -2, -4,
					-- layer=1 filter=103 channel=0
					-22, -95, -17, 34, -87, -34, -46, -35, -10,
					-- layer=1 filter=103 channel=1
					31, -81, -98, -9, -34, -32, 34, -25, 4,
					-- layer=1 filter=103 channel=2
					-88, -83, -40, -22, -123, -67, -78, -120, -44,
					-- layer=1 filter=103 channel=3
					16, 7, -41, 56, 1, -17, 24, 35, -38,
					-- layer=1 filter=103 channel=4
					-58, -42, -22, -96, -16, -11, -60, -2, -27,
					-- layer=1 filter=103 channel=5
					-24, 4, 11, -4, 11, -15, -11, -16, -19,
					-- layer=1 filter=103 channel=6
					52, -3, -2, 61, -98, -38, 58, -48, -62,
					-- layer=1 filter=103 channel=7
					65, -27, -51, 53, -26, 27, 58, -6, 26,
					-- layer=1 filter=103 channel=8
					26, -1, -33, 64, -47, -24, 86, -33, 0,
					-- layer=1 filter=103 channel=9
					0, -11, -38, 52, -72, 10, 29, -35, 11,
					-- layer=1 filter=103 channel=10
					-87, -75, -25, 7, -18, -32, -65, 2, -9,
					-- layer=1 filter=103 channel=11
					-41, 29, 54, -42, 55, 5, -19, 38, 7,
					-- layer=1 filter=103 channel=12
					-6, -29, 27, -44, 12, 5, -17, 34, 0,
					-- layer=1 filter=103 channel=13
					28, -23, -8, 24, -2, -9, 15, -18, 3,
					-- layer=1 filter=103 channel=14
					-56, -113, -48, -6, -129, -82, -74, -81, -42,
					-- layer=1 filter=103 channel=15
					-34, 15, 33, -25, 34, -27, -30, 30, -40,
					-- layer=1 filter=103 channel=16
					7, -46, 20, -14, 11, 25, -54, 44, -1,
					-- layer=1 filter=103 channel=17
					-9, -75, -98, 28, -72, -34, 30, -48, -11,
					-- layer=1 filter=103 channel=18
					20, 3, 16, 10, -105, -22, 24, -26, -32,
					-- layer=1 filter=103 channel=19
					-40, -39, -67, -32, -46, -32, -31, -43, -29,
					-- layer=1 filter=103 channel=20
					-5, 17, 9, -54, 10, 16, -18, 21, -16,
					-- layer=1 filter=103 channel=21
					83, 11, -15, 91, -69, -57, 54, -2, -20,
					-- layer=1 filter=103 channel=22
					22, 10, -33, 88, -20, -43, 53, 24, 32,
					-- layer=1 filter=103 channel=23
					-16, 25, 23, -25, 28, -16, -32, 21, 2,
					-- layer=1 filter=103 channel=24
					-63, -70, -98, -15, -19, -31, -26, -18, -44,
					-- layer=1 filter=103 channel=25
					-26, 3, 38, -48, -40, -6, -49, -50, -46,
					-- layer=1 filter=103 channel=26
					50, -25, -5, 9, -27, -29, 34, -43, -18,
					-- layer=1 filter=103 channel=27
					-6, -53, -80, 35, -39, -31, 35, -53, -12,
					-- layer=1 filter=103 channel=28
					24, 7, -3, 39, -29, -11, 44, -9, -7,
					-- layer=1 filter=103 channel=29
					18, -25, -34, 8, -55, 0, 12, -28, -11,
					-- layer=1 filter=103 channel=30
					-43, -13, -12, 5, 4, 1, -2, -14, 14,
					-- layer=1 filter=103 channel=31
					-14, -9, 10, 7, -14, 14, 6, -6, 13,
					-- layer=1 filter=103 channel=32
					63, 71, 38, 16, -24, -26, 19, -36, 0,
					-- layer=1 filter=103 channel=33
					-16, -73, -99, -11, -8, 2, 19, -44, -10,
					-- layer=1 filter=103 channel=34
					-22, -9, 41, -99, -24, -48, -16, -73, -42,
					-- layer=1 filter=103 channel=35
					-63, -61, -61, -32, -49, 10, 2, -15, -18,
					-- layer=1 filter=103 channel=36
					-16, 12, 30, -53, 28, 8, -29, 37, -1,
					-- layer=1 filter=103 channel=37
					64, -23, 43, -32, -73, -5, -92, -8, -73,
					-- layer=1 filter=103 channel=38
					-80, -18, -17, -86, -18, -15, -112, 0, -7,
					-- layer=1 filter=103 channel=39
					-17, 0, 20, -17, 16, -5, -16, 38, -17,
					-- layer=1 filter=103 channel=40
					-21, -41, -98, 44, -58, -122, 25, -79, -32,
					-- layer=1 filter=103 channel=41
					-61, -64, -23, -27, -4, -11, -25, 0, -2,
					-- layer=1 filter=103 channel=42
					-104, -67, 18, -19, -2, -30, -65, -3, -30,
					-- layer=1 filter=103 channel=43
					61, -39, 30, 78, -144, -47, 30, -30, -51,
					-- layer=1 filter=103 channel=44
					-36, 19, 46, -106, 30, -16, -70, 12, -44,
					-- layer=1 filter=103 channel=45
					57, 9, 9, 90, -116, 6, -8, -14, -84,
					-- layer=1 filter=103 channel=46
					-25, -56, 5, 44, -8, -4, 65, 2, 4,
					-- layer=1 filter=103 channel=47
					19, 0, 54, -60, -42, -23, -39, -32, -41,
					-- layer=1 filter=103 channel=48
					20, -21, -8, -22, -7, -13, 6, -22, 5,
					-- layer=1 filter=103 channel=49
					-23, 17, 49, -30, 46, -19, -39, 36, -45,
					-- layer=1 filter=103 channel=50
					-30, -15, -23, -36, 8, -26, -11, -17, 12,
					-- layer=1 filter=103 channel=51
					-48, -70, -50, -30, -31, -43, -15, -42, -18,
					-- layer=1 filter=103 channel=52
					-4, -34, 57, -27, -23, -57, -27, -31, -53,
					-- layer=1 filter=103 channel=53
					14, 34, -59, 93, -35, -72, 69, 5, -33,
					-- layer=1 filter=103 channel=54
					-42, -19, -20, -23, -13, -17, -8, -14, -11,
					-- layer=1 filter=103 channel=55
					5, 13, 0, 19, 10, 4, -82, 7, -22,
					-- layer=1 filter=103 channel=56
					-50, -57, -26, -10, -13, -16, 22, 13, 2,
					-- layer=1 filter=103 channel=57
					-27, -30, -37, -28, -30, -15, -21, -16, -25,
					-- layer=1 filter=103 channel=58
					4, -23, 23, -54, -33, -17, -27, -21, -3,
					-- layer=1 filter=103 channel=59
					38, 22, -13, 73, -64, -61, 77, -55, -7,
					-- layer=1 filter=103 channel=60
					23, -22, -2, -12, -40, -63, 3, -53, -77,
					-- layer=1 filter=103 channel=61
					57, 46, -78, 97, -54, -68, 66, 6, -59,
					-- layer=1 filter=103 channel=62
					50, 6, -2, 88, -117, -56, 72, -22, -42,
					-- layer=1 filter=103 channel=63
					-11, -28, -42, 27, -27, -26, 43, -51, 7,
					-- layer=1 filter=104 channel=0
					-5, 0, 6, 0, -1, -11, -9, -2, -12,
					-- layer=1 filter=104 channel=1
					-14, 2, 3, -9, -7, 13, -10, -9, -1,
					-- layer=1 filter=104 channel=2
					-10, -15, 6, -8, -3, -10, -2, -12, -5,
					-- layer=1 filter=104 channel=3
					3, 10, -8, -7, 6, 7, -16, -17, 3,
					-- layer=1 filter=104 channel=4
					-4, 5, 0, -1, 0, -11, 4, -12, -14,
					-- layer=1 filter=104 channel=5
					-14, 1, -5, -3, 6, -19, -15, 2, -16,
					-- layer=1 filter=104 channel=6
					-5, -16, 3, 11, -13, 10, -8, -3, 12,
					-- layer=1 filter=104 channel=7
					-5, -12, 4, 3, 0, -7, -11, 5, 2,
					-- layer=1 filter=104 channel=8
					0, 2, 1, 8, 1, 6, -1, -7, -3,
					-- layer=1 filter=104 channel=9
					8, 9, -17, -8, -1, -2, 1, 4, -14,
					-- layer=1 filter=104 channel=10
					-5, 3, -2, 8, -1, 0, 8, -2, 10,
					-- layer=1 filter=104 channel=11
					-3, 8, 6, 6, -6, -14, -13, 6, 10,
					-- layer=1 filter=104 channel=12
					-10, 1, -17, 9, 10, -18, 4, -17, 0,
					-- layer=1 filter=104 channel=13
					11, 6, -14, 5, -2, -16, -7, -7, -6,
					-- layer=1 filter=104 channel=14
					-3, -14, 14, -11, -2, -3, -4, 11, 9,
					-- layer=1 filter=104 channel=15
					14, 7, -8, 4, -17, -8, -3, 0, 8,
					-- layer=1 filter=104 channel=16
					0, -11, 12, -1, 6, -13, 7, -2, 0,
					-- layer=1 filter=104 channel=17
					9, -15, 0, -14, 11, 11, 1, 7, 2,
					-- layer=1 filter=104 channel=18
					-6, -12, 12, -9, -12, 7, -10, -9, 12,
					-- layer=1 filter=104 channel=19
					-4, 2, -3, -3, 0, 11, -13, 1, -15,
					-- layer=1 filter=104 channel=20
					8, 10, -15, -15, -7, 0, -9, -11, -9,
					-- layer=1 filter=104 channel=21
					-2, 10, 3, -11, 0, 5, -8, 9, -11,
					-- layer=1 filter=104 channel=22
					-5, -1, -4, 4, 6, -8, -4, 6, -17,
					-- layer=1 filter=104 channel=23
					0, -6, -13, 1, 8, -6, -4, 8, -13,
					-- layer=1 filter=104 channel=24
					0, -12, -2, -18, -2, 0, 0, -8, -2,
					-- layer=1 filter=104 channel=25
					4, -5, -10, -4, 10, 0, -8, -13, -8,
					-- layer=1 filter=104 channel=26
					2, -12, 10, 0, -9, 2, 2, -1, -2,
					-- layer=1 filter=104 channel=27
					-15, -18, 6, 1, -8, 3, -1, 0, 9,
					-- layer=1 filter=104 channel=28
					-11, -8, -4, 4, 10, -17, -11, 9, -3,
					-- layer=1 filter=104 channel=29
					-11, -12, -13, -11, -3, 10, -12, -13, 9,
					-- layer=1 filter=104 channel=30
					-1, 13, -14, -7, -1, -5, 3, -5, -10,
					-- layer=1 filter=104 channel=31
					13, -2, -11, -1, -10, 1, 11, 14, -8,
					-- layer=1 filter=104 channel=32
					6, 9, -11, -6, 8, 7, 1, 7, 6,
					-- layer=1 filter=104 channel=33
					-13, -8, -8, 7, -10, -14, 4, -4, 1,
					-- layer=1 filter=104 channel=34
					7, 2, -7, -3, -12, -7, -9, 0, -12,
					-- layer=1 filter=104 channel=35
					-5, -13, -7, -7, -4, 0, 12, 9, -4,
					-- layer=1 filter=104 channel=36
					-8, -11, -10, 7, -5, 0, 10, -4, -10,
					-- layer=1 filter=104 channel=37
					0, 0, 9, -11, -6, -3, -3, 10, 2,
					-- layer=1 filter=104 channel=38
					-3, -15, -13, -3, 8, 7, 4, 7, -3,
					-- layer=1 filter=104 channel=39
					3, 2, 5, -5, -16, 5, -13, -6, 3,
					-- layer=1 filter=104 channel=40
					13, -7, -8, 6, -13, 6, -15, -2, -1,
					-- layer=1 filter=104 channel=41
					-10, -13, 4, 2, -3, 4, -12, -13, -14,
					-- layer=1 filter=104 channel=42
					9, 5, 10, -9, 3, -13, 7, -9, -13,
					-- layer=1 filter=104 channel=43
					0, 1, 5, -6, 4, 7, -14, 3, -14,
					-- layer=1 filter=104 channel=44
					-5, 10, 8, 12, 0, 11, -14, 11, 3,
					-- layer=1 filter=104 channel=45
					-8, -11, -12, -7, -15, -1, -12, -13, 4,
					-- layer=1 filter=104 channel=46
					-12, 6, -5, 15, -8, 8, -5, 7, 7,
					-- layer=1 filter=104 channel=47
					-4, 11, 6, -12, 0, 11, 10, -1, -1,
					-- layer=1 filter=104 channel=48
					-12, -17, 4, 0, 5, 4, -11, -7, -11,
					-- layer=1 filter=104 channel=49
					-11, 1, -14, 1, -4, 5, 8, 8, 0,
					-- layer=1 filter=104 channel=50
					-8, 12, 10, -7, 10, -7, 2, 9, -17,
					-- layer=1 filter=104 channel=51
					-5, -16, -17, -1, -5, -16, -1, 7, -7,
					-- layer=1 filter=104 channel=52
					7, -10, -11, -14, 0, 7, -8, 5, 1,
					-- layer=1 filter=104 channel=53
					-14, -8, -3, 4, 14, 13, 8, 4, 14,
					-- layer=1 filter=104 channel=54
					11, -12, -5, -3, -11, 6, 0, -13, 1,
					-- layer=1 filter=104 channel=55
					-10, -13, -2, -15, -10, -4, -4, 7, 5,
					-- layer=1 filter=104 channel=56
					-1, 8, 1, 2, -6, 0, -6, -4, -5,
					-- layer=1 filter=104 channel=57
					5, -3, 8, 7, 8, 0, -8, 0, -6,
					-- layer=1 filter=104 channel=58
					-5, -12, -12, 2, -10, -16, 2, 2, -15,
					-- layer=1 filter=104 channel=59
					-6, 2, -14, 12, -10, -9, 4, 5, -1,
					-- layer=1 filter=104 channel=60
					1, 13, 2, 13, 0, -8, 4, -2, 5,
					-- layer=1 filter=104 channel=61
					-14, 0, -2, 1, 6, -2, 6, 2, 4,
					-- layer=1 filter=104 channel=62
					8, -11, 1, 2, -13, -7, 9, -4, -8,
					-- layer=1 filter=104 channel=63
					-17, -5, -8, -9, -15, -14, -6, -12, -8,
					-- layer=1 filter=105 channel=0
					-18, -16, -19, 15, 32, 53, 6, -27, -33,
					-- layer=1 filter=105 channel=1
					-9, 24, 15, 17, 4, -3, 4, -23, -31,
					-- layer=1 filter=105 channel=2
					-10, 15, 12, 43, 39, 54, 26, -41, -16,
					-- layer=1 filter=105 channel=3
					11, 14, 9, 2, -6, -4, 4, 2, -13,
					-- layer=1 filter=105 channel=4
					15, -3, 0, -13, -5, -22, -8, 2, -20,
					-- layer=1 filter=105 channel=5
					4, 3, 7, -19, -6, -15, 11, 8, 22,
					-- layer=1 filter=105 channel=6
					-11, 4, -3, -10, -40, -34, 16, 3, 23,
					-- layer=1 filter=105 channel=7
					-18, -12, -10, -18, 3, -2, 6, 12, -10,
					-- layer=1 filter=105 channel=8
					-11, 5, 2, 2, -22, -19, 0, -9, 8,
					-- layer=1 filter=105 channel=9
					-16, 1, 17, -3, -18, -5, -26, -61, -43,
					-- layer=1 filter=105 channel=10
					15, 9, 1, -6, 4, 6, 16, -17, -28,
					-- layer=1 filter=105 channel=11
					-54, -21, -54, -33, 0, -31, -10, 8, -3,
					-- layer=1 filter=105 channel=12
					2, 19, -13, -9, -18, -36, 2, -5, -5,
					-- layer=1 filter=105 channel=13
					12, -4, 3, 1, 7, -7, 1, -20, -28,
					-- layer=1 filter=105 channel=14
					23, 32, 27, 65, 90, 80, 41, 3, 22,
					-- layer=1 filter=105 channel=15
					-12, 35, -7, -46, -16, 7, -27, -49, -65,
					-- layer=1 filter=105 channel=16
					-22, -26, -16, -23, -2, -31, 11, 22, 28,
					-- layer=1 filter=105 channel=17
					5, 3, 18, 17, 10, -6, -1, -6, -3,
					-- layer=1 filter=105 channel=18
					3, 36, 20, -6, -18, -11, -11, 8, -14,
					-- layer=1 filter=105 channel=19
					4, 26, 11, 20, -13, -18, 4, -4, -16,
					-- layer=1 filter=105 channel=20
					5, 25, -18, -37, -15, -11, -10, -20, -14,
					-- layer=1 filter=105 channel=21
					-32, -11, -26, 32, -12, -17, 17, -15, 15,
					-- layer=1 filter=105 channel=22
					-20, -28, 18, -7, 40, 22, -24, -62, -60,
					-- layer=1 filter=105 channel=23
					2, 25, -8, -27, 11, 19, -53, -40, -51,
					-- layer=1 filter=105 channel=24
					14, 33, 35, 10, -15, 7, -14, -12, -24,
					-- layer=1 filter=105 channel=25
					9, 1, 1, 5, 4, -6, 33, 37, 18,
					-- layer=1 filter=105 channel=26
					28, -3, -1, -22, -30, -32, -19, 10, 3,
					-- layer=1 filter=105 channel=27
					3, 5, 2, -2, -3, -14, 4, 0, -15,
					-- layer=1 filter=105 channel=28
					-9, -50, -35, 7, -14, -33, 24, 4, 27,
					-- layer=1 filter=105 channel=29
					17, -1, 2, 1, -3, -26, 7, -9, -7,
					-- layer=1 filter=105 channel=30
					11, 19, -6, -18, -6, -3, -6, -20, -16,
					-- layer=1 filter=105 channel=31
					5, 6, -9, 6, -13, 0, 0, -5, -10,
					-- layer=1 filter=105 channel=32
					-6, -41, 5, 7, -78, -44, -18, -17, -12,
					-- layer=1 filter=105 channel=33
					28, 13, 18, 6, -10, -4, -5, -10, -20,
					-- layer=1 filter=105 channel=34
					30, 36, 34, 30, 43, 50, -20, 0, -12,
					-- layer=1 filter=105 channel=35
					14, 6, 17, 29, 27, 6, 1, -10, -8,
					-- layer=1 filter=105 channel=36
					-4, 26, -19, -26, -19, -25, -15, -29, -15,
					-- layer=1 filter=105 channel=37
					5, -13, -15, 24, 21, -12, 20, 31, 39,
					-- layer=1 filter=105 channel=38
					-5, 26, -21, 2, 19, 8, -9, -43, -23,
					-- layer=1 filter=105 channel=39
					-5, 12, -15, -22, -1, -2, -23, -60, -30,
					-- layer=1 filter=105 channel=40
					-9, -23, 12, 27, 58, 30, -7, -43, -32,
					-- layer=1 filter=105 channel=41
					17, 11, -4, -12, -8, 3, -17, -6, -18,
					-- layer=1 filter=105 channel=42
					-9, 24, -12, 13, 32, 54, 19, -24, -66,
					-- layer=1 filter=105 channel=43
					0, -4, 3, 32, 5, -1, 31, 13, 19,
					-- layer=1 filter=105 channel=44
					-6, 7, -10, -43, 8, -21, 0, 0, -6,
					-- layer=1 filter=105 channel=45
					9, 42, -2, 22, 16, -7, 26, 16, 37,
					-- layer=1 filter=105 channel=46
					42, 44, 49, 24, 20, 15, -17, -2, 0,
					-- layer=1 filter=105 channel=47
					13, 6, 0, 25, 16, 6, 25, 31, 36,
					-- layer=1 filter=105 channel=48
					6, -3, 13, -12, 11, -1, -16, -16, -3,
					-- layer=1 filter=105 channel=49
					-12, 1, -49, -69, -55, -40, -32, -52, -51,
					-- layer=1 filter=105 channel=50
					20, 1, 3, -4, -1, -1, -12, 2, -1,
					-- layer=1 filter=105 channel=51
					19, 19, 11, 4, -14, -9, -2, -10, -11,
					-- layer=1 filter=105 channel=52
					52, 98, 83, 76, 101, 97, -3, -3, 0,
					-- layer=1 filter=105 channel=53
					-73, -72, 6, -29, -16, 2, -1, -83, -65,
					-- layer=1 filter=105 channel=54
					21, 15, 20, -23, -13, -17, 6, -9, -10,
					-- layer=1 filter=105 channel=55
					26, 31, 5, 22, 53, 6, -1, -21, -8,
					-- layer=1 filter=105 channel=56
					6, 0, -6, -9, 8, -10, -11, 7, -26,
					-- layer=1 filter=105 channel=57
					0, 10, 15, -13, 0, -3, -1, 0, -5,
					-- layer=1 filter=105 channel=58
					13, 16, 3, -10, -16, -32, -9, -2, -14,
					-- layer=1 filter=105 channel=59
					-9, -41, 27, -6, -21, -66, 19, -39, -18,
					-- layer=1 filter=105 channel=60
					94, 105, 91, 140, 150, 154, 8, 14, 38,
					-- layer=1 filter=105 channel=61
					-29, -56, -2, -24, -51, -75, -26, -81, -61,
					-- layer=1 filter=105 channel=62
					-8, -17, -28, 41, -13, -18, 29, 12, 10,
					-- layer=1 filter=105 channel=63
					-15, 2, 10, -14, 20, 25, -29, -30, -56,
					-- layer=1 filter=106 channel=0
					30, 33, 15, -25, 1, -25, -36, -43, -22,
					-- layer=1 filter=106 channel=1
					14, -16, 0, -20, -7, 1, -2, -29, 26,
					-- layer=1 filter=106 channel=2
					24, 19, 20, -42, -1, -16, -21, -41, -9,
					-- layer=1 filter=106 channel=3
					-28, -40, -21, -56, -58, -79, -29, -35, -51,
					-- layer=1 filter=106 channel=4
					21, 32, 21, 37, 21, 24, 30, 17, 33,
					-- layer=1 filter=106 channel=5
					-10, 2, -3, 16, 2, 0, 6, 12, -19,
					-- layer=1 filter=106 channel=6
					28, 16, 3, 14, 11, 39, 14, 7, 13,
					-- layer=1 filter=106 channel=7
					8, -19, 7, -38, -31, -20, -26, -38, -14,
					-- layer=1 filter=106 channel=8
					-3, 2, -3, -25, -36, 11, -7, -4, 13,
					-- layer=1 filter=106 channel=9
					-1, 12, -6, 19, 29, 13, 36, 42, 5,
					-- layer=1 filter=106 channel=10
					12, 24, -3, -12, -12, -4, -18, 5, 7,
					-- layer=1 filter=106 channel=11
					44, 7, -22, 20, -5, -21, 37, 5, -13,
					-- layer=1 filter=106 channel=12
					-21, -31, -21, -37, -37, -26, -18, -20, -25,
					-- layer=1 filter=106 channel=13
					-18, 3, -16, 4, 2, -8, 8, -10, 0,
					-- layer=1 filter=106 channel=14
					9, 14, -6, -35, -17, -44, -5, -41, -35,
					-- layer=1 filter=106 channel=15
					36, -6, -5, 19, -2, 18, 4, 17, 34,
					-- layer=1 filter=106 channel=16
					7, -8, 24, -16, -41, -12, -32, -51, -46,
					-- layer=1 filter=106 channel=17
					7, -15, 0, -10, -8, -37, -8, -17, -5,
					-- layer=1 filter=106 channel=18
					21, 8, 7, -2, -20, 42, -1, 15, 0,
					-- layer=1 filter=106 channel=19
					7, 6, 9, 23, 6, 19, 8, -5, 8,
					-- layer=1 filter=106 channel=20
					0, -19, -20, -12, -13, -23, -8, -3, -17,
					-- layer=1 filter=106 channel=21
					7, 9, 8, -2, -26, 5, -1, 31, 13,
					-- layer=1 filter=106 channel=22
					-10, -6, -23, -13, -2, -1, 31, 16, -6,
					-- layer=1 filter=106 channel=23
					7, -2, 2, 2, 28, 8, 17, 40, 27,
					-- layer=1 filter=106 channel=24
					12, 6, 10, 13, -3, 0, 3, -1, 10,
					-- layer=1 filter=106 channel=25
					-6, -5, -25, -1, -19, -6, 0, -35, -21,
					-- layer=1 filter=106 channel=26
					11, 14, -10, 17, -25, -3, -4, -5, -7,
					-- layer=1 filter=106 channel=27
					10, 8, -11, -8, -26, -6, 0, -27, 1,
					-- layer=1 filter=106 channel=28
					-37, -21, -23, -65, -68, -42, -49, -45, -54,
					-- layer=1 filter=106 channel=29
					2, -8, 10, 0, -31, 1, -6, -34, -7,
					-- layer=1 filter=106 channel=30
					-11, -10, -21, 1, -9, 4, -3, 3, 13,
					-- layer=1 filter=106 channel=31
					7, -8, -8, 6, 9, 13, -9, 3, -5,
					-- layer=1 filter=106 channel=32
					-52, -23, -51, -32, -56, -25, 41, -81, -39,
					-- layer=1 filter=106 channel=33
					-9, -11, -17, 11, -10, -21, 22, -10, 0,
					-- layer=1 filter=106 channel=34
					17, 0, -54, -4, -12, -4, -3, 22, -13,
					-- layer=1 filter=106 channel=35
					-7, -30, -1, -39, -35, -43, -27, -53, -37,
					-- layer=1 filter=106 channel=36
					-22, -16, -17, -8, -39, -13, 7, -21, -16,
					-- layer=1 filter=106 channel=37
					13, 0, -5, 8, -7, 24, -7, -4, 3,
					-- layer=1 filter=106 channel=38
					11, 23, -8, 0, 7, 4, -15, -11, 10,
					-- layer=1 filter=106 channel=39
					5, 0, -1, 3, 11, 5, 13, 20, 38,
					-- layer=1 filter=106 channel=40
					-10, -13, -32, 2, -25, -14, 26, -38, -14,
					-- layer=1 filter=106 channel=41
					-14, -23, -12, -32, -5, 0, 9, -2, -6,
					-- layer=1 filter=106 channel=42
					24, 55, 29, -16, 17, 26, -2, 44, 30,
					-- layer=1 filter=106 channel=43
					10, 7, 3, 8, -14, 20, -8, 31, -2,
					-- layer=1 filter=106 channel=44
					3, -17, -6, -8, -6, -10, 5, 4, 4,
					-- layer=1 filter=106 channel=45
					19, 14, 5, 29, 24, 57, -11, 46, -10,
					-- layer=1 filter=106 channel=46
					-80, -60, -69, -49, -40, -27, -43, -25, -36,
					-- layer=1 filter=106 channel=47
					4, -20, -18, -3, -18, -1, -24, -35, -33,
					-- layer=1 filter=106 channel=48
					-1, 0, -1, 34, 17, 32, 44, 15, 34,
					-- layer=1 filter=106 channel=49
					39, 6, 1, 18, 12, -3, 23, 27, 24,
					-- layer=1 filter=106 channel=50
					2, 7, 9, 19, 14, -3, 29, 14, 2,
					-- layer=1 filter=106 channel=51
					13, -2, 6, 2, 15, 15, 2, 20, 6,
					-- layer=1 filter=106 channel=52
					30, -29, -23, -12, -9, -2, -14, -11, -25,
					-- layer=1 filter=106 channel=53
					-8, -22, -62, -9, -27, -40, -13, -41, -63,
					-- layer=1 filter=106 channel=54
					-16, 4, -17, -3, 13, 14, 7, 14, 18,
					-- layer=1 filter=106 channel=55
					2, 10, 27, -11, 1, 17, -21, 20, -8,
					-- layer=1 filter=106 channel=56
					9, 5, 36, -4, -1, -3, 17, 10, 12,
					-- layer=1 filter=106 channel=57
					3, 14, 1, 12, -2, 19, 15, 0, 24,
					-- layer=1 filter=106 channel=58
					5, 1, -16, 12, -2, -6, 4, 0, -20,
					-- layer=1 filter=106 channel=59
					4, -8, -20, 19, 7, 5, 12, -18, -1,
					-- layer=1 filter=106 channel=60
					-14, -37, -26, -38, -53, -6, 10, 13, 7,
					-- layer=1 filter=106 channel=61
					27, 8, -3, 38, 27, 29, 46, 52, 23,
					-- layer=1 filter=106 channel=62
					28, 19, 5, 12, -25, 41, -1, 22, -2,
					-- layer=1 filter=106 channel=63
					-15, -30, -16, 8, -4, -2, 9, 23, 8,
					-- layer=1 filter=107 channel=0
					-5, 0, 0, 26, 4, 3, 36, 26, 25,
					-- layer=1 filter=107 channel=1
					-23, 18, 8, -12, 0, 9, -12, 14, -20,
					-- layer=1 filter=107 channel=2
					30, 28, 33, 40, 46, 63, 36, 43, 13,
					-- layer=1 filter=107 channel=3
					6, -7, 0, 6, -8, 4, -1, -4, -16,
					-- layer=1 filter=107 channel=4
					-21, -56, -15, -74, -39, -29, -58, -49, -25,
					-- layer=1 filter=107 channel=5
					-7, 9, 7, 18, -11, -3, -2, 5, -14,
					-- layer=1 filter=107 channel=6
					-43, -9, -41, -16, -45, -21, -52, -12, -43,
					-- layer=1 filter=107 channel=7
					23, 29, 17, 1, 14, -1, -7, -35, -19,
					-- layer=1 filter=107 channel=8
					-19, 22, -9, -5, -14, -14, -23, -8, -43,
					-- layer=1 filter=107 channel=9
					-37, -38, -24, -6, -52, -16, -42, -36, -56,
					-- layer=1 filter=107 channel=10
					-10, -1, -6, -9, 11, 12, 21, 12, -10,
					-- layer=1 filter=107 channel=11
					-5, 4, 16, 5, -8, 21, -2, 5, 1,
					-- layer=1 filter=107 channel=12
					-3, -3, 2, 9, 10, -13, -10, 10, 10,
					-- layer=1 filter=107 channel=13
					8, 25, 23, 33, 34, 23, 15, 18, 30,
					-- layer=1 filter=107 channel=14
					39, 31, 23, 37, 31, 81, 42, 47, 42,
					-- layer=1 filter=107 channel=15
					9, 28, 23, 23, 3, 33, -22, -7, -18,
					-- layer=1 filter=107 channel=16
					-16, -22, -2, -7, -9, 13, -9, 2, -4,
					-- layer=1 filter=107 channel=17
					-7, -1, -10, 20, -7, 13, 0, 5, -12,
					-- layer=1 filter=107 channel=18
					-28, -30, -29, -19, -43, -10, -42, -35, -32,
					-- layer=1 filter=107 channel=19
					-36, -58, -42, -44, -42, -60, -44, -30, -33,
					-- layer=1 filter=107 channel=20
					0, 19, 25, -5, 28, 7, -27, 2, 22,
					-- layer=1 filter=107 channel=21
					14, 32, 17, 35, 0, 18, 0, -6, -15,
					-- layer=1 filter=107 channel=22
					-33, -29, -8, -30, -50, -17, -32, -63, -45,
					-- layer=1 filter=107 channel=23
					-19, -22, -7, -29, -18, 9, -22, -11, -16,
					-- layer=1 filter=107 channel=24
					-39, -52, -30, -45, -43, -46, -28, -52, -36,
					-- layer=1 filter=107 channel=25
					-1, 28, 17, 30, 4, 12, -7, 22, 1,
					-- layer=1 filter=107 channel=26
					-12, -3, -11, -20, -34, -23, -34, -6, 5,
					-- layer=1 filter=107 channel=27
					8, 19, 4, 13, -14, -5, -1, -10, -1,
					-- layer=1 filter=107 channel=28
					33, 22, 29, 52, 29, 30, 30, 32, 30,
					-- layer=1 filter=107 channel=29
					-5, 3, 16, -6, 17, -4, 4, 4, -4,
					-- layer=1 filter=107 channel=30
					-8, 18, 10, 14, -1, 1, -13, 20, 17,
					-- layer=1 filter=107 channel=31
					-14, 5, -3, 7, 7, -10, -14, 11, -7,
					-- layer=1 filter=107 channel=32
					-23, 41, 52, 17, -9, 39, 40, 33, 54,
					-- layer=1 filter=107 channel=33
					-11, -8, 11, 18, 4, -4, 1, -9, -19,
					-- layer=1 filter=107 channel=34
					-3, 17, 51, 10, -5, 22, -9, 19, 18,
					-- layer=1 filter=107 channel=35
					9, 9, 23, 19, 29, 32, 11, 29, 0,
					-- layer=1 filter=107 channel=36
					-1, 17, 26, 24, 35, 23, 40, 20, 34,
					-- layer=1 filter=107 channel=37
					35, 4, 26, 14, -4, 3, -4, -18, 14,
					-- layer=1 filter=107 channel=38
					12, -17, -3, -2, 20, 3, -3, 34, 11,
					-- layer=1 filter=107 channel=39
					-37, -9, -19, -57, -44, -3, -58, -51, -25,
					-- layer=1 filter=107 channel=40
					4, 25, 18, 9, 17, 3, 0, 3, -17,
					-- layer=1 filter=107 channel=41
					-17, 0, -16, 0, -8, 8, -17, 3, 10,
					-- layer=1 filter=107 channel=42
					25, 12, -4, -2, 15, 30, -4, 13, 1,
					-- layer=1 filter=107 channel=43
					18, 43, 16, 32, 7, 1, -14, 14, 5,
					-- layer=1 filter=107 channel=44
					-14, 11, 14, 0, 12, 21, -43, -3, 16,
					-- layer=1 filter=107 channel=45
					20, 6, 0, 1, -36, -9, -11, 10, -8,
					-- layer=1 filter=107 channel=46
					-28, -25, -4, -43, -56, -20, -59, -55, -37,
					-- layer=1 filter=107 channel=47
					8, 21, 12, 13, -1, 33, -1, 17, 3,
					-- layer=1 filter=107 channel=48
					-4, 2, 0, -16, -16, 6, -8, -17, 13,
					-- layer=1 filter=107 channel=49
					14, 14, 13, 0, 8, 28, -32, -13, -7,
					-- layer=1 filter=107 channel=50
					13, 5, 9, 20, -2, 2, 22, 7, 2,
					-- layer=1 filter=107 channel=51
					-14, 15, -2, 7, 13, 8, 0, 8, -12,
					-- layer=1 filter=107 channel=52
					-20, 0, 18, 32, 6, 39, -15, -15, 21,
					-- layer=1 filter=107 channel=53
					6, 45, 30, 22, 23, 59, -16, -2, -12,
					-- layer=1 filter=107 channel=54
					-10, 12, -5, 15, -4, 14, 21, 6, -3,
					-- layer=1 filter=107 channel=55
					3, -28, -14, -2, 2, 10, -7, 2, 7,
					-- layer=1 filter=107 channel=56
					-5, -13, -6, -15, -7, -21, -8, -12, -31,
					-- layer=1 filter=107 channel=57
					-9, -9, 10, -33, -31, -27, -28, -14, -8,
					-- layer=1 filter=107 channel=58
					-17, 0, -10, -7, -10, 1, 0, 4, 7,
					-- layer=1 filter=107 channel=59
					3, 63, 21, 26, -4, 36, 6, 50, -18,
					-- layer=1 filter=107 channel=60
					44, 42, 34, 34, 17, 23, 21, -4, 47,
					-- layer=1 filter=107 channel=61
					-22, 30, 16, 5, 1, 5, -36, -12, -51,
					-- layer=1 filter=107 channel=62
					1, 36, 22, 28, 0, 16, -9, 22, -11,
					-- layer=1 filter=107 channel=63
					-80, -75, -57, -55, -84, -44, -45, -87, -61,
					-- layer=1 filter=108 channel=0
					-11, -16, -19, 3, 3, 11, -3, -6, -3,
					-- layer=1 filter=108 channel=1
					0, 4, -8, -16, -17, -6, 12, -6, -1,
					-- layer=1 filter=108 channel=2
					-10, 4, -8, 1, 4, -8, 8, -4, -2,
					-- layer=1 filter=108 channel=3
					-15, 13, -6, 7, 13, 0, -11, 5, 1,
					-- layer=1 filter=108 channel=4
					0, -17, -11, -11, -4, 8, 0, -14, -16,
					-- layer=1 filter=108 channel=5
					3, -5, -10, 2, -6, -14, -16, 0, -8,
					-- layer=1 filter=108 channel=6
					10, -10, -17, -14, -3, 12, 1, -18, -4,
					-- layer=1 filter=108 channel=7
					0, 4, -19, 11, 7, -20, -14, -11, 9,
					-- layer=1 filter=108 channel=8
					-16, -8, 3, -7, -11, 4, 0, -9, -11,
					-- layer=1 filter=108 channel=9
					-6, -2, -11, 0, -12, 2, 9, -18, -15,
					-- layer=1 filter=108 channel=10
					-13, -4, -12, -12, 1, -14, -7, -3, -10,
					-- layer=1 filter=108 channel=11
					-14, 7, 3, 6, -4, -5, 0, 3, -7,
					-- layer=1 filter=108 channel=12
					-1, 9, -1, -15, 14, -7, -4, -8, -8,
					-- layer=1 filter=108 channel=13
					-7, 9, -6, 10, -9, -4, -1, -11, 13,
					-- layer=1 filter=108 channel=14
					0, 3, -9, 1, 9, 3, -6, 6, 4,
					-- layer=1 filter=108 channel=15
					2, -7, -6, 9, -15, -13, -13, 12, 5,
					-- layer=1 filter=108 channel=16
					-8, 7, 4, 4, 8, 7, -6, -7, -13,
					-- layer=1 filter=108 channel=17
					-16, 9, -9, -1, -11, 6, 10, 1, 0,
					-- layer=1 filter=108 channel=18
					-12, -15, 8, -16, -4, 3, -2, -4, -8,
					-- layer=1 filter=108 channel=19
					9, 3, 0, 4, 9, 0, 2, -4, 9,
					-- layer=1 filter=108 channel=20
					5, 3, -5, 10, -7, 0, 8, 12, 3,
					-- layer=1 filter=108 channel=21
					-16, 0, 8, 0, -11, 12, -11, 0, -1,
					-- layer=1 filter=108 channel=22
					-11, 8, -2, 7, 3, -7, 9, -15, -13,
					-- layer=1 filter=108 channel=23
					-16, 10, -4, -2, 0, -10, 9, 11, 10,
					-- layer=1 filter=108 channel=24
					0, -6, -13, 8, 5, -4, -18, 9, -12,
					-- layer=1 filter=108 channel=25
					-3, -7, -6, 14, -4, -16, 3, -16, -17,
					-- layer=1 filter=108 channel=26
					-15, -5, -11, 3, -1, -13, -12, 2, -12,
					-- layer=1 filter=108 channel=27
					-14, -4, -9, 6, -18, -1, -12, -5, 0,
					-- layer=1 filter=108 channel=28
					1, -7, -9, 11, -5, -14, -15, 4, -17,
					-- layer=1 filter=108 channel=29
					-4, -9, -3, 1, 0, 7, 5, -11, -19,
					-- layer=1 filter=108 channel=30
					-5, -7, 2, -15, 7, 12, -12, 8, -8,
					-- layer=1 filter=108 channel=31
					-6, -2, 5, -5, 13, 0, 14, -12, 12,
					-- layer=1 filter=108 channel=32
					2, -5, 4, 6, 14, 10, -1, 12, -2,
					-- layer=1 filter=108 channel=33
					-2, 1, -14, 0, -8, 5, -7, -3, 9,
					-- layer=1 filter=108 channel=34
					-9, -4, 5, 12, 3, 7, 0, -2, 10,
					-- layer=1 filter=108 channel=35
					-12, -8, -14, -9, 9, -5, 0, -16, -13,
					-- layer=1 filter=108 channel=36
					-1, 3, -4, 12, -2, 11, -14, -5, -17,
					-- layer=1 filter=108 channel=37
					13, 13, 11, 2, -11, 7, -3, 2, -12,
					-- layer=1 filter=108 channel=38
					13, -3, 0, -10, -6, -11, -10, -4, -3,
					-- layer=1 filter=108 channel=39
					-10, 1, 8, -7, -7, 6, 2, 0, -1,
					-- layer=1 filter=108 channel=40
					-4, -9, -7, -13, 5, 5, -8, 8, -1,
					-- layer=1 filter=108 channel=41
					3, -3, -4, -15, 11, -3, -16, 9, 5,
					-- layer=1 filter=108 channel=42
					-12, -19, 3, -18, -18, -6, -6, 9, -5,
					-- layer=1 filter=108 channel=43
					3, 0, -8, 6, -16, 3, -4, 0, -17,
					-- layer=1 filter=108 channel=44
					-18, -9, -9, -10, 3, 11, -6, 3, -4,
					-- layer=1 filter=108 channel=45
					1, -3, -7, -10, 15, 6, 0, 0, -3,
					-- layer=1 filter=108 channel=46
					-3, -14, -4, -4, -14, 13, 1, -12, 12,
					-- layer=1 filter=108 channel=47
					1, 13, 7, -5, 1, 10, 8, 3, -7,
					-- layer=1 filter=108 channel=48
					-15, -4, 3, 7, -2, -4, -12, -3, -6,
					-- layer=1 filter=108 channel=49
					0, 5, -11, -15, 13, 4, 9, -8, 0,
					-- layer=1 filter=108 channel=50
					-13, 2, 3, -2, -13, 13, 11, -2, -11,
					-- layer=1 filter=108 channel=51
					-15, 6, -16, -11, -11, -3, -6, -9, -6,
					-- layer=1 filter=108 channel=52
					-13, -1, 3, -9, -8, -9, -17, -6, -7,
					-- layer=1 filter=108 channel=53
					0, 7, -8, -10, 7, 3, 0, 0, -4,
					-- layer=1 filter=108 channel=54
					-1, 0, 16, -11, 0, 8, -5, -10, 0,
					-- layer=1 filter=108 channel=55
					-4, -5, -10, -16, -15, 8, -3, 7, -3,
					-- layer=1 filter=108 channel=56
					-16, -18, 2, -6, -6, 6, 0, 13, 0,
					-- layer=1 filter=108 channel=57
					3, 6, -3, 5, 5, -18, 8, -9, -2,
					-- layer=1 filter=108 channel=58
					-6, -13, -15, -8, -10, -7, -19, -13, 12,
					-- layer=1 filter=108 channel=59
					-4, 9, -1, 14, 9, -15, -15, -16, 0,
					-- layer=1 filter=108 channel=60
					-12, -17, -1, 7, -14, -16, -16, -14, -5,
					-- layer=1 filter=108 channel=61
					7, -12, -6, 13, 10, -1, 13, -4, -14,
					-- layer=1 filter=108 channel=62
					0, 0, -7, 9, 3, -5, 10, -6, 0,
					-- layer=1 filter=108 channel=63
					-8, 10, 13, 4, 0, 1, 11, -8, 11,
					-- layer=1 filter=109 channel=0
					10, -16, -5, -3, 2, 12, -1, -2, 7,
					-- layer=1 filter=109 channel=1
					-10, 0, 2, 2, -14, 0, -7, 9, 2,
					-- layer=1 filter=109 channel=2
					-10, -11, -1, -13, -8, 6, 12, 7, 0,
					-- layer=1 filter=109 channel=3
					0, -13, 4, -10, -8, 0, 8, 11, 5,
					-- layer=1 filter=109 channel=4
					10, 2, -10, 10, 5, -11, -17, -17, -12,
					-- layer=1 filter=109 channel=5
					2, -2, -6, -15, 3, -2, -9, 0, 9,
					-- layer=1 filter=109 channel=6
					-13, -5, -8, 11, -7, 2, -14, 1, -11,
					-- layer=1 filter=109 channel=7
					-18, -2, 3, -10, 10, 6, -13, -2, 0,
					-- layer=1 filter=109 channel=8
					8, -5, 9, -14, -9, 10, -11, -12, 8,
					-- layer=1 filter=109 channel=9
					9, 6, 9, 2, -11, 8, -7, -8, -1,
					-- layer=1 filter=109 channel=10
					11, 0, 0, 2, 9, -8, 4, -5, -9,
					-- layer=1 filter=109 channel=11
					-14, -13, 4, -13, 10, -15, 8, -16, -2,
					-- layer=1 filter=109 channel=12
					-15, -10, 0, 9, -13, -1, 6, 10, 4,
					-- layer=1 filter=109 channel=13
					-14, -16, -18, 8, -9, -18, 10, -7, 10,
					-- layer=1 filter=109 channel=14
					10, -3, -12, -1, -16, -20, 0, -5, 9,
					-- layer=1 filter=109 channel=15
					6, 4, -10, -4, -16, -6, -9, -11, -12,
					-- layer=1 filter=109 channel=16
					-5, -2, -14, -11, 2, 11, -6, -8, -7,
					-- layer=1 filter=109 channel=17
					9, -14, -8, -6, -13, -3, -16, -10, 0,
					-- layer=1 filter=109 channel=18
					11, 0, 3, 8, 4, 6, -7, -6, 2,
					-- layer=1 filter=109 channel=19
					2, -7, -13, 9, -13, -4, -2, -5, 3,
					-- layer=1 filter=109 channel=20
					-15, 12, -15, -2, -9, -9, -9, -2, 9,
					-- layer=1 filter=109 channel=21
					1, 4, -7, -13, -15, -9, -7, -10, -24,
					-- layer=1 filter=109 channel=22
					-8, -5, 0, -5, -8, -20, -4, 0, 4,
					-- layer=1 filter=109 channel=23
					4, -11, -6, 4, -8, 8, -9, -1, 15,
					-- layer=1 filter=109 channel=24
					2, 3, 2, -1, 4, 9, -11, -15, -6,
					-- layer=1 filter=109 channel=25
					-7, 6, 10, 11, -15, 9, 3, -8, -4,
					-- layer=1 filter=109 channel=26
					-9, -3, -11, -12, 6, 0, -11, 4, 7,
					-- layer=1 filter=109 channel=27
					4, -7, 3, -14, 3, 7, 10, 9, -11,
					-- layer=1 filter=109 channel=28
					-6, -5, -7, -14, -4, -6, 3, 7, 6,
					-- layer=1 filter=109 channel=29
					-13, -15, -12, 10, -14, 11, -6, -12, -7,
					-- layer=1 filter=109 channel=30
					-11, -17, -7, -3, 0, -10, 11, 3, -1,
					-- layer=1 filter=109 channel=31
					-9, 11, -5, 12, -12, -2, -6, -14, -7,
					-- layer=1 filter=109 channel=32
					-14, -5, -13, 11, 14, 9, 3, -4, -1,
					-- layer=1 filter=109 channel=33
					-2, 6, -9, 7, 3, 1, 6, 0, 5,
					-- layer=1 filter=109 channel=34
					-4, 2, -2, -12, -3, 1, -15, -10, 6,
					-- layer=1 filter=109 channel=35
					2, -17, -15, 4, 9, 0, 0, 0, 6,
					-- layer=1 filter=109 channel=36
					4, 9, 9, -2, -16, -14, 0, -20, -6,
					-- layer=1 filter=109 channel=37
					-6, -1, -13, -16, 7, 7, 8, -4, 6,
					-- layer=1 filter=109 channel=38
					-4, 0, 3, 10, -6, -5, 10, 10, -9,
					-- layer=1 filter=109 channel=39
					-11, -2, 1, -12, -14, -14, -4, -2, 10,
					-- layer=1 filter=109 channel=40
					5, -6, -12, -10, 12, -15, 4, -3, -14,
					-- layer=1 filter=109 channel=41
					-2, 9, 9, 4, -5, -10, 5, -1, -16,
					-- layer=1 filter=109 channel=42
					5, -12, 6, 11, 10, 3, -7, -5, 8,
					-- layer=1 filter=109 channel=43
					11, -1, -7, 0, 3, 0, -12, -8, 5,
					-- layer=1 filter=109 channel=44
					-10, -9, -15, -13, -2, 1, 0, -10, 1,
					-- layer=1 filter=109 channel=45
					-4, -1, 8, -3, -3, -13, 0, 7, 1,
					-- layer=1 filter=109 channel=46
					-9, 3, -7, 9, 6, -11, 1, -13, 0,
					-- layer=1 filter=109 channel=47
					4, 7, 0, -13, -6, 9, -16, -15, 9,
					-- layer=1 filter=109 channel=48
					-5, -7, -4, -9, 1, 7, -18, -4, 2,
					-- layer=1 filter=109 channel=49
					-8, 8, -10, -4, 14, -7, 1, -11, 4,
					-- layer=1 filter=109 channel=50
					-9, 0, -3, 3, 2, 5, -7, 9, -7,
					-- layer=1 filter=109 channel=51
					-6, -7, 11, 11, -8, -5, -1, -6, 5,
					-- layer=1 filter=109 channel=52
					-14, -15, 14, 0, -14, 0, 3, -18, -3,
					-- layer=1 filter=109 channel=53
					-3, 1, -10, -9, -14, 2, 4, -7, -6,
					-- layer=1 filter=109 channel=54
					-7, 10, 12, -18, 3, 1, 9, -16, -2,
					-- layer=1 filter=109 channel=55
					-17, -15, -6, 12, -3, 4, 10, -8, 9,
					-- layer=1 filter=109 channel=56
					6, -13, 0, -1, 7, 0, 0, -12, -8,
					-- layer=1 filter=109 channel=57
					9, -6, 8, -11, -5, -15, 4, 8, 10,
					-- layer=1 filter=109 channel=58
					-1, -10, 5, -3, -7, -10, 5, -6, -1,
					-- layer=1 filter=109 channel=59
					-6, 4, -6, -12, -13, -3, -13, -1, -13,
					-- layer=1 filter=109 channel=60
					10, -1, -10, -10, -2, -7, -6, 3, 5,
					-- layer=1 filter=109 channel=61
					8, -10, 0, 4, 7, -1, 6, 0, -5,
					-- layer=1 filter=109 channel=62
					-11, 5, -7, 3, -14, -9, -1, -2, 1,
					-- layer=1 filter=109 channel=63
					-3, 15, -9, -15, -7, -18, -15, -9, 8,
					-- layer=1 filter=110 channel=0
					16, 7, -2, -13, 5, -12, 15, 10, 6,
					-- layer=1 filter=110 channel=1
					-19, -9, -25, -21, -29, -50, -5, 9, -57,
					-- layer=1 filter=110 channel=2
					25, -37, -7, -31, -20, 3, 8, 30, 12,
					-- layer=1 filter=110 channel=3
					-8, 6, 29, -13, 17, 19, 13, 17, 37,
					-- layer=1 filter=110 channel=4
					17, 4, 0, 27, -11, -8, 13, -42, -50,
					-- layer=1 filter=110 channel=5
					-68, -56, -40, -26, -52, 19, 18, 22, 31,
					-- layer=1 filter=110 channel=6
					-34, 13, -1, 28, -15, -6, -6, 31, -47,
					-- layer=1 filter=110 channel=7
					19, 17, 7, 50, 32, -11, 15, 13, -9,
					-- layer=1 filter=110 channel=8
					24, 26, -7, 38, 15, -5, 7, 33, -25,
					-- layer=1 filter=110 channel=9
					-20, -42, -20, -20, -71, -28, -22, 1, -51,
					-- layer=1 filter=110 channel=10
					8, -27, 17, -3, -24, 13, -7, 14, -16,
					-- layer=1 filter=110 channel=11
					72, 57, 24, 65, 54, 49, 58, 42, 28,
					-- layer=1 filter=110 channel=12
					-24, -22, -11, -16, -5, 4, 9, 20, 7,
					-- layer=1 filter=110 channel=13
					-35, -20, 28, -20, -10, 18, 4, 28, 49,
					-- layer=1 filter=110 channel=14
					-7, -59, -3, -69, -56, -25, -5, -5, 14,
					-- layer=1 filter=110 channel=15
					4, -27, -13, 24, -32, -19, 15, 1, 26,
					-- layer=1 filter=110 channel=16
					56, 48, 17, 74, 55, 12, 35, 20, -12,
					-- layer=1 filter=110 channel=17
					1, -14, -20, 8, -55, -9, -12, 26, 0,
					-- layer=1 filter=110 channel=18
					-39, -6, 0, -15, -27, 13, 6, -11, -55,
					-- layer=1 filter=110 channel=19
					-17, -17, -29, -33, -33, -42, 0, -30, -41,
					-- layer=1 filter=110 channel=20
					-29, -24, 17, -6, 3, 7, -5, -20, 10,
					-- layer=1 filter=110 channel=21
					-11, -7, 7, 22, -7, 44, 2, 36, 0,
					-- layer=1 filter=110 channel=22
					-3, -35, 4, -6, -27, -3, -19, 37, 22,
					-- layer=1 filter=110 channel=23
					-19, -40, -9, -12, -11, -25, 42, 2, 4,
					-- layer=1 filter=110 channel=24
					-16, -35, -45, -34, -30, -43, -22, -34, -48,
					-- layer=1 filter=110 channel=25
					-26, -36, -27, 16, -29, -11, 5, 14, 1,
					-- layer=1 filter=110 channel=26
					-10, 11, -12, 0, 33, -7, 8, -13, -34,
					-- layer=1 filter=110 channel=27
					16, 8, 0, 10, 20, 3, 15, -3, -7,
					-- layer=1 filter=110 channel=28
					30, 44, 22, 44, 44, 46, 49, 58, 62,
					-- layer=1 filter=110 channel=29
					-3, -3, -16, -11, 3, -15, -6, -14, -19,
					-- layer=1 filter=110 channel=30
					-11, -10, -13, -53, -60, 5, 2, 14, 15,
					-- layer=1 filter=110 channel=31
					-5, 0, -11, 11, 8, 7, -6, 12, -5,
					-- layer=1 filter=110 channel=32
					-44, -88, -25, -30, -97, -69, 13, 7, 7,
					-- layer=1 filter=110 channel=33
					-26, -10, 4, -21, -21, -24, 2, 0, -16,
					-- layer=1 filter=110 channel=34
					-88, -99, -100, -28, -49, -43, -7, 4, -22,
					-- layer=1 filter=110 channel=35
					21, 11, -2, 11, 40, 21, 4, 27, 25,
					-- layer=1 filter=110 channel=36
					-37, -14, 10, 13, -15, 13, 5, 0, 53,
					-- layer=1 filter=110 channel=37
					-39, -90, -74, 2, -3, -23, 31, 34, 8,
					-- layer=1 filter=110 channel=38
					-40, -57, -10, -46, -7, 8, 5, 9, 40,
					-- layer=1 filter=110 channel=39
					-4, -42, -4, -17, -36, -10, 38, 12, 35,
					-- layer=1 filter=110 channel=40
					5, -37, -13, -15, -72, -26, -43, -5, 6,
					-- layer=1 filter=110 channel=41
					-12, 5, -16, -33, -21, -9, 15, -12, -2,
					-- layer=1 filter=110 channel=42
					-4, -56, -42, -69, -64, -36, 36, 12, 9,
					-- layer=1 filter=110 channel=43
					-71, -91, -61, -10, -57, -4, 29, 46, -17,
					-- layer=1 filter=110 channel=44
					6, -30, -26, 43, -8, -30, 21, -20, 4,
					-- layer=1 filter=110 channel=45
					-70, -62, -25, 1, -76, 15, 24, 19, -23,
					-- layer=1 filter=110 channel=46
					3, -30, 64, 9, 16, 34, 18, 28, 63,
					-- layer=1 filter=110 channel=47
					-57, -92, -64, -40, -34, -6, 9, -15, 16,
					-- layer=1 filter=110 channel=48
					-79, -75, -26, -49, -44, -39, 8, -3, 15,
					-- layer=1 filter=110 channel=49
					-20, -18, 22, 30, -9, 4, 22, -2, 42,
					-- layer=1 filter=110 channel=50
					-60, -51, -6, -61, -66, -19, 4, 0, 38,
					-- layer=1 filter=110 channel=51
					-33, -35, -7, -12, -23, -9, -16, -4, 0,
					-- layer=1 filter=110 channel=52
					-65, -64, -85, 20, 4, 10, 46, 51, 27,
					-- layer=1 filter=110 channel=53
					42, 3, 14, 28, -21, 27, 4, 61, -2,
					-- layer=1 filter=110 channel=54
					-49, -48, -32, -47, -61, -17, 4, 12, 45,
					-- layer=1 filter=110 channel=55
					-57, -49, 30, -46, -8, -9, 11, 9, 7,
					-- layer=1 filter=110 channel=56
					29, 32, 3, 46, 33, -9, 4, 10, -26,
					-- layer=1 filter=110 channel=57
					-5, -16, -14, 0, -5, -37, 2, -27, -49,
					-- layer=1 filter=110 channel=58
					-33, -19, -3, -26, 1, 5, 23, 12, 23,
					-- layer=1 filter=110 channel=59
					-9, -21, -33, 17, -58, 22, 12, 36, -25,
					-- layer=1 filter=110 channel=60
					-21, 29, 47, -23, -23, 4, -41, -15, -1,
					-- layer=1 filter=110 channel=61
					7, -18, 14, 27, -39, 33, -8, 66, -42,
					-- layer=1 filter=110 channel=62
					-66, -52, -48, 19, -56, 39, 15, 61, -24,
					-- layer=1 filter=110 channel=63
					-18, -26, -12, -34, -65, -27, -28, -18, -13,
					-- layer=1 filter=111 channel=0
					-6, -25, -31, -1, -15, -36, -34, -16, -38,
					-- layer=1 filter=111 channel=1
					-12, -10, -2, -3, -13, -16, -35, -25, -21,
					-- layer=1 filter=111 channel=2
					-16, -62, -80, -39, -34, -59, -55, -67, -63,
					-- layer=1 filter=111 channel=3
					6, 2, -22, 8, 0, -6, -6, -6, 13,
					-- layer=1 filter=111 channel=4
					4, 29, -8, 12, 5, 14, 9, 8, 11,
					-- layer=1 filter=111 channel=5
					-20, -8, 5, 6, -4, 17, -18, 6, 0,
					-- layer=1 filter=111 channel=6
					18, 14, 37, 19, -1, 0, 19, 7, 5,
					-- layer=1 filter=111 channel=7
					5, 4, 1, 17, 2, -19, 1, -12, -19,
					-- layer=1 filter=111 channel=8
					-8, -4, 2, 12, -4, -12, 4, 4, -8,
					-- layer=1 filter=111 channel=9
					12, 21, 27, 13, 16, -7, 31, 26, 15,
					-- layer=1 filter=111 channel=10
					1, 2, 8, -13, 6, -11, -16, -4, -12,
					-- layer=1 filter=111 channel=11
					25, 17, 23, 10, 4, -2, 23, -5, -11,
					-- layer=1 filter=111 channel=12
					-3, -18, -1, -1, -11, 18, -5, 0, 13,
					-- layer=1 filter=111 channel=13
					6, 14, 26, 22, 12, 12, 31, 22, 43,
					-- layer=1 filter=111 channel=14
					-94, -89, -107, -125, -83, -96, -115, -116, -109,
					-- layer=1 filter=111 channel=15
					-107, -77, -120, -72, -113, -81, -96, -59, -88,
					-- layer=1 filter=111 channel=16
					-11, -10, 2, -16, -20, -16, -7, -16, -15,
					-- layer=1 filter=111 channel=17
					-12, -5, -12, -3, -2, -15, 11, -1, 3,
					-- layer=1 filter=111 channel=18
					-16, -4, 3, -13, -17, -15, -6, -13, -6,
					-- layer=1 filter=111 channel=19
					-15, -23, -4, -15, -12, -9, 6, -16, -2,
					-- layer=1 filter=111 channel=20
					1, 3, -2, -5, 0, -2, 1, -2, 5,
					-- layer=1 filter=111 channel=21
					28, 4, 61, 21, 5, -7, 14, 0, -26,
					-- layer=1 filter=111 channel=22
					-4, -53, -35, -47, -50, -54, -57, -27, -21,
					-- layer=1 filter=111 channel=23
					-4, -1, 11, -16, -4, -4, -19, -23, -10,
					-- layer=1 filter=111 channel=24
					-12, -10, -14, -18, 5, -8, 7, -17, -6,
					-- layer=1 filter=111 channel=25
					-10, 14, 19, -10, -17, -14, -18, -28, -29,
					-- layer=1 filter=111 channel=26
					-10, -19, -30, -9, -32, -12, -18, -19, -1,
					-- layer=1 filter=111 channel=27
					8, 4, 4, 8, 19, 2, 17, 0, 13,
					-- layer=1 filter=111 channel=28
					17, 13, 42, 27, 29, 20, 21, 21, 34,
					-- layer=1 filter=111 channel=29
					11, -7, 1, 11, 11, -2, 0, 0, 3,
					-- layer=1 filter=111 channel=30
					-5, -10, 3, -3, 10, 1, 0, 5, 18,
					-- layer=1 filter=111 channel=31
					1, -3, -13, 7, -12, 13, 14, 4, 12,
					-- layer=1 filter=111 channel=32
					-1, 7, 61, -52, -57, -18, -56, -94, -61,
					-- layer=1 filter=111 channel=33
					-3, -22, -4, -23, -17, -6, -15, -29, -11,
					-- layer=1 filter=111 channel=34
					-31, -48, 11, -61, -79, -47, -60, -20, -54,
					-- layer=1 filter=111 channel=35
					6, -11, 3, 7, -9, -2, -17, 2, 13,
					-- layer=1 filter=111 channel=36
					-27, -11, 14, -10, -15, -3, 7, 4, 34,
					-- layer=1 filter=111 channel=37
					-27, -17, -23, -60, -76, -34, -21, -57, -21,
					-- layer=1 filter=111 channel=38
					-32, -18, -7, -9, -15, -7, 5, 5, 27,
					-- layer=1 filter=111 channel=39
					-53, -36, -39, -27, -41, -53, -1, -40, -50,
					-- layer=1 filter=111 channel=40
					-2, -36, 10, -21, -18, -34, -26, -42, -21,
					-- layer=1 filter=111 channel=41
					-29, -4, -13, -7, -5, -5, -14, -8, 6,
					-- layer=1 filter=111 channel=42
					-48, -65, -95, -60, -63, -75, -54, -53, -88,
					-- layer=1 filter=111 channel=43
					-2, -3, 26, -40, -42, -22, -16, -20, -59,
					-- layer=1 filter=111 channel=44
					-17, -4, -17, -7, -45, -12, -23, -7, -1,
					-- layer=1 filter=111 channel=45
					-20, -10, 26, -58, -47, -27, -36, -62, -72,
					-- layer=1 filter=111 channel=46
					-74, -86, -65, -88, -94, -76, -71, -81, -46,
					-- layer=1 filter=111 channel=47
					-18, -8, -18, -43, -51, -19, -11, -56, -33,
					-- layer=1 filter=111 channel=48
					8, 20, 16, -3, 10, 26, 28, 31, 38,
					-- layer=1 filter=111 channel=49
					-98, -101, -120, -100, -106, -85, -89, -78, -112,
					-- layer=1 filter=111 channel=50
					17, 0, 3, 20, 22, 18, 10, 31, 25,
					-- layer=1 filter=111 channel=51
					3, 21, 25, 28, 26, 23, 12, 18, 24,
					-- layer=1 filter=111 channel=52
					-30, -67, -5, -102, -104, -67, -75, -68, -53,
					-- layer=1 filter=111 channel=53
					-16, -125, -16, -37, -93, -99, -72, -86, -97,
					-- layer=1 filter=111 channel=54
					-10, 9, 1, 2, 9, 26, 0, 14, 14,
					-- layer=1 filter=111 channel=55
					0, -19, -31, -34, -21, -13, -13, -18, 3,
					-- layer=1 filter=111 channel=56
					11, -2, 3, 11, -10, -5, -9, 1, -6,
					-- layer=1 filter=111 channel=57
					-10, 4, -8, 7, 2, 1, -8, 3, -12,
					-- layer=1 filter=111 channel=58
					-10, -15, -25, -24, -15, -13, -2, 1, 8,
					-- layer=1 filter=111 channel=59
					-19, -34, 29, -27, -74, -64, -63, -81, -83,
					-- layer=1 filter=111 channel=60
					-141, -115, -76, -127, -128, -113, -109, -116, -148,
					-- layer=1 filter=111 channel=61
					-39, -107, -12, -86, -98, -110, -78, -107, -166,
					-- layer=1 filter=111 channel=62
					-5, 16, 39, -10, -16, 11, 4, -8, -70,
					-- layer=1 filter=111 channel=63
					-27, -34, -22, -36, -40, -25, -25, -27, -13,
					-- layer=1 filter=112 channel=0
					-5, -14, 8, -3, 22, -1, -32, 12, -7,
					-- layer=1 filter=112 channel=1
					-2, 10, 28, -7, -3, 20, -10, -2, 23,
					-- layer=1 filter=112 channel=2
					4, -7, 22, -3, 28, 19, -31, 16, 0,
					-- layer=1 filter=112 channel=3
					-9, -15, -29, -1, -13, -13, 28, 18, 8,
					-- layer=1 filter=112 channel=4
					23, 19, -2, -5, 19, 1, -6, 12, 14,
					-- layer=1 filter=112 channel=5
					-10, -24, -10, -13, 0, 1, -4, -22, -38,
					-- layer=1 filter=112 channel=6
					0, -8, 3, -14, -11, 8, 1, 1, 3,
					-- layer=1 filter=112 channel=7
					-6, 16, 0, -4, 1, 19, -11, -8, 8,
					-- layer=1 filter=112 channel=8
					-4, 18, 30, -20, -10, 19, -20, 7, 11,
					-- layer=1 filter=112 channel=9
					-4, -3, 12, -24, -33, 4, -36, 1, -22,
					-- layer=1 filter=112 channel=10
					34, 30, -27, 19, 40, -6, 11, 10, 10,
					-- layer=1 filter=112 channel=11
					-38, -61, -63, -60, -49, -35, -29, -18, -56,
					-- layer=1 filter=112 channel=12
					-9, -31, -7, -22, -38, -13, 25, 10, -27,
					-- layer=1 filter=112 channel=13
					-51, -49, -16, -17, -26, -7, 0, -39, -55,
					-- layer=1 filter=112 channel=14
					-13, -17, 35, -40, 6, 5, -38, -11, -3,
					-- layer=1 filter=112 channel=15
					25, 27, -46, 5, 64, -13, 40, 74, -19,
					-- layer=1 filter=112 channel=16
					6, -17, -6, -43, -11, -8, -18, 1, -20,
					-- layer=1 filter=112 channel=17
					-11, 20, 44, 3, -24, 35, 2, 5, 7,
					-- layer=1 filter=112 channel=18
					1, -13, 27, -30, -5, -8, 16, 22, 15,
					-- layer=1 filter=112 channel=19
					3, 25, 28, -19, -2, 4, -19, 11, -7,
					-- layer=1 filter=112 channel=20
					18, 19, -28, 5, 39, 0, 21, 35, 13,
					-- layer=1 filter=112 channel=21
					-51, -42, -20, -23, -1, 34, 26, 54, 14,
					-- layer=1 filter=112 channel=22
					-27, -10, 28, -54, -40, 2, -59, -2, -3,
					-- layer=1 filter=112 channel=23
					-4, -13, -53, -15, 16, -78, -20, 21, -55,
					-- layer=1 filter=112 channel=24
					19, 20, 3, 6, 16, 8, -21, -1, -2,
					-- layer=1 filter=112 channel=25
					-37, -42, 7, -85, -33, -33, 31, -7, -35,
					-- layer=1 filter=112 channel=26
					24, 21, 11, -19, -19, 12, 0, -11, 13,
					-- layer=1 filter=112 channel=27
					-3, 19, 3, -14, 7, 16, -2, -5, 27,
					-- layer=1 filter=112 channel=28
					-59, -64, -10, -38, -20, 30, 3, 11, 20,
					-- layer=1 filter=112 channel=29
					-1, 0, 0, -8, -12, 3, -5, 6, 14,
					-- layer=1 filter=112 channel=30
					15, -42, -10, 12, -39, -44, 0, -39, -36,
					-- layer=1 filter=112 channel=31
					-6, -8, 0, 6, 11, -14, -2, 6, 11,
					-- layer=1 filter=112 channel=32
					-40, -42, -1, -103, -34, -53, 30, 1, -85,
					-- layer=1 filter=112 channel=33
					-9, 39, 29, -21, 4, 9, -14, -6, 12,
					-- layer=1 filter=112 channel=34
					-28, -43, -35, -114, -61, -37, 23, -37, -35,
					-- layer=1 filter=112 channel=35
					-8, 26, 15, 18, 12, 17, -13, 30, 41,
					-- layer=1 filter=112 channel=36
					-33, -15, -76, 0, -13, -22, 24, 29, -24,
					-- layer=1 filter=112 channel=37
					-30, -21, -14, -48, -51, -21, 45, 23, -27,
					-- layer=1 filter=112 channel=38
					17, -4, -65, 13, 30, -24, 5, 12, -45,
					-- layer=1 filter=112 channel=39
					15, -7, -89, 9, 36, -39, -4, 31, -26,
					-- layer=1 filter=112 channel=40
					-22, 0, 64, -26, -23, 20, -38, 6, -3,
					-- layer=1 filter=112 channel=41
					-5, -7, 0, -17, -4, -5, 3, -23, -24,
					-- layer=1 filter=112 channel=42
					51, 12, -43, 19, 65, -35, 12, 42, -41,
					-- layer=1 filter=112 channel=43
					-30, -74, -8, -55, 16, -5, 26, 38, -13,
					-- layer=1 filter=112 channel=44
					-1, -10, -44, -48, 16, -43, 40, 48, -38,
					-- layer=1 filter=112 channel=45
					0, -38, 2, 25, 40, 25, 28, 19, -27,
					-- layer=1 filter=112 channel=46
					11, -35, 7, 77, -29, -16, 21, -31, -72,
					-- layer=1 filter=112 channel=47
					-38, -31, -18, -97, -52, -28, 21, -8, -32,
					-- layer=1 filter=112 channel=48
					-36, -47, -27, -14, -68, -47, 0, -49, -57,
					-- layer=1 filter=112 channel=49
					33, 18, -86, 19, 75, -17, 26, 86, 0,
					-- layer=1 filter=112 channel=50
					-30, -39, -23, -19, -41, -33, 1, -38, -26,
					-- layer=1 filter=112 channel=51
					7, 23, 3, 13, 4, 0, 12, 10, -2,
					-- layer=1 filter=112 channel=52
					-14, -44, -17, -97, -63, -67, -25, -71, -91,
					-- layer=1 filter=112 channel=53
					22, 25, 39, -39, 31, 55, 6, 52, 47,
					-- layer=1 filter=112 channel=54
					-13, -36, -19, 3, -25, -31, 23, -16, -38,
					-- layer=1 filter=112 channel=55
					-26, -50, 22, -6, -10, -24, -57, -52, -68,
					-- layer=1 filter=112 channel=56
					17, 25, 6, 10, 16, -2, -8, 2, 8,
					-- layer=1 filter=112 channel=57
					1, 16, 9, -2, 9, -10, -25, 17, 1,
					-- layer=1 filter=112 channel=58
					-21, -3, -10, -37, -25, -13, 16, -3, -9,
					-- layer=1 filter=112 channel=59
					9, 8, 19, -22, 42, 41, 14, 26, 15,
					-- layer=1 filter=112 channel=60
					-40, -48, -33, -92, -78, -47, 7, -64, -52,
					-- layer=1 filter=112 channel=61
					-9, -21, 41, -26, 49, 46, 5, 57, 19,
					-- layer=1 filter=112 channel=62
					-23, -51, -1, -42, 8, 30, 23, 26, 0,
					-- layer=1 filter=112 channel=63
					-29, -74, -29, -83, -95, -47, -110, -99, -63,
					-- layer=1 filter=113 channel=0
					10, -32, -27, -21, -37, -57, 1, -36, -46,
					-- layer=1 filter=113 channel=1
					0, -8, -2, -4, 15, 10, 21, 22, 3,
					-- layer=1 filter=113 channel=2
					-86, -118, -82, -122, -134, -110, -73, -100, -104,
					-- layer=1 filter=113 channel=3
					8, 9, 57, 21, 24, 51, -3, -3, 17,
					-- layer=1 filter=113 channel=4
					28, 35, -1, 28, 27, 2, 6, 21, -9,
					-- layer=1 filter=113 channel=5
					-11, -22, 19, -13, 1, 33, -4, -5, 35,
					-- layer=1 filter=113 channel=6
					6, -6, -11, 3, 19, -8, -5, -14, -24,
					-- layer=1 filter=113 channel=7
					2, -10, -7, 40, 19, -30, 27, -6, -31,
					-- layer=1 filter=113 channel=8
					3, 22, -12, 13, 29, -23, 10, 10, -21,
					-- layer=1 filter=113 channel=9
					-17, 10, 12, 1, 15, 9, 0, 39, 15,
					-- layer=1 filter=113 channel=10
					-11, -3, 4, -15, 7, -15, -2, 0, 19,
					-- layer=1 filter=113 channel=11
					9, 9, -3, 4, 14, -17, 30, -5, 10,
					-- layer=1 filter=113 channel=12
					-11, 5, 19, 12, 7, 25, 1, 0, 32,
					-- layer=1 filter=113 channel=13
					-22, -20, 21, -11, 9, 20, -22, 18, 29,
					-- layer=1 filter=113 channel=14
					-128, -161, -126, -190, -185, -130, -130, -125, -141,
					-- layer=1 filter=113 channel=15
					21, 39, -3, 47, 39, 12, 66, 59, 28,
					-- layer=1 filter=113 channel=16
					20, 25, 1, 34, 19, 6, 5, -32, -24,
					-- layer=1 filter=113 channel=17
					-31, -1, -29, -23, 18, 5, 8, 29, -3,
					-- layer=1 filter=113 channel=18
					-18, -41, -2, -15, -9, 0, -21, -4, 2,
					-- layer=1 filter=113 channel=19
					-28, -25, -20, 6, 11, -9, -7, -4, -3,
					-- layer=1 filter=113 channel=20
					0, 18, 15, 16, 28, 12, 13, 32, 17,
					-- layer=1 filter=113 channel=21
					3, -2, -8, 10, 10, -40, -11, 10, -25,
					-- layer=1 filter=113 channel=22
					5, 13, 1, -9, -6, -27, 30, 0, -17,
					-- layer=1 filter=113 channel=23
					16, -6, -24, -20, -19, -34, -2, -7, 0,
					-- layer=1 filter=113 channel=24
					-32, 0, -19, -4, 0, 9, -3, 21, 14,
					-- layer=1 filter=113 channel=25
					-33, -20, -11, -38, -31, -34, -22, -42, -16,
					-- layer=1 filter=113 channel=26
					7, 19, 3, 23, 15, 19, -2, 30, 5,
					-- layer=1 filter=113 channel=27
					6, 8, -3, 21, 12, 0, 11, 18, 0,
					-- layer=1 filter=113 channel=28
					15, -15, 19, 33, -11, -23, -3, -6, -13,
					-- layer=1 filter=113 channel=29
					6, -14, -1, 4, 1, -5, 8, 23, 11,
					-- layer=1 filter=113 channel=30
					-9, -24, 15, -22, 20, 33, 3, -1, 32,
					-- layer=1 filter=113 channel=31
					2, 12, -10, -7, -11, -1, -5, -6, 10,
					-- layer=1 filter=113 channel=32
					82, 187, 90, 71, 145, 63, 109, 92, 51,
					-- layer=1 filter=113 channel=33
					-17, 0, 8, -14, 21, 9, -2, 47, -12,
					-- layer=1 filter=113 channel=34
					-38, -44, -34, -52, -50, -68, -9, -81, -15,
					-- layer=1 filter=113 channel=35
					-5, -28, -14, 12, -5, -26, 0, -4, -29,
					-- layer=1 filter=113 channel=36
					23, 58, 15, 0, 38, 12, -7, 26, 11,
					-- layer=1 filter=113 channel=37
					-64, 10, -11, -13, -61, -43, -35, -43, -55,
					-- layer=1 filter=113 channel=38
					-12, -5, -9, -21, 4, 4, -36, 10, 2,
					-- layer=1 filter=113 channel=39
					6, 22, -19, -13, 11, -34, 17, 44, 9,
					-- layer=1 filter=113 channel=40
					-19, -10, -32, -12, 8, -41, 1, 1, -29,
					-- layer=1 filter=113 channel=41
					-3, -7, 10, -16, -10, 16, 11, 1, 31,
					-- layer=1 filter=113 channel=42
					-22, -54, -71, -49, -71, -80, -14, -35, -32,
					-- layer=1 filter=113 channel=43
					-47, -50, -39, -23, -84, -66, -35, -43, -45,
					-- layer=1 filter=113 channel=44
					34, 41, -2, 44, 44, 9, 25, 22, 20,
					-- layer=1 filter=113 channel=45
					-7, -33, 4, 3, -52, -27, -18, -54, -42,
					-- layer=1 filter=113 channel=46
					-38, -10, 0, -25, 7, 11, -9, -6, 2,
					-- layer=1 filter=113 channel=47
					-65, -17, -4, -28, -52, -48, -35, -79, -32,
					-- layer=1 filter=113 channel=48
					-27, 15, 11, -37, 8, 35, 3, 16, 17,
					-- layer=1 filter=113 channel=49
					52, 67, 42, 53, 79, 43, 75, 83, 57,
					-- layer=1 filter=113 channel=50
					-28, -20, 23, -33, 10, 36, -15, -9, 36,
					-- layer=1 filter=113 channel=51
					-24, -8, 12, -12, -1, 26, -2, 5, 20,
					-- layer=1 filter=113 channel=52
					-78, -68, -29, -72, -60, -73, 0, -108, -61,
					-- layer=1 filter=113 channel=53
					58, 59, 9, 27, 77, -32, 31, 41, -40,
					-- layer=1 filter=113 channel=54
					-33, -7, 0, -42, 8, 23, -2, 17, 13,
					-- layer=1 filter=113 channel=55
					5, -2, 4, 13, -6, 58, 7, 6, 1,
					-- layer=1 filter=113 channel=56
					33, 10, -10, 30, -1, 4, 16, 14, -4,
					-- layer=1 filter=113 channel=57
					-10, 8, -1, 25, 10, 5, 12, 13, -7,
					-- layer=1 filter=113 channel=58
					-45, -22, -4, -10, -8, 16, 2, 5, 4,
					-- layer=1 filter=113 channel=59
					49, 16, 39, 6, 57, -20, 23, 41, 2,
					-- layer=1 filter=113 channel=60
					-87, -91, -51, -127, -98, -117, -85, -105, -68,
					-- layer=1 filter=113 channel=61
					80, 68, 44, 52, 78, 19, 44, 76, 29,
					-- layer=1 filter=113 channel=62
					21, -19, 13, -1, 4, -53, 6, 6, -19,
					-- layer=1 filter=113 channel=63
					-5, -23, 2, -21, -26, -11, 12, -34, -10,
					-- layer=1 filter=114 channel=0
					33, 23, 0, 38, 48, 49, 31, 39, 55,
					-- layer=1 filter=114 channel=1
					36, 18, 11, -34, -6, 21, -67, -53, -33,
					-- layer=1 filter=114 channel=2
					38, 19, -19, 70, 61, 82, 24, 22, 60,
					-- layer=1 filter=114 channel=3
					-44, -6, 19, -15, 5, 26, -42, -47, 9,
					-- layer=1 filter=114 channel=4
					14, 36, 33, -28, 6, 5, -53, -32, -42,
					-- layer=1 filter=114 channel=5
					31, -12, 8, -5, -31, -38, -5, -21, -28,
					-- layer=1 filter=114 channel=6
					13, 24, 10, -39, -21, -41, -26, -24, -52,
					-- layer=1 filter=114 channel=7
					-6, 23, 7, -4, 10, 21, -27, 13, -29,
					-- layer=1 filter=114 channel=8
					19, 11, 21, -11, -3, -4, -34, -26, -28,
					-- layer=1 filter=114 channel=9
					1, -27, 15, -26, -44, -19, -20, -19, -5,
					-- layer=1 filter=114 channel=10
					13, 16, 32, 14, 32, 45, -19, -15, -6,
					-- layer=1 filter=114 channel=11
					-76, -70, -34, -45, -16, -59, -10, -48, -70,
					-- layer=1 filter=114 channel=12
					-18, -4, 24, -31, -31, -8, -29, -12, 8,
					-- layer=1 filter=114 channel=13
					-25, -12, -20, -16, -12, -15, 14, 2, 34,
					-- layer=1 filter=114 channel=14
					75, 46, 8, 76, 75, 84, 12, 31, 72,
					-- layer=1 filter=114 channel=15
					28, 47, 39, 27, 25, 31, 3, 22, -1,
					-- layer=1 filter=114 channel=16
					-92, -74, -16, -90, -70, -36, -49, -50, -57,
					-- layer=1 filter=114 channel=17
					11, -9, -1, -29, -26, 0, -59, -64, -45,
					-- layer=1 filter=114 channel=18
					17, 11, 11, -46, 12, -25, -50, -36, -54,
					-- layer=1 filter=114 channel=19
					23, 14, 39, -35, -19, 18, -95, -60, -68,
					-- layer=1 filter=114 channel=20
					5, 41, 37, 6, -10, -7, -31, 7, -20,
					-- layer=1 filter=114 channel=21
					0, 11, 19, -33, -13, -56, 6, -2, -27,
					-- layer=1 filter=114 channel=22
					-48, -47, -35, -15, -41, -32, -46, -65, -24,
					-- layer=1 filter=114 channel=23
					-5, 15, 26, 20, 25, -4, -1, -15, 4,
					-- layer=1 filter=114 channel=24
					-1, 17, 22, -11, -7, 38, -75, -46, -14,
					-- layer=1 filter=114 channel=25
					-51, -36, -19, -84, -42, -49, -41, -59, -92,
					-- layer=1 filter=114 channel=26
					-42, 31, 15, -53, -40, 6, -46, -46, -65,
					-- layer=1 filter=114 channel=27
					-2, 7, 23, -26, 0, 10, -26, -32, -31,
					-- layer=1 filter=114 channel=28
					-44, -7, 0, -24, -22, -28, 10, 6, 32,
					-- layer=1 filter=114 channel=29
					-3, 24, 21, -40, -15, 7, -56, -41, -37,
					-- layer=1 filter=114 channel=30
					0, -15, 8, 1, 10, -17, 7, 8, 23,
					-- layer=1 filter=114 channel=31
					-2, 14, -3, -14, 4, 2, 0, -13, 11,
					-- layer=1 filter=114 channel=32
					-82, -37, -58, -107, -94, -93, -69, -42, -106,
					-- layer=1 filter=114 channel=33
					25, 17, 11, -41, -12, 24, -66, -57, -24,
					-- layer=1 filter=114 channel=34
					-51, -57, -3, -68, -38, -74, -66, -113, -105,
					-- layer=1 filter=114 channel=35
					11, 8, -4, 29, 32, 56, -4, 14, 47,
					-- layer=1 filter=114 channel=36
					-10, 2, 10, 27, -2, 6, 10, 20, 8,
					-- layer=1 filter=114 channel=37
					-89, -54, -40, -67, -60, -36, -45, -42, -98,
					-- layer=1 filter=114 channel=38
					-3, 20, 0, 22, 16, 53, 20, 47, 24,
					-- layer=1 filter=114 channel=39
					13, 58, 55, 45, 23, 43, -9, 7, 4,
					-- layer=1 filter=114 channel=40
					-12, -67, -4, -7, 5, 13, -26, -26, 12,
					-- layer=1 filter=114 channel=41
					10, -7, -10, -7, 0, -3, -26, -19, -10,
					-- layer=1 filter=114 channel=42
					66, 44, 21, 54, 58, 51, 24, 61, 81,
					-- layer=1 filter=114 channel=43
					-9, -54, -5, -39, 22, -56, 0, -5, -30,
					-- layer=1 filter=114 channel=44
					-58, -25, 13, -66, -55, -39, -55, -59, -120,
					-- layer=1 filter=114 channel=45
					-8, -23, -14, -24, 6, -82, -11, -3, -30,
					-- layer=1 filter=114 channel=46
					-1, -10, -28, -13, -28, -50, 28, 16, -23,
					-- layer=1 filter=114 channel=47
					-49, -26, -11, -51, -56, -41, -37, -64, -87,
					-- layer=1 filter=114 channel=48
					-8, 3, -13, 4, -15, -33, 17, 18, -4,
					-- layer=1 filter=114 channel=49
					-4, 23, 40, 39, 5, 15, -11, -2, 5,
					-- layer=1 filter=114 channel=50
					23, -7, 9, -15, 15, -6, 0, 12, -2,
					-- layer=1 filter=114 channel=51
					23, 26, 19, 3, 0, 18, -11, -9, -3,
					-- layer=1 filter=114 channel=52
					-74, -100, -47, -34, 4, -27, -37, -89, -76,
					-- layer=1 filter=114 channel=53
					-56, -42, -15, -85, -54, -42, -64, -66, -60,
					-- layer=1 filter=114 channel=54
					-3, -4, 13, 11, -5, -3, -1, 13, 17,
					-- layer=1 filter=114 channel=55
					-24, -25, -2, -6, -13, 19, 33, 16, 47,
					-- layer=1 filter=114 channel=56
					39, 32, 40, 9, 31, 20, -20, -39, -4,
					-- layer=1 filter=114 channel=57
					-9, 27, 17, -15, -2, 12, -66, -46, -56,
					-- layer=1 filter=114 channel=58
					6, 12, 15, -20, -35, -32, -12, -27, -62,
					-- layer=1 filter=114 channel=59
					-12, 30, -14, -58, -43, -38, 10, -37, -57,
					-- layer=1 filter=114 channel=60
					-28, -72, -51, -24, -51, -32, -69, -99, -51,
					-- layer=1 filter=114 channel=61
					-97, -13, -31, -36, -71, -74, -37, -44, -55,
					-- layer=1 filter=114 channel=62
					15, 12, 4, -31, 13, -66, 23, 27, -25,
					-- layer=1 filter=114 channel=63
					-51, -45, -35, -36, -20, -62, -4, -14, -27,
					-- layer=1 filter=115 channel=0
					-19, -2, -14, -29, -3, -15, -7, 12, 25,
					-- layer=1 filter=115 channel=1
					-13, 11, 0, 4, 6, -13, 9, 21, 17,
					-- layer=1 filter=115 channel=2
					-39, -50, -26, -63, -41, -68, -13, -41, -18,
					-- layer=1 filter=115 channel=3
					-7, 2, -7, -8, -5, -15, -19, -29, -20,
					-- layer=1 filter=115 channel=4
					1, 6, 0, 0, 26, 15, -9, 16, 20,
					-- layer=1 filter=115 channel=5
					4, 9, -8, 10, -18, -5, 11, 0, 10,
					-- layer=1 filter=115 channel=6
					-18, 9, 24, 30, 3, 21, 7, 2, 4,
					-- layer=1 filter=115 channel=7
					-4, 1, 3, 17, 8, 24, 3, 20, 7,
					-- layer=1 filter=115 channel=8
					14, 3, 12, -8, 4, 15, -4, 21, 14,
					-- layer=1 filter=115 channel=9
					15, 14, 3, 24, 8, 30, 25, 4, 23,
					-- layer=1 filter=115 channel=10
					-7, -5, 11, -13, -5, -16, 20, 16, 2,
					-- layer=1 filter=115 channel=11
					-4, 23, 22, 13, 50, 31, 26, 56, 42,
					-- layer=1 filter=115 channel=12
					-13, -6, -10, -9, -24, -4, -21, 3, -14,
					-- layer=1 filter=115 channel=13
					-5, -7, -10, 19, -15, 0, 7, -7, -18,
					-- layer=1 filter=115 channel=14
					-154, -135, -87, -86, -98, -108, -61, -70, -46,
					-- layer=1 filter=115 channel=15
					-72, -106, -100, -75, -60, -109, -39, -8, -132,
					-- layer=1 filter=115 channel=16
					2, 1, -6, 17, 10, 31, 15, 48, 25,
					-- layer=1 filter=115 channel=17
					-13, 4, 3, -8, -10, 12, -7, 10, 10,
					-- layer=1 filter=115 channel=18
					-3, 17, 20, 21, 8, 6, 3, 21, 0,
					-- layer=1 filter=115 channel=19
					25, 8, 5, 24, 0, 16, 20, 11, 7,
					-- layer=1 filter=115 channel=20
					-34, -18, 0, -33, 11, -4, -24, 14, -18,
					-- layer=1 filter=115 channel=21
					-12, -4, 25, 57, -14, 9, 31, 13, -5,
					-- layer=1 filter=115 channel=22
					-31, -6, -5, 4, -9, -17, -1, 0, 58,
					-- layer=1 filter=115 channel=23
					44, -14, 15, 16, 5, 5, 60, 39, 19,
					-- layer=1 filter=115 channel=24
					2, 0, 7, 12, 21, 15, -5, 0, 6,
					-- layer=1 filter=115 channel=25
					-90, -39, -29, -54, -30, -46, -56, -14, 0,
					-- layer=1 filter=115 channel=26
					0, 17, 9, 3, 7, 21, -17, 7, 23,
					-- layer=1 filter=115 channel=27
					17, 2, 22, 13, 9, 21, -6, 6, 6,
					-- layer=1 filter=115 channel=28
					3, 0, 22, 2, -10, 17, 1, 8, 2,
					-- layer=1 filter=115 channel=29
					-4, -3, 12, 3, 13, 6, -10, 14, 8,
					-- layer=1 filter=115 channel=30
					9, 3, -18, 12, 12, 14, 37, 8, -9,
					-- layer=1 filter=115 channel=31
					-11, 15, -11, 1, -3, 14, -2, -7, 14,
					-- layer=1 filter=115 channel=32
					-60, -45, 1, -62, -27, -7, -92, -24, -42,
					-- layer=1 filter=115 channel=33
					13, 13, -2, 13, 0, 0, 14, 19, 1,
					-- layer=1 filter=115 channel=34
					-114, -85, -68, -109, -120, -103, -147, -128, -100,
					-- layer=1 filter=115 channel=35
					0, 0, 5, -15, -10, 7, -7, -6, 3,
					-- layer=1 filter=115 channel=36
					-15, -16, -13, -2, 7, -2, -12, 31, -5,
					-- layer=1 filter=115 channel=37
					-82, -78, -40, -56, -91, -86, -129, -83, -70,
					-- layer=1 filter=115 channel=38
					-7, -41, -8, -20, 7, -27, -6, -9, -18,
					-- layer=1 filter=115 channel=39
					-7, -32, -27, -6, -4, -15, 34, 36, 5,
					-- layer=1 filter=115 channel=40
					-25, -20, 0, -10, -17, -2, -30, -16, 26,
					-- layer=1 filter=115 channel=41
					-16, -14, -7, 0, 7, -4, -3, -13, -20,
					-- layer=1 filter=115 channel=42
					-49, -92, -96, -18, -83, -114, 13, -30, -66,
					-- layer=1 filter=115 channel=43
					-103, -66, -19, -32, -87, -55, -78, -76, -37,
					-- layer=1 filter=115 channel=44
					-13, -33, -20, -50, -18, -28, -47, 3, -28,
					-- layer=1 filter=115 channel=45
					-64, -18, 5, -7, -67, -29, -73, -43, -33,
					-- layer=1 filter=115 channel=46
					21, 25, 5, 33, 23, 31, 58, 47, 38,
					-- layer=1 filter=115 channel=47
					-89, -73, -50, -94, -93, -86, -118, -78, -69,
					-- layer=1 filter=115 channel=48
					21, 18, 4, 30, 13, 4, 32, 25, 20,
					-- layer=1 filter=115 channel=49
					-73, -119, -98, -58, -76, -120, -23, -14, -94,
					-- layer=1 filter=115 channel=50
					14, 0, -12, 11, 1, 8, 22, 27, 8,
					-- layer=1 filter=115 channel=51
					10, -5, 11, 4, 24, -1, 17, 23, 20,
					-- layer=1 filter=115 channel=52
					-65, -74, -32, -88, -92, -79, -112, -136, -95,
					-- layer=1 filter=115 channel=53
					-93, -43, -33, -49, -74, -13, -63, -12, 11,
					-- layer=1 filter=115 channel=54
					22, 12, -14, 11, 14, 14, 31, 14, 9,
					-- layer=1 filter=115 channel=55
					-6, -43, -42, -11, -4, -15, -16, -20, -38,
					-- layer=1 filter=115 channel=56
					14, 3, 3, 10, 6, 15, 6, 20, 15,
					-- layer=1 filter=115 channel=57
					-1, -12, -10, -5, 13, 10, 5, 6, 7,
					-- layer=1 filter=115 channel=58
					15, -4, 10, -3, -4, -3, -4, 21, 12,
					-- layer=1 filter=115 channel=59
					-69, -2, -10, -20, -75, -27, -45, -41, -10,
					-- layer=1 filter=115 channel=60
					-107, -95, -84, -92, -109, -88, -119, -125, -175,
					-- layer=1 filter=115 channel=61
					-58, -39, -3, -27, -74, -44, -68, -60, -20,
					-- layer=1 filter=115 channel=62
					-69, -12, 20, 2, -57, -16, -23, -31, -43,
					-- layer=1 filter=115 channel=63
					4, 33, 2, 14, 10, 22, 30, 37, 37,
					-- layer=1 filter=116 channel=0
					3, -18, -16, 6, 10, -5, 0, 4, 16,
					-- layer=1 filter=116 channel=1
					-12, -2, -4, -13, -17, 5, -25, -6, 8,
					-- layer=1 filter=116 channel=2
					15, 24, -3, 35, 45, 37, 36, 34, 35,
					-- layer=1 filter=116 channel=3
					3, -12, 16, 15, -2, 11, 0, -11, 7,
					-- layer=1 filter=116 channel=4
					-19, -29, -49, -60, -82, -71, -88, -88, -72,
					-- layer=1 filter=116 channel=5
					-14, 9, -10, 8, -8, 8, 8, -8, -2,
					-- layer=1 filter=116 channel=6
					-20, -43, -38, -17, -30, -14, -22, -46, -43,
					-- layer=1 filter=116 channel=7
					6, 20, 42, 8, 5, 16, -31, -39, -12,
					-- layer=1 filter=116 channel=8
					-1, -13, 26, -10, -20, -15, -16, -39, -52,
					-- layer=1 filter=116 channel=9
					-23, -31, -19, -39, -29, -32, -25, -36, -14,
					-- layer=1 filter=116 channel=10
					5, -6, -31, 8, -11, -18, -2, -5, -15,
					-- layer=1 filter=116 channel=11
					-1, 0, 19, -13, -1, -1, -14, 12, 8,
					-- layer=1 filter=116 channel=12
					13, 1, 10, 3, 22, 15, 1, 4, -7,
					-- layer=1 filter=116 channel=13
					-1, 17, 11, 31, 42, 27, 18, 22, 11,
					-- layer=1 filter=116 channel=14
					13, 27, 3, 44, 19, 21, 43, 45, 27,
					-- layer=1 filter=116 channel=15
					-11, -19, -36, -13, -36, -15, -42, -33, -57,
					-- layer=1 filter=116 channel=16
					37, 39, 21, -1, -13, -4, -33, -41, -20,
					-- layer=1 filter=116 channel=17
					-14, -6, -1, -3, 18, -1, -5, 0, 1,
					-- layer=1 filter=116 channel=18
					-52, -32, -41, -28, -27, 0, -41, -42, -38,
					-- layer=1 filter=116 channel=19
					-37, -35, -46, -28, -32, -29, -33, -32, -22,
					-- layer=1 filter=116 channel=20
					-15, 9, -19, -15, -18, -6, -24, -3, -26,
					-- layer=1 filter=116 channel=21
					0, 3, 12, -4, 13, 10, 3, -29, 0,
					-- layer=1 filter=116 channel=22
					-14, -9, 21, -4, -19, -35, 0, -66, -23,
					-- layer=1 filter=116 channel=23
					12, -44, 3, -10, -33, 6, 1, -22, -7,
					-- layer=1 filter=116 channel=24
					-25, -39, -25, -26, -31, -47, -14, -8, -11,
					-- layer=1 filter=116 channel=25
					34, 24, 29, 34, 20, 35, 2, 21, 14,
					-- layer=1 filter=116 channel=26
					-6, 15, 0, -4, 2, 4, -23, -24, -20,
					-- layer=1 filter=116 channel=27
					11, 17, 6, 9, 4, 16, -6, -9, 0,
					-- layer=1 filter=116 channel=28
					34, 25, 36, 38, 48, 47, 34, 22, 7,
					-- layer=1 filter=116 channel=29
					14, 15, 4, 0, -3, 4, 6, -17, 0,
					-- layer=1 filter=116 channel=30
					9, 1, 12, 3, 10, 3, 24, 2, 3,
					-- layer=1 filter=116 channel=31
					14, 10, -3, -12, 1, -13, -2, -12, -9,
					-- layer=1 filter=116 channel=32
					3, 33, -1, 0, 12, 35, 21, 3, 23,
					-- layer=1 filter=116 channel=33
					2, 2, -8, -7, 2, -15, 0, 7, -6,
					-- layer=1 filter=116 channel=34
					-22, 2, -11, 8, 10, 55, 11, 49, 16,
					-- layer=1 filter=116 channel=35
					8, 26, 4, 22, 38, 20, 29, 29, 21,
					-- layer=1 filter=116 channel=36
					17, 18, -5, -5, -1, 0, 8, 6, 8,
					-- layer=1 filter=116 channel=37
					22, 42, 29, 45, 10, 47, 22, 22, 40,
					-- layer=1 filter=116 channel=38
					0, -13, 5, 0, 22, 15, 14, 16, 13,
					-- layer=1 filter=116 channel=39
					-14, -60, -51, -44, -85, -44, -29, -48, -44,
					-- layer=1 filter=116 channel=40
					9, 20, 5, 13, 39, 32, 40, 24, 23,
					-- layer=1 filter=116 channel=41
					2, 9, 8, 7, 12, 8, 6, 9, -18,
					-- layer=1 filter=116 channel=42
					-14, -29, -41, -28, -29, -5, -14, -44, -38,
					-- layer=1 filter=116 channel=43
					8, -20, -14, 25, 11, 9, 0, -11, -17,
					-- layer=1 filter=116 channel=44
					12, -26, -5, 18, 4, 14, -30, -7, 7,
					-- layer=1 filter=116 channel=45
					9, -30, -5, 13, -19, 0, 21, -11, 10,
					-- layer=1 filter=116 channel=46
					-31, 8, 21, -37, -19, -25, -15, -27, -18,
					-- layer=1 filter=116 channel=47
					14, 25, 4, 31, 30, 36, 31, 7, 19,
					-- layer=1 filter=116 channel=48
					-3, 8, -9, 11, -4, 18, -5, -2, 22,
					-- layer=1 filter=116 channel=49
					12, -65, -52, -25, -69, -16, -31, -29, -63,
					-- layer=1 filter=116 channel=50
					16, 15, -4, 11, 12, 28, 16, 25, 33,
					-- layer=1 filter=116 channel=51
					2, -5, 3, 13, -5, -9, 10, -8, -1,
					-- layer=1 filter=116 channel=52
					-9, 4, -19, 31, 35, 53, 13, 1, 7,
					-- layer=1 filter=116 channel=53
					3, 14, 49, 6, 14, 14, 36, -22, 16,
					-- layer=1 filter=116 channel=54
					-7, 22, 19, 2, 9, 23, 10, 23, 11,
					-- layer=1 filter=116 channel=55
					5, -1, 10, 31, 13, 25, -8, -11, 0,
					-- layer=1 filter=116 channel=56
					-21, -23, -27, -58, -42, -38, -57, -53, -62,
					-- layer=1 filter=116 channel=57
					-24, -14, -15, -9, -10, -28, -29, -22, -15,
					-- layer=1 filter=116 channel=58
					0, -11, -9, -11, 6, 9, -24, -7, 2,
					-- layer=1 filter=116 channel=59
					13, 2, 2, 9, -33, -12, -9, -26, -14,
					-- layer=1 filter=116 channel=60
					6, 8, -14, 46, 45, 56, 32, 13, -1,
					-- layer=1 filter=116 channel=61
					-13, -30, -5, -53, -26, -22, -7, -88, -32,
					-- layer=1 filter=116 channel=62
					3, -32, -13, 9, 3, 26, -2, -37, -28,
					-- layer=1 filter=116 channel=63
					-47, -15, -22, -34, -38, -49, -13, -36, -3,
					-- layer=1 filter=117 channel=0
					-37, -26, -12, 24, 24, 18, -18, 9, -11,
					-- layer=1 filter=117 channel=1
					-10, -3, -31, -21, 22, -5, 3, -22, 6,
					-- layer=1 filter=117 channel=2
					-30, -48, -14, 43, 41, 26, 23, 26, 3,
					-- layer=1 filter=117 channel=3
					-51, -45, -27, -40, -27, -70, -25, -52, -39,
					-- layer=1 filter=117 channel=4
					-24, 23, 22, -38, 22, -20, 1, 4, -40,
					-- layer=1 filter=117 channel=5
					5, -2, -13, -19, -8, -10, 2, 2, -29,
					-- layer=1 filter=117 channel=6
					17, -19, 16, -44, -25, 1, 0, 16, -14,
					-- layer=1 filter=117 channel=7
					-38, -51, -42, -12, -15, -24, -32, -13, -14,
					-- layer=1 filter=117 channel=8
					-1, -33, -38, -34, -22, -13, 6, -7, -16,
					-- layer=1 filter=117 channel=9
					13, 0, -4, -7, -7, 10, 35, 12, 15,
					-- layer=1 filter=117 channel=10
					-19, -18, -14, -3, -7, 11, -10, -20, 7,
					-- layer=1 filter=117 channel=11
					-2, 10, -17, 35, 3, 40, 59, 37, 48,
					-- layer=1 filter=117 channel=12
					-16, -29, -12, 0, -18, -19, -19, -26, -40,
					-- layer=1 filter=117 channel=13
					5, -6, -11, 1, -2, -2, 18, -10, -1,
					-- layer=1 filter=117 channel=14
					7, -9, 36, 65, 57, 34, 39, 50, 25,
					-- layer=1 filter=117 channel=15
					25, 24, 7, 0, 2, 8, 58, 10, 34,
					-- layer=1 filter=117 channel=16
					-30, 34, -6, -3, 2, 10, 11, -12, -23,
					-- layer=1 filter=117 channel=17
					6, 1, -21, -32, 10, -6, 17, -8, -3,
					-- layer=1 filter=117 channel=18
					-3, -20, -11, -25, -66, -8, -15, -24, -16,
					-- layer=1 filter=117 channel=19
					-22, -18, 3, -5, -13, -9, -18, 9, -8,
					-- layer=1 filter=117 channel=20
					11, 9, -3, 8, -7, -31, 6, -4, -21,
					-- layer=1 filter=117 channel=21
					14, -31, -21, -28, -34, 4, 4, 11, 18,
					-- layer=1 filter=117 channel=22
					27, -2, 1, 8, 28, 24, 46, 40, 31,
					-- layer=1 filter=117 channel=23
					-3, 13, 27, 0, -35, 16, -4, -4, 28,
					-- layer=1 filter=117 channel=24
					-53, -14, -10, -15, 14, -3, -28, 2, -23,
					-- layer=1 filter=117 channel=25
					1, 0, -31, -31, -18, -23, -22, 7, -33,
					-- layer=1 filter=117 channel=26
					-39, -6, -14, 1, 0, -7, -4, -5, -37,
					-- layer=1 filter=117 channel=27
					0, -40, -21, -15, -25, -14, -15, -38, -35,
					-- layer=1 filter=117 channel=28
					-29, -56, -55, -36, -42, -30, -9, -35, -9,
					-- layer=1 filter=117 channel=29
					-15, 2, -15, -18, -30, -34, -31, -25, -11,
					-- layer=1 filter=117 channel=30
					22, 0, 0, 14, 7, 8, 9, 6, 14,
					-- layer=1 filter=117 channel=31
					1, 3, -12, -4, 5, -13, -16, -7, -10,
					-- layer=1 filter=117 channel=32
					0, 4, -16, 20, 50, 4, 22, -21, -27,
					-- layer=1 filter=117 channel=33
					-7, 0, -10, -18, 20, -19, -20, 2, -3,
					-- layer=1 filter=117 channel=34
					38, 25, -26, -7, 15, -16, 45, 41, -2,
					-- layer=1 filter=117 channel=35
					-69, -57, -38, -26, -36, -49, -40, -73, -47,
					-- layer=1 filter=117 channel=36
					15, -4, -3, 1, -5, -2, 3, -12, 16,
					-- layer=1 filter=117 channel=37
					-12, 11, -16, 39, 7, -2, 15, 15, -1,
					-- layer=1 filter=117 channel=38
					3, -26, -5, 12, -20, 6, -4, 8, 14,
					-- layer=1 filter=117 channel=39
					9, -3, 16, 11, 5, 1, -14, 8, 19,
					-- layer=1 filter=117 channel=40
					9, 14, -14, 23, 41, 27, 40, 23, 28,
					-- layer=1 filter=117 channel=41
					-12, -4, -6, 6, -21, -24, -3, -7, -23,
					-- layer=1 filter=117 channel=42
					-15, -23, 21, 64, 9, 36, 20, 32, 64,
					-- layer=1 filter=117 channel=43
					-31, -16, -24, -2, -37, -13, -10, 15, -13,
					-- layer=1 filter=117 channel=44
					8, 21, -10, 16, -20, -24, 21, 8, -1,
					-- layer=1 filter=117 channel=45
					-2, -6, 3, -5, -39, 0, -5, -8, -36,
					-- layer=1 filter=117 channel=46
					-12, -21, -39, -37, -52, -51, -14, -42, -34,
					-- layer=1 filter=117 channel=47
					6, 5, -33, 19, 9, -15, 25, 13, -8,
					-- layer=1 filter=117 channel=48
					-3, 7, 8, 15, 12, -9, -1, 13, 4,
					-- layer=1 filter=117 channel=49
					44, 47, 19, 28, 15, 13, 53, 44, 64,
					-- layer=1 filter=117 channel=50
					27, 21, 22, 5, -2, 2, 19, -2, -16,
					-- layer=1 filter=117 channel=51
					-12, -13, 2, -12, -19, -3, 0, -8, -12,
					-- layer=1 filter=117 channel=52
					-24, -17, -69, 5, -17, -23, 61, 63, 50,
					-- layer=1 filter=117 channel=53
					34, -5, 8, -23, 30, 35, 42, -2, 31,
					-- layer=1 filter=117 channel=54
					5, 21, -2, 14, 9, -25, 0, -14, -1,
					-- layer=1 filter=117 channel=55
					-21, -9, -40, -47, -24, -38, 22, -13, 17,
					-- layer=1 filter=117 channel=56
					-18, -40, -21, -25, 15, 0, -3, 12, -6,
					-- layer=1 filter=117 channel=57
					-29, 1, 8, -11, 14, -8, -21, -1, -39,
					-- layer=1 filter=117 channel=58
					-17, 13, -18, 17, -8, -20, 5, 11, -7,
					-- layer=1 filter=117 channel=59
					61, -11, 8, -30, 29, 15, 19, 23, 21,
					-- layer=1 filter=117 channel=60
					46, 36, -8, 8, -55, -30, -13, -10, -21,
					-- layer=1 filter=117 channel=61
					61, 17, 19, -5, 32, 48, 34, 39, 42,
					-- layer=1 filter=117 channel=62
					16, -27, -10, -27, -30, 1, -15, -1, 11,
					-- layer=1 filter=117 channel=63
					8, -5, -4, -2, 4, -9, -2, -12, -14,
					-- layer=1 filter=118 channel=0
					-42, -47, -26, 32, 9, 0, 34, 21, 0,
					-- layer=1 filter=118 channel=1
					-29, 0, 12, 10, -23, 0, -6, 22, -2,
					-- layer=1 filter=118 channel=2
					-27, -14, -13, 27, 33, 39, 53, 20, 9,
					-- layer=1 filter=118 channel=3
					2, -33, 8, -22, -9, -19, 17, -6, -34,
					-- layer=1 filter=118 channel=4
					-12, -25, 4, -14, 6, 0, 26, 13, -5,
					-- layer=1 filter=118 channel=5
					-10, 12, -3, 6, -22, -17, 10, 2, -11,
					-- layer=1 filter=118 channel=6
					15, 21, -16, 34, -16, -8, 0, 43, 14,
					-- layer=1 filter=118 channel=7
					-13, -47, -26, -32, -43, -26, 1, -20, -21,
					-- layer=1 filter=118 channel=8
					-18, -5, -19, 18, -36, -43, -9, 3, -2,
					-- layer=1 filter=118 channel=9
					10, -12, 0, 17, 3, -1, 12, 22, 14,
					-- layer=1 filter=118 channel=10
					17, -8, 8, -13, 23, 10, -2, 7, -21,
					-- layer=1 filter=118 channel=11
					-15, -40, -5, -35, -31, -62, -23, -31, -19,
					-- layer=1 filter=118 channel=12
					-3, -2, 14, -5, 0, -11, -36, -2, -4,
					-- layer=1 filter=118 channel=13
					-1, -1, -18, 3, 8, -22, 12, 7, 7,
					-- layer=1 filter=118 channel=14
					-6, 14, -19, 34, 30, 56, 54, 24, 32,
					-- layer=1 filter=118 channel=15
					25, 1, 37, -29, 56, 19, 0, 18, 6,
					-- layer=1 filter=118 channel=16
					-6, -23, 23, -54, -27, -28, -5, -14, -36,
					-- layer=1 filter=118 channel=17
					-9, 9, -12, 4, 1, -12, -7, 14, -6,
					-- layer=1 filter=118 channel=18
					-4, -15, -13, 44, -21, 4, -7, 23, 12,
					-- layer=1 filter=118 channel=19
					-6, -17, 6, 1, -3, -14, -5, 8, 10,
					-- layer=1 filter=118 channel=20
					20, -20, 27, -38, 28, 19, -4, 14, 2,
					-- layer=1 filter=118 channel=21
					6, -24, 12, 19, -27, -19, -24, 5, -17,
					-- layer=1 filter=118 channel=22
					-45, -37, -26, 11, -12, -27, 2, 7, 12,
					-- layer=1 filter=118 channel=23
					-19, -14, -14, -37, 5, -11, -4, 27, 4,
					-- layer=1 filter=118 channel=24
					2, -27, 0, -19, -20, 3, 9, -16, 7,
					-- layer=1 filter=118 channel=25
					30, 23, 32, 0, 1, 0, -9, 20, 4,
					-- layer=1 filter=118 channel=26
					-21, -50, -9, -15, -18, -26, 0, 12, -9,
					-- layer=1 filter=118 channel=27
					-17, -21, 1, 5, -25, -7, -12, -1, -22,
					-- layer=1 filter=118 channel=28
					-7, -7, 0, -17, -25, -17, -32, -25, -9,
					-- layer=1 filter=118 channel=29
					9, -24, 0, -10, -3, 2, -21, 0, 6,
					-- layer=1 filter=118 channel=30
					-24, -26, -28, -20, -13, -35, 3, 21, 1,
					-- layer=1 filter=118 channel=31
					-9, -9, 3, -7, -6, 14, 5, 12, 6,
					-- layer=1 filter=118 channel=32
					-40, -49, -20, -10, -54, -18, -52, -20, -16,
					-- layer=1 filter=118 channel=33
					-27, -2, -17, 3, -9, -15, -3, -16, -29,
					-- layer=1 filter=118 channel=34
					-25, 12, 14, 6, 15, 23, -5, 40, 43,
					-- layer=1 filter=118 channel=35
					-1, -11, -19, -30, 0, -3, -8, -13, -13,
					-- layer=1 filter=118 channel=36
					-26, -2, 7, -52, 6, -20, -22, -18, -23,
					-- layer=1 filter=118 channel=37
					26, -5, 43, 0, 1, -16, 24, 9, 46,
					-- layer=1 filter=118 channel=38
					0, -13, -21, -26, 11, -5, 14, 2, 18,
					-- layer=1 filter=118 channel=39
					-2, -25, -9, -22, 22, 31, 15, 18, 11,
					-- layer=1 filter=118 channel=40
					-32, -10, -1, -3, 5, 7, 15, 8, 25,
					-- layer=1 filter=118 channel=41
					-19, 10, -20, -16, 8, 2, -3, 6, 1,
					-- layer=1 filter=118 channel=42
					10, 1, 0, 15, 25, 64, 40, 37, 33,
					-- layer=1 filter=118 channel=43
					26, 14, 18, 16, -8, -14, 8, 55, 26,
					-- layer=1 filter=118 channel=44
					-22, -1, 32, -28, 19, 15, -24, 13, 24,
					-- layer=1 filter=118 channel=45
					31, 13, 10, 61, -15, 20, 33, 58, 26,
					-- layer=1 filter=118 channel=46
					-95, -79, -61, -77, -77, -100, -56, -54, -69,
					-- layer=1 filter=118 channel=47
					-2, 12, 32, 21, 10, 15, 13, 20, 15,
					-- layer=1 filter=118 channel=48
					-5, 12, -16, -5, 10, -8, -1, 9, 27,
					-- layer=1 filter=118 channel=49
					37, 11, 30, -27, 58, 35, -9, 28, 4,
					-- layer=1 filter=118 channel=50
					6, 2, 8, 4, 0, 8, 5, 0, 2,
					-- layer=1 filter=118 channel=51
					12, -2, 9, 0, 0, 0, -6, 8, 15,
					-- layer=1 filter=118 channel=52
					-9, 4, 27, 7, 4, -20, 12, 59, 55,
					-- layer=1 filter=118 channel=53
					-12, -20, 15, 0, 1, -44, -6, -7, -41,
					-- layer=1 filter=118 channel=54
					8, 16, 4, -11, -12, 8, -8, 16, 11,
					-- layer=1 filter=118 channel=55
					7, -10, 0, 15, 1, -16, 3, 31, 32,
					-- layer=1 filter=118 channel=56
					-27, -18, -2, -6, -37, -1, 25, 13, -12,
					-- layer=1 filter=118 channel=57
					-1, -2, 17, -8, -8, 8, 6, 11, -5,
					-- layer=1 filter=118 channel=58
					-15, -3, -11, -5, 10, -15, -7, 7, 7,
					-- layer=1 filter=118 channel=59
					8, 41, 23, 25, -1, 19, -3, 57, -12,
					-- layer=1 filter=118 channel=60
					-48, -54, -34, 27, 1, -13, -10, 23, 47,
					-- layer=1 filter=118 channel=61
					30, 13, 29, 29, 0, 20, 5, 37, 18,
					-- layer=1 filter=118 channel=62
					37, 27, 17, 25, -8, 4, 0, 33, 0,
					-- layer=1 filter=118 channel=63
					-18, -69, -38, 7, -33, -48, 24, -8, -20,
					-- layer=1 filter=119 channel=0
					27, 28, 37, -23, -33, -7, -65, -26, -30,
					-- layer=1 filter=119 channel=1
					16, 11, 28, 9, 6, 13, -29, -21, 1,
					-- layer=1 filter=119 channel=2
					25, 6, 5, -9, -1, -1, -26, -20, -26,
					-- layer=1 filter=119 channel=3
					18, 22, -8, 12, 4, -37, 9, -5, 4,
					-- layer=1 filter=119 channel=4
					6, 18, 11, -30, 0, -15, -28, -21, -32,
					-- layer=1 filter=119 channel=5
					-19, 8, -3, 13, 2, 4, -16, -3, -26,
					-- layer=1 filter=119 channel=6
					13, 51, 48, -46, -4, 35, -109, -64, -33,
					-- layer=1 filter=119 channel=7
					14, 44, 24, -31, -17, 0, -69, -52, -52,
					-- layer=1 filter=119 channel=8
					19, 15, 47, -40, -34, 8, -59, -39, -14,
					-- layer=1 filter=119 channel=9
					-18, -18, -26, 18, 9, 22, 16, 33, 21,
					-- layer=1 filter=119 channel=10
					0, -8, -10, -7, 26, 26, -14, 24, 7,
					-- layer=1 filter=119 channel=11
					-52, -15, 4, -25, 21, 54, -32, -86, -54,
					-- layer=1 filter=119 channel=12
					-35, 8, -17, -28, -27, -12, 20, 0, -28,
					-- layer=1 filter=119 channel=13
					-15, -27, -12, 25, 2, -4, 1, 7, 0,
					-- layer=1 filter=119 channel=14
					-3, -26, 20, -30, -4, 17, 2, 3, -10,
					-- layer=1 filter=119 channel=15
					-5, 18, -13, -15, 16, -53, 41, 27, 20,
					-- layer=1 filter=119 channel=16
					-30, -8, 6, -49, 11, 42, -35, -62, -58,
					-- layer=1 filter=119 channel=17
					-14, -7, 2, -4, 15, 33, 4, 5, 11,
					-- layer=1 filter=119 channel=18
					26, 35, 40, -33, -17, 32, -75, -63, -46,
					-- layer=1 filter=119 channel=19
					23, 25, 17, 11, 20, 16, -33, -11, -5,
					-- layer=1 filter=119 channel=20
					-2, -12, -26, -23, 26, -28, 32, 19, 19,
					-- layer=1 filter=119 channel=21
					-32, 17, 12, -72, -37, 3, -59, -15, -16,
					-- layer=1 filter=119 channel=22
					-58, -3, -26, -29, -28, -10, -18, 1, 12,
					-- layer=1 filter=119 channel=23
					-63, -39, -73, -14, -29, -35, 27, 11, 11,
					-- layer=1 filter=119 channel=24
					24, 20, 21, 20, 34, 35, -18, -4, 0,
					-- layer=1 filter=119 channel=25
					18, 23, 31, -50, -6, 30, -53, -67, -52,
					-- layer=1 filter=119 channel=26
					26, 36, 30, -52, -28, -9, -75, -63, -50,
					-- layer=1 filter=119 channel=27
					9, 27, 38, -17, -1, -5, -39, -33, -19,
					-- layer=1 filter=119 channel=28
					-9, 23, 15, -57, -35, -16, -57, -38, -30,
					-- layer=1 filter=119 channel=29
					-1, 24, 9, -30, -10, -1, -28, -14, -18,
					-- layer=1 filter=119 channel=30
					-27, -29, -37, 16, -15, -25, 49, 6, 12,
					-- layer=1 filter=119 channel=31
					-7, -10, -2, 2, -14, 7, -9, -13, 11,
					-- layer=1 filter=119 channel=32
					-63, -67, -71, -68, 69, -42, 13, 63, 72,
					-- layer=1 filter=119 channel=33
					8, 17, 34, 1, 11, 39, -22, -8, 2,
					-- layer=1 filter=119 channel=34
					1, 8, 1, -58, -5, 28, -62, -102, -64,
					-- layer=1 filter=119 channel=35
					3, 27, 15, -3, -3, 4, -52, -28, -21,
					-- layer=1 filter=119 channel=36
					-25, -54, -30, -7, 17, -29, 32, 34, 2,
					-- layer=1 filter=119 channel=37
					17, 30, 20, -6, 14, 81, -86, -86, -112,
					-- layer=1 filter=119 channel=38
					-2, -12, -28, -2, -4, 13, 7, 21, -12,
					-- layer=1 filter=119 channel=39
					-38, -22, -78, 0, -5, -27, 43, 37, 23,
					-- layer=1 filter=119 channel=40
					-42, -50, -41, -7, -7, -8, 26, 15, 38,
					-- layer=1 filter=119 channel=41
					-32, -34, -36, 15, -10, -12, 44, 18, 22,
					-- layer=1 filter=119 channel=42
					7, 23, -3, -4, 11, 10, 8, -16, 9,
					-- layer=1 filter=119 channel=43
					12, 29, 35, -26, 24, 35, -106, -69, -56,
					-- layer=1 filter=119 channel=44
					-18, -19, 4, -23, 0, -17, -23, -4, 6,
					-- layer=1 filter=119 channel=45
					17, 44, 69, 19, 44, 68, -100, -65, -63,
					-- layer=1 filter=119 channel=46
					-28, -46, -61, 30, -2, 28, 5, 22, 23,
					-- layer=1 filter=119 channel=47
					15, 36, 16, -19, 1, 42, -54, -67, -67,
					-- layer=1 filter=119 channel=48
					-5, -32, -10, 15, 7, 17, 34, 37, 9,
					-- layer=1 filter=119 channel=49
					-18, 9, -44, -10, 22, -46, 44, 38, 33,
					-- layer=1 filter=119 channel=50
					-8, -34, -37, 24, 9, 7, 50, 17, 28,
					-- layer=1 filter=119 channel=51
					29, 25, 1, 6, 29, 31, 15, -2, 0,
					-- layer=1 filter=119 channel=52
					50, 64, 79, 47, 81, 89, -57, -80, -84,
					-- layer=1 filter=119 channel=53
					-58, 16, -7, -92, -48, -20, -41, -33, -3,
					-- layer=1 filter=119 channel=54
					-11, -33, -40, 23, 21, 7, 23, 25, 37,
					-- layer=1 filter=119 channel=55
					11, -18, 1, 12, -28, 8, -10, -29, -31,
					-- layer=1 filter=119 channel=56
					10, 37, 40, -25, -6, -12, -47, -45, -22,
					-- layer=1 filter=119 channel=57
					13, 36, 36, 1, 13, 20, -43, -3, -25,
					-- layer=1 filter=119 channel=58
					0, 18, 11, 5, -6, 3, -13, -20, -13,
					-- layer=1 filter=119 channel=59
					-14, 38, 36, -78, -22, 13, -47, -49, 4,
					-- layer=1 filter=119 channel=60
					-48, -28, 34, -64, -86, -45, 0, -23, -11,
					-- layer=1 filter=119 channel=61
					-45, 14, 10, -79, -56, -11, 1, -26, 2,
					-- layer=1 filter=119 channel=62
					1, 41, 56, -44, 8, 27, -70, -37, -5,
					-- layer=1 filter=119 channel=63
					-47, -57, -73, 16, -17, 4, 24, 19, 11,
					-- layer=1 filter=120 channel=0
					-52, -17, -47, -42, -50, -53, -17, -19, -33,
					-- layer=1 filter=120 channel=1
					-15, -32, -14, -10, -23, 11, -7, 13, 22,
					-- layer=1 filter=120 channel=2
					-49, -92, -109, -87, -95, -46, -16, 4, -16,
					-- layer=1 filter=120 channel=3
					-26, 7, -4, -51, -15, -7, -40, -37, -40,
					-- layer=1 filter=120 channel=4
					-5, -8, 12, 24, 1, 14, 16, 6, 34,
					-- layer=1 filter=120 channel=5
					-4, -24, -6, -12, -4, 8, 25, 14, 4,
					-- layer=1 filter=120 channel=6
					-16, -6, 0, 0, 25, 47, 27, 13, 41,
					-- layer=1 filter=120 channel=7
					22, -1, 0, 14, -9, 25, 3, -3, -7,
					-- layer=1 filter=120 channel=8
					12, 17, 25, 9, 0, 15, -10, -1, 24,
					-- layer=1 filter=120 channel=9
					-57, -21, -6, -53, -54, 0, 1, -19, -6,
					-- layer=1 filter=120 channel=10
					-35, -44, -35, -23, -13, -29, 2, 0, 5,
					-- layer=1 filter=120 channel=11
					-3, -7, -42, -17, -38, -21, -24, -2, 4,
					-- layer=1 filter=120 channel=12
					1, 18, -28, -1, 10, -18, 7, -17, -15,
					-- layer=1 filter=120 channel=13
					-8, 29, 10, 19, 37, 28, 6, -1, -7,
					-- layer=1 filter=120 channel=14
					-82, -121, -138, -89, -104, -83, -4, -16, -37,
					-- layer=1 filter=120 channel=15
					-23, -72, -131, -34, -113, -62, -1, -42, 64,
					-- layer=1 filter=120 channel=16
					12, 29, 12, 3, 2, -2, 6, -16, 33,
					-- layer=1 filter=120 channel=17
					-56, -22, -8, -30, -41, -11, 5, 19, 20,
					-- layer=1 filter=120 channel=18
					-31, -31, -44, 17, 18, 11, 41, 12, 44,
					-- layer=1 filter=120 channel=19
					-22, -22, -28, 4, 15, 4, 35, 22, 46,
					-- layer=1 filter=120 channel=20
					-2, -8, -26, 10, -23, -17, 13, -9, 11,
					-- layer=1 filter=120 channel=21
					-60, -50, -12, 23, 31, 43, 25, 45, 49,
					-- layer=1 filter=120 channel=22
					-129, -113, -134, -144, -164, -62, -24, -10, -20,
					-- layer=1 filter=120 channel=23
					-58, -88, -112, -21, -36, -31, -10, 12, -18,
					-- layer=1 filter=120 channel=24
					-28, -23, -36, -6, -2, -14, 19, 25, 34,
					-- layer=1 filter=120 channel=25
					-15, -29, -63, 36, -6, 33, 50, 47, 67,
					-- layer=1 filter=120 channel=26
					11, 1, -3, 15, 36, 41, -2, 26, 32,
					-- layer=1 filter=120 channel=27
					6, -8, -15, 6, 7, 2, -9, 11, 23,
					-- layer=1 filter=120 channel=28
					14, 20, 3, -6, 4, 21, 16, -6, -15,
					-- layer=1 filter=120 channel=29
					-9, 4, -2, -1, 9, 12, -7, 19, 7,
					-- layer=1 filter=120 channel=30
					29, 9, 15, -7, 6, -4, -5, -28, -14,
					-- layer=1 filter=120 channel=31
					-5, -6, 6, 10, 9, 6, 4, 0, -8,
					-- layer=1 filter=120 channel=32
					-89, -76, -96, -21, -5, -65, 8, -6, 15,
					-- layer=1 filter=120 channel=33
					-35, -41, -45, -24, -28, -11, 16, 7, 35,
					-- layer=1 filter=120 channel=34
					-9, -43, -60, 71, 35, 41, 59, 78, 100,
					-- layer=1 filter=120 channel=35
					9, -18, -19, -34, -4, -23, -16, -7, -10,
					-- layer=1 filter=120 channel=36
					48, -15, -38, 41, -21, -25, -21, -55, -12,
					-- layer=1 filter=120 channel=37
					-20, -11, -69, 51, 32, 18, 57, 59, 71,
					-- layer=1 filter=120 channel=38
					8, -16, -61, -24, 0, -19, -53, -75, -62,
					-- layer=1 filter=120 channel=39
					-54, -113, -123, -56, -77, -62, -11, -54, -1,
					-- layer=1 filter=120 channel=40
					-61, -86, -63, -107, -127, -30, -57, -36, -52,
					-- layer=1 filter=120 channel=41
					17, 10, 0, 16, -3, -6, 4, -7, -4,
					-- layer=1 filter=120 channel=42
					-80, -114, -172, -86, -112, -106, -23, -59, -42,
					-- layer=1 filter=120 channel=43
					-36, -41, -64, 32, 47, 43, 70, 45, 46,
					-- layer=1 filter=120 channel=44
					8, -40, -75, 31, 13, 0, 25, 37, 60,
					-- layer=1 filter=120 channel=45
					-58, -59, -61, 9, -5, 24, 43, 36, 44,
					-- layer=1 filter=120 channel=46
					41, 49, 46, 39, 51, 34, 0, -18, -61,
					-- layer=1 filter=120 channel=47
					-13, -37, -80, 44, 19, 12, 39, 29, 57,
					-- layer=1 filter=120 channel=48
					-5, 11, 0, 39, 30, 23, 13, 23, 2,
					-- layer=1 filter=120 channel=49
					-39, -59, -106, -51, -107, -91, -46, -60, 33,
					-- layer=1 filter=120 channel=50
					11, 16, 13, 11, 0, 0, 16, -5, -1,
					-- layer=1 filter=120 channel=51
					-5, -17, 3, 10, 8, 0, 10, 14, 21,
					-- layer=1 filter=120 channel=52
					-34, -47, -88, 32, 21, 12, 51, 63, 71,
					-- layer=1 filter=120 channel=53
					-69, -85, -55, -165, -163, -34, -77, -52, 18,
					-- layer=1 filter=120 channel=54
					7, 5, 4, 18, 25, 19, 20, -3, 2,
					-- layer=1 filter=120 channel=55
					-26, 6, -44, 6, 9, 7, -10, 14, -7,
					-- layer=1 filter=120 channel=56
					10, 9, 2, -7, 14, 18, 5, 23, 23,
					-- layer=1 filter=120 channel=57
					-7, 0, -13, -3, 12, 20, 7, 21, 30,
					-- layer=1 filter=120 channel=58
					-31, -24, -33, 28, -4, 6, 36, 25, 8,
					-- layer=1 filter=120 channel=59
					-80, -93, -51, -107, -78, 21, -57, -66, 17,
					-- layer=1 filter=120 channel=60
					-95, -90, -95, 39, 10, 3, 106, 99, 121,
					-- layer=1 filter=120 channel=61
					-83, -111, -66, -101, -129, -18, -39, -71, 11,
					-- layer=1 filter=120 channel=62
					-61, -73, -43, 1, 9, 31, 47, 36, 42,
					-- layer=1 filter=120 channel=63
					-64, -45, -31, -45, -70, -1, -15, -43, -61,
					-- layer=1 filter=121 channel=0
					-6, 10, -16, -9, -12, -21, -15, -1, 10,
					-- layer=1 filter=121 channel=1
					-10, -5, 4, 2, -3, 7, -16, 7, -1,
					-- layer=1 filter=121 channel=2
					-6, 3, 7, -1, -11, -18, -17, -6, -17,
					-- layer=1 filter=121 channel=3
					-10, -10, -14, -6, -14, 5, -6, 11, -9,
					-- layer=1 filter=121 channel=4
					2, -9, -6, -2, -9, 8, -4, -16, -18,
					-- layer=1 filter=121 channel=5
					-7, 12, 3, 12, -16, -10, 5, 3, 5,
					-- layer=1 filter=121 channel=6
					-21, 3, 13, -2, -9, -4, 4, -1, -18,
					-- layer=1 filter=121 channel=7
					-8, 0, 7, -13, 0, 8, 5, -14, -1,
					-- layer=1 filter=121 channel=8
					-2, -4, -13, -10, 11, 3, 2, 4, 8,
					-- layer=1 filter=121 channel=9
					2, -3, -13, -17, 8, -12, 6, -11, -13,
					-- layer=1 filter=121 channel=10
					0, -4, -1, 11, 5, -5, 10, 6, 0,
					-- layer=1 filter=121 channel=11
					13, -16, -15, -5, -15, -2, 13, 4, 2,
					-- layer=1 filter=121 channel=12
					9, -8, 2, 7, -5, -17, -10, 9, -11,
					-- layer=1 filter=121 channel=13
					10, 3, -16, 0, -1, -14, -11, 4, -17,
					-- layer=1 filter=121 channel=14
					-3, -4, 8, 0, -10, -13, -2, -18, -22,
					-- layer=1 filter=121 channel=15
					-3, 0, 7, -8, -10, 5, -10, -1, 9,
					-- layer=1 filter=121 channel=16
					-8, -3, -14, -15, -3, -23, -2, -9, 2,
					-- layer=1 filter=121 channel=17
					5, -17, 0, -12, -13, -18, -9, -13, -1,
					-- layer=1 filter=121 channel=18
					2, -17, -6, -13, 5, -4, -1, -10, -14,
					-- layer=1 filter=121 channel=19
					-7, 7, 2, 10, -8, -5, -10, -1, -4,
					-- layer=1 filter=121 channel=20
					10, -2, 2, -3, -21, 2, -15, -5, -11,
					-- layer=1 filter=121 channel=21
					-9, -6, -3, 2, 6, -13, 0, -3, 9,
					-- layer=1 filter=121 channel=22
					-7, -3, -4, 5, -9, -14, -2, -11, -11,
					-- layer=1 filter=121 channel=23
					-7, -14, -5, -20, 0, 10, -16, -19, -10,
					-- layer=1 filter=121 channel=24
					-4, 6, -12, 4, -11, 7, 7, 0, 6,
					-- layer=1 filter=121 channel=25
					19, 6, -7, -5, -20, -19, -24, -10, 13,
					-- layer=1 filter=121 channel=26
					-7, 0, 10, 10, -11, 11, -9, 1, -15,
					-- layer=1 filter=121 channel=27
					-13, 10, 0, 9, -2, -15, -11, -4, -3,
					-- layer=1 filter=121 channel=28
					11, -2, -12, -4, 1, -13, 3, -10, -11,
					-- layer=1 filter=121 channel=29
					11, -13, -17, -15, -15, -15, -16, 10, 0,
					-- layer=1 filter=121 channel=30
					10, -13, -6, 8, 7, 10, 6, 10, 10,
					-- layer=1 filter=121 channel=31
					-12, -2, 9, -11, 0, -14, 7, -13, 1,
					-- layer=1 filter=121 channel=32
					6, 13, -4, -12, -5, 2, 5, -1, -10,
					-- layer=1 filter=121 channel=33
					-5, 2, -15, 1, -12, -17, 3, -7, -14,
					-- layer=1 filter=121 channel=34
					-1, -4, -7, 3, 5, -13, -17, 16, 8,
					-- layer=1 filter=121 channel=35
					3, -6, 9, 2, -12, -18, 5, 10, -5,
					-- layer=1 filter=121 channel=36
					10, 4, -11, -7, -23, -7, -17, -19, -17,
					-- layer=1 filter=121 channel=37
					18, 11, -4, 7, 8, -2, -8, -18, 10,
					-- layer=1 filter=121 channel=38
					-9, 9, -2, -16, 0, -17, 3, 0, -6,
					-- layer=1 filter=121 channel=39
					-14, 10, 2, -2, -11, -8, -3, -9, -14,
					-- layer=1 filter=121 channel=40
					-3, 7, -14, -4, 4, -16, -3, -3, -9,
					-- layer=1 filter=121 channel=41
					9, 10, 0, 2, -10, -18, -13, -3, -4,
					-- layer=1 filter=121 channel=42
					-15, -9, -4, -15, 2, 1, 0, -9, -12,
					-- layer=1 filter=121 channel=43
					-9, 13, 0, -7, 4, -14, -15, 4, -6,
					-- layer=1 filter=121 channel=44
					2, 0, -17, 11, -8, -4, 12, -15, 9,
					-- layer=1 filter=121 channel=45
					9, 14, 0, -7, -15, -10, 3, -7, -2,
					-- layer=1 filter=121 channel=46
					3, 5, -10, -9, -21, -13, -13, 8, -4,
					-- layer=1 filter=121 channel=47
					-7, -9, 4, 5, 3, -15, -9, 0, -2,
					-- layer=1 filter=121 channel=48
					16, 10, -11, -5, -2, -15, -16, -5, -1,
					-- layer=1 filter=121 channel=49
					-11, -12, -7, -14, -3, -12, -13, 6, -17,
					-- layer=1 filter=121 channel=50
					-19, -7, 7, -7, -23, 5, -16, -21, -3,
					-- layer=1 filter=121 channel=51
					10, 4, -5, 0, 1, -4, -14, -17, 9,
					-- layer=1 filter=121 channel=52
					25, -5, 11, -7, -6, 17, 14, 12, 3,
					-- layer=1 filter=121 channel=53
					-17, -14, -4, 0, 10, -19, 10, 4, -4,
					-- layer=1 filter=121 channel=54
					-5, -17, 2, -15, -5, 0, 1, -19, -22,
					-- layer=1 filter=121 channel=55
					-9, -1, -2, -2, 5, 1, -16, 9, 1,
					-- layer=1 filter=121 channel=56
					-11, -4, 7, 9, -13, -5, -12, -15, -9,
					-- layer=1 filter=121 channel=57
					-12, -10, -4, -5, 4, 4, -1, 4, 8,
					-- layer=1 filter=121 channel=58
					11, 7, -14, -7, -2, -13, -11, 0, 0,
					-- layer=1 filter=121 channel=59
					-6, -16, -14, -4, -12, 6, -20, -3, -4,
					-- layer=1 filter=121 channel=60
					-1, 9, -15, 7, -5, 5, 11, -14, 9,
					-- layer=1 filter=121 channel=61
					-2, -10, 14, 1, 2, -16, -16, -15, 0,
					-- layer=1 filter=121 channel=62
					-14, 4, -8, -18, -3, -2, -10, -14, 6,
					-- layer=1 filter=121 channel=63
					-10, 0, 6, 0, -1, -15, 7, 0, -3,
					-- layer=1 filter=122 channel=0
					-31, -2, -17, 70, 8, 15, -45, -54, 9,
					-- layer=1 filter=122 channel=1
					22, 28, -12, 53, -41, -14, -37, -30, -11,
					-- layer=1 filter=122 channel=2
					20, 35, -40, 89, -20, 9, -44, -30, 37,
					-- layer=1 filter=122 channel=3
					13, 24, -12, -12, -47, -16, -43, -5, -2,
					-- layer=1 filter=122 channel=4
					33, -24, -6, -24, 11, 17, 21, 15, 0,
					-- layer=1 filter=122 channel=5
					-51, -31, 37, -1, 21, 2, 9, 27, -4,
					-- layer=1 filter=122 channel=6
					-44, -79, -12, -23, -54, -80, -16, -16, -40,
					-- layer=1 filter=122 channel=7
					14, 10, -7, 2, -8, 27, -16, -28, 11,
					-- layer=1 filter=122 channel=8
					23, 0, 0, 3, -33, -4, -23, -26, -11,
					-- layer=1 filter=122 channel=9
					10, 44, -75, 12, -83, -18, -56, -30, 70,
					-- layer=1 filter=122 channel=10
					21, -22, -45, -34, -45, 6, -48, -55, -33,
					-- layer=1 filter=122 channel=11
					-21, 17, 62, 37, 58, 51, 50, 20, -24,
					-- layer=1 filter=122 channel=12
					-9, -7, 31, 7, 35, 18, 23, -16, -4,
					-- layer=1 filter=122 channel=13
					14, 16, -4, -7, -5, 20, -20, -21, 3,
					-- layer=1 filter=122 channel=14
					17, 58, -18, 59, -24, -32, -32, -48, -3,
					-- layer=1 filter=122 channel=15
					-3, 19, 39, -13, 28, 48, 14, -23, -101,
					-- layer=1 filter=122 channel=16
					10, 4, 39, -4, 7, 37, 25, 39, -15,
					-- layer=1 filter=122 channel=17
					31, 31, -26, -18, -65, 18, -60, 11, 44,
					-- layer=1 filter=122 channel=18
					-51, -41, 25, -21, -42, -78, -16, -19, -42,
					-- layer=1 filter=122 channel=19
					29, -15, -13, -21, -28, -2, 2, 18, -3,
					-- layer=1 filter=122 channel=20
					1, -18, 2, -43, 41, 37, 23, 9, -31,
					-- layer=1 filter=122 channel=21
					-31, -4, -29, 0, -54, -65, -53, -116, -28,
					-- layer=1 filter=122 channel=22
					43, 93, 2, 89, -10, 42, -19, 3, 90,
					-- layer=1 filter=122 channel=23
					-2, 5, 16, -12, -37, -15, -17, -66, -72,
					-- layer=1 filter=122 channel=24
					39, 2, -25, -10, 5, 32, -25, 25, 9,
					-- layer=1 filter=122 channel=25
					-57, -24, 51, 4, 12, -1, 27, 27, -33,
					-- layer=1 filter=122 channel=26
					56, 7, 16, -19, -34, -25, 6, -33, -31,
					-- layer=1 filter=122 channel=27
					3, 0, 14, -3, -2, 2, -6, -16, 11,
					-- layer=1 filter=122 channel=28
					-6, -10, 25, -9, 8, -17, -16, -26, -16,
					-- layer=1 filter=122 channel=29
					35, -2, -5, -29, -7, 13, -8, 19, 0,
					-- layer=1 filter=122 channel=30
					-13, 37, 24, 52, 11, -18, -10, -5, -5,
					-- layer=1 filter=122 channel=31
					2, -9, 0, 1, 9, -10, -10, 3, 0,
					-- layer=1 filter=122 channel=32
					28, -54, -19, 26, -46, 9, -21, -30, -93,
					-- layer=1 filter=122 channel=33
					47, -6, -19, 20, -26, 17, -17, -5, -22,
					-- layer=1 filter=122 channel=34
					-31, 82, 125, 77, 81, 25, 49, 9, -52,
					-- layer=1 filter=122 channel=35
					34, 10, -44, 5, -55, 2, -75, -59, -27,
					-- layer=1 filter=122 channel=36
					26, 0, 21, -10, 40, 26, 38, -2, -26,
					-- layer=1 filter=122 channel=37
					0, -36, 73, 20, 49, 46, 66, 30, -15,
					-- layer=1 filter=122 channel=38
					26, -23, -44, -6, -32, 0, -39, -3, -14,
					-- layer=1 filter=122 channel=39
					-27, -32, -3, -64, -52, -19, -44, -107, -100,
					-- layer=1 filter=122 channel=40
					29, 106, 1, 88, -15, 13, -17, 35, 95,
					-- layer=1 filter=122 channel=41
					8, 7, 7, 3, -6, -6, -22, -12, 0,
					-- layer=1 filter=122 channel=42
					-15, 2, -27, 17, -71, -78, -101, -141, -101,
					-- layer=1 filter=122 channel=43
					-82, -90, -8, -8, -6, -63, -18, -48, -60,
					-- layer=1 filter=122 channel=44
					-14, 27, 60, 8, 71, 58, 80, 39, -45,
					-- layer=1 filter=122 channel=45
					-55, -105, -8, -29, 8, -40, -3, -15, -56,
					-- layer=1 filter=122 channel=46
					0, -22, -9, -39, -40, 4, -30, -4, 14,
					-- layer=1 filter=122 channel=47
					-19, 11, 112, 40, 43, 55, 69, 35, -24,
					-- layer=1 filter=122 channel=48
					-3, -14, 1, 3, 18, 35, 22, 4, 0,
					-- layer=1 filter=122 channel=49
					-36, -23, 34, -37, -5, 26, 40, -30, -59,
					-- layer=1 filter=122 channel=50
					9, -10, -9, 8, -4, -6, 10, 26, -1,
					-- layer=1 filter=122 channel=51
					0, -11, -20, -16, -5, 21, -8, -1, 9,
					-- layer=1 filter=122 channel=52
					6, 85, 85, 107, 100, 33, 54, -4, -34,
					-- layer=1 filter=122 channel=53
					21, 107, 13, 98, 0, 9, 6, -7, 73,
					-- layer=1 filter=122 channel=54
					19, 14, -20, -9, 2, 12, 0, 19, 0,
					-- layer=1 filter=122 channel=55
					27, 16, -10, 25, -21, -16, -39, -34, -26,
					-- layer=1 filter=122 channel=56
					-7, 17, 21, 34, -3, 23, -16, -21, -2,
					-- layer=1 filter=122 channel=57
					44, 1, -12, 0, -5, 13, 19, -1, 9,
					-- layer=1 filter=122 channel=58
					-9, -41, 58, -24, 20, 27, 23, 27, 2,
					-- layer=1 filter=122 channel=59
					3, 29, 0, 6, -69, -104, -61, -93, 4,
					-- layer=1 filter=122 channel=60
					0, 81, 36, 89, 29, -53, -18, -117, -87,
					-- layer=1 filter=122 channel=61
					2, 56, -20, 13, -51, -12, -81, -46, 33,
					-- layer=1 filter=122 channel=62
					-69, -91, -58, -30, -61, -107, -55, -97, -90,
					-- layer=1 filter=122 channel=63
					-3, 50, -24, 33, -47, -34, -67, -29, 59,
					-- layer=1 filter=123 channel=0
					-1, 9, -10, 5, 15, 32, 31, 18, 1,
					-- layer=1 filter=123 channel=1
					28, 5, 20, -16, 15, -10, 14, -2, -8,
					-- layer=1 filter=123 channel=2
					-7, 13, -8, 18, -6, 18, 13, 9, 11,
					-- layer=1 filter=123 channel=3
					7, 23, 29, -32, -8, -19, -34, -18, -24,
					-- layer=1 filter=123 channel=4
					-17, -17, 0, 22, 0, 10, 32, 16, 27,
					-- layer=1 filter=123 channel=5
					78, 57, 48, 6, 0, -34, -61, -86, -59,
					-- layer=1 filter=123 channel=6
					-9, -4, -13, 0, 0, -29, -16, -4, -12,
					-- layer=1 filter=123 channel=7
					-41, -27, -35, -6, 10, 1, 40, 41, 27,
					-- layer=1 filter=123 channel=8
					-17, -27, -2, 7, 20, 15, 15, 44, 11,
					-- layer=1 filter=123 channel=9
					43, 61, 42, 12, 22, 9, -50, -31, -76,
					-- layer=1 filter=123 channel=10
					14, 14, 8, -18, -2, -18, 5, -14, -5,
					-- layer=1 filter=123 channel=11
					-33, -49, -29, -7, -13, -23, 22, 30, 49,
					-- layer=1 filter=123 channel=12
					28, 40, 47, 3, -4, 8, -24, -7, -51,
					-- layer=1 filter=123 channel=13
					31, 38, 28, -21, -28, -41, -45, -37, -41,
					-- layer=1 filter=123 channel=14
					42, 29, 40, 47, 53, 56, 48, 50, 25,
					-- layer=1 filter=123 channel=15
					0, 21, 7, 12, -2, -14, -5, 28, 25,
					-- layer=1 filter=123 channel=16
					-66, -64, -67, -10, 17, 10, 50, 33, 27,
					-- layer=1 filter=123 channel=17
					18, 20, 45, 6, 22, -9, -28, -7, -33,
					-- layer=1 filter=123 channel=18
					18, 29, 8, 26, 8, -31, -34, -23, -54,
					-- layer=1 filter=123 channel=19
					13, 19, 17, 6, 0, -19, -7, -35, -55,
					-- layer=1 filter=123 channel=20
					16, -1, 15, 7, -25, 2, -11, -3, 4,
					-- layer=1 filter=123 channel=21
					-23, -5, -19, -16, 10, -10, 5, 21, -2,
					-- layer=1 filter=123 channel=22
					19, 32, 37, 20, 32, 17, 5, -9, -11,
					-- layer=1 filter=123 channel=23
					26, 53, 31, 32, 24, -36, -11, -24, -45,
					-- layer=1 filter=123 channel=24
					14, 30, 1, 0, -11, -16, -19, -31, -45,
					-- layer=1 filter=123 channel=25
					-19, -12, -8, -6, 12, 29, -7, 2, 14,
					-- layer=1 filter=123 channel=26
					-50, -41, -48, -1, 3, 0, 13, 16, 2,
					-- layer=1 filter=123 channel=27
					-22, -29, -1, -16, -11, 0, 6, 33, 13,
					-- layer=1 filter=123 channel=28
					-54, -27, -38, -41, -22, -12, 6, 0, 6,
					-- layer=1 filter=123 channel=29
					-12, -22, -17, -5, 3, 4, 2, 15, 26,
					-- layer=1 filter=123 channel=30
					58, 52, 45, 24, 7, -14, -45, -63, -63,
					-- layer=1 filter=123 channel=31
					-3, 13, -5, -15, 15, -9, 1, 12, -10,
					-- layer=1 filter=123 channel=32
					-9, -17, 48, -51, 16, 45, 0, -25, -2,
					-- layer=1 filter=123 channel=33
					-5, -14, 9, -8, -10, 5, -21, -29, -8,
					-- layer=1 filter=123 channel=34
					7, 20, 40, 21, -4, -4, -16, -2, -7,
					-- layer=1 filter=123 channel=35
					-31, -1, -11, -26, -9, 5, 22, 31, 24,
					-- layer=1 filter=123 channel=36
					36, 30, 39, -11, 12, 0, -40, -40, -29,
					-- layer=1 filter=123 channel=37
					-25, -44, -2, -28, 0, 1, -1, 0, -10,
					-- layer=1 filter=123 channel=38
					30, 29, 2, 3, -36, -30, -34, -17, -53,
					-- layer=1 filter=123 channel=39
					35, 51, 25, 14, 11, -16, -5, -4, -23,
					-- layer=1 filter=123 channel=40
					22, 33, 46, 9, 36, 30, 12, 21, 3,
					-- layer=1 filter=123 channel=41
					63, 62, 43, 15, 6, -1, -44, -33, -48,
					-- layer=1 filter=123 channel=42
					-17, 15, -12, 26, 9, -21, 22, 15, 5,
					-- layer=1 filter=123 channel=43
					-63, -14, -36, 7, -23, -29, -12, 3, 6,
					-- layer=1 filter=123 channel=44
					25, 34, 40, 9, 37, -12, -6, 17, 9,
					-- layer=1 filter=123 channel=45
					-20, 15, -24, -28, -32, -46, -14, -26, -35,
					-- layer=1 filter=123 channel=46
					77, 58, 45, -35, -47, -46, -106, -124, -117,
					-- layer=1 filter=123 channel=47
					-16, -5, -3, -23, -3, -9, -21, -1, -4,
					-- layer=1 filter=123 channel=48
					64, 56, 62, 14, 11, -17, -69, -60, -68,
					-- layer=1 filter=123 channel=49
					-6, -9, 1, -14, -1, -39, -19, 13, -10,
					-- layer=1 filter=123 channel=50
					54, 61, 38, 5, -4, -11, -53, -72, -75,
					-- layer=1 filter=123 channel=51
					27, 18, 14, -4, -10, -4, -5, -26, -2,
					-- layer=1 filter=123 channel=52
					-7, -7, 19, -17, -21, -52, -33, -27, -16,
					-- layer=1 filter=123 channel=53
					-55, 4, -2, -41, -5, -19, -9, 21, 6,
					-- layer=1 filter=123 channel=54
					75, 80, 45, 13, 16, -3, -36, -66, -44,
					-- layer=1 filter=123 channel=55
					60, 47, 6, -6, -42, -32, -43, -59, -88,
					-- layer=1 filter=123 channel=56
					-29, -21, -11, -17, 5, 4, 27, 27, 12,
					-- layer=1 filter=123 channel=57
					7, -13, -7, 2, -7, -11, 4, 0, -19,
					-- layer=1 filter=123 channel=58
					39, 28, 46, 0, -10, -25, -63, -59, -45,
					-- layer=1 filter=123 channel=59
					-29, 12, -17, -33, -30, -3, -27, 15, -43,
					-- layer=1 filter=123 channel=60
					125, 127, 110, 116, 99, 94, 8, 14, 16,
					-- layer=1 filter=123 channel=61
					-9, 17, 2, -17, 12, -29, 4, 8, -14,
					-- layer=1 filter=123 channel=62
					-19, 0, -40, -31, -24, -44, -7, 13, -25,
					-- layer=1 filter=123 channel=63
					50, 72, 52, 3, 5, 7, -52, -44, -88,
					-- layer=1 filter=124 channel=0
					-11, -9, 4, -9, 21, 13, 2, 8, 6,
					-- layer=1 filter=124 channel=1
					-23, 13, 15, 3, 5, 17, -4, 0, 25,
					-- layer=1 filter=124 channel=2
					11, -16, -10, -22, -1, 5, -29, -22, 1,
					-- layer=1 filter=124 channel=3
					0, -22, -4, -2, -10, -24, -5, 14, -10,
					-- layer=1 filter=124 channel=4
					19, 16, 20, 17, 23, 16, 37, 42, 37,
					-- layer=1 filter=124 channel=5
					1, 8, -30, -12, -21, 23, -11, 0, -6,
					-- layer=1 filter=124 channel=6
					-48, -2, -32, -8, -35, 19, 14, 35, -19,
					-- layer=1 filter=124 channel=7
					-10, -30, -13, 27, 3, -1, 0, 13, 15,
					-- layer=1 filter=124 channel=8
					-4, 2, 1, 16, -7, 0, 33, 39, 8,
					-- layer=1 filter=124 channel=9
					-7, 2, -24, 21, -62, -20, -52, -10, -24,
					-- layer=1 filter=124 channel=10
					16, -3, 35, -24, 4, 2, -2, -8, 30,
					-- layer=1 filter=124 channel=11
					-17, -28, -38, -39, 9, -8, 24, 1, -27,
					-- layer=1 filter=124 channel=12
					0, -19, -13, -9, -2, 16, -24, 0, -10,
					-- layer=1 filter=124 channel=13
					-16, -18, 0, -15, -41, -45, -45, -21, -30,
					-- layer=1 filter=124 channel=14
					9, -34, -3, -41, -6, -8, -19, -63, -2,
					-- layer=1 filter=124 channel=15
					18, -18, 42, -89, 42, 7, -41, -48, -16,
					-- layer=1 filter=124 channel=16
					6, -15, -13, 3, 5, 11, 39, 36, -13,
					-- layer=1 filter=124 channel=17
					19, 4, 2, 22, -14, -14, -23, -3, 8,
					-- layer=1 filter=124 channel=18
					-36, 12, -22, -26, -8, 18, 11, 11, 4,
					-- layer=1 filter=124 channel=19
					-6, -6, 7, 9, 9, 0, 16, 36, 18,
					-- layer=1 filter=124 channel=20
					10, 3, 52, -38, 26, 22, -8, -11, 51,
					-- layer=1 filter=124 channel=21
					-11, 26, -15, 27, -59, 22, -26, 11, -45,
					-- layer=1 filter=124 channel=22
					1, -19, -16, 41, -72, 0, -61, -33, -5,
					-- layer=1 filter=124 channel=23
					5, 16, 18, -54, 32, -55, -22, 2, -38,
					-- layer=1 filter=124 channel=24
					-7, 9, 29, 1, 12, 23, 10, 8, 43,
					-- layer=1 filter=124 channel=25
					1, -26, -36, -39, -13, 38, 4, 6, -20,
					-- layer=1 filter=124 channel=26
					5, -1, -7, 2, 20, 35, 42, 37, 34,
					-- layer=1 filter=124 channel=27
					-8, 9, -7, 13, -3, 0, 17, 27, 3,
					-- layer=1 filter=124 channel=28
					-23, -33, -26, 16, -33, -29, -13, 1, -38,
					-- layer=1 filter=124 channel=29
					-17, -13, -8, -2, -9, -4, 2, 22, 23,
					-- layer=1 filter=124 channel=30
					30, 29, -8, 8, -9, -23, -28, -11, -24,
					-- layer=1 filter=124 channel=31
					5, 2, -2, -4, -3, -9, -1, -9, -4,
					-- layer=1 filter=124 channel=32
					55, 6, 63, -39, -14, 97, -20, -12, -10,
					-- layer=1 filter=124 channel=33
					4, 16, 20, 0, -3, 27, 0, 17, 25,
					-- layer=1 filter=124 channel=34
					15, 1, -5, -27, 35, 67, 69, 3, -37,
					-- layer=1 filter=124 channel=35
					11, -17, -4, 0, 8, -15, -27, -18, -3,
					-- layer=1 filter=124 channel=36
					7, -3, 48, -84, 18, 17, -54, -16, 39,
					-- layer=1 filter=124 channel=37
					2, -12, -25, -32, -18, 25, 13, 57, -23,
					-- layer=1 filter=124 channel=38
					-18, 8, 37, -53, 1, -18, -72, -54, 5,
					-- layer=1 filter=124 channel=39
					-12, -8, 14, -95, 22, -8, -68, -27, -4,
					-- layer=1 filter=124 channel=40
					12, -20, -9, 16, -17, -19, -31, -40, -38,
					-- layer=1 filter=124 channel=41
					0, 2, 10, -5, -9, 14, 2, 1, -10,
					-- layer=1 filter=124 channel=42
					-51, -16, -43, -95, -3, -38, -58, -77, -64,
					-- layer=1 filter=124 channel=43
					-21, -19, -29, -48, -48, 32, 2, 11, -39,
					-- layer=1 filter=124 channel=44
					44, -13, 34, -48, 17, 20, 19, 28, -7,
					-- layer=1 filter=124 channel=45
					-9, -11, -21, -13, -25, 38, -10, 35, -39,
					-- layer=1 filter=124 channel=46
					47, -18, 39, 12, 18, 20, 3, 18, 22,
					-- layer=1 filter=124 channel=47
					17, -23, -10, -48, 0, 32, 47, 25, -17,
					-- layer=1 filter=124 channel=48
					-7, -36, -19, -39, -27, 3, -11, -11, 10,
					-- layer=1 filter=124 channel=49
					11, -11, 46, -65, 37, 6, -71, -10, -9,
					-- layer=1 filter=124 channel=50
					-19, -3, -28, -65, -49, -41, -32, -63, -19,
					-- layer=1 filter=124 channel=51
					0, 7, -2, -1, -6, -3, 5, 4, 10,
					-- layer=1 filter=124 channel=52
					-31, -33, 5, -19, 42, 63, 9, -42, -30,
					-- layer=1 filter=124 channel=53
					28, 61, -3, 61, -83, -5, -71, -83, -62,
					-- layer=1 filter=124 channel=54
					9, -7, -18, -29, -38, -11, -38, -44, -2,
					-- layer=1 filter=124 channel=55
					-5, 18, 59, -47, 18, -7, -41, -17, -36,
					-- layer=1 filter=124 channel=56
					-8, 22, 6, 12, 29, 2, 21, 14, 20,
					-- layer=1 filter=124 channel=57
					5, 9, 5, 11, -4, 17, 12, 30, 31,
					-- layer=1 filter=124 channel=58
					6, -22, -12, -16, -14, 29, 22, 7, -10,
					-- layer=1 filter=124 channel=59
					-11, 63, -6, 49, -30, 13, -66, -56, -47,
					-- layer=1 filter=124 channel=60
					-20, 12, 51, 6, 42, 37, 27, -26, -12,
					-- layer=1 filter=124 channel=61
					2, 38, 18, 58, -75, -22, -128, -21, -101,
					-- layer=1 filter=124 channel=62
					-51, -1, -45, -12, -72, 19, -32, 6, -57,
					-- layer=1 filter=124 channel=63
					-3, 13, -66, -29, -69, -41, -48, -29, -15,
					-- layer=1 filter=125 channel=0
					-17, -46, -73, -13, -20, -50, -87, -51, -34,
					-- layer=1 filter=125 channel=1
					-44, -58, -41, -75, -54, -63, 19, -41, 29,
					-- layer=1 filter=125 channel=2
					-13, -49, -26, -8, -23, -42, -114, -37, -54,
					-- layer=1 filter=125 channel=3
					-54, -57, -34, -54, -73, -68, -25, -31, -21,
					-- layer=1 filter=125 channel=4
					-100, -54, -64, -139, -87, -32, -68, 20, 52,
					-- layer=1 filter=125 channel=5
					-33, -2, 1, -11, -10, 18, 5, 20, 25,
					-- layer=1 filter=125 channel=6
					-31, -101, -160, -9, -66, -46, 31, -36, 40,
					-- layer=1 filter=125 channel=7
					-53, -64, -69, -50, -54, -78, -12, -72, 4,
					-- layer=1 filter=125 channel=8
					-58, -96, -97, -26, -142, -84, -12, -87, 2,
					-- layer=1 filter=125 channel=9
					4, -52, -1, -7, -74, -4, 33, -60, -26,
					-- layer=1 filter=125 channel=10
					-64, -1, -37, -8, -5, -77, 72, 31, -6,
					-- layer=1 filter=125 channel=11
					6, -30, -44, 29, 27, 68, 20, 34, 41,
					-- layer=1 filter=125 channel=12
					-89, -64, -53, -21, -36, 3, -27, 19, 61,
					-- layer=1 filter=125 channel=13
					-15, 0, 7, 23, 3, 19, 21, -21, 1,
					-- layer=1 filter=125 channel=14
					-9, -8, 6, -7, -28, -27, -101, -61, -62,
					-- layer=1 filter=125 channel=15
					-55, -3, -36, 30, 22, 39, 57, 103, 75,
					-- layer=1 filter=125 channel=16
					-58, -29, -75, -37, -101, -23, -9, 6, 52,
					-- layer=1 filter=125 channel=17
					-15, -75, 35, -7, -92, 15, 35, -12, 20,
					-- layer=1 filter=125 channel=18
					-42, -60, -42, 12, 0, 22, 2, -5, 36,
					-- layer=1 filter=125 channel=19
					-64, -28, -19, -41, -78, -16, -46, -27, -1,
					-- layer=1 filter=125 channel=20
					-72, -23, -47, -43, -8, -21, 0, 44, 36,
					-- layer=1 filter=125 channel=21
					-24, -95, -63, 20, -48, 9, 72, -28, 13,
					-- layer=1 filter=125 channel=22
					5, -38, -5, 17, -45, -9, 47, 16, -105,
					-- layer=1 filter=125 channel=23
					0, 36, 20, 48, 44, 14, 59, 76, 20,
					-- layer=1 filter=125 channel=24
					-81, -64, -33, -78, -57, -3, -5, 12, 2,
					-- layer=1 filter=125 channel=25
					-122, -170, -133, -34, -20, 49, 0, 34, 88,
					-- layer=1 filter=125 channel=26
					-101, -98, -97, -28, -79, -34, -36, -22, 42,
					-- layer=1 filter=125 channel=27
					-8, -66, -63, -65, -83, -77, -5, -43, -5,
					-- layer=1 filter=125 channel=28
					-26, -61, -56, -5, 3, -2, 16, -18, 0,
					-- layer=1 filter=125 channel=29
					-89, -56, -84, -68, -69, -45, -36, 11, 31,
					-- layer=1 filter=125 channel=30
					-12, -15, -6, -6, 17, 2, -19, 13, -26,
					-- layer=1 filter=125 channel=31
					-9, -5, -5, -5, 7, 8, 10, -14, -14,
					-- layer=1 filter=125 channel=32
					-125, -74, -142, 55, 19, -6, -16, 41, 34,
					-- layer=1 filter=125 channel=33
					-74, -68, -17, -87, -41, -77, 21, 21, 27,
					-- layer=1 filter=125 channel=34
					-140, -148, -111, 12, 21, 135, -19, 56, 65,
					-- layer=1 filter=125 channel=35
					-29, -49, -34, -34, -41, -57, -108, -62, -43,
					-- layer=1 filter=125 channel=36
					-15, 16, 8, 3, 3, -7, 5, 47, 55,
					-- layer=1 filter=125 channel=37
					-94, -119, -134, -37, -49, 40, 10, 45, 85,
					-- layer=1 filter=125 channel=38
					-26, 6, -1, 9, -3, -33, -40, -40, -13,
					-- layer=1 filter=125 channel=39
					-15, 39, 0, 41, 22, 3, 43, 53, 26,
					-- layer=1 filter=125 channel=40
					-4, -70, -18, 0, -70, 47, -1, -31, -92,
					-- layer=1 filter=125 channel=41
					-41, 0, 7, -30, -5, 22, -9, 18, 17,
					-- layer=1 filter=125 channel=42
					5, 16, 24, 59, 48, -7, -6, 32, 6,
					-- layer=1 filter=125 channel=43
					-65, -115, -171, 25, -21, 35, 6, -2, 47,
					-- layer=1 filter=125 channel=44
					-72, -33, -20, -50, 14, 52, 10, 67, 74,
					-- layer=1 filter=125 channel=45
					-57, -116, -145, -15, -72, -40, 11, 0, 34,
					-- layer=1 filter=125 channel=46
					-57, -25, -6, -42, -25, 0, -62, -70, -34,
					-- layer=1 filter=125 channel=47
					-99, -120, -99, -11, -4, 69, -3, 45, 86,
					-- layer=1 filter=125 channel=48
					-11, 3, 21, 7, 18, 30, -5, 3, 32,
					-- layer=1 filter=125 channel=49
					-25, 22, 8, -11, -6, 0, 58, 92, 71,
					-- layer=1 filter=125 channel=50
					-9, 23, 22, 1, -2, 15, -15, 12, 7,
					-- layer=1 filter=125 channel=51
					-34, -16, -8, -35, -31, -3, -14, 10, 31,
					-- layer=1 filter=125 channel=52
					-61, -103, -110, 56, 26, 132, -5, 12, 29,
					-- layer=1 filter=125 channel=53
					17, -97, -43, 20, -121, 7, 67, 48, -53,
					-- layer=1 filter=125 channel=54
					-10, 8, 18, -14, 0, 14, -13, 28, 2,
					-- layer=1 filter=125 channel=55
					-29, -36, -27, -7, -7, 18, 0, -18, -10,
					-- layer=1 filter=125 channel=56
					-63, -63, -61, -70, -83, -42, -53, -16, -14,
					-- layer=1 filter=125 channel=57
					-100, -33, -30, -98, -96, -56, -42, -20, 13,
					-- layer=1 filter=125 channel=58
					-9, -5, -15, 9, 15, 49, -13, 28, 34,
					-- layer=1 filter=125 channel=59
					-23, -131, -67, 0, -140, -58, 37, -83, 7,
					-- layer=1 filter=125 channel=60
					-99, -117, -119, -8, 16, 129, 60, 44, 63,
					-- layer=1 filter=125 channel=61
					-12, -105, -63, 7, -111, -38, 70, 5, -36,
					-- layer=1 filter=125 channel=62
					-42, -96, -125, 25, -53, -23, 41, -46, 14,
					-- layer=1 filter=125 channel=63
					-17, -39, -6, 1, -26, 1, -1, -35, -80,
					-- layer=1 filter=126 channel=0
					-18, 8, 8, -13, -33, -19, -28, -53, -36,
					-- layer=1 filter=126 channel=1
					0, -25, -18, -21, -9, -17, -24, -14, -27,
					-- layer=1 filter=126 channel=2
					22, 21, 23, 4, -13, 12, 6, -2, 19,
					-- layer=1 filter=126 channel=3
					-16, -24, -16, -17, -21, -9, -20, -9, 5,
					-- layer=1 filter=126 channel=4
					-10, -11, 12, -29, -7, -32, -24, -23, -3,
					-- layer=1 filter=126 channel=5
					12, 5, 23, -8, -16, 2, -14, -35, -7,
					-- layer=1 filter=126 channel=6
					7, 30, 26, 6, 19, 0, 6, -6, 2,
					-- layer=1 filter=126 channel=7
					-12, 0, 10, -11, -13, -31, -46, -22, -31,
					-- layer=1 filter=126 channel=8
					-4, -4, -16, -8, 3, 2, 8, -9, -32,
					-- layer=1 filter=126 channel=9
					-2, -7, -6, -13, 2, -5, -11, 7, 0,
					-- layer=1 filter=126 channel=10
					18, 14, 20, 4, 1, 13, -7, -1, -3,
					-- layer=1 filter=126 channel=11
					-29, -29, -13, -8, -25, 10, -18, -34, -14,
					-- layer=1 filter=126 channel=12
					0, -15, 0, -11, -26, 7, -2, -10, 15,
					-- layer=1 filter=126 channel=13
					-6, 0, -14, 11, 17, 6, 5, 26, 7,
					-- layer=1 filter=126 channel=14
					12, 9, 37, 12, -9, 34, -9, 0, 10,
					-- layer=1 filter=126 channel=15
					9, 6, -33, 42, 3, 22, -3, 16, 2,
					-- layer=1 filter=126 channel=16
					-27, -24, -34, -19, -27, -42, -33, -63, -46,
					-- layer=1 filter=126 channel=17
					-4, -19, -6, -15, -10, -12, -3, 4, -29,
					-- layer=1 filter=126 channel=18
					-21, 17, -11, -16, -8, -31, -2, -47, -19,
					-- layer=1 filter=126 channel=19
					-30, -21, -27, -17, -15, -44, -2, -27, -45,
					-- layer=1 filter=126 channel=20
					17, -27, 0, 14, 0, 13, 0, -6, 18,
					-- layer=1 filter=126 channel=21
					20, 7, -4, 9, 26, 32, 11, 19, 0,
					-- layer=1 filter=126 channel=22
					-20, -20, 28, -5, -8, 38, 4, 0, 45,
					-- layer=1 filter=126 channel=23
					2, 26, 0, -2, -6, 3, 1, -2, 0,
					-- layer=1 filter=126 channel=24
					-3, -29, -6, -47, -31, -32, -19, -52, -43,
					-- layer=1 filter=126 channel=25
					26, -5, 8, -14, -9, -30, -19, -76, -11,
					-- layer=1 filter=126 channel=26
					-28, -21, -25, -39, -51, -37, -25, -62, -23,
					-- layer=1 filter=126 channel=27
					-1, -10, -8, -16, 3, -16, -19, 1, -1,
					-- layer=1 filter=126 channel=28
					16, 15, 7, 8, 15, 17, 0, 31, 16,
					-- layer=1 filter=126 channel=29
					-20, -9, -19, 1, 0, -25, -15, -38, -15,
					-- layer=1 filter=126 channel=30
					-25, 3, 2, -13, -2, -2, -3, 0, 16,
					-- layer=1 filter=126 channel=31
					1, -11, 12, -1, 12, -3, 13, -1, -3,
					-- layer=1 filter=126 channel=32
					-37, 29, 19, 43, 32, 17, 21, -4, 76,
					-- layer=1 filter=126 channel=33
					-8, -42, -6, -40, -11, -12, -16, -39, -10,
					-- layer=1 filter=126 channel=34
					-41, -1, -32, -17, -30, -11, 0, -21, -5,
					-- layer=1 filter=126 channel=35
					-14, 19, 21, -14, 6, 16, -8, 2, -13,
					-- layer=1 filter=126 channel=36
					14, -17, -2, 43, -1, 1, 25, 24, 24,
					-- layer=1 filter=126 channel=37
					34, 0, 28, 14, -19, -10, -13, -58, -7,
					-- layer=1 filter=126 channel=38
					14, 9, 3, 4, -13, 22, 2, 12, 7,
					-- layer=1 filter=126 channel=39
					9, 11, 7, 22, 12, 4, -2, 6, 13,
					-- layer=1 filter=126 channel=40
					-19, -32, 8, 17, -2, 11, 3, -12, 16,
					-- layer=1 filter=126 channel=41
					-7, -5, 10, 7, -13, -5, -6, -1, 12,
					-- layer=1 filter=126 channel=42
					30, 30, 29, 28, 26, 23, 2, 16, -8,
					-- layer=1 filter=126 channel=43
					37, 18, -3, 20, -3, 16, 28, -13, 2,
					-- layer=1 filter=126 channel=44
					-9, -48, -9, 4, -30, -22, -2, -16, 9,
					-- layer=1 filter=126 channel=45
					51, 12, 30, 16, -10, 22, 4, -43, 0,
					-- layer=1 filter=126 channel=46
					-22, -27, -11, -46, -34, -7, -25, -45, -29,
					-- layer=1 filter=126 channel=47
					-18, -14, 0, -12, 0, -10, -20, -62, 7,
					-- layer=1 filter=126 channel=48
					3, -2, 3, -7, 9, -12, 7, -12, 7,
					-- layer=1 filter=126 channel=49
					18, 14, 5, 43, 8, 16, 4, 40, 20,
					-- layer=1 filter=126 channel=50
					3, -8, 10, -1, 5, 5, -14, -8, 20,
					-- layer=1 filter=126 channel=51
					-8, 12, 12, -4, 10, 3, -8, -6, -13,
					-- layer=1 filter=126 channel=52
					-50, -55, -74, -29, -79, 9, -29, -36, -6,
					-- layer=1 filter=126 channel=53
					-7, -60, 0, -13, 2, 9, -1, 18, -13,
					-- layer=1 filter=126 channel=54
					10, 12, 16, 18, -8, -2, 2, -13, -3,
					-- layer=1 filter=126 channel=55
					-23, -21, -33, -35, -16, 35, -14, 0, 3,
					-- layer=1 filter=126 channel=56
					-28, -3, -9, -45, -21, -52, -30, -40, -39,
					-- layer=1 filter=126 channel=57
					-12, -32, -8, -40, -21, -37, -9, -53, -13,
					-- layer=1 filter=126 channel=58
					-8, -24, 3, -17, -26, -34, -2, -30, -7,
					-- layer=1 filter=126 channel=59
					22, -20, 2, 9, 40, -1, 7, 22, 8,
					-- layer=1 filter=126 channel=60
					-36, -8, 22, -12, -25, 55, -44, -31, 2,
					-- layer=1 filter=126 channel=61
					26, -6, 2, 20, 36, 30, 14, 25, 27,
					-- layer=1 filter=126 channel=62
					40, 19, 18, 13, 34, 20, 12, 7, 1,
					-- layer=1 filter=126 channel=63
					-8, -12, 16, -16, -4, 11, -31, -22, -12,
					-- layer=1 filter=127 channel=0
					-36, 14, -4, -1, -35, 13, -76, -66, -27,
					-- layer=1 filter=127 channel=1
					-1, 3, -28, -18, -39, -8, 4, -25, 3,
					-- layer=1 filter=127 channel=2
					-6, 27, 32, -19, -37, 48, -64, -20, -16,
					-- layer=1 filter=127 channel=3
					-7, -35, -32, -31, -34, 2, -28, -19, -6,
					-- layer=1 filter=127 channel=4
					-36, -45, -12, -54, -20, -35, -38, -51, -11,
					-- layer=1 filter=127 channel=5
					16, 5, 9, 7, 6, -20, 22, 4, -17,
					-- layer=1 filter=127 channel=6
					36, -23, -55, -1, -30, -4, -11, -8, -16,
					-- layer=1 filter=127 channel=7
					-15, -40, -37, -32, -25, -36, -40, -11, -19,
					-- layer=1 filter=127 channel=8
					-13, -43, -40, -5, -24, -28, -1, -44, -20,
					-- layer=1 filter=127 channel=9
					-2, 10, -33, 2, -10, -17, 12, 19, -31,
					-- layer=1 filter=127 channel=10
					0, 18, 10, -17, -44, 10, -20, -24, 2,
					-- layer=1 filter=127 channel=11
					49, 22, -7, 58, 2, 23, 28, -5, 24,
					-- layer=1 filter=127 channel=12
					-10, -17, -9, -25, 3, -5, 1, -28, 21,
					-- layer=1 filter=127 channel=13
					-15, 3, 12, 24, 24, -2, -4, 1, 5,
					-- layer=1 filter=127 channel=14
					3, 34, 59, -11, -34, 13, -57, -52, -46,
					-- layer=1 filter=127 channel=15
					-3, 6, -6, 40, 17, 0, 44, 3, 37,
					-- layer=1 filter=127 channel=16
					-2, -7, -12, 36, 19, 18, -1, -24, 16,
					-- layer=1 filter=127 channel=17
					-11, -2, 0, -9, 2, -18, -6, 25, -35,
					-- layer=1 filter=127 channel=18
					21, -35, -33, 0, -6, 1, 3, -45, -24,
					-- layer=1 filter=127 channel=19
					0, -38, -51, -18, -42, -16, -16, -25, -30,
					-- layer=1 filter=127 channel=20
					0, -7, -13, 0, 20, -16, 8, 11, 3,
					-- layer=1 filter=127 channel=21
					10, -28, -12, 9, -17, -1, -23, -14, 2,
					-- layer=1 filter=127 channel=22
					17, 44, 33, 50, 0, 21, -7, 10, -22,
					-- layer=1 filter=127 channel=23
					26, 5, 4, 35, -28, 7, -1, 5, -7,
					-- layer=1 filter=127 channel=24
					-8, -32, -28, -32, -22, -44, -16, -49, -35,
					-- layer=1 filter=127 channel=25
					-13, -12, -14, -9, 12, 25, -27, -37, 18,
					-- layer=1 filter=127 channel=26
					-30, -50, -45, 0, -17, 28, -36, -40, 14,
					-- layer=1 filter=127 channel=27
					-12, -47, -49, -21, -33, -19, -26, -33, -23,
					-- layer=1 filter=127 channel=28
					-34, -48, -48, -31, -30, -21, -36, -21, -16,
					-- layer=1 filter=127 channel=29
					-15, -25, -23, -37, -26, 10, -22, -18, 6,
					-- layer=1 filter=127 channel=30
					-7, -3, 16, 19, -3, 10, 0, 24, -2,
					-- layer=1 filter=127 channel=31
					-6, -1, -7, -5, -10, 13, 10, 1, -1,
					-- layer=1 filter=127 channel=32
					37, 37, 56, 27, 47, 11, 33, 5, 25,
					-- layer=1 filter=127 channel=33
					7, -18, 1, -7, -12, -14, 6, -15, 4,
					-- layer=1 filter=127 channel=34
					13, -1, 24, 16, 27, 23, -25, 0, 43,
					-- layer=1 filter=127 channel=35
					-53, -40, -6, -86, -79, -23, -93, -85, -48,
					-- layer=1 filter=127 channel=36
					0, 10, 10, 18, 28, -12, 6, 24, 26,
					-- layer=1 filter=127 channel=37
					37, 25, 22, 21, 31, 4, 3, -48, 0,
					-- layer=1 filter=127 channel=38
					-13, 31, 8, 2, -14, 22, -2, -9, -22,
					-- layer=1 filter=127 channel=39
					25, 0, 2, 2, 11, -26, 31, -13, -25,
					-- layer=1 filter=127 channel=40
					-17, 38, 7, 46, 4, 39, -11, 30, -24,
					-- layer=1 filter=127 channel=41
					0, 21, 17, 11, 10, 9, 3, 20, -12,
					-- layer=1 filter=127 channel=42
					17, 36, 15, -6, -39, -9, -42, -5, -13,
					-- layer=1 filter=127 channel=43
					1, -7, -17, -23, -10, -14, -20, -41, 22,
					-- layer=1 filter=127 channel=44
					5, 5, 3, 16, 9, 16, 16, 6, 32,
					-- layer=1 filter=127 channel=45
					50, -13, -21, -2, -4, 0, -15, -25, 17,
					-- layer=1 filter=127 channel=46
					-5, -6, -6, -1, -12, -22, 1, 4, -21,
					-- layer=1 filter=127 channel=47
					33, -2, 33, 43, 24, 22, -20, -28, 23,
					-- layer=1 filter=127 channel=48
					0, 18, 14, -1, 4, -18, 25, 19, -20,
					-- layer=1 filter=127 channel=49
					11, 50, -3, 33, 25, 18, 59, 19, 54,
					-- layer=1 filter=127 channel=50
					-1, 19, 25, -2, 13, -10, 20, 8, -14,
					-- layer=1 filter=127 channel=51
					-8, -12, -13, -26, 1, -22, -13, -9, -8,
					-- layer=1 filter=127 channel=52
					-4, 3, 35, 50, -43, -40, -25, -33, 22,
					-- layer=1 filter=127 channel=53
					-17, 43, 0, 39, 51, 53, 41, 50, 28,
					-- layer=1 filter=127 channel=54
					-7, 4, 14, 9, 4, 6, 3, 22, 4,
					-- layer=1 filter=127 channel=55
					-1, 17, -9, 32, -15, 13, -11, -5, 1,
					-- layer=1 filter=127 channel=56
					-29, -16, -8, -45, -29, -36, -44, -42, -28,
					-- layer=1 filter=127 channel=57
					0, -37, -8, -25, -32, -16, -7, -49, 3,
					-- layer=1 filter=127 channel=58
					-5, 6, -3, -11, 14, 9, 1, -17, 9,
					-- layer=1 filter=127 channel=59
					13, 3, -25, 1, 5, 18, 10, 29, -14,
					-- layer=1 filter=127 channel=60
					-68, -66, 33, -17, -28, -8, -105, -44, -22,
					-- layer=1 filter=127 channel=61
					18, 25, -13, 67, 38, 47, 38, 49, 19,
					-- layer=1 filter=127 channel=62
					29, -40, -50, -22, -15, -12, 5, -15, -4,
					-- layer=1 filter=127 channel=63
					-11, 10, 0, 9, 3, -4, -14, -10, -49,

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 
			0, 0, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 6, 12, 14, 0, 0, 
			0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 9, 2, 0, 0, 0, 
			10, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 5, 24, 16, 
			79, 28, 0, 0, 39, 68, 63, 60, 37, 27, 28, 34, 31, 33, 31, 
			38, 69, 16, 0, 41, 23, 26, 28, 27, 25, 27, 22, 32, 38, 22, 
			42, 40, 63, 34, 20, 26, 20, 26, 28, 28, 40, 48, 43, 30, 64, 
			36, 41, 50, 70, 41, 47, 42, 25, 16, 19, 30, 36, 14, 19, 36, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 
			9, 0, 0, 0, 16, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 23, 0, 0, 35, 0, 23, 0, 0, 0, 11, 0, 0, 0, 0, 
			0, 42, 0, 0, 0, 0, 33, 3, 7, 0, 15, 0, 0, 0, 0, 
			0, 38, 0, 0, 0, 14, 26, 3, 2, 0, 14, 0, 0, 0, 0, 
			18, 23, 0, 7, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 
			35, 18, 31, 0, 0, 0, 0, 20, 0, 0, 9, 0, 0, 0, 0, 
			39, 12, 31, 0, 38, 0, 10, 43, 23, 0, 0, 0, 0, 0, 0, 
			20, 35, 13, 16, 68, 26, 11, 8, 10, 5, 10, 13, 16, 13, 16, 
			19, 4, 0, 58, 35, 11, 11, 8, 8, 7, 12, 12, 21, 22, 19, 
			28, 13, 0, 103, 19, 9, 11, 6, 10, 13, 18, 24, 22, 16, 42, 
			29, 22, 11, 32, 9, 10, 19, 15, 11, 15, 15, 11, 10, 34, 30, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 4, 0, 0, 
			17, 19, 0, 0, 0, 47, 1, 6, 0, 0, 0, 0, 0, 13, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 5, 0, 0, 7, 
			0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 10, 
			0, 0, 0, 6, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 10, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 6, 0, 
			0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 27, 35, 11, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 29, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 
			67, 6, 0, 0, 64, 51, 34, 32, 4, 0, 0, 0, 0, 0, 0, 
			0, 49, 0, 4, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 41, 46, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 35, 
			0, 0, 0, 55, 13, 18, 17, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			9, 2, 4, 6, 6, 0, 7, 8, 6, 8, 9, 5, 2, 6, 8, 
			5, 1, 2, 7, 2, 0, 10, 5, 8, 0, 0, 0, 0, 5, 9, 
			12, 6, 10, 6, 8, 0, 3, 0, 0, 0, 0, 0, 0, 7, 0, 
			0, 0, 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 
			0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 
			0, 0, 18, 9, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 
			0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 8, 0, 8, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 
			0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 6, 0, 0, 0, 2, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 1, 0, 0, 0, 13, 20, 14, 5, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 16, 42, 26, 18, 8, 5, 0, 
			4, 19, 0, 0, 0, 2, 22, 13, 15, 39, 8, 17, 7, 2, 8, 
			16, 45, 0, 7, 49, 29, 19, 11, 11, 32, 28, 9, 20, 7, 6, 
			22, 42, 0, 0, 50, 19, 23, 14, 8, 72, 18, 2, 25, 15, 10, 
			20, 37, 0, 0, 34, 38, 40, 16, 11, 71, 12, 13, 20, 29, 9, 
			33, 42, 10, 3, 21, 68, 7, 16, 7, 39, 10, 9, 28, 20, 0, 
			41, 59, 11, 37, 12, 14, 8, 23, 25, 1, 28, 0, 14, 2, 0, 
			41, 48, 16, 54, 28, 14, 29, 41, 20, 14, 0, 17, 30, 5, 0, 
			74, 48, 17, 88, 35, 50, 72, 51, 24, 21, 42, 53, 53, 50, 41, 
			84, 64, 37, 88, 32, 26, 49, 48, 46, 53, 58, 61, 64, 61, 60, 
			59, 72, 60, 65, 14, 55, 55, 52, 51, 57, 63, 69, 66, 67, 75, 
			61, 64, 89, 42, 40, 58, 52, 56, 58, 63, 64, 66, 61, 83, 66, 
			59, 68, 59, 51, 44, 56, 55, 54, 61, 63, 59, 59, 78, 75, 50, 
			

			36, 37, 42, 43, 42, 34, 44, 48, 42, 22, 15, 21, 32, 36, 36, 
			44, 43, 44, 43, 44, 41, 39, 25, 3, 0, 0, 0, 0, 20, 33, 
			0, 22, 43, 45, 40, 0, 6, 0, 0, 0, 0, 0, 0, 0, 21, 
			0, 8, 36, 43, 26, 21, 1, 0, 0, 0, 0, 0, 0, 0, 3, 
			7, 0, 40, 42, 31, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 
			0, 0, 9, 31, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 2, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 29, 
			0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 19, 27, 
			0, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 23, 3, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 24, 23, 0, 0, 
			51, 0, 0, 0, 0, 0, 25, 13, 11, 0, 34, 0, 15, 7, 0, 
			62, 23, 5, 0, 75, 27, 29, 25, 7, 0, 24, 32, 14, 34, 0, 
			4, 15, 17, 0, 0, 0, 56, 27, 47, 0, 24, 21, 0, 23, 29, 
			18, 31, 0, 15, 0, 0, 14, 35, 38, 0, 31, 23, 2, 8, 22, 
			20, 50, 7, 28, 0, 0, 24, 0, 23, 0, 21, 17, 0, 0, 6, 
			34, 15, 38, 10, 0, 0, 3, 14, 1, 0, 0, 6, 0, 1, 0, 
			13, 4, 63, 0, 18, 0, 0, 53, 0, 0, 13, 0, 5, 0, 0, 
			0, 7, 48, 0, 129, 46, 0, 12, 43, 28, 19, 30, 11, 0, 0, 
			0, 0, 37, 0, 5, 0, 0, 0, 8, 8, 13, 11, 20, 13, 19, 
			25, 0, 0, 5, 24, 20, 18, 15, 15, 16, 20, 21, 16, 13, 30, 
			30, 17, 0, 42, 20, 14, 28, 15, 14, 17, 12, 7, 19, 14, 7, 
			36, 21, 3, 0, 1, 0, 1, 21, 23, 29, 21, 14, 22, 39, 45, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 9, 6, 0, 0, 
			9, 0, 0, 0, 0, 0, 0, 6, 4, 0, 0, 1, 4, 6, 0, 
			13, 0, 0, 0, 0, 0, 1, 7, 10, 0, 0, 7, 4, 9, 0, 
			27, 0, 0, 0, 0, 0, 0, 5, 14, 0, 9, 8, 4, 9, 6, 
			23, 10, 0, 0, 0, 0, 0, 0, 14, 0, 7, 11, 5, 3, 7, 
			15, 11, 5, 0, 0, 0, 13, 0, 0, 0, 0, 14, 5, 1, 0, 
			20, 14, 26, 0, 0, 0, 0, 3, 0, 0, 0, 7, 0, 0, 0, 
			6, 15, 24, 1, 16, 1, 0, 3, 18, 0, 3, 6, 0, 0, 0, 
			0, 8, 22, 0, 11, 30, 13, 16, 18, 15, 29, 31, 34, 18, 17, 
			50, 9, 12, 0, 34, 38, 41, 43, 48, 52, 57, 60, 63, 66, 66, 
			79, 47, 0, 19, 54, 55, 57, 55, 58, 61, 65, 70, 69, 66, 71, 
			84, 67, 39, 32, 49, 59, 59, 59, 58, 65, 72, 74, 72, 81, 81, 
			84, 75, 58, 55, 59, 60, 59, 57, 57, 64, 72, 68, 65, 88, 81, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 7, 0, 0, 
			16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 4, 1, 0, 
			20, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 3, 0, 10, 0, 
			5, 0, 0, 0, 0, 0, 9, 0, 22, 0, 3, 5, 0, 2, 3, 
			1, 28, 0, 0, 0, 0, 0, 0, 12, 0, 10, 8, 0, 0, 0, 
			6, 21, 0, 0, 0, 0, 3, 0, 0, 0, 3, 8, 0, 0, 0, 
			20, 8, 30, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 
			4, 3, 41, 0, 2, 0, 0, 12, 0, 0, 4, 0, 0, 0, 0, 
			0, 0, 33, 0, 56, 15, 0, 11, 28, 19, 23, 30, 32, 19, 23, 
			13, 7, 5, 0, 41, 44, 33, 33, 47, 43, 50, 51, 58, 57, 60, 
			76, 14, 0, 19, 50, 50, 49, 48, 50, 53, 58, 60, 59, 58, 65, 
			82, 64, 0, 59, 46, 47, 56, 49, 49, 55, 62, 63, 69, 68, 73, 
			81, 70, 58, 38, 47, 44, 46, 48, 50, 59, 62, 57, 53, 80, 84, 
			

			34, 40, 35, 38, 38, 34, 38, 42, 40, 34, 29, 26, 29, 36, 38, 
			33, 39, 36, 41, 31, 32, 47, 41, 35, 10, 15, 22, 18, 17, 33, 
			46, 7, 36, 41, 34, 46, 47, 30, 4, 0, 21, 15, 26, 3, 18, 
			62, 0, 34, 35, 48, 12, 27, 15, 7, 0, 42, 14, 25, 15, 0, 
			34, 0, 45, 0, 27, 17, 49, 34, 26, 0, 23, 35, 12, 25, 0, 
			19, 6, 49, 29, 3, 20, 48, 33, 47, 0, 46, 41, 3, 17, 12, 
			13, 40, 19, 67, 0, 0, 34, 29, 49, 0, 47, 30, 4, 0, 19, 
			12, 37, 10, 37, 0, 0, 61, 24, 30, 0, 33, 39, 0, 9, 24, 
			26, 8, 43, 0, 19, 12, 28, 23, 0, 39, 13, 46, 0, 6, 20, 
			18, 6, 59, 0, 32, 7, 0, 28, 15, 23, 38, 4, 0, 6, 34, 
			0, 9, 58, 0, 40, 6, 0, 22, 31, 20, 0, 0, 0, 0, 0, 
			0, 0, 10, 0, 74, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 38, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 24, 0, 0, 0, 19, 0, 0, 0, 4, 0, 0, 0, 0, 0, 
			0, 4, 0, 0, 0, 0, 0, 0, 0, 52, 0, 0, 0, 0, 32, 
			0, 0, 0, 14, 0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 1, 
			0, 9, 0, 0, 67, 0, 0, 0, 0, 68, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 46, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 11, 50, 0, 0, 0, 47, 0, 0, 0, 0, 0, 
			0, 2, 0, 7, 0, 26, 0, 0, 1, 0, 0, 0, 0, 0, 0, 
			0, 4, 0, 22, 0, 0, 1, 0, 0, 0, 0, 0, 5, 0, 0, 
			38, 0, 0, 52, 0, 0, 31, 15, 0, 0, 0, 0, 0, 1, 0, 
			90, 44, 0, 57, 0, 0, 6, 1, 0, 0, 0, 0, 0, 0, 0, 
			0, 68, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 
			0, 0, 107, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 12, 
			0, 0, 3, 19, 0, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 15, 14, 0, 7, 0, 5, 0, 
			0, 50, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 20, 9, 
			0, 13, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 11, 14, 25, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 4, 7, 36, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 15, 13, 7, 
			0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 19, 13, 0, 
			0, 0, 0, 13, 0, 8, 13, 0, 0, 0, 0, 23, 43, 0, 0, 
			0, 0, 0, 44, 0, 0, 0, 0, 0, 11, 49, 56, 38, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 1, 22, 31, 38, 38, 44, 39, 35, 
			47, 10, 23, 0, 0, 38, 34, 39, 41, 48, 53, 50, 32, 34, 56, 
			42, 52, 23, 0, 9, 41, 40, 39, 42, 43, 40, 33, 42, 56, 6, 
			35, 51, 41, 0, 24, 34, 28, 41, 46, 45, 36, 52, 65, 24, 39, 
			

			18, 14, 21, 20, 21, 16, 19, 20, 22, 15, 10, 13, 16, 15, 17, 
			23, 16, 19, 18, 21, 32, 18, 17, 0, 16, 12, 10, 10, 15, 19, 
			10, 12, 23, 19, 23, 0, 8, 0, 18, 9, 0, 0, 0, 8, 13, 
			0, 36, 18, 22, 23, 20, 9, 9, 5, 0, 0, 0, 0, 6, 6, 
			0, 8, 14, 26, 12, 13, 0, 6, 0, 24, 0, 1, 5, 0, 13, 
			2, 0, 15, 27, 0, 0, 0, 0, 0, 39, 0, 0, 0, 0, 10, 
			12, 0, 6, 7, 0, 29, 0, 6, 0, 11, 0, 3, 6, 9, 4, 
			15, 0, 9, 7, 7, 0, 0, 0, 0, 4, 0, 0, 1, 0, 5, 
			0, 0, 8, 2, 30, 0, 0, 7, 7, 0, 0, 0, 3, 5, 18, 
			0, 0, 0, 0, 0, 19, 13, 0, 10, 0, 0, 0, 6, 18, 14, 
			0, 0, 0, 33, 9, 13, 7, 0, 0, 0, 11, 15, 6, 3, 8, 
			0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 
			

			40, 38, 38, 40, 41, 35, 43, 46, 40, 31, 22, 23, 27, 37, 39, 
			41, 41, 41, 42, 38, 18, 41, 29, 21, 6, 7, 15, 17, 26, 35, 
			22, 20, 42, 43, 44, 27, 21, 19, 9, 0, 1, 0, 12, 21, 24, 
			21, 14, 46, 38, 32, 12, 11, 5, 3, 0, 0, 7, 5, 17, 18, 
			0, 3, 42, 11, 0, 0, 2, 3, 6, 0, 5, 11, 2, 10, 17, 
			0, 0, 35, 23, 0, 0, 0, 9, 13, 0, 0, 3, 1, 1, 10, 
			0, 0, 25, 34, 0, 0, 0, 0, 11, 0, 0, 6, 2, 0, 12, 
			0, 0, 10, 22, 9, 0, 0, 0, 7, 0, 0, 11, 0, 3, 21, 
			0, 0, 0, 0, 8, 0, 13, 5, 0, 21, 13, 2, 5, 19, 35, 
			0, 0, 0, 0, 8, 0, 0, 0, 6, 0, 0, 3, 2, 18, 27, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 22, 19, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 12, 27, 0, 0, 0, 22, 16, 0, 
			36, 41, 0, 0, 0, 35, 15, 10, 0, 0, 0, 0, 0, 24, 9, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 4, 0, 4, 21, 
			0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 15, 
			0, 5, 0, 0, 63, 4, 0, 0, 0, 0, 0, 3, 0, 0, 0, 
			0, 0, 33, 0, 9, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 10, 22, 24, 1, 0, 0, 0, 0, 9, 0, 
			0, 0, 0, 0, 0, 31, 0, 0, 0, 0, 31, 34, 14, 0, 0, 
			0, 0, 0, 0, 1, 0, 0, 0, 0, 43, 31, 5, 0, 0, 1, 
			10, 0, 0, 0, 0, 0, 0, 36, 14, 0, 0, 0, 0, 22, 16, 
			67, 29, 0, 0, 46, 54, 31, 29, 13, 0, 0, 0, 0, 0, 0, 
			0, 48, 2, 11, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 46, 59, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 28, 
			0, 0, 3, 45, 9, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 3, 0, 6, 20, 0, 0, 0, 13, 0, 0, 4, 6, 0, 
			0, 25, 0, 0, 4, 10, 0, 0, 6, 49, 0, 0, 0, 6, 16, 
			0, 68, 0, 4, 0, 16, 0, 0, 0, 58, 0, 0, 0, 0, 51, 
			0, 26, 0, 53, 0, 0, 0, 0, 0, 86, 0, 0, 1, 0, 17, 
			0, 11, 0, 0, 68, 0, 0, 0, 0, 148, 0, 0, 11, 0, 0, 
			0, 0, 0, 0, 62, 46, 0, 0, 0, 118, 0, 0, 6, 14, 0, 
			0, 0, 0, 0, 32, 48, 0, 0, 0, 79, 0, 0, 20, 0, 0, 
			0, 0, 0, 26, 0, 7, 0, 0, 22, 0, 11, 0, 25, 29, 9, 
			0, 1, 0, 56, 0, 0, 35, 0, 0, 0, 0, 0, 28, 23, 0, 
			54, 0, 0, 138, 0, 0, 21, 0, 0, 0, 1, 4, 2, 0, 0, 
			46, 27, 0, 84, 0, 0, 2, 1, 0, 0, 0, 3, 4, 1, 0, 
			0, 45, 72, 0, 0, 0, 0, 0, 0, 2, 6, 4, 0, 0, 13, 
			0, 0, 93, 0, 0, 4, 0, 0, 2, 2, 0, 0, 0, 22, 0, 
			0, 0, 2, 0, 0, 12, 1, 0, 6, 0, 0, 6, 38, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 6, 5, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 8, 5, 0, 0, 0, 0, 0, 0, 
			7, 27, 0, 0, 27, 20, 0, 0, 0, 6, 0, 0, 5, 6, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 6, 14, 
			3, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 9, 3, 
			6, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 2, 0, 0, 
			5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 12, 0, 1, 0, 14, 1, 0, 0, 0, 17, 0, 0, 
			1, 0, 0, 49, 45, 55, 48, 0, 5, 6, 34, 61, 44, 9, 4, 
			15, 2, 9, 35, 0, 0, 0, 0, 20, 41, 50, 50, 55, 52, 51, 
			63, 20, 12, 0, 0, 46, 47, 43, 45, 54, 61, 66, 57, 56, 70, 
			60, 57, 34, 0, 27, 49, 48, 47, 51, 57, 57, 51, 53, 77, 49, 
			62, 62, 45, 0, 30, 38, 40, 49, 61, 59, 55, 55, 79, 73, 54, 
			

			26, 35, 27, 33, 31, 28, 31, 35, 36, 32, 23, 15, 18, 24, 29, 
			26, 32, 28, 37, 25, 36, 37, 39, 28, 0, 5, 6, 0, 6, 26, 
			50, 0, 31, 35, 31, 49, 38, 7, 0, 0, 18, 0, 17, 0, 8, 
			57, 0, 30, 28, 50, 0, 28, 3, 0, 0, 36, 7, 13, 2, 0, 
			24, 0, 36, 0, 37, 2, 40, 21, 16, 0, 16, 25, 0, 12, 0, 
			3, 11, 37, 30, 8, 0, 50, 19, 41, 0, 45, 24, 0, 3, 0, 
			0, 57, 4, 65, 0, 0, 50, 20, 43, 0, 42, 18, 0, 0, 8, 
			0, 35, 0, 34, 0, 7, 52, 17, 20, 0, 33, 28, 0, 4, 4, 
			23, 9, 34, 0, 14, 0, 16, 25, 0, 30, 18, 27, 0, 0, 16, 
			24, 9, 60, 0, 31, 0, 0, 37, 2, 21, 24, 0, 0, 1, 28, 
			0, 10, 55, 0, 51, 8, 0, 28, 22, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 105, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 78, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 39, 8, 0, 0, 0, 13, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			26, 0, 0, 0, 3, 0, 12, 0, 0, 0, 7, 0, 0, 0, 0, 
			41, 12, 9, 0, 74, 30, 9, 0, 0, 0, 11, 10, 0, 1, 0, 
			0, 0, 18, 0, 0, 0, 36, 5, 10, 0, 6, 0, 0, 0, 5, 
			16, 0, 0, 2, 0, 1, 0, 17, 2, 0, 10, 0, 0, 0, 0, 
			21, 17, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			25, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 30, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 14, 0, 117, 38, 0, 0, 8, 0, 0, 0, 0, 0, 0, 
			0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 
			5, 0, 0, 0, 0, 0, 9, 0, 0, 0, 13, 0, 0, 0, 0, 
			21, 16, 0, 0, 50, 35, 26, 3, 0, 0, 17, 6, 0, 0, 0, 
			25, 26, 4, 7, 16, 25, 40, 4, 0, 0, 36, 0, 0, 0, 0, 
			27, 41, 0, 0, 0, 22, 36, 19, 2, 1, 26, 1, 0, 0, 0, 
			44, 37, 4, 0, 0, 30, 30, 3, 0, 0, 21, 0, 0, 0, 0, 
			56, 42, 30, 4, 10, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 
			42, 40, 35, 5, 16, 0, 0, 31, 5, 0, 0, 0, 0, 0, 0, 
			24, 39, 30, 20, 78, 33, 30, 30, 13, 0, 0, 0, 0, 0, 0, 
			0, 21, 28, 57, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 11, 75, 13, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 
			0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 
			6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 4, 23, 0, 
			

			0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 4, 1, 0, 2, 25, 0, 0, 0, 5, 0, 0, 7, 2, 0, 
			0, 10, 0, 0, 1, 30, 0, 0, 0, 41, 0, 0, 0, 8, 11, 
			0, 61, 0, 6, 0, 6, 0, 0, 0, 48, 0, 0, 0, 0, 41, 
			0, 48, 0, 36, 10, 0, 0, 0, 0, 46, 0, 0, 1, 0, 18, 
			0, 14, 0, 0, 48, 0, 0, 0, 0, 118, 0, 0, 9, 0, 0, 
			0, 0, 0, 0, 64, 22, 0, 0, 0, 109, 0, 0, 0, 7, 0, 
			0, 0, 0, 0, 30, 60, 0, 0, 0, 72, 0, 0, 13, 0, 0, 
			0, 0, 0, 17, 0, 0, 0, 0, 14, 0, 14, 0, 8, 11, 8, 
			0, 0, 0, 45, 0, 0, 10, 0, 0, 0, 0, 0, 29, 31, 0, 
			48, 0, 0, 105, 0, 0, 31, 0, 0, 0, 4, 7, 13, 13, 0, 
			56, 7, 0, 90, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 
			0, 45, 23, 1, 0, 0, 0, 0, 0, 0, 3, 5, 0, 0, 5, 
			0, 0, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 
			0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 0, 23, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 
			0, 0, 0, 0, 0, 4, 22, 0, 0, 0, 29, 22, 0, 0, 3, 
			0, 0, 0, 0, 0, 0, 17, 13, 3, 0, 9, 7, 34, 0, 0, 
			80, 0, 5, 0, 10, 0, 21, 15, 7, 0, 28, 0, 18, 21, 0, 
			60, 0, 29, 0, 22, 16, 27, 27, 13, 0, 16, 43, 5, 37, 0, 
			20, 0, 33, 0, 0, 0, 33, 28, 58, 0, 25, 32, 0, 18, 33, 
			24, 18, 0, 34, 0, 0, 0, 25, 44, 0, 38, 34, 2, 0, 23, 
			15, 18, 27, 36, 0, 0, 19, 0, 18, 0, 12, 33, 0, 0, 2, 
			17, 0, 61, 0, 19, 0, 11, 13, 0, 30, 0, 17, 0, 0, 0, 
			0, 0, 65, 0, 22, 0, 0, 31, 7, 0, 18, 3, 0, 0, 2, 
			0, 0, 56, 0, 92, 39, 0, 0, 30, 37, 19, 12, 0, 0, 16, 
			0, 0, 9, 0, 28, 9, 0, 0, 4, 0, 0, 0, 0, 0, 3, 
			19, 0, 0, 0, 43, 1, 4, 1, 4, 1, 0, 0, 0, 0, 0, 
			17, 3, 0, 14, 12, 0, 16, 3, 0, 0, 0, 0, 3, 0, 0, 
			23, 0, 0, 0, 5, 0, 0, 0, 0, 7, 11, 0, 0, 18, 39, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 
			12, 0, 0, 0, 0, 2, 23, 13, 0, 0, 0, 0, 12, 2, 0, 
			16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 4, 13, 15, 0, 
			7, 0, 10, 0, 0, 0, 5, 3, 14, 0, 0, 8, 0, 5, 2, 
			24, 0, 16, 3, 0, 12, 0, 0, 6, 0, 17, 34, 0, 0, 0, 
			9, 0, 13, 8, 0, 0, 0, 0, 17, 0, 27, 3, 0, 0, 0, 
			0, 0, 6, 0, 0, 0, 50, 18, 7, 0, 9, 15, 0, 0, 5, 
			0, 0, 33, 0, 0, 26, 3, 0, 0, 8, 0, 55, 0, 0, 0, 
			0, 0, 26, 0, 7, 4, 0, 0, 0, 20, 52, 8, 0, 0, 0, 
			0, 0, 31, 0, 0, 0, 0, 14, 35, 9, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 76, 57, 13, 12, 6, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 41, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 
			2, 0, 0, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 
			

			23, 17, 21, 16, 19, 19, 20, 23, 17, 15, 22, 26, 20, 18, 17, 
			18, 19, 24, 15, 22, 0, 3, 12, 26, 10, 0, 0, 26, 27, 14, 
			4, 51, 22, 18, 24, 27, 0, 19, 15, 6, 0, 0, 0, 32, 20, 
			0, 33, 12, 22, 0, 24, 0, 0, 0, 37, 0, 0, 0, 0, 51, 
			0, 0, 0, 53, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 45, 
			0, 0, 0, 31, 9, 0, 0, 0, 0, 50, 0, 0, 1, 0, 0, 
			0, 0, 11, 0, 35, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 32, 0, 0, 0, 0, 23, 0, 0, 7, 0, 2, 
			0, 0, 0, 0, 0, 27, 0, 0, 5, 0, 0, 0, 24, 8, 6, 
			0, 0, 0, 5, 0, 22, 14, 0, 0, 0, 0, 13, 12, 14, 9, 
			0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 11, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 4, 2, 1, 0, 2, 3, 2, 0, 0, 0, 0, 0, 0, 0, 
			0, 3, 4, 3, 1, 17, 1, 2, 0, 0, 0, 0, 0, 0, 0, 
			1, 0, 0, 1, 3, 28, 0, 0, 0, 6, 14, 0, 0, 0, 0, 
			0, 0, 0, 2, 5, 0, 5, 0, 0, 16, 13, 5, 0, 0, 0, 
			0, 23, 0, 2, 33, 28, 25, 0, 0, 0, 17, 0, 0, 0, 0, 
			20, 41, 6, 21, 61, 35, 33, 2, 0, 22, 34, 0, 0, 0, 0, 
			15, 47, 0, 0, 24, 33, 50, 15, 0, 38, 21, 0, 0, 0, 0, 
			34, 38, 0, 0, 4, 61, 32, 19, 0, 37, 23, 0, 0, 9, 0, 
			47, 50, 12, 18, 7, 17, 6, 7, 0, 4, 17, 0, 0, 0, 1, 
			54, 53, 19, 21, 14, 0, 5, 25, 12, 11, 0, 0, 0, 7, 2, 
			47, 49, 21, 46, 36, 12, 42, 44, 5, 0, 0, 0, 0, 0, 0, 
			30, 39, 26, 86, 73, 5, 5, 1, 0, 0, 0, 0, 0, 4, 1, 
			0, 23, 32, 90, 5, 0, 0, 0, 0, 0, 0, 0, 6, 2, 2, 
			0, 0, 38, 51, 0, 0, 0, 0, 0, 0, 1, 3, 0, 5, 16, 
			2, 0, 2, 5, 0, 0, 0, 0, 0, 1, 0, 0, 7, 19, 0, 
			

			0, 3, 6, 7, 7, 5, 2, 2, 7, 0, 0, 0, 7, 4, 6, 
			8, 8, 7, 6, 10, 59, 8, 3, 0, 16, 29, 4, 0, 0, 10, 
			0, 0, 5, 5, 0, 0, 0, 0, 7, 31, 5, 18, 13, 0, 8, 
			26, 28, 2, 10, 13, 20, 35, 13, 9, 0, 8, 0, 0, 0, 0, 
			36, 49, 4, 27, 103, 44, 5, 6, 0, 9, 22, 13, 17, 22, 0, 
			0, 7, 0, 0, 0, 0, 30, 16, 23, 37, 0, 0, 3, 18, 22, 
			0, 2, 0, 11, 0, 21, 5, 19, 10, 22, 0, 2, 3, 17, 9, 
			0, 26, 3, 29, 13, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			6, 7, 0, 17, 0, 0, 0, 14, 16, 0, 0, 0, 0, 5, 14, 
			0, 0, 7, 16, 0, 0, 19, 51, 0, 0, 0, 0, 24, 21, 3, 
			10, 0, 0, 50, 103, 54, 26, 0, 7, 21, 27, 46, 22, 8, 7, 
			0, 0, 20, 41, 0, 0, 0, 0, 0, 3, 7, 3, 9, 2, 2, 
			3, 0, 0, 0, 0, 6, 2, 2, 4, 9, 15, 16, 3, 3, 26, 
			1, 2, 0, 0, 0, 6, 10, 1, 5, 7, 0, 0, 1, 14, 0, 
			2, 2, 0, 0, 0, 0, 0, 7, 19, 19, 1, 3, 34, 21, 4, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			11, 40, 0, 0, 42, 14, 0, 0, 0, 0, 10, 0, 0, 0, 0, 
			0, 13, 0, 0, 0, 0, 4, 0, 0, 17, 0, 0, 0, 0, 0, 
			0, 13, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 
			3, 30, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			17, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 18, 3, 23, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 
			17, 13, 0, 57, 70, 49, 19, 0, 0, 0, 15, 28, 23, 4, 0, 
			16, 6, 22, 57, 0, 0, 0, 0, 8, 18, 28, 32, 42, 42, 36, 
			47, 12, 10, 19, 0, 29, 28, 25, 26, 34, 45, 52, 42, 37, 64, 
			48, 42, 14, 0, 3, 35, 35, 31, 29, 38, 38, 37, 39, 60, 31, 
			48, 47, 27, 10, 8, 14, 15, 28, 41, 50, 41, 40, 69, 75, 46, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 16, 10, 0, 0, 
			10, 0, 0, 0, 0, 0, 0, 6, 7, 0, 12, 3, 10, 3, 0, 
			32, 0, 0, 0, 0, 3, 11, 8, 8, 0, 10, 11, 4, 9, 0, 
			39, 14, 0, 0, 0, 5, 6, 12, 12, 0, 21, 18, 6, 13, 7, 
			40, 21, 0, 0, 0, 0, 10, 14, 16, 0, 27, 15, 9, 7, 9, 
			31, 32, 17, 0, 0, 0, 29, 10, 9, 0, 14, 17, 6, 4, 0, 
			37, 29, 34, 1, 0, 9, 7, 2, 5, 1, 0, 14, 1, 0, 0, 
			25, 30, 36, 15, 17, 6, 7, 13, 14, 0, 13, 7, 0, 0, 0, 
			13, 26, 37, 5, 40, 24, 13, 30, 31, 23, 23, 24, 33, 25, 23, 
			44, 33, 35, 8, 50, 52, 43, 44, 45, 44, 49, 53, 56, 59, 60, 
			71, 42, 27, 26, 65, 49, 50, 49, 51, 53, 59, 60, 61, 63, 67, 
			77, 61, 32, 49, 48, 53, 55, 50, 51, 56, 63, 65, 68, 65, 71, 
			76, 66, 54, 55, 52, 49, 52, 53, 51, 58, 62, 62, 60, 76, 77, 
			

			10, 4, 9, 11, 13, 4, 8, 10, 13, 9, 6, 3, 6, 13, 16, 
			14, 3, 7, 10, 8, 5, 19, 4, 2, 6, 20, 18, 8, 4, 13, 
			8, 0, 9, 10, 10, 0, 19, 15, 16, 0, 18, 23, 31, 12, 1, 
			36, 8, 10, 7, 13, 5, 12, 27, 24, 0, 25, 13, 25, 32, 0, 
			36, 2, 26, 0, 0, 17, 14, 28, 23, 0, 12, 33, 19, 33, 19, 
			34, 0, 27, 14, 0, 1, 14, 23, 37, 0, 24, 31, 10, 26, 33, 
			38, 8, 7, 17, 0, 0, 0, 23, 26, 0, 25, 31, 21, 14, 30, 
			28, 6, 36, 12, 0, 0, 26, 9, 19, 0, 20, 29, 8, 8, 24, 
			21, 0, 48, 0, 27, 0, 15, 17, 8, 22, 0, 28, 10, 10, 14, 
			1, 2, 36, 0, 14, 25, 6, 9, 27, 4, 25, 18, 6, 6, 15, 
			0, 2, 30, 0, 46, 28, 0, 0, 27, 33, 25, 25, 22, 9, 17, 
			0, 0, 13, 0, 14, 24, 10, 12, 23, 23, 25, 23, 25, 28, 29, 
			42, 0, 0, 0, 41, 25, 25, 27, 30, 30, 28, 28, 25, 23, 26, 
			39, 28, 0, 4, 32, 25, 33, 26, 24, 25, 28, 24, 32, 24, 25, 
			41, 27, 27, 4, 31, 20, 20, 27, 25, 30, 32, 30, 21, 34, 45, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 18, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 
			0, 6, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 3, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 
			2, 0, 0, 10, 10, 7, 7, 0, 0, 0, 3, 14, 9, 1, 0, 
			6, 0, 0, 26, 0, 0, 0, 0, 0, 7, 14, 14, 17, 18, 13, 
			22, 3, 0, 6, 0, 9, 10, 10, 11, 16, 20, 22, 18, 13, 23, 
			18, 18, 0, 0, 0, 12, 12, 12, 11, 16, 18, 15, 15, 26, 20, 
			19, 20, 13, 0, 4, 6, 5, 9, 17, 21, 17, 15, 28, 34, 16, 
			

			47, 43, 48, 47, 49, 40, 49, 57, 52, 36, 30, 33, 37, 41, 45, 
			49, 46, 48, 47, 48, 15, 40, 33, 33, 12, 0, 1, 16, 31, 38, 
			17, 42, 51, 52, 52, 24, 35, 24, 8, 0, 0, 0, 0, 11, 25, 
			0, 4, 41, 50, 34, 32, 0, 0, 0, 0, 0, 0, 0, 0, 16, 
			0, 0, 36, 37, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 12, 
			0, 0, 35, 45, 0, 9, 0, 0, 0, 0, 0, 4, 0, 0, 0, 
			0, 0, 22, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 
			0, 0, 0, 0, 8, 9, 2, 0, 0, 14, 0, 11, 3, 8, 21, 
			0, 0, 0, 0, 0, 12, 3, 0, 0, 0, 4, 0, 0, 8, 32, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 2, 0, 0, 0, 76, 0, 0, 0, 13, 15, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 18, 0, 0, 0, 37, 0, 0, 0, 0, 19, 
			18, 24, 0, 0, 13, 0, 38, 0, 0, 0, 2, 0, 0, 0, 2, 
			0, 55, 0, 0, 74, 0, 0, 0, 7, 0, 10, 0, 17, 8, 0, 
			0, 36, 0, 0, 62, 0, 49, 0, 37, 39, 0, 0, 1, 0, 0, 
			0, 69, 0, 23, 43, 14, 31, 0, 11, 62, 0, 0, 0, 14, 0, 
			0, 43, 0, 27, 0, 42, 0, 0, 0, 38, 0, 0, 0, 0, 0, 
			0, 9, 0, 39, 0, 0, 0, 42, 0, 4, 20, 0, 0, 14, 0, 
			5, 0, 0, 27, 0, 0, 0, 73, 0, 0, 0, 0, 19, 20, 0, 
			82, 0, 0, 41, 30, 0, 0, 0, 0, 0, 8, 12, 0, 1, 0, 
			0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 3, 2, 9, 2, 0, 
			0, 0, 0, 67, 0, 0, 0, 0, 0, 4, 6, 7, 0, 0, 8, 
			0, 0, 0, 78, 0, 0, 0, 0, 0, 1, 0, 1, 0, 14, 0, 
			0, 8, 0, 25, 0, 0, 0, 0, 6, 13, 0, 0, 16, 22, 0, 
			

			4, 8, 4, 6, 3, 2, 9, 7, 0, 0, 0, 0, 0, 0, 0, 
			1, 5, 7, 8, 4, 22, 4, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 4, 6, 5, 38, 0, 0, 0, 7, 20, 4, 0, 0, 2, 
			4, 0, 10, 2, 2, 0, 13, 0, 0, 11, 20, 1, 0, 0, 0, 
			13, 42, 12, 0, 53, 11, 28, 0, 0, 0, 25, 0, 0, 0, 0, 
			0, 57, 15, 0, 59, 16, 46, 12, 4, 0, 35, 0, 2, 0, 0, 
			0, 70, 6, 5, 26, 14, 72, 14, 19, 31, 29, 0, 0, 0, 1, 
			4, 61, 0, 12, 0, 68, 36, 21, 7, 34, 26, 3, 0, 13, 3, 
			33, 56, 0, 29, 0, 11, 10, 9, 2, 9, 16, 0, 0, 7, 10, 
			52, 53, 34, 17, 25, 0, 0, 48, 0, 11, 0, 0, 0, 13, 4, 
			56, 42, 37, 27, 56, 14, 32, 54, 13, 0, 0, 0, 0, 0, 0, 
			39, 40, 37, 85, 85, 0, 0, 0, 0, 0, 0, 0, 2, 7, 2, 
			4, 18, 7, 103, 5, 0, 0, 0, 0, 0, 0, 3, 12, 4, 8, 
			7, 0, 8, 95, 0, 0, 0, 0, 0, 0, 2, 10, 1, 4, 28, 
			10, 3, 0, 35, 0, 0, 4, 0, 2, 6, 6, 0, 8, 33, 8, 
			

			0, 0, 0, 1, 2, 4, 0, 0, 5, 0, 0, 0, 0, 0, 2, 
			7, 5, 0, 0, 5, 45, 0, 0, 0, 27, 28, 9, 0, 0, 0, 
			0, 0, 0, 4, 0, 0, 0, 12, 18, 18, 0, 6, 0, 0, 0, 
			15, 32, 0, 8, 3, 27, 20, 0, 0, 0, 0, 0, 0, 0, 0, 
			27, 21, 0, 30, 44, 1, 0, 0, 0, 32, 25, 1, 9, 8, 0, 
			0, 0, 0, 0, 0, 0, 19, 14, 7, 31, 0, 0, 0, 5, 16, 
			10, 0, 0, 0, 0, 25, 0, 1, 0, 2, 0, 8, 10, 21, 0, 
			4, 16, 5, 18, 6, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 
			0, 0, 0, 16, 0, 0, 15, 15, 17, 0, 0, 0, 0, 14, 2, 
			0, 0, 0, 27, 0, 0, 27, 30, 0, 0, 0, 4, 10, 0, 0, 
			7, 0, 0, 56, 55, 20, 0, 0, 0, 8, 34, 24, 2, 0, 4, 
			0, 0, 9, 1, 0, 0, 0, 0, 1, 0, 0, 0, 7, 2, 2, 
			0, 0, 15, 0, 0, 2, 0, 0, 3, 7, 11, 8, 0, 0, 20, 
			0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 9, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 5, 13, 0, 6, 31, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 3, 0, 0, 
			16, 3, 0, 0, 0, 18, 4, 0, 0, 0, 12, 0, 3, 12, 0, 
			0, 0, 0, 0, 0, 0, 0, 5, 9, 21, 3, 17, 8, 12, 0, 
			0, 0, 0, 0, 0, 0, 0, 2, 15, 0, 0, 0, 0, 0, 13, 
			23, 15, 0, 25, 36, 9, 0, 0, 0, 1, 16, 9, 8, 0, 0, 
			6, 21, 6, 0, 13, 0, 15, 0, 1, 12, 9, 4, 5, 1, 5, 
			11, 0, 1, 0, 2, 26, 24, 23, 7, 19, 13, 9, 11, 19, 0, 
			12, 11, 19, 2, 11, 22, 4, 4, 0, 0, 32, 20, 15, 0, 0, 
			21, 20, 8, 0, 13, 11, 0, 0, 20, 30, 17, 3, 0, 0, 0, 
			18, 14, 10, 0, 0, 0, 26, 29, 15, 0, 0, 0, 15, 18, 18, 
			62, 28, 0, 13, 64, 46, 37, 34, 30, 26, 28, 28, 26, 31, 31, 
			39, 56, 15, 44, 36, 23, 25, 24, 25, 26, 24, 26, 36, 34, 21, 
			38, 31, 59, 45, 31, 24, 21, 26, 26, 28, 36, 42, 33, 36, 62, 
			37, 34, 40, 39, 38, 43, 41, 26, 21, 20, 32, 29, 17, 31, 31, 
			

			28, 32, 31, 29, 29, 30, 33, 34, 29, 24, 19, 26, 26, 24, 25, 
			32, 35, 34, 30, 33, 46, 8, 25, 14, 21, 3, 6, 19, 31, 28, 
			15, 43, 33, 32, 35, 46, 0, 1, 5, 35, 0, 0, 0, 16, 40, 
			0, 54, 31, 35, 24, 22, 13, 0, 0, 36, 0, 0, 0, 0, 52, 
			0, 38, 0, 32, 21, 0, 0, 0, 0, 31, 0, 0, 8, 0, 14, 
			0, 14, 0, 3, 51, 0, 0, 0, 0, 78, 0, 0, 12, 0, 0, 
			0, 2, 3, 10, 59, 19, 5, 0, 0, 77, 0, 0, 3, 10, 0, 
			0, 0, 0, 15, 26, 46, 0, 0, 0, 54, 0, 0, 12, 7, 0, 
			0, 0, 0, 28, 0, 0, 0, 9, 13, 6, 23, 0, 14, 27, 29, 
			0, 0, 0, 29, 0, 0, 4, 9, 0, 0, 0, 2, 32, 42, 15, 
			43, 0, 0, 55, 0, 0, 9, 0, 0, 0, 0, 0, 0, 5, 0, 
			20, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 34, 10, 0, 0, 0, 15, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 7, 0, 9, 0, 0, 
			14, 25, 0, 0, 0, 0, 29, 14, 0, 0, 0, 0, 0, 0, 0, 
			13, 61, 3, 13, 83, 68, 0, 0, 0, 0, 16, 16, 4, 9, 0, 
			0, 0, 0, 0, 0, 0, 4, 9, 12, 45, 0, 0, 0, 3, 20, 
			0, 0, 0, 0, 0, 6, 0, 0, 0, 21, 0, 0, 0, 8, 11, 
			0, 0, 17, 1, 22, 12, 0, 0, 0, 2, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 13, 0, 0, 4, 0, 0, 0, 0, 0, 0, 20, 
			0, 0, 0, 2, 0, 0, 0, 41, 7, 0, 0, 0, 18, 22, 0, 
			0, 0, 0, 48, 87, 89, 34, 0, 0, 0, 19, 45, 18, 0, 0, 
			0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			2, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 14, 0, 0, 12, 
			0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 12, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 14, 12, 2, 0, 30, 26, 0, 
			

			32, 30, 28, 27, 28, 27, 31, 35, 26, 22, 21, 24, 18, 23, 23, 
			27, 29, 30, 28, 27, 0, 9, 21, 18, 0, 0, 0, 23, 23, 21, 
			23, 39, 31, 30, 37, 62, 0, 9, 0, 0, 0, 0, 0, 27, 23, 
			0, 27, 27, 28, 13, 5, 0, 0, 0, 32, 0, 4, 0, 0, 41, 
			0, 0, 3, 13, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 34, 
			0, 0, 0, 45, 40, 0, 0, 0, 0, 28, 0, 0, 0, 0, 0, 
			0, 0, 10, 0, 43, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 14, 11, 0, 3, 0, 44, 0, 0, 3, 10, 5, 
			0, 0, 0, 0, 0, 23, 0, 0, 0, 11, 25, 0, 21, 11, 19, 
			0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 18, 11, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			27, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			5, 4, 6, 0, 0, 5, 5, 4, 0, 0, 7, 15, 7, 0, 0, 
			4, 5, 7, 0, 6, 0, 0, 1, 2, 6, 0, 0, 16, 18, 0, 
			0, 43, 5, 1, 6, 22, 0, 0, 2, 25, 0, 0, 0, 17, 21, 
			0, 44, 0, 8, 0, 8, 0, 0, 0, 50, 0, 0, 0, 0, 54, 
			0, 4, 0, 36, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 26, 
			0, 1, 0, 3, 63, 0, 0, 0, 0, 98, 0, 0, 6, 0, 0, 
			0, 0, 4, 0, 55, 20, 0, 0, 0, 82, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 22, 36, 0, 0, 0, 52, 0, 0, 13, 2, 0, 
			0, 0, 0, 17, 0, 17, 0, 0, 12, 0, 13, 0, 19, 13, 2, 
			0, 0, 0, 27, 0, 1, 17, 0, 0, 1, 0, 1, 27, 23, 0, 
			33, 0, 0, 69, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 
			48, 21, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 41, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			6, 6, 0, 2, 4, 0, 5, 9, 8, 16, 21, 12, 3, 4, 8, 
			0, 0, 0, 6, 0, 0, 9, 14, 47, 0, 0, 0, 7, 5, 3, 
			32, 14, 3, 6, 3, 44, 48, 32, 0, 0, 0, 0, 6, 1, 0, 
			28, 0, 5, 0, 11, 0, 0, 0, 0, 0, 18, 6, 20, 5, 0, 
			8, 0, 16, 0, 0, 0, 14, 3, 16, 0, 0, 4, 0, 0, 0, 
			16, 0, 19, 18, 9, 12, 0, 0, 11, 0, 22, 37, 0, 0, 0, 
			0, 14, 21, 37, 0, 0, 10, 0, 25, 0, 40, 6, 0, 0, 0, 
			0, 0, 0, 7, 0, 0, 54, 27, 16, 0, 22, 25, 0, 0, 2, 
			0, 0, 27, 0, 0, 39, 21, 0, 0, 28, 11, 61, 0, 0, 0, 
			0, 0, 36, 0, 9, 0, 0, 0, 0, 27, 55, 5, 0, 0, 15, 
			0, 0, 48, 0, 0, 0, 0, 23, 28, 11, 0, 0, 0, 0, 11, 
			0, 0, 0, 0, 117, 78, 28, 27, 6, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 12, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 88, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 
			0, 0, 0, 43, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 
			

			39, 39, 41, 40, 42, 39, 42, 49, 46, 37, 31, 33, 34, 32, 34, 
			44, 43, 43, 42, 44, 28, 32, 37, 34, 20, 0, 0, 16, 35, 33, 
			19, 53, 43, 46, 44, 35, 22, 19, 0, 0, 0, 0, 0, 10, 31, 
			0, 15, 41, 48, 33, 36, 0, 0, 0, 0, 0, 0, 0, 0, 29, 
			0, 0, 23, 51, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 
			0, 0, 16, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 25, 22, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 22, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 
			0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 0, 0, 0, 4, 16, 
			0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 16, 31, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 10, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 13, 13, 0, 
			0, 42, 0, 0, 2, 48, 0, 18, 3, 0, 0, 0, 0, 27, 0, 
			0, 0, 0, 0, 0, 2, 0, 0, 0, 61, 0, 14, 0, 0, 42, 
			0, 0, 0, 41, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 30, 
			10, 0, 0, 28, 80, 37, 0, 0, 0, 38, 0, 0, 10, 0, 0, 
			1, 0, 22, 0, 46, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 30, 19, 0, 24, 0, 35, 0, 0, 20, 10, 4, 
			0, 0, 0, 0, 0, 69, 2, 0, 6, 0, 39, 15, 33, 6, 0, 
			0, 1, 0, 11, 0, 16, 12, 0, 0, 31, 5, 17, 0, 0, 0, 
			5, 0, 0, 14, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 
			81, 31, 0, 0, 0, 46, 43, 42, 13, 5, 0, 4, 0, 0, 0, 
			0, 71, 52, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 
			0, 0, 106, 0, 0, 1, 0, 0, 4, 0, 4, 13, 2, 0, 12, 
			0, 0, 11, 40, 13, 30, 25, 1, 0, 0, 0, 6, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 
			0, 0, 0, 0, 0, 41, 16, 0, 0, 0, 30, 11, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 10, 10, 22, 0, 0, 
			52, 7, 0, 0, 12, 0, 32, 17, 6, 0, 15, 0, 0, 7, 0, 
			42, 26, 14, 0, 65, 49, 17, 23, 0, 0, 22, 34, 10, 27, 0, 
			3, 0, 13, 0, 0, 0, 36, 23, 45, 0, 11, 2, 0, 15, 32, 
			18, 7, 0, 17, 0, 0, 0, 21, 20, 0, 7, 22, 3, 7, 19, 
			20, 12, 21, 19, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 
			20, 0, 38, 0, 26, 0, 0, 20, 0, 13, 0, 0, 0, 0, 11, 
			0, 0, 36, 0, 2, 0, 0, 44, 9, 0, 0, 0, 0, 0, 0, 
			0, 0, 19, 0, 117, 66, 0, 0, 0, 22, 24, 33, 7, 0, 0, 
			0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 
			12, 0, 0, 0, 0, 2, 0, 0, 1, 5, 7, 11, 0, 0, 12, 
			5, 0, 0, 0, 0, 0, 14, 1, 0, 0, 0, 0, 0, 4, 0, 
			13, 0, 0, 0, 0, 0, 0, 0, 9, 18, 8, 0, 14, 28, 15, 
			

			0, 0, 4, 0, 2, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 
			3, 6, 8, 0, 12, 35, 0, 0, 0, 14, 11, 0, 0, 0, 0, 
			0, 0, 2, 0, 6, 0, 0, 0, 15, 53, 0, 0, 0, 0, 2, 
			0, 65, 0, 11, 0, 26, 12, 0, 0, 43, 0, 0, 0, 0, 29, 
			0, 55, 0, 77, 44, 44, 0, 0, 0, 75, 7, 0, 4, 0, 15, 
			0, 0, 0, 6, 0, 0, 0, 0, 0, 136, 0, 0, 6, 0, 2, 
			0, 0, 0, 0, 43, 44, 0, 0, 0, 105, 0, 0, 8, 21, 0, 
			0, 0, 2, 0, 60, 42, 0, 0, 0, 57, 0, 0, 13, 0, 0, 
			0, 4, 0, 13, 1, 0, 0, 0, 23, 0, 0, 0, 0, 9, 19, 
			0, 0, 0, 59, 0, 2, 35, 9, 0, 0, 0, 0, 32, 30, 0, 
			27, 1, 0, 130, 0, 31, 44, 0, 0, 0, 22, 39, 26, 10, 0, 
			6, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 5, 6, 4, 0, 
			0, 13, 47, 0, 0, 0, 0, 0, 0, 7, 14, 14, 0, 1, 20, 
			0, 2, 61, 0, 0, 7, 0, 0, 3, 5, 0, 0, 0, 23, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 16, 11, 0, 5, 48, 0, 0, 
			

			0, 2, 6, 6, 6, 2, 6, 4, 1, 0, 0, 0, 5, 7, 4, 
			7, 5, 4, 7, 3, 32, 17, 1, 0, 0, 14, 0, 0, 0, 7, 
			0, 0, 6, 4, 1, 0, 0, 0, 0, 0, 9, 10, 18, 0, 0, 
			24, 6, 5, 1, 9, 0, 20, 20, 13, 0, 20, 0, 0, 6, 0, 
			35, 24, 25, 0, 61, 59, 14, 18, 0, 0, 7, 30, 5, 22, 0, 
			14, 0, 33, 9, 0, 0, 28, 11, 28, 0, 24, 5, 0, 13, 27, 
			25, 6, 0, 15, 0, 6, 0, 31, 9, 0, 8, 12, 0, 1, 21, 
			31, 1, 21, 13, 0, 0, 16, 0, 1, 0, 5, 0, 0, 0, 6, 
			24, 0, 42, 0, 33, 0, 0, 3, 0, 3, 0, 0, 0, 0, 15, 
			0, 0, 29, 0, 0, 19, 0, 26, 12, 0, 0, 0, 4, 11, 1, 
			0, 0, 10, 0, 106, 53, 20, 0, 21, 13, 1, 26, 1, 0, 0, 
			0, 0, 13, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 
			0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 
			10, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 2, 13, 7, 
			

			55, 58, 58, 58, 57, 52, 63, 73, 58, 32, 21, 29, 37, 48, 48, 
			57, 65, 62, 61, 57, 27, 40, 34, 19, 0, 0, 0, 0, 25, 40, 
			10, 35, 63, 66, 66, 44, 10, 0, 0, 0, 0, 0, 0, 0, 27, 
			0, 0, 52, 59, 32, 8, 0, 0, 0, 0, 0, 0, 0, 0, 13, 
			0, 0, 33, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 29, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 7, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 32, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 28, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			7, 3, 3, 0, 6, 58, 5, 0, 0, 5, 21, 0, 0, 0, 2, 
			0, 0, 0, 0, 0, 0, 0, 0, 5, 23, 0, 9, 0, 0, 2, 
			2, 48, 3, 4, 2, 9, 26, 5, 0, 0, 0, 0, 0, 0, 0, 
			17, 58, 4, 26, 92, 42, 0, 0, 0, 20, 16, 4, 9, 10, 0, 
			0, 3, 2, 0, 0, 0, 17, 5, 7, 60, 0, 0, 0, 5, 22, 
			0, 0, 0, 0, 0, 26, 0, 6, 0, 21, 0, 0, 0, 15, 8, 
			0, 6, 10, 17, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 13, 1, 0, 0, 4, 18, 0, 0, 0, 0, 8, 19, 
			0, 0, 0, 9, 0, 0, 15, 37, 0, 0, 0, 0, 25, 23, 0, 
			0, 0, 0, 74, 95, 60, 13, 0, 0, 0, 24, 42, 13, 0, 0, 
			0, 0, 11, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 5, 10, 0, 0, 20, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 34, 7, 0, 
			

			69, 71, 71, 72, 70, 68, 76, 80, 71, 55, 44, 50, 59, 66, 65, 
			70, 80, 76, 74, 72, 71, 65, 57, 41, 29, 22, 25, 31, 50, 61, 
			36, 50, 75, 77, 75, 64, 36, 30, 23, 25, 16, 14, 17, 24, 54, 
			30, 34, 73, 74, 59, 45, 40, 14, 11, 20, 20, 19, 14, 13, 43, 
			11, 35, 58, 51, 50, 30, 28, 17, 13, 17, 32, 21, 20, 18, 18, 
			0, 15, 54, 42, 28, 20, 36, 29, 24, 21, 11, 9, 18, 14, 17, 
			0, 18, 37, 67, 41, 26, 27, 17, 24, 22, 13, 15, 14, 18, 21, 
			0, 22, 6, 49, 38, 26, 2, 13, 23, 34, 15, 17, 13, 19, 39, 
			0, 7, 0, 20, 17, 19, 28, 24, 19, 38, 27, 7, 17, 42, 60, 
			6, 5, 6, 15, 15, 2, 17, 36, 7, 11, 4, 11, 22, 53, 53, 
			10, 8, 9, 17, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 8, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			4, 0, 3, 0, 0, 2, 1, 0, 0, 0, 0, 3, 0, 0, 0, 
			0, 3, 6, 0, 8, 1, 0, 0, 0, 3, 0, 0, 7, 10, 0, 
			0, 33, 2, 0, 5, 19, 0, 0, 3, 46, 0, 0, 0, 17, 16, 
			0, 64, 0, 5, 0, 15, 0, 0, 0, 71, 0, 0, 0, 0, 60, 
			0, 37, 0, 66, 0, 0, 0, 0, 0, 82, 0, 0, 0, 0, 29, 
			0, 10, 0, 0, 48, 0, 0, 0, 0, 138, 0, 0, 14, 0, 0, 
			0, 0, 0, 0, 64, 29, 0, 0, 0, 118, 0, 0, 4, 9, 0, 
			0, 0, 0, 0, 48, 57, 0, 0, 0, 79, 0, 0, 20, 6, 0, 
			0, 4, 0, 20, 0, 16, 0, 0, 29, 0, 2, 0, 20, 24, 13, 
			0, 4, 0, 56, 0, 7, 35, 0, 0, 0, 0, 0, 34, 32, 0, 
			43, 0, 0, 124, 0, 0, 38, 0, 0, 0, 0, 5, 13, 9, 0, 
			66, 31, 0, 88, 0, 0, 0, 0, 0, 0, 0, 5, 1, 2, 0, 
			0, 59, 71, 0, 0, 0, 0, 0, 0, 0, 6, 5, 0, 2, 10, 
			0, 1, 111, 0, 0, 7, 0, 0, 3, 3, 0, 0, 0, 15, 0, 
			0, 0, 3, 0, 0, 10, 3, 0, 7, 0, 0, 6, 33, 0, 0, 
			

			94, 98, 98, 98, 96, 93, 102, 107, 99, 84, 75, 78, 84, 86, 86, 
			97, 103, 102, 101, 100, 86, 88, 88, 73, 47, 28, 29, 45, 76, 84, 
			65, 88, 102, 104, 102, 79, 62, 40, 34, 24, 18, 20, 18, 38, 75, 
			27, 40, 95, 101, 83, 67, 44, 25, 19, 31, 28, 25, 21, 19, 57, 
			23, 28, 81, 88, 60, 37, 31, 22, 15, 29, 31, 25, 21, 20, 25, 
			6, 23, 80, 62, 42, 46, 37, 29, 14, 29, 23, 23, 22, 20, 19, 
			12, 9, 66, 84, 42, 43, 38, 31, 23, 20, 24, 17, 15, 21, 24, 
			12, 17, 21, 61, 50, 41, 22, 25, 34, 31, 29, 17, 19, 26, 52, 
			8, 8, 4, 31, 33, 29, 34, 22, 33, 31, 36, 21, 20, 49, 74, 
			20, 10, 10, 7, 26, 21, 30, 26, 10, 39, 21, 17, 28, 66, 81, 
			14, 16, 9, 18, 18, 10, 7, 12, 11, 1, 0, 0, 0, 0, 0, 
			0, 4, 23, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 10, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			63, 65, 65, 65, 64, 62, 68, 68, 65, 58, 49, 50, 52, 53, 51, 
			63, 65, 69, 67, 69, 75, 65, 60, 46, 41, 33, 28, 34, 49, 51, 
			45, 57, 65, 67, 68, 76, 47, 29, 25, 48, 43, 37, 27, 29, 50, 
			25, 41, 66, 70, 60, 52, 50, 28, 25, 56, 43, 36, 22, 12, 45, 
			46, 65, 63, 84, 87, 62, 52, 28, 18, 43, 59, 32, 29, 17, 18, 
			45, 72, 62, 46, 85, 71, 65, 44, 17, 67, 58, 30, 36, 27, 14, 
			48, 63, 59, 48, 62, 73, 85, 49, 34, 72, 54, 29, 27, 37, 29, 
			58, 69, 46, 50, 60, 95, 51, 51, 33, 67, 55, 30, 35, 37, 41, 
			68, 78, 30, 62, 38, 50, 47, 40, 49, 43, 50, 18, 18, 45, 60, 
			76, 77, 44, 57, 52, 28, 53, 62, 34, 46, 18, 11, 30, 60, 62, 
			78, 74, 45, 87, 75, 53, 65, 67, 35, 14, 12, 15, 24, 38, 32, 
			51, 68, 68, 112, 73, 22, 21, 21, 17, 14, 14, 14, 16, 20, 16, 
			10, 39, 71, 94, 25, 16, 14, 13, 11, 11, 15, 18, 20, 20, 23, 
			11, 12, 54, 63, 19, 18, 14, 13, 14, 15, 13, 17, 13, 19, 16, 
			9, 11, 14, 32, 8, 13, 18, 15, 19, 19, 14, 14, 30, 27, 7, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 
			0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 4, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 1, 0, 2, 5, 0, 0, 0, 0, 2, 
			0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 7, 4, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 0, 15, 
			0, 0, 0, 0, 0, 0, 13, 4, 0, 7, 0, 0, 6, 22, 2, 
			0, 0, 0, 14, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 5, 10, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 6, 
			0, 0, 0, 0, 0, 0, 15, 0, 28, 0, 0, 0, 0, 0, 0, 
			21, 0, 0, 0, 0, 0, 60, 26, 0, 0, 8, 8, 29, 0, 0, 
			91, 0, 0, 0, 3, 0, 0, 7, 0, 0, 55, 0, 44, 23, 0, 
			80, 0, 39, 0, 0, 0, 43, 36, 28, 0, 0, 45, 0, 36, 0, 
			54, 0, 59, 0, 0, 12, 33, 28, 59, 0, 58, 83, 0, 16, 5, 
			43, 20, 18, 63, 0, 0, 7, 30, 75, 0, 90, 40, 0, 0, 17, 
			14, 27, 5, 24, 0, 0, 106, 22, 54, 0, 51, 60, 0, 0, 26, 
			25, 0, 95, 0, 0, 8, 34, 0, 0, 19, 0, 97, 0, 0, 0, 
			2, 0, 116, 0, 43, 0, 0, 0, 0, 25, 84, 5, 0, 0, 6, 
			0, 0, 113, 0, 50, 0, 0, 23, 80, 31, 0, 0, 0, 0, 1, 
			0, 0, 20, 0, 151, 107, 6, 11, 19, 0, 0, 0, 0, 0, 0, 
			4, 0, 0, 0, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			22, 0, 0, 130, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 
			31, 0, 0, 35, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 
			

			78, 83, 82, 83, 84, 80, 85, 92, 89, 75, 65, 66, 69, 72, 73, 
			82, 88, 87, 86, 86, 77, 76, 79, 65, 43, 24, 26, 39, 61, 70, 
			61, 70, 86, 89, 87, 80, 54, 39, 25, 20, 9, 12, 13, 28, 60, 
			24, 33, 78, 90, 79, 62, 37, 16, 10, 22, 19, 17, 11, 9, 45, 
			11, 19, 63, 82, 51, 30, 23, 13, 9, 20, 24, 14, 14, 11, 20, 
			0, 14, 56, 56, 37, 30, 27, 21, 9, 23, 16, 13, 15, 12, 8, 
			0, 8, 44, 71, 43, 34, 32, 20, 15, 21, 14, 9, 9, 12, 10, 
			0, 12, 14, 48, 44, 34, 14, 18, 17, 29, 18, 10, 12, 13, 34, 
			1, 4, 0, 22, 22, 23, 24, 19, 22, 33, 28, 14, 10, 32, 58, 
			12, 5, 0, 8, 11, 15, 25, 20, 4, 27, 14, 10, 14, 53, 69, 
			11, 10, 1, 14, 5, 1, 4, 6, 0, 2, 0, 0, 0, 0, 3, 
			0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			49, 42, 45, 45, 50, 39, 50, 55, 47, 33, 25, 27, 30, 42, 42, 
			49, 45, 47, 47, 44, 9, 47, 29, 23, 3, 0, 19, 28, 28, 36, 
			21, 28, 50, 50, 55, 50, 24, 29, 4, 0, 0, 0, 6, 30, 24, 
			0, 30, 51, 46, 32, 19, 0, 0, 0, 5, 0, 9, 0, 14, 28, 
			0, 0, 47, 19, 0, 3, 0, 0, 6, 10, 0, 0, 0, 0, 40, 
			0, 0, 37, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 
			0, 0, 28, 23, 12, 0, 0, 0, 0, 0, 0, 0, 8, 0, 4, 
			0, 0, 20, 7, 17, 0, 0, 4, 0, 17, 0, 8, 0, 6, 27, 
			0, 0, 0, 0, 18, 25, 11, 0, 0, 49, 3, 7, 16, 18, 35, 
			0, 0, 0, 0, 0, 8, 0, 0, 22, 0, 0, 0, 0, 22, 30, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 
			7, 0, 0, 0, 3, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 
			5, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 
			2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 
			6, 13, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
			9, 12, 0, 20, 0, 0, 2, 0, 0, 0, 5, 5, 0, 0, 0, 
			21, 2, 0, 15, 0, 0, 27, 25, 15, 7, 11, 27, 32, 21, 13, 
			61, 44, 12, 9, 9, 39, 40, 40, 42, 48, 54, 59, 60, 59, 58, 
			68, 56, 42, 0, 29, 51, 52, 50, 50, 54, 62, 59, 64, 72, 67, 
			73, 66, 59, 26, 44, 54, 49, 48, 58, 59, 68, 70, 73, 70, 77, 
			70, 73, 65, 44, 49, 57, 62, 58, 57, 55, 57, 66, 68, 62, 68, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 19, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 10, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 
			0, 16, 0, 0, 0, 3, 2, 0, 0, 27, 0, 0, 0, 0, 0, 
			6, 4, 0, 0, 0, 20, 0, 0, 0, 9, 0, 0, 0, 0, 0, 
			11, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			5, 15, 0, 14, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 
			21, 13, 0, 34, 16, 17, 30, 4, 0, 0, 0, 9, 12, 0, 0, 
			24, 11, 0, 51, 6, 0, 3, 0, 0, 5, 12, 15, 18, 20, 17, 
			22, 22, 10, 35, 0, 12, 13, 10, 9, 13, 18, 23, 22, 18, 26, 
			18, 21, 35, 0, 0, 14, 13, 13, 14, 18, 21, 19, 16, 32, 27, 
			21, 23, 23, 0, 3, 10, 8, 9, 19, 21, 19, 15, 30, 36, 11, 
			

			3, 4, 10, 11, 9, 7, 10, 13, 11, 0, 0, 0, 0, 4, 2, 
			13, 16, 13, 10, 13, 38, 8, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 10, 12, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 12, 8, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 18, 0, 18, 33, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 
			0, 0, 0, 18, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 1, 5, 
			0, 0, 0, 2, 0, 6, 2, 0, 7, 0, 7, 0, 0, 0, 4, 
			0, 0, 0, 3, 0, 0, 29, 4, 0, 0, 1, 14, 19, 0, 1, 
			57, 0, 0, 0, 5, 0, 7, 0, 1, 0, 38, 0, 26, 5, 0, 
			62, 0, 16, 0, 23, 0, 25, 18, 10, 0, 6, 22, 1, 30, 0, 
			0, 0, 30, 0, 0, 0, 46, 20, 44, 0, 19, 37, 0, 16, 11, 
			0, 21, 3, 40, 0, 0, 11, 26, 47, 0, 46, 18, 0, 0, 10, 
			0, 44, 0, 35, 0, 0, 42, 0, 34, 0, 32, 24, 0, 0, 19, 
			10, 0, 30, 0, 0, 0, 18, 1, 0, 5, 0, 38, 0, 0, 0, 
			7, 0, 70, 0, 11, 0, 0, 28, 0, 0, 41, 3, 0, 0, 3, 
			0, 0, 64, 0, 85, 0, 0, 11, 45, 24, 0, 0, 0, 0, 0, 
			0, 0, 23, 0, 41, 31, 0, 0, 2, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			8, 0, 0, 83, 16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
			10, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 15, 23, 19, 0, 0, 
			0, 0, 0, 0, 0, 0, 8, 32, 8, 0, 0, 0, 0, 10, 0, 
			3, 21, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 1, 1, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 6, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 
			0, 0, 4, 7, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 
			0, 0, 0, 0, 0, 2, 12, 0, 0, 25, 0, 0, 0, 0, 0, 
			0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 16, 0, 0, 25, 31, 
			0, 0, 0, 0, 0, 26, 31, 27, 9, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 7, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 
			0, 0, 0, 0, 0, 0, 24, 0, 10, 0, 5, 7, 0, 0, 0, 
			9, 0, 0, 0, 0, 0, 29, 10, 0, 0, 8, 7, 28, 0, 0, 
			63, 0, 4, 0, 8, 0, 0, 11, 2, 0, 35, 0, 20, 16, 0, 
			55, 0, 39, 0, 0, 9, 33, 26, 14, 0, 2, 39, 0, 26, 0, 
			40, 0, 49, 0, 0, 3, 26, 22, 44, 0, 45, 47, 0, 13, 17, 
			37, 20, 8, 36, 0, 0, 0, 27, 44, 0, 54, 28, 0, 0, 18, 
			24, 17, 27, 22, 0, 0, 63, 4, 22, 0, 25, 34, 0, 0, 11, 
			26, 0, 71, 0, 15, 0, 12, 0, 0, 27, 0, 45, 0, 0, 0, 
			0, 0, 73, 0, 27, 2, 0, 6, 9, 0, 42, 0, 0, 0, 8, 
			0, 0, 68, 0, 67, 13, 0, 7, 50, 30, 0, 0, 0, 0, 4, 
			0, 0, 15, 0, 81, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			10, 0, 0, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			12, 0, 0, 52, 13, 0, 4, 0, 0, 0, 0, 0, 0, 0, 8, 
			21, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 3, 36, 
			

			0, 0, 2, 5, 4, 0, 2, 3, 3, 0, 0, 0, 4, 7, 8, 
			6, 3, 0, 5, 0, 41, 17, 0, 0, 0, 24, 8, 0, 0, 8, 
			0, 0, 3, 6, 0, 0, 17, 0, 0, 0, 11, 15, 26, 0, 0, 
			63, 0, 5, 0, 18, 0, 26, 14, 11, 0, 42, 0, 19, 14, 0, 
			58, 3, 28, 0, 56, 24, 30, 35, 12, 0, 16, 40, 10, 38, 0, 
			8, 0, 43, 0, 0, 0, 59, 24, 60, 0, 32, 30, 0, 20, 32, 
			21, 25, 0, 42, 0, 0, 0, 40, 38, 0, 36, 32, 0, 0, 26, 
			23, 30, 8, 36, 0, 0, 33, 0, 24, 0, 24, 26, 0, 0, 13, 
			30, 0, 63, 0, 23, 0, 4, 18, 0, 15, 0, 15, 0, 0, 3, 
			1, 0, 73, 0, 9, 0, 0, 42, 0, 0, 16, 0, 0, 0, 4, 
			0, 0, 54, 0, 133, 35, 0, 0, 36, 30, 7, 13, 0, 0, 0, 
			0, 0, 14, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			10, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 
			9, 0, 0, 31, 12, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 
			20, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 0, 0, 17, 28, 
			

			30, 33, 29, 30, 29, 29, 33, 38, 34, 31, 33, 31, 28, 29, 29, 
			28, 32, 30, 32, 27, 0, 31, 34, 47, 5, 0, 2, 15, 23, 24, 
			33, 29, 31, 35, 31, 37, 45, 28, 2, 0, 0, 0, 0, 9, 15, 
			9, 0, 27, 30, 27, 12, 0, 0, 0, 0, 12, 9, 13, 7, 1, 
			2, 0, 28, 4, 0, 0, 12, 8, 7, 0, 0, 6, 0, 0, 3, 
			15, 0, 35, 42, 12, 33, 0, 1, 0, 0, 12, 27, 0, 0, 0, 
			12, 0, 30, 44, 0, 0, 0, 3, 10, 0, 21, 5, 0, 0, 0, 
			3, 0, 0, 6, 0, 0, 30, 17, 13, 0, 15, 14, 0, 0, 18, 
			0, 0, 17, 0, 6, 30, 18, 0, 0, 10, 12, 41, 2, 0, 3, 
			0, 0, 11, 0, 7, 8, 0, 0, 0, 27, 31, 8, 0, 0, 28, 
			0, 0, 15, 0, 0, 0, 0, 2, 11, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 39, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;

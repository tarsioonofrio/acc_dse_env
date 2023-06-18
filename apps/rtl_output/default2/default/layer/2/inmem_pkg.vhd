LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=2
					-374, 6330, 6779, 3341, -3714, -5335, -662, -1025, 11144, 7559, 13198, -1275, 14311, -1299, 15614, -7848, -3284, 4801, 1186, 1148, 9178, -4382, -1212, 17311, -4066, 6988, -3144, 985, -500, -1098, -1955, 12560, 1006, 14225, -1616, 4918, -3378, 731, 3053, -9264, -955, 12873, -929, 3491, -6936, 9114, 13700, -7793, 11836, 8755, -7070, -1625, 11181, 4698, -1304, 2510, 4781, 11326, -4318, 7784, 13429, 9591, 13114, -1726, -1897, -1445, 12042, -1653, 7536, 5164, -1766, -1072, 471, -1409, 1906, 3176, -3398, 12527, 10200, 7038, 3324, 7949, -748, 9209, -9, 7708, 1562, -1829, -1191, -1152, 4368, 15213, -4062, -3588, -34, -118, 10442, 2606, 330, 1908, 13813, 10919, 1832, 12578, 13467, 13131, -5265, -796, -1159, -3801, -6754, 8370, -1660, 4956, 1265, 1107, 5509, 3483, 7044, 5256, -2858, -10106, 5206, -66, -8612, -2197, -7202, -1646,

					-- weights
					-- layer=2 filter=0 channel=0
					30, 12, 2, 13, 2, -7, -4, 11, 35,
					-- layer=2 filter=0 channel=1
					-34, 4, -72, -41, -21, -2, -31, -70, -43,
					-- layer=2 filter=0 channel=2
					-3, -21, 3, -10, -29, 17, 15, 22, 24,
					-- layer=2 filter=0 channel=3
					14, -9, 31, -5, -2, 28, -4, -9, 0,
					-- layer=2 filter=0 channel=4
					7, -31, -17, 16, -21, -12, -6, 0, -2,
					-- layer=2 filter=0 channel=5
					-52, 23, -40, -38, 1, -3, 8, -47, -44,
					-- layer=2 filter=0 channel=6
					-15, -10, -30, -4, -21, -10, -89, -37, -8,
					-- layer=2 filter=0 channel=7
					27, 12, 6, 6, -11, 21, -18, 3, 10,
					-- layer=2 filter=0 channel=8
					-26, -48, -4, -21, -36, 16, -13, -30, 29,
					-- layer=2 filter=0 channel=9
					-64, -29, 0, -53, -56, -27, -47, -3, -49,
					-- layer=2 filter=0 channel=10
					-43, -23, 5, 7, 10, 11, 9, 22, 32,
					-- layer=2 filter=0 channel=11
					-4, -18, -13, -1, 45, 36, 64, 26, 45,
					-- layer=2 filter=0 channel=12
					9, -15, 0, 5, -19, 4, 33, -2, 20,
					-- layer=2 filter=0 channel=13
					-66, 2, 9, -10, 53, 31, 55, 59, -13,
					-- layer=2 filter=0 channel=14
					0, 33, 1, 0, 13, -11, -45, -5, 9,
					-- layer=2 filter=0 channel=15
					8, 59, 14, -1, 12, 17, 11, 8, 32,
					-- layer=2 filter=0 channel=16
					-2, -3, -21, -29, -4, 23, -46, -29, 17,
					-- layer=2 filter=0 channel=17
					32, 20, 24, -21, 19, 31, -11, 1, 16,
					-- layer=2 filter=0 channel=18
					-50, 40, -40, 65, 33, 17, 45, 52, -32,
					-- layer=2 filter=0 channel=19
					-13, -40, -12, -3, -50, -29, 15, -5, 30,
					-- layer=2 filter=0 channel=20
					-6, -8, -13, -29, 4, 26, 9, 2, 15,
					-- layer=2 filter=0 channel=21
					9, 34, -7, 7, -9, 14, -4, 18, -4,
					-- layer=2 filter=0 channel=22
					16, 18, 12, -29, 0, 3, -72, -21, 12,
					-- layer=2 filter=0 channel=23
					3, 31, 0, -52, 10, 17, -75, 9, 30,
					-- layer=2 filter=0 channel=24
					29, 11, 9, -1, 13, 32, 3, 2, -1,
					-- layer=2 filter=0 channel=25
					-48, -24, 4, 17, -11, 34, -92, -16, 8,
					-- layer=2 filter=0 channel=26
					3, 2, 18, -7, 7, 2, -6, -8, -2,
					-- layer=2 filter=0 channel=27
					12, -5, 9, -10, 10, 14, 0, -10, 12,
					-- layer=2 filter=0 channel=28
					-5, -15, 4, -6, 0, 4, -22, 7, 7,
					-- layer=2 filter=0 channel=29
					0, 1, 28, -23, -22, 57, 3, -3, 29,
					-- layer=2 filter=0 channel=30
					-13, 8, 44, -15, -3, 38, -40, -6, 0,
					-- layer=2 filter=0 channel=31
					-14, -31, 9, 0, -42, 12, -23, -18, 31,
					-- layer=2 filter=0 channel=32
					-1, -26, -26, -33, -12, 1, -7, -28, -2,
					-- layer=2 filter=0 channel=33
					-18, -17, -10, -9, 20, 5, -48, -4, -7,
					-- layer=2 filter=0 channel=34
					19, 21, 22, 50, -5, 6, 24, 28, 32,
					-- layer=2 filter=0 channel=35
					-36, 28, -25, -80, -72, -63, -66, -12, -24,
					-- layer=2 filter=0 channel=36
					15, -15, -2, -6, -14, 9, 30, 10, 17,
					-- layer=2 filter=0 channel=37
					8, 38, 14, 16, -5, -1, -25, 41, 17,
					-- layer=2 filter=0 channel=38
					-39, -32, -15, -32, -33, -42, -61, -82, -57,
					-- layer=2 filter=0 channel=39
					8, 19, 0, 35, 24, -12, 17, 16, 31,
					-- layer=2 filter=0 channel=40
					2, -14, 5, -25, -29, -25, -43, -55, -58,
					-- layer=2 filter=0 channel=41
					13, 5, 5, 10, 31, 2, -63, 2, 6,
					-- layer=2 filter=0 channel=42
					11, -12, 6, -8, -16, -2, -27, 2, 32,
					-- layer=2 filter=0 channel=43
					24, 7, 1, -24, 8, 23, 12, 2, 36,
					-- layer=2 filter=0 channel=44
					12, -18, -12, 8, -21, 6, 37, 0, -2,
					-- layer=2 filter=0 channel=45
					29, -1, 0, 4, 17, 2, -18, -12, -20,
					-- layer=2 filter=0 channel=46
					-87, -11, -24, -40, -112, -55, -74, -59, -19,
					-- layer=2 filter=0 channel=47
					48, 0, -15, -2, -8, 24, -54, -18, 20,
					-- layer=2 filter=0 channel=48
					26, -8, 6, 14, -21, 2, 3, -3, 19,
					-- layer=2 filter=0 channel=49
					-2, -2, -9, -15, 15, -1, 22, 16, -1,
					-- layer=2 filter=0 channel=50
					26, 29, 3, 36, 10, 7, 6, 10, -7,
					-- layer=2 filter=0 channel=51
					29, 5, 50, -56, 16, 0, -37, -11, 34,
					-- layer=2 filter=0 channel=52
					-35, -16, 0, 13, 8, 11, 40, 27, 23,
					-- layer=2 filter=0 channel=53
					-11, 11, 7, 8, -20, 8, -65, 13, -21,
					-- layer=2 filter=0 channel=54
					8, 0, 20, -16, 7, 12, 15, 25, 27,
					-- layer=2 filter=0 channel=55
					-39, 24, 1, -31, 54, 38, 17, 50, 3,
					-- layer=2 filter=0 channel=56
					-28, -6, 28, -11, -15, 20, -26, 11, 12,
					-- layer=2 filter=0 channel=57
					-6, -22, 19, -7, 9, -5, -12, 18, 19,
					-- layer=2 filter=0 channel=58
					-59, -34, 0, 46, 36, 15, 11, 32, 0,
					-- layer=2 filter=0 channel=59
					-16, -6, -7, -2, 21, 40, -66, 18, -6,
					-- layer=2 filter=0 channel=60
					-32, -5, 55, -46, -44, 9, -114, 2, -33,
					-- layer=2 filter=0 channel=61
					-20, 20, 0, 0, 13, -11, 18, -47, 36,
					-- layer=2 filter=0 channel=62
					8, -26, 27, 21, 22, 54, -25, -14, 39,
					-- layer=2 filter=0 channel=63
					32, -6, -10, -3, 0, 16, -11, -3, -40,
					-- layer=2 filter=1 channel=0
					1, 17, 12, 54, 17, -14, 9, -32, -39,
					-- layer=2 filter=1 channel=1
					-29, -56, -10, -17, -2, -8, 11, 19, -4,
					-- layer=2 filter=1 channel=2
					-33, -21, 9, -42, 21, 54, 21, 8, 33,
					-- layer=2 filter=1 channel=3
					19, -7, -22, 64, -22, -7, 0, -30, -7,
					-- layer=2 filter=1 channel=4
					-20, -27, 9, -8, 26, -4, -13, -6, 8,
					-- layer=2 filter=1 channel=5
					-27, -8, -16, 25, 30, 21, 37, 38, -13,
					-- layer=2 filter=1 channel=6
					54, 5, -35, 42, 7, -55, 9, -35, -10,
					-- layer=2 filter=1 channel=7
					7, 36, -24, -1, -25, -60, -66, -26, 33,
					-- layer=2 filter=1 channel=8
					-52, -56, -67, -36, -57, -35, -77, -37, -33,
					-- layer=2 filter=1 channel=9
					-23, -83, -3, -51, -26, -34, 0, 4, -12,
					-- layer=2 filter=1 channel=10
					5, -32, -11, -50, -42, 0, 15, 26, 29,
					-- layer=2 filter=1 channel=11
					17, -2, 56, 4, 11, 18, 1, 6, -22,
					-- layer=2 filter=1 channel=12
					-30, -12, 10, -36, 13, 54, -43, 6, 20,
					-- layer=2 filter=1 channel=13
					17, -86, 24, 20, 41, 51, 82, 29, 28,
					-- layer=2 filter=1 channel=14
					45, -62, -37, -11, -18, -35, 39, -23, -9,
					-- layer=2 filter=1 channel=15
					25, -2, 1, -21, -39, -52, -46, -74, -18,
					-- layer=2 filter=1 channel=16
					22, -37, 19, -7, 9, 54, -4, 3, 43,
					-- layer=2 filter=1 channel=17
					-14, -4, 31, -6, 0, -1, 11, -26, 20,
					-- layer=2 filter=1 channel=18
					-32, -19, -41, 15, 6, 47, 29, 12, -16,
					-- layer=2 filter=1 channel=19
					-46, -10, 24, -40, -11, 22, -44, 11, 18,
					-- layer=2 filter=1 channel=20
					-5, -20, 24, -38, -20, 37, -57, -47, 15,
					-- layer=2 filter=1 channel=21
					8, 9, -16, 6, -28, -19, -31, -45, -69,
					-- layer=2 filter=1 channel=22
					25, 42, -6, 29, -27, -10, 1, -45, -13,
					-- layer=2 filter=1 channel=23
					59, -16, -22, 18, -13, -19, 56, 27, 15,
					-- layer=2 filter=1 channel=24
					-13, -22, 30, -26, 5, 41, -16, -2, 34,
					-- layer=2 filter=1 channel=25
					-46, -30, -39, 26, -42, -47, -49, 12, 28,
					-- layer=2 filter=1 channel=26
					-16, 7, 0, -8, 5, -11, 6, 8, -2,
					-- layer=2 filter=1 channel=27
					-10, -8, -11, -3, 14, 12, 10, 6, -7,
					-- layer=2 filter=1 channel=28
					-11, 2, 1, -1, -17, -4, -8, -1, 20,
					-- layer=2 filter=1 channel=29
					-32, 16, 27, -30, 19, 41, -43, -35, 5,
					-- layer=2 filter=1 channel=30
					-38, 22, 13, -10, -51, 44, -29, -23, -3,
					-- layer=2 filter=1 channel=31
					-14, -51, -47, -19, -44, 0, -12, 23, -22,
					-- layer=2 filter=1 channel=32
					22, -72, 11, -11, -21, -1, 8, 4, -2,
					-- layer=2 filter=1 channel=33
					29, -18, -27, 22, 13, -36, -6, -11, -13,
					-- layer=2 filter=1 channel=34
					4, 33, -4, 18, -18, -49, -6, -43, -25,
					-- layer=2 filter=1 channel=35
					-1, -14, -76, -37, -26, -11, -32, 31, -21,
					-- layer=2 filter=1 channel=36
					-43, 2, 1, -29, 14, 37, -36, -17, 37,
					-- layer=2 filter=1 channel=37
					28, 23, 7, 26, -40, -23, 18, -14, -19,
					-- layer=2 filter=1 channel=38
					7, 8, 12, 12, 16, -18, 32, -18, -8,
					-- layer=2 filter=1 channel=39
					4, 24, 9, 0, 3, -23, 35, 14, -57,
					-- layer=2 filter=1 channel=40
					-16, 12, 37, 4, 3, -31, 18, -14, -16,
					-- layer=2 filter=1 channel=41
					37, -3, -48, 5, -35, -44, -1, -25, 26,
					-- layer=2 filter=1 channel=42
					-38, -34, -2, -62, 43, 20, 52, 35, 1,
					-- layer=2 filter=1 channel=43
					21, -12, 24, -25, 37, 53, -31, -5, 41,
					-- layer=2 filter=1 channel=44
					-16, 0, 1, 9, 15, 38, -15, 5, 29,
					-- layer=2 filter=1 channel=45
					27, 6, -66, 47, -38, -64, 16, -20, -40,
					-- layer=2 filter=1 channel=46
					-47, -63, -51, -52, -22, -3, -20, 9, -3,
					-- layer=2 filter=1 channel=47
					9, -4, -38, 12, -7, -34, -45, -2, 16,
					-- layer=2 filter=1 channel=48
					-11, -11, 4, -45, -8, 26, -9, -4, 11,
					-- layer=2 filter=1 channel=49
					40, 72, -16, 94, -9, -27, 60, 0, 0,
					-- layer=2 filter=1 channel=50
					-20, 9, 0, 2, -87, -33, 15, -77, 24,
					-- layer=2 filter=1 channel=51
					-28, -27, -7, -37, 11, 8, -10, -14, -30,
					-- layer=2 filter=1 channel=52
					23, -16, 20, -28, -5, 14, 12, 0, 20,
					-- layer=2 filter=1 channel=53
					46, 28, -39, 13, -59, -42, 1, -14, -29,
					-- layer=2 filter=1 channel=54
					0, -11, 34, 3, 46, 4, -17, -8, 38,
					-- layer=2 filter=1 channel=55
					27, -24, 39, -8, 25, 11, 31, 7, 40,
					-- layer=2 filter=1 channel=56
					1, -1, -23, -14, -14, -4, 20, 36, -16,
					-- layer=2 filter=1 channel=57
					43, -36, -15, 38, 4, -36, 4, -22, -2,
					-- layer=2 filter=1 channel=58
					-34, 30, 42, 8, 65, 30, 45, 30, 4,
					-- layer=2 filter=1 channel=59
					44, 4, -31, 45, -72, -15, 17, 20, -3,
					-- layer=2 filter=1 channel=60
					-8, -87, -10, 7, -28, -41, 39, 23, 3,
					-- layer=2 filter=1 channel=61
					1, -42, -44, 21, 105, 39, 60, -34, -58,
					-- layer=2 filter=1 channel=62
					5, -13, -18, -8, 29, -35, 16, 37, -2,
					-- layer=2 filter=1 channel=63
					-17, 0, -57, 36, -53, 3, -9, -9, -28,
					-- layer=2 filter=2 channel=0
					13, -26, -16, -46, 16, -5, 22, -43, -24,
					-- layer=2 filter=2 channel=1
					-24, 30, -10, -14, 17, 7, 20, -22, 24,
					-- layer=2 filter=2 channel=2
					-25, 8, -1, 9, -28, 33, -30, -33, 23,
					-- layer=2 filter=2 channel=3
					-5, -50, -45, -45, -60, -60, -10, 28, -3,
					-- layer=2 filter=2 channel=4
					1, 6, 27, 34, -19, 16, 4, -32, -37,
					-- layer=2 filter=2 channel=5
					63, 20, 5, 31, 55, 51, 80, 58, 69,
					-- layer=2 filter=2 channel=6
					-79, -19, -40, 11, 17, -20, -22, -25, -12,
					-- layer=2 filter=2 channel=7
					-33, 20, -25, -45, -7, 1, 69, -14, 23,
					-- layer=2 filter=2 channel=8
					27, -36, -9, -39, -84, -30, -12, -26, -2,
					-- layer=2 filter=2 channel=9
					-41, 14, 45, 6, 7, 27, 0, -42, -35,
					-- layer=2 filter=2 channel=10
					0, 14, 8, -11, 0, -24, -9, -14, 23,
					-- layer=2 filter=2 channel=11
					-16, 16, 22, -26, 15, -20, 5, 16, -4,
					-- layer=2 filter=2 channel=12
					-56, -26, 2, -15, -34, 20, -44, -45, 12,
					-- layer=2 filter=2 channel=13
					70, -14, 13, 60, 45, 13, 32, 36, 45,
					-- layer=2 filter=2 channel=14
					-99, -28, 4, 26, -10, -9, 3, -15, -4,
					-- layer=2 filter=2 channel=15
					23, 6, -27, -37, 20, -29, 0, -39, -9,
					-- layer=2 filter=2 channel=16
					-29, -34, -17, -3, -27, -30, -22, -21, 18,
					-- layer=2 filter=2 channel=17
					-11, -17, -22, 15, -3, -15, -57, 21, 44,
					-- layer=2 filter=2 channel=18
					27, 18, -9, -28, 68, 68, 7, 55, 9,
					-- layer=2 filter=2 channel=19
					-9, -54, 20, -12, -56, 31, -17, -28, 31,
					-- layer=2 filter=2 channel=20
					-59, -32, -5, -37, -77, -6, -51, -89, -27,
					-- layer=2 filter=2 channel=21
					11, -33, -20, 18, 4, -44, -30, 11, -41,
					-- layer=2 filter=2 channel=22
					-10, -30, -12, -2, -26, 4, -19, 12, 56,
					-- layer=2 filter=2 channel=23
					9, 4, -10, 14, 24, 15, -24, 0, -31,
					-- layer=2 filter=2 channel=24
					-14, -24, -32, -5, -8, 0, -14, -3, -13,
					-- layer=2 filter=2 channel=25
					69, 56, 50, 9, 81, 43, 48, 11, 35,
					-- layer=2 filter=2 channel=26
					-6, -9, 15, 7, 18, 7, 17, -13, -9,
					-- layer=2 filter=2 channel=27
					-13, -10, -2, 1, 10, 7, -8, -1, 12,
					-- layer=2 filter=2 channel=28
					1, 13, -3, -8, 24, -3, -1, 4, 0,
					-- layer=2 filter=2 channel=29
					-74, -84, -47, -64, -51, 0, -58, -23, 35,
					-- layer=2 filter=2 channel=30
					-37, -36, 3, -14, -23, 11, -35, 43, 27,
					-- layer=2 filter=2 channel=31
					-17, -9, 1, 37, -21, -1, 10, -49, -47,
					-- layer=2 filter=2 channel=32
					9, -14, -40, -1, -1, -37, -28, 28, 1,
					-- layer=2 filter=2 channel=33
					20, -34, -40, 0, 31, 0, -35, 44, -4,
					-- layer=2 filter=2 channel=34
					-1, -45, -42, -52, 10, -1, 10, -44, -38,
					-- layer=2 filter=2 channel=35
					-12, -24, 29, -2, 3, -17, -12, -42, -19,
					-- layer=2 filter=2 channel=36
					-62, -43, 14, -35, -32, 19, -44, -69, 7,
					-- layer=2 filter=2 channel=37
					-34, -21, -44, -8, 36, 22, 28, 0, -6,
					-- layer=2 filter=2 channel=38
					-21, 41, 52, 39, 61, 42, 64, 52, 3,
					-- layer=2 filter=2 channel=39
					9, 18, -16, 19, 8, 39, 31, 17, 37,
					-- layer=2 filter=2 channel=40
					-19, 13, 63, 19, 15, 26, 20, 29, 6,
					-- layer=2 filter=2 channel=41
					-13, -9, -42, -18, 10, -24, -26, -2, -44,
					-- layer=2 filter=2 channel=42
					11, 12, 2, 20, -2, 33, 3, 16, 24,
					-- layer=2 filter=2 channel=43
					-61, -34, 7, 53, 40, 38, 21, 67, 76,
					-- layer=2 filter=2 channel=44
					20, 41, 37, 37, 8, 43, 9, 11, 4,
					-- layer=2 filter=2 channel=45
					-14, -43, -52, -19, 1, -37, -54, 43, -5,
					-- layer=2 filter=2 channel=46
					0, 39, 18, 5, -4, -1, 23, -14, -6,
					-- layer=2 filter=2 channel=47
					-18, -11, -9, -20, -11, -6, -47, -32, -11,
					-- layer=2 filter=2 channel=48
					-44, -40, -16, 0, -23, -4, -21, -30, 18,
					-- layer=2 filter=2 channel=49
					13, 38, 33, 12, 3, -11, 19, 15, 10,
					-- layer=2 filter=2 channel=50
					37, -32, -31, -13, -1, -12, 22, 35, -30,
					-- layer=2 filter=2 channel=51
					6, 8, 13, -9, 27, -23, 68, 6, -34,
					-- layer=2 filter=2 channel=52
					-41, 14, 4, -36, -15, -40, -24, -57, 6,
					-- layer=2 filter=2 channel=53
					8, 31, -11, 31, 10, -46, 7, -15, -50,
					-- layer=2 filter=2 channel=54
					-66, -28, -3, -2, 1, 0, -35, 9, 20,
					-- layer=2 filter=2 channel=55
					-64, 1, 18, -78, -22, -24, -54, -10, 43,
					-- layer=2 filter=2 channel=56
					-11, 20, 20, -4, 0, 19, -11, -17, -16,
					-- layer=2 filter=2 channel=57
					44, -21, 8, 2, 33, -3, -7, 15, -26,
					-- layer=2 filter=2 channel=58
					21, 27, 17, 20, 13, 32, 59, 68, 54,
					-- layer=2 filter=2 channel=59
					-32, -4, -26, -10, 17, 16, -8, -20, 5,
					-- layer=2 filter=2 channel=60
					11, 18, 6, -8, 36, -10, 7, 20, -7,
					-- layer=2 filter=2 channel=61
					90, 17, 39, 9, 73, -9, 104, 32, 0,
					-- layer=2 filter=2 channel=62
					-4, 27, 78, 28, 23, 82, 19, 17, -35,
					-- layer=2 filter=2 channel=63
					-28, -41, -64, -50, -56, -36, -36, 27, 22,
					-- layer=2 filter=3 channel=0
					55, -73, -31, -47, -48, -47, 6, -8, -22,
					-- layer=2 filter=3 channel=1
					36, -24, -33, 52, 4, -6, 21, -30, -3,
					-- layer=2 filter=3 channel=2
					-12, 8, 10, 6, 4, 22, -26, -2, 7,
					-- layer=2 filter=3 channel=3
					-37, -5, -23, -32, -29, -26, -10, -23, -2,
					-- layer=2 filter=3 channel=4
					-13, -12, 18, -6, -18, 12, -19, -55, -3,
					-- layer=2 filter=3 channel=5
					56, 70, -18, 58, 24, 10, 11, 49, -33,
					-- layer=2 filter=3 channel=6
					-20, 10, -19, 6, -18, 1, 27, 21, -6,
					-- layer=2 filter=3 channel=7
					-97, -88, -69, -42, -47, -35, -59, -67, -28,
					-- layer=2 filter=3 channel=8
					59, 69, 30, 33, 11, -19, 22, 16, -21,
					-- layer=2 filter=3 channel=9
					-2, 11, -12, 41, 35, 14, 55, 38, 16,
					-- layer=2 filter=3 channel=10
					6, -14, 8, 55, -4, 20, 0, 30, 25,
					-- layer=2 filter=3 channel=11
					-10, -71, -14, -11, -43, 2, -4, -26, -24,
					-- layer=2 filter=3 channel=12
					2, 22, 37, 7, -5, 9, -20, -18, -7,
					-- layer=2 filter=3 channel=13
					31, 42, -14, 64, 30, 7, 1, -11, -19,
					-- layer=2 filter=3 channel=14
					-35, -9, -17, -28, 25, 16, 1, 16, 12,
					-- layer=2 filter=3 channel=15
					-6, -22, -15, 7, 2, -31, 10, 13, -5,
					-- layer=2 filter=3 channel=16
					-9, 42, 39, 3, 11, 36, -15, 5, 2,
					-- layer=2 filter=3 channel=17
					-25, 16, 6, -31, 9, -5, 12, 5, 24,
					-- layer=2 filter=3 channel=18
					20, 58, 36, 13, 33, -9, 3, -41, 11,
					-- layer=2 filter=3 channel=19
					5, 28, 22, 23, 27, 34, -29, -21, -16,
					-- layer=2 filter=3 channel=20
					-14, 18, -1, -3, 19, 9, -8, 2, 8,
					-- layer=2 filter=3 channel=21
					-23, -29, -13, 4, 17, -4, 15, 13, 6,
					-- layer=2 filter=3 channel=22
					-24, -28, -31, 2, 2, -7, -8, 5, -1,
					-- layer=2 filter=3 channel=23
					-11, -8, -16, 1, -11, 12, 25, 17, 11,
					-- layer=2 filter=3 channel=24
					6, 10, 37, -23, 12, 22, 8, -9, 8,
					-- layer=2 filter=3 channel=25
					-12, -6, -29, -1, 10, -57, 3, 38, 45,
					-- layer=2 filter=3 channel=26
					13, 2, -5, -14, 6, -6, 3, -10, 0,
					-- layer=2 filter=3 channel=27
					1, 4, 3, -5, -3, -10, -5, 11, -2,
					-- layer=2 filter=3 channel=28
					-11, -14, -17, -13, -13, -1, -23, -20, 4,
					-- layer=2 filter=3 channel=29
					9, 14, -37, 6, 4, -21, -23, 18, 17,
					-- layer=2 filter=3 channel=30
					-5, 4, -13, -3, 3, -6, 15, 11, -13,
					-- layer=2 filter=3 channel=31
					14, -3, -22, 48, 10, 23, 13, 25, 17,
					-- layer=2 filter=3 channel=32
					-13, 19, 22, 5, 7, 26, -3, -1, -4,
					-- layer=2 filter=3 channel=33
					-27, 3, 0, 6, -35, 4, 39, 19, -26,
					-- layer=2 filter=3 channel=34
					11, -41, -6, -44, -46, -37, -27, -3, -39,
					-- layer=2 filter=3 channel=35
					19, -1, -44, 73, 48, 0, 41, 68, 32,
					-- layer=2 filter=3 channel=36
					-8, -7, 26, -27, 0, 10, -13, -18, -5,
					-- layer=2 filter=3 channel=37
					-23, -59, -38, -10, -44, 5, 25, 12, -4,
					-- layer=2 filter=3 channel=38
					16, 17, -23, 52, 56, -16, 30, -14, 11,
					-- layer=2 filter=3 channel=39
					20, -88, -49, -43, -85, -32, -72, -58, -55,
					-- layer=2 filter=3 channel=40
					-14, 23, 0, 20, 62, 8, -21, -4, 13,
					-- layer=2 filter=3 channel=41
					-36, 0, -3, -28, -13, 6, 22, 16, 8,
					-- layer=2 filter=3 channel=42
					40, 17, -7, 36, 8, -5, -15, -5, -4,
					-- layer=2 filter=3 channel=43
					-14, 1, 60, -2, 7, 14, 9, -4, 24,
					-- layer=2 filter=3 channel=44
					-38, -14, -5, 1, -16, 12, -32, -25, 20,
					-- layer=2 filter=3 channel=45
					-19, 3, -12, -12, -15, 5, 17, -30, 0,
					-- layer=2 filter=3 channel=46
					6, -27, -30, 52, -14, -21, 62, -45, -8,
					-- layer=2 filter=3 channel=47
					-28, -23, 8, 4, -6, -4, 27, -22, -29,
					-- layer=2 filter=3 channel=48
					1, 12, 14, 4, 2, 1, -14, -4, -16,
					-- layer=2 filter=3 channel=49
					51, -35, 40, 15, -47, -10, 0, -18, 25,
					-- layer=2 filter=3 channel=50
					-9, -3, -4, -15, 34, 19, 9, 17, -5,
					-- layer=2 filter=3 channel=51
					-25, -53, 10, 3, 3, -13, 13, -13, 29,
					-- layer=2 filter=3 channel=52
					-21, -44, -38, 12, 8, 7, -36, -2, 15,
					-- layer=2 filter=3 channel=53
					-10, -58, -35, -14, -50, -32, 5, -6, -21,
					-- layer=2 filter=3 channel=54
					-63, -12, 6, -20, -11, 29, -14, -9, 8,
					-- layer=2 filter=3 channel=55
					-19, -79, -53, 0, -28, 0, -29, -43, -26,
					-- layer=2 filter=3 channel=56
					-5, -6, -29, 19, -1, -8, 21, 11, 32,
					-- layer=2 filter=3 channel=57
					-42, -3, 30, -37, -9, 4, 29, 11, -7,
					-- layer=2 filter=3 channel=58
					7, -39, -21, -4, -77, 3, 2, -57, -53,
					-- layer=2 filter=3 channel=59
					-23, 1, -38, 8, -22, 5, -11, 43, 25,
					-- layer=2 filter=3 channel=60
					31, 19, -60, 64, 22, -29, 36, 73, -2,
					-- layer=2 filter=3 channel=61
					55, -27, 29, -19, -10, -4, 20, 10, 4,
					-- layer=2 filter=3 channel=62
					14, -27, 37, -13, 0, 5, -23, -7, -31,
					-- layer=2 filter=3 channel=63
					-22, 26, -31, -21, -8, -14, -1, -30, 8,
					-- layer=2 filter=4 channel=0
					26, -3, 20, 15, 1, 39, 2, 23, 27,
					-- layer=2 filter=4 channel=1
					40, 15, 29, 24, 36, 30, -3, 3, 2,
					-- layer=2 filter=4 channel=2
					3, 7, 13, -13, 1, -5, -9, 0, 9,
					-- layer=2 filter=4 channel=3
					8, 10, 0, -13, -4, 20, 12, 12, 25,
					-- layer=2 filter=4 channel=4
					-2, -21, -52, -7, 19, -23, 9, 16, 23,
					-- layer=2 filter=4 channel=5
					90, 49, 23, 55, 22, 14, 0, 27, 11,
					-- layer=2 filter=4 channel=6
					-12, 8, -11, -13, 18, 16, -13, -15, 33,
					-- layer=2 filter=4 channel=7
					44, 4, 14, 30, -12, 42, -36, -82, -41,
					-- layer=2 filter=4 channel=8
					30, 13, 25, -26, 10, 4, 25, 41, 36,
					-- layer=2 filter=4 channel=9
					-5, 10, -5, -1, 18, -27, -66, -63, -34,
					-- layer=2 filter=4 channel=10
					-28, -8, 36, 18, -24, 10, -60, -68, -38,
					-- layer=2 filter=4 channel=11
					-16, 15, 2, -60, -25, 14, -40, -38, 15,
					-- layer=2 filter=4 channel=12
					7, 4, -2, 3, 12, 15, 5, 18, -1,
					-- layer=2 filter=4 channel=13
					6, 43, 23, 57, -25, 10, 53, -59, 0,
					-- layer=2 filter=4 channel=14
					6, -8, -31, -20, -4, -4, -11, -9, 17,
					-- layer=2 filter=4 channel=15
					-30, 10, 8, 2, -22, -4, -59, -64, -51,
					-- layer=2 filter=4 channel=16
					-22, -23, 7, -3, 0, 42, 1, -8, -3,
					-- layer=2 filter=4 channel=17
					-10, 3, 8, -32, 0, -3, -5, 0, 7,
					-- layer=2 filter=4 channel=18
					49, -13, 7, 28, -62, -8, 3, -20, 16,
					-- layer=2 filter=4 channel=19
					40, -1, 27, -8, 4, 1, -8, 36, 22,
					-- layer=2 filter=4 channel=20
					28, -6, -1, -4, 0, 3, -5, 36, 7,
					-- layer=2 filter=4 channel=21
					-21, -40, 8, 0, -2, 25, -6, -7, -28,
					-- layer=2 filter=4 channel=22
					8, 18, -1, -8, -16, 2, 0, -12, -20,
					-- layer=2 filter=4 channel=23
					-23, -18, 13, -1, 0, 30, -34, 6, 17,
					-- layer=2 filter=4 channel=24
					-5, 3, 15, 11, 2, -13, 11, 26, 10,
					-- layer=2 filter=4 channel=25
					-36, 11, -16, 82, -79, -88, -52, -59, -57,
					-- layer=2 filter=4 channel=26
					5, 4, -6, 0, -9, 0, -20, -10, 11,
					-- layer=2 filter=4 channel=27
					0, -12, 0, 6, -3, 3, -7, -4, -6,
					-- layer=2 filter=4 channel=28
					4, 13, -8, -14, -16, 0, 16, -4, -1,
					-- layer=2 filter=4 channel=29
					-14, -26, 20, 13, -8, 7, 3, 1, 2,
					-- layer=2 filter=4 channel=30
					16, -40, -8, 10, -2, -26, 18, 0, -34,
					-- layer=2 filter=4 channel=31
					36, -9, 15, -5, -38, -24, -22, -37, 2,
					-- layer=2 filter=4 channel=32
					-3, -28, 22, -27, -15, 42, -33, 8, 6,
					-- layer=2 filter=4 channel=33
					-31, -30, 9, -13, 12, 36, -29, -12, -9,
					-- layer=2 filter=4 channel=34
					0, -12, 13, -13, -14, -11, -16, -9, 0,
					-- layer=2 filter=4 channel=35
					38, -13, 34, 30, 23, -11, -2, 0, -11,
					-- layer=2 filter=4 channel=36
					5, 9, -15, -11, 5, 3, 23, 37, 28,
					-- layer=2 filter=4 channel=37
					-4, -31, -3, -44, -70, -16, -18, -16, -2,
					-- layer=2 filter=4 channel=38
					30, 29, -12, 1, 23, -17, -5, -9, -21,
					-- layer=2 filter=4 channel=39
					23, 0, -2, -4, 4, 21, -4, 25, -7,
					-- layer=2 filter=4 channel=40
					34, 28, 1, 25, 23, -6, 12, 9, 3,
					-- layer=2 filter=4 channel=41
					-17, 9, 15, 10, 16, 39, -27, 0, -8,
					-- layer=2 filter=4 channel=42
					-7, -9, 0, -20, -26, -1, 33, 6, 19,
					-- layer=2 filter=4 channel=43
					-47, -11, 14, -57, -20, 22, -16, 13, 21,
					-- layer=2 filter=4 channel=44
					-17, -11, -3, -28, -17, -14, -20, -9, -16,
					-- layer=2 filter=4 channel=45
					-2, 0, -9, 1, 6, 34, -32, 5, -5,
					-- layer=2 filter=4 channel=46
					2, -36, -19, 3, -23, 28, 1, 6, 25,
					-- layer=2 filter=4 channel=47
					12, 35, 1, -43, -28, 0, -45, -30, -14,
					-- layer=2 filter=4 channel=48
					21, -2, 8, 3, 9, 9, 6, 14, 19,
					-- layer=2 filter=4 channel=49
					18, -4, 35, -61, 29, 5, 4, 52, 30,
					-- layer=2 filter=4 channel=50
					36, -2, -6, 1, 40, 24, -6, 3, -4,
					-- layer=2 filter=4 channel=51
					-24, 34, 49, -2, 42, 21, 52, -12, -12,
					-- layer=2 filter=4 channel=52
					-48, 28, 19, -32, -27, -1, -98, -99, -45,
					-- layer=2 filter=4 channel=53
					-25, 0, -12, -5, 2, 23, -27, -42, 15,
					-- layer=2 filter=4 channel=54
					-12, -35, 0, -25, 5, 10, -21, 5, 60,
					-- layer=2 filter=4 channel=55
					-57, 18, 39, -32, -54, 14, -57, -92, -25,
					-- layer=2 filter=4 channel=56
					21, 18, -14, 7, -21, -8, -36, -37, 4,
					-- layer=2 filter=4 channel=57
					-57, -29, 10, -61, 8, 11, -45, -20, 10,
					-- layer=2 filter=4 channel=58
					88, 55, 22, 73, 16, 10, 69, 2, 26,
					-- layer=2 filter=4 channel=59
					-12, -18, 34, -42, -26, 0, -69, -39, -11,
					-- layer=2 filter=4 channel=60
					0, -13, -30, 38, 7, -26, 32, -8, -4,
					-- layer=2 filter=4 channel=61
					-14, 6, 43, 32, -9, -15, 11, 24, 45,
					-- layer=2 filter=4 channel=62
					86, 40, -24, 48, 60, 5, 126, 109, 33,
					-- layer=2 filter=4 channel=63
					2, 13, 28, 7, -10, 35, 3, 2, 43,
					-- layer=2 filter=5 channel=0
					23, -33, 0, 6, 4, 4, -31, 10, 19,
					-- layer=2 filter=5 channel=1
					-49, -73, -39, 66, 17, -18, 47, 13, 34,
					-- layer=2 filter=5 channel=2
					-18, -7, 20, -23, 4, 31, -6, 16, 4,
					-- layer=2 filter=5 channel=3
					-4, -20, -13, 7, 35, 15, -50, -34, 6,
					-- layer=2 filter=5 channel=4
					-46, -9, 17, -24, -25, -2, 8, 5, -33,
					-- layer=2 filter=5 channel=5
					-74, -48, -40, -16, 3, 32, -7, 19, 42,
					-- layer=2 filter=5 channel=6
					47, 23, 16, 42, 25, 21, 0, -28, -2,
					-- layer=2 filter=5 channel=7
					18, 21, 9, 1, -6, -31, -23, -12, 68,
					-- layer=2 filter=5 channel=8
					-35, -15, 9, -45, 46, 25, -70, 19, 5,
					-- layer=2 filter=5 channel=9
					-85, -9, -12, 39, -46, 11, 82, 23, -29,
					-- layer=2 filter=5 channel=10
					-45, -2, 10, -3, -40, 7, 7, 30, 33,
					-- layer=2 filter=5 channel=11
					5, 6, -7, 11, -68, -40, 58, 28, -5,
					-- layer=2 filter=5 channel=12
					-11, 25, 20, -23, 33, 17, -17, -21, -2,
					-- layer=2 filter=5 channel=13
					39, -30, -21, -19, 0, 33, -39, 13, 34,
					-- layer=2 filter=5 channel=14
					-26, 4, -28, -25, -10, -22, 10, -10, 10,
					-- layer=2 filter=5 channel=15
					11, -8, -14, 24, 3, -10, -6, 11, 21,
					-- layer=2 filter=5 channel=16
					28, 46, 9, -5, 41, 13, 4, 18, -1,
					-- layer=2 filter=5 channel=17
					-12, 15, -6, -16, 28, 3, -23, -13, -1,
					-- layer=2 filter=5 channel=18
					-13, -34, -20, -41, -11, 25, -23, -1, 3,
					-- layer=2 filter=5 channel=19
					-23, -8, 30, -57, 32, 38, -43, 10, 0,
					-- layer=2 filter=5 channel=20
					-19, 19, 39, -39, 21, 27, -49, -20, 0,
					-- layer=2 filter=5 channel=21
					30, 7, 5, 5, 12, -34, 2, -11, 24,
					-- layer=2 filter=5 channel=22
					-43, -4, -4, -8, 20, 18, -23, -38, -10,
					-- layer=2 filter=5 channel=23
					6, 6, 9, 2, -27, -11, 45, 15, -14,
					-- layer=2 filter=5 channel=24
					-13, 28, 32, -5, 49, 33, -36, -1, 4,
					-- layer=2 filter=5 channel=25
					13, -1, -58, -31, -48, -15, -22, 1, 12,
					-- layer=2 filter=5 channel=26
					0, 11, -12, 7, -6, 5, -16, -8, 8,
					-- layer=2 filter=5 channel=27
					0, 1, 2, -11, 1, -2, 5, -9, 15,
					-- layer=2 filter=5 channel=28
					15, 5, 21, 4, 3, 0, 5, 3, -13,
					-- layer=2 filter=5 channel=29
					1, 70, 49, -20, 42, 13, -24, -46, -12,
					-- layer=2 filter=5 channel=30
					-5, 12, -9, -54, 14, 15, -37, -18, 24,
					-- layer=2 filter=5 channel=31
					-71, -49, -34, 33, -7, -5, 77, 25, 17,
					-- layer=2 filter=5 channel=32
					-3, 6, 30, -1, 26, 36, -1, 49, 20,
					-- layer=2 filter=5 channel=33
					6, 1, -15, 25, 16, 14, 36, 6, 0,
					-- layer=2 filter=5 channel=34
					-7, -23, 12, 0, -11, 6, -11, 0, 48,
					-- layer=2 filter=5 channel=35
					-16, -147, 21, 52, 16, 2, 99, 55, 51,
					-- layer=2 filter=5 channel=36
					-29, 11, 40, -43, 30, 46, -38, -9, -12,
					-- layer=2 filter=5 channel=37
					6, 26, 1, 0, -16, -31, 7, -5, 55,
					-- layer=2 filter=5 channel=38
					-61, -36, -77, 66, 9, -3, 46, 33, -2,
					-- layer=2 filter=5 channel=39
					-15, -83, -57, 3, 4, -27, 37, 28, 44,
					-- layer=2 filter=5 channel=40
					-86, -4, -49, -33, 27, 0, 9, -9, -14,
					-- layer=2 filter=5 channel=41
					2, -17, -25, -4, -23, -21, 12, 11, -19,
					-- layer=2 filter=5 channel=42
					6, 14, 35, 26, 10, 42, -28, -24, -2,
					-- layer=2 filter=5 channel=43
					37, 62, -3, 1, 64, 13, -23, -3, -12,
					-- layer=2 filter=5 channel=44
					-14, 22, 23, -23, -15, 0, 35, -14, -25,
					-- layer=2 filter=5 channel=45
					9, -13, -25, -17, -15, -22, 2, -27, -15,
					-- layer=2 filter=5 channel=46
					-94, -28, -42, 33, -21, 2, 12, 20, 18,
					-- layer=2 filter=5 channel=47
					11, 14, -15, -15, 19, -1, -21, -28, -13,
					-- layer=2 filter=5 channel=48
					-53, 3, 15, -15, 7, 24, -39, -1, 11,
					-- layer=2 filter=5 channel=49
					27, 51, 2, 40, -5, -3, 13, 10, 37,
					-- layer=2 filter=5 channel=50
					-17, -39, -36, 32, 4, -20, -3, 12, 19,
					-- layer=2 filter=5 channel=51
					-54, -82, -53, 26, 69, 15, 38, 60, 0,
					-- layer=2 filter=5 channel=52
					-12, 10, 13, -3, -52, -32, 42, 29, -9,
					-- layer=2 filter=5 channel=53
					14, -5, -6, -22, -33, -33, 25, 28, 2,
					-- layer=2 filter=5 channel=54
					0, 43, -11, -24, 14, -21, 21, 23, 2,
					-- layer=2 filter=5 channel=55
					54, 53, 21, 31, -56, -58, 35, 14, -1,
					-- layer=2 filter=5 channel=56
					-89, -37, -4, 6, -31, -2, 11, 0, -11,
					-- layer=2 filter=5 channel=57
					21, 11, -14, -5, 12, -12, 16, 10, -30,
					-- layer=2 filter=5 channel=58
					17, -47, 10, -60, 2, -58, -10, 36, 54,
					-- layer=2 filter=5 channel=59
					10, 0, 22, 19, -39, 8, 0, 6, 29,
					-- layer=2 filter=5 channel=60
					-45, -55, -8, 29, -4, 3, 5, -4, 20,
					-- layer=2 filter=5 channel=61
					77, -4, -40, -14, 9, 32, 24, 29, -30,
					-- layer=2 filter=5 channel=62
					-24, -27, -44, -4, -18, -5, 66, 4, -10,
					-- layer=2 filter=5 channel=63
					2, -22, -30, 14, -9, -9, -40, -28, 2,
					-- layer=2 filter=6 channel=0
					-11, -8, -7, -16, 0, -9, 10, -10, -4,
					-- layer=2 filter=6 channel=1
					-8, 0, -4, 13, -9, -16, 7, 12, -8,
					-- layer=2 filter=6 channel=2
					-8, -3, 10, 2, -6, -7, -16, -7, 0,
					-- layer=2 filter=6 channel=3
					-3, -15, 10, 4, 10, -11, 3, -1, 10,
					-- layer=2 filter=6 channel=4
					1, -15, -16, 9, -16, 1, 6, -13, 7,
					-- layer=2 filter=6 channel=5
					-6, 9, 0, 15, 0, 1, 3, 0, -19,
					-- layer=2 filter=6 channel=6
					-8, 0, -16, -9, 1, 2, 4, -13, -11,
					-- layer=2 filter=6 channel=7
					0, 3, -12, 0, 2, -1, -3, -12, -12,
					-- layer=2 filter=6 channel=8
					-6, -1, 3, -12, 0, 1, 8, 14, -6,
					-- layer=2 filter=6 channel=9
					4, -8, -4, -14, -17, 6, 0, -2, -1,
					-- layer=2 filter=6 channel=10
					-11, -17, 7, 3, -2, -3, 5, 2, -16,
					-- layer=2 filter=6 channel=11
					9, -1, 8, 2, -7, -3, -8, -8, -8,
					-- layer=2 filter=6 channel=12
					-15, -17, -9, -8, 2, -14, -10, -20, -4,
					-- layer=2 filter=6 channel=13
					-11, -17, -13, -10, 3, -17, 6, 1, -15,
					-- layer=2 filter=6 channel=14
					-7, 0, 0, -11, -16, -1, 1, 9, -12,
					-- layer=2 filter=6 channel=15
					-5, 2, -13, -14, 0, 11, -7, -18, -10,
					-- layer=2 filter=6 channel=16
					6, 0, 1, -18, -14, -11, -11, -6, 0,
					-- layer=2 filter=6 channel=17
					-1, -4, 0, 5, -2, -9, 0, 5, 7,
					-- layer=2 filter=6 channel=18
					-6, 11, 13, -6, 7, 12, -2, -15, 7,
					-- layer=2 filter=6 channel=19
					-2, 0, -15, 1, -2, -15, 0, 11, -11,
					-- layer=2 filter=6 channel=20
					11, 0, 8, 6, -13, -8, -8, 9, 6,
					-- layer=2 filter=6 channel=21
					-5, 8, 11, -3, -12, -7, -4, 3, 9,
					-- layer=2 filter=6 channel=22
					-14, -5, 2, -9, 7, 2, 2, 0, -2,
					-- layer=2 filter=6 channel=23
					-13, -15, -1, 4, 2, 7, 10, -1, -1,
					-- layer=2 filter=6 channel=24
					0, -10, 6, 4, -6, 0, -13, -8, -4,
					-- layer=2 filter=6 channel=25
					-3, -2, 9, -9, -21, 0, 0, 7, -4,
					-- layer=2 filter=6 channel=26
					4, 0, 11, -9, -13, -4, -14, -4, -12,
					-- layer=2 filter=6 channel=27
					0, 12, -9, -8, 8, 4, 6, 0, 0,
					-- layer=2 filter=6 channel=28
					-7, 13, -2, -15, -1, 0, 13, -4, -3,
					-- layer=2 filter=6 channel=29
					-13, 7, 2, -14, -11, -13, -4, -8, 9,
					-- layer=2 filter=6 channel=30
					-16, -7, 8, -6, -7, -15, -1, -16, 1,
					-- layer=2 filter=6 channel=31
					-17, 0, 11, 6, -10, 2, -5, -3, -14,
					-- layer=2 filter=6 channel=32
					-10, 7, 4, 11, 5, 0, 2, -5, 8,
					-- layer=2 filter=6 channel=33
					-15, 3, -6, 6, 2, 0, 3, 10, 14,
					-- layer=2 filter=6 channel=34
					3, 2, 9, -16, 4, -2, 1, -13, 3,
					-- layer=2 filter=6 channel=35
					4, -13, -6, -19, -16, -10, -14, 0, -9,
					-- layer=2 filter=6 channel=36
					8, 11, -6, -5, -14, -4, -18, -2, -8,
					-- layer=2 filter=6 channel=37
					8, 12, -16, 8, 6, -14, 6, 4, 9,
					-- layer=2 filter=6 channel=38
					-16, -18, -2, 5, 9, -5, -4, -5, 4,
					-- layer=2 filter=6 channel=39
					-13, -10, -6, 2, 2, -14, 11, 12, -3,
					-- layer=2 filter=6 channel=40
					9, -11, -12, 8, -11, 9, -1, -10, -8,
					-- layer=2 filter=6 channel=41
					-11, 4, 9, -6, 11, -5, 1, 0, -15,
					-- layer=2 filter=6 channel=42
					-3, -10, -16, -4, -19, 0, -17, -9, 3,
					-- layer=2 filter=6 channel=43
					6, -5, -7, -1, -7, 5, 1, -9, -4,
					-- layer=2 filter=6 channel=44
					-5, -2, 8, 2, -8, -9, -10, -3, -1,
					-- layer=2 filter=6 channel=45
					-4, -9, -5, 1, -15, 4, -13, -14, 5,
					-- layer=2 filter=6 channel=46
					-11, 4, -5, -3, 12, 9, -11, 6, -14,
					-- layer=2 filter=6 channel=47
					-15, -1, -15, -16, 1, -8, 4, 8, -16,
					-- layer=2 filter=6 channel=48
					-4, 8, 1, -5, -2, -1, -9, -10, 7,
					-- layer=2 filter=6 channel=49
					8, -8, -3, -5, 9, -4, 2, -6, 8,
					-- layer=2 filter=6 channel=50
					11, -12, 12, 0, 3, -5, 6, 0, 10,
					-- layer=2 filter=6 channel=51
					2, -6, -7, -16, 10, 6, -11, -12, -3,
					-- layer=2 filter=6 channel=52
					-12, 8, -7, 7, 0, 1, -8, -11, 0,
					-- layer=2 filter=6 channel=53
					2, -11, -7, -7, 3, -4, -12, -10, 0,
					-- layer=2 filter=6 channel=54
					-11, 2, -5, -8, 0, -15, 5, -4, -6,
					-- layer=2 filter=6 channel=55
					-9, 7, 8, 9, 5, 6, 9, 3, -4,
					-- layer=2 filter=6 channel=56
					3, -10, 6, -5, -16, -13, -12, 6, -13,
					-- layer=2 filter=6 channel=57
					-8, 7, -13, -3, 2, 12, 1, -6, 7,
					-- layer=2 filter=6 channel=58
					-7, 6, 0, -17, 6, -6, -14, 2, -2,
					-- layer=2 filter=6 channel=59
					-8, 1, -13, 10, -16, -3, 5, -16, 5,
					-- layer=2 filter=6 channel=60
					-11, 7, 1, -18, 0, 12, -5, -4, -7,
					-- layer=2 filter=6 channel=61
					0, 9, -14, -4, 2, -15, 0, -5, 13,
					-- layer=2 filter=6 channel=62
					10, -5, -1, 10, -7, 4, -3, 5, -8,
					-- layer=2 filter=6 channel=63
					-16, -8, -15, 7, 2, 5, -8, 0, -2,
					-- layer=2 filter=7 channel=0
					-11, -6, -4, 0, 4, 5, -12, -10, -1,
					-- layer=2 filter=7 channel=1
					-9, -15, -10, -21, -10, -17, -23, -15, 0,
					-- layer=2 filter=7 channel=2
					-12, -2, -16, -14, -2, -23, -13, -8, -24,
					-- layer=2 filter=7 channel=3
					12, -14, -7, -11, 8, 6, -10, 5, 1,
					-- layer=2 filter=7 channel=4
					-6, 0, -1, -10, 13, -10, 3, 10, 6,
					-- layer=2 filter=7 channel=5
					0, -17, -10, -2, -8, -5, -9, 6, -17,
					-- layer=2 filter=7 channel=6
					8, 1, -3, -12, -14, 6, -1, -14, -4,
					-- layer=2 filter=7 channel=7
					14, -12, -4, 2, -2, -8, 0, 5, -9,
					-- layer=2 filter=7 channel=8
					-17, 0, 0, -4, 4, -3, -17, 2, -15,
					-- layer=2 filter=7 channel=9
					2, 6, -1, -1, 4, 4, -15, 9, 11,
					-- layer=2 filter=7 channel=10
					-12, -28, -25, -11, 3, -18, -7, -11, 2,
					-- layer=2 filter=7 channel=11
					-10, -21, -16, 5, -19, -9, 11, -12, -8,
					-- layer=2 filter=7 channel=12
					-7, -5, 5, -7, -16, -12, -4, -3, -13,
					-- layer=2 filter=7 channel=13
					-8, -29, 0, -14, -7, -17, 8, -8, -19,
					-- layer=2 filter=7 channel=14
					8, -13, -14, -1, -6, 0, 13, -15, 9,
					-- layer=2 filter=7 channel=15
					2, -1, -15, -2, -10, -4, -11, 9, -3,
					-- layer=2 filter=7 channel=16
					9, -14, -20, -9, -6, -7, 0, 1, 7,
					-- layer=2 filter=7 channel=17
					-5, -6, 4, 8, -12, -14, 2, 1, 6,
					-- layer=2 filter=7 channel=18
					0, -2, 0, -9, -9, -11, 11, -15, -11,
					-- layer=2 filter=7 channel=19
					4, -16, -16, 10, 11, -4, 1, 2, 0,
					-- layer=2 filter=7 channel=20
					5, 7, -11, 2, 0, 3, -15, -6, -14,
					-- layer=2 filter=7 channel=21
					-3, 0, -9, -9, 2, -3, -12, 0, -4,
					-- layer=2 filter=7 channel=22
					-5, -7, 1, -3, -8, 0, -18, -5, -20,
					-- layer=2 filter=7 channel=23
					6, -2, -11, 6, 9, 2, -15, -17, 8,
					-- layer=2 filter=7 channel=24
					5, 4, 7, -1, 1, 1, -15, 2, -10,
					-- layer=2 filter=7 channel=25
					0, 14, 10, 3, 3, -12, -15, -3, -5,
					-- layer=2 filter=7 channel=26
					-15, 13, -6, 5, -6, 0, -10, 8, -11,
					-- layer=2 filter=7 channel=27
					-11, 5, -5, -2, 11, 5, -6, 5, 0,
					-- layer=2 filter=7 channel=28
					-13, 5, -16, 7, 10, -10, -10, 11, 14,
					-- layer=2 filter=7 channel=29
					-5, 2, -6, -11, -5, -2, -2, -6, -12,
					-- layer=2 filter=7 channel=30
					-15, -14, -13, 3, -16, -12, -9, -21, -9,
					-- layer=2 filter=7 channel=31
					-4, -20, -1, 0, 0, -25, 12, -17, -11,
					-- layer=2 filter=7 channel=32
					9, -9, -3, 0, -14, -10, -12, -1, -7,
					-- layer=2 filter=7 channel=33
					2, 4, 4, 2, -8, -6, -7, -7, 0,
					-- layer=2 filter=7 channel=34
					-8, -7, -16, 6, -11, -2, -17, -17, -11,
					-- layer=2 filter=7 channel=35
					6, -5, -8, -20, 4, -21, -21, -4, 8,
					-- layer=2 filter=7 channel=36
					3, 7, -17, -14, -8, -5, -4, 8, -14,
					-- layer=2 filter=7 channel=37
					-7, -17, -19, -11, -8, -5, -7, -9, -13,
					-- layer=2 filter=7 channel=38
					-4, -5, 7, -8, -11, -5, -8, -2, -4,
					-- layer=2 filter=7 channel=39
					-8, -29, -3, -2, 6, -2, -10, -16, -11,
					-- layer=2 filter=7 channel=40
					7, -1, -1, -24, 0, -15, 11, -7, -17,
					-- layer=2 filter=7 channel=41
					5, 10, -2, -3, -3, 2, -3, -7, -10,
					-- layer=2 filter=7 channel=42
					-13, -1, 3, -2, 3, -4, 5, 2, -19,
					-- layer=2 filter=7 channel=43
					0, 5, -1, 4, 6, 6, -7, -6, -15,
					-- layer=2 filter=7 channel=44
					-23, -13, 4, -15, -1, 0, -8, -12, -15,
					-- layer=2 filter=7 channel=45
					5, -8, -5, -6, 8, 7, 4, 0, -14,
					-- layer=2 filter=7 channel=46
					-4, -16, -4, 5, -8, 3, 0, -11, -5,
					-- layer=2 filter=7 channel=47
					-14, -12, -11, -10, 2, -2, -11, 10, -14,
					-- layer=2 filter=7 channel=48
					0, -9, 5, 7, 0, -3, 8, -18, -10,
					-- layer=2 filter=7 channel=49
					-12, 5, -4, 6, -6, -2, -13, 4, 10,
					-- layer=2 filter=7 channel=50
					0, 0, 9, -3, -11, 2, -15, 8, 0,
					-- layer=2 filter=7 channel=51
					-4, 3, -1, 0, -4, -2, -15, 1, 6,
					-- layer=2 filter=7 channel=52
					-1, -26, -2, -3, -5, -19, -9, -16, -11,
					-- layer=2 filter=7 channel=53
					-18, 10, 0, 0, 8, -14, -7, -12, 8,
					-- layer=2 filter=7 channel=54
					-10, -5, 0, 5, -11, 12, 7, 9, -5,
					-- layer=2 filter=7 channel=55
					-12, -18, -4, 6, 1, -13, -6, -12, -7,
					-- layer=2 filter=7 channel=56
					-9, -3, -25, 0, -22, -15, -15, -23, -5,
					-- layer=2 filter=7 channel=57
					-2, -15, 13, 6, -10, -9, -10, 10, 4,
					-- layer=2 filter=7 channel=58
					-7, 5, 0, -12, -20, 11, -15, -14, 5,
					-- layer=2 filter=7 channel=59
					7, 3, -16, -1, -11, -8, -14, 0, -19,
					-- layer=2 filter=7 channel=60
					-6, 0, -17, -14, -1, 4, 8, 6, -15,
					-- layer=2 filter=7 channel=61
					-12, 0, -2, 5, 10, -13, -15, -3, -15,
					-- layer=2 filter=7 channel=62
					6, 1, 0, -1, -1, 4, 0, -6, -15,
					-- layer=2 filter=7 channel=63
					-2, 5, -3, 2, -13, -10, -11, 1, 3,
					-- layer=2 filter=8 channel=0
					2, 25, 9, -17, -20, -10, 22, -9, 25,
					-- layer=2 filter=8 channel=1
					9, 21, 11, 24, 0, 8, 38, -25, -15,
					-- layer=2 filter=8 channel=2
					4, 19, 9, -14, 19, 14, -16, -4, 11,
					-- layer=2 filter=8 channel=3
					-10, 20, -16, -37, 0, -15, -23, 5, 22,
					-- layer=2 filter=8 channel=4
					-1, 11, 0, 16, -13, -14, 28, -2, -25,
					-- layer=2 filter=8 channel=5
					53, 14, -19, 33, -20, 31, -49, -9, 9,
					-- layer=2 filter=8 channel=6
					-20, -16, 21, 0, 7, -63, 19, -2, -49,
					-- layer=2 filter=8 channel=7
					22, -20, 34, 33, -9, 21, -20, 2, 2,
					-- layer=2 filter=8 channel=8
					-1, -30, -15, 0, -48, -3, -13, -46, -32,
					-- layer=2 filter=8 channel=9
					-1, 12, -2, 0, 13, -17, -27, -27, -15,
					-- layer=2 filter=8 channel=10
					-20, 7, 28, 1, -7, 46, -3, -23, 8,
					-- layer=2 filter=8 channel=11
					-19, -29, 22, -64, -36, -6, -61, -55, 18,
					-- layer=2 filter=8 channel=12
					-12, 4, 13, -12, 6, 19, -10, 11, 21,
					-- layer=2 filter=8 channel=13
					5, 5, -11, 11, -16, -25, 4, 35, -55,
					-- layer=2 filter=8 channel=14
					-39, -29, -15, -18, 10, -11, 13, 19, 21,
					-- layer=2 filter=8 channel=15
					-19, -38, 3, -15, -21, -11, 11, 5, -3,
					-- layer=2 filter=8 channel=16
					17, 20, 6, 1, 27, 42, 4, -5, 16,
					-- layer=2 filter=8 channel=17
					14, 20, -2, -1, 25, 12, -10, 25, 7,
					-- layer=2 filter=8 channel=18
					13, -22, -28, -33, -48, 3, 45, 1, 47,
					-- layer=2 filter=8 channel=19
					1, 11, 37, -4, -21, -17, -3, -26, 13,
					-- layer=2 filter=8 channel=20
					-13, 22, 26, -7, 1, 1, -18, 6, 4,
					-- layer=2 filter=8 channel=21
					-34, -13, -14, 5, -21, -8, -2, 13, -27,
					-- layer=2 filter=8 channel=22
					7, 7, 0, 5, 1, 7, -7, -6, 30,
					-- layer=2 filter=8 channel=23
					6, -11, 6, 23, 3, 30, -13, -20, -30,
					-- layer=2 filter=8 channel=24
					-9, 6, 4, -9, -8, 23, -3, 35, 22,
					-- layer=2 filter=8 channel=25
					26, -15, 32, -34, 7, 27, -50, -87, -62,
					-- layer=2 filter=8 channel=26
					5, 5, 2, -6, 19, 15, 11, -4, 9,
					-- layer=2 filter=8 channel=27
					12, 7, -11, 11, -13, 3, 2, -1, 9,
					-- layer=2 filter=8 channel=28
					-2, 23, 6, 15, -1, 13, 6, 11, 13,
					-- layer=2 filter=8 channel=29
					-7, 22, 38, 3, -7, 40, -14, -17, 15,
					-- layer=2 filter=8 channel=30
					23, -2, -6, 8, -5, 27, -28, -24, 3,
					-- layer=2 filter=8 channel=31
					-19, 3, -3, -15, -34, 10, 1, -11, 0,
					-- layer=2 filter=8 channel=32
					9, -6, -11, -4, -2, 8, -5, 28, -10,
					-- layer=2 filter=8 channel=33
					-13, -6, -17, -3, -6, -2, -11, -52, -32,
					-- layer=2 filter=8 channel=34
					-26, -32, 13, -35, -11, -1, -6, 2, 17,
					-- layer=2 filter=8 channel=35
					-35, 2, -28, 47, 48, 35, 34, 48, 0,
					-- layer=2 filter=8 channel=36
					-30, 0, 11, -11, -5, 15, -8, 24, 28,
					-- layer=2 filter=8 channel=37
					-13, 0, -12, -52, -24, 3, 4, -3, 6,
					-- layer=2 filter=8 channel=38
					-15, 29, -11, 1, 24, -8, 1, -27, -16,
					-- layer=2 filter=8 channel=39
					-41, 28, 15, -10, -10, 6, -1, -6, 43,
					-- layer=2 filter=8 channel=40
					24, 29, -29, 27, 27, -23, 0, -21, -3,
					-- layer=2 filter=8 channel=41
					-12, -10, -2, -1, -21, -4, 3, -34, -15,
					-- layer=2 filter=8 channel=42
					17, 11, 20, 8, 31, -5, -11, 14, 4,
					-- layer=2 filter=8 channel=43
					-1, 17, 10, -26, 17, 32, -33, -31, 16,
					-- layer=2 filter=8 channel=44
					11, -4, 13, -8, -6, -3, -10, -12, -27,
					-- layer=2 filter=8 channel=45
					-8, -13, -12, -11, -8, 4, -13, -15, 0,
					-- layer=2 filter=8 channel=46
					27, 21, 0, 40, 13, -20, 18, 7, 8,
					-- layer=2 filter=8 channel=47
					11, 4, 0, 7, 6, -5, -26, -21, -18,
					-- layer=2 filter=8 channel=48
					-13, -3, -12, 8, 17, 21, 16, 21, 29,
					-- layer=2 filter=8 channel=49
					-13, 39, -12, -55, 17, -44, 16, 4, 4,
					-- layer=2 filter=8 channel=50
					-43, -29, -22, -37, -4, -66, 14, -18, -14,
					-- layer=2 filter=8 channel=51
					48, -11, 30, -13, -16, 72, -1, -14, 1,
					-- layer=2 filter=8 channel=52
					-61, -44, 14, -55, -14, 25, -29, -52, 20,
					-- layer=2 filter=8 channel=53
					-37, -39, -10, -8, -39, 45, -22, -69, 9,
					-- layer=2 filter=8 channel=54
					-5, -4, 13, -16, 33, 32, -9, -9, 2,
					-- layer=2 filter=8 channel=55
					-56, -12, 8, -75, -22, 13, -95, -112, -31,
					-- layer=2 filter=8 channel=56
					17, 14, 6, 10, 13, 34, -2, -9, -17,
					-- layer=2 filter=8 channel=57
					-36, -5, -9, -13, 2, 11, -27, -30, -3,
					-- layer=2 filter=8 channel=58
					62, 48, 40, -2, 36, -16, -9, -61, -7,
					-- layer=2 filter=8 channel=59
					-6, -3, 17, 1, 8, 3, 6, -23, 1,
					-- layer=2 filter=8 channel=60
					9, 27, 26, 9, 8, -19, 24, 32, 3,
					-- layer=2 filter=8 channel=61
					10, -11, 35, -9, -98, 88, 55, 48, 52,
					-- layer=2 filter=8 channel=62
					48, -14, 14, -5, 28, 11, -27, 71, 16,
					-- layer=2 filter=8 channel=63
					-17, -17, -41, -26, -27, -22, -15, 20, 10,
					-- layer=2 filter=9 channel=0
					22, -26, -47, 9, -26, -93, -40, -70, 2,
					-- layer=2 filter=9 channel=1
					-9, -26, 23, -32, -14, 3, -13, -10, 7,
					-- layer=2 filter=9 channel=2
					-8, 20, 5, 2, 24, 11, 0, 7, -18,
					-- layer=2 filter=9 channel=3
					-13, 2, -5, -23, -15, 20, -21, 7, 9,
					-- layer=2 filter=9 channel=4
					-19, 42, 39, 0, 39, 27, 21, 27, 44,
					-- layer=2 filter=9 channel=5
					67, 55, 1, -10, -12, -22, -24, 13, -34,
					-- layer=2 filter=9 channel=6
					-27, -31, 1, -10, -22, 9, -34, 14, 8,
					-- layer=2 filter=9 channel=7
					18, 26, -50, 62, 0, 0, 9, 6, 32,
					-- layer=2 filter=9 channel=8
					-43, -32, 0, -49, -3, -4, -80, -57, -29,
					-- layer=2 filter=9 channel=9
					-13, 16, 39, -16, 15, 32, 4, 15, 8,
					-- layer=2 filter=9 channel=10
					16, -39, -60, 33, -14, -43, 31, -17, -6,
					-- layer=2 filter=9 channel=11
					17, -40, -76, 29, -28, -63, 15, -65, -51,
					-- layer=2 filter=9 channel=12
					0, 19, 3, -3, -4, 16, -18, -14, -21,
					-- layer=2 filter=9 channel=13
					26, 25, 29, -1, 26, 8, -7, 3, 5,
					-- layer=2 filter=9 channel=14
					8, -33, -43, -21, -20, 10, -30, -29, 14,
					-- layer=2 filter=9 channel=15
					18, 15, -15, 44, -3, -42, 16, 32, 47,
					-- layer=2 filter=9 channel=16
					-15, -4, -2, -17, 18, 31, 8, 35, 28,
					-- layer=2 filter=9 channel=17
					-21, 4, 4, -23, -6, -3, -9, -10, 6,
					-- layer=2 filter=9 channel=18
					13, -53, -41, -3, 31, -48, 32, 15, -17,
					-- layer=2 filter=9 channel=19
					-17, 23, 12, -24, 37, 30, 2, 24, 20,
					-- layer=2 filter=9 channel=20
					-30, 5, 0, -3, 8, 16, -21, -18, -16,
					-- layer=2 filter=9 channel=21
					-30, 9, -8, -19, -6, 6, -28, 1, 12,
					-- layer=2 filter=9 channel=22
					12, 27, 15, -15, -15, 32, -25, -6, 34,
					-- layer=2 filter=9 channel=23
					-1, -11, -10, 10, -6, 31, -14, 16, -10,
					-- layer=2 filter=9 channel=24
					-34, 12, 32, -32, -6, 6, -1, 6, 5,
					-- layer=2 filter=9 channel=25
					-10, -33, -12, 19, 52, -23, -18, -14, 47,
					-- layer=2 filter=9 channel=26
					-23, 2, 12, 15, -10, -3, 9, 11, -13,
					-- layer=2 filter=9 channel=27
					14, -2, -14, -4, 2, 7, 5, -3, -1,
					-- layer=2 filter=9 channel=28
					-11, 5, 5, 13, 12, -6, -12, -7, 4,
					-- layer=2 filter=9 channel=29
					-24, 8, -2, 11, -4, 6, -21, -19, -21,
					-- layer=2 filter=9 channel=30
					1, 28, 21, -35, 38, 64, -32, 13, 4,
					-- layer=2 filter=9 channel=31
					-39, -36, -31, -1, -77, -35, 0, -10, -56,
					-- layer=2 filter=9 channel=32
					-20, 3, -7, -70, 23, 25, -18, 28, 10,
					-- layer=2 filter=9 channel=33
					0, 24, 16, 8, 0, 16, -30, 6, 12,
					-- layer=2 filter=9 channel=34
					5, -39, -42, 8, -42, -74, 3, -18, -3,
					-- layer=2 filter=9 channel=35
					-59, -20, 27, -22, -16, 42, -16, 34, -23,
					-- layer=2 filter=9 channel=36
					-21, -6, 3, -38, 14, 10, -19, 8, 6,
					-- layer=2 filter=9 channel=37
					-15, -28, -30, 36, -44, -75, 1, -12, 7,
					-- layer=2 filter=9 channel=38
					-3, 45, 52, -14, 38, 38, 18, 27, 30,
					-- layer=2 filter=9 channel=39
					14, -36, -8, -33, -2, -81, 9, 6, 15,
					-- layer=2 filter=9 channel=40
					1, 66, 46, 0, 26, 67, -5, 15, 39,
					-- layer=2 filter=9 channel=41
					-13, -6, 21, -7, 9, 29, -9, 8, 13,
					-- layer=2 filter=9 channel=42
					-33, 31, 51, -6, 19, 49, -36, -39, -10,
					-- layer=2 filter=9 channel=43
					39, 6, -35, 17, 0, 1, 27, 18, 11,
					-- layer=2 filter=9 channel=44
					-5, 3, -8, 19, -6, 11, 57, 42, 32,
					-- layer=2 filter=9 channel=45
					-12, -5, -16, -3, 1, 0, -33, -20, 26,
					-- layer=2 filter=9 channel=46
					-27, 21, 20, 10, 60, 44, -23, -14, 13,
					-- layer=2 filter=9 channel=47
					-23, -2, -23, -10, 2, 8, -2, 28, 43,
					-- layer=2 filter=9 channel=48
					-21, -11, -6, -39, 8, 4, -33, -13, -1,
					-- layer=2 filter=9 channel=49
					33, 34, 6, 29, 73, -23, 35, 12, 18,
					-- layer=2 filter=9 channel=50
					-6, 31, -4, 35, -6, -11, 9, 21, 17,
					-- layer=2 filter=9 channel=51
					32, 70, -17, -2, 17, -53, -4, 101, 52,
					-- layer=2 filter=9 channel=52
					7, -55, -81, 61, -53, -73, 50, -38, -45,
					-- layer=2 filter=9 channel=53
					-4, -19, -24, 68, 19, 9, 7, 7, 25,
					-- layer=2 filter=9 channel=54
					-8, -1, -19, 30, -12, 22, 0, -4, 16,
					-- layer=2 filter=9 channel=55
					63, -53, -88, 26, -51, -95, 17, -66, -126,
					-- layer=2 filter=9 channel=56
					9, 28, 17, 0, 13, 12, 2, -9, -36,
					-- layer=2 filter=9 channel=57
					17, 1, -10, -4, -5, 9, -8, -2, -4,
					-- layer=2 filter=9 channel=58
					-21, 56, 48, -17, 57, 43, -91, -59, -40,
					-- layer=2 filter=9 channel=59
					-8, -28, 13, 15, -28, 14, -12, 17, -16,
					-- layer=2 filter=9 channel=60
					27, 48, 45, 5, 7, 9, 19, 33, 0,
					-- layer=2 filter=9 channel=61
					43, 47, 4, 15, 110, 50, 55, 24, 74,
					-- layer=2 filter=9 channel=62
					21, -93, -39, 4, -39, -19, 48, 10, -38,
					-- layer=2 filter=9 channel=63
					7, -5, 8, -5, -30, 22, -28, -6, 27,
					-- layer=2 filter=10 channel=0
					10, 7, -3, 4, -19, 11, -15, -28, -19,
					-- layer=2 filter=10 channel=1
					-28, -59, -88, -85, -32, -74, -34, -50, -47,
					-- layer=2 filter=10 channel=2
					16, -2, -13, -12, -25, 11, -7, 8, 29,
					-- layer=2 filter=10 channel=3
					11, 41, 21, 24, -11, -6, -25, -28, 1,
					-- layer=2 filter=10 channel=4
					-42, -32, -42, 6, 9, -20, 51, 45, -1,
					-- layer=2 filter=10 channel=5
					8, 0, -19, -25, -48, -32, 21, -59, -24,
					-- layer=2 filter=10 channel=6
					23, -11, -20, 13, 29, -19, -5, -15, -34,
					-- layer=2 filter=10 channel=7
					52, 20, 3, 4, 4, 33, 14, 14, 14,
					-- layer=2 filter=10 channel=8
					-14, 31, 52, -21, 38, 55, -34, -19, 7,
					-- layer=2 filter=10 channel=9
					-61, -26, -7, -48, -37, -28, -44, -32, -14,
					-- layer=2 filter=10 channel=10
					-24, -2, 34, 39, 26, 53, 4, 8, 32,
					-- layer=2 filter=10 channel=11
					14, -29, 38, 12, 11, 11, 11, 8, 25,
					-- layer=2 filter=10 channel=12
					-16, -6, 10, -15, -14, 10, 4, 15, 47,
					-- layer=2 filter=10 channel=13
					-27, 0, -6, -31, -16, 16, 38, -22, -4,
					-- layer=2 filter=10 channel=14
					40, 3, 15, 2, 51, -29, -19, -18, -35,
					-- layer=2 filter=10 channel=15
					-11, 16, 18, 0, 21, 29, 18, 11, -13,
					-- layer=2 filter=10 channel=16
					24, 5, 0, 27, 22, 25, -1, 0, 2,
					-- layer=2 filter=10 channel=17
					29, 11, 3, 36, 15, 3, 8, 8, 18,
					-- layer=2 filter=10 channel=18
					19, 10, -68, -27, -34, 3, -33, -9, -55,
					-- layer=2 filter=10 channel=19
					-21, 3, 12, -37, -39, -22, -8, 8, 9,
					-- layer=2 filter=10 channel=20
					-4, 5, -20, -19, 1, -32, -11, 3, 6,
					-- layer=2 filter=10 channel=21
					31, 22, 20, -16, -28, 27, -8, -27, -48,
					-- layer=2 filter=10 channel=22
					23, 23, 10, 17, -2, -1, -17, -17, -26,
					-- layer=2 filter=10 channel=23
					25, -9, -6, 41, 37, 1, 21, 11, 9,
					-- layer=2 filter=10 channel=24
					4, 25, 12, 32, -8, 9, -16, 12, 20,
					-- layer=2 filter=10 channel=25
					24, -11, -29, 26, 15, -39, 0, 23, -1,
					-- layer=2 filter=10 channel=26
					-10, -11, 11, 4, -9, 11, -1, -2, 0,
					-- layer=2 filter=10 channel=27
					12, 2, 0, 12, -6, 2, -7, -9, 2,
					-- layer=2 filter=10 channel=28
					-4, 17, 16, -3, 1, -1, -4, -2, -6,
					-- layer=2 filter=10 channel=29
					37, 28, 64, -17, 2, 35, -17, -13, 15,
					-- layer=2 filter=10 channel=30
					50, 3, 0, 8, -12, 18, -24, -24, -6,
					-- layer=2 filter=10 channel=31
					-33, -23, -4, -2, 17, -19, -27, 4, -7,
					-- layer=2 filter=10 channel=32
					0, -2, -20, -6, -8, -2, 8, -1, -24,
					-- layer=2 filter=10 channel=33
					44, 19, -8, 8, 2, 2, 17, 0, -9,
					-- layer=2 filter=10 channel=34
					-11, 32, 35, -11, -13, 31, 5, 14, 1,
					-- layer=2 filter=10 channel=35
					-27, -64, -67, -61, -5, -29, 16, -49, -59,
					-- layer=2 filter=10 channel=36
					-24, -11, -15, -9, -3, -27, 13, 13, 27,
					-- layer=2 filter=10 channel=37
					-19, 22, -7, 21, 8, 52, 41, -1, -8,
					-- layer=2 filter=10 channel=38
					-61, -45, -44, -52, -12, -34, -30, -6, 3,
					-- layer=2 filter=10 channel=39
					-22, -18, -57, -44, -32, -47, -26, -13, -28,
					-- layer=2 filter=10 channel=40
					-11, -5, -18, -10, -26, -36, -31, 13, -4,
					-- layer=2 filter=10 channel=41
					0, -15, -5, 14, 20, -6, 21, 13, -3,
					-- layer=2 filter=10 channel=42
					-14, -9, 19, 33, -3, -21, 15, 10, 53,
					-- layer=2 filter=10 channel=43
					21, 10, -3, -20, -9, -20, -55, 1, -9,
					-- layer=2 filter=10 channel=44
					-35, -11, -17, 26, 38, 21, 24, 54, 33,
					-- layer=2 filter=10 channel=45
					18, 21, 2, 21, -6, -17, 1, -6, 4,
					-- layer=2 filter=10 channel=46
					-1, -57, -22, 24, -24, -33, 14, -1, -19,
					-- layer=2 filter=10 channel=47
					-18, -3, -6, 0, 12, -16, -10, 16, -17,
					-- layer=2 filter=10 channel=48
					2, 11, 35, -3, -28, 3, 7, -4, 24,
					-- layer=2 filter=10 channel=49
					-53, -43, -75, -26, -36, -37, -49, -3, -56,
					-- layer=2 filter=10 channel=50
					0, -10, 0, -14, -41, -5, 38, 0, -30,
					-- layer=2 filter=10 channel=51
					-4, -3, -16, 36, -42, -24, 6, -28, 3,
					-- layer=2 filter=10 channel=52
					-5, -9, 29, 20, 51, 26, 17, 18, 49,
					-- layer=2 filter=10 channel=53
					5, -45, -44, -5, -4, 8, 8, 11, -11,
					-- layer=2 filter=10 channel=54
					7, -2, 6, -5, 10, -14, -19, 36, 3,
					-- layer=2 filter=10 channel=55
					35, 15, 58, 29, 31, 66, 24, 8, 25,
					-- layer=2 filter=10 channel=56
					-16, 6, -13, 21, -4, -7, 13, -12, 25,
					-- layer=2 filter=10 channel=57
					41, 17, 36, -9, 16, 8, -39, 9, -29,
					-- layer=2 filter=10 channel=58
					11, 30, -22, 32, 3, -7, 21, 23, -19,
					-- layer=2 filter=10 channel=59
					6, -3, -16, 1, -17, -26, 0, 7, -5,
					-- layer=2 filter=10 channel=60
					-83, -67, -46, 33, -60, -34, 19, -8, -8,
					-- layer=2 filter=10 channel=61
					9, -16, -29, 35, -35, -92, -44, -17, -26,
					-- layer=2 filter=10 channel=62
					-41, -41, -66, 12, -41, -11, -32, -8, 1,
					-- layer=2 filter=10 channel=63
					14, -9, 6, 32, -36, -29, 45, -8, -26,
					-- layer=2 filter=11 channel=0
					-54, -2, 10, 14, -12, 5, 1, 15, 1,
					-- layer=2 filter=11 channel=1
					9, 4, 19, -73, 29, -26, -17, 7, -15,
					-- layer=2 filter=11 channel=2
					8, 4, 8, 2, 16, 24, 2, 7, 3,
					-- layer=2 filter=11 channel=3
					10, 11, -17, -23, 16, 8, -14, -19, 6,
					-- layer=2 filter=11 channel=4
					-13, -10, 13, -33, -4, 32, -20, -13, 20,
					-- layer=2 filter=11 channel=5
					26, 21, -82, 39, -14, -118, 46, -1, -35,
					-- layer=2 filter=11 channel=6
					-8, -9, -20, -35, -17, -15, -43, -27, -26,
					-- layer=2 filter=11 channel=7
					8, -37, -22, -38, -32, -5, -15, -12, -18,
					-- layer=2 filter=11 channel=8
					10, -11, -43, 50, 28, 1, 67, 0, -21,
					-- layer=2 filter=11 channel=9
					38, 52, 30, -5, 28, 37, 33, 5, 24,
					-- layer=2 filter=11 channel=10
					-27, 22, -18, 36, 1, 4, -1, -12, -20,
					-- layer=2 filter=11 channel=11
					0, 17, 10, 23, -4, -32, -40, -2, -21,
					-- layer=2 filter=11 channel=12
					2, 3, 20, 0, 11, 20, 8, 22, -10,
					-- layer=2 filter=11 channel=13
					17, 19, 39, 25, 38, -15, 62, 19, -37,
					-- layer=2 filter=11 channel=14
					34, 62, 8, -9, 8, 0, -42, -41, 0,
					-- layer=2 filter=11 channel=15
					11, -5, 8, 45, 5, 0, 49, 10, -3,
					-- layer=2 filter=11 channel=16
					-10, 0, 7, -3, -8, -2, -30, -17, -36,
					-- layer=2 filter=11 channel=17
					0, 8, 1, 5, 15, -11, -61, 6, 16,
					-- layer=2 filter=11 channel=18
					47, -42, -25, -28, -3, 11, 46, 26, 39,
					-- layer=2 filter=11 channel=19
					-39, -10, 15, 1, 7, 32, -20, 18, 23,
					-- layer=2 filter=11 channel=20
					-1, 20, 8, 19, 19, 3, -14, -27, -19,
					-- layer=2 filter=11 channel=21
					19, 32, -8, 42, 25, 14, -7, 4, -3,
					-- layer=2 filter=11 channel=22
					-14, 20, 30, -33, 6, 21, -48, -37, -4,
					-- layer=2 filter=11 channel=23
					34, 21, -6, 22, -15, -38, -4, -25, -13,
					-- layer=2 filter=11 channel=24
					-8, 7, 9, 1, 20, -8, 8, 21, -18,
					-- layer=2 filter=11 channel=25
					-62, -48, -61, -18, -41, -22, -1, 7, -51,
					-- layer=2 filter=11 channel=26
					2, 7, -8, 5, 10, -4, 4, 9, 5,
					-- layer=2 filter=11 channel=27
					-9, 15, -7, -4, -9, -13, -5, -9, 15,
					-- layer=2 filter=11 channel=28
					6, 18, 20, 12, 12, -20, -7, 18, 23,
					-- layer=2 filter=11 channel=29
					25, 2, 4, 14, 26, 10, 0, -8, -26,
					-- layer=2 filter=11 channel=30
					-41, -13, -16, -37, 13, -12, -22, -17, 0,
					-- layer=2 filter=11 channel=31
					-19, -3, 40, -1, 33, -13, -47, -21, -7,
					-- layer=2 filter=11 channel=32
					34, -29, 7, 2, 26, -17, -48, -23, -34,
					-- layer=2 filter=11 channel=33
					10, -9, -30, 39, 12, -13, 29, 35, -6,
					-- layer=2 filter=11 channel=34
					5, -7, -7, 18, -8, 10, 50, 18, 12,
					-- layer=2 filter=11 channel=35
					-9, 39, -6, -18, 32, -44, -2, -11, -27,
					-- layer=2 filter=11 channel=36
					-13, -17, 8, -8, -7, 8, 8, 8, -8,
					-- layer=2 filter=11 channel=37
					-15, -39, 6, 30, -25, 15, 29, 10, -10,
					-- layer=2 filter=11 channel=38
					25, 19, 19, -15, 24, -26, -11, -3, 29,
					-- layer=2 filter=11 channel=39
					-78, -55, -26, -49, -45, -57, -11, -5, -26,
					-- layer=2 filter=11 channel=40
					-39, 31, 45, -77, 6, -9, -49, 7, 23,
					-- layer=2 filter=11 channel=41
					26, 9, 1, 21, -4, -2, 1, 0, -22,
					-- layer=2 filter=11 channel=42
					4, 47, -9, -1, 37, 23, 0, 5, 4,
					-- layer=2 filter=11 channel=43
					16, 12, -2, -5, -19, -44, 0, -2, 1,
					-- layer=2 filter=11 channel=44
					0, -2, 24, 0, 18, 35, -15, 0, 0,
					-- layer=2 filter=11 channel=45
					2, 10, -21, 11, 8, -21, -21, -21, -6,
					-- layer=2 filter=11 channel=46
					50, -2, -56, -11, -8, -28, 49, -3, -29,
					-- layer=2 filter=11 channel=47
					7, 13, -1, 36, 10, 6, 22, -12, -8,
					-- layer=2 filter=11 channel=48
					-12, 7, 14, -7, 5, 4, -8, 13, 2,
					-- layer=2 filter=11 channel=49
					5, 49, 78, -16, 4, -5, 14, -15, -62,
					-- layer=2 filter=11 channel=50
					29, -26, -18, 32, 17, -19, 19, 29, 21,
					-- layer=2 filter=11 channel=51
					-55, -7, -6, 40, -12, 0, -40, -59, -29,
					-- layer=2 filter=11 channel=52
					-17, 17, 48, 19, 6, 3, -30, -28, -3,
					-- layer=2 filter=11 channel=53
					-7, -20, -9, 23, -17, -26, 46, 26, 3,
					-- layer=2 filter=11 channel=54
					37, 8, 30, -3, -12, -19, -26, -44, -51,
					-- layer=2 filter=11 channel=55
					-33, 3, -23, 41, -36, -4, -30, -67, -9,
					-- layer=2 filter=11 channel=56
					-12, 3, 21, -51, 21, 41, -25, -4, -7,
					-- layer=2 filter=11 channel=57
					-5, -1, -16, 30, -3, -26, 5, 23, 10,
					-- layer=2 filter=11 channel=58
					-24, -9, -39, -63, -69, -73, -7, 0, -50,
					-- layer=2 filter=11 channel=59
					20, 9, 0, 24, 2, 33, 22, -3, -16,
					-- layer=2 filter=11 channel=60
					-2, -10, -11, -11, 12, -19, 30, 54, -28,
					-- layer=2 filter=11 channel=61
					-20, -39, 16, 13, 24, 17, -8, -6, 15,
					-- layer=2 filter=11 channel=62
					9, -16, -49, 4, 54, -18, 2, -23, -42,
					-- layer=2 filter=11 channel=63
					-10, 13, -19, -11, 2, -31, -45, -40, -10,
					-- layer=2 filter=12 channel=0
					-5, 6, 13, -6, -15, -18, -35, -21, -27,
					-- layer=2 filter=12 channel=1
					-42, 17, -39, 13, -62, -38, 55, 26, -22,
					-- layer=2 filter=12 channel=2
					-9, -9, 4, 0, 10, 6, 11, 19, -3,
					-- layer=2 filter=12 channel=3
					-8, -10, -7, 19, 42, 15, 19, -2, -1,
					-- layer=2 filter=12 channel=4
					28, 17, -23, -14, -7, 1, 2, -9, 27,
					-- layer=2 filter=12 channel=5
					-13, 71, -8, -12, 0, -7, 12, -57, -56,
					-- layer=2 filter=12 channel=6
					-38, -11, 11, -30, 11, 18, 11, 33, 10,
					-- layer=2 filter=12 channel=7
					4, 10, -5, 5, -8, -5, -22, -45, -48,
					-- layer=2 filter=12 channel=8
					-27, -16, 37, -43, -15, -15, -30, 15, 9,
					-- layer=2 filter=12 channel=9
					-33, -75, -51, -39, -63, -49, -3, -11, -31,
					-- layer=2 filter=12 channel=10
					23, 14, -4, 13, 5, 8, 17, -12, 5,
					-- layer=2 filter=12 channel=11
					13, 46, 31, -27, -17, -34, -28, -14, -6,
					-- layer=2 filter=12 channel=12
					-23, -19, 39, -24, 2, 16, 8, 20, 19,
					-- layer=2 filter=12 channel=13
					25, -32, -20, 0, -1, -14, 11, -25, -19,
					-- layer=2 filter=12 channel=14
					-36, -32, -27, -65, -35, 0, -11, 9, 8,
					-- layer=2 filter=12 channel=15
					18, -1, 11, 1, -20, -37, -20, -2, -4,
					-- layer=2 filter=12 channel=16
					22, 17, 19, 20, 17, 19, 1, 15, -13,
					-- layer=2 filter=12 channel=17
					-26, -1, 14, -2, 9, 3, -21, 6, 0,
					-- layer=2 filter=12 channel=18
					-54, 7, -62, -39, -67, -45, 20, -50, -2,
					-- layer=2 filter=12 channel=19
					50, -2, 14, -3, 19, 5, -12, -15, -19,
					-- layer=2 filter=12 channel=20
					-14, -28, 0, -19, -47, -41, -24, 14, 2,
					-- layer=2 filter=12 channel=21
					-19, -48, -36, -24, -5, -7, 1, 29, 13,
					-- layer=2 filter=12 channel=22
					-21, -14, -3, -5, 17, 25, 14, 0, 18,
					-- layer=2 filter=12 channel=23
					25, 1, 13, 21, 0, 16, 21, 23, 25,
					-- layer=2 filter=12 channel=24
					2, -15, 21, -1, 3, 18, 4, 26, -33,
					-- layer=2 filter=12 channel=25
					-18, -56, -13, 27, 11, -9, -12, -99, 61,
					-- layer=2 filter=12 channel=26
					1, 10, 8, 9, -10, -7, 0, 3, 4,
					-- layer=2 filter=12 channel=27
					-12, 9, 12, -12, 14, -9, -6, -11, 12,
					-- layer=2 filter=12 channel=28
					-3, 0, -20, 16, -9, 0, 17, 18, -1,
					-- layer=2 filter=12 channel=29
					-34, 3, 54, -25, 10, 22, 8, 12, 21,
					-- layer=2 filter=12 channel=30
					-6, 18, 9, 7, 31, 7, 5, -15, -10,
					-- layer=2 filter=12 channel=31
					-34, -26, -14, -3, -36, -19, 17, 31, -54,
					-- layer=2 filter=12 channel=32
					-3, -23, -17, -2, 4, 13, -13, 0, 15,
					-- layer=2 filter=12 channel=33
					-7, 0, 5, -13, -1, 6, 6, -5, 18,
					-- layer=2 filter=12 channel=34
					-14, -29, -7, -16, -47, -31, -23, 6, -1,
					-- layer=2 filter=12 channel=35
					-12, -24, -40, -16, -22, 5, 82, 56, 0,
					-- layer=2 filter=12 channel=36
					0, 1, -17, -29, 1, -15, -4, 29, 14,
					-- layer=2 filter=12 channel=37
					15, -37, -30, -11, -30, -44, -28, -53, 5,
					-- layer=2 filter=12 channel=38
					-12, -45, -57, -19, -73, -70, 18, -1, -19,
					-- layer=2 filter=12 channel=39
					47, 55, 3, 10, -20, 0, -40, 6, -9,
					-- layer=2 filter=12 channel=40
					26, -9, -23, -29, -22, -36, 10, -1, 22,
					-- layer=2 filter=12 channel=41
					-24, -7, 5, 0, 13, -3, 11, 10, 2,
					-- layer=2 filter=12 channel=42
					-23, -36, -2, 29, 29, 43, 28, 29, -1,
					-- layer=2 filter=12 channel=43
					2, 45, 18, 8, -20, -30, -23, -27, -37,
					-- layer=2 filter=12 channel=44
					58, 31, -13, 35, 28, -15, -1, -15, 5,
					-- layer=2 filter=12 channel=45
					-18, -3, -26, -10, 8, 21, -7, 0, 16,
					-- layer=2 filter=12 channel=46
					-37, 0, 15, 35, -17, -29, 37, 60, -29,
					-- layer=2 filter=12 channel=47
					19, 4, -18, 18, 12, -40, 18, -19, -22,
					-- layer=2 filter=12 channel=48
					-42, -33, 9, -16, 18, 20, 27, 44, 7,
					-- layer=2 filter=12 channel=49
					14, -29, -13, 37, 59, 5, -34, 15, -23,
					-- layer=2 filter=12 channel=50
					-32, -48, -45, 17, -17, -32, -35, -4, 16,
					-- layer=2 filter=12 channel=51
					7, -3, 20, -8, -10, -3, 0, -9, -10,
					-- layer=2 filter=12 channel=52
					8, 31, -14, -26, -22, -2, 0, 31, -12,
					-- layer=2 filter=12 channel=53
					-1, -23, 7, -5, 11, 2, -15, -3, -3,
					-- layer=2 filter=12 channel=54
					-8, 19, -16, -13, -26, -42, -45, -23, -15,
					-- layer=2 filter=12 channel=55
					21, 27, 36, -45, 1, -7, 10, -21, -33,
					-- layer=2 filter=12 channel=56
					3, -6, -17, -2, -6, 40, 46, 33, -1,
					-- layer=2 filter=12 channel=57
					29, 2, 11, -38, -19, -17, 5, -15, -20,
					-- layer=2 filter=12 channel=58
					8, 62, 74, 26, 39, 27, 31, -45, -27,
					-- layer=2 filter=12 channel=59
					-28, -27, 7, 22, 42, 20, -27, -23, 7,
					-- layer=2 filter=12 channel=60
					11, -39, 29, 28, 21, 40, 24, 42, -11,
					-- layer=2 filter=12 channel=61
					-39, -43, -39, 10, 22, 10, 38, 50, -63,
					-- layer=2 filter=12 channel=62
					56, 69, -32, 46, -22, -40, 11, -39, 27,
					-- layer=2 filter=12 channel=63
					-5, 8, -22, 35, 36, 24, -50, -21, 4,
					-- layer=2 filter=13 channel=0
					9, 38, 24, -27, 24, 21, 42, -6, -21,
					-- layer=2 filter=13 channel=1
					-25, 11, 13, 10, 33, -36, 4, 32, -31,
					-- layer=2 filter=13 channel=2
					-26, -10, -7, -7, -58, -55, -23, -28, 6,
					-- layer=2 filter=13 channel=3
					0, 0, 1, 2, 0, 3, 5, -21, -11,
					-- layer=2 filter=13 channel=4
					-35, -15, -26, -1, -14, -40, 24, 23, -30,
					-- layer=2 filter=13 channel=5
					-65, 5, -59, -48, 10, -44, -17, 17, -14,
					-- layer=2 filter=13 channel=6
					-43, -38, -42, -5, -2, 20, -49, -37, 17,
					-- layer=2 filter=13 channel=7
					11, -16, 24, 39, -13, 5, -7, -42, -11,
					-- layer=2 filter=13 channel=8
					-31, -50, -68, 2, -7, 23, -47, -14, 37,
					-- layer=2 filter=13 channel=9
					25, -10, -11, 23, -47, -18, -17, 15, -44,
					-- layer=2 filter=13 channel=10
					0, -16, 14, 0, -46, -10, -57, -37, -16,
					-- layer=2 filter=13 channel=11
					-41, -30, -22, -22, -38, -14, -27, -16, 7,
					-- layer=2 filter=13 channel=12
					-33, 4, -8, -5, -7, -10, 7, -30, -2,
					-- layer=2 filter=13 channel=13
					-43, -64, -24, -41, -74, -34, -2, 5, 7,
					-- layer=2 filter=13 channel=14
					-11, -1, -13, -32, -5, -15, -39, -31, 0,
					-- layer=2 filter=13 channel=15
					31, 37, 43, 33, -7, 34, 7, -21, 7,
					-- layer=2 filter=13 channel=16
					-11, -30, -20, -26, -41, -11, -35, -38, 2,
					-- layer=2 filter=13 channel=17
					-7, -3, -24, -33, -17, 0, -34, -25, -47,
					-- layer=2 filter=13 channel=18
					-18, -8, -12, -57, -45, 8, 38, 13, 16,
					-- layer=2 filter=13 channel=19
					-6, -26, -5, 9, -8, -25, 6, -9, -25,
					-- layer=2 filter=13 channel=20
					-28, -1, -11, 19, 3, -14, -18, -28, -37,
					-- layer=2 filter=13 channel=21
					-10, -7, -10, 11, 1, -18, 5, -28, -13,
					-- layer=2 filter=13 channel=22
					3, -2, -10, -9, 16, -3, -16, -40, -56,
					-- layer=2 filter=13 channel=23
					-7, -34, -18, -32, -1, -20, -44, -9, 19,
					-- layer=2 filter=13 channel=24
					-4, -21, -34, -15, 6, -31, 14, -26, -16,
					-- layer=2 filter=13 channel=25
					-20, -24, -24, 12, -34, 8, -23, 12, 1,
					-- layer=2 filter=13 channel=26
					-17, -9, -2, 3, 13, 0, 12, 3, -10,
					-- layer=2 filter=13 channel=27
					14, 10, -9, -8, 10, -12, 0, 5, 1,
					-- layer=2 filter=13 channel=28
					12, -12, -3, 5, 4, -2, 14, 4, 8,
					-- layer=2 filter=13 channel=29
					-15, -34, -34, -5, -24, -3, -7, -14, -18,
					-- layer=2 filter=13 channel=30
					7, 0, -17, 5, -16, -28, -16, -18, -7,
					-- layer=2 filter=13 channel=31
					2, -4, 13, 15, 2, -75, -40, -1, 1,
					-- layer=2 filter=13 channel=32
					-9, -46, -42, -34, -34, -36, -36, -30, -9,
					-- layer=2 filter=13 channel=33
					3, -15, 0, -4, -12, 14, -21, 0, 24,
					-- layer=2 filter=13 channel=34
					44, 23, 52, 9, 1, 18, 28, -18, -29,
					-- layer=2 filter=13 channel=35
					-43, 7, 21, 14, 34, -57, 8, -35, -1,
					-- layer=2 filter=13 channel=36
					-6, 18, -10, -11, 28, -25, -2, -21, -24,
					-- layer=2 filter=13 channel=37
					0, 2, 12, 3, 0, 9, 2, -15, -5,
					-- layer=2 filter=13 channel=38
					-14, -2, -27, -16, -20, 14, 15, 15, -47,
					-- layer=2 filter=13 channel=39
					-14, 55, 25, -17, 20, 7, 50, 4, -22,
					-- layer=2 filter=13 channel=40
					-27, 7, -21, -22, -1, -12, 6, -8, -37,
					-- layer=2 filter=13 channel=41
					-14, -21, 17, -20, -9, -12, -9, 3, 23,
					-- layer=2 filter=13 channel=42
					-9, -7, 0, -17, -26, -31, -8, -6, -50,
					-- layer=2 filter=13 channel=43
					-9, -26, -38, -31, -6, -14, -31, 5, -9,
					-- layer=2 filter=13 channel=44
					-20, -8, -6, -6, 18, -25, 16, 22, 16,
					-- layer=2 filter=13 channel=45
					-1, -9, -18, -17, 12, 6, -26, -6, -13,
					-- layer=2 filter=13 channel=46
					0, -16, -2, 6, -11, 2, 11, 18, -51,
					-- layer=2 filter=13 channel=47
					9, -7, -8, 10, -5, -15, -5, -3, -17,
					-- layer=2 filter=13 channel=48
					-9, 7, -25, -11, -9, -14, -21, -23, -32,
					-- layer=2 filter=13 channel=49
					-3, 25, 16, -36, 12, 53, 38, 22, -6,
					-- layer=2 filter=13 channel=50
					22, 13, 7, -2, -10, 0, 9, -6, 23,
					-- layer=2 filter=13 channel=51
					-8, 56, 78, 33, 63, 42, 0, -25, 11,
					-- layer=2 filter=13 channel=52
					-17, -14, 7, -4, -26, -32, -56, -14, -19,
					-- layer=2 filter=13 channel=53
					3, 1, 34, -21, 16, -15, -4, -11, 21,
					-- layer=2 filter=13 channel=54
					-40, -36, -31, -42, -20, -3, -3, -5, -2,
					-- layer=2 filter=13 channel=55
					-18, 12, 30, -20, -12, -23, -46, -16, 34,
					-- layer=2 filter=13 channel=56
					-3, 8, 8, 24, -13, -39, -4, -29, -47,
					-- layer=2 filter=13 channel=57
					-19, -20, 8, -30, -17, 14, -12, -11, 10,
					-- layer=2 filter=13 channel=58
					-2, 0, 20, -13, -23, 0, 3, 25, -12,
					-- layer=2 filter=13 channel=59
					0, -20, -7, -19, -32, -10, -6, -32, -31,
					-- layer=2 filter=13 channel=60
					29, -25, 20, 9, -45, 36, 1, -33, -3,
					-- layer=2 filter=13 channel=61
					-15, -7, 20, -30, 32, 41, 51, -12, -1,
					-- layer=2 filter=13 channel=62
					-17, 3, -1, -51, -31, -37, -32, -5, 19,
					-- layer=2 filter=13 channel=63
					15, 2, 5, -3, 9, -15, -20, -22, -11,
					-- layer=2 filter=14 channel=0
					14, -38, -45, -17, -55, -22, -10, -96, -18,
					-- layer=2 filter=14 channel=1
					2, -5, -12, 2, -48, 4, 1, -52, -41,
					-- layer=2 filter=14 channel=2
					-7, 18, 2, -12, 9, 4, 12, 8, 20,
					-- layer=2 filter=14 channel=3
					-5, -3, -48, 8, -3, -8, -25, -12, -31,
					-- layer=2 filter=14 channel=4
					5, 16, 35, 6, 20, 15, -8, 12, 1,
					-- layer=2 filter=14 channel=5
					13, 52, 48, 2, 30, 35, 31, 15, 25,
					-- layer=2 filter=14 channel=6
					-4, 5, -29, -26, -24, -33, -51, -28, -52,
					-- layer=2 filter=14 channel=7
					-17, -28, -6, 32, -103, -21, 0, 2, -7,
					-- layer=2 filter=14 channel=8
					24, -24, -3, -26, -36, -3, -36, -39, -25,
					-- layer=2 filter=14 channel=9
					-26, 5, -8, -13, -11, 10, -2, -63, -8,
					-- layer=2 filter=14 channel=10
					-15, -16, 21, -8, -16, 2, 30, -8, -17,
					-- layer=2 filter=14 channel=11
					-31, 10, 29, -13, -22, -23, 20, 20, -9,
					-- layer=2 filter=14 channel=12
					15, 5, 18, 11, 8, 15, 17, 9, 15,
					-- layer=2 filter=14 channel=13
					20, -24, 1, 49, 0, 7, 53, 17, -2,
					-- layer=2 filter=14 channel=14
					-17, 1, 5, -9, -20, -27, -37, -33, -6,
					-- layer=2 filter=14 channel=15
					-10, -18, -23, 17, -22, -13, 38, -3, -6,
					-- layer=2 filter=14 channel=16
					41, 12, 16, -9, 11, 8, 4, -1, 0,
					-- layer=2 filter=14 channel=17
					5, 4, -7, -6, 3, -2, -10, 18, 11,
					-- layer=2 filter=14 channel=18
					29, 13, -54, 28, 16, 1, 65, -31, -11,
					-- layer=2 filter=14 channel=19
					14, 35, 25, -11, -14, -3, -23, -5, -9,
					-- layer=2 filter=14 channel=20
					-13, -14, -9, 5, 7, 8, 9, -11, -13,
					-- layer=2 filter=14 channel=21
					-19, -39, -32, -3, -32, -23, -11, -28, -17,
					-- layer=2 filter=14 channel=22
					25, 10, 8, -7, 13, -3, -20, -16, 0,
					-- layer=2 filter=14 channel=23
					35, 25, 3, 37, 41, 6, 20, 32, 33,
					-- layer=2 filter=14 channel=24
					5, 1, -11, -3, 1, 13, -1, 18, 21,
					-- layer=2 filter=14 channel=25
					28, 10, 56, -22, -29, 65, 56, -50, -12,
					-- layer=2 filter=14 channel=26
					9, -16, -6, 9, 0, 0, 3, 1, -18,
					-- layer=2 filter=14 channel=27
					-4, -3, -8, 0, 3, -13, 1, 1, -12,
					-- layer=2 filter=14 channel=28
					-6, 7, 19, -1, 5, -4, 1, 8, -7,
					-- layer=2 filter=14 channel=29
					-6, -13, 12, -6, 8, 26, -2, 1, 1,
					-- layer=2 filter=14 channel=30
					25, -3, 0, -13, 16, 36, -13, 3, 14,
					-- layer=2 filter=14 channel=31
					-48, -17, 4, -50, -68, -12, -29, -39, -33,
					-- layer=2 filter=14 channel=32
					-20, -11, -26, -20, -12, -45, -57, -38, -74,
					-- layer=2 filter=14 channel=33
					26, -2, -25, 12, 28, -15, 21, 10, 18,
					-- layer=2 filter=14 channel=34
					-5, -29, -19, 6, -57, -40, -7, -38, -16,
					-- layer=2 filter=14 channel=35
					-60, 20, 9, -21, -17, 13, -18, -31, -24,
					-- layer=2 filter=14 channel=36
					8, -11, 13, -4, 4, 16, 0, 2, 16,
					-- layer=2 filter=14 channel=37
					-13, -65, -14, -21, -25, -65, 6, -49, -40,
					-- layer=2 filter=14 channel=38
					1, 18, -3, 13, -44, 32, -7, -5, -3,
					-- layer=2 filter=14 channel=39
					0, 9, 7, -19, -23, -2, -9, -35, -1,
					-- layer=2 filter=14 channel=40
					10, 10, 31, 6, -20, 13, 1, 18, 37,
					-- layer=2 filter=14 channel=41
					33, 8, -1, 15, -11, -3, -5, 12, 0,
					-- layer=2 filter=14 channel=42
					-3, 15, 10, 3, 4, 17, 11, 25, -2,
					-- layer=2 filter=14 channel=43
					-1, 5, 3, 8, 0, -17, -11, 0, -32,
					-- layer=2 filter=14 channel=44
					2, 27, 17, 29, 26, 4, 0, 12, 11,
					-- layer=2 filter=14 channel=45
					-32, -9, -18, -64, -20, -38, -79, -22, -42,
					-- layer=2 filter=14 channel=46
					8, 48, 25, -16, 1, 49, -7, 7, -2,
					-- layer=2 filter=14 channel=47
					13, 21, -14, 9, 22, 11, -9, 10, 8,
					-- layer=2 filter=14 channel=48
					2, 4, 13, 4, -13, 20, 15, 8, 15,
					-- layer=2 filter=14 channel=49
					48, -8, -62, 2, -44, -99, -22, -21, 17,
					-- layer=2 filter=14 channel=50
					-3, -35, -16, -23, 18, -18, 20, 9, -15,
					-- layer=2 filter=14 channel=51
					4, -2, -23, -44, -21, 6, 61, -4, 48,
					-- layer=2 filter=14 channel=52
					-32, -9, 19, -13, -12, -5, 6, 12, -29,
					-- layer=2 filter=14 channel=53
					36, -14, 12, 8, -23, -15, 22, -7, 15,
					-- layer=2 filter=14 channel=54
					6, -3, -6, -19, -17, -23, -30, -8, -40,
					-- layer=2 filter=14 channel=55
					-62, -28, 17, -29, -7, -4, 34, 30, -42,
					-- layer=2 filter=14 channel=56
					6, -7, 20, 3, -4, 32, -6, 11, 8,
					-- layer=2 filter=14 channel=57
					0, -38, -20, 22, -9, -26, -14, -6, 10,
					-- layer=2 filter=14 channel=58
					23, 17, 41, 13, 16, 27, 26, 31, 7,
					-- layer=2 filter=14 channel=59
					-27, -35, -40, 4, 0, -31, -59, -36, -28,
					-- layer=2 filter=14 channel=60
					23, 36, 36, 6, -35, 5, 0, -6, 16,
					-- layer=2 filter=14 channel=61
					35, 23, -48, -24, -36, -43, -24, -85, 21,
					-- layer=2 filter=14 channel=62
					-20, 6, 4, -23, 20, -76, -114, -85, -43,
					-- layer=2 filter=14 channel=63
					-14, -3, -41, -18, -22, -27, -32, -17, -74,
					-- layer=2 filter=15 channel=0
					-3, -18, 15, 27, 27, 31, 30, 31, 28,
					-- layer=2 filter=15 channel=1
					2, 3, -17, 13, 26, 0, 12, 15, -23,
					-- layer=2 filter=15 channel=2
					14, 2, 0, -23, -1, 8, -12, -11, -10,
					-- layer=2 filter=15 channel=3
					7, 50, 19, 13, 29, 44, 13, -21, -17,
					-- layer=2 filter=15 channel=4
					17, -15, -39, 13, 1, -22, 11, 2, -7,
					-- layer=2 filter=15 channel=5
					58, 59, -17, 65, 26, -12, -7, -42, -20,
					-- layer=2 filter=15 channel=6
					45, 29, 4, 17, -13, -26, 20, 21, 40,
					-- layer=2 filter=15 channel=7
					46, 8, 38, 35, 56, 57, -17, -59, -32,
					-- layer=2 filter=15 channel=8
					15, -4, -12, 33, -12, 2, 41, -23, -46,
					-- layer=2 filter=15 channel=9
					6, 32, 28, -51, 48, -8, -20, -31, -33,
					-- layer=2 filter=15 channel=10
					-12, -14, 25, -9, -23, -20, 23, -22, -11,
					-- layer=2 filter=15 channel=11
					-17, -33, 16, -34, -25, 28, 28, -4, -14,
					-- layer=2 filter=15 channel=12
					1, 0, 24, -3, -14, -4, 10, -27, 20,
					-- layer=2 filter=15 channel=13
					-45, 42, -9, -51, 14, -14, -35, -22, 24,
					-- layer=2 filter=15 channel=14
					34, -4, -2, 14, 1, -10, -8, 29, -10,
					-- layer=2 filter=15 channel=15
					-12, -11, 31, -5, -6, 22, -5, -19, -33,
					-- layer=2 filter=15 channel=16
					4, -6, -16, -11, -46, -24, -32, -11, 21,
					-- layer=2 filter=15 channel=17
					0, -8, 12, 1, 8, 0, -9, -3, 16,
					-- layer=2 filter=15 channel=18
					17, -14, -8, 59, -19, -15, 5, -33, -38,
					-- layer=2 filter=15 channel=19
					15, -15, 2, 21, -8, -26, -8, -62, -25,
					-- layer=2 filter=15 channel=20
					9, 29, 26, 12, -3, 2, 14, -7, 16,
					-- layer=2 filter=15 channel=21
					8, -15, -10, 0, 5, -8, -8, -33, -22,
					-- layer=2 filter=15 channel=22
					-4, 4, -6, -1, -14, -3, -31, 5, -16,
					-- layer=2 filter=15 channel=23
					-16, -17, 2, -17, -27, -1, -2, 42, 31,
					-- layer=2 filter=15 channel=24
					-4, 33, 13, 11, 2, 0, -25, -13, 19,
					-- layer=2 filter=15 channel=25
					-64, -33, -7, 48, 63, -50, 37, -4, -23,
					-- layer=2 filter=15 channel=26
					-4, 0, 7, 0, -11, -3, 7, -6, 18,
					-- layer=2 filter=15 channel=27
					-12, -6, 2, -5, -4, 3, 4, -13, 11,
					-- layer=2 filter=15 channel=28
					14, 1, -6, 0, -3, 2, -21, 1, -1,
					-- layer=2 filter=15 channel=29
					2, 9, 16, 5, -18, 4, -18, -46, -3,
					-- layer=2 filter=15 channel=30
					45, -1, -6, 23, 35, -6, 0, 14, -22,
					-- layer=2 filter=15 channel=31
					-5, -7, -29, 8, -14, 2, 10, -21, -36,
					-- layer=2 filter=15 channel=32
					11, 19, 3, 15, -38, -21, 8, 0, 26,
					-- layer=2 filter=15 channel=33
					-5, 18, 28, -3, -38, -10, -21, -6, 5,
					-- layer=2 filter=15 channel=34
					-19, -15, 12, 14, -1, 25, 15, -36, -18,
					-- layer=2 filter=15 channel=35
					-3, 16, -16, 8, 45, -5, 8, 39, 16,
					-- layer=2 filter=15 channel=36
					11, 5, 23, 0, 2, 23, 16, 13, 5,
					-- layer=2 filter=15 channel=37
					-22, -27, -11, -27, -4, 9, 8, -13, -37,
					-- layer=2 filter=15 channel=38
					-48, 9, -61, -13, 31, -40, -57, -20, -57,
					-- layer=2 filter=15 channel=39
					10, -14, -52, 22, -4, 14, 21, 53, 7,
					-- layer=2 filter=15 channel=40
					9, -10, -48, 19, 14, -8, -32, 12, -25,
					-- layer=2 filter=15 channel=41
					3, -1, -2, -27, -13, -6, -6, -3, -20,
					-- layer=2 filter=15 channel=42
					-19, 47, -10, 8, 4, 25, 4, -2, 35,
					-- layer=2 filter=15 channel=43
					6, -16, 10, -6, -63, 14, -13, -10, 22,
					-- layer=2 filter=15 channel=44
					-8, -1, -20, -43, -22, -27, -25, 3, -12,
					-- layer=2 filter=15 channel=45
					5, 0, 8, 4, 27, -19, -38, -13, -4,
					-- layer=2 filter=15 channel=46
					-1, 21, -1, 35, 74, 28, 49, 44, 14,
					-- layer=2 filter=15 channel=47
					2, 2, 34, -3, -29, -3, -51, -62, -13,
					-- layer=2 filter=15 channel=48
					28, 3, -5, 31, 5, 1, -2, -16, 16,
					-- layer=2 filter=15 channel=49
					11, -5, -5, -36, -48, -32, -8, -1, 31,
					-- layer=2 filter=15 channel=50
					-10, 3, -4, 6, -2, 3, 0, -50, -37,
					-- layer=2 filter=15 channel=51
					-6, -4, 20, 14, -22, 45, 11, -15, 14,
					-- layer=2 filter=15 channel=52
					11, -32, 47, -35, -48, 7, 22, -34, -34,
					-- layer=2 filter=15 channel=53
					-18, 2, 26, 17, 24, 33, -10, 1, 13,
					-- layer=2 filter=15 channel=54
					-14, -44, 14, -24, -61, 17, 0, 11, 32,
					-- layer=2 filter=15 channel=55
					9, -18, 39, -2, -16, 28, 63, -11, 17,
					-- layer=2 filter=15 channel=56
					0, -6, -26, -22, 19, -3, 31, 12, -17,
					-- layer=2 filter=15 channel=57
					-12, -6, 7, -5, -26, 4, 4, 21, 20,
					-- layer=2 filter=15 channel=58
					67, 66, 17, 59, 82, 86, -28, 6, 14,
					-- layer=2 filter=15 channel=59
					-19, 8, 28, -20, -48, -2, -7, -22, -6,
					-- layer=2 filter=15 channel=60
					-67, 11, 13, 30, 86, 59, 44, 6, 47,
					-- layer=2 filter=15 channel=61
					25, 37, 18, 45, -3, -1, -5, 30, 31,
					-- layer=2 filter=15 channel=62
					56, 42, 47, 40, 11, -47, 11, -4, 14,
					-- layer=2 filter=15 channel=63
					6, 14, 6, 24, 16, 21, 4, -20, -15,
					-- layer=2 filter=16 channel=0
					-3, -6, -11, -22, -9, -17, -29, -22, 0,
					-- layer=2 filter=16 channel=1
					1, 5, -7, -4, -9, -5, -13, -2, 2,
					-- layer=2 filter=16 channel=2
					-17, -18, -9, -12, -5, -22, -17, -16, -24,
					-- layer=2 filter=16 channel=3
					-14, -16, -9, 4, 3, 3, -12, -17, 10,
					-- layer=2 filter=16 channel=4
					7, -8, -14, 14, -10, -2, -4, -16, 4,
					-- layer=2 filter=16 channel=5
					3, 14, -11, 1, -11, -4, 8, -5, 0,
					-- layer=2 filter=16 channel=6
					4, -2, 9, -4, 3, -2, -17, 3, -9,
					-- layer=2 filter=16 channel=7
					5, -21, 22, 4, 13, 7, 17, -7, -7,
					-- layer=2 filter=16 channel=8
					5, -7, 3, 10, -18, 1, -3, -15, 2,
					-- layer=2 filter=16 channel=9
					-4, -17, 7, -13, 1, 1, -2, -12, -11,
					-- layer=2 filter=16 channel=10
					-15, -4, -18, -4, -7, -3, -2, 3, -20,
					-- layer=2 filter=16 channel=11
					10, -17, -21, -22, -12, -5, 5, 7, -15,
					-- layer=2 filter=16 channel=12
					-19, -13, -24, 4, -23, -23, 4, -11, -11,
					-- layer=2 filter=16 channel=13
					-25, -15, -7, -3, 8, 1, 2, -5, 4,
					-- layer=2 filter=16 channel=14
					4, -9, -2, -13, -13, -18, 7, -17, 3,
					-- layer=2 filter=16 channel=15
					-15, -19, -21, -13, -20, -3, -14, -17, -8,
					-- layer=2 filter=16 channel=16
					-6, 1, 3, -3, -20, 0, 2, -2, -4,
					-- layer=2 filter=16 channel=17
					0, 0, -2, -21, -18, 6, -17, -1, -6,
					-- layer=2 filter=16 channel=18
					-7, 14, -17, 6, 1, 0, -7, -3, 10,
					-- layer=2 filter=16 channel=19
					-4, 2, -3, -2, -5, 0, -10, -18, 2,
					-- layer=2 filter=16 channel=20
					17, -8, -15, 8, -12, 8, 11, -17, -17,
					-- layer=2 filter=16 channel=21
					-15, -6, -1, -9, -2, -1, 0, -20, -18,
					-- layer=2 filter=16 channel=22
					-9, -26, 1, -6, -10, -4, -25, -4, -12,
					-- layer=2 filter=16 channel=23
					-9, 5, -17, -4, -16, -24, -16, -5, -19,
					-- layer=2 filter=16 channel=24
					-8, -1, 0, -20, -12, -6, -15, -24, -8,
					-- layer=2 filter=16 channel=25
					-13, -9, 14, -3, -6, 0, -3, 5, -10,
					-- layer=2 filter=16 channel=26
					12, 3, -14, 11, -4, -10, 12, -14, 11,
					-- layer=2 filter=16 channel=27
					11, -14, 11, -12, 7, -2, -10, -12, -6,
					-- layer=2 filter=16 channel=28
					-8, -5, 13, 1, -5, -7, 14, 9, 0,
					-- layer=2 filter=16 channel=29
					-23, -3, -11, -8, -18, 6, -10, -18, -5,
					-- layer=2 filter=16 channel=30
					13, 2, -12, -7, -14, -11, -12, -12, 9,
					-- layer=2 filter=16 channel=31
					0, -13, 2, 0, -13, 2, -7, -10, 15,
					-- layer=2 filter=16 channel=32
					-7, -10, -18, -13, 6, -22, 3, -4, 5,
					-- layer=2 filter=16 channel=33
					7, -19, -4, -2, -13, -10, -5, -18, -22,
					-- layer=2 filter=16 channel=34
					0, -6, -5, -2, 4, -9, -21, -21, -6,
					-- layer=2 filter=16 channel=35
					-15, -12, -17, 0, -3, -21, -23, -6, 4,
					-- layer=2 filter=16 channel=36
					0, 0, -1, 6, 13, -3, -6, 4, -9,
					-- layer=2 filter=16 channel=37
					-21, -6, -20, -17, -9, -3, -4, 5, -2,
					-- layer=2 filter=16 channel=38
					9, 10, 7, -16, -16, 3, 4, -9, -7,
					-- layer=2 filter=16 channel=39
					-18, -9, -4, -5, -1, -10, -8, 3, 5,
					-- layer=2 filter=16 channel=40
					-7, -5, -18, 13, -14, -6, -2, -21, -2,
					-- layer=2 filter=16 channel=41
					-4, -12, -6, 0, 1, -18, 3, 0, 0,
					-- layer=2 filter=16 channel=42
					1, 3, 0, -1, -1, -22, -24, -2, -17,
					-- layer=2 filter=16 channel=43
					14, 10, 2, -13, -18, -9, 2, -15, -15,
					-- layer=2 filter=16 channel=44
					8, 12, -2, -6, 0, 2, -6, -19, 0,
					-- layer=2 filter=16 channel=45
					-2, -4, -13, 1, -18, -16, -10, -6, -5,
					-- layer=2 filter=16 channel=46
					11, 7, 1, -8, -1, -12, -9, 1, -19,
					-- layer=2 filter=16 channel=47
					-8, -7, -1, -2, -20, 0, -19, -2, -10,
					-- layer=2 filter=16 channel=48
					-25, -1, -12, -1, -10, -6, -2, -7, -24,
					-- layer=2 filter=16 channel=49
					-1, -15, -7, -6, 3, -4, -4, -5, -2,
					-- layer=2 filter=16 channel=50
					-15, 0, -16, -16, -19, -10, -9, -4, -12,
					-- layer=2 filter=16 channel=51
					-7, 7, 5, 10, -11, -8, 0, -3, 16,
					-- layer=2 filter=16 channel=52
					-20, -20, -12, -14, -8, -9, 3, 0, 3,
					-- layer=2 filter=16 channel=53
					-5, -17, -14, -19, 1, 0, 8, -15, -3,
					-- layer=2 filter=16 channel=54
					-1, 2, 10, 0, -5, -8, -8, 2, -18,
					-- layer=2 filter=16 channel=55
					-16, -9, -5, -11, 1, 3, -9, -6, 0,
					-- layer=2 filter=16 channel=56
					-22, -18, 0, -27, 0, 5, -7, 5, 6,
					-- layer=2 filter=16 channel=57
					-15, -11, -11, -4, -7, -17, -1, -14, -6,
					-- layer=2 filter=16 channel=58
					-23, 1, 18, -22, -5, 12, 6, 3, -11,
					-- layer=2 filter=16 channel=59
					-14, -10, -23, 0, -12, 1, -16, -16, -16,
					-- layer=2 filter=16 channel=60
					1, -16, 1, -15, -5, 10, 2, -9, -6,
					-- layer=2 filter=16 channel=61
					-14, -9, 12, -16, -3, -11, 1, -8, 3,
					-- layer=2 filter=16 channel=62
					0, -14, -9, -13, -10, 1, -5, -7, 9,
					-- layer=2 filter=16 channel=63
					0, -10, -2, 8, -12, -17, -17, -8, 19,
					-- layer=2 filter=17 channel=0
					-3, -37, -26, 36, 8, -39, 11, -1, -3,
					-- layer=2 filter=17 channel=1
					4, -13, -10, -7, 28, 0, 7, -30, 17,
					-- layer=2 filter=17 channel=2
					17, 8, -1, -12, -15, 22, -1, -9, -8,
					-- layer=2 filter=17 channel=3
					-66, -25, 1, -49, 8, 5, -4, 8, 8,
					-- layer=2 filter=17 channel=4
					-4, 7, 14, -18, -22, -24, 1, -23, -2,
					-- layer=2 filter=17 channel=5
					7, -10, 14, 6, -3, 8, -1, -11, -29,
					-- layer=2 filter=17 channel=6
					-27, -12, 10, -46, -6, 29, -23, -34, -14,
					-- layer=2 filter=17 channel=7
					-52, -10, -75, -13, -31, -8, -35, -37, -18,
					-- layer=2 filter=17 channel=8
					-46, -73, -52, 0, -46, 21, -37, -31, 10,
					-- layer=2 filter=17 channel=9
					-9, -9, 0, 6, 20, 18, 16, -48, 40,
					-- layer=2 filter=17 channel=10
					42, 21, 18, 56, 17, -14, 25, 4, 6,
					-- layer=2 filter=17 channel=11
					38, 19, 47, 43, 24, 9, 1, -16, 17,
					-- layer=2 filter=17 channel=12
					26, 2, 10, 20, -17, 0, -2, 5, -13,
					-- layer=2 filter=17 channel=13
					99, 26, -2, 26, 6, -32, -10, 19, 0,
					-- layer=2 filter=17 channel=14
					-85, 0, -10, -12, -19, 2, -12, 0, 0,
					-- layer=2 filter=17 channel=15
					0, 3, 2, -18, -4, 9, 19, 1, -9,
					-- layer=2 filter=17 channel=16
					-37, 13, -10, 1, -20, -4, -20, -8, 0,
					-- layer=2 filter=17 channel=17
					-28, -13, -20, -34, -2, 17, -20, 26, 19,
					-- layer=2 filter=17 channel=18
					-9, 7, 10, -45, 19, -32, 5, -14, -3,
					-- layer=2 filter=17 channel=19
					0, 7, -9, -3, 3, -12, -17, 1, 29,
					-- layer=2 filter=17 channel=20
					-32, -16, 16, -15, -16, -18, -2, 8, -17,
					-- layer=2 filter=17 channel=21
					-52, -26, -16, -47, -2, 27, 19, 6, -18,
					-- layer=2 filter=17 channel=22
					-63, -55, -33, 16, 39, 8, 39, 36, 26,
					-- layer=2 filter=17 channel=23
					-1, -5, 4, 14, 14, 8, 3, 23, 13,
					-- layer=2 filter=17 channel=24
					-28, 0, -22, -20, 0, 3, -6, 16, -14,
					-- layer=2 filter=17 channel=25
					-27, -47, -14, -27, 76, -8, 13, 30, 3,
					-- layer=2 filter=17 channel=26
					-4, 14, 11, 7, -18, -8, -11, 12, 4,
					-- layer=2 filter=17 channel=27
					-12, -8, 2, -14, 5, 3, -7, 0, -11,
					-- layer=2 filter=17 channel=28
					-14, 6, -2, 3, -4, 12, -9, 6, -6,
					-- layer=2 filter=17 channel=29
					-2, 17, -11, 23, 8, 6, 12, 7, -11,
					-- layer=2 filter=17 channel=30
					-66, -14, -34, -26, -6, -41, -5, -23, -8,
					-- layer=2 filter=17 channel=31
					-4, 8, -12, 2, 39, 1, 3, -31, 8,
					-- layer=2 filter=17 channel=32
					-35, -4, -19, -3, 33, 7, -13, 32, 24,
					-- layer=2 filter=17 channel=33
					-45, -34, 26, -22, -24, 2, -1, 3, -17,
					-- layer=2 filter=17 channel=34
					4, -10, -22, 26, -3, -1, 17, -7, -1,
					-- layer=2 filter=17 channel=35
					16, 6, 16, 63, 0, 54, 17, -33, 1,
					-- layer=2 filter=17 channel=36
					15, 9, 6, -10, -18, 12, -15, -2, -11,
					-- layer=2 filter=17 channel=37
					14, 8, -1, 29, 9, -18, 14, -25, -10,
					-- layer=2 filter=17 channel=38
					29, 34, 0, 24, 23, 11, 25, 8, 3,
					-- layer=2 filter=17 channel=39
					7, -14, 10, 27, -7, -62, -38, -47, -19,
					-- layer=2 filter=17 channel=40
					-44, 1, 6, 9, 27, -33, -13, -3, -7,
					-- layer=2 filter=17 channel=41
					-30, -32, 20, -8, 9, 37, 20, -16, 18,
					-- layer=2 filter=17 channel=42
					-14, -22, 4, -24, -3, -3, 0, 6, -8,
					-- layer=2 filter=17 channel=43
					-2, 19, 12, 6, -20, -5, -30, 14, -1,
					-- layer=2 filter=17 channel=44
					7, 25, 50, -5, 7, 15, -33, -29, 0,
					-- layer=2 filter=17 channel=45
					-52, -30, -9, -32, -28, 37, 6, 11, -7,
					-- layer=2 filter=17 channel=46
					23, -24, -34, -4, 15, -21, 51, -20, 18,
					-- layer=2 filter=17 channel=47
					-42, -2, 14, -49, -14, 15, -13, 6, 25,
					-- layer=2 filter=17 channel=48
					-15, 6, 13, 27, 15, -14, -3, 9, -11,
					-- layer=2 filter=17 channel=49
					15, -15, -14, 9, -21, -81, 11, -4, -12,
					-- layer=2 filter=17 channel=50
					-75, -18, 24, -51, -40, -14, 14, 8, 12,
					-- layer=2 filter=17 channel=51
					-50, -11, 20, -16, 13, -25, 0, 27, -44,
					-- layer=2 filter=17 channel=52
					51, 38, 4, 38, 19, 0, 23, 13, 19,
					-- layer=2 filter=17 channel=53
					-15, -46, 4, -37, -59, -21, 55, -10, 7,
					-- layer=2 filter=17 channel=54
					2, 7, 0, 5, -6, 36, -28, -10, -9,
					-- layer=2 filter=17 channel=55
					51, 10, 17, 59, 20, 4, 56, 13, 7,
					-- layer=2 filter=17 channel=56
					7, -16, -19, 36, 28, -3, 25, 6, 25,
					-- layer=2 filter=17 channel=57
					-42, -27, 51, 14, 18, 19, 5, 52, 37,
					-- layer=2 filter=17 channel=58
					24, -36, -40, -7, -6, -27, 79, 6, 14,
					-- layer=2 filter=17 channel=59
					-35, -16, -3, 16, 0, 9, 39, 6, 37,
					-- layer=2 filter=17 channel=60
					51, -3, 1, -47, -12, -54, -70, -25, -26,
					-- layer=2 filter=17 channel=61
					11, -36, -30, -14, -2, -78, -21, -14, -43,
					-- layer=2 filter=17 channel=62
					37, 15, 34, -16, -33, 23, 46, 1, 38,
					-- layer=2 filter=17 channel=63
					-110, -11, 2, -15, -12, -4, -29, 16, -7,
					-- layer=2 filter=18 channel=0
					-27, -31, 18, 11, -4, 21, -20, 18, 19,
					-- layer=2 filter=18 channel=1
					-57, -42, -22, -36, -60, -16, 9, 22, -12,
					-- layer=2 filter=18 channel=2
					10, -3, 1, -5, -16, -6, 12, 6, -8,
					-- layer=2 filter=18 channel=3
					28, 23, 29, 28, 9, 31, 46, -42, -7,
					-- layer=2 filter=18 channel=4
					8, -2, -8, -12, -17, -35, 9, -2, 4,
					-- layer=2 filter=18 channel=5
					0, 24, 64, -39, -42, 17, -57, -65, -29,
					-- layer=2 filter=18 channel=6
					-9, 19, -1, -13, -9, -28, 0, -28, -50,
					-- layer=2 filter=18 channel=7
					-10, -23, -2, -29, -25, 19, -10, -26, 5,
					-- layer=2 filter=18 channel=8
					-55, -36, -19, 27, 34, 9, -8, -3, 36,
					-- layer=2 filter=18 channel=9
					-18, -19, -45, 3, -57, -62, -2, -7, -24,
					-- layer=2 filter=18 channel=10
					-8, 2, -28, 54, 19, 9, 0, 13, -8,
					-- layer=2 filter=18 channel=11
					62, 10, -3, 54, 40, 40, 6, 3, 10,
					-- layer=2 filter=18 channel=12
					-5, 23, -14, 21, -10, -1, 1, -2, 1,
					-- layer=2 filter=18 channel=13
					9, 51, 102, -7, 3, 12, -44, -52, -67,
					-- layer=2 filter=18 channel=14
					17, 27, 9, 33, 40, 13, 19, -6, -9,
					-- layer=2 filter=18 channel=15
					-2, -34, -18, 6, -13, -56, -11, 18, 7,
					-- layer=2 filter=18 channel=16
					8, -1, 2, -1, -15, -9, -21, -25, 17,
					-- layer=2 filter=18 channel=17
					26, 10, 2, 9, 1, 3, 10, -13, -4,
					-- layer=2 filter=18 channel=18
					29, 23, 17, -2, -58, -33, -93, -90, -42,
					-- layer=2 filter=18 channel=19
					-17, 7, -3, 8, 27, -7, -28, -26, 12,
					-- layer=2 filter=18 channel=20
					26, 15, 2, 32, 0, -20, 9, 20, 7,
					-- layer=2 filter=18 channel=21
					-3, 11, -17, 4, 9, -24, 5, 4, -25,
					-- layer=2 filter=18 channel=22
					6, 2, 29, 15, 0, 25, 12, 0, -28,
					-- layer=2 filter=18 channel=23
					-3, 7, -4, 14, 29, 28, -16, 11, 21,
					-- layer=2 filter=18 channel=24
					19, 9, 37, 4, -14, 19, 19, -1, -12,
					-- layer=2 filter=18 channel=25
					2, -97, -23, 31, 1, -27, -51, 6, -40,
					-- layer=2 filter=18 channel=26
					-1, 3, 15, 14, 8, 11, -1, 3, 8,
					-- layer=2 filter=18 channel=27
					-3, 3, 14, 12, -13, -12, -6, -14, 13,
					-- layer=2 filter=18 channel=28
					-1, 12, 15, 20, -6, -2, 10, -3, -10,
					-- layer=2 filter=18 channel=29
					18, 7, 4, 9, 19, -20, -18, 7, 26,
					-- layer=2 filter=18 channel=30
					13, 25, 10, -3, -19, -9, 18, -19, 3,
					-- layer=2 filter=18 channel=31
					-15, -16, -54, 28, -10, 2, 0, -5, -46,
					-- layer=2 filter=18 channel=32
					1, 23, 27, -17, 14, 17, -29, -17, 1,
					-- layer=2 filter=18 channel=33
					8, 31, 13, -14, 4, 0, -30, -4, -24,
					-- layer=2 filter=18 channel=34
					-31, -6, -8, 31, 20, -9, 23, 23, 15,
					-- layer=2 filter=18 channel=35
					-58, -53, -61, -18, -90, -86, 55, -19, -22,
					-- layer=2 filter=18 channel=36
					20, 14, -7, 27, -9, -19, 20, 10, 24,
					-- layer=2 filter=18 channel=37
					-42, 12, -5, 18, 14, 11, 6, 43, 20,
					-- layer=2 filter=18 channel=38
					-23, -12, 6, 0, -41, -23, -21, -20, -51,
					-- layer=2 filter=18 channel=39
					31, -12, 43, 16, 5, 10, 6, -26, -2,
					-- layer=2 filter=18 channel=40
					-17, 14, 21, 31, -36, -25, 23, -1, -30,
					-- layer=2 filter=18 channel=41
					-4, 6, 0, -5, 22, 7, -5, 12, -1,
					-- layer=2 filter=18 channel=42
					18, -3, 8, -5, -36, 1, 10, 4, 0,
					-- layer=2 filter=18 channel=43
					12, 14, -9, -58, 3, 19, -46, 6, -6,
					-- layer=2 filter=18 channel=44
					-7, 13, -30, 14, 28, -9, -12, 11, 38,
					-- layer=2 filter=18 channel=45
					28, 23, -15, -21, 30, 23, -17, -39, -37,
					-- layer=2 filter=18 channel=46
					-54, -18, -26, -49, -43, -20, 19, -1, -25,
					-- layer=2 filter=18 channel=47
					6, -4, -29, -10, 14, 0, -5, -13, 6,
					-- layer=2 filter=18 channel=48
					-3, 7, 2, 0, -6, -30, 11, -25, -16,
					-- layer=2 filter=18 channel=49
					38, -4, 12, -11, 9, 43, 0, -30, -18,
					-- layer=2 filter=18 channel=50
					-12, -7, 18, -19, -22, -38, -12, 3, 0,
					-- layer=2 filter=18 channel=51
					14, -6, -12, -11, -48, -40, -28, -84, -71,
					-- layer=2 filter=18 channel=52
					44, 18, -17, 78, 45, 24, 21, 17, 8,
					-- layer=2 filter=18 channel=53
					-26, 22, -21, -39, -5, -27, 5, 38, 25,
					-- layer=2 filter=18 channel=54
					3, -5, -33, -36, 0, 34, -10, 22, 20,
					-- layer=2 filter=18 channel=55
					75, 56, 7, 102, 66, 59, 25, 59, 56,
					-- layer=2 filter=18 channel=56
					-19, 2, 10, 23, -15, -4, 35, -4, -3,
					-- layer=2 filter=18 channel=57
					-2, 15, 10, 12, 12, 4, -25, -43, 2,
					-- layer=2 filter=18 channel=58
					28, -6, 29, -27, 66, 60, 22, -17, -31,
					-- layer=2 filter=18 channel=59
					2, -12, -19, 20, -27, 7, -1, 22, 14,
					-- layer=2 filter=18 channel=60
					-78, -32, -19, -30, -103, -92, 25, -15, -32,
					-- layer=2 filter=18 channel=61
					44, -59, 6, -21, -15, -6, -63, -54, -49,
					-- layer=2 filter=18 channel=62
					-1, -41, -73, -17, 25, 32, -81, -21, 17,
					-- layer=2 filter=18 channel=63
					19, -1, 24, 9, -5, 10, -5, -29, 6,
					-- layer=2 filter=19 channel=0
					-10, -21, -11, 42, 32, 43, 32, 45, 18,
					-- layer=2 filter=19 channel=1
					-57, -5, -5, -18, -81, -24, 12, -38, 27,
					-- layer=2 filter=19 channel=2
					49, 27, 11, 11, 2, 9, -10, -7, -7,
					-- layer=2 filter=19 channel=3
					30, 9, 14, -6, -7, -25, -14, -53, -37,
					-- layer=2 filter=19 channel=4
					33, 59, 26, 24, -3, -20, -10, 1, -13,
					-- layer=2 filter=19 channel=5
					-12, -21, -1, -34, -79, 23, -35, -16, 67,
					-- layer=2 filter=19 channel=6
					3, 15, 25, -44, -2, 15, -26, -22, -6,
					-- layer=2 filter=19 channel=7
					34, 18, 49, 4, 3, -12, -3, 17, 22,
					-- layer=2 filter=19 channel=8
					-32, -57, -29, 47, 87, 59, 19, -5, -8,
					-- layer=2 filter=19 channel=9
					9, 7, 15, -17, -120, -11, 11, -45, 5,
					-- layer=2 filter=19 channel=10
					1, -29, -15, 14, 25, 2, 8, 26, 12,
					-- layer=2 filter=19 channel=11
					31, 13, -22, -20, 8, -9, 13, 46, -19,
					-- layer=2 filter=19 channel=12
					36, 19, 17, 14, 11, -14, -26, -45, -47,
					-- layer=2 filter=19 channel=13
					12, -15, 16, -27, -99, -45, -44, -31, -16,
					-- layer=2 filter=19 channel=14
					0, 12, 4, -16, 9, -43, -11, -38, -1,
					-- layer=2 filter=19 channel=15
					8, 14, -33, 6, 16, -8, 6, 27, -17,
					-- layer=2 filter=19 channel=16
					-9, -7, -3, -15, 10, 3, 11, 10, -5,
					-- layer=2 filter=19 channel=17
					3, 26, 9, 12, 17, 7, -17, 8, 4,
					-- layer=2 filter=19 channel=18
					11, 6, -25, -24, -32, -3, -50, -42, -19,
					-- layer=2 filter=19 channel=19
					20, 14, -3, 38, 7, 6, -19, -46, -40,
					-- layer=2 filter=19 channel=20
					40, 49, 26, 16, 22, -9, -33, -23, -37,
					-- layer=2 filter=19 channel=21
					7, 10, 0, 25, -7, 9, -6, -18, -1,
					-- layer=2 filter=19 channel=22
					-28, -3, -22, 23, 24, 10, 4, -1, -22,
					-- layer=2 filter=19 channel=23
					10, 31, 0, -39, 12, 4, -33, 0, -1,
					-- layer=2 filter=19 channel=24
					5, 25, 2, -4, 0, -8, -5, -16, -29,
					-- layer=2 filter=19 channel=25
					31, 87, -2, 58, 0, 11, 22, 16, 20,
					-- layer=2 filter=19 channel=26
					11, -3, -4, 14, 9, 9, -14, -17, 11,
					-- layer=2 filter=19 channel=27
					-5, 10, -12, -14, 4, 0, 11, -16, 6,
					-- layer=2 filter=19 channel=28
					5, -1, -13, 19, 12, 12, 16, -3, 22,
					-- layer=2 filter=19 channel=29
					16, 13, -5, 19, 25, 14, -42, -61, -58,
					-- layer=2 filter=19 channel=30
					1, -31, -9, -10, -11, -7, 0, -34, -16,
					-- layer=2 filter=19 channel=31
					-24, -38, -25, 12, -24, -1, 10, 18, -2,
					-- layer=2 filter=19 channel=32
					-2, 10, 23, 12, -36, 5, -16, 2, 23,
					-- layer=2 filter=19 channel=33
					-12, -4, -1, -8, 7, 0, -11, -7, -17,
					-- layer=2 filter=19 channel=34
					-14, -22, -33, 7, 35, 23, -2, 22, 0,
					-- layer=2 filter=19 channel=35
					-20, -33, -34, -27, -66, -64, 15, -6, 32,
					-- layer=2 filter=19 channel=36
					26, 28, -4, 18, 1, 11, -12, -45, -49,
					-- layer=2 filter=19 channel=37
					19, 4, -26, 13, 39, 2, 5, 25, 11,
					-- layer=2 filter=19 channel=38
					-30, 0, -41, -5, -100, -52, -32, -30, 12,
					-- layer=2 filter=19 channel=39
					-55, -33, -19, 10, -26, -7, 44, -4, 29,
					-- layer=2 filter=19 channel=40
					3, -25, 0, -11, -58, -20, 27, 20, 3,
					-- layer=2 filter=19 channel=41
					0, 4, 12, -5, 31, 7, -13, 12, -16,
					-- layer=2 filter=19 channel=42
					50, 42, 36, 4, -10, 18, -22, -1, 4,
					-- layer=2 filter=19 channel=43
					-19, 1, -9, -18, -14, -8, -10, 4, -12,
					-- layer=2 filter=19 channel=44
					17, 52, 28, -8, 3, -20, 5, 22, -5,
					-- layer=2 filter=19 channel=45
					-7, 1, -16, -32, 10, -13, -31, -26, -14,
					-- layer=2 filter=19 channel=46
					52, 47, 27, -14, -36, 48, -5, -6, 32,
					-- layer=2 filter=19 channel=47
					1, 19, 23, -10, 21, 5, -17, 18, 15,
					-- layer=2 filter=19 channel=48
					-6, -18, 11, 9, 7, 8, 16, -39, -28,
					-- layer=2 filter=19 channel=49
					-20, 47, 7, 15, 12, -32, -29, -29, -11,
					-- layer=2 filter=19 channel=50
					-6, -17, -36, -43, 4, 26, -16, -30, -1,
					-- layer=2 filter=19 channel=51
					60, 23, -6, -16, 15, 17, 19, 38, -4,
					-- layer=2 filter=19 channel=52
					6, 17, 12, -14, -15, -27, -8, 10, -9,
					-- layer=2 filter=19 channel=53
					7, 3, -15, 4, 37, 36, 3, 30, -6,
					-- layer=2 filter=19 channel=54
					-2, 33, 26, -33, 11, -6, -22, -8, -13,
					-- layer=2 filter=19 channel=55
					31, 41, -2, -10, 35, -19, 2, 19, -12,
					-- layer=2 filter=19 channel=56
					35, 1, 0, 15, -28, 32, 15, -19, 10,
					-- layer=2 filter=19 channel=57
					9, 0, -20, -13, -17, -4, 3, -1, 0,
					-- layer=2 filter=19 channel=58
					22, -14, 26, -6, -47, -32, -13, 49, -20,
					-- layer=2 filter=19 channel=59
					-13, 17, 1, 12, 20, -25, -16, -1, -12,
					-- layer=2 filter=19 channel=60
					-9, -3, -7, -39, -70, 41, -3, 12, 11,
					-- layer=2 filter=19 channel=61
					36, 19, 5, 17, -36, -34, -38, -40, 22,
					-- layer=2 filter=19 channel=62
					-6, -8, -6, -36, 2, -64, 13, -28, 3,
					-- layer=2 filter=19 channel=63
					8, -4, 13, -5, -15, -15, 4, -14, -21,
					-- layer=2 filter=20 channel=0
					7, 7, -13, -29, -61, -42, -18, -32, -31,
					-- layer=2 filter=20 channel=1
					-83, -18, 33, -40, 18, 40, -7, -19, -7,
					-- layer=2 filter=20 channel=2
					-7, -4, -29, 0, 28, 1, -13, 9, 32,
					-- layer=2 filter=20 channel=3
					27, 62, 12, 8, 30, 7, -26, -7, 7,
					-- layer=2 filter=20 channel=4
					-27, -4, -27, 48, 50, 1, 42, 44, 16,
					-- layer=2 filter=20 channel=5
					40, 68, 26, 37, -45, -76, 27, 42, -32,
					-- layer=2 filter=20 channel=6
					37, -11, 2, 0, -14, -21, -27, -23, -13,
					-- layer=2 filter=20 channel=7
					20, -7, 31, 2, -10, 19, 44, 29, 39,
					-- layer=2 filter=20 channel=8
					45, -10, 9, 37, -2, 31, -19, -51, -4,
					-- layer=2 filter=20 channel=9
					-34, -7, 14, -18, -4, 22, -25, -13, 17,
					-- layer=2 filter=20 channel=10
					-49, -52, 11, -60, -64, 12, 1, -19, 11,
					-- layer=2 filter=20 channel=11
					-41, -41, -13, -60, -36, 3, 33, 34, 9,
					-- layer=2 filter=20 channel=12
					-4, 10, -4, 16, 13, -21, 0, -10, 32,
					-- layer=2 filter=20 channel=13
					-79, 4, 16, -1, 13, -37, -19, -11, -3,
					-- layer=2 filter=20 channel=14
					20, 16, -9, 30, 25, -7, -24, -7, -7,
					-- layer=2 filter=20 channel=15
					-12, -22, 3, -22, -37, -5, 31, 41, 4,
					-- layer=2 filter=20 channel=16
					7, 22, -7, 6, 9, -42, -46, -2, 29,
					-- layer=2 filter=20 channel=17
					4, 20, 12, -2, 20, -8, -2, -9, 28,
					-- layer=2 filter=20 channel=18
					-8, 23, -10, 35, -64, -8, 11, -4, 23,
					-- layer=2 filter=20 channel=19
					4, -23, -34, 0, -18, -39, 3, 37, 4,
					-- layer=2 filter=20 channel=20
					12, -1, -5, 9, 1, -32, 2, -19, -2,
					-- layer=2 filter=20 channel=21
					4, 11, 6, 17, 9, -12, 6, 5, 13,
					-- layer=2 filter=20 channel=22
					28, 10, 0, 23, 30, -3, 6, -22, -21,
					-- layer=2 filter=20 channel=23
					40, 5, 4, 16, -11, 29, -2, 13, -6,
					-- layer=2 filter=20 channel=24
					7, 29, 9, 4, 0, -6, -3, 5, 9,
					-- layer=2 filter=20 channel=25
					10, -105, -50, 27, 16, 16, 51, 8, 12,
					-- layer=2 filter=20 channel=26
					-2, 1, -2, -4, 10, -5, 7, -1, 0,
					-- layer=2 filter=20 channel=27
					-4, 8, -5, 8, 0, 14, -4, -1, 8,
					-- layer=2 filter=20 channel=28
					-1, 8, 0, 3, -3, 11, 0, 15, 16,
					-- layer=2 filter=20 channel=29
					5, -16, 26, -13, -34, 1, -53, -13, 47,
					-- layer=2 filter=20 channel=30
					37, 12, -17, 47, -9, -33, -60, 9, -57,
					-- layer=2 filter=20 channel=31
					-64, -23, -1, -33, 5, 1, -37, -1, 7,
					-- layer=2 filter=20 channel=32
					18, 28, 37, -2, -11, -13, -42, -28, -18,
					-- layer=2 filter=20 channel=33
					15, 14, 16, -4, -29, -24, -2, -2, -29,
					-- layer=2 filter=20 channel=34
					5, -6, 16, -15, -54, -11, -17, -15, 4,
					-- layer=2 filter=20 channel=35
					-19, 13, 28, 67, 75, 43, 24, 34, 57,
					-- layer=2 filter=20 channel=36
					16, 27, 30, 24, 16, -7, 17, 36, -4,
					-- layer=2 filter=20 channel=37
					-22, -15, 24, -54, -22, -19, -26, -26, -6,
					-- layer=2 filter=20 channel=38
					-47, 0, -2, -39, 8, 19, -27, -55, -13,
					-- layer=2 filter=20 channel=39
					-48, -38, -12, -34, -64, -57, 11, -9, -22,
					-- layer=2 filter=20 channel=40
					-6, 21, -24, 16, 6, -34, -34, -2, -46,
					-- layer=2 filter=20 channel=41
					28, 11, 1, -7, -8, -17, 7, -14, -33,
					-- layer=2 filter=20 channel=42
					-3, 0, 12, 28, 33, 46, 3, 9, 47,
					-- layer=2 filter=20 channel=43
					-21, -29, -30, -73, -28, -27, -4, 22, 38,
					-- layer=2 filter=20 channel=44
					-19, -41, -37, -12, 6, -39, 47, 32, 32,
					-- layer=2 filter=20 channel=45
					30, 4, -6, 26, 4, -43, -7, -52, -9,
					-- layer=2 filter=20 channel=46
					-24, -9, 30, 51, 33, 75, 52, 68, 65,
					-- layer=2 filter=20 channel=47
					14, -8, -17, 11, 25, -16, 30, 2, 31,
					-- layer=2 filter=20 channel=48
					11, -13, 35, 28, 7, 13, -13, 20, 22,
					-- layer=2 filter=20 channel=49
					-33, -38, -78, -3, -26, -5, 50, 6, 44,
					-- layer=2 filter=20 channel=50
					-4, 12, 15, 21, -3, -42, -9, 0, -11,
					-- layer=2 filter=20 channel=51
					13, -32, -13, 16, -28, 36, -12, -19, -11,
					-- layer=2 filter=20 channel=52
					-1, -47, 7, -43, -44, 8, -7, -21, 4,
					-- layer=2 filter=20 channel=53
					11, -26, -1, -19, -65, -25, 32, 15, -27,
					-- layer=2 filter=20 channel=54
					-18, -28, -34, -52, -43, 7, 6, 20, 42,
					-- layer=2 filter=20 channel=55
					-10, -9, -35, -46, -21, 21, -8, -22, -12,
					-- layer=2 filter=20 channel=56
					-11, -38, 0, -1, 3, 33, -6, -3, 2,
					-- layer=2 filter=20 channel=57
					31, 47, 1, -38, -58, -48, -25, -4, -18,
					-- layer=2 filter=20 channel=58
					75, 30, 28, 108, 30, -23, 53, 0, -44,
					-- layer=2 filter=20 channel=59
					23, -10, 25, -8, -24, -43, -28, -24, -37,
					-- layer=2 filter=20 channel=60
					0, 20, 22, 73, 79, -15, 46, 19, 21,
					-- layer=2 filter=20 channel=61
					4, 4, 23, 95, -11, 4, 58, 77, 60,
					-- layer=2 filter=20 channel=62
					-83, -86, 11, -37, 24, 95, 35, 43, 90,
					-- layer=2 filter=20 channel=63
					28, 20, -5, 21, 11, -30, 0, -6, -9,
					-- layer=2 filter=21 channel=0
					20, -14, 8, 15, 7, -10, 6, -4, -17,
					-- layer=2 filter=21 channel=1
					-21, -4, 0, 4, -10, 10, 0, -5, -14,
					-- layer=2 filter=21 channel=2
					-22, -9, -17, -1, -18, -10, -22, -35, -5,
					-- layer=2 filter=21 channel=3
					-16, -4, 15, -31, -24, -1, -11, -18, -4,
					-- layer=2 filter=21 channel=4
					3, -21, -11, 11, -4, -15, -10, -28, -11,
					-- layer=2 filter=21 channel=5
					-22, -11, -4, -8, -3, 1, -15, 5, -7,
					-- layer=2 filter=21 channel=6
					-17, 11, -15, 3, -2, -19, 2, -2, -11,
					-- layer=2 filter=21 channel=7
					0, -17, -15, -25, 5, 8, -6, -13, -1,
					-- layer=2 filter=21 channel=8
					-1, -14, -5, -17, -10, -3, -20, 1, -3,
					-- layer=2 filter=21 channel=9
					8, 7, -25, -5, 9, 6, -4, 1, -2,
					-- layer=2 filter=21 channel=10
					-1, -6, -6, -9, -3, 5, -15, 3, -9,
					-- layer=2 filter=21 channel=11
					23, 2, -16, 7, -22, -8, -8, 10, 14,
					-- layer=2 filter=21 channel=12
					-18, -4, -7, 0, -15, -31, -1, -12, -25,
					-- layer=2 filter=21 channel=13
					-11, 2, -2, 12, -2, 8, -29, -7, -4,
					-- layer=2 filter=21 channel=14
					-25, 7, -4, 0, -27, -21, -29, -6, 6,
					-- layer=2 filter=21 channel=15
					-3, -7, -19, 4, -10, -7, 0, -15, -16,
					-- layer=2 filter=21 channel=16
					-10, -17, -12, -21, -11, 2, 0, -3, 6,
					-- layer=2 filter=21 channel=17
					-10, -4, -22, -17, -3, -6, -28, -21, -7,
					-- layer=2 filter=21 channel=18
					-18, -8, 9, -5, -16, -13, -6, -15, -2,
					-- layer=2 filter=21 channel=19
					-25, -25, -16, -30, -17, -5, -18, -7, -14,
					-- layer=2 filter=21 channel=20
					-15, -12, -13, 9, -21, -23, -7, -20, -6,
					-- layer=2 filter=21 channel=21
					-11, -8, -9, -22, -7, -27, -14, -14, -12,
					-- layer=2 filter=21 channel=22
					-1, -3, 3, -10, -12, -2, 3, -35, -15,
					-- layer=2 filter=21 channel=23
					0, -5, -19, -13, -4, -6, -5, -8, 8,
					-- layer=2 filter=21 channel=24
					-18, -2, -18, 0, -14, -16, -23, -13, -4,
					-- layer=2 filter=21 channel=25
					8, -20, -20, -3, -5, 30, -9, 23, 15,
					-- layer=2 filter=21 channel=26
					-4, -1, -9, -1, 5, -8, 0, 6, 9,
					-- layer=2 filter=21 channel=27
					-13, -7, 9, -8, -12, -2, 3, -6, 8,
					-- layer=2 filter=21 channel=28
					5, 10, 6, 0, -1, 2, -2, 1, 11,
					-- layer=2 filter=21 channel=29
					-17, -1, -1, -6, -2, -11, -24, 7, -8,
					-- layer=2 filter=21 channel=30
					4, -7, -2, -27, 0, -15, -5, -30, -24,
					-- layer=2 filter=21 channel=31
					-12, 27, -12, 15, 2, 6, 9, -21, -18,
					-- layer=2 filter=21 channel=32
					-18, -18, -13, -1, -13, -15, -32, -19, -21,
					-- layer=2 filter=21 channel=33
					-21, -21, 0, -20, -2, -5, -25, 6, -5,
					-- layer=2 filter=21 channel=34
					0, -22, -8, -21, 0, -24, -7, -10, -3,
					-- layer=2 filter=21 channel=35
					-15, 2, 1, 6, 11, -5, 19, -4, 6,
					-- layer=2 filter=21 channel=36
					-17, -21, 2, 4, 0, -2, 10, -23, -30,
					-- layer=2 filter=21 channel=37
					-11, 5, -15, -7, 7, -7, -15, -12, -6,
					-- layer=2 filter=21 channel=38
					-14, -9, -9, -13, -17, -15, 7, -23, -18,
					-- layer=2 filter=21 channel=39
					-3, -17, 0, -3, -1, -15, -7, -5, -15,
					-- layer=2 filter=21 channel=40
					5, 12, 11, -2, -12, -4, 15, -8, -18,
					-- layer=2 filter=21 channel=41
					0, 0, -8, -4, -14, 10, -12, -6, -12,
					-- layer=2 filter=21 channel=42
					-1, -5, 8, -4, -1, -6, -6, -26, -4,
					-- layer=2 filter=21 channel=43
					-2, -3, -3, -11, -2, -3, -7, -6, -22,
					-- layer=2 filter=21 channel=44
					-13, 7, -8, -14, -5, 6, 3, -9, -9,
					-- layer=2 filter=21 channel=45
					0, -22, -25, -16, -11, -11, -6, -22, 0,
					-- layer=2 filter=21 channel=46
					3, 6, -1, -9, 7, 0, 16, 7, -20,
					-- layer=2 filter=21 channel=47
					-14, -2, -5, -2, 0, 3, -18, 0, 4,
					-- layer=2 filter=21 channel=48
					-20, 13, -14, -1, 1, -15, -10, -5, -19,
					-- layer=2 filter=21 channel=49
					-9, 0, -16, 3, 2, -10, -10, 14, 9,
					-- layer=2 filter=21 channel=50
					-16, 1, -15, -17, -19, -5, -15, 0, -7,
					-- layer=2 filter=21 channel=51
					-6, -12, -4, 2, 12, -9, 11, -1, -1,
					-- layer=2 filter=21 channel=52
					14, 18, -23, -8, -3, 10, -6, -9, 15,
					-- layer=2 filter=21 channel=53
					-14, 4, -1, -4, 12, 0, -17, 9, 0,
					-- layer=2 filter=21 channel=54
					-8, -25, 15, -1, 15, -27, -15, -10, 0,
					-- layer=2 filter=21 channel=55
					4, 7, -29, -2, -17, -14, 5, -4, -6,
					-- layer=2 filter=21 channel=56
					0, 22, -18, -2, -11, -6, -7, -21, -8,
					-- layer=2 filter=21 channel=57
					-14, -9, 8, -2, 6, -3, -6, -6, 14,
					-- layer=2 filter=21 channel=58
					2, 0, 21, 9, 19, 10, 8, -18, -7,
					-- layer=2 filter=21 channel=59
					0, -20, -12, -28, 9, 1, -17, -7, -2,
					-- layer=2 filter=21 channel=60
					18, 12, -16, 10, 13, -15, -7, 20, -20,
					-- layer=2 filter=21 channel=61
					-6, -3, -7, 16, -25, -1, 9, 16, 9,
					-- layer=2 filter=21 channel=62
					-9, -3, -6, 9, -6, 4, -6, 4, 6,
					-- layer=2 filter=21 channel=63
					0, -13, -12, -27, -12, 10, -17, -23, -19,
					-- layer=2 filter=22 channel=0
					-1, 5, -9, 0, -7, -4, -20, -6, -11,
					-- layer=2 filter=22 channel=1
					-13, -15, -17, 11, -7, 2, 2, -7, 11,
					-- layer=2 filter=22 channel=2
					7, -19, 0, -12, -9, 0, 8, -11, -18,
					-- layer=2 filter=22 channel=3
					2, -7, 7, -5, 2, -13, -11, 4, -6,
					-- layer=2 filter=22 channel=4
					9, -12, -12, 1, 2, -10, 0, -3, 2,
					-- layer=2 filter=22 channel=5
					-13, 10, -7, -11, -2, 3, -11, 1, -5,
					-- layer=2 filter=22 channel=6
					-5, -10, -8, -3, 4, -10, 0, 8, 5,
					-- layer=2 filter=22 channel=7
					-4, -1, 9, 3, -8, -4, 4, -12, -9,
					-- layer=2 filter=22 channel=8
					6, -12, 9, -9, -8, -12, -10, -17, -8,
					-- layer=2 filter=22 channel=9
					2, 6, -7, 6, 7, 0, -2, 4, 8,
					-- layer=2 filter=22 channel=10
					-9, -2, -9, 13, -3, 1, -11, -12, -9,
					-- layer=2 filter=22 channel=11
					-10, 13, 9, 4, -16, -3, -4, -18, -16,
					-- layer=2 filter=22 channel=12
					0, 3, -12, -13, -2, -6, -10, -16, -17,
					-- layer=2 filter=22 channel=13
					5, -11, 2, 3, 1, 2, -18, -13, 1,
					-- layer=2 filter=22 channel=14
					-2, -1, -1, 1, 1, -15, -5, -10, -12,
					-- layer=2 filter=22 channel=15
					-10, -5, -12, -1, 7, 12, -6, -14, 2,
					-- layer=2 filter=22 channel=16
					9, -14, -8, 12, 0, -15, 3, 0, -14,
					-- layer=2 filter=22 channel=17
					-8, -5, -12, -12, -12, -14, -14, 5, -9,
					-- layer=2 filter=22 channel=18
					0, 13, 13, 4, -11, -14, 9, -6, 14,
					-- layer=2 filter=22 channel=19
					-14, -5, -8, 3, -20, 0, -14, 8, -1,
					-- layer=2 filter=22 channel=20
					-2, -3, -10, -12, -7, -1, -12, -5, 0,
					-- layer=2 filter=22 channel=21
					3, -15, 8, -4, 11, -1, -8, -2, -5,
					-- layer=2 filter=22 channel=22
					-16, 0, 3, -10, -12, -4, 1, 8, -7,
					-- layer=2 filter=22 channel=23
					12, -5, 5, -14, -7, -11, 9, -7, -14,
					-- layer=2 filter=22 channel=24
					8, 5, 7, -16, 0, -9, -7, -11, -2,
					-- layer=2 filter=22 channel=25
					6, -2, -3, 12, 5, -13, -7, -11, 12,
					-- layer=2 filter=22 channel=26
					3, -1, 14, -11, 10, -11, -8, -2, -12,
					-- layer=2 filter=22 channel=27
					-2, 0, 0, -4, -5, 12, -8, -2, 0,
					-- layer=2 filter=22 channel=28
					-2, -6, 11, 7, -1, -7, -15, 6, 12,
					-- layer=2 filter=22 channel=29
					9, -10, -11, 11, -12, 3, 12, -3, 1,
					-- layer=2 filter=22 channel=30
					1, -7, -9, -16, -8, -12, 7, 0, -10,
					-- layer=2 filter=22 channel=31
					-5, -16, -20, -10, 9, 5, -9, -6, 9,
					-- layer=2 filter=22 channel=32
					-4, 3, -2, -8, -3, 8, 1, 13, 4,
					-- layer=2 filter=22 channel=33
					-16, 4, 0, 0, -12, 1, -7, 0, 5,
					-- layer=2 filter=22 channel=34
					2, -6, 7, -3, -8, -13, -7, -19, -16,
					-- layer=2 filter=22 channel=35
					-1, -7, 0, -6, -10, -13, 0, -15, -5,
					-- layer=2 filter=22 channel=36
					0, -5, 9, 3, 0, -16, -12, -18, -10,
					-- layer=2 filter=22 channel=37
					-2, -14, 2, 2, 1, -5, -8, -1, -3,
					-- layer=2 filter=22 channel=38
					-4, 7, 0, -12, 7, 5, -18, -1, -11,
					-- layer=2 filter=22 channel=39
					-3, 3, 0, 0, 0, -8, -5, -6, -7,
					-- layer=2 filter=22 channel=40
					8, 5, -9, 8, -4, 4, 4, -15, -14,
					-- layer=2 filter=22 channel=41
					0, 10, 7, -14, -9, 5, 3, -4, 2,
					-- layer=2 filter=22 channel=42
					5, -12, -15, -4, -15, -12, -6, -9, -7,
					-- layer=2 filter=22 channel=43
					-7, -7, -3, 1, 9, -15, -10, 3, 11,
					-- layer=2 filter=22 channel=44
					-11, 9, -7, -6, 1, -4, -19, 1, 8,
					-- layer=2 filter=22 channel=45
					5, 11, 0, -16, 1, 5, 3, 1, 1,
					-- layer=2 filter=22 channel=46
					-12, 0, -6, -15, 0, -14, -7, 2, 0,
					-- layer=2 filter=22 channel=47
					10, -15, 0, 7, 5, -10, -5, 3, 3,
					-- layer=2 filter=22 channel=48
					-4, -17, -14, -5, -3, -8, 5, 2, -8,
					-- layer=2 filter=22 channel=49
					-8, 5, -5, 8, -1, -14, 0, -3, 3,
					-- layer=2 filter=22 channel=50
					-17, 0, -13, -4, 1, 12, -6, 3, 3,
					-- layer=2 filter=22 channel=51
					7, -6, -11, 2, -4, -5, 8, 11, 5,
					-- layer=2 filter=22 channel=52
					-4, 3, -12, 1, 2, -10, 6, 9, 13,
					-- layer=2 filter=22 channel=53
					-11, -7, -7, 2, -12, -5, -16, -8, 0,
					-- layer=2 filter=22 channel=54
					1, -5, -5, -10, -8, 5, -11, -12, 5,
					-- layer=2 filter=22 channel=55
					5, -11, 10, -2, -7, -2, -6, -14, -8,
					-- layer=2 filter=22 channel=56
					1, -6, -11, 8, 0, 6, -16, -7, -3,
					-- layer=2 filter=22 channel=57
					-13, -13, -2, 0, -9, 9, 1, -3, 4,
					-- layer=2 filter=22 channel=58
					-13, -14, -14, -10, -10, -10, 5, 3, 6,
					-- layer=2 filter=22 channel=59
					6, 1, 0, 2, 2, 14, -9, -10, 7,
					-- layer=2 filter=22 channel=60
					-2, -4, 12, 3, 4, -12, -5, -8, -10,
					-- layer=2 filter=22 channel=61
					-3, 5, 1, 0, -10, -16, 11, -5, -7,
					-- layer=2 filter=22 channel=62
					-6, 0, -11, 6, 10, 2, 0, 2, -14,
					-- layer=2 filter=22 channel=63
					9, -14, -8, -8, -5, 11, -11, -2, -7,
					-- layer=2 filter=23 channel=0
					-15, 8, 36, 7, -7, 16, -7, -27, -3,
					-- layer=2 filter=23 channel=1
					26, 14, 2, 14, 20, -2, -31, -29, -27,
					-- layer=2 filter=23 channel=2
					24, 2, 6, 18, 12, 5, 14, 18, 5,
					-- layer=2 filter=23 channel=3
					-8, -11, 11, -15, -43, -25, -14, -41, -26,
					-- layer=2 filter=23 channel=4
					14, -2, -11, 1, -7, -11, -1, 14, -6,
					-- layer=2 filter=23 channel=5
					-67, -48, 10, -65, -22, -28, -77, -51, -32,
					-- layer=2 filter=23 channel=6
					1, 24, 47, -45, -42, 43, -27, -44, -41,
					-- layer=2 filter=23 channel=7
					17, 39, 7, 13, 5, 57, -43, -61, 0,
					-- layer=2 filter=23 channel=8
					-19, 27, 15, -23, -34, -1, -53, -46, -22,
					-- layer=2 filter=23 channel=9
					8, -56, -31, 31, -2, 12, -12, 19, 27,
					-- layer=2 filter=23 channel=10
					14, 23, 8, 22, 22, 14, 7, 10, 35,
					-- layer=2 filter=23 channel=11
					37, 44, 37, -4, -5, 0, 2, 5, 11,
					-- layer=2 filter=23 channel=12
					-2, 0, -6, 1, 24, 17, -5, 25, 13,
					-- layer=2 filter=23 channel=13
					2, -69, -38, -32, -69, -31, -54, -21, -4,
					-- layer=2 filter=23 channel=14
					-19, -46, 15, -34, -35, -28, -17, -5, -33,
					-- layer=2 filter=23 channel=15
					2, 4, 23, 25, 33, 37, -28, -24, 8,
					-- layer=2 filter=23 channel=16
					30, 26, 37, 0, 6, 2, 11, -8, -15,
					-- layer=2 filter=23 channel=17
					10, 3, 16, 9, -15, 7, -12, -4, 12,
					-- layer=2 filter=23 channel=18
					0, -32, -19, -34, -7, 41, -24, 46, 2,
					-- layer=2 filter=23 channel=19
					17, -16, 3, -3, -4, -8, -12, -21, -19,
					-- layer=2 filter=23 channel=20
					-3, 14, 6, 4, -10, -12, -4, -11, 18,
					-- layer=2 filter=23 channel=21
					21, 3, -9, 13, -7, 5, -72, -53, -9,
					-- layer=2 filter=23 channel=22
					38, 12, 12, 13, -6, 0, -14, -15, 13,
					-- layer=2 filter=23 channel=23
					-4, 13, 19, 12, 2, 20, 20, -33, -47,
					-- layer=2 filter=23 channel=24
					14, 17, 1, 21, 6, -2, 21, 19, 11,
					-- layer=2 filter=23 channel=25
					0, -26, -76, -6, 5, -4, -36, -33, 29,
					-- layer=2 filter=23 channel=26
					-14, -5, 0, 0, -6, 11, 10, -5, 10,
					-- layer=2 filter=23 channel=27
					-13, -14, -3, -11, 14, -4, -9, -11, -15,
					-- layer=2 filter=23 channel=28
					3, 0, 7, 0, 19, 13, 17, -4, 14,
					-- layer=2 filter=23 channel=29
					19, 16, 25, 34, -4, 18, -2, 10, 16,
					-- layer=2 filter=23 channel=30
					-10, -26, 7, 12, 1, 5, 8, -3, 15,
					-- layer=2 filter=23 channel=31
					40, 6, 26, 14, 11, 20, 13, 16, 21,
					-- layer=2 filter=23 channel=32
					-4, -14, 23, -22, -88, -21, -40, -76, -69,
					-- layer=2 filter=23 channel=33
					22, 5, 8, 2, -33, 6, -16, -68, -44,
					-- layer=2 filter=23 channel=34
					14, 30, 27, 15, 14, 26, 2, 10, 38,
					-- layer=2 filter=23 channel=35
					-7, -26, -15, 40, 54, 18, -8, 26, -4,
					-- layer=2 filter=23 channel=36
					0, 11, -15, -7, 16, 9, 1, 1, 0,
					-- layer=2 filter=23 channel=37
					-8, 19, 51, 8, 31, 32, -4, -16, 28,
					-- layer=2 filter=23 channel=38
					3, -17, 10, -33, 4, -15, -27, 5, -22,
					-- layer=2 filter=23 channel=39
					-29, -39, 9, 15, 9, -28, 30, 12, 3,
					-- layer=2 filter=23 channel=40
					9, -31, 2, 1, -7, 16, -14, 1, 6,
					-- layer=2 filter=23 channel=41
					-22, 13, 32, 6, -22, 7, -16, -60, -35,
					-- layer=2 filter=23 channel=42
					32, 22, 18, 18, -2, 13, 6, 14, 22,
					-- layer=2 filter=23 channel=43
					11, 29, 30, -25, 3, -40, -5, -50, -13,
					-- layer=2 filter=23 channel=44
					16, 28, 12, 16, 17, -3, 4, -4, 10,
					-- layer=2 filter=23 channel=45
					0, 23, 22, -26, -33, -27, -8, -71, -46,
					-- layer=2 filter=23 channel=46
					-1, 12, 9, 7, 31, -1, -1, 4, -26,
					-- layer=2 filter=23 channel=47
					-12, -1, 50, -7, -7, -4, -18, -25, -32,
					-- layer=2 filter=23 channel=48
					20, 17, 22, 27, 10, 2, 20, 17, 34,
					-- layer=2 filter=23 channel=49
					-41, -23, 29, -39, -25, -28, 29, -17, -23,
					-- layer=2 filter=23 channel=50
					-8, 12, 19, -40, -9, 0, -60, -10, -47,
					-- layer=2 filter=23 channel=51
					13, -30, -35, 22, -13, -39, -2, -23, 3,
					-- layer=2 filter=23 channel=52
					20, 8, -6, -1, 2, -15, 6, 7, 3,
					-- layer=2 filter=23 channel=53
					-23, -24, 40, 4, -2, 32, -22, -33, -20,
					-- layer=2 filter=23 channel=54
					-19, 18, 9, -18, -31, -42, -20, -25, -29,
					-- layer=2 filter=23 channel=55
					-15, -3, 4, -16, -34, -37, -66, -38, -25,
					-- layer=2 filter=23 channel=56
					25, -16, 10, 8, 21, 18, -5, 10, 41,
					-- layer=2 filter=23 channel=57
					21, -18, -5, -18, -28, -3, -5, -68, -53,
					-- layer=2 filter=23 channel=58
					-1, 2, 44, -8, -60, -17, -2, -22, -7,
					-- layer=2 filter=23 channel=59
					14, 1, 9, -25, -20, 3, -60, -41, -2,
					-- layer=2 filter=23 channel=60
					-30, 0, -1, 21, -14, -11, -6, 8, -3,
					-- layer=2 filter=23 channel=61
					19, -45, -33, 26, 21, 29, 34, 47, -20,
					-- layer=2 filter=23 channel=62
					29, 49, 34, -80, -23, -19, -100, -25, 6,
					-- layer=2 filter=23 channel=63
					-18, 27, 14, -53, -58, 1, -10, -40, -60,
					-- layer=2 filter=24 channel=0
					-14, -38, -51, 12, -2, -10, 43, -25, 23,
					-- layer=2 filter=24 channel=1
					5, 22, -8, 9, 9, -13, 4, 20, -3,
					-- layer=2 filter=24 channel=2
					3, 29, 6, 0, 1, 25, 12, 16, -5,
					-- layer=2 filter=24 channel=3
					14, -7, -31, -14, -33, -34, -36, -35, -61,
					-- layer=2 filter=24 channel=4
					16, 58, 20, -33, -12, 4, -28, -33, -38,
					-- layer=2 filter=24 channel=5
					1, -3, -12, 29, 13, 34, 0, -70, 0,
					-- layer=2 filter=24 channel=6
					-8, 13, 2, -21, -1, -24, -11, -6, -17,
					-- layer=2 filter=24 channel=7
					19, 4, -12, 39, -32, 38, -9, 29, 38,
					-- layer=2 filter=24 channel=8
					22, 62, 62, -3, 32, 47, -79, -53, -16,
					-- layer=2 filter=24 channel=9
					15, 22, -12, 41, 50, -58, 13, 15, -13,
					-- layer=2 filter=24 channel=10
					6, -39, -35, 21, 16, -6, 13, 16, 0,
					-- layer=2 filter=24 channel=11
					46, -41, -41, 44, -10, 19, 53, 51, 35,
					-- layer=2 filter=24 channel=12
					1, 6, 30, -18, -8, -4, -32, -10, -10,
					-- layer=2 filter=24 channel=13
					-12, -40, -47, 31, 1, -44, 26, -1, -53,
					-- layer=2 filter=24 channel=14
					12, 21, 35, -2, 6, 0, -25, 29, -11,
					-- layer=2 filter=24 channel=15
					22, -21, -27, 17, -5, -1, -25, -3, -19,
					-- layer=2 filter=24 channel=16
					-14, 31, 32, -18, -4, 46, -22, -33, -17,
					-- layer=2 filter=24 channel=17
					-3, -18, -8, -6, 3, -16, -11, 0, -16,
					-- layer=2 filter=24 channel=18
					15, -70, -10, 2, 2, 21, -63, -61, -39,
					-- layer=2 filter=24 channel=19
					13, 40, 31, -23, 1, 14, -67, -26, -17,
					-- layer=2 filter=24 channel=20
					-14, 15, 50, -34, 5, 18, -8, 10, -10,
					-- layer=2 filter=24 channel=21
					55, 22, 32, 10, 13, -6, -26, 4, -20,
					-- layer=2 filter=24 channel=22
					-1, -6, -3, -8, 6, -31, -27, -10, -46,
					-- layer=2 filter=24 channel=23
					-1, -15, 0, -19, -6, -22, -11, 14, -14,
					-- layer=2 filter=24 channel=24
					11, -5, 26, -21, -17, 11, -17, -41, -18,
					-- layer=2 filter=24 channel=25
					45, 9, -11, 32, -19, 18, -6, 1, -31,
					-- layer=2 filter=24 channel=26
					0, -1, -5, -3, -5, -5, 5, 12, 8,
					-- layer=2 filter=24 channel=27
					7, 4, 2, -2, -4, 1, 0, 14, 1,
					-- layer=2 filter=24 channel=28
					-2, -2, -3, 7, -4, 2, 4, -5, -19,
					-- layer=2 filter=24 channel=29
					8, 18, 18, -4, -25, -8, 0, -15, -29,
					-- layer=2 filter=24 channel=30
					6, 2, 25, -6, 8, 10, -33, -86, -46,
					-- layer=2 filter=24 channel=31
					12, 14, -25, 25, 39, -29, -27, 26, 31,
					-- layer=2 filter=24 channel=32
					21, 15, 6, 0, -9, 2, -4, -43, -49,
					-- layer=2 filter=24 channel=33
					-8, 13, 22, 12, -11, -12, -16, 23, -6,
					-- layer=2 filter=24 channel=34
					-1, -31, -26, 24, -19, 18, -20, 2, 22,
					-- layer=2 filter=24 channel=35
					42, 41, 38, 38, 58, 15, -17, 39, 21,
					-- layer=2 filter=24 channel=36
					-3, 6, 29, -39, -40, -11, -33, -40, -33,
					-- layer=2 filter=24 channel=37
					20, -55, -21, 34, -6, 9, 17, 14, 12,
					-- layer=2 filter=24 channel=38
					39, 35, 8, 24, -6, -43, -34, 15, -27,
					-- layer=2 filter=24 channel=39
					-28, -35, -31, -24, -19, -36, 10, -16, -9,
					-- layer=2 filter=24 channel=40
					-5, 26, 16, -23, -12, -29, -29, -22, -27,
					-- layer=2 filter=24 channel=41
					1, 24, -12, -6, 5, -9, -13, 12, -28,
					-- layer=2 filter=24 channel=42
					30, 40, 7, 25, 36, 1, 59, -2, -14,
					-- layer=2 filter=24 channel=43
					-11, 31, 56, -24, 10, 66, -27, -19, -15,
					-- layer=2 filter=24 channel=44
					-15, 1, 20, 0, -10, 13, 0, 16, 20,
					-- layer=2 filter=24 channel=45
					15, 41, 39, -32, -13, -19, -71, -58, -46,
					-- layer=2 filter=24 channel=46
					12, 27, -51, 41, 16, -61, 45, 7, -25,
					-- layer=2 filter=24 channel=47
					19, 13, 5, -40, -14, -12, -53, -28, -9,
					-- layer=2 filter=24 channel=48
					18, 20, 13, 9, -8, 18, -17, -32, -11,
					-- layer=2 filter=24 channel=49
					-88, -19, -64, 20, 19, -8, -14, -62, -39,
					-- layer=2 filter=24 channel=50
					34, 24, -30, 9, 39, 0, -34, -4, 2,
					-- layer=2 filter=24 channel=51
					-4, -1, -11, 27, 28, 9, -4, -31, 55,
					-- layer=2 filter=24 channel=52
					-4, -37, -16, 25, 13, 9, -8, 45, 21,
					-- layer=2 filter=24 channel=53
					-2, -21, -30, 39, -6, -8, 12, 39, 0,
					-- layer=2 filter=24 channel=54
					24, 11, 12, -28, -18, 29, 4, 32, 20,
					-- layer=2 filter=24 channel=55
					45, -35, -11, 6, -13, 28, 22, 33, 2,
					-- layer=2 filter=24 channel=56
					5, 18, -57, 0, 6, -36, 14, 20, -2,
					-- layer=2 filter=24 channel=57
					10, -22, 0, -25, 0, -5, 28, -19, 2,
					-- layer=2 filter=24 channel=58
					-42, 7, -24, -32, -68, -63, 16, -31, -63,
					-- layer=2 filter=24 channel=59
					-6, 8, -19, 33, 13, 8, -19, -17, -1,
					-- layer=2 filter=24 channel=60
					23, 47, -33, 30, 34, -2, 34, -3, -77,
					-- layer=2 filter=24 channel=61
					42, -9, -8, -1, 10, 15, 28, 13, 51,
					-- layer=2 filter=24 channel=62
					18, -23, -34, -56, -30, -91, -55, -33, -21,
					-- layer=2 filter=24 channel=63
					27, 10, -12, -1, -24, 7, -33, -44, -40,
					-- layer=2 filter=25 channel=0
					58, 49, 25, 20, 16, 28, -2, 27, 15,
					-- layer=2 filter=25 channel=1
					-33, -9, -20, 0, -44, -35, 40, -42, 7,
					-- layer=2 filter=25 channel=2
					31, 23, 23, -11, 6, -25, -23, -35, -24,
					-- layer=2 filter=25 channel=3
					12, -3, 6, -18, -17, -4, -5, 3, 7,
					-- layer=2 filter=25 channel=4
					-12, 9, 4, 1, -32, -28, 9, -13, -42,
					-- layer=2 filter=25 channel=5
					-24, -19, 39, -30, -31, 36, -34, -38, 111,
					-- layer=2 filter=25 channel=6
					-9, -25, -25, -45, -62, -57, 23, 16, 10,
					-- layer=2 filter=25 channel=7
					9, 17, 0, -23, 19, -22, 7, 21, -18,
					-- layer=2 filter=25 channel=8
					40, 57, 80, -48, 23, 29, -108, 1, 12,
					-- layer=2 filter=25 channel=9
					36, 4, -39, 23, -12, -33, 42, -8, 19,
					-- layer=2 filter=25 channel=10
					9, 57, 9, 0, 29, 26, -16, 10, -11,
					-- layer=2 filter=25 channel=11
					-39, -7, -12, -13, 1, 0, 45, 11, -24,
					-- layer=2 filter=25 channel=12
					41, 26, 20, 0, -19, -6, -31, -51, -25,
					-- layer=2 filter=25 channel=13
					-15, -14, -13, -53, -64, -14, -82, -47, 4,
					-- layer=2 filter=25 channel=14
					1, -8, -37, -35, -49, -16, -15, -5, -13,
					-- layer=2 filter=25 channel=15
					6, 25, 18, -11, 34, 4, 0, 19, 8,
					-- layer=2 filter=25 channel=16
					-19, -25, -22, -6, -13, -10, 62, 40, 38,
					-- layer=2 filter=25 channel=17
					6, 0, 30, 25, 20, 0, 37, 22, 21,
					-- layer=2 filter=25 channel=18
					-2, -1, -13, -23, 7, -2, -9, -3, 17,
					-- layer=2 filter=25 channel=19
					23, 24, 24, -42, -42, -39, -62, -51, -32,
					-- layer=2 filter=25 channel=20
					1, 11, 36, -15, -34, 6, -30, -24, -20,
					-- layer=2 filter=25 channel=21
					7, 9, 9, 29, -7, -8, -22, 4, 29,
					-- layer=2 filter=25 channel=22
					15, 21, 15, -18, 9, 0, -38, -43, -33,
					-- layer=2 filter=25 channel=23
					-12, -9, -27, 3, 5, 3, 8, 33, 18,
					-- layer=2 filter=25 channel=24
					17, 25, 0, -8, 11, 11, 41, 14, 33,
					-- layer=2 filter=25 channel=25
					11, 25, -36, -34, -13, -16, -16, 17, -26,
					-- layer=2 filter=25 channel=26
					-15, -14, 9, 14, -9, 8, -17, 2, 13,
					-- layer=2 filter=25 channel=27
					1, 11, -4, 0, -3, -8, 5, 9, -11,
					-- layer=2 filter=25 channel=28
					5, 10, -10, -18, -13, -21, 21, -14, 4,
					-- layer=2 filter=25 channel=29
					17, 33, 18, -53, -21, 4, -40, -42, -36,
					-- layer=2 filter=25 channel=30
					37, -22, -31, -3, -51, -29, -14, -53, 18,
					-- layer=2 filter=25 channel=31
					-26, 7, -9, -23, -27, 6, 36, 15, -29,
					-- layer=2 filter=25 channel=32
					-21, -39, -41, -4, -24, -4, -12, -18, 12,
					-- layer=2 filter=25 channel=33
					-25, 5, -17, 11, 21, -12, 9, 25, 53,
					-- layer=2 filter=25 channel=34
					34, 46, 35, 4, 29, 21, -18, 23, 34,
					-- layer=2 filter=25 channel=35
					-5, 1, -15, 38, -31, -32, 31, -27, 26,
					-- layer=2 filter=25 channel=36
					50, 40, 37, -13, -3, 4, -33, -46, -23,
					-- layer=2 filter=25 channel=37
					45, 12, 23, 28, 33, 16, 0, 49, 21,
					-- layer=2 filter=25 channel=38
					-5, -2, -76, -7, -38, -51, 25, 3, -45,
					-- layer=2 filter=25 channel=39
					20, 21, -13, 22, -16, 13, 6, -15, -8,
					-- layer=2 filter=25 channel=40
					32, 3, -43, 15, 0, -36, -15, 9, -59,
					-- layer=2 filter=25 channel=41
					-20, -25, 19, 7, 5, 15, 29, 13, 32,
					-- layer=2 filter=25 channel=42
					16, 36, 22, 5, -39, 3, -16, -5, -1,
					-- layer=2 filter=25 channel=43
					-15, -44, -11, 5, -12, 11, -2, 10, 37,
					-- layer=2 filter=25 channel=44
					-36, -17, -23, 17, 11, -10, 41, 36, 10,
					-- layer=2 filter=25 channel=45
					-24, -16, -11, 14, 4, 2, 39, 21, 26,
					-- layer=2 filter=25 channel=46
					-16, 24, -12, -35, -6, -34, 4, -17, -37,
					-- layer=2 filter=25 channel=47
					-12, -27, -6, -36, -11, 5, -26, -10, -4,
					-- layer=2 filter=25 channel=48
					21, 20, 47, -2, 17, 14, -13, -30, -4,
					-- layer=2 filter=25 channel=49
					23, -30, -13, -26, -18, 14, 4, -45, 0,
					-- layer=2 filter=25 channel=50
					11, 28, -1, -25, 10, 33, -6, -5, 29,
					-- layer=2 filter=25 channel=51
					0, -9, -12, -25, 50, 8, 19, 29, 6,
					-- layer=2 filter=25 channel=52
					-47, -3, -21, -24, 28, 1, -13, -5, -54,
					-- layer=2 filter=25 channel=53
					-26, 2, -16, 2, 15, -3, 6, 54, 52,
					-- layer=2 filter=25 channel=54
					-73, -29, -24, 30, 19, -28, 4, 14, 4,
					-- layer=2 filter=25 channel=55
					-45, -5, -2, 8, -5, -10, -40, -10, -34,
					-- layer=2 filter=25 channel=56
					22, 47, 23, 12, -12, -13, -12, -44, -46,
					-- layer=2 filter=25 channel=57
					-40, 18, -4, 0, 33, 3, 28, 42, 21,
					-- layer=2 filter=25 channel=58
					-54, -13, -12, -15, -15, -26, -74, -67, 16,
					-- layer=2 filter=25 channel=59
					3, 9, 2, -4, 10, 29, -13, -10, -14,
					-- layer=2 filter=25 channel=60
					2, -21, -27, -12, -55, -55, -29, -41, -15,
					-- layer=2 filter=25 channel=61
					-38, 8, -26, -29, -97, -14, 3, 6, 8,
					-- layer=2 filter=25 channel=62
					-51, 46, 37, 43, 37, 28, 29, 29, 10,
					-- layer=2 filter=25 channel=63
					11, -14, 2, -18, -4, -13, -33, -6, -20,
					-- layer=2 filter=26 channel=0
					-3, -3, 16, -4, 0, -33, -18, -11, -9,
					-- layer=2 filter=26 channel=1
					-20, -2, -3, -12, 8, 0, -32, -5, 5,
					-- layer=2 filter=26 channel=2
					-8, -16, -21, -17, -12, -11, -11, 8, -18,
					-- layer=2 filter=26 channel=3
					-15, -23, -18, -5, 10, -5, -7, 3, 21,
					-- layer=2 filter=26 channel=4
					-15, -22, -9, -10, -14, 0, -7, -33, -3,
					-- layer=2 filter=26 channel=5
					-25, 3, -6, 0, 13, 10, 3, -13, -38,
					-- layer=2 filter=26 channel=6
					-24, -9, -15, -40, -29, -7, -38, -2, -27,
					-- layer=2 filter=26 channel=7
					3, -9, 0, -19, -6, -7, -9, -3, 11,
					-- layer=2 filter=26 channel=8
					-22, -15, 4, -19, -13, -22, -1, -24, -20,
					-- layer=2 filter=26 channel=9
					-15, -5, -11, -10, -27, 10, 2, -42, 13,
					-- layer=2 filter=26 channel=10
					-25, -24, -1, -22, -21, -9, 2, -24, 1,
					-- layer=2 filter=26 channel=11
					-10, 7, 14, -26, -13, -12, -6, -27, -36,
					-- layer=2 filter=26 channel=12
					-18, -9, -2, 7, 3, -3, -3, 14, -1,
					-- layer=2 filter=26 channel=13
					5, -19, 4, -27, 2, 0, -21, 10, -9,
					-- layer=2 filter=26 channel=14
					10, -1, 12, -10, -16, -8, 20, 6, -5,
					-- layer=2 filter=26 channel=15
					0, -13, -28, -5, -19, -1, -13, 6, 4,
					-- layer=2 filter=26 channel=16
					-27, -10, -12, -4, 9, -14, -17, 0, -14,
					-- layer=2 filter=26 channel=17
					-13, -17, -27, 11, 8, -16, -6, -17, -4,
					-- layer=2 filter=26 channel=18
					-4, -2, -15, 3, 26, -9, 0, -22, -5,
					-- layer=2 filter=26 channel=19
					-29, -22, -13, -1, -20, -23, -1, -15, -2,
					-- layer=2 filter=26 channel=20
					-2, -8, -4, 0, -9, 8, -14, 16, 2,
					-- layer=2 filter=26 channel=21
					-21, -21, -31, -8, 0, -38, -14, -26, -1,
					-- layer=2 filter=26 channel=22
					-3, 8, 12, 13, 6, -12, 13, -1, 0,
					-- layer=2 filter=26 channel=23
					5, 3, -22, -22, -18, -12, -17, 1, -1,
					-- layer=2 filter=26 channel=24
					-25, -17, -31, -21, -11, 7, 1, -5, 1,
					-- layer=2 filter=26 channel=25
					-4, -11, 0, 2, 7, -2, -10, 7, 9,
					-- layer=2 filter=26 channel=26
					-13, 0, 10, 8, 5, -5, 12, 14, 11,
					-- layer=2 filter=26 channel=27
					12, -5, -6, 13, -5, 3, -5, 12, 6,
					-- layer=2 filter=26 channel=28
					-9, -6, -6, 12, -11, -9, -2, -13, 8,
					-- layer=2 filter=26 channel=29
					-12, -3, -11, 10, -7, -24, 11, -11, -9,
					-- layer=2 filter=26 channel=30
					-15, -28, -26, -9, -5, 13, -10, -5, -10,
					-- layer=2 filter=26 channel=31
					2, -9, 9, 2, -20, 7, -30, -11, -8,
					-- layer=2 filter=26 channel=32
					-10, -21, -16, 7, -12, -7, 1, 2, 0,
					-- layer=2 filter=26 channel=33
					-14, -3, -15, 3, -2, -7, -12, -17, -9,
					-- layer=2 filter=26 channel=34
					-3, 8, 17, 1, -26, -1, 1, 5, -8,
					-- layer=2 filter=26 channel=35
					10, -8, -6, -15, 5, -23, 9, -17, -25,
					-- layer=2 filter=26 channel=36
					8, -5, -3, 4, -10, -20, 10, 5, -11,
					-- layer=2 filter=26 channel=37
					-32, -3, -13, -14, -15, -21, -18, -17, -6,
					-- layer=2 filter=26 channel=38
					-14, -29, 7, -4, -1, -8, -16, -17, -15,
					-- layer=2 filter=26 channel=39
					-8, -7, -17, 9, -4, -13, -15, -9, 6,
					-- layer=2 filter=26 channel=40
					-22, -12, -22, -10, -19, -2, -31, -7, 1,
					-- layer=2 filter=26 channel=41
					-21, -7, 5, -1, -11, -23, 2, -4, -14,
					-- layer=2 filter=26 channel=42
					-22, -15, 1, -22, -1, -16, -9, 7, -11,
					-- layer=2 filter=26 channel=43
					-4, -4, -20, -8, -8, -6, -12, 0, -23,
					-- layer=2 filter=26 channel=44
					-19, -29, -28, -16, -21, -11, -37, -29, 2,
					-- layer=2 filter=26 channel=45
					0, 3, 1, 8, 4, -11, 9, 5, -13,
					-- layer=2 filter=26 channel=46
					-21, 7, -7, -15, 0, 3, -11, -2, -1,
					-- layer=2 filter=26 channel=47
					-19, -19, -3, -21, -10, -20, -14, 3, -17,
					-- layer=2 filter=26 channel=48
					-8, -33, 0, -18, 0, 1, 14, -1, 6,
					-- layer=2 filter=26 channel=49
					-21, 11, 8, -9, -9, -8, -6, -20, -3,
					-- layer=2 filter=26 channel=50
					-12, -23, -11, -24, 11, 0, -21, -14, 2,
					-- layer=2 filter=26 channel=51
					-7, 6, -1, 4, -3, 7, 6, -6, 22,
					-- layer=2 filter=26 channel=52
					6, -16, 2, -8, -6, 1, 5, -11, -28,
					-- layer=2 filter=26 channel=53
					-24, -32, -14, 0, -23, -16, -7, 0, 6,
					-- layer=2 filter=26 channel=54
					1, -8, 16, 1, 4, -17, -14, -15, -24,
					-- layer=2 filter=26 channel=55
					19, -3, 2, -6, 3, -5, 4, 8, -35,
					-- layer=2 filter=26 channel=56
					3, -9, -9, -3, -4, 17, -35, -10, 4,
					-- layer=2 filter=26 channel=57
					-3, 0, -5, -8, -17, -1, -14, -5, 0,
					-- layer=2 filter=26 channel=58
					-13, -1, -10, -7, -10, 11, -12, -11, -5,
					-- layer=2 filter=26 channel=59
					-17, 4, -10, -34, -28, 1, -13, -14, -10,
					-- layer=2 filter=26 channel=60
					-16, -8, -9, -16, -17, 16, -6, 1, 11,
					-- layer=2 filter=26 channel=61
					-7, -22, -31, 14, 14, 22, -13, 1, 15,
					-- layer=2 filter=26 channel=62
					7, 4, 0, 0, -4, -2, 23, 6, 2,
					-- layer=2 filter=26 channel=63
					-26, -9, -11, -13, 1, 9, -13, -1, 4,
					-- layer=2 filter=27 channel=0
					39, 21, 20, 55, 59, 38, 29, 15, -4,
					-- layer=2 filter=27 channel=1
					0, -14, -31, -9, -16, -50, 2, -61, -41,
					-- layer=2 filter=27 channel=2
					-17, 11, -2, -58, -8, 11, -35, 7, 13,
					-- layer=2 filter=27 channel=3
					0, 7, -25, -15, 14, 3, -6, 0, 1,
					-- layer=2 filter=27 channel=4
					-15, 7, 10, -75, -50, -6, -37, -22, 0,
					-- layer=2 filter=27 channel=5
					20, -27, 3, -11, -17, -2, 44, -9, 46,
					-- layer=2 filter=27 channel=6
					28, 7, -41, 5, 10, -27, 14, 27, -11,
					-- layer=2 filter=27 channel=7
					-6, 3, 12, -6, 9, -31, -13, 0, 7,
					-- layer=2 filter=27 channel=8
					50, 13, 15, 25, 77, 48, -41, -18, -27,
					-- layer=2 filter=27 channel=9
					9, -23, -37, -17, -59, 9, 14, -20, -24,
					-- layer=2 filter=27 channel=10
					15, 9, -14, 39, 40, -2, -14, -7, -11,
					-- layer=2 filter=27 channel=11
					0, -1, 1, 16, 39, -3, 17, -2, -17,
					-- layer=2 filter=27 channel=12
					-10, 22, 26, -49, 2, 26, -39, -2, -5,
					-- layer=2 filter=27 channel=13
					2, -5, 18, 49, -7, 23, 21, -12, 45,
					-- layer=2 filter=27 channel=14
					25, 2, -35, 20, 5, -4, -18, -16, -29,
					-- layer=2 filter=27 channel=15
					11, 1, 2, 32, 24, -11, 15, 11, -38,
					-- layer=2 filter=27 channel=16
					-21, -15, -40, -37, -10, -4, 18, 16, 26,
					-- layer=2 filter=27 channel=17
					-2, 2, 22, -15, 6, 5, 0, 32, 20,
					-- layer=2 filter=27 channel=18
					-1, -18, -5, 36, -21, 28, -18, 25, -11,
					-- layer=2 filter=27 channel=19
					-8, 16, 41, -53, 9, 45, -50, -12, 29,
					-- layer=2 filter=27 channel=20
					-3, 27, 6, -57, -8, 7, -5, 14, 36,
					-- layer=2 filter=27 channel=21
					0, 17, 0, 14, -17, -24, 11, 18, 8,
					-- layer=2 filter=27 channel=22
					8, -21, -34, 5, -17, 16, -16, -6, -23,
					-- layer=2 filter=27 channel=23
					21, -14, -19, 19, 6, -8, 29, -2, 12,
					-- layer=2 filter=27 channel=24
					-7, -7, 32, -3, 10, 14, -3, 2, 19,
					-- layer=2 filter=27 channel=25
					69, 8, 26, 3, -33, -11, -58, -18, -74,
					-- layer=2 filter=27 channel=26
					10, -12, -4, 1, -16, -6, 1, -8, -11,
					-- layer=2 filter=27 channel=27
					-6, -8, 15, 11, -6, -11, 8, 0, 1,
					-- layer=2 filter=27 channel=28
					-14, 0, 14, 9, -3, -18, -13, -9, -15,
					-- layer=2 filter=27 channel=29
					25, 31, 15, -34, -15, 4, -1, 3, -38,
					-- layer=2 filter=27 channel=30
					-20, 4, 6, -56, -7, 49, -3, 12, 18,
					-- layer=2 filter=27 channel=31
					-42, 6, -59, 11, -7, -35, -3, -31, -24,
					-- layer=2 filter=27 channel=32
					-14, 6, -2, 11, 8, 0, 2, 9, 11,
					-- layer=2 filter=27 channel=33
					11, -16, -21, 12, 18, 17, 52, 25, -10,
					-- layer=2 filter=27 channel=34
					30, 10, 19, 48, 33, -9, 12, 2, -51,
					-- layer=2 filter=27 channel=35
					-29, -28, -76, 7, -92, -87, 12, -90, 36,
					-- layer=2 filter=27 channel=36
					21, 43, 33, -37, -6, 26, -30, -15, -11,
					-- layer=2 filter=27 channel=37
					20, 7, -14, 85, 50, 0, 25, 17, -15,
					-- layer=2 filter=27 channel=38
					21, 2, -43, -11, -21, -25, -22, -53, 10,
					-- layer=2 filter=27 channel=39
					-21, 14, -12, 48, -7, 3, 4, -56, -35,
					-- layer=2 filter=27 channel=40
					19, 2, -21, 8, -21, 32, -7, 4, 35,
					-- layer=2 filter=27 channel=41
					-1, 0, -39, -5, 3, -12, 3, 28, -8,
					-- layer=2 filter=27 channel=42
					20, 15, 31, -19, 0, 42, -12, 15, 22,
					-- layer=2 filter=27 channel=43
					-5, -2, -33, -38, -7, 7, 21, 11, 18,
					-- layer=2 filter=27 channel=44
					-23, -24, -23, -62, -26, 1, -10, -6, 29,
					-- layer=2 filter=27 channel=45
					-29, -27, -31, 19, 5, -21, 1, 20, 13,
					-- layer=2 filter=27 channel=46
					3, 2, 17, -21, -28, 0, 3, -55, -64,
					-- layer=2 filter=27 channel=47
					-1, -21, -27, 3, -13, 13, 1, 3, 13,
					-- layer=2 filter=27 channel=48
					-6, -13, 3, -28, -12, -2, -57, -13, -9,
					-- layer=2 filter=27 channel=49
					56, 3, -20, 58, 24, 88, 20, 25, -4,
					-- layer=2 filter=27 channel=50
					-35, -39, -20, -8, 7, -19, 28, 16, 2,
					-- layer=2 filter=27 channel=51
					-19, 34, 11, 0, -11, 14, 38, 15, -38,
					-- layer=2 filter=27 channel=52
					24, 20, -33, 1, 30, -25, -15, -14, 0,
					-- layer=2 filter=27 channel=53
					-6, -4, -46, 22, 21, -21, 38, 15, -21,
					-- layer=2 filter=27 channel=54
					-8, -18, -11, -23, 13, 11, 22, 16, 35,
					-- layer=2 filter=27 channel=55
					35, 20, 0, 57, 27, 7, 27, 16, -18,
					-- layer=2 filter=27 channel=56
					6, 24, -22, 1, -12, -21, -36, -36, -31,
					-- layer=2 filter=27 channel=57
					3, -16, 4, 17, 15, -9, 35, 28, 11,
					-- layer=2 filter=27 channel=58
					21, -43, -3, 20, -33, 1, 0, -41, -7,
					-- layer=2 filter=27 channel=59
					16, 1, -22, 8, 8, 4, 3, 23, -10,
					-- layer=2 filter=27 channel=60
					-9, -32, -20, 3, -23, -29, 18, 30, -45,
					-- layer=2 filter=27 channel=61
					10, 50, -4, -65, -15, 13, 22, 27, -2,
					-- layer=2 filter=27 channel=62
					-51, -66, -54, -34, 49, -47, -30, -20, -40,
					-- layer=2 filter=27 channel=63
					-19, 5, -25, -31, 10, -29, 10, 21, 10,
					-- layer=2 filter=28 channel=0
					-8, -2, 22, -23, 40, -7, -19, -19, 5,
					-- layer=2 filter=28 channel=1
					-10, -19, -15, -22, 43, 48, -6, -11, 39,
					-- layer=2 filter=28 channel=2
					-110, -85, -64, -45, -62, -15, -28, -64, 0,
					-- layer=2 filter=28 channel=3
					-30, -7, 11, 42, -14, 6, 25, -3, -39,
					-- layer=2 filter=28 channel=4
					32, -23, -9, -13, -14, -32, -40, -1, 17,
					-- layer=2 filter=28 channel=5
					44, 23, -10, 39, 13, -27, 21, 65, 63,
					-- layer=2 filter=28 channel=6
					14, 16, -13, 17, 21, -13, 5, -38, -38,
					-- layer=2 filter=28 channel=7
					-47, -21, -54, 8, 9, 0, 2, -8, -42,
					-- layer=2 filter=28 channel=8
					10, 5, 7, 90, 81, 34, 29, 21, -34,
					-- layer=2 filter=28 channel=9
					29, -43, -16, -16, -22, -12, -22, -25, 15,
					-- layer=2 filter=28 channel=10
					3, -4, -8, -22, -27, 6, -10, 12, 42,
					-- layer=2 filter=28 channel=11
					-5, 12, -16, -63, -29, -43, 10, -44, 26,
					-- layer=2 filter=28 channel=12
					-85, -72, -47, -77, -100, -64, -58, -38, -16,
					-- layer=2 filter=28 channel=13
					-27, -9, -18, -2, -9, -17, 1, 38, 11,
					-- layer=2 filter=28 channel=14
					-20, 10, -23, 18, 0, 2, -32, -35, 10,
					-- layer=2 filter=28 channel=15
					-28, 15, 12, -18, -24, -2, -1, 25, -3,
					-- layer=2 filter=28 channel=16
					25, -20, -18, 12, 5, -39, 13, 7, -28,
					-- layer=2 filter=28 channel=17
					-20, -11, 2, -23, -1, -21, 11, -12, -22,
					-- layer=2 filter=28 channel=18
					17, 23, 12, 0, 20, -20, 0, 29, 38,
					-- layer=2 filter=28 channel=19
					-54, -34, 0, -22, -44, -38, -15, -22, -12,
					-- layer=2 filter=28 channel=20
					-27, -24, -53, -43, -47, -39, -24, -19, -8,
					-- layer=2 filter=28 channel=21
					24, 5, 26, 19, 8, 29, 12, 9, 0,
					-- layer=2 filter=28 channel=22
					-9, -10, -1, 48, 43, 13, -3, -11, -18,
					-- layer=2 filter=28 channel=23
					37, 16, 3, 32, 24, -7, 6, 11, -17,
					-- layer=2 filter=28 channel=24
					-53, -48, -58, 7, -23, -3, 7, -26, -15,
					-- layer=2 filter=28 channel=25
					55, -30, 32, 7, 14, 16, 19, -11, -25,
					-- layer=2 filter=28 channel=26
					12, 2, -14, 0, 8, 12, 16, 8, 20,
					-- layer=2 filter=28 channel=27
					10, 14, 11, 5, -9, -3, -14, 3, -3,
					-- layer=2 filter=28 channel=28
					-23, 22, 13, 8, 5, 5, -1, 13, 16,
					-- layer=2 filter=28 channel=29
					7, -19, 6, -5, 23, -8, -24, -31, 7,
					-- layer=2 filter=28 channel=30
					-55, -36, -47, 4, 12, -32, -8, 5, -33,
					-- layer=2 filter=28 channel=31
					1, 19, 29, 9, 17, 19, -29, -48, 28,
					-- layer=2 filter=28 channel=32
					10, -19, -24, 22, 3, -33, -13, 15, -44,
					-- layer=2 filter=28 channel=33
					40, 31, 10, 31, 12, 0, -8, 8, -19,
					-- layer=2 filter=28 channel=34
					-50, 3, 0, -40, -22, -9, -19, -18, -20,
					-- layer=2 filter=28 channel=35
					35, 26, 25, -1, 34, 87, 35, -7, 55,
					-- layer=2 filter=28 channel=36
					-81, -109, -23, -92, -52, -40, -50, -19, -10,
					-- layer=2 filter=28 channel=37
					-12, -12, 0, -2, 22, 24, 8, -16, 0,
					-- layer=2 filter=28 channel=38
					-22, -60, -43, -32, -19, 8, -14, -27, 37,
					-- layer=2 filter=28 channel=39
					-26, -2, 36, -37, 31, -15, 25, 10, 24,
					-- layer=2 filter=28 channel=40
					-21, -44, -26, -9, -33, -24, -36, -9, 1,
					-- layer=2 filter=28 channel=41
					38, 6, 9, 17, 16, 0, -6, -10, -14,
					-- layer=2 filter=28 channel=42
					-44, -89, -37, 36, -16, 44, 21, -35, 34,
					-- layer=2 filter=28 channel=43
					-4, -1, -24, 4, -3, -51, 37, -8, -6,
					-- layer=2 filter=28 channel=44
					-7, -31, -26, -44, 5, -34, 3, 0, 11,
					-- layer=2 filter=28 channel=45
					2, 30, 6, 43, 20, -14, -7, -6, -14,
					-- layer=2 filter=28 channel=46
					17, -3, -4, -2, -44, 24, 29, -6, 28,
					-- layer=2 filter=28 channel=47
					-1, 7, -32, -3, -17, -41, 40, 2, -36,
					-- layer=2 filter=28 channel=48
					-53, -57, -14, -16, -16, -6, -49, -17, -14,
					-- layer=2 filter=28 channel=49
					-44, -15, 1, -5, -27, -44, 15, 16, -29,
					-- layer=2 filter=28 channel=50
					-12, 4, -4, 30, 7, -4, 2, -6, 15,
					-- layer=2 filter=28 channel=51
					-31, 33, 9, 7, 33, 42, 45, 31, 9,
					-- layer=2 filter=28 channel=52
					10, 20, 0, -35, -5, 0, -24, 0, 20,
					-- layer=2 filter=28 channel=53
					11, 31, -3, 21, 9, 2, 13, -4, -18,
					-- layer=2 filter=28 channel=54
					-8, 0, -21, -17, 2, -55, 56, 28, 25,
					-- layer=2 filter=28 channel=55
					23, 44, -4, -56, -8, -29, -5, 4, 37,
					-- layer=2 filter=28 channel=56
					-21, -28, 1, 14, 13, -6, -10, -6, 17,
					-- layer=2 filter=28 channel=57
					21, 24, 5, -1, -14, -9, 35, -27, -21,
					-- layer=2 filter=28 channel=58
					47, -2, 8, 39, 38, -62, -7, 27, 55,
					-- layer=2 filter=28 channel=59
					17, 20, 9, 28, 35, 12, -16, -11, -7,
					-- layer=2 filter=28 channel=60
					-43, 35, 38, 33, -19, -15, 24, 8, -6,
					-- layer=2 filter=28 channel=61
					-51, -13, -42, 17, -4, -9, 47, 2, -29,
					-- layer=2 filter=28 channel=62
					9, 42, -2, 4, 35, 17, 71, 185, 86,
					-- layer=2 filter=28 channel=63
					-19, -29, -22, 30, -38, -14, 12, -5, -24,
					-- layer=2 filter=29 channel=0
					-19, -50, -15, 39, 26, 15, -5, -26, -71,
					-- layer=2 filter=29 channel=1
					33, 60, 8, -11, -35, 7, 16, 6, -49,
					-- layer=2 filter=29 channel=2
					1, 52, 30, -32, -52, -27, -5, -10, -12,
					-- layer=2 filter=29 channel=3
					-17, -45, -4, -13, -8, -53, -29, -40, -9,
					-- layer=2 filter=29 channel=4
					0, 20, 38, -15, -25, -10, 0, -12, 24,
					-- layer=2 filter=29 channel=5
					-20, -8, -5, -24, -2, -7, 43, 61, 36,
					-- layer=2 filter=29 channel=6
					40, 6, -3, -19, 22, 23, -10, 27, 14,
					-- layer=2 filter=29 channel=7
					45, 0, 11, 61, 3, 17, -16, -25, -30,
					-- layer=2 filter=29 channel=8
					-16, -3, 12, -27, -6, 12, 1, -4, -21,
					-- layer=2 filter=29 channel=9
					5, 61, 7, -26, -21, 8, 11, 17, -42,
					-- layer=2 filter=29 channel=10
					-16, -1, 4, 3, 49, -16, 3, -14, -59,
					-- layer=2 filter=29 channel=11
					-10, -19, -14, 44, -34, -8, -1, -44, -44,
					-- layer=2 filter=29 channel=12
					12, 41, 27, 8, -14, -32, -31, -9, -15,
					-- layer=2 filter=29 channel=13
					3, -9, -23, -64, 39, -59, -28, 23, 5,
					-- layer=2 filter=29 channel=14
					16, 24, -33, 0, 16, -6, 49, -26, 0,
					-- layer=2 filter=29 channel=15
					12, -27, -16, 31, 41, 12, -4, -23, -38,
					-- layer=2 filter=29 channel=16
					-26, -38, -17, -31, 14, -30, -37, 0, 13,
					-- layer=2 filter=29 channel=17
					-6, -27, -39, -30, -16, -18, -77, 4, 17,
					-- layer=2 filter=29 channel=18
					-35, -34, -27, 49, 39, -9, 38, 40, 18,
					-- layer=2 filter=29 channel=19
					-15, 0, 39, -14, 14, 8, -9, -52, -49,
					-- layer=2 filter=29 channel=20
					-2, 37, 27, 4, -14, -31, -24, 9, -21,
					-- layer=2 filter=29 channel=21
					18, -49, -10, 13, 23, -54, -19, -18, 24,
					-- layer=2 filter=29 channel=22
					-25, -20, 14, -9, -19, 4, 23, 13, 12,
					-- layer=2 filter=29 channel=23
					0, -17, -28, -33, -17, -16, -7, -27, 9,
					-- layer=2 filter=29 channel=24
					-26, 21, -31, -35, -49, -41, -21, 16, 25,
					-- layer=2 filter=29 channel=25
					-21, 35, 39, -13, 30, 58, 37, 29, 23,
					-- layer=2 filter=29 channel=26
					1, -15, 6, 14, 0, -1, -10, 7, 10,
					-- layer=2 filter=29 channel=27
					11, 4, -6, -12, -10, -1, 2, -14, 2,
					-- layer=2 filter=29 channel=28
					8, 13, 0, 3, 19, -16, -8, 4, 0,
					-- layer=2 filter=29 channel=29
					4, 35, -21, 7, 15, -20, -9, 7, -13,
					-- layer=2 filter=29 channel=30
					-5, 27, 12, -59, -50, -15, -30, -40, 5,
					-- layer=2 filter=29 channel=31
					3, 19, 23, 36, 20, -35, 20, -29, -5,
					-- layer=2 filter=29 channel=32
					3, -50, -69, -40, 5, -28, 0, 38, -36,
					-- layer=2 filter=29 channel=33
					-10, -34, -18, -41, -23, -23, -9, -22, 2,
					-- layer=2 filter=29 channel=34
					15, -5, -18, 47, 41, -18, -41, -49, -40,
					-- layer=2 filter=29 channel=35
					9, -30, 1, 22, -22, -78, 7, -24, 28,
					-- layer=2 filter=29 channel=36
					16, 27, -3, 0, 14, -21, -36, -43, -40,
					-- layer=2 filter=29 channel=37
					16, -41, -1, 26, 48, -12, -15, -90, -56,
					-- layer=2 filter=29 channel=38
					20, 60, 30, -2, 6, 29, 46, 7, 6,
					-- layer=2 filter=29 channel=39
					-5, 6, 6, 30, 39, 12, -22, -33, -46,
					-- layer=2 filter=29 channel=40
					30, 6, 21, -14, 4, -5, 29, -18, 17,
					-- layer=2 filter=29 channel=41
					29, -21, -19, -13, -8, -1, 12, -18, -22,
					-- layer=2 filter=29 channel=42
					-14, 52, 21, -60, -71, -9, -18, 13, -12,
					-- layer=2 filter=29 channel=43
					11, 34, -27, -10, 2, 15, 17, 51, 8,
					-- layer=2 filter=29 channel=44
					-14, 8, 10, -18, -23, -2, 0, -19, 2,
					-- layer=2 filter=29 channel=45
					6, -58, -47, -21, -40, -1, -55, -11, 1,
					-- layer=2 filter=29 channel=46
					32, 70, 47, -3, -44, 0, -27, -38, -23,
					-- layer=2 filter=29 channel=47
					13, -6, -13, -29, -37, -22, -64, -31, 7,
					-- layer=2 filter=29 channel=48
					1, 32, 8, -8, -15, -30, -10, 12, -24,
					-- layer=2 filter=29 channel=49
					15, 32, 3, 31, 51, 59, -27, -40, -64,
					-- layer=2 filter=29 channel=50
					42, -56, -53, 13, 19, -28, -76, -81, -23,
					-- layer=2 filter=29 channel=51
					-6, -11, 29, 15, 45, 37, 44, 8, 34,
					-- layer=2 filter=29 channel=52
					0, 39, 16, 16, -33, 3, 35, -10, -67,
					-- layer=2 filter=29 channel=53
					-19, -47, 10, 18, 27, -6, -20, -41, -48,
					-- layer=2 filter=29 channel=54
					-26, -43, -19, 24, 6, 6, -53, -40, -48,
					-- layer=2 filter=29 channel=55
					-11, 15, 47, 39, 6, 13, -14, -14, -63,
					-- layer=2 filter=29 channel=56
					6, 21, 41, -10, -32, -7, 1, -35, -41,
					-- layer=2 filter=29 channel=57
					28, -63, -23, -3, -6, -34, 5, 4, 35,
					-- layer=2 filter=29 channel=58
					6, -19, -11, -37, -57, 3, 12, 42, 10,
					-- layer=2 filter=29 channel=59
					15, 30, -35, 43, -9, 27, 10, -30, -38,
					-- layer=2 filter=29 channel=60
					-2, 6, 14, -22, -37, -17, -55, 4, -22,
					-- layer=2 filter=29 channel=61
					11, 31, -48, 32, -23, 64, 68, 40, -6,
					-- layer=2 filter=29 channel=62
					0, 51, 51, 38, 46, 41, 44, 33, 28,
					-- layer=2 filter=29 channel=63
					9, -67, -37, -4, -59, -5, -28, -2, -31,
					-- layer=2 filter=30 channel=0
					-4, -2, 3, -116, -52, -21, 30, 34, 22,
					-- layer=2 filter=30 channel=1
					5, 27, -27, -66, -1, 0, 30, -92, 51,
					-- layer=2 filter=30 channel=2
					0, -15, -7, 32, 16, 17, -2, 0, 3,
					-- layer=2 filter=30 channel=3
					-2, -14, -21, 42, 47, 38, 5, 25, 13,
					-- layer=2 filter=30 channel=4
					-20, -12, -17, 12, 2, 16, -21, 4, -11,
					-- layer=2 filter=30 channel=5
					-32, 25, -7, -20, -51, -37, -37, -23, -19,
					-- layer=2 filter=30 channel=6
					14, 15, -22, 38, -8, -17, 29, 25, -4,
					-- layer=2 filter=30 channel=7
					-62, -6, -49, 66, 34, 25, 15, 13, 33,
					-- layer=2 filter=30 channel=8
					25, -5, -19, -1, -19, -32, 23, 26, -26,
					-- layer=2 filter=30 channel=9
					-14, 16, -51, 1, 10, -28, -31, 21, 16,
					-- layer=2 filter=30 channel=10
					19, 32, 2, 27, 26, -1, -18, -3, 6,
					-- layer=2 filter=30 channel=11
					21, 21, 34, 57, 35, 8, -42, -16, 19,
					-- layer=2 filter=30 channel=12
					-28, -51, -18, 48, 28, 13, 15, 20, 4,
					-- layer=2 filter=30 channel=13
					-21, -42, 13, -41, -21, -6, -20, -66, -32,
					-- layer=2 filter=30 channel=14
					-14, -13, 21, 6, -4, 28, -13, 0, 8,
					-- layer=2 filter=30 channel=15
					14, 28, 18, 0, -14, -30, 8, 5, 14,
					-- layer=2 filter=30 channel=16
					-13, -18, -10, 32, 0, 29, -23, -19, -19,
					-- layer=2 filter=30 channel=17
					7, 0, -3, 25, 22, 43, -13, 2, -11,
					-- layer=2 filter=30 channel=18
					-5, -56, -7, -34, -86, -67, 23, -14, -43,
					-- layer=2 filter=30 channel=19
					-13, -3, -45, 10, -1, -1, 0, -22, -29,
					-- layer=2 filter=30 channel=20
					-9, -33, -30, 45, 34, 10, 4, -6, 12,
					-- layer=2 filter=30 channel=21
					-31, -19, -22, 44, 52, -13, -3, -11, -17,
					-- layer=2 filter=30 channel=22
					1, 9, 15, -32, -1, 18, -10, 5, -10,
					-- layer=2 filter=30 channel=23
					6, 21, 30, 2, 16, -15, -2, -36, -14,
					-- layer=2 filter=30 channel=24
					-2, -13, -44, 7, -4, 29, 31, 7, -10,
					-- layer=2 filter=30 channel=25
					-87, -37, -43, 13, -64, -12, 19, -19, 0,
					-- layer=2 filter=30 channel=26
					16, 12, -14, -4, -12, -3, 13, 7, -1,
					-- layer=2 filter=30 channel=27
					-10, -2, 0, -7, -11, -1, 4, 3, -12,
					-- layer=2 filter=30 channel=28
					12, -1, 11, -2, 10, 1, 5, 10, 4,
					-- layer=2 filter=30 channel=29
					-39, -68, -19, 51, 48, 24, 14, 9, -34,
					-- layer=2 filter=30 channel=30
					-33, -15, -13, 39, 35, 26, 5, 1, -60,
					-- layer=2 filter=30 channel=31
					28, 27, 0, 7, 19, 7, -13, -67, 10,
					-- layer=2 filter=30 channel=32
					-6, 1, 3, 17, 12, 15, 24, -23, -31,
					-- layer=2 filter=30 channel=33
					23, 11, -19, 7, -11, -19, -4, 0, 6,
					-- layer=2 filter=30 channel=34
					-3, -18, -18, -16, -22, -29, 31, 23, 18,
					-- layer=2 filter=30 channel=35
					-30, 3, 32, -88, -24, 5, -8, -38, 24,
					-- layer=2 filter=30 channel=36
					-17, -12, -31, 12, 2, 3, 22, 22, 14,
					-- layer=2 filter=30 channel=37
					-28, -38, -19, 4, -24, 7, 5, 22, 36,
					-- layer=2 filter=30 channel=38
					-40, -43, -59, -42, -49, 7, 1, -58, 5,
					-- layer=2 filter=30 channel=39
					47, 6, 16, -70, -62, 4, 7, 10, 19,
					-- layer=2 filter=30 channel=40
					-61, 0, 6, -46, -1, 24, 35, -8, -3,
					-- layer=2 filter=30 channel=41
					-1, 10, -17, -3, -1, 3, -13, -14, -7,
					-- layer=2 filter=30 channel=42
					-4, -6, 12, -1, 12, 6, -23, 14, -10,
					-- layer=2 filter=30 channel=43
					-29, 0, 14, 24, 32, 27, -22, -29, -29,
					-- layer=2 filter=30 channel=44
					25, 34, 10, 48, 22, -2, -53, -27, -23,
					-- layer=2 filter=30 channel=45
					-12, -1, -23, 13, -10, -24, 1, 3, 8,
					-- layer=2 filter=30 channel=46
					41, 16, -49, -10, -6, 30, -1, 27, 6,
					-- layer=2 filter=30 channel=47
					9, 21, 7, 38, 12, -2, -19, -35, -12,
					-- layer=2 filter=30 channel=48
					5, -23, -19, 14, 6, 20, 25, 32, 0,
					-- layer=2 filter=30 channel=49
					33, 17, 14, -18, -38, 5, 16, 9, 26,
					-- layer=2 filter=30 channel=50
					-15, -58, -41, 21, -12, -20, -43, 11, 20,
					-- layer=2 filter=30 channel=51
					8, 37, -42, -19, -37, -32, -37, -68, -13,
					-- layer=2 filter=30 channel=52
					6, 5, 30, 40, 55, 39, -51, -18, -20,
					-- layer=2 filter=30 channel=53
					-28, -6, -2, -26, 22, 6, -2, -25, -4,
					-- layer=2 filter=30 channel=54
					36, 21, 48, 22, 19, 5, 8, -40, -38,
					-- layer=2 filter=30 channel=55
					0, -5, 44, 66, 56, 49, -16, 21, 26,
					-- layer=2 filter=30 channel=56
					12, 27, -27, -31, 14, 0, -1, -8, 9,
					-- layer=2 filter=30 channel=57
					17, 30, 23, 22, 0, -28, 0, -30, -13,
					-- layer=2 filter=30 channel=58
					-43, 47, 69, 22, 8, -6, 6, -3, -15,
					-- layer=2 filter=30 channel=59
					6, 3, -4, 8, 14, 7, -58, -17, -2,
					-- layer=2 filter=30 channel=60
					-32, -37, 10, -40, 16, 31, 39, 4, -40,
					-- layer=2 filter=30 channel=61
					45, 58, 0, -40, -50, -97, 10, -34, -38,
					-- layer=2 filter=30 channel=62
					3, -10, -58, -11, -45, -55, 18, -20, -7,
					-- layer=2 filter=30 channel=63
					3, -14, -12, 36, 0, 20, -2, -12, 20,
					-- layer=2 filter=31 channel=0
					24, 43, 62, 33, 15, 12, -68, -18, 41,
					-- layer=2 filter=31 channel=1
					1, -17, -30, -11, -79, -43, -19, -65, -59,
					-- layer=2 filter=31 channel=2
					-34, -48, -44, -38, -25, 17, 22, 3, 4,
					-- layer=2 filter=31 channel=3
					45, 18, -16, 0, -36, -20, -46, 3, 0,
					-- layer=2 filter=31 channel=4
					20, -16, -37, 5, 3, -5, 28, 2, -4,
					-- layer=2 filter=31 channel=5
					44, 65, 78, 0, 0, 24, 28, 21, 41,
					-- layer=2 filter=31 channel=6
					-4, -15, -37, -6, -20, -6, 42, 14, 13,
					-- layer=2 filter=31 channel=7
					17, 29, 35, 19, -17, -5, 21, -9, -25,
					-- layer=2 filter=31 channel=8
					69, 87, 52, 64, 52, 23, -3, -8, 16,
					-- layer=2 filter=31 channel=9
					34, -26, -54, -23, -63, -29, -36, -43, -14,
					-- layer=2 filter=31 channel=10
					16, 12, 24, 4, 17, 25, -51, -42, -22,
					-- layer=2 filter=31 channel=11
					33, 58, 47, 49, 22, 21, -27, -18, -24,
					-- layer=2 filter=31 channel=12
					-36, -52, -46, -13, -15, -3, 18, -2, -15,
					-- layer=2 filter=31 channel=13
					-69, -24, 44, -5, 5, 41, 13, 25, 29,
					-- layer=2 filter=31 channel=14
					-15, -4, -48, 2, -50, -29, 15, -18, 9,
					-- layer=2 filter=31 channel=15
					2, 10, -3, 17, 10, 0, -37, -42, -52,
					-- layer=2 filter=31 channel=16
					7, -10, 5, -4, 32, 37, 42, 47, 38,
					-- layer=2 filter=31 channel=17
					-16, -42, -12, -30, -10, 8, 2, 1, 33,
					-- layer=2 filter=31 channel=18
					-63, 70, 4, 10, -22, 22, 18, 33, 21,
					-- layer=2 filter=31 channel=19
					-14, -3, -45, -20, 14, -12, 0, 3, -18,
					-- layer=2 filter=31 channel=20
					8, -34, -47, -10, -41, 19, 3, 16, -1,
					-- layer=2 filter=31 channel=21
					-7, 15, -2, -4, -26, -29, -31, -25, 5,
					-- layer=2 filter=31 channel=22
					39, 30, 11, -6, -17, 3, -15, -13, -1,
					-- layer=2 filter=31 channel=23
					12, 8, -26, -6, 9, -3, 23, 3, 15,
					-- layer=2 filter=31 channel=24
					-15, -52, -35, -2, -2, 29, 10, 0, 26,
					-- layer=2 filter=31 channel=25
					-8, -12, 35, 22, -50, 14, 5, -27, -9,
					-- layer=2 filter=31 channel=26
					14, 10, -12, -18, -14, 13, 7, -10, -16,
					-- layer=2 filter=31 channel=27
					0, -13, -6, 8, 2, -6, 0, 10, -4,
					-- layer=2 filter=31 channel=28
					-7, 0, -10, -1, 1, -1, -10, 17, -22,
					-- layer=2 filter=31 channel=29
					0, 12, 15, -9, 9, 19, -23, -5, 0,
					-- layer=2 filter=31 channel=30
					-22, -20, -7, -22, -37, 8, 19, 1, 21,
					-- layer=2 filter=31 channel=31
					28, 57, 4, 4, -14, -24, -12, -18, -30,
					-- layer=2 filter=31 channel=32
					1, -10, -22, -39, 9, 2, -4, -3, 1,
					-- layer=2 filter=31 channel=33
					-6, 8, 2, -6, 0, 14, 14, 14, 7,
					-- layer=2 filter=31 channel=34
					24, 22, 34, 39, 11, -35, -42, -2, -28,
					-- layer=2 filter=31 channel=35
					-21, -70, -25, -21, -100, -92, -65, -95, -61,
					-- layer=2 filter=31 channel=36
					-7, -37, -26, -16, -22, -27, 7, 17, -24,
					-- layer=2 filter=31 channel=37
					20, 7, 9, 14, -7, -15, -67, -17, -14,
					-- layer=2 filter=31 channel=38
					2, 14, -44, 15, -43, -25, 35, 21, -3,
					-- layer=2 filter=31 channel=39
					29, 21, 87, 30, -5, -9, 0, -9, 42,
					-- layer=2 filter=31 channel=40
					33, 28, -16, 20, 15, -19, 65, 66, -3,
					-- layer=2 filter=31 channel=41
					17, 7, -22, -8, -10, 17, 20, -14, -4,
					-- layer=2 filter=31 channel=42
					2, -39, -17, -64, -39, -7, 10, 16, 23,
					-- layer=2 filter=31 channel=43
					-2, 0, 27, 20, 44, 45, 51, 43, 32,
					-- layer=2 filter=31 channel=44
					27, 0, -3, 36, 34, 34, 55, 19, 14,
					-- layer=2 filter=31 channel=45
					10, 11, 14, 4, -12, -6, -13, 3, 24,
					-- layer=2 filter=31 channel=46
					-48, -73, -76, -76, -142, -44, -74, -99, -49,
					-- layer=2 filter=31 channel=47
					18, -9, -9, 28, 6, -21, 32, 27, -1,
					-- layer=2 filter=31 channel=48
					0, -18, -40, -47, -11, -20, -7, -3, 5,
					-- layer=2 filter=31 channel=49
					52, -1, 14, 24, -10, 1, -33, 6, 8,
					-- layer=2 filter=31 channel=50
					2, -5, -12, -14, -31, -14, -53, -22, -19,
					-- layer=2 filter=31 channel=51
					4, -12, -48, -1, 59, 104, -8, -24, -16,
					-- layer=2 filter=31 channel=52
					7, 12, -17, 31, 12, 9, -15, -25, -37,
					-- layer=2 filter=31 channel=53
					2, 12, -5, -5, -20, -18, 11, -20, 1,
					-- layer=2 filter=31 channel=54
					-11, 38, 14, 24, 46, 20, 9, 1, 3,
					-- layer=2 filter=31 channel=55
					58, 62, 34, 33, 49, 54, 6, -25, -12,
					-- layer=2 filter=31 channel=56
					46, 5, 17, -24, -60, 6, -20, -21, -47,
					-- layer=2 filter=31 channel=57
					-26, 11, 5, 11, 27, 27, 12, -21, 1,
					-- layer=2 filter=31 channel=58
					-7, 10, 31, 30, -16, 2, -41, 62, 24,
					-- layer=2 filter=31 channel=59
					22, 1, -11, 0, -24, 26, -14, -24, 3,
					-- layer=2 filter=31 channel=60
					-63, -66, -38, -96, -141, -65, -55, -32, -14,
					-- layer=2 filter=31 channel=61
					54, 58, 20, -2, 39, 41, -8, -43, -14,
					-- layer=2 filter=31 channel=62
					-64, 2, 0, -25, -20, -11, 3, -35, -26,
					-- layer=2 filter=31 channel=63
					17, 32, -13, 17, -19, -21, -26, -8, -11,
					-- layer=2 filter=32 channel=0
					-6, -7, 23, -16, -18, -12, -25, -3, 5,
					-- layer=2 filter=32 channel=1
					-3, 14, 20, -32, 7, 20, -43, -2, 15,
					-- layer=2 filter=32 channel=2
					-15, -11, 4, -26, 0, -1, -3, 15, -8,
					-- layer=2 filter=32 channel=3
					62, 24, -35, 18, 22, -30, 0, -13, -27,
					-- layer=2 filter=32 channel=4
					-13, 13, 15, -7, 4, -1, -21, 1, 4,
					-- layer=2 filter=32 channel=5
					54, -5, -46, -5, -31, -19, 0, -18, -24,
					-- layer=2 filter=32 channel=6
					-21, 0, 51, -48, -16, 2, -30, 10, 16,
					-- layer=2 filter=32 channel=7
					13, 51, 59, 4, 26, -8, 31, 12, -25,
					-- layer=2 filter=32 channel=8
					-72, -62, -49, -1, -17, 12, 11, -21, -28,
					-- layer=2 filter=32 channel=9
					-26, 32, 65, 9, 35, 59, -25, -35, 20,
					-- layer=2 filter=32 channel=10
					-22, -17, -17, 28, -3, 17, 7, -3, 0,
					-- layer=2 filter=32 channel=11
					3, -10, 28, -31, 1, 19, -5, -21, -16,
					-- layer=2 filter=32 channel=12
					-7, -6, -26, 8, 0, -5, 3, 23, 7,
					-- layer=2 filter=32 channel=13
					-32, 10, -97, 1, -16, -19, 0, 7, -20,
					-- layer=2 filter=32 channel=14
					40, 54, 34, 26, 29, 7, 0, 26, -10,
					-- layer=2 filter=32 channel=15
					12, 15, 25, -1, 5, -20, 32, -9, -1,
					-- layer=2 filter=32 channel=16
					-14, -22, -5, -10, 2, -11, -3, -9, 10,
					-- layer=2 filter=32 channel=17
					24, 15, -9, 0, -11, 5, -4, -3, 4,
					-- layer=2 filter=32 channel=18
					14, -14, 5, 1, 11, -41, -10, 39, 11,
					-- layer=2 filter=32 channel=19
					-23, -4, -24, -16, -25, 0, -44, -24, -15,
					-- layer=2 filter=32 channel=20
					25, 26, -7, -16, 10, -7, 14, 5, -28,
					-- layer=2 filter=32 channel=21
					41, -26, 0, -18, -12, -9, 12, -19, -39,
					-- layer=2 filter=32 channel=22
					41, 12, 26, 10, 33, 33, 12, 22, 30,
					-- layer=2 filter=32 channel=23
					17, -8, 2, -6, -22, 10, -21, -1, -8,
					-- layer=2 filter=32 channel=24
					8, 3, -26, -7, -23, -7, 7, 16, 0,
					-- layer=2 filter=32 channel=25
					-40, 72, -13, -5, -14, 2, 0, 55, -60,
					-- layer=2 filter=32 channel=26
					15, -17, -5, -5, 5, -2, -12, 13, -7,
					-- layer=2 filter=32 channel=27
					4, 8, 4, 10, 13, -12, 11, -3, -1,
					-- layer=2 filter=32 channel=28
					11, -9, 1, -2, 7, 14, -9, 7, 17,
					-- layer=2 filter=32 channel=29
					13, -5, -2, 7, -9, -16, -5, -9, -3,
					-- layer=2 filter=32 channel=30
					11, -14, -49, -1, -1, -4, -35, -15, -28,
					-- layer=2 filter=32 channel=31
					-10, -16, 31, -21, -3, 38, -37, -4, 5,
					-- layer=2 filter=32 channel=32
					4, -2, -53, -6, -7, -1, 0, 8, 13,
					-- layer=2 filter=32 channel=33
					8, -30, -11, -15, -43, -41, -35, -4, -26,
					-- layer=2 filter=32 channel=34
					0, 8, 12, 2, -18, -34, 4, -6, 8,
					-- layer=2 filter=32 channel=35
					21, -19, 7, 4, -9, 4, 4, 17, 7,
					-- layer=2 filter=32 channel=36
					-7, 5, 6, 16, -5, -1, 4, -5, -6,
					-- layer=2 filter=32 channel=37
					11, 16, 12, -23, -58, -50, -31, -43, 1,
					-- layer=2 filter=32 channel=38
					18, 54, 23, 45, 26, 9, -10, 42, 23,
					-- layer=2 filter=32 channel=39
					-18, -3, -9, -39, -7, -50, -7, -21, -13,
					-- layer=2 filter=32 channel=40
					10, 24, 4, 4, 20, 19, -32, 4, 15,
					-- layer=2 filter=32 channel=41
					38, -5, -11, 4, 3, -2, 16, -19, 3,
					-- layer=2 filter=32 channel=42
					-6, 5, -19, -25, 5, 2, -16, -15, 11,
					-- layer=2 filter=32 channel=43
					-6, -7, 10, -53, -15, -22, -28, -6, -7,
					-- layer=2 filter=32 channel=44
					-32, 0, 30, -57, 14, 35, -10, 1, -10,
					-- layer=2 filter=32 channel=45
					7, -18, -48, 9, 5, -26, 13, 7, -16,
					-- layer=2 filter=32 channel=46
					27, -1, 2, 70, 22, 11, 41, -12, -18,
					-- layer=2 filter=32 channel=47
					23, -4, 7, -18, -26, -4, 33, 20, 22,
					-- layer=2 filter=32 channel=48
					9, -14, -3, 15, -3, 15, 8, 22, 17,
					-- layer=2 filter=32 channel=49
					-44, -18, -5, -54, -45, 21, -51, -85, -41,
					-- layer=2 filter=32 channel=50
					25, -28, -11, 19, -13, -22, 5, -22, -18,
					-- layer=2 filter=32 channel=51
					4, 24, 3, -30, -10, 47, 4, 28, 43,
					-- layer=2 filter=32 channel=52
					14, -2, 59, 37, 8, 41, 10, 10, 8,
					-- layer=2 filter=32 channel=53
					11, -14, 8, -37, -23, -19, -18, -33, 13,
					-- layer=2 filter=32 channel=54
					22, 1, 4, -24, -6, 12, 8, 4, -28,
					-- layer=2 filter=32 channel=55
					-25, 5, 8, 16, 1, -26, -35, -15, -25,
					-- layer=2 filter=32 channel=56
					-12, 13, 17, 10, 26, 40, -16, 1, 37,
					-- layer=2 filter=32 channel=57
					7, -15, -6, -7, -25, -3, -1, -24, -24,
					-- layer=2 filter=32 channel=58
					14, -20, -1, 4, -33, -31, 9, 4, -54,
					-- layer=2 filter=32 channel=59
					22, 23, 27, -19, 0, -12, 3, -5, 2,
					-- layer=2 filter=32 channel=60
					5, 8, 7, -7, 18, 14, 55, 9, 59,
					-- layer=2 filter=32 channel=61
					-12, 17, 41, 16, 33, 14, 13, 40, 13,
					-- layer=2 filter=32 channel=62
					7, 8, 26, 4, -7, 29, 9, -39, -21,
					-- layer=2 filter=32 channel=63
					28, -11, -15, 16, 19, -40, 32, 28, 40,
					-- layer=2 filter=33 channel=0
					1, 30, 33, 7, -19, -22, -14, -18, -23,
					-- layer=2 filter=33 channel=1
					27, 1, 24, -53, -5, 33, -67, 27, 13,
					-- layer=2 filter=33 channel=2
					19, 22, 16, 6, 18, 21, 0, 27, 23,
					-- layer=2 filter=33 channel=3
					4, -23, -18, -10, 15, 38, -31, -31, -11,
					-- layer=2 filter=33 channel=4
					31, 13, -8, 1, 4, 10, 6, 19, 18,
					-- layer=2 filter=33 channel=5
					-4, 5, 21, 21, 20, -17, -34, 12, 31,
					-- layer=2 filter=33 channel=6
					-25, -19, -55, -94, -86, 7, -67, -40, -19,
					-- layer=2 filter=33 channel=7
					34, 20, 17, -19, -11, -12, -3, 1, 1,
					-- layer=2 filter=33 channel=8
					5, -13, 55, 0, -24, 7, 2, -23, -13,
					-- layer=2 filter=33 channel=9
					-1, 17, -66, -16, -15, -17, -17, -10, -25,
					-- layer=2 filter=33 channel=10
					17, 39, 38, -27, -32, -34, 28, -23, -49,
					-- layer=2 filter=33 channel=11
					11, -14, -51, 10, -44, -63, 5, 27, -15,
					-- layer=2 filter=33 channel=12
					0, -4, 10, 18, 10, 4, 30, 0, 23,
					-- layer=2 filter=33 channel=13
					-105, -47, -41, -13, -71, -69, -54, -67, 9,
					-- layer=2 filter=33 channel=14
					-56, -18, -48, -63, -17, -16, -36, 15, 0,
					-- layer=2 filter=33 channel=15
					-17, -17, -42, -15, -37, -50, -81, -32, -45,
					-- layer=2 filter=33 channel=16
					-40, -6, 47, 4, 46, 35, 35, 38, 26,
					-- layer=2 filter=33 channel=17
					-23, -23, 2, -5, 8, -7, 25, 2, 3,
					-- layer=2 filter=33 channel=18
					68, -34, -17, 23, -20, 43, -78, 19, 35,
					-- layer=2 filter=33 channel=19
					35, 8, 20, -1, 0, 21, 17, -14, 17,
					-- layer=2 filter=33 channel=20
					3, -32, -18, 44, -4, 2, -9, -11, 16,
					-- layer=2 filter=33 channel=21
					25, -4, -74, 11, -50, -14, -60, -101, -108,
					-- layer=2 filter=33 channel=22
					21, 27, 23, -24, 4, -17, -43, -2, -25,
					-- layer=2 filter=33 channel=23
					-11, 7, -75, -9, 3, -44, -49, -21, -51,
					-- layer=2 filter=33 channel=24
					-6, -32, 12, 5, 12, 16, 22, 4, 29,
					-- layer=2 filter=33 channel=25
					8, 48, -14, 8, 30, 39, -16, -2, -47,
					-- layer=2 filter=33 channel=26
					12, -4, 14, 15, 0, -10, -6, -16, 1,
					-- layer=2 filter=33 channel=27
					-5, 10, 8, 2, 9, -4, -14, 10, -8,
					-- layer=2 filter=33 channel=28
					13, 1, -7, -2, 3, -14, -1, 6, -14,
					-- layer=2 filter=33 channel=29
					-12, -27, 24, 23, 8, 14, 38, 10, 0,
					-- layer=2 filter=33 channel=30
					21, -2, 3, 2, 23, 19, 27, 19, -6,
					-- layer=2 filter=33 channel=31
					0, -15, -5, -52, -41, -32, -25, 13, -48,
					-- layer=2 filter=33 channel=32
					-93, -69, 7, -38, -31, -24, -76, -11, -14,
					-- layer=2 filter=33 channel=33
					35, 7, -55, -26, 6, -9, -84, -36, -49,
					-- layer=2 filter=33 channel=34
					17, 11, 23, 4, -41, -45, -21, -33, -40,
					-- layer=2 filter=33 channel=35
					-58, -23, 26, -21, -6, 2, -59, 40, -11,
					-- layer=2 filter=33 channel=36
					1, -12, 8, 26, 8, 20, 5, 1, 24,
					-- layer=2 filter=33 channel=37
					-17, 19, -35, 1, -40, -69, -9, -22, -38,
					-- layer=2 filter=33 channel=38
					-4, -13, 21, -45, -12, 20, -52, 15, 16,
					-- layer=2 filter=33 channel=39
					44, 7, 8, -8, 26, 18, -63, 28, 14,
					-- layer=2 filter=33 channel=40
					30, 0, 0, 0, 12, 50, -23, 28, 10,
					-- layer=2 filter=33 channel=41
					25, 48, -59, -42, 11, -20, -50, -3, -74,
					-- layer=2 filter=33 channel=42
					5, 9, 29, 2, 30, 10, 3, 12, 20,
					-- layer=2 filter=33 channel=43
					-36, -18, -10, 30, 0, 40, 17, 47, 40,
					-- layer=2 filter=33 channel=44
					35, 26, 2, 23, 8, 25, 14, 15, 26,
					-- layer=2 filter=33 channel=45
					14, 40, -4, -61, 49, 24, -65, 4, -41,
					-- layer=2 filter=33 channel=46
					-30, 42, -23, 13, 20, -5, 24, 51, -7,
					-- layer=2 filter=33 channel=47
					1, -13, -60, -6, 11, -16, -75, -23, 4,
					-- layer=2 filter=33 channel=48
					21, 14, 26, 12, 10, 18, 33, 16, 10,
					-- layer=2 filter=33 channel=49
					4, -17, 33, -5, 72, 35, -75, -27, 49,
					-- layer=2 filter=33 channel=50
					42, 17, -27, -10, 31, -10, 0, -18, -99,
					-- layer=2 filter=33 channel=51
					-12, 29, -13, -36, 34, -1, -83, -20, -36,
					-- layer=2 filter=33 channel=52
					-10, 6, -12, -16, -43, -31, -7, -41, -20,
					-- layer=2 filter=33 channel=53
					20, 58, -55, -25, -5, -62, -23, -9, 18,
					-- layer=2 filter=33 channel=54
					-3, -17, -20, 14, -34, -11, 27, 11, 27,
					-- layer=2 filter=33 channel=55
					0, 0, -46, 10, -56, -47, -46, -48, -1,
					-- layer=2 filter=33 channel=56
					24, 39, 18, -29, 4, -18, -24, 4, -2,
					-- layer=2 filter=33 channel=57
					-10, 0, -54, -23, 3, -17, -79, -44, -45,
					-- layer=2 filter=33 channel=58
					60, 71, -18, 44, 31, 43, 5, 37, -2,
					-- layer=2 filter=33 channel=59
					-1, -22, -19, -83, -34, -57, -111, -67, -101,
					-- layer=2 filter=33 channel=60
					-10, 37, -8, -8, 15, -13, 7, -40, -35,
					-- layer=2 filter=33 channel=61
					-2, 9, 32, -42, 14, -32, -75, -19, -19,
					-- layer=2 filter=33 channel=62
					-28, -37, -8, 32, 50, 19, 36, 39, -19,
					-- layer=2 filter=33 channel=63
					38, -21, 3, -47, 22, 48, -155, -51, -65,
					-- layer=2 filter=34 channel=0
					21, -5, 30, 0, -5, 51, 50, 47, 45,
					-- layer=2 filter=34 channel=1
					-23, -32, -36, -11, 13, 33, -1, 31, 13,
					-- layer=2 filter=34 channel=2
					-25, 0, -11, 19, 5, 8, -9, -3, -22,
					-- layer=2 filter=34 channel=3
					25, -10, 1, -15, -33, -31, -10, -34, -22,
					-- layer=2 filter=34 channel=4
					24, 19, 23, -1, 20, 0, -10, 23, 9,
					-- layer=2 filter=34 channel=5
					-28, -116, -87, -58, -40, -62, 31, -18, 4,
					-- layer=2 filter=34 channel=6
					0, 4, 6, 17, -18, -10, -18, 27, -14,
					-- layer=2 filter=34 channel=7
					1, 8, 25, -6, 9, -26, 35, 43, 82,
					-- layer=2 filter=34 channel=8
					9, 10, 25, 30, 50, 16, 27, 18, -24,
					-- layer=2 filter=34 channel=9
					-15, -63, -29, -19, -59, -50, 5, -45, 14,
					-- layer=2 filter=34 channel=10
					-17, -21, 1, 2, -8, 18, 19, 13, -8,
					-- layer=2 filter=34 channel=11
					-29, -9, -22, 0, -20, -4, 12, 14, 29,
					-- layer=2 filter=34 channel=12
					-7, -12, -1, 0, 13, -5, -29, -25, -1,
					-- layer=2 filter=34 channel=13
					-18, -33, -20, 11, -33, -46, 38, 35, 41,
					-- layer=2 filter=34 channel=14
					-8, 32, 17, -7, -4, -6, -6, 10, 46,
					-- layer=2 filter=34 channel=15
					3, 26, 3, -6, 6, 15, 15, 1, 5,
					-- layer=2 filter=34 channel=16
					-16, -7, -27, -42, -20, -80, -26, -53, 10,
					-- layer=2 filter=34 channel=17
					3, 19, 6, 5, 6, -3, -18, -18, 13,
					-- layer=2 filter=34 channel=18
					-36, -73, -26, -33, -71, -24, 24, 1, 8,
					-- layer=2 filter=34 channel=19
					-23, -20, -4, 14, 14, -2, 5, -17, -30,
					-- layer=2 filter=34 channel=20
					7, 13, 13, 16, -5, -39, -18, -17, -4,
					-- layer=2 filter=34 channel=21
					13, -9, 27, -13, -23, -11, -17, -49, -34,
					-- layer=2 filter=34 channel=22
					8, 17, 12, -22, -21, 0, 3, 1, -18,
					-- layer=2 filter=34 channel=23
					27, 30, 28, -7, 7, 34, -7, 21, 1,
					-- layer=2 filter=34 channel=24
					23, 19, 4, -26, -11, -14, -14, -38, -18,
					-- layer=2 filter=34 channel=25
					21, 26, -47, 4, 0, -19, -12, -29, 10,
					-- layer=2 filter=34 channel=26
					0, -14, 0, 10, 5, 1, 5, 7, -5,
					-- layer=2 filter=34 channel=27
					-15, 7, 3, 2, 4, 2, 4, 3, 2,
					-- layer=2 filter=34 channel=28
					8, 10, 24, 14, -3, 20, -4, -9, 1,
					-- layer=2 filter=34 channel=29
					-3, 1, 15, 16, -22, -39, -4, -25, -11,
					-- layer=2 filter=34 channel=30
					-26, -6, 0, -68, 50, -29, 4, -35, -5,
					-- layer=2 filter=34 channel=31
					-21, -33, 5, 27, 0, 15, 17, -17, -31,
					-- layer=2 filter=34 channel=32
					-15, -1, -1, -44, -10, -44, -28, -6, 25,
					-- layer=2 filter=34 channel=33
					4, 2, 47, -25, -26, 9, -48, -37, -6,
					-- layer=2 filter=34 channel=34
					3, -12, 4, 29, 16, 37, 30, 52, 29,
					-- layer=2 filter=34 channel=35
					15, -28, 7, -9, 10, -15, 25, 28, 5,
					-- layer=2 filter=34 channel=36
					15, 7, -4, -3, -2, -9, 4, -1, 2,
					-- layer=2 filter=34 channel=37
					18, 18, 37, 31, 14, 23, 36, 57, 31,
					-- layer=2 filter=34 channel=38
					-40, -39, -70, -21, -29, -6, -26, 15, -17,
					-- layer=2 filter=34 channel=39
					-31, -62, -23, 18, 26, 56, 70, 42, 46,
					-- layer=2 filter=34 channel=40
					-1, -19, -2, -9, -23, 20, -39, 5, 10,
					-- layer=2 filter=34 channel=41
					22, 22, 37, -18, 8, 6, -21, -29, -25,
					-- layer=2 filter=34 channel=42
					-8, 26, -14, 21, 17, 21, 12, -9, 18,
					-- layer=2 filter=34 channel=43
					-12, 9, -55, -41, -69, -34, -26, -7, 43,
					-- layer=2 filter=34 channel=44
					11, 14, -9, -7, 39, 10, -11, 0, 1,
					-- layer=2 filter=34 channel=45
					-15, -1, -3, -65, -10, 5, -62, -41, -36,
					-- layer=2 filter=34 channel=46
					-18, -32, -17, 35, 35, 43, 20, 14, 35,
					-- layer=2 filter=34 channel=47
					20, 42, -2, 6, 8, -19, -24, -11, -26,
					-- layer=2 filter=34 channel=48
					-15, -14, 12, 7, -4, -15, 10, 4, -17,
					-- layer=2 filter=34 channel=49
					4, -38, -22, -11, 2, -28, 0, -7, -3,
					-- layer=2 filter=34 channel=50
					-8, -5, 11, -23, -9, -27, -25, -6, -62,
					-- layer=2 filter=34 channel=51
					7, -10, -16, -28, -42, -34, 29, 8, -1,
					-- layer=2 filter=34 channel=52
					1, 12, -9, -17, -33, -39, 0, -24, 12,
					-- layer=2 filter=34 channel=53
					23, 23, 16, 17, 3, 20, 10, 5, -28,
					-- layer=2 filter=34 channel=54
					-33, 35, -3, 6, -1, -36, -16, 13, 48,
					-- layer=2 filter=34 channel=55
					0, 24, -37, -24, -52, -14, 3, 27, 27,
					-- layer=2 filter=34 channel=56
					-13, -22, -17, 29, 13, 17, 34, 36, 16,
					-- layer=2 filter=34 channel=57
					31, 16, -6, 2, 19, 0, 2, 1, 48,
					-- layer=2 filter=34 channel=58
					31, 21, -37, 46, 104, 40, 3, 38, 52,
					-- layer=2 filter=34 channel=59
					28, 12, 9, 11, -21, 4, -13, -10, -24,
					-- layer=2 filter=34 channel=60
					6, 6, -23, 28, 53, -8, 52, 62, 46,
					-- layer=2 filter=34 channel=61
					17, 19, -29, -40, -55, -8, -30, 9, -38,
					-- layer=2 filter=34 channel=62
					-13, 14, -18, 69, -8, -19, 33, -11, 0,
					-- layer=2 filter=34 channel=63
					-6, -2, -15, -31, -26, -15, -16, 7, -28,
					-- layer=2 filter=35 channel=0
					-28, 11, 7, -18, -6, 13, -36, -24, -19,
					-- layer=2 filter=35 channel=1
					1, 0, 4, 37, 22, 32, 8, 24, 16,
					-- layer=2 filter=35 channel=2
					2, -17, -20, 10, -8, -9, 40, 26, 2,
					-- layer=2 filter=35 channel=3
					-7, 13, -10, -51, -40, -1, -84, -42, -44,
					-- layer=2 filter=35 channel=4
					-33, -21, -18, -11, -4, 6, 10, 30, 24,
					-- layer=2 filter=35 channel=5
					31, 47, 23, 39, 35, 45, 55, -24, 71,
					-- layer=2 filter=35 channel=6
					-18, -24, -12, -6, -67, -31, 3, -17, 12,
					-- layer=2 filter=35 channel=7
					1, 43, 45, -114, -9, 11, -13, 4, -39,
					-- layer=2 filter=35 channel=8
					19, 29, -6, 11, 12, -2, -37, -19, -11,
					-- layer=2 filter=35 channel=9
					7, -5, 9, 16, 8, -15, 14, 42, 52,
					-- layer=2 filter=35 channel=10
					-4, 11, 3, -14, -10, -33, 21, 27, 41,
					-- layer=2 filter=35 channel=11
					-78, -59, -52, 1, 18, 30, 22, 62, 32,
					-- layer=2 filter=35 channel=12
					6, 10, -4, 2, -27, -30, 2, 16, 5,
					-- layer=2 filter=35 channel=13
					74, -24, -11, 43, -57, -14, 49, -44, -52,
					-- layer=2 filter=35 channel=14
					-34, 8, -4, -17, -12, 45, -5, -2, 0,
					-- layer=2 filter=35 channel=15
					-1, 0, -16, -13, -40, -56, -20, -46, -74,
					-- layer=2 filter=35 channel=16
					-38, -16, -22, -7, -10, -52, 52, 81, 41,
					-- layer=2 filter=35 channel=17
					-31, -9, 12, 1, 37, -31, 19, 29, 3,
					-- layer=2 filter=35 channel=18
					9, -8, 23, 45, -51, 39, 51, -40, 84,
					-- layer=2 filter=35 channel=19
					-22, -4, -1, -36, -41, -19, 22, 7, -14,
					-- layer=2 filter=35 channel=20
					-10, -2, 1, -15, -34, -26, -21, 14, -30,
					-- layer=2 filter=35 channel=21
					-6, -26, -38, 0, -18, -27, -56, -87, -67,
					-- layer=2 filter=35 channel=22
					0, 23, 8, -4, 27, 15, -40, -40, -3,
					-- layer=2 filter=35 channel=23
					-35, 16, -40, -14, -22, -2, 21, 19, 24,
					-- layer=2 filter=35 channel=24
					28, -1, -14, -2, 12, -5, 27, 38, -2,
					-- layer=2 filter=35 channel=25
					-26, -22, -15, -53, -5, -2, -4, 42, 19,
					-- layer=2 filter=35 channel=26
					19, -4, -14, 11, 8, -3, 2, 3, 15,
					-- layer=2 filter=35 channel=27
					12, 1, -14, 11, -12, 4, 3, -11, -2,
					-- layer=2 filter=35 channel=28
					-1, 4, -18, 2, -18, -14, 24, 2, 14,
					-- layer=2 filter=35 channel=29
					8, 25, 4, -8, -3, -27, -35, -1, -14,
					-- layer=2 filter=35 channel=30
					6, 6, 11, -9, 3, -20, 5, 11, 23,
					-- layer=2 filter=35 channel=31
					-15, -30, -40, -17, 18, 10, -2, 34, -1,
					-- layer=2 filter=35 channel=32
					-11, -64, -67, -34, -60, -17, 38, 21, 9,
					-- layer=2 filter=35 channel=33
					4, 25, 0, 3, 12, 6, 0, -42, -7,
					-- layer=2 filter=35 channel=34
					1, 8, 21, -24, -4, -23, -106, -88, -66,
					-- layer=2 filter=35 channel=35
					20, -4, -3, 30, 22, -1, 7, -7, 12,
					-- layer=2 filter=35 channel=36
					-19, 1, -1, -1, -14, -24, -14, -17, -1,
					-- layer=2 filter=35 channel=37
					-11, 14, 7, -61, -21, 4, -55, -52, -79,
					-- layer=2 filter=35 channel=38
					18, 5, 47, 36, 27, 37, 18, 24, -3,
					-- layer=2 filter=35 channel=39
					-26, -30, 5, -12, -15, -3, 1, -39, 3,
					-- layer=2 filter=35 channel=40
					-3, -16, 21, 15, 19, 19, 4, -10, 8,
					-- layer=2 filter=35 channel=41
					-21, -4, -3, -40, -29, -5, 1, -12, -5,
					-- layer=2 filter=35 channel=42
					11, -14, -5, 10, 24, 14, 51, 10, 16,
					-- layer=2 filter=35 channel=43
					-1, -17, -53, -22, -4, -11, 45, 44, 3,
					-- layer=2 filter=35 channel=44
					-34, -28, -17, 18, -2, -5, 56, 57, 41,
					-- layer=2 filter=35 channel=45
					-46, 24, -34, -36, -49, -20, 11, -27, -15,
					-- layer=2 filter=35 channel=46
					-11, 1, 26, 46, 53, 5, 4, 29, 18,
					-- layer=2 filter=35 channel=47
					-23, -24, -47, -15, -24, -58, 14, 8, -39,
					-- layer=2 filter=35 channel=48
					15, 0, 17, 5, -15, -18, -16, -10, -8,
					-- layer=2 filter=35 channel=49
					3, 42, 53, -44, -9, 7, -32, 12, -31,
					-- layer=2 filter=35 channel=50
					-15, 2, -33, -5, -36, -6, -7, -16, 5,
					-- layer=2 filter=35 channel=51
					-8, 1, 29, -15, -14, 6, -21, 4, 9,
					-- layer=2 filter=35 channel=52
					-33, -45, -21, -16, -15, 1, 27, 45, 54,
					-- layer=2 filter=35 channel=53
					-4, 1, 27, -12, -9, -5, -10, 2, 12,
					-- layer=2 filter=35 channel=54
					-13, -55, -58, -26, -15, 0, 28, 47, 37,
					-- layer=2 filter=35 channel=55
					-64, 2, -18, -33, -18, 3, 25, 40, 33,
					-- layer=2 filter=35 channel=56
					-21, -4, 8, 0, 5, 2, -12, 2, 12,
					-- layer=2 filter=35 channel=57
					-21, 1, -46, 19, 8, 2, 20, 15, 9,
					-- layer=2 filter=35 channel=58
					-1, 23, -1, 45, 4, 31, 32, 23, 12,
					-- layer=2 filter=35 channel=59
					-41, 28, 33, -85, -24, -61, 8, -3, 25,
					-- layer=2 filter=35 channel=60
					19, -14, -17, 47, 12, 0, 14, 7, -14,
					-- layer=2 filter=35 channel=61
					-36, 25, 20, 35, 11, 43, -23, 37, 25,
					-- layer=2 filter=35 channel=62
					13, -39, -64, -49, -7, 10, -32, 17, 47,
					-- layer=2 filter=35 channel=63
					-52, -24, -21, -96, -56, 27, -44, -31, -20,
					-- layer=2 filter=36 channel=0
					-16, 6, -16, 9, -6, -2, -22, -16, 1,
					-- layer=2 filter=36 channel=1
					-3, -1, -5, -23, -3, -7, 0, -9, 0,
					-- layer=2 filter=36 channel=2
					2, -19, -2, -1, -8, 11, -17, -21, -2,
					-- layer=2 filter=36 channel=3
					2, -9, -6, -3, 0, -26, -12, 4, 8,
					-- layer=2 filter=36 channel=4
					-14, -8, -16, -25, -15, 13, -16, -17, -11,
					-- layer=2 filter=36 channel=5
					0, 6, -4, -25, -15, -9, -6, -9, -21,
					-- layer=2 filter=36 channel=6
					-28, -19, -7, -15, -16, 14, -20, -16, -24,
					-- layer=2 filter=36 channel=7
					0, -15, -2, -3, -21, -14, 0, 5, -15,
					-- layer=2 filter=36 channel=8
					-13, -13, -11, -2, -22, -15, -23, -18, -12,
					-- layer=2 filter=36 channel=9
					-19, -5, 5, -10, -6, -4, 0, -7, -13,
					-- layer=2 filter=36 channel=10
					-10, -28, -14, -1, -9, 5, -2, 7, 0,
					-- layer=2 filter=36 channel=11
					-11, -7, 3, 6, 13, 13, -19, -2, -15,
					-- layer=2 filter=36 channel=12
					14, 8, -1, -2, 2, -18, 4, -12, -18,
					-- layer=2 filter=36 channel=13
					-26, 0, -4, -12, 0, 16, -17, 0, -8,
					-- layer=2 filter=36 channel=14
					-17, -13, -9, 6, 6, 4, -10, -14, 3,
					-- layer=2 filter=36 channel=15
					4, -17, -3, 1, -7, -20, -3, 2, -16,
					-- layer=2 filter=36 channel=16
					-14, 3, -11, 1, -16, -14, -10, 13, -1,
					-- layer=2 filter=36 channel=17
					1, -25, -3, -9, 0, 10, -16, -20, 3,
					-- layer=2 filter=36 channel=18
					-21, 5, 0, 0, -5, 1, 2, -13, 11,
					-- layer=2 filter=36 channel=19
					18, -5, -13, 12, -22, -8, -23, -4, -21,
					-- layer=2 filter=36 channel=20
					-16, -11, -2, -20, 14, -26, -8, 1, 0,
					-- layer=2 filter=36 channel=21
					-4, -21, -11, -8, -13, 0, -21, -8, -9,
					-- layer=2 filter=36 channel=22
					-20, -14, -22, -16, -16, -22, 3, -24, -15,
					-- layer=2 filter=36 channel=23
					-15, -4, -16, -9, 1, -4, 1, -18, 9,
					-- layer=2 filter=36 channel=24
					-19, -16, -28, -15, -7, -17, -19, -3, 16,
					-- layer=2 filter=36 channel=25
					-9, -4, -19, -17, 0, -7, 9, -1, -1,
					-- layer=2 filter=36 channel=26
					-12, 4, -11, 11, -14, 0, -1, 0, -2,
					-- layer=2 filter=36 channel=27
					-3, 12, -4, 9, 14, -9, -2, -8, -9,
					-- layer=2 filter=36 channel=28
					-12, -8, -13, -2, -14, -7, -1, 9, -11,
					-- layer=2 filter=36 channel=29
					-17, -5, -10, -5, -19, 2, -15, 8, -11,
					-- layer=2 filter=36 channel=30
					3, -12, -11, 3, 6, -9, 11, 8, 4,
					-- layer=2 filter=36 channel=31
					-10, 0, 0, -15, 7, -14, -6, -7, 10,
					-- layer=2 filter=36 channel=32
					-5, -11, 0, -15, 0, 14, -8, -2, -6,
					-- layer=2 filter=36 channel=33
					-9, -21, -17, -5, -1, -14, -13, 1, 11,
					-- layer=2 filter=36 channel=34
					-9, 1, -15, 3, -4, -14, -19, 0, -10,
					-- layer=2 filter=36 channel=35
					-7, -13, -7, 6, -21, -9, -14, -9, 9,
					-- layer=2 filter=36 channel=36
					9, -10, -21, -23, -11, -1, -5, -21, -5,
					-- layer=2 filter=36 channel=37
					-10, -13, 5, -2, -3, 3, -8, 1, -2,
					-- layer=2 filter=36 channel=38
					4, 0, 5, -6, 5, -14, -22, -8, -3,
					-- layer=2 filter=36 channel=39
					-12, -13, -17, 9, -8, -16, -29, -22, -8,
					-- layer=2 filter=36 channel=40
					-7, -19, -3, -18, -5, -11, -20, -11, -14,
					-- layer=2 filter=36 channel=41
					-20, -17, -4, 3, -7, 1, -15, -12, -18,
					-- layer=2 filter=36 channel=42
					2, -29, -3, -6, -21, 0, -11, -20, -10,
					-- layer=2 filter=36 channel=43
					21, 6, -8, -21, 18, -8, 0, -14, 4,
					-- layer=2 filter=36 channel=44
					-1, -4, 4, -18, 7, -4, -15, 1, 0,
					-- layer=2 filter=36 channel=45
					-10, -17, -21, -22, 7, -16, -21, 4, 12,
					-- layer=2 filter=36 channel=46
					-2, -4, 18, -17, 8, -19, -13, 0, 4,
					-- layer=2 filter=36 channel=47
					0, -9, -14, -17, 0, -28, -6, -10, -16,
					-- layer=2 filter=36 channel=48
					1, -17, -22, -23, 0, -6, -10, -17, -12,
					-- layer=2 filter=36 channel=49
					1, -5, -17, -5, -15, -15, -11, -15, 7,
					-- layer=2 filter=36 channel=50
					-3, -5, -3, -13, -13, -18, -2, 10, 9,
					-- layer=2 filter=36 channel=51
					9, -13, 14, 7, -6, -23, 0, 0, -14,
					-- layer=2 filter=36 channel=52
					3, -28, -17, 8, -11, -20, -4, -2, -5,
					-- layer=2 filter=36 channel=53
					-11, 3, -7, 12, -1, -20, -20, -19, 1,
					-- layer=2 filter=36 channel=54
					-22, -11, -19, -8, -3, 0, -20, -10, 4,
					-- layer=2 filter=36 channel=55
					5, -5, -17, 3, -18, -15, 1, -24, -14,
					-- layer=2 filter=36 channel=56
					-12, 2, -13, 1, 2, -2, -17, 3, 0,
					-- layer=2 filter=36 channel=57
					-9, 1, -1, 6, -5, -21, -7, -16, 5,
					-- layer=2 filter=36 channel=58
					-16, -14, -14, -8, 1, 20, 1, 15, 14,
					-- layer=2 filter=36 channel=59
					-2, -5, 5, -9, -17, -9, 7, 0, 0,
					-- layer=2 filter=36 channel=60
					-5, -4, 13, -15, -7, -2, -14, -10, -5,
					-- layer=2 filter=36 channel=61
					3, 7, -4, 4, 8, -11, -12, 0, -5,
					-- layer=2 filter=36 channel=62
					-3, -9, 13, -4, 3, 12, 4, 12, -19,
					-- layer=2 filter=36 channel=63
					3, -10, -7, -9, -15, 5, -16, -1, 0,
					-- layer=2 filter=37 channel=0
					23, 10, 42, 2, 34, -4, -20, 6, 11,
					-- layer=2 filter=37 channel=1
					36, 21, 36, -4, -8, -32, 20, -38, 32,
					-- layer=2 filter=37 channel=2
					-32, -19, -34, -2, 1, 9, 24, 10, 15,
					-- layer=2 filter=37 channel=3
					44, -3, -29, -23, -10, -15, 12, 17, 5,
					-- layer=2 filter=37 channel=4
					-16, 2, 8, -25, -23, -2, 14, 25, 15,
					-- layer=2 filter=37 channel=5
					-19, -62, -18, 3, -20, -9, -5, -4, -1,
					-- layer=2 filter=37 channel=6
					23, 29, -14, 11, 7, -28, 0, -5, -5,
					-- layer=2 filter=37 channel=7
					-7, -11, -51, 7, 44, 31, -47, 1, 33,
					-- layer=2 filter=37 channel=8
					-2, -16, -9, 17, 5, 21, 13, 20, 14,
					-- layer=2 filter=37 channel=9
					-2, -14, -33, 15, -54, -24, 2, -6, -6,
					-- layer=2 filter=37 channel=10
					-44, -22, -18, 5, 12, 2, -13, 23, 11,
					-- layer=2 filter=37 channel=11
					-43, -49, -22, 54, 34, 14, 16, 42, 20,
					-- layer=2 filter=37 channel=12
					-30, -12, -27, 1, -28, 11, 27, 0, 23,
					-- layer=2 filter=37 channel=13
					-38, -25, 5, 14, 6, -6, -6, 18, 11,
					-- layer=2 filter=37 channel=14
					-39, -3, 15, -18, -19, -3, -45, -18, 0,
					-- layer=2 filter=37 channel=15
					40, 2, 5, -17, -18, -35, -30, 0, -10,
					-- layer=2 filter=37 channel=16
					-31, -26, -22, 5, 8, 17, 42, 3, 33,
					-- layer=2 filter=37 channel=17
					20, -17, 15, -15, -40, -9, -5, -10, -7,
					-- layer=2 filter=37 channel=18
					21, -67, -37, -21, -45, -46, 38, 17, -19,
					-- layer=2 filter=37 channel=19
					-36, -22, 8, -24, 19, 33, -12, 44, 34,
					-- layer=2 filter=37 channel=20
					-18, -25, -20, 6, -22, 2, 31, 36, 37,
					-- layer=2 filter=37 channel=21
					39, 2, 0, 18, -13, -9, -17, 0, -3,
					-- layer=2 filter=37 channel=22
					7, 19, 29, -3, 12, 10, -4, -15, 1,
					-- layer=2 filter=37 channel=23
					-1, -10, -22, 7, 5, -7, 13, 15, -1,
					-- layer=2 filter=37 channel=24
					-14, -1, -15, 21, -20, 4, 18, 18, 28,
					-- layer=2 filter=37 channel=25
					35, -3, -38, 26, -29, 34, 8, -9, -1,
					-- layer=2 filter=37 channel=26
					6, 12, 6, -3, -11, -14, -8, -12, 0,
					-- layer=2 filter=37 channel=27
					-5, 13, -14, 1, 8, 2, 10, 8, 0,
					-- layer=2 filter=37 channel=28
					10, 0, 1, 2, -13, 19, 21, -16, -11,
					-- layer=2 filter=37 channel=29
					17, -25, -28, -6, 8, 24, 17, 19, 6,
					-- layer=2 filter=37 channel=30
					-22, -25, -22, -55, -28, -30, 24, 27, 26,
					-- layer=2 filter=37 channel=31
					-39, -7, -44, -17, 8, -46, -34, -15, -5,
					-- layer=2 filter=37 channel=32
					-25, -33, -7, -25, 1, 2, -17, -20, -8,
					-- layer=2 filter=37 channel=33
					22, 8, -22, 25, 9, -12, 24, -2, 8,
					-- layer=2 filter=37 channel=34
					20, -10, -14, 10, 10, -33, -68, -28, -8,
					-- layer=2 filter=37 channel=35
					38, 13, 6, 14, -13, -33, -27, -39, -19,
					-- layer=2 filter=37 channel=36
					-5, -2, -1, -23, -36, 8, 25, 16, -7,
					-- layer=2 filter=37 channel=37
					20, -16, -20, 12, 25, -1, -76, 0, 7,
					-- layer=2 filter=37 channel=38
					-2, -38, 0, 1, -58, -35, -5, -19, 1,
					-- layer=2 filter=37 channel=39
					23, 26, 43, 0, -7, -38, 0, -20, -36,
					-- layer=2 filter=37 channel=40
					-11, -43, 17, -4, 1, -2, 10, 7, 11,
					-- layer=2 filter=37 channel=41
					10, 0, 11, -28, -11, -23, -4, -12, -8,
					-- layer=2 filter=37 channel=42
					-2, -40, -1, 32, 33, 39, 24, -8, -3,
					-- layer=2 filter=37 channel=43
					12, -11, -29, 31, -7, 13, 32, -7, 17,
					-- layer=2 filter=37 channel=44
					-40, -35, 2, -8, 9, 15, 24, 11, 4,
					-- layer=2 filter=37 channel=45
					-4, 10, 3, -36, -26, -32, 2, 10, 13,
					-- layer=2 filter=37 channel=46
					6, 14, 49, 82, 8, 7, 24, 20, -18,
					-- layer=2 filter=37 channel=47
					26, 30, -6, -23, -3, -33, -8, 13, -11,
					-- layer=2 filter=37 channel=48
					-9, -9, -15, -5, -8, -10, -1, 23, 11,
					-- layer=2 filter=37 channel=49
					54, 38, 7, 8, 35, -38, -3, -32, -23,
					-- layer=2 filter=37 channel=50
					0, -27, -24, -30, 6, -17, -22, 9, -2,
					-- layer=2 filter=37 channel=51
					66, 38, 14, 62, 23, 4, 20, -7, 15,
					-- layer=2 filter=37 channel=52
					-85, -107, -49, 14, 21, 10, 20, 20, 23,
					-- layer=2 filter=37 channel=53
					12, -2, 0, -3, -10, -15, -13, -13, 9,
					-- layer=2 filter=37 channel=54
					-11, 1, -18, 1, 13, 32, 16, -4, 1,
					-- layer=2 filter=37 channel=55
					-58, -74, -35, 56, 64, 50, 50, 51, 25,
					-- layer=2 filter=37 channel=56
					2, 0, -36, 12, -3, -8, -14, -8, -8,
					-- layer=2 filter=37 channel=57
					3, -14, -22, 12, 22, -8, 1, 2, -8,
					-- layer=2 filter=37 channel=58
					-41, 34, 82, -8, 34, 20, -18, 14, -40,
					-- layer=2 filter=37 channel=59
					-2, 8, -33, -11, -8, 21, -5, -7, 15,
					-- layer=2 filter=37 channel=60
					27, 56, 17, 4, 19, -81, -13, -14, 7,
					-- layer=2 filter=37 channel=61
					11, -5, -32, -22, 7, -80, 8, -13, -40,
					-- layer=2 filter=37 channel=62
					29, 4, 0, 35, -5, -6, 51, 62, 18,
					-- layer=2 filter=37 channel=63
					17, -36, -34, -10, -20, -25, 13, 27, 61,
					-- layer=2 filter=38 channel=0
					62, 28, 44, 2, 14, 34, 7, -38, -19,
					-- layer=2 filter=38 channel=1
					-49, -32, -31, -67, -18, 18, 23, -1, -19,
					-- layer=2 filter=38 channel=2
					6, -24, 0, 5, -2, 1, 13, 11, 14,
					-- layer=2 filter=38 channel=3
					22, 4, 8, 1, 14, -13, -4, 24, -2,
					-- layer=2 filter=38 channel=4
					-29, -8, -10, -40, -14, 0, -1, -4, 30,
					-- layer=2 filter=38 channel=5
					-10, -54, -36, -24, -72, -74, 41, -54, 9,
					-- layer=2 filter=38 channel=6
					-38, -13, -5, -23, 14, -3, -33, 40, 20,
					-- layer=2 filter=38 channel=7
					11, -5, 20, 71, 58, 44, -38, -34, -47,
					-- layer=2 filter=38 channel=8
					10, 9, 32, -54, -18, -36, -29, 12, -5,
					-- layer=2 filter=38 channel=9
					-42, 8, 9, -44, -53, -14, -21, 6, 0,
					-- layer=2 filter=38 channel=10
					41, 38, 28, 31, 20, 18, 9, -24, 21,
					-- layer=2 filter=38 channel=11
					54, 39, 10, 35, 51, 38, 38, 7, 34,
					-- layer=2 filter=38 channel=12
					-12, 0, -15, -21, -1, -15, 13, 11, 18,
					-- layer=2 filter=38 channel=13
					19, -37, -73, -18, -34, -44, -17, -47, -37,
					-- layer=2 filter=38 channel=14
					-15, -31, -30, 27, 15, -5, 22, 37, -13,
					-- layer=2 filter=38 channel=15
					21, 12, 28, -13, 23, 4, -31, -29, -53,
					-- layer=2 filter=38 channel=16
					-31, -41, -65, 4, 11, -26, 40, 35, 27,
					-- layer=2 filter=38 channel=17
					-4, -2, -10, 5, -5, 24, 39, 21, 15,
					-- layer=2 filter=38 channel=18
					-9, -20, -72, -25, 14, 10, -14, -31, -37,
					-- layer=2 filter=38 channel=19
					4, 7, -5, -12, 5, 7, -14, -18, 6,
					-- layer=2 filter=38 channel=20
					-15, -11, -51, -11, 0, -9, 22, 4, 17,
					-- layer=2 filter=38 channel=21
					9, 11, 3, -30, -14, 6, 9, 27, -6,
					-- layer=2 filter=38 channel=22
					28, 9, 7, 7, 4, -20, 21, 5, -4,
					-- layer=2 filter=38 channel=23
					2, -4, 3, 12, 11, 16, -11, 13, -3,
					-- layer=2 filter=38 channel=24
					3, -20, -17, 3, -7, -23, 25, 19, 0,
					-- layer=2 filter=38 channel=25
					57, 29, 32, -38, 11, 25, -59, -47, 27,
					-- layer=2 filter=38 channel=26
					-19, -17, 2, -17, 0, -13, 0, -5, 9,
					-- layer=2 filter=38 channel=27
					12, -2, 13, 1, -9, 8, 14, 1, -8,
					-- layer=2 filter=38 channel=28
					4, -7, 4, 3, -11, 0, -8, -5, 7,
					-- layer=2 filter=38 channel=29
					-5, -31, -31, -7, 10, -8, 40, 45, 1,
					-- layer=2 filter=38 channel=30
					10, -45, -52, -7, -21, -26, 47, 21, 14,
					-- layer=2 filter=38 channel=31
					-9, -5, -7, -42, -24, 0, 25, 16, -17,
					-- layer=2 filter=38 channel=32
					-16, -11, -15, -17, 21, -17, 7, 18, 19,
					-- layer=2 filter=38 channel=33
					-7, 0, 10, -23, 14, 22, -22, 1, 1,
					-- layer=2 filter=38 channel=34
					42, 15, 38, 0, 8, 8, 1, -25, -10,
					-- layer=2 filter=38 channel=35
					-28, -11, -15, -117, -73, -42, -30, -65, -17,
					-- layer=2 filter=38 channel=36
					25, -14, -10, 0, -12, -23, 18, 14, -1,
					-- layer=2 filter=38 channel=37
					25, 23, -4, 44, 24, 47, -10, -7, 11,
					-- layer=2 filter=38 channel=38
					-45, -36, -15, -57, -31, 21, 4, 21, -21,
					-- layer=2 filter=38 channel=39
					32, 29, 18, -1, -1, 15, -4, -24, 0,
					-- layer=2 filter=38 channel=40
					-32, -7, -21, -64, -83, -9, 2, 15, 8,
					-- layer=2 filter=38 channel=41
					-9, 4, 12, 2, 37, 14, -32, 2, -20,
					-- layer=2 filter=38 channel=42
					7, -34, -57, -20, -3, -35, 14, 5, 10,
					-- layer=2 filter=38 channel=43
					-8, -42, -41, 0, 18, -36, 22, 20, 15,
					-- layer=2 filter=38 channel=44
					-23, -10, 5, 13, 4, 20, 11, 13, 33,
					-- layer=2 filter=38 channel=45
					-25, -21, 10, -21, 18, -11, -21, 33, 7,
					-- layer=2 filter=38 channel=46
					-33, -4, -4, -29, 8, 18, 1, -1, -14,
					-- layer=2 filter=38 channel=47
					-17, -6, -5, -21, -6, -3, -27, -18, -38,
					-- layer=2 filter=38 channel=48
					1, -2, -11, -4, -19, -24, 12, 9, 16,
					-- layer=2 filter=38 channel=49
					21, -36, -51, -8, 20, 4, 12, -29, -35,
					-- layer=2 filter=38 channel=50
					-23, -20, 14, 1, 26, 6, 18, -11, -32,
					-- layer=2 filter=38 channel=51
					62, 2, -49, -55, 24, -22, 21, -17, 0,
					-- layer=2 filter=38 channel=52
					22, 29, 13, 31, 17, 27, 32, -1, -4,
					-- layer=2 filter=38 channel=53
					14, 2, 19, 4, 20, 13, -20, -6, 1,
					-- layer=2 filter=38 channel=54
					-9, -28, -50, 24, 16, -5, 55, 50, 40,
					-- layer=2 filter=38 channel=55
					25, 18, 34, 33, 27, 38, 56, 12, 22,
					-- layer=2 filter=38 channel=56
					24, 42, 15, 19, -16, 10, -3, 14, -16,
					-- layer=2 filter=38 channel=57
					43, 30, 19, -20, 2, 31, 0, -22, 5,
					-- layer=2 filter=38 channel=58
					-8, -48, -67, -5, 45, 13, -16, -23, 13,
					-- layer=2 filter=38 channel=59
					-9, 16, 9, 17, 4, -9, 15, -15, 0,
					-- layer=2 filter=38 channel=60
					0, -34, -48, -61, -67, -81, -33, -49, -45,
					-- layer=2 filter=38 channel=61
					46, 29, -19, 20, 15, -43, 61, -35, 6,
					-- layer=2 filter=38 channel=62
					-19, -64, -57, -60, -15, -28, -10, -6, 9,
					-- layer=2 filter=38 channel=63
					-1, -9, -7, 41, -3, -1, -2, 36, -8,
					-- layer=2 filter=39 channel=0
					7, -10, -18, -5, -14, 5, -3, -27, -18,
					-- layer=2 filter=39 channel=1
					-9, 34, 15, -6, 40, 37, 22, -3, 15,
					-- layer=2 filter=39 channel=2
					33, -17, -12, 20, -28, -42, 25, -12, -4,
					-- layer=2 filter=39 channel=3
					52, 0, -8, 22, -5, -40, 14, -6, -6,
					-- layer=2 filter=39 channel=4
					-1, -29, 13, 28, -34, -25, 20, -21, 0,
					-- layer=2 filter=39 channel=5
					19, 23, 76, -14, 33, 18, -30, -48, -43,
					-- layer=2 filter=39 channel=6
					-42, 10, 8, -59, -16, 24, -38, -48, -12,
					-- layer=2 filter=39 channel=7
					17, -2, -33, -35, -2, 3, -14, -14, 8,
					-- layer=2 filter=39 channel=8
					-12, -23, 21, 41, -13, -19, -17, -32, 7,
					-- layer=2 filter=39 channel=9
					-10, 29, 0, 27, 9, 15, -10, -2, 35,
					-- layer=2 filter=39 channel=10
					-6, 20, -19, 26, 25, 24, 14, -15, -26,
					-- layer=2 filter=39 channel=11
					30, 29, 5, 24, 53, 18, 32, 33, 34,
					-- layer=2 filter=39 channel=12
					42, -1, -4, 57, -39, -35, 21, -16, -15,
					-- layer=2 filter=39 channel=13
					53, 11, 0, -12, -22, -6, -41, -75, -39,
					-- layer=2 filter=39 channel=14
					43, 18, 12, -7, 38, 20, 7, 0, 3,
					-- layer=2 filter=39 channel=15
					-46, 5, 26, -25, 14, 34, -22, 15, 11,
					-- layer=2 filter=39 channel=16
					2, 15, 24, -1, -7, 16, 0, -40, -17,
					-- layer=2 filter=39 channel=17
					-1, 8, -11, 15, 0, -17, 9, 0, 0,
					-- layer=2 filter=39 channel=18
					-56, -1, -1, -39, -39, -35, -55, -6, -32,
					-- layer=2 filter=39 channel=19
					62, -14, 15, 58, -41, -32, 39, -27, -58,
					-- layer=2 filter=39 channel=20
					48, -7, 3, 37, 1, -34, 60, 17, 17,
					-- layer=2 filter=39 channel=21
					8, -6, 13, 3, 14, -42, 15, 56, 14,
					-- layer=2 filter=39 channel=22
					9, 32, 10, -2, -7, -20, -5, -14, -28,
					-- layer=2 filter=39 channel=23
					-76, 13, 46, -70, 24, 62, -56, 19, 28,
					-- layer=2 filter=39 channel=24
					40, 18, -7, 8, 0, -25, 36, -14, -25,
					-- layer=2 filter=39 channel=25
					-13, 82, 5, -64, 71, 34, -21, -18, -5,
					-- layer=2 filter=39 channel=26
					-5, -10, 17, -11, -10, 11, 12, -8, 10,
					-- layer=2 filter=39 channel=27
					7, 13, 11, 11, -7, -3, -2, -7, -6,
					-- layer=2 filter=39 channel=28
					-7, -15, -26, 0, -23, -7, 8, 12, 0,
					-- layer=2 filter=39 channel=29
					58, -28, -56, 19, -36, -86, 16, 14, -2,
					-- layer=2 filter=39 channel=30
					21, 23, -20, 50, -1, -45, 6, -4, -33,
					-- layer=2 filter=39 channel=31
					34, 33, 22, 63, 54, 10, 41, 23, 2,
					-- layer=2 filter=39 channel=32
					6, 29, 15, -10, -16, 55, -41, -42, -28,
					-- layer=2 filter=39 channel=33
					-56, 13, 28, -51, 17, 28, -72, -12, -38,
					-- layer=2 filter=39 channel=34
					14, -6, -16, -18, -14, 13, -16, 12, 3,
					-- layer=2 filter=39 channel=35
					-34, 3, 80, 26, 56, 32, 79, 60, 51,
					-- layer=2 filter=39 channel=36
					48, -30, -15, 26, -33, -39, 43, -20, -19,
					-- layer=2 filter=39 channel=37
					-4, -13, -20, -18, 13, 21, -12, 37, 4,
					-- layer=2 filter=39 channel=38
					0, 39, 33, -24, 9, 6, -30, -33, -2,
					-- layer=2 filter=39 channel=39
					4, 20, 5, 53, -9, -22, 14, -35, -14,
					-- layer=2 filter=39 channel=40
					-6, -2, 40, 10, -11, -31, -39, -59, -44,
					-- layer=2 filter=39 channel=41
					-28, 13, 17, -29, 60, 28, -16, 30, 18,
					-- layer=2 filter=39 channel=42
					49, -13, -40, -6, -46, -21, 57, 2, 0,
					-- layer=2 filter=39 channel=43
					-10, 13, 68, -6, -21, 35, 1, -20, 18,
					-- layer=2 filter=39 channel=44
					-11, -11, 16, 14, -10, 18, -11, -20, 17,
					-- layer=2 filter=39 channel=45
					18, 20, 19, -18, 57, -10, 5, -21, -22,
					-- layer=2 filter=39 channel=46
					27, 9, -27, -4, 8, -10, -2, 20, 14,
					-- layer=2 filter=39 channel=47
					-36, -19, 39, -24, 5, 30, -41, -35, 14,
					-- layer=2 filter=39 channel=48
					55, -28, -26, 41, -21, -30, 40, -2, -15,
					-- layer=2 filter=39 channel=49
					-44, 27, -51, -15, 0, 17, -7, -26, -50,
					-- layer=2 filter=39 channel=50
					0, 18, 11, -18, 47, 36, -24, 33, 4,
					-- layer=2 filter=39 channel=51
					-2, 33, 23, 9, -15, -15, -28, -21, -69,
					-- layer=2 filter=39 channel=52
					3, 32, -18, 29, 24, 38, 14, 16, -4,
					-- layer=2 filter=39 channel=53
					-48, -19, 24, -21, 23, 28, 12, 47, 7,
					-- layer=2 filter=39 channel=54
					-22, -16, 43, 1, -27, 39, -45, 21, 14,
					-- layer=2 filter=39 channel=55
					-3, 50, 18, -12, 6, 59, -28, 26, 8,
					-- layer=2 filter=39 channel=56
					10, -1, -58, 17, 20, -22, -4, -21, -17,
					-- layer=2 filter=39 channel=57
					-63, 23, 62, -42, 0, 37, -18, -3, 19,
					-- layer=2 filter=39 channel=58
					-9, 17, -19, -32, -68, -20, -38, -46, 2,
					-- layer=2 filter=39 channel=59
					-41, 37, 20, -48, 8, 22, -25, 24, 39,
					-- layer=2 filter=39 channel=60
					-2, 19, -35, -24, -8, 12, -10, -6, 40,
					-- layer=2 filter=39 channel=61
					-66, -81, 15, -7, -32, -26, 12, 9, 6,
					-- layer=2 filter=39 channel=62
					-1, 25, 4, -36, -22, -7, -56, 32, 9,
					-- layer=2 filter=39 channel=63
					20, 5, 18, 25, 7, -10, 25, -3, -24,
					-- layer=2 filter=40 channel=0
					-38, 42, -17, 50, -1, -46, -21, -6, -4,
					-- layer=2 filter=40 channel=1
					-10, 0, -40, 35, 8, -29, 9, 23, -37,
					-- layer=2 filter=40 channel=2
					-19, -3, -11, -14, 9, 21, 8, 18, 4,
					-- layer=2 filter=40 channel=3
					41, -21, -6, 31, -28, 17, 21, -53, -41,
					-- layer=2 filter=40 channel=4
					-8, 19, 8, 48, 28, 10, -27, -2, -34,
					-- layer=2 filter=40 channel=5
					-18, 31, -16, -29, 26, 18, -18, 76, 33,
					-- layer=2 filter=40 channel=6
					31, 1, -1, 61, 0, -36, 56, 28, -20,
					-- layer=2 filter=40 channel=7
					-12, -21, -16, -65, -26, 29, -42, -11, -49,
					-- layer=2 filter=40 channel=8
					-28, -49, -41, 10, 6, 6, -18, -22, 37,
					-- layer=2 filter=40 channel=9
					0, -5, -40, 11, 11, -74, 11, 44, -13,
					-- layer=2 filter=40 channel=10
					-5, -64, -24, -43, 8, -10, 54, 43, 27,
					-- layer=2 filter=40 channel=11
					-36, -62, -12, 15, -24, 0, 38, -18, 22,
					-- layer=2 filter=40 channel=12
					-3, 2, 6, -3, 34, 35, -39, 0, -8,
					-- layer=2 filter=40 channel=13
					5, -62, -13, -43, -32, -3, 26, -39, -11,
					-- layer=2 filter=40 channel=14
					10, -30, 0, 25, -40, -57, 54, 1, 0,
					-- layer=2 filter=40 channel=15
					23, 13, -32, 3, -17, -28, 10, 26, 9,
					-- layer=2 filter=40 channel=16
					-8, -15, -23, 7, -12, 14, 13, -8, -22,
					-- layer=2 filter=40 channel=17
					-16, -21, -1, 26, -31, -34, 11, -16, -28,
					-- layer=2 filter=40 channel=18
					-34, -14, -46, -74, 73, -29, 26, 12, 19,
					-- layer=2 filter=40 channel=19
					7, 20, 25, 12, 50, 38, 15, 18, -8,
					-- layer=2 filter=40 channel=20
					2, -14, 3, 17, 1, 27, -25, -34, -24,
					-- layer=2 filter=40 channel=21
					21, 35, -16, 10, -41, 23, 3, -32, -46,
					-- layer=2 filter=40 channel=22
					7, -12, -39, 5, -15, -50, 9, 17, -2,
					-- layer=2 filter=40 channel=23
					15, -32, -32, 23, -35, -73, 58, 0, -13,
					-- layer=2 filter=40 channel=24
					-20, 0, -15, 7, -8, 14, -5, -21, -6,
					-- layer=2 filter=40 channel=25
					-33, 34, 71, -20, -5, 11, 45, 51, 11,
					-- layer=2 filter=40 channel=26
					6, 2, 2, 1, -7, -9, 10, -3, 9,
					-- layer=2 filter=40 channel=27
					4, 13, 11, -10, -12, 8, 7, 3, -4,
					-- layer=2 filter=40 channel=28
					2, 5, 0, -18, -8, -1, 20, 15, -5,
					-- layer=2 filter=40 channel=29
					-20, 16, 13, -39, -19, 44, -73, -69, -33,
					-- layer=2 filter=40 channel=30
					-33, -33, -2, -26, -25, 9, 25, 1, 5,
					-- layer=2 filter=40 channel=31
					-8, -14, 6, 16, -17, -22, 57, 41, 18,
					-- layer=2 filter=40 channel=32
					40, -7, 6, 26, -5, -34, 30, -21, -54,
					-- layer=2 filter=40 channel=33
					38, -9, 2, 21, -45, -65, 39, -17, -24,
					-- layer=2 filter=40 channel=34
					-19, 23, -9, 1, -9, -34, -44, -26, -44,
					-- layer=2 filter=40 channel=35
					-43, -1, -7, 9, -29, -17, 3, 33, -28,
					-- layer=2 filter=40 channel=36
					-19, 13, 13, 26, 22, 6, -39, -37, 0,
					-- layer=2 filter=40 channel=37
					-26, -1, -10, -18, -22, -48, 22, -12, -36,
					-- layer=2 filter=40 channel=38
					11, 11, 27, 25, 19, -15, 21, 33, -55,
					-- layer=2 filter=40 channel=39
					-15, 49, 6, 32, 21, 18, -5, 26, 17,
					-- layer=2 filter=40 channel=40
					2, -15, 7, 11, 12, 0, 2, 40, -10,
					-- layer=2 filter=40 channel=41
					18, -7, -29, 45, -47, -57, 45, -12, -42,
					-- layer=2 filter=40 channel=42
					4, -12, -21, -26, 0, 38, -5, -3, 6,
					-- layer=2 filter=40 channel=43
					-5, 11, -11, -9, 1, 4, -16, 5, 20,
					-- layer=2 filter=40 channel=44
					1, -7, -4, 50, 40, -8, 31, 1, 17,
					-- layer=2 filter=40 channel=45
					40, -27, -3, 20, -26, -47, 22, 5, 11,
					-- layer=2 filter=40 channel=46
					-3, -46, -46, -3, 24, -30, 0, 38, 7,
					-- layer=2 filter=40 channel=47
					26, -9, -36, 43, 5, -42, 46, 11, -38,
					-- layer=2 filter=40 channel=48
					-17, 0, 10, -30, -7, 15, -40, -10, -9,
					-- layer=2 filter=40 channel=49
					18, 20, 30, 23, -20, 34, 25, 26, 8,
					-- layer=2 filter=40 channel=50
					19, -2, -10, 3, -47, 7, -9, -16, -39,
					-- layer=2 filter=40 channel=51
					-16, -13, 11, -5, -40, 38, -1, 20, 68,
					-- layer=2 filter=40 channel=52
					-11, -6, -44, -37, -19, 32, 44, 28, 18,
					-- layer=2 filter=40 channel=53
					28, -6, -18, 13, -31, -59, 73, 8, -20,
					-- layer=2 filter=40 channel=54
					24, 18, -39, 22, 2, -19, 12, -36, -46,
					-- layer=2 filter=40 channel=55
					-11, -41, 4, -38, 9, 33, 28, 47, 49,
					-- layer=2 filter=40 channel=56
					17, 11, -23, 3, -12, -29, 27, 33, -9,
					-- layer=2 filter=40 channel=57
					39, -1, 11, 22, -10, -46, 36, -29, -16,
					-- layer=2 filter=40 channel=58
					28, -38, -10, -48, 4, -13, 37, 22, 47,
					-- layer=2 filter=40 channel=59
					50, 6, -7, 8, -24, -21, 36, 13, -42,
					-- layer=2 filter=40 channel=60
					12, -44, -16, -6, -45, -7, -7, 31, -68,
					-- layer=2 filter=40 channel=61
					-63, -25, -50, 0, 16, 8, -19, -3, -9,
					-- layer=2 filter=40 channel=62
					29, -13, -18, 17, 62, -40, -29, 52, 70,
					-- layer=2 filter=40 channel=63
					21, -13, -8, -4, -23, -15, 26, -18, -31,
					-- layer=2 filter=41 channel=0
					-24, 37, 46, 11, 44, 15, -11, -32, 8,
					-- layer=2 filter=41 channel=1
					-25, -35, 15, 4, -11, -27, 18, -11, 2,
					-- layer=2 filter=41 channel=2
					28, -16, -34, 4, 10, 15, 42, 22, -3,
					-- layer=2 filter=41 channel=3
					-15, 36, 15, -7, 8, -26, 23, 29, -23,
					-- layer=2 filter=41 channel=4
					26, -4, -34, 53, 5, -15, 44, 56, 0,
					-- layer=2 filter=41 channel=5
					-41, 40, 28, 31, -34, 39, 15, -6, 15,
					-- layer=2 filter=41 channel=6
					6, -15, -35, -10, 31, -6, -60, -17, 0,
					-- layer=2 filter=41 channel=7
					-8, 1, -2, 9, 24, 9, -38, 13, -58,
					-- layer=2 filter=41 channel=8
					-4, -5, -23, 8, 45, -2, -19, 37, -31,
					-- layer=2 filter=41 channel=9
					-10, 1, -8, -28, -37, -24, 33, -25, -45,
					-- layer=2 filter=41 channel=10
					-8, 14, -6, -18, 8, -1, -38, -36, 12,
					-- layer=2 filter=41 channel=11
					-31, -18, 10, -38, 15, -5, -19, -13, -5,
					-- layer=2 filter=41 channel=12
					18, -15, -16, -15, 7, 2, 18, 24, 33,
					-- layer=2 filter=41 channel=13
					-45, 9, 65, -3, -11, 29, -5, -33, -17,
					-- layer=2 filter=41 channel=14
					2, -25, -15, -22, -10, -51, -20, -13, -5,
					-- layer=2 filter=41 channel=15
					-17, 4, 39, -18, 0, 10, -44, -12, -17,
					-- layer=2 filter=41 channel=16
					35, 7, -22, -28, 33, -17, -11, 23, -30,
					-- layer=2 filter=41 channel=17
					1, -19, 16, 7, 4, -39, -9, 18, -23,
					-- layer=2 filter=41 channel=18
					-49, -50, -35, -54, -49, -40, -36, -37, -52,
					-- layer=2 filter=41 channel=19
					68, -8, -37, 16, -7, 6, 12, 5, -12,
					-- layer=2 filter=41 channel=20
					-6, -11, -4, -34, 6, -11, 1, 49, 0,
					-- layer=2 filter=41 channel=21
					14, 0, 4, 5, -4, 19, -4, -1, -8,
					-- layer=2 filter=41 channel=22
					17, 53, 26, 8, 16, 0, -21, -16, -7,
					-- layer=2 filter=41 channel=23
					23, 3, 5, 12, 28, 5, -12, 20, 44,
					-- layer=2 filter=41 channel=24
					2, -3, -11, -7, 14, 12, 22, 33, 3,
					-- layer=2 filter=41 channel=25
					-39, -36, 26, -12, -38, -25, -59, -12, -36,
					-- layer=2 filter=41 channel=26
					6, -9, -8, -8, 4, 0, -9, 11, 0,
					-- layer=2 filter=41 channel=27
					-10, 8, 9, 0, -2, -15, 1, 9, 6,
					-- layer=2 filter=41 channel=28
					5, 0, -4, -4, 20, -10, 22, 12, -1,
					-- layer=2 filter=41 channel=29
					0, 24, 28, -36, -15, -30, -13, -4, -6,
					-- layer=2 filter=41 channel=30
					2, -1, -41, -20, 10, -29, -4, -7, -25,
					-- layer=2 filter=41 channel=31
					-35, -55, 12, -39, -25, -7, -8, 3, -5,
					-- layer=2 filter=41 channel=32
					14, -16, 4, -18, 18, 3, -16, 12, -47,
					-- layer=2 filter=41 channel=33
					7, 1, 30, -18, 25, -3, -50, 18, 28,
					-- layer=2 filter=41 channel=34
					-28, 43, 36, 0, 19, 35, -26, -30, -9,
					-- layer=2 filter=41 channel=35
					-53, -70, -18, -26, -55, -22, 25, -7, -7,
					-- layer=2 filter=41 channel=36
					7, -9, -33, 21, 7, -8, 55, 21, 39,
					-- layer=2 filter=41 channel=37
					-11, 11, 0, -4, -5, 20, -31, -31, -19,
					-- layer=2 filter=41 channel=38
					-81, -12, -43, -5, -25, -43, 4, -28, -36,
					-- layer=2 filter=41 channel=39
					-18, -1, 9, 15, 11, 39, -27, 0, 18,
					-- layer=2 filter=41 channel=40
					1, 25, -60, 20, 0, -58, 43, 41, -20,
					-- layer=2 filter=41 channel=41
					4, 0, 23, -10, 40, 18, -40, 19, 40,
					-- layer=2 filter=41 channel=42
					-45, -38, -35, -25, 24, -7, 75, 35, 13,
					-- layer=2 filter=41 channel=43
					0, 3, -2, -4, -18, -26, -45, -32, -18,
					-- layer=2 filter=41 channel=44
					44, 3, -3, 30, 34, -18, 38, 10, 26,
					-- layer=2 filter=41 channel=45
					-6, -10, 9, -17, 25, 9, -43, 28, 37,
					-- layer=2 filter=41 channel=46
					-3, -54, 16, -14, 19, 37, 15, 28, 36,
					-- layer=2 filter=41 channel=47
					30, -27, -24, 14, 6, -18, 0, 26, 11,
					-- layer=2 filter=41 channel=48
					9, -10, 3, 0, 4, 0, 0, -6, 9,
					-- layer=2 filter=41 channel=49
					1, 16, 14, -33, 68, 27, -47, 27, -10,
					-- layer=2 filter=41 channel=50
					-51, -9, 22, -22, 22, -46, -13, 10, 38,
					-- layer=2 filter=41 channel=51
					12, 38, -8, -54, 18, 28, -30, 29, 4,
					-- layer=2 filter=41 channel=52
					9, -8, 9, -32, -5, 16, -49, -24, 0,
					-- layer=2 filter=41 channel=53
					-4, 16, 38, -40, 49, -7, -44, 2, 30,
					-- layer=2 filter=41 channel=54
					-20, -8, -18, 5, -15, -46, -12, -6, -29,
					-- layer=2 filter=41 channel=55
					-20, 49, 16, -32, 33, 49, -54, -30, 6,
					-- layer=2 filter=41 channel=56
					-3, 38, 16, 5, 36, 70, 9, 3, 23,
					-- layer=2 filter=41 channel=57
					30, 18, -3, -30, -1, -10, -75, 9, -29,
					-- layer=2 filter=41 channel=58
					62, 2, 83, 43, -3, 5, -16, 16, -4,
					-- layer=2 filter=41 channel=59
					12, 14, 16, 19, 8, -1, -20, 16, -22,
					-- layer=2 filter=41 channel=60
					-25, -21, 18, 3, -17, 17, 69, 41, 23,
					-- layer=2 filter=41 channel=61
					-42, -25, -34, -8, -10, -45, -23, -2, 17,
					-- layer=2 filter=41 channel=62
					38, 26, 13, 19, 6, -46, -55, 35, 52,
					-- layer=2 filter=41 channel=63
					-25, 5, -37, 1, 1, -4, 10, 13, 0,
					-- layer=2 filter=42 channel=0
					-2, -21, 10, -4, -7, -17, 0, -8, 0,
					-- layer=2 filter=42 channel=1
					-15, -4, -4, -10, -7, 1, 5, 4, 2,
					-- layer=2 filter=42 channel=2
					-16, 6, -14, -11, -14, -19, -9, 4, 8,
					-- layer=2 filter=42 channel=3
					3, -15, -11, 1, 9, -5, -3, -12, -15,
					-- layer=2 filter=42 channel=4
					0, 0, 0, 6, 5, 12, 4, -1, 7,
					-- layer=2 filter=42 channel=5
					2, 1, 10, 10, 5, -10, 2, -9, -23,
					-- layer=2 filter=42 channel=6
					-15, 0, 11, -5, -4, 7, 5, -7, -10,
					-- layer=2 filter=42 channel=7
					0, 11, -11, 0, 0, 5, 12, -14, 1,
					-- layer=2 filter=42 channel=8
					5, -14, -16, 1, 13, -1, 2, -5, -1,
					-- layer=2 filter=42 channel=9
					-16, 2, 2, 0, 0, 10, -9, -12, -13,
					-- layer=2 filter=42 channel=10
					-2, -5, 4, -10, -16, -19, 5, -9, 3,
					-- layer=2 filter=42 channel=11
					-10, -1, -16, -14, -16, -3, 3, -15, 2,
					-- layer=2 filter=42 channel=12
					2, 9, 11, -10, 7, 12, -6, 5, 7,
					-- layer=2 filter=42 channel=13
					2, 8, -3, -10, 9, -1, -4, -2, -9,
					-- layer=2 filter=42 channel=14
					3, -7, -11, -13, 10, -5, 4, -15, -4,
					-- layer=2 filter=42 channel=15
					0, -12, -1, 5, 3, 12, -12, -13, -5,
					-- layer=2 filter=42 channel=16
					11, 1, 7, -2, 0, -16, 10, -10, 5,
					-- layer=2 filter=42 channel=17
					10, 0, 5, -11, 3, -7, 7, -8, -10,
					-- layer=2 filter=42 channel=18
					8, -10, -9, -12, -2, -14, -6, -8, 15,
					-- layer=2 filter=42 channel=19
					5, 5, 4, 5, -2, -15, 7, -14, 9,
					-- layer=2 filter=42 channel=20
					10, -12, -14, -6, -2, 5, -10, -3, -4,
					-- layer=2 filter=42 channel=21
					5, -10, -17, -13, 13, 5, -5, -8, 0,
					-- layer=2 filter=42 channel=22
					10, -2, 1, -2, -1, 9, -10, 4, -10,
					-- layer=2 filter=42 channel=23
					3, -10, 0, -16, 8, -7, -10, 8, -16,
					-- layer=2 filter=42 channel=24
					2, -4, -3, -12, 10, -9, -5, -12, 3,
					-- layer=2 filter=42 channel=25
					-6, -7, -16, 0, -15, 6, -10, 3, -11,
					-- layer=2 filter=42 channel=26
					5, -10, 6, -4, 11, -11, -4, 7, 0,
					-- layer=2 filter=42 channel=27
					1, 3, -7, 10, 1, 7, -2, -9, -7,
					-- layer=2 filter=42 channel=28
					8, 5, -9, -6, 1, -13, 4, -11, -14,
					-- layer=2 filter=42 channel=29
					-15, 1, -11, 0, -14, 7, 2, -2, -1,
					-- layer=2 filter=42 channel=30
					11, 10, 1, -7, -5, 1, 7, -5, 0,
					-- layer=2 filter=42 channel=31
					-1, -2, -15, 11, -20, -18, -12, 10, -15,
					-- layer=2 filter=42 channel=32
					-5, -13, 7, -8, -14, 3, -9, 9, 0,
					-- layer=2 filter=42 channel=33
					-15, 5, -11, 8, 3, -6, 0, -14, 9,
					-- layer=2 filter=42 channel=34
					-2, -21, -15, -12, -13, -16, -1, -12, -8,
					-- layer=2 filter=42 channel=35
					0, 8, 0, -2, 0, 3, -12, -6, -6,
					-- layer=2 filter=42 channel=36
					5, -10, -4, -15, -9, 1, 10, -1, -14,
					-- layer=2 filter=42 channel=37
					-18, -9, -2, -15, 7, -14, -19, 9, -6,
					-- layer=2 filter=42 channel=38
					-12, -18, -8, -14, -7, 3, -7, -11, 4,
					-- layer=2 filter=42 channel=39
					-9, -7, -9, -13, 7, -3, -15, 0, 3,
					-- layer=2 filter=42 channel=40
					4, -21, -14, -5, 8, -17, -5, -18, 1,
					-- layer=2 filter=42 channel=41
					-3, -5, -16, 3, 11, 2, -12, -13, 6,
					-- layer=2 filter=42 channel=42
					-6, 11, 1, -12, 4, -1, 9, 6, -6,
					-- layer=2 filter=42 channel=43
					-15, 4, -14, 0, -11, 7, -5, 5, -6,
					-- layer=2 filter=42 channel=44
					-18, -6, -3, -18, 0, -10, -12, -5, -5,
					-- layer=2 filter=42 channel=45
					12, 1, -11, 2, -8, 6, 7, -1, -7,
					-- layer=2 filter=42 channel=46
					-10, -12, -2, 2, -3, -7, -14, 11, -14,
					-- layer=2 filter=42 channel=47
					-7, -1, 8, 9, -6, 3, -15, -6, -6,
					-- layer=2 filter=42 channel=48
					-1, -10, 1, 0, -10, -6, -7, 2, 1,
					-- layer=2 filter=42 channel=49
					-22, -11, -4, -11, -2, -9, -2, 0, 4,
					-- layer=2 filter=42 channel=50
					9, -8, 4, -2, 10, 9, -11, -9, -3,
					-- layer=2 filter=42 channel=51
					0, -3, -16, -13, -1, -9, -13, 0, -2,
					-- layer=2 filter=42 channel=52
					6, -1, 4, -4, -21, -6, -2, -4, 8,
					-- layer=2 filter=42 channel=53
					-17, -19, 2, -14, 2, 10, 7, -16, -9,
					-- layer=2 filter=42 channel=54
					-9, 4, 0, -7, 1, -6, 3, -13, -4,
					-- layer=2 filter=42 channel=55
					-5, -12, -14, -3, -7, -12, 7, -7, 10,
					-- layer=2 filter=42 channel=56
					-14, 6, 7, 0, -24, -12, -3, -9, -5,
					-- layer=2 filter=42 channel=57
					-7, 6, 9, 12, 0, 1, -1, 11, 8,
					-- layer=2 filter=42 channel=58
					6, 5, 12, 8, -8, -12, 9, 0, 0,
					-- layer=2 filter=42 channel=59
					-22, 8, -17, -12, -15, -13, -11, 0, -11,
					-- layer=2 filter=42 channel=60
					-6, 0, -2, -4, -12, -1, 5, -12, 5,
					-- layer=2 filter=42 channel=61
					11, -11, -5, -10, 6, 0, 2, -15, -10,
					-- layer=2 filter=42 channel=62
					16, 13, 10, 0, 0, 7, 5, -2, -15,
					-- layer=2 filter=42 channel=63
					-5, 4, -14, -10, -5, 11, -5, 10, 12,
					-- layer=2 filter=43 channel=0
					20, 20, 11, -9, 29, 42, 6, 44, 6,
					-- layer=2 filter=43 channel=1
					-6, -20, -20, -1, 23, -40, 16, -19, 0,
					-- layer=2 filter=43 channel=2
					9, -7, -10, 10, -17, -16, 19, -31, -7,
					-- layer=2 filter=43 channel=3
					-25, -55, -44, -35, -33, -19, 11, -17, -23,
					-- layer=2 filter=43 channel=4
					11, 9, 18, 19, -20, -35, -9, 14, 4,
					-- layer=2 filter=43 channel=5
					-16, -42, -78, -53, 34, -15, -26, 20, 47,
					-- layer=2 filter=43 channel=6
					0, 27, 25, -6, -10, -28, 8, -36, -25,
					-- layer=2 filter=43 channel=7
					-26, 6, 27, -1, 7, -10, 27, 1, 0,
					-- layer=2 filter=43 channel=8
					41, 48, 33, 30, 69, 46, -4, -26, -22,
					-- layer=2 filter=43 channel=9
					-18, -29, 3, -19, -67, -32, 44, 12, 9,
					-- layer=2 filter=43 channel=10
					-6, 14, 20, 6, 37, 14, 12, 11, 13,
					-- layer=2 filter=43 channel=11
					-23, -19, -66, 23, 14, 6, -5, 58, 17,
					-- layer=2 filter=43 channel=12
					2, 0, 2, -14, -55, -55, -38, -25, -22,
					-- layer=2 filter=43 channel=13
					-30, -37, -17, 21, -49, 7, -103, 33, 35,
					-- layer=2 filter=43 channel=14
					-30, -31, -29, 1, 35, -58, 2, -12, -6,
					-- layer=2 filter=43 channel=15
					-19, 9, -14, -17, 0, 1, -10, 15, -11,
					-- layer=2 filter=43 channel=16
					-34, -35, -37, -66, -74, -64, 10, 57, 34,
					-- layer=2 filter=43 channel=17
					-25, -7, 5, -27, -36, -54, -15, -45, 0,
					-- layer=2 filter=43 channel=18
					-7, 23, -14, -57, 8, 10, -27, 3, -11,
					-- layer=2 filter=43 channel=19
					-13, 13, 10, -12, -24, -48, -10, -28, -41,
					-- layer=2 filter=43 channel=20
					-12, -5, -4, -14, -43, -54, -45, -6, -5,
					-- layer=2 filter=43 channel=21
					2, 15, 7, 7, -5, -23, 22, -19, -14,
					-- layer=2 filter=43 channel=22
					-4, -26, -10, -3, 28, 13, -6, -20, -15,
					-- layer=2 filter=43 channel=23
					-1, 21, -4, 12, 26, -4, 14, 13, 6,
					-- layer=2 filter=43 channel=24
					-32, -8, 3, -39, -57, -41, -23, -34, -4,
					-- layer=2 filter=43 channel=25
					-10, 30, -4, 40, -38, -1, -19, -62, -21,
					-- layer=2 filter=43 channel=26
					-11, -17, 12, 2, 1, 8, 16, 2, 2,
					-- layer=2 filter=43 channel=27
					6, -2, -4, 0, 6, 9, 1, -10, 0,
					-- layer=2 filter=43 channel=28
					0, -6, -8, 6, -2, 11, -14, 2, 12,
					-- layer=2 filter=43 channel=29
					-8, 21, 31, 9, 3, -15, -27, -35, -26,
					-- layer=2 filter=43 channel=30
					-39, -45, -31, -42, -6, -7, 8, -42, 41,
					-- layer=2 filter=43 channel=31
					5, 0, 0, 46, 28, 19, 40, -7, -7,
					-- layer=2 filter=43 channel=32
					-23, -26, -26, -18, -9, -29, -12, -12, 19,
					-- layer=2 filter=43 channel=33
					11, 36, 5, -11, 8, 0, -3, -5, -5,
					-- layer=2 filter=43 channel=34
					-10, -5, -1, -1, 31, 27, 5, 26, 13,
					-- layer=2 filter=43 channel=35
					-4, -17, 7, -21, 8, -3, 27, -38, -39,
					-- layer=2 filter=43 channel=36
					-2, -28, -21, -27, -43, -41, -30, -41, -43,
					-- layer=2 filter=43 channel=37
					-5, 14, -11, -28, 39, 22, 32, 44, -7,
					-- layer=2 filter=43 channel=38
					-22, -41, -30, 13, -2, -23, 5, -17, -3,
					-- layer=2 filter=43 channel=39
					-18, -3, -11, 7, 50, 50, 31, 40, 37,
					-- layer=2 filter=43 channel=40
					-8, -49, 0, 14, 20, -2, 7, -34, -10,
					-- layer=2 filter=43 channel=41
					25, 18, 20, 13, 19, -27, 10, -14, -22,
					-- layer=2 filter=43 channel=42
					8, -7, 11, 16, 7, 18, -24, -6, -25,
					-- layer=2 filter=43 channel=43
					-34, -35, -92, -106, -69, -38, -4, 65, 80,
					-- layer=2 filter=43 channel=44
					33, 16, -18, 34, 2, -2, 38, 25, 10,
					-- layer=2 filter=43 channel=45
					-5, -12, -6, -40, -37, -26, 9, -1, -23,
					-- layer=2 filter=43 channel=46
					-13, 1, 31, -29, -11, -6, -13, -7, 2,
					-- layer=2 filter=43 channel=47
					18, 16, 17, 0, -14, -33, -20, -31, -49,
					-- layer=2 filter=43 channel=48
					-9, 11, 24, 8, 0, -17, -33, -45, -29,
					-- layer=2 filter=43 channel=49
					7, 12, 0, -8, 22, 22, -6, 3, 58,
					-- layer=2 filter=43 channel=50
					-10, -36, -24, -19, -2, -11, 25, 35, -7,
					-- layer=2 filter=43 channel=51
					33, 24, -23, 13, 21, -15, 7, 13, 20,
					-- layer=2 filter=43 channel=52
					11, 2, -58, 32, 20, -28, 7, 14, -3,
					-- layer=2 filter=43 channel=53
					1, 31, -10, -25, 40, 17, 32, 0, -4,
					-- layer=2 filter=43 channel=54
					-37, -1, -82, -4, -22, -44, 5, 51, 49,
					-- layer=2 filter=43 channel=55
					22, 16, -86, 26, -26, -19, -17, 49, 39,
					-- layer=2 filter=43 channel=56
					24, 7, 10, 38, 19, 10, 35, -23, 7,
					-- layer=2 filter=43 channel=57
					-15, 36, -14, -13, 3, 3, 7, 8, 1,
					-- layer=2 filter=43 channel=58
					12, 18, 41, 34, -19, -21, -64, 6, -28,
					-- layer=2 filter=43 channel=59
					18, -1, -4, 2, 11, 40, -1, 22, 15,
					-- layer=2 filter=43 channel=60
					-38, -29, 33, 9, -58, 4, -50, -38, -22,
					-- layer=2 filter=43 channel=61
					41, -7, -15, -35, -18, -7, -19, -7, -4,
					-- layer=2 filter=43 channel=62
					-56, -15, -100, -11, -6, -38, -35, -64, -35,
					-- layer=2 filter=43 channel=63
					-46, -42, -13, -49, -2, -35, 33, 16, 25,
					-- layer=2 filter=44 channel=0
					-32, -13, -3, -7, 15, 27, -1, 4, 17,
					-- layer=2 filter=44 channel=1
					-25, 32, -14, 44, 46, 16, 5, 26, -6,
					-- layer=2 filter=44 channel=2
					-15, -5, -26, -30, -30, 0, 0, 35, 16,
					-- layer=2 filter=44 channel=3
					5, 13, 6, 51, 39, 29, -17, -27, -56,
					-- layer=2 filter=44 channel=4
					-52, -37, -41, -15, -12, -44, 35, 58, 44,
					-- layer=2 filter=44 channel=5
					44, 64, -47, 17, 13, 9, -28, -53, -35,
					-- layer=2 filter=44 channel=6
					24, 15, 3, 28, -2, 28, -1, -60, -59,
					-- layer=2 filter=44 channel=7
					-50, -2, 13, -3, 12, 21, -46, 8, -5,
					-- layer=2 filter=44 channel=8
					-62, -11, 17, -1, 55, 62, 12, -21, 25,
					-- layer=2 filter=44 channel=9
					47, 24, 7, 0, -4, 29, -6, 15, -31,
					-- layer=2 filter=44 channel=10
					36, 0, -1, -26, -23, 3, -43, -23, -11,
					-- layer=2 filter=44 channel=11
					12, -17, 2, -8, 1, 49, 17, 37, 43,
					-- layer=2 filter=44 channel=12
					-6, -9, 9, -20, -19, 12, 17, 12, 47,
					-- layer=2 filter=44 channel=13
					29, 49, -12, -16, -23, -1, -2, 8, 0,
					-- layer=2 filter=44 channel=14
					-1, 21, -10, -4, 11, -37, -28, -27, -5,
					-- layer=2 filter=44 channel=15
					-13, -27, 14, -29, 8, -28, -28, -21, -2,
					-- layer=2 filter=44 channel=16
					7, 23, -8, -2, -12, -14, -9, -7, 0,
					-- layer=2 filter=44 channel=17
					21, -10, 1, 17, -10, -44, 4, -5, -12,
					-- layer=2 filter=44 channel=18
					9, -70, 15, -13, -29, -17, -16, -9, 8,
					-- layer=2 filter=44 channel=19
					-38, -7, -4, -9, -20, -26, 12, 0, 17,
					-- layer=2 filter=44 channel=20
					-16, -2, 16, -8, 1, -8, -1, 7, 20,
					-- layer=2 filter=44 channel=21
					-11, 12, 15, 14, 13, 9, 0, -33, -77,
					-- layer=2 filter=44 channel=22
					-33, 32, 3, -4, 29, 4, -28, -54, -67,
					-- layer=2 filter=44 channel=23
					37, 19, -2, -6, -5, -15, -40, -39, -13,
					-- layer=2 filter=44 channel=24
					9, -18, 0, 15, -2, -4, -4, 10, 12,
					-- layer=2 filter=44 channel=25
					-34, -37, 6, 27, -44, -3, -21, -5, 10,
					-- layer=2 filter=44 channel=26
					-18, 9, -2, 1, -11, 12, 13, 8, -12,
					-- layer=2 filter=44 channel=27
					5, -2, 1, -1, 1, 6, 12, 4, -6,
					-- layer=2 filter=44 channel=28
					26, 8, 11, 6, 8, 4, -16, -5, -4,
					-- layer=2 filter=44 channel=29
					-9, 36, 39, 3, 19, 27, -9, -19, -1,
					-- layer=2 filter=44 channel=30
					13, -5, -7, -7, -17, 5, -25, -10, -32,
					-- layer=2 filter=44 channel=31
					-24, -9, 17, -20, 21, 17, -21, 0, -3,
					-- layer=2 filter=44 channel=32
					40, 38, -13, 13, -13, -32, -20, -77, -18,
					-- layer=2 filter=44 channel=33
					34, 12, 14, 31, 35, 34, -30, -41, -3,
					-- layer=2 filter=44 channel=34
					-30, -42, -2, 4, -1, 5, 16, -32, -23,
					-- layer=2 filter=44 channel=35
					7, -8, -56, -4, 1, 25, 8, 31, -5,
					-- layer=2 filter=44 channel=36
					-49, -35, -32, -16, -26, -1, 30, 32, 41,
					-- layer=2 filter=44 channel=37
					2, -23, -8, -9, 4, 7, -42, -27, -28,
					-- layer=2 filter=44 channel=38
					3, 22, -29, 36, 44, 12, -8, 1, -42,
					-- layer=2 filter=44 channel=39
					14, -23, -30, 11, 16, 9, 39, 45, 5,
					-- layer=2 filter=44 channel=40
					-2, 5, -13, 19, 29, -16, 1, 2, -46,
					-- layer=2 filter=44 channel=41
					12, 26, 14, 8, 10, -5, -20, -48, -32,
					-- layer=2 filter=44 channel=42
					-31, 2, -36, -28, -2, 5, -30, 17, 0,
					-- layer=2 filter=44 channel=43
					18, 21, 0, -20, -34, -4, 0, -22, 32,
					-- layer=2 filter=44 channel=44
					15, -27, -31, -41, -27, -48, 4, 43, 51,
					-- layer=2 filter=44 channel=45
					23, 25, 25, 12, 29, 4, 1, -60, -94,
					-- layer=2 filter=44 channel=46
					-2, -26, -40, 13, 2, 38, 12, 42, 60,
					-- layer=2 filter=44 channel=47
					-4, -18, -8, -23, -5, -32, -15, -3, -28,
					-- layer=2 filter=44 channel=48
					-25, -24, 13, 7, 10, 18, 16, -6, -14,
					-- layer=2 filter=44 channel=49
					111, 17, -49, -9, -6, -60, -23, -15, -35,
					-- layer=2 filter=44 channel=50
					-4, 15, 17, 17, 33, -29, -33, -32, -37,
					-- layer=2 filter=44 channel=51
					-15, 19, 38, -57, 2, 33, -27, 36, 38,
					-- layer=2 filter=44 channel=52
					40, 40, 3, 8, -24, 23, -25, -28, 23,
					-- layer=2 filter=44 channel=53
					10, 21, 19, 19, -14, -9, -4, -3, -33,
					-- layer=2 filter=44 channel=54
					27, 11, -31, -6, -12, -18, 16, 9, 65,
					-- layer=2 filter=44 channel=55
					37, 17, 28, 29, -11, 69, -7, 8, 37,
					-- layer=2 filter=44 channel=56
					-8, -13, -12, 2, -7, 19, -28, 1, -26,
					-- layer=2 filter=44 channel=57
					46, 9, -15, 32, 41, -5, -20, -48, 5,
					-- layer=2 filter=44 channel=58
					59, 13, -35, 52, 60, 43, 27, 54, 29,
					-- layer=2 filter=44 channel=59
					14, 24, 19, 22, 15, -13, -47, -61, -36,
					-- layer=2 filter=44 channel=60
					-27, -23, 4, -1, 10, 19, 22, 31, 23,
					-- layer=2 filter=44 channel=61
					-40, -24, 33, 0, 24, 10, -25, 12, -31,
					-- layer=2 filter=44 channel=62
					1, -32, -47, -2, -7, -53, 1, -54, 37,
					-- layer=2 filter=44 channel=63
					-2, -7, 9, 2, 16, -12, -38, -20, -43,
					-- layer=2 filter=45 channel=0
					-26, 10, 29, 18, 32, -1, 41, 11, -9,
					-- layer=2 filter=45 channel=1
					-1, -28, -17, 30, -8, -22, 2, -20, 4,
					-- layer=2 filter=45 channel=2
					4, 19, 10, -15, -3, 13, 21, -1, 11,
					-- layer=2 filter=45 channel=3
					6, 18, -18, 20, -29, -3, -42, -53, -44,
					-- layer=2 filter=45 channel=4
					20, 4, -6, 1, 3, 8, 34, 28, 17,
					-- layer=2 filter=45 channel=5
					-29, -69, -35, -89, -18, -48, -2, -40, -72,
					-- layer=2 filter=45 channel=6
					18, -20, 11, -27, 13, 22, -59, -15, -15,
					-- layer=2 filter=45 channel=7
					35, 22, 26, 27, -5, -35, -2, -52, -2,
					-- layer=2 filter=45 channel=8
					-24, 17, 8, 0, -40, 21, 0, -65, -25,
					-- layer=2 filter=45 channel=9
					8, -24, -18, -25, -42, -28, -38, -79, -47,
					-- layer=2 filter=45 channel=10
					8, -38, 16, 20, 8, 21, 2, -2, 19,
					-- layer=2 filter=45 channel=11
					-20, -32, 55, -42, -7, 6, -10, 17, -10,
					-- layer=2 filter=45 channel=12
					21, -5, -13, -21, -9, 1, 21, 11, 20,
					-- layer=2 filter=45 channel=13
					-8, -91, 25, -25, -19, 19, 9, 42, -37,
					-- layer=2 filter=45 channel=14
					-66, -35, -20, -69, -65, -40, -13, -37, 31,
					-- layer=2 filter=45 channel=15
					0, -4, 7, -12, 3, -3, 0, -20, -14,
					-- layer=2 filter=45 channel=16
					15, -22, -13, -12, -41, -19, 8, 7, 7,
					-- layer=2 filter=45 channel=17
					-13, 2, -30, -3, -6, -17, 13, 3, 25,
					-- layer=2 filter=45 channel=18
					14, -66, 29, 16, -6, -22, -16, -8, -57,
					-- layer=2 filter=45 channel=19
					7, 5, 10, 0, -5, -19, 0, -21, 10,
					-- layer=2 filter=45 channel=20
					5, -16, -25, 12, -56, -7, -22, -21, -6,
					-- layer=2 filter=45 channel=21
					28, 0, 10, -31, -44, -33, -47, -64, -53,
					-- layer=2 filter=45 channel=22
					-7, 9, 18, 0, 17, 1, -16, -1, 25,
					-- layer=2 filter=45 channel=23
					0, -1, -1, -40, 17, 51, 3, 55, 23,
					-- layer=2 filter=45 channel=24
					14, 7, 3, 15, -1, 15, -13, 4, 22,
					-- layer=2 filter=45 channel=25
					-37, -32, 19, -8, 37, -38, 13, 5, -43,
					-- layer=2 filter=45 channel=26
					-3, 1, 9, 16, -7, -6, 10, 7, -7,
					-- layer=2 filter=45 channel=27
					-1, 3, -7, 6, -2, -2, 1, -5, -1,
					-- layer=2 filter=45 channel=28
					0, 20, 3, 9, 19, 10, 21, -7, 0,
					-- layer=2 filter=45 channel=29
					23, -3, 4, 39, -16, 24, 5, -10, 19,
					-- layer=2 filter=45 channel=30
					13, 31, -1, 42, 17, -9, -17, -25, 19,
					-- layer=2 filter=45 channel=31
					13, -15, 29, -1, -24, -11, -3, -52, 0,
					-- layer=2 filter=45 channel=32
					9, -81, -55, -55, -99, -17, -50, -24, -27,
					-- layer=2 filter=45 channel=33
					18, -12, 20, -64, -14, 2, -41, 38, 10,
					-- layer=2 filter=45 channel=34
					-14, 2, 7, 8, -12, -17, 16, -39, -26,
					-- layer=2 filter=45 channel=35
					-14, -17, -22, -31, 0, -6, 11, -18, -21,
					-- layer=2 filter=45 channel=36
					-10, -12, -5, 2, 7, -20, 5, -5, 9,
					-- layer=2 filter=45 channel=37
					2, -12, -1, -3, -7, -3, 18, 10, 20,
					-- layer=2 filter=45 channel=38
					-2, 5, -39, 7, -21, -43, 0, -42, -63,
					-- layer=2 filter=45 channel=39
					6, 43, 0, 51, 60, 24, 61, -3, -18,
					-- layer=2 filter=45 channel=40
					32, 26, 21, 16, 10, -2, 5, -22, -7,
					-- layer=2 filter=45 channel=41
					4, -12, 12, -55, 0, 6, -55, -5, 0,
					-- layer=2 filter=45 channel=42
					12, 20, 5, 6, 5, 40, 2, 12, 34,
					-- layer=2 filter=45 channel=43
					-19, -39, -5, -23, -16, -28, 17, 25, 13,
					-- layer=2 filter=45 channel=44
					0, 9, 3, -23, 0, 19, 6, 31, 46,
					-- layer=2 filter=45 channel=45
					-38, 33, -11, -67, -30, -4, -81, -10, 53,
					-- layer=2 filter=45 channel=46
					48, 17, 25, 28, 31, 42, 21, 24, 22,
					-- layer=2 filter=45 channel=47
					-27, 28, 2, -55, -9, 13, -42, 13, 39,
					-- layer=2 filter=45 channel=48
					22, 0, 17, 52, 17, 2, 31, -2, -5,
					-- layer=2 filter=45 channel=49
					-53, 18, -3, 7, -25, -13, 30, 1, -28,
					-- layer=2 filter=45 channel=50
					6, -17, 3, -34, -30, -56, -33, -51, -25,
					-- layer=2 filter=45 channel=51
					40, 14, -7, -19, -16, 8, 7, -41, 3,
					-- layer=2 filter=45 channel=52
					32, -35, 17, -44, -18, -8, -14, 21, 5,
					-- layer=2 filter=45 channel=53
					-3, 35, 66, -7, 9, 18, -57, 0, 13,
					-- layer=2 filter=45 channel=54
					-21, -48, -36, -28, -21, -15, 34, 19, 40,
					-- layer=2 filter=45 channel=55
					-15, -55, 43, -29, -3, -26, 22, 23, -12,
					-- layer=2 filter=45 channel=56
					-3, 26, 0, 49, 24, 30, 14, 18, 27,
					-- layer=2 filter=45 channel=57
					-13, -35, 1, -30, -19, -1, 6, 11, 1,
					-- layer=2 filter=45 channel=58
					18, 83, 28, 59, 65, 65, 42, 23, -56,
					-- layer=2 filter=45 channel=59
					-31, 2, 1, -47, -41, 4, -104, -55, -26,
					-- layer=2 filter=45 channel=60
					-19, -7, -22, 32, 15, 61, -34, 8, -6,
					-- layer=2 filter=45 channel=61
					-13, 19, -9, 43, 19, 12, -5, 14, -35,
					-- layer=2 filter=45 channel=62
					14, 35, -22, -45, -18, -21, -57, -40, -53,
					-- layer=2 filter=45 channel=63
					-2, 18, 0, -54, -57, -15, -114, -39, -16,
					-- layer=2 filter=46 channel=0
					-2, -24, -59, -9, -37, -64, -60, -88, -43,
					-- layer=2 filter=46 channel=1
					12, -1, 20, 0, -44, 43, -1, 30, -53,
					-- layer=2 filter=46 channel=2
					5, 9, 25, 2, -20, 26, -17, -3, -4,
					-- layer=2 filter=46 channel=3
					-18, -28, -50, -9, -1, -30, -6, 5, 6,
					-- layer=2 filter=46 channel=4
					14, 3, 37, -20, 8, 1, -12, -2, -34,
					-- layer=2 filter=46 channel=5
					0, -14, -17, 52, -14, -17, 11, -22, -5,
					-- layer=2 filter=46 channel=6
					-6, -8, 1, 5, 6, 10, -8, -1, 12,
					-- layer=2 filter=46 channel=7
					31, -37, -9, -26, 3, 11, 30, 11, 23,
					-- layer=2 filter=46 channel=8
					-30, -36, -42, -11, -112, -71, 17, -26, -15,
					-- layer=2 filter=46 channel=9
					-5, 35, 67, -24, -15, 21, 35, 9, -40,
					-- layer=2 filter=46 channel=10
					3, -3, 20, 16, 15, 11, 24, 22, 9,
					-- layer=2 filter=46 channel=11
					5, 14, 17, 8, -18, -3, 3, -10, 14,
					-- layer=2 filter=46 channel=12
					12, 0, 24, -8, -13, -4, 22, 5, 16,
					-- layer=2 filter=46 channel=13
					1, -54, -64, -17, 0, -22, 17, -15, 36,
					-- layer=2 filter=46 channel=14
					13, 27, -27, 3, 0, 17, 10, 3, 1,
					-- layer=2 filter=46 channel=15
					5, 25, 22, 15, 36, 25, 2, 4, 32,
					-- layer=2 filter=46 channel=16
					35, 29, 13, -22, 2, 9, -4, 10, 28,
					-- layer=2 filter=46 channel=17
					8, 15, -13, 6, 2, -26, 2, 13, 8,
					-- layer=2 filter=46 channel=18
					14, -19, -3, 34, -2, -50, 1, -33, 11,
					-- layer=2 filter=46 channel=19
					-25, -28, 3, -60, -17, -5, -28, -55, -24,
					-- layer=2 filter=46 channel=20
					6, -21, -5, 0, -14, -9, -17, -7, -2,
					-- layer=2 filter=46 channel=21
					21, -24, -10, 10, 15, -19, 5, 25, -2,
					-- layer=2 filter=46 channel=22
					4, -3, -27, 17, -23, -23, 8, 10, -9,
					-- layer=2 filter=46 channel=23
					35, -17, -18, 27, 13, -9, 15, 17, 32,
					-- layer=2 filter=46 channel=24
					-9, 18, -1, -21, 4, 5, -23, -5, 4,
					-- layer=2 filter=46 channel=25
					-16, 32, 54, -25, 70, 56, 17, 19, -4,
					-- layer=2 filter=46 channel=26
					-17, -15, 17, -4, 1, 9, -1, 16, 0,
					-- layer=2 filter=46 channel=27
					-9, -2, 6, 14, -6, 0, 0, -7, -16,
					-- layer=2 filter=46 channel=28
					-28, -5, 15, -3, 2, -10, -1, 0, -14,
					-- layer=2 filter=46 channel=29
					10, -7, -10, -6, 24, -21, 12, -9, -13,
					-- layer=2 filter=46 channel=30
					-1, -26, -22, -51, -19, -35, -32, -40, -9,
					-- layer=2 filter=46 channel=31
					-34, 2, 42, 21, -7, -18, 37, 50, 17,
					-- layer=2 filter=46 channel=32
					15, 7, -45, 6, 11, -43, 17, 23, 12,
					-- layer=2 filter=46 channel=33
					36, 5, -27, 15, 11, -27, -11, 21, 13,
					-- layer=2 filter=46 channel=34
					-3, -8, -35, 5, -16, -27, 23, 10, 10,
					-- layer=2 filter=46 channel=35
					15, 15, 23, 70, 40, -49, 61, 64, -21,
					-- layer=2 filter=46 channel=36
					6, 0, 8, -8, -10, 27, 1, -20, 7,
					-- layer=2 filter=46 channel=37
					35, -25, -45, 28, 25, 19, 31, -15, -5,
					-- layer=2 filter=46 channel=38
					2, 8, 38, -35, -51, 34, 0, 22, 0,
					-- layer=2 filter=46 channel=39
					-10, 4, -43, -29, -5, -1, -61, -57, 30,
					-- layer=2 filter=46 channel=40
					5, -30, 41, -32, -27, 9, -35, -4, -28,
					-- layer=2 filter=46 channel=41
					18, -17, -31, 6, 15, 4, 2, 0, 15,
					-- layer=2 filter=46 channel=42
					26, 19, 11, 7, 4, -9, 22, 33, -6,
					-- layer=2 filter=46 channel=43
					7, 6, 19, -16, 11, -7, -37, 6, 0,
					-- layer=2 filter=46 channel=44
					7, 33, 42, 9, 41, 71, 5, 20, 59,
					-- layer=2 filter=46 channel=45
					31, -15, -43, -7, 18, -46, 1, 12, -9,
					-- layer=2 filter=46 channel=46
					10, -24, 40, 7, -81, 17, 22, 29, -41,
					-- layer=2 filter=46 channel=47
					-2, -5, -23, 21, 34, 7, 13, 48, 58,
					-- layer=2 filter=46 channel=48
					9, -3, 16, -15, -12, -11, 22, 31, -2,
					-- layer=2 filter=46 channel=49
					38, -64, -20, -49, -76, -42, -77, -138, -9,
					-- layer=2 filter=46 channel=50
					6, -6, -15, -18, -21, -27, -43, 19, -4,
					-- layer=2 filter=46 channel=51
					4, 15, -26, -8, -20, 27, 6, 5, -15,
					-- layer=2 filter=46 channel=52
					-15, 35, 27, -4, -26, 33, 16, 17, 28,
					-- layer=2 filter=46 channel=53
					7, -27, -21, 6, 2, 2, 4, -5, 9,
					-- layer=2 filter=46 channel=54
					-41, -14, 5, -7, -15, 31, -59, -1, 6,
					-- layer=2 filter=46 channel=55
					15, 6, 4, -42, -46, -30, -17, -42, 8,
					-- layer=2 filter=46 channel=56
					-19, 13, 35, -12, -22, 27, 26, 7, -8,
					-- layer=2 filter=46 channel=57
					23, 4, -10, 17, 4, -9, -21, -11, -22,
					-- layer=2 filter=46 channel=58
					-7, -77, -51, -88, -103, -91, -16, -32, 37,
					-- layer=2 filter=46 channel=59
					18, 6, -35, 22, 24, -1, -15, 7, -13,
					-- layer=2 filter=46 channel=60
					37, 33, 27, 10, -15, -33, 37, 14, -13,
					-- layer=2 filter=46 channel=61
					-21, -21, -43, -2, -64, -66, -37, -43, -10,
					-- layer=2 filter=46 channel=62
					-11, -20, 5, 2, -16, -13, -22, -17, -30,
					-- layer=2 filter=46 channel=63
					-8, -21, -30, 15, -11, -77, -6, 0, -13,
					-- layer=2 filter=47 channel=0
					21, -32, -31, -13, -26, -13, 1, -7, -27,
					-- layer=2 filter=47 channel=1
					21, -27, 31, 6, -3, -12, -19, -10, -30,
					-- layer=2 filter=47 channel=2
					-19, 8, -8, -18, 12, 16, -8, 1, 24,
					-- layer=2 filter=47 channel=3
					37, -4, 7, 4, 1, -5, -4, -8, 22,
					-- layer=2 filter=47 channel=4
					-41, 0, 51, -34, -17, 39, -66, -50, -24,
					-- layer=2 filter=47 channel=5
					-43, -83, -7, 17, -4, -5, -30, -51, -19,
					-- layer=2 filter=47 channel=6
					-19, -26, -39, -19, -28, -37, -4, -39, -61,
					-- layer=2 filter=47 channel=7
					-9, 1, -9, -5, 12, 24, 26, -20, 9,
					-- layer=2 filter=47 channel=8
					29, 30, -3, -38, -22, 6, -32, -21, 14,
					-- layer=2 filter=47 channel=9
					-10, 6, -29, 14, 53, 6, 2, -6, 6,
					-- layer=2 filter=47 channel=10
					-15, 0, 9, -5, 15, 10, 3, 18, 48,
					-- layer=2 filter=47 channel=11
					5, -20, -31, -47, 21, 9, 37, 14, 1,
					-- layer=2 filter=47 channel=12
					-37, -2, 14, -37, -24, 55, -34, -13, 25,
					-- layer=2 filter=47 channel=13
					12, -35, 10, 64, 20, 24, 76, 80, -37,
					-- layer=2 filter=47 channel=14
					26, 17, 11, -8, 8, -13, -29, 11, 53,
					-- layer=2 filter=47 channel=15
					6, 21, 18, -2, 29, 9, -7, 1, -2,
					-- layer=2 filter=47 channel=16
					2, 31, -27, 12, -7, -5, -10, -20, 30,
					-- layer=2 filter=47 channel=17
					32, 1, -7, 12, -3, 13, -3, 20, 27,
					-- layer=2 filter=47 channel=18
					-7, -8, -55, -23, 12, -15, -34, 3, 10,
					-- layer=2 filter=47 channel=19
					-47, -11, 6, -46, 6, 13, -43, -24, 16,
					-- layer=2 filter=47 channel=20
					-11, 2, 10, -52, -10, 22, -43, -32, 21,
					-- layer=2 filter=47 channel=21
					37, 22, 15, 0, -37, -13, -18, -36, 1,
					-- layer=2 filter=47 channel=22
					18, -16, -15, -41, 2, -2, -59, 4, 16,
					-- layer=2 filter=47 channel=23
					13, -19, 20, -9, 1, 2, 39, 22, -22,
					-- layer=2 filter=47 channel=24
					11, -8, 18, 24, 13, 3, 8, 0, 16,
					-- layer=2 filter=47 channel=25
					12, -11, 41, 14, 36, -11, -30, -50, -63,
					-- layer=2 filter=47 channel=26
					6, 8, -8, -8, 3, -15, 10, 11, 9,
					-- layer=2 filter=47 channel=27
					1, -12, 0, 7, -11, -2, -9, -13, -3,
					-- layer=2 filter=47 channel=28
					-3, -11, -18, 13, 4, -4, -16, -2, 1,
					-- layer=2 filter=47 channel=29
					3, -6, 3, -27, 9, 28, -41, 0, 38,
					-- layer=2 filter=47 channel=30
					8, 43, 2, 33, 15, -13, -19, 0, 25,
					-- layer=2 filter=47 channel=31
					32, 35, 12, -18, 41, 4, -4, 6, -15,
					-- layer=2 filter=47 channel=32
					24, -6, 4, 16, -7, 38, 7, 21, 15,
					-- layer=2 filter=47 channel=33
					5, 5, 18, 8, -45, -17, 4, 1, -45,
					-- layer=2 filter=47 channel=34
					8, -1, -13, 9, 11, 29, -30, -4, 13,
					-- layer=2 filter=47 channel=35
					34, -10, 38, -20, 33, 69, 9, -3, -5,
					-- layer=2 filter=47 channel=36
					-7, 16, 42, -21, 0, 36, -49, -15, 1,
					-- layer=2 filter=47 channel=37
					13, 13, 12, 26, 26, 31, -1, 24, 8,
					-- layer=2 filter=47 channel=38
					15, -2, 6, 14, 14, -16, -34, 21, 0,
					-- layer=2 filter=47 channel=39
					-1, -22, 8, 3, 8, -10, -2, 8, -35,
					-- layer=2 filter=47 channel=40
					-17, 18, 19, -44, 0, -5, -76, -4, 1,
					-- layer=2 filter=47 channel=41
					28, -6, 0, -1, -12, -25, 5, -20, -44,
					-- layer=2 filter=47 channel=42
					-29, 6, 19, 26, 24, 17, 2, 20, 13,
					-- layer=2 filter=47 channel=43
					16, -10, -27, -10, 0, 13, 23, -1, 43,
					-- layer=2 filter=47 channel=44
					-34, -13, -3, -23, -7, -2, -53, -21, 5,
					-- layer=2 filter=47 channel=45
					42, 0, 21, 11, -11, -20, -19, -30, -5,
					-- layer=2 filter=47 channel=46
					-12, 4, 17, -29, 30, -9, -8, 19, -36,
					-- layer=2 filter=47 channel=47
					-7, 2, -2, -9, -8, 3, -1, -27, 17,
					-- layer=2 filter=47 channel=48
					-17, -9, 18, -17, 16, 40, -31, -1, 29,
					-- layer=2 filter=47 channel=49
					-41, -10, -42, 12, -31, 16, 26, 55, 21,
					-- layer=2 filter=47 channel=50
					10, 35, 45, 5, -36, -9, 4, -8, -25,
					-- layer=2 filter=47 channel=51
					6, -1, -8, -14, 42, 2, 28, -16, -36,
					-- layer=2 filter=47 channel=52
					16, -5, -24, -57, 58, 13, 17, 32, 31,
					-- layer=2 filter=47 channel=53
					8, 4, -12, 36, -10, -33, 28, -2, 8,
					-- layer=2 filter=47 channel=54
					-2, 8, -14, -45, -21, 30, -19, -10, 38,
					-- layer=2 filter=47 channel=55
					29, -41, -9, -5, 46, 14, 46, 17, 28,
					-- layer=2 filter=47 channel=56
					-10, 1, -5, -42, 1, -25, -24, -3, 2,
					-- layer=2 filter=47 channel=57
					-16, -3, 24, -34, 12, -2, 35, 23, -29,
					-- layer=2 filter=47 channel=58
					-54, -69, -49, 9, -80, -38, -18, 45, -89,
					-- layer=2 filter=47 channel=59
					4, -7, -30, -6, -20, -18, -22, -19, 3,
					-- layer=2 filter=47 channel=60
					13, 12, 47, 29, 29, -41, 50, 41, -53,
					-- layer=2 filter=47 channel=61
					15, -37, -29, -17, 21, -42, 10, 7, -24,
					-- layer=2 filter=47 channel=62
					-49, -66, -6, -55, -36, -7, -22, 14, 15,
					-- layer=2 filter=47 channel=63
					40, 26, 14, 23, -20, -36, -1, -26, -25,
					-- layer=2 filter=48 channel=0
					25, -17, -27, 0, -38, 1, 20, -4, 14,
					-- layer=2 filter=48 channel=1
					-7, -31, -33, -7, -45, -54, -55, -33, -7,
					-- layer=2 filter=48 channel=2
					20, 5, 1, 50, 8, -19, 31, 14, -3,
					-- layer=2 filter=48 channel=3
					2, 34, 11, -23, 21, -1, -25, -4, -21,
					-- layer=2 filter=48 channel=4
					-5, -25, -2, 16, 19, -5, 40, 12, 3,
					-- layer=2 filter=48 channel=5
					55, 68, 69, 11, 13, 0, 30, -8, 58,
					-- layer=2 filter=48 channel=6
					-33, 2, 22, -73, -38, 17, -86, -35, 16,
					-- layer=2 filter=48 channel=7
					26, 5, 41, 13, 6, 22, 10, -26, -25,
					-- layer=2 filter=48 channel=8
					-7, 4, 31, -21, -87, -49, -50, -86, -47,
					-- layer=2 filter=48 channel=9
					-26, -20, -40, -15, -42, -42, -18, 22, 27,
					-- layer=2 filter=48 channel=10
					0, -7, -19, 44, 6, 11, 49, 15, -16,
					-- layer=2 filter=48 channel=11
					15, -26, -32, 23, 6, 2, 27, 4, 1,
					-- layer=2 filter=48 channel=12
					16, 14, -31, 43, 3, -45, 45, 8, -29,
					-- layer=2 filter=48 channel=13
					-26, 31, 46, -10, -11, 24, 5, -9, 35,
					-- layer=2 filter=48 channel=14
					-5, 18, 2, -1, -6, 5, 4, -18, 0,
					-- layer=2 filter=48 channel=15
					-10, -3, -1, -21, 0, -3, -2, 30, 9,
					-- layer=2 filter=48 channel=16
					-4, 15, 31, 15, 24, 6, -36, -19, -4,
					-- layer=2 filter=48 channel=17
					-9, 26, 20, -4, 11, -5, -29, 9, -24,
					-- layer=2 filter=48 channel=18
					-14, 34, 22, 5, -20, 44, 1, 32, 11,
					-- layer=2 filter=48 channel=19
					9, 27, 0, 39, -2, -17, 41, -14, -24,
					-- layer=2 filter=48 channel=20
					11, 13, -24, 25, -8, -45, 20, -21, -22,
					-- layer=2 filter=48 channel=21
					40, 9, -22, -3, 4, 32, -39, -23, -1,
					-- layer=2 filter=48 channel=22
					10, -4, 38, 3, -2, 6, 5, -10, 22,
					-- layer=2 filter=48 channel=23
					-32, 16, 5, -25, -10, 41, -87, 0, 47,
					-- layer=2 filter=48 channel=24
					-4, 30, 6, 19, 2, -4, 5, 6, -17,
					-- layer=2 filter=48 channel=25
					-3, -26, -12, -37, 13, 60, -76, -20, -16,
					-- layer=2 filter=48 channel=26
					8, -13, 15, 9, -5, 0, 10, -11, -7,
					-- layer=2 filter=48 channel=27
					-9, 11, 6, 8, 14, 9, 3, -6, -6,
					-- layer=2 filter=48 channel=28
					-23, -11, -6, 7, 1, -21, -11, -15, 20,
					-- layer=2 filter=48 channel=29
					47, -8, -37, 21, -11, 4, 35, -6, -45,
					-- layer=2 filter=48 channel=30
					-27, -13, 10, 7, 16, 4, 3, -2, -16,
					-- layer=2 filter=48 channel=31
					14, -19, -24, 16, -29, 1, 0, 19, 10,
					-- layer=2 filter=48 channel=32
					-8, 13, 32, 0, 16, -22, -58, -39, 29,
					-- layer=2 filter=48 channel=33
					-11, -3, 8, -57, -5, 32, -83, -24, 29,
					-- layer=2 filter=48 channel=34
					-1, -24, -5, -21, -44, -16, 37, 3, -5,
					-- layer=2 filter=48 channel=35
					-32, -40, -41, -74, -55, -51, -28, -25, -39,
					-- layer=2 filter=48 channel=36
					-4, -8, -31, 28, 0, -36, 57, 4, -19,
					-- layer=2 filter=48 channel=37
					1, -7, -2, -25, -12, -13, 53, -3, 4,
					-- layer=2 filter=48 channel=38
					9, 25, 12, -8, 7, 8, -25, 12, 3,
					-- layer=2 filter=48 channel=39
					11, 3, 3, -16, 19, 42, 18, 43, 64,
					-- layer=2 filter=48 channel=40
					-14, 28, 2, 6, 4, 26, 7, -2, 39,
					-- layer=2 filter=48 channel=41
					5, 26, 20, -39, 16, 43, -71, 0, 79,
					-- layer=2 filter=48 channel=42
					22, -18, -13, 18, -15, -46, 24, 18, -17,
					-- layer=2 filter=48 channel=43
					18, 33, 26, 23, -7, -22, -20, -32, -37,
					-- layer=2 filter=48 channel=44
					6, 15, -25, 26, 13, 8, 3, 16, 16,
					-- layer=2 filter=48 channel=45
					2, 16, 27, -53, 13, 15, -36, -41, 5,
					-- layer=2 filter=48 channel=46
					-51, -66, 0, -38, -45, -62, -63, -9, -21,
					-- layer=2 filter=48 channel=47
					-26, -5, 9, -47, -15, 10, -33, -19, 5,
					-- layer=2 filter=48 channel=48
					18, 0, 5, 42, -4, -43, 45, -4, -4,
					-- layer=2 filter=48 channel=49
					33, 36, 6, -7, 43, 67, 11, 59, 59,
					-- layer=2 filter=48 channel=50
					-22, 8, 10, -18, 5, 4, -60, -21, 38,
					-- layer=2 filter=48 channel=51
					-8, -64, 20, -9, -63, -56, -43, -37, -36,
					-- layer=2 filter=48 channel=52
					31, -26, -33, 52, -8, 3, 44, 33, 1,
					-- layer=2 filter=48 channel=53
					-33, -15, 28, -36, 3, 54, 0, 2, 56,
					-- layer=2 filter=48 channel=54
					13, 33, -10, 19, 13, -18, -28, -31, -57,
					-- layer=2 filter=48 channel=55
					8, -3, -70, 1, 1, -17, 11, -5, -5,
					-- layer=2 filter=48 channel=56
					0, -23, 13, 21, 16, 23, 25, 25, 43,
					-- layer=2 filter=48 channel=57
					-18, 0, -7, -26, -34, -6, -43, -10, -5,
					-- layer=2 filter=48 channel=58
					36, -47, 21, -2, 6, 45, -6, -13, -4,
					-- layer=2 filter=48 channel=59
					-13, -22, -32, -56, 0, -3, -28, 12, 16,
					-- layer=2 filter=48 channel=60
					-81, -27, -30, -54, -79, -2, -49, -33, 19,
					-- layer=2 filter=48 channel=61
					-2, 6, -6, -11, -23, 49, 5, 22, 64,
					-- layer=2 filter=48 channel=62
					19, 19, -5, -3, 26, 35, -87, -45, -42,
					-- layer=2 filter=48 channel=63
					8, 24, 57, -23, 4, 15, -41, -16, 16,
					-- layer=2 filter=49 channel=0
					-4, -10, -23, -52, -64, -65, -66, -39, -21,
					-- layer=2 filter=49 channel=1
					20, 53, 49, -2, -9, 39, 6, -32, 17,
					-- layer=2 filter=49 channel=2
					-21, 12, -2, 20, 29, 9, 24, 4, -1,
					-- layer=2 filter=49 channel=3
					-2, 35, -7, -11, -3, 28, -11, -22, 10,
					-- layer=2 filter=49 channel=4
					-20, -13, -31, 21, -10, 1, 26, 18, 3,
					-- layer=2 filter=49 channel=5
					-16, 27, -20, -52, -46, -15, -76, -25, -22,
					-- layer=2 filter=49 channel=6
					-4, 0, 27, 2, 4, 17, -37, -21, -24,
					-- layer=2 filter=49 channel=7
					1, -25, 21, 3, 1, -57, 70, 0, 49,
					-- layer=2 filter=49 channel=8
					-30, -48, -25, -6, -29, -71, -41, -48, -63,
					-- layer=2 filter=49 channel=9
					-1, 41, 14, -13, 12, 17, -66, -19, -43,
					-- layer=2 filter=49 channel=10
					11, 16, 11, 23, 10, -21, 22, 28, -6,
					-- layer=2 filter=49 channel=11
					43, -21, 6, 10, -14, -42, 40, -13, -29,
					-- layer=2 filter=49 channel=12
					11, 19, -4, 23, 5, -25, 23, 6, 11,
					-- layer=2 filter=49 channel=13
					-21, -7, -1, -53, -25, 33, -54, -32, 2,
					-- layer=2 filter=49 channel=14
					-19, -5, 16, 5, -5, -35, 19, -15, -28,
					-- layer=2 filter=49 channel=15
					1, -17, 1, -31, -42, 4, -2, 0, 19,
					-- layer=2 filter=49 channel=16
					-13, 13, 34, -8, 11, 29, -18, -34, -2,
					-- layer=2 filter=49 channel=17
					6, -9, 20, -14, 7, 35, 27, 38, 42,
					-- layer=2 filter=49 channel=18
					37, -13, -30, 21, -25, 46, -72, -23, -26,
					-- layer=2 filter=49 channel=19
					14, -18, -20, 33, -5, -41, 6, 0, -25,
					-- layer=2 filter=49 channel=20
					9, 6, 13, 31, 0, -24, 7, 7, 1,
					-- layer=2 filter=49 channel=21
					40, 4, 20, -34, -19, 17, -1, 14, 17,
					-- layer=2 filter=49 channel=22
					-2, 12, 3, -4, -8, 25, -15, 0, 22,
					-- layer=2 filter=49 channel=23
					-28, -11, 28, 33, 5, 50, 1, 6, 1,
					-- layer=2 filter=49 channel=24
					1, 37, 18, 18, 20, -1, 17, 16, -9,
					-- layer=2 filter=49 channel=25
					6, 59, 2, -33, 35, -30, -9, 30, 57,
					-- layer=2 filter=49 channel=26
					13, -16, -9, -10, 2, 4, 0, -15, -11,
					-- layer=2 filter=49 channel=27
					-13, -9, 13, -7, 1, 9, -2, 14, -6,
					-- layer=2 filter=49 channel=28
					0, 0, -14, 2, 8, -16, -15, -2, 0,
					-- layer=2 filter=49 channel=29
					26, 32, -11, -18, -34, -51, 35, -26, -2,
					-- layer=2 filter=49 channel=30
					-9, 25, -29, -19, 22, 31, -21, -3, 1,
					-- layer=2 filter=49 channel=31
					12, -5, 21, -4, 12, 0, 34, -17, -9,
					-- layer=2 filter=49 channel=32
					4, -3, 34, -20, 8, 46, -35, -3, 3,
					-- layer=2 filter=49 channel=33
					0, -30, 14, -8, 1, 4, -32, -13, -10,
					-- layer=2 filter=49 channel=34
					7, 0, -38, -53, -83, -103, 1, -19, -15,
					-- layer=2 filter=49 channel=35
					-3, 75, 48, 1, 11, 76, -15, 17, 25,
					-- layer=2 filter=49 channel=36
					-28, -5, -23, 2, -11, -38, 3, 16, 1,
					-- layer=2 filter=49 channel=37
					-18, -7, -22, -81, -105, -78, 11, -16, 0,
					-- layer=2 filter=49 channel=38
					3, 38, 26, -10, -5, 0, -4, -69, -20,
					-- layer=2 filter=49 channel=39
					14, -40, -34, -73, -55, -30, -15, -15, -14,
					-- layer=2 filter=49 channel=40
					-19, 6, 1, -12, -6, -6, -36, -21, -22,
					-- layer=2 filter=49 channel=41
					-11, -5, 26, 8, 11, 11, -22, 4, 28,
					-- layer=2 filter=49 channel=42
					-36, 33, 21, -8, 39, 42, 28, 19, 29,
					-- layer=2 filter=49 channel=43
					-20, -43, 22, -3, -43, 14, -1, -14, -12,
					-- layer=2 filter=49 channel=44
					-3, -6, -11, 30, 6, 5, -7, 12, -26,
					-- layer=2 filter=49 channel=45
					-16, 0, 5, -5, -30, -32, -15, -40, -18,
					-- layer=2 filter=49 channel=46
					28, 76, 52, 17, 108, 57, 40, -13, 4,
					-- layer=2 filter=49 channel=47
					-61, -38, 5, -17, 6, 0, -13, 22, 24,
					-- layer=2 filter=49 channel=48
					-3, 14, 2, -8, 17, -30, 12, -3, 17,
					-- layer=2 filter=49 channel=49
					-46, -46, -4, -19, -11, -13, -10, -58, 3,
					-- layer=2 filter=49 channel=50
					-8, 16, 41, 1, -25, -1, 0, -18, -14,
					-- layer=2 filter=49 channel=51
					-28, 47, -40, 28, -8, 1, -35, 22, 38,
					-- layer=2 filter=49 channel=52
					19, -17, -6, 33, -16, -1, 24, -16, 2,
					-- layer=2 filter=49 channel=53
					-19, -5, 16, 27, -29, 26, -20, -1, 4,
					-- layer=2 filter=49 channel=54
					-16, -73, -9, -13, -39, 8, 15, 45, 28,
					-- layer=2 filter=49 channel=55
					-12, -56, -26, 16, -36, -57, 7, -49, -36,
					-- layer=2 filter=49 channel=56
					15, 15, 18, 16, 6, 25, 33, 6, 0,
					-- layer=2 filter=49 channel=57
					7, -22, 13, -30, -43, 9, -25, 1, 2,
					-- layer=2 filter=49 channel=58
					53, 71, -6, 16, 39, 34, -42, -10, 5,
					-- layer=2 filter=49 channel=59
					-12, -1, 22, -18, -2, 0, -20, -3, 7,
					-- layer=2 filter=49 channel=60
					13, 74, 11, -37, 31, 4, -18, -6, 14,
					-- layer=2 filter=49 channel=61
					-17, -13, -38, 16, -37, 37, -61, 34, 26,
					-- layer=2 filter=49 channel=62
					19, 12, -50, 8, 10, -25, 47, 79, -23,
					-- layer=2 filter=49 channel=63
					-5, 0, 16, 9, -28, 24, -5, 3, 13,
					-- layer=2 filter=50 channel=0
					-45, -6, 32, 39, 21, -1, -15, -39, -20,
					-- layer=2 filter=50 channel=1
					28, -34, 24, 10, -2, -63, -4, -35, -22,
					-- layer=2 filter=50 channel=2
					-36, -46, -53, -26, -30, -41, -2, -18, -25,
					-- layer=2 filter=50 channel=3
					-16, 31, 28, -13, -3, -32, 0, 7, -21,
					-- layer=2 filter=50 channel=4
					-9, -29, -48, -26, -34, -38, -12, 12, -33,
					-- layer=2 filter=50 channel=5
					99, 45, 51, 37, -5, 27, 7, -23, -52,
					-- layer=2 filter=50 channel=6
					-3, 0, 40, 2, -6, 25, -18, -7, 21,
					-- layer=2 filter=50 channel=7
					-20, 22, -15, -58, -44, 10, -33, -47, -28,
					-- layer=2 filter=50 channel=8
					-29, -44, 26, 63, 61, 10, 40, 10, -72,
					-- layer=2 filter=50 channel=9
					-51, -58, -39, 14, 37, 13, 17, -20, -18,
					-- layer=2 filter=50 channel=10
					-54, -15, -24, 0, 7, 17, 7, -10, -25,
					-- layer=2 filter=50 channel=11
					-5, 12, -19, -25, 18, -22, 24, -20, -37,
					-- layer=2 filter=50 channel=12
					2, -6, -43, 5, -22, -39, -23, -42, -20,
					-- layer=2 filter=50 channel=13
					44, 35, 49, 45, 41, 38, 9, 43, 0,
					-- layer=2 filter=50 channel=14
					-8, 16, 31, -11, 22, -6, -1, -29, -7,
					-- layer=2 filter=50 channel=15
					-5, -1, -2, 16, 10, 21, 1, 14, 35,
					-- layer=2 filter=50 channel=16
					-18, 13, -8, 31, -2, 10, -10, -38, -22,
					-- layer=2 filter=50 channel=17
					7, 5, 19, -17, -17, -20, 4, -7, 14,
					-- layer=2 filter=50 channel=18
					41, 0, 62, 12, 19, 12, 28, 59, -30,
					-- layer=2 filter=50 channel=19
					8, -8, -24, 39, 42, -31, 36, 31, -26,
					-- layer=2 filter=50 channel=20
					13, 25, -1, -11, -24, -2, 3, -12, -30,
					-- layer=2 filter=50 channel=21
					26, 0, 27, -4, -23, 4, -21, 8, -12,
					-- layer=2 filter=50 channel=22
					-38, 14, 1, -4, -3, 2, -24, -19, 0,
					-- layer=2 filter=50 channel=23
					-5, 6, 32, -2, -13, 6, -10, 19, 39,
					-- layer=2 filter=50 channel=24
					-3, -1, -16, -11, -10, -16, 2, -41, -3,
					-- layer=2 filter=50 channel=25
					63, -76, -59, -30, -2, -1, -17, 21, 74,
					-- layer=2 filter=50 channel=26
					-9, 6, -7, -12, -3, 16, 10, 0, 6,
					-- layer=2 filter=50 channel=27
					-6, -2, -5, -1, 9, -3, 5, -10, -12,
					-- layer=2 filter=50 channel=28
					-11, 5, -5, -6, 12, 2, 1, -7, -25,
					-- layer=2 filter=50 channel=29
					16, 11, -7, -2, -23, -27, -42, -39, -84,
					-- layer=2 filter=50 channel=30
					-33, 6, 13, -9, -32, -23, 5, -25, -1,
					-- layer=2 filter=50 channel=31
					-24, -35, -29, 13, 7, 14, 36, 26, -29,
					-- layer=2 filter=50 channel=32
					-11, 14, 10, 18, 5, 17, -35, -21, -32,
					-- layer=2 filter=50 channel=33
					-7, -2, 45, 0, 4, 23, -10, 4, 19,
					-- layer=2 filter=50 channel=34
					0, 15, 15, 27, 30, 14, 0, 13, -4,
					-- layer=2 filter=50 channel=35
					39, -14, 4, 30, -18, -20, 29, 64, 3,
					-- layer=2 filter=50 channel=36
					26, -22, -27, 22, -16, -40, -10, -32, -15,
					-- layer=2 filter=50 channel=37
					-1, 20, 7, -9, 10, 5, 16, 23, -21,
					-- layer=2 filter=50 channel=38
					26, 2, -10, 0, 63, -20, 19, -2, -5,
					-- layer=2 filter=50 channel=39
					6, 22, 15, 45, 9, -33, 12, -18, -23,
					-- layer=2 filter=50 channel=40
					-24, -21, -18, -23, -7, -10, -19, 21, -30,
					-- layer=2 filter=50 channel=41
					-28, 0, 25, -3, 9, 23, -13, 32, 38,
					-- layer=2 filter=50 channel=42
					-36, -13, -37, -7, -5, -18, -24, -59, -47,
					-- layer=2 filter=50 channel=43
					22, 22, 6, 9, 7, 19, -24, 2, -2,
					-- layer=2 filter=50 channel=44
					-27, -18, -55, -11, -12, -43, 15, -7, 2,
					-- layer=2 filter=50 channel=45
					7, 19, 19, 13, -22, -6, -5, -26, 15,
					-- layer=2 filter=50 channel=46
					-74, -60, -39, -23, -23, -43, 29, -20, -37,
					-- layer=2 filter=50 channel=47
					-14, 6, 7, 6, -14, 16, 48, 6, 42,
					-- layer=2 filter=50 channel=48
					-27, -29, -43, -22, -32, -35, -14, -59, -74,
					-- layer=2 filter=50 channel=49
					-45, -7, 8, 2, 14, -38, -2, -28, 37,
					-- layer=2 filter=50 channel=50
					-29, 0, 44, -1, 12, 9, -25, 16, 27,
					-- layer=2 filter=50 channel=51
					10, -48, -60, 14, -41, 1, -45, -22, -19,
					-- layer=2 filter=50 channel=52
					23, 6, -85, 13, 16, 26, 15, -29, -17,
					-- layer=2 filter=50 channel=53
					-40, -6, 17, -7, -31, 0, -15, 56, 12,
					-- layer=2 filter=50 channel=54
					-11, -11, 4, -12, -8, 4, -20, 6, -12,
					-- layer=2 filter=50 channel=55
					33, 0, -57, -9, 24, 33, 0, -30, -13,
					-- layer=2 filter=50 channel=56
					-61, -21, -32, -8, -14, -11, 10, 20, -2,
					-- layer=2 filter=50 channel=57
					6, 31, 48, -14, 23, 13, -35, 13, 40,
					-- layer=2 filter=50 channel=58
					63, -49, 40, -39, 31, -3, 46, -12, -21,
					-- layer=2 filter=50 channel=59
					-27, -12, 7, -20, 18, 25, -17, 28, 24,
					-- layer=2 filter=50 channel=60
					-23, -4, -84, -18, -13, -9, 62, 34, -13,
					-- layer=2 filter=50 channel=61
					-20, -33, -66, -21, 18, -1, -27, -14, -16,
					-- layer=2 filter=50 channel=62
					11, 83, 37, -5, 68, 72, 20, 20, 35,
					-- layer=2 filter=50 channel=63
					29, 51, 32, -21, -9, 9, -13, -4, -17,
					-- layer=2 filter=51 channel=0
					-13, -14, 0, -4, -18, -10, -1, -5, -2,
					-- layer=2 filter=51 channel=1
					-4, -5, -5, 13, 1, -1, 10, 3, -12,
					-- layer=2 filter=51 channel=2
					1, -16, -19, -8, 6, -4, -11, 3, -23,
					-- layer=2 filter=51 channel=3
					0, -19, -18, -14, 0, -7, 5, 2, -4,
					-- layer=2 filter=51 channel=4
					0, -12, -15, 5, -13, -6, 7, -14, -1,
					-- layer=2 filter=51 channel=5
					8, -6, 1, 0, 15, -3, -2, 14, 13,
					-- layer=2 filter=51 channel=6
					-6, 11, -14, 8, 0, 8, 4, -2, -14,
					-- layer=2 filter=51 channel=7
					1, 12, 10, -1, -10, 6, -7, 8, -15,
					-- layer=2 filter=51 channel=8
					1, 8, 7, -3, -1, -10, -6, 0, -19,
					-- layer=2 filter=51 channel=9
					3, 6, -8, -1, -1, -20, -14, -12, -1,
					-- layer=2 filter=51 channel=10
					2, -6, 4, 4, -8, -24, 1, 0, -14,
					-- layer=2 filter=51 channel=11
					9, 4, -6, -11, 9, 1, -6, -11, -15,
					-- layer=2 filter=51 channel=12
					-15, -12, -22, -10, -12, -17, -15, -11, -1,
					-- layer=2 filter=51 channel=13
					4, 4, 12, -20, 4, 14, -15, 1, 1,
					-- layer=2 filter=51 channel=14
					10, -15, 2, 14, 8, -11, 0, 15, 7,
					-- layer=2 filter=51 channel=15
					6, 9, -16, -6, -18, -17, -5, -12, -16,
					-- layer=2 filter=51 channel=16
					11, -7, 8, -7, 1, -6, -12, -6, -17,
					-- layer=2 filter=51 channel=17
					6, 6, -4, -3, -17, -6, 0, 10, -3,
					-- layer=2 filter=51 channel=18
					-7, -2, -3, 7, 8, -6, 3, 1, 0,
					-- layer=2 filter=51 channel=19
					-17, -21, -1, 9, -11, 3, 2, -14, -21,
					-- layer=2 filter=51 channel=20
					-20, -11, -16, 2, -19, 0, -7, 2, 0,
					-- layer=2 filter=51 channel=21
					8, -10, 5, 10, -16, -1, -8, 7, -8,
					-- layer=2 filter=51 channel=22
					-5, -14, 6, 8, -11, -6, 7, -6, -18,
					-- layer=2 filter=51 channel=23
					-2, -6, -10, -9, -12, -9, -12, -6, 14,
					-- layer=2 filter=51 channel=24
					0, -7, -11, -13, -16, -19, -10, -9, -6,
					-- layer=2 filter=51 channel=25
					-5, 8, -5, -12, 14, -6, -19, 5, 0,
					-- layer=2 filter=51 channel=26
					4, 8, 0, 12, 11, 10, 10, 2, 0,
					-- layer=2 filter=51 channel=27
					-11, 9, 0, 10, 14, 4, 10, 2, 9,
					-- layer=2 filter=51 channel=28
					-13, -6, 0, -13, 13, 10, 10, 5, -11,
					-- layer=2 filter=51 channel=29
					-3, -3, 1, -8, 0, -11, 3, -4, -18,
					-- layer=2 filter=51 channel=30
					2, 3, 4, -6, -17, 2, -9, 8, -4,
					-- layer=2 filter=51 channel=31
					-7, -6, -4, 10, -13, -9, -24, 0, -14,
					-- layer=2 filter=51 channel=32
					3, -19, -8, -10, 4, -14, 11, 5, -15,
					-- layer=2 filter=51 channel=33
					2, 1, 8, -12, -1, -10, -2, -16, -16,
					-- layer=2 filter=51 channel=34
					-9, -9, -5, -4, 5, 8, -4, -9, -1,
					-- layer=2 filter=51 channel=35
					2, 5, 8, -2, -5, -19, -24, 6, 1,
					-- layer=2 filter=51 channel=36
					7, 3, -9, 10, 2, -1, 13, -5, -17,
					-- layer=2 filter=51 channel=37
					-14, 13, -14, 8, 2, 9, 5, -8, -15,
					-- layer=2 filter=51 channel=38
					-4, 8, 6, -4, 9, 0, 15, 4, 5,
					-- layer=2 filter=51 channel=39
					5, -16, 4, 9, -12, 2, -10, -5, -3,
					-- layer=2 filter=51 channel=40
					-2, -2, -12, 9, -20, -7, 6, -4, 1,
					-- layer=2 filter=51 channel=41
					0, 9, -2, 5, -12, -6, -12, -9, -10,
					-- layer=2 filter=51 channel=42
					-9, 1, -12, 3, -11, 6, 4, 0, -8,
					-- layer=2 filter=51 channel=43
					4, -13, -14, -15, -3, 2, 3, -4, 6,
					-- layer=2 filter=51 channel=44
					-13, 0, -12, 1, -15, -13, -14, 11, 6,
					-- layer=2 filter=51 channel=45
					2, 2, 5, -8, -2, -16, 9, -12, -5,
					-- layer=2 filter=51 channel=46
					-3, -20, 5, -1, -15, -8, 2, -16, -12,
					-- layer=2 filter=51 channel=47
					-14, -6, 3, 5, 7, -12, -10, 7, -6,
					-- layer=2 filter=51 channel=48
					-17, -12, 5, -21, -4, -22, -1, -18, -2,
					-- layer=2 filter=51 channel=49
					-8, -6, -18, 5, -3, -18, 0, -3, -7,
					-- layer=2 filter=51 channel=50
					-12, -3, -19, 1, 6, 6, 3, -3, -14,
					-- layer=2 filter=51 channel=51
					-1, -5, 6, -1, -3, 11, -10, 3, 13,
					-- layer=2 filter=51 channel=52
					11, -15, 1, 13, -14, -2, -15, 6, 8,
					-- layer=2 filter=51 channel=53
					12, -10, -7, 11, -5, -13, 8, -12, -7,
					-- layer=2 filter=51 channel=54
					-3, -9, 0, -9, 4, -9, 0, 9, -2,
					-- layer=2 filter=51 channel=55
					2, 2, -2, -6, -5, 2, -19, -4, -5,
					-- layer=2 filter=51 channel=56
					0, -21, 10, -15, 2, -9, -6, 4, -4,
					-- layer=2 filter=51 channel=57
					14, 8, -1, 0, -5, -11, 8, 6, -9,
					-- layer=2 filter=51 channel=58
					10, -1, -3, -2, -8, 5, -15, -15, -5,
					-- layer=2 filter=51 channel=59
					-3, 6, 2, 2, -12, 3, 6, -10, -3,
					-- layer=2 filter=51 channel=60
					-6, -14, 13, -6, -11, 10, 4, 11, 0,
					-- layer=2 filter=51 channel=61
					0, -5, 8, -4, 7, 7, 13, 13, 5,
					-- layer=2 filter=51 channel=62
					-11, -13, -13, -14, 4, -5, -3, -10, -4,
					-- layer=2 filter=51 channel=63
					-2, -11, 9, 8, 9, 9, -11, 11, 5,
					-- layer=2 filter=52 channel=0
					34, 12, -17, -33, -49, -42, 19, 19, 14,
					-- layer=2 filter=52 channel=1
					-55, -1, 0, -96, -47, -2, -78, -40, 0,
					-- layer=2 filter=52 channel=2
					-15, -29, -11, -15, 7, -7, 30, 40, 9,
					-- layer=2 filter=52 channel=3
					15, 19, -15, -4, 16, -23, -23, -4, -75,
					-- layer=2 filter=52 channel=4
					-25, 25, 24, 1, 36, 10, 7, 29, 25,
					-- layer=2 filter=52 channel=5
					0, 3, 15, -8, 39, 47, -34, 31, 29,
					-- layer=2 filter=52 channel=6
					9, -11, -6, 29, 0, -7, 38, -9, -61,
					-- layer=2 filter=52 channel=7
					53, -10, -21, -79, -32, -5, 6, -27, -12,
					-- layer=2 filter=52 channel=8
					15, 26, -5, 45, 2, -11, 5, -46, -77,
					-- layer=2 filter=52 channel=9
					-71, 3, 8, -27, 8, 48, -47, 2, 4,
					-- layer=2 filter=52 channel=10
					-26, -29, -13, -15, -5, -4, 23, 7, 11,
					-- layer=2 filter=52 channel=11
					-58, -19, -29, 39, 12, 21, 43, 23, 48,
					-- layer=2 filter=52 channel=12
					-12, -11, -18, 2, 7, -15, 13, -5, -10,
					-- layer=2 filter=52 channel=13
					12, -30, -59, 18, -22, -36, 7, -45, 3,
					-- layer=2 filter=52 channel=14
					21, 18, -14, 10, 21, 24, 0, -30, 3,
					-- layer=2 filter=52 channel=15
					33, 15, -9, -43, -20, -21, -41, -12, 7,
					-- layer=2 filter=52 channel=16
					11, -7, -12, 44, 41, -23, 8, -6, -29,
					-- layer=2 filter=52 channel=17
					7, -5, 16, 40, -10, 18, -3, -9, 11,
					-- layer=2 filter=52 channel=18
					12, 45, 7, 17, -18, 8, -49, 79, 45,
					-- layer=2 filter=52 channel=19
					-20, -13, -32, 13, 26, -24, -30, 9, -23,
					-- layer=2 filter=52 channel=20
					0, -20, -18, -3, -1, -22, 16, -8, -34,
					-- layer=2 filter=52 channel=21
					34, -3, -3, -2, -1, -11, -14, -20, -65,
					-- layer=2 filter=52 channel=22
					2, 3, 21, -25, -10, 4, -52, -14, -14,
					-- layer=2 filter=52 channel=23
					-10, 14, -21, 57, 29, 14, 28, 13, 13,
					-- layer=2 filter=52 channel=24
					24, 18, 2, 16, 9, 7, -9, 0, -12,
					-- layer=2 filter=52 channel=25
					-24, -13, -21, -80, -54, 2, -11, 12, 43,
					-- layer=2 filter=52 channel=26
					-6, -6, 3, 5, 2, 13, -8, 8, -5,
					-- layer=2 filter=52 channel=27
					-5, 2, 14, 6, 13, -10, -5, 8, 3,
					-- layer=2 filter=52 channel=28
					1, -10, -2, 0, -2, 5, -2, -5, 5,
					-- layer=2 filter=52 channel=29
					19, 1, -38, -26, -22, -40, 39, 3, -27,
					-- layer=2 filter=52 channel=30
					24, -18, 16, -4, 27, -11, -22, -9, -10,
					-- layer=2 filter=52 channel=31
					-73, -22, -3, -66, -30, 38, -21, 30, 1,
					-- layer=2 filter=52 channel=32
					30, 46, -11, 60, 14, -37, 10, -17, -44,
					-- layer=2 filter=52 channel=33
					30, 12, -22, 29, 23, -36, -6, -29, -53,
					-- layer=2 filter=52 channel=34
					33, 32, -21, -67, -90, -58, -13, 7, -5,
					-- layer=2 filter=52 channel=35
					-35, 6, 33, -61, -59, 37, -56, -55, 4,
					-- layer=2 filter=52 channel=36
					6, 18, -23, -10, -16, -20, -8, 1, 12,
					-- layer=2 filter=52 channel=37
					14, 12, -17, -93, -123, -93, 43, 17, -5,
					-- layer=2 filter=52 channel=38
					-32, 3, 16, -81, -57, 7, -61, -42, 11,
					-- layer=2 filter=52 channel=39
					-18, 12, -37, -63, -20, -24, -63, -7, 21,
					-- layer=2 filter=52 channel=40
					-15, 12, 18, -74, 3, 5, -43, 20, 25,
					-- layer=2 filter=52 channel=41
					18, 7, -1, 27, 8, -5, -6, -28, -34,
					-- layer=2 filter=52 channel=42
					-42, -11, 5, 5, -11, 16, 24, 19, 42,
					-- layer=2 filter=52 channel=43
					-14, 15, -42, 45, 54, -17, -11, -17, -43,
					-- layer=2 filter=52 channel=44
					-20, 19, 9, 21, 40, 42, 12, 10, 25,
					-- layer=2 filter=52 channel=45
					0, 7, -11, 29, 3, -51, 16, -5, -69,
					-- layer=2 filter=52 channel=46
					-40, 35, 36, -4, 26, 48, 0, 28, 30,
					-- layer=2 filter=52 channel=47
					-18, 8, -7, -10, 7, 0, 19, -8, -7,
					-- layer=2 filter=52 channel=48
					1, -12, -17, -6, 1, -9, 0, 21, 13,
					-- layer=2 filter=52 channel=49
					5, -32, -8, 26, -19, -11, -12, -23, 27,
					-- layer=2 filter=52 channel=50
					9, 0, -9, -35, -14, -73, -9, -22, -26,
					-- layer=2 filter=52 channel=51
					62, 15, -38, 34, -6, 6, -19, 12, 47,
					-- layer=2 filter=52 channel=52
					-60, -57, -25, -7, 5, 43, 29, 9, 56,
					-- layer=2 filter=52 channel=53
					-16, -23, -1, 11, -27, -10, 37, 22, 17,
					-- layer=2 filter=52 channel=54
					-31, 6, -7, 8, 47, 2, 1, 16, -8,
					-- layer=2 filter=52 channel=55
					-51, -62, -78, 20, 23, -1, 34, 5, 12,
					-- layer=2 filter=52 channel=56
					-29, -25, -8, -47, -27, 36, -16, 35, 22,
					-- layer=2 filter=52 channel=57
					26, 29, -12, 2, -10, -13, -25, -30, -16,
					-- layer=2 filter=52 channel=58
					-5, 24, 36, 56, 11, 27, 55, 56, 58,
					-- layer=2 filter=52 channel=59
					4, -13, 1, -2, -10, -11, 0, -14, -11,
					-- layer=2 filter=52 channel=60
					34, 13, 58, 18, 3, 37, -34, -5, 20,
					-- layer=2 filter=52 channel=61
					-7, 0, -34, 10, 6, -58, -52, -34, 29,
					-- layer=2 filter=52 channel=62
					-13, 11, 0, -106, -1, -24, -30, -6, -12,
					-- layer=2 filter=52 channel=63
					3, 4, -22, 28, -14, -55, -9, -15, -48,
					-- layer=2 filter=53 channel=0
					10, 16, -28, -30, -22, 11, -64, -27, -15,
					-- layer=2 filter=53 channel=1
					-71, -62, -48, -142, -77, -35, -124, -64, 0,
					-- layer=2 filter=53 channel=2
					7, 5, 27, 20, 20, -12, 7, -1, 11,
					-- layer=2 filter=53 channel=3
					6, 25, 39, -21, 28, 9, -39, 7, 0,
					-- layer=2 filter=53 channel=4
					-10, -21, -22, -6, 13, 1, -13, 25, 6,
					-- layer=2 filter=53 channel=5
					16, 40, 9, 30, 15, -12, -18, 20, -38,
					-- layer=2 filter=53 channel=6
					-15, -33, -2, 30, -3, 17, 22, -22, -14,
					-- layer=2 filter=53 channel=7
					-9, -19, -22, 8, -24, -3, 0, 14, -29,
					-- layer=2 filter=53 channel=8
					-7, 8, 31, -48, -90, -26, 0, -59, -6,
					-- layer=2 filter=53 channel=9
					-74, 16, 14, -88, -43, -29, -31, -42, 16,
					-- layer=2 filter=53 channel=10
					2, 27, 18, -7, -7, 21, 42, 26, 13,
					-- layer=2 filter=53 channel=11
					-33, -21, -32, 5, -40, -1, 40, 1, 2,
					-- layer=2 filter=53 channel=12
					5, -4, 18, 33, 6, -1, 15, -2, -17,
					-- layer=2 filter=53 channel=13
					-12, 35, 55, -31, 67, 81, 11, 47, 32,
					-- layer=2 filter=53 channel=14
					-3, 2, 0, 18, -3, -9, 12, -24, 9,
					-- layer=2 filter=53 channel=15
					9, 7, 5, 22, 11, -1, 17, -2, -6,
					-- layer=2 filter=53 channel=16
					4, 11, 30, 22, 2, 0, 12, -11, -28,
					-- layer=2 filter=53 channel=17
					-4, 2, 21, 32, 32, 14, -2, -5, 23,
					-- layer=2 filter=53 channel=18
					39, 46, -13, 32, 0, -55, 42, -36, -48,
					-- layer=2 filter=53 channel=19
					-11, -11, 10, 28, -22, -18, -10, 0, -30,
					-- layer=2 filter=53 channel=20
					-8, 10, -16, 16, 1, -42, -8, -18, -18,
					-- layer=2 filter=53 channel=21
					11, 17, 8, 0, 5, -2, -23, -26, 18,
					-- layer=2 filter=53 channel=22
					-48, -13, 27, -67, -20, 11, -64, -18, 61,
					-- layer=2 filter=53 channel=23
					-13, -9, 14, 6, -12, 12, 39, 3, 17,
					-- layer=2 filter=53 channel=24
					7, 7, 20, 28, 20, 10, 1, 24, 15,
					-- layer=2 filter=53 channel=25
					-25, -96, 12, 13, 17, 19, -60, -17, -43,
					-- layer=2 filter=53 channel=26
					-1, 8, -4, 0, -8, 10, -4, -13, 13,
					-- layer=2 filter=53 channel=27
					-9, 13, -7, -13, -12, -10, -9, -1, 12,
					-- layer=2 filter=53 channel=28
					0, 21, -12, -1, -5, -8, 9, -16, 23,
					-- layer=2 filter=53 channel=29
					-29, -7, 15, -10, -20, 18, -26, -37, 44,
					-- layer=2 filter=53 channel=30
					0, -12, 7, 4, -2, -13, 2, -15, -12,
					-- layer=2 filter=53 channel=31
					-49, -47, 14, -66, -63, -28, -54, -3, 12,
					-- layer=2 filter=53 channel=32
					5, -8, 38, -3, 3, 4, -13, -3, -3,
					-- layer=2 filter=53 channel=33
					14, 2, 16, 2, -15, 18, 20, -8, -15,
					-- layer=2 filter=53 channel=34
					0, 8, 13, -20, -2, 30, -27, -5, -9,
					-- layer=2 filter=53 channel=35
					12, -60, -61, -49, -51, -58, -72, -49, -21,
					-- layer=2 filter=53 channel=36
					6, 16, 20, 25, 20, 8, 24, 23, -21,
					-- layer=2 filter=53 channel=37
					6, -11, 15, -1, -27, 6, 13, 1, -2,
					-- layer=2 filter=53 channel=38
					-89, -20, -2, -153, -38, 1, -117, -29, 24,
					-- layer=2 filter=53 channel=39
					-48, -19, -37, 6, -7, 13, -78, 40, 19,
					-- layer=2 filter=53 channel=40
					-31, -20, 2, -78, -7, -6, -26, 7, 43,
					-- layer=2 filter=53 channel=41
					11, -6, 9, 15, -10, -1, 20, 9, -1,
					-- layer=2 filter=53 channel=42
					-10, 28, 20, -19, -17, 2, -30, -1, 24,
					-- layer=2 filter=53 channel=43
					10, 22, 1, 47, -3, -33, 30, 5, -33,
					-- layer=2 filter=53 channel=44
					4, 11, -18, 47, 21, 4, 39, 27, -17,
					-- layer=2 filter=53 channel=45
					9, 19, 35, 9, -18, -2, -12, 3, -17,
					-- layer=2 filter=53 channel=46
					-67, 21, -29, -39, -51, 12, -25, 0, 9,
					-- layer=2 filter=53 channel=47
					4, 8, -5, 15, 24, -27, 8, 11, -7,
					-- layer=2 filter=53 channel=48
					-9, -1, 17, 8, 3, 6, -11, 9, 21,
					-- layer=2 filter=53 channel=49
					-7, 0, 40, -22, -27, 21, 10, -3, -10,
					-- layer=2 filter=53 channel=50
					17, 30, 14, -21, -14, -5, -26, -10, -21,
					-- layer=2 filter=53 channel=51
					-7, -28, -17, -50, 7, 19, -21, 74, 33,
					-- layer=2 filter=53 channel=52
					16, 8, -8, -2, 8, 34, 52, 5, 11,
					-- layer=2 filter=53 channel=53
					0, -2, -8, -14, -20, -33, 41, -7, -22,
					-- layer=2 filter=53 channel=54
					1, 12, -3, 23, -4, -7, 0, 19, -11,
					-- layer=2 filter=53 channel=55
					17, -12, -21, 22, 14, 32, 72, 12, 0,
					-- layer=2 filter=53 channel=56
					-8, 17, 46, -94, 11, 39, -25, 14, 54,
					-- layer=2 filter=53 channel=57
					6, 4, 12, 11, 13, 3, 12, 16, -40,
					-- layer=2 filter=53 channel=58
					2, 8, 16, 8, -8, 31, -42, 59, 6,
					-- layer=2 filter=53 channel=59
					-15, -16, 35, -20, -46, 4, 2, 12, 24,
					-- layer=2 filter=53 channel=60
					-92, -11, 9, -47, 41, -8, -19, 61, 31,
					-- layer=2 filter=53 channel=61
					-48, -12, -11, -25, -34, -21, -17, -32, -24,
					-- layer=2 filter=53 channel=62
					-18, -14, -19, -60, -43, -62, -29, 17, -24,
					-- layer=2 filter=53 channel=63
					15, 17, 9, -26, -1, 12, -13, 0, 3,
					-- layer=2 filter=54 channel=0
					-3, -11, -10, 4, 8, 8, -14, -9, 3,
					-- layer=2 filter=54 channel=1
					4, 0, -5, -12, 2, -15, -4, -15, 2,
					-- layer=2 filter=54 channel=2
					-7, -1, 1, -11, -12, -6, -1, -2, 11,
					-- layer=2 filter=54 channel=3
					5, -15, 6, 0, -19, -18, -6, -11, -16,
					-- layer=2 filter=54 channel=4
					-14, 8, -5, -14, -3, -1, -13, 11, 3,
					-- layer=2 filter=54 channel=5
					-10, 6, -3, 3, -4, -2, -13, 5, -9,
					-- layer=2 filter=54 channel=6
					1, -20, 3, -20, -2, -7, -3, -5, -14,
					-- layer=2 filter=54 channel=7
					9, 8, 10, -11, -11, 9, 14, -11, -8,
					-- layer=2 filter=54 channel=8
					7, 3, -7, 13, -1, 6, -11, 10, 1,
					-- layer=2 filter=54 channel=9
					6, -20, -3, 6, -9, 6, -3, -2, -1,
					-- layer=2 filter=54 channel=10
					-5, -12, -18, -5, -12, -16, -10, -1, -5,
					-- layer=2 filter=54 channel=11
					-17, 3, -3, -16, 0, -13, -3, -8, -12,
					-- layer=2 filter=54 channel=12
					2, -9, -11, -2, -2, -14, -5, 6, -8,
					-- layer=2 filter=54 channel=13
					-1, 0, -8, -7, -14, -14, 0, -2, 5,
					-- layer=2 filter=54 channel=14
					7, -11, -2, 0, -4, -19, -17, 2, 1,
					-- layer=2 filter=54 channel=15
					0, -1, 8, -9, -9, -9, -8, -22, 1,
					-- layer=2 filter=54 channel=16
					1, 1, -18, -17, -4, -19, 10, -10, -15,
					-- layer=2 filter=54 channel=17
					-6, -18, -5, -20, -16, -18, -7, 0, -15,
					-- layer=2 filter=54 channel=18
					-12, 13, -2, 14, -5, 14, -5, 10, 12,
					-- layer=2 filter=54 channel=19
					8, 10, -12, 1, 7, -12, -6, 0, 9,
					-- layer=2 filter=54 channel=20
					8, -16, 6, -4, 0, -9, 5, 6, 6,
					-- layer=2 filter=54 channel=21
					-7, 6, -5, 12, -9, -19, -8, 0, 5,
					-- layer=2 filter=54 channel=22
					5, -2, -2, -12, 0, 2, -3, -14, -10,
					-- layer=2 filter=54 channel=23
					-1, -18, 7, 6, 7, 8, 5, -12, 1,
					-- layer=2 filter=54 channel=24
					2, -11, 5, -3, -3, -2, -7, -18, -18,
					-- layer=2 filter=54 channel=25
					5, 0, -11, -6, -10, -7, 8, -5, -13,
					-- layer=2 filter=54 channel=26
					8, 3, 10, 13, 2, 14, -12, 1, 10,
					-- layer=2 filter=54 channel=27
					13, -4, -7, 8, 6, -7, -4, 11, 0,
					-- layer=2 filter=54 channel=28
					6, -6, 0, -4, 5, 3, 14, 2, 5,
					-- layer=2 filter=54 channel=29
					-10, -9, 0, -12, -12, -13, 0, -18, -20,
					-- layer=2 filter=54 channel=30
					-6, -12, 11, -16, -11, 4, -14, 2, -13,
					-- layer=2 filter=54 channel=31
					-7, 0, 6, -11, -9, -14, -5, -13, -13,
					-- layer=2 filter=54 channel=32
					-13, -9, -15, -1, -1, 7, -15, -13, -17,
					-- layer=2 filter=54 channel=33
					-4, 8, -17, -12, -2, -12, -10, 0, -7,
					-- layer=2 filter=54 channel=34
					-5, -13, -15, 3, -15, -16, -19, 6, -10,
					-- layer=2 filter=54 channel=35
					7, -9, 0, 11, 6, 12, 0, -13, -7,
					-- layer=2 filter=54 channel=36
					12, -7, 0, -10, -4, -7, 8, -3, 0,
					-- layer=2 filter=54 channel=37
					-6, -4, -14, -6, 9, -20, -8, -18, 6,
					-- layer=2 filter=54 channel=38
					-4, 5, 4, -7, -8, 1, 5, 4, 11,
					-- layer=2 filter=54 channel=39
					-11, -13, 1, -14, 11, 6, -12, -19, -15,
					-- layer=2 filter=54 channel=40
					0, -6, -4, 12, -7, -3, -1, 5, -8,
					-- layer=2 filter=54 channel=41
					-15, -16, -4, 4, 0, -2, 5, -18, -19,
					-- layer=2 filter=54 channel=42
					0, 5, 0, 4, -4, -19, -13, -17, -16,
					-- layer=2 filter=54 channel=43
					-11, -8, -20, 1, -9, 8, -8, 3, 2,
					-- layer=2 filter=54 channel=44
					-14, -13, -2, -3, -14, 3, -11, -16, -1,
					-- layer=2 filter=54 channel=45
					8, -13, 9, 12, -13, 0, -1, 6, -4,
					-- layer=2 filter=54 channel=46
					1, -6, 3, -22, -2, -11, 0, 8, 11,
					-- layer=2 filter=54 channel=47
					-3, -3, 11, -2, -7, -12, -16, 3, -7,
					-- layer=2 filter=54 channel=48
					-10, -3, -6, 7, -11, -18, 0, -10, 0,
					-- layer=2 filter=54 channel=49
					1, -8, -4, -14, 11, 11, -5, 4, 2,
					-- layer=2 filter=54 channel=50
					-5, -7, -1, -19, 8, 0, -6, 5, -16,
					-- layer=2 filter=54 channel=51
					0, 5, -12, -13, 11, -5, -9, -7, 6,
					-- layer=2 filter=54 channel=52
					-6, 6, -1, -17, -6, -3, -4, -8, 2,
					-- layer=2 filter=54 channel=53
					7, -14, -13, -6, -5, -6, -20, -5, -21,
					-- layer=2 filter=54 channel=54
					-11, 5, -6, -11, -12, 1, -20, -17, -4,
					-- layer=2 filter=54 channel=55
					-1, 3, 1, 7, -17, -15, -7, -8, 6,
					-- layer=2 filter=54 channel=56
					-15, -12, -19, -17, 2, -9, 5, -13, 2,
					-- layer=2 filter=54 channel=57
					-13, 0, -15, 4, -12, -10, -9, 8, -10,
					-- layer=2 filter=54 channel=58
					-11, -10, 3, -18, 14, 14, 6, 9, 7,
					-- layer=2 filter=54 channel=59
					-8, -14, -12, 6, -1, -21, -15, -14, 0,
					-- layer=2 filter=54 channel=60
					-3, -18, 5, 0, -6, 9, 4, 7, -11,
					-- layer=2 filter=54 channel=61
					-5, 5, 12, -5, -6, -9, 5, 14, -1,
					-- layer=2 filter=54 channel=62
					4, -1, -1, 5, 5, 6, 11, 0, 0,
					-- layer=2 filter=54 channel=63
					9, -12, -14, -14, -12, 2, -5, 4, -1,
					-- layer=2 filter=55 channel=0
					-25, -54, -29, -16, 2, -38, -74, -24, -9,
					-- layer=2 filter=55 channel=1
					36, -36, 18, -6, -18, 4, -15, 13, -4,
					-- layer=2 filter=55 channel=2
					-2, 18, -13, -9, -1, -19, 22, -1, -1,
					-- layer=2 filter=55 channel=3
					-16, -7, -8, -14, 16, -5, 4, -6, -10,
					-- layer=2 filter=55 channel=4
					40, -21, -5, 13, -11, -11, -35, -22, -29,
					-- layer=2 filter=55 channel=5
					0, -26, -1, -3, -68, -4, -29, -42, 3,
					-- layer=2 filter=55 channel=6
					7, -29, 22, 1, -9, 16, 34, 31, 13,
					-- layer=2 filter=55 channel=7
					18, 29, -61, -71, -73, 41, -3, -32, -30,
					-- layer=2 filter=55 channel=8
					-24, 20, -4, 1, 20, -5, -24, 11, 29,
					-- layer=2 filter=55 channel=9
					-13, -9, 36, 8, 11, 31, 36, 5, -10,
					-- layer=2 filter=55 channel=10
					-42, 20, 13, -35, -9, -8, 0, 14, 33,
					-- layer=2 filter=55 channel=11
					-74, -48, -55, -61, -38, -49, -39, -29, -11,
					-- layer=2 filter=55 channel=12
					19, 25, -16, 5, -7, -12, 8, 0, -36,
					-- layer=2 filter=55 channel=13
					-21, 7, 0, -29, 22, -5, 11, 1, 8,
					-- layer=2 filter=55 channel=14
					-4, -21, -16, 0, -2, 19, 21, 39, 37,
					-- layer=2 filter=55 channel=15
					2, -3, 11, -33, -35, -34, -40, -26, 4,
					-- layer=2 filter=55 channel=16
					-2, 3, -28, -14, 28, 1, 44, 24, 37,
					-- layer=2 filter=55 channel=17
					-9, 0, 7, 8, 0, 5, 17, 20, 13,
					-- layer=2 filter=55 channel=18
					33, 4, -13, -69, -63, -53, -52, -99, -12,
					-- layer=2 filter=55 channel=19
					21, 26, 8, -3, -28, -20, -1, -31, -22,
					-- layer=2 filter=55 channel=20
					17, 3, -32, 28, -17, -14, 39, -6, 14,
					-- layer=2 filter=55 channel=21
					3, -28, -14, 10, -9, 13, 16, 18, 8,
					-- layer=2 filter=55 channel=22
					-11, -25, -3, 39, 16, 24, 31, 45, 22,
					-- layer=2 filter=55 channel=23
					-9, -21, 8, 6, -4, 9, 40, 47, 46,
					-- layer=2 filter=55 channel=24
					20, 6, 4, 1, 5, -4, 15, -4, -11,
					-- layer=2 filter=55 channel=25
					21, -6, -38, -27, -11, -68, -26, -37, -56,
					-- layer=2 filter=55 channel=26
					-1, -10, 14, 0, -8, 3, -5, 4, -9,
					-- layer=2 filter=55 channel=27
					0, 1, -5, 8, 5, 14, 12, 4, -8,
					-- layer=2 filter=55 channel=28
					0, -4, 2, 5, -7, 11, 0, -15, 23,
					-- layer=2 filter=55 channel=29
					14, 1, -6, 13, 35, 11, 2, 7, -10,
					-- layer=2 filter=55 channel=30
					12, 5, -10, 35, 20, 9, 39, 32, 35,
					-- layer=2 filter=55 channel=31
					6, -17, -37, -35, -27, -48, -35, 9, -5,
					-- layer=2 filter=55 channel=32
					-24, 0, -16, 0, 7, -1, 42, 53, 35,
					-- layer=2 filter=55 channel=33
					10, 9, 10, 6, -1, 26, 22, 29, 18,
					-- layer=2 filter=55 channel=34
					-19, 5, -19, -56, -21, -52, -89, -48, -52,
					-- layer=2 filter=55 channel=35
					16, -22, 36, 65, 1, 32, 2, 12, 47,
					-- layer=2 filter=55 channel=36
					25, 15, 8, 8, -12, 11, -5, -8, -25,
					-- layer=2 filter=55 channel=37
					-3, 12, 2, 2, -21, -18, -103, -8, -3,
					-- layer=2 filter=55 channel=38
					10, -3, 14, -3, -5, -17, -3, 24, -22,
					-- layer=2 filter=55 channel=39
					5, -26, 3, -24, -44, -58, -105, -2, -19,
					-- layer=2 filter=55 channel=40
					28, -1, -23, 39, -6, -2, 3, 19, -14,
					-- layer=2 filter=55 channel=41
					1, -16, 14, -1, 19, 8, 29, 29, 23,
					-- layer=2 filter=55 channel=42
					5, -3, 0, -9, -1, 3, 38, 12, 7,
					-- layer=2 filter=55 channel=43
					-21, -8, -39, -8, 18, -11, -2, 12, 32,
					-- layer=2 filter=55 channel=44
					12, -10, -21, 1, -14, -5, -37, -20, 2,
					-- layer=2 filter=55 channel=45
					5, -19, -33, -8, 3, 7, 5, 23, 39,
					-- layer=2 filter=55 channel=46
					-35, 29, 30, -18, -38, 4, 29, 15, 1,
					-- layer=2 filter=55 channel=47
					26, -2, 1, -1, -21, -5, -4, 14, 14,
					-- layer=2 filter=55 channel=48
					9, 9, 19, 21, -4, 18, 6, 6, -6,
					-- layer=2 filter=55 channel=49
					13, -24, 5, 5, -2, -19, 31, 32, -1,
					-- layer=2 filter=55 channel=50
					-14, -8, -23, 7, 0, 35, -9, 0, 33,
					-- layer=2 filter=55 channel=51
					0, -68, -17, -32, -85, -66, -22, -38, -22,
					-- layer=2 filter=55 channel=52
					-23, -23, -49, -32, 4, -19, 18, -11, 25,
					-- layer=2 filter=55 channel=53
					-15, -5, 3, -15, -21, -30, -23, 2, 17,
					-- layer=2 filter=55 channel=54
					0, 4, -10, 2, 8, 9, 21, 20, 34,
					-- layer=2 filter=55 channel=55
					-75, -58, -59, -29, -16, -37, 10, -25, -8,
					-- layer=2 filter=55 channel=56
					-19, -2, 6, 5, -1, 0, 38, 12, -1,
					-- layer=2 filter=55 channel=57
					-41, -19, -9, -29, -13, 0, 23, 23, 13,
					-- layer=2 filter=55 channel=58
					-6, -22, -42, 45, -21, -22, -5, 38, 6,
					-- layer=2 filter=55 channel=59
					13, -10, 18, -16, 8, 2, 9, 0, 25,
					-- layer=2 filter=55 channel=60
					-25, 13, 17, -15, 5, -22, -12, -4, -64,
					-- layer=2 filter=55 channel=61
					36, -56, -14, -38, -32, -92, -32, -57, -4,
					-- layer=2 filter=55 channel=62
					-15, 6, 13, 0, 15, 20, -5, -28, 5,
					-- layer=2 filter=55 channel=63
					-8, -3, -23, -3, 0, -3, 20, 19, -15,
					-- layer=2 filter=56 channel=0
					-14, -19, -64, -21, -47, -19, -42, -8, 1,
					-- layer=2 filter=56 channel=1
					0, 21, 33, -14, -40, 28, 18, 5, 27,
					-- layer=2 filter=56 channel=2
					4, 12, -2, 14, 8, -28, 24, 21, -11,
					-- layer=2 filter=56 channel=3
					-6, -19, 1, 5, 34, -9, -5, -25, -19,
					-- layer=2 filter=56 channel=4
					15, -24, -30, 21, -11, -8, 23, -10, 48,
					-- layer=2 filter=56 channel=5
					-62, -66, 14, -26, -47, -101, 2, -65, -17,
					-- layer=2 filter=56 channel=6
					0, 9, 1, 0, 8, -12, 37, 16, -69,
					-- layer=2 filter=56 channel=7
					-33, -40, -69, 5, 39, 9, 24, -3, -16,
					-- layer=2 filter=56 channel=8
					-2, 14, 14, -38, -36, -15, -22, 15, 21,
					-- layer=2 filter=56 channel=9
					-9, 38, 34, -8, -40, 25, 18, 35, 2,
					-- layer=2 filter=56 channel=10
					10, 0, -10, 24, -11, 12, 28, 32, -22,
					-- layer=2 filter=56 channel=11
					-5, 28, 32, -42, -96, -5, 34, 30, -26,
					-- layer=2 filter=56 channel=12
					7, -7, -4, 38, 19, -18, 25, 17, 12,
					-- layer=2 filter=56 channel=13
					-99, -11, -8, -27, -42, -14, 27, -15, 40,
					-- layer=2 filter=56 channel=14
					16, 9, -16, -7, 4, -54, 27, 8, -48,
					-- layer=2 filter=56 channel=15
					-39, -9, -35, -5, 2, -25, -21, -14, -25,
					-- layer=2 filter=56 channel=16
					14, 53, 29, 0, 22, -14, 2, -20, -42,
					-- layer=2 filter=56 channel=17
					28, 19, 11, 1, 18, -9, -16, -9, -8,
					-- layer=2 filter=56 channel=18
					17, 16, -36, 39, -78, -84, -1, -46, -25,
					-- layer=2 filter=56 channel=19
					17, -2, 3, 0, -24, 0, -11, -26, 3,
					-- layer=2 filter=56 channel=20
					22, 21, 15, 30, 20, -5, 17, 0, 19,
					-- layer=2 filter=56 channel=21
					17, 14, 15, 3, 20, 35, -41, -29, -12,
					-- layer=2 filter=56 channel=22
					21, 12, 29, -2, 26, 8, 14, -1, 49,
					-- layer=2 filter=56 channel=23
					15, 4, 9, 19, 2, -16, 27, 5, -33,
					-- layer=2 filter=56 channel=24
					1, 18, -6, 17, 14, 1, -4, 5, -17,
					-- layer=2 filter=56 channel=25
					17, 13, 43, 21, -11, 13, 15, 79, 31,
					-- layer=2 filter=56 channel=26
					-3, -7, 5, -3, 11, -11, 9, 3, 15,
					-- layer=2 filter=56 channel=27
					3, 0, -8, -13, -7, -4, -13, 13, -6,
					-- layer=2 filter=56 channel=28
					10, -2, 0, 1, -9, 4, -13, 4, 1,
					-- layer=2 filter=56 channel=29
					12, 17, 2, -1, 38, 14, -12, 7, 34,
					-- layer=2 filter=56 channel=30
					25, -7, -1, 4, 26, -12, -2, -9, -27,
					-- layer=2 filter=56 channel=31
					24, 6, 42, -59, -45, 17, -22, 38, -26,
					-- layer=2 filter=56 channel=32
					26, 25, 25, 10, -34, -26, -41, -76, -65,
					-- layer=2 filter=56 channel=33
					1, -10, -5, 20, -14, -29, 17, -19, -47,
					-- layer=2 filter=56 channel=34
					-62, -56, -38, 2, -38, -13, -38, -7, -7,
					-- layer=2 filter=56 channel=35
					-18, -70, 6, 23, -87, -67, 5, 10, 0,
					-- layer=2 filter=56 channel=36
					-3, -31, -23, 37, 17, 2, 56, 22, 38,
					-- layer=2 filter=56 channel=37
					-52, -86, -71, 29, -32, 10, -46, -44, -27,
					-- layer=2 filter=56 channel=38
					-44, -12, 19, 15, -16, -26, 1, -6, 6,
					-- layer=2 filter=56 channel=39
					-36, -67, -25, 2, -43, -56, -50, -23, 18,
					-- layer=2 filter=56 channel=40
					3, 21, 47, 13, -28, -28, 15, 22, 71,
					-- layer=2 filter=56 channel=41
					27, 11, -1, 7, 11, -7, 8, -30, -45,
					-- layer=2 filter=56 channel=42
					0, 16, 5, -13, 29, -6, 6, -1, 3,
					-- layer=2 filter=56 channel=43
					15, 23, -7, -37, 12, -81, 5, -2, -64,
					-- layer=2 filter=56 channel=44
					24, 12, 16, 5, -11, 4, 1, -26, -7,
					-- layer=2 filter=56 channel=45
					16, -5, 0, 3, -2, -5, 10, -4, -76,
					-- layer=2 filter=56 channel=46
					6, -26, 16, 9, -17, 24, 73, 2, -30,
					-- layer=2 filter=56 channel=47
					-16, -8, 4, 7, 10, -16, 15, -37, -40,
					-- layer=2 filter=56 channel=48
					5, 20, 29, 16, 29, 14, 26, 30, 19,
					-- layer=2 filter=56 channel=49
					-112, -67, -29, -5, -38, -19, -112, -19, 66,
					-- layer=2 filter=56 channel=50
					-5, 28, 6, 6, 1, 5, 1, -45, -47,
					-- layer=2 filter=56 channel=51
					-7, -6, -39, -8, -34, -36, 18, 54, 33,
					-- layer=2 filter=56 channel=52
					0, 6, 21, -11, -19, 4, 8, 34, 1,
					-- layer=2 filter=56 channel=53
					-17, -45, 0, 0, -42, 11, -9, -4, -22,
					-- layer=2 filter=56 channel=54
					46, 11, -17, -20, -24, -55, -9, 10, -18,
					-- layer=2 filter=56 channel=55
					-16, -3, 10, 20, -46, -13, 17, 39, 29,
					-- layer=2 filter=56 channel=56
					17, 10, 22, -18, -8, 30, 24, 42, 76,
					-- layer=2 filter=56 channel=57
					3, -5, -8, -25, -19, -17, 28, -11, -21,
					-- layer=2 filter=56 channel=58
					-21, -65, 31, -1, -26, -28, -13, 10, 12,
					-- layer=2 filter=56 channel=59
					15, 21, -9, 13, 1, 16, -18, -37, -27,
					-- layer=2 filter=56 channel=60
					-69, -17, -23, -41, -39, -29, 20, -4, 22,
					-- layer=2 filter=56 channel=61
					0, 15, -3, -11, -43, -17, -5, 13, -15,
					-- layer=2 filter=56 channel=62
					37, 17, 27, 55, 24, -38, -41, -17, -4,
					-- layer=2 filter=56 channel=63
					15, -1, -6, 46, 9, -4, -20, -44, -28,
					-- layer=2 filter=57 channel=0
					-8, 12, 6, -60, -59, -61, -15, -27, -11,
					-- layer=2 filter=57 channel=1
					39, -10, 30, -3, 22, -22, 38, -9, -2,
					-- layer=2 filter=57 channel=2
					4, 22, 28, 26, 9, 16, -14, -32, -13,
					-- layer=2 filter=57 channel=3
					-19, -6, -6, -41, -7, -8, 10, -7, 10,
					-- layer=2 filter=57 channel=4
					42, 33, 50, 41, 9, -18, 23, -9, -19,
					-- layer=2 filter=57 channel=5
					17, -11, 21, -1, -31, -23, -41, -31, -9,
					-- layer=2 filter=57 channel=6
					-68, 34, 9, -36, 32, 36, -18, 31, -18,
					-- layer=2 filter=57 channel=7
					-28, 15, -27, 12, -18, 0, -26, -1, 48,
					-- layer=2 filter=57 channel=8
					-17, 32, 10, -102, -82, -36, -112, -86, -65,
					-- layer=2 filter=57 channel=9
					8, -10, -5, -19, -9, 0, 17, 7, -22,
					-- layer=2 filter=57 channel=10
					3, 10, 9, 34, 0, -11, 36, -5, 23,
					-- layer=2 filter=57 channel=11
					20, 43, 21, 14, -10, 18, 36, -9, 5,
					-- layer=2 filter=57 channel=12
					-7, -4, 31, 30, -7, 8, 13, -1, 18,
					-- layer=2 filter=57 channel=13
					19, 2, -8, 8, -24, -58, -72, -59, -15,
					-- layer=2 filter=57 channel=14
					-34, -21, -56, -6, -24, 0, 17, 33, 4,
					-- layer=2 filter=57 channel=15
					15, 19, 5, 5, 1, -9, -46, -8, 2,
					-- layer=2 filter=57 channel=16
					-38, -19, 0, -3, 30, 15, 22, -20, 6,
					-- layer=2 filter=57 channel=17
					-10, -5, 9, 2, -14, 6, -16, 19, 3,
					-- layer=2 filter=57 channel=18
					-3, -4, 12, -12, -86, -23, -47, 23, -3,
					-- layer=2 filter=57 channel=19
					-5, -5, -27, 15, -20, -6, -18, -25, -40,
					-- layer=2 filter=57 channel=20
					-27, -8, -9, 16, -11, -29, -11, -17, -12,
					-- layer=2 filter=57 channel=21
					42, 17, -2, -64, -58, -61, -4, -21, -29,
					-- layer=2 filter=57 channel=22
					-29, 0, -47, -46, -7, -45, 25, 19, 21,
					-- layer=2 filter=57 channel=23
					-30, 3, 5, -7, 43, 45, 42, 18, 15,
					-- layer=2 filter=57 channel=24
					-14, 17, -10, 1, 8, 12, 0, -14, 9,
					-- layer=2 filter=57 channel=25
					-30, 2, 53, 8, 29, -11, -66, -33, 55,
					-- layer=2 filter=57 channel=26
					10, 1, 3, 4, 4, -21, 16, -10, 6,
					-- layer=2 filter=57 channel=27
					2, -4, 4, -8, 11, 12, 3, -8, 13,
					-- layer=2 filter=57 channel=28
					6, -2, 16, 6, 10, 1, 11, -17, 2,
					-- layer=2 filter=57 channel=29
					-40, -37, 23, -60, -43, -20, -27, -39, 28,
					-- layer=2 filter=57 channel=30
					-15, -23, -41, -27, 43, -24, 20, -14, 23,
					-- layer=2 filter=57 channel=31
					6, -27, -3, 8, -8, 14, 54, -35, -3,
					-- layer=2 filter=57 channel=32
					-56, -76, -20, -15, -15, -40, -14, -11, -2,
					-- layer=2 filter=57 channel=33
					-25, 23, 9, -17, 25, -2, -13, 6, 6,
					-- layer=2 filter=57 channel=34
					7, -1, 15, -49, -15, -25, -9, -3, -1,
					-- layer=2 filter=57 channel=35
					18, 26, 75, 32, 40, -6, 37, 22, 35,
					-- layer=2 filter=57 channel=36
					17, 14, 9, 12, 10, 14, 27, 4, 6,
					-- layer=2 filter=57 channel=37
					-37, 1, -21, -6, -15, -19, -23, -13, 31,
					-- layer=2 filter=57 channel=38
					14, -8, 27, -16, -28, -32, 8, -21, -44,
					-- layer=2 filter=57 channel=39
					18, 12, 51, 10, 39, 1, 48, 5, 29,
					-- layer=2 filter=57 channel=40
					35, -19, 9, -16, -15, -40, 16, -3, 0,
					-- layer=2 filter=57 channel=41
					-4, 8, 5, -27, 8, 23, 4, 24, -7,
					-- layer=2 filter=57 channel=42
					-16, -2, -7, 1, -15, -7, -30, 7, 37,
					-- layer=2 filter=57 channel=43
					-32, -14, -7, 2, -4, -50, -20, -34, -31,
					-- layer=2 filter=57 channel=44
					49, 26, 35, 58, 31, 10, 16, -24, -25,
					-- layer=2 filter=57 channel=45
					-55, 0, -27, -115, 8, -8, -27, 0, -9,
					-- layer=2 filter=57 channel=46
					40, 32, 51, 29, 5, 6, 22, -3, 4,
					-- layer=2 filter=57 channel=47
					18, 40, 37, -6, 35, 6, -29, -16, -45,
					-- layer=2 filter=57 channel=48
					-12, -11, 10, 14, -14, 1, 16, -7, 22,
					-- layer=2 filter=57 channel=49
					2, -3, -2, -34, 23, 7, 8, -6, -12,
					-- layer=2 filter=57 channel=50
					-23, -18, 18, -12, -74, -48, -40, 0, -42,
					-- layer=2 filter=57 channel=51
					-49, -18, 2, -17, 12, -20, -26, 24, 18,
					-- layer=2 filter=57 channel=52
					4, 15, -3, 23, -2, 10, 31, 19, 20,
					-- layer=2 filter=57 channel=53
					-1, 20, -12, -8, 8, 6, 3, -21, -16,
					-- layer=2 filter=57 channel=54
					-34, 15, 11, 42, -19, -22, 10, -8, 0,
					-- layer=2 filter=57 channel=55
					-8, 19, 0, 35, 9, -13, 32, -17, -13,
					-- layer=2 filter=57 channel=56
					6, -3, 13, -5, -3, -8, 45, 1, 23,
					-- layer=2 filter=57 channel=57
					-29, -7, -2, -37, 19, 13, 4, 0, 14,
					-- layer=2 filter=57 channel=58
					-6, -28, -9, 5, 0, 12, -33, -42, -41,
					-- layer=2 filter=57 channel=59
					-62, -33, -42, -83, -41, -47, -12, -9, -11,
					-- layer=2 filter=57 channel=60
					65, 24, 16, 1, -17, 0, -28, 8, -29,
					-- layer=2 filter=57 channel=61
					-2, -10, -2, -61, -48, 24, 0, -31, -54,
					-- layer=2 filter=57 channel=62
					33, -1, -5, -7, -68, -80, -26, 44, -53,
					-- layer=2 filter=57 channel=63
					-17, -6, -41, -22, -4, -23, -32, 15, -21,
					-- layer=2 filter=58 channel=0
					2, -4, 14, -7, 20, 36, 6, 32, 45,
					-- layer=2 filter=58 channel=1
					-58, -21, -8, 7, 9, -9, 64, 48, 12,
					-- layer=2 filter=58 channel=2
					11, -3, -2, 0, -6, 11, -12, -7, -29,
					-- layer=2 filter=58 channel=3
					4, -4, 8, 5, -20, -12, -8, 23, -15,
					-- layer=2 filter=58 channel=4
					10, 7, 28, -22, -3, -40, -6, 2, -31,
					-- layer=2 filter=58 channel=5
					5, -22, -54, -13, 19, -37, 34, -12, -5,
					-- layer=2 filter=58 channel=6
					-17, 15, 7, -13, -7, -21, -12, -37, -23,
					-- layer=2 filter=58 channel=7
					29, 40, -19, 0, 5, 15, 27, 48, 30,
					-- layer=2 filter=58 channel=8
					-16, -38, -32, 6, 62, 78, 5, 30, 38,
					-- layer=2 filter=58 channel=9
					-58, -33, 8, -33, -56, 10, 26, -38, -12,
					-- layer=2 filter=58 channel=10
					-11, -6, 0, -9, -20, -21, -20, -9, 5,
					-- layer=2 filter=58 channel=11
					6, 28, 36, -62, -78, -45, 3, 1, 49,
					-- layer=2 filter=58 channel=12
					-2, 9, 20, 9, 9, 1, -20, -46, -35,
					-- layer=2 filter=58 channel=13
					32, 35, -52, 0, -24, -37, 4, 20, 5,
					-- layer=2 filter=58 channel=14
					-21, 24, -9, 5, 6, -27, 16, -15, -13,
					-- layer=2 filter=58 channel=15
					12, 27, -10, 9, 21, 10, 0, 23, 17,
					-- layer=2 filter=58 channel=16
					-38, -3, -18, -35, -26, -30, -45, -31, -36,
					-- layer=2 filter=58 channel=17
					2, 24, 17, -17, -10, -10, -14, 0, -11,
					-- layer=2 filter=58 channel=18
					-14, -14, -21, -10, -60, -35, -43, -47, -48,
					-- layer=2 filter=58 channel=19
					4, -19, -9, 3, -13, 19, -28, -10, -17,
					-- layer=2 filter=58 channel=20
					12, 31, 13, -20, 5, 4, -33, -35, -46,
					-- layer=2 filter=58 channel=21
					7, 10, 11, -1, 5, 35, -12, 9, -24,
					-- layer=2 filter=58 channel=22
					-9, -32, -21, -12, 16, -11, -3, 6, -29,
					-- layer=2 filter=58 channel=23
					-3, 25, 21, -31, -14, -5, -17, 6, 16,
					-- layer=2 filter=58 channel=24
					26, -4, 7, 14, 5, -11, -16, -12, -29,
					-- layer=2 filter=58 channel=25
					-13, -17, -19, 55, 33, -4, 61, 46, 28,
					-- layer=2 filter=58 channel=26
					9, 2, -17, 5, -10, 14, 5, 10, 9,
					-- layer=2 filter=58 channel=27
					11, 8, -13, -4, -3, 1, -12, -4, 0,
					-- layer=2 filter=58 channel=28
					22, -3, 1, 7, 26, -7, 7, 4, -4,
					-- layer=2 filter=58 channel=29
					0, 13, 36, 14, 11, 32, -39, -58, -52,
					-- layer=2 filter=58 channel=30
					-13, -57, -50, -5, -10, -47, 55, -33, -42,
					-- layer=2 filter=58 channel=31
					-16, -26, -16, -15, -9, -23, 34, 7, 20,
					-- layer=2 filter=58 channel=32
					0, 3, -19, 29, -25, -9, -24, 1, 6,
					-- layer=2 filter=58 channel=33
					8, 26, 20, 0, 28, 25, 14, 7, 7,
					-- layer=2 filter=58 channel=34
					8, 14, 6, 38, 25, 42, -12, 27, 37,
					-- layer=2 filter=58 channel=35
					-26, -32, -40, -36, -33, -26, 48, 3, 16,
					-- layer=2 filter=58 channel=36
					27, 7, -6, 7, -5, 6, -28, -35, -25,
					-- layer=2 filter=58 channel=37
					-16, 26, 13, -4, 8, 22, -12, 0, 13,
					-- layer=2 filter=58 channel=38
					-53, -27, -10, 33, -7, -40, 37, 24, -27,
					-- layer=2 filter=58 channel=39
					-47, -63, -9, 9, -12, -22, 27, 52, 48,
					-- layer=2 filter=58 channel=40
					-35, -55, -2, 21, -18, -30, 60, 16, -8,
					-- layer=2 filter=58 channel=41
					-12, 10, 11, -14, 20, 10, 6, 31, 0,
					-- layer=2 filter=58 channel=42
					4, -2, 0, -20, -7, 6, -17, 19, 14,
					-- layer=2 filter=58 channel=43
					-51, 13, -41, -107, -39, -19, -69, -6, -22,
					-- layer=2 filter=58 channel=44
					5, 34, 47, 0, 15, -35, 2, -17, -20,
					-- layer=2 filter=58 channel=45
					6, -3, -3, -8, -3, 2, -3, -2, -39,
					-- layer=2 filter=58 channel=46
					-36, -42, 11, 13, -49, 24, 50, 23, 69,
					-- layer=2 filter=58 channel=47
					13, 19, 14, -25, -4, 0, -45, -31, -39,
					-- layer=2 filter=58 channel=48
					-12, -39, -6, 16, -12, 25, 19, 0, -18,
					-- layer=2 filter=58 channel=49
					-5, 25, 0, -40, 2, -40, -65, 14, -3,
					-- layer=2 filter=58 channel=50
					9, 1, -5, 16, 1, 27, 2, -8, -15,
					-- layer=2 filter=58 channel=51
					17, -20, -5, 4, 38, 50, 52, 39, 15,
					-- layer=2 filter=58 channel=52
					-7, 40, 19, -63, -11, -52, -16, -37, 2,
					-- layer=2 filter=58 channel=53
					4, 16, 11, 0, 11, 13, 3, 21, 36,
					-- layer=2 filter=58 channel=54
					-13, 34, 23, -37, -34, -53, -49, -21, 15,
					-- layer=2 filter=58 channel=55
					27, 24, 43, -17, 11, -26, -43, -11, 5,
					-- layer=2 filter=58 channel=56
					-30, -48, 6, 20, 2, 3, 11, 10, 7,
					-- layer=2 filter=58 channel=57
					10, 24, -9, -9, 7, 30, -2, 1, 17,
					-- layer=2 filter=58 channel=58
					24, -3, -47, 0, -3, -11, -7, 48, 21,
					-- layer=2 filter=58 channel=59
					-15, 15, 42, 11, 34, 3, -50, -56, -40,
					-- layer=2 filter=58 channel=60
					-1, -27, 21, 36, 20, 32, 22, 51, 35,
					-- layer=2 filter=58 channel=61
					-3, -48, 3, 6, -48, -54, -50, -1, -58,
					-- layer=2 filter=58 channel=62
					37, 9, -27, 13, 84, 30, -8, -61, 20,
					-- layer=2 filter=58 channel=63
					4, 5, -37, -3, -18, -15, -25, 14, -19,
					-- layer=2 filter=59 channel=0
					-9, 8, 12, -20, -18, 23, -8, -3, 10,
					-- layer=2 filter=59 channel=1
					-31, 7, -12, -39, -15, -4, -25, -9, -11,
					-- layer=2 filter=59 channel=2
					-5, 0, -12, -1, -9, -29, 1, 22, 22,
					-- layer=2 filter=59 channel=3
					32, 24, 26, -7, 1, 2, 10, -29, -20,
					-- layer=2 filter=59 channel=4
					-14, -17, -39, -10, 8, 10, -8, -22, 8,
					-- layer=2 filter=59 channel=5
					66, 68, 32, 50, 38, 14, 29, 29, -3,
					-- layer=2 filter=59 channel=6
					-30, -57, -30, -25, -41, -45, 6, -38, 9,
					-- layer=2 filter=59 channel=7
					32, -16, -39, -8, -2, -34, 8, 3, 2,
					-- layer=2 filter=59 channel=8
					-43, -59, -26, -31, -42, -16, -21, -18, 5,
					-- layer=2 filter=59 channel=9
					-2, 3, 57, 41, 10, 0, -12, 1, -18,
					-- layer=2 filter=59 channel=10
					-2, 0, -18, 36, -4, -22, 47, 32, 14,
					-- layer=2 filter=59 channel=11
					3, -10, -16, 32, -32, -19, -7, 11, -14,
					-- layer=2 filter=59 channel=12
					-3, -2, 3, 30, 15, 0, -5, 6, 7,
					-- layer=2 filter=59 channel=13
					7, 28, 31, 29, 15, 27, 28, 11, -24,
					-- layer=2 filter=59 channel=14
					-17, -11, 0, 1, 19, 20, 39, 20, 6,
					-- layer=2 filter=59 channel=15
					-3, -23, -5, 35, -13, 2, 31, 24, 12,
					-- layer=2 filter=59 channel=16
					-14, -35, 3, 10, -12, 4, -10, 5, 15,
					-- layer=2 filter=59 channel=17
					7, 18, 32, -6, 10, 13, 21, 25, 25,
					-- layer=2 filter=59 channel=18
					38, 33, 14, -20, -9, -33, 74, -24, -29,
					-- layer=2 filter=59 channel=19
					-7, -28, -14, 4, -11, -6, 12, 1, 36,
					-- layer=2 filter=59 channel=20
					5, -3, 9, 1, -29, 0, 17, -1, -2,
					-- layer=2 filter=59 channel=21
					-16, -13, -34, -10, -11, 12, 12, -9, 16,
					-- layer=2 filter=59 channel=22
					-6, 7, 21, -31, 20, 35, 15, 21, 39,
					-- layer=2 filter=59 channel=23
					-30, -24, 11, 8, -21, 19, -4, -2, -11,
					-- layer=2 filter=59 channel=24
					-1, 27, 36, 1, 20, 7, 17, 3, 16,
					-- layer=2 filter=59 channel=25
					-55, -45, -40, 14, 45, -46, 8, 28, -59,
					-- layer=2 filter=59 channel=26
					10, -12, -1, -6, -3, -4, 8, 7, -9,
					-- layer=2 filter=59 channel=27
					9, -2, 13, -13, -11, 16, 7, 6, 9,
					-- layer=2 filter=59 channel=28
					0, -7, -12, -6, 0, 0, -6, 12, -15,
					-- layer=2 filter=59 channel=29
					-1, -12, -11, -10, -14, 20, 5, 2, 21,
					-- layer=2 filter=59 channel=30
					-7, -5, -16, 13, 14, 0, 7, 23, -7,
					-- layer=2 filter=59 channel=31
					13, -14, -20, 9, -17, 0, 14, 7, -28,
					-- layer=2 filter=59 channel=32
					-5, -18, -1, -2, 18, 32, 25, 18, -4,
					-- layer=2 filter=59 channel=33
					-24, -19, -23, -9, -21, 3, -21, -29, -10,
					-- layer=2 filter=59 channel=34
					18, 21, 29, 11, 19, 7, 25, -4, -4,
					-- layer=2 filter=59 channel=35
					-44, 2, 17, 33, 16, 50, -16, 9, 0,
					-- layer=2 filter=59 channel=36
					14, 6, 3, 2, 29, 9, 12, 7, 14,
					-- layer=2 filter=59 channel=37
					-5, -41, 5, 12, -25, 18, 7, 6, 13,
					-- layer=2 filter=59 channel=38
					7, 42, 32, -12, 31, 11, 33, -4, -4,
					-- layer=2 filter=59 channel=39
					25, 23, 16, -36, 30, 15, 28, 9, 13,
					-- layer=2 filter=59 channel=40
					0, 3, -1, -12, 15, 0, 23, -8, -28,
					-- layer=2 filter=59 channel=41
					-11, -23, -36, -12, 5, 29, -6, 3, 27,
					-- layer=2 filter=59 channel=42
					12, 7, 10, -7, -5, -14, -11, -4, -23,
					-- layer=2 filter=59 channel=43
					-27, -30, -10, 1, -36, -26, 13, 5, 21,
					-- layer=2 filter=59 channel=44
					-27, -34, -11, -8, -26, -28, -1, 0, 35,
					-- layer=2 filter=59 channel=45
					-4, 1, -35, -12, -7, 10, -2, -11, 21,
					-- layer=2 filter=59 channel=46
					-9, 12, -16, -7, -37, 0, -16, 7, -42,
					-- layer=2 filter=59 channel=47
					-3, -19, -18, -15, -2, -11, -14, 3, 26,
					-- layer=2 filter=59 channel=48
					16, 19, -18, -1, -5, -12, 25, 20, -5,
					-- layer=2 filter=59 channel=49
					41, 4, 9, -18, -13, -8, 1, -4, 14,
					-- layer=2 filter=59 channel=50
					0, -31, -22, 4, -37, -13, -3, 21, -33,
					-- layer=2 filter=59 channel=51
					-20, 20, 43, -7, 11, 4, -5, 7, 4,
					-- layer=2 filter=59 channel=52
					-25, 0, 15, 29, -25, -51, 36, 38, 10,
					-- layer=2 filter=59 channel=53
					-35, -51, -59, -9, -34, 5, -3, -7, 19,
					-- layer=2 filter=59 channel=54
					-13, -22, -32, 15, 0, 12, -32, -13, 10,
					-- layer=2 filter=59 channel=55
					-33, -29, -15, 1, -74, -83, -26, -3, -4,
					-- layer=2 filter=59 channel=56
					-17, 22, 15, -24, 21, -8, 0, 7, 0,
					-- layer=2 filter=59 channel=57
					6, -21, -11, 19, -11, 8, 0, 22, 0,
					-- layer=2 filter=59 channel=58
					31, 39, 33, -26, -3, -31, -20, -25, -39,
					-- layer=2 filter=59 channel=59
					-18, -18, 17, -37, -43, 9, 9, 7, 23,
					-- layer=2 filter=59 channel=60
					-17, 25, 48, 27, 48, 3, -3, -7, 11,
					-- layer=2 filter=59 channel=61
					32, -3, 3, 13, 41, -1, 18, -24, -14,
					-- layer=2 filter=59 channel=62
					42, 62, -20, 79, 88, 24, 19, -12, -33,
					-- layer=2 filter=59 channel=63
					11, -17, -1, -20, 10, 0, 6, 14, 27,
					-- layer=2 filter=60 channel=0
					24, 39, 48, 48, 21, 7, 26, 13, 27,
					-- layer=2 filter=60 channel=1
					-67, -25, -45, -138, -76, -39, -91, -73, -9,
					-- layer=2 filter=60 channel=2
					34, 0, 6, -20, -25, -9, -15, -7, 9,
					-- layer=2 filter=60 channel=3
					-15, 0, -27, 13, 18, 8, 0, -7, 21,
					-- layer=2 filter=60 channel=4
					30, 2, -2, -8, -27, -3, -19, -5, 6,
					-- layer=2 filter=60 channel=5
					-60, -28, -48, -46, -19, -19, -10, -3, 20,
					-- layer=2 filter=60 channel=6
					-10, -2, -17, 0, -4, -35, 2, 11, 25,
					-- layer=2 filter=60 channel=7
					3, -6, 35, 41, 29, 49, 35, -1, 8,
					-- layer=2 filter=60 channel=8
					17, -20, -6, 44, 24, 35, 46, 13, 32,
					-- layer=2 filter=60 channel=9
					-46, -18, -36, -92, -63, -55, -83, -60, 28,
					-- layer=2 filter=60 channel=10
					22, 55, 19, 45, 33, 44, 45, -31, 12,
					-- layer=2 filter=60 channel=11
					5, 24, 10, 19, -12, 12, 15, -1, 37,
					-- layer=2 filter=60 channel=12
					28, 10, 12, 8, -15, -8, -1, 6, 5,
					-- layer=2 filter=60 channel=13
					-25, -31, 8, -47, -21, -7, -62, -28, 25,
					-- layer=2 filter=60 channel=14
					-25, -27, 9, 6, 10, -5, -19, -11, -15,
					-- layer=2 filter=60 channel=15
					12, 33, 38, 15, 3, 23, 15, 24, 2,
					-- layer=2 filter=60 channel=16
					11, 2, 22, 3, -1, -8, 3, 28, 23,
					-- layer=2 filter=60 channel=17
					7, -26, -10, -5, 7, 11, -2, 8, -4,
					-- layer=2 filter=60 channel=18
					-2, -17, -76, -26, -9, 21, -51, 15, -7,
					-- layer=2 filter=60 channel=19
					-9, 2, 8, -10, -13, -26, -22, -7, 18,
					-- layer=2 filter=60 channel=20
					32, 7, -36, 9, -11, -15, -30, 0, -36,
					-- layer=2 filter=60 channel=21
					-18, -3, -5, 6, 20, 35, -16, 9, -22,
					-- layer=2 filter=60 channel=22
					-25, -7, 0, -19, 21, 12, -22, 12, -10,
					-- layer=2 filter=60 channel=23
					3, 13, 32, -28, -10, -28, -37, 22, 3,
					-- layer=2 filter=60 channel=24
					27, 4, -13, -9, 13, 19, 7, 7, 23,
					-- layer=2 filter=60 channel=25
					-55, -48, 1, -46, 16, -4, -62, -59, -28,
					-- layer=2 filter=60 channel=26
					-12, -8, 18, -3, -12, -5, 11, -4, 16,
					-- layer=2 filter=60 channel=27
					4, -7, -12, 1, -14, -6, -13, -10, 0,
					-- layer=2 filter=60 channel=28
					7, -6, 0, 3, -2, 6, 1, 5, 9,
					-- layer=2 filter=60 channel=29
					31, 11, 6, 14, 29, 24, 9, 6, -12,
					-- layer=2 filter=60 channel=30
					-2, -19, -15, -23, -5, -4, -15, -17, -25,
					-- layer=2 filter=60 channel=31
					-83, 18, -20, -61, -90, -4, -76, -63, -13,
					-- layer=2 filter=60 channel=32
					-10, -20, -21, -8, 9, -19, -22, 0, 22,
					-- layer=2 filter=60 channel=33
					-3, 7, 8, -13, 9, -10, -13, 10, 15,
					-- layer=2 filter=60 channel=34
					-2, 20, 44, 24, 25, 37, 35, 9, 11,
					-- layer=2 filter=60 channel=35
					-89, -47, -71, -69, -107, -81, -170, -108, -68,
					-- layer=2 filter=60 channel=36
					26, -2, -9, 20, -12, -18, 5, -6, 14,
					-- layer=2 filter=60 channel=37
					35, 14, 9, 69, 26, 43, 0, 13, -20,
					-- layer=2 filter=60 channel=38
					-66, -26, -53, -112, -57, -39, -102, -93, -39,
					-- layer=2 filter=60 channel=39
					-63, 4, 32, -47, -7, 14, -28, -41, -38,
					-- layer=2 filter=60 channel=40
					-37, -10, -31, -46, -45, -27, -70, 0, -29,
					-- layer=2 filter=60 channel=41
					5, 3, 21, -12, 15, 5, -20, -5, 7,
					-- layer=2 filter=60 channel=42
					6, -3, -3, -3, -13, 14, -15, -16, 0,
					-- layer=2 filter=60 channel=43
					5, -1, 11, -10, 11, -34, 17, 54, 0,
					-- layer=2 filter=60 channel=44
					29, 24, 21, -2, 9, -10, 28, 43, 41,
					-- layer=2 filter=60 channel=45
					-23, -22, 5, -18, -5, 17, -39, 12, 3,
					-- layer=2 filter=60 channel=46
					-43, -50, 6, -141, -118, -4, -91, -112, -49,
					-- layer=2 filter=60 channel=47
					-10, -5, -1, -3, 22, -4, -26, 22, 22,
					-- layer=2 filter=60 channel=48
					29, -3, 0, 26, 0, 14, 10, -11, 0,
					-- layer=2 filter=60 channel=49
					30, 36, -7, -49, 17, 30, 66, 31, 17,
					-- layer=2 filter=60 channel=50
					11, 19, 20, -23, 2, 1, 23, 1, 3,
					-- layer=2 filter=60 channel=51
					-2, -26, 30, -48, -61, 25, -47, -5, -18,
					-- layer=2 filter=60 channel=52
					19, 60, 73, 9, -8, 17, 18, 8, 13,
					-- layer=2 filter=60 channel=53
					16, 26, 21, 1, 1, 40, -3, 25, -13,
					-- layer=2 filter=60 channel=54
					-6, 0, 21, -3, 5, 0, 23, 63, 16,
					-- layer=2 filter=60 channel=55
					3, 63, 90, 6, -12, 41, 23, -5, 20,
					-- layer=2 filter=60 channel=56
					-5, 13, 31, -41, -58, 37, -55, -55, 3,
					-- layer=2 filter=60 channel=57
					7, -15, 27, -11, 24, 2, -35, -10, 10,
					-- layer=2 filter=60 channel=58
					0, 33, 18, -47, -57, 19, -45, -48, -34,
					-- layer=2 filter=60 channel=59
					-10, 27, 10, -6, 4, 4, 23, -15, -42,
					-- layer=2 filter=60 channel=60
					-7, -29, 4, -79, -56, -42, -87, -154, 25,
					-- layer=2 filter=60 channel=61
					3, -18, 41, -9, -54, 28, -43, -24, 38,
					-- layer=2 filter=60 channel=62
					102, 96, 21, 33, 8, -28, 40, 0, -22,
					-- layer=2 filter=60 channel=63
					-9, -33, -16, 8, 8, 7, -11, 6, 6,
					-- layer=2 filter=61 channel=0
					-28, 0, 20, 7, 7, -4, 11, -14, -1,
					-- layer=2 filter=61 channel=1
					19, -20, 27, -50, -37, 6, 29, -11, 20,
					-- layer=2 filter=61 channel=2
					0, 5, 22, -28, -13, -17, 18, 17, 12,
					-- layer=2 filter=61 channel=3
					17, 6, -8, 36, 26, 8, -25, -13, -5,
					-- layer=2 filter=61 channel=4
					-19, 4, 13, 4, 29, 0, 40, 39, 29,
					-- layer=2 filter=61 channel=5
					16, 26, 12, 26, 20, 26, 78, 48, 63,
					-- layer=2 filter=61 channel=6
					12, -21, -10, -24, -25, -43, -28, -26, 0,
					-- layer=2 filter=61 channel=7
					22, 40, 24, 14, 13, 7, -25, -69, 2,
					-- layer=2 filter=61 channel=8
					30, 10, 41, 28, 28, 54, 10, -12, 3,
					-- layer=2 filter=61 channel=9
					-4, -8, 10, -26, -63, -32, -56, 4, -37,
					-- layer=2 filter=61 channel=10
					8, 35, 25, -50, -74, -64, -55, -48, -43,
					-- layer=2 filter=61 channel=11
					-30, -16, -55, -48, -75, -86, -39, 3, -2,
					-- layer=2 filter=61 channel=12
					17, 7, 24, -7, 19, -15, 0, 13, -19,
					-- layer=2 filter=61 channel=13
					4, -44, 11, 16, -60, 12, -32, 16, 25,
					-- layer=2 filter=61 channel=14
					5, 7, 9, -8, -13, 2, -41, -4, 1,
					-- layer=2 filter=61 channel=15
					10, 31, 11, 19, 4, -3, -11, 17, 3,
					-- layer=2 filter=61 channel=16
					-11, 12, 29, -53, 19, 2, 12, 3, 6,
					-- layer=2 filter=61 channel=17
					38, 7, -24, -15, -7, 8, -1, -13, 9,
					-- layer=2 filter=61 channel=18
					61, 27, -24, -23, 24, 8, -2, 0, 53,
					-- layer=2 filter=61 channel=19
					-17, -6, 10, -2, -2, -4, 12, 19, -14,
					-- layer=2 filter=61 channel=20
					10, 30, 11, -10, 9, -8, -24, 0, -9,
					-- layer=2 filter=61 channel=21
					30, 12, -26, 12, 4, 16, 14, -3, 22,
					-- layer=2 filter=61 channel=22
					38, 45, 49, 35, 21, 17, -24, -33, -35,
					-- layer=2 filter=61 channel=23
					21, 11, -9, -20, 3, 14, -12, 2, 17,
					-- layer=2 filter=61 channel=24
					25, -6, 17, 22, 38, 20, 1, 3, 8,
					-- layer=2 filter=61 channel=25
					27, 52, 11, 12, -8, -20, -22, 19, 21,
					-- layer=2 filter=61 channel=26
					-7, 11, -7, 10, 1, 8, 6, -5, 7,
					-- layer=2 filter=61 channel=27
					11, 8, -7, -5, 1, -13, -8, -3, 15,
					-- layer=2 filter=61 channel=28
					9, -4, -9, 0, 9, -15, 11, 15, -8,
					-- layer=2 filter=61 channel=29
					28, 15, 9, 11, 5, -23, -14, -26, -36,
					-- layer=2 filter=61 channel=30
					1, -8, 3, -5, 15, 29, -26, -36, -32,
					-- layer=2 filter=61 channel=31
					-49, -43, 6, -55, -112, -58, -56, 4, -5,
					-- layer=2 filter=61 channel=32
					13, -4, 19, -20, 11, 0, -47, -25, 6,
					-- layer=2 filter=61 channel=33
					27, -14, 8, -3, 7, 9, -2, 12, 26,
					-- layer=2 filter=61 channel=34
					3, 32, 18, 8, 11, -34, -33, -49, -32,
					-- layer=2 filter=61 channel=35
					-37, -64, -2, 8, -83, -51, -2, -23, 10,
					-- layer=2 filter=61 channel=36
					10, 22, 0, 28, 3, -5, 27, -3, -26,
					-- layer=2 filter=61 channel=37
					-22, -1, 8, 2, -27, -24, -51, -81, 1,
					-- layer=2 filter=61 channel=38
					50, -10, 34, 12, 6, 49, 7, 35, 48,
					-- layer=2 filter=61 channel=39
					0, -7, 8, -24, -13, -15, -6, -39, -18,
					-- layer=2 filter=61 channel=40
					7, 5, 36, 54, -8, 51, 35, 24, 14,
					-- layer=2 filter=61 channel=41
					7, 6, 7, 3, 11, 14, 5, 7, 33,
					-- layer=2 filter=61 channel=42
					0, 8, -7, -12, 4, -46, 53, -3, 11,
					-- layer=2 filter=61 channel=43
					-17, 17, 31, -29, -6, 22, -4, -17, 17,
					-- layer=2 filter=61 channel=44
					-5, 19, 21, -37, 23, 24, 12, 20, 26,
					-- layer=2 filter=61 channel=45
					6, 0, -27, -27, 16, 17, -8, -25, -13,
					-- layer=2 filter=61 channel=46
					-25, -29, -15, -5, -39, 23, -32, -37, -1,
					-- layer=2 filter=61 channel=47
					-12, 16, -1, -4, 20, -7, -28, 9, 14,
					-- layer=2 filter=61 channel=48
					22, 6, 17, 6, -7, -13, 31, 7, -35,
					-- layer=2 filter=61 channel=49
					17, 29, 34, -34, -8, 42, 39, 45, 15,
					-- layer=2 filter=61 channel=50
					12, -13, 14, 35, 14, 15, 26, 13, 21,
					-- layer=2 filter=61 channel=51
					31, -16, 1, 1, -41, -9, 46, -16, -37,
					-- layer=2 filter=61 channel=52
					-8, 5, 28, -63, -117, -64, -57, -14, -8,
					-- layer=2 filter=61 channel=53
					-13, 1, 14, -7, 12, 3, 8, 17, 65,
					-- layer=2 filter=61 channel=54
					-25, -14, -10, -57, -21, -2, -36, -25, 29,
					-- layer=2 filter=61 channel=55
					13, -1, -35, -22, -98, -49, -14, -20, -20,
					-- layer=2 filter=61 channel=56
					0, 39, 37, -10, -35, -4, -7, -26, -16,
					-- layer=2 filter=61 channel=57
					1, 17, -28, -8, -15, 18, -32, 5, 4,
					-- layer=2 filter=61 channel=58
					29, -47, -37, 9, 7, -9, -15, 1, 32,
					-- layer=2 filter=61 channel=59
					56, 2, 28, -28, 5, -18, -43, -42, -20,
					-- layer=2 filter=61 channel=60
					-11, 5, 24, -39, -8, -41, -10, 22, -60,
					-- layer=2 filter=61 channel=61
					-4, 31, 11, -5, 39, -26, 9, -4, 54,
					-- layer=2 filter=61 channel=62
					49, 34, 71, 10, 38, 89, 39, 69, 28,
					-- layer=2 filter=61 channel=63
					6, 0, -2, -1, -4, -8, -19, -29, -7,
					-- layer=2 filter=62 channel=0
					4, -11, -61, 46, 2, -53, -30, -52, -71,
					-- layer=2 filter=62 channel=1
					-67, -9, -9, -15, -18, -57, 5, -60, -49,
					-- layer=2 filter=62 channel=2
					-11, 31, 22, -9, 14, 18, 1, 8, 18,
					-- layer=2 filter=62 channel=3
					9, 10, -3, 10, 10, 4, -20, 0, -13,
					-- layer=2 filter=62 channel=4
					-1, 18, 27, 0, 18, 54, 35, 55, 46,
					-- layer=2 filter=62 channel=5
					-12, 19, -23, -76, 32, -68, -45, -3, -16,
					-- layer=2 filter=62 channel=6
					19, -12, -1, 26, -13, -20, 7, 18, 0,
					-- layer=2 filter=62 channel=7
					100, 11, 14, 58, -11, -15, 42, 44, 21,
					-- layer=2 filter=62 channel=8
					-4, -2, -20, 1, -50, -68, -33, -69, -63,
					-- layer=2 filter=62 channel=9
					-19, -13, 20, -49, -5, -30, 28, -19, -29,
					-- layer=2 filter=62 channel=10
					-58, -61, -76, -31, -15, -73, 0, -9, -14,
					-- layer=2 filter=62 channel=11
					-77, -88, -111, 8, -61, -81, 8, 2, -4,
					-- layer=2 filter=62 channel=12
					14, 5, 16, -10, 19, -4, -19, 4, 25,
					-- layer=2 filter=62 channel=13
					-73, -30, 31, -126, 20, -56, -58, -4, -14,
					-- layer=2 filter=62 channel=14
					9, 8, -14, -3, -17, -6, -28, 15, -33,
					-- layer=2 filter=62 channel=15
					-19, 5, 6, 38, 16, 2, -2, 21, 5,
					-- layer=2 filter=62 channel=16
					7, 33, 43, 0, 19, 32, 18, 10, 20,
					-- layer=2 filter=62 channel=17
					36, 3, 5, -23, 5, 20, -6, 19, 19,
					-- layer=2 filter=62 channel=18
					-81, 9, -79, 13, 55, -26, -3, 39, -2,
					-- layer=2 filter=62 channel=19
					12, -8, -16, -16, -8, 0, -3, 7, 13,
					-- layer=2 filter=62 channel=20
					-20, 24, -13, 5, 11, -11, -27, -11, -3,
					-- layer=2 filter=62 channel=21
					23, 0, 11, 31, 0, -2, -1, 6, 0,
					-- layer=2 filter=62 channel=22
					60, 41, 13, 9, 13, 25, -16, -21, 1,
					-- layer=2 filter=62 channel=23
					4, -2, 10, -8, -6, -1, 5, 3, 2,
					-- layer=2 filter=62 channel=24
					7, 18, 16, -9, 0, 40, -9, 22, 9,
					-- layer=2 filter=62 channel=25
					-39, -91, 28, 38, 8, -68, 45, 31, 53,
					-- layer=2 filter=62 channel=26
					-12, -6, -7, 12, 11, 0, 0, -10, 3,
					-- layer=2 filter=62 channel=27
					13, 11, -1, -5, -8, 13, 8, -9, -9,
					-- layer=2 filter=62 channel=28
					-10, 9, 3, 1, 1, 0, -8, 24, -19,
					-- layer=2 filter=62 channel=29
					35, 31, 17, 25, 16, 7, -2, -20, 3,
					-- layer=2 filter=62 channel=30
					45, 41, 37, -16, 20, 36, -6, 14, -36,
					-- layer=2 filter=62 channel=31
					-144, -44, -95, 8, -37, -92, 43, 18, -11,
					-- layer=2 filter=62 channel=32
					-1, 16, 20, -1, 2, 6, -1, 14, 38,
					-- layer=2 filter=62 channel=33
					33, -10, -11, 38, 3, -19, 6, 15, -22,
					-- layer=2 filter=62 channel=34
					-2, -33, -55, 16, -31, -41, -20, -8, -18,
					-- layer=2 filter=62 channel=35
					-33, -24, -27, -10, -12, 8, -1, 20, 6,
					-- layer=2 filter=62 channel=36
					5, -13, 8, 12, 3, 12, -13, 8, 27,
					-- layer=2 filter=62 channel=37
					32, 11, -41, 48, 1, -23, 26, -3, 10,
					-- layer=2 filter=62 channel=38
					-33, -4, 16, -21, -25, -67, -2, -38, -23,
					-- layer=2 filter=62 channel=39
					-57, -59, -22, -31, -48, -79, -20, -11, -15,
					-- layer=2 filter=62 channel=40
					26, 56, 37, -16, 14, 18, -7, -18, -26,
					-- layer=2 filter=62 channel=41
					32, -3, 2, 20, 6, 7, -13, -18, -7,
					-- layer=2 filter=62 channel=42
					6, 10, 33, 29, 11, 7, 29, 24, 24,
					-- layer=2 filter=62 channel=43
					28, 36, 29, 22, 49, 11, 27, 33, 44,
					-- layer=2 filter=62 channel=44
					2, 25, 24, -7, 32, 36, 17, 40, 46,
					-- layer=2 filter=62 channel=45
					25, 9, 0, 5, 6, -13, 18, -10, 9,
					-- layer=2 filter=62 channel=46
					-47, -20, 38, -32, 18, 18, 95, 25, -31,
					-- layer=2 filter=62 channel=47
					2, 27, 3, -19, 14, 9, -23, 15, 28,
					-- layer=2 filter=62 channel=48
					29, 25, 21, -14, 14, 8, 15, 3, 11,
					-- layer=2 filter=62 channel=49
					-23, -90, -15, 17, 48, -22, -36, -18, -11,
					-- layer=2 filter=62 channel=50
					2, 17, 18, 39, -6, -37, 0, -7, -23,
					-- layer=2 filter=62 channel=51
					-33, -46, 23, 11, -16, -8, -16, 35, 8,
					-- layer=2 filter=62 channel=52
					-87, -112, -111, 22, -63, -54, -33, -23, -44,
					-- layer=2 filter=62 channel=53
					-5, 4, -3, 44, 33, -14, 30, 17, 10,
					-- layer=2 filter=62 channel=54
					-12, -9, 5, 7, 11, 10, -10, -17, 69,
					-- layer=2 filter=62 channel=55
					-63, -125, -103, 39, -46, -57, -25, -15, -43,
					-- layer=2 filter=62 channel=56
					-15, -2, 32, -5, 5, 7, 16, -2, -18,
					-- layer=2 filter=62 channel=57
					12, 4, -10, -7, -9, -1, 10, 0, -14,
					-- layer=2 filter=62 channel=58
					-15, -64, -34, -33, 35, 5, -30, -26, 8,
					-- layer=2 filter=62 channel=59
					31, 15, -11, -7, -15, -4, -19, -22, -13,
					-- layer=2 filter=62 channel=60
					-13, -5, 70, -26, 32, 66, 17, 10, -11,
					-- layer=2 filter=62 channel=61
					-116, -10, -23, 50, -35, -65, 27, -17, -11,
					-- layer=2 filter=62 channel=62
					9, -9, -30, -30, -82, -44, -54, -46, -85,
					-- layer=2 filter=62 channel=63
					23, 1, 6, -9, -9, -20, -2, -31, -18,
					-- layer=2 filter=63 channel=0
					12, 2, -5, 28, 5, -43, 0, -16, 1,
					-- layer=2 filter=63 channel=1
					-7, 33, 6, 8, 18, 57, 4, -6, 34,
					-- layer=2 filter=63 channel=2
					22, -1, -18, -16, 6, -13, 18, -12, -20,
					-- layer=2 filter=63 channel=3
					2, -2, -12, 16, -31, 11, -15, -18, -5,
					-- layer=2 filter=63 channel=4
					0, -2, -13, 21, -6, -27, -13, -42, -12,
					-- layer=2 filter=63 channel=5
					-7, 14, -29, 55, 14, -20, 60, 48, -62,
					-- layer=2 filter=63 channel=6
					6, 4, 31, -33, 0, 54, -102, 2, 58,
					-- layer=2 filter=63 channel=7
					-6, -4, -17, 40, 21, -5, 12, 24, 42,
					-- layer=2 filter=63 channel=8
					70, 0, -6, 70, -4, -27, 2, -12, -31,
					-- layer=2 filter=63 channel=9
					-25, 13, 42, -15, -29, 31, -10, 0, 42,
					-- layer=2 filter=63 channel=10
					-46, -8, 24, -28, 0, 0, 20, 24, 7,
					-- layer=2 filter=63 channel=11
					-61, 6, 12, 7, -3, -1, -14, -27, -17,
					-- layer=2 filter=63 channel=12
					16, 6, -9, 2, 4, -17, 12, -11, -11,
					-- layer=2 filter=63 channel=13
					-33, 39, 44, 0, 62, 25, 59, 80, -10,
					-- layer=2 filter=63 channel=14
					12, -4, 11, -9, -13, 3, -51, -25, 22,
					-- layer=2 filter=63 channel=15
					14, -5, 20, -9, -3, -11, -17, -40, 43,
					-- layer=2 filter=63 channel=16
					-25, -12, 4, -21, 25, 30, -39, 26, 19,
					-- layer=2 filter=63 channel=17
					0, 0, -3, -19, 1, 8, -54, -2, 3,
					-- layer=2 filter=63 channel=18
					-52, 6, 30, 7, 18, -27, 34, 1, -3,
					-- layer=2 filter=63 channel=19
					39, 16, -25, 44, -22, -44, 20, -34, -53,
					-- layer=2 filter=63 channel=20
					7, -11, -7, -4, 1, -9, -29, -11, -7,
					-- layer=2 filter=63 channel=21
					-7, 5, -6, -28, 9, 48, -52, -26, 33,
					-- layer=2 filter=63 channel=22
					-11, -14, -5, -20, -43, 10, -40, -5, -10,
					-- layer=2 filter=63 channel=23
					5, -33, 33, -69, -23, 50, -59, 5, 54,
					-- layer=2 filter=63 channel=24
					16, -5, 14, -21, 14, -1, -31, 19, 13,
					-- layer=2 filter=63 channel=25
					-93, -22, 2, 22, 3, 26, 0, -5, -11,
					-- layer=2 filter=63 channel=26
					-1, -10, 12, 3, 9, -4, 17, 11, -15,
					-- layer=2 filter=63 channel=27
					-13, 1, 13, 4, -1, 8, -2, 13, 5,
					-- layer=2 filter=63 channel=28
					-15, 15, -17, -9, 0, -1, 3, -2, 4,
					-- layer=2 filter=63 channel=29
					22, 5, -8, 14, 6, 11, 11, -17, -24,
					-- layer=2 filter=63 channel=30
					-12, -17, -7, -7, -42, -8, -28, 38, 19,
					-- layer=2 filter=63 channel=31
					-33, -7, 70, -25, 0, 32, -9, -39, 17,
					-- layer=2 filter=63 channel=32
					-22, 6, 10, -39, -1, 13, -13, 31, 5,
					-- layer=2 filter=63 channel=33
					5, -2, 37, -32, -6, 62, -73, 0, 50,
					-- layer=2 filter=63 channel=34
					-3, -22, -2, 15, -14, -37, 6, -35, -11,
					-- layer=2 filter=63 channel=35
					-37, -1, 18, -56, 2, 46, -15, -5, 0,
					-- layer=2 filter=63 channel=36
					10, 9, -24, 28, 3, -6, 16, -9, -11,
					-- layer=2 filter=63 channel=37
					-12, -15, 12, 14, -13, -21, 4, -39, -11,
					-- layer=2 filter=63 channel=38
					39, 36, 25, 39, -20, 26, 11, -2, 35,
					-- layer=2 filter=63 channel=39
					-14, 13, 2, 55, 5, -20, 48, -31, 0,
					-- layer=2 filter=63 channel=40
					14, 29, 0, 5, -36, 15, 15, 1, 30,
					-- layer=2 filter=63 channel=41
					9, 0, 12, -28, -14, 63, -74, -1, 32,
					-- layer=2 filter=63 channel=42
					3, -13, 15, -26, 5, -1, -22, -6, 4,
					-- layer=2 filter=63 channel=43
					-15, 18, 20, -23, 40, 15, -7, 21, 6,
					-- layer=2 filter=63 channel=44
					13, -3, 7, 16, -6, 21, -13, -47, 10,
					-- layer=2 filter=63 channel=45
					23, -8, -14, -3, -28, 53, -83, 2, 16,
					-- layer=2 filter=63 channel=46
					-50, -42, -5, -23, -52, -29, -13, -35, 21,
					-- layer=2 filter=63 channel=47
					42, -3, -1, 18, -24, 21, -25, -29, 33,
					-- layer=2 filter=63 channel=48
					9, 0, -11, 4, 17, -14, 12, 12, -19,
					-- layer=2 filter=63 channel=49
					-16, -2, 3, 38, 3, 1, -7, -12, -30,
					-- layer=2 filter=63 channel=50
					0, -20, -1, -10, -14, 24, -58, -9, 52,
					-- layer=2 filter=63 channel=51
					-64, -16, 73, 18, -37, -2, 0, 13, 79,
					-- layer=2 filter=63 channel=52
					-49, 0, 2, -31, -18, 12, 10, -5, -8,
					-- layer=2 filter=63 channel=53
					-25, -14, 37, -43, -20, 46, -47, 10, 29,
					-- layer=2 filter=63 channel=54
					-16, -17, 13, 10, 41, 13, 24, -53, -28,
					-- layer=2 filter=63 channel=55
					-14, 29, 37, -9, -5, -11, 46, 36, 15,
					-- layer=2 filter=63 channel=56
					-24, -4, 8, -15, -16, -7, 16, 19, 4,
					-- layer=2 filter=63 channel=57
					-12, -22, 7, -57, -1, 14, -73, 0, 49,
					-- layer=2 filter=63 channel=58
					-40, 35, -51, 35, -12, -30, 25, -20, -36,
					-- layer=2 filter=63 channel=59
					-9, -28, -14, -29, -23, 40, -48, 47, 30,
					-- layer=2 filter=63 channel=60
					-15, 3, -21, -35, 8, -28, -21, 14, -14,
					-- layer=2 filter=63 channel=61
					-37, 10, 47, -19, 15, 53, 51, 17, 27,
					-- layer=2 filter=63 channel=62
					-32, -40, -8, 5, 47, 14, 19, -6, -25,
					-- layer=2 filter=63 channel=63
					23, -1, -19, -1, -18, 28, 0, 13, -17,
					-- layer=2 filter=64 channel=0
					-3, -13, -8, -25, -18, -19, -10, -3, 10,
					-- layer=2 filter=64 channel=1
					-7, -1, -22, -9, -24, 8, 4, -12, 0,
					-- layer=2 filter=64 channel=2
					-17, -12, -7, -12, -12, -23, -6, -16, -10,
					-- layer=2 filter=64 channel=3
					1, 4, -14, -17, -14, -24, 6, -19, -21,
					-- layer=2 filter=64 channel=4
					0, -21, -16, -4, -27, -15, -14, -24, 10,
					-- layer=2 filter=64 channel=5
					16, 10, -9, 1, -8, -11, -6, -6, -17,
					-- layer=2 filter=64 channel=6
					-6, -1, -12, -19, 9, -13, 4, -13, 1,
					-- layer=2 filter=64 channel=7
					-17, 5, -19, -7, -15, 10, -15, 5, -20,
					-- layer=2 filter=64 channel=8
					-6, -13, 12, -18, 0, 1, -21, 4, -11,
					-- layer=2 filter=64 channel=9
					-13, 0, -20, -3, -22, -4, -8, -6, -9,
					-- layer=2 filter=64 channel=10
					-18, -17, -1, 1, -9, -18, -3, -21, -8,
					-- layer=2 filter=64 channel=11
					5, -5, -16, 12, -6, -18, -1, -1, -9,
					-- layer=2 filter=64 channel=12
					-7, -15, -2, -24, -15, -27, -1, 2, -23,
					-- layer=2 filter=64 channel=13
					-7, -11, -11, 7, -16, 4, 18, -12, -9,
					-- layer=2 filter=64 channel=14
					-13, -1, 4, -10, 5, 1, -1, -8, -16,
					-- layer=2 filter=64 channel=15
					-8, -11, 3, -5, 2, 5, -11, -1, -10,
					-- layer=2 filter=64 channel=16
					-5, -21, -3, -20, -19, -13, -20, -15, -23,
					-- layer=2 filter=64 channel=17
					-22, 0, 3, -18, -15, -21, -3, -9, -22,
					-- layer=2 filter=64 channel=18
					1, 22, 7, 5, -5, -3, -6, -7, -16,
					-- layer=2 filter=64 channel=19
					5, -16, -7, -3, 8, -11, 3, -9, 1,
					-- layer=2 filter=64 channel=20
					-25, -13, -16, -9, -16, -22, -6, -19, -17,
					-- layer=2 filter=64 channel=21
					3, -22, -2, 0, -1, -1, -13, -17, -1,
					-- layer=2 filter=64 channel=22
					0, -15, -23, 5, -16, -16, -2, 2, 1,
					-- layer=2 filter=64 channel=23
					-18, 1, 10, 8, 10, 0, 2, 6, -1,
					-- layer=2 filter=64 channel=24
					-20, -19, -19, -14, -10, -22, -7, -22, -9,
					-- layer=2 filter=64 channel=25
					-12, 11, 14, 6, -11, 4, 13, 4, 0,
					-- layer=2 filter=64 channel=26
					11, -10, 15, -10, 0, -13, -5, -8, 14,
					-- layer=2 filter=64 channel=27
					1, 3, -1, -13, 14, -13, -5, 8, 12,
					-- layer=2 filter=64 channel=28
					-11, 13, 1, 4, -11, 7, 11, 14, 15,
					-- layer=2 filter=64 channel=29
					-15, -12, -3, 0, 5, -18, -9, -19, -12,
					-- layer=2 filter=64 channel=30
					-24, 1, -12, -19, -6, -7, -6, -1, -13,
					-- layer=2 filter=64 channel=31
					4, 1, -9, -11, -10, -13, -7, 11, 3,
					-- layer=2 filter=64 channel=32
					-17, -4, 2, -2, -18, 5, 5, -4, -13,
					-- layer=2 filter=64 channel=33
					-13, -16, -7, -16, 0, -2, 8, -20, -21,
					-- layer=2 filter=64 channel=34
					3, -18, -3, -17, -7, -21, -4, -4, 3,
					-- layer=2 filter=64 channel=35
					-4, -2, -10, -7, -19, -5, 5, 0, 0,
					-- layer=2 filter=64 channel=36
					3, -16, 1, -26, -6, -9, -12, -5, -1,
					-- layer=2 filter=64 channel=37
					-21, -4, -12, -23, -3, -3, -10, -5, 2,
					-- layer=2 filter=64 channel=38
					8, -18, -20, -8, -4, 11, -5, -12, 1,
					-- layer=2 filter=64 channel=39
					14, -7, 4, 2, -1, 1, -22, -7, -12,
					-- layer=2 filter=64 channel=40
					-1, -27, -1, -19, -7, -15, -13, -18, -12,
					-- layer=2 filter=64 channel=41
					-21, 2, -6, 2, -8, -15, -10, 11, -10,
					-- layer=2 filter=64 channel=42
					-7, -6, -8, -15, -17, -13, -11, -14, -17,
					-- layer=2 filter=64 channel=43
					-15, -23, -2, -16, -21, -3, -3, -25, -8,
					-- layer=2 filter=64 channel=44
					-2, 2, -7, -17, -17, -1, -2, -18, -23,
					-- layer=2 filter=64 channel=45
					-6, -5, -9, -19, -6, -6, -8, 10, 4,
					-- layer=2 filter=64 channel=46
					0, -11, -19, -20, -4, -13, 6, -7, -10,
					-- layer=2 filter=64 channel=47
					-18, -18, 0, -15, 7, 0, 4, -15, -10,
					-- layer=2 filter=64 channel=48
					-22, -15, -17, -10, -17, -11, 3, -3, 0,
					-- layer=2 filter=64 channel=49
					-10, 0, -10, -4, 8, -3, 16, 10, 0,
					-- layer=2 filter=64 channel=50
					5, -9, 3, 8, 5, -14, -1, -17, -5,
					-- layer=2 filter=64 channel=51
					1, 13, 11, -12, 13, -7, -4, 0, 3,
					-- layer=2 filter=64 channel=52
					-3, -13, 0, 0, 5, -8, -14, -6, -9,
					-- layer=2 filter=64 channel=53
					-6, -14, 9, -8, -2, 10, -6, -5, 0,
					-- layer=2 filter=64 channel=54
					-11, -17, -10, -13, -16, 0, -19, -5, -1,
					-- layer=2 filter=64 channel=55
					12, 0, 3, 6, 6, 4, -13, -2, -18,
					-- layer=2 filter=64 channel=56
					-21, -19, -8, -16, 0, -10, -7, -4, 3,
					-- layer=2 filter=64 channel=57
					0, -17, 1, 3, -15, -13, -17, -10, -13,
					-- layer=2 filter=64 channel=58
					1, -11, -7, 1, 0, -12, 14, -2, -5,
					-- layer=2 filter=64 channel=59
					-1, 4, 8, 8, 10, -2, -8, 11, -11,
					-- layer=2 filter=64 channel=60
					10, -21, -9, 4, -2, 9, 4, 6, -8,
					-- layer=2 filter=64 channel=61
					12, -7, 4, 3, -3, -6, 13, 12, -1,
					-- layer=2 filter=64 channel=62
					6, 2, 0, 9, -6, -2, 10, -1, 5,
					-- layer=2 filter=64 channel=63
					-9, -10, -5, -6, -17, -20, 3, -14, -1,
					-- layer=2 filter=65 channel=0
					20, 20, 5, 16, -37, 22, -4, 8, 47,
					-- layer=2 filter=65 channel=1
					1, 49, 1, -20, 43, 29, 27, 49, 45,
					-- layer=2 filter=65 channel=2
					-6, 2, -21, 12, 3, 8, -2, 20, -6,
					-- layer=2 filter=65 channel=3
					22, 7, -16, 1, -17, -16, -6, -10, -36,
					-- layer=2 filter=65 channel=4
					-23, 8, -36, -12, 39, 8, -3, 27, -3,
					-- layer=2 filter=65 channel=5
					-45, -22, -8, 25, 35, -17, 30, 100, 9,
					-- layer=2 filter=65 channel=6
					-10, -26, 4, -5, -10, 6, -1, -2, 5,
					-- layer=2 filter=65 channel=7
					18, -7, 10, -2, -40, 8, 18, -36, -23,
					-- layer=2 filter=65 channel=8
					-14, -4, 2, 42, 13, 31, 48, -1, -5,
					-- layer=2 filter=65 channel=9
					3, 34, 16, 37, 9, 51, -13, 3, 15,
					-- layer=2 filter=65 channel=10
					-5, -44, -43, -11, -28, -3, -9, -32, 3,
					-- layer=2 filter=65 channel=11
					-13, -82, -66, -2, -5, 4, -22, -8, -5,
					-- layer=2 filter=65 channel=12
					-11, 5, -18, 10, 1, 0, 13, 2, -10,
					-- layer=2 filter=65 channel=13
					-49, -57, -18, -7, -25, 48, 2, 13, 78,
					-- layer=2 filter=65 channel=14
					11, -1, -10, 0, 6, -1, -59, -20, -4,
					-- layer=2 filter=65 channel=15
					-8, -27, -7, 25, -46, -50, 26, -17, 2,
					-- layer=2 filter=65 channel=16
					-3, 26, -5, 13, 6, -8, 20, -7, -4,
					-- layer=2 filter=65 channel=17
					20, 0, -3, -6, 5, -7, -16, -9, 13,
					-- layer=2 filter=65 channel=18
					-35, 39, -13, 40, 42, 28, 12, 55, 75,
					-- layer=2 filter=65 channel=19
					5, 8, -13, 0, 5, -12, 3, 15, 9,
					-- layer=2 filter=65 channel=20
					15, -9, -12, -5, -3, -10, 14, 5, -6,
					-- layer=2 filter=65 channel=21
					-8, 4, -3, -13, -13, -7, -12, -16, 0,
					-- layer=2 filter=65 channel=22
					6, 0, 3, -4, 29, 43, -16, 8, 2,
					-- layer=2 filter=65 channel=23
					19, -11, -26, 6, -5, -15, 12, -20, -66,
					-- layer=2 filter=65 channel=24
					13, 8, 32, 15, -14, 7, 5, 13, -3,
					-- layer=2 filter=65 channel=25
					-25, 1, -34, -27, -28, 49, 60, 23, 15,
					-- layer=2 filter=65 channel=26
					6, -17, -18, 6, 8, -9, -8, 12, 16,
					-- layer=2 filter=65 channel=27
					-1, 7, -12, -10, 16, 4, -5, -2, 6,
					-- layer=2 filter=65 channel=28
					-20, -4, -9, 0, -4, 11, -23, -4, 6,
					-- layer=2 filter=65 channel=29
					3, -10, 0, 4, 2, 34, -13, -1, -2,
					-- layer=2 filter=65 channel=30
					17, 29, 7, 48, 21, 10, -32, 36, -20,
					-- layer=2 filter=65 channel=31
					-11, -7, -2, -27, -11, 10, -1, 0, 27,
					-- layer=2 filter=65 channel=32
					5, 2, 0, -5, -20, -38, 3, 11, -1,
					-- layer=2 filter=65 channel=33
					18, 0, -6, 12, -3, -15, 26, 0, -26,
					-- layer=2 filter=65 channel=34
					2, -19, 15, -24, -37, -25, -1, -13, -8,
					-- layer=2 filter=65 channel=35
					-36, 26, 3, -38, 15, 4, -34, 21, 18,
					-- layer=2 filter=65 channel=36
					16, 13, -11, 18, 9, -20, 8, 17, 7,
					-- layer=2 filter=65 channel=37
					6, 6, 10, -22, -74, -32, -24, -36, 16,
					-- layer=2 filter=65 channel=38
					13, 45, 21, 42, 36, 35, 24, 38, 71,
					-- layer=2 filter=65 channel=39
					13, -5, -40, -18, -15, 2, -4, 15, 17,
					-- layer=2 filter=65 channel=40
					8, 29, -3, 0, 37, 40, 9, 42, 53,
					-- layer=2 filter=65 channel=41
					13, -4, 11, 8, 4, 0, 20, -16, -44,
					-- layer=2 filter=65 channel=42
					-11, 9, 18, -18, -7, 32, -18, 8, 30,
					-- layer=2 filter=65 channel=43
					14, -23, -3, 29, 7, -39, 28, 24, -5,
					-- layer=2 filter=65 channel=44
					-3, 3, -45, 2, 27, -5, 10, -1, -26,
					-- layer=2 filter=65 channel=45
					8, 1, -4, 34, 21, 3, 23, -10, -52,
					-- layer=2 filter=65 channel=46
					-16, 43, 6, 18, 37, 23, -76, 35, -9,
					-- layer=2 filter=65 channel=47
					-4, -13, -31, 32, -4, -38, 25, -20, -39,
					-- layer=2 filter=65 channel=48
					-7, 11, 3, -7, 3, 2, 5, 10, 7,
					-- layer=2 filter=65 channel=49
					-1, -42, 15, 34, -27, 29, 1, 9, 36,
					-- layer=2 filter=65 channel=50
					26, 35, -9, 43, 12, -6, 17, 20, -20,
					-- layer=2 filter=65 channel=51
					-10, 15, 15, -48, -8, 0, 33, 46, 36,
					-- layer=2 filter=65 channel=52
					-17, -91, -49, -32, -57, 1, -34, -71, -44,
					-- layer=2 filter=65 channel=53
					-6, -13, 4, 7, 12, -20, 20, -17, 0,
					-- layer=2 filter=65 channel=54
					36, -14, -20, 47, 17, -15, 33, 8, 10,
					-- layer=2 filter=65 channel=55
					-35, -121, -87, -2, -35, 3, -1, -57, -51,
					-- layer=2 filter=65 channel=56
					8, -2, 10, -1, 14, 22, -16, -10, -1,
					-- layer=2 filter=65 channel=57
					3, -12, -1, 37, -9, 1, 27, 29, -29,
					-- layer=2 filter=65 channel=58
					-68, -39, -21, 19, 31, 31, -14, 26, -24,
					-- layer=2 filter=65 channel=59
					4, 8, 4, -4, -36, -2, 11, -8, -23,
					-- layer=2 filter=65 channel=60
					-20, -56, 15, 21, 4, 61, 5, -1, 45,
					-- layer=2 filter=65 channel=61
					8, 8, 30, 2, 24, 35, 11, 5, 45,
					-- layer=2 filter=65 channel=62
					9, 0, -12, 19, 64, 20, 0, -19, 16,
					-- layer=2 filter=65 channel=63
					21, 18, 28, 27, -16, -26, 31, -4, -23,
					-- layer=2 filter=66 channel=0
					-39, -25, -22, -49, -26, -6, -16, -1, 39,
					-- layer=2 filter=66 channel=1
					-19, -16, 33, 10, 8, -7, 4, -4, 38,
					-- layer=2 filter=66 channel=2
					1, -6, 4, -11, -18, -8, 28, 0, 24,
					-- layer=2 filter=66 channel=3
					-40, -78, -38, -11, -7, -25, 6, -24, 2,
					-- layer=2 filter=66 channel=4
					-32, 0, -12, 6, -20, -9, 24, 24, 3,
					-- layer=2 filter=66 channel=5
					3, -41, -24, -27, -31, -32, -13, -8, 18,
					-- layer=2 filter=66 channel=6
					-28, 37, 38, -18, 2, 54, 33, -23, 27,
					-- layer=2 filter=66 channel=7
					-4, -17, -17, -10, -19, -6, -32, 21, 98,
					-- layer=2 filter=66 channel=8
					-3, 27, -19, -34, -10, 16, -47, 8, 42,
					-- layer=2 filter=66 channel=9
					-43, -6, -27, 0, 14, -35, 23, 28, 2,
					-- layer=2 filter=66 channel=10
					17, 72, 7, 26, 43, 1, -16, 26, 29,
					-- layer=2 filter=66 channel=11
					2, -23, -42, 10, 3, -20, 57, 41, -16,
					-- layer=2 filter=66 channel=12
					3, -11, 4, -12, -8, 0, 25, 32, 13,
					-- layer=2 filter=66 channel=13
					0, -16, 40, -24, -25, 7, -59, 27, -20,
					-- layer=2 filter=66 channel=14
					-38, 3, -1, 3, 15, 26, 45, 11, -22,
					-- layer=2 filter=66 channel=15
					-14, 9, -13, -12, 25, 19, -9, 0, 52,
					-- layer=2 filter=66 channel=16
					-24, -9, 17, 4, -29, -11, 59, 9, -74,
					-- layer=2 filter=66 channel=17
					-24, -6, 27, 23, -26, 35, 54, -7, -28,
					-- layer=2 filter=66 channel=18
					-44, -20, -59, -7, -67, -24, 41, 47, 22,
					-- layer=2 filter=66 channel=19
					-16, -21, -48, -56, -51, -16, 9, 22, 27,
					-- layer=2 filter=66 channel=20
					-27, -3, 7, -14, 14, 11, 27, 43, 9,
					-- layer=2 filter=66 channel=21
					-65, -22, 1, 20, -10, 4, -23, -26, 17,
					-- layer=2 filter=66 channel=22
					-19, 14, 14, -7, -28, -6, -17, -3, 31,
					-- layer=2 filter=66 channel=23
					-10, 9, 66, 12, 26, 43, 0, -1, -32,
					-- layer=2 filter=66 channel=24
					-16, -20, -2, -10, -21, -5, 26, -2, -33,
					-- layer=2 filter=66 channel=25
					8, 33, 5, -16, -15, 2, 0, 17, 51,
					-- layer=2 filter=66 channel=26
					-16, 1, 3, 9, -17, 11, 6, -6, 4,
					-- layer=2 filter=66 channel=27
					9, 14, -2, -11, 9, 14, 9, 7, -10,
					-- layer=2 filter=66 channel=28
					-13, 12, -12, -20, 16, 18, -13, 8, 11,
					-- layer=2 filter=66 channel=29
					17, 23, 7, 24, 1, 29, 16, -23, -2,
					-- layer=2 filter=66 channel=30
					-50, -7, -29, -37, -46, -52, 6, -27, -51,
					-- layer=2 filter=66 channel=31
					-2, -9, 4, 46, 11, -8, 38, 54, 66,
					-- layer=2 filter=66 channel=32
					-47, -30, 12, 0, -53, -11, 5, -51, -49,
					-- layer=2 filter=66 channel=33
					0, -11, 43, -22, 18, 9, 20, 6, 10,
					-- layer=2 filter=66 channel=34
					9, -13, -7, -11, 23, 28, -25, 12, 55,
					-- layer=2 filter=66 channel=35
					1, 26, -12, 86, 48, 10, -20, 50, 40,
					-- layer=2 filter=66 channel=36
					-9, -7, -11, -12, -31, 5, -1, 7, -9,
					-- layer=2 filter=66 channel=37
					13, 45, 23, 29, 21, 21, -19, 31, 57,
					-- layer=2 filter=66 channel=38
					-30, -15, -10, 26, -21, -37, 8, 14, 25,
					-- layer=2 filter=66 channel=39
					-27, -61, -45, 1, -49, -30, 0, -2, 58,
					-- layer=2 filter=66 channel=40
					-37, 1, -26, 9, -59, -30, -28, -34, -4,
					-- layer=2 filter=66 channel=41
					-31, 19, 25, -27, 20, 29, 13, 9, -21,
					-- layer=2 filter=66 channel=42
					35, 12, 24, -2, 2, 23, -4, 7, 24,
					-- layer=2 filter=66 channel=43
					-22, -53, 27, -10, -11, -25, 48, -21, -32,
					-- layer=2 filter=66 channel=44
					-6, -4, 30, 16, -1, 6, 44, 24, -8,
					-- layer=2 filter=66 channel=45
					-35, -22, 17, -17, -49, -2, 37, -7, -21,
					-- layer=2 filter=66 channel=46
					-13, 10, 1, -37, 24, -34, -13, -22, 3,
					-- layer=2 filter=66 channel=47
					-16, -14, 52, 2, -10, 24, -9, 15, 24,
					-- layer=2 filter=66 channel=48
					20, 15, -6, -5, -1, 2, -6, 14, 36,
					-- layer=2 filter=66 channel=49
					-35, -37, 13, -2, -47, 13, 12, -1, -1,
					-- layer=2 filter=66 channel=50
					-37, -29, -16, 33, -16, 5, -65, -15, -9,
					-- layer=2 filter=66 channel=51
					-27, -4, 10, -42, 5, -44, -6, -15, 23,
					-- layer=2 filter=66 channel=52
					-22, -7, 3, 36, 8, -25, 17, 17, -6,
					-- layer=2 filter=66 channel=53
					-26, -2, 16, -10, -10, -2, 4, -6, -14,
					-- layer=2 filter=66 channel=54
					-19, -50, -9, 1, -38, -10, 24, 13, -51,
					-- layer=2 filter=66 channel=55
					-44, -36, -49, 12, -10, -26, -3, 15, -38,
					-- layer=2 filter=66 channel=56
					0, -9, 15, 0, 15, 12, -2, 14, 43,
					-- layer=2 filter=66 channel=57
					-26, -4, 23, 3, -20, 37, -26, -11, -33,
					-- layer=2 filter=66 channel=58
					-27, -71, -26, -127, -62, -25, -68, -73, -45,
					-- layer=2 filter=66 channel=59
					-20, -5, -7, -24, 10, -23, 4, -9, 34,
					-- layer=2 filter=66 channel=60
					5, 5, 4, -37, -8, 1, -46, -5, -37,
					-- layer=2 filter=66 channel=61
					34, -88, -18, -17, -86, -56, 28, -35, 2,
					-- layer=2 filter=66 channel=62
					-32, 28, 32, -2, 29, -2, 11, -41, -2,
					-- layer=2 filter=66 channel=63
					-25, -41, -13, 0, -64, -9, -37, -17, -4,
					-- layer=2 filter=67 channel=0
					4, 6, 6, 9, -4, 0, 2, -11, 1,
					-- layer=2 filter=67 channel=1
					-11, -14, -7, -18, 5, -12, -19, -1, 6,
					-- layer=2 filter=67 channel=2
					-18, 9, -5, -15, 6, -12, -10, -19, -9,
					-- layer=2 filter=67 channel=3
					-13, 6, -13, 3, 7, -10, -6, -16, 4,
					-- layer=2 filter=67 channel=4
					5, -11, 3, 4, -3, -13, -24, -6, 6,
					-- layer=2 filter=67 channel=5
					-9, -9, 6, -2, -3, -3, -30, -17, -6,
					-- layer=2 filter=67 channel=6
					-1, -1, -17, 2, 1, -3, 0, 2, -6,
					-- layer=2 filter=67 channel=7
					-24, 16, 10, 2, 3, -15, -2, -15, 8,
					-- layer=2 filter=67 channel=8
					-3, -9, -9, -10, -9, -19, -10, 11, 13,
					-- layer=2 filter=67 channel=9
					-16, -9, -4, 0, -9, 0, 1, 4, 4,
					-- layer=2 filter=67 channel=10
					-14, -12, 7, -2, -16, 0, -24, -22, -1,
					-- layer=2 filter=67 channel=11
					-12, -5, -17, -2, -16, -11, -2, -8, -11,
					-- layer=2 filter=67 channel=12
					-14, -10, -11, -17, 7, -4, -2, -20, -9,
					-- layer=2 filter=67 channel=13
					4, 6, -5, -5, -10, 1, -6, -8, -5,
					-- layer=2 filter=67 channel=14
					-5, -14, 4, 3, -11, 14, -16, -9, -2,
					-- layer=2 filter=67 channel=15
					0, -27, -13, 0, 5, -20, -12, -5, 5,
					-- layer=2 filter=67 channel=16
					1, -8, 11, -3, -4, -2, -1, -6, -10,
					-- layer=2 filter=67 channel=17
					-14, -3, -14, 1, -14, 5, 6, -15, 8,
					-- layer=2 filter=67 channel=18
					9, -4, 1, 3, 10, -12, -9, -10, 1,
					-- layer=2 filter=67 channel=19
					-3, -6, 6, -22, -11, -9, -21, -15, -4,
					-- layer=2 filter=67 channel=20
					3, -16, -6, -15, -13, -13, -13, 7, -21,
					-- layer=2 filter=67 channel=21
					-12, -10, -24, -3, 5, -10, 8, 1, -17,
					-- layer=2 filter=67 channel=22
					-15, -14, 5, 6, 10, -2, -7, 1, -10,
					-- layer=2 filter=67 channel=23
					-9, -10, 2, -20, -16, -5, 0, -1, -3,
					-- layer=2 filter=67 channel=24
					-16, -16, -9, 11, -5, -5, -16, 0, -6,
					-- layer=2 filter=67 channel=25
					-9, 14, 0, -8, 6, 5, 9, 14, 4,
					-- layer=2 filter=67 channel=26
					11, -2, -1, 0, 13, 1, 9, -14, 1,
					-- layer=2 filter=67 channel=27
					-5, -12, -6, 2, 11, -12, -12, 10, -14,
					-- layer=2 filter=67 channel=28
					-1, -1, 10, -4, 10, 4, -5, 2, 9,
					-- layer=2 filter=67 channel=29
					-19, -2, -1, -19, -16, -12, -11, 3, -5,
					-- layer=2 filter=67 channel=30
					-7, -14, 0, 8, 1, -9, -3, -5, -14,
					-- layer=2 filter=67 channel=31
					6, -12, 7, -3, 0, -13, 7, -22, 9,
					-- layer=2 filter=67 channel=32
					-1, -17, -1, -15, -1, -8, -5, -3, -16,
					-- layer=2 filter=67 channel=33
					-12, -17, 10, -11, -10, -9, 3, 0, -3,
					-- layer=2 filter=67 channel=34
					-10, -19, -10, 3, 0, 6, -10, 0, -17,
					-- layer=2 filter=67 channel=35
					4, 2, -5, -15, -22, 3, -13, -16, -7,
					-- layer=2 filter=67 channel=36
					11, 0, -4, -11, 0, -10, -2, -4, -5,
					-- layer=2 filter=67 channel=37
					0, -9, -21, 8, 8, -12, -17, -2, -3,
					-- layer=2 filter=67 channel=38
					13, 6, -5, -10, 12, 4, 11, -7, 4,
					-- layer=2 filter=67 channel=39
					-17, -21, -5, -22, -3, -18, -11, -16, -10,
					-- layer=2 filter=67 channel=40
					-9, -5, 5, -5, 2, 8, 1, -14, -6,
					-- layer=2 filter=67 channel=41
					-7, -15, -16, -2, 4, -15, -15, -1, -16,
					-- layer=2 filter=67 channel=42
					5, -11, -18, -9, -11, 7, 0, 1, 5,
					-- layer=2 filter=67 channel=43
					-19, -1, -4, -4, -11, -4, -12, 4, -17,
					-- layer=2 filter=67 channel=44
					0, -19, -17, -10, -20, 5, -6, -5, -5,
					-- layer=2 filter=67 channel=45
					-9, -19, 7, -3, -3, -11, -3, 10, -6,
					-- layer=2 filter=67 channel=46
					-2, -10, 2, -5, -20, -3, -17, -4, -2,
					-- layer=2 filter=67 channel=47
					-5, -22, -12, 2, 4, 3, -1, -10, 10,
					-- layer=2 filter=67 channel=48
					-13, 8, -9, 9, 7, -19, -14, 6, 0,
					-- layer=2 filter=67 channel=49
					-17, -8, -14, -5, -6, 3, -8, 1, 9,
					-- layer=2 filter=67 channel=50
					-5, -8, 0, -7, -4, -2, 2, 11, 1,
					-- layer=2 filter=67 channel=51
					1, -15, 5, 9, 9, 5, -4, -14, -7,
					-- layer=2 filter=67 channel=52
					-10, 0, -15, -17, -19, 2, -24, -2, -16,
					-- layer=2 filter=67 channel=53
					-5, -15, -9, -6, 2, 1, -3, 11, -5,
					-- layer=2 filter=67 channel=54
					-16, 9, 0, -9, -14, 10, 4, -17, -4,
					-- layer=2 filter=67 channel=55
					-11, -15, 9, 3, -13, -6, -4, -19, -11,
					-- layer=2 filter=67 channel=56
					0, -8, 3, -14, -10, 3, 7, 0, 3,
					-- layer=2 filter=67 channel=57
					-11, -9, -18, -4, -14, -10, 2, 4, 10,
					-- layer=2 filter=67 channel=58
					-7, -4, -14, -1, -7, 0, 4, 2, -3,
					-- layer=2 filter=67 channel=59
					-16, 0, 0, 2, 1, -10, -10, 7, 2,
					-- layer=2 filter=67 channel=60
					-9, -16, 0, -5, 8, -2, -8, 8, -7,
					-- layer=2 filter=67 channel=61
					0, -19, 7, -16, 12, -8, -6, -12, -5,
					-- layer=2 filter=67 channel=62
					-10, -12, 5, -8, 14, -10, 12, -9, -11,
					-- layer=2 filter=67 channel=63
					0, 6, -4, -17, -8, 8, -13, -13, 0,
					-- layer=2 filter=68 channel=0
					24, -1, 13, 8, -14, 8, -7, -20, -4,
					-- layer=2 filter=68 channel=1
					29, 17, -39, 30, 15, -6, -35, -39, -32,
					-- layer=2 filter=68 channel=2
					-8, -1, -6, 21, 5, 26, 3, 22, 24,
					-- layer=2 filter=68 channel=3
					-10, 29, 7, 14, 22, 8, -43, -61, -80,
					-- layer=2 filter=68 channel=4
					34, 15, 17, -7, 15, 29, 4, 30, 18,
					-- layer=2 filter=68 channel=5
					-35, -44, -38, -9, 6, -10, -58, -74, -26,
					-- layer=2 filter=68 channel=6
					37, 0, 28, -39, -2, -21, -41, -36, -38,
					-- layer=2 filter=68 channel=7
					17, -19, -16, 65, 10, 8, 12, 3, 71,
					-- layer=2 filter=68 channel=8
					3, -11, 12, -4, -14, -37, -48, -60, -25,
					-- layer=2 filter=68 channel=9
					-16, -13, -13, -43, -56, -3, -26, -38, -39,
					-- layer=2 filter=68 channel=10
					-11, -2, 3, -4, -28, -19, 19, 6, -11,
					-- layer=2 filter=68 channel=11
					28, 38, 26, 22, -16, -22, 39, 36, 35,
					-- layer=2 filter=68 channel=12
					22, 3, 7, 16, 23, 1, 14, 23, 41,
					-- layer=2 filter=68 channel=13
					-15, -22, -8, -33, -30, -51, -16, -105, -43,
					-- layer=2 filter=68 channel=14
					8, 17, 4, -89, -11, -24, -40, 1, 7,
					-- layer=2 filter=68 channel=15
					24, 15, 37, 31, 26, 12, -9, 14, 32,
					-- layer=2 filter=68 channel=16
					7, 5, 4, -13, 39, -13, 1, -27, -17,
					-- layer=2 filter=68 channel=17
					4, 0, 3, -8, 7, -15, -25, 17, 11,
					-- layer=2 filter=68 channel=18
					48, 4, 6, -30, -12, 36, 60, 13, 15,
					-- layer=2 filter=68 channel=19
					-3, -7, 2, 19, 11, 35, -23, 11, 42,
					-- layer=2 filter=68 channel=20
					22, 24, 0, -1, 1, -20, -2, -8, 4,
					-- layer=2 filter=68 channel=21
					38, 48, 27, 4, -16, -15, -61, -20, -106,
					-- layer=2 filter=68 channel=22
					10, 14, 47, -61, -46, -58, -67, -65, -43,
					-- layer=2 filter=68 channel=23
					0, 22, 16, -11, 18, -4, -17, -21, -46,
					-- layer=2 filter=68 channel=24
					11, 16, -1, 23, 42, 30, -13, -2, -4,
					-- layer=2 filter=68 channel=25
					46, 22, 41, -43, -32, -14, -13, 2, 45,
					-- layer=2 filter=68 channel=26
					4, -15, 1, 10, -8, 3, 8, 5, 5,
					-- layer=2 filter=68 channel=27
					5, 11, -5, 3, 10, -9, 5, -16, -7,
					-- layer=2 filter=68 channel=28
					2, -2, 4, 19, 14, 13, 6, -11, -4,
					-- layer=2 filter=68 channel=29
					37, 4, -2, -35, -19, -28, 1, -21, 24,
					-- layer=2 filter=68 channel=30
					-3, -25, -24, -27, 17, -19, -17, -31, -33,
					-- layer=2 filter=68 channel=31
					-3, 23, -22, -19, -8, -35, -30, -24, -35,
					-- layer=2 filter=68 channel=32
					-1, -27, -44, -62, -26, -115, -39, -67, -133,
					-- layer=2 filter=68 channel=33
					33, 15, 36, -26, -11, -54, -51, -25, -47,
					-- layer=2 filter=68 channel=34
					9, 22, 8, -1, 12, 12, -5, 3, 24,
					-- layer=2 filter=68 channel=35
					57, 14, 0, -2, 1, 0, -25, 25, -35,
					-- layer=2 filter=68 channel=36
					7, 9, 7, 1, 35, 17, -2, 23, 17,
					-- layer=2 filter=68 channel=37
					31, -9, 20, 26, 13, -18, 18, -5, 19,
					-- layer=2 filter=68 channel=38
					-20, -51, -5, -30, -9, -10, -117, -41, -27,
					-- layer=2 filter=68 channel=39
					24, -19, 23, 4, 1, 24, 3, 19, -57,
					-- layer=2 filter=68 channel=40
					-41, -60, 1, -38, -1, -11, -41, -7, -1,
					-- layer=2 filter=68 channel=41
					20, 44, 38, -20, 34, -14, -59, -16, -65,
					-- layer=2 filter=68 channel=42
					16, 4, -10, -4, 1, 0, -12, -9, 1,
					-- layer=2 filter=68 channel=43
					1, 1, -22, 18, 31, -2, -6, -6, -13,
					-- layer=2 filter=68 channel=44
					24, 22, 19, -6, 44, 34, 14, 31, 38,
					-- layer=2 filter=68 channel=45
					-26, 14, 26, -58, 30, -36, -83, -51, -66,
					-- layer=2 filter=68 channel=46
					14, -8, 8, 45, 28, 23, -19, 21, -11,
					-- layer=2 filter=68 channel=47
					-28, 35, 19, -34, 26, 9, -48, 0, -20,
					-- layer=2 filter=68 channel=48
					4, -19, 0, 27, -5, 8, 14, 0, 2,
					-- layer=2 filter=68 channel=49
					6, -13, 52, -36, 54, -4, 17, 11, -1,
					-- layer=2 filter=68 channel=50
					-2, 20, 14, 0, 7, -47, -54, 19, -33,
					-- layer=2 filter=68 channel=51
					43, 0, -39, 0, -28, -36, -16, 7, 12,
					-- layer=2 filter=68 channel=52
					36, 45, 6, -24, -38, -26, 11, 6, -14,
					-- layer=2 filter=68 channel=53
					26, 29, 39, -3, -6, 15, -10, 8, -18,
					-- layer=2 filter=68 channel=54
					-40, 10, -1, -29, 0, 4, -10, 7, 40,
					-- layer=2 filter=68 channel=55
					36, 33, 16, -22, -59, -37, 11, -17, 0,
					-- layer=2 filter=68 channel=56
					9, -33, 22, -18, -4, -5, -29, -14, -19,
					-- layer=2 filter=68 channel=57
					17, 0, 8, -28, 7, -29, -26, -7, -76,
					-- layer=2 filter=68 channel=58
					5, -15, 17, 18, -39, 47, -57, -12, -37,
					-- layer=2 filter=68 channel=59
					5, 26, 25, -33, -8, -40, -75, -53, -35,
					-- layer=2 filter=68 channel=60
					41, 46, 10, 28, -6, -30, -2, -34, 10,
					-- layer=2 filter=68 channel=61
					19, 28, -22, 8, -66, -32, 20, 2, 3,
					-- layer=2 filter=68 channel=62
					-32, -5, -19, -40, -3, -24, -79, 12, 16,
					-- layer=2 filter=68 channel=63
					-16, 30, 39, -10, -28, -67, -71, -53, -38,
					-- layer=2 filter=69 channel=0
					5, -21, -12, 6, 6, -1, 17, 16, -37,
					-- layer=2 filter=69 channel=1
					11, 36, 39, 7, 8, 15, -9, 16, 19,
					-- layer=2 filter=69 channel=2
					1, 12, 3, -19, 6, 11, -3, 9, 16,
					-- layer=2 filter=69 channel=3
					-8, -15, -7, 17, 13, 0, 6, 14, 4,
					-- layer=2 filter=69 channel=4
					-6, -4, 10, -28, 22, 12, -41, 8, 17,
					-- layer=2 filter=69 channel=5
					-30, 14, 67, -63, -29, 38, -13, 16, 16,
					-- layer=2 filter=69 channel=6
					42, 12, 11, 25, 38, -26, 53, -2, -66,
					-- layer=2 filter=69 channel=7
					-26, 29, 6, 18, -2, -25, -7, -50, -4,
					-- layer=2 filter=69 channel=8
					-2, -23, 5, -26, -19, 12, -22, -2, -14,
					-- layer=2 filter=69 channel=9
					27, 47, -41, 49, 32, 52, 13, 12, 8,
					-- layer=2 filter=69 channel=10
					-9, 0, -33, 13, 22, 12, -3, -34, -12,
					-- layer=2 filter=69 channel=11
					-29, 14, -17, -2, -12, -1, 16, -31, -40,
					-- layer=2 filter=69 channel=12
					-8, 14, 22, -15, 1, 6, -17, 10, 18,
					-- layer=2 filter=69 channel=13
					28, -74, -42, 39, -71, -1, 32, 3, -6,
					-- layer=2 filter=69 channel=14
					25, 5, -5, -13, -26, -10, -16, -44, -79,
					-- layer=2 filter=69 channel=15
					23, 8, 17, 42, -7, -36, 21, -11, -45,
					-- layer=2 filter=69 channel=16
					31, -3, -20, 7, 29, 19, 3, -39, -38,
					-- layer=2 filter=69 channel=17
					3, 19, -11, 0, 7, -13, 5, -27, -31,
					-- layer=2 filter=69 channel=18
					-84, -18, -34, -72, 0, 33, 17, 18, 52,
					-- layer=2 filter=69 channel=19
					-22, 17, -1, -35, 7, -13, -43, 11, 37,
					-- layer=2 filter=69 channel=20
					-15, 27, 40, -25, -14, 3, -29, 3, 17,
					-- layer=2 filter=69 channel=21
					10, -8, 16, 16, -1, -12, 27, -20, -66,
					-- layer=2 filter=69 channel=22
					18, 15, -28, -2, -8, -2, -33, -21, -25,
					-- layer=2 filter=69 channel=23
					36, 4, -26, 33, -9, -39, 21, -33, -103,
					-- layer=2 filter=69 channel=24
					17, 9, -2, -24, 16, -12, -2, 13, 7,
					-- layer=2 filter=69 channel=25
					-5, 8, 24, 42, 11, -12, 0, 47, 49,
					-- layer=2 filter=69 channel=26
					-13, -5, 3, -18, -12, 5, -8, 15, 26,
					-- layer=2 filter=69 channel=27
					0, -10, 10, -2, -2, -7, -10, 0, 8,
					-- layer=2 filter=69 channel=28
					-3, -18, 9, -14, 0, 10, -6, 9, 5,
					-- layer=2 filter=69 channel=29
					14, 43, 25, 5, -7, 20, -6, 15, 20,
					-- layer=2 filter=69 channel=30
					-4, -12, -26, -26, 4, 28, -23, -5, -24,
					-- layer=2 filter=69 channel=31
					1, 40, -1, -18, -4, 14, -69, -28, -29,
					-- layer=2 filter=69 channel=32
					42, 3, -18, 0, 3, -19, 1, -41, -62,
					-- layer=2 filter=69 channel=33
					27, -6, 0, 29, -10, -53, 52, 16, -69,
					-- layer=2 filter=69 channel=34
					8, 0, 2, 24, -1, -19, -10, 2, 0,
					-- layer=2 filter=69 channel=35
					45, 9, 61, 9, 6, 38, -38, -2, -33,
					-- layer=2 filter=69 channel=36
					11, 18, -6, -12, 0, -12, -14, 23, 32,
					-- layer=2 filter=69 channel=37
					15, -5, -1, 24, 5, -4, 18, 13, 13,
					-- layer=2 filter=69 channel=38
					23, 38, 20, 23, 38, 45, 6, 53, 49,
					-- layer=2 filter=69 channel=39
					-9, -49, -22, -12, -21, -2, -26, 9, -12,
					-- layer=2 filter=69 channel=40
					20, 25, -5, -13, 10, 48, -50, 41, 55,
					-- layer=2 filter=69 channel=41
					32, 22, -4, 45, -9, -56, 32, -21, -74,
					-- layer=2 filter=69 channel=42
					-3, -29, -30, -11, -6, 6, -24, -19, 23,
					-- layer=2 filter=69 channel=43
					-9, 15, 10, -43, 16, 26, -38, -31, -31,
					-- layer=2 filter=69 channel=44
					-9, 22, 7, 11, 35, 19, 3, 3, -2,
					-- layer=2 filter=69 channel=45
					41, 10, 3, 36, -2, -21, 13, -1, -55,
					-- layer=2 filter=69 channel=46
					5, -6, -47, 4, 15, -17, -13, -32, -29,
					-- layer=2 filter=69 channel=47
					29, 2, -18, 8, -2, -17, 21, 4, -29,
					-- layer=2 filter=69 channel=48
					0, 28, 16, -31, -9, 22, -33, -5, 14,
					-- layer=2 filter=69 channel=49
					5, -9, 0, 4, 19, -22, 43, 14, -49,
					-- layer=2 filter=69 channel=50
					59, 1, 17, 46, -22, -35, 27, -8, -65,
					-- layer=2 filter=69 channel=51
					57, 12, 19, 9, -28, -25, -7, 11, 18,
					-- layer=2 filter=69 channel=52
					9, 27, -23, 1, -10, 11, -38, -69, -53,
					-- layer=2 filter=69 channel=53
					46, 28, 8, 42, -4, -39, 63, 8, -27,
					-- layer=2 filter=69 channel=54
					-22, 2, 3, -11, 12, 18, 7, -4, -21,
					-- layer=2 filter=69 channel=55
					-23, -21, -61, 12, -28, -20, -30, -18, -74,
					-- layer=2 filter=69 channel=56
					4, -7, -50, -5, -12, 2, -22, -20, -7,
					-- layer=2 filter=69 channel=57
					28, -28, -9, 30, -32, -29, 45, 0, -58,
					-- layer=2 filter=69 channel=58
					-51, -96, -120, -55, -48, -33, -49, -45, -13,
					-- layer=2 filter=69 channel=59
					28, 32, -25, 29, -15, -39, 26, 2, -53,
					-- layer=2 filter=69 channel=60
					23, -43, -82, 40, -32, -42, 28, -6, -14,
					-- layer=2 filter=69 channel=61
					-3, -4, 36, -67, 22, 29, 6, 15, 34,
					-- layer=2 filter=69 channel=62
					-113, 9, 0, -28, 18, 18, -58, -36, -3,
					-- layer=2 filter=69 channel=63
					-5, 10, -27, 18, -3, -27, 21, -7, -48,
					-- layer=2 filter=70 channel=0
					3, 3, 7, -10, 9, -6, 0, -8, 1,
					-- layer=2 filter=70 channel=1
					-17, 8, 0, -14, -14, -17, -10, 0, 3,
					-- layer=2 filter=70 channel=2
					-8, 0, -19, -9, -11, -12, 0, -11, -5,
					-- layer=2 filter=70 channel=3
					-15, 6, -19, -6, 0, -11, -11, 10, 0,
					-- layer=2 filter=70 channel=4
					-18, -14, 0, 8, -3, -10, 4, -3, -13,
					-- layer=2 filter=70 channel=5
					-11, 6, 6, -3, -13, -8, -4, 10, -3,
					-- layer=2 filter=70 channel=6
					-7, 3, -16, -2, 4, 0, 3, 6, -4,
					-- layer=2 filter=70 channel=7
					0, -12, 5, 7, 1, -11, 0, -17, -13,
					-- layer=2 filter=70 channel=8
					3, 4, 8, -13, -13, 2, -10, -1, 6,
					-- layer=2 filter=70 channel=9
					3, 4, -10, 4, -5, -6, -4, -10, -10,
					-- layer=2 filter=70 channel=10
					-9, -19, 0, 0, 4, -12, -8, 1, 2,
					-- layer=2 filter=70 channel=11
					4, -11, -13, -5, 4, 14, 0, 4, -8,
					-- layer=2 filter=70 channel=12
					-6, -20, 6, -12, 0, -4, 0, -17, -17,
					-- layer=2 filter=70 channel=13
					-17, -4, -18, 7, -7, -7, 5, -5, -7,
					-- layer=2 filter=70 channel=14
					-3, -4, -7, 8, -11, -2, 10, -2, 8,
					-- layer=2 filter=70 channel=15
					-4, 7, 6, -14, 7, -15, -13, -12, -19,
					-- layer=2 filter=70 channel=16
					-14, -6, 6, -3, -5, 6, -4, -2, -7,
					-- layer=2 filter=70 channel=17
					5, 3, -12, -8, -9, -3, -10, -6, 1,
					-- layer=2 filter=70 channel=18
					-12, -17, -1, 11, 9, 14, -13, -13, 14,
					-- layer=2 filter=70 channel=19
					-17, -14, -18, -19, -4, -2, -16, -13, -15,
					-- layer=2 filter=70 channel=20
					-3, -7, -21, -5, -11, 8, 3, -2, -3,
					-- layer=2 filter=70 channel=21
					-14, -6, -14, 0, 3, -12, 0, -8, -8,
					-- layer=2 filter=70 channel=22
					12, 0, -16, -9, -6, -17, 11, -4, -19,
					-- layer=2 filter=70 channel=23
					6, -11, 2, -1, -4, 8, 6, 3, -3,
					-- layer=2 filter=70 channel=24
					4, 6, 2, -7, -20, -12, -4, -11, -10,
					-- layer=2 filter=70 channel=25
					-12, 1, 7, 8, -10, -2, -6, 1, 11,
					-- layer=2 filter=70 channel=26
					0, -13, 0, -3, 0, 0, 10, -2, 0,
					-- layer=2 filter=70 channel=27
					-5, 10, 5, 9, 2, 0, -9, 8, 9,
					-- layer=2 filter=70 channel=28
					2, -7, 11, -8, 0, 2, -11, 11, -3,
					-- layer=2 filter=70 channel=29
					-13, 7, -13, -6, -5, -8, -2, 8, 1,
					-- layer=2 filter=70 channel=30
					-8, -14, 9, 2, -9, 6, 10, -3, -1,
					-- layer=2 filter=70 channel=31
					8, -10, 6, 5, -10, -7, -3, -4, -1,
					-- layer=2 filter=70 channel=32
					-11, 0, 3, -14, 5, -13, -5, -11, -8,
					-- layer=2 filter=70 channel=33
					11, -5, -10, 0, -15, -7, -5, -15, 6,
					-- layer=2 filter=70 channel=34
					-13, 5, 11, -11, -20, 3, 7, 7, 1,
					-- layer=2 filter=70 channel=35
					-14, 2, -9, -4, -12, -17, 8, -13, 5,
					-- layer=2 filter=70 channel=36
					8, -6, -6, -16, -15, -6, -3, -10, -11,
					-- layer=2 filter=70 channel=37
					-13, 12, -8, -1, 4, -14, 3, 0, -7,
					-- layer=2 filter=70 channel=38
					4, -12, -10, -14, 3, -12, 0, -5, 4,
					-- layer=2 filter=70 channel=39
					-8, 5, 14, -5, -15, -6, 0, 4, -2,
					-- layer=2 filter=70 channel=40
					6, -9, -12, 8, -2, -3, -3, 7, 0,
					-- layer=2 filter=70 channel=41
					-9, -7, -11, 11, -7, -15, 12, 8, -7,
					-- layer=2 filter=70 channel=42
					5, 0, 6, 8, -6, -19, -9, -8, 6,
					-- layer=2 filter=70 channel=43
					-13, -10, -12, 2, 5, -3, 5, 0, 10,
					-- layer=2 filter=70 channel=44
					9, -12, -18, -5, 0, 0, 5, -2, 11,
					-- layer=2 filter=70 channel=45
					-9, 6, -15, -3, -15, 0, -15, -4, 4,
					-- layer=2 filter=70 channel=46
					-1, -10, -4, -11, -14, -7, -6, -13, 1,
					-- layer=2 filter=70 channel=47
					-10, -14, -14, 4, -12, -3, 2, -7, -12,
					-- layer=2 filter=70 channel=48
					-5, -7, 5, 4, 5, 6, -13, -15, -8,
					-- layer=2 filter=70 channel=49
					10, 12, 4, -10, -6, 11, -1, 14, -4,
					-- layer=2 filter=70 channel=50
					-1, 12, 0, 10, -5, -13, -9, -2, 0,
					-- layer=2 filter=70 channel=51
					10, -11, -13, -1, -11, -11, -15, 3, 2,
					-- layer=2 filter=70 channel=52
					-3, -6, -3, -13, 6, -12, -12, 2, -15,
					-- layer=2 filter=70 channel=53
					4, -3, -11, -11, -1, 0, -1, -10, -10,
					-- layer=2 filter=70 channel=54
					0, -15, 0, 1, 1, 7, -3, 7, 2,
					-- layer=2 filter=70 channel=55
					-8, 9, 9, -7, -15, 7, -6, -14, -8,
					-- layer=2 filter=70 channel=56
					-7, -10, -2, -1, 4, -6, 10, -1, 7,
					-- layer=2 filter=70 channel=57
					11, -1, -6, -3, 9, -7, -7, -4, -2,
					-- layer=2 filter=70 channel=58
					-6, -2, 8, -14, -3, 4, 13, -8, -12,
					-- layer=2 filter=70 channel=59
					10, -15, 5, -7, 0, -11, -8, -9, -13,
					-- layer=2 filter=70 channel=60
					10, 4, 9, 0, -13, 6, 1, 10, -9,
					-- layer=2 filter=70 channel=61
					-2, -2, 5, 4, -3, 7, 10, -9, -12,
					-- layer=2 filter=70 channel=62
					-12, 3, 5, -15, 0, 0, -3, 0, -9,
					-- layer=2 filter=70 channel=63
					-1, -11, 3, -5, -1, -5, 1, 4, 3,
					-- layer=2 filter=71 channel=0
					-14, -9, -12, -7, -8, -16, -10, -7, -1,
					-- layer=2 filter=71 channel=1
					9, -14, -16, 6, 0, 5, -7, -11, 1,
					-- layer=2 filter=71 channel=2
					-6, 7, 5, -12, -9, -23, 7, -7, -22,
					-- layer=2 filter=71 channel=3
					12, 3, -2, -18, 7, -17, 8, -20, -12,
					-- layer=2 filter=71 channel=4
					0, 3, -3, 2, -10, -11, -5, 5, -13,
					-- layer=2 filter=71 channel=5
					-18, -12, -10, -14, 0, 12, -10, 12, 7,
					-- layer=2 filter=71 channel=6
					7, -16, -10, 4, 11, -10, -11, 4, 0,
					-- layer=2 filter=71 channel=7
					-11, -2, 7, -8, 6, 10, 5, -15, -9,
					-- layer=2 filter=71 channel=8
					5, 5, -5, -12, -9, 6, 10, -6, -18,
					-- layer=2 filter=71 channel=9
					-13, -2, -13, 1, -8, 3, 0, 6, 9,
					-- layer=2 filter=71 channel=10
					-13, -21, 2, -13, -1, -20, 2, -14, 3,
					-- layer=2 filter=71 channel=11
					4, -1, 1, -14, 1, -1, -14, -7, 0,
					-- layer=2 filter=71 channel=12
					-1, 5, 7, -1, -6, -13, 7, 1, -9,
					-- layer=2 filter=71 channel=13
					-9, 0, -5, 5, 5, 0, 4, 4, -7,
					-- layer=2 filter=71 channel=14
					-6, 10, 4, 9, 10, -4, -11, -17, 0,
					-- layer=2 filter=71 channel=15
					5, -15, -16, -20, -10, -2, -9, 0, -19,
					-- layer=2 filter=71 channel=16
					-9, -15, -11, -4, 0, -14, -6, -4, 5,
					-- layer=2 filter=71 channel=17
					-6, -2, -11, -7, -11, 3, -16, -8, -8,
					-- layer=2 filter=71 channel=18
					-9, -7, -11, 8, -1, 6, -6, 9, -9,
					-- layer=2 filter=71 channel=19
					-13, 10, -15, -9, 4, -13, -6, 11, -12,
					-- layer=2 filter=71 channel=20
					4, 1, -11, -17, 5, -11, -16, -11, -8,
					-- layer=2 filter=71 channel=21
					-11, -12, -2, -12, -7, -2, 5, 4, -7,
					-- layer=2 filter=71 channel=22
					-10, -9, -10, -7, -11, -16, -10, 0, -21,
					-- layer=2 filter=71 channel=23
					9, -13, 3, 8, -6, -21, 1, -9, 10,
					-- layer=2 filter=71 channel=24
					-5, -14, -4, 7, -9, -11, -2, -11, -4,
					-- layer=2 filter=71 channel=25
					13, -12, 13, -2, 11, -4, -8, -8, -7,
					-- layer=2 filter=71 channel=26
					13, -8, 5, 1, 14, 13, -2, -9, 2,
					-- layer=2 filter=71 channel=27
					5, -3, 3, -6, -2, -4, 9, -10, 4,
					-- layer=2 filter=71 channel=28
					12, 8, 1, 8, 4, 12, -1, -10, 5,
					-- layer=2 filter=71 channel=29
					-14, 3, 1, -19, 6, -19, 4, -9, -18,
					-- layer=2 filter=71 channel=30
					5, 6, 5, -3, -13, -14, 9, -14, -14,
					-- layer=2 filter=71 channel=31
					-3, 1, -24, 5, -20, -14, 8, -3, -5,
					-- layer=2 filter=71 channel=32
					5, 3, 0, -1, 1, -16, -1, 1, -12,
					-- layer=2 filter=71 channel=33
					5, -12, -7, -8, -9, -18, -15, -1, 0,
					-- layer=2 filter=71 channel=34
					5, -2, 5, -16, -4, -9, -3, -6, -3,
					-- layer=2 filter=71 channel=35
					-4, -4, -7, 12, 5, 12, -14, -9, -4,
					-- layer=2 filter=71 channel=36
					6, -6, 8, 6, -1, -13, -10, 4, 0,
					-- layer=2 filter=71 channel=37
					-1, -18, -4, -10, -3, -5, 2, -8, 7,
					-- layer=2 filter=71 channel=38
					-14, -8, 4, 12, -19, -11, 0, -15, 3,
					-- layer=2 filter=71 channel=39
					-14, -19, -18, -3, -4, -5, 0, -2, -7,
					-- layer=2 filter=71 channel=40
					-1, 12, -4, 8, 5, -14, -1, 4, -17,
					-- layer=2 filter=71 channel=41
					-12, 9, -16, 3, -9, -16, 11, 3, -10,
					-- layer=2 filter=71 channel=42
					9, -19, -6, 3, -2, -11, -15, -22, -8,
					-- layer=2 filter=71 channel=43
					-9, -8, 12, -13, -13, 1, 2, -13, 0,
					-- layer=2 filter=71 channel=44
					6, -1, -12, -14, -16, -17, -2, -4, 0,
					-- layer=2 filter=71 channel=45
					11, 11, -6, 9, -1, 3, 0, 3, -8,
					-- layer=2 filter=71 channel=46
					7, -1, 5, 10, -11, -3, 6, -10, -10,
					-- layer=2 filter=71 channel=47
					-16, 3, 2, -7, -3, -9, -10, -10, -2,
					-- layer=2 filter=71 channel=48
					-6, -11, -19, -17, -1, 3, -4, 5, -6,
					-- layer=2 filter=71 channel=49
					-7, 12, 9, -8, -10, -10, 5, -11, -5,
					-- layer=2 filter=71 channel=50
					-11, 3, -5, 0, 4, -14, -13, -9, -14,
					-- layer=2 filter=71 channel=51
					-12, -7, -7, -11, -7, 4, 1, 7, 15,
					-- layer=2 filter=71 channel=52
					3, -12, -15, 7, 3, -10, -9, 2, -11,
					-- layer=2 filter=71 channel=53
					-8, 1, 1, 2, -6, -2, 2, 9, -18,
					-- layer=2 filter=71 channel=54
					4, -4, -3, -2, 1, 1, 11, -3, -10,
					-- layer=2 filter=71 channel=55
					-6, -20, -5, -3, 0, -5, 1, -5, -15,
					-- layer=2 filter=71 channel=56
					-2, -11, -16, -15, -20, -16, 2, -13, -2,
					-- layer=2 filter=71 channel=57
					3, 6, 0, -19, -8, 7, -21, -7, -8,
					-- layer=2 filter=71 channel=58
					1, 1, 14, 9, 8, -12, -11, 7, -13,
					-- layer=2 filter=71 channel=59
					-8, -2, -6, -6, -15, 3, -14, -21, 0,
					-- layer=2 filter=71 channel=60
					1, 3, -10, 2, 8, 1, -2, -19, 11,
					-- layer=2 filter=71 channel=61
					6, -2, -7, -1, 2, -15, -1, -12, -16,
					-- layer=2 filter=71 channel=62
					12, -8, 0, -14, 11, 8, -16, 0, 12,
					-- layer=2 filter=71 channel=63
					-13, 9, 8, -1, 3, 5, -11, 3, 3,
					-- layer=2 filter=72 channel=0
					-5, 5, -20, -38, -21, 1, 16, 1, -18,
					-- layer=2 filter=72 channel=1
					0, 38, 33, 33, 43, 28, -4, 0, -14,
					-- layer=2 filter=72 channel=2
					1, 4, -18, 8, -8, 5, -1, -10, 9,
					-- layer=2 filter=72 channel=3
					7, -5, -9, 0, 0, -3, -7, -16, -35,
					-- layer=2 filter=72 channel=4
					8, 12, -9, 29, 9, -9, 33, 16, 10,
					-- layer=2 filter=72 channel=5
					11, 38, 29, 20, 41, 18, -8, 64, 25,
					-- layer=2 filter=72 channel=6
					16, -56, -48, 23, -26, -64, 21, 23, -27,
					-- layer=2 filter=72 channel=7
					39, 25, 0, 27, 2, -30, 11, -12, 0,
					-- layer=2 filter=72 channel=8
					-21, 0, 1, 9, -41, 10, 7, -32, 14,
					-- layer=2 filter=72 channel=9
					14, 56, 41, 3, 50, 45, 15, 30, 26,
					-- layer=2 filter=72 channel=10
					-5, -6, 1, -29, -27, -1, -37, 8, 7,
					-- layer=2 filter=72 channel=11
					-20, -44, -50, -3, -33, -18, 16, -9, 4,
					-- layer=2 filter=72 channel=12
					6, -20, -4, 3, 0, 7, -1, 12, 10,
					-- layer=2 filter=72 channel=13
					-41, 16, 12, -70, 20, 25, -62, 36, 52,
					-- layer=2 filter=72 channel=14
					5, -26, -33, 31, -10, -45, 33, 4, -9,
					-- layer=2 filter=72 channel=15
					6, -20, 6, 23, 13, -32, 39, 29, 24,
					-- layer=2 filter=72 channel=16
					12, -33, -33, 30, 5, -21, 30, 7, 0,
					-- layer=2 filter=72 channel=17
					7, 4, 28, 16, -1, -14, 20, -1, 15,
					-- layer=2 filter=72 channel=18
					-35, -20, 17, 9, 32, 11, -21, 3, 1,
					-- layer=2 filter=72 channel=19
					37, -22, -30, 18, -30, -59, 40, 7, -2,
					-- layer=2 filter=72 channel=20
					8, -21, -25, 32, 4, 1, 39, 14, -6,
					-- layer=2 filter=72 channel=21
					-10, 4, 2, 16, -4, -4, 23, -13, -1,
					-- layer=2 filter=72 channel=22
					14, 13, -8, 22, -1, 8, 8, 9, 9,
					-- layer=2 filter=72 channel=23
					30, -21, -15, 39, 0, -18, 19, 0, -33,
					-- layer=2 filter=72 channel=24
					-9, 5, 27, 2, 10, -15, 19, -1, 2,
					-- layer=2 filter=72 channel=25
					42, 34, 70, 10, 45, 1, 35, 22, -6,
					-- layer=2 filter=72 channel=26
					12, -6, -2, 2, -5, 12, -4, 7, -20,
					-- layer=2 filter=72 channel=27
					3, 8, 6, -1, 14, -3, -13, 11, 9,
					-- layer=2 filter=72 channel=28
					-12, -1, -3, 6, -4, -4, 0, -7, -8,
					-- layer=2 filter=72 channel=29
					3, 25, 41, -10, -6, 43, 9, 11, 36,
					-- layer=2 filter=72 channel=30
					-21, -29, 9, 11, 7, 3, 10, -9, -16,
					-- layer=2 filter=72 channel=31
					-12, -11, 6, 42, 13, 3, 33, -10, -16,
					-- layer=2 filter=72 channel=32
					-2, -32, -12, 8, -24, -25, 17, 4, 9,
					-- layer=2 filter=72 channel=33
					2, -8, -15, 37, -30, -1, 21, 37, -17,
					-- layer=2 filter=72 channel=34
					5, -6, 4, -30, -5, 7, -24, 3, 2,
					-- layer=2 filter=72 channel=35
					2, 57, 70, 44, 75, 86, -12, 79, 15,
					-- layer=2 filter=72 channel=36
					-9, 4, -3, -3, -10, -19, 10, 13, -4,
					-- layer=2 filter=72 channel=37
					11, -19, 17, -30, -16, -11, 0, 27, 3,
					-- layer=2 filter=72 channel=38
					-5, 58, 31, 18, 20, 31, 2, -36, 12,
					-- layer=2 filter=72 channel=39
					-22, -31, -42, -19, -30, -24, 26, -9, -24,
					-- layer=2 filter=72 channel=40
					-31, -2, -7, 2, -19, -8, -16, -27, 5,
					-- layer=2 filter=72 channel=41
					17, -9, -7, 31, -2, -28, 44, 24, -48,
					-- layer=2 filter=72 channel=42
					-21, -3, -10, -17, 9, 54, -34, -43, 5,
					-- layer=2 filter=72 channel=43
					18, -46, -45, 29, -21, 3, 46, -6, 27,
					-- layer=2 filter=72 channel=44
					22, -3, -27, 36, -19, -40, 45, 6, 27,
					-- layer=2 filter=72 channel=45
					26, -29, -49, 20, -46, -67, 14, -7, -6,
					-- layer=2 filter=72 channel=46
					-19, 11, 14, 5, 43, 34, 18, -11, 18,
					-- layer=2 filter=72 channel=47
					40, 9, -9, 85, -4, -40, 57, 7, -17,
					-- layer=2 filter=72 channel=48
					-4, -8, 15, -22, -12, 27, -27, -9, 6,
					-- layer=2 filter=72 channel=49
					8, -11, -23, -10, -6, -26, -30, -12, -17,
					-- layer=2 filter=72 channel=50
					3, -6, 24, -9, -8, -27, -10, -11, -24,
					-- layer=2 filter=72 channel=51
					13, 27, -5, 74, 34, -9, 40, 14, -62,
					-- layer=2 filter=72 channel=52
					-7, -1, -21, -25, -17, -12, -6, -10, -25,
					-- layer=2 filter=72 channel=53
					42, 6, -7, 42, 8, -18, 75, 33, -28,
					-- layer=2 filter=72 channel=54
					39, -23, -63, 15, -33, -40, 50, 51, 0,
					-- layer=2 filter=72 channel=55
					-27, -37, -34, -15, -57, -37, -5, -24, -30,
					-- layer=2 filter=72 channel=56
					-25, 4, 4, -9, 8, 8, -18, -33, -45,
					-- layer=2 filter=72 channel=57
					8, -31, 31, 8, -2, -39, 33, -10, -40,
					-- layer=2 filter=72 channel=58
					-33, -15, -35, -15, 0, 24, -51, -20, 11,
					-- layer=2 filter=72 channel=59
					26, -3, -18, 1, -16, -24, 24, -8, -39,
					-- layer=2 filter=72 channel=60
					-25, 3, 80, -26, 63, 69, -16, -21, 25,
					-- layer=2 filter=72 channel=61
					14, -22, -21, 47, 77, 79, 22, 11, -25,
					-- layer=2 filter=72 channel=62
					-7, -18, -48, -8, -20, -18, 4, 16, 22,
					-- layer=2 filter=72 channel=63
					-13, -38, -25, 0, -29, -23, 7, -6, -27,
					-- layer=2 filter=73 channel=0
					-14, -12, -4, -7, -3, -8, -13, -11, -12,
					-- layer=2 filter=73 channel=1
					-6, -16, 0, -17, 1, 3, 0, 7, -16,
					-- layer=2 filter=73 channel=2
					4, -4, 10, -10, 0, 0, -7, -16, 4,
					-- layer=2 filter=73 channel=3
					-15, 5, -18, -12, 0, 1, 0, 1, -14,
					-- layer=2 filter=73 channel=4
					0, 0, 8, 7, -3, 6, 2, 0, -2,
					-- layer=2 filter=73 channel=5
					5, -11, -14, -5, -4, 8, -24, 0, 11,
					-- layer=2 filter=73 channel=6
					0, -9, 3, 14, 8, -14, 11, 11, -16,
					-- layer=2 filter=73 channel=7
					12, 11, 16, 3, -7, 8, -1, 11, 6,
					-- layer=2 filter=73 channel=8
					-3, 9, -21, 0, 4, -3, 4, 14, 6,
					-- layer=2 filter=73 channel=9
					3, -12, -4, 6, 3, 7, -5, -15, -14,
					-- layer=2 filter=73 channel=10
					8, -9, 4, -15, -23, -8, 11, -18, -9,
					-- layer=2 filter=73 channel=11
					-2, -24, -6, 2, -11, 15, 12, 0, 6,
					-- layer=2 filter=73 channel=12
					-15, 0, -8, -21, 2, -3, -10, 5, 2,
					-- layer=2 filter=73 channel=13
					-9, 3, -11, 6, 0, 10, -2, -16, -17,
					-- layer=2 filter=73 channel=14
					-1, -11, 6, 3, -1, -4, -7, -12, 2,
					-- layer=2 filter=73 channel=15
					-8, -19, 3, 1, -2, -27, -5, -16, -2,
					-- layer=2 filter=73 channel=16
					-1, -2, -3, -5, 12, 2, -18, 10, 7,
					-- layer=2 filter=73 channel=17
					-9, 4, -6, -10, 4, -3, -3, -17, 8,
					-- layer=2 filter=73 channel=18
					-4, 1, 2, 1, 11, 4, 10, 12, 10,
					-- layer=2 filter=73 channel=19
					11, -2, -3, -4, -7, 9, -6, 11, 3,
					-- layer=2 filter=73 channel=20
					8, -16, -6, -11, -17, -10, -2, 2, 2,
					-- layer=2 filter=73 channel=21
					-14, -8, -6, -12, -14, -14, 7, -6, -16,
					-- layer=2 filter=73 channel=22
					1, -15, -13, -15, 1, -1, 10, 3, 0,
					-- layer=2 filter=73 channel=23
					-9, -1, -1, 4, -3, -1, -6, 1, 0,
					-- layer=2 filter=73 channel=24
					-6, 5, 8, 10, 0, 5, -14, -16, 6,
					-- layer=2 filter=73 channel=25
					0, -1, -4, 4, -8, -7, -9, -10, 10,
					-- layer=2 filter=73 channel=26
					11, -13, 0, -8, -12, 10, -13, -1, -12,
					-- layer=2 filter=73 channel=27
					0, 11, -7, -5, -6, -3, -8, 11, -14,
					-- layer=2 filter=73 channel=28
					0, 2, 12, 12, -6, -8, -7, 12, 0,
					-- layer=2 filter=73 channel=29
					11, -12, 2, 7, 4, 8, 10, 3, 1,
					-- layer=2 filter=73 channel=30
					5, -8, 9, -8, -10, -7, -9, -8, -3,
					-- layer=2 filter=73 channel=31
					-16, -1, -7, -9, -6, -8, -5, 0, 0,
					-- layer=2 filter=73 channel=32
					-17, -8, -3, -13, -3, -14, -8, -13, -14,
					-- layer=2 filter=73 channel=33
					-9, -7, -9, -10, 11, -18, -2, 10, -3,
					-- layer=2 filter=73 channel=34
					-1, -4, 6, 0, -12, -2, 5, 1, 1,
					-- layer=2 filter=73 channel=35
					-14, -10, 2, -1, 4, -20, -11, 4, 3,
					-- layer=2 filter=73 channel=36
					-5, 6, -17, 7, 8, -4, -3, -16, -13,
					-- layer=2 filter=73 channel=37
					4, -5, -21, -21, 0, -14, -4, -6, -11,
					-- layer=2 filter=73 channel=38
					-8, -8, 13, -7, 11, 0, -4, -12, -2,
					-- layer=2 filter=73 channel=39
					-4, -9, -7, 5, -4, -12, -7, 0, -26,
					-- layer=2 filter=73 channel=40
					-16, 4, 12, -1, -7, -14, -5, -8, -8,
					-- layer=2 filter=73 channel=41
					8, -6, -13, -2, 11, 9, -5, -5, -6,
					-- layer=2 filter=73 channel=42
					-7, -2, -15, 0, -14, 0, -4, -9, -15,
					-- layer=2 filter=73 channel=43
					-6, -1, -18, 9, 0, 7, 0, 6, 1,
					-- layer=2 filter=73 channel=44
					5, -12, 7, -8, -3, -13, -16, 0, 6,
					-- layer=2 filter=73 channel=45
					0, -14, 9, 8, -12, -5, -10, -6, 1,
					-- layer=2 filter=73 channel=46
					-13, -3, -2, 0, 7, -16, 11, -15, -9,
					-- layer=2 filter=73 channel=47
					10, -14, -17, -15, 7, -10, -3, 0, -18,
					-- layer=2 filter=73 channel=48
					-11, -5, -5, 0, -15, -15, -4, -2, -16,
					-- layer=2 filter=73 channel=49
					-6, 11, 12, -3, -7, -3, -13, -6, 3,
					-- layer=2 filter=73 channel=50
					-5, 0, 12, 14, -13, -1, -14, -10, 3,
					-- layer=2 filter=73 channel=51
					12, -12, -2, 4, 4, -14, -11, -3, 8,
					-- layer=2 filter=73 channel=52
					-10, 0, 0, -18, -7, -15, 11, -10, -11,
					-- layer=2 filter=73 channel=53
					3, 2, 3, -21, -19, -14, -16, 1, -10,
					-- layer=2 filter=73 channel=54
					-13, -4, 0, -9, -4, 0, -9, 7, -10,
					-- layer=2 filter=73 channel=55
					2, -22, -19, -12, 0, -9, 10, -7, -10,
					-- layer=2 filter=73 channel=56
					-13, -13, -9, 3, -5, -6, -2, 7, 5,
					-- layer=2 filter=73 channel=57
					-13, -8, 8, 6, 13, -3, -15, -6, 2,
					-- layer=2 filter=73 channel=58
					4, -9, 6, 12, -7, 3, -3, -1, 23,
					-- layer=2 filter=73 channel=59
					-8, -9, 3, 2, -12, -7, -11, 7, 16,
					-- layer=2 filter=73 channel=60
					0, -14, -11, 6, -22, -16, 10, 0, -10,
					-- layer=2 filter=73 channel=61
					12, 2, 0, -6, 10, 8, 0, 1, -15,
					-- layer=2 filter=73 channel=62
					10, -7, -17, 2, -8, -5, -12, 1, 2,
					-- layer=2 filter=73 channel=63
					11, -16, -16, -12, 5, 12, -8, -7, 8,
					-- layer=2 filter=74 channel=0
					23, 1, 30, -4, -12, 30, 8, 32, 26,
					-- layer=2 filter=74 channel=1
					7, 56, -17, 16, -32, -3, 9, 57, 0,
					-- layer=2 filter=74 channel=2
					-49, -20, 17, -3, 10, -44, 5, -8, -40,
					-- layer=2 filter=74 channel=3
					20, -34, 10, -25, -39, -39, -15, -5, 7,
					-- layer=2 filter=74 channel=4
					-22, -2, 30, -3, 6, 4, -23, 13, -3,
					-- layer=2 filter=74 channel=5
					0, -37, -24, 27, -2, 14, 8, -20, 47,
					-- layer=2 filter=74 channel=6
					-6, -7, 31, -48, -6, 12, -41, -34, -27,
					-- layer=2 filter=74 channel=7
					-1, 7, 38, -6, 34, -9, -1, 0, -8,
					-- layer=2 filter=74 channel=8
					-18, -18, -17, 34, 75, 78, 6, 48, 34,
					-- layer=2 filter=74 channel=9
					12, 68, 27, -15, -19, 8, -21, 0, -45,
					-- layer=2 filter=74 channel=10
					-23, -9, 25, -15, 0, 10, 20, 17, -21,
					-- layer=2 filter=74 channel=11
					-48, -9, 21, 27, -37, -27, 17, 7, -52,
					-- layer=2 filter=74 channel=12
					-42, -25, -13, -7, -3, -22, -25, -49, -45,
					-- layer=2 filter=74 channel=13
					11, -15, -9, 32, 16, -47, -47, 24, 25,
					-- layer=2 filter=74 channel=14
					11, 40, 13, 17, -9, -6, -6, -51, -54,
					-- layer=2 filter=74 channel=15
					27, 16, 36, -11, 10, 16, -10, -11, -16,
					-- layer=2 filter=74 channel=16
					-51, -38, -26, -44, -47, -46, -11, -66, -12,
					-- layer=2 filter=74 channel=17
					20, 3, -20, 9, -4, -3, -45, -46, -16,
					-- layer=2 filter=74 channel=18
					-19, -36, 28, -30, -10, -44, -15, 13, 2,
					-- layer=2 filter=74 channel=19
					-59, -71, -11, -34, -21, -13, -16, -34, -26,
					-- layer=2 filter=74 channel=20
					-49, -33, -2, 8, 5, 19, -26, -60, -51,
					-- layer=2 filter=74 channel=21
					11, -6, 13, -19, 13, -9, -26, -22, -30,
					-- layer=2 filter=74 channel=22
					6, 5, -8, -2, 15, 43, 8, 13, -4,
					-- layer=2 filter=74 channel=23
					-3, 7, 24, -10, 8, 10, -16, -25, -19,
					-- layer=2 filter=74 channel=24
					-25, -7, -34, -2, -2, -45, -25, -66, -11,
					-- layer=2 filter=74 channel=25
					17, 37, 66, 24, -10, 35, 22, 6, -23,
					-- layer=2 filter=74 channel=26
					11, -14, -14, 9, -1, 19, 0, -9, 6,
					-- layer=2 filter=74 channel=27
					12, 13, 2, 0, 0, 0, -3, 4, -9,
					-- layer=2 filter=74 channel=28
					25, -3, -16, 1, 6, 2, 8, -8, 12,
					-- layer=2 filter=74 channel=29
					-10, -15, -17, 15, 25, 41, -7, -35, -16,
					-- layer=2 filter=74 channel=30
					-33, -15, -33, -63, -5, -20, -18, -43, -13,
					-- layer=2 filter=74 channel=31
					-36, 15, -20, 21, -14, -7, 24, 37, -25,
					-- layer=2 filter=74 channel=32
					-54, -22, -29, -32, -9, -33, -54, -48, -8,
					-- layer=2 filter=74 channel=33
					0, 18, -6, 3, 39, 25, -3, -16, -19,
					-- layer=2 filter=74 channel=34
					22, 0, 19, -19, 8, 31, 21, 22, 24,
					-- layer=2 filter=74 channel=35
					4, 40, 14, 6, 12, -51, 19, 53, 10,
					-- layer=2 filter=74 channel=36
					-6, -12, -17, -14, -28, -25, -59, -39, -26,
					-- layer=2 filter=74 channel=37
					42, 23, 46, 0, 39, 7, 2, 27, 23,
					-- layer=2 filter=74 channel=38
					22, 37, -8, -3, -15, 8, -14, 39, -2,
					-- layer=2 filter=74 channel=39
					-37, -3, 26, -1, -46, 0, 2, 31, 27,
					-- layer=2 filter=74 channel=40
					2, 4, 15, 2, 4, -11, -3, 26, 48,
					-- layer=2 filter=74 channel=41
					20, 19, 8, 14, 30, 30, -4, -5, -35,
					-- layer=2 filter=74 channel=42
					-9, 11, -15, 0, 49, -10, -22, -8, -3,
					-- layer=2 filter=74 channel=43
					-63, -15, -28, -28, -30, -16, -29, -19, 4,
					-- layer=2 filter=74 channel=44
					-12, 0, 28, -4, 7, 22, 7, -10, 1,
					-- layer=2 filter=74 channel=45
					-32, 17, -30, -66, -13, 24, -24, -37, -11,
					-- layer=2 filter=74 channel=46
					-14, 75, 48, 13, 9, -4, -7, 18, -42,
					-- layer=2 filter=74 channel=47
					-2, 12, -4, -17, -12, 22, -25, -5, -10,
					-- layer=2 filter=74 channel=48
					-21, 0, -7, -13, 25, -9, 0, 0, -16,
					-- layer=2 filter=74 channel=49
					-71, -1, 47, -23, -38, 0, -32, -7, -10,
					-- layer=2 filter=74 channel=50
					2, 27, 33, 8, 36, 21, 3, -45, -34,
					-- layer=2 filter=74 channel=51
					24, 16, 16, 9, 14, 25, -18, 0, -2,
					-- layer=2 filter=74 channel=52
					-21, 14, 36, -15, -35, -22, 4, -24, -62,
					-- layer=2 filter=74 channel=53
					17, 25, 15, -7, 22, 27, 21, 22, -34,
					-- layer=2 filter=74 channel=54
					-55, -9, 1, -24, -33, -10, -71, -11, 3,
					-- layer=2 filter=74 channel=55
					-56, 1, 40, -11, -48, -31, -28, -31, -18,
					-- layer=2 filter=74 channel=56
					14, 1, 11, 7, 7, 10, 27, 25, 8,
					-- layer=2 filter=74 channel=57
					-4, -14, -13, 15, 18, 15, -8, 2, 6,
					-- layer=2 filter=74 channel=58
					-55, -3, 51, -5, 22, 33, -12, 40, -12,
					-- layer=2 filter=74 channel=59
					29, 16, 18, -3, 23, 62, 28, -11, -26,
					-- layer=2 filter=74 channel=60
					76, 56, 3, -7, 41, 2, -5, 11, 28,
					-- layer=2 filter=74 channel=61
					-9, -45, 0, -10, 0, 20, -11, -4, -23,
					-- layer=2 filter=74 channel=62
					58, -51, -48, 40, -25, -19, 42, -17, -7,
					-- layer=2 filter=74 channel=63
					-8, -11, -9, -2, -21, -33, 6, -18, -26,
					-- layer=2 filter=75 channel=0
					40, 9, -8, -16, -28, 40, 27, 0, -1,
					-- layer=2 filter=75 channel=1
					-35, 30, 33, 4, 26, 15, 70, 3, -1,
					-- layer=2 filter=75 channel=2
					-7, -12, 5, -27, 0, -46, 24, 11, -10,
					-- layer=2 filter=75 channel=3
					4, 22, 24, -14, -33, 9, 13, 6, -4,
					-- layer=2 filter=75 channel=4
					6, 19, 8, -13, -2, -1, -15, -12, -7,
					-- layer=2 filter=75 channel=5
					52, 40, -21, 24, 34, 21, 63, 35, 47,
					-- layer=2 filter=75 channel=6
					-22, -11, 22, -1, -7, 16, -12, -50, -25,
					-- layer=2 filter=75 channel=7
					18, -34, 27, 24, -13, 26, 26, 68, 20,
					-- layer=2 filter=75 channel=8
					-3, 34, 46, -23, -22, 54, -13, -28, 3,
					-- layer=2 filter=75 channel=9
					-5, -46, 25, 7, 60, 62, -26, 14, -10,
					-- layer=2 filter=75 channel=10
					-46, -62, -46, 4, -6, 23, -28, -26, -27,
					-- layer=2 filter=75 channel=11
					5, -36, -59, 24, 45, 66, 2, 10, -20,
					-- layer=2 filter=75 channel=12
					2, 9, 44, -38, -29, -28, -7, 12, -24,
					-- layer=2 filter=75 channel=13
					-23, 50, 6, -29, 34, 42, 15, -16, -21,
					-- layer=2 filter=75 channel=14
					9, 10, 23, 32, 12, 23, 34, -35, -25,
					-- layer=2 filter=75 channel=15
					0, -5, 25, -17, -17, 21, -18, 1, -15,
					-- layer=2 filter=75 channel=16
					-3, -1, 4, 17, 55, -33, 24, 19, 16,
					-- layer=2 filter=75 channel=17
					19, 29, -9, 4, -2, -14, 14, -14, 21,
					-- layer=2 filter=75 channel=18
					-53, -5, 28, -7, 12, 7, -42, 13, 13,
					-- layer=2 filter=75 channel=19
					9, -20, 61, -37, -30, 27, -1, -9, -30,
					-- layer=2 filter=75 channel=20
					-23, -25, 9, -8, 5, -41, 26, 34, -6,
					-- layer=2 filter=75 channel=21
					1, 15, 21, -9, 5, -15, -17, 0, -22,
					-- layer=2 filter=75 channel=22
					31, 20, 21, 2, -16, -5, 3, -48, -29,
					-- layer=2 filter=75 channel=23
					-10, 7, 15, -23, -2, 49, -16, -32, -8,
					-- layer=2 filter=75 channel=24
					7, 2, -13, -36, -1, -53, 39, 29, -7,
					-- layer=2 filter=75 channel=25
					38, -25, -54, -25, -10, -21, 29, 46, 32,
					-- layer=2 filter=75 channel=26
					-7, 9, -19, 13, -8, -13, 2, 5, -15,
					-- layer=2 filter=75 channel=27
					-8, -9, 6, -5, 3, -2, -2, 0, 14,
					-- layer=2 filter=75 channel=28
					16, 2, 0, -16, 5, -10, -8, 0, 0,
					-- layer=2 filter=75 channel=29
					-4, 21, 24, 10, -26, -82, 15, 24, 46,
					-- layer=2 filter=75 channel=30
					18, -33, -20, -29, -4, -16, 13, -17, 25,
					-- layer=2 filter=75 channel=31
					-6, -25, -36, 21, 42, 61, 25, -27, 8,
					-- layer=2 filter=75 channel=32
					3, 33, 13, 18, 24, -9, 9, -39, -26,
					-- layer=2 filter=75 channel=33
					2, 8, 24, -24, 4, 10, -11, 0, 5,
					-- layer=2 filter=75 channel=34
					35, 0, 3, -17, -47, 14, -12, 15, -10,
					-- layer=2 filter=75 channel=35
					44, 43, 10, 23, 68, 53, 15, -10, -14,
					-- layer=2 filter=75 channel=36
					25, -7, 20, -22, -14, -27, -12, -9, -25,
					-- layer=2 filter=75 channel=37
					27, -19, -12, 31, -7, 20, -24, 2, -21,
					-- layer=2 filter=75 channel=38
					-16, 0, 12, 5, 20, 46, 19, -3, 16,
					-- layer=2 filter=75 channel=39
					-11, -23, -13, 31, -5, -12, 11, -36, 15,
					-- layer=2 filter=75 channel=40
					-5, 4, 23, -2, -5, -12, -17, -66, -36,
					-- layer=2 filter=75 channel=41
					13, 19, 5, -11, 17, 23, -23, -8, 5,
					-- layer=2 filter=75 channel=42
					-2, 8, -15, -20, 33, -60, 40, -11, 15,
					-- layer=2 filter=75 channel=43
					19, 21, -7, -47, 0, -2, -13, -2, -18,
					-- layer=2 filter=75 channel=44
					-40, -23, 30, -20, 28, 8, -6, 23, -19,
					-- layer=2 filter=75 channel=45
					44, 35, 26, -18, 30, 0, -29, -51, -19,
					-- layer=2 filter=75 channel=46
					-22, -58, -49, -21, 15, 30, -16, 15, -9,
					-- layer=2 filter=75 channel=47
					3, 23, 31, -39, 7, -5, -6, -25, -15,
					-- layer=2 filter=75 channel=48
					-11, 3, 25, -4, -18, -20, -22, -35, 3,
					-- layer=2 filter=75 channel=49
					0, 6, -3, 4, 49, 15, -27, 0, -29,
					-- layer=2 filter=75 channel=50
					-17, -7, 27, 23, 34, 13, 11, -17, 28,
					-- layer=2 filter=75 channel=51
					23, 6, -17, -16, -21, 50, 6, 46, 35,
					-- layer=2 filter=75 channel=52
					-48, -30, -50, 36, 4, 27, -10, -12, -10,
					-- layer=2 filter=75 channel=53
					23, 2, 9, -10, 3, 70, 5, 24, 3,
					-- layer=2 filter=75 channel=54
					-10, 16, -12, -6, 4, -31, 6, -6, 10,
					-- layer=2 filter=75 channel=55
					-45, -35, -77, -12, -33, 59, -15, -6, 0,
					-- layer=2 filter=75 channel=56
					-18, -46, -35, 18, 10, 28, -28, -5, -8,
					-- layer=2 filter=75 channel=57
					12, 51, 10, 1, 20, 6, -52, -50, 0,
					-- layer=2 filter=75 channel=58
					33, -13, -25, -13, 8, -46, -4, -7, -5,
					-- layer=2 filter=75 channel=59
					-36, -15, 8, 12, -3, 1, 24, 11, 11,
					-- layer=2 filter=75 channel=60
					4, 41, 3, 4, 22, 34, -9, -20, -8,
					-- layer=2 filter=75 channel=61
					-12, 15, 33, 23, -3, 24, 37, 57, 53,
					-- layer=2 filter=75 channel=62
					-59, -71, -17, -91, -28, 53, -5, 65, 192,
					-- layer=2 filter=75 channel=63
					26, -6, 3, -2, 0, 21, 18, 0, -39,
					-- layer=2 filter=76 channel=0
					16, -15, 6, 26, 24, 15, 7, 5, 7,
					-- layer=2 filter=76 channel=1
					-31, -29, 0, -10, 30, 0, -2, 3, 28,
					-- layer=2 filter=76 channel=2
					-9, -20, -10, 3, -3, -2, -11, -15, -34,
					-- layer=2 filter=76 channel=3
					10, 0, 0, 17, 3, -28, -5, 0, -11,
					-- layer=2 filter=76 channel=4
					-11, 9, 8, -24, -38, 14, -31, -29, -6,
					-- layer=2 filter=76 channel=5
					-42, -38, -34, -41, -64, 34, 12, 54, 45,
					-- layer=2 filter=76 channel=6
					0, -11, 20, -4, 11, 6, -12, -8, 17,
					-- layer=2 filter=76 channel=7
					24, 12, 8, 37, 62, 7, 5, -3, 19,
					-- layer=2 filter=76 channel=8
					-64, -85, -61, 58, 55, 61, 33, 57, 8,
					-- layer=2 filter=76 channel=9
					-45, -13, 40, -27, -12, 18, 8, 108, -27,
					-- layer=2 filter=76 channel=10
					5, -28, 0, 39, 40, 18, 0, 30, 0,
					-- layer=2 filter=76 channel=11
					37, 44, 20, 62, 64, 21, -1, -16, -66,
					-- layer=2 filter=76 channel=12
					-15, -3, -18, 18, 14, 9, -10, -9, -30,
					-- layer=2 filter=76 channel=13
					-33, -41, 24, -59, -18, 24, -40, 31, 11,
					-- layer=2 filter=76 channel=14
					13, 10, 8, 47, 8, -20, -27, -56, -34,
					-- layer=2 filter=76 channel=15
					28, 2, -2, 14, -12, -31, 18, 10, -4,
					-- layer=2 filter=76 channel=16
					-2, -5, -42, 1, -4, 9, 4, -19, 3,
					-- layer=2 filter=76 channel=17
					26, 24, 0, 19, 9, 10, -17, -7, -5,
					-- layer=2 filter=76 channel=18
					-18, -58, -56, -10, 44, -12, -15, 39, -34,
					-- layer=2 filter=76 channel=19
					-7, 1, -13, 24, 25, 28, -22, -20, -29,
					-- layer=2 filter=76 channel=20
					11, 23, -18, 29, 6, 17, -3, -19, -19,
					-- layer=2 filter=76 channel=21
					17, 17, 5, -11, -14, 16, -18, -41, 11,
					-- layer=2 filter=76 channel=22
					-19, -22, -25, 19, -2, 11, -36, -8, -8,
					-- layer=2 filter=76 channel=23
					7, 21, 19, -13, -7, 4, -17, -4, -19,
					-- layer=2 filter=76 channel=24
					5, -12, -8, -1, 10, 1, -1, 0, 19,
					-- layer=2 filter=76 channel=25
					42, -9, -6, 30, -1, 29, -34, -50, -46,
					-- layer=2 filter=76 channel=26
					-5, -5, -4, -5, -5, -2, 4, -1, -1,
					-- layer=2 filter=76 channel=27
					4, 2, 6, 7, -9, -8, 10, 0, -5,
					-- layer=2 filter=76 channel=28
					-9, -3, -18, 8, 13, 7, 3, 7, 9,
					-- layer=2 filter=76 channel=29
					-1, 0, -4, 61, 69, 3, 2, -6, -41,
					-- layer=2 filter=76 channel=30
					-35, -37, -32, -46, -24, -16, -37, 24, -51,
					-- layer=2 filter=76 channel=31
					-5, 1, 34, 8, 30, 32, -20, -46, -33,
					-- layer=2 filter=76 channel=32
					0, 6, -22, -9, -8, -6, -3, -9, 2,
					-- layer=2 filter=76 channel=33
					2, 16, 30, -10, 8, 9, 5, -8, 15,
					-- layer=2 filter=76 channel=34
					25, -14, -7, 30, 6, 14, 28, 32, 1,
					-- layer=2 filter=76 channel=35
					-26, -19, 11, -71, -57, -66, -42, -28, 32,
					-- layer=2 filter=76 channel=36
					8, 2, 0, 13, -4, -13, 11, 16, -1,
					-- layer=2 filter=76 channel=37
					18, 29, 12, 22, 26, -13, 6, 24, 5,
					-- layer=2 filter=76 channel=38
					-58, -16, 0, -5, 14, -5, -7, 20, 11,
					-- layer=2 filter=76 channel=39
					-51, -48, -4, -38, -33, 27, -30, -9, -21,
					-- layer=2 filter=76 channel=40
					-41, -18, 0, -16, 10, 18, -29, 43, -4,
					-- layer=2 filter=76 channel=41
					30, 28, 23, -20, 8, 2, -3, -8, 0,
					-- layer=2 filter=76 channel=42
					-27, -17, -25, -9, 17, 1, -13, 2, -9,
					-- layer=2 filter=76 channel=43
					21, 35, -35, -8, 30, -5, -2, 14, -25,
					-- layer=2 filter=76 channel=44
					-2, 20, 3, -4, -1, 13, 27, 8, -7,
					-- layer=2 filter=76 channel=45
					8, -14, 12, 0, -27, -17, 0, 0, -12,
					-- layer=2 filter=76 channel=46
					-12, 9, 26, -2, 19, 7, -9, 36, -1,
					-- layer=2 filter=76 channel=47
					13, 15, -7, -23, -21, -22, 15, -27, -15,
					-- layer=2 filter=76 channel=48
					-52, -28, -15, 7, 28, 10, 1, 24, -10,
					-- layer=2 filter=76 channel=49
					16, 34, 4, -31, -41, -15, -25, 10, -1,
					-- layer=2 filter=76 channel=50
					-1, -11, 14, -23, -18, 12, 21, -34, 13,
					-- layer=2 filter=76 channel=51
					68, 46, 2, 6, -2, 1, -24, 0, -31,
					-- layer=2 filter=76 channel=52
					42, 26, 7, 45, 67, 22, -17, -15, -61,
					-- layer=2 filter=76 channel=53
					-5, 10, 5, -17, -6, -20, -12, 13, 2,
					-- layer=2 filter=76 channel=54
					70, 32, -1, 37, 37, -15, 23, -24, -31,
					-- layer=2 filter=76 channel=55
					61, 20, 16, 61, 73, 26, -8, 0, -37,
					-- layer=2 filter=76 channel=56
					-36, -28, -3, -22, -7, 41, -53, 23, -3,
					-- layer=2 filter=76 channel=57
					16, 23, 6, 22, 33, 33, 4, -3, -10,
					-- layer=2 filter=76 channel=58
					-67, -49, -5, -13, 0, 47, -53, -30, 55,
					-- layer=2 filter=76 channel=59
					30, 22, 20, 20, 26, 19, 1, -13, 6,
					-- layer=2 filter=76 channel=60
					-60, -51, 44, -81, -41, 10, -30, 19, -15,
					-- layer=2 filter=76 channel=61
					30, -25, -29, -18, -10, -47, 5, 47, 9,
					-- layer=2 filter=76 channel=62
					-5, -46, -57, -31, -28, -20, 74, 29, -26,
					-- layer=2 filter=76 channel=63
					20, 18, 17, -19, -42, -11, -18, -15, 38,
					-- layer=2 filter=77 channel=0
					36, 9, 23, 43, -40, -29, -3, 17, 40,
					-- layer=2 filter=77 channel=1
					9, 12, -35, 40, 7, 21, 10, 10, -19,
					-- layer=2 filter=77 channel=2
					10, -1, 0, -15, 29, 26, 6, 5, 0,
					-- layer=2 filter=77 channel=3
					-29, 29, -11, -6, 0, -14, 1, -9, -58,
					-- layer=2 filter=77 channel=4
					14, 11, 36, 9, -20, 25, -59, 0, 60,
					-- layer=2 filter=77 channel=5
					12, -14, -67, 2, 3, -33, -22, -7, -28,
					-- layer=2 filter=77 channel=6
					-21, 29, 5, -9, 13, 3, 25, -11, 14,
					-- layer=2 filter=77 channel=7
					14, -36, 1, -36, -21, 59, -6, 3, 82,
					-- layer=2 filter=77 channel=8
					-10, -20, 36, 27, 7, 0, 13, -17, -29,
					-- layer=2 filter=77 channel=9
					-4, 4, -51, 23, 18, 0, 16, -41, -14,
					-- layer=2 filter=77 channel=10
					29, -27, -60, 25, -1, -28, 13, -43, -8,
					-- layer=2 filter=77 channel=11
					8, 4, 10, -9, -53, -3, 1, 1, 47,
					-- layer=2 filter=77 channel=12
					9, -2, -3, 3, 25, 3, -18, 17, -5,
					-- layer=2 filter=77 channel=13
					-6, -54, -77, 23, -23, -66, -15, -8, -37,
					-- layer=2 filter=77 channel=14
					-52, -25, -7, -1, -7, 37, 54, 10, -34,
					-- layer=2 filter=77 channel=15
					-22, -5, 3, -36, -57, -5, -73, -33, 39,
					-- layer=2 filter=77 channel=16
					-6, 0, 29, -10, 49, 41, 61, 0, 12,
					-- layer=2 filter=77 channel=17
					-27, 12, -3, -4, 19, 7, 24, 19, -4,
					-- layer=2 filter=77 channel=18
					-29, -12, -71, 0, -36, -12, -31, -8, 35,
					-- layer=2 filter=77 channel=19
					0, -69, 5, -3, -7, 42, 7, 0, 37,
					-- layer=2 filter=77 channel=20
					-8, 0, 1, 19, 2, -9, 25, 11, 0,
					-- layer=2 filter=77 channel=21
					-33, 28, 1, 1, 4, -7, 13, -18, -14,
					-- layer=2 filter=77 channel=22
					6, -3, -8, 45, 14, -20, 43, 8, -61,
					-- layer=2 filter=77 channel=23
					-11, 20, 4, 24, -7, 34, 6, 10, 13,
					-- layer=2 filter=77 channel=24
					4, 23, 25, -14, 32, 9, 25, 11, -16,
					-- layer=2 filter=77 channel=25
					-29, 9, 32, -10, 3, 17, -41, -8, -32,
					-- layer=2 filter=77 channel=26
					15, 21, -1, -5, 10, 4, -16, -7, 0,
					-- layer=2 filter=77 channel=27
					0, -13, 8, 10, -3, -3, 5, -8, -3,
					-- layer=2 filter=77 channel=28
					15, -2, 0, 3, -13, 15, 20, 3, 4,
					-- layer=2 filter=77 channel=29
					15, 16, -41, 46, 5, -54, 17, -7, -26,
					-- layer=2 filter=77 channel=30
					-12, 14, 0, 41, 19, 37, 73, -10, -62,
					-- layer=2 filter=77 channel=31
					69, 14, -30, 31, -22, 0, 11, -27, -10,
					-- layer=2 filter=77 channel=32
					-24, -23, -21, 36, -5, -6, 31, -9, -12,
					-- layer=2 filter=77 channel=33
					-32, 5, 18, 6, 0, 0, 12, -9, 0,
					-- layer=2 filter=77 channel=34
					-4, 16, -9, -45, -70, -37, -55, 4, 40,
					-- layer=2 filter=77 channel=35
					39, 21, -15, 33, 39, 19, 8, 22, -1,
					-- layer=2 filter=77 channel=36
					15, -6, 15, -12, -16, 3, -6, 7, 32,
					-- layer=2 filter=77 channel=37
					21, 12, 16, -19, -7, -3, 2, -3, 36,
					-- layer=2 filter=77 channel=38
					-9, -8, -48, 15, 6, 2, -22, -34, -14,
					-- layer=2 filter=77 channel=39
					34, 15, -42, -3, 16, -10, -43, -11, 46,
					-- layer=2 filter=77 channel=40
					0, -24, -1, 72, -3, 10, -2, -57, -16,
					-- layer=2 filter=77 channel=41
					-34, -2, 21, 22, 11, -1, -6, -4, -17,
					-- layer=2 filter=77 channel=42
					22, 29, -11, 20, 48, -21, 13, 26, -55,
					-- layer=2 filter=77 channel=43
					-24, 1, 45, -9, -10, 52, 39, 16, 38,
					-- layer=2 filter=77 channel=44
					-32, 12, 46, -36, 4, 59, -56, 8, 104,
					-- layer=2 filter=77 channel=45
					-34, 21, 27, -2, -11, -9, 2, 12, -9,
					-- layer=2 filter=77 channel=46
					1, 34, -82, 37, 49, 19, 23, 40, -11,
					-- layer=2 filter=77 channel=47
					-71, 10, 37, -48, -22, 9, -37, -1, 48,
					-- layer=2 filter=77 channel=48
					29, 5, -26, 33, 27, -25, 3, 8, -54,
					-- layer=2 filter=77 channel=49
					8, -18, 12, 34, 68, 0, -7, -29, 12,
					-- layer=2 filter=77 channel=50
					-66, -22, -10, 6, -20, -22, -36, -16, -24,
					-- layer=2 filter=77 channel=51
					7, 44, 49, -25, -75, 102, -20, 35, 31,
					-- layer=2 filter=77 channel=52
					0, -33, -38, -3, -17, 8, -6, -36, -7,
					-- layer=2 filter=77 channel=53
					-17, 27, 33, 24, -7, 0, -7, 11, 42,
					-- layer=2 filter=77 channel=54
					-35, -37, 45, -6, -7, 62, -16, 46, 98,
					-- layer=2 filter=77 channel=55
					-4, -31, -5, -22, -61, 14, -14, -25, -11,
					-- layer=2 filter=77 channel=56
					44, 33, -31, 2, 11, 3, -6, 5, -44,
					-- layer=2 filter=77 channel=57
					-40, -3, -4, -4, -32, -7, -10, 0, 19,
					-- layer=2 filter=77 channel=58
					15, 47, -8, -39, 47, 3, -50, 38, -27,
					-- layer=2 filter=77 channel=59
					-26, -3, 24, 22, -28, -31, -37, 7, -15,
					-- layer=2 filter=77 channel=60
					26, 13, -23, 28, 4, -40, -78, 8, -72,
					-- layer=2 filter=77 channel=61
					1, -24, -79, -32, -94, 13, -7, -16, -7,
					-- layer=2 filter=77 channel=62
					-11, -76, -50, 16, -44, -35, 10, -75, -91,
					-- layer=2 filter=77 channel=63
					-33, 17, 19, -19, -38, 9, 0, 8, -1,
					-- layer=2 filter=78 channel=0
					18, 6, -12, 1, 8, 12, -11, -14, -10,
					-- layer=2 filter=78 channel=1
					-82, -73, -30, -41, -97, -32, -12, -67, 21,
					-- layer=2 filter=78 channel=2
					4, 10, 11, -20, -3, -2, -9, 6, 6,
					-- layer=2 filter=78 channel=3
					-31, 10, 9, -59, -21, -11, -52, -14, 0,
					-- layer=2 filter=78 channel=4
					-11, 4, 9, 0, -6, -31, 16, -3, -21,
					-- layer=2 filter=78 channel=5
					46, 43, 5, 26, 25, 28, 50, 53, 46,
					-- layer=2 filter=78 channel=6
					17, -10, -20, 31, 4, -15, 4, -12, 3,
					-- layer=2 filter=78 channel=7
					25, -12, 21, 3, 10, 31, -14, -10, -40,
					-- layer=2 filter=78 channel=8
					47, 10, 25, 64, 77, 30, -25, -9, -14,
					-- layer=2 filter=78 channel=9
					-70, 4, 48, -3, -86, -32, 41, -32, 26,
					-- layer=2 filter=78 channel=10
					5, 25, 21, -10, -6, 26, -22, -9, -13,
					-- layer=2 filter=78 channel=11
					0, 19, -9, 5, 9, -25, 29, 23, 4,
					-- layer=2 filter=78 channel=12
					40, 30, 8, -16, 7, -22, 5, -8, 0,
					-- layer=2 filter=78 channel=13
					17, 43, 20, -2, 8, 69, 22, 40, 93,
					-- layer=2 filter=78 channel=14
					-39, -7, 10, 17, -11, -21, -17, -34, -17,
					-- layer=2 filter=78 channel=15
					-4, 4, 9, 3, 5, 11, 15, 12, 10,
					-- layer=2 filter=78 channel=16
					-32, -32, -2, 37, -4, -17, 16, 30, 36,
					-- layer=2 filter=78 channel=17
					-28, 9, -3, -62, 2, 5, -12, 10, 23,
					-- layer=2 filter=78 channel=18
					35, 17, 20, 10, 66, 28, 55, 29, 42,
					-- layer=2 filter=78 channel=19
					21, 33, 7, 21, 14, -29, -13, -2, -30,
					-- layer=2 filter=78 channel=20
					-12, 28, -17, -28, -24, -56, -3, 14, -6,
					-- layer=2 filter=78 channel=21
					2, 0, 29, -3, 0, 27, 4, 7, 11,
					-- layer=2 filter=78 channel=22
					-10, -12, 2, -24, -48, 0, -43, -70, -40,
					-- layer=2 filter=78 channel=23
					-13, -24, -22, 9, 2, -4, 9, 12, 29,
					-- layer=2 filter=78 channel=24
					-37, 0, -16, 2, -22, 0, 0, 23, 31,
					-- layer=2 filter=78 channel=25
					36, -11, 41, -10, -47, 22, -3, 38, -29,
					-- layer=2 filter=78 channel=26
					-1, 7, -2, 13, -8, 2, 12, 6, 12,
					-- layer=2 filter=78 channel=27
					-4, -3, -5, -10, -10, 12, 0, 11, -7,
					-- layer=2 filter=78 channel=28
					-1, -1, -7, -5, 2, 18, -11, -1, -1,
					-- layer=2 filter=78 channel=29
					11, 21, 40, -12, 27, 29, 1, 4, -14,
					-- layer=2 filter=78 channel=30
					-114, -89, -12, -53, -48, -18, -39, -35, 22,
					-- layer=2 filter=78 channel=31
					-29, -6, 28, 7, -17, -34, -4, 5, 21,
					-- layer=2 filter=78 channel=32
					7, -2, 13, 11, 19, 19, -34, 14, 20,
					-- layer=2 filter=78 channel=33
					20, 29, 17, 48, 38, 20, 37, 33, 16,
					-- layer=2 filter=78 channel=34
					22, 37, -10, -7, 4, 19, -3, -35, -31,
					-- layer=2 filter=78 channel=35
					-54, -68, -11, -32, -58, -14, -3, -32, -6,
					-- layer=2 filter=78 channel=36
					0, -2, 10, -14, -29, -19, -2, -2, -11,
					-- layer=2 filter=78 channel=37
					9, 30, 8, 0, 10, 33, 37, 3, -18,
					-- layer=2 filter=78 channel=38
					-33, -58, -51, 8, -103, -51, 34, -28, 23,
					-- layer=2 filter=78 channel=39
					2, -26, -33, -32, -37, -17, -6, -71, -33,
					-- layer=2 filter=78 channel=40
					-33, -65, -14, 12, -29, -76, 70, -42, 19,
					-- layer=2 filter=78 channel=41
					0, -15, -4, 23, 18, 9, 16, 6, 28,
					-- layer=2 filter=78 channel=42
					-27, -2, 56, -18, -41, 10, -6, 0, -2,
					-- layer=2 filter=78 channel=43
					24, 27, 12, 33, 36, 10, 22, 67, 8,
					-- layer=2 filter=78 channel=44
					13, 11, -8, 25, 22, -7, 46, 30, 16,
					-- layer=2 filter=78 channel=45
					20, -21, 8, 35, 25, 2, -3, 8, 15,
					-- layer=2 filter=78 channel=46
					-99, -42, -8, -107, -134, 20, -38, -29, 39,
					-- layer=2 filter=78 channel=47
					-23, -35, -53, -12, 2, -9, -9, 0, -4,
					-- layer=2 filter=78 channel=48
					-4, 17, 35, -14, 7, -3, -35, -11, -13,
					-- layer=2 filter=78 channel=49
					0, -4, -34, 23, -36, -23, 21, 0, -16,
					-- layer=2 filter=78 channel=50
					-7, -17, 7, -27, -13, 30, 21, 19, 7,
					-- layer=2 filter=78 channel=51
					-2, -43, 13, -9, -5, 1, 35, 26, 35,
					-- layer=2 filter=78 channel=52
					-17, -9, 22, 22, -4, -23, 13, 12, 9,
					-- layer=2 filter=78 channel=53
					-2, -25, -37, 13, -6, -12, 44, 32, 31,
					-- layer=2 filter=78 channel=54
					-42, -8, -4, 16, 22, -2, 12, 30, -9,
					-- layer=2 filter=78 channel=55
					38, 21, 3, 10, 13, -6, 8, 17, 4,
					-- layer=2 filter=78 channel=56
					-39, -23, 33, -74, -112, -30, -66, -78, -4,
					-- layer=2 filter=78 channel=57
					20, 32, 0, 42, 11, 31, 7, 22, 19,
					-- layer=2 filter=78 channel=58
					9, -57, -75, -10, 9, -37, -42, 16, 32,
					-- layer=2 filter=78 channel=59
					8, -8, 23, -3, -14, 23, -21, 10, -15,
					-- layer=2 filter=78 channel=60
					-59, -6, 8, -134, -124, 17, -27, 17, 61,
					-- layer=2 filter=78 channel=61
					-56, -26, 8, -6, -32, -47, 14, -9, 48,
					-- layer=2 filter=78 channel=62
					-28, 45, 46, -18, 40, 32, 4, -44, -85,
					-- layer=2 filter=78 channel=63
					-53, -26, -14, -20, -7, -18, 0, -22, -2,
					-- layer=2 filter=79 channel=0
					16, -18, -36, 31, -7, -100, 3, -97, 6,
					-- layer=2 filter=79 channel=1
					74, -38, -6, 25, 73, -52, 20, 8, -62,
					-- layer=2 filter=79 channel=2
					-7, 13, 6, -9, 20, 16, -14, 13, 16,
					-- layer=2 filter=79 channel=3
					-15, -23, -46, -20, -47, 29, -21, 29, 21,
					-- layer=2 filter=79 channel=4
					-2, 13, 13, 11, 11, 6, 1, 8, -7,
					-- layer=2 filter=79 channel=5
					40, 45, -12, 51, 27, -30, 46, -19, -41,
					-- layer=2 filter=79 channel=6
					-4, 12, -24, 9, -4, -1, 20, 2, 18,
					-- layer=2 filter=79 channel=7
					22, -8, -23, -1, 15, 36, -22, -5, 58,
					-- layer=2 filter=79 channel=8
					42, 45, -30, 34, -76, -78, -19, -89, -67,
					-- layer=2 filter=79 channel=9
					12, -9, -96, 37, -109, -66, -19, -20, -82,
					-- layer=2 filter=79 channel=10
					-6, -1, 7, 41, -9, -27, 26, -23, -12,
					-- layer=2 filter=79 channel=11
					18, -24, -33, 28, -29, -17, -4, -24, 5,
					-- layer=2 filter=79 channel=12
					-1, 7, -11, 1, 13, 7, 13, -5, 28,
					-- layer=2 filter=79 channel=13
					-109, -20, 3, 12, 20, 22, -11, -5, -63,
					-- layer=2 filter=79 channel=14
					-33, -32, -68, 0, -28, 17, 22, 15, 20,
					-- layer=2 filter=79 channel=15
					-19, -36, -3, 21, -17, 17, 14, -23, 2,
					-- layer=2 filter=79 channel=16
					22, 38, 23, -21, 18, 41, 14, 45, 36,
					-- layer=2 filter=79 channel=17
					2, -11, 1, -12, 6, 16, 2, 16, 10,
					-- layer=2 filter=79 channel=18
					17, 25, -41, 37, 8, 77, 1, -18, -45,
					-- layer=2 filter=79 channel=19
					-20, -10, 4, -14, -6, 8, 9, -25, -3,
					-- layer=2 filter=79 channel=20
					-13, -3, 2, -9, 13, 5, 19, -12, 30,
					-- layer=2 filter=79 channel=21
					-25, -27, -4, 0, -61, -3, -16, -7, 0,
					-- layer=2 filter=79 channel=22
					1, 4, -13, 20, -8, 22, 12, -11, 27,
					-- layer=2 filter=79 channel=23
					-9, 10, 23, 0, 20, 23, -1, 8, -8,
					-- layer=2 filter=79 channel=24
					-15, 1, 3, -8, 0, 22, -24, 31, 35,
					-- layer=2 filter=79 channel=25
					9, 25, 48, 68, 62, -58, 11, 40, 7,
					-- layer=2 filter=79 channel=26
					-4, 11, 15, -4, -1, -6, -11, 5, 2,
					-- layer=2 filter=79 channel=27
					-9, -6, 8, 5, -16, 11, 4, -2, -2,
					-- layer=2 filter=79 channel=28
					13, 10, -4, 7, -7, 16, 4, 4, 8,
					-- layer=2 filter=79 channel=29
					17, -29, -12, 13, -61, 9, 5, 1, 9,
					-- layer=2 filter=79 channel=30
					9, -4, -21, 3, -2, 22, -14, 36, 15,
					-- layer=2 filter=79 channel=31
					28, -32, -31, 51, 19, -60, -13, -50, -55,
					-- layer=2 filter=79 channel=32
					-25, -38, 17, -25, 4, 0, -8, 31, -14,
					-- layer=2 filter=79 channel=33
					-38, -13, -16, -31, -13, -8, 5, 15, -15,
					-- layer=2 filter=79 channel=34
					0, -47, -33, 26, -55, -69, -10, -54, -16,
					-- layer=2 filter=79 channel=35
					3, -15, -39, 61, 61, -98, -3, -58, -91,
					-- layer=2 filter=79 channel=36
					-22, 5, -7, -8, -8, -1, 2, 13, 24,
					-- layer=2 filter=79 channel=37
					0, -7, -10, 34, -54, -37, 8, -33, -4,
					-- layer=2 filter=79 channel=38
					51, -53, -62, 20, 20, -40, 16, -6, -88,
					-- layer=2 filter=79 channel=39
					38, -23, -54, 28, 34, -71, -16, 29, -57,
					-- layer=2 filter=79 channel=40
					26, -25, -64, 24, 43, 9, 12, -16, -56,
					-- layer=2 filter=79 channel=41
					-6, -19, -20, -15, 8, 6, 0, 1, 3,
					-- layer=2 filter=79 channel=42
					38, 4, 25, 22, 0, 18, -6, 14, -1,
					-- layer=2 filter=79 channel=43
					-11, -18, -2, -15, 20, 34, 15, 44, 46,
					-- layer=2 filter=79 channel=44
					9, 33, 49, 18, 16, 23, 18, 14, 14,
					-- layer=2 filter=79 channel=45
					-30, -29, -17, -41, -3, -13, -11, 34, 27,
					-- layer=2 filter=79 channel=46
					4, 12, -1, 44, -19, -25, 8, 5, -68,
					-- layer=2 filter=79 channel=47
					-13, 12, 10, -16, -2, 15, -24, 0, 13,
					-- layer=2 filter=79 channel=48
					1, -8, -2, -7, -5, 9, 5, -10, -8,
					-- layer=2 filter=79 channel=49
					11, 23, -94, 42, -26, -80, 33, -10, -30,
					-- layer=2 filter=79 channel=50
					-17, -44, -14, -41, -40, -40, -35, -23, 0,
					-- layer=2 filter=79 channel=51
					-63, -73, -1, 16, -9, -16, 34, -2, 31,
					-- layer=2 filter=79 channel=52
					-7, -67, -26, 14, -20, -11, -2, 6, 2,
					-- layer=2 filter=79 channel=53
					9, 32, 17, 35, 19, 0, 8, -26, 15,
					-- layer=2 filter=79 channel=54
					-15, -17, 10, 2, 6, 23, 19, 33, 45,
					-- layer=2 filter=79 channel=55
					-15, -42, 8, 16, -12, 33, -9, 23, 8,
					-- layer=2 filter=79 channel=56
					21, -20, -37, 48, 34, -52, 11, -8, -60,
					-- layer=2 filter=79 channel=57
					-32, -60, -3, -23, 18, 10, -26, -14, 19,
					-- layer=2 filter=79 channel=58
					49, 48, 16, 57, 62, 28, 8, -44, -54,
					-- layer=2 filter=79 channel=59
					-8, -43, -36, -18, -25, 10, 12, 25, 19,
					-- layer=2 filter=79 channel=60
					7, -26, -26, 23, 17, -27, -91, -71, -104,
					-- layer=2 filter=79 channel=61
					-12, -25, -17, -9, -20, -3, -18, -84, -37,
					-- layer=2 filter=79 channel=62
					32, 52, 20, 97, 1, 4, 48, 47, -88,
					-- layer=2 filter=79 channel=63
					8, -31, -21, -36, -37, -13, 1, 18, 33,
					-- layer=2 filter=80 channel=0
					0, 21, 14, 1, 21, 16, -49, -33, -21,
					-- layer=2 filter=80 channel=1
					-1, 8, 33, -32, -7, -2, -7, -6, -12,
					-- layer=2 filter=80 channel=2
					0, -2, 1, 23, -3, -31, 26, 17, 1,
					-- layer=2 filter=80 channel=3
					-1, -1, 41, -20, -6, 1, 10, 17, -7,
					-- layer=2 filter=80 channel=4
					-23, -38, -30, -8, -15, -22, 15, 12, 10,
					-- layer=2 filter=80 channel=5
					17, 22, 20, 32, 22, 4, 37, -61, -19,
					-- layer=2 filter=80 channel=6
					-67, -32, 7, -41, -22, 31, 7, 4, 60,
					-- layer=2 filter=80 channel=7
					34, 20, -3, 5, 17, -17, -33, -17, -17,
					-- layer=2 filter=80 channel=8
					-2, -12, -1, -40, -26, -40, -31, -25, 0,
					-- layer=2 filter=80 channel=9
					16, 9, 6, 35, -13, -5, -8, 15, 9,
					-- layer=2 filter=80 channel=10
					8, 32, 2, -1, 10, -3, 15, -21, 1,
					-- layer=2 filter=80 channel=11
					-10, -15, -8, -9, -6, 73, -35, -11, 24,
					-- layer=2 filter=80 channel=12
					4, -14, -25, 33, 0, -16, 33, 21, 12,
					-- layer=2 filter=80 channel=13
					24, 73, 31, 32, -6, 10, 20, 10, -47,
					-- layer=2 filter=80 channel=14
					-25, -32, 5, -18, 8, -3, 1, 1, 51,
					-- layer=2 filter=80 channel=15
					39, 4, 1, -16, 5, 7, -33, -11, -1,
					-- layer=2 filter=80 channel=16
					-22, -21, 22, -25, 7, 8, -7, -17, -6,
					-- layer=2 filter=80 channel=17
					0, -5, 4, 16, 18, 1, 0, 11, 4,
					-- layer=2 filter=80 channel=18
					14, -32, -32, 21, -60, 15, 28, 0, -26,
					-- layer=2 filter=80 channel=19
					14, -5, -17, -5, -22, -4, 32, -26, -10,
					-- layer=2 filter=80 channel=20
					-7, -20, -6, 15, 4, -14, 8, 19, 8,
					-- layer=2 filter=80 channel=21
					-33, -1, -17, -2, -13, 28, -49, 4, 26,
					-- layer=2 filter=80 channel=22
					-13, 22, 6, -4, 2, 3, -1, -22, 50,
					-- layer=2 filter=80 channel=23
					-70, -43, 2, -30, -5, 35, -11, 15, 38,
					-- layer=2 filter=80 channel=24
					0, 21, 21, 21, 15, -18, 13, 35, -11,
					-- layer=2 filter=80 channel=25
					-62, -25, 5, -28, -17, -33, -62, -38, 19,
					-- layer=2 filter=80 channel=26
					-6, 0, -7, -1, 15, 2, 2, 4, 11,
					-- layer=2 filter=80 channel=27
					-6, -12, -1, 5, 12, -4, -8, 9, 12,
					-- layer=2 filter=80 channel=28
					14, -26, -2, 18, -22, 1, 15, -6, -14,
					-- layer=2 filter=80 channel=29
					-13, 24, -1, 32, 2, -34, -8, -23, -14,
					-- layer=2 filter=80 channel=30
					19, 3, -10, 21, -2, -20, 44, -12, -17,
					-- layer=2 filter=80 channel=31
					-9, -28, -3, -61, -8, 17, 10, 2, 1,
					-- layer=2 filter=80 channel=32
					-44, 5, 13, -33, 10, 3, 7, 9, -22,
					-- layer=2 filter=80 channel=33
					-70, -52, -2, -20, -9, 28, -43, -31, 17,
					-- layer=2 filter=80 channel=34
					6, 9, 24, 2, 7, 9, -29, -26, -28,
					-- layer=2 filter=80 channel=35
					-83, -44, -35, 0, 0, -25, 13, 28, -6,
					-- layer=2 filter=80 channel=36
					11, -7, -30, 27, 3, -28, 18, 25, 15,
					-- layer=2 filter=80 channel=37
					4, -10, -9, 19, -16, 0, -33, -37, -9,
					-- layer=2 filter=80 channel=38
					24, 27, 64, -15, -10, 17, -23, -16, -23,
					-- layer=2 filter=80 channel=39
					-10, -1, 14, -12, 49, 69, 32, -18, -20,
					-- layer=2 filter=80 channel=40
					9, -7, -26, -11, -24, -5, 4, -13, -12,
					-- layer=2 filter=80 channel=41
					-63, -19, 36, -35, 8, 47, -48, 13, 37,
					-- layer=2 filter=80 channel=42
					0, -7, -3, 1, -18, -60, 43, 24, -33,
					-- layer=2 filter=80 channel=43
					14, 9, 14, 21, 1, 15, -31, -37, -32,
					-- layer=2 filter=80 channel=44
					-6, -18, -7, 13, -17, 17, 7, -15, 6,
					-- layer=2 filter=80 channel=45
					-51, -27, -17, -35, 8, -1, 10, -10, 4,
					-- layer=2 filter=80 channel=46
					-2, -9, 15, -10, -6, -23, 50, 37, 2,
					-- layer=2 filter=80 channel=47
					-15, -8, 17, -22, 1, 26, -13, -1, 52,
					-- layer=2 filter=80 channel=48
					24, 4, -16, 29, 10, -21, 27, -5, -13,
					-- layer=2 filter=80 channel=49
					20, 29, 15, 6, 79, 70, -44, 36, 27,
					-- layer=2 filter=80 channel=50
					-21, -7, -34, -10, -4, 9, -35, -4, 1,
					-- layer=2 filter=80 channel=51
					10, 0, 10, 9, -10, 23, -4, 19, -11,
					-- layer=2 filter=80 channel=52
					-14, 25, 3, -20, 1, 31, -40, 7, 33,
					-- layer=2 filter=80 channel=53
					7, -32, 27, -20, 23, 32, -34, -7, 19,
					-- layer=2 filter=80 channel=54
					-18, 15, 1, 20, 26, 21, -31, -41, -14,
					-- layer=2 filter=80 channel=55
					-4, -28, -21, -14, -22, 51, -43, 1, 5,
					-- layer=2 filter=80 channel=56
					-9, 14, 35, 1, 9, 29, 17, 29, 40,
					-- layer=2 filter=80 channel=57
					-11, -1, 26, -58, -37, 24, -76, -19, -32,
					-- layer=2 filter=80 channel=58
					62, 37, 35, 0, 32, 86, 42, -34, 23,
					-- layer=2 filter=80 channel=59
					-49, 9, 34, -39, 2, 38, -21, -16, 44,
					-- layer=2 filter=80 channel=60
					-53, -16, -26, 23, 44, 10, 29, 17, 58,
					-- layer=2 filter=80 channel=61
					-55, -18, 0, 26, 50, 46, 0, 26, -17,
					-- layer=2 filter=80 channel=62
					20, 5, -43, 21, 13, -27, -32, -7, -1,
					-- layer=2 filter=80 channel=63
					-6, 9, 16, -53, -1, 31, -11, -17, -14,
					-- layer=2 filter=81 channel=0
					-34, -44, -21, -13, -38, -31, -32, 15, -21,
					-- layer=2 filter=81 channel=1
					21, 3, -32, 32, -12, 11, 15, 18, 38,
					-- layer=2 filter=81 channel=2
					21, 0, 13, 10, 12, 8, -1, 11, -2,
					-- layer=2 filter=81 channel=3
					-43, 4, 10, 8, 13, 19, -13, -26, 21,
					-- layer=2 filter=81 channel=4
					31, 38, 3, 27, 15, 3, 10, 28, 4,
					-- layer=2 filter=81 channel=5
					5, 37, 0, 73, 24, 48, 26, 61, 49,
					-- layer=2 filter=81 channel=6
					-11, 21, -29, 7, 32, -15, 22, 23, -9,
					-- layer=2 filter=81 channel=7
					-28, 1, 23, -46, -76, -43, 18, -12, 25,
					-- layer=2 filter=81 channel=8
					36, 11, 37, -47, -69, -19, -32, -40, -30,
					-- layer=2 filter=81 channel=9
					27, -22, -65, 17, -31, -36, 9, -6, -19,
					-- layer=2 filter=81 channel=10
					20, -28, 12, -19, -84, -40, -73, -105, -65,
					-- layer=2 filter=81 channel=11
					-8, -92, -23, -39, -89, -122, -54, -87, -64,
					-- layer=2 filter=81 channel=12
					8, -9, 22, 3, -6, 20, 6, -4, 23,
					-- layer=2 filter=81 channel=13
					-37, 3, 8, 33, 31, 10, 19, 18, 19,
					-- layer=2 filter=81 channel=14
					1, 10, -19, -23, 6, -41, -11, -20, -22,
					-- layer=2 filter=81 channel=15
					14, -4, -30, -6, -40, -43, 3, -4, -2,
					-- layer=2 filter=81 channel=16
					5, 15, -3, -1, 10, 24, 4, -10, -28,
					-- layer=2 filter=81 channel=17
					5, -21, 5, -28, 6, -10, -28, 5, 0,
					-- layer=2 filter=81 channel=18
					38, 12, -58, 33, 25, -9, 28, 71, 27,
					-- layer=2 filter=81 channel=19
					24, 16, 19, 35, -12, 2, 3, -23, -9,
					-- layer=2 filter=81 channel=20
					-16, -2, -1, 11, -6, -23, 15, -2, 16,
					-- layer=2 filter=81 channel=21
					-3, -10, 7, 20, -7, -6, 26, 22, 4,
					-- layer=2 filter=81 channel=22
					8, 7, 0, 11, -6, 8, 3, 19, 3,
					-- layer=2 filter=81 channel=23
					1, 15, 7, -8, 42, 4, -14, 11, 3,
					-- layer=2 filter=81 channel=24
					-13, 13, 16, -13, -18, 5, -6, -10, 13,
					-- layer=2 filter=81 channel=25
					37, -49, 41, 73, -51, -13, 49, 9, -1,
					-- layer=2 filter=81 channel=26
					-3, 6, -4, -18, -4, -14, 2, -7, -14,
					-- layer=2 filter=81 channel=27
					14, 5, -10, 0, -7, 14, 1, -10, 7,
					-- layer=2 filter=81 channel=28
					-2, 3, -14, 6, 19, 1, 8, 3, -6,
					-- layer=2 filter=81 channel=29
					-38, -43, -13, -42, -63, -3, -37, -17, -3,
					-- layer=2 filter=81 channel=30
					0, 6, 25, -3, 8, 57, 0, 1, 24,
					-- layer=2 filter=81 channel=31
					40, -7, -62, 1, -84, -48, -37, -6, -33,
					-- layer=2 filter=81 channel=32
					-2, 11, -1, 11, -12, 0, -7, -4, 0,
					-- layer=2 filter=81 channel=33
					22, 17, 8, -8, 18, 1, 21, 26, -4,
					-- layer=2 filter=81 channel=34
					-42, -47, -31, -39, -62, -54, 1, -25, -1,
					-- layer=2 filter=81 channel=35
					47, 28, -43, 18, 37, 26, -5, 39, -8,
					-- layer=2 filter=81 channel=36
					-15, 3, 0, 10, 2, 6, -1, 1, 4,
					-- layer=2 filter=81 channel=37
					-22, -23, -40, -65, -104, -64, -23, -23, -10,
					-- layer=2 filter=81 channel=38
					4, 6, -9, 29, 21, -29, 1, 8, 24,
					-- layer=2 filter=81 channel=39
					18, 24, -20, 24, 22, 12, 2, 66, 11,
					-- layer=2 filter=81 channel=40
					35, 29, -8, 11, 39, 41, 21, 31, 54,
					-- layer=2 filter=81 channel=41
					8, 26, -4, 17, 16, -4, -5, -3, -22,
					-- layer=2 filter=81 channel=42
					-2, 21, 10, -4, 21, 51, 8, 11, 64,
					-- layer=2 filter=81 channel=43
					-1, 23, 11, 27, 3, -13, 30, -10, -28,
					-- layer=2 filter=81 channel=44
					37, 24, -12, 36, 3, -14, -8, -21, -31,
					-- layer=2 filter=81 channel=45
					-7, 2, 16, -1, 0, -1, -18, -12, -18,
					-- layer=2 filter=81 channel=46
					-34, 3, 11, 27, -3, 25, -3, 30, 74,
					-- layer=2 filter=81 channel=47
					-10, 29, 2, -2, 15, -6, -9, -11, -20,
					-- layer=2 filter=81 channel=48
					-5, -28, 21, 5, 11, 0, 12, -1, 7,
					-- layer=2 filter=81 channel=49
					3, -12, -3, 73, 24, 4, 28, 35, 54,
					-- layer=2 filter=81 channel=50
					-5, -2, -2, -16, -10, -18, -10, 13, 38,
					-- layer=2 filter=81 channel=51
					71, -37, -18, -19, -1, 13, 86, 34, 38,
					-- layer=2 filter=81 channel=52
					0, -58, -33, -28, -62, -101, -53, -87, -114,
					-- layer=2 filter=81 channel=53
					0, 11, 0, 6, 2, -28, -3, -24, -30,
					-- layer=2 filter=81 channel=54
					10, 3, 9, 24, -22, -38, -44, -28, -40,
					-- layer=2 filter=81 channel=55
					-31, -56, -2, -28, -33, -54, -58, -70, -67,
					-- layer=2 filter=81 channel=56
					27, -1, -5, -2, 15, 6, -1, -3, 0,
					-- layer=2 filter=81 channel=57
					-17, -1, 9, -18, -14, -3, 17, 9, -4,
					-- layer=2 filter=81 channel=58
					8, 76, 68, 24, 56, 9, -9, 4, 103,
					-- layer=2 filter=81 channel=59
					28, 14, -16, 14, -4, 10, -7, 9, 3,
					-- layer=2 filter=81 channel=60
					11, 18, -5, -12, 17, 28, 12, 33, 44,
					-- layer=2 filter=81 channel=61
					8, -11, 70, -21, -22, 31, 84, -17, -49,
					-- layer=2 filter=81 channel=62
					-2, -35, -50, -34, -25, 2, -25, 46, 3,
					-- layer=2 filter=81 channel=63
					10, 8, 5, 10, 26, -15, -8, -6, -2,
					-- layer=2 filter=82 channel=0
					8, -18, 6, -2, -9, -18, 6, -14, -16,
					-- layer=2 filter=82 channel=1
					-15, -15, -11, -12, 7, -18, -7, 6, 13,
					-- layer=2 filter=82 channel=2
					-11, -1, -11, -17, 6, -12, -9, 10, -13,
					-- layer=2 filter=82 channel=3
					9, -2, -13, 10, 0, -5, 7, 7, -12,
					-- layer=2 filter=82 channel=4
					2, -3, -3, -2, -6, -13, 4, 9, 13,
					-- layer=2 filter=82 channel=5
					6, -13, 9, 0, -6, 11, 7, -11, 1,
					-- layer=2 filter=82 channel=6
					-15, 0, -11, -5, 6, -6, 1, -2, 3,
					-- layer=2 filter=82 channel=7
					-3, -7, -5, -9, -15, -9, -13, 11, -17,
					-- layer=2 filter=82 channel=8
					-6, -15, -4, 7, 1, -10, -14, -8, -11,
					-- layer=2 filter=82 channel=9
					2, -15, -3, -17, 3, -16, 0, 4, 4,
					-- layer=2 filter=82 channel=10
					-7, 0, -3, -19, -19, -9, -8, -10, -15,
					-- layer=2 filter=82 channel=11
					-12, -3, -12, 4, -9, -7, -4, -2, -16,
					-- layer=2 filter=82 channel=12
					-3, 10, -10, -14, -3, -14, -15, 0, -2,
					-- layer=2 filter=82 channel=13
					6, -5, -12, -2, -7, -1, -15, -2, -3,
					-- layer=2 filter=82 channel=14
					-1, -4, 0, 4, -3, -8, -20, 8, 9,
					-- layer=2 filter=82 channel=15
					5, 4, -3, -14, 2, -16, 11, 3, -10,
					-- layer=2 filter=82 channel=16
					-4, -17, 5, -7, 0, 4, -1, -17, -5,
					-- layer=2 filter=82 channel=17
					-13, 10, -5, 6, -13, -10, 9, 2, 2,
					-- layer=2 filter=82 channel=18
					-3, -1, -4, -10, 10, -16, 2, -3, -4,
					-- layer=2 filter=82 channel=19
					10, -7, 9, -15, -2, 1, -6, -15, -4,
					-- layer=2 filter=82 channel=20
					-17, 5, 11, 4, -1, -4, -1, -6, -2,
					-- layer=2 filter=82 channel=21
					7, -12, -6, 6, 1, -13, -1, -16, 7,
					-- layer=2 filter=82 channel=22
					8, 3, -7, 4, 6, -13, 1, 3, -2,
					-- layer=2 filter=82 channel=23
					5, 3, 3, -8, 1, -4, -6, 0, 2,
					-- layer=2 filter=82 channel=24
					9, 5, 0, -6, 7, -8, 10, -10, -15,
					-- layer=2 filter=82 channel=25
					13, 1, -1, -11, 2, 11, -6, 1, 3,
					-- layer=2 filter=82 channel=26
					3, -9, -9, -13, -15, -9, -13, -9, 9,
					-- layer=2 filter=82 channel=27
					9, 2, -1, 12, -6, -14, 13, 5, 14,
					-- layer=2 filter=82 channel=28
					-1, 0, 11, -5, -11, 0, 3, -9, 0,
					-- layer=2 filter=82 channel=29
					-1, 7, 7, -1, -5, 0, 4, -11, 0,
					-- layer=2 filter=82 channel=30
					6, -17, 8, -10, -13, -1, 8, 0, -6,
					-- layer=2 filter=82 channel=31
					3, -17, -6, 4, -19, -4, 0, -13, -7,
					-- layer=2 filter=82 channel=32
					-6, -9, -6, -5, -14, 0, 0, 2, -6,
					-- layer=2 filter=82 channel=33
					-2, -9, -12, -8, -3, 4, -14, 7, 7,
					-- layer=2 filter=82 channel=34
					12, -18, 0, -17, -4, -7, 5, -8, 1,
					-- layer=2 filter=82 channel=35
					-15, -4, -3, -9, -6, -11, -6, -13, -21,
					-- layer=2 filter=82 channel=36
					2, -11, 11, 10, -9, -4, -18, -10, -2,
					-- layer=2 filter=82 channel=37
					-9, 2, 2, 5, -11, -5, -8, -16, -10,
					-- layer=2 filter=82 channel=38
					-23, -9, -22, 12, -22, 4, 13, 0, -7,
					-- layer=2 filter=82 channel=39
					5, 13, 6, 0, -10, -5, -12, -15, -10,
					-- layer=2 filter=82 channel=40
					-15, 7, -5, 4, -11, 2, -2, -3, 2,
					-- layer=2 filter=82 channel=41
					-3, 6, -11, 8, 9, 11, 4, -5, -16,
					-- layer=2 filter=82 channel=42
					-14, 11, 1, -2, -4, 6, -15, 1, -13,
					-- layer=2 filter=82 channel=43
					8, 9, 7, -4, -16, 12, 0, -3, 0,
					-- layer=2 filter=82 channel=44
					10, -3, -1, -1, -4, 0, -14, 3, -14,
					-- layer=2 filter=82 channel=45
					-5, 1, -5, 4, 3, 10, -16, 10, -14,
					-- layer=2 filter=82 channel=46
					0, 0, -3, 0, 0, -3, -2, -2, 0,
					-- layer=2 filter=82 channel=47
					-9, -12, -10, 10, -15, 2, 0, 0, -10,
					-- layer=2 filter=82 channel=48
					-2, -15, 6, -9, -14, -12, 6, 2, -5,
					-- layer=2 filter=82 channel=49
					5, -15, 3, -1, -8, -2, -6, 14, -8,
					-- layer=2 filter=82 channel=50
					-10, -11, 5, -13, 9, -14, 4, -11, -16,
					-- layer=2 filter=82 channel=51
					-2, -4, -15, -3, 11, 0, 8, -13, -5,
					-- layer=2 filter=82 channel=52
					-9, -19, -16, -14, -6, -16, -6, -19, 1,
					-- layer=2 filter=82 channel=53
					0, 6, 5, -12, -6, -13, 11, 0, -11,
					-- layer=2 filter=82 channel=54
					6, -2, -11, -9, -8, -7, -16, -15, -12,
					-- layer=2 filter=82 channel=55
					-19, 5, 1, 0, -17, -15, 0, 6, -4,
					-- layer=2 filter=82 channel=56
					6, 7, 6, 6, -14, 0, -15, 0, -6,
					-- layer=2 filter=82 channel=57
					3, 11, 7, 5, -7, 3, 6, 0, 7,
					-- layer=2 filter=82 channel=58
					-10, -2, 2, 2, -12, 9, 10, -13, 9,
					-- layer=2 filter=82 channel=59
					8, -7, -8, 9, -12, 6, -1, 9, -14,
					-- layer=2 filter=82 channel=60
					-9, -2, 10, -8, -7, -3, -11, -14, -5,
					-- layer=2 filter=82 channel=61
					8, -10, 0, 9, -13, -3, -6, 3, -3,
					-- layer=2 filter=82 channel=62
					2, 5, 10, -6, -4, 6, -5, 13, -6,
					-- layer=2 filter=82 channel=63
					4, 8, 9, -14, 5, 3, -7, -8, -7,
					-- layer=2 filter=83 channel=0
					-24, 6, 1, -14, -27, 8, -26, -21, -34,
					-- layer=2 filter=83 channel=1
					-10, 26, 4, 0, -17, -31, 0, -27, -2,
					-- layer=2 filter=83 channel=2
					-8, -3, -9, 6, 6, 18, 0, 24, 41,
					-- layer=2 filter=83 channel=3
					-17, 15, -18, -3, -20, -16, -49, -79, -4,
					-- layer=2 filter=83 channel=4
					-4, -25, -45, 4, -12, -2, 36, 1, 17,
					-- layer=2 filter=83 channel=5
					99, 68, 52, 47, 71, 2, 50, 43, 13,
					-- layer=2 filter=83 channel=6
					9, 10, 55, -12, -47, -13, -13, -17, -12,
					-- layer=2 filter=83 channel=7
					-1, -67, 0, -25, 3, 4, 14, 14, 5,
					-- layer=2 filter=83 channel=8
					14, -3, 43, 19, 32, 44, -20, -27, 2,
					-- layer=2 filter=83 channel=9
					-24, 13, 24, 25, 12, 33, 17, 0, 33,
					-- layer=2 filter=83 channel=10
					4, -8, -12, 41, 14, 3, 32, 28, 18,
					-- layer=2 filter=83 channel=11
					82, 38, 13, 17, 14, 54, 9, 33, 47,
					-- layer=2 filter=83 channel=12
					-10, -1, 14, 14, 9, 33, -9, 13, 25,
					-- layer=2 filter=83 channel=13
					36, 29, 32, 10, -8, 7, 2, 19, 26,
					-- layer=2 filter=83 channel=14
					-77, -18, -19, -25, -32, 1, -19, -28, -18,
					-- layer=2 filter=83 channel=15
					-1, -34, -39, -30, -48, -86, 0, -3, -40,
					-- layer=2 filter=83 channel=16
					-71, -54, -40, 40, 3, 65, 34, 5, 30,
					-- layer=2 filter=83 channel=17
					-35, -35, -46, -17, -2, -30, 21, 8, 6,
					-- layer=2 filter=83 channel=18
					87, 10, -1, 4, 11, 24, 84, 60, 44,
					-- layer=2 filter=83 channel=19
					-16, -15, -4, 25, -3, 6, 24, 0, 27,
					-- layer=2 filter=83 channel=20
					-22, -9, -11, -14, -25, 3, -12, -13, -2,
					-- layer=2 filter=83 channel=21
					-65, 38, 11, -17, -46, -27, 39, -42, 12,
					-- layer=2 filter=83 channel=22
					-59, -11, 10, -56, -11, -11, -47, -25, -10,
					-- layer=2 filter=83 channel=23
					-6, -42, -15, 5, -33, -27, -12, -27, -1,
					-- layer=2 filter=83 channel=24
					-22, -20, 0, 7, 6, 30, -3, 24, 36,
					-- layer=2 filter=83 channel=25
					42, 11, -50, 50, -7, -29, 5, -10, -24,
					-- layer=2 filter=83 channel=26
					-19, 12, 2, 5, -14, -4, 0, 13, 3,
					-- layer=2 filter=83 channel=27
					-14, -13, 9, 1, 4, -3, -7, 0, -13,
					-- layer=2 filter=83 channel=28
					9, 5, 16, -6, -7, 2, 17, -8, -15,
					-- layer=2 filter=83 channel=29
					26, 26, 15, 9, 21, 19, -33, -27, 25,
					-- layer=2 filter=83 channel=30
					-26, 36, -34, 8, -11, 35, -39, -18, 11,
					-- layer=2 filter=83 channel=31
					11, 42, 0, 21, 6, 9, 17, -28, 3,
					-- layer=2 filter=83 channel=32
					-13, -23, -30, 16, 2, -25, 4, -15, 23,
					-- layer=2 filter=83 channel=33
					46, -1, 59, 34, -27, 13, 6, -32, 5,
					-- layer=2 filter=83 channel=34
					-21, -29, 4, -32, -26, -23, -13, -33, -31,
					-- layer=2 filter=83 channel=35
					-37, 30, 15, 27, 6, -33, -20, 3, -36,
					-- layer=2 filter=83 channel=36
					-30, -33, 3, -10, 8, 15, -28, 4, 6,
					-- layer=2 filter=83 channel=37
					-40, -22, -17, -4, -1, -28, -15, 0, -13,
					-- layer=2 filter=83 channel=38
					-7, 39, 29, 15, -1, 5, 21, -35, -11,
					-- layer=2 filter=83 channel=39
					-10, -9, 7, -2, -9, 20, -21, 11, -12,
					-- layer=2 filter=83 channel=40
					-8, 9, 24, -18, -4, -4, -12, -39, 13,
					-- layer=2 filter=83 channel=41
					-53, 21, 11, -60, -18, -33, -45, -5, -32,
					-- layer=2 filter=83 channel=42
					-7, 0, -6, -11, 17, 13, -24, 17, 51,
					-- layer=2 filter=83 channel=43
					-15, -65, -53, -6, -15, 32, 7, 29, 25,
					-- layer=2 filter=83 channel=44
					-20, -24, -43, 29, 11, 12, 48, 40, 34,
					-- layer=2 filter=83 channel=45
					-28, 20, 8, -24, -105, -45, -24, -76, -50,
					-- layer=2 filter=83 channel=46
					-28, 0, -10, -17, 6, 29, 26, 4, 9,
					-- layer=2 filter=83 channel=47
					-188, -160, -136, -89, -125, -110, -4, -19, -19,
					-- layer=2 filter=83 channel=48
					-12, -9, 19, -12, -4, 10, 0, -2, 36,
					-- layer=2 filter=83 channel=49
					29, 33, -2, 6, 14, 13, -13, 0, -10,
					-- layer=2 filter=83 channel=50
					-46, 0, -22, 9, -68, -83, 16, -62, -23,
					-- layer=2 filter=83 channel=51
					9, 28, -31, 16, -24, -79, 50, -20, 36,
					-- layer=2 filter=83 channel=52
					6, -16, -35, 13, 14, 50, 15, 18, 25,
					-- layer=2 filter=83 channel=53
					-16, 2, 2, -46, -26, -62, -34, -3, -62,
					-- layer=2 filter=83 channel=54
					-6, -94, -58, -9, -2, 17, -7, 11, 12,
					-- layer=2 filter=83 channel=55
					5, 6, 0, 1, 25, 67, 17, 52, 65,
					-- layer=2 filter=83 channel=56
					-22, 17, -4, -3, -2, 3, -3, -33, 18,
					-- layer=2 filter=83 channel=57
					26, -15, -44, -30, -24, -51, -46, -15, -2,
					-- layer=2 filter=83 channel=58
					20, 11, 40, 20, 1, 31, -11, 3, 1,
					-- layer=2 filter=83 channel=59
					-62, -17, -26, -72, -35, -33, 2, -14, -22,
					-- layer=2 filter=83 channel=60
					-20, 3, -4, 6, -20, -11, 9, -26, 50,
					-- layer=2 filter=83 channel=61
					21, 30, 6, -11, -67, -7, -8, 0, -37,
					-- layer=2 filter=83 channel=62
					3, 21, 26, 30, 18, 1, -2, 12, -30,
					-- layer=2 filter=83 channel=63
					-62, -40, -20, -34, -79, -17, 1, -25, -20,
					-- layer=2 filter=84 channel=0
					-11, 18, 20, -13, 7, 12, -29, -21, -63,
					-- layer=2 filter=84 channel=1
					19, 33, 23, 45, 10, 8, -42, -24, -29,
					-- layer=2 filter=84 channel=2
					-19, -22, -22, -3, -14, 12, -2, -9, 29,
					-- layer=2 filter=84 channel=3
					-5, 27, 19, -57, -3, 16, 40, 24, 13,
					-- layer=2 filter=84 channel=4
					-8, -3, -6, -26, -47, -55, -36, -16, -7,
					-- layer=2 filter=84 channel=5
					-47, -8, 28, -49, 41, 60, -64, 10, 5,
					-- layer=2 filter=84 channel=6
					35, -18, -25, 9, -25, -25, -4, -25, -36,
					-- layer=2 filter=84 channel=7
					-31, 25, -42, -42, -24, -88, -19, -18, 34,
					-- layer=2 filter=84 channel=8
					-12, -41, -2, -56, -16, 12, -21, -48, 44,
					-- layer=2 filter=84 channel=9
					28, 71, 12, 12, 14, -15, -15, -25, -29,
					-- layer=2 filter=84 channel=10
					20, 4, -9, 8, -6, 1, 15, 0, 5,
					-- layer=2 filter=84 channel=11
					-6, 6, -30, 15, 13, 23, 11, 10, 4,
					-- layer=2 filter=84 channel=12
					-7, 6, -5, -2, -17, -13, -6, 4, 15,
					-- layer=2 filter=84 channel=13
					18, 30, 31, 9, -6, 57, -61, -23, 61,
					-- layer=2 filter=84 channel=14
					-36, -22, -36, 35, 10, -4, 43, -1, 1,
					-- layer=2 filter=84 channel=15
					15, 2, 0, -38, -20, -44, -42, -25, -19,
					-- layer=2 filter=84 channel=16
					-5, -29, -34, 18, 6, 2, 33, 14, 30,
					-- layer=2 filter=84 channel=17
					19, -24, -19, 26, 8, 1, 25, 22, -5,
					-- layer=2 filter=84 channel=18
					-48, -27, -26, -13, 31, 33, -18, -8, 28,
					-- layer=2 filter=84 channel=19
					0, 20, 1, -31, 0, -27, 2, -10, 7,
					-- layer=2 filter=84 channel=20
					34, -10, 5, -7, -60, 5, 3, 3, 17,
					-- layer=2 filter=84 channel=21
					3, 16, -28, 4, -25, -37, 55, 24, -6,
					-- layer=2 filter=84 channel=22
					-54, -29, 24, -29, 9, -10, 10, -14, 5,
					-- layer=2 filter=84 channel=23
					15, -11, 8, 18, 12, 1, 27, 21, 23,
					-- layer=2 filter=84 channel=24
					20, 17, 4, 19, 5, 28, 27, 4, 44,
					-- layer=2 filter=84 channel=25
					36, 15, 0, 3, 50, -44, 10, 1, -33,
					-- layer=2 filter=84 channel=26
					10, 3, 2, -9, -8, -11, 0, 9, -17,
					-- layer=2 filter=84 channel=27
					1, 8, 1, 0, -14, -12, 0, -7, 9,
					-- layer=2 filter=84 channel=28
					-12, 0, 20, 9, -23, 7, 17, -1, -1,
					-- layer=2 filter=84 channel=29
					-58, -39, 8, -16, -7, 4, 2, 13, 50,
					-- layer=2 filter=84 channel=30
					4, 5, 26, -7, 33, 17, 8, -5, 41,
					-- layer=2 filter=84 channel=31
					16, -1, -5, 53, 40, 8, 6, -60, -43,
					-- layer=2 filter=84 channel=32
					-15, -55, -31, 28, 15, 14, 30, 31, 21,
					-- layer=2 filter=84 channel=33
					19, -45, -31, 18, -12, 8, 14, 24, -10,
					-- layer=2 filter=84 channel=34
					7, 29, 39, -20, 2, -53, -18, -32, -15,
					-- layer=2 filter=84 channel=35
					39, 39, 31, -16, 23, -57, 0, -49, -59,
					-- layer=2 filter=84 channel=36
					22, 39, 19, 0, -3, -15, -2, -16, -1,
					-- layer=2 filter=84 channel=37
					1, 9, -20, -26, -5, -24, -10, -19, 0,
					-- layer=2 filter=84 channel=38
					4, 29, 34, 60, 39, 26, -9, -23, 3,
					-- layer=2 filter=84 channel=39
					23, 46, 85, 21, 96, 33, -24, -8, -25,
					-- layer=2 filter=84 channel=40
					14, 0, 29, 12, -4, 0, -5, -31, 22,
					-- layer=2 filter=84 channel=41
					18, 6, -1, 16, 0, -10, 37, -13, 8,
					-- layer=2 filter=84 channel=42
					-26, 9, -14, -22, -35, 17, -49, -36, -2,
					-- layer=2 filter=84 channel=43
					14, -46, -23, -11, -13, -2, -3, 11, 29,
					-- layer=2 filter=84 channel=44
					14, -24, -47, -19, -6, -29, 18, 19, 24,
					-- layer=2 filter=84 channel=45
					12, -56, -37, 10, -21, -11, 42, 21, 10,
					-- layer=2 filter=84 channel=46
					44, 25, 0, -10, -5, -1, -60, -72, -45,
					-- layer=2 filter=84 channel=47
					18, -32, -82, -19, -69, -45, 2, -24, -11,
					-- layer=2 filter=84 channel=48
					-5, 10, 2, 0, 15, -19, -16, -7, 19,
					-- layer=2 filter=84 channel=49
					62, 31, 46, -25, 58, -12, -16, -13, 42,
					-- layer=2 filter=84 channel=50
					0, 12, 11, -25, -62, -22, 7, 2, 16,
					-- layer=2 filter=84 channel=51
					-10, 11, 33, -22, 41, -4, -65, -64, -73,
					-- layer=2 filter=84 channel=52
					7, -3, -4, 16, 5, 10, 23, 20, 5,
					-- layer=2 filter=84 channel=53
					25, -1, 30, -8, -19, -41, 13, -11, -3,
					-- layer=2 filter=84 channel=54
					-28, -66, -27, 18, 10, 0, -7, 16, 9,
					-- layer=2 filter=84 channel=55
					-19, 0, 9, 3, 13, 11, -12, 44, 33,
					-- layer=2 filter=84 channel=56
					24, 33, 15, 14, 7, -1, -29, -34, -17,
					-- layer=2 filter=84 channel=57
					16, -39, -16, 11, -17, -5, 38, 13, 3,
					-- layer=2 filter=84 channel=58
					-8, 56, 23, -25, -29, 68, -30, 11, 23,
					-- layer=2 filter=84 channel=59
					-14, -8, -25, -12, -45, -26, 25, 0, 33,
					-- layer=2 filter=84 channel=60
					17, 46, 44, -14, 10, -11, -34, -10, -3,
					-- layer=2 filter=84 channel=61
					-25, -11, -2, 27, 85, -4, 5, 6, -58,
					-- layer=2 filter=84 channel=62
					-5, -20, -61, 20, -20, -56, -16, -5, 10,
					-- layer=2 filter=84 channel=63
					-26, -36, -7, -44, 44, 30, 22, 45, 16,
					-- layer=2 filter=85 channel=0
					-16, -39, 20, 15, 35, 51, 21, -4, 32,
					-- layer=2 filter=85 channel=1
					-13, 2, -8, 6, -89, -41, -7, -55, -64,
					-- layer=2 filter=85 channel=2
					10, 23, 21, 14, 24, -9, -31, -41, -42,
					-- layer=2 filter=85 channel=3
					-37, -22, 3, -38, -31, -23, -30, -33, -14,
					-- layer=2 filter=85 channel=4
					8, 33, 10, 24, 8, -40, -7, -37, -31,
					-- layer=2 filter=85 channel=5
					-4, 4, -19, -32, -85, -64, -14, -28, -58,
					-- layer=2 filter=85 channel=6
					24, 1, 21, -22, -9, 11, -22, 6, -27,
					-- layer=2 filter=85 channel=7
					17, 0, -3, 41, 25, 30, 9, 16, -32,
					-- layer=2 filter=85 channel=8
					29, -7, -20, -16, 4, 15, -19, 22, 43,
					-- layer=2 filter=85 channel=9
					-16, -9, 21, -59, -26, 25, -14, -31, -2,
					-- layer=2 filter=85 channel=10
					19, -1, 25, 55, 22, 53, -2, 27, 51,
					-- layer=2 filter=85 channel=11
					1, -26, 21, 29, -25, -28, 15, 14, 35,
					-- layer=2 filter=85 channel=12
					12, 37, 14, -12, 6, -2, -6, -15, -19,
					-- layer=2 filter=85 channel=13
					24, 24, 3, 1, -43, -40, 24, -20, -36,
					-- layer=2 filter=85 channel=14
					-15, -18, -24, -35, -12, 2, -60, -15, -7,
					-- layer=2 filter=85 channel=15
					-19, -15, 1, 44, 9, 25, 18, 34, 11,
					-- layer=2 filter=85 channel=16
					15, -5, -3, -27, -10, -3, -67, -34, -10,
					-- layer=2 filter=85 channel=17
					-33, 0, 29, -7, -18, -1, -7, 0, -6,
					-- layer=2 filter=85 channel=18
					-11, 12, -38, -13, 24, -23, -7, 0, 9,
					-- layer=2 filter=85 channel=19
					-3, 4, 25, 8, 26, -28, -5, -4, -47,
					-- layer=2 filter=85 channel=20
					-21, 7, 38, -24, -23, -3, -26, -16, -4,
					-- layer=2 filter=85 channel=21
					-5, 18, 3, -2, -11, 40, -10, 6, 28,
					-- layer=2 filter=85 channel=22
					-9, -18, 9, -22, -25, -4, -48, -39, 16,
					-- layer=2 filter=85 channel=23
					30, 16, -5, 27, 27, -17, 25, 3, 8,
					-- layer=2 filter=85 channel=24
					-31, 3, 9, -14, -24, 10, 17, -14, -20,
					-- layer=2 filter=85 channel=25
					-26, 3, -23, 19, 33, 10, 9, -67, -7,
					-- layer=2 filter=85 channel=26
					5, 8, 2, -4, 1, 0, -6, -10, 1,
					-- layer=2 filter=85 channel=27
					-3, -9, -6, 8, 3, -13, 3, 7, 13,
					-- layer=2 filter=85 channel=28
					-10, 3, -16, -2, -13, 6, 2, 2, -9,
					-- layer=2 filter=85 channel=29
					-27, 11, 26, -24, -8, 49, -56, -24, 14,
					-- layer=2 filter=85 channel=30
					-26, -4, 7, -47, -46, -40, -72, -84, -30,
					-- layer=2 filter=85 channel=31
					1, -21, 22, 22, -19, 24, 7, 10, -14,
					-- layer=2 filter=85 channel=32
					-16, -7, -23, -41, -43, -13, -35, -37, -55,
					-- layer=2 filter=85 channel=33
					27, 2, -5, -8, -17, -9, 19, 28, 9,
					-- layer=2 filter=85 channel=34
					-19, -41, -22, 25, 33, 47, 38, 34, 30,
					-- layer=2 filter=85 channel=35
					11, 23, 9, 21, -29, -16, 7, -54, -38,
					-- layer=2 filter=85 channel=36
					31, 21, 9, -24, 9, -7, 6, -7, -21,
					-- layer=2 filter=85 channel=37
					-20, -31, 15, 5, 30, 51, 36, 28, 32,
					-- layer=2 filter=85 channel=38
					-4, -12, 0, -17, -66, -42, -41, -50, -20,
					-- layer=2 filter=85 channel=39
					28, -12, 2, -8, 6, -22, -25, -15, 48,
					-- layer=2 filter=85 channel=40
					17, 56, 14, -7, -30, -29, -19, -50, -22,
					-- layer=2 filter=85 channel=41
					-6, -10, 5, 5, 13, -8, 36, 20, -12,
					-- layer=2 filter=85 channel=42
					0, 34, 17, 10, 10, 40, -12, -35, -53,
					-- layer=2 filter=85 channel=43
					15, 2, -14, 2, -16, -31, -29, -31, -41,
					-- layer=2 filter=85 channel=44
					30, 11, 8, 10, 3, -56, 15, -19, -17,
					-- layer=2 filter=85 channel=45
					14, -17, 17, -25, -10, -14, -5, 17, 21,
					-- layer=2 filter=85 channel=46
					-53, 9, -3, 16, -16, -5, 11, -53, -88,
					-- layer=2 filter=85 channel=47
					-15, 13, -13, 15, -19, -40, 9, -1, -39,
					-- layer=2 filter=85 channel=48
					22, 12, 14, -4, -13, 31, -28, -9, 14,
					-- layer=2 filter=85 channel=49
					-21, -48, -43, -10, -7, -31, -11, -32, 3,
					-- layer=2 filter=85 channel=50
					10, 12, 24, 1, -43, 12, 15, 59, 5,
					-- layer=2 filter=85 channel=51
					-21, -24, 33, 37, 7, -27, 22, -18, 6,
					-- layer=2 filter=85 channel=52
					-7, 1, -18, 13, 27, 7, -19, 6, 29,
					-- layer=2 filter=85 channel=53
					-25, -22, -8, 9, 15, 12, 27, 7, -12,
					-- layer=2 filter=85 channel=54
					-15, -3, 5, -9, 0, -30, 5, 21, -15,
					-- layer=2 filter=85 channel=55
					-3, 4, 11, 49, 21, 5, -13, -4, 41,
					-- layer=2 filter=85 channel=56
					9, 8, 42, 35, 29, 38, 14, -18, 10,
					-- layer=2 filter=85 channel=57
					34, 13, 1, -18, -13, -30, 25, 33, 0,
					-- layer=2 filter=85 channel=58
					14, 38, 6, 23, -38, -61, -60, -13, -69,
					-- layer=2 filter=85 channel=59
					-18, -21, -3, 28, -17, 32, -4, -8, 3,
					-- layer=2 filter=85 channel=60
					0, 2, 40, 11, -20, 3, -40, 5, -71,
					-- layer=2 filter=85 channel=61
					4, -44, 22, 11, -24, -3, 23, -24, -58,
					-- layer=2 filter=85 channel=62
					60, 35, 51, 39, 50, 55, 6, -29, 55,
					-- layer=2 filter=85 channel=63
					-11, -14, 10, -47, -44, -63, -20, 16, -34,
					-- layer=2 filter=86 channel=0
					16, 12, 39, -47, -23, -5, -21, -12, -11,
					-- layer=2 filter=86 channel=1
					11, -31, -73, 9, 4, 1, 34, 22, 0,
					-- layer=2 filter=86 channel=2
					4, -7, -31, 9, 8, -8, 20, -1, 0,
					-- layer=2 filter=86 channel=3
					-59, -20, -29, -9, -85, -21, -30, -18, -11,
					-- layer=2 filter=86 channel=4
					16, 35, 0, 44, 46, 20, -2, 24, 6,
					-- layer=2 filter=86 channel=5
					8, 30, -8, -16, 58, 17, -81, -10, 21,
					-- layer=2 filter=86 channel=6
					4, 8, 14, 64, 14, 42, 0, -32, -28,
					-- layer=2 filter=86 channel=7
					7, 30, 19, -69, -48, 14, -19, 19, -81,
					-- layer=2 filter=86 channel=8
					52, 18, -9, 17, 12, -88, -16, -55, -45,
					-- layer=2 filter=86 channel=9
					57, -19, -101, 65, 24, -16, 43, 8, 65,
					-- layer=2 filter=86 channel=10
					62, 18, 15, -8, -14, -16, 20, 18, -4,
					-- layer=2 filter=86 channel=11
					66, 3, -12, 30, 21, 3, 20, 13, 2,
					-- layer=2 filter=86 channel=12
					-2, -5, -53, 5, -1, -5, -5, -24, -27,
					-- layer=2 filter=86 channel=13
					-88, 49, -20, -10, -41, -16, 34, -23, -51,
					-- layer=2 filter=86 channel=14
					-25, -8, -10, 0, -11, -23, 14, -8, 70,
					-- layer=2 filter=86 channel=15
					-10, 3, 23, -54, -27, -29, -39, -67, -64,
					-- layer=2 filter=86 channel=16
					13, -13, -49, 43, -18, -27, -14, -13, 9,
					-- layer=2 filter=86 channel=17
					-38, -51, -44, 9, 13, -9, 0, -13, -33,
					-- layer=2 filter=86 channel=18
					0, 61, 26, 4, 53, 56, -88, -75, 27,
					-- layer=2 filter=86 channel=19
					9, -6, -32, 18, 26, -19, -13, 28, -28,
					-- layer=2 filter=86 channel=20
					-1, -9, -3, 3, -11, -53, -6, -21, -56,
					-- layer=2 filter=86 channel=21
					-27, -30, -21, 33, 62, 21, -21, -25, -26,
					-- layer=2 filter=86 channel=22
					15, -21, -10, -2, -24, -21, -16, -30, -17,
					-- layer=2 filter=86 channel=23
					-14, -34, -22, -21, 5, -5, 2, -7, -27,
					-- layer=2 filter=86 channel=24
					-26, -27, -38, 10, -47, -51, 26, -28, 3,
					-- layer=2 filter=86 channel=25
					-19, -10, -10, -42, -59, 34, 0, 7, -18,
					-- layer=2 filter=86 channel=26
					-5, -3, 9, -3, -16, 14, 2, 2, 8,
					-- layer=2 filter=86 channel=27
					16, -10, -8, -8, 0, -1, -1, 7, -13,
					-- layer=2 filter=86 channel=28
					-10, -13, -2, 0, -10, 22, 2, 19, -9,
					-- layer=2 filter=86 channel=29
					-7, -75, -87, 11, 23, -41, -43, -63, -74,
					-- layer=2 filter=86 channel=30
					-25, -44, -49, -29, -76, -28, -13, -47, -22,
					-- layer=2 filter=86 channel=31
					60, 12, -12, 16, 36, -8, 26, 44, 0,
					-- layer=2 filter=86 channel=32
					-21, 27, -22, 6, -42, 7, -45, -17, -30,
					-- layer=2 filter=86 channel=33
					-12, 21, 6, -25, 0, 4, -32, -48, -73,
					-- layer=2 filter=86 channel=34
					18, 13, 20, -32, -35, -5, -34, -14, -61,
					-- layer=2 filter=86 channel=35
					38, 21, -32, 1, 41, 1, -47, -4, -32,
					-- layer=2 filter=86 channel=36
					-8, -31, -39, 23, -19, -48, 6, -29, -53,
					-- layer=2 filter=86 channel=37
					26, 29, 55, -61, -39, -14, -23, -6, -56,
					-- layer=2 filter=86 channel=38
					16, 14, -77, 32, 22, 34, 47, 47, 47,
					-- layer=2 filter=86 channel=39
					7, 23, 14, -33, -10, 3, -15, -24, 4,
					-- layer=2 filter=86 channel=40
					17, 7, -71, 21, 19, 16, 15, 35, 13,
					-- layer=2 filter=86 channel=41
					13, -19, 20, 41, -15, 10, 11, -7, -23,
					-- layer=2 filter=86 channel=42
					-35, -66, -11, -28, -41, -43, 32, -11, -4,
					-- layer=2 filter=86 channel=43
					7, -11, 4, -18, 6, -18, -30, -40, 15,
					-- layer=2 filter=86 channel=44
					34, 5, -12, 45, 27, 27, 34, 40, -1,
					-- layer=2 filter=86 channel=45
					-32, 13, 71, 50, 28, 12, -6, -64, -60,
					-- layer=2 filter=86 channel=46
					-6, -15, -46, 7, -35, -27, 4, -41, -2,
					-- layer=2 filter=86 channel=47
					-43, -34, -19, 14, -21, -54, 27, 7, -30,
					-- layer=2 filter=86 channel=48
					12, -5, -23, 5, -24, -20, -5, -23, -22,
					-- layer=2 filter=86 channel=49
					13, 7, 15, -45, 6, 37, -2, -65, 29,
					-- layer=2 filter=86 channel=50
					-21, -4, 24, 29, 35, -10, -19, -18, -41,
					-- layer=2 filter=86 channel=51
					-68, -48, 8, 0, 9, -16, -27, -39, 2,
					-- layer=2 filter=86 channel=52
					46, 5, -49, 11, 16, -18, 30, 5, 22,
					-- layer=2 filter=86 channel=53
					26, -12, 53, -51, -42, 5, -31, 15, -11,
					-- layer=2 filter=86 channel=54
					48, 4, -32, 38, 18, 1, 14, 7, -25,
					-- layer=2 filter=86 channel=55
					56, 8, -17, 15, 7, 0, -21, 11, 3,
					-- layer=2 filter=86 channel=56
					29, -29, -23, 18, -19, -2, 41, 26, 36,
					-- layer=2 filter=86 channel=57
					-7, -63, -30, -27, 17, 31, -39, -18, -39,
					-- layer=2 filter=86 channel=58
					-59, -24, -78, -34, -5, -22, -2, -16, 22,
					-- layer=2 filter=86 channel=59
					0, -29, -1, -4, 2, -22, -38, -36, -11,
					-- layer=2 filter=86 channel=60
					-13, -63, -9, -8, -60, -61, 12, -32, -45,
					-- layer=2 filter=86 channel=61
					8, 6, 20, 14, 66, 35, -35, -13, -37,
					-- layer=2 filter=86 channel=62
					19, 4, -33, 13, 28, -28, -58, -53, 14,
					-- layer=2 filter=86 channel=63
					-17, -1, 20, 48, -32, 1, -9, 3, -34,
					-- layer=2 filter=87 channel=0
					-12, -17, -16, -21, -6, -19, -1, -14, -26,
					-- layer=2 filter=87 channel=1
					4, 10, -4, 14, -18, -19, -12, -12, -15,
					-- layer=2 filter=87 channel=2
					0, -12, 12, -3, -6, 0, -20, -7, -24,
					-- layer=2 filter=87 channel=3
					-15, -8, -21, -7, -20, -19, 6, -4, 10,
					-- layer=2 filter=87 channel=4
					-8, -4, 8, -12, -2, -1, -11, -9, -26,
					-- layer=2 filter=87 channel=5
					8, -3, 1, 0, -12, 20, -5, -15, 10,
					-- layer=2 filter=87 channel=6
					-12, -14, -18, 13, -7, -5, 1, 5, 7,
					-- layer=2 filter=87 channel=7
					-10, -14, -31, -23, -13, -14, -15, -2, 0,
					-- layer=2 filter=87 channel=8
					-24, -14, -5, -8, 0, -4, 2, -8, -24,
					-- layer=2 filter=87 channel=9
					-2, -6, -19, 3, 4, 2, 11, 7, 7,
					-- layer=2 filter=87 channel=10
					-24, -14, -22, -2, 4, -6, -5, -3, 10,
					-- layer=2 filter=87 channel=11
					-11, 19, 2, -3, 8, -12, -30, -1, 8,
					-- layer=2 filter=87 channel=12
					-19, 2, -1, -3, -10, -11, -8, -24, -22,
					-- layer=2 filter=87 channel=13
					-23, -22, -10, -39, -5, -11, 6, -3, -14,
					-- layer=2 filter=87 channel=14
					4, -12, -31, 6, 10, -18, -14, -1, -14,
					-- layer=2 filter=87 channel=15
					6, 5, -20, -34, 0, -15, -5, -5, 2,
					-- layer=2 filter=87 channel=16
					-6, -22, -35, -14, -11, -15, -5, -20, -1,
					-- layer=2 filter=87 channel=17
					1, -25, -24, -20, -1, -16, -18, -2, 9,
					-- layer=2 filter=87 channel=18
					14, 4, -2, -23, -18, 4, -12, 5, -12,
					-- layer=2 filter=87 channel=19
					10, 7, 13, 1, 5, -28, -9, -10, -15,
					-- layer=2 filter=87 channel=20
					-11, -14, -6, -23, -25, -29, -37, -41, -26,
					-- layer=2 filter=87 channel=21
					-22, -31, -28, 0, -13, 8, -18, -15, -4,
					-- layer=2 filter=87 channel=22
					8, -14, -28, 2, -35, -14, -2, -18, -28,
					-- layer=2 filter=87 channel=23
					1, -10, -22, -9, 3, -9, 5, -18, -3,
					-- layer=2 filter=87 channel=24
					-8, -17, -19, -7, -19, -16, 2, -18, -8,
					-- layer=2 filter=87 channel=25
					8, -3, -7, 4, -11, -8, 16, 5, 8,
					-- layer=2 filter=87 channel=26
					-3, -3, 5, -9, 6, 3, -7, 8, -7,
					-- layer=2 filter=87 channel=27
					13, 11, 14, -6, -12, 15, 13, 1, -2,
					-- layer=2 filter=87 channel=28
					-2, 10, 7, 5, -1, 3, -8, -8, 4,
					-- layer=2 filter=87 channel=29
					-3, -6, -27, -6, 1, -18, -13, 1, -14,
					-- layer=2 filter=87 channel=30
					-8, -21, -25, -11, -23, 8, 3, -18, 2,
					-- layer=2 filter=87 channel=31
					-16, -4, -22, 10, -14, 3, -27, -5, -16,
					-- layer=2 filter=87 channel=32
					-23, -13, -9, -24, -1, -4, -15, 1, -14,
					-- layer=2 filter=87 channel=33
					2, -20, -16, -18, -6, -17, -17, -10, -7,
					-- layer=2 filter=87 channel=34
					3, -26, -14, -19, 2, -1, -17, -16, -24,
					-- layer=2 filter=87 channel=35
					7, -14, 2, 19, 12, 17, -28, -37, -28,
					-- layer=2 filter=87 channel=36
					-1, 11, -6, -8, -4, -35, 2, -11, -19,
					-- layer=2 filter=87 channel=37
					-1, -31, -12, -20, 12, 5, 15, 11, -20,
					-- layer=2 filter=87 channel=38
					17, -15, -15, 13, -21, 2, 8, -5, -14,
					-- layer=2 filter=87 channel=39
					3, -16, -17, 5, -13, -3, -13, -8, -1,
					-- layer=2 filter=87 channel=40
					-10, -19, 0, 17, -14, -34, -15, -20, -25,
					-- layer=2 filter=87 channel=41
					-5, -21, -10, 0, 0, -10, 3, -6, -26,
					-- layer=2 filter=87 channel=42
					-25, -4, -6, -30, -16, -22, -1, -19, -7,
					-- layer=2 filter=87 channel=43
					6, -10, 2, -5, 6, 14, -8, -5, 0,
					-- layer=2 filter=87 channel=44
					1, -4, 12, 4, 6, 13, 0, 1, 16,
					-- layer=2 filter=87 channel=45
					-10, -8, -21, -4, -5, -11, -23, -26, -15,
					-- layer=2 filter=87 channel=46
					-2, -2, -12, -7, -6, -14, -12, -15, -16,
					-- layer=2 filter=87 channel=47
					2, -18, -5, -6, -4, -19, -1, -16, -23,
					-- layer=2 filter=87 channel=48
					-21, -20, -9, -31, -33, -22, -18, -9, -2,
					-- layer=2 filter=87 channel=49
					18, -2, 0, -22, 7, -8, 19, -27, -11,
					-- layer=2 filter=87 channel=50
					-22, -13, -19, -3, -22, 10, -1, -24, -5,
					-- layer=2 filter=87 channel=51
					-9, -19, -4, -7, -16, -15, -21, 7, -18,
					-- layer=2 filter=87 channel=52
					3, -5, -4, 9, -2, 2, -13, 1, 16,
					-- layer=2 filter=87 channel=53
					0, -4, -23, -6, 8, 2, -9, -20, -7,
					-- layer=2 filter=87 channel=54
					1, -11, 0, 10, 11, 15, -18, -13, -4,
					-- layer=2 filter=87 channel=55
					-14, 7, -10, 4, -4, -7, -4, 11, 0,
					-- layer=2 filter=87 channel=56
					-9, -3, -22, -6, 4, 1, 0, -22, -5,
					-- layer=2 filter=87 channel=57
					2, -17, -26, -9, -2, 1, -2, -8, 6,
					-- layer=2 filter=87 channel=58
					-15, 5, 6, 6, 3, 14, -19, 16, 12,
					-- layer=2 filter=87 channel=59
					-7, -8, -33, -10, -33, -12, -13, -3, 10,
					-- layer=2 filter=87 channel=60
					-22, -2, -8, -9, -20, 11, -8, -6, -5,
					-- layer=2 filter=87 channel=61
					6, -17, 5, -9, 3, -11, -15, -18, -19,
					-- layer=2 filter=87 channel=62
					5, 12, 18, 13, 3, 12, 6, 15, -4,
					-- layer=2 filter=87 channel=63
					-16, -25, -10, -7, 0, -25, 10, -19, 0,
					-- layer=2 filter=88 channel=0
					2, -1, -2, -10, -3, 6, 0, -18, 5,
					-- layer=2 filter=88 channel=1
					0, 2, -7, -17, -25, -9, 11, 12, -24,
					-- layer=2 filter=88 channel=2
					5, -12, 1, -4, -17, -3, 4, -17, -3,
					-- layer=2 filter=88 channel=3
					-7, -14, 4, -14, 12, 7, -3, -8, -14,
					-- layer=2 filter=88 channel=4
					-16, -3, -16, -15, -9, -15, -17, -12, -7,
					-- layer=2 filter=88 channel=5
					-13, -1, -7, -7, 10, 2, 1, -19, -13,
					-- layer=2 filter=88 channel=6
					-12, -10, -13, 6, 9, -3, 7, 2, -7,
					-- layer=2 filter=88 channel=7
					-14, -6, -10, -10, -6, -6, -22, -8, -3,
					-- layer=2 filter=88 channel=8
					-14, -3, -7, 1, -1, -6, -19, -19, 4,
					-- layer=2 filter=88 channel=9
					-7, -7, -6, 3, 6, 6, 6, 10, 2,
					-- layer=2 filter=88 channel=10
					-7, -10, 0, -18, -13, -14, -11, -19, -21,
					-- layer=2 filter=88 channel=11
					-4, -9, -12, -19, -15, -18, -15, -1, 0,
					-- layer=2 filter=88 channel=12
					-8, 0, 9, -7, 1, 0, -16, 7, 1,
					-- layer=2 filter=88 channel=13
					-10, 13, 5, 0, 0, -22, -3, -22, -10,
					-- layer=2 filter=88 channel=14
					-13, 2, -1, 1, -13, -16, 4, -16, -12,
					-- layer=2 filter=88 channel=15
					1, -2, 0, -5, -6, -19, -10, -8, -10,
					-- layer=2 filter=88 channel=16
					-6, -15, 1, -12, 0, -10, -1, -13, -16,
					-- layer=2 filter=88 channel=17
					11, 3, -4, 1, -13, -5, 5, 0, -16,
					-- layer=2 filter=88 channel=18
					12, -6, -3, -9, 10, 4, 4, 5, -15,
					-- layer=2 filter=88 channel=19
					-10, -9, 7, -4, 5, -6, -10, 3, -10,
					-- layer=2 filter=88 channel=20
					-3, 6, 9, -15, -7, 3, 7, -17, 5,
					-- layer=2 filter=88 channel=21
					11, 7, 6, -18, -5, -16, 10, -8, 1,
					-- layer=2 filter=88 channel=22
					-14, -17, -12, 12, -16, 9, -11, -5, -13,
					-- layer=2 filter=88 channel=23
					7, -4, 9, 3, 4, -12, 6, -9, -10,
					-- layer=2 filter=88 channel=24
					-4, 3, 8, 7, 7, 3, -11, 4, 11,
					-- layer=2 filter=88 channel=25
					-4, 7, -8, -13, -10, 13, -10, -10, -10,
					-- layer=2 filter=88 channel=26
					11, 10, -13, 0, 8, -5, -1, -1, -5,
					-- layer=2 filter=88 channel=27
					-1, -7, 1, -6, 1, -6, -1, 11, 10,
					-- layer=2 filter=88 channel=28
					-13, -5, 13, 1, 0, 6, 4, -7, -4,
					-- layer=2 filter=88 channel=29
					3, -5, -13, -4, -2, 2, -6, -6, -1,
					-- layer=2 filter=88 channel=30
					-7, -13, 1, 6, -17, 1, -6, 8, -3,
					-- layer=2 filter=88 channel=31
					9, -9, -8, -19, -6, -3, -18, -6, -11,
					-- layer=2 filter=88 channel=32
					11, -1, 5, -12, 7, 2, 7, -2, 5,
					-- layer=2 filter=88 channel=33
					0, 3, 1, 13, 11, -5, -13, 6, -3,
					-- layer=2 filter=88 channel=34
					-13, -11, 5, -8, -12, -4, -10, -22, 3,
					-- layer=2 filter=88 channel=35
					-1, 0, 1, -4, -5, -14, 4, -1, 0,
					-- layer=2 filter=88 channel=36
					-4, 1, -2, 5, -9, -14, 1, 9, -1,
					-- layer=2 filter=88 channel=37
					6, -16, 6, -3, -7, -17, -5, 6, 10,
					-- layer=2 filter=88 channel=38
					3, -12, -12, -3, 0, -7, 0, 0, -11,
					-- layer=2 filter=88 channel=39
					-1, -1, -9, 2, 1, 4, -9, 2, -5,
					-- layer=2 filter=88 channel=40
					-12, -13, 0, 6, -15, -1, -3, -16, -1,
					-- layer=2 filter=88 channel=41
					-2, 0, -16, -13, -16, 1, 7, -8, -8,
					-- layer=2 filter=88 channel=42
					-3, 0, 9, 10, -8, -7, -15, 4, 3,
					-- layer=2 filter=88 channel=43
					-7, -5, -5, 8, -5, -6, 3, -13, -11,
					-- layer=2 filter=88 channel=44
					-15, -4, 13, -8, -20, -3, 10, 2, 4,
					-- layer=2 filter=88 channel=45
					-10, 5, 4, 3, 8, 11, -14, -3, -9,
					-- layer=2 filter=88 channel=46
					-7, 6, 0, 3, -2, -16, -6, 6, 6,
					-- layer=2 filter=88 channel=47
					6, -1, 1, -5, -4, -11, -10, 7, 2,
					-- layer=2 filter=88 channel=48
					1, -11, 4, 7, -9, 9, -15, -11, 4,
					-- layer=2 filter=88 channel=49
					0, 1, 0, 6, 1, -5, 0, 11, 3,
					-- layer=2 filter=88 channel=50
					-1, -8, -18, 0, 7, -2, 9, -9, -1,
					-- layer=2 filter=88 channel=51
					-5, -1, -9, -7, 8, 8, -7, 0, -2,
					-- layer=2 filter=88 channel=52
					-16, -11, 8, -10, 8, 2, -7, -1, 2,
					-- layer=2 filter=88 channel=53
					-15, -7, -12, -3, 4, 10, 13, 10, -14,
					-- layer=2 filter=88 channel=54
					-5, 0, -4, 0, 3, -5, -1, -14, 5,
					-- layer=2 filter=88 channel=55
					-11, 5, 2, 13, 6, 10, 6, -1, -15,
					-- layer=2 filter=88 channel=56
					-11, 1, 5, -1, 5, 0, 6, 2, -8,
					-- layer=2 filter=88 channel=57
					0, -6, -13, 10, 6, -2, -17, 3, 7,
					-- layer=2 filter=88 channel=58
					-16, 13, -9, 5, -15, -9, -14, -14, 2,
					-- layer=2 filter=88 channel=59
					2, 9, 1, 2, 5, 11, 10, -11, -11,
					-- layer=2 filter=88 channel=60
					3, -9, -13, 7, 13, -7, -4, -8, -12,
					-- layer=2 filter=88 channel=61
					-10, 6, 7, 4, -3, -13, -15, -5, 11,
					-- layer=2 filter=88 channel=62
					-7, 11, -5, -6, -14, -10, -16, -14, -8,
					-- layer=2 filter=88 channel=63
					8, -16, -4, -10, 7, -13, -11, -13, -13,
					-- layer=2 filter=89 channel=0
					7, -8, 0, -2, 2, -17, -17, 14, 12,
					-- layer=2 filter=89 channel=1
					6, -14, -4, -9, 8, 2, -12, -21, -7,
					-- layer=2 filter=89 channel=2
					-18, -14, 8, -10, -9, -18, -12, -19, -20,
					-- layer=2 filter=89 channel=3
					0, 0, 0, -10, -20, -3, 2, 11, 0,
					-- layer=2 filter=89 channel=4
					7, 11, -5, -18, -1, -11, 0, -11, -13,
					-- layer=2 filter=89 channel=5
					9, 0, 14, -14, -14, -17, -14, -14, -1,
					-- layer=2 filter=89 channel=6
					-15, 9, -13, 10, 3, -5, -9, -8, -19,
					-- layer=2 filter=89 channel=7
					-13, -14, 4, -19, 0, -7, -5, -10, -13,
					-- layer=2 filter=89 channel=8
					12, 0, -11, 0, 7, -10, -12, 6, 5,
					-- layer=2 filter=89 channel=9
					-3, 8, -7, 13, 12, -15, 12, 3, -5,
					-- layer=2 filter=89 channel=10
					-22, -3, -12, -18, -7, -4, -19, 0, -1,
					-- layer=2 filter=89 channel=11
					-8, -7, -3, -18, -18, 5, -1, -6, -10,
					-- layer=2 filter=89 channel=12
					-9, -15, 1, -13, 11, 9, 2, -16, -14,
					-- layer=2 filter=89 channel=13
					1, -15, -5, -9, 8, -10, -15, -6, -17,
					-- layer=2 filter=89 channel=14
					-19, -20, 0, -14, 3, 5, -1, 2, -19,
					-- layer=2 filter=89 channel=15
					-18, -12, -23, -3, 5, -15, -15, -15, 4,
					-- layer=2 filter=89 channel=16
					-22, 7, -8, 0, -12, 4, -14, 4, -13,
					-- layer=2 filter=89 channel=17
					3, -18, 6, -10, -8, -8, -6, -18, -13,
					-- layer=2 filter=89 channel=18
					-12, 0, -6, 4, -13, 0, 4, 5, 2,
					-- layer=2 filter=89 channel=19
					-11, 2, 5, 9, 3, 0, 6, -7, 11,
					-- layer=2 filter=89 channel=20
					-17, -19, 5, -15, -13, 0, -1, -10, -5,
					-- layer=2 filter=89 channel=21
					6, -4, -4, -2, 2, 10, 8, -16, 8,
					-- layer=2 filter=89 channel=22
					-16, 0, -20, 11, 6, -15, 5, -6, 1,
					-- layer=2 filter=89 channel=23
					-17, -4, -9, -1, 10, 4, -19, -19, -4,
					-- layer=2 filter=89 channel=24
					-1, -11, 8, 0, -8, -13, 6, 4, -12,
					-- layer=2 filter=89 channel=25
					9, 9, 14, 6, 7, -3, -6, -12, -12,
					-- layer=2 filter=89 channel=26
					14, -3, -3, 3, -9, 3, 7, -14, 11,
					-- layer=2 filter=89 channel=27
					-5, 8, 8, 4, -3, 5, 14, 3, -3,
					-- layer=2 filter=89 channel=28
					7, 2, -8, 9, -7, -3, -2, 6, -14,
					-- layer=2 filter=89 channel=29
					-19, -11, -10, -12, 2, -13, -2, 7, -8,
					-- layer=2 filter=89 channel=30
					-7, 3, 12, -10, -12, 1, 3, 4, 3,
					-- layer=2 filter=89 channel=31
					-10, 8, -8, 9, -8, 5, -2, 6, -5,
					-- layer=2 filter=89 channel=32
					-18, -11, -16, 13, -6, -9, -7, -8, -4,
					-- layer=2 filter=89 channel=33
					4, 4, 10, -16, -3, -16, -2, 0, 0,
					-- layer=2 filter=89 channel=34
					-17, -22, -10, -1, -3, -18, -19, -11, -10,
					-- layer=2 filter=89 channel=35
					-10, -2, -12, -7, -8, -15, 1, -11, -10,
					-- layer=2 filter=89 channel=36
					6, -6, -2, 4, -11, -16, -17, -7, 11,
					-- layer=2 filter=89 channel=37
					4, -3, 0, -4, -14, -10, -10, 1, -13,
					-- layer=2 filter=89 channel=38
					-6, -4, 1, 9, -4, -9, 6, -6, 2,
					-- layer=2 filter=89 channel=39
					-7, 10, -1, -9, -19, -10, -18, -11, 5,
					-- layer=2 filter=89 channel=40
					10, 0, -8, -11, -2, -11, 11, -3, -6,
					-- layer=2 filter=89 channel=41
					-21, -1, 7, -18, -13, -4, -1, 12, 0,
					-- layer=2 filter=89 channel=42
					2, -7, -9, -13, -2, 0, 0, -11, -19,
					-- layer=2 filter=89 channel=43
					-2, -15, 8, -15, 0, 5, -17, -3, 1,
					-- layer=2 filter=89 channel=44
					12, -11, -10, 0, -14, -10, -16, -18, -14,
					-- layer=2 filter=89 channel=45
					-19, 1, 4, 1, -10, 5, -1, -1, 0,
					-- layer=2 filter=89 channel=46
					-5, 10, -3, -9, -13, -5, -8, -18, 0,
					-- layer=2 filter=89 channel=47
					-22, -10, 11, -2, 4, -3, -17, 12, 9,
					-- layer=2 filter=89 channel=48
					-14, -12, -22, -2, -1, -8, -12, 3, -22,
					-- layer=2 filter=89 channel=49
					-8, 5, 0, -10, 3, -7, 12, 11, 9,
					-- layer=2 filter=89 channel=50
					4, 5, -15, -15, -1, -2, 2, 8, 11,
					-- layer=2 filter=89 channel=51
					5, 0, 0, -13, 7, 11, 11, 8, -11,
					-- layer=2 filter=89 channel=52
					6, -21, 4, 9, -14, 5, -8, 5, -6,
					-- layer=2 filter=89 channel=53
					12, -5, 6, -11, -6, -14, -5, -3, -13,
					-- layer=2 filter=89 channel=54
					-9, 5, -4, -5, 2, -16, -10, -16, -23,
					-- layer=2 filter=89 channel=55
					-1, -10, 9, 0, -13, -11, -1, 0, -11,
					-- layer=2 filter=89 channel=56
					-6, -16, 5, 0, -20, -15, -7, -9, -2,
					-- layer=2 filter=89 channel=57
					-5, -3, -10, -11, -12, -3, -17, -4, 4,
					-- layer=2 filter=89 channel=58
					-11, -13, 0, 2, -15, 0, 7, 1, 0,
					-- layer=2 filter=89 channel=59
					0, -17, -12, -13, -5, -4, -4, -3, 2,
					-- layer=2 filter=89 channel=60
					-4, -8, -8, -8, -2, -13, -10, 1, -4,
					-- layer=2 filter=89 channel=61
					5, -10, -15, -3, -8, -13, 9, 9, 12,
					-- layer=2 filter=89 channel=62
					-4, -7, -12, 10, 12, -13, 8, 8, 12,
					-- layer=2 filter=89 channel=63
					4, 2, -2, 1, -12, -7, -8, -14, -1,
					-- layer=2 filter=90 channel=0
					1, -5, 20, 30, 1, -5, -17, 11, 9,
					-- layer=2 filter=90 channel=1
					25, 35, 33, 48, -29, -7, 21, 0, -13,
					-- layer=2 filter=90 channel=2
					6, 11, 13, 1, -3, 20, 5, 1, -4,
					-- layer=2 filter=90 channel=3
					17, -23, 1, 10, 35, 27, 21, -2, -13,
					-- layer=2 filter=90 channel=4
					-11, -39, -1, 19, -19, -55, 78, 6, -3,
					-- layer=2 filter=90 channel=5
					34, 24, -7, -2, -13, -39, -55, -49, -48,
					-- layer=2 filter=90 channel=6
					4, 5, 32, -13, -16, 17, -10, 1, -25,
					-- layer=2 filter=90 channel=7
					26, 55, 34, -22, 0, 44, -23, 0, -32,
					-- layer=2 filter=90 channel=8
					-1, -18, -9, -29, -32, -29, -20, -24, -10,
					-- layer=2 filter=90 channel=9
					49, 20, 10, -1, -26, 3, -11, 10, -4,
					-- layer=2 filter=90 channel=10
					-23, 12, 15, -22, 16, 29, 6, 10, -16,
					-- layer=2 filter=90 channel=11
					11, 21, 11, -35, -13, 15, -35, -2, -3,
					-- layer=2 filter=90 channel=12
					-13, 14, -5, 8, 8, -14, 26, 7, 2,
					-- layer=2 filter=90 channel=13
					-6, 35, 33, -37, -40, -45, -49, 3, -39,
					-- layer=2 filter=90 channel=14
					2, -3, -7, 1, -17, -14, -29, -40, -29,
					-- layer=2 filter=90 channel=15
					17, -11, 10, -4, 6, -4, -59, 0, 23,
					-- layer=2 filter=90 channel=16
					-15, 7, 25, -12, -7, 16, 17, -22, -13,
					-- layer=2 filter=90 channel=17
					15, 4, 2, 18, 17, -9, -8, 0, 16,
					-- layer=2 filter=90 channel=18
					44, 42, 2, -3, -43, 5, -43, -57, -4,
					-- layer=2 filter=90 channel=19
					8, -1, 2, 23, 3, -25, 11, -11, -3,
					-- layer=2 filter=90 channel=20
					-4, 9, 33, 11, 9, -20, 7, 5, -1,
					-- layer=2 filter=90 channel=21
					33, 18, 11, -1, 33, 42, -24, -3, 35,
					-- layer=2 filter=90 channel=22
					30, 28, 20, 1, 14, 13, -20, -28, -5,
					-- layer=2 filter=90 channel=23
					5, 12, -3, -23, -27, 22, -13, -29, 0,
					-- layer=2 filter=90 channel=24
					0, -5, 9, 1, 9, -3, 30, 20, 9,
					-- layer=2 filter=90 channel=25
					-38, 8, 19, -27, -6, -42, 23, 18, -2,
					-- layer=2 filter=90 channel=26
					-12, 0, -19, 0, 10, 13, 8, -11, 11,
					-- layer=2 filter=90 channel=27
					-10, 10, -1, -9, 8, 7, 5, -6, -15,
					-- layer=2 filter=90 channel=28
					12, -2, -26, 25, 2, -5, 3, 15, 0,
					-- layer=2 filter=90 channel=29
					26, 26, 17, -3, -10, 24, -13, -9, -16,
					-- layer=2 filter=90 channel=30
					7, 6, -5, -18, -20, -2, -18, 5, -1,
					-- layer=2 filter=90 channel=31
					-12, 4, -2, -2, -11, -3, 13, -4, 3,
					-- layer=2 filter=90 channel=32
					-13, 28, 29, -37, -30, -9, -30, -52, 3,
					-- layer=2 filter=90 channel=33
					-4, 37, 10, 2, 8, 23, -4, -34, 18,
					-- layer=2 filter=90 channel=34
					-12, -1, -1, 2, -8, 5, -8, -9, 13,
					-- layer=2 filter=90 channel=35
					-18, -15, 13, 66, 16, 0, 43, 66, -1,
					-- layer=2 filter=90 channel=36
					8, 2, -16, -5, -20, -14, 26, 0, 3,
					-- layer=2 filter=90 channel=37
					-12, 20, 37, -12, -29, -3, -25, 0, -9,
					-- layer=2 filter=90 channel=38
					44, 39, 15, -5, -21, -39, 0, -1, -27,
					-- layer=2 filter=90 channel=39
					14, -24, 11, 29, -26, -72, -9, -31, -35,
					-- layer=2 filter=90 channel=40
					35, 30, -4, 16, -17, -28, 20, -7, -26,
					-- layer=2 filter=90 channel=41
					21, 17, 16, 16, 0, 12, -4, -26, -13,
					-- layer=2 filter=90 channel=42
					3, 16, 12, 0, -14, 19, 25, 41, 10,
					-- layer=2 filter=90 channel=43
					-40, 1, 17, -21, -12, -17, -5, 3, -21,
					-- layer=2 filter=90 channel=44
					-20, -24, -39, 11, -18, -36, 44, 10, -2,
					-- layer=2 filter=90 channel=45
					5, -1, -17, -2, 13, 6, -11, -55, 0,
					-- layer=2 filter=90 channel=46
					17, -1, 65, -2, 11, 33, 65, 53, -3,
					-- layer=2 filter=90 channel=47
					-12, -26, 14, -19, -35, -32, -24, -18, -11,
					-- layer=2 filter=90 channel=48
					7, 20, 18, 3, 6, 23, 18, 3, 10,
					-- layer=2 filter=90 channel=49
					-3, -33, 12, -8, -39, -41, 4, -10, -28,
					-- layer=2 filter=90 channel=50
					15, 38, -3, -11, -16, 35, -38, -19, 12,
					-- layer=2 filter=90 channel=51
					59, 56, 13, -4, 35, -19, 7, 9, 33,
					-- layer=2 filter=90 channel=52
					-16, 29, 9, -6, -8, 11, 2, -11, -21,
					-- layer=2 filter=90 channel=53
					8, 7, 16, 5, -10, -10, -11, -9, 9,
					-- layer=2 filter=90 channel=54
					-4, -5, -31, -6, -44, -19, 10, -24, -23,
					-- layer=2 filter=90 channel=55
					-11, 30, -18, -38, 12, -2, 13, 5, -30,
					-- layer=2 filter=90 channel=56
					14, -2, 9, 13, -11, 9, 13, 19, 17,
					-- layer=2 filter=90 channel=57
					4, 14, 20, -43, -6, 44, -51, -4, 20,
					-- layer=2 filter=90 channel=58
					25, -24, 23, 65, 23, -36, 33, 27, -30,
					-- layer=2 filter=90 channel=59
					0, 24, 7, -26, -5, 21, -21, -28, 25,
					-- layer=2 filter=90 channel=60
					13, -17, 17, -4, -2, -24, 2, 15, 47,
					-- layer=2 filter=90 channel=61
					19, 26, -46, 46, 5, 31, -44, 9, -22,
					-- layer=2 filter=90 channel=62
					7, 17, 6, -13, -25, -14, 11, 25, 47,
					-- layer=2 filter=90 channel=63
					25, 16, -3, -5, 12, 20, -35, -69, -8,
					-- layer=2 filter=91 channel=0
					27, 0, -41, 4, -42, -26, -49, -22, -24,
					-- layer=2 filter=91 channel=1
					-47, -5, -4, 0, -35, 8, -18, 15, -30,
					-- layer=2 filter=91 channel=2
					21, -13, 1, 4, -12, -23, -9, 10, 15,
					-- layer=2 filter=91 channel=3
					-6, -4, -4, -46, -23, -26, 7, -34, -7,
					-- layer=2 filter=91 channel=4
					-10, -3, 15, -9, -17, 1, 23, -2, 20,
					-- layer=2 filter=91 channel=5
					8, 21, 64, 46, 11, 13, 7, -38, -10,
					-- layer=2 filter=91 channel=6
					-10, -59, -11, -24, -10, 11, -9, -21, -23,
					-- layer=2 filter=91 channel=7
					1, -1, -34, 43, -8, -36, -40, -44, -21,
					-- layer=2 filter=91 channel=8
					-68, -82, -41, -67, -70, 18, -64, -49, 13,
					-- layer=2 filter=91 channel=9
					-8, 11, 53, 23, 22, 24, -20, 0, 40,
					-- layer=2 filter=91 channel=10
					18, 13, 7, 36, 7, -25, 17, -8, -4,
					-- layer=2 filter=91 channel=11
					-16, 25, -13, -18, -25, -22, 12, -3, -1,
					-- layer=2 filter=91 channel=12
					11, 16, 5, 12, 2, 2, -8, -16, 6,
					-- layer=2 filter=91 channel=13
					62, 25, 9, 28, 28, 13, 51, -18, 49,
					-- layer=2 filter=91 channel=14
					-19, -59, -40, 24, 35, -62, 12, 20, -12,
					-- layer=2 filter=91 channel=15
					22, 13, 7, 30, -19, 2, -28, -15, 13,
					-- layer=2 filter=91 channel=16
					-11, -30, -18, -18, 0, -26, -15, -20, -31,
					-- layer=2 filter=91 channel=17
					13, -7, 8, 12, 14, 14, 32, 3, -23,
					-- layer=2 filter=91 channel=18
					28, 28, 0, 23, 7, -48, -8, 7, -31,
					-- layer=2 filter=91 channel=19
					6, -5, -26, -44, -22, -22, -42, -34, 16,
					-- layer=2 filter=91 channel=20
					13, -12, -9, 0, -41, -8, -10, -20, -25,
					-- layer=2 filter=91 channel=21
					2, -5, -4, -53, -15, 0, -22, -11, -12,
					-- layer=2 filter=91 channel=22
					20, 0, 4, -28, 27, -18, 41, 31, 35,
					-- layer=2 filter=91 channel=23
					-16, 5, 27, 34, 27, 31, 24, 21, 38,
					-- layer=2 filter=91 channel=24
					23, 14, -4, -8, 24, 23, 6, 16, -3,
					-- layer=2 filter=91 channel=25
					8, 24, -20, -16, 37, -31, -20, -21, -48,
					-- layer=2 filter=91 channel=26
					6, 9, 2, -8, -10, -1, 1, -8, -2,
					-- layer=2 filter=91 channel=27
					-13, 3, 2, -15, 3, 3, 10, -13, 1,
					-- layer=2 filter=91 channel=28
					-16, -10, -11, -11, 9, -19, 11, 15, 4,
					-- layer=2 filter=91 channel=29
					-8, 45, 12, -16, 0, 23, -8, -8, -6,
					-- layer=2 filter=91 channel=30
					-4, -31, -33, -30, 4, -18, 10, 9, -2,
					-- layer=2 filter=91 channel=31
					-19, -24, 5, -6, -5, -2, 30, 18, -27,
					-- layer=2 filter=91 channel=32
					-15, -75, -15, -55, -6, -31, 14, -16, -36,
					-- layer=2 filter=91 channel=33
					-19, 3, 20, -9, 20, 21, -7, -5, -26,
					-- layer=2 filter=91 channel=34
					6, -2, -19, 9, -34, -25, -40, -38, -3,
					-- layer=2 filter=91 channel=35
					-13, -12, 18, -8, -9, 8, 26, 37, 9,
					-- layer=2 filter=91 channel=36
					29, -3, -12, 2, -23, 12, 4, -17, 8,
					-- layer=2 filter=91 channel=37
					20, 34, 9, -10, -8, -1, -13, -8, -50,
					-- layer=2 filter=91 channel=38
					-1, 26, 34, 25, 22, 14, 26, 21, -19,
					-- layer=2 filter=91 channel=39
					27, 1, -8, 0, -18, -37, -17, -25, -37,
					-- layer=2 filter=91 channel=40
					0, -3, -1, -11, 3, 9, 5, 5, 31,
					-- layer=2 filter=91 channel=41
					-5, 2, 14, -3, 22, 37, 7, 11, 25,
					-- layer=2 filter=91 channel=42
					20, 2, -5, 12, 0, -11, 10, 10, -3,
					-- layer=2 filter=91 channel=43
					-67, -14, -7, -58, -40, -41, -82, -23, -33,
					-- layer=2 filter=91 channel=44
					-4, 41, 39, 6, 32, 5, 15, 21, 30,
					-- layer=2 filter=91 channel=45
					-35, -27, -55, -6, -31, -24, -14, -41, -45,
					-- layer=2 filter=91 channel=46
					0, 21, 0, 24, 3, 17, -7, 0, 4,
					-- layer=2 filter=91 channel=47
					-46, -4, 26, 1, 17, 13, -6, 30, 55,
					-- layer=2 filter=91 channel=48
					16, 20, 1, -13, 4, 14, -13, -14, 11,
					-- layer=2 filter=91 channel=49
					7, -16, 1, 7, -6, -18, -5, -80, -30,
					-- layer=2 filter=91 channel=50
					-21, 5, 37, -7, -18, -17, -38, -16, -14,
					-- layer=2 filter=91 channel=51
					60, -14, -13, -39, 14, 0, 18, 27, -74,
					-- layer=2 filter=91 channel=52
					-11, 26, 5, 37, 6, -17, 21, 14, 16,
					-- layer=2 filter=91 channel=53
					27, -11, 19, 4, 10, 46, 9, 25, 7,
					-- layer=2 filter=91 channel=54
					-54, -34, -18, -4, -16, -27, -33, 4, -26,
					-- layer=2 filter=91 channel=55
					-12, -29, -27, 1, -45, -24, -20, -61, -16,
					-- layer=2 filter=91 channel=56
					25, 10, 12, 15, 20, 22, 23, 0, 34,
					-- layer=2 filter=91 channel=57
					13, -23, -14, 10, -21, 9, -7, 2, -20,
					-- layer=2 filter=91 channel=58
					-37, -1, -32, -62, -27, -23, -10, 34, 26,
					-- layer=2 filter=91 channel=59
					-1, 9, 22, -14, -13, -32, -22, -11, -2,
					-- layer=2 filter=91 channel=60
					13, 25, 26, 43, -6, -2, 35, -39, 60,
					-- layer=2 filter=91 channel=61
					47, -16, -24, 48, -13, -11, 25, 32, -45,
					-- layer=2 filter=91 channel=62
					-47, -75, -43, -9, 13, -35, -23, -22, -58,
					-- layer=2 filter=91 channel=63
					-11, -8, 15, -50, -29, -15, -15, -22, -4,
					-- layer=2 filter=92 channel=0
					38, 38, 36, 8, 37, -5, -7, -25, 4,
					-- layer=2 filter=92 channel=1
					48, 17, -11, -23, 35, -17, -33, -21, -15,
					-- layer=2 filter=92 channel=2
					-12, -30, -13, 3, -7, -4, -7, -4, -2,
					-- layer=2 filter=92 channel=3
					-19, -1, 9, 10, -4, 20, 47, 46, 15,
					-- layer=2 filter=92 channel=4
					0, 7, -19, -1, 2, -1, 14, 13, 1,
					-- layer=2 filter=92 channel=5
					-31, -82, 6, -76, -33, -19, -62, -28, -25,
					-- layer=2 filter=92 channel=6
					-16, -1, 30, -32, -33, -4, -40, -1, -15,
					-- layer=2 filter=92 channel=7
					-20, -16, -5, 6, 42, 15, -43, -29, -4,
					-- layer=2 filter=92 channel=8
					-11, 17, 22, -113, -69, -43, -54, -26, -5,
					-- layer=2 filter=92 channel=9
					-14, 8, -22, -4, -11, -46, -55, -3, 22,
					-- layer=2 filter=92 channel=10
					26, 2, -46, 16, -7, 0, -18, -2, -5,
					-- layer=2 filter=92 channel=11
					23, 10, -24, 16, 43, 41, 9, 22, 8,
					-- layer=2 filter=92 channel=12
					-5, -31, -29, 34, -3, 0, 13, 26, 22,
					-- layer=2 filter=92 channel=13
					-25, 33, -12, -65, -26, 2, -92, -31, -22,
					-- layer=2 filter=92 channel=14
					11, -10, -32, -22, -18, 9, -29, 3, -9,
					-- layer=2 filter=92 channel=15
					26, 22, 25, -18, -2, 6, -55, -40, -18,
					-- layer=2 filter=92 channel=16
					-34, -28, -17, 37, 10, 0, 59, 51, 19,
					-- layer=2 filter=92 channel=17
					1, -19, -28, -12, -24, -15, 19, 11, 16,
					-- layer=2 filter=92 channel=18
					-11, -12, -78, -11, -22, -6, -25, 52, 8,
					-- layer=2 filter=92 channel=19
					-35, -40, -44, 20, -8, 3, 32, 10, 21,
					-- layer=2 filter=92 channel=20
					-36, -42, -41, 4, -18, -50, 12, 46, -2,
					-- layer=2 filter=92 channel=21
					10, 59, 37, -14, 18, 9, -53, -8, -10,
					-- layer=2 filter=92 channel=22
					10, 16, 25, 1, -11, 16, -24, -13, 16,
					-- layer=2 filter=92 channel=23
					-7, 19, 14, -46, 10, -8, -30, 0, -19,
					-- layer=2 filter=92 channel=24
					-5, -28, -14, -5, -7, 4, 53, 51, 15,
					-- layer=2 filter=92 channel=25
					34, 11, -33, -95, -37, -6, 1, -17, 14,
					-- layer=2 filter=92 channel=26
					-11, -8, -16, 6, 7, 16, 0, 7, 10,
					-- layer=2 filter=92 channel=27
					-4, 9, 11, 13, 3, 7, -7, -11, 11,
					-- layer=2 filter=92 channel=28
					0, 23, 22, -12, 13, -1, -1, -9, 14,
					-- layer=2 filter=92 channel=29
					-13, -18, -7, -9, -12, -14, 29, 34, 32,
					-- layer=2 filter=92 channel=30
					13, -53, -15, -5, -11, -16, 40, 37, 17,
					-- layer=2 filter=92 channel=31
					-8, -6, 1, -2, 1, 14, -23, 11, -8,
					-- layer=2 filter=92 channel=32
					-23, -23, 9, -17, 18, 3, 12, 23, -12,
					-- layer=2 filter=92 channel=33
					-8, 32, 11, -53, -3, -6, -8, 0, -35,
					-- layer=2 filter=92 channel=34
					24, 28, 11, -4, -7, 4, -52, -36, 10,
					-- layer=2 filter=92 channel=35
					10, 27, 37, -57, -5, 2, -99, 0, 2,
					-- layer=2 filter=92 channel=36
					-10, -5, -33, 20, -3, -27, 33, 12, 8,
					-- layer=2 filter=92 channel=37
					17, 23, -9, 30, -22, -16, -60, 2, 27,
					-- layer=2 filter=92 channel=38
					-21, 32, -17, -27, -14, -1, -101, -75, -59,
					-- layer=2 filter=92 channel=39
					40, 38, 25, 40, 45, 24, 16, 16, 3,
					-- layer=2 filter=92 channel=40
					-1, -14, -65, -3, -55, -12, -25, -12, -10,
					-- layer=2 filter=92 channel=41
					0, 48, 19, -31, 12, -3, -24, -21, -9,
					-- layer=2 filter=92 channel=42
					-1, -39, 0, -15, -1, -21, -3, -25, 23,
					-- layer=2 filter=92 channel=43
					-38, -30, -40, -7, 25, -1, 55, 72, 45,
					-- layer=2 filter=92 channel=44
					-16, -30, -15, 38, 25, 21, 25, 38, -1,
					-- layer=2 filter=92 channel=45
					-27, -7, 27, -34, 12, -14, -10, 16, -37,
					-- layer=2 filter=92 channel=46
					16, 57, 5, -29, 33, -28, -93, -64, -9,
					-- layer=2 filter=92 channel=47
					-12, 16, 9, -18, -9, 1, -6, 0, -14,
					-- layer=2 filter=92 channel=48
					-4, -39, -17, 4, 5, -22, 20, 15, 9,
					-- layer=2 filter=92 channel=49
					-32, 24, 6, -19, 50, 34, 26, 33, 36,
					-- layer=2 filter=92 channel=50
					-4, 18, 27, 0, 34, 43, 4, -19, -4,
					-- layer=2 filter=92 channel=51
					30, 15, -28, -20, -9, -4, 12, -5, -33,
					-- layer=2 filter=92 channel=52
					6, 7, -25, 2, 20, 23, -17, -11, 1,
					-- layer=2 filter=92 channel=53
					-5, 29, 9, -26, -14, 12, -45, -4, -14,
					-- layer=2 filter=92 channel=54
					-3, -50, -59, 13, 16, -1, 34, 41, 35,
					-- layer=2 filter=92 channel=55
					7, 22, -17, -6, 39, 43, 11, 36, 35,
					-- layer=2 filter=92 channel=56
					41, 42, 29, -2, -5, 24, -60, -24, -9,
					-- layer=2 filter=92 channel=57
					29, 5, -36, -50, -11, -20, -9, -11, -11,
					-- layer=2 filter=92 channel=58
					23, 30, 24, -41, 10, 53, -44, -137, -44,
					-- layer=2 filter=92 channel=59
					16, 33, 34, 9, -44, -1, -27, -3, 33,
					-- layer=2 filter=92 channel=60
					-21, 41, 50, -47, 0, 21, -70, -75, 13,
					-- layer=2 filter=92 channel=61
					32, -3, -6, 0, 19, 22, -17, 12, 3,
					-- layer=2 filter=92 channel=62
					-59, -66, 60, -20, -57, -31, -68, 8, -21,
					-- layer=2 filter=92 channel=63
					2, 9, 33, 15, 7, 7, 9, 9, -19,
					-- layer=2 filter=93 channel=0
					6, 8, 20, 18, 10, 32, -1, 6, -1,
					-- layer=2 filter=93 channel=1
					43, 27, 29, 22, 10, -5, 36, 17, 8,
					-- layer=2 filter=93 channel=2
					-47, -31, 19, -37, -1, 27, 29, 18, 11,
					-- layer=2 filter=93 channel=3
					20, 5, 9, -15, -10, -49, 33, -21, -46,
					-- layer=2 filter=93 channel=4
					-20, -18, 24, -18, 28, 10, -11, 21, 15,
					-- layer=2 filter=93 channel=5
					21, 7, 9, 26, -12, -32, 20, 53, -7,
					-- layer=2 filter=93 channel=6
					11, 1, -48, 44, 19, -30, -2, -30, -57,
					-- layer=2 filter=93 channel=7
					-49, -8, 30, -1, 8, -1, -20, 28, 32,
					-- layer=2 filter=93 channel=8
					-33, 25, 29, -11, -1, 2, 7, 38, -27,
					-- layer=2 filter=93 channel=9
					57, 13, 54, 36, 54, 46, 8, 37, -1,
					-- layer=2 filter=93 channel=10
					-4, -3, 20, -36, -21, 26, -42, -2, 32,
					-- layer=2 filter=93 channel=11
					-15, 5, 14, -21, 20, 4, -42, 5, 21,
					-- layer=2 filter=93 channel=12
					-75, -25, 20, -24, 6, 23, -21, 9, 12,
					-- layer=2 filter=93 channel=13
					-7, 11, -19, 16, -30, -22, 41, -5, 1,
					-- layer=2 filter=93 channel=14
					13, 17, -31, 21, 31, -8, 12, 28, 7,
					-- layer=2 filter=93 channel=15
					7, -12, 0, -2, 15, 23, 9, -4, 21,
					-- layer=2 filter=93 channel=16
					33, -1, -31, 21, 20, -13, 6, -7, -6,
					-- layer=2 filter=93 channel=17
					22, 14, -26, 12, 11, -42, 3, 7, -7,
					-- layer=2 filter=93 channel=18
					-1, -7, -31, -21, 9, 0, -7, 23, 21,
					-- layer=2 filter=93 channel=19
					-55, -5, -2, -74, 23, 32, -5, 24, 14,
					-- layer=2 filter=93 channel=20
					-29, -23, -1, -24, 22, 24, -15, 27, 7,
					-- layer=2 filter=93 channel=21
					11, 14, -33, 33, 32, -20, -3, 11, -33,
					-- layer=2 filter=93 channel=22
					34, 33, -1, 42, -8, 7, -4, -16, -18,
					-- layer=2 filter=93 channel=23
					30, 29, -43, 60, 10, -68, 21, -30, -41,
					-- layer=2 filter=93 channel=24
					-11, -27, -5, -5, -4, -7, 24, -14, -6,
					-- layer=2 filter=93 channel=25
					-4, -6, 37, 17, -1, 6, -33, 52, -12,
					-- layer=2 filter=93 channel=26
					11, -7, 0, 10, -13, 2, 15, 5, -15,
					-- layer=2 filter=93 channel=27
					-17, 0, 13, -10, -3, -3, -10, 5, 11,
					-- layer=2 filter=93 channel=28
					-5, -5, 0, 14, -10, -3, -1, -16, 15,
					-- layer=2 filter=93 channel=29
					-37, 21, 41, 38, 17, -3, -9, 12, 18,
					-- layer=2 filter=93 channel=30
					-15, 19, -7, 34, 16, -28, 33, 19, -22,
					-- layer=2 filter=93 channel=31
					-31, -1, -10, -34, 4, 2, -45, 25, -1,
					-- layer=2 filter=93 channel=32
					44, 31, -41, 36, -28, -62, 13, -58, -33,
					-- layer=2 filter=93 channel=33
					15, -8, -48, 30, -1, -28, 5, 7, -20,
					-- layer=2 filter=93 channel=34
					-12, -8, 33, -16, 7, 24, -21, -16, 23,
					-- layer=2 filter=93 channel=35
					0, 15, -11, 4, -38, -18, 26, 38, -4,
					-- layer=2 filter=93 channel=36
					-54, -32, 5, -42, 3, 6, -21, 25, 27,
					-- layer=2 filter=93 channel=37
					2, -10, 17, -4, 3, 11, -39, 38, 37,
					-- layer=2 filter=93 channel=38
					23, 15, 8, 15, -1, -22, 18, 22, -23,
					-- layer=2 filter=93 channel=39
					-30, -37, 5, 6, -36, -2, -12, -44, 4,
					-- layer=2 filter=93 channel=40
					23, 49, 31, 11, 23, -6, 8, 16, 1,
					-- layer=2 filter=93 channel=41
					23, 10, -64, 19, 18, -53, -6, -7, -50,
					-- layer=2 filter=93 channel=42
					-12, 4, -10, 8, -11, -18, 63, 19, 15,
					-- layer=2 filter=93 channel=43
					8, 28, -2, 7, 8, 24, -29, 1, 22,
					-- layer=2 filter=93 channel=44
					-17, -3, -8, 29, 53, 39, -20, 17, 17,
					-- layer=2 filter=93 channel=45
					-8, 0, -31, 22, 29, -28, -4, -5, -43,
					-- layer=2 filter=93 channel=46
					15, -45, 0, -16, -46, -48, -33, -16, -21,
					-- layer=2 filter=93 channel=47
					16, 6, -33, 43, 25, -6, 24, 8, -19,
					-- layer=2 filter=93 channel=48
					-60, -1, 4, -17, -23, 12, -22, 14, 5,
					-- layer=2 filter=93 channel=49
					5, 41, 0, 61, 44, -9, 8, 31, -4,
					-- layer=2 filter=93 channel=50
					-32, 0, -14, 23, 28, 16, 30, -14, -24,
					-- layer=2 filter=93 channel=51
					-6, 8, 28, 9, 71, 16, 0, -9, -8,
					-- layer=2 filter=93 channel=52
					-9, -13, -9, -19, 14, 3, -79, -16, 22,
					-- layer=2 filter=93 channel=53
					22, 10, -49, 30, 30, -5, 18, 0, -12,
					-- layer=2 filter=93 channel=54
					10, 42, -4, -1, 31, 2, -40, 6, 5,
					-- layer=2 filter=93 channel=55
					-46, 15, 8, 20, 4, -16, -44, -17, 2,
					-- layer=2 filter=93 channel=56
					18, -2, -10, -18, -15, 0, 8, -20, -11,
					-- layer=2 filter=93 channel=57
					2, 25, -28, 7, -3, -40, 13, 0, -51,
					-- layer=2 filter=93 channel=58
					57, -11, 32, -31, -56, -69, 3, -9, 6,
					-- layer=2 filter=93 channel=59
					1, 9, 9, 55, 13, -3, 26, -1, -26,
					-- layer=2 filter=93 channel=60
					-22, -35, -4, -29, -38, 5, 46, -12, 14,
					-- layer=2 filter=93 channel=61
					-47, -60, 31, 20, 26, 12, 8, 14, 19,
					-- layer=2 filter=93 channel=62
					11, 24, 19, -26, -26, 2, -1, -28, 51,
					-- layer=2 filter=93 channel=63
					10, -2, -26, 24, 15, -40, 38, 22, -82,
					-- layer=2 filter=94 channel=0
					-38, -22, -13, -18, -14, 8, 0, 25, 20,
					-- layer=2 filter=94 channel=1
					48, 12, -18, 12, -13, 18, 1, 29, 28,
					-- layer=2 filter=94 channel=2
					-20, -14, -23, -16, 15, -12, 0, -37, -27,
					-- layer=2 filter=94 channel=3
					23, 32, 12, 16, -28, -14, -23, 12, -22,
					-- layer=2 filter=94 channel=4
					-42, -9, -23, -16, 0, 16, -30, 6, -34,
					-- layer=2 filter=94 channel=5
					-46, -57, 0, -13, -15, -34, 31, 8, 4,
					-- layer=2 filter=94 channel=6
					1, -4, 26, -15, -12, -13, -5, -22, -7,
					-- layer=2 filter=94 channel=7
					-31, -48, -27, -47, -17, -19, 28, 69, 30,
					-- layer=2 filter=94 channel=8
					-63, -35, -50, 2, 0, -46, -31, 15, -16,
					-- layer=2 filter=94 channel=9
					23, 1, -11, -17, 12, -8, 25, 6, -3,
					-- layer=2 filter=94 channel=10
					-25, -7, -14, -12, 2, -7, 25, 20, 5,
					-- layer=2 filter=94 channel=11
					-7, 5, -23, 28, 5, 6, 24, 59, 34,
					-- layer=2 filter=94 channel=12
					-32, -26, -74, -19, -45, -43, -31, -33, -41,
					-- layer=2 filter=94 channel=13
					-12, 0, -4, 15, 23, -3, 37, 1, -11,
					-- layer=2 filter=94 channel=14
					43, 13, 26, 18, 11, 16, 19, 9, -10,
					-- layer=2 filter=94 channel=15
					-2, 5, -15, 6, -5, 19, -6, 31, 29,
					-- layer=2 filter=94 channel=16
					-3, -36, -3, -30, -12, -42, 14, -14, -18,
					-- layer=2 filter=94 channel=17
					19, 16, 22, 25, 6, 3, -6, -3, -8,
					-- layer=2 filter=94 channel=18
					-36, -61, -26, 8, 27, -42, -57, 0, -37,
					-- layer=2 filter=94 channel=19
					-72, -43, -54, -70, -45, -51, -69, -27, -39,
					-- layer=2 filter=94 channel=20
					3, -15, -60, -22, -45, -51, 10, 21, -26,
					-- layer=2 filter=94 channel=21
					44, 22, 41, -19, -19, 11, 5, 1, -12,
					-- layer=2 filter=94 channel=22
					22, 13, 17, 11, 0, 13, 18, 30, 20,
					-- layer=2 filter=94 channel=23
					25, 16, -7, 7, 12, -6, 22, -7, -19,
					-- layer=2 filter=94 channel=24
					-20, -4, -3, -7, -19, -38, 0, -26, -50,
					-- layer=2 filter=94 channel=25
					50, 68, 25, 26, -39, 14, 35, -21, 33,
					-- layer=2 filter=94 channel=26
					11, -5, -11, 16, 17, 2, -9, 17, -17,
					-- layer=2 filter=94 channel=27
					7, 0, -8, -9, 2, -3, -11, 12, 14,
					-- layer=2 filter=94 channel=28
					-12, -1, -15, -6, -16, -11, -5, 13, -1,
					-- layer=2 filter=94 channel=29
					-30, -67, -56, -17, -52, -67, 2, -5, -6,
					-- layer=2 filter=94 channel=30
					-3, -37, -11, -11, -32, -27, 7, -22, -35,
					-- layer=2 filter=94 channel=31
					8, 16, -3, 11, -8, 21, 14, 37, -5,
					-- layer=2 filter=94 channel=32
					0, 10, 31, -6, 10, -6, 2, 2, -28,
					-- layer=2 filter=94 channel=33
					11, 15, -3, -19, 5, -9, 2, 5, 10,
					-- layer=2 filter=94 channel=34
					1, -7, 5, -19, 3, 16, 8, 46, 12,
					-- layer=2 filter=94 channel=35
					20, 19, -2, 33, 9, 3, 23, -16, -17,
					-- layer=2 filter=94 channel=36
					-31, -29, -63, -35, -14, -53, -55, -21, -55,
					-- layer=2 filter=94 channel=37
					-7, 17, 3, 8, -13, 13, 16, 19, 28,
					-- layer=2 filter=94 channel=38
					58, 22, -14, -14, 1, 22, -14, -17, 14,
					-- layer=2 filter=94 channel=39
					-10, -4, -3, -23, 7, 53, 4, 17, 50,
					-- layer=2 filter=94 channel=40
					12, 0, -11, -22, -15, -14, -22, 11, -19,
					-- layer=2 filter=94 channel=41
					18, 9, 27, -12, -12, -12, 10, -7, 5,
					-- layer=2 filter=94 channel=42
					18, 17, 14, 24, 31, 7, 4, -68, -44,
					-- layer=2 filter=94 channel=43
					-8, -20, -20, -38, -37, -33, 17, 38, 22,
					-- layer=2 filter=94 channel=44
					-26, -10, -27, -21, -7, 0, 14, 33, 8,
					-- layer=2 filter=94 channel=45
					17, 7, 53, -13, -17, 6, -24, -18, 2,
					-- layer=2 filter=94 channel=46
					60, 51, -3, 11, 30, 60, -3, -8, 3,
					-- layer=2 filter=94 channel=47
					-2, 24, -6, -6, 5, -16, -3, 25, 0,
					-- layer=2 filter=94 channel=48
					-3, -18, -31, -5, -9, -26, -26, -34, -38,
					-- layer=2 filter=94 channel=49
					-69, -22, 5, -17, -9, 3, -16, -4, 55,
					-- layer=2 filter=94 channel=50
					34, -8, 34, -7, -30, 12, 14, -3, -13,
					-- layer=2 filter=94 channel=51
					27, 48, 5, 44, -8, -13, 0, 28, 5,
					-- layer=2 filter=94 channel=52
					-20, -8, -9, -4, 36, -14, 41, 38, 23,
					-- layer=2 filter=94 channel=53
					-10, 12, 11, -17, 0, 0, 0, 8, 19,
					-- layer=2 filter=94 channel=54
					-42, -31, 3, -38, -31, -54, -1, 19, 28,
					-- layer=2 filter=94 channel=55
					-11, 25, 6, -9, -6, -13, 35, 22, 43,
					-- layer=2 filter=94 channel=56
					24, 6, 14, -1, 19, 25, 8, 10, 9,
					-- layer=2 filter=94 channel=57
					9, 7, -2, 12, 2, -6, -15, 3, -23,
					-- layer=2 filter=94 channel=58
					-9, 2, 64, 35, 9, -1, -22, 17, -31,
					-- layer=2 filter=94 channel=59
					8, -17, 19, 0, 6, -15, 55, -4, 20,
					-- layer=2 filter=94 channel=60
					34, 11, 6, 11, 20, 8, -4, -7, -20,
					-- layer=2 filter=94 channel=61
					-35, -34, 16, -11, 0, 0, -6, 10, -28,
					-- layer=2 filter=94 channel=62
					70, 100, 63, 46, 7, 29, 30, 48, 65,
					-- layer=2 filter=94 channel=63
					-3, 6, 44, 7, -11, 4, 2, -7, 14,
					-- layer=2 filter=95 channel=0
					11, -6, 9, 40, 45, 57, 0, 2, 3,
					-- layer=2 filter=95 channel=1
					-24, 31, 19, 5, 18, 29, -7, 0, 19,
					-- layer=2 filter=95 channel=2
					12, 8, 7, -25, -37, -8, -6, 25, 1,
					-- layer=2 filter=95 channel=3
					-23, 12, 17, 38, 55, 43, 26, 31, -28,
					-- layer=2 filter=95 channel=4
					-5, -12, -11, -44, -58, -46, -24, -5, 39,
					-- layer=2 filter=95 channel=5
					17, 57, 16, 57, 73, 32, 45, 34, 28,
					-- layer=2 filter=95 channel=6
					7, -34, -9, 56, 20, 17, 19, -12, 21,
					-- layer=2 filter=95 channel=7
					15, 41, 19, 22, 83, 54, -26, -67, -39,
					-- layer=2 filter=95 channel=8
					-28, -14, -11, 7, 34, 40, -21, -6, -10,
					-- layer=2 filter=95 channel=9
					-2, -10, -21, 58, 18, -6, 6, 21, 22,
					-- layer=2 filter=95 channel=10
					12, 8, -19, 34, 42, 24, -32, -28, -22,
					-- layer=2 filter=95 channel=11
					18, 10, 17, 18, 7, -43, -22, -13, 0,
					-- layer=2 filter=95 channel=12
					17, 19, 10, 0, -20, -9, 22, 30, 12,
					-- layer=2 filter=95 channel=13
					-15, 41, 27, 10, 16, 37, -22, -6, 19,
					-- layer=2 filter=95 channel=14
					24, 4, 39, 30, 12, -9, 0, -53, -46,
					-- layer=2 filter=95 channel=15
					7, 10, -11, -29, -14, -22, -36, -29, -29,
					-- layer=2 filter=95 channel=16
					19, 16, 16, -1, 2, -26, -23, -45, -22,
					-- layer=2 filter=95 channel=17
					28, 5, 36, 27, 15, -26, -6, -25, -20,
					-- layer=2 filter=95 channel=18
					13, 26, 2, 19, -26, -18, 28, -10, 1,
					-- layer=2 filter=95 channel=19
					70, 22, 13, 8, 3, -27, 3, 1, -3,
					-- layer=2 filter=95 channel=20
					22, 10, 2, -1, -23, 14, -5, -11, 4,
					-- layer=2 filter=95 channel=21
					-36, -11, -12, 21, -7, 18, 24, 26, -11,
					-- layer=2 filter=95 channel=22
					-29, 7, 13, -1, 51, 50, 14, 14, -26,
					-- layer=2 filter=95 channel=23
					14, -22, 1, 29, -6, -2, 4, -30, 4,
					-- layer=2 filter=95 channel=24
					18, -7, 13, -1, -1, -4, 9, 22, 1,
					-- layer=2 filter=95 channel=25
					-39, -41, -37, -3, -20, 31, -74, 21, -8,
					-- layer=2 filter=95 channel=26
					-4, 6, -20, 9, -3, 6, 10, -7, -11,
					-- layer=2 filter=95 channel=27
					-11, -6, -3, 0, -15, 11, 6, -12, -2,
					-- layer=2 filter=95 channel=28
					9, 1, -17, 18, -18, 15, 4, -12, -14,
					-- layer=2 filter=95 channel=29
					7, 10, 15, 20, 34, -1, 3, 3, -38,
					-- layer=2 filter=95 channel=30
					0, -17, 7, 6, -5, 2, -5, 14, -22,
					-- layer=2 filter=95 channel=31
					-12, 7, 12, -24, 12, -17, -10, -53, -39,
					-- layer=2 filter=95 channel=32
					0, 12, 9, 2, -11, -11, -27, -20, -7,
					-- layer=2 filter=95 channel=33
					14, 1, 31, 33, 13, 3, 3, -11, 21,
					-- layer=2 filter=95 channel=34
					24, 23, 5, 17, 19, -1, -21, -17, -50,
					-- layer=2 filter=95 channel=35
					-8, -8, -35, 35, 10, -37, -30, -37, -8,
					-- layer=2 filter=95 channel=36
					12, -6, -16, 5, -20, -11, 33, 15, 10,
					-- layer=2 filter=95 channel=37
					4, 7, -8, 39, 11, 33, 2, -22, -49,
					-- layer=2 filter=95 channel=38
					-24, -1, 0, -11, -12, 32, 31, 27, 3,
					-- layer=2 filter=95 channel=39
					0, 31, -1, 2, -4, 0, -48, -15, -52,
					-- layer=2 filter=95 channel=40
					-52, -21, -16, -35, -35, 27, 27, 16, -4,
					-- layer=2 filter=95 channel=41
					13, -4, -5, 29, -13, 24, -7, -11, 28,
					-- layer=2 filter=95 channel=42
					-7, -9, -35, -56, -41, -41, -6, 29, -4,
					-- layer=2 filter=95 channel=43
					16, 29, 19, -25, -32, -38, -49, -56, -51,
					-- layer=2 filter=95 channel=44
					31, -8, -32, -27, -48, -54, 0, -11, 12,
					-- layer=2 filter=95 channel=45
					18, 20, 6, 38, 13, 31, 5, -1, 6,
					-- layer=2 filter=95 channel=46
					-22, -42, -73, 55, -4, 11, 28, 2, 20,
					-- layer=2 filter=95 channel=47
					24, -11, -19, -27, -78, -42, 0, -8, 28,
					-- layer=2 filter=95 channel=48
					-9, -10, 15, 10, 24, 0, -13, 7, -17,
					-- layer=2 filter=95 channel=49
					9, 44, 46, -6, -27, 63, -22, -4, 14,
					-- layer=2 filter=95 channel=50
					-9, -26, -7, -26, -17, -9, 18, -3, 8,
					-- layer=2 filter=95 channel=51
					-12, 34, 0, -60, 23, 45, -17, -6, 1,
					-- layer=2 filter=95 channel=52
					-4, 27, 3, 1, 29, 5, 0, -8, -1,
					-- layer=2 filter=95 channel=53
					27, -12, -9, -14, -5, 6, -19, -11, 30,
					-- layer=2 filter=95 channel=54
					18, 1, 27, -4, 0, -35, -41, -29, -44,
					-- layer=2 filter=95 channel=55
					-28, -1, 5, 31, 60, 28, -17, 15, 3,
					-- layer=2 filter=95 channel=56
					-9, -23, -15, -5, 19, 5, -3, 34, 10,
					-- layer=2 filter=95 channel=57
					-15, -25, -5, 18, -31, 0, -2, -46, -35,
					-- layer=2 filter=95 channel=58
					-20, 58, 44, -20, 65, 41, 77, 87, 26,
					-- layer=2 filter=95 channel=59
					7, -22, -1, 15, 29, 9, 5, -24, 18,
					-- layer=2 filter=95 channel=60
					-11, -41, -13, 36, 22, 12, 9, 5, 32,
					-- layer=2 filter=95 channel=61
					12, 45, 5, 7, 45, -1, 25, 41, 38,
					-- layer=2 filter=95 channel=62
					60, 52, -1, 130, 62, -11, 85, 27, -25,
					-- layer=2 filter=95 channel=63
					-35, 5, -7, 18, 6, 11, 23, -5, 33,
					-- layer=2 filter=96 channel=0
					5, 4, -19, -16, 7, 4, -24, 5, 17,
					-- layer=2 filter=96 channel=1
					-23, -10, 2, 11, -56, 11, 4, -37, -8,
					-- layer=2 filter=96 channel=2
					4, 10, 0, 9, -8, -28, 14, 6, -12,
					-- layer=2 filter=96 channel=3
					-52, 2, -3, -5, -22, -21, 29, 7, -52,
					-- layer=2 filter=96 channel=4
					7, 5, 19, 8, 31, 27, 23, 27, 14,
					-- layer=2 filter=96 channel=5
					30, 17, 81, -39, -40, 36, -49, 36, 56,
					-- layer=2 filter=96 channel=6
					-47, -45, 0, -16, -4, 43, -30, -36, 46,
					-- layer=2 filter=96 channel=7
					5, 37, 22, -18, 3, -2, 31, 2, -53,
					-- layer=2 filter=96 channel=8
					-28, -54, -18, -49, -44, 7, -49, -44, -22,
					-- layer=2 filter=96 channel=9
					-18, 19, -21, -18, -13, 22, 14, -2, 37,
					-- layer=2 filter=96 channel=10
					39, 34, -17, 47, -17, 5, 43, 2, -13,
					-- layer=2 filter=96 channel=11
					-9, 22, 24, -10, 3, 9, 4, -45, -23,
					-- layer=2 filter=96 channel=12
					-4, 11, -8, 13, -9, -22, 36, -6, -13,
					-- layer=2 filter=96 channel=13
					-15, 13, 12, 7, -20, 35, -75, -31, 26,
					-- layer=2 filter=96 channel=14
					-43, -22, -19, 0, -14, -40, 18, 4, -26,
					-- layer=2 filter=96 channel=15
					-23, 9, 0, -29, -6, 9, -8, 4, -31,
					-- layer=2 filter=96 channel=16
					22, 4, 5, 47, 32, -5, 6, -39, -48,
					-- layer=2 filter=96 channel=17
					2, 12, -10, 21, 41, -17, 14, -42, -44,
					-- layer=2 filter=96 channel=18
					-12, -6, 18, -22, 2, -3, -3, 28, 32,
					-- layer=2 filter=96 channel=19
					14, 8, 21, -29, 12, 37, 26, 10, 16,
					-- layer=2 filter=96 channel=20
					5, -19, 7, 15, -6, 0, 33, 13, -28,
					-- layer=2 filter=96 channel=21
					-50, -38, 17, -33, -46, 18, -53, -99, -2,
					-- layer=2 filter=96 channel=22
					6, -7, -9, 16, 2, -1, 67, 47, 19,
					-- layer=2 filter=96 channel=23
					-21, -26, -18, 15, 23, 8, -28, -28, 11,
					-- layer=2 filter=96 channel=24
					-16, -9, 5, 12, 21, -19, 21, -10, -9,
					-- layer=2 filter=96 channel=25
					-19, 31, -13, -17, -68, 11, -39, 9, -8,
					-- layer=2 filter=96 channel=26
					8, 0, 10, -7, 3, 3, 12, 12, -5,
					-- layer=2 filter=96 channel=27
					-9, 12, 5, -5, 8, -7, -2, 3, -15,
					-- layer=2 filter=96 channel=28
					-3, -12, -7, 1, -1, 0, -11, -1, -3,
					-- layer=2 filter=96 channel=29
					7, -19, -13, 12, 2, -7, 32, 17, -54,
					-- layer=2 filter=96 channel=30
					-4, -23, -23, 16, 6, -8, 54, -13, 7,
					-- layer=2 filter=96 channel=31
					26, -6, 38, -7, -6, 39, 3, -44, 20,
					-- layer=2 filter=96 channel=32
					-4, -25, 1, 15, 0, -9, -16, -29, 18,
					-- layer=2 filter=96 channel=33
					-39, -51, 12, -51, 2, 25, -27, -36, -5,
					-- layer=2 filter=96 channel=34
					2, 3, 1, -11, 0, -1, 2, 9, -18,
					-- layer=2 filter=96 channel=35
					-26, -32, 5, -101, -87, -58, -47, -75, -36,
					-- layer=2 filter=96 channel=36
					0, 2, -13, 16, -7, -19, 29, 44, -11,
					-- layer=2 filter=96 channel=37
					6, -19, -27, -19, -1, -10, -1, 16, -38,
					-- layer=2 filter=96 channel=38
					-5, 24, 14, -10, 3, 65, 35, 29, 33,
					-- layer=2 filter=96 channel=39
					37, 60, 16, 14, 61, 40, 20, 20, 55,
					-- layer=2 filter=96 channel=40
					36, 44, 4, -1, 14, 38, 56, 26, 43,
					-- layer=2 filter=96 channel=41
					7, 6, 25, 17, -5, 44, -23, -36, 39,
					-- layer=2 filter=96 channel=42
					-9, -12, -44, 5, -41, -67, -30, 13, -32,
					-- layer=2 filter=96 channel=43
					-12, 0, -12, 14, -23, -53, -44, -30, -92,
					-- layer=2 filter=96 channel=44
					50, 27, 32, 20, 26, 39, -6, -4, 0,
					-- layer=2 filter=96 channel=45
					1, -28, -3, 8, 17, 9, -26, -59, -39,
					-- layer=2 filter=96 channel=46
					-2, -41, -72, -5, -62, -53, -9, -48, -27,
					-- layer=2 filter=96 channel=47
					-10, 23, 24, 14, 21, 33, -10, -1, 4,
					-- layer=2 filter=96 channel=48
					32, -8, -29, 18, -4, -9, 42, 19, -26,
					-- layer=2 filter=96 channel=49
					34, 55, 16, 12, 66, 69, -41, 54, 34,
					-- layer=2 filter=96 channel=50
					-15, -48, -14, -8, -44, 13, -41, -80, -22,
					-- layer=2 filter=96 channel=51
					-54, 23, 9, 1, 59, 3, -19, -42, 26,
					-- layer=2 filter=96 channel=52
					2, 18, -3, 35, 13, -7, 85, 21, -15,
					-- layer=2 filter=96 channel=53
					-11, 33, 39, 0, 34, 46, -5, 1, 22,
					-- layer=2 filter=96 channel=54
					0, 25, -9, 79, 14, -18, -3, -31, -68,
					-- layer=2 filter=96 channel=55
					-31, 10, -15, 5, 6, -13, 24, 14, -25,
					-- layer=2 filter=96 channel=56
					11, 26, 22, 27, 13, 19, 67, 18, 39,
					-- layer=2 filter=96 channel=57
					-7, -26, 0, -19, -21, -20, 1, -35, -14,
					-- layer=2 filter=96 channel=58
					14, 3, 3, -37, 21, 12, -26, -32, 21,
					-- layer=2 filter=96 channel=59
					-30, -14, -3, -47, 8, -3, -14, 17, -6,
					-- layer=2 filter=96 channel=60
					-25, -13, -35, -21, -76, 13, -60, -73, -2,
					-- layer=2 filter=96 channel=61
					-12, 26, 6, -28, -2, 0, 3, 13, 87,
					-- layer=2 filter=96 channel=62
					-20, 25, 27, -25, 60, -3, -28, -37, -66,
					-- layer=2 filter=96 channel=63
					-14, 5, -13, 24, -12, 7, -17, -14, -33,
					-- layer=2 filter=97 channel=0
					43, 29, 21, 25, 28, -15, 32, -1, 24,
					-- layer=2 filter=97 channel=1
					-8, -21, 1, 2, 26, -22, 28, -20, 4,
					-- layer=2 filter=97 channel=2
					23, 5, -13, -24, -42, -51, 4, -35, -34,
					-- layer=2 filter=97 channel=3
					20, 3, -5, -16, -3, -4, -1, -39, -12,
					-- layer=2 filter=97 channel=4
					0, 0, -48, -21, -17, -30, 0, 9, 44,
					-- layer=2 filter=97 channel=5
					-33, -14, -34, 0, -53, -31, 12, 8, 37,
					-- layer=2 filter=97 channel=6
					9, -21, -6, -12, 24, -10, 2, -13, -35,
					-- layer=2 filter=97 channel=7
					25, 0, 18, -15, -32, -8, 4, 54, 4,
					-- layer=2 filter=97 channel=8
					33, 9, -6, 92, 72, 9, 54, 62, 36,
					-- layer=2 filter=97 channel=9
					-12, -1, 65, 27, -21, 11, 24, 43, 39,
					-- layer=2 filter=97 channel=10
					-21, -25, 8, 20, 11, -34, -1, 8, -5,
					-- layer=2 filter=97 channel=11
					-6, -13, -22, -3, -5, 0, 22, 29, -11,
					-- layer=2 filter=97 channel=12
					33, -25, -15, -14, -54, -43, 0, -18, -24,
					-- layer=2 filter=97 channel=13
					-24, -37, 11, -41, 14, -38, -74, 11, 26,
					-- layer=2 filter=97 channel=14
					7, -5, -20, -4, 29, -4, -27, -13, -19,
					-- layer=2 filter=97 channel=15
					0, -2, 0, 2, 18, -2, 19, 30, -8,
					-- layer=2 filter=97 channel=16
					11, -12, -13, -10, 5, 5, -10, -13, 6,
					-- layer=2 filter=97 channel=17
					10, 32, -7, 15, -2, 26, -25, -13, -2,
					-- layer=2 filter=97 channel=18
					15, 13, 17, 47, 4, 58, -22, -24, -17,
					-- layer=2 filter=97 channel=19
					23, 1, -14, 34, -11, -56, 35, -7, 4,
					-- layer=2 filter=97 channel=20
					44, -20, -42, 0, -30, -18, 49, 45, 15,
					-- layer=2 filter=97 channel=21
					2, -15, -7, 7, 29, 0, -7, 30, -4,
					-- layer=2 filter=97 channel=22
					16, -6, -16, 18, 25, -4, -4, -31, -15,
					-- layer=2 filter=97 channel=23
					0, -11, 17, 8, 8, -6, 10, 27, -22,
					-- layer=2 filter=97 channel=24
					21, -4, 2, -28, -39, -2, -6, -31, 15,
					-- layer=2 filter=97 channel=25
					52, 21, 67, 22, -19, 25, 25, 38, 70,
					-- layer=2 filter=97 channel=26
					7, 4, -10, -8, 11, -3, 13, -6, 6,
					-- layer=2 filter=97 channel=27
					-13, -5, -11, -2, 8, 14, 0, 12, -2,
					-- layer=2 filter=97 channel=28
					-10, 17, -4, 9, -5, 8, -18, 5, 19,
					-- layer=2 filter=97 channel=29
					2, -24, -61, 23, 8, -16, 4, 12, -5,
					-- layer=2 filter=97 channel=30
					11, -32, 2, 17, -46, 4, 5, -15, -16,
					-- layer=2 filter=97 channel=31
					-9, 0, -3, 33, 19, 2, 8, 30, 50,
					-- layer=2 filter=97 channel=32
					8, 11, 10, 15, 34, -5, -32, -17, 8,
					-- layer=2 filter=97 channel=33
					19, -2, 1, 17, 22, -4, 27, 21, 23,
					-- layer=2 filter=97 channel=34
					19, -11, 15, 10, 7, -15, 16, 4, -7,
					-- layer=2 filter=97 channel=35
					-13, -25, -8, 37, 17, -41, 34, -11, 13,
					-- layer=2 filter=97 channel=36
					31, 22, -27, -18, -33, -36, 6, -19, -36,
					-- layer=2 filter=97 channel=37
					10, -29, 14, 28, 36, -5, 29, 22, 12,
					-- layer=2 filter=97 channel=38
					-21, -18, -5, 7, -7, -21, -10, 8, 35,
					-- layer=2 filter=97 channel=39
					-26, 28, -19, 24, 8, 19, -1, -33, -32,
					-- layer=2 filter=97 channel=40
					12, -31, -48, 4, -4, -15, -3, -5, 12,
					-- layer=2 filter=97 channel=41
					3, -4, -8, 1, 24, -5, 20, 29, -5,
					-- layer=2 filter=97 channel=42
					-14, -26, -15, 17, 3, 6, 6, -26, -23,
					-- layer=2 filter=97 channel=43
					15, -1, -31, -6, -31, -26, 26, 18, -16,
					-- layer=2 filter=97 channel=44
					-27, 36, 2, -20, 17, -1, 8, 23, 10,
					-- layer=2 filter=97 channel=45
					26, -1, 0, -11, -15, -3, 29, -20, -16,
					-- layer=2 filter=97 channel=46
					-36, -24, 12, -29, -91, 22, 58, -26, -9,
					-- layer=2 filter=97 channel=47
					-15, 5, -46, 17, 19, 15, 46, 55, -25,
					-- layer=2 filter=97 channel=48
					14, -46, -21, 4, -14, -45, 0, -22, -44,
					-- layer=2 filter=97 channel=49
					18, -11, 9, -20, -51, -74, 11, -18, -23,
					-- layer=2 filter=97 channel=50
					7, 7, 9, 19, 21, -2, -6, -24, -11,
					-- layer=2 filter=97 channel=51
					34, -16, 48, -59, -23, -20, 18, 7, 4,
					-- layer=2 filter=97 channel=52
					2, 27, 21, -4, 24, -12, -14, 38, 5,
					-- layer=2 filter=97 channel=53
					-7, -6, -16, -4, 4, -12, 38, 23, 4,
					-- layer=2 filter=97 channel=54
					16, -3, -15, -29, -3, -21, -9, 10, 6,
					-- layer=2 filter=97 channel=55
					24, 11, 36, 26, 9, -1, 0, 28, 4,
					-- layer=2 filter=97 channel=56
					4, 3, 19, 24, -17, 7, 16, -42, -3,
					-- layer=2 filter=97 channel=57
					6, 20, 0, -4, 24, -5, -5, 25, -16,
					-- layer=2 filter=97 channel=58
					-1, -31, -44, -80, -115, -30, -21, -77, -6,
					-- layer=2 filter=97 channel=59
					8, -18, -24, 36, 3, 20, 28, -14, -14,
					-- layer=2 filter=97 channel=60
					-19, -69, -15, -34, -68, 46, 10, -52, 50,
					-- layer=2 filter=97 channel=61
					2, 7, 14, -6, -25, -7, -49, -60, 8,
					-- layer=2 filter=97 channel=62
					-10, 2, 31, -21, 22, 68, -1, 51, 26,
					-- layer=2 filter=97 channel=63
					7, -16, -12, -3, 2, 0, -17, -28, -3,
					-- layer=2 filter=98 channel=0
					2, 15, 21, 48, -43, -13, 19, 36, -21,
					-- layer=2 filter=98 channel=1
					8, -27, -5, 26, -21, 6, -1, -9, 14,
					-- layer=2 filter=98 channel=2
					22, -34, -9, -16, 28, 13, -16, -18, 22,
					-- layer=2 filter=98 channel=3
					13, -63, -24, 9, -7, 15, -9, -46, -17,
					-- layer=2 filter=98 channel=4
					53, 17, -26, 18, 14, 2, -8, -17, -43,
					-- layer=2 filter=98 channel=5
					29, 14, 50, -32, 32, 57, -33, 7, 24,
					-- layer=2 filter=98 channel=6
					-55, 13, -2, -29, 1, -19, -53, 12, -10,
					-- layer=2 filter=98 channel=7
					-50, -31, -43, 0, -3, 18, -6, 22, -53,
					-- layer=2 filter=98 channel=8
					4, 13, -6, -16, -3, 30, 3, 5, 15,
					-- layer=2 filter=98 channel=9
					25, -3, 25, 47, 8, -87, -1, -13, 14,
					-- layer=2 filter=98 channel=10
					0, -18, 20, 3, -8, 2, 33, 17, -4,
					-- layer=2 filter=98 channel=11
					16, 1, -18, -14, 8, -21, -52, -31, 10,
					-- layer=2 filter=98 channel=12
					5, -12, -9, 20, 26, 24, -33, -36, 10,
					-- layer=2 filter=98 channel=13
					-93, -50, 34, -43, -24, 16, 22, -38, 6,
					-- layer=2 filter=98 channel=14
					80, -10, -78, 28, -9, -108, 8, -11, -3,
					-- layer=2 filter=98 channel=15
					-68, 1, 39, 21, -75, -22, 37, 6, -22,
					-- layer=2 filter=98 channel=16
					-9, -1, -50, -21, 12, -17, -67, 0, 0,
					-- layer=2 filter=98 channel=17
					24, -6, 14, -6, -25, -13, -45, -15, 25,
					-- layer=2 filter=98 channel=18
					-26, 7, 52, 1, 7, 1, 9, -1, -29,
					-- layer=2 filter=98 channel=19
					13, 26, -33, -15, 25, 7, -10, -24, -14,
					-- layer=2 filter=98 channel=20
					14, -7, -23, -6, 27, 23, -28, -39, -19,
					-- layer=2 filter=98 channel=21
					-63, -27, 11, -5, -57, 42, 32, 12, -25,
					-- layer=2 filter=98 channel=22
					60, 9, -25, 58, 21, -2, 18, -28, -39,
					-- layer=2 filter=98 channel=23
					-24, -13, -13, -84, -22, -11, -10, -3, 9,
					-- layer=2 filter=98 channel=24
					-8, -14, -22, -17, -7, -11, -43, -8, -8,
					-- layer=2 filter=98 channel=25
					-41, -17, 7, -12, -18, -41, 41, 50, 25,
					-- layer=2 filter=98 channel=26
					2, 3, -3, 3, 1, 3, 7, -5, 13,
					-- layer=2 filter=98 channel=27
					13, 6, 0, -13, -8, -2, -9, 0, 1,
					-- layer=2 filter=98 channel=28
					17, -14, 21, 2, 8, 27, 13, 22, -21,
					-- layer=2 filter=98 channel=29
					-7, 2, 15, -4, 16, 30, -40, -38, 0,
					-- layer=2 filter=98 channel=30
					16, -45, -46, -2, -27, 4, -8, -55, 16,
					-- layer=2 filter=98 channel=31
					36, -52, -32, 24, 24, 0, 4, -8, -32,
					-- layer=2 filter=98 channel=32
					-11, -36, 42, -26, -57, 42, -60, 3, 13,
					-- layer=2 filter=98 channel=33
					-98, 0, 47, -26, 8, 47, 50, 5, -8,
					-- layer=2 filter=98 channel=34
					-10, 4, 13, 32, -66, 9, 29, 29, -32,
					-- layer=2 filter=98 channel=35
					43, -21, 17, 24, 17, 42, -21, -4, 35,
					-- layer=2 filter=98 channel=36
					37, 5, -5, 25, -12, 0, -19, -16, -12,
					-- layer=2 filter=98 channel=37
					-14, -19, 3, 33, -25, 20, 49, 12, -40,
					-- layer=2 filter=98 channel=38
					33, -17, 1, 33, 0, -44, 52, -34, 0,
					-- layer=2 filter=98 channel=39
					5, -1, 3, -14, -24, -54, 10, 5, -24,
					-- layer=2 filter=98 channel=40
					59, -50, -41, 24, 13, -15, 15, -45, -41,
					-- layer=2 filter=98 channel=41
					-37, -7, -15, -14, -35, 9, 21, 24, -16,
					-- layer=2 filter=98 channel=42
					-26, -37, 4, 1, 14, 19, -51, -30, -12,
					-- layer=2 filter=98 channel=43
					-33, 29, 13, -37, 24, -9, -56, -3, 13,
					-- layer=2 filter=98 channel=44
					37, 38, 0, 25, 25, -16, -7, -15, 5,
					-- layer=2 filter=98 channel=45
					-56, -30, -26, -24, -16, 44, -49, -30, -93,
					-- layer=2 filter=98 channel=46
					-21, -38, -19, 27, -27, -91, -30, -32, 39,
					-- layer=2 filter=98 channel=47
					25, -8, -14, 6, 12, -9, 14, -3, -40,
					-- layer=2 filter=98 channel=48
					13, -38, -24, -13, 11, 21, -10, -8, -19,
					-- layer=2 filter=98 channel=49
					-20, -39, -13, 50, 38, -66, 48, 55, 4,
					-- layer=2 filter=98 channel=50
					-87, -53, 46, 51, -37, 48, 44, 17, -41,
					-- layer=2 filter=98 channel=51
					57, -49, 30, 49, -24, -57, 39, 12, 14,
					-- layer=2 filter=98 channel=52
					39, -34, -9, 35, -11, -12, -9, -5, 4,
					-- layer=2 filter=98 channel=53
					-44, -4, -7, 15, -39, 20, 53, 25, -27,
					-- layer=2 filter=98 channel=54
					34, 41, -12, 19, 14, -11, -79, -22, 1,
					-- layer=2 filter=98 channel=55
					-57, -39, -6, -45, -19, -42, -46, -48, 0,
					-- layer=2 filter=98 channel=56
					22, -20, -23, 28, -22, -1, 6, -25, -11,
					-- layer=2 filter=98 channel=57
					-53, 2, 69, -97, -34, 12, -21, -1, 15,
					-- layer=2 filter=98 channel=58
					-25, -28, -44, -52, 14, 17, -63, -15, -15,
					-- layer=2 filter=98 channel=59
					-12, -30, 7, 44, -3, -16, -19, 10, -9,
					-- layer=2 filter=98 channel=60
					-45, -107, 86, -9, -58, -13, 0, -7, 85,
					-- layer=2 filter=98 channel=61
					33, -4, 4, -10, -5, -51, 6, 47, -17,
					-- layer=2 filter=98 channel=62
					3, -4, 0, 21, 18, -17, 81, 14, 54,
					-- layer=2 filter=98 channel=63
					37, -89, -3, 13, -9, 30, -14, -31, -49,
					-- layer=2 filter=99 channel=0
					5, -9, -14, -38, -2, -28, 35, -1, -6,
					-- layer=2 filter=99 channel=1
					30, -96, -71, -15, -53, 0, -6, 1, -44,
					-- layer=2 filter=99 channel=2
					30, 18, 19, 17, -8, 21, 17, 5, -15,
					-- layer=2 filter=99 channel=3
					-79, -68, -24, -83, -29, -24, -15, -8, -10,
					-- layer=2 filter=99 channel=4
					17, -13, 29, 27, 20, 12, -9, 4, -16,
					-- layer=2 filter=99 channel=5
					2, -13, -3, -12, -86, -7, 22, -37, -40,
					-- layer=2 filter=99 channel=6
					-27, -44, -8, 13, -1, 4, -16, 0, -17,
					-- layer=2 filter=99 channel=7
					2, 35, 13, 28, 37, 27, 17, -33, 57,
					-- layer=2 filter=99 channel=8
					22, 56, 27, -32, -21, -26, 2, -19, 2,
					-- layer=2 filter=99 channel=9
					-7, -73, -50, -56, -29, -89, -8, -25, -29,
					-- layer=2 filter=99 channel=10
					31, 50, 39, -2, 24, 18, -5, 10, 14,
					-- layer=2 filter=99 channel=11
					26, 17, 18, -6, 21, 15, -10, -15, -5,
					-- layer=2 filter=99 channel=12
					17, 33, 3, 9, 9, 0, -4, 1, 4,
					-- layer=2 filter=99 channel=13
					38, 29, -32, 16, -3, -9, 26, -10, -39,
					-- layer=2 filter=99 channel=14
					-35, -53, -42, -38, 4, 16, -15, 10, -4,
					-- layer=2 filter=99 channel=15
					35, 30, 6, 12, 37, 43, -24, -23, 46,
					-- layer=2 filter=99 channel=16
					-42, 34, 17, -18, 26, -10, 12, 34, -3,
					-- layer=2 filter=99 channel=17
					-7, -7, -5, 0, 6, 7, -21, 35, 17,
					-- layer=2 filter=99 channel=18
					-25, -28, -43, 19, 0, 34, -3, 8, 7,
					-- layer=2 filter=99 channel=19
					2, 61, 28, -19, 5, 30, -21, -20, -29,
					-- layer=2 filter=99 channel=20
					-22, 19, 9, 25, 15, 11, -19, 14, 7,
					-- layer=2 filter=99 channel=21
					-29, -15, -9, 1, 13, 10, 28, 11, 30,
					-- layer=2 filter=99 channel=22
					-44, -70, -48, -63, -46, -32, 3, 0, -1,
					-- layer=2 filter=99 channel=23
					-7, -22, 0, 9, 28, 49, 1, 25, 14,
					-- layer=2 filter=99 channel=24
					1, 18, -9, 0, 12, -7, -1, 5, 5,
					-- layer=2 filter=99 channel=25
					21, 24, 30, 41, 41, 30, -15, -1, 15,
					-- layer=2 filter=99 channel=26
					4, 2, 13, -21, -5, 1, 0, -1, -4,
					-- layer=2 filter=99 channel=27
					1, 1, -9, -14, -9, -4, -12, 2, 1,
					-- layer=2 filter=99 channel=28
					6, 21, -1, -11, 12, 0, 20, -15, -8,
					-- layer=2 filter=99 channel=29
					10, 0, -3, -3, 13, 7, 3, 7, 0,
					-- layer=2 filter=99 channel=30
					-81, -18, -31, -60, -19, -3, -30, -15, -5,
					-- layer=2 filter=99 channel=31
					14, -3, -9, -9, 17, -28, -11, 30, -15,
					-- layer=2 filter=99 channel=32
					-54, 5, -10, -16, -36, -35, 21, -17, -25,
					-- layer=2 filter=99 channel=33
					0, 4, 20, 8, -1, 20, -1, -3, 18,
					-- layer=2 filter=99 channel=34
					3, -7, 7, 0, 26, 30, 10, -13, 39,
					-- layer=2 filter=99 channel=35
					46, -80, -30, -11, -3, -19, 13, 66, 4,
					-- layer=2 filter=99 channel=36
					-19, 31, 13, -23, -8, -1, 0, -8, 13,
					-- layer=2 filter=99 channel=37
					8, 4, 15, 11, 41, 45, 3, 7, 61,
					-- layer=2 filter=99 channel=38
					37, -107, -52, -47, -71, -44, -28, -18, -50,
					-- layer=2 filter=99 channel=39
					20, -44, -8, -21, -25, -9, -5, -37, -27,
					-- layer=2 filter=99 channel=40
					19, -68, -3, -27, -9, -12, -4, -27, 8,
					-- layer=2 filter=99 channel=41
					-57, -13, 14, 41, 39, 48, -7, 4, -15,
					-- layer=2 filter=99 channel=42
					9, 17, -1, -11, -33, 7, 33, 5, -35,
					-- layer=2 filter=99 channel=43
					-14, 42, -5, -4, 12, 10, 12, 17, 10,
					-- layer=2 filter=99 channel=44
					24, 32, 18, 31, 11, 21, -38, -18, -5,
					-- layer=2 filter=99 channel=45
					-57, -8, -25, -7, 36, -2, -12, -3, -9,
					-- layer=2 filter=99 channel=46
					24, -95, -39, -11, -68, -52, 14, 8, 13,
					-- layer=2 filter=99 channel=47
					-35, -1, -33, -1, 30, 7, -41, -21, -16,
					-- layer=2 filter=99 channel=48
					2, 10, 11, 30, -9, 14, 4, 4, 21,
					-- layer=2 filter=99 channel=49
					20, -25, -54, -32, -33, -76, 0, -48, -34,
					-- layer=2 filter=99 channel=50
					-61, -40, 28, 8, -19, 13, -13, -10, 9,
					-- layer=2 filter=99 channel=51
					54, -7, 43, -19, -48, -23, 8, 58, -35,
					-- layer=2 filter=99 channel=52
					14, 15, 35, -1, 25, 31, -22, 4, 25,
					-- layer=2 filter=99 channel=53
					-5, -6, 7, -2, 25, -19, 11, -9, 24,
					-- layer=2 filter=99 channel=54
					-32, 37, 19, 0, 33, 19, -12, 36, -1,
					-- layer=2 filter=99 channel=55
					4, 19, 50, 26, 33, 29, -12, 12, 5,
					-- layer=2 filter=99 channel=56
					-13, -44, 15, -9, -33, -25, 3, 9, -13,
					-- layer=2 filter=99 channel=57
					-17, 29, 36, -11, 18, 52, -31, -4, -6,
					-- layer=2 filter=99 channel=58
					37, -68, -19, 57, -67, 46, 69, 34, -12,
					-- layer=2 filter=99 channel=59
					-33, -44, -18, -13, 0, 1, -7, 17, 11,
					-- layer=2 filter=99 channel=60
					-14, 1, -18, 25, 61, -17, 1, 79, 11,
					-- layer=2 filter=99 channel=61
					2, -42, -61, 30, -32, -11, 60, 19, -27,
					-- layer=2 filter=99 channel=62
					-4, 8, -35, -28, 16, -60, 29, -30, -9,
					-- layer=2 filter=99 channel=63
					-107, -75, -39, -41, -71, -29, -37, 2, -40,
					-- layer=2 filter=100 channel=0
					17, -12, -51, 13, -24, 0, -8, -8, -19,
					-- layer=2 filter=100 channel=1
					22, 3, -16, -51, -6, 27, -54, -22, -36,
					-- layer=2 filter=100 channel=2
					19, 19, 16, 12, 2, 19, -19, -16, 28,
					-- layer=2 filter=100 channel=3
					-21, -35, -20, -25, 9, 5, -24, -51, -3,
					-- layer=2 filter=100 channel=4
					15, 7, 1, -8, -18, -11, 18, 2, 15,
					-- layer=2 filter=100 channel=5
					12, 78, 29, 26, 42, -18, 0, -27, -78,
					-- layer=2 filter=100 channel=6
					-11, -30, 2, 34, 13, -2, -29, -7, -48,
					-- layer=2 filter=100 channel=7
					50, -6, -43, 55, 7, 19, -2, 2, -29,
					-- layer=2 filter=100 channel=8
					-46, -44, 2, -28, -81, -21, -27, -48, -27,
					-- layer=2 filter=100 channel=9
					9, 13, -30, -22, -28, -24, -55, 4, -24,
					-- layer=2 filter=100 channel=10
					24, 33, -11, 25, -5, 10, 16, 37, 25,
					-- layer=2 filter=100 channel=11
					-11, -8, -12, 21, -34, -15, 19, -22, 19,
					-- layer=2 filter=100 channel=12
					1, 8, -5, 8, 14, -5, 6, 20, 31,
					-- layer=2 filter=100 channel=13
					-33, 14, 7, -5, 28, -3, 17, -16, -46,
					-- layer=2 filter=100 channel=14
					-35, -22, -7, -4, -9, 23, 11, 5, 0,
					-- layer=2 filter=100 channel=15
					14, -4, -49, 46, 7, 12, 15, 7, -18,
					-- layer=2 filter=100 channel=16
					6, 11, 20, 6, -26, -12, 5, -16, -13,
					-- layer=2 filter=100 channel=17
					-12, 23, 36, 9, 3, 13, 40, 33, 46,
					-- layer=2 filter=100 channel=18
					32, 15, 27, 62, -44, -19, 22, -2, -53,
					-- layer=2 filter=100 channel=19
					6, 5, -8, -11, -29, -7, -9, -34, -11,
					-- layer=2 filter=100 channel=20
					-24, -11, -6, 17, -10, 7, -11, -9, -8,
					-- layer=2 filter=100 channel=21
					-37, -65, -32, -38, -45, -5, 3, -8, -74,
					-- layer=2 filter=100 channel=22
					-11, -36, 14, -10, -9, -31, 42, 12, 25,
					-- layer=2 filter=100 channel=23
					-2, -9, 17, 43, 27, 26, -16, -30, -20,
					-- layer=2 filter=100 channel=24
					-8, 6, 22, -14, 13, 11, 3, -9, 4,
					-- layer=2 filter=100 channel=25
					47, 68, 8, 24, 59, 40, 15, 55, -12,
					-- layer=2 filter=100 channel=26
					0, -13, 13, 5, 1, -1, 6, 6, -1,
					-- layer=2 filter=100 channel=27
					1, -16, 9, 13, 5, 1, 12, -9, -6,
					-- layer=2 filter=100 channel=28
					-3, 0, 3, 1, 0, -6, 12, 0, -7,
					-- layer=2 filter=100 channel=29
					0, -31, -4, -1, 5, 12, 24, 23, 12,
					-- layer=2 filter=100 channel=30
					-19, -46, -8, -6, -9, -47, -9, -28, -8,
					-- layer=2 filter=100 channel=31
					-29, 22, 0, 7, -7, -10, -8, 15, 14,
					-- layer=2 filter=100 channel=32
					-24, -44, 13, -1, -30, -27, -29, -14, -19,
					-- layer=2 filter=100 channel=33
					-3, -12, 18, 61, -4, 13, -22, -29, -36,
					-- layer=2 filter=100 channel=34
					19, -4, -31, 29, 15, 14, 2, 5, 14,
					-- layer=2 filter=100 channel=35
					-15, 35, 41, -27, 26, 58, 7, 8, 17,
					-- layer=2 filter=100 channel=36
					-9, 0, -3, -17, 16, -3, 12, -2, 37,
					-- layer=2 filter=100 channel=37
					36, 6, -7, 17, 11, 27, 3, 20, 13,
					-- layer=2 filter=100 channel=38
					20, 32, -11, -47, -18, -41, -28, -40, -20,
					-- layer=2 filter=100 channel=39
					5, 12, -21, 15, 19, -10, -21, -22, -12,
					-- layer=2 filter=100 channel=40
					14, 12, 15, -8, 7, -31, -9, -22, -4,
					-- layer=2 filter=100 channel=41
					2, -22, -8, 42, -7, 53, -20, -28, -36,
					-- layer=2 filter=100 channel=42
					-4, -11, 42, 20, 0, 32, -26, 19, 3,
					-- layer=2 filter=100 channel=43
					-10, -19, -15, 8, -35, -29, -12, -14, -24,
					-- layer=2 filter=100 channel=44
					39, 23, 5, 32, 6, 10, 32, -12, -1,
					-- layer=2 filter=100 channel=45
					-26, -67, -43, 35, -20, -11, -14, -37, -42,
					-- layer=2 filter=100 channel=46
					25, -5, 2, 44, 5, 3, -12, 47, 32,
					-- layer=2 filter=100 channel=47
					4, -2, 5, 31, 7, -5, 29, 3, 6,
					-- layer=2 filter=100 channel=48
					11, -13, 21, 19, 0, 0, 5, 19, 20,
					-- layer=2 filter=100 channel=49
					33, 24, -45, 5, -27, -33, -54, -86, -22,
					-- layer=2 filter=100 channel=50
					-33, -52, -23, -13, -51, -11, -50, -27, -86,
					-- layer=2 filter=100 channel=51
					24, 4, 7, -10, -3, -58, -5, -49, -15,
					-- layer=2 filter=100 channel=52
					0, 9, -4, 21, 6, 6, -16, 20, 30,
					-- layer=2 filter=100 channel=53
					18, -11, -17, 15, -13, -16, 8, -33, -20,
					-- layer=2 filter=100 channel=54
					-11, 8, -1, 28, -12, 9, -13, 9, -4,
					-- layer=2 filter=100 channel=55
					9, -17, -31, 7, 2, 18, -24, 1, -27,
					-- layer=2 filter=100 channel=56
					23, 12, 0, -10, -7, 30, -6, -8, 18,
					-- layer=2 filter=100 channel=57
					-41, -28, -9, -8, -19, -16, -16, -29, -44,
					-- layer=2 filter=100 channel=58
					23, -19, -9, 46, 40, -32, 18, 11, -22,
					-- layer=2 filter=100 channel=59
					17, -17, -19, -19, -44, -9, -19, -3, -35,
					-- layer=2 filter=100 channel=60
					-22, 13, 2, 15, 4, -2, 12, -8, -36,
					-- layer=2 filter=100 channel=61
					-15, -51, -21, -1, -14, -59, 9, -33, -16,
					-- layer=2 filter=100 channel=62
					-13, 46, 9, -27, 31, -67, -13, -27, -61,
					-- layer=2 filter=100 channel=63
					-69, -41, -27, -9, 1, -42, -20, -63, -50,
					-- layer=2 filter=101 channel=0
					17, 21, -2, 4, 16, -12, -24, 3, 29,
					-- layer=2 filter=101 channel=1
					-1, -9, 14, -29, -13, 55, -14, 0, -1,
					-- layer=2 filter=101 channel=2
					6, 2, 27, 4, 8, 16, 20, 11, 20,
					-- layer=2 filter=101 channel=3
					-9, -40, -37, -12, -71, -20, 9, -18, -32,
					-- layer=2 filter=101 channel=4
					7, -13, 18, 22, -16, 32, 9, -20, -2,
					-- layer=2 filter=101 channel=5
					-17, 7, 27, 12, 13, 22, -28, 0, 1,
					-- layer=2 filter=101 channel=6
					34, -1, -71, 41, 8, -35, -63, -36, -62,
					-- layer=2 filter=101 channel=7
					-20, -49, -14, -29, 38, 37, -2, -8, 4,
					-- layer=2 filter=101 channel=8
					15, -24, 14, -1, -26, -21, 9, -47, -6,
					-- layer=2 filter=101 channel=9
					-9, 43, -26, -19, -9, 19, -4, 0, -13,
					-- layer=2 filter=101 channel=10
					57, 28, 21, 30, 12, 10, 16, 29, 5,
					-- layer=2 filter=101 channel=11
					0, -10, -8, -16, 15, -13, -7, 29, 18,
					-- layer=2 filter=101 channel=12
					-17, -10, 36, 26, 8, 41, 7, 6, 40,
					-- layer=2 filter=101 channel=13
					38, -46, 6, 41, -3, 6, -5, 29, 47,
					-- layer=2 filter=101 channel=14
					-77, -60, 19, -12, -5, 5, -17, -6, -36,
					-- layer=2 filter=101 channel=15
					-40, -20, 3, -4, 19, 39, -6, -1, -4,
					-- layer=2 filter=101 channel=16
					-41, -11, 2, 15, -51, -38, -12, -12, -65,
					-- layer=2 filter=101 channel=17
					-42, 16, -1, 25, -27, 1, -14, -22, 26,
					-- layer=2 filter=101 channel=18
					-18, 6, -19, -2, -15, -28, -13, -15, -8,
					-- layer=2 filter=101 channel=19
					-4, -15, 52, 0, 17, -10, 1, -14, 2,
					-- layer=2 filter=101 channel=20
					-22, 14, 6, 21, -25, 0, -3, -20, 14,
					-- layer=2 filter=101 channel=21
					-30, -43, -80, -29, -18, -67, -46, -46, -55,
					-- layer=2 filter=101 channel=22
					-17, -14, 18, -40, -41, -17, 8, 4, -29,
					-- layer=2 filter=101 channel=23
					-14, 10, -4, -51, -27, -11, -45, -1, -11,
					-- layer=2 filter=101 channel=24
					-8, -6, 16, 14, -24, 6, 17, -2, 1,
					-- layer=2 filter=101 channel=25
					10, 49, -45, -6, 31, -13, 22, 36, 0,
					-- layer=2 filter=101 channel=26
					5, 0, -6, -9, 1, -7, -8, -5, 7,
					-- layer=2 filter=101 channel=27
					7, 8, -8, 4, -11, -9, -3, 7, -4,
					-- layer=2 filter=101 channel=28
					2, 21, 1, 12, 5, 5, 0, -9, -11,
					-- layer=2 filter=101 channel=29
					10, -6, -11, 48, 26, 18, 3, -19, 15,
					-- layer=2 filter=101 channel=30
					5, 14, 27, 45, 6, 17, -9, -42, -51,
					-- layer=2 filter=101 channel=31
					38, 3, 5, 35, 48, 14, 11, 35, 0,
					-- layer=2 filter=101 channel=32
					-8, -1, 10, 10, -26, -14, 5, -53, 1,
					-- layer=2 filter=101 channel=33
					-28, -1, -27, -38, -17, -28, -25, 1, -22,
					-- layer=2 filter=101 channel=34
					0, 16, 8, 14, 16, 26, -8, 15, 32,
					-- layer=2 filter=101 channel=35
					43, -21, 6, 57, 56, 25, 52, 7, 58,
					-- layer=2 filter=101 channel=36
					-3, -9, 29, 6, 3, 51, -14, -12, 14,
					-- layer=2 filter=101 channel=37
					15, -21, -39, 33, 19, 22, -6, 24, 16,
					-- layer=2 filter=101 channel=38
					3, 3, 28, 11, -48, 57, 7, -24, 47,
					-- layer=2 filter=101 channel=39
					32, 22, 7, 25, 23, 15, 3, 19, 70,
					-- layer=2 filter=101 channel=40
					1, -21, 24, 32, -55, 1, -28, -28, -29,
					-- layer=2 filter=101 channel=41
					-18, -29, -51, -8, -25, -9, -16, -10, -71,
					-- layer=2 filter=101 channel=42
					27, -6, 19, 19, -6, 6, 0, -43, 8,
					-- layer=2 filter=101 channel=43
					-84, -27, 0, -77, -54, -5, -53, -12, -34,
					-- layer=2 filter=101 channel=44
					-42, -26, 9, -27, -39, -1, -10, -5, 14,
					-- layer=2 filter=101 channel=45
					-27, 20, -18, -54, 0, 12, 4, -57, -118,
					-- layer=2 filter=101 channel=46
					0, 45, 0, -17, 18, 55, 18, 0, 18,
					-- layer=2 filter=101 channel=47
					-96, -63, -33, -116, -80, -46, -43, -76, -68,
					-- layer=2 filter=101 channel=48
					33, -5, 23, 16, -1, -1, 3, -2, 28,
					-- layer=2 filter=101 channel=49
					2, -12, -16, 8, 21, -4, 22, 11, -1,
					-- layer=2 filter=101 channel=50
					-41, -6, -42, -5, 13, 25, -37, -45, -36,
					-- layer=2 filter=101 channel=51
					22, 25, 9, -20, -67, -35, 23, -10, -29,
					-- layer=2 filter=101 channel=52
					29, -16, -15, 9, -2, 5, 24, 25, -15,
					-- layer=2 filter=101 channel=53
					2, -2, 12, 39, 32, 14, -3, 20, -24,
					-- layer=2 filter=101 channel=54
					-89, -72, -11, -97, -71, -12, -69, -2, -32,
					-- layer=2 filter=101 channel=55
					-33, -15, 2, -7, -1, -3, -3, 43, -6,
					-- layer=2 filter=101 channel=56
					38, 12, 15, 21, 1, 10, 18, 18, -10,
					-- layer=2 filter=101 channel=57
					-40, 34, -8, -17, -18, -18, -38, -10, -38,
					-- layer=2 filter=101 channel=58
					-48, 28, 26, 11, -13, 10, 38, -11, -14,
					-- layer=2 filter=101 channel=59
					-23, 14, -55, -25, -5, -11, -47, -30, -49,
					-- layer=2 filter=101 channel=60
					14, 29, 29, 50, -3, 60, 19, 17, 23,
					-- layer=2 filter=101 channel=61
					94, 76, 33, -31, -17, 64, -21, 1, -39,
					-- layer=2 filter=101 channel=62
					-42, 79, 21, -15, -8, -61, 27, 7, 15,
					-- layer=2 filter=101 channel=63
					1, -48, -23, 0, -22, 55, 67, -22, -101,
					-- layer=2 filter=102 channel=0
					-9, 26, 12, -6, 8, 12, -42, -18, 13,
					-- layer=2 filter=102 channel=1
					-27, -20, 6, 31, 36, 14, 8, 15, 17,
					-- layer=2 filter=102 channel=2
					18, -17, -14, 18, -34, -2, 26, -10, -29,
					-- layer=2 filter=102 channel=3
					18, -6, 26, -33, -59, 1, -15, 18, -10,
					-- layer=2 filter=102 channel=4
					49, 3, -14, 19, -19, -24, 44, 3, -25,
					-- layer=2 filter=102 channel=5
					24, -10, -11, -6, 22, 41, -43, -6, -12,
					-- layer=2 filter=102 channel=6
					-12, 30, 50, -31, -52, -22, 19, -34, 10,
					-- layer=2 filter=102 channel=7
					-36, 14, 13, -48, -10, -15, -16, 34, 16,
					-- layer=2 filter=102 channel=8
					36, 70, 18, -10, 54, 39, -32, -1, 10,
					-- layer=2 filter=102 channel=9
					-42, -22, 17, -8, 29, -35, 19, 36, 26,
					-- layer=2 filter=102 channel=10
					-7, 16, 41, -4, 6, 2, -8, 19, 26,
					-- layer=2 filter=102 channel=11
					-48, -19, 0, 15, -8, -27, 15, 38, 31,
					-- layer=2 filter=102 channel=12
					49, 19, 18, -17, -33, -17, 11, -17, -21,
					-- layer=2 filter=102 channel=13
					50, 23, -16, 45, 7, 0, -41, 25, 0,
					-- layer=2 filter=102 channel=14
					-44, -41, -24, -12, -25, -45, -3, 9, 28,
					-- layer=2 filter=102 channel=15
					-20, 17, 21, -23, -29, 10, -47, -42, 0,
					-- layer=2 filter=102 channel=16
					14, -11, -10, -57, -50, -35, 36, 0, -23,
					-- layer=2 filter=102 channel=17
					3, -20, -6, 7, -20, 9, -20, -18, -18,
					-- layer=2 filter=102 channel=18
					9, 4, -34, -22, -13, -10, -25, -72, -40,
					-- layer=2 filter=102 channel=19
					60, 3, -1, 7, -52, -56, 31, -39, -58,
					-- layer=2 filter=102 channel=20
					4, -6, 23, -54, -52, -8, 0, 5, 2,
					-- layer=2 filter=102 channel=21
					-16, 0, 7, -27, -1, -9, -38, -32, -48,
					-- layer=2 filter=102 channel=22
					-1, 26, 15, -17, -4, -9, -32, -39, 0,
					-- layer=2 filter=102 channel=23
					-38, 11, 41, -23, -20, 0, 1, 6, 20,
					-- layer=2 filter=102 channel=24
					4, -3, 5, 5, -6, -10, 12, -12, -16,
					-- layer=2 filter=102 channel=25
					-56, -49, 9, 43, -6, 7, 17, 25, 76,
					-- layer=2 filter=102 channel=26
					5, -2, -3, -5, 0, 0, 0, -3, 2,
					-- layer=2 filter=102 channel=27
					3, -3, 8, -3, 9, -14, -15, -9, 0,
					-- layer=2 filter=102 channel=28
					1, 4, 6, 2, 1, -14, -6, 15, 10,
					-- layer=2 filter=102 channel=29
					3, 43, 45, -69, -21, -14, -21, -30, 21,
					-- layer=2 filter=102 channel=30
					4, -29, -14, 7, -19, -20, 6, -26, -6,
					-- layer=2 filter=102 channel=31
					-9, -43, 0, 33, 34, 0, 26, 6, 7,
					-- layer=2 filter=102 channel=32
					-17, 31, -4, -21, -48, -32, 7, 8, 1,
					-- layer=2 filter=102 channel=33
					-25, 10, 44, -37, -13, 11, 0, -9, 15,
					-- layer=2 filter=102 channel=34
					0, 18, 28, -25, -6, 29, -36, -31, 14,
					-- layer=2 filter=102 channel=35
					-30, -18, -3, 6, 39, 69, -15, 23, 8,
					-- layer=2 filter=102 channel=36
					21, 0, 0, -2, -36, -22, 11, -42, -30,
					-- layer=2 filter=102 channel=37
					-13, 27, 21, -58, -2, 1, -13, -13, 17,
					-- layer=2 filter=102 channel=38
					-25, -22, -16, 42, 9, -2, 21, 5, -1,
					-- layer=2 filter=102 channel=39
					18, 4, -55, 43, 17, 32, 11, 15, 26,
					-- layer=2 filter=102 channel=40
					-2, -49, -30, 19, -3, -28, -7, -14, -4,
					-- layer=2 filter=102 channel=41
					-21, 40, 13, -33, 12, -3, -6, -3, 2,
					-- layer=2 filter=102 channel=42
					-6, -22, -12, -6, -18, -2, -23, -7, 5,
					-- layer=2 filter=102 channel=43
					34, -32, -33, -48, -93, -40, 13, -14, -3,
					-- layer=2 filter=102 channel=44
					44, 7, 22, 43, -32, -21, 63, 16, -19,
					-- layer=2 filter=102 channel=45
					-5, 6, 42, -45, -51, 1, -10, -51, -59,
					-- layer=2 filter=102 channel=46
					-34, -19, 1, 0, 30, -2, 6, 20, 48,
					-- layer=2 filter=102 channel=47
					30, -16, 33, -1, -55, -7, -31, -86, -83,
					-- layer=2 filter=102 channel=48
					10, 8, 22, 7, 12, -13, -16, -21, 8,
					-- layer=2 filter=102 channel=49
					34, 31, -39, 6, -6, -8, 48, 49, 20,
					-- layer=2 filter=102 channel=50
					-26, -7, 26, -9, -20, 8, 16, -34, -7,
					-- layer=2 filter=102 channel=51
					-31, -24, -4, -4, 24, 5, -12, 35, 23,
					-- layer=2 filter=102 channel=52
					-51, 30, 9, -20, -35, -46, 17, 28, 9,
					-- layer=2 filter=102 channel=53
					-5, 22, 29, -12, 20, 17, 0, 31, 17,
					-- layer=2 filter=102 channel=54
					17, -9, -62, -16, -78, -42, 4, 2, 6,
					-- layer=2 filter=102 channel=55
					-35, -5, -15, -28, -29, -31, 8, 26, 24,
					-- layer=2 filter=102 channel=56
					9, -17, -21, 21, 23, 12, -6, 3, 4,
					-- layer=2 filter=102 channel=57
					-11, 36, 6, -19, 5, 12, 4, 19, -7,
					-- layer=2 filter=102 channel=58
					39, 27, -4, 44, -9, 9, -62, -5, 15,
					-- layer=2 filter=102 channel=59
					10, 25, 45, -72, -46, 2, 9, 10, 15,
					-- layer=2 filter=102 channel=60
					-16, -21, -10, -1, 60, 50, -28, 16, 28,
					-- layer=2 filter=102 channel=61
					3, -4, -49, -8, -58, -18, -28, -38, -42,
					-- layer=2 filter=102 channel=62
					6, -9, -25, -40, -78, -18, -70, -23, 24,
					-- layer=2 filter=102 channel=63
					6, -25, 15, -5, 3, -1, -26, -47, -31,
					-- layer=2 filter=103 channel=0
					24, 0, -11, 5, -20, -56, -13, -29, 3,
					-- layer=2 filter=103 channel=1
					-26, -8, -22, -5, 11, 19, -25, -6, 2,
					-- layer=2 filter=103 channel=2
					-4, -10, 1, 26, 31, 21, 13, 16, -15,
					-- layer=2 filter=103 channel=3
					-5, 8, 21, -3, 9, 39, 3, -5, -6,
					-- layer=2 filter=103 channel=4
					23, 11, 1, 8, 15, -23, -16, 1, 6,
					-- layer=2 filter=103 channel=5
					-41, -44, 5, -34, -23, -30, -5, -10, -26,
					-- layer=2 filter=103 channel=6
					-7, 51, 43, -97, -33, -2, -46, -34, -1,
					-- layer=2 filter=103 channel=7
					-1, 30, -33, 6, -38, 1, 9, -2, -2,
					-- layer=2 filter=103 channel=8
					-54, -51, -21, -72, -76, -71, -78, -116, -107,
					-- layer=2 filter=103 channel=9
					-22, 17, 0, 3, -12, -18, -6, 17, 34,
					-- layer=2 filter=103 channel=10
					22, -12, 0, 43, 17, 36, -3, 0, 22,
					-- layer=2 filter=103 channel=11
					67, 21, -11, 10, -11, 2, 6, -29, 30,
					-- layer=2 filter=103 channel=12
					22, 14, -11, 22, 28, -4, 2, 0, -21,
					-- layer=2 filter=103 channel=13
					31, -11, 0, -3, -22, -3, 0, 20, 48,
					-- layer=2 filter=103 channel=14
					-13, -40, 9, -37, -45, -20, -7, -20, -32,
					-- layer=2 filter=103 channel=15
					35, 2, 10, 3, -18, 24, -15, -29, 26,
					-- layer=2 filter=103 channel=16
					-20, -17, 16, -5, 18, 13, -5, -8, -13,
					-- layer=2 filter=103 channel=17
					-29, -5, -2, -7, 2, 28, 17, 22, 8,
					-- layer=2 filter=103 channel=18
					9, -46, 9, 21, 40, 56, -49, 28, -23,
					-- layer=2 filter=103 channel=19
					-21, 1, -44, 14, 17, -4, -7, 14, -11,
					-- layer=2 filter=103 channel=20
					-3, 13, -9, -6, 0, 5, -21, -34, -10,
					-- layer=2 filter=103 channel=21
					52, 62, 18, -25, -35, 12, -17, -26, -5,
					-- layer=2 filter=103 channel=22
					-24, 11, 13, 18, -15, -2, 9, -28, -12,
					-- layer=2 filter=103 channel=23
					25, -15, 25, -18, -53, -12, -1, 11, -13,
					-- layer=2 filter=103 channel=24
					-5, -14, -8, 3, 24, 13, 12, 26, 15,
					-- layer=2 filter=103 channel=25
					-47, -19, -21, -11, -8, -16, 1, -3, 51,
					-- layer=2 filter=103 channel=26
					3, 8, -17, -7, 5, 5, -19, 5, 2,
					-- layer=2 filter=103 channel=27
					-10, -1, 3, 2, -4, -16, 0, -7, 12,
					-- layer=2 filter=103 channel=28
					-1, -22, 22, -3, 1, 1, 8, 0, 16,
					-- layer=2 filter=103 channel=29
					-13, -14, 17, -5, -13, -5, 17, 2, -25,
					-- layer=2 filter=103 channel=30
					-42, -32, -26, -20, -21, -13, 13, 16, -7,
					-- layer=2 filter=103 channel=31
					10, 7, 14, 20, -7, 21, -20, -6, 11,
					-- layer=2 filter=103 channel=32
					-34, -36, 9, -13, -25, -18, -12, -5, -24,
					-- layer=2 filter=103 channel=33
					-14, 16, 20, -54, -38, -21, -21, -18, 37,
					-- layer=2 filter=103 channel=34
					35, 21, -3, 30, 0, 7, -7, 0, 14,
					-- layer=2 filter=103 channel=35
					-3, 24, 45, 17, 37, 19, -36, 18, 5,
					-- layer=2 filter=103 channel=36
					3, 6, -10, -5, 23, -2, -4, 10, 2,
					-- layer=2 filter=103 channel=37
					16, 3, -11, 30, -62, -20, -5, -15, 48,
					-- layer=2 filter=103 channel=38
					-8, 11, -61, 25, 26, -25, 7, 13, -8,
					-- layer=2 filter=103 channel=39
					18, -13, -25, 48, -7, -18, 11, 6, -7,
					-- layer=2 filter=103 channel=40
					-16, -11, -21, 9, 37, -42, -6, -3, -2,
					-- layer=2 filter=103 channel=41
					11, 24, 19, -49, -60, -4, -22, -31, -16,
					-- layer=2 filter=103 channel=42
					-16, -8, 32, -4, 4, -8, 15, 3, -18,
					-- layer=2 filter=103 channel=43
					-1, -20, 21, 17, 2, 7, 58, -14, 12,
					-- layer=2 filter=103 channel=44
					22, 17, -19, 26, 2, 22, 8, 7, 5,
					-- layer=2 filter=103 channel=45
					8, 17, 6, -40, -100, -26, -44, -74, -35,
					-- layer=2 filter=103 channel=46
					-25, -24, -28, -8, 5, -7, -16, -14, 47,
					-- layer=2 filter=103 channel=47
					-27, 25, 1, -29, -41, 8, -23, -44, 5,
					-- layer=2 filter=103 channel=48
					3, 0, 27, 3, 16, 22, 12, 19, -19,
					-- layer=2 filter=103 channel=49
					-15, -51, -86, 2, -38, -36, 15, -19, -28,
					-- layer=2 filter=103 channel=50
					26, 1, 25, -39, -8, 12, -55, -51, 1,
					-- layer=2 filter=103 channel=51
					-61, -35, -13, -5, 24, -19, -27, -20, 0,
					-- layer=2 filter=103 channel=52
					58, 43, 10, 33, -2, 14, 12, -34, 11,
					-- layer=2 filter=103 channel=53
					0, 13, 11, -3, -75, -24, -22, -13, 11,
					-- layer=2 filter=103 channel=54
					6, -3, -9, 34, -36, -32, 54, 11, 13,
					-- layer=2 filter=103 channel=55
					43, 16, 8, -2, 8, -2, -3, -34, -21,
					-- layer=2 filter=103 channel=56
					7, -8, -5, 37, -8, 10, 13, 15, 35,
					-- layer=2 filter=103 channel=57
					12, -1, 7, -48, -17, 28, -9, 14, 51,
					-- layer=2 filter=103 channel=58
					11, -58, -22, 50, 35, -31, -38, 57, 76,
					-- layer=2 filter=103 channel=59
					16, 24, 38, 0, -12, 13, -15, -9, 26,
					-- layer=2 filter=103 channel=60
					4, -24, 3, -11, -16, 49, -56, -15, 10,
					-- layer=2 filter=103 channel=61
					-40, -10, -66, -18, 33, -10, 15, 15, -12,
					-- layer=2 filter=103 channel=62
					-2, -41, 38, -18, 4, 49, -28, -30, -50,
					-- layer=2 filter=103 channel=63
					-2, -5, 32, -54, -83, -7, -7, -29, 8,
					-- layer=2 filter=104 channel=0
					22, -36, -36, -42, -87, -22, -22, -29, -68,
					-- layer=2 filter=104 channel=1
					47, 9, 40, -56, -1, 3, 15, 15, 17,
					-- layer=2 filter=104 channel=2
					-5, -5, 8, -23, 15, 22, 20, 13, 34,
					-- layer=2 filter=104 channel=3
					-18, -17, -1, 5, -11, -27, -2, 0, -41,
					-- layer=2 filter=104 channel=4
					-8, 50, 10, -1, 2, 34, 11, -7, -6,
					-- layer=2 filter=104 channel=5
					36, -7, 1, -5, 10, -25, -17, 56, 47,
					-- layer=2 filter=104 channel=6
					16, -18, -9, 14, 22, 0, 10, 3, 29,
					-- layer=2 filter=104 channel=7
					39, -41, -73, -53, -76, -68, -57, -71, -42,
					-- layer=2 filter=104 channel=8
					-38, 5, -41, -13, -42, -55, -36, -35, -88,
					-- layer=2 filter=104 channel=9
					37, -8, 12, -31, 67, 38, -36, -6, 32,
					-- layer=2 filter=104 channel=10
					12, 0, -4, 1, 12, 21, -24, 0, 26,
					-- layer=2 filter=104 channel=11
					16, -29, -12, -65, -36, -17, -16, -31, 4,
					-- layer=2 filter=104 channel=12
					36, 23, 23, 27, 9, 31, -9, 13, 25,
					-- layer=2 filter=104 channel=13
					38, -12, 18, -13, -14, 47, 5, 17, 30,
					-- layer=2 filter=104 channel=14
					13, 2, -4, -11, -11, -3, -16, -24, 31,
					-- layer=2 filter=104 channel=15
					12, 28, 14, 12, -3, 13, -9, -18, 16,
					-- layer=2 filter=104 channel=16
					23, -8, 14, 23, -2, -33, -4, -18, -13,
					-- layer=2 filter=104 channel=17
					-6, -16, -13, -11, 5, 17, 11, -5, 1,
					-- layer=2 filter=104 channel=18
					53, 28, -28, 17, 32, 0, -22, 0, 87,
					-- layer=2 filter=104 channel=19
					21, 11, 26, 14, 7, 18, -33, -4, -1,
					-- layer=2 filter=104 channel=20
					2, 17, 9, -13, 2, 17, -15, 4, 19,
					-- layer=2 filter=104 channel=21
					-20, -25, -7, -12, 21, 20, 7, 29, 6,
					-- layer=2 filter=104 channel=22
					-7, -20, 3, -8, 5, 14, -19, -12, 0,
					-- layer=2 filter=104 channel=23
					-3, -6, 15, 7, 20, -10, 20, 23, 4,
					-- layer=2 filter=104 channel=24
					1, -4, -6, 6, 8, 7, 21, 18, 12,
					-- layer=2 filter=104 channel=25
					-6, 20, -7, -43, -51, -78, 13, -29, 11,
					-- layer=2 filter=104 channel=26
					14, 10, -7, -12, 8, 9, -14, 2, -4,
					-- layer=2 filter=104 channel=27
					-4, 5, 10, 2, -10, 4, 15, -4, -9,
					-- layer=2 filter=104 channel=28
					1, -16, -18, 8, -2, -6, 2, -5, 18,
					-- layer=2 filter=104 channel=29
					-13, 3, 11, -24, -27, -8, -17, 3, 15,
					-- layer=2 filter=104 channel=30
					0, -14, 0, -15, 19, -33, -25, -16, -6,
					-- layer=2 filter=104 channel=31
					10, 22, -12, -67, 13, -3, 31, -4, 22,
					-- layer=2 filter=104 channel=32
					-16, -4, -17, -8, 19, 0, -20, 30, -33,
					-- layer=2 filter=104 channel=33
					22, 0, 13, 2, 7, -13, 23, 12, 13,
					-- layer=2 filter=104 channel=34
					27, -2, 9, -23, -74, -20, -12, -18, -34,
					-- layer=2 filter=104 channel=35
					37, 72, 0, -32, 59, 49, 49, 36, 67,
					-- layer=2 filter=104 channel=36
					43, 11, 34, 10, 0, 9, -4, -14, -3,
					-- layer=2 filter=104 channel=37
					16, -7, -2, -6, -73, 3, -9, 12, -7,
					-- layer=2 filter=104 channel=38
					15, 9, 15, -27, -28, 9, 7, -21, 0,
					-- layer=2 filter=104 channel=39
					-10, -15, -21, -59, -76, -4, -21, -16, -40,
					-- layer=2 filter=104 channel=40
					-30, -8, 31, -52, -31, 27, -24, -7, 0,
					-- layer=2 filter=104 channel=41
					12, 22, -3, -18, -7, -31, -16, -6, -13,
					-- layer=2 filter=104 channel=42
					0, -35, 12, 9, -16, 12, 40, 50, 11,
					-- layer=2 filter=104 channel=43
					16, -5, 27, 10, -9, 4, 11, -15, -16,
					-- layer=2 filter=104 channel=44
					-19, 5, 7, 8, 7, 30, -16, -20, 0,
					-- layer=2 filter=104 channel=45
					-18, 13, 23, 8, 7, -10, -11, -13, -37,
					-- layer=2 filter=104 channel=46
					16, 31, 23, -40, 24, 38, 29, 18, 22,
					-- layer=2 filter=104 channel=47
					-18, -11, 6, -2, -25, -35, -1, -17, 1,
					-- layer=2 filter=104 channel=48
					3, 8, 9, 0, 14, 14, -7, -2, 24,
					-- layer=2 filter=104 channel=49
					-13, -52, -17, -72, -29, 26, -20, 51, -19,
					-- layer=2 filter=104 channel=50
					-24, 5, -1, -1, -14, 14, -12, -1, -29,
					-- layer=2 filter=104 channel=51
					-12, -34, 4, -27, -24, -41, -18, -70, -82,
					-- layer=2 filter=104 channel=52
					9, -27, -1, -70, 0, -23, -3, 7, 23,
					-- layer=2 filter=104 channel=53
					0, -21, -5, -41, -44, -45, -2, -19, -28,
					-- layer=2 filter=104 channel=54
					-4, 13, -9, -34, -6, 15, -49, -39, 7,
					-- layer=2 filter=104 channel=55
					-25, -67, -9, -54, -47, -59, -12, -42, -58,
					-- layer=2 filter=104 channel=56
					13, -2, 0, -31, -4, 34, 27, 31, 25,
					-- layer=2 filter=104 channel=57
					10, -10, 7, 31, 2, -2, 19, -13, 18,
					-- layer=2 filter=104 channel=58
					-113, 8, -43, -25, -92, -34, 14, 45, -16,
					-- layer=2 filter=104 channel=59
					11, -35, 23, 47, -14, -6, 2, 0, 24,
					-- layer=2 filter=104 channel=60
					58, 27, 3, 44, 48, 64, 68, 44, 18,
					-- layer=2 filter=104 channel=61
					19, -42, -8, 9, -5, -14, -27, 48, -29,
					-- layer=2 filter=104 channel=62
					-59, 1, -7, -75, -34, -67, -59, -24, -16,
					-- layer=2 filter=104 channel=63
					-24, 11, -25, 17, 0, -24, 0, -10, -81,
					-- layer=2 filter=105 channel=0
					-13, -9, -26, -31, 8, 11, 0, -22, -44,
					-- layer=2 filter=105 channel=1
					0, 27, -10, -23, -7, -7, -11, -6, -54,
					-- layer=2 filter=105 channel=2
					-8, -26, 2, 2, 0, -10, 4, 1, 42,
					-- layer=2 filter=105 channel=3
					23, -1, 20, 10, 4, 4, -35, -49, -45,
					-- layer=2 filter=105 channel=4
					-9, -10, -22, -17, 1, 22, 6, 7, 22,
					-- layer=2 filter=105 channel=5
					27, 80, 50, 10, 17, 67, 11, -8, 37,
					-- layer=2 filter=105 channel=6
					32, -22, -30, 74, -42, -79, 24, 46, -46,
					-- layer=2 filter=105 channel=7
					10, -16, -38, 12, 34, -6, 58, 21, 7,
					-- layer=2 filter=105 channel=8
					-4, -22, -21, -24, -18, -6, -23, -18, -11,
					-- layer=2 filter=105 channel=9
					-8, -15, -28, 10, -41, -12, -35, 26, -50,
					-- layer=2 filter=105 channel=10
					-7, 11, 13, 6, 5, 8, 6, 29, -5,
					-- layer=2 filter=105 channel=11
					10, 22, -9, 26, -10, -8, 4, 10, 45,
					-- layer=2 filter=105 channel=12
					10, -2, 19, 25, 30, 0, 14, 28, 49,
					-- layer=2 filter=105 channel=13
					-15, 6, 15, -3, -7, 9, 3, 25, 12,
					-- layer=2 filter=105 channel=14
					-32, -20, -31, -2, -9, -13, -25, -12, -27,
					-- layer=2 filter=105 channel=15
					-6, 0, -7, 17, 0, 34, 20, 20, 4,
					-- layer=2 filter=105 channel=16
					-21, -26, -10, 9, -6, -3, -30, -37, -41,
					-- layer=2 filter=105 channel=17
					-7, -31, -6, -15, -1, -13, -8, -19, 5,
					-- layer=2 filter=105 channel=18
					57, 71, 25, 65, -55, 41, 23, -29, 4,
					-- layer=2 filter=105 channel=19
					7, -3, 0, 8, 7, 0, 0, 6, 7,
					-- layer=2 filter=105 channel=20
					0, -3, -16, -4, 9, 10, -1, 3, 11,
					-- layer=2 filter=105 channel=21
					-18, -15, -1, -40, -43, 9, -30, -73, -43,
					-- layer=2 filter=105 channel=22
					-15, 6, 2, -13, -38, -33, -18, -18, -44,
					-- layer=2 filter=105 channel=23
					-19, -75, -28, -5, -29, -1, -4, -37, -34,
					-- layer=2 filter=105 channel=24
					16, 7, 12, 0, 30, 8, -5, 10, 1,
					-- layer=2 filter=105 channel=25
					11, -13, -16, 28, 13, 19, 18, 86, 39,
					-- layer=2 filter=105 channel=26
					-5, 8, 10, -8, -10, 4, -11, -11, -8,
					-- layer=2 filter=105 channel=27
					-7, 7, -10, 3, 1, 0, 0, -3, 3,
					-- layer=2 filter=105 channel=28
					10, 13, -6, -4, -10, -20, 0, 12, 0,
					-- layer=2 filter=105 channel=29
					12, 34, 42, 1, 13, 13, -23, 1, 18,
					-- layer=2 filter=105 channel=30
					25, -43, -4, 18, 5, 29, -15, -24, -12,
					-- layer=2 filter=105 channel=31
					-13, -7, -6, -7, 12, -8, -21, 30, 27,
					-- layer=2 filter=105 channel=32
					-20, -41, 8, -47, -44, -18, -43, -33, -60,
					-- layer=2 filter=105 channel=33
					38, 1, -10, 43, -38, 17, 46, -14, -6,
					-- layer=2 filter=105 channel=34
					24, 31, 10, -8, 0, 35, 28, 6, -4,
					-- layer=2 filter=105 channel=35
					5, 21, 33, -37, 37, 14, -27, -15, 19,
					-- layer=2 filter=105 channel=36
					-9, 21, -9, 6, 30, 10, 10, 13, 23,
					-- layer=2 filter=105 channel=37
					-29, -8, 1, 0, 10, 24, 31, 36, 17,
					-- layer=2 filter=105 channel=38
					-3, 24, -63, 7, -28, -25, 5, 6, -17,
					-- layer=2 filter=105 channel=39
					8, 28, -16, -10, -11, 31, 19, 17, 6,
					-- layer=2 filter=105 channel=40
					0, -8, -40, 7, -4, 7, 0, -4, -18,
					-- layer=2 filter=105 channel=41
					-30, -43, -13, -14, -64, -43, -11, -20, -74,
					-- layer=2 filter=105 channel=42
					-3, -12, 14, 2, -2, 5, -3, 11, 22,
					-- layer=2 filter=105 channel=43
					12, -18, 0, -14, 10, 15, -2, -59, 3,
					-- layer=2 filter=105 channel=44
					-8, 1, 4, 13, 17, -1, 32, 30, 27,
					-- layer=2 filter=105 channel=45
					11, -27, 42, 51, -35, -21, 7, -59, -68,
					-- layer=2 filter=105 channel=46
					-36, 1, -23, -3, 1, -19, -1, 33, 44,
					-- layer=2 filter=105 channel=47
					-31, -39, -36, 6, -1, -34, 3, -11, -28,
					-- layer=2 filter=105 channel=48
					23, 0, 22, 18, 3, 14, 8, 0, 30,
					-- layer=2 filter=105 channel=49
					-18, -18, -12, 25, 0, 17, -53, -53, 4,
					-- layer=2 filter=105 channel=50
					-38, -60, -9, -32, -79, 11, 18, -13, -64,
					-- layer=2 filter=105 channel=51
					29, -8, -36, 45, -24, 0, 5, -31, 12,
					-- layer=2 filter=105 channel=52
					-19, 6, 9, -2, -5, 7, 4, 11, 32,
					-- layer=2 filter=105 channel=53
					-36, -27, -29, -12, -21, -2, 45, 39, 20,
					-- layer=2 filter=105 channel=54
					-4, -29, -1, -16, -37, -3, -24, -43, 6,
					-- layer=2 filter=105 channel=55
					-50, 17, 5, 1, -40, 1, -14, -18, -26,
					-- layer=2 filter=105 channel=56
					-4, -9, 16, 2, -18, -8, -27, 17, 15,
					-- layer=2 filter=105 channel=57
					-3, 7, -5, 21, -22, -18, 11, -47, -17,
					-- layer=2 filter=105 channel=58
					0, 37, 13, -19, -3, 11, -10, -4, 18,
					-- layer=2 filter=105 channel=59
					4, -3, 23, -33, -68, -48, -56, -24, -54,
					-- layer=2 filter=105 channel=60
					-21, -13, 21, 37, 11, -3, -20, 29, -11,
					-- layer=2 filter=105 channel=61
					9, 1, -52, 40, 0, -8, 12, -28, -21,
					-- layer=2 filter=105 channel=62
					-57, -13, -51, -55, 33, -91, -30, 4, 17,
					-- layer=2 filter=105 channel=63
					-30, 4, 14, 20, -39, -38, -32, -70, -67,
					-- layer=2 filter=106 channel=0
					16, -19, 3, -17, -16, -24, -18, -1, 12,
					-- layer=2 filter=106 channel=1
					2, -3, -29, -28, 1, 28, -13, 35, -6,
					-- layer=2 filter=106 channel=2
					-31, -7, -10, 8, 7, 4, 11, -31, -7,
					-- layer=2 filter=106 channel=3
					6, 24, 14, -1, 17, 8, -15, -5, 3,
					-- layer=2 filter=106 channel=4
					13, -17, 1, -12, 0, 26, -42, 9, 5,
					-- layer=2 filter=106 channel=5
					38, 7, 27, 26, 21, 24, 34, 68, 29,
					-- layer=2 filter=106 channel=6
					-22, -45, -17, -30, -63, -108, 11, -80, -38,
					-- layer=2 filter=106 channel=7
					-26, -24, -17, 26, -23, -18, -34, -32, 14,
					-- layer=2 filter=106 channel=8
					18, -57, -27, 40, -11, -23, 75, 47, 25,
					-- layer=2 filter=106 channel=9
					-14, 3, 33, 0, -7, 36, 5, 4, 16,
					-- layer=2 filter=106 channel=10
					-23, -19, 2, 8, -18, 0, 17, -7, -27,
					-- layer=2 filter=106 channel=11
					8, 10, 16, 30, -29, -42, -41, -44, 8,
					-- layer=2 filter=106 channel=12
					-7, -26, -24, 9, -10, -30, -4, -17, -14,
					-- layer=2 filter=106 channel=13
					10, 47, 42, 50, 39, 32, -5, 61, -8,
					-- layer=2 filter=106 channel=14
					11, 17, 20, -29, -10, 4, -13, -56, -13,
					-- layer=2 filter=106 channel=15
					33, 2, 34, 15, -48, -24, 5, 0, 18,
					-- layer=2 filter=106 channel=16
					-14, 0, -9, -25, -10, -12, 3, -50, -32,
					-- layer=2 filter=106 channel=17
					14, 12, 18, 2, 17, 7, 4, -12, -5,
					-- layer=2 filter=106 channel=18
					29, 27, 10, -28, 43, -16, -2, -36, -45,
					-- layer=2 filter=106 channel=19
					2, -37, 1, -6, -22, -44, 10, -5, -2,
					-- layer=2 filter=106 channel=20
					1, -5, 7, 11, -4, 1, 18, -7, 4,
					-- layer=2 filter=106 channel=21
					6, 46, 37, -5, 0, 17, 7, 1, -15,
					-- layer=2 filter=106 channel=22
					-39, -26, 4, -38, 5, 30, -25, 9, 17,
					-- layer=2 filter=106 channel=23
					30, 21, 33, 12, -2, -12, 9, -14, 0,
					-- layer=2 filter=106 channel=24
					11, 29, 13, -2, -2, 2, -8, 18, 8,
					-- layer=2 filter=106 channel=25
					23, 40, 6, -22, 4, 22, 31, 33, -49,
					-- layer=2 filter=106 channel=26
					13, 7, 4, -1, -8, -9, 7, -10, 16,
					-- layer=2 filter=106 channel=27
					15, 3, 0, -15, -14, 5, 10, 4, -6,
					-- layer=2 filter=106 channel=28
					-14, -12, 4, -11, 2, -4, 5, -1, 10,
					-- layer=2 filter=106 channel=29
					-20, -31, -44, 0, -14, 12, 35, 5, 0,
					-- layer=2 filter=106 channel=30
					-11, 19, 12, -43, -20, 6, 4, -14, -16,
					-- layer=2 filter=106 channel=31
					-29, -30, -1, -16, 24, -9, -31, -27, -19,
					-- layer=2 filter=106 channel=32
					12, 26, 51, 29, 18, 7, -26, 2, -32,
					-- layer=2 filter=106 channel=33
					0, -16, 5, 10, -21, -21, 32, 8, 4,
					-- layer=2 filter=106 channel=34
					0, -11, 18, 1, -47, -23, -7, 16, -8,
					-- layer=2 filter=106 channel=35
					-17, 26, 47, -42, 8, 48, -40, 20, -9,
					-- layer=2 filter=106 channel=36
					-1, -23, 3, 5, -28, -6, 6, -9, 10,
					-- layer=2 filter=106 channel=37
					-22, -11, 9, -4, -50, -8, -7, 26, -7,
					-- layer=2 filter=106 channel=38
					25, -9, 21, -8, 10, 48, 13, 45, 51,
					-- layer=2 filter=106 channel=39
					13, -17, 14, -70, -16, -13, -73, -24, -33,
					-- layer=2 filter=106 channel=40
					-19, -48, -3, -15, -3, 19, -26, 24, 34,
					-- layer=2 filter=106 channel=41
					9, 0, 4, -4, -9, -20, 35, 7, 18,
					-- layer=2 filter=106 channel=42
					-14, 2, 16, -3, 15, 5, -15, 10, 3,
					-- layer=2 filter=106 channel=43
					2, 8, -11, 20, -27, -21, 10, -1, -23,
					-- layer=2 filter=106 channel=44
					0, -21, -39, -13, -25, -7, -25, -12, 4,
					-- layer=2 filter=106 channel=45
					0, 6, 6, 13, -25, -4, 15, -22, -16,
					-- layer=2 filter=106 channel=46
					1, 33, 26, -5, 39, 31, -1, -9, -20,
					-- layer=2 filter=106 channel=47
					12, -12, -11, -9, -44, -29, 7, -23, 24,
					-- layer=2 filter=106 channel=48
					-11, -21, -4, 0, 0, 7, 6, 2, -6,
					-- layer=2 filter=106 channel=49
					-7, -6, -10, 17, -2, -36, 69, 46, 25,
					-- layer=2 filter=106 channel=50
					-33, -41, 28, 33, -8, 17, 4, 31, 51,
					-- layer=2 filter=106 channel=51
					28, -2, -3, -6, -20, 54, -9, -45, 4,
					-- layer=2 filter=106 channel=52
					25, 6, -20, 43, 9, -10, 0, -20, -42,
					-- layer=2 filter=106 channel=53
					-12, 1, -20, -31, -62, -45, 23, 12, 21,
					-- layer=2 filter=106 channel=54
					0, -26, 11, 13, -25, -28, 17, -6, 9,
					-- layer=2 filter=106 channel=55
					7, -7, -36, 45, -4, -20, 17, 0, 4,
					-- layer=2 filter=106 channel=56
					-29, -16, 9, -26, 9, 39, -10, -2, -5,
					-- layer=2 filter=106 channel=57
					33, 39, 36, 10, -24, -4, 26, -10, -1,
					-- layer=2 filter=106 channel=58
					-3, 31, 33, 0, 72, 6, -57, 28, -12,
					-- layer=2 filter=106 channel=59
					-9, -37, 4, 8, 13, 20, 28, 19, 1,
					-- layer=2 filter=106 channel=60
					-52, 54, 34, 14, 19, 27, 0, 40, 36,
					-- layer=2 filter=106 channel=61
					8, -57, -65, -44, -29, -22, -1, -9, -28,
					-- layer=2 filter=106 channel=62
					29, -49, 2, 45, 45, 46, 37, 55, 31,
					-- layer=2 filter=106 channel=63
					-35, -1, 19, 5, 2, 18, -8, -8, 12,
					-- layer=2 filter=107 channel=0
					20, 20, 23, 1, 2, -10, 17, 36, 27,
					-- layer=2 filter=107 channel=1
					-32, -48, -22, -16, 0, 13, 21, 29, 10,
					-- layer=2 filter=107 channel=2
					4, -9, -49, 0, 25, 11, 29, -3, 15,
					-- layer=2 filter=107 channel=3
					12, 16, 14, -3, 12, 14, -18, -4, 26,
					-- layer=2 filter=107 channel=4
					-26, -18, -33, 0, -6, 11, 4, -26, 0,
					-- layer=2 filter=107 channel=5
					-39, -72, 10, 0, 12, 52, -3, 16, 43,
					-- layer=2 filter=107 channel=6
					2, 0, 21, 3, 2, 12, -17, 0, -32,
					-- layer=2 filter=107 channel=7
					27, 10, -51, 22, 29, 26, 44, 44, 35,
					-- layer=2 filter=107 channel=8
					-42, -94, -56, -59, -47, -56, -25, 46, 20,
					-- layer=2 filter=107 channel=9
					-21, -58, -28, 25, 22, 3, 11, 8, 62,
					-- layer=2 filter=107 channel=10
					-47, -55, -64, -17, 3, 3, -18, -34, -8,
					-- layer=2 filter=107 channel=11
					18, 43, 61, -12, -13, 13, -11, -30, -14,
					-- layer=2 filter=107 channel=12
					-20, -5, -41, -1, -12, -13, 2, 18, -2,
					-- layer=2 filter=107 channel=13
					-18, 4, -38, 13, -30, -10, 22, -8, -30,
					-- layer=2 filter=107 channel=14
					26, 13, 44, -7, -16, -1, -18, -7, -10,
					-- layer=2 filter=107 channel=15
					11, 22, 38, 10, -20, -10, -18, -17, -3,
					-- layer=2 filter=107 channel=16
					8, 3, -8, -6, 0, 9, 11, 1, -34,
					-- layer=2 filter=107 channel=17
					-1, 19, 17, 9, 8, 13, -20, -12, -11,
					-- layer=2 filter=107 channel=18
					6, 14, 32, -4, 21, 9, -62, 26, 69,
					-- layer=2 filter=107 channel=19
					-36, -74, -62, -21, 15, -21, 15, 6, -18,
					-- layer=2 filter=107 channel=20
					-27, -4, -20, -17, -5, -2, 0, 2, 22,
					-- layer=2 filter=107 channel=21
					25, 47, 47, -6, 19, 21, 6, -22, -3,
					-- layer=2 filter=107 channel=22
					-6, -7, -26, 18, 14, -40, 22, -18, -16,
					-- layer=2 filter=107 channel=23
					14, 20, 20, -6, -11, 10, -7, -30, -50,
					-- layer=2 filter=107 channel=24
					4, -12, -25, -29, 23, 10, -8, 17, 6,
					-- layer=2 filter=107 channel=25
					-51, 41, -41, -25, -50, 8, -3, 82, 13,
					-- layer=2 filter=107 channel=26
					1, -15, 3, -16, 4, 2, 9, -7, 8,
					-- layer=2 filter=107 channel=27
					-1, 10, -1, -2, 11, -12, 7, -2, 4,
					-- layer=2 filter=107 channel=28
					-2, 4, -7, 2, 6, -4, -7, 3, 4,
					-- layer=2 filter=107 channel=29
					-23, -27, -55, -6, 41, -3, 54, 60, 19,
					-- layer=2 filter=107 channel=30
					8, -13, -4, -20, 16, -39, -1, 3, -44,
					-- layer=2 filter=107 channel=31
					-16, 0, -7, -45, -27, 12, -14, -13, 31,
					-- layer=2 filter=107 channel=32
					14, 41, 16, 1, 2, 22, 11, 8, -28,
					-- layer=2 filter=107 channel=33
					2, 8, 51, 2, -2, 4, -25, -55, -37,
					-- layer=2 filter=107 channel=34
					9, -5, -8, 0, -4, -3, 14, 37, 46,
					-- layer=2 filter=107 channel=35
					-29, -36, -5, -35, 12, 17, 24, 25, 13,
					-- layer=2 filter=107 channel=36
					-21, -27, 2, 0, 15, 14, 25, 37, 24,
					-- layer=2 filter=107 channel=37
					2, -16, 0, 28, 0, 45, 25, 25, 58,
					-- layer=2 filter=107 channel=38
					-24, -69, -67, 29, -26, -4, 30, 30, 20,
					-- layer=2 filter=107 channel=39
					8, -2, -12, 16, -37, -13, 32, -35, -24,
					-- layer=2 filter=107 channel=40
					-83, -42, -90, 4, -25, -26, 10, 29, 32,
					-- layer=2 filter=107 channel=41
					15, 17, 30, -15, -5, 17, -9, -24, -43,
					-- layer=2 filter=107 channel=42
					-25, 10, -30, -10, 2, -2, 69, 1, 11,
					-- layer=2 filter=107 channel=43
					10, 22, 10, 38, 17, 35, -7, -32, -7,
					-- layer=2 filter=107 channel=44
					-19, -22, -30, -4, 18, 28, -3, 0, 3,
					-- layer=2 filter=107 channel=45
					6, -4, 31, 25, -6, 16, -8, -67, -39,
					-- layer=2 filter=107 channel=46
					20, -6, 1, 0, 26, 25, 59, 25, 27,
					-- layer=2 filter=107 channel=47
					32, 21, 35, -12, -28, -25, -16, -51, -22,
					-- layer=2 filter=107 channel=48
					-31, -39, -49, 8, 5, -4, 25, 26, 32,
					-- layer=2 filter=107 channel=49
					-61, -9, -17, 6, -47, -58, -27, -30, 0,
					-- layer=2 filter=107 channel=50
					0, 24, 43, 11, -26, 27, -6, -34, 7,
					-- layer=2 filter=107 channel=51
					-62, 6, -22, 12, 23, -35, -12, 64, 17,
					-- layer=2 filter=107 channel=52
					-6, 7, 22, -31, 19, 1, -55, -2, -2,
					-- layer=2 filter=107 channel=53
					-12, 4, 46, -43, -21, 7, -30, -28, -5,
					-- layer=2 filter=107 channel=54
					6, 30, 5, 37, 39, 45, 14, -20, -5,
					-- layer=2 filter=107 channel=55
					48, 69, 29, -10, -24, -35, 7, 23, 24,
					-- layer=2 filter=107 channel=56
					-17, -29, -34, -3, -22, -43, 24, -9, 10,
					-- layer=2 filter=107 channel=57
					2, 34, 50, 14, 30, -25, -36, -6, -15,
					-- layer=2 filter=107 channel=58
					18, 33, 0, 110, -34, -7, 21, -18, -12,
					-- layer=2 filter=107 channel=59
					1, 0, 3, 24, -12, 32, -47, -23, -60,
					-- layer=2 filter=107 channel=60
					-25, -20, -7, 13, -20, -1, 44, 39, -44,
					-- layer=2 filter=107 channel=61
					-31, -12, -50, -5, 21, -81, -3, 66, -9,
					-- layer=2 filter=107 channel=62
					-35, -59, -77, -75, -30, 12, 5, -35, -8,
					-- layer=2 filter=107 channel=63
					9, 11, 46, -1, -3, 6, -8, -22, -10,
					-- layer=2 filter=108 channel=0
					7, 4, -4, -2, -6, -1, 7, -7, -7,
					-- layer=2 filter=108 channel=1
					-16, -11, 0, 0, -3, -18, 2, -7, 3,
					-- layer=2 filter=108 channel=2
					11, 12, 8, 8, -7, 9, -5, 0, 0,
					-- layer=2 filter=108 channel=3
					-5, -3, -14, 10, 3, -9, 0, 7, -14,
					-- layer=2 filter=108 channel=4
					1, 0, 2, 5, 8, -13, -1, -9, 10,
					-- layer=2 filter=108 channel=5
					-19, 8, -9, -5, -17, -15, -1, 4, 4,
					-- layer=2 filter=108 channel=6
					-15, -17, -9, -12, 1, -3, -5, -1, -3,
					-- layer=2 filter=108 channel=7
					4, -7, -13, -19, 6, 2, 1, -6, -2,
					-- layer=2 filter=108 channel=8
					-10, -2, -9, -15, -9, -12, -6, -14, -17,
					-- layer=2 filter=108 channel=9
					5, -14, 1, -16, 5, -11, -14, 4, 12,
					-- layer=2 filter=108 channel=10
					9, -8, 10, 9, 0, -7, 0, -1, 3,
					-- layer=2 filter=108 channel=11
					0, -1, 0, -10, -8, -14, -13, -9, 0,
					-- layer=2 filter=108 channel=12
					4, -1, 1, -6, 4, 12, -12, -11, 9,
					-- layer=2 filter=108 channel=13
					-4, -2, -10, 6, -1, 0, -12, -15, -17,
					-- layer=2 filter=108 channel=14
					-5, -7, -1, -15, -6, -7, 0, 8, 5,
					-- layer=2 filter=108 channel=15
					-13, -14, -11, 4, -18, -4, -9, -10, -21,
					-- layer=2 filter=108 channel=16
					-5, -8, -2, -4, -9, -15, -6, 9, 3,
					-- layer=2 filter=108 channel=17
					-5, -16, 7, -2, -5, -12, 7, 8, 0,
					-- layer=2 filter=108 channel=18
					-10, -11, -13, -7, -5, 1, -6, -5, 9,
					-- layer=2 filter=108 channel=19
					-11, -12, -16, -1, 2, 2, -6, 5, 7,
					-- layer=2 filter=108 channel=20
					-12, -6, 3, -2, 7, 0, -15, -12, -17,
					-- layer=2 filter=108 channel=21
					-2, -12, -7, 10, -10, 7, -11, 0, 5,
					-- layer=2 filter=108 channel=22
					-11, 6, -11, -14, -16, -2, 0, 9, -12,
					-- layer=2 filter=108 channel=23
					-14, 5, -12, 3, -4, -5, -15, 3, -7,
					-- layer=2 filter=108 channel=24
					-11, -8, 4, -6, -10, -8, -9, -8, 9,
					-- layer=2 filter=108 channel=25
					5, 1, -12, -13, 4, 10, -13, 9, 2,
					-- layer=2 filter=108 channel=26
					3, 4, 0, 3, 11, -11, 7, 12, 13,
					-- layer=2 filter=108 channel=27
					3, -5, 0, 9, 10, 12, 5, 14, 10,
					-- layer=2 filter=108 channel=28
					-3, -13, 12, -2, -7, 1, -12, -3, 0,
					-- layer=2 filter=108 channel=29
					-4, -1, -9, 8, -2, -13, 0, 1, -7,
					-- layer=2 filter=108 channel=30
					-16, 11, 2, 0, 8, -7, 9, -11, 12,
					-- layer=2 filter=108 channel=31
					-10, 10, -14, 0, -9, 7, -7, -15, 7,
					-- layer=2 filter=108 channel=32
					-6, 10, -14, -2, -16, -9, 0, -5, -10,
					-- layer=2 filter=108 channel=33
					3, 6, 7, 1, -12, -12, -14, 7, 3,
					-- layer=2 filter=108 channel=34
					5, -3, 8, 2, 0, -9, -12, 3, -20,
					-- layer=2 filter=108 channel=35
					-16, 6, -20, -8, 7, -8, -4, -8, 1,
					-- layer=2 filter=108 channel=36
					-15, -12, 4, -20, -2, 7, -7, -16, -5,
					-- layer=2 filter=108 channel=37
					-9, -4, -17, -5, -13, 0, 0, -19, 7,
					-- layer=2 filter=108 channel=38
					2, -4, 9, 4, 5, 2, -3, -21, -17,
					-- layer=2 filter=108 channel=39
					-6, 8, -3, -11, -2, 8, -6, -16, 6,
					-- layer=2 filter=108 channel=40
					-8, -17, 7, 7, -9, -8, -14, -16, -13,
					-- layer=2 filter=108 channel=41
					-17, -18, -5, 2, -2, 2, -7, -3, 1,
					-- layer=2 filter=108 channel=42
					4, -9, 13, -10, 4, 0, -1, -13, -12,
					-- layer=2 filter=108 channel=43
					8, 7, -16, 8, -11, -8, -12, -2, -14,
					-- layer=2 filter=108 channel=44
					-14, 13, 13, -11, -8, -5, -10, -12, -6,
					-- layer=2 filter=108 channel=45
					11, -9, 0, -14, -13, 13, -7, -4, 7,
					-- layer=2 filter=108 channel=46
					2, 0, 0, -5, 6, 5, 8, -11, -14,
					-- layer=2 filter=108 channel=47
					3, 12, 10, 13, -17, 4, -11, -16, 0,
					-- layer=2 filter=108 channel=48
					-9, -16, 0, 1, -3, -16, -10, -3, 3,
					-- layer=2 filter=108 channel=49
					3, 0, 0, -10, 6, 0, -7, 9, -11,
					-- layer=2 filter=108 channel=50
					-6, -10, 7, 6, -16, -13, -3, 5, -17,
					-- layer=2 filter=108 channel=51
					-2, -6, -4, 4, 6, -9, -14, -6, 9,
					-- layer=2 filter=108 channel=52
					-10, -4, 3, 8, -10, -3, -10, -4, -9,
					-- layer=2 filter=108 channel=53
					4, -3, 3, -4, -5, -19, 4, 0, -4,
					-- layer=2 filter=108 channel=54
					-5, -5, 11, -7, -15, -9, -2, 11, 4,
					-- layer=2 filter=108 channel=55
					-6, -9, -12, 4, 6, 0, -5, -2, -11,
					-- layer=2 filter=108 channel=56
					-9, 11, 3, -15, -12, 1, 5, 2, -12,
					-- layer=2 filter=108 channel=57
					-4, 7, -14, -4, 7, 2, 7, -6, -12,
					-- layer=2 filter=108 channel=58
					-5, -2, -14, -3, -14, 11, 0, 6, -2,
					-- layer=2 filter=108 channel=59
					5, -11, -9, 7, -17, -16, 2, -14, -3,
					-- layer=2 filter=108 channel=60
					0, -7, 7, 0, -15, 9, 0, 3, -12,
					-- layer=2 filter=108 channel=61
					-9, 0, 4, 3, -7, -1, 3, -7, 9,
					-- layer=2 filter=108 channel=62
					12, 4, -9, 0, 2, 0, -1, 12, -8,
					-- layer=2 filter=108 channel=63
					-12, -15, -9, -14, -11, 10, 7, 2, 11,
					-- layer=2 filter=109 channel=0
					8, 7, 6, -1, 5, -14, 2, -2, -12,
					-- layer=2 filter=109 channel=1
					6, 33, 41, 7, -22, -41, 33, 6, -47,
					-- layer=2 filter=109 channel=2
					3, -1, -12, 20, -23, -6, -10, -8, 14,
					-- layer=2 filter=109 channel=3
					32, 51, 17, 15, -9, 22, -8, 3, 16,
					-- layer=2 filter=109 channel=4
					13, -20, -21, -6, 10, -13, 8, 12, 24,
					-- layer=2 filter=109 channel=5
					5, -62, -34, -59, -39, -53, -94, -46, -36,
					-- layer=2 filter=109 channel=6
					-47, -17, -5, -1, -14, 19, 1, 6, 7,
					-- layer=2 filter=109 channel=7
					-13, -17, -43, 6, 5, 32, -2, 8, 27,
					-- layer=2 filter=109 channel=8
					40, 62, 39, 15, 36, 37, -28, -18, -2,
					-- layer=2 filter=109 channel=9
					-49, -23, 7, 14, -61, 16, -19, -6, -28,
					-- layer=2 filter=109 channel=10
					12, 36, 19, 22, 13, -2, -9, -6, -19,
					-- layer=2 filter=109 channel=11
					15, 17, 6, 19, 39, -1, 11, 16, 19,
					-- layer=2 filter=109 channel=12
					6, -12, -24, -5, 2, -9, 16, 6, 35,
					-- layer=2 filter=109 channel=13
					63, -12, -34, -10, -12, -58, -64, -52, -47,
					-- layer=2 filter=109 channel=14
					-40, 3, -6, -46, -32, -11, -24, 0, 26,
					-- layer=2 filter=109 channel=15
					8, 9, 13, 11, 20, 29, -11, -13, 4,
					-- layer=2 filter=109 channel=16
					-29, 15, 27, -63, -20, -15, -11, 6, -22,
					-- layer=2 filter=109 channel=17
					-13, -12, 0, -25, -10, -5, 3, 8, 13,
					-- layer=2 filter=109 channel=18
					23, 24, -7, -66, -70, -6, -121, -8, 14,
					-- layer=2 filter=109 channel=19
					-20, -13, -26, 15, -28, 8, 11, 17, 43,
					-- layer=2 filter=109 channel=20
					-27, 1, -6, -5, -19, -9, 41, 7, 1,
					-- layer=2 filter=109 channel=21
					-26, 37, -15, -10, 16, 46, -6, 0, -3,
					-- layer=2 filter=109 channel=22
					-15, 11, 42, -47, -47, 11, 0, 5, 9,
					-- layer=2 filter=109 channel=23
					-34, 13, 12, 9, 20, 12, 29, 0, 0,
					-- layer=2 filter=109 channel=24
					14, 7, 11, 0, -5, 9, -6, 13, 11,
					-- layer=2 filter=109 channel=25
					35, 15, 16, 57, 53, 17, 26, 16, 41,
					-- layer=2 filter=109 channel=26
					-13, -6, 0, 13, 1, -5, 5, 8, 1,
					-- layer=2 filter=109 channel=27
					15, 4, -7, 3, -8, -7, 12, 10, -3,
					-- layer=2 filter=109 channel=28
					18, 3, 4, 7, 14, -3, -3, -14, -7,
					-- layer=2 filter=109 channel=29
					-1, 7, 40, -56, -54, -2, -7, -15, 22,
					-- layer=2 filter=109 channel=30
					-19, 51, 52, -3, 4, 7, 16, -1, 22,
					-- layer=2 filter=109 channel=31
					21, 15, 30, 34, 18, -29, 6, -23, 4,
					-- layer=2 filter=109 channel=32
					-1, 16, 22, -24, -51, 20, -13, 8, -24,
					-- layer=2 filter=109 channel=33
					-1, 40, 29, -13, 24, 14, 18, 7, -5,
					-- layer=2 filter=109 channel=34
					20, 37, 5, -6, 7, 27, -48, -54, -10,
					-- layer=2 filter=109 channel=35
					29, 26, 15, -14, 67, 24, 24, 17, 5,
					-- layer=2 filter=109 channel=36
					-12, -15, -19, -5, -1, -7, 2, -4, 26,
					-- layer=2 filter=109 channel=37
					12, 19, 7, 10, 27, 22, -31, -34, 6,
					-- layer=2 filter=109 channel=38
					-24, -5, 29, 13, -40, -29, -4, -23, -42,
					-- layer=2 filter=109 channel=39
					3, 11, -23, -4, -8, -16, 13, 14, -16,
					-- layer=2 filter=109 channel=40
					-33, -22, 25, -25, -51, -22, 9, -34, -12,
					-- layer=2 filter=109 channel=41
					-36, 28, -8, 16, 41, 15, 1, 24, -1,
					-- layer=2 filter=109 channel=42
					-8, -9, -4, -13, -16, 10, -14, 19, -5,
					-- layer=2 filter=109 channel=43
					-32, 14, -10, 2, -12, -4, 0, -11, 1,
					-- layer=2 filter=109 channel=44
					-6, -23, -21, 27, 27, -5, 1, 16, -7,
					-- layer=2 filter=109 channel=45
					-34, 1, -12, -55, -13, -9, -10, -22, -10,
					-- layer=2 filter=109 channel=46
					-1, -48, 30, 24, 28, 38, 10, 35, 34,
					-- layer=2 filter=109 channel=47
					-32, 1, -7, -9, 27, -10, -3, -4, -5,
					-- layer=2 filter=109 channel=48
					2, 1, -15, -19, -22, 24, -2, -11, 11,
					-- layer=2 filter=109 channel=49
					-10, -9, 1, -10, -18, -39, 21, -23, -14,
					-- layer=2 filter=109 channel=50
					-48, 32, 11, 14, 1, 42, 15, -16, -21,
					-- layer=2 filter=109 channel=51
					10, -20, -20, -2, 32, 52, 20, 7, -28,
					-- layer=2 filter=109 channel=52
					5, 22, -9, 2, 15, -13, -1, -8, 8,
					-- layer=2 filter=109 channel=53
					0, 6, -13, 36, 50, 25, 20, -13, -28,
					-- layer=2 filter=109 channel=54
					-17, 11, 14, -6, -2, -26, -3, 3, 39,
					-- layer=2 filter=109 channel=55
					15, 0, 8, 56, 32, 18, 12, 1, -11,
					-- layer=2 filter=109 channel=56
					-2, -19, 25, 12, -11, -20, 2, -9, -10,
					-- layer=2 filter=109 channel=57
					-13, 55, 17, -33, 19, 2, 12, -6, -35,
					-- layer=2 filter=109 channel=58
					19, -18, -34, 42, 40, -1, -23, 39, 34,
					-- layer=2 filter=109 channel=59
					-19, 18, 35, -38, -25, 18, -12, 10, -13,
					-- layer=2 filter=109 channel=60
					7, -2, 4, 42, 46, 65, 18, 6, 1,
					-- layer=2 filter=109 channel=61
					-5, -46, -45, -15, -75, -48, -88, -6, -51,
					-- layer=2 filter=109 channel=62
					-8, 51, 31, -3, -71, -7, 14, 48, 15,
					-- layer=2 filter=109 channel=63
					-13, -22, -47, -9, 0, 7, -22, -26, 6,
					-- layer=2 filter=110 channel=0
					0, 2, 3, 47, 23, 29, -2, -4, 54,
					-- layer=2 filter=110 channel=1
					31, -1, 56, -4, -2, 20, 59, -70, 15,
					-- layer=2 filter=110 channel=2
					11, 9, 22, -3, -16, -20, 9, -16, 5,
					-- layer=2 filter=110 channel=3
					5, 19, 14, -3, -27, -50, -50, 17, -52,
					-- layer=2 filter=110 channel=4
					17, -39, 17, 12, -25, 19, 0, -44, 14,
					-- layer=2 filter=110 channel=5
					25, -37, 15, 18, -24, -38, 22, -41, -53,
					-- layer=2 filter=110 channel=6
					23, -19, -23, -11, -46, -29, 17, -1, -13,
					-- layer=2 filter=110 channel=7
					28, 15, 20, 10, -46, 72, -25, -25, -69,
					-- layer=2 filter=110 channel=8
					43, -10, -21, 22, -24, -10, 37, -3, 40,
					-- layer=2 filter=110 channel=9
					25, -53, 59, -40, -22, 48, -17, 4, -20,
					-- layer=2 filter=110 channel=10
					-8, -14, 14, 5, -3, 10, 12, 31, 30,
					-- layer=2 filter=110 channel=11
					-39, 21, 10, 3, 37, 34, -20, 31, 6,
					-- layer=2 filter=110 channel=12
					7, 0, -13, -11, -16, -9, -6, -1, 7,
					-- layer=2 filter=110 channel=13
					-1, 17, -44, -23, 26, -54, -11, 17, -72,
					-- layer=2 filter=110 channel=14
					-37, -21, 5, -62, -39, -58, -21, -59, -15,
					-- layer=2 filter=110 channel=15
					26, 7, 18, 12, 25, 16, -59, -37, -53,
					-- layer=2 filter=110 channel=16
					-30, 15, -27, -53, 29, -23, -4, 37, 49,
					-- layer=2 filter=110 channel=17
					-28, 2, -27, -39, 0, -8, -25, 23, -11,
					-- layer=2 filter=110 channel=18
					-61, -34, -31, -53, -36, -8, -10, -61, -86,
					-- layer=2 filter=110 channel=19
					-10, 10, 7, -12, -20, -20, -48, -17, 3,
					-- layer=2 filter=110 channel=20
					11, 26, -1, -30, -14, -28, -7, 16, 0,
					-- layer=2 filter=110 channel=21
					16, 19, 10, -18, 2, -15, -44, -28, -71,
					-- layer=2 filter=110 channel=22
					5, -23, 31, -45, -36, 21, -19, -17, 49,
					-- layer=2 filter=110 channel=23
					-17, 21, 7, -11, 23, -16, 26, 0, -13,
					-- layer=2 filter=110 channel=24
					-24, 30, -15, -19, 1, -31, -19, 23, 5,
					-- layer=2 filter=110 channel=25
					-76, 9, -58, -28, 22, -88, -24, 5, 31,
					-- layer=2 filter=110 channel=26
					-10, -12, -12, -6, -18, -11, 16, 0, 0,
					-- layer=2 filter=110 channel=27
					3, 1, 4, -8, -3, -13, 9, 3, 1,
					-- layer=2 filter=110 channel=28
					-7, 1, -7, 0, 3, -12, 4, -11, -9,
					-- layer=2 filter=110 channel=29
					-20, -11, -32, -25, -23, 15, 17, 20, 29,
					-- layer=2 filter=110 channel=30
					-13, 10, 50, 3, 5, 3, 12, 41, 26,
					-- layer=2 filter=110 channel=31
					-20, -32, 25, 30, -23, 8, -19, -32, 16,
					-- layer=2 filter=110 channel=32
					-13, 34, -53, -56, 0, -71, -50, 37, -16,
					-- layer=2 filter=110 channel=33
					7, 22, 0, 1, -21, -18, 12, -37, -43,
					-- layer=2 filter=110 channel=34
					2, -14, 2, 10, 0, 19, -43, -33, 5,
					-- layer=2 filter=110 channel=35
					14, -52, -4, 42, -29, 12, 51, -94, -17,
					-- layer=2 filter=110 channel=36
					13, -2, -11, -4, -35, 0, 3, -21, -1,
					-- layer=2 filter=110 channel=37
					-10, 4, -17, 17, 11, 41, -8, 17, 16,
					-- layer=2 filter=110 channel=38
					38, -6, 55, -2, -34, 15, 16, -61, 52,
					-- layer=2 filter=110 channel=39
					15, -34, 11, 27, 18, 37, 14, -69, 15,
					-- layer=2 filter=110 channel=40
					5, -15, 52, 5, -73, 17, 24, -31, 49,
					-- layer=2 filter=110 channel=41
					-1, 19, -7, -1, -11, -30, -33, -21, -26,
					-- layer=2 filter=110 channel=42
					-2, 16, -13, -11, -12, -34, 15, 4, 9,
					-- layer=2 filter=110 channel=43
					-14, 30, -3, -50, 29, -13, -11, 34, 63,
					-- layer=2 filter=110 channel=44
					-15, -8, -7, 8, 16, 30, -29, 16, 26,
					-- layer=2 filter=110 channel=45
					5, 29, 19, -2, -35, -84, -14, -72, -55,
					-- layer=2 filter=110 channel=46
					41, -28, 32, 58, 16, 31, 37, -9, -25,
					-- layer=2 filter=110 channel=47
					-14, 20, -23, -24, -4, -26, -53, -15, -26,
					-- layer=2 filter=110 channel=48
					9, -25, 6, -6, -13, 17, 23, -27, 3,
					-- layer=2 filter=110 channel=49
					-27, -13, -28, 2, -13, -5, 14, 18, -32,
					-- layer=2 filter=110 channel=50
					38, 35, 6, 22, -37, -11, -24, 5, -89,
					-- layer=2 filter=110 channel=51
					8, -30, 8, 11, 7, 11, 8, 17, 17,
					-- layer=2 filter=110 channel=52
					-15, -15, 13, -1, -7, -18, -1, 3, -1,
					-- layer=2 filter=110 channel=53
					28, 29, 25, 50, 58, 54, -45, -16, -24,
					-- layer=2 filter=110 channel=54
					-31, 14, -14, -6, 0, -11, 20, 67, 85,
					-- layer=2 filter=110 channel=55
					-8, -6, 0, -39, -27, -43, -10, 7, 18,
					-- layer=2 filter=110 channel=56
					22, -12, 25, 9, -26, 29, 14, -15, 8,
					-- layer=2 filter=110 channel=57
					-13, 20, 18, 0, 28, 1, 38, 22, -10,
					-- layer=2 filter=110 channel=58
					29, 4, 24, 50, 8, 2, 22, -2, -24,
					-- layer=2 filter=110 channel=59
					10, -2, 32, -68, -26, 33, -16, 35, 14,
					-- layer=2 filter=110 channel=60
					16, 31, 33, 10, 43, 5, -14, 44, -34,
					-- layer=2 filter=110 channel=61
					-25, -31, 36, -10, 11, -30, -1, -67, -37,
					-- layer=2 filter=110 channel=62
					-22, -8, 1, -46, -77, -16, 3, 13, 68,
					-- layer=2 filter=110 channel=63
					32, 15, 30, -58, -39, -39, -52, 12, -51,
					-- layer=2 filter=111 channel=0
					-77, -40, -65, -9, -45, -32, -36, -39, -11,
					-- layer=2 filter=111 channel=1
					-8, -6, -40, -3, -3, 30, 22, 37, -3,
					-- layer=2 filter=111 channel=2
					15, 6, 16, -4, 19, 17, 17, 9, -10,
					-- layer=2 filter=111 channel=3
					-29, -15, -34, -75, -14, -48, -16, -9, 0,
					-- layer=2 filter=111 channel=4
					-16, -15, 3, 4, 12, 6, 8, -10, 14,
					-- layer=2 filter=111 channel=5
					5, 43, 8, 35, 41, -10, 17, 19, 45,
					-- layer=2 filter=111 channel=6
					-9, 17, 29, -43, -7, 24, -14, -20, -17,
					-- layer=2 filter=111 channel=7
					-12, -16, 7, -19, -54, -66, -77, -28, -87,
					-- layer=2 filter=111 channel=8
					10, 24, -18, 19, -9, -7, -7, -21, -11,
					-- layer=2 filter=111 channel=9
					-22, -18, 7, -3, 12, 5, 16, 14, 2,
					-- layer=2 filter=111 channel=10
					-9, -31, 0, 23, 12, 5, 49, 37, 47,
					-- layer=2 filter=111 channel=11
					12, -14, 1, 42, 27, 25, 23, 52, 43,
					-- layer=2 filter=111 channel=12
					-16, -1, 3, -30, -9, -15, 1, 11, -8,
					-- layer=2 filter=111 channel=13
					39, 15, -27, 33, 33, -24, -4, 26, -14,
					-- layer=2 filter=111 channel=14
					-40, 11, 12, -59, -16, 32, 11, 5, 0,
					-- layer=2 filter=111 channel=15
					-68, -37, -34, -41, -26, -65, 0, -9, -32,
					-- layer=2 filter=111 channel=16
					-54, 1, -28, -18, 16, 0, 21, 15, 37,
					-- layer=2 filter=111 channel=17
					-38, -20, -21, -11, 8, -13, -8, 25, 32,
					-- layer=2 filter=111 channel=18
					11, 15, 33, 7, -5, -32, -14, -58, -5,
					-- layer=2 filter=111 channel=19
					-27, -17, 9, -28, -18, -16, -11, 1, -9,
					-- layer=2 filter=111 channel=20
					-46, -28, -12, -25, -20, -28, 2, 4, 4,
					-- layer=2 filter=111 channel=21
					-43, -48, -63, -53, -10, -42, -14, 21, -34,
					-- layer=2 filter=111 channel=22
					-75, -9, -19, -23, 1, 3, -5, 32, 21,
					-- layer=2 filter=111 channel=23
					10, 10, -10, -1, 9, 27, 48, 28, 43,
					-- layer=2 filter=111 channel=24
					-19, 1, -52, -46, 4, -20, 9, 29, 8,
					-- layer=2 filter=111 channel=25
					21, 45, 49, 36, 77, -3, 16, 17, 7,
					-- layer=2 filter=111 channel=26
					0, 1, -15, -5, -13, -11, -12, 3, -12,
					-- layer=2 filter=111 channel=27
					-4, -15, 8, -12, -6, -13, 8, 13, 5,
					-- layer=2 filter=111 channel=28
					-21, -19, 13, -1, -19, 10, -10, -12, -13,
					-- layer=2 filter=111 channel=29
					-14, -33, -27, 13, -4, -13, 12, -4, -8,
					-- layer=2 filter=111 channel=30
					-21, -17, -69, -35, 18, -46, 7, 0, -39,
					-- layer=2 filter=111 channel=31
					-16, -29, 4, -1, -7, 14, 28, 9, 39,
					-- layer=2 filter=111 channel=32
					-24, -19, -87, 10, 8, -58, 14, 15, -14,
					-- layer=2 filter=111 channel=33
					-8, 21, -22, -1, 4, -3, 46, 32, 4,
					-- layer=2 filter=111 channel=34
					-62, -63, -48, -67, -79, -81, -43, -31, -40,
					-- layer=2 filter=111 channel=35
					-39, 13, 3, 21, 18, 23, 54, 19, 40,
					-- layer=2 filter=111 channel=36
					-30, -40, -20, -30, -8, -13, -16, 2, -5,
					-- layer=2 filter=111 channel=37
					-77, -68, -4, -36, -64, -101, -18, -25, -16,
					-- layer=2 filter=111 channel=38
					0, 4, -3, 45, 33, 13, 32, 18, -11,
					-- layer=2 filter=111 channel=39
					-35, -51, -70, 13, -47, -28, -2, -9, 9,
					-- layer=2 filter=111 channel=40
					-18, -25, 7, -7, 3, 10, -23, -8, -21,
					-- layer=2 filter=111 channel=41
					-46, -14, -13, -10, -12, 17, 49, 63, 32,
					-- layer=2 filter=111 channel=42
					17, 17, -18, -6, 32, 2, 3, 2, 16,
					-- layer=2 filter=111 channel=43
					-15, -41, -48, -1, -9, -5, -6, 53, 11,
					-- layer=2 filter=111 channel=44
					22, 7, 36, -11, 5, 34, 35, 21, 48,
					-- layer=2 filter=111 channel=45
					-39, 11, -39, -73, 2, -20, 18, -29, -15,
					-- layer=2 filter=111 channel=46
					28, -33, -17, 40, 34, 51, 33, 26, -16,
					-- layer=2 filter=111 channel=47
					-33, -7, -23, -46, 2, -4, 5, 32, 46,
					-- layer=2 filter=111 channel=48
					-27, -21, 4, -19, -20, -1, 5, 1, 4,
					-- layer=2 filter=111 channel=49
					19, -23, -29, -11, -66, -103, -27, -55, 12,
					-- layer=2 filter=111 channel=50
					-72, -69, -12, -80, -37, -50, 35, 2, -20,
					-- layer=2 filter=111 channel=51
					-1, 17, -37, 18, 55, 26, -37, -1, -22,
					-- layer=2 filter=111 channel=52
					0, -12, 17, 30, -5, 53, 61, 45, 37,
					-- layer=2 filter=111 channel=53
					-45, 10, -4, -13, -26, -19, 43, -2, 5,
					-- layer=2 filter=111 channel=54
					-44, -26, -11, -15, -3, 9, 24, 30, 42,
					-- layer=2 filter=111 channel=55
					17, 9, 43, 30, 21, 46, 65, 14, 39,
					-- layer=2 filter=111 channel=56
					-9, -10, 4, -9, 14, 32, 22, 6, 33,
					-- layer=2 filter=111 channel=57
					9, -37, -87, -13, -16, -9, 18, 51, -4,
					-- layer=2 filter=111 channel=58
					8, 65, 37, 22, 70, 18, -4, 10, 8,
					-- layer=2 filter=111 channel=59
					-79, -41, -22, -45, 17, 9, 27, 5, 23,
					-- layer=2 filter=111 channel=60
					40, 6, 48, 1, 40, 26, 26, 41, 6,
					-- layer=2 filter=111 channel=61
					46, 36, -24, 0, 20, -1, -1, 25, -31,
					-- layer=2 filter=111 channel=62
					38, -34, 36, 6, 22, 31, -2, 68, 44,
					-- layer=2 filter=111 channel=63
					-81, -21, -34, -58, -3, -46, -28, -4, 7,
					-- layer=2 filter=112 channel=0
					6, 14, -7, -13, 10, -9, 0, -6, 10,
					-- layer=2 filter=112 channel=1
					5, -5, 11, -2, -6, 2, -17, -8, -10,
					-- layer=2 filter=112 channel=2
					-19, -17, -15, -3, -6, -17, -13, -8, 2,
					-- layer=2 filter=112 channel=3
					-13, 5, -3, 0, -15, -1, -10, -10, -16,
					-- layer=2 filter=112 channel=4
					0, -25, 3, -16, -11, -13, 4, 2, -5,
					-- layer=2 filter=112 channel=5
					14, -1, 5, -3, -13, -13, 3, 9, -16,
					-- layer=2 filter=112 channel=6
					3, -11, 3, -2, -3, -19, 3, -3, -2,
					-- layer=2 filter=112 channel=7
					-8, 5, -1, -9, 1, -14, 0, -10, -7,
					-- layer=2 filter=112 channel=8
					-6, -13, 8, -13, 6, 2, -5, -9, -7,
					-- layer=2 filter=112 channel=9
					7, -14, -3, 10, 6, -15, 1, 1, 2,
					-- layer=2 filter=112 channel=10
					-14, -2, 6, -4, -5, -7, -9, 1, -3,
					-- layer=2 filter=112 channel=11
					-3, -15, -19, 5, 2, 2, 3, -12, 6,
					-- layer=2 filter=112 channel=12
					-17, -5, -18, -10, -7, 5, -5, -8, -4,
					-- layer=2 filter=112 channel=13
					-13, -4, -3, -6, -13, 0, 11, -5, -11,
					-- layer=2 filter=112 channel=14
					-16, 2, -3, 3, 6, -8, -19, -4, 0,
					-- layer=2 filter=112 channel=15
					-2, -5, -13, -4, -7, -15, 0, -11, 3,
					-- layer=2 filter=112 channel=16
					1, -10, -11, -19, -16, 1, -17, 5, -9,
					-- layer=2 filter=112 channel=17
					-7, -17, -15, -18, -12, -3, 0, -8, -11,
					-- layer=2 filter=112 channel=18
					16, 1, 11, -7, 6, -8, -5, 17, 5,
					-- layer=2 filter=112 channel=19
					-16, -22, -12, -8, 4, -20, -10, -9, 0,
					-- layer=2 filter=112 channel=20
					-12, -3, -3, 2, 1, 3, 1, -1, -19,
					-- layer=2 filter=112 channel=21
					-10, -9, 2, -7, -6, -10, -4, -2, 8,
					-- layer=2 filter=112 channel=22
					-20, -7, -1, 7, 7, 5, 2, 4, 5,
					-- layer=2 filter=112 channel=23
					0, -13, -16, 4, -12, -21, -16, -4, -9,
					-- layer=2 filter=112 channel=24
					-20, -1, -22, -18, -20, -7, -9, 8, 9,
					-- layer=2 filter=112 channel=25
					-4, 5, -4, 2, -13, -2, -10, -8, -10,
					-- layer=2 filter=112 channel=26
					-12, -11, -11, 13, 4, 4, 12, 13, 9,
					-- layer=2 filter=112 channel=27
					12, 7, -11, -4, 5, 11, 6, 12, -8,
					-- layer=2 filter=112 channel=28
					13, 9, -7, -9, -5, 8, -10, -8, -6,
					-- layer=2 filter=112 channel=29
					-7, -2, 0, -14, -3, -15, -14, -16, -19,
					-- layer=2 filter=112 channel=30
					-8, -8, 8, -20, -17, -13, 7, -7, -1,
					-- layer=2 filter=112 channel=31
					-12, -8, -4, -9, 0, -14, -8, -5, -3,
					-- layer=2 filter=112 channel=32
					-17, -11, -3, 5, -24, -14, 10, -8, 1,
					-- layer=2 filter=112 channel=33
					8, -10, -12, -18, -22, -18, -3, -3, 8,
					-- layer=2 filter=112 channel=34
					-7, 0, -8, -3, -1, -15, -19, 1, 5,
					-- layer=2 filter=112 channel=35
					7, -2, -9, 9, -21, 2, -20, 5, -18,
					-- layer=2 filter=112 channel=36
					-7, -8, -15, -18, 2, -16, 2, -5, 0,
					-- layer=2 filter=112 channel=37
					-8, 4, -2, -20, -13, -12, -15, -4, -5,
					-- layer=2 filter=112 channel=38
					3, -19, 0, -15, -22, -19, -7, -12, 3,
					-- layer=2 filter=112 channel=39
					8, -22, 1, 0, -18, -12, -19, -6, 6,
					-- layer=2 filter=112 channel=40
					-11, -10, 9, -2, -3, -3, -14, -14, -15,
					-- layer=2 filter=112 channel=41
					-5, 7, 0, 0, 0, -16, -18, -15, -8,
					-- layer=2 filter=112 channel=42
					-2, -16, 9, -5, 3, 2, 5, -17, 6,
					-- layer=2 filter=112 channel=43
					-1, 2, -9, -3, 10, -7, -3, 7, -2,
					-- layer=2 filter=112 channel=44
					-20, -4, -4, -8, -1, 0, -11, -1, -14,
					-- layer=2 filter=112 channel=45
					4, -11, -6, 6, -4, -1, 8, -4, 8,
					-- layer=2 filter=112 channel=46
					-5, -2, 8, 4, -1, 4, 1, 8, -6,
					-- layer=2 filter=112 channel=47
					-14, 13, -12, -6, 6, -5, 0, -8, 5,
					-- layer=2 filter=112 channel=48
					-6, 4, 0, -4, 1, -14, -12, -3, -17,
					-- layer=2 filter=112 channel=49
					-4, 0, 14, -1, 11, -14, -4, 13, 3,
					-- layer=2 filter=112 channel=50
					-10, -13, 11, 2, -20, 10, -12, -18, -18,
					-- layer=2 filter=112 channel=51
					-8, -8, -10, -15, -11, -13, 5, -1, 10,
					-- layer=2 filter=112 channel=52
					-9, -7, -18, 2, -1, 0, -5, 6, 0,
					-- layer=2 filter=112 channel=53
					-10, 4, 13, -11, -5, -20, 0, 4, 2,
					-- layer=2 filter=112 channel=54
					7, 0, -11, 1, -2, 0, -7, -9, 8,
					-- layer=2 filter=112 channel=55
					5, -14, -13, 5, -7, 6, 14, 0, 6,
					-- layer=2 filter=112 channel=56
					9, 0, -11, 0, -4, -11, -16, -13, -5,
					-- layer=2 filter=112 channel=57
					-16, 9, -1, -2, -21, -19, 8, -7, -3,
					-- layer=2 filter=112 channel=58
					2, 12, 8, 2, 13, -10, -6, 7, 0,
					-- layer=2 filter=112 channel=59
					2, -13, 5, -9, -14, -16, -6, -2, 8,
					-- layer=2 filter=112 channel=60
					-20, 4, -2, -16, -7, -6, 10, -6, 6,
					-- layer=2 filter=112 channel=61
					-6, -15, 0, 3, 5, 12, -7, 13, -16,
					-- layer=2 filter=112 channel=62
					13, -7, -10, -11, 11, -2, 0, -14, -5,
					-- layer=2 filter=112 channel=63
					-9, 3, -5, 3, -9, -10, -4, -10, 0,
					-- layer=2 filter=113 channel=0
					-39, -68, -21, -57, -94, -62, -42, -22, -32,
					-- layer=2 filter=113 channel=1
					26, -83, -48, 1, -8, -44, 67, 44, -27,
					-- layer=2 filter=113 channel=2
					-17, -14, -3, 7, 31, -2, 31, 31, 14,
					-- layer=2 filter=113 channel=3
					-8, -2, -6, -15, -9, -7, 3, 9, -18,
					-- layer=2 filter=113 channel=4
					7, -2, 12, 19, 20, 19, 29, 8, 8,
					-- layer=2 filter=113 channel=5
					-19, -18, 13, -19, 7, -2, -39, 21, -54,
					-- layer=2 filter=113 channel=6
					-2, -6, -22, 12, 17, 28, 8, -7, -9,
					-- layer=2 filter=113 channel=7
					-69, -49, 0, -48, -54, 7, 50, 15, 10,
					-- layer=2 filter=113 channel=8
					-66, -23, 28, -3, -3, 0, 9, 21, -82,
					-- layer=2 filter=113 channel=9
					-51, -94, -50, 35, -18, -43, 52, 13, -9,
					-- layer=2 filter=113 channel=10
					-25, -100, -54, -6, -49, -40, 55, 42, -7,
					-- layer=2 filter=113 channel=11
					7, -71, -62, 45, -8, 6, 20, 18, 37,
					-- layer=2 filter=113 channel=12
					-5, -25, 4, 27, -4, -20, 33, -3, -2,
					-- layer=2 filter=113 channel=13
					-38, -70, -58, -66, -74, -2, -35, -17, 31,
					-- layer=2 filter=113 channel=14
					-12, 16, 14, -1, 16, 8, 7, 27, 5,
					-- layer=2 filter=113 channel=15
					-1, 17, 6, -43, 6, -21, -15, -12, -37,
					-- layer=2 filter=113 channel=16
					5, 27, 10, 17, 21, 20, -23, -4, 11,
					-- layer=2 filter=113 channel=17
					8, 26, -4, -5, 5, -7, -29, 22, 10,
					-- layer=2 filter=113 channel=18
					-49, 6, -62, -26, 42, -59, -53, -1, -18,
					-- layer=2 filter=113 channel=19
					-30, -17, 6, 3, 24, 24, 0, -12, -6,
					-- layer=2 filter=113 channel=20
					16, -1, -16, 13, 29, -19, 35, 4, -7,
					-- layer=2 filter=113 channel=21
					-16, 10, -19, 0, 2, -4, -1, -29, 24,
					-- layer=2 filter=113 channel=22
					-15, -3, -1, -11, 7, -9, 21, 11, 3,
					-- layer=2 filter=113 channel=23
					-14, 21, 3, 10, 14, 4, -21, -27, 11,
					-- layer=2 filter=113 channel=24
					1, 3, 12, -17, 13, -8, -43, -16, -14,
					-- layer=2 filter=113 channel=25
					-74, 0, -29, 1, -53, -39, 73, 85, -27,
					-- layer=2 filter=113 channel=26
					-8, -10, 7, -4, 3, -14, 3, -10, 4,
					-- layer=2 filter=113 channel=27
					1, -12, -4, 8, -1, 1, 8, -8, 0,
					-- layer=2 filter=113 channel=28
					-5, -3, -2, -1, -24, 16, -1, 4, -2,
					-- layer=2 filter=113 channel=29
					-5, -14, -17, 20, 11, -22, 47, 17, 8,
					-- layer=2 filter=113 channel=30
					-24, -1, 19, 8, 2, 3, -4, -6, -27,
					-- layer=2 filter=113 channel=31
					11, -50, -43, 15, 52, -30, 95, 46, 36,
					-- layer=2 filter=113 channel=32
					-3, -1, 3, 4, -9, 22, 0, -9, 15,
					-- layer=2 filter=113 channel=33
					3, 23, 14, 9, 5, 2, -2, -27, 0,
					-- layer=2 filter=113 channel=34
					-57, -60, -30, -90, -74, -101, 18, -13, -22,
					-- layer=2 filter=113 channel=35
					47, -92, -33, 83, 51, -50, 84, 33, 60,
					-- layer=2 filter=113 channel=36
					-15, -20, -2, 27, -4, -18, 22, 16, -11,
					-- layer=2 filter=113 channel=37
					-55, -62, -24, -20, -41, -82, -4, 4, -35,
					-- layer=2 filter=113 channel=38
					-17, -70, -43, -6, -1, -5, 65, 42, 3,
					-- layer=2 filter=113 channel=39
					-53, -88, -50, -99, -98, -155, -68, 40, -83,
					-- layer=2 filter=113 channel=40
					-16, -53, 11, -10, 18, -18, 35, 15, 23,
					-- layer=2 filter=113 channel=41
					-3, -4, 5, -3, -18, 3, -22, -29, -24,
					-- layer=2 filter=113 channel=42
					11, -11, -4, 31, -9, 11, 52, 41, -19,
					-- layer=2 filter=113 channel=43
					-13, 34, 25, -13, 11, 26, -62, -30, 0,
					-- layer=2 filter=113 channel=44
					-3, -1, 6, 28, 1, 14, -18, -32, 7,
					-- layer=2 filter=113 channel=45
					-24, 24, 15, -4, 13, -6, -11, -39, -31,
					-- layer=2 filter=113 channel=46
					-16, -77, -53, 1, 11, -45, 80, 32, -54,
					-- layer=2 filter=113 channel=47
					0, 32, -1, 19, 6, 11, -51, -22, -6,
					-- layer=2 filter=113 channel=48
					-26, -7, -8, 10, 4, -6, 67, 13, 14,
					-- layer=2 filter=113 channel=49
					-17, -13, -19, -50, -60, -35, -39, -37, -46,
					-- layer=2 filter=113 channel=50
					2, -15, 11, -22, 5, 3, 3, 0, -24,
					-- layer=2 filter=113 channel=51
					24, -65, -7, 7, 51, -51, -12, -17, -53,
					-- layer=2 filter=113 channel=52
					-11, -31, -66, 32, 35, 7, 37, 60, 35,
					-- layer=2 filter=113 channel=53
					-26, -14, 0, 15, -1, -30, 8, -19, -22,
					-- layer=2 filter=113 channel=54
					29, 36, 13, 8, -10, 32, -55, -9, 21,
					-- layer=2 filter=113 channel=55
					-8, -25, -41, 15, 0, -8, 41, 10, 3,
					-- layer=2 filter=113 channel=56
					-41, -109, -76, -13, -21, -71, 54, 74, 24,
					-- layer=2 filter=113 channel=57
					-3, 14, 4, -13, -5, 16, -46, -30, -11,
					-- layer=2 filter=113 channel=58
					-47, -62, -18, -7, -18, -13, 6, -13, 12,
					-- layer=2 filter=113 channel=59
					-16, -9, -23, -6, -16, -12, 15, -2, -16,
					-- layer=2 filter=113 channel=60
					-44, -17, 1, 42, -27, -22, 20, 13, 0,
					-- layer=2 filter=113 channel=61
					25, -43, -25, -32, -75, -50, 32, 6, 30,
					-- layer=2 filter=113 channel=62
					-56, 8, 16, -14, -55, -24, -43, -34, -6,
					-- layer=2 filter=113 channel=63
					-29, 8, 13, -1, 26, 3, -14, -13, -14,
					-- layer=2 filter=114 channel=0
					-18, -37, 6, -45, -40, -19, 27, 57, 58,
					-- layer=2 filter=114 channel=1
					30, -13, 14, -20, -36, 1, 34, -6, -65,
					-- layer=2 filter=114 channel=2
					10, 3, 18, 17, 30, -7, 6, -2, 27,
					-- layer=2 filter=114 channel=3
					8, -12, -20, -12, 19, -9, -36, -14, -19,
					-- layer=2 filter=114 channel=4
					17, -6, 19, 31, -6, 14, 50, 4, -26,
					-- layer=2 filter=114 channel=5
					36, 15, -14, 31, -42, -25, 24, -25, 58,
					-- layer=2 filter=114 channel=6
					-20, 21, 0, 3, 33, -5, -36, 40, 6,
					-- layer=2 filter=114 channel=7
					-78, -27, 11, 7, 40, 50, 23, 49, 54,
					-- layer=2 filter=114 channel=8
					-13, 21, 13, -48, -54, 5, -96, -62, -40,
					-- layer=2 filter=114 channel=9
					7, 50, 30, 6, -5, 47, 28, -73, -11,
					-- layer=2 filter=114 channel=10
					-58, -22, -18, -28, -60, -9, -37, -33, -14,
					-- layer=2 filter=114 channel=11
					-75, -25, 9, -27, -89, -34, -2, 10, -7,
					-- layer=2 filter=114 channel=12
					-14, -11, 0, -1, 3, 6, 0, 8, -13,
					-- layer=2 filter=114 channel=13
					32, 23, -41, 24, 5, -52, 31, -44, -38,
					-- layer=2 filter=114 channel=14
					-31, -10, 4, -27, -19, -17, -38, -30, -92,
					-- layer=2 filter=114 channel=15
					-29, -36, -11, -14, -16, 1, 10, 19, 36,
					-- layer=2 filter=114 channel=16
					21, 22, 25, -5, 45, 32, -39, -53, -33,
					-- layer=2 filter=114 channel=17
					12, 0, -12, 0, 4, -24, -79, -89, -112,
					-- layer=2 filter=114 channel=18
					11, -90, -13, -26, -79, 47, 40, 75, 130,
					-- layer=2 filter=114 channel=19
					-17, -7, -3, 20, 10, 0, 12, -3, -4,
					-- layer=2 filter=114 channel=20
					-21, 11, -4, -18, -4, -19, -1, -24, -11,
					-- layer=2 filter=114 channel=21
					11, -28, -19, -9, 25, -21, -27, -31, -9,
					-- layer=2 filter=114 channel=22
					-6, 1, 9, -43, -26, -8, -51, -17, -55,
					-- layer=2 filter=114 channel=23
					0, 11, -4, 9, -8, -3, -64, -78, -85,
					-- layer=2 filter=114 channel=24
					25, 15, -11, 38, 35, -3, -9, -21, -48,
					-- layer=2 filter=114 channel=25
					-45, -107, -27, -61, 5, 9, -33, -12, 39,
					-- layer=2 filter=114 channel=26
					10, 2, -11, -13, 0, -12, -12, -10, -13,
					-- layer=2 filter=114 channel=27
					-6, 10, -6, -7, 4, -10, -8, -10, -1,
					-- layer=2 filter=114 channel=28
					-8, 10, -2, -22, -3, 13, -8, 11, -4,
					-- layer=2 filter=114 channel=29
					-1, -9, 11, -57, -13, -18, -17, -7, -3,
					-- layer=2 filter=114 channel=30
					22, 17, 45, -42, 11, 43, 15, -57, -5,
					-- layer=2 filter=114 channel=31
					-27, -10, -4, -90, -128, -38, 27, -32, -74,
					-- layer=2 filter=114 channel=32
					13, 1, 0, 5, 22, -1, -35, -31, -90,
					-- layer=2 filter=114 channel=33
					-21, -3, -14, -3, 31, 0, -50, -16, -57,
					-- layer=2 filter=114 channel=34
					-18, -69, -55, -40, -10, -22, 20, 26, 30,
					-- layer=2 filter=114 channel=35
					19, -41, -16, -11, -42, -94, 24, -3, -21,
					-- layer=2 filter=114 channel=36
					7, -2, 5, 15, -8, 3, 15, 12, 47,
					-- layer=2 filter=114 channel=37
					-36, -29, -40, -4, -19, 9, 30, 31, 66,
					-- layer=2 filter=114 channel=38
					44, 8, 22, -13, -24, -10, 52, 3, -76,
					-- layer=2 filter=114 channel=39
					23, -4, -3, -41, -113, -34, 9, 52, 44,
					-- layer=2 filter=114 channel=40
					51, 32, 58, -38, -28, 41, 26, -37, -56,
					-- layer=2 filter=114 channel=41
					5, 21, 0, 18, 19, 3, -41, -38, -38,
					-- layer=2 filter=114 channel=42
					34, 28, 22, 11, 23, 9, 18, -21, 59,
					-- layer=2 filter=114 channel=43
					-27, 20, 17, 14, 51, 28, -51, -26, 3,
					-- layer=2 filter=114 channel=44
					-2, 37, 9, 31, 34, 57, -1, -7, -4,
					-- layer=2 filter=114 channel=45
					3, 3, -7, -6, 4, 6, -57, -7, -48,
					-- layer=2 filter=114 channel=46
					28, -25, 0, 22, -23, -23, 26, -28, 0,
					-- layer=2 filter=114 channel=47
					-17, -5, 2, -4, -8, -11, -2, -29, -8,
					-- layer=2 filter=114 channel=48
					-25, -39, -12, 0, 13, 6, -3, -6, 9,
					-- layer=2 filter=114 channel=49
					5, 44, 42, 12, -5, -21, 3, 43, 14,
					-- layer=2 filter=114 channel=50
					-33, 9, -63, -6, 21, 10, 18, 18, 13,
					-- layer=2 filter=114 channel=51
					-20, -25, 42, -42, 11, 12, -63, 7, 12,
					-- layer=2 filter=114 channel=52
					-40, -7, -3, -47, -5, 5, -60, -62, -73,
					-- layer=2 filter=114 channel=53
					-20, -33, -28, 9, 27, -19, 43, 51, 23,
					-- layer=2 filter=114 channel=54
					-25, 26, 14, 5, 37, 36, 7, -38, -69,
					-- layer=2 filter=114 channel=55
					-79, -13, -13, -47, -19, 17, -53, -30, -1,
					-- layer=2 filter=114 channel=56
					10, -24, 7, -41, -40, 0, 1, -48, -61,
					-- layer=2 filter=114 channel=57
					-7, -22, 9, -6, -14, -50, -23, -41, -9,
					-- layer=2 filter=114 channel=58
					-10, -40, 45, -45, -3, -25, -43, -16, -16,
					-- layer=2 filter=114 channel=59
					-21, 22, -14, -12, 4, 36, -51, -14, -49,
					-- layer=2 filter=114 channel=60
					38, 23, 17, 10, 2, 39, 20, -15, -2,
					-- layer=2 filter=114 channel=61
					11, -17, 7, -11, -19, -35, 31, 64, 48,
					-- layer=2 filter=114 channel=62
					39, -4, 30, 14, -41, -37, -5, -2, 22,
					-- layer=2 filter=114 channel=63
					-18, -9, -29, -15, 31, -26, 24, -1, -9,
					-- layer=2 filter=115 channel=0
					-1, -18, 46, -10, 40, 8, 12, 3, 29,
					-- layer=2 filter=115 channel=1
					14, 22, 5, -2, 2, -33, -19, -44, -8,
					-- layer=2 filter=115 channel=2
					10, 30, 10, 16, -9, -7, -5, -36, -5,
					-- layer=2 filter=115 channel=3
					2, 12, -4, 5, -2, -13, 8, -30, -9,
					-- layer=2 filter=115 channel=4
					17, 28, -14, -9, -23, -7, 3, -10, -28,
					-- layer=2 filter=115 channel=5
					26, -54, -20, -14, -18, 25, 14, 37, 81,
					-- layer=2 filter=115 channel=6
					56, 38, 21, -50, 21, -52, -2, 20, -37,
					-- layer=2 filter=115 channel=7
					3, 26, 16, -6, 13, 9, 56, 34, 13,
					-- layer=2 filter=115 channel=8
					86, 43, 61, 0, 8, -15, -88, -77, -113,
					-- layer=2 filter=115 channel=9
					2, -46, -33, -26, -32, -65, 2, -63, -54,
					-- layer=2 filter=115 channel=10
					-11, -4, 12, 9, 8, -20, 1, -1, -17,
					-- layer=2 filter=115 channel=11
					-78, -82, -54, -27, 11, 13, 0, 4, -12,
					-- layer=2 filter=115 channel=12
					22, 17, -5, -17, -37, -24, -18, -29, -30,
					-- layer=2 filter=115 channel=13
					-6, -18, -38, 57, -9, 24, -8, 23, 45,
					-- layer=2 filter=115 channel=14
					-11, 21, -26, -19, 15, -21, -18, -53, -41,
					-- layer=2 filter=115 channel=15
					-2, 6, -15, 7, 38, 20, 33, 16, 20,
					-- layer=2 filter=115 channel=16
					10, 27, -8, -37, -36, -27, -3, 41, 57,
					-- layer=2 filter=115 channel=17
					16, 5, 2, -50, -32, -34, 5, 0, 28,
					-- layer=2 filter=115 channel=18
					34, -55, -58, 21, 65, -14, 10, 33, -25,
					-- layer=2 filter=115 channel=19
					11, 37, 14, -34, -26, -44, -3, -46, -32,
					-- layer=2 filter=115 channel=20
					14, 22, -1, -11, -30, -45, -29, -13, -33,
					-- layer=2 filter=115 channel=21
					12, 13, 13, 5, 0, 9, 5, -1, -22,
					-- layer=2 filter=115 channel=22
					18, 52, 25, -16, -3, 0, -47, -37, -31,
					-- layer=2 filter=115 channel=23
					3, 36, 21, -16, 5, -17, -32, 0, 12,
					-- layer=2 filter=115 channel=24
					36, 41, 15, -36, -13, -11, -9, 12, 28,
					-- layer=2 filter=115 channel=25
					-13, 22, -67, 47, -12, -68, -17, -37, -66,
					-- layer=2 filter=115 channel=26
					11, -8, 3, 4, 5, -4, 12, -9, -5,
					-- layer=2 filter=115 channel=27
					4, 10, -12, -9, -12, -7, -8, 1, -4,
					-- layer=2 filter=115 channel=28
					-11, -21, 17, -2, -30, -9, -24, -1, -8,
					-- layer=2 filter=115 channel=29
					17, 16, 7, -30, -40, -25, -47, -26, 1,
					-- layer=2 filter=115 channel=30
					38, 51, 26, 11, 12, -19, -10, -40, 18,
					-- layer=2 filter=115 channel=31
					-26, 0, -26, 22, -31, -21, -28, -69, -84,
					-- layer=2 filter=115 channel=32
					-9, 0, -8, -7, -34, -5, -34, 10, 39,
					-- layer=2 filter=115 channel=33
					0, 22, 22, -39, -16, 1, -13, 4, 25,
					-- layer=2 filter=115 channel=34
					-1, 2, -10, 25, 13, 12, 42, 25, -17,
					-- layer=2 filter=115 channel=35
					19, 10, -31, 58, -25, -47, 13, -57, -12,
					-- layer=2 filter=115 channel=36
					22, 0, 28, 0, 1, 0, 6, -25, -32,
					-- layer=2 filter=115 channel=37
					-28, 12, -3, 16, 10, 16, 35, 28, 38,
					-- layer=2 filter=115 channel=38
					-13, 15, -42, 14, 0, -71, -31, -78, -78,
					-- layer=2 filter=115 channel=39
					4, 15, 16, 6, 21, 48, 56, 44, 51,
					-- layer=2 filter=115 channel=40
					41, 45, -16, 3, 11, -47, -35, -71, -77,
					-- layer=2 filter=115 channel=41
					14, 25, 0, -22, 15, -5, -25, -23, 4,
					-- layer=2 filter=115 channel=42
					32, 38, 46, 27, -2, 28, -72, -44, 0,
					-- layer=2 filter=115 channel=43
					17, -23, -25, -43, -44, 2, 16, 55, 82,
					-- layer=2 filter=115 channel=44
					18, -2, -28, -27, -22, -32, 12, 21, 8,
					-- layer=2 filter=115 channel=45
					-17, -9, 16, -40, -21, -21, -41, 24, 9,
					-- layer=2 filter=115 channel=46
					19, 45, 17, 6, -16, 40, -36, -18, -25,
					-- layer=2 filter=115 channel=47
					58, 43, 10, -29, -20, -5, -51, -35, -10,
					-- layer=2 filter=115 channel=48
					29, 7, 39, 0, 6, -12, -10, -50, -55,
					-- layer=2 filter=115 channel=49
					44, 2, -10, -28, 45, 28, 24, 32, 0,
					-- layer=2 filter=115 channel=50
					-5, -16, -22, 25, 22, -7, 16, -5, -10,
					-- layer=2 filter=115 channel=51
					-26, 46, -8, 5, 43, 5, 29, -12, 15,
					-- layer=2 filter=115 channel=52
					-50, -46, -41, -6, 16, -10, -18, -6, -15,
					-- layer=2 filter=115 channel=53
					-20, 15, -1, 14, 23, -12, 0, -11, -30,
					-- layer=2 filter=115 channel=54
					-10, -4, -27, -44, -45, 3, 4, 48, 63,
					-- layer=2 filter=115 channel=55
					-42, -34, -7, -34, 11, 2, 5, 12, 7,
					-- layer=2 filter=115 channel=56
					22, 46, 15, 38, 14, 17, -46, -42, -59,
					-- layer=2 filter=115 channel=57
					-2, -9, -33, 3, 6, -35, 17, 13, 42,
					-- layer=2 filter=115 channel=58
					59, 75, 38, -2, 65, 56, -37, -30, 3,
					-- layer=2 filter=115 channel=59
					29, -2, 1, -13, 19, 9, -31, -23, -8,
					-- layer=2 filter=115 channel=60
					6, 34, -4, 46, 5, 13, -23, -28, -71,
					-- layer=2 filter=115 channel=61
					12, -11, -30, 18, 16, -3, -20, -7, 2,
					-- layer=2 filter=115 channel=62
					39, -17, -74, 39, 20, -8, -13, -47, -7,
					-- layer=2 filter=115 channel=63
					3, 45, 18, -16, 8, 13, -14, -18, -16,
					-- layer=2 filter=116 channel=0
					-64, 7, 27, 3, 32, -2, 9, -13, 10,
					-- layer=2 filter=116 channel=1
					-55, -50, 14, -40, -43, -38, -15, -16, 35,
					-- layer=2 filter=116 channel=2
					14, 16, -1, -11, 6, 4, 29, 13, 9,
					-- layer=2 filter=116 channel=3
					15, 14, -10, 12, -15, -13, 16, 35, 47,
					-- layer=2 filter=116 channel=4
					-28, 2, 34, 11, 21, 34, 29, 19, -6,
					-- layer=2 filter=116 channel=5
					71, -2, -57, 5, 16, 20, 11, 80, 64,
					-- layer=2 filter=116 channel=6
					17, -1, -14, 23, 15, -18, -2, 28, 3,
					-- layer=2 filter=116 channel=7
					18, 71, 11, -3, -27, 18, -13, 12, 22,
					-- layer=2 filter=116 channel=8
					19, 38, 4, 13, 8, -4, 11, -4, 46,
					-- layer=2 filter=116 channel=9
					-59, -67, 45, -54, -90, -45, -26, -37, -24,
					-- layer=2 filter=116 channel=10
					-60, 7, -43, -59, -17, -29, -58, -10, 0,
					-- layer=2 filter=116 channel=11
					-104, -49, -6, -31, -4, 9, -40, -66, -7,
					-- layer=2 filter=116 channel=12
					28, 35, -15, 5, 27, 17, 8, 26, 19,
					-- layer=2 filter=116 channel=13
					-54, -82, -71, -59, -117, 14, -15, -35, 24,
					-- layer=2 filter=116 channel=14
					1, -33, -5, 32, 0, -1, 12, 10, 13,
					-- layer=2 filter=116 channel=15
					36, 53, 45, -13, 6, 19, -33, -4, -28,
					-- layer=2 filter=116 channel=16
					5, 0, -26, 14, 35, 14, 25, 11, 12,
					-- layer=2 filter=116 channel=17
					13, 14, 11, 14, 9, -13, -27, -10, -17,
					-- layer=2 filter=116 channel=18
					33, 2, -10, -22, 3, -7, -9, -24, 2,
					-- layer=2 filter=116 channel=19
					-9, 31, -17, 11, 30, 21, 6, 32, 6,
					-- layer=2 filter=116 channel=20
					28, 25, 0, 2, 2, -6, 19, -13, -11,
					-- layer=2 filter=116 channel=21
					33, 22, 16, 0, -22, -22, 19, -7, -16,
					-- layer=2 filter=116 channel=22
					14, -2, 10, 45, 5, -10, -2, -14, 21,
					-- layer=2 filter=116 channel=23
					6, -5, 9, 0, 1, -2, -17, 4, 4,
					-- layer=2 filter=116 channel=24
					29, 10, -16, -1, 0, -1, 9, -8, 6,
					-- layer=2 filter=116 channel=25
					33, 77, -2, -13, 4, -3, -28, -10, -26,
					-- layer=2 filter=116 channel=26
					-1, 8, -3, -7, -5, -3, 5, -6, 5,
					-- layer=2 filter=116 channel=27
					-2, 6, 0, -4, 1, -8, -4, 0, -8,
					-- layer=2 filter=116 channel=28
					-1, 9, 2, 8, -14, -18, -2, -11, -15,
					-- layer=2 filter=116 channel=29
					32, 27, 0, -2, 17, -15, -19, -37, -43,
					-- layer=2 filter=116 channel=30
					36, -3, -1, 18, 4, 26, -7, -1, -6,
					-- layer=2 filter=116 channel=31
					-68, -21, 30, -46, -79, -51, -52, -20, 0,
					-- layer=2 filter=116 channel=32
					16, 5, 0, 0, 25, 12, 30, 3, 18,
					-- layer=2 filter=116 channel=33
					29, 9, -17, 27, 21, -10, -8, 20, 19,
					-- layer=2 filter=116 channel=34
					-10, 51, 46, -10, 6, 3, -11, -11, 10,
					-- layer=2 filter=116 channel=35
					-60, -3, -55, -73, -29, -81, -32, -52, 6,
					-- layer=2 filter=116 channel=36
					4, 18, -1, 3, 9, -3, 1, 0, -1,
					-- layer=2 filter=116 channel=37
					-21, -8, 0, -27, 1, 25, -18, -30, 15,
					-- layer=2 filter=116 channel=38
					-38, -121, 8, -43, -84, -45, -20, -14, 4,
					-- layer=2 filter=116 channel=39
					-67, -21, 4, 3, 29, 0, -27, -10, 8,
					-- layer=2 filter=116 channel=40
					-6, -42, 23, -17, -28, 13, 1, -5, 1,
					-- layer=2 filter=116 channel=41
					9, -16, 8, 12, -1, -2, -14, 8, 10,
					-- layer=2 filter=116 channel=42
					6, -12, -5, 6, -24, 5, 46, 15, 47,
					-- layer=2 filter=116 channel=43
					9, 7, -33, 19, 41, 37, 17, 3, 10,
					-- layer=2 filter=116 channel=44
					-44, -9, 9, -7, -4, 25, 4, 3, 4,
					-- layer=2 filter=116 channel=45
					26, -9, -7, -6, 10, 4, 11, 19, 13,
					-- layer=2 filter=116 channel=46
					-11, -100, 30, 6, -43, -51, -19, 21, 11,
					-- layer=2 filter=116 channel=47
					1, 20, 0, -32, -5, -1, -4, 1, -30,
					-- layer=2 filter=116 channel=48
					34, 25, -11, 33, 1, -5, 14, 1, 0,
					-- layer=2 filter=116 channel=49
					-30, -51, -37, -4, -4, -3, 46, 54, 43,
					-- layer=2 filter=116 channel=50
					9, 3, -4, -39, -3, 20, 4, 35, 12,
					-- layer=2 filter=116 channel=51
					81, 27, 0, -28, 8, -16, -18, -23, -24,
					-- layer=2 filter=116 channel=52
					-33, -16, 12, -66, -35, -1, -36, -46, -38,
					-- layer=2 filter=116 channel=53
					-16, -6, -8, 0, -8, 0, -31, 2, 3,
					-- layer=2 filter=116 channel=54
					-27, -11, 15, 20, 23, 21, -25, -42, 0,
					-- layer=2 filter=116 channel=55
					-27, -16, -44, -52, -21, 2, -25, -28, -40,
					-- layer=2 filter=116 channel=56
					-43, -41, 18, -24, -44, -31, -1, -2, 0,
					-- layer=2 filter=116 channel=57
					15, 34, 10, 2, 18, 39, -15, 4, 21,
					-- layer=2 filter=116 channel=58
					-24, -86, -54, -57, -52, -37, -70, 54, 4,
					-- layer=2 filter=116 channel=59
					29, -2, 2, 0, -26, -44, -1, 6, -3,
					-- layer=2 filter=116 channel=60
					-45, -61, 39, -17, -76, 3, 8, 2, 16,
					-- layer=2 filter=116 channel=61
					27, 43, 28, -4, -10, -18, 18, 5, -4,
					-- layer=2 filter=116 channel=62
					96, 23, 71, 63, 30, 106, 37, 26, 84,
					-- layer=2 filter=116 channel=63
					-9, -10, -12, -10, -9, -8, 29, 23, 15,
					-- layer=2 filter=117 channel=0
					27, 32, 8, 32, 8, 10, 31, 51, 39,
					-- layer=2 filter=117 channel=1
					31, 35, -22, -8, 3, -67, -12, -11, -5,
					-- layer=2 filter=117 channel=2
					-19, -3, 9, 12, -5, 12, -9, 27, 22,
					-- layer=2 filter=117 channel=3
					33, 30, -4, -22, 16, 8, -73, -36, -41,
					-- layer=2 filter=117 channel=4
					-1, -3, 5, -14, 7, 20, 12, 17, 22,
					-- layer=2 filter=117 channel=5
					21, 89, 6, 66, 22, 35, 11, 0, 17,
					-- layer=2 filter=117 channel=6
					63, 3, 31, 18, 1, 44, 70, 8, 27,
					-- layer=2 filter=117 channel=7
					27, 16, -19, -9, 7, -32, -73, -83, -37,
					-- layer=2 filter=117 channel=8
					36, 18, 26, 93, 66, 52, 64, 19, 12,
					-- layer=2 filter=117 channel=9
					22, -25, 9, -6, -39, 19, 21, -35, -15,
					-- layer=2 filter=117 channel=10
					2, -3, 0, 15, 19, 2, 42, 17, -15,
					-- layer=2 filter=117 channel=11
					70, 47, 48, 21, 44, 37, -13, 5, -16,
					-- layer=2 filter=117 channel=12
					8, -11, 1, 13, 21, 2, -5, -8, 23,
					-- layer=2 filter=117 channel=13
					14, 14, 22, -21, 2, -1, -4, -26, -11,
					-- layer=2 filter=117 channel=14
					-25, -36, -43, -44, -15, -59, -60, -22, -82,
					-- layer=2 filter=117 channel=15
					-5, -18, -4, -26, -22, 2, -20, -25, 4,
					-- layer=2 filter=117 channel=16
					-52, -24, -49, -35, -29, -63, -6, -11, -56,
					-- layer=2 filter=117 channel=17
					-36, -18, -20, -27, -27, -17, -18, -16, -23,
					-- layer=2 filter=117 channel=18
					52, -9, 14, 85, -28, 39, 0, -11, -3,
					-- layer=2 filter=117 channel=19
					15, -3, 21, 10, 16, 37, 10, 8, 23,
					-- layer=2 filter=117 channel=20
					-1, 9, -12, 14, 11, 20, -20, 9, -14,
					-- layer=2 filter=117 channel=21
					-39, -59, -54, 0, -75, -19, 10, -24, -25,
					-- layer=2 filter=117 channel=22
					-27, -25, -34, -17, -13, -7, 13, 8, -6,
					-- layer=2 filter=117 channel=23
					-72, -45, -43, -51, -116, -45, -40, -13, -29,
					-- layer=2 filter=117 channel=24
					-29, -19, -15, -14, 16, -20, -12, 10, -3,
					-- layer=2 filter=117 channel=25
					9, 14, 6, -26, 14, -10, -22, -12, -9,
					-- layer=2 filter=117 channel=26
					-12, -16, -12, -1, 8, -2, -8, 4, -8,
					-- layer=2 filter=117 channel=27
					4, 13, 3, -2, 10, -9, -4, 12, -14,
					-- layer=2 filter=117 channel=28
					-16, 5, 17, 19, -6, 16, -14, 10, -10,
					-- layer=2 filter=117 channel=29
					8, 4, 13, 40, 25, -1, 9, -14, -11,
					-- layer=2 filter=117 channel=30
					-9, -58, 1, -10, -17, 2, -10, -34, -33,
					-- layer=2 filter=117 channel=31
					19, 16, 45, 4, 15, 1, 28, 13, 0,
					-- layer=2 filter=117 channel=32
					4, 19, 21, -35, -44, -1, -19, -47, -64,
					-- layer=2 filter=117 channel=33
					15, 5, -33, 35, -57, -19, 42, 43, -3,
					-- layer=2 filter=117 channel=34
					14, -16, 3, 16, 30, 13, -7, -8, 16,
					-- layer=2 filter=117 channel=35
					-25, -31, -22, -1, -52, -25, -29, 9, -19,
					-- layer=2 filter=117 channel=36
					-6, -6, 10, 4, 7, 7, -22, 4, 18,
					-- layer=2 filter=117 channel=37
					18, 5, 16, 25, 15, 23, -23, 10, -5,
					-- layer=2 filter=117 channel=38
					0, -4, 8, -28, -12, -42, -5, -11, -34,
					-- layer=2 filter=117 channel=39
					0, 21, 15, 13, 25, 28, -39, 18, 4,
					-- layer=2 filter=117 channel=40
					3, -23, -8, 12, -20, -14, 21, 31, 13,
					-- layer=2 filter=117 channel=41
					-42, -56, -63, -20, -11, -32, -4, 13, -15,
					-- layer=2 filter=117 channel=42
					18, 4, 15, -4, -1, 1, 0, -5, 4,
					-- layer=2 filter=117 channel=43
					-15, -10, -14, -21, 4, -21, 0, -18, -41,
					-- layer=2 filter=117 channel=44
					5, 13, 18, 7, 0, 23, 7, 37, 33,
					-- layer=2 filter=117 channel=45
					-47, -4, -70, 51, 10, -11, 19, -8, -72,
					-- layer=2 filter=117 channel=46
					57, 9, 56, 14, 2, -22, -19, -5, -18,
					-- layer=2 filter=117 channel=47
					-16, -16, -7, -35, -13, 12, -34, -12, -21,
					-- layer=2 filter=117 channel=48
					2, 0, -20, 24, 7, -1, 20, -5, 6,
					-- layer=2 filter=117 channel=49
					91, 95, 13, 34, -20, 11, -1, 53, 57,
					-- layer=2 filter=117 channel=50
					-53, -66, -50, -44, -14, -72, 8, -38, -74,
					-- layer=2 filter=117 channel=51
					5, 2, 27, -28, -17, 19, -30, -33, 9,
					-- layer=2 filter=117 channel=52
					0, 16, 20, -23, 17, -14, 0, -11, -28,
					-- layer=2 filter=117 channel=53
					-5, -16, -24, -12, 16, 8, -22, -11, 15,
					-- layer=2 filter=117 channel=54
					17, 13, -14, -25, -22, -13, -20, 0, -49,
					-- layer=2 filter=117 channel=55
					21, 52, 23, -22, 14, 13, -16, -29, -38,
					-- layer=2 filter=117 channel=56
					19, -21, 28, -16, 10, 8, -8, -3, -11,
					-- layer=2 filter=117 channel=57
					-37, -55, -24, 10, -91, -33, -32, -28, -40,
					-- layer=2 filter=117 channel=58
					49, 16, 96, 6, 19, 45, 10, -36, 29,
					-- layer=2 filter=117 channel=59
					-5, -11, 1, -17, -27, -13, 14, -6, -23,
					-- layer=2 filter=117 channel=60
					-42, -16, 35, -20, -27, 13, 7, -70, 0,
					-- layer=2 filter=117 channel=61
					-36, 6, -20, 50, -19, -39, 27, 6, -1,
					-- layer=2 filter=117 channel=62
					-22, 11, 39, -3, -19, -30, -41, 7, -10,
					-- layer=2 filter=117 channel=63
					-33, -18, -105, -51, 10, -5, -75, -18, -52,
					-- layer=2 filter=118 channel=0
					-5, -18, -10, -33, -82, -44, -20, -36, -44,
					-- layer=2 filter=118 channel=1
					46, 29, -9, 34, -15, 3, -56, -5, 19,
					-- layer=2 filter=118 channel=2
					-3, -2, 0, -10, 7, 1, -6, 25, 0,
					-- layer=2 filter=118 channel=3
					-103, -85, -46, -30, -6, -18, 3, 7, 25,
					-- layer=2 filter=118 channel=4
					14, 39, 1, 0, 16, 14, 7, 18, 1,
					-- layer=2 filter=118 channel=5
					-32, 27, 24, -10, 20, 3, -1, -82, -14,
					-- layer=2 filter=118 channel=6
					0, 28, -8, -21, -20, 9, -15, 24, -11,
					-- layer=2 filter=118 channel=7
					-29, -102, -32, -27, -6, -50, -51, -23, 23,
					-- layer=2 filter=118 channel=8
					-45, -96, -93, -86, -19, 3, 51, 38, 42,
					-- layer=2 filter=118 channel=9
					6, 19, 9, 33, -29, -6, -39, -19, -3,
					-- layer=2 filter=118 channel=10
					36, -37, -15, 39, 31, 17, 2, 31, 46,
					-- layer=2 filter=118 channel=11
					22, 24, 15, 29, 33, 21, -8, 17, 14,
					-- layer=2 filter=118 channel=12
					-10, -32, -10, -4, -10, 1, 2, 11, -12,
					-- layer=2 filter=118 channel=13
					19, 14, 53, 3, -35, 7, 8, -7, -26,
					-- layer=2 filter=118 channel=14
					-32, 12, -22, -14, 5, 38, -40, -19, 3,
					-- layer=2 filter=118 channel=15
					-27, -10, -2, -3, -42, -15, -3, -25, 11,
					-- layer=2 filter=118 channel=16
					4, 11, -33, 15, 22, 11, 29, 30, 36,
					-- layer=2 filter=118 channel=17
					-60, -31, -51, -39, 7, -10, 17, 29, -1,
					-- layer=2 filter=118 channel=18
					-47, -62, -8, 0, -7, 11, -52, -27, -7,
					-- layer=2 filter=118 channel=19
					-20, -43, -23, -25, 19, 14, 15, 17, 18,
					-- layer=2 filter=118 channel=20
					-19, -22, -38, 0, 17, 16, 29, 34, 20,
					-- layer=2 filter=118 channel=21
					-16, 15, -13, -37, -53, -64, -6, -2, -2,
					-- layer=2 filter=118 channel=22
					-56, -18, -59, -2, -2, -2, 24, 33, 42,
					-- layer=2 filter=118 channel=23
					-32, 31, 1, -27, 0, 12, -13, 14, 45,
					-- layer=2 filter=118 channel=24
					-21, -33, -27, -19, -8, -1, 25, 29, 3,
					-- layer=2 filter=118 channel=25
					7, -26, 6, -42, -3, -73, 75, 6, -16,
					-- layer=2 filter=118 channel=26
					2, 3, 0, -6, -3, -8, 12, -15, -11,
					-- layer=2 filter=118 channel=27
					14, 5, 7, 12, -6, -4, 13, 11, 9,
					-- layer=2 filter=118 channel=28
					12, 1, -1, 10, -10, 11, 18, -9, -5,
					-- layer=2 filter=118 channel=29
					-65, -81, -38, 32, 15, 13, 40, 28, 34,
					-- layer=2 filter=118 channel=30
					-40, -61, -32, -26, -8, -16, 20, 23, 16,
					-- layer=2 filter=118 channel=31
					44, 0, -21, 23, 1, 18, -49, 15, -13,
					-- layer=2 filter=118 channel=32
					-28, -14, -33, -2, 7, -18, 21, 27, 20,
					-- layer=2 filter=118 channel=33
					-43, 0, -18, -21, -17, -20, 48, 41, 9,
					-- layer=2 filter=118 channel=34
					-36, -49, -23, -19, -92, -87, -46, -66, -13,
					-- layer=2 filter=118 channel=35
					38, 49, 62, 9, 0, -28, -26, -27, -48,
					-- layer=2 filter=118 channel=36
					-22, -27, -17, -7, -18, -1, -3, -8, 0,
					-- layer=2 filter=118 channel=37
					-22, -48, 18, -23, -115, -69, -15, -70, -11,
					-- layer=2 filter=118 channel=38
					12, 49, 4, -15, -45, -10, -102, -15, 1,
					-- layer=2 filter=118 channel=39
					18, 13, 23, 30, -24, 23, -121, -87, -8,
					-- layer=2 filter=118 channel=40
					-45, 29, 23, -47, -6, 18, -77, -21, -3,
					-- layer=2 filter=118 channel=41
					-32, -18, -8, -43, -12, -16, 24, 56, 40,
					-- layer=2 filter=118 channel=42
					-7, -13, 3, -8, 0, 3, 12, 5, -20,
					-- layer=2 filter=118 channel=43
					1, -2, -13, -1, 32, 15, 32, 45, 23,
					-- layer=2 filter=118 channel=44
					30, 31, 0, -2, 23, 12, 9, 21, 35,
					-- layer=2 filter=118 channel=45
					8, -6, -28, -37, -28, -42, 47, 13, 9,
					-- layer=2 filter=118 channel=46
					33, 62, 51, 7, -24, -6, -87, -18, -34,
					-- layer=2 filter=118 channel=47
					-7, 9, -27, -28, -16, -9, -17, 4, 8,
					-- layer=2 filter=118 channel=48
					-4, -14, -13, -14, 19, 0, 14, 22, -3,
					-- layer=2 filter=118 channel=49
					68, 34, 7, -38, -34, 12, -82, -66, -27,
					-- layer=2 filter=118 channel=50
					-28, 5, 8, -10, -77, -53, -9, 0, 7,
					-- layer=2 filter=118 channel=51
					-5, -72, -13, 20, 51, 38, 14, -15, -95,
					-- layer=2 filter=118 channel=52
					4, -16, -13, 16, 25, 36, -43, 24, 14,
					-- layer=2 filter=118 channel=53
					0, 21, -2, -6, -41, -40, -29, -12, 9,
					-- layer=2 filter=118 channel=54
					-3, -10, 1, -10, 9, -1, 5, 8, 18,
					-- layer=2 filter=118 channel=55
					-10, 8, 26, 26, 32, 26, 17, 32, 36,
					-- layer=2 filter=118 channel=56
					0, -14, 7, 11, 2, 4, -37, -9, 10,
					-- layer=2 filter=118 channel=57
					-17, -8, -7, -8, 10, 29, 24, 34, 7,
					-- layer=2 filter=118 channel=58
					63, 69, 0, -36, 2, -51, -23, -5, -44,
					-- layer=2 filter=118 channel=59
					-48, -44, -48, 12, -16, -7, 24, 40, 47,
					-- layer=2 filter=118 channel=60
					57, -10, 61, 27, 24, -21, 14, -23, -53,
					-- layer=2 filter=118 channel=61
					-71, -26, 2, 0, 21, 32, 17, 8, -18,
					-- layer=2 filter=118 channel=62
					-7, -39, -68, -99, -58, -45, 11, 17, 9,
					-- layer=2 filter=118 channel=63
					-64, -46, -35, -32, -3, -19, -10, -8, 18,
					-- layer=2 filter=119 channel=0
					7, 3, 28, 4, 20, -8, 10, 1, 14,
					-- layer=2 filter=119 channel=1
					-34, -14, 32, -10, 9, 19, 13, -7, -19,
					-- layer=2 filter=119 channel=2
					-11, -37, -49, -7, -11, -12, 20, 0, -5,
					-- layer=2 filter=119 channel=3
					-6, -19, 5, -6, -19, -23, 0, 10, -16,
					-- layer=2 filter=119 channel=4
					8, -21, -19, 27, -21, 8, -3, 19, 24,
					-- layer=2 filter=119 channel=5
					-79, -93, -42, -56, -81, -48, -37, -56, 38,
					-- layer=2 filter=119 channel=6
					23, -12, -23, 9, 19, -4, -3, 22, -4,
					-- layer=2 filter=119 channel=7
					-48, 18, -26, -17, 35, 32, 4, 2, -15,
					-- layer=2 filter=119 channel=8
					-78, -4, 36, -39, 20, 91, 13, 8, 70,
					-- layer=2 filter=119 channel=9
					-3, 6, -17, 24, 9, -16, 29, 59, 41,
					-- layer=2 filter=119 channel=10
					-39, 12, -22, -8, 38, 34, -28, -15, 0,
					-- layer=2 filter=119 channel=11
					3, 13, 25, -23, 17, 9, 0, 24, 12,
					-- layer=2 filter=119 channel=12
					4, -24, -30, -6, -20, -10, 5, 5, -8,
					-- layer=2 filter=119 channel=13
					-62, -26, -26, -77, -103, -56, -47, -99, -17,
					-- layer=2 filter=119 channel=14
					0, -18, 7, 20, 6, 9, 13, 15, 15,
					-- layer=2 filter=119 channel=15
					0, 37, -3, -45, 28, 3, -31, -2, -6,
					-- layer=2 filter=119 channel=16
					-9, -5, -37, 13, -10, 2, 46, 17, 16,
					-- layer=2 filter=119 channel=17
					9, 6, 1, 0, -26, -30, 21, 12, 8,
					-- layer=2 filter=119 channel=18
					-15, 6, -33, -70, -29, 10, -20, -8, -15,
					-- layer=2 filter=119 channel=19
					9, -45, -43, -4, -41, -22, -12, 17, 46,
					-- layer=2 filter=119 channel=20
					-8, -40, -31, -1, -17, 14, 33, 26, 7,
					-- layer=2 filter=119 channel=21
					24, 6, 31, 27, 10, -3, 6, 10, -4,
					-- layer=2 filter=119 channel=22
					21, -1, -5, 31, 10, -17, 25, 3, -17,
					-- layer=2 filter=119 channel=23
					0, 13, -4, 1, 27, 12, -14, 33, 0,
					-- layer=2 filter=119 channel=24
					17, -6, -9, 2, -23, 6, 31, -20, 11,
					-- layer=2 filter=119 channel=25
					-1, 16, 1, -53, -20, 6, -31, -1, 14,
					-- layer=2 filter=119 channel=26
					-11, -11, 13, -7, 5, -9, -1, 4, -7,
					-- layer=2 filter=119 channel=27
					-13, -11, -12, 6, 15, -10, 2, 3, -13,
					-- layer=2 filter=119 channel=28
					7, 15, 5, 17, -12, -3, 1, -6, 19,
					-- layer=2 filter=119 channel=29
					-25, -23, -7, -20, -14, 22, 16, -2, -2,
					-- layer=2 filter=119 channel=30
					10, -39, -51, -11, -44, -50, 33, -30, -20,
					-- layer=2 filter=119 channel=31
					-5, 34, 42, 44, 31, 23, 9, 62, 35,
					-- layer=2 filter=119 channel=32
					-3, -13, -11, 4, -16, -1, 23, 19, 23,
					-- layer=2 filter=119 channel=33
					16, 24, -5, 0, 0, -25, 8, 6, -5,
					-- layer=2 filter=119 channel=34
					8, 23, 5, -3, 28, 29, 3, -11, 3,
					-- layer=2 filter=119 channel=35
					-6, -17, 1, 34, -13, -3, 29, 39, 25,
					-- layer=2 filter=119 channel=36
					26, -35, -15, 18, -36, -8, 19, -1, -2,
					-- layer=2 filter=119 channel=37
					-11, -4, 4, 36, 29, 56, 2, -3, -4,
					-- layer=2 filter=119 channel=38
					-23, -18, 10, 8, -44, -26, -19, 45, 2,
					-- layer=2 filter=119 channel=39
					0, -15, 0, 28, -11, -38, 16, -7, -38,
					-- layer=2 filter=119 channel=40
					1, -29, -24, 3, -16, -12, -18, -6, -33,
					-- layer=2 filter=119 channel=41
					6, 19, 5, 14, 28, -14, -2, 23, -15,
					-- layer=2 filter=119 channel=42
					-15, -28, -13, 16, -33, -8, 36, -1, -22,
					-- layer=2 filter=119 channel=43
					7, -12, -19, 3, -18, -1, -1, -9, 24,
					-- layer=2 filter=119 channel=44
					-22, 6, -4, -5, 19, 43, -19, 12, 60,
					-- layer=2 filter=119 channel=45
					43, 21, -16, 7, 5, -15, 18, 0, 0,
					-- layer=2 filter=119 channel=46
					-16, 17, 1, -18, -18, -27, -3, -19, -23,
					-- layer=2 filter=119 channel=47
					-16, 13, 9, -37, 20, -6, -17, 6, -3,
					-- layer=2 filter=119 channel=48
					11, -33, -11, 20, -6, 4, 17, -27, -9,
					-- layer=2 filter=119 channel=49
					-72, -85, -37, -7, -9, -5, -18, -37, -43,
					-- layer=2 filter=119 channel=50
					-17, -1, 3, -18, -8, 0, -1, 8, 6,
					-- layer=2 filter=119 channel=51
					10, -19, -71, -9, 33, -18, 22, 36, -39,
					-- layer=2 filter=119 channel=52
					-28, 39, -11, 1, 39, 33, -19, 45, -10,
					-- layer=2 filter=119 channel=53
					-5, 3, -15, -4, 14, 21, -24, 2, -19,
					-- layer=2 filter=119 channel=54
					3, -2, -7, 8, -7, 1, -12, 15, 44,
					-- layer=2 filter=119 channel=55
					10, 10, -5, -20, 23, 22, 15, 21, 10,
					-- layer=2 filter=119 channel=56
					13, 15, -10, 46, 20, -15, 23, 22, -30,
					-- layer=2 filter=119 channel=57
					-9, 34, 25, -29, -9, 11, -14, 2, 24,
					-- layer=2 filter=119 channel=58
					-4, -52, -77, -63, -67, -75, -43, -73, -47,
					-- layer=2 filter=119 channel=59
					2, 4, -9, 21, 34, 20, -11, 4, -7,
					-- layer=2 filter=119 channel=60
					-14, -12, -57, -13, -35, -43, 6, -38, -44,
					-- layer=2 filter=119 channel=61
					15, -2, -18, -72, 9, -14, 36, 4, 34,
					-- layer=2 filter=119 channel=62
					49, -40, -28, 32, -24, -33, 24, 47, -23,
					-- layer=2 filter=119 channel=63
					28, -27, -3, -10, -24, -12, 8, -5, -2,
					-- layer=2 filter=120 channel=0
					-4, 0, 0, -8, 5, -4, -2, -16, 1,
					-- layer=2 filter=120 channel=1
					-4, -15, -22, 18, -1, -6, -8, -6, 8,
					-- layer=2 filter=120 channel=2
					1, -8, -9, -1, -5, -10, 0, -5, -18,
					-- layer=2 filter=120 channel=3
					-11, -3, -4, 0, -2, -11, -6, -2, -3,
					-- layer=2 filter=120 channel=4
					-4, -20, -29, -6, 3, -23, -26, -18, -19,
					-- layer=2 filter=120 channel=5
					8, -2, 7, -20, 3, 0, -5, -6, -23,
					-- layer=2 filter=120 channel=6
					-13, -19, 0, 3, -18, -5, 3, -21, -7,
					-- layer=2 filter=120 channel=7
					11, -6, 9, -19, -24, -2, 3, 8, -15,
					-- layer=2 filter=120 channel=8
					-10, 1, 2, 7, -5, -9, 6, -13, -18,
					-- layer=2 filter=120 channel=9
					7, 0, 4, 14, 0, -17, 4, 11, -1,
					-- layer=2 filter=120 channel=10
					2, -9, 2, 5, -22, -28, 13, 5, -6,
					-- layer=2 filter=120 channel=11
					-18, -14, -13, -14, -18, -5, 11, 14, 18,
					-- layer=2 filter=120 channel=12
					-12, -27, -19, 0, -19, -22, -14, -2, 0,
					-- layer=2 filter=120 channel=13
					-7, 8, 18, -26, 2, 5, -21, -8, -8,
					-- layer=2 filter=120 channel=14
					-20, -30, 2, -20, -25, -3, -12, -14, -7,
					-- layer=2 filter=120 channel=15
					-26, -18, -12, -16, -3, 8, -8, -13, -23,
					-- layer=2 filter=120 channel=16
					-27, -31, 3, -8, -22, 0, 0, -7, -8,
					-- layer=2 filter=120 channel=17
					-10, -5, -7, -8, -21, 4, -9, -15, -2,
					-- layer=2 filter=120 channel=18
					-15, 7, 1, 3, 14, 15, -3, -20, -6,
					-- layer=2 filter=120 channel=19
					-21, -6, -1, -11, -5, -21, -16, -1, -10,
					-- layer=2 filter=120 channel=20
					-9, -28, -10, -10, -12, -25, -5, -16, 4,
					-- layer=2 filter=120 channel=21
					3, 7, 7, -21, -14, 4, 0, -10, 3,
					-- layer=2 filter=120 channel=22
					-17, -14, -2, -18, 1, 2, -2, -6, -11,
					-- layer=2 filter=120 channel=23
					-21, -27, -15, -20, -17, -24, 0, 5, -13,
					-- layer=2 filter=120 channel=24
					-19, -23, 1, -13, -1, 3, -20, -11, -1,
					-- layer=2 filter=120 channel=25
					11, -10, -11, 32, 25, 16, -9, -15, -20,
					-- layer=2 filter=120 channel=26
					12, 7, -10, 5, 5, 3, 2, 12, -14,
					-- layer=2 filter=120 channel=27
					-8, 6, 13, 4, 12, -10, 3, -9, 0,
					-- layer=2 filter=120 channel=28
					11, -10, -8, 1, 12, 6, 7, -4, -14,
					-- layer=2 filter=120 channel=29
					-4, -3, 7, -14, -14, -15, 6, 0, -19,
					-- layer=2 filter=120 channel=30
					-3, -15, -12, -15, -2, -2, -15, -16, -11,
					-- layer=2 filter=120 channel=31
					1, -9, -18, -12, -4, -18, 1, 8, 0,
					-- layer=2 filter=120 channel=32
					-22, -2, -10, 0, 3, 12, -10, -23, -16,
					-- layer=2 filter=120 channel=33
					-22, -10, -7, -4, -5, -4, -3, -7, -12,
					-- layer=2 filter=120 channel=34
					-20, -1, -7, 6, -19, 2, -11, -5, 6,
					-- layer=2 filter=120 channel=35
					-8, 8, -15, 9, 5, 8, -5, -17, 8,
					-- layer=2 filter=120 channel=36
					-3, -22, 4, -17, -5, -16, -12, -8, -23,
					-- layer=2 filter=120 channel=37
					6, 6, 5, -21, 1, -24, -10, -17, -8,
					-- layer=2 filter=120 channel=38
					-5, -20, -21, -8, 6, -15, -30, 11, -14,
					-- layer=2 filter=120 channel=39
					-20, 4, 9, -9, 3, -11, -17, -21, -14,
					-- layer=2 filter=120 channel=40
					0, -24, -4, -10, -9, 1, 1, 3, -28,
					-- layer=2 filter=120 channel=41
					-18, -5, -1, -13, -19, -6, 11, 0, -1,
					-- layer=2 filter=120 channel=42
					-20, 8, -17, 4, -16, -3, -11, -8, 2,
					-- layer=2 filter=120 channel=43
					-17, -11, -25, -3, 3, 1, -5, -21, 7,
					-- layer=2 filter=120 channel=44
					-24, -12, -30, 0, -20, -16, 0, 13, 6,
					-- layer=2 filter=120 channel=45
					4, -17, -10, -15, -16, 0, -10, -16, -5,
					-- layer=2 filter=120 channel=46
					-7, -2, -25, 4, -4, -25, -9, -21, -6,
					-- layer=2 filter=120 channel=47
					-6, -8, -2, -5, -6, -19, -6, -2, -13,
					-- layer=2 filter=120 channel=48
					-12, -20, -14, -18, -2, -10, -12, -11, 5,
					-- layer=2 filter=120 channel=49
					-1, -2, -13, 25, 0, 20, 8, -4, -1,
					-- layer=2 filter=120 channel=50
					-24, -20, -4, 2, -23, 3, -3, -10, -9,
					-- layer=2 filter=120 channel=51
					-12, -5, 6, -10, 5, -7, -2, 0, -7,
					-- layer=2 filter=120 channel=52
					-9, -5, -18, -14, 0, -27, -9, 3, -12,
					-- layer=2 filter=120 channel=53
					-3, -20, -10, -16, -24, -11, 1, 1, -14,
					-- layer=2 filter=120 channel=54
					-21, -6, -18, 2, 3, -25, 3, 8, 15,
					-- layer=2 filter=120 channel=55
					-16, -5, 6, -7, -4, -24, 6, -17, 4,
					-- layer=2 filter=120 channel=56
					-12, -20, -23, -1, -14, -2, -9, -13, -5,
					-- layer=2 filter=120 channel=57
					-7, -4, 0, -20, -25, -1, 2, -7, -8,
					-- layer=2 filter=120 channel=58
					23, 15, -6, 1, -1, 6, 7, -11, 14,
					-- layer=2 filter=120 channel=59
					-19, 3, -6, -4, -19, -15, -14, -24, -10,
					-- layer=2 filter=120 channel=60
					0, 9, -10, -18, -16, -9, -16, -1, -6,
					-- layer=2 filter=120 channel=61
					-8, 8, 5, -4, -21, -8, -14, -5, -9,
					-- layer=2 filter=120 channel=62
					15, 18, -13, 16, 3, -15, 16, 0, -5,
					-- layer=2 filter=120 channel=63
					-15, -9, 9, 1, 4, 7, -5, -18, 2,
					-- layer=2 filter=121 channel=0
					-50, 1, 8, -25, -15, 6, 14, -37, -5,
					-- layer=2 filter=121 channel=1
					-13, 0, 25, 7, 43, 2, 22, 59, 11,
					-- layer=2 filter=121 channel=2
					-7, -4, 19, -8, -21, -2, -10, 1, -8,
					-- layer=2 filter=121 channel=3
					11, 20, -12, 0, 0, 0, -5, -1, -5,
					-- layer=2 filter=121 channel=4
					-12, 27, -8, -21, -1, -21, -19, -14, -42,
					-- layer=2 filter=121 channel=5
					13, 51, -46, 23, 87, 6, 42, 73, 11,
					-- layer=2 filter=121 channel=6
					-6, 27, 15, 28, 9, 32, 12, -1, 23,
					-- layer=2 filter=121 channel=7
					-39, -40, -11, 0, -47, 33, 69, -12, 41,
					-- layer=2 filter=121 channel=8
					-26, -3, 19, -25, -19, 29, -3, -31, -24,
					-- layer=2 filter=121 channel=9
					16, -23, -36, 45, 22, 28, -15, -5, 22,
					-- layer=2 filter=121 channel=10
					-47, -55, -39, -21, -21, 0, 31, 21, 26,
					-- layer=2 filter=121 channel=11
					-25, -76, -32, 54, -13, 24, 31, 6, 17,
					-- layer=2 filter=121 channel=12
					4, -4, 23, -9, -21, 1, 3, -20, -13,
					-- layer=2 filter=121 channel=13
					24, 18, 0, 0, 82, 76, 23, 31, 38,
					-- layer=2 filter=121 channel=14
					9, 7, -19, 14, -23, -7, 17, -2, 13,
					-- layer=2 filter=121 channel=15
					8, -14, -3, 16, -30, 2, 7, -23, -6,
					-- layer=2 filter=121 channel=16
					-9, -15, -10, -30, -38, -7, 17, -19, 2,
					-- layer=2 filter=121 channel=17
					22, -44, -4, -7, -40, -30, 5, -3, 3,
					-- layer=2 filter=121 channel=18
					-86, 37, -55, -34, -42, -11, 21, -27, 53,
					-- layer=2 filter=121 channel=19
					-6, -3, -3, -17, -25, 1, 4, -6, -39,
					-- layer=2 filter=121 channel=20
					21, 12, 49, -16, -12, -25, 32, -8, -20,
					-- layer=2 filter=121 channel=21
					4, 6, 8, -7, -37, -2, -42, -33, -21,
					-- layer=2 filter=121 channel=22
					-33, 3, -4, -13, -14, -8, -21, -11, -1,
					-- layer=2 filter=121 channel=23
					2, -35, -21, -19, -5, 4, 20, 4, 3,
					-- layer=2 filter=121 channel=24
					7, 18, 12, -12, -9, 26, -10, -49, -8,
					-- layer=2 filter=121 channel=25
					-6, -70, -42, -67, -33, 7, -2, 14, 52,
					-- layer=2 filter=121 channel=26
					-10, -3, 7, -3, 0, 18, 10, 8, 5,
					-- layer=2 filter=121 channel=27
					0, 14, 12, 0, -3, -3, -11, 5, -9,
					-- layer=2 filter=121 channel=28
					12, 15, -4, -13, -5, 0, 9, -2, -3,
					-- layer=2 filter=121 channel=29
					-51, -8, 31, -34, -43, -19, -18, -15, 29,
					-- layer=2 filter=121 channel=30
					0, -3, 20, -19, -31, 31, 23, -2, 27,
					-- layer=2 filter=121 channel=31
					-21, -9, -48, -1, 9, 11, 19, 11, 24,
					-- layer=2 filter=121 channel=32
					-28, -18, -45, -23, 23, -23, -9, -2, -26,
					-- layer=2 filter=121 channel=33
					-17, -2, 13, -9, -3, 23, -4, 12, 33,
					-- layer=2 filter=121 channel=34
					-17, -25, -14, -19, -37, 2, 12, -31, -10,
					-- layer=2 filter=121 channel=35
					-20, 26, 15, -7, 73, 12, 14, 40, 5,
					-- layer=2 filter=121 channel=36
					16, 26, 15, -1, 5, 2, -9, -11, -54,
					-- layer=2 filter=121 channel=37
					-59, -57, -65, -24, -40, 0, 11, -47, 31,
					-- layer=2 filter=121 channel=38
					10, 26, 0, 9, 84, 24, 28, 10, 20,
					-- layer=2 filter=121 channel=39
					-16, 41, 14, 8, 69, -25, 44, 31, -1,
					-- layer=2 filter=121 channel=40
					-19, 23, 1, -40, 38, 18, 21, 4, 3,
					-- layer=2 filter=121 channel=41
					-12, -1, -22, 4, -12, -22, 25, 16, 13,
					-- layer=2 filter=121 channel=42
					-2, 18, 13, -47, -19, -4, -28, 2, 7,
					-- layer=2 filter=121 channel=43
					3, 0, 38, 29, 0, -8, 34, -3, 19,
					-- layer=2 filter=121 channel=44
					2, -16, -24, 12, -23, -13, 16, -1, -4,
					-- layer=2 filter=121 channel=45
					-7, 3, 8, -4, -14, -4, -3, 2, 0,
					-- layer=2 filter=121 channel=46
					-23, -14, -17, 29, 40, 47, 17, 62, 20,
					-- layer=2 filter=121 channel=47
					16, -2, -10, 14, -14, -16, 8, -20, -13,
					-- layer=2 filter=121 channel=48
					-23, -15, 18, -33, -6, -8, -4, -19, -21,
					-- layer=2 filter=121 channel=49
					-31, 16, 6, -16, 45, -10, 12, -12, 15,
					-- layer=2 filter=121 channel=50
					-6, -12, -29, -10, -1, -12, 17, -1, -4,
					-- layer=2 filter=121 channel=51
					18, 17, 24, -63, -19, 1, -6, -29, 28,
					-- layer=2 filter=121 channel=52
					-32, -31, -1, -4, -8, 14, 31, 9, 44,
					-- layer=2 filter=121 channel=53
					-4, -12, -31, -12, 0, -21, 10, -18, 37,
					-- layer=2 filter=121 channel=54
					-21, -23, 32, 15, -46, -5, 27, -9, 37,
					-- layer=2 filter=121 channel=55
					-5, -35, 2, 9, -23, 44, 46, -10, 30,
					-- layer=2 filter=121 channel=56
					-17, -13, -19, -15, 11, 0, 15, 19, 33,
					-- layer=2 filter=121 channel=57
					-10, -32, -26, 14, -10, -5, -12, 12, 36,
					-- layer=2 filter=121 channel=58
					-3, 62, 66, -15, 51, 9, -20, 57, 27,
					-- layer=2 filter=121 channel=59
					-16, -21, -29, -32, -34, -32, 26, -7, 28,
					-- layer=2 filter=121 channel=60
					31, -1, -8, 23, 55, 7, 28, 24, 8,
					-- layer=2 filter=121 channel=61
					-66, 19, 36, -55, 24, -32, -10, 10, 39,
					-- layer=2 filter=121 channel=62
					6, -19, -58, -50, -8, -8, -12, -25, 45,
					-- layer=2 filter=121 channel=63
					11, 18, -52, -11, -22, -6, -26, -10, -5,
					-- layer=2 filter=122 channel=0
					-16, -30, -21, -12, 25, -7, -19, 16, 34,
					-- layer=2 filter=122 channel=1
					-22, -8, -24, -8, -20, -41, 15, -47, 2,
					-- layer=2 filter=122 channel=2
					-27, -1, -19, 14, -22, -18, 17, -3, 8,
					-- layer=2 filter=122 channel=3
					25, 1, 21, -14, -19, -2, -3, -48, -48,
					-- layer=2 filter=122 channel=4
					19, 23, -20, 15, 21, 15, 24, 9, 40,
					-- layer=2 filter=122 channel=5
					68, 20, -54, 0, 25, -14, -15, -24, -11,
					-- layer=2 filter=122 channel=6
					-13, -20, -6, 26, 9, 1, 19, 30, -9,
					-- layer=2 filter=122 channel=7
					10, -40, -36, -33, -7, 14, 54, 36, 36,
					-- layer=2 filter=122 channel=8
					-14, -21, 10, -4, 71, 87, -61, -66, -12,
					-- layer=2 filter=122 channel=9
					5, -59, -34, 32, -38, -39, -16, -21, 6,
					-- layer=2 filter=122 channel=10
					-16, -28, -64, -33, -35, -57, 10, 32, 38,
					-- layer=2 filter=122 channel=11
					-66, -36, -4, -46, -5, -37, 15, 32, 45,
					-- layer=2 filter=122 channel=12
					10, 18, -25, -14, -5, -22, -3, -9, 13,
					-- layer=2 filter=122 channel=13
					-35, -29, -74, -28, -19, -58, -7, 15, -41,
					-- layer=2 filter=122 channel=14
					-21, -19, 0, -15, 8, -6, -9, -10, 23,
					-- layer=2 filter=122 channel=15
					-3, 6, 6, -33, -28, -33, -5, 22, 3,
					-- layer=2 filter=122 channel=16
					-3, -3, -2, -8, 8, 12, 23, 58, -2,
					-- layer=2 filter=122 channel=17
					8, 8, -4, 8, 10, 11, 11, -10, 1,
					-- layer=2 filter=122 channel=18
					-74, 6, 2, 18, 6, 0, -48, 54, 63,
					-- layer=2 filter=122 channel=19
					0, 26, 18, -25, 26, 25, 13, -1, 24,
					-- layer=2 filter=122 channel=20
					-19, 30, 1, -18, -15, -22, -16, -19, -5,
					-- layer=2 filter=122 channel=21
					-5, 17, 1, -1, -12, 3, -12, -7, -18,
					-- layer=2 filter=122 channel=22
					10, 5, 5, 24, 28, 11, -24, 5, 2,
					-- layer=2 filter=122 channel=23
					-1, 2, 27, -6, 17, 9, 16, 45, 8,
					-- layer=2 filter=122 channel=24
					-5, 20, 1, 13, 16, 1, 1, -26, -22,
					-- layer=2 filter=122 channel=25
					-19, -26, -66, -71, -95, -74, -7, 50, 58,
					-- layer=2 filter=122 channel=26
					-14, 15, 1, -3, 0, 14, -8, 12, -16,
					-- layer=2 filter=122 channel=27
					-9, -11, 11, 1, -5, 9, 7, -9, 4,
					-- layer=2 filter=122 channel=28
					2, -1, -11, 10, 13, 5, -17, -11, 3,
					-- layer=2 filter=122 channel=29
					-26, 0, -12, -31, -34, -2, 5, -6, 11,
					-- layer=2 filter=122 channel=30
					-6, -3, -3, 14, 4, -5, 22, 5, -17,
					-- layer=2 filter=122 channel=31
					-33, -27, -24, -13, -24, -15, 15, 5, 41,
					-- layer=2 filter=122 channel=32
					8, 23, -2, -17, -4, 8, -1, 30, -1,
					-- layer=2 filter=122 channel=33
					7, 3, 19, 7, 14, 14, 5, 30, -22,
					-- layer=2 filter=122 channel=34
					-12, -26, -2, -27, -9, -23, -3, -6, 17,
					-- layer=2 filter=122 channel=35
					28, -13, -114, 43, -48, -26, 9, -98, -44,
					-- layer=2 filter=122 channel=36
					15, 32, -3, -14, -9, 0, -14, -37, 11,
					-- layer=2 filter=122 channel=37
					-7, -28, -48, -24, 2, -20, -4, 43, 38,
					-- layer=2 filter=122 channel=38
					11, -25, -36, 8, -11, -68, 15, -30, -9,
					-- layer=2 filter=122 channel=39
					-2, 6, 2, -11, -43, -23, 23, -5, -2,
					-- layer=2 filter=122 channel=40
					60, -9, -76, 10, 0, 0, 19, -4, 0,
					-- layer=2 filter=122 channel=41
					0, 2, 29, 8, 23, 8, 17, 27, -12,
					-- layer=2 filter=122 channel=42
					5, -28, -51, 14, -35, -12, 15, 3, 18,
					-- layer=2 filter=122 channel=43
					-37, -5, 23, 8, 20, 1, 10, 57, 30,
					-- layer=2 filter=122 channel=44
					-29, 4, 7, 5, -3, 17, 38, 55, 48,
					-- layer=2 filter=122 channel=45
					-15, 24, 29, 2, 29, 9, -16, 5, -27,
					-- layer=2 filter=122 channel=46
					-17, -45, 9, 32, -32, -38, 42, -47, -3,
					-- layer=2 filter=122 channel=47
					-31, -13, 21, -22, 2, -14, 7, 10, 0,
					-- layer=2 filter=122 channel=48
					-24, -41, -28, -23, -33, -21, -1, -38, -7,
					-- layer=2 filter=122 channel=49
					-36, -33, -45, 19, 15, -38, -13, 51, -34,
					-- layer=2 filter=122 channel=50
					-19, 11, 14, -4, 5, -20, 11, 16, 3,
					-- layer=2 filter=122 channel=51
					30, -21, -30, -42, -1, -46, 4, 12, 2,
					-- layer=2 filter=122 channel=52
					-59, -22, -47, -54, -55, -77, 8, 50, 47,
					-- layer=2 filter=122 channel=53
					-51, -29, -9, -33, -28, -9, 14, 43, 31,
					-- layer=2 filter=122 channel=54
					-58, -17, -17, -14, 10, -30, 31, 42, 12,
					-- layer=2 filter=122 channel=55
					-20, 26, -47, -54, -68, -44, 31, 44, 80,
					-- layer=2 filter=122 channel=56
					16, -23, -7, 1, -57, -25, 5, -8, 53,
					-- layer=2 filter=122 channel=57
					0, -8, 11, 2, 7, 10, -5, 8, -23,
					-- layer=2 filter=122 channel=58
					87, -16, -101, -35, 19, -7, 61, 18, 72,
					-- layer=2 filter=122 channel=59
					-10, 2, 20, 1, 5, -2, 11, 17, -16,
					-- layer=2 filter=122 channel=60
					66, -38, -30, 29, -46, -1, 8, -7, 1,
					-- layer=2 filter=122 channel=61
					-16, -23, 41, 40, -32, -70, -6, -4, -11,
					-- layer=2 filter=122 channel=62
					-28, 31, 8, -40, 33, 67, 40, 74, 1,
					-- layer=2 filter=122 channel=63
					14, -8, 10, 4, -13, -4, -3, -19, 3,
					-- layer=2 filter=123 channel=0
					2, 11, -24, 0, 21, -4, 47, 32, -9,
					-- layer=2 filter=123 channel=1
					-48, 30, -23, -55, -27, 24, 0, 18, 25,
					-- layer=2 filter=123 channel=2
					-19, 7, -7, 6, 3, 28, -6, -16, 8,
					-- layer=2 filter=123 channel=3
					24, 0, 11, 2, -2, 18, 14, 0, 0,
					-- layer=2 filter=123 channel=4
					13, 43, 28, -2, -16, 1, 26, -3, -3,
					-- layer=2 filter=123 channel=5
					-6, -25, -25, 26, -8, -68, -12, -31, -96,
					-- layer=2 filter=123 channel=6
					16, -2, 8, 20, 16, 29, -33, -31, -10,
					-- layer=2 filter=123 channel=7
					-7, 2, 9, 16, -16, 7, -25, 20, 0,
					-- layer=2 filter=123 channel=8
					-37, -42, -31, -22, 21, 43, 5, 13, 37,
					-- layer=2 filter=123 channel=9
					-31, 6, -16, 0, -38, 4, -19, 14, 43,
					-- layer=2 filter=123 channel=10
					-31, -44, -56, 9, 26, 9, -10, 6, -19,
					-- layer=2 filter=123 channel=11
					4, 36, 23, 5, 26, 41, 19, -2, 26,
					-- layer=2 filter=123 channel=12
					13, 2, 7, 16, -3, -1, -36, -19, -6,
					-- layer=2 filter=123 channel=13
					-37, 27, 1, 20, -21, -64, 1, 0, -60,
					-- layer=2 filter=123 channel=14
					40, 36, 13, 26, -2, -1, 10, -4, 20,
					-- layer=2 filter=123 channel=15
					14, 32, 10, -22, 0, -2, -2, 14, 1,
					-- layer=2 filter=123 channel=16
					-5, -8, 19, -6, 35, 6, -15, -45, -7,
					-- layer=2 filter=123 channel=17
					19, 11, 13, 25, -23, 6, -3, -5, -15,
					-- layer=2 filter=123 channel=18
					21, -1, 33, 39, 13, 15, -36, -40, -49,
					-- layer=2 filter=123 channel=19
					-19, -1, -42, 15, 23, 22, -21, 4, -3,
					-- layer=2 filter=123 channel=20
					20, 27, 5, -17, 27, 0, -2, -22, -9,
					-- layer=2 filter=123 channel=21
					0, 31, 20, 0, -13, -1, -14, -10, 8,
					-- layer=2 filter=123 channel=22
					40, 14, 9, 20, 10, -16, 12, 13, 1,
					-- layer=2 filter=123 channel=23
					-9, -13, 7, -28, -12, 22, 2, -6, -3,
					-- layer=2 filter=123 channel=24
					22, 8, 24, 7, 11, 16, 4, 2, 7,
					-- layer=2 filter=123 channel=25
					14, -7, 7, 11, -42, -17, 11, 23, -3,
					-- layer=2 filter=123 channel=26
					2, -8, 3, -17, 2, 1, -16, -1, -3,
					-- layer=2 filter=123 channel=27
					-6, 11, 3, 0, 2, 12, -11, -7, -1,
					-- layer=2 filter=123 channel=28
					-14, 0, -11, -10, 12, 4, 1, 10, 2,
					-- layer=2 filter=123 channel=29
					1, 0, 14, -27, 8, -12, -35, 0, 10,
					-- layer=2 filter=123 channel=30
					2, 5, -17, -15, -4, -34, 8, -25, -8,
					-- layer=2 filter=123 channel=31
					-18, 28, -21, -9, 24, 43, -23, -35, 58,
					-- layer=2 filter=123 channel=32
					-6, 14, 33, -19, -18, -6, -28, 13, -26,
					-- layer=2 filter=123 channel=33
					-12, -13, 12, 6, -12, 14, -3, 1, -9,
					-- layer=2 filter=123 channel=34
					45, 17, 21, 21, 27, 22, 23, 7, 28,
					-- layer=2 filter=123 channel=35
					-40, 33, 32, -48, -31, 25, -14, 12, 12,
					-- layer=2 filter=123 channel=36
					12, 24, -5, 14, -11, -20, -14, -6, -4,
					-- layer=2 filter=123 channel=37
					-6, 12, 3, 25, 15, -4, 8, 27, 25,
					-- layer=2 filter=123 channel=38
					-49, 14, -46, -5, -28, -24, -43, 1, 1,
					-- layer=2 filter=123 channel=39
					36, 46, 7, 41, -6, -37, 33, -9, -38,
					-- layer=2 filter=123 channel=40
					-24, 24, -35, 22, -38, -51, 1, -19, 0,
					-- layer=2 filter=123 channel=41
					3, 18, 21, 20, 19, 5, -14, -29, -12,
					-- layer=2 filter=123 channel=42
					-12, 25, 25, 5, -10, -5, -17, 2, 23,
					-- layer=2 filter=123 channel=43
					17, -17, -32, -21, 51, 22, -26, -40, -41,
					-- layer=2 filter=123 channel=44
					4, 20, 19, -19, 24, 37, 15, 7, 14,
					-- layer=2 filter=123 channel=45
					15, -16, 0, 11, 0, -1, -5, -13, -19,
					-- layer=2 filter=123 channel=46
					6, 58, 0, -14, -63, -13, -6, 8, 54,
					-- layer=2 filter=123 channel=47
					10, 9, 17, -28, 1, 10, -20, -9, 18,
					-- layer=2 filter=123 channel=48
					-6, -14, -7, 17, 12, 1, -15, -23, 10,
					-- layer=2 filter=123 channel=49
					10, 38, 0, -11, 43, -47, 63, 12, -23,
					-- layer=2 filter=123 channel=50
					20, 1, -3, -7, -11, 8, -20, -11, 2,
					-- layer=2 filter=123 channel=51
					-27, 20, 5, -21, -47, -29, -43, -66, 52,
					-- layer=2 filter=123 channel=52
					4, 11, -6, 28, 51, 55, 26, 13, 2,
					-- layer=2 filter=123 channel=53
					-15, 14, -9, -7, -6, -30, 4, 28, -7,
					-- layer=2 filter=123 channel=54
					2, 33, 18, -23, 0, 0, -14, 5, -1,
					-- layer=2 filter=123 channel=55
					-7, 0, -3, 48, 26, 44, 47, 10, 9,
					-- layer=2 filter=123 channel=56
					-10, -25, -30, 12, -40, 3, 20, -8, 31,
					-- layer=2 filter=123 channel=57
					-4, 0, -18, -11, 0, 2, -3, -27, 19,
					-- layer=2 filter=123 channel=58
					12, -90, -91, 14, -74, -59, 15, -29, -31,
					-- layer=2 filter=123 channel=59
					7, 8, 15, 2, 23, -19, -8, -19, 8,
					-- layer=2 filter=123 channel=60
					-1, -15, -13, -50, -15, 8, 46, 7, 60,
					-- layer=2 filter=123 channel=61
					-30, -60, -16, -17, 13, -18, 2, -1, 1,
					-- layer=2 filter=123 channel=62
					34, -33, -1, -56, -65, 29, 24, -47, -15,
					-- layer=2 filter=123 channel=63
					0, -17, -1, 8, -24, -33, -3, 14, -7,
					-- layer=2 filter=124 channel=0
					23, -6, -16, 1, -15, -11, -59, -10, -14,
					-- layer=2 filter=124 channel=1
					16, 40, -21, 35, 56, 33, -2, 29, -1,
					-- layer=2 filter=124 channel=2
					-26, -9, -2, -33, -9, 11, -6, -8, 2,
					-- layer=2 filter=124 channel=3
					2, -10, -7, 6, 13, 14, -12, 15, 2,
					-- layer=2 filter=124 channel=4
					-11, -19, 18, -15, -31, -6, -9, -8, -8,
					-- layer=2 filter=124 channel=5
					-9, -1, -26, 24, -9, -40, 34, 31, -15,
					-- layer=2 filter=124 channel=6
					-35, -8, -11, -46, -15, 9, 41, 6, -4,
					-- layer=2 filter=124 channel=7
					5, -11, -30, 19, 23, 23, -18, -8, -22,
					-- layer=2 filter=124 channel=8
					20, -5, 45, 19, 38, 49, -2, 13, 17,
					-- layer=2 filter=124 channel=9
					7, 47, 47, 48, 49, 22, 24, 32, 41,
					-- layer=2 filter=124 channel=10
					3, 12, 12, -19, 3, 22, -69, -41, -2,
					-- layer=2 filter=124 channel=11
					11, 31, 12, -25, 23, -8, -44, -65, -18,
					-- layer=2 filter=124 channel=12
					-31, -12, 7, -3, -5, 11, -13, -14, 22,
					-- layer=2 filter=124 channel=13
					37, 43, 15, 37, -21, -36, -7, 35, -24,
					-- layer=2 filter=124 channel=14
					26, 34, 24, -3, 3, 17, -36, -34, 6,
					-- layer=2 filter=124 channel=15
					17, 24, 26, 10, 15, 6, -8, -32, 8,
					-- layer=2 filter=124 channel=16
					-30, 2, 4, -29, -22, 32, 1, -15, -2,
					-- layer=2 filter=124 channel=17
					-8, -2, 10, -37, 5, 21, 10, 17, 5,
					-- layer=2 filter=124 channel=18
					-43, -15, -21, -46, -1, -39, 0, 25, 27,
					-- layer=2 filter=124 channel=19
					7, -48, -2, -71, -15, 30, -7, -20, -2,
					-- layer=2 filter=124 channel=20
					-14, 2, 26, -20, -1, 13, -28, 0, 1,
					-- layer=2 filter=124 channel=21
					-5, 46, 19, -15, 10, 4, -24, 34, -8,
					-- layer=2 filter=124 channel=22
					-9, -9, 27, -14, -6, 12, 0, -19, -31,
					-- layer=2 filter=124 channel=23
					-11, -1, 6, -12, 0, 2, 6, 0, 13,
					-- layer=2 filter=124 channel=24
					-10, -22, -7, -19, 1, -9, 38, 14, 12,
					-- layer=2 filter=124 channel=25
					63, -18, 2, -43, 1, -4, -68, -11, -5,
					-- layer=2 filter=124 channel=26
					-9, -16, 0, -1, 5, -10, 3, -8, 10,
					-- layer=2 filter=124 channel=27
					3, -2, 6, -9, 1, 0, 2, -10, 11,
					-- layer=2 filter=124 channel=28
					7, -1, 9, -3, -4, 6, -3, 13, -12,
					-- layer=2 filter=124 channel=29
					-12, 28, 13, 11, 0, 7, -9, 15, 22,
					-- layer=2 filter=124 channel=30
					-53, -40, 0, -5, -46, -28, 12, 13, 0,
					-- layer=2 filter=124 channel=31
					26, 18, 4, -22, 55, 16, -20, -52, -43,
					-- layer=2 filter=124 channel=32
					-34, 0, -13, 1, -15, 42, -2, 11, 23,
					-- layer=2 filter=124 channel=33
					-10, 14, 20, 14, 6, 12, 30, -1, 0,
					-- layer=2 filter=124 channel=34
					17, 9, 8, -7, 25, 33, -61, -31, 15,
					-- layer=2 filter=124 channel=35
					26, 42, 14, 59, 68, 20, 41, 20, 18,
					-- layer=2 filter=124 channel=36
					-7, -16, 19, -19, -26, 21, -7, -11, 5,
					-- layer=2 filter=124 channel=37
					-22, -7, -12, 4, 27, 25, -53, -34, 11,
					-- layer=2 filter=124 channel=38
					1, 21, 25, 41, 27, 8, 33, 39, 10,
					-- layer=2 filter=124 channel=39
					-10, -34, -57, 6, -44, -35, -59, -41, -31,
					-- layer=2 filter=124 channel=40
					-28, -20, 17, 3, -22, 12, 16, 11, -41,
					-- layer=2 filter=124 channel=41
					6, 23, 6, -16, 8, 2, 9, 3, -20,
					-- layer=2 filter=124 channel=42
					-2, 24, 15, -20, 5, 27, 32, 44, 3,
					-- layer=2 filter=124 channel=43
					-11, 31, 26, -15, -5, 55, -20, -4, 20,
					-- layer=2 filter=124 channel=44
					-1, -9, 13, -10, -13, 8, -16, -19, 1,
					-- layer=2 filter=124 channel=45
					-3, 17, 12, -11, -36, 13, 14, 4, 7,
					-- layer=2 filter=124 channel=46
					-1, 27, -23, -3, 47, -32, 0, 37, 2,
					-- layer=2 filter=124 channel=47
					14, 6, 56, 18, -7, 23, 20, -29, 20,
					-- layer=2 filter=124 channel=48
					-7, -16, 7, -11, 12, 29, -4, 4, 14,
					-- layer=2 filter=124 channel=49
					2, -10, 43, 8, 1, -33, 0, -5, -22,
					-- layer=2 filter=124 channel=50
					-18, 19, -8, 27, -12, 0, 5, 15, -7,
					-- layer=2 filter=124 channel=51
					-28, -4, 34, 42, 42, 15, -32, -28, -29,
					-- layer=2 filter=124 channel=52
					30, 35, -10, -21, 16, -1, -79, -50, -20,
					-- layer=2 filter=124 channel=53
					7, 6, 0, 1, -1, -8, 24, 0, 10,
					-- layer=2 filter=124 channel=54
					0, 4, 29, -45, -16, 40, -30, -44, 5,
					-- layer=2 filter=124 channel=55
					20, 16, -6, -26, 2, -4, -79, -30, 5,
					-- layer=2 filter=124 channel=56
					0, -3, 12, -24, 0, 11, -40, -44, -29,
					-- layer=2 filter=124 channel=57
					-16, 13, 22, -22, 15, 28, 3, -4, -2,
					-- layer=2 filter=124 channel=58
					35, -5, -95, -23, -60, -90, 13, 37, -36,
					-- layer=2 filter=124 channel=59
					7, 28, 6, -18, -22, 29, -30, -20, 24,
					-- layer=2 filter=124 channel=60
					25, 11, 30, 51, 15, 2, 43, 30, 21,
					-- layer=2 filter=124 channel=61
					5, -70, -50, 1, 38, -6, 17, 16, -38,
					-- layer=2 filter=124 channel=62
					29, 30, 20, 2, 14, 10, 25, 63, 0,
					-- layer=2 filter=124 channel=63
					-22, -16, -17, -11, -24, 6, 23, -2, -7,
					-- layer=2 filter=125 channel=0
					12, 67, 8, 13, 37, -3, -7, -16, -28,
					-- layer=2 filter=125 channel=1
					-26, 29, 6, 2, 38, -34, -27, 0, 0,
					-- layer=2 filter=125 channel=2
					17, 2, 12, 3, -10, 27, -12, -20, 3,
					-- layer=2 filter=125 channel=3
					34, -1, -5, 19, -24, -10, 10, 32, 22,
					-- layer=2 filter=125 channel=4
					-23, -11, 9, -8, -45, -21, 21, -11, 40,
					-- layer=2 filter=125 channel=5
					-14, -20, 32, -8, 15, 41, -6, 3, 73,
					-- layer=2 filter=125 channel=6
					-12, -11, -32, 16, 4, -36, 13, -22, -67,
					-- layer=2 filter=125 channel=7
					-35, -2, -54, 8, 30, -2, 27, 25, 11,
					-- layer=2 filter=125 channel=8
					45, 60, 20, 24, 0, -39, -21, -55, -60,
					-- layer=2 filter=125 channel=9
					0, 20, 67, -19, 49, 7, -5, 33, 22,
					-- layer=2 filter=125 channel=10
					4, 59, 52, -24, 26, -28, -18, -12, -37,
					-- layer=2 filter=125 channel=11
					-42, 4, 11, 3, 20, -13, 10, 31, -13,
					-- layer=2 filter=125 channel=12
					16, 3, 7, 7, -33, -6, -23, -12, -7,
					-- layer=2 filter=125 channel=13
					29, -43, -1, 13, 47, 32, 10, 13, 49,
					-- layer=2 filter=125 channel=14
					-58, -36, 18, -28, 6, 10, -25, -26, 1,
					-- layer=2 filter=125 channel=15
					-41, 0, 15, -51, -1, -11, -15, -17, 13,
					-- layer=2 filter=125 channel=16
					21, 4, -41, -7, 17, -10, 41, 61, 29,
					-- layer=2 filter=125 channel=17
					-10, -3, -49, 5, 2, 14, -3, 22, 20,
					-- layer=2 filter=125 channel=18
					-14, -57, 45, -5, 45, 59, -48, -15, 20,
					-- layer=2 filter=125 channel=19
					23, 46, 41, 14, -32, -35, 9, -39, -18,
					-- layer=2 filter=125 channel=20
					36, 0, 8, 22, -28, -20, 12, 6, 3,
					-- layer=2 filter=125 channel=21
					-12, -5, 6, 22, 34, -19, 7, 47, -1,
					-- layer=2 filter=125 channel=22
					29, 40, -27, 15, -40, 0, -44, -26, -37,
					-- layer=2 filter=125 channel=23
					-9, -28, -1, -22, -13, -1, 23, -12, 5,
					-- layer=2 filter=125 channel=24
					26, -19, -40, -7, -11, 8, 28, 17, 6,
					-- layer=2 filter=125 channel=25
					17, -23, -12, 66, 29, 82, 4, -15, -36,
					-- layer=2 filter=125 channel=26
					11, -8, -6, 0, 2, -1, 16, -2, 9,
					-- layer=2 filter=125 channel=27
					-13, 14, -10, -5, 7, 14, -16, -8, -14,
					-- layer=2 filter=125 channel=28
					-5, -26, 11, 13, -30, 8, -8, 12, 2,
					-- layer=2 filter=125 channel=29
					47, 20, 6, 30, -41, 1, -28, -22, -25,
					-- layer=2 filter=125 channel=30
					5, -36, 1, 20, -28, 11, -12, 6, 5,
					-- layer=2 filter=125 channel=31
					-13, 18, 36, 33, 20, -34, -22, -14, -80,
					-- layer=2 filter=125 channel=32
					0, -10, -44, 23, 6, -19, 35, 0, -2,
					-- layer=2 filter=125 channel=33
					-37, -8, 7, 9, 40, -11, 30, 19, -9,
					-- layer=2 filter=125 channel=34
					2, 31, 2, -9, 28, 0, -30, -31, -35,
					-- layer=2 filter=125 channel=35
					-39, -24, 7, -1, 16, 1, -27, -19, -18,
					-- layer=2 filter=125 channel=36
					7, 31, 18, -13, -36, 0, -1, -29, -14,
					-- layer=2 filter=125 channel=37
					48, 46, 30, -15, 10, 21, -7, 22, 19,
					-- layer=2 filter=125 channel=38
					-18, 0, -6, 0, 30, 16, -20, -4, 5,
					-- layer=2 filter=125 channel=39
					0, -10, -6, 15, 6, 9, -16, 25, 6,
					-- layer=2 filter=125 channel=40
					16, 20, -19, 27, -11, -8, -10, -12, 14,
					-- layer=2 filter=125 channel=41
					-5, -25, -11, 0, 24, -5, 24, 6, -2,
					-- layer=2 filter=125 channel=42
					44, 13, 7, 4, -11, 15, -22, -27, -2,
					-- layer=2 filter=125 channel=43
					5, -8, -1, -7, 1, 25, 35, 20, 57,
					-- layer=2 filter=125 channel=44
					-35, 4, 18, -8, -19, 2, 39, 26, 37,
					-- layer=2 filter=125 channel=45
					-14, -44, -24, -10, 9, 2, 32, 29, 15,
					-- layer=2 filter=125 channel=46
					-13, -8, 76, -46, 28, 22, -36, -21, 4,
					-- layer=2 filter=125 channel=47
					0, -21, -2, 0, -44, 2, 7, -2, 18,
					-- layer=2 filter=125 channel=48
					4, 36, 16, 11, -11, -17, -26, -25, -35,
					-- layer=2 filter=125 channel=49
					26, 44, -39, 25, 38, -48, -6, 40, -8,
					-- layer=2 filter=125 channel=50
					-57, -30, 13, -25, 28, 26, 23, 8, 30,
					-- layer=2 filter=125 channel=51
					49, -7, 53, -7, 8, 56, 88, 2, -24,
					-- layer=2 filter=125 channel=52
					-15, 34, 17, -29, 13, -23, -17, 9, -28,
					-- layer=2 filter=125 channel=53
					5, -1, 16, -1, 34, 7, 31, 43, -3,
					-- layer=2 filter=125 channel=54
					-2, 1, -4, 5, -7, 7, 35, 25, 33,
					-- layer=2 filter=125 channel=55
					-5, 17, 30, 9, 26, -6, 14, 15, -2,
					-- layer=2 filter=125 channel=56
					30, 20, 45, 12, 5, 6, -39, 0, -27,
					-- layer=2 filter=125 channel=57
					-36, 6, -36, 3, 3, 3, 9, 4, -4,
					-- layer=2 filter=125 channel=58
					23, -9, 7, -31, 18, 3, -20, -34, -2,
					-- layer=2 filter=125 channel=59
					-8, 7, -3, -36, 15, -31, 0, 17, -17,
					-- layer=2 filter=125 channel=60
					-55, -1, -46, -35, 4, 10, -7, -4, -7,
					-- layer=2 filter=125 channel=61
					-31, 13, -26, 2, 13, -14, -29, 0, -24,
					-- layer=2 filter=125 channel=62
					-3, -45, 18, 19, -62, -26, 16, -31, -20,
					-- layer=2 filter=125 channel=63
					-7, -73, -52, -12, 0, 1, -6, 39, 18,
					-- layer=2 filter=126 channel=0
					-10, -48, -1, 11, -1, 0, 21, 18, -29,
					-- layer=2 filter=126 channel=1
					-34, -39, -25, 36, -17, -8, 3, 6, -17,
					-- layer=2 filter=126 channel=2
					-16, -16, -7, -10, -27, 32, -3, 0, 27,
					-- layer=2 filter=126 channel=3
					5, 0, -5, -29, 18, 29, 21, -13, 50,
					-- layer=2 filter=126 channel=4
					-14, -43, -6, -25, -40, 21, -30, -56, -24,
					-- layer=2 filter=126 channel=5
					14, 46, 30, 42, -16, -12, 8, -25, -70,
					-- layer=2 filter=126 channel=6
					5, -11, -27, 7, 22, -5, 0, 22, -8,
					-- layer=2 filter=126 channel=7
					-50, -38, -59, -63, -25, -62, 8, -19, -9,
					-- layer=2 filter=126 channel=8
					40, 25, 42, 86, 57, 9, 51, 26, 2,
					-- layer=2 filter=126 channel=9
					-16, 3, 33, 0, 4, -38, -59, -17, 2,
					-- layer=2 filter=126 channel=10
					-9, 45, 34, -6, 8, -36, 21, -26, 26,
					-- layer=2 filter=126 channel=11
					-14, 14, -2, -50, -53, -14, 2, -12, -22,
					-- layer=2 filter=126 channel=12
					7, -16, 16, -6, -23, 21, 1, -12, 36,
					-- layer=2 filter=126 channel=13
					31, 53, 37, 51, 41, -6, 67, 5, 60,
					-- layer=2 filter=126 channel=14
					3, 13, -11, -3, 9, 23, -25, -8, -2,
					-- layer=2 filter=126 channel=15
					-13, -16, -13, -34, 22, -17, 8, 12, 7,
					-- layer=2 filter=126 channel=16
					13, 9, -14, 9, -26, -1, -26, 21, 26,
					-- layer=2 filter=126 channel=17
					10, -32, -13, -17, 24, 33, -14, 30, 8,
					-- layer=2 filter=126 channel=18
					-27, 0, 10, 23, 25, 25, -67, 8, 8,
					-- layer=2 filter=126 channel=19
					-4, -4, 24, -12, -28, 22, -18, -12, 35,
					-- layer=2 filter=126 channel=20
					11, 1, -2, -13, -17, 26, -29, -2, 28,
					-- layer=2 filter=126 channel=21
					43, -16, -17, -18, 20, -1, -1, 28, -23,
					-- layer=2 filter=126 channel=22
					-4, -12, 12, -8, -10, 9, -31, -16, 8,
					-- layer=2 filter=126 channel=23
					-7, 17, -33, 8, 15, -21, -2, 43, 14,
					-- layer=2 filter=126 channel=24
					-16, -21, 12, 0, -7, 31, -7, -2, 33,
					-- layer=2 filter=126 channel=25
					13, -67, -24, 3, 70, -40, -11, -88, -2,
					-- layer=2 filter=126 channel=26
					4, 2, 10, 12, 14, 3, 6, -5, 0,
					-- layer=2 filter=126 channel=27
					-11, -5, -9, 2, 6, 7, -9, 5, 14,
					-- layer=2 filter=126 channel=28
					0, 16, -9, 7, 5, -9, -5, 7, 12,
					-- layer=2 filter=126 channel=29
					-6, 9, 12, -28, -22, 26, 11, -8, 4,
					-- layer=2 filter=126 channel=30
					-6, -1, 32, -29, 4, 16, -51, -8, 34,
					-- layer=2 filter=126 channel=31
					-4, 6, 24, -1, -18, -3, 23, -5, -34,
					-- layer=2 filter=126 channel=32
					-4, 18, 23, -2, 49, -19, 18, 10, 19,
					-- layer=2 filter=126 channel=33
					9, -2, -19, -9, 28, -2, -11, 41, 1,
					-- layer=2 filter=126 channel=34
					14, 0, 30, -18, 16, -2, 24, -9, -19,
					-- layer=2 filter=126 channel=35
					-74, -5, -31, 37, -2, -11, -22, 25, -19,
					-- layer=2 filter=126 channel=36
					-8, -13, -5, -8, 8, 43, 3, 4, 44,
					-- layer=2 filter=126 channel=37
					11, -5, -9, -36, -2, -39, 22, -18, -11,
					-- layer=2 filter=126 channel=38
					10, -77, 3, 13, -13, -17, -31, -34, 34,
					-- layer=2 filter=126 channel=39
					13, 0, 53, 43, 25, 37, 26, 87, -27,
					-- layer=2 filter=126 channel=40
					3, -11, 9, -27, -28, 13, -39, -47, 27,
					-- layer=2 filter=126 channel=41
					23, -4, -34, 4, 5, -21, 2, 20, 5,
					-- layer=2 filter=126 channel=42
					-1, -13, 19, 8, -7, 8, -5, 6, 18,
					-- layer=2 filter=126 channel=43
					-9, 2, -39, 7, -11, -11, 1, 30, 34,
					-- layer=2 filter=126 channel=44
					0, 3, -9, -25, -18, 10, -38, -41, -16,
					-- layer=2 filter=126 channel=45
					28, -2, -3, 4, 4, -7, -21, 47, -1,
					-- layer=2 filter=126 channel=46
					-22, -39, 3, -39, -35, -71, -6, -20, 15,
					-- layer=2 filter=126 channel=47
					22, 10, -3, 7, 9, 48, 3, 19, 11,
					-- layer=2 filter=126 channel=48
					-29, 0, 17, -2, -3, 10, -6, -26, 5,
					-- layer=2 filter=126 channel=49
					16, -22, 5, -10, 7, 48, 58, 16, 11,
					-- layer=2 filter=126 channel=50
					49, -24, -33, -28, 21, -28, -16, 17, 1,
					-- layer=2 filter=126 channel=51
					31, -11, 29, -10, -2, 2, -24, 9, -5,
					-- layer=2 filter=126 channel=52
					-37, 23, 0, 2, 18, -9, -19, -1, 30,
					-- layer=2 filter=126 channel=53
					-17, 6, -17, -38, 0, -49, 28, 25, -11,
					-- layer=2 filter=126 channel=54
					3, 15, -26, -19, -3, 14, -4, 18, 58,
					-- layer=2 filter=126 channel=55
					-7, -6, -18, 31, 3, -31, 13, -4, 38,
					-- layer=2 filter=126 channel=56
					-11, 22, 32, 5, 15, -16, 9, 16, 12,
					-- layer=2 filter=126 channel=57
					-18, 0, -16, -12, 17, 14, -25, 42, 8,
					-- layer=2 filter=126 channel=58
					37, -7, -65, 0, -70, -42, 18, 24, 1,
					-- layer=2 filter=126 channel=59
					-2, 18, -10, 2, 48, -1, 4, 12, 24,
					-- layer=2 filter=126 channel=60
					-30, -10, -9, -40, 2, -5, 15, 25, 6,
					-- layer=2 filter=126 channel=61
					-9, 17, 33, 36, -15, -3, -19, 5, -34,
					-- layer=2 filter=126 channel=62
					-28, 7, 10, -73, -15, 36, -33, 39, -31,
					-- layer=2 filter=126 channel=63
					43, -27, -31, -29, 18, 20, 18, 25, -6,
					-- layer=2 filter=127 channel=0
					-8, -10, -3, -1, 3, 4, -5, -6, 2,
					-- layer=2 filter=127 channel=1
					-4, 0, -19, -14, -14, 4, -13, -21, -2,
					-- layer=2 filter=127 channel=2
					-4, 2, -6, -5, -5, 3, -16, -3, 6,
					-- layer=2 filter=127 channel=3
					-12, 3, 3, -7, -7, 0, -5, 9, -15,
					-- layer=2 filter=127 channel=4
					-16, -21, 0, -10, 0, 6, 12, -10, 1,
					-- layer=2 filter=127 channel=5
					-7, -7, 9, 0, 0, -2, 3, 0, 16,
					-- layer=2 filter=127 channel=6
					0, -4, -14, 1, -8, 13, -1, -4, -7,
					-- layer=2 filter=127 channel=7
					2, 2, 18, -14, -8, 2, 15, -1, -15,
					-- layer=2 filter=127 channel=8
					-11, 13, -1, -11, -2, 16, 11, 0, 14,
					-- layer=2 filter=127 channel=9
					2, -16, -10, 0, 2, -11, 7, 0, 6,
					-- layer=2 filter=127 channel=10
					5, -20, -4, -5, -4, 1, -13, -5, 1,
					-- layer=2 filter=127 channel=11
					-11, 3, -8, -2, -9, 10, -4, -11, -4,
					-- layer=2 filter=127 channel=12
					-17, 1, -14, 3, -13, -14, 0, -11, -8,
					-- layer=2 filter=127 channel=13
					-12, 14, -10, -5, 0, -19, 14, -3, -24,
					-- layer=2 filter=127 channel=14
					-20, -12, 4, 6, -7, 9, -13, -4, 0,
					-- layer=2 filter=127 channel=15
					-11, 8, 13, 0, 3, -15, -18, -21, -7,
					-- layer=2 filter=127 channel=16
					-20, -16, -14, 2, -12, 0, -2, -8, -6,
					-- layer=2 filter=127 channel=17
					-2, -2, -15, -15, -7, 4, 0, -2, 1,
					-- layer=2 filter=127 channel=18
					2, 8, -9, -3, 15, 3, 13, 3, -7,
					-- layer=2 filter=127 channel=19
					2, -17, -9, 0, 0, -1, -13, -3, 13,
					-- layer=2 filter=127 channel=20
					-17, -20, -8, -5, -18, -7, 2, 9, -7,
					-- layer=2 filter=127 channel=21
					-1, 0, 12, 0, -5, -5, -13, 0, 0,
					-- layer=2 filter=127 channel=22
					-12, -16, -6, -18, 5, -2, 3, -18, 4,
					-- layer=2 filter=127 channel=23
					-21, 5, -12, 2, -13, 0, -3, 7, 5,
					-- layer=2 filter=127 channel=24
					-9, 0, 10, 8, 0, -8, 6, -16, -15,
					-- layer=2 filter=127 channel=25
					-2, 12, 5, -14, -3, -6, 13, 0, -5,
					-- layer=2 filter=127 channel=26
					-7, -2, 8, 12, -12, 12, 6, 11, 1,
					-- layer=2 filter=127 channel=27
					13, 3, 15, -8, -14, -6, 10, -6, -9,
					-- layer=2 filter=127 channel=28
					-15, 5, 4, 12, -1, 9, 5, -1, 10,
					-- layer=2 filter=127 channel=29
					-9, -2, 4, 5, -22, -17, -4, -12, 9,
					-- layer=2 filter=127 channel=30
					7, -16, -7, 9, -20, -10, 1, -2, 0,
					-- layer=2 filter=127 channel=31
					-22, -22, -7, 8, -2, -11, -15, 0, -1,
					-- layer=2 filter=127 channel=32
					-16, -1, 0, -17, 3, -1, -4, -2, 3,
					-- layer=2 filter=127 channel=33
					-3, 0, 8, -26, -5, -24, 3, -13, -3,
					-- layer=2 filter=127 channel=34
					3, -5, -6, -21, -2, 11, -5, 1, -18,
					-- layer=2 filter=127 channel=35
					0, -7, -5, -1, 10, 3, -1, -9, -3,
					-- layer=2 filter=127 channel=36
					-13, -10, -12, 9, -7, -1, 0, 5, -1,
					-- layer=2 filter=127 channel=37
					-11, 16, -4, -7, -18, 3, -16, -16, 0,
					-- layer=2 filter=127 channel=38
					-12, -7, -14, 9, 1, 1, 6, 1, 8,
					-- layer=2 filter=127 channel=39
					-13, 4, 11, 0, 0, 9, -5, 0, -3,
					-- layer=2 filter=127 channel=40
					0, -6, 5, -1, -6, -15, -11, -6, 12,
					-- layer=2 filter=127 channel=41
					-15, -4, 1, -8, -18, -16, 1, -9, 3,
					-- layer=2 filter=127 channel=42
					-15, -21, 2, -4, -17, -6, -14, 0, -13,
					-- layer=2 filter=127 channel=43
					-4, -16, 5, -1, -2, 0, -17, -20, -18,
					-- layer=2 filter=127 channel=44
					-25, 0, 1, 4, -4, 5, 4, -10, 15,
					-- layer=2 filter=127 channel=45
					-8, -14, 10, -9, 1, 7, -2, -6, -4,
					-- layer=2 filter=127 channel=46
					-18, 0, 4, -6, -22, -9, 3, 8, -6,
					-- layer=2 filter=127 channel=47
					-9, -6, -15, -9, -20, -14, -1, -21, -20,
					-- layer=2 filter=127 channel=48
					-17, 6, 1, -14, 4, -10, 3, -7, -16,
					-- layer=2 filter=127 channel=49
					-1, -5, 0, -1, 5, -15, -10, -13, 0,
					-- layer=2 filter=127 channel=50
					-11, -10, 8, -11, 0, -10, -11, -6, -14,
					-- layer=2 filter=127 channel=51
					-14, 12, 2, -5, -14, -8, -14, 12, -7,
					-- layer=2 filter=127 channel=52
					3, -12, -17, -16, -3, 3, 12, 7, -14,
					-- layer=2 filter=127 channel=53
					3, 13, 2, -16, -3, -11, -13, -11, -27,
					-- layer=2 filter=127 channel=54
					-16, 0, -7, 1, -11, -9, 10, -21, -6,
					-- layer=2 filter=127 channel=55
					6, -11, -11, -8, -12, -14, -8, 4, -7,
					-- layer=2 filter=127 channel=56
					-10, 4, -15, 6, -20, -12, -11, -24, -18,
					-- layer=2 filter=127 channel=57
					-6, 9, -4, 0, -16, -5, -1, -19, -23,
					-- layer=2 filter=127 channel=58
					-7, -6, -5, -1, 7, 12, -15, -11, -2,
					-- layer=2 filter=127 channel=59
					6, 13, -1, 0, -24, -9, -19, -11, -11,
					-- layer=2 filter=127 channel=60
					-11, -16, -14, -16, -1, -11, 3, -1, 9,
					-- layer=2 filter=127 channel=61
					-13, 0, -1, -9, -8, -6, 9, -13, 11,
					-- layer=2 filter=127 channel=62
					11, -1, 1, 10, 2, -7, -1, 1, 0,
					-- layer=2 filter=127 channel=63
					0, -10, -1, -16, -5, -13, 8, -1, 5,

			0, 0, 0, 108, 141, 68, 56, 
			59, 36, 110, 20, 0, 14, 48, 
			27, 93, 79, 0, 0, 38, 0, 
			50, 65, 0, 126, 26, 34, 0, 
			10, 18, 95, 0, 85, 134, 0, 
			29, 0, 212, 145, 8, 0, 0, 
			76, 130, 32, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 11, 0, 
			0, 0, 0, 78, 0, 0, 166, 
			0, 99, 0, 45, 0, 134, 0, 
			0, 63, 0, 0, 0, 161, 0, 
			0, 0, 100, 0, 0, 38, 0, 
			0, 0, 181, 0, 48, 0, 0, 
			199, 0, 59, 4, 0, 0, 0, 
			

			72, 84, 56, 53, 0, 43, 49, 
			64, 86, 57, 64, 31, 58, 57, 
			48, 98, 0, 43, 26, 53, 13, 
			26, 35, 0, 0, 58, 37, 48, 
			8, 71, 109, 35, 0, 0, 28, 
			0, 14, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			56, 81, 5, 16, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 57, 0, 0, 0, 0, 0, 
			0, 0, 36, 3, 38, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			31, 0, 0, 0, 0, 0, 0, 
			0, 105, 0, 0, 0, 0, 0, 
			

			6, 1, 11, 32, 3, 0, 0, 
			67, 17, 0, 57, 71, 40, 5, 
			52, 19, 0, 45, 159, 50, 17, 
			29, 0, 1, 34, 42, 4, 16, 
			0, 125, 6, 0, 1, 0, 0, 
			0, 54, 4, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			5, 0, 0, 0, 13, 0, 9, 
			39, 23, 0, 0, 0, 0, 66, 
			0, 110, 0, 0, 0, 0, 0, 
			0, 82, 0, 0, 0, 0, 0, 
			0, 0, 48, 0, 0, 104, 0, 
			0, 0, 0, 0, 56, 41, 0, 
			45, 0, 19, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 20, 
			113, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 21, 0, 0, 0, 
			33, 0, 0, 92, 285, 345, 351, 
			204, 0, 227, 327, 367, 390, 383, 
			

			114, 0, 138, 79, 0, 0, 26, 
			0, 0, 0, 0, 32, 0, 0, 
			0, 0, 0, 0, 43, 0, 0, 
			0, 0, 75, 0, 31, 68, 3, 
			0, 0, 0, 0, 0, 0, 39, 
			0, 40, 76, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			221, 221, 205, 297, 177, 123, 183, 
			95, 288, 121, 0, 0, 0, 0, 
			0, 135, 0, 0, 0, 0, 0, 
			0, 136, 8, 0, 0, 0, 0, 
			0, 0, 3, 0, 63, 92, 209, 
			0, 0, 0, 27, 37, 57, 17, 
			58, 0, 0, 13, 33, 20, 17, 
			

			0, 0, 12, 0, 0, 21, 0, 
			0, 0, 0, 47, 0, 62, 0, 
			203, 0, 104, 256, 0, 86, 179, 
			327, 26, 0, 56, 0, 62, 0, 
			224, 109, 0, 187, 0, 0, 0, 
			0, 0, 0, 0, 77, 0, 0, 
			0, 3, 0, 0, 0, 0, 0, 
			

			52, 27, 94, 62, 134, 116, 85, 
			115, 84, 165, 84, 34, 16, 54, 
			94, 47, 211, 92, 49, 59, 94, 
			95, 106, 25, 17, 0, 22, 0, 
			10, 52, 136, 153, 92, 116, 133, 
			93, 33, 253, 87, 92, 126, 63, 
			0, 142, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			14, 0, 74, 0, 0, 24, 0, 
			0, 0, 0, 71, 0, 0, 56, 
			0, 0, 0, 0, 0, 0, 9, 
			0, 60, 121, 0, 0, 80, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 2, 
			

			208, 213, 198, 120, 54, 46, 117, 
			118, 173, 120, 75, 67, 49, 44, 
			0, 120, 54, 66, 100, 45, 20, 
			0, 58, 62, 13, 45, 29, 60, 
			0, 42, 22, 0, 0, 0, 9, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 9, 0, 0, 0, 0, 
			0, 0, 0, 0, 97, 0, 0, 
			0, 42, 0, 0, 194, 0, 0, 
			0, 0, 197, 0, 88, 0, 10, 
			0, 0, 0, 84, 0, 0, 141, 
			1, 294, 0, 0, 0, 97, 8, 
			0, 0, 23, 0, 57, 18, 105, 
			

			0, 0, 0, 0, 0, 26, 0, 
			71, 0, 70, 34, 0, 72, 0, 
			0, 0, 0, 189, 0, 75, 0, 
			72, 0, 0, 42, 0, 1, 0, 
			72, 109, 126, 0, 0, 0, 0, 
			0, 0, 107, 0, 0, 0, 0, 
			0, 0, 0, 50, 31, 10, 53, 
			

			0, 0, 0, 0, 5, 12, 27, 
			47, 0, 0, 0, 11, 0, 0, 
			0, 0, 0, 0, 36, 0, 0, 
			0, 0, 59, 0, 0, 0, 0, 
			0, 0, 0, 0, 31, 89, 67, 
			205, 0, 86, 113, 11, 17, 34, 
			80, 147, 80, 33, 13, 40, 30, 
			

			22, 90, 0, 0, 0, 0, 10, 
			0, 29, 0, 0, 20, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 82, 
			27, 0, 0, 0, 0, 0, 90, 
			0, 0, 0, 0, 53, 135, 76, 
			0, 0, 0, 91, 129, 104, 57, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 36, 38, 0, 2, 0, 0, 
			0, 0, 0, 0, 20, 0, 5, 
			10, 39, 18, 0, 0, 0, 0, 
			0, 48, 46, 0, 0, 40, 2, 
			0, 0, 0, 0, 0, 0, 0, 
			24, 0, 0, 0, 5, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			177, 162, 188, 215, 121, 92, 114, 
			75, 185, 141, 71, 0, 0, 12, 
			0, 0, 0, 19, 0, 9, 0, 
			0, 49, 0, 0, 0, 6, 0, 
			0, 0, 18, 0, 30, 22, 5, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			90, 123, 85, 16, 0, 0, 0, 
			0, 57, 0, 0, 50, 0, 0, 
			0, 5, 0, 0, 74, 0, 0, 
			0, 0, 13, 0, 55, 0, 12, 
			0, 1, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 52, 0, 0, 
			0, 0, 0, 0, 82, 0, 0, 
			0, 0, 67, 0, 81, 0, 24, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			155, 0, 51, 81, 85, 122, 106, 
			

			37, 22, 6, 118, 22, 51, 26, 
			49, 88, 85, 89, 0, 85, 0, 
			139, 26, 34, 145, 4, 147, 0, 
			164, 133, 70, 122, 0, 49, 0, 
			104, 84, 108, 18, 103, 0, 0, 
			0, 46, 120, 0, 17, 0, 12, 
			0, 18, 54, 29, 5, 16, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 14, 17, 20, 
			65, 0, 0, 0, 9, 0, 16, 
			51, 0, 0, 0, 66, 0, 14, 
			87, 37, 123, 48, 38, 45, 27, 
			186, 138, 28, 154, 182, 265, 273, 
			345, 103, 155, 232, 264, 282, 314, 
			

			64, 80, 53, 29, 22, 54, 40, 
			10, 36, 0, 0, 14, 0, 33, 
			0, 11, 0, 0, 0, 0, 0, 
			4, 21, 49, 0, 19, 0, 47, 
			0, 0, 0, 23, 0, 0, 54, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 14, 
			54, 0, 0, 0, 147, 96, 86, 
			0, 0, 113, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			196, 234, 131, 69, 0, 0, 62, 
			18, 126, 37, 13, 22, 78, 20, 
			0, 167, 116, 70, 0, 52, 5, 
			0, 16, 7, 27, 6, 30, 100, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			89, 207, 84, 91, 0, 0, 5, 
			0, 104, 0, 0, 0, 39, 0, 
			0, 0, 0, 83, 0, 28, 5, 
			49, 0, 0, 0, 0, 0, 7, 
			111, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 41, 86, 0, 91, 0, 
			100, 4, 138, 103, 0, 35, 87, 
			0, 96, 0, 141, 41, 59, 6, 
			111, 109, 0, 0, 0, 26, 0, 
			0, 98, 137, 21, 103, 0, 0, 
			0, 0, 30, 0, 0, 0, 0, 
			39, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 50, 0, 0, 
			0, 0, 0, 0, 29, 0, 0, 
			0, 0, 58, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			24, 0, 0, 0, 0, 166, 78, 
			48, 0, 0, 55, 120, 123, 101, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 42, 0, 3, 68, 56, 
			154, 0, 81, 143, 160, 213, 208, 
			316, 88, 172, 177, 195, 208, 212, 
			

			97, 37, 97, 137, 74, 55, 101, 
			42, 53, 43, 1, 4, 0, 50, 
			33, 150, 156, 0, 0, 14, 7, 
			5, 98, 111, 64, 37, 81, 15, 
			0, 0, 0, 0, 91, 65, 19, 
			162, 21, 186, 89, 0, 0, 0, 
			34, 239, 14, 0, 0, 0, 0, 
			

			0, 0, 0, 12, 0, 45, 0, 
			312, 0, 100, 100, 129, 112, 208, 
			75, 393, 0, 9, 301, 99, 0, 
			0, 0, 0, 11, 342, 3, 0, 
			0, 259, 421, 0, 17, 0, 0, 
			0, 118, 64, 0, 0, 0, 0, 
			193, 0, 41, 0, 0, 0, 0, 
			

			136, 154, 128, 130, 52, 27, 80, 
			50, 134, 41, 52, 0, 41, 51, 
			40, 191, 56, 61, 0, 59, 6, 
			4, 65, 14, 76, 51, 99, 26, 
			0, 4, 0, 0, 19, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 82, 0, 0, 60, 
			0, 0, 0, 0, 44, 0, 0, 
			63, 101, 42, 0, 10, 22, 0, 
			0, 0, 121, 50, 26, 0, 0, 
			0, 0, 0, 0, 106, 0, 69, 
			155, 16, 174, 85, 0, 0, 0, 
			0, 112, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 40, 0, 58, 0, 
			38, 0, 0, 142, 0, 122, 92, 
			104, 0, 0, 206, 0, 261, 45, 
			134, 107, 0, 138, 0, 172, 0, 
			0, 0, 139, 4, 36, 45, 0, 
			0, 0, 253, 0, 72, 0, 1, 
			8, 0, 36, 43, 11, 9, 0, 
			

			0, 0, 0, 63, 92, 0, 23, 
			0, 27, 93, 69, 0, 31, 57, 
			0, 72, 0, 52, 0, 151, 36, 
			49, 80, 0, 140, 0, 98, 0, 
			0, 54, 204, 0, 79, 133, 0, 
			0, 0, 129, 43, 0, 0, 0, 
			0, 143, 0, 0, 0, 0, 0, 
			

			6, 58, 0, 115, 0, 12, 12, 
			17, 12, 36, 115, 0, 155, 3, 
			223, 0, 0, 174, 0, 193, 8, 
			197, 34, 0, 179, 0, 97, 0, 
			127, 80, 92, 0, 39, 0, 0, 
			0, 0, 1, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			61, 0, 0, 0, 30, 6, 0, 
			93, 81, 62, 32, 0, 23, 0, 
			112, 136, 146, 152, 179, 169, 193, 
			203, 167, 239, 155, 173, 194, 208, 
			

			31, 34, 0, 0, 0, 0, 21, 
			0, 48, 0, 0, 69, 34, 57, 
			207, 126, 61, 9, 34, 89, 41, 
			147, 139, 25, 34, 52, 81, 104, 
			63, 80, 20, 77, 0, 0, 17, 
			47, 30, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 64, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 20, 
			0, 0, 0, 0, 0, 0, 7, 
			0, 0, 0, 0, 0, 74, 46, 
			0, 0, 0, 50, 66, 43, 0, 
			

			21, 27, 7, 21, 21, 60, 31, 
			33, 0, 31, 55, 12, 74, 73, 
			16, 22, 0, 40, 0, 71, 63, 
			10, 6, 0, 68, 0, 32, 54, 
			0, 20, 77, 0, 51, 59, 31, 
			0, 0, 118, 58, 38, 37, 38, 
			19, 0, 16, 16, 2, 4, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			2, 0, 0, 104, 13, 101, 129, 
			187, 0, 0, 175, 169, 199, 188, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 67, 
			0, 0, 0, 0, 0, 96, 130, 
			133, 230, 0, 0, 0, 117, 0, 
			0, 0, 0, 204, 17, 79, 0, 
			0, 0, 0, 0, 13, 7, 0, 
			118, 150, 0, 10, 5, 0, 0, 
			

			48, 27, 0, 0, 0, 6, 30, 
			7, 12, 0, 0, 27, 24, 6, 
			0, 0, 0, 0, 3, 0, 7, 
			0, 0, 0, 40, 33, 47, 58, 
			63, 58, 0, 0, 50, 58, 101, 
			126, 13, 44, 90, 88, 83, 118, 
			154, 174, 152, 137, 125, 150, 160, 
			

			104, 92, 106, 105, 75, 45, 80, 
			53, 129, 84, 66, 35, 29, 33, 
			20, 107, 36, 69, 52, 49, 10, 
			19, 95, 11, 26, 29, 40, 8, 
			0, 40, 17, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 21, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 54, 0, 
			0, 0, 0, 68, 0, 56, 0, 
			0, 0, 0, 0, 86, 153, 0, 
			195, 0, 277, 327, 163, 122, 189, 
			114, 426, 156, 172, 120, 218, 55, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 19, 0, 0, 
			0, 0, 30, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			34, 0, 0, 0, 0, 0, 0, 
			272, 87, 74, 193, 0, 47, 79, 
			95, 269, 56, 76, 67, 109, 96, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 78, 0, 0, 0, 0, 
			

			0, 0, 45, 0, 0, 24, 0, 
			30, 24, 53, 61, 0, 41, 0, 
			0, 0, 56, 129, 0, 0, 22, 
			0, 0, 0, 0, 0, 37, 0, 
			0, 85, 92, 104, 0, 28, 50, 
			0, 80, 71, 0, 31, 63, 31, 
			0, 0, 29, 20, 20, 0, 53, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 6, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 32, 0, 65, 11, 39, 
			87, 0, 164, 123, 105, 136, 117, 
			166, 114, 107, 91, 118, 139, 161, 
			

			0, 27, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 5, 0, 0, 
			0, 0, 0, 0, 4, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 1, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 61, 0, 0, 0, 
			0, 0, 0, 0, 0, 7, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 37, 69, 3, 32, 0, 
			0, 4, 46, 121, 34, 103, 63, 
			212, 143, 103, 132, 68, 155, 68, 
			255, 115, 132, 84, 83, 115, 8, 
			167, 137, 177, 153, 127, 0, 24, 
			95, 266, 105, 33, 52, 18, 40, 
			18, 225, 43, 0, 1, 0, 25, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 7, 0, 63, 32, 
			108, 0, 0, 33, 51, 37, 71, 
			

			0, 0, 0, 0, 164, 0, 24, 
			361, 210, 98, 0, 215, 0, 0, 
			0, 0, 125, 28, 440, 0, 13, 
			0, 0, 0, 0, 0, 0, 27, 
			41, 552, 157, 0, 0, 126, 0, 
			0, 0, 71, 0, 66, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 4, 0, 
			180, 0, 190, 31, 0, 43, 22, 
			98, 0, 0, 41, 0, 16, 4, 
			74, 0, 0, 9, 10, 0, 0, 
			140, 22, 312, 102, 116, 132, 108, 
			63, 146, 122, 88, 90, 122, 89, 
			

			38, 0, 120, 1, 113, 0, 51, 
			106, 163, 44, 0, 215, 0, 0, 
			231, 0, 128, 0, 339, 0, 89, 
			325, 147, 335, 0, 0, 0, 109, 
			289, 308, 0, 103, 101, 0, 166, 
			208, 308, 0, 81, 0, 0, 26, 
			0, 263, 0, 1, 23, 15, 76, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 81, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 156, 8, 0, 0, 0, 
			81, 0, 0, 0, 0, 0, 0, 
			128, 157, 0, 54, 0, 0, 0, 
			0, 219, 0, 38, 47, 61, 94, 
			
		others=>0 );
END inmem_package;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=2
					-12272, 9996, -1475, 11073, -2366, -1184, 19964, 1296, 20466, 15832, 3151, -1691, 8682, 4445, 25096, -4673, -37, 7359, 882, 9506, 1731, -7055, -3113, 4918, 7972, 7172, -2180, 10987, -1202, -2160, -2337, 6666, 1771, 366, 10220, 8450, 7109, 14904, 7692, -2182, -5693, 6449, 15557, 12971, -1495, 14198, -1813, 8581, 970, -10139, 16232, -9248, -9459, 3610, 4404, -6677, -5140, -479, -2968, -1398, 12545, 4228, 9129, -3816,

					-- weights
					-- layer=2 filter=0 channel=0
					-11, 29, 22, -22, -31, -44, -12, 10, 1,
					-- layer=2 filter=0 channel=1
					6, -1, -27, -12, 7, -6, 26, 27, 20,
					-- layer=2 filter=0 channel=2
					23, 48, 13, -7, 22, -5, -13, 11, 28,
					-- layer=2 filter=0 channel=3
					-16, -22, 8, 0, 13, 8, -29, -10, -6,
					-- layer=2 filter=0 channel=4
					7, 57, 44, 19, 89, 84, 33, 89, 72,
					-- layer=2 filter=0 channel=5
					14, -41, -7, 19, 5, -36, 45, -17, 0,
					-- layer=2 filter=0 channel=6
					26, -19, -19, -10, 16, -10, 17, 8, 4,
					-- layer=2 filter=0 channel=7
					-11, -5, -30, 26, 50, 22, 46, 74, 9,
					-- layer=2 filter=0 channel=8
					4, -55, -21, 13, -7, 8, 20, -15, -26,
					-- layer=2 filter=0 channel=9
					-12, 1, -16, -17, -30, 5, 25, -1, -14,
					-- layer=2 filter=0 channel=10
					51, -89, -80, -21, -55, -43, -17, -2, -14,
					-- layer=2 filter=0 channel=11
					25, 15, -27, -4, -13, 0, -6, -24, -48,
					-- layer=2 filter=0 channel=12
					29, 51, 36, 15, 74, 66, 8, 65, 78,
					-- layer=2 filter=0 channel=13
					-39, -9, -45, -34, 2, -7, 14, -5, 6,
					-- layer=2 filter=0 channel=14
					-19, 12, -28, 19, -5, -6, -13, -7, 1,
					-- layer=2 filter=0 channel=15
					5, 5, 0, 23, 21, 18, 9, 70, 50,
					-- layer=2 filter=0 channel=16
					0, 47, 28, -8, 37, 36, -22, 0, -10,
					-- layer=2 filter=0 channel=17
					-5, 12, 7, 47, 51, 30, 32, 67, 30,
					-- layer=2 filter=0 channel=18
					34, 1, 1, 23, 17, -19, -42, -25, -17,
					-- layer=2 filter=0 channel=19
					0, 24, 10, -42, -43, -26, 19, -3, 40,
					-- layer=2 filter=0 channel=20
					-10, -16, -31, 25, 14, 13, 13, 23, -17,
					-- layer=2 filter=0 channel=21
					4, 16, -25, -15, 11, -8, 8, 16, 0,
					-- layer=2 filter=0 channel=22
					-35, 35, 0, 14, 68, 1, 44, 43, 29,
					-- layer=2 filter=0 channel=23
					-4, -10, -14, 4, -33, -27, -23, -6, -7,
					-- layer=2 filter=0 channel=24
					12, 24, -3, -2, 38, 9, 25, 38, 11,
					-- layer=2 filter=0 channel=25
					-19, 0, -40, -31, -62, -79, -44, -15, 13,
					-- layer=2 filter=0 channel=26
					32, 33, 17, 15, 12, -9, 15, -4, -28,
					-- layer=2 filter=0 channel=27
					24, -15, 7, 14, -9, -25, -45, -72, -15,
					-- layer=2 filter=0 channel=28
					-1, -28, -70, 22, 23, -23, -10, 53, 21,
					-- layer=2 filter=0 channel=29
					22, 19, -1, 6, -20, -23, -1, -14, -53,
					-- layer=2 filter=0 channel=30
					19, 15, -17, 1, -1, -19, -51, -41, -13,
					-- layer=2 filter=0 channel=31
					-15, -52, -37, 5, -32, -31, -26, -54, -22,
					-- layer=2 filter=1 channel=0
					-15, 33, 42, -31, -37, -36, 2, -25, 2,
					-- layer=2 filter=1 channel=1
					7, -2, 17, 39, -33, -27, -22, 0, 26,
					-- layer=2 filter=1 channel=2
					11, 33, 30, 10, 19, 0, -1, 17, -3,
					-- layer=2 filter=1 channel=3
					-20, 18, -3, 6, -3, -9, 10, -28, -8,
					-- layer=2 filter=1 channel=4
					1, -109, -107, 12, -142, -151, 73, -22, -34,
					-- layer=2 filter=1 channel=5
					46, 49, 33, -35, 1, 20, -14, 12, 24,
					-- layer=2 filter=1 channel=6
					27, 37, 35, -38, 20, 28, -38, 7, 22,
					-- layer=2 filter=1 channel=7
					-30, -57, -47, -38, -144, -128, -25, -83, -78,
					-- layer=2 filter=1 channel=8
					11, -2, 30, -6, -13, 12, -2, -6, 36,
					-- layer=2 filter=1 channel=9
					9, 50, 15, 4, 4, 0, 18, 18, 8,
					-- layer=2 filter=1 channel=10
					115, -16, -38, 40, -13, 11, 79, 51, 50,
					-- layer=2 filter=1 channel=11
					22, 25, 24, 19, 39, 0, -9, 4, 26,
					-- layer=2 filter=1 channel=12
					-47, -73, -85, -44, -130, -188, 12, -73, -148,
					-- layer=2 filter=1 channel=13
					34, 8, -11, -1, 4, 24, 26, 28, 9,
					-- layer=2 filter=1 channel=14
					10, 11, -9, -6, -17, -15, 21, -18, -11,
					-- layer=2 filter=1 channel=15
					-10, -73, -101, -24, -95, -101, -35, -29, -71,
					-- layer=2 filter=1 channel=16
					-10, -13, 16, 7, 19, 29, 33, 5, 2,
					-- layer=2 filter=1 channel=17
					-27, -39, -80, -28, -86, -93, 16, -4, -42,
					-- layer=2 filter=1 channel=18
					-7, 10, -20, -31, 21, 31, -36, -7, 16,
					-- layer=2 filter=1 channel=19
					51, 59, 43, 5, 8, 10, 6, 32, 53,
					-- layer=2 filter=1 channel=20
					-14, 35, 5, -3, 40, 28, -17, -20, 17,
					-- layer=2 filter=1 channel=21
					26, 59, -8, 38, 13, 1, 14, -38, -11,
					-- layer=2 filter=1 channel=22
					-22, -34, -61, -21, 5, -31, 14, 35, -7,
					-- layer=2 filter=1 channel=23
					-21, 0, 11, -17, 21, 11, -5, 14, 24,
					-- layer=2 filter=1 channel=24
					19, -33, -2, 2, 3, -30, -22, 0, -10,
					-- layer=2 filter=1 channel=25
					-7, 23, 26, 7, 25, 38, 44, 15, 41,
					-- layer=2 filter=1 channel=26
					11, -5, -5, -3, -18, 0, -5, -24, 10,
					-- layer=2 filter=1 channel=27
					-2, 8, -14, 24, -16, 20, 37, 41, 9,
					-- layer=2 filter=1 channel=28
					8, 6, -29, 3, 8, -43, 15, -12, -53,
					-- layer=2 filter=1 channel=29
					5, 10, 25, -12, 3, 22, -46, -12, 9,
					-- layer=2 filter=1 channel=30
					9, -11, -31, -15, 7, -46, -4, 16, -27,
					-- layer=2 filter=1 channel=31
					33, 23, 24, -10, 24, 21, -20, -5, 24,
					-- layer=2 filter=2 channel=0
					-30, -9, -21, -37, 6, 13, 15, -14, 20,
					-- layer=2 filter=2 channel=1
					-25, 11, -14, -63, -60, 10, -31, -14, -29,
					-- layer=2 filter=2 channel=2
					-39, -17, -30, -5, -12, -5, 10, 41, 50,
					-- layer=2 filter=2 channel=3
					1, 14, 19, 21, 10, 9, -2, -1, 2,
					-- layer=2 filter=2 channel=4
					-23, 40, 2, -36, -24, -39, -3, -81, -77,
					-- layer=2 filter=2 channel=5
					-7, -33, -20, 6, -10, 12, 45, 39, 43,
					-- layer=2 filter=2 channel=6
					12, -38, -29, 27, -7, -31, 9, 6, -11,
					-- layer=2 filter=2 channel=7
					15, 37, 67, -13, -5, 60, 13, -28, -18,
					-- layer=2 filter=2 channel=8
					45, 11, 19, 20, 21, -3, 43, 11, -18,
					-- layer=2 filter=2 channel=9
					-13, -14, -67, -62, -47, -44, -40, -20, -58,
					-- layer=2 filter=2 channel=10
					-17, -50, -33, -5, -37, -35, -5, 27, 29,
					-- layer=2 filter=2 channel=11
					4, 2, -32, 20, 24, -15, 24, 46, 37,
					-- layer=2 filter=2 channel=12
					11, 12, 7, -5, -13, -40, 6, -38, -44,
					-- layer=2 filter=2 channel=13
					0, 40, 20, 10, -37, 22, 34, -2, 12,
					-- layer=2 filter=2 channel=14
					5, -2, -5, 1, -19, 1, 17, 14, -6,
					-- layer=2 filter=2 channel=15
					25, -38, -20, 24, 15, 14, -21, 19, 60,
					-- layer=2 filter=2 channel=16
					-32, -33, 1, -11, -7, -1, 18, 18, 24,
					-- layer=2 filter=2 channel=17
					12, -9, 4, 42, 6, -19, -15, -56, -37,
					-- layer=2 filter=2 channel=18
					-17, -3, -32, 23, 14, 9, 49, 34, 38,
					-- layer=2 filter=2 channel=19
					-36, -21, -17, -48, -33, -21, -14, 43, 55,
					-- layer=2 filter=2 channel=20
					36, 6, 0, 34, 19, -27, 10, -24, -48,
					-- layer=2 filter=2 channel=21
					-68, -21, 0, -73, -15, -18, -86, 0, -61,
					-- layer=2 filter=2 channel=22
					-10, 4, -24, -13, -37, -29, -41, -51, -50,
					-- layer=2 filter=2 channel=23
					10, -7, -6, -5, -4, 9, -26, -29, -35,
					-- layer=2 filter=2 channel=24
					-9, -38, -37, 6, -25, -30, -6, 44, 14,
					-- layer=2 filter=2 channel=25
					-26, -11, 21, -46, -4, 54, 51, 16, 28,
					-- layer=2 filter=2 channel=26
					-6, -38, -29, -26, 24, 2, 7, 23, 54,
					-- layer=2 filter=2 channel=27
					-9, -10, 51, -24, 0, 22, 9, -31, 10,
					-- layer=2 filter=2 channel=28
					26, -37, -24, 33, -28, -25, 44, 22, 50,
					-- layer=2 filter=2 channel=29
					-21, 10, -28, -6, 19, 2, 44, 36, 48,
					-- layer=2 filter=2 channel=30
					-20, -8, -7, -26, -25, 3, 2, -6, 18,
					-- layer=2 filter=2 channel=31
					29, 19, 9, 11, 14, 12, 20, 8, 16,
					-- layer=2 filter=3 channel=0
					50, 48, 30, 19, 40, 0, 36, -1, 30,
					-- layer=2 filter=3 channel=1
					-10, -12, -33, 8, 32, 26, 15, -1, 25,
					-- layer=2 filter=3 channel=2
					-4, 11, 8, 26, 23, -7, -44, -48, -36,
					-- layer=2 filter=3 channel=3
					-17, 1, 12, 2, 14, 3, 8, 10, 12,
					-- layer=2 filter=3 channel=4
					22, -4, -32, -14, -35, 1, -7, 21, -33,
					-- layer=2 filter=3 channel=5
					-24, -17, 11, -22, 3, -24, -10, -9, -4,
					-- layer=2 filter=3 channel=6
					17, -11, 13, -30, -12, -16, 13, 0, 12,
					-- layer=2 filter=3 channel=7
					-25, -112, -81, -45, -95, -36, -14, -27, -50,
					-- layer=2 filter=3 channel=8
					-7, -28, -18, -1, -8, -17, 20, 4, -2,
					-- layer=2 filter=3 channel=9
					3, 36, 17, 1, 9, 12, 11, 9, 15,
					-- layer=2 filter=3 channel=10
					11, 13, 2, 6, -9, -11, 16, 16, 34,
					-- layer=2 filter=3 channel=11
					-50, -21, -33, -43, -2, -65, -44, -50, -11,
					-- layer=2 filter=3 channel=12
					-14, 5, 9, -29, -15, -44, 13, -29, -45,
					-- layer=2 filter=3 channel=13
					-2, -7, -19, 11, -7, -23, 7, 25, -8,
					-- layer=2 filter=3 channel=14
					6, 20, -3, 2, 22, 10, -16, 8, -22,
					-- layer=2 filter=3 channel=15
					-46, -61, -20, -80, -57, -41, -53, -30, 9,
					-- layer=2 filter=3 channel=16
					3, 54, 46, -1, 40, -9, -30, 4, -24,
					-- layer=2 filter=3 channel=17
					11, -19, -20, -22, -29, -37, -5, -3, -41,
					-- layer=2 filter=3 channel=18
					-6, -54, -31, -25, -33, -8, -38, 11, 8,
					-- layer=2 filter=3 channel=19
					6, 26, 12, 6, 11, -5, 19, 34, 29,
					-- layer=2 filter=3 channel=20
					-3, -17, -5, -7, -3, -19, 0, -13, -2,
					-- layer=2 filter=3 channel=21
					0, -17, -4, -43, -21, -48, -12, -49, 12,
					-- layer=2 filter=3 channel=22
					36, 38, 30, 2, 13, 24, 23, 27, 56,
					-- layer=2 filter=3 channel=23
					54, 10, 18, 59, 56, 13, 24, 1, 9,
					-- layer=2 filter=3 channel=24
					-5, 40, 8, -9, -22, -23, -23, -52, -35,
					-- layer=2 filter=3 channel=25
					-1, -12, 36, -7, -18, -32, 0, -14, -16,
					-- layer=2 filter=3 channel=26
					-34, -66, -81, -64, -86, -73, -19, -8, 0,
					-- layer=2 filter=3 channel=27
					18, 36, 18, 53, 61, 54, 13, -2, 22,
					-- layer=2 filter=3 channel=28
					-84, -65, -52, -40, -100, -87, -55, -47, -36,
					-- layer=2 filter=3 channel=29
					-6, 10, -62, -20, -60, -37, -37, -28, -33,
					-- layer=2 filter=3 channel=30
					35, 21, 33, 44, 53, 29, 2, -2, 28,
					-- layer=2 filter=3 channel=31
					-12, 16, 10, 17, -6, 1, -4, -19, 1,
					-- layer=2 filter=4 channel=0
					39, -20, -67, 11, -20, -21, -18, -33, -12,
					-- layer=2 filter=4 channel=1
					-19, -29, -25, 21, -25, 7, -53, -86, -83,
					-- layer=2 filter=4 channel=2
					44, -26, 24, 29, -16, 6, -33, -79, -56,
					-- layer=2 filter=4 channel=3
					1, 8, 4, 19, -16, -10, -4, 10, -3,
					-- layer=2 filter=4 channel=4
					9, -57, -27, 70, 73, 34, 66, 125, 99,
					-- layer=2 filter=4 channel=5
					-5, 17, 11, 22, 2, -5, 18, 10, 2,
					-- layer=2 filter=4 channel=6
					-9, 3, 13, -7, 27, 29, 8, 5, -10,
					-- layer=2 filter=4 channel=7
					-11, -17, -18, 10, 13, 11, 46, 33, 19,
					-- layer=2 filter=4 channel=8
					-34, 17, 42, -38, 23, 22, -2, -15, -18,
					-- layer=2 filter=4 channel=9
					0, -2, -33, 0, -14, -32, -32, -41, -25,
					-- layer=2 filter=4 channel=10
					52, 22, -31, 1, 33, -49, -13, -43, -66,
					-- layer=2 filter=4 channel=11
					0, -10, 6, 8, -34, -7, -10, -33, -40,
					-- layer=2 filter=4 channel=12
					14, 8, -11, 8, 12, 5, 50, 68, 72,
					-- layer=2 filter=4 channel=13
					-33, -23, 0, -14, -27, -49, 8, -18, -15,
					-- layer=2 filter=4 channel=14
					13, -7, -2, -4, 1, 17, 18, -10, 19,
					-- layer=2 filter=4 channel=15
					24, 12, -33, 4, 14, 50, 1, -31, 3,
					-- layer=2 filter=4 channel=16
					37, -17, 4, 23, -1, 10, -15, -75, -61,
					-- layer=2 filter=4 channel=17
					-21, -4, 3, 13, 6, 38, 64, 93, 49,
					-- layer=2 filter=4 channel=18
					19, 10, 2, 30, -9, 7, 4, -1, 22,
					-- layer=2 filter=4 channel=19
					35, 7, -12, 23, -13, -9, -22, -36, -39,
					-- layer=2 filter=4 channel=20
					-22, -24, 28, 0, 14, 34, 6, 16, 32,
					-- layer=2 filter=4 channel=21
					8, -36, -26, -1, -11, 0, -8, -40, -18,
					-- layer=2 filter=4 channel=22
					-2, 3, 0, 22, 29, 7, 39, 72, 0,
					-- layer=2 filter=4 channel=23
					-5, -19, -25, 0, 15, 38, -6, 16, 18,
					-- layer=2 filter=4 channel=24
					4, -11, -15, -33, -44, -24, -56, -43, -46,
					-- layer=2 filter=4 channel=25
					49, 11, 13, 14, 7, -5, 54, 13, 52,
					-- layer=2 filter=4 channel=26
					42, -4, 33, 15, -19, -13, 22, -16, 3,
					-- layer=2 filter=4 channel=27
					-3, 2, -34, -24, -13, 7, -27, -7, -5,
					-- layer=2 filter=4 channel=28
					-24, 5, -1, 13, 0, 13, 25, -3, 15,
					-- layer=2 filter=4 channel=29
					18, -11, 25, 16, 8, 7, -18, -2, -9,
					-- layer=2 filter=4 channel=30
					2, 2, 14, -14, 0, -10, 0, -1, -8,
					-- layer=2 filter=4 channel=31
					-4, 14, -2, -7, 24, 11, -7, 31, 7,
					-- layer=2 filter=5 channel=0
					-1, -26, -1, 16, -5, -4, -4, -16, -21,
					-- layer=2 filter=5 channel=1
					-5, 7, -19, -21, -44, -32, 5, -34, 0,
					-- layer=2 filter=5 channel=2
					-16, 5, -22, -5, -22, -21, -17, -21, 3,
					-- layer=2 filter=5 channel=3
					10, 0, 7, -16, -17, 0, 12, 9, -21,
					-- layer=2 filter=5 channel=4
					-12, -23, -14, -4, 0, -31, -15, -8, 9,
					-- layer=2 filter=5 channel=5
					-8, -17, -4, 3, 0, 0, -27, -5, -25,
					-- layer=2 filter=5 channel=6
					0, 6, 6, 0, -15, 10, -24, 10, -4,
					-- layer=2 filter=5 channel=7
					7, -14, -26, -26, -9, -11, -31, -29, -13,
					-- layer=2 filter=5 channel=8
					-20, 15, -8, -20, 13, -12, 7, -21, -17,
					-- layer=2 filter=5 channel=9
					-4, -11, -4, 14, -7, -13, -20, -25, 7,
					-- layer=2 filter=5 channel=10
					-15, 2, 12, 28, 8, -6, 20, 9, 11,
					-- layer=2 filter=5 channel=11
					-23, 9, -8, -23, -6, -19, -21, -13, -11,
					-- layer=2 filter=5 channel=12
					-5, -7, -24, -30, 13, -29, -9, 2, -29,
					-- layer=2 filter=5 channel=13
					-34, -8, -36, -23, -27, -7, -3, -4, 15,
					-- layer=2 filter=5 channel=14
					-1, -7, 15, 2, -7, 11, 19, -13, -2,
					-- layer=2 filter=5 channel=15
					-46, -44, -25, -6, -5, -15, -13, 3, 0,
					-- layer=2 filter=5 channel=16
					-16, 0, -4, -13, -25, -20, 5, 2, -12,
					-- layer=2 filter=5 channel=17
					-15, -22, 0, -4, -11, -25, -8, 3, -34,
					-- layer=2 filter=5 channel=18
					-6, -8, -8, 0, 4, -27, 11, -29, -18,
					-- layer=2 filter=5 channel=19
					-31, -7, -27, -24, -14, -13, -4, -12, -6,
					-- layer=2 filter=5 channel=20
					-11, -14, 17, 21, 9, 3, 4, -5, -1,
					-- layer=2 filter=5 channel=21
					2, -4, -2, -21, -27, -29, -6, 10, -4,
					-- layer=2 filter=5 channel=22
					-14, -26, -15, 3, -1, -28, 4, 6, 3,
					-- layer=2 filter=5 channel=23
					-14, -30, -10, 6, -7, -35, -10, -17, 14,
					-- layer=2 filter=5 channel=24
					17, 0, 1, 0, 24, -17, 20, -16, -17,
					-- layer=2 filter=5 channel=25
					-8, -34, -26, -2, -15, 9, -7, -22, 0,
					-- layer=2 filter=5 channel=26
					-24, -17, 0, 2, -20, 0, -19, 0, -8,
					-- layer=2 filter=5 channel=27
					-24, -30, -32, -31, -7, -8, 5, 8, -4,
					-- layer=2 filter=5 channel=28
					13, -7, -19, 5, 14, 16, 17, 3, -12,
					-- layer=2 filter=5 channel=29
					-27, -27, -11, -24, 7, 5, -3, 9, -1,
					-- layer=2 filter=5 channel=30
					-13, -20, -29, -31, -7, 8, -17, -31, -27,
					-- layer=2 filter=5 channel=31
					7, -27, -5, -18, -16, -22, -1, -8, 0,
					-- layer=2 filter=6 channel=0
					28, 11, 9, -3, 0, 38, 14, -8, 32,
					-- layer=2 filter=6 channel=1
					-22, -49, -23, -23, -34, -8, 14, -37, 18,
					-- layer=2 filter=6 channel=2
					37, 27, -24, 14, 42, 8, -11, -15, 20,
					-- layer=2 filter=6 channel=3
					-15, 4, 0, 8, 0, 7, 23, -11, 14,
					-- layer=2 filter=6 channel=4
					29, -28, 40, 45, 1, 45, 39, 40, 9,
					-- layer=2 filter=6 channel=5
					-33, -8, -47, -68, -34, -37, -23, -3, -19,
					-- layer=2 filter=6 channel=6
					-5, 6, -38, -21, -26, -6, 12, 1, 1,
					-- layer=2 filter=6 channel=7
					-39, -43, -4, -27, -23, -7, -26, -53, -39,
					-- layer=2 filter=6 channel=8
					-22, 0, 5, -19, -30, -23, 0, -21, -19,
					-- layer=2 filter=6 channel=9
					2, -12, -33, 7, -29, -2, 7, -12, 8,
					-- layer=2 filter=6 channel=10
					35, 28, -26, 53, 17, 0, 24, -32, -11,
					-- layer=2 filter=6 channel=11
					-25, -51, -21, -22, -5, -38, -41, -9, -5,
					-- layer=2 filter=6 channel=12
					18, -14, 4, 24, -26, 35, 0, -13, -2,
					-- layer=2 filter=6 channel=13
					-54, -53, -19, -40, -69, -28, -30, -61, -41,
					-- layer=2 filter=6 channel=14
					-15, 0, -10, -20, 1, -12, 4, 9, 11,
					-- layer=2 filter=6 channel=15
					30, -11, 3, 27, -52, -4, 26, 9, 32,
					-- layer=2 filter=6 channel=16
					19, 46, 40, 39, 40, 12, 3, 15, 22,
					-- layer=2 filter=6 channel=17
					32, -10, 33, 40, -33, 7, 46, 7, -46,
					-- layer=2 filter=6 channel=18
					-13, -16, -5, 17, -2, -25, -25, 39, 7,
					-- layer=2 filter=6 channel=19
					18, -27, -5, -12, -46, 0, 11, -2, 41,
					-- layer=2 filter=6 channel=20
					11, -36, -28, -56, -50, -33, -61, -37, -56,
					-- layer=2 filter=6 channel=21
					5, -6, -39, -14, -62, -35, -12, -33, -17,
					-- layer=2 filter=6 channel=22
					-8, 26, 19, -8, 12, 4, 8, 26, -24,
					-- layer=2 filter=6 channel=23
					15, -3, -12, -30, 19, -11, 0, 16, 17,
					-- layer=2 filter=6 channel=24
					-18, -35, -29, -51, -33, -40, -43, -49, -18,
					-- layer=2 filter=6 channel=25
					-45, -16, -17, -36, -46, -9, -45, -43, -11,
					-- layer=2 filter=6 channel=26
					-30, -47, -24, 7, -18, -25, 37, 37, 19,
					-- layer=2 filter=6 channel=27
					-7, 26, 24, -17, 37, 48, -4, 17, 15,
					-- layer=2 filter=6 channel=28
					3, -60, -10, 25, -48, -44, -12, -5, -47,
					-- layer=2 filter=6 channel=29
					-17, -15, -39, 5, -6, -4, -12, 12, -24,
					-- layer=2 filter=6 channel=30
					-12, 34, 0, 6, 39, 20, -55, -14, -3,
					-- layer=2 filter=6 channel=31
					13, 34, 18, 23, 31, 31, -9, 14, 26,
					-- layer=2 filter=7 channel=0
					8, 29, 12, 34, -41, -55, -59, -91, -72,
					-- layer=2 filter=7 channel=1
					49, -11, -11, 13, 52, 25, -24, -28, -11,
					-- layer=2 filter=7 channel=2
					25, -19, 5, -31, -31, 16, -108, -42, 4,
					-- layer=2 filter=7 channel=3
					8, -6, 0, -5, -11, 2, 1, -8, 10,
					-- layer=2 filter=7 channel=4
					-78, -35, -61, -85, -57, 24, 3, -55, 4,
					-- layer=2 filter=7 channel=5
					11, -9, -17, 45, 27, -15, 23, 22, -36,
					-- layer=2 filter=7 channel=6
					63, 35, -5, 42, -8, -42, 8, 24, -58,
					-- layer=2 filter=7 channel=7
					8, 25, -8, -46, -5, 85, -32, -4, 68,
					-- layer=2 filter=7 channel=8
					22, 15, 8, 32, 42, -26, 42, 2, -22,
					-- layer=2 filter=7 channel=9
					62, 27, 24, 40, 26, -11, 26, 0, -49,
					-- layer=2 filter=7 channel=10
					-26, -39, -18, 43, 3, -10, 110, 30, 28,
					-- layer=2 filter=7 channel=11
					46, 9, 21, 12, 0, 15, -23, -24, 23,
					-- layer=2 filter=7 channel=12
					-9, 10, 71, -22, -54, 32, -2, -3, 27,
					-- layer=2 filter=7 channel=13
					12, -19, 25, -7, -14, -4, -85, -68, -59,
					-- layer=2 filter=7 channel=14
					-6, 8, 2, -14, -16, 13, 2, -1, -14,
					-- layer=2 filter=7 channel=15
					-6, -26, 7, 39, 3, 72, 29, -60, 8,
					-- layer=2 filter=7 channel=16
					9, 5, 15, -24, -22, -3, -57, -6, 59,
					-- layer=2 filter=7 channel=17
					-25, -30, -9, -82, -91, 35, 12, -84, 12,
					-- layer=2 filter=7 channel=18
					28, 1, 5, -11, -22, -8, -51, -35, -31,
					-- layer=2 filter=7 channel=19
					45, 27, 7, 24, -14, -43, -51, -53, -34,
					-- layer=2 filter=7 channel=20
					18, -18, -7, 12, -6, -13, 34, 21, 23,
					-- layer=2 filter=7 channel=21
					60, 12, 29, 27, 24, 30, 29, 6, -6,
					-- layer=2 filter=7 channel=22
					-11, -2, -76, -1, -45, -58, 5, -52, -62,
					-- layer=2 filter=7 channel=23
					-10, -17, -31, -4, 2, -12, 44, 2, -6,
					-- layer=2 filter=7 channel=24
					32, 6, 37, -31, -11, 40, -51, 0, 6,
					-- layer=2 filter=7 channel=25
					9, -21, 4, 15, 20, 20, -13, -47, -47,
					-- layer=2 filter=7 channel=26
					0, 15, 25, -15, -13, -8, -42, -57, -21,
					-- layer=2 filter=7 channel=27
					-16, 0, 14, -66, -3, -20, -27, -18, -19,
					-- layer=2 filter=7 channel=28
					-30, 19, 27, -28, -61, 14, -72, -37, -14,
					-- layer=2 filter=7 channel=29
					32, 26, 16, 25, 37, -23, 7, -20, -31,
					-- layer=2 filter=7 channel=30
					10, 28, -3, -21, 15, 31, -17, 25, 30,
					-- layer=2 filter=7 channel=31
					36, 29, 4, 27, 37, -20, 40, 0, -39,
					-- layer=2 filter=8 channel=0
					-26, 31, -34, 24, 11, 37, 75, 20, 9,
					-- layer=2 filter=8 channel=1
					-65, -18, -59, -21, -2, 31, -4, -32, 28,
					-- layer=2 filter=8 channel=2
					32, 30, 28, -28, 8, 13, -42, -26, -21,
					-- layer=2 filter=8 channel=3
					2, 1, 19, 22, -19, 9, -13, -7, 6,
					-- layer=2 filter=8 channel=4
					-76, -33, 6, -44, -10, 0, -1, 5, 62,
					-- layer=2 filter=8 channel=5
					-19, -24, -15, -17, 12, -7, 10, -12, -29,
					-- layer=2 filter=8 channel=6
					-38, -53, -25, -11, -2, -9, 36, 0, -5,
					-- layer=2 filter=8 channel=7
					-131, -70, -21, -126, -76, -20, -102, -68, 19,
					-- layer=2 filter=8 channel=8
					-52, -5, 3, 41, 4, 4, 34, -18, -24,
					-- layer=2 filter=8 channel=9
					-3, -1, -34, -33, -13, -30, 1, -3, 20,
					-- layer=2 filter=8 channel=10
					-15, -26, -9, -31, 6, -32, -21, -7, 40,
					-- layer=2 filter=8 channel=11
					-4, -14, -8, -37, -25, -29, -10, 17, 4,
					-- layer=2 filter=8 channel=12
					-62, -103, -58, -97, -71, 11, -23, -12, 38,
					-- layer=2 filter=8 channel=13
					-22, -8, 9, -32, -55, 19, -39, -9, 47,
					-- layer=2 filter=8 channel=14
					-4, -19, 8, 25, -8, 27, -23, 13, -10,
					-- layer=2 filter=8 channel=15
					-22, -94, -58, -80, -70, 63, -23, -21, 29,
					-- layer=2 filter=8 channel=16
					11, 22, 13, -9, 15, -7, 0, -6, 30,
					-- layer=2 filter=8 channel=17
					-72, -72, -52, -68, -60, 0, -50, -48, -33,
					-- layer=2 filter=8 channel=18
					-23, 29, 3, -21, -9, 24, -28, 21, 9,
					-- layer=2 filter=8 channel=19
					38, 39, 6, 0, -7, -7, -11, 32, 29,
					-- layer=2 filter=8 channel=20
					-9, -21, 6, -57, 15, 4, 34, -4, 3,
					-- layer=2 filter=8 channel=21
					-22, -21, -1, -40, -65, -7, -4, -22, 19,
					-- layer=2 filter=8 channel=22
					3, -27, -36, -3, -30, 12, 32, 11, 49,
					-- layer=2 filter=8 channel=23
					12, -26, -35, 42, 25, -10, 27, 18, -18,
					-- layer=2 filter=8 channel=24
					20, 3, 41, -65, -31, 0, -13, -21, -13,
					-- layer=2 filter=8 channel=25
					9, 2, -4, -6, 11, 7, 27, -24, 14,
					-- layer=2 filter=8 channel=26
					9, -10, -7, 40, 20, 33, -16, -13, -26,
					-- layer=2 filter=8 channel=27
					26, 26, -6, 72, 71, 0, -10, 14, -18,
					-- layer=2 filter=8 channel=28
					0, -48, -36, -21, -58, 13, -15, -14, -1,
					-- layer=2 filter=8 channel=29
					-38, 6, 11, 13, -10, -1, -25, 35, 4,
					-- layer=2 filter=8 channel=30
					22, 43, 20, -15, -6, -6, -53, -48, -18,
					-- layer=2 filter=8 channel=31
					7, -10, 11, 42, 16, 32, 29, 36, -3,
					-- layer=2 filter=9 channel=0
					-14, 51, 1, 60, 45, 55, 53, 30, 38,
					-- layer=2 filter=9 channel=1
					3, -1, 4, 49, 40, 3, 37, 39, 9,
					-- layer=2 filter=9 channel=2
					25, -35, -39, -11, 18, 21, 17, 21, 11,
					-- layer=2 filter=9 channel=3
					26, 25, 17, -17, 18, -4, 27, -9, 7,
					-- layer=2 filter=9 channel=4
					-70, -62, -34, -60, -157, -64, -38, -21, -27,
					-- layer=2 filter=9 channel=5
					-32, -68, -59, -49, -53, -25, 1, -55, 0,
					-- layer=2 filter=9 channel=6
					6, -3, -27, 9, -4, -2, 2, 3, -3,
					-- layer=2 filter=9 channel=7
					-50, 2, 27, -84, -58, -21, -47, -33, 0,
					-- layer=2 filter=9 channel=8
					3, -11, -8, 12, -12, -16, -13, -39, 21,
					-- layer=2 filter=9 channel=9
					13, 10, 6, 38, 33, 29, 50, 30, -36,
					-- layer=2 filter=9 channel=10
					2, 8, 38, 9, 47, 42, 87, 26, 19,
					-- layer=2 filter=9 channel=11
					9, -5, 6, -2, -4, -7, 5, 6, -16,
					-- layer=2 filter=9 channel=12
					-59, -31, -40, -139, -92, -62, -92, -39, -7,
					-- layer=2 filter=9 channel=13
					-18, 4, 0, -67, -37, 3, -24, -74, -5,
					-- layer=2 filter=9 channel=14
					1, -18, 1, -12, 11, -21, -7, 8, 5,
					-- layer=2 filter=9 channel=15
					-32, 0, -18, 16, 10, 15, 47, 86, 80,
					-- layer=2 filter=9 channel=16
					5, -8, -9, 18, 7, 1, 21, -8, 22,
					-- layer=2 filter=9 channel=17
					-64, -39, -13, -82, -68, -37, 7, -15, 0,
					-- layer=2 filter=9 channel=18
					-18, -7, 0, -1, -6, 11, -14, 14, -3,
					-- layer=2 filter=9 channel=19
					16, 11, -27, 49, 49, 37, 18, 0, 3,
					-- layer=2 filter=9 channel=20
					24, -24, -6, -27, -14, 21, -57, -7, -5,
					-- layer=2 filter=9 channel=21
					5, -10, -5, 19, 16, 9, 60, 28, 20,
					-- layer=2 filter=9 channel=22
					6, -4, -24, -30, 0, -12, -37, -16, -68,
					-- layer=2 filter=9 channel=23
					8, 25, -8, 0, 22, -26, -17, -7, -13,
					-- layer=2 filter=9 channel=24
					-6, -39, -12, -7, -9, -11, -13, 7, -18,
					-- layer=2 filter=9 channel=25
					24, -8, -7, -26, -11, -17, 18, -7, 13,
					-- layer=2 filter=9 channel=26
					-22, 5, -23, 41, 15, 19, -2, 2, -7,
					-- layer=2 filter=9 channel=27
					19, 11, 28, 11, -10, -15, 1, -6, -13,
					-- layer=2 filter=9 channel=28
					24, -21, -37, 13, -21, -18, -3, -37, 21,
					-- layer=2 filter=9 channel=29
					-11, 0, -14, 23, 4, 6, -10, -15, 18,
					-- layer=2 filter=9 channel=30
					-6, -41, -14, 6, -9, 1, -16, 7, -24,
					-- layer=2 filter=9 channel=31
					21, 30, 13, 2, -6, 15, 0, 3, 25,
					-- layer=2 filter=10 channel=0
					-21, -33, -35, 5, 65, 46, 27, 0, 59,
					-- layer=2 filter=10 channel=1
					7, -25, -3, 46, 7, 37, 11, -2, 51,
					-- layer=2 filter=10 channel=2
					14, 13, 13, 40, -22, -44, 11, -48, -53,
					-- layer=2 filter=10 channel=3
					12, -6, -3, -4, -19, 27, -26, -12, 4,
					-- layer=2 filter=10 channel=4
					34, -28, 4, 24, 27, -6, 5, 56, 14,
					-- layer=2 filter=10 channel=5
					8, -8, 14, -8, 25, -9, 21, -2, -1,
					-- layer=2 filter=10 channel=6
					18, 24, 18, -51, -7, -22, 4, 28, 34,
					-- layer=2 filter=10 channel=7
					-19, -35, -29, -47, -56, 20, -49, -20, -33,
					-- layer=2 filter=10 channel=8
					-33, -37, -25, -7, -7, -10, 24, 31, 33,
					-- layer=2 filter=10 channel=9
					26, 25, 32, 17, 1, 6, -4, -1, 28,
					-- layer=2 filter=10 channel=10
					-53, -81, -84, -59, -79, -29, -1, -14, -100,
					-- layer=2 filter=10 channel=11
					27, 7, 17, -17, -16, -16, -22, -3, -30,
					-- layer=2 filter=10 channel=12
					23, -19, -3, -35, -50, -61, -42, 35, 0,
					-- layer=2 filter=10 channel=13
					0, -21, 9, -51, 1, 18, -17, 24, 6,
					-- layer=2 filter=10 channel=14
					-11, 6, 2, -13, 18, 14, 20, 9, -6,
					-- layer=2 filter=10 channel=15
					-36, -60, -27, -34, -65, -83, -25, -63, -51,
					-- layer=2 filter=10 channel=16
					22, -4, 6, 47, -25, -27, 31, -13, -49,
					-- layer=2 filter=10 channel=17
					-4, -4, -21, -19, -49, -46, -22, -20, -27,
					-- layer=2 filter=10 channel=18
					-18, 17, -19, 32, 5, -3, 13, -8, -17,
					-- layer=2 filter=10 channel=19
					38, 47, 41, 45, 62, 78, 70, 25, 56,
					-- layer=2 filter=10 channel=20
					-23, -20, -29, -49, -41, -84, 10, 39, -19,
					-- layer=2 filter=10 channel=21
					43, 40, 14, 18, -17, -11, 6, 2, -6,
					-- layer=2 filter=10 channel=22
					1, -17, -20, 22, 23, 16, 47, 58, 46,
					-- layer=2 filter=10 channel=23
					-7, -31, -9, 23, 7, 39, 1, 16, 14,
					-- layer=2 filter=10 channel=24
					57, 6, -12, 23, -14, -50, -10, -34, -55,
					-- layer=2 filter=10 channel=25
					-14, -9, -4, 14, 32, 44, 38, 13, 13,
					-- layer=2 filter=10 channel=26
					-3, 11, -16, -5, 3, -24, 30, 0, -1,
					-- layer=2 filter=10 channel=27
					-33, 12, -1, 30, 30, 48, -11, 15, 0,
					-- layer=2 filter=10 channel=28
					-45, -34, -50, -43, -73, -87, -5, -56, -29,
					-- layer=2 filter=10 channel=29
					20, 39, 36, -7, -30, -12, -1, 10, -15,
					-- layer=2 filter=10 channel=30
					9, 16, 15, -37, -24, -33, -30, -37, -81,
					-- layer=2 filter=10 channel=31
					1, -6, 18, -5, 31, 23, 1, 13, 24,
					-- layer=2 filter=11 channel=0
					-5, -3, -24, -20, -2, -38, 5, -21, -61,
					-- layer=2 filter=11 channel=1
					32, 12, -50, 29, -59, -25, -55, -22, -21,
					-- layer=2 filter=11 channel=2
					24, 20, 17, 26, 2, -15, 32, 26, 11,
					-- layer=2 filter=11 channel=3
					-25, 12, -19, 7, 16, -3, -18, 10, -8,
					-- layer=2 filter=11 channel=4
					-40, -14, 21, -33, 32, -3, -1, 38, -54,
					-- layer=2 filter=11 channel=5
					0, -13, -20, -41, 13, 25, -31, 8, 30,
					-- layer=2 filter=11 channel=6
					45, -5, -30, 18, -32, -20, -6, -3, -19,
					-- layer=2 filter=11 channel=7
					1, 5, -8, 0, 46, 13, 14, 54, 38,
					-- layer=2 filter=11 channel=8
					-22, -9, -30, -56, 15, -1, 2, 17, 31,
					-- layer=2 filter=11 channel=9
					26, -26, -39, 41, -15, -29, 41, -3, -19,
					-- layer=2 filter=11 channel=10
					-14, 13, -56, 56, 35, -3, 87, 29, -4,
					-- layer=2 filter=11 channel=11
					-15, 1, 17, 0, 23, 7, -14, 9, -10,
					-- layer=2 filter=11 channel=12
					-18, 37, 28, -1, -18, 16, 12, -11, 9,
					-- layer=2 filter=11 channel=13
					-40, 5, 2, -20, -45, -53, 3, -10, 11,
					-- layer=2 filter=11 channel=14
					24, 5, 0, 0, 23, -6, -21, 5, 16,
					-- layer=2 filter=11 channel=15
					62, 66, 53, 64, 102, 42, 52, 53, -23,
					-- layer=2 filter=11 channel=16
					12, -9, 0, 21, 23, 9, 20, 12, 24,
					-- layer=2 filter=11 channel=17
					-18, 35, 23, 29, 56, 20, 53, 51, -8,
					-- layer=2 filter=11 channel=18
					-18, -22, -9, -18, 12, 21, -9, -18, 9,
					-- layer=2 filter=11 channel=19
					-38, 4, 16, -9, -25, -53, -5, -78, 15,
					-- layer=2 filter=11 channel=20
					54, -22, -30, 80, -37, -48, 88, -17, -38,
					-- layer=2 filter=11 channel=21
					19, -10, -41, 77, -15, -45, 28, -38, -47,
					-- layer=2 filter=11 channel=22
					5, 6, -21, 23, 9, 0, 12, -19, -44,
					-- layer=2 filter=11 channel=23
					7, -8, 19, -10, -15, 8, 5, 5, 17,
					-- layer=2 filter=11 channel=24
					35, 8, -14, 14, -8, -5, 33, 20, 12,
					-- layer=2 filter=11 channel=25
					-86, -6, -1, 10, -3, -53, 0, -59, -26,
					-- layer=2 filter=11 channel=26
					-9, -24, -24, -16, -30, -17, -8, -14, -5,
					-- layer=2 filter=11 channel=27
					2, 18, 32, -25, -5, 38, -25, -41, 5,
					-- layer=2 filter=11 channel=28
					12, 19, -33, 51, 25, -27, 60, 28, -83,
					-- layer=2 filter=11 channel=29
					-9, -1, 6, -8, 10, 0, -27, -10, -14,
					-- layer=2 filter=11 channel=30
					23, -41, 14, -11, -26, 26, -60, -18, 31,
					-- layer=2 filter=11 channel=31
					-11, 0, 18, -34, 2, 25, -58, -9, 14,
					-- layer=2 filter=12 channel=0
					17, 31, 22, 3, 14, -12, 3, -31, -11,
					-- layer=2 filter=12 channel=1
					8, 1, -11, 33, -4, 1, -30, -67, -12,
					-- layer=2 filter=12 channel=2
					17, 60, 17, 91, 51, 42, 20, 2, -12,
					-- layer=2 filter=12 channel=3
					1, 0, 32, 0, 0, 3, 10, 14, 8,
					-- layer=2 filter=12 channel=4
					-83, -146, -92, -134, -195, -97, -49, -36, -45,
					-- layer=2 filter=12 channel=5
					-3, -6, -42, 7, -8, -4, 25, -12, -17,
					-- layer=2 filter=12 channel=6
					38, 24, -18, 30, -2, 9, -9, -10, -26,
					-- layer=2 filter=12 channel=7
					-40, -30, 15, -11, -57, -26, -12, 45, -16,
					-- layer=2 filter=12 channel=8
					-14, -41, -9, 9, 3, -34, -2, -18, 14,
					-- layer=2 filter=12 channel=9
					16, 25, 3, 32, 12, 15, -31, -29, -17,
					-- layer=2 filter=12 channel=10
					-1, 39, 28, 27, 27, 28, 53, -5, 15,
					-- layer=2 filter=12 channel=11
					-20, -11, -3, 30, -28, -37, -11, 11, 2,
					-- layer=2 filter=12 channel=12
					1, -46, -24, -4, -72, -90, -25, 16, -44,
					-- layer=2 filter=12 channel=13
					12, 22, 6, 22, 10, 7, -10, 12, -32,
					-- layer=2 filter=12 channel=14
					-32, 5, -27, -11, 5, -3, 21, 10, 33,
					-- layer=2 filter=12 channel=15
					-96, -23, -2, -50, -1, 25, -4, 56, 40,
					-- layer=2 filter=12 channel=16
					2, 4, -10, 22, 17, 11, 38, 21, 11,
					-- layer=2 filter=12 channel=17
					-70, -57, -25, -114, -61, -45, -33, 16, -8,
					-- layer=2 filter=12 channel=18
					15, 5, -9, 39, 8, -16, 8, -13, -1,
					-- layer=2 filter=12 channel=19
					-2, 38, 9, -15, 0, 2, -42, -93, -62,
					-- layer=2 filter=12 channel=20
					43, 3, -32, 30, 28, -1, 7, -10, 16,
					-- layer=2 filter=12 channel=21
					14, 11, 22, 20, 44, 9, -8, -23, -20,
					-- layer=2 filter=12 channel=22
					-33, -34, -55, -30, -70, -62, -19, -5, -19,
					-- layer=2 filter=12 channel=23
					-12, -40, -45, -31, -26, -25, -36, -18, -37,
					-- layer=2 filter=12 channel=24
					25, 14, -6, 32, 25, 9, 14, 21, -9,
					-- layer=2 filter=12 channel=25
					0, -25, -16, 32, 32, 34, -22, -21, -9,
					-- layer=2 filter=12 channel=26
					38, 28, 17, 18, 4, -25, -12, -24, -23,
					-- layer=2 filter=12 channel=27
					-33, -24, -7, 9, -1, 6, 15, 52, 29,
					-- layer=2 filter=12 channel=28
					45, 50, 51, 77, 57, 55, -38, 17, 1,
					-- layer=2 filter=12 channel=29
					-16, 0, -25, 13, 9, -24, 6, -27, -31,
					-- layer=2 filter=12 channel=30
					4, -18, -44, 4, 23, 16, 39, 54, 22,
					-- layer=2 filter=12 channel=31
					-1, -35, -13, 18, -2, -10, 41, -3, -3,
					-- layer=2 filter=13 channel=0
					-87, -81, -67, -137, -159, -121, -83, -106, -64,
					-- layer=2 filter=13 channel=1
					-55, -33, 22, -40, -96, -30, -23, -6, -20,
					-- layer=2 filter=13 channel=2
					-16, 10, 34, -19, -24, -33, -28, 25, 63,
					-- layer=2 filter=13 channel=3
					7, -7, -10, 3, -6, -13, -2, -25, -4,
					-- layer=2 filter=13 channel=4
					-36, 0, 61, -21, -30, 27, -41, 23, -17,
					-- layer=2 filter=13 channel=5
					31, 57, 52, 13, 26, -10, -31, 2, 2,
					-- layer=2 filter=13 channel=6
					13, -4, 20, 3, 9, -16, -18, -50, -14,
					-- layer=2 filter=13 channel=7
					24, 51, 51, 31, 7, -21, 46, -40, -10,
					-- layer=2 filter=13 channel=8
					16, 31, 1, 21, 43, 12, -5, -17, -8,
					-- layer=2 filter=13 channel=9
					-15, 2, 8, -39, -61, 17, 1, -37, -17,
					-- layer=2 filter=13 channel=10
					75, 48, -19, 11, 54, 25, 84, 66, 62,
					-- layer=2 filter=13 channel=11
					-12, 10, 7, 18, -14, 20, 0, 9, 51,
					-- layer=2 filter=13 channel=12
					40, -32, 27, 4, -7, 21, 50, -15, 15,
					-- layer=2 filter=13 channel=13
					32, -31, -3, 54, -63, -39, -9, -68, -38,
					-- layer=2 filter=13 channel=14
					15, 11, -11, -14, 2, 3, 11, 1, 0,
					-- layer=2 filter=13 channel=15
					-22, 25, 49, -7, 19, 28, -21, -5, 29,
					-- layer=2 filter=13 channel=16
					-8, -33, 1, -20, -11, -17, -13, 31, 45,
					-- layer=2 filter=13 channel=17
					30, 42, 98, -19, 73, 63, -17, 15, 52,
					-- layer=2 filter=13 channel=18
					-10, -1, 16, -18, -16, -17, -20, 5, 20,
					-- layer=2 filter=13 channel=19
					-48, -41, -68, -81, -107, -30, -48, -96, -88,
					-- layer=2 filter=13 channel=20
					1, 0, 23, -7, 15, 27, 19, 22, 31,
					-- layer=2 filter=13 channel=21
					-20, 12, 0, -10, -51, -28, 0, -11, -38,
					-- layer=2 filter=13 channel=22
					3, 1, -38, 32, -4, 11, -13, -24, 30,
					-- layer=2 filter=13 channel=23
					24, -10, 17, -11, -9, 8, -9, 5, -8,
					-- layer=2 filter=13 channel=24
					-5, -1, -2, 7, -11, 0, 19, 7, 53,
					-- layer=2 filter=13 channel=25
					-51, -108, -61, -24, -90, -39, -46, -52, -57,
					-- layer=2 filter=13 channel=26
					-37, -14, -4, 0, -33, -20, -24, -52, 15,
					-- layer=2 filter=13 channel=27
					-7, 6, -5, 27, -15, -24, -11, 4, -3,
					-- layer=2 filter=13 channel=28
					5, 3, -4, -10, 19, 0, 13, 46, 47,
					-- layer=2 filter=13 channel=29
					-25, -3, 19, -5, -8, -5, -11, -29, 7,
					-- layer=2 filter=13 channel=30
					-1, -18, 14, 3, 25, -25, 9, -16, -24,
					-- layer=2 filter=13 channel=31
					-16, 19, 29, 10, 22, -23, -16, -27, -14,
					-- layer=2 filter=14 channel=0
					-69, -132, -103, -11, -64, -9, 0, 20, 29,
					-- layer=2 filter=14 channel=1
					-30, -39, -8, -48, -10, 3, 2, 14, 17,
					-- layer=2 filter=14 channel=2
					-8, 2, 12, 0, 10, 11, -30, 5, 37,
					-- layer=2 filter=14 channel=3
					-8, -3, 0, -7, -4, -2, 1, 14, 30,
					-- layer=2 filter=14 channel=4
					5, -68, -167, 21, -73, -85, 31, -21, -63,
					-- layer=2 filter=14 channel=5
					-26, 7, 26, -1, -23, -24, 15, 2, -21,
					-- layer=2 filter=14 channel=6
					-15, -32, -28, 21, -43, -42, 29, 3, -11,
					-- layer=2 filter=14 channel=7
					7, -52, -106, 10, -82, -87, 29, 2, -82,
					-- layer=2 filter=14 channel=8
					4, -22, -13, 40, 2, -24, 48, 8, 2,
					-- layer=2 filter=14 channel=9
					-22, -29, -23, -61, -7, 3, 53, 2, 26,
					-- layer=2 filter=14 channel=10
					-21, -3, 17, 43, 21, 21, -35, 9, -24,
					-- layer=2 filter=14 channel=11
					6, 8, -29, -11, 0, -3, 2, 7, -3,
					-- layer=2 filter=14 channel=12
					3, -86, -113, 47, -13, -123, 62, 4, 4,
					-- layer=2 filter=14 channel=13
					5, -73, -55, 71, 42, -56, 89, 40, 11,
					-- layer=2 filter=14 channel=14
					2, -17, -3, -8, -20, 17, 6, -22, -1,
					-- layer=2 filter=14 channel=15
					-34, -89, -81, -65, -51, -67, -21, -34, -91,
					-- layer=2 filter=14 channel=16
					28, 7, 4, 1, 10, 23, -13, 3, 27,
					-- layer=2 filter=14 channel=17
					-53, -69, -124, 5, -16, -63, 48, 1, -55,
					-- layer=2 filter=14 channel=18
					9, 13, -32, 9, 10, -28, 21, 16, -9,
					-- layer=2 filter=14 channel=19
					-38, -82, -28, 24, 4, -10, -2, -3, 36,
					-- layer=2 filter=14 channel=20
					28, -11, 3, 33, 5, -10, 50, 5, -34,
					-- layer=2 filter=14 channel=21
					-27, -56, -31, -17, -18, -23, -6, -45, -1,
					-- layer=2 filter=14 channel=22
					-16, -27, -26, -11, -21, -14, 0, -11, 9,
					-- layer=2 filter=14 channel=23
					-13, -7, -19, -23, -5, -20, 32, 17, 20,
					-- layer=2 filter=14 channel=24
					5, -2, -23, 7, -1, -18, 17, -4, 27,
					-- layer=2 filter=14 channel=25
					-37, -80, -66, 48, 29, 35, 9, 16, -3,
					-- layer=2 filter=14 channel=26
					-1, -49, -23, -20, -9, -39, 40, -2, -38,
					-- layer=2 filter=14 channel=27
					-17, -5, 14, 33, 5, 26, 5, 3, 13,
					-- layer=2 filter=14 channel=28
					8, -26, -74, -13, -2, -27, 22, 19, 0,
					-- layer=2 filter=14 channel=29
					-11, 16, 7, -4, 1, -8, -6, -5, -46,
					-- layer=2 filter=14 channel=30
					-9, 5, 4, -4, 13, -6, -16, 5, 38,
					-- layer=2 filter=14 channel=31
					16, 10, 1, 36, -8, -8, 38, 19, 24,
					-- layer=2 filter=15 channel=0
					-1, -4, -5, 30, 32, 67, -112, -96, -70,
					-- layer=2 filter=15 channel=1
					3, 4, 0, -18, -6, -18, -31, 10, -7,
					-- layer=2 filter=15 channel=2
					3, 5, 14, 25, 2, -1, 15, 7, -15,
					-- layer=2 filter=15 channel=3
					-11, -10, 15, 11, -11, -12, -11, -8, -22,
					-- layer=2 filter=15 channel=4
					34, -63, -8, 30, -46, -11, 39, 13, 3,
					-- layer=2 filter=15 channel=5
					19, 0, -1, 21, 16, 16, -43, -52, -26,
					-- layer=2 filter=15 channel=6
					18, 11, -12, 30, 8, 11, 6, 5, 7,
					-- layer=2 filter=15 channel=7
					-20, -12, -48, -51, -62, -68, -8, -48, 1,
					-- layer=2 filter=15 channel=8
					-8, -14, -13, -30, 3, 10, -33, -53, -57,
					-- layer=2 filter=15 channel=9
					6, -16, -8, 3, 6, 2, 25, 15, 41,
					-- layer=2 filter=15 channel=10
					37, -38, -32, 12, -16, -48, 19, 8, 26,
					-- layer=2 filter=15 channel=11
					19, 25, 27, -8, -7, 35, 10, -40, -28,
					-- layer=2 filter=15 channel=12
					26, -24, -34, 27, -30, -41, 44, 18, 17,
					-- layer=2 filter=15 channel=13
					-51, -1, 39, -26, 8, 43, -78, -37, -29,
					-- layer=2 filter=15 channel=14
					4, 12, -7, -12, -13, 0, -4, 15, 0,
					-- layer=2 filter=15 channel=15
					-17, -14, -48, 24, 7, -1, -5, -13, -15,
					-- layer=2 filter=15 channel=16
					-8, -18, -7, -22, 2, 8, 14, 28, 4,
					-- layer=2 filter=15 channel=17
					-1, 35, 8, -16, 15, 13, 4, 36, 39,
					-- layer=2 filter=15 channel=18
					6, 3, -19, -3, -19, 24, 0, -39, 1,
					-- layer=2 filter=15 channel=19
					23, 29, 50, -37, 13, 6, -36, -29, -40,
					-- layer=2 filter=15 channel=20
					-19, -94, -89, 16, -14, -14, 78, 39, 44,
					-- layer=2 filter=15 channel=21
					-5, 0, 7, 16, 16, -30, 8, 20, 32,
					-- layer=2 filter=15 channel=22
					-19, -2, -27, 21, -20, -15, 10, -39, 30,
					-- layer=2 filter=15 channel=23
					4, 19, -7, -2, -1, 24, -34, -27, 7,
					-- layer=2 filter=15 channel=24
					4, -40, -9, 12, 2, 9, 28, -19, -24,
					-- layer=2 filter=15 channel=25
					-29, 17, 23, -20, 8, 48, -51, -92, -49,
					-- layer=2 filter=15 channel=26
					12, -3, 9, 45, 18, 9, -8, -23, -8,
					-- layer=2 filter=15 channel=27
					2, 14, 15, -37, 12, 38, -46, -28, -15,
					-- layer=2 filter=15 channel=28
					-54, -74, -54, 51, -1, -38, 31, 32, -15,
					-- layer=2 filter=15 channel=29
					3, -7, 15, 19, 24, 25, -20, -17, 13,
					-- layer=2 filter=15 channel=30
					35, 37, -8, 5, -6, -8, -31, 10, -4,
					-- layer=2 filter=15 channel=31
					28, 14, 27, 18, 37, 30, -45, -18, -16,
					-- layer=2 filter=16 channel=0
					-36, -38, -32, -39, -33, -30, -14, -18, -23,
					-- layer=2 filter=16 channel=1
					8, 52, 38, 28, -9, 25, 14, -17, -27,
					-- layer=2 filter=16 channel=2
					81, 72, 85, 75, 21, -32, -10, -3, -13,
					-- layer=2 filter=16 channel=3
					2, -13, -20, -15, -12, 9, 14, 15, -14,
					-- layer=2 filter=16 channel=4
					24, 17, -2, 15, 56, 47, -16, 62, 56,
					-- layer=2 filter=16 channel=5
					-6, 14, 13, 28, 13, 15, -6, -7, -1,
					-- layer=2 filter=16 channel=6
					46, 29, 33, -49, -44, -49, -58, -87, -27,
					-- layer=2 filter=16 channel=7
					-28, -84, -50, 24, 2, 1, -12, 30, 36,
					-- layer=2 filter=16 channel=8
					65, 40, 32, -31, -24, 2, -12, -28, -58,
					-- layer=2 filter=16 channel=9
					37, 48, 28, -15, 0, 13, -37, -29, -16,
					-- layer=2 filter=16 channel=10
					-3, -3, -8, -50, -43, 4, 10, -19, -23,
					-- layer=2 filter=16 channel=11
					-35, -8, 23, -7, -34, -60, 34, -9, -48,
					-- layer=2 filter=16 channel=12
					4, -1, -6, 11, 40, 64, -14, 18, 34,
					-- layer=2 filter=16 channel=13
					-22, -71, -38, 6, -1, 2, 40, 0, 8,
					-- layer=2 filter=16 channel=14
					9, -7, 17, 12, 11, 5, 17, 0, 9,
					-- layer=2 filter=16 channel=15
					4, 25, 39, 22, -18, 19, -59, -54, 4,
					-- layer=2 filter=16 channel=16
					-22, -58, -14, 12, 17, 13, 20, -22, -23,
					-- layer=2 filter=16 channel=17
					28, -29, -14, 7, -16, 24, -17, -9, -7,
					-- layer=2 filter=16 channel=18
					-23, -29, -60, 7, -24, -76, 60, 39, -10,
					-- layer=2 filter=16 channel=19
					-21, -19, -6, -11, -26, -6, 21, 18, -46,
					-- layer=2 filter=16 channel=20
					43, 55, 60, -26, 4, -34, -69, -54, -13,
					-- layer=2 filter=16 channel=21
					2, 35, 43, -18, -10, -35, -10, -1, -17,
					-- layer=2 filter=16 channel=22
					45, 64, 17, -15, 42, 47, 9, 3, -33,
					-- layer=2 filter=16 channel=23
					41, 34, 58, -23, -4, 13, -56, -41, -61,
					-- layer=2 filter=16 channel=24
					24, 51, 31, -31, 0, -45, -22, 19, 0,
					-- layer=2 filter=16 channel=25
					1, -14, -19, 21, 0, -27, 27, 25, 10,
					-- layer=2 filter=16 channel=26
					41, 3, 20, -37, -36, -32, 21, -14, -31,
					-- layer=2 filter=16 channel=27
					26, 49, 42, 26, 15, 14, -41, -15, -43,
					-- layer=2 filter=16 channel=28
					41, 86, 58, -5, -33, 8, -43, -47, -11,
					-- layer=2 filter=16 channel=29
					-1, -11, 11, -30, -58, -44, 4, -14, -10,
					-- layer=2 filter=16 channel=30
					22, 63, 42, -10, 0, -22, -68, -85, -42,
					-- layer=2 filter=16 channel=31
					37, 22, 45, -14, -20, -4, -18, -9, -28,
					-- layer=2 filter=17 channel=0
					-17, -87, -64, -26, -38, -10, -16, -42, -34,
					-- layer=2 filter=17 channel=1
					0, -16, -14, -46, -45, -26, -70, -37, -56,
					-- layer=2 filter=17 channel=2
					-19, -43, 18, -25, -15, 55, -38, -61, -5,
					-- layer=2 filter=17 channel=3
					12, 4, -12, 15, 8, -29, -13, -14, -20,
					-- layer=2 filter=17 channel=4
					-46, 42, 19, 3, 31, 9, 14, 76, 86,
					-- layer=2 filter=17 channel=5
					-13, 15, -6, 16, 19, 39, 31, 9, 31,
					-- layer=2 filter=17 channel=6
					-7, -4, -11, -6, -38, -28, 9, -15, 15,
					-- layer=2 filter=17 channel=7
					-20, 38, -10, 43, 52, -85, 0, 89, -42,
					-- layer=2 filter=17 channel=8
					-20, 4, 10, -14, 3, -1, -10, -22, 8,
					-- layer=2 filter=17 channel=9
					-2, -15, -17, -54, -66, -49, 1, -3, -23,
					-- layer=2 filter=17 channel=10
					19, 28, -14, -8, 22, 34, 22, 35, -17,
					-- layer=2 filter=17 channel=11
					5, 0, -2, -1, -5, 32, 9, -36, 34,
					-- layer=2 filter=17 channel=12
					-32, 39, -6, -9, 72, -41, 11, 82, -13,
					-- layer=2 filter=17 channel=13
					-17, 17, -40, 0, 13, -42, -45, 7, -73,
					-- layer=2 filter=17 channel=14
					-17, -11, -5, -23, 6, 1, -5, 12, -7,
					-- layer=2 filter=17 channel=15
					-2, 37, 48, -6, 56, 83, 6, -13, 36,
					-- layer=2 filter=17 channel=16
					5, -47, -14, 26, -10, 36, -19, -9, 0,
					-- layer=2 filter=17 channel=17
					3, 4, -16, 43, 31, 1, 21, 52, 68,
					-- layer=2 filter=17 channel=18
					14, 2, 27, 13, 32, 6, -32, -1, -27,
					-- layer=2 filter=17 channel=19
					-35, -30, 10, 23, -16, -16, -48, -68, -50,
					-- layer=2 filter=17 channel=20
					4, 18, 31, 29, 15, -10, 14, 43, 28,
					-- layer=2 filter=17 channel=21
					-4, -5, -25, -21, -42, -33, -18, -9, -58,
					-- layer=2 filter=17 channel=22
					-30, 36, 2, -11, 51, 6, 21, 16, -16,
					-- layer=2 filter=17 channel=23
					-12, -25, -28, 17, -18, -7, 25, -10, -17,
					-- layer=2 filter=17 channel=24
					-11, -4, 0, 25, 0, -13, -12, 3, 3,
					-- layer=2 filter=17 channel=25
					30, -21, -29, 6, -2, -4, -16, -44, -57,
					-- layer=2 filter=17 channel=26
					-11, -54, 0, 9, -17, 31, -10, -29, -31,
					-- layer=2 filter=17 channel=27
					3, -23, -1, 11, -3, -14, -21, 5, -27,
					-- layer=2 filter=17 channel=28
					-32, 16, 22, -1, 38, 38, 16, 33, 24,
					-- layer=2 filter=17 channel=29
					11, 6, 7, 0, -7, 30, 3, -9, 12,
					-- layer=2 filter=17 channel=30
					-34, -29, -7, -38, -15, -1, -6, 22, -12,
					-- layer=2 filter=17 channel=31
					12, 2, 10, -1, 6, 9, 11, 2, 19,
					-- layer=2 filter=18 channel=0
					-13, -10, 30, 0, -33, 11, 29, 6, 13,
					-- layer=2 filter=18 channel=1
					-9, -38, 6, 9, -22, -51, 7, -11, -12,
					-- layer=2 filter=18 channel=2
					51, -25, -28, 21, -26, -31, 70, 13, 0,
					-- layer=2 filter=18 channel=3
					-4, -19, 4, -7, -22, 6, 7, 3, 21,
					-- layer=2 filter=18 channel=4
					25, 41, 30, 57, 121, 58, 27, 43, 59,
					-- layer=2 filter=18 channel=5
					27, -15, -29, -11, -4, -17, 7, -19, -17,
					-- layer=2 filter=18 channel=6
					-2, -6, 7, 9, -19, 27, -3, 18, -1,
					-- layer=2 filter=18 channel=7
					-10, 64, 18, 17, 109, 42, -32, 21, 3,
					-- layer=2 filter=18 channel=8
					-10, -25, -4, -7, -18, -20, -40, -35, 10,
					-- layer=2 filter=18 channel=9
					25, -16, 16, 7, -25, -31, -20, -17, -7,
					-- layer=2 filter=18 channel=10
					-7, -4, -33, -7, -15, 11, -29, -27, -5,
					-- layer=2 filter=18 channel=11
					-1, -21, -12, -10, 15, -66, -32, -16, -54,
					-- layer=2 filter=18 channel=12
					8, 56, 16, 34, 115, 64, 11, 97, 44,
					-- layer=2 filter=18 channel=13
					-15, 20, 53, 18, 40, 62, 0, 34, -6,
					-- layer=2 filter=18 channel=14
					-10, -22, 0, 6, 21, 8, -28, 14, -20,
					-- layer=2 filter=18 channel=15
					8, 0, -23, 44, 25, -25, -1, -32, 6,
					-- layer=2 filter=18 channel=16
					26, -9, -34, 62, -9, -29, 30, 28, -3,
					-- layer=2 filter=18 channel=17
					0, 23, 43, 29, 72, 78, 22, 41, 30,
					-- layer=2 filter=18 channel=18
					0, -9, -51, -2, -2, -38, 1, -6, -11,
					-- layer=2 filter=18 channel=19
					-16, 13, 5, 16, -49, 14, 15, 6, 28,
					-- layer=2 filter=18 channel=20
					10, -6, -19, 18, -11, 9, -5, -6, 21,
					-- layer=2 filter=18 channel=21
					15, -5, 8, 15, -12, 2, 20, -23, -22,
					-- layer=2 filter=18 channel=22
					-53, 8, 36, -10, 54, 49, 7, 16, 22,
					-- layer=2 filter=18 channel=23
					-4, 15, 31, 4, -12, 14, 14, -28, 8,
					-- layer=2 filter=18 channel=24
					-4, -6, -45, 16, -40, -50, 7, -14, -37,
					-- layer=2 filter=18 channel=25
					17, -17, -7, 7, -7, 0, 9, -11, 2,
					-- layer=2 filter=18 channel=26
					-11, -24, -28, 11, -52, -27, 36, 6, -6,
					-- layer=2 filter=18 channel=27
					16, -10, 16, -25, -2, -11, -10, -9, 12,
					-- layer=2 filter=18 channel=28
					-13, -8, -5, 19, -17, 16, 20, 23, 27,
					-- layer=2 filter=18 channel=29
					17, -14, -48, -17, -22, -42, -6, -24, -29,
					-- layer=2 filter=18 channel=30
					-11, -6, -17, 0, -15, -25, -6, -37, -23,
					-- layer=2 filter=18 channel=31
					10, -23, 4, -25, -23, -13, -3, 5, 5,
					-- layer=2 filter=19 channel=0
					-36, -67, -69, -66, -68, -54, -1, -47, -32,
					-- layer=2 filter=19 channel=1
					-36, -69, -75, -4, -14, -17, -27, -21, 21,
					-- layer=2 filter=19 channel=2
					5, -25, -37, 1, 2, -10, -12, -11, 15,
					-- layer=2 filter=19 channel=3
					-4, -13, -10, -22, -23, 10, 3, 7, 1,
					-- layer=2 filter=19 channel=4
					3, 26, -12, -5, 27, 1, -6, -41, -143,
					-- layer=2 filter=19 channel=5
					19, 17, 16, -1, -14, -25, -17, 10, 23,
					-- layer=2 filter=19 channel=6
					-15, -32, -17, -3, -40, -30, -23, -60, -16,
					-- layer=2 filter=19 channel=7
					-8, 9, 51, 1, -15, -6, -65, -39, -90,
					-- layer=2 filter=19 channel=8
					25, 39, 45, 2, 4, 12, -27, 8, -16,
					-- layer=2 filter=19 channel=9
					-29, -77, -44, 4, -7, -17, -24, -31, -9,
					-- layer=2 filter=19 channel=10
					-96, 1, -26, -110, -71, -15, 9, -26, 31,
					-- layer=2 filter=19 channel=11
					17, 16, -20, 1, -4, -25, -35, -52, -14,
					-- layer=2 filter=19 channel=12
					-1, 21, 12, -27, 0, 22, -68, -61, -25,
					-- layer=2 filter=19 channel=13
					-52, 8, -47, -29, -73, -86, -1, -9, 6,
					-- layer=2 filter=19 channel=14
					9, 2, -21, 7, -1, 2, -14, 3, 11,
					-- layer=2 filter=19 channel=15
					-17, 36, 9, -55, -31, -17, -33, -84, -52,
					-- layer=2 filter=19 channel=16
					18, 23, -13, 48, 5, -9, 20, 21, 14,
					-- layer=2 filter=19 channel=17
					-2, 9, 44, -19, 58, -31, -43, 2, -45,
					-- layer=2 filter=19 channel=18
					30, 19, -18, -25, 5, -18, -7, -15, -44,
					-- layer=2 filter=19 channel=19
					-73, -64, -67, -21, -48, -54, 11, 34, 56,
					-- layer=2 filter=19 channel=20
					8, -40, 36, 31, -2, 5, 2, -25, -31,
					-- layer=2 filter=19 channel=21
					-31, -80, -45, -6, -61, -45, -45, -43, -33,
					-- layer=2 filter=19 channel=22
					25, 56, 62, 10, 5, 42, -9, -3, -1,
					-- layer=2 filter=19 channel=23
					22, 18, -11, 1, 14, 28, 2, 21, 34,
					-- layer=2 filter=19 channel=24
					24, -25, 19, -7, -36, -25, -43, -9, -35,
					-- layer=2 filter=19 channel=25
					-48, -38, -23, -11, -11, -25, 28, 19, 35,
					-- layer=2 filter=19 channel=26
					14, -16, -9, -14, -32, -33, 30, -30, 7,
					-- layer=2 filter=19 channel=27
					14, -2, 30, 0, 7, 49, 19, 57, 69,
					-- layer=2 filter=19 channel=28
					-33, 26, 5, -35, 2, 22, -8, -36, -20,
					-- layer=2 filter=19 channel=29
					18, 14, -36, -11, -16, -21, -10, -33, -54,
					-- layer=2 filter=19 channel=30
					17, 12, -1, -10, 33, 11, -13, 42, 39,
					-- layer=2 filter=19 channel=31
					-1, 3, 16, 11, 17, 2, 11, 26, 0,
					-- layer=2 filter=20 channel=0
					-45, -23, 0, -18, 16, -31, -19, -28, -8,
					-- layer=2 filter=20 channel=1
					-68, -4, 7, -8, -45, -26, -60, -42, 9,
					-- layer=2 filter=20 channel=2
					4, -17, -19, -14, -25, -76, 11, 1, 15,
					-- layer=2 filter=20 channel=3
					9, 13, 6, 3, 7, 8, 11, 13, 1,
					-- layer=2 filter=20 channel=4
					-49, -26, 28, -36, -20, 23, -25, 7, -26,
					-- layer=2 filter=20 channel=5
					-29, -47, -9, -5, -21, -62, 12, -4, -31,
					-- layer=2 filter=20 channel=6
					-6, 3, -37, -3, 20, 47, -25, -24, -10,
					-- layer=2 filter=20 channel=7
					18, -16, 36, 38, 74, 51, 9, 40, 44,
					-- layer=2 filter=20 channel=8
					-30, -17, -35, 9, 32, 31, -5, 18, 23,
					-- layer=2 filter=20 channel=9
					-41, 29, 2, -58, -13, 41, -46, -13, -8,
					-- layer=2 filter=20 channel=10
					-8, 20, -24, -20, 13, 26, -53, -17, 13,
					-- layer=2 filter=20 channel=11
					4, -21, -3, 35, 0, -15, 46, 53, 20,
					-- layer=2 filter=20 channel=12
					44, 17, -9, 8, 0, 18, -17, 37, 11,
					-- layer=2 filter=20 channel=13
					19, 23, -23, 37, 90, 60, 21, 105, 65,
					-- layer=2 filter=20 channel=14
					1, 8, -7, -2, -13, 24, -18, -16, 12,
					-- layer=2 filter=20 channel=15
					-60, -18, 8, 6, -23, 13, 4, -25, 33,
					-- layer=2 filter=20 channel=16
					28, 22, 14, -13, -24, -9, 2, -22, 11,
					-- layer=2 filter=20 channel=17
					-21, 21, 22, 25, -28, 72, -19, -20, -3,
					-- layer=2 filter=20 channel=18
					-4, 13, 0, 51, 9, -19, 59, 21, -11,
					-- layer=2 filter=20 channel=19
					-28, -29, -36, -48, -48, -42, -12, 10, 30,
					-- layer=2 filter=20 channel=20
					28, 0, -44, 3, 46, 38, 27, -61, -26,
					-- layer=2 filter=20 channel=21
					-71, -39, -13, -44, -7, 40, -60, -19, -14,
					-- layer=2 filter=20 channel=22
					-55, -11, 6, -10, -18, 38, -60, -26, 30,
					-- layer=2 filter=20 channel=23
					-26, -15, 18, 9, -5, 24, -9, 14, 9,
					-- layer=2 filter=20 channel=24
					14, -27, -42, 9, -11, -29, 21, 2, 7,
					-- layer=2 filter=20 channel=25
					-22, 0, -36, 7, 4, -20, 12, 1, 50,
					-- layer=2 filter=20 channel=26
					-11, 38, 6, 24, 0, -27, 41, -11, 3,
					-- layer=2 filter=20 channel=27
					7, -30, -22, 1, 25, -21, 38, 37, 32,
					-- layer=2 filter=20 channel=28
					18, 17, -41, 31, 0, -6, 29, -18, -3,
					-- layer=2 filter=20 channel=29
					20, -2, 7, -2, -2, -2, 45, 26, -7,
					-- layer=2 filter=20 channel=30
					5, -31, 0, 18, -29, -52, 18, -8, -37,
					-- layer=2 filter=20 channel=31
					-20, -39, -10, -7, 3, -10, 38, 16, 31,
					-- layer=2 filter=21 channel=0
					3, 25, 0, 32, 24, -40, 41, -11, 7,
					-- layer=2 filter=21 channel=1
					1, 18, 25, -37, -2, -2, -14, -15, 24,
					-- layer=2 filter=21 channel=2
					-82, 3, 9, -42, -3, -11, -16, 26, 3,
					-- layer=2 filter=21 channel=3
					-11, -12, 1, 13, 17, -17, 13, -16, -8,
					-- layer=2 filter=21 channel=4
					-17, -8, 0, -31, 22, 3, 25, 7, -19,
					-- layer=2 filter=21 channel=5
					-30, -31, 9, -22, 2, 34, -8, 5, 20,
					-- layer=2 filter=21 channel=6
					-22, 2, -9, -2, -6, 21, 5, 16, -2,
					-- layer=2 filter=21 channel=7
					-17, -6, 5, -38, -16, 12, -47, -2, 16,
					-- layer=2 filter=21 channel=8
					12, 2, -13, -17, -27, 1, -6, -17, -19,
					-- layer=2 filter=21 channel=9
					19, -22, 0, 18, -20, -2, 3, -5, 11,
					-- layer=2 filter=21 channel=10
					8, 47, -30, 6, 18, 11, -20, -29, 5,
					-- layer=2 filter=21 channel=11
					-29, -11, 53, -9, 22, 47, 25, 39, 0,
					-- layer=2 filter=21 channel=12
					-30, 14, 3, -31, -43, 14, -33, -2, -10,
					-- layer=2 filter=21 channel=13
					-30, -35, -9, -37, -23, 4, -24, -40, -1,
					-- layer=2 filter=21 channel=14
					-10, -9, 10, 18, -24, 14, 5, 12, 17,
					-- layer=2 filter=21 channel=15
					98, 137, 73, 119, 85, 28, 52, 29, -9,
					-- layer=2 filter=21 channel=16
					-72, -32, 13, -67, 22, 44, -23, 14, 26,
					-- layer=2 filter=21 channel=17
					31, 27, 85, 44, 48, -13, 25, -7, 13,
					-- layer=2 filter=21 channel=18
					-58, -36, 4, -57, 20, 45, -16, 0, 37,
					-- layer=2 filter=21 channel=19
					-41, 24, 9, 8, 9, 0, 7, 11, -23,
					-- layer=2 filter=21 channel=20
					53, -36, -48, 25, -49, 0, 32, -25, -9,
					-- layer=2 filter=21 channel=21
					15, 12, 14, 8, -5, 40, -28, 31, 4,
					-- layer=2 filter=21 channel=22
					-2, -11, -20, 24, -2, -16, -32, -20, -14,
					-- layer=2 filter=21 channel=23
					42, -20, -41, 44, -2, -23, -15, 1, -22,
					-- layer=2 filter=21 channel=24
					-81, -7, 14, -89, 19, 0, -69, 53, 25,
					-- layer=2 filter=21 channel=25
					-46, 3, 7, 38, -3, -13, 25, 20, 29,
					-- layer=2 filter=21 channel=26
					-39, -34, 4, -17, 11, -9, -9, 23, -6,
					-- layer=2 filter=21 channel=27
					29, -11, -12, 20, -37, -16, 25, -3, -11,
					-- layer=2 filter=21 channel=28
					-21, 15, -2, -1, 15, -12, 3, 3, -17,
					-- layer=2 filter=21 channel=29
					-51, 7, 46, -12, 16, 47, 6, 12, 34,
					-- layer=2 filter=21 channel=30
					2, -10, 8, -20, -25, 29, -34, 4, 45,
					-- layer=2 filter=21 channel=31
					-25, -16, 16, 7, 0, 8, 13, -1, 20,
					-- layer=2 filter=22 channel=0
					8, 5, 16, -13, -6, 4, -6, 0, 8,
					-- layer=2 filter=22 channel=1
					4, -9, -17, 14, -16, 18, -1, 5, 10,
					-- layer=2 filter=22 channel=2
					-15, -3, -21, -9, -1, -3, -17, 2, -17,
					-- layer=2 filter=22 channel=3
					-16, -11, -18, 19, 16, 6, -1, 14, 9,
					-- layer=2 filter=22 channel=4
					10, -11, -26, -20, -17, -16, -20, 11, 4,
					-- layer=2 filter=22 channel=5
					7, -14, -3, 0, 15, 12, 3, -8, -14,
					-- layer=2 filter=22 channel=6
					-16, 2, 0, -4, -8, -19, -9, -7, 20,
					-- layer=2 filter=22 channel=7
					-18, -9, -10, 11, -1, -18, -5, -28, -7,
					-- layer=2 filter=22 channel=8
					-2, -19, 0, 1, 16, -6, -3, 12, -19,
					-- layer=2 filter=22 channel=9
					11, -12, -28, -24, -1, -20, -18, -13, 14,
					-- layer=2 filter=22 channel=10
					11, -9, -6, 12, -1, -25, -12, -26, -3,
					-- layer=2 filter=22 channel=11
					-14, -9, 18, -15, 12, -9, 12, -18, -15,
					-- layer=2 filter=22 channel=12
					-22, -15, -21, 6, 10, -27, 0, -15, -19,
					-- layer=2 filter=22 channel=13
					7, 5, -17, -35, 12, -9, 15, 0, -2,
					-- layer=2 filter=22 channel=14
					10, 4, 9, -15, -20, -4, 0, -12, 3,
					-- layer=2 filter=22 channel=15
					-1, 0, 13, 18, 2, -15, -14, -19, -29,
					-- layer=2 filter=22 channel=16
					3, -13, 1, -17, -2, 6, -6, -2, 0,
					-- layer=2 filter=22 channel=17
					-22, -20, -6, 14, 4, 9, -27, -4, -10,
					-- layer=2 filter=22 channel=18
					-22, 0, 1, -25, -11, -8, -28, -21, 7,
					-- layer=2 filter=22 channel=19
					-21, 5, -3, 2, -10, -16, -29, 6, -4,
					-- layer=2 filter=22 channel=20
					17, 0, -17, 2, -5, -26, -23, -9, 10,
					-- layer=2 filter=22 channel=21
					-13, -12, -25, 9, -17, -11, -5, -21, -15,
					-- layer=2 filter=22 channel=22
					-1, -1, 0, -7, -12, 9, 11, -27, -6,
					-- layer=2 filter=22 channel=23
					9, 5, -27, -3, 4, -13, -13, -10, -22,
					-- layer=2 filter=22 channel=24
					12, -21, 8, -20, -20, -6, -14, 7, -8,
					-- layer=2 filter=22 channel=25
					-3, 6, -17, -14, 9, -6, -13, -7, -12,
					-- layer=2 filter=22 channel=26
					-10, 0, 1, -6, 0, -19, -17, -9, -25,
					-- layer=2 filter=22 channel=27
					-21, -11, -18, -22, 0, -14, -25, -3, 0,
					-- layer=2 filter=22 channel=28
					-11, 1, -13, -10, -15, 4, 14, -11, 0,
					-- layer=2 filter=22 channel=29
					5, -9, -8, -19, 8, -25, 12, -26, -26,
					-- layer=2 filter=22 channel=30
					3, 4, 2, -7, 1, -3, 7, -26, 0,
					-- layer=2 filter=22 channel=31
					-24, -15, 7, -18, 0, -14, -7, -17, -19,
					-- layer=2 filter=23 channel=0
					8, -4, 18, 18, 11, -21, -33, 8, 22,
					-- layer=2 filter=23 channel=1
					21, 34, -2, 2, 51, 7, -11, -1, -19,
					-- layer=2 filter=23 channel=2
					-42, -16, 36, -66, -17, 33, -59, -1, 6,
					-- layer=2 filter=23 channel=3
					3, -10, -14, 18, 6, -7, -1, -1, 20,
					-- layer=2 filter=23 channel=4
					-25, -27, -48, -19, -37, 27, -9, -33, 20,
					-- layer=2 filter=23 channel=5
					-13, -34, -41, 48, 3, -22, 34, 10, -31,
					-- layer=2 filter=23 channel=6
					14, -33, -23, 32, -64, -64, 6, -52, -69,
					-- layer=2 filter=23 channel=7
					25, -14, -8, 38, 52, 18, -4, 18, 91,
					-- layer=2 filter=23 channel=8
					36, -31, -46, 43, 2, -34, 21, -6, -2,
					-- layer=2 filter=23 channel=9
					-12, 56, 35, -21, 24, -19, -8, -20, -37,
					-- layer=2 filter=23 channel=10
					-50, 45, 25, -55, 77, 74, -20, 44, 75,
					-- layer=2 filter=23 channel=11
					-8, -25, -20, -6, 6, 4, 0, 12, 11,
					-- layer=2 filter=23 channel=12
					-22, -10, 18, 3, 50, 72, 40, 47, 38,
					-- layer=2 filter=23 channel=13
					-24, -24, 30, -36, -23, 7, 9, 1, 20,
					-- layer=2 filter=23 channel=14
					-6, -14, 26, 11, 2, -4, -1, -5, -4,
					-- layer=2 filter=23 channel=15
					30, 27, 27, 38, 127, 92, 6, 72, 49,
					-- layer=2 filter=23 channel=16
					-28, 14, 25, -14, 5, 19, -26, 18, 39,
					-- layer=2 filter=23 channel=17
					-66, -121, -14, -100, -14, 36, -47, 31, 21,
					-- layer=2 filter=23 channel=18
					-15, -32, -38, 0, -26, -19, -34, -13, 27,
					-- layer=2 filter=23 channel=19
					-27, 2, 28, -44, 26, 1, 24, -5, -32,
					-- layer=2 filter=23 channel=20
					52, 14, 23, 22, -49, -49, 22, -34, -32,
					-- layer=2 filter=23 channel=21
					-15, 26, 30, 4, 28, 13, 17, -4, -19,
					-- layer=2 filter=23 channel=22
					-3, -19, -15, -36, -23, -10, -43, -27, -1,
					-- layer=2 filter=23 channel=23
					69, 38, -22, 38, 20, -38, 14, -43, -44,
					-- layer=2 filter=23 channel=24
					-20, 32, 9, 2, 15, 21, -6, -13, 26,
					-- layer=2 filter=23 channel=25
					-27, -6, -12, -45, -55, -11, -34, 16, -26,
					-- layer=2 filter=23 channel=26
					-6, -29, -31, -66, -37, -17, -44, 1, 1,
					-- layer=2 filter=23 channel=27
					55, 50, 8, 27, 26, -49, 27, -25, -28,
					-- layer=2 filter=23 channel=28
					29, 0, 11, -49, -32, 43, -92, -31, 28,
					-- layer=2 filter=23 channel=29
					-16, -31, -22, 19, -39, -22, 2, -36, 5,
					-- layer=2 filter=23 channel=30
					29, 33, -32, 59, 23, -45, 20, -10, -56,
					-- layer=2 filter=23 channel=31
					36, 4, -28, 24, -16, -40, 25, -13, -36,
					-- layer=2 filter=24 channel=0
					-12, -92, -36, -27, -88, -60, 0, 21, -21,
					-- layer=2 filter=24 channel=1
					9, 12, 1, -70, -102, -92, 12, -21, 15,
					-- layer=2 filter=24 channel=2
					24, -7, -31, 17, 5, -31, 48, 16, -45,
					-- layer=2 filter=24 channel=3
					5, 13, 14, 15, -7, 1, 12, -25, 2,
					-- layer=2 filter=24 channel=4
					18, 119, 50, 61, 115, 112, 11, 12, 20,
					-- layer=2 filter=24 channel=5
					0, 30, 39, 5, 8, 7, 12, 6, -17,
					-- layer=2 filter=24 channel=6
					-23, -32, -10, -2, -49, 13, -31, -38, 22,
					-- layer=2 filter=24 channel=7
					-27, 11, -20, 9, 51, 28, -14, 18, 24,
					-- layer=2 filter=24 channel=8
					5, 6, -26, 20, 15, 32, -16, -21, 21,
					-- layer=2 filter=24 channel=9
					-12, -50, -9, -54, -88, -79, 35, 12, 75,
					-- layer=2 filter=24 channel=10
					6, -35, -44, -13, -11, -24, 60, 63, 69,
					-- layer=2 filter=24 channel=11
					3, 17, -7, 39, -8, -25, 27, -10, -18,
					-- layer=2 filter=24 channel=12
					25, 55, 59, -20, 93, 103, -22, 25, 53,
					-- layer=2 filter=24 channel=13
					2, -18, 0, 1, -48, -4, 0, -50, -18,
					-- layer=2 filter=24 channel=14
					-5, 10, -3, 11, 9, 8, 4, 4, -20,
					-- layer=2 filter=24 channel=15
					22, 0, -10, 11, 0, -17, -26, -16, -58,
					-- layer=2 filter=24 channel=16
					17, 4, -14, 42, 28, -10, 17, -16, -47,
					-- layer=2 filter=24 channel=17
					12, 67, 27, 32, 60, 50, 3, 43, -18,
					-- layer=2 filter=24 channel=18
					12, 21, -14, 32, 6, 11, 17, 13, -31,
					-- layer=2 filter=24 channel=19
					-14, -10, 21, -53, -136, -67, 28, -15, 0,
					-- layer=2 filter=24 channel=20
					-8, 21, -20, 6, -36, -17, -44, -44, 6,
					-- layer=2 filter=24 channel=21
					0, -12, -27, -48, -136, -88, -6, -51, -36,
					-- layer=2 filter=24 channel=22
					2, 32, 22, 31, 44, 39, -59, -30, 40,
					-- layer=2 filter=24 channel=23
					-7, -23, -3, -24, -17, 8, -16, -7, 35,
					-- layer=2 filter=24 channel=24
					28, 23, -13, -7, -7, -22, 6, 6, 13,
					-- layer=2 filter=24 channel=25
					15, -34, -29, 46, 0, -27, 19, -9, -46,
					-- layer=2 filter=24 channel=26
					6, -26, 0, -11, 2, 8, 9, 0, 4,
					-- layer=2 filter=24 channel=27
					-14, 6, -28, 27, 20, 24, 4, 7, 27,
					-- layer=2 filter=24 channel=28
					41, 28, 14, -3, 6, -6, -18, 12, -40,
					-- layer=2 filter=24 channel=29
					30, 36, -12, -11, 26, 11, -15, 7, 2,
					-- layer=2 filter=24 channel=30
					-9, 27, -36, 16, 6, -39, 32, 13, 14,
					-- layer=2 filter=24 channel=31
					-22, 19, 0, 8, 13, 8, -7, 3, 18,
					-- layer=2 filter=25 channel=0
					-21, -8, 40, -6, -5, -13, -3, 10, 5,
					-- layer=2 filter=25 channel=1
					15, 9, 20, 4, 26, -1, -33, -21, 16,
					-- layer=2 filter=25 channel=2
					-39, -54, -19, -69, -71, -1, 6, -26, -20,
					-- layer=2 filter=25 channel=3
					-13, 25, -13, -35, -11, -10, -22, -11, 9,
					-- layer=2 filter=25 channel=4
					19, -19, 45, 6, 9, 8, 54, 23, 40,
					-- layer=2 filter=25 channel=5
					6, -40, -28, -7, -62, -19, -25, -24, -34,
					-- layer=2 filter=25 channel=6
					-1, 24, -25, 4, 31, -2, 28, 13, -21,
					-- layer=2 filter=25 channel=7
					0, -22, -51, -33, -72, -68, -24, -68, -42,
					-- layer=2 filter=25 channel=8
					17, -29, -27, -9, -19, 19, 15, 34, -13,
					-- layer=2 filter=25 channel=9
					9, 26, 32, 20, 10, 14, 30, 26, -6,
					-- layer=2 filter=25 channel=10
					66, 71, 10, 33, -36, 31, 16, -2, 5,
					-- layer=2 filter=25 channel=11
					-47, 9, -8, -20, -36, -54, -50, -4, -39,
					-- layer=2 filter=25 channel=12
					-32, 24, 17, 52, -1, -21, 36, -38, -23,
					-- layer=2 filter=25 channel=13
					1, 3, -7, -35, -14, -47, -18, -21, -32,
					-- layer=2 filter=25 channel=14
					-12, 1, 1, -11, -3, -20, 7, 8, -21,
					-- layer=2 filter=25 channel=15
					-24, 44, -23, -14, -50, -12, -14, -23, -22,
					-- layer=2 filter=25 channel=16
					-55, -72, -41, -71, -77, -11, -82, -15, -19,
					-- layer=2 filter=25 channel=17
					18, 40, 0, -23, -10, 7, 27, -40, 11,
					-- layer=2 filter=25 channel=18
					-31, -7, -23, -27, -4, -50, -4, -24, -39,
					-- layer=2 filter=25 channel=19
					26, -35, -4, -56, -11, 9, 0, 0, 20,
					-- layer=2 filter=25 channel=20
					17, 25, -15, 39, 36, 3, 62, 24, 20,
					-- layer=2 filter=25 channel=21
					14, 38, 16, 11, 14, 0, -5, 8, -11,
					-- layer=2 filter=25 channel=22
					10, 44, 30, 30, 31, 24, 57, 37, 28,
					-- layer=2 filter=25 channel=23
					-1, 26, -18, -2, 10, 2, 27, 23, 27,
					-- layer=2 filter=25 channel=24
					-24, 9, 18, -6, -11, 5, -1, -42, -49,
					-- layer=2 filter=25 channel=25
					-14, -22, 30, -66, -43, -26, 3, 35, 9,
					-- layer=2 filter=25 channel=26
					-15, -9, -38, -26, -26, -38, -16, -22, -90,
					-- layer=2 filter=25 channel=27
					-6, 10, 5, -44, -28, -1, -14, 11, 10,
					-- layer=2 filter=25 channel=28
					-20, 3, 9, -13, 17, -14, 40, 24, 18,
					-- layer=2 filter=25 channel=29
					17, 14, -8, 16, -1, 18, -23, -30, -49,
					-- layer=2 filter=25 channel=30
					-34, -14, -15, -30, -9, -24, -48, -12, -11,
					-- layer=2 filter=25 channel=31
					18, -6, -27, 7, -23, -14, -21, 0, 5,
					-- layer=2 filter=26 channel=0
					-16, 10, 6, -12, -19, 12, 9, 0, -13,
					-- layer=2 filter=26 channel=1
					-20, 6, 14, -11, -4, -2, 0, -7, 8,
					-- layer=2 filter=26 channel=2
					-20, -12, -18, 14, -26, -27, -10, -21, -26,
					-- layer=2 filter=26 channel=3
					17, 18, -19, -1, 1, 10, 18, -16, 2,
					-- layer=2 filter=26 channel=4
					-18, -13, -9, -14, -21, -2, 1, 14, -23,
					-- layer=2 filter=26 channel=5
					-17, -15, 3, -20, -13, -18, -5, 5, 17,
					-- layer=2 filter=26 channel=6
					-11, -20, -18, -5, 8, -18, -3, 14, -21,
					-- layer=2 filter=26 channel=7
					14, -14, -1, -16, -5, 13, -6, -14, 7,
					-- layer=2 filter=26 channel=8
					-19, -13, -1, 17, 3, -12, -11, -17, 9,
					-- layer=2 filter=26 channel=9
					11, 5, 14, 2, -6, -8, 11, -4, -14,
					-- layer=2 filter=26 channel=10
					-17, 2, 1, -5, -19, -11, 7, -19, -3,
					-- layer=2 filter=26 channel=11
					1, -20, 0, 8, 11, -3, 13, 9, -1,
					-- layer=2 filter=26 channel=12
					6, -17, -20, -4, 17, 0, -8, 9, -24,
					-- layer=2 filter=26 channel=13
					1, -24, 10, -11, 4, -18, -13, -11, -4,
					-- layer=2 filter=26 channel=14
					2, 0, 10, -5, -18, 0, -9, -16, 12,
					-- layer=2 filter=26 channel=15
					-7, -11, -14, -18, 2, -16, -11, 6, -11,
					-- layer=2 filter=26 channel=16
					-9, -19, -3, 1, 4, -27, -6, 1, 0,
					-- layer=2 filter=26 channel=17
					14, 2, 4, 2, -18, -13, 13, -2, -8,
					-- layer=2 filter=26 channel=18
					7, -20, 0, -15, 11, -5, 13, -14, 4,
					-- layer=2 filter=26 channel=19
					10, 5, -27, -24, -25, -22, -6, 9, 0,
					-- layer=2 filter=26 channel=20
					16, 4, 7, -2, -15, -22, -5, -10, -11,
					-- layer=2 filter=26 channel=21
					3, -6, -11, 11, 2, -9, -8, 11, -1,
					-- layer=2 filter=26 channel=22
					11, 3, -10, -4, -1, 12, -27, -13, 10,
					-- layer=2 filter=26 channel=23
					5, -12, -16, -26, -19, -23, 2, -18, 2,
					-- layer=2 filter=26 channel=24
					12, -6, 7, -15, 9, 2, -7, -15, 6,
					-- layer=2 filter=26 channel=25
					-20, -6, 9, 2, 14, -6, -20, -3, -4,
					-- layer=2 filter=26 channel=26
					-29, -9, -3, 10, -26, -14, -24, 12, 5,
					-- layer=2 filter=26 channel=27
					-24, -4, -15, -18, -22, 0, 8, -23, -18,
					-- layer=2 filter=26 channel=28
					-18, -1, -5, -16, 11, 6, -20, -18, -8,
					-- layer=2 filter=26 channel=29
					-10, -20, 6, -4, -4, -28, -18, -14, -8,
					-- layer=2 filter=26 channel=30
					14, -7, -16, -22, -12, -14, -7, 11, 11,
					-- layer=2 filter=26 channel=31
					7, 2, 0, -18, -19, 10, 4, -9, -26,
					-- layer=2 filter=27 channel=0
					-76, -93, -92, -80, -93, -26, -63, -72, -91,
					-- layer=2 filter=27 channel=1
					-84, -53, 15, -75, -130, -32, -29, -43, -11,
					-- layer=2 filter=27 channel=2
					-14, -23, -14, -1, 3, -14, 58, 16, -11,
					-- layer=2 filter=27 channel=3
					-21, 26, 5, -14, 17, 5, -15, 12, -13,
					-- layer=2 filter=27 channel=4
					-57, -55, -7, -34, -32, 65, 4, 79, 18,
					-- layer=2 filter=27 channel=5
					7, 0, -11, 4, -13, -7, -16, -5, -28,
					-- layer=2 filter=27 channel=6
					-11, -33, -36, 14, -20, -31, -9, -14, 3,
					-- layer=2 filter=27 channel=7
					-7, -2, 16, 8, 45, 19, 28, 81, 70,
					-- layer=2 filter=27 channel=8
					32, -2, -1, 10, 17, 3, 18, 8, 38,
					-- layer=2 filter=27 channel=9
					-20, -55, -80, -94, -132, -67, -37, -33, -41,
					-- layer=2 filter=27 channel=10
					-9, -46, -21, -34, -16, -3, -48, -18, -4,
					-- layer=2 filter=27 channel=11
					-21, 9, 6, 12, -6, 20, 10, 6, 27,
					-- layer=2 filter=27 channel=12
					-31, -26, -25, -82, 42, 4, -25, 28, 73,
					-- layer=2 filter=27 channel=13
					30, -31, -87, -21, -2, -8, 15, 19, 28,
					-- layer=2 filter=27 channel=14
					7, -4, -3, 15, 15, -3, 13, -20, 6,
					-- layer=2 filter=27 channel=15
					-35, 24, -1, 13, 39, 44, 27, 57, 60,
					-- layer=2 filter=27 channel=16
					-24, -6, 11, -12, 12, 16, -9, 21, 29,
					-- layer=2 filter=27 channel=17
					-10, 6, -4, 5, 26, 48, 51, 76, 66,
					-- layer=2 filter=27 channel=18
					0, -3, 4, 2, 5, 0, 3, 48, 38,
					-- layer=2 filter=27 channel=19
					-85, -94, -20, -146, -137, -144, -30, -52, -38,
					-- layer=2 filter=27 channel=20
					48, 26, 22, 43, 45, 2, 27, 1, 20,
					-- layer=2 filter=27 channel=21
					-65, -65, -79, -76, -117, -91, -67, -91, -29,
					-- layer=2 filter=27 channel=22
					13, 24, 36, 23, 21, 34, 14, 14, 1,
					-- layer=2 filter=27 channel=23
					40, 2, 2, 38, 6, 3, 0, 0, 17,
					-- layer=2 filter=27 channel=24
					3, -1, 6, -11, -41, 0, 3, 10, 3,
					-- layer=2 filter=27 channel=25
					-48, -74, -79, -41, -29, -23, -20, 15, -43,
					-- layer=2 filter=27 channel=26
					-7, -4, -30, -14, 5, -5, -5, 16, 36,
					-- layer=2 filter=27 channel=27
					23, -4, 14, 31, 29, 27, 4, -3, 8,
					-- layer=2 filter=27 channel=28
					29, -24, -18, 17, 9, -13, 40, 26, 6,
					-- layer=2 filter=27 channel=29
					6, 13, -5, 26, 17, 24, -9, 19, -4,
					-- layer=2 filter=27 channel=30
					-6, -7, -11, 2, -22, -8, -20, 0, 0,
					-- layer=2 filter=27 channel=31
					-1, 9, -7, 14, -8, 22, 28, 38, -7,
					-- layer=2 filter=28 channel=0
					4, -14, 4, 1, -31, -10, -20, -29, -15,
					-- layer=2 filter=28 channel=1
					-10, 2, -20, 0, -20, 0, 1, 5, 15,
					-- layer=2 filter=28 channel=2
					0, -16, 14, 6, -3, -15, -13, 2, 7,
					-- layer=2 filter=28 channel=3
					-11, -8, 22, 18, 20, 10, 3, -3, 13,
					-- layer=2 filter=28 channel=4
					-5, -2, 13, 3, 6, -10, 0, -4, 2,
					-- layer=2 filter=28 channel=5
					8, 9, 2, 12, 10, 5, 1, -20, 14,
					-- layer=2 filter=28 channel=6
					10, 15, 0, -21, -16, 15, 7, -3, 5,
					-- layer=2 filter=28 channel=7
					-25, -19, -26, -30, 5, -15, -11, 7, -1,
					-- layer=2 filter=28 channel=8
					0, 1, -13, 14, 16, 13, -2, -5, -3,
					-- layer=2 filter=28 channel=9
					-16, -24, -20, -12, 3, -18, 0, -20, 12,
					-- layer=2 filter=28 channel=10
					-28, -5, -11, -17, -2, 2, 4, -7, -22,
					-- layer=2 filter=28 channel=11
					12, 15, -22, 1, 14, 3, 12, -9, 6,
					-- layer=2 filter=28 channel=12
					-4, 9, -6, -21, -12, -19, -17, -18, -15,
					-- layer=2 filter=28 channel=13
					-1, -22, -17, -21, -15, -22, -17, -28, -6,
					-- layer=2 filter=28 channel=14
					17, -4, 0, 4, 0, -15, -20, -12, 11,
					-- layer=2 filter=28 channel=15
					-7, -6, -20, -12, -14, -17, 8, 1, -23,
					-- layer=2 filter=28 channel=16
					9, 0, -1, 0, -20, -6, 2, 11, -20,
					-- layer=2 filter=28 channel=17
					8, -4, 4, 0, 8, -18, -8, 7, 10,
					-- layer=2 filter=28 channel=18
					-9, 2, -16, -12, 0, -17, 10, -11, -11,
					-- layer=2 filter=28 channel=19
					-1, 4, -12, -23, 15, -14, -16, 13, -19,
					-- layer=2 filter=28 channel=20
					3, -9, -5, 4, -17, 5, -13, -17, 1,
					-- layer=2 filter=28 channel=21
					3, -23, -20, -36, -3, -23, -14, -17, -27,
					-- layer=2 filter=28 channel=22
					-14, 0, -8, 1, 9, -27, -8, 8, -9,
					-- layer=2 filter=28 channel=23
					-6, -18, 6, 8, 3, -21, 5, 5, -23,
					-- layer=2 filter=28 channel=24
					-10, -21, -3, -5, 7, 15, 14, -15, -23,
					-- layer=2 filter=28 channel=25
					10, -5, -6, 7, 3, 3, -19, 17, 15,
					-- layer=2 filter=28 channel=26
					-1, 10, -9, -13, 5, -2, -9, -23, 13,
					-- layer=2 filter=28 channel=27
					-9, -23, 2, -13, -14, -14, -14, 12, 16,
					-- layer=2 filter=28 channel=28
					-28, -15, 1, 5, -25, 6, -24, -11, -6,
					-- layer=2 filter=28 channel=29
					-19, 1, 8, 1, -17, -18, -23, -16, 14,
					-- layer=2 filter=28 channel=30
					-12, 3, 4, -7, -14, 2, 9, -4, -23,
					-- layer=2 filter=28 channel=31
					-13, -24, 10, 3, -5, 4, 7, -18, -9,
					-- layer=2 filter=29 channel=0
					12, -6, 5, 28, -3, 19, 57, 12, 50,
					-- layer=2 filter=29 channel=1
					-26, -85, -2, -2, -61, -26, 49, 35, 13,
					-- layer=2 filter=29 channel=2
					9, -27, 15, -38, -16, 5, -17, 23, 21,
					-- layer=2 filter=29 channel=3
					12, 18, -13, 0, 16, -3, 3, -14, -19,
					-- layer=2 filter=29 channel=4
					31, 50, 12, 54, 31, 23, -1, 67, 19,
					-- layer=2 filter=29 channel=5
					-70, -44, -23, -37, -15, -32, -15, -12, -17,
					-- layer=2 filter=29 channel=6
					-18, -17, -33, -36, -14, -30, -25, -30, -3,
					-- layer=2 filter=29 channel=7
					-18, 29, 16, 18, 30, 56, 48, 39, 5,
					-- layer=2 filter=29 channel=8
					-36, -42, 5, 9, -24, 40, 15, -10, 22,
					-- layer=2 filter=29 channel=9
					-49, -59, -21, -16, -61, -37, 5, -18, -11,
					-- layer=2 filter=29 channel=10
					11, 39, 16, 15, 0, 14, 27, 58, 46,
					-- layer=2 filter=29 channel=11
					-75, -18, -52, -34, -16, 12, 14, 19, 33,
					-- layer=2 filter=29 channel=12
					21, 13, 6, -36, 53, 25, 49, 56, 14,
					-- layer=2 filter=29 channel=13
					3, 1, 58, 16, -21, 58, 34, 5, 7,
					-- layer=2 filter=29 channel=14
					13, -9, -13, 10, 10, 15, -2, 1, -23,
					-- layer=2 filter=29 channel=15
					43, 53, -110, 56, 68, -23, 14, 61, 27,
					-- layer=2 filter=29 channel=16
					20, 7, 6, -28, -21, -1, -8, 19, 22,
					-- layer=2 filter=29 channel=17
					0, 29, -27, 27, 45, 16, 39, 28, 80,
					-- layer=2 filter=29 channel=18
					-51, -7, 4, -17, 5, 22, 22, -3, 16,
					-- layer=2 filter=29 channel=19
					5, 7, 18, 20, 1, 36, 18, 7, 39,
					-- layer=2 filter=29 channel=20
					4, 24, 46, -27, -29, 17, -69, -105, -81,
					-- layer=2 filter=29 channel=21
					-33, -85, -47, -51, -113, -70, 1, -36, 3,
					-- layer=2 filter=29 channel=22
					17, 26, 3, 35, 53, 32, 9, -7, -17,
					-- layer=2 filter=29 channel=23
					19, 5, 21, 22, -10, 0, -15, -20, -18,
					-- layer=2 filter=29 channel=24
					-46, -59, -37, -25, -41, -48, -18, -16, 13,
					-- layer=2 filter=29 channel=25
					3, 0, 57, 36, 6, 39, 36, 2, 40,
					-- layer=2 filter=29 channel=26
					-20, -17, -37, -8, -47, 20, -24, 3, 4,
					-- layer=2 filter=29 channel=27
					-21, 25, 30, -4, 9, 27, 4, 7, 20,
					-- layer=2 filter=29 channel=28
					-7, 35, -33, 18, 4, 2, 33, 25, 5,
					-- layer=2 filter=29 channel=29
					-71, -44, -12, -25, -24, -8, -10, 30, 49,
					-- layer=2 filter=29 channel=30
					-36, -20, -41, -41, -14, -10, -37, -19, 0,
					-- layer=2 filter=29 channel=31
					-19, -8, -31, 14, -6, -11, -2, 6, 17,
					-- layer=2 filter=30 channel=0
					-22, -14, -8, 8, -15, 0, 1, -6, -28,
					-- layer=2 filter=30 channel=1
					-17, -8, -5, 13, -1, -13, -2, 5, -6,
					-- layer=2 filter=30 channel=2
					10, -17, -13, -7, -22, -15, -9, 9, 5,
					-- layer=2 filter=30 channel=3
					12, 0, 5, -13, -18, -5, -14, 1, 18,
					-- layer=2 filter=30 channel=4
					-16, -19, -1, 12, 12, -15, -16, -19, -20,
					-- layer=2 filter=30 channel=5
					-3, -7, 2, 18, -21, -18, 2, 7, 19,
					-- layer=2 filter=30 channel=6
					-27, -17, 8, 11, -13, -13, 6, 13, -27,
					-- layer=2 filter=30 channel=7
					-25, -10, 8, -6, -25, -17, -15, -24, -14,
					-- layer=2 filter=30 channel=8
					2, 13, 4, 14, -16, -1, 12, -4, -10,
					-- layer=2 filter=30 channel=9
					1, -16, -31, -11, 10, -20, -13, 1, 0,
					-- layer=2 filter=30 channel=10
					-20, 1, -11, -15, -9, -24, 1, -8, -27,
					-- layer=2 filter=30 channel=11
					-11, -1, 1, -5, -21, -3, -16, -3, -12,
					-- layer=2 filter=30 channel=12
					-22, -15, 2, 4, 2, 19, 0, -14, -26,
					-- layer=2 filter=30 channel=13
					7, -16, 14, 12, 11, 7, 11, -18, -1,
					-- layer=2 filter=30 channel=14
					-21, -1, -20, 17, 3, 3, -5, 5, -15,
					-- layer=2 filter=30 channel=15
					13, -6, 7, -9, -21, -1, 7, 3, -14,
					-- layer=2 filter=30 channel=16
					-16, -15, -7, -10, -21, -4, -2, 10, 7,
					-- layer=2 filter=30 channel=17
					0, 15, 10, 5, 11, -10, -15, -24, 6,
					-- layer=2 filter=30 channel=18
					0, -15, -10, -7, -19, -17, -24, -6, -21,
					-- layer=2 filter=30 channel=19
					3, -34, -14, -29, -16, 3, 0, -9, 7,
					-- layer=2 filter=30 channel=20
					-19, 5, 6, -8, 1, -30, -26, -1, 6,
					-- layer=2 filter=30 channel=21
					0, -6, -18, 12, -7, -22, -2, -24, -31,
					-- layer=2 filter=30 channel=22
					4, -14, -1, 2, 8, -14, 0, 2, -2,
					-- layer=2 filter=30 channel=23
					-18, 7, 12, 2, -1, -14, -19, 6, 2,
					-- layer=2 filter=30 channel=24
					-3, 2, 3, -23, 8, -9, -7, 1, -8,
					-- layer=2 filter=30 channel=25
					5, -25, 5, -5, 1, 2, -13, 8, -10,
					-- layer=2 filter=30 channel=26
					-2, 10, -2, 12, -14, -12, 8, 13, -6,
					-- layer=2 filter=30 channel=27
					-1, -4, -11, -8, 15, 4, -9, -7, -30,
					-- layer=2 filter=30 channel=28
					-6, -18, -21, -29, 9, -22, -22, 9, -18,
					-- layer=2 filter=30 channel=29
					-9, 4, -8, -6, -5, 6, 11, -4, -8,
					-- layer=2 filter=30 channel=30
					13, -24, -18, -3, -27, -2, -6, 1, -20,
					-- layer=2 filter=30 channel=31
					-14, -20, -3, -6, -22, -19, -21, -15, 6,
					-- layer=2 filter=31 channel=0
					-78, -109, -76, -41, -56, -45, -21, 21, 17,
					-- layer=2 filter=31 channel=1
					12, 0, -14, -59, -56, -22, 0, 7, 29,
					-- layer=2 filter=31 channel=2
					26, 9, -14, 30, 0, 7, 54, 26, 11,
					-- layer=2 filter=31 channel=3
					24, -8, -1, -12, -10, 27, -4, 1, -5,
					-- layer=2 filter=31 channel=4
					-32, -123, -27, -4, -57, -55, -44, -26, -20,
					-- layer=2 filter=31 channel=5
					28, -2, -14, -16, -5, -62, -2, 30, -17,
					-- layer=2 filter=31 channel=6
					-15, -1, 0, 3, -37, -3, -2, -32, -21,
					-- layer=2 filter=31 channel=7
					12, -37, 25, 20, -24, -27, -21, -13, 2,
					-- layer=2 filter=31 channel=8
					-30, -61, -11, 30, 24, -2, 22, -23, 16,
					-- layer=2 filter=31 channel=9
					16, -9, 4, -25, -58, -26, 9, -25, -23,
					-- layer=2 filter=31 channel=10
					108, 142, 110, 58, 124, 127, 60, 121, 96,
					-- layer=2 filter=31 channel=11
					22, -31, -47, 32, -1, -49, -27, 14, 29,
					-- layer=2 filter=31 channel=12
					-13, -13, -10, -30, -42, -3, -4, -25, 6,
					-- layer=2 filter=31 channel=13
					-48, -10, -35, 21, 31, 42, 33, 20, 27,
					-- layer=2 filter=31 channel=14
					5, -4, 5, -3, 4, 9, -26, 4, -9,
					-- layer=2 filter=31 channel=15
					-12, -9, 29, -33, -25, -3, -10, -41, -11,
					-- layer=2 filter=31 channel=16
					5, -30, -32, -7, -37, -26, 12, -10, 35,
					-- layer=2 filter=31 channel=17
					-76, -40, -11, -35, -80, -4, -2, -43, -16,
					-- layer=2 filter=31 channel=18
					0, -22, -4, 13, -5, -2, -13, 15, -5,
					-- layer=2 filter=31 channel=19
					-53, 10, -11, -3, 41, -32, 7, -5, -19,
					-- layer=2 filter=31 channel=20
					23, 31, 20, 17, 12, 31, 13, -35, -28,
					-- layer=2 filter=31 channel=21
					47, 20, 42, -17, -2, -27, -31, -24, -38,
					-- layer=2 filter=31 channel=22
					-61, 22, 8, 20, -13, 42, 17, -3, 64,
					-- layer=2 filter=31 channel=23
					24, 8, -9, -9, -34, 3, 8, -17, -4,
					-- layer=2 filter=31 channel=24
					16, -11, 2, 42, 10, -12, -11, -35, -17,
					-- layer=2 filter=31 channel=25
					-95, -72, -67, 16, 13, -2, 30, 46, 32,
					-- layer=2 filter=31 channel=26
					-65, -3, -24, -2, -34, -43, 0, -32, -42,
					-- layer=2 filter=31 channel=27
					-37, -40, -11, -6, 20, -26, 14, -9, 3,
					-- layer=2 filter=31 channel=28
					-31, -2, 13, 20, 37, 31, 53, 7, 16,
					-- layer=2 filter=31 channel=29
					-15, -44, -56, 0, -28, -29, -2, 12, -26,
					-- layer=2 filter=31 channel=30
					12, -33, -63, -16, -76, -106, 10, -45, -51,
					-- layer=2 filter=31 channel=31
					-12, -52, -22, -12, -12, -2, -10, -9, -8,
					-- layer=2 filter=32 channel=0
					-2, 35, 19, 11, 27, 37, 13, 48, 8,
					-- layer=2 filter=32 channel=1
					26, 4, -7, 19, 63, 30, 2, 27, 23,
					-- layer=2 filter=32 channel=2
					16, 45, 26, -7, 21, 26, -13, -9, 23,
					-- layer=2 filter=32 channel=3
					-12, 1, -9, -7, 7, 10, -7, -22, 0,
					-- layer=2 filter=32 channel=4
					9, -19, 0, -35, -14, 6, -61, -30, -23,
					-- layer=2 filter=32 channel=5
					-57, -30, -30, -69, -52, -12, 13, -21, -30,
					-- layer=2 filter=32 channel=6
					7, -2, -15, -21, 12, -8, -30, -34, -48,
					-- layer=2 filter=32 channel=7
					-51, 3, -24, 5, -36, -31, 46, 31, -41,
					-- layer=2 filter=32 channel=8
					-29, 0, -13, -45, -49, -22, 23, -51, -70,
					-- layer=2 filter=32 channel=9
					21, 11, -17, 24, 53, 35, -57, 50, 5,
					-- layer=2 filter=32 channel=10
					-75, -59, -77, -71, -13, -8, -24, 40, -11,
					-- layer=2 filter=32 channel=11
					-8, 16, -30, -47, -32, 0, -14, -40, -18,
					-- layer=2 filter=32 channel=12
					-20, -58, -38, 29, -31, -12, 27, -9, 21,
					-- layer=2 filter=32 channel=13
					-26, -8, -25, 70, 44, 8, 79, 41, -6,
					-- layer=2 filter=32 channel=14
					-13, -2, -13, -20, 15, 5, 4, 7, 1,
					-- layer=2 filter=32 channel=15
					-15, -57, -47, -40, -11, 12, -77, -19, 15,
					-- layer=2 filter=32 channel=16
					-3, 46, -6, -14, 29, 27, -6, 18, -26,
					-- layer=2 filter=32 channel=17
					0, -24, -4, 10, 31, -28, -67, 53, 28,
					-- layer=2 filter=32 channel=18
					13, 60, 9, -36, 13, 24, -32, -46, -33,
					-- layer=2 filter=32 channel=19
					-4, 18, 4, 43, 17, 10, 37, 44, 24,
					-- layer=2 filter=32 channel=20
					38, 21, 0, -26, 12, 27, -19, -52, -40,
					-- layer=2 filter=32 channel=21
					12, 5, 6, 25, 59, 39, -4, 42, 29,
					-- layer=2 filter=32 channel=22
					-27, -7, 11, -16, 5, 21, -43, 16, 10,
					-- layer=2 filter=32 channel=23
					4, -44, -1, 15, -11, -32, -15, 0, -32,
					-- layer=2 filter=32 channel=24
					13, -3, -2, 0, 34, 18, -35, -12, 6,
					-- layer=2 filter=32 channel=25
					0, 6, -25, 4, 10, -15, -12, 41, 5,
					-- layer=2 filter=32 channel=26
					-13, 62, 6, -28, 43, 2, -45, -7, -25,
					-- layer=2 filter=32 channel=27
					-20, 11, 12, 15, -24, 0, 46, -1, -10,
					-- layer=2 filter=32 channel=28
					23, 0, 28, 13, 12, 27, -97, -21, 5,
					-- layer=2 filter=32 channel=29
					5, 12, 5, -41, -3, 0, -41, -36, -29,
					-- layer=2 filter=32 channel=30
					-30, -31, -19, -22, -11, 8, -5, -45, -7,
					-- layer=2 filter=32 channel=31
					-17, 27, 11, -17, -3, -15, 21, -30, -46,
					-- layer=2 filter=33 channel=0
					11, 34, 24, -40, 58, 26, -31, -29, 19,
					-- layer=2 filter=33 channel=1
					2, 7, -14, 6, -5, 40, -53, -17, 30,
					-- layer=2 filter=33 channel=2
					40, 15, -41, 3, 4, 0, 33, -6, 15,
					-- layer=2 filter=33 channel=3
					-15, 3, 18, 18, 10, -2, 1, 0, 9,
					-- layer=2 filter=33 channel=4
					-36, -69, -81, -63, -32, -94, 33, -41, -18,
					-- layer=2 filter=33 channel=5
					2, 0, 2, 6, 20, -5, 10, 23, -32,
					-- layer=2 filter=33 channel=6
					-43, 43, 33, -44, 30, 56, -60, -4, -1,
					-- layer=2 filter=33 channel=7
					14, 7, 13, 55, 81, 93, 31, -2, 81,
					-- layer=2 filter=33 channel=8
					-60, 17, 9, -58, -4, 15, -13, 10, 27,
					-- layer=2 filter=33 channel=9
					-20, 27, 27, -32, 22, 33, -83, -29, 11,
					-- layer=2 filter=33 channel=10
					5, -36, -52, 25, 60, 12, 8, 20, 0,
					-- layer=2 filter=33 channel=11
					0, -22, -10, 27, 0, 5, 19, 48, -2,
					-- layer=2 filter=33 channel=12
					20, 2, -44, 12, -63, -33, -3, 18, -10,
					-- layer=2 filter=33 channel=13
					31, 37, 37, 35, 42, 54, 17, 15, 22,
					-- layer=2 filter=33 channel=14
					1, -20, 1, 13, 3, 10, -17, 1, -9,
					-- layer=2 filter=33 channel=15
					-32, -39, -38, 31, 38, 11, 31, -20, 21,
					-- layer=2 filter=33 channel=16
					9, -57, -17, 49, -37, -63, 44, -1, -38,
					-- layer=2 filter=33 channel=17
					-23, -11, -7, 9, 9, 37, -11, 23, 9,
					-- layer=2 filter=33 channel=18
					7, -23, 0, 14, -16, -25, 38, 3, -15,
					-- layer=2 filter=33 channel=19
					-14, 18, 14, -25, 57, 19, 4, -2, 9,
					-- layer=2 filter=33 channel=20
					-49, 5, 18, -68, 9, 30, -35, 0, -2,
					-- layer=2 filter=33 channel=21
					-1, 21, 24, -19, 46, 32, -76, 24, 35,
					-- layer=2 filter=33 channel=22
					-38, -22, -15, -64, -48, 23, -38, -27, -2,
					-- layer=2 filter=33 channel=23
					-7, 51, 42, -64, 20, 35, -83, -13, 14,
					-- layer=2 filter=33 channel=24
					1, -53, -33, 22, -46, -45, 4, 21, -9,
					-- layer=2 filter=33 channel=25
					-3, 7, -30, -22, 17, 2, 22, -16, -9,
					-- layer=2 filter=33 channel=26
					-22, -21, -4, -11, -21, -1, 1, -37, 5,
					-- layer=2 filter=33 channel=27
					28, 30, 34, -35, 25, 44, -23, -23, 20,
					-- layer=2 filter=33 channel=28
					-3, 1, -31, 50, 1, -12, -15, 13, -12,
					-- layer=2 filter=33 channel=29
					16, -8, 5, -12, 16, -6, 33, 11, -26,
					-- layer=2 filter=33 channel=30
					12, 6, 12, 23, -29, -8, -19, -9, -9,
					-- layer=2 filter=33 channel=31
					-16, -7, 23, -36, 35, 19, -3, -7, 13,
					-- layer=2 filter=34 channel=0
					32, 15, -50, 49, 26, 0, -2, 35, 15,
					-- layer=2 filter=34 channel=1
					25, 28, 11, 0, 0, 2, 16, 14, 36,
					-- layer=2 filter=34 channel=2
					-19, -15, -11, -31, -60, -22, -43, -37, -14,
					-- layer=2 filter=34 channel=3
					19, 0, 3, -6, -1, -24, 0, 30, 11,
					-- layer=2 filter=34 channel=4
					39, 6, 39, 8, 38, 24, 40, 36, 37,
					-- layer=2 filter=34 channel=5
					-57, -27, 5, 1, -39, -20, -4, -30, -57,
					-- layer=2 filter=34 channel=6
					-6, 1, -8, 14, 14, 17, -9, 0, 3,
					-- layer=2 filter=34 channel=7
					-3, 45, -104, -2, -30, -15, -4, 6, 15,
					-- layer=2 filter=34 channel=8
					-10, 5, 24, 23, 0, -19, -2, -3, -46,
					-- layer=2 filter=34 channel=9
					0, -15, 7, -14, 0, 8, -5, 4, 34,
					-- layer=2 filter=34 channel=10
					32, 1, 5, -4, -37, -53, -43, -73, -130,
					-- layer=2 filter=34 channel=11
					-73, -81, -5, 1, -13, -37, -9, -54, -67,
					-- layer=2 filter=34 channel=12
					33, 28, -26, 35, 38, 21, 48, 3, 36,
					-- layer=2 filter=34 channel=13
					-4, 26, -22, 0, 38, 21, -11, -32, 34,
					-- layer=2 filter=34 channel=14
					-4, -3, 0, -5, 5, -21, -14, 9, -5,
					-- layer=2 filter=34 channel=15
					0, 2, -35, -37, -48, -37, -27, -24, -12,
					-- layer=2 filter=34 channel=16
					-60, -38, -3, 11, -33, 20, -1, 9, 14,
					-- layer=2 filter=34 channel=17
					-7, 20, 32, -10, -18, 6, -6, 8, 3,
					-- layer=2 filter=34 channel=18
					-27, -57, -10, -12, -18, -29, -25, -23, -27,
					-- layer=2 filter=34 channel=19
					36, 19, 0, 43, 22, 0, 0, 15, 49,
					-- layer=2 filter=34 channel=20
					-9, 11, 25, 6, 4, 0, -10, -23, -17,
					-- layer=2 filter=34 channel=21
					-2, 0, 2, -25, -4, -2, -8, -15, 28,
					-- layer=2 filter=34 channel=22
					8, 18, -13, 7, 15, 3, 40, 27, -13,
					-- layer=2 filter=34 channel=23
					4, -11, -12, 9, 15, -15, 29, 8, 28,
					-- layer=2 filter=34 channel=24
					-11, -64, -11, -25, -41, -6, -15, -32, -21,
					-- layer=2 filter=34 channel=25
					-8, 30, -45, 40, 4, 10, -12, -3, -14,
					-- layer=2 filter=34 channel=26
					29, -10, -11, -25, -35, -17, 0, -1, -4,
					-- layer=2 filter=34 channel=27
					-29, 10, -18, -5, 5, -27, 25, 9, -3,
					-- layer=2 filter=34 channel=28
					-7, 34, 0, -17, 1, 6, 0, 37, -1,
					-- layer=2 filter=34 channel=29
					-31, -35, -22, -3, -13, 9, -7, -22, -18,
					-- layer=2 filter=34 channel=30
					-55, -64, -23, -6, -26, 3, 19, 32, 4,
					-- layer=2 filter=34 channel=31
					10, -11, 9, 13, 4, 0, 23, -5, -1,
					-- layer=2 filter=35 channel=0
					-43, -38, -19, -42, -41, -25, -61, -45, -33,
					-- layer=2 filter=35 channel=1
					-18, -21, 12, -2, -36, 7, -17, -22, 19,
					-- layer=2 filter=35 channel=2
					-42, -56, -8, -87, -55, -35, 7, -22, 12,
					-- layer=2 filter=35 channel=3
					-12, -10, -5, -18, 14, -10, -10, -8, 11,
					-- layer=2 filter=35 channel=4
					4, 30, 4, 20, 76, 12, 13, 59, 0,
					-- layer=2 filter=35 channel=5
					28, -5, -3, 30, 23, -20, 22, 13, -10,
					-- layer=2 filter=35 channel=6
					10, 11, -26, 12, 14, 12, 4, 7, -4,
					-- layer=2 filter=35 channel=7
					7, 35, 33, 17, -5, 13, 14, -1, 15,
					-- layer=2 filter=35 channel=8
					30, 2, 27, 14, 0, 35, 0, 15, 31,
					-- layer=2 filter=35 channel=9
					-14, 2, 30, 3, -17, 15, 6, -11, 24,
					-- layer=2 filter=35 channel=10
					51, 4, -18, 12, -59, 2, 5, 22, 19,
					-- layer=2 filter=35 channel=11
					-25, -46, 13, -11, -29, -25, 17, -23, 4,
					-- layer=2 filter=35 channel=12
					30, 58, 4, 5, 50, 30, 28, 11, 14,
					-- layer=2 filter=35 channel=13
					-32, -28, 31, -9, -34, 25, -33, -9, -12,
					-- layer=2 filter=35 channel=14
					0, -11, -21, -13, -40, -1, 10, 7, -26,
					-- layer=2 filter=35 channel=15
					32, 39, -11, 26, 51, -4, 3, -26, -21,
					-- layer=2 filter=35 channel=16
					-64, -39, -37, -13, -18, 12, 9, -2, -11,
					-- layer=2 filter=35 channel=17
					-28, 21, 3, 7, 49, -9, 43, 11, -34,
					-- layer=2 filter=35 channel=18
					-12, -14, -20, -12, -9, -5, 15, 9, 6,
					-- layer=2 filter=35 channel=19
					-41, -51, 4, -51, -22, 4, 19, 13, 38,
					-- layer=2 filter=35 channel=20
					18, 8, 32, 2, 21, 41, 10, -24, -16,
					-- layer=2 filter=35 channel=21
					-29, 8, 8, 13, -32, 26, 1, -6, 8,
					-- layer=2 filter=35 channel=22
					4, 16, 23, 33, 1, 18, 4, 23, 20,
					-- layer=2 filter=35 channel=23
					23, 25, 21, -21, -15, 10, -16, 33, 10,
					-- layer=2 filter=35 channel=24
					-49, -39, 3, -9, -15, 26, 9, -31, 6,
					-- layer=2 filter=35 channel=25
					-57, -18, -3, -16, -42, -22, 9, -5, -31,
					-- layer=2 filter=35 channel=26
					-44, -68, 13, -10, -53, -23, -17, -32, 48,
					-- layer=2 filter=35 channel=27
					-3, -6, -25, -6, -31, -5, -4, 0, 33,
					-- layer=2 filter=35 channel=28
					-2, 22, 45, 19, -29, 0, 5, -43, -15,
					-- layer=2 filter=35 channel=29
					2, 11, -30, 0, -10, -7, 7, -4, -1,
					-- layer=2 filter=35 channel=30
					-15, -28, -18, -8, 7, 10, 5, 8, 22,
					-- layer=2 filter=35 channel=31
					25, 29, -2, 25, -9, 0, 15, 36, 21,
					-- layer=2 filter=36 channel=0
					-73, -98, -22, -57, -41, -48, 2, 4, 34,
					-- layer=2 filter=36 channel=1
					-43, -14, -20, 16, 1, -15, 17, 3, 14,
					-- layer=2 filter=36 channel=2
					-4, -13, -16, -2, -14, -11, 57, 47, 8,
					-- layer=2 filter=36 channel=3
					0, 14, 26, 17, 7, 11, 12, 10, -6,
					-- layer=2 filter=36 channel=4
					17, -125, -153, 28, -87, -142, 56, -22, -55,
					-- layer=2 filter=36 channel=5
					48, 6, -25, -23, 0, -6, -4, 0, -18,
					-- layer=2 filter=36 channel=6
					-11, 48, -13, 0, 31, 0, -23, -8, 10,
					-- layer=2 filter=36 channel=7
					65, -2, -10, 29, 35, -4, -12, 5, 41,
					-- layer=2 filter=36 channel=8
					11, 3, -16, -19, 43, 38, -53, -11, 16,
					-- layer=2 filter=36 channel=9
					-30, 7, -15, -5, -19, 9, 5, 0, 51,
					-- layer=2 filter=36 channel=10
					-30, 1, -4, 38, 8, -3, 2, -23, 1,
					-- layer=2 filter=36 channel=11
					19, 23, 20, 3, 16, -27, -24, 20, 0,
					-- layer=2 filter=36 channel=12
					49, 1, -38, 15, -19, -59, 22, -26, 12,
					-- layer=2 filter=36 channel=13
					65, 48, 39, 18, 3, 46, -3, 32, 23,
					-- layer=2 filter=36 channel=14
					12, 4, -10, 8, -14, 20, 5, -26, -3,
					-- layer=2 filter=36 channel=15
					-27, -156, -65, -10, -104, -122, 15, -31, -70,
					-- layer=2 filter=36 channel=16
					-18, -7, 15, 14, -12, -17, 30, 33, -5,
					-- layer=2 filter=36 channel=17
					-5, -66, -104, 54, -66, -86, 67, -38, -71,
					-- layer=2 filter=36 channel=18
					37, 9, 0, -5, -14, -20, 10, 3, -21,
					-- layer=2 filter=36 channel=19
					-1, -44, 17, -40, -5, 35, -3, 44, 8,
					-- layer=2 filter=36 channel=20
					3, 24, 39, -9, 51, 25, -31, 0, -5,
					-- layer=2 filter=36 channel=21
					-7, 31, 8, 0, -30, 3, -19, -30, -42,
					-- layer=2 filter=36 channel=22
					-25, -40, -48, -3, -31, -10, -2, -26, -24,
					-- layer=2 filter=36 channel=23
					-54, 3, 0, -11, 14, 35, -47, 16, 23,
					-- layer=2 filter=36 channel=24
					-2, -19, 33, -20, -31, -8, -20, -2, -45,
					-- layer=2 filter=36 channel=25
					33, -12, 26, -9, 57, 63, 14, -13, 34,
					-- layer=2 filter=36 channel=26
					24, -21, 15, -23, -2, -43, 1, -5, -1,
					-- layer=2 filter=36 channel=27
					-25, -29, -31, 0, 30, 19, -26, 1, 59,
					-- layer=2 filter=36 channel=28
					4, 38, -15, 24, 17, -4, 23, 16, -45,
					-- layer=2 filter=36 channel=29
					32, 5, 24, 27, -18, -30, 26, 16, -21,
					-- layer=2 filter=36 channel=30
					-4, 21, -24, 28, 31, 3, 34, 17, -11,
					-- layer=2 filter=36 channel=31
					-6, 3, -8, -13, 48, -17, -12, 23, 20,
					-- layer=2 filter=37 channel=0
					-58, -25, 0, -60, -38, -9, -1, -25, 3,
					-- layer=2 filter=37 channel=1
					6, -19, -7, 27, -11, -18, 20, 4, 13,
					-- layer=2 filter=37 channel=2
					50, -8, -54, -4, -11, -23, 31, 14, -38,
					-- layer=2 filter=37 channel=3
					-27, 1, -21, -10, -18, 11, -2, 12, 4,
					-- layer=2 filter=37 channel=4
					-8, -29, -4, -13, -41, 5, -10, 8, 10,
					-- layer=2 filter=37 channel=5
					-29, 2, -23, -45, 18, 5, -39, -5, 47,
					-- layer=2 filter=37 channel=6
					-39, 39, 12, -13, 16, 31, -31, 24, 32,
					-- layer=2 filter=37 channel=7
					-20, -38, 15, -83, 0, -19, -54, -48, 27,
					-- layer=2 filter=37 channel=8
					0, 33, 26, -17, 44, 24, -6, 4, 29,
					-- layer=2 filter=37 channel=9
					25, 24, 11, 12, -7, -31, -5, -14, 11,
					-- layer=2 filter=37 channel=10
					20, 34, 10, -9, -32, -70, 68, 34, -39,
					-- layer=2 filter=37 channel=11
					27, -27, 12, -17, 4, -27, -73, -10, 14,
					-- layer=2 filter=37 channel=12
					-63, -68, -56, -87, -87, -46, -26, -77, -40,
					-- layer=2 filter=37 channel=13
					-33, 35, 17, -26, 25, 0, 23, -52, -9,
					-- layer=2 filter=37 channel=14
					3, 23, -11, 0, -18, 13, -5, 15, -27,
					-- layer=2 filter=37 channel=15
					-40, -10, 41, -61, -35, 28, 1, 22, 60,
					-- layer=2 filter=37 channel=16
					44, -20, 0, 17, 3, -16, 53, 13, 32,
					-- layer=2 filter=37 channel=17
					7, -9, 66, 13, 9, 64, 43, 68, 66,
					-- layer=2 filter=37 channel=18
					11, -13, 7, -16, -7, 4, -20, 1, 52,
					-- layer=2 filter=37 channel=19
					-16, 16, 0, -19, 22, -45, 30, -32, -37,
					-- layer=2 filter=37 channel=20
					7, 45, -6, -57, -21, 3, -64, -3, 18,
					-- layer=2 filter=37 channel=21
					23, 6, 0, -10, 21, -6, 22, -9, 22,
					-- layer=2 filter=37 channel=22
					42, 32, 35, 10, -6, -24, 20, 0, 7,
					-- layer=2 filter=37 channel=23
					-10, 10, 10, -25, 9, 6, -8, -9, 5,
					-- layer=2 filter=37 channel=24
					21, -26, -9, -3, -19, -10, -11, -36, -15,
					-- layer=2 filter=37 channel=25
					-15, 7, 54, -64, 0, -5, -14, -61, -30,
					-- layer=2 filter=37 channel=26
					-21, 0, 30, -28, -61, 11, -42, -6, 33,
					-- layer=2 filter=37 channel=27
					-32, 27, 15, 11, 43, -12, 31, 21, -19,
					-- layer=2 filter=37 channel=28
					40, 59, 49, -9, -2, 14, -37, -57, -26,
					-- layer=2 filter=37 channel=29
					-23, -2, -7, -32, 1, -5, -49, 21, 59,
					-- layer=2 filter=37 channel=30
					-6, -12, -21, -44, 7, -9, -13, -18, 24,
					-- layer=2 filter=37 channel=31
					-32, 8, 39, -30, 26, 52, -32, 30, 31,
					-- layer=2 filter=38 channel=0
					-47, -49, -14, 7, 3, 27, 15, -6, -1,
					-- layer=2 filter=38 channel=1
					-7, 19, 41, -13, 34, 25, -62, -31, -30,
					-- layer=2 filter=38 channel=2
					8, 3, 17, -30, -34, 18, 3, 17, -19,
					-- layer=2 filter=38 channel=3
					21, -4, 25, 9, -11, -8, 5, 9, -22,
					-- layer=2 filter=38 channel=4
					9, 23, 42, 43, 79, 45, -21, -13, -4,
					-- layer=2 filter=38 channel=5
					-10, 6, 19, -19, -4, -19, -20, -9, 27,
					-- layer=2 filter=38 channel=6
					-6, -18, -12, -9, -19, -8, -10, 2, -1,
					-- layer=2 filter=38 channel=7
					10, -43, 45, 23, -6, 31, -13, 3, -24,
					-- layer=2 filter=38 channel=8
					-25, -12, 5, 2, -45, 11, 30, 32, 22,
					-- layer=2 filter=38 channel=9
					-17, 31, 41, -31, -20, -1, -45, -38, -35,
					-- layer=2 filter=38 channel=10
					63, 54, 67, 37, 50, 51, 24, -3, 52,
					-- layer=2 filter=38 channel=11
					-15, -2, -6, -35, -64, -40, -3, -2, -1,
					-- layer=2 filter=38 channel=12
					10, 27, 37, 32, 91, 63, -39, -26, -36,
					-- layer=2 filter=38 channel=13
					26, 7, 35, 28, 33, 6, 3, 4, 36,
					-- layer=2 filter=38 channel=14
					-14, 22, -14, -15, -5, -11, -7, -8, -15,
					-- layer=2 filter=38 channel=15
					60, -9, -17, 31, 20, 4, -38, -89, -71,
					-- layer=2 filter=38 channel=16
					7, 4, -29, -25, 42, 37, 12, 49, 9,
					-- layer=2 filter=38 channel=17
					25, 46, -12, 63, 54, 8, 29, -29, -60,
					-- layer=2 filter=38 channel=18
					-19, 0, 4, -70, -61, -47, -38, 0, 11,
					-- layer=2 filter=38 channel=19
					-5, -11, -17, 9, 55, 16, 31, 13, -8,
					-- layer=2 filter=38 channel=20
					-17, 23, 24, -38, -12, 5, -7, -12, 78,
					-- layer=2 filter=38 channel=21
					-26, 21, 27, 2, 12, 8, -66, -64, -19,
					-- layer=2 filter=38 channel=22
					59, 2, 18, 47, 28, 12, 3, 3, -2,
					-- layer=2 filter=38 channel=23
					-25, 25, 25, 5, -21, -10, 44, 12, 12,
					-- layer=2 filter=38 channel=24
					-51, 8, 23, -10, 14, 30, 14, -52, -17,
					-- layer=2 filter=38 channel=25
					-46, -64, -46, -12, -13, -18, -33, 0, 34,
					-- layer=2 filter=38 channel=26
					-29, 10, -25, -54, -36, -38, -25, -13, 1,
					-- layer=2 filter=38 channel=27
					-36, -47, -11, -25, -7, 2, 12, 29, 32,
					-- layer=2 filter=38 channel=28
					44, 28, -14, 21, -4, -20, 7, -21, 13,
					-- layer=2 filter=38 channel=29
					-21, -9, -27, -79, -46, -67, -54, 15, 8,
					-- layer=2 filter=38 channel=30
					-72, -38, -15, -79, -117, -87, -40, -40, -25,
					-- layer=2 filter=38 channel=31
					-38, -35, -11, -26, -9, -13, 3, 27, -13,
					-- layer=2 filter=39 channel=0
					-13, -17, -9, -23, -17, -17, -19, -14, 7,
					-- layer=2 filter=39 channel=1
					-18, 15, -6, -6, 15, -25, -16, -16, -26,
					-- layer=2 filter=39 channel=2
					-25, -1, -12, 5, 13, -17, 1, -26, -19,
					-- layer=2 filter=39 channel=3
					-12, -17, -11, 1, -15, -2, -7, -6, -15,
					-- layer=2 filter=39 channel=4
					-8, 1, 1, -10, 7, 19, -6, -22, 1,
					-- layer=2 filter=39 channel=5
					-8, -5, -7, -9, -14, -12, -14, 0, -12,
					-- layer=2 filter=39 channel=6
					13, 6, 11, -16, 15, -17, -21, 3, 3,
					-- layer=2 filter=39 channel=7
					-9, -26, -22, -3, -11, -6, -9, 3, -25,
					-- layer=2 filter=39 channel=8
					-1, -23, 11, -16, -11, 1, 2, 5, -24,
					-- layer=2 filter=39 channel=9
					-5, -5, -18, -3, 4, -8, -9, -1, 16,
					-- layer=2 filter=39 channel=10
					1, -3, 1, -6, 13, 5, 8, 12, 3,
					-- layer=2 filter=39 channel=11
					12, -18, 3, 8, -24, -8, 12, -12, -1,
					-- layer=2 filter=39 channel=12
					-7, -8, 2, -21, -11, -1, 0, -14, 4,
					-- layer=2 filter=39 channel=13
					1, -8, -9, -20, -27, -10, 16, 5, 7,
					-- layer=2 filter=39 channel=14
					12, -13, -3, -13, -10, -14, -3, 7, 8,
					-- layer=2 filter=39 channel=15
					-19, 4, -18, -4, -14, -3, 12, -10, 18,
					-- layer=2 filter=39 channel=16
					-12, 10, 2, -9, -9, -16, -18, -16, 0,
					-- layer=2 filter=39 channel=17
					-8, -18, 15, 4, -2, 11, -22, 4, -19,
					-- layer=2 filter=39 channel=18
					9, -16, -12, -21, 11, 13, 9, -14, 12,
					-- layer=2 filter=39 channel=19
					-12, -24, -6, 8, -19, 0, -25, 10, -4,
					-- layer=2 filter=39 channel=20
					9, -22, 4, -5, -24, -7, 11, -9, -1,
					-- layer=2 filter=39 channel=21
					-4, -18, 10, -26, 16, -14, 0, 17, -10,
					-- layer=2 filter=39 channel=22
					-10, -13, -30, -15, 3, 8, -22, 7, -26,
					-- layer=2 filter=39 channel=23
					-18, -11, -18, -3, 11, 5, -10, 5, 7,
					-- layer=2 filter=39 channel=24
					-1, -10, -23, 9, -12, 7, -5, -12, -15,
					-- layer=2 filter=39 channel=25
					-3, 5, -25, 1, 3, 13, -10, 7, -14,
					-- layer=2 filter=39 channel=26
					8, 3, 15, -27, -7, 2, -16, -14, -9,
					-- layer=2 filter=39 channel=27
					2, -9, -22, -21, 9, 0, -8, 8, -26,
					-- layer=2 filter=39 channel=28
					0, -14, -13, -16, -17, -23, -4, -9, 3,
					-- layer=2 filter=39 channel=29
					-22, -21, -21, 0, -13, -5, -12, -15, -8,
					-- layer=2 filter=39 channel=30
					0, -24, -2, 9, -16, -6, -20, -16, -3,
					-- layer=2 filter=39 channel=31
					-18, -21, -4, -3, -3, -11, 5, -3, -20,
					-- layer=2 filter=40 channel=0
					-21, -64, -27, -31, 6, -13, -14, 22, 52,
					-- layer=2 filter=40 channel=1
					8, -2, -49, -14, -18, 22, -2, -23, -2,
					-- layer=2 filter=40 channel=2
					8, -38, 1, -8, -43, 19, 40, 33, 9,
					-- layer=2 filter=40 channel=3
					9, -3, -11, 5, -7, 14, -26, 20, 16,
					-- layer=2 filter=40 channel=4
					65, 23, 45, 19, 35, 63, -8, 30, -6,
					-- layer=2 filter=40 channel=5
					-24, -5, 28, 33, -51, -10, 35, 30, 51,
					-- layer=2 filter=40 channel=6
					-27, 35, -17, 4, -15, -7, 0, 0, 2,
					-- layer=2 filter=40 channel=7
					59, 43, -6, 92, 63, -30, 20, 20, -4,
					-- layer=2 filter=40 channel=8
					6, -26, -5, 3, -24, -27, 12, -5, 17,
					-- layer=2 filter=40 channel=9
					-33, -5, -5, -6, -31, -9, -20, -63, -8,
					-- layer=2 filter=40 channel=10
					-38, -28, -23, -87, -2, 7, -102, -57, 37,
					-- layer=2 filter=40 channel=11
					-11, -19, -8, 27, -31, -9, 33, 16, 21,
					-- layer=2 filter=40 channel=12
					29, 30, 32, 58, 74, 35, -44, 11, -41,
					-- layer=2 filter=40 channel=13
					67, -29, -22, 46, 60, 49, -5, 37, -17,
					-- layer=2 filter=40 channel=14
					2, 1, 14, 20, 15, 5, 14, -10, 10,
					-- layer=2 filter=40 channel=15
					-28, 21, 41, -3, 45, 84, -6, 16, -12,
					-- layer=2 filter=40 channel=16
					-11, 0, -2, 15, -47, -36, 16, 6, 16,
					-- layer=2 filter=40 channel=17
					38, 4, 4, -16, 45, 63, 14, 55, 13,
					-- layer=2 filter=40 channel=18
					0, -28, -17, 23, -12, -34, 27, 27, 27,
					-- layer=2 filter=40 channel=19
					-8, -43, -40, 1, 1, 25, 3, 28, 36,
					-- layer=2 filter=40 channel=20
					26, 33, 20, 2, 41, 2, 23, -12, -14,
					-- layer=2 filter=40 channel=21
					-8, 28, -35, 4, 14, 28, -2, 0, -25,
					-- layer=2 filter=40 channel=22
					-17, -14, -14, -27, -2, 35, -42, 31, 34,
					-- layer=2 filter=40 channel=23
					-10, 22, 1, -21, -54, -28, 26, -9, 12,
					-- layer=2 filter=40 channel=24
					14, -12, -9, 25, 9, 1, 41, 2, -1,
					-- layer=2 filter=40 channel=25
					-1, -78, -60, -12, 45, 20, -11, 7, 10,
					-- layer=2 filter=40 channel=26
					-38, -10, -37, 2, -26, -9, -4, 10, -19,
					-- layer=2 filter=40 channel=27
					-2, -32, -40, 14, -31, -33, 41, 6, 30,
					-- layer=2 filter=40 channel=28
					45, 42, 1, -41, 39, 70, -35, 26, 21,
					-- layer=2 filter=40 channel=29
					-3, -43, -18, 18, -46, 16, 32, 16, 35,
					-- layer=2 filter=40 channel=30
					11, -19, -9, 5, -78, -28, 28, -30, -29,
					-- layer=2 filter=40 channel=31
					-32, -37, -26, -2, -44, -35, 24, 3, 27,
					-- layer=2 filter=41 channel=0
					-21, -109, -53, -10, -47, -14, 27, -6, 14,
					-- layer=2 filter=41 channel=1
					14, -40, -2, -51, -49, -44, -42, -50, -40,
					-- layer=2 filter=41 channel=2
					-20, -16, -1, -7, -18, 25, 9, -2, -26,
					-- layer=2 filter=41 channel=3
					-15, 0, -17, 6, -13, -28, 4, -13, 0,
					-- layer=2 filter=41 channel=4
					14, 33, 28, 5, 88, 90, 15, 54, 68,
					-- layer=2 filter=41 channel=5
					-44, -12, 13, -23, -22, 1, 0, 33, -17,
					-- layer=2 filter=41 channel=6
					-11, 13, 31, -39, -8, 2, -31, -28, 17,
					-- layer=2 filter=41 channel=7
					-14, 15, -37, -17, 17, -10, -20, -20, 45,
					-- layer=2 filter=41 channel=8
					-15, -35, 1, -9, -22, -23, 16, 39, 25,
					-- layer=2 filter=41 channel=9
					4, -1, 34, -19, -31, -9, -22, -24, 16,
					-- layer=2 filter=41 channel=10
					-15, 15, 18, -14, -98, 36, -32, 30, -58,
					-- layer=2 filter=41 channel=11
					-29, 22, 37, -38, -5, -1, -31, -26, -25,
					-- layer=2 filter=41 channel=12
					22, 21, -24, -25, 47, 2, 6, 8, 47,
					-- layer=2 filter=41 channel=13
					-27, 20, -45, -58, 15, 64, -38, -76, 0,
					-- layer=2 filter=41 channel=14
					-5, 22, 18, -2, -13, -3, -7, 1, 7,
					-- layer=2 filter=41 channel=15
					32, 52, 20, -41, -36, -37, -62, -25, -35,
					-- layer=2 filter=41 channel=16
					-10, -20, 58, 12, -23, 26, 58, 12, 42,
					-- layer=2 filter=41 channel=17
					-4, 64, 29, -23, 34, 4, 6, -5, -6,
					-- layer=2 filter=41 channel=18
					-29, -8, 50, -28, -27, 34, -37, -3, -15,
					-- layer=2 filter=41 channel=19
					-5, -37, -60, 6, -30, 32, 2, -7, -11,
					-- layer=2 filter=41 channel=20
					0, 26, 31, 9, 12, 33, 6, -2, 8,
					-- layer=2 filter=41 channel=21
					0, 3, 14, -41, -19, 10, -61, -80, -26,
					-- layer=2 filter=41 channel=22
					-20, 1, -20, 9, 36, -13, 64, 44, 74,
					-- layer=2 filter=41 channel=23
					-5, -59, -32, 19, -42, -43, 51, 28, 9,
					-- layer=2 filter=41 channel=24
					-18, -17, 12, -25, -27, 23, -8, -31, -36,
					-- layer=2 filter=41 channel=25
					13, 23, -9, 21, 24, 43, -14, -32, 18,
					-- layer=2 filter=41 channel=26
					-3, -24, 8, -78, -60, -12, -17, -19, -25,
					-- layer=2 filter=41 channel=27
					-5, -51, -64, 42, -12, -33, 69, 65, 35,
					-- layer=2 filter=41 channel=28
					-7, 17, 3, -5, -28, 28, -22, -4, 24,
					-- layer=2 filter=41 channel=29
					-15, 10, 61, -17, -11, 40, -49, -18, 4,
					-- layer=2 filter=41 channel=30
					-9, -44, -34, 35, 2, -35, 86, 46, 10,
					-- layer=2 filter=41 channel=31
					-32, -22, 9, -17, -15, 6, 18, 24, 10,
					-- layer=2 filter=42 channel=0
					-15, -42, -19, -70, -39, -23, -70, -70, -46,
					-- layer=2 filter=42 channel=1
					-12, -49, -34, -50, -110, -9, -58, 0, -11,
					-- layer=2 filter=42 channel=2
					-17, 3, 11, -45, -35, -2, -67, -13, 2,
					-- layer=2 filter=42 channel=3
					1, 2, -7, -24, 10, 7, 18, -7, 0,
					-- layer=2 filter=42 channel=4
					11, 21, 35, 5, 53, 44, 35, 100, 65,
					-- layer=2 filter=42 channel=5
					-7, 14, -9, 2, -23, -24, 0, 12, 2,
					-- layer=2 filter=42 channel=6
					-19, -27, -23, 12, -26, -30, -19, -47, -15,
					-- layer=2 filter=42 channel=7
					-1, 1, 45, 46, -10, 42, 36, 8, 25,
					-- layer=2 filter=42 channel=8
					35, 3, 18, 21, 32, -20, -13, -4, -36,
					-- layer=2 filter=42 channel=9
					-27, -67, -39, -41, -77, 7, -23, -4, 8,
					-- layer=2 filter=42 channel=10
					-24, 6, 48, -11, -15, 3, -8, 19, 22,
					-- layer=2 filter=42 channel=11
					13, 0, 4, -35, 19, 26, -10, 11, 9,
					-- layer=2 filter=42 channel=12
					8, 35, -10, 37, 24, 5, 49, 30, 29,
					-- layer=2 filter=42 channel=13
					19, -11, 33, -22, -69, -22, -55, 1, -50,
					-- layer=2 filter=42 channel=14
					-7, -4, 20, -3, -13, -10, -1, -18, -22,
					-- layer=2 filter=42 channel=15
					6, 5, 61, 12, 17, 8, -33, -22, 58,
					-- layer=2 filter=42 channel=16
					-17, 38, 15, -20, 26, 13, -12, 35, 32,
					-- layer=2 filter=42 channel=17
					-11, 10, 30, 7, 5, 33, 33, -18, 34,
					-- layer=2 filter=42 channel=18
					-23, -13, 9, -33, 26, 9, -19, -35, -13,
					-- layer=2 filter=42 channel=19
					-23, -81, -15, -69, -114, -24, -70, -81, -32,
					-- layer=2 filter=42 channel=20
					12, 2, 9, -15, -12, -27, -16, -10, 19,
					-- layer=2 filter=42 channel=21
					-8, -40, -33, -25, -72, -44, -48, -40, -4,
					-- layer=2 filter=42 channel=22
					1, 15, 0, 8, -26, -37, -12, -44, 4,
					-- layer=2 filter=42 channel=23
					-13, -30, -19, -26, -35, -10, 9, 2, -12,
					-- layer=2 filter=42 channel=24
					-37, -1, -10, -58, -20, 27, -15, -1, 33,
					-- layer=2 filter=42 channel=25
					-35, -6, 0, -8, -27, 11, -54, -63, -52,
					-- layer=2 filter=42 channel=26
					-26, -8, -1, -21, -8, 0, -41, -41, 13,
					-- layer=2 filter=42 channel=27
					18, 5, 4, 11, 9, -1, 2, 0, -11,
					-- layer=2 filter=42 channel=28
					2, 44, 55, -28, -16, -30, -52, -25, 19,
					-- layer=2 filter=42 channel=29
					2, 13, -9, -28, -12, 1, -24, 2, 15,
					-- layer=2 filter=42 channel=30
					1, 0, 18, 11, -12, -1, 4, 35, 56,
					-- layer=2 filter=42 channel=31
					26, 1, 12, 5, 36, 0, 39, -7, 3,
					-- layer=2 filter=43 channel=0
					16, 12, 9, 24, 40, 0, 8, 23, 5,
					-- layer=2 filter=43 channel=1
					-20, -20, -36, -44, -46, -2, -28, -56, -28,
					-- layer=2 filter=43 channel=2
					-1, 25, 25, -9, -10, -2, -26, -39, -30,
					-- layer=2 filter=43 channel=3
					-10, 9, 16, -17, -13, -17, -1, 23, 22,
					-- layer=2 filter=43 channel=4
					93, 57, 44, 8, 35, 14, -127, -54, -41,
					-- layer=2 filter=43 channel=5
					-43, -59, -39, 0, -1, 17, -2, 11, 24,
					-- layer=2 filter=43 channel=6
					-59, -55, -22, -6, -28, -18, 42, 7, 32,
					-- layer=2 filter=43 channel=7
					46, -19, -9, 21, -56, -56, -84, -26, -11,
					-- layer=2 filter=43 channel=8
					-22, -7, 4, -17, 0, 24, 29, 25, 14,
					-- layer=2 filter=43 channel=9
					-40, -15, -25, -45, -33, -37, -50, -65, -46,
					-- layer=2 filter=43 channel=10
					20, 1, 29, 11, 22, 37, 46, 30, 20,
					-- layer=2 filter=43 channel=11
					-20, -33, -34, -65, -70, -29, 10, 20, -2,
					-- layer=2 filter=43 channel=12
					47, 57, 22, 30, -3, -4, -31, -83, -30,
					-- layer=2 filter=43 channel=13
					5, 32, 26, 22, 2, 1, 8, -19, 26,
					-- layer=2 filter=43 channel=14
					-9, 9, -8, 12, 4, 12, 4, -19, -17,
					-- layer=2 filter=43 channel=15
					-16, 27, 0, -36, -13, -65, 6, -102, -97,
					-- layer=2 filter=43 channel=16
					32, 29, 18, 0, -1, 23, -6, 22, 18,
					-- layer=2 filter=43 channel=17
					52, 42, 27, 19, 33, -21, -24, -31, -101,
					-- layer=2 filter=43 channel=18
					-29, -10, -9, -14, 6, 1, 20, 40, 16,
					-- layer=2 filter=43 channel=19
					11, -1, 15, 13, 24, 3, 18, 30, 2,
					-- layer=2 filter=43 channel=20
					-70, -29, -40, -41, -61, -39, 10, 6, 0,
					-- layer=2 filter=43 channel=21
					-15, -38, -11, -52, -105, -8, -52, -65, -26,
					-- layer=2 filter=43 channel=22
					14, 47, 29, 17, 41, -9, 5, -15, -20,
					-- layer=2 filter=43 channel=23
					-45, -29, 4, -19, -15, 21, 20, 27, 34,
					-- layer=2 filter=43 channel=24
					-5, 17, 17, -49, -23, -38, -6, -3, -39,
					-- layer=2 filter=43 channel=25
					-17, -12, -4, 14, -11, 29, 4, -26, 8,
					-- layer=2 filter=43 channel=26
					-45, -29, 16, -16, -13, -1, 40, 47, -3,
					-- layer=2 filter=43 channel=27
					-14, 7, 19, 0, 34, 38, 25, 24, 32,
					-- layer=2 filter=43 channel=28
					11, -2, 20, 29, -6, 17, 27, -10, -22,
					-- layer=2 filter=43 channel=29
					-34, -73, -45, -44, -30, -13, -4, -6, -15,
					-- layer=2 filter=43 channel=30
					-51, -45, -24, -44, -17, -7, -5, 9, 48,
					-- layer=2 filter=43 channel=31
					-17, -27, 4, -7, 21, 14, 31, 19, 26,
					-- layer=2 filter=44 channel=0
					-18, -14, 10, -1, 15, -15, -1, 10, -11,
					-- layer=2 filter=44 channel=1
					-26, -14, 21, 17, -21, -28, -13, -4, -14,
					-- layer=2 filter=44 channel=2
					-1, 8, 13, -24, -1, -6, -22, -12, -11,
					-- layer=2 filter=44 channel=3
					-1, -20, 4, 5, -1, -13, 0, 2, 11,
					-- layer=2 filter=44 channel=4
					2, 6, 0, 18, -22, -6, -19, -10, 15,
					-- layer=2 filter=44 channel=5
					-3, -6, -16, -15, -2, 9, 15, -25, -12,
					-- layer=2 filter=44 channel=6
					-8, -14, -7, -24, -16, 12, 0, -23, 8,
					-- layer=2 filter=44 channel=7
					0, 1, -2, -6, -16, 8, 1, 12, 6,
					-- layer=2 filter=44 channel=8
					-21, -7, -23, 5, -19, -16, -15, -16, 10,
					-- layer=2 filter=44 channel=9
					-9, 6, -18, 19, -24, -13, 3, 15, 9,
					-- layer=2 filter=44 channel=10
					-4, -5, -2, -5, 6, 16, 2, 10, -17,
					-- layer=2 filter=44 channel=11
					-6, 12, 10, -4, 11, 5, -18, -8, 0,
					-- layer=2 filter=44 channel=12
					-10, -27, -6, -7, -29, -9, -2, -15, -5,
					-- layer=2 filter=44 channel=13
					8, -12, -4, 6, 9, 2, -1, -20, 16,
					-- layer=2 filter=44 channel=14
					18, -18, -3, -3, 7, 6, -18, 14, -18,
					-- layer=2 filter=44 channel=15
					-17, -10, -17, -15, 8, -17, -24, -24, 8,
					-- layer=2 filter=44 channel=16
					6, -12, -9, -12, -23, -7, -15, 0, -24,
					-- layer=2 filter=44 channel=17
					12, 0, -1, 4, -17, -7, -21, 9, -24,
					-- layer=2 filter=44 channel=18
					-14, -21, -8, -3, -16, -20, 11, -2, -17,
					-- layer=2 filter=44 channel=19
					21, 9, 5, 7, 18, 0, 0, -18, -19,
					-- layer=2 filter=44 channel=20
					4, -11, 7, -14, -17, 5, 0, -10, 11,
					-- layer=2 filter=44 channel=21
					2, -18, -11, 13, -3, -28, -9, 0, -9,
					-- layer=2 filter=44 channel=22
					6, 9, 7, 10, -12, -4, -1, 7, -5,
					-- layer=2 filter=44 channel=23
					6, -13, 5, -17, 14, -16, -24, -11, -16,
					-- layer=2 filter=44 channel=24
					-4, -12, 0, -7, -16, 7, -6, -13, -13,
					-- layer=2 filter=44 channel=25
					-7, 0, -2, 6, 0, -25, 0, -16, -13,
					-- layer=2 filter=44 channel=26
					-10, 6, 1, 9, -1, -9, -24, -15, 5,
					-- layer=2 filter=44 channel=27
					11, 17, -7, -18, 5, 16, 10, -20, -4,
					-- layer=2 filter=44 channel=28
					14, -11, -16, -26, -17, 0, 7, -7, -3,
					-- layer=2 filter=44 channel=29
					11, 2, 15, 2, -16, 4, -18, 6, -8,
					-- layer=2 filter=44 channel=30
					15, -14, -17, 10, -4, 7, 16, -7, -9,
					-- layer=2 filter=44 channel=31
					-21, -29, -5, -5, 8, -24, -3, -26, 0,
					-- layer=2 filter=45 channel=0
					-56, -70, -19, -65, -104, -20, -27, 25, 28,
					-- layer=2 filter=45 channel=1
					-99, -38, -32, -6, 32, 53, 29, 20, 26,
					-- layer=2 filter=45 channel=2
					-6, -10, -23, -1, -15, -19, 28, 17, -27,
					-- layer=2 filter=45 channel=3
					-3, 19, 0, -15, 0, -12, 3, -18, -12,
					-- layer=2 filter=45 channel=4
					-44, -154, -96, -28, -72, -21, -54, -2, 0,
					-- layer=2 filter=45 channel=5
					7, 8, 36, 20, 40, 9, 19, 24, 17,
					-- layer=2 filter=45 channel=6
					-8, -30, 24, 9, -17, 24, -6, 2, 26,
					-- layer=2 filter=45 channel=7
					-68, -45, -79, -108, -49, -56, -100, -20, 2,
					-- layer=2 filter=45 channel=8
					9, 31, 16, -6, 15, 19, 22, -9, 25,
					-- layer=2 filter=45 channel=9
					-58, -82, -16, -12, 8, 20, 9, 11, 16,
					-- layer=2 filter=45 channel=10
					-9, 1, 11, -11, 3, -3, 39, 1, 40,
					-- layer=2 filter=45 channel=11
					33, 11, 1, 13, 14, -29, -10, 4, -27,
					-- layer=2 filter=45 channel=12
					-149, -100, -109, -116, -77, -62, -19, -14, -12,
					-- layer=2 filter=45 channel=13
					-56, -66, -76, -27, -97, -81, 8, -4, 0,
					-- layer=2 filter=45 channel=14
					20, 20, 16, 5, 11, 17, -9, 12, 2,
					-- layer=2 filter=45 channel=15
					-69, -79, -52, -34, -92, 15, -77, 68, 51,
					-- layer=2 filter=45 channel=16
					44, 28, 4, 14, 28, 11, 21, 6, -24,
					-- layer=2 filter=45 channel=17
					-52, -101, -56, -30, -86, -67, -34, -16, 42,
					-- layer=2 filter=45 channel=18
					11, -3, 0, 40, 3, 6, 21, -14, -16,
					-- layer=2 filter=45 channel=19
					-117, -68, -30, -63, -20, -6, 7, 40, 7,
					-- layer=2 filter=45 channel=20
					42, 4, 64, 29, 12, 48, -1, -14, 28,
					-- layer=2 filter=45 channel=21
					-58, -64, -43, -14, 5, 4, 39, 19, 21,
					-- layer=2 filter=45 channel=22
					-37, -11, -39, -67, -23, -12, 0, 9, 10,
					-- layer=2 filter=45 channel=23
					-18, -2, -2, -16, 3, -4, 33, 29, 44,
					-- layer=2 filter=45 channel=24
					0, -16, 20, 19, -3, 7, 38, 25, 2,
					-- layer=2 filter=45 channel=25
					-47, -22, -16, -22, -25, -12, 21, -14, 18,
					-- layer=2 filter=45 channel=26
					8, -5, 8, 10, -18, -12, 6, 14, 5,
					-- layer=2 filter=45 channel=27
					-29, -15, -21, -14, -23, 0, -7, 15, 21,
					-- layer=2 filter=45 channel=28
					12, -23, -23, 4, 15, -12, -33, -12, -27,
					-- layer=2 filter=45 channel=29
					16, 16, -7, 14, 35, 0, -12, 7, -5,
					-- layer=2 filter=45 channel=30
					-28, 0, 1, -20, 44, -3, -17, 41, 18,
					-- layer=2 filter=45 channel=31
					13, 11, 26, 21, 9, 36, -2, 32, 18,
					-- layer=2 filter=46 channel=0
					3, 31, 23, -3, 30, 15, 14, 27, 15,
					-- layer=2 filter=46 channel=1
					27, 9, -16, 7, 26, 8, 29, 76, 24,
					-- layer=2 filter=46 channel=2
					-21, -22, -9, 5, 37, 0, 93, 96, 75,
					-- layer=2 filter=46 channel=3
					-11, 21, 18, -6, -4, -17, -18, 6, 12,
					-- layer=2 filter=46 channel=4
					41, 26, -10, 36, 10, 43, -16, 15, 7,
					-- layer=2 filter=46 channel=5
					2, 7, -10, -27, 1, -7, 0, -20, -21,
					-- layer=2 filter=46 channel=6
					13, 10, 9, 20, 20, -3, -23, -47, -36,
					-- layer=2 filter=46 channel=7
					9, -31, 6, -18, -49, -7, -6, -55, 2,
					-- layer=2 filter=46 channel=8
					-30, -17, 14, -17, -36, -23, -36, -58, -12,
					-- layer=2 filter=46 channel=9
					37, 27, 18, 23, 39, 15, -15, 18, 0,
					-- layer=2 filter=46 channel=10
					0, -35, -31, -25, -18, 5, -68, -41, -21,
					-- layer=2 filter=46 channel=11
					7, -30, -23, -7, -9, -5, 16, 13, -21,
					-- layer=2 filter=46 channel=12
					4, 22, 6, 48, -21, 8, 3, -18, 4,
					-- layer=2 filter=46 channel=13
					-33, -16, -11, -21, -52, -8, 5, -7, -50,
					-- layer=2 filter=46 channel=14
					5, 7, -25, 21, -2, 2, -17, -4, 20,
					-- layer=2 filter=46 channel=15
					-4, -25, -13, -8, -31, 13, -10, -17, -46,
					-- layer=2 filter=46 channel=16
					-37, 11, -18, -3, 6, -2, 30, 49, -5,
					-- layer=2 filter=46 channel=17
					29, 23, 3, 22, -1, -8, 9, -43, -12,
					-- layer=2 filter=46 channel=18
					24, 7, 6, -10, -32, -17, -14, -17, 7,
					-- layer=2 filter=46 channel=19
					-1, 1, 20, 9, 40, 8, 8, 39, 6,
					-- layer=2 filter=46 channel=20
					17, 27, 0, 31, -7, 21, -28, -30, -29,
					-- layer=2 filter=46 channel=21
					35, 25, -8, 19, 21, 46, 24, 35, -7,
					-- layer=2 filter=46 channel=22
					27, 23, 2, 33, 36, 43, 11, 9, 31,
					-- layer=2 filter=46 channel=23
					-22, -17, -3, -28, 0, 20, -18, -14, -6,
					-- layer=2 filter=46 channel=24
					-15, 14, -11, -17, 21, -15, -16, 21, -11,
					-- layer=2 filter=46 channel=25
					5, -6, 0, -39, -35, -6, -15, 34, -15,
					-- layer=2 filter=46 channel=26
					6, 38, -2, -4, 9, -1, -7, -20, -34,
					-- layer=2 filter=46 channel=27
					-23, -9, 3, -23, -13, 4, 2, 24, -2,
					-- layer=2 filter=46 channel=28
					7, 8, -12, 47, 45, 20, 5, -23, 27,
					-- layer=2 filter=46 channel=29
					20, 18, 9, -3, 0, -27, -18, -17, -4,
					-- layer=2 filter=46 channel=30
					10, 4, 19, 1, 9, 4, 0, -16, 11,
					-- layer=2 filter=46 channel=31
					20, 10, -8, -26, -19, 6, -29, -41, -13,
					-- layer=2 filter=47 channel=0
					13, 35, 45, 24, 5, -6, 7, 25, 3,
					-- layer=2 filter=47 channel=1
					23, 47, 5, 53, 11, -1, 0, -8, 2,
					-- layer=2 filter=47 channel=2
					-18, -10, -3, 4, 46, 13, 36, 50, 14,
					-- layer=2 filter=47 channel=3
					-15, 25, 16, -18, -29, -14, 14, 10, 14,
					-- layer=2 filter=47 channel=4
					-31, -29, 5, -53, -66, -37, 4, 5, -13,
					-- layer=2 filter=47 channel=5
					9, 9, -28, -8, -8, -43, -40, -59, -32,
					-- layer=2 filter=47 channel=6
					-5, 5, 14, -20, -28, -37, -47, -29, -47,
					-- layer=2 filter=47 channel=7
					36, -32, 22, -26, -77, 7, -41, -15, 32,
					-- layer=2 filter=47 channel=8
					-18, -4, 1, -87, -38, -24, -4, -33, -32,
					-- layer=2 filter=47 channel=9
					3, -4, 6, -7, 5, -13, 10, -26, -25,
					-- layer=2 filter=47 channel=10
					0, -13, -19, -51, -51, -32, -54, -5, 14,
					-- layer=2 filter=47 channel=11
					-2, -22, -19, 21, 30, 39, 24, 25, -14,
					-- layer=2 filter=47 channel=12
					23, 14, 17, 34, -90, -48, -5, -66, -25,
					-- layer=2 filter=47 channel=13
					-43, -10, 12, 2, -86, -11, -15, -9, 15,
					-- layer=2 filter=47 channel=14
					0, -22, 5, -4, 5, 5, -16, 0, -11,
					-- layer=2 filter=47 channel=15
					23, -19, 26, -2, -30, -23, -30, -41, -63,
					-- layer=2 filter=47 channel=16
					-29, -35, -8, 22, 37, 39, 48, 63, 39,
					-- layer=2 filter=47 channel=17
					-17, 2, 38, -3, -101, -32, -12, 3, -19,
					-- layer=2 filter=47 channel=18
					-31, -31, -2, -15, 25, -11, 33, 49, 14,
					-- layer=2 filter=47 channel=19
					19, 25, -9, 27, 29, 42, 12, -9, -9,
					-- layer=2 filter=47 channel=20
					9, 10, 7, 34, 56, 38, -1, 17, -5,
					-- layer=2 filter=47 channel=21
					27, 52, -1, 28, 37, -16, 12, -45, -16,
					-- layer=2 filter=47 channel=22
					13, -26, 20, -45, -36, -8, 4, -58, -8,
					-- layer=2 filter=47 channel=23
					52, 59, 16, -4, -9, -2, -44, -46, -67,
					-- layer=2 filter=47 channel=24
					-17, -29, -27, 31, 10, 23, 4, 40, -9,
					-- layer=2 filter=47 channel=25
					20, 35, -6, 0, -3, 12, 9, -5, -3,
					-- layer=2 filter=47 channel=26
					-40, -37, -4, 7, -5, -6, 33, 43, 1,
					-- layer=2 filter=47 channel=27
					64, 28, 27, -28, -35, 8, -6, -5, 5,
					-- layer=2 filter=47 channel=28
					-49, -64, -26, 29, -43, -29, 19, 0, -3,
					-- layer=2 filter=47 channel=29
					-11, -24, 1, 0, 1, 7, 6, 27, 29,
					-- layer=2 filter=47 channel=30
					15, 1, -35, 20, 7, 2, 10, 19, -21,
					-- layer=2 filter=47 channel=31
					33, 7, 18, -14, -2, -2, -13, -7, -11,
					-- layer=2 filter=48 channel=0
					-64, -64, -61, -94, -46, -69, 47, 57, 40,
					-- layer=2 filter=48 channel=1
					-28, -30, 24, -10, 20, -3, 17, -10, -10,
					-- layer=2 filter=48 channel=2
					8, 3, 8, 28, 18, -4, -13, 14, -9,
					-- layer=2 filter=48 channel=3
					19, 30, 3, 12, -4, -9, -1, 24, 13,
					-- layer=2 filter=48 channel=4
					-1, -22, 10, 45, 37, 46, 17, -15, -3,
					-- layer=2 filter=48 channel=5
					53, 44, 23, -10, 13, -1, 2, 26, -7,
					-- layer=2 filter=48 channel=6
					41, 33, -10, -21, 8, -31, -52, -37, -53,
					-- layer=2 filter=48 channel=7
					-9, 3, -5, -14, 2, -5, -6, 14, 0,
					-- layer=2 filter=48 channel=8
					26, 8, -19, 21, 18, -8, 25, 30, 7,
					-- layer=2 filter=48 channel=9
					-9, -8, 4, -10, -11, 6, -42, -33, -36,
					-- layer=2 filter=48 channel=10
					33, 4, 14, -14, 6, 11, 43, 27, 9,
					-- layer=2 filter=48 channel=11
					39, 49, -5, -35, 11, 1, -21, 6, -43,
					-- layer=2 filter=48 channel=12
					52, 33, 30, 49, 13, 13, 26, -36, -10,
					-- layer=2 filter=48 channel=13
					-33, -21, -63, 27, -9, -30, 36, -11, 47,
					-- layer=2 filter=48 channel=14
					17, -4, 20, -1, -7, 19, -1, -4, 11,
					-- layer=2 filter=48 channel=15
					23, -7, -40, -1, -17, 13, -14, -8, -3,
					-- layer=2 filter=48 channel=16
					5, 22, -11, 9, -18, -15, 12, -25, -18,
					-- layer=2 filter=48 channel=17
					56, -6, 15, 50, 21, -29, 9, 9, -68,
					-- layer=2 filter=48 channel=18
					26, 30, -14, -48, -1, -37, -5, 25, 11,
					-- layer=2 filter=48 channel=19
					-56, -36, 5, 2, 52, -5, 55, 67, 23,
					-- layer=2 filter=48 channel=20
					62, 29, 26, -17, 31, -7, -75, -91, -52,
					-- layer=2 filter=48 channel=21
					0, -33, -21, -10, 36, -10, -3, -36, -18,
					-- layer=2 filter=48 channel=22
					16, -16, 26, -10, 3, 54, 14, 2, 31,
					-- layer=2 filter=48 channel=23
					-18, 18, -26, -21, -10, -29, -17, 2, 17,
					-- layer=2 filter=48 channel=24
					18, 14, 12, -25, 26, 8, -12, -42, -8,
					-- layer=2 filter=48 channel=25
					-91, -66, -75, -2, 34, 10, 22, 32, 50,
					-- layer=2 filter=48 channel=26
					0, -1, -6, -45, -41, -11, 18, 13, 40,
					-- layer=2 filter=48 channel=27
					-44, -34, -46, -30, -13, -13, 5, 35, 57,
					-- layer=2 filter=48 channel=28
					36, 9, -24, -4, 10, 2, -46, 27, 0,
					-- layer=2 filter=48 channel=29
					24, 10, -4, -12, -27, -45, -7, -26, -58,
					-- layer=2 filter=48 channel=30
					3, 37, 2, -44, 14, -16, -7, -30, -18,
					-- layer=2 filter=48 channel=31
					-10, 20, 9, -32, -2, -21, -8, 23, 39,
					-- layer=2 filter=49 channel=0
					41, 3, 33, -37, -56, -3, -37, -26, -79,
					-- layer=2 filter=49 channel=1
					5, -30, 0, 32, -21, 20, -35, -48, -18,
					-- layer=2 filter=49 channel=2
					-28, -4, 41, -10, 37, 45, 12, 4, 27,
					-- layer=2 filter=49 channel=3
					0, -8, 24, 3, -12, 8, -15, -9, -27,
					-- layer=2 filter=49 channel=4
					9, -7, -11, -25, 18, 42, 6, 47, 17,
					-- layer=2 filter=49 channel=5
					11, 34, 48, -33, 11, 25, -29, -12, 4,
					-- layer=2 filter=49 channel=6
					-3, 12, 7, 5, 25, -5, -39, -5, 18,
					-- layer=2 filter=49 channel=7
					-81, 42, 53, 25, 4, 34, 13, 39, 9,
					-- layer=2 filter=49 channel=8
					-58, 2, -7, -18, -35, -5, 2, 17, 5,
					-- layer=2 filter=49 channel=9
					29, 36, -17, 2, 10, 16, -47, -4, 34,
					-- layer=2 filter=49 channel=10
					38, 51, -35, 29, 24, -38, 27, 60, 13,
					-- layer=2 filter=49 channel=11
					-39, -1, 28, -21, 6, 57, -23, -44, 3,
					-- layer=2 filter=49 channel=12
					-13, -48, 35, -16, -8, 10, 38, 51, 3,
					-- layer=2 filter=49 channel=13
					-1, -15, 67, -19, 42, 32, 0, 33, -10,
					-- layer=2 filter=49 channel=14
					-7, 21, -13, -26, -29, 5, -20, -6, -3,
					-- layer=2 filter=49 channel=15
					51, 57, 24, 32, 68, 13, -5, 25, -16,
					-- layer=2 filter=49 channel=16
					-27, -28, 51, -22, -17, 56, -12, -8, 44,
					-- layer=2 filter=49 channel=17
					26, 70, 16, 15, 83, 104, 11, 71, 85,
					-- layer=2 filter=49 channel=18
					-41, 1, 45, -24, -41, 24, -17, -44, 2,
					-- layer=2 filter=49 channel=19
					-22, -1, 16, 15, -46, -45, -34, 1, -27,
					-- layer=2 filter=49 channel=20
					16, -15, -36, 10, 18, 12, 12, 13, 0,
					-- layer=2 filter=49 channel=21
					-9, 19, 2, -16, 6, 22, -37, -30, 6,
					-- layer=2 filter=49 channel=22
					24, -28, -47, 18, -3, -50, 20, -1, -10,
					-- layer=2 filter=49 channel=23
					-25, 1, 7, 20, -7, 24, 19, -13, -14,
					-- layer=2 filter=49 channel=24
					-23, -14, 22, -14, -30, 10, 17, 0, 27,
					-- layer=2 filter=49 channel=25
					-10, -9, 0, 1, -43, -15, 6, 3, -48,
					-- layer=2 filter=49 channel=26
					1, 21, 66, -58, -57, 15, 13, -40, 35,
					-- layer=2 filter=49 channel=27
					-41, -32, -9, 16, -36, -39, 34, -7, -10,
					-- layer=2 filter=49 channel=28
					-20, 54, 1, -20, 20, 10, -25, 21, -3,
					-- layer=2 filter=49 channel=29
					-21, 43, 51, -57, -26, 54, -19, -27, 14,
					-- layer=2 filter=49 channel=30
					-19, -17, 42, 13, -14, 17, 27, -37, 9,
					-- layer=2 filter=49 channel=31
					-53, -12, 22, -13, 0, 1, -27, 0, -15,
					-- layer=2 filter=50 channel=0
					-44, -11, 15, 6, -2, 3, 8, -11, -34,
					-- layer=2 filter=50 channel=1
					8, -39, -43, 17, -30, -76, 33, -16, -28,
					-- layer=2 filter=50 channel=2
					12, -84, -40, -40, -37, -7, -17, -16, -11,
					-- layer=2 filter=50 channel=3
					4, 5, -18, -15, 0, -10, 31, -5, 0,
					-- layer=2 filter=50 channel=4
					17, 39, 72, 29, 18, 38, 21, -7, 5,
					-- layer=2 filter=50 channel=5
					-3, -31, -56, -13, -50, -41, -56, -26, -21,
					-- layer=2 filter=50 channel=6
					-30, -9, 33, -30, 18, 31, -22, 14, 3,
					-- layer=2 filter=50 channel=7
					85, 19, -6, 9, -14, -46, -37, -68, -51,
					-- layer=2 filter=50 channel=8
					-23, 9, 24, -44, 12, 20, -25, -27, 18,
					-- layer=2 filter=50 channel=9
					27, -28, -13, 58, -8, 2, 36, 4, 19,
					-- layer=2 filter=50 channel=10
					20, 20, -11, 10, -31, -18, 47, -15, -47,
					-- layer=2 filter=50 channel=11
					-14, -63, -40, -6, -19, -7, -32, -1, 4,
					-- layer=2 filter=50 channel=12
					39, 67, -25, 26, 38, -13, 17, -24, -14,
					-- layer=2 filter=50 channel=13
					-20, -26, 25, 1, -48, -31, -28, -28, -43,
					-- layer=2 filter=50 channel=14
					12, 9, 15, -14, -25, -7, 17, -3, 17,
					-- layer=2 filter=50 channel=15
					-12, 49, 38, -5, 19, 9, 40, 13, 0,
					-- layer=2 filter=50 channel=16
					-7, -31, 1, 0, 0, 36, 26, 13, 48,
					-- layer=2 filter=50 channel=17
					-10, 31, 29, 2, 31, 10, -4, -25, 24,
					-- layer=2 filter=50 channel=18
					-24, -31, 5, 26, 0, 7, -22, 23, 19,
					-- layer=2 filter=50 channel=19
					-17, -40, -45, 5, -33, -18, 26, 11, 1,
					-- layer=2 filter=50 channel=20
					0, 21, -24, -19, -11, 30, -42, -13, 18,
					-- layer=2 filter=50 channel=21
					40, -23, -26, 17, -35, -35, -3, -26, -15,
					-- layer=2 filter=50 channel=22
					0, 51, 31, 31, 23, -5, 5, 15, -8,
					-- layer=2 filter=50 channel=23
					-14, 3, -9, -6, 22, -1, 18, -3, -14,
					-- layer=2 filter=50 channel=24
					21, -50, -32, 12, -50, 0, -37, -29, 7,
					-- layer=2 filter=50 channel=25
					-12, -37, 11, -11, -1, -27, 4, 0, -7,
					-- layer=2 filter=50 channel=26
					-47, -41, 1, -14, -23, 21, 18, 0, 23,
					-- layer=2 filter=50 channel=27
					25, 3, -32, 27, 6, 1, 27, 13, 17,
					-- layer=2 filter=50 channel=28
					-4, 36, 16, 2, -13, -38, -20, -12, -21,
					-- layer=2 filter=50 channel=29
					-6, -19, 7, -27, -22, 37, -25, 12, 2,
					-- layer=2 filter=50 channel=30
					28, -5, -38, 14, -16, -41, -10, 6, -12,
					-- layer=2 filter=50 channel=31
					15, -3, 34, -5, 15, 12, 9, 10, 29,
					-- layer=2 filter=51 channel=0
					59, 83, 59, -7, 15, -9, -6, -60, -97,
					-- layer=2 filter=51 channel=1
					5, 33, 0, 0, -22, -35, -33, -25, -27,
					-- layer=2 filter=51 channel=2
					26, 46, 33, 33, 5, -10, -31, -11, 23,
					-- layer=2 filter=51 channel=3
					-20, 8, 6, -7, 1, 22, -14, -5, -1,
					-- layer=2 filter=51 channel=4
					24, -33, -55, 14, -16, -12, 36, 81, -1,
					-- layer=2 filter=51 channel=5
					17, -1, -37, 51, 73, 44, -10, -17, -32,
					-- layer=2 filter=51 channel=6
					0, -24, -45, 37, 36, 29, -24, -58, -31,
					-- layer=2 filter=51 channel=7
					19, 30, 47, 11, -10, 26, 32, 13, 20,
					-- layer=2 filter=51 channel=8
					-11, 9, 35, 16, 3, -12, -10, -10, -40,
					-- layer=2 filter=51 channel=9
					0, -16, -30, 9, 28, 23, -21, -49, -42,
					-- layer=2 filter=51 channel=10
					42, -33, 0, -42, 10, -19, -29, -63, -77,
					-- layer=2 filter=51 channel=11
					-23, -24, -25, 13, 21, 43, -30, -44, 4,
					-- layer=2 filter=51 channel=12
					5, -4, 1, -13, -15, -16, 41, 2, 8,
					-- layer=2 filter=51 channel=13
					-26, 38, 53, -24, -9, -13, 6, 19, 8,
					-- layer=2 filter=51 channel=14
					-25, 13, -3, 24, 6, 0, 12, 0, 10,
					-- layer=2 filter=51 channel=15
					13, -49, -48, -21, -27, 3, -3, 6, 32,
					-- layer=2 filter=51 channel=16
					6, -15, 11, 9, 36, 33, -16, -28, 14,
					-- layer=2 filter=51 channel=17
					30, -38, -42, 4, -13, -5, -17, 8, 9,
					-- layer=2 filter=51 channel=18
					18, 17, -3, -6, 9, 26, -17, -54, -37,
					-- layer=2 filter=51 channel=19
					36, 83, 32, -49, -50, -84, 45, 20, 20,
					-- layer=2 filter=51 channel=20
					-63, -74, -23, 51, 58, 37, -8, -1, 2,
					-- layer=2 filter=51 channel=21
					7, -62, -30, 1, 18, -27, -1, -4, 11,
					-- layer=2 filter=51 channel=22
					-6, 2, -39, 17, -25, 26, 15, 38, 28,
					-- layer=2 filter=51 channel=23
					-19, -22, -34, 28, 20, 13, 26, 0, -4,
					-- layer=2 filter=51 channel=24
					-39, -10, -4, -12, -14, -25, -42, -37, -28,
					-- layer=2 filter=51 channel=25
					5, 58, 44, -29, -40, -6, -7, 23, 4,
					-- layer=2 filter=51 channel=26
					0, 10, 21, -35, -13, 2, -59, -65, -48,
					-- layer=2 filter=51 channel=27
					2, 22, 2, -23, 4, -29, -5, 35, 2,
					-- layer=2 filter=51 channel=28
					30, 20, 6, 19, 24, 31, -33, -36, -11,
					-- layer=2 filter=51 channel=29
					24, 15, -11, -2, 22, 29, -46, -45, -43,
					-- layer=2 filter=51 channel=30
					-37, -48, -72, 25, 33, 29, 9, -5, 24,
					-- layer=2 filter=51 channel=31
					8, 14, -7, 27, 6, -7, -6, -3, 6,
					-- layer=2 filter=52 channel=0
					-45, -95, -64, -36, -73, -18, -23, -76, -40,
					-- layer=2 filter=52 channel=1
					-15, -27, 45, -12, -37, -20, -57, -19, -41,
					-- layer=2 filter=52 channel=2
					-35, -14, 9, 3, 0, 3, -48, -18, -7,
					-- layer=2 filter=52 channel=3
					13, 19, 8, -2, 11, 18, -5, -19, -22,
					-- layer=2 filter=52 channel=4
					21, 39, -10, 53, 47, -4, 101, 72, -6,
					-- layer=2 filter=52 channel=5
					29, 4, 3, 7, 4, 18, 17, -28, 24,
					-- layer=2 filter=52 channel=6
					19, -9, -15, -10, -5, -28, 23, 0, -1,
					-- layer=2 filter=52 channel=7
					96, 22, 16, 91, 9, 40, 74, -23, 52,
					-- layer=2 filter=52 channel=8
					-2, -14, -10, 35, 2, -21, 25, -17, 4,
					-- layer=2 filter=52 channel=9
					-13, -27, 11, -10, -25, -26, 25, 0, -12,
					-- layer=2 filter=52 channel=10
					4, -56, -7, 46, -50, 36, 112, 43, 71,
					-- layer=2 filter=52 channel=11
					41, 27, 28, 54, 26, 0, 9, -19, -3,
					-- layer=2 filter=52 channel=12
					89, 42, 43, 34, 43, 10, 30, 87, 0,
					-- layer=2 filter=52 channel=13
					13, -7, -45, 26, -16, -36, -21, -60, -2,
					-- layer=2 filter=52 channel=14
					-20, -6, -5, -9, -2, 19, -14, 14, 0,
					-- layer=2 filter=52 channel=15
					-27, -20, -29, 22, -27, -17, 4, 5, -93,
					-- layer=2 filter=52 channel=16
					19, 9, 18, -19, 30, 44, -64, -12, 5,
					-- layer=2 filter=52 channel=17
					-13, 38, -44, 40, 14, -41, 36, 63, -10,
					-- layer=2 filter=52 channel=18
					28, -6, 9, 24, 13, 10, -35, -48, -1,
					-- layer=2 filter=52 channel=19
					-89, -45, 19, -30, -42, -7, -68, -33, -6,
					-- layer=2 filter=52 channel=20
					-14, -25, 2, -8, 26, 11, 32, 33, 16,
					-- layer=2 filter=52 channel=21
					-3, 14, 40, -37, -34, -14, -35, -36, 7,
					-- layer=2 filter=52 channel=22
					20, -24, -43, 65, 23, -36, 65, 53, 2,
					-- layer=2 filter=52 channel=23
					-2, -20, 0, 4, 26, -8, 24, 6, 3,
					-- layer=2 filter=52 channel=24
					27, 20, 35, 8, -6, 25, -20, -17, 24,
					-- layer=2 filter=52 channel=25
					-54, -115, -33, -33, -32, 1, -44, -74, 6,
					-- layer=2 filter=52 channel=26
					-10, 9, 7, 1, -8, 0, -31, -43, 34,
					-- layer=2 filter=52 channel=27
					-35, -41, -29, -3, 0, 6, -23, -28, -28,
					-- layer=2 filter=52 channel=28
					-22, 15, -20, -45, -1, -47, 4, -29, 11,
					-- layer=2 filter=52 channel=29
					45, 33, -12, -17, 13, -24, 7, -17, -4,
					-- layer=2 filter=52 channel=30
					42, 31, 2, -2, -4, -6, 18, -7, -3,
					-- layer=2 filter=52 channel=31
					4, -6, -6, -23, 5, -2, 6, -10, -3,
					-- layer=2 filter=53 channel=0
					-71, -110, -28, -59, -23, 47, 94, 41, 32,
					-- layer=2 filter=53 channel=1
					0, -25, -24, 23, -44, -8, 7, -3, -20,
					-- layer=2 filter=53 channel=2
					20, 25, 21, 60, 14, -58, 23, 0, -77,
					-- layer=2 filter=53 channel=3
					-15, -10, -3, -12, 8, -16, -20, -7, 21,
					-- layer=2 filter=53 channel=4
					40, -52, -37, 18, 15, 5, -36, -5, -48,
					-- layer=2 filter=53 channel=5
					-5, -6, -33, -26, -49, 9, -20, 32, 56,
					-- layer=2 filter=53 channel=6
					6, -8, -3, -24, -11, 10, -28, -24, 23,
					-- layer=2 filter=53 channel=7
					3, -84, -18, 35, -72, -14, -73, -30, 8,
					-- layer=2 filter=53 channel=8
					-18, -27, -34, -40, -26, 41, 7, 13, 28,
					-- layer=2 filter=53 channel=9
					-17, 17, -23, 11, -52, -12, -13, -55, -33,
					-- layer=2 filter=53 channel=10
					-66, -38, -32, -17, 42, 37, -3, 54, 21,
					-- layer=2 filter=53 channel=11
					41, 3, -32, -17, -40, -39, -7, 19, 6,
					-- layer=2 filter=53 channel=12
					-33, -3, -7, 19, 0, -17, 0, -32, 30,
					-- layer=2 filter=53 channel=13
					-40, -86, -42, -37, -94, -12, -42, -50, -6,
					-- layer=2 filter=53 channel=14
					-41, -14, 14, 19, 17, -19, 7, 15, 14,
					-- layer=2 filter=53 channel=15
					-61, 15, 60, 36, 95, 98, 45, 64, 26,
					-- layer=2 filter=53 channel=16
					66, 28, -12, 11, -14, -45, 48, -24, -42,
					-- layer=2 filter=53 channel=17
					-18, -57, -25, -25, 1, -7, -9, 22, 7,
					-- layer=2 filter=53 channel=18
					-2, -36, -18, -23, -33, -5, 44, 28, 28,
					-- layer=2 filter=53 channel=19
					-79, -34, 57, 4, 3, 10, 55, 2, -21,
					-- layer=2 filter=53 channel=20
					31, 32, -12, 34, 34, -5, 1, -59, 12,
					-- layer=2 filter=53 channel=21
					-9, 8, 16, 31, 26, 5, 5, -69, -42,
					-- layer=2 filter=53 channel=22
					-2, -1, -30, -10, 22, 30, 0, -9, -11,
					-- layer=2 filter=53 channel=23
					17, -7, -15, -16, -8, 20, -47, 18, -1,
					-- layer=2 filter=53 channel=24
					14, -10, -10, 25, -10, 10, 46, -10, -12,
					-- layer=2 filter=53 channel=25
					-75, -121, 14, 11, 15, -15, 91, 20, -21,
					-- layer=2 filter=53 channel=26
					-27, -48, 0, -33, 12, 25, 43, 40, -2,
					-- layer=2 filter=53 channel=27
					14, -23, -34, -9, -10, 40, -12, 36, 45,
					-- layer=2 filter=53 channel=28
					8, -26, -7, -3, 32, 9, 46, 22, 27,
					-- layer=2 filter=53 channel=29
					32, -20, -49, -21, -28, 22, -7, 32, 29,
					-- layer=2 filter=53 channel=30
					64, 21, -28, 24, -45, -25, -44, -27, 28,
					-- layer=2 filter=53 channel=31
					-5, -19, -16, -33, -4, 41, -2, 30, 45,
					-- layer=2 filter=54 channel=0
					69, 58, 31, 6, -36, -58, 44, -16, 24,
					-- layer=2 filter=54 channel=1
					4, -2, 23, 33, -3, 19, 10, -25, -18,
					-- layer=2 filter=54 channel=2
					64, 63, 34, 21, 46, -28, -51, -21, -57,
					-- layer=2 filter=54 channel=3
					14, -6, -19, -5, 3, -9, -7, -14, -23,
					-- layer=2 filter=54 channel=4
					-10, 30, 19, 54, 33, 64, 47, 30, 13,
					-- layer=2 filter=54 channel=5
					-17, 22, 1, 17, 35, -14, -45, 0, 2,
					-- layer=2 filter=54 channel=6
					-3, -38, 1, 6, 10, 23, 0, -4, 11,
					-- layer=2 filter=54 channel=7
					-58, -38, 12, -101, -36, 0, -159, -91, 12,
					-- layer=2 filter=54 channel=8
					-40, 1, 10, -29, 23, -14, -4, 4, -2,
					-- layer=2 filter=54 channel=9
					28, 6, 10, 35, 26, 30, 28, -24, -8,
					-- layer=2 filter=54 channel=10
					88, 11, -25, 13, -11, -26, 17, -26, -51,
					-- layer=2 filter=54 channel=11
					4, 21, 21, 21, 21, -33, -112, -79, -129,
					-- layer=2 filter=54 channel=12
					-12, -29, 21, 17, 7, -1, -70, -28, -14,
					-- layer=2 filter=54 channel=13
					-16, -4, 21, -27, -60, -6, -64, -27, -10,
					-- layer=2 filter=54 channel=14
					0, -1, 7, 3, -18, -6, 10, -25, -17,
					-- layer=2 filter=54 channel=15
					11, -8, -40, -12, -53, -72, -79, -81, -90,
					-- layer=2 filter=54 channel=16
					29, 41, 20, 9, 18, -14, -47, -22, -57,
					-- layer=2 filter=54 channel=17
					-18, -3, -3, -4, -11, -3, -8, -55, -39,
					-- layer=2 filter=54 channel=18
					13, 19, 28, -20, -34, -21, -93, -39, -61,
					-- layer=2 filter=54 channel=19
					37, -2, -30, -14, -16, -24, 79, 27, 11,
					-- layer=2 filter=54 channel=20
					-66, -61, 0, 22, 51, 29, -4, 31, -4,
					-- layer=2 filter=54 channel=21
					14, 18, -15, 9, 5, 3, 14, 1, -8,
					-- layer=2 filter=54 channel=22
					5, 2, -7, 32, -16, 33, 75, 28, 72,
					-- layer=2 filter=54 channel=23
					-17, -12, -19, 37, 9, 10, 24, 39, 40,
					-- layer=2 filter=54 channel=24
					42, 33, 20, -34, -5, 19, -71, -73, -43,
					-- layer=2 filter=54 channel=25
					47, -2, 34, -25, 0, -9, -29, -41, -18,
					-- layer=2 filter=54 channel=26
					30, 56, 2, -12, -25, -40, -77, -72, -98,
					-- layer=2 filter=54 channel=27
					-6, 6, 6, -9, -12, 4, 15, 8, 30,
					-- layer=2 filter=54 channel=28
					20, 33, 41, 20, -15, 17, -14, -43, -40,
					-- layer=2 filter=54 channel=29
					5, 30, 5, -11, -1, 11, -62, -72, -65,
					-- layer=2 filter=54 channel=30
					27, 24, -46, 19, 28, -5, -38, -15, 10,
					-- layer=2 filter=54 channel=31
					-16, 11, -11, 13, 0, -35, -14, -3, -14,
					-- layer=2 filter=55 channel=0
					-15, 20, 16, -29, 34, 13, -45, -5, 30,
					-- layer=2 filter=55 channel=1
					11, -17, -9, 25, 21, 43, -39, 31, -4,
					-- layer=2 filter=55 channel=2
					-28, 22, 18, -57, -6, -2, -94, -58, -41,
					-- layer=2 filter=55 channel=3
					-5, 6, 14, 10, -5, -1, -2, -32, 1,
					-- layer=2 filter=55 channel=4
					11, -36, -28, -50, -24, -46, 33, 51, 52,
					-- layer=2 filter=55 channel=5
					3, 5, -14, -6, -7, -15, 2, -12, 5,
					-- layer=2 filter=55 channel=6
					24, 11, -4, 35, 0, -29, 15, 2, -39,
					-- layer=2 filter=55 channel=7
					-48, 30, -92, -11, 22, -44, 4, 18, 16,
					-- layer=2 filter=55 channel=8
					-14, -55, -2, -8, -21, -32, 25, 6, -19,
					-- layer=2 filter=55 channel=9
					20, 33, 29, -3, 20, 32, -21, -21, 2,
					-- layer=2 filter=55 channel=10
					-70, -110, -75, -24, 22, -22, -46, -37, -39,
					-- layer=2 filter=55 channel=11
					48, 57, 44, 5, 8, 7, -5, -35, 2,
					-- layer=2 filter=55 channel=12
					0, -10, -15, 25, -1, -36, 7, -19, 17,
					-- layer=2 filter=55 channel=13
					7, 47, 30, -9, 56, 23, 45, 20, 47,
					-- layer=2 filter=55 channel=14
					20, 0, -6, -16, 17, 21, 25, 20, 20,
					-- layer=2 filter=55 channel=15
					14, -31, 4, 0, 6, -42, 23, -30, -77,
					-- layer=2 filter=55 channel=16
					5, 17, 16, -35, 18, 40, -67, -6, 19,
					-- layer=2 filter=55 channel=17
					3, 3, 5, -49, 15, -14, -21, 54, 5,
					-- layer=2 filter=55 channel=18
					17, 34, 9, 8, 4, -8, -18, -16, 21,
					-- layer=2 filter=55 channel=19
					36, 19, 8, -3, 36, 50, -32, 0, -4,
					-- layer=2 filter=55 channel=20
					-41, -4, 13, 4, -29, 30, 28, 12, 4,
					-- layer=2 filter=55 channel=21
					34, 29, -2, 20, 13, 16, -28, -6, 5,
					-- layer=2 filter=55 channel=22
					-19, -11, -18, -44, 22, 8, 1, -14, 38,
					-- layer=2 filter=55 channel=23
					-17, -28, -36, 0, -20, 9, 17, -3, 31,
					-- layer=2 filter=55 channel=24
					20, 48, 34, -6, 29, -18, -33, -16, -42,
					-- layer=2 filter=55 channel=25
					6, 34, -3, -70, 43, 62, -17, -14, 27,
					-- layer=2 filter=55 channel=26
					-11, 39, 13, -14, 40, 0, -17, -4, 10,
					-- layer=2 filter=55 channel=27
					-31, -30, -19, -19, 9, 21, -16, -7, 15,
					-- layer=2 filter=55 channel=28
					-12, -27, 21, -49, -33, -22, -28, -33, -31,
					-- layer=2 filter=55 channel=29
					19, 38, 35, 0, 0, 4, -14, -6, -9,
					-- layer=2 filter=55 channel=30
					18, 36, 20, -4, -2, 30, -30, 12, 26,
					-- layer=2 filter=55 channel=31
					-9, -34, -33, 12, -3, -7, 16, -12, 9,
					-- layer=2 filter=56 channel=0
					-30, -7, 26, 40, 39, 21, 30, 22, 27,
					-- layer=2 filter=56 channel=1
					5, -27, 2, 49, 15, 33, 2, 16, 5,
					-- layer=2 filter=56 channel=2
					24, 1, -41, -13, -22, -77, -52, -46, -5,
					-- layer=2 filter=56 channel=3
					19, 8, -14, -3, 22, -11, -1, -20, 3,
					-- layer=2 filter=56 channel=4
					-29, 16, 88, -2, 67, 83, -6, -9, -29,
					-- layer=2 filter=56 channel=5
					-9, 16, 21, -19, -9, 22, -8, -1, -15,
					-- layer=2 filter=56 channel=6
					12, -36, 11, -56, -32, -20, -3, -9, 34,
					-- layer=2 filter=56 channel=7
					-23, -82, -2, -93, -69, 6, -70, -36, 12,
					-- layer=2 filter=56 channel=8
					-20, -19, -44, -26, -48, -10, -23, -7, 8,
					-- layer=2 filter=56 channel=9
					12, 9, 0, -6, 0, 3, 13, -14, 8,
					-- layer=2 filter=56 channel=10
					-38, -32, -102, -6, -46, -83, -20, -40, -68,
					-- layer=2 filter=56 channel=11
					12, 20, 19, 25, 13, -18, 1, -8, -20,
					-- layer=2 filter=56 channel=12
					-11, -19, -8, -109, 44, 49, -61, -10, 59,
					-- layer=2 filter=56 channel=13
					1, -7, -25, 10, -15, -15, -34, -31, 10,
					-- layer=2 filter=56 channel=14
					-36, 9, -5, 20, 6, 15, -9, 5, -6,
					-- layer=2 filter=56 channel=15
					-11, 34, 26, -4, -8, 1, -29, -20, -28,
					-- layer=2 filter=56 channel=16
					3, 4, -16, 31, 27, -23, 24, -15, 8,
					-- layer=2 filter=56 channel=17
					-26, -5, 11, 9, 12, -15, 2, 31, 11,
					-- layer=2 filter=56 channel=18
					2, 26, -7, 3, 23, 11, 26, 5, -2,
					-- layer=2 filter=56 channel=19
					14, 46, 34, 24, 12, 17, -10, -8, 18,
					-- layer=2 filter=56 channel=20
					29, -39, -8, -14, -43, -23, 36, 18, 51,
					-- layer=2 filter=56 channel=21
					7, 0, 27, 16, 28, 3, 8, 9, 28,
					-- layer=2 filter=56 channel=22
					14, 29, -1, -23, 27, -4, -26, 40, 9,
					-- layer=2 filter=56 channel=23
					-55, -39, -27, -52, -70, -33, -76, -69, -28,
					-- layer=2 filter=56 channel=24
					-22, -10, -8, -43, -44, 6, 2, -1, 13,
					-- layer=2 filter=56 channel=25
					42, 40, 26, 59, 32, 1, 57, -20, 15,
					-- layer=2 filter=56 channel=26
					-18, -16, -13, -5, 21, 15, 27, -22, -5,
					-- layer=2 filter=56 channel=27
					-51, -48, -15, -24, -27, -13, -46, -38, -29,
					-- layer=2 filter=56 channel=28
					-25, -24, -23, 17, -23, -27, 37, 14, -15,
					-- layer=2 filter=56 channel=29
					-2, 11, 28, 7, 32, 14, 19, 1, 9,
					-- layer=2 filter=56 channel=30
					10, 11, 3, -21, 0, -23, -41, -12, -33,
					-- layer=2 filter=56 channel=31
					-9, -20, -7, 9, -12, 22, 27, 11, 12,
					-- layer=2 filter=57 channel=0
					-47, -47, -18, 43, 10, -32, 0, 13, -8,
					-- layer=2 filter=57 channel=1
					4, 12, -44, 33, -1, -7, -10, -22, 5,
					-- layer=2 filter=57 channel=2
					78, 19, -64, 95, 40, -85, 81, 19, -45,
					-- layer=2 filter=57 channel=3
					-16, -12, -22, 17, -4, 4, -14, -2, 3,
					-- layer=2 filter=57 channel=4
					-22, -14, -40, -37, -15, -25, -1, -38, -44,
					-- layer=2 filter=57 channel=5
					-15, -18, 15, -13, -11, -7, 7, 14, -5,
					-- layer=2 filter=57 channel=6
					-77, 36, 23, -52, -3, 56, -36, -7, 32,
					-- layer=2 filter=57 channel=7
					42, 42, 104, 32, 27, 67, 12, 61, 36,
					-- layer=2 filter=57 channel=8
					-60, 23, 26, -82, 8, 38, -65, 0, 67,
					-- layer=2 filter=57 channel=9
					-3, 0, 14, 10, -3, -28, 18, 28, 4,
					-- layer=2 filter=57 channel=10
					-6, -3, -44, 46, 21, 9, 29, 88, 16,
					-- layer=2 filter=57 channel=11
					33, 14, -71, 31, 1, -69, 17, 7, -72,
					-- layer=2 filter=57 channel=12
					5, 1, 19, 16, -10, -22, 10, 12, -26,
					-- layer=2 filter=57 channel=13
					-53, -1, 33, 23, 26, 4, 0, 1, -10,
					-- layer=2 filter=57 channel=14
					29, 7, -1, -15, 13, -12, -23, -6, 4,
					-- layer=2 filter=57 channel=15
					24, 8, 4, 22, -29, 16, 1, -11, -26,
					-- layer=2 filter=57 channel=16
					80, 0, -119, 93, 23, -100, 72, -11, -112,
					-- layer=2 filter=57 channel=17
					12, -16, -5, 16, -18, -37, 23, -19, 24,
					-- layer=2 filter=57 channel=18
					55, 27, -68, 41, 9, -44, 36, -23, -50,
					-- layer=2 filter=57 channel=19
					-8, -5, 24, 28, 12, -35, 38, 9, -18,
					-- layer=2 filter=57 channel=20
					-30, 19, 58, -46, 28, 30, -35, 0, 9,
					-- layer=2 filter=57 channel=21
					3, 18, -31, 0, -4, -12, 12, 19, 10,
					-- layer=2 filter=57 channel=22
					-34, -47, 23, -74, -6, 15, -44, -21, 44,
					-- layer=2 filter=57 channel=23
					-43, 7, 64, -77, -7, 52, -68, 1, 32,
					-- layer=2 filter=57 channel=24
					41, 26, -46, 68, 6, -77, 70, 11, -40,
					-- layer=2 filter=57 channel=25
					29, 35, 0, 17, 25, -19, 0, -9, -27,
					-- layer=2 filter=57 channel=26
					31, -10, -37, 38, 5, -74, 80, 22, -18,
					-- layer=2 filter=57 channel=27
					3, 17, 30, -20, 26, 62, -28, -14, 42,
					-- layer=2 filter=57 channel=28
					3, 3, -45, -12, 21, -2, -9, 2, -29,
					-- layer=2 filter=57 channel=29
					19, 18, -33, 45, -12, -32, 15, -7, -63,
					-- layer=2 filter=57 channel=30
					-3, 10, -34, 20, 18, -14, 34, -4, -33,
					-- layer=2 filter=57 channel=31
					-28, -5, 28, -36, 0, 39, -55, -17, 29,
					-- layer=2 filter=58 channel=0
					1, -8, 0, 46, 29, 49, 13, -8, -10,
					-- layer=2 filter=58 channel=1
					33, -2, -41, -8, 3, 5, -24, -3, -18,
					-- layer=2 filter=58 channel=2
					23, 8, 23, -38, -19, 19, -74, -8, 7,
					-- layer=2 filter=58 channel=3
					2, 0, 3, -10, 0, 8, -5, -8, -14,
					-- layer=2 filter=58 channel=4
					35, 61, 29, -105, -15, -41, -107, -23, -17,
					-- layer=2 filter=58 channel=5
					-34, -47, -79, 49, 58, 14, 71, 18, -4,
					-- layer=2 filter=58 channel=6
					-34, -52, -58, -4, 10, -40, 31, 16, 24,
					-- layer=2 filter=58 channel=7
					19, 69, 45, -64, -11, -20, -97, -19, 29,
					-- layer=2 filter=58 channel=8
					-22, -25, -51, 20, -6, 25, 56, 37, 31,
					-- layer=2 filter=58 channel=9
					4, -15, -1, -39, -58, -42, -16, -25, -5,
					-- layer=2 filter=58 channel=10
					-92, -45, 41, -35, 15, -17, 15, -32, -13,
					-- layer=2 filter=58 channel=11
					-14, -21, -47, -31, -1, 5, 40, 9, -6,
					-- layer=2 filter=58 channel=12
					22, 83, 42, -6, -11, 5, -96, -10, -45,
					-- layer=2 filter=58 channel=13
					12, 29, 48, 39, 26, 42, -15, -32, -33,
					-- layer=2 filter=58 channel=14
					21, 2, 25, 4, -9, 16, 12, -20, -23,
					-- layer=2 filter=58 channel=15
					8, 1, -3, -17, -5, -17, -68, -101, 50,
					-- layer=2 filter=58 channel=16
					21, 19, 2, -14, -29, -22, -1, 0, 4,
					-- layer=2 filter=58 channel=17
					16, -1, 56, -59, -65, -21, -89, -109, -37,
					-- layer=2 filter=58 channel=18
					-28, -4, -6, -5, 22, -17, 0, 13, 29,
					-- layer=2 filter=58 channel=19
					63, 27, 14, 80, 40, 21, -42, -22, -27,
					-- layer=2 filter=58 channel=20
					-55, -46, 14, -40, -46, 18, 67, 57, 76,
					-- layer=2 filter=58 channel=21
					19, 11, 28, -5, -34, -46, 14, 38, 19,
					-- layer=2 filter=58 channel=22
					34, 11, 7, 8, 5, -8, -39, -27, -55,
					-- layer=2 filter=58 channel=23
					-24, -66, -40, 19, -21, 1, 21, 18, -10,
					-- layer=2 filter=58 channel=24
					41, 59, 3, -35, -7, 7, 8, -4, -19,
					-- layer=2 filter=58 channel=25
					19, 26, 9, 20, 24, 29, 28, -45, -16,
					-- layer=2 filter=58 channel=26
					-8, -14, -23, 24, 9, 12, -1, -1, 0,
					-- layer=2 filter=58 channel=27
					8, -2, -24, 10, 34, 9, 8, 12, 6,
					-- layer=2 filter=58 channel=28
					-44, -7, 51, -36, -5, 52, -3, -53, 57,
					-- layer=2 filter=58 channel=29
					8, -20, -2, -16, 9, -11, 33, 16, -3,
					-- layer=2 filter=58 channel=30
					5, -3, -65, 0, -7, -48, -11, 20, 21,
					-- layer=2 filter=58 channel=31
					-27, -17, -51, 12, 43, -1, 61, 6, 14,
					-- layer=2 filter=59 channel=0
					33, 8, 36, 25, 11, -14, 25, -2, -15,
					-- layer=2 filter=59 channel=1
					-8, -18, 28, -5, 14, 3, 72, 90, 47,
					-- layer=2 filter=59 channel=2
					34, 4, 10, -1, 16, 6, 7, 26, 50,
					-- layer=2 filter=59 channel=3
					-24, 2, 15, 21, 7, 20, 6, 18, 17,
					-- layer=2 filter=59 channel=4
					1, 45, 3, 34, 55, 76, 27, 17, 28,
					-- layer=2 filter=59 channel=5
					29, 24, 37, 25, 32, -15, -39, -66, -41,
					-- layer=2 filter=59 channel=6
					23, -5, 5, 32, 22, 9, -20, -32, -29,
					-- layer=2 filter=59 channel=7
					-1, -25, -26, -20, -56, 0, 24, -27, -27,
					-- layer=2 filter=59 channel=8
					-8, 0, 4, -10, 2, -15, -10, -80, -53,
					-- layer=2 filter=59 channel=9
					-4, -44, 4, 24, 15, 7, 52, 90, 0,
					-- layer=2 filter=59 channel=10
					-6, -45, -82, -27, -60, -16, 3, 69, 44,
					-- layer=2 filter=59 channel=11
					14, -3, 20, -24, -25, -2, -16, -11, -36,
					-- layer=2 filter=59 channel=12
					20, 1, -57, -10, 27, -28, 18, 59, 38,
					-- layer=2 filter=59 channel=13
					21, -34, -67, -23, -70, -87, 38, -23, -40,
					-- layer=2 filter=59 channel=14
					9, -16, -4, 0, -14, 3, 9, -12, 2,
					-- layer=2 filter=59 channel=15
					-47, -13, -21, 46, -41, 33, 3, 39, 67,
					-- layer=2 filter=59 channel=16
					34, 20, -4, -20, 14, 0, -41, -16, -50,
					-- layer=2 filter=59 channel=17
					-2, 26, -9, 61, 31, -50, 17, 9, 22,
					-- layer=2 filter=59 channel=18
					5, 10, -1, 17, 10, 1, -48, -77, -37,
					-- layer=2 filter=59 channel=19
					0, -51, -52, -13, -10, 25, 22, 31, 44,
					-- layer=2 filter=59 channel=20
					16, -11, -8, 16, -10, -19, 1, -47, -81,
					-- layer=2 filter=59 channel=21
					-8, -46, -15, 4, -4, 28, 34, 82, 23,
					-- layer=2 filter=59 channel=22
					13, 39, 0, 32, 24, 8, -3, 3, 39,
					-- layer=2 filter=59 channel=23
					-7, -13, -3, -6, -2, -4, 10, -13, -17,
					-- layer=2 filter=59 channel=24
					-18, 0, -9, -16, 17, 14, 28, 3, 0,
					-- layer=2 filter=59 channel=25
					-30, -22, -39, -62, -93, -119, -36, -6, -8,
					-- layer=2 filter=59 channel=26
					12, 25, 5, -1, -15, -24, -49, -50, -13,
					-- layer=2 filter=59 channel=27
					0, -10, -37, -15, -5, -46, -33, -27, -35,
					-- layer=2 filter=59 channel=28
					-9, -4, -23, 27, -18, 1, 10, 3, 31,
					-- layer=2 filter=59 channel=29
					19, 25, 30, 2, -9, -19, -35, -32, -56,
					-- layer=2 filter=59 channel=30
					44, 58, 29, 19, 4, 1, -5, -29, -94,
					-- layer=2 filter=59 channel=31
					0, 10, 18, -11, 32, 2, -50, -59, -35,
					-- layer=2 filter=60 channel=0
					9, 4, 0, -14, -34, -5, -17, -16, -11,
					-- layer=2 filter=60 channel=1
					-7, 16, 16, -35, -41, -16, 31, -27, 8,
					-- layer=2 filter=60 channel=2
					-62, -115, -74, -104, -105, -70, -54, -74, -63,
					-- layer=2 filter=60 channel=3
					6, -10, -17, 3, -3, 2, -6, 0, -22,
					-- layer=2 filter=60 channel=4
					-14, -15, 13, 5, 5, 19, 19, -6, 24,
					-- layer=2 filter=60 channel=5
					23, -45, -38, -4, -2, -10, 5, -3, 10,
					-- layer=2 filter=60 channel=6
					7, 12, -28, 25, -5, 12, -7, 10, 0,
					-- layer=2 filter=60 channel=7
					-10, 51, -29, 28, 28, 4, 23, -8, 10,
					-- layer=2 filter=60 channel=8
					-7, 26, -26, 36, 2, -7, -2, 16, 21,
					-- layer=2 filter=60 channel=9
					28, 29, -5, 9, -27, 5, 24, -24, -14,
					-- layer=2 filter=60 channel=10
					51, 14, 29, -16, -44, 3, 2, 27, -16,
					-- layer=2 filter=60 channel=11
					-45, -39, -18, 0, -3, -12, 3, 12, -26,
					-- layer=2 filter=60 channel=12
					5, 11, 0, 9, 10, 24, 7, -17, 25,
					-- layer=2 filter=60 channel=13
					20, 51, 40, 37, 17, 2, 44, -22, 29,
					-- layer=2 filter=60 channel=14
					-18, -10, 15, -19, 7, 1, 12, 7, 9,
					-- layer=2 filter=60 channel=15
					8, 2, 13, -14, 33, 38, 0, 5, 17,
					-- layer=2 filter=60 channel=16
					-64, -77, -53, -72, -74, -27, -27, -74, -40,
					-- layer=2 filter=60 channel=17
					-23, -15, 4, 0, 8, 4, -12, -2, -3,
					-- layer=2 filter=60 channel=18
					-42, -25, -30, -21, -34, -28, -8, 21, 3,
					-- layer=2 filter=60 channel=19
					22, 1, -22, -7, -18, -32, 15, -3, 27,
					-- layer=2 filter=60 channel=20
					24, 13, 34, 6, 4, -4, 6, -11, -22,
					-- layer=2 filter=60 channel=21
					24, 10, 3, -20, -10, 4, 1, 4, -31,
					-- layer=2 filter=60 channel=22
					9, 30, 15, -3, -13, -12, 24, -3, -4,
					-- layer=2 filter=60 channel=23
					32, 30, 15, -6, 12, 4, 3, 25, 2,
					-- layer=2 filter=60 channel=24
					-55, -43, 0, -45, -52, 24, -21, -46, 3,
					-- layer=2 filter=60 channel=25
					0, 0, 19, -12, -9, -32, 10, -20, -16,
					-- layer=2 filter=60 channel=26
					-10, -54, -14, -39, -57, -40, -29, -38, -24,
					-- layer=2 filter=60 channel=27
					5, 13, 4, -5, 14, 3, 3, -10, 16,
					-- layer=2 filter=60 channel=28
					-31, 12, 23, -42, -39, -26, -20, -34, -4,
					-- layer=2 filter=60 channel=29
					-16, -58, -34, -21, -33, 1, -7, 23, 21,
					-- layer=2 filter=60 channel=30
					-6, -33, -28, -32, -58, -3, -19, -25, -17,
					-- layer=2 filter=60 channel=31
					-18, 6, 10, -6, 15, 15, 16, 18, 28,
					-- layer=2 filter=61 channel=0
					7, 27, 7, 44, 76, 23, -9, 16, 7,
					-- layer=2 filter=61 channel=1
					24, 62, 26, 27, 79, 10, 11, 8, -8,
					-- layer=2 filter=61 channel=2
					0, -3, 38, -41, 16, 14, -27, 4, -17,
					-- layer=2 filter=61 channel=3
					-16, 4, 9, 9, -1, -19, -3, -5, -10,
					-- layer=2 filter=61 channel=4
					44, 23, 50, 8, 17, -7, 0, -10, -17,
					-- layer=2 filter=61 channel=5
					15, 8, -37, -3, -42, 2, 5, -13, 42,
					-- layer=2 filter=61 channel=6
					25, -5, -7, 2, 12, -16, -5, -28, -24,
					-- layer=2 filter=61 channel=7
					-32, -21, 43, -12, -99, -2, 11, -75, -47,
					-- layer=2 filter=61 channel=8
					31, -20, 7, -9, -74, 1, 7, -11, 26,
					-- layer=2 filter=61 channel=9
					17, 34, 10, 39, 31, -1, -15, -40, -47,
					-- layer=2 filter=61 channel=10
					22, 1, 0, -22, -37, -9, -12, -31, -45,
					-- layer=2 filter=61 channel=11
					-3, 18, -28, -3, -56, -23, 15, -26, 28,
					-- layer=2 filter=61 channel=12
					-18, -17, 21, 25, 37, -18, 24, -9, -50,
					-- layer=2 filter=61 channel=13
					-2, -27, -35, -3, -15, -45, 17, -47, -25,
					-- layer=2 filter=61 channel=14
					-1, -27, 2, -15, -25, -9, 17, 19, 5,
					-- layer=2 filter=61 channel=15
					17, -33, 29, 63, 40, 13, 22, 67, -2,
					-- layer=2 filter=61 channel=16
					-6, -4, -29, -54, 10, 3, -71, -35, -14,
					-- layer=2 filter=61 channel=17
					-19, -44, -43, 12, -77, -37, -51, -22, -55,
					-- layer=2 filter=61 channel=18
					-41, 6, -7, -33, -2, 5, -32, -7, 2,
					-- layer=2 filter=61 channel=19
					-22, 34, 2, 41, 6, 20, -10, 0, -36,
					-- layer=2 filter=61 channel=20
					45, -5, 36, 6, -17, 11, -7, -26, -7,
					-- layer=2 filter=61 channel=21
					0, 31, 39, 27, 66, 29, 16, 9, -13,
					-- layer=2 filter=61 channel=22
					2, -63, 22, 23, 6, 10, -12, 1, 11,
					-- layer=2 filter=61 channel=23
					8, 0, -17, 34, 7, -20, 16, -11, -4,
					-- layer=2 filter=61 channel=24
					-47, -6, -1, -34, 32, 12, -24, -28, -12,
					-- layer=2 filter=61 channel=25
					-1, -19, 12, 3, 19, 0, -26, 4, -11,
					-- layer=2 filter=61 channel=26
					-21, 28, 5, -1, -2, 19, -73, -10, -24,
					-- layer=2 filter=61 channel=27
					-1, -9, -23, -8, -12, -30, 17, 23, 14,
					-- layer=2 filter=61 channel=28
					51, -16, 54, 34, -10, 18, -30, -8, 18,
					-- layer=2 filter=61 channel=29
					-15, 33, -31, 25, -45, 11, -5, -5, 26,
					-- layer=2 filter=61 channel=30
					-27, -20, -13, -38, -21, -10, -10, -38, 30,
					-- layer=2 filter=61 channel=31
					41, 0, -30, -22, -23, 7, 30, -8, 24,
					-- layer=2 filter=62 channel=0
					-13, 2, -10, 82, 93, 53, 1, -3, 5,
					-- layer=2 filter=62 channel=1
					14, -26, -5, -17, 6, -6, 2, 37, 55,
					-- layer=2 filter=62 channel=2
					48, 66, 4, 20, 9, 21, 23, 7, -11,
					-- layer=2 filter=62 channel=3
					-11, 18, 9, 0, 8, -7, -1, 3, -22,
					-- layer=2 filter=62 channel=4
					-12, -61, -63, -34, -59, -95, -14, -13, -84,
					-- layer=2 filter=62 channel=5
					-27, 6, 14, -24, -13, 34, 5, -5, 3,
					-- layer=2 filter=62 channel=6
					-31, -37, -31, -7, 25, 11, 8, 5, 30,
					-- layer=2 filter=62 channel=7
					-81, -107, -48, -88, -107, -100, -21, -36, -65,
					-- layer=2 filter=62 channel=8
					-27, 4, -7, -10, 10, 46, -16, -9, -10,
					-- layer=2 filter=62 channel=9
					-23, -36, -17, 11, 5, 20, -17, 41, 22,
					-- layer=2 filter=62 channel=10
					57, -21, -39, -10, 3, -24, -5, -34, -47,
					-- layer=2 filter=62 channel=11
					-32, -11, -11, -1, -12, 17, -31, -10, 7,
					-- layer=2 filter=62 channel=12
					-8, -104, -65, -4, -95, -91, 17, -30, -38,
					-- layer=2 filter=62 channel=13
					6, -38, -29, 40, 25, 5, 14, 27, -8,
					-- layer=2 filter=62 channel=14
					-8, -18, 3, 23, -27, -27, -13, 4, 22,
					-- layer=2 filter=62 channel=15
					-56, -49, -66, 9, -73, -90, 10, -85, -91,
					-- layer=2 filter=62 channel=16
					5, 20, 30, 33, -2, 27, 11, 2, -4,
					-- layer=2 filter=62 channel=17
					-29, -60, -44, -47, -71, -29, 24, -15, -58,
					-- layer=2 filter=62 channel=18
					-15, 4, 18, 26, 26, 33, -21, -42, -34,
					-- layer=2 filter=62 channel=19
					15, 31, 68, 38, 46, 15, 22, 26, 36,
					-- layer=2 filter=62 channel=20
					-42, -16, -33, 4, 33, -3, 38, 21, 29,
					-- layer=2 filter=62 channel=21
					-17, -40, -21, -41, -19, -14, 3, 32, 35,
					-- layer=2 filter=62 channel=22
					-29, 2, -19, 16, -30, 0, 27, -26, 0,
					-- layer=2 filter=62 channel=23
					-11, -21, -17, 8, 15, -23, 5, 46, 21,
					-- layer=2 filter=62 channel=24
					11, -12, -15, -17, -17, -20, -7, -7, -56,
					-- layer=2 filter=62 channel=25
					3, 23, -1, 51, 44, 19, 31, -4, 17,
					-- layer=2 filter=62 channel=26
					-56, 11, 14, 27, 7, 39, -21, -48, -58,
					-- layer=2 filter=62 channel=27
					-21, -4, 0, 8, 12, 11, -14, -14, 10,
					-- layer=2 filter=62 channel=28
					-21, -34, -19, 25, 6, -8, 12, -30, -35,
					-- layer=2 filter=62 channel=29
					-41, -30, 5, 17, 16, 24, -18, 0, -19,
					-- layer=2 filter=62 channel=30
					-4, -3, -5, -31, 11, -40, 15, -10, 0,
					-- layer=2 filter=62 channel=31
					-7, -14, 2, 16, 9, 42, 32, -7, 12,
					-- layer=2 filter=63 channel=0
					-19, -16, -14, -8, 21, 12, 0, 0, -3,
					-- layer=2 filter=63 channel=1
					4, 3, 11, -19, -20, 3, -17, -31, 5,
					-- layer=2 filter=63 channel=2
					10, -21, -25, -21, 10, 14, -16, -4, -17,
					-- layer=2 filter=63 channel=3
					1, 10, 19, 12, 12, 16, 21, -9, 23,
					-- layer=2 filter=63 channel=4
					-33, -8, -18, -23, -7, 16, 9, 9, 21,
					-- layer=2 filter=63 channel=5
					-10, -34, -14, -17, 1, -24, -35, -5, 2,
					-- layer=2 filter=63 channel=6
					-17, -19, -16, -2, 4, -1, -31, 8, -13,
					-- layer=2 filter=63 channel=7
					15, -33, 6, 22, -23, -8, -13, -1, 26,
					-- layer=2 filter=63 channel=8
					-37, -21, -10, 6, -27, -31, 2, -6, -19,
					-- layer=2 filter=63 channel=9
					-25, -4, 9, -3, -19, -8, -24, -26, -20,
					-- layer=2 filter=63 channel=10
					-26, -1, -22, 30, -17, -22, 8, 15, -9,
					-- layer=2 filter=63 channel=11
					-14, -29, -23, -21, -33, -13, -7, 0, -8,
					-- layer=2 filter=63 channel=12
					-3, -43, 13, 5, -5, -14, -15, -17, -40,
					-- layer=2 filter=63 channel=13
					20, 4, 4, 6, -18, -2, 19, -15, -7,
					-- layer=2 filter=63 channel=14
					-20, -6, 9, -11, -18, 9, 10, 21, 6,
					-- layer=2 filter=63 channel=15
					-15, -26, 0, -8, -4, -23, -23, -10, -16,
					-- layer=2 filter=63 channel=16
					12, -5, -20, -17, -7, -19, -24, 3, -8,
					-- layer=2 filter=63 channel=17
					11, -18, 0, -34, 10, -19, 1, -4, -35,
					-- layer=2 filter=63 channel=18
					-7, -22, -13, 6, -23, 1, -32, -16, -27,
					-- layer=2 filter=63 channel=19
					-14, -18, 6, 16, -20, 0, -8, -10, 0,
					-- layer=2 filter=63 channel=20
					-20, -16, 16, -3, -4, -19, -13, -4, -20,
					-- layer=2 filter=63 channel=21
					20, 0, -9, -27, 2, -31, -5, -2, -12,
					-- layer=2 filter=63 channel=22
					0, -35, -22, 15, -25, -31, -30, -38, -34,
					-- layer=2 filter=63 channel=23
					-16, 11, 5, 3, -9, 2, -5, -13, 7,
					-- layer=2 filter=63 channel=24
					-6, 7, -17, -31, -20, 0, 4, 0, 6,
					-- layer=2 filter=63 channel=25
					-9, -27, -14, 8, -9, 0, 35, 0, -13,
					-- layer=2 filter=63 channel=26
					0, -1, 0, -17, -13, -18, -5, -26, -27,
					-- layer=2 filter=63 channel=27
					-12, -22, -14, 0, -9, 6, -21, -15, -24,
					-- layer=2 filter=63 channel=28
					-14, -2, -30, 13, -8, 5, -23, -24, -34,
					-- layer=2 filter=63 channel=29
					-12, -11, -12, -14, -4, -13, -32, -25, 0,
					-- layer=2 filter=63 channel=30
					4, -34, -21, -11, -23, -6, -17, -21, -8,
					-- layer=2 filter=63 channel=31
					-1, -42, 3, -14, -33, 1, -30, -31, -31,

			0, 7, 53, 0, 0, 0, 0, 
			0, 0, 0, 13, 0, 0, 0, 
			35, 40, 35, 44, 72, 0, 8, 
			6, 0, 26, 0, 14, 14, 33, 
			0, 24, 7, 70, 0, 0, 0, 
			0, 81, 21, 0, 0, 22, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 99, 43, 19, 59, 
			17, 2, 0, 0, 29, 0, 25, 
			68, 0, 34, 0, 0, 37, 1, 
			0, 39, 66, 23, 18, 0, 0, 
			0, 0, 0, 0, 83, 24, 33, 
			86, 7, 198, 68, 0, 23, 0, 
			0, 116, 0, 0, 0, 13, 0, 
			

			59, 0, 53, 182, 180, 157, 132, 
			95, 142, 134, 18, 0, 0, 42, 
			0, 0, 0, 0, 0, 0, 8, 
			11, 95, 0, 0, 0, 0, 0, 
			0, 0, 29, 11, 66, 106, 139, 
			124, 0, 50, 145, 142, 126, 163, 
			163, 127, 114, 119, 114, 135, 126, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 35, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 33, 
			0, 0, 0, 0, 0, 0, 24, 
			0, 0, 0, 0, 0, 86, 20, 
			0, 0, 0, 106, 0, 0, 5, 
			0, 0, 0, 8, 0, 0, 0, 
			0, 226, 0, 0, 0, 0, 0, 
			

			50, 79, 18, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 43, 0, 
			80, 49, 76, 68, 0, 44, 0, 
			0, 0, 9, 92, 31, 55, 29, 
			79, 0, 0, 0, 0, 0, 0, 
			0, 20, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			128, 143, 117, 89, 33, 0, 52, 
			31, 118, 102, 15, 8, 22, 0, 
			13, 160, 127, 44, 31, 17, 0, 
			3, 42, 53, 38, 62, 24, 9, 
			21, 11, 54, 0, 0, 0, 0, 
			0, 43, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 24, 0, 
			0, 0, 0, 43, 0, 39, 31, 
			99, 0, 0, 115, 0, 104, 88, 
			188, 29, 0, 13, 0, 89, 0, 
			49, 0, 0, 89, 29, 10, 2, 
			0, 0, 48, 0, 24, 0, 0, 
			10, 16, 0, 0, 0, 0, 0, 
			

			71, 91, 80, 47, 43, 68, 47, 
			63, 109, 70, 48, 6, 34, 17, 
			52, 0, 0, 98, 0, 40, 16, 
			66, 68, 0, 0, 0, 0, 8, 
			0, 30, 0, 58, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			71, 61, 74, 71, 0, 0, 30, 
			0, 6, 0, 0, 6, 0, 0, 
			0, 94, 88, 0, 0, 0, 0, 
			0, 0, 102, 42, 66, 51, 29, 
			0, 0, 0, 0, 23, 0, 15, 
			49, 53, 86, 18, 0, 0, 0, 
			0, 69, 26, 0, 0, 0, 0, 
			

			0, 12, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 19, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			1, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			2, 0, 0, 7, 0, 9, 0, 
			46, 0, 0, 0, 0, 0, 0, 
			104, 0, 89, 145, 103, 79, 107, 
			62, 199, 108, 107, 107, 131, 122, 
			

			0, 0, 0, 6, 0, 7, 0, 
			194, 12, 0, 66, 9, 43, 74, 
			8, 126, 0, 52, 175, 98, 0, 
			0, 16, 0, 79, 49, 55, 0, 
			0, 261, 144, 0, 0, 42, 0, 
			0, 25, 267, 0, 73, 0, 0, 
			56, 0, 105, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 4, 0, 
			37, 0, 0, 35, 0, 0, 45, 
			0, 0, 0, 38, 0, 38, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 14, 96, 0, 14, 0, 0, 
			0, 0, 59, 0, 0, 0, 0, 
			64, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 138, 0, 0, 
			0, 38, 17, 0, 16, 0, 0, 
			0, 54, 14, 0, 59, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 35, 0, 47, 0, 61, 0, 
			0, 71, 0, 0, 95, 24, 0, 
			0, 0, 63, 0, 24, 0, 31, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 13, 23, 5, 0, 
			0, 0, 0, 0, 20, 15, 43, 
			12, 0, 0, 0, 0, 3, 0, 
			50, 65, 19, 22, 64, 88, 38, 
			119, 71, 210, 181, 219, 252, 243, 
			252, 142, 243, 222, 250, 273, 276, 
			

			0, 0, 9, 0, 22, 0, 13, 
			0, 46, 0, 0, 147, 0, 0, 
			0, 0, 20, 0, 135, 0, 0, 
			0, 0, 175, 0, 31, 0, 40, 
			30, 37, 0, 0, 0, 0, 57, 
			86, 98, 0, 19, 0, 7, 0, 
			0, 25, 0, 0, 8, 5, 19, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			74, 0, 0, 0, 7, 0, 0, 
			51, 0, 0, 0, 0, 0, 1, 
			45, 63, 0, 12, 0, 0, 0, 
			40, 0, 38, 4, 53, 89, 87, 
			87, 23, 74, 77, 91, 94, 106, 
			

			0, 0, 0, 0, 48, 62, 0, 
			90, 31, 120, 0, 0, 36, 11, 
			0, 22, 0, 14, 0, 0, 0, 
			35, 8, 0, 27, 3, 0, 0, 
			0, 83, 137, 0, 0, 49, 0, 
			0, 0, 0, 84, 0, 0, 7, 
			20, 0, 0, 9, 9, 11, 36, 
			

			200, 217, 142, 132, 80, 21, 129, 
			15, 139, 56, 18, 4, 13, 19, 
			0, 92, 0, 0, 0, 0, 0, 
			0, 48, 56, 21, 21, 3, 13, 
			0, 0, 0, 0, 0, 0, 30, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			39, 34, 11, 53, 7, 0, 24, 
			0, 4, 0, 0, 0, 0, 0, 
			0, 53, 28, 0, 0, 3, 0, 
			0, 14, 0, 61, 0, 11, 0, 
			0, 0, 0, 0, 0, 51, 0, 
			28, 0, 116, 88, 0, 0, 0, 
			0, 99, 8, 0, 0, 0, 0, 
			

			10, 0, 18, 0, 28, 0, 30, 
			162, 33, 21, 0, 113, 0, 0, 
			50, 1, 36, 0, 195, 0, 0, 
			0, 0, 47, 2, 98, 0, 19, 
			9, 180, 0, 0, 0, 0, 0, 
			0, 90, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			98, 110, 105, 105, 77, 61, 79, 
			86, 97, 99, 50, 14, 14, 36, 
			17, 82, 31, 26, 0, 22, 15, 
			0, 72, 22, 17, 2, 0, 17, 
			0, 0, 20, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 17, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			27, 0, 125, 46, 65, 39, 37, 
			141, 40, 124, 98, 77, 101, 78, 
			

			0, 0, 0, 0, 0, 61, 0, 
			103, 33, 99, 48, 0, 0, 0, 
			0, 0, 0, 30, 33, 0, 0, 
			49, 51, 0, 0, 0, 0, 0, 
			0, 86, 114, 67, 22, 0, 14, 
			0, 0, 0, 0, 0, 38, 41, 
			4, 0, 0, 0, 0, 0, 2, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 1, 
			

			0, 0, 0, 0, 18, 57, 23, 
			38, 26, 46, 69, 32, 36, 58, 
			60, 0, 16, 44, 0, 42, 42, 
			32, 46, 0, 0, 24, 10, 39, 
			0, 25, 65, 39, 43, 0, 18, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 7, 9, 16, 30, 0, 0, 
			0, 48, 0, 0, 0, 0, 0, 
			0, 27, 0, 0, 28, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 61, 21, 
			15, 0, 0, 28, 57, 39, 38, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 11, 0, 0, 0, 0, 
			17, 0, 53, 0, 0, 0, 0, 
			77, 0, 0, 23, 0, 0, 0, 
			53, 82, 0, 35, 0, 38, 30, 
			0, 159, 7, 37, 53, 51, 83, 
			

			37, 51, 0, 32, 0, 5, 38, 
			51, 0, 0, 49, 0, 93, 41, 
			124, 12, 0, 79, 0, 100, 11, 
			34, 38, 0, 102, 29, 76, 30, 
			14, 0, 22, 0, 37, 4, 16, 
			15, 0, 56, 18, 24, 0, 1, 
			29, 46, 70, 29, 12, 34, 31, 
			

			13, 19, 31, 18, 41, 34, 9, 
			29, 38, 51, 63, 83, 80, 36, 
			79, 69, 124, 136, 88, 101, 50, 
			93, 82, 102, 90, 70, 65, 57, 
			128, 94, 61, 112, 50, 7, 25, 
			40, 125, 21, 0, 3, 11, 15, 
			0, 18, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;

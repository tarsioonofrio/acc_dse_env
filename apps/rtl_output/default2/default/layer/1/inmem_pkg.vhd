LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					-2260, -1001, 6686, -8655, 6194, 16975, 873, 4999, -6600, 247, 1590, 560, 5124, 1994, -15538, -2532, 18192, 2257, 8205, -456, -2000, -4816, -3205, 3426, 12203, 7237, -2703, -786, -3772, 3142, 1379, -2775, -4026, 4030, -6027, -2670, 2655, -4415, 3563, -3200, 6177, 111, 7499, 14851, 15933, 1587, 3122, -3590, 4411, 5629, -7267, 633, -5741, 1093, 4629, -3463, 2105, -2146, 3393, -7015, -1806, 3559, 14993, -9736,

					-- weights
					-- layer=1 filter=0 channel=0
					8, -8, 28, -2, -14, -20, -24, -17, -22,
					-- layer=1 filter=0 channel=1
					5, -26, -8, -54, -51, -15, -3, -20, -20,
					-- layer=1 filter=0 channel=2
					4, 47, -1, 21, -14, 3, -23, -12, 2,
					-- layer=1 filter=0 channel=3
					10, 15, -8, 28, -4, -17, -18, -5, -20,
					-- layer=1 filter=0 channel=4
					-20, -4, -22, -11, 20, 7, 9, -17, 5,
					-- layer=1 filter=0 channel=5
					21, 46, 47, 47, 56, 43, 16, 26, -12,
					-- layer=1 filter=0 channel=6
					13, -4, -9, 3, -34, -17, -3, 10, 18,
					-- layer=1 filter=0 channel=7
					21, 0, 7, 15, -1, 2, -20, -11, 18,
					-- layer=1 filter=0 channel=8
					31, 26, 16, -17, 11, 16, -24, -27, -17,
					-- layer=1 filter=0 channel=9
					45, 56, 7, 15, 4, -29, -2, -7, -30,
					-- layer=1 filter=0 channel=10
					16, 36, 4, -10, 22, -11, 9, 0, 1,
					-- layer=1 filter=0 channel=11
					-7, 10, 12, 8, -6, -15, -5, 19, 18,
					-- layer=1 filter=0 channel=12
					7, -1, 0, -23, -38, -22, -14, -7, -15,
					-- layer=1 filter=0 channel=13
					-5, -20, 11, 15, 11, -11, -20, -28, -24,
					-- layer=1 filter=0 channel=14
					36, 11, 12, 22, 10, 14, -11, -43, -17,
					-- layer=1 filter=0 channel=15
					12, -8, -12, -4, -26, -16, 13, 10, -4,
					-- layer=1 filter=0 channel=16
					47, 36, 53, 25, 33, -2, -1, -33, -33,
					-- layer=1 filter=0 channel=17
					32, 37, 48, 22, 8, 20, -26, 5, -26,
					-- layer=1 filter=0 channel=18
					-46, -13, 16, 3, 36, 25, 26, -35, -33,
					-- layer=1 filter=0 channel=19
					14, 26, 39, 44, 52, 49, -4, 17, -21,
					-- layer=1 filter=0 channel=20
					32, 6, 10, -25, -5, -2, -23, -14, -23,
					-- layer=1 filter=0 channel=21
					0, -3, 27, 41, 12, 16, -13, -5, -4,
					-- layer=1 filter=0 channel=22
					14, -26, -32, -71, -29, 10, 19, 8, 36,
					-- layer=1 filter=0 channel=23
					-1, -24, 6, -21, 7, 19, 23, 34, -4,
					-- layer=1 filter=0 channel=24
					31, 9, 8, 0, -5, -7, -23, -3, 7,
					-- layer=1 filter=0 channel=25
					20, 14, 58, 74, 47, 17, 5, -11, 16,
					-- layer=1 filter=0 channel=26
					19, 13, -10, -4, -30, -23, -24, -22, -27,
					-- layer=1 filter=0 channel=27
					27, 54, 51, 99, 63, 31, 32, 31, 8,
					-- layer=1 filter=0 channel=28
					34, 17, 10, -19, -8, 3, -8, -12, -6,
					-- layer=1 filter=0 channel=29
					17, 25, 13, 24, 3, 11, -27, -28, -31,
					-- layer=1 filter=0 channel=30
					14, 13, -3, 5, 1, 0, -34, -27, -3,
					-- layer=1 filter=0 channel=31
					-10, 0, -8, 53, 36, 42, -14, -6, -11,
					-- layer=1 filter=1 channel=0
					-4, -28, -22, -12, -48, -9, 23, -20, -36,
					-- layer=1 filter=1 channel=1
					-23, -8, -38, -18, -25, -5, -12, -6, 7,
					-- layer=1 filter=1 channel=2
					-30, 20, 31, 16, -20, -14, 1, -1, -18,
					-- layer=1 filter=1 channel=3
					11, -37, -35, -16, 7, -36, 16, -22, -42,
					-- layer=1 filter=1 channel=4
					-2, 8, 20, 6, 3, 4, 1, -15, 9,
					-- layer=1 filter=1 channel=5
					-36, 5, -3, -62, -72, 12, -28, -73, -2,
					-- layer=1 filter=1 channel=6
					24, -5, -25, 15, 5, -40, 11, 0, -34,
					-- layer=1 filter=1 channel=7
					21, 5, -2, -1, 5, 11, 9, 15, -7,
					-- layer=1 filter=1 channel=8
					-32, 36, 26, -7, -21, 17, 10, -6, 14,
					-- layer=1 filter=1 channel=9
					22, -21, 3, 24, -33, -34, 18, 12, -14,
					-- layer=1 filter=1 channel=10
					24, 4, -19, 25, 31, -6, -5, 14, 6,
					-- layer=1 filter=1 channel=11
					-5, 20, -9, -17, 12, -20, -17, -1, -10,
					-- layer=1 filter=1 channel=12
					-41, -16, -4, -25, -54, 27, 6, -27, 26,
					-- layer=1 filter=1 channel=13
					9, 0, -13, 28, 19, -16, 10, 24, 0,
					-- layer=1 filter=1 channel=14
					49, 12, -47, 25, 53, -15, 4, 34, -35,
					-- layer=1 filter=1 channel=15
					30, -53, -5, 31, -18, -20, 27, 21, -11,
					-- layer=1 filter=1 channel=16
					35, 22, 6, 5, 24, -5, 5, -9, -20,
					-- layer=1 filter=1 channel=17
					-33, 18, 36, -20, -17, 41, 22, -15, -4,
					-- layer=1 filter=1 channel=18
					-12, 15, 45, -50, -5, 83, -34, 24, 44,
					-- layer=1 filter=1 channel=19
					-9, 33, 52, -38, -57, 49, -17, -25, 35,
					-- layer=1 filter=1 channel=20
					-17, 3, 28, -3, 2, -14, 12, -14, 20,
					-- layer=1 filter=1 channel=21
					69, 42, -82, 24, 79, -48, 14, 82, -30,
					-- layer=1 filter=1 channel=22
					35, 6, -26, -13, 18, 14, -4, -4, 7,
					-- layer=1 filter=1 channel=23
					45, 44, -38, -2, 55, 7, -24, 11, 5,
					-- layer=1 filter=1 channel=24
					44, -26, 5, 10, 1, -34, 25, 21, -34,
					-- layer=1 filter=1 channel=25
					11, 9, 4, -24, -73, -1, -23, -62, -30,
					-- layer=1 filter=1 channel=26
					28, 0, -35, -12, -13, -45, 11, -13, -5,
					-- layer=1 filter=1 channel=27
					55, 98, -17, 4, 101, 21, -29, 84, 86,
					-- layer=1 filter=1 channel=28
					11, -25, -28, 8, -25, -24, -6, -13, -10,
					-- layer=1 filter=1 channel=29
					-15, 6, 25, 26, -25, 5, 18, -19, -7,
					-- layer=1 filter=1 channel=30
					-3, -24, 5, -15, -23, 11, 17, -23, -4,
					-- layer=1 filter=1 channel=31
					-3, -35, -65, -28, -4, -33, -58, -27, -19,
					-- layer=1 filter=2 channel=0
					6, 14, 15, -10, -7, 6, 21, 15, -11,
					-- layer=1 filter=2 channel=1
					10, 11, 25, 17, 20, 20, 27, 31, 25,
					-- layer=1 filter=2 channel=2
					-26, 14, -17, 11, 5, 19, 15, -11, 0,
					-- layer=1 filter=2 channel=3
					0, -23, 1, 0, 4, 6, 8, 7, -2,
					-- layer=1 filter=2 channel=4
					-10, -11, 14, -18, -17, 4, 0, 8, 7,
					-- layer=1 filter=2 channel=5
					-46, -10, -51, -39, -15, -30, 18, 6, 40,
					-- layer=1 filter=2 channel=6
					-20, 0, -14, 20, 0, 11, 8, 18, 14,
					-- layer=1 filter=2 channel=7
					-6, 7, -10, -5, 18, -7, 5, -15, 4,
					-- layer=1 filter=2 channel=8
					-22, 24, -1, 13, 9, 1, 7, 3, 15,
					-- layer=1 filter=2 channel=9
					-14, -2, 13, -13, -20, -13, 3, 9, 13,
					-- layer=1 filter=2 channel=10
					17, 4, 3, -8, -1, -1, -9, 20, 10,
					-- layer=1 filter=2 channel=11
					17, -16, 9, 9, -14, -10, -5, 5, 11,
					-- layer=1 filter=2 channel=12
					-15, -13, -16, -9, 22, -2, 23, 1, 35,
					-- layer=1 filter=2 channel=13
					-14, -15, 3, -1, -19, 2, -17, 1, 16,
					-- layer=1 filter=2 channel=14
					3, -11, 11, -12, -23, -20, 34, 14, 16,
					-- layer=1 filter=2 channel=15
					-16, -1, 17, -1, 11, 8, -10, 32, 11,
					-- layer=1 filter=2 channel=16
					-8, -13, -8, -18, -3, 11, 0, -14, 1,
					-- layer=1 filter=2 channel=17
					-37, -27, -16, 3, -13, -22, -21, -14, -3,
					-- layer=1 filter=2 channel=18
					-12, 4, -31, -10, -47, 1, 30, 1, 36,
					-- layer=1 filter=2 channel=19
					-3, -21, -22, -40, -37, -8, -7, -17, 13,
					-- layer=1 filter=2 channel=20
					2, 2, -18, -6, 13, 15, -5, 10, 13,
					-- layer=1 filter=2 channel=21
					12, 6, 13, 16, 13, -28, 15, 42, -11,
					-- layer=1 filter=2 channel=22
					-32, -45, -48, -55, -63, -44, -19, -26, 2,
					-- layer=1 filter=2 channel=23
					-30, -55, -16, -16, -11, -16, 25, 9, 45,
					-- layer=1 filter=2 channel=24
					-9, -10, -8, -10, -8, -9, 20, -3, 6,
					-- layer=1 filter=2 channel=25
					-28, -28, -52, -24, -37, -4, 20, 18, 52,
					-- layer=1 filter=2 channel=26
					-15, 8, 19, 14, 9, -12, 0, 23, 17,
					-- layer=1 filter=2 channel=27
					-10, 6, 30, 19, 51, -15, -11, 30, 14,
					-- layer=1 filter=2 channel=28
					-11, 1, -9, -10, 19, 13, 19, -17, -14,
					-- layer=1 filter=2 channel=29
					-14, -4, 3, -13, -24, -12, -27, -34, -22,
					-- layer=1 filter=2 channel=30
					-30, -2, -22, -30, -18, 7, 3, -3, 24,
					-- layer=1 filter=2 channel=31
					9, -22, 8, -14, 8, 4, 11, -10, 13,
					-- layer=1 filter=3 channel=0
					33, 12, -1, 25, -1, 22, 3, -18, -18,
					-- layer=1 filter=3 channel=1
					-10, 3, -18, -19, -10, -21, -31, -20, 5,
					-- layer=1 filter=3 channel=2
					45, 35, 30, 27, 18, 27, -9, -1, -4,
					-- layer=1 filter=3 channel=3
					-1, 3, 25, 19, 26, 21, 8, 0, 12,
					-- layer=1 filter=3 channel=4
					-9, 18, -3, 15, 0, -11, -10, -21, -4,
					-- layer=1 filter=3 channel=5
					-30, -17, 18, -56, -21, -48, -43, -43, -8,
					-- layer=1 filter=3 channel=6
					11, 29, 14, 15, 9, -8, -18, 9, -11,
					-- layer=1 filter=3 channel=7
					-1, 0, -16, 1, 8, -9, 9, 7, -11,
					-- layer=1 filter=3 channel=8
					47, 7, 22, 3, 23, 4, -15, -38, -20,
					-- layer=1 filter=3 channel=9
					21, 12, 11, 17, 27, 8, -36, 4, -16,
					-- layer=1 filter=3 channel=10
					18, -3, 9, -26, 10, -20, -41, -1, -1,
					-- layer=1 filter=3 channel=11
					13, 1, -11, 0, 10, -11, -4, 1, -14,
					-- layer=1 filter=3 channel=12
					18, 5, -20, 16, 21, 5, 4, 2, 5,
					-- layer=1 filter=3 channel=13
					-18, 27, 13, 6, 8, -38, -15, -5, -14,
					-- layer=1 filter=3 channel=14
					27, 6, 13, -12, 47, 0, -21, 42, -5,
					-- layer=1 filter=3 channel=15
					-14, 14, 19, -27, -14, -3, -20, -34, -45,
					-- layer=1 filter=3 channel=16
					32, 34, 40, 11, 13, 4, 15, 26, -5,
					-- layer=1 filter=3 channel=17
					38, 55, 0, -10, 21, -4, 4, 11, -5,
					-- layer=1 filter=3 channel=18
					35, 18, -52, 46, -21, -8, 25, 27, 17,
					-- layer=1 filter=3 channel=19
					15, 14, -10, -5, -1, -5, -22, -6, 20,
					-- layer=1 filter=3 channel=20
					18, 20, -6, 1, -6, -17, 0, -14, -20,
					-- layer=1 filter=3 channel=21
					-31, -7, -12, -46, 35, -44, -29, 52, -16,
					-- layer=1 filter=3 channel=22
					-1, -44, -22, -55, -45, -70, -78, -56, -28,
					-- layer=1 filter=3 channel=23
					-71, -69, 18, -135, -158, -122, -181, -124, -135,
					-- layer=1 filter=3 channel=24
					-8, 22, 36, 10, 9, 14, -35, 14, -28,
					-- layer=1 filter=3 channel=25
					-60, 2, 12, -28, -18, -56, -28, -6, -10,
					-- layer=1 filter=3 channel=26
					8, 13, 32, -21, -10, -7, -41, 16, -30,
					-- layer=1 filter=3 channel=27
					-35, -109, -27, -22, 18, -26, 3, 15, 46,
					-- layer=1 filter=3 channel=28
					0, 11, 25, 0, 31, -10, -7, -10, -28,
					-- layer=1 filter=3 channel=29
					1, -4, 14, 4, -26, -41, -32, -25, -24,
					-- layer=1 filter=3 channel=30
					15, 24, 25, -6, 0, 10, 4, 6, 1,
					-- layer=1 filter=3 channel=31
					-77, -116, -40, -136, -108, -121, -149, -103, -116,
					-- layer=1 filter=4 channel=0
					-11, -10, -3, 8, -12, -4, 10, 8, 20,
					-- layer=1 filter=4 channel=1
					14, 8, 5, 39, 11, 20, 30, 7, 39,
					-- layer=1 filter=4 channel=2
					3, -27, -5, -34, -6, -29, -21, 17, -17,
					-- layer=1 filter=4 channel=3
					-2, -8, -15, 24, -11, 16, 0, 12, -4,
					-- layer=1 filter=4 channel=4
					16, 12, -1, 1, -4, 2, -5, -12, 14,
					-- layer=1 filter=4 channel=5
					22, -6, 7, 2, 38, 48, 22, 0, 19,
					-- layer=1 filter=4 channel=6
					12, -8, 3, 5, -4, 17, 1, -20, -21,
					-- layer=1 filter=4 channel=7
					-1, 8, -15, 4, -1, -3, 5, -19, 6,
					-- layer=1 filter=4 channel=8
					-24, -7, -35, -56, -5, -28, -49, -27, -20,
					-- layer=1 filter=4 channel=9
					-23, -23, -9, -2, -29, 8, 22, 5, -18,
					-- layer=1 filter=4 channel=10
					-5, -1, -12, 17, -19, -9, 32, 3, 20,
					-- layer=1 filter=4 channel=11
					-12, 3, 7, 7, -15, -7, -20, 1, 18,
					-- layer=1 filter=4 channel=12
					0, -14, -14, 19, 2, -5, -3, 47, -4,
					-- layer=1 filter=4 channel=13
					9, 6, 33, -18, -19, 16, -11, -7, 7,
					-- layer=1 filter=4 channel=14
					5, -8, -25, 17, -20, 1, 37, 4, 7,
					-- layer=1 filter=4 channel=15
					11, 14, 12, 9, 16, -7, 13, -12, -7,
					-- layer=1 filter=4 channel=16
					-37, -11, -22, -6, -11, -27, 12, -25, -13,
					-- layer=1 filter=4 channel=17
					-41, -15, -24, -64, -35, -54, -49, -89, -54,
					-- layer=1 filter=4 channel=18
					-22, 30, -29, -10, 56, 12, -15, 28, -8,
					-- layer=1 filter=4 channel=19
					-42, -12, -16, -10, -15, -18, -4, -52, -55,
					-- layer=1 filter=4 channel=20
					0, 4, 0, 21, 0, -3, -7, 21, 8,
					-- layer=1 filter=4 channel=21
					12, 3, 13, 26, 42, 29, 22, 15, 2,
					-- layer=1 filter=4 channel=22
					9, -34, -19, -21, -42, -40, -42, -81, -67,
					-- layer=1 filter=4 channel=23
					-24, -4, 2, 10, -47, 13, -6, -43, -11,
					-- layer=1 filter=4 channel=24
					-11, -5, 7, -10, -3, 16, 0, -20, -9,
					-- layer=1 filter=4 channel=25
					-9, 3, -15, 17, -1, 70, 13, 31, 30,
					-- layer=1 filter=4 channel=26
					17, -13, 9, 25, -4, 21, 30, 9, 6,
					-- layer=1 filter=4 channel=27
					35, 23, 46, 48, 43, 67, 22, 7, 55,
					-- layer=1 filter=4 channel=28
					3, -24, -25, 19, -16, 10, 5, 10, 18,
					-- layer=1 filter=4 channel=29
					11, 17, 17, -1, -7, 24, -19, 2, 3,
					-- layer=1 filter=4 channel=30
					-7, 6, -18, -21, 0, -10, -5, -15, -22,
					-- layer=1 filter=4 channel=31
					41, 25, -22, 29, 41, 32, 42, 4, -11,
					-- layer=1 filter=5 channel=0
					-20, -21, 31, -23, 6, 12, -33, 15, 19,
					-- layer=1 filter=5 channel=1
					1, 17, 17, 34, 54, 18, 21, 8, -11,
					-- layer=1 filter=5 channel=2
					-34, 0, 20, -55, -1, 67, -19, 5, 56,
					-- layer=1 filter=5 channel=3
					25, -2, -10, 23, -26, -29, 5, -21, 14,
					-- layer=1 filter=5 channel=4
					8, -13, -5, -4, 12, 14, -10, 4, -8,
					-- layer=1 filter=5 channel=5
					0, 31, -13, -5, -62, -15, -38, -35, -33,
					-- layer=1 filter=5 channel=6
					-19, -33, -16, -40, -48, 10, -13, 7, 18,
					-- layer=1 filter=5 channel=7
					-5, 12, 2, 19, 15, -5, 4, 17, 4,
					-- layer=1 filter=5 channel=8
					-73, -43, 66, -75, -20, 52, -37, -1, 57,
					-- layer=1 filter=5 channel=9
					-14, -10, 0, -20, -20, 17, 13, 11, 13,
					-- layer=1 filter=5 channel=10
					22, 48, 17, 21, 33, -17, 27, -3, -35,
					-- layer=1 filter=5 channel=11
					-14, 9, 19, -9, -11, 8, 2, 0, -4,
					-- layer=1 filter=5 channel=12
					-33, -7, 51, 8, 21, 58, -20, 39, 32,
					-- layer=1 filter=5 channel=13
					-15, -15, -19, -19, -40, -1, 28, -8, 24,
					-- layer=1 filter=5 channel=14
					28, -6, -84, 27, -27, -75, -1, -53, -28,
					-- layer=1 filter=5 channel=15
					-19, -83, -6, -45, -80, 15, -22, -13, -40,
					-- layer=1 filter=5 channel=16
					14, 7, -3, -2, -21, -3, 8, -10, 9,
					-- layer=1 filter=5 channel=17
					1, -25, 26, -14, 4, 28, -23, -9, 64,
					-- layer=1 filter=5 channel=18
					-16, -27, 49, -39, -31, 22, -28, 16, 46,
					-- layer=1 filter=5 channel=19
					33, 24, -7, 29, -41, 0, -30, -14, 9,
					-- layer=1 filter=5 channel=20
					-53, -70, 22, -44, -54, 15, -8, 12, 51,
					-- layer=1 filter=5 channel=21
					43, 12, -71, 7, -38, -66, 9, -3, -41,
					-- layer=1 filter=5 channel=22
					76, 34, 41, 40, 30, 19, 41, 15, 41,
					-- layer=1 filter=5 channel=23
					22, -57, -65, 22, 1, -37, 6, 6, -33,
					-- layer=1 filter=5 channel=24
					2, -41, -17, -1, -67, 0, 14, -21, -11,
					-- layer=1 filter=5 channel=25
					14, -30, -54, -7, -122, -77, -100, -113, -58,
					-- layer=1 filter=5 channel=26
					-9, -33, -24, 19, -26, -34, -12, -23, 2,
					-- layer=1 filter=5 channel=27
					67, 30, -126, 53, -23, -141, 36, 0, -84,
					-- layer=1 filter=5 channel=28
					0, -55, 2, -14, -45, 5, -28, -25, 1,
					-- layer=1 filter=5 channel=29
					-20, -37, 3, -15, -19, 63, 45, 25, 97,
					-- layer=1 filter=5 channel=30
					-5, -43, 7, -2, -36, 21, -51, -17, 36,
					-- layer=1 filter=5 channel=31
					-27, -20, -88, 19, 1, -66, 0, -34, -64,
					-- layer=1 filter=6 channel=0
					-13, -48, -25, -3, -41, -33, 21, 4, -23,
					-- layer=1 filter=6 channel=1
					-29, -27, -32, -53, -23, 9, -5, -45, -27,
					-- layer=1 filter=6 channel=2
					1, -17, -50, -24, -62, -63, -8, -6, -32,
					-- layer=1 filter=6 channel=3
					-54, -28, 19, -36, -61, -25, -50, -55, -23,
					-- layer=1 filter=6 channel=4
					8, 10, 13, 1, 2, -1, 14, -18, 3,
					-- layer=1 filter=6 channel=5
					-83, -80, -51, -63, -112, -95, -64, -7, -31,
					-- layer=1 filter=6 channel=6
					-4, -3, -6, -6, 6, -20, 31, -11, -21,
					-- layer=1 filter=6 channel=7
					13, 20, 19, 16, -7, -7, -20, 11, 15,
					-- layer=1 filter=6 channel=8
					12, -8, -28, -18, 13, -28, 24, 3, -7,
					-- layer=1 filter=6 channel=9
					10, -29, -29, -4, -10, -35, 0, -29, -36,
					-- layer=1 filter=6 channel=10
					-2, 0, 8, -17, -37, 14, 8, -40, 11,
					-- layer=1 filter=6 channel=11
					7, -2, -7, 6, -16, 2, 1, -17, 0,
					-- layer=1 filter=6 channel=12
					-22, -25, -49, -15, -3, -21, -14, -19, -18,
					-- layer=1 filter=6 channel=13
					25, 17, 13, 51, 40, 22, 21, 60, 2,
					-- layer=1 filter=6 channel=14
					-27, 28, -19, -59, -35, 23, -82, -16, 6,
					-- layer=1 filter=6 channel=15
					9, 22, -13, 24, 44, -16, 34, -6, 15,
					-- layer=1 filter=6 channel=16
					-21, -41, -31, -55, -63, -78, -11, -24, -39,
					-- layer=1 filter=6 channel=17
					35, 24, 2, 22, 7, -2, 42, 28, 27,
					-- layer=1 filter=6 channel=18
					5, -36, -13, -18, -6, -46, -54, -25, 15,
					-- layer=1 filter=6 channel=19
					-54, -70, -26, -65, -71, -116, -62, -60, -21,
					-- layer=1 filter=6 channel=20
					2, -14, -5, 23, 25, -10, 12, 3, 27,
					-- layer=1 filter=6 channel=21
					-17, 32, -37, -5, 7, 4, -30, -22, 26,
					-- layer=1 filter=6 channel=22
					56, 55, 36, 99, 102, 118, 64, 77, 79,
					-- layer=1 filter=6 channel=23
					-14, 20, -16, 46, 38, 31, 10, 18, -13,
					-- layer=1 filter=6 channel=24
					11, -9, -5, 23, 32, -6, 32, 19, 5,
					-- layer=1 filter=6 channel=25
					-45, -27, -4, -46, -66, -63, -79, -26, -10,
					-- layer=1 filter=6 channel=26
					-31, 0, -25, -22, -30, -9, 9, -26, -8,
					-- layer=1 filter=6 channel=27
					6, -24, 9, 14, -46, 22, -23, 28, 53,
					-- layer=1 filter=6 channel=28
					6, 15, -5, 11, 17, -16, 20, -12, -17,
					-- layer=1 filter=6 channel=29
					47, 22, -3, 38, 66, 35, 62, 75, 43,
					-- layer=1 filter=6 channel=30
					-24, -43, -27, -49, -29, -38, -15, -13, 6,
					-- layer=1 filter=6 channel=31
					18, 17, 39, 28, -5, 84, 14, -17, -30,
					-- layer=1 filter=7 channel=0
					-6, -7, 19, 27, -7, 16, 2, -37, -57,
					-- layer=1 filter=7 channel=1
					19, 52, 17, 20, 14, 17, -61, -58, -62,
					-- layer=1 filter=7 channel=2
					-42, -27, -17, -9, 21, 1, -17, -9, -49,
					-- layer=1 filter=7 channel=3
					16, -10, 1, -7, -8, 4, 11, 25, 52,
					-- layer=1 filter=7 channel=4
					0, 7, -13, -12, -11, -3, -15, 16, -1,
					-- layer=1 filter=7 channel=5
					-25, -44, -5, 28, 43, 60, 109, 86, 121,
					-- layer=1 filter=7 channel=6
					29, 16, 0, 27, -16, -21, -32, -60, -46,
					-- layer=1 filter=7 channel=7
					11, -13, 5, -9, 7, 4, 8, 15, -12,
					-- layer=1 filter=7 channel=8
					-23, 2, 9, -30, -9, 0, -31, -6, -36,
					-- layer=1 filter=7 channel=9
					-17, -40, -10, 29, 40, 38, 0, -6, 9,
					-- layer=1 filter=7 channel=10
					0, -14, -26, -9, 20, -10, 0, -35, -5,
					-- layer=1 filter=7 channel=11
					-15, -7, 18, -9, 15, -1, -15, -14, -7,
					-- layer=1 filter=7 channel=12
					0, 26, 22, -21, 33, 21, -61, -47, -96,
					-- layer=1 filter=7 channel=13
					8, 11, 16, -2, -37, -9, 16, -6, 13,
					-- layer=1 filter=7 channel=14
					8, -26, 6, -4, -19, 55, 28, -39, 58,
					-- layer=1 filter=7 channel=15
					12, -32, 30, 18, -5, -33, -46, -93, -46,
					-- layer=1 filter=7 channel=16
					-24, -54, -15, 38, 27, 30, 33, 28, 34,
					-- layer=1 filter=7 channel=17
					-36, -32, -17, -30, -2, -12, 36, 63, 25,
					-- layer=1 filter=7 channel=18
					-47, -36, -34, 7, 0, -31, 32, 74, 6,
					-- layer=1 filter=7 channel=19
					-64, -39, -44, -21, -2, -4, 111, 125, 89,
					-- layer=1 filter=7 channel=20
					-16, 29, -13, -26, 7, 0, -30, -20, -41,
					-- layer=1 filter=7 channel=21
					-1, -88, -24, -17, -51, -8, -42, -116, -28,
					-- layer=1 filter=7 channel=22
					-28, -31, -44, -17, 10, -73, -9, -19, 0,
					-- layer=1 filter=7 channel=23
					-7, -56, -48, -12, 4, -11, 24, -11, -11,
					-- layer=1 filter=7 channel=24
					24, 15, -9, 32, 18, 19, -19, -72, -13,
					-- layer=1 filter=7 channel=25
					-10, -53, -46, 11, 45, 24, 125, 97, 125,
					-- layer=1 filter=7 channel=26
					42, 31, -11, 9, -8, 1, -39, -89, -48,
					-- layer=1 filter=7 channel=27
					-44, 23, -7, 0, 22, 15, 17, -6, 50,
					-- layer=1 filter=7 channel=28
					26, -20, -3, 45, -12, 16, 0, -34, -37,
					-- layer=1 filter=7 channel=29
					-36, -10, 6, -25, -16, -22, 2, 14, -40,
					-- layer=1 filter=7 channel=30
					-39, -18, 12, -11, -18, -4, 10, 36, -7,
					-- layer=1 filter=7 channel=31
					5, -20, -10, 7, 22, -17, 25, 11, 12,
					-- layer=1 filter=8 channel=0
					-7, 24, -1, -17, -14, 6, -45, -12, -6,
					-- layer=1 filter=8 channel=1
					-7, 0, 4, -20, -8, 0, -19, -8, -27,
					-- layer=1 filter=8 channel=2
					40, 20, 10, 42, 43, 40, -12, 17, -20,
					-- layer=1 filter=8 channel=3
					10, -4, 32, 34, 19, 36, -2, 12, 12,
					-- layer=1 filter=8 channel=4
					-20, 16, 13, -1, 5, 19, -2, 1, -23,
					-- layer=1 filter=8 channel=5
					-53, -48, -52, -57, -37, -16, -25, -29, -50,
					-- layer=1 filter=8 channel=6
					-12, -41, -25, 2, -25, -6, -18, -10, -10,
					-- layer=1 filter=8 channel=7
					13, -15, 17, 1, 20, -8, 15, -12, 4,
					-- layer=1 filter=8 channel=8
					41, 61, 26, 12, 24, 27, -5, 24, -16,
					-- layer=1 filter=8 channel=9
					4, 54, 11, 21, 47, 34, -40, 4, -25,
					-- layer=1 filter=8 channel=10
					26, 57, 39, 62, 73, 47, 8, 3, -6,
					-- layer=1 filter=8 channel=11
					-20, 11, 4, -20, -9, 10, 14, 1, 19,
					-- layer=1 filter=8 channel=12
					-9, 7, 9, -12, -6, -2, -37, -7, -34,
					-- layer=1 filter=8 channel=13
					-50, -86, -21, 0, -34, 7, 57, 68, 56,
					-- layer=1 filter=8 channel=14
					16, 36, 18, 33, 59, 26, -9, 17, -21,
					-- layer=1 filter=8 channel=15
					-37, -73, -11, -65, -88, -10, -16, -6, 49,
					-- layer=1 filter=8 channel=16
					55, 63, 54, 42, 93, 54, 6, 13, -5,
					-- layer=1 filter=8 channel=17
					37, 48, 59, -7, 12, 33, 2, -6, 48,
					-- layer=1 filter=8 channel=18
					-26, -63, -26, -26, -20, -32, -35, -6, -33,
					-- layer=1 filter=8 channel=19
					43, 33, 27, 47, 37, 45, 2, 29, 37,
					-- layer=1 filter=8 channel=20
					-16, -9, 13, -46, -45, 16, 38, 63, 89,
					-- layer=1 filter=8 channel=21
					-25, -41, -23, -14, -28, -9, -29, 1, 5,
					-- layer=1 filter=8 channel=22
					-34, -26, 13, 19, 7, 31, 86, 92, 91,
					-- layer=1 filter=8 channel=23
					0, 15, -21, 53, 56, -2, 14, 37, -1,
					-- layer=1 filter=8 channel=24
					-29, -29, 12, -26, -55, -51, -55, -47, -4,
					-- layer=1 filter=8 channel=25
					-43, -31, -52, -45, -42, -34, -23, -38, -28,
					-- layer=1 filter=8 channel=26
					-11, 1, 1, -28, -7, 31, -4, -32, -18,
					-- layer=1 filter=8 channel=27
					35, 40, -11, 59, 72, 17, 88, 49, 30,
					-- layer=1 filter=8 channel=28
					-5, -9, 5, -22, -2, -29, -36, -9, 4,
					-- layer=1 filter=8 channel=29
					13, 11, 27, -15, -83, -13, 122, 86, 149,
					-- layer=1 filter=8 channel=30
					13, 18, 17, -5, 7, 6, -18, -12, -16,
					-- layer=1 filter=8 channel=31
					-9, -17, 27, 72, 42, 73, 49, 70, 85,
					-- layer=1 filter=9 channel=0
					6, -30, -14, 27, 7, -25, 0, 3, -23,
					-- layer=1 filter=9 channel=1
					26, 0, -17, -8, -16, 3, -19, -1, 21,
					-- layer=1 filter=9 channel=2
					0, -12, -19, 2, -4, -29, -13, -21, -42,
					-- layer=1 filter=9 channel=3
					-1, -6, -7, 3, 4, -6, -4, 7, -26,
					-- layer=1 filter=9 channel=4
					-19, 18, -10, 5, 10, -11, -1, 18, 9,
					-- layer=1 filter=9 channel=5
					-61, -35, 16, -48, -104, -76, -37, -42, -83,
					-- layer=1 filter=9 channel=6
					4, -2, -27, 33, 22, -15, 4, 28, 4,
					-- layer=1 filter=9 channel=7
					-9, -14, 0, 2, -5, -5, -8, 15, -12,
					-- layer=1 filter=9 channel=8
					-5, -46, -64, 18, -16, -67, 14, -21, -52,
					-- layer=1 filter=9 channel=9
					3, -24, -27, 5, -14, -25, 6, -13, -2,
					-- layer=1 filter=9 channel=10
					-19, 7, 16, -1, 19, 48, -14, -7, 40,
					-- layer=1 filter=9 channel=11
					-11, -5, -10, 15, 20, -14, 16, -18, 1,
					-- layer=1 filter=9 channel=12
					-12, -49, -45, 9, -57, -63, 24, -53, -70,
					-- layer=1 filter=9 channel=13
					5, -21, -51, 21, 14, -27, 6, 6, -23,
					-- layer=1 filter=9 channel=14
					17, 22, 20, -41, 13, 43, -61, 9, 12,
					-- layer=1 filter=9 channel=15
					50, 17, -51, 27, 69, -24, 2, 20, 8,
					-- layer=1 filter=9 channel=16
					-16, 4, 28, 0, 22, -10, -40, 5, 2,
					-- layer=1 filter=9 channel=17
					-5, -21, -12, 22, -16, -69, 37, 3, -54,
					-- layer=1 filter=9 channel=18
					-7, -51, 47, -9, -25, -79, -27, -9, -44,
					-- layer=1 filter=9 channel=19
					-39, -46, 58, -31, -74, -57, -50, -26, -49,
					-- layer=1 filter=9 channel=20
					31, -44, -69, 13, -6, -54, 19, 6, -28,
					-- layer=1 filter=9 channel=21
					81, 87, 42, -5, 46, 58, -39, 2, 81,
					-- layer=1 filter=9 channel=22
					30, 36, -10, 10, 5, 23, -22, -1, 20,
					-- layer=1 filter=9 channel=23
					48, 78, 64, -11, 40, 88, -56, 10, 46,
					-- layer=1 filter=9 channel=24
					39, 14, -36, 29, 37, -27, 6, 0, 8,
					-- layer=1 filter=9 channel=25
					-45, -28, -7, -27, -44, -99, -52, -18, -47,
					-- layer=1 filter=9 channel=26
					21, 7, 3, 20, 18, 11, 9, -4, -12,
					-- layer=1 filter=9 channel=27
					47, 46, 58, -14, 20, 75, -46, -10, 79,
					-- layer=1 filter=9 channel=28
					26, 29, -36, 8, 33, -36, 13, 28, 8,
					-- layer=1 filter=9 channel=29
					10, -30, -31, 19, 9, -83, 31, 30, -7,
					-- layer=1 filter=9 channel=30
					-7, -40, -40, 21, -27, -46, 25, 7, -36,
					-- layer=1 filter=9 channel=31
					-35, -1, -2, -28, -20, 36, -75, -65, 17,
					-- layer=1 filter=10 channel=0
					-25, 9, -8, 11, 1, -6, 7, 1, -12,
					-- layer=1 filter=10 channel=1
					34, 2, -7, -14, -22, 3, -16, -14, -11,
					-- layer=1 filter=10 channel=2
					-15, -26, 15, 2, 0, 22, -11, 25, 18,
					-- layer=1 filter=10 channel=3
					8, -18, -7, 19, 19, -23, 0, -34, -19,
					-- layer=1 filter=10 channel=4
					-2, -16, -6, -12, 15, 8, 16, -6, -11,
					-- layer=1 filter=10 channel=5
					22, 40, 24, 53, 51, -8, 16, 24, 42,
					-- layer=1 filter=10 channel=6
					-22, -20, 5, -2, 0, 18, 35, 8, 11,
					-- layer=1 filter=10 channel=7
					-7, -17, -19, -19, 16, -17, 11, -12, -2,
					-- layer=1 filter=10 channel=8
					-43, -32, -7, 21, 7, 18, 24, 4, 19,
					-- layer=1 filter=10 channel=9
					8, -16, 23, 5, 1, 16, 14, -24, -24,
					-- layer=1 filter=10 channel=10
					35, 21, 16, 7, 5, 29, 7, -27, -7,
					-- layer=1 filter=10 channel=11
					-9, -14, 0, -2, -17, 5, 11, -10, 0,
					-- layer=1 filter=10 channel=12
					11, 20, 27, 14, 5, -5, -24, -6, -24,
					-- layer=1 filter=10 channel=13
					-61, -42, -19, -7, 19, -11, 9, 27, 26,
					-- layer=1 filter=10 channel=14
					-3, 35, 14, -18, 17, -12, -31, -41, -8,
					-- layer=1 filter=10 channel=15
					28, -14, -14, -2, 30, 17, 12, 39, 23,
					-- layer=1 filter=10 channel=16
					2, 32, 15, 30, 19, 0, -21, -2, 0,
					-- layer=1 filter=10 channel=17
					-30, -41, 14, -10, 17, -10, 21, 20, 21,
					-- layer=1 filter=10 channel=18
					9, 0, -9, 23, 12, 6, -6, 1, -25,
					-- layer=1 filter=10 channel=19
					22, 32, 53, 75, 91, 15, 36, 34, 21,
					-- layer=1 filter=10 channel=20
					-38, -22, -21, -1, -1, -9, 26, 25, -14,
					-- layer=1 filter=10 channel=21
					4, 23, -9, 8, 6, -22, -19, -24, -37,
					-- layer=1 filter=10 channel=22
					4, 51, 10, 19, 19, 11, 36, 32, 25,
					-- layer=1 filter=10 channel=23
					111, 123, 69, 80, 95, 87, 62, 44, 1,
					-- layer=1 filter=10 channel=24
					-27, -4, -24, -10, -12, 11, 3, 38, 25,
					-- layer=1 filter=10 channel=25
					-9, -8, 34, 62, 79, 4, -3, 34, 36,
					-- layer=1 filter=10 channel=26
					-19, 5, 2, -1, 15, 14, 2, -10, -17,
					-- layer=1 filter=10 channel=27
					-6, 8, 45, -30, -7, 45, -62, -57, -21,
					-- layer=1 filter=10 channel=28
					-15, -19, 0, -4, -7, -10, 22, 28, 5,
					-- layer=1 filter=10 channel=29
					-78, -54, -16, -51, 1, -5, 24, 2, 6,
					-- layer=1 filter=10 channel=30
					-19, -30, -12, 10, -10, -5, -3, -15, 21,
					-- layer=1 filter=10 channel=31
					36, 22, 15, 28, 28, 43, 35, -20, 7,
					-- layer=1 filter=11 channel=0
					-5, -18, -34, -9, 14, -22, 20, 14, 33,
					-- layer=1 filter=11 channel=1
					-13, -12, -44, 27, 9, 24, 39, 58, 50,
					-- layer=1 filter=11 channel=2
					-17, -6, -27, -28, -14, -35, 53, 37, 16,
					-- layer=1 filter=11 channel=3
					-34, -20, -11, -7, 6, -20, 19, -6, -2,
					-- layer=1 filter=11 channel=4
					-2, -22, -13, -4, -1, 1, 0, 13, -7,
					-- layer=1 filter=11 channel=5
					15, 27, 41, 67, 76, 45, 0, -9, -26,
					-- layer=1 filter=11 channel=6
					1, 5, -18, -3, -17, -13, 3, 32, 27,
					-- layer=1 filter=11 channel=7
					4, 4, 9, -4, 13, -5, 8, 14, 2,
					-- layer=1 filter=11 channel=8
					3, -24, -12, -11, -36, -31, -1, 9, -21,
					-- layer=1 filter=11 channel=9
					-43, -38, -29, 1, -34, -24, 40, 55, 36,
					-- layer=1 filter=11 channel=10
					-13, -4, -30, 10, 7, -10, 26, 21, 49,
					-- layer=1 filter=11 channel=11
					3, -12, 20, -5, 16, -18, -5, 0, -4,
					-- layer=1 filter=11 channel=12
					4, -26, -17, 14, 5, 26, 19, 26, 23,
					-- layer=1 filter=11 channel=13
					-15, -7, 2, -19, 7, -2, -26, -21, -7,
					-- layer=1 filter=11 channel=14
					-21, -15, -41, 14, -30, -31, -16, 9, 27,
					-- layer=1 filter=11 channel=15
					-8, 1, 26, 11, 10, -23, 24, 8, 30,
					-- layer=1 filter=11 channel=16
					-29, -27, -25, -19, -50, -14, 29, 37, 8,
					-- layer=1 filter=11 channel=17
					2, 38, 12, -5, -6, -22, -50, -52, -31,
					-- layer=1 filter=11 channel=18
					15, 15, 12, -19, -10, 13, -13, -74, -127,
					-- layer=1 filter=11 channel=19
					-3, 57, 37, 59, 102, 61, 9, -12, -5,
					-- layer=1 filter=11 channel=20
					4, 16, -12, -9, -20, -11, -13, 7, -16,
					-- layer=1 filter=11 channel=21
					3, 25, -5, 6, 9, -23, -36, -51, 21,
					-- layer=1 filter=11 channel=22
					44, 38, -11, 28, 34, 59, 48, 75, 37,
					-- layer=1 filter=11 channel=23
					45, 0, 0, 10, 53, 43, 69, 68, 81,
					-- layer=1 filter=11 channel=24
					1, 8, -16, 1, -18, -6, 7, 30, 18,
					-- layer=1 filter=11 channel=25
					-8, 20, 30, 36, 86, 27, -42, -21, -45,
					-- layer=1 filter=11 channel=26
					-27, -18, -59, 1, 2, -16, 47, 61, 48,
					-- layer=1 filter=11 channel=27
					2, 62, 48, -3, -35, -11, -99, -110, -69,
					-- layer=1 filter=11 channel=28
					-26, -21, -27, 3, -16, -23, 26, 28, 31,
					-- layer=1 filter=11 channel=29
					21, 20, 29, 0, -9, -22, -37, -46, -30,
					-- layer=1 filter=11 channel=30
					-15, -35, -22, -20, -5, -19, 25, 44, 24,
					-- layer=1 filter=11 channel=31
					-39, -25, -51, 29, 11, 17, -12, 0, 29,
					-- layer=1 filter=12 channel=0
					17, -10, -10, 26, 8, 27, 11, 17, 34,
					-- layer=1 filter=12 channel=1
					7, 31, 29, 39, 31, 24, 12, 11, -5,
					-- layer=1 filter=12 channel=2
					-15, 1, -5, -7, -9, 10, -8, 21, 6,
					-- layer=1 filter=12 channel=3
					15, 12, -9, -4, 17, 20, 4, 9, 23,
					-- layer=1 filter=12 channel=4
					0, 14, -1, 8, -1, 7, -2, -21, -23,
					-- layer=1 filter=12 channel=5
					-14, 0, -3, -5, 33, -8, 17, 13, -6,
					-- layer=1 filter=12 channel=6
					1, -10, 20, 17, -9, 12, -13, 20, -8,
					-- layer=1 filter=12 channel=7
					2, 19, -1, 11, 17, -1, -13, 4, 10,
					-- layer=1 filter=12 channel=8
					-32, -34, -10, -15, -39, -19, -25, 9, 0,
					-- layer=1 filter=12 channel=9
					-19, -5, 7, -14, 7, 9, 31, 34, -2,
					-- layer=1 filter=12 channel=10
					-3, -7, 12, 4, -12, -3, 8, 20, 21,
					-- layer=1 filter=12 channel=11
					-20, 6, 17, -3, 6, -19, 19, 11, -21,
					-- layer=1 filter=12 channel=12
					0, -9, -10, 6, 29, -3, 31, 26, 4,
					-- layer=1 filter=12 channel=13
					7, -9, 0, -29, 10, -16, -21, -21, -27,
					-- layer=1 filter=12 channel=14
					-3, -2, -24, -2, -6, -2, 19, 0, 8,
					-- layer=1 filter=12 channel=15
					-28, 1, -1, 15, -8, 3, 3, -22, -19,
					-- layer=1 filter=12 channel=16
					-21, -7, 15, -22, 15, 13, 30, 3, 27,
					-- layer=1 filter=12 channel=17
					-40, -14, -11, -38, -35, -22, -52, -23, -41,
					-- layer=1 filter=12 channel=18
					17, 10, -17, 16, 5, -4, 14, 37, 18,
					-- layer=1 filter=12 channel=19
					-3, -6, -32, 18, 4, 4, -6, -22, 28,
					-- layer=1 filter=12 channel=20
					14, -21, 0, -10, 7, 6, -24, -8, -14,
					-- layer=1 filter=12 channel=21
					-5, 0, -35, 3, 0, -5, 9, 8, 0,
					-- layer=1 filter=12 channel=22
					-31, -43, -34, -46, -33, -21, -35, -53, -12,
					-- layer=1 filter=12 channel=23
					1, 0, -26, 1, -7, 3, 29, -33, -10,
					-- layer=1 filter=12 channel=24
					-9, 8, -7, -7, 9, -2, 4, -17, -19,
					-- layer=1 filter=12 channel=25
					-6, 31, -11, 25, 19, 13, 7, 0, 3,
					-- layer=1 filter=12 channel=26
					8, 12, -17, 20, 25, -4, 32, 29, 28,
					-- layer=1 filter=12 channel=27
					-7, -33, -16, -49, 5, -36, -25, -11, -2,
					-- layer=1 filter=12 channel=28
					13, -1, 2, 12, -12, 20, 27, -13, 2,
					-- layer=1 filter=12 channel=29
					-24, -38, -8, -36, -30, -40, -53, -22, -45,
					-- layer=1 filter=12 channel=30
					-10, 30, 21, -4, 24, 4, -7, 25, 32,
					-- layer=1 filter=12 channel=31
					-5, -15, 17, 11, -15, 16, -21, 8, 3,
					-- layer=1 filter=13 channel=0
					-7, 0, 33, -32, 20, 27, 5, -1, 44,
					-- layer=1 filter=13 channel=1
					0, 0, 10, 0, 0, 23, 29, 9, 1,
					-- layer=1 filter=13 channel=2
					-14, 6, 56, -4, 19, 32, -14, 28, 30,
					-- layer=1 filter=13 channel=3
					-11, -40, -18, -6, -25, 10, -8, 6, 35,
					-- layer=1 filter=13 channel=4
					-2, -22, -9, 28, -3, 24, 0, -3, -6,
					-- layer=1 filter=13 channel=5
					65, -11, -34, 35, -11, 30, 0, 42, 0,
					-- layer=1 filter=13 channel=6
					-58, -15, 44, -70, 24, 43, -21, 45, 25,
					-- layer=1 filter=13 channel=7
					-13, 17, 3, -9, 4, 1, -12, -1, -5,
					-- layer=1 filter=13 channel=8
					-19, 7, 34, -27, 19, 26, 13, 34, 30,
					-- layer=1 filter=13 channel=9
					-24, -18, -2, -16, -17, 42, -31, 23, 15,
					-- layer=1 filter=13 channel=10
					24, 23, 3, 23, 2, -22, 9, -20, -11,
					-- layer=1 filter=13 channel=11
					0, -3, -7, -5, 0, -8, -3, 19, 5,
					-- layer=1 filter=13 channel=12
					-5, 48, 52, 29, 74, 30, 29, 46, 18,
					-- layer=1 filter=13 channel=13
					-28, -10, 11, -43, -32, 36, -39, 23, 50,
					-- layer=1 filter=13 channel=14
					23, -84, -55, -26, -104, -22, -42, -19, 12,
					-- layer=1 filter=13 channel=15
					-36, 5, 6, -91, 1, 10, -39, 16, 12,
					-- layer=1 filter=13 channel=16
					-23, -27, 3, -42, -22, 7, -47, 8, 17,
					-- layer=1 filter=13 channel=17
					-15, -7, 7, -27, 2, 60, -7, 17, 48,
					-- layer=1 filter=13 channel=18
					-6, 7, 38, 31, 69, -16, 18, 3, 2,
					-- layer=1 filter=13 channel=19
					20, 41, -29, 8, 12, 33, -31, 19, 34,
					-- layer=1 filter=13 channel=20
					-42, 5, 24, -49, 28, 55, 0, 29, 32,
					-- layer=1 filter=13 channel=21
					74, 5, -24, 7, -86, -5, -33, 46, 21,
					-- layer=1 filter=13 channel=22
					-41, 45, 38, 11, 54, 35, 74, 20, 7,
					-- layer=1 filter=13 channel=23
					-76, 11, -10, 15, 24, -8, 54, -3, -37,
					-- layer=1 filter=13 channel=24
					-71, -36, 4, -82, -5, 39, -45, 15, 39,
					-- layer=1 filter=13 channel=25
					30, -33, -40, -9, -14, 33, -76, 4, -12,
					-- layer=1 filter=13 channel=26
					-30, -30, -12, -36, -9, -2, 5, -4, 23,
					-- layer=1 filter=13 channel=27
					4, -66, -56, -29, -197, 1, -46, -93, 28,
					-- layer=1 filter=13 channel=28
					-56, -12, 14, -76, -19, 31, -34, 39, 29,
					-- layer=1 filter=13 channel=29
					-36, -34, -1, -68, 18, 37, -38, 28, 66,
					-- layer=1 filter=13 channel=30
					-26, -13, 9, -7, 15, 48, -22, 18, 20,
					-- layer=1 filter=13 channel=31
					-12, -17, -48, 6, -22, -45, 9, -24, -30,
					-- layer=1 filter=14 channel=0
					5, 19, -3, 26, 1, -23, 35, 13, 0,
					-- layer=1 filter=14 channel=1
					-53, -42, -36, -22, -40, -39, -9, -10, -8,
					-- layer=1 filter=14 channel=2
					15, 29, -15, 17, -6, -1, 22, 1, 13,
					-- layer=1 filter=14 channel=3
					-9, 0, -7, -7, -20, -1, -10, -7, -31,
					-- layer=1 filter=14 channel=4
					4, -21, 18, 10, 17, -22, -21, -2, 9,
					-- layer=1 filter=14 channel=5
					-38, -17, -1, -7, -5, -11, -22, -58, -9,
					-- layer=1 filter=14 channel=6
					24, -1, -17, 8, 9, -9, 12, 7, 31,
					-- layer=1 filter=14 channel=7
					8, 19, -2, 6, 12, 21, -6, -21, 3,
					-- layer=1 filter=14 channel=8
					21, -16, 4, -21, 8, 5, 16, -6, -9,
					-- layer=1 filter=14 channel=9
					12, -10, 18, 9, -8, 12, 44, 18, 6,
					-- layer=1 filter=14 channel=10
					-22, -49, -32, -9, 12, -18, 6, -9, 12,
					-- layer=1 filter=14 channel=11
					-15, 12, -3, 8, 9, 19, 13, 15, -10,
					-- layer=1 filter=14 channel=12
					-55, -15, -8, -54, -42, -40, -16, -47, -58,
					-- layer=1 filter=14 channel=13
					28, 28, -3, 9, 17, -3, 30, 22, -32,
					-- layer=1 filter=14 channel=14
					28, -29, -19, 16, 16, 20, -14, -3, -9,
					-- layer=1 filter=14 channel=15
					21, -28, 3, 41, 6, -12, 48, 12, 26,
					-- layer=1 filter=14 channel=16
					-1, 0, 6, 22, 1, 37, 9, -3, 34,
					-- layer=1 filter=14 channel=17
					-1, 10, -7, -35, -34, -32, 9, -30, -23,
					-- layer=1 filter=14 channel=18
					-55, -71, -59, -68, -65, -40, -4, -70, -129,
					-- layer=1 filter=14 channel=19
					-43, -40, -53, -48, 11, -25, 11, -19, -23,
					-- layer=1 filter=14 channel=20
					12, -2, 22, 9, 11, -19, 3, 2, -23,
					-- layer=1 filter=14 channel=21
					24, -20, -33, 63, -11, -39, 10, -7, 1,
					-- layer=1 filter=14 channel=22
					-16, -44, -62, 65, 43, 33, 6, 64, 34,
					-- layer=1 filter=14 channel=23
					6, -68, -77, 79, 52, 17, 16, 83, 74,
					-- layer=1 filter=14 channel=24
					5, 6, -10, 55, 5, -18, 32, 42, 28,
					-- layer=1 filter=14 channel=25
					-21, 0, 1, 3, 18, 5, -10, -14, -24,
					-- layer=1 filter=14 channel=26
					1, 4, 5, 39, -11, -18, 34, 32, -5,
					-- layer=1 filter=14 channel=27
					24, 10, -43, -17, -18, -99, 11, -12, -75,
					-- layer=1 filter=14 channel=28
					18, 17, 1, 34, 24, -18, 42, 15, -5,
					-- layer=1 filter=14 channel=29
					19, 26, 1, -10, -20, -9, -2, -1, -27,
					-- layer=1 filter=14 channel=30
					22, 0, 2, 29, 8, -10, 46, 22, -20,
					-- layer=1 filter=14 channel=31
					-70, -72, -65, -2, -29, -12, -64, -12, -9,
					-- layer=1 filter=15 channel=0
					25, -2, 19, 13, 18, -3, -30, -3, -4,
					-- layer=1 filter=15 channel=1
					7, -5, 13, -7, 24, -12, 5, -22, -2,
					-- layer=1 filter=15 channel=2
					-5, 2, -3, -7, 4, 7, -21, -19, -1,
					-- layer=1 filter=15 channel=3
					-7, 6, 1, 1, 16, 6, -17, -14, -17,
					-- layer=1 filter=15 channel=4
					3, 7, 5, 11, 18, -24, 2, 9, 10,
					-- layer=1 filter=15 channel=5
					84, 65, 48, 42, 30, 43, 42, 73, 28,
					-- layer=1 filter=15 channel=6
					10, -6, -17, -4, 9, -4, -1, -4, -22,
					-- layer=1 filter=15 channel=7
					13, 11, 12, -11, -4, -14, -19, 1, 17,
					-- layer=1 filter=15 channel=8
					29, -16, 0, 0, -21, -40, -27, -20, -18,
					-- layer=1 filter=15 channel=9
					25, 19, 12, 4, -19, -8, 2, 11, 29,
					-- layer=1 filter=15 channel=10
					-6, 27, -17, -7, 9, 10, -47, -28, 9,
					-- layer=1 filter=15 channel=11
					7, 1, -5, -8, -12, 7, 19, -7, -13,
					-- layer=1 filter=15 channel=12
					-4, -31, 15, 2, -1, 12, -6, 7, -8,
					-- layer=1 filter=15 channel=13
					-8, 5, 5, 3, -2, -17, 28, 29, 16,
					-- layer=1 filter=15 channel=14
					0, 9, -4, 14, -44, -3, -24, -13, 2,
					-- layer=1 filter=15 channel=15
					22, 10, -20, -9, 17, 4, 34, -16, 15,
					-- layer=1 filter=15 channel=16
					-20, -5, 3, -17, -31, -23, -13, -36, -11,
					-- layer=1 filter=15 channel=17
					27, -13, 29, -29, 5, -10, 11, 0, -22,
					-- layer=1 filter=15 channel=18
					40, 0, 41, 33, 51, -1, -19, 65, 53,
					-- layer=1 filter=15 channel=19
					61, 28, 10, 44, 36, 6, 31, 65, 53,
					-- layer=1 filter=15 channel=20
					26, 1, -8, -2, 13, 9, 1, -20, -3,
					-- layer=1 filter=15 channel=21
					-40, -31, -25, 10, -71, 10, -8, -54, -36,
					-- layer=1 filter=15 channel=22
					-28, -15, -38, 49, 10, -5, 9, 5, -6,
					-- layer=1 filter=15 channel=23
					51, 61, -9, 87, 55, 49, 0, 5, -5,
					-- layer=1 filter=15 channel=24
					15, -4, 9, -7, -23, 1, 2, -12, -16,
					-- layer=1 filter=15 channel=25
					86, 29, 28, 50, 54, 36, 76, 67, 30,
					-- layer=1 filter=15 channel=26
					-29, -6, -18, -4, 5, 9, -3, -9, -23,
					-- layer=1 filter=15 channel=27
					-32, -1, -24, -67, -67, 6, -50, -15, -8,
					-- layer=1 filter=15 channel=28
					4, 23, 19, -16, 11, -20, -14, 0, 11,
					-- layer=1 filter=15 channel=29
					18, 21, 4, -11, 28, -4, 32, 24, -9,
					-- layer=1 filter=15 channel=30
					15, -26, -7, -14, 0, -1, -27, -14, 15,
					-- layer=1 filter=15 channel=31
					31, 37, 36, 63, 73, 71, 5, 8, 40,
					-- layer=1 filter=16 channel=0
					12, 20, -23, 22, 22, 2, 12, -13, -12,
					-- layer=1 filter=16 channel=1
					-5, 26, 9, 8, 2, 9, -2, -9, 11,
					-- layer=1 filter=16 channel=2
					0, -9, 2, 16, 14, -8, 6, -22, -5,
					-- layer=1 filter=16 channel=3
					8, -7, 10, -25, -4, 0, 0, -1, -3,
					-- layer=1 filter=16 channel=4
					-1, 0, 8, 1, 21, -6, -7, -19, 10,
					-- layer=1 filter=16 channel=5
					-39, -92, -83, -115, -96, -119, -89, -108, -65,
					-- layer=1 filter=16 channel=6
					-5, 5, 16, -14, 8, -9, 23, 10, 26,
					-- layer=1 filter=16 channel=7
					-16, 10, -10, 6, 7, -4, -3, 19, 20,
					-- layer=1 filter=16 channel=8
					-13, 0, 3, 20, -1, 0, 30, 5, -5,
					-- layer=1 filter=16 channel=9
					15, -15, 0, -12, 3, 4, -28, -15, 6,
					-- layer=1 filter=16 channel=10
					17, 27, 31, -13, 15, 33, 19, 15, 16,
					-- layer=1 filter=16 channel=11
					-19, 20, -2, 11, 14, 2, 0, 10, -14,
					-- layer=1 filter=16 channel=12
					11, 9, -14, 43, 0, -22, 26, -13, -14,
					-- layer=1 filter=16 channel=13
					11, -19, 3, -24, 20, -16, 12, 6, 21,
					-- layer=1 filter=16 channel=14
					13, -34, 31, -26, -8, 16, -5, -23, 7,
					-- layer=1 filter=16 channel=15
					11, 7, 6, 14, 7, 15, -2, 4, 2,
					-- layer=1 filter=16 channel=16
					12, 4, 5, -5, 2, 31, -2, -5, 19,
					-- layer=1 filter=16 channel=17
					5, 14, -8, 2, 15, 6, 19, 15, -3,
					-- layer=1 filter=16 channel=18
					-29, -53, -83, 4, -57, -69, -34, -18, -95,
					-- layer=1 filter=16 channel=19
					-56, -99, -99, -58, -71, -94, -67, -64, -87,
					-- layer=1 filter=16 channel=20
					-40, 0, -16, -17, -10, 0, -14, -1, -1,
					-- layer=1 filter=16 channel=21
					-71, -102, -24, -112, -162, -71, -81, -142, -78,
					-- layer=1 filter=16 channel=22
					-17, 19, -2, -41, -52, -15, 20, -12, -16,
					-- layer=1 filter=16 channel=23
					-16, 36, 19, -51, -21, -28, -4, -45, -41,
					-- layer=1 filter=16 channel=24
					-5, 18, 12, 21, -4, 20, 8, 5, 3,
					-- layer=1 filter=16 channel=25
					-30, -107, -66, -92, -110, -110, -71, -75, -70,
					-- layer=1 filter=16 channel=26
					-4, 20, 20, 2, -13, 22, -11, 10, -7,
					-- layer=1 filter=16 channel=27
					-15, -135, -113, -120, -171, -112, -97, -151, -93,
					-- layer=1 filter=16 channel=28
					10, -15, -5, -20, 19, 21, -2, 17, 10,
					-- layer=1 filter=16 channel=29
					20, -2, 4, -10, 6, 18, 14, -1, 25,
					-- layer=1 filter=16 channel=30
					-14, -23, -20, -8, -32, -7, -6, -6, -36,
					-- layer=1 filter=16 channel=31
					6, -1, 23, -49, -40, -39, -12, 5, -28,
					-- layer=1 filter=17 channel=0
					-8, 18, 29, -17, 23, -6, 7, -9, -15,
					-- layer=1 filter=17 channel=1
					-4, 4, 16, -26, -21, -5, 11, -2, 7,
					-- layer=1 filter=17 channel=2
					24, 18, -6, 17, 8, -5, 12, 7, -5,
					-- layer=1 filter=17 channel=3
					14, 26, 14, -1, -11, 4, 4, 19, -8,
					-- layer=1 filter=17 channel=4
					-7, 15, 0, 12, -3, 1, -20, 0, -17,
					-- layer=1 filter=17 channel=5
					-22, -33, -15, -3, -49, -29, -50, -35, -53,
					-- layer=1 filter=17 channel=6
					15, 1, -17, 0, 10, 18, 16, -16, 20,
					-- layer=1 filter=17 channel=7
					20, 1, -2, 12, -6, 9, 16, -7, -7,
					-- layer=1 filter=17 channel=8
					25, -5, -3, 20, 1, 5, 7, 14, 5,
					-- layer=1 filter=17 channel=9
					0, 9, -28, -13, -2, -24, 7, 3, -26,
					-- layer=1 filter=17 channel=10
					-29, -29, -19, -42, -17, -31, -12, -17, 26,
					-- layer=1 filter=17 channel=11
					0, 10, -4, -17, -15, -16, -21, 4, 19,
					-- layer=1 filter=17 channel=12
					21, -38, -3, 1, 3, 1, -5, 30, 0,
					-- layer=1 filter=17 channel=13
					6, 25, -12, 9, -5, 8, -20, 12, -7,
					-- layer=1 filter=17 channel=14
					-16, 24, 4, -1, -1, -5, 46, 10, 19,
					-- layer=1 filter=17 channel=15
					-19, 0, -1, 10, 2, -23, 15, -8, -19,
					-- layer=1 filter=17 channel=16
					-25, -21, -27, 6, -9, 1, 15, 18, 10,
					-- layer=1 filter=17 channel=17
					36, 9, -4, -18, -21, -18, -38, 18, -4,
					-- layer=1 filter=17 channel=18
					26, 34, 46, 41, -5, 28, -56, 30, -46,
					-- layer=1 filter=17 channel=19
					-18, -14, 19, -11, -32, -43, -75, -4, -55,
					-- layer=1 filter=17 channel=20
					14, 14, -5, -20, -20, 18, -23, 12, -7,
					-- layer=1 filter=17 channel=21
					-33, -33, -66, -35, -38, -62, -2, -35, -20,
					-- layer=1 filter=17 channel=22
					-81, -72, -52, -35, -37, -50, 42, 13, 8,
					-- layer=1 filter=17 channel=23
					-60, -47, -5, -43, -27, 12, 40, 29, 47,
					-- layer=1 filter=17 channel=24
					0, 23, 4, -4, 22, -7, 11, 20, 30,
					-- layer=1 filter=17 channel=25
					-39, -29, -16, -45, -15, -22, -32, -17, -62,
					-- layer=1 filter=17 channel=26
					-3, 1, -17, 11, 0, 21, 21, 13, 24,
					-- layer=1 filter=17 channel=27
					-48, -11, -38, 5, -28, -84, 3, -69, -64,
					-- layer=1 filter=17 channel=28
					17, 30, 16, -10, -8, -17, 4, 4, 15,
					-- layer=1 filter=17 channel=29
					10, 1, -4, -30, 0, 0, -4, -11, 0,
					-- layer=1 filter=17 channel=30
					8, 39, -6, 21, -26, 4, -23, 23, -12,
					-- layer=1 filter=17 channel=31
					-61, -31, -15, -50, -30, -9, 8, -1, -9,
					-- layer=1 filter=18 channel=0
					10, 0, 9, -5, -6, 13, -60, 3, 10,
					-- layer=1 filter=18 channel=1
					23, 11, 19, 6, 28, 45, 7, 21, 18,
					-- layer=1 filter=18 channel=2
					6, 6, 8, -34, -38, 53, -82, -11, 32,
					-- layer=1 filter=18 channel=3
					14, -9, 21, 36, 4, -22, 12, 13, -12,
					-- layer=1 filter=18 channel=4
					20, -17, 19, 12, 3, -6, -18, 15, -12,
					-- layer=1 filter=18 channel=5
					86, 64, 7, 34, 62, 28, -81, -5, 0,
					-- layer=1 filter=18 channel=6
					-33, 0, -15, -77, -81, 7, -73, -56, 25,
					-- layer=1 filter=18 channel=7
					-8, -1, 16, 18, 10, -14, 8, -3, 1,
					-- layer=1 filter=18 channel=8
					15, 12, 21, -20, 10, 50, -72, -37, 38,
					-- layer=1 filter=18 channel=9
					13, 9, 19, -44, -59, -42, -34, -19, -6,
					-- layer=1 filter=18 channel=10
					0, -57, -7, 19, 17, 22, 55, 48, 24,
					-- layer=1 filter=18 channel=11
					10, 8, -8, -7, 15, -5, 10, -14, 7,
					-- layer=1 filter=18 channel=12
					-14, -5, 17, 0, 26, 22, 5, 44, 57,
					-- layer=1 filter=18 channel=13
					10, -17, -5, -16, -21, -13, -11, -34, -10,
					-- layer=1 filter=18 channel=14
					12, -13, -55, -18, -59, -64, 5, -70, -9,
					-- layer=1 filter=18 channel=15
					-29, 0, 21, -132, -75, -10, -95, -113, -46,
					-- layer=1 filter=18 channel=16
					0, 3, -12, 1, -11, -32, -9, -12, 34,
					-- layer=1 filter=18 channel=17
					33, 17, 7, 27, 0, 20, -57, -15, 11,
					-- layer=1 filter=18 channel=18
					94, 71, 59, 36, 38, 103, -57, -11, 63,
					-- layer=1 filter=18 channel=19
					88, 68, 22, 73, 65, 42, -12, -31, 20,
					-- layer=1 filter=18 channel=20
					4, 1, 2, -31, -52, 22, -106, -14, 18,
					-- layer=1 filter=18 channel=21
					17, -66, -60, -54, -178, -123, -41, -142, -50,
					-- layer=1 filter=18 channel=22
					-39, -56, -11, 13, 24, 48, 36, -6, 46,
					-- layer=1 filter=18 channel=23
					-12, -92, -8, -23, -57, 6, 0, -12, 22,
					-- layer=1 filter=18 channel=24
					10, 6, 16, -95, -97, -22, -90, -80, -23,
					-- layer=1 filter=18 channel=25
					68, 65, 19, 57, 36, 11, -74, -10, -11,
					-- layer=1 filter=18 channel=26
					7, -39, -1, -8, -33, -26, -12, -20, -9,
					-- layer=1 filter=18 channel=27
					12, -7, -35, -34, -118, -149, -89, -171, -150,
					-- layer=1 filter=18 channel=28
					-18, 13, 17, -69, -64, -30, -67, -84, -3,
					-- layer=1 filter=18 channel=29
					15, -6, 2, -23, -28, 23, 4, -25, 42,
					-- layer=1 filter=18 channel=30
					0, 34, 3, 12, 26, 30, -55, -15, 42,
					-- layer=1 filter=18 channel=31
					2, -1, -15, -12, 24, -26, 54, 15, -2,
					-- layer=1 filter=19 channel=0
					-3, 4, 0, 2, 4, -21, 25, -10, -1,
					-- layer=1 filter=19 channel=1
					48, 33, 28, 50, 21, 6, 9, 24, 15,
					-- layer=1 filter=19 channel=2
					-2, -36, 4, -23, -38, -10, -12, -27, 5,
					-- layer=1 filter=19 channel=3
					14, 51, 16, 53, 15, 26, 42, 13, -25,
					-- layer=1 filter=19 channel=4
					-9, 0, 13, -6, 6, 9, 9, -21, 9,
					-- layer=1 filter=19 channel=5
					13, 31, 46, 101, 54, 45, 41, 63, 60,
					-- layer=1 filter=19 channel=6
					21, -22, -12, 4, -17, 4, 12, -1, 17,
					-- layer=1 filter=19 channel=7
					-7, -13, 8, -15, -17, 15, 1, 20, -20,
					-- layer=1 filter=19 channel=8
					-33, -13, -25, -32, -66, -17, -30, -12, -10,
					-- layer=1 filter=19 channel=9
					16, 18, 0, 31, 19, 6, 10, 3, -33,
					-- layer=1 filter=19 channel=10
					7, 13, 18, 10, -1, 32, 20, 2, 20,
					-- layer=1 filter=19 channel=11
					16, 6, -18, -9, 18, 17, -12, -4, 7,
					-- layer=1 filter=19 channel=12
					-6, -11, -6, 18, 12, 1, 4, 7, 13,
					-- layer=1 filter=19 channel=13
					-1, 0, -5, -5, -14, -26, 9, 16, 22,
					-- layer=1 filter=19 channel=14
					2, 29, 2, 38, 23, 16, 25, -7, 9,
					-- layer=1 filter=19 channel=15
					-27, -40, -68, -43, -16, -57, -10, 22, -29,
					-- layer=1 filter=19 channel=16
					0, -10, 20, -10, -2, -14, 17, 0, 6,
					-- layer=1 filter=19 channel=17
					-25, -31, -35, -13, -59, -63, -66, -41, -14,
					-- layer=1 filter=19 channel=18
					-89, -73, -65, -62, -107, -33, -39, -22, -24,
					-- layer=1 filter=19 channel=19
					0, -46, -21, 8, 0, -16, -9, 20, 18,
					-- layer=1 filter=19 channel=20
					-7, 24, -24, 8, 35, 30, 14, 35, 15,
					-- layer=1 filter=19 channel=21
					-44, -5, -20, -31, 0, 1, 11, 9, 11,
					-- layer=1 filter=19 channel=22
					-71, -48, -90, -3, -67, -16, 15, 5, 37,
					-- layer=1 filter=19 channel=23
					-1, -25, -56, 32, -32, 36, 27, 42, 43,
					-- layer=1 filter=19 channel=24
					10, -31, -29, -26, -34, -12, 14, 9, -19,
					-- layer=1 filter=19 channel=25
					4, 42, 26, 82, 44, 44, 33, 83, 39,
					-- layer=1 filter=19 channel=26
					4, 25, 15, 15, 3, -24, 34, -10, -19,
					-- layer=1 filter=19 channel=27
					-41, -35, -21, -35, -51, -19, -29, -31, 41,
					-- layer=1 filter=19 channel=28
					23, -4, -20, 5, 9, -9, 4, -6, -20,
					-- layer=1 filter=19 channel=29
					-11, -33, -43, 8, -49, -15, 7, -3, -31,
					-- layer=1 filter=19 channel=30
					-4, 8, -12, 39, 14, -36, 15, 5, 2,
					-- layer=1 filter=19 channel=31
					57, 29, 26, 98, 94, 74, 73, 62, 36,
					-- layer=1 filter=20 channel=0
					11, 24, -11, 6, 11, 1, 23, 27, 10,
					-- layer=1 filter=20 channel=1
					20, -6, -1, 22, 10, 33, 32, 37, 6,
					-- layer=1 filter=20 channel=2
					13, 3, -25, 17, 6, -18, 34, 24, -4,
					-- layer=1 filter=20 channel=3
					7, -22, -15, 15, 14, -8, 49, 36, 37,
					-- layer=1 filter=20 channel=4
					-10, -20, 7, -16, -11, -10, 15, -16, 8,
					-- layer=1 filter=20 channel=5
					-14, -46, 2, -15, 12, 0, -56, -8, -16,
					-- layer=1 filter=20 channel=6
					6, 7, -5, 17, -11, 22, -29, -1, -19,
					-- layer=1 filter=20 channel=7
					-5, 19, 15, -14, 8, -17, -4, -8, -5,
					-- layer=1 filter=20 channel=8
					-10, 1, 6, 6, -23, -35, 2, 2, -13,
					-- layer=1 filter=20 channel=9
					-19, -40, -31, 1, -12, -7, 44, 41, 7,
					-- layer=1 filter=20 channel=10
					-6, -48, -43, 2, -5, -4, 57, 22, 2,
					-- layer=1 filter=20 channel=11
					-2, -4, -1, 5, 13, 20, 4, -1, -6,
					-- layer=1 filter=20 channel=12
					13, 27, -8, 14, 17, -6, 7, 50, 14,
					-- layer=1 filter=20 channel=13
					-11, 15, 46, -31, -26, 1, -38, -39, -38,
					-- layer=1 filter=20 channel=14
					-39, -35, -19, 32, -16, -13, 68, 37, -5,
					-- layer=1 filter=20 channel=15
					5, 17, 21, -26, -20, -2, -20, -19, -11,
					-- layer=1 filter=20 channel=16
					-20, -19, 3, 2, -3, -15, 33, 23, 17,
					-- layer=1 filter=20 channel=17
					3, 20, -11, -41, -15, -26, -22, -26, -42,
					-- layer=1 filter=20 channel=18
					-13, 22, -23, -7, 9, -42, 10, 26, -3,
					-- layer=1 filter=20 channel=19
					-4, -27, -27, -10, -12, -9, 12, -16, -8,
					-- layer=1 filter=20 channel=20
					-4, 34, 22, -6, 15, -2, -36, 4, -6,
					-- layer=1 filter=20 channel=21
					-45, -50, -46, 27, -53, -31, 44, -19, -39,
					-- layer=1 filter=20 channel=22
					-44, -24, -73, -39, 6, -15, -14, -48, 12,
					-- layer=1 filter=20 channel=23
					-25, -58, -35, 42, -17, 7, 9, -42, -15,
					-- layer=1 filter=20 channel=24
					17, 11, -3, 3, -20, -5, -10, -19, -24,
					-- layer=1 filter=20 channel=25
					-21, -56, 3, -16, -19, -7, -11, -13, 11,
					-- layer=1 filter=20 channel=26
					14, -10, -13, 48, 2, 20, 13, 4, 4,
					-- layer=1 filter=20 channel=27
					-20, -136, -64, 2, -91, -81, 15, -92, -57,
					-- layer=1 filter=20 channel=28
					2, 29, 0, 26, -19, 3, -2, -7, -16,
					-- layer=1 filter=20 channel=29
					-5, 43, 41, -22, 7, -9, -32, -20, -6,
					-- layer=1 filter=20 channel=30
					-21, 25, 0, -14, 36, -17, 14, 23, 34,
					-- layer=1 filter=20 channel=31
					13, -42, -24, 9, 39, -2, 9, 20, 44,
					-- layer=1 filter=21 channel=0
					8, -2, 14, -1, 13, 3, -2, 0, 15,
					-- layer=1 filter=21 channel=1
					-49, -60, -53, 5, -16, -11, 19, 9, 28,
					-- layer=1 filter=21 channel=2
					-27, -26, 4, -3, 3, 0, 1, 19, -6,
					-- layer=1 filter=21 channel=3
					-37, -26, -24, -28, -37, -1, 30, 20, 41,
					-- layer=1 filter=21 channel=4
					0, -3, 11, 5, -14, -14, -5, 0, -8,
					-- layer=1 filter=21 channel=5
					3, -12, -9, -37, -3, -32, -19, 2, -24,
					-- layer=1 filter=21 channel=6
					-3, 20, 14, -5, -20, -2, -21, -27, -8,
					-- layer=1 filter=21 channel=7
					1, -17, -11, 10, 10, -17, -18, -19, -4,
					-- layer=1 filter=21 channel=8
					14, 40, 8, -6, 21, -14, -16, 0, 0,
					-- layer=1 filter=21 channel=9
					-34, -57, -49, -1, -9, -5, 73, 46, 34,
					-- layer=1 filter=21 channel=10
					-31, -70, -51, 31, -15, -13, 39, 71, 41,
					-- layer=1 filter=21 channel=11
					4, 18, -8, -9, -20, -18, -20, -10, 0,
					-- layer=1 filter=21 channel=12
					-14, 8, -27, 1, 21, 24, 8, -6, -4,
					-- layer=1 filter=21 channel=13
					29, 14, 23, -15, -17, 20, -25, -38, -39,
					-- layer=1 filter=21 channel=14
					-48, -59, -17, -17, 8, 4, 59, 31, 43,
					-- layer=1 filter=21 channel=15
					-16, 2, 7, -22, -6, 22, -12, -10, 5,
					-- layer=1 filter=21 channel=16
					-17, -37, -67, 10, -26, -11, 76, 49, 44,
					-- layer=1 filter=21 channel=17
					52, 34, 60, -19, 31, 21, -8, -28, 0,
					-- layer=1 filter=21 channel=18
					0, 68, 38, -28, 8, 44, -4, 24, 9,
					-- layer=1 filter=21 channel=19
					9, 14, 23, -49, 0, -8, 20, 48, -4,
					-- layer=1 filter=21 channel=20
					28, 31, 19, -14, 8, -10, -38, -16, -2,
					-- layer=1 filter=21 channel=21
					-24, -55, -26, 0, -7, -20, 33, 32, 7,
					-- layer=1 filter=21 channel=22
					6, -7, 15, -12, -7, -37, -30, 4, -1,
					-- layer=1 filter=21 channel=23
					-56, -89, -29, -54, -37, -54, -26, 11, -7,
					-- layer=1 filter=21 channel=24
					9, 13, 28, 16, 15, 1, -3, -36, -22,
					-- layer=1 filter=21 channel=25
					-2, -1, 8, -66, 9, -18, -10, -23, -39,
					-- layer=1 filter=21 channel=26
					-3, -24, -28, 24, -19, -22, 26, -9, 17,
					-- layer=1 filter=21 channel=27
					-28, -81, 3, -4, -6, -9, 23, 6, 27,
					-- layer=1 filter=21 channel=28
					13, 11, 32, 14, -2, 20, 0, -27, -25,
					-- layer=1 filter=21 channel=29
					55, 78, 70, 29, 40, 50, -11, 10, -17,
					-- layer=1 filter=21 channel=30
					1, 4, 11, -11, 8, -14, -21, 15, 8,
					-- layer=1 filter=21 channel=31
					-50, -72, -56, -15, -82, -38, -20, -1, -28,
					-- layer=1 filter=22 channel=0
					5, 16, -9, -3, -4, -17, -12, -12, 2,
					-- layer=1 filter=22 channel=1
					-29, -23, -46, -31, -39, -49, -38, -20, -27,
					-- layer=1 filter=22 channel=2
					10, 17, 19, 24, 36, 3, -12, 18, 14,
					-- layer=1 filter=22 channel=3
					-19, -19, -10, -17, 8, -13, -16, -21, -21,
					-- layer=1 filter=22 channel=4
					-10, 16, -13, 19, 2, -4, -2, -19, -19,
					-- layer=1 filter=22 channel=5
					6, -7, 26, -37, -36, -37, 5, -14, -74,
					-- layer=1 filter=22 channel=6
					13, 7, 19, 9, 18, -20, 18, 4, 0,
					-- layer=1 filter=22 channel=7
					0, -11, 3, 20, 15, 3, 15, -2, 0,
					-- layer=1 filter=22 channel=8
					24, 31, 9, 26, 33, 12, 7, 23, 29,
					-- layer=1 filter=22 channel=9
					19, -1, 10, -9, 26, 1, -16, -12, -27,
					-- layer=1 filter=22 channel=10
					4, 6, 4, -1, 22, -10, -4, 15, 24,
					-- layer=1 filter=22 channel=11
					-16, 5, 20, 20, -6, 6, -3, -2, 0,
					-- layer=1 filter=22 channel=12
					-3, -15, -31, -24, -28, -32, -42, -49, -20,
					-- layer=1 filter=22 channel=13
					13, -13, 24, 5, 6, -16, -5, -5, 3,
					-- layer=1 filter=22 channel=14
					14, 35, 28, -1, 0, 27, 31, 12, -1,
					-- layer=1 filter=22 channel=15
					-12, -39, -17, -22, -14, -17, -3, -25, -2,
					-- layer=1 filter=22 channel=16
					37, 49, 31, 46, 49, 49, 4, 23, -3,
					-- layer=1 filter=22 channel=17
					14, 31, 31, 33, 32, 31, 45, 45, 36,
					-- layer=1 filter=22 channel=18
					-45, -21, -56, -46, -70, -62, -48, -38, -60,
					-- layer=1 filter=22 channel=19
					15, 25, 15, -18, -7, -25, 9, -8, 3,
					-- layer=1 filter=22 channel=20
					16, -7, 1, -19, -8, -15, 1, 1, -1,
					-- layer=1 filter=22 channel=21
					0, 17, -9, 7, -6, 37, 61, 17, 1,
					-- layer=1 filter=22 channel=22
					-39, -15, -17, 31, -9, -22, -46, -56, -17,
					-- layer=1 filter=22 channel=23
					3, 52, 28, 68, 28, 23, 14, 3, 16,
					-- layer=1 filter=22 channel=24
					21, 20, 25, 23, 17, 22, 28, -11, -6,
					-- layer=1 filter=22 channel=25
					6, 16, 17, -37, -28, -42, -16, -1, -64,
					-- layer=1 filter=22 channel=26
					0, 14, -17, 11, -17, -6, 17, 0, 2,
					-- layer=1 filter=22 channel=27
					26, -8, -20, 42, 31, 4, 108, 83, -2,
					-- layer=1 filter=22 channel=28
					20, -14, 4, 16, -6, -21, 7, -5, -1,
					-- layer=1 filter=22 channel=29
					-3, -24, -9, -21, -15, -20, -18, -23, -1,
					-- layer=1 filter=22 channel=30
					18, -8, 0, -11, -10, 10, -11, -20, -38,
					-- layer=1 filter=22 channel=31
					-63, -42, -72, -75, -99, -79, -30, -60, -39,
					-- layer=1 filter=23 channel=0
					-29, 11, -11, 11, -3, -10, -1, 10, 20,
					-- layer=1 filter=23 channel=1
					-8, -29, -4, -22, 11, 3, -7, 12, 26,
					-- layer=1 filter=23 channel=2
					-43, -29, -33, -30, -30, 6, -21, -12, 19,
					-- layer=1 filter=23 channel=3
					-13, 0, 8, -41, -34, -11, -38, -5, -10,
					-- layer=1 filter=23 channel=4
					6, 3, 15, 7, -12, 7, 15, -15, -6,
					-- layer=1 filter=23 channel=5
					-21, 0, 13, 3, -9, 23, -43, -51, -10,
					-- layer=1 filter=23 channel=6
					15, 5, 13, 19, -11, 26, 33, 34, 20,
					-- layer=1 filter=23 channel=7
					-12, -16, 8, -2, -12, 11, 20, 13, 12,
					-- layer=1 filter=23 channel=8
					-8, 16, 5, 4, -16, 6, -2, -18, 8,
					-- layer=1 filter=23 channel=9
					-35, -26, -15, -35, 9, 21, -21, 10, 4,
					-- layer=1 filter=23 channel=10
					-9, -17, 2, -57, -39, -20, -14, -18, -8,
					-- layer=1 filter=23 channel=11
					-14, -17, -14, 16, 14, 20, -1, 7, 20,
					-- layer=1 filter=23 channel=12
					-30, 23, -32, 4, -15, 9, -5, -5, -9,
					-- layer=1 filter=23 channel=13
					0, 14, 8, 11, 4, 0, 13, 12, 11,
					-- layer=1 filter=23 channel=14
					-8, -9, 18, -49, -10, -22, -45, 40, -38,
					-- layer=1 filter=23 channel=15
					12, 1, -4, 7, 30, 19, 38, -9, 27,
					-- layer=1 filter=23 channel=16
					-54, -57, -51, -59, -51, -43, -37, -13, -13,
					-- layer=1 filter=23 channel=17
					-4, 20, -9, 4, -10, 17, -5, 11, -9,
					-- layer=1 filter=23 channel=18
					15, 32, 50, 8, 44, 60, -2, -2, 47,
					-- layer=1 filter=23 channel=19
					-32, -27, 21, -28, 10, -2, -32, -40, 0,
					-- layer=1 filter=23 channel=20
					-2, 1, -24, 18, 17, 20, 23, -11, 1,
					-- layer=1 filter=23 channel=21
					-14, -49, -26, -5, -56, -20, -29, -16, -56,
					-- layer=1 filter=23 channel=22
					16, 32, 34, 47, 45, 29, 58, 71, 16,
					-- layer=1 filter=23 channel=23
					7, -11, 13, 42, 12, -10, 0, 24, -12,
					-- layer=1 filter=23 channel=24
					9, -7, 9, 5, 27, 4, 28, 39, 16,
					-- layer=1 filter=23 channel=25
					5, -2, 5, 4, -16, -9, -25, -35, 8,
					-- layer=1 filter=23 channel=26
					-33, -18, 3, -22, -13, -9, 6, 16, 7,
					-- layer=1 filter=23 channel=27
					-30, 0, 38, -24, -53, -26, 16, -19, 29,
					-- layer=1 filter=23 channel=28
					-19, -1, 15, 30, 18, 8, 15, -3, 0,
					-- layer=1 filter=23 channel=29
					6, 11, 21, 49, 7, 0, 45, 24, 26,
					-- layer=1 filter=23 channel=30
					-25, 9, 12, -2, 3, -8, -25, 0, 15,
					-- layer=1 filter=23 channel=31
					24, 16, 42, -15, -2, -10, 41, 33, 4,
					-- layer=1 filter=24 channel=0
					7, 22, 22, 15, -2, 12, 14, 14, -25,
					-- layer=1 filter=24 channel=1
					-2, -16, 17, -3, 13, 8, 10, 11, 32,
					-- layer=1 filter=24 channel=2
					-28, -5, 24, -10, -5, 6, -41, -11, -36,
					-- layer=1 filter=24 channel=3
					0, 21, -12, 9, 6, 15, 3, 11, 7,
					-- layer=1 filter=24 channel=4
					-7, 17, 5, -1, 12, -5, -7, -7, 6,
					-- layer=1 filter=24 channel=5
					17, -58, -42, -27, -43, -4, -40, -21, 20,
					-- layer=1 filter=24 channel=6
					-16, -5, 14, -23, 9, -11, -4, 19, -23,
					-- layer=1 filter=24 channel=7
					16, 0, -9, 14, 2, -13, -16, -16, -6,
					-- layer=1 filter=24 channel=8
					-2, -2, -11, 3, -6, -24, -19, -19, -32,
					-- layer=1 filter=24 channel=9
					9, 18, 6, 2, 0, 10, -14, -2, -32,
					-- layer=1 filter=24 channel=10
					0, -5, -14, 9, -13, -16, 6, -7, 21,
					-- layer=1 filter=24 channel=11
					-19, -7, 9, -8, -4, 3, -5, 0, -17,
					-- layer=1 filter=24 channel=12
					-6, 0, 5, 8, 0, 0, 8, 2, 8,
					-- layer=1 filter=24 channel=13
					3, -10, 12, -10, -8, 18, 5, 16, 27,
					-- layer=1 filter=24 channel=14
					2, -33, -14, -10, 1, -7, 20, 3, 24,
					-- layer=1 filter=24 channel=15
					-31, 14, -13, -13, 3, 1, -45, 12, -24,
					-- layer=1 filter=24 channel=16
					8, 25, 30, -7, -5, 21, -18, -9, 23,
					-- layer=1 filter=24 channel=17
					-8, -1, -12, -16, -33, -7, -9, -16, -1,
					-- layer=1 filter=24 channel=18
					-14, 35, -26, 10, -11, 12, 6, 12, -24,
					-- layer=1 filter=24 channel=19
					0, 19, -12, 7, -28, 0, -39, -34, -10,
					-- layer=1 filter=24 channel=20
					-40, -26, 11, -10, 11, 7, -23, -41, -5,
					-- layer=1 filter=24 channel=21
					-15, -54, -72, -48, 4, -43, -45, -25, 6,
					-- layer=1 filter=24 channel=22
					-81, -86, -80, -49, -70, -54, -24, -92, 5,
					-- layer=1 filter=24 channel=23
					-50, -57, -29, -35, -49, -68, -2, -28, 10,
					-- layer=1 filter=24 channel=24
					9, 26, 35, 11, 17, 3, 2, 17, 4,
					-- layer=1 filter=24 channel=25
					8, -43, -24, -3, -46, -2, -57, -49, 28,
					-- layer=1 filter=24 channel=26
					14, -11, 11, -8, -18, -26, -8, 4, 5,
					-- layer=1 filter=24 channel=27
					0, -41, -43, -8, -31, -2, -5, -9, 30,
					-- layer=1 filter=24 channel=28
					10, 16, 3, -18, 9, 22, 10, 6, 17,
					-- layer=1 filter=24 channel=29
					-17, -17, 17, -31, -34, -10, -31, -32, 2,
					-- layer=1 filter=24 channel=30
					5, 21, 10, -18, -34, 4, -15, 0, -5,
					-- layer=1 filter=24 channel=31
					-74, -82, -57, -79, -78, -49, -50, -39, -25,
					-- layer=1 filter=25 channel=0
					-40, -29, -55, -22, -17, -10, -55, -31, -15,
					-- layer=1 filter=25 channel=1
					20, 38, 27, 44, 36, 66, -41, -33, -10,
					-- layer=1 filter=25 channel=2
					-50, -16, -38, -44, 0, -61, -35, -45, -30,
					-- layer=1 filter=25 channel=3
					11, 30, 29, 7, -8, -3, 15, -4, -11,
					-- layer=1 filter=25 channel=4
					6, 14, -3, 11, -3, 1, 20, -8, -1,
					-- layer=1 filter=25 channel=5
					22, 9, 30, -3, -19, -60, 68, 64, 39,
					-- layer=1 filter=25 channel=6
					-11, -34, -26, 0, 8, -11, -53, -31, -27,
					-- layer=1 filter=25 channel=7
					-1, 12, -14, -8, 0, -5, -12, -12, 2,
					-- layer=1 filter=25 channel=8
					-72, -72, -132, -31, -45, -51, 19, -8, 6,
					-- layer=1 filter=25 channel=9
					-34, -38, 7, -20, -7, 18, -64, -57, -22,
					-- layer=1 filter=25 channel=10
					50, 62, 41, -19, -46, 17, -15, -44, 11,
					-- layer=1 filter=25 channel=11
					3, 19, 10, -19, 9, 0, -9, 12, 9,
					-- layer=1 filter=25 channel=12
					-19, 16, -53, -4, 37, -30, -37, 41, -17,
					-- layer=1 filter=25 channel=13
					27, -9, -12, 67, 23, 10, 64, 39, 14,
					-- layer=1 filter=25 channel=14
					33, 23, 36, 17, -75, 2, -38, -54, -12,
					-- layer=1 filter=25 channel=15
					14, -14, -13, 14, 39, 35, -25, -42, 9,
					-- layer=1 filter=25 channel=16
					-38, -73, -2, -44, -64, -44, -56, -66, -26,
					-- layer=1 filter=25 channel=17
					-49, -90, -85, -7, -14, -53, 50, 28, 29,
					-- layer=1 filter=25 channel=18
					-23, 8, -39, -7, 57, -1, 67, 99, 68,
					-- layer=1 filter=25 channel=19
					5, 16, 38, 4, 15, -67, 65, 69, 40,
					-- layer=1 filter=25 channel=20
					-24, -63, -80, 17, 10, -12, 12, 47, 27,
					-- layer=1 filter=25 channel=21
					74, -5, 63, 31, -27, 63, -50, -32, -65,
					-- layer=1 filter=25 channel=22
					41, 67, 25, 49, 31, 82, 26, 42, 6,
					-- layer=1 filter=25 channel=23
					54, 48, 52, 39, 38, 49, -65, 7, -31,
					-- layer=1 filter=25 channel=24
					-27, -43, -60, 24, 13, 2, -57, -37, -12,
					-- layer=1 filter=25 channel=25
					11, -16, 6, 45, 8, -45, 82, 24, 43,
					-- layer=1 filter=25 channel=26
					-16, -23, 5, 13, -17, 29, -74, -58, -11,
					-- layer=1 filter=25 channel=27
					82, 24, 45, 39, 13, 16, -25, -28, -9,
					-- layer=1 filter=25 channel=28
					-35, -27, -70, -10, 17, 16, -47, -46, -2,
					-- layer=1 filter=25 channel=29
					0, -59, -73, 64, 59, -32, 80, 30, 63,
					-- layer=1 filter=25 channel=30
					-29, -44, -57, -21, 20, -11, 21, 36, 4,
					-- layer=1 filter=25 channel=31
					67, 101, 83, 19, 6, 75, 55, 13, 1,
					-- layer=1 filter=26 channel=0
					-15, -21, -15, -4, 0, 3, -17, -19, -21,
					-- layer=1 filter=26 channel=1
					-25, -11, 1, -15, 0, -14, 4, -4, -2,
					-- layer=1 filter=26 channel=2
					-5, -7, -11, -25, 1, -3, -8, 2, -25,
					-- layer=1 filter=26 channel=3
					-6, -27, -27, -14, -7, 2, -18, -19, 0,
					-- layer=1 filter=26 channel=4
					10, -7, -15, -21, -8, 3, 21, 19, 18,
					-- layer=1 filter=26 channel=5
					-20, 0, 1, 12, -15, -22, -18, -7, 7,
					-- layer=1 filter=26 channel=6
					-23, 11, -16, -12, 5, 9, -21, -20, -12,
					-- layer=1 filter=26 channel=7
					21, -13, 4, 17, -13, 16, 0, 19, 18,
					-- layer=1 filter=26 channel=8
					-20, -1, -3, -1, -21, -20, -10, 6, -19,
					-- layer=1 filter=26 channel=9
					10, -18, -10, 18, 7, 12, -5, 13, 6,
					-- layer=1 filter=26 channel=10
					-34, -12, -20, 19, -6, 4, -15, -21, 13,
					-- layer=1 filter=26 channel=11
					-20, -4, 0, 10, 9, 17, 3, -19, -17,
					-- layer=1 filter=26 channel=12
					-13, 9, -10, -9, -6, -19, -25, -12, -1,
					-- layer=1 filter=26 channel=13
					-1, -14, -23, -16, -15, 9, 7, -4, -11,
					-- layer=1 filter=26 channel=14
					1, 15, -7, 2, -1, 6, -5, -27, 0,
					-- layer=1 filter=26 channel=15
					14, -11, -14, 5, -11, -12, -15, -1, 6,
					-- layer=1 filter=26 channel=16
					-6, 0, 5, -24, 15, 6, -12, 10, -24,
					-- layer=1 filter=26 channel=17
					-21, 0, -40, 11, -22, 5, -13, -9, 11,
					-- layer=1 filter=26 channel=18
					21, 22, -11, 8, -18, -2, -19, -4, -12,
					-- layer=1 filter=26 channel=19
					-20, 0, -14, 4, -16, 13, 3, 5, -1,
					-- layer=1 filter=26 channel=20
					-18, 11, 6, -3, -21, -22, -10, 5, -13,
					-- layer=1 filter=26 channel=21
					-10, 19, 8, -2, -3, -24, -18, 3, -5,
					-- layer=1 filter=26 channel=22
					12, 15, -4, -13, -12, 0, -40, -15, -7,
					-- layer=1 filter=26 channel=23
					-9, 12, -19, 11, 5, -5, 0, 7, 3,
					-- layer=1 filter=26 channel=24
					-17, 0, 10, 18, -17, 0, -22, -27, -17,
					-- layer=1 filter=26 channel=25
					7, -19, 0, 11, -26, -22, 14, 12, 13,
					-- layer=1 filter=26 channel=26
					-8, 5, -25, 4, -21, 8, -14, 2, -8,
					-- layer=1 filter=26 channel=27
					-1, 12, -5, -12, -5, 4, -31, -27, 2,
					-- layer=1 filter=26 channel=28
					-24, 8, 15, -10, 4, -19, 18, -5, 0,
					-- layer=1 filter=26 channel=29
					-12, -5, 3, -21, -5, 2, 14, -11, 2,
					-- layer=1 filter=26 channel=30
					-19, 8, -8, 3, 8, 8, 6, 7, -17,
					-- layer=1 filter=26 channel=31
					-8, -6, -6, -13, 3, 8, -6, -28, 6,
					-- layer=1 filter=27 channel=0
					-14, -13, 11, -9, -7, -18, -14, 0, 0,
					-- layer=1 filter=27 channel=1
					-23, -11, -10, -2, -18, -17, -10, -9, -12,
					-- layer=1 filter=27 channel=2
					6, -9, 15, 7, -19, 5, 14, -1, -12,
					-- layer=1 filter=27 channel=3
					14, 12, -16, -16, 14, -20, -11, 0, -12,
					-- layer=1 filter=27 channel=4
					-1, -12, 15, -12, 5, 21, -10, -13, 13,
					-- layer=1 filter=27 channel=5
					-23, -19, -15, -7, 4, 7, -4, -9, -3,
					-- layer=1 filter=27 channel=6
					6, -13, -10, -4, -1, -14, 17, 11, 7,
					-- layer=1 filter=27 channel=7
					-2, -18, -1, -19, 0, 9, 10, 3, 18,
					-- layer=1 filter=27 channel=8
					19, -4, -8, 4, -19, -17, 4, 7, 12,
					-- layer=1 filter=27 channel=9
					-19, -12, -18, 15, -17, 16, -11, 9, -17,
					-- layer=1 filter=27 channel=10
					-22, -4, -15, -8, -14, 10, -9, 0, -11,
					-- layer=1 filter=27 channel=11
					15, -7, -6, -10, -13, 15, -4, 6, 10,
					-- layer=1 filter=27 channel=12
					-21, -12, 13, -1, -14, -14, 10, -9, 7,
					-- layer=1 filter=27 channel=13
					-10, 2, 3, -15, 4, -3, 7, -2, -2,
					-- layer=1 filter=27 channel=14
					-18, -22, -5, -21, 16, 17, -8, -20, -18,
					-- layer=1 filter=27 channel=15
					5, -7, -13, 12, 16, 15, -16, 6, 9,
					-- layer=1 filter=27 channel=16
					-5, -13, -7, 14, -10, 19, -10, -16, 19,
					-- layer=1 filter=27 channel=17
					-22, 6, -8, -18, 18, -1, -22, 1, 17,
					-- layer=1 filter=27 channel=18
					18, -2, -16, -5, 1, -11, -16, 8, -14,
					-- layer=1 filter=27 channel=19
					-9, 7, -4, -18, 11, 16, -9, -18, -17,
					-- layer=1 filter=27 channel=20
					-20, 5, 5, 5, -3, -2, -3, 10, 12,
					-- layer=1 filter=27 channel=21
					0, -18, -15, 13, 0, 0, 14, 10, 16,
					-- layer=1 filter=27 channel=22
					-15, 1, 14, -18, 4, -1, -15, -4, -2,
					-- layer=1 filter=27 channel=23
					-7, -9, -16, 0, -17, 14, -21, -4, 3,
					-- layer=1 filter=27 channel=24
					-19, -2, -22, 8, -11, 1, 3, -4, -11,
					-- layer=1 filter=27 channel=25
					-4, -10, -20, -16, 17, -14, 20, 0, -22,
					-- layer=1 filter=27 channel=26
					-20, -14, -16, 1, -1, -16, 1, 18, 10,
					-- layer=1 filter=27 channel=27
					15, 9, -16, 11, 5, 9, -19, 12, -1,
					-- layer=1 filter=27 channel=28
					-5, -5, 5, -21, -13, 6, -14, 3, -13,
					-- layer=1 filter=27 channel=29
					9, -19, -13, -17, 6, -12, -14, -14, 10,
					-- layer=1 filter=27 channel=30
					-7, -15, -7, 11, -19, -4, 0, -5, -15,
					-- layer=1 filter=27 channel=31
					-2, 8, -9, 7, 7, 4, -19, -20, 15,
					-- layer=1 filter=28 channel=0
					1, -20, -21, -20, -25, -16, -28, -6, -13,
					-- layer=1 filter=28 channel=1
					-39, 3, -17, -9, -26, -11, -4, -22, -18,
					-- layer=1 filter=28 channel=2
					-13, -15, -14, 5, -11, -10, -8, -7, -23,
					-- layer=1 filter=28 channel=3
					1, -43, -12, -31, -4, 12, -4, -10, -17,
					-- layer=1 filter=28 channel=4
					-12, -10, -19, -5, 4, -1, -17, 1, 5,
					-- layer=1 filter=28 channel=5
					13, 5, -1, 0, -24, -9, -24, -2, -6,
					-- layer=1 filter=28 channel=6
					-10, -27, 6, -24, -7, -7, -22, -24, -6,
					-- layer=1 filter=28 channel=7
					-19, 0, -3, 20, -7, 13, -5, 15, 3,
					-- layer=1 filter=28 channel=8
					-12, -1, -17, 3, -13, -3, 20, -5, -24,
					-- layer=1 filter=28 channel=9
					-10, -8, -24, -20, -16, -15, 7, -26, -1,
					-- layer=1 filter=28 channel=10
					-8, -25, 8, 1, 8, -16, -1, 0, -15,
					-- layer=1 filter=28 channel=11
					4, 0, 16, 8, -16, -11, -9, 9, 12,
					-- layer=1 filter=28 channel=12
					-19, -9, -30, -6, 9, -36, -10, 6, -8,
					-- layer=1 filter=28 channel=13
					-4, 3, -29, -13, 4, -25, -24, 22, -12,
					-- layer=1 filter=28 channel=14
					8, -21, -9, -7, -8, -2, 2, -17, -8,
					-- layer=1 filter=28 channel=15
					-8, 12, -5, 3, -11, 12, 3, 24, -7,
					-- layer=1 filter=28 channel=16
					-3, -13, -11, 15, -24, 9, 4, -31, -13,
					-- layer=1 filter=28 channel=17
					-9, 6, -24, -11, 0, -13, -2, -4, 1,
					-- layer=1 filter=28 channel=18
					-22, 10, 3, -24, 1, -15, -19, 5, 1,
					-- layer=1 filter=28 channel=19
					-5, -12, 2, -28, -26, -1, 7, 7, -8,
					-- layer=1 filter=28 channel=20
					-10, 11, -10, 2, 15, 4, -3, 18, -18,
					-- layer=1 filter=28 channel=21
					14, -16, -3, 16, -16, 6, -20, 2, -7,
					-- layer=1 filter=28 channel=22
					0, -1, 6, -11, -24, 2, -26, 6, -8,
					-- layer=1 filter=28 channel=23
					-14, -8, -18, 4, 5, 0, 0, 9, 12,
					-- layer=1 filter=28 channel=24
					-1, 1, 14, -2, 0, -16, 3, -10, -2,
					-- layer=1 filter=28 channel=25
					-9, -16, -2, 4, -26, -19, -4, -16, 8,
					-- layer=1 filter=28 channel=26
					-18, -30, -7, 17, -7, -10, -14, 6, 14,
					-- layer=1 filter=28 channel=27
					16, 5, 0, 12, -19, -22, -28, -29, 1,
					-- layer=1 filter=28 channel=28
					1, -2, -21, -29, -16, 2, -20, -2, 0,
					-- layer=1 filter=28 channel=29
					-7, -22, -21, -8, -2, -21, -5, 4, 7,
					-- layer=1 filter=28 channel=30
					-16, -27, -22, -2, 1, 1, -6, 10, -17,
					-- layer=1 filter=28 channel=31
					1, -10, -5, 3, -8, -25, -3, -22, -2,
					-- layer=1 filter=29 channel=0
					7, -23, 15, 5, 12, -1, -3, 18, 22,
					-- layer=1 filter=29 channel=1
					-21, 3, 23, -7, 5, -10, -36, 2, 16,
					-- layer=1 filter=29 channel=2
					-28, -24, -35, 19, 32, 24, 23, 32, 54,
					-- layer=1 filter=29 channel=3
					-47, -13, -29, -41, 3, 4, 7, 9, 47,
					-- layer=1 filter=29 channel=4
					3, 19, -14, 5, 1, -5, -13, -11, 20,
					-- layer=1 filter=29 channel=5
					35, -13, 3, 0, -9, -37, -28, -37, -60,
					-- layer=1 filter=29 channel=6
					9, 3, 13, 12, -16, -20, 10, -8, -4,
					-- layer=1 filter=29 channel=7
					15, 14, 13, 15, -13, -10, 21, -5, -12,
					-- layer=1 filter=29 channel=8
					19, 4, 27, 29, 1, 25, 42, 28, 31,
					-- layer=1 filter=29 channel=9
					-34, -9, -7, -4, 9, 14, 20, 26, 46,
					-- layer=1 filter=29 channel=10
					-34, -7, -17, -16, 26, 33, 43, 74, 72,
					-- layer=1 filter=29 channel=11
					3, -15, -16, -4, 9, -5, 2, 2, 11,
					-- layer=1 filter=29 channel=12
					-35, -9, -6, -12, 3, 12, -46, -5, 11,
					-- layer=1 filter=29 channel=13
					0, -19, -16, -36, -20, -40, -45, -77, -66,
					-- layer=1 filter=29 channel=14
					-5, -3, -19, 21, 25, -3, 35, 44, 34,
					-- layer=1 filter=29 channel=15
					-10, 17, 18, -24, -19, -32, -31, -52, -20,
					-- layer=1 filter=29 channel=16
					-6, -22, -25, 48, 75, 43, 81, 94, 82,
					-- layer=1 filter=29 channel=17
					30, 42, 38, 28, 35, 18, 32, 15, 23,
					-- layer=1 filter=29 channel=18
					13, 6, 46, -22, -38, -6, -2, -30, -35,
					-- layer=1 filter=29 channel=19
					28, 13, 27, 46, 17, 16, 57, 70, 18,
					-- layer=1 filter=29 channel=20
					-9, -8, -4, -24, -31, -18, -11, -81, -68,
					-- layer=1 filter=29 channel=21
					-15, -7, -17, -29, -28, -25, 8, 14, -5,
					-- layer=1 filter=29 channel=22
					61, 39, 52, 15, -2, 1, -20, 2, 10,
					-- layer=1 filter=29 channel=23
					54, 19, 50, -6, 25, 33, 8, 75, 20,
					-- layer=1 filter=29 channel=24
					15, 12, -5, 23, 15, 20, 14, -26, -26,
					-- layer=1 filter=29 channel=25
					0, 28, 5, -5, 2, -39, -22, -34, -60,
					-- layer=1 filter=29 channel=26
					-26, -14, 20, -6, -13, -12, -25, -3, 33,
					-- layer=1 filter=29 channel=27
					-34, -92, -91, -22, -8, -94, 27, 19, -39,
					-- layer=1 filter=29 channel=28
					4, 23, -4, 10, -12, 1, -22, -21, -19,
					-- layer=1 filter=29 channel=29
					22, -14, -16, 0, -51, -29, -40, -114, -98,
					-- layer=1 filter=29 channel=30
					-2, 8, -28, 8, 7, -5, 18, -18, 5,
					-- layer=1 filter=29 channel=31
					-48, -59, -25, -93, -123, -73, -49, -15, -43,
					-- layer=1 filter=30 channel=0
					22, 9, 10, 15, 13, 5, -7, 8, -31,
					-- layer=1 filter=30 channel=1
					11, -7, -10, -13, 14, -2, 0, -8, -5,
					-- layer=1 filter=30 channel=2
					1, 22, 0, 32, 16, -10, -8, -13, -18,
					-- layer=1 filter=30 channel=3
					-6, 7, 24, -14, 22, 1, 27, 19, 13,
					-- layer=1 filter=30 channel=4
					-9, -10, 6, 12, 19, 12, -6, -6, 2,
					-- layer=1 filter=30 channel=5
					-151, -129, -56, -172, -107, -72, -133, -153, -142,
					-- layer=1 filter=30 channel=6
					-9, 26, -5, -6, 23, 8, 10, 6, -20,
					-- layer=1 filter=30 channel=7
					14, -6, -20, 0, 3, 16, -3, -5, 6,
					-- layer=1 filter=30 channel=8
					34, 9, -6, 7, -7, -26, -2, 0, -15,
					-- layer=1 filter=30 channel=9
					-28, 28, 17, -10, 29, 11, 6, 8, -7,
					-- layer=1 filter=30 channel=10
					25, -3, 16, -13, 26, 28, 1, 9, 29,
					-- layer=1 filter=30 channel=11
					5, 15, -4, -17, -17, 17, -1, -14, -16,
					-- layer=1 filter=30 channel=12
					27, -8, -33, 33, -32, -26, 13, -40, -25,
					-- layer=1 filter=30 channel=13
					-3, -17, 7, -7, 9, -19, 13, -30, -29,
					-- layer=1 filter=30 channel=14
					0, 37, 18, -8, 73, 28, 12, 33, 29,
					-- layer=1 filter=30 channel=15
					-23, 3, 15, -16, -3, -10, -4, 15, -11,
					-- layer=1 filter=30 channel=16
					0, 33, 34, 32, 41, 34, 11, 14, 28,
					-- layer=1 filter=30 channel=17
					30, 25, 20, -16, 2, -5, 12, -16, -1,
					-- layer=1 filter=30 channel=18
					-22, -81, -84, -62, -113, -83, -39, -78, -80,
					-- layer=1 filter=30 channel=19
					-90, -108, -68, -129, -139, -86, -82, -103, -115,
					-- layer=1 filter=30 channel=20
					13, 18, -6, 17, -6, -30, -1, -16, -23,
					-- layer=1 filter=30 channel=21
					-60, -6, 33, -50, 29, 19, -20, 40, 45,
					-- layer=1 filter=30 channel=22
					-24, -62, -73, -41, -127, -90, -103, -78, -44,
					-- layer=1 filter=30 channel=23
					-70, -33, -33, -94, -75, -37, -102, -94, -45,
					-- layer=1 filter=30 channel=24
					0, 14, 3, 27, 15, 11, 23, 11, 6,
					-- layer=1 filter=30 channel=25
					-128, -121, -37, -184, -101, -77, -136, -134, -124,
					-- layer=1 filter=30 channel=26
					-4, 7, 14, -2, 15, -8, 17, -6, -2,
					-- layer=1 filter=30 channel=27
					-57, -94, 10, -69, 7, -8, -24, 13, 14,
					-- layer=1 filter=30 channel=28
					5, 32, 0, 4, 33, -14, 3, 1, -7,
					-- layer=1 filter=30 channel=29
					2, -5, -20, 15, -20, -5, 12, -29, -23,
					-- layer=1 filter=30 channel=30
					0, 40, -4, -5, 3, -21, 2, -5, -35,
					-- layer=1 filter=30 channel=31
					-18, -54, -7, -55, -57, -51, -38, -17, -40,
					-- layer=1 filter=31 channel=0
					-23, 4, -29, 19, -1, -43, 14, 10, -36,
					-- layer=1 filter=31 channel=1
					-10, -23, -39, 39, -5, -5, 9, -12, -27,
					-- layer=1 filter=31 channel=2
					-6, 16, 10, 12, -8, -7, -8, -9, -57,
					-- layer=1 filter=31 channel=3
					-16, 4, -6, 23, 4, -12, 22, -3, -12,
					-- layer=1 filter=31 channel=4
					-13, 1, 0, -22, -12, -4, 2, 12, -8,
					-- layer=1 filter=31 channel=5
					-36, -10, 31, -15, 23, 26, 19, -41, 28,
					-- layer=1 filter=31 channel=6
					-20, -28, -20, -1, -18, -43, 30, -6, -15,
					-- layer=1 filter=31 channel=7
					10, 8, -10, 3, -2, -10, 13, 11, 1,
					-- layer=1 filter=31 channel=8
					0, 2, 32, -20, -29, -18, -5, 6, -51,
					-- layer=1 filter=31 channel=9
					-30, 1, 15, 6, 3, -19, 40, 18, -4,
					-- layer=1 filter=31 channel=10
					14, 26, -7, 28, 14, -14, 12, 40, 39,
					-- layer=1 filter=31 channel=11
					15, -11, 11, 0, 4, -6, 0, 9, 14,
					-- layer=1 filter=31 channel=12
					-22, 0, -18, -24, -63, -45, -8, -31, -54,
					-- layer=1 filter=31 channel=13
					-36, -21, 7, -44, 22, 15, 0, -19, -1,
					-- layer=1 filter=31 channel=14
					7, -7, -2, 12, 28, 5, 15, 21, 60,
					-- layer=1 filter=31 channel=15
					-25, -27, 12, 45, 13, 16, 32, 23, -3,
					-- layer=1 filter=31 channel=16
					-30, 17, 14, 9, 21, -24, -7, 17, -31,
					-- layer=1 filter=31 channel=17
					-31, 39, 38, -42, -22, 26, 26, 21, 7,
					-- layer=1 filter=31 channel=18
					-2, 0, 29, -5, 51, 82, 57, 42, -16,
					-- layer=1 filter=31 channel=19
					-8, 45, 53, -34, 28, 72, 87, 28, 24,
					-- layer=1 filter=31 channel=20
					6, -6, 17, 7, -9, -7, 28, -22, -68,
					-- layer=1 filter=31 channel=21
					0, -20, -22, 8, 36, 38, 29, 83, 101,
					-- layer=1 filter=31 channel=22
					30, 26, -52, 63, 44, 21, 31, 62, 73,
					-- layer=1 filter=31 channel=23
					40, 21, -35, 79, 38, 37, 62, 82, 89,
					-- layer=1 filter=31 channel=24
					-36, -27, 5, 14, -9, -22, 18, 33, -21,
					-- layer=1 filter=31 channel=25
					-39, 8, 31, -50, -4, -5, 40, -23, -22,
					-- layer=1 filter=31 channel=26
					4, -11, -19, 48, 6, -32, 30, 28, 14,
					-- layer=1 filter=31 channel=27
					46, 32, 42, -13, 33, 50, -19, -26, 89,
					-- layer=1 filter=31 channel=28
					-23, -36, 5, 19, -16, -48, 13, -4, -13,
					-- layer=1 filter=31 channel=29
					-14, -1, 16, -42, 8, -13, 13, -20, -39,
					-- layer=1 filter=31 channel=30
					-5, 9, -5, -19, 6, 0, 69, -3, -23,
					-- layer=1 filter=31 channel=31
					57, -4, -56, 14, 24, 0, 61, 57, 52,
					-- layer=1 filter=32 channel=0
					-7, 16, 7, -21, 6, 24, 0, 13, 3,
					-- layer=1 filter=32 channel=1
					-1, -1, 17, -14, -19, -17, 5, -16, -10,
					-- layer=1 filter=32 channel=2
					15, 29, 24, 22, 33, 23, 7, 4, 38,
					-- layer=1 filter=32 channel=3
					-34, -25, -10, -35, -45, -4, -8, -21, -8,
					-- layer=1 filter=32 channel=4
					16, 15, 5, 16, -6, -2, -5, 4, 15,
					-- layer=1 filter=32 channel=5
					-73, -76, -126, -51, -64, -94, -58, -62, -55,
					-- layer=1 filter=32 channel=6
					-13, 3, 21, -14, 23, 27, 11, 19, 7,
					-- layer=1 filter=32 channel=7
					3, 9, -12, -11, -15, 3, -14, 9, 13,
					-- layer=1 filter=32 channel=8
					18, 19, 3, -2, 43, 35, 7, 17, 26,
					-- layer=1 filter=32 channel=9
					3, 5, 3, 12, -6, 26, -12, -31, 4,
					-- layer=1 filter=32 channel=10
					64, 5, 0, 4, -14, -30, 15, -21, -9,
					-- layer=1 filter=32 channel=11
					-19, 13, -6, 19, -10, -19, 19, 9, -11,
					-- layer=1 filter=32 channel=12
					-11, 38, 27, -4, 11, 28, -4, -10, 18,
					-- layer=1 filter=32 channel=13
					-13, -30, -29, -20, -2, 11, -8, 7, 23,
					-- layer=1 filter=32 channel=14
					-54, -32, -14, -47, -61, 5, -17, -14, 1,
					-- layer=1 filter=32 channel=15
					-34, 2, 21, -29, 22, 18, -1, -7, 31,
					-- layer=1 filter=32 channel=16
					28, -20, 5, 25, -21, -10, -15, -19, 18,
					-- layer=1 filter=32 channel=17
					-24, 14, -7, -1, 46, 43, 14, 52, 41,
					-- layer=1 filter=32 channel=18
					0, 35, 3, -20, 52, 36, -47, 27, 19,
					-- layer=1 filter=32 channel=19
					-43, -62, -91, -41, -50, -33, -70, -11, -24,
					-- layer=1 filter=32 channel=20
					-21, 10, 14, -4, 36, 24, -23, -2, 23,
					-- layer=1 filter=32 channel=21
					-123, -117, -14, -100, -178, -32, -39, -97, -70,
					-- layer=1 filter=32 channel=22
					2, 41, 41, 47, -1, -30, 95, 43, -29,
					-- layer=1 filter=32 channel=23
					38, 19, 59, 18, -29, -16, 8, -29, -90,
					-- layer=1 filter=32 channel=24
					-28, 7, 28, -21, 27, 26, 12, 12, 2,
					-- layer=1 filter=32 channel=25
					-122, -72, -111, -91, -76, -56, -70, -44, -35,
					-- layer=1 filter=32 channel=26
					-23, 1, 3, 1, -27, -16, 15, 8, 13,
					-- layer=1 filter=32 channel=27
					-121, -187, -88, -129, -195, -121, -43, -116, -88,
					-- layer=1 filter=32 channel=28
					-25, 17, 4, -18, -13, 24, 0, 1, 18,
					-- layer=1 filter=32 channel=29
					-20, 1, -33, -34, 10, 33, -1, 39, 21,
					-- layer=1 filter=32 channel=30
					-24, 3, 7, -25, 8, 41, -28, 30, 41,
					-- layer=1 filter=32 channel=31
					-49, -85, -52, -67, -87, -112, -20, -92, -110,
					-- layer=1 filter=33 channel=0
					0, -2, 2, -24, 15, 4, -17, -18, -22,
					-- layer=1 filter=33 channel=1
					-22, -32, 12, 0, -20, 10, 8, -12, 1,
					-- layer=1 filter=33 channel=2
					-15, 2, 20, -5, 8, 16, -17, -21, -14,
					-- layer=1 filter=33 channel=3
					-14, 2, 8, -13, -36, -7, -8, -10, -21,
					-- layer=1 filter=33 channel=4
					3, -6, -10, 0, 1, -13, 8, 6, 4,
					-- layer=1 filter=33 channel=5
					31, 3, 8, -13, 16, 26, 54, 39, 37,
					-- layer=1 filter=33 channel=6
					-10, 16, 4, -6, -1, 6, 22, 20, 18,
					-- layer=1 filter=33 channel=7
					9, 2, 19, -1, -5, 3, -10, -19, -12,
					-- layer=1 filter=33 channel=8
					18, -6, 12, -13, 8, 9, 14, 20, 3,
					-- layer=1 filter=33 channel=9
					-4, -19, 11, -20, 8, 0, -25, -17, -33,
					-- layer=1 filter=33 channel=10
					-9, 13, 4, -47, -36, -29, -43, -18, -25,
					-- layer=1 filter=33 channel=11
					-20, -1, -7, -12, 6, -12, 8, 14, 15,
					-- layer=1 filter=33 channel=12
					-37, 5, -8, -37, -20, 0, 1, -12, -26,
					-- layer=1 filter=33 channel=13
					-3, 1, 9, 21, 32, -14, 45, 30, 25,
					-- layer=1 filter=33 channel=14
					-30, 7, 29, -45, -57, -42, -33, -39, -28,
					-- layer=1 filter=33 channel=15
					15, -13, -7, 0, -9, -12, 29, -10, -14,
					-- layer=1 filter=33 channel=16
					-19, -2, 18, -69, -50, -14, -57, -58, -52,
					-- layer=1 filter=33 channel=17
					12, 10, 10, 20, 5, 30, 19, 37, 34,
					-- layer=1 filter=33 channel=18
					-13, 16, 56, -23, 40, 26, -4, 16, 19,
					-- layer=1 filter=33 channel=19
					13, 2, 37, -26, 1, -1, 25, 7, 45,
					-- layer=1 filter=33 channel=20
					-9, 5, -25, 19, -14, -8, -10, -1, 24,
					-- layer=1 filter=33 channel=21
					-9, -26, -21, -44, -64, -72, 0, -60, -42,
					-- layer=1 filter=33 channel=22
					43, 25, -4, 3, 14, 1, 45, 72, 21,
					-- layer=1 filter=33 channel=23
					43, 20, 7, 7, -31, -28, 14, 54, -3,
					-- layer=1 filter=33 channel=24
					13, 20, -20, 5, 22, -11, 10, 4, -2,
					-- layer=1 filter=33 channel=25
					22, 15, -28, 5, 12, -8, 33, 7, 30,
					-- layer=1 filter=33 channel=26
					-16, 2, -13, -22, -30, 0, -2, -12, -32,
					-- layer=1 filter=33 channel=27
					4, -68, 43, -31, -69, -22, -22, -40, -19,
					-- layer=1 filter=33 channel=28
					16, -12, -20, 7, -6, 10, 0, -12, -2,
					-- layer=1 filter=33 channel=29
					6, 8, 2, 41, 10, 6, 41, 14, 17,
					-- layer=1 filter=33 channel=30
					-22, 19, 18, -13, 0, 21, -24, -15, -6,
					-- layer=1 filter=33 channel=31
					35, -8, 23, -9, -43, -16, 2, 28, 15,
					-- layer=1 filter=34 channel=0
					22, 18, 1, 0, 6, -3, -9, -24, -15,
					-- layer=1 filter=34 channel=1
					6, 2, -7, -39, -11, -3, -22, 3, -2,
					-- layer=1 filter=34 channel=2
					16, 35, 26, 15, 15, 27, -20, -17, -16,
					-- layer=1 filter=34 channel=3
					8, 21, 6, 4, 7, 8, 6, 5, 19,
					-- layer=1 filter=34 channel=4
					24, -12, -11, -5, 2, 12, -1, 13, 11,
					-- layer=1 filter=34 channel=5
					46, 22, 60, 45, 57, 54, 52, 71, 63,
					-- layer=1 filter=34 channel=6
					23, -4, 2, 0, -15, 16, -26, -24, -23,
					-- layer=1 filter=34 channel=7
					-5, 18, -11, 12, -19, 3, 3, -11, -13,
					-- layer=1 filter=34 channel=8
					29, 15, 24, 21, 22, 1, -17, -17, -5,
					-- layer=1 filter=34 channel=9
					-1, 34, 15, -15, 12, -11, -19, -8, -12,
					-- layer=1 filter=34 channel=10
					8, 23, 1, 10, 21, 11, -4, 10, -9,
					-- layer=1 filter=34 channel=11
					3, 11, -10, 20, -9, 16, 15, -12, -15,
					-- layer=1 filter=34 channel=12
					21, 22, 9, 11, -19, -5, -24, -7, -5,
					-- layer=1 filter=34 channel=13
					9, 5, 12, 21, -3, -27, -9, -10, -14,
					-- layer=1 filter=34 channel=14
					-8, 16, 20, 18, 23, 27, -22, -1, 8,
					-- layer=1 filter=34 channel=15
					15, 17, 0, 3, -23, 4, 15, -20, -3,
					-- layer=1 filter=34 channel=16
					22, 9, 23, 15, 17, -4, -26, -18, -1,
					-- layer=1 filter=34 channel=17
					14, -11, 8, 14, 27, 7, -6, 0, -15,
					-- layer=1 filter=34 channel=18
					0, -20, 20, 57, 0, 48, 20, 32, 27,
					-- layer=1 filter=34 channel=19
					59, 22, 55, 48, 71, 47, 59, 77, 71,
					-- layer=1 filter=34 channel=20
					25, 1, 12, 24, -3, 0, 2, -28, 2,
					-- layer=1 filter=34 channel=21
					-24, 21, -14, 14, -1, -2, 12, 20, 19,
					-- layer=1 filter=34 channel=22
					15, 17, 10, -14, -9, -25, 4, -12, -6,
					-- layer=1 filter=34 channel=23
					36, 35, 5, 35, 23, 42, 9, 11, 31,
					-- layer=1 filter=34 channel=24
					28, 20, 12, -32, -1, -6, 0, -34, -14,
					-- layer=1 filter=34 channel=25
					55, 46, 47, 33, 55, 53, 65, 44, 69,
					-- layer=1 filter=34 channel=26
					-11, 13, -9, -12, 7, -22, 9, -4, 4,
					-- layer=1 filter=34 channel=27
					4, 17, 0, 4, 12, 33, 23, -1, 6,
					-- layer=1 filter=34 channel=28
					15, 0, 4, -10, -7, -21, -26, 7, -13,
					-- layer=1 filter=34 channel=29
					24, 3, 13, -15, 5, -7, -33, -30, -34,
					-- layer=1 filter=34 channel=30
					6, 8, 28, 19, 28, -2, -8, -3, 1,
					-- layer=1 filter=34 channel=31
					10, 16, 28, 67, 25, 13, 31, -6, 9,
					-- layer=1 filter=35 channel=0
					-27, -3, 8, -1, -15, 9, -4, -24, 9,
					-- layer=1 filter=35 channel=1
					5, -25, -5, -8, -28, -6, 14, 14, -10,
					-- layer=1 filter=35 channel=2
					-38, 37, 30, -40, 13, 39, 20, -14, 10,
					-- layer=1 filter=35 channel=3
					10, -23, 21, 12, -10, -9, 12, -22, 3,
					-- layer=1 filter=35 channel=4
					17, -14, 1, -4, 9, -5, 1, 9, -1,
					-- layer=1 filter=35 channel=5
					-30, -11, -34, -52, -62, -41, -97, -101, 7,
					-- layer=1 filter=35 channel=6
					-20, -24, 38, 31, -13, 5, 21, -19, -16,
					-- layer=1 filter=35 channel=7
					19, 0, 15, 4, -7, 8, 11, -17, -8,
					-- layer=1 filter=35 channel=8
					-10, 30, -8, -51, 12, -5, -14, 9, 38,
					-- layer=1 filter=35 channel=9
					-35, -23, 45, -6, -40, 41, 17, -35, 22,
					-- layer=1 filter=35 channel=10
					17, -53, 20, 29, -34, -4, 30, 15, -24,
					-- layer=1 filter=35 channel=11
					-17, 0, -3, 4, 2, 6, 5, -9, 15,
					-- layer=1 filter=35 channel=12
					-17, 47, 4, -46, 18, 0, -25, -6, 37,
					-- layer=1 filter=35 channel=13
					-14, 3, -2, -3, -5, -20, 30, -8, -4,
					-- layer=1 filter=35 channel=14
					61, -99, 23, 80, -21, -51, 34, 37, -21,
					-- layer=1 filter=35 channel=15
					-27, -24, 23, 47, -80, 49, 69, 4, -23,
					-- layer=1 filter=35 channel=16
					-4, -39, 15, -16, -31, 24, 2, -32, -18,
					-- layer=1 filter=35 channel=17
					-41, 39, -3, -60, 38, 39, -29, -21, 32,
					-- layer=1 filter=35 channel=18
					-32, 88, -14, -39, 128, 72, 24, 49, 108,
					-- layer=1 filter=35 channel=19
					-56, 68, 24, -83, 38, 41, -75, -52, 111,
					-- layer=1 filter=35 channel=20
					-9, 14, 27, -28, -21, -6, 24, -22, -2,
					-- layer=1 filter=35 channel=21
					81, -113, -7, 97, 25, -76, 88, 104, -35,
					-- layer=1 filter=35 channel=22
					52, -86, -27, 50, -6, -71, 8, 39, -24,
					-- layer=1 filter=35 channel=23
					68, -131, -8, 70, 3, -69, -1, 51, 2,
					-- layer=1 filter=35 channel=24
					2, -39, 34, 49, -34, 3, 31, -12, -31,
					-- layer=1 filter=35 channel=25
					-63, -14, 13, -51, -53, -39, -53, -156, 53,
					-- layer=1 filter=35 channel=26
					-6, -40, 17, 40, -34, -20, 32, 21, -17,
					-- layer=1 filter=35 channel=27
					89, -10, -47, 68, 115, -67, -7, 146, -11,
					-- layer=1 filter=35 channel=28
					-13, -6, 12, 2, -47, 32, 30, -2, -20,
					-- layer=1 filter=35 channel=29
					-39, 29, 46, -15, -4, 13, 23, -39, 9,
					-- layer=1 filter=35 channel=30
					-3, 33, 50, -42, 0, 23, 25, -36, 20,
					-- layer=1 filter=35 channel=31
					36, -36, -9, 29, -11, -43, -23, 27, 23,
					-- layer=1 filter=36 channel=0
					0, 21, 26, 15, 20, 23, 28, 18, 9,
					-- layer=1 filter=36 channel=1
					-2, 22, 11, 2, 16, 27, -2, -6, 4,
					-- layer=1 filter=36 channel=2
					12, -6, -3, -15, -20, 0, -10, 17, 23,
					-- layer=1 filter=36 channel=3
					20, 3, -11, 17, 3, 16, -5, 10, 18,
					-- layer=1 filter=36 channel=4
					17, 10, 12, 15, 1, -11, 11, 9, -8,
					-- layer=1 filter=36 channel=5
					-8, 18, 1, 17, 42, 57, 8, 16, 44,
					-- layer=1 filter=36 channel=6
					2, 3, -5, -14, 1, 11, 10, -10, 6,
					-- layer=1 filter=36 channel=7
					-18, 9, 19, 2, -19, -2, 18, 13, 5,
					-- layer=1 filter=36 channel=8
					-12, -27, -8, -11, -36, -26, -35, -30, -10,
					-- layer=1 filter=36 channel=9
					-6, -13, -8, 22, 24, -14, 14, 29, 15,
					-- layer=1 filter=36 channel=10
					5, -18, -26, 0, 13, -4, -10, 10, 16,
					-- layer=1 filter=36 channel=11
					10, -20, 15, -11, 10, 14, 2, 2, 0,
					-- layer=1 filter=36 channel=12
					-3, -18, 18, -25, 9, -9, 3, 18, 10,
					-- layer=1 filter=36 channel=13
					4, -19, -17, -11, -23, -3, -22, -23, -27,
					-- layer=1 filter=36 channel=14
					17, -6, -8, 16, 21, -15, -5, 17, -19,
					-- layer=1 filter=36 channel=15
					13, -2, 9, 29, -1, -20, -9, -9, 6,
					-- layer=1 filter=36 channel=16
					-6, 15, -20, -21, 10, -2, -9, 2, 0,
					-- layer=1 filter=36 channel=17
					-29, -37, -5, -37, -31, -11, -63, -59, -45,
					-- layer=1 filter=36 channel=18
					5, -10, -3, 20, 12, 9, 44, -15, 32,
					-- layer=1 filter=36 channel=19
					1, -17, -1, 28, -5, 33, 3, -21, 24,
					-- layer=1 filter=36 channel=20
					0, -7, 12, -12, 2, 29, 5, -7, 0,
					-- layer=1 filter=36 channel=21
					15, -6, -22, 12, 16, -6, 8, 37, -25,
					-- layer=1 filter=36 channel=22
					-44, -26, -14, -42, -40, -8, -57, -93, -13,
					-- layer=1 filter=36 channel=23
					-26, -35, -37, -13, -23, 16, 14, -38, 6,
					-- layer=1 filter=36 channel=24
					16, 0, -9, 0, 8, -9, -17, -15, -16,
					-- layer=1 filter=36 channel=25
					-7, -7, 17, 26, 19, 35, 29, 8, 28,
					-- layer=1 filter=36 channel=26
					20, 14, -10, 33, 15, 14, 30, 7, -2,
					-- layer=1 filter=36 channel=27
					32, -8, -5, 21, -1, 35, 4, -20, 8,
					-- layer=1 filter=36 channel=28
					19, 16, -7, 26, 6, 4, 15, -10, 0,
					-- layer=1 filter=36 channel=29
					-25, -20, -28, -44, -11, -20, -58, -50, -24,
					-- layer=1 filter=36 channel=30
					23, 8, 0, 33, 31, 31, 28, -8, -3,
					-- layer=1 filter=36 channel=31
					-37, -8, -42, -6, -7, 12, -10, 9, -15,
					-- layer=1 filter=37 channel=0
					4, 6, 18, -7, 15, 12, -32, -40, -16,
					-- layer=1 filter=37 channel=1
					24, 29, 18, 0, -12, 15, -10, -27, -40,
					-- layer=1 filter=37 channel=2
					0, -16, 13, 29, 1, 8, -44, -29, -14,
					-- layer=1 filter=37 channel=3
					-26, -8, -10, 20, 3, 2, 14, 7, -3,
					-- layer=1 filter=37 channel=4
					-3, 16, 6, -7, 19, -2, -15, -15, 18,
					-- layer=1 filter=37 channel=5
					-31, -46, 4, 48, 86, 62, 13, 15, 21,
					-- layer=1 filter=37 channel=6
					20, 14, 6, 15, -6, 12, 21, -4, -16,
					-- layer=1 filter=37 channel=7
					-7, -4, 12, 10, 8, 1, -4, -3, 20,
					-- layer=1 filter=37 channel=8
					-1, -1, 0, 15, -2, -2, -10, -5, 10,
					-- layer=1 filter=37 channel=9
					-2, -2, -9, -16, 21, 25, -5, -39, -38,
					-- layer=1 filter=37 channel=10
					0, 7, 10, -15, -13, -14, 20, 8, -8,
					-- layer=1 filter=37 channel=11
					15, 13, -11, -16, 7, -18, -18, -3, -16,
					-- layer=1 filter=37 channel=12
					11, 13, 6, -17, 8, -17, -20, -16, -8,
					-- layer=1 filter=37 channel=13
					2, -29, -13, 6, -6, -13, 0, -5, 0,
					-- layer=1 filter=37 channel=14
					-34, -14, -3, -17, -2, 44, -3, 29, -23,
					-- layer=1 filter=37 channel=15
					41, 29, -10, -16, 16, 25, 1, -42, 8,
					-- layer=1 filter=37 channel=16
					-19, 14, -8, 8, 41, 33, -12, -24, -16,
					-- layer=1 filter=37 channel=17
					12, -25, 9, 20, 46, 33, 4, 21, -14,
					-- layer=1 filter=37 channel=18
					0, -1, -59, 39, 77, 62, -30, -4, 8,
					-- layer=1 filter=37 channel=19
					21, -23, -55, 36, 69, 52, -2, 37, 69,
					-- layer=1 filter=37 channel=20
					7, 7, 25, 8, -10, -18, -22, -25, -3,
					-- layer=1 filter=37 channel=21
					-37, 2, -5, -22, -12, 6, 45, -2, -12,
					-- layer=1 filter=37 channel=22
					-43, 31, -4, -2, -23, -34, 58, 40, 13,
					-- layer=1 filter=37 channel=23
					3, 68, 32, 42, 41, 27, 42, 60, 2,
					-- layer=1 filter=37 channel=24
					-9, 19, 23, -2, -14, -15, -4, -37, -36,
					-- layer=1 filter=37 channel=25
					-8, -40, -37, 36, 69, 68, 17, 13, 17,
					-- layer=1 filter=37 channel=26
					-5, 15, 14, -10, -13, 27, -3, -9, 3,
					-- layer=1 filter=37 channel=27
					-24, -15, -3, 35, -7, 44, 20, 0, -28,
					-- layer=1 filter=37 channel=28
					5, -1, -3, -16, 24, 15, -20, -42, -29,
					-- layer=1 filter=37 channel=29
					9, -17, -17, 14, 0, 25, -35, -5, -14,
					-- layer=1 filter=37 channel=30
					-13, -6, -19, 8, 17, 18, -25, -11, 20,
					-- layer=1 filter=37 channel=31
					27, 57, 64, 28, 33, 44, 51, 63, 62,
					-- layer=1 filter=38 channel=0
					8, -11, -24, 4, -10, -25, 0, 6, -37,
					-- layer=1 filter=38 channel=1
					-14, -8, -3, -31, 14, 4, -14, 20, 7,
					-- layer=1 filter=38 channel=2
					-11, -19, 5, 6, -34, -25, 9, 0, -16,
					-- layer=1 filter=38 channel=3
					4, 0, -1, 18, 10, 3, 4, 2, 16,
					-- layer=1 filter=38 channel=4
					10, 14, -17, 11, 2, 21, -20, -9, 6,
					-- layer=1 filter=38 channel=5
					-43, -34, -22, -50, -77, -45, 25, -39, -43,
					-- layer=1 filter=38 channel=6
					19, 0, -9, 26, 3, -47, 38, -10, -25,
					-- layer=1 filter=38 channel=7
					20, 9, 5, 10, -2, -7, -1, 16, -21,
					-- layer=1 filter=38 channel=8
					-9, -39, -5, 0, -17, -4, 26, -44, -23,
					-- layer=1 filter=38 channel=9
					6, -2, 1, 18, -11, -33, 9, 14, -17,
					-- layer=1 filter=38 channel=10
					-3, 0, 4, -25, 46, 10, 9, 9, 14,
					-- layer=1 filter=38 channel=11
					0, -12, -12, 15, -10, -5, 13, -15, -8,
					-- layer=1 filter=38 channel=12
					-9, -59, -34, -32, -67, -9, -7, -42, -15,
					-- layer=1 filter=38 channel=13
					59, 1, -37, 63, 3, -21, 33, -6, -31,
					-- layer=1 filter=38 channel=14
					13, 37, 17, 8, 29, 5, 43, 21, -1,
					-- layer=1 filter=38 channel=15
					84, -9, -13, 42, -25, -33, 9, 13, -26,
					-- layer=1 filter=38 channel=16
					8, 12, -9, 19, 0, -11, 19, -7, -19,
					-- layer=1 filter=38 channel=17
					32, -20, -9, 32, -17, -21, 18, -40, -3,
					-- layer=1 filter=38 channel=18
					-5, -55, -21, -56, -51, -21, -32, -44, 5,
					-- layer=1 filter=38 channel=19
					-23, -11, 16, -60, -67, -39, -29, -71, -61,
					-- layer=1 filter=38 channel=20
					20, 4, -48, 40, -36, -17, 18, -2, -25,
					-- layer=1 filter=38 channel=21
					36, 38, 8, 51, 77, 12, 52, 42, 19,
					-- layer=1 filter=38 channel=22
					23, 11, -31, 26, 13, 15, 26, -2, -11,
					-- layer=1 filter=38 channel=23
					48, 6, -28, -27, 25, -32, -23, 24, -22,
					-- layer=1 filter=38 channel=24
					27, 11, -12, 51, -2, -21, 51, 0, -30,
					-- layer=1 filter=38 channel=25
					-4, -2, -59, -5, -45, -70, -1, -47, -75,
					-- layer=1 filter=38 channel=26
					0, 15, -19, 9, 20, -21, 16, -2, -27,
					-- layer=1 filter=38 channel=27
					3, 55, 0, 13, 95, -5, 44, 67, 26,
					-- layer=1 filter=38 channel=28
					15, -7, -34, 38, 12, -13, 2, 11, -24,
					-- layer=1 filter=38 channel=29
					44, -38, -12, 41, -36, -23, 38, 4, -1,
					-- layer=1 filter=38 channel=30
					36, -1, -22, 0, -23, -19, -5, -14, -38,
					-- layer=1 filter=38 channel=31
					-38, -30, -41, -12, 4, -6, -48, -45, -1,
					-- layer=1 filter=39 channel=0
					-12, -10, -22, 4, -38, -6, -11, -6, 40,
					-- layer=1 filter=39 channel=1
					1, -5, -18, 0, -26, 20, -14, -3, 28,
					-- layer=1 filter=39 channel=2
					12, 18, -36, 14, -14, 9, 10, -2, 21,
					-- layer=1 filter=39 channel=3
					-19, 18, -26, 18, -15, -41, -4, -33, -4,
					-- layer=1 filter=39 channel=4
					-17, -3, 5, -19, 24, -5, 5, -11, 23,
					-- layer=1 filter=39 channel=5
					11, 97, 55, 45, 48, 38, 64, 22, 46,
					-- layer=1 filter=39 channel=6
					16, 1, -34, 10, -31, -12, 0, -32, 28,
					-- layer=1 filter=39 channel=7
					9, 20, 10, -3, -19, -4, -14, -14, -7,
					-- layer=1 filter=39 channel=8
					7, -6, -7, 0, -24, 12, -7, 9, 50,
					-- layer=1 filter=39 channel=9
					19, 39, -6, 12, 8, -45, 23, -45, 13,
					-- layer=1 filter=39 channel=10
					-16, -22, 29, 3, -10, 31, 12, 12, -33,
					-- layer=1 filter=39 channel=11
					0, -6, -15, 20, 0, -19, 2, 12, -13,
					-- layer=1 filter=39 channel=12
					65, -12, -15, 15, -37, 55, -21, 43, 91,
					-- layer=1 filter=39 channel=13
					6, 37, -9, -16, 14, -8, -12, -29, -26,
					-- layer=1 filter=39 channel=14
					-8, 36, 11, 32, 39, -6, 30, -17, -75,
					-- layer=1 filter=39 channel=15
					-6, 38, 29, 26, 10, 8, -23, -19, 10,
					-- layer=1 filter=39 channel=16
					-4, 64, 4, 15, -11, -62, 12, -73, -84,
					-- layer=1 filter=39 channel=17
					-10, 24, -19, -19, 7, -41, -31, -36, -13,
					-- layer=1 filter=39 channel=18
					-15, -6, 7, -8, -6, 56, -14, 17, 31,
					-- layer=1 filter=39 channel=19
					-46, 21, -7, -18, 0, 19, 4, 8, -23,
					-- layer=1 filter=39 channel=20
					12, 3, -13, 11, -50, -7, -24, -6, 19,
					-- layer=1 filter=39 channel=21
					31, 105, 130, 73, 109, 73, 29, 40, -36,
					-- layer=1 filter=39 channel=22
					19, -5, -14, 7, 2, 68, 22, 15, 22,
					-- layer=1 filter=39 channel=23
					-45, -50, -44, -16, 13, 72, -22, 5, -31,
					-- layer=1 filter=39 channel=24
					-16, 10, 5, -10, -8, -11, 17, -19, -5,
					-- layer=1 filter=39 channel=25
					10, 52, 47, 52, 74, 34, 71, 13, 53,
					-- layer=1 filter=39 channel=26
					18, 17, -27, -4, -11, -32, 12, -7, -18,
					-- layer=1 filter=39 channel=27
					32, 110, 171, 82, 136, 98, 74, 66, -51,
					-- layer=1 filter=39 channel=28
					-3, 35, 7, 3, -34, -33, 15, -18, 8,
					-- layer=1 filter=39 channel=29
					21, 14, 30, -52, -36, -9, -95, -91, -21,
					-- layer=1 filter=39 channel=30
					-8, 17, -22, -17, -17, -15, -6, -51, 5,
					-- layer=1 filter=39 channel=31
					17, -3, 10, -5, 16, 56, 14, 22, -8,
					-- layer=1 filter=40 channel=0
					13, 2, -29, -17, 17, -16, 18, -15, -21,
					-- layer=1 filter=40 channel=1
					0, -27, 7, 8, 10, 16, -10, -9, 6,
					-- layer=1 filter=40 channel=2
					14, 4, -26, 0, 10, -20, -16, -3, 7,
					-- layer=1 filter=40 channel=3
					-9, 10, -14, 13, 15, 3, 9, 9, -9,
					-- layer=1 filter=40 channel=4
					-15, -2, -15, 0, 12, 0, -15, -17, -1,
					-- layer=1 filter=40 channel=5
					-96, -88, -14, -60, -68, -30, -17, -62, -53,
					-- layer=1 filter=40 channel=6
					5, 8, -15, 4, -16, -29, 30, -17, -22,
					-- layer=1 filter=40 channel=7
					-12, 16, -11, 1, 3, -20, -2, -13, -20,
					-- layer=1 filter=40 channel=8
					17, 13, -45, -10, 6, -31, 8, -9, 0,
					-- layer=1 filter=40 channel=9
					8, -4, 0, 2, 7, -20, 7, 5, -30,
					-- layer=1 filter=40 channel=10
					-18, -16, 4, -8, -22, -3, 6, 32, 10,
					-- layer=1 filter=40 channel=11
					-16, 17, 12, 16, -1, 4, 0, -13, 3,
					-- layer=1 filter=40 channel=12
					-2, -49, -25, -6, -28, -4, -17, -14, -3,
					-- layer=1 filter=40 channel=13
					-3, 13, 3, 40, 3, -18, 48, 7, -28,
					-- layer=1 filter=40 channel=14
					0, 10, 40, 31, 17, 3, 29, 36, 2,
					-- layer=1 filter=40 channel=15
					8, 11, -13, 20, -2, -26, 26, -13, -13,
					-- layer=1 filter=40 channel=16
					25, 29, 3, 8, 8, -25, 29, 22, -24,
					-- layer=1 filter=40 channel=17
					3, -12, -17, -4, 8, -33, 5, -27, -18,
					-- layer=1 filter=40 channel=18
					-15, -94, -74, -72, -62, -69, -22, -52, 37,
					-- layer=1 filter=40 channel=19
					-100, -80, -42, -100, -124, -90, -38, -68, -37,
					-- layer=1 filter=40 channel=20
					5, -9, -45, 1, 12, -50, 4, -8, -16,
					-- layer=1 filter=40 channel=21
					50, 10, 89, 66, 39, 56, 46, 50, 22,
					-- layer=1 filter=40 channel=22
					2, -21, -33, 4, -78, -43, -58, -57, -68,
					-- layer=1 filter=40 channel=23
					-18, -29, 25, 25, -65, -12, 11, -10, -40,
					-- layer=1 filter=40 channel=24
					29, 7, -12, 28, -3, -5, 32, -4, -33,
					-- layer=1 filter=40 channel=25
					-85, -56, -7, -39, -46, -75, 2, -42, -47,
					-- layer=1 filter=40 channel=26
					8, -11, 6, 23, -13, 2, 26, 17, -14,
					-- layer=1 filter=40 channel=27
					49, 12, 69, 75, 41, 85, 71, 64, 58,
					-- layer=1 filter=40 channel=28
					26, -13, 7, -3, 14, -20, 7, -7, -12,
					-- layer=1 filter=40 channel=29
					2, -18, -28, 16, 21, -23, 34, -11, 2,
					-- layer=1 filter=40 channel=30
					11, 5, -23, -21, 12, -42, 24, -15, -42,
					-- layer=1 filter=40 channel=31
					-23, 5, -28, -11, -39, 11, -28, 0, 28,
					-- layer=1 filter=41 channel=0
					-8, 9, 2, -11, -12, -23, 13, 14, 1,
					-- layer=1 filter=41 channel=1
					-18, 8, -22, 17, -32, -29, -6, -24, -23,
					-- layer=1 filter=41 channel=2
					0, 19, -39, -5, -4, 2, -18, -25, -41,
					-- layer=1 filter=41 channel=3
					17, 29, 20, -21, 2, -31, -27, 15, -4,
					-- layer=1 filter=41 channel=4
					-20, 0, 21, 0, -2, -7, -10, 3, -13,
					-- layer=1 filter=41 channel=5
					50, -25, 5, 4, 27, 4, 2, 7, -1,
					-- layer=1 filter=41 channel=6
					6, 7, -5, 26, 14, 17, 17, 1, -17,
					-- layer=1 filter=41 channel=7
					10, -8, 2, -10, 14, 7, -8, -1, -20,
					-- layer=1 filter=41 channel=8
					19, 24, -25, 23, -23, -23, 10, -21, 1,
					-- layer=1 filter=41 channel=9
					11, 6, -37, -16, -25, -22, -25, 3, -39,
					-- layer=1 filter=41 channel=10
					16, -4, -13, -53, -48, -57, -7, -38, -35,
					-- layer=1 filter=41 channel=11
					-20, 15, -13, -15, 12, -14, 18, 4, 18,
					-- layer=1 filter=41 channel=12
					-8, 30, -27, 0, -13, -27, 1, -17, -14,
					-- layer=1 filter=41 channel=13
					32, 18, -2, 13, 5, 22, 1, 24, 17,
					-- layer=1 filter=41 channel=14
					48, 6, -12, -44, -25, -9, -8, -12, -14,
					-- layer=1 filter=41 channel=15
					-3, 9, 4, -5, 22, 19, 22, -26, 5,
					-- layer=1 filter=41 channel=16
					-12, -24, -43, -37, -53, -63, -39, -29, -77,
					-- layer=1 filter=41 channel=17
					0, 18, -15, 13, 24, 23, 19, 18, -15,
					-- layer=1 filter=41 channel=18
					-42, 37, -22, -5, 12, 29, 19, 6, -24,
					-- layer=1 filter=41 channel=19
					-4, -9, -3, 14, 21, -7, -30, 8, -47,
					-- layer=1 filter=41 channel=20
					-5, 10, -12, 2, -12, 15, -3, -12, 17,
					-- layer=1 filter=41 channel=21
					49, -25, -3, 1, -4, -7, 14, 15, -10,
					-- layer=1 filter=41 channel=22
					4, -20, -9, 7, -20, 8, 46, 21, 8,
					-- layer=1 filter=41 channel=23
					37, -13, 18, -7, -27, 15, 17, -16, -25,
					-- layer=1 filter=41 channel=24
					16, -7, 4, 2, 28, -1, 27, -1, 23,
					-- layer=1 filter=41 channel=25
					53, 1, -23, 5, 7, 9, -15, 2, -10,
					-- layer=1 filter=41 channel=26
					28, 16, -1, 13, 2, -11, 24, -21, 5,
					-- layer=1 filter=41 channel=27
					21, -78, 31, 8, -44, -44, -24, -37, 2,
					-- layer=1 filter=41 channel=28
					-5, -6, 24, 21, 0, -16, -2, -16, 20,
					-- layer=1 filter=41 channel=29
					-17, 9, 8, 14, 35, 35, 9, 53, 39,
					-- layer=1 filter=41 channel=30
					13, 26, 7, -3, -19, -22, 15, 0, -17,
					-- layer=1 filter=41 channel=31
					17, -5, 28, -40, -13, 4, 40, 7, -1,
					-- layer=1 filter=42 channel=0
					-5, 11, 7, -26, 8, 21, 0, 19, -1,
					-- layer=1 filter=42 channel=1
					-16, 2, 3, -3, 12, 26, -17, 23, 32,
					-- layer=1 filter=42 channel=2
					-21, -10, -5, 9, -29, 1, -4, 15, 35,
					-- layer=1 filter=42 channel=3
					-34, -1, 1, -26, 9, 5, -8, 8, -4,
					-- layer=1 filter=42 channel=4
					-7, 6, -4, -15, 13, 2, -15, 17, -11,
					-- layer=1 filter=42 channel=5
					-96, -114, -136, -58, -37, -99, 3, -24, -24,
					-- layer=1 filter=42 channel=6
					-9, 12, 25, -20, 1, 5, -24, 22, 7,
					-- layer=1 filter=42 channel=7
					-16, -17, -9, 11, -6, 7, -3, -17, -10,
					-- layer=1 filter=42 channel=8
					-15, 15, 8, 26, -9, -9, 16, 16, 40,
					-- layer=1 filter=42 channel=9
					-37, -25, 7, -13, 7, 0, -26, 12, 24,
					-- layer=1 filter=42 channel=10
					-16, -19, 20, -10, -2, 5, 22, 8, 22,
					-- layer=1 filter=42 channel=11
					14, -11, 20, -3, 16, -17, 2, -3, 6,
					-- layer=1 filter=42 channel=12
					-34, -19, -3, 1, -4, 3, 4, 17, 48,
					-- layer=1 filter=42 channel=13
					-25, -23, -3, 8, -5, -26, -7, -23, -23,
					-- layer=1 filter=42 channel=14
					-21, -14, 12, -54, 40, -24, -10, -3, 10,
					-- layer=1 filter=42 channel=15
					33, -17, 30, -5, -8, 22, -30, 41, 0,
					-- layer=1 filter=42 channel=16
					-15, 3, -4, -37, -3, -3, -22, 4, 31,
					-- layer=1 filter=42 channel=17
					31, -19, -12, -8, 17, 0, 29, -3, 15,
					-- layer=1 filter=42 channel=18
					13, 2, 6, 4, 5, 24, 47, 58, 42,
					-- layer=1 filter=42 channel=19
					-15, -45, -47, -49, -37, -24, 14, -10, -12,
					-- layer=1 filter=42 channel=20
					0, -23, -10, 6, 11, -3, 0, 15, 13,
					-- layer=1 filter=42 channel=21
					39, 16, 7, -15, 58, -29, 55, 58, -8,
					-- layer=1 filter=42 channel=22
					-28, -39, -57, -14, -2, -26, -43, -65, -34,
					-- layer=1 filter=42 channel=23
					-25, -21, -49, -35, 17, 7, -3, 21, 28,
					-- layer=1 filter=42 channel=24
					2, 2, 11, -5, 25, 22, -24, 6, -12,
					-- layer=1 filter=42 channel=25
					-103, -134, -88, -76, -51, -74, -12, -41, -28,
					-- layer=1 filter=42 channel=26
					-14, -17, 7, -5, 25, -3, -5, 25, 19,
					-- layer=1 filter=42 channel=27
					99, 71, 22, 121, 114, 22, 146, 125, 37,
					-- layer=1 filter=42 channel=28
					13, -22, -8, -13, 7, 16, -5, -10, 12,
					-- layer=1 filter=42 channel=29
					27, -33, 5, 0, -29, 7, -5, -15, -13,
					-- layer=1 filter=42 channel=30
					0, -10, -20, -32, 4, 22, 12, -14, -4,
					-- layer=1 filter=42 channel=31
					-51, -50, -43, -18, -35, -37, 33, 2, 24,
					-- layer=1 filter=43 channel=0
					15, -9, 3, 0, 7, 22, 3, -10, 25,
					-- layer=1 filter=43 channel=1
					10, 14, 33, 31, 48, 54, 19, 37, 33,
					-- layer=1 filter=43 channel=2
					-32, -3, 6, -34, -7, -14, -27, -29, 3,
					-- layer=1 filter=43 channel=3
					13, 13, 14, -23, -12, 9, 15, 23, 2,
					-- layer=1 filter=43 channel=4
					-13, 0, 3, -11, 11, -4, -16, -12, -14,
					-- layer=1 filter=43 channel=5
					20, 42, 53, -94, -68, -49, -47, -62, -65,
					-- layer=1 filter=43 channel=6
					-27, -10, 9, -11, 22, -10, 13, -6, 23,
					-- layer=1 filter=43 channel=7
					-1, 2, 0, -6, 20, 14, 2, 18, 10,
					-- layer=1 filter=43 channel=8
					-20, -33, 24, -2, -13, 10, 2, 7, 14,
					-- layer=1 filter=43 channel=9
					-2, -22, -19, 2, -32, -12, -4, 6, -22,
					-- layer=1 filter=43 channel=10
					15, -9, 20, 24, 10, 15, -21, 10, 14,
					-- layer=1 filter=43 channel=11
					20, 15, 20, -2, -17, -19, -12, 5, -15,
					-- layer=1 filter=43 channel=12
					3, 8, 3, 40, 20, 34, -15, 10, 25,
					-- layer=1 filter=43 channel=13
					-4, -27, 5, 1, -4, -16, 16, 13, 13,
					-- layer=1 filter=43 channel=14
					-38, -29, 25, -31, -23, -19, -1, 15, 0,
					-- layer=1 filter=43 channel=15
					-16, 12, -9, 11, 7, -13, -11, -24, 0,
					-- layer=1 filter=43 channel=16
					-3, -8, 28, -16, -11, 14, -7, -9, 29,
					-- layer=1 filter=43 channel=17
					47, 0, 56, 4, -6, -3, -3, 17, 3,
					-- layer=1 filter=43 channel=18
					-12, -21, 49, -124, -129, -34, -59, -89, -55,
					-- layer=1 filter=43 channel=19
					-11, -37, 16, -113, -87, -73, -10, -47, -59,
					-- layer=1 filter=43 channel=20
					-12, -17, 0, -26, -36, -18, 4, -12, -14,
					-- layer=1 filter=43 channel=21
					-102, -163, -87, -143, -199, -126, -186, -186, -142,
					-- layer=1 filter=43 channel=22
					14, 22, -17, 46, 8, 22, 21, 48, 2,
					-- layer=1 filter=43 channel=23
					-27, -8, -2, -9, -3, -14, -51, -8, -36,
					-- layer=1 filter=43 channel=24
					-8, -2, 20, 12, 5, -10, -13, 22, -2,
					-- layer=1 filter=43 channel=25
					21, -15, 31, -63, -90, -63, -27, -14, -104,
					-- layer=1 filter=43 channel=26
					0, 12, 4, 22, 0, 23, 23, 10, 12,
					-- layer=1 filter=43 channel=27
					-47, -163, -121, -196, -254, -263, -162, -277, -235,
					-- layer=1 filter=43 channel=28
					11, -19, 3, 22, -8, -19, 24, -7, 13,
					-- layer=1 filter=43 channel=29
					-1, -11, 10, -1, -11, -11, 24, -5, 5,
					-- layer=1 filter=43 channel=30
					-12, 5, 10, -48, -38, -25, -20, 0, -10,
					-- layer=1 filter=43 channel=31
					17, -31, 21, -10, 10, -11, 25, 14, 8,
					-- layer=1 filter=44 channel=0
					1, -6, -20, 8, 9, 4, 27, -9, 13,
					-- layer=1 filter=44 channel=1
					27, 26, 0, 39, 20, 35, 42, 40, 48,
					-- layer=1 filter=44 channel=2
					-7, -33, 2, -43, -30, -36, -20, -30, -22,
					-- layer=1 filter=44 channel=3
					-20, -14, 18, 13, 27, -4, 30, 30, 9,
					-- layer=1 filter=44 channel=4
					-18, 9, 2, 18, 10, -15, 15, 4, 6,
					-- layer=1 filter=44 channel=5
					14, 64, 19, 22, 47, 41, 31, 15, 29,
					-- layer=1 filter=44 channel=6
					-3, 4, -19, 15, 10, 0, -4, 14, 1,
					-- layer=1 filter=44 channel=7
					-13, 6, 14, 9, 4, -5, -2, -9, 11,
					-- layer=1 filter=44 channel=8
					3, -40, -50, -52, -59, -42, -36, -66, -43,
					-- layer=1 filter=44 channel=9
					-15, 9, -6, -18, -14, -16, -8, -12, 2,
					-- layer=1 filter=44 channel=10
					15, 9, 3, 17, 10, -10, 19, -1, -7,
					-- layer=1 filter=44 channel=11
					-16, -19, 18, 4, -6, -10, -21, -3, 20,
					-- layer=1 filter=44 channel=12
					22, -14, 12, -9, 2, 29, 7, 6, 27,
					-- layer=1 filter=44 channel=13
					-6, -1, -11, -10, 26, 25, 25, 29, 19,
					-- layer=1 filter=44 channel=14
					-30, -11, 17, -11, 3, 4, 18, -10, 5,
					-- layer=1 filter=44 channel=15
					7, 16, 4, -18, -1, 6, 12, -5, -15,
					-- layer=1 filter=44 channel=16
					-29, -4, 0, -23, -45, -51, -32, -10, -40,
					-- layer=1 filter=44 channel=17
					-35, -11, -40, -18, -27, -15, -45, -49, -40,
					-- layer=1 filter=44 channel=18
					17, 12, -10, -17, -34, 56, -15, 0, -11,
					-- layer=1 filter=44 channel=19
					21, -1, -16, -41, -7, 7, -16, -36, -34,
					-- layer=1 filter=44 channel=20
					-6, -19, -9, -22, 0, 32, -8, 18, -7,
					-- layer=1 filter=44 channel=21
					-10, -35, -15, 9, -42, 19, 4, -54, -40,
					-- layer=1 filter=44 channel=22
					6, -4, 3, -21, -48, -8, -10, -34, -17,
					-- layer=1 filter=44 channel=23
					23, 21, 5, -19, -45, 0, 26, -43, -31,
					-- layer=1 filter=44 channel=24
					7, 1, 12, 26, -5, 6, 21, -13, -6,
					-- layer=1 filter=44 channel=25
					16, 9, 5, 21, 39, 32, 33, 48, 16,
					-- layer=1 filter=44 channel=26
					-12, -19, -15, 29, 27, -10, 11, 29, 3,
					-- layer=1 filter=44 channel=27
					-7, -29, 22, -15, -45, -6, -66, -96, -36,
					-- layer=1 filter=44 channel=28
					8, 15, -14, 12, 11, 0, 23, 3, 11,
					-- layer=1 filter=44 channel=29
					-25, -17, -17, -5, 12, 33, -12, -6, 19,
					-- layer=1 filter=44 channel=30
					1, -20, -30, -19, -18, -16, 4, -7, 4,
					-- layer=1 filter=44 channel=31
					16, 0, 1, 32, 52, 1, 13, -4, 24,
					-- layer=1 filter=45 channel=0
					-1, 10, 1, -6, -4, 0, -24, 0, -6,
					-- layer=1 filter=45 channel=1
					-5, -14, 0, -30, -9, -9, -37, -8, 40,
					-- layer=1 filter=45 channel=2
					26, 2, 2, -13, 0, 8, -18, -27, 7,
					-- layer=1 filter=45 channel=3
					-11, -6, 5, -33, 0, 20, 1, -24, -16,
					-- layer=1 filter=45 channel=4
					0, -23, 15, 5, -5, -6, -2, -12, 1,
					-- layer=1 filter=45 channel=5
					-40, -62, 24, -38, -1, 38, 16, -2, 4,
					-- layer=1 filter=45 channel=6
					24, 7, 19, -3, 15, -11, -12, 15, 14,
					-- layer=1 filter=45 channel=7
					10, -8, 3, 17, 14, -13, 4, 0, 2,
					-- layer=1 filter=45 channel=8
					32, 3, -7, -2, 18, 13, 15, -14, -3,
					-- layer=1 filter=45 channel=9
					1, 19, -10, -32, 10, -22, -32, -24, -5,
					-- layer=1 filter=45 channel=10
					-3, -3, 21, -46, -29, -15, -56, -5, 16,
					-- layer=1 filter=45 channel=11
					20, -14, -20, -12, -16, 2, -15, 1, 14,
					-- layer=1 filter=45 channel=12
					-20, 6, 9, -14, -12, 16, -40, -27, 19,
					-- layer=1 filter=45 channel=13
					38, 3, 19, 34, 11, 3, 36, 24, -15,
					-- layer=1 filter=45 channel=14
					-43, -41, 14, -58, -21, -12, -37, -11, -7,
					-- layer=1 filter=45 channel=15
					16, 15, -20, 24, -6, 0, 37, 7, -20,
					-- layer=1 filter=45 channel=16
					-2, 10, -16, -44, -39, -22, -36, -44, -16,
					-- layer=1 filter=45 channel=17
					24, 34, 19, 17, 31, 17, 26, 16, -22,
					-- layer=1 filter=45 channel=18
					-64, -71, 23, -33, -61, 30, -29, -59, -22,
					-- layer=1 filter=45 channel=19
					-33, -34, 9, -39, -26, 7, 49, -8, 12,
					-- layer=1 filter=45 channel=20
					26, -12, 19, 36, -12, -21, -1, -22, -2,
					-- layer=1 filter=45 channel=21
					-116, -110, -78, -111, -85, -87, -101, -49, -58,
					-- layer=1 filter=45 channel=22
					-21, -46, -51, 14, -1, -34, 33, 56, 62,
					-- layer=1 filter=45 channel=23
					-60, -70, -35, -86, -111, -88, -77, -15, 9,
					-- layer=1 filter=45 channel=24
					36, 27, 6, 29, 2, 7, 4, -4, -4,
					-- layer=1 filter=45 channel=25
					-56, -37, 3, -51, 32, 16, 15, 2, -6,
					-- layer=1 filter=45 channel=26
					-9, 1, 1, 0, 10, -12, -31, -14, 4,
					-- layer=1 filter=45 channel=27
					-139, -160, 3, -95, -63, -42, -94, -94, -59,
					-- layer=1 filter=45 channel=28
					23, 30, 26, 6, 29, -4, 3, 3, -23,
					-- layer=1 filter=45 channel=29
					32, -7, -13, 18, 4, -1, 61, 3, 0,
					-- layer=1 filter=45 channel=30
					-15, 15, 31, -4, -9, -4, 22, -24, -8,
					-- layer=1 filter=45 channel=31
					-53, -88, -23, -53, -72, -44, -61, -28, -13,
					-- layer=1 filter=46 channel=0
					-9, -4, 11, 11, 9, 11, 14, 5, 6,
					-- layer=1 filter=46 channel=1
					26, -14, -12, 24, -10, -9, 10, -6, 1,
					-- layer=1 filter=46 channel=2
					24, -17, 9, 18, -37, 6, -11, -1, -8,
					-- layer=1 filter=46 channel=3
					0, 13, -38, -16, 15, -25, 9, 26, 7,
					-- layer=1 filter=46 channel=4
					-20, 5, 1, 17, 17, 9, 0, -11, -14,
					-- layer=1 filter=46 channel=5
					-30, -18, -12, -43, -72, -23, -16, -72, -40,
					-- layer=1 filter=46 channel=6
					-1, 3, -30, 10, 37, -41, 15, 16, 0,
					-- layer=1 filter=46 channel=7
					12, 16, 3, 1, -1, -1, 12, -3, -2,
					-- layer=1 filter=46 channel=8
					13, -24, 36, 26, -50, 25, 15, -16, -20,
					-- layer=1 filter=46 channel=9
					-10, 6, -29, 7, 40, -34, -20, 25, -43,
					-- layer=1 filter=46 channel=10
					-14, 35, -40, -30, 37, -17, 4, 14, -2,
					-- layer=1 filter=46 channel=11
					16, -8, 12, 0, 6, 6, 17, 19, -19,
					-- layer=1 filter=46 channel=12
					31, -83, 34, 47, -60, 36, 41, -42, 15,
					-- layer=1 filter=46 channel=13
					8, 17, -38, -16, 45, 0, 0, 36, -27,
					-- layer=1 filter=46 channel=14
					-86, 94, -108, -77, 74, -72, -44, 27, -15,
					-- layer=1 filter=46 channel=15
					15, 10, -32, -18, 57, -54, -26, 63, -23,
					-- layer=1 filter=46 channel=16
					-38, 29, -28, -19, 17, -24, -5, 4, -8,
					-- layer=1 filter=46 channel=17
					0, -41, 38, 27, -67, 18, 16, -25, 26,
					-- layer=1 filter=46 channel=18
					95, -78, 90, 82, -97, 108, 0, -47, 41,
					-- layer=1 filter=46 channel=19
					35, -56, 48, 17, -67, 45, 6, -71, -43,
					-- layer=1 filter=46 channel=20
					24, -10, -10, 17, 4, 5, 16, 6, 5,
					-- layer=1 filter=46 channel=21
					-47, 126, -111, -116, 130, -51, -120, 48, 27,
					-- layer=1 filter=46 channel=22
					-27, -2, -58, -4, 5, -5, -9, -19, 8,
					-- layer=1 filter=46 channel=23
					-40, 57, -41, -40, 40, -38, -37, -2, 31,
					-- layer=1 filter=46 channel=24
					0, 26, -20, -31, 35, -50, -4, 12, 1,
					-- layer=1 filter=46 channel=25
					-28, -23, -32, -45, -61, -4, -9, -48, -40,
					-- layer=1 filter=46 channel=26
					-33, 43, -52, -2, 20, -59, 16, 4, 0,
					-- layer=1 filter=46 channel=27
					-17, 135, 24, 7, 113, 66, 0, 96, 148,
					-- layer=1 filter=46 channel=28
					1, -8, -11, -4, 25, -37, 19, 3, -25,
					-- layer=1 filter=46 channel=29
					1, -45, -10, 19, -16, 12, 45, 18, -9,
					-- layer=1 filter=46 channel=30
					12, -14, -22, 13, -28, -9, 23, 12, -1,
					-- layer=1 filter=46 channel=31
					0, 3, -74, 17, 1, -34, 27, -14, 14,
					-- layer=1 filter=47 channel=0
					29, 34, -5, 16, 28, 32, 0, 0, -14,
					-- layer=1 filter=47 channel=1
					6, 37, -3, 54, 45, 48, 10, 47, 29,
					-- layer=1 filter=47 channel=2
					-17, -4, -11, -4, -34, -37, -26, -29, 1,
					-- layer=1 filter=47 channel=3
					24, 35, 30, 46, 65, 41, 16, 58, 5,
					-- layer=1 filter=47 channel=4
					20, 10, 2, -25, -17, -11, 7, 18, 4,
					-- layer=1 filter=47 channel=5
					-2, 11, 36, -31, 25, 26, 24, 18, 3,
					-- layer=1 filter=47 channel=6
					-2, 4, 5, 28, 3, -1, -2, 0, -5,
					-- layer=1 filter=47 channel=7
					11, 0, -3, -19, -13, 8, 8, 18, 0,
					-- layer=1 filter=47 channel=8
					-11, -24, -2, -45, -34, -43, -33, -73, -22,
					-- layer=1 filter=47 channel=9
					6, 15, -16, -14, -4, 28, -12, -11, 2,
					-- layer=1 filter=47 channel=10
					-31, -14, -30, -26, 10, 8, -35, -14, -31,
					-- layer=1 filter=47 channel=11
					5, 2, -19, 18, 18, 8, -17, 0, 5,
					-- layer=1 filter=47 channel=12
					7, 10, -17, 33, 27, 30, 16, 57, 1,
					-- layer=1 filter=47 channel=13
					41, 38, 18, 32, 25, -2, 69, 17, 24,
					-- layer=1 filter=47 channel=14
					-11, 13, 28, -18, -1, 17, -11, 32, 1,
					-- layer=1 filter=47 channel=15
					12, 34, -15, 1, -22, 3, 9, 33, 22,
					-- layer=1 filter=47 channel=16
					-67, -36, -21, -75, -53, -55, -84, -35, -22,
					-- layer=1 filter=47 channel=17
					0, -14, -9, -35, -42, -45, -31, -53, -67,
					-- layer=1 filter=47 channel=18
					-2, -41, 21, 15, -11, 41, 34, 58, 47,
					-- layer=1 filter=47 channel=19
					-29, -41, -19, -43, -62, -40, 28, -1, -27,
					-- layer=1 filter=47 channel=20
					6, 12, 17, 23, -6, -1, 3, 22, 43,
					-- layer=1 filter=47 channel=21
					-25, -41, -12, 10, -13, -13, -9, -1, -12,
					-- layer=1 filter=47 channel=22
					-36, -36, -24, -8, -52, -1, 23, 3, 12,
					-- layer=1 filter=47 channel=23
					-56, -45, -32, -54, -80, -45, -39, -12, -28,
					-- layer=1 filter=47 channel=24
					11, 6, -9, 13, -14, -22, 6, -6, -15,
					-- layer=1 filter=47 channel=25
					15, 21, 10, -10, -1, 31, 64, 40, 18,
					-- layer=1 filter=47 channel=26
					27, 8, 27, 39, 25, 38, 20, 0, 24,
					-- layer=1 filter=47 channel=27
					0, -79, -45, -69, -80, -117, -41, -99, -79,
					-- layer=1 filter=47 channel=28
					25, 30, -13, 27, 14, -1, 12, -6, 20,
					-- layer=1 filter=47 channel=29
					63, 39, 28, 45, 42, 9, 59, 29, 38,
					-- layer=1 filter=47 channel=30
					15, 11, 3, 30, 42, 29, 22, 12, 21,
					-- layer=1 filter=47 channel=31
					56, 62, 51, 41, 73, 66, 92, 89, 81,
					-- layer=1 filter=48 channel=0
					-14, 2, 16, -23, 10, -7, 1, 4, 20,
					-- layer=1 filter=48 channel=1
					19, 7, -9, 7, -22, 0, 1, -10, 2,
					-- layer=1 filter=48 channel=2
					-11, -16, 7, -13, -5, 18, 12, 9, -11,
					-- layer=1 filter=48 channel=3
					8, 20, 3, -9, 8, -6, -14, 2, -5,
					-- layer=1 filter=48 channel=4
					-2, 3, -11, 0, -10, 20, -17, 2, -10,
					-- layer=1 filter=48 channel=5
					-20, -12, 2, -1, 6, -3, 1, 10, 40,
					-- layer=1 filter=48 channel=6
					7, 1, 1, 15, -18, 16, -15, -18, 0,
					-- layer=1 filter=48 channel=7
					17, -12, -10, -17, -20, 19, -8, 11, -11,
					-- layer=1 filter=48 channel=8
					11, 4, 8, -12, 26, 20, -8, 7, 23,
					-- layer=1 filter=48 channel=9
					20, 28, 10, -10, -15, 0, 15, -17, 13,
					-- layer=1 filter=48 channel=10
					17, 12, 20, 23, 19, -11, 9, 19, -14,
					-- layer=1 filter=48 channel=11
					0, -4, 10, 0, 0, 9, 18, -3, 16,
					-- layer=1 filter=48 channel=12
					-6, 0, 4, -9, -23, -7, 3, 0, 8,
					-- layer=1 filter=48 channel=13
					-44, -4, -7, -25, -30, -29, -43, -33, -19,
					-- layer=1 filter=48 channel=14
					-21, 16, 5, 0, 4, 0, 0, -16, 9,
					-- layer=1 filter=48 channel=15
					-17, -2, -19, 17, -18, 19, 4, -18, -10,
					-- layer=1 filter=48 channel=16
					18, 37, 29, -5, 16, -15, 24, 33, 7,
					-- layer=1 filter=48 channel=17
					-10, -7, 32, 12, -9, 11, 4, 27, 23,
					-- layer=1 filter=48 channel=18
					-16, 7, 5, -24, -24, 15, 22, 30, 5,
					-- layer=1 filter=48 channel=19
					-5, -19, -11, 24, -19, -6, 12, -16, 42,
					-- layer=1 filter=48 channel=20
					-3, 4, 15, -29, 2, 18, -21, 7, 0,
					-- layer=1 filter=48 channel=21
					-10, 45, 2, 21, 21, 12, 8, 59, 24,
					-- layer=1 filter=48 channel=22
					-71, -45, -47, -58, -56, -53, -39, -77, -17,
					-- layer=1 filter=48 channel=23
					7, -14, -2, 37, 19, 29, 38, -25, 28,
					-- layer=1 filter=48 channel=24
					4, -6, -3, 8, 8, 0, 17, -18, -7,
					-- layer=1 filter=48 channel=25
					-39, -27, -39, -38, -31, -34, -18, -12, 9,
					-- layer=1 filter=48 channel=26
					15, -5, 4, 9, 5, 13, -16, -19, -15,
					-- layer=1 filter=48 channel=27
					-10, -18, 26, 1, 12, 19, 21, 66, 39,
					-- layer=1 filter=48 channel=28
					-1, 1, 9, 8, -13, 0, 0, -13, 14,
					-- layer=1 filter=48 channel=29
					-48, -45, -45, -59, -43, -40, -60, -62, -27,
					-- layer=1 filter=48 channel=30
					-11, -6, -22, -10, -3, -28, -14, -11, 19,
					-- layer=1 filter=48 channel=31
					-28, -18, -45, -54, -43, -54, -19, -34, -26,
					-- layer=1 filter=49 channel=0
					17, -25, -14, -14, -44, -46, -44, -76, -11,
					-- layer=1 filter=49 channel=1
					23, -17, -9, -32, -63, 22, -77, -7, 14,
					-- layer=1 filter=49 channel=2
					4, 28, -22, 22, -27, -38, -14, -32, 29,
					-- layer=1 filter=49 channel=3
					-2, 46, 9, -17, -3, -28, 2, -35, -100,
					-- layer=1 filter=49 channel=4
					19, -18, -16, -8, -2, -16, -7, -13, 11,
					-- layer=1 filter=49 channel=5
					-5, 24, 42, 57, 89, 24, 83, -35, -51,
					-- layer=1 filter=49 channel=6
					1, 11, -13, -2, 2, -20, -48, -48, -14,
					-- layer=1 filter=49 channel=7
					9, -4, -12, -5, -11, 21, -17, 18, -6,
					-- layer=1 filter=49 channel=8
					27, -20, -55, 0, 3, -14, -14, -9, 60,
					-- layer=1 filter=49 channel=9
					-39, 87, 25, 13, 48, -10, -16, -64, -6,
					-- layer=1 filter=49 channel=10
					4, 14, -22, -30, -19, 36, -3, 25, 30,
					-- layer=1 filter=49 channel=11
					2, -18, -5, -18, -18, -12, -15, -13, 4,
					-- layer=1 filter=49 channel=12
					82, 6, -33, 28, -90, -33, -49, -41, 45,
					-- layer=1 filter=49 channel=13
					13, 35, 14, 46, 65, 40, 49, 27, -24,
					-- layer=1 filter=49 channel=14
					35, 70, 35, -10, 35, -11, 5, -7, -103,
					-- layer=1 filter=49 channel=15
					-17, 54, -36, 16, 20, -30, -19, -30, -22,
					-- layer=1 filter=49 channel=16
					13, 83, 54, 19, 31, -15, 3, -29, -37,
					-- layer=1 filter=49 channel=17
					15, -9, -18, 62, 56, 8, 65, 48, 34,
					-- layer=1 filter=49 channel=18
					29, -48, -52, -18, -5, -40, 21, -59, 46,
					-- layer=1 filter=49 channel=19
					7, 12, -22, 9, 39, -2, 44, -1, -36,
					-- layer=1 filter=49 channel=20
					38, 2, -41, 43, -21, -25, 13, 14, 9,
					-- layer=1 filter=49 channel=21
					12, 65, 64, 27, 73, -1, 33, -1, -147,
					-- layer=1 filter=49 channel=22
					25, -6, -59, 72, 37, 61, -11, 53, 74,
					-- layer=1 filter=49 channel=23
					5, -31, -113, -31, -69, -71, -71, -27, 8,
					-- layer=1 filter=49 channel=24
					-19, 10, -8, 21, -6, -46, 3, -13, -40,
					-- layer=1 filter=49 channel=25
					15, 57, -9, 40, 86, -6, 51, 2, -35,
					-- layer=1 filter=49 channel=26
					-14, 42, 26, -32, -19, -47, -52, -57, -42,
					-- layer=1 filter=49 channel=27
					2, 46, 77, 11, 65, 51, -16, 50, -78,
					-- layer=1 filter=49 channel=28
					-4, 35, -12, 0, 6, -66, -37, -65, -44,
					-- layer=1 filter=49 channel=29
					-5, 0, 6, 30, 50, 30, 76, 54, 23,
					-- layer=1 filter=49 channel=30
					-2, 7, -70, -35, -29, -73, -27, -122, -35,
					-- layer=1 filter=49 channel=31
					-8, -38, -28, -69, -53, 12, -44, 7, -6,
					-- layer=1 filter=50 channel=0
					-14, 4, 8, -4, 0, 14, -19, -3, -14,
					-- layer=1 filter=50 channel=1
					-14, -13, -32, -23, -52, -4, 5, -15, -21,
					-- layer=1 filter=50 channel=2
					26, 25, 0, -9, -9, -9, -50, -10, -6,
					-- layer=1 filter=50 channel=3
					-19, 18, 18, -17, -17, -17, -19, 0, 2,
					-- layer=1 filter=50 channel=4
					-13, -10, 20, 1, 11, 0, 0, -13, -2,
					-- layer=1 filter=50 channel=5
					-5, 23, 41, 58, 24, 10, 54, 27, -5,
					-- layer=1 filter=50 channel=6
					19, 36, 35, 6, 7, 3, -51, -27, 0,
					-- layer=1 filter=50 channel=7
					15, 20, -19, 19, 16, 14, 6, 18, -17,
					-- layer=1 filter=50 channel=8
					8, 23, -12, 13, 23, 2, -9, -15, -24,
					-- layer=1 filter=50 channel=9
					-22, 0, -6, -8, -26, -17, -25, -55, -1,
					-- layer=1 filter=50 channel=10
					4, -37, 16, -51, -67, -7, -40, -37, -51,
					-- layer=1 filter=50 channel=11
					11, 11, 20, 10, -6, -2, -11, 1, -11,
					-- layer=1 filter=50 channel=12
					6, -22, -18, -9, -17, -13, 0, 49, -20,
					-- layer=1 filter=50 channel=13
					0, 31, 23, 23, 26, 35, -16, -19, 7,
					-- layer=1 filter=50 channel=14
					-71, -2, 39, -43, -45, 12, -50, -57, 21,
					-- layer=1 filter=50 channel=15
					24, 28, 15, -9, 21, 16, -21, -22, -23,
					-- layer=1 filter=50 channel=16
					-54, -43, -6, -50, -94, -54, -36, -80, -23,
					-- layer=1 filter=50 channel=17
					-3, 2, 12, 8, 24, -5, -6, 14, 13,
					-- layer=1 filter=50 channel=18
					38, 35, 33, 32, 71, 10, -1, 66, 2,
					-- layer=1 filter=50 channel=19
					16, -18, 12, 34, 10, -21, 16, 8, -2,
					-- layer=1 filter=50 channel=20
					30, 42, -9, 16, 15, 18, -31, 32, -22,
					-- layer=1 filter=50 channel=21
					-4, 8, 67, -13, 4, -2, -8, -16, 12,
					-- layer=1 filter=50 channel=22
					51, 3, 9, -25, -46, -40, -105, -47, -69,
					-- layer=1 filter=50 channel=23
					53, 0, 55, -105, -57, -78, -124, -74, -80,
					-- layer=1 filter=50 channel=24
					18, 2, 6, -16, 4, 4, -55, -44, 9,
					-- layer=1 filter=50 channel=25
					-36, -5, 40, 38, 54, 23, 41, 0, 23,
					-- layer=1 filter=50 channel=26
					10, 15, 14, 3, -30, 4, -28, -40, -21,
					-- layer=1 filter=50 channel=27
					-83, -79, 22, -26, -53, -46, 13, -50, 18,
					-- layer=1 filter=50 channel=28
					0, 16, 33, 11, -8, 28, -12, -23, 8,
					-- layer=1 filter=50 channel=29
					17, 42, 19, 28, 39, 42, 8, 28, 12,
					-- layer=1 filter=50 channel=30
					-19, 25, 24, 25, 23, -5, -14, 26, -13,
					-- layer=1 filter=50 channel=31
					-20, -31, -12, -3, -35, -11, -19, -35, -15,
					-- layer=1 filter=51 channel=0
					-29, -22, -6, -43, -22, -48, -36, -25, -48,
					-- layer=1 filter=51 channel=1
					-3, -9, -30, -2, 4, -16, -39, -31, -52,
					-- layer=1 filter=51 channel=2
					-50, -23, -26, -66, -15, -86, -36, -63, -58,
					-- layer=1 filter=51 channel=3
					0, -20, 12, -1, -58, -33, -5, -41, -7,
					-- layer=1 filter=51 channel=4
					-17, 12, 17, -14, 10, 16, 3, -5, -12,
					-- layer=1 filter=51 channel=5
					49, 32, 76, -58, -84, -34, 70, 71, 106,
					-- layer=1 filter=51 channel=6
					-34, -38, -13, 16, -18, -13, 11, -38, -9,
					-- layer=1 filter=51 channel=7
					13, 0, 7, -12, -12, -5, -15, 18, 6,
					-- layer=1 filter=51 channel=8
					-31, 12, -3, -23, -29, -37, -23, -10, -35,
					-- layer=1 filter=51 channel=9
					-54, -12, -18, -28, -74, -44, -33, -53, -58,
					-- layer=1 filter=51 channel=10
					-36, -31, -74, 33, 11, 16, -1, -8, 15,
					-- layer=1 filter=51 channel=11
					-13, 4, 8, -15, 10, 3, 9, -3, -3,
					-- layer=1 filter=51 channel=12
					-20, -7, -8, -20, -8, -21, -62, -23, -62,
					-- layer=1 filter=51 channel=13
					-16, -2, 0, -12, -28, -25, 36, 20, 25,
					-- layer=1 filter=51 channel=14
					13, -63, 6, 26, -78, 23, 39, -38, 15,
					-- layer=1 filter=51 channel=15
					-10, -32, -39, 24, 24, 17, 7, -5, -8,
					-- layer=1 filter=51 channel=16
					-24, -37, -34, -24, -57, -41, 4, -30, 15,
					-- layer=1 filter=51 channel=17
					17, 4, 39, -39, 6, -25, 30, 24, 31,
					-- layer=1 filter=51 channel=18
					38, 62, 71, -77, -8, -69, 6, 31, 39,
					-- layer=1 filter=51 channel=19
					17, 59, 58, -130, -56, -35, 47, 66, 86,
					-- layer=1 filter=51 channel=20
					2, -6, 19, -25, -23, -39, -7, 2, -46,
					-- layer=1 filter=51 channel=21
					21, -85, -4, 77, -90, 31, 47, -64, 12,
					-- layer=1 filter=51 channel=22
					-30, -6, -34, 84, 52, 69, -5, 12, 37,
					-- layer=1 filter=51 channel=23
					-40, -11, -48, 79, 40, 56, 4, 13, 32,
					-- layer=1 filter=51 channel=24
					-1, -17, -29, -2, 3, -14, -9, -34, -11,
					-- layer=1 filter=51 channel=25
					25, 53, 51, -61, -85, -37, 48, 43, 85,
					-- layer=1 filter=51 channel=26
					-18, -60, -44, 3, -29, 26, 1, -34, -13,
					-- layer=1 filter=51 channel=27
					51, -37, 8, 48, -51, 1, 50, 9, 13,
					-- layer=1 filter=51 channel=28
					1, -15, -13, 10, -18, -12, -5, -12, 0,
					-- layer=1 filter=51 channel=29
					0, 39, 57, -32, 13, -9, 21, 19, 24,
					-- layer=1 filter=51 channel=30
					-26, 11, 14, -23, -46, -56, 5, 24, 40,
					-- layer=1 filter=51 channel=31
					-11, -5, -3, 61, 43, 43, 5, 6, -7,
					-- layer=1 filter=52 channel=0
					-4, -27, -29, 15, -11, -25, 41, 29, 8,
					-- layer=1 filter=52 channel=1
					17, -19, 13, 15, 11, -7, 18, -7, 30,
					-- layer=1 filter=52 channel=2
					-36, -52, -5, 8, 23, 1, 51, 12, 19,
					-- layer=1 filter=52 channel=3
					4, -34, -19, -23, -1, 15, 22, 15, -3,
					-- layer=1 filter=52 channel=4
					-16, -14, -16, 10, -21, 6, -16, -12, -11,
					-- layer=1 filter=52 channel=5
					92, 50, 55, 21, 31, 78, 36, 28, 3,
					-- layer=1 filter=52 channel=6
					-5, -23, -18, 12, 20, 12, 15, 11, 10,
					-- layer=1 filter=52 channel=7
					-4, 10, 5, 16, 19, -11, -13, -14, -12,
					-- layer=1 filter=52 channel=8
					-49, -47, -19, -33, -7, -2, 9, 32, -5,
					-- layer=1 filter=52 channel=9
					13, -26, -33, 10, 8, 14, 6, 17, 16,
					-- layer=1 filter=52 channel=10
					-24, -10, 3, 33, 33, 6, 20, -9, 7,
					-- layer=1 filter=52 channel=11
					1, -12, -8, -21, -20, 18, -17, -11, 9,
					-- layer=1 filter=52 channel=12
					-28, -23, 23, -9, 16, -23, 7, -11, 7,
					-- layer=1 filter=52 channel=13
					0, -7, -27, -18, -13, 17, 5, 25, 3,
					-- layer=1 filter=52 channel=14
					-8, -18, -27, -28, -18, 3, -2, 0, -34,
					-- layer=1 filter=52 channel=15
					-1, -1, -21, 29, -6, -34, -26, 22, 35,
					-- layer=1 filter=52 channel=16
					-9, -48, -38, -11, -1, -24, 24, 40, 7,
					-- layer=1 filter=52 channel=17
					0, -20, -29, -65, -62, -19, 30, 7, 10,
					-- layer=1 filter=52 channel=18
					-5, 6, -18, 9, -86, -39, 12, 19, -64,
					-- layer=1 filter=52 channel=19
					43, 53, 20, 69, 16, 54, 76, 90, 45,
					-- layer=1 filter=52 channel=20
					17, -3, -13, 4, -21, 4, 39, 5, 27,
					-- layer=1 filter=52 channel=21
					3, -4, -30, 2, -14, -11, -7, -10, -7,
					-- layer=1 filter=52 channel=22
					15, 42, 34, 30, 57, 37, 55, 40, 38,
					-- layer=1 filter=52 channel=23
					73, 73, 53, 88, 64, 56, 69, 60, 64,
					-- layer=1 filter=52 channel=24
					14, -30, -14, 6, -3, -10, 28, 44, 37,
					-- layer=1 filter=52 channel=25
					37, 25, -14, -9, -18, 71, 22, 64, 8,
					-- layer=1 filter=52 channel=26
					11, -23, -5, 0, 9, 11, 19, 0, -6,
					-- layer=1 filter=52 channel=27
					-21, -10, -51, -65, -78, -48, -61, -51, -69,
					-- layer=1 filter=52 channel=28
					-16, -36, -3, 17, 4, 12, 34, 28, 17,
					-- layer=1 filter=52 channel=29
					-25, 15, 17, -35, -47, -3, 5, 0, -11,
					-- layer=1 filter=52 channel=30
					-23, -51, -34, -5, -18, -10, 55, 19, -2,
					-- layer=1 filter=52 channel=31
					-22, -9, 12, 18, 34, 55, 38, -3, 13,
					-- layer=1 filter=53 channel=0
					-15, 5, -17, 3, 3, 1, -25, -43, -42,
					-- layer=1 filter=53 channel=1
					18, 35, 22, 12, 20, -9, 3, -5, -23,
					-- layer=1 filter=53 channel=2
					0, -35, -27, -2, -5, -46, 1, -46, -51,
					-- layer=1 filter=53 channel=3
					24, 0, 29, 17, 9, -5, -37, 6, -17,
					-- layer=1 filter=53 channel=4
					11, 8, -9, -5, -2, 7, -17, -14, 14,
					-- layer=1 filter=53 channel=5
					35, 33, 30, 39, 43, 69, 6, 25, -10,
					-- layer=1 filter=53 channel=6
					-7, -17, 11, -15, 1, -29, -8, 9, -29,
					-- layer=1 filter=53 channel=7
					-14, 20, -4, 0, 12, -10, -12, -15, 0,
					-- layer=1 filter=53 channel=8
					-17, 0, -5, 4, -36, -13, -13, -44, -20,
					-- layer=1 filter=53 channel=9
					-15, -26, 4, -17, -1, -9, -18, -10, -51,
					-- layer=1 filter=53 channel=10
					34, 31, 1, 12, -12, 22, 3, -51, -7,
					-- layer=1 filter=53 channel=11
					-5, -13, -2, 7, 16, 18, -3, 16, 2,
					-- layer=1 filter=53 channel=12
					24, 16, 17, 15, -12, -6, 27, -39, 9,
					-- layer=1 filter=53 channel=13
					24, 5, -6, 4, 21, 31, 19, 48, 7,
					-- layer=1 filter=53 channel=14
					0, -19, 11, 0, -12, 8, 8, 17, -25,
					-- layer=1 filter=53 channel=15
					-5, 0, 13, -3, -7, 9, 30, 35, 9,
					-- layer=1 filter=53 channel=16
					-2, -30, -28, -21, -28, -6, -56, -85, -80,
					-- layer=1 filter=53 channel=17
					-16, -19, -13, 23, 12, -11, -11, -8, 6,
					-- layer=1 filter=53 channel=18
					-21, -16, -5, 66, 39, 16, 8, -1, 50,
					-- layer=1 filter=53 channel=19
					-22, 15, 11, 59, 64, 13, -42, 17, 2,
					-- layer=1 filter=53 channel=20
					-20, -2, 27, 18, 14, 0, -6, 7, 24,
					-- layer=1 filter=53 channel=21
					-15, -65, -44, 10, -53, -39, 52, 39, 20,
					-- layer=1 filter=53 channel=22
					29, 12, -7, 28, 40, 8, 43, 15, 2,
					-- layer=1 filter=53 channel=23
					43, 39, 43, 16, 10, -43, 50, 13, 1,
					-- layer=1 filter=53 channel=24
					13, -24, 15, -30, -32, -24, 22, 8, -7,
					-- layer=1 filter=53 channel=25
					34, 12, 12, 22, 62, 75, 13, 19, -8,
					-- layer=1 filter=53 channel=26
					7, -6, -11, -15, 5, -32, -11, -2, -38,
					-- layer=1 filter=53 channel=27
					3, -65, -6, 8, -37, 27, 1, 2, 7,
					-- layer=1 filter=53 channel=28
					1, -12, -9, -30, 15, -27, 6, 6, -36,
					-- layer=1 filter=53 channel=29
					12, 40, 42, 31, 10, 34, 12, 54, 33,
					-- layer=1 filter=53 channel=30
					0, -1, -1, -6, 7, -4, -31, -1, -31,
					-- layer=1 filter=53 channel=31
					60, 95, 48, 33, 51, 48, 13, 47, 20,
					-- layer=1 filter=54 channel=0
					18, 16, 10, 17, -9, 5, 19, 35, 13,
					-- layer=1 filter=54 channel=1
					10, -1, 1, 18, 18, 0, 65, 54, 27,
					-- layer=1 filter=54 channel=2
					-7, -6, 13, -24, -1, -19, 7, 5, -32,
					-- layer=1 filter=54 channel=3
					12, -1, -22, 4, -4, -18, 36, 36, 16,
					-- layer=1 filter=54 channel=4
					-12, 17, 15, 7, -12, 9, -15, -17, -20,
					-- layer=1 filter=54 channel=5
					43, 39, 11, 31, 31, 34, -41, -114, -94,
					-- layer=1 filter=54 channel=6
					3, -9, -15, 23, -11, 15, 10, 16, 7,
					-- layer=1 filter=54 channel=7
					-1, -1, 13, 6, -6, 8, -6, 13, 1,
					-- layer=1 filter=54 channel=8
					-11, -3, -11, -12, -25, 14, 2, 2, -35,
					-- layer=1 filter=54 channel=9
					-3, 1, 0, -7, -37, -25, 22, -8, 10,
					-- layer=1 filter=54 channel=10
					-40, -8, -6, -33, -29, -16, 22, 46, 21,
					-- layer=1 filter=54 channel=11
					-12, 5, 12, 7, -11, 8, -17, -4, 21,
					-- layer=1 filter=54 channel=12
					-16, -2, -1, -14, 13, -10, 18, 41, 7,
					-- layer=1 filter=54 channel=13
					44, 17, 14, 13, -16, 15, 3, -15, -42,
					-- layer=1 filter=54 channel=14
					21, -5, 0, -8, -22, -18, 38, 6, -6,
					-- layer=1 filter=54 channel=15
					30, 3, 3, 22, -44, -13, -31, -46, -10,
					-- layer=1 filter=54 channel=16
					-34, -47, 4, -17, -34, -28, -3, 31, -1,
					-- layer=1 filter=54 channel=17
					31, -18, 13, 11, 18, 32, -14, -58, -23,
					-- layer=1 filter=54 channel=18
					2, -16, 5, -27, -8, -15, -156, -156, -202,
					-- layer=1 filter=54 channel=19
					-7, -46, -27, 22, -11, -4, -101, -95, -104,
					-- layer=1 filter=54 channel=20
					19, -20, 16, 4, -2, -8, -11, -3, -7,
					-- layer=1 filter=54 channel=21
					-14, -95, -67, -34, -155, -140, -73, -183, -153,
					-- layer=1 filter=54 channel=22
					23, 0, 13, 37, 1, -30, 16, 25, 11,
					-- layer=1 filter=54 channel=23
					34, 11, 25, 25, -15, -50, 24, 24, 23,
					-- layer=1 filter=54 channel=24
					5, 0, -10, 28, 14, 23, 16, -6, 1,
					-- layer=1 filter=54 channel=25
					28, 21, 9, 63, 44, 37, -59, -102, -131,
					-- layer=1 filter=54 channel=26
					-14, -15, 1, 24, -7, 15, 30, 45, 36,
					-- layer=1 filter=54 channel=27
					44, -11, -15, -31, -163, -192, -143, -316, -307,
					-- layer=1 filter=54 channel=28
					20, 3, -20, -5, -14, 19, 29, -2, 16,
					-- layer=1 filter=54 channel=29
					27, -13, -30, 4, -7, 4, -62, -46, -35,
					-- layer=1 filter=54 channel=30
					-27, -25, -31, 4, 0, -20, 15, 4, -15,
					-- layer=1 filter=54 channel=31
					33, 17, 21, 9, -16, -8, 80, 29, 12,
					-- layer=1 filter=55 channel=0
					-27, -14, -27, 3, 12, 29, -1, 35, 35,
					-- layer=1 filter=55 channel=1
					-36, -51, -33, 12, 27, 38, 22, 2, 2,
					-- layer=1 filter=55 channel=2
					-76, -76, -38, 18, -3, 27, 16, 21, 46,
					-- layer=1 filter=55 channel=3
					-3, -3, -46, -28, -30, -39, -2, 45, 22,
					-- layer=1 filter=55 channel=4
					17, 2, 4, 12, 2, 1, -11, -9, 10,
					-- layer=1 filter=55 channel=5
					51, 38, 15, 28, 21, 25, -6, 53, 13,
					-- layer=1 filter=55 channel=6
					-29, -28, -34, -9, 30, 16, 36, 6, 1,
					-- layer=1 filter=55 channel=7
					3, 3, -20, 19, -12, 12, 19, 19, 11,
					-- layer=1 filter=55 channel=8
					-38, 7, 8, -11, -5, 0, 29, 14, 30,
					-- layer=1 filter=55 channel=9
					-30, -90, -73, -13, 15, 11, 42, 39, 29,
					-- layer=1 filter=55 channel=10
					-18, 11, -25, 18, -12, 17, 37, 1, 14,
					-- layer=1 filter=55 channel=11
					-6, -15, 4, -20, 21, -15, -10, -20, -12,
					-- layer=1 filter=55 channel=12
					-41, -32, -16, -1, 13, 34, 20, 16, 2,
					-- layer=1 filter=55 channel=13
					0, 18, 0, -28, -24, -7, 8, -15, 13,
					-- layer=1 filter=55 channel=14
					4, -13, -32, -6, -39, -18, -14, 41, 22,
					-- layer=1 filter=55 channel=15
					-15, -31, -12, 22, 27, 25, -29, -14, -5,
					-- layer=1 filter=55 channel=16
					-57, -64, -66, 5, -17, -19, 27, 64, 36,
					-- layer=1 filter=55 channel=17
					22, -5, 11, -47, -40, -13, 4, 7, 16,
					-- layer=1 filter=55 channel=18
					-18, 0, -12, -33, -22, -34, 11, 16, 9,
					-- layer=1 filter=55 channel=19
					1, 24, 22, 23, 61, 37, 10, 62, 41,
					-- layer=1 filter=55 channel=20
					-15, -2, -3, 13, -16, -19, 22, 28, 18,
					-- layer=1 filter=55 channel=21
					6, -8, -43, -28, -41, -31, -57, -45, -32,
					-- layer=1 filter=55 channel=22
					50, 17, 14, 22, 60, 62, 30, 15, -38,
					-- layer=1 filter=55 channel=23
					12, 14, 27, 39, 78, 60, 41, 53, 3,
					-- layer=1 filter=55 channel=24
					-19, -3, -38, 12, 3, 2, 7, 24, 27,
					-- layer=1 filter=55 channel=25
					9, 15, 36, 15, -28, -4, -1, 33, 40,
					-- layer=1 filter=55 channel=26
					-4, -47, -32, -2, 7, 31, 37, 36, 27,
					-- layer=1 filter=55 channel=27
					1, 4, -52, -44, -120, -29, -36, -53, 8,
					-- layer=1 filter=55 channel=28
					-28, -43, -42, -5, 20, 18, 30, 0, 17,
					-- layer=1 filter=55 channel=29
					20, 0, -10, -26, -22, -18, 0, -9, 5,
					-- layer=1 filter=55 channel=30
					-34, -37, -15, -29, -35, -19, 9, 41, 39,
					-- layer=1 filter=55 channel=31
					29, 46, 47, 6, 0, 18, 13, -12, -6,
					-- layer=1 filter=56 channel=0
					12, -3, -15, 25, -12, -1, 24, 14, -17,
					-- layer=1 filter=56 channel=1
					-7, -11, -15, -14, 16, -25, 0, -10, -26,
					-- layer=1 filter=56 channel=2
					-14, -5, 9, 17, 20, -4, 9, 2, -14,
					-- layer=1 filter=56 channel=3
					-24, -17, -18, -11, -18, 0, 16, 4, 8,
					-- layer=1 filter=56 channel=4
					-5, 3, -12, 8, -1, 20, 9, 14, -15,
					-- layer=1 filter=56 channel=5
					-10, -8, 0, -20, -6, 20, -1, 28, -11,
					-- layer=1 filter=56 channel=6
					-15, -23, -10, -8, 29, 2, 2, -9, 9,
					-- layer=1 filter=56 channel=7
					-2, 16, 5, 16, 5, 1, 4, -3, 3,
					-- layer=1 filter=56 channel=8
					-2, 32, -15, 25, 6, -16, 15, 9, 2,
					-- layer=1 filter=56 channel=9
					9, 8, -21, 6, -1, -24, -22, -7, -32,
					-- layer=1 filter=56 channel=10
					4, -18, -10, 0, -23, 15, 9, -4, -20,
					-- layer=1 filter=56 channel=11
					1, 13, -18, -4, 18, -10, -19, 6, -15,
					-- layer=1 filter=56 channel=12
					0, -14, -22, 16, 15, -36, 26, -21, 7,
					-- layer=1 filter=56 channel=13
					-32, -1, 3, -3, 2, 10, -14, 16, -10,
					-- layer=1 filter=56 channel=14
					-16, -10, 12, -35, 24, 12, 14, 8, -25,
					-- layer=1 filter=56 channel=15
					14, -23, 28, 17, 3, -1, -16, 3, 0,
					-- layer=1 filter=56 channel=16
					2, 14, -16, -18, 4, -17, -21, 16, -36,
					-- layer=1 filter=56 channel=17
					3, 12, -10, -2, 12, 6, 5, -5, 26,
					-- layer=1 filter=56 channel=18
					-14, -4, -17, 26, -32, 24, -32, 21, 23,
					-- layer=1 filter=56 channel=19
					-30, 4, -6, -11, -54, 11, -4, 2, -3,
					-- layer=1 filter=56 channel=20
					-12, -10, -8, -16, 1, 5, -12, -18, 21,
					-- layer=1 filter=56 channel=21
					52, 64, 83, 16, 63, 77, 40, 119, 34,
					-- layer=1 filter=56 channel=22
					28, -6, 43, 1, 4, -10, -8, -41, 13,
					-- layer=1 filter=56 channel=23
					40, 0, 13, 30, 31, 30, 20, 11, 9,
					-- layer=1 filter=56 channel=24
					-2, -15, 28, -16, 18, 6, 24, -2, 4,
					-- layer=1 filter=56 channel=25
					-35, 0, 30, -18, -5, 31, -4, 12, -16,
					-- layer=1 filter=56 channel=26
					-10, -9, -3, -3, 7, -2, 3, 5, -11,
					-- layer=1 filter=56 channel=27
					86, 82, 113, 72, 150, 125, 85, 131, 121,
					-- layer=1 filter=56 channel=28
					-26, 11, -21, -6, 22, 0, 3, 21, 3,
					-- layer=1 filter=56 channel=29
					-50, -15, -7, -21, -32, 5, 5, 4, 28,
					-- layer=1 filter=56 channel=30
					-3, -11, 7, -12, -2, -4, -7, 24, -5,
					-- layer=1 filter=56 channel=31
					25, -2, -2, 0, -11, -42, 30, 39, 11,
					-- layer=1 filter=57 channel=0
					7, 16, -7, -20, -24, 22, 13, 12, 5,
					-- layer=1 filter=57 channel=1
					-29, -11, -22, -6, -37, -13, 0, 9, 6,
					-- layer=1 filter=57 channel=2
					-12, 29, 3, -32, -19, 6, 14, 19, -1,
					-- layer=1 filter=57 channel=3
					-14, -34, -45, -41, -28, -16, -26, -5, -37,
					-- layer=1 filter=57 channel=4
					3, -16, -7, 15, 0, 13, -8, -5, -10,
					-- layer=1 filter=57 channel=5
					30, 42, 39, -3, 10, 46, 10, 2, 9,
					-- layer=1 filter=57 channel=6
					-2, 5, 8, -12, 2, -18, 14, 33, 30,
					-- layer=1 filter=57 channel=7
					9, -10, -14, -22, 3, -5, 15, -18, 18,
					-- layer=1 filter=57 channel=8
					14, -5, 29, 13, 1, 36, 23, 22, -4,
					-- layer=1 filter=57 channel=9
					-8, -10, -23, 2, -29, -27, 11, -3, -31,
					-- layer=1 filter=57 channel=10
					10, -2, 13, 9, -20, -27, -36, -12, -21,
					-- layer=1 filter=57 channel=11
					-19, -12, -8, 0, 9, 9, -13, 6, -13,
					-- layer=1 filter=57 channel=12
					-2, -17, -10, -17, -4, -3, 14, 4, 4,
					-- layer=1 filter=57 channel=13
					-26, 1, 6, 12, -12, -7, -13, -16, -5,
					-- layer=1 filter=57 channel=14
					-69, -40, -13, 3, -45, -56, -68, -23, -16,
					-- layer=1 filter=57 channel=15
					-6, 21, -3, -30, -33, -33, 31, 5, 19,
					-- layer=1 filter=57 channel=16
					-59, -19, -46, -50, -40, -46, -25, -14, -1,
					-- layer=1 filter=57 channel=17
					0, 16, 17, 2, 13, 21, 15, 14, 16,
					-- layer=1 filter=57 channel=18
					38, 74, 24, -43, 23, 32, 7, -35, -6,
					-- layer=1 filter=57 channel=19
					9, 32, -3, 3, 24, 25, 31, 5, 25,
					-- layer=1 filter=57 channel=20
					-16, -8, 15, -40, 16, 30, 13, 11, -3,
					-- layer=1 filter=57 channel=21
					-67, -21, -31, -44, -94, -59, -109, -41, -28,
					-- layer=1 filter=57 channel=22
					34, 36, 5, 21, -7, 9, 8, 54, 26,
					-- layer=1 filter=57 channel=23
					63, 55, 21, 62, 34, 35, 39, 102, 59,
					-- layer=1 filter=57 channel=24
					-3, -7, 8, -15, 7, -21, -9, 37, 32,
					-- layer=1 filter=57 channel=25
					3, 1, 8, -10, 3, 0, 20, -17, 19,
					-- layer=1 filter=57 channel=26
					-36, -32, -6, -6, -8, -22, -23, 10, 21,
					-- layer=1 filter=57 channel=27
					-68, -82, -2, -60, -120, -127, -124, -171, -99,
					-- layer=1 filter=57 channel=28
					-24, 16, -9, -4, -13, -10, 15, 0, -7,
					-- layer=1 filter=57 channel=29
					10, 18, 12, -22, -22, 0, -19, -6, -21,
					-- layer=1 filter=57 channel=30
					17, 25, 14, 2, -22, -4, -13, -37, -14,
					-- layer=1 filter=57 channel=31
					-3, -43, -18, 24, 30, 1, -52, -26, -22,
					-- layer=1 filter=58 channel=0
					-24, -28, -7, -37, 9, 14, -19, 19, 50,
					-- layer=1 filter=58 channel=1
					-46, 1, 11, -37, 25, 26, -7, 45, 52,
					-- layer=1 filter=58 channel=2
					-33, -17, 3, -37, -21, 8, -43, 35, 50,
					-- layer=1 filter=58 channel=3
					25, -38, 0, 8, -57, 13, -14, -61, 38,
					-- layer=1 filter=58 channel=4
					-7, -17, 1, -18, 6, 15, 14, 2, -21,
					-- layer=1 filter=58 channel=5
					-24, -24, -4, 15, -15, 23, 0, -124, -16,
					-- layer=1 filter=58 channel=6
					16, -35, -1, 6, -36, 34, -29, 2, 69,
					-- layer=1 filter=58 channel=7
					-2, -6, -7, -15, 3, 0, -10, 4, 18,
					-- layer=1 filter=58 channel=8
					-18, -1, 4, -55, 37, -16, -20, 77, 24,
					-- layer=1 filter=58 channel=9
					0, -7, -15, 34, -67, 19, -12, -36, 71,
					-- layer=1 filter=58 channel=10
					6, 0, 0, -21, -14, 27, 6, -10, 56,
					-- layer=1 filter=58 channel=11
					9, 18, 7, -14, -6, -5, 0, -8, 9,
					-- layer=1 filter=58 channel=12
					-37, -44, -10, -77, 21, 36, -1, 76, 34,
					-- layer=1 filter=58 channel=13
					-7, -12, -58, 26, -15, -7, 27, -55, 26,
					-- layer=1 filter=58 channel=14
					37, -58, -46, 59, -140, 0, 33, -175, 72,
					-- layer=1 filter=58 channel=15
					30, -85, -19, 1, -83, 20, 26, -33, 66,
					-- layer=1 filter=58 channel=16
					55, -18, 1, 67, -79, 4, 17, -87, 66,
					-- layer=1 filter=58 channel=17
					4, 25, -8, 27, 10, -24, -56, 17, -38,
					-- layer=1 filter=58 channel=18
					-75, -25, 9, -45, 9, -27, 2, 65, -55,
					-- layer=1 filter=58 channel=19
					0, -16, -6, 7, -22, -25, -81, -114, -75,
					-- layer=1 filter=58 channel=20
					6, -61, -33, -50, 0, 1, -19, 40, 69,
					-- layer=1 filter=58 channel=21
					9, 36, -68, 49, -156, -17, 54, -172, 56,
					-- layer=1 filter=58 channel=22
					-25, -58, 79, -48, -23, 99, 68, 66, 65,
					-- layer=1 filter=58 channel=23
					-4, -73, 19, -44, -71, 79, 6, 3, 65,
					-- layer=1 filter=58 channel=24
					28, -39, 20, 31, -94, 42, 6, -55, 72,
					-- layer=1 filter=58 channel=25
					-25, -17, -5, 20, -35, 41, 0, -153, -13,
					-- layer=1 filter=58 channel=26
					16, -45, 10, 5, -54, 28, -8, -56, 65,
					-- layer=1 filter=58 channel=27
					-2, 93, -66, 13, 148, -3, 25, 173, 78,
					-- layer=1 filter=58 channel=28
					23, -14, 0, 11, -61, 24, -10, -17, 52,
					-- layer=1 filter=58 channel=29
					-14, -22, -27, -18, -1, -15, -8, -26, 8,
					-- layer=1 filter=58 channel=30
					3, -25, 9, -4, -49, 27, -9, -22, 55,
					-- layer=1 filter=58 channel=31
					-62, -49, -29, -26, 4, 54, 30, 56, 66,
					-- layer=1 filter=59 channel=0
					0, -1, -12, 14, 1, -24, -23, -2, -9,
					-- layer=1 filter=59 channel=1
					-6, -25, -24, -58, -34, -14, -42, -18, -21,
					-- layer=1 filter=59 channel=2
					9, 17, 10, 12, -3, 28, -8, -11, 1,
					-- layer=1 filter=59 channel=3
					-15, -34, -34, -52, -23, -32, -26, 6, 0,
					-- layer=1 filter=59 channel=4
					11, -10, 11, -4, 3, -11, -2, -5, -6,
					-- layer=1 filter=59 channel=5
					17, 41, 40, 47, 49, -34, 24, 14, -1,
					-- layer=1 filter=59 channel=6
					18, 6, 8, -6, 2, -10, -7, -5, -35,
					-- layer=1 filter=59 channel=7
					16, -10, 4, -1, 2, 14, -8, 2, 16,
					-- layer=1 filter=59 channel=8
					8, -2, -13, 29, 7, 0, 23, 22, -1,
					-- layer=1 filter=59 channel=9
					-17, -24, 10, -9, -11, -14, 22, -8, 32,
					-- layer=1 filter=59 channel=10
					24, -14, 8, -26, -13, 25, 11, 36, 23,
					-- layer=1 filter=59 channel=11
					-3, 19, -1, 17, 3, -19, -3, -16, 9,
					-- layer=1 filter=59 channel=12
					-16, -33, -25, 15, -44, -44, -10, -26, -49,
					-- layer=1 filter=59 channel=13
					28, -21, -20, 18, 7, -29, 4, -22, -29,
					-- layer=1 filter=59 channel=14
					-21, -8, -4, -12, -26, 3, 14, 26, 34,
					-- layer=1 filter=59 channel=15
					56, -23, -2, -15, 26, -32, -25, -15, -4,
					-- layer=1 filter=59 channel=16
					-22, 12, 7, 2, 2, 33, 24, 44, 48,
					-- layer=1 filter=59 channel=17
					-3, -6, 0, 58, 26, -4, 9, 18, 9,
					-- layer=1 filter=59 channel=18
					10, -26, 1, -2, -28, -43, -15, 4, -5,
					-- layer=1 filter=59 channel=19
					14, 26, 66, 26, 42, 11, 0, 36, 16,
					-- layer=1 filter=59 channel=20
					12, 5, -18, 39, 6, -34, 15, -5, -15,
					-- layer=1 filter=59 channel=21
					15, 3, -12, 0, -36, -5, 38, -18, -18,
					-- layer=1 filter=59 channel=22
					76, 80, 20, 15, 7, 27, 7, 2, -12,
					-- layer=1 filter=59 channel=23
					112, 127, 68, 32, 43, 82, 7, 10, 13,
					-- layer=1 filter=59 channel=24
					28, 22, 13, 11, 34, 14, -7, 17, 6,
					-- layer=1 filter=59 channel=25
					29, 53, 36, 29, 23, -37, -2, -19, -32,
					-- layer=1 filter=59 channel=26
					-21, 10, -1, 0, -12, 8, 8, -22, -30,
					-- layer=1 filter=59 channel=27
					12, 7, -4, 19, 12, -9, 51, 48, -7,
					-- layer=1 filter=59 channel=28
					25, -16, 4, 7, 2, 0, -15, 16, -9,
					-- layer=1 filter=59 channel=29
					25, -25, 19, 34, 43, -3, 21, 43, 26,
					-- layer=1 filter=59 channel=30
					-40, -31, -7, -21, -19, -18, -19, 18, -8,
					-- layer=1 filter=59 channel=31
					16, 6, 19, -18, -3, 0, -46, -44, -50,
					-- layer=1 filter=60 channel=0
					0, 6, -17, 3, 31, 7, -7, 25, -8,
					-- layer=1 filter=60 channel=1
					3, 12, 0, 6, -1, 6, -8, 0, 3,
					-- layer=1 filter=60 channel=2
					24, -8, -1, -14, 7, -23, -16, 21, -37,
					-- layer=1 filter=60 channel=3
					-3, 20, 37, 5, -10, 21, -33, -16, 29,
					-- layer=1 filter=60 channel=4
					20, -9, -6, -1, -17, -7, -6, -18, 19,
					-- layer=1 filter=60 channel=5
					30, -37, 25, -20, -36, -8, -32, -53, -31,
					-- layer=1 filter=60 channel=6
					0, -5, 5, -16, -5, 17, -32, 4, 19,
					-- layer=1 filter=60 channel=7
					0, -7, -13, -1, 10, 0, 5, -10, -19,
					-- layer=1 filter=60 channel=8
					21, -5, 4, 3, 11, -71, -5, 16, -35,
					-- layer=1 filter=60 channel=9
					-16, 33, 2, -21, 11, 17, -27, 0, 12,
					-- layer=1 filter=60 channel=10
					-16, -3, 3, -9, -16, 18, -10, -35, 50,
					-- layer=1 filter=60 channel=11
					0, 4, -18, -16, 13, -8, 11, -11, -17,
					-- layer=1 filter=60 channel=12
					15, 20, -18, 0, 33, -50, 1, 33, -66,
					-- layer=1 filter=60 channel=13
					3, 7, 1, -7, -15, 34, 8, -8, 36,
					-- layer=1 filter=60 channel=14
					-94, -2, 21, -40, -54, 71, -22, -15, 48,
					-- layer=1 filter=60 channel=15
					-37, 19, -1, -48, 31, -4, 0, -9, 38,
					-- layer=1 filter=60 channel=16
					-35, 12, 16, -8, -20, 46, -54, -16, 44,
					-- layer=1 filter=60 channel=17
					19, -20, -14, 0, 29, -39, -9, 31, -45,
					-- layer=1 filter=60 channel=18
					58, -27, 15, 63, 57, -99, 45, 73, -105,
					-- layer=1 filter=60 channel=19
					42, -6, -2, 3, -18, -62, -15, 13, -92,
					-- layer=1 filter=60 channel=20
					22, -7, -13, 11, 11, -24, -19, 24, 0,
					-- layer=1 filter=60 channel=21
					-61, 27, 49, 41, -57, 114, 109, -40, 131,
					-- layer=1 filter=60 channel=22
					-36, 2, -2, -9, 3, 29, 21, -42, 26,
					-- layer=1 filter=60 channel=23
					-75, -31, 24, -37, -52, 50, -1, -67, 34,
					-- layer=1 filter=60 channel=24
					-42, 15, -3, -54, 20, 21, -35, -38, 46,
					-- layer=1 filter=60 channel=25
					9, -22, 27, 5, -31, 17, -8, -2, -31,
					-- layer=1 filter=60 channel=26
					-30, 8, 12, -31, -20, 53, -32, -12, 53,
					-- layer=1 filter=60 channel=27
					39, -13, 60, 157, -43, 137, 164, -14, 110,
					-- layer=1 filter=60 channel=28
					-23, 10, 6, -24, 26, 25, -18, -5, 18,
					-- layer=1 filter=60 channel=29
					24, 19, 23, 23, 26, -9, -8, 56, -26,
					-- layer=1 filter=60 channel=30
					-16, 28, -7, -13, 14, -6, -33, 44, -36,
					-- layer=1 filter=60 channel=31
					-43, -4, -6, 16, -25, 23, 14, -32, 43,
					-- layer=1 filter=61 channel=0
					9, -7, -29, -37, -64, -54, -23, -52, -64,
					-- layer=1 filter=61 channel=1
					-40, -29, -10, -7, -34, -9, -10, -19, -32,
					-- layer=1 filter=61 channel=2
					-7, -3, 10, -29, -92, -23, 1, -5, -17,
					-- layer=1 filter=61 channel=3
					60, 18, 23, 0, -41, -50, 4, -45, -47,
					-- layer=1 filter=61 channel=4
					-15, 19, 13, -13, 4, 17, 6, 4, 1,
					-- layer=1 filter=61 channel=5
					114, 97, 95, 25, 1, -13, -77, -95, -59,
					-- layer=1 filter=61 channel=6
					16, -14, -25, -23, -51, -20, -4, -24, -59,
					-- layer=1 filter=61 channel=7
					13, -11, 6, -18, 13, 3, 20, -11, 15,
					-- layer=1 filter=61 channel=8
					-24, 0, -21, 4, -26, -33, 9, -34, -12,
					-- layer=1 filter=61 channel=9
					64, 18, -11, -5, -99, -75, 0, -16, -25,
					-- layer=1 filter=61 channel=10
					-12, -25, -52, 22, 2, -16, 22, -17, -39,
					-- layer=1 filter=61 channel=11
					7, 15, 3, 19, -5, 4, 0, 15, 18,
					-- layer=1 filter=61 channel=12
					-75, -39, -35, -69, -42, -16, -64, -75, 2,
					-- layer=1 filter=61 channel=13
					68, 50, 4, 11, 10, -12, -24, 8, -29,
					-- layer=1 filter=61 channel=14
					35, 16, -8, 41, -31, -33, 8, -7, -18,
					-- layer=1 filter=61 channel=15
					-39, -50, -98, -2, -26, 1, -15, -10, -67,
					-- layer=1 filter=61 channel=16
					17, 36, -5, 16, -43, -48, -14, -36, -40,
					-- layer=1 filter=61 channel=17
					62, 16, 35, 9, -31, -7, 7, 16, 35,
					-- layer=1 filter=61 channel=18
					34, 32, 48, -52, -49, -22, -80, -22, -28,
					-- layer=1 filter=61 channel=19
					101, 76, 60, 12, -1, 13, -64, -70, -61,
					-- layer=1 filter=61 channel=20
					26, 16, -14, -27, -58, -56, -25, -72, 0,
					-- layer=1 filter=61 channel=21
					-15, 6, -37, 18, -7, 6, 27, 64, 1,
					-- layer=1 filter=61 channel=22
					-39, 13, 16, 47, -5, 62, 41, 3, 15,
					-- layer=1 filter=61 channel=23
					-77, -74, -91, 9, -37, -24, 10, -10, -63,
					-- layer=1 filter=61 channel=24
					18, -28, -33, -12, -33, -40, 25, -6, -40,
					-- layer=1 filter=61 channel=25
					116, 104, 90, 9, -2, 0, -96, -97, -90,
					-- layer=1 filter=61 channel=26
					-22, -37, -63, -15, -24, -78, 30, 5, -78,
					-- layer=1 filter=61 channel=27
					86, 72, 33, 36, 13, -42, 31, 24, -20,
					-- layer=1 filter=61 channel=28
					35, 21, -28, -1, -50, -63, -9, -55, -71,
					-- layer=1 filter=61 channel=29
					8, 9, 11, -30, -21, -20, -13, -9, 23,
					-- layer=1 filter=61 channel=30
					21, 41, 27, 9, -32, -43, -33, -33, -31,
					-- layer=1 filter=61 channel=31
					10, -18, -13, -13, -9, -9, 26, -13, -31,
					-- layer=1 filter=62 channel=0
					-58, -61, -83, -47, -68, 2, -87, -115, -18,
					-- layer=1 filter=62 channel=1
					29, 25, 26, 37, 36, 72, 31, 42, 3,
					-- layer=1 filter=62 channel=2
					13, 21, -57, -17, 0, 18, -30, -52, 12,
					-- layer=1 filter=62 channel=3
					-10, 1, -16, -20, -16, -52, 16, -6, -6,
					-- layer=1 filter=62 channel=4
					-14, 19, 0, 6, -16, -18, 11, 19, 8,
					-- layer=1 filter=62 channel=5
					-45, -12, 44, 6, -20, -4, 6, -38, 78,
					-- layer=1 filter=62 channel=6
					-86, -85, -56, -92, -80, -36, -71, -97, -64,
					-- layer=1 filter=62 channel=7
					-14, 9, -10, 19, 1, 4, 10, -3, -14,
					-- layer=1 filter=62 channel=8
					-12, -61, -27, -19, -52, 22, -40, -62, 53,
					-- layer=1 filter=62 channel=9
					-25, 25, -48, -12, 4, -27, -34, -47, -22,
					-- layer=1 filter=62 channel=10
					36, 58, 39, 19, 55, 46, 57, 61, 59,
					-- layer=1 filter=62 channel=11
					11, 12, 8, 7, -13, 12, -2, 0, -4,
					-- layer=1 filter=62 channel=12
					25, 20, -19, 20, 7, 62, 24, 0, 69,
					-- layer=1 filter=62 channel=13
					-26, -49, -18, -44, -45, -70, -55, -35, -22,
					-- layer=1 filter=62 channel=14
					-27, 36, -22, -12, -1, -16, 24, -17, 27,
					-- layer=1 filter=62 channel=15
					-106, -108, -19, -92, -74, -32, -77, -82, -138,
					-- layer=1 filter=62 channel=16
					27, 34, -7, 0, 14, -6, -5, -9, 15,
					-- layer=1 filter=62 channel=17
					-30, -23, -3, 6, -17, -8, -9, -18, 44,
					-- layer=1 filter=62 channel=18
					-2, -22, -46, -16, 1, 30, -20, 0, 51,
					-- layer=1 filter=62 channel=19
					8, -16, -9, 41, 12, -31, 17, 0, 82,
					-- layer=1 filter=62 channel=20
					-58, -93, -55, -33, -35, 35, -53, -32, 12,
					-- layer=1 filter=62 channel=21
					-72, 3, -42, -52, -26, -68, -15, -33, 21,
					-- layer=1 filter=62 channel=22
					87, 115, 82, 93, 49, 99, 77, 82, 108,
					-- layer=1 filter=62 channel=23
					-9, -10, -16, -17, -45, -15, 21, 15, 20,
					-- layer=1 filter=62 channel=24
					-72, -80, -64, -72, -84, -44, -47, -104, -111,
					-- layer=1 filter=62 channel=25
					-36, -50, 28, 0, -21, -22, -1, -14, 66,
					-- layer=1 filter=62 channel=26
					-106, -43, -86, -75, -78, -73, -61, -93, -52,
					-- layer=1 filter=62 channel=27
					15, 13, 58, 2, 62, 34, 31, 48, 51,
					-- layer=1 filter=62 channel=28
					-121, -109, -126, -79, -104, -50, -110, -168, -136,
					-- layer=1 filter=62 channel=29
					-44, -46, -47, 14, -7, -17, -17, -53, -36,
					-- layer=1 filter=62 channel=30
					-39, -44, -81, -3, -30, -46, 9, 6, 41,
					-- layer=1 filter=62 channel=31
					14, 34, 44, 18, 0, -8, 20, 66, 63,
					-- layer=1 filter=63 channel=0
					26, 3, 14, 26, 21, -6, -4, 4, -5,
					-- layer=1 filter=63 channel=1
					-15, -14, -3, -12, -43, -42, -23, -47, -43,
					-- layer=1 filter=63 channel=2
					42, 33, 5, 36, 1, -13, 29, 10, -22,
					-- layer=1 filter=63 channel=3
					-1, 33, 11, -14, 6, -8, 2, -7, 13,
					-- layer=1 filter=63 channel=4
					3, 22, -17, 2, 19, 6, -3, 18, -19,
					-- layer=1 filter=63 channel=5
					-89, -108, -47, -36, 25, 47, 0, 3, 46,
					-- layer=1 filter=63 channel=6
					-11, 26, 30, 12, 0, 23, 5, 0, -24,
					-- layer=1 filter=63 channel=7
					-15, 1, 20, -8, 9, 13, -11, 4, -11,
					-- layer=1 filter=63 channel=8
					12, 23, 1, 0, 0, -18, -15, 1, -11,
					-- layer=1 filter=63 channel=9
					13, 14, 9, -2, 4, 4, 10, -4, -22,
					-- layer=1 filter=63 channel=10
					11, -38, -3, -35, -29, -52, -15, -33, -4,
					-- layer=1 filter=63 channel=11
					18, 13, 13, -8, -2, -13, -15, 0, 0,
					-- layer=1 filter=63 channel=12
					34, 6, -50, 43, -22, -21, 28, 3, -79,
					-- layer=1 filter=63 channel=13
					-21, 30, 14, -2, 40, 15, -10, 5, 19,
					-- layer=1 filter=63 channel=14
					-40, -27, -7, -4, 13, 25, 3, 27, 11,
					-- layer=1 filter=63 channel=15
					6, 8, 19, -22, 46, -13, 15, -6, 9,
					-- layer=1 filter=63 channel=16
					14, 10, -29, 4, 6, 0, 29, 1, -35,
					-- layer=1 filter=63 channel=17
					20, 10, 10, -3, 9, 15, 22, 0, 14,
					-- layer=1 filter=63 channel=18
					42, -63, -65, 54, -18, -45, 40, 20, -25,
					-- layer=1 filter=63 channel=19
					-78, -110, -63, -24, -26, -8, 0, -18, 8,
					-- layer=1 filter=63 channel=20
					1, 38, 25, 42, 21, 1, -18, 20, -9,
					-- layer=1 filter=63 channel=21
					-36, -58, -26, 11, 43, 22, 53, 77, 53,
					-- layer=1 filter=63 channel=22
					-33, -50, -60, -44, -63, -45, -27, -15, 14,
					-- layer=1 filter=63 channel=23
					-78, -114, -44, -102, -192, -171, -75, -91, -93,
					-- layer=1 filter=63 channel=24
					12, 8, 26, 3, 5, 7, -12, 0, -21,
					-- layer=1 filter=63 channel=25
					-108, -71, -1, -12, -2, 19, -2, 27, 30,
					-- layer=1 filter=63 channel=26
					-18, 21, -6, 26, -11, 21, 5, -5, -17,
					-- layer=1 filter=63 channel=27
					-33, -122, -77, -2, -5, 32, 42, 55, 54,
					-- layer=1 filter=63 channel=28
					16, 8, 25, 17, 16, 1, -18, -8, -7,
					-- layer=1 filter=63 channel=29
					-9, 31, -3, -14, 26, 24, -7, 11, 12,
					-- layer=1 filter=63 channel=30
					15, 8, 32, 38, 19, 9, 5, 9, -22,
					-- layer=1 filter=63 channel=31
					-53, -110, -61, -133, -94, -65, -46, -84, -73,

			80, 84, 85, 85, 81, 81, 83, 87, 82, 64, 54, 60, 66, 66, 66, 
			80, 83, 85, 85, 88, 104, 62, 67, 40, 48, 26, 20, 35, 55, 66, 
			52, 66, 86, 87, 89, 84, 52, 24, 29, 56, 43, 37, 10, 25, 61, 
			6, 57, 72, 86, 72, 64, 51, 31, 28, 60, 46, 35, 25, 10, 45, 
			26, 58, 58, 91, 83, 57, 47, 34, 20, 60, 52, 23, 33, 10, 18, 
			44, 76, 66, 83, 109, 75, 66, 35, 11, 98, 55, 28, 36, 23, 10, 
			53, 46, 53, 56, 69, 97, 69, 54, 18, 86, 43, 29, 31, 42, 31, 
			65, 54, 24, 40, 59, 100, 56, 48, 42, 89, 60, 28, 37, 47, 57, 
			70, 68, 32, 58, 55, 46, 46, 46, 47, 29, 60, 20, 35, 59, 71, 
			93, 79, 32, 51, 32, 42, 60, 49, 40, 50, 8, 1, 26, 62, 61, 
			81, 73, 31, 120, 56, 30, 62, 50, 16, 0, 1, 3, 2, 8, 4, 
			28, 69, 54, 119, 42, 20, 12, 10, 6, 2, 2, 3, 9, 9, 6, 
			0, 29, 88, 87, 19, 8, 0, 2, 2, 4, 4, 8, 5, 5, 17, 
			0, 0, 58, 46, 19, 9, 2, 1, 4, 6, 4, 5, 0, 18, 0, 
			0, 0, 0, 4, 1, 9, 10, 8, 11, 11, 2, 6, 28, 12, 0, 
			

			54, 52, 56, 57, 56, 50, 57, 59, 55, 45, 37, 39, 46, 51, 52, 
			56, 55, 59, 57, 59, 45, 54, 41, 32, 24, 24, 17, 19, 42, 51, 
			24, 42, 58, 57, 58, 17, 22, 14, 29, 20, 20, 23, 23, 27, 40, 
			24, 37, 55, 55, 40, 38, 32, 32, 23, 22, 14, 17, 15, 23, 33, 
			33, 33, 55, 62, 46, 41, 12, 17, 9, 27, 23, 28, 20, 26, 24, 
			17, 8, 51, 27, 0, 18, 14, 26, 15, 30, 12, 14, 20, 23, 31, 
			27, 0, 32, 38, 12, 22, 11, 22, 18, 11, 11, 16, 16, 23, 31, 
			17, 2, 34, 35, 46, 20, 2, 2, 23, 14, 12, 10, 18, 20, 39, 
			5, 0, 11, 16, 27, 2, 14, 12, 32, 11, 9, 3, 14, 35, 53, 
			0, 4, 6, 4, 21, 22, 21, 21, 18, 15, 7, 17, 32, 40, 42, 
			0, 4, 0, 21, 37, 40, 14, 0, 12, 7, 14, 19, 5, 0, 2, 
			0, 0, 27, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
			

			35, 39, 40, 37, 36, 39, 43, 43, 39, 35, 27, 28, 29, 26, 23, 
			33, 44, 47, 41, 45, 27, 36, 37, 38, 7, 0, 0, 1, 22, 22, 
			16, 41, 39, 40, 45, 61, 3, 0, 0, 15, 0, 0, 0, 0, 19, 
			0, 0, 35, 45, 27, 30, 9, 0, 0, 39, 0, 0, 0, 0, 26, 
			0, 16, 22, 81, 44, 41, 3, 0, 0, 18, 8, 0, 0, 0, 0, 
			0, 6, 11, 34, 49, 36, 0, 0, 0, 48, 2, 0, 0, 0, 0, 
			0, 0, 14, 14, 50, 29, 40, 0, 0, 56, 0, 0, 0, 0, 0, 
			0, 2, 0, 10, 50, 72, 0, 2, 0, 39, 0, 0, 0, 0, 0, 
			1, 23, 0, 9, 0, 25, 0, 0, 3, 9, 11, 0, 0, 0, 23, 
			13, 20, 0, 21, 0, 0, 14, 6, 0, 5, 0, 0, 0, 27, 29, 
			30, 22, 0, 46, 0, 0, 37, 19, 0, 0, 0, 0, 0, 0, 0, 
			10, 14, 10, 78, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 22, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			47, 47, 44, 47, 49, 44, 48, 53, 54, 51, 43, 37, 36, 42, 45, 
			46, 47, 47, 50, 45, 30, 51, 50, 49, 24, 20, 26, 30, 36, 42, 
			52, 36, 50, 51, 52, 60, 49, 40, 16, 0, 10, 2, 19, 23, 29, 
			43, 1, 50, 49, 53, 29, 24, 10, 6, 0, 18, 17, 17, 16, 15, 
			16, 0, 45, 20, 7, 0, 22, 14, 16, 0, 17, 19, 7, 12, 12, 
			10, 6, 38, 39, 20, 12, 21, 19, 21, 0, 21, 22, 7, 7, 4, 
			0, 25, 35, 53, 15, 2, 29, 11, 27, 0, 28, 17, 7, 3, 10, 
			0, 12, 13, 37, 14, 3, 19, 19, 19, 0, 21, 25, 3, 8, 15, 
			4, 1, 17, 5, 17, 22, 28, 20, 2, 36, 35, 24, 6, 11, 28, 
			8, 2, 23, 0, 24, 0, 0, 15, 9, 21, 22, 9, 0, 19, 45, 
			1, 6, 28, 0, 0, 0, 0, 6, 10, 9, 0, 0, 0, 16, 26, 
			0, 0, 1, 0, 55, 21, 7, 7, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 28, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

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
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 18, 9, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 3, 38, 0, 0, 0, 11, 1, 0, 
			31, 25, 0, 0, 0, 53, 21, 16, 0, 0, 0, 0, 0, 14, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 13, 6, 0, 1, 
			0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 14, 
			13, 0, 0, 41, 45, 14, 0, 0, 0, 0, 11, 14, 0, 0, 0, 
			0, 2, 9, 0, 15, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 49, 33, 0, 0, 6, 2, 0, 13, 0, 
			0, 0, 2, 0, 0, 53, 0, 0, 0, 18, 19, 50, 19, 0, 0, 
			3, 0, 0, 0, 0, 12, 0, 0, 2, 36, 47, 3, 0, 0, 0, 
			0, 0, 8, 0, 0, 0, 0, 34, 10, 0, 0, 0, 0, 9, 7, 
			61, 19, 0, 0, 97, 66, 45, 40, 9, 4, 0, 3, 0, 0, 0, 
			0, 47, 0, 27, 64, 0, 0, 0, 0, 0, 0, 0, 1, 6, 0, 
			0, 0, 36, 65, 10, 0, 0, 0, 0, 0, 6, 12, 3, 0, 49, 
			3, 0, 14, 48, 24, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			11, 15, 12, 15, 13, 17, 15, 8, 11, 19, 18, 14, 16, 12, 7, 
			12, 15, 11, 18, 12, 62, 37, 28, 17, 23, 55, 37, 12, 9, 15, 
			31, 0, 15, 12, 9, 14, 27, 6, 14, 43, 66, 46, 50, 5, 14, 
			74, 18, 24, 14, 36, 20, 69, 42, 39, 16, 70, 33, 30, 19, 0, 
			94, 90, 45, 5, 139, 95, 82, 50, 32, 0, 74, 64, 36, 41, 0, 
			76, 91, 53, 16, 33, 52, 103, 57, 62, 21, 100, 48, 29, 43, 34, 
			72, 117, 26, 36, 18, 62, 105, 81, 65, 44, 87, 53, 30, 40, 46, 
			95, 109, 60, 62, 23, 84, 89, 44, 43, 31, 69, 48, 23, 40, 14, 
			118, 106, 93, 57, 61, 16, 37, 56, 35, 53, 23, 24, 1, 12, 25, 
			96, 95, 110, 53, 79, 30, 36, 109, 52, 31, 34, 6, 27, 35, 29, 
			91, 99, 101, 60, 183, 116, 101, 102, 88, 50, 40, 61, 63, 68, 69, 
			57, 85, 97, 125, 141, 46, 39, 36, 49, 53, 61, 62, 68, 70, 71, 
			86, 47, 56, 156, 68, 62, 62, 55, 54, 58, 65, 76, 79, 72, 85, 
			82, 71, 36, 134, 64, 61, 69, 59, 56, 64, 68, 67, 69, 79, 91, 
			89, 69, 65, 46, 49, 42, 51, 60, 68, 77, 72, 58, 76, 113, 85, 
			

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
			0, 0, 0, 0, 0, 2, 0, 0, 0, 6, 0, 0, 6, 0, 0, 
			0, 0, 0, 0, 0, 1, 0, 0, 5, 26, 4, 3, 0, 3, 0, 
			0, 25, 0, 0, 0, 3, 0, 0, 0, 36, 0, 8, 0, 0, 15, 
			0, 20, 0, 20, 0, 15, 1, 0, 0, 48, 9, 0, 3, 0, 12, 
			16, 29, 0, 15, 59, 32, 4, 0, 0, 76, 3, 0, 10, 0, 0, 
			22, 9, 6, 0, 31, 44, 8, 3, 0, 65, 0, 0, 11, 13, 0, 
			32, 11, 7, 0, 15, 42, 0, 14, 0, 45, 5, 0, 17, 10, 0, 
			27, 38, 0, 25, 9, 24, 6, 5, 16, 0, 18, 0, 15, 8, 0, 
			33, 39, 0, 45, 0, 19, 32, 0, 17, 4, 0, 0, 11, 8, 0, 
			50, 37, 0, 87, 0, 3, 39, 18, 0, 0, 7, 11, 21, 14, 2, 
			53, 49, 13, 72, 1, 19, 33, 32, 17, 14, 16, 22, 23, 25, 21, 
			16, 54, 72, 33, 0, 20, 16, 18, 15, 18, 23, 25, 23, 26, 32, 
			15, 24, 88, 0, 7, 23, 15, 18, 21, 24, 25, 25, 22, 38, 19, 
			13, 26, 33, 14, 10, 25, 20, 17, 23, 23, 17, 24, 40, 20, 0, 
			

			74, 83, 78, 80, 80, 76, 84, 91, 85, 76, 66, 63, 66, 67, 69, 
			75, 85, 85, 86, 82, 59, 76, 79, 81, 26, 7, 6, 22, 52, 66, 
			65, 68, 80, 86, 83, 101, 54, 28, 0, 0, 9, 5, 11, 9, 51, 
			35, 0, 74, 84, 76, 49, 33, 8, 0, 12, 26, 14, 8, 0, 27, 
			24, 2, 66, 65, 61, 32, 37, 7, 3, 0, 21, 14, 1, 3, 0, 
			0, 10, 60, 46, 40, 35, 33, 23, 8, 0, 33, 17, 6, 5, 0, 
			0, 24, 36, 84, 41, 7, 63, 22, 30, 0, 31, 0, 0, 0, 0, 
			0, 30, 0, 55, 33, 44, 46, 24, 18, 13, 26, 7, 0, 12, 27, 
			3, 10, 0, 10, 5, 32, 20, 8, 2, 38, 21, 24, 0, 11, 44, 
			21, 9, 16, 0, 19, 0, 4, 29, 0, 37, 30, 0, 0, 39, 69, 
			6, 11, 24, 0, 13, 0, 2, 36, 15, 0, 0, 0, 0, 0, 0, 
			0, 0, 17, 12, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			52, 53, 58, 58, 59, 52, 59, 65, 65, 46, 35, 39, 48, 53, 56, 
			62, 62, 58, 58, 58, 66, 61, 53, 30, 32, 26, 23, 22, 39, 51, 
			30, 30, 61, 64, 58, 0, 47, 28, 27, 0, 0, 2, 9, 10, 36, 
			28, 22, 56, 63, 61, 42, 24, 10, 1, 0, 11, 0, 11, 16, 11, 
			16, 0, 51, 40, 28, 11, 5, 18, 0, 5, 9, 18, 6, 18, 6, 
			0, 0, 53, 32, 0, 5, 22, 14, 17, 0, 0, 12, 0, 7, 23, 
			6, 0, 30, 61, 0, 17, 0, 12, 7, 0, 2, 15, 2, 4, 9, 
			2, 0, 14, 39, 2, 0, 0, 0, 10, 0, 4, 9, 0, 0, 24, 
			0, 0, 11, 0, 24, 0, 15, 12, 2, 10, 0, 0, 0, 18, 40, 
			0, 0, 5, 0, 0, 4, 8, 3, 0, 0, 0, 7, 0, 28, 47, 
			0, 0, 0, 0, 31, 3, 0, 0, 0, 7, 2, 0, 0, 0, 0, 
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
			

			30, 30, 37, 33, 34, 34, 33, 34, 36, 25, 14, 21, 26, 26, 27, 
			37, 38, 40, 32, 41, 63, 13, 25, 2, 25, 11, 6, 14, 22, 27, 
			12, 25, 34, 33, 43, 33, 0, 0, 16, 56, 2, 0, 0, 16, 30, 
			0, 77, 26, 40, 29, 31, 22, 6, 11, 57, 0, 10, 0, 0, 47, 
			0, 61, 0, 65, 32, 28, 0, 0, 0, 69, 7, 0, 17, 0, 32, 
			0, 20, 0, 52, 41, 0, 0, 0, 0, 142, 0, 0, 20, 0, 1, 
			0, 0, 0, 0, 70, 58, 0, 0, 0, 120, 0, 0, 18, 27, 0, 
			0, 0, 0, 0, 58, 72, 0, 0, 0, 89, 0, 0, 25, 16, 1, 
			0, 7, 0, 29, 17, 0, 0, 21, 23, 5, 23, 0, 23, 28, 43, 
			2, 12, 0, 52, 0, 10, 27, 12, 13, 0, 0, 0, 39, 56, 18, 
			47, 7, 0, 123, 0, 10, 55, 0, 0, 0, 11, 25, 21, 1, 0, 
			24, 6, 0, 114, 0, 0, 0, 0, 0, 0, 0, 2, 1, 5, 0, 
			0, 29, 38, 16, 0, 0, 0, 0, 0, 6, 8, 9, 0, 0, 7, 
			0, 0, 71, 0, 0, 3, 0, 0, 2, 4, 2, 0, 0, 21, 0, 
			0, 0, 5, 0, 0, 6, 0, 0, 11, 5, 0, 1, 34, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 14, 1, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 14, 15, 20, 6, 0, 
			29, 0, 0, 0, 0, 0, 0, 4, 10, 0, 14, 9, 20, 14, 0, 
			38, 0, 0, 0, 0, 0, 16, 9, 18, 0, 11, 13, 5, 14, 1, 
			46, 15, 0, 0, 7, 3, 0, 13, 19, 0, 23, 32, 11, 16, 9, 
			38, 32, 3, 0, 0, 0, 17, 10, 29, 0, 40, 22, 14, 5, 5, 
			26, 38, 29, 0, 0, 0, 36, 23, 12, 0, 18, 31, 11, 2, 0, 
			35, 33, 39, 6, 0, 30, 22, 6, 8, 15, 10, 35, 6, 0, 0, 
			23, 28, 47, 18, 33, 1, 5, 8, 15, 9, 35, 24, 0, 0, 0, 
			20, 27, 55, 0, 14, 15, 0, 45, 47, 42, 38, 27, 51, 68, 71, 
			82, 43, 33, 0, 89, 99, 81, 82, 75, 65, 67, 71, 69, 73, 74, 
			89, 69, 24, 34, 108, 62, 64, 63, 65, 65, 70, 70, 75, 79, 75, 
			98, 81, 44, 85, 64, 65, 66, 64, 63, 67, 77, 85, 87, 75, 94, 
			90, 81, 72, 104, 74, 68, 70, 63, 55, 65, 75, 74, 57, 83, 100, 
			

			57, 62, 56, 63, 64, 57, 64, 70, 70, 63, 54, 46, 48, 60, 63, 
			60, 64, 57, 67, 50, 47, 84, 73, 59, 17, 33, 48, 41, 34, 58, 
			87, 11, 63, 68, 62, 69, 79, 56, 11, 0, 31, 10, 47, 21, 28, 
			107, 0, 67, 58, 88, 17, 45, 26, 16, 0, 59, 28, 39, 39, 0, 
			44, 0, 79, 0, 20, 18, 69, 53, 45, 0, 34, 59, 17, 40, 12, 
			32, 7, 82, 64, 0, 9, 64, 46, 79, 0, 68, 61, 2, 21, 22, 
			14, 70, 42, 103, 0, 0, 45, 39, 74, 0, 71, 53, 11, 0, 35, 
			19, 39, 28, 67, 0, 0, 74, 32, 44, 0, 45, 68, 0, 17, 30, 
			30, 0, 78, 0, 49, 14, 48, 44, 0, 74, 35, 65, 3, 0, 33, 
			14, 0, 89, 0, 55, 5, 0, 41, 39, 29, 53, 7, 0, 17, 64, 
			0, 11, 90, 0, 46, 17, 0, 15, 40, 33, 0, 0, 0, 0, 15, 
			0, 0, 0, 0, 129, 43, 9, 7, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 68, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 13, 0, 0, 3, 9, 15, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 15, 25, 17, 0, 7, 
			40, 0, 0, 0, 0, 0, 26, 1, 11, 0, 31, 0, 22, 0, 0, 
			69, 18, 0, 0, 85, 0, 23, 7, 4, 0, 24, 12, 14, 30, 0, 
			0, 32, 0, 0, 19, 0, 54, 21, 31, 0, 12, 15, 9, 24, 5, 
			0, 42, 0, 20, 0, 0, 55, 27, 47, 0, 36, 7, 0, 16, 7, 
			0, 77, 0, 41, 0, 24, 19, 5, 31, 0, 31, 7, 1, 0, 2, 
			19, 35, 0, 40, 0, 0, 13, 12, 13, 0, 0, 10, 0, 8, 0, 
			36, 18, 60, 8, 27, 0, 3, 71, 0, 13, 30, 15, 18, 0, 0, 
			51, 14, 51, 0, 109, 20, 13, 58, 53, 21, 15, 27, 6, 17, 21, 
			0, 42, 58, 9, 39, 17, 0, 2, 26, 26, 32, 27, 36, 26, 33, 
			27, 0, 0, 30, 39, 31, 31, 26, 28, 29, 35, 31, 34, 39, 43, 
			47, 27, 0, 113, 40, 25, 32, 23, 31, 30, 26, 34, 40, 27, 32, 
			43, 38, 5, 48, 17, 14, 33, 38, 35, 35, 30, 29, 40, 48, 61, 
			

			84, 93, 87, 90, 87, 89, 92, 98, 96, 88, 78, 74, 77, 79, 81, 
			83, 98, 92, 95, 88, 75, 91, 97, 90, 41, 28, 34, 44, 61, 76, 
			88, 64, 91, 96, 93, 102, 76, 51, 26, 10, 26, 12, 24, 28, 57, 
			57, 0, 83, 93, 95, 57, 52, 26, 14, 13, 42, 34, 26, 14, 28, 
			31, 7, 76, 58, 63, 47, 57, 33, 25, 0, 37, 38, 17, 18, 15, 
			25, 15, 74, 93, 54, 55, 55, 37, 32, 0, 53, 38, 15, 18, 8, 
			14, 39, 51, 105, 42, 31, 64, 37, 43, 0, 48, 28, 9, 10, 19, 
			25, 31, 13, 65, 34, 44, 55, 37, 35, 19, 42, 34, 10, 26, 30, 
			31, 21, 30, 12, 47, 40, 39, 34, 4, 55, 50, 40, 14, 18, 56, 
			34, 19, 40, 0, 42, 20, 10, 39, 20, 49, 37, 12, 0, 45, 78, 
			12, 29, 43, 0, 21, 15, 11, 36, 24, 11, 0, 0, 0, 0, 5, 
			0, 0, 16, 11, 85, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 63, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 
			0, 5, 0, 0, 0, 9, 0, 7, 4, 22, 16, 12, 0, 12, 0, 
			0, 0, 0, 0, 0, 0, 0, 3, 10, 46, 6, 23, 14, 3, 15, 
			0, 0, 0, 0, 0, 0, 9, 4, 15, 36, 3, 0, 7, 0, 16, 
			38, 30, 0, 8, 75, 45, 0, 0, 0, 38, 18, 15, 21, 5, 0, 
			31, 23, 11, 0, 34, 17, 22, 7, 0, 51, 18, 6, 18, 13, 3, 
			32, 22, 4, 0, 10, 41, 34, 38, 12, 39, 21, 10, 26, 27, 0, 
			34, 49, 14, 23, 0, 57, 16, 2, 14, 6, 29, 24, 34, 8, 0, 
			44, 49, 6, 45, 12, 24, 24, 0, 20, 27, 20, 17, 11, 0, 0, 
			54, 42, 19, 44, 0, 0, 45, 54, 21, 11, 12, 15, 33, 38, 28, 
			102, 75, 28, 46, 64, 73, 74, 74, 53, 50, 50, 58, 58, 57, 56, 
			56, 93, 70, 50, 55, 50, 51, 51, 47, 48, 53, 52, 60, 66, 56, 
			61, 60, 109, 55, 43, 54, 45, 50, 55, 56, 64, 70, 65, 64, 83, 
			59, 65, 70, 73, 53, 66, 65, 53, 50, 50, 55, 60, 56, 53, 51, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 17, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 2, 16, 0, 0, 24, 28, 0, 
			0, 78, 0, 0, 0, 48, 0, 0, 0, 44, 0, 0, 0, 32, 34, 
			0, 64, 0, 0, 0, 9, 0, 0, 0, 96, 0, 0, 0, 0, 94, 
			0, 10, 0, 51, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 29, 
			0, 27, 0, 0, 148, 0, 0, 0, 0, 160, 0, 0, 19, 0, 0, 
			0, 0, 18, 0, 96, 29, 0, 0, 0, 147, 0, 0, 0, 3, 0, 
			0, 0, 0, 0, 27, 87, 0, 9, 0, 91, 0, 0, 30, 10, 0, 
			0, 0, 0, 51, 0, 43, 0, 0, 31, 0, 45, 0, 38, 29, 0, 
			0, 0, 0, 58, 0, 0, 28, 0, 0, 21, 0, 9, 45, 28, 0, 
			96, 0, 0, 124, 0, 0, 39, 9, 0, 0, 0, 0, 10, 37, 2, 
			135, 76, 0, 79, 0, 0, 34, 32, 3, 6, 9, 10, 3, 1, 0, 
			0, 108, 94, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 10, 2, 
			0, 7, 158, 0, 0, 4, 0, 0, 8, 4, 2, 17, 0, 20, 1, 
			0, 7, 14, 50, 0, 37, 29, 3, 0, 0, 0, 5, 21, 0, 0, 
			

			1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 18, 16, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 5, 27, 6, 0, 0, 26, 19, 0, 
			20, 45, 0, 0, 0, 51, 19, 26, 0, 0, 0, 0, 0, 26, 10, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 6, 0, 0, 34, 
			0, 0, 0, 0, 0, 0, 0, 0, 2, 13, 0, 0, 0, 0, 18, 
			0, 0, 0, 8, 93, 12, 0, 0, 0, 1, 0, 0, 2, 0, 0, 
			0, 0, 31, 0, 33, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 5, 0, 24, 0, 12, 0, 0, 8, 1, 0, 
			0, 0, 0, 5, 0, 52, 10, 0, 0, 0, 46, 22, 23, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 15, 12, 0, 0, 0, 
			26, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 22, 16, 
			76, 31, 0, 0, 25, 63, 51, 49, 19, 0, 0, 0, 0, 0, 0, 
			0, 57, 22, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 64, 31, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 10, 
			0, 0, 6, 57, 9, 21, 14, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 19, 2, 0, 0, 0, 
			0, 2, 0, 0, 0, 0, 5, 1, 4, 38, 0, 12, 0, 0, 0, 
			0, 31, 0, 4, 16, 5, 3, 0, 0, 21, 15, 0, 4, 0, 0, 
			26, 41, 0, 0, 58, 13, 6, 0, 0, 69, 14, 0, 14, 0, 0, 
			20, 36, 0, 0, 25, 37, 40, 0, 0, 67, 7, 2, 7, 19, 0, 
			36, 26, 8, 0, 16, 75, 0, 15, 0, 40, 11, 1, 21, 10, 0, 
			43, 56, 9, 30, 9, 10, 3, 18, 14, 0, 40, 0, 0, 0, 0, 
			46, 54, 10, 42, 27, 0, 13, 23, 18, 17, 0, 0, 9, 0, 0, 
			72, 50, 7, 86, 17, 43, 70, 48, 13, 0, 25, 36, 46, 43, 36, 
			98, 62, 27, 97, 58, 37, 50, 48, 46, 47, 54, 56, 59, 65, 63, 
			64, 86, 64, 83, 17, 49, 48, 46, 48, 55, 61, 68, 68, 68, 72, 
			67, 63, 109, 44, 42, 54, 46, 52, 54, 60, 65, 72, 62, 91, 74, 
			60, 68, 62, 54, 46, 62, 59, 48, 55, 57, 60, 59, 78, 78, 49, 
			

			1, 8, 1, 9, 10, 4, 3, 8, 17, 20, 13, 0, 3, 10, 19, 
			3, 5, 0, 12, 0, 3, 39, 25, 29, 0, 28, 23, 0, 0, 13, 
			45, 0, 4, 11, 0, 0, 57, 31, 0, 0, 26, 11, 43, 0, 0, 
			123, 0, 8, 1, 42, 0, 34, 26, 8, 0, 58, 6, 39, 26, 0, 
			88, 0, 41, 0, 28, 7, 62, 51, 32, 0, 24, 65, 5, 47, 0, 
			49, 0, 49, 11, 0, 0, 64, 45, 83, 0, 68, 69, 0, 27, 22, 
			39, 47, 0, 82, 0, 0, 30, 42, 84, 0, 82, 54, 0, 0, 25, 
			33, 45, 17, 49, 0, 0, 79, 9, 42, 0, 46, 64, 0, 0, 1, 
			48, 0, 100, 0, 31, 0, 30, 30, 0, 37, 0, 63, 0, 0, 0, 
			10, 0, 120, 0, 57, 0, 0, 44, 10, 14, 56, 4, 0, 0, 18, 
			0, 0, 108, 0, 108, 39, 0, 19, 69, 46, 4, 0, 0, 0, 28, 
			0, 0, 18, 0, 138, 61, 0, 3, 15, 0, 0, 0, 0, 0, 4, 
			11, 0, 0, 39, 132, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 
			21, 0, 0, 105, 35, 0, 12, 0, 0, 0, 0, 0, 0, 0, 11, 
			30, 0, 0, 10, 13, 0, 0, 0, 0, 0, 10, 0, 0, 22, 48, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 14, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 12, 0, 0, 
			19, 25, 0, 0, 0, 0, 9, 6, 1, 0, 0, 0, 0, 9, 0, 
			4, 31, 0, 0, 29, 28, 0, 5, 0, 0, 3, 12, 6, 15, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 25, 15, 0, 0, 0, 4, 30, 
			2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 6, 5, 
			7, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 16, 0, 14, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 4, 0, 0, 0, 17, 14, 0, 0, 0, 1, 0, 0, 
			0, 0, 0, 22, 66, 68, 3, 0, 0, 20, 48, 61, 47, 17, 18, 
			0, 0, 0, 1, 0, 0, 0, 0, 9, 24, 30, 28, 34, 34, 31, 
			49, 0, 0, 0, 0, 28, 27, 26, 29, 37, 42, 48, 28, 21, 49, 
			38, 43, 0, 0, 1, 28, 37, 32, 26, 34, 31, 20, 29, 54, 5, 
			39, 37, 31, 0, 12, 8, 0, 20, 37, 45, 36, 31, 53, 55, 37, 
			

			0, 0, 5, 8, 9, 6, 4, 1, 9, 0, 0, 0, 2, 10, 7, 
			10, 10, 6, 7, 5, 58, 38, 11, 0, 1, 45, 28, 0, 0, 8, 
			0, 0, 5, 6, 1, 0, 0, 0, 13, 3, 13, 12, 30, 0, 0, 
			62, 27, 12, 7, 27, 3, 46, 23, 7, 0, 13, 0, 0, 11, 0, 
			52, 56, 35, 0, 104, 80, 24, 23, 0, 0, 34, 45, 12, 31, 0, 
			9, 0, 31, 0, 0, 0, 41, 30, 47, 0, 20, 0, 0, 17, 44, 
			28, 12, 0, 18, 0, 10, 0, 27, 22, 0, 8, 25, 3, 9, 26, 
			34, 16, 49, 37, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 
			29, 0, 43, 0, 40, 0, 0, 21, 0, 16, 0, 0, 0, 0, 24, 
			0, 0, 37, 0, 19, 6, 0, 54, 23, 0, 0, 0, 7, 15, 7, 
			0, 0, 16, 3, 142, 104, 8, 0, 11, 27, 33, 48, 27, 2, 9, 
			0, 0, 14, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 9, 
			0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 
			2, 0, 0, 0, 0, 0, 0, 0, 5, 12, 0, 0, 9, 23, 6, 
			

			5, 14, 7, 12, 7, 10, 10, 4, 6, 13, 14, 8, 11, 10, 7, 
			5, 8, 6, 14, 5, 42, 31, 21, 18, 14, 44, 24, 0, 1, 11, 
			31, 0, 5, 9, 0, 6, 41, 4, 9, 21, 79, 58, 58, 0, 7, 
			93, 0, 13, 3, 29, 0, 65, 51, 42, 0, 91, 41, 51, 32, 0, 
			121, 58, 45, 0, 122, 76, 97, 69, 45, 0, 76, 80, 39, 57, 0, 
			93, 87, 65, 8, 38, 71, 121, 71, 79, 0, 115, 76, 30, 53, 39, 
			93, 123, 28, 52, 0, 45, 116, 89, 94, 0, 114, 69, 27, 39, 58, 
			107, 125, 54, 54, 3, 69, 117, 57, 68, 6, 93, 70, 24, 44, 32, 
			132, 103, 120, 53, 52, 21, 54, 59, 27, 34, 34, 56, 2, 18, 20, 
			109, 99, 150, 25, 103, 27, 22, 111, 49, 56, 57, 15, 15, 14, 25, 
			67, 96, 133, 14, 202, 111, 77, 118, 116, 48, 33, 49, 46, 36, 47, 
			34, 77, 113, 72, 179, 82, 43, 44, 65, 54, 63, 62, 71, 74, 81, 
			90, 26, 34, 150, 127, 70, 71, 62, 62, 62, 66, 76, 83, 77, 83, 
			100, 70, 0, 172, 86, 64, 78, 67, 64, 70, 72, 77, 78, 76, 103, 
			108, 79, 62, 60, 58, 49, 65, 71, 71, 80, 84, 65, 69, 121, 112, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 11, 6, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 16, 6, 0, 
			20, 26, 0, 0, 0, 48, 13, 23, 0, 0, 0, 0, 0, 17, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 7, 3, 0, 9, 
			0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 5, 
			0, 0, 0, 3, 49, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 
			0, 4, 19, 0, 8, 0, 7, 0, 0, 0, 5, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 23, 25, 1, 0, 0, 3, 0, 5, 0, 
			0, 0, 0, 0, 0, 45, 6, 0, 0, 7, 34, 36, 10, 0, 0, 
			0, 0, 0, 0, 2, 0, 0, 0, 0, 31, 32, 7, 0, 0, 0, 
			0, 0, 7, 0, 0, 0, 0, 28, 3, 0, 0, 0, 0, 22, 25, 
			66, 15, 0, 0, 78, 64, 46, 45, 19, 6, 0, 1, 0, 0, 0, 
			0, 44, 0, 19, 55, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 
			0, 0, 27, 68, 3, 0, 0, 0, 0, 0, 0, 12, 2, 0, 37, 
			0, 0, 7, 70, 18, 18, 17, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			48, 48, 49, 54, 53, 45, 52, 56, 55, 46, 32, 27, 35, 46, 50, 
			48, 50, 51, 56, 48, 48, 67, 47, 32, 10, 25, 23, 11, 20, 46, 
			46, 1, 53, 55, 53, 34, 42, 20, 12, 0, 35, 19, 34, 3, 17, 
			75, 0, 51, 48, 60, 20, 46, 34, 16, 0, 43, 19, 23, 18, 0, 
			56, 14, 67, 5, 57, 50, 51, 39, 22, 0, 37, 52, 17, 31, 0, 
			42, 7, 67, 50, 0, 18, 54, 44, 52, 0, 59, 40, 6, 23, 21, 
			38, 39, 16, 74, 0, 5, 41, 41, 52, 0, 53, 39, 8, 7, 35, 
			37, 35, 30, 48, 9, 2, 56, 15, 32, 0, 36, 41, 0, 15, 28, 
			42, 14, 62, 0, 46, 0, 26, 32, 0, 42, 13, 28, 0, 6, 40, 
			22, 18, 65, 0, 44, 14, 0, 48, 32, 18, 23, 0, 0, 18, 44, 
			0, 21, 59, 0, 83, 54, 0, 14, 32, 19, 0, 0, 0, 0, 4, 
			0, 0, 28, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 50, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 4, 
			

			12, 0, 6, 5, 5, 1, 8, 6, 2, 7, 15, 11, 7, 10, 3, 
			6, 0, 2, 4, 3, 0, 33, 3, 14, 0, 0, 9, 11, 11, 3, 
			0, 12, 8, 3, 3, 0, 23, 16, 23, 0, 1, 6, 3, 27, 0, 
			0, 0, 12, 0, 0, 4, 0, 27, 3, 0, 6, 8, 7, 24, 0, 
			43, 0, 48, 20, 0, 35, 4, 17, 0, 8, 0, 31, 0, 4, 30, 
			104, 0, 67, 27, 0, 64, 0, 7, 0, 0, 36, 48, 0, 6, 25, 
			123, 0, 57, 0, 0, 0, 0, 25, 0, 0, 37, 23, 1, 0, 20, 
			92, 0, 82, 0, 0, 0, 46, 6, 16, 0, 11, 16, 0, 0, 25, 
			44, 0, 87, 0, 52, 16, 9, 0, 8, 0, 0, 33, 0, 0, 0, 
			0, 0, 23, 0, 33, 65, 13, 0, 45, 16, 20, 11, 0, 0, 16, 
			0, 9, 16, 0, 5, 30, 0, 0, 50, 14, 0, 0, 2, 0, 17, 
			0, 0, 38, 0, 14, 60, 0, 3, 14, 1, 0, 0, 0, 0, 0, 
			12, 0, 40, 0, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			8, 3, 17, 0, 25, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 
			11, 0, 8, 0, 6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 17, 
			

			34, 41, 34, 38, 35, 34, 40, 36, 31, 38, 39, 35, 34, 32, 28, 
			34, 32, 34, 42, 32, 54, 48, 43, 40, 21, 39, 27, 19, 29, 35, 
			52, 30, 35, 37, 30, 48, 51, 12, 6, 27, 71, 57, 56, 14, 35, 
			76, 0, 42, 31, 47, 16, 59, 44, 44, 22, 87, 43, 47, 30, 6, 
			99, 68, 66, 0, 113, 65, 89, 57, 46, 0, 68, 65, 39, 49, 0, 
			76, 102, 81, 12, 64, 70, 108, 63, 67, 0, 110, 70, 37, 48, 30, 
			67, 124, 54, 57, 24, 46, 123, 84, 83, 17, 106, 56, 28, 34, 55, 
			82, 117, 53, 66, 13, 86, 124, 69, 67, 29, 90, 60, 28, 55, 48, 
			110, 101, 93, 66, 43, 41, 54, 51, 39, 46, 39, 62, 12, 33, 37, 
			107, 98, 126, 31, 90, 30, 30, 97, 46, 68, 67, 14, 27, 38, 48, 
			82, 92, 118, 17, 161, 80, 81, 126, 110, 42, 16, 30, 39, 49, 50, 
			60, 92, 106, 86, 173, 74, 39, 38, 52, 43, 52, 49, 55, 59, 62, 
			73, 43, 46, 152, 109, 54, 56, 50, 48, 46, 50, 57, 70, 63, 64, 
			79, 55, 16, 184, 70, 51, 58, 50, 49, 54, 57, 64, 62, 54, 96, 
			85, 60, 51, 71, 49, 43, 60, 59, 54, 60, 63, 50, 49, 95, 88, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 15, 16, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 10, 20, 3, 4, 10, 2, 0, 
			4, 1, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0, 8, 2, 0, 
			22, 32, 0, 0, 33, 0, 0, 0, 0, 21, 5, 7, 15, 9, 0, 
			19, 24, 0, 0, 0, 0, 8, 0, 3, 29, 10, 5, 12, 12, 3, 
			17, 29, 0, 0, 0, 17, 19, 18, 6, 16, 10, 8, 20, 13, 0, 
			27, 40, 14, 19, 0, 15, 1, 1, 10, 0, 6, 14, 14, 0, 0, 
			37, 41, 21, 31, 8, 1, 9, 1, 7, 9, 12, 12, 8, 0, 0, 
			48, 28, 23, 43, 3, 1, 33, 47, 27, 14, 30, 36, 43, 36, 25, 
			102, 68, 28, 32, 42, 75, 73, 73, 73, 71, 82, 86, 93, 94, 92, 
			103, 94, 59, 36, 67, 79, 78, 79, 80, 85, 92, 95, 97, 99, 104, 
			113, 96, 90, 76, 69, 84, 78, 79, 84, 91, 100, 108, 105, 113, 116, 
			109, 108, 91, 94, 80, 92, 94, 86, 81, 88, 92, 99, 100, 107, 103, 
			

			35, 38, 30, 31, 30, 31, 34, 39, 29, 25, 22, 24, 17, 17, 17, 
			26, 32, 32, 33, 32, 18, 5, 23, 25, 5, 0, 0, 14, 23, 16, 
			23, 51, 35, 36, 39, 104, 24, 13, 0, 8, 0, 0, 0, 4, 26, 
			0, 0, 29, 35, 18, 14, 0, 0, 0, 38, 0, 6, 0, 0, 31, 
			0, 0, 3, 22, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 
			0, 40, 2, 34, 136, 30, 5, 0, 0, 22, 3, 0, 1, 0, 0, 
			0, 33, 30, 12, 66, 22, 45, 0, 0, 52, 6, 0, 0, 0, 0, 
			0, 17, 0, 0, 12, 59, 20, 37, 0, 61, 20, 0, 2, 12, 9, 
			0, 30, 0, 22, 0, 60, 22, 0, 0, 18, 53, 6, 10, 20, 12, 
			49, 37, 0, 23, 0, 0, 4, 0, 0, 24, 0, 0, 0, 11, 17, 
			67, 27, 1, 28, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 
			66, 50, 0, 61, 68, 32, 29, 23, 0, 0, 0, 0, 0, 0, 0, 
			0, 43, 30, 74, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 46, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			3, 0, 0, 1, 7, 0, 0, 4, 9, 1, 0, 0, 0, 3, 7, 
			8, 2, 0, 0, 1, 6, 13, 0, 0, 17, 26, 25, 12, 2, 3, 
			0, 0, 6, 5, 6, 0, 19, 35, 15, 0, 0, 0, 8, 6, 0, 
			24, 19, 13, 7, 8, 21, 4, 0, 0, 0, 0, 0, 5, 8, 0, 
			10, 0, 11, 0, 0, 0, 0, 0, 0, 8, 7, 5, 0, 4, 5, 
			2, 0, 5, 7, 0, 0, 0, 4, 12, 0, 0, 3, 0, 0, 12, 
			9, 0, 6, 5, 0, 0, 0, 0, 0, 0, 4, 13, 12, 3, 0, 
			0, 0, 20, 19, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 
			0, 0, 14, 0, 12, 0, 18, 9, 0, 41, 0, 0, 0, 0, 0, 
			0, 0, 2, 9, 0, 0, 5, 0, 0, 0, 0, 5, 0, 0, 4, 
			0, 0, 9, 0, 8, 0, 0, 0, 0, 24, 25, 4, 5, 22, 33, 
			0, 0, 0, 0, 0, 20, 19, 18, 8, 2, 0, 0, 0, 0, 0, 
			6, 0, 0, 0, 6, 0, 0, 0, 3, 2, 2, 0, 0, 0, 0, 
			1, 4, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 4, 0, 0, 
			0, 0, 8, 1, 7, 0, 0, 0, 0, 3, 0, 1, 0, 0, 4, 
			
		others=>0 );
END inmem_package;

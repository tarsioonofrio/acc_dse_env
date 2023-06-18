LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					-1014, -1839, 6871, -668, 5339, 7577, -5494, -1085, -4197, 12674, -2035, 130, 13281, -4828, 5995, -1835, 1739, -2551, 1337, -2717, 5909, 2760, 5929, 1037, -3789, -1797, 16663, 3080, -8786, -429, 7471, 8034, -2032, 16333, -1477, 10705, 659, 6519, 10617, -574, 6688, -1796, 1970, 8986, -1273, 7731, 961, 11510, -3150, -3907, -1751, 11343, -109, 27, 3781, 2976, -959, 8947, 1137, 9949, -3950, -826, 10503, 824,

					-- weights
					-- layer=1 filter=0 channel=0
					-6, 1, 4, 14, -16, -9, -2, -22, -13,
					-- layer=1 filter=0 channel=1
					-11, -22, 10, -16, 13, -9, -19, 11, -7,
					-- layer=1 filter=0 channel=2
					12, -15, -7, -4, -18, 0, -23, 10, -6,
					-- layer=1 filter=0 channel=3
					-14, -20, 9, 4, 8, 3, -8, -12, -17,
					-- layer=1 filter=0 channel=4
					-1, 3, -19, -3, 6, 7, 5, 12, 14,
					-- layer=1 filter=0 channel=5
					9, 4, -9, -20, -10, 9, -19, 13, 18,
					-- layer=1 filter=0 channel=6
					-1, -14, 14, -10, -5, 14, 3, -9, -4,
					-- layer=1 filter=0 channel=7
					16, -7, 5, -14, 4, -8, -17, -21, -6,
					-- layer=1 filter=0 channel=8
					-12, 6, -26, 2, -2, -1, -24, 0, -5,
					-- layer=1 filter=0 channel=9
					0, -12, -18, -22, -13, 13, 7, -2, -7,
					-- layer=1 filter=0 channel=10
					-4, -2, -10, 14, -4, 16, 8, -6, -6,
					-- layer=1 filter=0 channel=11
					1, -8, 20, 0, 15, -19, 12, -6, -10,
					-- layer=1 filter=0 channel=12
					-12, -7, -19, 4, 2, 1, -1, -5, -9,
					-- layer=1 filter=0 channel=13
					-11, 0, -19, 15, 7, 1, -4, 11, -6,
					-- layer=1 filter=0 channel=14
					-2, 1, -9, -17, -20, 1, -9, -16, -2,
					-- layer=1 filter=0 channel=15
					-14, 8, -24, 12, 0, -17, 2, -3, 7,
					-- layer=1 filter=0 channel=16
					-1, 3, -7, -10, 15, -12, 5, -18, 10,
					-- layer=1 filter=0 channel=17
					-5, -6, -15, -10, 7, -3, -2, 3, 8,
					-- layer=1 filter=0 channel=18
					8, 18, -1, 0, 5, 5, -5, -7, -21,
					-- layer=1 filter=0 channel=19
					10, -8, -13, -13, -16, -10, 17, -9, -11,
					-- layer=1 filter=0 channel=20
					-3, -35, -18, -3, 10, -3, -2, 1, -7,
					-- layer=1 filter=0 channel=21
					-2, -19, 19, -1, -23, 16, 14, 2, -8,
					-- layer=1 filter=0 channel=22
					-7, -1, 0, 11, -12, 24, 16, 0, 14,
					-- layer=1 filter=0 channel=23
					4, -18, -1, -5, 3, -13, -22, -4, 0,
					-- layer=1 filter=0 channel=24
					8, -22, -16, -12, -14, -20, -16, -18, 1,
					-- layer=1 filter=0 channel=25
					-19, -8, 15, -17, 0, 7, -6, -9, -6,
					-- layer=1 filter=0 channel=26
					-6, -11, -11, -7, -6, 15, -6, -1, 10,
					-- layer=1 filter=0 channel=27
					6, 18, -16, -21, 11, -15, -7, -3, 7,
					-- layer=1 filter=0 channel=28
					2, -7, -23, -8, -1, -23, -8, 2, -4,
					-- layer=1 filter=0 channel=29
					9, -11, -3, -17, 7, -9, -26, -6, -28,
					-- layer=1 filter=0 channel=30
					11, -8, -3, -6, 14, 14, -12, -18, 14,
					-- layer=1 filter=0 channel=31
					10, -21, -12, -19, -9, 5, -6, -17, -1,
					-- layer=1 filter=1 channel=0
					-3, -18, 5, -4, -8, 5, -7, -14, -14,
					-- layer=1 filter=1 channel=1
					-9, -27, 14, -20, 8, -3, -18, 1, -14,
					-- layer=1 filter=1 channel=2
					7, -24, 0, -23, 1, 0, 9, -22, 16,
					-- layer=1 filter=1 channel=3
					0, -1, -18, -21, 9, -8, 10, -17, 13,
					-- layer=1 filter=1 channel=4
					-27, 9, -14, -10, -12, -6, -12, 9, -11,
					-- layer=1 filter=1 channel=5
					-19, 7, -10, 5, -6, 4, -17, -5, -11,
					-- layer=1 filter=1 channel=6
					-17, 9, -4, -16, -18, 2, -18, -17, 21,
					-- layer=1 filter=1 channel=7
					-6, -21, 12, -32, -19, -18, -1, -17, 18,
					-- layer=1 filter=1 channel=8
					7, -17, 1, -6, -3, -21, 14, 10, 9,
					-- layer=1 filter=1 channel=9
					-9, -19, -6, -17, -5, -12, -17, -22, -14,
					-- layer=1 filter=1 channel=10
					-19, 3, -7, -13, -1, -11, -13, -5, 6,
					-- layer=1 filter=1 channel=11
					-29, -12, -5, 13, 3, 8, -19, 9, -6,
					-- layer=1 filter=1 channel=12
					10, 8, -23, 8, 6, -20, 15, 10, -24,
					-- layer=1 filter=1 channel=13
					13, 8, -14, -13, 8, -9, -15, 7, -8,
					-- layer=1 filter=1 channel=14
					-27, -16, -14, 3, -22, -26, 19, -8, 9,
					-- layer=1 filter=1 channel=15
					-11, 14, -1, -9, 4, -3, -4, 6, -18,
					-- layer=1 filter=1 channel=16
					-21, 9, -6, -13, 9, -19, 16, 5, -12,
					-- layer=1 filter=1 channel=17
					-24, 5, 0, -18, -1, -8, -22, -14, -4,
					-- layer=1 filter=1 channel=18
					10, -14, 8, -1, -3, -17, -13, -22, -4,
					-- layer=1 filter=1 channel=19
					-7, -5, 2, 2, 8, 12, 9, -10, -8,
					-- layer=1 filter=1 channel=20
					6, 17, 12, 9, 14, -20, -12, 16, -21,
					-- layer=1 filter=1 channel=21
					0, -7, 19, -7, 27, 3, -10, 13, -5,
					-- layer=1 filter=1 channel=22
					-17, 13, 2, 20, -13, -6, -23, 12, 13,
					-- layer=1 filter=1 channel=23
					-18, 0, -27, -5, -11, 3, -4, -2, -1,
					-- layer=1 filter=1 channel=24
					-22, 4, -19, -19, -21, 0, -15, -5, -11,
					-- layer=1 filter=1 channel=25
					-21, -6, 0, 7, -13, 5, 0, -9, -23,
					-- layer=1 filter=1 channel=26
					-8, -20, -15, 7, 19, 14, 16, -10, 0,
					-- layer=1 filter=1 channel=27
					2, 5, -6, -13, 3, 15, 7, 0, -16,
					-- layer=1 filter=1 channel=28
					-29, -26, -25, -12, 5, -24, -13, 5, 12,
					-- layer=1 filter=1 channel=29
					0, -20, 10, -2, -4, -16, -26, -3, 6,
					-- layer=1 filter=1 channel=30
					-14, -8, -7, 16, 7, -7, 5, -3, 8,
					-- layer=1 filter=1 channel=31
					-3, -22, 9, 13, -11, 14, -6, 15, -21,
					-- layer=1 filter=2 channel=0
					8, -5, 13, 5, -5, 19, 12, -11, 16,
					-- layer=1 filter=2 channel=1
					49, 34, 43, 40, 25, 12, -55, -41, -21,
					-- layer=1 filter=2 channel=2
					-5, -1, 0, -24, -19, -6, 6, -6, -1,
					-- layer=1 filter=2 channel=3
					-17, 9, 6, 2, -1, 3, -17, 2, -21,
					-- layer=1 filter=2 channel=4
					-5, -23, -14, -23, -44, -9, -26, -26, -5,
					-- layer=1 filter=2 channel=5
					58, -5, 25, 15, -7, 14, 33, -28, -4,
					-- layer=1 filter=2 channel=6
					0, 15, -12, 0, -9, -16, 16, -12, 14,
					-- layer=1 filter=2 channel=7
					-29, -24, 16, -32, 5, -25, -5, 7, 5,
					-- layer=1 filter=2 channel=8
					40, 18, -9, 9, 47, 37, 18, 26, 5,
					-- layer=1 filter=2 channel=9
					33, 50, 51, 54, 69, 31, 36, 44, 30,
					-- layer=1 filter=2 channel=10
					-26, -5, 0, 5, 22, 2, -9, -16, -1,
					-- layer=1 filter=2 channel=11
					6, 63, 61, 59, 102, 67, 96, 67, 81,
					-- layer=1 filter=2 channel=12
					-1, 8, 18, -46, -55, -53, -60, -78, -65,
					-- layer=1 filter=2 channel=13
					29, -8, -14, -11, 7, 30, -15, 15, 20,
					-- layer=1 filter=2 channel=14
					-16, -7, 7, 0, 19, -43, -8, -15, -1,
					-- layer=1 filter=2 channel=15
					6, -7, -35, -58, -48, -30, -73, -69, -85,
					-- layer=1 filter=2 channel=16
					29, -15, 55, -12, 7, 48, 13, 21, 22,
					-- layer=1 filter=2 channel=17
					71, 34, 74, 41, 50, 68, 65, 56, 58,
					-- layer=1 filter=2 channel=18
					-1, 4, 3, -22, 10, -9, -11, -10, 19,
					-- layer=1 filter=2 channel=19
					29, 39, 23, 10, 54, 24, 32, 20, 12,
					-- layer=1 filter=2 channel=20
					11, -10, 14, 10, 7, -8, -21, -17, -46,
					-- layer=1 filter=2 channel=21
					-14, -6, -21, -45, -34, 2, -84, 22, -31,
					-- layer=1 filter=2 channel=22
					-18, -20, -38, -77, -42, -22, -21, -53, -28,
					-- layer=1 filter=2 channel=23
					-4, -18, 6, 5, -2, 6, 35, -3, 0,
					-- layer=1 filter=2 channel=24
					10, 16, 5, -10, 6, 17, 17, 1, 3,
					-- layer=1 filter=2 channel=25
					15, 54, 0, 12, 10, 43, 3, 42, 26,
					-- layer=1 filter=2 channel=26
					-4, -12, 20, 13, 7, -9, -21, -19, -19,
					-- layer=1 filter=2 channel=27
					-23, -26, -35, -46, -15, -50, -14, -35, -21,
					-- layer=1 filter=2 channel=28
					-48, 26, -19, 10, -40, -25, 1, -14, -39,
					-- layer=1 filter=2 channel=29
					-93, -62, -42, -75, -106, -114, -90, -112, -90,
					-- layer=1 filter=2 channel=30
					12, 10, -16, -23, -29, -6, -1, 5, 12,
					-- layer=1 filter=2 channel=31
					13, 56, 22, 11, 26, 1, -53, -57, -7,
					-- layer=1 filter=3 channel=0
					15, 24, -24, -31, -48, -34, -10, -51, -25,
					-- layer=1 filter=3 channel=1
					37, 1, -69, 38, 6, -40, 58, 32, -50,
					-- layer=1 filter=3 channel=2
					5, -34, 37, -17, -20, -4, 0, -27, -23,
					-- layer=1 filter=3 channel=3
					-31, -17, 18, -58, -28, 8, -72, -50, 0,
					-- layer=1 filter=3 channel=4
					-13, 6, -1, -22, -4, 15, -6, 6, 18,
					-- layer=1 filter=3 channel=5
					16, 109, 22, -9, 69, 69, -40, 49, 71,
					-- layer=1 filter=3 channel=6
					46, -15, -28, 28, 4, -30, 15, 24, 0,
					-- layer=1 filter=3 channel=7
					3, 17, 28, -8, 29, 18, 1, 15, 2,
					-- layer=1 filter=3 channel=8
					18, 5, -24, -21, -9, -16, -19, -24, -45,
					-- layer=1 filter=3 channel=9
					-3, 12, -6, 10, 1, -15, 14, 16, -5,
					-- layer=1 filter=3 channel=10
					38, 2, -28, 26, 10, -36, 16, 2, -20,
					-- layer=1 filter=3 channel=11
					-25, -78, -32, -50, -157, -92, -50, -105, -96,
					-- layer=1 filter=3 channel=12
					39, 7, -49, 55, 28, -33, 59, 4, -21,
					-- layer=1 filter=3 channel=13
					21, -14, -43, 38, -4, -40, 21, -17, -48,
					-- layer=1 filter=3 channel=14
					38, -3, -55, 14, 25, -12, 1, 3, -10,
					-- layer=1 filter=3 channel=15
					45, 7, -63, 29, 16, -37, 8, 3, -48,
					-- layer=1 filter=3 channel=16
					17, 2, -2, 61, -81, 20, 0, -68, -66,
					-- layer=1 filter=3 channel=17
					-51, -38, -18, -169, -111, -17, -127, -187, -33,
					-- layer=1 filter=3 channel=18
					19, -5, 1, 20, -4, -1, -8, 10, -26,
					-- layer=1 filter=3 channel=19
					10, -17, -50, 37, -11, -23, 10, -4, -40,
					-- layer=1 filter=3 channel=20
					7, 34, -32, -36, 56, 24, -28, 28, 20,
					-- layer=1 filter=3 channel=21
					-12, -18, 64, 2, -36, 94, 29, -22, 78,
					-- layer=1 filter=3 channel=22
					7, -11, 14, 26, 2, 19, 22, 11, 28,
					-- layer=1 filter=3 channel=23
					12, 26, 11, -11, 67, 28, -33, 50, 39,
					-- layer=1 filter=3 channel=24
					34, -9, -51, 39, -10, -22, 10, -23, -44,
					-- layer=1 filter=3 channel=25
					-26, -88, 22, -6, -98, 38, 6, -72, -10,
					-- layer=1 filter=3 channel=26
					16, -26, 9, -15, -2, -1, 10, -7, 16,
					-- layer=1 filter=3 channel=27
					12, -17, -44, 48, -6, -24, 20, -19, -17,
					-- layer=1 filter=3 channel=28
					40, -41, 1, -43, -110, -33, -27, -54, -94,
					-- layer=1 filter=3 channel=29
					28, 35, -2, -16, 12, -3, 0, 9, 0,
					-- layer=1 filter=3 channel=30
					21, -13, -33, 0, -11, -29, 25, -29, -52,
					-- layer=1 filter=3 channel=31
					52, -9, -54, 71, -6, -49, 42, 0, -41,
					-- layer=1 filter=4 channel=0
					-22, 0, -8, -26, -3, -8, 7, 9, 19,
					-- layer=1 filter=4 channel=1
					-32, -21, -22, -10, 1, -22, 11, 6, 18,
					-- layer=1 filter=4 channel=2
					25, 4, -34, -17, -5, -5, 29, -45, 3,
					-- layer=1 filter=4 channel=3
					-6, -45, -16, -2, -63, -25, -31, -13, 3,
					-- layer=1 filter=4 channel=4
					-13, -40, 10, -4, -41, -21, -5, -27, 3,
					-- layer=1 filter=4 channel=5
					22, 109, 30, 25, 85, -17, -13, 53, -25,
					-- layer=1 filter=4 channel=6
					-17, 12, 11, -7, -22, 14, 1, 4, 9,
					-- layer=1 filter=4 channel=7
					-43, -16, -15, -59, -23, -21, -31, -5, -29,
					-- layer=1 filter=4 channel=8
					14, -17, 13, 17, 25, 27, -10, 10, 19,
					-- layer=1 filter=4 channel=9
					17, -4, 8, 15, -2, 31, 18, 8, -6,
					-- layer=1 filter=4 channel=10
					7, -35, 22, -7, -29, 11, -14, -6, 16,
					-- layer=1 filter=4 channel=11
					-1, 3, -13, -30, -29, 26, 7, -13, -16,
					-- layer=1 filter=4 channel=12
					-1, -31, 6, -2, 14, -2, -20, 17, 29,
					-- layer=1 filter=4 channel=13
					-17, -5, 29, -4, 28, 28, 17, 33, 22,
					-- layer=1 filter=4 channel=14
					-12, -8, 6, -29, 31, -29, -39, 0, -29,
					-- layer=1 filter=4 channel=15
					-54, -58, -39, -33, -20, -15, -18, 13, -27,
					-- layer=1 filter=4 channel=16
					-27, -27, 7, 26, -30, 53, -15, -54, 9,
					-- layer=1 filter=4 channel=17
					-18, -6, -27, 22, 3, 6, 13, 3, 33,
					-- layer=1 filter=4 channel=18
					-10, -30, -29, -14, -23, -4, -3, 19, 23,
					-- layer=1 filter=4 channel=19
					9, -27, 10, -1, 17, 19, 13, 6, 11,
					-- layer=1 filter=4 channel=20
					-14, 87, 14, -19, 127, -81, -66, 34, -89,
					-- layer=1 filter=4 channel=21
					45, 70, 26, 79, 60, 59, 57, -26, 54,
					-- layer=1 filter=4 channel=22
					4, -22, -1, 24, -24, -1, 8, -15, 50,
					-- layer=1 filter=4 channel=23
					-37, -15, 1, -34, 13, -25, -34, 2, -19,
					-- layer=1 filter=4 channel=24
					28, -11, -22, -11, -38, 9, 32, -2, 1,
					-- layer=1 filter=4 channel=25
					33, 6, 49, 46, -5, 32, 29, 12, 8,
					-- layer=1 filter=4 channel=26
					9, 2, 17, 6, -5, -13, 14, 13, 5,
					-- layer=1 filter=4 channel=27
					-28, -38, -6, -8, -21, -6, 9, -43, 22,
					-- layer=1 filter=4 channel=28
					20, -24, -35, -31, -77, -32, 14, -28, -50,
					-- layer=1 filter=4 channel=29
					-22, 4, -11, -55, -8, -50, -76, -21, -44,
					-- layer=1 filter=4 channel=30
					-31, -16, -9, -16, -28, 19, 19, -28, 40,
					-- layer=1 filter=4 channel=31
					-10, -9, 6, 1, 4, 2, -16, 7, 33,
					-- layer=1 filter=5 channel=0
					4, 6, 35, 28, 8, -13, 1, -15, 21,
					-- layer=1 filter=5 channel=1
					8, 2, -11, 0, 6, 0, 27, 4, 9,
					-- layer=1 filter=5 channel=2
					14, 14, 19, -1, -20, -12, -1, -18, -24,
					-- layer=1 filter=5 channel=3
					-12, -27, -47, 20, -37, -6, 39, -30, -35,
					-- layer=1 filter=5 channel=4
					9, 12, -29, -32, -28, -65, -54, -33, -56,
					-- layer=1 filter=5 channel=5
					14, -58, -22, 46, -6, -7, 6, -29, 8,
					-- layer=1 filter=5 channel=6
					0, 22, 7, 19, -1, 15, -8, 22, 5,
					-- layer=1 filter=5 channel=7
					0, 7, -1, -16, 7, -26, -15, -19, -25,
					-- layer=1 filter=5 channel=8
					-16, 18, 14, 30, 3, 26, -16, 37, 27,
					-- layer=1 filter=5 channel=9
					35, 51, 30, 47, 39, 42, 55, 63, 56,
					-- layer=1 filter=5 channel=10
					-6, 6, 16, -3, 10, 18, -18, 1, 0,
					-- layer=1 filter=5 channel=11
					35, -4, 18, -4, 38, 19, 55, 28, 9,
					-- layer=1 filter=5 channel=12
					20, 7, 13, -3, 13, 3, 16, -11, 4,
					-- layer=1 filter=5 channel=13
					-9, 10, -14, 27, -15, -5, 0, -18, 11,
					-- layer=1 filter=5 channel=14
					8, 20, 14, -15, 0, 4, -7, -35, -25,
					-- layer=1 filter=5 channel=15
					0, -15, -9, -11, -33, 4, -2, 5, -33,
					-- layer=1 filter=5 channel=16
					-11, 13, -9, -35, -27, -17, -36, -38, -18,
					-- layer=1 filter=5 channel=17
					54, 13, 60, 36, 4, -52, 46, -6, -14,
					-- layer=1 filter=5 channel=18
					6, -10, -19, -13, -13, -13, 5, 4, -22,
					-- layer=1 filter=5 channel=19
					-14, 9, 2, 7, 39, -1, 21, 37, 41,
					-- layer=1 filter=5 channel=20
					10, 12, 7, 50, 38, 41, 46, 60, 44,
					-- layer=1 filter=5 channel=21
					-29, -55, 2, 6, 3, -7, -88, -30, -21,
					-- layer=1 filter=5 channel=22
					-38, -35, -89, -82, -57, -58, -84, -71, -59,
					-- layer=1 filter=5 channel=23
					-11, -4, 3, -4, -15, 10, 0, 14, -11,
					-- layer=1 filter=5 channel=24
					-6, -7, 5, 9, 31, 8, -19, 18, 3,
					-- layer=1 filter=5 channel=25
					7, -10, 35, -2, 26, 24, -1, 58, 0,
					-- layer=1 filter=5 channel=26
					-12, 3, -20, 16, -23, -15, -11, -18, 8,
					-- layer=1 filter=5 channel=27
					-4, -23, -46, -36, 6, 10, -47, -47, -13,
					-- layer=1 filter=5 channel=28
					0, -43, -23, 5, -24, -22, -4, -29, -76,
					-- layer=1 filter=5 channel=29
					-28, -44, -46, -133, -54, -116, -112, -119, -115,
					-- layer=1 filter=5 channel=30
					0, 11, 2, -8, -1, -21, -43, -23, -18,
					-- layer=1 filter=5 channel=31
					3, -7, -12, -10, 3, 23, 2, -5, 0,
					-- layer=1 filter=6 channel=0
					-16, -10, 3, 9, -3, 0, 13, 13, 1,
					-- layer=1 filter=6 channel=1
					21, 9, 4, 9, 41, 4, -28, -37, -49,
					-- layer=1 filter=6 channel=2
					48, 38, 43, 5, 9, 14, -43, -41, -27,
					-- layer=1 filter=6 channel=3
					55, 41, 42, 48, 50, 35, 40, 8, 9,
					-- layer=1 filter=6 channel=4
					34, 0, 11, -13, -27, -11, -26, -42, -14,
					-- layer=1 filter=6 channel=5
					17, 30, 38, 19, 75, 19, 53, 30, 23,
					-- layer=1 filter=6 channel=6
					7, -23, 7, -38, -38, 5, -34, -36, -3,
					-- layer=1 filter=6 channel=7
					9, 14, 33, -13, -20, -22, -34, -61, -73,
					-- layer=1 filter=6 channel=8
					8, -10, -21, -29, -9, -8, 33, 46, 34,
					-- layer=1 filter=6 channel=9
					5, -3, 32, 10, -24, 10, -11, -41, -44,
					-- layer=1 filter=6 channel=10
					-16, 7, 17, -45, -26, -24, -16, -39, -28,
					-- layer=1 filter=6 channel=11
					26, 40, 41, 83, 87, 66, 40, 6, 65,
					-- layer=1 filter=6 channel=12
					16, 2, 1, 37, 25, 19, 27, 7, -19,
					-- layer=1 filter=6 channel=13
					1, -15, -3, -20, -24, -43, -4, 29, 23,
					-- layer=1 filter=6 channel=14
					-6, -30, -15, 23, 24, -4, -30, -5, -19,
					-- layer=1 filter=6 channel=15
					17, -2, 13, -11, -20, -6, 51, 44, 0,
					-- layer=1 filter=6 channel=16
					15, 7, -28, 38, 47, 39, -19, 8, -19,
					-- layer=1 filter=6 channel=17
					106, 158, 123, 170, 190, 209, 136, 123, 104,
					-- layer=1 filter=6 channel=18
					-19, -7, -7, -1, -35, -16, -33, -33, 4,
					-- layer=1 filter=6 channel=19
					28, -2, 25, -6, -10, -16, 14, -33, 7,
					-- layer=1 filter=6 channel=20
					-19, -27, -1, 20, 26, -35, -2, 0, 15,
					-- layer=1 filter=6 channel=21
					-5, -13, -25, 7, 42, 32, -20, -3, 23,
					-- layer=1 filter=6 channel=22
					15, 7, 15, 16, 14, 0, 5, -3, 0,
					-- layer=1 filter=6 channel=23
					42, 25, 24, -6, 3, 5, -29, -16, -24,
					-- layer=1 filter=6 channel=24
					-15, -3, -22, 5, 52, 39, -20, 3, 17,
					-- layer=1 filter=6 channel=25
					5, 35, 13, 22, 41, 33, 11, 4, 8,
					-- layer=1 filter=6 channel=26
					-17, 16, -17, -7, -4, 7, 6, -15, -11,
					-- layer=1 filter=6 channel=27
					-13, 0, -9, 18, -2, 11, -21, -37, 18,
					-- layer=1 filter=6 channel=28
					43, 47, 21, 59, 74, 78, 24, 10, 34,
					-- layer=1 filter=6 channel=29
					28, 7, -4, 0, 43, 13, -37, -47, -40,
					-- layer=1 filter=6 channel=30
					18, 0, -11, -1, -20, -32, 14, 9, -10,
					-- layer=1 filter=6 channel=31
					27, 4, 15, 29, 8, -27, -47, -50, -50,
					-- layer=1 filter=7 channel=0
					-6, -7, 2, -14, -23, 13, -12, 12, -5,
					-- layer=1 filter=7 channel=1
					-12, 7, -18, -19, -1, 19, -13, -11, -14,
					-- layer=1 filter=7 channel=2
					0, -12, -10, 4, 17, -6, 5, 6, -3,
					-- layer=1 filter=7 channel=3
					-16, 16, -15, 15, 18, -12, -17, -20, 2,
					-- layer=1 filter=7 channel=4
					0, 5, 5, 14, -14, 19, -19, -10, 1,
					-- layer=1 filter=7 channel=5
					-20, -1, -17, -14, 6, 0, -9, -5, -8,
					-- layer=1 filter=7 channel=6
					-18, 1, -18, 4, -22, -8, 11, 8, -21,
					-- layer=1 filter=7 channel=7
					1, -18, -14, 1, 2, 19, 9, -12, 6,
					-- layer=1 filter=7 channel=8
					-18, 2, -18, -15, -14, 5, 2, 8, -3,
					-- layer=1 filter=7 channel=9
					3, -20, -6, -6, -8, 11, 12, -8, -12,
					-- layer=1 filter=7 channel=10
					-6, -2, 8, 1, -13, -17, -21, 1, -4,
					-- layer=1 filter=7 channel=11
					-14, 14, -15, 15, 0, 1, -6, -1, 13,
					-- layer=1 filter=7 channel=12
					-6, -10, -5, -23, -2, -14, 10, -23, 10,
					-- layer=1 filter=7 channel=13
					-24, -10, 2, 17, -7, -13, 11, -19, 9,
					-- layer=1 filter=7 channel=14
					-9, 6, 13, 4, -22, -6, 9, -14, 9,
					-- layer=1 filter=7 channel=15
					-16, -9, -14, -10, -6, -7, -16, -1, -15,
					-- layer=1 filter=7 channel=16
					13, -13, 3, -7, -15, -1, -17, 9, -4,
					-- layer=1 filter=7 channel=17
					3, 5, 3, -2, 15, -16, -6, -11, -25,
					-- layer=1 filter=7 channel=18
					17, 9, -16, -21, -20, -11, -9, -13, -14,
					-- layer=1 filter=7 channel=19
					-5, 3, -3, 4, 14, -22, -19, -22, -13,
					-- layer=1 filter=7 channel=20
					-10, 0, 0, -13, -25, 11, -25, -2, 7,
					-- layer=1 filter=7 channel=21
					9, 11, -16, -5, 8, 7, -19, -16, -16,
					-- layer=1 filter=7 channel=22
					0, 4, -4, -14, -8, -2, -2, 4, -5,
					-- layer=1 filter=7 channel=23
					-1, -19, -7, 17, 0, -19, -18, -4, 0,
					-- layer=1 filter=7 channel=24
					-1, 2, 21, -7, 13, -3, -16, -12, -7,
					-- layer=1 filter=7 channel=25
					-1, -21, -18, 16, 0, 7, 15, -13, -16,
					-- layer=1 filter=7 channel=26
					5, -1, -19, -15, 5, -18, -1, -1, -20,
					-- layer=1 filter=7 channel=27
					20, -12, 2, -12, -10, 5, 3, -8, -18,
					-- layer=1 filter=7 channel=28
					-21, -19, 3, -10, -10, -1, -10, -14, -16,
					-- layer=1 filter=7 channel=29
					9, -12, 6, 15, 5, 6, -1, -3, 3,
					-- layer=1 filter=7 channel=30
					5, -21, 3, -16, 7, 14, -3, -4, 15,
					-- layer=1 filter=7 channel=31
					8, -5, 21, 15, -5, -14, 14, -17, -8,
					-- layer=1 filter=8 channel=0
					-8, -3, 0, 18, 30, 35, 5, 16, -11,
					-- layer=1 filter=8 channel=1
					15, 11, -14, 2, 10, 3, 14, -27, -2,
					-- layer=1 filter=8 channel=2
					-53, -54, -36, -32, 14, -51, -17, -27, 3,
					-- layer=1 filter=8 channel=3
					-31, -15, -1, 22, 82, 53, 59, 66, 70,
					-- layer=1 filter=8 channel=4
					-72, -63, -55, -45, -23, -32, -8, -1, -16,
					-- layer=1 filter=8 channel=5
					37, 63, 36, 102, 42, 23, 52, 45, -6,
					-- layer=1 filter=8 channel=6
					-2, -1, 0, -10, 20, -2, 14, 15, 6,
					-- layer=1 filter=8 channel=7
					-16, -61, -38, -29, -17, -28, -5, -3, 0,
					-- layer=1 filter=8 channel=8
					-43, 8, 11, -18, 6, 2, -22, -6, -12,
					-- layer=1 filter=8 channel=9
					-55, -37, -42, -69, -32, -12, -50, -19, -22,
					-- layer=1 filter=8 channel=10
					-26, 0, -27, 16, 12, -1, 1, 10, 0,
					-- layer=1 filter=8 channel=11
					1, 11, 24, 9, 41, 5, 2, 37, 17,
					-- layer=1 filter=8 channel=12
					25, -12, -15, 0, 25, -9, 0, -7, -14,
					-- layer=1 filter=8 channel=13
					2, -14, -12, 24, 2, 16, -15, 5, 8,
					-- layer=1 filter=8 channel=14
					3, 22, -25, -1, 14, -1, -17, 27, -12,
					-- layer=1 filter=8 channel=15
					-1, -3, -10, 14, -1, 25, 15, 1, 13,
					-- layer=1 filter=8 channel=16
					47, 38, -3, 54, 5, 4, 12, 6, 19,
					-- layer=1 filter=8 channel=17
					88, 100, 103, 87, 82, 86, 99, 63, 16,
					-- layer=1 filter=8 channel=18
					-13, 14, 21, 6, 12, 20, -8, -2, -15,
					-- layer=1 filter=8 channel=19
					-33, 11, -16, -31, 4, -26, -18, 9, -11,
					-- layer=1 filter=8 channel=20
					25, 25, -23, 68, 56, -4, 52, 26, 15,
					-- layer=1 filter=8 channel=21
					2, 21, 3, 68, 54, 19, 47, 63, 42,
					-- layer=1 filter=8 channel=22
					-44, 7, 0, -17, -23, -35, 23, -4, 26,
					-- layer=1 filter=8 channel=23
					-13, -41, -35, -27, -5, -37, -22, -4, -12,
					-- layer=1 filter=8 channel=24
					13, 0, -8, 7, 51, -13, 21, 18, 39,
					-- layer=1 filter=8 channel=25
					17, 25, -4, -11, -6, 10, -13, -22, -12,
					-- layer=1 filter=8 channel=26
					12, -15, 14, 5, -15, -18, -1, -15, -11,
					-- layer=1 filter=8 channel=27
					1, -3, 22, 11, 31, -5, 5, -5, 21,
					-- layer=1 filter=8 channel=28
					-24, 28, 10, 42, 88, 2, -2, -1, 54,
					-- layer=1 filter=8 channel=29
					-66, -53, -39, -13, -23, -36, 8, 2, 0,
					-- layer=1 filter=8 channel=30
					-17, 8, -15, 11, 26, -8, 5, 6, 21,
					-- layer=1 filter=8 channel=31
					25, 19, -1, 38, 13, 5, -1, -14, 15,
					-- layer=1 filter=9 channel=0
					1, -23, 14, -45, -57, -31, -20, -62, -39,
					-- layer=1 filter=9 channel=1
					5, -1, 30, -18, 0, -23, 1, -32, -3,
					-- layer=1 filter=9 channel=2
					36, 18, -20, 25, 20, 22, 12, 16, -2,
					-- layer=1 filter=9 channel=3
					-12, -37, -22, -57, -94, -110, -60, -79, -83,
					-- layer=1 filter=9 channel=4
					38, 21, -10, 22, -11, -23, 8, -2, 6,
					-- layer=1 filter=9 channel=5
					-81, -99, -25, -154, -163, -141, -81, -170, -151,
					-- layer=1 filter=9 channel=6
					34, 22, 19, 25, 30, -8, 2, 5, -19,
					-- layer=1 filter=9 channel=7
					43, 4, 39, 21, 5, 18, 15, -7, 9,
					-- layer=1 filter=9 channel=8
					-26, -19, 8, -40, -35, 1, 19, 4, -9,
					-- layer=1 filter=9 channel=9
					2, 24, 6, 18, 28, 16, 15, 34, 47,
					-- layer=1 filter=9 channel=10
					21, 2, 27, 10, -2, -23, -17, -17, -13,
					-- layer=1 filter=9 channel=11
					28, -8, -26, -33, -20, -40, -13, -17, -15,
					-- layer=1 filter=9 channel=12
					37, 5, 37, 24, 9, 9, -13, 6, 1,
					-- layer=1 filter=9 channel=13
					18, -5, 24, -11, -5, -11, -27, -4, -34,
					-- layer=1 filter=9 channel=14
					23, 12, 2, 8, -19, -21, -1, -31, -13,
					-- layer=1 filter=9 channel=15
					4, 13, 36, 4, 0, 10, -28, -29, -24,
					-- layer=1 filter=9 channel=16
					48, 49, 25, -42, -139, -58, -15, -62, 60,
					-- layer=1 filter=9 channel=17
					-68, -136, -166, -177, -225, -186, -38, -88, 11,
					-- layer=1 filter=9 channel=18
					-10, 26, 0, -16, 4, 6, -10, -43, -33,
					-- layer=1 filter=9 channel=19
					0, 1, -1, -42, -4, -26, -10, -8, 0,
					-- layer=1 filter=9 channel=20
					3, -8, 14, -90, -112, -49, -95, -119, -132,
					-- layer=1 filter=9 channel=21
					-74, -102, -102, -75, -151, -114, -138, -171, -109,
					-- layer=1 filter=9 channel=22
					17, -6, 8, -35, -46, -86, -68, -78, -62,
					-- layer=1 filter=9 channel=23
					7, 9, 15, 1, 33, 26, 24, 4, 6,
					-- layer=1 filter=9 channel=24
					30, 24, -9, -36, 7, 7, -32, -10, -21,
					-- layer=1 filter=9 channel=25
					-27, -15, -15, 5, -7, -13, -16, 6, 38,
					-- layer=1 filter=9 channel=26
					-6, -7, -16, 21, -8, 1, 19, 18, -22,
					-- layer=1 filter=9 channel=27
					14, -5, 17, -17, 7, -21, -27, -18, -22,
					-- layer=1 filter=9 channel=28
					27, 1, -30, -45, -15, -33, 14, -30, -21,
					-- layer=1 filter=9 channel=29
					45, 28, 63, -3, -9, -9, 6, 5, 33,
					-- layer=1 filter=9 channel=30
					-22, 1, 12, -3, -35, 4, -40, -31, -5,
					-- layer=1 filter=9 channel=31
					25, 4, 17, -5, -6, 0, -32, -27, -32,
					-- layer=1 filter=10 channel=0
					30, -16, -14, 0, 5, 2, 14, 13, -9,
					-- layer=1 filter=10 channel=1
					19, 0, -40, 42, -2, -63, 62, -9, -72,
					-- layer=1 filter=10 channel=2
					-32, -48, -24, -28, -41, -28, -37, -43, -6,
					-- layer=1 filter=10 channel=3
					-18, -52, -14, -42, 2, 75, -46, -4, 17,
					-- layer=1 filter=10 channel=4
					-1, -12, -22, 5, 0, 31, -7, 18, -14,
					-- layer=1 filter=10 channel=5
					43, 8, 58, 101, -19, 70, 68, 27, 18,
					-- layer=1 filter=10 channel=6
					46, 14, -27, 16, -6, -42, 32, -21, -13,
					-- layer=1 filter=10 channel=7
					-6, 10, 40, 10, 30, 50, 17, 25, -18,
					-- layer=1 filter=10 channel=8
					-18, 4, -8, 14, -35, 7, -10, -29, 9,
					-- layer=1 filter=10 channel=9
					-4, 32, 41, -14, 14, 4, -13, 9, 9,
					-- layer=1 filter=10 channel=10
					17, 24, -6, 4, -13, -27, 18, -30, -28,
					-- layer=1 filter=10 channel=11
					-53, 23, 60, 41, -5, 58, 56, 72, -18,
					-- layer=1 filter=10 channel=12
					57, -13, -17, 72, -2, -59, 74, 11, -44,
					-- layer=1 filter=10 channel=13
					38, 16, -22, 7, -12, -68, 27, -28, -33,
					-- layer=1 filter=10 channel=14
					35, 4, -17, 40, -9, -7, 4, -20, -40,
					-- layer=1 filter=10 channel=15
					61, 7, -38, 52, -47, -65, 23, -45, -45,
					-- layer=1 filter=10 channel=16
					55, 26, -9, 0, 84, 4, 73, 88, 2,
					-- layer=1 filter=10 channel=17
					-4, 59, 20, 66, 34, 92, 55, 93, 50,
					-- layer=1 filter=10 channel=18
					13, 6, 0, 24, -17, -11, -20, -39, -54,
					-- layer=1 filter=10 channel=19
					42, 13, 6, 28, -9, -1, 21, -21, -32,
					-- layer=1 filter=10 channel=20
					15, -2, -5, 99, -13, 8, 92, -6, -28,
					-- layer=1 filter=10 channel=21
					-23, -91, -125, -7, -103, -59, -28, 9, 60,
					-- layer=1 filter=10 channel=22
					28, -38, -25, -67, -40, 26, -43, -41, -8,
					-- layer=1 filter=10 channel=23
					21, 30, 35, 17, 37, 52, -1, 39, 10,
					-- layer=1 filter=10 channel=24
					-31, -48, -11, -18, -46, -81, -1, -51, -30,
					-- layer=1 filter=10 channel=25
					8, -46, -33, -27, -51, -3, -67, 16, 23,
					-- layer=1 filter=10 channel=26
					-14, -5, -1, -19, -16, 8, 7, -3, 1,
					-- layer=1 filter=10 channel=27
					32, -5, -15, 1, -17, -38, 4, -24, -57,
					-- layer=1 filter=10 channel=28
					-84, -16, 31, -55, -53, -55, -11, 12, -13,
					-- layer=1 filter=10 channel=29
					-3, 7, 68, 52, 8, 53, 41, 42, -22,
					-- layer=1 filter=10 channel=30
					0, -3, -31, 7, -16, -34, -14, -36, -36,
					-- layer=1 filter=10 channel=31
					50, 10, -13, 40, -21, -82, 74, -8, -48,
					-- layer=1 filter=11 channel=0
					-64, -25, -55, 18, -2, 11, 12, -20, 38,
					-- layer=1 filter=11 channel=1
					2, -25, 7, -23, -10, -23, 9, 15, -29,
					-- layer=1 filter=11 channel=2
					80, 11, -7, 19, 23, -26, 22, 0, -33,
					-- layer=1 filter=11 channel=3
					-74, -74, -80, -20, -16, -2, -2, -27, -7,
					-- layer=1 filter=11 channel=4
					8, 20, -14, -7, -7, 0, 1, 20, 22,
					-- layer=1 filter=11 channel=5
					-43, 49, -8, 34, -2, 77, 47, -29, 38,
					-- layer=1 filter=11 channel=6
					-26, 25, -1, -39, 2, -18, -32, 25, 18,
					-- layer=1 filter=11 channel=7
					-37, 26, 24, -77, 22, -12, -27, 10, 18,
					-- layer=1 filter=11 channel=8
					-75, -6, -39, -58, 26, 6, -30, 15, 24,
					-- layer=1 filter=11 channel=9
					-11, 19, -7, -10, 4, 18, 3, 24, 4,
					-- layer=1 filter=11 channel=10
					-19, 30, -32, -49, 34, -6, -13, 16, -17,
					-- layer=1 filter=11 channel=11
					30, 4, 35, -60, -33, -38, -126, -52, -81,
					-- layer=1 filter=11 channel=12
					-53, -27, -31, -38, 14, -9, -38, 37, 17,
					-- layer=1 filter=11 channel=13
					-33, -7, -34, 11, 18, 21, 8, 4, 21,
					-- layer=1 filter=11 channel=14
					-16, 13, 2, -59, 17, -48, -48, -6, -20,
					-- layer=1 filter=11 channel=15
					-35, -9, -32, 18, 12, 23, 15, 24, 41,
					-- layer=1 filter=11 channel=16
					71, -107, -123, 129, 67, 21, 15, 4, 9,
					-- layer=1 filter=11 channel=17
					8, -71, -39, -16, -109, 6, -12, -79, 14,
					-- layer=1 filter=11 channel=18
					-18, -17, 20, -28, -8, -24, -9, -11, 11,
					-- layer=1 filter=11 channel=19
					-53, 0, -13, -26, -8, -3, -25, 8, -21,
					-- layer=1 filter=11 channel=20
					-73, 71, 0, -9, 17, 65, 34, -28, 31,
					-- layer=1 filter=11 channel=21
					93, -31, -50, 125, -17, -80, 114, -12, -95,
					-- layer=1 filter=11 channel=22
					32, -22, -3, 43, -13, -6, 34, 7, -14,
					-- layer=1 filter=11 channel=23
					-43, 19, 0, -68, 18, 0, -36, 5, 17,
					-- layer=1 filter=11 channel=24
					42, 38, 20, 3, -12, -22, -21, -24, -31,
					-- layer=1 filter=11 channel=25
					56, -37, -53, 69, 0, -72, 87, 18, -5,
					-- layer=1 filter=11 channel=26
					9, -19, 10, 13, 16, 0, -6, 20, -13,
					-- layer=1 filter=11 channel=27
					-9, 28, 1, -37, -5, -42, -54, 25, -29,
					-- layer=1 filter=11 channel=28
					65, 42, 51, 8, -9, -36, -52, -43, -48,
					-- layer=1 filter=11 channel=29
					-23, 17, 1, -24, 30, 2, -63, 4, -6,
					-- layer=1 filter=11 channel=30
					-26, -22, -44, 6, 23, -23, 23, 27, 40,
					-- layer=1 filter=11 channel=31
					-49, -3, -19, -44, 0, 3, -47, 23, -26,
					-- layer=1 filter=12 channel=0
					0, 6, 17, 29, -2, 6, 7, -11, -2,
					-- layer=1 filter=12 channel=1
					-47, 3, -23, -20, -61, -61, 14, -20, -50,
					-- layer=1 filter=12 channel=2
					13, -17, -1, -35, -14, -22, -19, -33, 0,
					-- layer=1 filter=12 channel=3
					-31, -40, -26, -20, -54, -45, -34, -41, -25,
					-- layer=1 filter=12 channel=4
					0, -16, -8, 5, -6, -29, 9, 0, -8,
					-- layer=1 filter=12 channel=5
					-1, 44, 44, 59, 29, 60, 32, 22, 14,
					-- layer=1 filter=12 channel=6
					20, -3, -1, 28, 0, -10, 20, -4, 14,
					-- layer=1 filter=12 channel=7
					-23, -11, -22, 13, -21, -18, 11, 14, 4,
					-- layer=1 filter=12 channel=8
					-1, 32, 24, 8, 31, 17, 14, 37, 20,
					-- layer=1 filter=12 channel=9
					13, 31, 29, 3, -1, 19, 18, 4, 3,
					-- layer=1 filter=12 channel=10
					-8, 5, -3, -3, 15, 12, 13, 6, 3,
					-- layer=1 filter=12 channel=11
					-20, 26, 55, -7, 18, 42, -9, 15, 34,
					-- layer=1 filter=12 channel=12
					-26, -19, 17, -22, -8, -35, 2, -22, -19,
					-- layer=1 filter=12 channel=13
					11, 12, 17, 23, 30, -8, 15, -6, 11,
					-- layer=1 filter=12 channel=14
					-31, -45, -10, -11, 3, -17, 10, -14, -25,
					-- layer=1 filter=12 channel=15
					-22, -42, -21, -5, -60, -56, -30, -13, -61,
					-- layer=1 filter=12 channel=16
					-56, 8, 12, -47, -31, 30, -43, -8, 25,
					-- layer=1 filter=12 channel=17
					8, 15, 7, -3, 27, -38, 5, 0, 20,
					-- layer=1 filter=12 channel=18
					3, 0, -5, -25, 3, -1, 15, -30, 2,
					-- layer=1 filter=12 channel=19
					-17, 4, 23, 6, 4, 7, -14, -5, -16,
					-- layer=1 filter=12 channel=20
					15, 8, 31, 33, -6, 41, -17, 6, 4,
					-- layer=1 filter=12 channel=21
					-15, 53, 2, -27, 17, 33, -64, -43, 9,
					-- layer=1 filter=12 channel=22
					-87, -45, 7, -98, -75, -46, -58, -58, 0,
					-- layer=1 filter=12 channel=23
					-16, -3, 2, 25, 6, 24, 15, 15, 10,
					-- layer=1 filter=12 channel=24
					-29, 11, 3, -22, -26, 11, -33, -56, -5,
					-- layer=1 filter=12 channel=25
					-26, 7, -4, 2, -5, 5, 8, 2, 20,
					-- layer=1 filter=12 channel=26
					-7, 25, 18, 15, 0, 8, -21, 12, 5,
					-- layer=1 filter=12 channel=27
					-26, -8, -1, -17, -40, -10, -10, -36, 2,
					-- layer=1 filter=12 channel=28
					-30, 33, 45, -17, -83, 1, -52, -75, -42,
					-- layer=1 filter=12 channel=29
					-42, -25, 9, -21, -17, 12, -11, -67, -9,
					-- layer=1 filter=12 channel=30
					-11, -5, 1, -1, -28, -20, -7, -3, 20,
					-- layer=1 filter=12 channel=31
					-35, 2, 14, -8, -13, -40, -4, -7, -26,
					-- layer=1 filter=13 channel=0
					21, 20, 50, 30, 6, -35, 18, -31, -45,
					-- layer=1 filter=13 channel=1
					-13, 8, -19, -5, -39, -23, -26, -39, -18,
					-- layer=1 filter=13 channel=2
					17, 32, 13, -17, 21, 38, -27, -10, 14,
					-- layer=1 filter=13 channel=3
					8, 4, 19, -5, -18, -64, -29, -35, -75,
					-- layer=1 filter=13 channel=4
					15, 21, 14, 36, 41, 6, 5, 17, 8,
					-- layer=1 filter=13 channel=5
					-154, -120, -28, -160, -162, -44, -112, -41, -33,
					-- layer=1 filter=13 channel=6
					-11, 20, 37, 0, 26, 33, 16, 6, 2,
					-- layer=1 filter=13 channel=7
					-19, 1, 10, 4, 12, 28, -22, 13, 27,
					-- layer=1 filter=13 channel=8
					-23, 0, 14, -11, -56, -53, -38, -32, -55,
					-- layer=1 filter=13 channel=9
					-51, -32, -28, -34, -37, -7, -41, -13, 5,
					-- layer=1 filter=13 channel=10
					4, 19, 46, 17, 7, 35, 20, -5, 18,
					-- layer=1 filter=13 channel=11
					-10, 29, -79, -117, -58, -57, -55, -9, -43,
					-- layer=1 filter=13 channel=12
					-22, 12, -15, 9, -23, -14, -18, -22, -18,
					-- layer=1 filter=13 channel=13
					-15, 17, 0, 4, -10, 0, -9, -14, -6,
					-- layer=1 filter=13 channel=14
					8, 0, -10, -18, 26, 0, -7, 7, 17,
					-- layer=1 filter=13 channel=15
					10, 7, 10, -18, -16, -13, -1, -2, -36,
					-- layer=1 filter=13 channel=16
					36, 86, -7, 35, -15, -54, 5, 48, -50,
					-- layer=1 filter=13 channel=17
					-90, -218, -231, -157, -190, -285, -143, -151, -89,
					-- layer=1 filter=13 channel=18
					-5, 10, 19, -7, 31, 39, -7, 7, -6,
					-- layer=1 filter=13 channel=19
					-35, -23, -3, -1, -10, 2, -6, -27, -17,
					-- layer=1 filter=13 channel=20
					-113, -103, 4, -130, -140, -9, -59, 17, 4,
					-- layer=1 filter=13 channel=21
					-5, 37, -41, 2, 46, 37, -65, 2, 41,
					-- layer=1 filter=13 channel=22
					33, -8, -11, 70, -35, -21, -22, -31, -38,
					-- layer=1 filter=13 channel=23
					-18, -13, 29, -4, -29, 20, -13, 0, 0,
					-- layer=1 filter=13 channel=24
					-7, 21, 37, -26, -1, 38, -21, 9, 9,
					-- layer=1 filter=13 channel=25
					-25, -21, -47, -18, 1, -77, -50, -38, -25,
					-- layer=1 filter=13 channel=26
					-3, -21, 5, 7, -12, 8, 2, -7, -15,
					-- layer=1 filter=13 channel=27
					21, 40, 14, 3, 14, 38, 21, 22, -17,
					-- layer=1 filter=13 channel=28
					35, 86, -12, -31, 0, 39, -27, 7, 56,
					-- layer=1 filter=13 channel=29
					-41, -29, -73, -39, -47, -47, -13, -12, -4,
					-- layer=1 filter=13 channel=30
					10, 22, 54, 4, -9, -3, 9, -16, -28,
					-- layer=1 filter=13 channel=31
					8, 3, 6, -27, -27, -11, -18, 0, -42,
					-- layer=1 filter=14 channel=0
					27, 23, 23, 19, 34, -15, 41, -13, 14,
					-- layer=1 filter=14 channel=1
					-25, -25, -41, -56, -55, -48, -50, -57, -76,
					-- layer=1 filter=14 channel=2
					33, -7, 0, -1, 28, -3, 19, 24, 31,
					-- layer=1 filter=14 channel=3
					15, 26, 14, 0, -24, 14, 37, 1, 38,
					-- layer=1 filter=14 channel=4
					8, 11, -10, -10, -12, 23, -9, 21, 29,
					-- layer=1 filter=14 channel=5
					36, 23, 39, 81, 42, 62, 43, 76, 16,
					-- layer=1 filter=14 channel=6
					12, -21, 0, 5, -2, 14, 7, 11, -22,
					-- layer=1 filter=14 channel=7
					2, 17, -25, 6, -24, 14, -6, 4, -4,
					-- layer=1 filter=14 channel=8
					22, -2, 10, 14, -2, -10, 21, 6, -28,
					-- layer=1 filter=14 channel=9
					-2, 13, -20, -5, 10, 2, 17, -13, 8,
					-- layer=1 filter=14 channel=10
					5, 12, 7, -24, -7, 5, -8, -18, 13,
					-- layer=1 filter=14 channel=11
					-7, 1, -7, 15, 27, 6, -10, 43, 26,
					-- layer=1 filter=14 channel=12
					-88, -82, -62, -95, -89, -94, -79, -101, -95,
					-- layer=1 filter=14 channel=13
					-13, 1, -3, -4, -19, -15, 1, -22, -30,
					-- layer=1 filter=14 channel=14
					-18, -14, -16, 3, 17, -23, -3, 27, -26,
					-- layer=1 filter=14 channel=15
					-37, -32, -72, -38, -54, -63, -57, -22, -60,
					-- layer=1 filter=14 channel=16
					24, 48, 23, 16, 15, -9, -8, 31, 12,
					-- layer=1 filter=14 channel=17
					-20, -57, -32, 10, -14, -22, -42, -23, -42,
					-- layer=1 filter=14 channel=18
					-3, 6, -13, -22, -11, -7, -11, -12, 23,
					-- layer=1 filter=14 channel=19
					-24, -9, -26, -15, -3, -17, -36, 0, -4,
					-- layer=1 filter=14 channel=20
					8, -33, 27, 21, 4, -7, 28, 25, -38,
					-- layer=1 filter=14 channel=21
					32, 10, 0, -5, 91, -37, 29, 46, 41,
					-- layer=1 filter=14 channel=22
					25, -12, 20, 8, -53, -24, -15, -57, -34,
					-- layer=1 filter=14 channel=23
					1, 9, 14, -13, -35, 12, 16, -8, -16,
					-- layer=1 filter=14 channel=24
					27, -8, 3, 20, 18, -9, 12, -11, 9,
					-- layer=1 filter=14 channel=25
					-19, 18, -28, 8, 35, -24, 27, 3, 30,
					-- layer=1 filter=14 channel=26
					-19, 17, -15, -3, 4, 9, -13, -9, -7,
					-- layer=1 filter=14 channel=27
					8, 2, 9, -31, -20, -5, 16, -18, -18,
					-- layer=1 filter=14 channel=28
					11, 0, -8, -1, 26, 10, 14, 37, 51,
					-- layer=1 filter=14 channel=29
					-23, -45, -30, -24, -21, -28, -15, -31, 0,
					-- layer=1 filter=14 channel=30
					-21, -31, -7, 0, -14, 2, 37, 2, 22,
					-- layer=1 filter=14 channel=31
					-44, -63, -32, -63, -25, -73, -44, -63, -82,
					-- layer=1 filter=15 channel=0
					6, -2, -22, -13, -6, -7, -21, -22, 10,
					-- layer=1 filter=15 channel=1
					13, -16, -4, 13, 17, -24, -19, -22, -7,
					-- layer=1 filter=15 channel=2
					13, -23, 6, -4, -13, 8, -3, -12, 17,
					-- layer=1 filter=15 channel=3
					8, -12, -7, -28, 0, 14, -10, 11, -11,
					-- layer=1 filter=15 channel=4
					-26, -21, -12, 2, 10, 1, -23, -15, 11,
					-- layer=1 filter=15 channel=5
					-27, 6, 0, 4, 22, -21, 3, 14, -20,
					-- layer=1 filter=15 channel=6
					-11, 8, 6, 13, -2, -5, -5, -6, 5,
					-- layer=1 filter=15 channel=7
					-12, 9, -17, -14, -24, -12, -9, -2, -22,
					-- layer=1 filter=15 channel=8
					10, -11, -21, -8, -16, 16, -15, -11, 18,
					-- layer=1 filter=15 channel=9
					2, -22, -14, -6, -16, 0, 17, -23, -6,
					-- layer=1 filter=15 channel=10
					-11, 13, 5, -20, 0, 1, -4, 4, -13,
					-- layer=1 filter=15 channel=11
					1, -26, 5, -19, -4, -15, -17, -19, -2,
					-- layer=1 filter=15 channel=12
					-13, -22, 10, 3, -10, -9, -15, 1, 8,
					-- layer=1 filter=15 channel=13
					-12, 5, -15, 1, -16, 14, -7, 0, -4,
					-- layer=1 filter=15 channel=14
					-5, -21, -8, -11, 17, -19, 12, -7, -14,
					-- layer=1 filter=15 channel=15
					9, -19, -32, -11, -17, 6, -22, 9, 12,
					-- layer=1 filter=15 channel=16
					13, -21, -15, 15, -14, 18, -11, 13, -31,
					-- layer=1 filter=15 channel=17
					5, -12, 4, -19, 5, 0, -8, 0, -1,
					-- layer=1 filter=15 channel=18
					-7, -19, 0, -3, -22, 2, 5, -8, -16,
					-- layer=1 filter=15 channel=19
					-5, -18, -21, -21, 4, -20, -16, -21, -15,
					-- layer=1 filter=15 channel=20
					13, 18, -20, 11, -6, -20, 7, -26, -12,
					-- layer=1 filter=15 channel=21
					-10, 4, -10, -1, -15, 13, -2, 0, 0,
					-- layer=1 filter=15 channel=22
					-19, -1, -12, 10, -16, -9, -9, 5, 17,
					-- layer=1 filter=15 channel=23
					-2, -2, 1, -7, -23, -11, -25, 6, -25,
					-- layer=1 filter=15 channel=24
					-5, -3, 15, 2, 3, -27, -10, -26, -18,
					-- layer=1 filter=15 channel=25
					-26, 1, -10, 13, 7, 4, -14, -10, 2,
					-- layer=1 filter=15 channel=26
					-1, -17, 19, -12, -21, -20, 12, 12, 0,
					-- layer=1 filter=15 channel=27
					7, -9, 7, -10, 8, -24, 12, 14, -3,
					-- layer=1 filter=15 channel=28
					-7, 1, -8, 7, -12, -15, -8, -20, -1,
					-- layer=1 filter=15 channel=29
					-19, 8, -2, -10, -12, -30, -20, 10, -32,
					-- layer=1 filter=15 channel=30
					-12, 9, 10, -1, -10, 0, -1, -14, -17,
					-- layer=1 filter=15 channel=31
					0, -1, -9, -11, -17, 7, -4, -23, 3,
					-- layer=1 filter=16 channel=0
					-98, 17, 0, -1, 16, 1, 51, -14, -52,
					-- layer=1 filter=16 channel=1
					5, -33, 19, -33, -32, -10, -95, -57, -26,
					-- layer=1 filter=16 channel=2
					6, -22, 11, 39, -2, -65, 14, -24, -103,
					-- layer=1 filter=16 channel=3
					-85, -22, -77, 18, 31, 3, -6, -97, -34,
					-- layer=1 filter=16 channel=4
					-41, -6, -47, 3, -13, -82, 6, -44, -85,
					-- layer=1 filter=16 channel=5
					31, -54, 32, 1, -38, 107, 14, 32, 97,
					-- layer=1 filter=16 channel=6
					-34, -33, 8, -34, 32, -25, -40, 20, -20,
					-- layer=1 filter=16 channel=7
					-53, -47, -15, -78, -14, -3, -65, 17, -15,
					-- layer=1 filter=16 channel=8
					-15, 31, 30, -27, 36, 23, 37, 8, 20,
					-- layer=1 filter=16 channel=9
					0, 15, 9, -21, 5, -3, -45, -46, -7,
					-- layer=1 filter=16 channel=10
					-57, -6, -45, -50, 45, -70, -28, 10, -58,
					-- layer=1 filter=16 channel=11
					16, -5, 67, 28, 28, 61, -15, 52, 42,
					-- layer=1 filter=16 channel=12
					20, -15, 46, -20, 25, 32, -5, 57, -3,
					-- layer=1 filter=16 channel=13
					-61, 4, -5, 7, 43, -18, 15, -12, -29,
					-- layer=1 filter=16 channel=14
					-26, -42, 21, -73, 64, 29, -60, 66, 16,
					-- layer=1 filter=16 channel=15
					-36, -10, -40, -38, 0, -4, 16, -28, 19,
					-- layer=1 filter=16 channel=16
					43, 44, 40, 56, 82, -31, 39, -34, 20,
					-- layer=1 filter=16 channel=17
					24, 46, 34, -22, -59, 3, 60, 14, 57,
					-- layer=1 filter=16 channel=18
					-30, -14, 8, -46, -36, -65, -42, -24, -79,
					-- layer=1 filter=16 channel=19
					-21, -5, -24, -63, -21, -46, -25, -38, -88,
					-- layer=1 filter=16 channel=20
					12, -23, 48, 10, 20, 138, -25, 95, 126,
					-- layer=1 filter=16 channel=21
					14, 24, 3, 124, 36, -48, 68, 60, -24,
					-- layer=1 filter=16 channel=22
					28, 29, -12, -45, -17, 2, 38, -49, -2,
					-- layer=1 filter=16 channel=23
					26, -42, -16, -28, -20, 19, -55, 17, 34,
					-- layer=1 filter=16 channel=24
					-5, 1, 30, 19, 3, -16, -6, 6, -74,
					-- layer=1 filter=16 channel=25
					45, 64, 4, 69, 28, -12, 77, -29, -6,
					-- layer=1 filter=16 channel=26
					-25, 11, -5, -3, -17, 6, 12, -16, -4,
					-- layer=1 filter=16 channel=27
					-31, -27, -4, -73, 0, -65, -49, 25, -70,
					-- layer=1 filter=16 channel=28
					-1, -1, 51, 37, -7, 8, 9, 21, -47,
					-- layer=1 filter=16 channel=29
					20, -35, -14, 12, -5, 46, -23, 53, 78,
					-- layer=1 filter=16 channel=30
					-85, 26, -57, -27, 21, -53, 41, -22, -53,
					-- layer=1 filter=16 channel=31
					7, -26, 47, -56, 23, -22, -57, 6, -37,
					-- layer=1 filter=17 channel=0
					36, -18, -15, 14, 25, 37, 42, 47, 46,
					-- layer=1 filter=17 channel=1
					5, -11, -27, 2, -20, -16, -23, -44, 4,
					-- layer=1 filter=17 channel=2
					-32, -67, -60, -45, -20, -50, 12, 28, 7,
					-- layer=1 filter=17 channel=3
					14, 18, -18, 20, 72, 75, 13, 38, 24,
					-- layer=1 filter=17 channel=4
					-13, -43, -25, -3, 25, -17, 53, 60, 56,
					-- layer=1 filter=17 channel=5
					43, 96, 49, -13, 23, 16, -38, -23, -20,
					-- layer=1 filter=17 channel=6
					-37, -51, -42, -10, -4, -24, 30, 32, 40,
					-- layer=1 filter=17 channel=7
					-22, -8, -84, 8, -16, -34, 29, 20, 16,
					-- layer=1 filter=17 channel=8
					28, 17, 9, 4, 31, 21, 17, 48, 35,
					-- layer=1 filter=17 channel=9
					-40, -32, -79, -9, -40, -54, -5, -15, -12,
					-- layer=1 filter=17 channel=10
					-3, -50, -23, 19, 31, -15, 9, 22, 39,
					-- layer=1 filter=17 channel=11
					14, -45, -30, 33, -40, 0, -74, -32, -97,
					-- layer=1 filter=17 channel=12
					-11, 10, -24, 14, -19, -31, 2, -14, 1,
					-- layer=1 filter=17 channel=13
					13, 11, -21, 12, 14, 25, 17, 20, 9,
					-- layer=1 filter=17 channel=14
					-4, -49, -75, 29, -18, -3, 27, 3, 33,
					-- layer=1 filter=17 channel=15
					3, 31, 17, 1, 45, 38, 34, 22, 20,
					-- layer=1 filter=17 channel=16
					19, 8, 24, -23, -41, -21, 17, 32, 16,
					-- layer=1 filter=17 channel=17
					33, -1, -14, 80, 34, 22, -12, -34, 3,
					-- layer=1 filter=17 channel=18
					-46, -50, -58, 0, -33, 8, 38, 25, 38,
					-- layer=1 filter=17 channel=19
					-51, -38, -52, -11, -37, -19, 6, 8, 9,
					-- layer=1 filter=17 channel=20
					28, 56, 9, 29, -19, -5, -23, -9, -35,
					-- layer=1 filter=17 channel=21
					16, 7, 56, -51, -65, 5, -69, -45, -33,
					-- layer=1 filter=17 channel=22
					2, -1, -37, 12, -12, 10, 37, 68, 59,
					-- layer=1 filter=17 channel=23
					-34, -7, -25, -2, 18, -33, 22, 8, 3,
					-- layer=1 filter=17 channel=24
					-10, -35, -62, -38, -20, -41, -13, -28, 0,
					-- layer=1 filter=17 channel=25
					10, -7, 7, 6, 16, -1, 17, 4, 15,
					-- layer=1 filter=17 channel=26
					15, -20, 17, -16, -16, 13, -5, -2, 14,
					-- layer=1 filter=17 channel=27
					-1, -59, -32, 22, -10, -3, 19, 24, 39,
					-- layer=1 filter=17 channel=28
					3, -83, -61, -28, 32, 19, -41, -10, -13,
					-- layer=1 filter=17 channel=29
					-71, -22, -30, 24, -19, 24, -5, -21, -31,
					-- layer=1 filter=17 channel=30
					-7, 4, -10, 9, 20, 45, 56, 41, 8,
					-- layer=1 filter=17 channel=31
					3, -6, 0, -1, -25, -42, -25, -20, -13,
					-- layer=1 filter=18 channel=0
					-14, -31, -34, -8, -16, -3, 10, 7, -19,
					-- layer=1 filter=18 channel=1
					5, 9, -5, 11, 23, 3, 7, 8, 29,
					-- layer=1 filter=18 channel=2
					2, -16, -26, -3, -50, -57, 1, -59, -39,
					-- layer=1 filter=18 channel=3
					19, 0, -6, 23, -11, -27, 38, 16, -1,
					-- layer=1 filter=18 channel=4
					-2, -76, -86, -55, -67, -75, -5, -43, -58,
					-- layer=1 filter=18 channel=5
					28, 9, 21, 45, 58, -14, -12, 33, 19,
					-- layer=1 filter=18 channel=6
					10, 0, 2, -24, 9, -19, -34, -14, 4,
					-- layer=1 filter=18 channel=7
					-3, 2, -30, -33, -4, -84, -9, -44, -32,
					-- layer=1 filter=18 channel=8
					-30, 18, 2, -23, 6, 15, -20, 2, 14,
					-- layer=1 filter=18 channel=9
					-11, 0, -13, -47, -35, -30, -11, -33, -44,
					-- layer=1 filter=18 channel=10
					5, -25, -25, -27, -29, -16, -2, -22, 16,
					-- layer=1 filter=18 channel=11
					62, 37, 28, 52, 32, 3, 13, 14, 25,
					-- layer=1 filter=18 channel=12
					-7, 6, 9, 7, 22, 47, 21, 17, 47,
					-- layer=1 filter=18 channel=13
					10, -1, 9, -5, -16, 22, 12, 17, 22,
					-- layer=1 filter=18 channel=14
					7, 44, -23, -1, 25, 11, -29, -14, 3,
					-- layer=1 filter=18 channel=15
					-4, 15, 8, 23, 21, 12, 34, 28, 15,
					-- layer=1 filter=18 channel=16
					55, -11, -4, 13, 5, 25, -6, -53, -15,
					-- layer=1 filter=18 channel=17
					100, 141, 91, 63, 69, 90, 126, 55, 46,
					-- layer=1 filter=18 channel=18
					22, -8, 0, 17, -28, -17, -17, 4, -40,
					-- layer=1 filter=18 channel=19
					-30, 6, -22, -11, -4, -31, -38, -27, 7,
					-- layer=1 filter=18 channel=20
					26, 39, -5, 44, 69, 48, -14, 52, 16,
					-- layer=1 filter=18 channel=21
					91, 30, 26, 68, 28, 28, 32, 24, 5,
					-- layer=1 filter=18 channel=22
					-6, 10, -21, 31, 8, -22, -25, -36, -42,
					-- layer=1 filter=18 channel=23
					-15, -7, -11, -27, -6, -47, -13, -45, -30,
					-- layer=1 filter=18 channel=24
					-9, 3, 0, 42, -14, -3, 7, -12, -14,
					-- layer=1 filter=18 channel=25
					67, 16, 26, 25, 36, 36, 43, -10, 1,
					-- layer=1 filter=18 channel=26
					4, -18, -22, 17, 0, -12, -4, -12, 6,
					-- layer=1 filter=18 channel=27
					-12, -1, -25, -12, -7, -1, -6, -21, 8,
					-- layer=1 filter=18 channel=28
					-10, 22, -20, 52, -13, 6, 20, 20, 5,
					-- layer=1 filter=18 channel=29
					23, 16, -34, -3, 3, -8, 27, 31, 43,
					-- layer=1 filter=18 channel=30
					12, -43, -18, -36, -7, -16, 1, 1, -18,
					-- layer=1 filter=18 channel=31
					-22, 10, 14, -7, 6, 28, 9, 5, 23,
					-- layer=1 filter=19 channel=0
					-10, -3, 16, -35, -5, 28, -24, -3, -13,
					-- layer=1 filter=19 channel=1
					-11, -4, 25, -40, 28, 35, -30, 11, 30,
					-- layer=1 filter=19 channel=2
					34, 2, -5, 23, 41, 32, 29, 49, 19,
					-- layer=1 filter=19 channel=3
					32, 3, -13, 25, 18, -28, 27, 10, -39,
					-- layer=1 filter=19 channel=4
					-9, 11, -6, 24, 2, 28, 10, 42, -11,
					-- layer=1 filter=19 channel=5
					-53, -36, -37, -25, -98, -4, -15, -29, 24,
					-- layer=1 filter=19 channel=6
					-7, -7, 17, -27, -4, 12, -34, -12, 42,
					-- layer=1 filter=19 channel=7
					6, -30, -11, -20, -31, -33, -12, -25, -3,
					-- layer=1 filter=19 channel=8
					-19, -18, -1, 4, 6, 0, -36, 4, -9,
					-- layer=1 filter=19 channel=9
					14, 7, -26, 4, -18, -1, 9, 0, -27,
					-- layer=1 filter=19 channel=10
					-31, -12, 10, -41, 17, 29, -20, -4, 38,
					-- layer=1 filter=19 channel=11
					9, -13, -77, 1, -36, -57, -34, -46, -16,
					-- layer=1 filter=19 channel=12
					-20, -6, 54, -44, 10, 32, -52, 3, 57,
					-- layer=1 filter=19 channel=13
					-31, 22, 44, -26, 8, 37, -48, -1, 38,
					-- layer=1 filter=19 channel=14
					-61, -15, 18, -72, -16, 15, -80, -15, 44,
					-- layer=1 filter=19 channel=15
					-33, 20, 38, -54, 7, 71, -42, 11, 65,
					-- layer=1 filter=19 channel=16
					-68, -37, -64, -17, -58, -39, -54, -6, 8,
					-- layer=1 filter=19 channel=17
					-21, 13, -23, 0, -23, -37, 16, 36, 26,
					-- layer=1 filter=19 channel=18
					-19, -1, 26, -50, 18, 25, -33, 16, 18,
					-- layer=1 filter=19 channel=19
					-9, -11, 21, -21, -8, 18, -9, 7, 15,
					-- layer=1 filter=19 channel=20
					-46, -22, 21, -62, -59, 35, -44, -33, 50,
					-- layer=1 filter=19 channel=21
					12, 52, 48, 76, 59, 69, 84, 61, 101,
					-- layer=1 filter=19 channel=22
					17, -10, -4, 58, 18, 13, 55, 32, -11,
					-- layer=1 filter=19 channel=23
					-9, -30, -27, 0, -32, -58, 21, -48, -35,
					-- layer=1 filter=19 channel=24
					-11, 9, 25, -16, 40, 53, -35, -6, 47,
					-- layer=1 filter=19 channel=25
					41, 34, 45, 50, 45, -7, 41, 34, 21,
					-- layer=1 filter=19 channel=26
					-8, -23, -4, -14, -24, 7, 16, 15, -24,
					-- layer=1 filter=19 channel=27
					-35, -12, 22, -47, 11, 37, -50, 23, 14,
					-- layer=1 filter=19 channel=28
					12, 24, 4, 55, 61, 18, -11, 39, 26,
					-- layer=1 filter=19 channel=29
					36, -9, -32, 46, -27, -70, -12, -48, -55,
					-- layer=1 filter=19 channel=30
					-33, -1, 26, -29, -7, 17, -12, 14, 35,
					-- layer=1 filter=19 channel=31
					-17, -2, 31, -43, -4, 38, -49, -6, 57,
					-- layer=1 filter=20 channel=0
					15, 16, 21, 0, -18, -20, 22, -13, -16,
					-- layer=1 filter=20 channel=1
					-18, -9, -38, -10, 19, 9, 9, 27, 4,
					-- layer=1 filter=20 channel=2
					-12, -31, 12, -26, -41, -16, -24, -63, -53,
					-- layer=1 filter=20 channel=3
					15, 46, 23, 22, -27, -21, 12, -37, -62,
					-- layer=1 filter=20 channel=4
					-23, 9, -25, -60, -92, -80, -87, -91, -109,
					-- layer=1 filter=20 channel=5
					-44, -125, -35, -10, -57, -58, 31, -38, 1,
					-- layer=1 filter=20 channel=6
					3, -15, 7, 9, 17, 12, -10, 10, 9,
					-- layer=1 filter=20 channel=7
					18, -22, -29, -49, -48, -40, -31, -69, -104,
					-- layer=1 filter=20 channel=8
					-8, 28, 26, 13, 33, 32, 12, 19, 32,
					-- layer=1 filter=20 channel=9
					10, 22, 39, 35, 45, 40, 21, 27, -4,
					-- layer=1 filter=20 channel=10
					5, 4, -16, 5, -13, 7, -15, -17, -15,
					-- layer=1 filter=20 channel=11
					35, 28, 28, -1, 48, 1, 84, 35, 37,
					-- layer=1 filter=20 channel=12
					12, -7, -11, 10, 42, 47, 32, 60, 79,
					-- layer=1 filter=20 channel=13
					-28, 0, 11, 1, 19, -1, -8, 27, 28,
					-- layer=1 filter=20 channel=14
					-2, -40, -5, -23, -24, -17, -6, -3, -41,
					-- layer=1 filter=20 channel=15
					-7, -7, -31, -11, 10, -9, 6, 5, 30,
					-- layer=1 filter=20 channel=16
					-1, 21, 39, -10, -65, -35, 21, 2, 17,
					-- layer=1 filter=20 channel=17
					80, 75, 91, 22, 59, 72, 67, 20, 38,
					-- layer=1 filter=20 channel=18
					8, -15, 1, -25, -21, -1, 1, -34, -7,
					-- layer=1 filter=20 channel=19
					23, 41, 38, 31, 31, 31, 27, 31, 40,
					-- layer=1 filter=20 channel=20
					-1, -68, -18, 44, 1, 27, 61, 44, 39,
					-- layer=1 filter=20 channel=21
					-47, -69, 8, -2, -52, -17, 16, 1, -4,
					-- layer=1 filter=20 channel=22
					-23, 33, 4, -51, -2, -5, -63, -71, -33,
					-- layer=1 filter=20 channel=23
					4, 0, 2, -29, -69, -72, -70, -104, -109,
					-- layer=1 filter=20 channel=24
					-7, 0, 11, 25, -6, 17, -3, 25, 16,
					-- layer=1 filter=20 channel=25
					-5, 15, -2, 15, -13, 29, 5, 31, 8,
					-- layer=1 filter=20 channel=26
					8, -3, 16, -7, -23, -11, -10, -24, -2,
					-- layer=1 filter=20 channel=27
					-13, 2, -5, -49, -31, -13, -10, -33, -39,
					-- layer=1 filter=20 channel=28
					-3, -2, 8, 18, 0, -20, 16, 22, 2,
					-- layer=1 filter=20 channel=29
					24, -14, -13, -24, -58, -61, -29, -43, -44,
					-- layer=1 filter=20 channel=30
					-17, -1, -8, -29, -46, -31, -49, -15, 4,
					-- layer=1 filter=20 channel=31
					-18, -26, -18, -4, 18, 32, -12, 12, 42,
					-- layer=1 filter=21 channel=0
					-46, -35, -12, -56, -47, -44, -33, -33, -46,
					-- layer=1 filter=21 channel=1
					7, -31, 0, -8, -35, -7, 16, -2, 0,
					-- layer=1 filter=21 channel=2
					30, 30, 45, 2, 23, 33, 29, 15, 48,
					-- layer=1 filter=21 channel=3
					-82, -71, -8, -71, -89, -56, -34, -61, -40,
					-- layer=1 filter=21 channel=4
					29, 24, 17, 4, -16, 0, -13, 8, -6,
					-- layer=1 filter=21 channel=5
					40, 72, -15, 42, 140, -26, 32, 124, 28,
					-- layer=1 filter=21 channel=6
					22, -19, 14, 1, -19, 26, 0, -18, -8,
					-- layer=1 filter=21 channel=7
					0, -7, -6, 32, 3, 12, -2, 16, 0,
					-- layer=1 filter=21 channel=8
					-23, -29, 3, -12, -37, -13, -22, -19, -34,
					-- layer=1 filter=21 channel=9
					-7, -19, 31, -6, 3, 26, 29, 9, 16,
					-- layer=1 filter=21 channel=10
					21, -20, 8, 10, -6, 5, -24, -2, -3,
					-- layer=1 filter=21 channel=11
					-94, -118, -59, -105, -79, -24, -68, -48, -16,
					-- layer=1 filter=21 channel=12
					9, -13, 21, 8, 12, -7, 4, 2, -6,
					-- layer=1 filter=21 channel=13
					14, -11, 5, -4, -1, 19, -18, -14, 10,
					-- layer=1 filter=21 channel=14
					5, 15, 0, 2, -14, -11, -9, 27, -19,
					-- layer=1 filter=21 channel=15
					-6, 14, 21, 29, -2, 14, 0, -16, -23,
					-- layer=1 filter=21 channel=16
					-42, -46, -73, -49, -60, -38, -56, -79, -9,
					-- layer=1 filter=21 channel=17
					-59, -30, -67, -124, -63, -76, -43, -44, -14,
					-- layer=1 filter=21 channel=18
					16, 13, 33, -11, 17, 26, 15, -5, 2,
					-- layer=1 filter=21 channel=19
					1, -9, 10, -1, -30, 31, -3, 5, 10,
					-- layer=1 filter=21 channel=20
					16, 35, -51, 23, 117, -79, 2, 141, -54,
					-- layer=1 filter=21 channel=21
					57, 67, 53, 57, 73, 37, 45, 54, 93,
					-- layer=1 filter=21 channel=22
					-2, -7, -2, -69, -32, 18, -25, 1, 11,
					-- layer=1 filter=21 channel=23
					10, -22, -7, 14, 16, -26, 13, 35, -1,
					-- layer=1 filter=21 channel=24
					-3, -4, 42, 8, 18, 57, 7, -2, 36,
					-- layer=1 filter=21 channel=25
					-14, -25, -32, -15, -24, -18, -7, -2, 16,
					-- layer=1 filter=21 channel=26
					-8, 18, -9, -8, -8, -1, 4, -15, -6,
					-- layer=1 filter=21 channel=27
					25, -8, 12, -10, -15, 28, -36, -5, -10,
					-- layer=1 filter=21 channel=28
					-42, -45, 17, -23, -22, 34, -42, -44, 21,
					-- layer=1 filter=21 channel=29
					0, 5, 7, -17, -14, -35, -12, 9, 12,
					-- layer=1 filter=21 channel=30
					-6, -9, 13, -29, -11, -21, -20, -2, 13,
					-- layer=1 filter=21 channel=31
					-10, -12, 27, 16, -29, -4, -17, -16, 9,
					-- layer=1 filter=22 channel=0
					-43, -35, -10, -35, 26, 6, 44, 4, 52,
					-- layer=1 filter=22 channel=1
					-7, 7, 36, 17, 7, -12, -29, -6, 13,
					-- layer=1 filter=22 channel=2
					-9, 25, 0, 17, -12, 19, -3, 29, -14,
					-- layer=1 filter=22 channel=3
					-68, -50, 72, 8, 26, -5, 122, 96, 96,
					-- layer=1 filter=22 channel=4
					-55, -58, -46, -20, -36, -47, 0, 1, -10,
					-- layer=1 filter=22 channel=5
					-110, -107, -1, -153, -81, -77, -74, -71, -43,
					-- layer=1 filter=22 channel=6
					11, 35, 29, -16, 6, 1, -11, 5, 12,
					-- layer=1 filter=22 channel=7
					-21, -44, -2, -72, -24, -66, -12, -7, -35,
					-- layer=1 filter=22 channel=8
					-34, -64, -72, -33, 20, -12, 49, 21, 37,
					-- layer=1 filter=22 channel=9
					-6, -33, -32, -3, -17, -16, -10, 0, 27,
					-- layer=1 filter=22 channel=10
					5, -8, 22, -14, -23, 3, -3, -9, 24,
					-- layer=1 filter=22 channel=11
					52, 34, 65, 38, 22, 23, -38, 32, 59,
					-- layer=1 filter=22 channel=12
					34, 24, -4, -17, 12, 20, 17, -3, 10,
					-- layer=1 filter=22 channel=13
					-28, -18, 9, -35, 12, -8, 3, 8, 27,
					-- layer=1 filter=22 channel=14
					22, 17, 33, -40, -58, -31, -56, -37, -9,
					-- layer=1 filter=22 channel=15
					-31, 1, 11, -41, -29, 8, -24, 11, 18,
					-- layer=1 filter=22 channel=16
					-46, -94, -76, 11, -56, 10, -68, 40, 19,
					-- layer=1 filter=22 channel=17
					37, -42, 71, 2, 13, 34, 24, -3, 64,
					-- layer=1 filter=22 channel=18
					22, 36, 10, -23, -25, -1, -19, 5, -19,
					-- layer=1 filter=22 channel=19
					-33, -24, -10, -32, 5, -2, 22, -16, 24,
					-- layer=1 filter=22 channel=20
					-96, -89, -26, -105, -115, -80, -70, -87, -30,
					-- layer=1 filter=22 channel=21
					25, 31, 34, -2, 29, 47, 5, 49, 41,
					-- layer=1 filter=22 channel=22
					-50, -64, 37, -89, -82, -22, -179, -157, -161,
					-- layer=1 filter=22 channel=23
					-73, -48, -24, -33, -42, -30, 10, 17, -23,
					-- layer=1 filter=22 channel=24
					20, 45, 58, -2, 15, 28, -44, 10, 18,
					-- layer=1 filter=22 channel=25
					-40, -55, -23, 19, -7, 20, -29, 4, 45,
					-- layer=1 filter=22 channel=26
					25, 5, 9, 23, 2, 3, -6, 8, -21,
					-- layer=1 filter=22 channel=27
					16, 0, 30, -33, -7, -3, -42, -25, -20,
					-- layer=1 filter=22 channel=28
					54, 70, 84, 81, 45, 32, -5, 15, 28,
					-- layer=1 filter=22 channel=29
					-71, -33, 5, -35, -81, -91, -106, -78, -64,
					-- layer=1 filter=22 channel=30
					-21, -19, 26, -49, -15, -9, -36, -13, 10,
					-- layer=1 filter=22 channel=31
					-1, 2, 13, -9, -17, -16, -36, -6, 1,
					-- layer=1 filter=23 channel=0
					31, 25, 30, -13, -32, -47, -42, -65, -82,
					-- layer=1 filter=23 channel=1
					-5, 9, 47, 15, 7, -17, 14, 2, -13,
					-- layer=1 filter=23 channel=2
					-1, -4, 15, -7, 2, 22, 14, -9, -24,
					-- layer=1 filter=23 channel=3
					53, 57, 59, 62, 48, 49, -40, -35, -23,
					-- layer=1 filter=23 channel=4
					33, 17, 13, 19, 1, 6, -40, -25, -38,
					-- layer=1 filter=23 channel=5
					-88, -58, -66, -82, -74, -115, -86, -31, -100,
					-- layer=1 filter=23 channel=6
					28, 22, 24, 25, 1, 13, 10, -32, 1,
					-- layer=1 filter=23 channel=7
					25, 2, 21, 40, 3, 36, -1, 2, -17,
					-- layer=1 filter=23 channel=8
					3, 2, -23, -18, -26, -51, -49, -45, -10,
					-- layer=1 filter=23 channel=9
					13, 30, 0, -4, 20, 7, 4, -1, -14,
					-- layer=1 filter=23 channel=10
					19, 12, 29, 15, -26, -18, -36, -18, -61,
					-- layer=1 filter=23 channel=11
					61, 67, 103, 29, 36, 48, 24, 39, 34,
					-- layer=1 filter=23 channel=12
					-8, 28, 5, 13, 28, 19, -1, 9, 17,
					-- layer=1 filter=23 channel=13
					26, 25, 0, 1, -27, -21, -25, -58, -51,
					-- layer=1 filter=23 channel=14
					16, 17, -8, 42, 6, -13, -2, 9, 0,
					-- layer=1 filter=23 channel=15
					-16, -12, 3, 7, 0, -41, -10, -47, -17,
					-- layer=1 filter=23 channel=16
					-36, -14, -32, -81, -70, -96, 8, -11, 0,
					-- layer=1 filter=23 channel=17
					78, 38, 4, 125, 78, 80, 63, 55, 57,
					-- layer=1 filter=23 channel=18
					17, 28, 18, 14, -9, -18, -9, -29, -54,
					-- layer=1 filter=23 channel=19
					9, 5, 20, 27, 22, -20, -8, -9, -37,
					-- layer=1 filter=23 channel=20
					-114, -55, -63, -36, -38, -88, -4, 27, -46,
					-- layer=1 filter=23 channel=21
					-77, -128, -104, -128, -195, -112, -101, -127, -79,
					-- layer=1 filter=23 channel=22
					-64, -19, -32, -46, -11, -41, -31, -51, -82,
					-- layer=1 filter=23 channel=23
					23, 0, 9, 35, 30, 28, 23, 7, 16,
					-- layer=1 filter=23 channel=24
					20, 9, 18, -28, -12, 11, -28, -27, 12,
					-- layer=1 filter=23 channel=25
					11, -32, -13, -14, -49, -45, -45, -49, -16,
					-- layer=1 filter=23 channel=26
					0, -1, -1, -10, -11, -8, -19, 1, -19,
					-- layer=1 filter=23 channel=27
					5, 23, 6, 17, -4, -29, -3, -25, -58,
					-- layer=1 filter=23 channel=28
					0, 60, 49, 7, 9, 6, -34, 5, 28,
					-- layer=1 filter=23 channel=29
					18, 53, 45, 13, 55, 22, -3, 7, -13,
					-- layer=1 filter=23 channel=30
					35, 4, 13, -7, -32, -41, -62, -87, -59,
					-- layer=1 filter=23 channel=31
					-3, 27, 26, 22, 9, -13, 16, -10, 3,
					-- layer=1 filter=24 channel=0
					-14, 5, -5, 40, 16, 20, -22, -26, -34,
					-- layer=1 filter=24 channel=1
					-19, -39, -10, 30, 29, -11, 20, 3, -10,
					-- layer=1 filter=24 channel=2
					-6, -10, -1, 24, 25, 14, 13, 30, -4,
					-- layer=1 filter=24 channel=3
					4, -21, -13, 75, 61, 48, 33, 32, 44,
					-- layer=1 filter=24 channel=4
					1, 6, -5, 4, -3, 22, -31, -14, 23,
					-- layer=1 filter=24 channel=5
					-11, 24, -2, -9, -16, -4, 21, 17, -13,
					-- layer=1 filter=24 channel=6
					0, -5, 17, -5, 9, -18, -32, -29, -33,
					-- layer=1 filter=24 channel=7
					-4, -4, -3, 18, 13, 27, -18, -14, 7,
					-- layer=1 filter=24 channel=8
					21, 1, 0, 21, 7, -15, -26, -23, -26,
					-- layer=1 filter=24 channel=9
					0, 14, -2, 18, 27, 2, -27, -7, 3,
					-- layer=1 filter=24 channel=10
					13, 23, 22, 17, -7, 15, -27, -41, 6,
					-- layer=1 filter=24 channel=11
					-50, -52, -18, 72, 83, 57, 51, 91, 20,
					-- layer=1 filter=24 channel=12
					-9, 20, 21, 8, 3, -11, 15, -6, 6,
					-- layer=1 filter=24 channel=13
					26, 34, 22, 6, -6, -31, -31, -27, -35,
					-- layer=1 filter=24 channel=14
					-25, 16, -12, 9, -1, -2, 33, 7, -5,
					-- layer=1 filter=24 channel=15
					16, 11, -2, -21, -18, -11, -38, -32, -43,
					-- layer=1 filter=24 channel=16
					-42, -60, -34, -23, -19, -62, 20, 28, 36,
					-- layer=1 filter=24 channel=17
					76, 77, 66, 195, 150, 200, 138, 144, 145,
					-- layer=1 filter=24 channel=18
					12, 7, 17, 14, 12, -13, 3, 21, 1,
					-- layer=1 filter=24 channel=19
					0, 15, 19, -8, 3, 7, -12, -4, 6,
					-- layer=1 filter=24 channel=20
					-49, -42, -4, -23, 2, 17, -5, 17, -31,
					-- layer=1 filter=24 channel=21
					-1, -45, -17, -8, -18, -68, -13, 2, -17,
					-- layer=1 filter=24 channel=22
					-24, 11, 14, -51, 29, 8, 0, 4, 45,
					-- layer=1 filter=24 channel=23
					2, -2, -28, -6, 22, -11, -21, 0, 26,
					-- layer=1 filter=24 channel=24
					-13, -44, -17, 13, 0, -17, -4, 19, -12,
					-- layer=1 filter=24 channel=25
					-3, -12, 31, -9, 0, -8, 4, 15, 66,
					-- layer=1 filter=24 channel=26
					-12, -2, -23, 5, 12, -28, -27, -9, -25,
					-- layer=1 filter=24 channel=27
					-19, 9, -17, -11, 17, -12, 13, 7, 6,
					-- layer=1 filter=24 channel=28
					-15, -38, 8, 48, 50, 19, 18, 71, 16,
					-- layer=1 filter=24 channel=29
					-20, -30, 22, -5, 14, 47, 9, 38, -24,
					-- layer=1 filter=24 channel=30
					19, 37, -12, -5, 17, -15, -23, -46, -4,
					-- layer=1 filter=24 channel=31
					-4, -16, 9, 13, 11, -4, 3, -21, -17,
					-- layer=1 filter=25 channel=0
					-19, -26, -41, 45, 27, 54, 62, 56, 39,
					-- layer=1 filter=25 channel=1
					33, 19, 55, -10, 16, 4, -79, -69, -32,
					-- layer=1 filter=25 channel=2
					-8, -25, -75, -12, -54, -61, 54, 48, 7,
					-- layer=1 filter=25 channel=3
					-104, -101, -73, 122, 107, 101, 80, 64, 66,
					-- layer=1 filter=25 channel=4
					-50, -67, -86, 37, 12, -28, 51, 59, 64,
					-- layer=1 filter=25 channel=5
					-57, -109, -29, -39, -26, -9, -70, -29, -11,
					-- layer=1 filter=25 channel=6
					12, -4, -5, 4, -8, -12, 20, 23, 8,
					-- layer=1 filter=25 channel=7
					-37, -68, -62, 7, -35, -17, 66, 50, 42,
					-- layer=1 filter=25 channel=8
					0, 3, 13, 60, 22, 30, 47, 31, 33,
					-- layer=1 filter=25 channel=9
					3, -42, -41, 12, -2, -31, 27, 38, 5,
					-- layer=1 filter=25 channel=10
					-18, -24, -26, -5, 0, 16, 20, 29, 32,
					-- layer=1 filter=25 channel=11
					73, 60, 35, 59, 52, 66, -16, -16, 24,
					-- layer=1 filter=25 channel=12
					20, 44, 56, -14, 24, 10, -56, -70, -52,
					-- layer=1 filter=25 channel=13
					16, 21, -14, 7, 1, 22, -16, -8, 22,
					-- layer=1 filter=25 channel=14
					11, -2, 22, 4, -14, -7, -47, -28, -21,
					-- layer=1 filter=25 channel=15
					5, 0, 27, -3, 11, 65, -47, -29, -28,
					-- layer=1 filter=25 channel=16
					5, -17, -15, -36, 7, -41, -7, -45, 26,
					-- layer=1 filter=25 channel=17
					148, 112, 110, 123, 114, 102, 89, 113, 68,
					-- layer=1 filter=25 channel=18
					-4, -6, -4, 2, -30, -3, 0, 13, -22,
					-- layer=1 filter=25 channel=19
					-8, -25, -31, 5, 2, -2, 20, 18, -22,
					-- layer=1 filter=25 channel=20
					-49, -71, -1, -48, -71, -13, -110, -57, -64,
					-- layer=1 filter=25 channel=21
					-89, -149, -120, -146, -165, -171, -118, -208, -116,
					-- layer=1 filter=25 channel=22
					0, -4, -14, 20, 17, 10, -10, 43, 37,
					-- layer=1 filter=25 channel=23
					-67, -58, -45, 2, -24, -8, 53, 25, 21,
					-- layer=1 filter=25 channel=24
					20, 19, 2, -13, -37, -25, -31, -34, -3,
					-- layer=1 filter=25 channel=25
					-24, -56, -49, -9, -47, -44, -14, -5, -3,
					-- layer=1 filter=25 channel=26
					21, 5, 17, -20, -13, 20, 12, -7, 5,
					-- layer=1 filter=25 channel=27
					-6, -22, 6, -4, 8, 3, -2, -28, 6,
					-- layer=1 filter=25 channel=28
					68, 30, 37, 52, 70, 58, 42, 28, 36,
					-- layer=1 filter=25 channel=29
					28, -28, -18, 45, 20, 34, -51, -27, 7,
					-- layer=1 filter=25 channel=30
					-12, -23, -3, 1, 47, 13, 8, -2, 11,
					-- layer=1 filter=25 channel=31
					8, 70, 69, -21, -2, 6, -81, -46, -64,
					-- layer=1 filter=26 channel=0
					-56, -24, -35, -6, -17, -10, -25, -1, -15,
					-- layer=1 filter=26 channel=1
					4, -28, 0, -35, -22, -7, -33, 0, 14,
					-- layer=1 filter=26 channel=2
					19, 25, 41, -11, 5, 17, -33, -37, -16,
					-- layer=1 filter=26 channel=3
					-108, -126, -124, -60, -142, -64, -112, -87, -88,
					-- layer=1 filter=26 channel=4
					-7, 2, 10, 5, -9, 3, -21, -34, -8,
					-- layer=1 filter=26 channel=5
					-117, -212, -112, -125, -178, -119, -84, -171, -107,
					-- layer=1 filter=26 channel=6
					10, 27, 38, 29, 23, 8, 11, -8, 28,
					-- layer=1 filter=26 channel=7
					23, 14, 15, -9, -14, -16, -24, -22, -23,
					-- layer=1 filter=26 channel=8
					3, 12, -8, 2, 14, 4, 21, 25, -21,
					-- layer=1 filter=26 channel=9
					39, 30, 33, 34, 39, 13, 22, 34, 23,
					-- layer=1 filter=26 channel=10
					-17, 2, 0, -16, 15, -2, -25, -7, 13,
					-- layer=1 filter=26 channel=11
					-36, -62, -17, -132, -92, -69, -86, -120, -74,
					-- layer=1 filter=26 channel=12
					27, 12, 34, 47, 37, 21, 46, 43, 43,
					-- layer=1 filter=26 channel=13
					-4, 13, 1, -5, 14, 3, 7, 22, -2,
					-- layer=1 filter=26 channel=14
					-21, -5, 19, -42, -22, -25, -20, -30, -13,
					-- layer=1 filter=26 channel=15
					-4, -14, -16, -6, 10, 26, -3, 11, 3,
					-- layer=1 filter=26 channel=16
					-32, -64, 43, -76, -10, -29, 3, -33, -50,
					-- layer=1 filter=26 channel=17
					10, -26, -14, -194, -161, -155, -105, -174, -139,
					-- layer=1 filter=26 channel=18
					-17, 7, 12, -27, -14, -20, -42, -30, -35,
					-- layer=1 filter=26 channel=19
					-12, 17, -4, -17, 18, 14, -2, 24, 2,
					-- layer=1 filter=26 channel=20
					-50, -95, -58, -17, -102, -10, -18, -55, -30,
					-- layer=1 filter=26 channel=21
					-85, -31, 28, -28, -7, 15, -40, 0, 25,
					-- layer=1 filter=26 channel=22
					-43, -50, -61, -62, -41, -44, -13, -3, -28,
					-- layer=1 filter=26 channel=23
					7, 9, 22, -7, 16, 11, 4, -25, -11,
					-- layer=1 filter=26 channel=24
					-9, 27, 14, -49, -18, 3, -26, -8, 8,
					-- layer=1 filter=26 channel=25
					14, 54, 41, 40, 30, 24, 17, 32, 32,
					-- layer=1 filter=26 channel=26
					-24, 6, 11, -3, -9, -14, -32, -18, 15,
					-- layer=1 filter=26 channel=27
					-21, 20, -8, -11, 5, -8, -46, -5, 11,
					-- layer=1 filter=26 channel=28
					-74, -19, -41, -122, -128, -48, -104, -81, -69,
					-- layer=1 filter=26 channel=29
					21, -18, 10, -46, -47, -22, -3, -1, -15,
					-- layer=1 filter=26 channel=30
					-22, -16, 8, -23, -5, 1, -20, -18, 0,
					-- layer=1 filter=26 channel=31
					-4, -24, 6, 11, -27, 24, 12, -12, 29,
					-- layer=1 filter=27 channel=0
					1, -59, -37, 24, 31, 23, 57, 32, 14,
					-- layer=1 filter=27 channel=1
					-30, -28, 2, -57, -68, -47, 4, 0, -5,
					-- layer=1 filter=27 channel=2
					-11, -20, -20, -31, -27, -31, -3, -4, 20,
					-- layer=1 filter=27 channel=3
					-48, -53, -73, 47, 12, 23, 46, 55, 69,
					-- layer=1 filter=27 channel=4
					-49, -37, -59, 19, -10, -4, 43, 17, 59,
					-- layer=1 filter=27 channel=5
					9, 19, 37, 15, 5, -12, -35, 2, -33,
					-- layer=1 filter=27 channel=6
					-43, -17, -20, -5, 2, -21, 29, 35, 10,
					-- layer=1 filter=27 channel=7
					-87, -63, -57, -6, -6, -40, 37, 24, 18,
					-- layer=1 filter=27 channel=8
					17, -23, -10, 54, 15, 29, 70, 36, 53,
					-- layer=1 filter=27 channel=9
					-31, -31, -40, 8, -28, -18, 6, 19, 10,
					-- layer=1 filter=27 channel=10
					-64, -40, -53, -7, -12, 6, 45, 41, 41,
					-- layer=1 filter=27 channel=11
					36, 31, 56, 25, 56, 58, 25, 22, -39,
					-- layer=1 filter=27 channel=12
					-3, 4, 10, 7, -14, 5, -8, 15, 9,
					-- layer=1 filter=27 channel=13
					0, -30, 4, 32, 25, 26, 28, 24, 17,
					-- layer=1 filter=27 channel=14
					-65, -50, -34, -20, -62, -19, -8, 11, -23,
					-- layer=1 filter=27 channel=15
					0, -31, -26, 0, 17, 0, 37, 35, 43,
					-- layer=1 filter=27 channel=16
					-14, -35, 1, -45, -37, -4, -1, -14, 29,
					-- layer=1 filter=27 channel=17
					7, -49, -16, 96, 62, 114, -19, -8, 32,
					-- layer=1 filter=27 channel=18
					-49, -41, -7, -5, 0, -30, 1, 18, 6,
					-- layer=1 filter=27 channel=19
					-23, -25, -18, 13, -24, 4, 14, 34, 0,
					-- layer=1 filter=27 channel=20
					-2, -16, -6, -46, 0, -34, -18, -14, -76,
					-- layer=1 filter=27 channel=21
					90, 49, 22, -55, -49, -4, -95, -77, -53,
					-- layer=1 filter=27 channel=22
					-66, -70, -70, -4, -60, -67, 7, -8, 13,
					-- layer=1 filter=27 channel=23
					-30, -9, -41, -24, -29, -8, 9, 32, 38,
					-- layer=1 filter=27 channel=24
					-1, 7, -14, -54, -43, -51, 18, -20, 9,
					-- layer=1 filter=27 channel=25
					49, -8, 6, 12, 27, 22, -4, 0, 12,
					-- layer=1 filter=27 channel=26
					7, -4, -9, -5, 8, 8, -5, -9, -20,
					-- layer=1 filter=27 channel=27
					-50, -37, -26, -24, -14, 9, 15, 0, 1,
					-- layer=1 filter=27 channel=28
					22, -3, -8, 21, 43, 19, 24, 0, 1,
					-- layer=1 filter=27 channel=29
					-64, -7, 6, -17, 6, 48, -30, -6, -55,
					-- layer=1 filter=27 channel=30
					-18, -23, -35, -5, 18, 9, 4, 18, 23,
					-- layer=1 filter=27 channel=31
					8, 14, -33, -32, -50, -26, 1, 10, 4,
					-- layer=1 filter=28 channel=0
					16, -29, -22, -7, 0, 26, 5, 48, 59,
					-- layer=1 filter=28 channel=1
					11, 26, 41, 6, 22, 19, 14, 1, -27,
					-- layer=1 filter=28 channel=2
					-45, -21, -37, -34, -23, -9, 9, -27, -26,
					-- layer=1 filter=28 channel=3
					9, -19, 6, 0, 33, 56, 65, 69, 53,
					-- layer=1 filter=28 channel=4
					7, -32, -25, -38, -13, -41, 3, 3, -8,
					-- layer=1 filter=28 channel=5
					-30, -44, -47, 41, -1, -4, -49, 5, 55,
					-- layer=1 filter=28 channel=6
					6, -12, 14, -5, -6, 3, 0, 18, -5,
					-- layer=1 filter=28 channel=7
					28, 4, -2, 3, -12, 9, 6, -21, 12,
					-- layer=1 filter=28 channel=8
					-36, -51, -26, -42, -24, 28, 1, -13, 27,
					-- layer=1 filter=28 channel=9
					-23, -25, -33, -4, -14, -26, 11, -14, -7,
					-- layer=1 filter=28 channel=10
					9, 22, -15, 17, 15, 6, 1, 29, 28,
					-- layer=1 filter=28 channel=11
					15, 23, 29, 31, 21, 34, -15, -10, -1,
					-- layer=1 filter=28 channel=12
					5, 11, -6, -18, -24, -11, -10, -7, 2,
					-- layer=1 filter=28 channel=13
					22, -1, 7, -4, -5, -11, -7, 18, 14,
					-- layer=1 filter=28 channel=14
					10, 7, 18, 10, 7, 4, 15, -28, 23,
					-- layer=1 filter=28 channel=15
					1, -13, -12, -4, 7, -19, 11, 30, -6,
					-- layer=1 filter=28 channel=16
					-8, -34, -23, -25, 5, 14, -11, 3, 3,
					-- layer=1 filter=28 channel=17
					5, 1, 6, -5, 27, -2, 59, 33, 33,
					-- layer=1 filter=28 channel=18
					13, 34, 28, 16, 3, 18, 28, 22, 10,
					-- layer=1 filter=28 channel=19
					10, 31, 27, 2, 23, 3, 13, 31, 7,
					-- layer=1 filter=28 channel=20
					3, 9, -5, 17, 8, 28, -38, -10, 45,
					-- layer=1 filter=28 channel=21
					-47, -17, -23, -48, -7, -6, 31, 26, -19,
					-- layer=1 filter=28 channel=22
					12, 37, 65, -50, -35, 14, -52, -77, -47,
					-- layer=1 filter=28 channel=23
					11, -46, -17, 27, 12, -15, -29, -30, 6,
					-- layer=1 filter=28 channel=24
					-32, -15, 15, 18, 11, -19, 26, -12, -29,
					-- layer=1 filter=28 channel=25
					-26, -60, -78, -68, -15, -10, -1, 1, -46,
					-- layer=1 filter=28 channel=26
					4, 16, -2, -15, -13, -15, -20, -19, 14,
					-- layer=1 filter=28 channel=27
					10, 21, 7, 35, 2, 0, 7, 24, 15,
					-- layer=1 filter=28 channel=28
					-29, 7, 36, 17, -1, -17, -13, 6, 1,
					-- layer=1 filter=28 channel=29
					-44, -8, 14, -48, -57, -29, -55, -40, 13,
					-- layer=1 filter=28 channel=30
					23, -3, 6, 7, -13, 1, 15, 53, 25,
					-- layer=1 filter=28 channel=31
					7, 30, 10, 3, -16, 11, -1, -29, 0,
					-- layer=1 filter=29 channel=0
					-73, -50, -78, -54, 6, 0, -31, 6, 31,
					-- layer=1 filter=29 channel=1
					40, 2, 23, -2, -42, -22, -40, -31, -20,
					-- layer=1 filter=29 channel=2
					-43, 48, 6, -44, 67, -35, 1, 15, -34,
					-- layer=1 filter=29 channel=3
					-11, -15, -28, -34, 18, 12, -34, -14, 24,
					-- layer=1 filter=29 channel=4
					1, 34, -12, -28, 14, -21, -2, 26, 0,
					-- layer=1 filter=29 channel=5
					36, -154, 76, 55, -98, 115, 14, 6, 74,
					-- layer=1 filter=29 channel=6
					-9, -22, 11, -8, 9, 15, -13, 8, 4,
					-- layer=1 filter=29 channel=7
					49, -47, 63, 18, -50, 35, -20, -33, 35,
					-- layer=1 filter=29 channel=8
					15, -46, 14, 0, -3, 0, 25, 12, 4,
					-- layer=1 filter=29 channel=9
					-13, -16, -3, 0, 3, 19, -14, -14, 37,
					-- layer=1 filter=29 channel=10
					6, 8, -26, -39, -1, -32, -38, -17, 2,
					-- layer=1 filter=29 channel=11
					25, -53, 15, 58, -29, 33, -14, -16, -10,
					-- layer=1 filter=29 channel=12
					46, -5, 53, 29, 8, 33, 31, 9, -7,
					-- layer=1 filter=29 channel=13
					-23, -14, -17, -20, -7, -17, -22, 1, -7,
					-- layer=1 filter=29 channel=14
					18, -71, 29, 7, -115, 20, -39, -65, -15,
					-- layer=1 filter=29 channel=15
					-9, -26, -12, -8, 18, 1, 14, -19, -7,
					-- layer=1 filter=29 channel=16
					-37, 25, -82, 21, 70, 39, 0, -4, 3,
					-- layer=1 filter=29 channel=17
					34, 28, 23, 63, 48, 78, 65, 121, 56,
					-- layer=1 filter=29 channel=18
					-16, 7, 9, -27, -32, -26, -55, -43, -7,
					-- layer=1 filter=29 channel=19
					-8, -3, -11, -12, 23, -1, 0, 5, 16,
					-- layer=1 filter=29 channel=20
					37, -206, 96, 48, -158, 107, 23, -44, 37,
					-- layer=1 filter=29 channel=21
					-141, 113, -120, -53, 145, -201, 22, 95, -98,
					-- layer=1 filter=29 channel=22
					8, 16, -11, 19, -18, -76, 21, -11, -33,
					-- layer=1 filter=29 channel=23
					30, -68, 69, 0, -47, 75, -2, -52, 47,
					-- layer=1 filter=29 channel=24
					-38, 29, -37, -31, 44, -40, 2, 29, -46,
					-- layer=1 filter=29 channel=25
					-87, 59, -90, -17, 54, -64, 23, 31, 4,
					-- layer=1 filter=29 channel=26
					1, 4, -6, -6, 2, -9, -1, -15, 3,
					-- layer=1 filter=29 channel=27
					-34, -5, -6, -20, 1, -32, -43, -21, -33,
					-- layer=1 filter=29 channel=28
					-21, 15, -20, 0, 41, -63, 24, 47, -34,
					-- layer=1 filter=29 channel=29
					49, -35, 75, 50, -75, 55, 3, -40, 53,
					-- layer=1 filter=29 channel=30
					-11, -14, -41, -23, -39, -7, -41, -5, 4,
					-- layer=1 filter=29 channel=31
					27, -3, 18, 0, 20, -7, -1, -10, -28,
					-- layer=1 filter=30 channel=0
					-22, -11, -1, -16, 3, 21, 7, 9, 9,
					-- layer=1 filter=30 channel=1
					6, -69, -3, 0, -26, 12, -59, -56, -7,
					-- layer=1 filter=30 channel=2
					1, 13, 43, 12, 22, 31, 20, 39, -4,
					-- layer=1 filter=30 channel=3
					-20, -2, -10, 15, 21, 11, -10, -13, 3,
					-- layer=1 filter=30 channel=4
					-19, 31, 29, -3, 47, 30, 7, 47, 51,
					-- layer=1 filter=30 channel=5
					58, -47, -58, 33, -97, -39, 11, -125, -49,
					-- layer=1 filter=30 channel=6
					-30, -15, -3, -25, 6, 10, -7, 22, 36,
					-- layer=1 filter=30 channel=7
					-7, -27, 15, -25, -28, 0, -13, 14, 17,
					-- layer=1 filter=30 channel=8
					-17, -6, -9, -14, 3, 17, 20, 9, 5,
					-- layer=1 filter=30 channel=9
					13, -5, 15, -26, 11, -3, -22, 19, -10,
					-- layer=1 filter=30 channel=10
					-28, -10, 15, -24, -6, 2, 3, 28, 17,
					-- layer=1 filter=30 channel=11
					-10, -39, 4, -72, -111, -54, -96, -70, -128,
					-- layer=1 filter=30 channel=12
					15, -23, -55, 3, -72, -27, 0, -54, -34,
					-- layer=1 filter=30 channel=13
					-29, -22, -2, -22, -7, -8, -15, 25, 32,
					-- layer=1 filter=30 channel=14
					-23, -46, -25, -24, -14, -6, -8, -3, -17,
					-- layer=1 filter=30 channel=15
					30, -19, -25, -9, -26, -40, -11, -19, 5,
					-- layer=1 filter=30 channel=16
					-43, -15, -62, -22, -16, -46, -42, 19, -24,
					-- layer=1 filter=30 channel=17
					-95, -81, -121, -99, -126, -137, -98, -121, -142,
					-- layer=1 filter=30 channel=18
					-18, -33, -18, -37, -33, 0, -34, -10, -4,
					-- layer=1 filter=30 channel=19
					-40, -6, -5, 5, -15, -22, -5, 14, 3,
					-- layer=1 filter=30 channel=20
					66, -72, -89, 67, -90, -69, 22, -115, -48,
					-- layer=1 filter=30 channel=21
					49, 75, 37, 85, 53, 51, 93, 71, 0,
					-- layer=1 filter=30 channel=22
					7, -31, -11, 26, -24, 14, 37, 5, 5,
					-- layer=1 filter=30 channel=23
					11, -33, 9, 6, -24, 9, 14, -14, -22,
					-- layer=1 filter=30 channel=24
					19, -15, 30, -60, -35, -24, -30, -30, -31,
					-- layer=1 filter=30 channel=25
					10, 21, 13, 29, 42, 14, 29, 22, 15,
					-- layer=1 filter=30 channel=26
					-2, -3, -15, 5, 11, 16, 16, 0, -2,
					-- layer=1 filter=30 channel=27
					-28, -27, -9, 5, -1, 5, -40, -23, 8,
					-- layer=1 filter=30 channel=28
					14, -42, 13, -56, -74, -67, -45, -54, -71,
					-- layer=1 filter=30 channel=29
					-5, -32, -33, -31, -72, -32, -61, -31, -55,
					-- layer=1 filter=30 channel=30
					-52, -7, -34, -18, -10, 3, -8, -7, 39,
					-- layer=1 filter=30 channel=31
					31, -52, -15, -20, -13, -41, -30, -21, -7,
					-- layer=1 filter=31 channel=0
					25, -15, -15, 23, 0, 34, 22, 15, 0,
					-- layer=1 filter=31 channel=1
					-38, -36, -42, -45, -50, -52, -26, -35, -69,
					-- layer=1 filter=31 channel=2
					6, -14, 14, -7, -18, -17, -12, -2, 7,
					-- layer=1 filter=31 channel=3
					2, -46, -23, -10, -3, -22, 14, -2, -41,
					-- layer=1 filter=31 channel=4
					12, 6, 11, 3, 5, -9, 3, 13, 2,
					-- layer=1 filter=31 channel=5
					13, -7, -36, 6, 10, -5, 41, 34, 23,
					-- layer=1 filter=31 channel=6
					10, 22, 1, 23, 24, -8, 27, -9, -7,
					-- layer=1 filter=31 channel=7
					-21, -19, -11, -4, 10, -29, 0, -5, 1,
					-- layer=1 filter=31 channel=8
					-18, -3, -9, 21, -15, 27, 0, 15, 7,
					-- layer=1 filter=31 channel=9
					5, 11, 3, 2, 10, -18, 9, 14, -21,
					-- layer=1 filter=31 channel=10
					9, 26, 15, 7, 7, 17, 26, 2, 11,
					-- layer=1 filter=31 channel=11
					-5, 12, -14, 30, 59, -5, 4, 28, 47,
					-- layer=1 filter=31 channel=12
					-39, -30, -58, -78, -87, -96, -34, -86, -85,
					-- layer=1 filter=31 channel=13
					19, -7, -17, 21, -16, -2, 21, -19, -19,
					-- layer=1 filter=31 channel=14
					-15, 1, -7, 18, 15, 9, 27, 16, -3,
					-- layer=1 filter=31 channel=15
					-21, -6, -12, -36, -43, -12, -37, -16, -16,
					-- layer=1 filter=31 channel=16
					-7, -2, -11, -59, -16, 21, -24, -6, -3,
					-- layer=1 filter=31 channel=17
					-4, 3, -42, -45, 2, -3, 36, 32, 22,
					-- layer=1 filter=31 channel=18
					3, -14, 3, 7, 13, 4, 29, -14, 33,
					-- layer=1 filter=31 channel=19
					-27, -20, -12, -21, -5, 3, 5, -16, -22,
					-- layer=1 filter=31 channel=20
					8, -42, -65, -32, -45, -48, 30, 21, -28,
					-- layer=1 filter=31 channel=21
					-24, -48, -20, -64, -6, -45, -7, 66, -47,
					-- layer=1 filter=31 channel=22
					-26, -9, -10, -30, -6, -3, -42, -37, 16,
					-- layer=1 filter=31 channel=23
					0, -21, -21, -23, 1, -12, -6, -2, -4,
					-- layer=1 filter=31 channel=24
					12, 19, -4, 10, -12, -24, -4, -10, -14,
					-- layer=1 filter=31 channel=25
					-36, -30, -6, -12, 22, 24, -5, 25, -8,
					-- layer=1 filter=31 channel=26
					15, 0, -15, -1, 0, 23, 12, 19, -9,
					-- layer=1 filter=31 channel=27
					-15, 13, -16, 8, 18, 2, -13, -23, -7,
					-- layer=1 filter=31 channel=28
					45, 26, 29, 38, 17, 17, 28, 19, 5,
					-- layer=1 filter=31 channel=29
					19, 29, 58, 14, 24, 51, 21, 34, 37,
					-- layer=1 filter=31 channel=30
					-12, -23, 8, 27, -9, 31, 24, -1, 1,
					-- layer=1 filter=31 channel=31
					-27, -24, -35, -15, -19, -51, -6, -24, -4,
					-- layer=1 filter=32 channel=0
					26, 9, -22, 36, -8, -19, 24, 26, 36,
					-- layer=1 filter=32 channel=1
					0, 14, 13, -10, -12, 6, 25, 19, -3,
					-- layer=1 filter=32 channel=2
					-52, -2, 8, -41, -26, -18, -31, -36, -56,
					-- layer=1 filter=32 channel=3
					-26, 7, -15, 28, 6, 23, -5, 42, 5,
					-- layer=1 filter=32 channel=4
					-9, 16, -12, 22, 12, 7, 1, 13, -2,
					-- layer=1 filter=32 channel=5
					78, 68, 62, 68, 94, 96, 46, 40, 101,
					-- layer=1 filter=32 channel=6
					3, -32, -35, 28, -17, -41, 48, -3, -21,
					-- layer=1 filter=32 channel=7
					30, 23, -21, 6, 35, -3, 13, 34, -9,
					-- layer=1 filter=32 channel=8
					15, 20, -35, 45, 8, 27, 38, 43, 24,
					-- layer=1 filter=32 channel=9
					0, -23, -16, 11, -10, -45, 41, -7, -18,
					-- layer=1 filter=32 channel=10
					-1, -9, -6, 26, 17, -44, 39, 11, -7,
					-- layer=1 filter=32 channel=11
					-72, -25, -26, -117, -100, -41, -20, -37, -67,
					-- layer=1 filter=32 channel=12
					-9, 4, 5, -14, 9, -10, 11, 8, 32,
					-- layer=1 filter=32 channel=13
					-13, 8, -28, 39, 18, -22, 39, 14, -2,
					-- layer=1 filter=32 channel=14
					-14, 0, -6, 10, -8, 9, 49, 0, 8,
					-- layer=1 filter=32 channel=15
					33, -4, -5, 14, -5, -11, 6, 36, 29,
					-- layer=1 filter=32 channel=16
					-25, -86, -65, 18, 3, -9, 59, -15, 0,
					-- layer=1 filter=32 channel=17
					-58, 3, 15, -46, 14, 66, -79, -82, 14,
					-- layer=1 filter=32 channel=18
					13, -8, -7, 22, -6, -48, 16, -2, -30,
					-- layer=1 filter=32 channel=19
					0, -3, -49, 3, 2, -24, 39, 31, -14,
					-- layer=1 filter=32 channel=20
					24, -7, 0, 30, 3, 47, 26, -5, 39,
					-- layer=1 filter=32 channel=21
					-107, -8, -4, -91, -77, 23, -72, -108, -51,
					-- layer=1 filter=32 channel=22
					32, 22, 42, -10, 27, 59, -59, 19, 6,
					-- layer=1 filter=32 channel=23
					21, 32, 7, 34, 27, 13, 22, 44, 19,
					-- layer=1 filter=32 channel=24
					-2, -25, -30, -25, -30, -2, 20, -8, 0,
					-- layer=1 filter=32 channel=25
					-55, -61, -15, -22, -59, -38, -17, -79, -50,
					-- layer=1 filter=32 channel=26
					-15, -2, -3, -13, -16, 14, -14, -4, -10,
					-- layer=1 filter=32 channel=27
					1, -39, -41, 24, 10, -46, 4, 14, -20,
					-- layer=1 filter=32 channel=28
					-14, 21, 54, -131, -93, 26, -6, -21, 12,
					-- layer=1 filter=32 channel=29
					-6, 16, 18, -61, -14, 10, -40, -28, -18,
					-- layer=1 filter=32 channel=30
					35, 10, -48, 36, -22, -32, 11, 6, -18,
					-- layer=1 filter=32 channel=31
					-7, -12, 6, 16, -26, 2, 6, -3, -21,
					-- layer=1 filter=33 channel=0
					-15, -28, -52, -3, 5, 5, -37, -3, 36,
					-- layer=1 filter=33 channel=1
					30, -16, 21, 0, -34, -40, -30, -61, -31,
					-- layer=1 filter=33 channel=2
					-39, 11, -43, 1, -12, -29, -10, 5, -22,
					-- layer=1 filter=33 channel=3
					-36, -92, -86, 13, -4, -24, -3, 18, -3,
					-- layer=1 filter=33 channel=4
					-23, -32, -20, -1, -12, -15, -9, -1, 8,
					-- layer=1 filter=33 channel=5
					-16, -82, -125, 7, -46, -84, 35, -55, -53,
					-- layer=1 filter=33 channel=6
					-41, -41, -12, -36, -40, -17, -41, -11, 14,
					-- layer=1 filter=33 channel=7
					-36, -41, -24, -9, -37, -20, -21, -38, -5,
					-- layer=1 filter=33 channel=8
					21, 12, -8, 23, 36, 21, 1, 15, 40,
					-- layer=1 filter=33 channel=9
					6, -7, -21, 1, 23, -4, 6, 17, 11,
					-- layer=1 filter=33 channel=10
					-47, -56, -13, -57, -49, 0, -47, -33, 25,
					-- layer=1 filter=33 channel=11
					21, -22, -15, -6, -41, -117, -38, -42, -40,
					-- layer=1 filter=33 channel=12
					65, 41, 63, 61, 18, 34, 48, 10, 59,
					-- layer=1 filter=33 channel=13
					-21, -18, -27, -25, -1, -5, -28, 22, 22,
					-- layer=1 filter=33 channel=14
					0, -79, -41, -45, -121, -70, -45, -29, -12,
					-- layer=1 filter=33 channel=15
					27, -16, 30, 7, -14, 14, -20, -32, 18,
					-- layer=1 filter=33 channel=16
					48, -26, 5, 43, 12, 9, 46, 54, 50,
					-- layer=1 filter=33 channel=17
					-32, -64, -47, -68, -107, -72, -17, -36, 0,
					-- layer=1 filter=33 channel=18
					-22, -5, -16, -39, -10, -24, -14, -41, 4,
					-- layer=1 filter=33 channel=19
					-5, -20, -28, -13, -30, -26, 0, -11, 16,
					-- layer=1 filter=33 channel=20
					34, 21, 2, 46, -21, -20, 58, 17, -34,
					-- layer=1 filter=33 channel=21
					12, 57, 46, 18, 41, 62, 18, 117, 52,
					-- layer=1 filter=33 channel=22
					50, -56, 27, 40, 53, 17, 25, 42, 36,
					-- layer=1 filter=33 channel=23
					-22, 14, 0, -7, 7, -36, 22, -22, -5,
					-- layer=1 filter=33 channel=24
					-39, -29, -54, -27, -55, -92, -81, -26, -53,
					-- layer=1 filter=33 channel=25
					30, 31, 37, 18, 30, 50, 30, 91, 67,
					-- layer=1 filter=33 channel=26
					3, 9, -13, -25, 13, -24, 0, 14, 5,
					-- layer=1 filter=33 channel=27
					5, -34, -11, -52, -62, -36, -30, -66, -12,
					-- layer=1 filter=33 channel=28
					-32, 2, -54, -9, -74, -136, -80, -57, -71,
					-- layer=1 filter=33 channel=29
					77, 73, 44, 61, 33, 18, 40, -10, -13,
					-- layer=1 filter=33 channel=30
					-12, -28, -22, -21, -19, 26, -38, 36, 13,
					-- layer=1 filter=33 channel=31
					38, 12, 34, 27, -25, 21, -17, -5, 33,
					-- layer=1 filter=34 channel=0
					39, -68, -70, 67, -99, -80, 0, -23, -66,
					-- layer=1 filter=34 channel=1
					20, -3, -17, -10, -25, -9, 22, -15, 8,
					-- layer=1 filter=34 channel=2
					-33, -10, 43, -20, -2, 4, -15, -26, 3,
					-- layer=1 filter=34 channel=3
					2, -3, -56, 12, -65, -48, -6, -23, -44,
					-- layer=1 filter=34 channel=4
					-42, -35, 3, -35, -34, -28, -51, -70, -45,
					-- layer=1 filter=34 channel=5
					-3, -41, -87, 114, -68, -33, 98, -16, -53,
					-- layer=1 filter=34 channel=6
					-22, -33, -4, -27, -47, -5, 15, -32, -34,
					-- layer=1 filter=34 channel=7
					-28, -27, -55, 2, -47, -27, 36, -43, -34,
					-- layer=1 filter=34 channel=8
					42, 10, -37, 27, -43, -33, 28, -6, -41,
					-- layer=1 filter=34 channel=9
					-18, -11, -37, -36, -28, -40, 13, -33, -44,
					-- layer=1 filter=34 channel=10
					-16, -31, -15, -43, -46, -22, -24, -50, -44,
					-- layer=1 filter=34 channel=11
					-40, -50, -65, -1, -33, 13, 25, -73, -20,
					-- layer=1 filter=34 channel=12
					20, 23, -16, 12, 34, -3, 46, 44, 31,
					-- layer=1 filter=34 channel=13
					2, -14, 3, 15, -43, -20, 5, -10, -14,
					-- layer=1 filter=34 channel=14
					16, -32, -90, 59, -18, -43, 76, -53, -40,
					-- layer=1 filter=34 channel=15
					13, -7, 9, 16, -5, 20, 53, 12, -11,
					-- layer=1 filter=34 channel=16
					20, -59, 0, -15, -70, 3, -60, 19, -10,
					-- layer=1 filter=34 channel=17
					5, -81, -13, 82, 20, -28, -75, -31, -32,
					-- layer=1 filter=34 channel=18
					2, -22, -7, -19, 0, 11, -3, -33, -1,
					-- layer=1 filter=34 channel=19
					-8, -28, -24, -5, -39, -29, -8, -15, -54,
					-- layer=1 filter=34 channel=20
					31, -57, -77, 80, -80, -55, 98, -32, -15,
					-- layer=1 filter=34 channel=21
					-25, -1, 66, -15, -21, 47, -24, -29, 32,
					-- layer=1 filter=34 channel=22
					69, 17, -11, 45, 1, -10, 19, 33, 4,
					-- layer=1 filter=34 channel=23
					-17, -20, -47, 23, -61, -23, 58, -12, -7,
					-- layer=1 filter=34 channel=24
					-63, -59, 13, -54, -48, 38, -46, -72, -4,
					-- layer=1 filter=34 channel=25
					-4, -22, -2, -10, -31, -5, -28, -54, 15,
					-- layer=1 filter=34 channel=26
					2, 16, -11, -11, 16, 2, 10, -9, -8,
					-- layer=1 filter=34 channel=27
					-41, -28, 12, -37, 8, -47, -9, -44, -1,
					-- layer=1 filter=34 channel=28
					-40, -42, 39, -66, -20, 58, -100, -62, 16,
					-- layer=1 filter=34 channel=29
					1, 4, -78, 7, 29, -26, 68, 13, 43,
					-- layer=1 filter=34 channel=30
					-5, -21, -15, -25, -44, -49, -39, -45, -24,
					-- layer=1 filter=34 channel=31
					19, -21, -33, 25, 30, 20, 34, 29, 9,
					-- layer=1 filter=35 channel=0
					25, 13, 6, -25, 0, -3, -14, -22, 1,
					-- layer=1 filter=35 channel=1
					-49, -40, -39, -60, -36, -25, -53, -25, -14,
					-- layer=1 filter=35 channel=2
					21, -2, 5, -12, -6, -10, -13, -5, -21,
					-- layer=1 filter=35 channel=3
					-35, -7, 7, -53, -44, -7, -64, -60, -14,
					-- layer=1 filter=35 channel=4
					22, 31, 8, 35, 0, 5, 11, 11, 17,
					-- layer=1 filter=35 channel=5
					28, 22, 71, 47, 8, 53, 46, 75, 44,
					-- layer=1 filter=35 channel=6
					10, -9, 17, 8, 19, 3, 6, 13, 24,
					-- layer=1 filter=35 channel=7
					7, 29, -1, 13, -11, 13, 28, -14, 19,
					-- layer=1 filter=35 channel=8
					-4, -13, 27, -2, -20, -17, 11, -41, -3,
					-- layer=1 filter=35 channel=9
					7, 0, -27, -21, -20, -30, -17, -6, -12,
					-- layer=1 filter=35 channel=10
					9, 14, 8, 18, -18, -10, 4, -23, -16,
					-- layer=1 filter=35 channel=11
					11, 39, 46, -47, -20, 26, -52, -25, 1,
					-- layer=1 filter=35 channel=12
					-54, -30, -15, -36, -33, -12, -38, -14, 10,
					-- layer=1 filter=35 channel=13
					-24, -35, 1, -36, -7, -25, -21, -5, -8,
					-- layer=1 filter=35 channel=14
					13, 13, 9, 18, 12, -2, -2, 14, 33,
					-- layer=1 filter=35 channel=15
					-10, 15, -1, -14, 3, 42, -1, 3, 28,
					-- layer=1 filter=35 channel=16
					-2, 24, 19, -45, 23, 12, -77, -12, -20,
					-- layer=1 filter=35 channel=17
					-33, -34, -23, -132, -60, -77, -87, -72, -34,
					-- layer=1 filter=35 channel=18
					-14, -8, -24, -10, -25, -9, -20, 0, -8,
					-- layer=1 filter=35 channel=19
					-24, -41, -44, -46, -67, -62, -37, -41, -49,
					-- layer=1 filter=35 channel=20
					16, -16, 46, 13, 4, -6, 43, 65, 21,
					-- layer=1 filter=35 channel=21
					58, 46, 55, 54, 72, 39, 82, 62, 63,
					-- layer=1 filter=35 channel=22
					-49, -94, -62, -111, -96, -34, -41, -50, -55,
					-- layer=1 filter=35 channel=23
					3, 24, 22, -3, -1, 24, 6, -18, -14,
					-- layer=1 filter=35 channel=24
					0, -21, -2, -52, -31, -22, -11, 9, -40,
					-- layer=1 filter=35 channel=25
					7, 1, -4, -26, 5, -28, -17, 26, 6,
					-- layer=1 filter=35 channel=26
					-9, -4, -1, 4, -18, -6, -12, 14, -4,
					-- layer=1 filter=35 channel=27
					17, -8, -16, -2, 9, -12, 15, -9, 0,
					-- layer=1 filter=35 channel=28
					19, 17, 39, -68, -38, 34, -35, -19, -29,
					-- layer=1 filter=35 channel=29
					24, 15, 55, 0, 9, 34, 7, -5, 16,
					-- layer=1 filter=35 channel=30
					-19, -42, -17, -12, 1, -26, 5, -29, 9,
					-- layer=1 filter=35 channel=31
					-68, -27, -8, -24, -19, -10, -23, -22, -12,
					-- layer=1 filter=36 channel=0
					-53, -42, -33, 13, -86, -35, -36, -64, -82,
					-- layer=1 filter=36 channel=1
					-41, -20, 2, -43, 27, 74, -6, 57, 70,
					-- layer=1 filter=36 channel=2
					-35, 32, 34, -47, 27, 40, -35, 51, 40,
					-- layer=1 filter=36 channel=3
					-96, -69, -46, -33, -67, -54, -82, -108, -66,
					-- layer=1 filter=36 channel=4
					-9, 24, 36, -18, 9, 21, -67, -33, 28,
					-- layer=1 filter=36 channel=5
					12, 11, -113, 29, 57, -26, 98, 100, -48,
					-- layer=1 filter=36 channel=6
					0, -13, 33, -36, -13, 36, -4, -28, 28,
					-- layer=1 filter=36 channel=7
					35, -7, -1, 27, -42, 31, 19, -55, -16,
					-- layer=1 filter=36 channel=8
					-3, -35, -32, 10, -80, -17, 12, -88, -28,
					-- layer=1 filter=36 channel=9
					26, -1, -9, 12, -31, -12, 0, -32, -15,
					-- layer=1 filter=36 channel=10
					6, -31, 14, -31, -38, 21, -22, -65, 33,
					-- layer=1 filter=36 channel=11
					1, -15, -15, -67, -130, -55, -105, -150, -100,
					-- layer=1 filter=36 channel=12
					-10, -22, 40, -17, 7, 63, -7, 12, 64,
					-- layer=1 filter=36 channel=13
					-40, -2, 26, -27, 4, 21, -30, -19, 10,
					-- layer=1 filter=36 channel=14
					7, -16, 64, -11, -3, 45, 29, -13, -14,
					-- layer=1 filter=36 channel=15
					-62, -24, 21, -58, -4, 34, -33, 26, 21,
					-- layer=1 filter=36 channel=16
					-69, 27, -14, -99, -54, 64, -13, -49, -60,
					-- layer=1 filter=36 channel=17
					-56, -33, 18, -14, -36, -87, -119, -62, -74,
					-- layer=1 filter=36 channel=18
					-26, 8, 15, -52, -16, 0, 0, -9, -17,
					-- layer=1 filter=36 channel=19
					-29, -34, 21, -30, -13, 16, -8, -36, 0,
					-- layer=1 filter=36 channel=20
					37, 63, -49, 71, 106, 18, 135, 130, -10,
					-- layer=1 filter=36 channel=21
					-13, 127, 122, -16, 138, 91, 19, 106, 120,
					-- layer=1 filter=36 channel=22
					24, 25, -14, 11, 3, 14, 79, 3, -1,
					-- layer=1 filter=36 channel=23
					29, -51, -36, 11, -56, -37, 24, -6, -27,
					-- layer=1 filter=36 channel=24
					-11, -9, -3, -48, -14, 33, -53, 4, 18,
					-- layer=1 filter=36 channel=25
					-42, 66, 36, -29, 58, 51, -49, 42, 42,
					-- layer=1 filter=36 channel=26
					-2, -12, 9, -6, 13, 9, -6, -20, -17,
					-- layer=1 filter=36 channel=27
					-28, -23, -3, -23, -50, 30, -43, -24, 17,
					-- layer=1 filter=36 channel=28
					-26, -9, -12, -94, -76, -37, -107, -81, -50,
					-- layer=1 filter=36 channel=29
					26, 27, -34, 1, -4, -41, -6, 13, -50,
					-- layer=1 filter=36 channel=30
					-44, -2, -11, -54, -19, 18, -57, -63, -5,
					-- layer=1 filter=36 channel=31
					-55, -9, 23, -71, -10, 64, -24, 12, 92,
					-- layer=1 filter=37 channel=0
					6, -22, -10, -8, 9, 16, -8, 5, 7,
					-- layer=1 filter=37 channel=1
					3, 10, -42, -5, -8, -30, 26, -4, 5,
					-- layer=1 filter=37 channel=2
					-26, -15, 9, -17, -1, -10, 14, 16, -14,
					-- layer=1 filter=37 channel=3
					6, -11, -46, -16, 7, 0, -39, 19, 23,
					-- layer=1 filter=37 channel=4
					7, -4, 22, 39, 0, 9, 30, 54, 15,
					-- layer=1 filter=37 channel=5
					22, -36, -29, -1, -37, -51, -61, -17, -67,
					-- layer=1 filter=37 channel=6
					0, -10, 12, 18, 23, -18, 26, 11, 20,
					-- layer=1 filter=37 channel=7
					35, -1, -10, 29, 24, 2, 57, 45, 21,
					-- layer=1 filter=37 channel=8
					-34, -23, -5, 2, 24, -3, 0, -2, -4,
					-- layer=1 filter=37 channel=9
					-26, -25, -30, 0, -5, -46, 2, -34, -31,
					-- layer=1 filter=37 channel=10
					8, -22, -23, 20, -7, 15, 1, 17, -5,
					-- layer=1 filter=37 channel=11
					-70, -115, -117, -185, -168, -180, -140, -190, -157,
					-- layer=1 filter=37 channel=12
					-3, 26, 9, 12, 35, 7, 20, 34, 35,
					-- layer=1 filter=37 channel=13
					-1, -12, 3, 24, -5, 10, 12, 24, 0,
					-- layer=1 filter=37 channel=14
					9, 4, -35, 31, 0, -6, -4, 10, 6,
					-- layer=1 filter=37 channel=15
					26, -2, 2, 22, 25, 29, 20, 55, 37,
					-- layer=1 filter=37 channel=16
					-3, -28, -19, 0, 15, -16, -22, 37, 34,
					-- layer=1 filter=37 channel=17
					-92, -66, -61, -110, -81, -128, -131, -109, -126,
					-- layer=1 filter=37 channel=18
					2, -13, 0, -19, -29, 7, 23, -8, 10,
					-- layer=1 filter=37 channel=19
					-30, -29, -25, 0, -3, 4, -6, -10, -8,
					-- layer=1 filter=37 channel=20
					81, -6, -39, 32, -16, -67, -20, 26, -48,
					-- layer=1 filter=37 channel=21
					-114, -117, -68, -163, -98, -106, -128, -98, -102,
					-- layer=1 filter=37 channel=22
					-22, 0, -13, 12, 27, 9, 9, 24, 31,
					-- layer=1 filter=37 channel=23
					34, 4, -10, 8, -4, 0, 36, 9, 14,
					-- layer=1 filter=37 channel=24
					-10, 0, -18, -40, -3, -1, -23, -25, -33,
					-- layer=1 filter=37 channel=25
					-80, -73, -65, -55, -18, -13, -43, -32, -14,
					-- layer=1 filter=37 channel=26
					30, -8, 2, 10, 21, 13, -3, 32, 35,
					-- layer=1 filter=37 channel=27
					-23, 3, -9, -15, -28, -13, -8, 12, 2,
					-- layer=1 filter=37 channel=28
					-117, -92, -89, -132, -133, -122, -113, -150, -106,
					-- layer=1 filter=37 channel=29
					42, 41, -13, 29, 16, -11, 22, -13, -26,
					-- layer=1 filter=37 channel=30
					-31, -17, -21, -19, 20, -1, 24, 30, 7,
					-- layer=1 filter=37 channel=31
					-7, -3, -21, 6, 9, -24, -11, 16, 13,
					-- layer=1 filter=38 channel=0
					5, -11, -4, 18, -1, 15, -6, 2, 16,
					-- layer=1 filter=38 channel=1
					-14, -21, -26, -18, 3, -35, -26, -21, -23,
					-- layer=1 filter=38 channel=2
					2, 2, -14, -11, -11, -6, -4, 0, -5,
					-- layer=1 filter=38 channel=3
					-10, -24, -37, -16, -23, 5, 0, 1, 7,
					-- layer=1 filter=38 channel=4
					3, 13, -11, 2, 25, 1, 12, 20, -1,
					-- layer=1 filter=38 channel=5
					23, 40, 61, 62, 23, 40, 81, 66, 71,
					-- layer=1 filter=38 channel=6
					-6, 26, 4, 19, 17, 12, 17, 10, 15,
					-- layer=1 filter=38 channel=7
					16, 10, -13, -12, -5, -4, -7, -16, 2,
					-- layer=1 filter=38 channel=8
					17, 8, 21, 12, 0, 26, 31, 9, -3,
					-- layer=1 filter=38 channel=9
					3, 0, 10, 29, 23, 6, -2, 28, 24,
					-- layer=1 filter=38 channel=10
					23, -5, -16, 19, 6, 6, -10, -1, -6,
					-- layer=1 filter=38 channel=11
					-53, -47, -29, -19, -31, -1, 32, -5, 38,
					-- layer=1 filter=38 channel=12
					-7, -38, -28, -14, -35, -45, -25, -45, -43,
					-- layer=1 filter=38 channel=13
					12, 25, 9, -7, -10, 23, 33, 22, 3,
					-- layer=1 filter=38 channel=14
					-35, -24, -28, -12, -25, -15, 15, -6, -21,
					-- layer=1 filter=38 channel=15
					-21, -39, -35, -14, -38, -26, -6, -6, -31,
					-- layer=1 filter=38 channel=16
					-54, -27, 19, -69, 22, -41, -24, 10, 7,
					-- layer=1 filter=38 channel=17
					-92, -66, -28, -75, -71, -68, -6, 2, 8,
					-- layer=1 filter=38 channel=18
					-17, -10, -16, 7, -6, -25, -24, 0, -13,
					-- layer=1 filter=38 channel=19
					3, 15, -9, 20, -6, 4, 27, 25, 27,
					-- layer=1 filter=38 channel=20
					-30, -30, 12, 8, -28, -14, 29, 10, -15,
					-- layer=1 filter=38 channel=21
					5, 11, 11, -2, 39, -4, -20, 58, 25,
					-- layer=1 filter=38 channel=22
					2, -18, 57, -16, -30, 9, -18, -50, -3,
					-- layer=1 filter=38 channel=23
					5, -3, 7, -11, -16, 25, 0, -10, -9,
					-- layer=1 filter=38 channel=24
					-23, -15, -24, -6, -25, -4, 14, 21, -5,
					-- layer=1 filter=38 channel=25
					-4, 6, 16, -4, 21, 23, 18, 41, 9,
					-- layer=1 filter=38 channel=26
					26, 2, -12, 9, -8, 4, 15, 7, 2,
					-- layer=1 filter=38 channel=27
					-19, -22, -50, -15, -9, -10, -4, -20, -19,
					-- layer=1 filter=38 channel=28
					-8, -37, -39, -2, 3, -2, 20, 9, 19,
					-- layer=1 filter=38 channel=29
					-29, -9, 9, -4, -41, 3, 0, -4, 4,
					-- layer=1 filter=38 channel=30
					4, -26, -13, -13, -6, -7, -3, -4, -10,
					-- layer=1 filter=38 channel=31
					-5, -28, -34, -15, 27, 4, -16, 21, 4,
					-- layer=1 filter=39 channel=0
					1, 6, 5, 15, -5, -12, 0, 18, 9,
					-- layer=1 filter=39 channel=1
					-12, -12, 3, -16, -2, -7, -3, 9, -13,
					-- layer=1 filter=39 channel=2
					-5, 17, 8, 4, 18, -9, 0, 7, -3,
					-- layer=1 filter=39 channel=3
					7, 0, 3, -10, 14, -19, -16, 5, 15,
					-- layer=1 filter=39 channel=4
					0, 15, -22, 10, 2, -18, 18, 9, -12,
					-- layer=1 filter=39 channel=5
					-18, -10, -16, -5, -7, -18, -8, -2, -12,
					-- layer=1 filter=39 channel=6
					-15, -16, -19, -13, 15, -16, -7, 2, -20,
					-- layer=1 filter=39 channel=7
					-20, -2, -21, -9, -11, 12, -20, -8, -9,
					-- layer=1 filter=39 channel=8
					3, 9, -1, 12, -6, 0, 0, -12, 7,
					-- layer=1 filter=39 channel=9
					-20, -20, 1, -16, 12, -18, 0, 14, 8,
					-- layer=1 filter=39 channel=10
					16, 2, -11, 12, -12, -21, -20, -12, -19,
					-- layer=1 filter=39 channel=11
					1, 8, 7, 14, -3, -5, -3, 2, -11,
					-- layer=1 filter=39 channel=12
					-5, 18, -21, 6, -18, -25, 0, -3, -23,
					-- layer=1 filter=39 channel=13
					6, -9, -3, -4, -14, -13, 5, 18, -12,
					-- layer=1 filter=39 channel=14
					7, 0, -5, 5, 19, -2, -14, -7, 17,
					-- layer=1 filter=39 channel=15
					6, 13, 7, -6, -18, -11, -2, 8, 3,
					-- layer=1 filter=39 channel=16
					-16, 6, -18, -2, -15, 9, -18, -12, -12,
					-- layer=1 filter=39 channel=17
					-2, -6, -11, 4, 6, -6, -5, 12, 6,
					-- layer=1 filter=39 channel=18
					0, 12, -8, 16, -7, 0, -13, 8, -5,
					-- layer=1 filter=39 channel=19
					13, -9, -14, 15, -4, 7, 14, -6, -9,
					-- layer=1 filter=39 channel=20
					-8, -7, -3, 3, -25, -2, 4, 3, -19,
					-- layer=1 filter=39 channel=21
					-14, 0, -13, -1, -19, -14, 5, -11, -3,
					-- layer=1 filter=39 channel=22
					2, -12, -4, -6, -24, 2, -22, 3, 8,
					-- layer=1 filter=39 channel=23
					-17, -6, 6, -14, -16, -9, -9, 17, 14,
					-- layer=1 filter=39 channel=24
					-16, -1, -20, -17, 3, -23, 14, 19, 16,
					-- layer=1 filter=39 channel=25
					-9, -13, -6, 1, -15, -15, -22, 4, 1,
					-- layer=1 filter=39 channel=26
					-6, 0, 5, -19, -17, 10, -12, 2, 0,
					-- layer=1 filter=39 channel=27
					3, 12, -4, -10, 10, -9, -20, -7, -6,
					-- layer=1 filter=39 channel=28
					2, 12, 12, -20, 2, 7, -16, -14, -8,
					-- layer=1 filter=39 channel=29
					17, -7, -23, 11, -2, 10, 14, -20, 9,
					-- layer=1 filter=39 channel=30
					19, 6, 11, 4, -10, 9, 3, 5, 4,
					-- layer=1 filter=39 channel=31
					-16, -18, 9, -8, -21, 20, 1, -17, 9,
					-- layer=1 filter=40 channel=0
					-41, -19, 4, -1, 3, 10, -5, -13, 10,
					-- layer=1 filter=40 channel=1
					10, -15, -28, -14, -25, -25, 1, -27, -44,
					-- layer=1 filter=40 channel=2
					-27, -34, -4, -23, -22, -48, -14, -20, 1,
					-- layer=1 filter=40 channel=3
					-70, -45, -67, -112, -34, -82, 8, -78, -46,
					-- layer=1 filter=40 channel=4
					-29, -15, 0, -15, 27, 4, -23, 0, -20,
					-- layer=1 filter=40 channel=5
					-42, -32, -26, 0, -23, 25, 7, -42, 17,
					-- layer=1 filter=40 channel=6
					-1, -1, -7, 14, 9, 24, 14, 28, 0,
					-- layer=1 filter=40 channel=7
					-4, -11, -7, -25, -13, 0, 1, -18, -10,
					-- layer=1 filter=40 channel=8
					-30, -29, -18, -24, 11, 9, 5, 17, 5,
					-- layer=1 filter=40 channel=9
					-25, -4, 1, -23, 3, 0, 4, -10, 14,
					-- layer=1 filter=40 channel=10
					28, 4, 10, -23, 15, -10, 25, 18, -7,
					-- layer=1 filter=40 channel=11
					-15, -27, 8, -38, -24, 9, -55, -49, -23,
					-- layer=1 filter=40 channel=12
					49, 25, -9, 13, 17, -7, 61, 18, -11,
					-- layer=1 filter=40 channel=13
					-4, 18, -4, 13, 25, -13, 33, 3, 24,
					-- layer=1 filter=40 channel=14
					2, -28, 4, -9, 0, -15, 0, -15, 6,
					-- layer=1 filter=40 channel=15
					30, -1, 1, 33, 6, -8, 36, 12, -4,
					-- layer=1 filter=40 channel=16
					-55, 69, 1, 0, -22, 11, 18, 0, 35,
					-- layer=1 filter=40 channel=17
					-85, -54, 12, -18, -21, -48, 11, 12, -22,
					-- layer=1 filter=40 channel=18
					11, 3, 4, 0, 8, -3, -3, -1, -6,
					-- layer=1 filter=40 channel=19
					-9, -4, 0, -1, -13, -11, 13, 18, -10,
					-- layer=1 filter=40 channel=20
					-4, -4, -10, -6, 16, 50, 41, 45, 80,
					-- layer=1 filter=40 channel=21
					-24, 39, 21, -8, 63, 10, 7, 37, 75,
					-- layer=1 filter=40 channel=22
					-23, -40, -61, -39, -14, -49, -28, -18, 30,
					-- layer=1 filter=40 channel=23
					-30, -20, -45, -56, -6, 1, -17, -28, 11,
					-- layer=1 filter=40 channel=24
					2, -17, 23, 5, -16, -5, 24, -8, 9,
					-- layer=1 filter=40 channel=25
					-31, 5, -11, -24, 32, 12, 38, -5, 34,
					-- layer=1 filter=40 channel=26
					17, -2, 7, 3, -18, 20, 18, 3, 16,
					-- layer=1 filter=40 channel=27
					-5, 13, 27, -28, -6, -7, 1, -4, -7,
					-- layer=1 filter=40 channel=28
					-2, -45, -7, -41, -13, -33, -50, -97, -49,
					-- layer=1 filter=40 channel=29
					-4, 4, 35, -34, -5, 24, -40, 1, 7,
					-- layer=1 filter=40 channel=30
					0, -15, 21, -7, 7, 0, 35, 8, 24,
					-- layer=1 filter=40 channel=31
					-4, 8, -28, -6, -11, -47, -2, -25, -35,
					-- layer=1 filter=41 channel=0
					-19, -1, 14, -20, 31, 1, -9, 33, -3,
					-- layer=1 filter=41 channel=1
					-21, 3, 3, -23, -44, 21, 6, 9, 52,
					-- layer=1 filter=41 channel=2
					-49, 60, -12, -57, 51, -19, -30, 32, -9,
					-- layer=1 filter=41 channel=3
					14, 1, -10, -15, 8, 0, 29, 0, -10,
					-- layer=1 filter=41 channel=4
					2, 18, -7, -10, 52, -17, -4, 5, 17,
					-- layer=1 filter=41 channel=5
					101, -76, 44, 120, -141, 34, 77, -105, 26,
					-- layer=1 filter=41 channel=6
					-16, -5, 26, 2, 12, 0, 21, 12, 19,
					-- layer=1 filter=41 channel=7
					41, -31, 17, 33, -55, 14, 25, -35, -14,
					-- layer=1 filter=41 channel=8
					-13, -34, 15, 20, -11, 2, -44, 12, 13,
					-- layer=1 filter=41 channel=9
					-13, -5, -25, 13, -7, -19, -7, 11, 15,
					-- layer=1 filter=41 channel=10
					-23, 14, 8, -21, 0, 31, 10, 26, -8,
					-- layer=1 filter=41 channel=11
					-83, -89, -42, -38, -127, -42, 17, 28, 37,
					-- layer=1 filter=41 channel=12
					-17, -54, 20, -28, -16, -14, -39, -31, -19,
					-- layer=1 filter=41 channel=13
					-6, 7, 7, -19, 26, 17, -6, -8, 14,
					-- layer=1 filter=41 channel=14
					6, -53, 21, 30, -59, 29, 4, -27, 9,
					-- layer=1 filter=41 channel=15
					-23, -27, -7, 20, -11, 9, 0, -26, 25,
					-- layer=1 filter=41 channel=16
					-16, 5, -20, -110, -84, -49, -90, -15, -24,
					-- layer=1 filter=41 channel=17
					-17, -62, -64, -93, -125, -71, -79, -43, -21,
					-- layer=1 filter=41 channel=18
					-34, 14, 28, -39, -4, 20, -12, 17, -3,
					-- layer=1 filter=41 channel=19
					-14, 10, 1, 21, -8, 13, -2, 20, 3,
					-- layer=1 filter=41 channel=20
					96, -154, 61, 72, -245, 49, 39, -149, 41,
					-- layer=1 filter=41 channel=21
					-48, 89, 2, -46, 76, -30, -16, 7, 0,
					-- layer=1 filter=41 channel=22
					18, 18, 45, -18, -8, 31, -17, -28, -52,
					-- layer=1 filter=41 channel=23
					58, -30, -31, 62, -71, 23, 31, -58, -5,
					-- layer=1 filter=41 channel=24
					-48, -3, -16, -72, -14, -8, -8, -3, 45,
					-- layer=1 filter=41 channel=25
					-20, 69, -13, -54, 41, -40, 3, 0, -6,
					-- layer=1 filter=41 channel=26
					15, 5, 17, 0, 2, -2, -20, -17, 20,
					-- layer=1 filter=41 channel=27
					-6, -18, 12, -27, -4, 1, -13, 14, 2,
					-- layer=1 filter=41 channel=28
					-55, -40, -27, -52, -63, -23, -5, 37, 35,
					-- layer=1 filter=41 channel=29
					-27, -53, -26, -11, -97, -52, -17, -32, -18,
					-- layer=1 filter=41 channel=30
					-35, 2, 7, -50, 30, 5, -30, 0, 29,
					-- layer=1 filter=41 channel=31
					5, -13, 32, 15, -7, 17, -7, 15, 27,
					-- layer=1 filter=42 channel=0
					7, 35, 7, 7, -13, -22, 11, 29, 0,
					-- layer=1 filter=42 channel=1
					-45, -87, -57, 8, 0, -27, 7, 0, -1,
					-- layer=1 filter=42 channel=2
					-53, -55, -15, -8, 8, 5, -10, -39, 10,
					-- layer=1 filter=42 channel=3
					87, 103, 63, 7, 42, 58, 9, -3, -14,
					-- layer=1 filter=42 channel=4
					5, 36, 21, 2, -2, 11, -6, -2, -31,
					-- layer=1 filter=42 channel=5
					21, 41, 0, -16, -98, 5, -24, -38, -21,
					-- layer=1 filter=42 channel=6
					-2, -7, -1, -3, -4, 27, 4, -10, 21,
					-- layer=1 filter=42 channel=7
					-30, -4, -16, -14, 5, 21, -28, -10, -42,
					-- layer=1 filter=42 channel=8
					14, 38, 32, 26, -17, 0, 29, 23, 13,
					-- layer=1 filter=42 channel=9
					0, -20, -35, -14, -14, 9, -16, -25, -14,
					-- layer=1 filter=42 channel=10
					-22, -26, -15, -17, 7, 25, 17, -14, 21,
					-- layer=1 filter=42 channel=11
					54, 52, 32, 38, 73, 87, 24, 53, 47,
					-- layer=1 filter=42 channel=12
					-42, -39, -52, -16, 0, -26, 41, 25, 15,
					-- layer=1 filter=42 channel=13
					8, -1, 24, 21, 3, 12, 6, -1, 17,
					-- layer=1 filter=42 channel=14
					-56, -27, -47, 10, 6, 33, 6, 36, -5,
					-- layer=1 filter=42 channel=15
					-14, -1, -22, -29, -37, -20, 13, 35, 11,
					-- layer=1 filter=42 channel=16
					-43, -13, -19, -14, -57, 13, -13, -16, -11,
					-- layer=1 filter=42 channel=17
					152, 218, 146, 212, 214, 228, 104, 154, 116,
					-- layer=1 filter=42 channel=18
					-51, -34, -22, -6, -3, -15, -11, -3, 13,
					-- layer=1 filter=42 channel=19
					7, -12, -7, 6, 7, 19, 9, 2, -5,
					-- layer=1 filter=42 channel=20
					-31, -21, -5, -29, -66, 29, 14, 4, 11,
					-- layer=1 filter=42 channel=21
					-39, -20, 0, 9, 10, -8, -12, 0, -13,
					-- layer=1 filter=42 channel=22
					-10, -30, -10, 0, -7, -21, -29, -73, -77,
					-- layer=1 filter=42 channel=23
					10, 31, 7, 12, -13, 14, 0, -12, -32,
					-- layer=1 filter=42 channel=24
					-47, -84, -46, -33, -4, -15, -4, -21, 34,
					-- layer=1 filter=42 channel=25
					15, 61, 34, 32, 13, 16, 37, 23, -3,
					-- layer=1 filter=42 channel=26
					-10, -15, 23, 30, -10, -4, -6, -4, -3,
					-- layer=1 filter=42 channel=27
					-2, -56, -28, 16, 24, -5, -1, -17, 24,
					-- layer=1 filter=42 channel=28
					0, -43, 32, 6, 46, 11, -9, -2, 59,
					-- layer=1 filter=42 channel=29
					22, 3, 23, 22, 53, 37, 29, 22, 19,
					-- layer=1 filter=42 channel=30
					8, 19, -19, -29, -51, -13, 16, -5, -16,
					-- layer=1 filter=42 channel=31
					2, -69, 18, -3, 21, -31, 16, 7, 30,
					-- layer=1 filter=43 channel=0
					12, 14, -18, 2, -7, -9, -3, 16, 5,
					-- layer=1 filter=43 channel=1
					-18, 1, -36, -10, -1, -14, -20, 18, 1,
					-- layer=1 filter=43 channel=2
					21, -17, -13, 4, -3, 15, 7, -2, -8,
					-- layer=1 filter=43 channel=3
					-23, -48, -55, -31, -63, -41, -34, -55, -17,
					-- layer=1 filter=43 channel=4
					22, 8, 4, -8, -6, 9, 25, 5, 38,
					-- layer=1 filter=43 channel=5
					8, 6, 10, 62, 50, 7, 43, -6, 29,
					-- layer=1 filter=43 channel=6
					-1, -14, 11, 0, 24, -9, 21, 25, 18,
					-- layer=1 filter=43 channel=7
					17, 33, 5, -25, 2, -25, -4, 5, 19,
					-- layer=1 filter=43 channel=8
					-1, 0, -11, 17, -2, -27, -23, 1, -9,
					-- layer=1 filter=43 channel=9
					-27, -18, -8, -16, 11, -9, -7, 14, -6,
					-- layer=1 filter=43 channel=10
					-19, -1, -11, -11, 15, 15, 24, 14, 14,
					-- layer=1 filter=43 channel=11
					-99, -178, -147, -73, -89, -121, -49, -54, -80,
					-- layer=1 filter=43 channel=12
					-6, -18, -21, -8, -18, -13, -17, -18, -16,
					-- layer=1 filter=43 channel=13
					22, 2, 11, 11, 27, -5, 22, 6, 31,
					-- layer=1 filter=43 channel=14
					6, 0, -9, -17, 20, -7, -20, 12, -12,
					-- layer=1 filter=43 channel=15
					8, 20, 14, -13, -7, -5, 4, 12, 0,
					-- layer=1 filter=43 channel=16
					51, 13, 25, -11, 30, 4, -53, -4, -34,
					-- layer=1 filter=43 channel=17
					-103, -150, -143, -160, -148, -170, -60, -73, -77,
					-- layer=1 filter=43 channel=18
					7, -7, -34, -22, 5, 4, -2, 11, 20,
					-- layer=1 filter=43 channel=19
					-10, 3, 9, 14, -8, -9, -1, 5, 11,
					-- layer=1 filter=43 channel=20
					-14, 11, -11, 45, 18, -26, 23, -26, 0,
					-- layer=1 filter=43 channel=21
					51, 38, 34, 75, 8, 46, -4, 34, 38,
					-- layer=1 filter=43 channel=22
					23, 33, 13, 13, 37, -2, 17, 14, -6,
					-- layer=1 filter=43 channel=23
					5, 15, 17, -6, 27, -7, 6, 13, 13,
					-- layer=1 filter=43 channel=24
					-23, -24, -34, 23, -44, 4, -6, 14, -11,
					-- layer=1 filter=43 channel=25
					53, 5, 3, 25, -17, 21, 5, 2, -4,
					-- layer=1 filter=43 channel=26
					-10, -2, 9, -6, 0, 0, 10, 4, 4,
					-- layer=1 filter=43 channel=27
					10, -28, 6, -3, 12, 3, -15, -8, -10,
					-- layer=1 filter=43 channel=28
					-57, -93, -72, -9, -100, -85, -36, -3, -46,
					-- layer=1 filter=43 channel=29
					17, -32, -16, 0, 12, -28, -32, -24, -32,
					-- layer=1 filter=43 channel=30
					-23, -6, -16, -18, -17, -15, 6, 20, 0,
					-- layer=1 filter=43 channel=31
					6, 13, -6, 0, 17, 35, -6, -9, 32,
					-- layer=1 filter=44 channel=0
					-14, 3, 5, -8, 14, -3, 15, 14, -10,
					-- layer=1 filter=44 channel=1
					4, -22, 8, 14, -16, -6, -18, -19, 18,
					-- layer=1 filter=44 channel=2
					-5, 3, -2, 11, 3, 9, -11, 14, -19,
					-- layer=1 filter=44 channel=3
					11, 5, 6, 17, -5, 10, -8, -10, -16,
					-- layer=1 filter=44 channel=4
					12, -4, 12, -3, -18, 11, -2, -21, -16,
					-- layer=1 filter=44 channel=5
					-3, -3, -14, 0, -8, 9, 0, -4, -8,
					-- layer=1 filter=44 channel=6
					-21, 8, -9, -1, -4, -23, -21, 15, 0,
					-- layer=1 filter=44 channel=7
					-16, -13, -5, -23, -12, 16, -2, 6, 0,
					-- layer=1 filter=44 channel=8
					2, 2, -15, -7, -1, -6, 2, 7, -7,
					-- layer=1 filter=44 channel=9
					-9, 4, 0, -11, -11, -23, -7, -11, 10,
					-- layer=1 filter=44 channel=10
					-3, 16, 9, -7, -8, -19, -9, 14, -15,
					-- layer=1 filter=44 channel=11
					11, -17, 1, -11, 8, -2, 1, 15, -21,
					-- layer=1 filter=44 channel=12
					0, -20, 6, -15, 8, 11, -17, 11, -27,
					-- layer=1 filter=44 channel=13
					-21, -22, -19, 6, 11, -24, 0, -17, -2,
					-- layer=1 filter=44 channel=14
					-4, -9, 4, -22, 2, 4, 12, -18, 0,
					-- layer=1 filter=44 channel=15
					-17, 3, -9, 18, -22, -15, 14, -2, 0,
					-- layer=1 filter=44 channel=16
					-1, -21, 8, 13, -10, -16, 12, -8, 12,
					-- layer=1 filter=44 channel=17
					3, -23, 2, -20, -19, -21, 8, -9, 0,
					-- layer=1 filter=44 channel=18
					-16, -15, 14, -17, -20, 0, -4, -3, -5,
					-- layer=1 filter=44 channel=19
					8, 4, -18, 9, 6, -17, -19, 11, -2,
					-- layer=1 filter=44 channel=20
					-7, -2, -22, -5, -18, 12, -7, -11, -16,
					-- layer=1 filter=44 channel=21
					1, -19, -1, -17, -18, -21, -21, -12, -17,
					-- layer=1 filter=44 channel=22
					9, -18, -4, -15, 17, -5, -2, -21, -3,
					-- layer=1 filter=44 channel=23
					-26, -7, -13, 12, -9, -23, 14, -4, 7,
					-- layer=1 filter=44 channel=24
					13, 10, 16, 3, 2, -4, -9, 11, 1,
					-- layer=1 filter=44 channel=25
					0, 0, -8, -21, -13, 16, 2, -21, -8,
					-- layer=1 filter=44 channel=26
					-11, -22, 0, 18, -21, 8, 7, -6, -13,
					-- layer=1 filter=44 channel=27
					-13, 3, -16, -19, -17, 13, -21, -4, 9,
					-- layer=1 filter=44 channel=28
					8, 3, -16, 9, 7, -10, -20, -17, 5,
					-- layer=1 filter=44 channel=29
					-15, 3, 9, -1, -4, -4, 0, 3, -30,
					-- layer=1 filter=44 channel=30
					13, -6, 7, 0, -1, 0, 10, 10, 12,
					-- layer=1 filter=44 channel=31
					9, 6, -3, 16, 10, 0, -2, 1, -1,
					-- layer=1 filter=45 channel=0
					31, 1, -1, -16, -22, -5, -9, -31, -7,
					-- layer=1 filter=45 channel=1
					13, 26, 29, 0, 17, 20, -17, -16, 20,
					-- layer=1 filter=45 channel=2
					33, 12, -73, 14, 7, -29, -2, -15, -24,
					-- layer=1 filter=45 channel=3
					21, 15, -14, 15, -27, -63, -44, -46, -7,
					-- layer=1 filter=45 channel=4
					42, -6, -3, 12, -35, -40, 8, 5, -34,
					-- layer=1 filter=45 channel=5
					-90, -42, 2, -91, -62, -17, -147, -105, -16,
					-- layer=1 filter=45 channel=6
					10, 38, 22, 5, 23, 20, -5, 3, -19,
					-- layer=1 filter=45 channel=7
					8, 14, 9, 9, -7, 37, -12, 2, -9,
					-- layer=1 filter=45 channel=8
					-12, -2, -31, -62, -79, -37, -26, -26, -15,
					-- layer=1 filter=45 channel=9
					-28, -15, -45, -16, 0, -22, 26, 23, 11,
					-- layer=1 filter=45 channel=10
					25, 8, -11, -1, 0, -22, 6, -36, -31,
					-- layer=1 filter=45 channel=11
					15, 38, 2, -19, 50, 10, 16, -17, -13,
					-- layer=1 filter=45 channel=12
					5, 32, 58, 4, 46, 27, 2, 17, 13,
					-- layer=1 filter=45 channel=13
					-5, 10, -7, -13, -14, -7, -4, -24, -13,
					-- layer=1 filter=45 channel=14
					26, 21, 22, 27, 29, 5, 0, -44, 5,
					-- layer=1 filter=45 channel=15
					38, 29, 28, 18, -14, -15, -30, -2, 14,
					-- layer=1 filter=45 channel=16
					36, 5, 16, -76, -67, -2, -78, 27, -23,
					-- layer=1 filter=45 channel=17
					24, 4, -20, -66, -84, -92, -61, -124, -77,
					-- layer=1 filter=45 channel=18
					-18, 23, 5, 16, -9, -1, -15, -4, -9,
					-- layer=1 filter=45 channel=19
					4, -10, -11, 0, 2, -3, 8, -12, 1,
					-- layer=1 filter=45 channel=20
					-62, 6, 19, -25, 0, 39, -104, -48, 23,
					-- layer=1 filter=45 channel=21
					30, 6, -107, -14, -55, -40, -62, -89, -53,
					-- layer=1 filter=45 channel=22
					-42, -36, -14, -37, -24, 9, -20, -75, -65,
					-- layer=1 filter=45 channel=23
					-6, -17, -7, 19, -12, 12, 13, -13, 13,
					-- layer=1 filter=45 channel=24
					18, 1, -24, 0, 19, 6, -2, -37, -39,
					-- layer=1 filter=45 channel=25
					14, 10, -76, -71, -92, -54, -48, 4, 3,
					-- layer=1 filter=45 channel=26
					9, 11, 2, -2, 19, -12, 21, -11, 5,
					-- layer=1 filter=45 channel=27
					23, 41, 15, 35, 31, 14, -30, -22, -29,
					-- layer=1 filter=45 channel=28
					43, 7, -14, 19, 55, 6, 33, -6, -7,
					-- layer=1 filter=45 channel=29
					31, 76, 75, 72, 99, 117, 41, 37, 52,
					-- layer=1 filter=45 channel=30
					-5, 29, -5, -3, -14, -6, -36, -7, -44,
					-- layer=1 filter=45 channel=31
					-1, 10, 26, 1, 8, 8, -15, 1, -27,
					-- layer=1 filter=46 channel=0
					-22, 10, 5, -43, 6, 3, -28, -19, -39,
					-- layer=1 filter=46 channel=1
					15, -25, -38, -8, 3, -4, 27, 18, 7,
					-- layer=1 filter=46 channel=2
					1, 12, 55, 27, 18, 35, -53, -1, 15,
					-- layer=1 filter=46 channel=3
					27, 33, 30, 24, 37, 31, -91, -49, -51,
					-- layer=1 filter=46 channel=4
					47, 47, 27, -9, 23, 24, -58, -26, -37,
					-- layer=1 filter=46 channel=5
					0, -54, -2, -17, -71, -91, 56, 0, -18,
					-- layer=1 filter=46 channel=6
					12, 5, 30, -4, 8, 4, -27, 10, -21,
					-- layer=1 filter=46 channel=7
					21, 47, 50, -29, -24, 18, -86, -63, -38,
					-- layer=1 filter=46 channel=8
					-43, 4, -17, -52, -1, -6, -19, -34, 2,
					-- layer=1 filter=46 channel=9
					-14, 13, 25, -37, -20, 24, -48, -28, -21,
					-- layer=1 filter=46 channel=10
					4, 23, 25, -24, -13, 11, -45, -12, -10,
					-- layer=1 filter=46 channel=11
					6, -19, 7, 6, 9, -16, -20, 15, 48,
					-- layer=1 filter=46 channel=12
					-25, -36, -47, 32, 26, -20, 60, 59, 37,
					-- layer=1 filter=46 channel=13
					-20, -9, -23, 4, 8, 4, 13, -23, -21,
					-- layer=1 filter=46 channel=14
					-6, -30, 11, 7, -11, -35, 0, -12, 13,
					-- layer=1 filter=46 channel=15
					-20, -43, -20, 6, -1, -30, 23, 8, 12,
					-- layer=1 filter=46 channel=16
					-16, -54, -16, -66, -48, -42, 0, 3, 11,
					-- layer=1 filter=46 channel=17
					71, 52, 114, 177, 146, 180, 125, 128, 149,
					-- layer=1 filter=46 channel=18
					-22, 7, 30, -21, 10, 11, -19, 1, -26,
					-- layer=1 filter=46 channel=19
					18, 2, 14, -1, -19, 5, -36, -15, -19,
					-- layer=1 filter=46 channel=20
					-18, -115, -45, -46, -55, -60, 42, -15, -23,
					-- layer=1 filter=46 channel=21
					-2, -25, 28, -20, -18, -4, 44, 19, 38,
					-- layer=1 filter=46 channel=22
					13, 32, 41, -26, 34, 2, -31, -60, -10,
					-- layer=1 filter=46 channel=23
					25, 27, 31, 2, -1, 8, -61, -51, -37,
					-- layer=1 filter=46 channel=24
					2, 5, 0, 19, 26, -12, 3, 24, 14,
					-- layer=1 filter=46 channel=25
					21, -12, 13, -16, 4, -10, -12, 3, 7,
					-- layer=1 filter=46 channel=26
					-6, -4, 1, 3, 11, 12, 19, 0, 2,
					-- layer=1 filter=46 channel=27
					6, 7, 18, -10, -6, 5, -11, -3, 11,
					-- layer=1 filter=46 channel=28
					22, 14, 34, 18, 57, 38, 0, 65, 86,
					-- layer=1 filter=46 channel=29
					30, 12, -1, 1, 25, 39, -4, 20, 16,
					-- layer=1 filter=46 channel=30
					-6, -20, 8, -18, -21, -28, -39, -13, -23,
					-- layer=1 filter=46 channel=31
					-42, -31, -46, -5, 12, -30, 26, 27, 21,
					-- layer=1 filter=47 channel=0
					-79, -69, -79, -73, -117, -51, -44, -33, -59,
					-- layer=1 filter=47 channel=1
					35, -5, 22, 5, 10, 8, -7, 6, 9,
					-- layer=1 filter=47 channel=2
					-27, -15, -16, -4, 13, -2, 18, 12, 29,
					-- layer=1 filter=47 channel=3
					-109, -131, -128, -104, -36, -61, -73, -83, -32,
					-- layer=1 filter=47 channel=4
					-3, -10, -18, 5, -7, -12, 9, 4, -6,
					-- layer=1 filter=47 channel=5
					0, 24, -26, -34, -17, -37, 0, -18, -21,
					-- layer=1 filter=47 channel=6
					40, 14, 31, 11, -9, 1, -10, 12, -29,
					-- layer=1 filter=47 channel=7
					29, 19, 11, 17, 14, -7, 15, 13, 17,
					-- layer=1 filter=47 channel=8
					-61, -18, -6, -26, -35, -6, 2, 8, -33,
					-- layer=1 filter=47 channel=9
					-3, 3, 20, 23, 21, 31, 54, 46, 37,
					-- layer=1 filter=47 channel=10
					13, 16, -25, 13, -19, -16, -8, -16, -51,
					-- layer=1 filter=47 channel=11
					21, -6, -26, -24, -37, -16, -38, -19, 9,
					-- layer=1 filter=47 channel=12
					68, 14, 28, 19, 2, 2, 25, 18, 0,
					-- layer=1 filter=47 channel=13
					20, 22, 14, 17, -3, -2, 14, -43, -48,
					-- layer=1 filter=47 channel=14
					27, -1, 42, -3, 9, -1, 3, -11, -24,
					-- layer=1 filter=47 channel=15
					12, 4, -8, 1, 9, 5, -5, -16, -34,
					-- layer=1 filter=47 channel=16
					-160, -179, -134, -196, -187, -106, -127, -102, -79,
					-- layer=1 filter=47 channel=17
					-59, -56, -55, -123, -143, -111, -74, -109, -116,
					-- layer=1 filter=47 channel=18
					35, -4, -7, -6, -30, -32, -9, 0, -29,
					-- layer=1 filter=47 channel=19
					-5, 7, -17, 2, 11, -37, -13, -14, -30,
					-- layer=1 filter=47 channel=20
					55, 74, 57, 1, 49, 48, 35, 53, 12,
					-- layer=1 filter=47 channel=21
					-75, -57, 71, -70, -93, -31, -72, -69, -69,
					-- layer=1 filter=47 channel=22
					-29, -51, -33, -19, 4, 0, 43, 0, 2,
					-- layer=1 filter=47 channel=23
					-9, 25, -3, 9, 30, 6, 43, 24, 39,
					-- layer=1 filter=47 channel=24
					-8, -9, -13, -48, -63, -38, -66, -54, -37,
					-- layer=1 filter=47 channel=25
					-43, -41, -4, -58, -24, 7, 17, 5, 0,
					-- layer=1 filter=47 channel=26
					-12, 18, -1, 17, 17, -17, -19, 1, 7,
					-- layer=1 filter=47 channel=27
					22, 13, 0, 11, -23, -42, -8, -43, -21,
					-- layer=1 filter=47 channel=28
					-24, -40, -27, -32, -27, -42, -49, -36, -7,
					-- layer=1 filter=47 channel=29
					40, 10, 55, 28, 8, 34, 4, -15, 33,
					-- layer=1 filter=47 channel=30
					12, -2, -20, -5, -23, -4, 10, -34, -37,
					-- layer=1 filter=47 channel=31
					12, 25, -8, 44, 5, -15, 3, 11, -19,
					-- layer=1 filter=48 channel=0
					46, -33, -33, 0, -59, 6, -48, -5, 7,
					-- layer=1 filter=48 channel=1
					17, 26, 5, -4, 13, 0, 1, 6, -21,
					-- layer=1 filter=48 channel=2
					45, -1, -20, 29, -32, -39, -14, -25, 20,
					-- layer=1 filter=48 channel=3
					9, -81, -52, 0, -35, -6, -15, -36, -2,
					-- layer=1 filter=48 channel=4
					57, -21, 0, 22, -14, 14, 24, -7, 19,
					-- layer=1 filter=48 channel=5
					-76, 26, 66, -12, 60, 54, 41, 27, -41,
					-- layer=1 filter=48 channel=6
					16, 7, -23, 19, -15, -30, 6, -35, -23,
					-- layer=1 filter=48 channel=7
					-26, 35, 19, 41, 37, -19, 62, 17, -49,
					-- layer=1 filter=48 channel=8
					19, -28, -39, 4, -53, 5, -16, -49, 0,
					-- layer=1 filter=48 channel=9
					15, 21, -9, 26, 26, -8, 33, 3, -15,
					-- layer=1 filter=48 channel=10
					13, 23, -33, 35, -40, -26, -15, -42, 26,
					-- layer=1 filter=48 channel=11
					-27, 56, 24, 49, 66, -10, 100, 33, -99,
					-- layer=1 filter=48 channel=12
					5, 29, -3, 4, 20, -10, -4, -1, 0,
					-- layer=1 filter=48 channel=13
					17, 23, -33, 24, -27, -21, -34, -26, 36,
					-- layer=1 filter=48 channel=14
					-41, 45, 16, 29, 31, -13, 35, -23, -6,
					-- layer=1 filter=48 channel=15
					20, 10, 24, -27, -39, 24, -32, -11, 38,
					-- layer=1 filter=48 channel=16
					49, 0, 13, 92, 63, 97, -12, 72, 18,
					-- layer=1 filter=48 channel=17
					56, 67, 24, 12, 104, 120, 70, 107, -67,
					-- layer=1 filter=48 channel=18
					12, 3, -8, -14, 13, -33, -26, -9, -29,
					-- layer=1 filter=48 channel=19
					1, 20, 0, 0, -13, -1, -26, -9, 14,
					-- layer=1 filter=48 channel=20
					-164, 14, 51, -28, 53, 2, -10, 18, -75,
					-- layer=1 filter=48 channel=21
					78, -24, 20, 62, -48, 112, -15, 130, 147,
					-- layer=1 filter=48 channel=22
					31, -88, -18, -16, -60, 5, -33, -12, 3,
					-- layer=1 filter=48 channel=23
					-40, 41, 35, -1, 24, -29, 49, 16, -56,
					-- layer=1 filter=48 channel=24
					-10, -8, -23, -2, -30, -22, -40, -31, -41,
					-- layer=1 filter=48 channel=25
					80, -52, 0, -15, 9, 107, -13, 68, 81,
					-- layer=1 filter=48 channel=26
					-12, 13, -15, 22, -1, 6, 2, 13, -16,
					-- layer=1 filter=48 channel=27
					2, 13, -4, 17, 2, -45, -34, -45, 19,
					-- layer=1 filter=48 channel=28
					-15, -33, -26, -53, -49, -71, -21, -90, -98,
					-- layer=1 filter=48 channel=29
					-12, 82, 57, 7, 34, 19, 67, 34, -77,
					-- layer=1 filter=48 channel=30
					47, 9, -28, 20, -13, 3, -8, -4, -4,
					-- layer=1 filter=48 channel=31
					31, 42, -1, 53, 3, -31, 20, -27, 46,
					-- layer=1 filter=49 channel=0
					-101, -66, 51, -36, -6, 25, 31, 55, -35,
					-- layer=1 filter=49 channel=1
					51, 17, 1, 6, -62, 65, -15, 27, 104,
					-- layer=1 filter=49 channel=2
					-17, -31, 6, -22, 0, -3, -17, 13, -15,
					-- layer=1 filter=49 channel=3
					-66, 8, 104, -75, 63, -13, 56, 50, -58,
					-- layer=1 filter=49 channel=4
					-35, -16, 50, -12, 37, 2, 27, 19, -19,
					-- layer=1 filter=49 channel=5
					-9, 14, -141, -70, -182, -124, -131, -178, -39,
					-- layer=1 filter=49 channel=6
					25, -48, -11, -28, -5, 38, -12, 25, 20,
					-- layer=1 filter=49 channel=7
					64, 23, -43, 4, -29, -13, -32, -33, 44,
					-- layer=1 filter=49 channel=8
					-78, -54, 32, -81, -27, 19, 1, -17, -45,
					-- layer=1 filter=49 channel=9
					26, 6, -29, 50, -9, -14, -20, -17, -26,
					-- layer=1 filter=49 channel=10
					30, -21, 7, -72, -16, 18, -27, 16, -13,
					-- layer=1 filter=49 channel=11
					61, 78, 16, 168, -46, 40, 21, 52, 38,
					-- layer=1 filter=49 channel=12
					-35, -95, -24, -116, -57, 80, -78, 24, 75,
					-- layer=1 filter=49 channel=13
					-42, -45, 26, -45, 26, 52, 35, 20, -6,
					-- layer=1 filter=49 channel=14
					69, 37, -10, 70, -19, 47, -33, 39, 58,
					-- layer=1 filter=49 channel=15
					-94, -53, 35, -100, -1, 19, 25, 10, 47,
					-- layer=1 filter=49 channel=16
					-72, 115, 108, 84, 102, 95, 92, 28, -146,
					-- layer=1 filter=49 channel=17
					-37, 36, 29, 86, 62, -56, -18, -104, -117,
					-- layer=1 filter=49 channel=18
					57, -36, -19, -54, -46, 42, -45, -1, 32,
					-- layer=1 filter=49 channel=19
					19, -18, 5, -26, 14, 1, 28, 41, -8,
					-- layer=1 filter=49 channel=20
					56, 45, -96, -8, -174, -32, -93, -94, -20,
					-- layer=1 filter=49 channel=21
					-112, -6, 110, 15, 75, 86, 85, 54, -84,
					-- layer=1 filter=49 channel=22
					-27, 43, 37, 25, 40, 22, 1, 12, -8,
					-- layer=1 filter=49 channel=23
					30, 32, -38, 19, -36, -41, -30, -48, -7,
					-- layer=1 filter=49 channel=24
					-18, -85, -63, -48, -140, -23, -122, -38, 7,
					-- layer=1 filter=49 channel=25
					-76, 51, 105, 65, 89, 18, 61, -13, -155,
					-- layer=1 filter=49 channel=26
					18, 23, 14, 2, -12, 13, -13, 2, 3,
					-- layer=1 filter=49 channel=27
					56, -79, -12, -73, -68, 56, -57, 30, 33,
					-- layer=1 filter=49 channel=28
					-27, -100, -58, -41, -147, -69, -174, -95, -39,
					-- layer=1 filter=49 channel=29
					13, 15, -69, 15, -32, 56, -54, -27, 70,
					-- layer=1 filter=49 channel=30
					-83, -5, 54, -9, 26, 47, 21, 6, -63,
					-- layer=1 filter=49 channel=31
					-15, -55, 21, -112, 14, 123, -50, 71, 127,
					-- layer=1 filter=50 channel=0
					12, -7, 5, -19, 1, -2, -4, 10, 9,
					-- layer=1 filter=50 channel=1
					-22, -4, 12, 8, -19, 6, 8, 4, 4,
					-- layer=1 filter=50 channel=2
					-20, -15, -2, 1, -19, 5, -4, 13, 9,
					-- layer=1 filter=50 channel=3
					-23, -13, -1, 7, -16, -13, 6, 9, -26,
					-- layer=1 filter=50 channel=4
					-20, -11, -23, -5, -15, -19, -16, -6, 4,
					-- layer=1 filter=50 channel=5
					7, -19, -17, -17, -20, -22, -1, -13, -19,
					-- layer=1 filter=50 channel=6
					8, -23, 6, -14, 6, -15, -26, -1, -16,
					-- layer=1 filter=50 channel=7
					-15, -15, -15, 11, 17, -3, 13, -23, -5,
					-- layer=1 filter=50 channel=8
					-14, -1, -4, 9, 8, 0, -15, 0, -26,
					-- layer=1 filter=50 channel=9
					13, 1, 14, 2, 0, -13, -12, -5, -5,
					-- layer=1 filter=50 channel=10
					16, -4, 5, -4, 1, -13, 0, 11, -11,
					-- layer=1 filter=50 channel=11
					-8, 2, 5, -3, 17, -12, 19, -16, 6,
					-- layer=1 filter=50 channel=12
					-7, 13, -17, -12, -8, 6, 6, -12, -14,
					-- layer=1 filter=50 channel=13
					-25, -20, -6, -11, -22, -6, 10, -10, -20,
					-- layer=1 filter=50 channel=14
					-14, -2, 0, 11, -15, -13, -15, 8, -22,
					-- layer=1 filter=50 channel=15
					0, 8, -5, -4, 10, -6, -8, 13, 4,
					-- layer=1 filter=50 channel=16
					18, 8, 18, 20, 13, 9, 1, -1, 7,
					-- layer=1 filter=50 channel=17
					-15, 9, 0, 6, -21, 5, 2, 8, -25,
					-- layer=1 filter=50 channel=18
					-5, 2, 2, 7, 0, -9, -18, 11, 6,
					-- layer=1 filter=50 channel=19
					-16, -24, 13, -15, 0, -21, -14, -6, 5,
					-- layer=1 filter=50 channel=20
					2, -16, -6, 11, -10, 2, -11, 0, -17,
					-- layer=1 filter=50 channel=21
					14, 12, 17, 5, -16, 0, 9, -6, -13,
					-- layer=1 filter=50 channel=22
					17, -10, 16, -15, 7, 17, 4, -5, 0,
					-- layer=1 filter=50 channel=23
					15, -25, 7, -1, 1, -12, -1, -15, -6,
					-- layer=1 filter=50 channel=24
					-16, -16, -4, -4, -3, -7, -3, 0, 7,
					-- layer=1 filter=50 channel=25
					9, -17, -7, -9, -4, -6, -24, 5, 2,
					-- layer=1 filter=50 channel=26
					8, 18, -11, -1, -6, 6, 11, 15, -12,
					-- layer=1 filter=50 channel=27
					-23, 8, 15, 4, -18, -22, 5, -21, -22,
					-- layer=1 filter=50 channel=28
					8, -7, -4, 10, -21, 12, 12, -15, -6,
					-- layer=1 filter=50 channel=29
					-21, -7, -5, -14, 0, 2, 0, -26, 9,
					-- layer=1 filter=50 channel=30
					2, 1, -5, -5, -19, 2, -20, -9, -18,
					-- layer=1 filter=50 channel=31
					12, 10, 0, 10, 0, -1, 0, -2, -11,
					-- layer=1 filter=51 channel=0
					-34, -41, -37, -41, -47, -87, 62, -39, -86,
					-- layer=1 filter=51 channel=1
					-16, 0, 43, -16, -66, -6, -11, -54, -41,
					-- layer=1 filter=51 channel=2
					-9, 22, 29, -22, -17, -6, -42, -34, -52,
					-- layer=1 filter=51 channel=3
					-61, -68, -28, -38, -57, -61, -6, -35, -116,
					-- layer=1 filter=51 channel=4
					-44, -32, -61, -37, -32, -71, -8, -35, -62,
					-- layer=1 filter=51 channel=5
					10, -62, -48, 38, -74, -41, 73, -27, -29,
					-- layer=1 filter=51 channel=6
					-40, -14, 21, -33, -22, -59, -27, -69, -70,
					-- layer=1 filter=51 channel=7
					-47, -39, -26, 17, -29, -3, 37, -19, -48,
					-- layer=1 filter=51 channel=8
					36, 36, 40, 23, 19, 20, 66, 17, 32,
					-- layer=1 filter=51 channel=9
					26, 49, 34, 9, 17, 18, 27, 49, 34,
					-- layer=1 filter=51 channel=10
					-26, -8, 31, -55, -70, -62, -26, -87, -114,
					-- layer=1 filter=51 channel=11
					-5, 43, 82, -36, -4, 76, -102, -60, -49,
					-- layer=1 filter=51 channel=12
					29, 45, 44, 37, 17, 7, -9, -10, 25,
					-- layer=1 filter=51 channel=13
					-15, -9, -12, -53, -46, -34, -1, -65, -78,
					-- layer=1 filter=51 channel=14
					-21, -15, -35, 30, -61, -48, 9, -74, -63,
					-- layer=1 filter=51 channel=15
					17, -11, 6, 14, -52, -65, 3, -75, -61,
					-- layer=1 filter=51 channel=16
					-13, -56, -26, -75, -66, -96, -37, -16, -63,
					-- layer=1 filter=51 channel=17
					-9, 1, -2, -67, -10, 36, -46, -59, -53,
					-- layer=1 filter=51 channel=18
					-41, 17, 62, -10, -25, -7, 5, -13, -17,
					-- layer=1 filter=51 channel=19
					-11, 9, 25, -12, 4, -24, -28, -27, -46,
					-- layer=1 filter=51 channel=20
					47, 13, 7, 81, -13, -19, 101, 48, 48,
					-- layer=1 filter=51 channel=21
					23, 63, 48, -26, -20, 29, -82, -45, -49,
					-- layer=1 filter=51 channel=22
					19, 10, 34, 57, 69, 45, 47, 41, 56,
					-- layer=1 filter=51 channel=23
					-11, -36, 9, 13, 8, -2, 45, 10, 22,
					-- layer=1 filter=51 channel=24
					-52, 37, 117, -65, -29, 19, -83, -73, -123,
					-- layer=1 filter=51 channel=25
					62, 21, 25, 27, 18, 14, -8, -3, -18,
					-- layer=1 filter=51 channel=26
					-12, -14, 15, -17, -22, -18, -6, -5, 0,
					-- layer=1 filter=51 channel=27
					1, -5, 42, 13, -55, -53, -24, -30, -21,
					-- layer=1 filter=51 channel=28
					-40, 64, 120, -63, -15, 33, -98, -62, -88,
					-- layer=1 filter=51 channel=29
					22, 21, 20, 26, -6, 45, 29, -1, 47,
					-- layer=1 filter=51 channel=30
					-14, -11, -7, -29, -34, -67, 5, -41, -66,
					-- layer=1 filter=51 channel=31
					4, 16, 25, -20, -77, -12, -40, -77, -59,
					-- layer=1 filter=52 channel=0
					-3, 18, 16, 0, -2, 5, -52, -29, 2,
					-- layer=1 filter=52 channel=1
					20, -5, 37, -28, 3, 22, -38, -33, -18,
					-- layer=1 filter=52 channel=2
					35, 4, 44, 14, 47, 35, 14, 49, 12,
					-- layer=1 filter=52 channel=3
					-30, 22, -27, -24, 28, -2, -10, -21, -7,
					-- layer=1 filter=52 channel=4
					42, 36, 31, 5, 26, 26, 13, 48, 8,
					-- layer=1 filter=52 channel=5
					-64, -78, -1, -85, -65, -34, -64, -82, 5,
					-- layer=1 filter=52 channel=6
					4, -11, 16, -1, -10, 16, -10, 16, 1,
					-- layer=1 filter=52 channel=7
					8, 34, 14, 7, 12, 40, 17, 41, -1,
					-- layer=1 filter=52 channel=8
					-45, -12, -19, -16, -22, -10, -27, -53, -5,
					-- layer=1 filter=52 channel=9
					-20, 0, 7, -3, -15, -18, 2, 19, -17,
					-- layer=1 filter=52 channel=10
					-5, -6, 6, -8, -7, 6, -5, -18, 11,
					-- layer=1 filter=52 channel=11
					-52, -41, -106, -93, -88, -54, -75, -35, -71,
					-- layer=1 filter=52 channel=12
					-25, -25, 25, -37, -35, 6, -18, -29, 16,
					-- layer=1 filter=52 channel=13
					-16, 13, 19, -19, -30, -2, -12, -19, 4,
					-- layer=1 filter=52 channel=14
					25, 15, 0, -4, -16, 14, -12, 1, 0,
					-- layer=1 filter=52 channel=15
					-1, -17, 44, -14, -28, 18, -44, -41, 16,
					-- layer=1 filter=52 channel=16
					5, 22, 42, -32, 38, -20, -39, 44, -40,
					-- layer=1 filter=52 channel=17
					-154, -205, -155, -119, -168, -173, -85, -149, -63,
					-- layer=1 filter=52 channel=18
					9, 16, 25, 2, 10, 24, -30, -17, -13,
					-- layer=1 filter=52 channel=19
					-38, -24, -29, -39, -15, -2, -40, 5, -4,
					-- layer=1 filter=52 channel=20
					-15, -74, 9, -44, -90, 0, -105, -80, -11,
					-- layer=1 filter=52 channel=21
					-43, -7, 42, -21, 37, 49, -89, 34, 16,
					-- layer=1 filter=52 channel=22
					44, 6, 0, 27, -35, -72, -98, -124, -79,
					-- layer=1 filter=52 channel=23
					5, 34, 15, -1, -6, 6, 1, 11, 20,
					-- layer=1 filter=52 channel=24
					-2, -11, -7, -23, 5, 17, -28, 4, 7,
					-- layer=1 filter=52 channel=25
					-32, 3, 22, -3, 21, -23, -65, 25, 23,
					-- layer=1 filter=52 channel=26
					-16, 19, 15, -1, 9, -6, -5, 0, 18,
					-- layer=1 filter=52 channel=27
					31, 16, 27, -25, 12, 6, -35, 10, 0,
					-- layer=1 filter=52 channel=28
					28, -14, -25, -1, 0, 19, -7, 22, 8,
					-- layer=1 filter=52 channel=29
					-68, -19, -64, -95, -62, -42, -40, -40, 5,
					-- layer=1 filter=52 channel=30
					-14, -11, 37, -6, -24, 13, -22, -11, -5,
					-- layer=1 filter=52 channel=31
					22, -5, 35, -14, -15, 20, -34, -40, -3,
					-- layer=1 filter=53 channel=0
					-19, -9, -39, -9, -21, -11, 53, 45, 22,
					-- layer=1 filter=53 channel=1
					20, 10, 18, -23, -15, 15, -88, -63, -24,
					-- layer=1 filter=53 channel=2
					41, -38, -29, 7, -28, -51, -3, -58, -41,
					-- layer=1 filter=53 channel=3
					-44, -102, -84, -35, -66, -126, 18, -8, 47,
					-- layer=1 filter=53 channel=4
					5, -58, -76, -2, -23, -60, 43, 6, -23,
					-- layer=1 filter=53 channel=5
					-21, 13, 73, -136, 1, 44, -99, -21, 48,
					-- layer=1 filter=53 channel=6
					34, 25, 3, 10, 9, -7, 16, 6, -11,
					-- layer=1 filter=53 channel=7
					-3, 1, -6, -57, 20, -6, -38, 0, 12,
					-- layer=1 filter=53 channel=8
					-14, 27, -19, -22, 26, -6, 59, 67, 39,
					-- layer=1 filter=53 channel=9
					32, 37, -7, 35, 48, 24, 5, 34, 41,
					-- layer=1 filter=53 channel=10
					24, 26, 0, -2, 12, -33, 22, 15, -16,
					-- layer=1 filter=53 channel=11
					62, 60, 33, 39, 48, 23, -87, -76, -71,
					-- layer=1 filter=53 channel=12
					-27, 21, -7, -38, 2, -10, -65, -44, -63,
					-- layer=1 filter=53 channel=13
					-10, 33, 10, 4, 9, 2, 22, 2, -2,
					-- layer=1 filter=53 channel=14
					13, 42, 28, -49, 7, 4, -34, -11, -7,
					-- layer=1 filter=53 channel=15
					-22, -27, -16, -50, -22, -50, -53, -46, -24,
					-- layer=1 filter=53 channel=16
					44, 48, 40, 20, -69, -46, 7, 16, 41,
					-- layer=1 filter=53 channel=17
					-41, -76, -83, -50, -45, -29, -28, -92, -98,
					-- layer=1 filter=53 channel=18
					23, 19, -7, -23, 1, -1, -9, -3, -26,
					-- layer=1 filter=53 channel=19
					4, 16, -11, -6, 9, 1, 24, 31, 18,
					-- layer=1 filter=53 channel=20
					-27, 23, 80, -184, 2, 59, -168, -20, 11,
					-- layer=1 filter=53 channel=21
					44, -70, 26, 6, -136, -15, -25, -175, -46,
					-- layer=1 filter=53 channel=22
					-93, -97, 26, -42, -43, 12, -72, -39, 30,
					-- layer=1 filter=53 channel=23
					-28, -10, 19, -56, 19, -13, -6, 12, 10,
					-- layer=1 filter=53 channel=24
					40, 46, 19, 18, 17, 2, -51, -38, -41,
					-- layer=1 filter=53 channel=25
					-12, -28, 6, -7, -39, 0, 26, 2, 37,
					-- layer=1 filter=53 channel=26
					13, 17, -7, 7, -8, -6, 0, 20, -4,
					-- layer=1 filter=53 channel=27
					5, 51, 0, 12, 15, -3, -6, -1, -31,
					-- layer=1 filter=53 channel=28
					44, 15, 0, 75, 11, 7, -95, -147, -105,
					-- layer=1 filter=53 channel=29
					-27, 27, -4, 3, 21, 6, -133, -96, -27,
					-- layer=1 filter=53 channel=30
					13, -9, -42, 4, -24, -32, 17, -16, -32,
					-- layer=1 filter=53 channel=31
					9, 42, -11, -3, -1, -4, -69, -39, -33,
					-- layer=1 filter=54 channel=0
					-92, -26, -56, -29, -72, -52, -15, -63, -61,
					-- layer=1 filter=54 channel=1
					-22, 9, 15, 33, 5, 38, -14, 29, -13,
					-- layer=1 filter=54 channel=2
					10, -63, -37, -7, -39, -24, -21, -55, -22,
					-- layer=1 filter=54 channel=3
					-7, 13, -25, -68, -38, -57, -55, -88, -89,
					-- layer=1 filter=54 channel=4
					-3, -7, -16, -34, -35, -27, -59, -47, -86,
					-- layer=1 filter=54 channel=5
					-113, -14, -77, -79, -43, 34, -43, -2, 18,
					-- layer=1 filter=54 channel=6
					-84, -58, -71, -79, -30, -32, -85, -39, -79,
					-- layer=1 filter=54 channel=7
					-40, 13, -4, -45, -29, 7, -79, -50, -39,
					-- layer=1 filter=54 channel=8
					8, 42, 26, 21, 5, 23, -6, 21, -7,
					-- layer=1 filter=54 channel=9
					10, -5, 1, -4, 17, -20, -26, -6, -3,
					-- layer=1 filter=54 channel=10
					-35, 4, -64, -16, 4, -57, -19, -42, -52,
					-- layer=1 filter=54 channel=11
					-101, -96, -52, -102, -72, -40, -74, -33, 2,
					-- layer=1 filter=54 channel=12
					14, 10, 5, 2, 11, 26, 17, 1, -8,
					-- layer=1 filter=54 channel=13
					-79, -75, -66, -45, -70, -8, -47, -79, -51,
					-- layer=1 filter=54 channel=14
					-48, -10, -48, -52, -34, 27, -26, -10, 30,
					-- layer=1 filter=54 channel=15
					-13, 14, -1, -16, 0, 6, -22, -15, -49,
					-- layer=1 filter=54 channel=16
					111, 4, 89, 23, 60, 65, 26, -6, 60,
					-- layer=1 filter=54 channel=17
					24, -83, -42, -51, -71, -23, 14, -58, 12,
					-- layer=1 filter=54 channel=18
					0, 6, 5, -20, 14, 11, -16, 22, 26,
					-- layer=1 filter=54 channel=19
					-61, -34, -70, -59, -64, -55, -89, -34, -57,
					-- layer=1 filter=54 channel=20
					-17, 6, 9, 15, 37, 87, 7, 52, 126,
					-- layer=1 filter=54 channel=21
					56, -42, 23, 57, -20, -4, 13, -13, 29,
					-- layer=1 filter=54 channel=22
					100, 127, 117, 118, 89, 116, 90, 105, 124,
					-- layer=1 filter=54 channel=23
					-16, 8, 5, -29, 10, 42, -25, -8, 2,
					-- layer=1 filter=54 channel=24
					-28, -94, -14, 30, 10, 30, 21, -11, 39,
					-- layer=1 filter=54 channel=25
					74, 13, 18, 51, 22, 37, 0, 26, 40,
					-- layer=1 filter=54 channel=26
					22, -8, -19, 9, -25, -22, 12, -23, -14,
					-- layer=1 filter=54 channel=27
					25, 25, 15, 2, 8, 7, -2, 17, -48,
					-- layer=1 filter=54 channel=28
					-42, -99, -37, -3, -23, -29, -21, -14, 12,
					-- layer=1 filter=54 channel=29
					21, 39, 34, 39, 48, 67, 54, 52, 69,
					-- layer=1 filter=54 channel=30
					-16, -4, -15, -1, 13, -24, 11, -5, 0,
					-- layer=1 filter=54 channel=31
					-69, -22, -20, -16, 14, 18, -17, -4, -10,
					-- layer=1 filter=55 channel=0
					-25, -7, 5, -11, 17, 21, 43, 22, 32,
					-- layer=1 filter=55 channel=1
					-15, -7, -10, -1, -11, 8, 5, 6, -6,
					-- layer=1 filter=55 channel=2
					-56, 17, 25, -18, -15, -16, -80, -61, -23,
					-- layer=1 filter=55 channel=3
					16, 15, 16, 13, 63, 45, 43, 9, 37,
					-- layer=1 filter=55 channel=4
					-1, -13, 7, -55, -24, -16, -20, -43, -28,
					-- layer=1 filter=55 channel=5
					-46, -92, -22, -28, -53, 5, -53, 11, -3,
					-- layer=1 filter=55 channel=6
					5, -14, 24, -2, 4, 21, 16, -1, -13,
					-- layer=1 filter=55 channel=7
					-6, -15, 18, -50, -20, -34, -72, -43, -38,
					-- layer=1 filter=55 channel=8
					-14, -26, -16, -4, 20, 9, 20, 22, -18,
					-- layer=1 filter=55 channel=9
					-18, -41, -5, -45, -33, -40, -42, -31, -27,
					-- layer=1 filter=55 channel=10
					5, 17, 7, -29, 10, 26, 1, 11, 18,
					-- layer=1 filter=55 channel=11
					-14, -2, -2, 33, 22, -13, -35, -6, 39,
					-- layer=1 filter=55 channel=12
					11, -19, -4, 4, 10, 6, 61, 51, 50,
					-- layer=1 filter=55 channel=13
					0, -27, -3, -7, -5, -17, 34, 8, -8,
					-- layer=1 filter=55 channel=14
					-1, -23, -14, 15, -21, 2, -34, 12, -11,
					-- layer=1 filter=55 channel=15
					17, -33, 5, -13, -14, 8, 40, 18, 0,
					-- layer=1 filter=55 channel=16
					32, 59, 5, 47, 31, -5, -36, -3, 1,
					-- layer=1 filter=55 channel=17
					77, 28, 81, 49, 66, 67, 35, 80, 50,
					-- layer=1 filter=55 channel=18
					12, -8, 6, -4, -12, 10, -7, -12, 21,
					-- layer=1 filter=55 channel=19
					7, -31, -29, -29, -32, -31, 7, 10, -11,
					-- layer=1 filter=55 channel=20
					-17, -83, -6, 19, -45, 2, -33, 24, 22,
					-- layer=1 filter=55 channel=21
					-52, 57, 32, -35, 32, -18, -41, -6, 32,
					-- layer=1 filter=55 channel=22
					34, 62, 49, 3, -16, 25, -63, -80, -8,
					-- layer=1 filter=55 channel=23
					-35, 3, 2, -27, -24, -6, -43, -23, -36,
					-- layer=1 filter=55 channel=24
					-6, 12, 28, 13, 5, -13, -17, -5, 29,
					-- layer=1 filter=55 channel=25
					-26, 21, 8, -8, -9, 11, -36, -16, -13,
					-- layer=1 filter=55 channel=26
					-16, -31, -5, 0, 15, -16, -6, -27, -3,
					-- layer=1 filter=55 channel=27
					0, -4, 11, -14, 18, 11, -7, -22, 21,
					-- layer=1 filter=55 channel=28
					8, 22, 17, 42, 34, -2, 2, -6, 72,
					-- layer=1 filter=55 channel=29
					-11, -7, -20, -17, -5, 2, -29, -14, 17,
					-- layer=1 filter=55 channel=30
					-30, -4, -1, -29, -3, 15, 26, -11, -11,
					-- layer=1 filter=55 channel=31
					-19, -4, -3, 6, 2, -4, 1, -10, 28,
					-- layer=1 filter=56 channel=0
					8, 5, -6, 3, -12, 28, 7, -12, 15,
					-- layer=1 filter=56 channel=1
					-69, -66, -47, -28, -47, -43, 56, 13, 58,
					-- layer=1 filter=56 channel=2
					32, 12, 27, 8, 34, 27, 17, 1, 0,
					-- layer=1 filter=56 channel=3
					14, 4, -9, 7, -5, -27, -11, -7, -21,
					-- layer=1 filter=56 channel=4
					22, 44, 15, 57, 70, 27, 21, 28, -17,
					-- layer=1 filter=56 channel=5
					-81, -55, -74, -55, -100, 1, -34, -83, 3,
					-- layer=1 filter=56 channel=6
					0, 10, -16, -12, -7, -18, 4, -2, 11,
					-- layer=1 filter=56 channel=7
					-9, 19, 33, 41, 25, 16, -10, 12, 5,
					-- layer=1 filter=56 channel=8
					-5, -29, -28, -17, -9, -3, -9, -1, 21,
					-- layer=1 filter=56 channel=9
					-25, 11, 5, -27, 13, -7, 6, -13, -1,
					-- layer=1 filter=56 channel=10
					4, -16, -15, -7, -16, -25, -16, -12, -12,
					-- layer=1 filter=56 channel=11
					-84, -41, -2, -17, -26, 0, -41, -45, -40,
					-- layer=1 filter=56 channel=12
					-7, -24, -30, -12, -19, -18, 71, 63, 87,
					-- layer=1 filter=56 channel=13
					-17, -43, -22, -29, -62, -36, 8, 10, 22,
					-- layer=1 filter=56 channel=14
					-20, 7, -20, 17, -42, -15, 42, 20, 19,
					-- layer=1 filter=56 channel=15
					61, -21, 19, 36, 4, 35, 95, 71, 115,
					-- layer=1 filter=56 channel=16
					-15, 12, -4, 4, -3, 4, -10, -41, -51,
					-- layer=1 filter=56 channel=17
					-7, -9, 66, -7, 79, 99, 100, 146, 99,
					-- layer=1 filter=56 channel=18
					-7, -9, -22, -8, -29, -35, 23, -16, 13,
					-- layer=1 filter=56 channel=19
					-14, -8, -6, -6, -13, 9, 19, 5, 34,
					-- layer=1 filter=56 channel=20
					-54, -67, -22, -73, -139, -34, -23, -24, 39,
					-- layer=1 filter=56 channel=21
					-43, -4, -5, -48, 4, 17, -6, 44, -12,
					-- layer=1 filter=56 channel=22
					64, 8, 6, 45, 34, -2, 39, 29, -12,
					-- layer=1 filter=56 channel=23
					-2, 21, -2, 51, 43, 35, 49, 4, -5,
					-- layer=1 filter=56 channel=24
					-18, -31, -6, -46, -39, -47, -35, -38, -23,
					-- layer=1 filter=56 channel=25
					-26, -31, -11, 6, 28, 9, 1, 25, -2,
					-- layer=1 filter=56 channel=26
					1, 18, -10, -21, 3, -3, 0, 0, -23,
					-- layer=1 filter=56 channel=27
					-4, 14, 7, 9, -3, -16, -18, -25, -19,
					-- layer=1 filter=56 channel=28
					25, 43, 32, 39, 46, 28, -35, -50, -57,
					-- layer=1 filter=56 channel=29
					88, 130, 139, 112, 124, 145, 57, 65, 68,
					-- layer=1 filter=56 channel=30
					22, -7, -13, 30, -19, -12, 0, 18, -10,
					-- layer=1 filter=56 channel=31
					-32, -55, -52, -8, -48, -60, 52, 44, 97,
					-- layer=1 filter=57 channel=0
					33, 25, 2, 13, 12, 7, 9, 1, 37,
					-- layer=1 filter=57 channel=1
					-34, -6, -3, -18, -50, -31, -43, -17, -24,
					-- layer=1 filter=57 channel=2
					-9, -19, -14, -20, 4, -17, 11, 4, 7,
					-- layer=1 filter=57 channel=3
					8, -16, -11, 11, -12, -24, 17, 6, 11,
					-- layer=1 filter=57 channel=4
					14, 3, -15, 17, 11, -26, -1, 18, -21,
					-- layer=1 filter=57 channel=5
					-43, -129, -42, -41, -78, -18, -13, -64, -6,
					-- layer=1 filter=57 channel=6
					10, -9, -2, -22, -4, 8, 23, -14, 12,
					-- layer=1 filter=57 channel=7
					-6, 18, -26, 7, 8, 15, 1, -3, 10,
					-- layer=1 filter=57 channel=8
					27, 40, 23, 20, 39, 5, 44, 39, 41,
					-- layer=1 filter=57 channel=9
					34, 44, 18, 8, 47, 45, 2, 14, 11,
					-- layer=1 filter=57 channel=10
					-4, 18, -16, 2, -11, -11, -2, -13, 11,
					-- layer=1 filter=57 channel=11
					30, 1, 45, 29, 88, 40, 27, 64, 75,
					-- layer=1 filter=57 channel=12
					-37, -18, -18, -47, -62, -26, -62, -85, -54,
					-- layer=1 filter=57 channel=13
					-1, 29, 19, 19, 0, 18, 0, 10, 11,
					-- layer=1 filter=57 channel=14
					3, -14, 7, -24, -15, -23, -9, 16, 19,
					-- layer=1 filter=57 channel=15
					15, -17, 6, 8, -17, 7, -13, -26, -15,
					-- layer=1 filter=57 channel=16
					0, -42, -20, -50, -13, -28, 32, 30, 66,
					-- layer=1 filter=57 channel=17
					59, 3, 57, 73, 82, 111, 102, 52, 101,
					-- layer=1 filter=57 channel=18
					13, -3, -21, -6, 5, -4, 20, 18, 21,
					-- layer=1 filter=57 channel=19
					-14, 5, -15, 12, 17, -27, -16, 3, -22,
					-- layer=1 filter=57 channel=20
					-70, -132, -40, -127, -128, -36, -101, -125, -39,
					-- layer=1 filter=57 channel=21
					-128, -166, -83, -145, -164, -107, -101, -131, -50,
					-- layer=1 filter=57 channel=22
					-8, 13, -4, 26, -6, 1, 40, 65, 68,
					-- layer=1 filter=57 channel=23
					12, 26, 17, 12, 3, 0, 21, 26, 29,
					-- layer=1 filter=57 channel=24
					-18, -24, -1, -14, -6, -19, 22, -19, -10,
					-- layer=1 filter=57 channel=25
					6, 11, 8, 14, 19, 40, -7, 26, 10,
					-- layer=1 filter=57 channel=26
					-14, -2, -10, 1, -22, 13, -16, 4, 10,
					-- layer=1 filter=57 channel=27
					-6, 3, 3, -20, -23, -27, -2, -11, 5,
					-- layer=1 filter=57 channel=28
					-20, -5, 30, 24, 27, -25, 41, 19, -1,
					-- layer=1 filter=57 channel=29
					-31, 0, 22, -10, -2, 7, -42, -36, -16,
					-- layer=1 filter=57 channel=30
					9, 15, -14, 11, 26, 29, 40, 42, -2,
					-- layer=1 filter=57 channel=31
					-30, -3, 2, -47, -13, -23, -28, -10, 26,
					-- layer=1 filter=58 channel=0
					19, -2, -39, -57, 19, 37, -67, -65, 29,
					-- layer=1 filter=58 channel=1
					-6, -61, 15, 27, -44, -24, 14, 29, 8,
					-- layer=1 filter=58 channel=2
					-57, 0, 9, 51, -56, -9, 40, 44, -47,
					-- layer=1 filter=58 channel=3
					77, 16, -18, 20, 99, 61, -68, 58, 112,
					-- layer=1 filter=58 channel=4
					39, -12, -1, -4, 27, -3, -42, -7, 36,
					-- layer=1 filter=58 channel=5
					185, 94, 2, -4, 103, 86, -52, -21, 59,
					-- layer=1 filter=58 channel=6
					-9, -36, -24, 22, 23, -37, 1, 22, 32,
					-- layer=1 filter=58 channel=7
					63, -22, -59, 11, 47, -11, -43, -8, 42,
					-- layer=1 filter=58 channel=8
					69, 49, -12, -42, 69, 68, -72, -20, 60,
					-- layer=1 filter=58 channel=9
					-12, -34, -26, -11, -28, -11, -25, 11, 10,
					-- layer=1 filter=58 channel=10
					9, -59, -13, 0, 22, -12, -33, 30, 17,
					-- layer=1 filter=58 channel=11
					-110, -37, 63, -7, -112, 7, -20, -15, -115,
					-- layer=1 filter=58 channel=12
					13, 12, 5, 11, 10, -12, 47, 49, 39,
					-- layer=1 filter=58 channel=13
					-2, 5, -9, -15, -1, -15, -13, -6, 55,
					-- layer=1 filter=58 channel=14
					3, -33, -21, -12, 2, -5, -48, -33, -23,
					-- layer=1 filter=58 channel=15
					-5, 8, -16, -10, 39, -5, 1, 20, 50,
					-- layer=1 filter=58 channel=16
					-92, -96, -41, -84, -133, -94, -87, -111, -113,
					-- layer=1 filter=58 channel=17
					38, 126, 75, -48, 14, 140, 58, -24, -38,
					-- layer=1 filter=58 channel=18
					-3, -7, 12, 19, -26, -6, -6, 8, -19,
					-- layer=1 filter=58 channel=19
					-13, -19, -23, 6, -8, -6, 11, -8, 40,
					-- layer=1 filter=58 channel=20
					108, -7, -45, 3, 20, 15, -71, -63, -3,
					-- layer=1 filter=58 channel=21
					-119, 22, 20, -17, -173, -63, 83, 9, -199,
					-- layer=1 filter=58 channel=22
					-34, 10, 36, -41, 44, 22, 8, -3, 21,
					-- layer=1 filter=58 channel=23
					49, -29, -58, 50, 61, 25, -78, 16, 42,
					-- layer=1 filter=58 channel=24
					-89, 13, 85, 100, -44, -4, 67, 101, -33,
					-- layer=1 filter=58 channel=25
					-55, -86, -31, -45, -122, -87, -21, -22, -55,
					-- layer=1 filter=58 channel=26
					17, 17, 13, 7, 2, 10, -16, -10, 10,
					-- layer=1 filter=58 channel=27
					6, -42, 15, 33, 6, -36, -16, 11, 25,
					-- layer=1 filter=58 channel=28
					-69, 120, 168, 162, 33, 144, 104, 115, -51,
					-- layer=1 filter=58 channel=29
					-7, 7, 66, 8, -18, 30, -3, -30, -83,
					-- layer=1 filter=58 channel=30
					-9, -20, -40, -26, -16, -24, -45, -32, 15,
					-- layer=1 filter=58 channel=31
					-28, -42, 36, -16, -17, -9, 38, 20, -3,
					-- layer=1 filter=59 channel=0
					-24, 0, -17, 9, 22, 18, 0, -8, 36,
					-- layer=1 filter=59 channel=1
					-80, -84, -28, -75, -39, -38, -41, -41, -5,
					-- layer=1 filter=59 channel=2
					-6, -4, 23, 20, -8, 0, -25, -10, -11,
					-- layer=1 filter=59 channel=3
					10, 32, -21, 18, -24, 19, -9, 9, 47,
					-- layer=1 filter=59 channel=4
					-2, -12, -11, -5, 8, 18, -4, 8, 1,
					-- layer=1 filter=59 channel=5
					43, 79, 69, 51, 86, 117, 43, 66, 87,
					-- layer=1 filter=59 channel=6
					-27, -8, -31, 1, 16, -28, 17, -10, 10,
					-- layer=1 filter=59 channel=7
					10, 9, -23, 14, 27, 1, 14, 18, 24,
					-- layer=1 filter=59 channel=8
					0, 23, 0, 17, 23, 13, 7, 10, 47,
					-- layer=1 filter=59 channel=9
					-3, 3, -23, -10, 9, 14, 9, -1, -5,
					-- layer=1 filter=59 channel=10
					-35, 0, -33, -26, 6, -22, 13, 0, -5,
					-- layer=1 filter=59 channel=11
					-35, 8, 48, -43, 19, -10, -6, 4, 28,
					-- layer=1 filter=59 channel=12
					-61, 0, -6, -11, -1, -8, 0, 25, -18,
					-- layer=1 filter=59 channel=13
					-46, -25, -23, 3, -21, -10, 27, 12, -5,
					-- layer=1 filter=59 channel=14
					-59, -36, -27, -25, -1, -48, -29, -21, -24,
					-- layer=1 filter=59 channel=15
					-41, -2, -9, -13, -16, 3, 10, 30, 34,
					-- layer=1 filter=59 channel=16
					15, -4, -44, 21, 12, 4, 5, 3, 27,
					-- layer=1 filter=59 channel=17
					31, 48, 44, -5, 2, 16, -45, -22, 1,
					-- layer=1 filter=59 channel=18
					-23, -52, -27, -22, -6, -30, 2, -22, -14,
					-- layer=1 filter=59 channel=19
					-22, -39, -7, -34, -22, -19, -20, -21, -7,
					-- layer=1 filter=59 channel=20
					-3, 15, 0, -10, 26, 9, -6, -18, 20,
					-- layer=1 filter=59 channel=21
					78, 46, 61, 79, 61, 64, 43, 54, 9,
					-- layer=1 filter=59 channel=22
					-10, -38, -9, -5, -35, 1, -46, -33, -1,
					-- layer=1 filter=59 channel=23
					17, 5, -18, 18, 32, -6, 16, 4, 31,
					-- layer=1 filter=59 channel=24
					-13, -45, 23, -46, 19, -12, -14, -4, -5,
					-- layer=1 filter=59 channel=25
					36, -17, 12, -11, -14, -29, -24, -22, -5,
					-- layer=1 filter=59 channel=26
					18, 7, 0, 0, 13, -2, 5, 12, 8,
					-- layer=1 filter=59 channel=27
					-31, -25, -34, -54, -32, -45, -17, -9, 14,
					-- layer=1 filter=59 channel=28
					24, -8, 57, -20, 38, 38, -7, 57, 18,
					-- layer=1 filter=59 channel=29
					-32, -21, -23, -38, -9, 0, -7, -44, 9,
					-- layer=1 filter=59 channel=30
					-74, -46, -30, -20, 1, -5, -6, 2, 22,
					-- layer=1 filter=59 channel=31
					-91, -11, 11, -18, -25, -11, 18, -7, 0,
					-- layer=1 filter=60 channel=0
					-25, 5, 11, -16, 6, 13, 2, 17, 4,
					-- layer=1 filter=60 channel=1
					26, 29, -15, -2, 55, 37, -17, 10, 9,
					-- layer=1 filter=60 channel=2
					-26, -22, -7, -8, -42, -3, 51, 4, -6,
					-- layer=1 filter=60 channel=3
					-41, 25, 15, 44, -53, -16, -69, -18, -36,
					-- layer=1 filter=60 channel=4
					-12, 2, -18, 1, -20, -31, 15, 14, 15,
					-- layer=1 filter=60 channel=5
					-109, -50, -17, -65, -69, 6, -33, -23, -1,
					-- layer=1 filter=60 channel=6
					-12, 0, -12, 8, 18, -11, -1, -12, 3,
					-- layer=1 filter=60 channel=7
					13, -7, -37, 2, -44, 5, -25, -27, -16,
					-- layer=1 filter=60 channel=8
					-60, -33, -33, 9, -43, -37, 13, 14, -7,
					-- layer=1 filter=60 channel=9
					-50, -48, -42, -62, -64, -19, -16, -39, -39,
					-- layer=1 filter=60 channel=10
					-6, 7, 10, -6, 19, -23, -15, 1, -2,
					-- layer=1 filter=60 channel=11
					-76, -106, -36, -44, -48, -70, -27, -42, -38,
					-- layer=1 filter=60 channel=12
					10, 36, 21, 25, 62, 49, -2, 47, 17,
					-- layer=1 filter=60 channel=13
					3, -18, 5, -9, 15, -11, -17, 17, 18,
					-- layer=1 filter=60 channel=14
					1, -11, 10, -8, -5, 7, -25, -12, -5,
					-- layer=1 filter=60 channel=15
					21, 4, -19, 16, 43, 32, 8, 31, 33,
					-- layer=1 filter=60 channel=16
					34, 7, 46, -65, -28, -84, -28, -14, 25,
					-- layer=1 filter=60 channel=17
					-39, -48, -30, -85, -94, 6, -5, -137, -71,
					-- layer=1 filter=60 channel=18
					17, -21, -21, 9, 9, -5, 8, 6, 10,
					-- layer=1 filter=60 channel=19
					-4, -10, -24, -31, -9, 16, 0, -15, 18,
					-- layer=1 filter=60 channel=20
					-32, -8, 30, 5, -8, 51, -29, 33, 9,
					-- layer=1 filter=60 channel=21
					-7, 25, 66, 8, 13, -33, 47, 38, -30,
					-- layer=1 filter=60 channel=22
					13, -6, -22, 11, 7, -24, 97, 79, 74,
					-- layer=1 filter=60 channel=23
					-28, -21, -22, -43, -51, 4, -29, -24, -34,
					-- layer=1 filter=60 channel=24
					15, -25, 0, -18, -8, -8, 38, -5, -2,
					-- layer=1 filter=60 channel=25
					19, -14, 0, -23, -29, -31, 24, -18, 5,
					-- layer=1 filter=60 channel=26
					0, -20, -15, -16, 6, 2, 3, 7, 4,
					-- layer=1 filter=60 channel=27
					15, 7, -7, 20, -1, 3, 0, 25, -21,
					-- layer=1 filter=60 channel=28
					-94, -105, -56, -52, -32, -50, 39, -13, -27,
					-- layer=1 filter=60 channel=29
					27, 15, -3, 42, 42, 0, 27, -7, 0,
					-- layer=1 filter=60 channel=30
					3, 16, -20, 0, 31, 15, 10, 37, 0,
					-- layer=1 filter=60 channel=31
					26, 29, 22, -7, 21, 24, -6, 34, 31,
					-- layer=1 filter=61 channel=0
					-29, -26, -11, -25, -31, 9, 8, 11, -11,
					-- layer=1 filter=61 channel=1
					8, 25, 0, 21, -11, -29, -1, -16, -30,
					-- layer=1 filter=61 channel=2
					4, 7, 33, 8, -2, 23, -6, -17, 7,
					-- layer=1 filter=61 channel=3
					20, 25, -5, 35, 32, 57, 15, 43, 6,
					-- layer=1 filter=61 channel=4
					-1, 0, -15, -29, -22, 6, -33, 10, 7,
					-- layer=1 filter=61 channel=5
					-30, -7, 35, 55, 16, 24, 20, 33, 35,
					-- layer=1 filter=61 channel=6
					5, 26, 26, -18, -18, 5, -22, -32, -7,
					-- layer=1 filter=61 channel=7
					7, 6, 24, -16, -18, -9, 1, -4, -10,
					-- layer=1 filter=61 channel=8
					-7, 11, -6, 1, -13, -17, 22, -21, -12,
					-- layer=1 filter=61 channel=9
					18, 12, -8, -4, -6, 2, 0, -33, -13,
					-- layer=1 filter=61 channel=10
					1, 6, 0, 10, -29, 0, -16, -7, -11,
					-- layer=1 filter=61 channel=11
					14, 71, 43, 24, 38, 33, 59, 24, 48,
					-- layer=1 filter=61 channel=12
					0, -8, -3, -8, 17, -13, -1, -8, -23,
					-- layer=1 filter=61 channel=13
					15, 10, -7, -1, 1, 6, -29, -13, 0,
					-- layer=1 filter=61 channel=14
					24, 1, -3, 13, 0, -23, 6, -7, 25,
					-- layer=1 filter=61 channel=15
					-10, 5, 0, -13, -37, -18, -15, -11, -29,
					-- layer=1 filter=61 channel=16
					1, -51, -42, -14, -43, -27, -24, -17, -68,
					-- layer=1 filter=61 channel=17
					113, 134, 85, 192, 214, 203, 85, 127, 112,
					-- layer=1 filter=61 channel=18
					9, 6, -1, -23, -11, -20, -11, -25, -8,
					-- layer=1 filter=61 channel=19
					26, 19, 0, 19, -6, -6, -14, -33, -24,
					-- layer=1 filter=61 channel=20
					-13, -12, 23, -5, -6, -14, -20, -3, 28,
					-- layer=1 filter=61 channel=21
					-29, -16, 1, 0, 23, 38, 18, 8, 13,
					-- layer=1 filter=61 channel=22
					68, 7, 14, 30, 9, 23, 0, -17, -24,
					-- layer=1 filter=61 channel=23
					12, -5, 20, -4, 11, 9, -11, -15, 10,
					-- layer=1 filter=61 channel=24
					22, 39, 37, 7, -2, 6, -8, 0, 16,
					-- layer=1 filter=61 channel=25
					-2, 14, 22, 1, 35, 16, 17, -13, 2,
					-- layer=1 filter=61 channel=26
					-3, -6, -2, 8, -14, -4, -9, 5, 23,
					-- layer=1 filter=61 channel=27
					17, 30, 15, -13, -20, -7, 3, 3, -9,
					-- layer=1 filter=61 channel=28
					31, 55, 26, 44, 62, 29, 62, 59, 31,
					-- layer=1 filter=61 channel=29
					19, 51, 31, 27, 19, -16, 1, -7, 0,
					-- layer=1 filter=61 channel=30
					-15, 21, -4, -33, -11, 3, 1, -22, -38,
					-- layer=1 filter=61 channel=31
					29, 14, 12, 9, 2, -25, 11, -4, -1,
					-- layer=1 filter=62 channel=0
					-3, 22, 39, 8, 1, 1, 1, 22, 24,
					-- layer=1 filter=62 channel=1
					-9, -42, -61, -5, -29, -8, -31, -27, -37,
					-- layer=1 filter=62 channel=2
					13, -33, -32, 2, 11, -37, 26, -7, 14,
					-- layer=1 filter=62 channel=3
					-7, -33, -17, -5, -23, -37, -20, -23, -18,
					-- layer=1 filter=62 channel=4
					14, 3, -5, 26, -8, 26, 38, 40, 42,
					-- layer=1 filter=62 channel=5
					-146, -143, -65, -201, -192, -166, -155, -228, -149,
					-- layer=1 filter=62 channel=6
					-1, 16, 5, 11, 26, 5, -13, 29, 37,
					-- layer=1 filter=62 channel=7
					-45, -26, 0, -32, -3, -10, -3, 17, -6,
					-- layer=1 filter=62 channel=8
					21, 34, 62, 11, 24, 54, 37, 23, 42,
					-- layer=1 filter=62 channel=9
					5, 10, 14, 6, 30, 36, 37, 12, 52,
					-- layer=1 filter=62 channel=10
					8, 13, 12, -12, -12, 12, 6, 17, 9,
					-- layer=1 filter=62 channel=11
					14, -30, -51, -109, -95, -107, -77, -73, -148,
					-- layer=1 filter=62 channel=12
					27, 0, 0, 7, 14, 0, -20, -34, -22,
					-- layer=1 filter=62 channel=13
					13, 34, 21, 8, 32, 3, 21, 1, 32,
					-- layer=1 filter=62 channel=14
					-22, -49, -30, -26, -24, -21, -35, -34, -31,
					-- layer=1 filter=62 channel=15
					0, 24, 29, 10, -10, -23, -12, -26, 6,
					-- layer=1 filter=62 channel=16
					128, 64, 56, 62, 46, 27, 47, -5, -94,
					-- layer=1 filter=62 channel=17
					-93, -77, -45, -170, -120, -166, -117, -126, -196,
					-- layer=1 filter=62 channel=18
					-24, -11, -27, -31, -24, -21, -13, -26, 1,
					-- layer=1 filter=62 channel=19
					2, -3, 15, 6, 1, -1, 0, 15, 26,
					-- layer=1 filter=62 channel=20
					-123, -216, -110, -199, -259, -211, -164, -267, -156,
					-- layer=1 filter=62 channel=21
					31, -69, -74, 22, -93, -116, 12, -67, -152,
					-- layer=1 filter=62 channel=22
					102, 24, 31, 66, 40, 13, 17, 2, -51,
					-- layer=1 filter=62 channel=23
					-2, -17, 0, -7, 17, 17, -11, 0, 7,
					-- layer=1 filter=62 channel=24
					-11, -15, -44, -47, -30, -34, -18, -56, -35,
					-- layer=1 filter=62 channel=25
					43, 35, 4, 42, 46, 17, 46, 27, 25,
					-- layer=1 filter=62 channel=26
					13, -14, 6, -17, -3, -1, 19, 6, -14,
					-- layer=1 filter=62 channel=27
					-1, -32, 2, -20, -8, -9, -20, -32, -17,
					-- layer=1 filter=62 channel=28
					25, -12, -37, -61, -93, -95, -24, -37, -112,
					-- layer=1 filter=62 channel=29
					9, -8, -24, -8, -31, -15, 42, -18, -43,
					-- layer=1 filter=62 channel=30
					3, 0, -39, 2, -4, -23, -22, -19, -31,
					-- layer=1 filter=62 channel=31
					-20, -7, -19, 1, 18, -6, -26, -40, -1,
					-- layer=1 filter=63 channel=0
					14, 7, 22, 57, 39, 24, 22, 23, -20,
					-- layer=1 filter=63 channel=1
					14, -12, -32, -1, -45, -19, -30, 5, -22,
					-- layer=1 filter=63 channel=2
					-42, -38, -49, -33, -40, -19, -10, 1, 18,
					-- layer=1 filter=63 channel=3
					3, 1, 21, 58, 34, -8, 7, 10, -16,
					-- layer=1 filter=63 channel=4
					-46, -1, 11, 32, 11, 17, 37, 34, 32,
					-- layer=1 filter=63 channel=5
					-36, -33, -37, -104, -166, -57, -146, -121, -32,
					-- layer=1 filter=63 channel=6
					-35, -38, -18, -7, -3, 16, 0, 40, 0,
					-- layer=1 filter=63 channel=7
					-54, -68, -43, -54, -32, 23, -17, 56, 55,
					-- layer=1 filter=63 channel=8
					23, 17, 45, 27, 35, 17, 54, 46, -7,
					-- layer=1 filter=63 channel=9
					-42, -10, -9, -13, 14, 39, 15, 45, 28,
					-- layer=1 filter=63 channel=10
					-34, -29, 5, 13, 28, 17, 49, 27, -8,
					-- layer=1 filter=63 channel=11
					124, 85, 5, 116, 76, 52, 45, 69, 22,
					-- layer=1 filter=63 channel=12
					13, 6, 7, -17, 0, 5, 25, 29, 18,
					-- layer=1 filter=63 channel=13
					-18, 3, 1, 2, 19, 2, 44, 0, -27,
					-- layer=1 filter=63 channel=14
					-40, -42, -59, -29, -34, 7, 21, 46, -9,
					-- layer=1 filter=63 channel=15
					12, 18, 18, 7, -5, -5, 1, -26, -17,
					-- layer=1 filter=63 channel=16
					13, 53, -46, 39, -45, 10, 13, 13, 27,
					-- layer=1 filter=63 channel=17
					95, 68, 11, 135, 53, -13, 71, 72, -3,
					-- layer=1 filter=63 channel=18
					-40, -39, -19, -34, -25, 18, 4, 23, 27,
					-- layer=1 filter=63 channel=19
					-52, -17, -12, -11, 31, 38, 8, 34, 11,
					-- layer=1 filter=63 channel=20
					-65, -63, -67, -136, -172, -10, -128, -62, -28,
					-- layer=1 filter=63 channel=21
					-56, 36, 42, -14, 10, 6, -21, -55, -88,
					-- layer=1 filter=63 channel=22
					21, -13, -30, 41, 15, 7, 23, 4, 42,
					-- layer=1 filter=63 channel=23
					-35, -58, -9, -25, -28, 9, -24, 28, 38,
					-- layer=1 filter=63 channel=24
					-62, -29, -35, -70, -43, -18, -29, -37, -5,
					-- layer=1 filter=63 channel=25
					49, 92, 50, 62, 17, -22, 9, -20, -19,
					-- layer=1 filter=63 channel=26
					0, 6, 4, 14, 3, 10, 4, -3, -10,
					-- layer=1 filter=63 channel=27
					-17, -33, -12, -22, 5, 17, 7, 22, -16,
					-- layer=1 filter=63 channel=28
					17, -9, -25, -16, -35, -62, 1, -33, 1,
					-- layer=1 filter=63 channel=29
					41, -2, -4, 47, -3, 40, -39, 44, 42,
					-- layer=1 filter=63 channel=30
					15, 41, 28, 28, 18, -2, 39, 3, -38,
					-- layer=1 filter=63 channel=31
					23, 5, 26, -24, -2, 23, 24, 15, 15,

			0, 0, 8, 11, 8, 7, 6, 3, 9, 0, 0, 0, 0, 8, 5, 
			10, 14, 12, 9, 11, 60, 33, 0, 0, 0, 26, 6, 0, 0, 6, 
			0, 0, 6, 6, 7, 0, 0, 0, 5, 18, 21, 9, 15, 0, 0, 
			37, 31, 10, 8, 14, 0, 48, 25, 3, 0, 0, 0, 0, 0, 0, 
			37, 79, 26, 19, 118, 100, 16, 12, 0, 0, 37, 37, 11, 16, 0, 
			6, 0, 19, 0, 0, 0, 30, 29, 29, 40, 14, 0, 0, 10, 32, 
			27, 0, 0, 4, 0, 22, 0, 17, 10, 11, 0, 12, 0, 14, 28, 
			35, 7, 39, 19, 20, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			26, 7, 21, 0, 40, 0, 0, 17, 2, 0, 0, 0, 0, 0, 33, 
			0, 1, 10, 1, 17, 5, 0, 61, 31, 0, 0, 0, 16, 29, 2, 
			0, 8, 0, 59, 130, 125, 37, 0, 0, 0, 24, 48, 13, 0, 0, 
			0, 0, 17, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			3, 0, 0, 2, 0, 0, 0, 0, 0, 1, 5, 16, 0, 0, 15, 
			0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 12, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 13, 16, 3, 0, 31, 35, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
			18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			42, 5, 0, 0, 10, 6, 0, 0, 0, 0, 11, 11, 0, 0, 0, 
			34, 7, 0, 0, 0, 0, 3, 0, 1, 0, 15, 0, 0, 0, 0, 
			29, 7, 0, 0, 0, 0, 28, 6, 2, 0, 9, 1, 0, 0, 0, 
			33, 20, 29, 0, 0, 6, 0, 0, 0, 0, 0, 14, 0, 0, 0, 
			27, 25, 26, 0, 12, 0, 0, 0, 2, 7, 13, 0, 0, 0, 0, 
			8, 13, 27, 0, 3, 3, 20, 41, 41, 0, 6, 15, 24, 8, 9, 
			66, 39, 25, 0, 71, 75, 50, 49, 57, 50, 56, 60, 64, 65, 69, 
			82, 57, 26, 22, 86, 56, 58, 54, 56, 58, 64, 65, 74, 78, 71, 
			92, 68, 54, 61, 64, 57, 56, 55, 60, 64, 76, 82, 79, 79, 100, 
			89, 80, 66, 58, 62, 66, 72, 62, 56, 59, 71, 70, 60, 81, 89, 
			

			82, 81, 83, 77, 78, 79, 87, 89, 78, 71, 69, 76, 71, 67, 62, 
			79, 85, 90, 80, 87, 50, 55, 72, 69, 38, 0, 14, 54, 74, 63, 
			51, 114, 87, 82, 92, 99, 28, 27, 25, 44, 0, 0, 0, 53, 71, 
			0, 75, 74, 89, 53, 64, 2, 0, 2, 86, 0, 21, 0, 0, 98, 
			0, 26, 41, 120, 0, 23, 0, 0, 0, 87, 0, 0, 1, 0, 58, 
			0, 16, 27, 84, 94, 45, 0, 0, 0, 124, 0, 0, 21, 0, 0, 
			0, 0, 57, 21, 98, 56, 9, 0, 0, 113, 0, 0, 9, 8, 0, 
			0, 0, 2, 10, 78, 78, 0, 23, 0, 90, 0, 0, 27, 27, 25, 
			0, 3, 0, 30, 15, 59, 1, 0, 33, 23, 38, 0, 36, 39, 60, 
			0, 7, 0, 45, 0, 35, 44, 0, 8, 29, 0, 6, 38, 73, 61, 
			43, 9, 0, 84, 0, 0, 44, 1, 0, 0, 0, 0, 0, 8, 0, 
			45, 33, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 37, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			19, 21, 29, 27, 26, 20, 28, 28, 21, 6, 4, 11, 24, 21, 17, 
			28, 27, 28, 27, 29, 60, 24, 13, 0, 0, 6, 0, 0, 7, 21, 
			0, 18, 27, 27, 21, 0, 0, 0, 0, 11, 0, 10, 1, 0, 19, 
			0, 21, 21, 26, 17, 16, 12, 3, 1, 0, 12, 0, 0, 0, 0, 
			22, 31, 32, 28, 82, 57, 0, 0, 0, 7, 0, 4, 0, 5, 0, 
			0, 3, 37, 0, 0, 0, 25, 0, 0, 17, 6, 0, 0, 4, 11, 
			1, 0, 0, 15, 0, 20, 0, 27, 0, 3, 0, 0, 0, 0, 4, 
			6, 4, 6, 20, 4, 0, 11, 0, 0, 0, 0, 0, 0, 0, 15, 
			7, 0, 0, 5, 4, 0, 0, 0, 6, 0, 0, 0, 0, 6, 25, 
			0, 0, 0, 0, 0, 14, 17, 18, 0, 0, 0, 0, 10, 32, 17, 
			0, 0, 0, 18, 100, 20, 23, 0, 10, 2, 0, 7, 0, 0, 0, 
			0, 0, 17, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			90, 93, 99, 96, 95, 93, 102, 105, 96, 69, 57, 68, 81, 85, 81, 
			98, 105, 102, 98, 99, 116, 89, 79, 52, 50, 37, 34, 42, 64, 78, 
			44, 68, 101, 103, 103, 62, 55, 33, 32, 43, 16, 17, 15, 25, 70, 
			16, 67, 94, 101, 85, 71, 52, 20, 16, 26, 30, 22, 13, 9, 52, 
			15, 53, 78, 86, 81, 69, 38, 26, 7, 54, 44, 25, 23, 11, 25, 
			5, 33, 78, 86, 43, 52, 58, 30, 15, 67, 25, 10, 16, 12, 21, 
			20, 23, 54, 75, 49, 75, 28, 40, 7, 53, 20, 20, 23, 28, 22, 
			33, 26, 26, 59, 52, 36, 7, 19, 20, 53, 31, 14, 16, 21, 47, 
			26, 25, 10, 38, 50, 25, 36, 34, 29, 54, 21, 0, 19, 50, 80, 
			31, 26, 6, 39, 7, 25, 47, 43, 20, 6, 0, 1, 28, 77, 74, 
			32, 34, 7, 66, 52, 18, 13, 0, 0, 2, 0, 0, 0, 0, 0, 
			0, 4, 18, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 30, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 2, 6, 0, 2, 3, 4, 0, 0, 0, 0, 8, 9, 
			2, 0, 0, 4, 0, 0, 38, 2, 5, 0, 21, 20, 0, 0, 5, 
			11, 0, 0, 3, 0, 0, 36, 12, 0, 0, 18, 14, 42, 0, 0, 
			83, 0, 7, 0, 22, 0, 12, 27, 12, 0, 50, 1, 26, 25, 0, 
			71, 0, 53, 0, 0, 46, 48, 45, 22, 0, 13, 60, 0, 37, 0, 
			66, 0, 63, 26, 0, 4, 42, 34, 65, 0, 66, 58, 0, 22, 33, 
			67, 31, 0, 44, 0, 0, 0, 48, 49, 0, 67, 46, 2, 0, 30, 
			56, 21, 51, 26, 0, 0, 80, 2, 22, 0, 33, 48, 0, 0, 16, 
			52, 0, 111, 0, 48, 0, 14, 11, 0, 52, 0, 48, 0, 0, 0, 
			0, 0, 93, 0, 25, 24, 0, 18, 35, 0, 42, 0, 0, 0, 10, 
			0, 1, 84, 0, 112, 38, 0, 0, 53, 48, 0, 0, 0, 0, 11, 
			0, 0, 17, 0, 88, 38, 0, 0, 1, 0, 0, 0, 0, 0, 4, 
			28, 0, 0, 9, 93, 1, 4, 2, 2, 0, 0, 0, 0, 0, 0, 
			22, 0, 0, 39, 22, 0, 18, 1, 0, 0, 0, 0, 5, 0, 14, 
			38, 0, 4, 0, 11, 0, 0, 0, 0, 5, 14, 0, 0, 24, 46, 
			

			56, 66, 58, 60, 57, 63, 58, 56, 58, 64, 63, 59, 56, 47, 44, 
			53, 57, 59, 62, 61, 106, 58, 68, 68, 69, 67, 47, 47, 52, 48, 
			72, 65, 57, 59, 58, 113, 85, 46, 36, 98, 106, 88, 65, 30, 58, 
			66, 36, 55, 63, 73, 67, 92, 64, 68, 95, 119, 80, 72, 31, 43, 
			122, 111, 66, 77, 163, 108, 124, 79, 65, 64, 116, 75, 69, 49, 13, 
			128, 170, 80, 75, 197, 149, 158, 89, 65, 100, 153, 91, 76, 70, 32, 
			121, 179, 78, 67, 110, 142, 190, 125, 91, 136, 145, 80, 67, 81, 63, 
			151, 180, 73, 79, 75, 184, 163, 125, 87, 121, 146, 84, 75, 88, 63, 
			191, 194, 116, 131, 78, 113, 98, 97, 81, 85, 98, 78, 49, 65, 59, 
			208, 192, 150, 126, 110, 69, 104, 142, 75, 107, 81, 34, 51, 71, 73, 
			200, 181, 151, 159, 200, 105, 164, 199, 128, 67, 47, 65, 87, 107, 99, 
			160, 201, 160, 232, 251, 142, 116, 112, 103, 94, 101, 107, 115, 118, 117, 
			116, 135, 168, 259, 156, 105, 101, 96, 94, 96, 107, 115, 127, 130, 134, 
			126, 108, 139, 253, 120, 108, 104, 95, 102, 109, 118, 127, 122, 130, 150, 
			128, 118, 113, 134, 94, 102, 115, 108, 111, 118, 111, 107, 130, 155, 115, 
			

			62, 71, 67, 69, 69, 63, 69, 78, 73, 56, 48, 48, 56, 60, 65, 
			66, 71, 67, 73, 64, 70, 60, 63, 58, 24, 14, 11, 17, 37, 57, 
			55, 41, 70, 77, 68, 59, 71, 28, 1, 0, 7, 9, 17, 0, 41, 
			48, 0, 56, 68, 72, 36, 29, 10, 8, 0, 47, 9, 28, 8, 0, 
			29, 0, 56, 6, 34, 12, 40, 30, 19, 0, 14, 26, 7, 20, 0, 
			2, 0, 63, 65, 16, 30, 58, 23, 38, 0, 38, 37, 0, 13, 4, 
			0, 28, 23, 94, 3, 10, 26, 36, 34, 0, 42, 21, 0, 0, 10, 
			5, 24, 0, 44, 0, 0, 56, 22, 32, 0, 45, 28, 0, 5, 37, 
			18, 0, 32, 0, 22, 15, 28, 21, 0, 43, 1, 45, 1, 16, 35, 
			26, 0, 49, 0, 1, 5, 0, 22, 0, 22, 41, 0, 0, 18, 52, 
			0, 0, 46, 0, 47, 0, 0, 8, 18, 11, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 53, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 19, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 3, 6, 7, 3, 1, 2, 7, 0, 0, 0, 0, 8, 12, 
			6, 9, 5, 6, 4, 44, 16, 0, 0, 4, 35, 18, 0, 0, 10, 
			0, 0, 4, 5, 4, 0, 0, 0, 9, 23, 23, 17, 37, 0, 0, 
			62, 21, 6, 4, 15, 1, 44, 23, 19, 0, 16, 2, 10, 16, 0, 
			39, 55, 11, 0, 69, 44, 19, 20, 14, 0, 33, 36, 26, 38, 0, 
			0, 0, 0, 0, 0, 0, 36, 33, 57, 1, 6, 0, 8, 26, 37, 
			0, 32, 0, 23, 0, 0, 4, 16, 34, 4, 4, 23, 17, 22, 28, 
			0, 27, 11, 27, 15, 0, 0, 0, 4, 2, 0, 17, 1, 0, 0, 
			4, 0, 14, 0, 13, 0, 0, 33, 1, 31, 0, 0, 0, 6, 20, 
			0, 0, 28, 15, 5, 0, 0, 65, 11, 0, 0, 5, 21, 21, 5, 
			0, 0, 20, 8, 96, 66, 3, 0, 0, 29, 37, 46, 27, 0, 0, 
			0, 0, 6, 27, 0, 0, 0, 0, 0, 12, 16, 17, 22, 23, 20, 
			29, 0, 0, 10, 0, 17, 20, 18, 23, 26, 29, 31, 18, 10, 28, 
			22, 18, 0, 0, 2, 19, 30, 22, 17, 21, 19, 8, 16, 23, 3, 
			28, 20, 10, 0, 9, 0, 0, 12, 30, 36, 30, 19, 36, 51, 31, 
			

			74, 72, 73, 75, 74, 66, 75, 81, 76, 64, 57, 60, 63, 65, 71, 
			73, 71, 72, 75, 74, 63, 59, 61, 54, 44, 25, 30, 44, 60, 69, 
			56, 72, 77, 78, 78, 70, 59, 46, 32, 24, 20, 26, 21, 35, 61, 
			31, 35, 71, 74, 65, 58, 34, 24, 27, 20, 35, 24, 35, 25, 44, 
			17, 8, 59, 49, 24, 7, 26, 29, 30, 21, 23, 21, 29, 27, 24, 
			7, 20, 58, 50, 38, 24, 32, 27, 30, 9, 24, 33, 26, 27, 19, 
			6, 13, 47, 75, 31, 28, 24, 31, 28, 10, 27, 26, 24, 24, 26, 
			1, 20, 6, 54, 26, 15, 39, 33, 40, 30, 33, 30, 21, 29, 52, 
			5, 6, 13, 21, 31, 31, 36, 31, 25, 39, 34, 44, 32, 44, 52, 
			27, 10, 21, 5, 14, 24, 27, 20, 12, 39, 38, 24, 16, 43, 59, 
			18, 11, 24, 5, 2, 0, 0, 15, 13, 21, 8, 0, 0, 11, 17, 
			0, 13, 11, 0, 12, 21, 6, 7, 3, 1, 0, 0, 0, 0, 0, 
			0, 0, 8, 12, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 39, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			29, 42, 38, 40, 34, 40, 38, 39, 32, 16, 6, 15, 29, 25, 21, 
			37, 45, 41, 40, 44, 115, 23, 19, 0, 25, 25, 0, 0, 13, 24, 
			0, 15, 37, 41, 36, 47, 10, 0, 0, 75, 57, 49, 14, 0, 34, 
			15, 35, 33, 42, 31, 34, 65, 16, 22, 50, 62, 20, 16, 0, 15, 
			71, 111, 28, 56, 166, 77, 65, 27, 5, 44, 83, 26, 35, 14, 0, 
			29, 120, 41, 1, 115, 69, 119, 51, 26, 106, 68, 15, 33, 28, 4, 
			45, 105, 18, 30, 71, 107, 117, 71, 39, 114, 63, 25, 23, 51, 29, 
			71, 130, 12, 46, 47, 132, 55, 42, 39, 92, 75, 22, 30, 38, 40, 
			107, 123, 25, 91, 16, 26, 43, 52, 52, 24, 29, 0, 2, 52, 46, 
			131, 121, 74, 88, 42, 1, 67, 121, 13, 21, 0, 0, 37, 60, 31, 
			139, 109, 68, 168, 181, 71, 93, 89, 36, 0, 6, 27, 15, 2, 0, 
			39, 107, 106, 202, 73, 0, 8, 4, 12, 12, 25, 29, 45, 47, 41, 
			30, 29, 104, 147, 8, 36, 29, 27, 27, 32, 44, 50, 47, 44, 73, 
			39, 28, 36, 114, 31, 41, 38, 27, 32, 39, 36, 39, 38, 58, 33, 
			42, 43, 22, 29, 5, 17, 29, 39, 52, 59, 38, 40, 89, 84, 32, 
			

			0, 2, 0, 0, 0, 0, 0, 0, 0, 9, 23, 14, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 7, 45, 0, 0, 0, 11, 4, 0, 
			44, 30, 0, 0, 0, 65, 26, 12, 0, 0, 0, 0, 0, 10, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 17, 14, 3, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 6, 
			3, 0, 0, 44, 73, 11, 0, 0, 0, 0, 14, 18, 0, 0, 0, 
			0, 20, 6, 9, 23, 0, 15, 0, 0, 0, 10, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 2, 61, 41, 10, 4, 15, 6, 0, 21, 0, 
			0, 0, 1, 0, 0, 54, 1, 0, 0, 8, 34, 62, 24, 0, 0, 
			15, 0, 0, 0, 0, 4, 0, 0, 0, 53, 57, 3, 0, 0, 0, 
			0, 0, 16, 0, 0, 0, 0, 47, 18, 0, 0, 0, 0, 0, 2, 
			63, 23, 0, 0, 113, 76, 46, 39, 14, 4, 0, 2, 0, 0, 0, 
			0, 45, 0, 45, 73, 0, 1, 0, 0, 0, 0, 0, 4, 5, 0, 
			2, 0, 26, 101, 16, 0, 0, 0, 0, 0, 7, 16, 4, 0, 59, 
			6, 0, 12, 57, 27, 26, 28, 0, 0, 0, 0, 0, 0, 0, 1, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 7, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 3, 19, 32, 24, 22, 0, 0, 
			16, 0, 0, 0, 0, 0, 0, 11, 20, 15, 14, 15, 19, 19, 0, 
			32, 28, 0, 0, 0, 0, 15, 16, 25, 6, 18, 16, 19, 21, 1, 
			39, 40, 0, 0, 22, 1, 16, 14, 26, 13, 23, 19, 21, 21, 20, 
			34, 52, 0, 0, 0, 0, 22, 12, 26, 26, 28, 25, 24, 24, 19, 
			37, 45, 19, 0, 0, 19, 23, 21, 15, 8, 19, 26, 24, 19, 0, 
			49, 56, 41, 24, 0, 13, 11, 18, 15, 0, 14, 15, 17, 0, 0, 
			37, 49, 48, 43, 35, 5, 8, 30, 27, 4, 18, 23, 23, 0, 0, 
			52, 40, 48, 36, 46, 46, 47, 51, 46, 35, 54, 62, 70, 61, 54, 
			106, 64, 42, 41, 69, 79, 86, 86, 90, 88, 98, 102, 108, 108, 107, 
			125, 97, 46, 60, 72, 94, 96, 93, 93, 99, 108, 112, 113, 111, 119, 
			130, 117, 86, 81, 79, 97, 98, 97, 97, 105, 114, 120, 119, 127, 133, 
			126, 123, 111, 99, 92, 99, 98, 95, 97, 106, 112, 109, 111, 131, 126, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 19, 5, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 34, 27, 15, 0, 0, 
			12, 23, 0, 0, 0, 0, 23, 24, 19, 15, 14, 7, 5, 3, 0, 
			35, 56, 0, 0, 56, 54, 19, 20, 8, 23, 33, 23, 24, 17, 0, 
			38, 32, 0, 0, 0, 0, 26, 24, 24, 60, 27, 4, 18, 23, 23, 
			48, 30, 0, 0, 0, 33, 18, 26, 14, 50, 14, 23, 23, 30, 24, 
			53, 41, 30, 0, 13, 36, 11, 0, 3, 30, 10, 13, 19, 14, 0, 
			55, 50, 37, 17, 28, 0, 0, 26, 20, 2, 0, 0, 3, 0, 0, 
			36, 49, 31, 44, 20, 22, 26, 49, 37, 0, 0, 1, 18, 2, 0, 
			38, 46, 23, 92, 91, 82, 62, 23, 20, 26, 48, 65, 57, 27, 20, 
			41, 34, 43, 88, 10, 2, 25, 26, 38, 54, 63, 67, 76, 78, 76, 
			87, 47, 50, 51, 12, 64, 62, 61, 64, 73, 81, 90, 78, 75, 99, 
			85, 74, 61, 12, 48, 71, 70, 65, 66, 76, 79, 73, 76, 103, 70, 
			88, 80, 64, 24, 51, 55, 54, 64, 78, 85, 79, 78, 105, 110, 74, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 
			27, 0, 0, 0, 0, 24, 22, 10, 0, 0, 15, 0, 10, 0, 0, 
			58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 4, 14, 0, 0, 
			22, 0, 0, 0, 0, 0, 44, 19, 21, 0, 2, 17, 0, 0, 0, 
			32, 8, 0, 13, 22, 0, 39, 6, 38, 0, 58, 35, 0, 0, 0, 
			0, 77, 0, 21, 0, 0, 47, 17, 41, 0, 58, 20, 0, 0, 0, 
			14, 43, 0, 2, 0, 0, 82, 25, 15, 0, 34, 37, 0, 0, 0, 
			46, 25, 62, 0, 6, 12, 14, 15, 0, 33, 16, 46, 0, 0, 0, 
			40, 22, 79, 0, 30, 0, 0, 21, 8, 15, 40, 0, 0, 0, 0, 
			4, 22, 87, 0, 27, 0, 0, 54, 42, 16, 0, 0, 0, 16, 30, 
			24, 7, 0, 0, 183, 84, 50, 45, 27, 13, 9, 14, 12, 13, 21, 
			30, 7, 0, 114, 117, 10, 16, 10, 9, 2, 1, 5, 20, 16, 0, 
			36, 12, 0, 154, 31, 5, 16, 11, 5, 9, 23, 27, 23, 4, 71, 
			45, 17, 20, 62, 31, 13, 14, 4, 0, 11, 26, 3, 0, 46, 44, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 26, 27, 12, 0, 0, 
			12, 0, 0, 0, 0, 0, 7, 16, 14, 0, 21, 3, 13, 0, 0, 
			55, 23, 0, 0, 38, 33, 22, 19, 5, 12, 26, 20, 14, 15, 0, 
			49, 29, 0, 0, 0, 19, 34, 20, 18, 18, 30, 18, 10, 21, 17, 
			60, 31, 0, 0, 0, 20, 20, 29, 20, 17, 32, 22, 15, 22, 13, 
			61, 52, 21, 0, 0, 13, 25, 7, 10, 0, 27, 16, 12, 5, 0, 
			68, 55, 45, 19, 5, 0, 7, 15, 12, 0, 0, 0, 0, 0, 0, 
			48, 51, 51, 38, 22, 11, 25, 41, 15, 0, 4, 6, 7, 0, 0, 
			38, 45, 45, 55, 101, 58, 45, 40, 41, 31, 39, 55, 46, 25, 24, 
			36, 49, 56, 52, 43, 45, 41, 43, 55, 59, 66, 71, 81, 80, 81, 
			89, 39, 54, 41, 59, 70, 68, 66, 67, 73, 83, 86, 81, 85, 99, 
			96, 79, 39, 47, 64, 72, 76, 67, 72, 78, 83, 80, 88, 97, 80, 
			97, 89, 72, 40, 57, 58, 63, 71, 79, 86, 82, 83, 100, 107, 93, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 22, 0, 0, 0, 11, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 18, 22, 0, 0, 0, 0, 0, 
			0, 72, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 12, 
			0, 12, 0, 65, 13, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 0, 0, 0, 0, 10, 
			0, 0, 0, 0, 0, 31, 0, 0, 0, 27, 0, 0, 0, 14, 0, 
			0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 5, 0, 0, 0, 0, 28, 0, 0, 0, 0, 14, 0, 
			0, 0, 0, 20, 0, 0, 42, 0, 0, 0, 0, 0, 31, 0, 0, 
			0, 0, 0, 129, 3, 0, 0, 0, 0, 0, 35, 39, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 
			

			1, 0, 0, 0, 5, 3, 0, 3, 11, 10, 8, 4, 3, 2, 5, 
			5, 3, 0, 0, 0, 0, 18, 9, 23, 30, 31, 36, 29, 6, 1, 
			5, 1, 6, 3, 8, 18, 31, 55, 21, 4, 0, 0, 8, 13, 0, 
			25, 14, 9, 10, 19, 34, 8, 0, 0, 0, 0, 5, 7, 0, 0, 
			6, 0, 5, 9, 0, 6, 7, 1, 2, 18, 14, 5, 0, 0, 16, 
			21, 0, 0, 39, 0, 2, 0, 7, 6, 0, 0, 8, 0, 0, 2, 
			16, 6, 10, 9, 5, 7, 0, 5, 0, 0, 15, 15, 18, 4, 0, 
			15, 1, 22, 24, 9, 0, 0, 2, 0, 0, 3, 19, 0, 0, 0, 
			9, 5, 18, 0, 25, 31, 25, 15, 0, 68, 5, 1, 5, 0, 0, 
			0, 0, 0, 33, 0, 1, 18, 3, 8, 0, 1, 11, 0, 0, 15, 
			12, 14, 20, 0, 0, 0, 0, 0, 0, 40, 27, 5, 17, 48, 58, 
			7, 0, 0, 0, 37, 46, 53, 48, 17, 13, 3, 11, 7, 7, 7, 
			7, 10, 4, 10, 27, 2, 1, 6, 8, 5, 6, 1, 0, 4, 2, 
			1, 9, 2, 0, 4, 5, 10, 4, 0, 0, 8, 1, 12, 0, 0, 
			0, 0, 23, 26, 18, 1, 0, 0, 0, 7, 5, 4, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			17, 14, 0, 11, 41, 21, 0, 0, 0, 7, 10, 0, 0, 0, 0, 
			15, 1, 0, 0, 6, 9, 9, 0, 0, 18, 0, 0, 0, 0, 0, 
			21, 0, 0, 0, 0, 26, 20, 0, 0, 21, 0, 0, 0, 0, 0, 
			25, 22, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			32, 32, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 
			17, 26, 0, 30, 0, 0, 11, 10, 0, 0, 0, 0, 0, 0, 0, 
			22, 25, 4, 51, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 17, 32, 46, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 42, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			11, 7, 9, 10, 10, 6, 12, 11, 7, 7, 6, 6, 7, 7, 7, 
			13, 8, 8, 11, 10, 11, 7, 4, 3, 1, 5, 2, 2, 11, 10, 
			1, 16, 13, 10, 12, 0, 2, 0, 0, 4, 0, 0, 6, 7, 13, 
			0, 17, 18, 9, 4, 2, 4, 0, 7, 4, 2, 0, 0, 5, 12, 
			0, 18, 14, 0, 6, 0, 0, 0, 1, 3, 0, 0, 1, 4, 1, 
			0, 11, 13, 0, 0, 0, 2, 0, 3, 7, 0, 0, 1, 1, 2, 
			0, 12, 12, 4, 0, 2, 3, 3, 0, 10, 0, 0, 2, 5, 6, 
			0, 0, 2, 13, 5, 4, 0, 1, 2, 5, 4, 0, 0, 6, 6, 
			0, 0, 0, 10, 4, 0, 0, 2, 7, 8, 0, 0, 0, 10, 13, 
			0, 0, 2, 3, 0, 0, 0, 8, 0, 0, 1, 0, 11, 17, 10, 
			11, 0, 0, 0, 14, 2, 6, 0, 0, 0, 0, 5, 2, 11, 10, 
			5, 6, 3, 14, 0, 0, 0, 0, 0, 2, 6, 3, 3, 5, 3, 
			11, 4, 3, 8, 0, 1, 1, 2, 3, 4, 4, 4, 5, 2, 4, 
			6, 7, 0, 8, 2, 1, 3, 1, 1, 1, 3, 4, 5, 3, 10, 
			5, 3, 9, 0, 5, 3, 4, 4, 3, 3, 3, 3, 6, 5, 7, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 1, 4, 
			0, 0, 0, 0, 0, 0, 32, 6, 17, 0, 18, 17, 0, 0, 0, 
			32, 0, 0, 0, 0, 0, 43, 19, 0, 0, 32, 15, 54, 0, 0, 
			123, 0, 0, 0, 18, 0, 17, 30, 12, 0, 60, 11, 40, 38, 0, 
			98, 0, 45, 0, 0, 11, 62, 52, 35, 0, 18, 74, 1, 53, 0, 
			71, 0, 58, 0, 0, 2, 54, 46, 85, 0, 78, 77, 0, 28, 31, 
			59, 54, 5, 58, 0, 0, 25, 42, 89, 0, 91, 57, 0, 0, 38, 
			46, 39, 41, 34, 0, 0, 92, 13, 44, 0, 47, 68, 0, 0, 8, 
			54, 0, 120, 0, 27, 0, 27, 17, 0, 32, 0, 70, 0, 0, 0, 
			1, 0, 130, 0, 70, 0, 0, 32, 27, 15, 65, 6, 0, 0, 11, 
			0, 0, 117, 0, 114, 52, 0, 25, 89, 45, 1, 0, 0, 0, 19, 
			0, 0, 30, 0, 156, 71, 2, 6, 25, 6, 4, 0, 0, 4, 18, 
			38, 0, 0, 32, 144, 9, 18, 10, 12, 3, 0, 0, 10, 2, 0, 
			45, 7, 0, 101, 42, 0, 27, 14, 1, 1, 6, 6, 15, 0, 41, 
			56, 7, 2, 14, 26, 0, 0, 7, 0, 7, 29, 0, 0, 39, 79, 
			

			3, 0, 6, 0, 0, 5, 0, 0, 0, 0, 0, 6, 2, 0, 0, 
			3, 3, 9, 0, 12, 14, 0, 0, 0, 19, 0, 0, 9, 11, 0, 
			0, 28, 4, 0, 10, 0, 0, 0, 23, 59, 0, 0, 0, 21, 12, 
			0, 85, 0, 11, 0, 27, 0, 0, 0, 83, 0, 0, 0, 0, 59, 
			0, 40, 0, 95, 0, 19, 0, 0, 0, 115, 0, 0, 0, 0, 42, 
			0, 1, 0, 35, 44, 1, 0, 0, 0, 198, 0, 0, 13, 0, 0, 
			0, 0, 0, 0, 66, 67, 0, 0, 0, 148, 0, 0, 10, 21, 0, 
			0, 0, 0, 0, 70, 75, 0, 0, 0, 89, 0, 0, 29, 2, 0, 
			0, 2, 0, 25, 7, 3, 0, 0, 31, 0, 14, 0, 22, 15, 17, 
			0, 5, 0, 66, 0, 25, 46, 0, 3, 0, 0, 0, 42, 39, 0, 
			51, 5, 0, 172, 0, 0, 71, 0, 0, 0, 15, 34, 32, 17, 0, 
			61, 32, 0, 118, 0, 0, 0, 0, 0, 6, 7, 10, 8, 8, 0, 
			0, 67, 102, 0, 0, 0, 0, 0, 0, 10, 14, 15, 3, 9, 18, 
			0, 8, 152, 0, 0, 10, 0, 1, 10, 10, 7, 2, 0, 37, 0, 
			0, 4, 18, 0, 0, 17, 4, 0, 17, 3, 0, 9, 52, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 
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
			

			50, 57, 55, 57, 57, 51, 59, 65, 64, 55, 50, 48, 53, 54, 56, 
			59, 60, 55, 61, 53, 51, 63, 61, 58, 25, 24, 19, 19, 42, 53, 
			50, 42, 58, 63, 53, 22, 63, 26, 11, 0, 5, 15, 29, 7, 40, 
			55, 0, 56, 58, 64, 32, 29, 18, 13, 0, 41, 8, 28, 22, 5, 
			50, 0, 64, 14, 42, 13, 31, 28, 17, 0, 15, 35, 9, 35, 0, 
			5, 0, 70, 21, 0, 22, 47, 27, 39, 0, 30, 40, 0, 21, 22, 
			9, 17, 40, 81, 0, 0, 22, 35, 42, 0, 42, 24, 0, 0, 19, 
			8, 22, 15, 57, 0, 0, 36, 12, 32, 0, 34, 24, 0, 0, 33, 
			11, 0, 34, 7, 16, 0, 24, 14, 0, 25, 0, 39, 0, 11, 31, 
			3, 0, 52, 0, 22, 5, 0, 24, 0, 26, 44, 14, 0, 26, 59, 
			0, 0, 41, 0, 68, 4, 0, 13, 44, 25, 0, 0, 0, 0, 0, 
			0, 0, 15, 0, 32, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 5, 9, 0, 
			0, 47, 0, 0, 0, 45, 0, 0, 0, 14, 0, 0, 0, 19, 3, 
			0, 5, 0, 0, 0, 0, 0, 0, 0, 84, 0, 6, 0, 0, 51, 
			0, 0, 0, 48, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, 18, 
			0, 21, 0, 0, 115, 34, 0, 0, 0, 94, 0, 0, 14, 0, 0, 
			0, 0, 21, 0, 61, 17, 11, 0, 0, 92, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 31, 81, 0, 28, 0, 66, 0, 0, 24, 14, 0, 
			0, 22, 0, 25, 0, 59, 0, 0, 19, 0, 42, 0, 19, 5, 0, 
			21, 29, 0, 33, 0, 8, 22, 0, 0, 41, 0, 0, 9, 4, 0, 
			63, 18, 0, 79, 0, 0, 49, 46, 0, 0, 0, 0, 6, 24, 2, 
			135, 81, 0, 64, 4, 33, 42, 41, 16, 14, 16, 18, 11, 17, 11, 
			0, 110, 97, 16, 0, 7, 7, 9, 7, 8, 10, 9, 23, 31, 11, 
			5, 16, 160, 9, 2, 15, 0, 7, 18, 16, 20, 35, 17, 27, 37, 
			0, 19, 25, 58, 15, 44, 45, 16, 8, 0, 1, 19, 22, 0, 0, 
			

			15, 12, 21, 17, 19, 19, 13, 17, 21, 5, 0, 11, 19, 12, 15, 
			24, 19, 20, 12, 29, 48, 0, 2, 0, 46, 21, 10, 14, 22, 15, 
			0, 28, 20, 18, 19, 0, 0, 16, 38, 48, 0, 11, 0, 12, 24, 
			0, 75, 10, 29, 6, 57, 8, 0, 3, 29, 0, 0, 0, 0, 41, 
			0, 18, 0, 92, 23, 6, 0, 0, 0, 98, 8, 0, 15, 0, 15, 
			0, 0, 0, 0, 6, 2, 0, 0, 0, 120, 0, 0, 12, 5, 15, 
			14, 0, 6, 0, 19, 57, 0, 0, 0, 66, 0, 0, 20, 31, 0, 
			3, 0, 4, 5, 39, 0, 0, 0, 0, 28, 0, 0, 21, 0, 13, 
			0, 0, 0, 27, 4, 0, 3, 4, 41, 0, 0, 0, 18, 32, 17, 
			0, 0, 0, 48, 0, 14, 64, 0, 0, 0, 0, 17, 30, 23, 5, 
			27, 0, 0, 126, 0, 0, 0, 0, 0, 5, 39, 35, 14, 15, 10, 
			0, 14, 0, 32, 0, 0, 0, 0, 0, 7, 4, 5, 11, 1, 0, 
			0, 0, 82, 0, 0, 5, 0, 1, 5, 11, 16, 11, 0, 0, 27, 
			0, 0, 34, 0, 0, 9, 0, 0, 5, 5, 0, 0, 0, 22, 0, 
			0, 0, 0, 0, 0, 0, 0, 4, 11, 10, 0, 12, 47, 0, 0, 
			

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
			0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 
			0, 12, 0, 0, 14, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 29, 0, 0, 53, 20, 0, 0, 0, 8, 12, 0, 0, 0, 0, 
			0, 33, 0, 0, 25, 0, 45, 0, 0, 38, 2, 0, 0, 0, 0, 
			0, 26, 0, 0, 2, 61, 22, 10, 0, 25, 0, 0, 0, 1, 0, 
			19, 41, 0, 9, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			29, 39, 0, 19, 1, 0, 0, 5, 0, 1, 0, 0, 0, 0, 0, 
			41, 30, 2, 22, 0, 0, 46, 54, 4, 0, 0, 0, 0, 0, 0, 
			61, 47, 24, 73, 61, 0, 2, 0, 0, 0, 0, 0, 0, 3, 0, 
			0, 39, 25, 67, 0, 0, 0, 0, 0, 0, 0, 0, 12, 10, 1, 
			0, 1, 50, 51, 0, 0, 0, 0, 0, 0, 3, 9, 0, 0, 32, 
			3, 4, 3, 22, 0, 0, 7, 0, 0, 0, 0, 0, 4, 16, 0, 
			

			2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 4, 9, 0, 
			0, 40, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 14, 9, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 0, 5, 0, 0, 37, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 11, 
			0, 0, 0, 16, 102, 13, 0, 0, 0, 29, 0, 0, 1, 0, 0, 
			0, 0, 12, 0, 42, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 40, 0, 20, 0, 43, 0, 0, 9, 15, 1, 
			0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 46, 8, 25, 10, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 
			14, 0, 0, 1, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 
			75, 26, 0, 0, 0, 20, 21, 20, 0, 0, 0, 0, 0, 0, 0, 
			0, 60, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 83, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 
			0, 0, 0, 35, 0, 16, 13, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 2, 0, 0, 
			8, 0, 0, 0, 0, 20, 23, 19, 0, 0, 9, 1, 8, 0, 0, 
			19, 0, 0, 0, 0, 0, 0, 3, 2, 0, 16, 18, 26, 15, 0, 
			7, 0, 0, 0, 0, 0, 18, 17, 22, 0, 0, 12, 0, 11, 0, 
			16, 0, 1, 20, 31, 23, 7, 9, 16, 0, 12, 30, 2, 6, 0, 
			6, 11, 5, 24, 0, 0, 9, 1, 27, 0, 27, 15, 1, 0, 3, 
			1, 9, 0, 0, 0, 0, 26, 24, 22, 0, 21, 28, 4, 9, 11, 
			2, 0, 22, 0, 0, 34, 25, 4, 0, 6, 31, 45, 15, 0, 0, 
			9, 0, 30, 0, 20, 0, 0, 0, 0, 28, 34, 20, 0, 0, 0, 
			0, 0, 34, 0, 0, 0, 0, 17, 16, 4, 0, 0, 0, 0, 0, 
			1, 0, 0, 0, 67, 60, 35, 35, 21, 5, 1, 3, 1, 2, 7, 
			0, 2, 0, 6, 67, 7, 11, 9, 8, 1, 0, 0, 1, 3, 0, 
			10, 0, 0, 48, 18, 0, 5, 9, 7, 3, 4, 11, 9, 0, 21, 
			12, 8, 6, 38, 17, 15, 14, 5, 0, 0, 9, 4, 0, 0, 19, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 
			0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 49, 0, 1, 49, 22, 0, 0, 0, 32, 18, 0, 0, 0, 0, 
			0, 26, 0, 0, 0, 0, 21, 0, 0, 84, 0, 0, 0, 0, 0, 
			10, 0, 0, 0, 0, 46, 0, 0, 0, 58, 0, 0, 0, 9, 0, 
			21, 24, 0, 0, 0, 14, 0, 0, 0, 34, 0, 0, 0, 0, 0, 
			27, 31, 0, 12, 0, 0, 0, 2, 4, 0, 0, 0, 0, 4, 0, 
			24, 33, 0, 42, 0, 0, 23, 28, 0, 0, 0, 0, 0, 0, 0, 
			33, 25, 0, 131, 75, 27, 10, 0, 0, 0, 0, 11, 0, 0, 0, 
			0, 10, 12, 102, 0, 0, 0, 0, 0, 0, 0, 4, 18, 22, 11, 
			10, 0, 53, 10, 0, 8, 0, 2, 4, 13, 23, 29, 8, 5, 48, 
			9, 10, 17, 0, 0, 15, 12, 4, 4, 14, 11, 5, 10, 43, 0, 
			9, 19, 4, 0, 0, 0, 0, 5, 23, 33, 11, 21, 67, 42, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 1, 7, 0, 0, 
			2, 0, 0, 0, 0, 0, 0, 3, 7, 3, 0, 6, 1, 6, 0, 
			6, 10, 0, 0, 0, 0, 2, 4, 11, 0, 0, 5, 1, 5, 0, 
			21, 20, 0, 0, 5, 0, 0, 0, 9, 0, 16, 1, 4, 3, 0, 
			6, 39, 0, 0, 0, 0, 20, 0, 12, 7, 9, 6, 0, 3, 6, 
			16, 17, 0, 0, 0, 28, 13, 6, 0, 0, 2, 6, 7, 11, 0, 
			26, 30, 27, 3, 0, 0, 0, 4, 0, 0, 13, 1, 0, 0, 0, 
			18, 26, 29, 4, 29, 0, 0, 13, 15, 10, 5, 2, 3, 0, 0, 
			29, 20, 24, 3, 20, 36, 49, 45, 35, 6, 24, 38, 44, 31, 30, 
			81, 36, 17, 27, 68, 44, 47, 47, 56, 58, 67, 67, 71, 73, 74, 
			90, 70, 9, 61, 39, 61, 65, 60, 61, 66, 70, 77, 83, 77, 75, 
			92, 79, 65, 67, 53, 61, 63, 65, 66, 72, 80, 86, 78, 91, 109, 
			92, 85, 77, 59, 63, 70, 72, 63, 64, 67, 78, 69, 68, 96, 87, 
			
		others=>0 );
END inmem_package;

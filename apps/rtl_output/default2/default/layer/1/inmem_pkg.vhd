LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					491, 3113, 309, 7852, 3094, 5039, -1141, -1201, 17075, 1090, -1232, 6477, 2309, 5723, 1103, -7878,

					-- weights
					-- layer=1 filter=0 channel=0
					-22, 1, -32, 15, -34, 17, 1, 30, -36,
					-- layer=1 filter=0 channel=1
					7, 41, 67, 20, 71, 43, -17, 72, 40,
					-- layer=1 filter=0 channel=2
					14, -43, 36, 10, -30, -19, -37, 4, -34,
					-- layer=1 filter=0 channel=3
					27, -15, 7, 32, -36, -24, 44, -12, -6,
					-- layer=1 filter=0 channel=4
					-7, 6, 7, -9, -23, 12, 0, 0, 8,
					-- layer=1 filter=0 channel=5
					108, 124, 86, 113, 152, 83, 98, 141, 34,
					-- layer=1 filter=0 channel=6
					-30, 3, -58, -29, -53, -66, 0, 3, -22,
					-- layer=1 filter=0 channel=7
					-8, 104, 50, -20, 102, 62, 10, 78, 20,
					-- layer=1 filter=0 channel=8
					30, -37, -10, -15, -35, -24, 18, -4, 29,
					-- layer=1 filter=0 channel=9
					-10, 0, -6, 20, 25, 26, 4, -22, -70,
					-- layer=1 filter=0 channel=10
					37, -36, 29, 36, -24, 30, -2, -21, 44,
					-- layer=1 filter=0 channel=11
					-47, -48, -20, -62, -61, -72, -8, -34, -27,
					-- layer=1 filter=0 channel=12
					-14, 29, 38, 17, 38, 8, -23, -29, 39,
					-- layer=1 filter=0 channel=13
					3, -11, -1, 53, 9, -39, 17, -27, -1,
					-- layer=1 filter=0 channel=14
					7, -11, 36, -7, -10, 33, -43, -17, -3,
					-- layer=1 filter=0 channel=15
					-36, 13, -27, -12, 34, 28, -15, 4, 38,
					-- layer=1 filter=1 channel=0
					25, 5, 7, -38, 3, -48, -1, -26, -6,
					-- layer=1 filter=1 channel=1
					-14, -28, -24, -36, 38, 44, 1, -12, -23,
					-- layer=1 filter=1 channel=2
					89, 85, 126, -21, -3, 27, -141, -122, -97,
					-- layer=1 filter=1 channel=3
					14, 23, -12, -1, -17, -31, 17, 5, 33,
					-- layer=1 filter=1 channel=4
					31, 24, 9, -7, -37, 17, -47, -32, -44,
					-- layer=1 filter=1 channel=5
					42, 3, 32, -6, -62, -40, -52, -4, -13,
					-- layer=1 filter=1 channel=6
					-59, -11, 27, 8, 46, 5, 52, 57, 57,
					-- layer=1 filter=1 channel=7
					45, 45, 56, 12, 9, 10, -40, -86, -49,
					-- layer=1 filter=1 channel=8
					7, 37, -16, -3, -32, 10, -20, -34, -36,
					-- layer=1 filter=1 channel=9
					-17, -57, -50, -4, 16, 0, 2, -16, 39,
					-- layer=1 filter=1 channel=10
					14, 40, 13, 34, 6, -7, 18, -12, 27,
					-- layer=1 filter=1 channel=11
					-10, -15, -20, 77, 98, 95, 26, 89, 86,
					-- layer=1 filter=1 channel=12
					-15, 23, 7, 0, -12, -9, 7, -37, -7,
					-- layer=1 filter=1 channel=13
					-15, -2, 6, -8, 14, -16, 28, -14, -30,
					-- layer=1 filter=1 channel=14
					113, 97, 79, 1, 80, 8, -102, -117, -36,
					-- layer=1 filter=1 channel=15
					-24, 21, 36, -12, -33, -4, -48, -41, -25,
					-- layer=1 filter=2 channel=0
					-28, 28, -33, -36, -11, -41, 12, 9, -2,
					-- layer=1 filter=2 channel=1
					18, 60, 29, 38, 35, 7, 13, -10, -15,
					-- layer=1 filter=2 channel=2
					-49, -26, 2, -44, -10, -36, -43, 12, 23,
					-- layer=1 filter=2 channel=3
					24, 9, -23, 19, -28, -36, 28, 21, 15,
					-- layer=1 filter=2 channel=4
					-28, 16, 31, -16, 31, -24, 18, 5, 2,
					-- layer=1 filter=2 channel=5
					10, 3, 9, 24, 0, 5, 7, -35, -46,
					-- layer=1 filter=2 channel=6
					18, 18, 2, -22, 16, 68, 9, 80, -4,
					-- layer=1 filter=2 channel=7
					13, 57, 9, 0, 38, -4, -34, -29, -47,
					-- layer=1 filter=2 channel=8
					-26, -23, -16, 9, -4, 10, 19, 22, 15,
					-- layer=1 filter=2 channel=9
					-41, -54, -48, -21, -71, 27, 7, -36, 8,
					-- layer=1 filter=2 channel=10
					-5, 21, -18, 23, 20, -29, 5, 30, 40,
					-- layer=1 filter=2 channel=11
					61, 139, 120, 107, 171, 133, 33, 60, 93,
					-- layer=1 filter=2 channel=12
					23, 26, -30, 28, 49, 10, -6, -22, 40,
					-- layer=1 filter=2 channel=13
					13, -4, -38, 10, -35, -26, -8, 33, 29,
					-- layer=1 filter=2 channel=14
					-2, -9, 29, -70, -20, 0, -30, 17, 30,
					-- layer=1 filter=2 channel=15
					3, 4, 11, 51, -1, -29, 46, -5, 1,
					-- layer=1 filter=3 channel=0
					-45, -28, -58, 4, -26, -46, -24, -6, -10,
					-- layer=1 filter=3 channel=1
					-28, 5, -13, -41, -2, 19, 14, 8, 16,
					-- layer=1 filter=3 channel=2
					28, 21, 40, -25, 32, 4, -32, -56, 2,
					-- layer=1 filter=3 channel=3
					0, 1, 9, -17, -7, 8, 17, -25, 23,
					-- layer=1 filter=3 channel=4
					42, 18, -7, -21, -15, -16, 34, 48, -8,
					-- layer=1 filter=3 channel=5
					2, -58, 8, -10, 29, 6, 20, 19, -50,
					-- layer=1 filter=3 channel=6
					12, -14, -23, 49, 6, -18, -4, -39, -30,
					-- layer=1 filter=3 channel=7
					-47, -41, -19, -43, 1, 16, 27, 5, -25,
					-- layer=1 filter=3 channel=8
					36, 42, 45, 42, 39, 16, 1, 4, -5,
					-- layer=1 filter=3 channel=9
					19, -28, -36, 47, 18, 6, -26, -27, -19,
					-- layer=1 filter=3 channel=10
					37, 32, -41, -11, 11, 13, 2, -22, 18,
					-- layer=1 filter=3 channel=11
					-20, -104, -93, -66, -78, -95, -46, -49, -4,
					-- layer=1 filter=3 channel=12
					22, 40, 48, 1, 37, 19, 10, 72, 42,
					-- layer=1 filter=3 channel=13
					-56, -15, -52, -62, -18, -29, -38, -52, -47,
					-- layer=1 filter=3 channel=14
					6, 22, 31, 39, 10, 4, 7, 1, -27,
					-- layer=1 filter=3 channel=15
					23, 14, -7, -21, 26, 32, -5, 15, 50,
					-- layer=1 filter=4 channel=0
					-38, -15, -23, -40, -35, 13, 0, 34, -20,
					-- layer=1 filter=4 channel=1
					55, 62, 32, 98, 111, 36, 92, 101, 97,
					-- layer=1 filter=4 channel=2
					23, -13, -23, -16, -19, -14, -67, -14, -74,
					-- layer=1 filter=4 channel=3
					-36, 11, -9, 13, 36, 31, -26, -2, -1,
					-- layer=1 filter=4 channel=4
					5, 4, -16, -19, 30, -22, 22, -29, 18,
					-- layer=1 filter=4 channel=5
					16, 54, 50, 69, 68, 39, 72, 61, 57,
					-- layer=1 filter=4 channel=6
					-53, -39, -34, 35, -31, -27, 9, -72, -51,
					-- layer=1 filter=4 channel=7
					64, 79, 73, 114, 125, 90, 58, 54, 53,
					-- layer=1 filter=4 channel=8
					9, 0, -32, 26, 3, 15, 36, 12, 13,
					-- layer=1 filter=4 channel=9
					0, 13, 13, 30, 27, 21, -37, -33, -47,
					-- layer=1 filter=4 channel=10
					-3, -38, 3, -10, 10, -32, 17, -35, -15,
					-- layer=1 filter=4 channel=11
					-17, -67, -52, -68, -82, -81, -28, -41, -25,
					-- layer=1 filter=4 channel=12
					-14, 43, 32, 1, 39, -4, 17, 32, 30,
					-- layer=1 filter=4 channel=13
					-46, -19, 28, -48, -7, -2, -38, -16, -8,
					-- layer=1 filter=4 channel=14
					50, 72, 93, -4, -29, -1, -8, -19, -11,
					-- layer=1 filter=4 channel=15
					-10, -13, 25, 17, -14, -8, 9, 25, -11,
					-- layer=1 filter=5 channel=0
					42, -5, 8, -85, -76, -56, 0, -14, -41,
					-- layer=1 filter=5 channel=1
					-64, -50, -18, -39, 24, 1, 41, -3, -9,
					-- layer=1 filter=5 channel=2
					3, -41, 20, -40, 25, 6, 39, -30, 14,
					-- layer=1 filter=5 channel=3
					-26, 0, -7, -82, -31, -18, -11, -44, -1,
					-- layer=1 filter=5 channel=4
					-28, -29, 14, -41, -3, 7, -7, 8, -36,
					-- layer=1 filter=5 channel=5
					-17, -67, 2, -65, -17, 20, 18, 55, -6,
					-- layer=1 filter=5 channel=6
					81, 76, 82, 86, 49, 35, 7, 52, 38,
					-- layer=1 filter=5 channel=7
					-1, -43, -38, 9, 8, -17, 6, 9, 21,
					-- layer=1 filter=5 channel=8
					-29, 7, -23, 15, 42, -8, 3, 3, 39,
					-- layer=1 filter=5 channel=9
					40, 49, 25, 32, 50, 63, 51, 15, 65,
					-- layer=1 filter=5 channel=10
					-8, 4, -47, 4, -12, 5, 37, 9, -13,
					-- layer=1 filter=5 channel=11
					-57, 46, 21, -2, 36, 27, 77, -5, 40,
					-- layer=1 filter=5 channel=12
					29, 18, 11, 12, 25, 43, 48, 66, 68,
					-- layer=1 filter=5 channel=13
					24, 25, -26, -43, 0, -86, -30, -59, 29,
					-- layer=1 filter=5 channel=14
					0, 0, -11, -25, -37, 15, -14, -3, -39,
					-- layer=1 filter=5 channel=15
					22, 0, 12, -19, 4, 12, 1, -10, -15,
					-- layer=1 filter=6 channel=0
					-31, -29, 23, -6, 15, -10, 31, 32, -18,
					-- layer=1 filter=6 channel=1
					2, 20, 24, 59, 33, 10, 58, 79, 79,
					-- layer=1 filter=6 channel=2
					1, -62, -78, 4, 51, -29, 77, 38, 40,
					-- layer=1 filter=6 channel=3
					-5, 1, -44, 0, -26, 27, 51, 38, 0,
					-- layer=1 filter=6 channel=4
					9, 0, 13, 8, 28, -10, 4, 33, -9,
					-- layer=1 filter=6 channel=5
					28, 67, 69, 35, 69, 34, 77, 109, 41,
					-- layer=1 filter=6 channel=6
					-32, -6, 37, -35, -39, -10, -22, -88, 10,
					-- layer=1 filter=6 channel=7
					-70, -30, -17, -64, 7, 10, 9, 18, 62,
					-- layer=1 filter=6 channel=8
					43, 4, 31, 17, 18, 21, 52, 45, 13,
					-- layer=1 filter=6 channel=9
					57, 7, 54, 31, 66, 62, 24, 62, 63,
					-- layer=1 filter=6 channel=10
					12, 16, 6, -31, -1, -20, -27, -15, 15,
					-- layer=1 filter=6 channel=11
					52, 38, 108, 8, 11, 38, 5, 0, 30,
					-- layer=1 filter=6 channel=12
					-62, -51, -111, -46, -62, -74, -82, -78, -96,
					-- layer=1 filter=6 channel=13
					-37, -34, 16, -35, 4, 10, -18, 10, -4,
					-- layer=1 filter=6 channel=14
					-74, -22, -47, -24, 21, 28, 65, 62, 105,
					-- layer=1 filter=6 channel=15
					-24, -29, -46, 32, 27, -22, 0, 29, 17,
					-- layer=1 filter=7 channel=0
					-12, 16, 56, 37, -25, 17, -21, -35, 9,
					-- layer=1 filter=7 channel=1
					0, -16, -36, 55, 41, 31, 56, 71, 79,
					-- layer=1 filter=7 channel=2
					28, 58, 14, 22, 27, 11, -15, -24, -36,
					-- layer=1 filter=7 channel=3
					3, 28, 37, -20, -15, -21, -15, -15, -30,
					-- layer=1 filter=7 channel=4
					15, 16, 47, 4, -32, 32, -38, -43, -21,
					-- layer=1 filter=7 channel=5
					29, 11, 20, 28, 55, 64, 97, 57, 33,
					-- layer=1 filter=7 channel=6
					10, -14, -59, -36, 4, -3, 9, 41, 0,
					-- layer=1 filter=7 channel=7
					73, 58, 49, 28, 75, 85, 47, 72, 41,
					-- layer=1 filter=7 channel=8
					-10, 38, 55, -10, 28, -23, -35, -53, -39,
					-- layer=1 filter=7 channel=9
					-22, -22, -22, 6, 9, 27, 37, 37, -5,
					-- layer=1 filter=7 channel=10
					6, 6, -16, -39, -30, 27, 12, -27, 15,
					-- layer=1 filter=7 channel=11
					-76, -55, -3, -27, 16, 6, 30, 13, 26,
					-- layer=1 filter=7 channel=12
					55, -13, 18, -23, -13, 14, 3, 11, -18,
					-- layer=1 filter=7 channel=13
					18, 52, 54, -3, -31, -1, -13, -17, -21,
					-- layer=1 filter=7 channel=14
					45, -4, 0, 30, 17, 41, -24, 11, 12,
					-- layer=1 filter=7 channel=15
					11, 33, 30, -9, -19, 4, -18, 12, -39,
					-- layer=1 filter=8 channel=0
					-4, -32, -22, 28, -15, -24, 25, 0, 18,
					-- layer=1 filter=8 channel=1
					-72, -24, -47, -36, -73, -87, -96, -64, -88,
					-- layer=1 filter=8 channel=2
					-29, 17, 8, -91, -18, 7, -126, -57, -54,
					-- layer=1 filter=8 channel=3
					4, -37, -29, 48, -10, 1, 20, 26, -32,
					-- layer=1 filter=8 channel=4
					22, 21, -1, -4, -43, -10, -47, -11, -65,
					-- layer=1 filter=8 channel=5
					58, 10, -32, 47, -12, -65, 49, -25, 47,
					-- layer=1 filter=8 channel=6
					18, -16, 13, -19, -13, -75, -40, -39, -63,
					-- layer=1 filter=8 channel=7
					-24, -36, -14, -20, -89, -31, 0, -39, -69,
					-- layer=1 filter=8 channel=8
					5, 64, 50, 2, 2, -27, -4, -42, -56,
					-- layer=1 filter=8 channel=9
					74, 64, 41, 80, 67, 78, 39, 74, 65,
					-- layer=1 filter=8 channel=10
					-10, -34, -23, 29, 26, -26, 17, 13, -23,
					-- layer=1 filter=8 channel=11
					8, 1, -38, -9, 14, -78, 11, -16, -51,
					-- layer=1 filter=8 channel=12
					22, 72, 27, 7, -4, 26, 18, -12, 11,
					-- layer=1 filter=8 channel=13
					-4, 4, -48, 22, -24, 4, 32, 48, 30,
					-- layer=1 filter=8 channel=14
					-16, 23, 37, -19, -69, -53, -45, -30, -84,
					-- layer=1 filter=8 channel=15
					-14, -8, -26, 29, -43, -35, -11, -13, -57,
					-- layer=1 filter=9 channel=0
					27, 48, 8, 31, -4, 43, 22, 1, -7,
					-- layer=1 filter=9 channel=1
					-30, -64, -111, -19, -96, -81, -52, -91, -83,
					-- layer=1 filter=9 channel=2
					-17, -51, -17, 34, -13, -32, 45, 68, 15,
					-- layer=1 filter=9 channel=3
					49, 6, 41, 50, 14, -11, -7, 0, 31,
					-- layer=1 filter=9 channel=4
					35, 44, 17, 18, 29, 0, 10, 27, -31,
					-- layer=1 filter=9 channel=5
					-6, -13, 8, -43, -29, -16, -6, -64, -66,
					-- layer=1 filter=9 channel=6
					19, 10, 22, -20, -46, -60, -66, -96, -81,
					-- layer=1 filter=9 channel=7
					-57, -70, -56, -33, -86, -43, -11, -53, -29,
					-- layer=1 filter=9 channel=8
					3, 18, -30, -30, 23, -31, 12, 8, -25,
					-- layer=1 filter=9 channel=9
					-9, -39, -46, -11, -4, -28, 41, -32, -41,
					-- layer=1 filter=9 channel=10
					-14, -6, 35, -2, 12, -24, -41, 5, 17,
					-- layer=1 filter=9 channel=11
					-48, -41, -50, -19, -1, -16, 3, 9, -35,
					-- layer=1 filter=9 channel=12
					-62, -65, -19, 11, -21, -19, 0, -41, -24,
					-- layer=1 filter=9 channel=13
					61, 47, 54, 25, 0, 39, 34, 59, 56,
					-- layer=1 filter=9 channel=14
					-37, -73, -45, 46, 9, -29, 42, 45, 63,
					-- layer=1 filter=9 channel=15
					-42, -10, -10, -26, -27, 8, 12, -23, 37,
					-- layer=1 filter=10 channel=0
					24, 45, 36, -23, -19, -4, 19, -30, -34,
					-- layer=1 filter=10 channel=1
					-9, -39, 2, -14, 32, -10, 30, 16, -5,
					-- layer=1 filter=10 channel=2
					36, -3, 20, 37, 38, 18, 47, 59, 51,
					-- layer=1 filter=10 channel=3
					25, 32, 28, 19, -19, -4, -37, -33, 19,
					-- layer=1 filter=10 channel=4
					37, 12, -11, 45, -11, -25, -41, 1, -33,
					-- layer=1 filter=10 channel=5
					0, -1, 1, 33, -16, 21, 17, 24, -15,
					-- layer=1 filter=10 channel=6
					0, 24, 53, 13, 58, 0, 49, -12, 15,
					-- layer=1 filter=10 channel=7
					-16, 32, 31, -31, -1, 16, 13, -18, -2,
					-- layer=1 filter=10 channel=8
					41, 22, 36, -7, 19, 10, 19, -15, -15,
					-- layer=1 filter=10 channel=9
					-24, -61, -54, 1, -15, 8, 43, -19, 41,
					-- layer=1 filter=10 channel=10
					-26, 18, 6, 7, -1, 20, 8, -8, -4,
					-- layer=1 filter=10 channel=11
					41, 46, 83, 92, 95, 105, 53, 13, 59,
					-- layer=1 filter=10 channel=12
					-14, -10, -47, -37, -35, -8, -1, -62, -47,
					-- layer=1 filter=10 channel=13
					-1, 26, 3, 20, 8, -24, 9, -13, -10,
					-- layer=1 filter=10 channel=14
					-34, 0, -34, 35, 16, 59, 81, 88, 30,
					-- layer=1 filter=10 channel=15
					43, 27, -2, -22, 8, -8, -39, -5, 19,
					-- layer=1 filter=11 channel=0
					-3, -1, -53, 14, -31, -57, -34, -32, -25,
					-- layer=1 filter=11 channel=1
					-19, -35, -21, 5, -20, -23, -43, 8, 9,
					-- layer=1 filter=11 channel=2
					-18, 11, 5, -33, -18, 32, -7, -20, 10,
					-- layer=1 filter=11 channel=3
					-29, -24, 20, 38, 37, 5, 36, 32, -7,
					-- layer=1 filter=11 channel=4
					6, 31, 22, 45, 27, 39, 10, 44, 50,
					-- layer=1 filter=11 channel=5
					-16, -17, -4, -9, 14, -29, -10, -36, 12,
					-- layer=1 filter=11 channel=6
					-46, -2, 20, 71, 40, 43, -30, 13, 29,
					-- layer=1 filter=11 channel=7
					2, 14, 1, 6, -2, -5, -16, -5, -44,
					-- layer=1 filter=11 channel=8
					33, 3, -1, 36, 21, 14, -7, 0, -9,
					-- layer=1 filter=11 channel=9
					-15, -26, -46, -25, -6, -46, -5, -49, -76,
					-- layer=1 filter=11 channel=10
					-31, 13, 25, -12, 26, -2, -28, -39, 27,
					-- layer=1 filter=11 channel=11
					-16, -64, -17, -101, -76, -58, -55, -16, -32,
					-- layer=1 filter=11 channel=12
					33, 15, 37, 14, 60, 41, 34, 15, 78,
					-- layer=1 filter=11 channel=13
					-24, -18, -57, -45, -49, -14, -35, -52, -52,
					-- layer=1 filter=11 channel=14
					31, 0, 7, -22, -18, 14, -39, -20, -21,
					-- layer=1 filter=11 channel=15
					-7, -1, 59, 7, 37, 14, 19, -5, 4,
					-- layer=1 filter=12 channel=0
					-21, 16, -11, 37, -5, 26, -9, -6, -39,
					-- layer=1 filter=12 channel=1
					26, 13, 33, 10, -97, -68, -63, -5, 17,
					-- layer=1 filter=12 channel=2
					-28, -20, -22, -15, 35, 48, 6, -23, -9,
					-- layer=1 filter=12 channel=3
					32, -21, -3, 21, 37, 17, -37, -21, -39,
					-- layer=1 filter=12 channel=4
					-17, -27, 31, 40, 44, 40, -21, -43, -16,
					-- layer=1 filter=12 channel=5
					-42, -13, -28, -69, -46, 12, 27, -38, -47,
					-- layer=1 filter=12 channel=6
					30, 47, 26, -1, 27, 80, 2, 25, 62,
					-- layer=1 filter=12 channel=7
					-39, -46, -15, 23, 32, -29, -1, 19, 48,
					-- layer=1 filter=12 channel=8
					6, 29, 61, 40, 10, -5, -6, -76, -66,
					-- layer=1 filter=12 channel=9
					-23, -7, -9, -66, -46, -39, 1, 21, -10,
					-- layer=1 filter=12 channel=10
					38, -17, -26, 34, -2, -12, -7, -9, 17,
					-- layer=1 filter=12 channel=11
					58, 53, 72, 90, 67, 68, 64, 64, -15,
					-- layer=1 filter=12 channel=12
					32, 46, 8, 5, 7, -2, -5, 7, 20,
					-- layer=1 filter=12 channel=13
					-64, -5, -3, 26, 26, -24, 17, -6, 22,
					-- layer=1 filter=12 channel=14
					-28, 11, 2, 12, 39, 29, 3, -26, -49,
					-- layer=1 filter=12 channel=15
					32, 55, 36, 21, -19, 33, -68, -59, -66,
					-- layer=1 filter=13 channel=0
					49, 16, -16, 39, 18, 16, -9, -20, -11,
					-- layer=1 filter=13 channel=1
					1, -13, -25, -37, -75, -21, -51, -30, 16,
					-- layer=1 filter=13 channel=2
					-8, -7, -62, -3, -15, 0, -10, -9, -22,
					-- layer=1 filter=13 channel=3
					3, 18, -5, -24, 20, -13, 32, 40, 29,
					-- layer=1 filter=13 channel=4
					-15, -30, 21, 2, -19, 7, 6, -34, -31,
					-- layer=1 filter=13 channel=5
					-65, -138, -33, -85, -108, -87, -65, -99, -80,
					-- layer=1 filter=13 channel=6
					8, 6, 32, 22, -10, -18, -25, -39, -43,
					-- layer=1 filter=13 channel=7
					-46, -61, -49, -82, -79, -57, -88, -103, -59,
					-- layer=1 filter=13 channel=8
					15, -9, 7, -15, 13, -37, 20, -30, -14,
					-- layer=1 filter=13 channel=9
					-8, -31, -39, -3, -19, -22, 5, 7, -33,
					-- layer=1 filter=13 channel=10
					-15, 6, 20, -19, -1, 18, -31, 42, -3,
					-- layer=1 filter=13 channel=11
					-17, -9, 13, -3, 0, -5, 0, 0, 4,
					-- layer=1 filter=13 channel=12
					78, 83, 76, 66, 70, 24, 79, 41, 97,
					-- layer=1 filter=13 channel=13
					-2, 49, 21, 56, 58, 16, 17, 34, 35,
					-- layer=1 filter=13 channel=14
					-82, -99, -80, -47, -7, -54, -65, -44, -60,
					-- layer=1 filter=13 channel=15
					-22, 33, -27, 16, 12, -17, -18, 52, 50,
					-- layer=1 filter=14 channel=0
					-38, -34, 0, -15, 11, 31, 0, -32, -19,
					-- layer=1 filter=14 channel=1
					24, 39, 0, 45, -13, 63, 59, 49, 19,
					-- layer=1 filter=14 channel=2
					16, -31, 4, -50, -43, -33, -28, -8, -58,
					-- layer=1 filter=14 channel=3
					4, 31, 3, 7, -29, 25, 24, 2, -8,
					-- layer=1 filter=14 channel=4
					-14, -9, 32, 30, -13, 5, 4, -8, -3,
					-- layer=1 filter=14 channel=5
					41, 83, 75, 30, 110, 100, 30, 77, 69,
					-- layer=1 filter=14 channel=6
					-51, -11, -21, -43, -10, -24, -15, -53, -58,
					-- layer=1 filter=14 channel=7
					69, 81, 90, 62, 47, 95, 21, 80, 90,
					-- layer=1 filter=14 channel=8
					33, 15, 33, 33, 32, 26, 17, -14, 7,
					-- layer=1 filter=14 channel=9
					33, 55, 70, 64, 19, 8, 35, 10, -33,
					-- layer=1 filter=14 channel=10
					17, 1, -3, -6, -28, 5, 30, -41, 21,
					-- layer=1 filter=14 channel=11
					-18, -59, -61, -34, -53, -46, -35, -24, -42,
					-- layer=1 filter=14 channel=12
					-9, -43, -33, -12, -19, -3, -21, -24, -25,
					-- layer=1 filter=14 channel=13
					-6, -32, -61, 19, -22, -48, 0, -23, -37,
					-- layer=1 filter=14 channel=14
					18, 14, 40, 20, 6, -12, -48, -64, -16,
					-- layer=1 filter=14 channel=15
					-18, -8, 12, 29, 11, 27, -17, 5, -11,
					-- layer=1 filter=15 channel=0
					30, 26, 58, 61, 72, 32, 3, 30, -3,
					-- layer=1 filter=15 channel=1
					66, 16, -20, 42, -3, -13, -17, 26, -35,
					-- layer=1 filter=15 channel=2
					31, -25, 26, 17, 17, 19, 65, 98, 55,
					-- layer=1 filter=15 channel=3
					-19, -5, 22, 18, -7, 0, 7, 42, -13,
					-- layer=1 filter=15 channel=4
					12, -4, 18, -28, 27, -14, 4, 5, 27,
					-- layer=1 filter=15 channel=5
					35, 42, -8, -5, 4, 0, 27, 21, -34,
					-- layer=1 filter=15 channel=6
					-35, -29, 8, -8, -99, -109, -92, -93, -88,
					-- layer=1 filter=15 channel=7
					9, 0, 33, 24, -6, 9, -19, 28, 4,
					-- layer=1 filter=15 channel=8
					-1, -2, 13, 5, -8, -17, -27, 27, -4,
					-- layer=1 filter=15 channel=9
					-15, -33, 15, -10, -10, 0, -42, 13, 47,
					-- layer=1 filter=15 channel=10
					-33, 0, -38, 12, -2, -3, 28, -4, -29,
					-- layer=1 filter=15 channel=11
					14, 37, 13, 36, 23, 36, -2, 36, -5,
					-- layer=1 filter=15 channel=12
					-32, -100, -37, -46, -44, -68, -54, -20, -30,
					-- layer=1 filter=15 channel=13
					75, 80, 73, 35, 52, 21, 49, 47, -3,
					-- layer=1 filter=15 channel=14
					-12, -34, 27, 14, 54, 31, 22, 44, 23,
					-- layer=1 filter=15 channel=15
					-44, -49, -34, 30, 34, -14, 36, -1, -13,

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 10, 0, 0, 13, 36, 23, 20, 0, 0, 
			3, 0, 0, 0, 0, 0, 0, 18, 22, 16, 43, 28, 27, 11, 0, 
			35, 7, 0, 0, 0, 26, 37, 29, 27, 6, 19, 26, 11, 10, 0, 
			71, 48, 8, 34, 51, 60, 46, 17, 18, 0, 64, 40, 13, 17, 7, 
			63, 71, 3, 0, 9, 30, 45, 44, 22, 21, 58, 29, 20, 15, 20, 
			75, 51, 19, 0, 0, 30, 80, 50, 26, 28, 57, 32, 17, 31, 11, 
			84, 66, 75, 24, 28, 45, 25, 19, 2, 23, 15, 40, 18, 3, 0, 
			78, 75, 66, 33, 27, 34, 17, 26, 35, 32, 36, 3, 0, 0, 0, 
			52, 67, 67, 17, 68, 20, 58, 77, 56, 23, 4, 19, 33, 20, 20, 
			66, 79, 52, 60, 131, 90, 66, 63, 56, 48, 55, 61, 65, 70, 69, 
			80, 69, 60, 101, 89, 59, 61, 58, 55, 55, 59, 62, 74, 74, 67, 
			82, 68, 66, 107, 65, 59, 63, 57, 60, 64, 75, 77, 78, 70, 106, 
			90, 76, 84, 52, 61, 63, 67, 63, 61, 66, 71, 66, 60, 86, 80, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 1, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 8, 31, 0, 0, 0, 10, 1, 
			0, 61, 0, 1, 0, 4, 0, 0, 0, 48, 0, 0, 0, 0, 38, 
			0, 46, 0, 61, 0, 12, 0, 0, 0, 65, 0, 0, 0, 0, 25, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, 0, 7, 0, 0, 
			0, 0, 0, 0, 29, 26, 0, 0, 0, 87, 0, 0, 0, 10, 0, 
			0, 0, 7, 0, 44, 42, 0, 0, 0, 52, 0, 0, 14, 0, 0, 
			0, 0, 0, 12, 0, 0, 0, 0, 26, 0, 0, 0, 0, 15, 16, 
			0, 0, 0, 38, 0, 0, 21, 0, 1, 0, 0, 0, 32, 28, 0, 
			13, 0, 0, 117, 0, 17, 25, 0, 0, 0, 14, 19, 20, 0, 0, 
			28, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 29, 45, 0, 0, 0, 0, 0, 0, 0, 3, 7, 0, 0, 9, 
			0, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 33, 0, 0, 
			

			92, 96, 96, 97, 97, 90, 100, 113, 104, 77, 61, 67, 74, 80, 84, 
			94, 105, 99, 100, 97, 80, 77, 85, 57, 24, 0, 2, 29, 59, 77, 
			60, 74, 106, 107, 105, 84, 55, 27, 1, 0, 0, 0, 0, 6, 58, 
			0, 10, 88, 104, 87, 53, 5, 0, 0, 0, 0, 0, 0, 0, 26, 
			0, 0, 59, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 54, 78, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 31, 86, 13, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 28, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 
			0, 0, 0, 0, 6, 0, 0, 0, 0, 15, 5, 0, 0, 12, 50, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 67, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			186, 193, 189, 194, 191, 188, 198, 194, 187, 181, 165, 159, 167, 170, 158, 
			181, 189, 194, 201, 191, 227, 227, 193, 172, 134, 161, 143, 126, 139, 163, 
			182, 136, 192, 195, 194, 234, 191, 126, 97, 162, 222, 174, 167, 105, 142, 
			200, 104, 200, 191, 208, 158, 213, 163, 146, 160, 239, 173, 142, 98, 94, 
			259, 237, 242, 176, 324, 303, 277, 181, 138, 98, 247, 206, 140, 125, 86, 
			286, 280, 259, 219, 240, 277, 299, 210, 168, 122, 326, 199, 144, 151, 112, 
			275, 325, 192, 198, 172, 237, 336, 259, 204, 190, 295, 186, 140, 150, 167, 
			313, 313, 222, 208, 172, 292, 326, 222, 176, 205, 262, 192, 133, 184, 160, 
			354, 326, 276, 196, 226, 204, 198, 189, 153, 236, 168, 158, 97, 132, 183, 
			329, 329, 298, 202, 245, 168, 179, 279, 213, 182, 155, 67, 97, 178, 200, 
			265, 326, 302, 212, 397, 265, 271, 311, 233, 145, 88, 111, 145, 173, 170, 
			204, 270, 296, 377, 456, 199, 163, 156, 137, 131, 138, 147, 154, 171, 166, 
			178, 181, 229, 448, 255, 149, 151, 140, 135, 133, 143, 161, 180, 170, 176, 
			174, 149, 187, 362, 172, 154, 159, 143, 139, 150, 162, 163, 158, 158, 219, 
			193, 149, 163, 174, 139, 124, 143, 146, 157, 173, 170, 144, 167, 243, 175, 
			

			118, 126, 120, 123, 119, 116, 130, 133, 123, 112, 98, 98, 98, 106, 103, 
			117, 125, 126, 128, 119, 111, 121, 121, 95, 52, 38, 46, 63, 91, 101, 
			110, 99, 125, 129, 125, 132, 98, 55, 31, 22, 50, 33, 37, 47, 89, 
			64, 28, 124, 124, 119, 66, 69, 33, 24, 38, 65, 48, 35, 29, 58, 
			50, 52, 116, 80, 98, 49, 79, 46, 33, 0, 64, 49, 29, 27, 21, 
			39, 78, 119, 78, 111, 86, 93, 57, 39, 3, 81, 54, 34, 25, 13, 
			31, 84, 105, 117, 61, 64, 114, 57, 64, 19, 79, 41, 19, 26, 41, 
			45, 73, 44, 87, 46, 96, 80, 67, 60, 49, 73, 51, 27, 47, 66, 
			60, 64, 45, 61, 48, 57, 69, 50, 40, 54, 85, 49, 17, 60, 95, 
			75, 63, 70, 12, 84, 21, 28, 66, 36, 80, 41, 10, 23, 78, 108, 
			57, 64, 70, 14, 62, 36, 33, 76, 51, 1, 0, 0, 0, 15, 20, 
			11, 40, 60, 59, 115, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 15, 110, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 2, 0, 5, 5, 0, 0, 4, 8, 5, 3, 0, 0, 6, 12, 
			1, 0, 0, 6, 0, 0, 26, 9, 10, 0, 11, 8, 0, 0, 6, 
			26, 0, 0, 6, 0, 0, 43, 18, 0, 0, 23, 17, 31, 0, 0, 
			90, 0, 0, 0, 24, 0, 14, 22, 7, 0, 53, 2, 34, 22, 0, 
			72, 0, 30, 0, 5, 6, 52, 48, 27, 0, 13, 51, 4, 39, 0, 
			50, 0, 44, 5, 0, 6, 50, 36, 66, 0, 60, 64, 0, 24, 20, 
			49, 30, 0, 58, 0, 0, 12, 39, 66, 0, 69, 45, 0, 0, 25, 
			35, 34, 18, 21, 0, 0, 84, 11, 39, 0, 41, 54, 0, 0, 18, 
			45, 0, 93, 0, 22, 0, 24, 16, 0, 18, 0, 64, 0, 0, 0, 
			14, 0, 101, 0, 40, 6, 0, 21, 15, 13, 51, 0, 0, 0, 11, 
			0, 0, 90, 0, 86, 19, 0, 14, 62, 34, 0, 0, 0, 0, 0, 
			0, 0, 19, 0, 97, 57, 0, 0, 12, 0, 0, 0, 0, 0, 5, 
			11, 0, 0, 12, 127, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
			22, 0, 0, 81, 33, 0, 11, 0, 0, 0, 0, 0, 1, 0, 8, 
			32, 0, 0, 1, 11, 0, 0, 0, 0, 0, 10, 0, 0, 18, 44, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 7, 0, 0, 
			0, 0, 0, 0, 0, 4, 4, 30, 8, 0, 0, 0, 0, 9, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 
			0, 0, 0, 0, 0, 14, 20, 0, 0, 0, 52, 3, 7, 0, 0, 
			0, 0, 0, 0, 2, 0, 0, 0, 0, 5, 0, 16, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6, 
			25, 0, 0, 0, 0, 63, 42, 49, 28, 2, 0, 0, 0, 0, 0, 
			0, 14, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 9, 0, 3, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 
			0, 0, 0, 63, 9, 17, 5, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 2, 4, 0, 0, 7, 0, 0, 2, 0, 3, 11, 7, 0, 0, 
			2, 3, 4, 0, 7, 31, 0, 1, 0, 31, 0, 0, 11, 15, 0, 
			0, 38, 1, 0, 2, 7, 0, 0, 11, 42, 0, 0, 0, 4, 21, 
			0, 57, 0, 10, 0, 28, 0, 0, 0, 44, 0, 0, 0, 0, 46, 
			0, 15, 0, 58, 0, 0, 0, 0, 0, 75, 0, 0, 1, 0, 9, 
			0, 12, 0, 0, 73, 0, 0, 0, 0, 129, 0, 0, 8, 0, 0, 
			0, 0, 0, 0, 58, 47, 0, 0, 0, 96, 0, 0, 3, 12, 0, 
			0, 0, 0, 0, 27, 43, 0, 0, 0, 50, 0, 0, 17, 0, 0, 
			0, 0, 0, 35, 0, 1, 0, 0, 24, 0, 11, 0, 17, 17, 0, 
			0, 0, 0, 44, 0, 0, 36, 0, 0, 0, 0, 4, 34, 20, 0, 
			58, 0, 0, 114, 0, 0, 26, 0, 0, 0, 7, 13, 16, 13, 0, 
			31, 33, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 26, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 
			0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 
			0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 22, 0, 0, 
			

			63, 69, 68, 70, 67, 65, 71, 75, 67, 52, 42, 45, 53, 61, 59, 
			67, 72, 73, 72, 68, 69, 65, 56, 34, 17, 14, 14, 21, 39, 56, 
			43, 37, 68, 73, 71, 49, 32, 14, 13, 13, 21, 17, 15, 16, 41, 
			28, 25, 60, 67, 58, 30, 35, 21, 11, 12, 25, 17, 10, 12, 25, 
			22, 34, 58, 46, 59, 44, 32, 21, 10, 4, 29, 26, 15, 15, 14, 
			9, 22, 60, 42, 17, 30, 38, 29, 20, 11, 27, 15, 13, 12, 16, 
			14, 17, 35, 54, 27, 27, 31, 23, 24, 7, 20, 16, 8, 11, 25, 
			17, 17, 22, 35, 28, 31, 22, 13, 24, 23, 23, 15, 8, 20, 39, 
			15, 10, 12, 15, 23, 9, 21, 18, 17, 20, 18, 8, 8, 32, 58, 
			15, 14, 17, 0, 23, 15, 12, 27, 21, 18, 4, 0, 20, 45, 53, 
			0, 12, 14, 12, 35, 25, 5, 0, 6, 0, 0, 0, 0, 0, 0, 
			0, 0, 18, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 21, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6, 3, 2, 0, 0, 
			7, 0, 0, 0, 0, 2, 4, 4, 6, 10, 9, 5, 0, 0, 0, 
			6, 9, 0, 0, 0, 0, 3, 6, 7, 6, 3, 0, 3, 3, 0, 
			5, 10, 0, 0, 0, 0, 0, 2, 3, 0, 2, 4, 0, 0, 12, 
			

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
			0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 28, 4, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 4, 10, 3, 11, 10, 0, 0, 
			37, 26, 0, 0, 0, 0, 30, 10, 0, 0, 0, 0, 0, 0, 0, 
			45, 56, 0, 0, 95, 54, 1, 7, 0, 0, 30, 22, 10, 19, 0, 
			0, 0, 0, 0, 0, 0, 25, 24, 29, 13, 0, 0, 0, 9, 34, 
			14, 0, 0, 0, 0, 2, 0, 6, 9, 0, 0, 9, 0, 12, 16, 
			9, 19, 24, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			5, 0, 2, 0, 0, 0, 0, 7, 6, 0, 0, 0, 0, 0, 3, 
			0, 0, 10, 2, 2, 0, 2, 53, 0, 0, 0, 0, 14, 0, 0, 
			0, 0, 0, 46, 128, 92, 0, 0, 0, 13, 41, 52, 19, 0, 0, 
			0, 0, 17, 11, 0, 0, 0, 0, 0, 0, 1, 0, 10, 5, 4, 
			10, 0, 0, 0, 0, 5, 2, 1, 5, 12, 19, 25, 0, 0, 35, 
			7, 3, 0, 0, 0, 6, 17, 6, 1, 7, 0, 0, 0, 21, 0, 
			9, 3, 0, 0, 0, 0, 0, 0, 20, 27, 10, 6, 44, 35, 14, 
			

			51, 50, 52, 52, 55, 48, 53, 57, 54, 44, 37, 40, 41, 45, 47, 
			55, 52, 56, 52, 55, 52, 41, 42, 32, 31, 19, 23, 33, 43, 45, 
			30, 53, 54, 55, 57, 56, 22, 26, 19, 33, 1, 10, 15, 33, 45, 
			0, 61, 50, 58, 43, 40, 19, 6, 15, 35, 0, 12, 4, 14, 55, 
			0, 37, 33, 62, 15, 10, 0, 0, 9, 43, 11, 0, 17, 9, 37, 
			0, 14, 18, 29, 24, 0, 0, 7, 3, 59, 0, 0, 20, 9, 12, 
			0, 4, 25, 24, 52, 23, 4, 0, 0, 57, 0, 0, 19, 17, 7, 
			0, 0, 13, 21, 45, 23, 0, 10, 0, 49, 0, 0, 20, 12, 25, 
			0, 0, 0, 25, 3, 19, 10, 15, 27, 32, 14, 0, 20, 38, 48, 
			0, 0, 0, 33, 0, 8, 25, 5, 5, 4, 2, 14, 32, 51, 41, 
			17, 0, 0, 40, 0, 0, 7, 0, 0, 4, 7, 4, 11, 21, 9, 
			10, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 8, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 3, 15, 0, 0, 
			4, 0, 0, 0, 0, 0, 0, 0, 8, 0, 7, 8, 7, 6, 0, 
			13, 0, 0, 0, 0, 0, 5, 0, 18, 0, 0, 2, 0, 5, 0, 
			32, 19, 0, 0, 14, 0, 0, 0, 12, 0, 24, 12, 2, 5, 0, 
			9, 55, 0, 0, 0, 0, 21, 0, 15, 0, 23, 5, 2, 0, 0, 
			17, 24, 3, 0, 0, 4, 37, 21, 0, 0, 14, 12, 4, 8, 0, 
			35, 35, 34, 0, 0, 17, 0, 0, 0, 0, 0, 23, 1, 0, 0, 
			25, 33, 41, 16, 17, 0, 0, 2, 13, 7, 32, 7, 0, 0, 0, 
			28, 22, 44, 0, 15, 11, 41, 60, 47, 24, 17, 31, 52, 49, 42, 
			103, 50, 17, 16, 113, 80, 77, 72, 70, 69, 79, 83, 81, 87, 84, 
			111, 89, 10, 69, 77, 72, 79, 73, 73, 74, 82, 83, 97, 96, 84, 
			111, 98, 68, 102, 65, 74, 75, 75, 77, 82, 97, 103, 101, 93, 138, 
			111, 103, 99, 90, 81, 83, 86, 75, 72, 78, 91, 84, 69, 109, 113, 
			

			56, 57, 57, 54, 52, 54, 62, 63, 52, 45, 44, 48, 47, 48, 44, 
			54, 59, 59, 57, 54, 28, 41, 51, 43, 11, 0, 3, 29, 48, 45, 
			39, 67, 60, 59, 60, 40, 22, 9, 8, 0, 0, 0, 0, 28, 46, 
			0, 28, 54, 55, 38, 24, 0, 0, 0, 15, 0, 0, 0, 0, 46, 
			0, 0, 33, 41, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 23, 
			0, 0, 31, 41, 29, 10, 0, 0, 0, 20, 0, 0, 0, 0, 0, 
			0, 0, 42, 25, 23, 7, 0, 0, 0, 6, 0, 0, 0, 0, 0, 
			0, 0, 0, 9, 15, 12, 0, 0, 0, 8, 0, 0, 0, 3, 13, 
			0, 0, 0, 0, 2, 7, 0, 0, 1, 0, 17, 0, 8, 18, 39, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 9, 28, 31, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			74, 68, 75, 75, 72, 66, 78, 81, 71, 55, 46, 51, 57, 64, 63, 
			73, 72, 77, 75, 78, 30, 76, 52, 38, 21, 7, 12, 24, 53, 61, 
			26, 53, 78, 76, 78, 25, 36, 24, 35, 0, 16, 16, 2, 34, 42, 
			6, 20, 76, 72, 45, 46, 18, 31, 8, 25, 9, 18, 10, 15, 32, 
			31, 0, 79, 89, 17, 44, 16, 18, 0, 31, 21, 26, 6, 7, 25, 
			51, 0, 86, 51, 0, 57, 4, 26, 0, 14, 20, 26, 12, 11, 18, 
			71, 0, 65, 49, 0, 27, 3, 23, 8, 0, 23, 18, 7, 14, 27, 
			49, 0, 47, 32, 45, 12, 14, 9, 28, 2, 15, 14, 13, 17, 53, 
			17, 0, 28, 1, 44, 17, 27, 0, 30, 0, 25, 10, 10, 34, 60, 
			4, 7, 2, 0, 37, 34, 26, 0, 27, 28, 0, 9, 8, 35, 57, 
			0, 13, 0, 14, 3, 31, 0, 0, 5, 0, 0, 0, 0, 0, 0, 
			0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 28, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE iwght_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_wght: padroes := ( 
					-- bias
					-- layer=1
					-3626, -3852, 1334, -455, 1090, -3179, -6538, 561, 2506, -3348, 16438, -3576, -1034, 469, -2521, 2286, 10662, 1865, -6256, 342, 5312, -6082, 5468, 5912, -5479, -6700, -9664, 10020, 275, -9489, 940, 6907,

					-- weights
					-- layer=1 filter=0 channel=0
					75, 73, 0, 105, 71, 56, 73, 106, 5,
					-- layer=1 filter=0 channel=1
					-7, -6, -19, 38, 16, 1, 42, 2, 0,
					-- layer=1 filter=0 channel=2
					-31, -39, -23, 35, 24, -16, -11, 25, 24,
					-- layer=1 filter=0 channel=3
					11, -15, -14, -20, 25, 27, 3, 12, -17,
					-- layer=1 filter=0 channel=4
					3, 12, -10, -9, -42, -5, 14, -15, -30,
					-- layer=1 filter=0 channel=5
					-86, -75, -11, -13, -17, -44, 9, 64, 23,
					-- layer=1 filter=0 channel=6
					29, 18, 43, 47, 54, 45, -27, -73, -36,
					-- layer=1 filter=0 channel=7
					-28, -17, -1, 13, 4, 46, -4, 16, 27,
					-- layer=1 filter=0 channel=8
					-38, -54, -32, 22, -18, 28, 13, 10, 39,
					-- layer=1 filter=0 channel=9
					-5, 11, -13, -4, -21, 30, 20, -23, 21,
					-- layer=1 filter=0 channel=10
					100, 89, 58, 4, 73, 32, 15, -27, -17,
					-- layer=1 filter=0 channel=11
					-37, -43, 4, -15, 9, -13, 34, 52, 50,
					-- layer=1 filter=0 channel=12
					3, -51, 3, 15, 33, 8, -1, 7, -6,
					-- layer=1 filter=0 channel=13
					-35, -29, -7, -9, -37, -6, 35, 55, -8,
					-- layer=1 filter=0 channel=14
					-25, -19, -30, 10, -17, 10, 11, 26, 50,
					-- layer=1 filter=0 channel=15
					-71, -73, -44, 0, -17, 1, 67, 72, 28,
					-- layer=1 filter=1 channel=0
					-60, -8, 16, 84, 62, 61, 39, 63, 35,
					-- layer=1 filter=1 channel=1
					-1, 40, -5, -13, 34, -7, -51, -41, -19,
					-- layer=1 filter=1 channel=2
					-15, 12, 7, 3, 24, -2, -8, -27, -27,
					-- layer=1 filter=1 channel=3
					25, 45, -18, -8, 18, 5, 13, 9, -32,
					-- layer=1 filter=1 channel=4
					-27, -58, -53, 42, 24, 2, -32, 44, 41,
					-- layer=1 filter=1 channel=5
					1, 0, 14, 30, 2, -8, -9, -16, -6,
					-- layer=1 filter=1 channel=6
					29, 43, -3, -56, -66, -4, 10, 8, 9,
					-- layer=1 filter=1 channel=7
					37, 24, -3, -9, -7, -5, -20, -35, 6,
					-- layer=1 filter=1 channel=8
					-28, 0, -21, 3, 28, 7, -31, -2, 12,
					-- layer=1 filter=1 channel=9
					3, -24, 4, 6, -15, -12, -18, 2, 5,
					-- layer=1 filter=1 channel=10
					15, 43, 0, 6, -10, 4, 85, 105, 87,
					-- layer=1 filter=1 channel=11
					3, 8, 3, 1, -4, 27, -47, -48, -32,
					-- layer=1 filter=1 channel=12
					-27, -10, 10, 11, 3, 24, 17, 3, -17,
					-- layer=1 filter=1 channel=13
					-25, 18, 11, 16, 15, 27, 22, -9, -45,
					-- layer=1 filter=1 channel=14
					-3, -9, 1, -9, 38, 38, 32, 14, -15,
					-- layer=1 filter=1 channel=15
					57, 50, 63, -3, 3, 23, -50, -58, -68,
					-- layer=1 filter=2 channel=0
					-20, -35, 2, 1, -7, -12, 51, 34, 23,
					-- layer=1 filter=2 channel=1
					47, 14, 17, 26, 23, 8, -30, -29, -13,
					-- layer=1 filter=2 channel=2
					-9, 0, 5, -11, -14, -1, 12, 8, 25,
					-- layer=1 filter=2 channel=3
					0, -27, -17, -5, -19, 3, 12, 39, 22,
					-- layer=1 filter=2 channel=4
					24, 8, 5, 46, 20, 3, 103, 48, 16,
					-- layer=1 filter=2 channel=5
					-8, 38, 49, -4, 35, 33, -84, -76, -77,
					-- layer=1 filter=2 channel=6
					-8, -63, -50, 17, -22, 28, 58, 26, 47,
					-- layer=1 filter=2 channel=7
					23, -42, -12, -2, 1, -45, -21, -26, -24,
					-- layer=1 filter=2 channel=8
					3, -6, -17, -10, -6, -17, 11, 1, -24,
					-- layer=1 filter=2 channel=9
					-21, -16, 12, 13, -29, 20, -6, 11, -14,
					-- layer=1 filter=2 channel=10
					-10, -23, -18, 42, 37, 24, 0, -3, 11,
					-- layer=1 filter=2 channel=11
					45, 31, 50, -5, 0, -30, -75, -70, -54,
					-- layer=1 filter=2 channel=12
					-1, -8, -22, -16, -30, -7, -6, -43, -16,
					-- layer=1 filter=2 channel=13
					13, 20, 13, -3, 21, -5, 3, 6, -5,
					-- layer=1 filter=2 channel=14
					18, 32, 32, -1, -8, 5, -35, -24, -43,
					-- layer=1 filter=2 channel=15
					131, 118, 80, 56, 34, 47, -77, -92, -107,
					-- layer=1 filter=3 channel=0
					13, 7, 4, -22, -13, -30, -21, -32, 9,
					-- layer=1 filter=3 channel=1
					-14, -6, 9, 25, 4, 12, 12, -20, -29,
					-- layer=1 filter=3 channel=2
					-15, 9, -21, -20, -1, -19, 0, -4, -21,
					-- layer=1 filter=3 channel=3
					7, -24, 10, -9, 8, 13, -27, 0, 4,
					-- layer=1 filter=3 channel=4
					14, -29, 1, -14, 19, -16, 7, 15, 16,
					-- layer=1 filter=3 channel=5
					-21, -14, -27, -14, -32, -43, -3, 26, 10,
					-- layer=1 filter=3 channel=6
					-21, 9, 8, 6, -1, -23, -11, -24, 21,
					-- layer=1 filter=3 channel=7
					-21, -25, -26, -24, -21, 12, -33, -17, -31,
					-- layer=1 filter=3 channel=8
					-33, 20, 0, 2, 4, -25, 7, 17, -2,
					-- layer=1 filter=3 channel=9
					13, 28, -24, -9, -19, 28, 19, -20, -1,
					-- layer=1 filter=3 channel=10
					-33, -25, -11, -4, -28, 10, -11, -12, 11,
					-- layer=1 filter=3 channel=11
					-33, -33, -29, 14, -31, 16, -17, -5, -22,
					-- layer=1 filter=3 channel=12
					-11, 3, -37, -33, 9, -13, -11, -29, -20,
					-- layer=1 filter=3 channel=13
					-5, 23, -14, -32, 15, -25, 21, 3, 19,
					-- layer=1 filter=3 channel=14
					-23, -11, 2, 3, 20, 3, 19, -33, -9,
					-- layer=1 filter=3 channel=15
					-13, -4, 15, -18, -1, -29, 11, -28, 8,
					-- layer=1 filter=4 channel=0
					-8, -14, 12, -32, 0, 8, -4, -20, 23,
					-- layer=1 filter=4 channel=1
					30, -11, -10, 53, -13, 1, 14, 7, -10,
					-- layer=1 filter=4 channel=2
					-1, 24, -31, -3, 34, -19, -5, 34, -9,
					-- layer=1 filter=4 channel=3
					-30, 43, 6, -56, 21, -11, -61, 60, -6,
					-- layer=1 filter=4 channel=4
					-3, -15, 18, -33, 28, -22, 0, 38, -2,
					-- layer=1 filter=4 channel=5
					15, -10, 10, 51, -46, 18, 63, -16, -5,
					-- layer=1 filter=4 channel=6
					41, -34, 34, 61, -61, -7, 55, -45, -12,
					-- layer=1 filter=4 channel=7
					-24, 13, 5, -24, 0, -31, 0, 20, -27,
					-- layer=1 filter=4 channel=8
					-12, 15, -8, 28, -18, -16, 8, 19, -17,
					-- layer=1 filter=4 channel=9
					31, -20, 0, -6, -3, -20, -20, 3, 24,
					-- layer=1 filter=4 channel=10
					3, -14, -30, 21, -53, 32, 60, -94, 96,
					-- layer=1 filter=4 channel=11
					-2, 0, 8, -38, 31, -29, -38, 55, -46,
					-- layer=1 filter=4 channel=12
					6, 16, 2, -94, 74, -43, -88, 91, -42,
					-- layer=1 filter=4 channel=13
					-4, 18, 39, -69, 23, -19, -51, 31, -42,
					-- layer=1 filter=4 channel=14
					-21, 36, 22, -62, 53, -14, -84, 98, -44,
					-- layer=1 filter=4 channel=15
					-10, 17, -15, -27, 39, -32, 27, 14, 2,
					-- layer=1 filter=5 channel=0
					-41, -115, -91, -94, -115, -87, -50, -82, -41,
					-- layer=1 filter=5 channel=1
					16, 27, 1, 32, 31, -7, 12, 1, 25,
					-- layer=1 filter=5 channel=2
					39, 22, 38, 44, 26, -15, -28, 24, -17,
					-- layer=1 filter=5 channel=3
					31, -3, 9, 18, 26, -29, -30, -23, -15,
					-- layer=1 filter=5 channel=4
					31, 12, 43, -25, -6, -14, -22, -30, -18,
					-- layer=1 filter=5 channel=5
					-15, -77, -7, -19, -16, -1, -2, -14, 8,
					-- layer=1 filter=5 channel=6
					30, 38, 32, -45, -63, -26, -67, -33, -68,
					-- layer=1 filter=5 channel=7
					39, 3, 31, 10, 4, 18, 0, -6, -34,
					-- layer=1 filter=5 channel=8
					11, 31, 25, -11, 29, 6, -11, -16, 17,
					-- layer=1 filter=5 channel=9
					26, 1, -7, 7, 19, 3, 29, 15, 5,
					-- layer=1 filter=5 channel=10
					-40, -19, -67, -141, -212, -181, -125, -196, -169,
					-- layer=1 filter=5 channel=11
					22, 17, 39, 13, 2, 4, 32, 0, 30,
					-- layer=1 filter=5 channel=12
					-8, 19, 20, -6, -2, 13, -9, -6, -10,
					-- layer=1 filter=5 channel=13
					21, 0, 27, -11, -30, -34, 6, -31, -46,
					-- layer=1 filter=5 channel=14
					-17, -8, -18, 3, 8, -2, 32, 34, 19,
					-- layer=1 filter=5 channel=15
					-10, -39, -41, -16, 2, -7, 32, 20, -7,
					-- layer=1 filter=6 channel=0
					9, 54, 49, -25, 32, 27, 14, -8, 10,
					-- layer=1 filter=6 channel=1
					-7, -9, -15, 20, 34, 23, 15, 10, 13,
					-- layer=1 filter=6 channel=2
					20, 31, 16, -8, -20, 2, -17, 0, 15,
					-- layer=1 filter=6 channel=3
					0, 19, -9, -12, -15, 17, -6, 17, -20,
					-- layer=1 filter=6 channel=4
					-12, -1, 0, -63, -80, -58, -57, -55, -30,
					-- layer=1 filter=6 channel=5
					22, -1, 7, 47, 67, 15, 40, 26, 52,
					-- layer=1 filter=6 channel=6
					-43, 18, -10, -74, -37, -4, -88, -39, -14,
					-- layer=1 filter=6 channel=7
					31, 39, 23, 36, 32, 18, 38, 35, 6,
					-- layer=1 filter=6 channel=8
					10, -1, 45, 42, 22, 50, -9, -9, 38,
					-- layer=1 filter=6 channel=9
					6, 3, -3, -1, 3, -14, -22, 2, 31,
					-- layer=1 filter=6 channel=10
					11, -3, 77, 10, 29, 4, 2, 40, 1,
					-- layer=1 filter=6 channel=11
					-6, -2, -22, 44, 37, -4, 29, 24, -1,
					-- layer=1 filter=6 channel=12
					35, 15, 24, 22, 21, 14, -10, -19, -8,
					-- layer=1 filter=6 channel=13
					-50, -26, -32, -39, 5, -2, 7, -11, 8,
					-- layer=1 filter=6 channel=14
					-8, 0, -16, 0, -3, -14, -8, 14, -2,
					-- layer=1 filter=6 channel=15
					2, 20, 5, 24, 58, -20, 12, 13, 35,
					-- layer=1 filter=7 channel=0
					-34, -22, 14, -54, -72, -64, 0, -80, -52,
					-- layer=1 filter=7 channel=1
					1, -39, -4, -26, -27, -57, 21, -33, -54,
					-- layer=1 filter=7 channel=2
					8, 18, -87, 37, 40, -56, 0, -2, -15,
					-- layer=1 filter=7 channel=3
					40, 4, -47, 5, 46, -10, 22, 9, 5,
					-- layer=1 filter=7 channel=4
					32, -45, -30, 61, 15, -72, 67, 11, -35,
					-- layer=1 filter=7 channel=5
					-6, -42, -17, -14, -29, -33, 21, -22, -35,
					-- layer=1 filter=7 channel=6
					34, -65, -79, 51, -43, -55, 39, -37, 7,
					-- layer=1 filter=7 channel=7
					46, 52, -24, -1, 18, -17, 28, -18, -7,
					-- layer=1 filter=7 channel=8
					9, 6, -61, 11, -13, -60, 32, 15, -51,
					-- layer=1 filter=7 channel=9
					20, -8, -3, -18, 31, 16, -15, -11, -9,
					-- layer=1 filter=7 channel=10
					-13, 40, 29, -30, -46, 58, -24, -73, 10,
					-- layer=1 filter=7 channel=11
					-7, 53, 0, -28, 26, -5, 2, 30, 20,
					-- layer=1 filter=7 channel=12
					37, 61, -44, 28, 36, -5, -4, 8, 20,
					-- layer=1 filter=7 channel=13
					15, 6, -50, 30, 33, -36, 29, 2, -20,
					-- layer=1 filter=7 channel=14
					8, 21, 6, -44, 50, 57, -22, 16, 13,
					-- layer=1 filter=7 channel=15
					-35, 13, 50, -36, 32, 8, -2, -7, 7,
					-- layer=1 filter=8 channel=0
					-123, -140, -100, -164, -162, -120, -97, -99, -66,
					-- layer=1 filter=8 channel=1
					-4, -4, 11, 36, 27, 4, -15, -17, -8,
					-- layer=1 filter=8 channel=2
					-5, 8, -42, -7, 8, -33, 18, 13, 26,
					-- layer=1 filter=8 channel=3
					-25, 22, 23, -12, 32, 1, -16, 17, 27,
					-- layer=1 filter=8 channel=4
					-43, -72, -19, -51, -22, -32, -56, -21, -18,
					-- layer=1 filter=8 channel=5
					14, -31, -6, 15, 10, -10, 11, 10, 11,
					-- layer=1 filter=8 channel=6
					-14, -43, -49, -58, -63, -34, -26, -13, -12,
					-- layer=1 filter=8 channel=7
					0, 14, 3, 41, 30, 20, 40, 37, 24,
					-- layer=1 filter=8 channel=8
					-25, -39, 3, -11, -2, -34, 13, 9, 3,
					-- layer=1 filter=8 channel=9
					25, -4, 6, 15, -11, 0, -7, 24, -22,
					-- layer=1 filter=8 channel=10
					-1, -7, -24, 3, -41, -13, 8, -15, 32,
					-- layer=1 filter=8 channel=11
					33, 31, 29, 22, 13, 17, 7, 28, 31,
					-- layer=1 filter=8 channel=12
					5, -30, 0, 10, -11, 19, 23, 57, 22,
					-- layer=1 filter=8 channel=13
					-25, -60, -18, -22, 7, 3, -14, -20, -14,
					-- layer=1 filter=8 channel=14
					-6, -17, -34, -11, 12, 13, 17, 1, 28,
					-- layer=1 filter=8 channel=15
					-16, 15, -16, 5, -38, -36, 0, -8, 6,
					-- layer=1 filter=9 channel=0
					54, 28, 18, 81, 88, 101, 92, 108, 94,
					-- layer=1 filter=9 channel=1
					-15, 3, -32, 16, -12, 29, 27, -3, 8,
					-- layer=1 filter=9 channel=2
					28, -7, 31, 13, -3, 20, -24, -31, -41,
					-- layer=1 filter=9 channel=3
					27, -13, -10, -22, 3, -15, 7, -30, 11,
					-- layer=1 filter=9 channel=4
					17, -6, -5, -10, -9, -20, -20, 18, 13,
					-- layer=1 filter=9 channel=5
					-20, -3, 0, 4, 51, 17, 33, 45, 5,
					-- layer=1 filter=9 channel=6
					-2, 11, 12, 2, 7, 19, -59, -34, -22,
					-- layer=1 filter=9 channel=7
					-5, 24, -3, 22, -13, 5, -10, -28, -53,
					-- layer=1 filter=9 channel=8
					27, 4, 18, 29, 19, -21, 13, -42, 9,
					-- layer=1 filter=9 channel=9
					7, 7, -35, -21, -17, 8, 1, -23, 12,
					-- layer=1 filter=9 channel=10
					-1, 4, -1, 65, 53, 58, 48, 24, 6,
					-- layer=1 filter=9 channel=11
					7, 9, -13, 16, -1, 27, 7, -17, 24,
					-- layer=1 filter=9 channel=12
					-18, 10, 5, -12, 26, 21, -24, -35, -13,
					-- layer=1 filter=9 channel=13
					-5, 40, 19, -31, 31, 9, 11, 13, -20,
					-- layer=1 filter=9 channel=14
					4, -3, -18, 0, -16, 27, -15, 29, -26,
					-- layer=1 filter=9 channel=15
					-4, -26, 10, 30, 41, 22, 12, 1, 7,
					-- layer=1 filter=10 channel=0
					64, 40, 35, -23, -23, 16, -83, -108, -51,
					-- layer=1 filter=10 channel=1
					-32, 3, 10, 11, -24, 35, -4, 28, 12,
					-- layer=1 filter=10 channel=2
					-16, -57, -24, -45, -96, -24, -31, -10, -15,
					-- layer=1 filter=10 channel=3
					-46, -58, -89, -51, -75, -43, -2, -20, -12,
					-- layer=1 filter=10 channel=4
					78, 37, 44, 1, 25, 26, 26, 26, 2,
					-- layer=1 filter=10 channel=5
					20, 29, 55, -9, 14, 27, 27, 7, 35,
					-- layer=1 filter=10 channel=6
					22, 19, 34, 0, 22, 68, -18, 18, 2,
					-- layer=1 filter=10 channel=7
					-78, -70, -53, -34, -22, 5, 0, 0, -20,
					-- layer=1 filter=10 channel=8
					-37, -41, -12, -88, -52, 35, -41, -51, -21,
					-- layer=1 filter=10 channel=9
					-37, 4, 19, 30, 23, 22, -32, 22, 17,
					-- layer=1 filter=10 channel=10
					-9, 15, 79, 0, 45, 67, 61, 40, 25,
					-- layer=1 filter=10 channel=11
					-31, -7, -43, -20, -23, -26, 26, 31, 42,
					-- layer=1 filter=10 channel=12
					-11, -24, -63, -55, -80, -125, -50, -97, -71,
					-- layer=1 filter=10 channel=13
					61, 25, -6, -4, -26, -39, -27, -37, -13,
					-- layer=1 filter=10 channel=14
					43, 20, -13, 9, -22, -61, -19, -34, -45,
					-- layer=1 filter=10 channel=15
					-13, -28, 3, 25, -22, 12, 39, 53, 50,
					-- layer=1 filter=11 channel=0
					-4, 12, 7, -12, -10, -37, -5, 7, 18,
					-- layer=1 filter=11 channel=1
					33, -1, -7, -24, -6, -30, -29, -32, -44,
					-- layer=1 filter=11 channel=2
					16, -5, 29, 19, 29, -18, -25, 28, -30,
					-- layer=1 filter=11 channel=3
					0, 41, 7, 2, 12, -1, -31, -15, -5,
					-- layer=1 filter=11 channel=4
					-25, -11, 28, 25, 56, 27, -14, 50, 24,
					-- layer=1 filter=11 channel=5
					29, -38, -30, -3, -94, -90, -6, -56, -74,
					-- layer=1 filter=11 channel=6
					8, -41, -10, 16, -1, 4, 12, 23, 47,
					-- layer=1 filter=11 channel=7
					8, 28, -5, 8, -15, 1, -12, 6, 16,
					-- layer=1 filter=11 channel=8
					-3, 30, -14, 24, 36, 4, 19, 5, 26,
					-- layer=1 filter=11 channel=9
					28, 23, 1, 24, -3, -9, -12, 11, -2,
					-- layer=1 filter=11 channel=10
					-29, -56, -52, -75, -176, -42, -60, -111, -70,
					-- layer=1 filter=11 channel=11
					19, -17, -3, -12, -36, -37, -26, -38, -50,
					-- layer=1 filter=11 channel=12
					3, 47, 32, -15, 7, -18, -31, 15, -6,
					-- layer=1 filter=11 channel=13
					8, 51, 42, 22, 54, 13, -7, -10, 25,
					-- layer=1 filter=11 channel=14
					3, 11, -17, -28, 12, 4, -21, -23, -22,
					-- layer=1 filter=11 channel=15
					72, 88, 58, -56, -4, -29, -14, -6, -3,
					-- layer=1 filter=12 channel=0
					-28, 17, -14, -10, -26, -20, 7, -19, 29,
					-- layer=1 filter=12 channel=1
					-5, 6, 1, -30, -16, -8, -29, 13, 12,
					-- layer=1 filter=12 channel=2
					53, -50, 13, 53, -79, -9, 13, -36, -13,
					-- layer=1 filter=12 channel=3
					22, -37, -1, 25, -28, -6, 42, 12, -5,
					-- layer=1 filter=12 channel=4
					-6, -33, -4, 6, -16, 25, 17, -11, 22,
					-- layer=1 filter=12 channel=5
					-56, 11, 49, -73, -1, 25, -38, 13, 9,
					-- layer=1 filter=12 channel=6
					-58, 6, 22, -67, 16, 6, -10, 10, -5,
					-- layer=1 filter=12 channel=7
					32, -32, -10, 46, -36, -6, 11, -13, -2,
					-- layer=1 filter=12 channel=8
					34, -15, 0, 28, -28, 11, -3, -16, 12,
					-- layer=1 filter=12 channel=9
					-9, -10, 28, 27, -12, -13, 6, -27, -7,
					-- layer=1 filter=12 channel=10
					-15, 48, 40, -98, 77, 6, -90, 42, 16,
					-- layer=1 filter=12 channel=11
					9, 0, -33, 15, -53, 12, 59, -38, -21,
					-- layer=1 filter=12 channel=12
					43, -45, -38, 88, -54, -2, 65, -34, 10,
					-- layer=1 filter=12 channel=13
					14, 21, -7, 43, -26, -17, 3, -18, 37,
					-- layer=1 filter=12 channel=14
					71, -29, -39, 78, 0, -40, 48, -18, -20,
					-- layer=1 filter=12 channel=15
					16, 21, -15, 6, 9, -18, 23, 1, 0,
					-- layer=1 filter=13 channel=0
					-6, 4, 53, 7, 44, 94, -32, -69, -12,
					-- layer=1 filter=13 channel=1
					-52, -44, -16, -9, -39, -65, 59, -39, -19,
					-- layer=1 filter=13 channel=2
					-32, -79, -9, 33, -1, -52, 39, 14, -19,
					-- layer=1 filter=13 channel=3
					-4, -23, -61, 31, 10, -15, 11, 28, 5,
					-- layer=1 filter=13 channel=4
					-35, 38, 58, -52, -3, 37, 4, 5, -17,
					-- layer=1 filter=13 channel=5
					-24, 62, 58, -54, -64, -14, -43, -42, -41,
					-- layer=1 filter=13 channel=6
					-29, -41, -31, -7, 7, -25, -2, 0, 12,
					-- layer=1 filter=13 channel=7
					-7, -53, -67, 36, 39, -39, 24, 53, 6,
					-- layer=1 filter=13 channel=8
					-13, 30, 58, -4, -44, 22, 23, 2, -51,
					-- layer=1 filter=13 channel=9
					-13, 5, -1, 5, -42, 27, -16, -17, -22,
					-- layer=1 filter=13 channel=10
					111, 90, -17, 5, 61, 62, -38, 77, 62,
					-- layer=1 filter=13 channel=11
					-20, -59, -27, 38, -1, -17, 16, 37, 26,
					-- layer=1 filter=13 channel=12
					6, -70, -42, 43, 4, -55, 33, 66, 31,
					-- layer=1 filter=13 channel=13
					-4, -31, 1, 19, -23, 13, -8, 21, 6,
					-- layer=1 filter=13 channel=14
					-2, -10, -42, 11, 18, -31, 10, 28, 18,
					-- layer=1 filter=13 channel=15
					-29, 32, -22, 11, 14, 16, -17, -15, -12,
					-- layer=1 filter=14 channel=0
					19, -8, -19, -33, -2, -16, -2, -7, -41,
					-- layer=1 filter=14 channel=1
					4, -44, -36, -2, -35, 8, -15, -25, -15,
					-- layer=1 filter=14 channel=2
					14, -5, -3, -27, -16, -30, -21, -21, 10,
					-- layer=1 filter=14 channel=3
					2, 7, -23, 12, -25, 14, 14, -4, -7,
					-- layer=1 filter=14 channel=4
					-18, -12, -30, -15, -18, 7, 24, 8, 1,
					-- layer=1 filter=14 channel=5
					-6, -25, -8, -42, -7, 6, -32, 21, -12,
					-- layer=1 filter=14 channel=6
					2, 3, 0, 29, 3, 9, -27, 27, -14,
					-- layer=1 filter=14 channel=7
					-33, 4, -28, -33, -23, 18, -13, -1, 28,
					-- layer=1 filter=14 channel=8
					2, 11, -5, 7, 1, -15, -21, -20, -4,
					-- layer=1 filter=14 channel=9
					-16, -10, -13, 14, -24, -18, -22, -23, 11,
					-- layer=1 filter=14 channel=10
					-20, 7, 2, -28, 7, -25, -44, 12, 10,
					-- layer=1 filter=14 channel=11
					-44, -9, 9, -21, 8, -12, -9, -19, -26,
					-- layer=1 filter=14 channel=12
					-41, 1, -9, -14, 16, -30, -28, 15, -17,
					-- layer=1 filter=14 channel=13
					-22, 8, 1, -16, -27, -6, -6, -5, -4,
					-- layer=1 filter=14 channel=14
					8, -7, -40, -11, -22, -6, -12, -30, -37,
					-- layer=1 filter=14 channel=15
					-30, -2, 11, 13, 27, 22, -18, 27, 1,
					-- layer=1 filter=15 channel=0
					30, 29, -53, 61, -30, -85, -40, -52, -44,
					-- layer=1 filter=15 channel=1
					0, -14, 26, 26, 5, 23, 39, -2, 40,
					-- layer=1 filter=15 channel=2
					-1, -25, 2, -61, -9, 58, -60, 17, 72,
					-- layer=1 filter=15 channel=3
					-5, -23, 33, -52, -14, 23, -61, -12, 28,
					-- layer=1 filter=15 channel=4
					-19, -44, 14, -52, -22, 53, -88, 3, 51,
					-- layer=1 filter=15 channel=5
					-16, 10, 33, 12, 10, 21, 32, -10, -32,
					-- layer=1 filter=15 channel=6
					-70, 0, 70, -70, 39, 47, -5, 60, 41,
					-- layer=1 filter=15 channel=7
					-9, -16, 37, -71, 9, 12, -50, -20, 12,
					-- layer=1 filter=15 channel=8
					-27, 1, 3, -56, 18, 37, -10, -6, 67,
					-- layer=1 filter=15 channel=9
					0, -5, -7, 10, -18, 6, -29, -30, 3,
					-- layer=1 filter=15 channel=10
					-76, -16, 49, -26, 16, 64, 0, 34, 8,
					-- layer=1 filter=15 channel=11
					47, -6, -23, 3, 4, -13, -23, -37, -21,
					-- layer=1 filter=15 channel=12
					30, 3, -32, 2, -68, -3, -27, -31, 10,
					-- layer=1 filter=15 channel=13
					23, 3, -31, -45, -40, 43, -28, 22, 74,
					-- layer=1 filter=15 channel=14
					58, 47, -81, 52, -55, -79, -6, -68, -14,
					-- layer=1 filter=15 channel=15
					51, -21, -33, 25, -68, -62, 0, -2, -5,
					-- layer=1 filter=16 channel=0
					60, 54, 13, 33, 29, 1, 11, -10, -1,
					-- layer=1 filter=16 channel=1
					-11, 31, -17, -27, 10, 4, -2, -14, -8,
					-- layer=1 filter=16 channel=2
					14, -5, -9, -1, 24, 19, 28, 1, 29,
					-- layer=1 filter=16 channel=3
					24, -1, 7, -6, -5, 4, 25, -19, -3,
					-- layer=1 filter=16 channel=4
					15, 26, 24, 70, 36, 53, 72, 19, 66,
					-- layer=1 filter=16 channel=5
					-28, -71, -22, -79, -74, -76, -61, -102, -90,
					-- layer=1 filter=16 channel=6
					11, 5, 35, -9, 28, 2, 32, 39, 14,
					-- layer=1 filter=16 channel=7
					-12, -24, 13, -33, -15, -37, -15, -38, 0,
					-- layer=1 filter=16 channel=8
					-35, -12, 17, 3, 0, -22, -11, -16, -14,
					-- layer=1 filter=16 channel=9
					-10, -19, -13, 16, 0, 5, 18, -24, 26,
					-- layer=1 filter=16 channel=10
					48, 36, 21, -22, -9, -16, -8, -17, -14,
					-- layer=1 filter=16 channel=11
					-10, -47, -55, -40, -24, -35, -56, -10, -34,
					-- layer=1 filter=16 channel=12
					-6, 9, -14, 1, -13, -1, 12, -34, -8,
					-- layer=1 filter=16 channel=13
					-32, -8, 5, 0, -5, -5, -18, -13, -20,
					-- layer=1 filter=16 channel=14
					8, -13, -22, 1, -3, 26, 6, -18, -1,
					-- layer=1 filter=16 channel=15
					-8, -13, 23, 4, 32, 46, -28, -19, -25,
					-- layer=1 filter=17 channel=0
					32, -12, 5, 3, 0, -48, -2, 13, -17,
					-- layer=1 filter=17 channel=1
					-16, 20, 6, -36, 51, -4, -40, 43, 7,
					-- layer=1 filter=17 channel=2
					-40, 22, 52, -57, 15, 24, -24, -8, 29,
					-- layer=1 filter=17 channel=3
					-52, -2, 20, -9, 1, 25, -17, -29, 33,
					-- layer=1 filter=17 channel=4
					-39, 19, 38, -48, -7, 52, -30, 24, 0,
					-- layer=1 filter=17 channel=5
					44, 8, -54, 20, 29, -39, -15, 23, 5,
					-- layer=1 filter=17 channel=6
					-14, 35, -12, -39, 32, 0, 20, 10, 25,
					-- layer=1 filter=17 channel=7
					-39, 6, 29, -12, -12, 29, -4, -48, 24,
					-- layer=1 filter=17 channel=8
					-22, 25, 15, -22, 7, 10, -48, 20, 6,
					-- layer=1 filter=17 channel=9
					-15, 7, -7, 24, -28, -7, 18, 18, 19,
					-- layer=1 filter=17 channel=10
					27, -3, -37, 41, -6, -84, 32, 14, -52,
					-- layer=1 filter=17 channel=11
					-38, -4, 22, -7, -11, 33, -44, -8, 28,
					-- layer=1 filter=17 channel=12
					-35, 11, 32, -47, -68, 29, -3, -70, 49,
					-- layer=1 filter=17 channel=13
					-27, -9, 19, -15, -35, -1, -55, 3, -3,
					-- layer=1 filter=17 channel=14
					-20, -43, 32, 0, -107, 54, 18, -52, 3,
					-- layer=1 filter=17 channel=15
					10, -15, -4, -5, -23, 9, 23, 11, -18,
					-- layer=1 filter=18 channel=0
					14, -34, -3, -10, -28, -78, -9, -35, -71,
					-- layer=1 filter=18 channel=1
					-33, -38, -27, -20, -5, -10, -34, -23, 4,
					-- layer=1 filter=18 channel=2
					0, -12, -26, 26, 31, -22, 4, 19, 17,
					-- layer=1 filter=18 channel=3
					-13, -20, 11, 4, -6, 19, 24, -19, -34,
					-- layer=1 filter=18 channel=4
					28, 15, -19, 3, 28, -5, 15, 20, -10,
					-- layer=1 filter=18 channel=5
					-25, -54, -1, -4, 17, 33, 32, 8, 34,
					-- layer=1 filter=18 channel=6
					2, 15, -22, 31, 42, -12, 53, 37, -17,
					-- layer=1 filter=18 channel=7
					13, 29, -8, -20, 7, 15, -19, 10, 13,
					-- layer=1 filter=18 channel=8
					-25, 0, -12, 20, -2, -8, 17, 25, 27,
					-- layer=1 filter=18 channel=9
					-19, 0, -1, -10, -14, -6, 1, 13, 11,
					-- layer=1 filter=18 channel=10
					0, 23, -13, 4, -43, -35, 10, 10, 1,
					-- layer=1 filter=18 channel=11
					-56, -44, -14, -42, -30, 5, 0, -5, 25,
					-- layer=1 filter=18 channel=12
					16, 15, -15, 0, 41, -11, 27, 42, 28,
					-- layer=1 filter=18 channel=13
					25, -17, -20, 60, 18, 50, 9, -1, 27,
					-- layer=1 filter=18 channel=14
					6, -38, 5, -23, -25, -5, 8, 0, -16,
					-- layer=1 filter=18 channel=15
					-41, -14, 7, 25, 35, 97, 74, 91, 61,
					-- layer=1 filter=19 channel=0
					36, 46, -1, 62, 70, 72, 1, -72, -51,
					-- layer=1 filter=19 channel=1
					-25, 36, -15, -26, -19, -16, -11, 22, -7,
					-- layer=1 filter=19 channel=2
					20, 30, 12, -9, -34, -33, -4, 2, 45,
					-- layer=1 filter=19 channel=3
					14, -17, 4, -24, 1, -9, 6, 39, 33,
					-- layer=1 filter=19 channel=4
					16, 48, 26, 1, 25, 53, -52, -64, -83,
					-- layer=1 filter=19 channel=5
					-16, 34, -8, -15, -35, -43, 0, -39, -39,
					-- layer=1 filter=19 channel=6
					-36, -56, -37, 28, -16, -6, 25, 76, 40,
					-- layer=1 filter=19 channel=7
					-12, -12, -24, 12, -5, -39, 38, 57, 24,
					-- layer=1 filter=19 channel=8
					25, 1, 26, -40, -1, -23, 17, 18, -1,
					-- layer=1 filter=19 channel=9
					-12, 21, -8, 12, -21, -6, -4, -22, 5,
					-- layer=1 filter=19 channel=10
					26, -64, -49, 48, 94, 62, 18, 60, 33,
					-- layer=1 filter=19 channel=11
					17, 4, 6, -8, -12, -39, 30, 42, 20,
					-- layer=1 filter=19 channel=12
					10, -15, 32, -17, 0, -35, 14, -3, 12,
					-- layer=1 filter=19 channel=13
					14, 34, 12, -37, -34, -39, 21, -8, -33,
					-- layer=1 filter=19 channel=14
					-11, 11, 47, 17, -19, -29, -54, 0, -27,
					-- layer=1 filter=19 channel=15
					38, 19, 24, -13, -46, -28, 1, -23, 23,
					-- layer=1 filter=20 channel=0
					-39, -31, 14, -104, -90, -37, -94, -58, -54,
					-- layer=1 filter=20 channel=1
					7, 20, -8, 15, 5, 1, 12, 38, -19,
					-- layer=1 filter=20 channel=2
					14, -16, 38, -12, 14, -28, -23, -44, -27,
					-- layer=1 filter=20 channel=3
					17, 0, -1, -39, -43, -30, 52, -18, -34,
					-- layer=1 filter=20 channel=4
					18, -15, 24, -47, -7, 19, -13, 21, 33,
					-- layer=1 filter=20 channel=5
					61, 50, 64, 79, 93, 54, 33, 80, 47,
					-- layer=1 filter=20 channel=6
					-29, -68, 0, -79, -76, -32, -40, -45, -51,
					-- layer=1 filter=20 channel=7
					-32, -28, 30, -59, -39, -49, 20, -42, -60,
					-- layer=1 filter=20 channel=8
					1, 9, 5, -6, -5, 22, -34, -5, -22,
					-- layer=1 filter=20 channel=9
					-24, -23, -15, 28, -6, -3, 11, -9, 22,
					-- layer=1 filter=20 channel=10
					-117, -150, -94, -114, -102, -74, -28, -26, -14,
					-- layer=1 filter=20 channel=11
					7, 24, -18, 21, 23, -7, 6, 0, 21,
					-- layer=1 filter=20 channel=12
					23, 11, -10, 5, -19, 2, 10, 2, -11,
					-- layer=1 filter=20 channel=13
					9, -33, 24, 0, 13, 66, 7, 61, 62,
					-- layer=1 filter=20 channel=14
					4, 26, 19, 17, 3, 35, 14, -16, -3,
					-- layer=1 filter=20 channel=15
					24, 15, -4, 4, 8, -19, 55, 54, 17,
					-- layer=1 filter=21 channel=0
					55, 25, 49, 68, 102, 37, 58, 39, 25,
					-- layer=1 filter=21 channel=1
					28, -19, -3, -38, -20, 21, -3, -27, 8,
					-- layer=1 filter=21 channel=2
					14, 35, 19, -11, -7, -14, 5, -25, -37,
					-- layer=1 filter=21 channel=3
					15, 4, 17, -18, 9, -36, -14, -9, 12,
					-- layer=1 filter=21 channel=4
					22, 16, -12, 4, 14, 3, -19, -21, 16,
					-- layer=1 filter=21 channel=5
					11, 19, -26, -7, 37, 7, 14, -25, -12,
					-- layer=1 filter=21 channel=6
					-22, -15, -1, -52, -19, -27, -15, 39, 17,
					-- layer=1 filter=21 channel=7
					22, 43, 6, -2, -8, -8, -22, -38, -27,
					-- layer=1 filter=21 channel=8
					43, 28, -12, -10, -11, 5, -3, -27, -27,
					-- layer=1 filter=21 channel=9
					14, 5, -18, 22, 4, -11, 24, -16, 9,
					-- layer=1 filter=21 channel=10
					2, 5, -49, 41, 37, 28, 26, 48, 48,
					-- layer=1 filter=21 channel=11
					13, 28, 6, -13, 1, 20, -4, 6, 0,
					-- layer=1 filter=21 channel=12
					-2, 19, 33, 9, 23, 7, -26, -29, -5,
					-- layer=1 filter=21 channel=13
					45, 21, 34, -10, 34, 0, -21, -41, 11,
					-- layer=1 filter=21 channel=14
					-25, -4, -5, 16, 40, -25, 18, -27, -23,
					-- layer=1 filter=21 channel=15
					40, 32, -13, 48, 6, 30, -1, 28, -10,
					-- layer=1 filter=22 channel=0
					-23, -45, -8, -3, -17, -20, -6, 21, -27,
					-- layer=1 filter=22 channel=1
					12, 3, -12, -43, 7, -12, 5, -3, 12,
					-- layer=1 filter=22 channel=2
					-14, -9, 18, -7, -34, 3, 12, -44, 17,
					-- layer=1 filter=22 channel=3
					43, -35, 35, 29, -63, 12, 2, -54, -10,
					-- layer=1 filter=22 channel=4
					-67, -34, -50, -22, -15, -3, -46, 8, 1,
					-- layer=1 filter=22 channel=5
					-8, 13, -18, -12, 6, -38, 4, 19, -16,
					-- layer=1 filter=22 channel=6
					-20, 12, -52, -41, -2, -38, -30, 37, -49,
					-- layer=1 filter=22 channel=7
					3, -27, 32, -30, -10, -2, 2, 5, 16,
					-- layer=1 filter=22 channel=8
					23, -27, -5, -21, -12, -25, -12, 7, 20,
					-- layer=1 filter=22 channel=9
					14, 24, 13, -12, -9, -1, 25, -29, 21,
					-- layer=1 filter=22 channel=10
					9, 41, 11, 32, 65, -15, -1, 74, 9,
					-- layer=1 filter=22 channel=11
					-17, -16, 13, -10, -25, 39, 36, -2, 46,
					-- layer=1 filter=22 channel=12
					42, -69, 32, 37, -89, 46, 9, -64, 37,
					-- layer=1 filter=22 channel=13
					48, -26, -19, -1, -6, -11, -11, -9, -16,
					-- layer=1 filter=22 channel=14
					5, -62, -6, 47, -56, 3, -3, -54, 37,
					-- layer=1 filter=22 channel=15
					11, 3, 29, -22, -36, 37, -21, 6, -6,
					-- layer=1 filter=23 channel=0
					15, 46, 42, 34, 11, 77, 32, 30, 51,
					-- layer=1 filter=23 channel=1
					13, 34, 26, -12, -6, 32, 0, 5, 19,
					-- layer=1 filter=23 channel=2
					-4, 15, 2, -8, 5, 7, -22, 0, 12,
					-- layer=1 filter=23 channel=3
					7, -13, -25, 11, 5, 5, 26, -11, -15,
					-- layer=1 filter=23 channel=4
					-53, -32, -34, -82, -78, -21, -96, -66, -50,
					-- layer=1 filter=23 channel=5
					-3, -44, -48, -34, -21, -15, -33, -14, -48,
					-- layer=1 filter=23 channel=6
					-19, 23, 13, -29, -36, -22, -16, 0, -33,
					-- layer=1 filter=23 channel=7
					-1, 13, 12, -2, -14, 22, -20, 23, -10,
					-- layer=1 filter=23 channel=8
					1, -25, -25, -5, 11, -28, 26, 19, -14,
					-- layer=1 filter=23 channel=9
					30, -14, -8, -27, 31, 9, 6, 25, 15,
					-- layer=1 filter=23 channel=10
					1, -17, -1, 16, 7, 30, 18, 42, 50,
					-- layer=1 filter=23 channel=11
					25, 38, 0, -6, 19, 13, 42, 2, 30,
					-- layer=1 filter=23 channel=12
					-20, -32, 8, 2, 17, 5, 12, -2, -22,
					-- layer=1 filter=23 channel=13
					-28, -58, -44, -15, -10, -26, -48, -58, 2,
					-- layer=1 filter=23 channel=14
					-1, 9, 6, 3, 29, -23, 8, 0, 13,
					-- layer=1 filter=23 channel=15
					29, -9, -2, -2, 0, -31, 0, 10, 8,
					-- layer=1 filter=24 channel=0
					29, 2, -4, 42, 11, 21, 69, 58, 25,
					-- layer=1 filter=24 channel=1
					-65, -61, -65, -1, -18, 9, -21, 13, -8,
					-- layer=1 filter=24 channel=2
					29, 3, -19, 1, -42, -24, -13, -39, -48,
					-- layer=1 filter=24 channel=3
					-17, 10, -7, 47, 27, -24, -12, 1, -27,
					-- layer=1 filter=24 channel=4
					44, 43, 20, 60, 31, -16, 72, 27, -2,
					-- layer=1 filter=24 channel=5
					3, 42, 29, 36, -3, -1, -17, 16, -9,
					-- layer=1 filter=24 channel=6
					20, -1, 5, 52, 44, 12, 1, 13, 5,
					-- layer=1 filter=24 channel=7
					25, 22, -4, 32, -6, -8, 19, 10, -37,
					-- layer=1 filter=24 channel=8
					-3, 19, 0, 17, -26, 15, 10, 2, -18,
					-- layer=1 filter=24 channel=9
					31, 9, 14, 30, -8, 0, 12, 24, -19,
					-- layer=1 filter=24 channel=10
					-26, 28, 0, 49, 0, 10, -19, -6, -15,
					-- layer=1 filter=24 channel=11
					-6, 10, -27, 2, -17, -19, -3, -35, -35,
					-- layer=1 filter=24 channel=12
					38, 8, 18, -8, 10, -13, -4, -8, -23,
					-- layer=1 filter=24 channel=13
					48, 6, 4, 35, 23, -3, 41, 6, 19,
					-- layer=1 filter=24 channel=14
					-2, 6, -20, -18, 0, 34, 20, 9, -15,
					-- layer=1 filter=24 channel=15
					31, 11, 28, 40, 74, 71, 25, 3, 14,
					-- layer=1 filter=25 channel=0
					22, -9, -36, 30, -7, -9, 62, 13, -43,
					-- layer=1 filter=25 channel=1
					9, -2, -16, -21, 33, 0, 10, -5, 0,
					-- layer=1 filter=25 channel=2
					-37, -11, -44, -14, 0, -10, 60, 57, 29,
					-- layer=1 filter=25 channel=3
					-11, -57, -58, 32, 19, 27, 40, 19, 19,
					-- layer=1 filter=25 channel=4
					18, -16, -25, -43, -33, -8, 13, 23, 9,
					-- layer=1 filter=25 channel=5
					29, 30, 8, -72, -32, -18, -80, -32, -8,
					-- layer=1 filter=25 channel=6
					-48, -5, -10, 28, 42, 29, 41, 0, 34,
					-- layer=1 filter=25 channel=7
					-5, -8, -60, 37, 52, 0, 26, 48, 8,
					-- layer=1 filter=25 channel=8
					-33, -7, -11, 20, -12, -28, 53, 12, 0,
					-- layer=1 filter=25 channel=9
					17, 11, 6, 15, 2, 8, 17, 20, -22,
					-- layer=1 filter=25 channel=10
					8, 27, 14, 31, 46, 9, 7, 58, 34,
					-- layer=1 filter=25 channel=11
					6, 1, -25, -6, 18, 3, 15, -2, 21,
					-- layer=1 filter=25 channel=12
					-35, -49, -23, -18, 8, 10, -4, 23, 30,
					-- layer=1 filter=25 channel=13
					-25, -19, -29, -9, -25, -21, 17, 7, 23,
					-- layer=1 filter=25 channel=14
					32, -14, 6, -12, -27, -7, 19, -22, -45,
					-- layer=1 filter=25 channel=15
					39, 23, -19, -25, 8, -9, 11, 31, 4,
					-- layer=1 filter=26 channel=0
					65, 34, 22, 25, -23, 6, -3, -47, -2,
					-- layer=1 filter=26 channel=1
					-12, -24, -40, -33, -9, -37, -4, -17, -26,
					-- layer=1 filter=26 channel=2
					29, 25, 15, 4, -11, -28, -27, -21, -23,
					-- layer=1 filter=26 channel=3
					-8, 23, 10, -25, -25, 3, 15, 2, 26,
					-- layer=1 filter=26 channel=4
					40, 23, -17, -22, -26, 20, -36, -14, 2,
					-- layer=1 filter=26 channel=5
					-88, -73, -62, 20, -2, 45, 68, 55, 90,
					-- layer=1 filter=26 channel=6
					33, 25, 3, -28, -8, 35, 35, 46, 5,
					-- layer=1 filter=26 channel=7
					16, -9, 25, 29, 33, 29, 35, 18, 28,
					-- layer=1 filter=26 channel=8
					13, -24, -22, 12, 25, 15, -11, 25, 16,
					-- layer=1 filter=26 channel=9
					-24, 14, 14, 18, 34, 22, 0, 26, 0,
					-- layer=1 filter=26 channel=10
					14, 23, 23, 3, -25, -27, 54, 74, 54,
					-- layer=1 filter=26 channel=11
					-13, -45, -43, 14, -5, 5, -2, 35, 45,
					-- layer=1 filter=26 channel=12
					2, -20, -17, 17, 21, 2, 9, -9, -10,
					-- layer=1 filter=26 channel=13
					-5, 18, -22, 13, 2, 8, -19, 24, 24,
					-- layer=1 filter=26 channel=14
					-9, 13, -35, -20, -13, -47, -10, -10, 21,
					-- layer=1 filter=26 channel=15
					-44, -69, -46, 30, 63, 64, 73, 65, 67,
					-- layer=1 filter=27 channel=0
					2, -13, -19, -15, -26, 4, -35, -19, 25,
					-- layer=1 filter=27 channel=1
					29, 2, 14, 14, 13, 40, 24, 30, 11,
					-- layer=1 filter=27 channel=2
					16, 2, -22, -18, 28, 0, 31, 14, 22,
					-- layer=1 filter=27 channel=3
					6, 6, -23, 28, -4, -22, 28, 21, -20,
					-- layer=1 filter=27 channel=4
					-22, -15, -19, 14, -21, -14, 25, -9, -21,
					-- layer=1 filter=27 channel=5
					-34, -54, -43, -64, -67, 4, -50, -42, -40,
					-- layer=1 filter=27 channel=6
					-14, 9, -50, -6, -65, -27, -5, -28, -5,
					-- layer=1 filter=27 channel=7
					-6, -11, -20, -17, -24, 4, -3, -37, 7,
					-- layer=1 filter=27 channel=8
					-31, -11, -42, -19, 1, -36, -10, -13, 26,
					-- layer=1 filter=27 channel=9
					-4, -26, -22, -6, 11, 4, 17, -10, -19,
					-- layer=1 filter=27 channel=10
					44, 69, 0, 11, 6, 25, 4, 19, 35,
					-- layer=1 filter=27 channel=11
					36, -17, -7, 31, -23, -14, 7, 12, 18,
					-- layer=1 filter=27 channel=12
					-12, -7, 3, -38, -15, 6, 13, 10, 15,
					-- layer=1 filter=27 channel=13
					-17, -37, -7, -41, -13, -36, 0, -40, -28,
					-- layer=1 filter=27 channel=14
					20, -24, 0, -8, -17, -6, 0, 7, -4,
					-- layer=1 filter=27 channel=15
					-33, -18, 12, -36, -8, -65, -35, -34, -2,
					-- layer=1 filter=28 channel=0
					8, -19, -17, -12, -43, -17, -13, -24, -45,
					-- layer=1 filter=28 channel=1
					-30, -24, -34, -42, -18, 17, -11, -31, -9,
					-- layer=1 filter=28 channel=2
					-71, -54, -5, -42, 6, -6, -25, -10, 16,
					-- layer=1 filter=28 channel=3
					-44, -28, 25, -13, 12, 7, -8, -14, 20,
					-- layer=1 filter=28 channel=4
					27, 26, -14, -20, 21, 11, -23, -19, 37,
					-- layer=1 filter=28 channel=5
					106, 46, 50, 90, 78, 62, 40, 36, 37,
					-- layer=1 filter=28 channel=6
					35, 38, 69, 24, 37, 21, -15, 21, 3,
					-- layer=1 filter=28 channel=7
					-24, -49, -2, 38, -23, 29, 11, -24, -25,
					-- layer=1 filter=28 channel=8
					-38, -16, -46, -20, 0, 10, -28, 13, 9,
					-- layer=1 filter=28 channel=9
					8, 8, 4, -8, 6, 28, -26, 16, 15,
					-- layer=1 filter=28 channel=10
					-3, 26, -1, 45, 53, 17, 103, 41, 0,
					-- layer=1 filter=28 channel=11
					27, -14, -24, 0, 35, -6, 26, 9, 8,
					-- layer=1 filter=28 channel=12
					0, -44, -19, 4, -24, -31, 12, 9, -4,
					-- layer=1 filter=28 channel=13
					32, -8, 22, 52, 49, 31, 43, 55, 9,
					-- layer=1 filter=28 channel=14
					-22, -20, -30, 7, -55, -1, 2, -23, -34,
					-- layer=1 filter=28 channel=15
					52, 21, -36, 94, 54, -28, 41, -16, -61,
					-- layer=1 filter=29 channel=0
					8, 13, 2, -17, 2, -40, -31, -17, 11,
					-- layer=1 filter=29 channel=1
					-22, -28, -9, 26, 12, -6, -18, -12, -11,
					-- layer=1 filter=29 channel=2
					-24, 28, 11, -25, 38, 35, 9, 28, -5,
					-- layer=1 filter=29 channel=3
					-47, -14, -29, 17, 24, 17, -14, 23, 22,
					-- layer=1 filter=29 channel=4
					0, 2, 12, -31, 11, 21, 23, 20, 24,
					-- layer=1 filter=29 channel=5
					29, 10, -49, -21, 7, -14, 10, 28, 36,
					-- layer=1 filter=29 channel=6
					16, 39, 16, 32, 11, -25, -9, -29, -49,
					-- layer=1 filter=29 channel=7
					20, 35, 21, 20, 31, 3, 10, -31, 6,
					-- layer=1 filter=29 channel=8
					5, 10, 39, 31, 23, 8, -26, 14, -25,
					-- layer=1 filter=29 channel=9
					-16, 15, 7, 22, -34, -18, -11, 4, -15,
					-- layer=1 filter=29 channel=10
					34, 3, -29, -37, -79, -92, -18, -63, -66,
					-- layer=1 filter=29 channel=11
					-14, -12, -15, -18, 8, -30, -18, 15, 14,
					-- layer=1 filter=29 channel=12
					1, 21, 30, -24, 20, 3, -45, -23, 10,
					-- layer=1 filter=29 channel=13
					6, 37, 34, 28, 26, 4, 18, -17, -1,
					-- layer=1 filter=29 channel=14
					-41, -35, -13, -25, 23, 0, -8, 10, 25,
					-- layer=1 filter=29 channel=15
					-32, 0, 42, 49, 24, 26, 6, 65, 34,
					-- layer=1 filter=30 channel=0
					36, -19, 51, -27, -10, 21, -21, -2, 7,
					-- layer=1 filter=30 channel=1
					-18, 40, 37, 13, 50, 14, 39, 49, 56,
					-- layer=1 filter=30 channel=2
					18, 39, -9, 12, 15, 27, 27, 1, -24,
					-- layer=1 filter=30 channel=3
					27, 26, 5, 26, 5, -3, 49, 33, -31,
					-- layer=1 filter=30 channel=4
					59, 19, 24, 32, 16, -16, 7, 14, -17,
					-- layer=1 filter=30 channel=5
					-83, -108, -101, -124, -152, -109, -121, -138, -123,
					-- layer=1 filter=30 channel=6
					-14, -20, -3, 55, -13, -55, 2, -1, -25,
					-- layer=1 filter=30 channel=7
					4, 7, 13, -9, -19, -30, 9, 2, -43,
					-- layer=1 filter=30 channel=8
					26, 11, 11, -11, -30, 3, -14, -25, -24,
					-- layer=1 filter=30 channel=9
					14, 5, -28, 27, -19, 3, 16, 28, 21,
					-- layer=1 filter=30 channel=10
					-13, -89, -67, 2, -57, -106, -11, -14, -20,
					-- layer=1 filter=30 channel=11
					8, -24, 12, -17, 21, 0, -14, 20, 31,
					-- layer=1 filter=30 channel=12
					31, 25, 20, 2, -26, -14, 0, -17, -58,
					-- layer=1 filter=30 channel=13
					-22, -14, -29, -14, -41, -27, -46, -52, -59,
					-- layer=1 filter=30 channel=14
					22, 8, -23, -3, 47, 28, 35, 53, 28,
					-- layer=1 filter=30 channel=15
					8, -27, 17, -6, 6, 37, -35, 16, 44,
					-- layer=1 filter=31 channel=0
					-62, -64, -48, -39, -57, -51, -21, -25, -14,
					-- layer=1 filter=31 channel=1
					17, 22, -21, -10, 37, -2, 17, 13, 14,
					-- layer=1 filter=31 channel=2
					-21, -10, 20, -13, 20, 38, 29, 42, 6,
					-- layer=1 filter=31 channel=3
					11, -1, 19, 12, 7, 20, -18, -7, 14,
					-- layer=1 filter=31 channel=4
					-43, -12, -16, 0, -22, -25, -20, -17, -28,
					-- layer=1 filter=31 channel=5
					-21, -7, -14, -7, 5, 9, 20, 20, -19,
					-- layer=1 filter=31 channel=6
					-4, -14, -20, -19, -13, 3, -16, -19, -16,
					-- layer=1 filter=31 channel=7
					7, -2, -6, 11, 15, 15, -16, 19, 11,
					-- layer=1 filter=31 channel=8
					15, -20, 12, 10, 23, 10, 23, 11, 8,
					-- layer=1 filter=31 channel=9
					-9, 6, -28, -36, 19, -11, -5, 25, 19,
					-- layer=1 filter=31 channel=10
					-4, -13, -21, -64, -25, -38, 15, -4, 21,
					-- layer=1 filter=31 channel=11
					19, 8, -12, 18, 17, 19, -9, 18, -1,
					-- layer=1 filter=31 channel=12
					0, 13, -13, 20, 9, -7, -1, 27, -5,
					-- layer=1 filter=31 channel=13
					-20, -11, 17, 11, 10, -8, 1, 5, 32,
					-- layer=1 filter=31 channel=14
					-2, -6, -30, -18, 27, 15, 26, 1, -4,
					-- layer=1 filter=31 channel=15
					-29, -42, -32, -11, -35, -40, -10, -39, -22,

					others=>0 );
END iwght_package;

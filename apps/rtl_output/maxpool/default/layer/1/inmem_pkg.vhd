LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					-3101, 18475, 3309, 13376, 3996, 155, -5611, -866, 5043, 7416, -2119, -3233, 4477, -1175, -1042, 2542, 10598, 7197, 7163, 1223, 8643, -7222, 3940, 3516, 2023, -3105, 5926, -4958, 11654, -7977, 7089, 15132,

					-- weights
					-- layer=1 filter=0 channel=0
					27, 47, 58, 14, -7, 22, -2, 1, -5,
					-- layer=1 filter=0 channel=1
					-42, -63, 11, 8, -1, -4, -52, -24, 1,
					-- layer=1 filter=0 channel=2
					18, 67, 44, 8, 15, 7, 8, 50, 10,
					-- layer=1 filter=0 channel=3
					32, 40, 39, 29, 23, -8, 39, 35, -23,
					-- layer=1 filter=0 channel=4
					-9, -1, 45, -18, 30, 3, -40, -14, -31,
					-- layer=1 filter=0 channel=5
					-1, 8, -27, 4, -25, -48, -35, -24, 19,
					-- layer=1 filter=0 channel=6
					20, -30, -10, -32, -11, -46, -14, 2, -2,
					-- layer=1 filter=0 channel=7
					-12, -35, -72, -27, -58, -42, -8, 11, -18,
					-- layer=1 filter=0 channel=8
					15, -1, 27, -12, -8, -17, -24, 14, -11,
					-- layer=1 filter=0 channel=9
					-9, 11, 7, -20, -43, -1, 10, 4, -54,
					-- layer=1 filter=0 channel=10
					23, 13, 23, -9, -8, 34, 2, -16, -32,
					-- layer=1 filter=0 channel=11
					5, -20, 8, 31, 3, -38, -14, 8, -9,
					-- layer=1 filter=0 channel=12
					20, 30, -32, 45, 17, -49, 49, 111, -30,
					-- layer=1 filter=0 channel=13
					0, 8, -22, 20, 31, -10, -1, -17, 6,
					-- layer=1 filter=0 channel=14
					36, 29, 23, 7, -24, -35, 22, 20, -13,
					-- layer=1 filter=0 channel=15
					1, -27, 6, 15, -9, 31, 34, 70, 72,
					-- layer=1 filter=1 channel=0
					57, 11, 22, 0, 10, -23, -106, -76, -69,
					-- layer=1 filter=1 channel=1
					18, -8, 26, 22, 27, 39, 26, 42, 41,
					-- layer=1 filter=1 channel=2
					28, 49, 0, -20, -20, -19, -22, -27, 7,
					-- layer=1 filter=1 channel=3
					4, -16, -9, -55, -18, -31, -53, -68, -40,
					-- layer=1 filter=1 channel=4
					57, 49, 7, -19, 0, 11, -34, -34, -23,
					-- layer=1 filter=1 channel=5
					67, 34, 45, 74, 37, -9, -27, -51, -64,
					-- layer=1 filter=1 channel=6
					-75, -80, 30, -125, -97, -52, -159, -123, -47,
					-- layer=1 filter=1 channel=7
					41, 13, 14, 75, 106, 124, 67, 44, 63,
					-- layer=1 filter=1 channel=8
					27, -12, -23, -20, 33, 27, -10, -20, -3,
					-- layer=1 filter=1 channel=9
					-34, -54, -14, -37, -26, 26, -44, -39, -11,
					-- layer=1 filter=1 channel=10
					-25, -19, -7, 20, -47, -17, -26, 5, -20,
					-- layer=1 filter=1 channel=11
					57, 20, 90, 97, 69, 13, -31, -33, -85,
					-- layer=1 filter=1 channel=12
					46, 12, 21, 39, -17, -122, -31, -83, -116,
					-- layer=1 filter=1 channel=13
					-3, -3, -54, 23, 11, 38, 14, -8, -29,
					-- layer=1 filter=1 channel=14
					26, -28, 3, -44, -61, -20, -55, -65, -16,
					-- layer=1 filter=1 channel=15
					-9, -72, -48, -38, -3, -22, 50, 35, -2,
					-- layer=1 filter=2 channel=0
					-27, -61, -40, 16, -62, -47, 0, 55, 34,
					-- layer=1 filter=2 channel=1
					-30, -44, -12, 31, -18, -12, 33, 78, 55,
					-- layer=1 filter=2 channel=2
					-56, -14, -33, -13, -26, -14, 20, 34, 16,
					-- layer=1 filter=2 channel=3
					-59, -42, -8, -9, -2, 6, -3, 31, 37,
					-- layer=1 filter=2 channel=4
					-22, 21, 17, -25, -47, -71, 52, 31, 15,
					-- layer=1 filter=2 channel=5
					6, 51, 26, 109, 20, 22, 11, 53, 15,
					-- layer=1 filter=2 channel=6
					-12, 49, 49, -44, -102, -58, -33, -96, -107,
					-- layer=1 filter=2 channel=7
					-6, -4, -14, -15, 16, 23, -21, -20, -33,
					-- layer=1 filter=2 channel=8
					-4, 0, -28, -1, -21, 13, -10, 11, -25,
					-- layer=1 filter=2 channel=9
					-2, -32, -21, 22, 57, 55, 29, 47, 43,
					-- layer=1 filter=2 channel=10
					-36, 3, -37, 23, 10, 7, 19, 26, 72,
					-- layer=1 filter=2 channel=11
					61, 93, 82, 138, 62, 55, 71, 64, 10,
					-- layer=1 filter=2 channel=12
					-11, 21, -35, -30, -88, -7, -65, -43, -22,
					-- layer=1 filter=2 channel=13
					-68, -96, -82, 8, -6, 9, 28, 69, 63,
					-- layer=1 filter=2 channel=14
					-40, -16, -27, 21, 8, -22, 37, 12, 18,
					-- layer=1 filter=2 channel=15
					-59, -52, -63, -58, -42, -46, 42, 10, 10,
					-- layer=1 filter=3 channel=0
					-60, 0, 11, -57, -16, 2, -29, -12, 14,
					-- layer=1 filter=3 channel=1
					56, 0, -1, 44, 28, 30, 46, -3, 46,
					-- layer=1 filter=3 channel=2
					-51, -36, -11, -17, 7, -12, -61, 1, 1,
					-- layer=1 filter=3 channel=3
					-43, -6, 15, -28, 8, 62, -18, 24, 51,
					-- layer=1 filter=3 channel=4
					6, 5, 5, -25, 24, -3, -18, -22, -2,
					-- layer=1 filter=3 channel=5
					-43, -42, -59, -70, -121, -104, -119, -100, -94,
					-- layer=1 filter=3 channel=6
					30, -13, 1, 19, 3, -18, 62, -20, -25,
					-- layer=1 filter=3 channel=7
					-12, 23, 16, -42, 17, 58, -11, 48, 79,
					-- layer=1 filter=3 channel=8
					-1, -14, -7, 19, -4, -14, -33, -2, 11,
					-- layer=1 filter=3 channel=9
					-41, 30, 61, -14, 47, 46, 27, 53, 73,
					-- layer=1 filter=3 channel=10
					-16, 7, 8, -13, -1, 11, -13, -24, 29,
					-- layer=1 filter=3 channel=11
					-48, -41, -95, -101, -138, -117, -106, -61, -86,
					-- layer=1 filter=3 channel=12
					-15, -137, -100, -43, -206, -192, -34, -122, -121,
					-- layer=1 filter=3 channel=13
					-20, -6, -35, -1, -8, -45, -9, -2, 8,
					-- layer=1 filter=3 channel=14
					-28, -35, -8, -11, 26, 47, -39, 26, 34,
					-- layer=1 filter=3 channel=15
					14, 13, -17, 29, 0, -14, -22, -1, -5,
					-- layer=1 filter=4 channel=0
					-15, -28, 5, -52, 0, 20, -54, 21, 0,
					-- layer=1 filter=4 channel=1
					12, 49, -13, 21, -5, -1, 53, 12, -14,
					-- layer=1 filter=4 channel=2
					-36, -34, 19, -6, -15, 10, 8, 38, -4,
					-- layer=1 filter=4 channel=3
					-28, 19, 25, -30, 1, -6, -26, 20, 40,
					-- layer=1 filter=4 channel=4
					2, 10, -25, -34, -9, -17, -36, 17, -15,
					-- layer=1 filter=4 channel=5
					8, 25, 0, -3, -55, -33, -51, -109, -89,
					-- layer=1 filter=4 channel=6
					62, 79, 21, 68, 13, 32, 44, 40, 46,
					-- layer=1 filter=4 channel=7
					-1, -47, -22, -28, -59, -8, -48, -19, -11,
					-- layer=1 filter=4 channel=8
					0, -7, 11, -18, 19, 7, 22, -30, 32,
					-- layer=1 filter=4 channel=9
					24, 18, -35, 19, 9, 3, 29, 44, 40,
					-- layer=1 filter=4 channel=10
					18, 0, 16, 4, 20, -24, -15, 24, 23,
					-- layer=1 filter=4 channel=11
					10, -26, -54, -5, -61, -49, -51, -81, -92,
					-- layer=1 filter=4 channel=12
					-13, 36, 62, 19, -8, 42, 6, -21, 42,
					-- layer=1 filter=4 channel=13
					-34, -11, 36, -17, 24, 11, 8, 34, 6,
					-- layer=1 filter=4 channel=14
					-37, 8, -41, 19, -14, 12, -2, 1, 17,
					-- layer=1 filter=4 channel=15
					-41, -38, -55, -54, -55, -5, 0, -39, -41,
					-- layer=1 filter=5 channel=0
					-48, 6, 29, -33, -8, 10, 6, -19, -2,
					-- layer=1 filter=5 channel=1
					22, 14, 38, 14, 4, 40, 0, 5, -20,
					-- layer=1 filter=5 channel=2
					-12, -3, 37, -35, 19, 30, -27, 6, 30,
					-- layer=1 filter=5 channel=3
					-42, 12, 14, -46, -17, 27, -26, 23, 5,
					-- layer=1 filter=5 channel=4
					-14, -28, 22, -22, -30, -4, 1, -54, -16,
					-- layer=1 filter=5 channel=5
					-6, -24, 39, -66, -75, -62, -62, -21, -44,
					-- layer=1 filter=5 channel=6
					80, 80, 77, 113, 155, 64, 179, 147, 115,
					-- layer=1 filter=5 channel=7
					-27, -15, 10, 8, -21, -11, -3, -3, -8,
					-- layer=1 filter=5 channel=8
					-22, 5, 20, 30, -1, -3, -11, 5, 19,
					-- layer=1 filter=5 channel=9
					-46, 18, 16, -49, -15, 59, -29, 24, 25,
					-- layer=1 filter=5 channel=10
					-26, -15, 10, 13, -12, 51, -2, -31, 18,
					-- layer=1 filter=5 channel=11
					-6, 55, 56, -23, -20, 31, -38, 34, 43,
					-- layer=1 filter=5 channel=12
					33, -13, 82, 117, 40, 55, 139, 102, 107,
					-- layer=1 filter=5 channel=13
					31, 16, 35, -11, 18, 22, -2, -37, -31,
					-- layer=1 filter=5 channel=14
					-40, 32, 29, -28, 22, 52, -37, 9, 14,
					-- layer=1 filter=5 channel=15
					49, -20, -28, 37, -28, -60, 9, 4, -22,
					-- layer=1 filter=6 channel=0
					-16, -52, -35, 10, 27, 31, -6, -32, 0,
					-- layer=1 filter=6 channel=1
					64, 56, 31, 11, -17, 40, -43, -34, -17,
					-- layer=1 filter=6 channel=2
					-18, -11, -13, -16, 6, 24, 16, 6, -4,
					-- layer=1 filter=6 channel=3
					-39, -17, 8, -50, -8, -4, -12, -11, 10,
					-- layer=1 filter=6 channel=4
					-26, 25, 32, 34, 46, 59, -7, -29, -37,
					-- layer=1 filter=6 channel=5
					9, 8, 59, 44, 94, 79, -16, 22, 85,
					-- layer=1 filter=6 channel=6
					71, 59, 23, 81, 52, 56, -4, -39, 39,
					-- layer=1 filter=6 channel=7
					-19, 11, 40, -37, -59, -26, 37, 59, 52,
					-- layer=1 filter=6 channel=8
					23, -28, -4, 20, 12, 23, -8, -8, -20,
					-- layer=1 filter=6 channel=9
					-20, 0, 53, 2, -34, -14, 27, 53, 56,
					-- layer=1 filter=6 channel=10
					-7, 2, 35, 37, -10, -20, 0, -18, 10,
					-- layer=1 filter=6 channel=11
					40, 34, 56, 99, 93, 96, 6, 63, 123,
					-- layer=1 filter=6 channel=12
					10, 1, 48, 18, 92, 4, -13, -39, -25,
					-- layer=1 filter=6 channel=13
					-9, 1, 44, -31, -58, -59, -43, -35, -5,
					-- layer=1 filter=6 channel=14
					-12, -28, 27, -46, -24, 25, -29, -8, 2,
					-- layer=1 filter=6 channel=15
					35, 32, 48, 46, 29, 7, 2, -8, 7,
					-- layer=1 filter=7 channel=0
					40, 25, -17, 5, 1, 29, 3, -21, 31,
					-- layer=1 filter=7 channel=1
					-42, -56, -59, -73, -87, -96, -63, -38, -56,
					-- layer=1 filter=7 channel=2
					18, 39, 35, 3, -4, 22, -31, 31, -6,
					-- layer=1 filter=7 channel=3
					16, 45, 38, 3, -3, -7, -27, 24, -9,
					-- layer=1 filter=7 channel=4
					1, -13, -28, 0, -3, -51, -25, -37, -51,
					-- layer=1 filter=7 channel=5
					-11, -43, -56, -29, -46, -43, 13, 11, -4,
					-- layer=1 filter=7 channel=6
					-21, 19, 46, 45, 64, 10, 53, 26, 30,
					-- layer=1 filter=7 channel=7
					-9, 49, 51, 8, 56, 11, -15, 53, 41,
					-- layer=1 filter=7 channel=8
					-25, -12, -27, -26, 0, -14, 10, -4, 0,
					-- layer=1 filter=7 channel=9
					21, 25, 5, -8, 9, 10, 10, 1, 11,
					-- layer=1 filter=7 channel=10
					-40, -40, -37, 9, -35, -34, -48, -15, -46,
					-- layer=1 filter=7 channel=11
					14, 10, 48, 22, 62, 29, 53, 55, 54,
					-- layer=1 filter=7 channel=12
					25, -17, 8, 37, 29, -2, 36, 22, -14,
					-- layer=1 filter=7 channel=13
					-86, -39, -30, -39, -105, -65, -48, -34, -39,
					-- layer=1 filter=7 channel=14
					20, 27, 50, 20, 38, 17, -17, -9, 6,
					-- layer=1 filter=7 channel=15
					40, 48, 81, 73, 12, 62, 76, 64, 81,
					-- layer=1 filter=8 channel=0
					-6, 35, 17, -20, 6, 52, -47, -8, 12,
					-- layer=1 filter=8 channel=1
					43, 31, 54, 45, 38, 49, 38, 20, 30,
					-- layer=1 filter=8 channel=2
					-33, -11, 38, -28, -8, -3, -59, -7, -43,
					-- layer=1 filter=8 channel=3
					-27, 20, 65, -31, 0, 37, -53, 15, 27,
					-- layer=1 filter=8 channel=4
					34, 10, 54, 33, 42, 36, -8, 12, 27,
					-- layer=1 filter=8 channel=5
					9, -8, -30, -9, 27, 26, 23, 8, -40,
					-- layer=1 filter=8 channel=6
					-15, -84, -42, -73, -60, -117, -41, -81, -119,
					-- layer=1 filter=8 channel=7
					-13, 6, -7, -7, 8, 0, -30, 1, 5,
					-- layer=1 filter=8 channel=8
					11, 25, -10, 6, -16, 11, 13, -19, -9,
					-- layer=1 filter=8 channel=9
					-25, 47, 57, -20, -19, 20, -59, -10, 18,
					-- layer=1 filter=8 channel=10
					-13, 16, 45, -38, 26, 30, -33, -5, 5,
					-- layer=1 filter=8 channel=11
					5, 10, 45, 29, -3, 42, 34, -48, -33,
					-- layer=1 filter=8 channel=12
					-75, -134, -227, -160, -207, -241, -153, -237, -241,
					-- layer=1 filter=8 channel=13
					23, 11, 18, 3, 2, 2, 1, 5, -29,
					-- layer=1 filter=8 channel=14
					3, 33, 48, -6, -10, 22, -57, 18, 16,
					-- layer=1 filter=8 channel=15
					-12, -72, -60, -33, -61, -46, 24, -38, -64,
					-- layer=1 filter=9 channel=0
					6, -53, -18, 41, 8, -46, 38, -7, -15,
					-- layer=1 filter=9 channel=1
					9, -15, -21, 2, -12, -26, -4, -16, -11,
					-- layer=1 filter=9 channel=2
					0, -6, -70, 9, -21, -39, 13, -2, -4,
					-- layer=1 filter=9 channel=3
					5, -29, -40, 20, -2, -34, 26, 49, 49,
					-- layer=1 filter=9 channel=4
					-4, -44, -56, 42, 17, -35, 33, -1, -31,
					-- layer=1 filter=9 channel=5
					45, 20, 10, 62, 0, 16, 65, 22, -18,
					-- layer=1 filter=9 channel=6
					33, 158, 21, -34, 76, 35, 9, 62, 80,
					-- layer=1 filter=9 channel=7
					18, -6, -21, -42, -23, 11, 14, 35, 1,
					-- layer=1 filter=9 channel=8
					20, -13, -18, -5, -3, -2, 21, -32, 2,
					-- layer=1 filter=9 channel=9
					2, -2, -18, -10, -25, -23, 40, -8, 51,
					-- layer=1 filter=9 channel=10
					37, 14, -43, 11, -13, -32, 22, -13, 32,
					-- layer=1 filter=9 channel=11
					16, 25, 20, 52, 87, 56, 63, 27, 1,
					-- layer=1 filter=9 channel=12
					90, 165, 117, 70, 140, 123, 17, 39, 85,
					-- layer=1 filter=9 channel=13
					-4, 0, 24, -6, 49, 24, -11, 28, 41,
					-- layer=1 filter=9 channel=14
					-12, -26, -56, 12, -25, -43, 14, 14, 9,
					-- layer=1 filter=9 channel=15
					-49, 0, 24, -65, -22, -19, -23, -45, -90,
					-- layer=1 filter=10 channel=0
					21, 50, 66, 4, 4, -5, -30, -20, 24,
					-- layer=1 filter=10 channel=1
					-48, -60, -66, 7, 17, -16, 1, 3, -45,
					-- layer=1 filter=10 channel=2
					0, 7, 53, 19, -10, -7, 31, -13, 37,
					-- layer=1 filter=10 channel=3
					-1, 26, 54, 5, -16, 16, 33, 32, -9,
					-- layer=1 filter=10 channel=4
					-10, 31, 0, -25, -13, -1, -12, 13, -7,
					-- layer=1 filter=10 channel=5
					-26, -55, -38, -72, -25, -39, -14, -67, -109,
					-- layer=1 filter=10 channel=6
					-6, 52, -17, 3, 62, 23, -13, 27, -12,
					-- layer=1 filter=10 channel=7
					-14, -23, -10, -13, -37, -24, -31, -10, -15,
					-- layer=1 filter=10 channel=8
					2, -18, -15, -10, -25, 8, 13, -12, 15,
					-- layer=1 filter=10 channel=9
					0, -25, 4, 40, 21, 0, 36, 11, -4,
					-- layer=1 filter=10 channel=10
					0, 15, -9, 11, -11, -27, 22, 28, -10,
					-- layer=1 filter=10 channel=11
					-10, -4, -50, -83, -24, -93, -80, -104, -98,
					-- layer=1 filter=10 channel=12
					7, 38, 15, 46, 40, 29, 23, 45, 18,
					-- layer=1 filter=10 channel=13
					-37, -41, -54, 15, -4, -40, 28, 13, -40,
					-- layer=1 filter=10 channel=14
					16, 52, 21, 5, -1, 15, -30, 0, -23,
					-- layer=1 filter=10 channel=15
					72, 44, 52, 65, 32, 56, 50, 70, 116,
					-- layer=1 filter=11 channel=0
					29, -4, -20, -19, -24, 1, -15, -15, -21,
					-- layer=1 filter=11 channel=1
					64, 47, 18, 36, -30, -20, -2, -18, -30,
					-- layer=1 filter=11 channel=2
					-9, 29, 30, 15, 18, 28, -9, 26, -4,
					-- layer=1 filter=11 channel=3
					-1, -34, -29, -2, -27, 10, 17, 6, 29,
					-- layer=1 filter=11 channel=4
					77, 34, 64, 14, -27, -43, 25, 11, -31,
					-- layer=1 filter=11 channel=5
					-4, 28, 11, 3, 21, 22, 18, 21, 3,
					-- layer=1 filter=11 channel=6
					-11, -38, 11, -68, 14, 15, -1, 57, -15,
					-- layer=1 filter=11 channel=7
					-83, -113, -75, 36, 53, 81, 59, 52, 43,
					-- layer=1 filter=11 channel=8
					15, -5, 14, -10, -17, -25, -25, -20, 14,
					-- layer=1 filter=11 channel=9
					-24, -65, -59, 6, 42, 14, 30, 55, 11,
					-- layer=1 filter=11 channel=10
					69, 46, 46, 11, -32, -29, -43, 0, -2,
					-- layer=1 filter=11 channel=11
					60, 40, 23, 11, 26, 11, 63, 69, -1,
					-- layer=1 filter=11 channel=12
					20, 22, 13, -40, 7, 23, -30, 54, -4,
					-- layer=1 filter=11 channel=13
					24, 10, -9, -42, -57, -19, -78, -78, -64,
					-- layer=1 filter=11 channel=14
					-27, -3, -3, 9, 2, -30, -7, 15, 18,
					-- layer=1 filter=11 channel=15
					75, 91, 109, 26, -11, 23, -98, -63, -22,
					-- layer=1 filter=12 channel=0
					-40, -39, -47, -16, 2, 22, -29, 0, -27,
					-- layer=1 filter=12 channel=1
					-14, 17, -3, 18, -10, 24, 53, 29, 32,
					-- layer=1 filter=12 channel=2
					-19, 2, -5, -29, -36, -23, 4, -6, 20,
					-- layer=1 filter=12 channel=3
					0, -45, -21, 15, -12, -17, 37, 30, 43,
					-- layer=1 filter=12 channel=4
					17, 37, 10, -8, 31, 3, -27, -45, -57,
					-- layer=1 filter=12 channel=5
					23, 21, 48, 51, 87, 96, -59, -100, -76,
					-- layer=1 filter=12 channel=6
					38, 7, 19, -70, -39, 8, -240, -223, -168,
					-- layer=1 filter=12 channel=7
					4, -2, -4, -43, 11, 2, 18, 25, 61,
					-- layer=1 filter=12 channel=8
					4, -7, -12, -1, 10, 29, -24, -30, -11,
					-- layer=1 filter=12 channel=9
					-21, -23, 13, 10, 3, 45, 35, 49, 78,
					-- layer=1 filter=12 channel=10
					-11, -30, -3, -24, 20, -40, 32, 52, 28,
					-- layer=1 filter=12 channel=11
					39, 37, -3, 108, 125, 69, -119, -182, -130,
					-- layer=1 filter=12 channel=12
					46, 25, 46, -11, -48, -2, -268, -247, -216,
					-- layer=1 filter=12 channel=13
					-49, -51, -4, -21, -47, -40, 73, 70, 85,
					-- layer=1 filter=12 channel=14
					-42, -23, -35, 11, 7, -11, 0, 19, 13,
					-- layer=1 filter=12 channel=15
					39, 46, 61, -21, -13, -94, -83, -116, -86,
					-- layer=1 filter=13 channel=0
					-2, 15, -11, -20, 29, -17, -7, 15, -20,
					-- layer=1 filter=13 channel=1
					-6, -43, -48, 0, -22, -44, 32, -1, -19,
					-- layer=1 filter=13 channel=2
					32, 5, -44, 45, -10, -11, 28, -17, -34,
					-- layer=1 filter=13 channel=3
					42, -24, -33, 47, -22, -55, 39, 0, -31,
					-- layer=1 filter=13 channel=4
					-1, 32, -6, 24, 47, 18, 21, 50, 19,
					-- layer=1 filter=13 channel=5
					-5, -23, -30, -26, -57, -50, -25, -44, -94,
					-- layer=1 filter=13 channel=6
					111, 28, 75, 98, 9, 121, 83, 29, 155,
					-- layer=1 filter=13 channel=7
					21, -25, -21, 44, 17, -3, 21, -19, -22,
					-- layer=1 filter=13 channel=8
					-16, -20, -22, 7, -19, 0, 24, 5, 28,
					-- layer=1 filter=13 channel=9
					39, 3, -55, 5, -46, -52, 58, -26, -4,
					-- layer=1 filter=13 channel=10
					-8, -29, -10, 23, -27, -31, 41, 19, -14,
					-- layer=1 filter=13 channel=11
					13, -35, -28, -18, -80, -50, -57, -108, -61,
					-- layer=1 filter=13 channel=12
					-17, 87, 103, 26, 108, 118, 21, 72, 130,
					-- layer=1 filter=13 channel=13
					24, -5, 21, -2, 22, 21, 15, -33, -22,
					-- layer=1 filter=13 channel=14
					6, 13, -42, 41, 23, -21, 41, 29, -38,
					-- layer=1 filter=13 channel=15
					1, -20, 11, 11, -16, 20, -15, 15, -12,
					-- layer=1 filter=14 channel=0
					17, -24, 22, 24, 23, 23, 12, -4, 12,
					-- layer=1 filter=14 channel=1
					5, -25, 0, -3, -1, -26, -17, 14, -21,
					-- layer=1 filter=14 channel=2
					19, -17, 6, 19, 8, -3, 12, 9, 7,
					-- layer=1 filter=14 channel=3
					6, 13, -27, -20, -8, 10, -22, -27, -29,
					-- layer=1 filter=14 channel=4
					-18, -13, 19, -7, -15, 6, -14, -14, -19,
					-- layer=1 filter=14 channel=5
					19, -30, -21, -15, -19, 13, -20, -30, -26,
					-- layer=1 filter=14 channel=6
					6, -14, -30, -11, -17, -20, -28, -3, 5,
					-- layer=1 filter=14 channel=7
					14, 8, -8, 5, -15, -4, 15, -34, -18,
					-- layer=1 filter=14 channel=8
					20, 27, 20, -14, -4, -9, 9, -7, -9,
					-- layer=1 filter=14 channel=9
					-12, -17, 15, 5, 0, -12, -28, -1, -22,
					-- layer=1 filter=14 channel=10
					3, 6, -11, 19, 6, -2, -19, -6, 13,
					-- layer=1 filter=14 channel=11
					7, 12, 18, -17, -22, 19, -18, 7, 22,
					-- layer=1 filter=14 channel=12
					-21, -24, -31, 14, 11, -21, -8, -21, -20,
					-- layer=1 filter=14 channel=13
					22, -28, -25, -16, -13, 6, -2, -3, -13,
					-- layer=1 filter=14 channel=14
					-24, -28, 5, -7, 2, -26, 8, 23, 25,
					-- layer=1 filter=14 channel=15
					12, 17, 22, -26, -8, 26, -18, -18, 11,
					-- layer=1 filter=15 channel=0
					-24, -31, 18, 19, -10, -15, 17, -7, -15,
					-- layer=1 filter=15 channel=1
					37, 21, 24, 11, -10, -9, -67, -69, -74,
					-- layer=1 filter=15 channel=2
					-27, -8, 2, 7, -11, -10, 39, -5, -41,
					-- layer=1 filter=15 channel=3
					37, 21, 7, -20, -20, -3, 7, 0, 3,
					-- layer=1 filter=15 channel=4
					-5, 11, 7, 9, 35, -11, -29, -50, -14,
					-- layer=1 filter=15 channel=5
					9, -2, -40, 52, 11, 29, 58, 17, 17,
					-- layer=1 filter=15 channel=6
					-12, -4, -54, 12, 93, 13, 19, 7, 27,
					-- layer=1 filter=15 channel=7
					2, 39, 26, -32, -26, -14, 39, 6, 17,
					-- layer=1 filter=15 channel=8
					-18, 11, -28, 12, 19, -10, -6, 24, -7,
					-- layer=1 filter=15 channel=9
					-6, -20, -4, -32, 4, -39, 12, -6, 15,
					-- layer=1 filter=15 channel=10
					26, -9, -14, 5, -5, -30, -50, -71, -64,
					-- layer=1 filter=15 channel=11
					-21, 39, 13, 91, 67, 90, 78, 103, 119,
					-- layer=1 filter=15 channel=12
					23, 52, 56, 112, 80, 77, 44, 64, 21,
					-- layer=1 filter=15 channel=13
					42, 47, 28, 29, 3, 20, -66, -75, -49,
					-- layer=1 filter=15 channel=14
					42, 7, -25, -8, -28, -15, 2, -41, -15,
					-- layer=1 filter=15 channel=15
					69, 113, 88, 90, 69, 63, -10, -24, 8,
					-- layer=1 filter=16 channel=0
					20, -14, -44, -25, -7, -12, -8, -18, 5,
					-- layer=1 filter=16 channel=1
					-12, 21, 13, 0, 20, 40, -2, 62, 62,
					-- layer=1 filter=16 channel=2
					-39, -62, -37, -4, -50, -40, -7, -34, -6,
					-- layer=1 filter=16 channel=3
					20, -30, -35, -10, 1, 17, 36, -21, -7,
					-- layer=1 filter=16 channel=4
					20, 9, 28, 23, 38, 37, 7, 55, 19,
					-- layer=1 filter=16 channel=5
					60, 36, 54, -17, -28, -17, -18, -30, -16,
					-- layer=1 filter=16 channel=6
					-46, 13, 22, -84, -29, -22, -53, 6, -17,
					-- layer=1 filter=16 channel=7
					24, -9, -12, -28, -74, -30, -77, -64, -48,
					-- layer=1 filter=16 channel=8
					16, -22, -9, 16, -7, -12, -3, 1, 29,
					-- layer=1 filter=16 channel=9
					-13, 8, 7, 35, -24, -17, 11, 14, -5,
					-- layer=1 filter=16 channel=10
					20, 4, -26, 26, 31, 7, 47, -5, 5,
					-- layer=1 filter=16 channel=11
					22, 15, 37, 1, -38, -35, -24, -58, -52,
					-- layer=1 filter=16 channel=12
					25, 9, -1, 5, 11, -7, 16, -11, -12,
					-- layer=1 filter=16 channel=13
					-15, -5, -10, 11, 33, 4, 22, 19, 53,
					-- layer=1 filter=16 channel=14
					3, -29, 14, -19, 17, -31, 16, 2, 14,
					-- layer=1 filter=16 channel=15
					-94, -94, -29, -85, -97, -54, -75, -75, -57,
					-- layer=1 filter=17 channel=0
					6, -43, -36, 17, -6, 12, 8, -10, 10,
					-- layer=1 filter=17 channel=1
					-65, -25, 3, -5, 29, 10, 47, 66, 31,
					-- layer=1 filter=17 channel=2
					16, -7, -40, 47, -42, -7, -6, -47, -58,
					-- layer=1 filter=17 channel=3
					11, -11, 16, 13, -12, 32, -38, 0, -10,
					-- layer=1 filter=17 channel=4
					-55, -77, -2, -31, -94, -28, -7, -11, 39,
					-- layer=1 filter=17 channel=5
					-9, -9, 12, 18, -39, -16, 2, -51, -65,
					-- layer=1 filter=17 channel=6
					-42, 24, 11, 29, 83, -4, 65, 38, -2,
					-- layer=1 filter=17 channel=7
					41, 58, 34, 27, 0, -39, -13, -42, -48,
					-- layer=1 filter=17 channel=8
					-28, -17, -28, 2, 11, 12, -5, 16, 4,
					-- layer=1 filter=17 channel=9
					-69, -38, 4, -47, 11, -16, -5, -16, -7,
					-- layer=1 filter=17 channel=10
					-47, -64, -36, -25, -45, 31, 6, -15, 28,
					-- layer=1 filter=17 channel=11
					-47, -40, -2, -23, -24, -28, -62, -75, -86,
					-- layer=1 filter=17 channel=12
					48, 17, -24, 73, 87, -34, 104, 59, 22,
					-- layer=1 filter=17 channel=13
					30, -7, 32, 35, 11, 65, 84, 70, 74,
					-- layer=1 filter=17 channel=14
					-37, -34, 4, -41, -46, 5, -33, -36, 26,
					-- layer=1 filter=17 channel=15
					-21, -59, -42, 17, -16, 12, 91, 67, 52,
					-- layer=1 filter=18 channel=0
					-75, -33, -24, -23, -74, -65, 2, 35, 8,
					-- layer=1 filter=18 channel=1
					-23, -43, -4, -6, -23, 3, 27, -14, -8,
					-- layer=1 filter=18 channel=2
					18, -32, -31, 13, 8, -3, 18, 36, 12,
					-- layer=1 filter=18 channel=3
					-37, -74, -52, -1, -40, -61, 20, 55, 0,
					-- layer=1 filter=18 channel=4
					2, -47, -17, -27, -13, -9, 28, 13, 20,
					-- layer=1 filter=18 channel=5
					21, 27, 30, -19, -18, 21, -52, -63, -38,
					-- layer=1 filter=18 channel=6
					11, 0, 68, -13, 54, 17, 21, 102, 65,
					-- layer=1 filter=18 channel=7
					26, 21, 41, 26, 83, 65, 36, 30, 58,
					-- layer=1 filter=18 channel=8
					15, 23, -15, 5, 8, -9, -13, 20, 25,
					-- layer=1 filter=18 channel=9
					-18, -59, -73, 13, -2, -24, 20, 60, 52,
					-- layer=1 filter=18 channel=10
					-47, -42, -71, -5, -15, -33, 35, 43, 23,
					-- layer=1 filter=18 channel=11
					-50, 8, 51, -40, -12, 68, -58, -41, 14,
					-- layer=1 filter=18 channel=12
					69, 52, 8, 61, 156, 135, 55, 68, 129,
					-- layer=1 filter=18 channel=13
					15, 15, -54, 21, 27, -7, -9, 48, 38,
					-- layer=1 filter=18 channel=14
					-70, -83, -50, 14, -41, -24, 44, 7, -28,
					-- layer=1 filter=18 channel=15
					-30, 6, -3, -68, -49, -82, -67, -63, -116,
					-- layer=1 filter=19 channel=0
					-22, -19, -16, -47, -24, -5, -16, -28, 34,
					-- layer=1 filter=19 channel=1
					11, -21, 41, -3, 0, 23, -6, 9, 26,
					-- layer=1 filter=19 channel=2
					-10, -8, -11, -1, 0, 0, -45, -40, -2,
					-- layer=1 filter=19 channel=3
					-64, -88, -15, -54, -25, -32, -38, -18, -24,
					-- layer=1 filter=19 channel=4
					-29, -19, -60, -24, -18, -40, -16, 16, 11,
					-- layer=1 filter=19 channel=5
					-15, -37, -34, -30, -58, -35, 21, 31, -4,
					-- layer=1 filter=19 channel=6
					-42, -22, 2, -7, 37, 48, 58, 6, 47,
					-- layer=1 filter=19 channel=7
					12, 66, 45, 38, 37, -23, 20, 12, -25,
					-- layer=1 filter=19 channel=8
					-12, 7, -4, 27, -17, -4, -21, 13, -3,
					-- layer=1 filter=19 channel=9
					-58, -21, 55, 23, 2, 36, -2, 25, 44,
					-- layer=1 filter=19 channel=10
					-17, -28, -23, -63, -11, 26, -48, 29, 31,
					-- layer=1 filter=19 channel=11
					-30, -17, -55, -16, -2, -24, -23, 23, -2,
					-- layer=1 filter=19 channel=12
					-12, -16, 4, -86, -63, -11, -112, -60, 1,
					-- layer=1 filter=19 channel=13
					-75, -32, -30, -33, 30, 57, -30, -1, 31,
					-- layer=1 filter=19 channel=14
					-65, -36, -60, -56, -5, -1, -26, -19, -4,
					-- layer=1 filter=19 channel=15
					-53, -12, 2, -49, -11, 35, -40, 51, 46,
					-- layer=1 filter=20 channel=0
					4, -28, 23, -27, 11, -23, -27, 9, 18,
					-- layer=1 filter=20 channel=1
					32, 34, 0, 39, 26, -11, 24, 37, 25,
					-- layer=1 filter=20 channel=2
					-13, -5, -7, -18, 8, -3, -18, -36, 0,
					-- layer=1 filter=20 channel=3
					-39, 17, -7, -9, -15, -17, -31, -28, 8,
					-- layer=1 filter=20 channel=4
					6, 8, -34, -34, 6, -20, -17, -9, 19,
					-- layer=1 filter=20 channel=5
					86, 65, 25, 13, 50, 27, -12, -17, -8,
					-- layer=1 filter=20 channel=6
					22, -10, -12, 14, 28, -27, 68, 92, 40,
					-- layer=1 filter=20 channel=7
					-118, -114, -84, -64, -127, -85, -51, -65, -68,
					-- layer=1 filter=20 channel=8
					16, 21, 26, -6, -6, 8, -1, 27, -25,
					-- layer=1 filter=20 channel=9
					-22, -52, 0, -58, -27, -9, -45, -30, -6,
					-- layer=1 filter=20 channel=10
					15, 19, 23, 6, 20, -11, -19, -18, -19,
					-- layer=1 filter=20 channel=11
					30, 13, -12, 42, 42, 31, 40, 18, 36,
					-- layer=1 filter=20 channel=12
					2, 23, 5, 3, 18, 28, 37, 70, 53,
					-- layer=1 filter=20 channel=13
					58, 61, 36, 29, 49, 24, 45, 41, 24,
					-- layer=1 filter=20 channel=14
					-38, -22, -23, 3, -20, -29, -40, -21, -13,
					-- layer=1 filter=20 channel=15
					-6, -70, -24, -55, -82, -73, -41, -53, -42,
					-- layer=1 filter=21 channel=0
					5, 8, 52, -6, 40, 39, 2, -37, -35,
					-- layer=1 filter=21 channel=1
					17, 17, -13, 21, -29, -15, -18, -4, -2,
					-- layer=1 filter=21 channel=2
					20, 40, 32, -16, -20, -14, -17, -12, -4,
					-- layer=1 filter=21 channel=3
					-12, 29, 20, -4, -31, 24, -10, -38, -18,
					-- layer=1 filter=21 channel=4
					33, 29, 27, 35, 11, 36, 4, -35, -14,
					-- layer=1 filter=21 channel=5
					8, 25, 40, 38, 57, 71, 49, 28, 30,
					-- layer=1 filter=21 channel=6
					43, 47, -3, 65, 50, 43, -31, 28, 4,
					-- layer=1 filter=21 channel=7
					19, -4, 21, -48, -3, -25, -13, -17, 34,
					-- layer=1 filter=21 channel=8
					23, 24, 14, 22, -31, 4, -17, -1, -14,
					-- layer=1 filter=21 channel=9
					24, 0, 12, -6, -44, -8, -9, 16, -21,
					-- layer=1 filter=21 channel=10
					-3, 17, 29, -10, -9, -10, -6, 14, 3,
					-- layer=1 filter=21 channel=11
					70, 64, 47, 63, 104, 70, 73, 82, 118,
					-- layer=1 filter=21 channel=12
					16, 28, 37, 24, 49, 78, 7, 31, 36,
					-- layer=1 filter=21 channel=13
					-38, -31, -39, 0, -34, -26, 20, -16, 9,
					-- layer=1 filter=21 channel=14
					46, 59, 47, -23, 0, -2, -15, -48, -41,
					-- layer=1 filter=21 channel=15
					6, 40, 18, 28, 31, 35, 17, 30, 63,
					-- layer=1 filter=22 channel=0
					38, 50, 38, -57, -77, -66, 17, 21, 25,
					-- layer=1 filter=22 channel=1
					0, -15, -47, -11, -36, 3, -20, -29, 11,
					-- layer=1 filter=22 channel=2
					-26, 12, 6, -41, -6, -39, -25, 7, -29,
					-- layer=1 filter=22 channel=3
					27, 28, 11, 5, -16, -15, 3, 24, -25,
					-- layer=1 filter=22 channel=4
					19, -9, 17, -98, -111, -103, 20, 30, 11,
					-- layer=1 filter=22 channel=5
					-7, -20, 14, -34, -75, -41, 14, 29, -13,
					-- layer=1 filter=22 channel=6
					15, 15, 43, -61, -73, -57, -21, 14, 4,
					-- layer=1 filter=22 channel=7
					-80, -55, -20, 76, 66, 15, -48, -51, -7,
					-- layer=1 filter=22 channel=8
					31, 22, 9, -15, 22, 13, 28, -10, 14,
					-- layer=1 filter=22 channel=9
					-52, -49, -51, 7, 61, 27, 2, -17, -15,
					-- layer=1 filter=22 channel=10
					-33, -40, -4, 0, -8, -14, -41, -22, -28,
					-- layer=1 filter=22 channel=11
					65, 53, 19, -108, -128, -36, 50, 101, 21,
					-- layer=1 filter=22 channel=12
					37, 2, 61, -25, -44, 25, 38, -3, 38,
					-- layer=1 filter=22 channel=13
					31, 28, 36, 48, 47, 24, -7, -7, -39,
					-- layer=1 filter=22 channel=14
					28, 31, 6, -21, -19, 6, -11, 2, 30,
					-- layer=1 filter=22 channel=15
					66, 24, 45, 80, 57, 31, 19, 18, 28,
					-- layer=1 filter=23 channel=0
					24, -23, -22, 25, -12, -18, 11, 16, -23,
					-- layer=1 filter=23 channel=1
					-55, -42, -49, 6, -11, -38, 16, 0, -21,
					-- layer=1 filter=23 channel=2
					11, 21, -23, 12, -12, -13, 29, 9, -3,
					-- layer=1 filter=23 channel=3
					-2, -20, -6, 46, -17, -20, 58, 47, 17,
					-- layer=1 filter=23 channel=4
					4, -15, -18, 0, -41, -8, 6, -29, 8,
					-- layer=1 filter=23 channel=5
					1, -17, -14, -95, -104, -48, -61, -1, 4,
					-- layer=1 filter=23 channel=6
					-172, -166, -102, -208, -193, -168, -112, -246, -160,
					-- layer=1 filter=23 channel=7
					31, 0, 4, 26, 39, -27, 82, 66, 49,
					-- layer=1 filter=23 channel=8
					-22, 31, -3, 14, -1, 21, 11, -20, 2,
					-- layer=1 filter=23 channel=9
					24, -30, -16, 13, -14, -18, 11, 35, 0,
					-- layer=1 filter=23 channel=10
					20, -34, -21, -3, 3, -22, 28, 54, 32,
					-- layer=1 filter=23 channel=11
					-32, -67, -50, -154, -174, -120, -111, -84, -64,
					-- layer=1 filter=23 channel=12
					-20, -66, -62, 7, 4, 0, -26, 63, 63,
					-- layer=1 filter=23 channel=13
					-30, -10, -9, 55, 44, 10, 22, 74, 62,
					-- layer=1 filter=23 channel=14
					-13, -17, 10, 19, 8, 1, 45, 18, 3,
					-- layer=1 filter=23 channel=15
					43, 77, 88, 47, 64, 50, 84, 80, 112,
					-- layer=1 filter=24 channel=0
					-17, 35, 18, 13, 29, -1, -11, 16, 14,
					-- layer=1 filter=24 channel=1
					-12, 31, -1, 11, 44, 11, -18, 19, 20,
					-- layer=1 filter=24 channel=2
					-14, 0, 28, 23, 30, 2, -22, -31, -12,
					-- layer=1 filter=24 channel=3
					20, 21, 0, 7, -26, -6, -53, -76, -25,
					-- layer=1 filter=24 channel=4
					6, -21, -29, -13, 11, -22, 13, -10, 0,
					-- layer=1 filter=24 channel=5
					2, -13, 16, 30, 101, 55, 35, 68, 20,
					-- layer=1 filter=24 channel=6
					-59, -45, -72, -55, -55, -55, 18, -3, 1,
					-- layer=1 filter=24 channel=7
					53, 69, 21, -30, 51, 42, 65, 37, 44,
					-- layer=1 filter=24 channel=8
					-4, -18, -39, -17, -7, 30, 30, -12, 10,
					-- layer=1 filter=24 channel=9
					21, -30, -11, -24, -11, -15, -61, -41, -24,
					-- layer=1 filter=24 channel=10
					27, -17, -1, 0, -20, 11, 5, -7, -43,
					-- layer=1 filter=24 channel=11
					-31, 2, -28, 23, 34, 42, 37, 65, 36,
					-- layer=1 filter=24 channel=12
					38, -8, 9, 55, 23, -45, 53, 71, -35,
					-- layer=1 filter=24 channel=13
					85, 57, 63, 70, 74, 61, 42, -5, 26,
					-- layer=1 filter=24 channel=14
					-9, 34, 0, -11, -23, 6, -41, -36, -31,
					-- layer=1 filter=24 channel=15
					75, 77, 56, 56, 90, 59, 38, 59, 59,
					-- layer=1 filter=25 channel=0
					-40, -26, -3, -31, 0, 33, -20, 39, 37,
					-- layer=1 filter=25 channel=1
					3, -2, 36, -19, 10, 29, -3, -4, -15,
					-- layer=1 filter=25 channel=2
					-63, -18, -35, -24, 27, -37, 4, 20, 35,
					-- layer=1 filter=25 channel=3
					3, -31, 5, -26, 7, -4, 25, 6, 41,
					-- layer=1 filter=25 channel=4
					-46, -12, -13, -45, -18, -17, -65, -37, -4,
					-- layer=1 filter=25 channel=5
					41, 46, 52, 48, 26, 17, -8, 45, 17,
					-- layer=1 filter=25 channel=6
					72, 58, 61, 72, 20, -2, 77, -10, -1,
					-- layer=1 filter=25 channel=7
					-6, 20, -24, -11, -11, -10, -3, -11, 24,
					-- layer=1 filter=25 channel=8
					18, -17, 4, 12, 20, -24, -11, -29, 27,
					-- layer=1 filter=25 channel=9
					-36, 21, 30, 3, -24, -14, 0, 19, -15,
					-- layer=1 filter=25 channel=10
					-25, 20, 2, -36, -1, 42, 7, -6, -21,
					-- layer=1 filter=25 channel=11
					50, 91, 43, 72, 95, 40, 35, 46, 20,
					-- layer=1 filter=25 channel=12
					19, 11, 47, 40, 76, 11, 108, 145, 61,
					-- layer=1 filter=25 channel=13
					15, 45, 72, 24, 62, 56, 8, 43, 13,
					-- layer=1 filter=25 channel=14
					-22, -39, 6, 16, 15, 7, 39, -10, 16,
					-- layer=1 filter=25 channel=15
					-9, -32, 33, 2, -8, 48, 37, 12, 45,
					-- layer=1 filter=26 channel=0
					-11, -35, 33, -11, -24, -37, -2, 8, -43,
					-- layer=1 filter=26 channel=1
					-22, 2, -16, -34, -23, -13, -80, -30, -62,
					-- layer=1 filter=26 channel=2
					-5, -20, -14, 6, -24, -22, -9, -6, 13,
					-- layer=1 filter=26 channel=3
					0, 23, 21, -11, 25, -27, 26, 25, 9,
					-- layer=1 filter=26 channel=4
					-21, 14, 37, 7, -16, 6, 30, 21, -11,
					-- layer=1 filter=26 channel=5
					-42, -34, -10, -39, -34, -38, 13, 33, -25,
					-- layer=1 filter=26 channel=6
					-50, -28, -24, -58, -78, 6, -57, -73, -54,
					-- layer=1 filter=26 channel=7
					10, 49, 24, 78, 71, 56, 99, 99, 103,
					-- layer=1 filter=26 channel=8
					-28, -1, -8, -6, 14, -19, 26, 13, -17,
					-- layer=1 filter=26 channel=9
					21, 34, -7, 48, 28, 8, 27, 49, 55,
					-- layer=1 filter=26 channel=10
					-9, -52, 4, -26, -6, -13, -65, -55, -25,
					-- layer=1 filter=26 channel=11
					-28, -33, 21, -20, -60, -23, -11, 32, -21,
					-- layer=1 filter=26 channel=12
					-25, -62, -18, -44, -80, -2, 2, -38, -5,
					-- layer=1 filter=26 channel=13
					-72, -82, -60, -69, -104, -56, -91, -107, -96,
					-- layer=1 filter=26 channel=14
					15, -21, 38, 9, 5, 15, 5, 13, 26,
					-- layer=1 filter=26 channel=15
					83, 35, 93, 42, 0, 64, 82, 49, 23,
					-- layer=1 filter=27 channel=0
					13, -30, -25, 21, 36, -2, 10, 48, 1,
					-- layer=1 filter=27 channel=1
					-13, -27, 1, -14, -8, -41, 14, -28, -37,
					-- layer=1 filter=27 channel=2
					23, -6, -25, 29, 40, 5, 55, 14, 7,
					-- layer=1 filter=27 channel=3
					30, -4, -16, -4, 48, -20, -1, 38, 37,
					-- layer=1 filter=27 channel=4
					-26, -5, -27, -43, 7, -27, -35, -23, -19,
					-- layer=1 filter=27 channel=5
					-80, -81, -45, -15, -33, -97, 55, 71, -7,
					-- layer=1 filter=27 channel=6
					-28, -112, -169, 45, -69, -185, 61, 39, -94,
					-- layer=1 filter=27 channel=7
					20, 0, -11, 23, 38, -14, 38, 57, -15,
					-- layer=1 filter=27 channel=8
					-11, -5, 5, -21, -15, 13, -21, 15, 5,
					-- layer=1 filter=27 channel=9
					-9, -7, -44, 46, 29, 17, 34, 33, 1,
					-- layer=1 filter=27 channel=10
					-29, 1, -12, -13, -20, 11, 7, -9, 48,
					-- layer=1 filter=27 channel=11
					-91, -106, -77, -2, -117, -95, 59, 8, -7,
					-- layer=1 filter=27 channel=12
					-17, 16, 43, -77, -25, 42, -15, -10, 50,
					-- layer=1 filter=27 channel=13
					-29, 17, 8, 2, 8, 49, -35, 46, 49,
					-- layer=1 filter=27 channel=14
					20, -17, -43, 28, -5, -46, 27, 28, 18,
					-- layer=1 filter=27 channel=15
					68, 48, 85, 11, 16, 4, 15, 12, 14,
					-- layer=1 filter=28 channel=0
					-59, -20, -36, -2, -15, -17, -6, -40, 23,
					-- layer=1 filter=28 channel=1
					44, 20, 10, 47, 52, 24, 39, 42, 6,
					-- layer=1 filter=28 channel=2
					-29, -74, -21, -58, -43, -57, -29, -34, 9,
					-- layer=1 filter=28 channel=3
					-42, 10, -9, -32, 9, -30, -2, 1, -11,
					-- layer=1 filter=28 channel=4
					16, 36, 16, 47, 36, 45, 24, 41, 37,
					-- layer=1 filter=28 channel=5
					25, -3, 57, -3, -10, 42, 31, 37, 36,
					-- layer=1 filter=28 channel=6
					-25, 8, 12, -14, -8, 27, -20, 6, -15,
					-- layer=1 filter=28 channel=7
					-34, -32, 10, -27, -35, 25, -9, -27, 15,
					-- layer=1 filter=28 channel=8
					-10, -23, 17, 8, -1, -20, -22, 11, 12,
					-- layer=1 filter=28 channel=9
					13, 20, -9, 19, -2, 25, 32, 49, 30,
					-- layer=1 filter=28 channel=10
					-30, 8, -13, 27, -5, 10, 45, -8, -2,
					-- layer=1 filter=28 channel=11
					-19, -44, -35, -3, -23, 3, 27, -3, -2,
					-- layer=1 filter=28 channel=12
					13, -13, 1, -28, 36, -5, 12, -14, 18,
					-- layer=1 filter=28 channel=13
					-3, -37, -44, -34, -36, -34, -20, -26, 19,
					-- layer=1 filter=28 channel=14
					-25, -36, 14, 0, 16, 6, 35, -19, 23,
					-- layer=1 filter=28 channel=15
					-138, -160, -118, -98, -122, -65, -93, -86, -106,
					-- layer=1 filter=29 channel=0
					-121, -133, -140, 18, 17, 52, 27, 69, 70,
					-- layer=1 filter=29 channel=1
					-4, -11, -64, 26, 31, 16, 44, 14, 47,
					-- layer=1 filter=29 channel=2
					-2, -55, -36, 9, 16, -8, 21, 39, 57,
					-- layer=1 filter=29 channel=3
					-63, -62, -59, 34, 32, 35, -5, 1, 48,
					-- layer=1 filter=29 channel=4
					-75, -127, -108, 0, 0, 19, 54, 70, 53,
					-- layer=1 filter=29 channel=5
					94, 88, 99, -52, 21, 22, -36, -36, -40,
					-- layer=1 filter=29 channel=6
					-31, -25, 8, -9, -2, -50, 9, -45, -58,
					-- layer=1 filter=29 channel=7
					42, 51, 61, -20, 11, 33, -33, -34, -34,
					-- layer=1 filter=29 channel=8
					-7, -7, -29, -25, -4, -6, 3, -25, 11,
					-- layer=1 filter=29 channel=9
					40, 74, 26, -9, 11, 14, 18, -11, 4,
					-- layer=1 filter=29 channel=10
					-33, -38, -52, 3, 31, 7, 59, 60, 32,
					-- layer=1 filter=29 channel=11
					81, 80, 42, 36, 40, 92, -7, -17, 38,
					-- layer=1 filter=29 channel=12
					-12, -33, -34, -38, -81, 40, 0, -30, -39,
					-- layer=1 filter=29 channel=13
					-20, -25, -18, -18, 28, 30, -16, -6, 18,
					-- layer=1 filter=29 channel=14
					-30, -51, -32, 0, 50, 46, 29, 27, 1,
					-- layer=1 filter=29 channel=15
					-45, -87, -38, 30, -5, 41, 19, 4, 8,
					-- layer=1 filter=30 channel=0
					0, 7, -5, 10, -3, 20, 31, -11, -15,
					-- layer=1 filter=30 channel=1
					69, 45, -9, -13, 22, -4, 3, -20, -25,
					-- layer=1 filter=30 channel=2
					-18, 5, -28, 5, -18, 32, 48, 29, -7,
					-- layer=1 filter=30 channel=3
					-14, -22, -19, -9, 3, 16, 25, -16, -6,
					-- layer=1 filter=30 channel=4
					47, 28, 16, 26, 33, 13, 39, 21, -14,
					-- layer=1 filter=30 channel=5
					45, 27, -21, 29, 33, 38, -27, -2, 32,
					-- layer=1 filter=30 channel=6
					-77, -81, -67, -94, -63, -74, -93, -21, 4,
					-- layer=1 filter=30 channel=7
					-72, -48, -70, -42, -50, -6, -35, 2, -57,
					-- layer=1 filter=30 channel=8
					10, -18, 3, 0, 11, 4, -25, -7, -20,
					-- layer=1 filter=30 channel=9
					9, -36, -50, 21, -31, -25, 43, -14, -37,
					-- layer=1 filter=30 channel=10
					61, 30, -17, -5, 10, 1, 41, 0, -32,
					-- layer=1 filter=30 channel=11
					-28, -45, -47, 14, 43, 6, -42, 7, -34,
					-- layer=1 filter=30 channel=12
					-13, 4, 10, 72, 1, 45, 64, 47, 97,
					-- layer=1 filter=30 channel=13
					68, 21, 65, 32, 8, 58, 12, 7, 11,
					-- layer=1 filter=30 channel=14
					-29, -33, -40, -15, 17, -8, 32, 18, -9,
					-- layer=1 filter=30 channel=15
					-42, -59, -36, -107, -68, -52, -99, -77, -67,
					-- layer=1 filter=31 channel=0
					33, 17, 1, -6, 18, -28, -9, -70, -81,
					-- layer=1 filter=31 channel=1
					-1, 0, -14, -5, -34, -4, -38, -31, -16,
					-- layer=1 filter=31 channel=2
					30, 3, -8, -41, -59, -80, -19, -79, -74,
					-- layer=1 filter=31 channel=3
					35, 37, 12, 34, -11, -12, 15, 9, -22,
					-- layer=1 filter=31 channel=4
					49, 66, 51, 74, 70, 44, 42, 62, 20,
					-- layer=1 filter=31 channel=5
					-27, -46, 6, -16, -5, -63, -3, -60, -61,
					-- layer=1 filter=31 channel=6
					-24, -60, -29, -56, -62, -12, -71, 7, 63,
					-- layer=1 filter=31 channel=7
					68, 26, 7, 19, -21, -27, 16, -23, -21,
					-- layer=1 filter=31 channel=8
					11, -28, 16, -22, 29, -17, -8, 20, 25,
					-- layer=1 filter=31 channel=9
					49, 53, -31, 42, -17, -41, -11, -15, -21,
					-- layer=1 filter=31 channel=10
					-25, -20, 13, 19, 23, -10, -31, -48, -18,
					-- layer=1 filter=31 channel=11
					-4, 27, 43, -7, 19, -22, -57, -70, -47,
					-- layer=1 filter=31 channel=12
					-31, -52, 0, 37, -73, -8, 56, -50, 1,
					-- layer=1 filter=31 channel=13
					-90, -49, -31, -63, -72, -52, -101, -114, -96,
					-- layer=1 filter=31 channel=14
					49, 0, 25, 5, 14, -40, -5, 15, -4,
					-- layer=1 filter=31 channel=15
					-51, -94, -36, 20, 2, -33, -46, -72, -34,

			16, 16, 10, 9, 6, 8, 12, 13, 5, 11, 20, 15, 7, 2, 1, 
			0, 3, 9, 11, 10, 0, 3, 5, 41, 0, 0, 0, 0, 5, 0, 
			15, 31, 8, 10, 12, 76, 44, 19, 0, 0, 33, 18, 0, 0, 0, 
			0, 0, 1, 3, 0, 3, 0, 8, 1, 41, 45, 36, 28, 0, 0, 
			39, 0, 17, 14, 0, 10, 51, 19, 13, 0, 17, 11, 0, 0, 0, 
			105, 43, 39, 58, 127, 124, 37, 20, 0, 0, 83, 60, 14, 3, 0, 
			94, 42, 46, 19, 30, 26, 79, 44, 23, 0, 86, 19, 1, 0, 2, 
			88, 59, 7, 0, 11, 59, 128, 80, 44, 30, 77, 35, 15, 37, 32, 
			95, 79, 65, 14, 19, 105, 50, 0, 1, 18, 53, 72, 21, 3, 0, 
			113, 94, 64, 12, 46, 36, 27, 0, 23, 75, 53, 0, 0, 0, 15, 
			53, 84, 80, 0, 0, 0, 34, 114, 60, 0, 0, 0, 0, 0, 1, 
			86, 103, 76, 33, 196, 135, 71, 72, 39, 17, 12, 21, 20, 23, 30, 
			16, 68, 81, 109, 163, 21, 22, 19, 15, 7, 6, 7, 31, 42, 14, 
			35, 10, 77, 144, 57, 21, 15, 16, 22, 20, 31, 44, 36, 11, 74, 
			41, 24, 28, 80, 36, 38, 49, 28, 12, 11, 27, 26, 3, 27, 31, 
			

			122, 124, 128, 128, 128, 124, 129, 139, 135, 113, 97, 100, 105, 113, 112, 
			129, 131, 135, 130, 131, 123, 114, 116, 78, 60, 37, 45, 70, 93, 107, 
			96, 103, 130, 133, 135, 113, 62, 53, 49, 47, 23, 25, 23, 62, 89, 
			20, 92, 114, 136, 114, 89, 53, 37, 27, 59, 20, 35, 14, 31, 85, 
			0, 61, 89, 135, 67, 61, 26, 25, 22, 62, 36, 24, 34, 20, 66, 
			4, 34, 77, 95, 54, 40, 24, 32, 13, 92, 20, 12, 38, 22, 27, 
			9, 3, 68, 80, 85, 67, 32, 23, 11, 70, 1, 17, 30, 31, 32, 
			12, 0, 44, 53, 82, 69, 10, 26, 22, 75, 17, 13, 36, 36, 61, 
			1, 5, 0, 35, 49, 32, 28, 32, 51, 39, 49, 13, 36, 60, 102, 
			13, 13, 0, 25, 16, 51, 48, 15, 44, 40, 10, 20, 52, 98, 104, 
			15, 15, 0, 71, 0, 22, 31, 0, 0, 0, 2, 0, 0, 0, 0, 
			0, 0, 2, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			17, 0, 0, 0, 13, 0, 8, 0, 0, 0, 7, 0, 0, 0, 0, 
			22, 23, 0, 0, 37, 11, 15, 0, 0, 0, 16, 0, 0, 0, 0, 
			18, 33, 0, 0, 0, 0, 42, 0, 0, 0, 23, 0, 0, 0, 0, 
			29, 50, 0, 0, 0, 35, 11, 0, 0, 0, 7, 0, 0, 0, 0, 
			50, 60, 7, 5, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 
			46, 47, 32, 11, 28, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 
			53, 44, 34, 23, 44, 22, 24, 54, 14, 0, 0, 0, 6, 27, 27, 
			65, 54, 40, 50, 98, 48, 37, 41, 32, 24, 27, 30, 37, 37, 41, 
			38, 41, 32, 87, 56, 26, 25, 20, 20, 22, 32, 39, 42, 45, 50, 
			53, 35, 42, 88, 27, 26, 26, 24, 25, 32, 38, 49, 44, 55, 57, 
			48, 42, 30, 60, 19, 25, 30, 23, 26, 35, 38, 32, 45, 66, 46, 
			

			17, 26, 21, 21, 16, 25, 15, 10, 10, 11, 17, 21, 24, 10, 6, 
			11, 14, 17, 19, 25, 80, 14, 16, 17, 56, 55, 28, 20, 15, 11, 
			17, 22, 15, 16, 13, 65, 53, 25, 28, 107, 112, 102, 48, 5, 29, 
			43, 29, 12, 17, 27, 51, 77, 61, 65, 94, 121, 70, 72, 15, 18, 
			132, 106, 34, 61, 158, 118, 126, 83, 56, 84, 121, 70, 70, 42, 0, 
			152, 176, 61, 44, 193, 161, 161, 91, 56, 120, 155, 93, 76, 73, 34, 
			163, 163, 54, 28, 89, 151, 172, 135, 81, 143, 149, 83, 71, 88, 64, 
			184, 201, 68, 54, 59, 175, 175, 120, 91, 127, 148, 85, 77, 88, 67, 
			220, 215, 130, 128, 75, 110, 97, 90, 85, 64, 77, 74, 54, 67, 33, 
			232, 216, 159, 143, 103, 78, 125, 144, 79, 90, 64, 26, 38, 41, 30, 
			208, 201, 159, 212, 225, 110, 165, 200, 125, 67, 56, 76, 90, 95, 83, 
			166, 226, 186, 247, 229, 162, 133, 132, 122, 114, 125, 137, 153, 154, 153, 
			148, 151, 215, 249, 187, 137, 127, 124, 123, 128, 144, 154, 157, 164, 186, 
			168, 138, 166, 250, 145, 142, 136, 123, 133, 145, 155, 162, 162, 178, 175, 
			172, 159, 137, 147, 115, 127, 141, 142, 145, 159, 146, 151, 186, 200, 150, 
			

			113, 109, 108, 111, 113, 98, 113, 124, 119, 110, 104, 98, 95, 98, 106, 
			109, 104, 108, 115, 108, 60, 97, 103, 117, 58, 29, 42, 70, 92, 98, 
			109, 118, 114, 118, 119, 143, 127, 88, 38, 13, 41, 40, 44, 58, 81, 
			56, 3, 104, 110, 103, 76, 38, 40, 44, 34, 79, 61, 72, 47, 55, 
			48, 0, 101, 57, 0, 3, 61, 54, 62, 12, 35, 47, 36, 40, 38, 
			67, 42, 106, 118, 101, 88, 62, 48, 47, 0, 81, 87, 40, 43, 18, 
			49, 58, 98, 123, 55, 37, 73, 64, 62, 0, 92, 54, 39, 27, 41, 
			43, 47, 28, 73, 37, 25, 120, 92, 77, 36, 93, 71, 35, 56, 82, 
			52, 34, 70, 32, 59, 102, 81, 48, 26, 85, 76, 112, 56, 53, 64, 
			82, 49, 76, 4, 45, 51, 36, 19, 36, 96, 101, 43, 2, 54, 109, 
			37, 48, 88, 0, 3, 0, 0, 75, 63, 43, 0, 0, 0, 28, 40, 
			30, 55, 40, 0, 157, 116, 56, 55, 31, 12, 2, 2, 0, 0, 4, 
			0, 22, 24, 78, 136, 4, 4, 7, 8, 0, 0, 0, 0, 5, 0, 
			4, 0, 0, 139, 50, 0, 3, 0, 0, 0, 2, 9, 7, 0, 28, 
			5, 0, 5, 67, 35, 20, 25, 9, 0, 0, 0, 0, 0, 0, 10, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 19, 15, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 0, 0, 5, 13, 0, 
			18, 50, 0, 0, 0, 62, 5, 10, 0, 0, 0, 0, 0, 10, 9, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 25, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 13, 0, 28, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 17, 12, 22, 0, 0, 0, 0, 0, 3, 0, 
			0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 34, 38, 7, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 42, 15, 0, 0, 0, 
			11, 0, 0, 0, 0, 0, 0, 46, 7, 0, 0, 0, 0, 7, 4, 
			72, 29, 0, 0, 46, 49, 28, 25, 7, 0, 0, 0, 0, 0, 0, 
			0, 38, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 20, 79, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 20, 
			0, 0, 0, 73, 3, 12, 20, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			1, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 9, 3, 0, 0, 
			1, 1, 6, 0, 13, 29, 0, 0, 0, 27, 0, 0, 4, 18, 0, 
			0, 57, 3, 0, 9, 7, 0, 0, 11, 81, 0, 0, 0, 10, 31, 
			0, 101, 0, 12, 0, 32, 0, 0, 0, 104, 0, 0, 0, 0, 85, 
			0, 29, 0, 102, 0, 0, 0, 0, 0, 148, 0, 0, 0, 0, 30, 
			0, 8, 0, 30, 104, 0, 0, 0, 0, 257, 0, 0, 13, 0, 0, 
			0, 0, 0, 0, 97, 86, 0, 0, 0, 203, 0, 0, 4, 21, 0, 
			0, 0, 0, 0, 67, 95, 0, 0, 0, 128, 0, 0, 33, 0, 0, 
			0, 0, 0, 47, 0, 9, 0, 0, 31, 0, 14, 0, 31, 32, 14, 
			0, 0, 0, 85, 0, 8, 57, 0, 0, 0, 0, 0, 45, 46, 0, 
			94, 0, 0, 220, 0, 0, 75, 0, 0, 0, 0, 20, 13, 10, 0, 
			78, 65, 0, 150, 0, 0, 0, 0, 0, 0, 2, 6, 5, 0, 0, 
			0, 82, 133, 0, 0, 0, 0, 0, 0, 3, 8, 5, 0, 4, 14, 
			0, 0, 172, 0, 0, 4, 0, 0, 6, 4, 0, 0, 0, 35, 0, 
			0, 0, 11, 0, 0, 22, 8, 0, 12, 0, 0, 4, 58, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 8, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 11, 34, 27, 40, 24, 0, 0, 
			27, 7, 0, 0, 0, 0, 5, 21, 23, 0, 6, 0, 13, 13, 0, 
			52, 41, 0, 0, 39, 21, 5, 22, 15, 17, 23, 21, 32, 38, 0, 
			26, 16, 0, 0, 0, 0, 10, 22, 42, 36, 1, 7, 20, 38, 46, 
			43, 14, 0, 0, 0, 0, 0, 15, 24, 21, 3, 28, 28, 33, 23, 
			33, 50, 23, 0, 0, 0, 0, 0, 1, 0, 0, 15, 21, 0, 0, 
			42, 42, 34, 14, 0, 0, 0, 18, 22, 0, 0, 0, 2, 0, 0, 
			9, 25, 40, 47, 16, 14, 25, 46, 17, 0, 0, 30, 28, 0, 0, 
			28, 22, 28, 78, 102, 89, 47, 23, 44, 65, 98, 114, 104, 66, 59, 
			62, 39, 45, 31, 0, 32, 59, 65, 91, 108, 121, 124, 135, 129, 131, 
			149, 64, 47, 0, 50, 118, 115, 113, 117, 129, 143, 150, 132, 133, 167, 
			157, 140, 57, 27, 88, 124, 126, 118, 121, 134, 136, 131, 142, 167, 116, 
			154, 149, 110, 72, 96, 101, 103, 120, 130, 142, 133, 137, 162, 166, 151, 
			

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
			0, 0, 0, 0, 5, 63, 5, 0, 0, 29, 54, 19, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 31, 72, 34, 34, 26, 0, 1, 
			20, 67, 1, 2, 0, 30, 55, 33, 28, 33, 11, 7, 3, 4, 8, 
			62, 104, 3, 61, 125, 87, 16, 14, 0, 71, 59, 31, 34, 25, 0, 
			28, 45, 0, 0, 0, 7, 46, 35, 19, 127, 13, 0, 25, 30, 41, 
			51, 28, 0, 0, 19, 76, 27, 37, 9, 96, 9, 23, 33, 56, 29, 
			61, 52, 48, 27, 62, 60, 0, 0, 1, 44, 15, 3, 29, 9, 0, 
			60, 65, 18, 54, 33, 0, 7, 39, 50, 13, 0, 0, 0, 24, 29, 
			36, 56, 20, 83, 21, 11, 56, 86, 21, 0, 0, 9, 52, 36, 0, 
			68, 57, 7, 155, 151, 119, 81, 4, 7, 29, 69, 96, 72, 48, 44, 
			14, 40, 67, 142, 0, 0, 1, 4, 30, 52, 60, 61, 74, 71, 64, 
			70, 24, 81, 36, 0, 58, 53, 52, 57, 70, 81, 86, 65, 66, 101, 
			65, 68, 51, 0, 36, 64, 66, 57, 59, 67, 64, 55, 64, 98, 29, 
			61, 68, 58, 0, 30, 35, 35, 55, 81, 84, 65, 69, 125, 96, 55, 
			

			125, 123, 128, 131, 131, 121, 137, 145, 133, 108, 87, 90, 100, 113, 108, 
			130, 136, 135, 136, 130, 117, 139, 114, 77, 35, 31, 41, 54, 81, 105, 
			86, 86, 134, 138, 139, 118, 73, 47, 20, 18, 29, 16, 24, 41, 76, 
			48, 51, 133, 134, 119, 74, 60, 25, 13, 24, 44, 31, 9, 9, 50, 
			30, 58, 130, 96, 87, 88, 61, 28, 12, 8, 55, 41, 17, 9, 33, 
			34, 41, 126, 99, 28, 56, 60, 47, 26, 7, 65, 28, 16, 12, 11, 
			34, 44, 85, 105, 47, 51, 65, 48, 32, 21, 50, 27, 14, 12, 33, 
			41, 36, 55, 86, 54, 51, 57, 33, 29, 46, 40, 30, 6, 33, 59, 
			38, 33, 32, 19, 67, 38, 43, 32, 26, 83, 33, 17, 8, 38, 97, 
			36, 37, 30, 11, 40, 31, 28, 46, 49, 25, 10, 0, 9, 91, 114, 
			9, 46, 37, 12, 48, 37, 11, 14, 3, 0, 0, 0, 0, 0, 0, 
			0, 0, 31, 63, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 11, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 27, 10, 0, 
			20, 47, 0, 0, 0, 86, 2, 22, 0, 0, 0, 0, 0, 40, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 20, 0, 0, 42, 
			0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 39, 
			0, 0, 0, 26, 107, 13, 0, 0, 0, 0, 0, 0, 3, 0, 0, 
			0, 6, 33, 0, 58, 0, 3, 0, 0, 26, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 15, 18, 40, 0, 33, 0, 0, 8, 23, 0, 
			0, 0, 0, 0, 0, 92, 3, 0, 0, 19, 49, 36, 35, 0, 0, 
			0, 1, 0, 5, 0, 0, 0, 0, 6, 33, 31, 6, 0, 0, 0, 
			18, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 21, 3, 
			136, 37, 0, 0, 88, 74, 77, 65, 14, 1, 0, 6, 0, 0, 0, 
			0, 108, 8, 28, 31, 0, 0, 0, 0, 0, 0, 0, 6, 7, 0, 
			0, 7, 112, 46, 0, 0, 0, 0, 0, 0, 8, 22, 3, 0, 63, 
			0, 1, 31, 90, 28, 36, 29, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			3, 0, 0, 3, 5, 0, 5, 2, 5, 11, 9, 0, 0, 10, 11, 
			0, 0, 0, 7, 0, 0, 46, 20, 25, 0, 10, 21, 0, 0, 6, 
			46, 0, 3, 3, 1, 0, 52, 5, 0, 0, 28, 0, 48, 0, 0, 
			92, 0, 11, 0, 31, 0, 9, 36, 14, 0, 57, 18, 33, 44, 0, 
			62, 0, 65, 0, 0, 38, 56, 58, 36, 0, 0, 77, 0, 39, 0, 
			91, 0, 80, 80, 0, 18, 42, 27, 70, 0, 92, 74, 0, 17, 30, 
			77, 45, 7, 66, 0, 0, 1, 48, 59, 0, 81, 56, 0, 0, 38, 
			77, 0, 48, 17, 0, 0, 103, 16, 30, 0, 44, 60, 0, 3, 4, 
			65, 0, 152, 0, 81, 0, 11, 15, 0, 43, 0, 68, 0, 0, 0, 
			0, 0, 117, 0, 56, 34, 0, 3, 55, 22, 56, 0, 0, 0, 17, 
			0, 2, 97, 0, 95, 51, 0, 15, 76, 36, 0, 0, 0, 0, 12, 
			0, 0, 3, 0, 163, 63, 0, 0, 6, 0, 0, 0, 0, 0, 5, 
			31, 0, 0, 48, 117, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 
			21, 0, 0, 62, 31, 0, 13, 2, 0, 0, 0, 0, 0, 0, 40, 
			43, 0, 12, 0, 17, 0, 0, 0, 0, 0, 15, 0, 0, 18, 49, 
			

			101, 112, 111, 111, 107, 107, 116, 121, 107, 81, 70, 79, 93, 100, 95, 
			110, 119, 115, 113, 108, 123, 106, 94, 58, 42, 36, 40, 50, 71, 90, 
			68, 70, 111, 117, 110, 84, 65, 37, 30, 38, 37, 37, 32, 32, 80, 
			45, 56, 104, 110, 99, 62, 62, 32, 25, 25, 56, 34, 28, 24, 55, 
			35, 62, 100, 74, 102, 79, 65, 46, 27, 29, 58, 46, 35, 31, 31, 
			15, 51, 106, 72, 51, 65, 83, 54, 43, 33, 54, 35, 28, 28, 34, 
			28, 48, 70, 97, 53, 64, 57, 53, 43, 32, 45, 36, 26, 28, 43, 
			39, 53, 38, 74, 38, 49, 49, 38, 44, 52, 49, 36, 21, 39, 72, 
			40, 39, 28, 43, 47, 33, 48, 41, 35, 58, 28, 28, 25, 62, 94, 
			42, 37, 40, 26, 38, 35, 42, 58, 37, 31, 20, 8, 34, 83, 87, 
			21, 40, 38, 40, 72, 32, 15, 20, 15, 9, 0, 0, 0, 0, 0, 
			0, 4, 36, 55, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 9, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 2, 0, 0, 0, 9, 1, 0, 0, 0, 0, 
			0, 9, 0, 0, 0, 24, 3, 0, 0, 49, 37, 34, 3, 0, 0, 
			0, 3, 0, 0, 0, 6, 11, 10, 20, 59, 35, 26, 21, 0, 12, 
			33, 35, 0, 21, 34, 24, 32, 14, 14, 50, 37, 6, 20, 0, 0, 
			55, 75, 0, 5, 107, 68, 47, 21, 0, 75, 50, 24, 31, 19, 0, 
			56, 61, 14, 0, 49, 63, 71, 41, 14, 90, 49, 17, 25, 35, 11, 
			66, 77, 10, 0, 27, 88, 62, 56, 26, 71, 57, 20, 35, 36, 16, 
			83, 99, 30, 57, 13, 60, 33, 25, 34, 16, 34, 21, 24, 22, 0, 
			105, 101, 45, 74, 28, 23, 54, 45, 19, 38, 20, 7, 14, 9, 0, 
			111, 88, 51, 112, 60, 22, 81, 95, 39, 17, 16, 28, 34, 43, 29, 
			116, 122, 76, 130, 103, 80, 75, 74, 60, 60, 67, 74, 82, 83, 80, 
			77, 102, 118, 113, 76, 68, 65, 65, 64, 69, 78, 80, 85, 92, 96, 
			88, 75, 115, 117, 70, 75, 66, 63, 71, 77, 85, 93, 90, 97, 101, 
			86, 86, 79, 90, 63, 77, 83, 75, 76, 80, 76, 84, 102, 98, 73, 
			

			56, 56, 58, 57, 56, 53, 66, 73, 59, 38, 32, 39, 43, 49, 44, 
			58, 67, 61, 60, 56, 23, 49, 45, 30, 0, 0, 0, 8, 33, 40, 
			17, 50, 65, 66, 64, 35, 16, 0, 0, 0, 0, 0, 0, 0, 29, 
			0, 0, 59, 63, 36, 19, 0, 0, 0, 0, 0, 0, 0, 0, 16, 
			0, 0, 39, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 37, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 22, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 36, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;
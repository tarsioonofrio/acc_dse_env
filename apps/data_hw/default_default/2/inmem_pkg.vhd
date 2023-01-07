LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=2
					-9857, -2746, -3522, -1128, -1907, 19031, 4119, -1514, 3749, 2610, 8581, 16753, 631, -9645, -3394, 6672, 16820, 17650, -3089, 3359, 4869, 12061, 2797, -4837, -1253, 12038, -12273, -1980, -1390, 7052, -3490, 10862, 6894, 20186, 9815, 5929, 8887, 7741, -10763, 1497, -4800, 4961, -6072, 2333, -11606, -2760, 7919, -3921, 3048, 11386, 8831, -1297, 5974, 11374, -313, -1689, 2755, 6348, 11684, 9585, 14350, -7936, 7740, 11236,

					-- weights
					-- layer=2 filter=0 channel=0
					-19, 10, -12, 6, -21, 0, 25, -1, 16,
					-- layer=2 filter=0 channel=1
					-13, -16, 31, -5, 11, 29, -26, -6, -32,
					-- layer=2 filter=0 channel=2
					39, 42, 45, 40, 143, 52, 40, 100, 35,
					-- layer=2 filter=0 channel=3
					20, 56, -2, -10, 11, -7, 6, -42, -42,
					-- layer=2 filter=0 channel=4
					17, 63, 67, 84, 141, 69, 58, 96, 7,
					-- layer=2 filter=0 channel=5
					0, 26, -26, 25, 15, 0, 36, 31, 17,
					-- layer=2 filter=0 channel=6
					-2, 0, 27, -45, -4, 33, -40, -20, -2,
					-- layer=2 filter=0 channel=7
					0, -2, -20, -35, -16, -40, -9, -33, -14,
					-- layer=2 filter=0 channel=8
					32, 3, 24, -3, 18, 59, 2, -18, -12,
					-- layer=2 filter=0 channel=9
					-12, 26, 9, -4, -2, 4, -8, -6, 5,
					-- layer=2 filter=0 channel=10
					-27, 38, 17, -4, 13, -4, -24, -40, -22,
					-- layer=2 filter=0 channel=11
					8, -5, -36, 7, -6, -36, -56, 9, 3,
					-- layer=2 filter=0 channel=12
					15, 17, 2, 7, -17, -3, 11, 14, 34,
					-- layer=2 filter=0 channel=13
					16, 15, 37, -29, -9, 21, 0, -6, 4,
					-- layer=2 filter=0 channel=14
					0, -8, -53, 16, 21, 16, 2, 36, 10,
					-- layer=2 filter=0 channel=15
					16, 3, -39, -9, -49, -16, 1, -23, -15,
					-- layer=2 filter=0 channel=16
					17, 9, 14, -11, 17, 55, 1, -16, -33,
					-- layer=2 filter=0 channel=17
					7, 32, 19, -3, -13, 12, -27, -25, 0,
					-- layer=2 filter=0 channel=18
					-67, -46, -58, -1, -73, -41, -44, -111, -33,
					-- layer=2 filter=0 channel=19
					-18, 8, -7, -12, 1, -6, 34, 0, 18,
					-- layer=2 filter=0 channel=20
					-27, -9, -40, -12, -34, -14, 2, -16, -4,
					-- layer=2 filter=0 channel=21
					9, -10, -28, 17, -1, -10, 16, 1, 24,
					-- layer=2 filter=0 channel=22
					-8, 5, -11, -16, -16, 2, 2, -21, -17,
					-- layer=2 filter=0 channel=23
					1, -9, 2, 12, 7, 44, -8, -29, 26,
					-- layer=2 filter=0 channel=24
					7, 16, -19, 13, 6, -57, 19, -26, -104,
					-- layer=2 filter=0 channel=25
					13, 14, 48, -5, 18, 17, -10, 8, 4,
					-- layer=2 filter=0 channel=26
					3, -18, 34, 29, -2, 26, -1, -29, -36,
					-- layer=2 filter=0 channel=27
					10, -4, 22, -24, 0, 27, 8, -18, 33,
					-- layer=2 filter=0 channel=28
					25, 25, 2, 16, 21, 18, -43, -19, -37,
					-- layer=2 filter=0 channel=29
					28, -32, 20, -11, -4, -6, -25, 14, -5,
					-- layer=2 filter=0 channel=30
					-21, 4, 2, -23, 3, 22, -1, 20, 25,
					-- layer=2 filter=0 channel=31
					-1, -21, 16, 6, 29, 4, -3, -52, -24,
					-- layer=2 filter=1 channel=0
					0, 1, 18, 30, -16, 2, 35, 0, -3,
					-- layer=2 filter=1 channel=1
					-35, -58, -34, -41, 0, 5, 37, 110, 44,
					-- layer=2 filter=1 channel=2
					17, -30, -50, 36, 38, -21, 105, 42, 67,
					-- layer=2 filter=1 channel=3
					-10, -10, -81, 9, -101, 0, -13, 28, 59,
					-- layer=2 filter=1 channel=4
					-9, -15, 7, 20, 57, 62, 63, 70, 34,
					-- layer=2 filter=1 channel=5
					-15, 7, -27, -11, 81, -2, -69, -66, -19,
					-- layer=2 filter=1 channel=6
					2, 33, 51, -22, -3, -35, -78, -76, -22,
					-- layer=2 filter=1 channel=7
					16, 2, 3, -48, -58, -65, 25, 12, 17,
					-- layer=2 filter=1 channel=8
					-20, -2, -14, -8, 18, 20, 0, 32, 20,
					-- layer=2 filter=1 channel=9
					52, 34, 4, 19, 34, 8, 24, -11, -41,
					-- layer=2 filter=1 channel=10
					-19, 9, -14, 18, 41, 32, 31, 33, -36,
					-- layer=2 filter=1 channel=11
					-1, 3, -30, 84, 54, -38, 35, -31, -6,
					-- layer=2 filter=1 channel=12
					17, -4, -38, 6, 3, -48, -70, -49, -63,
					-- layer=2 filter=1 channel=13
					57, 67, 14, -39, -35, -28, 18, 37, 56,
					-- layer=2 filter=1 channel=14
					-36, -17, -43, 37, 62, 24, -52, -51, -58,
					-- layer=2 filter=1 channel=15
					25, 31, 24, 5, 4, -2, -39, -105, -114,
					-- layer=2 filter=1 channel=16
					52, 49, 66, -17, 12, -12, 5, 42, 23,
					-- layer=2 filter=1 channel=17
					48, 51, 13, 35, 30, 5, -30, -3, 5,
					-- layer=2 filter=1 channel=18
					4, 35, -25, 7, 77, 16, -6, 29, -9,
					-- layer=2 filter=1 channel=19
					5, 4, -4, -7, 34, -3, -14, -32, -27,
					-- layer=2 filter=1 channel=20
					-2, 26, 3, 29, 8, 13, 0, -9, -32,
					-- layer=2 filter=1 channel=21
					27, 4, 16, 9, 31, 0, -26, -46, -29,
					-- layer=2 filter=1 channel=22
					7, -2, -16, -9, 13, 7, -44, -16, -35,
					-- layer=2 filter=1 channel=23
					-38, -2, 0, 49, 73, 35, -25, -36, -40,
					-- layer=2 filter=1 channel=24
					-34, -74, -15, 40, -83, -57, 77, -45, -52,
					-- layer=2 filter=1 channel=25
					-22, -34, -10, -32, -50, -17, 20, 36, 49,
					-- layer=2 filter=1 channel=26
					48, 56, 22, 19, 42, 32, 17, -13, -61,
					-- layer=2 filter=1 channel=27
					-18, 21, -10, -50, 36, 20, 0, -69, -18,
					-- layer=2 filter=1 channel=28
					-5, 4, -69, -15, -19, 1, 14, 38, 59,
					-- layer=2 filter=1 channel=29
					-1, 0, 5, -73, 26, -62, -6, -38, -39,
					-- layer=2 filter=1 channel=30
					3, -13, -28, 8, -28, -18, -31, -23, 24,
					-- layer=2 filter=1 channel=31
					50, 19, -9, -17, 19, -5, -26, -26, -35,
					-- layer=2 filter=2 channel=0
					17, 34, 20, -14, -18, 7, -7, 0, -8,
					-- layer=2 filter=2 channel=1
					2, -10, 8, -11, -33, -77, 28, 25, -27,
					-- layer=2 filter=2 channel=2
					-23, -18, -3, -57, -39, -17, -4, 15, 11,
					-- layer=2 filter=2 channel=3
					13, 31, 29, 89, 31, 60, 14, 53, 25,
					-- layer=2 filter=2 channel=4
					-59, -45, -39, -18, -60, 1, 6, -13, 37,
					-- layer=2 filter=2 channel=5
					-4, 10, 13, 6, 38, 10, -12, 12, 30,
					-- layer=2 filter=2 channel=6
					-3, -1, -11, -39, 6, 4, -35, -36, -22,
					-- layer=2 filter=2 channel=7
					53, 26, 24, 0, -28, -54, 15, -15, -17,
					-- layer=2 filter=2 channel=8
					-25, 34, -46, 13, 0, -5, 55, 16, -32,
					-- layer=2 filter=2 channel=9
					-1, 49, 56, -42, 25, 46, -49, -30, 40,
					-- layer=2 filter=2 channel=10
					28, -4, -5, 31, 30, -29, -3, -4, -29,
					-- layer=2 filter=2 channel=11
					25, -8, 15, -4, 38, 17, -23, 36, 44,
					-- layer=2 filter=2 channel=12
					-13, -24, 19, -22, 2, 15, -25, 12, 22,
					-- layer=2 filter=2 channel=13
					29, 7, 56, -42, -40, -40, 27, -4, 2,
					-- layer=2 filter=2 channel=14
					15, -3, -44, 8, -2, -22, -50, -12, 5,
					-- layer=2 filter=2 channel=15
					-46, -20, 54, -49, 4, 56, -56, -50, 44,
					-- layer=2 filter=2 channel=16
					45, -16, -10, 35, -44, -49, 49, 7, -16,
					-- layer=2 filter=2 channel=17
					10, 1, 60, -27, 8, 40, -58, -27, 36,
					-- layer=2 filter=2 channel=18
					6, -55, -35, 31, 0, 31, -12, -26, -8,
					-- layer=2 filter=2 channel=19
					1, -1, -26, 24, 17, 0, -10, -5, 9,
					-- layer=2 filter=2 channel=20
					31, -26, -23, 15, 16, 13, 11, 4, -6,
					-- layer=2 filter=2 channel=21
					36, -2, -24, 35, -10, 7, -14, 0, 2,
					-- layer=2 filter=2 channel=22
					-13, 29, 49, -40, -6, 34, -55, -52, 31,
					-- layer=2 filter=2 channel=23
					0, -13, -73, 22, 20, -18, -8, 3, -53,
					-- layer=2 filter=2 channel=24
					-21, 50, 13, 27, 39, 34, 38, 54, 48,
					-- layer=2 filter=2 channel=25
					3, -21, -32, -3, -24, -73, 55, 29, -29,
					-- layer=2 filter=2 channel=26
					-36, -1, 35, -61, -39, 35, -66, -19, 32,
					-- layer=2 filter=2 channel=27
					-28, 46, 45, -23, -4, 48, -27, -24, 44,
					-- layer=2 filter=2 channel=28
					2, 23, 31, 15, 62, 73, 37, 68, 44,
					-- layer=2 filter=2 channel=29
					-8, 19, 28, -36, 15, 53, -40, -29, -4,
					-- layer=2 filter=2 channel=30
					5, -4, -54, 48, 19, 26, 18, 27, 6,
					-- layer=2 filter=2 channel=31
					-21, -12, 41, -65, -1, 14, -64, 3, 62,
					-- layer=2 filter=3 channel=0
					-3, 0, 0, 3, -3, -5, 12, -18, 8,
					-- layer=2 filter=3 channel=1
					-16, -28, 10, -22, -8, -13, -10, -22, -13,
					-- layer=2 filter=3 channel=2
					6, -19, 11, -25, -12, -10, -10, 14, 0,
					-- layer=2 filter=3 channel=3
					-16, 8, -11, -16, -24, 13, -21, 5, -3,
					-- layer=2 filter=3 channel=4
					-20, 0, 5, 0, -6, -10, 3, -18, -19,
					-- layer=2 filter=3 channel=5
					-15, 7, -12, 0, -5, 2, 17, 6, -10,
					-- layer=2 filter=3 channel=6
					-5, -12, -13, -16, -9, -13, 6, -3, -3,
					-- layer=2 filter=3 channel=7
					13, 10, 5, 7, -18, 0, -21, -35, 0,
					-- layer=2 filter=3 channel=8
					12, -25, 2, 9, 4, 7, -7, -20, -4,
					-- layer=2 filter=3 channel=9
					-19, 8, -1, 2, 2, -9, -7, -4, -1,
					-- layer=2 filter=3 channel=10
					-21, 15, -14, 3, 0, 16, -22, -6, -33,
					-- layer=2 filter=3 channel=11
					-21, -8, 17, -8, 7, 4, -14, -4, 8,
					-- layer=2 filter=3 channel=12
					5, -8, 5, -12, 0, -21, 2, -12, -4,
					-- layer=2 filter=3 channel=13
					-31, -3, -30, 10, 11, -14, 0, -3, 0,
					-- layer=2 filter=3 channel=14
					1, -18, -7, -18, 8, 18, 7, 11, -11,
					-- layer=2 filter=3 channel=15
					-8, -20, -15, 3, 5, -14, -5, -5, -11,
					-- layer=2 filter=3 channel=16
					11, -16, 0, -9, -24, -1, -5, 0, -19,
					-- layer=2 filter=3 channel=17
					-1, 6, -20, -21, -17, -23, -25, -3, -6,
					-- layer=2 filter=3 channel=18
					-12, 0, -2, -10, 10, -14, -11, -12, -8,
					-- layer=2 filter=3 channel=19
					-22, 12, -2, -15, 0, -16, -25, -12, -21,
					-- layer=2 filter=3 channel=20
					-20, 15, -19, -7, -5, -21, -5, -13, -19,
					-- layer=2 filter=3 channel=21
					-12, 3, 4, 1, -6, 7, -18, 11, -14,
					-- layer=2 filter=3 channel=22
					-2, 12, 5, -23, 0, -21, -8, -25, -4,
					-- layer=2 filter=3 channel=23
					4, 3, -4, -22, 0, -8, 3, -14, -19,
					-- layer=2 filter=3 channel=24
					-22, 5, -1, -22, -24, 5, -4, 0, -32,
					-- layer=2 filter=3 channel=25
					-18, -16, 1, -13, 9, -10, -16, 9, -19,
					-- layer=2 filter=3 channel=26
					-5, 2, 4, 17, 0, 1, 0, 5, -20,
					-- layer=2 filter=3 channel=27
					11, 11, -22, 16, 8, -20, 2, -10, -24,
					-- layer=2 filter=3 channel=28
					-22, -14, -2, -16, -7, -15, -15, -11, 9,
					-- layer=2 filter=3 channel=29
					-10, 7, 7, -19, 11, 11, 1, -6, -15,
					-- layer=2 filter=3 channel=30
					9, -10, 6, -6, 8, 13, 9, -5, -12,
					-- layer=2 filter=3 channel=31
					-13, -17, -29, 4, 18, -13, -9, 8, -16,
					-- layer=2 filter=4 channel=0
					9, 27, 23, -5, -10, 1, 12, 1, -4,
					-- layer=2 filter=4 channel=1
					-29, -43, -29, 18, 62, -6, -26, -18, -13,
					-- layer=2 filter=4 channel=2
					-74, -42, -22, 12, -9, -39, 17, 30, 7,
					-- layer=2 filter=4 channel=3
					-26, -50, 50, -28, -66, -43, -33, -28, -62,
					-- layer=2 filter=4 channel=4
					-48, -50, -51, 10, -47, -48, -8, -42, -27,
					-- layer=2 filter=4 channel=5
					-61, -61, -45, -65, -22, -23, -2, 22, 22,
					-- layer=2 filter=4 channel=6
					35, 37, 49, 27, 15, -5, 8, 28, 54,
					-- layer=2 filter=4 channel=7
					-1, 22, 24, -31, -9, -19, 14, 31, -14,
					-- layer=2 filter=4 channel=8
					7, 8, -10, 43, 17, -15, 3, 14, 36,
					-- layer=2 filter=4 channel=9
					-7, -61, -16, -74, -49, -85, -41, -34, 15,
					-- layer=2 filter=4 channel=10
					9, 3, 0, 40, 58, 14, -6, 15, 29,
					-- layer=2 filter=4 channel=11
					-23, 20, 1, -12, 36, -16, -3, -18, -36,
					-- layer=2 filter=4 channel=12
					22, 26, -9, -12, -34, 0, -11, -32, -33,
					-- layer=2 filter=4 channel=13
					-13, 56, 28, -75, -49, -86, -78, -21, -30,
					-- layer=2 filter=4 channel=14
					-22, 0, 0, -1, -6, -14, 22, 3, 12,
					-- layer=2 filter=4 channel=15
					15, -6, 0, -17, -32, 0, -4, -27, -56,
					-- layer=2 filter=4 channel=16
					39, 13, -24, 42, 65, 96, 18, 53, 29,
					-- layer=2 filter=4 channel=17
					15, 26, 23, -19, 63, 34, -7, 70, 55,
					-- layer=2 filter=4 channel=18
					6, 0, -8, 6, 44, 12, -28, 0, -44,
					-- layer=2 filter=4 channel=19
					22, -3, 10, 13, 1, 2, 4, -2, 2,
					-- layer=2 filter=4 channel=20
					43, 24, 31, 13, 19, 22, 19, -5, 4,
					-- layer=2 filter=4 channel=21
					2, -26, 14, 16, -33, 21, 20, -6, 13,
					-- layer=2 filter=4 channel=22
					-38, 27, -16, -50, -18, -29, -9, -20, 2,
					-- layer=2 filter=4 channel=23
					-11, -14, -1, 34, 63, 50, 26, 18, 17,
					-- layer=2 filter=4 channel=24
					23, -50, -25, 46, -11, -42, 35, -20, -66,
					-- layer=2 filter=4 channel=25
					-19, -38, -38, -25, 46, -42, -15, 5, 8,
					-- layer=2 filter=4 channel=26
					-52, -32, -27, -44, -23, -18, 8, 6, 40,
					-- layer=2 filter=4 channel=27
					11, -8, -43, 6, -23, -23, 28, -9, -3,
					-- layer=2 filter=4 channel=28
					-89, -74, 21, -39, -57, -47, -68, -41, -13,
					-- layer=2 filter=4 channel=29
					13, -4, -39, 36, 3, -15, 20, 6, 17,
					-- layer=2 filter=4 channel=30
					41, 5, 20, 12, -9, -23, 17, 15, -16,
					-- layer=2 filter=4 channel=31
					-10, -21, -20, -27, 10, -23, -37, -20, -10,
					-- layer=2 filter=5 channel=0
					15, -20, -3, -1, -16, 28, -8, -11, -7,
					-- layer=2 filter=5 channel=1
					56, 38, 5, 12, -15, -23, -13, 14, 44,
					-- layer=2 filter=5 channel=2
					-6, -83, -110, -53, -97, -83, 54, -25, -43,
					-- layer=2 filter=5 channel=3
					-5, -115, -60, -48, -27, -53, 4, -37, -2,
					-- layer=2 filter=5 channel=4
					-14, -73, -20, -16, -98, -58, -47, -9, -21,
					-- layer=2 filter=5 channel=5
					35, 53, 34, 18, 26, 49, 0, -3, -19,
					-- layer=2 filter=5 channel=6
					-32, -40, -34, -13, -3, -40, 8, -14, -4,
					-- layer=2 filter=5 channel=7
					27, 10, 18, 7, -17, 28, -29, -18, 25,
					-- layer=2 filter=5 channel=8
					-2, -44, -12, -70, -73, -32, -45, -15, 12,
					-- layer=2 filter=5 channel=9
					-6, 36, 13, 45, 24, -15, 21, 24, 0,
					-- layer=2 filter=5 channel=10
					-6, -41, -33, -17, -28, -32, 14, 22, 88,
					-- layer=2 filter=5 channel=11
					-24, -36, -32, 7, 0, -67, 16, -30, -66,
					-- layer=2 filter=5 channel=12
					-4, 13, 16, 0, -3, 7, 1, -18, 6,
					-- layer=2 filter=5 channel=13
					16, 20, 0, 25, 18, 22, 26, 11, 16,
					-- layer=2 filter=5 channel=14
					25, 8, 26, -28, -2, -17, -29, -18, -7,
					-- layer=2 filter=5 channel=15
					4, 32, 18, 15, 17, -8, 14, 0, -43,
					-- layer=2 filter=5 channel=16
					-27, -47, -35, -23, -68, 1, -41, -19, 2,
					-- layer=2 filter=5 channel=17
					-3, 3, 22, 62, 15, -8, 20, -3, -45,
					-- layer=2 filter=5 channel=18
					-7, 7, -60, -2, 10, -6, 21, 34, -30,
					-- layer=2 filter=5 channel=19
					0, 18, 17, 2, 13, 35, -37, 7, 10,
					-- layer=2 filter=5 channel=20
					20, 37, 33, 35, 28, 52, -25, 5, 13,
					-- layer=2 filter=5 channel=21
					12, 5, 47, 9, 39, 60, -3, 5, -1,
					-- layer=2 filter=5 channel=22
					-12, 11, -27, 5, 22, -23, -19, 6, -56,
					-- layer=2 filter=5 channel=23
					-19, -27, -8, -46, -6, 10, 15, 19, 43,
					-- layer=2 filter=5 channel=24
					28, -77, -34, -5, -8, -15, 51, -7, -30,
					-- layer=2 filter=5 channel=25
					27, -14, -18, 7, 14, 5, 21, 26, 49,
					-- layer=2 filter=5 channel=26
					34, 33, -9, 46, 10, -46, 68, 4, -20,
					-- layer=2 filter=5 channel=27
					-9, -15, -7, -61, 7, 5, -1, 0, 2,
					-- layer=2 filter=5 channel=28
					-66, -136, -67, -44, -72, -51, -16, -43, -45,
					-- layer=2 filter=5 channel=29
					15, 11, 21, -4, 33, 48, 30, -22, -8,
					-- layer=2 filter=5 channel=30
					11, 29, 16, 4, 25, 26, -4, -5, 47,
					-- layer=2 filter=5 channel=31
					23, 25, 30, 55, 23, -8, 37, 12, -58,
					-- layer=2 filter=6 channel=0
					-40, -27, -15, -15, -22, -5, -7, -14, -21,
					-- layer=2 filter=6 channel=1
					38, 42, 41, 50, 37, 21, -9, -69, -72,
					-- layer=2 filter=6 channel=2
					0, 14, -3, -30, -22, 38, -27, -11, 26,
					-- layer=2 filter=6 channel=3
					-10, 18, 49, -42, -38, 13, -24, -19, 35,
					-- layer=2 filter=6 channel=4
					-38, 28, -22, 46, 53, 22, -16, 26, 7,
					-- layer=2 filter=6 channel=5
					4, 8, 5, 21, 54, 28, 39, 49, 51,
					-- layer=2 filter=6 channel=6
					56, 2, 36, 25, -7, -19, -14, -51, -45,
					-- layer=2 filter=6 channel=7
					-14, -15, -15, -75, -95, -85, -33, -50, -53,
					-- layer=2 filter=6 channel=8
					40, 38, 34, 83, 63, 55, 14, 3, -16,
					-- layer=2 filter=6 channel=9
					-5, -14, -10, 10, 1, 11, 20, -16, 12,
					-- layer=2 filter=6 channel=10
					5, -2, 23, 27, 10, 11, -34, -15, -35,
					-- layer=2 filter=6 channel=11
					11, -17, 33, 2, 0, 64, -4, -3, 48,
					-- layer=2 filter=6 channel=12
					33, 33, 32, -27, 25, 19, -24, -11, -14,
					-- layer=2 filter=6 channel=13
					-34, -60, -25, -52, -63, -54, -18, -35, -46,
					-- layer=2 filter=6 channel=14
					10, 37, 44, 34, 58, 35, 6, -13, 19,
					-- layer=2 filter=6 channel=15
					24, -16, -9, -1, -2, 14, -28, 26, 44,
					-- layer=2 filter=6 channel=16
					17, 2, -11, -85, -77, -19, -82, -107, -93,
					-- layer=2 filter=6 channel=17
					26, 5, 19, 34, 22, 47, -11, 8, 6,
					-- layer=2 filter=6 channel=18
					-45, 12, 22, -43, -6, 49, -20, 52, 17,
					-- layer=2 filter=6 channel=19
					52, 50, 29, -10, 22, -17, -16, -11, -15,
					-- layer=2 filter=6 channel=20
					4, -18, 4, -50, -3, -23, -4, 4, 21,
					-- layer=2 filter=6 channel=21
					37, 39, 26, 14, 22, -5, 31, 21, 17,
					-- layer=2 filter=6 channel=22
					41, 45, 31, 23, 2, 15, -27, -48, -29,
					-- layer=2 filter=6 channel=23
					11, 18, -1, -23, 10, -2, -27, -21, -5,
					-- layer=2 filter=6 channel=24
					43, -6, -50, -24, -36, -84, -69, -17, -51,
					-- layer=2 filter=6 channel=25
					7, 2, 19, -80, -84, -74, -58, -74, -85,
					-- layer=2 filter=6 channel=26
					25, 17, 3, -20, -2, 36, -32, -1, 3,
					-- layer=2 filter=6 channel=27
					26, 10, -20, 11, -8, -70, -74, -70, -73,
					-- layer=2 filter=6 channel=28
					-4, -8, -2, -51, 16, 47, -12, 78, 46,
					-- layer=2 filter=6 channel=29
					9, -30, -34, -16, -45, -77, -28, -61, -61,
					-- layer=2 filter=6 channel=30
					-10, 5, 6, -45, -17, 0, 16, -8, -2,
					-- layer=2 filter=6 channel=31
					-7, -11, 31, 19, -17, 22, -2, 16, 30,
					-- layer=2 filter=7 channel=0
					-3, 15, 12, -11, 11, 14, 12, 18, -5,
					-- layer=2 filter=7 channel=1
					-14, -2, -20, 12, -5, -12, -27, -6, -25,
					-- layer=2 filter=7 channel=2
					9, 1, -4, 1, -13, 0, -8, 2, -6,
					-- layer=2 filter=7 channel=3
					-26, 1, -22, -11, 0, 5, -1, -10, 0,
					-- layer=2 filter=7 channel=4
					-12, -18, 3, -27, -10, -6, -18, -21, 6,
					-- layer=2 filter=7 channel=5
					1, -20, -23, 10, 9, 0, -12, -12, 1,
					-- layer=2 filter=7 channel=6
					5, -2, -5, -1, 17, -21, -11, -19, -7,
					-- layer=2 filter=7 channel=7
					-17, -10, 6, 4, -24, 5, 7, -11, 4,
					-- layer=2 filter=7 channel=8
					-32, -15, -10, -5, 5, 5, -1, -29, 5,
					-- layer=2 filter=7 channel=9
					0, -16, 6, -4, 11, -17, 20, -19, 6,
					-- layer=2 filter=7 channel=10
					-29, -15, -4, -27, -29, 0, -27, 0, -25,
					-- layer=2 filter=7 channel=11
					3, -4, -12, 13, -3, 8, -14, -6, 12,
					-- layer=2 filter=7 channel=12
					6, 19, 19, 7, -18, -21, 13, -8, 19,
					-- layer=2 filter=7 channel=13
					-6, -13, -7, -8, 4, 0, -14, 7, 0,
					-- layer=2 filter=7 channel=14
					3, 0, -3, -22, -9, 14, -8, 13, -1,
					-- layer=2 filter=7 channel=15
					-28, -8, 4, 8, -19, 11, -14, -16, -3,
					-- layer=2 filter=7 channel=16
					-16, -22, 1, 0, -9, -2, 12, -3, -16,
					-- layer=2 filter=7 channel=17
					-8, -5, -9, -3, -20, -14, 5, -16, 4,
					-- layer=2 filter=7 channel=18
					-25, 3, -5, -2, -18, -19, 7, 9, -12,
					-- layer=2 filter=7 channel=19
					-8, 0, -23, -25, 9, 6, 1, -13, -23,
					-- layer=2 filter=7 channel=20
					-11, -14, -1, -22, -29, -15, -7, -17, 8,
					-- layer=2 filter=7 channel=21
					-4, -17, -8, 10, -25, 2, -4, -15, 5,
					-- layer=2 filter=7 channel=22
					-7, 9, -4, 14, 17, -15, -18, 14, -11,
					-- layer=2 filter=7 channel=23
					-8, -5, -7, -10, -26, -7, -16, -6, -22,
					-- layer=2 filter=7 channel=24
					-11, 1, 11, -9, -3, -31, 4, -20, -22,
					-- layer=2 filter=7 channel=25
					-4, -26, 3, -15, -15, -15, -38, 0, -20,
					-- layer=2 filter=7 channel=26
					16, -11, -13, 17, 2, 7, 20, 7, -17,
					-- layer=2 filter=7 channel=27
					15, -6, 10, 3, -19, 4, 1, -2, -19,
					-- layer=2 filter=7 channel=28
					-24, -1, 13, -9, -15, -14, 0, 10, 0,
					-- layer=2 filter=7 channel=29
					-4, 1, 2, -3, -1, -8, 1, -11, 5,
					-- layer=2 filter=7 channel=30
					4, 6, 1, -2, 5, 6, -10, 8, -4,
					-- layer=2 filter=7 channel=31
					-4, -23, 3, -16, 0, -20, -21, 11, 0,
					-- layer=2 filter=8 channel=0
					0, -7, 15, -21, 3, -3, -9, -3, 10,
					-- layer=2 filter=8 channel=1
					-15, 4, -4, 2, 21, -37, -36, -72, -39,
					-- layer=2 filter=8 channel=2
					34, -18, -9, 25, 16, 33, 46, 5, 5,
					-- layer=2 filter=8 channel=3
					28, 47, 10, -12, 48, 46, 2, 72, 34,
					-- layer=2 filter=8 channel=4
					-26, -19, 40, -10, 20, 30, 54, 66, 25,
					-- layer=2 filter=8 channel=5
					-9, 29, 17, 43, 72, -19, 39, 59, 52,
					-- layer=2 filter=8 channel=6
					-35, 15, 10, -36, -55, -2, -43, -12, 41,
					-- layer=2 filter=8 channel=7
					36, 13, -15, -1, -38, -3, -26, 12, 22,
					-- layer=2 filter=8 channel=8
					-24, -2, 3, -29, -18, 26, 28, -22, 16,
					-- layer=2 filter=8 channel=9
					-36, 16, 47, -19, -47, 0, 6, -16, 1,
					-- layer=2 filter=8 channel=10
					-20, -21, 2, -66, -33, -1, -71, -57, -30,
					-- layer=2 filter=8 channel=11
					-6, -4, 6, -17, -6, 15, -24, -12, 21,
					-- layer=2 filter=8 channel=12
					-11, -21, -34, -5, -4, 23, -39, -17, -13,
					-- layer=2 filter=8 channel=13
					-16, 10, -50, 0, -18, 3, -65, -39, -8,
					-- layer=2 filter=8 channel=14
					-21, -9, 19, -16, 13, 15, -7, 2, 0,
					-- layer=2 filter=8 channel=15
					-3, -47, -25, 6, -22, -32, -33, -55, -34,
					-- layer=2 filter=8 channel=16
					24, -7, 21, -67, 36, -42, -86, -34, 10,
					-- layer=2 filter=8 channel=17
					-17, 19, 46, -63, -39, 0, -64, -17, -16,
					-- layer=2 filter=8 channel=18
					18, -12, 7, 17, 49, 46, 14, 46, -5,
					-- layer=2 filter=8 channel=19
					-22, -25, 0, -4, 4, -6, 2, 5, -17,
					-- layer=2 filter=8 channel=20
					1, 4, 34, -16, -11, 2, -2, -6, -15,
					-- layer=2 filter=8 channel=21
					-33, 9, -6, 15, -5, 4, -4, -22, -16,
					-- layer=2 filter=8 channel=22
					-77, -14, 35, -38, -9, 5, -12, -36, -5,
					-- layer=2 filter=8 channel=23
					-53, -6, 24, -79, -26, 15, -94, -32, 22,
					-- layer=2 filter=8 channel=24
					-60, -43, 77, 30, 2, 36, 8, -27, -16,
					-- layer=2 filter=8 channel=25
					-1, -20, -39, -47, -18, -29, -68, -4, 18,
					-- layer=2 filter=8 channel=26
					-24, 9, 12, 12, -30, 36, -8, -49, 10,
					-- layer=2 filter=8 channel=27
					-21, -8, 26, -34, 8, 5, -33, -51, -28,
					-- layer=2 filter=8 channel=28
					20, 42, 29, 42, 22, 42, 86, 105, 56,
					-- layer=2 filter=8 channel=29
					-23, 37, 4, -53, -5, -11, -42, -101, -10,
					-- layer=2 filter=8 channel=30
					26, 3, 21, -23, -10, -2, -42, 5, 40,
					-- layer=2 filter=8 channel=31
					10, -3, 7, -4, 6, 23, 31, 24, 14,
					-- layer=2 filter=9 channel=0
					5, -21, -23, -9, 30, 2, 1, 15, -16,
					-- layer=2 filter=9 channel=1
					30, -2, -16, 44, 47, 34, 25, 22, 0,
					-- layer=2 filter=9 channel=2
					-28, -44, -27, -7, 17, 18, -8, 26, 16,
					-- layer=2 filter=9 channel=3
					39, -13, -27, 5, 55, 6, 37, 53, 6,
					-- layer=2 filter=9 channel=4
					-17, -48, -20, 16, 0, -38, 0, 70, -22,
					-- layer=2 filter=9 channel=5
					-12, -3, 34, 38, -7, 8, 6, 0, 26,
					-- layer=2 filter=9 channel=6
					-4, -11, -33, 29, 13, 5, 38, 8, 24,
					-- layer=2 filter=9 channel=7
					32, 0, -13, 40, 19, -21, -5, 9, -13,
					-- layer=2 filter=9 channel=8
					-17, -25, -48, 17, 17, -14, -20, -15, -48,
					-- layer=2 filter=9 channel=9
					-39, 8, 34, -63, -21, 24, -24, -47, 32,
					-- layer=2 filter=9 channel=10
					45, 20, -9, 49, 13, 20, 19, -3, -22,
					-- layer=2 filter=9 channel=11
					-41, -31, 8, -56, -28, 13, -49, -33, -5,
					-- layer=2 filter=9 channel=12
					-8, 26, 17, -3, -4, 14, 13, 0, 4,
					-- layer=2 filter=9 channel=13
					13, 31, -5, -16, -9, 0, -55, -15, -17,
					-- layer=2 filter=9 channel=14
					-1, -10, 22, -4, -46, -49, 25, -7, -49,
					-- layer=2 filter=9 channel=15
					-64, -3, 18, -23, -28, 71, -39, 2, 73,
					-- layer=2 filter=9 channel=16
					2, -4, 13, 24, 8, 19, 20, -17, 4,
					-- layer=2 filter=9 channel=17
					-26, -46, -27, -64, -29, 48, -39, -16, 16,
					-- layer=2 filter=9 channel=18
					-45, 6, -12, -33, -3, 53, -5, -19, 15,
					-- layer=2 filter=9 channel=19
					12, 23, 19, 28, 17, -1, 46, 2, 22,
					-- layer=2 filter=9 channel=20
					27, 18, -4, 22, -30, 10, 4, -38, -13,
					-- layer=2 filter=9 channel=21
					-14, 2, 18, 25, -13, 11, -23, -9, 2,
					-- layer=2 filter=9 channel=22
					-15, 27, 0, -23, -12, 45, 10, -18, 8,
					-- layer=2 filter=9 channel=23
					-21, -23, -17, 48, 10, -52, 35, -12, -42,
					-- layer=2 filter=9 channel=24
					33, 29, -19, 19, 72, 70, 37, 83, 79,
					-- layer=2 filter=9 channel=25
					56, 16, -23, 33, 59, 10, 32, 24, -31,
					-- layer=2 filter=9 channel=26
					-43, -22, 33, -104, -53, 45, -34, -5, 30,
					-- layer=2 filter=9 channel=27
					2, -31, 20, 44, -3, -32, 60, 26, -8,
					-- layer=2 filter=9 channel=28
					-4, -34, -22, -14, 43, -13, 69, 78, 33,
					-- layer=2 filter=9 channel=29
					-38, -7, 45, 0, -31, -8, 9, -48, -40,
					-- layer=2 filter=9 channel=30
					23, 52, 12, 41, 1, -35, 10, -42, -39,
					-- layer=2 filter=9 channel=31
					-82, -27, 36, -101, -48, 23, -39, 17, 79,
					-- layer=2 filter=10 channel=0
					-4, -2, -7, -2, 3, 0, 8, 10, -1,
					-- layer=2 filter=10 channel=1
					2, -73, -82, 19, -80, -81, 23, -1, -15,
					-- layer=2 filter=10 channel=2
					-35, 40, 67, -36, 42, 80, 6, -5, 29,
					-- layer=2 filter=10 channel=3
					-26, 1, -5, -11, 20, 42, -27, 45, 48,
					-- layer=2 filter=10 channel=4
					-23, 44, -6, 13, 110, 69, -29, -7, 22,
					-- layer=2 filter=10 channel=5
					-23, -19, 24, -27, 9, 44, -26, -4, 5,
					-- layer=2 filter=10 channel=6
					0, -32, -44, -15, 6, -8, 39, 30, 3,
					-- layer=2 filter=10 channel=7
					6, -5, -37, 5, -23, 2, 5, -30, -32,
					-- layer=2 filter=10 channel=8
					-6, -37, 39, -7, -14, 4, 23, -24, 11,
					-- layer=2 filter=10 channel=9
					-14, -29, -91, 33, -48, -69, 4, -46, -56,
					-- layer=2 filter=10 channel=10
					-23, -46, 22, 7, -42, 10, 10, 9, -5,
					-- layer=2 filter=10 channel=11
					-13, 13, 22, -34, -18, 8, -31, -5, -35,
					-- layer=2 filter=10 channel=12
					-30, 30, 30, 9, 7, 13, 22, 43, 18,
					-- layer=2 filter=10 channel=13
					18, -41, -69, 100, 0, -61, 51, -24, -67,
					-- layer=2 filter=10 channel=14
					-48, -26, 41, -26, 12, 3, -33, -39, -33,
					-- layer=2 filter=10 channel=15
					-14, 7, 10, 15, 54, 38, 19, 3, 10,
					-- layer=2 filter=10 channel=16
					42, -51, -132, -6, -102, -94, -12, -71, -49,
					-- layer=2 filter=10 channel=17
					24, -14, -28, 64, -15, -41, 39, -16, -35,
					-- layer=2 filter=10 channel=18
					-16, 11, 13, -22, 25, -18, -8, 27, 0,
					-- layer=2 filter=10 channel=19
					-13, 43, 52, 1, -2, 29, 5, 20, 14,
					-- layer=2 filter=10 channel=20
					28, 30, 4, 17, 9, -18, -6, 31, -22,
					-- layer=2 filter=10 channel=21
					19, 0, 16, 7, 18, 38, 0, -4, 0,
					-- layer=2 filter=10 channel=22
					-18, -9, -4, -13, 15, -24, 0, 28, 24,
					-- layer=2 filter=10 channel=23
					7, 17, 39, -22, 3, 42, -17, 14, -11,
					-- layer=2 filter=10 channel=24
					-55, 42, 88, -53, 20, 83, -13, -29, 40,
					-- layer=2 filter=10 channel=25
					6, -41, -38, 21, -4, -15, 11, -3, -14,
					-- layer=2 filter=10 channel=26
					15, 7, -42, 51, -7, -5, 9, -26, -61,
					-- layer=2 filter=10 channel=27
					0, -31, -20, -18, 1, -4, -7, -8, 26,
					-- layer=2 filter=10 channel=28
					24, 38, 23, -7, 7, -6, -40, -8, 9,
					-- layer=2 filter=10 channel=29
					-13, 19, -8, 24, -20, 10, -26, -25, -25,
					-- layer=2 filter=10 channel=30
					-12, 31, 10, 13, -2, -20, 9, 22, -19,
					-- layer=2 filter=10 channel=31
					-9, -7, 3, 38, 8, 15, 32, 7, -23,
					-- layer=2 filter=11 channel=0
					4, 16, 7, -12, 9, -10, -1, -38, -8,
					-- layer=2 filter=11 channel=1
					-103, -66, -88, -118, -140, -87, -92, -96, -52,
					-- layer=2 filter=11 channel=2
					18, 33, 34, 16, 55, 21, 43, -5, 26,
					-- layer=2 filter=11 channel=3
					36, -29, -2, 34, 0, -28, -10, -4, -28,
					-- layer=2 filter=11 channel=4
					70, 41, 44, 95, 21, 4, 81, 41, -15,
					-- layer=2 filter=11 channel=5
					13, 4, -8, 0, 29, 6, 2, -26, -18,
					-- layer=2 filter=11 channel=6
					-30, -1, -21, -4, -13, 11, 25, -3, -10,
					-- layer=2 filter=11 channel=7
					-15, 36, 31, 23, 10, 11, 40, 60, -9,
					-- layer=2 filter=11 channel=8
					-3, -3, 3, -49, -95, -41, -61, -56, 22,
					-- layer=2 filter=11 channel=9
					-11, -23, -1, -19, -16, -19, -7, -9, 37,
					-- layer=2 filter=11 channel=10
					-46, -30, -27, -46, -96, -49, -16, -55, -7,
					-- layer=2 filter=11 channel=11
					-36, -40, -33, 24, 4, -27, 9, -22, -21,
					-- layer=2 filter=11 channel=12
					-24, -27, -17, 12, 9, -22, 27, 29, 16,
					-- layer=2 filter=11 channel=13
					13, 27, 2, -6, -11, 19, 21, 14, -4,
					-- layer=2 filter=11 channel=14
					-2, -1, -28, -24, 7, 2, -8, -31, -14,
					-- layer=2 filter=11 channel=15
					-24, -11, -39, 20, -24, -24, 43, 24, 12,
					-- layer=2 filter=11 channel=16
					-80, -45, -17, -79, -41, -16, -32, -18, 15,
					-- layer=2 filter=11 channel=17
					-7, -39, -42, -8, -20, 3, 13, -2, 6,
					-- layer=2 filter=11 channel=18
					-16, 41, 25, -10, 11, -10, -12, -21, -28,
					-- layer=2 filter=11 channel=19
					5, 10, -2, 5, 23, -6, 15, 30, 5,
					-- layer=2 filter=11 channel=20
					-8, -4, 7, 20, 6, -19, 28, -3, -34,
					-- layer=2 filter=11 channel=21
					-23, -14, -4, -23, -10, -20, 18, -5, 10,
					-- layer=2 filter=11 channel=22
					-17, -27, -12, -28, -7, 8, -13, -10, 20,
					-- layer=2 filter=11 channel=23
					39, 5, 18, -21, -10, 18, -16, 8, 4,
					-- layer=2 filter=11 channel=24
					-2, -1, 15, 0, -15, 42, -48, 16, 49,
					-- layer=2 filter=11 channel=25
					29, 20, 32, 8, 27, 9, 8, -19, -15,
					-- layer=2 filter=11 channel=26
					-9, -2, 20, 30, 6, 6, 0, 1, 58,
					-- layer=2 filter=11 channel=27
					-3, -22, 5, 3, -25, 31, 20, -4, 0,
					-- layer=2 filter=11 channel=28
					52, 41, 17, 3, 49, 3, 9, 33, 12,
					-- layer=2 filter=11 channel=29
					-37, 9, 21, -31, 2, 46, -11, 12, 0,
					-- layer=2 filter=11 channel=30
					3, 17, 15, 13, 13, -9, 2, -10, -35,
					-- layer=2 filter=11 channel=31
					23, 0, 21, 26, 23, 30, 45, 24, 10,
					-- layer=2 filter=12 channel=0
					8, 1, -33, -9, -21, 10, 7, -8, 0,
					-- layer=2 filter=12 channel=1
					4, 10, -13, 35, 45, -19, 5, -50, -82,
					-- layer=2 filter=12 channel=2
					11, 46, 86, 30, 6, -13, -19, -28, -17,
					-- layer=2 filter=12 channel=3
					4, 21, 0, -58, 12, 42, -70, -14, 19,
					-- layer=2 filter=12 channel=4
					55, 27, 34, -13, 6, -40, -15, -41, -48,
					-- layer=2 filter=12 channel=5
					-39, -77, -31, 12, -79, 15, 41, 41, 68,
					-- layer=2 filter=12 channel=6
					25, -13, 18, -33, -22, 23, -12, -29, -31,
					-- layer=2 filter=12 channel=7
					11, 5, 19, -15, 31, -1, 2, -17, -22,
					-- layer=2 filter=12 channel=8
					-19, 17, 26, 40, -2, 33, -30, -43, -27,
					-- layer=2 filter=12 channel=9
					-43, -24, -16, -18, -29, -41, -11, -32, -5,
					-- layer=2 filter=12 channel=10
					17, 0, -28, 51, -2, -19, -7, -17, -35,
					-- layer=2 filter=12 channel=11
					23, -14, -14, -9, -34, -23, -5, -24, -8,
					-- layer=2 filter=12 channel=12
					-6, -40, -42, 18, 4, 8, 8, 30, 49,
					-- layer=2 filter=12 channel=13
					5, 5, 49, 30, 21, 9, -25, 3, -22,
					-- layer=2 filter=12 channel=14
					3, -83, -82, 68, -52, 9, 54, 29, 61,
					-- layer=2 filter=12 channel=15
					0, 12, 25, 12, 17, 21, 3, -27, 24,
					-- layer=2 filter=12 channel=16
					13, -23, -37, 3, 12, -65, 30, -36, -42,
					-- layer=2 filter=12 channel=17
					-41, -10, 2, -59, -10, -7, -30, -38, 38,
					-- layer=2 filter=12 channel=18
					-4, 52, 37, 16, 77, 77, 28, -1, -19,
					-- layer=2 filter=12 channel=19
					1, -33, -21, 16, -40, 37, 38, -1, 24,
					-- layer=2 filter=12 channel=20
					36, -18, 11, -20, -36, 0, 0, -20, -3,
					-- layer=2 filter=12 channel=21
					-19, -24, 22, -15, -30, 32, 12, 7, 31,
					-- layer=2 filter=12 channel=22
					-54, -2, -12, -33, -6, 0, -20, -11, 12,
					-- layer=2 filter=12 channel=23
					-12, -68, -21, 12, 16, 27, 43, 17, 40,
					-- layer=2 filter=12 channel=24
					16, 109, 49, 38, 59, -7, -36, -27, -27,
					-- layer=2 filter=12 channel=25
					-8, 19, 40, -5, 4, -15, -16, -20, -65,
					-- layer=2 filter=12 channel=26
					-10, -1, 9, 23, -14, 26, -19, -7, 6,
					-- layer=2 filter=12 channel=27
					11, -37, -32, 5, 14, -13, 16, 6, -9,
					-- layer=2 filter=12 channel=28
					24, 19, 53, -3, 15, 10, -15, -7, -1,
					-- layer=2 filter=12 channel=29
					2, -38, -34, 8, 25, -30, -20, -9, -9,
					-- layer=2 filter=12 channel=30
					6, -34, -6, 6, -27, 0, 2, 5, 17,
					-- layer=2 filter=12 channel=31
					-6, 1, 11, -2, 27, 29, 31, 24, 40,
					-- layer=2 filter=13 channel=0
					8, -5, 1, -9, 29, 0, 20, -7, -2,
					-- layer=2 filter=13 channel=1
					-15, 16, -8, -6, -9, -8, -18, -11, 35,
					-- layer=2 filter=13 channel=2
					-32, -8, -54, -9, 42, 23, 81, 96, 89,
					-- layer=2 filter=13 channel=3
					28, 11, 8, -37, -26, -11, 25, -14, -37,
					-- layer=2 filter=13 channel=4
					-8, -39, -79, 37, 13, -44, 79, 39, 20,
					-- layer=2 filter=13 channel=5
					7, 21, 19, -20, -35, 3, 10, -26, 1,
					-- layer=2 filter=13 channel=6
					-18, 10, 25, -29, -31, 8, 11, -14, -12,
					-- layer=2 filter=13 channel=7
					-7, -40, 31, -19, 2, 0, 12, 22, 30,
					-- layer=2 filter=13 channel=8
					4, -40, -69, 20, 22, -39, 28, -19, 0,
					-- layer=2 filter=13 channel=9
					-20, -6, -2, 39, 47, -13, 15, 11, -37,
					-- layer=2 filter=13 channel=10
					-30, -14, -60, 6, 7, -8, -38, -16, -2,
					-- layer=2 filter=13 channel=11
					-17, -15, 29, -18, -2, 50, 1, 44, -2,
					-- layer=2 filter=13 channel=12
					-17, 14, 2, -6, -11, 20, -47, -36, -7,
					-- layer=2 filter=13 channel=13
					10, 8, 45, 11, 24, -33, 12, 19, 6,
					-- layer=2 filter=13 channel=14
					21, 14, 16, 1, 2, 0, 18, -30, 16,
					-- layer=2 filter=13 channel=15
					-28, -43, 10, -19, -3, -10, 18, 0, -45,
					-- layer=2 filter=13 channel=16
					37, 47, 45, 113, 74, 96, 35, -4, 31,
					-- layer=2 filter=13 channel=17
					-27, 13, 5, 5, 21, 12, 18, 7, -19,
					-- layer=2 filter=13 channel=18
					-1, 1, -14, 2, -42, -13, -37, -37, -16,
					-- layer=2 filter=13 channel=19
					-9, -30, 36, -7, -57, -48, -9, -15, -5,
					-- layer=2 filter=13 channel=20
					6, 19, 42, -14, -54, -31, 1, 4, 4,
					-- layer=2 filter=13 channel=21
					-12, -3, 31, -51, -7, -29, 23, -5, -2,
					-- layer=2 filter=13 channel=22
					-13, -8, -16, 36, 12, -13, 21, 3, -17,
					-- layer=2 filter=13 channel=23
					0, -21, 28, 3, -9, 36, -22, -63, -16,
					-- layer=2 filter=13 channel=24
					9, 16, -29, -11, -18, -35, 20, 2, 0,
					-- layer=2 filter=13 channel=25
					-1, 0, 0, 8, -21, 3, 19, 38, 21,
					-- layer=2 filter=13 channel=26
					-4, 15, -31, 14, 42, -9, 3, -20, -45,
					-- layer=2 filter=13 channel=27
					-40, -25, 7, -13, -18, -14, 20, 29, 39,
					-- layer=2 filter=13 channel=28
					-62, -11, -4, -7, -10, -5, 35, -13, -27,
					-- layer=2 filter=13 channel=29
					-2, 50, 45, -6, -13, 66, -23, -5, 20,
					-- layer=2 filter=13 channel=30
					50, 0, 39, -6, -41, -14, -7, -13, -10,
					-- layer=2 filter=13 channel=31
					-17, 25, -7, -8, 29, 20, 10, -3, -16,
					-- layer=2 filter=14 channel=0
					-17, -20, 30, 9, 20, 11, 42, 28, 28,
					-- layer=2 filter=14 channel=1
					39, 19, -3, 44, 6, 12, -42, -44, 13,
					-- layer=2 filter=14 channel=2
					14, -2, 17, 20, 82, 52, 65, 33, 39,
					-- layer=2 filter=14 channel=3
					44, 56, 31, 43, 61, 14, 2, -4, -34,
					-- layer=2 filter=14 channel=4
					45, -4, -32, 52, 80, -29, 5, -9, -25,
					-- layer=2 filter=14 channel=5
					-13, 12, 50, -1, -9, 15, 47, 15, 29,
					-- layer=2 filter=14 channel=6
					2, -35, -7, -42, -42, -70, 6, 15, -12,
					-- layer=2 filter=14 channel=7
					-4, -25, 2, 11, 38, 10, 28, 30, 3,
					-- layer=2 filter=14 channel=8
					44, 36, -16, -2, 2, -12, -28, -32, 4,
					-- layer=2 filter=14 channel=9
					8, 30, 35, -38, -33, 0, 0, -13, -3,
					-- layer=2 filter=14 channel=10
					37, -13, -26, 2, -16, -27, -8, -42, -23,
					-- layer=2 filter=14 channel=11
					15, -33, 2, -35, 9, -13, 24, -36, -22,
					-- layer=2 filter=14 channel=12
					-46, 5, 7, -56, -29, -9, -26, 7, 4,
					-- layer=2 filter=14 channel=13
					-10, -50, -14, 41, 1, 5, 28, 21, 30,
					-- layer=2 filter=14 channel=14
					-3, 27, 1, -32, 1, 23, 66, 61, 26,
					-- layer=2 filter=14 channel=15
					-59, -13, 10, -93, -56, 16, -31, 13, -17,
					-- layer=2 filter=14 channel=16
					67, -47, -10, 10, -21, -62, -21, -1, 38,
					-- layer=2 filter=14 channel=17
					-30, -7, 28, 9, -9, 1, 34, 12, 2,
					-- layer=2 filter=14 channel=18
					-45, -31, 30, -66, -29, -33, 32, -7, 4,
					-- layer=2 filter=14 channel=19
					-11, 5, -13, -35, -13, 17, 28, -24, -15,
					-- layer=2 filter=14 channel=20
					35, -15, 31, -41, -32, 24, -22, -11, 16,
					-- layer=2 filter=14 channel=21
					1, 42, 35, -29, -3, 22, 11, 17, 6,
					-- layer=2 filter=14 channel=22
					-8, -9, 10, -52, -12, 30, -16, 52, 36,
					-- layer=2 filter=14 channel=23
					58, -8, -8, 1, -42, -59, 1, -25, -35,
					-- layer=2 filter=14 channel=24
					-14, 41, 75, 37, 50, 32, -19, -11, -5,
					-- layer=2 filter=14 channel=25
					-4, -27, -32, 30, 18, -22, -18, -11, 0,
					-- layer=2 filter=14 channel=26
					-2, -20, 50, -4, -19, 40, 20, 29, 5,
					-- layer=2 filter=14 channel=27
					-33, -10, 12, -26, 4, 23, 12, -22, 17,
					-- layer=2 filter=14 channel=28
					23, 88, 3, 21, 92, -25, 25, 28, -48,
					-- layer=2 filter=14 channel=29
					-64, -103, 13, -25, -29, -10, -2, 21, -10,
					-- layer=2 filter=14 channel=30
					5, -8, 13, -12, 0, 2, 10, 6, 41,
					-- layer=2 filter=14 channel=31
					0, 15, 19, -14, -6, 32, 4, -2, -2,
					-- layer=2 filter=15 channel=0
					-12, 9, 9, 2, 19, 23, 12, 11, 13,
					-- layer=2 filter=15 channel=1
					42, 27, 54, -12, 0, 16, 14, 33, 29,
					-- layer=2 filter=15 channel=2
					57, 10, 37, 66, 25, -1, 21, 24, 23,
					-- layer=2 filter=15 channel=3
					-36, -31, 19, -48, -51, -31, -65, -71, -59,
					-- layer=2 filter=15 channel=4
					27, 33, 44, 16, 67, 64, -24, -6, 5,
					-- layer=2 filter=15 channel=5
					-10, 12, 15, -37, 21, 0, 30, -10, -6,
					-- layer=2 filter=15 channel=6
					-3, 24, 50, 2, 24, -5, -2, -26, -22,
					-- layer=2 filter=15 channel=7
					0, -1, -22, 19, 7, 0, -24, 10, 24,
					-- layer=2 filter=15 channel=8
					13, -48, -11, 30, 10, -16, 40, -5, 0,
					-- layer=2 filter=15 channel=9
					5, 26, 0, -4, 3, -21, -17, -16, 12,
					-- layer=2 filter=15 channel=10
					21, -16, 12, -6, 21, 27, 27, 23, 26,
					-- layer=2 filter=15 channel=11
					31, 19, 39, -57, 13, -14, 3, 45, -26,
					-- layer=2 filter=15 channel=12
					-1, 14, 44, 0, -25, 12, -31, -31, -47,
					-- layer=2 filter=15 channel=13
					-9, 13, 6, 15, 25, 9, -35, 21, 17,
					-- layer=2 filter=15 channel=14
					23, 21, 52, -54, -22, -13, -1, 17, -7,
					-- layer=2 filter=15 channel=15
					12, 34, 51, 5, 13, 9, -12, 0, -23,
					-- layer=2 filter=15 channel=16
					2, 52, -27, -12, 6, 47, -1, 34, 18,
					-- layer=2 filter=15 channel=17
					37, 27, 28, -15, 26, -10, -42, 1, -22,
					-- layer=2 filter=15 channel=18
					-101, -52, -52, -57, -16, -52, -45, 21, -42,
					-- layer=2 filter=15 channel=19
					0, -5, 14, -8, -5, 6, 11, 8, -14,
					-- layer=2 filter=15 channel=20
					-18, 0, -38, -38, -42, -15, -20, 12, 8,
					-- layer=2 filter=15 channel=21
					22, 27, -8, -27, -19, -27, 29, -7, 14,
					-- layer=2 filter=15 channel=22
					27, 36, 53, -3, -21, 31, 5, -34, -21,
					-- layer=2 filter=15 channel=23
					-37, 18, 14, -36, 13, -25, 16, 32, -31,
					-- layer=2 filter=15 channel=24
					-13, -62, -43, 7, -23, -51, 29, -16, 25,
					-- layer=2 filter=15 channel=25
					-8, -18, -53, 27, 13, -3, -21, 14, -10,
					-- layer=2 filter=15 channel=26
					25, 37, -7, 25, -12, -25, -15, 10, -32,
					-- layer=2 filter=15 channel=27
					-11, -14, -2, -6, -31, -14, 2, -38, -43,
					-- layer=2 filter=15 channel=28
					-38, -37, 16, -64, -69, -22, -35, -44, -60,
					-- layer=2 filter=15 channel=29
					-26, -25, -13, -15, -14, -35, 3, 1, -21,
					-- layer=2 filter=15 channel=30
					-23, -27, -59, -39, -37, -47, -15, 15, -18,
					-- layer=2 filter=15 channel=31
					37, 57, 67, 14, 0, 0, -20, -36, -44,
					-- layer=2 filter=16 channel=0
					-16, 13, 22, -15, -7, 21, 5, -1, -5,
					-- layer=2 filter=16 channel=1
					-33, -30, -23, -6, 1, 39, 31, 5, 20,
					-- layer=2 filter=16 channel=2
					14, -57, -31, -58, -77, -90, -28, -87, -87,
					-- layer=2 filter=16 channel=3
					27, -74, -77, -14, -59, -89, 25, 30, -108,
					-- layer=2 filter=16 channel=4
					-38, -88, -58, -96, -59, -101, -60, -12, -88,
					-- layer=2 filter=16 channel=5
					-63, -44, -22, -38, -16, 21, -5, 11, 16,
					-- layer=2 filter=16 channel=6
					-12, -14, -37, -13, 11, -31, 10, 0, -54,
					-- layer=2 filter=16 channel=7
					41, 29, -15, 49, 38, 12, 39, 10, -37,
					-- layer=2 filter=16 channel=8
					1, 0, 34, -26, 23, 21, -4, 23, 10,
					-- layer=2 filter=16 channel=9
					-23, -20, 54, -2, -44, 39, -16, 33, 71,
					-- layer=2 filter=16 channel=10
					-10, 8, 22, -14, 7, -1, -3, -8, 1,
					-- layer=2 filter=16 channel=11
					-122, -100, -67, -47, -134, -66, 21, -11, -24,
					-- layer=2 filter=16 channel=12
					-30, -14, -47, 3, 0, -12, -14, -2, -11,
					-- layer=2 filter=16 channel=13
					7, 0, -24, -2, -14, -20, 23, -28, 0,
					-- layer=2 filter=16 channel=14
					-83, -52, -29, -44, -82, -33, -48, -29, -42,
					-- layer=2 filter=16 channel=15
					-39, -21, -11, 17, 22, 47, 8, 19, 23,
					-- layer=2 filter=16 channel=16
					51, 38, 16, 18, 2, 12, 2, 12, -34,
					-- layer=2 filter=16 channel=17
					-15, -18, -40, -12, -28, -10, -6, -23, -5,
					-- layer=2 filter=16 channel=18
					17, 28, 16, -18, -40, -38, -80, -70, -64,
					-- layer=2 filter=16 channel=19
					-5, 52, 26, 46, 36, 30, 29, 45, -6,
					-- layer=2 filter=16 channel=20
					-25, -21, -16, -7, 21, -17, 0, -6, -4,
					-- layer=2 filter=16 channel=21
					-16, 0, 5, -4, -8, 23, 12, 40, 0,
					-- layer=2 filter=16 channel=22
					6, 0, -18, 19, 12, 42, 11, 4, 26,
					-- layer=2 filter=16 channel=23
					5, 41, -12, 17, -5, 3, -9, 30, -11,
					-- layer=2 filter=16 channel=24
					6, 26, 51, 79, 109, 47, 122, 84, 100,
					-- layer=2 filter=16 channel=25
					42, 19, -5, 50, 3, -12, 13, 16, -43,
					-- layer=2 filter=16 channel=26
					-8, -9, 35, -19, -7, 30, 3, -1, 58,
					-- layer=2 filter=16 channel=27
					-8, -14, 19, 27, 13, -15, -3, 11, -13,
					-- layer=2 filter=16 channel=28
					-8, -69, -10, -79, -93, -71, -22, -46, -81,
					-- layer=2 filter=16 channel=29
					24, 21, 6, -35, -24, 0, 21, -8, -1,
					-- layer=2 filter=16 channel=30
					39, 32, -4, 18, 33, 1, -11, -10, -45,
					-- layer=2 filter=16 channel=31
					-33, -15, 6, -11, -18, 26, 20, 21, 55,
					-- layer=2 filter=17 channel=0
					0, -7, -7, -2, -6, 15, 10, -16, 6,
					-- layer=2 filter=17 channel=1
					-74, -117, -103, -84, -122, -49, -10, -54, -42,
					-- layer=2 filter=17 channel=2
					-36, 71, 66, 2, 7, 20, -24, -24, -41,
					-- layer=2 filter=17 channel=3
					-5, 22, 68, -15, 9, -29, 1, -32, -49,
					-- layer=2 filter=17 channel=4
					48, 48, 33, 28, 6, 77, 17, -2, 15,
					-- layer=2 filter=17 channel=5
					25, 62, 30, 31, 31, 31, 7, 24, 19,
					-- layer=2 filter=17 channel=6
					-36, -41, -62, -16, -41, -27, -47, -21, 3,
					-- layer=2 filter=17 channel=7
					-6, 25, 16, 22, 30, 5, 36, 25, 9,
					-- layer=2 filter=17 channel=8
					-6, -28, -8, -35, -53, -17, -39, -47, 0,
					-- layer=2 filter=17 channel=9
					-94, -28, -17, -63, -5, 4, -27, 9, -33,
					-- layer=2 filter=17 channel=10
					-25, -68, -53, -5, -51, -35, 13, -33, -26,
					-- layer=2 filter=17 channel=11
					-55, -48, 19, -21, -29, -31, 18, -42, -35,
					-- layer=2 filter=17 channel=12
					0, -12, 17, -11, 1, 15, -7, 17, 24,
					-- layer=2 filter=17 channel=13
					-49, -45, -44, -12, -46, -31, -55, -18, 6,
					-- layer=2 filter=17 channel=14
					-5, -21, 18, -13, -2, -21, -13, 0, -42,
					-- layer=2 filter=17 channel=15
					-61, -25, -10, -42, 10, 6, -12, 57, 36,
					-- layer=2 filter=17 channel=16
					-43, -22, -89, -90, -59, -66, -57, -65, -73,
					-- layer=2 filter=17 channel=17
					-34, -65, -36, 1, -17, -29, 28, 0, -26,
					-- layer=2 filter=17 channel=18
					30, 14, 39, -24, -23, 7, -86, 0, -17,
					-- layer=2 filter=17 channel=19
					8, -2, 6, 15, 39, 34, -7, 23, 47,
					-- layer=2 filter=17 channel=20
					-21, 15, 32, -17, 16, 3, -7, 22, 25,
					-- layer=2 filter=17 channel=21
					-8, -4, -1, 10, 8, 12, 1, 26, 22,
					-- layer=2 filter=17 channel=22
					-62, -38, -59, -52, -11, -28, 12, -21, -3,
					-- layer=2 filter=17 channel=23
					24, 10, 17, 25, 21, -17, -10, 12, -6,
					-- layer=2 filter=17 channel=24
					-19, 43, -1, -73, -14, 5, -92, -34, 6,
					-- layer=2 filter=17 channel=25
					16, 42, 37, -1, -14, 5, -11, -26, 5,
					-- layer=2 filter=17 channel=26
					-25, -5, 15, -16, -13, -6, -13, 9, -8,
					-- layer=2 filter=17 channel=27
					-21, -56, -32, -27, 8, -10, -66, 0, 4,
					-- layer=2 filter=17 channel=28
					28, 19, 55, 8, 0, -14, -29, -83, 18,
					-- layer=2 filter=17 channel=29
					-6, 5, -39, -42, -14, -33, -31, 2, -53,
					-- layer=2 filter=17 channel=30
					25, 50, 12, -8, 31, 17, -8, 26, 23,
					-- layer=2 filter=17 channel=31
					0, -21, 0, 18, 22, -3, 42, -3, 4,
					-- layer=2 filter=18 channel=0
					-18, -18, 20, 13, 3, 10, 0, -23, 23,
					-- layer=2 filter=18 channel=1
					22, 15, 62, 5, 28, 10, -11, 0, 3,
					-- layer=2 filter=18 channel=2
					-23, 0, 1, -4, 27, 14, -12, 10, 28,
					-- layer=2 filter=18 channel=3
					-50, -29, 15, 50, 6, -25, 47, 11, 0,
					-- layer=2 filter=18 channel=4
					-18, -4, 2, 11, -5, 8, 34, -4, 7,
					-- layer=2 filter=18 channel=5
					-9, 24, 3, -19, -18, 9, -17, 4, 34,
					-- layer=2 filter=18 channel=6
					0, 27, 15, 3, 1, 24, -18, -1, 15,
					-- layer=2 filter=18 channel=7
					-22, 0, 37, -27, 23, 49, 72, 24, 80,
					-- layer=2 filter=18 channel=8
					30, -35, -57, 27, 52, -36, 40, 1, -9,
					-- layer=2 filter=18 channel=9
					17, 34, -14, -19, -2, -40, -87, -30, -48,
					-- layer=2 filter=18 channel=10
					27, 0, 17, -7, 13, -27, -26, 9, -14,
					-- layer=2 filter=18 channel=11
					13, -16, 44, -45, -54, -56, -60, -44, -21,
					-- layer=2 filter=18 channel=12
					35, 38, 36, -25, -31, 8, -7, -7, 19,
					-- layer=2 filter=18 channel=13
					20, 43, 32, -9, 27, 25, 17, -9, 67,
					-- layer=2 filter=18 channel=14
					-14, -35, -34, -20, -27, -33, 44, 61, 62,
					-- layer=2 filter=18 channel=15
					74, 70, 33, -28, -8, 0, -66, -62, -58,
					-- layer=2 filter=18 channel=16
					-57, -47, -76, -20, 28, 12, -47, -17, -33,
					-- layer=2 filter=18 channel=17
					33, 37, 15, -30, -2, -10, -74, -6, 3,
					-- layer=2 filter=18 channel=18
					-31, -34, -45, 2, 49, -8, -70, -23, -51,
					-- layer=2 filter=18 channel=19
					13, -1, -11, -23, -6, -22, -16, -27, 30,
					-- layer=2 filter=18 channel=20
					0, 10, 14, 19, 17, 46, -5, -19, 4,
					-- layer=2 filter=18 channel=21
					33, 30, 22, -11, -15, 19, 14, -36, 3,
					-- layer=2 filter=18 channel=22
					82, 45, 26, 0, 0, -50, -10, -15, -10,
					-- layer=2 filter=18 channel=23
					-52, -84, -48, -23, -30, -8, -22, 18, 18,
					-- layer=2 filter=18 channel=24
					-40, -91, -81, -12, -17, -31, -11, -44, -68,
					-- layer=2 filter=18 channel=25
					-78, -41, -9, 14, 52, 12, 42, -9, -3,
					-- layer=2 filter=18 channel=26
					-2, 14, -4, -48, -11, -37, -78, -21, 15,
					-- layer=2 filter=18 channel=27
					15, 0, 15, 0, 18, 20, -29, -14, 55,
					-- layer=2 filter=18 channel=28
					-16, -15, -54, 29, -6, -51, 15, 0, -52,
					-- layer=2 filter=18 channel=29
					24, 7, -14, -2, 21, 59, 1, -14, 60,
					-- layer=2 filter=18 channel=30
					-42, -24, -4, 27, 35, 34, 27, 30, 11,
					-- layer=2 filter=18 channel=31
					16, 41, 28, -29, 0, 11, -52, -18, -24,
					-- layer=2 filter=19 channel=0
					12, 6, 26, 14, -12, -4, 21, 2, -7,
					-- layer=2 filter=19 channel=1
					51, 75, 42, 67, 64, 62, 66, 56, 58,
					-- layer=2 filter=19 channel=2
					-16, -70, -11, -68, -118, -68, -66, -108, -38,
					-- layer=2 filter=19 channel=3
					-34, -33, -29, -34, -64, -17, -94, -28, -27,
					-- layer=2 filter=19 channel=4
					-9, -30, -26, -60, -69, 12, -122, -66, -31,
					-- layer=2 filter=19 channel=5
					-6, -23, -39, 12, 0, -1, 55, 47, 66,
					-- layer=2 filter=19 channel=6
					-2, 66, 39, -9, -21, 13, -36, -32, -17,
					-- layer=2 filter=19 channel=7
					14, 1, -5, 16, 33, 5, 39, 21, 8,
					-- layer=2 filter=19 channel=8
					10, 21, 34, 30, -15, 10, 12, 16, 56,
					-- layer=2 filter=19 channel=9
					20, 11, 27, -37, 5, 2, -53, -37, 3,
					-- layer=2 filter=19 channel=10
					33, 16, 13, 34, -11, 41, -18, -3, 23,
					-- layer=2 filter=19 channel=11
					-8, -16, -40, -16, -9, -25, -28, 30, 10,
					-- layer=2 filter=19 channel=12
					11, -23, -21, -17, -13, -15, -1, 12, -14,
					-- layer=2 filter=19 channel=13
					19, 33, 22, 20, 49, 50, -19, 7, 9,
					-- layer=2 filter=19 channel=14
					12, -23, -2, -19, 0, -5, 30, 16, 6,
					-- layer=2 filter=19 channel=15
					-28, -4, -23, -38, 0, 3, -6, 16, 9,
					-- layer=2 filter=19 channel=16
					51, 93, 94, -7, 72, 58, 32, 19, 37,
					-- layer=2 filter=19 channel=17
					14, 30, -3, 10, 5, 0, -9, 14, 13,
					-- layer=2 filter=19 channel=18
					-22, 0, -24, -29, 13, -26, -24, -8, -28,
					-- layer=2 filter=19 channel=19
					29, 15, 31, 1, -10, 8, 20, 20, 25,
					-- layer=2 filter=19 channel=20
					-46, -11, -22, 15, 24, -25, 26, 2, 7,
					-- layer=2 filter=19 channel=21
					17, 25, 3, -4, 15, -26, 11, 7, 17,
					-- layer=2 filter=19 channel=22
					28, 18, 41, 3, 17, 28, -12, -10, 3,
					-- layer=2 filter=19 channel=23
					3, -15, 4, -7, 13, 6, -45, 4, -13,
					-- layer=2 filter=19 channel=24
					-69, -34, -9, -73, -108, -61, -105, -144, -64,
					-- layer=2 filter=19 channel=25
					10, 33, 36, 16, 15, 35, 4, 17, 25,
					-- layer=2 filter=19 channel=26
					3, 19, 33, -40, 45, 9, -26, 10, 6,
					-- layer=2 filter=19 channel=27
					50, 24, 9, 10, -5, -19, 37, 16, -20,
					-- layer=2 filter=19 channel=28
					-10, -44, -12, -46, -43, 9, -56, -25, 8,
					-- layer=2 filter=19 channel=29
					-17, -23, 1, 9, 8, -22, 4, -22, -33,
					-- layer=2 filter=19 channel=30
					-15, -24, -26, 24, 18, 3, 13, 21, 0,
					-- layer=2 filter=19 channel=31
					-16, 15, -4, 3, 14, 3, -5, 0, 9,
					-- layer=2 filter=20 channel=0
					-21, -22, 0, -22, 11, 3, 3, 10, 10,
					-- layer=2 filter=20 channel=1
					17, 4, -4, -17, -57, -30, -44, -40, -34,
					-- layer=2 filter=20 channel=2
					-62, -63, -52, -85, -102, -19, 11, -5, 21,
					-- layer=2 filter=20 channel=3
					9, -9, -42, 41, 3, -27, 54, 53, -2,
					-- layer=2 filter=20 channel=4
					-106, -63, -77, -78, -42, -23, 5, 36, 5,
					-- layer=2 filter=20 channel=5
					26, 66, 51, 0, 22, 39, -49, -15, -42,
					-- layer=2 filter=20 channel=6
					-40, -23, -65, -93, -34, -27, 9, -21, 44,
					-- layer=2 filter=20 channel=7
					27, 14, 15, -9, 0, 30, 28, 10, 52,
					-- layer=2 filter=20 channel=8
					-6, -3, -7, -38, -54, -10, -53, -25, -18,
					-- layer=2 filter=20 channel=9
					16, 20, -4, 1, -19, 7, -8, 10, -18,
					-- layer=2 filter=20 channel=10
					-14, 7, -11, -40, -13, -19, -13, 41, 36,
					-- layer=2 filter=20 channel=11
					20, 29, 7, 8, 12, -14, -6, 30, -58,
					-- layer=2 filter=20 channel=12
					-4, 3, 24, 2, -7, 5, 0, 1, -38,
					-- layer=2 filter=20 channel=13
					-37, -42, -45, 3, -7, -14, 77, 48, 59,
					-- layer=2 filter=20 channel=14
					14, 54, 24, -25, 14, -20, -60, -19, -29,
					-- layer=2 filter=20 channel=15
					-23, 1, -15, -3, -3, -21, -40, -19, 0,
					-- layer=2 filter=20 channel=16
					4, 7, -43, 11, 16, 52, 23, 54, 22,
					-- layer=2 filter=20 channel=17
					-12, -11, 6, 27, -15, -1, 8, 20, 11,
					-- layer=2 filter=20 channel=18
					-42, -7, -46, -16, 5, -1, 42, 10, -28,
					-- layer=2 filter=20 channel=19
					-5, 12, 27, -19, 21, -10, -17, 5, 19,
					-- layer=2 filter=20 channel=20
					12, 13, -12, 31, 28, -10, -9, 4, -21,
					-- layer=2 filter=20 channel=21
					49, 16, -1, -6, 14, -25, -46, -18, 20,
					-- layer=2 filter=20 channel=22
					-3, 26, 12, 2, 21, 40, -21, 6, -9,
					-- layer=2 filter=20 channel=23
					3, 15, 18, 6, -10, -20, 13, 26, 17,
					-- layer=2 filter=20 channel=24
					-60, 29, 45, -49, 52, 80, -58, 14, 141,
					-- layer=2 filter=20 channel=25
					-55, -51, -53, -30, 0, -26, 42, 58, 46,
					-- layer=2 filter=20 channel=26
					1, -13, 4, -12, -17, -13, 49, 32, 1,
					-- layer=2 filter=20 channel=27
					-28, 8, 10, -27, -15, -7, -65, 21, 22,
					-- layer=2 filter=20 channel=28
					-16, -12, -39, 42, 9, -25, 55, 54, -21,
					-- layer=2 filter=20 channel=29
					17, 46, 22, -22, 6, 13, -40, -23, 29,
					-- layer=2 filter=20 channel=30
					34, 14, -13, 37, 30, -3, 27, 16, -8,
					-- layer=2 filter=20 channel=31
					37, 23, 40, 54, 22, -39, 28, 34, -6,
					-- layer=2 filter=21 channel=0
					-2, 8, 12, 6, 10, 26, 4, 23, -11,
					-- layer=2 filter=21 channel=1
					-9, 4, -13, 3, 6, 24, 5, 48, -19,
					-- layer=2 filter=21 channel=2
					15, -6, -13, -16, -22, -23, 21, -39, -5,
					-- layer=2 filter=21 channel=3
					-9, -30, -47, 6, -22, 44, 2, 26, 77,
					-- layer=2 filter=21 channel=4
					-30, -65, -6, -34, -46, -1, -2, -93, -86,
					-- layer=2 filter=21 channel=5
					-12, -20, 15, 0, -13, -5, -20, -30, -15,
					-- layer=2 filter=21 channel=6
					33, 37, -15, -94, -88, -42, -59, -59, 0,
					-- layer=2 filter=21 channel=7
					-20, 27, 7, -54, -16, 10, -32, 14, 46,
					-- layer=2 filter=21 channel=8
					34, 21, 17, 4, 6, -22, -5, -13, -23,
					-- layer=2 filter=21 channel=9
					10, -27, -55, 22, 6, -43, 17, -14, -84,
					-- layer=2 filter=21 channel=10
					10, 22, 31, 29, 34, -28, -22, -20, -43,
					-- layer=2 filter=21 channel=11
					0, -10, -7, 7, 8, -17, 34, 10, 9,
					-- layer=2 filter=21 channel=12
					-31, -23, -28, -40, -7, 1, -31, 2, 6,
					-- layer=2 filter=21 channel=13
					24, 35, -11, -3, 29, 11, 22, 6, 14,
					-- layer=2 filter=21 channel=14
					11, 5, 1, 6, 21, -18, -58, -85, -47,
					-- layer=2 filter=21 channel=15
					-8, -3, -19, 40, -4, -14, -11, 3, -12,
					-- layer=2 filter=21 channel=16
					54, 38, 33, 71, 59, 2, 12, 13, 2,
					-- layer=2 filter=21 channel=17
					-9, 15, 0, 5, 33, -8, -7, -30, 6,
					-- layer=2 filter=21 channel=18
					35, 39, -5, -33, 38, -11, -75, -13, -57,
					-- layer=2 filter=21 channel=19
					14, 13, 20, -15, -19, 7, -69, -47, -1,
					-- layer=2 filter=21 channel=20
					51, 47, 28, -31, -49, 21, -62, -34, 2,
					-- layer=2 filter=21 channel=21
					51, 29, 33, 14, -8, 13, -32, -53, 35,
					-- layer=2 filter=21 channel=22
					-20, -39, -1, 6, 7, -39, 16, 9, -1,
					-- layer=2 filter=21 channel=23
					-3, 36, 32, 12, 16, 15, -99, -61, -38,
					-- layer=2 filter=21 channel=24
					54, -24, -9, 40, -79, 6, 36, -62, -40,
					-- layer=2 filter=21 channel=25
					4, 3, 5, 9, -12, 15, -18, 1, 25,
					-- layer=2 filter=21 channel=26
					34, 38, -15, 15, 42, -14, 11, 36, -52,
					-- layer=2 filter=21 channel=27
					-25, -28, -48, -5, -10, -19, -22, -44, -7,
					-- layer=2 filter=21 channel=28
					6, -40, -23, -31, -17, 18, 7, 3, 52,
					-- layer=2 filter=21 channel=29
					-18, -5, -14, -23, -20, -8, 12, -34, -24,
					-- layer=2 filter=21 channel=30
					29, 11, 2, -39, -1, -4, -83, -44, 39,
					-- layer=2 filter=21 channel=31
					10, 19, -32, 34, 44, -13, 41, 29, -5,
					-- layer=2 filter=22 channel=0
					1, 24, 4, 19, -10, 13, 22, 10, 1,
					-- layer=2 filter=22 channel=1
					0, -6, 27, 19, 40, 53, 16, 49, -17,
					-- layer=2 filter=22 channel=2
					59, 33, -12, 31, 45, 18, -39, 1, -7,
					-- layer=2 filter=22 channel=3
					19, -8, -17, -55, -29, -19, 4, -42, -15,
					-- layer=2 filter=22 channel=4
					40, 6, 19, 0, 35, 4, 7, 13, -1,
					-- layer=2 filter=22 channel=5
					-26, -44, -8, -30, -66, -39, -13, -71, -43,
					-- layer=2 filter=22 channel=6
					-28, -10, 9, -8, 31, 12, -30, 17, 9,
					-- layer=2 filter=22 channel=7
					-3, -10, 0, 4, 32, 14, -28, 31, 41,
					-- layer=2 filter=22 channel=8
					17, -10, -10, -7, -19, 10, -32, -13, 14,
					-- layer=2 filter=22 channel=9
					-2, -4, -1, 45, 6, -21, -2, -10, -41,
					-- layer=2 filter=22 channel=10
					39, 32, 26, 25, 32, 16, -6, -9, 30,
					-- layer=2 filter=22 channel=11
					5, 3, 24, -60, -2, 0, -9, -44, -32,
					-- layer=2 filter=22 channel=12
					6, 28, 14, -28, -8, -10, 6, -10, -40,
					-- layer=2 filter=22 channel=13
					-19, -39, -25, -24, 29, 12, -3, 4, -25,
					-- layer=2 filter=22 channel=14
					-16, -46, -16, -24, -67, -23, -14, -50, -12,
					-- layer=2 filter=22 channel=15
					17, 8, 10, 37, -35, -16, 50, -3, -40,
					-- layer=2 filter=22 channel=16
					-13, 48, 16, -53, 23, -50, -38, 24, 1,
					-- layer=2 filter=22 channel=17
					29, 44, -8, -2, 18, 47, -40, 23, -23,
					-- layer=2 filter=22 channel=18
					18, -26, 30, 54, 43, -7, 57, -39, -31,
					-- layer=2 filter=22 channel=19
					18, 16, 11, -3, -47, 0, -4, -30, -6,
					-- layer=2 filter=22 channel=20
					8, 16, 14, 18, -25, -10, -21, -34, -26,
					-- layer=2 filter=22 channel=21
					11, 17, 10, -12, -44, 13, 5, -23, -12,
					-- layer=2 filter=22 channel=22
					-34, -15, 21, -6, -8, 13, 8, -13, -12,
					-- layer=2 filter=22 channel=23
					32, 0, 12, -2, -16, 13, -15, -5, 51,
					-- layer=2 filter=22 channel=24
					17, -42, -9, 9, 4, -8, 26, 1, 3,
					-- layer=2 filter=22 channel=25
					16, 34, 12, 17, 60, 41, -41, 41, 29,
					-- layer=2 filter=22 channel=26
					-6, 2, 0, 15, 8, 0, 69, 5, -42,
					-- layer=2 filter=22 channel=27
					3, -10, 29, -56, 6, -25, -15, -4, -47,
					-- layer=2 filter=22 channel=28
					-14, -20, 1, -47, -66, -36, -25, -87, -43,
					-- layer=2 filter=22 channel=29
					-8, -27, 0, -31, -51, -63, 3, 43, -40,
					-- layer=2 filter=22 channel=30
					4, 0, -6, -9, -3, 1, -18, 2, 9,
					-- layer=2 filter=22 channel=31
					5, 14, 5, 32, -5, 25, 28, -15, -32,
					-- layer=2 filter=23 channel=0
					-10, -10, 16, 10, -2, -14, 10, -16, -11,
					-- layer=2 filter=23 channel=1
					-34, -55, -37, 37, -21, -60, 40, 4, -20,
					-- layer=2 filter=23 channel=2
					-29, -57, -42, -26, -16, 13, -37, 10, 41,
					-- layer=2 filter=23 channel=3
					-12, -72, -40, -26, -5, 40, -24, -16, 51,
					-- layer=2 filter=23 channel=4
					-22, -73, -56, -18, -22, 16, -14, 84, 77,
					-- layer=2 filter=23 channel=5
					-38, -5, -18, -30, 14, -26, 41, 41, 47,
					-- layer=2 filter=23 channel=6
					27, 23, -1, 30, 49, 26, -39, -57, -62,
					-- layer=2 filter=23 channel=7
					40, 24, 19, 63, 58, 24, -16, -19, 17,
					-- layer=2 filter=23 channel=8
					-49, -11, -20, -15, -6, -18, 46, 73, 16,
					-- layer=2 filter=23 channel=9
					24, 26, 36, 40, 32, 58, -56, -41, -11,
					-- layer=2 filter=23 channel=10
					-49, -35, -39, -7, 7, 3, 12, 33, 0,
					-- layer=2 filter=23 channel=11
					-36, -36, -12, 0, 40, 10, -28, 12, 53,
					-- layer=2 filter=23 channel=12
					9, -5, -19, 6, 21, -8, -7, -9, 18,
					-- layer=2 filter=23 channel=13
					66, 14, 37, 110, 40, 25, -18, -61, -16,
					-- layer=2 filter=23 channel=14
					-94, -27, -68, 0, 60, 9, 35, 63, 13,
					-- layer=2 filter=23 channel=15
					5, 20, -6, -19, -27, -11, 13, -37, -19,
					-- layer=2 filter=23 channel=16
					44, 48, 49, 81, 48, 70, 21, 53, 14,
					-- layer=2 filter=23 channel=17
					5, -3, -14, -1, 0, -4, -36, -51, -18,
					-- layer=2 filter=23 channel=18
					-15, 4, 13, -31, -18, 1, -41, 6, -43,
					-- layer=2 filter=23 channel=19
					-46, -20, -64, 0, -1, -33, 25, 53, 2,
					-- layer=2 filter=23 channel=20
					-36, -32, -52, 23, 26, -9, 59, 59, -7,
					-- layer=2 filter=23 channel=21
					-21, -7, -66, 15, -6, -34, 66, 53, 3,
					-- layer=2 filter=23 channel=22
					36, 7, 18, 19, -5, 1, -36, -53, -18,
					-- layer=2 filter=23 channel=23
					-53, -43, -20, 1, 45, -19, 10, 12, -49,
					-- layer=2 filter=23 channel=24
					-71, 52, 0, -40, 64, 24, -52, 24, 75,
					-- layer=2 filter=23 channel=25
					35, -55, -30, 69, 5, 4, -4, -27, -31,
					-- layer=2 filter=23 channel=26
					-8, 45, 26, -13, -6, 60, -31, -66, -6,
					-- layer=2 filter=23 channel=27
					30, 68, 45, 20, 35, 28, -17, 8, -15,
					-- layer=2 filter=23 channel=28
					-17, -43, 10, 13, -38, 19, -15, -3, 58,
					-- layer=2 filter=23 channel=29
					12, 67, 72, 13, 29, 47, -67, -41, -43,
					-- layer=2 filter=23 channel=30
					2, -24, -20, 34, 42, 16, 42, 13, -9,
					-- layer=2 filter=23 channel=31
					3, 24, 44, -3, -25, 19, -22, -17, 1,
					-- layer=2 filter=24 channel=0
					0, -6, 0, 8, 10, -14, -9, 7, 18,
					-- layer=2 filter=24 channel=1
					-19, 19, -12, 2, -10, -11, -11, -13, -6,
					-- layer=2 filter=24 channel=2
					-4, 7, 10, -7, -13, -16, 16, -7, -5,
					-- layer=2 filter=24 channel=3
					0, 14, -11, 0, -1, 2, 7, -12, 11,
					-- layer=2 filter=24 channel=4
					-3, -19, -26, 0, -4, 0, -18, -1, -7,
					-- layer=2 filter=24 channel=5
					5, 0, 3, -9, -12, -12, -21, -4, -15,
					-- layer=2 filter=24 channel=6
					-2, -10, 16, -3, -20, 0, 0, 4, -10,
					-- layer=2 filter=24 channel=7
					-13, -12, 13, 1, -23, 4, 16, 3, -6,
					-- layer=2 filter=24 channel=8
					-15, 9, -17, -3, -16, -5, -4, 0, -5,
					-- layer=2 filter=24 channel=9
					10, 0, 10, 10, 3, 17, 3, -10, -11,
					-- layer=2 filter=24 channel=10
					-3, 19, -5, 2, -2, 4, 23, -15, -3,
					-- layer=2 filter=24 channel=11
					-7, 6, 7, 12, -11, -13, 0, 0, 7,
					-- layer=2 filter=24 channel=12
					15, -20, 2, -9, 3, 1, 0, 13, -3,
					-- layer=2 filter=24 channel=13
					6, -21, 11, -17, 2, -16, -11, -9, -5,
					-- layer=2 filter=24 channel=14
					-3, 14, 0, 0, -7, 11, -15, -20, -12,
					-- layer=2 filter=24 channel=15
					3, 0, -22, -22, 6, -1, -20, 17, -22,
					-- layer=2 filter=24 channel=16
					16, 17, -18, -16, 12, 15, -11, 5, 14,
					-- layer=2 filter=24 channel=17
					-21, -8, -10, 0, -11, 7, 4, -15, 10,
					-- layer=2 filter=24 channel=18
					21, 17, 2, -13, 7, -5, -6, -7, -16,
					-- layer=2 filter=24 channel=19
					3, 14, -19, -13, 12, -13, 14, -1, 2,
					-- layer=2 filter=24 channel=20
					-7, -1, -24, 4, 13, 2, -11, 3, -3,
					-- layer=2 filter=24 channel=21
					6, 11, -12, -23, -12, 10, 9, -21, 10,
					-- layer=2 filter=24 channel=22
					-16, 13, -4, -6, 5, -23, -18, 18, -7,
					-- layer=2 filter=24 channel=23
					-3, -15, -12, -14, -16, 4, -13, -19, -22,
					-- layer=2 filter=24 channel=24
					-16, -8, -10, 3, -2, 10, 5, -2, -24,
					-- layer=2 filter=24 channel=25
					-12, -2, -24, 4, -13, -7, 3, -2, 0,
					-- layer=2 filter=24 channel=26
					-2, -10, 11, 5, 15, -10, 17, 7, 13,
					-- layer=2 filter=24 channel=27
					-10, 9, -11, -17, -5, -6, -21, 4, -18,
					-- layer=2 filter=24 channel=28
					-10, 0, 4, -8, 1, -11, -10, 3, -11,
					-- layer=2 filter=24 channel=29
					0, -8, -14, -21, -7, -4, 0, 7, -20,
					-- layer=2 filter=24 channel=30
					-22, 9, -13, -18, 0, -7, -9, -5, 3,
					-- layer=2 filter=24 channel=31
					6, 8, -1, -7, -5, -18, -13, -12, -23,
					-- layer=2 filter=25 channel=0
					-8, -6, -2, -8, 8, -25, 6, -23, -18,
					-- layer=2 filter=25 channel=1
					-3, 21, 2, -3, -23, -43, -6, -28, -13,
					-- layer=2 filter=25 channel=2
					-35, -4, -33, -4, 20, 31, 46, 67, 40,
					-- layer=2 filter=25 channel=3
					29, 72, 64, 58, 24, 30, 11, 2, -26,
					-- layer=2 filter=25 channel=4
					-7, -14, -38, 48, 11, -16, 44, 49, 51,
					-- layer=2 filter=25 channel=5
					-5, -32, -9, -32, -3, -18, -23, 23, -31,
					-- layer=2 filter=25 channel=6
					-22, 10, -2, -2, -41, -9, -12, -10, -23,
					-- layer=2 filter=25 channel=7
					5, 24, 4, 19, 34, 38, 32, 39, 0,
					-- layer=2 filter=25 channel=8
					22, 28, 25, 27, -12, 1, 13, -23, 6,
					-- layer=2 filter=25 channel=9
					-78, -102, -24, -37, -61, -27, 34, 0, 36,
					-- layer=2 filter=25 channel=10
					8, 47, 2, -14, -37, -17, 12, -24, -32,
					-- layer=2 filter=25 channel=11
					-55, -63, -26, -46, -60, -43, -18, -65, -49,
					-- layer=2 filter=25 channel=12
					1, -50, -27, -4, 3, -11, 19, 33, 16,
					-- layer=2 filter=25 channel=13
					-19, 12, 2, 2, 5, -2, 23, 13, 46,
					-- layer=2 filter=25 channel=14
					22, -18, -10, 16, -14, 21, 1, -7, -17,
					-- layer=2 filter=25 channel=15
					-22, -47, -14, -35, -14, -7, 7, 9, 30,
					-- layer=2 filter=25 channel=16
					-49, -58, -17, -81, -82, -35, -27, -32, -51,
					-- layer=2 filter=25 channel=17
					-57, -9, -1, 0, -61, 9, -3, -8, 7,
					-- layer=2 filter=25 channel=18
					1, 27, -12, -72, -79, -79, -70, -93, -57,
					-- layer=2 filter=25 channel=19
					40, 9, -20, 38, 44, 6, 37, 19, 31,
					-- layer=2 filter=25 channel=20
					21, 1, -12, 19, -21, -15, -34, -20, -11,
					-- layer=2 filter=25 channel=21
					39, 11, -20, 43, 19, 4, 9, -6, 9,
					-- layer=2 filter=25 channel=22
					-43, -21, -10, -14, -47, 6, 22, 10, 28,
					-- layer=2 filter=25 channel=23
					-2, 7, 20, -13, -1, 4, -7, 7, -1,
					-- layer=2 filter=25 channel=24
					32, 48, 25, 44, 41, -3, 0, -5, 11,
					-- layer=2 filter=25 channel=25
					36, 66, 32, 35, 7, 36, 35, 1, 23,
					-- layer=2 filter=25 channel=26
					-73, -67, -9, -57, -4, 7, -3, 11, 32,
					-- layer=2 filter=25 channel=27
					23, -30, -5, -4, 40, 31, 10, 6, 19,
					-- layer=2 filter=25 channel=28
					65, 46, 36, 36, 20, 20, 11, -18, -16,
					-- layer=2 filter=25 channel=29
					-36, -54, 12, 4, -38, 3, 13, 8, 1,
					-- layer=2 filter=25 channel=30
					15, 16, 19, 40, 11, 29, -11, -17, -14,
					-- layer=2 filter=25 channel=31
					-19, -72, 2, -66, -36, 16, 11, 20, 34,
					-- layer=2 filter=26 channel=0
					0, -7, 21, 7, -10, -9, -3, 6, -23,
					-- layer=2 filter=26 channel=1
					53, 19, 40, 3, -7, 35, 3, 0, 2,
					-- layer=2 filter=26 channel=2
					42, -4, 60, 45, 46, 21, 44, 48, 22,
					-- layer=2 filter=26 channel=3
					-56, -15, -23, -9, -33, -18, 18, 12, -49,
					-- layer=2 filter=26 channel=4
					-17, 25, -52, 55, 53, 20, 20, 29, 2,
					-- layer=2 filter=26 channel=5
					-37, -35, -40, 14, 39, 35, 14, 30, 7,
					-- layer=2 filter=26 channel=6
					77, 56, 51, 14, 28, 32, -11, -57, -61,
					-- layer=2 filter=26 channel=7
					28, 51, 22, -23, -9, -45, -24, -55, -5,
					-- layer=2 filter=26 channel=8
					46, -8, 7, 1, 44, 42, 18, 27, 23,
					-- layer=2 filter=26 channel=9
					44, 17, -2, 43, -33, -25, 38, 0, -17,
					-- layer=2 filter=26 channel=10
					1, -21, 6, -35, 0, 51, -23, -14, -13,
					-- layer=2 filter=26 channel=11
					-10, 45, 14, -30, 31, 30, 7, -36, -32,
					-- layer=2 filter=26 channel=12
					27, 4, 4, 10, 17, -33, 6, -8, -29,
					-- layer=2 filter=26 channel=13
					48, 18, 53, 2, -30, -35, -14, -27, -23,
					-- layer=2 filter=26 channel=14
					12, 13, -19, 16, 63, 33, 16, 62, 24,
					-- layer=2 filter=26 channel=15
					6, 8, 3, 29, -6, -27, -10, -25, 1,
					-- layer=2 filter=26 channel=16
					-28, -5, 19, 11, -17, 41, -47, -42, -7,
					-- layer=2 filter=26 channel=17
					26, 16, 40, 5, -12, 39, -10, -34, -23,
					-- layer=2 filter=26 channel=18
					-10, 6, -11, 24, 4, 9, 36, 7, -15,
					-- layer=2 filter=26 channel=19
					14, -3, -12, 8, 53, 0, -14, 8, -10,
					-- layer=2 filter=26 channel=20
					-3, -14, -12, 10, 3, -34, -10, 14, 6,
					-- layer=2 filter=26 channel=21
					0, 1, -23, 15, 19, 16, 28, 11, 15,
					-- layer=2 filter=26 channel=22
					74, 42, 40, 21, 11, 23, 40, -17, -9,
					-- layer=2 filter=26 channel=23
					-29, -14, -41, 5, 10, -11, 13, -5, -32,
					-- layer=2 filter=26 channel=24
					1, -49, 0, 18, -8, 63, -36, 1, 34,
					-- layer=2 filter=26 channel=25
					-2, 11, -6, -17, -25, -36, -68, -57, -75,
					-- layer=2 filter=26 channel=26
					19, -3, -1, 17, -31, 1, 25, -40, -2,
					-- layer=2 filter=26 channel=27
					72, 19, 30, 25, 3, 17, -2, -12, -13,
					-- layer=2 filter=26 channel=28
					-15, -10, -12, 1, 4, 31, 26, 58, -15,
					-- layer=2 filter=26 channel=29
					32, 37, 25, 27, 2, -8, -5, -37, 19,
					-- layer=2 filter=26 channel=30
					-31, -6, -35, -9, -11, -15, -23, 1, -21,
					-- layer=2 filter=26 channel=31
					30, 16, -5, -11, -41, -10, 25, 1, -19,
					-- layer=2 filter=27 channel=0
					10, -18, -21, 20, 3, 8, 21, 10, 0,
					-- layer=2 filter=27 channel=1
					-25, -16, -17, 1, -22, -2, 8, 2, 0,
					-- layer=2 filter=27 channel=2
					2, 10, 5, -19, -11, 8, -3, -21, -19,
					-- layer=2 filter=27 channel=3
					-24, 11, -12, 13, 4, -13, 17, 2, -3,
					-- layer=2 filter=27 channel=4
					2, -3, -10, 7, 21, -10, 12, 10, 2,
					-- layer=2 filter=27 channel=5
					-2, -8, -4, -2, 11, -26, 5, -1, 3,
					-- layer=2 filter=27 channel=6
					11, 7, -1, 0, -12, -12, -15, -27, 6,
					-- layer=2 filter=27 channel=7
					7, -21, 1, -4, -22, -8, -5, -10, 1,
					-- layer=2 filter=27 channel=8
					-15, 9, 5, -17, -16, -25, -11, -14, -19,
					-- layer=2 filter=27 channel=9
					12, -15, -21, 9, 0, -25, -24, -27, -7,
					-- layer=2 filter=27 channel=10
					-25, 5, 9, 1, 10, -18, -3, -7, -18,
					-- layer=2 filter=27 channel=11
					10, -7, -3, 15, -11, -7, 0, 0, -3,
					-- layer=2 filter=27 channel=12
					-20, -21, -4, -15, -27, 11, 9, -6, -1,
					-- layer=2 filter=27 channel=13
					-17, 9, -12, -11, 2, -2, -4, 0, -26,
					-- layer=2 filter=27 channel=14
					-26, -11, -23, 1, 0, -15, 4, 4, 2,
					-- layer=2 filter=27 channel=15
					-16, 4, 7, 15, 15, -15, -15, -7, 1,
					-- layer=2 filter=27 channel=16
					-4, -13, -11, 0, 11, 0, -15, 7, -4,
					-- layer=2 filter=27 channel=17
					3, 11, 1, -21, 2, -7, -22, 9, -18,
					-- layer=2 filter=27 channel=18
					-11, 13, 8, -20, 2, 0, -20, 15, 15,
					-- layer=2 filter=27 channel=19
					7, -4, -14, -1, -13, -10, -2, -29, -10,
					-- layer=2 filter=27 channel=20
					-14, -7, 11, -20, -8, -19, -29, -16, 0,
					-- layer=2 filter=27 channel=21
					-21, 14, 5, 7, 13, -10, -18, 14, -20,
					-- layer=2 filter=27 channel=22
					0, 13, -1, 4, -17, -8, -12, -19, 7,
					-- layer=2 filter=27 channel=23
					-16, 4, 0, -16, -22, -7, 7, -18, 5,
					-- layer=2 filter=27 channel=24
					0, 2, -25, -14, 4, -28, 7, 11, -19,
					-- layer=2 filter=27 channel=25
					-31, 0, 3, -26, -33, -34, -12, -32, -17,
					-- layer=2 filter=27 channel=26
					-8, 6, 19, -10, -13, -3, -10, 0, -16,
					-- layer=2 filter=27 channel=27
					-23, -13, 1, -6, -8, -21, -20, 5, -25,
					-- layer=2 filter=27 channel=28
					-12, 7, -26, -3, 7, -14, 19, 5, -29,
					-- layer=2 filter=27 channel=29
					-1, -20, 11, 16, -12, 5, -13, -27, -4,
					-- layer=2 filter=27 channel=30
					-5, -25, 0, -11, -14, -2, -21, 6, -3,
					-- layer=2 filter=27 channel=31
					-12, -12, -3, -7, -20, 6, 15, -24, 5,
					-- layer=2 filter=28 channel=0
					-10, -3, 18, -19, 20, -2, -3, 6, -17,
					-- layer=2 filter=28 channel=1
					4, -3, -21, 9, 3, 10, 3, -1, 0,
					-- layer=2 filter=28 channel=2
					-19, -9, -3, 5, 4, 17, 1, 5, -23,
					-- layer=2 filter=28 channel=3
					0, -21, -20, -17, -9, -20, 9, -9, -14,
					-- layer=2 filter=28 channel=4
					-18, -13, 3, -4, 9, 6, -16, -12, -18,
					-- layer=2 filter=28 channel=5
					-23, -28, 2, -28, -17, -30, 9, 11, -12,
					-- layer=2 filter=28 channel=6
					-12, -24, -2, -11, 2, 2, -6, -20, -2,
					-- layer=2 filter=28 channel=7
					-22, -13, -7, 5, -10, -15, -11, -25, -20,
					-- layer=2 filter=28 channel=8
					7, -17, -25, 0, 0, -2, 0, 11, 3,
					-- layer=2 filter=28 channel=9
					6, -16, -10, -19, -2, 8, 8, 8, 5,
					-- layer=2 filter=28 channel=10
					0, 5, -4, -4, -29, 5, -11, -9, 0,
					-- layer=2 filter=28 channel=11
					-21, -7, 11, -22, -23, 14, -4, -23, 3,
					-- layer=2 filter=28 channel=12
					8, 15, -6, 5, 9, 8, 15, 11, 4,
					-- layer=2 filter=28 channel=13
					2, 4, 12, -23, -3, -20, 10, -10, -1,
					-- layer=2 filter=28 channel=14
					-23, 10, -2, -14, 6, 0, 8, 6, -21,
					-- layer=2 filter=28 channel=15
					-6, 14, -10, 0, -8, 1, -13, -9, -4,
					-- layer=2 filter=28 channel=16
					14, 18, 12, -10, -2, -15, 0, -19, 4,
					-- layer=2 filter=28 channel=17
					-8, 6, -12, -3, -22, -19, 8, -4, -9,
					-- layer=2 filter=28 channel=18
					-4, 5, 10, -10, 5, -5, 19, -17, -6,
					-- layer=2 filter=28 channel=19
					13, -22, -7, -4, -7, -15, -23, 10, -27,
					-- layer=2 filter=28 channel=20
					2, -20, 10, -1, -16, -11, 3, -14, -17,
					-- layer=2 filter=28 channel=21
					2, -12, 7, -7, 5, -14, -20, -21, -14,
					-- layer=2 filter=28 channel=22
					-17, -5, -20, 0, -2, -10, -15, 0, -19,
					-- layer=2 filter=28 channel=23
					6, 5, 11, 4, -1, -6, -25, -7, -6,
					-- layer=2 filter=28 channel=24
					-12, 9, 10, -10, 15, -26, -6, -21, 12,
					-- layer=2 filter=28 channel=25
					-21, -14, 3, -21, -23, -8, -18, 4, -13,
					-- layer=2 filter=28 channel=26
					-7, 15, 0, -16, -22, -11, -8, -28, -4,
					-- layer=2 filter=28 channel=27
					-23, 5, 16, -20, -22, -15, -6, -11, -18,
					-- layer=2 filter=28 channel=28
					-22, -5, 7, -11, -17, 9, -11, -7, -6,
					-- layer=2 filter=28 channel=29
					-18, -27, -11, -21, 3, 2, 14, -15, 3,
					-- layer=2 filter=28 channel=30
					-20, -6, -6, 5, -11, 0, -6, -13, -18,
					-- layer=2 filter=28 channel=31
					-18, 6, -1, -2, -1, -7, 13, -18, -9,
					-- layer=2 filter=29 channel=0
					0, 8, 17, -23, 8, -9, -6, -19, 0,
					-- layer=2 filter=29 channel=1
					2, 45, 30, -36, -18, -10, 22, 12, 0,
					-- layer=2 filter=29 channel=2
					34, 46, 5, 50, 38, -12, 53, 49, -7,
					-- layer=2 filter=29 channel=3
					-3, -23, -44, -14, -55, -87, 18, -89, -77,
					-- layer=2 filter=29 channel=4
					30, -5, -39, 62, 11, -4, 56, 10, 10,
					-- layer=2 filter=29 channel=5
					11, 11, -14, 22, 41, 23, -23, -24, -30,
					-- layer=2 filter=29 channel=6
					42, 34, 15, -6, 3, -22, -28, -20, -73,
					-- layer=2 filter=29 channel=7
					-31, -1, 24, -33, 16, -13, 58, 21, 45,
					-- layer=2 filter=29 channel=8
					53, 26, -14, 7, -31, -16, 3, 15, 14,
					-- layer=2 filter=29 channel=9
					13, -43, 34, -23, -4, 38, 22, -8, 42,
					-- layer=2 filter=29 channel=10
					4, 46, 1, -45, -66, -28, 19, -9, 12,
					-- layer=2 filter=29 channel=11
					-5, 38, 14, 24, -32, -11, 18, -55, 6,
					-- layer=2 filter=29 channel=12
					1, -22, -35, -3, 7, 24, 21, 8, 19,
					-- layer=2 filter=29 channel=13
					-36, 0, 19, -42, -1, 6, -6, 21, -11,
					-- layer=2 filter=29 channel=14
					56, 12, 4, -1, 24, -2, -4, -13, -25,
					-- layer=2 filter=29 channel=15
					-20, 3, 21, -28, -15, 42, -47, 5, 32,
					-- layer=2 filter=29 channel=16
					-58, -14, 20, -67, -46, -39, -12, 14, -53,
					-- layer=2 filter=29 channel=17
					-2, 1, 35, 2, -23, 26, 0, 12, 5,
					-- layer=2 filter=29 channel=18
					-58, -9, 18, 10, -4, 63, -50, -36, -27,
					-- layer=2 filter=29 channel=19
					22, 46, 26, 29, 9, 11, -7, 13, -15,
					-- layer=2 filter=29 channel=20
					-29, 27, 42, -16, 0, 19, -19, 28, 25,
					-- layer=2 filter=29 channel=21
					49, 45, 10, 5, 13, 3, -20, 14, -9,
					-- layer=2 filter=29 channel=22
					24, 38, 10, 23, -1, -3, 12, 28, -4,
					-- layer=2 filter=29 channel=23
					52, 20, -26, 6, 8, -4, -17, -12, -18,
					-- layer=2 filter=29 channel=24
					22, 45, 30, -23, -37, -12, -86, -28, -45,
					-- layer=2 filter=29 channel=25
					-14, 3, 19, -2, 13, -21, 5, -8, -29,
					-- layer=2 filter=29 channel=26
					-10, -26, 24, -7, 8, 53, -7, -1, 25,
					-- layer=2 filter=29 channel=27
					31, 29, -15, 23, 16, 13, -23, 29, -19,
					-- layer=2 filter=29 channel=28
					-8, -8, -81, -8, -16, -51, -38, -49, -65,
					-- layer=2 filter=29 channel=29
					-8, 6, 0, -21, 13, 43, 9, -1, -17,
					-- layer=2 filter=29 channel=30
					-49, 3, -7, -24, 0, -38, 21, 8, 12,
					-- layer=2 filter=29 channel=31
					1, -41, 28, 14, -13, 23, -31, 1, 7,
					-- layer=2 filter=30 channel=0
					12, -2, -7, 7, 13, -17, 12, -12, 14,
					-- layer=2 filter=30 channel=1
					2, -29, -28, -36, -2, -19, -31, 10, -16,
					-- layer=2 filter=30 channel=2
					-17, 2, -33, -24, -9, -19, 13, -18, -7,
					-- layer=2 filter=30 channel=3
					4, -23, -3, -7, 9, -9, -19, -44, -21,
					-- layer=2 filter=30 channel=4
					-28, -12, -16, -11, 12, -6, -2, 3, 0,
					-- layer=2 filter=30 channel=5
					-19, 15, -7, 1, 4, -12, 0, 1, -23,
					-- layer=2 filter=30 channel=6
					-19, 2, 3, -27, -5, -18, -21, 0, -14,
					-- layer=2 filter=30 channel=7
					-9, 2, -16, -21, 6, -12, -23, 7, -3,
					-- layer=2 filter=30 channel=8
					-10, 0, 10, -21, -3, -20, -23, 8, -15,
					-- layer=2 filter=30 channel=9
					9, 3, -14, 7, -8, -24, 13, -1, 22,
					-- layer=2 filter=30 channel=10
					-11, -11, 13, -2, -15, -13, -22, -24, 4,
					-- layer=2 filter=30 channel=11
					0, 18, 19, -23, -8, -26, -3, -23, 5,
					-- layer=2 filter=30 channel=12
					6, 15, -22, -10, -28, -19, -2, -2, -15,
					-- layer=2 filter=30 channel=13
					5, -28, -15, 2, -24, 0, 1, -9, 10,
					-- layer=2 filter=30 channel=14
					11, 17, -18, -23, -13, -21, -12, -27, -3,
					-- layer=2 filter=30 channel=15
					-18, -7, 3, -19, -9, -7, 12, 0, -8,
					-- layer=2 filter=30 channel=16
					22, 16, -5, -9, -2, 12, 8, 32, 0,
					-- layer=2 filter=30 channel=17
					-3, 25, 20, 17, 0, -3, 1, -10, 4,
					-- layer=2 filter=30 channel=18
					5, -11, 17, -3, -7, -6, -10, 2, 0,
					-- layer=2 filter=30 channel=19
					-24, 0, -21, -15, -26, -1, -24, -9, 2,
					-- layer=2 filter=30 channel=20
					-32, -20, -17, -17, -32, -12, 0, -20, -29,
					-- layer=2 filter=30 channel=21
					-11, -32, 0, -9, -21, -14, -3, 2, 8,
					-- layer=2 filter=30 channel=22
					-32, -26, -9, 15, -7, 12, -3, 32, -13,
					-- layer=2 filter=30 channel=23
					11, -6, 18, 9, 0, 0, 6, -19, 8,
					-- layer=2 filter=30 channel=24
					-15, -12, -36, -23, -24, -26, 0, 12, -37,
					-- layer=2 filter=30 channel=25
					11, -4, -39, -26, -16, -22, -21, -19, -19,
					-- layer=2 filter=30 channel=26
					-13, -6, 17, 18, 15, -4, -27, 14, -26,
					-- layer=2 filter=30 channel=27
					4, 8, -16, -8, -29, -6, -8, -2, -16,
					-- layer=2 filter=30 channel=28
					-24, 2, -12, -9, -6, 1, 3, -20, -11,
					-- layer=2 filter=30 channel=29
					-10, 0, -15, -22, -1, 9, -22, -15, -16,
					-- layer=2 filter=30 channel=30
					10, 7, -16, -21, 8, -6, -14, -7, -2,
					-- layer=2 filter=30 channel=31
					-29, -6, -7, 14, -4, -7, -21, -23, -1,
					-- layer=2 filter=31 channel=0
					25, 26, -18, 4, 7, 14, 24, 26, 5,
					-- layer=2 filter=31 channel=1
					28, 60, 66, 74, 98, 58, 87, 6, -58,
					-- layer=2 filter=31 channel=2
					0, -17, -9, -64, -74, -82, -125, -72, -140,
					-- layer=2 filter=31 channel=3
					-27, -11, 18, -27, -12, 28, 27, 15, 99,
					-- layer=2 filter=31 channel=4
					-3, 6, -3, -36, -68, -60, -21, -157, -66,
					-- layer=2 filter=31 channel=5
					26, 24, -6, 4, -32, -19, 42, 52, 84,
					-- layer=2 filter=31 channel=6
					-10, 10, -12, 18, 8, 0, 0, -27, 0,
					-- layer=2 filter=31 channel=7
					9, 17, -6, -4, -12, 6, 22, 45, 7,
					-- layer=2 filter=31 channel=8
					22, 20, 48, 25, 58, 20, 44, 9, -69,
					-- layer=2 filter=31 channel=9
					-27, -15, -61, -11, -32, -80, 7, -11, -15,
					-- layer=2 filter=31 channel=10
					37, 36, 2, 71, 42, -1, 35, -98, -146,
					-- layer=2 filter=31 channel=11
					-3, -11, -75, -55, -124, -53, -2, -63, -33,
					-- layer=2 filter=31 channel=12
					-35, -18, 14, 4, -19, -7, 29, 49, 101,
					-- layer=2 filter=31 channel=13
					15, 35, -36, 49, 31, -7, -3, -5, -7,
					-- layer=2 filter=31 channel=14
					18, -42, -41, -16, -28, -88, 10, 31, 49,
					-- layer=2 filter=31 channel=15
					-4, -31, -42, 20, -34, -25, 3, 22, 34,
					-- layer=2 filter=31 channel=16
					10, 73, 20, 44, 7, -19, -10, 2, -22,
					-- layer=2 filter=31 channel=17
					40, 15, 11, 34, 33, 23, 1, -4, 21,
					-- layer=2 filter=31 channel=18
					2, -38, 14, -31, 22, -24, -10, 24, -5,
					-- layer=2 filter=31 channel=19
					27, 14, 21, -7, 2, 2, 9, 19, 19,
					-- layer=2 filter=31 channel=20
					14, -7, -3, -36, -22, -10, -8, -10, 1,
					-- layer=2 filter=31 channel=21
					29, 0, -3, -15, 0, 10, -8, -5, 9,
					-- layer=2 filter=31 channel=22
					-24, 12, 15, -3, 15, -18, -13, 9, 0,
					-- layer=2 filter=31 channel=23
					33, 1, -13, 30, -26, -28, -21, -51, -57,
					-- layer=2 filter=31 channel=24
					-26, -72, -1, -72, -42, -101, -11, -75, -94,
					-- layer=2 filter=31 channel=25
					47, 36, 50, 32, 42, 7, 12, -12, -23,
					-- layer=2 filter=31 channel=26
					46, -7, -20, -6, -5, -34, -9, -1, 15,
					-- layer=2 filter=31 channel=27
					-13, -2, -22, 14, -8, -16, 12, 15, 14,
					-- layer=2 filter=31 channel=28
					-16, -48, 29, -28, -13, -6, 59, 25, 14,
					-- layer=2 filter=31 channel=29
					-32, -46, -45, -69, -64, -49, 19, 11, 20,
					-- layer=2 filter=31 channel=30
					-15, 15, 1, -7, -26, 23, 9, 11, 26,
					-- layer=2 filter=31 channel=31
					14, -27, -10, 5, -1, -2, -3, 26, 27,
					-- layer=2 filter=32 channel=0
					-4, 24, 20, 4, -4, 8, 14, 16, 2,
					-- layer=2 filter=32 channel=1
					18, 33, -3, 23, -9, -17, -17, -48, 12,
					-- layer=2 filter=32 channel=2
					-7, -19, -52, -18, -46, -60, 3, -43, -53,
					-- layer=2 filter=32 channel=3
					26, 0, 7, 47, 25, 44, 59, 33, -16,
					-- layer=2 filter=32 channel=4
					-13, -106, -32, -27, -108, -49, -39, -22, -26,
					-- layer=2 filter=32 channel=5
					-54, -14, -60, -23, 9, -11, -33, 64, 49,
					-- layer=2 filter=32 channel=6
					22, 0, 19, 9, -18, 29, -30, -19, -18,
					-- layer=2 filter=32 channel=7
					-37, -45, 5, -10, 19, 41, 15, -4, 31,
					-- layer=2 filter=32 channel=8
					77, 50, 15, 77, 5, -22, -7, -1, -10,
					-- layer=2 filter=32 channel=9
					2, -22, -11, 10, -12, -38, -23, -10, -29,
					-- layer=2 filter=32 channel=10
					37, 33, -1, 36, -41, -32, -11, 0, -31,
					-- layer=2 filter=32 channel=11
					0, -21, -20, -2, 29, 2, -14, -5, -2,
					-- layer=2 filter=32 channel=12
					-13, -33, -5, -13, 22, 41, 21, 24, 23,
					-- layer=2 filter=32 channel=13
					-34, -25, -34, 21, 5, 55, 34, -7, 1,
					-- layer=2 filter=32 channel=14
					17, -17, -40, -28, -10, 11, -12, 18, 8,
					-- layer=2 filter=32 channel=15
					1, -38, -32, -23, 25, 25, 1, 13, 18,
					-- layer=2 filter=32 channel=16
					95, 57, 38, 46, 40, 38, -12, 6, 36,
					-- layer=2 filter=32 channel=17
					9, 11, 17, 18, -4, 38, 8, -21, -24,
					-- layer=2 filter=32 channel=18
					-10, -48, -76, -20, -8, -16, -22, -18, 25,
					-- layer=2 filter=32 channel=19
					0, -18, -27, 14, -31, -3, -27, 34, 46,
					-- layer=2 filter=32 channel=20
					-25, -25, -40, -65, -26, -24, -40, 28, 42,
					-- layer=2 filter=32 channel=21
					-10, -17, -34, -63, -36, -40, -8, 64, 66,
					-- layer=2 filter=32 channel=22
					-2, -22, -47, -14, -18, 4, -45, -22, -9,
					-- layer=2 filter=32 channel=23
					64, 25, 10, 23, -27, -3, -2, -10, -10,
					-- layer=2 filter=32 channel=24
					-6, -37, -65, 76, -2, -46, 0, 30, 23,
					-- layer=2 filter=32 channel=25
					5, -27, -15, -16, 13, 8, 1, 5, 10,
					-- layer=2 filter=32 channel=26
					-1, 14, 19, 34, 5, 5, 7, -8, -13,
					-- layer=2 filter=32 channel=27
					-35, -40, -51, -6, -18, 9, -21, -12, 4,
					-- layer=2 filter=32 channel=28
					6, 25, 33, 48, 8, 15, 31, 1, -34,
					-- layer=2 filter=32 channel=29
					-13, -4, -10, -12, 13, -26, -10, -25, 18,
					-- layer=2 filter=32 channel=30
					-37, -18, -44, -80, -27, -12, -12, 12, 24,
					-- layer=2 filter=32 channel=31
					-29, 2, 23, -5, 17, 47, 24, -7, 18,
					-- layer=2 filter=33 channel=0
					-9, 1, -19, -33, -10, 10, -29, -24, -24,
					-- layer=2 filter=33 channel=1
					26, -10, -21, -101, -102, -71, -136, -121, -58,
					-- layer=2 filter=33 channel=2
					24, 25, -22, -32, 6, -4, 38, 27, 14,
					-- layer=2 filter=33 channel=3
					2, -77, -36, 10, -63, -52, 17, -23, -42,
					-- layer=2 filter=33 channel=4
					10, -18, 0, 39, 20, -17, 43, 44, 10,
					-- layer=2 filter=33 channel=5
					41, 34, -1, 57, 39, -10, 12, 23, -10,
					-- layer=2 filter=33 channel=6
					-17, 8, -21, -7, -11, -32, -3, -14, -13,
					-- layer=2 filter=33 channel=7
					12, 32, 1, -12, 27, 56, 38, 26, 25,
					-- layer=2 filter=33 channel=8
					-12, -28, -10, -72, -55, -18, -54, -16, 3,
					-- layer=2 filter=33 channel=9
					1, 17, 5, -1, -9, -23, 12, -7, -2,
					-- layer=2 filter=33 channel=10
					1, 9, -3, -36, -61, -57, -38, -15, 14,
					-- layer=2 filter=33 channel=11
					10, 11, -19, 30, -48, -35, 47, -40, -29,
					-- layer=2 filter=33 channel=12
					-6, -12, -31, 5, -3, -15, 32, 16, -56,
					-- layer=2 filter=33 channel=13
					13, 34, 40, -29, -6, -1, 6, 3, 2,
					-- layer=2 filter=33 channel=14
					3, -14, -23, 63, 14, -14, 19, 18, -16,
					-- layer=2 filter=33 channel=15
					-16, -11, 13, 15, 27, -15, 25, 14, -6,
					-- layer=2 filter=33 channel=16
					-52, -30, -60, -76, -32, -69, 4, -80, -62,
					-- layer=2 filter=33 channel=17
					30, 20, 17, 0, 17, -28, 2, -6, -50,
					-- layer=2 filter=33 channel=18
					44, 74, 76, 7, -38, -19, -4, -69, -38,
					-- layer=2 filter=33 channel=19
					-5, -25, 0, 23, 13, 11, 15, 35, 25,
					-- layer=2 filter=33 channel=20
					4, -8, 28, 34, 4, -8, -7, -14, 0,
					-- layer=2 filter=33 channel=21
					7, -9, -7, 25, 11, 0, 7, 8, 26,
					-- layer=2 filter=33 channel=22
					0, -9, -4, 5, 7, -11, 0, 34, -17,
					-- layer=2 filter=33 channel=23
					32, -9, -3, 19, 13, 8, 32, 25, 11,
					-- layer=2 filter=33 channel=24
					-13, 16, -39, -21, 3, 48, -15, 33, 66,
					-- layer=2 filter=33 channel=25
					0, 17, 13, -37, -11, -31, 23, -19, 14,
					-- layer=2 filter=33 channel=26
					-6, 38, 41, 0, 14, -17, 38, -10, -29,
					-- layer=2 filter=33 channel=27
					-4, -21, -52, -24, 0, 9, 6, 33, 5,
					-- layer=2 filter=33 channel=28
					29, 0, -26, 25, 8, -39, -5, 58, -24,
					-- layer=2 filter=33 channel=29
					-12, 33, -52, 7, 44, -1, 41, -5, -20,
					-- layer=2 filter=33 channel=30
					-1, -26, 1, 14, -20, 14, 20, 6, 12,
					-- layer=2 filter=33 channel=31
					33, 27, 50, 14, 27, 2, 16, 35, -50,
					-- layer=2 filter=34 channel=0
					-19, -11, -29, -4, 16, 14, 1, -6, -16,
					-- layer=2 filter=34 channel=1
					-3, 21, 14, 54, 22, 50, 14, 32, 32,
					-- layer=2 filter=34 channel=2
					47, 17, 26, -35, 17, 12, 21, 28, 66,
					-- layer=2 filter=34 channel=3
					-24, 21, 7, 24, 59, 7, -42, -22, 11,
					-- layer=2 filter=34 channel=4
					28, -38, 21, 16, 15, 41, -24, 8, 39,
					-- layer=2 filter=34 channel=5
					-51, -40, -21, -25, -28, -18, -72, -57, -25,
					-- layer=2 filter=34 channel=6
					-22, -7, -43, -81, -71, -75, -2, -14, -4,
					-- layer=2 filter=34 channel=7
					34, 58, -11, 18, -15, -27, 17, -7, 21,
					-- layer=2 filter=34 channel=8
					-20, -5, 2, -24, 9, 17, -56, 1, 62,
					-- layer=2 filter=34 channel=9
					-18, 11, 24, 9, -9, 2, 6, 11, 13,
					-- layer=2 filter=34 channel=10
					-23, 13, 26, 9, -2, 26, 3, 41, 19,
					-- layer=2 filter=34 channel=11
					-27, -88, 14, -73, -15, -25, -64, -30, -49,
					-- layer=2 filter=34 channel=12
					-22, -12, -5, -55, -14, 15, -6, -62, -69,
					-- layer=2 filter=34 channel=13
					-34, -6, -43, -40, -52, -29, -3, 18, -20,
					-- layer=2 filter=34 channel=14
					-33, -65, -16, -64, -102, -5, -105, -91, -55,
					-- layer=2 filter=34 channel=15
					-16, 0, 30, -22, -22, 1, -14, -41, -65,
					-- layer=2 filter=34 channel=16
					-52, -22, -25, -69, -85, -87, -54, -126, -41,
					-- layer=2 filter=34 channel=17
					-47, 0, 26, -16, -85, -31, -39, -3, -26,
					-- layer=2 filter=34 channel=18
					-1, -4, 36, -31, 0, 0, -35, -49, 28,
					-- layer=2 filter=34 channel=19
					14, 24, 27, 2, 20, 3, 19, -33, -41,
					-- layer=2 filter=34 channel=20
					15, 69, 48, 23, 54, 62, -6, -29, -19,
					-- layer=2 filter=34 channel=21
					14, 51, 51, 17, 53, 20, -32, -19, -19,
					-- layer=2 filter=34 channel=22
					-30, -17, 2, -23, 11, 7, -21, 1, 14,
					-- layer=2 filter=34 channel=23
					-17, -9, 27, -30, -29, 21, -35, -54, -27,
					-- layer=2 filter=34 channel=24
					8, 29, -20, 36, 50, 22, 49, 26, -13,
					-- layer=2 filter=34 channel=25
					43, 19, -25, 0, 22, 6, 5, -13, -16,
					-- layer=2 filter=34 channel=26
					0, 21, 57, 0, 33, 67, -8, 26, 56,
					-- layer=2 filter=34 channel=27
					-37, -46, -34, -18, -80, -47, 47, -74, -98,
					-- layer=2 filter=34 channel=28
					8, 0, 44, 48, 4, 49, 12, 13, 17,
					-- layer=2 filter=34 channel=29
					-105, -107, -61, -59, -112, -138, 34, 4, -51,
					-- layer=2 filter=34 channel=30
					8, 21, 50, 21, 49, 13, 4, -29, -49,
					-- layer=2 filter=34 channel=31
					-12, 12, 68, 17, 43, 26, -5, -12, 31,
					-- layer=2 filter=35 channel=0
					19, 19, -17, -31, 2, -13, 1, 0, 0,
					-- layer=2 filter=35 channel=1
					-26, -50, -102, -48, -68, -89, -22, -32, -10,
					-- layer=2 filter=35 channel=2
					4, -22, -54, 11, -34, 3, 2, -2, -31,
					-- layer=2 filter=35 channel=3
					-18, -5, -15, -28, 17, 22, -30, 5, -6,
					-- layer=2 filter=35 channel=4
					-15, -40, -55, 4, -16, -27, -42, -38, -27,
					-- layer=2 filter=35 channel=5
					15, 45, 46, 31, 28, 32, 37, -4, -3,
					-- layer=2 filter=35 channel=6
					20, -35, -54, 14, -20, 5, 34, -5, 20,
					-- layer=2 filter=35 channel=7
					-5, 23, -33, 41, 15, 24, 18, 14, -29,
					-- layer=2 filter=35 channel=8
					25, -28, -6, 0, -33, -9, -23, -18, 12,
					-- layer=2 filter=35 channel=9
					-19, -32, -13, -19, -1, 2, 17, 36, 21,
					-- layer=2 filter=35 channel=10
					19, -23, -53, 28, -15, -7, 4, 12, 26,
					-- layer=2 filter=35 channel=11
					5, -7, 55, 23, 28, 38, 31, 10, 4,
					-- layer=2 filter=35 channel=12
					-29, 9, 46, -8, 1, 30, -7, 4, 9,
					-- layer=2 filter=35 channel=13
					-2, -15, -52, -20, -57, -33, -42, 10, -14,
					-- layer=2 filter=35 channel=14
					25, 42, 33, 33, 28, 8, 36, 7, -38,
					-- layer=2 filter=35 channel=15
					-22, -42, 16, -38, -26, 0, -31, -3, 10,
					-- layer=2 filter=35 channel=16
					-26, -54, -41, -5, -42, -60, -31, -13, -38,
					-- layer=2 filter=35 channel=17
					-2, -22, 13, 25, 0, 19, 13, 56, 23,
					-- layer=2 filter=35 channel=18
					51, 4, 44, -47, 4, 4, -12, 0, 71,
					-- layer=2 filter=35 channel=19
					-5, 29, 18, 17, 28, 6, 41, -4, -20,
					-- layer=2 filter=35 channel=20
					30, 17, 4, 17, 18, -9, 17, 25, 13,
					-- layer=2 filter=35 channel=21
					14, 22, 21, -11, 4, 11, -3, -14, 9,
					-- layer=2 filter=35 channel=22
					-9, -15, -16, 12, 8, 26, 17, 27, 21,
					-- layer=2 filter=35 channel=23
					9, 30, -15, 24, -11, -3, 33, -27, -37,
					-- layer=2 filter=35 channel=24
					99, 61, 71, 45, 76, 105, 91, 34, 17,
					-- layer=2 filter=35 channel=25
					-6, -39, -67, -18, -65, -36, 4, -34, -7,
					-- layer=2 filter=35 channel=26
					-10, 5, -13, 5, 22, 28, 20, 60, 36,
					-- layer=2 filter=35 channel=27
					1, -5, -2, 34, -7, -6, 47, 40, 12,
					-- layer=2 filter=35 channel=28
					17, 11, 20, 2, 1, 26, -34, -14, 35,
					-- layer=2 filter=35 channel=29
					7, 0, -7, 17, 38, 21, 65, 33, 3,
					-- layer=2 filter=35 channel=30
					20, 20, 17, 18, 14, -22, 13, -16, -6,
					-- layer=2 filter=35 channel=31
					-17, -11, 6, 0, -19, 15, 6, 39, 26,
					-- layer=2 filter=36 channel=0
					-1, 8, -16, -13, 14, -13, 20, 22, -2,
					-- layer=2 filter=36 channel=1
					8, -2, -41, -50, -10, -21, -35, -64, -64,
					-- layer=2 filter=36 channel=2
					-1, 75, 25, 52, 71, 12, 32, 7, 0,
					-- layer=2 filter=36 channel=3
					-4, -15, 31, 9, -38, -22, 45, 5, 38,
					-- layer=2 filter=36 channel=4
					44, 36, 61, -2, -11, -26, 74, 5, 60,
					-- layer=2 filter=36 channel=5
					12, 0, 6, 50, 29, -22, 0, -5, -47,
					-- layer=2 filter=36 channel=6
					-44, -25, -13, -40, 2, 22, -61, -10, -3,
					-- layer=2 filter=36 channel=7
					-24, 17, 11, -6, -47, -20, 2, 13, 31,
					-- layer=2 filter=36 channel=8
					27, 20, 10, 1, 0, 36, 2, -6, 26,
					-- layer=2 filter=36 channel=9
					-33, -11, -28, 31, 55, -2, -39, -6, 10,
					-- layer=2 filter=36 channel=10
					17, -20, -9, -5, 6, 30, -12, 28, 31,
					-- layer=2 filter=36 channel=11
					-33, -14, 7, 23, -49, 15, -30, -55, -31,
					-- layer=2 filter=36 channel=12
					-94, -60, -35, -50, -54, -57, -6, -33, -43,
					-- layer=2 filter=36 channel=13
					2, 4, -16, 18, -26, -14, -40, -16, -42,
					-- layer=2 filter=36 channel=14
					0, -41, -1, -23, -5, -20, -7, -24, -22,
					-- layer=2 filter=36 channel=15
					-111, -107, -41, -65, -58, -38, 18, 3, -1,
					-- layer=2 filter=36 channel=16
					-35, -71, -99, -30, 14, 22, 22, 3, -33,
					-- layer=2 filter=36 channel=17
					-68, -19, -51, -14, -33, 19, -27, 21, 12,
					-- layer=2 filter=36 channel=18
					38, 27, 42, 55, -1, 12, 36, -8, 41,
					-- layer=2 filter=36 channel=19
					-20, -27, -1, -1, -6, -4, -13, -14, 23,
					-- layer=2 filter=36 channel=20
					9, 5, -14, 13, -6, 9, 15, 1, 29,
					-- layer=2 filter=36 channel=21
					-23, -24, -2, 7, 10, 12, -17, -21, -2,
					-- layer=2 filter=36 channel=22
					-91, -60, -36, -13, -33, -39, -5, -24, -4,
					-- layer=2 filter=36 channel=23
					-14, -23, -1, 22, 17, 25, 12, 7, 41,
					-- layer=2 filter=36 channel=24
					-30, 28, -1, -58, -22, -46, -37, 36, 16,
					-- layer=2 filter=36 channel=25
					41, 3, 0, 20, 37, 51, 32, 49, 30,
					-- layer=2 filter=36 channel=26
					-1, -9, -20, 24, -3, -35, -3, -23, 1,
					-- layer=2 filter=36 channel=27
					-71, -12, -47, -58, -25, -15, -78, 23, -36,
					-- layer=2 filter=36 channel=28
					39, 46, 37, 17, -14, -7, 47, 28, 4,
					-- layer=2 filter=36 channel=29
					-23, -46, -79, -24, -17, 19, -28, 11, 23,
					-- layer=2 filter=36 channel=30
					17, 3, 5, 25, 2, 27, 13, 25, 21,
					-- layer=2 filter=36 channel=31
					12, -18, -30, -13, -86, -51, -36, -15, -18,
					-- layer=2 filter=37 channel=0
					-11, -15, -12, 2, 5, -9, -4, 16, 13,
					-- layer=2 filter=37 channel=1
					15, 1, -25, -23, 9, -26, -31, -14, -27,
					-- layer=2 filter=37 channel=2
					15, 26, 54, 5, 45, 42, 17, 54, 22,
					-- layer=2 filter=37 channel=3
					95, 18, -27, 23, 21, -24, -26, 13, 20,
					-- layer=2 filter=37 channel=4
					43, 37, 5, 30, 49, -12, 1, -7, 16,
					-- layer=2 filter=37 channel=5
					-79, -84, 2, -48, -24, 26, -55, -25, -10,
					-- layer=2 filter=37 channel=6
					-22, -53, -47, -28, -22, 11, 37, 12, 39,
					-- layer=2 filter=37 channel=7
					-11, 25, 0, 54, 9, 58, 44, 10, 13,
					-- layer=2 filter=37 channel=8
					-34, 8, -42, -87, -7, -17, -51, -10, -12,
					-- layer=2 filter=37 channel=9
					-66, -52, -34, -18, -22, -37, 8, -15, -26,
					-- layer=2 filter=37 channel=10
					-18, -29, 17, -42, -6, 19, -10, -33, -9,
					-- layer=2 filter=37 channel=11
					-12, -11, 29, -14, -69, -5, -54, -45, -48,
					-- layer=2 filter=37 channel=12
					-47, -22, -13, -9, 22, 3, -6, 17, 32,
					-- layer=2 filter=37 channel=13
					28, 17, -21, 89, 31, 13, 47, -5, -14,
					-- layer=2 filter=37 channel=14
					-86, -37, -26, -57, -3, 2, 2, -36, -33,
					-- layer=2 filter=37 channel=15
					-9, 10, 0, -15, 7, 17, 1, 35, 2,
					-- layer=2 filter=37 channel=16
					66, -11, 3, 72, -7, -59, 22, -65, -6,
					-- layer=2 filter=37 channel=17
					-42, -28, -14, -17, -20, 16, 7, 17, 36,
					-- layer=2 filter=37 channel=18
					-33, -64, -47, -11, -21, -57, 17, -29, 11,
					-- layer=2 filter=37 channel=19
					-19, 12, 21, -16, 2, 16, 1, 2, 33,
					-- layer=2 filter=37 channel=20
					-15, -2, 3, -2, -7, -7, -3, 7, -26,
					-- layer=2 filter=37 channel=21
					-5, 35, 4, -2, 32, 27, -4, -18, -24,
					-- layer=2 filter=37 channel=22
					-20, -5, 19, -1, -26, 19, 7, 19, 54,
					-- layer=2 filter=37 channel=23
					-18, -41, 24, -14, 0, -11, 14, 14, 45,
					-- layer=2 filter=37 channel=24
					-7, 52, 44, -44, 20, 47, -39, -52, -23,
					-- layer=2 filter=37 channel=25
					55, 32, 18, 47, 19, 6, 46, 6, 4,
					-- layer=2 filter=37 channel=26
					-19, -5, -13, 46, 37, -4, -7, 12, 7,
					-- layer=2 filter=37 channel=27
					-60, -36, -47, 4, -25, 22, 0, 30, 32,
					-- layer=2 filter=37 channel=28
					18, -32, -45, 13, -3, -50, -32, 32, -23,
					-- layer=2 filter=37 channel=29
					-70, -45, 26, -25, -25, -6, 4, -11, 51,
					-- layer=2 filter=37 channel=30
					-21, 20, 25, 17, 7, 18, 10, 1, 4,
					-- layer=2 filter=37 channel=31
					-16, 12, -4, 12, 22, 19, 25, 35, -4,
					-- layer=2 filter=38 channel=0
					-20, -10, -23, -21, -10, -33, -7, 16, 3,
					-- layer=2 filter=38 channel=1
					-12, -10, 21, -10, 3, 29, -78, 2, 16,
					-- layer=2 filter=38 channel=2
					-33, -19, -21, 23, -6, 9, -1, 55, 24,
					-- layer=2 filter=38 channel=3
					-2, 31, 40, 1, 9, -23, 13, -8, -46,
					-- layer=2 filter=38 channel=4
					-44, -49, -44, 9, 44, 6, 36, 77, 0,
					-- layer=2 filter=38 channel=5
					0, -2, -3, 35, 16, -35, 52, 30, -12,
					-- layer=2 filter=38 channel=6
					3, 15, 35, -16, 18, 9, 9, 0, 14,
					-- layer=2 filter=38 channel=7
					-31, 2, 32, -14, -16, 12, 26, 7, 3,
					-- layer=2 filter=38 channel=8
					19, 36, -13, 53, 37, 2, 18, 0, -39,
					-- layer=2 filter=38 channel=9
					-82, 20, 22, -77, 54, 49, -82, 10, 70,
					-- layer=2 filter=38 channel=10
					3, 19, -12, 33, 6, -19, -6, -15, -38,
					-- layer=2 filter=38 channel=11
					-29, -4, 0, -55, -5, 11, -10, 29, 0,
					-- layer=2 filter=38 channel=12
					0, 9, -8, -24, -9, -10, 21, -47, -34,
					-- layer=2 filter=38 channel=13
					-69, 25, 21, -63, 32, 6, -101, 5, 57,
					-- layer=2 filter=38 channel=14
					4, 7, -37, 54, 11, -6, 43, 57, -17,
					-- layer=2 filter=38 channel=15
					0, -11, 28, -14, 9, 32, 13, -4, 18,
					-- layer=2 filter=38 channel=16
					-6, 74, 74, 25, 69, 82, -62, -5, 22,
					-- layer=2 filter=38 channel=17
					-58, -12, 45, -33, 38, 29, -38, 23, 23,
					-- layer=2 filter=38 channel=18
					57, 5, -23, -1, -50, 20, 5, 10, 23,
					-- layer=2 filter=38 channel=19
					39, -30, -38, 44, -14, -46, 42, 0, -44,
					-- layer=2 filter=38 channel=20
					55, -17, -37, 44, -15, -47, 63, 0, -39,
					-- layer=2 filter=38 channel=21
					47, -49, -48, 16, -10, -55, 44, -11, -27,
					-- layer=2 filter=38 channel=22
					-18, 24, 6, -52, 14, 45, -31, -24, 43,
					-- layer=2 filter=38 channel=23
					2, -30, -52, 48, 2, -36, 28, 3, -84,
					-- layer=2 filter=38 channel=24
					63, 49, 1, 21, 26, 7, 25, -15, 13,
					-- layer=2 filter=38 channel=25
					-44, 13, -3, 10, 21, -12, -34, -5, 1,
					-- layer=2 filter=38 channel=26
					-97, -14, 51, -48, 35, 75, -74, 12, 63,
					-- layer=2 filter=38 channel=27
					-6, -13, -9, -23, -8, 5, 20, -11, 18,
					-- layer=2 filter=38 channel=28
					-23, 28, -2, 15, 22, 21, -13, -8, -29,
					-- layer=2 filter=38 channel=29
					-51, -10, 11, -53, -4, 28, -24, -17, 26,
					-- layer=2 filter=38 channel=30
					43, -11, -21, 35, -23, -35, 80, 10, -52,
					-- layer=2 filter=38 channel=31
					-36, -1, 59, -56, 0, 46, -63, -10, 21,
					-- layer=2 filter=39 channel=0
					20, 2, -10, -28, 1, -24, 5, -15, -22,
					-- layer=2 filter=39 channel=1
					35, 10, 39, 47, -4, -19, 3, -28, -54,
					-- layer=2 filter=39 channel=2
					-23, -16, -9, 13, -58, -46, 51, 22, -7,
					-- layer=2 filter=39 channel=3
					-49, -51, 22, 32, -55, -69, 45, -53, -18,
					-- layer=2 filter=39 channel=4
					-13, -57, -82, 21, -57, -64, 95, 37, -13,
					-- layer=2 filter=39 channel=5
					51, -5, -24, 16, -10, -17, -25, -13, -42,
					-- layer=2 filter=39 channel=6
					55, 8, -14, 13, 0, -22, 5, 7, -20,
					-- layer=2 filter=39 channel=7
					-24, 17, 82, -55, -16, 17, -50, -19, 27,
					-- layer=2 filter=39 channel=8
					14, 28, -19, 31, -5, -45, 4, -1, -44,
					-- layer=2 filter=39 channel=9
					14, -64, -42, 40, -4, -11, 21, -3, -63,
					-- layer=2 filter=39 channel=10
					15, 1, 10, -4, -17, 0, -21, 11, -2,
					-- layer=2 filter=39 channel=11
					-19, -21, 42, -31, -37, -13, -23, -66, -39,
					-- layer=2 filter=39 channel=12
					49, -29, 9, 11, -24, -50, -28, -31, -51,
					-- layer=2 filter=39 channel=13
					2, -23, 38, 76, 19, 8, 31, 10, -19,
					-- layer=2 filter=39 channel=14
					3, 5, 7, 4, -32, -32, -46, -35, -58,
					-- layer=2 filter=39 channel=15
					49, -13, -5, 43, 3, -9, 33, 39, 13,
					-- layer=2 filter=39 channel=16
					8, 41, 15, 67, 81, 75, 61, 20, -7,
					-- layer=2 filter=39 channel=17
					16, -16, 9, 18, 11, -35, 8, -5, -57,
					-- layer=2 filter=39 channel=18
					-52, -31, -27, 8, 5, 6, 12, 33, -15,
					-- layer=2 filter=39 channel=19
					1, 3, 10, -10, -4, 2, -12, 11, 8,
					-- layer=2 filter=39 channel=20
					-10, -2, 24, -19, 23, 15, -11, 6, 21,
					-- layer=2 filter=39 channel=21
					-7, 17, 3, -2, -24, 19, 12, 62, 17,
					-- layer=2 filter=39 channel=22
					34, 2, -46, 54, -5, -36, -12, -5, -60,
					-- layer=2 filter=39 channel=23
					20, -39, -57, 0, 1, -1, 8, 4, 22,
					-- layer=2 filter=39 channel=24
					75, 112, 77, 15, 74, 62, -18, 21, 51,
					-- layer=2 filter=39 channel=25
					-20, 11, 2, 38, -4, 25, 39, 7, 30,
					-- layer=2 filter=39 channel=26
					27, -45, -37, 46, 7, -6, 46, -8, -40,
					-- layer=2 filter=39 channel=27
					12, 45, -5, 6, 0, 4, -26, 0, -42,
					-- layer=2 filter=39 channel=28
					-32, -79, -10, -14, -40, -77, 57, -8, -30,
					-- layer=2 filter=39 channel=29
					23, 14, 14, -33, -8, 29, -47, -24, -60,
					-- layer=2 filter=39 channel=30
					-15, -32, 15, -26, -9, 22, -65, -33, 1,
					-- layer=2 filter=39 channel=31
					30, -31, -25, 51, -2, -25, 17, 49, -20,
					-- layer=2 filter=40 channel=0
					-1, 25, -5, -5, 20, 31, 28, 28, 15,
					-- layer=2 filter=40 channel=1
					-67, -64, 57, -55, -18, 41, 8, 8, -10,
					-- layer=2 filter=40 channel=2
					-88, -93, -53, -67, -86, -97, 3, -30, 8,
					-- layer=2 filter=40 channel=3
					17, 49, 65, 15, 32, 12, 21, 31, 14,
					-- layer=2 filter=40 channel=4
					-38, -131, -80, -100, -66, -18, -12, -2, -1,
					-- layer=2 filter=40 channel=5
					65, 51, 27, 24, 31, 16, 7, -24, 5,
					-- layer=2 filter=40 channel=6
					-12, -23, -7, -12, -7, 0, -3, 24, 30,
					-- layer=2 filter=40 channel=7
					-10, 3, 1, 9, -39, -29, -29, 9, -21,
					-- layer=2 filter=40 channel=8
					-35, -34, 61, -31, 0, 32, -33, -7, 13,
					-- layer=2 filter=40 channel=9
					-15, -6, 21, -23, -2, 12, -21, 21, 34,
					-- layer=2 filter=40 channel=10
					-49, -41, -8, -7, -16, 18, 17, -5, 8,
					-- layer=2 filter=40 channel=11
					16, 9, -1, 4, 11, -59, 8, -8, -16,
					-- layer=2 filter=40 channel=12
					45, 12, 8, 23, 31, 33, 11, 13, 29,
					-- layer=2 filter=40 channel=13
					-65, -26, 30, -47, 3, 23, -29, 19, 11,
					-- layer=2 filter=40 channel=14
					51, 44, 21, 17, 40, -12, 24, -7, 15,
					-- layer=2 filter=40 channel=15
					22, 12, 11, -27, 36, -7, 3, 40, 12,
					-- layer=2 filter=40 channel=16
					-57, 43, 68, 2, 52, 72, 23, 85, 57,
					-- layer=2 filter=40 channel=17
					-34, -38, -4, 0, -17, 3, 30, 3, 36,
					-- layer=2 filter=40 channel=18
					-4, 45, -13, -6, 34, -6, -14, 27, -15,
					-- layer=2 filter=40 channel=19
					30, 36, -10, 20, 14, 12, 25, 11, 28,
					-- layer=2 filter=40 channel=20
					3, 26, -33, 28, -5, -29, -15, 15, -39,
					-- layer=2 filter=40 channel=21
					4, 0, -18, 42, 24, -11, 7, 3, -8,
					-- layer=2 filter=40 channel=22
					11, -12, 45, -28, 38, 3, -16, 30, 7,
					-- layer=2 filter=40 channel=23
					11, 4, -37, 12, 17, 3, 26, -12, 21,
					-- layer=2 filter=40 channel=24
					10, -78, 11, -17, -8, -39, -20, 41, 1,
					-- layer=2 filter=40 channel=25
					-58, -42, 22, -7, -17, 52, 58, 41, 9,
					-- layer=2 filter=40 channel=26
					-32, 18, 23, -43, 6, 21, -25, 7, 37,
					-- layer=2 filter=40 channel=27
					-1, 17, 20, 13, 28, 21, -7, -8, 1,
					-- layer=2 filter=40 channel=28
					-15, -24, 26, 6, 12, 12, 15, 11, 43,
					-- layer=2 filter=40 channel=29
					-17, 9, 6, -6, -9, 11, -18, 2, -3,
					-- layer=2 filter=40 channel=30
					0, 22, -32, 23, 4, -12, 20, -8, -20,
					-- layer=2 filter=40 channel=31
					-14, -16, 2, -27, 16, 17, -26, 0, 4,
					-- layer=2 filter=41 channel=0
					15, -10, -7, 6, -25, -23, -23, -17, -7,
					-- layer=2 filter=41 channel=1
					-33, -4, 50, -5, 18, 22, 31, 60, -16,
					-- layer=2 filter=41 channel=2
					-52, -24, -31, -26, -47, 9, -32, -67, -6,
					-- layer=2 filter=41 channel=3
					-18, 53, 18, 19, 82, 83, 50, 30, 56,
					-- layer=2 filter=41 channel=4
					-39, 34, -1, -11, 2, 57, -35, -9, -24,
					-- layer=2 filter=41 channel=5
					16, 30, -11, 21, 0, -11, -38, -11, -12,
					-- layer=2 filter=41 channel=6
					-23, -17, 32, 22, 33, 44, 5, -1, 69,
					-- layer=2 filter=41 channel=7
					-7, 21, 42, -25, -17, -18, 15, -34, 7,
					-- layer=2 filter=41 channel=8
					-64, -24, 21, -92, 25, 40, -59, 54, -31,
					-- layer=2 filter=41 channel=9
					34, -18, -21, 19, -30, -67, -1, 3, -18,
					-- layer=2 filter=41 channel=10
					-59, -34, 51, -85, 9, 37, -18, -31, -47,
					-- layer=2 filter=41 channel=11
					-13, -35, -41, -68, -79, -78, -16, -82, -105,
					-- layer=2 filter=41 channel=12
					28, 1, 11, 0, -12, -30, 30, 24, 12,
					-- layer=2 filter=41 channel=13
					1, -9, -14, 29, 17, -33, 39, -8, -2,
					-- layer=2 filter=41 channel=14
					-19, 5, -2, -25, -35, 2, -20, -51, -7,
					-- layer=2 filter=41 channel=15
					35, -9, -29, 32, -25, -17, 13, 9, -18,
					-- layer=2 filter=41 channel=16
					-28, -23, -44, -14, 2, 52, 16, 11, 19,
					-- layer=2 filter=41 channel=17
					-9, -19, -4, 20, 8, 23, 40, 4, 8,
					-- layer=2 filter=41 channel=18
					37, 52, 11, 43, 60, 23, 47, 3, -45,
					-- layer=2 filter=41 channel=19
					37, 32, 37, 18, -4, 14, -22, 18, 39,
					-- layer=2 filter=41 channel=20
					22, 19, -33, -7, -19, -4, -47, -29, -25,
					-- layer=2 filter=41 channel=21
					2, 22, 27, 18, 11, 15, 19, 10, 11,
					-- layer=2 filter=41 channel=22
					1, 7, 33, 38, 27, 6, 26, 46, 14,
					-- layer=2 filter=41 channel=23
					-71, -9, 24, -41, 21, 11, -13, 3, 46,
					-- layer=2 filter=41 channel=24
					-45, -60, -14, -61, -16, -17, -82, -85, -57,
					-- layer=2 filter=41 channel=25
					-57, 9, 40, 3, 48, 39, 16, 29, -3,
					-- layer=2 filter=41 channel=26
					37, -22, -40, 45, 7, -54, 15, 0, -19,
					-- layer=2 filter=41 channel=27
					16, -10, -3, 9, -2, -31, -5, 8, -20,
					-- layer=2 filter=41 channel=28
					3, -3, -6, 22, 96, 72, 0, 21, 43,
					-- layer=2 filter=41 channel=29
					11, -41, -32, 4, -72, -68, -27, -42, -18,
					-- layer=2 filter=41 channel=30
					8, 21, -8, -44, 6, 9, -22, 6, -16,
					-- layer=2 filter=41 channel=31
					9, 18, 3, 26, 2, -5, 34, 7, -15,
					-- layer=2 filter=42 channel=0
					-1, 9, -24, 8, -20, -8, 0, 19, 25,
					-- layer=2 filter=42 channel=1
					-21, 42, 1, -23, -66, -28, 54, 30, -21,
					-- layer=2 filter=42 channel=2
					23, 55, 66, 19, 71, 77, 17, 65, 40,
					-- layer=2 filter=42 channel=3
					40, 14, -24, 69, 24, 8, -7, 23, 34,
					-- layer=2 filter=42 channel=4
					56, 75, 26, 74, 55, 62, 23, 46, 46,
					-- layer=2 filter=42 channel=5
					31, 38, 44, 33, 62, 53, -25, -4, -1,
					-- layer=2 filter=42 channel=6
					47, 22, 16, -55, -4, -26, -11, 4, 11,
					-- layer=2 filter=42 channel=7
					-16, 11, 11, -56, -38, -57, -16, -13, -16,
					-- layer=2 filter=42 channel=8
					10, 9, 0, -39, -33, 0, 18, 3, 25,
					-- layer=2 filter=42 channel=9
					35, 46, 24, -14, 19, -9, -22, -7, 10,
					-- layer=2 filter=42 channel=10
					0, 38, -47, -15, -16, -22, 8, 27, 14,
					-- layer=2 filter=42 channel=11
					29, -28, -43, 33, 6, -23, 39, -7, -5,
					-- layer=2 filter=42 channel=12
					34, -10, -5, -16, 0, -20, -33, -31, -15,
					-- layer=2 filter=42 channel=13
					-40, -8, -12, -70, -69, -55, -4, 42, 41,
					-- layer=2 filter=42 channel=14
					-4, 36, -15, 7, 35, 11, -37, -57, -30,
					-- layer=2 filter=42 channel=15
					52, 17, -11, 34, 13, 6, -17, 0, -61,
					-- layer=2 filter=42 channel=16
					0, 8, 41, -15, 10, -12, 23, 43, -2,
					-- layer=2 filter=42 channel=17
					25, -10, -21, -11, -2, 0, 10, 7, -38,
					-- layer=2 filter=42 channel=18
					-11, -36, -9, 18, -60, 14, -3, -5, 4,
					-- layer=2 filter=42 channel=19
					-3, 7, -32, 17, -19, 0, -46, -32, -17,
					-- layer=2 filter=42 channel=20
					-21, -37, -16, 6, -18, 24, -25, -17, -36,
					-- layer=2 filter=42 channel=21
					36, -8, -5, 14, 23, 13, -28, -35, -52,
					-- layer=2 filter=42 channel=22
					51, 35, 12, -3, -4, -15, -53, -13, -31,
					-- layer=2 filter=42 channel=23
					-7, -44, -52, 14, -7, -23, -7, 11, 44,
					-- layer=2 filter=42 channel=24
					61, 64, 18, 18, 83, 73, -27, -20, 47,
					-- layer=2 filter=42 channel=25
					-36, 24, -21, -40, -40, -41, -29, 12, -3,
					-- layer=2 filter=42 channel=26
					3, 12, -10, -1, -3, -30, -33, -21, -15,
					-- layer=2 filter=42 channel=27
					36, 49, -35, -38, 26, -22, -13, -15, -8,
					-- layer=2 filter=42 channel=28
					57, 26, -8, 57, 87, 21, -28, 41, -25,
					-- layer=2 filter=42 channel=29
					-32, -54, -58, -36, -2, -43, -26, -38, -37,
					-- layer=2 filter=42 channel=30
					-10, -43, -15, 5, 0, -18, 6, -1, 4,
					-- layer=2 filter=42 channel=31
					27, -6, 18, -1, 10, -18, 9, 0, -18,
					-- layer=2 filter=43 channel=0
					4, 19, 36, 34, 16, 9, 13, 19, -7,
					-- layer=2 filter=43 channel=1
					-8, -44, -2, 20, 19, 34, 54, 54, 61,
					-- layer=2 filter=43 channel=2
					0, 33, -12, 41, 76, 39, 86, 101, 81,
					-- layer=2 filter=43 channel=3
					-1, -35, -9, 18, -7, -42, -61, -3, 24,
					-- layer=2 filter=43 channel=4
					-4, 20, -7, 82, 108, 51, 68, 64, 87,
					-- layer=2 filter=43 channel=5
					47, 72, 66, -35, 17, 0, -125, -104, -71,
					-- layer=2 filter=43 channel=6
					8, 22, 20, 0, -54, -81, -62, -59, -32,
					-- layer=2 filter=43 channel=7
					-5, -31, -27, 44, -42, -13, 12, 16, 16,
					-- layer=2 filter=43 channel=8
					10, 23, 14, -21, -7, 19, 3, 25, 32,
					-- layer=2 filter=43 channel=9
					-10, 5, -8, 1, -8, 12, -5, -8, -38,
					-- layer=2 filter=43 channel=10
					27, 9, 35, 13, 13, 30, 20, 4, 1,
					-- layer=2 filter=43 channel=11
					18, 32, 39, -3, -12, -33, -61, 0, -29,
					-- layer=2 filter=43 channel=12
					14, 41, 23, -18, 30, -37, -53, 4, -25,
					-- layer=2 filter=43 channel=13
					-1, 3, -29, -16, -58, -16, -15, 22, 19,
					-- layer=2 filter=43 channel=14
					31, 39, 35, -54, -50, -5, -116, -70, -44,
					-- layer=2 filter=43 channel=15
					-9, 13, 26, -32, 19, 11, -17, -22, -14,
					-- layer=2 filter=43 channel=16
					54, 71, 64, 11, 40, 9, -3, 0, -34,
					-- layer=2 filter=43 channel=17
					50, 28, 6, -6, -2, -25, -26, 6, 13,
					-- layer=2 filter=43 channel=18
					56, 66, 75, -5, 6, -11, -72, -95, -27,
					-- layer=2 filter=43 channel=19
					17, 48, 35, -10, 24, 19, -23, -65, -56,
					-- layer=2 filter=43 channel=20
					16, 20, 28, -14, -5, -4, -43, -95, -34,
					-- layer=2 filter=43 channel=21
					42, 57, 24, -11, 18, 24, -67, -41, -25,
					-- layer=2 filter=43 channel=22
					-1, 4, 20, -4, -10, -6, -10, -2, -24,
					-- layer=2 filter=43 channel=23
					39, 51, 68, -16, 15, 0, -99, -106, -63,
					-- layer=2 filter=43 channel=24
					-18, -21, -52, -36, -42, 0, 18, 6, 15,
					-- layer=2 filter=43 channel=25
					0, -16, -3, 26, -21, 27, 3, -18, -14,
					-- layer=2 filter=43 channel=26
					14, 10, -10, -25, 1, -14, 4, -12, -31,
					-- layer=2 filter=43 channel=27
					1, -9, 12, -35, -12, 18, -7, -25, -18,
					-- layer=2 filter=43 channel=28
					-22, -36, -57, -10, 1, -32, -58, -26, 33,
					-- layer=2 filter=43 channel=29
					1, 5, -6, -52, -4, -45, 11, 27, -14,
					-- layer=2 filter=43 channel=30
					15, 22, 32, -22, -18, -29, -57, -54, -51,
					-- layer=2 filter=43 channel=31
					28, 37, 33, -14, 17, 5, -15, 20, -20,
					-- layer=2 filter=44 channel=0
					-17, 3, 5, -2, 14, 1, 18, 14, 26,
					-- layer=2 filter=44 channel=1
					-27, -20, -18, -27, -37, -22, -9, -29, -45,
					-- layer=2 filter=44 channel=2
					0, 69, 61, 20, 81, 112, -9, -13, 21,
					-- layer=2 filter=44 channel=3
					-2, 17, -2, -26, 71, 41, -39, 41, 19,
					-- layer=2 filter=44 channel=4
					62, 59, -4, 32, 68, 69, -37, 33, -1,
					-- layer=2 filter=44 channel=5
					7, 1, 2, 12, 3, 19, 41, 30, 18,
					-- layer=2 filter=44 channel=6
					-26, 14, -25, -9, 8, -35, -15, 5, 12,
					-- layer=2 filter=44 channel=7
					1, 0, -8, -21, -7, -10, 11, 12, 25,
					-- layer=2 filter=44 channel=8
					16, 49, 33, 10, -10, 1, -6, -37, 8,
					-- layer=2 filter=44 channel=9
					-16, -30, -11, 16, -10, 1, 37, -18, -6,
					-- layer=2 filter=44 channel=10
					-21, 10, 26, 7, 0, 10, -55, -72, -52,
					-- layer=2 filter=44 channel=11
					5, 2, 25, 20, 37, 7, -9, 29, -50,
					-- layer=2 filter=44 channel=12
					-12, -14, -12, 23, -6, -33, 32, 42, 7,
					-- layer=2 filter=44 channel=13
					11, -30, -21, 6, 5, 17, 40, -2, -5,
					-- layer=2 filter=44 channel=14
					0, 15, 32, 46, 26, 38, 14, 49, -3,
					-- layer=2 filter=44 channel=15
					24, -50, -43, 25, -41, -41, 79, 54, 52,
					-- layer=2 filter=44 channel=16
					-14, -6, -41, -29, -26, -39, 76, 36, 43,
					-- layer=2 filter=44 channel=17
					-36, -36, -46, -26, -27, -9, 5, 36, 3,
					-- layer=2 filter=44 channel=18
					12, 22, 11, 40, 26, 22, 9, 51, 22,
					-- layer=2 filter=44 channel=19
					-24, -15, -21, 16, -2, -34, 3, 0, 26,
					-- layer=2 filter=44 channel=20
					9, -33, 4, -28, -21, -47, 30, 31, -15,
					-- layer=2 filter=44 channel=21
					-8, -28, -9, 8, -3, -23, 0, 23, -3,
					-- layer=2 filter=44 channel=22
					-39, -52, -26, 8, 0, 25, 40, 49, 43,
					-- layer=2 filter=44 channel=23
					12, 35, -20, 5, 5, -21, 1, -20, 3,
					-- layer=2 filter=44 channel=24
					11, 67, 88, 18, 47, 71, -30, -40, 17,
					-- layer=2 filter=44 channel=25
					10, -28, -9, -1, 4, 13, 21, 9, 16,
					-- layer=2 filter=44 channel=26
					-4, -26, -2, -1, -27, -1, 42, 13, 29,
					-- layer=2 filter=44 channel=27
					-28, -39, -49, -11, 4, 7, 41, 27, 34,
					-- layer=2 filter=44 channel=28
					41, 46, -5, -11, 81, 62, -38, 30, 23,
					-- layer=2 filter=44 channel=29
					-15, -5, 18, -15, 4, 10, 26, 9, 42,
					-- layer=2 filter=44 channel=30
					13, 0, -20, -26, -18, -28, 35, 38, 22,
					-- layer=2 filter=44 channel=31
					-25, -35, -21, 3, -27, 0, 30, 36, 5,
					-- layer=2 filter=45 channel=0
					-5, -1, 8, -20, -10, -5, 8, -16, 15,
					-- layer=2 filter=45 channel=1
					-6, -5, 6, 0, -16, -32, 0, 4, 4,
					-- layer=2 filter=45 channel=2
					-24, 6, -9, -17, 0, -20, -9, -1, 16,
					-- layer=2 filter=45 channel=3
					-21, -14, -4, 18, 13, 26, -10, -24, -24,
					-- layer=2 filter=45 channel=4
					12, 2, 6, 30, -3, -5, 12, -17, -7,
					-- layer=2 filter=45 channel=5
					26, 0, 11, -11, 7, -8, -2, -15, -19,
					-- layer=2 filter=45 channel=6
					-11, -23, 7, -38, -27, -20, -28, -21, -23,
					-- layer=2 filter=45 channel=7
					-28, -27, 13, 7, 0, 12, 8, 11, 0,
					-- layer=2 filter=45 channel=8
					-19, -14, -22, -10, -24, -1, -5, -33, 20,
					-- layer=2 filter=45 channel=9
					6, -29, -27, -21, -21, 11, -19, -19, -16,
					-- layer=2 filter=45 channel=10
					-18, 8, -25, -22, -5, 4, -8, -20, 0,
					-- layer=2 filter=45 channel=11
					-24, -13, -19, -6, -24, -13, -14, -13, -21,
					-- layer=2 filter=45 channel=12
					-19, -11, 4, -26, 10, -18, -19, -30, -18,
					-- layer=2 filter=45 channel=13
					-17, -31, -33, 0, 6, 9, -16, -20, 5,
					-- layer=2 filter=45 channel=14
					1, -27, 8, -21, -36, 10, -16, -8, -5,
					-- layer=2 filter=45 channel=15
					-21, 1, 10, -29, 4, -24, 0, 1, -16,
					-- layer=2 filter=45 channel=16
					-26, -5, -18, -6, -12, -10, 5, 13, -3,
					-- layer=2 filter=45 channel=17
					-35, -39, -12, -2, 1, 0, 12, -27, -8,
					-- layer=2 filter=45 channel=18
					-11, -4, 3, -15, -16, -15, 11, 12, 0,
					-- layer=2 filter=45 channel=19
					-27, -31, -1, -2, 0, -20, -18, 3, -16,
					-- layer=2 filter=45 channel=20
					15, -25, 8, -11, 6, -20, 0, -28, 13,
					-- layer=2 filter=45 channel=21
					10, -6, 7, -29, -31, -23, -22, -24, -18,
					-- layer=2 filter=45 channel=22
					-6, -30, 1, -33, 5, 5, -16, -4, -11,
					-- layer=2 filter=45 channel=23
					-28, 3, 3, -20, -27, 10, -1, -25, -22,
					-- layer=2 filter=45 channel=24
					-10, -26, -1, -23, -23, -12, -26, 13, -8,
					-- layer=2 filter=45 channel=25
					-25, -19, -11, 8, 0, -23, -17, -5, 7,
					-- layer=2 filter=45 channel=26
					-20, -23, -25, 4, -18, -4, 1, -19, -4,
					-- layer=2 filter=45 channel=27
					-1, -23, 10, 7, -4, -30, 2, 2, -9,
					-- layer=2 filter=45 channel=28
					-13, -11, 14, 2, -25, 2, 1, 8, -30,
					-- layer=2 filter=45 channel=29
					-5, 0, -8, 5, -17, -9, 0, -6, -14,
					-- layer=2 filter=45 channel=30
					-22, 10, 2, 0, -19, -20, 9, 9, -5,
					-- layer=2 filter=45 channel=31
					10, -14, -4, 8, -7, -15, -1, 22, 8,
					-- layer=2 filter=46 channel=0
					-10, -20, 0, 8, -24, 7, 10, 11, -21,
					-- layer=2 filter=46 channel=1
					-17, -14, -45, 20, -8, -19, 21, 1, -37,
					-- layer=2 filter=46 channel=2
					24, 10, 10, 60, 49, 16, 47, 55, 43,
					-- layer=2 filter=46 channel=3
					-37, 11, -40, -63, -27, -72, -40, -74, -57,
					-- layer=2 filter=46 channel=4
					-4, -7, 28, 26, 59, 77, 35, 85, 48,
					-- layer=2 filter=46 channel=5
					-6, 34, 23, -22, 10, -5, -16, -34, -3,
					-- layer=2 filter=46 channel=6
					33, 27, 23, -40, -46, -15, -30, -53, -26,
					-- layer=2 filter=46 channel=7
					-4, -25, -19, 22, -1, -8, 11, 11, 5,
					-- layer=2 filter=46 channel=8
					42, 13, 35, -13, 26, -14, -71, -107, -80,
					-- layer=2 filter=46 channel=9
					2, 0, 20, -55, 23, 0, -12, -2, 3,
					-- layer=2 filter=46 channel=10
					-12, -30, 8, -10, -38, -33, -47, -53, -50,
					-- layer=2 filter=46 channel=11
					-9, 16, 0, -5, 12, -7, -60, -22, 29,
					-- layer=2 filter=46 channel=12
					19, 15, -15, -23, 16, 14, -29, 2, 20,
					-- layer=2 filter=46 channel=13
					-52, 6, -4, -5, 15, 15, 21, 22, 34,
					-- layer=2 filter=46 channel=14
					27, 17, 25, -39, 1, 0, -88, -85, -48,
					-- layer=2 filter=46 channel=15
					-14, 11, -48, 16, 48, 12, 33, 68, 53,
					-- layer=2 filter=46 channel=16
					-23, 1, 13, -7, 7, 26, 2, 33, 20,
					-- layer=2 filter=46 channel=17
					6, 25, 31, -17, -17, -12, -73, -33, -23,
					-- layer=2 filter=46 channel=18
					-42, -19, -67, -63, -74, -63, -43, 2, -30,
					-- layer=2 filter=46 channel=19
					14, 14, 5, 4, -16, 8, 5, 25, 14,
					-- layer=2 filter=46 channel=20
					-29, -18, -42, 39, -11, -36, 59, 25, -8,
					-- layer=2 filter=46 channel=21
					-4, -16, -26, 21, 21, -21, 35, 25, 6,
					-- layer=2 filter=46 channel=22
					16, 34, 21, -18, 5, 10, -44, -52, -35,
					-- layer=2 filter=46 channel=23
					29, 22, 39, -38, -4, 7, -99, -67, -27,
					-- layer=2 filter=46 channel=24
					-20, 50, -18, -48, -52, -39, -5, -102, -50,
					-- layer=2 filter=46 channel=25
					21, 5, 24, 32, 30, -3, 39, 31, 7,
					-- layer=2 filter=46 channel=26
					-25, 1, 35, -14, -3, 21, -8, 21, 23,
					-- layer=2 filter=46 channel=27
					10, 9, 3, -29, -18, 12, 14, -32, -5,
					-- layer=2 filter=46 channel=28
					-26, -1, 9, -63, -72, -52, -59, -55, -20,
					-- layer=2 filter=46 channel=29
					-34, -14, 23, -21, -9, 1, -66, -43, -5,
					-- layer=2 filter=46 channel=30
					7, 11, 5, 25, 33, -19, 57, 53, 18,
					-- layer=2 filter=46 channel=31
					-13, 11, 26, 4, 23, 47, -40, -4, -9,
					-- layer=2 filter=47 channel=0
					-2, 12, 15, 13, 1, 18, 36, -1, -5,
					-- layer=2 filter=47 channel=1
					-9, -23, -11, -55, -104, -48, -71, -118, -34,
					-- layer=2 filter=47 channel=2
					-16, 9, 12, 51, 53, 78, 67, 85, 38,
					-- layer=2 filter=47 channel=3
					38, 89, 38, 52, 67, 49, 44, 24, 8,
					-- layer=2 filter=47 channel=4
					-3, -20, -30, 42, 38, -26, 49, 24, -6,
					-- layer=2 filter=47 channel=5
					10, 8, -26, 27, 27, 15, 44, 40, 34,
					-- layer=2 filter=47 channel=6
					-17, -28, -51, -2, -9, -19, 37, 0, -1,
					-- layer=2 filter=47 channel=7
					-33, 0, -32, -18, -3, -19, -57, -39, -16,
					-- layer=2 filter=47 channel=8
					57, 10, -1, 26, -12, -4, -5, -10, 0,
					-- layer=2 filter=47 channel=9
					-24, -34, -18, 35, -10, -21, 30, -4, -3,
					-- layer=2 filter=47 channel=10
					22, 6, 16, 27, -19, -31, -20, -15, -15,
					-- layer=2 filter=47 channel=11
					-16, -4, 32, -7, 35, 27, 44, 6, 34,
					-- layer=2 filter=47 channel=12
					-19, -9, 0, 24, 11, 19, 21, 40, 3,
					-- layer=2 filter=47 channel=13
					-4, -52, -25, 26, -49, -31, -21, -49, -31,
					-- layer=2 filter=47 channel=14
					14, -3, 10, 4, 34, 0, 23, 52, -7,
					-- layer=2 filter=47 channel=15
					-1, -2, -27, 18, 24, 18, 11, 6, 10,
					-- layer=2 filter=47 channel=16
					6, -29, -19, 42, -85, -37, -30, -45, -46,
					-- layer=2 filter=47 channel=17
					24, -11, -29, 81, 9, -41, 26, -13, -46,
					-- layer=2 filter=47 channel=18
					-47, -52, -69, -27, -36, -6, -22, -16, -11,
					-- layer=2 filter=47 channel=19
					-36, -15, 20, -35, -22, 23, -16, -11, 22,
					-- layer=2 filter=47 channel=20
					-32, 13, 12, -25, 9, 34, -37, -24, 7,
					-- layer=2 filter=47 channel=21
					-55, -31, 6, -23, 10, 29, -23, 0, 34,
					-- layer=2 filter=47 channel=22
					-18, 0, 5, 52, 2, -32, 53, 5, -15,
					-- layer=2 filter=47 channel=23
					17, -15, -7, -8, 22, -11, 22, 3, 4,
					-- layer=2 filter=47 channel=24
					54, 69, 32, 63, 111, 29, 90, 69, 53,
					-- layer=2 filter=47 channel=25
					1, -30, -14, -31, -27, -5, -46, -82, -45,
					-- layer=2 filter=47 channel=26
					8, -4, -12, 49, -6, -43, 52, -7, -32,
					-- layer=2 filter=47 channel=27
					-38, -25, 20, -37, -32, -2, -31, -14, 27,
					-- layer=2 filter=47 channel=28
					53, 73, 23, 123, 91, 56, 105, 39, 54,
					-- layer=2 filter=47 channel=29
					-42, -36, 17, -2, 5, -24, -27, -26, 15,
					-- layer=2 filter=47 channel=30
					-26, -17, 18, -25, 28, 34, -20, -15, 22,
					-- layer=2 filter=47 channel=31
					-9, 0, -15, 30, -27, -15, 53, -5, -56,
					-- layer=2 filter=48 channel=0
					20, -9, 4, 22, -7, 0, -31, 0, 8,
					-- layer=2 filter=48 channel=1
					63, 30, -67, -41, -7, 38, -16, -40, -7,
					-- layer=2 filter=48 channel=2
					26, 1, -40, 10, 10, 33, -17, -20, 9,
					-- layer=2 filter=48 channel=3
					-44, -33, 1, -47, -16, 16, -54, -10, -16,
					-- layer=2 filter=48 channel=4
					26, 12, 40, 15, -4, 40, -2, 6, -40,
					-- layer=2 filter=48 channel=5
					-23, 25, 11, -9, 14, 20, 24, 35, 21,
					-- layer=2 filter=48 channel=6
					-80, -42, 3, -41, -26, -44, -16, -8, -43,
					-- layer=2 filter=48 channel=7
					-52, -53, -62, -40, 2, -30, -22, -47, 6,
					-- layer=2 filter=48 channel=8
					49, 51, 53, -33, -9, 51, -39, -8, 35,
					-- layer=2 filter=48 channel=9
					-27, -7, -45, -48, -14, -63, -4, -12, -7,
					-- layer=2 filter=48 channel=10
					15, 22, 13, -59, -35, 68, -39, -29, 32,
					-- layer=2 filter=48 channel=11
					-37, -21, -15, -16, -62, 1, 16, -35, -16,
					-- layer=2 filter=48 channel=12
					-41, -50, -22, -35, -97, -2, 3, -53, -59,
					-- layer=2 filter=48 channel=13
					-30, -52, -7, 1, -33, -6, -24, -6, 2,
					-- layer=2 filter=48 channel=14
					-66, 34, 72, -39, -33, 3, -8, -35, -28,
					-- layer=2 filter=48 channel=15
					-46, -12, -41, -6, -38, -100, 23, 22, -51,
					-- layer=2 filter=48 channel=16
					7, 54, -8, -60, 5, 48, -48, 11, 43,
					-- layer=2 filter=48 channel=17
					-13, 14, 11, -76, -14, 40, -4, -15, -9,
					-- layer=2 filter=48 channel=18
					6, 56, 57, 105, 78, 60, 85, 102, 35,
					-- layer=2 filter=48 channel=19
					-32, -6, 0, -38, -60, -79, -37, -54, -86,
					-- layer=2 filter=48 channel=20
					-33, -42, -7, -4, -14, -76, -6, -3, -48,
					-- layer=2 filter=48 channel=21
					4, 13, -4, -9, -22, -28, -5, 24, -37,
					-- layer=2 filter=48 channel=22
					-15, -17, -14, -27, -36, -21, 19, 71, -28,
					-- layer=2 filter=48 channel=23
					1, 46, 61, -48, -18, 35, -43, -37, 28,
					-- layer=2 filter=48 channel=24
					-16, 11, -14, -34, 11, 39, 7, -42, 3,
					-- layer=2 filter=48 channel=25
					33, -23, 12, -23, -7, 10, -33, -31, 21,
					-- layer=2 filter=48 channel=26
					-23, -14, -5, -9, -11, -26, -19, 7, 50,
					-- layer=2 filter=48 channel=27
					-47, -25, -4, -42, -29, -5, -36, 14, -41,
					-- layer=2 filter=48 channel=28
					-42, 20, 40, -8, 14, 58, 3, 17, 41,
					-- layer=2 filter=48 channel=29
					-40, -53, -20, -22, -12, 7, -17, 23, 67,
					-- layer=2 filter=48 channel=30
					-36, -52, 5, 4, -31, -30, 12, -17, -46,
					-- layer=2 filter=48 channel=31
					20, 36, 18, 10, -7, 17, 33, 26, 35,
					-- layer=2 filter=49 channel=0
					18, -4, -4, 12, 20, -16, -16, -14, 25,
					-- layer=2 filter=49 channel=1
					54, 55, -15, 3, 19, 9, -14, -4, 15,
					-- layer=2 filter=49 channel=2
					-50, 21, 10, -4, 65, -5, -26, -5, 9,
					-- layer=2 filter=49 channel=3
					-42, -8, -46, 16, 44, 17, 12, 35, 58,
					-- layer=2 filter=49 channel=4
					-43, -2, 49, 30, -36, -4, 52, -55, -10,
					-- layer=2 filter=49 channel=5
					6, 25, 12, 0, 8, -7, -13, 1, -38,
					-- layer=2 filter=49 channel=6
					-6, 16, -60, 0, 14, 6, -6, -1, -32,
					-- layer=2 filter=49 channel=7
					-21, -32, 0, -11, 7, 31, -12, 13, 19,
					-- layer=2 filter=49 channel=8
					10, 42, 7, -15, 21, -9, -7, 6, 54,
					-- layer=2 filter=49 channel=9
					10, -16, -20, -1, -60, -73, -16, -27, -19,
					-- layer=2 filter=49 channel=10
					-15, 28, -21, 29, 7, 23, 28, -10, 36,
					-- layer=2 filter=49 channel=11
					-4, -46, -15, -3, -35, -25, -60, -37, -88,
					-- layer=2 filter=49 channel=12
					0, -22, 16, -8, -27, -21, -48, -39, -45,
					-- layer=2 filter=49 channel=13
					-13, 7, -35, 11, -12, 0, 1, 6, 25,
					-- layer=2 filter=49 channel=14
					-5, -44, -17, 7, -16, -35, -52, -51, -73,
					-- layer=2 filter=49 channel=15
					7, -38, -39, -31, -29, -60, -28, -21, -15,
					-- layer=2 filter=49 channel=16
					-51, -92, -67, -109, -56, -32, -33, 6, -37,
					-- layer=2 filter=49 channel=17
					31, 17, -25, 45, 4, -6, 16, 10, 10,
					-- layer=2 filter=49 channel=18
					16, 74, 72, 13, 102, 91, 83, 144, 56,
					-- layer=2 filter=49 channel=19
					-18, -13, 7, -39, -32, -4, -34, -54, -13,
					-- layer=2 filter=49 channel=20
					-37, -15, -3, -25, -16, 16, -12, -5, -17,
					-- layer=2 filter=49 channel=21
					-7, -5, -19, -48, 9, -2, -20, -19, -35,
					-- layer=2 filter=49 channel=22
					29, 0, -30, 35, -7, -2, -10, -2, -19,
					-- layer=2 filter=49 channel=23
					8, -54, -51, 15, -46, -49, -38, -56, -1,
					-- layer=2 filter=49 channel=24
					9, 62, 18, 24, 59, -5, -2, -23, 13,
					-- layer=2 filter=49 channel=25
					-4, 0, 7, -21, 6, 11, -19, 15, 69,
					-- layer=2 filter=49 channel=26
					59, 0, -30, 11, 1, -58, -25, -38, -39,
					-- layer=2 filter=49 channel=27
					-9, 58, -1, -26, -1, -54, -35, -50, -33,
					-- layer=2 filter=49 channel=28
					-12, 18, -15, 37, 78, 24, 42, 52, 62,
					-- layer=2 filter=49 channel=29
					2, -11, 19, -9, 6, -65, -29, -13, -29,
					-- layer=2 filter=49 channel=30
					-58, -6, 8, -38, -10, 16, -16, 18, 7,
					-- layer=2 filter=49 channel=31
					55, 14, -20, 30, 13, -38, -4, 10, -14,
					-- layer=2 filter=50 channel=0
					-8, -3, 36, 18, 4, 27, -32, -2, -11,
					-- layer=2 filter=50 channel=1
					17, 10, 0, -3, -16, 34, 12, 23, 22,
					-- layer=2 filter=50 channel=2
					-60, -68, -38, -42, -49, -52, -8, -35, -18,
					-- layer=2 filter=50 channel=3
					-59, 18, 28, -95, 37, 0, -16, 22, 16,
					-- layer=2 filter=50 channel=4
					-138, -96, -31, -91, -133, 11, 3, -63, 1,
					-- layer=2 filter=50 channel=5
					15, 13, 31, 0, 40, 22, 1, 34, 44,
					-- layer=2 filter=50 channel=6
					4, 33, 17, -30, -24, 37, -86, -66, -9,
					-- layer=2 filter=50 channel=7
					57, 6, -14, 40, 41, -14, 32, 26, 30,
					-- layer=2 filter=50 channel=8
					55, -27, -7, -24, -34, -18, -37, -49, -42,
					-- layer=2 filter=50 channel=9
					39, 28, 40, -19, 33, 16, -24, -7, -5,
					-- layer=2 filter=50 channel=10
					18, 26, -7, 0, -8, 15, 26, -27, -40,
					-- layer=2 filter=50 channel=11
					13, 44, 45, -42, 23, 21, -25, 19, 13,
					-- layer=2 filter=50 channel=12
					16, 15, 25, -22, 32, 17, 0, 11, 32,
					-- layer=2 filter=50 channel=13
					27, 16, 2, -1, 35, -4, -33, 6, 37,
					-- layer=2 filter=50 channel=14
					-8, 42, 46, -24, -2, 32, -29, -20, 11,
					-- layer=2 filter=50 channel=15
					-32, -14, 15, -32, 6, 3, 18, 12, 35,
					-- layer=2 filter=50 channel=16
					-74, -34, -10, -55, -61, -38, -60, 57, 3,
					-- layer=2 filter=50 channel=17
					-4, 40, 56, -3, -13, 35, -63, -1, 5,
					-- layer=2 filter=50 channel=18
					28, -16, -25, -9, -42, 25, -9, 17, -18,
					-- layer=2 filter=50 channel=19
					-32, -61, -20, 22, -31, -25, 51, -5, 5,
					-- layer=2 filter=50 channel=20
					-7, -57, -38, 53, -6, -73, 89, 28, -20,
					-- layer=2 filter=50 channel=21
					-18, -29, -31, 34, -33, -24, 59, 1, -29,
					-- layer=2 filter=50 channel=22
					-5, 2, 39, -3, 13, -6, -45, -12, 25,
					-- layer=2 filter=50 channel=23
					-33, -13, 27, -32, -21, 22, -24, -23, -14,
					-- layer=2 filter=50 channel=24
					-64, -33, -43, 22, 42, -49, 35, 42, 0,
					-- layer=2 filter=50 channel=25
					-28, 3, -29, 6, 18, 4, 58, 23, 22,
					-- layer=2 filter=50 channel=26
					-21, 12, 22, -59, 12, 19, -72, -12, 8,
					-- layer=2 filter=50 channel=27
					-12, -12, 10, -14, -15, 14, -8, -57, 37,
					-- layer=2 filter=50 channel=28
					-2, -30, -2, -88, -13, -20, -63, -2, 27,
					-- layer=2 filter=50 channel=29
					-27, 32, 39, 12, 37, 9, -6, 13, 0,
					-- layer=2 filter=50 channel=30
					2, -9, -19, 45, -16, -36, 77, 22, -17,
					-- layer=2 filter=50 channel=31
					-16, 19, 38, -83, 14, 13, -44, -3, 28,
					-- layer=2 filter=51 channel=0
					0, -8, 4, 18, 6, -5, -2, 18, -9,
					-- layer=2 filter=51 channel=1
					-14, 7, -7, -7, -7, -22, 5, -18, 3,
					-- layer=2 filter=51 channel=2
					-15, -8, -10, -2, 1, -16, 6, 11, -10,
					-- layer=2 filter=51 channel=3
					-12, 0, -1, 6, 0, 0, -24, 5, -13,
					-- layer=2 filter=51 channel=4
					6, -1, 13, -2, -14, 14, -10, -23, -3,
					-- layer=2 filter=51 channel=5
					6, -14, -10, 7, -22, -22, -17, -1, 6,
					-- layer=2 filter=51 channel=6
					-4, 10, -15, 12, 12, -6, -11, -23, -5,
					-- layer=2 filter=51 channel=7
					-6, 4, -25, -14, 6, -12, 6, 0, 0,
					-- layer=2 filter=51 channel=8
					-2, -7, 11, -17, 2, -9, 9, -25, -14,
					-- layer=2 filter=51 channel=9
					-5, 2, 18, -20, -12, 10, 8, -7, 0,
					-- layer=2 filter=51 channel=10
					-19, -14, 1, -15, 0, 0, 14, -25, 13,
					-- layer=2 filter=51 channel=11
					-20, 0, -20, 10, 10, -20, -5, 16, -19,
					-- layer=2 filter=51 channel=12
					15, -11, -13, 15, 10, -12, 13, -16, 17,
					-- layer=2 filter=51 channel=13
					-5, -1, -14, -4, -18, 0, 1, -26, 0,
					-- layer=2 filter=51 channel=14
					-8, 1, -16, -15, -22, -9, -3, 7, -8,
					-- layer=2 filter=51 channel=15
					6, -3, -7, -5, -21, -19, -17, -17, -18,
					-- layer=2 filter=51 channel=16
					-3, 2, -8, -4, -12, -18, -15, -17, 9,
					-- layer=2 filter=51 channel=17
					11, -22, 15, -14, 14, -5, -20, -21, -13,
					-- layer=2 filter=51 channel=18
					18, 7, 15, 13, -12, 9, 13, 1, -7,
					-- layer=2 filter=51 channel=19
					-24, -21, -23, 6, 0, -25, -27, 8, 12,
					-- layer=2 filter=51 channel=20
					-19, 14, -13, -16, -13, -20, -25, 10, -23,
					-- layer=2 filter=51 channel=21
					6, 5, -8, 3, 11, -7, 4, 1, 6,
					-- layer=2 filter=51 channel=22
					-7, -20, -19, -10, -9, -18, 13, -16, 1,
					-- layer=2 filter=51 channel=23
					5, -20, -12, -17, 0, -13, -23, -4, 6,
					-- layer=2 filter=51 channel=24
					-20, 5, -4, 10, -17, -20, -3, -22, -2,
					-- layer=2 filter=51 channel=25
					-3, -23, -3, -13, 10, -8, 9, -30, 0,
					-- layer=2 filter=51 channel=26
					1, -25, 7, -2, 1, -22, -12, -11, -5,
					-- layer=2 filter=51 channel=27
					-18, 8, -16, 3, 13, 15, -2, -17, 7,
					-- layer=2 filter=51 channel=28
					5, -16, 12, 14, 21, -19, -13, -5, -28,
					-- layer=2 filter=51 channel=29
					-16, 12, 11, -15, 5, 18, 13, -23, -12,
					-- layer=2 filter=51 channel=30
					-5, -19, -16, 11, -24, -21, 15, 13, 10,
					-- layer=2 filter=51 channel=31
					-16, 7, 2, 12, 7, -4, -13, 4, 13,
					-- layer=2 filter=52 channel=0
					-16, 0, -22, 16, 17, 4, 12, 21, -9,
					-- layer=2 filter=52 channel=1
					-3, -28, -11, -4, -26, 10, -1, -2, 25,
					-- layer=2 filter=52 channel=2
					29, 50, 11, 5, 38, -5, 26, 36, 2,
					-- layer=2 filter=52 channel=3
					-33, -43, -6, 0, -7, 17, 20, 8, -6,
					-- layer=2 filter=52 channel=4
					-13, 21, -7, -4, 45, 19, 3, 15, 10,
					-- layer=2 filter=52 channel=5
					-26, -2, 15, -50, 1, -3, -15, -57, -12,
					-- layer=2 filter=52 channel=6
					-9, -31, -19, 4, 2, -4, 0, -45, -51,
					-- layer=2 filter=52 channel=7
					-3, -11, -26, 43, 19, 5, 37, 24, -25,
					-- layer=2 filter=52 channel=8
					0, 6, 11, -20, 15, 37, 5, 7, -5,
					-- layer=2 filter=52 channel=9
					-26, -65, -3, 9, -62, -94, -6, -13, -9,
					-- layer=2 filter=52 channel=10
					7, 24, 28, 13, -8, 20, -10, 20, 45,
					-- layer=2 filter=52 channel=11
					31, 10, -14, -14, -1, 3, -34, -12, 0,
					-- layer=2 filter=52 channel=12
					1, 22, 26, 4, 1, 11, 15, 12, 15,
					-- layer=2 filter=52 channel=13
					13, -61, -58, 15, -64, -62, -12, -13, 4,
					-- layer=2 filter=52 channel=14
					-23, 8, 5, -40, -5, 6, -59, -23, 14,
					-- layer=2 filter=52 channel=15
					15, 6, 0, 11, 5, -6, 51, -12, -54,
					-- layer=2 filter=52 channel=16
					19, -32, -4, 0, -59, -81, -25, -76, -16,
					-- layer=2 filter=52 channel=17
					-15, -6, -16, 32, -29, -58, -2, -54, -49,
					-- layer=2 filter=52 channel=18
					37, 59, 0, -13, -28, -46, -9, -56, -56,
					-- layer=2 filter=52 channel=19
					-16, 11, 29, -36, 9, -2, -17, 0, 8,
					-- layer=2 filter=52 channel=20
					-42, 0, 17, -6, -6, -27, -41, -23, -12,
					-- layer=2 filter=52 channel=21
					-16, 16, 12, -28, -4, 6, -13, -12, -1,
					-- layer=2 filter=52 channel=22
					-17, 4, -27, 11, -36, -18, 41, -68, -24,
					-- layer=2 filter=52 channel=23
					10, -6, 38, 4, 11, 23, -1, 13, -8,
					-- layer=2 filter=52 channel=24
					-10, 23, 25, 77, 18, 1, 52, 83, -1,
					-- layer=2 filter=52 channel=25
					16, -25, 0, 14, -1, 0, 11, -11, 43,
					-- layer=2 filter=52 channel=26
					-13, -25, -9, 59, -35, -23, 14, -25, -28,
					-- layer=2 filter=52 channel=27
					-10, -21, -26, 6, -6, 12, -17, -19, -44,
					-- layer=2 filter=52 channel=28
					-28, -48, -20, -1, -37, -16, 18, -3, -10,
					-- layer=2 filter=52 channel=29
					9, 32, 49, 24, -29, -30, -24, 12, -16,
					-- layer=2 filter=52 channel=30
					-46, 18, 35, -15, 3, 24, -16, 30, 36,
					-- layer=2 filter=52 channel=31
					41, 0, -29, 40, -11, -72, 28, -11, -58,
					-- layer=2 filter=53 channel=0
					-1, 0, 6, 8, 1, -13, 0, -2, 7,
					-- layer=2 filter=53 channel=1
					35, 6, 19, 14, 56, 41, -36, 7, 16,
					-- layer=2 filter=53 channel=2
					-8, -3, 25, -3, -47, -39, -14, -66, -81,
					-- layer=2 filter=53 channel=3
					-71, -48, -40, -73, -103, -59, -81, -122, -99,
					-- layer=2 filter=53 channel=4
					-25, 70, 38, -73, -17, -5, -11, -64, 1,
					-- layer=2 filter=53 channel=5
					61, 40, 19, 0, 0, 35, 52, 16, 35,
					-- layer=2 filter=53 channel=6
					-4, -10, -2, 3, 5, 0, -8, 0, -3,
					-- layer=2 filter=53 channel=7
					-8, 20, 15, 30, 31, 34, 34, 15, 28,
					-- layer=2 filter=53 channel=8
					-36, -21, -4, -33, 18, -48, -16, 10, -17,
					-- layer=2 filter=53 channel=9
					10, -21, -19, -13, -4, 10, -19, -11, -7,
					-- layer=2 filter=53 channel=10
					-22, -15, -30, 10, -20, -14, 12, 8, 1,
					-- layer=2 filter=53 channel=11
					-8, -4, 1, -3, 1, 4, 20, 2, -13,
					-- layer=2 filter=53 channel=12
					11, 0, 18, -5, -17, 21, 27, 20, 18,
					-- layer=2 filter=53 channel=13
					10, 2, 9, 18, 71, 55, 0, 18, 24,
					-- layer=2 filter=53 channel=14
					37, 20, 51, 7, 21, 22, 33, 39, 42,
					-- layer=2 filter=53 channel=15
					16, 12, -7, -27, 3, -4, -19, 5, 20,
					-- layer=2 filter=53 channel=16
					-45, 12, 24, -20, 40, 16, -26, 36, -11,
					-- layer=2 filter=53 channel=17
					-2, -2, 5, 9, 14, 5, -4, 22, -6,
					-- layer=2 filter=53 channel=18
					24, -22, -25, 20, -50, -20, -7, 29, -7,
					-- layer=2 filter=53 channel=19
					-9, 13, 1, -13, -20, -5, 38, 19, 8,
					-- layer=2 filter=53 channel=20
					-28, -1, -8, -14, -19, -10, 0, -8, 20,
					-- layer=2 filter=53 channel=21
					-7, 9, 8, -15, -14, -5, -1, -1, 31,
					-- layer=2 filter=53 channel=22
					-7, -2, -24, 14, 27, -26, 15, 5, -4,
					-- layer=2 filter=53 channel=23
					-4, -31, -3, -15, -36, 5, 25, 8, -15,
					-- layer=2 filter=53 channel=24
					-124, -31, -107, -147, -146, -108, -34, -93, -124,
					-- layer=2 filter=53 channel=25
					15, 49, 29, 8, 50, 52, 14, -8, -14,
					-- layer=2 filter=53 channel=26
					-6, 29, 1, -8, 17, 18, 12, 2, -15,
					-- layer=2 filter=53 channel=27
					-6, -18, -16, 26, 8, 36, 43, 45, 41,
					-- layer=2 filter=53 channel=28
					-45, -28, -36, -75, -91, -89, -86, -95, -87,
					-- layer=2 filter=53 channel=29
					0, -5, 13, 6, 23, 17, 48, 39, 46,
					-- layer=2 filter=53 channel=30
					-23, -25, -20, -13, -15, -3, 35, -1, 28,
					-- layer=2 filter=53 channel=31
					28, 27, 20, -21, 12, -2, -16, -6, -13,
					-- layer=2 filter=54 channel=0
					9, 24, -1, 0, 23, 21, 3, 21, 14,
					-- layer=2 filter=54 channel=1
					21, 34, 9, 10, -19, 21, -23, 2, 14,
					-- layer=2 filter=54 channel=2
					25, 24, 8, 39, 87, 72, 53, 11, 73,
					-- layer=2 filter=54 channel=3
					34, 1, 14, 21, -26, 8, -21, -28, -57,
					-- layer=2 filter=54 channel=4
					24, -15, -19, 35, 41, 64, 26, 12, 44,
					-- layer=2 filter=54 channel=5
					-30, -28, -14, -10, 19, 4, 60, 38, -7,
					-- layer=2 filter=54 channel=6
					10, 50, 31, -15, 8, -14, -45, -55, -47,
					-- layer=2 filter=54 channel=7
					-7, -1, 15, -28, 4, -21, -24, -13, 27,
					-- layer=2 filter=54 channel=8
					51, 43, 10, 55, 33, 6, 23, 2, 6,
					-- layer=2 filter=54 channel=9
					8, 39, -3, -5, 29, -33, 1, 4, -43,
					-- layer=2 filter=54 channel=10
					20, 54, 9, 6, 21, 9, 23, -9, 24,
					-- layer=2 filter=54 channel=11
					-31, -15, 33, 10, 4, 36, 7, 11, -26,
					-- layer=2 filter=54 channel=12
					-37, -2, 22, -41, -30, -36, -22, -15, -55,
					-- layer=2 filter=54 channel=13
					-4, 56, 44, -47, 6, -29, -29, 18, 18,
					-- layer=2 filter=54 channel=14
					-26, -32, -7, 30, -10, 7, 67, 6, 22,
					-- layer=2 filter=54 channel=15
					-38, 13, 50, -66, -27, 20, -50, 4, 7,
					-- layer=2 filter=54 channel=16
					19, 58, -47, -3, -16, -127, -57, -12, -38,
					-- layer=2 filter=54 channel=17
					24, 55, 60, 3, -15, -16, 8, -33, -64,
					-- layer=2 filter=54 channel=18
					-28, -9, -13, -65, -19, -9, -44, 3, -55,
					-- layer=2 filter=54 channel=19
					-15, -16, 8, -30, -21, -13, 15, -25, -3,
					-- layer=2 filter=54 channel=20
					-1, 0, 17, -39, 6, 33, -32, 9, 44,
					-- layer=2 filter=54 channel=21
					-8, -9, 45, -19, 24, 47, -13, 2, 36,
					-- layer=2 filter=54 channel=22
					-10, 25, 35, -24, 9, 9, -9, -24, -59,
					-- layer=2 filter=54 channel=23
					23, 11, -27, 8, 15, 8, 24, 6, -15,
					-- layer=2 filter=54 channel=24
					-9, -75, -48, -48, -77, 20, -11, -48, -32,
					-- layer=2 filter=54 channel=25
					17, 21, -26, -22, -24, -29, -13, 17, 12,
					-- layer=2 filter=54 channel=26
					3, 46, 11, -22, -4, -15, 4, 19, 7,
					-- layer=2 filter=54 channel=27
					-9, -16, 27, -48, -8, -63, 19, -47, -14,
					-- layer=2 filter=54 channel=28
					-2, 29, 45, -9, 21, 22, -5, -24, 17,
					-- layer=2 filter=54 channel=29
					-36, -30, -4, -88, -22, -70, -27, -12, -13,
					-- layer=2 filter=54 channel=30
					1, -5, -18, -21, -10, 33, -8, 9, 19,
					-- layer=2 filter=54 channel=31
					8, 6, 32, -41, 3, 2, -49, -14, -6,
					-- layer=2 filter=55 channel=0
					-9, -14, 0, 0, 16, -3, -10, 2, -8,
					-- layer=2 filter=55 channel=1
					38, 20, 15, 73, 35, -12, 24, 51, 89,
					-- layer=2 filter=55 channel=2
					14, 4, 32, 0, -19, -6, 6, -65, -23,
					-- layer=2 filter=55 channel=3
					19, -5, 23, 40, 50, 63, 17, 54, 52,
					-- layer=2 filter=55 channel=4
					-16, 42, 45, -55, -13, -2, -30, -26, -27,
					-- layer=2 filter=55 channel=5
					-4, 32, 19, -40, -37, 26, -47, -22, 0,
					-- layer=2 filter=55 channel=6
					-7, 30, 24, -48, 6, 62, -6, -15, 19,
					-- layer=2 filter=55 channel=7
					-7, 46, 59, 3, 56, 36, -7, -22, -30,
					-- layer=2 filter=55 channel=8
					4, -44, -8, -9, 19, -20, 10, 31, 42,
					-- layer=2 filter=55 channel=9
					10, -29, -1, -39, -57, -30, 5, -37, -19,
					-- layer=2 filter=55 channel=10
					-17, -4, -17, -40, -6, 16, -32, 18, 59,
					-- layer=2 filter=55 channel=11
					24, 45, 32, -54, 12, 27, -66, -27, 25,
					-- layer=2 filter=55 channel=12
					38, 40, 26, -17, 11, 4, -1, 12, 2,
					-- layer=2 filter=55 channel=13
					13, 1, 2, 9, -24, -46, 38, -14, -16,
					-- layer=2 filter=55 channel=14
					-16, 37, 33, -124, -19, 6, -120, -16, 25,
					-- layer=2 filter=55 channel=15
					49, 29, -3, 22, -25, -36, 26, -7, -29,
					-- layer=2 filter=55 channel=16
					3, -18, -36, 8, 80, 40, 34, 27, 62,
					-- layer=2 filter=55 channel=17
					41, 23, 5, 4, 15, 48, -26, 19, 27,
					-- layer=2 filter=55 channel=18
					-31, -5, 26, 19, 46, 23, 20, 27, 16,
					-- layer=2 filter=55 channel=19
					-4, 38, 12, -36, -1, 56, -41, 15, -11,
					-- layer=2 filter=55 channel=20
					-39, -1, -10, -14, 46, 22, -42, -5, -10,
					-- layer=2 filter=55 channel=21
					42, 28, 15, 26, 37, 24, -32, -19, -2,
					-- layer=2 filter=55 channel=22
					23, -14, 8, -33, -41, 23, -26, -15, -17,
					-- layer=2 filter=55 channel=23
					-35, -10, 4, -61, 26, 31, -34, 36, 14,
					-- layer=2 filter=55 channel=24
					-24, -34, 18, -27, -43, 2, 41, -20, -30,
					-- layer=2 filter=55 channel=25
					-23, -22, -1, -29, -3, -10, -29, -20, -2,
					-- layer=2 filter=55 channel=26
					-2, -48, -17, 4, -40, -55, 47, 0, -5,
					-- layer=2 filter=55 channel=27
					7, 22, 34, -77, -52, 32, 6, -27, -9,
					-- layer=2 filter=55 channel=28
					2, -15, 5, -1, 8, 38, 9, 25, 25,
					-- layer=2 filter=55 channel=29
					9, -7, 24, -51, -28, 17, 38, -38, -42,
					-- layer=2 filter=55 channel=30
					-39, 0, 22, -36, 28, 6, -61, 10, 11,
					-- layer=2 filter=55 channel=31
					18, -9, 23, 41, -8, -41, 51, 6, 19,
					-- layer=2 filter=56 channel=0
					20, 3, 16, 12, 34, 14, -7, 14, 2,
					-- layer=2 filter=56 channel=1
					23, 0, 2, -12, 31, -36, -28, -30, 34,
					-- layer=2 filter=56 channel=2
					61, 46, -5, 23, 56, -4, -4, -16, 10,
					-- layer=2 filter=56 channel=3
					55, 29, -12, 61, 6, -32, 64, 7, -42,
					-- layer=2 filter=56 channel=4
					-15, -28, -28, 60, -23, -69, 67, -49, -3,
					-- layer=2 filter=56 channel=5
					-40, 0, 23, 16, 11, 19, 56, 4, 41,
					-- layer=2 filter=56 channel=6
					0, 4, 44, -19, -10, 31, 26, -35, 9,
					-- layer=2 filter=56 channel=7
					-47, -26, -54, -69, -13, -49, -17, -50, -5,
					-- layer=2 filter=56 channel=8
					15, -8, -23, -20, 10, -10, 2, -39, -23,
					-- layer=2 filter=56 channel=9
					-15, 0, 6, 11, 26, 21, 1, 28, 19,
					-- layer=2 filter=56 channel=10
					12, 7, 10, -23, 22, 13, -51, -32, 9,
					-- layer=2 filter=56 channel=11
					-13, 9, 26, 0, 3, 55, 23, 10, 1,
					-- layer=2 filter=56 channel=12
					-21, -5, 18, -37, -21, 6, 21, 10, 42,
					-- layer=2 filter=56 channel=13
					31, 3, -6, -26, 15, -7, 34, 8, -13,
					-- layer=2 filter=56 channel=14
					-58, -28, 24, -9, 5, 4, -23, 23, -10,
					-- layer=2 filter=56 channel=15
					-39, -26, -4, -29, 6, -6, 19, 32, 9,
					-- layer=2 filter=56 channel=16
					0, 6, -12, 11, 32, -7, -4, -21, -17,
					-- layer=2 filter=56 channel=17
					-31, 14, 46, 1, 27, 43, 12, 13, -2,
					-- layer=2 filter=56 channel=18
					71, 42, 16, 80, 6, 40, 75, 107, 84,
					-- layer=2 filter=56 channel=19
					-34, -37, -23, -56, -40, -26, -57, -14, -15,
					-- layer=2 filter=56 channel=20
					-7, 18, -52, -19, 9, -45, -61, -9, 9,
					-- layer=2 filter=56 channel=21
					8, -41, -50, -17, -16, -48, -32, -24, -6,
					-- layer=2 filter=56 channel=22
					7, -2, 22, -8, -20, 23, 31, 6, -13,
					-- layer=2 filter=56 channel=23
					-28, 12, 9, 24, -5, 16, 21, -23, -29,
					-- layer=2 filter=56 channel=24
					-21, -29, -31, 28, 48, -27, -41, 5, 11,
					-- layer=2 filter=56 channel=25
					14, 2, -10, -2, 36, -35, -13, -47, -7,
					-- layer=2 filter=56 channel=26
					-20, -18, 3, 13, 22, -2, 49, 39, 11,
					-- layer=2 filter=56 channel=27
					-30, -20, 19, -24, 5, -23, -9, 27, 29,
					-- layer=2 filter=56 channel=28
					14, 35, -3, 51, -16, -37, 10, 28, 3,
					-- layer=2 filter=56 channel=29
					-22, 0, -23, 1, 34, 34, 35, 55, 60,
					-- layer=2 filter=56 channel=30
					-6, -46, -62, -50, 2, -32, -63, -42, -9,
					-- layer=2 filter=56 channel=31
					24, 0, 9, -2, 0, 4, 65, 22, 32,
					-- layer=2 filter=57 channel=0
					-7, 13, -20, -9, 16, 10, -9, 29, 24,
					-- layer=2 filter=57 channel=1
					13, 27, 38, 25, 26, 23, 19, 17, 33,
					-- layer=2 filter=57 channel=2
					66, -18, -62, 45, 40, -92, 40, -1, -3,
					-- layer=2 filter=57 channel=3
					4, -30, -48, -17, -64, -113, -11, -26, -82,
					-- layer=2 filter=57 channel=4
					63, -74, -65, 54, -73, -66, 85, 9, -84,
					-- layer=2 filter=57 channel=5
					-9, -20, 29, 6, 34, 9, -22, -14, 0,
					-- layer=2 filter=57 channel=6
					10, 32, -14, 6, -1, 10, 7, 14, 19,
					-- layer=2 filter=57 channel=7
					36, 64, 53, 35, 9, 13, 25, 30, 5,
					-- layer=2 filter=57 channel=8
					-14, -18, -68, -19, 0, -51, 2, -28, -36,
					-- layer=2 filter=57 channel=9
					-24, 8, -24, -44, 39, -4, -8, 3, -5,
					-- layer=2 filter=57 channel=10
					2, -18, -25, 30, 48, -5, 11, 14, 18,
					-- layer=2 filter=57 channel=11
					-25, -7, -29, -1, -31, 0, -50, 1, 17,
					-- layer=2 filter=57 channel=12
					0, -5, 15, -20, -11, 44, -63, -22, 19,
					-- layer=2 filter=57 channel=13
					-32, 54, 14, 1, 59, 44, -2, 18, 12,
					-- layer=2 filter=57 channel=14
					-11, 12, -5, -31, -4, 40, -31, 3, -4,
					-- layer=2 filter=57 channel=15
					13, 14, 10, -20, 26, 11, -62, -22, -9,
					-- layer=2 filter=57 channel=16
					-50, 40, 50, 30, 66, 30, 3, 4, 21,
					-- layer=2 filter=57 channel=17
					-51, 16, 14, -8, 41, 20, -9, 24, -15,
					-- layer=2 filter=57 channel=18
					-18, -48, -105, -8, 11, 11, -27, 9, 10,
					-- layer=2 filter=57 channel=19
					27, 3, 20, -24, 27, 28, -28, 0, 21,
					-- layer=2 filter=57 channel=20
					15, 19, 4, 0, 37, 58, -9, 0, 30,
					-- layer=2 filter=57 channel=21
					19, 33, 19, 2, 6, 20, -27, -29, 6,
					-- layer=2 filter=57 channel=22
					34, 9, -21, -2, -38, -16, -36, 11, 2,
					-- layer=2 filter=57 channel=23
					-19, -46, -37, -12, -2, 2, -31, 1, 22,
					-- layer=2 filter=57 channel=24
					40, -103, -82, 3, -99, -116, 56, -60, -137,
					-- layer=2 filter=57 channel=25
					18, 38, 2, 28, 2, 14, -3, 21, 31,
					-- layer=2 filter=57 channel=26
					-19, 0, 10, -1, 22, 14, 26, 25, 14,
					-- layer=2 filter=57 channel=27
					-4, -7, 37, -45, -22, 3, 27, -14, 0,
					-- layer=2 filter=57 channel=28
					-37, -111, -68, -58, -100, -79, 6, -51, -73,
					-- layer=2 filter=57 channel=29
					-49, -30, -19, -56, 10, -4, -20, -2, 3,
					-- layer=2 filter=57 channel=30
					16, 0, 17, 2, 43, 22, -18, -2, 24,
					-- layer=2 filter=57 channel=31
					4, -22, -27, 6, 16, 28, 14, 7, 1,
					-- layer=2 filter=58 channel=0
					12, 31, 14, -13, 5, -1, 9, -18, -7,
					-- layer=2 filter=58 channel=1
					24, 49, -14, 71, 37, -8, -15, 31, 18,
					-- layer=2 filter=58 channel=2
					-15, -62, -30, -13, -90, -17, 23, -42, -39,
					-- layer=2 filter=58 channel=3
					23, 59, 40, 65, 49, 61, 56, 40, -1,
					-- layer=2 filter=58 channel=4
					-55, -89, -36, -39, -77, -39, -16, -14, -25,
					-- layer=2 filter=58 channel=5
					-67, -51, -14, -13, -79, -38, 44, -2, -38,
					-- layer=2 filter=58 channel=6
					-12, 26, 69, 58, 62, 47, 0, 4, -35,
					-- layer=2 filter=58 channel=7
					18, 12, 7, 17, -5, 21, -40, -20, 21,
					-- layer=2 filter=58 channel=8
					-3, 72, -9, 82, 34, 19, 45, 24, -13,
					-- layer=2 filter=58 channel=9
					1, -36, -10, -11, 1, -8, -5, 21, 3,
					-- layer=2 filter=58 channel=10
					15, 22, 30, 33, 12, 17, 13, 20, 24,
					-- layer=2 filter=58 channel=11
					-42, -106, -65, -69, -69, 0, -6, -8, 15,
					-- layer=2 filter=58 channel=12
					20, -9, -1, 20, 4, 16, -17, -19, -15,
					-- layer=2 filter=58 channel=13
					6, 18, -46, 35, 21, -27, -85, -37, -45,
					-- layer=2 filter=58 channel=14
					-29, -69, -34, -41, -32, 34, 18, 19, -1,
					-- layer=2 filter=58 channel=15
					65, -14, 4, 26, -16, -15, 36, -26, -26,
					-- layer=2 filter=58 channel=16
					9, 5, 44, -6, 4, -37, -26, 27, 16,
					-- layer=2 filter=58 channel=17
					23, 34, 16, 7, 17, 2, 12, 9, 15,
					-- layer=2 filter=58 channel=18
					35, 23, -41, 70, 17, -3, 30, -9, -15,
					-- layer=2 filter=58 channel=19
					-12, 10, 38, 9, 18, 11, 7, -6, 16,
					-- layer=2 filter=58 channel=20
					10, -15, -9, -27, -24, -23, 2, 46, 48,
					-- layer=2 filter=58 channel=21
					-4, 3, 32, 4, 16, 17, 37, 13, 26,
					-- layer=2 filter=58 channel=22
					-3, 17, 21, 12, 1, 10, 1, 3, -10,
					-- layer=2 filter=58 channel=23
					-2, 2, 24, 31, 30, 41, 11, 27, -32,
					-- layer=2 filter=58 channel=24
					29, 22, 39, 41, 31, -11, 53, 69, 28,
					-- layer=2 filter=58 channel=25
					-21, 23, -27, -7, -17, -17, -40, -1, 35,
					-- layer=2 filter=58 channel=26
					15, 6, -21, 16, 10, -24, 26, -8, 4,
					-- layer=2 filter=58 channel=27
					0, -7, 9, -28, 7, 36, -13, -23, -4,
					-- layer=2 filter=58 channel=28
					29, 10, 60, 36, -15, -4, 20, 17, -31,
					-- layer=2 filter=58 channel=29
					-19, -62, -50, -41, -73, -8, -41, -55, -35,
					-- layer=2 filter=58 channel=30
					-16, 6, -18, -37, 3, 37, 5, 42, -7,
					-- layer=2 filter=58 channel=31
					29, -9, 21, 38, 26, -7, 73, 29, 45,
					-- layer=2 filter=59 channel=0
					11, 8, 23, 3, -15, 15, 24, 16, -8,
					-- layer=2 filter=59 channel=1
					20, 6, -30, 37, 28, 14, 45, 42, 25,
					-- layer=2 filter=59 channel=2
					3, 12, -39, -22, 9, 0, -28, 12, -26,
					-- layer=2 filter=59 channel=3
					-23, -61, -81, -28, -20, -66, -58, -69, -67,
					-- layer=2 filter=59 channel=4
					79, 42, 10, 2, 62, 10, -27, 18, 6,
					-- layer=2 filter=59 channel=5
					-10, -13, -1, -7, 33, 20, -16, 8, -18,
					-- layer=2 filter=59 channel=6
					24, 20, 13, -5, -14, -15, -58, -50, -7,
					-- layer=2 filter=59 channel=7
					23, 1, 17, 12, -14, 0, 4, 11, 41,
					-- layer=2 filter=59 channel=8
					3, 5, 5, 5, -6, 28, 8, 0, 17,
					-- layer=2 filter=59 channel=9
					40, 44, 28, 22, 28, 2, -110, -73, -58,
					-- layer=2 filter=59 channel=10
					21, 27, 8, 32, 8, 42, 4, 6, -17,
					-- layer=2 filter=59 channel=11
					1, -44, -54, 9, -14, -55, -17, -40, -71,
					-- layer=2 filter=59 channel=12
					-12, -10, -11, 19, -2, -3, -19, -29, 3,
					-- layer=2 filter=59 channel=13
					15, 22, 16, 5, 0, -27, -5, -2, -28,
					-- layer=2 filter=59 channel=14
					-25, -4, 0, 8, 13, -9, -5, -27, -22,
					-- layer=2 filter=59 channel=15
					12, 22, -43, 31, 21, -1, -2, -11, -43,
					-- layer=2 filter=59 channel=16
					-44, -32, -2, -65, -69, -85, -62, -114, -85,
					-- layer=2 filter=59 channel=17
					25, 34, 29, 15, -16, 0, -74, -72, -61,
					-- layer=2 filter=59 channel=18
					49, 63, -17, 64, -5, -18, 28, 46, 10,
					-- layer=2 filter=59 channel=19
					-10, -2, 1, 19, 22, 1, -4, 41, 16,
					-- layer=2 filter=59 channel=20
					1, 2, -12, 46, 34, 1, 56, 13, 36,
					-- layer=2 filter=59 channel=21
					7, 10, 5, 18, 31, 24, 30, 5, 42,
					-- layer=2 filter=59 channel=22
					-23, 61, 25, -19, -1, -32, -128, -53, -100,
					-- layer=2 filter=59 channel=23
					-11, -1, 16, -21, -5, 18, -40, -47, 26,
					-- layer=2 filter=59 channel=24
					-31, -47, -21, -50, -69, -71, -102, -48, -62,
					-- layer=2 filter=59 channel=25
					25, 39, 35, 35, 18, 23, 24, -3, 14,
					-- layer=2 filter=59 channel=26
					68, 70, 30, 30, -13, -4, -52, -23, -41,
					-- layer=2 filter=59 channel=27
					-6, -29, -2, -45, -45, -6, -21, -41, -47,
					-- layer=2 filter=59 channel=28
					26, -52, -42, -19, -19, -17, -19, -69, -21,
					-- layer=2 filter=59 channel=29
					-38, -52, 33, -91, -133, -90, -45, -112, -79,
					-- layer=2 filter=59 channel=30
					10, 23, 0, 35, 13, 8, 24, 37, 9,
					-- layer=2 filter=59 channel=31
					22, 61, 4, -11, 4, 41, -65, -26, -71,
					-- layer=2 filter=60 channel=0
					13, 4, -12, 16, 20, -17, -3, 6, 12,
					-- layer=2 filter=60 channel=1
					16, 11, 0, 9, 3, -28, 6, 24, 36,
					-- layer=2 filter=60 channel=2
					3, 17, -2, 15, 16, 16, 17, 29, 32,
					-- layer=2 filter=60 channel=3
					-59, -32, -17, -78, -22, -34, -49, -30, -22,
					-- layer=2 filter=60 channel=4
					6, -10, -12, 34, 43, 24, 1, 72, 45,
					-- layer=2 filter=60 channel=5
					4, -36, 15, 19, -6, -8, 8, 24, -27,
					-- layer=2 filter=60 channel=6
					29, -12, -6, -2, -12, -32, -10, -14, -17,
					-- layer=2 filter=60 channel=7
					-20, -13, -19, 4, -1, 11, 7, 43, 45,
					-- layer=2 filter=60 channel=8
					12, 26, 8, 71, 30, -35, 21, -4, 12,
					-- layer=2 filter=60 channel=9
					22, -5, 8, -33, -17, 33, -36, -40, 28,
					-- layer=2 filter=60 channel=10
					-2, 24, -7, 15, -19, -19, 43, -19, -6,
					-- layer=2 filter=60 channel=11
					-25, -24, -31, -43, -49, -16, -47, -31, -51,
					-- layer=2 filter=60 channel=12
					4, -12, 9, -7, -2, 9, 13, -6, -22,
					-- layer=2 filter=60 channel=13
					7, 21, 0, 2, 30, 52, -21, 32, 25,
					-- layer=2 filter=60 channel=14
					-9, -18, -26, 12, -6, -17, 26, 0, -52,
					-- layer=2 filter=60 channel=15
					4, 30, 0, 27, 43, 19, -19, 4, 29,
					-- layer=2 filter=60 channel=16
					-81, -45, -66, -32, -54, -13, -71, -105, -88,
					-- layer=2 filter=60 channel=17
					-12, 1, 6, -27, -37, -38, -16, -40, -34,
					-- layer=2 filter=60 channel=18
					-4, 6, 35, -58, -48, -38, -115, -33, -21,
					-- layer=2 filter=60 channel=19
					26, 27, 19, 29, 29, -4, 16, 46, 35,
					-- layer=2 filter=60 channel=20
					11, 10, -6, 26, 18, 34, 4, -18, 33,
					-- layer=2 filter=60 channel=21
					29, 0, -8, 8, 16, 0, 25, 8, 10,
					-- layer=2 filter=60 channel=22
					-50, -27, -20, -53, -29, -78, -56, -61, -48,
					-- layer=2 filter=60 channel=23
					6, 19, 34, 22, -12, -22, 6, -13, -8,
					-- layer=2 filter=60 channel=24
					-49, -11, -38, -50, -41, -82, 6, -35, -39,
					-- layer=2 filter=60 channel=25
					13, 16, 44, 27, 22, 15, 29, 20, 27,
					-- layer=2 filter=60 channel=26
					7, -4, 27, -9, 15, 9, -42, -27, 18,
					-- layer=2 filter=60 channel=27
					8, -24, 9, 21, 0, 3, 1, 0, 6,
					-- layer=2 filter=60 channel=28
					-7, 2, 19, -28, -15, -3, -8, 0, -40,
					-- layer=2 filter=60 channel=29
					0, 27, 43, -34, -59, -38, -30, -50, -35,
					-- layer=2 filter=60 channel=30
					2, -2, 22, 3, 4, 10, 1, -19, -5,
					-- layer=2 filter=60 channel=31
					18, 15, 1, -23, 9, -2, -54, -34, -20,
					-- layer=2 filter=61 channel=0
					8, 14, 5, -9, -20, -7, 0, 0, -17,
					-- layer=2 filter=61 channel=1
					27, -21, -33, -33, 33, 31, -65, -49, -21,
					-- layer=2 filter=61 channel=2
					25, -5, 0, 12, 16, 25, -42, -8, -69,
					-- layer=2 filter=61 channel=3
					-26, -29, -1, 2, -5, 32, -27, -5, 18,
					-- layer=2 filter=61 channel=4
					-12, -16, -13, -8, -6, -31, 13, -42, -12,
					-- layer=2 filter=61 channel=5
					-38, -49, -6, 6, -51, -3, 41, 11, -14,
					-- layer=2 filter=61 channel=6
					-18, 2, 11, 13, 31, -58, 7, -6, -15,
					-- layer=2 filter=61 channel=7
					0, 31, 31, -28, 16, 42, -9, -5, 55,
					-- layer=2 filter=61 channel=8
					-39, 17, 8, -13, -2, 0, -43, -30, -19,
					-- layer=2 filter=61 channel=9
					22, -15, -64, 21, -23, -57, 42, -16, -9,
					-- layer=2 filter=61 channel=10
					-8, 68, 44, -39, 3, 78, -74, -8, -36,
					-- layer=2 filter=61 channel=11
					14, 5, 15, 39, 7, 71, 41, 18, -21,
					-- layer=2 filter=61 channel=12
					28, -37, -17, 35, -13, -37, 54, 37, 12,
					-- layer=2 filter=61 channel=13
					15, 25, -26, -44, 11, 5, -5, -10, 19,
					-- layer=2 filter=61 channel=14
					-49, -9, 22, -1, -38, -7, 47, 39, 3,
					-- layer=2 filter=61 channel=15
					58, -48, -36, 60, -25, -40, 64, -4, 6,
					-- layer=2 filter=61 channel=16
					-12, 28, -32, -48, 42, -7, -66, -20, 35,
					-- layer=2 filter=61 channel=17
					-11, -17, -18, -25, 26, -42, 21, 50, 8,
					-- layer=2 filter=61 channel=18
					49, 6, -2, -3, 7, -52, 42, -8, 2,
					-- layer=2 filter=61 channel=19
					-12, -41, 11, -16, -18, -2, -14, 1, -19,
					-- layer=2 filter=61 channel=20
					-35, -8, 22, 21, 2, 4, -21, 3, 39,
					-- layer=2 filter=61 channel=21
					-30, -17, 32, -17, -32, 29, 16, -8, -3,
					-- layer=2 filter=61 channel=22
					-6, -30, -66, 6, -24, -64, 34, 25, -9,
					-- layer=2 filter=61 channel=23
					-29, 25, 64, -63, -19, 85, -18, -11, 17,
					-- layer=2 filter=61 channel=24
					66, 46, 27, 80, 82, 94, 6, 30, 35,
					-- layer=2 filter=61 channel=25
					-30, 27, -31, -38, 19, 22, -56, 3, 40,
					-- layer=2 filter=61 channel=26
					26, 1, -34, 13, -19, -50, 45, 28, -9,
					-- layer=2 filter=61 channel=27
					0, -29, -3, -11, -22, -29, 10, 28, 29,
					-- layer=2 filter=61 channel=28
					23, 39, 5, 30, 31, 33, 24, 18, 29,
					-- layer=2 filter=61 channel=29
					5, 8, -26, 41, 62, 50, 23, 59, 80,
					-- layer=2 filter=61 channel=30
					-54, -61, 8, -36, -45, -6, -17, -8, -2,
					-- layer=2 filter=61 channel=31
					8, -38, -54, 54, -17, -42, 84, 34, 17,
					-- layer=2 filter=62 channel=0
					6, -2, -14, -1, -2, -27, 4, -16, -13,
					-- layer=2 filter=62 channel=1
					4, 41, 46, 37, 5, 29, 29, 41, 7,
					-- layer=2 filter=62 channel=2
					-76, -89, -75, -69, -119, -113, -109, -66, -95,
					-- layer=2 filter=62 channel=3
					-8, 55, 47, 40, 55, -1, 39, 41, 21,
					-- layer=2 filter=62 channel=4
					-83, -73, -82, -77, -106, -49, -87, -81, -54,
					-- layer=2 filter=62 channel=5
					0, 39, 24, 2, 43, 52, -41, 18, 16,
					-- layer=2 filter=62 channel=6
					14, 40, 50, -20, -19, -13, -59, -36, -10,
					-- layer=2 filter=62 channel=7
					38, 28, -17, 13, -11, 7, 2, 2, -4,
					-- layer=2 filter=62 channel=8
					-25, -38, -12, 4, -11, 26, -28, -11, -57,
					-- layer=2 filter=62 channel=9
					-16, -17, 23, -9, -46, -9, 0, 9, 0,
					-- layer=2 filter=62 channel=10
					-7, -23, -2, -7, 0, 30, -35, -18, -54,
					-- layer=2 filter=62 channel=11
					-20, -15, -27, 4, 28, 9, -9, -38, 20,
					-- layer=2 filter=62 channel=12
					29, -2, 30, 2, 40, 42, -20, 0, 10,
					-- layer=2 filter=62 channel=13
					15, 6, 7, 14, -21, -15, 15, 14, 26,
					-- layer=2 filter=62 channel=14
					17, 25, 7, 7, 26, 25, -30, -35, -22,
					-- layer=2 filter=62 channel=15
					-1, 6, 0, -2, 18, 10, 14, 15, 17,
					-- layer=2 filter=62 channel=16
					-28, -28, 7, 22, 0, -6, 33, 14, 25,
					-- layer=2 filter=62 channel=17
					38, 22, 39, 12, 5, 15, 11, -9, -13,
					-- layer=2 filter=62 channel=18
					21, -18, -46, 30, -40, -84, 13, -29, -42,
					-- layer=2 filter=62 channel=19
					-10, 30, 43, 2, 23, 39, -9, -7, 11,
					-- layer=2 filter=62 channel=20
					-2, 11, -8, -3, -3, -21, -18, 5, 0,
					-- layer=2 filter=62 channel=21
					30, 40, 15, 15, -3, 23, 19, 26, 31,
					-- layer=2 filter=62 channel=22
					16, 35, 41, 7, -3, 12, -7, -5, 0,
					-- layer=2 filter=62 channel=23
					23, 9, 27, 10, 41, 22, -60, -57, -14,
					-- layer=2 filter=62 channel=24
					-137, -59, -103, -96, -29, -43, -78, -29, 11,
					-- layer=2 filter=62 channel=25
					-14, 7, 9, -7, -27, -6, 30, 5, 8,
					-- layer=2 filter=62 channel=26
					-2, 10, 8, -15, -11, -13, -5, -15, 19,
					-- layer=2 filter=62 channel=27
					19, 3, 10, -14, 35, 41, -34, 6, 2,
					-- layer=2 filter=62 channel=28
					-21, 23, -4, 24, -12, -58, -15, 11, -54,
					-- layer=2 filter=62 channel=29
					-11, 7, -6, -2, -29, -7, -19, -34, -20,
					-- layer=2 filter=62 channel=30
					2, 8, 7, 13, 8, 0, -25, -28, -3,
					-- layer=2 filter=62 channel=31
					17, 19, 7, 25, 27, 29, 32, 36, 5,
					-- layer=2 filter=63 channel=0
					-3, -13, -27, -20, -5, 18, 9, 3, 5,
					-- layer=2 filter=63 channel=1
					15, 24, 0, 28, 38, 24, 70, 71, 35,
					-- layer=2 filter=63 channel=2
					34, 7, -1, 13, -57, -3, -21, -41, 2,
					-- layer=2 filter=63 channel=3
					-2, -4, 15, -26, -27, -4, -105, -57, 11,
					-- layer=2 filter=63 channel=4
					-1, -25, 0, -106, -68, -48, -96, -49, -25,
					-- layer=2 filter=63 channel=5
					14, 35, 19, 14, 10, -15, 65, 37, 35,
					-- layer=2 filter=63 channel=6
					39, 8, 39, -25, 19, -17, -54, -22, -11,
					-- layer=2 filter=63 channel=7
					6, 4, 5, -8, -14, -6, -20, 10, -16,
					-- layer=2 filter=63 channel=8
					-1, 4, -19, -1, 21, 36, 9, -18, 29,
					-- layer=2 filter=63 channel=9
					10, 27, 4, 5, 19, 23, -7, 32, -13,
					-- layer=2 filter=63 channel=10
					0, 6, -4, 11, 11, 35, 11, 22, 5,
					-- layer=2 filter=63 channel=11
					-39, -30, -4, -9, -46, -18, 6, 4, -12,
					-- layer=2 filter=63 channel=12
					-17, -13, 12, -29, -24, -28, 12, -18, -9,
					-- layer=2 filter=63 channel=13
					-38, 33, -4, -12, 44, 15, 0, 58, 27,
					-- layer=2 filter=63 channel=14
					3, -19, -3, -22, -33, -3, -2, 4, -1,
					-- layer=2 filter=63 channel=15
					9, -4, -11, -20, -7, -17, 21, 10, 12,
					-- layer=2 filter=63 channel=16
					9, 30, 57, 27, 70, 69, -8, 14, 63,
					-- layer=2 filter=63 channel=17
					11, 35, 23, 6, 11, 1, -28, -7, 15,
					-- layer=2 filter=63 channel=18
					70, 38, -29, -4, -44, -80, -44, -41, -54,
					-- layer=2 filter=63 channel=19
					57, 8, 18, 8, -12, 3, -18, -19, -19,
					-- layer=2 filter=63 channel=20
					12, -10, 4, -3, -50, -63, -24, -72, -57,
					-- layer=2 filter=63 channel=21
					27, 39, 12, -12, -27, -30, -23, -7, -36,
					-- layer=2 filter=63 channel=22
					4, 30, 20, -24, 14, -1, -26, 13, -42,
					-- layer=2 filter=63 channel=23
					11, 16, 18, -10, 24, 16, -19, -6, -22,
					-- layer=2 filter=63 channel=24
					-12, -60, -58, -53, -84, -34, 11, -54, -99,
					-- layer=2 filter=63 channel=25
					31, 6, 21, 18, 34, 27, -19, 20, 18,
					-- layer=2 filter=63 channel=26
					-8, 8, 12, -14, 40, 22, -17, 22, 45,
					-- layer=2 filter=63 channel=27
					6, -6, 5, -7, -3, -13, 37, -21, -27,
					-- layer=2 filter=63 channel=28
					-15, 2, -20, -41, -43, -28, -83, -60, 22,
					-- layer=2 filter=63 channel=29
					-32, -43, -29, -17, -19, -45, 31, -2, 19,
					-- layer=2 filter=63 channel=30
					45, 4, -9, 0, -29, -47, -12, -44, -43,
					-- layer=2 filter=63 channel=31
					2, 11, 0, -42, 12, -7, -16, 15, 31,

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 96, 108, 55, 33, 
			56, 12, 76, 0, 0, 0, 23, 
			0, 15, 42, 0, 0, 21, 7, 
			0, 43, 95, 97, 17, 19, 0, 
			0, 0, 41, 0, 93, 115, 0, 
			67, 70, 184, 90, 0, 0, 0, 
			23, 214, 35, 0, 0, 0, 0, 
			

			5, 0, 0, 28, 58, 31, 39, 
			314, 14, 0, 29, 194, 36, 56, 
			128, 111, 0, 23, 463, 34, 0, 
			0, 22, 0, 96, 242, 0, 0, 
			0, 378, 146, 0, 0, 10, 0, 
			0, 157, 206, 0, 13, 0, 0, 
			123, 0, 124, 12, 0, 3, 0, 
			

			0, 0, 15, 0, 0, 0, 0, 
			0, 0, 0, 0, 17, 0, 0, 
			0, 0, 0, 0, 54, 0, 0, 
			0, 0, 56, 0, 0, 0, 0, 
			0, 0, 0, 75, 0, 0, 119, 
			0, 157, 0, 0, 0, 45, 0, 
			21, 0, 0, 0, 19, 0, 33, 
			

			0, 6, 0, 0, 0, 0, 0, 
			0, 0, 0, 13, 0, 0, 121, 
			0, 110, 0, 0, 0, 106, 0, 
			0, 6, 0, 0, 0, 203, 0, 
			0, 0, 60, 57, 27, 55, 0, 
			0, 0, 0, 0, 6, 0, 0, 
			50, 182, 0, 8, 0, 10, 0, 
			

			57, 103, 0, 12, 32, 17, 46, 
			0, 42, 0, 21, 54, 9, 23, 
			0, 0, 0, 9, 11, 25, 6, 
			0, 23, 0, 13, 41, 9, 0, 
			8, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 23, 0, 13, 
			9, 0, 22, 38, 26, 19, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			5, 0, 1, 2, 0, 0, 0, 
			0, 0, 27, 0, 14, 17, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 15, 0, 0, 0, 0, 
			59, 2, 0, 1, 6, 24, 21, 
			

			0, 0, 0, 0, 0, 11, 0, 
			5, 0, 0, 17, 6, 28, 64, 
			1, 0, 31, 12, 5, 23, 45, 
			8, 33, 18, 8, 19, 34, 48, 
			0, 0, 56, 49, 0, 46, 26, 
			0, 8, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			34, 0, 0, 74, 74, 42, 50, 
			0, 9, 9, 10, 0, 17, 50, 
			0, 0, 0, 5, 0, 62, 4, 
			25, 31, 0, 91, 0, 78, 0, 
			0, 0, 22, 0, 93, 91, 0, 
			13, 0, 131, 95, 0, 0, 0, 
			0, 91, 28, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 41, 0, 25, 0, 
			0, 0, 0, 60, 0, 23, 0, 
			54, 0, 0, 16, 0, 0, 0, 
			31, 0, 8, 23, 14, 0, 0, 
			0, 0, 170, 59, 86, 39, 47, 
			0, 39, 135, 86, 77, 76, 114, 
			

			104, 97, 81, 148, 45, 0, 77, 
			0, 56, 37, 0, 24, 12, 10, 
			0, 155, 45, 0, 14, 28, 0, 
			0, 0, 116, 57, 57, 54, 27, 
			0, 0, 19, 0, 75, 29, 2, 
			77, 80, 146, 80, 0, 0, 0, 
			36, 158, 0, 0, 0, 18, 21, 
			

			50, 75, 28, 0, 0, 0, 0, 
			0, 0, 0, 0, 78, 0, 0, 
			0, 55, 44, 0, 37, 0, 0, 
			0, 0, 100, 0, 63, 0, 17, 
			19, 0, 0, 0, 0, 0, 0, 
			95, 2, 0, 7, 0, 20, 11, 
			4, 83, 4, 24, 50, 46, 23, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 13, 13, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			13, 0, 0, 0, 22, 0, 14, 
			30, 0, 0, 6, 0, 0, 1, 
			33, 0, 0, 0, 0, 18, 27, 
			0, 0, 0, 57, 56, 65, 46, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 34, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 35, 
			0, 23, 124, 3, 0, 26, 0, 
			0, 26, 0, 21, 6, 24, 23, 
			0, 0, 12, 30, 36, 53, 64, 
			

			129, 146, 39, 108, 25, 0, 51, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 112, 0, 0, 0, 5, 0, 
			0, 0, 28, 79, 56, 56, 0, 
			54, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 19, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 28, 66, 101, 38, 
			102, 0, 0, 98, 78, 89, 86, 
			119, 25, 0, 77, 96, 53, 71, 
			183, 116, 12, 40, 37, 24, 57, 
			133, 120, 57, 80, 110, 132, 138, 
			154, 139, 169, 146, 156, 171, 187, 
			

			0, 0, 10, 166, 181, 169, 103, 
			80, 70, 151, 77, 0, 0, 28, 
			45, 17, 28, 0, 0, 33, 0, 
			29, 104, 29, 0, 0, 0, 0, 
			0, 0, 43, 47, 55, 52, 106, 
			64, 36, 209, 103, 86, 115, 66, 
			23, 97, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 15, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 6, 0, 0, 33, 0, 
			104, 0, 179, 155, 125, 156, 124, 
			193, 125, 160, 152, 169, 194, 176, 
			

			6, 28, 0, 0, 0, 0, 0, 
			0, 17, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			98, 97, 75, 81, 80, 73, 65, 
			97, 136, 83, 91, 94, 90, 42, 
			104, 90, 96, 118, 95, 115, 60, 
			118, 109, 78, 123, 70, 65, 93, 
			92, 151, 70, 59, 79, 16, 21, 
			35, 46, 47, 0, 0, 0, 0, 
			0, 13, 0, 0, 0, 0, 0, 
			

			99, 115, 123, 87, 86, 75, 72, 
			69, 112, 67, 64, 5, 18, 68, 
			43, 50, 34, 30, 0, 36, 60, 
			7, 93, 0, 9, 0, 33, 33, 
			0, 6, 0, 21, 25, 23, 43, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			90, 94, 74, 44, 38, 49, 71, 
			60, 54, 0, 38, 38, 58, 62, 
			80, 14, 2, 70, 49, 46, 45, 
			63, 53, 38, 90, 68, 53, 73, 
			68, 28, 0, 8, 44, 0, 29, 
			0, 2, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 23, 0, 
			10, 0, 50, 17, 0, 17, 0, 
			76, 0, 0, 46, 0, 2, 0, 
			118, 28, 0, 17, 0, 0, 0, 
			110, 18, 123, 134, 26, 24, 62, 
			0, 175, 61, 51, 53, 72, 76, 
			

			278, 266, 190, 209, 116, 108, 193, 
			190, 240, 150, 21, 53, 3, 43, 
			85, 62, 123, 28, 52, 0, 16, 
			64, 100, 87, 17, 10, 0, 64, 
			31, 64, 48, 39, 47, 23, 118, 
			55, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 43, 0, 108, 0, 
			9, 0, 0, 151, 0, 101, 132, 
			111, 0, 0, 237, 0, 176, 98, 
			196, 121, 0, 83, 0, 146, 0, 
			70, 0, 37, 118, 83, 31, 0, 
			0, 0, 162, 0, 36, 0, 0, 
			6, 17, 0, 11, 0, 0, 0, 
			

			6, 0, 30, 17, 92, 50, 36, 
			158, 80, 138, 52, 70, 44, 38, 
			66, 54, 89, 46, 151, 34, 54, 
			34, 42, 49, 53, 39, 0, 31, 
			23, 175, 166, 43, 55, 102, 33, 
			28, 154, 189, 40, 0, 16, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 11, 
			31, 0, 0, 0, 0, 0, 0, 
			48, 24, 5, 42, 32, 25, 0, 
			71, 126, 134, 138, 167, 179, 176, 
			208, 125, 174, 163, 172, 191, 225, 
			

			0, 2, 0, 0, 0, 0, 0, 
			0, 4, 47, 42, 0, 78, 0, 
			0, 101, 0, 83, 0, 58, 0, 
			17, 5, 0, 80, 0, 37, 0, 
			28, 0, 139, 0, 0, 0, 0, 
			0, 0, 0, 0, 34, 0, 4, 
			0, 0, 18, 24, 13, 36, 10, 
			

			0, 0, 0, 0, 77, 0, 4, 
			80, 18, 0, 0, 51, 0, 30, 
			0, 63, 0, 0, 145, 0, 0, 
			0, 37, 0, 0, 0, 0, 0, 
			0, 68, 10, 0, 0, 119, 0, 
			0, 0, 0, 0, 103, 66, 5, 
			166, 0, 97, 48, 65, 56, 11, 
			

			0, 3, 0, 0, 0, 0, 0, 
			0, 41, 78, 35, 0, 34, 0, 
			35, 0, 45, 111, 0, 5, 46, 
			92, 0, 0, 0, 0, 0, 0, 
			43, 3, 46, 44, 0, 0, 0, 
			0, 0, 0, 0, 94, 94, 83, 
			0, 0, 0, 48, 54, 48, 57, 
			

			144, 176, 162, 103, 103, 74, 104, 
			106, 180, 121, 37, 59, 20, 67, 
			52, 106, 66, 0, 52, 0, 36, 
			0, 34, 44, 0, 39, 0, 60, 
			0, 51, 23, 8, 0, 0, 70, 
			0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 23, 0, 
			0, 0, 0, 0, 22, 10, 45, 
			1, 0, 0, 3, 23, 18, 47, 
			69, 30, 0, 8, 21, 2, 0, 
			96, 66, 57, 39, 58, 58, 38, 
			105, 7, 72, 126, 126, 136, 150, 
			187, 102, 146, 150, 158, 169, 171, 
			
		others=>0 );
END inmem_package;

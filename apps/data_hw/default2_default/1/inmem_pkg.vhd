LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					-1824, -2807, -394, -3728, 115, 12289, -18512, 10764, 1313, 1700, -6161, -6351, 3522, 5582, 2938, 5811, -2491, -752, -3965, 9026, 3029, 8995, -1887, 2659, 3850, 624, 6082, -8705, 2006, -4578, 6374, 10825,

					-- weights
					-- layer=1 filter=0 channel=0
					6, -11, -14, 0, -19, -6, -19, -9, -14,
					-- layer=1 filter=0 channel=1
					5, -17, -41, -49, -3, 23, -35, 16, -23,
					-- layer=1 filter=0 channel=2
					-3, -28, 5, -21, -21, -36, -11, 2, -36,
					-- layer=1 filter=0 channel=3
					-30, -47, 8, 4, -11, -2, -45, -33, -36,
					-- layer=1 filter=0 channel=4
					-22, -34, -9, 12, -1, -5, 0, -24, 28,
					-- layer=1 filter=0 channel=5
					20, 9, 19, 0, -22, -10, 4, -7, 21,
					-- layer=1 filter=0 channel=6
					-4, -11, -28, -6, 22, 19, -20, -4, -6,
					-- layer=1 filter=0 channel=7
					-22, -7, 9, -22, -28, 28, -14, 26, 4,
					-- layer=1 filter=0 channel=8
					-19, 7, -13, -12, -28, -30, -11, 21, -8,
					-- layer=1 filter=0 channel=9
					0, -16, 15, -37, -15, -30, -39, -44, -41,
					-- layer=1 filter=0 channel=10
					-12, -11, -30, -38, -17, -38, -8, -29, -48,
					-- layer=1 filter=0 channel=11
					-28, 0, 22, -24, 12, -7, -26, -48, -35,
					-- layer=1 filter=0 channel=12
					5, -14, 14, 3, -13, -19, -29, -37, -32,
					-- layer=1 filter=0 channel=13
					-6, 23, 13, 6, -17, 0, -25, 19, -27,
					-- layer=1 filter=0 channel=14
					-5, -34, 4, -26, -22, -22, 18, 5, 10,
					-- layer=1 filter=0 channel=15
					13, -7, -6, -4, 0, -36, -38, -32, -11,
					-- layer=1 filter=1 channel=0
					20, 21, 44, 9, 10, 30, -11, -18, 14,
					-- layer=1 filter=1 channel=1
					22, 22, -1, 10, -2, 19, -19, 20, 20,
					-- layer=1 filter=1 channel=2
					8, 11, -3, -22, 0, -24, -18, -10, 0,
					-- layer=1 filter=1 channel=3
					48, 38, 21, 13, 15, -15, -46, -53, -30,
					-- layer=1 filter=1 channel=4
					39, 54, 18, 41, 87, 79, 4, 60, 46,
					-- layer=1 filter=1 channel=5
					10, 54, 12, 9, -12, -20, -33, -44, -39,
					-- layer=1 filter=1 channel=6
					17, 26, -19, 10, 0, 7, -81, -63, -26,
					-- layer=1 filter=1 channel=7
					4, 29, 49, -8, -6, -16, -32, -61, -41,
					-- layer=1 filter=1 channel=8
					20, 88, 17, 61, 104, 48, -16, 15, -34,
					-- layer=1 filter=1 channel=9
					15, 10, 48, -24, 18, -9, -44, 1, -35,
					-- layer=1 filter=1 channel=10
					58, 63, 78, 89, 96, 98, 41, 73, 55,
					-- layer=1 filter=1 channel=11
					23, 18, 11, -10, -26, 6, -26, 3, -22,
					-- layer=1 filter=1 channel=12
					16, 17, -8, 23, -5, 5, -6, -5, 26,
					-- layer=1 filter=1 channel=13
					-20, -57, -65, -18, 43, 33, 30, 18, 4,
					-- layer=1 filter=1 channel=14
					33, 61, 53, 13, 9, -8, -46, -23, -29,
					-- layer=1 filter=1 channel=15
					11, 28, 34, 6, 2, -34, -38, -56, -54,
					-- layer=1 filter=2 channel=0
					9, -59, -17, 30, -65, 6, 50, -28, 9,
					-- layer=1 filter=2 channel=1
					-46, 23, 2, -30, 4, -10, -50, -10, 44,
					-- layer=1 filter=2 channel=2
					17, 31, -14, -54, 27, -12, -8, 8, 7,
					-- layer=1 filter=2 channel=3
					59, -82, 25, 95, -78, 19, 94, -41, -2,
					-- layer=1 filter=2 channel=4
					18, -48, -39, 1, -13, -28, -22, -5, -4,
					-- layer=1 filter=2 channel=5
					30, -18, 26, -9, -49, 0, 31, 3, 5,
					-- layer=1 filter=2 channel=6
					-92, 86, 23, -157, 139, 11, -118, 70, 29,
					-- layer=1 filter=2 channel=7
					31, 11, -35, 20, -22, -13, 22, -44, -1,
					-- layer=1 filter=2 channel=8
					20, -16, -26, 27, -22, -9, -12, -36, -9,
					-- layer=1 filter=2 channel=9
					-30, -9, 23, -10, -31, 20, 34, -11, -17,
					-- layer=1 filter=2 channel=10
					51, -27, -16, 98, 2, -19, 15, 35, -2,
					-- layer=1 filter=2 channel=11
					-37, 69, 19, -110, 80, 5, -69, 26, 28,
					-- layer=1 filter=2 channel=12
					-141, 71, 12, -183, 87, 27, -152, 84, 14,
					-- layer=1 filter=2 channel=13
					18, -46, -6, -14, -42, -23, 25, -3, -10,
					-- layer=1 filter=2 channel=14
					8, 3, 18, 34, -8, -3, 4, -43, 1,
					-- layer=1 filter=2 channel=15
					66, -86, 1, 69, -55, 13, -6, -5, -40,
					-- layer=1 filter=3 channel=0
					27, 28, -12, 48, -29, -12, -35, 0, -5,
					-- layer=1 filter=3 channel=1
					22, -8, 30, -13, -21, 17, -36, 22, 54,
					-- layer=1 filter=3 channel=2
					-82, -26, 30, -18, 11, 59, 6, -13, 45,
					-- layer=1 filter=3 channel=3
					-75, -34, -29, -125, -60, 10, -89, -17, 64,
					-- layer=1 filter=3 channel=4
					-59, 0, 36, -11, 66, 20, 22, 26, -29,
					-- layer=1 filter=3 channel=5
					10, 14, -18, -26, -29, 9, -39, -16, -5,
					-- layer=1 filter=3 channel=6
					22, 42, 71, 76, 28, 28, 71, -2, 4,
					-- layer=1 filter=3 channel=7
					41, -33, -24, 17, -56, -37, -31, -7, -16,
					-- layer=1 filter=3 channel=8
					31, -30, -26, -51, -63, 8, -84, 0, -7,
					-- layer=1 filter=3 channel=9
					-34, -17, 45, -17, 17, 22, -41, 15, 48,
					-- layer=1 filter=3 channel=10
					0, -50, -51, -50, -54, 13, -108, -56, 2,
					-- layer=1 filter=3 channel=11
					-39, -7, 11, -19, 14, 63, 1, 23, 40,
					-- layer=1 filter=3 channel=12
					22, 66, 77, 80, 79, 60, 73, 42, -14,
					-- layer=1 filter=3 channel=13
					-54, 49, 57, 15, 50, -22, 58, 42, 33,
					-- layer=1 filter=3 channel=14
					-30, 18, 12, -60, 27, 25, -37, 41, 6,
					-- layer=1 filter=3 channel=15
					-23, -82, -116, -64, -97, -36, -86, -46, -20,
					-- layer=1 filter=4 channel=0
					15, 21, -16, -10, 10, -43, -20, 52, -43,
					-- layer=1 filter=4 channel=1
					24, -25, 6, 5, -32, 11, -2, -14, -4,
					-- layer=1 filter=4 channel=2
					-8, -12, 5, 44, -52, 37, 47, -64, 39,
					-- layer=1 filter=4 channel=3
					12, 68, -46, -38, 97, -84, -27, 74, -56,
					-- layer=1 filter=4 channel=4
					3, -16, -27, -54, -52, -43, 29, -60, 14,
					-- layer=1 filter=4 channel=5
					-3, 12, -18, 12, 46, -40, -15, 25, -59,
					-- layer=1 filter=4 channel=6
					27, -69, 25, 57, -200, 104, 49, -150, 95,
					-- layer=1 filter=4 channel=7
					43, 5, 25, -26, 51, 5, 15, 57, -57,
					-- layer=1 filter=4 channel=8
					0, 3, -13, -5, -5, -35, -52, 7, -60,
					-- layer=1 filter=4 channel=9
					15, -9, -18, -8, 0, -15, 41, -4, -21,
					-- layer=1 filter=4 channel=10
					-47, 44, -23, -53, 62, -31, -65, 57, -45,
					-- layer=1 filter=4 channel=11
					29, -38, 35, 30, -91, 42, 42, -136, 91,
					-- layer=1 filter=4 channel=12
					28, -48, 18, 84, -122, 78, 89, -153, 127,
					-- layer=1 filter=4 channel=13
					32, 4, -13, 30, -30, 23, 15, 3, -6,
					-- layer=1 filter=4 channel=14
					13, 22, -24, -2, 28, -60, 49, 0, -25,
					-- layer=1 filter=4 channel=15
					-34, 51, -55, -45, 96, -127, 9, 76, -84,
					-- layer=1 filter=5 channel=0
					19, -17, -15, -16, -15, -20, 7, 4, -7,
					-- layer=1 filter=5 channel=1
					16, -12, 25, -58, -1, -32, -37, -66, -59,
					-- layer=1 filter=5 channel=2
					17, -6, 35, -23, 16, 17, 15, 1, 33,
					-- layer=1 filter=5 channel=3
					47, 5, 12, 10, 8, 17, 58, -3, -19,
					-- layer=1 filter=5 channel=4
					-111, -112, -120, -151, -221, -117, -131, -131, -108,
					-- layer=1 filter=5 channel=5
					34, 12, -7, 26, -6, -26, 56, 23, -31,
					-- layer=1 filter=5 channel=6
					14, 39, 18, -3, 35, 9, -3, 15, -24,
					-- layer=1 filter=5 channel=7
					13, 22, 21, -17, -20, 31, 15, 18, 9,
					-- layer=1 filter=5 channel=8
					6, -42, -21, -59, -79, -88, -82, -91, -101,
					-- layer=1 filter=5 channel=9
					-34, 10, -29, 23, -10, -37, -2, -16, 21,
					-- layer=1 filter=5 channel=10
					-25, -73, -9, -61, -121, -124, -68, -108, -114,
					-- layer=1 filter=5 channel=11
					15, -19, 31, -2, -1, 32, -25, 1, 11,
					-- layer=1 filter=5 channel=12
					-29, 35, 7, 16, 40, 7, 20, 47, 2,
					-- layer=1 filter=5 channel=13
					-113, -130, -87, -143, -144, -80, -83, -56, -29,
					-- layer=1 filter=5 channel=14
					-9, 2, -30, 18, -27, -51, 28, 12, 1,
					-- layer=1 filter=5 channel=15
					-8, 13, -18, 0, 30, 10, 19, 25, 34,
					-- layer=1 filter=6 channel=0
					22, 40, -4, -9, 29, -16, 38, 59, 23,
					-- layer=1 filter=6 channel=1
					27, 47, -35, -3, -13, 13, -43, -39, -45,
					-- layer=1 filter=6 channel=2
					50, 16, 40, 42, 4, 8, 20, 3, 12,
					-- layer=1 filter=6 channel=3
					44, 47, -22, 29, -9, 13, -3, 24, -16,
					-- layer=1 filter=6 channel=4
					-3, 66, -41, 48, 48, 33, 27, 10, 13,
					-- layer=1 filter=6 channel=5
					-61, -29, -14, -17, -5, -1, 68, 63, 11,
					-- layer=1 filter=6 channel=6
					-22, 6, 3, 33, 25, 47, 25, 53, 15,
					-- layer=1 filter=6 channel=7
					-84, -101, -82, -4, -4, 1, 29, 39, 19,
					-- layer=1 filter=6 channel=8
					-20, -37, -35, -9, 2, -26, -15, 60, 22,
					-- layer=1 filter=6 channel=9
					43, 8, 15, -5, -13, 0, 25, -33, 13,
					-- layer=1 filter=6 channel=10
					51, 37, 40, -6, 22, -25, -3, 13, -49,
					-- layer=1 filter=6 channel=11
					55, 16, 6, 5, 15, 14, -51, -51, 14,
					-- layer=1 filter=6 channel=12
					24, 38, 54, 39, -7, 6, -23, -66, -30,
					-- layer=1 filter=6 channel=13
					22, 10, -22, 15, -27, -40, 2, -42, -33,
					-- layer=1 filter=6 channel=14
					-59, 9, -16, 32, 28, 31, 45, 24, 41,
					-- layer=1 filter=6 channel=15
					-42, 6, 9, -51, -43, 38, -19, -34, -60,
					-- layer=1 filter=7 channel=0
					-35, -34, -57, -10, -34, -23, 2, 31, 22,
					-- layer=1 filter=7 channel=1
					-18, -41, 0, -42, -40, -20, -19, -45, 2,
					-- layer=1 filter=7 channel=2
					-15, 1, 28, -7, -2, -11, -9, 0, 10,
					-- layer=1 filter=7 channel=3
					2, -1, -5, -12, -8, 0, -36, -17, 6,
					-- layer=1 filter=7 channel=4
					38, 42, -10, 60, 59, 19, 68, 72, 39,
					-- layer=1 filter=7 channel=5
					-11, 10, -9, -11, -1, 18, 36, 38, 7,
					-- layer=1 filter=7 channel=6
					0, 38, 48, 24, 3, 46, 22, -13, 12,
					-- layer=1 filter=7 channel=7
					-51, -110, -86, -63, -82, -126, -99, -96, -149,
					-- layer=1 filter=7 channel=8
					35, -38, -12, 4, 30, -31, -49, 6, -17,
					-- layer=1 filter=7 channel=9
					0, -33, 11, -8, -15, -33, 21, 27, -34,
					-- layer=1 filter=7 channel=10
					43, 32, 1, 33, 61, 12, 2, 30, 33,
					-- layer=1 filter=7 channel=11
					34, 0, 32, -7, -1, 2, -1, 0, -20,
					-- layer=1 filter=7 channel=12
					-5, 21, -15, 8, -30, 32, 2, -11, 14,
					-- layer=1 filter=7 channel=13
					-14, -48, -32, 19, -33, -47, -56, -40, -40,
					-- layer=1 filter=7 channel=14
					-48, -16, -31, -12, -30, 11, 8, -8, 13,
					-- layer=1 filter=7 channel=15
					0, -14, -44, -5, -8, -48, -20, -22, -4,
					-- layer=1 filter=8 channel=0
					25, 13, 21, -15, -5, -11, 0, -54, -74,
					-- layer=1 filter=8 channel=1
					-24, 27, 43, -8, 12, -7, 28, -16, 37,
					-- layer=1 filter=8 channel=2
					9, 1, -28, -10, -15, 32, -27, -25, 21,
					-- layer=1 filter=8 channel=3
					-4, 18, 16, 39, 32, 18, 15, 18, 20,
					-- layer=1 filter=8 channel=4
					21, -58, -42, -115, -73, 33, -46, 15, 4,
					-- layer=1 filter=8 channel=5
					35, 2, 34, 6, -2, 18, -7, -20, -27,
					-- layer=1 filter=8 channel=6
					26, -7, 20, -17, 26, 29, -13, 22, 17,
					-- layer=1 filter=8 channel=7
					29, 12, 12, 38, 22, 32, 21, 14, 15,
					-- layer=1 filter=8 channel=8
					39, 38, 12, 5, 14, -7, 10, 46, 0,
					-- layer=1 filter=8 channel=9
					44, 26, -1, 10, -41, -21, 3, -32, -48,
					-- layer=1 filter=8 channel=10
					-2, 63, 24, 73, 61, 33, 63, 57, 41,
					-- layer=1 filter=8 channel=11
					-60, -41, -10, -45, -8, -13, -13, 16, -3,
					-- layer=1 filter=8 channel=12
					49, -34, -21, -22, -86, -40, -16, -27, 26,
					-- layer=1 filter=8 channel=13
					13, -45, -60, -46, -10, -8, -28, 41, 40,
					-- layer=1 filter=8 channel=14
					35, 19, -13, -12, -26, -15, -47, -67, -34,
					-- layer=1 filter=8 channel=15
					24, 30, -15, -3, -15, -50, -28, -53, -8,
					-- layer=1 filter=9 channel=0
					46, -24, -59, -19, -5, -24, -9, 36, 4,
					-- layer=1 filter=9 channel=1
					-9, 4, -11, 42, 29, 10, 56, -14, -3,
					-- layer=1 filter=9 channel=2
					28, 19, 20, -15, -21, -3, 2, -19, 4,
					-- layer=1 filter=9 channel=3
					52, 15, -9, 38, 37, -5, 28, 28, 7,
					-- layer=1 filter=9 channel=4
					12, 6, 2, 101, 56, 42, 53, 23, 6,
					-- layer=1 filter=9 channel=5
					-32, -9, -35, -24, -35, -61, -27, -7, -54,
					-- layer=1 filter=9 channel=6
					-35, -53, -68, -89, -136, -158, -11, -106, -100,
					-- layer=1 filter=9 channel=7
					53, 59, 5, -57, -67, -23, -36, -65, -41,
					-- layer=1 filter=9 channel=8
					46, -57, 16, 4, 29, -36, -9, 35, -11,
					-- layer=1 filter=9 channel=9
					10, 8, 0, 25, -30, -23, -6, 17, 3,
					-- layer=1 filter=9 channel=10
					0, 30, -9, 25, 18, 30, 28, 27, 35,
					-- layer=1 filter=9 channel=11
					-10, 14, 26, -6, -8, -14, 43, 27, 15,
					-- layer=1 filter=9 channel=12
					-79, -95, -63, -14, -63, -91, -6, -52, -76,
					-- layer=1 filter=9 channel=13
					5, 14, -22, 64, 60, 62, 10, 55, 48,
					-- layer=1 filter=9 channel=14
					-27, 8, 22, -15, -23, -9, -21, 20, -19,
					-- layer=1 filter=9 channel=15
					-25, -8, 1, 44, 5, 8, 43, 41, 40,
					-- layer=1 filter=10 channel=0
					-24, 5, -21, 1, 0, -2, -5, 24, -5,
					-- layer=1 filter=10 channel=1
					33, -28, -12, 17, 51, 75, -25, -11, 34,
					-- layer=1 filter=10 channel=2
					41, 17, 29, 36, 10, 28, -26, -25, -13,
					-- layer=1 filter=10 channel=3
					-7, -19, 52, 5, 30, -19, -15, -26, -31,
					-- layer=1 filter=10 channel=4
					-5, 29, 24, 18, 19, 30, 35, 27, 18,
					-- layer=1 filter=10 channel=5
					19, 13, -31, 20, 36, -2, 19, 13, -50,
					-- layer=1 filter=10 channel=6
					60, 1, -25, 29, 60, 4, 5, 53, 50,
					-- layer=1 filter=10 channel=7
					22, 0, -19, 66, 50, 62, 27, 27, 37,
					-- layer=1 filter=10 channel=8
					-4, 32, 21, 65, 98, 42, 43, 58, 68,
					-- layer=1 filter=10 channel=9
					24, -3, 9, 13, -6, 23, -24, -52, -54,
					-- layer=1 filter=10 channel=10
					7, 25, 0, 54, 82, 78, 20, 56, 65,
					-- layer=1 filter=10 channel=11
					-17, -5, 2, 0, 35, 42, -3, 17, -7,
					-- layer=1 filter=10 channel=12
					27, 30, 20, 2, 4, -17, -8, -30, 9,
					-- layer=1 filter=10 channel=13
					10, -16, -14, 16, -34, -44, 25, -14, -55,
					-- layer=1 filter=10 channel=14
					-12, 19, -4, -7, 10, -6, -39, -45, -3,
					-- layer=1 filter=10 channel=15
					-6, 9, 35, -5, 30, 0, -9, 9, -8,
					-- layer=1 filter=11 channel=0
					-22, 0, 33, 4, 8, 43, -9, 19, 3,
					-- layer=1 filter=11 channel=1
					31, -3, 23, -28, 20, 30, -5, 45, 53,
					-- layer=1 filter=11 channel=2
					5, 7, 22, -36, 16, -22, -31, 19, -4,
					-- layer=1 filter=11 channel=3
					-10, 26, 42, -43, -36, -16, -50, -69, 21,
					-- layer=1 filter=11 channel=4
					-82, -40, -27, -182, -187, -157, -140, -141, -155,
					-- layer=1 filter=11 channel=5
					0, 15, -28, 14, 4, 0, -10, 26, -23,
					-- layer=1 filter=11 channel=6
					49, 19, -55, 91, 34, -25, 55, 24, -38,
					-- layer=1 filter=11 channel=7
					-9, -6, -53, 40, 3, -40, 81, 32, 6,
					-- layer=1 filter=11 channel=8
					-30, -41, -59, 2, 17, -6, 75, 45, 29,
					-- layer=1 filter=11 channel=9
					-18, 43, 55, -37, 30, 50, -53, 1, 14,
					-- layer=1 filter=11 channel=10
					-63, -130, -52, -55, -55, -45, -53, -58, -21,
					-- layer=1 filter=11 channel=11
					22, 1, 6, 11, 32, 19, -11, 45, 25,
					-- layer=1 filter=11 channel=12
					50, 5, 12, 63, 38, 27, 51, 55, 21,
					-- layer=1 filter=11 channel=13
					-6, 12, 34, -126, -103, -47, -53, -61, -13,
					-- layer=1 filter=11 channel=14
					24, 37, -8, 24, -5, 25, 1, -23, -51,
					-- layer=1 filter=11 channel=15
					2, -39, 39, -8, 21, 25, 24, 25, 26,
					-- layer=1 filter=12 channel=0
					-20, -32, -6, -26, -35, -18, 18, -2, 24,
					-- layer=1 filter=12 channel=1
					-16, 17, -33, 12, 12, -39, -8, -5, -36,
					-- layer=1 filter=12 channel=2
					5, -12, 18, -4, 5, 17, -18, -31, 22,
					-- layer=1 filter=12 channel=3
					-1, 17, -7, 0, 0, 14, -10, -30, -20,
					-- layer=1 filter=12 channel=4
					-50, -97, -93, -51, -56, -65, 18, -20, -1,
					-- layer=1 filter=12 channel=5
					12, 15, 31, 10, 20, 7, 19, -7, 24,
					-- layer=1 filter=12 channel=6
					-18, -2, -4, -34, -37, -17, -49, -15, 18,
					-- layer=1 filter=12 channel=7
					-81, -48, -46, -81, -80, -35, -18, -54, -42,
					-- layer=1 filter=12 channel=8
					-106, -88, -105, -17, -67, -23, -12, 19, -16,
					-- layer=1 filter=12 channel=9
					6, -3, 1, -2, 23, 35, 31, 35, 6,
					-- layer=1 filter=12 channel=10
					-83, -157, -107, -62, -75, -59, -60, -30, -34,
					-- layer=1 filter=12 channel=11
					23, 20, -8, -31, 8, -5, 10, 9, -16,
					-- layer=1 filter=12 channel=12
					11, 30, 3, 18, -9, -16, 23, 14, 17,
					-- layer=1 filter=12 channel=13
					-15, 0, -79, -24, -49, -17, 31, 40, 20,
					-- layer=1 filter=12 channel=14
					-20, -5, -13, 13, 15, 8, -29, -5, -34,
					-- layer=1 filter=12 channel=15
					-13, -41, -48, -17, 11, -51, -3, 40, -9,
					-- layer=1 filter=13 channel=0
					-51, 13, 1, -39, -2, 28, 1, 35, 42,
					-- layer=1 filter=13 channel=1
					16, -17, -7, 14, -32, -20, 10, -5, -35,
					-- layer=1 filter=13 channel=2
					3, -14, 17, -1, -33, -11, 27, 10, 16,
					-- layer=1 filter=13 channel=3
					3, 3, 22, -19, -14, 3, -3, -15, -15,
					-- layer=1 filter=13 channel=4
					61, 20, 44, 106, 95, 92, 105, 77, 117,
					-- layer=1 filter=13 channel=5
					-69, -58, -74, -82, -8, -5, 32, 30, 41,
					-- layer=1 filter=13 channel=6
					-64, -46, -61, -87, -107, -58, -45, -53, -23,
					-- layer=1 filter=13 channel=7
					-101, -89, -67, -67, -75, -75, 27, 39, 19,
					-- layer=1 filter=13 channel=8
					43, 7, -30, 44, 68, 20, -23, 30, 2,
					-- layer=1 filter=13 channel=9
					-15, 30, 17, 0, -15, 1, 0, -18, 15,
					-- layer=1 filter=13 channel=10
					28, 25, 5, 2, 7, 9, 16, -7, -47,
					-- layer=1 filter=13 channel=11
					41, 3, 25, 7, -20, 11, -3, -40, -2,
					-- layer=1 filter=13 channel=12
					12, 30, 2, -11, 14, 21, 12, -30, 7,
					-- layer=1 filter=13 channel=13
					-4, -9, -3, 79, 58, 40, 96, 59, 50,
					-- layer=1 filter=13 channel=14
					-49, -14, -12, -5, 24, -19, -5, -1, 56,
					-- layer=1 filter=13 channel=15
					-6, -29, -10, -8, -26, -5, -10, 22, 8,
					-- layer=1 filter=14 channel=0
					6, -16, -3, 24, 7, -6, -2, -16, -16,
					-- layer=1 filter=14 channel=1
					-33, 0, 46, -31, -6, 6, -74, -37, -14,
					-- layer=1 filter=14 channel=2
					-3, -2, 31, -33, -31, -20, 0, 9, 1,
					-- layer=1 filter=14 channel=3
					25, 6, 31, 30, 8, 5, -2, 5, -21,
					-- layer=1 filter=14 channel=4
					-157, -170, -29, -270, -330, -229, -205, -226, -209,
					-- layer=1 filter=14 channel=5
					60, 43, -19, 41, 25, -13, 59, 39, 0,
					-- layer=1 filter=14 channel=6
					25, -3, -8, 57, 3, -14, 17, 12, -22,
					-- layer=1 filter=14 channel=7
					30, -10, 0, 15, 4, -5, 81, 25, 42,
					-- layer=1 filter=14 channel=8
					0, -41, 16, 45, -17, 44, 19, -11, -13,
					-- layer=1 filter=14 channel=9
					36, 13, 11, -21, -11, 31, -3, 15, -1,
					-- layer=1 filter=14 channel=10
					-16, -45, -22, -35, -29, -34, -26, -57, -6,
					-- layer=1 filter=14 channel=11
					-2, -3, 1, -34, -5, 28, -14, -41, -28,
					-- layer=1 filter=14 channel=12
					36, 30, -22, 23, -9, -36, 6, -4, -8,
					-- layer=1 filter=14 channel=13
					-120, -132, 14, -238, -198, -163, -149, -200, -124,
					-- layer=1 filter=14 channel=14
					31, 3, -8, 17, 33, 1, -19, -2, -20,
					-- layer=1 filter=14 channel=15
					-51, -11, -16, -47, -27, -7, 0, -22, 19,
					-- layer=1 filter=15 channel=0
					51, 46, -10, -25, 22, 29, 48, 51, 11,
					-- layer=1 filter=15 channel=1
					47, -12, 26, 41, 1, -33, 22, -12, -12,
					-- layer=1 filter=15 channel=2
					-6, 15, 21, -5, -48, -23, -7, -56, -48,
					-- layer=1 filter=15 channel=3
					-1, -20, -3, -7, 3, -19, -27, -36, 9,
					-- layer=1 filter=15 channel=4
					-38, -20, -13, -10, -80, 7, -47, -21, 1,
					-- layer=1 filter=15 channel=5
					-26, -29, -32, -18, -2, -14, -27, -25, 1,
					-- layer=1 filter=15 channel=6
					-50, -77, -85, -60, -82, -61, -110, -115, -66,
					-- layer=1 filter=15 channel=7
					-174, -94, -42, -125, -139, -76, -108, -139, -112,
					-- layer=1 filter=15 channel=8
					-45, -39, -33, -54, -27, -42, -62, -57, -60,
					-- layer=1 filter=15 channel=9
					43, 37, 1, 39, 31, 31, 20, 23, 1,
					-- layer=1 filter=15 channel=10
					33, -18, 16, -21, -7, -22, -15, -28, 7,
					-- layer=1 filter=15 channel=11
					11, 20, 39, 7, 0, 10, 28, 35, -1,
					-- layer=1 filter=15 channel=12
					-3, 63, 14, 22, 74, 40, 40, 54, 63,
					-- layer=1 filter=15 channel=13
					-23, 28, -64, -53, -20, 1, 25, 12, 15,
					-- layer=1 filter=15 channel=14
					-37, 8, 16, 0, -35, -2, -50, -21, -27,
					-- layer=1 filter=15 channel=15
					38, 29, 13, 56, 101, 105, 77, 126, 115,
					-- layer=1 filter=16 channel=0
					40, 43, 7, -4, 18, -2, -22, -29, -43,
					-- layer=1 filter=16 channel=1
					-66, -115, -71, 25, 32, 36, 54, 45, 70,
					-- layer=1 filter=16 channel=2
					17, 25, 7, 22, -12, -15, -36, -12, -16,
					-- layer=1 filter=16 channel=3
					-56, -69, -24, 8, 30, -26, 26, 32, 37,
					-- layer=1 filter=16 channel=4
					65, 29, 34, 14, 23, 27, 42, -16, -49,
					-- layer=1 filter=16 channel=5
					54, 80, 32, 18, -19, -8, -40, -86, -41,
					-- layer=1 filter=16 channel=6
					79, 72, 35, -20, -23, 4, -48, -94, -39,
					-- layer=1 filter=16 channel=7
					98, 125, 77, 4, 29, -6, -73, -114, -85,
					-- layer=1 filter=16 channel=8
					66, 50, 38, 29, 23, 26, -65, -38, -22,
					-- layer=1 filter=16 channel=9
					-32, -38, -10, 19, 22, 21, 15, 4, 36,
					-- layer=1 filter=16 channel=10
					-64, -73, -63, 14, 16, -1, 42, 41, 33,
					-- layer=1 filter=16 channel=11
					-37, -90, -75, -15, 11, 7, 65, 70, 49,
					-- layer=1 filter=16 channel=12
					-2, -9, 17, -24, -11, -31, -7, -40, -27,
					-- layer=1 filter=16 channel=13
					37, 11, -13, 22, 21, 17, 43, 0, -2,
					-- layer=1 filter=16 channel=14
					-3, 4, 51, -6, 16, 25, -30, -35, -61,
					-- layer=1 filter=16 channel=15
					25, 47, 40, 16, 13, 4, -35, -53, -64,
					-- layer=1 filter=17 channel=0
					-5, -23, -17, -8, 0, -2, -54, -25, -36,
					-- layer=1 filter=17 channel=1
					10, -13, -33, 20, 55, 6, 36, 3, 37,
					-- layer=1 filter=17 channel=2
					-14, 35, 54, 1, -13, 46, -14, 2, -7,
					-- layer=1 filter=17 channel=3
					35, 42, 26, 0, 16, 22, 20, -6, 12,
					-- layer=1 filter=17 channel=4
					46, 19, -2, 54, 1, 8, 6, 32, -11,
					-- layer=1 filter=17 channel=5
					-36, -29, -26, -20, -17, 3, -15, -9, -8,
					-- layer=1 filter=17 channel=6
					-5, 15, 16, 1, 10, 19, 39, 18, 56,
					-- layer=1 filter=17 channel=7
					11, 31, -24, 96, 90, 31, 66, 58, 73,
					-- layer=1 filter=17 channel=8
					33, 23, -12, 34, 61, 44, 38, 22, 26,
					-- layer=1 filter=17 channel=9
					-23, 0, 40, -11, 12, 36, -29, 14, 4,
					-- layer=1 filter=17 channel=10
					21, -9, -23, 27, 38, -57, -9, -37, -40,
					-- layer=1 filter=17 channel=11
					30, -3, 28, 31, 43, 40, 29, 19, 48,
					-- layer=1 filter=17 channel=12
					-47, -5, 35, -14, -24, -36, -38, -41, -29,
					-- layer=1 filter=17 channel=13
					-15, 16, -27, 40, 5, 8, 33, 17, -4,
					-- layer=1 filter=17 channel=14
					-8, 29, -22, 26, -17, -13, -22, -16, -25,
					-- layer=1 filter=17 channel=15
					-58, -66, -72, -75, -45, -51, -45, -54, -88,
					-- layer=1 filter=18 channel=0
					49, 45, 17, 61, 54, 32, 25, 51, 33,
					-- layer=1 filter=18 channel=1
					69, 45, 82, 67, 15, 0, 99, 37, 21,
					-- layer=1 filter=18 channel=2
					54, 17, 21, 2, -10, 87, 14, 42, 55,
					-- layer=1 filter=18 channel=3
					-28, -14, -106, -89, -117, -90, -65, -88, 24,
					-- layer=1 filter=18 channel=4
					-53, -29, 18, -69, -32, 41, -26, -1, 18,
					-- layer=1 filter=18 channel=5
					-25, 13, -41, -31, 4, -22, -49, -5, 11,
					-- layer=1 filter=18 channel=6
					-73, -65, -79, -29, -54, 14, 10, 3, 3,
					-- layer=1 filter=18 channel=7
					-30, -2, -25, -12, 10, 32, -23, 41, 33,
					-- layer=1 filter=18 channel=8
					-27, -12, -26, -15, 17, 12, -33, 10, 48,
					-- layer=1 filter=18 channel=9
					-16, 1, -51, -37, -56, -46, -66, -31, -2,
					-- layer=1 filter=18 channel=10
					-50, 61, 6, 15, -6, 16, -3, -11, 50,
					-- layer=1 filter=18 channel=11
					35, 27, 39, 15, -46, 14, 25, -17, -6,
					-- layer=1 filter=18 channel=12
					60, 8, 1, 4, 44, 32, 4, 62, 26,
					-- layer=1 filter=18 channel=13
					-1, -21, 43, -39, -6, 73, -11, 49, 34,
					-- layer=1 filter=18 channel=14
					9, 35, -16, 15, 36, 34, -31, -8, 46,
					-- layer=1 filter=18 channel=15
					64, 86, 63, 77, 68, 78, 44, 32, 48,
					-- layer=1 filter=19 channel=0
					28, -6, -25, 15, 21, -4, 11, 32, -19,
					-- layer=1 filter=19 channel=1
					-7, -60, -55, -88, -70, -36, -53, -67, -51,
					-- layer=1 filter=19 channel=2
					-14, -28, 14, 27, 0, 2, 11, 0, 9,
					-- layer=1 filter=19 channel=3
					-11, -21, 3, 22, 31, 0, 37, 8, -11,
					-- layer=1 filter=19 channel=4
					-19, -5, -5, -24, -21, -34, -35, 27, 53,
					-- layer=1 filter=19 channel=5
					25, -3, -1, 28, 3, 9, 24, 41, 38,
					-- layer=1 filter=19 channel=6
					-7, 15, -25, 11, -13, -25, 25, 21, -22,
					-- layer=1 filter=19 channel=7
					-34, -11, -55, -39, -12, -24, -42, -74, -52,
					-- layer=1 filter=19 channel=8
					-8, 10, -1, -34, -37, 7, -3, -25, -9,
					-- layer=1 filter=19 channel=9
					25, -9, 18, 19, 17, -17, 16, 7, 23,
					-- layer=1 filter=19 channel=10
					-5, -28, -3, 15, -3, 9, 4, -18, 7,
					-- layer=1 filter=19 channel=11
					-35, -41, -32, -6, -50, -20, -28, -7, -9,
					-- layer=1 filter=19 channel=12
					-6, 26, -16, 16, 10, -24, -31, 36, 23,
					-- layer=1 filter=19 channel=13
					-63, -55, -57, -49, -71, 9, -58, -68, -49,
					-- layer=1 filter=19 channel=14
					28, 22, 15, 30, 25, -17, 30, 1, 2,
					-- layer=1 filter=19 channel=15
					-26, 6, -32, 10, 4, -17, -14, -33, -1,
					-- layer=1 filter=20 channel=0
					5, 20, 25, 25, 2, 18, -14, 53, 34,
					-- layer=1 filter=20 channel=1
					-20, 0, 3, -45, -41, 10, -11, -21, 3,
					-- layer=1 filter=20 channel=2
					-64, -62, -9, -46, -33, -47, 5, -10, -26,
					-- layer=1 filter=20 channel=3
					-38, -17, -46, -29, -28, -20, -26, -23, -12,
					-- layer=1 filter=20 channel=4
					37, 21, -8, -8, -7, 35, -10, -6, 2,
					-- layer=1 filter=20 channel=5
					13, 33, 20, -4, 11, -15, 33, 8, 16,
					-- layer=1 filter=20 channel=6
					-19, -29, -33, -59, -54, -23, 18, -13, -35,
					-- layer=1 filter=20 channel=7
					-23, -9, -46, -29, -32, -26, -19, -34, -29,
					-- layer=1 filter=20 channel=8
					15, 15, -5, 4, -11, -15, 27, -5, -32,
					-- layer=1 filter=20 channel=9
					19, 3, -18, 6, 6, 5, -9, 21, 2,
					-- layer=1 filter=20 channel=10
					8, 35, 1, 14, 25, 26, -2, 12, 49,
					-- layer=1 filter=20 channel=11
					7, -6, 8, -13, -29, -43, -3, -38, -37,
					-- layer=1 filter=20 channel=12
					4, 44, 62, 6, 15, 63, 8, 53, 22,
					-- layer=1 filter=20 channel=13
					-12, 10, 5, -11, -37, 0, -48, -17, 11,
					-- layer=1 filter=20 channel=14
					-26, -35, 14, 11, -11, 8, 29, -25, -8,
					-- layer=1 filter=20 channel=15
					14, 54, 45, 16, 30, 55, 16, 43, 27,
					-- layer=1 filter=21 channel=0
					-28, 11, 7, 23, 8, 25, -1, -16, 12,
					-- layer=1 filter=21 channel=1
					17, 0, -21, -61, -59, -59, -2, -47, -37,
					-- layer=1 filter=21 channel=2
					14, -25, -9, -41, -11, -21, -45, -41, -16,
					-- layer=1 filter=21 channel=3
					27, 20, 1, 8, -37, -24, -7, 12, 11,
					-- layer=1 filter=21 channel=4
					-19, -48, -17, -38, -8, -27, -40, -63, 11,
					-- layer=1 filter=21 channel=5
					-14, -22, 28, 21, 23, 40, 34, 13, 37,
					-- layer=1 filter=21 channel=6
					-25, 0, 4, -30, 20, -1, 6, -12, 10,
					-- layer=1 filter=21 channel=7
					-12, -44, -26, 6, -16, -24, -30, -25, -11,
					-- layer=1 filter=21 channel=8
					53, -4, 1, -9, -20, 11, 20, -50, -4,
					-- layer=1 filter=21 channel=9
					28, 17, 6, -17, 24, 9, -13, 8, -20,
					-- layer=1 filter=21 channel=10
					14, 9, 27, 40, -10, -12, 13, -19, -1,
					-- layer=1 filter=21 channel=11
					-5, -8, -14, 0, 0, -66, -8, -60, -53,
					-- layer=1 filter=21 channel=12
					0, -16, 16, -10, -9, 6, 24, 40, 7,
					-- layer=1 filter=21 channel=13
					-43, -36, -49, -62, -16, -48, -53, -55, -50,
					-- layer=1 filter=21 channel=14
					-15, 7, 8, -27, -36, -7, -4, -8, -39,
					-- layer=1 filter=21 channel=15
					-36, 8, 2, -19, -2, 44, 14, 27, 13,
					-- layer=1 filter=22 channel=0
					-7, -31, -33, -34, 23, -1, 4, -11, 23,
					-- layer=1 filter=22 channel=1
					-8, 6, -28, -15, 29, -18, -22, -23, -17,
					-- layer=1 filter=22 channel=2
					55, 31, -30, 9, 12, -13, 0, 16, 12,
					-- layer=1 filter=22 channel=3
					57, 26, 32, 12, 31, -5, 38, 28, -6,
					-- layer=1 filter=22 channel=4
					27, 11, -13, -17, -14, -12, 20, 10, -9,
					-- layer=1 filter=22 channel=5
					-18, -15, -37, -33, -60, -43, -23, 1, 5,
					-- layer=1 filter=22 channel=6
					32, -52, -47, 0, -31, -64, 0, 31, -73,
					-- layer=1 filter=22 channel=7
					-50, -71, -66, -44, -91, 3, 59, 54, 60,
					-- layer=1 filter=22 channel=8
					-29, -9, -15, 1, -15, -15, -13, -2, 28,
					-- layer=1 filter=22 channel=9
					26, 48, 9, 11, 39, 0, -19, 14, -14,
					-- layer=1 filter=22 channel=10
					10, 16, 38, 53, 36, -7, -25, 25, -8,
					-- layer=1 filter=22 channel=11
					10, -20, -32, 9, 5, -28, -14, -8, -26,
					-- layer=1 filter=22 channel=12
					-6, 1, -34, 1, -37, -89, 11, 23, -32,
					-- layer=1 filter=22 channel=13
					21, 3, -24, 25, 20, -3, 16, -25, -14,
					-- layer=1 filter=22 channel=14
					23, -14, 1, -3, -15, -29, 31, -16, 14,
					-- layer=1 filter=22 channel=15
					-99, 0, -17, -52, 6, -16, -21, 6, -3,
					-- layer=1 filter=23 channel=0
					-30, 7, -33, -12, 19, 11, 11, 23, 13,
					-- layer=1 filter=23 channel=1
					48, 24, 4, -12, -36, 2, 14, -6, -117,
					-- layer=1 filter=23 channel=2
					34, 11, -2, 80, 42, 1, 59, 57, 7,
					-- layer=1 filter=23 channel=3
					-11, -22, -11, 26, -22, -4, 46, 32, 25,
					-- layer=1 filter=23 channel=4
					-35, 21, -28, -16, -32, -5, 5, 13, 7,
					-- layer=1 filter=23 channel=5
					20, 19, 41, 8, 60, 86, -10, 7, 62,
					-- layer=1 filter=23 channel=6
					66, 45, 51, 76, 96, 55, 61, 62, 87,
					-- layer=1 filter=23 channel=7
					20, 71, 21, 69, 65, 107, 17, 43, 27,
					-- layer=1 filter=23 channel=8
					31, 36, 57, 21, 7, 36, 28, -7, 21,
					-- layer=1 filter=23 channel=9
					24, -15, -1, 11, -30, -3, 6, -25, 5,
					-- layer=1 filter=23 channel=10
					-33, -29, -3, -57, -73, 1, -27, -65, -12,
					-- layer=1 filter=23 channel=11
					10, -46, -26, 16, -33, -88, 58, 14, -55,
					-- layer=1 filter=23 channel=12
					-17, -39, -27, -2, -54, -85, -36, -26, -52,
					-- layer=1 filter=23 channel=13
					-10, -38, -36, -1, 3, -25, 31, 23, -6,
					-- layer=1 filter=23 channel=14
					9, 5, 24, -32, 32, 35, 1, 13, 8,
					-- layer=1 filter=23 channel=15
					-65, -29, -40, -7, -54, -66, -29, -52, -33,
					-- layer=1 filter=24 channel=0
					-21, -9, -4, 3, -1, -7, 19, -7, 0,
					-- layer=1 filter=24 channel=1
					52, -14, 22, 42, -15, -54, 54, 3, -86,
					-- layer=1 filter=24 channel=2
					6, -54, -76, 39, -43, -19, 46, -17, -18,
					-- layer=1 filter=24 channel=3
					51, 26, -64, 99, 47, -8, 64, 78, 2,
					-- layer=1 filter=24 channel=4
					52, 27, -55, 25, 6, 4, -69, 36, 46,
					-- layer=1 filter=24 channel=5
					29, 35, -21, -17, 3, 21, 9, 0, 33,
					-- layer=1 filter=24 channel=6
					-33, -59, 72, -22, -92, 9, 17, -77, -29,
					-- layer=1 filter=24 channel=7
					-19, 10, 30, -14, 2, 29, -13, 24, 11,
					-- layer=1 filter=24 channel=8
					-22, -30, 25, -11, -37, -25, -26, -19, -25,
					-- layer=1 filter=24 channel=9
					2, -32, -54, 67, -24, -79, 49, 31, -59,
					-- layer=1 filter=24 channel=10
					9, 38, 33, 16, 19, 48, -1, -6, 24,
					-- layer=1 filter=24 channel=11
					-1, -30, -3, 56, -97, -2, 86, -12, -66,
					-- layer=1 filter=24 channel=12
					-71, -29, 12, -77, -163, -4, -12, -123, -8,
					-- layer=1 filter=24 channel=13
					2, -31, -59, -9, -45, -47, -26, 14, -20,
					-- layer=1 filter=24 channel=14
					16, -28, -42, 9, 22, -34, 20, 26, -26,
					-- layer=1 filter=24 channel=15
					27, 47, 19, -21, 42, 89, -54, 31, 89,
					-- layer=1 filter=25 channel=0
					-31, -14, 29, 11, 21, 9, 44, -2, -12,
					-- layer=1 filter=25 channel=1
					-56, -22, -62, 19, -12, -14, 6, -33, -44,
					-- layer=1 filter=25 channel=2
					12, -20, 18, 19, -24, 0, 1, -18, 7,
					-- layer=1 filter=25 channel=3
					7, 3, 7, 14, 0, 22, 0, 24, 25,
					-- layer=1 filter=25 channel=4
					87, 55, 41, 116, 131, 114, 54, 86, 47,
					-- layer=1 filter=25 channel=5
					-6, 9, -10, -18, -14, -9, -13, 6, -3,
					-- layer=1 filter=25 channel=6
					-16, 19, 13, -20, 51, -18, 12, 10, 27,
					-- layer=1 filter=25 channel=7
					15, 20, 27, -18, 23, -23, -47, -7, -33,
					-- layer=1 filter=25 channel=8
					-8, 46, 56, 8, 38, -27, -20, -12, -42,
					-- layer=1 filter=25 channel=9
					-27, 8, -35, -24, 1, -12, 0, -6, 31,
					-- layer=1 filter=25 channel=10
					34, 15, 47, 88, 57, 58, 54, 26, 32,
					-- layer=1 filter=25 channel=11
					15, 14, -5, -33, 39, -45, -25, -3, -42,
					-- layer=1 filter=25 channel=12
					0, -8, 12, 3, 4, 48, 1, 43, 38,
					-- layer=1 filter=25 channel=13
					30, 52, 49, 41, 42, 48, 60, 47, 63,
					-- layer=1 filter=25 channel=14
					30, -27, -12, 4, -19, -17, -24, -7, 20,
					-- layer=1 filter=25 channel=15
					7, -41, 18, 18, -47, 0, 11, -17, -45,
					-- layer=1 filter=26 channel=0
					7, 0, 6, -53, -27, -37, -41, -59, -15,
					-- layer=1 filter=26 channel=1
					-12, 6, 4, 28, 26, -4, 77, 53, 30,
					-- layer=1 filter=26 channel=2
					-23, 13, -4, 17, -32, -29, 27, 1, 3,
					-- layer=1 filter=26 channel=3
					31, -27, -35, 20, -1, 22, 12, 19, 25,
					-- layer=1 filter=26 channel=4
					12, 42, 28, -9, 49, 8, 33, -4, 34,
					-- layer=1 filter=26 channel=5
					-55, 0, 3, -61, -82, -48, -81, -47, -91,
					-- layer=1 filter=26 channel=6
					-7, 0, -7, -36, -69, -23, -13, -30, -64,
					-- layer=1 filter=26 channel=7
					-15, 35, 93, -106, -101, -8, -86, -46, -79,
					-- layer=1 filter=26 channel=8
					-23, -2, 10, -40, -32, 36, -51, 7, -36,
					-- layer=1 filter=26 channel=9
					10, 15, -5, -4, 2, 22, 20, -12, -23,
					-- layer=1 filter=26 channel=10
					28, 10, 8, 5, 4, 58, -2, -33, 12,
					-- layer=1 filter=26 channel=11
					-3, 11, 40, 28, -1, 64, 69, 37, 54,
					-- layer=1 filter=26 channel=12
					-11, -7, -19, -5, -8, -17, -17, -42, 1,
					-- layer=1 filter=26 channel=13
					29, -1, 3, 4, 51, 25, 4, 28, 43,
					-- layer=1 filter=26 channel=14
					-10, -23, 27, -51, -39, -43, -24, -12, -60,
					-- layer=1 filter=26 channel=15
					-20, 21, 25, -11, 21, 51, -12, -6, 0,
					-- layer=1 filter=27 channel=0
					-8, -10, -24, 27, -8, -4, 43, 34, 55,
					-- layer=1 filter=27 channel=1
					6, 3, -20, 13, -11, -24, 16, 14, 23,
					-- layer=1 filter=27 channel=2
					4, 9, -3, -6, -26, -15, 10, -17, 15,
					-- layer=1 filter=27 channel=3
					38, -2, 20, 18, 8, 18, 13, 29, -10,
					-- layer=1 filter=27 channel=4
					0, -20, 35, -9, 9, 25, 47, 50, 69,
					-- layer=1 filter=27 channel=5
					23, -16, -32, 62, 63, 7, 55, 56, 48,
					-- layer=1 filter=27 channel=6
					-12, -16, -9, -27, -59, 21, -48, -58, 45,
					-- layer=1 filter=27 channel=7
					13, 1, -68, -24, -49, -41, -61, -60, -15,
					-- layer=1 filter=27 channel=8
					47, -13, -14, -15, 50, -23, -62, -21, -26,
					-- layer=1 filter=27 channel=9
					-20, 14, 9, 49, -13, 1, 44, -10, 35,
					-- layer=1 filter=27 channel=10
					-28, -37, 33, -52, 0, -49, -56, -29, -7,
					-- layer=1 filter=27 channel=11
					-13, 15, 0, 3, -38, 10, -5, -32, 16,
					-- layer=1 filter=27 channel=12
					-88, -80, -22, -51, -61, 15, -62, -24, 5,
					-- layer=1 filter=27 channel=13
					-7, 24, 45, -19, -26, -7, 36, 22, 55,
					-- layer=1 filter=27 channel=14
					26, -5, 16, 33, 4, 7, 28, 3, 10,
					-- layer=1 filter=27 channel=15
					-48, -28, -18, -67, -28, -68, -16, 52, -29,
					-- layer=1 filter=28 channel=0
					12, 9, -35, 18, -22, -24, 7, -30, -28,
					-- layer=1 filter=28 channel=1
					20, 3, 67, 32, 1, 60, 0, -5, 57,
					-- layer=1 filter=28 channel=2
					0, -19, 31, -43, 3, 38, -5, 33, 30,
					-- layer=1 filter=28 channel=3
					42, -24, -44, 14, -79, 29, -3, -30, 28,
					-- layer=1 filter=28 channel=4
					-102, -37, 9, -70, -12, -25, -10, -5, -30,
					-- layer=1 filter=28 channel=5
					-3, 30, -5, -15, 0, -26, -25, -5, -11,
					-- layer=1 filter=28 channel=6
					-35, 35, 70, -26, 50, 83, 22, 31, 52,
					-- layer=1 filter=28 channel=7
					22, 24, -15, 41, -43, -47, 22, -20, 0,
					-- layer=1 filter=28 channel=8
					29, -7, -74, 32, -88, -73, -32, -86, -92,
					-- layer=1 filter=28 channel=9
					-25, -33, 1, -37, -32, 24, -42, -28, 59,
					-- layer=1 filter=28 channel=10
					47, 7, -89, 93, -71, -114, 33, -123, -62,
					-- layer=1 filter=28 channel=11
					-34, 22, 55, -7, 25, 40, 5, 49, 42,
					-- layer=1 filter=28 channel=12
					-41, 33, 30, -35, 60, 90, -8, 67, 84,
					-- layer=1 filter=28 channel=13
					-13, 36, 63, -18, 28, 48, -28, 29, -7,
					-- layer=1 filter=28 channel=14
					17, -1, 8, -2, -32, -9, -21, 8, 23,
					-- layer=1 filter=28 channel=15
					19, 10, -75, 35, -41, -48, -6, -64, -72,
					-- layer=1 filter=29 channel=0
					15, -46, -15, 2, -23, 0, -24, 25, 10,
					-- layer=1 filter=29 channel=1
					-20, -20, -12, 39, -4, -13, 18, -3, 4,
					-- layer=1 filter=29 channel=2
					-24, -11, 13, 27, -14, 30, 55, 23, 36,
					-- layer=1 filter=29 channel=3
					29, -4, -40, 16, 18, 24, 23, 57, 10,
					-- layer=1 filter=29 channel=4
					57, 49, 27, -3, 64, 60, 35, 82, 71,
					-- layer=1 filter=29 channel=5
					7, 29, -20, 30, 1, 25, 4, 35, 34,
					-- layer=1 filter=29 channel=6
					-28, -30, 16, 21, -42, -18, -8, -14, -77,
					-- layer=1 filter=29 channel=7
					39, 26, 71, 42, 10, 72, -12, -5, 26,
					-- layer=1 filter=29 channel=8
					-42, -24, 13, -61, -66, -77, -79, -100, -32,
					-- layer=1 filter=29 channel=9
					-2, -24, -31, 33, -4, -10, 42, 49, 18,
					-- layer=1 filter=29 channel=10
					-64, -26, -58, -126, -149, -124, -153, -173, -150,
					-- layer=1 filter=29 channel=11
					-27, -31, -20, 1, 2, -21, 26, 21, 50,
					-- layer=1 filter=29 channel=12
					-40, -35, 0, -58, -92, -115, -17, -99, -85,
					-- layer=1 filter=29 channel=13
					14, 1, -2, 5, 61, 35, 24, 47, 53,
					-- layer=1 filter=29 channel=14
					14, -18, 6, 34, 16, -14, 0, 34, 12,
					-- layer=1 filter=29 channel=15
					11, 52, -15, -52, 43, 23, -51, -32, -18,
					-- layer=1 filter=30 channel=0
					-18, 0, 15, -15, -2, -24, 0, 32, 26,
					-- layer=1 filter=30 channel=1
					-46, -33, -88, -47, -16, -14, -29, -14, -17,
					-- layer=1 filter=30 channel=2
					-44, -37, -48, -37, -18, -35, -13, -19, 0,
					-- layer=1 filter=30 channel=3
					-19, -64, -35, -34, -23, -15, -40, -18, -3,
					-- layer=1 filter=30 channel=4
					-1, 9, 12, 22, 0, 4, 11, 13, 34,
					-- layer=1 filter=30 channel=5
					-12, 9, 26, 18, -1, 13, 7, 33, 29,
					-- layer=1 filter=30 channel=6
					17, -30, -18, -11, 12, -5, 26, 21, 7,
					-- layer=1 filter=30 channel=7
					-8, -30, 25, 6, -9, -22, -33, -17, -35,
					-- layer=1 filter=30 channel=8
					-11, 13, -23, -13, -18, -8, -25, -8, -20,
					-- layer=1 filter=30 channel=9
					-18, -20, -24, 7, 6, 32, -10, 34, 19,
					-- layer=1 filter=30 channel=10
					-32, -2, -26, -31, 14, -25, -8, -25, -3,
					-- layer=1 filter=30 channel=11
					-42, -62, -67, -26, -21, -1, -57, 2, 14,
					-- layer=1 filter=30 channel=12
					20, 55, 14, 44, 40, 25, 52, 6, 13,
					-- layer=1 filter=30 channel=13
					-2, -7, -14, -21, -20, -7, -41, 9, -8,
					-- layer=1 filter=30 channel=14
					5, 4, -9, 13, -23, -1, 28, 14, 11,
					-- layer=1 filter=30 channel=15
					40, 25, 23, 38, 29, -11, 34, -4, -16,
					-- layer=1 filter=31 channel=0
					-7, -20, -29, -5, -30, -17, -49, -78, -61,
					-- layer=1 filter=31 channel=1
					-12, -18, -10, 1, -12, 20, 61, 18, -17,
					-- layer=1 filter=31 channel=2
					15, -33, 23, -36, -35, 22, -27, 6, 27,
					-- layer=1 filter=31 channel=3
					21, 15, 17, -4, -21, 14, 23, 6, 40,
					-- layer=1 filter=31 channel=4
					-13, -17, -83, -61, -18, -46, -32, 5, -24,
					-- layer=1 filter=31 channel=5
					-13, -7, 2, -67, -23, -2, -120, -46, -70,
					-- layer=1 filter=31 channel=6
					-44, -4, 2, -46, -51, 0, -15, -52, -4,
					-- layer=1 filter=31 channel=7
					-30, 41, 57, -79, -67, -37, -64, -55, -31,
					-- layer=1 filter=31 channel=8
					-34, -31, -6, -59, -51, -30, -52, -67, -19,
					-- layer=1 filter=31 channel=9
					-18, 32, 32, 26, -19, 19, 0, -15, 2,
					-- layer=1 filter=31 channel=10
					-7, 6, 19, -28, -19, -5, -14, 0, 11,
					-- layer=1 filter=31 channel=11
					31, -31, 41, 23, 1, 44, 19, 22, 21,
					-- layer=1 filter=31 channel=12
					13, -13, 22, 9, 26, 1, 15, 23, 39,
					-- layer=1 filter=31 channel=13
					5, -19, -83, -3, 13, -14, 17, 26, 25,
					-- layer=1 filter=31 channel=14
					25, 22, 36, -41, 12, -8, -66, -8, -16,
					-- layer=1 filter=31 channel=15
					35, 15, -45, 45, 23, 59, 44, 3, 19,

			179, 140, 78, 255, 244, 190, 27, 167, 247, 56, 133, 248, 112, 23, 144, 
			36, 206, 222, 69, 85, 166, 176, 159, 229, 151, 0, 119, 217, 170, 27, 
			212, 229, 76, 143, 43, 142, 175, 124, 0, 0, 0, 0, 0, 0, 23, 
			49, 0, 255, 12, 103, 27, 0, 0, 0, 0, 142, 0, 211, 0, 129, 
			165, 0, 43, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 
			0, 0, 170, 0, 65, 0, 0, 141, 16, 0, 0, 182, 0, 0, 0, 
			0, 0, 240, 205, 0, 0, 0, 0, 244, 0, 8, 67, 0, 0, 0, 
			0, 0, 0, 88, 0, 0, 0, 0, 98, 0, 99, 176, 0, 0, 156, 
			0, 0, 0, 0, 0, 80, 107, 0, 0, 254, 0, 96, 0, 225, 4, 
			0, 0, 245, 0, 0, 0, 179, 0, 0, 0, 66, 48, 0, 0, 62, 
			0, 0, 48, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 224, 0, 0, 0, 0, 0, 0, 125, 0, 0, 
			0, 0, 0, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 58, 131, 
			186, 101, 0, 0, 0, 151, 4, 220, 95, 247, 144, 210, 1, 102, 62, 
			79, 1, 0, 0, 106, 57, 142, 129, 155, 203, 164, 139, 134, 52, 16, 
			123, 96, 115, 57, 226, 59, 234, 4, 71, 236, 105, 113, 156, 104, 39, 
			224, 195, 193, 131, 201, 131, 66, 113, 102, 223, 243, 98, 59, 121, 70, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 184, 157, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 138, 63, 60, 11, 0, 0, 0, 
			0, 250, 0, 0, 0, 0, 79, 121, 235, 219, 0, 6, 0, 0, 0, 
			0, 6, 0, 89, 31, 245, 241, 31, 105, 43, 57, 232, 23, 0, 211, 
			223, 207, 0, 0, 149, 160, 30, 80, 0, 58, 209, 0, 34, 90, 203, 
			17, 80, 0, 0, 34, 120, 6, 178, 0, 223, 89, 28, 189, 130, 22, 
			130, 225, 35, 0, 229, 21, 0, 117, 0, 82, 39, 212, 35, 193, 0, 
			24, 156, 110, 133, 253, 243, 200, 91, 2, 0, 248, 0, 234, 179, 0, 
			60, 17, 28, 208, 152, 215, 96, 30, 223, 160, 0, 108, 6, 101, 0, 
			181, 75, 226, 170, 231, 214, 82, 42, 64, 212, 1, 192, 246, 208, 115, 
			49, 130, 103, 46, 194, 201, 94, 31, 64, 120, 140, 93, 230, 47, 155, 
			199, 32, 36, 6, 13, 240, 103, 126, 174, 255, 152, 130, 212, 60, 69, 
			227, 96, 192, 130, 210, 65, 206, 92, 246, 117, 103, 135, 250, 9, 242, 
			54, 88, 185, 243, 21, 127, 142, 2, 185, 225, 205, 83, 100, 249, 175, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 67, 53, 171, 0, 170, 127, 0, 0, 0, 
			234, 0, 0, 0, 0, 0, 115, 112, 0, 0, 46, 173, 250, 0, 0, 
			235, 0, 0, 0, 17, 0, 244, 166, 127, 0, 119, 218, 126, 15, 0, 
			243, 0, 159, 0, 39, 149, 247, 209, 236, 0, 8, 143, 123, 97, 0, 
			30, 245, 109, 0, 0, 246, 156, 155, 140, 0, 196, 198, 245, 57, 245, 
			236, 130, 241, 26, 0, 0, 107, 107, 242, 0, 212, 242, 167, 143, 32, 
			9, 228, 173, 174, 0, 0, 215, 169, 184, 0, 76, 114, 0, 85, 238, 
			174, 219, 40, 225, 248, 79, 228, 107, 0, 155, 101, 65, 0, 0, 0, 
			82, 82, 164, 0, 127, 97, 0, 202, 169, 52, 249, 27, 0, 0, 78, 
			5, 111, 86, 0, 243, 27, 237, 182, 163, 34, 195, 177, 209, 34, 227, 
			69, 186, 83, 0, 114, 151, 75, 56, 231, 87, 21, 200, 99, 1, 212, 
			115, 103, 0, 204, 107, 40, 5, 86, 175, 178, 18, 152, 90, 19, 249, 
			254, 145, 0, 172, 151, 73, 10, 106, 244, 128, 200, 32, 16, 179, 238, 
			20, 54, 77, 130, 43, 139, 61, 190, 77, 142, 228, 220, 96, 236, 18, 
			

			0, 0, 74, 185, 79, 52, 192, 0, 132, 0, 0, 0, 0, 159, 145, 
			55, 184, 46, 38, 28, 157, 52, 0, 0, 0, 144, 25, 0, 0, 214, 
			0, 0, 168, 5, 49, 0, 0, 0, 134, 17, 213, 43, 43, 0, 0, 
			19, 85, 157, 41, 142, 0, 80, 196, 98, 0, 0, 0, 0, 184, 0, 
			189, 214, 51, 145, 201, 124, 172, 28, 0, 0, 29, 184, 77, 34, 0, 
			0, 0, 48, 0, 0, 0, 79, 13, 202, 188, 0, 0, 0, 166, 62, 
			207, 157, 0, 82, 0, 57, 0, 187, 181, 157, 0, 20, 0, 246, 220, 
			112, 147, 39, 131, 86, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			204, 229, 109, 62, 164, 0, 0, 252, 159, 0, 0, 0, 0, 90, 181, 
			0, 0, 76, 130, 60, 0, 0, 108, 212, 0, 0, 0, 173, 55, 0, 
			0, 0, 0, 54, 242, 107, 150, 0, 0, 0, 194, 248, 234, 0, 0, 
			0, 0, 189, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			213, 0, 0, 0, 0, 0, 0, 0, 0, 159, 150, 183, 0, 0, 30, 
			0, 0, 0, 0, 0, 0, 245, 125, 0, 0, 0, 0, 0, 30, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 59, 4, 149, 0, 28, 24, 0, 
			

			8, 102, 200, 3, 147, 122, 88, 190, 194, 112, 38, 143, 129, 84, 191, 
			76, 247, 57, 223, 6, 240, 164, 58, 46, 6, 100, 241, 33, 252, 172, 
			5, 69, 104, 157, 212, 105, 28, 193, 235, 0, 204, 169, 110, 68, 187, 
			126, 115, 210, 138, 24, 12, 170, 203, 24, 124, 40, 60, 54, 42, 247, 
			166, 198, 235, 175, 193, 128, 76, 241, 57, 0, 154, 223, 141, 227, 206, 
			107, 116, 15, 99, 202, 49, 137, 216, 45, 0, 42, 41, 209, 131, 126, 
			210, 17, 138, 48, 200, 92, 103, 85, 244, 0, 45, 180, 194, 211, 88, 
			227, 44, 223, 88, 3, 194, 66, 61, 245, 92, 160, 203, 253, 65, 171, 
			143, 0, 179, 141, 206, 243, 17, 226, 114, 248, 99, 12, 42, 244, 127, 
			67, 0, 75, 0, 117, 157, 0, 239, 9, 91, 109, 0, 253, 210, 139, 
			0, 188, 179, 0, 252, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			17, 219, 160, 106, 6, 98, 140, 139, 123, 229, 89, 245, 78, 223, 100, 
			244, 149, 150, 124, 230, 66, 0, 114, 0, 44, 0, 0, 122, 172, 31, 
			0, 254, 180, 132, 224, 38, 0, 0, 66, 154, 0, 0, 0, 144, 3, 
			0, 9, 196, 66, 0, 213, 0, 0, 0, 41, 0, 0, 0, 0, 35, 
			0, 247, 0, 41, 0, 0, 0, 0, 0, 249, 0, 0, 0, 0, 244, 
			0, 0, 0, 213, 78, 190, 0, 0, 0, 212, 0, 0, 104, 0, 0, 
			0, 0, 211, 0, 248, 152, 0, 0, 0, 151, 0, 0, 0, 2, 0, 
			0, 0, 0, 0, 246, 160, 0, 0, 0, 254, 0, 0, 83, 0, 0, 
			0, 0, 0, 173, 0, 80, 0, 0, 204, 0, 207, 0, 97, 181, 202, 
			0, 0, 0, 229, 0, 0, 112, 0, 0, 0, 0, 0, 130, 54, 180, 
			224, 0, 0, 63, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 
			46, 130, 0, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 149, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			90, 172, 38, 221, 206, 118, 17, 118, 141, 51, 183, 38, 63, 99, 161, 
			114, 194, 56, 115, 103, 0, 106, 116, 51, 0, 0, 0, 0, 229, 7, 
			101, 195, 117, 177, 71, 166, 41, 236, 0, 0, 0, 0, 0, 0, 112, 
			0, 0, 125, 65, 99, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 246, 0, 0, 0, 0, 0, 148, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			237, 105, 126, 203, 131, 140, 22, 170, 32, 68, 36, 210, 7, 57, 140, 
			182, 35, 178, 238, 141, 0, 90, 45, 153, 223, 0, 0, 86, 176, 50, 
			48, 106, 225, 56, 171, 217, 177, 165, 0, 0, 253, 0, 0, 233, 244, 
			0, 0, 21, 66, 181, 103, 0, 138, 0, 196, 154, 148, 172, 0, 127, 
			132, 0, 251, 220, 0, 0, 237, 0, 187, 0, 0, 0, 0, 0, 0, 
			117, 42, 164, 105, 54, 201, 0, 0, 0, 0, 193, 144, 206, 245, 0, 
			0, 0, 163, 230, 73, 0, 87, 0, 140, 0, 129, 0, 0, 0, 0, 
			0, 0, 0, 46, 146, 104, 233, 14, 212, 0, 90, 0, 178, 228, 0, 
			0, 81, 0, 91, 0, 73, 103, 0, 0, 0, 121, 20, 223, 0, 0, 
			249, 148, 24, 0, 165, 243, 0, 0, 0, 166, 30, 120, 0, 0, 166, 
			48, 69, 202, 0, 0, 0, 72, 151, 180, 0, 0, 0, 0, 94, 209, 
			64, 47, 161, 0, 74, 249, 123, 78, 91, 104, 0, 0, 0, 0, 0, 
			0, 169, 0, 187, 161, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 
			0, 0, 213, 115, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 
			0, 0, 0, 247, 202, 130, 248, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			146, 78, 90, 41, 170, 210, 158, 129, 5, 70, 5, 169, 202, 201, 168, 
			158, 75, 105, 169, 126, 221, 11, 227, 90, 111, 47, 50, 42, 133, 87, 
			173, 197, 124, 134, 142, 5, 49, 59, 157, 134, 109, 203, 13, 238, 102, 
			5, 169, 75, 50, 85, 149, 2, 192, 6, 88, 182, 202, 166, 136, 199, 
			181, 40, 213, 78, 236, 133, 252, 211, 229, 13, 61, 189, 84, 43, 210, 
			6, 44, 119, 72, 80, 54, 92, 215, 15, 240, 129, 25, 58, 10, 16, 
			102, 230, 253, 33, 124, 112, 25, 22, 238, 113, 121, 140, 24, 30, 83, 
			123, 29, 242, 34, 102, 234, 190, 233, 75, 250, 135, 181, 31, 132, 227, 
			213, 196, 129, 223, 170, 207, 159, 141, 255, 217, 28, 147, 250, 63, 228, 
			183, 175, 233, 205, 201, 49, 93, 42, 156, 175, 100, 79, 111, 65, 150, 
			111, 185, 193, 128, 253, 21, 21, 221, 162, 68, 67, 58, 67, 105, 106, 
			168, 35, 163, 240, 52, 32, 132, 184, 195, 82, 174, 255, 139, 112, 242, 
			56, 175, 167, 29, 75, 73, 134, 86, 233, 36, 4, 202, 97, 189, 130, 
			66, 131, 183, 209, 193, 30, 245, 136, 230, 26, 203, 189, 87, 201, 128, 
			85, 226, 48, 83, 141, 7, 98, 109, 198, 109, 251, 96, 174, 3, 138, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 115, 159, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 46, 203, 185, 0, 0, 220, 59, 0, 0, 
			69, 0, 0, 0, 0, 244, 39, 209, 0, 0, 0, 0, 61, 161, 0, 
			173, 0, 0, 0, 166, 0, 0, 120, 0, 0, 224, 237, 173, 34, 0, 
			0, 0, 183, 0, 0, 0, 213, 153, 96, 0, 0, 237, 0, 0, 53, 
			118, 0, 197, 75, 121, 42, 0, 0, 101, 0, 26, 133, 0, 0, 0, 
			60, 145, 45, 157, 0, 0, 9, 0, 78, 0, 196, 227, 0, 0, 0, 
			79, 0, 112, 0, 0, 0, 34, 24, 0, 0, 0, 69, 0, 94, 0, 
			0, 0, 2, 0, 25, 118, 15, 0, 0, 200, 32, 60, 30, 0, 0, 
			0, 0, 20, 0, 116, 172, 0, 0, 87, 226, 159, 158, 0, 0, 95, 
			0, 0, 73, 0, 0, 0, 0, 213, 241, 166, 0, 0, 0, 186, 205, 
			210, 0, 0, 0, 208, 150, 52, 246, 141, 167, 0, 151, 0, 0, 99, 
			143, 182, 0, 34, 128, 0, 183, 152, 0, 0, 0, 0, 235, 0, 0, 
			253, 209, 236, 90, 140, 0, 0, 22, 0, 0, 51, 33, 0, 0, 232, 
			91, 0, 75, 126, 85, 182, 158, 0, 0, 0, 42, 0, 0, 0, 20, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 134, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 114, 0, 0, 0, 0, 131, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 215, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 21, 0, 0, 0, 4, 0, 0, 168, 0, 0, 
			0, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 
			0, 30, 0, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			232, 0, 0, 96, 0, 0, 174, 0, 0, 0, 189, 207, 18, 77, 211, 
			99, 206, 0, 44, 0, 91, 32, 101, 27, 194, 207, 32, 209, 109, 98, 
			71, 35, 37, 0, 0, 129, 193, 123, 92, 90, 224, 93, 185, 33, 1, 
			4, 135, 174, 0, 41, 194, 61, 113, 67, 75, 71, 200, 119, 0, 221, 
			62, 188, 2, 156, 140, 232, 167, 54, 105, 141, 33, 169, 185, 103, 183, 
			

			136, 34, 192, 135, 233, 157, 67, 75, 109, 204, 107, 53, 96, 106, 145, 
			206, 33, 74, 2, 123, 123, 0, 118, 0, 78, 0, 0, 13, 169, 44, 
			150, 147, 252, 150, 198, 87, 0, 0, 91, 83, 0, 0, 0, 166, 98, 
			0, 166, 47, 176, 178, 114, 58, 0, 0, 206, 0, 0, 0, 0, 115, 
			0, 161, 0, 194, 79, 70, 0, 0, 0, 10, 0, 0, 253, 0, 162, 
			0, 82, 0, 212, 205, 0, 0, 0, 0, 211, 0, 0, 129, 0, 0, 
			0, 0, 0, 0, 42, 66, 0, 0, 0, 65, 0, 0, 239, 140, 0, 
			0, 0, 0, 0, 73, 44, 0, 0, 0, 142, 0, 0, 212, 197, 0, 
			0, 0, 0, 119, 0, 0, 0, 217, 166, 0, 208, 0, 18, 131, 221, 
			0, 117, 0, 122, 0, 180, 21, 0, 0, 0, 0, 0, 213, 50, 105, 
			202, 0, 0, 57, 0, 0, 225, 0, 0, 0, 0, 47, 114, 206, 0, 
			69, 168, 0, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 146, 186, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 0, 
			0, 0, 35, 0, 0, 0, 0, 0, 115, 0, 0, 0, 140, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 133, 0, 0, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 246, 0, 0, 0, 0, 217, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 192, 0, 0, 0, 0, 204, 0, 0, 
			0, 0, 0, 236, 105, 244, 0, 0, 0, 0, 88, 38, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 191, 0, 0, 
			

			66, 85, 17, 99, 110, 252, 233, 140, 204, 43, 237, 232, 232, 213, 138, 
			240, 157, 38, 39, 73, 250, 150, 203, 49, 167, 178, 99, 213, 19, 202, 
			252, 221, 46, 59, 173, 103, 124, 49, 25, 155, 22, 137, 99, 145, 5, 
			111, 124, 209, 143, 92, 227, 101, 79, 178, 85, 78, 166, 76, 54, 114, 
			122, 180, 32, 200, 43, 65, 240, 61, 144, 9, 252, 27, 131, 104, 78, 
			204, 136, 226, 191, 126, 70, 114, 210, 225, 196, 109, 37, 184, 122, 166, 
			243, 169, 209, 183, 61, 232, 11, 103, 243, 127, 32, 169, 237, 34, 16, 
			229, 80, 66, 144, 144, 94, 178, 73, 132, 118, 162, 4, 5, 31, 237, 
			217, 41, 158, 236, 194, 139, 227, 69, 21, 85, 59, 202, 128, 127, 255, 
			125, 250, 83, 82, 13, 255, 72, 32, 99, 190, 114, 10, 252, 217, 38, 
			46, 184, 72, 192, 55, 209, 238, 102, 243, 22, 91, 179, 233, 205, 1, 
			121, 237, 112, 227, 212, 20, 182, 185, 0, 0, 0, 0, 0, 0, 0, 
			0, 208, 128, 27, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 240, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 
			0, 0, 0, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226, 0, 
			

			63, 130, 150, 251, 163, 94, 32, 202, 229, 245, 233, 0, 168, 24, 167, 
			150, 3, 60, 94, 202, 0, 10, 121, 133, 0, 209, 18, 0, 0, 207, 
			77, 0, 96, 233, 25, 89, 88, 75, 0, 0, 0, 0, 89, 0, 0, 
			114, 0, 24, 219, 166, 0, 184, 4, 0, 0, 16, 0, 0, 218, 0, 
			86, 0, 1, 0, 0, 12, 220, 89, 42, 0, 0, 90, 0, 171, 0, 
			54, 0, 30, 18, 0, 0, 0, 0, 148, 0, 3, 147, 0, 0, 151, 
			0, 214, 0, 196, 0, 0, 0, 0, 255, 0, 215, 179, 0, 0, 41, 
			0, 0, 107, 192, 0, 0, 116, 0, 0, 0, 0, 109, 0, 0, 0, 
			0, 0, 72, 0, 82, 0, 0, 0, 0, 9, 0, 46, 0, 0, 0, 
			0, 0, 180, 0, 219, 0, 0, 0, 146, 0, 136, 0, 0, 0, 4, 
			0, 0, 251, 0, 52, 98, 0, 0, 201, 114, 0, 0, 0, 0, 133, 
			0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 224, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;

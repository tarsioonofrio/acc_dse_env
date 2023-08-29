LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 
					-- bias
					-- layer=1
					1686, 438, 4306, 9360, -1091, -5402, -8688, 1214, -7020, 2443, -5363, -6826, -2090, 19324, 6310, 18102, 4868, 16266, 5671, 7810, 10395, -1105, 8825, -6777, 2871, -5807, 757, 11716, 11591, 11518, -1459, -2782,

					-- weights
					-- layer=1 filter=0 channel=0
					-48, 74, 74, 44, 102, 39, 23, 126, 30,
					-- layer=1 filter=0 channel=1
					-13, -38, 5, -24, 4, -10, 12, -25, 29,
					-- layer=1 filter=0 channel=2
					23, -12, -20, -34, -25, 14, -31, 0, 9,
					-- layer=1 filter=0 channel=3
					37, 71, 27, 54, 39, 44, 37, 4, 2,
					-- layer=1 filter=0 channel=4
					-11, -16, 44, -6, 34, 39, 3, 34, 2,
					-- layer=1 filter=0 channel=5
					-40, -25, -38, -39, -10, -32, -35, -5, -24,
					-- layer=1 filter=0 channel=6
					38, -50, -42, -18, -36, 10, -8, 16, -21,
					-- layer=1 filter=0 channel=7
					-23, -14, -25, 13, -11, 35, 10, -13, 41,
					-- layer=1 filter=0 channel=8
					-54, 9, 3, -22, 59, 18, 28, 93, 11,
					-- layer=1 filter=0 channel=9
					-17, -50, -56, -7, -30, -92, -74, -133, -108,
					-- layer=1 filter=0 channel=10
					-38, -10, 7, -33, -27, 34, -37, 17, 2,
					-- layer=1 filter=0 channel=11
					75, 27, -6, 59, -10, 12, 23, -3, 2,
					-- layer=1 filter=0 channel=12
					10, -7, 6, 42, -28, -24, 35, 3, -13,
					-- layer=1 filter=0 channel=13
					-30, -15, -44, -6, -28, -61, 43, 13, 16,
					-- layer=1 filter=0 channel=14
					101, 105, 31, 98, 62, 60, 66, 71, 55,
					-- layer=1 filter=0 channel=15
					21, 58, 15, -26, -22, -78, -53, -49, -113,
					-- layer=1 filter=1 channel=0
					-6, 48, 31, 12, 236, 114, 68, 241, 167,
					-- layer=1 filter=1 channel=1
					54, -22, -32, 32, -48, -16, -17, -57, -21,
					-- layer=1 filter=1 channel=2
					-4, 13, -16, -26, -55, -7, -61, -39, -43,
					-- layer=1 filter=1 channel=3
					-8, 18, -18, 28, 8, -28, 41, 11, -28,
					-- layer=1 filter=1 channel=4
					29, -24, 0, 0, -62, -22, -61, -95, -54,
					-- layer=1 filter=1 channel=5
					20, 21, 17, 6, 2, 47, -60, -55, 42,
					-- layer=1 filter=1 channel=6
					18, 3, 22, 33, 2, 9, -13, -21, 13,
					-- layer=1 filter=1 channel=7
					56, -10, -5, 63, 0, -69, -6, -9, -78,
					-- layer=1 filter=1 channel=8
					-74, 19, 42, -44, 16, 45, -20, 73, 14,
					-- layer=1 filter=1 channel=9
					-63, 15, 59, 37, 41, 13, 128, 101, 81,
					-- layer=1 filter=1 channel=10
					2, 26, 15, 35, -34, -19, -31, -65, -25,
					-- layer=1 filter=1 channel=11
					61, 18, -10, 83, 12, -3, 46, 29, -17,
					-- layer=1 filter=1 channel=12
					70, 46, 19, 23, -2, 1, 14, 5, -37,
					-- layer=1 filter=1 channel=13
					113, 83, 96, 25, 17, 40, 93, -40, 36,
					-- layer=1 filter=1 channel=14
					-29, 35, 19, 19, 11, -38, 14, 16, -41,
					-- layer=1 filter=1 channel=15
					-68, 8, 39, 21, -1, 40, 102, 110, 67,
					-- layer=1 filter=2 channel=0
					10, -13, 43, 30, -13, 14, 7, 6, 81,
					-- layer=1 filter=2 channel=1
					-15, 30, -4, 12, 27, -30, 18, -7, 15,
					-- layer=1 filter=2 channel=2
					-30, -53, -57, -15, -86, -44, -43, -96, -67,
					-- layer=1 filter=2 channel=3
					-38, -68, -71, -99, -106, -88, -111, -65, -76,
					-- layer=1 filter=2 channel=4
					3, 2, -19, 5, -37, -8, -20, -17, 8,
					-- layer=1 filter=2 channel=5
					48, 80, 30, 100, 78, 54, 107, 93, 68,
					-- layer=1 filter=2 channel=6
					52, -3, 6, -1, 16, 41, 28, 1, -5,
					-- layer=1 filter=2 channel=7
					42, 15, 49, 46, 32, 45, 45, 32, 52,
					-- layer=1 filter=2 channel=8
					-33, -43, -49, 35, -49, -7, -8, -11, -19,
					-- layer=1 filter=2 channel=9
					89, 70, 50, 88, 85, 112, 87, 91, 77,
					-- layer=1 filter=2 channel=10
					-21, -12, -5, -13, 11, 22, 2, -26, 26,
					-- layer=1 filter=2 channel=11
					28, 7, -10, -3, -26, -23, -4, -8, -5,
					-- layer=1 filter=2 channel=12
					26, -18, 8, 27, -6, -14, 20, -9, -6,
					-- layer=1 filter=2 channel=13
					-17, -32, -50, -40, -55, -12, -87, -89, -43,
					-- layer=1 filter=2 channel=14
					-109, -78, -50, -101, -141, -128, -125, -87, -105,
					-- layer=1 filter=2 channel=15
					3, -4, -37, 1, 11, 30, 9, 10, -31,
					-- layer=1 filter=3 channel=0
					-118, -83, -14, -61, -84, -55, -104, -79, -100,
					-- layer=1 filter=3 channel=1
					29, 0, 23, 6, -11, 24, -38, -12, -29,
					-- layer=1 filter=3 channel=2
					35, 28, 8, -29, -16, -25, -24, 2, -11,
					-- layer=1 filter=3 channel=3
					30, 40, 55, -3, -25, -30, -66, -71, -84,
					-- layer=1 filter=3 channel=4
					24, 17, 6, 23, 17, 39, 85, 37, 40,
					-- layer=1 filter=3 channel=5
					-41, 2, -16, -43, -23, -43, -8, 7, 26,
					-- layer=1 filter=3 channel=6
					25, 39, 25, -24, 0, -37, -37, -26, -22,
					-- layer=1 filter=3 channel=7
					23, -40, -1, 37, 4, 18, 50, 65, 63,
					-- layer=1 filter=3 channel=8
					39, -5, 55, -36, -59, -23, -37, -58, -72,
					-- layer=1 filter=3 channel=9
					32, -7, 0, -36, -32, -42, -6, -36, 15,
					-- layer=1 filter=3 channel=10
					12, -46, -20, 18, 9, -6, 14, 28, 40,
					-- layer=1 filter=3 channel=11
					-1, 45, 6, -54, -16, -28, -45, -5, -19,
					-- layer=1 filter=3 channel=12
					-24, -10, 19, -31, 19, -16, -4, 26, -8,
					-- layer=1 filter=3 channel=13
					-87, -88, -78, -121, -171, -72, -117, -110, -113,
					-- layer=1 filter=3 channel=14
					-5, 24, 48, 7, 7, -7, 62, 74, 72,
					-- layer=1 filter=3 channel=15
					-5, -38, -23, -30, -77, -29, -2, 30, -19,
					-- layer=1 filter=4 channel=0
					-16, 61, -27, -39, -1, 4, -34, -61, -38,
					-- layer=1 filter=4 channel=1
					-5, -16, 31, -5, -49, -22, 45, -5, -12,
					-- layer=1 filter=4 channel=2
					-35, 63, 3, -78, 20, 57, 44, -53, -39,
					-- layer=1 filter=4 channel=3
					-6, -10, 35, -3, -15, -30, 76, -6, -57,
					-- layer=1 filter=4 channel=4
					-6, 57, 31, -54, -18, 26, -26, -18, -5,
					-- layer=1 filter=4 channel=5
					-15, 70, 14, -70, 2, 67, -49, -63, 21,
					-- layer=1 filter=4 channel=6
					1, 31, 35, -23, -34, -2, 43, -48, -49,
					-- layer=1 filter=4 channel=7
					-17, -12, -4, -21, -26, 3, -10, 23, 0,
					-- layer=1 filter=4 channel=8
					89, 186, 78, -72, 152, 159, 52, -14, 35,
					-- layer=1 filter=4 channel=9
					-35, 88, 30, -60, 72, 90, 3, -110, 90,
					-- layer=1 filter=4 channel=10
					-26, -16, 3, 21, -29, 22, 49, 8, -26,
					-- layer=1 filter=4 channel=11
					11, -83, -1, 74, 18, -85, 14, 62, -23,
					-- layer=1 filter=4 channel=12
					-15, -43, 57, 41, -32, -28, 62, 68, -3,
					-- layer=1 filter=4 channel=13
					42, 60, 84, -43, 0, 81, -40, -9, -18,
					-- layer=1 filter=4 channel=14
					-26, 8, -7, -48, 49, 59, -117, -77, 24,
					-- layer=1 filter=4 channel=15
					1, 30, 11, -35, 99, 146, -33, -41, 94,
					-- layer=1 filter=5 channel=0
					5, -50, -102, -35, -134, -193, -84, -140, -142,
					-- layer=1 filter=5 channel=1
					18, 10, -13, 31, 22, 36, -29, 5, -20,
					-- layer=1 filter=5 channel=2
					34, -3, 15, 38, 19, 16, -37, 1, 15,
					-- layer=1 filter=5 channel=3
					15, -6, 15, -29, -18, -28, -54, -74, -3,
					-- layer=1 filter=5 channel=4
					22, -5, -5, -2, 0, 0, 19, 54, 13,
					-- layer=1 filter=5 channel=5
					-71, -46, -84, -56, -65, 12, 4, 8, 47,
					-- layer=1 filter=5 channel=6
					-13, -9, 5, -6, 6, 5, -36, -28, -24,
					-- layer=1 filter=5 channel=7
					-8, -13, -39, 9, 0, 36, 56, 45, 20,
					-- layer=1 filter=5 channel=8
					-34, -70, -68, -51, -105, -51, -24, -75, -58,
					-- layer=1 filter=5 channel=9
					-54, -48, -75, -52, -86, -64, -20, 2, 0,
					-- layer=1 filter=5 channel=10
					15, 23, 28, 7, -8, 18, 3, 13, -12,
					-- layer=1 filter=5 channel=11
					32, 40, 19, 0, 27, -6, -20, -30, -44,
					-- layer=1 filter=5 channel=12
					-16, 30, 11, 39, -5, 9, 18, 5, 9,
					-- layer=1 filter=5 channel=13
					3, -30, -44, -33, -2, -12, -12, 24, -27,
					-- layer=1 filter=5 channel=14
					12, -22, -66, 5, -29, -71, 18, 27, -4,
					-- layer=1 filter=5 channel=15
					-114, -103, -91, -27, -86, -92, -69, -48, -49,
					-- layer=1 filter=6 channel=0
					-45, -141, -55, -67, -71, -20, -41, -63, -117,
					-- layer=1 filter=6 channel=1
					-6, -39, 13, 21, 26, 5, 29, 23, -22,
					-- layer=1 filter=6 channel=2
					-4, 15, 1, 44, -23, 23, 12, 24, 9,
					-- layer=1 filter=6 channel=3
					26, 7, 3, 12, -12, 8, 32, -14, -30,
					-- layer=1 filter=6 channel=4
					-16, -8, -41, 9, -6, -17, -3, 4, 20,
					-- layer=1 filter=6 channel=5
					-111, -98, -67, -89, -89, -74, -71, -29, -40,
					-- layer=1 filter=6 channel=6
					43, 12, -10, 20, -7, -4, 20, 9, 5,
					-- layer=1 filter=6 channel=7
					-48, -4, -22, -18, -51, -64, -29, 16, -9,
					-- layer=1 filter=6 channel=8
					-33, -28, 74, -101, -33, 43, 22, -35, -29,
					-- layer=1 filter=6 channel=9
					12, 13, 44, 4, 39, 27, -24, -10, 7,
					-- layer=1 filter=6 channel=10
					-28, -33, -42, -19, -12, 26, 10, 30, -10,
					-- layer=1 filter=6 channel=11
					34, 41, 5, 68, -7, -15, 26, -6, -3,
					-- layer=1 filter=6 channel=12
					21, 26, -5, 49, -17, -33, 21, 29, -26,
					-- layer=1 filter=6 channel=13
					-19, 5, -69, -15, -14, -26, -85, -99, -29,
					-- layer=1 filter=6 channel=14
					15, 64, -13, 34, 18, -14, -12, 38, -7,
					-- layer=1 filter=6 channel=15
					15, 2, 32, -5, -11, 4, -42, -30, 5,
					-- layer=1 filter=7 channel=0
					24, -15, -59, -25, -64, -57, 60, 66, 30,
					-- layer=1 filter=7 channel=1
					-53, -41, -52, 19, 31, -31, 42, 59, 24,
					-- layer=1 filter=7 channel=2
					-60, -106, -74, 47, 9, -37, 51, 40, -9,
					-- layer=1 filter=7 channel=3
					-17, -7, -30, -45, 20, 16, 23, 54, 76,
					-- layer=1 filter=7 channel=4
					20, 0, 43, 0, -14, 10, 28, -13, -17,
					-- layer=1 filter=7 channel=5
					-4, -4, -9, -12, -30, -41, -25, -25, -84,
					-- layer=1 filter=7 channel=6
					-55, -58, -35, -18, 31, 4, 37, 32, 57,
					-- layer=1 filter=7 channel=7
					10, 0, 8, 23, -2, -14, 8, -38, -19,
					-- layer=1 filter=7 channel=8
					-36, -73, -58, -67, -72, -2, -18, 22, -16,
					-- layer=1 filter=7 channel=9
					-55, -73, -22, -35, -28, -46, 6, 1, -96,
					-- layer=1 filter=7 channel=10
					2, 10, -12, 26, 9, -17, 58, 30, 10,
					-- layer=1 filter=7 channel=11
					-68, -40, -16, -5, 33, 9, 2, 0, 51,
					-- layer=1 filter=7 channel=12
					-34, -54, -26, -17, 21, 11, 10, 47, 7,
					-- layer=1 filter=7 channel=13
					-1, 9, 17, -17, 12, 11, -34, -87, 0,
					-- layer=1 filter=7 channel=14
					-54, 20, 1, -40, -45, 48, -7, -73, -74,
					-- layer=1 filter=7 channel=15
					40, 35, 103, -47, 45, 50, -62, -60, -35,
					-- layer=1 filter=8 channel=0
					62, 57, -92, 43, -91, -121, -25, -64, -10,
					-- layer=1 filter=8 channel=1
					20, 19, 44, 6, 27, -1, 23, -17, -39,
					-- layer=1 filter=8 channel=2
					-7, 43, 44, 39, -13, -31, 37, -46, -26,
					-- layer=1 filter=8 channel=3
					24, -27, -22, -36, -14, -31, 5, -7, -6,
					-- layer=1 filter=8 channel=4
					28, 6, 34, 0, 25, -13, -8, -29, -48,
					-- layer=1 filter=8 channel=5
					-50, -25, -102, -14, -95, -52, -32, -51, -22,
					-- layer=1 filter=8 channel=6
					-22, -2, 23, -5, -1, -37, -15, -38, -20,
					-- layer=1 filter=8 channel=7
					24, -4, -4, 8, 15, -32, -23, -5, -50,
					-- layer=1 filter=8 channel=8
					39, -42, -162, -43, -133, -138, -72, -89, -41,
					-- layer=1 filter=8 channel=9
					-17, -46, -37, -112, -27, -37, -39, -3, -34,
					-- layer=1 filter=8 channel=10
					30, 46, 11, 41, -19, 1, 7, -39, -29,
					-- layer=1 filter=8 channel=11
					-12, 24, 30, 28, 51, 34, 10, -3, -35,
					-- layer=1 filter=8 channel=12
					-35, 41, 18, 37, 32, 5, -2, 16, -5,
					-- layer=1 filter=8 channel=13
					-18, -31, -53, 29, -15, -15, 13, 4, -19,
					-- layer=1 filter=8 channel=14
					18, 32, 19, 41, 74, 73, 34, 68, -15,
					-- layer=1 filter=8 channel=15
					-61, -94, -52, -23, -40, -39, -15, -39, -67,
					-- layer=1 filter=9 channel=0
					106, -87, 50, 127, -116, 110, 90, -116, 112,
					-- layer=1 filter=9 channel=1
					13, 34, -33, 29, -15, -11, 2, 7, -36,
					-- layer=1 filter=9 channel=2
					45, -21, -20, 11, -27, -22, 33, -50, -29,
					-- layer=1 filter=9 channel=3
					-3, -9, 1, -35, 46, 24, 9, 21, -20,
					-- layer=1 filter=9 channel=4
					44, -18, 9, 37, -45, -35, 41, -26, 2,
					-- layer=1 filter=9 channel=5
					17, -45, -9, 80, -93, 22, 68, -28, -23,
					-- layer=1 filter=9 channel=6
					30, 12, -28, 47, -11, -36, -5, -5, -2,
					-- layer=1 filter=9 channel=7
					-3, 33, -4, 22, 0, -16, -26, 34, -8,
					-- layer=1 filter=9 channel=8
					118, -73, 96, 82, -136, 82, 35, -72, 111,
					-- layer=1 filter=9 channel=9
					4, -76, 20, -86, -116, -21, -112, -97, -53,
					-- layer=1 filter=9 channel=10
					30, 0, -6, 2, -19, -16, 37, -35, -35,
					-- layer=1 filter=9 channel=11
					-3, 39, -35, -55, 15, -38, -45, 41, -39,
					-- layer=1 filter=9 channel=12
					-28, 38, -39, -27, 51, -15, 16, 5, -6,
					-- layer=1 filter=9 channel=13
					5, -30, -14, -9, -7, -18, 7, 41, 9,
					-- layer=1 filter=9 channel=14
					-5, 32, 21, -38, 2, 11, -1, 2, -11,
					-- layer=1 filter=9 channel=15
					-14, -11, -31, -101, -87, -54, -98, -71, -45,
					-- layer=1 filter=10 channel=0
					-26, 30, -7, 41, 43, 13, 17, 96, 75,
					-- layer=1 filter=10 channel=1
					-32, -39, -7, -1, -18, -20, 36, 10, 50,
					-- layer=1 filter=10 channel=2
					23, 46, 19, 29, 4, -6, 35, 35, 32,
					-- layer=1 filter=10 channel=3
					20, -9, -6, 8, 28, 11, 42, 47, 38,
					-- layer=1 filter=10 channel=4
					-46, -32, -37, -25, -45, 18, 8, -22, -16,
					-- layer=1 filter=10 channel=5
					-83, 3, -55, -83, -47, -92, -118, -85, -69,
					-- layer=1 filter=10 channel=6
					-42, 19, -32, 4, 10, 6, -2, 19, 28,
					-- layer=1 filter=10 channel=7
					-22, -20, -43, 2, 6, -40, -17, 22, 17,
					-- layer=1 filter=10 channel=8
					-42, 54, -2, -6, 62, -7, -27, 37, 56,
					-- layer=1 filter=10 channel=9
					-104, -93, -18, -86, -98, -103, -126, -80, -85,
					-- layer=1 filter=10 channel=10
					-1, -15, -50, -4, 7, 7, 31, 39, 9,
					-- layer=1 filter=10 channel=11
					58, 12, 6, 50, 13, -26, 59, 37, 4,
					-- layer=1 filter=10 channel=12
					-9, -11, -26, -1, -27, 10, 49, 19, -3,
					-- layer=1 filter=10 channel=13
					-5, 3, 30, 65, 1, 46, -34, -53, -51,
					-- layer=1 filter=10 channel=14
					-34, -54, 17, -2, -45, 11, -9, -13, -67,
					-- layer=1 filter=10 channel=15
					-49, -37, -22, -68, -87, -87, -62, -120, -78,
					-- layer=1 filter=11 channel=0
					18, 68, 61, -67, 79, 66, -98, 54, 116,
					-- layer=1 filter=11 channel=1
					-12, 19, 29, 2, -17, 30, -35, -42, 28,
					-- layer=1 filter=11 channel=2
					10, 40, 75, -21, 50, 39, -54, -11, 34,
					-- layer=1 filter=11 channel=3
					-61, -11, 4, -8, -30, 7, -29, -5, 10,
					-- layer=1 filter=11 channel=4
					-10, 28, -21, -1, -19, -31, -5, -19, -27,
					-- layer=1 filter=11 channel=5
					-11, -14, -38, -31, 19, -26, -17, 28, 16,
					-- layer=1 filter=11 channel=6
					9, 7, 46, -1, -3, 23, 7, 30, 0,
					-- layer=1 filter=11 channel=7
					-25, -55, -33, 20, 7, -45, 21, -6, -16,
					-- layer=1 filter=11 channel=8
					27, 112, 88, -65, 72, 66, -2, 71, 156,
					-- layer=1 filter=11 channel=9
					-105, 25, 16, -25, -39, -3, -33, -20, 33,
					-- layer=1 filter=11 channel=10
					3, -33, 28, 8, -18, 12, -61, -50, 19,
					-- layer=1 filter=11 channel=11
					-33, 4, 53, 21, -34, 32, 30, 4, -21,
					-- layer=1 filter=11 channel=12
					12, -32, 14, 13, -40, 30, 23, 4, -50,
					-- layer=1 filter=11 channel=13
					-55, -62, -48, -13, -47, -126, 0, -28, -70,
					-- layer=1 filter=11 channel=14
					-130, -104, -90, -101, -93, -108, -49, -86, -79,
					-- layer=1 filter=11 channel=15
					-71, -35, -22, -63, -36, -75, -42, -67, 12,
					-- layer=1 filter=12 channel=0
					-3, 70, 95, 9, 29, -24, -4, -93, -61,
					-- layer=1 filter=12 channel=1
					-47, -52, -15, -16, 9, 24, 40, 7, 32,
					-- layer=1 filter=12 channel=2
					15, -20, -48, -14, -29, 2, 7, 13, -12,
					-- layer=1 filter=12 channel=3
					48, 56, 11, 21, -16, 9, 10, -19, 34,
					-- layer=1 filter=12 channel=4
					-48, -96, -55, -18, 0, 0, 52, 49, 39,
					-- layer=1 filter=12 channel=5
					-21, -11, 9, -25, 21, -21, 33, 29, 16,
					-- layer=1 filter=12 channel=6
					-16, 23, 12, -18, -5, 28, 0, 9, -34,
					-- layer=1 filter=12 channel=7
					-20, -61, -52, 10, 25, 32, 30, 36, 40,
					-- layer=1 filter=12 channel=8
					-13, 31, 26, -45, -106, -142, -29, -67, -93,
					-- layer=1 filter=12 channel=9
					104, 90, 0, 163, 64, 23, 84, 81, 85,
					-- layer=1 filter=12 channel=10
					-44, -66, -40, 24, 46, -5, 66, 35, -3,
					-- layer=1 filter=12 channel=11
					-15, -14, -65, 0, 41, 54, 37, 37, 18,
					-- layer=1 filter=12 channel=12
					-20, -5, -50, 12, 0, 0, 31, 46, 0,
					-- layer=1 filter=12 channel=13
					-61, -32, -54, 18, -22, 23, 64, 94, 52,
					-- layer=1 filter=12 channel=14
					-24, -54, -71, -45, -27, 10, 28, 57, -10,
					-- layer=1 filter=12 channel=15
					50, 58, -25, 179, 160, 99, 2, 65, -1,
					-- layer=1 filter=13 channel=0
					-84, 25, 40, -85, 4, -9, -65, -55, -6,
					-- layer=1 filter=13 channel=1
					-13, -52, -14, -28, -41, -9, 11, -20, -40,
					-- layer=1 filter=13 channel=2
					-58, -33, 68, -60, -47, 49, 59, -29, 4,
					-- layer=1 filter=13 channel=3
					22, 37, 74, 13, 1, 60, 30, 10, 28,
					-- layer=1 filter=13 channel=4
					-19, -4, 24, 12, -9, -9, 20, -2, 24,
					-- layer=1 filter=13 channel=5
					23, 38, 11, -36, 24, 26, -43, -32, 25,
					-- layer=1 filter=13 channel=6
					-46, -28, 29, -30, -43, 26, 2, -86, -38,
					-- layer=1 filter=13 channel=7
					-6, -13, -27, 29, 4, 11, 45, 45, 31,
					-- layer=1 filter=13 channel=8
					41, 90, 88, -40, 99, 92, 17, 44, 67,
					-- layer=1 filter=13 channel=9
					-35, -7, 86, -91, 0, 93, -13, -57, 22,
					-- layer=1 filter=13 channel=10
					-58, -38, -14, -8, -37, -16, 47, 29, -23,
					-- layer=1 filter=13 channel=11
					-22, -74, -66, 46, -6, -48, 81, 20, -20,
					-- layer=1 filter=13 channel=12
					-22, -44, -53, 62, -25, -17, 78, 6, -7,
					-- layer=1 filter=13 channel=13
					37, -7, -64, -42, -15, -72, 18, 16, -63,
					-- layer=1 filter=13 channel=14
					-2, 37, 17, -25, -20, 18, -3, 14, 23,
					-- layer=1 filter=13 channel=15
					-17, 20, 41, -98, -84, -19, -66, -66, -55,
					-- layer=1 filter=14 channel=0
					-75, -114, -68, -149, -237, -163, -129, -157, -129,
					-- layer=1 filter=14 channel=1
					1, 13, 17, 2, 4, 9, -14, -32, 18,
					-- layer=1 filter=14 channel=2
					20, 32, -16, -6, -1, -12, -38, -53, -24,
					-- layer=1 filter=14 channel=3
					29, 22, 24, 41, 21, 21, 8, -13, -41,
					-- layer=1 filter=14 channel=4
					-40, -19, -31, -21, 3, 29, -11, 6, 38,
					-- layer=1 filter=14 channel=5
					-56, -73, -34, -76, -34, -25, -12, -1, -14,
					-- layer=1 filter=14 channel=6
					7, 42, 29, 17, 39, 9, -14, -8, -24,
					-- layer=1 filter=14 channel=7
					-27, -49, -61, -51, -32, -1, 15, 4, 29,
					-- layer=1 filter=14 channel=8
					7, -29, -36, 2, -38, -17, -37, -95, -35,
					-- layer=1 filter=14 channel=9
					88, 45, 14, 45, 67, 81, 6, 3, 31,
					-- layer=1 filter=14 channel=10
					-33, -36, -4, 15, -37, -19, -18, 6, 19,
					-- layer=1 filter=14 channel=11
					2, 0, 22, -21, 14, 2, 15, -13, -41,
					-- layer=1 filter=14 channel=12
					-5, -9, -2, 23, 21, -17, -6, -25, 13,
					-- layer=1 filter=14 channel=13
					-32, -40, 47, -39, 3, 59, 59, 49, 63,
					-- layer=1 filter=14 channel=14
					62, 19, 48, 73, 69, 65, 79, 100, 99,
					-- layer=1 filter=14 channel=15
					90, 67, 29, 54, 75, 109, 33, 43, 84,
					-- layer=1 filter=15 channel=0
					-102, -42, -24, -46, 7, 72, -112, -4, 26,
					-- layer=1 filter=15 channel=1
					-104, -106, -38, -159, -85, 42, -126, -102, -42,
					-- layer=1 filter=15 channel=2
					-47, -19, -85, 35, -5, 72, 12, 46, 71,
					-- layer=1 filter=15 channel=3
					67, 63, 48, 50, 38, 93, 53, 57, 42,
					-- layer=1 filter=15 channel=4
					31, 6, -1, 25, -11, 33, -3, -16, -13,
					-- layer=1 filter=15 channel=5
					42, 45, 25, 90, 43, 31, 55, 51, 29,
					-- layer=1 filter=15 channel=6
					-114, -64, -83, -130, -69, 28, -101, -32, 34,
					-- layer=1 filter=15 channel=7
					63, 52, 28, 33, 47, 50, 34, -3, 2,
					-- layer=1 filter=15 channel=8
					-78, -32, 1, -20, 6, 91, 17, 36, 47,
					-- layer=1 filter=15 channel=9
					17, -1, -62, 41, -30, -80, -1, 48, 140,
					-- layer=1 filter=15 channel=10
					-101, -95, -76, -129, -96, 5, -107, -126, -26,
					-- layer=1 filter=15 channel=11
					-61, -40, -79, -132, -115, -86, -22, -52, -24,
					-- layer=1 filter=15 channel=12
					-84, -64, -103, -133, -163, -84, -75, -139, -77,
					-- layer=1 filter=15 channel=13
					-20, -53, -92, -91, -81, -67, -80, -32, -58,
					-- layer=1 filter=15 channel=14
					12, 20, -20, 16, -14, -39, -8, 45, 123,
					-- layer=1 filter=15 channel=15
					6, -19, -70, -1, -50, -22, 4, 103, 130,
					-- layer=1 filter=16 channel=0
					-11, 66, 66, 69, 10, 46, 106, 83, 1,
					-- layer=1 filter=16 channel=1
					-68, -43, -9, -49, 15, 46, 52, 46, 68,
					-- layer=1 filter=16 channel=2
					-61, -77, -41, -24, -2, 26, 3, 22, 36,
					-- layer=1 filter=16 channel=3
					-16, 15, -2, -39, 2, 9, 28, 4, 27,
					-- layer=1 filter=16 channel=4
					8, -1, -41, -32, -26, 7, -29, 12, -6,
					-- layer=1 filter=16 channel=5
					-39, -58, 2, 3, 8, 10, -15, -1, 59,
					-- layer=1 filter=16 channel=6
					-32, -22, -17, -45, -18, 27, 42, 18, 34,
					-- layer=1 filter=16 channel=7
					-39, -37, -19, -13, -40, 2, 4, 17, -6,
					-- layer=1 filter=16 channel=8
					-74, -64, -1, -108, -94, 0, -73, -69, -84,
					-- layer=1 filter=16 channel=9
					66, 12, -10, 45, -6, 18, -17, -5, 3,
					-- layer=1 filter=16 channel=10
					-27, -33, -7, -12, 28, -4, 28, 24, 56,
					-- layer=1 filter=16 channel=11
					-22, -96, -69, -66, -68, -39, -14, -28, 0,
					-- layer=1 filter=16 channel=12
					-65, -41, -40, -61, -56, -4, -10, -12, 29,
					-- layer=1 filter=16 channel=13
					23, -48, -59, 10, 3, -63, 7, -8, 36,
					-- layer=1 filter=16 channel=14
					90, 35, -3, 112, 29, 32, 17, -10, -31,
					-- layer=1 filter=16 channel=15
					115, 69, 44, 105, 26, 40, 6, 0, -24,
					-- layer=1 filter=17 channel=0
					-156, -222, -158, -207, -292, -191, -153, -224, -118,
					-- layer=1 filter=17 channel=1
					3, -12, 1, 11, 13, -2, 22, 14, 3,
					-- layer=1 filter=17 channel=2
					-51, -54, -23, -32, -52, -55, -49, -82, -67,
					-- layer=1 filter=17 channel=3
					18, 30, 6, -12, 32, 50, 25, 10, 1,
					-- layer=1 filter=17 channel=4
					8, 49, 32, 40, 14, -5, 43, 41, 6,
					-- layer=1 filter=17 channel=5
					51, 78, 47, 38, 20, 5, 41, 69, 13,
					-- layer=1 filter=17 channel=6
					-5, 29, 17, -24, -11, 12, 24, 7, 26,
					-- layer=1 filter=17 channel=7
					12, 12, 31, 6, 13, 33, 17, 14, 37,
					-- layer=1 filter=17 channel=8
					-136, -183, -102, -165, -225, -159, -181, -205, -142,
					-- layer=1 filter=17 channel=9
					-29, -89, -47, -130, -147, -157, -91, -59, -99,
					-- layer=1 filter=17 channel=10
					27, -3, -18, 11, 10, -9, 5, 18, -16,
					-- layer=1 filter=17 channel=11
					-36, 4, 8, 0, 16, 7, -22, -37, -40,
					-- layer=1 filter=17 channel=12
					38, 32, -2, 29, 6, -14, 1, -8, -20,
					-- layer=1 filter=17 channel=13
					-79, -68, -38, -47, -66, -74, -92, -27, -108,
					-- layer=1 filter=17 channel=14
					-78, -103, -81, -139, -121, -122, -77, -57, -49,
					-- layer=1 filter=17 channel=15
					-9, -81, -12, -74, -52, -105, -57, -102, -122,
					-- layer=1 filter=18 channel=0
					-44, -25, 22, -125, -136, -75, -82, -158, -39,
					-- layer=1 filter=18 channel=1
					0, -21, -19, -19, 23, 37, -12, 0, 2,
					-- layer=1 filter=18 channel=2
					-31, -44, -1, -22, 6, 29, -25, -14, 24,
					-- layer=1 filter=18 channel=3
					-33, -38, -26, 20, 35, 26, 18, 8, -13,
					-- layer=1 filter=18 channel=4
					-35, 46, 11, -29, -32, -4, -32, -58, -56,
					-- layer=1 filter=18 channel=5
					55, 59, 73, 32, 46, 86, 47, 61, 37,
					-- layer=1 filter=18 channel=6
					5, 24, -3, 41, 39, 11, 0, 4, 45,
					-- layer=1 filter=18 channel=7
					4, 35, 19, -22, -57, -12, -36, -4, -9,
					-- layer=1 filter=18 channel=8
					26, 19, 69, 14, 34, 54, 22, 20, 52,
					-- layer=1 filter=18 channel=9
					78, 2, 31, 71, 83, 47, 74, 70, 97,
					-- layer=1 filter=18 channel=10
					9, 28, 44, -21, -7, 12, -25, -24, -30,
					-- layer=1 filter=18 channel=11
					-70, -34, -27, -25, -69, 13, -21, -23, -53,
					-- layer=1 filter=18 channel=12
					-12, 11, 20, -12, 0, -4, -52, -42, 14,
					-- layer=1 filter=18 channel=13
					95, 91, 136, -39, 80, 47, -24, 2, 45,
					-- layer=1 filter=18 channel=14
					-84, -90, -20, -58, -56, -52, -1, -37, -11,
					-- layer=1 filter=18 channel=15
					23, 59, 41, 21, 57, 51, 41, 55, 53,
					-- layer=1 filter=19 channel=0
					55, 45, 90, -59, 3, 33, 20, -14, -46,
					-- layer=1 filter=19 channel=1
					-1, 0, -29, -19, -33, -1, 29, 43, 44,
					-- layer=1 filter=19 channel=2
					-44, -31, -2, 7, -22, -37, -24, -12, 6,
					-- layer=1 filter=19 channel=3
					-10, 27, 18, 21, 18, -9, 14, 22, 32,
					-- layer=1 filter=19 channel=4
					-45, -46, -56, -6, -21, -30, 38, 10, 43,
					-- layer=1 filter=19 channel=5
					40, 17, 7, -30, 21, 7, -32, -32, -34,
					-- layer=1 filter=19 channel=6
					-4, 2, -14, -21, -29, 12, 11, -8, -32,
					-- layer=1 filter=19 channel=7
					-19, -28, 1, 5, -10, -28, 30, 42, 12,
					-- layer=1 filter=19 channel=8
					41, 26, -2, -45, -2, -12, -101, -244, -244,
					-- layer=1 filter=19 channel=9
					101, 93, 77, 169, 149, 76, -68, -73, -6,
					-- layer=1 filter=19 channel=10
					-34, 4, -8, 0, -17, -17, 18, 42, 17,
					-- layer=1 filter=19 channel=11
					6, -6, -6, 9, -38, -21, -7, -12, 3,
					-- layer=1 filter=19 channel=12
					-12, -26, -36, -21, 0, -17, -8, 33, 14,
					-- layer=1 filter=19 channel=13
					16, 80, -3, 11, 5, 21, -23, -66, -1,
					-- layer=1 filter=19 channel=14
					-24, 48, 0, 39, 18, -23, -72, -89, -27,
					-- layer=1 filter=19 channel=15
					72, 114, 48, 103, 86, 81, -40, 38, 31,
					-- layer=1 filter=20 channel=0
					6, 47, -11, 13, 110, 1, 13, 43, 82,
					-- layer=1 filter=20 channel=1
					-5, -14, 8, 3, 23, -19, -2, 8, -19,
					-- layer=1 filter=20 channel=2
					-49, -36, -12, -44, 6, -26, -4, -5, -50,
					-- layer=1 filter=20 channel=3
					-67, -12, -6, -22, -47, -7, -46, -2, -29,
					-- layer=1 filter=20 channel=4
					17, 41, -12, 29, 20, 14, 36, 3, -1,
					-- layer=1 filter=20 channel=5
					-21, -23, -34, -58, 0, 22, -32, 18, 37,
					-- layer=1 filter=20 channel=6
					-6, -16, -55, -31, 7, 3, -8, 3, -7,
					-- layer=1 filter=20 channel=7
					40, 11, -8, -8, -11, 12, 13, 34, 35,
					-- layer=1 filter=20 channel=8
					-24, 72, -22, -22, 70, 13, 5, 49, -17,
					-- layer=1 filter=20 channel=9
					-50, -49, -44, -43, -22, -20, 21, 21, 22,
					-- layer=1 filter=20 channel=10
					36, 12, -8, -26, 33, -5, 23, 8, 20,
					-- layer=1 filter=20 channel=11
					17, -11, 0, 43, -16, 17, 34, 33, -11,
					-- layer=1 filter=20 channel=12
					-5, -3, 22, 22, -28, 25, 42, 31, -5,
					-- layer=1 filter=20 channel=13
					-72, -36, -65, -134, -132, -17, -72, -68, -59,
					-- layer=1 filter=20 channel=14
					3, -20, -30, -35, -19, 4, -8, -4, 34,
					-- layer=1 filter=20 channel=15
					-36, -14, -32, -83, -54, -31, 3, -25, 38,
					-- layer=1 filter=21 channel=0
					127, 158, 64, 99, 112, 54, 104, 125, 30,
					-- layer=1 filter=21 channel=1
					6, 2, -33, 11, 22, 2, -25, 11, -2,
					-- layer=1 filter=21 channel=2
					-19, -6, -29, 14, -6, -3, -3, -3, 3,
					-- layer=1 filter=21 channel=3
					45, -10, 44, 78, 19, 46, 38, 17, 28,
					-- layer=1 filter=21 channel=4
					-36, -34, 3, -42, -28, 30, 3, 4, 47,
					-- layer=1 filter=21 channel=5
					32, 44, -22, 5, 0, 20, 28, -19, -14,
					-- layer=1 filter=21 channel=6
					1, 34, 0, -2, -2, -10, 1, 12, -51,
					-- layer=1 filter=21 channel=7
					13, 14, 9, -16, -24, 19, 24, 25, 6,
					-- layer=1 filter=21 channel=8
					-98, -19, -42, -77, -79, -71, 28, -61, -48,
					-- layer=1 filter=21 channel=9
					-54, 21, 17, 10, 37, 1, 31, -12, -53,
					-- layer=1 filter=21 channel=10
					-27, 13, -3, -2, -34, 19, -32, 15, 5,
					-- layer=1 filter=21 channel=11
					6, -28, -23, 22, 24, -9, 16, 21, -14,
					-- layer=1 filter=21 channel=12
					-30, 15, 0, 26, 3, -8, -1, 2, -31,
					-- layer=1 filter=21 channel=13
					19, -21, 8, 19, -5, 34, 51, -2, -41,
					-- layer=1 filter=21 channel=14
					35, 35, 44, 54, 38, 59, 92, 73, 70,
					-- layer=1 filter=21 channel=15
					50, 18, 76, 66, 85, 63, 75, 25, -18,
					-- layer=1 filter=22 channel=0
					11, 43, 6, 46, 18, 72, 46, 103, 64,
					-- layer=1 filter=22 channel=1
					-5, 28, -16, -9, 21, -6, 24, -8, 27,
					-- layer=1 filter=22 channel=2
					-54, -50, -24, -25, -12, 0, -18, -18, -7,
					-- layer=1 filter=22 channel=3
					-3, 19, 20, -5, -19, -29, -42, -24, -32,
					-- layer=1 filter=22 channel=4
					1, 6, 48, 7, 8, -1, -13, -3, 7,
					-- layer=1 filter=22 channel=5
					-10, 13, 33, -6, -9, 47, 43, 13, -2,
					-- layer=1 filter=22 channel=6
					-3, -7, -34, 15, -15, 18, -27, -25, -3,
					-- layer=1 filter=22 channel=7
					32, 18, -4, 1, 25, 49, 6, 41, 21,
					-- layer=1 filter=22 channel=8
					13, -35, -9, -24, -8, 8, -5, 43, -46,
					-- layer=1 filter=22 channel=9
					-58, -38, -68, -96, -77, -91, 4, -7, 6,
					-- layer=1 filter=22 channel=10
					8, 29, 4, 20, 8, -5, 8, 27, 27,
					-- layer=1 filter=22 channel=11
					12, -39, -35, 0, -12, -29, 13, -4, -14,
					-- layer=1 filter=22 channel=12
					27, -30, -26, 7, 14, -13, -18, 13, -12,
					-- layer=1 filter=22 channel=13
					-17, -45, -37, -106, -78, -27, -44, -95, -26,
					-- layer=1 filter=22 channel=14
					-56, -2, -31, -69, -36, -23, -36, -19, 22,
					-- layer=1 filter=22 channel=15
					-74, -101, -46, -40, -36, -36, 31, 21, 25,
					-- layer=1 filter=23 channel=0
					28, 104, 58, 87, 175, 20, 104, 65, 0,
					-- layer=1 filter=23 channel=1
					-39, 6, 4, -26, 11, -4, -17, 25, 22,
					-- layer=1 filter=23 channel=2
					1, 32, 6, -4, 13, 18, -18, 42, -17,
					-- layer=1 filter=23 channel=3
					31, 24, 10, 16, -28, 0, -19, -12, -4,
					-- layer=1 filter=23 channel=4
					-5, -8, 39, 18, 25, 4, 9, 27, -32,
					-- layer=1 filter=23 channel=5
					-20, 24, -7, 0, 33, 36, 32, 42, 21,
					-- layer=1 filter=23 channel=6
					0, 37, 9, -11, 29, 50, -32, 53, 52,
					-- layer=1 filter=23 channel=7
					12, 0, -8, -7, 14, -9, -10, 5, 7,
					-- layer=1 filter=23 channel=8
					47, 16, 28, 15, 82, -1, 33, 57, 28,
					-- layer=1 filter=23 channel=9
					-24, -47, -34, 18, -35, -29, -10, -78, -22,
					-- layer=1 filter=23 channel=10
					-13, 0, 30, -39, 12, 23, 15, 7, -23,
					-- layer=1 filter=23 channel=11
					-8, -69, 2, -31, -68, 4, -24, -31, 16,
					-- layer=1 filter=23 channel=12
					-11, -38, 22, -42, -42, 18, -28, -31, -3,
					-- layer=1 filter=23 channel=13
					14, 25, -23, 61, -32, 16, 37, -19, 29,
					-- layer=1 filter=23 channel=14
					26, -11, 32, 34, -66, 30, 4, -32, -28,
					-- layer=1 filter=23 channel=15
					-26, -40, -13, -99, -75, -12, -110, -69, -76,
					-- layer=1 filter=24 channel=0
					25, -98, -67, -32, -171, -92, 7, -64, -77,
					-- layer=1 filter=24 channel=1
					32, -10, -34, 40, -1, -45, 50, -20, -47,
					-- layer=1 filter=24 channel=2
					-5, -4, -31, 4, -43, -109, 42, -10, -92,
					-- layer=1 filter=24 channel=3
					37, -16, -24, 60, 38, -44, 67, 36, -21,
					-- layer=1 filter=24 channel=4
					-14, -38, -12, 7, -33, -8, -7, -23, -4,
					-- layer=1 filter=24 channel=5
					-29, -8, 25, -68, -31, 18, -68, -50, -3,
					-- layer=1 filter=24 channel=6
					56, 4, -43, 59, -23, -51, 26, 16, -63,
					-- layer=1 filter=24 channel=7
					-21, -6, 46, 14, 26, 39, 23, 17, 20,
					-- layer=1 filter=24 channel=8
					-39, -81, 7, -44, -125, -9, 45, -42, -62,
					-- layer=1 filter=24 channel=9
					-51, 2, 22, -13, -83, 11, 15, -29, -48,
					-- layer=1 filter=24 channel=10
					-1, 2, -9, 31, -5, -45, 24, 19, -33,
					-- layer=1 filter=24 channel=11
					59, -10, 0, 46, 4, 26, 52, 37, 0,
					-- layer=1 filter=24 channel=12
					52, 25, -33, 50, 10, -26, 73, 43, -10,
					-- layer=1 filter=24 channel=13
					-67, 2, 46, -40, -16, 31, -51, 34, 29,
					-- layer=1 filter=24 channel=14
					-15, 28, 81, -33, 12, 57, -5, -2, 41,
					-- layer=1 filter=24 channel=15
					-68, 20, 4, -30, -22, -35, -48, -46, -63,
					-- layer=1 filter=25 channel=0
					7, -45, 14, 54, 58, 103, 87, 100, 96,
					-- layer=1 filter=25 channel=1
					34, -10, -23, -36, -31, 24, -13, -9, 13,
					-- layer=1 filter=25 channel=2
					44, 6, -3, -17, 32, -18, -60, -48, 53,
					-- layer=1 filter=25 channel=3
					57, 41, 17, 12, -23, -23, -19, -43, -15,
					-- layer=1 filter=25 channel=4
					0, -42, -38, -17, 8, 21, 4, 45, 21,
					-- layer=1 filter=25 channel=5
					16, -47, 21, 25, 2, 55, 11, 46, 44,
					-- layer=1 filter=25 channel=6
					55, 15, 10, 19, -16, -5, -28, -40, -2,
					-- layer=1 filter=25 channel=7
					-40, -36, -28, 30, 15, 36, 12, 36, 32,
					-- layer=1 filter=25 channel=8
					5, -75, -13, -14, 41, 12, -3, -19, 51,
					-- layer=1 filter=25 channel=9
					22, 68, -58, 43, 77, 13, -44, 30, 82,
					-- layer=1 filter=25 channel=10
					-20, -46, -29, -3, -32, 33, -1, 31, 41,
					-- layer=1 filter=25 channel=11
					40, 71, 38, -3, 2, 20, -32, -48, -38,
					-- layer=1 filter=25 channel=12
					16, 10, 15, -18, -24, -21, -50, -25, -32,
					-- layer=1 filter=25 channel=13
					-65, -49, -54, 51, 38, -10, 19, 28, 49,
					-- layer=1 filter=25 channel=14
					38, -7, -61, 65, 57, -26, -19, 68, 49,
					-- layer=1 filter=25 channel=15
					5, 13, -41, 92, 27, 4, 16, 62, 76,
					-- layer=1 filter=26 channel=0
					27, 17, 39, 21, -16, -25, -11, -21, 28,
					-- layer=1 filter=26 channel=1
					27, 10, 1, -13, -22, 25, -2, -14, -35,
					-- layer=1 filter=26 channel=2
					-19, -20, -13, 27, -11, 23, 18, -13, 21,
					-- layer=1 filter=26 channel=3
					28, -17, -20, 5, 8, -24, -24, -16, 29,
					-- layer=1 filter=26 channel=4
					5, 31, 38, 30, -16, 4, -44, -10, -19,
					-- layer=1 filter=26 channel=5
					14, 0, 2, 4, -13, -44, 1, -49, -59,
					-- layer=1 filter=26 channel=6
					-28, -1, -11, 28, -16, 10, -19, 7, -10,
					-- layer=1 filter=26 channel=7
					12, 39, -7, -34, -5, -18, -36, -59, -57,
					-- layer=1 filter=26 channel=8
					30, -22, -4, 49, -4, -26, 8, 43, 11,
					-- layer=1 filter=26 channel=9
					68, 46, 51, 88, 80, 34, 47, 101, 65,
					-- layer=1 filter=26 channel=10
					36, 47, -9, -14, 4, -11, 1, -28, -45,
					-- layer=1 filter=26 channel=11
					-25, -5, 0, 27, -4, 22, -30, 14, -26,
					-- layer=1 filter=26 channel=12
					41, -9, 8, 9, 6, -4, 13, -23, -12,
					-- layer=1 filter=26 channel=13
					30, 1, -22, 8, 25, 19, -46, -63, -7,
					-- layer=1 filter=26 channel=14
					58, 55, 47, 66, 43, 63, 56, 38, 51,
					-- layer=1 filter=26 channel=15
					55, 65, 46, 131, 145, 69, 80, 102, 50,
					-- layer=1 filter=27 channel=0
					-48, -49, -53, -25, -18, -21, -12, 38, 9,
					-- layer=1 filter=27 channel=1
					-24, -9, 9, -16, 18, -10, 15, 34, -4,
					-- layer=1 filter=27 channel=2
					-27, -23, -37, 9, -17, -3, -21, -27, -35,
					-- layer=1 filter=27 channel=3
					31, -16, 3, -17, 25, 18, -2, 19, 22,
					-- layer=1 filter=27 channel=4
					-18, -58, -76, -67, -48, -74, -28, -67, -43,
					-- layer=1 filter=27 channel=5
					39, 28, 39, 23, 37, 16, 86, 80, 45,
					-- layer=1 filter=27 channel=6
					34, 0, 4, 32, 40, 43, 52, 54, 46,
					-- layer=1 filter=27 channel=7
					-56, -66, -56, -37, -42, -62, -22, 8, -18,
					-- layer=1 filter=27 channel=8
					17, -12, 5, 45, 12, 2, 13, 13, 34,
					-- layer=1 filter=27 channel=9
					58, 60, 81, 22, 58, 65, 75, 37, 40,
					-- layer=1 filter=27 channel=10
					11, -16, 17, -22, -19, 11, 0, -21, -14,
					-- layer=1 filter=27 channel=11
					-3, -9, -2, -2, -19, -23, -4, 26, 17,
					-- layer=1 filter=27 channel=12
					-3, 24, 13, -5, 0, 23, 1, 31, 17,
					-- layer=1 filter=27 channel=13
					-37, -30, 21, -37, -128, -75, -78, -96, 4,
					-- layer=1 filter=27 channel=14
					-53, -78, -42, -87, -75, -60, -67, -67, -73,
					-- layer=1 filter=27 channel=15
					-15, -21, 32, 8, -32, -23, -30, -55, -8,
					-- layer=1 filter=28 channel=0
					-83, 27, 49, -39, 39, 52, -57, -57, -23,
					-- layer=1 filter=28 channel=1
					4, -20, 23, -2, 7, 10, -1, 12, 10,
					-- layer=1 filter=28 channel=2
					3, 24, -13, -42, -7, -2, -34, -2, 7,
					-- layer=1 filter=28 channel=3
					53, 60, 3, 34, 60, 0, 44, 46, 0,
					-- layer=1 filter=28 channel=4
					-26, 10, 7, 5, 13, 28, -10, 24, 7,
					-- layer=1 filter=28 channel=5
					-23, 47, 40, 9, -7, 31, 16, 11, -1,
					-- layer=1 filter=28 channel=6
					31, 27, -21, -22, -5, 30, 17, 26, -7,
					-- layer=1 filter=28 channel=7
					-6, 13, 20, -35, -2, 25, 13, -28, 6,
					-- layer=1 filter=28 channel=8
					-38, 54, 51, -14, 21, 53, 12, 5, -14,
					-- layer=1 filter=28 channel=9
					-124, -127, -142, -193, -212, -114, -118, -147, -129,
					-- layer=1 filter=28 channel=10
					-24, 17, 22, -5, 4, 25, 5, -31, -24,
					-- layer=1 filter=28 channel=11
					43, 24, 46, -15, 1, 13, -20, -2, -20,
					-- layer=1 filter=28 channel=12
					31, -7, -16, -41, -31, 26, -24, 13, -23,
					-- layer=1 filter=28 channel=13
					-50, -32, 7, -71, -76, -44, -83, -121, -54,
					-- layer=1 filter=28 channel=14
					-101, -120, -69, -46, -18, -26, -96, -104, -41,
					-- layer=1 filter=28 channel=15
					-120, -195, -140, -150, -137, -128, -107, -113, -110,
					-- layer=1 filter=29 channel=0
					98, 75, 96, 96, 50, 42, 29, 16, 33,
					-- layer=1 filter=29 channel=1
					-26, 0, -8, -15, 19, 0, 4, -22, 9,
					-- layer=1 filter=29 channel=2
					-31, -35, -28, -61, -37, -11, -40, -41, -2,
					-- layer=1 filter=29 channel=3
					-21, -26, 10, -50, -38, 2, -18, -2, -34,
					-- layer=1 filter=29 channel=4
					5, 32, 41, 30, 37, 14, 29, 37, 31,
					-- layer=1 filter=29 channel=5
					-15, 0, -23, -26, 6, -14, 0, -4, 12,
					-- layer=1 filter=29 channel=6
					-15, -44, -17, -49, 6, 0, -20, -52, 4,
					-- layer=1 filter=29 channel=7
					-8, 36, 23, -10, 33, 0, 22, 17, 18,
					-- layer=1 filter=29 channel=8
					30, -13, 18, -34, 4, -1, 3, -1, -20,
					-- layer=1 filter=29 channel=9
					-2, 55, 35, -38, -12, -4, -42, -23, -11,
					-- layer=1 filter=29 channel=10
					4, 11, 29, 5, 31, 26, 8, 19, -4,
					-- layer=1 filter=29 channel=11
					-38, 2, -27, -3, -19, 2, -22, -16, 25,
					-- layer=1 filter=29 channel=12
					-1, 17, -14, 21, -17, 0, 11, -17, -7,
					-- layer=1 filter=29 channel=13
					-60, -15, -30, -103, -63, -40, -67, -67, -71,
					-- layer=1 filter=29 channel=14
					-23, 38, -15, -17, -33, -18, 18, 2, 31,
					-- layer=1 filter=29 channel=15
					0, 16, 33, -131, -72, -13, -48, -28, -4,
					-- layer=1 filter=30 channel=0
					-133, -71, -73, -152, -116, -91, -7, 5, -11,
					-- layer=1 filter=30 channel=1
					-30, 6, 10, -41, -26, -22, 30, -6, 15,
					-- layer=1 filter=30 channel=2
					-16, -3, -9, 42, 35, -9, -19, -5, 6,
					-- layer=1 filter=30 channel=3
					19, 53, 28, 22, 38, 20, 34, -23, -26,
					-- layer=1 filter=30 channel=4
					21, 41, 32, 31, 37, 24, -4, -13, -8,
					-- layer=1 filter=30 channel=5
					64, 54, 34, 35, 19, 9, 7, 12, 34,
					-- layer=1 filter=30 channel=6
					9, 14, 40, 9, -18, -12, -16, 7, -8,
					-- layer=1 filter=30 channel=7
					-17, 42, 51, -16, 44, 0, 12, -25, 20,
					-- layer=1 filter=30 channel=8
					-45, -30, -57, -46, -44, -65, -66, -98, -112,
					-- layer=1 filter=30 channel=9
					-20, 27, 28, 62, 104, 78, 60, 35, 10,
					-- layer=1 filter=30 channel=10
					29, 27, -7, -2, -8, -8, -5, 39, 42,
					-- layer=1 filter=30 channel=11
					-56, 0, -18, -27, -16, -5, -103, -75, -80,
					-- layer=1 filter=30 channel=12
					-48, 9, -17, 10, -33, 3, -30, -28, -7,
					-- layer=1 filter=30 channel=13
					32, 10, 42, 80, 79, 57, -4, -10, 10,
					-- layer=1 filter=30 channel=14
					49, 23, 52, 32, 85, 47, -21, -4, -25,
					-- layer=1 filter=30 channel=15
					92, 104, 104, 139, 154, 97, 90, 99, 115,
					-- layer=1 filter=31 channel=0
					34, -24, -34, 0, -35, 14, 30, 95, 19,
					-- layer=1 filter=31 channel=1
					30, 6, 25, -10, -7, -2, -13, -17, -9,
					-- layer=1 filter=31 channel=2
					25, 35, 21, 52, 53, 15, -40, 28, 13,
					-- layer=1 filter=31 channel=3
					14, 51, 24, 11, 52, 17, 20, 0, 25,
					-- layer=1 filter=31 channel=4
					-80, -51, -42, -44, -65, -75, -42, -45, -28,
					-- layer=1 filter=31 channel=5
					-71, -64, -42, -39, -40, -48, -16, 25, -4,
					-- layer=1 filter=31 channel=6
					-6, 37, 0, 9, 14, 31, 34, 23, 38,
					-- layer=1 filter=31 channel=7
					-88, -94, -38, -43, -71, -86, -17, -30, -54,
					-- layer=1 filter=31 channel=8
					26, 0, -14, 69, 60, 48, 66, 62, 11,
					-- layer=1 filter=31 channel=9
					6, 4, 34, 52, 48, 21, -10, 28, -21,
					-- layer=1 filter=31 channel=10
					-28, -5, 17, -44, 1, -15, 10, -26, -15,
					-- layer=1 filter=31 channel=11
					-1, 18, 20, 27, -10, 2, 10, -5, 0,
					-- layer=1 filter=31 channel=12
					-35, -18, 10, -1, 5, 15, -23, 0, -24,
					-- layer=1 filter=31 channel=13
					-1, 52, 87, -50, -69, -14, -40, -71, -84,
					-- layer=1 filter=31 channel=14
					-54, -63, -23, -24, -31, -37, -60, -34, -37,
					-- layer=1 filter=31 channel=15
					-53, -21, 18, -17, -27, -75, -68, -1, -15,

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			3, 5, 0, 0, 2, 84, 0, 0, 0, 27, 2, 0, 2, 5, 0, 
			0, 4, 0, 0, 0, 0, 0, 0, 7, 74, 0, 0, 0, 0, 28, 
			0, 117, 0, 9, 1, 12, 13, 0, 0, 49, 0, 0, 0, 0, 54, 
			0, 84, 0, 40, 52, 0, 0, 0, 0, 88, 0, 0, 10, 0, 6, 
			0, 31, 0, 0, 66, 0, 0, 0, 0, 217, 0, 0, 7, 0, 0, 
			0, 0, 0, 0, 68, 77, 0, 0, 0, 168, 0, 0, 4, 27, 0, 
			0, 0, 0, 0, 22, 81, 0, 0, 0, 98, 0, 0, 17, 0, 0, 
			0, 0, 0, 56, 0, 0, 0, 18, 23, 0, 18, 0, 6, 29, 18, 
			0, 0, 0, 71, 0, 0, 26, 14, 0, 0, 0, 0, 52, 55, 0, 
			97, 0, 0, 203, 0, 0, 43, 0, 0, 0, 23, 36, 16, 5, 0, 
			29, 14, 0, 146, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 
			0, 31, 56, 0, 0, 0, 0, 0, 0, 4, 9, 13, 0, 0, 21, 
			0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 8, 5, 0, 0, 56, 0, 0, 
			

			164, 171, 171, 172, 168, 172, 174, 171, 163, 149, 131, 139, 147, 138, 122, 
			164, 171, 176, 175, 183, 273, 179, 158, 112, 149, 148, 116, 111, 132, 134, 
			120, 154, 173, 172, 174, 238, 142, 94, 84, 228, 205, 174, 116, 83, 147, 
			107, 170, 180, 185, 174, 181, 204, 122, 124, 223, 209, 146, 103, 40, 133, 
			224, 305, 191, 252, 381, 291, 242, 136, 92, 191, 264, 143, 137, 76, 57, 
			244, 351, 208, 149, 348, 287, 302, 188, 102, 299, 285, 140, 155, 128, 72, 
			256, 324, 187, 128, 238, 321, 359, 247, 145, 342, 256, 146, 140, 174, 133, 
			308, 353, 196, 190, 205, 387, 271, 216, 146, 291, 248, 144, 150, 173, 147, 
			365, 394, 193, 267, 180, 210, 191, 184, 201, 199, 173, 86, 89, 158, 173, 
			386, 388, 239, 296, 207, 145, 249, 299, 177, 156, 87, 41, 125, 206, 179, 
			399, 378, 250, 432, 405, 253, 327, 332, 186, 112, 97, 126, 167, 205, 169, 
			293, 373, 328, 549, 375, 174, 178, 169, 141, 139, 156, 171, 187, 201, 185, 
			182, 252, 377, 481, 186, 166, 155, 150, 147, 154, 181, 201, 206, 205, 246, 
			185, 173, 308, 363, 165, 185, 168, 151, 157, 175, 185, 193, 185, 224, 210, 
			189, 177, 178, 206, 129, 146, 163, 168, 188, 207, 176, 178, 259, 270, 156, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 9, 0, 0, 0, 51, 0, 0, 0, 35, 10, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 0, 9, 0, 0, 19, 
			0, 30, 0, 18, 5, 0, 6, 0, 0, 39, 11, 0, 0, 0, 0, 
			17, 71, 0, 4, 156, 58, 10, 0, 0, 98, 18, 0, 12, 0, 0, 
			8, 44, 12, 0, 72, 56, 63, 0, 0, 115, 5, 0, 0, 4, 0, 
			31, 42, 0, 0, 16, 122, 24, 38, 0, 87, 15, 0, 17, 23, 0, 
			48, 89, 0, 43, 0, 57, 7, 0, 14, 0, 52, 0, 12, 4, 0, 
			82, 86, 0, 66, 9, 0, 28, 6, 8, 25, 0, 0, 0, 0, 0, 
			117, 77, 0, 128, 0, 0, 80, 78, 0, 0, 0, 0, 9, 26, 1, 
			141, 114, 34, 148, 80, 41, 59, 56, 21, 16, 19, 29, 30, 32, 26, 
			14, 115, 109, 122, 9, 20, 18, 16, 11, 14, 22, 30, 38, 41, 40, 
			20, 27, 158, 77, 7, 28, 9, 18, 23, 28, 34, 47, 28, 52, 59, 
			17, 35, 39, 67, 13, 41, 40, 21, 24, 24, 21, 27, 48, 37, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 13, 23, 4, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 11, 11, 3, 6, 3, 17, 10, 0, 
			36, 0, 0, 0, 0, 0, 5, 14, 8, 21, 6, 10, 10, 15, 0, 
			45, 5, 0, 0, 0, 15, 0, 8, 6, 4, 6, 23, 11, 20, 21, 
			58, 0, 0, 0, 0, 0, 0, 14, 11, 0, 20, 19, 15, 17, 8, 
			45, 28, 17, 0, 0, 0, 12, 4, 13, 0, 6, 16, 17, 3, 0, 
			38, 29, 37, 9, 0, 7, 8, 0, 14, 0, 0, 17, 11, 0, 0, 
			21, 24, 31, 24, 20, 17, 24, 5, 8, 1, 13, 28, 5, 0, 0, 
			19, 24, 28, 29, 30, 27, 16, 31, 40, 35, 51, 53, 48, 36, 38, 
			52, 49, 42, 0, 11, 77, 63, 67, 72, 69, 73, 77, 83, 78, 83, 
			87, 57, 59, 0, 80, 76, 73, 72, 73, 77, 83, 84, 79, 87, 96, 
			100, 88, 56, 29, 70, 75, 76, 74, 78, 81, 84, 87, 93, 95, 80, 
			97, 94, 75, 62, 68, 72, 74, 78, 74, 79, 81, 88, 90, 85, 97, 
			

			129, 134, 133, 134, 132, 128, 139, 146, 134, 114, 100, 105, 108, 117, 114, 
			128, 139, 141, 136, 136, 120, 120, 120, 89, 54, 28, 44, 70, 95, 110, 
			98, 113, 136, 138, 140, 148, 65, 53, 39, 54, 32, 30, 25, 57, 97, 
			21, 73, 124, 140, 114, 87, 57, 31, 24, 72, 32, 41, 14, 17, 92, 
			0, 63, 102, 133, 81, 73, 47, 26, 25, 51, 46, 25, 33, 15, 57, 
			3, 45, 89, 99, 84, 60, 42, 40, 16, 81, 39, 16, 41, 23, 16, 
			0, 31, 72, 101, 103, 64, 65, 32, 23, 85, 17, 15, 25, 27, 30, 
			6, 24, 32, 64, 85, 97, 46, 48, 26, 98, 27, 17, 35, 46, 65, 
			11, 31, 0, 40, 43, 55, 34, 33, 46, 62, 53, 26, 34, 65, 108, 
			32, 33, 0, 36, 25, 48, 49, 32, 39, 54, 24, 15, 41, 105, 107, 
			34, 34, 0, 68, 0, 14, 45, 32, 0, 0, 0, 0, 0, 0, 0, 
			9, 15, 16, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 22, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			42, 36, 37, 37, 39, 35, 42, 42, 35, 33, 32, 38, 31, 37, 33, 
			42, 39, 38, 37, 35, 32, 27, 34, 9, 15, 10, 33, 49, 43, 38, 
			39, 49, 44, 37, 44, 58, 1, 17, 18, 33, 11, 7, 14, 54, 45, 
			0, 87, 48, 39, 32, 16, 10, 6, 21, 53, 0, 22, 2, 30, 67, 
			0, 61, 27, 17, 0, 0, 0, 1, 26, 40, 4, 0, 24, 7, 67, 
			0, 39, 16, 25, 39, 0, 0, 0, 9, 79, 0, 0, 31, 5, 14, 
			0, 25, 35, 2, 59, 18, 4, 0, 0, 81, 0, 2, 28, 19, 21, 
			0, 0, 14, 12, 28, 44, 0, 17, 1, 74, 0, 4, 30, 36, 28, 
			0, 2, 0, 27, 15, 19, 7, 19, 32, 28, 41, 2, 40, 39, 43, 
			0, 6, 0, 33, 0, 19, 12, 0, 40, 14, 0, 14, 49, 63, 33, 
			35, 4, 0, 55, 0, 0, 25, 0, 0, 0, 17, 9, 29, 29, 6, 
			72, 12, 0, 57, 0, 0, 23, 17, 4, 9, 15, 15, 10, 19, 8, 
			17, 68, 19, 23, 0, 8, 9, 14, 15, 16, 14, 17, 16, 4, 9, 
			2, 19, 82, 0, 0, 16, 5, 15, 10, 13, 15, 17, 5, 21, 22, 
			0, 12, 25, 32, 17, 29, 17, 8, 9, 9, 10, 13, 13, 6, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 18, 18, 5, 0, 0, 
			0, 0, 0, 0, 0, 12, 0, 1, 5, 59, 63, 46, 28, 11, 0, 
			6, 21, 0, 0, 0, 0, 16, 20, 38, 66, 43, 41, 33, 19, 4, 
			33, 68, 0, 0, 20, 18, 44, 30, 43, 41, 49, 21, 39, 19, 15, 
			70, 104, 0, 0, 110, 38, 49, 31, 32, 78, 65, 33, 49, 34, 13, 
			57, 111, 2, 0, 51, 51, 81, 42, 35, 108, 59, 40, 47, 49, 31, 
			72, 98, 30, 0, 11, 97, 72, 68, 32, 86, 56, 48, 53, 54, 4, 
			99, 124, 59, 66, 21, 61, 41, 49, 41, 32, 57, 34, 42, 21, 0, 
			111, 122, 72, 99, 54, 27, 45, 64, 58, 38, 31, 22, 30, 0, 0, 
			137, 107, 79, 122, 64, 56, 104, 114, 58, 43, 60, 69, 94, 99, 78, 
			197, 143, 78, 153, 147, 124, 139, 135, 119, 118, 133, 142, 150, 157, 150, 
			167, 177, 119, 165, 108, 128, 127, 127, 127, 135, 147, 156, 160, 157, 169, 
			172, 156, 177, 166, 110, 138, 130, 130, 132, 145, 161, 172, 163, 183, 194, 
			170, 167, 155, 165, 130, 145, 143, 131, 134, 149, 151, 153, 164, 189, 153, 
			

			120, 123, 123, 127, 126, 118, 124, 139, 130, 101, 83, 86, 97, 110, 115, 
			122, 129, 126, 129, 127, 97, 111, 99, 80, 50, 29, 32, 47, 80, 105, 
			71, 80, 129, 133, 131, 103, 78, 57, 42, 19, 29, 30, 29, 41, 77, 
			49, 33, 115, 127, 103, 83, 50, 41, 26, 26, 41, 35, 34, 31, 49, 
			40, 12, 103, 105, 43, 49, 41, 37, 24, 29, 40, 42, 28, 32, 34, 
			34, 6, 102, 104, 21, 54, 39, 47, 30, 4, 36, 41, 25, 30, 29, 
			43, 0, 62, 109, 40, 39, 28, 40, 37, 0, 39, 34, 25, 26, 38, 
			29, 12, 34, 59, 67, 14, 38, 30, 45, 34, 43, 38, 22, 30, 79, 
			18, 0, 28, 12, 49, 41, 50, 31, 29, 52, 41, 40, 28, 59, 92, 
			22, 12, 22, 0, 24, 35, 33, 24, 29, 37, 27, 20, 12, 64, 94, 
			0, 15, 22, 0, 20, 10, 0, 0, 1, 4, 0, 0, 0, 0, 0, 
			0, 0, 22, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			5, 0, 4, 0, 0, 1, 3, 0, 0, 0, 2, 17, 4, 0, 0, 
			2, 0, 5, 0, 8, 0, 0, 0, 0, 21, 0, 0, 22, 28, 0, 
			0, 68, 4, 0, 8, 28, 0, 0, 9, 61, 0, 0, 0, 36, 34, 
			0, 95, 0, 8, 0, 22, 0, 0, 0, 109, 0, 2, 0, 0, 95, 
			0, 28, 0, 82, 0, 0, 0, 0, 0, 134, 0, 0, 0, 0, 51, 
			0, 24, 0, 25, 118, 9, 0, 0, 0, 210, 0, 0, 19, 0, 0, 
			0, 0, 15, 0, 95, 64, 0, 0, 0, 177, 0, 0, 11, 16, 0, 
			0, 0, 0, 0, 61, 84, 0, 5, 0, 116, 0, 0, 37, 15, 0, 
			0, 7, 0, 49, 0, 46, 0, 0, 39, 0, 32, 0, 43, 37, 11, 
			0, 13, 0, 85, 0, 12, 52, 0, 0, 3, 0, 4, 47, 41, 0, 
			90, 5, 0, 170, 0, 0, 62, 0, 0, 0, 0, 6, 22, 31, 0, 
			117, 76, 0, 122, 0, 0, 31, 26, 0, 8, 12, 16, 12, 13, 0, 
			0, 113, 132, 0, 0, 2, 0, 6, 2, 9, 13, 8, 6, 15, 14, 
			0, 17, 189, 0, 0, 12, 0, 1, 14, 11, 11, 16, 4, 32, 0, 
			0, 12, 35, 7, 0, 37, 24, 6, 11, 0, 0, 15, 45, 0, 0, 
			

			4, 0, 0, 0, 0, 0, 0, 0, 0, 22, 37, 28, 4, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 14, 69, 12, 0, 0, 29, 24, 0, 
			39, 67, 0, 0, 0, 78, 37, 43, 1, 0, 0, 0, 0, 30, 6, 
			0, 0, 0, 0, 0, 12, 0, 0, 0, 39, 0, 16, 10, 0, 31, 
			0, 0, 0, 14, 0, 0, 0, 0, 9, 7, 0, 0, 0, 0, 20, 
			10, 0, 0, 41, 100, 34, 0, 0, 0, 0, 0, 13, 5, 0, 0, 
			0, 0, 26, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 5, 6, 32, 43, 0, 5, 1, 0, 11, 7, 0, 
			0, 0, 0, 0, 0, 84, 6, 0, 0, 0, 49, 58, 31, 0, 0, 
			8, 0, 0, 0, 0, 14, 0, 0, 0, 63, 55, 26, 0, 0, 5, 
			16, 0, 0, 0, 0, 0, 0, 47, 8, 0, 0, 0, 0, 39, 43, 
			101, 50, 0, 0, 80, 104, 70, 67, 30, 19, 5, 9, 0, 0, 0, 
			0, 73, 25, 0, 86, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 
			0, 0, 81, 65, 23, 0, 0, 0, 2, 0, 6, 19, 8, 0, 38, 
			0, 0, 11, 78, 31, 36, 36, 1, 0, 0, 0, 0, 0, 0, 0, 
			

			168, 166, 175, 173, 173, 164, 184, 183, 170, 145, 123, 134, 143, 150, 138, 
			171, 179, 181, 178, 180, 196, 179, 160, 100, 87, 79, 82, 93, 128, 146, 
			114, 141, 182, 177, 182, 139, 84, 53, 65, 101, 70, 59, 53, 81, 133, 
			42, 148, 185, 183, 162, 127, 113, 63, 52, 105, 67, 61, 20, 30, 118, 
			47, 163, 173, 191, 198, 172, 90, 54, 28, 99, 105, 64, 59, 31, 79, 
			57, 119, 164, 132, 87, 103, 104, 73, 33, 172, 98, 31, 62, 44, 47, 
			68, 90, 124, 119, 110, 149, 123, 93, 36, 158, 61, 46, 53, 67, 66, 
			92, 84, 105, 124, 128, 174, 71, 65, 42, 143, 62, 34, 56, 75, 88, 
			90, 109, 43, 101, 116, 54, 59, 72, 95, 100, 68, 4, 34, 94, 163, 
			90, 105, 34, 94, 75, 83, 99, 106, 89, 64, 8, 8, 76, 167, 148, 
			109, 116, 31, 179, 124, 119, 133, 77, 31, 21, 17, 32, 41, 60, 45, 
			36, 79, 89, 222, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 33, 111, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 90, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 
			

			12, 17, 11, 17, 14, 9, 13, 17, 13, 13, 14, 3, 9, 15, 19, 
			6, 9, 8, 20, 7, 0, 33, 9, 39, 0, 6, 0, 0, 0, 11, 
			19, 0, 9, 18, 7, 14, 58, 16, 0, 0, 49, 38, 46, 0, 0, 
			94, 0, 10, 1, 15, 0, 20, 39, 21, 0, 84, 26, 53, 19, 0, 
			125, 0, 55, 0, 24, 40, 82, 57, 34, 0, 35, 73, 7, 45, 0, 
			108, 9, 78, 27, 0, 76, 81, 59, 64, 0, 107, 95, 0, 39, 20, 
			104, 63, 19, 71, 0, 0, 65, 74, 89, 0, 121, 57, 2, 0, 40, 
			87, 78, 35, 33, 0, 0, 144, 50, 66, 0, 90, 69, 0, 19, 44, 
			101, 36, 125, 0, 29, 38, 49, 15, 0, 40, 0, 91, 0, 0, 0, 
			70, 48, 143, 0, 68, 21, 0, 47, 21, 45, 84, 7, 0, 0, 23, 
			0, 44, 137, 0, 141, 35, 0, 78, 105, 40, 0, 0, 0, 0, 0, 
			0, 12, 84, 0, 194, 100, 16, 17, 28, 9, 8, 8, 12, 15, 27, 
			33, 0, 0, 65, 182, 20, 26, 17, 17, 8, 4, 3, 21, 23, 3, 
			49, 6, 0, 145, 65, 11, 32, 16, 14, 12, 18, 20, 31, 0, 55, 
			64, 17, 7, 29, 31, 0, 21, 26, 11, 17, 34, 16, 0, 47, 80, 
			

			77, 83, 75, 83, 79, 74, 84, 85, 78, 74, 71, 64, 72, 75, 73, 
			74, 79, 74, 88, 73, 76, 104, 79, 84, 44, 65, 52, 38, 58, 72, 
			79, 50, 82, 87, 75, 73, 124, 64, 31, 9, 98, 80, 83, 23, 54, 
			142, 0, 91, 71, 89, 47, 86, 69, 58, 0, 142, 67, 92, 54, 0, 
			178, 37, 130, 4, 122, 83, 143, 101, 69, 0, 106, 117, 50, 80, 0, 
			148, 104, 161, 59, 68, 137, 170, 109, 108, 0, 169, 139, 41, 74, 54, 
			149, 149, 111, 134, 0, 56, 151, 137, 138, 0, 190, 107, 43, 47, 86, 
			149, 164, 86, 119, 9, 42, 190, 103, 123, 0, 153, 119, 28, 65, 90, 
			173, 121, 178, 66, 86, 80, 116, 77, 41, 92, 62, 119, 22, 50, 59, 
			151, 122, 214, 14, 141, 44, 43, 128, 63, 93, 109, 33, 3, 38, 95, 
			66, 127, 206, 0, 236, 96, 35, 146, 157, 74, 21, 13, 15, 40, 67, 
			6, 96, 157, 22, 273, 158, 63, 67, 74, 42, 41, 39, 48, 48, 64, 
			67, 1, 39, 172, 225, 54, 54, 47, 46, 37, 35, 40, 55, 54, 48, 
			84, 42, 0, 243, 102, 43, 66, 47, 40, 41, 45, 55, 62, 24, 87, 
			94, 47, 43, 85, 58, 30, 50, 56, 41, 54, 65, 43, 20, 87, 111, 
			

			58, 52, 59, 56, 57, 52, 66, 70, 57, 47, 47, 52, 50, 50, 44, 
			64, 59, 58, 59, 55, 31, 57, 55, 39, 12, 0, 8, 35, 55, 48, 
			36, 79, 65, 64, 60, 17, 37, 19, 1, 0, 0, 0, 0, 26, 46, 
			0, 28, 68, 61, 46, 31, 0, 0, 0, 0, 0, 0, 0, 0, 37, 
			0, 0, 56, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 
			0, 0, 61, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 71, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 4, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 26, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 49, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			36, 36, 32, 30, 31, 28, 39, 41, 32, 36, 45, 41, 30, 33, 30, 
			31, 29, 33, 33, 23, 0, 29, 40, 61, 0, 0, 7, 35, 29, 25, 
			59, 49, 31, 35, 36, 66, 51, 34, 0, 0, 0, 0, 0, 30, 20, 
			0, 0, 25, 26, 27, 0, 0, 0, 0, 0, 10, 21, 13, 17, 20, 
			0, 0, 26, 0, 0, 0, 9, 6, 24, 0, 0, 0, 0, 0, 34, 
			8, 0, 30, 68, 43, 31, 0, 0, 0, 0, 16, 27, 0, 0, 0, 
			0, 2, 43, 32, 15, 0, 0, 0, 1, 0, 12, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 50, 37, 10, 0, 13, 13, 0, 16, 19, 
			0, 0, 12, 0, 8, 56, 13, 0, 0, 30, 21, 61, 24, 0, 4, 
			0, 0, 0, 0, 0, 22, 0, 0, 14, 40, 51, 7, 0, 0, 30, 
			0, 0, 10, 0, 0, 0, 0, 10, 7, 0, 0, 0, 0, 0, 0, 
			4, 0, 0, 0, 71, 46, 18, 13, 0, 0, 0, 0, 0, 0, 0, 
			0, 2, 0, 0, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			

			0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 23, 18, 1, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 14, 28, 0, 0, 0, 13, 12, 0, 
			34, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 4, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 11, 
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 
			0, 0, 0, 0, 21, 9, 0, 0, 0, 0, 2, 0, 0, 0, 0, 
			0, 0, 18, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 29, 20, 6, 0, 0, 0, 0, 0, 5, 0, 
			0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 5, 12, 0, 0, 0, 
			0, 0, 0, 0, 4, 20, 0, 0, 0, 39, 22, 0, 7, 0, 0, 
			9, 0, 0, 0, 0, 0, 47, 46, 35, 0, 0, 0, 5, 25, 27, 
			45, 33, 0, 0, 21, 14, 0, 0, 0, 2, 1, 0, 0, 0, 0, 
			0, 28, 11, 11, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
			0, 0, 49, 31, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 
			0, 0, 0, 0, 0, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 
			
		others=>0 );
END inmem_package;

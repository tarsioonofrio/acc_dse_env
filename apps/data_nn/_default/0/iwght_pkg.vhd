LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE iwght_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_wght: padroes := ( 
					-- bias
					-- layer=0
					-652, 306, -5589, 196, 4680, 2612, 3534, -12836, -12776, -3453, 2603, 1333, 424, 146, 6663, -2144,

					-- weights
					-- layer=0 filter=0 channel=0
					44, -9, 60, -25, -14, -43, 12, -50, -9,
					-- layer=0 filter=0 channel=1
					57, 71, 53, -1, -31, -35, -28, -49, -26,
					-- layer=0 filter=0 channel=2
					-16, 60, 61, 40, -47, -48, -48, -19, 9,
					-- layer=0 filter=1 channel=0
					34, 0, 24, -9, -2, 46, -32, -13, 6,
					-- layer=0 filter=1 channel=1
					3, 45, 2, 20, 21, 25, 21, 38, 22,
					-- layer=0 filter=1 channel=2
					-37, -65, -29, -52, -10, -18, -27, 6, 15,
					-- layer=0 filter=2 channel=0
					-5, -37, -56, 10, 28, 20, -47, 37, -29,
					-- layer=0 filter=2 channel=1
					-22, 47, 6, 68, 61, -47, 34, 42, -32,
					-- layer=0 filter=2 channel=2
					48, 64, -34, 20, 45, 13, 8, 20, -16,
					-- layer=0 filter=3 channel=0
					14, 9, -54, -24, -10, 8, 30, -36, -3,
					-- layer=0 filter=3 channel=1
					-20, -5, -27, 43, -9, -24, 66, -2, 19,
					-- layer=0 filter=3 channel=2
					4, 1, -39, 26, 44, -7, 54, 33, -50,
					-- layer=0 filter=4 channel=0
					-35, -9, -35, -28, -57, 10, -59, -21, -11,
					-- layer=0 filter=4 channel=1
					29, 46, 11, -22, -13, -16, 23, -10, -41,
					-- layer=0 filter=4 channel=2
					48, 40, 38, 27, 40, -21, 23, 38, 14,
					-- layer=0 filter=5 channel=0
					35, 11, 66, 22, 62, 20, -29, -7, 44,
					-- layer=0 filter=5 channel=1
					-17, -42, -48, -73, -38, -38, -12, 11, -30,
					-- layer=0 filter=5 channel=2
					-3, 0, 47, -10, 11, 6, -31, 4, 32,
					-- layer=0 filter=6 channel=0
					-48, -28, -33, -56, -48, -35, 33, 28, 40,
					-- layer=0 filter=6 channel=1
					-17, 8, -34, -4, -39, 7, -47, 52, 44,
					-- layer=0 filter=6 channel=2
					-38, 11, 8, -5, 37, 68, 37, -3, 53,
					-- layer=0 filter=7 channel=0
					-37, 9, 28, -23, 17, 20, 67, 21, 28,
					-- layer=0 filter=7 channel=1
					-40, -45, -37, 38, -45, -48, 40, 21, -13,
					-- layer=0 filter=7 channel=2
					37, -27, -43, 49, 23, 19, 12, 34, 7,
					-- layer=0 filter=8 channel=0
					20, 24, -10, -19, 51, 12, 2, 6, 7,
					-- layer=0 filter=8 channel=1
					3, -11, -13, 9, -27, 28, -16, 0, -54,
					-- layer=0 filter=8 channel=2
					-3, 55, 24, 0, 16, 47, -1, -14, 33,
					-- layer=0 filter=9 channel=0
					23, -42, 10, 39, -39, 0, -25, 24, -51,
					-- layer=0 filter=9 channel=1
					-44, -43, -32, 19, 29, -25, -50, -5, -35,
					-- layer=0 filter=9 channel=2
					-5, -21, -54, -38, 19, 10, -42, 14, -58,
					-- layer=0 filter=10 channel=0
					-28, -15, 79, -58, -41, -28, 66, 35, 6,
					-- layer=0 filter=10 channel=1
					-62, -49, 20, 11, -60, 14, 44, 5, 33,
					-- layer=0 filter=10 channel=2
					-29, -13, 41, -20, -65, -30, 42, 44, 34,
					-- layer=0 filter=11 channel=0
					20, 52, -13, 13, 15, 34, 46, 60, -17,
					-- layer=0 filter=11 channel=1
					5, 11, -36, 6, -18, 11, 24, -32, 34,
					-- layer=0 filter=11 channel=2
					10, -20, -56, -7, 32, -41, -33, -35, -35,
					-- layer=0 filter=12 channel=0
					23, 37, -24, 22, -17, -62, 36, 35, 34,
					-- layer=0 filter=12 channel=1
					-6, -16, -72, 65, -4, -39, 49, -13, -61,
					-- layer=0 filter=12 channel=2
					59, 59, -32, 30, 32, -53, -16, 0, 1,
					-- layer=0 filter=13 channel=0
					36, 15, 0, 31, 30, -4, -31, -31, -10,
					-- layer=0 filter=13 channel=1
					-39, -21, -44, 31, -43, -57, 13, -41, -18,
					-- layer=0 filter=13 channel=2
					-21, 28, 51, 45, 60, 27, 27, -26, 39,
					-- layer=0 filter=14 channel=0
					42, -9, -13, 43, 35, -42, 49, -14, -38,
					-- layer=0 filter=14 channel=1
					56, 42, -15, 50, -31, -19, -2, -1, -18,
					-- layer=0 filter=14 channel=2
					15, 27, -48, 11, -53, -90, 42, -25, -2,
					-- layer=0 filter=15 channel=0
					-14, 29, 53, 64, 62, 51, 39, -11, 55,
					-- layer=0 filter=15 channel=1
					-18, -53, 16, 27, -26, -59, 7, -10, -50,
					-- layer=0 filter=15 channel=2
					-16, 32, -44, -54, -31, -39, 8, -30, -55,

					others=>0 );
END iwght_package;

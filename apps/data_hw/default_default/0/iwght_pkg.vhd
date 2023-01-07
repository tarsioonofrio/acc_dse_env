LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE iwght_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_wght: padroes := ( 
					-- bias
					-- layer=0
					-4005, 1278, -1449, 2196, 29, 2212, 4394, 6249, -784, -8468, -326, 5074, 6285, 2635, -12384, 7587,

					-- weights
					-- layer=0 filter=0 channel=0
					31, 34, 10, -9, -54, -27, 0, 4, 3,
					-- layer=0 filter=0 channel=1
					44, 46, -45, 56, -1, -35, 24, 53, 33,
					-- layer=0 filter=0 channel=2
					32, 24, -55, -52, -61, -19, -58, -38, 11,
					-- layer=0 filter=1 channel=0
					-26, 27, 31, -45, -64, -58, -30, 16, -11,
					-- layer=0 filter=1 channel=1
					23, 24, 37, 15, -40, -40, -10, -45, 7,
					-- layer=0 filter=1 channel=2
					7, 50, -13, 38, 29, 51, -40, 6, 12,
					-- layer=0 filter=2 channel=0
					-49, 19, -13, 32, 5, 36, -1, -5, 11,
					-- layer=0 filter=2 channel=1
					-21, -33, -6, -63, -36, -12, -20, 14, -37,
					-- layer=0 filter=2 channel=2
					50, 9, 39, -31, 6, 55, 45, 24, 36,
					-- layer=0 filter=3 channel=0
					18, 2, -26, 33, 45, -18, 22, -25, -58,
					-- layer=0 filter=3 channel=1
					-8, -5, -62, 55, -4, -46, -26, 30, -62,
					-- layer=0 filter=3 channel=2
					64, 31, 0, 52, 16, -11, 82, 30, -52,
					-- layer=0 filter=4 channel=0
					-27, -58, -26, -10, 43, -21, 77, 43, -6,
					-- layer=0 filter=4 channel=1
					-66, -81, -4, -51, -3, 43, 34, 68, 57,
					-- layer=0 filter=4 channel=2
					-31, -62, -31, 1, 57, 11, 51, -6, -7,
					-- layer=0 filter=5 channel=0
					44, 40, 38, 31, 47, 59, 69, 47, -6,
					-- layer=0 filter=5 channel=1
					27, -17, -16, -26, 24, -28, 33, -8, -43,
					-- layer=0 filter=5 channel=2
					-42, -46, 4, -27, -54, -58, -12, -23, -42,
					-- layer=0 filter=6 channel=0
					25, 0, 28, 4, 48, 51, -42, 13, 68,
					-- layer=0 filter=6 channel=1
					-66, -4, 5, -77, -63, 34, -16, -48, -11,
					-- layer=0 filter=6 channel=2
					9, -28, 28, -68, 16, 37, 15, 0, 14,
					-- layer=0 filter=7 channel=0
					38, 64, 17, 51, 45, -22, 31, 52, 0,
					-- layer=0 filter=7 channel=1
					-16, -51, -10, -11, 9, -55, -60, -69, -45,
					-- layer=0 filter=7 channel=2
					33, 28, 10, -57, -70, 0, -14, -58, 40,
					-- layer=0 filter=8 channel=0
					21, 45, -1, 52, 60, 51, -9, -53, -57,
					-- layer=0 filter=8 channel=1
					47, 3, -34, -8, -9, 23, -47, -55, -59,
					-- layer=0 filter=8 channel=2
					-8, 10, -4, 11, 57, 28, -9, -43, -7,
					-- layer=0 filter=9 channel=0
					3, 2, -5, -6, -8, 22, -63, -59, -16,
					-- layer=0 filter=9 channel=1
					43, 30, -33, 29, 27, 23, 49, 45, -13,
					-- layer=0 filter=9 channel=2
					32, 59, 40, -23, 41, 6, -9, 44, 39,
					-- layer=0 filter=10 channel=0
					20, 61, 37, 37, -11, -46, -15, -40, -56,
					-- layer=0 filter=10 channel=1
					29, 16, 49, 30, -28, 18, 33, -65, -82,
					-- layer=0 filter=10 channel=2
					-26, 29, 69, -13, -36, -38, 53, 16, -53,
					-- layer=0 filter=11 channel=0
					-19, -35, 28, -48, -9, -26, -43, -20, -32,
					-- layer=0 filter=11 channel=1
					-39, -3, 38, -29, -30, -7, 21, 1, 31,
					-- layer=0 filter=11 channel=2
					47, 22, 51, -22, 44, 51, -27, -5, 51,
					-- layer=0 filter=12 channel=0
					-59, -37, 62, -32, -7, 27, -41, 40, -8,
					-- layer=0 filter=12 channel=1
					-41, 5, 38, 3, 10, 75, -13, 58, 48,
					-- layer=0 filter=12 channel=2
					-40, -2, -7, -57, 41, -1, -41, -21, -6,
					-- layer=0 filter=13 channel=0
					-35, -55, -39, -33, -28, 52, -7, 77, -2,
					-- layer=0 filter=13 channel=1
					-42, -1, -65, -20, 25, 19, 61, 3, 27,
					-- layer=0 filter=13 channel=2
					-37, -14, -68, -23, 7, -1, 54, -24, 62,
					-- layer=0 filter=14 channel=0
					-5, 56, 15, 36, 18, 10, 35, 45, 10,
					-- layer=0 filter=14 channel=1
					-28, 16, -6, 21, 41, -47, -9, -3, -47,
					-- layer=0 filter=14 channel=2
					-33, -32, 9, 25, -38, 16, -9, 26, -21,
					-- layer=0 filter=15 channel=0
					-11, 13, -35, 24, -31, -17, 19, -28, -46,
					-- layer=0 filter=15 channel=1
					2, 49, 20, 70, 38, -16, 66, 43, -11,
					-- layer=0 filter=15 channel=2
					-37, -49, -8, -9, -28, -38, 35, -14, -52,

					others=>0 );
END iwght_package;

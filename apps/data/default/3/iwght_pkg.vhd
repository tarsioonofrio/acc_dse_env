LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE iwght_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_wght: padroes := ( 
					-- bias
					-- layer=3
					-1487, 11527, -4638, 3729, 9955, -1068, 13083, -646, -1410, -1862, 1763, 4506, 3002, 3582, 1465, -230, 11317, 5289, 1691, -546, -805, 15714, -1665, 16065, 5153, 1220, 6815, 1161, -4886, -1904, -4170, 7516, -1731, 7101, -2517, 6944, 12117, -2126, -801, -1251, -6522, 10353, 11018, -49, 9498, -1517, -12206, -2679, -2770, -2297, -2028, 8704, -2485, -3919, -6826, -4840, -1679, -2095, -2307, 15395, -3502, -3363, -1228, 3148, -1871, -4495, -5552, -9653, 5496, 5081, -927, 3751, -10529, 8167, -533, 1093, -939, 5412, -1276, -1624, -1218, -2931, -1777, 17323, -576, -1604, 2670, -595, 1725, 7403, -2920, -4223, -3239, -5853, -1484, 1371, -529, 4804, 9805, 16624, 1075, 1827, -1844, 8192, 11203, 3805, 2188, -561, 9685, 3381, -693, -671, -226, 12555, 1895, 8047, 3570, -1317, 8722, 4033, 11019, -1103, 7583, -1065, 3578, 20431, -566, -6651,

					-- weights
					-- layer=3 filter=0 channel=0
					-6, -12, -10, -12, -5, 0, -1, -5, -13,
					-- layer=3 filter=0 channel=1
					-9, -15, 8, 0, 11, -11, -20, -17, -1,
					-- layer=3 filter=0 channel=2
					2, -1, 9, -13, -17, 18, -12, 10, -16,
					-- layer=3 filter=0 channel=3
					8, -14, -15, 7, 5, -16, 2, 0, 3,
					-- layer=3 filter=0 channel=4
					4, -15, -6, 0, 5, 3, -6, -16, -7,
					-- layer=3 filter=0 channel=5
					0, 13, 0, 9, 6, 9, -6, 0, 10,
					-- layer=3 filter=0 channel=6
					-7, 12, 0, 8, -13, -6, -5, 3, -2,
					-- layer=3 filter=0 channel=7
					-12, -16, -14, -2, 0, -18, -18, 0, 1,
					-- layer=3 filter=0 channel=8
					0, 3, -21, -15, -14, 3, 0, -19, -9,
					-- layer=3 filter=0 channel=9
					-21, -4, -1, -11, 4, -13, 0, -11, 5,
					-- layer=3 filter=0 channel=10
					0, -15, -5, -2, -11, -5, 5, -16, -8,
					-- layer=3 filter=0 channel=11
					-13, -9, -9, -4, 3, -18, 19, -4, 5,
					-- layer=3 filter=0 channel=12
					-11, -3, -3, 4, -1, 9, 13, 6, -6,
					-- layer=3 filter=0 channel=13
					-16, -17, 0, 2, 7, 9, 0, 0, 11,
					-- layer=3 filter=0 channel=14
					5, -16, -15, -6, 12, 2, 4, -8, -16,
					-- layer=3 filter=0 channel=15
					1, 0, -14, -16, -12, -14, 0, 8, -21,
					-- layer=3 filter=0 channel=16
					-12, -8, -5, 16, -15, 8, -1, -15, -14,
					-- layer=3 filter=0 channel=17
					-13, 2, 3, -14, 6, -13, -12, -13, 8,
					-- layer=3 filter=0 channel=18
					-14, -14, -9, -13, -7, -7, 18, -14, 6,
					-- layer=3 filter=0 channel=19
					4, -17, -7, -1, -2, -9, -10, -2, -4,
					-- layer=3 filter=0 channel=20
					11, 7, -11, 0, -5, -20, 4, 9, 0,
					-- layer=3 filter=0 channel=21
					0, -7, -2, 3, 5, -8, 3, -5, -8,
					-- layer=3 filter=0 channel=22
					-9, 9, -7, -4, -1, 6, 5, -7, 0,
					-- layer=3 filter=0 channel=23
					-4, 8, -9, -7, -18, 7, 15, -7, 2,
					-- layer=3 filter=0 channel=24
					9, -9, -16, -13, 0, 3, -10, -3, 5,
					-- layer=3 filter=0 channel=25
					9, 5, -2, -2, -10, -6, -8, 1, 11,
					-- layer=3 filter=0 channel=26
					-8, -12, 4, -14, 5, 5, -10, -7, 0,
					-- layer=3 filter=0 channel=27
					7, 0, 12, -19, -5, 11, -4, -15, 1,
					-- layer=3 filter=0 channel=28
					6, 6, -15, 10, -3, -1, 8, -15, -7,
					-- layer=3 filter=0 channel=29
					-5, -4, 4, -8, -1, 4, 1, 1, -14,
					-- layer=3 filter=0 channel=30
					-9, -1, -14, 11, -6, -12, 13, 9, 13,
					-- layer=3 filter=0 channel=31
					-1, -12, 9, -13, -1, -5, -14, -6, -3,
					-- layer=3 filter=0 channel=32
					-5, -6, -10, 5, 5, -13, -1, -12, 0,
					-- layer=3 filter=0 channel=33
					-3, -9, -16, -15, -6, 9, -13, 3, 8,
					-- layer=3 filter=0 channel=34
					-13, -17, -3, 0, -17, -2, 3, 5, 4,
					-- layer=3 filter=0 channel=35
					-13, -18, 4, -13, -13, -5, -10, 5, -21,
					-- layer=3 filter=0 channel=36
					-6, 1, 1, -9, -5, 0, 5, 1, 8,
					-- layer=3 filter=0 channel=37
					-14, -8, 11, 0, -10, -4, -16, -2, 6,
					-- layer=3 filter=0 channel=38
					0, -13, 0, 12, -3, -6, 7, 14, 6,
					-- layer=3 filter=0 channel=39
					0, -5, 4, 5, -14, 2, 7, 10, 4,
					-- layer=3 filter=0 channel=40
					-1, 21, -2, 3, -15, 5, -10, 6, 11,
					-- layer=3 filter=0 channel=41
					13, 5, -8, -3, -9, -17, 2, 1, -14,
					-- layer=3 filter=0 channel=42
					-15, -7, -4, -4, 6, -6, -12, -18, 7,
					-- layer=3 filter=0 channel=43
					-12, -10, -10, -6, 10, -1, 2, 7, 0,
					-- layer=3 filter=0 channel=44
					5, 14, -12, -9, 1, -10, 13, 10, -4,
					-- layer=3 filter=0 channel=45
					-5, -10, -5, -8, -9, -7, 4, 1, -7,
					-- layer=3 filter=0 channel=46
					-8, -11, -21, -1, 8, 9, -1, -8, 8,
					-- layer=3 filter=0 channel=47
					10, -9, 0, 4, 2, 1, 2, -5, -12,
					-- layer=3 filter=0 channel=48
					-3, 7, -8, -14, 0, -15, -6, 6, -6,
					-- layer=3 filter=0 channel=49
					13, -15, 0, 0, -18, -14, 4, -8, -11,
					-- layer=3 filter=0 channel=50
					3, -10, -17, 0, -6, -14, 0, -20, -13,
					-- layer=3 filter=0 channel=51
					3, -12, -15, -7, -13, 5, -13, 0, -22,
					-- layer=3 filter=0 channel=52
					4, -5, -11, 0, 3, 10, 7, -4, -7,
					-- layer=3 filter=0 channel=53
					-1, 0, 8, -8, -2, -5, 7, 12, 0,
					-- layer=3 filter=0 channel=54
					3, 9, -2, -11, -4, 3, -6, -17, -6,
					-- layer=3 filter=0 channel=55
					-1, -1, -8, -15, 2, -21, 14, 8, -10,
					-- layer=3 filter=0 channel=56
					-15, -5, 4, 0, 0, 0, -2, -11, -12,
					-- layer=3 filter=0 channel=57
					2, 5, 7, -2, -12, -17, -9, -5, -11,
					-- layer=3 filter=0 channel=58
					-8, 1, -12, -5, 2, -22, -15, 10, -3,
					-- layer=3 filter=0 channel=59
					5, -24, -19, -9, -7, 0, 4, 7, 2,
					-- layer=3 filter=0 channel=60
					8, -9, 0, -5, 0, -13, -10, 3, -15,
					-- layer=3 filter=0 channel=61
					-12, -15, -12, -15, -9, -8, -12, -16, -7,
					-- layer=3 filter=0 channel=62
					-14, 15, -22, 8, -13, -8, 0, 2, -2,
					-- layer=3 filter=0 channel=63
					-1, -11, -8, -1, 5, -9, 5, -3, 9,
					-- layer=3 filter=1 channel=0
					-30, -4, -18, -6, -23, -25, -10, -10, -24,
					-- layer=3 filter=1 channel=1
					-39, -8, -12, -19, 5, -37, -1, -19, -16,
					-- layer=3 filter=1 channel=2
					9, 2, 8, 21, 14, -1, 69, 37, 51,
					-- layer=3 filter=1 channel=3
					-49, -5, -71, -23, 65, -24, -29, 9, -5,
					-- layer=3 filter=1 channel=4
					-7, -4, -11, 28, 32, -38, 17, -34, -25,
					-- layer=3 filter=1 channel=5
					7, -7, -15, -17, 6, 7, -13, -6, 15,
					-- layer=3 filter=1 channel=6
					-5, 2, -40, 0, 30, -48, 4, -32, -23,
					-- layer=3 filter=1 channel=7
					-3, -17, -33, -13, 49, 19, 27, -14, 46,
					-- layer=3 filter=1 channel=8
					-48, -45, -7, -27, 58, 2, -21, -3, 30,
					-- layer=3 filter=1 channel=9
					-5, 6, 9, -56, -15, 0, -11, 10, 63,
					-- layer=3 filter=1 channel=10
					-1, 10, 20, 10, -14, 6, 27, 32, 6,
					-- layer=3 filter=1 channel=11
					24, 10, -42, 54, -12, -31, 37, -41, -42,
					-- layer=3 filter=1 channel=12
					-35, -28, -57, -3, -49, -28, -9, -17, 17,
					-- layer=3 filter=1 channel=13
					17, -2, -36, -1, 37, -10, 6, 4, 15,
					-- layer=3 filter=1 channel=14
					-46, -28, -59, -30, 23, -73, -15, 11, -27,
					-- layer=3 filter=1 channel=15
					13, -9, 15, -2, -17, -61, 35, -8, -23,
					-- layer=3 filter=1 channel=16
					-47, 0, 15, -11, 2, 17, 1, -60, -65,
					-- layer=3 filter=1 channel=17
					-18, 19, -24, 20, 5, -42, -3, 1, -15,
					-- layer=3 filter=1 channel=18
					23, -23, -17, -22, -4, 35, 9, 35, 26,
					-- layer=3 filter=1 channel=19
					-15, -9, -35, 26, 40, -57, 26, -9, 9,
					-- layer=3 filter=1 channel=20
					-2, 1, 21, -13, 16, 31, 32, 16, 0,
					-- layer=3 filter=1 channel=21
					40, 6, -23, 17, 0, -5, 8, 7, 10,
					-- layer=3 filter=1 channel=22
					-13, -8, 15, -6, -2, -7, 12, -12, 4,
					-- layer=3 filter=1 channel=23
					0, -39, -34, -25, 46, 49, -71, -13, 83,
					-- layer=3 filter=1 channel=24
					-11, -5, -11, 11, 23, -18, -12, 15, 6,
					-- layer=3 filter=1 channel=25
					-5, 18, 18, 38, 1, 23, 55, 12, 15,
					-- layer=3 filter=1 channel=26
					-10, 0, 6, -9, 2, -10, 1, 13, -7,
					-- layer=3 filter=1 channel=27
					-21, -10, -28, 17, 55, -16, 46, -3, 6,
					-- layer=3 filter=1 channel=28
					0, -4, 13, -5, 14, 7, -6, 13, -7,
					-- layer=3 filter=1 channel=29
					-22, -3, -23, -43, 37, 9, 18, 6, 23,
					-- layer=3 filter=1 channel=30
					-5, 4, 7, -8, -4, -2, 2, 0, -4,
					-- layer=3 filter=1 channel=31
					11, -39, 19, 24, 25, 30, -3, -9, 32,
					-- layer=3 filter=1 channel=32
					-28, 43, 8, -1, 6, 37, -22, 16, -7,
					-- layer=3 filter=1 channel=33
					-13, -5, 4, 27, -19, 3, 26, 12, 4,
					-- layer=3 filter=1 channel=34
					-1, -20, 44, 8, 28, 36, -22, -3, -45,
					-- layer=3 filter=1 channel=35
					30, -2, -27, 37, 46, 28, 0, 22, -15,
					-- layer=3 filter=1 channel=36
					-7, 4, -4, 25, 42, -8, 25, 18, 5,
					-- layer=3 filter=1 channel=37
					-17, 3, 33, -11, 74, -23, -1, -41, -29,
					-- layer=3 filter=1 channel=38
					4, 25, 44, -52, -32, 43, 7, 15, 14,
					-- layer=3 filter=1 channel=39
					14, 14, 10, 15, 10, -4, 11, -2, -4,
					-- layer=3 filter=1 channel=40
					-14, 7, 22, -9, -3, 19, 16, 9, 13,
					-- layer=3 filter=1 channel=41
					-42, 27, 12, -27, -1, 7, -18, -32, -62,
					-- layer=3 filter=1 channel=42
					11, -18, -5, 20, 65, -3, -1, -22, -2,
					-- layer=3 filter=1 channel=43
					12, 27, -14, 13, -29, -22, -10, -8, -30,
					-- layer=3 filter=1 channel=44
					-3, -1, -9, -10, 13, 10, 2, -6, 9,
					-- layer=3 filter=1 channel=45
					-24, -4, -21, -49, 48, -58, 3, 14, 12,
					-- layer=3 filter=1 channel=46
					-1, -3, -14, -2, -45, 54, -13, 4, 30,
					-- layer=3 filter=1 channel=47
					15, 10, -60, -33, -43, -3, 0, 28, 36,
					-- layer=3 filter=1 channel=48
					0, 11, -9, 35, 4, -5, -24, 0, -3,
					-- layer=3 filter=1 channel=49
					-23, -25, 9, -25, -25, -2, 5, -43, -61,
					-- layer=3 filter=1 channel=50
					20, 3, -13, -5, 10, -6, -23, -3, -12,
					-- layer=3 filter=1 channel=51
					-13, 0, -14, 7, -17, -26, -49, -8, -5,
					-- layer=3 filter=1 channel=52
					4, -20, -15, -32, 26, -23, -11, 21, -14,
					-- layer=3 filter=1 channel=53
					24, 54, -54, 7, -3, -24, 0, -4, -3,
					-- layer=3 filter=1 channel=54
					-4, 18, 12, 20, 3, -3, -34, -18, 17,
					-- layer=3 filter=1 channel=55
					-16, 33, -23, 5, -13, -2, 5, 21, -24,
					-- layer=3 filter=1 channel=56
					5, 2, 7, -62, -11, -16, 20, 64, -5,
					-- layer=3 filter=1 channel=57
					14, -1, 22, 31, -36, 16, 39, 0, 5,
					-- layer=3 filter=1 channel=58
					-23, 20, 17, 15, -26, -10, 15, 13, 38,
					-- layer=3 filter=1 channel=59
					26, -15, 0, -6, -41, 13, -20, -11, 12,
					-- layer=3 filter=1 channel=60
					-8, 27, 3, 39, 46, 14, -6, -17, 25,
					-- layer=3 filter=1 channel=61
					48, -3, -3, -14, -12, 46, -16, 0, 47,
					-- layer=3 filter=1 channel=62
					-10, -15, -43, -33, -50, -85, -10, 35, 16,
					-- layer=3 filter=1 channel=63
					17, -7, 0, 12, -26, 17, 4, -20, -16,
					-- layer=3 filter=2 channel=0
					0, 0, -8, -25, -17, -36, -30, -27, -18,
					-- layer=3 filter=2 channel=1
					3, 5, 11, -2, 21, 19, -7, 14, 3,
					-- layer=3 filter=2 channel=2
					-4, 8, 14, -21, -16, -12, -22, -20, -11,
					-- layer=3 filter=2 channel=3
					-18, 0, -16, 1, -2, -5, 8, 10, 10,
					-- layer=3 filter=2 channel=4
					4, -1, -8, -12, -25, -12, 1, 8, 14,
					-- layer=3 filter=2 channel=5
					12, 3, 13, -14, -11, 14, 0, 9, -2,
					-- layer=3 filter=2 channel=6
					-3, -32, -6, -41, -30, -8, -1, -18, -18,
					-- layer=3 filter=2 channel=7
					-2, -20, -20, 0, 3, 35, -8, -22, 8,
					-- layer=3 filter=2 channel=8
					0, -3, -17, 8, -31, -16, -6, -2, 3,
					-- layer=3 filter=2 channel=9
					-12, -26, -4, -45, -19, -1, -22, -17, -5,
					-- layer=3 filter=2 channel=10
					-11, -44, -33, -24, 0, -7, -10, 15, 11,
					-- layer=3 filter=2 channel=11
					-14, 2, -2, 4, 1, -8, 27, 1, 7,
					-- layer=3 filter=2 channel=12
					-27, -20, -14, 17, 3, -12, 0, -2, -19,
					-- layer=3 filter=2 channel=13
					17, -21, -32, 32, 12, 2, 3, 10, 31,
					-- layer=3 filter=2 channel=14
					8, -18, -4, -25, 6, 3, -16, 2, 1,
					-- layer=3 filter=2 channel=15
					2, 27, -20, 13, -24, -28, -27, -2, -2,
					-- layer=3 filter=2 channel=16
					-2, -22, -22, -3, 1, -15, 10, 30, -2,
					-- layer=3 filter=2 channel=17
					0, 21, -19, -9, -16, 10, -5, 10, 2,
					-- layer=3 filter=2 channel=18
					-3, -6, 12, -22, -23, -7, -15, -19, -16,
					-- layer=3 filter=2 channel=19
					-15, -19, -29, 4, -21, 6, 6, 10, -6,
					-- layer=3 filter=2 channel=20
					-1, -12, -10, -12, -13, -12, 2, -7, 2,
					-- layer=3 filter=2 channel=21
					-18, -6, -16, -6, 3, 3, 16, 4, -15,
					-- layer=3 filter=2 channel=22
					-5, 0, 5, 0, -6, 0, 12, 2, -2,
					-- layer=3 filter=2 channel=23
					-21, -21, -19, -5, -12, -24, 6, -8, -14,
					-- layer=3 filter=2 channel=24
					3, -6, -15, -27, 3, 4, -11, -23, -2,
					-- layer=3 filter=2 channel=25
					17, 11, 6, 18, 2, -7, 21, -23, 1,
					-- layer=3 filter=2 channel=26
					-13, -10, 12, -8, 5, 3, -4, -11, 12,
					-- layer=3 filter=2 channel=27
					-11, -20, -17, -7, 12, -5, -5, 12, 22,
					-- layer=3 filter=2 channel=28
					4, 13, -6, 2, 9, -3, 10, -12, 5,
					-- layer=3 filter=2 channel=29
					-15, -20, -15, -15, -23, -17, 2, -25, -19,
					-- layer=3 filter=2 channel=30
					-8, -6, 10, -10, -5, -1, 10, 6, 13,
					-- layer=3 filter=2 channel=31
					-15, -23, -3, 5, 3, -30, 7, 27, -12,
					-- layer=3 filter=2 channel=32
					21, -23, 6, -9, -6, -12, 13, -13, -14,
					-- layer=3 filter=2 channel=33
					-10, -15, 0, 7, 3, 8, -4, 2, 4,
					-- layer=3 filter=2 channel=34
					14, 18, -6, -20, -13, -30, 1, 7, -8,
					-- layer=3 filter=2 channel=35
					-3, 3, -18, 6, -9, 3, -16, -16, 10,
					-- layer=3 filter=2 channel=36
					-24, -4, -17, -8, -9, -8, -37, -3, 11,
					-- layer=3 filter=2 channel=37
					3, -6, -5, 8, 9, 8, -14, 21, 31,
					-- layer=3 filter=2 channel=38
					-26, -25, 4, 15, -6, -31, 15, 4, 0,
					-- layer=3 filter=2 channel=39
					9, -8, -12, 2, -9, 3, 6, 10, -3,
					-- layer=3 filter=2 channel=40
					7, -15, -10, -22, 8, -32, -28, -23, -18,
					-- layer=3 filter=2 channel=41
					10, 0, 1, -10, -14, -20, -15, 8, -24,
					-- layer=3 filter=2 channel=42
					-16, -2, -17, -29, -7, -10, 3, -16, -20,
					-- layer=3 filter=2 channel=43
					-6, -28, -31, -28, -5, 0, 2, 11, -34,
					-- layer=3 filter=2 channel=44
					-12, -13, -13, 0, 14, 0, -5, -10, -1,
					-- layer=3 filter=2 channel=45
					16, -6, -2, -8, -5, -11, -25, 17, 18,
					-- layer=3 filter=2 channel=46
					-7, -8, -13, 36, 0, -28, 7, -19, -31,
					-- layer=3 filter=2 channel=47
					-25, -19, 5, -26, -13, -1, 23, 1, -16,
					-- layer=3 filter=2 channel=48
					-26, -46, -29, 5, 8, -7, 0, -8, 22,
					-- layer=3 filter=2 channel=49
					-6, -10, -6, 4, -13, 8, 8, 13, 9,
					-- layer=3 filter=2 channel=50
					-8, -37, -3, -10, -19, -13, -15, 5, -17,
					-- layer=3 filter=2 channel=51
					-8, 0, 0, 4, -3, 2, -16, -16, -7,
					-- layer=3 filter=2 channel=52
					-19, -6, -18, -40, -4, -1, -7, -8, -18,
					-- layer=3 filter=2 channel=53
					-17, -47, 8, -13, 21, -17, 12, -21, 8,
					-- layer=3 filter=2 channel=54
					-1, -12, -39, -1, -17, 0, 7, 0, -14,
					-- layer=3 filter=2 channel=55
					-35, -29, -9, 1, -5, -16, 0, 2, 18,
					-- layer=3 filter=2 channel=56
					-3, -33, 2, -10, -24, -6, -9, -2, 6,
					-- layer=3 filter=2 channel=57
					0, -11, -8, 0, 7, -19, -9, 19, 1,
					-- layer=3 filter=2 channel=58
					9, -10, 14, -14, -33, 10, -10, -31, -15,
					-- layer=3 filter=2 channel=59
					-13, 0, -10, 17, 3, -18, -7, -2, -20,
					-- layer=3 filter=2 channel=60
					-4, 21, 0, 0, -13, -1, 13, -6, 0,
					-- layer=3 filter=2 channel=61
					-38, -2, 4, 18, 5, -16, 9, -15, -5,
					-- layer=3 filter=2 channel=62
					-16, 3, -4, -3, -5, -7, -13, -25, 4,
					-- layer=3 filter=2 channel=63
					3, -8, 5, 1, 4, -14, -4, 4, -3,
					-- layer=3 filter=3 channel=0
					31, 5, 31, 23, 40, 41, -12, -11, 13,
					-- layer=3 filter=3 channel=1
					2, 12, -3, -5, -63, -11, 17, 6, -29,
					-- layer=3 filter=3 channel=2
					35, 30, 13, 6, 1, 22, -85, -19, -4,
					-- layer=3 filter=3 channel=3
					-12, 5, 28, -5, 7, 41, -53, -17, -40,
					-- layer=3 filter=3 channel=4
					-12, -10, 39, 54, 103, 36, -49, -45, -70,
					-- layer=3 filter=3 channel=5
					6, 6, -14, 0, 0, -8, 7, -6, -13,
					-- layer=3 filter=3 channel=6
					34, 71, 30, 34, 85, 25, 20, -15, -2,
					-- layer=3 filter=3 channel=7
					14, 15, -5, -3, -39, -12, -87, -20, 23,
					-- layer=3 filter=3 channel=8
					17, 15, -5, 24, -5, 10, -57, 1, -24,
					-- layer=3 filter=3 channel=9
					16, -59, -54, 11, -63, -79, 36, 25, 12,
					-- layer=3 filter=3 channel=10
					4, -36, 29, -26, 31, 4, 0, 20, -30,
					-- layer=3 filter=3 channel=11
					4, 11, 22, -4, 7, -56, -10, -36, -57,
					-- layer=3 filter=3 channel=12
					38, 38, 35, -27, -20, -32, 28, 2, 34,
					-- layer=3 filter=3 channel=13
					-13, 34, -18, 36, 34, -2, -24, -55, -41,
					-- layer=3 filter=3 channel=14
					-10, 8, 1, -4, -13, 54, -65, -52, -23,
					-- layer=3 filter=3 channel=15
					-12, -8, 3, 0, 12, 28, 8, 43, 6,
					-- layer=3 filter=3 channel=16
					2, -15, -7, 9, -28, 30, -13, -42, 22,
					-- layer=3 filter=3 channel=17
					-48, -3, 33, -15, 33, 54, -72, -69, -66,
					-- layer=3 filter=3 channel=18
					-29, -40, -49, 9, 43, 23, -19, 21, 12,
					-- layer=3 filter=3 channel=19
					13, 16, 7, -2, 16, 5, -23, -47, -32,
					-- layer=3 filter=3 channel=20
					9, 24, 1, -32, 19, 42, -93, -11, -32,
					-- layer=3 filter=3 channel=21
					-36, -17, 20, -65, -21, -37, 6, 44, -14,
					-- layer=3 filter=3 channel=22
					-14, 7, -8, -11, 13, -12, 1, -7, 8,
					-- layer=3 filter=3 channel=23
					-31, -8, -38, -64, -64, -28, -26, -76, 17,
					-- layer=3 filter=3 channel=24
					10, 31, 17, 22, 48, 48, -44, -8, -28,
					-- layer=3 filter=3 channel=25
					-27, -25, 2, -18, 17, 33, -5, 59, 0,
					-- layer=3 filter=3 channel=26
					-6, -7, -12, 11, 1, -6, 4, 9, 4,
					-- layer=3 filter=3 channel=27
					29, 44, 30, 41, 50, 24, -87, -77, -90,
					-- layer=3 filter=3 channel=28
					-6, 4, 6, -4, 1, -5, -7, 2, 12,
					-- layer=3 filter=3 channel=29
					-59, -63, -43, 13, 46, 28, 21, -3, 30,
					-- layer=3 filter=3 channel=30
					-11, 3, 14, -10, -11, 5, 2, 14, 7,
					-- layer=3 filter=3 channel=31
					-7, 19, 9, 19, 35, -24, 76, 52, 56,
					-- layer=3 filter=3 channel=32
					-13, 23, -21, 17, -36, -14, 39, -26, -13,
					-- layer=3 filter=3 channel=33
					5, 21, -6, -24, -63, -44, 36, 13, 31,
					-- layer=3 filter=3 channel=34
					-55, -51, -31, 45, 24, 27, 3, 46, 46,
					-- layer=3 filter=3 channel=35
					-49, 3, 38, 7, 30, 22, -31, -8, -11,
					-- layer=3 filter=3 channel=36
					-21, -3, 3, -26, -22, 2, -8, 1, -2,
					-- layer=3 filter=3 channel=37
					0, 15, 7, -19, -7, -24, 110, 26, -37,
					-- layer=3 filter=3 channel=38
					-38, 4, 12, -13, -10, 27, -9, 6, -25,
					-- layer=3 filter=3 channel=39
					-11, 1, 10, 13, -9, 8, -7, -9, -12,
					-- layer=3 filter=3 channel=40
					-78, -28, -78, -47, -31, -2, -8, -10, 7,
					-- layer=3 filter=3 channel=41
					-6, 17, 15, 27, -18, 21, -44, -52, -63,
					-- layer=3 filter=3 channel=42
					-12, 48, 47, 24, 75, 36, -45, -25, -8,
					-- layer=3 filter=3 channel=43
					-25, -44, -61, 19, 5, 13, 14, -30, -24,
					-- layer=3 filter=3 channel=44
					6, -4, 8, -14, -7, 0, -6, 0, -13,
					-- layer=3 filter=3 channel=45
					0, 19, 11, 39, 30, 53, -45, -77, -54,
					-- layer=3 filter=3 channel=46
					-45, -40, -26, 8, -37, -36, 49, 36, 33,
					-- layer=3 filter=3 channel=47
					34, 30, 9, -58, -120, -112, 31, -28, 17,
					-- layer=3 filter=3 channel=48
					20, -6, 9, 10, -12, -33, -23, -35, -15,
					-- layer=3 filter=3 channel=49
					-55, -40, -2, -3, -45, -45, -17, -30, -36,
					-- layer=3 filter=3 channel=50
					-60, -10, -23, 3, -12, 31, 55, 27, -28,
					-- layer=3 filter=3 channel=51
					42, 1, 4, -36, -35, -17, 2, -37, -8,
					-- layer=3 filter=3 channel=52
					0, 11, 8, 7, 52, 50, -83, -20, -31,
					-- layer=3 filter=3 channel=53
					-15, -20, -23, 15, 38, -52, 39, -4, -22,
					-- layer=3 filter=3 channel=54
					-6, 0, -17, 28, 8, 33, -61, -25, -73,
					-- layer=3 filter=3 channel=55
					11, 21, 4, -22, -1, 17, -46, -77, -25,
					-- layer=3 filter=3 channel=56
					0, 7, -22, -28, -15, -11, 11, -26, -47,
					-- layer=3 filter=3 channel=57
					-30, -51, -47, -14, -2, -46, 35, 3, -28,
					-- layer=3 filter=3 channel=58
					25, -33, -25, -33, -58, -35, -40, -10, 45,
					-- layer=3 filter=3 channel=59
					-37, -56, -24, 54, 21, 29, 20, 14, 43,
					-- layer=3 filter=3 channel=60
					-9, -8, -15, -1, 17, 47, -11, -12, -2,
					-- layer=3 filter=3 channel=61
					13, -50, 14, -19, -41, -42, 20, 7, 8,
					-- layer=3 filter=3 channel=62
					-19, 16, -16, -19, -36, 10, 15, 7, -13,
					-- layer=3 filter=3 channel=63
					11, -25, 8, -8, -33, -8, -27, -14, 2,
					-- layer=3 filter=4 channel=0
					-6, -9, 9, -23, -3, -4, -7, -19, -6,
					-- layer=3 filter=4 channel=1
					-22, 22, 6, 11, -24, -22, -26, -28, -26,
					-- layer=3 filter=4 channel=2
					-43, -14, 39, 10, 46, 31, -2, 7, 0,
					-- layer=3 filter=4 channel=3
					-31, -25, -15, 23, 92, -15, -13, -23, -52,
					-- layer=3 filter=4 channel=4
					3, 36, -5, 8, 25, -23, 0, -18, 21,
					-- layer=3 filter=4 channel=5
					0, -19, -5, 11, 22, -7, -7, -18, 17,
					-- layer=3 filter=4 channel=6
					-1, 0, 23, 2, 127, 16, 38, 17, 0,
					-- layer=3 filter=4 channel=7
					20, 10, -2, -21, -29, -29, -21, -9, 1,
					-- layer=3 filter=4 channel=8
					-12, 16, 24, -76, -2, 18, -49, -3, -43,
					-- layer=3 filter=4 channel=9
					29, 20, -20, 13, -36, 15, -10, 26, -2,
					-- layer=3 filter=4 channel=10
					-6, -12, -33, 29, -22, -8, -15, -18, 9,
					-- layer=3 filter=4 channel=11
					28, 4, 15, 3, 14, 13, -27, -31, -47,
					-- layer=3 filter=4 channel=12
					-13, 29, 35, -4, -23, 10, -30, -40, 9,
					-- layer=3 filter=4 channel=13
					-13, -31, -27, -36, 72, -3, -26, 8, -3,
					-- layer=3 filter=4 channel=14
					-8, -1, 5, -39, 46, -42, -21, -64, -69,
					-- layer=3 filter=4 channel=15
					14, -2, 25, -18, -49, 0, -9, -15, -41,
					-- layer=3 filter=4 channel=16
					-85, 6, 0, -17, -17, -22, 91, 50, -13,
					-- layer=3 filter=4 channel=17
					-19, 10, 12, 9, 25, -24, -64, 2, -14,
					-- layer=3 filter=4 channel=18
					17, -17, -6, 7, -4, 1, 33, 33, 35,
					-- layer=3 filter=4 channel=19
					-18, -50, -4, 19, 38, -18, -13, -28, -17,
					-- layer=3 filter=4 channel=20
					25, 18, 67, -68, -7, 12, 8, -35, -9,
					-- layer=3 filter=4 channel=21
					16, 32, 16, -23, 15, -5, -23, 4, -1,
					-- layer=3 filter=4 channel=22
					14, 2, 6, -17, 7, 12, -1, -6, -9,
					-- layer=3 filter=4 channel=23
					14, -35, -18, 1, -22, 44, 15, 58, 20,
					-- layer=3 filter=4 channel=24
					21, -12, 1, -3, 64, 2, 2, 0, -42,
					-- layer=3 filter=4 channel=25
					-42, 32, -4, 3, 32, 26, -15, -31, -21,
					-- layer=3 filter=4 channel=26
					12, -13, 8, 5, -3, 9, 4, 4, -9,
					-- layer=3 filter=4 channel=27
					-55, -29, -2, -31, 61, 22, -22, 57, 25,
					-- layer=3 filter=4 channel=28
					-10, -9, 10, 6, -1, 0, 3, -8, 7,
					-- layer=3 filter=4 channel=29
					-8, -18, -17, -80, -20, -39, 18, -19, 24,
					-- layer=3 filter=4 channel=30
					-4, 0, -16, 14, -6, -1, 3, 14, 20,
					-- layer=3 filter=4 channel=31
					37, -13, 10, -45, 20, -7, -23, -36, -29,
					-- layer=3 filter=4 channel=32
					19, 15, 5, 8, -44, 35, 41, 4, 18,
					-- layer=3 filter=4 channel=33
					49, -39, -1, 40, -29, -3, -22, 26, 9,
					-- layer=3 filter=4 channel=34
					-20, 9, 42, 8, 14, 3, 28, -2, 17,
					-- layer=3 filter=4 channel=35
					9, -12, -23, -14, 45, 30, -9, 3, 14,
					-- layer=3 filter=4 channel=36
					39, -3, -10, 53, 64, 32, -49, -31, -72,
					-- layer=3 filter=4 channel=37
					-22, 49, -10, 13, 43, 9, 6, -7, -22,
					-- layer=3 filter=4 channel=38
					7, 33, 1, 32, -36, -21, 36, 8, 20,
					-- layer=3 filter=4 channel=39
					6, 14, -4, 14, -7, -13, 0, 2, -4,
					-- layer=3 filter=4 channel=40
					6, -24, -12, -26, -63, -2, 0, 3, 7,
					-- layer=3 filter=4 channel=41
					-17, 31, 29, -39, 50, 18, -58, -42, -40,
					-- layer=3 filter=4 channel=42
					-48, -4, 0, -45, 61, 23, -31, -26, -7,
					-- layer=3 filter=4 channel=43
					-2, 17, 26, -1, -34, -61, 21, -31, -3,
					-- layer=3 filter=4 channel=44
					-7, 9, 8, 8, -14, -9, 2, -11, 1,
					-- layer=3 filter=4 channel=45
					-2, -7, -21, -22, 89, 32, 25, 33, 9,
					-- layer=3 filter=4 channel=46
					19, -3, 8, 9, -42, 23, 23, 6, 21,
					-- layer=3 filter=4 channel=47
					-12, -60, -23, -26, -57, -23, -61, -16, -33,
					-- layer=3 filter=4 channel=48
					-11, -29, -46, 33, -78, -47, -4, -1, -3,
					-- layer=3 filter=4 channel=49
					-7, 28, 40, -41, -34, -6, -14, -45, 0,
					-- layer=3 filter=4 channel=50
					15, 33, 18, 0, 66, -11, 8, 13, 0,
					-- layer=3 filter=4 channel=51
					-10, 14, -29, -21, -22, -41, -31, -86, -48,
					-- layer=3 filter=4 channel=52
					-3, -39, 32, -37, 20, -30, -42, -21, -63,
					-- layer=3 filter=4 channel=53
					6, -10, -62, -9, -12, -57, -31, 15, 0,
					-- layer=3 filter=4 channel=54
					5, 20, 0, -7, 26, -19, -17, -28, -4,
					-- layer=3 filter=4 channel=55
					7, 16, 27, 4, -73, -10, 11, 35, 24,
					-- layer=3 filter=4 channel=56
					12, -13, -15, -8, 28, 9, -15, -16, -22,
					-- layer=3 filter=4 channel=57
					69, 19, -4, 64, 8, -54, -9, -1, -10,
					-- layer=3 filter=4 channel=58
					-18, -10, 29, -39, -43, 5, -41, -47, -4,
					-- layer=3 filter=4 channel=59
					27, -13, 23, -3, -5, 19, 61, -7, 27,
					-- layer=3 filter=4 channel=60
					-5, 3, 2, -6, 41, 9, 37, 22, 26,
					-- layer=3 filter=4 channel=61
					-12, 1, -49, 46, -40, 24, -11, -3, 42,
					-- layer=3 filter=4 channel=62
					18, -2, -6, 0, -37, 14, -63, -54, -71,
					-- layer=3 filter=4 channel=63
					2, -13, -21, 20, -16, 15, 17, 11, -4,
					-- layer=3 filter=5 channel=0
					-3, -3, -3, 0, -20, 0, -11, -2, 0,
					-- layer=3 filter=5 channel=1
					3, 0, -13, -14, 3, -5, 0, -4, -14,
					-- layer=3 filter=5 channel=2
					-18, 5, -12, -20, 0, 4, -6, -7, -16,
					-- layer=3 filter=5 channel=3
					-7, 10, 6, -12, 4, 0, -5, 5, -13,
					-- layer=3 filter=5 channel=4
					6, 8, -16, -3, -17, -7, -11, -6, -2,
					-- layer=3 filter=5 channel=5
					10, -13, 0, 2, 1, -12, 12, 10, -11,
					-- layer=3 filter=5 channel=6
					-4, -10, 2, -3, 0, -24, -14, -9, -26,
					-- layer=3 filter=5 channel=7
					10, -21, 8, -13, 2, -4, 7, -5, 0,
					-- layer=3 filter=5 channel=8
					-5, 11, -9, 7, 2, -19, 5, 3, 6,
					-- layer=3 filter=5 channel=9
					-17, -15, 1, -25, 2, -8, -22, -15, -4,
					-- layer=3 filter=5 channel=10
					-2, -18, -7, 5, 4, -7, -7, 5, 2,
					-- layer=3 filter=5 channel=11
					4, -7, -14, 0, -17, -16, -2, -6, -22,
					-- layer=3 filter=5 channel=12
					-10, 3, -26, -1, -1, -8, 2, 0, -3,
					-- layer=3 filter=5 channel=13
					2, -12, -17, 0, 5, 1, -4, 0, -10,
					-- layer=3 filter=5 channel=14
					-10, 8, -6, 0, -8, 4, 8, 4, -7,
					-- layer=3 filter=5 channel=15
					0, 2, 3, -18, -12, -5, -2, -2, -17,
					-- layer=3 filter=5 channel=16
					2, -6, -10, -8, 17, 0, 6, -4, -12,
					-- layer=3 filter=5 channel=17
					-2, 5, -14, -5, -5, -16, -14, 1, -11,
					-- layer=3 filter=5 channel=18
					-5, -7, -15, 2, -2, -6, 0, -20, 5,
					-- layer=3 filter=5 channel=19
					-15, -3, -12, 0, -2, -12, -6, 0, -16,
					-- layer=3 filter=5 channel=20
					-6, -15, 1, 3, 6, -3, -9, 3, -6,
					-- layer=3 filter=5 channel=21
					-11, -2, -16, -12, 10, 8, -19, -10, -9,
					-- layer=3 filter=5 channel=22
					-6, -12, 11, -3, 2, 0, -9, -10, 2,
					-- layer=3 filter=5 channel=23
					-12, 10, -1, 3, 10, -3, -9, 0, -2,
					-- layer=3 filter=5 channel=24
					0, -15, -10, -22, -4, 9, -21, 4, -17,
					-- layer=3 filter=5 channel=25
					5, 6, 10, -5, 1, -11, -5, -5, 13,
					-- layer=3 filter=5 channel=26
					-10, -7, -10, 11, 6, -6, 5, 2, -9,
					-- layer=3 filter=5 channel=27
					-4, -3, -17, 11, -5, -2, 10, 5, -11,
					-- layer=3 filter=5 channel=28
					-3, -7, -14, -7, 6, 0, 7, 12, -8,
					-- layer=3 filter=5 channel=29
					-10, -17, -18, -2, 4, -7, -16, 3, -11,
					-- layer=3 filter=5 channel=30
					8, 8, -1, 16, -12, 13, -4, 9, 1,
					-- layer=3 filter=5 channel=31
					6, 0, 8, -10, -8, 5, 6, -3, -1,
					-- layer=3 filter=5 channel=32
					-2, -3, 0, 7, -14, 5, -12, -15, 10,
					-- layer=3 filter=5 channel=33
					-2, 7, -13, -16, -6, -17, 1, -18, -15,
					-- layer=3 filter=5 channel=34
					-2, 0, 12, -13, -3, -6, -1, -11, -19,
					-- layer=3 filter=5 channel=35
					-10, -2, -2, 0, 1, 1, 5, 3, -8,
					-- layer=3 filter=5 channel=36
					-11, -4, -6, 9, -4, 0, 0, 9, 6,
					-- layer=3 filter=5 channel=37
					1, 15, -6, -3, -5, -13, 1, -10, -5,
					-- layer=3 filter=5 channel=38
					3, 0, -21, -15, 3, 1, -10, -5, 8,
					-- layer=3 filter=5 channel=39
					-2, 4, 6, 8, -14, -7, -9, -8, 11,
					-- layer=3 filter=5 channel=40
					4, -5, -17, 2, 4, 7, -6, -10, -5,
					-- layer=3 filter=5 channel=41
					-5, -8, -19, -7, 1, -1, -6, -13, 2,
					-- layer=3 filter=5 channel=42
					-15, 11, -18, 9, -8, -11, 0, -11, 7,
					-- layer=3 filter=5 channel=43
					0, -14, 6, -2, -15, 2, -19, -14, 3,
					-- layer=3 filter=5 channel=44
					-6, 11, -8, 10, -8, 9, 3, 14, 14,
					-- layer=3 filter=5 channel=45
					-16, 3, 5, 3, -13, -13, -11, 6, -16,
					-- layer=3 filter=5 channel=46
					-2, 7, -13, -5, -4, 1, -10, 5, -9,
					-- layer=3 filter=5 channel=47
					1, -12, 0, -12, 6, -4, -2, 5, 7,
					-- layer=3 filter=5 channel=48
					-19, -15, 0, 10, 2, 0, -13, 8, 0,
					-- layer=3 filter=5 channel=49
					-6, 15, -2, 1, 15, -10, -14, 5, 5,
					-- layer=3 filter=5 channel=50
					-15, 8, -5, -20, 6, 0, 2, 1, -18,
					-- layer=3 filter=5 channel=51
					-9, -13, -5, -6, 0, -13, -7, -9, -7,
					-- layer=3 filter=5 channel=52
					-14, -15, -5, 10, -11, -11, -7, -4, -11,
					-- layer=3 filter=5 channel=53
					-1, -10, 0, -18, -3, -14, 1, -10, -8,
					-- layer=3 filter=5 channel=54
					15, 7, -11, 1, 18, 0, -13, 0, -8,
					-- layer=3 filter=5 channel=55
					-20, -7, -12, 5, -10, 3, -5, -7, 6,
					-- layer=3 filter=5 channel=56
					3, -2, -8, -7, 8, -1, 6, -7, -6,
					-- layer=3 filter=5 channel=57
					4, -24, -5, -1, 0, -7, 3, -5, -9,
					-- layer=3 filter=5 channel=58
					-12, -15, -6, 6, 2, 11, 10, -9, 8,
					-- layer=3 filter=5 channel=59
					-4, -18, 9, -11, -7, 0, -14, 14, 0,
					-- layer=3 filter=5 channel=60
					-9, -5, -11, -10, 2, -14, -6, 0, -2,
					-- layer=3 filter=5 channel=61
					-9, 6, 7, 0, -1, 10, -6, -2, -14,
					-- layer=3 filter=5 channel=62
					0, 0, 0, -11, -1, -21, -3, 6, -13,
					-- layer=3 filter=5 channel=63
					-13, 6, -12, 5, 11, 3, 9, -10, -6,
					-- layer=3 filter=6 channel=0
					-2, -30, -22, 0, -25, 0, 17, -21, -40,
					-- layer=3 filter=6 channel=1
					-34, 26, -65, -57, -48, -27, -28, -24, -42,
					-- layer=3 filter=6 channel=2
					26, 14, 48, 22, 42, -10, 12, 31, 23,
					-- layer=3 filter=6 channel=3
					-6, -7, 8, -7, 44, -6, -29, -73, -15,
					-- layer=3 filter=6 channel=4
					14, 30, 15, 0, 0, 10, -1, 0, 24,
					-- layer=3 filter=6 channel=5
					-27, -19, -2, -16, -31, -31, 10, -8, 6,
					-- layer=3 filter=6 channel=6
					19, 10, -8, 23, 61, -38, 8, -33, -10,
					-- layer=3 filter=6 channel=7
					-38, -19, 27, -19, 16, 29, -46, 7, 17,
					-- layer=3 filter=6 channel=8
					28, 40, 23, -2, -18, -26, -10, -63, -25,
					-- layer=3 filter=6 channel=9
					21, 27, -27, -60, -42, 7, -21, -16, 19,
					-- layer=3 filter=6 channel=10
					-29, 19, -27, 1, 29, -42, -44, -44, -65,
					-- layer=3 filter=6 channel=11
					24, 14, -35, 20, 1, 3, 41, -8, -34,
					-- layer=3 filter=6 channel=12
					5, -2, -8, -19, -79, -54, -12, 3, 2,
					-- layer=3 filter=6 channel=13
					-1, 35, -6, -26, -36, -36, 5, -51, 5,
					-- layer=3 filter=6 channel=14
					-29, 15, 23, -56, -49, -83, 1, -6, -54,
					-- layer=3 filter=6 channel=15
					1, 32, 7, -8, -14, -33, 11, 20, -26,
					-- layer=3 filter=6 channel=16
					-18, 9, 18, -29, -29, -29, -53, -86, -38,
					-- layer=3 filter=6 channel=17
					-18, -31, -8, 3, -21, 12, -29, -29, -1,
					-- layer=3 filter=6 channel=18
					-24, -8, -15, 19, 33, 12, 7, 8, 9,
					-- layer=3 filter=6 channel=19
					9, -15, 5, -25, 2, 1, -5, -8, 1,
					-- layer=3 filter=6 channel=20
					-16, 13, 0, 18, -10, 1, 33, 4, -28,
					-- layer=3 filter=6 channel=21
					40, 11, -40, 18, -6, 27, 33, 16, 10,
					-- layer=3 filter=6 channel=22
					1, 12, 5, -15, 3, 5, -6, -8, -2,
					-- layer=3 filter=6 channel=23
					-3, -25, -7, 11, 42, 15, -8, -26, -11,
					-- layer=3 filter=6 channel=24
					-17, 13, -9, -6, -8, 4, -8, 0, -27,
					-- layer=3 filter=6 channel=25
					16, 19, -9, 28, 22, 31, -2, 0, -29,
					-- layer=3 filter=6 channel=26
					0, 12, 6, 0, 14, -6, -12, -10, 11,
					-- layer=3 filter=6 channel=27
					-18, -44, -19, 0, -18, -21, -19, -30, 30,
					-- layer=3 filter=6 channel=28
					7, 11, -11, -15, 4, -1, 0, 8, -10,
					-- layer=3 filter=6 channel=29
					-19, -8, 33, -26, 35, -15, -16, 12, 2,
					-- layer=3 filter=6 channel=30
					0, -15, -9, 16, -3, 5, -4, -15, -18,
					-- layer=3 filter=6 channel=31
					-22, 4, -42, 1, 16, 37, 19, 10, -35,
					-- layer=3 filter=6 channel=32
					5, -34, 16, 0, 20, 6, -34, 0, -45,
					-- layer=3 filter=6 channel=33
					30, -6, 32, 22, -4, 6, 0, -29, 4,
					-- layer=3 filter=6 channel=34
					6, 7, 2, 0, 4, 24, 12, 12, 16,
					-- layer=3 filter=6 channel=35
					14, 37, 18, 2, 28, 40, 19, -6, 19,
					-- layer=3 filter=6 channel=36
					-17, 18, -30, 23, -16, -49, 30, 13, 14,
					-- layer=3 filter=6 channel=37
					9, 25, -21, 11, 40, 10, 28, 9, -51,
					-- layer=3 filter=6 channel=38
					16, 13, 44, 20, 21, 20, -39, 10, -9,
					-- layer=3 filter=6 channel=39
					6, -6, -8, 13, -8, -13, 4, -2, -12,
					-- layer=3 filter=6 channel=40
					-7, 17, -9, 5, -25, -11, 3, 26, -31,
					-- layer=3 filter=6 channel=41
					-19, 1, -2, -2, -1, -15, 38, -31, -13,
					-- layer=3 filter=6 channel=42
					0, 14, 14, 16, 26, -2, -22, -15, 18,
					-- layer=3 filter=6 channel=43
					14, 23, 44, -1, 40, -30, -34, 31, -27,
					-- layer=3 filter=6 channel=44
					1, 2, -11, -7, -3, 0, 7, 11, -3,
					-- layer=3 filter=6 channel=45
					0, 52, -13, -37, -20, -60, -1, 49, 7,
					-- layer=3 filter=6 channel=46
					-11, 0, -13, 13, -20, 3, -8, 9, 16,
					-- layer=3 filter=6 channel=47
					44, -24, -18, -11, -58, -25, 33, -10, -3,
					-- layer=3 filter=6 channel=48
					-17, -18, -18, 7, -16, -47, -6, -8, -44,
					-- layer=3 filter=6 channel=49
					5, 8, 21, 3, -2, -2, 45, -1, 24,
					-- layer=3 filter=6 channel=50
					8, -8, -12, 7, 40, 31, 34, 26, 4,
					-- layer=3 filter=6 channel=51
					-8, 21, 34, -64, -30, -4, -27, -21, -13,
					-- layer=3 filter=6 channel=52
					-41, 34, 6, 9, 10, 9, -29, -44, -14,
					-- layer=3 filter=6 channel=53
					20, 18, -18, 7, -26, -35, -6, -37, -9,
					-- layer=3 filter=6 channel=54
					16, 76, -11, -20, -11, -6, -51, -53, -29,
					-- layer=3 filter=6 channel=55
					-42, -1, -45, -7, -4, 5, -10, 12, 0,
					-- layer=3 filter=6 channel=56
					-16, -24, -27, -14, 2, -11, 53, 60, -29,
					-- layer=3 filter=6 channel=57
					4, 1, 22, 26, 4, -11, 3, -33, 16,
					-- layer=3 filter=6 channel=58
					-50, 20, 39, -50, 4, -3, -42, 32, 10,
					-- layer=3 filter=6 channel=59
					28, 12, 8, 6, 16, -15, -13, -22, -52,
					-- layer=3 filter=6 channel=60
					-16, -21, 3, 18, 63, 18, 4, 15, 9,
					-- layer=3 filter=6 channel=61
					20, -9, 8, -4, -8, 28, -54, -2, 16,
					-- layer=3 filter=6 channel=62
					25, 33, -5, -51, -99, -109, -40, -44, -49,
					-- layer=3 filter=6 channel=63
					3, -2, 32, -6, 3, 7, 21, -11, -9,
					-- layer=3 filter=7 channel=0
					-9, -9, -23, -39, 6, -24, -9, 25, 24,
					-- layer=3 filter=7 channel=1
					39, 15, 23, 3, -3, -2, 13, 15, 0,
					-- layer=3 filter=7 channel=2
					25, -9, 26, 0, -36, 3, -23, -47, -17,
					-- layer=3 filter=7 channel=3
					10, -12, -12, 15, -38, 3, 3, 31, -11,
					-- layer=3 filter=7 channel=4
					-31, 11, 18, 2, 23, 35, -4, 0, -7,
					-- layer=3 filter=7 channel=5
					0, -8, -9, 8, 5, -12, -8, 18, -14,
					-- layer=3 filter=7 channel=6
					-20, -42, -13, 8, -21, 2, 12, -7, 9,
					-- layer=3 filter=7 channel=7
					0, 0, 36, 7, 8, -5, -19, -2, 37,
					-- layer=3 filter=7 channel=8
					-3, -14, 15, 77, 10, 17, -1, -2, -65,
					-- layer=3 filter=7 channel=9
					7, -5, 39, -4, 13, -29, 43, 26, 24,
					-- layer=3 filter=7 channel=10
					26, 20, 74, -31, 14, 22, -11, 11, -26,
					-- layer=3 filter=7 channel=11
					-11, -18, -39, -3, -31, 6, 25, -41, 37,
					-- layer=3 filter=7 channel=12
					1, -24, -9, -38, -7, 13, -11, 24, 0,
					-- layer=3 filter=7 channel=13
					6, 9, -36, 11, -22, -7, 12, 1, 11,
					-- layer=3 filter=7 channel=14
					-10, -13, 0, 23, 9, 48, -10, 55, 15,
					-- layer=3 filter=7 channel=15
					-6, -27, -3, 5, -21, -27, 15, 34, 33,
					-- layer=3 filter=7 channel=16
					32, -13, 30, -18, -55, 23, -56, -1, 12,
					-- layer=3 filter=7 channel=17
					-38, -14, -23, -5, 16, 46, -29, 6, 38,
					-- layer=3 filter=7 channel=18
					-2, 10, 44, -17, 10, 2, -44, -34, -24,
					-- layer=3 filter=7 channel=19
					-11, -25, -7, 20, -14, 33, 18, -9, 26,
					-- layer=3 filter=7 channel=20
					-17, 5, -9, -7, 4, 14, -13, -5, -8,
					-- layer=3 filter=7 channel=21
					20, -7, 30, 1, 7, 27, 16, -51, 24,
					-- layer=3 filter=7 channel=22
					-13, -14, 11, 0, 5, 3, -14, 3, -6,
					-- layer=3 filter=7 channel=23
					3, 19, -8, -15, -29, -21, 6, -1, -5,
					-- layer=3 filter=7 channel=24
					-22, 12, -22, 0, -15, 15, -32, 12, -3,
					-- layer=3 filter=7 channel=25
					-2, -26, 0, -10, -42, -57, -18, 2, -13,
					-- layer=3 filter=7 channel=26
					13, 10, 3, 7, -5, 0, 10, 6, 9,
					-- layer=3 filter=7 channel=27
					8, 0, -8, 22, -10, -5, -19, -24, -1,
					-- layer=3 filter=7 channel=28
					9, -2, -1, 0, -1, 3, 4, 14, 1,
					-- layer=3 filter=7 channel=29
					23, -2, -2, -1, -30, 52, -48, -84, -62,
					-- layer=3 filter=7 channel=30
					11, -17, -2, 12, -10, -10, 0, -4, -4,
					-- layer=3 filter=7 channel=31
					-1, 17, -2, -40, -25, -66, -87, -37, -44,
					-- layer=3 filter=7 channel=32
					-31, 25, -3, -8, 0, -1, 3, 0, 10,
					-- layer=3 filter=7 channel=33
					-22, 14, 54, 0, -17, 3, 33, -21, -40,
					-- layer=3 filter=7 channel=34
					-17, -14, 0, 1, 10, -5, -52, -9, -16,
					-- layer=3 filter=7 channel=35
					-1, -15, 1, 9, 9, 22, 10, -6, 5,
					-- layer=3 filter=7 channel=36
					-11, -9, 10, -28, -49, 17, 31, -15, -12,
					-- layer=3 filter=7 channel=37
					27, -36, 18, 13, -18, 13, 40, -1, 8,
					-- layer=3 filter=7 channel=38
					4, 0, -7, -4, -3, 5, -17, -31, -54,
					-- layer=3 filter=7 channel=39
					12, -8, -5, -5, -2, -14, 2, 2, 1,
					-- layer=3 filter=7 channel=40
					12, 4, -1, -20, -4, 19, -13, -32, -111,
					-- layer=3 filter=7 channel=41
					32, -38, -22, 8, 0, 9, -7, -46, -13,
					-- layer=3 filter=7 channel=42
					-22, 28, -29, 18, -17, 4, 26, 25, 15,
					-- layer=3 filter=7 channel=43
					16, -27, 13, 27, 13, 41, -29, -25, -32,
					-- layer=3 filter=7 channel=44
					23, -6, 8, 9, -4, -16, -10, 13, 9,
					-- layer=3 filter=7 channel=45
					31, 3, -2, 49, -7, 45, 19, 11, -11,
					-- layer=3 filter=7 channel=46
					8, 37, 33, -35, -31, -15, 12, 18, 30,
					-- layer=3 filter=7 channel=47
					-4, -13, 33, -42, 27, 3, 14, 19, 23,
					-- layer=3 filter=7 channel=48
					26, 11, 24, -7, -9, 31, -46, -17, -29,
					-- layer=3 filter=7 channel=49
					-35, 5, -12, -13, -43, 24, 26, -19, 2,
					-- layer=3 filter=7 channel=50
					7, -19, -44, 18, 1, 24, -12, 14, 20,
					-- layer=3 filter=7 channel=51
					23, -25, 43, 71, 16, 14, 29, 0, 39,
					-- layer=3 filter=7 channel=52
					-10, 16, 9, -24, 20, 4, -16, -11, 28,
					-- layer=3 filter=7 channel=53
					27, 23, 13, 44, -20, 18, 36, -10, -25,
					-- layer=3 filter=7 channel=54
					33, -26, 3, 8, -36, -38, -7, 10, 15,
					-- layer=3 filter=7 channel=55
					13, -11, 28, -7, 36, 8, 8, 16, -8,
					-- layer=3 filter=7 channel=56
					36, 13, -20, -4, 10, 27, 15, 10, 2,
					-- layer=3 filter=7 channel=57
					-59, -15, -22, -40, -50, 0, 20, -34, -1,
					-- layer=3 filter=7 channel=58
					-14, -16, 2, 62, 44, 13, -19, -41, -63,
					-- layer=3 filter=7 channel=59
					0, 27, 17, -6, -17, 14, 14, 48, 47,
					-- layer=3 filter=7 channel=60
					11, -8, 24, 8, 19, 30, -29, -39, -36,
					-- layer=3 filter=7 channel=61
					20, 24, 38, -27, 11, -11, 0, -8, -19,
					-- layer=3 filter=7 channel=62
					-27, -19, 17, 25, -15, 3, 6, 23, -27,
					-- layer=3 filter=7 channel=63
					23, 10, 15, 4, 14, -15, -2, 2, -1,
					-- layer=3 filter=8 channel=0
					4, -9, -1, -14, -8, 3, -12, -8, -7,
					-- layer=3 filter=8 channel=1
					0, -13, 2, -14, -4, -14, 6, 3, 8,
					-- layer=3 filter=8 channel=2
					-3, 11, 13, 4, -14, 7, 5, -5, 14,
					-- layer=3 filter=8 channel=3
					-16, 5, -7, 7, 1, -18, -20, 2, -13,
					-- layer=3 filter=8 channel=4
					5, -17, -14, 13, -13, -11, -15, -9, -11,
					-- layer=3 filter=8 channel=5
					14, 13, -5, -13, -9, 4, -9, -6, -7,
					-- layer=3 filter=8 channel=6
					-1, 5, 0, -20, -1, 4, -10, -2, 5,
					-- layer=3 filter=8 channel=7
					8, -15, 4, 6, 13, -13, -5, -6, -12,
					-- layer=3 filter=8 channel=8
					-5, -13, -9, 14, -16, -17, 9, 0, -15,
					-- layer=3 filter=8 channel=9
					-3, 1, -13, -2, -10, -19, -7, -20, -1,
					-- layer=3 filter=8 channel=10
					4, -8, -17, -4, -16, -3, -2, -10, -2,
					-- layer=3 filter=8 channel=11
					6, 0, -3, -11, -1, -6, -17, -4, 2,
					-- layer=3 filter=8 channel=12
					0, -14, -16, -9, -5, -19, -8, -6, -18,
					-- layer=3 filter=8 channel=13
					10, -9, -12, -3, -1, 2, 11, -10, -6,
					-- layer=3 filter=8 channel=14
					-5, -5, -19, -13, 4, -7, -10, -10, -7,
					-- layer=3 filter=8 channel=15
					-22, -13, 13, 7, -1, -17, 5, 14, -8,
					-- layer=3 filter=8 channel=16
					-20, -7, -13, 5, -4, -1, -7, -3, -11,
					-- layer=3 filter=8 channel=17
					-3, 3, 2, -5, 10, -14, -8, 0, 0,
					-- layer=3 filter=8 channel=18
					-15, 0, -19, -7, -14, 11, -11, -15, -12,
					-- layer=3 filter=8 channel=19
					-3, 1, -4, 12, 13, -7, 10, -1, -12,
					-- layer=3 filter=8 channel=20
					7, 12, 11, -10, -7, 5, 0, 2, 3,
					-- layer=3 filter=8 channel=21
					-15, -10, -4, 11, -7, -7, -2, -11, -23,
					-- layer=3 filter=8 channel=22
					-7, 4, -5, 9, 12, 8, 7, -4, -2,
					-- layer=3 filter=8 channel=23
					1, -3, -19, -7, -20, -6, 1, -9, 2,
					-- layer=3 filter=8 channel=24
					0, -16, 5, -14, 9, 3, 1, -15, -18,
					-- layer=3 filter=8 channel=25
					-7, -11, -2, -12, -13, 4, -7, 8, -14,
					-- layer=3 filter=8 channel=26
					4, 12, 4, 2, -10, 1, 1, 11, -14,
					-- layer=3 filter=8 channel=27
					0, -4, -6, 6, -5, -4, 6, -9, -8,
					-- layer=3 filter=8 channel=28
					6, -4, 10, 0, 9, 3, 11, -7, -14,
					-- layer=3 filter=8 channel=29
					-5, -4, -13, -1, 8, 11, -1, -5, 0,
					-- layer=3 filter=8 channel=30
					-11, 13, 12, 10, 3, -14, -4, -12, -6,
					-- layer=3 filter=8 channel=31
					5, 4, -3, -3, 0, 12, 8, 12, 7,
					-- layer=3 filter=8 channel=32
					-6, -13, 3, 2, 0, -16, 0, 3, 7,
					-- layer=3 filter=8 channel=33
					2, -13, 2, -22, 7, -10, -2, 6, 0,
					-- layer=3 filter=8 channel=34
					-9, -17, -18, -10, -4, -18, -13, 3, -18,
					-- layer=3 filter=8 channel=35
					-19, -5, -14, -6, -6, -1, -7, -4, -5,
					-- layer=3 filter=8 channel=36
					-5, 9, -14, -12, -14, -6, 4, 4, 5,
					-- layer=3 filter=8 channel=37
					-6, -1, -18, -11, -12, 4, 7, -21, 4,
					-- layer=3 filter=8 channel=38
					3, -13, -2, 1, -4, 0, -15, -4, 3,
					-- layer=3 filter=8 channel=39
					5, 4, 1, 1, 2, 0, -2, -4, -11,
					-- layer=3 filter=8 channel=40
					-13, -1, 3, -10, -6, -7, -8, -10, 11,
					-- layer=3 filter=8 channel=41
					-19, 1, 5, -11, -10, 0, -14, -17, 0,
					-- layer=3 filter=8 channel=42
					-2, -15, -11, 0, -15, 1, 2, -8, -9,
					-- layer=3 filter=8 channel=43
					-9, -8, 0, 8, -10, -10, -12, -10, -12,
					-- layer=3 filter=8 channel=44
					0, 8, 8, 4, 12, -11, 10, 13, 6,
					-- layer=3 filter=8 channel=45
					-12, -13, 3, 2, 2, -8, 10, 5, -5,
					-- layer=3 filter=8 channel=46
					0, -3, 1, 0, -7, -22, 5, -6, -16,
					-- layer=3 filter=8 channel=47
					4, -15, -21, -15, -15, -11, 2, -11, -2,
					-- layer=3 filter=8 channel=48
					-5, -4, -6, -12, -20, 7, -4, 7, -14,
					-- layer=3 filter=8 channel=49
					-17, 3, 3, 5, -11, -22, 4, -6, 4,
					-- layer=3 filter=8 channel=50
					5, -6, -1, -1, 0, -9, -1, -21, 4,
					-- layer=3 filter=8 channel=51
					-12, 6, -5, -16, -5, -2, -3, 4, -2,
					-- layer=3 filter=8 channel=52
					-13, 0, 1, 13, -9, -11, 14, 9, 1,
					-- layer=3 filter=8 channel=53
					-2, 3, 4, 0, 0, -19, -15, 4, -10,
					-- layer=3 filter=8 channel=54
					1, -7, -11, 4, -1, 4, -12, 2, -9,
					-- layer=3 filter=8 channel=55
					-7, -15, 5, -9, 8, 6, -12, -14, 4,
					-- layer=3 filter=8 channel=56
					9, -10, -2, 2, 8, -9, -7, 3, 0,
					-- layer=3 filter=8 channel=57
					-4, -13, -16, -11, 0, 13, -12, -23, -6,
					-- layer=3 filter=8 channel=58
					-8, -16, -21, -3, 9, 5, -6, -1, -8,
					-- layer=3 filter=8 channel=59
					-9, 7, -10, -6, -11, -20, -3, -13, -1,
					-- layer=3 filter=8 channel=60
					-11, -4, 0, -6, -12, 0, -8, -1, -6,
					-- layer=3 filter=8 channel=61
					6, -8, -8, 2, -10, 14, -1, -10, -3,
					-- layer=3 filter=8 channel=62
					0, -1, 1, -15, 5, -4, 2, -13, 0,
					-- layer=3 filter=8 channel=63
					-5, 10, -6, 0, -6, 3, 3, 4, 9,
					-- layer=3 filter=9 channel=0
					3, 5, 0, -8, -3, -4, -12, -14, -7,
					-- layer=3 filter=9 channel=1
					-18, -6, -7, -6, 11, -14, -3, -16, 7,
					-- layer=3 filter=9 channel=2
					-4, -5, -13, -21, 4, 12, -9, 6, -11,
					-- layer=3 filter=9 channel=3
					9, 2, 7, 5, -15, -6, -14, -11, 0,
					-- layer=3 filter=9 channel=4
					-25, -16, -4, -21, -17, -10, -10, -22, -3,
					-- layer=3 filter=9 channel=5
					-5, 13, -4, -13, -8, 1, 4, -3, 14,
					-- layer=3 filter=9 channel=6
					-8, 8, -10, 1, -11, -15, 3, 7, -21,
					-- layer=3 filter=9 channel=7
					-14, -1, 7, -13, -5, -4, -16, -12, 6,
					-- layer=3 filter=9 channel=8
					-14, 12, -17, -8, -11, -9, -4, -18, -9,
					-- layer=3 filter=9 channel=9
					-13, -22, 9, -10, -6, 5, -19, 7, -19,
					-- layer=3 filter=9 channel=10
					2, -15, -10, -1, 6, -18, 0, -13, 3,
					-- layer=3 filter=9 channel=11
					-19, 1, 0, 0, -3, -16, -12, -10, -11,
					-- layer=3 filter=9 channel=12
					-5, -5, 0, -18, 0, -14, -13, -11, -6,
					-- layer=3 filter=9 channel=13
					-10, 6, -3, -14, -7, -18, 5, -4, -14,
					-- layer=3 filter=9 channel=14
					-11, -12, 7, 11, 9, 0, 11, 2, 7,
					-- layer=3 filter=9 channel=15
					-4, 0, -17, -14, -2, -1, -2, 7, 6,
					-- layer=3 filter=9 channel=16
					6, -5, 3, -13, 5, -1, -7, 3, 12,
					-- layer=3 filter=9 channel=17
					-14, 2, -8, 4, -12, -5, -18, 3, -15,
					-- layer=3 filter=9 channel=18
					-8, 5, -12, -14, 6, -7, -21, -13, -16,
					-- layer=3 filter=9 channel=19
					4, 0, 2, -9, -11, 1, -3, 6, -11,
					-- layer=3 filter=9 channel=20
					-4, -21, -20, -16, 0, -15, -3, -9, 8,
					-- layer=3 filter=9 channel=21
					-2, -14, -20, -3, -11, 3, -20, -3, -2,
					-- layer=3 filter=9 channel=22
					-9, -3, -9, 8, -2, 7, 7, -10, 11,
					-- layer=3 filter=9 channel=23
					9, -12, -5, -9, -22, -2, -15, 0, -9,
					-- layer=3 filter=9 channel=24
					-23, 0, -3, 2, -23, -14, -14, 8, 2,
					-- layer=3 filter=9 channel=25
					2, -15, -9, -4, -16, 9, -7, -14, -5,
					-- layer=3 filter=9 channel=26
					12, 5, -4, -9, -11, 3, 2, -13, 4,
					-- layer=3 filter=9 channel=27
					7, -13, 9, -5, 11, -16, 0, 7, -1,
					-- layer=3 filter=9 channel=28
					-6, 7, -8, 11, 3, -8, -13, -2, -4,
					-- layer=3 filter=9 channel=29
					-16, 2, -14, -15, -7, -13, -14, -3, -10,
					-- layer=3 filter=9 channel=30
					-5, 10, -11, -12, -8, 0, -7, -13, -12,
					-- layer=3 filter=9 channel=31
					-5, -7, -6, -6, -10, 6, 4, 0, 12,
					-- layer=3 filter=9 channel=32
					-23, -13, -3, 0, -3, -2, -13, -11, 10,
					-- layer=3 filter=9 channel=33
					-9, 0, -5, -2, -13, -14, -11, -5, -15,
					-- layer=3 filter=9 channel=34
					-19, 3, 1, -5, 2, 2, 4, -21, 2,
					-- layer=3 filter=9 channel=35
					3, 3, -14, -4, -20, 4, -16, -23, -10,
					-- layer=3 filter=9 channel=36
					0, -3, 4, 3, -20, -22, -13, -27, -2,
					-- layer=3 filter=9 channel=37
					2, 8, 0, -3, -12, 0, -11, -14, -4,
					-- layer=3 filter=9 channel=38
					2, -13, -10, -18, -1, 4, -12, -16, 6,
					-- layer=3 filter=9 channel=39
					-12, -2, 0, 4, -1, -12, 1, 12, -13,
					-- layer=3 filter=9 channel=40
					-13, -10, 7, -14, 2, -14, -5, 5, -8,
					-- layer=3 filter=9 channel=41
					-17, -4, -2, 5, 10, -9, -22, -8, -14,
					-- layer=3 filter=9 channel=42
					-4, 11, 2, 1, -15, -4, -10, 5, 6,
					-- layer=3 filter=9 channel=43
					-19, -7, -2, 2, 6, -11, -24, -14, 4,
					-- layer=3 filter=9 channel=44
					-2, -12, 7, 13, 3, -6, 3, -1, -11,
					-- layer=3 filter=9 channel=45
					-9, 3, -18, 3, -6, -10, 0, 3, -4,
					-- layer=3 filter=9 channel=46
					4, 1, -7, 0, 2, -15, -13, -20, 4,
					-- layer=3 filter=9 channel=47
					-8, -6, -4, 0, -7, -10, -8, 5, 8,
					-- layer=3 filter=9 channel=48
					-3, -13, -12, -9, 6, -4, 5, 6, -17,
					-- layer=3 filter=9 channel=49
					-12, -8, -12, -2, 8, 7, 7, 3, -4,
					-- layer=3 filter=9 channel=50
					-9, 8, -3, -9, 1, 2, 4, -22, -11,
					-- layer=3 filter=9 channel=51
					-4, 0, 0, -6, -3, 1, -15, -12, 9,
					-- layer=3 filter=9 channel=52
					-13, -17, 5, -16, -17, 0, 4, 0, -6,
					-- layer=3 filter=9 channel=53
					-18, -14, 0, 4, -17, -5, -23, -5, -11,
					-- layer=3 filter=9 channel=54
					-5, 8, 6, 5, -11, 1, -5, -5, -9,
					-- layer=3 filter=9 channel=55
					-6, -6, -11, 9, 1, -13, 3, -6, 11,
					-- layer=3 filter=9 channel=56
					-14, -12, -22, -13, -8, 6, -10, 4, 2,
					-- layer=3 filter=9 channel=57
					-15, -2, 2, 0, -19, -14, -3, -10, 3,
					-- layer=3 filter=9 channel=58
					4, 3, -3, 8, 9, -18, 0, -5, -18,
					-- layer=3 filter=9 channel=59
					-19, -16, -3, -9, -2, 7, -6, -15, -7,
					-- layer=3 filter=9 channel=60
					-6, 1, -6, -5, -12, 4, 0, -10, -5,
					-- layer=3 filter=9 channel=61
					-11, -3, -7, -18, -21, -16, -19, -6, -20,
					-- layer=3 filter=9 channel=62
					-9, -19, -18, 0, -9, 7, -1, 13, -16,
					-- layer=3 filter=9 channel=63
					0, 11, -2, 1, -5, -6, 12, -1, 9,
					-- layer=3 filter=10 channel=0
					-14, -30, -24, 16, -5, 8, 17, -12, 35,
					-- layer=3 filter=10 channel=1
					-50, -27, 15, 19, -13, 17, -16, 39, -6,
					-- layer=3 filter=10 channel=2
					-14, -8, 13, 34, -8, -7, 39, -10, 13,
					-- layer=3 filter=10 channel=3
					-44, -36, -47, 1, 55, 10, -6, 0, -31,
					-- layer=3 filter=10 channel=4
					-13, -33, 27, -13, -5, 19, -27, -52, 6,
					-- layer=3 filter=10 channel=5
					-29, -6, -12, 7, 8, -15, 6, -15, -6,
					-- layer=3 filter=10 channel=6
					-15, 0, -13, 35, 1, 0, -3, -52, -10,
					-- layer=3 filter=10 channel=7
					-16, -30, -33, -37, 7, 42, -28, 9, 15,
					-- layer=3 filter=10 channel=8
					-40, -10, -36, -5, 13, -23, -3, -15, 2,
					-- layer=3 filter=10 channel=9
					-15, 47, 11, -24, 22, 2, -22, 10, 16,
					-- layer=3 filter=10 channel=10
					-68, -12, -12, -30, -3, -23, 26, 38, -41,
					-- layer=3 filter=10 channel=11
					19, 21, -9, 8, -16, 2, 39, -13, 18,
					-- layer=3 filter=10 channel=12
					21, -36, -58, 9, 20, 5, 17, 18, 13,
					-- layer=3 filter=10 channel=13
					22, -1, -12, -13, -3, 20, 11, -40, -3,
					-- layer=3 filter=10 channel=14
					3, -11, -29, 4, -27, -42, 9, 29, -31,
					-- layer=3 filter=10 channel=15
					12, -9, -18, 35, 14, 26, -8, 17, -32,
					-- layer=3 filter=10 channel=16
					-1, 16, 16, 19, -31, -12, 7, -20, 7,
					-- layer=3 filter=10 channel=17
					28, -24, -1, 15, -26, -17, -40, -65, 2,
					-- layer=3 filter=10 channel=18
					-2, 1, 14, -33, -9, -31, -15, -8, -3,
					-- layer=3 filter=10 channel=19
					15, -10, 12, 16, 10, -39, 6, -48, -30,
					-- layer=3 filter=10 channel=20
					-14, -15, 21, 13, 19, -24, 23, 29, -32,
					-- layer=3 filter=10 channel=21
					0, 25, 28, -8, -13, 39, -17, 14, 42,
					-- layer=3 filter=10 channel=22
					-2, 14, 13, 1, -5, 7, 0, -2, -5,
					-- layer=3 filter=10 channel=23
					19, 47, -6, 16, 13, 0, -11, 4, 31,
					-- layer=3 filter=10 channel=24
					-6, -49, -13, -26, -51, -27, 10, -44, 42,
					-- layer=3 filter=10 channel=25
					56, -1, -1, 39, -3, -19, 17, -20, -23,
					-- layer=3 filter=10 channel=26
					0, 14, 6, 0, 12, 3, -6, 5, 10,
					-- layer=3 filter=10 channel=27
					12, -16, 12, 12, -21, -10, 2, -14, 9,
					-- layer=3 filter=10 channel=28
					-11, 6, -1, 2, -6, 0, -2, -6, 5,
					-- layer=3 filter=10 channel=29
					-34, -24, 39, -22, 41, 50, -34, 29, -8,
					-- layer=3 filter=10 channel=30
					10, 19, 0, -1, -6, 4, 1, -6, -12,
					-- layer=3 filter=10 channel=31
					-9, 23, 1, 22, 39, 35, 32, 36, -13,
					-- layer=3 filter=10 channel=32
					-22, 31, 19, 6, -9, 2, 54, 6, -25,
					-- layer=3 filter=10 channel=33
					0, 4, 10, 2, 5, 7, 39, -44, 0,
					-- layer=3 filter=10 channel=34
					34, -20, 13, 1, 2, 5, -28, -4, -57,
					-- layer=3 filter=10 channel=35
					33, 0, 9, 12, -43, -5, 2, -24, -17,
					-- layer=3 filter=10 channel=36
					-14, 3, -7, 3, -28, -6, 45, -32, 12,
					-- layer=3 filter=10 channel=37
					9, 8, 70, 28, 3, 32, 29, 7, -34,
					-- layer=3 filter=10 channel=38
					14, 37, 59, -1, 15, 42, -8, 29, 20,
					-- layer=3 filter=10 channel=39
					0, 2, -4, 11, -13, -12, -6, 13, 8,
					-- layer=3 filter=10 channel=40
					25, 20, 27, 13, -23, -27, -6, 20, -14,
					-- layer=3 filter=10 channel=41
					-17, -5, -23, -45, -9, -20, 8, -12, 8,
					-- layer=3 filter=10 channel=42
					-2, -15, -11, 30, -6, -2, 19, -44, -30,
					-- layer=3 filter=10 channel=43
					22, 33, 27, -15, 14, -16, 8, 35, -5,
					-- layer=3 filter=10 channel=44
					8, 4, -11, -3, 6, 14, 1, -13, -9,
					-- layer=3 filter=10 channel=45
					10, 14, 9, 6, 12, -28, -15, -22, -22,
					-- layer=3 filter=10 channel=46
					-15, -12, -23, 50, -4, 31, -14, 0, -4,
					-- layer=3 filter=10 channel=47
					0, 35, -8, 13, -16, -22, 0, 10, 12,
					-- layer=3 filter=10 channel=48
					-30, 8, 3, 20, -36, -21, 17, -15, -15,
					-- layer=3 filter=10 channel=49
					-1, -14, 32, -16, -1, 2, -1, -5, 11,
					-- layer=3 filter=10 channel=50
					17, 4, 17, 3, 20, 0, -26, 32, 0,
					-- layer=3 filter=10 channel=51
					-9, 18, 21, -17, 45, 20, -10, -21, -41,
					-- layer=3 filter=10 channel=52
					-11, -58, -31, -29, -58, 0, -6, -69, 19,
					-- layer=3 filter=10 channel=53
					8, 46, 0, -15, -54, 18, -5, -8, 17,
					-- layer=3 filter=10 channel=54
					27, 17, -6, 16, -16, 19, -45, -64, -39,
					-- layer=3 filter=10 channel=55
					-37, 20, -51, 27, 9, -13, 46, 10, -7,
					-- layer=3 filter=10 channel=56
					-27, 6, 12, -19, 4, 21, 12, 60, 37,
					-- layer=3 filter=10 channel=57
					3, -9, 15, -6, -68, -8, 23, -6, 21,
					-- layer=3 filter=10 channel=58
					-1, 59, 28, -46, 19, -33, -13, 29, 12,
					-- layer=3 filter=10 channel=59
					-5, 22, -16, 12, -23, 15, -35, 1, -11,
					-- layer=3 filter=10 channel=60
					33, -13, 30, 8, 13, 19, 13, 16, -8,
					-- layer=3 filter=10 channel=61
					36, 20, -1, -17, -16, 0, 10, 11, -6,
					-- layer=3 filter=10 channel=62
					-8, 6, -1, -43, -16, -14, 5, 40, -10,
					-- layer=3 filter=10 channel=63
					-4, -11, -2, 20, 10, -19, 14, 0, -9,
					-- layer=3 filter=11 channel=0
					4, -27, 4, 17, -14, -20, -23, -82, -36,
					-- layer=3 filter=11 channel=1
					-27, 24, 4, -51, -68, -16, -52, -17, -29,
					-- layer=3 filter=11 channel=2
					-18, 25, 25, -2, 23, -65, 10, -8, -50,
					-- layer=3 filter=11 channel=3
					8, -46, 20, 13, 22, 5, 25, -7, 26,
					-- layer=3 filter=11 channel=4
					-18, -30, -19, -42, -59, -4, -30, -23, 26,
					-- layer=3 filter=11 channel=5
					6, -9, 3, 6, -2, 3, 11, 11, 7,
					-- layer=3 filter=11 channel=6
					-29, -39, 39, 3, 35, -5, 24, -14, 33,
					-- layer=3 filter=11 channel=7
					24, -18, -17, 27, -88, -66, 49, 14, -11,
					-- layer=3 filter=11 channel=8
					57, 22, 26, 19, -3, -60, -5, -39, -6,
					-- layer=3 filter=11 channel=9
					29, 22, 4, -3, 12, -2, -21, -26, 8,
					-- layer=3 filter=11 channel=10
					1, 33, 1, -2, 3, 19, 10, 18, 17,
					-- layer=3 filter=11 channel=11
					-81, 17, 8, -2, 14, 27, -18, 0, 25,
					-- layer=3 filter=11 channel=12
					-53, -26, -47, -3, -44, -37, -21, -16, 21,
					-- layer=3 filter=11 channel=13
					32, 48, 25, 12, -22, -5, 8, -58, -42,
					-- layer=3 filter=11 channel=14
					28, 1, 55, 6, -4, -21, 50, -3, -13,
					-- layer=3 filter=11 channel=15
					-25, 11, -10, -73, -76, -58, -24, -47, -98,
					-- layer=3 filter=11 channel=16
					-5, 75, 13, -3, -45, -93, -49, -94, -67,
					-- layer=3 filter=11 channel=17
					-6, -57, 38, -16, -38, 9, -37, -52, 17,
					-- layer=3 filter=11 channel=18
					-6, 39, -16, 6, 18, 70, 14, 0, 8,
					-- layer=3 filter=11 channel=19
					50, -27, 32, -27, -59, -8, 13, -64, 5,
					-- layer=3 filter=11 channel=20
					3, -5, -76, -1, 5, 36, 12, 13, -12,
					-- layer=3 filter=11 channel=21
					-27, -28, -19, 12, 2, 24, 14, 56, 31,
					-- layer=3 filter=11 channel=22
					14, 7, -2, 12, 11, 10, -10, 12, 9,
					-- layer=3 filter=11 channel=23
					77, 56, 17, 64, 45, -31, 25, 24, -11,
					-- layer=3 filter=11 channel=24
					-22, -23, -12, -21, -9, 36, 3, -90, -12,
					-- layer=3 filter=11 channel=25
					-33, -38, -42, 23, -14, -9, 15, -34, -10,
					-- layer=3 filter=11 channel=26
					-7, 14, 7, 1, 2, 13, -8, -7, 10,
					-- layer=3 filter=11 channel=27
					22, 23, 50, 65, -46, -40, 39, -47, -34,
					-- layer=3 filter=11 channel=28
					1, 6, 10, -6, 8, 8, 11, -12, 14,
					-- layer=3 filter=11 channel=29
					-58, 3, 15, 23, 109, 30, -6, 36, 48,
					-- layer=3 filter=11 channel=30
					-14, 3, 5, 1, 12, -14, -4, 1, 0,
					-- layer=3 filter=11 channel=31
					-30, 23, 18, -20, 31, 14, 25, 67, 39,
					-- layer=3 filter=11 channel=32
					41, 24, 12, -16, 7, -1, -7, -28, -76,
					-- layer=3 filter=11 channel=33
					-49, 13, 49, -27, -34, 20, -39, 10, 30,
					-- layer=3 filter=11 channel=34
					16, 23, -2, 39, 7, 29, 22, -14, 7,
					-- layer=3 filter=11 channel=35
					21, -29, -12, 20, -40, 10, 12, -26, -3,
					-- layer=3 filter=11 channel=36
					-46, -25, -27, -34, -54, 15, -14, -47, -8,
					-- layer=3 filter=11 channel=37
					-48, -2, 57, -40, -9, 45, -48, 7, -20,
					-- layer=3 filter=11 channel=38
					-30, 42, 8, -4, 19, 24, -30, -32, 0,
					-- layer=3 filter=11 channel=39
					-13, 6, -8, -8, -7, 14, -8, 12, -14,
					-- layer=3 filter=11 channel=40
					32, 18, 35, 20, 5, 7, -8, 11, -3,
					-- layer=3 filter=11 channel=41
					0, -18, -35, 32, -26, -69, 46, 6, -12,
					-- layer=3 filter=11 channel=42
					7, -20, -9, 31, -4, -18, 27, -29, -19,
					-- layer=3 filter=11 channel=43
					-42, -58, -23, 8, 47, 3, 29, 39, 26,
					-- layer=3 filter=11 channel=44
					1, 6, -12, 11, -1, 4, -2, -6, 9,
					-- layer=3 filter=11 channel=45
					4, 25, 32, 14, 10, 0, -13, 0, -50,
					-- layer=3 filter=11 channel=46
					2, 26, 30, 18, -13, 23, 0, -52, 13,
					-- layer=3 filter=11 channel=47
					3, -3, -37, -33, -24, -46, -38, -31, -33,
					-- layer=3 filter=11 channel=48
					19, -4, -20, 10, -30, -1, 15, -25, -19,
					-- layer=3 filter=11 channel=49
					-39, 9, -6, -17, -13, -14, 21, 24, 28,
					-- layer=3 filter=11 channel=50
					-64, -37, 49, 9, 27, 41, 2, 0, 16,
					-- layer=3 filter=11 channel=51
					11, -51, -4, 2, -42, -32, 26, -13, -1,
					-- layer=3 filter=11 channel=52
					-42, 20, -31, -8, -50, 27, -20, -28, -23,
					-- layer=3 filter=11 channel=53
					-19, 42, 49, 11, 4, 6, 10, -25, 34,
					-- layer=3 filter=11 channel=54
					-12, -31, -61, 4, -73, -19, 13, -38, -9,
					-- layer=3 filter=11 channel=55
					14, 15, -12, 24, -10, 4, -6, 58, 30,
					-- layer=3 filter=11 channel=56
					-9, -22, 8, -10, -57, 46, 6, -31, -46,
					-- layer=3 filter=11 channel=57
					-50, -11, 74, -24, -10, 48, -5, -34, 19,
					-- layer=3 filter=11 channel=58
					20, -30, 13, 15, -30, -36, 27, 29, 2,
					-- layer=3 filter=11 channel=59
					54, 50, 14, 3, -4, -6, 8, -86, -67,
					-- layer=3 filter=11 channel=60
					-14, -41, -24, 45, -11, -22, -1, -11, -11,
					-- layer=3 filter=11 channel=61
					30, 14, 10, 19, 0, -8, -10, 16, 27,
					-- layer=3 filter=11 channel=62
					-25, -14, -19, -60, -59, -54, -47, -17, -17,
					-- layer=3 filter=11 channel=63
					11, -13, 12, 1, 5, 5, -12, -1, -8,
					-- layer=3 filter=12 channel=0
					-7, 3, 26, 2, 15, 15, 32, 20, 0,
					-- layer=3 filter=12 channel=1
					-47, 0, -45, -16, -22, -8, 8, 0, 5,
					-- layer=3 filter=12 channel=2
					-13, 18, -3, 21, -30, -35, 65, 32, 27,
					-- layer=3 filter=12 channel=3
					-43, -44, -26, 2, 93, 8, -20, 38, -10,
					-- layer=3 filter=12 channel=4
					-4, -1, -12, -8, 0, 3, 40, 73, 17,
					-- layer=3 filter=12 channel=5
					5, 5, -7, -13, -13, 15, 4, -1, 0,
					-- layer=3 filter=12 channel=6
					4, 20, 43, 14, 35, 3, -22, 11, -8,
					-- layer=3 filter=12 channel=7
					-65, 2, -49, -13, 35, -5, -20, 28, -17,
					-- layer=3 filter=12 channel=8
					15, 15, -3, -50, 0, -23, -15, -13, 7,
					-- layer=3 filter=12 channel=9
					-13, -19, -12, -1, 11, 22, -46, -54, -15,
					-- layer=3 filter=12 channel=10
					-29, -42, -45, 31, -6, -9, 2, -19, -12,
					-- layer=3 filter=12 channel=11
					48, 23, 4, -11, 0, 5, 16, 12, 23,
					-- layer=3 filter=12 channel=12
					40, 26, 6, -16, -17, 0, 30, -28, 6,
					-- layer=3 filter=12 channel=13
					-22, -30, -39, 13, -28, 14, 41, 3, -5,
					-- layer=3 filter=12 channel=14
					-1, 31, 21, -7, -26, -38, 14, -55, -21,
					-- layer=3 filter=12 channel=15
					-29, -17, -12, 5, -2, 1, 22, 6, -12,
					-- layer=3 filter=12 channel=16
					-52, 45, 48, -4, -49, -89, -3, -4, -68,
					-- layer=3 filter=12 channel=17
					-11, 0, -24, -13, -29, 2, 0, -4, 27,
					-- layer=3 filter=12 channel=18
					-12, 10, -55, 5, 17, 12, 31, 21, -13,
					-- layer=3 filter=12 channel=19
					-38, -11, 30, 25, -18, -50, -2, 13, 0,
					-- layer=3 filter=12 channel=20
					17, 46, 11, 3, -8, 7, 68, 21, 41,
					-- layer=3 filter=12 channel=21
					-10, -10, -30, -4, -4, -5, -3, 24, 44,
					-- layer=3 filter=12 channel=22
					12, 14, 15, 0, 2, 4, 3, 12, 8,
					-- layer=3 filter=12 channel=23
					55, 42, 23, 18, 20, 14, 1, 27, -55,
					-- layer=3 filter=12 channel=24
					-3, 24, 34, -1, 28, -4, 30, 21, 10,
					-- layer=3 filter=12 channel=25
					32, -13, 0, 11, 27, 25, 13, -2, 13,
					-- layer=3 filter=12 channel=26
					-2, -12, 3, 2, -11, 7, 6, -15, 3,
					-- layer=3 filter=12 channel=27
					34, 22, 17, -15, -47, 12, 40, 20, 25,
					-- layer=3 filter=12 channel=28
					0, -3, -10, -9, -8, -12, 1, -9, 1,
					-- layer=3 filter=12 channel=29
					-61, -32, -15, -12, 27, -56, -34, 57, -7,
					-- layer=3 filter=12 channel=30
					2, 0, -11, -8, -2, -12, 0, 0, 7,
					-- layer=3 filter=12 channel=31
					0, 24, 27, -50, -21, -17, -64, -31, -48,
					-- layer=3 filter=12 channel=32
					49, -11, 23, 14, 6, -3, -99, -53, -29,
					-- layer=3 filter=12 channel=33
					14, -15, 13, 22, -38, 0, 57, 37, 9,
					-- layer=3 filter=12 channel=34
					28, 12, -3, 41, -10, 12, 5, -30, -42,
					-- layer=3 filter=12 channel=35
					45, 22, 13, 26, 10, -31, 24, 31, 26,
					-- layer=3 filter=12 channel=36
					2, 32, 3, 20, 10, -27, 17, -36, 2,
					-- layer=3 filter=12 channel=37
					27, 24, -8, -23, 0, -27, -2, -15, -24,
					-- layer=3 filter=12 channel=38
					-39, 23, -41, 5, -17, 1, -28, -14, -32,
					-- layer=3 filter=12 channel=39
					-8, 4, 4, 3, -9, 9, -2, 9, -13,
					-- layer=3 filter=12 channel=40
					17, 28, 2, 12, 1, -10, 32, 2, 19,
					-- layer=3 filter=12 channel=41
					-53, 8, -13, -19, 41, 9, -37, 2, -20,
					-- layer=3 filter=12 channel=42
					15, -26, 12, 22, 31, 0, 13, 32, -6,
					-- layer=3 filter=12 channel=43
					-52, -13, -70, -18, 18, -53, -36, 0, -22,
					-- layer=3 filter=12 channel=44
					-12, -6, -10, -2, -14, 12, -11, 1, 9,
					-- layer=3 filter=12 channel=45
					-27, -2, 0, -2, -34, 9, 22, -28, 35,
					-- layer=3 filter=12 channel=46
					-27, -26, -22, 11, -11, 17, -24, -55, -60,
					-- layer=3 filter=12 channel=47
					-20, 9, -2, 0, -39, 24, 35, 51, 52,
					-- layer=3 filter=12 channel=48
					-38, 2, -16, -6, 11, -26, 16, 0, -56,
					-- layer=3 filter=12 channel=49
					81, 28, 13, 52, 13, -6, -29, 2, 0,
					-- layer=3 filter=12 channel=50
					0, 2, 24, 9, 30, 18, 0, -5, -5,
					-- layer=3 filter=12 channel=51
					-12, -30, -38, -15, -13, 7, -32, 13, 19,
					-- layer=3 filter=12 channel=52
					-2, -19, -11, 22, -1, -21, 10, 5, 34,
					-- layer=3 filter=12 channel=53
					-58, 1, 60, -58, -25, -16, 31, 13, 18,
					-- layer=3 filter=12 channel=54
					-1, 31, -38, -26, 5, -58, -50, 8, -25,
					-- layer=3 filter=12 channel=55
					-17, -6, -37, 25, 0, -10, 22, -41, 35,
					-- layer=3 filter=12 channel=56
					-39, -27, -9, -15, 1, 7, 3, 8, -8,
					-- layer=3 filter=12 channel=57
					19, 41, 78, 46, 18, 49, 30, -21, -22,
					-- layer=3 filter=12 channel=58
					17, -21, -36, -24, -31, -56, 6, 20, -14,
					-- layer=3 filter=12 channel=59
					-28, -32, 8, -59, -16, -38, -73, -96, -149,
					-- layer=3 filter=12 channel=60
					11, -20, -22, 5, 18, 5, 55, 28, 22,
					-- layer=3 filter=12 channel=61
					15, -2, 23, -10, -36, 49, 33, -23, 3,
					-- layer=3 filter=12 channel=62
					11, 0, -4, -4, 2, 5, -42, -26, 0,
					-- layer=3 filter=12 channel=63
					26, 17, -4, 13, 19, 14, 8, -19, 7,
					-- layer=3 filter=13 channel=0
					25, 16, 47, -15, -10, -4, 14, 12, -55,
					-- layer=3 filter=13 channel=1
					-43, 1, 6, 19, -13, -7, -24, -46, 8,
					-- layer=3 filter=13 channel=2
					-7, 5, 16, 2, -35, -26, 0, -16, -9,
					-- layer=3 filter=13 channel=3
					-23, 0, -30, 4, 18, 20, 31, -9, 27,
					-- layer=3 filter=13 channel=4
					-21, -46, -18, -9, 27, 1, 6, 49, 8,
					-- layer=3 filter=13 channel=5
					21, -13, 2, 3, -11, -5, 2, 22, 7,
					-- layer=3 filter=13 channel=6
					-12, 28, -9, 12, -3, -8, -9, -46, 2,
					-- layer=3 filter=13 channel=7
					-37, -2, -31, -56, 30, 6, -4, -14, -2,
					-- layer=3 filter=13 channel=8
					-11, -35, -19, -17, 50, 30, 18, -73, -14,
					-- layer=3 filter=13 channel=9
					-13, -24, 8, 10, 36, -12, -84, -84, -17,
					-- layer=3 filter=13 channel=10
					-16, -27, -11, 0, -10, -27, -8, 0, -29,
					-- layer=3 filter=13 channel=11
					21, 7, -18, -54, 10, -35, -58, 46, 26,
					-- layer=3 filter=13 channel=12
					8, -13, -19, 5, 39, 13, -46, -69, -35,
					-- layer=3 filter=13 channel=13
					-6, 35, -21, -30, -47, -19, -22, -47, -16,
					-- layer=3 filter=13 channel=14
					-15, -7, -28, 16, 21, 12, -16, -37, -10,
					-- layer=3 filter=13 channel=15
					-1, -16, -55, 40, 35, -18, -50, -35, 11,
					-- layer=3 filter=13 channel=16
					50, -16, -14, 54, -28, -95, 4, 16, 33,
					-- layer=3 filter=13 channel=17
					-6, 7, 24, -1, -56, -17, 34, 28, 28,
					-- layer=3 filter=13 channel=18
					2, 3, 17, -17, -29, -40, 3, 89, -30,
					-- layer=3 filter=13 channel=19
					7, 9, 30, -12, -13, -5, 5, 32, 6,
					-- layer=3 filter=13 channel=20
					20, 22, 6, 51, -16, -4, 4, 8, 15,
					-- layer=3 filter=13 channel=21
					-32, 5, -24, -41, -8, -15, -27, 12, 56,
					-- layer=3 filter=13 channel=22
					-10, -5, 2, 3, -3, -11, 14, 2, 7,
					-- layer=3 filter=13 channel=23
					1, 27, 17, 2, -13, 15, -7, 14, -9,
					-- layer=3 filter=13 channel=24
					13, 21, 48, -45, -51, -44, 1, 1, 27,
					-- layer=3 filter=13 channel=25
					38, -12, -9, -7, -52, -23, -11, -9, 12,
					-- layer=3 filter=13 channel=26
					-3, -9, -9, -9, -6, -2, -13, -1, 6,
					-- layer=3 filter=13 channel=27
					48, 42, 37, -12, 9, -7, -5, -56, -11,
					-- layer=3 filter=13 channel=28
					3, -3, -8, 10, -4, 9, -10, 0, -5,
					-- layer=3 filter=13 channel=29
					-18, 20, 29, 6, 6, -35, 1, 57, -30,
					-- layer=3 filter=13 channel=30
					-1, 2, -12, 3, -13, -18, 8, -8, -15,
					-- layer=3 filter=13 channel=31
					10, 18, -14, 47, -14, 16, -41, -8, -55,
					-- layer=3 filter=13 channel=32
					-19, -5, 19, -7, 4, -20, 22, -4, 14,
					-- layer=3 filter=13 channel=33
					-20, -31, -16, 30, 12, -10, 40, -12, 33,
					-- layer=3 filter=13 channel=34
					46, 12, -13, -24, -28, 8, -15, 1, -56,
					-- layer=3 filter=13 channel=35
					-4, 22, 0, -54, -60, -48, 10, 23, 13,
					-- layer=3 filter=13 channel=36
					1, 36, -15, 16, -38, -47, -31, -50, 10,
					-- layer=3 filter=13 channel=37
					33, 11, -4, 13, -18, -50, 36, -38, -28,
					-- layer=3 filter=13 channel=38
					23, -16, 43, 29, -32, -8, 37, 41, 32,
					-- layer=3 filter=13 channel=39
					-13, 15, 3, 7, 1, 5, 1, 4, -13,
					-- layer=3 filter=13 channel=40
					-25, -5, -19, 20, -30, 19, 22, 65, 1,
					-- layer=3 filter=13 channel=41
					-11, 31, -38, -12, -36, -29, 80, 67, 36,
					-- layer=3 filter=13 channel=42
					5, 57, 5, -6, -74, -49, 40, -3, -7,
					-- layer=3 filter=13 channel=43
					6, 30, 0, -2, 25, 32, 52, 20, 32,
					-- layer=3 filter=13 channel=44
					10, -12, 7, -3, 4, 4, -4, 14, -9,
					-- layer=3 filter=13 channel=45
					-2, 14, 15, -24, -7, 15, -24, -48, -18,
					-- layer=3 filter=13 channel=46
					-15, -18, 7, 5, -38, -17, 9, 28, -10,
					-- layer=3 filter=13 channel=47
					-26, 42, -9, 36, 0, 13, 48, -14, 46,
					-- layer=3 filter=13 channel=48
					-16, 11, 3, 16, -23, 4, 20, 29, 35,
					-- layer=3 filter=13 channel=49
					23, -18, -25, -8, 13, -54, -6, 75, -7,
					-- layer=3 filter=13 channel=50
					17, 45, -18, 0, -18, -18, 9, 6, 41,
					-- layer=3 filter=13 channel=51
					-57, -59, 2, 25, 20, 14, 16, -42, 6,
					-- layer=3 filter=13 channel=52
					-3, -13, 0, -21, -35, 6, -23, -22, -36,
					-- layer=3 filter=13 channel=53
					-71, -2, 4, -34, -28, 34, -11, 22, 34,
					-- layer=3 filter=13 channel=54
					-1, 7, -33, -18, -5, 42, 51, 2, 34,
					-- layer=3 filter=13 channel=55
					-27, 10, -32, 52, 21, -7, 49, -15, 0,
					-- layer=3 filter=13 channel=56
					14, 21, 34, -12, 16, -15, 9, -8, 40,
					-- layer=3 filter=13 channel=57
					-5, -41, 5, 15, -42, -20, 18, 36, -5,
					-- layer=3 filter=13 channel=58
					-39, -36, -10, -11, 34, 17, 30, 13, 15,
					-- layer=3 filter=13 channel=59
					2, -46, 11, -48, 0, -5, -33, 12, 9,
					-- layer=3 filter=13 channel=60
					34, 17, 13, -26, -12, 7, 15, -2, -11,
					-- layer=3 filter=13 channel=61
					6, -1, 23, -20, -45, -9, 12, 16, 30,
					-- layer=3 filter=13 channel=62
					-28, -64, -35, 26, 45, 28, -18, -51, -5,
					-- layer=3 filter=13 channel=63
					0, 15, -5, -14, -11, -7, 2, -10, -6,
					-- layer=3 filter=14 channel=0
					3, 50, -3, -9, 32, -23, -17, 25, 18,
					-- layer=3 filter=14 channel=1
					-3, 20, 6, -16, -13, -48, -47, -41, -48,
					-- layer=3 filter=14 channel=2
					4, 0, 3, 7, 42, 52, 25, -11, 23,
					-- layer=3 filter=14 channel=3
					3, -18, 7, -6, -50, -42, -33, -31, -56,
					-- layer=3 filter=14 channel=4
					10, 33, -7, 41, 45, 29, 24, -17, 31,
					-- layer=3 filter=14 channel=5
					-10, -1, 0, 9, -20, -15, -17, -8, -7,
					-- layer=3 filter=14 channel=6
					49, 2, 36, -15, -17, 30, -13, 5, 16,
					-- layer=3 filter=14 channel=7
					5, 0, 14, 25, 3, -10, -16, -32, 1,
					-- layer=3 filter=14 channel=8
					16, 31, 14, -3, -10, -6, 17, 12, -36,
					-- layer=3 filter=14 channel=9
					13, -21, -29, -31, -29, -18, -59, -11, 1,
					-- layer=3 filter=14 channel=10
					6, 29, 30, 15, 21, 9, -7, -20, -43,
					-- layer=3 filter=14 channel=11
					36, -6, 3, 47, 18, 15, 5, -26, 0,
					-- layer=3 filter=14 channel=12
					6, 33, 22, 8, -38, -3, -26, 11, -3,
					-- layer=3 filter=14 channel=13
					-14, -15, 1, -8, 12, 25, 3, -10, -2,
					-- layer=3 filter=14 channel=14
					-28, -12, 13, -73, -65, -27, -25, -18, -61,
					-- layer=3 filter=14 channel=15
					14, 3, 45, 7, 31, 23, 9, -17, 21,
					-- layer=3 filter=14 channel=16
					33, 54, 44, -34, 0, 10, -13, -18, -22,
					-- layer=3 filter=14 channel=17
					-6, -26, -5, 11, 66, 8, 13, 31, 7,
					-- layer=3 filter=14 channel=18
					4, 14, 29, 1, -1, 18, 21, 13, 34,
					-- layer=3 filter=14 channel=19
					13, -6, 2, -14, -10, -11, 16, 15, 20,
					-- layer=3 filter=14 channel=20
					-8, -7, 7, -7, -23, 32, 28, -28, -40,
					-- layer=3 filter=14 channel=21
					68, 27, -14, 23, 18, -11, 8, 32, 9,
					-- layer=3 filter=14 channel=22
					10, 4, -8, -15, -1, -8, -13, 12, -4,
					-- layer=3 filter=14 channel=23
					28, -23, -12, 4, -17, -5, 14, 0, -21,
					-- layer=3 filter=14 channel=24
					3, 5, -22, 24, 31, -9, 17, 3, 20,
					-- layer=3 filter=14 channel=25
					-23, 33, -11, 20, 40, 31, 15, 15, 7,
					-- layer=3 filter=14 channel=26
					-11, -9, -10, -2, -13, -10, -6, 0, -5,
					-- layer=3 filter=14 channel=27
					-51, -81, -40, 6, 8, -7, -10, -42, -3,
					-- layer=3 filter=14 channel=28
					-11, -16, -14, 11, 6, 0, 9, 5, -15,
					-- layer=3 filter=14 channel=29
					-12, -20, -33, 4, -3, 44, 7, -24, 19,
					-- layer=3 filter=14 channel=30
					-11, -15, 5, -7, -5, 14, 13, 16, -1,
					-- layer=3 filter=14 channel=31
					17, -10, 10, -10, 12, 21, 7, 18, 53,
					-- layer=3 filter=14 channel=32
					4, 7, -5, -36, 1, -9, 18, -17, -12,
					-- layer=3 filter=14 channel=33
					12, 9, 25, -22, -2, -4, -3, -46, -4,
					-- layer=3 filter=14 channel=34
					-25, 20, 18, 8, 40, 26, -20, 20, -28,
					-- layer=3 filter=14 channel=35
					-3, 6, -12, 21, 48, 56, 28, 30, 28,
					-- layer=3 filter=14 channel=36
					2, -18, 23, -6, -9, 30, -35, -8, -6,
					-- layer=3 filter=14 channel=37
					-23, 27, -26, -34, 34, 20, -38, 6, 13,
					-- layer=3 filter=14 channel=38
					7, 18, 7, 4, 52, 21, 15, 37, 14,
					-- layer=3 filter=14 channel=39
					2, -11, 0, 6, -13, 7, -12, -1, -15,
					-- layer=3 filter=14 channel=40
					-4, 9, -7, -14, 2, 32, 17, 23, 22,
					-- layer=3 filter=14 channel=41
					-11, -40, 27, 12, 3, 2, 27, 4, 15,
					-- layer=3 filter=14 channel=42
					-10, -29, -22, 25, 30, 18, 5, -21, 24,
					-- layer=3 filter=14 channel=43
					9, -38, 10, 16, -35, 34, 54, 6, -6,
					-- layer=3 filter=14 channel=44
					6, 6, 14, 14, 6, -7, -2, 10, 6,
					-- layer=3 filter=14 channel=45
					7, -13, -22, -46, 2, -56, -14, 13, -38,
					-- layer=3 filter=14 channel=46
					39, 43, 23, -22, 9, -12, 3, 28, 9,
					-- layer=3 filter=14 channel=47
					30, 3, 10, 12, -29, 8, -32, -27, -28,
					-- layer=3 filter=14 channel=48
					30, -8, 9, -10, 3, -40, 5, 14, 31,
					-- layer=3 filter=14 channel=49
					-15, 4, 26, -19, 11, 0, 19, -20, 23,
					-- layer=3 filter=14 channel=50
					32, -5, -19, 0, -28, 14, 36, 9, 32,
					-- layer=3 filter=14 channel=51
					13, 34, 20, -20, -2, 0, -38, 7, -3,
					-- layer=3 filter=14 channel=52
					3, 12, -16, 16, 33, 0, 52, 19, -8,
					-- layer=3 filter=14 channel=53
					72, 5, -23, 76, -26, -2, -30, -9, 33,
					-- layer=3 filter=14 channel=54
					-16, 41, 19, -7, 12, -18, -3, -2, 0,
					-- layer=3 filter=14 channel=55
					0, 6, 42, -17, -10, 1, -19, 24, -37,
					-- layer=3 filter=14 channel=56
					17, 11, -15, 21, -4, -29, -9, 13, 4,
					-- layer=3 filter=14 channel=57
					36, 11, 29, 21, -19, -11, 8, -29, 25,
					-- layer=3 filter=14 channel=58
					-12, 20, 17, 9, -7, 36, 8, -25, 55,
					-- layer=3 filter=14 channel=59
					13, 15, 0, 11, 23, -23, 4, 10, 29,
					-- layer=3 filter=14 channel=60
					-50, 11, -19, 19, 32, 14, -2, -4, 13,
					-- layer=3 filter=14 channel=61
					2, -17, -45, 2, 9, -31, -22, 9, 11,
					-- layer=3 filter=14 channel=62
					-4, -10, 23, 24, -3, -33, -3, -29, -54,
					-- layer=3 filter=14 channel=63
					-7, -3, -14, 6, -5, 23, -8, 8, 1,
					-- layer=3 filter=15 channel=0
					-16, 9, -7, -2, -19, 0, -4, 7, -4,
					-- layer=3 filter=15 channel=1
					30, 6, -27, 27, 0, 4, 2, -41, 0,
					-- layer=3 filter=15 channel=2
					16, 11, 35, -1, 27, 16, -1, 9, -21,
					-- layer=3 filter=15 channel=3
					19, -27, 25, 20, -32, -1, 7, -45, -5,
					-- layer=3 filter=15 channel=4
					7, 40, -8, -11, -2, 2, 19, 36, 30,
					-- layer=3 filter=15 channel=5
					-4, -5, 4, 5, -15, -9, -11, -3, -12,
					-- layer=3 filter=15 channel=6
					73, -20, 31, 6, -38, 34, 39, 0, -8,
					-- layer=3 filter=15 channel=7
					-16, 26, 21, 26, -1, 15, -20, 7, 2,
					-- layer=3 filter=15 channel=8
					30, 25, 27, 11, -25, -36, 89, 33, -2,
					-- layer=3 filter=15 channel=9
					13, 12, -18, 0, -25, -21, 19, -46, -32,
					-- layer=3 filter=15 channel=10
					-17, 10, -30, 30, 13, -3, 13, 18, 8,
					-- layer=3 filter=15 channel=11
					0, 39, 74, 46, 67, 40, -19, -1, -24,
					-- layer=3 filter=15 channel=12
					-8, -14, 10, -26, -25, -22, -33, -21, -34,
					-- layer=3 filter=15 channel=13
					9, -52, 4, 26, 15, 42, -2, -21, -10,
					-- layer=3 filter=15 channel=14
					20, -28, 46, 33, -12, -18, 30, -16, 35,
					-- layer=3 filter=15 channel=15
					8, 2, 23, 21, 10, -21, -24, -19, -13,
					-- layer=3 filter=15 channel=16
					-42, -29, -4, -64, -13, -37, 12, 42, -14,
					-- layer=3 filter=15 channel=17
					28, -23, -17, 26, 48, 20, -9, 58, -3,
					-- layer=3 filter=15 channel=18
					25, 1, 38, 20, 17, 44, 25, -20, 40,
					-- layer=3 filter=15 channel=19
					10, 10, 6, 52, -31, 35, 1, -56, 42,
					-- layer=3 filter=15 channel=20
					19, 0, 53, -22, -8, 11, 4, -19, 9,
					-- layer=3 filter=15 channel=21
					67, 19, 8, 15, 50, 8, 20, -22, -32,
					-- layer=3 filter=15 channel=22
					-13, -2, 6, 17, -6, -8, -5, 7, -20,
					-- layer=3 filter=15 channel=23
					65, 24, 28, 1, 38, 34, -9, 16, -12,
					-- layer=3 filter=15 channel=24
					2, -14, -16, 44, 28, 49, -12, -6, -14,
					-- layer=3 filter=15 channel=25
					-9, -1, 14, -31, 35, 11, -26, 19, -7,
					-- layer=3 filter=15 channel=26
					-4, 5, 2, 8, -6, -7, -3, 7, 4,
					-- layer=3 filter=15 channel=27
					-5, -44, -31, 24, 3, 17, -2, 44, 48,
					-- layer=3 filter=15 channel=28
					-2, -8, 13, -9, 1, -5, 7, 4, 11,
					-- layer=3 filter=15 channel=29
					-27, -11, -20, -9, -16, -3, 40, -24, 34,
					-- layer=3 filter=15 channel=30
					16, -16, 13, 9, 2, -3, 3, 6, 11,
					-- layer=3 filter=15 channel=31
					-2, 14, -2, -37, 33, 4, -7, -34, 15,
					-- layer=3 filter=15 channel=32
					-1, 8, -12, -2, -39, 3, -32, -13, -9,
					-- layer=3 filter=15 channel=33
					19, 16, 48, -14, 30, 24, -8, 31, -19,
					-- layer=3 filter=15 channel=34
					-18, 44, 14, -4, 46, 9, 19, 50, 67,
					-- layer=3 filter=15 channel=35
					42, -18, -18, 47, 45, 33, 5, 16, 28,
					-- layer=3 filter=15 channel=36
					15, -6, 22, 2, 19, 18, 5, -13, 24,
					-- layer=3 filter=15 channel=37
					-3, -2, -19, 8, 29, 1, -12, -2, 6,
					-- layer=3 filter=15 channel=38
					17, 36, 3, -12, 44, 9, 22, -18, -14,
					-- layer=3 filter=15 channel=39
					-12, -10, -4, -13, -6, -10, -10, -7, 0,
					-- layer=3 filter=15 channel=40
					31, 16, 4, -5, 14, 29, -3, 0, 25,
					-- layer=3 filter=15 channel=41
					0, 8, 6, 14, 41, -2, 16, -1, 1,
					-- layer=3 filter=15 channel=42
					38, -24, -19, 30, 38, 49, -27, 15, 2,
					-- layer=3 filter=15 channel=43
					4, -14, 23, 9, -53, 12, 26, 0, -3,
					-- layer=3 filter=15 channel=44
					0, 5, -13, 11, -4, 17, 6, -2, -13,
					-- layer=3 filter=15 channel=45
					22, -3, -8, 8, -27, 5, 16, -4, 34,
					-- layer=3 filter=15 channel=46
					-28, 16, -20, -30, -3, -3, -33, -21, -16,
					-- layer=3 filter=15 channel=47
					1, -37, 1, -38, -20, -19, -35, -39, -42,
					-- layer=3 filter=15 channel=48
					13, -25, -35, 26, 10, -7, 39, 28, 10,
					-- layer=3 filter=15 channel=49
					-3, 38, 25, 21, 23, -20, 26, 7, -4,
					-- layer=3 filter=15 channel=50
					13, -11, 32, 2, 33, 34, 38, -7, -24,
					-- layer=3 filter=15 channel=51
					-18, 12, 16, -4, -15, -8, 0, 8, 5,
					-- layer=3 filter=15 channel=52
					6, 20, -18, 11, 12, 19, 18, 34, 24,
					-- layer=3 filter=15 channel=53
					32, 30, -20, -7, 31, -20, 50, -31, -29,
					-- layer=3 filter=15 channel=54
					-18, 36, 1, 11, 12, -9, 15, -17, 22,
					-- layer=3 filter=15 channel=55
					-1, -7, 34, -21, -22, 16, -6, 19, 9,
					-- layer=3 filter=15 channel=56
					11, -11, -31, 22, -40, -24, 18, -21, -19,
					-- layer=3 filter=15 channel=57
					37, 38, 37, 43, 68, 45, 1, 17, 33,
					-- layer=3 filter=15 channel=58
					-57, -47, -6, 3, 12, 12, 13, -12, -25,
					-- layer=3 filter=15 channel=59
					-13, 29, -16, 51, 10, 0, -2, -38, -40,
					-- layer=3 filter=15 channel=60
					-17, 12, 39, 56, 75, 35, 24, 52, 23,
					-- layer=3 filter=15 channel=61
					-14, 8, -14, 7, 11, 0, -2, 10, -22,
					-- layer=3 filter=15 channel=62
					10, 13, 2, 9, -38, -3, -15, -57, -8,
					-- layer=3 filter=15 channel=63
					7, 3, -10, -18, 3, -5, 13, -4, -17,
					-- layer=3 filter=16 channel=0
					-5, -34, -16, -17, -67, -17, -8, -38, -48,
					-- layer=3 filter=16 channel=1
					-42, 29, -53, 7, -36, 16, -13, -16, -19,
					-- layer=3 filter=16 channel=2
					1, 4, 21, 26, -16, -34, 11, 46, 49,
					-- layer=3 filter=16 channel=3
					3, 37, -3, 16, -2, 11, -7, -59, -7,
					-- layer=3 filter=16 channel=4
					29, 29, 0, -26, 19, 33, -10, -3, 24,
					-- layer=3 filter=16 channel=5
					7, 13, -5, -9, -7, -2, 24, -10, 3,
					-- layer=3 filter=16 channel=6
					20, 11, -15, 7, 3, 11, 4, 2, 3,
					-- layer=3 filter=16 channel=7
					-47, -1, 43, -6, -3, 55, -36, 33, 5,
					-- layer=3 filter=16 channel=8
					-4, 31, 3, 9, 25, 3, 12, -28, -5,
					-- layer=3 filter=16 channel=9
					11, 9, 23, -8, -22, -17, -12, -48, -30,
					-- layer=3 filter=16 channel=10
					-22, 33, -20, 12, 26, -24, -45, -64, -57,
					-- layer=3 filter=16 channel=11
					25, -28, -18, -2, -4, -13, 15, -9, -33,
					-- layer=3 filter=16 channel=12
					-18, -20, -33, -54, -104, -74, -9, -32, -46,
					-- layer=3 filter=16 channel=13
					-19, 3, -17, -6, -40, -14, -2, -13, -11,
					-- layer=3 filter=16 channel=14
					-38, -12, -41, 15, -21, -38, 6, 7, -4,
					-- layer=3 filter=16 channel=15
					10, 25, -5, 41, 27, -2, 23, 3, 7,
					-- layer=3 filter=16 channel=16
					3, -4, 15, 16, 58, 19, 10, -69, 0,
					-- layer=3 filter=16 channel=17
					12, -21, 40, -6, 0, 29, -4, 11, -8,
					-- layer=3 filter=16 channel=18
					5, 6, 9, 19, 46, -12, 12, 36, 5,
					-- layer=3 filter=16 channel=19
					16, 4, -5, -20, -15, 1, 16, 34, 26,
					-- layer=3 filter=16 channel=20
					12, -19, -14, 30, 2, -23, 44, 11, -31,
					-- layer=3 filter=16 channel=21
					12, 0, -17, -30, 0, -3, 18, 33, -21,
					-- layer=3 filter=16 channel=22
					-6, 0, 7, 0, 0, 13, 11, -8, 2,
					-- layer=3 filter=16 channel=23
					2, -41, 12, 19, 29, 14, -8, -46, -34,
					-- layer=3 filter=16 channel=24
					11, 29, 12, 12, -1, 10, 3, 31, 13,
					-- layer=3 filter=16 channel=25
					6, 2, -13, 1, 13, 12, -10, -10, -12,
					-- layer=3 filter=16 channel=26
					9, -16, 12, 14, 8, 13, 8, -3, -4,
					-- layer=3 filter=16 channel=27
					-5, -60, -17, -7, -19, -18, 3, -22, 32,
					-- layer=3 filter=16 channel=28
					0, -16, -8, -11, -13, -14, 6, 1, -10,
					-- layer=3 filter=16 channel=29
					-33, 3, 13, -15, 12, -17, 11, -11, 27,
					-- layer=3 filter=16 channel=30
					7, -11, -10, -1, 12, -1, 17, -7, -1,
					-- layer=3 filter=16 channel=31
					-31, 0, -48, 33, 71, 35, 25, 33, 16,
					-- layer=3 filter=16 channel=32
					-6, -42, -26, -29, -34, 7, -30, -12, -124,
					-- layer=3 filter=16 channel=33
					20, -37, -32, 3, 25, 16, -6, -44, -11,
					-- layer=3 filter=16 channel=34
					58, 34, -11, -18, 19, 22, -18, 6, 9,
					-- layer=3 filter=16 channel=35
					17, 49, 28, 3, 27, 24, 17, 27, 32,
					-- layer=3 filter=16 channel=36
					-27, 4, -50, 33, -44, -61, -5, 11, 13,
					-- layer=3 filter=16 channel=37
					-29, 11, -24, 22, 9, 8, 33, 12, -31,
					-- layer=3 filter=16 channel=38
					45, 43, 52, 15, 30, 28, -8, 25, -5,
					-- layer=3 filter=16 channel=39
					-2, 3, -11, -3, 13, 13, 17, 10, -4,
					-- layer=3 filter=16 channel=40
					24, -5, 13, 12, -19, 8, 16, 39, -6,
					-- layer=3 filter=16 channel=41
					-14, -18, -16, 2, -15, 18, 50, 25, 8,
					-- layer=3 filter=16 channel=42
					-26, 13, -7, -1, -14, -6, -9, 18, 33,
					-- layer=3 filter=16 channel=43
					56, 24, 16, -6, 19, 6, 17, 64, 22,
					-- layer=3 filter=16 channel=44
					6, -5, 1, 4, 14, -7, -3, 0, -15,
					-- layer=3 filter=16 channel=45
					-31, 25, -20, -30, -17, 0, 8, 70, 25,
					-- layer=3 filter=16 channel=46
					14, 1, -25, -6, -28, 29, 21, 31, -3,
					-- layer=3 filter=16 channel=47
					6, -47, -47, 0, -61, -14, 59, 18, 39,
					-- layer=3 filter=16 channel=48
					5, 18, -21, 16, -7, 0, 38, 19, 7,
					-- layer=3 filter=16 channel=49
					18, 3, 14, -4, -7, 19, 13, 11, 0,
					-- layer=3 filter=16 channel=50
					-9, 14, 10, 22, 17, 21, 42, 10, -8,
					-- layer=3 filter=16 channel=51
					-14, -3, 27, -25, -14, 0, -12, 13, -24,
					-- layer=3 filter=16 channel=52
					-34, 4, 0, 9, -22, -19, -30, -36, -27,
					-- layer=3 filter=16 channel=53
					-41, -20, -6, -1, 0, 18, -4, -9, 23,
					-- layer=3 filter=16 channel=54
					27, 68, 14, -7, -34, 16, -12, -70, -31,
					-- layer=3 filter=16 channel=55
					-31, -11, -67, -34, 12, 9, -29, -41, -40,
					-- layer=3 filter=16 channel=56
					-10, -23, -25, -7, -34, -48, 58, 41, -5,
					-- layer=3 filter=16 channel=57
					-16, -5, 1, 6, -12, -32, -19, -20, 7,
					-- layer=3 filter=16 channel=58
					-13, -7, 44, -45, 25, 21, -24, 19, 28,
					-- layer=3 filter=16 channel=59
					36, 69, -12, 42, 11, 0, -34, 0, -45,
					-- layer=3 filter=16 channel=60
					11, 0, 27, -4, 57, 36, -7, 26, -22,
					-- layer=3 filter=16 channel=61
					-12, 3, 18, -29, 0, -10, -46, -24, -1,
					-- layer=3 filter=16 channel=62
					14, 20, 11, 6, -33, -58, -19, -37, -47,
					-- layer=3 filter=16 channel=63
					-18, -2, -8, -27, 12, 0, 13, -17, -12,
					-- layer=3 filter=17 channel=0
					29, -21, -6, 14, 18, 5, -12, -13, -10,
					-- layer=3 filter=17 channel=1
					-24, 41, -12, -33, -14, -14, -23, -46, 37,
					-- layer=3 filter=17 channel=2
					-33, 17, -34, -16, 47, -39, 32, 7, 1,
					-- layer=3 filter=17 channel=3
					-3, -5, -32, 15, 118, 12, 4, -7, -4,
					-- layer=3 filter=17 channel=4
					22, 10, 18, -2, -27, 2, -4, -2, 12,
					-- layer=3 filter=17 channel=5
					8, 11, 21, 1, 17, -12, 12, -1, -5,
					-- layer=3 filter=17 channel=6
					-10, 13, -13, 30, 121, 8, -1, 2, 15,
					-- layer=3 filter=17 channel=7
					16, 22, -11, -21, -49, -53, -17, -31, -67,
					-- layer=3 filter=17 channel=8
					19, 44, 11, -32, 40, 30, -20, -1, 21,
					-- layer=3 filter=17 channel=9
					-48, 12, 2, -15, 14, 48, 10, -37, -6,
					-- layer=3 filter=17 channel=10
					-32, 0, 0, 21, 9, 9, 23, 16, 63,
					-- layer=3 filter=17 channel=11
					17, 3, 30, 3, 38, 34, -43, -10, -15,
					-- layer=3 filter=17 channel=12
					-6, 38, 8, -21, 25, 9, -12, -13, -14,
					-- layer=3 filter=17 channel=13
					1, 18, 4, 3, 40, -37, -15, -53, -32,
					-- layer=3 filter=17 channel=14
					28, 32, 16, 27, 39, -45, 52, -61, -67,
					-- layer=3 filter=17 channel=15
					7, 24, -13, -12, -24, 17, -15, -13, -31,
					-- layer=3 filter=17 channel=16
					-58, 2, 0, -18, 16, -43, 42, 55, -5,
					-- layer=3 filter=17 channel=17
					38, 31, 9, 17, -11, -26, -65, -17, -27,
					-- layer=3 filter=17 channel=18
					-7, -23, -9, 18, -15, 13, 19, 18, -9,
					-- layer=3 filter=17 channel=19
					-11, 13, -14, 11, 54, 0, -49, -46, -14,
					-- layer=3 filter=17 channel=20
					-4, 15, 0, -28, 5, 2, 24, 0, 30,
					-- layer=3 filter=17 channel=21
					-6, -9, 11, 0, 11, 42, -8, 3, 0,
					-- layer=3 filter=17 channel=22
					-10, 6, -2, 4, 1, -3, 9, 13, -17,
					-- layer=3 filter=17 channel=23
					26, -35, 19, 10, 26, 27, 10, 15, -37,
					-- layer=3 filter=17 channel=24
					29, 11, 36, 23, 67, 64, -37, -73, -41,
					-- layer=3 filter=17 channel=25
					-7, 6, -28, -26, 15, -5, -51, -19, -43,
					-- layer=3 filter=17 channel=26
					-3, -4, 11, 11, 1, 0, 3, 13, 7,
					-- layer=3 filter=17 channel=27
					36, 33, 7, 14, 1, -14, -10, -33, -15,
					-- layer=3 filter=17 channel=28
					14, -8, 10, 10, -12, 10, 12, 0, 4,
					-- layer=3 filter=17 channel=29
					-44, -24, -28, -33, -27, -35, -14, 3, 18,
					-- layer=3 filter=17 channel=30
					12, 9, 4, -2, -5, 19, 5, 11, -11,
					-- layer=3 filter=17 channel=31
					-36, -5, -20, -31, -16, -85, -19, -89, -62,
					-- layer=3 filter=17 channel=32
					13, -4, 16, 6, 2, 9, 11, 6, 42,
					-- layer=3 filter=17 channel=33
					8, -44, -18, 9, -24, 22, -20, 47, 35,
					-- layer=3 filter=17 channel=34
					-30, 14, 31, 12, -23, -39, 45, -30, 5,
					-- layer=3 filter=17 channel=35
					30, 8, -20, -1, 7, 0, -7, -28, -15,
					-- layer=3 filter=17 channel=36
					10, 11, -14, 29, 27, -12, -32, -46, -42,
					-- layer=3 filter=17 channel=37
					11, 10, -5, -11, 23, -34, -23, -15, 21,
					-- layer=3 filter=17 channel=38
					-39, 29, -27, 4, -49, -23, 14, 11, -3,
					-- layer=3 filter=17 channel=39
					11, 5, 0, 1, -12, 8, -10, 5, 1,
					-- layer=3 filter=17 channel=40
					-8, -55, 0, 11, -23, -29, 3, 4, -1,
					-- layer=3 filter=17 channel=41
					-22, 34, 65, -34, 15, -16, -37, -39, -51,
					-- layer=3 filter=17 channel=42
					45, -6, 22, -8, 49, -9, -28, -31, -44,
					-- layer=3 filter=17 channel=43
					-70, 39, -36, -21, 30, -57, -34, 6, -10,
					-- layer=3 filter=17 channel=44
					-21, 15, -4, -8, 15, -9, 10, -3, -7,
					-- layer=3 filter=17 channel=45
					-7, 15, -18, -30, 37, -9, -27, -24, 26,
					-- layer=3 filter=17 channel=46
					30, 5, 20, -6, -4, 23, -12, 7, 13,
					-- layer=3 filter=17 channel=47
					-20, 3, -5, -29, -1, 13, 5, 19, -11,
					-- layer=3 filter=17 channel=48
					-5, 13, 3, 16, -40, -19, 0, 3, 1,
					-- layer=3 filter=17 channel=49
					10, 38, 17, 5, -17, 1, -12, -50, -14,
					-- layer=3 filter=17 channel=50
					17, 7, 28, -11, 68, 16, -33, -9, -35,
					-- layer=3 filter=17 channel=51
					5, 17, -31, -20, -53, -3, 8, -74, 27,
					-- layer=3 filter=17 channel=52
					24, -6, -10, 32, 14, -20, -19, -114, -42,
					-- layer=3 filter=17 channel=53
					-35, -26, 39, -63, 5, 15, -29, -2, 5,
					-- layer=3 filter=17 channel=54
					-36, 7, -15, -41, -14, -14, 0, -12, 5,
					-- layer=3 filter=17 channel=55
					16, -15, 17, 3, -46, -26, 2, 24, 19,
					-- layer=3 filter=17 channel=56
					-19, -20, 11, -9, -3, 55, 10, 13, 26,
					-- layer=3 filter=17 channel=57
					30, 3, -9, 11, 58, 37, -76, -9, 6,
					-- layer=3 filter=17 channel=58
					-61, 1, 2, -32, -64, -22, -4, 18, -19,
					-- layer=3 filter=17 channel=59
					-7, 7, 4, -7, 50, 16, 24, 17, 23,
					-- layer=3 filter=17 channel=60
					0, -20, -11, -9, -5, -40, 8, 3, -2,
					-- layer=3 filter=17 channel=61
					-23, 25, -12, -5, -37, 56, -1, -7, 17,
					-- layer=3 filter=17 channel=62
					17, 33, -17, 2, -1, 23, -74, -13, 1,
					-- layer=3 filter=17 channel=63
					-5, 11, -4, -5, -23, 12, -17, 20, 23,
					-- layer=3 filter=18 channel=0
					-17, -40, -20, 9, -5, -13, 10, -45, -27,
					-- layer=3 filter=18 channel=1
					7, -72, 26, -47, -41, 8, 29, 32, 36,
					-- layer=3 filter=18 channel=2
					-22, 4, -2, -4, -14, -14, -24, -17, -11,
					-- layer=3 filter=18 channel=3
					-15, -15, -3, -29, -29, 28, -36, 1, 7,
					-- layer=3 filter=18 channel=4
					13, 5, 32, 20, 13, -6, -3, -55, -84,
					-- layer=3 filter=18 channel=5
					3, 4, 15, 12, 21, 0, 5, 10, 17,
					-- layer=3 filter=18 channel=6
					-17, 3, 21, 15, -20, -15, 12, -27, 3,
					-- layer=3 filter=18 channel=7
					0, -5, 13, -17, -50, 5, -34, 23, 16,
					-- layer=3 filter=18 channel=8
					1, -21, 27, -18, -19, 17, -40, 27, 31,
					-- layer=3 filter=18 channel=9
					30, -33, -40, -1, -30, -6, 85, 65, 48,
					-- layer=3 filter=18 channel=10
					-50, -35, -42, -39, -51, -54, 17, 26, 38,
					-- layer=3 filter=18 channel=11
					-27, 44, 18, 38, 38, -18, 50, 15, -27,
					-- layer=3 filter=18 channel=12
					0, -7, -1, -34, -44, -16, 62, 27, 29,
					-- layer=3 filter=18 channel=13
					18, -12, 21, 46, 66, -4, -10, -16, -35,
					-- layer=3 filter=18 channel=14
					33, 43, 56, 21, 22, 63, -16, -16, 21,
					-- layer=3 filter=18 channel=15
					1, 9, 7, -30, -36, -19, -4, -15, -35,
					-- layer=3 filter=18 channel=16
					-38, -39, 25, 18, 5, -33, -31, 13, -6,
					-- layer=3 filter=18 channel=17
					7, 32, 1, 48, 9, -4, -4, -100, -58,
					-- layer=3 filter=18 channel=18
					-2, 0, -15, 27, 24, 9, 26, -37, -7,
					-- layer=3 filter=18 channel=19
					-3, 8, 28, 46, -41, 19, -15, -60, -13,
					-- layer=3 filter=18 channel=20
					6, 7, 14, 7, 8, 21, -13, -1, 40,
					-- layer=3 filter=18 channel=21
					-7, -4, 30, 13, 33, 20, 30, 0, -4,
					-- layer=3 filter=18 channel=22
					-9, 0, -2, 9, 7, 14, 1, 13, -4,
					-- layer=3 filter=18 channel=23
					34, 12, 0, 8, 12, 28, 23, -12, 35,
					-- layer=3 filter=18 channel=24
					-1, -20, -9, 58, 15, 34, 19, -31, -48,
					-- layer=3 filter=18 channel=25
					-16, -23, 9, -1, 35, 16, -30, -1, -19,
					-- layer=3 filter=18 channel=26
					-11, 0, -4, 12, 5, -6, 0, 16, 12,
					-- layer=3 filter=18 channel=27
					14, 4, 18, 50, 21, 16, 0, -52, -44,
					-- layer=3 filter=18 channel=28
					-5, -7, 5, -14, -9, -4, 12, 1, -11,
					-- layer=3 filter=18 channel=29
					28, 5, -39, 35, 29, -10, 53, 19, 20,
					-- layer=3 filter=18 channel=30
					-3, -13, -14, 10, 2, 9, -1, 6, 0,
					-- layer=3 filter=18 channel=31
					-22, 27, -27, -6, -28, -26, -8, -4, 45,
					-- layer=3 filter=18 channel=32
					18, 1, -6, 11, -19, -28, 37, 9, 3,
					-- layer=3 filter=18 channel=33
					26, 0, 15, 20, 15, 12, 29, 65, 40,
					-- layer=3 filter=18 channel=34
					-37, -26, 18, 8, 21, -18, 10, 34, 63,
					-- layer=3 filter=18 channel=35
					5, -29, 23, 23, 29, 4, -29, -41, -34,
					-- layer=3 filter=18 channel=36
					-25, -28, 40, 15, 8, 13, 33, 18, 20,
					-- layer=3 filter=18 channel=37
					16, 4, 32, 7, -5, 23, -17, 11, 4,
					-- layer=3 filter=18 channel=38
					-36, 3, 15, -1, -22, 1, 6, -24, -20,
					-- layer=3 filter=18 channel=39
					1, -1, 12, 12, -9, -7, 12, 17, 12,
					-- layer=3 filter=18 channel=40
					16, 0, -10, 9, 4, -13, -6, -24, -10,
					-- layer=3 filter=18 channel=41
					-22, 24, 20, 8, 16, -33, -55, -63, -26,
					-- layer=3 filter=18 channel=42
					4, -7, 22, 33, 44, 3, -20, -24, -40,
					-- layer=3 filter=18 channel=43
					-34, 9, -10, -23, -34, -28, -77, -9, -15,
					-- layer=3 filter=18 channel=44
					10, -10, 9, 14, -12, 1, -3, -5, 5,
					-- layer=3 filter=18 channel=45
					36, 2, 22, 15, -48, 30, -26, -52, -5,
					-- layer=3 filter=18 channel=46
					-31, -51, -52, -7, 0, -20, 25, 0, 0,
					-- layer=3 filter=18 channel=47
					-4, -27, 11, -24, -41, -59, 15, 7, -1,
					-- layer=3 filter=18 channel=48
					-4, -34, -49, -30, -33, 41, 1, 28, -6,
					-- layer=3 filter=18 channel=49
					-9, 16, -10, 18, 15, 13, 33, -25, -37,
					-- layer=3 filter=18 channel=50
					-26, -15, 19, 14, 22, 1, 5, 22, -34,
					-- layer=3 filter=18 channel=51
					20, -30, -21, -2, -24, -39, -32, -23, 19,
					-- layer=3 filter=18 channel=52
					-1, -23, 7, 20, -7, -6, -5, -8, -15,
					-- layer=3 filter=18 channel=53
					19, 26, 4, 37, 0, -28, 31, 45, -45,
					-- layer=3 filter=18 channel=54
					-14, -68, -4, -71, -20, -27, -13, 28, 0,
					-- layer=3 filter=18 channel=55
					18, 6, 18, -35, -35, 4, -29, 8, 19,
					-- layer=3 filter=18 channel=56
					1, 12, -5, 21, -32, -10, 12, -4, 6,
					-- layer=3 filter=18 channel=57
					-16, 42, -29, 53, 86, 8, 37, 25, 0,
					-- layer=3 filter=18 channel=58
					2, -29, -50, -21, -38, -32, -37, -30, -4,
					-- layer=3 filter=18 channel=59
					10, -46, -25, 7, -23, 23, 0, 7, -15,
					-- layer=3 filter=18 channel=60
					4, -11, 16, 16, 21, 2, 4, 20, -20,
					-- layer=3 filter=18 channel=61
					7, 1, -26, -16, -30, 39, 32, 65, 32,
					-- layer=3 filter=18 channel=62
					-14, -4, 2, 20, -18, -1, -21, -16, 38,
					-- layer=3 filter=18 channel=63
					8, -15, 10, -16, -1, -10, -20, -11, -6,
					-- layer=3 filter=19 channel=0
					1, -7, -5, 0, 0, 8, -6, 8, 10,
					-- layer=3 filter=19 channel=1
					10, -10, -1, -4, 7, -1, -3, 6, -8,
					-- layer=3 filter=19 channel=2
					-17, -5, -5, -5, 0, 9, -5, -12, 5,
					-- layer=3 filter=19 channel=3
					-5, 1, -13, -5, 11, 0, -9, 8, -6,
					-- layer=3 filter=19 channel=4
					-12, -10, 9, -5, -14, -4, -12, -14, 0,
					-- layer=3 filter=19 channel=5
					13, 5, -1, -3, -3, 4, 13, -13, -10,
					-- layer=3 filter=19 channel=6
					-4, -12, -8, -6, 3, -10, 1, 3, -2,
					-- layer=3 filter=19 channel=7
					-9, 2, -5, -16, -6, 1, -5, 9, 4,
					-- layer=3 filter=19 channel=8
					-13, -8, -14, 4, 10, 0, -9, -4, -13,
					-- layer=3 filter=19 channel=9
					-10, 1, -13, -12, -2, -6, -2, 4, -3,
					-- layer=3 filter=19 channel=10
					0, -11, 4, -2, -7, -17, -10, -8, 4,
					-- layer=3 filter=19 channel=11
					-1, -15, -8, -2, -3, 6, 2, 0, 1,
					-- layer=3 filter=19 channel=12
					-13, 0, 11, 4, -3, -4, -15, 4, -10,
					-- layer=3 filter=19 channel=13
					-5, -1, 8, 11, 1, -4, -4, -1, -9,
					-- layer=3 filter=19 channel=14
					13, -7, -16, -13, 3, -15, -12, -7, -14,
					-- layer=3 filter=19 channel=15
					10, -17, -8, -16, -15, 7, 5, 0, 6,
					-- layer=3 filter=19 channel=16
					0, 0, 16, 11, 1, -7, -10, 6, -4,
					-- layer=3 filter=19 channel=17
					11, 8, -5, 6, -17, 8, 0, -1, 8,
					-- layer=3 filter=19 channel=18
					1, -4, -1, -8, -10, 3, 6, -6, -14,
					-- layer=3 filter=19 channel=19
					12, 2, -8, -16, -4, -8, -8, -2, 10,
					-- layer=3 filter=19 channel=20
					-2, -3, 7, 8, -15, -12, -7, 3, 10,
					-- layer=3 filter=19 channel=21
					-1, 7, 5, 7, 7, -10, 0, 1, -17,
					-- layer=3 filter=19 channel=22
					9, 13, -5, 14, -12, 2, -15, -7, 12,
					-- layer=3 filter=19 channel=23
					-24, -6, -1, -5, -7, -4, 8, 8, -19,
					-- layer=3 filter=19 channel=24
					9, -18, -15, -15, -2, -5, -15, -9, -3,
					-- layer=3 filter=19 channel=25
					-8, -2, -4, 9, -4, 10, 0, -10, -14,
					-- layer=3 filter=19 channel=26
					-5, -10, 7, 4, -10, -8, 2, 0, 7,
					-- layer=3 filter=19 channel=27
					-10, 2, 5, -10, -8, 7, 10, -5, -4,
					-- layer=3 filter=19 channel=28
					-11, -15, -4, 12, -12, 5, 13, -7, -5,
					-- layer=3 filter=19 channel=29
					-13, -2, 2, -4, -1, 13, -10, -13, 9,
					-- layer=3 filter=19 channel=30
					0, -13, 10, -7, -6, 17, -11, -1, 9,
					-- layer=3 filter=19 channel=31
					-2, 1, -10, 4, 2, -7, -14, -8, -1,
					-- layer=3 filter=19 channel=32
					-15, 3, -6, 9, 6, -5, -1, -17, 4,
					-- layer=3 filter=19 channel=33
					-11, -4, -14, -6, -10, 0, 3, 1, 6,
					-- layer=3 filter=19 channel=34
					-5, 11, -12, -11, 3, 7, -2, 10, 0,
					-- layer=3 filter=19 channel=35
					-4, 3, -17, -17, -8, -14, 0, -3, -2,
					-- layer=3 filter=19 channel=36
					2, 0, 2, -15, -7, -12, -8, -12, -5,
					-- layer=3 filter=19 channel=37
					8, -14, -5, -15, -9, -15, -15, -6, -13,
					-- layer=3 filter=19 channel=38
					-10, -5, -14, -2, -13, -7, 7, -18, 3,
					-- layer=3 filter=19 channel=39
					2, 5, 16, 0, 12, -8, -15, -1, -8,
					-- layer=3 filter=19 channel=40
					7, 0, 8, -13, -19, 8, 6, -8, -1,
					-- layer=3 filter=19 channel=41
					4, 7, -13, -7, 5, -16, -17, 3, -11,
					-- layer=3 filter=19 channel=42
					-1, 9, -9, 9, 7, 3, -9, -8, 4,
					-- layer=3 filter=19 channel=43
					-14, -5, 3, 0, -2, -3, -7, -10, -1,
					-- layer=3 filter=19 channel=44
					-11, 4, 9, 2, 6, 3, -11, 11, 10,
					-- layer=3 filter=19 channel=45
					-7, 10, -11, -2, 10, 0, -1, -15, 9,
					-- layer=3 filter=19 channel=46
					-18, 7, -14, 5, 0, 1, 5, -2, -13,
					-- layer=3 filter=19 channel=47
					-6, -4, 8, -3, -11, -2, 0, 13, 5,
					-- layer=3 filter=19 channel=48
					4, 11, 8, 6, 15, -3, 4, -8, -14,
					-- layer=3 filter=19 channel=49
					-13, 13, 2, -6, -10, -20, 0, 3, 1,
					-- layer=3 filter=19 channel=50
					-2, 3, -14, 0, 0, 8, -15, -15, -7,
					-- layer=3 filter=19 channel=51
					3, 7, -6, 12, -3, -1, -2, 1, 9,
					-- layer=3 filter=19 channel=52
					7, -14, 11, -11, 2, -5, -9, 4, 13,
					-- layer=3 filter=19 channel=53
					-12, -7, -10, -11, 1, 7, -1, 3, 4,
					-- layer=3 filter=19 channel=54
					10, 11, -16, 0, 8, 13, -17, -12, -1,
					-- layer=3 filter=19 channel=55
					1, -7, -10, -16, -12, -12, -15, 11, 12,
					-- layer=3 filter=19 channel=56
					-15, 7, 2, 6, -6, -10, -2, -16, -11,
					-- layer=3 filter=19 channel=57
					-13, 1, -13, -15, 4, -16, -13, 1, 11,
					-- layer=3 filter=19 channel=58
					11, -17, 8, 6, 3, -15, -5, -1, -15,
					-- layer=3 filter=19 channel=59
					-3, -7, -11, -6, 2, 0, -9, 4, -1,
					-- layer=3 filter=19 channel=60
					-3, -4, 0, -7, -1, 8, -3, -15, -14,
					-- layer=3 filter=19 channel=61
					-14, 0, -15, -2, 8, -1, -1, -17, 3,
					-- layer=3 filter=19 channel=62
					0, -9, 4, 11, -10, 8, 8, 6, 1,
					-- layer=3 filter=19 channel=63
					5, -14, -14, -13, 9, -2, 3, -1, 3,
					-- layer=3 filter=20 channel=0
					-12, 6, 11, -6, -18, -17, -1, -15, -14,
					-- layer=3 filter=20 channel=1
					3, -8, 8, 8, -16, -2, -12, -11, -12,
					-- layer=3 filter=20 channel=2
					-15, 0, 4, 0, 6, -3, 9, -16, -13,
					-- layer=3 filter=20 channel=3
					2, 0, -9, 3, 1, 7, -5, 1, 6,
					-- layer=3 filter=20 channel=4
					0, 2, -14, 1, -15, 3, -3, 2, -15,
					-- layer=3 filter=20 channel=5
					11, -7, -10, -2, -2, -1, 1, 11, -12,
					-- layer=3 filter=20 channel=6
					6, 12, 9, 0, 15, 6, 1, 1, -11,
					-- layer=3 filter=20 channel=7
					9, 2, -5, 5, 11, -3, 0, -3, 7,
					-- layer=3 filter=20 channel=8
					-5, -11, -15, -12, -7, 4, -7, 9, -5,
					-- layer=3 filter=20 channel=9
					-13, -11, -4, -16, 3, 0, -4, -2, -15,
					-- layer=3 filter=20 channel=10
					-9, 11, 1, -8, -16, 7, -5, -3, -8,
					-- layer=3 filter=20 channel=11
					-8, -14, -1, -18, -4, -13, 6, 3, -11,
					-- layer=3 filter=20 channel=12
					0, -17, -1, 12, -10, -12, -17, 6, 0,
					-- layer=3 filter=20 channel=13
					2, -14, -4, 3, -16, -2, 5, 5, 7,
					-- layer=3 filter=20 channel=14
					6, -7, 5, -2, -5, -9, 6, 7, 4,
					-- layer=3 filter=20 channel=15
					-17, 8, 6, -10, 7, -16, 5, -9, -16,
					-- layer=3 filter=20 channel=16
					10, 9, -3, -9, 9, -7, -13, 5, -3,
					-- layer=3 filter=20 channel=17
					-7, -10, 5, 9, -9, -10, -10, -9, -3,
					-- layer=3 filter=20 channel=18
					-18, -2, -9, 0, 1, 10, -22, -6, 6,
					-- layer=3 filter=20 channel=19
					-8, -16, -6, 10, 8, -11, 1, -14, -3,
					-- layer=3 filter=20 channel=20
					13, -11, -14, 2, 5, 7, -6, 6, 4,
					-- layer=3 filter=20 channel=21
					-8, 2, -11, 8, 2, -14, -14, -17, -14,
					-- layer=3 filter=20 channel=22
					2, -8, 11, 5, 2, 0, -13, -6, 10,
					-- layer=3 filter=20 channel=23
					-13, 3, -6, -8, -5, -2, 2, -1, 3,
					-- layer=3 filter=20 channel=24
					-6, 4, -4, -2, 0, -17, -10, -8, -17,
					-- layer=3 filter=20 channel=25
					11, -7, -15, -1, 14, -3, -15, 3, 8,
					-- layer=3 filter=20 channel=26
					10, -3, -5, -11, -5, -9, 11, -13, -6,
					-- layer=3 filter=20 channel=27
					-11, -8, -8, 7, 0, -1, 7, -7, 9,
					-- layer=3 filter=20 channel=28
					-13, -10, -2, -13, -12, -5, 14, -16, -12,
					-- layer=3 filter=20 channel=29
					9, 9, 5, 8, 0, -11, -13, -15, 8,
					-- layer=3 filter=20 channel=30
					-6, 11, -1, 3, 11, 3, 4, 15, 3,
					-- layer=3 filter=20 channel=31
					-8, 11, 3, -7, -6, 3, 8, -13, -9,
					-- layer=3 filter=20 channel=32
					-9, -9, 1, -6, 5, -18, -5, -13, -12,
					-- layer=3 filter=20 channel=33
					4, -11, -2, -11, -14, -6, -24, -21, -12,
					-- layer=3 filter=20 channel=34
					-16, -16, 4, -8, -11, -7, -14, -14, -9,
					-- layer=3 filter=20 channel=35
					-8, -18, -15, -13, -10, -11, 9, 3, 3,
					-- layer=3 filter=20 channel=36
					-7, 1, -8, -3, -1, -2, -13, 2, -4,
					-- layer=3 filter=20 channel=37
					-2, -2, -3, -5, 2, -9, -6, -9, -10,
					-- layer=3 filter=20 channel=38
					2, -9, -13, -2, 11, -1, -19, -16, -9,
					-- layer=3 filter=20 channel=39
					-2, 8, -4, 14, -7, 7, 7, -11, 5,
					-- layer=3 filter=20 channel=40
					4, -5, -7, -5, 1, 9, -8, -13, -26,
					-- layer=3 filter=20 channel=41
					-11, -8, -8, -6, -12, 7, -4, -18, 1,
					-- layer=3 filter=20 channel=42
					-3, 0, 4, -15, -11, -8, -3, -17, 5,
					-- layer=3 filter=20 channel=43
					-3, -8, 4, -14, 6, -7, 9, -7, -3,
					-- layer=3 filter=20 channel=44
					9, -2, -13, 8, 13, 12, 2, -6, 7,
					-- layer=3 filter=20 channel=45
					0, 3, -8, 0, -15, 12, -5, -3, 7,
					-- layer=3 filter=20 channel=46
					1, 2, -8, -11, -4, 5, 2, 10, -7,
					-- layer=3 filter=20 channel=47
					-15, 5, -16, 10, 7, 10, 6, -6, 3,
					-- layer=3 filter=20 channel=48
					-8, 9, 4, 12, -17, -18, -4, -13, 0,
					-- layer=3 filter=20 channel=49
					10, -9, 3, -11, 8, -15, 8, -6, 9,
					-- layer=3 filter=20 channel=50
					-16, 3, 7, -13, 10, -16, 1, -12, -3,
					-- layer=3 filter=20 channel=51
					-4, 9, -9, -14, -7, 0, -13, 2, -7,
					-- layer=3 filter=20 channel=52
					0, 11, 9, 3, 3, 9, 12, 1, -9,
					-- layer=3 filter=20 channel=53
					3, -6, 9, 3, -8, -2, -9, -8, 3,
					-- layer=3 filter=20 channel=54
					15, -1, 7, 3, 2, 12, -4, 6, -13,
					-- layer=3 filter=20 channel=55
					-17, -4, -7, 0, -22, -22, 1, -9, -3,
					-- layer=3 filter=20 channel=56
					1, -13, -2, 9, -3, 8, -4, -20, -6,
					-- layer=3 filter=20 channel=57
					-1, -11, -11, -16, -6, -16, -13, -5, 2,
					-- layer=3 filter=20 channel=58
					0, -6, 9, 8, -7, -15, -13, -5, 0,
					-- layer=3 filter=20 channel=59
					10, 2, 3, 1, -17, -18, -13, 4, 11,
					-- layer=3 filter=20 channel=60
					-7, -10, 7, -13, -11, -12, -8, -7, 7,
					-- layer=3 filter=20 channel=61
					-11, 2, 10, 0, -12, -14, -5, 2, 2,
					-- layer=3 filter=20 channel=62
					3, 0, -10, 7, -9, 0, -6, -4, 1,
					-- layer=3 filter=20 channel=63
					-6, 14, 5, -14, 9, -13, -14, -3, 0,
					-- layer=3 filter=21 channel=0
					-14, -38, -33, -11, 23, -7, -21, -17, -57,
					-- layer=3 filter=21 channel=1
					-2, 29, 12, 21, -16, 3, 32, 1, 14,
					-- layer=3 filter=21 channel=2
					-4, 17, 8, 0, -16, 4, 15, 20, 6,
					-- layer=3 filter=21 channel=3
					0, 31, 11, 12, 93, 6, -7, -8, -18,
					-- layer=3 filter=21 channel=4
					5, -20, -16, 2, 41, 10, 13, 14, 25,
					-- layer=3 filter=21 channel=5
					11, 1, -11, -14, 6, -5, 0, -4, 14,
					-- layer=3 filter=21 channel=6
					7, 5, 2, 25, 77, -13, 30, -9, 8,
					-- layer=3 filter=21 channel=7
					8, 26, -8, 5, 1, 22, 17, 0, -11,
					-- layer=3 filter=21 channel=8
					26, 7, 34, -23, 32, 52, -10, -15, 10,
					-- layer=3 filter=21 channel=9
					-17, 4, 34, -2, 5, 35, -52, -51, 5,
					-- layer=3 filter=21 channel=10
					56, 35, 22, -15, 17, 29, 0, -34, 22,
					-- layer=3 filter=21 channel=11
					18, -112, -33, -55, -24, -19, 18, -23, 14,
					-- layer=3 filter=21 channel=12
					31, 13, -10, 34, 45, 16, -4, 19, 18,
					-- layer=3 filter=21 channel=13
					0, 27, 1, -19, -11, -18, 44, 15, -14,
					-- layer=3 filter=21 channel=14
					8, 5, -16, 13, 41, 2, 39, -18, 9,
					-- layer=3 filter=21 channel=15
					18, 46, 12, 18, -8, 15, 31, 25, 29,
					-- layer=3 filter=21 channel=16
					15, 26, -27, 44, 16, 10, 40, 0, 10,
					-- layer=3 filter=21 channel=17
					-6, -8, 19, -22, 9, 23, 0, -21, 0,
					-- layer=3 filter=21 channel=18
					-53, -60, -66, 15, 4, -54, 2, 47, -24,
					-- layer=3 filter=21 channel=19
					35, -10, 31, -11, 57, -16, -7, 33, -7,
					-- layer=3 filter=21 channel=20
					-3, -15, -59, 30, -6, 2, 8, 33, -19,
					-- layer=3 filter=21 channel=21
					-39, -86, -20, -67, -42, 2, -29, 8, 6,
					-- layer=3 filter=21 channel=22
					2, -8, 9, 2, -6, 11, 8, -2, 10,
					-- layer=3 filter=21 channel=23
					-62, -44, -42, -22, 37, 9, -32, 4, 10,
					-- layer=3 filter=21 channel=24
					3, -3, -8, -31, -4, -62, 18, -11, -9,
					-- layer=3 filter=21 channel=25
					21, 37, -3, 5, 1, 16, 3, 25, 22,
					-- layer=3 filter=21 channel=26
					10, -9, 13, 12, 1, -3, 12, 2, -10,
					-- layer=3 filter=21 channel=27
					36, 6, -1, 18, -11, 20, 39, -11, 0,
					-- layer=3 filter=21 channel=28
					-13, -9, -12, 1, 14, 0, -3, 14, 8,
					-- layer=3 filter=21 channel=29
					-19, -13, 21, -32, -27, -74, -45, 0, -28,
					-- layer=3 filter=21 channel=30
					-12, 7, -8, -11, 5, -7, 4, -1, 15,
					-- layer=3 filter=21 channel=31
					36, 51, 17, 54, -21, 33, -22, 4, -11,
					-- layer=3 filter=21 channel=32
					13, -7, 29, 20, 29, 19, -1, 15, -6,
					-- layer=3 filter=21 channel=33
					-2, -38, -17, 85, 12, -32, -5, 8, -20,
					-- layer=3 filter=21 channel=34
					-13, -10, -8, -21, -22, -10, 15, 5, -4,
					-- layer=3 filter=21 channel=35
					21, 24, -8, -1, 0, 11, 4, 5, 6,
					-- layer=3 filter=21 channel=36
					-17, -15, -11, 38, -6, -30, 19, 0, 1,
					-- layer=3 filter=21 channel=37
					2, -1, -3, -3, 37, -5, 34, -1, 10,
					-- layer=3 filter=21 channel=38
					0, 31, -2, 6, -56, -14, -14, 26, 16,
					-- layer=3 filter=21 channel=39
					-14, -11, -11, 10, -14, -7, -13, 1, 6,
					-- layer=3 filter=21 channel=40
					-23, -50, -58, 38, -2, -24, 1, 55, 5,
					-- layer=3 filter=21 channel=41
					-40, 22, 22, -10, -13, 12, 2, 17, 4,
					-- layer=3 filter=21 channel=42
					-3, 27, 23, -13, 19, -19, 23, 9, -4,
					-- layer=3 filter=21 channel=43
					11, 5, 25, -16, 32, -61, 13, 2, -16,
					-- layer=3 filter=21 channel=44
					12, 3, -14, -10, 11, 15, -2, -12, 3,
					-- layer=3 filter=21 channel=45
					-13, 23, -2, 4, 13, 35, 34, 55, 59,
					-- layer=3 filter=21 channel=46
					-11, -22, 16, 11, 10, 21, 11, 29, 30,
					-- layer=3 filter=21 channel=47
					1, 7, -3, 7, -1, 7, 15, 13, 22,
					-- layer=3 filter=21 channel=48
					9, 51, 14, 23, -32, -12, -24, 9, 0,
					-- layer=3 filter=21 channel=49
					-45, -84, -20, -17, 0, -9, 20, 25, -39,
					-- layer=3 filter=21 channel=50
					-22, -28, -30, -53, 26, -22, 4, 19, 11,
					-- layer=3 filter=21 channel=51
					-19, 33, 0, 26, -27, -4, 0, -26, -17,
					-- layer=3 filter=21 channel=52
					9, -20, -33, 8, -16, -11, 4, -43, -39,
					-- layer=3 filter=21 channel=53
					-35, -6, 4, -71, -7, 47, -36, -24, 50,
					-- layer=3 filter=21 channel=54
					-5, 33, -7, -24, 1, 0, -21, -10, -28,
					-- layer=3 filter=21 channel=55
					12, -11, -16, 17, 31, -37, 24, -13, -1,
					-- layer=3 filter=21 channel=56
					1, -15, 24, -31, 12, -1, 3, 71, 30,
					-- layer=3 filter=21 channel=57
					-59, -47, -53, -13, -36, -43, -12, 10, -44,
					-- layer=3 filter=21 channel=58
					31, 23, 17, -23, -13, -2, 3, 25, 5,
					-- layer=3 filter=21 channel=59
					7, -32, 22, -36, 21, 31, -61, -7, 13,
					-- layer=3 filter=21 channel=60
					-6, -33, -8, -7, 25, 3, 9, -1, 15,
					-- layer=3 filter=21 channel=61
					12, 4, 26, -19, -8, 45, -34, 1, 63,
					-- layer=3 filter=21 channel=62
					33, 20, -4, -13, 3, -5, 5, -20, -13,
					-- layer=3 filter=21 channel=63
					1, 35, 19, 14, 6, -3, 10, 21, 23,
					-- layer=3 filter=22 channel=0
					-16, -6, -10, -14, 3, 2, -10, -1, -13,
					-- layer=3 filter=22 channel=1
					0, -9, -1, 0, -1, 0, -12, -11, 12,
					-- layer=3 filter=22 channel=2
					0, -8, -8, -2, -11, 11, 1, -11, 0,
					-- layer=3 filter=22 channel=3
					-2, 4, 5, -13, 11, 0, -7, -1, -11,
					-- layer=3 filter=22 channel=4
					-19, -17, -9, 7, -3, -4, 8, -3, -9,
					-- layer=3 filter=22 channel=5
					12, 0, 6, -10, 1, 4, -3, -5, 3,
					-- layer=3 filter=22 channel=6
					10, 12, -12, -6, -7, -11, -6, -6, 4,
					-- layer=3 filter=22 channel=7
					13, -7, 1, -13, -13, -8, -10, 3, -7,
					-- layer=3 filter=22 channel=8
					7, -2, -2, -7, -5, -13, -1, 5, -11,
					-- layer=3 filter=22 channel=9
					-6, -18, -20, -18, -21, -1, -9, 1, 5,
					-- layer=3 filter=22 channel=10
					11, -2, -10, -12, 9, -12, -16, -9, -14,
					-- layer=3 filter=22 channel=11
					-15, -17, 0, -2, 2, -4, -16, -15, -13,
					-- layer=3 filter=22 channel=12
					-9, 5, -14, -16, 5, -3, 0, -14, 1,
					-- layer=3 filter=22 channel=13
					-13, 6, -10, 3, -8, -7, -4, 13, -11,
					-- layer=3 filter=22 channel=14
					-8, -7, -15, -10, 5, -16, -1, 5, -16,
					-- layer=3 filter=22 channel=15
					-18, 3, -16, 9, -13, -19, 3, 2, 0,
					-- layer=3 filter=22 channel=16
					-11, -1, -8, -12, 1, -13, -15, -21, 0,
					-- layer=3 filter=22 channel=17
					11, 7, -19, 9, 13, 2, -13, -6, 7,
					-- layer=3 filter=22 channel=18
					-4, -5, -1, -12, 9, 4, -7, -8, -13,
					-- layer=3 filter=22 channel=19
					-7, 1, -14, 5, -1, 6, 7, -2, -14,
					-- layer=3 filter=22 channel=20
					13, -3, 8, -4, 1, -14, 3, -14, -6,
					-- layer=3 filter=22 channel=21
					-14, -3, -13, -10, -2, 0, 7, 2, -12,
					-- layer=3 filter=22 channel=22
					-10, -4, -1, 0, -1, 2, -11, -8, 6,
					-- layer=3 filter=22 channel=23
					14, -14, -12, -2, 4, -13, -7, 6, -2,
					-- layer=3 filter=22 channel=24
					-13, 8, -3, 5, -2, 4, -11, -13, -5,
					-- layer=3 filter=22 channel=25
					6, 6, -5, 5, 1, -2, 6, -12, 12,
					-- layer=3 filter=22 channel=26
					-11, -3, 10, 5, -12, 4, 5, -8, -7,
					-- layer=3 filter=22 channel=27
					6, -11, 5, 4, 9, 1, -3, -2, -14,
					-- layer=3 filter=22 channel=28
					7, -13, -1, 0, 9, -1, 8, -13, -11,
					-- layer=3 filter=22 channel=29
					-5, 9, 1, 7, 6, -10, -10, -16, -7,
					-- layer=3 filter=22 channel=30
					0, -11, 10, -13, 2, -14, 2, -12, 0,
					-- layer=3 filter=22 channel=31
					3, 13, 1, 6, -2, -3, 1, -11, 4,
					-- layer=3 filter=22 channel=32
					7, -15, 14, -1, -10, -5, -3, -3, -18,
					-- layer=3 filter=22 channel=33
					0, -10, 2, 6, 6, -10, -16, 8, 9,
					-- layer=3 filter=22 channel=34
					6, -19, 4, 10, -16, -21, -16, 0, -18,
					-- layer=3 filter=22 channel=35
					-11, -15, -19, 5, -4, -16, -6, -9, -13,
					-- layer=3 filter=22 channel=36
					-7, -9, 9, -20, 10, 4, 11, -1, 7,
					-- layer=3 filter=22 channel=37
					-2, -21, 1, 0, -6, 4, -14, -4, -1,
					-- layer=3 filter=22 channel=38
					-12, 6, -7, -11, 6, -11, -2, 5, 1,
					-- layer=3 filter=22 channel=39
					-8, 0, -4, 11, 11, 5, 2, 1, -4,
					-- layer=3 filter=22 channel=40
					-5, 6, 0, -20, -20, -4, 2, -19, 4,
					-- layer=3 filter=22 channel=41
					-11, -5, 8, 0, -13, 0, 13, -21, -1,
					-- layer=3 filter=22 channel=42
					-6, 0, -3, 9, -15, -15, 5, -6, 7,
					-- layer=3 filter=22 channel=43
					-3, -8, 10, -12, 14, -14, 1, 5, -8,
					-- layer=3 filter=22 channel=44
					-9, -3, 0, -2, -12, 11, 5, -9, 13,
					-- layer=3 filter=22 channel=45
					-10, 4, -8, 0, -7, 2, 0, 4, 3,
					-- layer=3 filter=22 channel=46
					-18, -8, -12, -1, 0, -19, -13, -7, -20,
					-- layer=3 filter=22 channel=47
					-15, -9, -11, 7, -7, 6, 3, -12, -15,
					-- layer=3 filter=22 channel=48
					-5, -9, 10, -6, -6, -18, -16, 3, -19,
					-- layer=3 filter=22 channel=49
					7, 1, -10, 0, -18, -2, 4, -11, -18,
					-- layer=3 filter=22 channel=50
					11, 12, -8, 0, 4, 2, -13, -1, -5,
					-- layer=3 filter=22 channel=51
					12, -11, 12, -3, 6, 5, -2, -13, -14,
					-- layer=3 filter=22 channel=52
					-16, -3, -10, -3, -6, 6, -4, 13, 0,
					-- layer=3 filter=22 channel=53
					-9, -16, -16, 6, 3, -18, 1, 0, -13,
					-- layer=3 filter=22 channel=54
					-18, -15, 12, -3, -21, 1, -10, 9, -8,
					-- layer=3 filter=22 channel=55
					0, 1, -9, -19, -4, 8, -1, 5, 6,
					-- layer=3 filter=22 channel=56
					5, -19, -1, -11, 7, -6, 5, -9, -8,
					-- layer=3 filter=22 channel=57
					3, -3, -11, -11, -10, -1, -9, -4, -21,
					-- layer=3 filter=22 channel=58
					5, -13, -9, -13, 3, 0, -15, 3, -2,
					-- layer=3 filter=22 channel=59
					4, -7, 1, -11, -18, -15, 7, 5, 0,
					-- layer=3 filter=22 channel=60
					4, 5, -13, 10, -15, -2, -17, -10, -11,
					-- layer=3 filter=22 channel=61
					-21, -12, -11, 0, -14, -1, -15, 7, 0,
					-- layer=3 filter=22 channel=62
					2, -5, -11, 6, -18, 5, -10, -14, 9,
					-- layer=3 filter=22 channel=63
					8, 5, -5, -1, 7, 9, 1, 13, -5,
					-- layer=3 filter=23 channel=0
					-18, -29, -58, -11, -35, -51, -45, -40, -25,
					-- layer=3 filter=23 channel=1
					-12, -13, 37, -32, 8, -7, -10, 18, -14,
					-- layer=3 filter=23 channel=2
					19, -4, 43, 0, -36, -10, 25, -9, -36,
					-- layer=3 filter=23 channel=3
					-10, -19, 7, 0, 72, -13, 6, 28, -43,
					-- layer=3 filter=23 channel=4
					-11, 13, -1, 6, 18, 24, -50, -40, 14,
					-- layer=3 filter=23 channel=5
					11, 1, 5, 20, 8, 2, -5, 12, -2,
					-- layer=3 filter=23 channel=6
					1, 9, 33, -8, 56, -8, 8, 32, 28,
					-- layer=3 filter=23 channel=7
					61, 14, -20, 40, -11, 5, -30, -17, 0,
					-- layer=3 filter=23 channel=8
					25, -1, 20, -25, 15, -6, -74, 18, -1,
					-- layer=3 filter=23 channel=9
					0, -22, 5, -48, 27, 41, -75, 48, 43,
					-- layer=3 filter=23 channel=10
					4, 5, -1, -12, 21, 24, -20, -17, -28,
					-- layer=3 filter=23 channel=11
					-10, -43, 8, 6, -56, 24, 20, -38, 50,
					-- layer=3 filter=23 channel=12
					-18, -34, -31, -6, 0, -42, 31, 92, 58,
					-- layer=3 filter=23 channel=13
					15, 1, 40, -23, 35, 4, -27, -15, -5,
					-- layer=3 filter=23 channel=14
					14, 14, 47, -10, -13, 16, 19, 48, -51,
					-- layer=3 filter=23 channel=15
					-18, -5, 18, -8, -38, 14, -16, -17, -20,
					-- layer=3 filter=23 channel=16
					-30, 25, 28, 0, -57, -56, 3, -23, -89,
					-- layer=3 filter=23 channel=17
					2, 39, 35, 0, 46, 19, -43, -56, -13,
					-- layer=3 filter=23 channel=18
					-16, -17, -39, 2, -13, -44, 38, -31, 6,
					-- layer=3 filter=23 channel=19
					16, -19, 37, -15, 19, -44, -6, -47, -29,
					-- layer=3 filter=23 channel=20
					-21, -6, -29, -18, -17, -39, 4, 6, -18,
					-- layer=3 filter=23 channel=21
					12, -31, 5, 15, -34, 37, -12, -38, 36,
					-- layer=3 filter=23 channel=22
					0, -12, -15, 0, 8, -1, -13, -16, 7,
					-- layer=3 filter=23 channel=23
					-28, -82, -58, 7, 19, 1, 2, 28, 37,
					-- layer=3 filter=23 channel=24
					32, -13, 12, 3, 8, -9, 11, -43, -11,
					-- layer=3 filter=23 channel=25
					-23, 14, -29, 15, 20, 13, -34, 3, 9,
					-- layer=3 filter=23 channel=26
					13, -6, -3, 9, 9, -1, 9, -12, -2,
					-- layer=3 filter=23 channel=27
					29, 2, 15, 26, 6, 3, 31, 3, -18,
					-- layer=3 filter=23 channel=28
					-7, -3, 6, -3, 9, 1, -3, -4, 1,
					-- layer=3 filter=23 channel=29
					10, -1, 34, -5, -72, 14, -38, -57, -3,
					-- layer=3 filter=23 channel=30
					14, 2, -8, 1, 2, -20, 8, 0, -4,
					-- layer=3 filter=23 channel=31
					-16, -21, 23, 35, 25, 35, -26, 3, 19,
					-- layer=3 filter=23 channel=32
					-6, 31, -35, -3, 8, 2, 0, 2, 21,
					-- layer=3 filter=23 channel=33
					-4, -12, -1, 22, -48, -19, 23, 13, -33,
					-- layer=3 filter=23 channel=34
					-24, 19, 16, 14, 39, 18, 31, 6, 23,
					-- layer=3 filter=23 channel=35
					5, 2, -20, 34, 23, -2, 17, -4, 7,
					-- layer=3 filter=23 channel=36
					-20, -3, -2, 24, 14, -8, 72, 15, -29,
					-- layer=3 filter=23 channel=37
					-13, -45, 31, -15, 72, 37, 17, 30, 20,
					-- layer=3 filter=23 channel=38
					-22, -8, -15, 5, -22, -4, 18, 17, 18,
					-- layer=3 filter=23 channel=39
					2, -9, -6, -7, -6, 0, -5, 8, 5,
					-- layer=3 filter=23 channel=40
					-28, -22, -54, -65, -54, -69, 5, -4, -18,
					-- layer=3 filter=23 channel=41
					-3, 1, 9, 18, 7, 56, -35, -22, 6,
					-- layer=3 filter=23 channel=42
					26, 12, 30, 11, 47, 11, 8, -48, 17,
					-- layer=3 filter=23 channel=43
					-1, 12, 8, 10, 36, -64, 14, -5, -23,
					-- layer=3 filter=23 channel=44
					10, -5, -2, -4, 6, 0, 2, -6, -6,
					-- layer=3 filter=23 channel=45
					42, -5, -3, -8, 0, -13, -32, -9, -33,
					-- layer=3 filter=23 channel=46
					-25, -7, -26, 45, 10, -4, -36, 20, 41,
					-- layer=3 filter=23 channel=47
					8, 1, 15, -1, 28, -15, 10, 1, 18,
					-- layer=3 filter=23 channel=48
					17, 39, 4, 4, -81, -53, 0, 1, -10,
					-- layer=3 filter=23 channel=49
					-93, -58, -30, -42, -74, 54, -24, -12, 39,
					-- layer=3 filter=23 channel=50
					-34, -6, 23, -15, 37, 1, 17, 45, 42,
					-- layer=3 filter=23 channel=51
					17, 16, -17, -31, -50, -51, -6, -47, 0,
					-- layer=3 filter=23 channel=52
					-7, 12, 7, 12, 11, 10, 2, -30, -71,
					-- layer=3 filter=23 channel=53
					49, -25, -6, 7, -26, -39, -64, 5, 24,
					-- layer=3 filter=23 channel=54
					-8, -1, -23, -12, 34, -21, -38, 2, -44,
					-- layer=3 filter=23 channel=55
					-12, -12, 4, -12, -16, -22, 9, 1, -30,
					-- layer=3 filter=23 channel=56
					32, -6, -9, -18, -23, -32, -42, -2, 3,
					-- layer=3 filter=23 channel=57
					-33, 13, -8, 1, -15, -67, 39, -13, -44,
					-- layer=3 filter=23 channel=58
					-9, -20, -27, -41, -25, -13, -10, -39, -8,
					-- layer=3 filter=23 channel=59
					12, -3, 0, 9, 4, 17, -23, 12, 76,
					-- layer=3 filter=23 channel=60
					-21, 5, -23, 2, 45, 2, 29, 10, 4,
					-- layer=3 filter=23 channel=61
					6, -2, -45, 25, -3, -31, -23, 0, 25,
					-- layer=3 filter=23 channel=62
					0, -11, -17, 2, -37, -36, -29, 30, -22,
					-- layer=3 filter=23 channel=63
					14, 2, -11, -9, 6, 1, 9, 0, -9,
					-- layer=3 filter=24 channel=0
					-18, -38, -20, 9, -24, -21, -56, -22, -48,
					-- layer=3 filter=24 channel=1
					17, 0, -9, 0, -20, -12, 15, 15, 27,
					-- layer=3 filter=24 channel=2
					18, 32, 19, -30, 15, 6, 10, 0, 22,
					-- layer=3 filter=24 channel=3
					6, 2, -7, -26, 35, -3, 23, 76, 24,
					-- layer=3 filter=24 channel=4
					-10, -2, 26, 8, 11, 8, -31, -32, -55,
					-- layer=3 filter=24 channel=5
					20, 1, -1, 12, 22, 5, 21, 23, 10,
					-- layer=3 filter=24 channel=6
					-3, 28, 0, 30, 65, -17, 26, 49, 10,
					-- layer=3 filter=24 channel=7
					21, -2, 26, -35, 16, 19, 29, 50, 61,
					-- layer=3 filter=24 channel=8
					24, 72, 24, 0, 49, 32, -38, 35, 7,
					-- layer=3 filter=24 channel=9
					2, -6, -10, 35, 11, 45, -24, -11, -14,
					-- layer=3 filter=24 channel=10
					-20, 6, -6, 4, 14, 47, 17, 15, 36,
					-- layer=3 filter=24 channel=11
					-32, -46, -26, -36, -35, -72, -14, 13, -36,
					-- layer=3 filter=24 channel=12
					12, 4, 6, 6, 20, 17, 33, 37, 25,
					-- layer=3 filter=24 channel=13
					29, 22, -1, -7, -10, -54, 34, 15, 0,
					-- layer=3 filter=24 channel=14
					33, 35, 35, 10, 36, -9, 2, -3, 24,
					-- layer=3 filter=24 channel=15
					2, -11, -21, -2, 9, -14, 0, 17, 21,
					-- layer=3 filter=24 channel=16
					13, 12, 15, -21, -14, 10, -6, -19, 6,
					-- layer=3 filter=24 channel=17
					20, 24, 32, -34, -2, -5, 0, -50, 15,
					-- layer=3 filter=24 channel=18
					-70, 23, -74, -39, -10, -11, -31, -44, -71,
					-- layer=3 filter=24 channel=19
					22, -14, 14, -46, 23, -72, -4, 43, 6,
					-- layer=3 filter=24 channel=20
					-5, -36, -17, -16, -47, -7, 32, 27, -24,
					-- layer=3 filter=24 channel=21
					-33, 1, 63, 0, -28, -23, 18, -3, -14,
					-- layer=3 filter=24 channel=22
					-8, -7, 6, 8, 5, 0, 6, 13, 3,
					-- layer=3 filter=24 channel=23
					-4, -32, -93, -85, -50, -21, -10, -14, -20,
					-- layer=3 filter=24 channel=24
					35, 38, 14, -5, 18, -24, -10, -20, -38,
					-- layer=3 filter=24 channel=25
					8, 19, 29, 41, 6, 8, 7, -7, 8,
					-- layer=3 filter=24 channel=26
					10, 4, -6, -8, -4, 0, -7, 0, 8,
					-- layer=3 filter=24 channel=27
					27, 33, -5, -34, -26, -11, -17, -30, -24,
					-- layer=3 filter=24 channel=28
					7, 13, 12, -8, 1, -13, 2, -9, -1,
					-- layer=3 filter=24 channel=29
					-7, 66, -7, -23, -1, -27, -42, -56, -52,
					-- layer=3 filter=24 channel=30
					2, -10, 9, 13, -8, 9, -12, 0, -9,
					-- layer=3 filter=24 channel=31
					9, 18, -38, 21, -25, -39, -14, -5, 27,
					-- layer=3 filter=24 channel=32
					-22, -67, -32, 12, 37, 19, 16, -15, 19,
					-- layer=3 filter=24 channel=33
					-19, -14, 15, 30, -15, -20, 10, -8, 18,
					-- layer=3 filter=24 channel=34
					-41, 3, 6, 33, 2, -6, -16, -66, -85,
					-- layer=3 filter=24 channel=35
					-21, -2, -10, -29, -25, -22, -10, -10, -16,
					-- layer=3 filter=24 channel=36
					-3, 3, 2, 14, -20, -7, -2, -14, -3,
					-- layer=3 filter=24 channel=37
					31, 2, -18, -7, -30, -47, 13, 22, 4,
					-- layer=3 filter=24 channel=38
					-37, -5, -18, 0, 38, 50, 19, 53, 26,
					-- layer=3 filter=24 channel=39
					-4, -3, 4, 9, 3, 5, -8, 1, 5,
					-- layer=3 filter=24 channel=40
					-32, -29, -23, -14, -18, -5, -3, -4, -54,
					-- layer=3 filter=24 channel=41
					0, 56, 19, -18, -7, 2, 7, 8, 10,
					-- layer=3 filter=24 channel=42
					4, 30, 31, -31, 22, -8, -1, 46, 36,
					-- layer=3 filter=24 channel=43
					-16, 30, -18, -51, 15, -11, 11, 60, 16,
					-- layer=3 filter=24 channel=44
					-5, 8, 12, -1, -5, 0, 0, 3, 12,
					-- layer=3 filter=24 channel=45
					23, 24, 15, -2, 17, -11, -3, 9, 19,
					-- layer=3 filter=24 channel=46
					-16, -37, 7, 21, 55, 41, -12, -10, 4,
					-- layer=3 filter=24 channel=47
					-12, -2, -23, -2, -5, 5, 0, 11, 2,
					-- layer=3 filter=24 channel=48
					-10, -18, 10, 3, -19, 53, -20, 25, -16,
					-- layer=3 filter=24 channel=49
					-48, -54, -6, -16, -17, -52, -12, -32, -5,
					-- layer=3 filter=24 channel=50
					45, -6, -11, -13, -18, -43, -47, 48, 1,
					-- layer=3 filter=24 channel=51
					2, 16, -16, -5, -36, -32, 23, -16, 16,
					-- layer=3 filter=24 channel=52
					22, 13, -8, -11, -12, 2, -36, -57, -12,
					-- layer=3 filter=24 channel=53
					0, 26, 22, 27, -36, -29, -44, 50, 27,
					-- layer=3 filter=24 channel=54
					-18, 2, -6, -30, 24, 25, 14, 46, 9,
					-- layer=3 filter=24 channel=55
					-9, -27, -11, -20, 0, 0, 3, 46, -9,
					-- layer=3 filter=24 channel=56
					-13, -34, 8, -24, 22, 15, -28, 13, 11,
					-- layer=3 filter=24 channel=57
					4, -22, -4, -2, -40, 3, -27, -67, -36,
					-- layer=3 filter=24 channel=58
					-5, 18, 0, -63, -22, 2, 30, 44, -2,
					-- layer=3 filter=24 channel=59
					-22, -54, -21, -19, 43, 17, -13, -22, -19,
					-- layer=3 filter=24 channel=60
					-14, -18, -39, -18, -52, -37, -16, -30, 10,
					-- layer=3 filter=24 channel=61
					-40, -14, -33, 20, 34, 98, 10, -9, 3,
					-- layer=3 filter=24 channel=62
					-2, -20, -8, 34, 21, 11, -54, 0, -33,
					-- layer=3 filter=24 channel=63
					11, 19, 16, -1, 35, -12, 0, -4, 11,
					-- layer=3 filter=25 channel=0
					-3, -7, 7, -23, 19, 14, 1, 3, -36,
					-- layer=3 filter=25 channel=1
					-40, -13, -20, 13, -54, 4, 39, -35, 56,
					-- layer=3 filter=25 channel=2
					0, 12, 5, 31, -22, -28, 28, 17, 19,
					-- layer=3 filter=25 channel=3
					-11, -26, -6, -18, -27, -1, 51, 22, 53,
					-- layer=3 filter=25 channel=4
					-16, -27, -6, -64, -54, -13, -4, 7, 16,
					-- layer=3 filter=25 channel=5
					-2, 6, 4, 6, 12, 12, 19, -6, 0,
					-- layer=3 filter=25 channel=6
					-28, 3, -8, -1, -50, -12, 23, -45, 16,
					-- layer=3 filter=25 channel=7
					-27, -23, -37, -14, 8, -1, 25, -9, -20,
					-- layer=3 filter=25 channel=8
					-5, 14, 0, -7, -37, -12, 36, -12, 35,
					-- layer=3 filter=25 channel=9
					8, 10, 35, 13, -3, 27, 10, -51, -8,
					-- layer=3 filter=25 channel=10
					-11, 7, -4, 48, -4, -12, 12, -9, 20,
					-- layer=3 filter=25 channel=11
					32, 32, -14, -15, 7, 31, 3, -5, -3,
					-- layer=3 filter=25 channel=12
					1, 9, 5, -20, 31, -5, -3, -81, -10,
					-- layer=3 filter=25 channel=13
					8, 36, -34, 5, -10, -28, 22, -2, 13,
					-- layer=3 filter=25 channel=14
					-13, 41, -19, 2, 12, -13, 44, -19, 2,
					-- layer=3 filter=25 channel=15
					-29, 10, -37, 0, -2, -35, 13, 18, 4,
					-- layer=3 filter=25 channel=16
					-17, -29, -10, -8, 4, -28, -20, 17, -24,
					-- layer=3 filter=25 channel=17
					-4, 16, 5, -5, -35, 3, -7, -25, 0,
					-- layer=3 filter=25 channel=18
					-22, 0, -10, 1, 4, 5, -38, 45, -62,
					-- layer=3 filter=25 channel=19
					-20, 25, 21, 24, -39, -26, 6, 31, -14,
					-- layer=3 filter=25 channel=20
					-7, 20, 2, 20, -4, -15, 13, 0, -9,
					-- layer=3 filter=25 channel=21
					-26, 17, -4, -21, 36, 44, -18, 2, 33,
					-- layer=3 filter=25 channel=22
					3, 2, -11, 6, 1, -11, -6, -6, 2,
					-- layer=3 filter=25 channel=23
					26, 24, 21, 19, 39, 0, 5, 34, -62,
					-- layer=3 filter=25 channel=24
					-20, 30, 14, -52, -32, 13, -36, 35, 12,
					-- layer=3 filter=25 channel=25
					18, -35, -28, -21, -78, -60, -17, -6, -31,
					-- layer=3 filter=25 channel=26
					-12, 8, 9, 5, 11, 16, -10, 2, -4,
					-- layer=3 filter=25 channel=27
					12, 49, 19, -3, -5, 11, 42, 26, 25,
					-- layer=3 filter=25 channel=28
					13, -3, -15, 12, 14, 6, 1, -1, 4,
					-- layer=3 filter=25 channel=29
					-43, 27, -22, -18, 6, -24, -21, 18, -25,
					-- layer=3 filter=25 channel=30
					11, 16, 0, -2, -8, 6, 5, -15, -2,
					-- layer=3 filter=25 channel=31
					4, 12, 25, 71, 33, 41, 14, -43, -48,
					-- layer=3 filter=25 channel=32
					17, -16, 79, 0, 43, 14, -9, -42, -15,
					-- layer=3 filter=25 channel=33
					15, 5, -15, 0, -12, 9, -4, -14, 33,
					-- layer=3 filter=25 channel=34
					8, -1, -35, -35, -40, -41, -23, -20, -48,
					-- layer=3 filter=25 channel=35
					36, 16, 35, -26, -90, -47, 8, 5, 6,
					-- layer=3 filter=25 channel=36
					-4, 26, -14, 1, -15, -21, 1, -33, 22,
					-- layer=3 filter=25 channel=37
					26, 11, 12, 2, -46, -1, 79, -36, 0,
					-- layer=3 filter=25 channel=38
					-27, 8, -15, 46, 18, 14, 13, 26, 18,
					-- layer=3 filter=25 channel=39
					-8, -4, 7, 0, -8, -2, 2, 13, -10,
					-- layer=3 filter=25 channel=40
					-10, 10, -3, 65, 51, 13, -15, 54, -26,
					-- layer=3 filter=25 channel=41
					-23, -12, -55, 27, -7, -5, 57, 32, -4,
					-- layer=3 filter=25 channel=42
					11, 18, -4, 32, -14, -11, 35, 22, 4,
					-- layer=3 filter=25 channel=43
					-49, -39, -90, -1, 32, -22, 13, 30, 40,
					-- layer=3 filter=25 channel=44
					10, 5, -7, 8, -13, 7, 0, -4, -6,
					-- layer=3 filter=25 channel=45
					-36, 3, -30, 8, -44, -15, 59, -22, 61,
					-- layer=3 filter=25 channel=46
					-6, -8, 14, -5, -11, -4, -11, -21, -41,
					-- layer=3 filter=25 channel=47
					-17, 34, 3, -4, -29, -11, 15, 28, 32,
					-- layer=3 filter=25 channel=48
					-27, 38, -7, -2, 39, 27, 2, -8, 19,
					-- layer=3 filter=25 channel=49
					41, -28, 4, 12, 32, -33, -5, 0, -30,
					-- layer=3 filter=25 channel=50
					-16, 12, -11, -46, 14, -2, -22, 33, -24,
					-- layer=3 filter=25 channel=51
					-17, -47, -67, 2, 30, 2, -2, 8, 0,
					-- layer=3 filter=25 channel=52
					13, 1, -22, -2, -17, -18, -19, -8, 47,
					-- layer=3 filter=25 channel=53
					-72, 29, 8, -93, 24, 67, 14, 27, 49,
					-- layer=3 filter=25 channel=54
					-10, -21, -44, -6, -14, -40, 39, -14, 35,
					-- layer=3 filter=25 channel=55
					-15, -21, -27, 45, 39, -2, 14, -3, 28,
					-- layer=3 filter=25 channel=56
					-41, -5, -5, -2, -4, 13, 16, -2, 18,
					-- layer=3 filter=25 channel=57
					-19, 11, 52, -53, -1, 44, -37, -31, -16,
					-- layer=3 filter=25 channel=58
					12, -32, -50, -4, 27, -16, 19, 48, -10,
					-- layer=3 filter=25 channel=59
					17, 29, 28, -26, 23, 2, 4, -40, -18,
					-- layer=3 filter=25 channel=60
					24, -40, -6, -34, -53, -37, 1, 13, -21,
					-- layer=3 filter=25 channel=61
					24, 18, 6, -2, 4, -17, 12, -16, 27,
					-- layer=3 filter=25 channel=62
					-11, 4, -14, -3, 10, 6, -38, -23, 55,
					-- layer=3 filter=25 channel=63
					-1, 1, -12, -5, -11, -17, -2, 5, 1,
					-- layer=3 filter=26 channel=0
					-22, 36, 29, -50, -9, 0, -26, -46, -52,
					-- layer=3 filter=26 channel=1
					0, -3, -2, -35, -32, -29, 9, -9, 8,
					-- layer=3 filter=26 channel=2
					-13, -15, -20, -16, -49, -31, -26, -21, -12,
					-- layer=3 filter=26 channel=3
					43, -6, 19, 3, -39, -6, 6, 1, -3,
					-- layer=3 filter=26 channel=4
					-8, 3, 0, 3, 10, 13, 33, 19, 13,
					-- layer=3 filter=26 channel=5
					12, 14, 26, 4, 32, 13, 26, 7, 8,
					-- layer=3 filter=26 channel=6
					0, -2, 23, -23, -6, 19, -5, -14, 32,
					-- layer=3 filter=26 channel=7
					0, 26, 17, 15, -11, -29, 20, 3, -23,
					-- layer=3 filter=26 channel=8
					-10, 1, 16, 66, 0, 49, 7, -5, 0,
					-- layer=3 filter=26 channel=9
					4, 0, -10, 29, -13, -23, 0, -40, -41,
					-- layer=3 filter=26 channel=10
					38, -7, 15, 25, 13, 32, -17, 23, 48,
					-- layer=3 filter=26 channel=11
					-17, -2, -33, -32, -10, 4, -6, -1, 4,
					-- layer=3 filter=26 channel=12
					25, 4, 20, -48, -11, -60, 12, -7, -56,
					-- layer=3 filter=26 channel=13
					-55, -15, 0, 11, -30, -17, 18, 19, -4,
					-- layer=3 filter=26 channel=14
					-4, 16, 13, 17, 12, 43, 27, 34, 28,
					-- layer=3 filter=26 channel=15
					0, 14, -12, -9, 39, 3, 38, 10, 35,
					-- layer=3 filter=26 channel=16
					61, -22, -42, 14, -43, 48, 19, 52, 5,
					-- layer=3 filter=26 channel=17
					25, 28, -7, -11, 0, 4, 48, 48, 25,
					-- layer=3 filter=26 channel=18
					-21, 16, 22, -7, -13, 31, 24, 1, 43,
					-- layer=3 filter=26 channel=19
					-2, -16, -15, 5, -24, -4, 25, 24, 21,
					-- layer=3 filter=26 channel=20
					-33, -5, -5, 6, 9, -10, -32, -11, -38,
					-- layer=3 filter=26 channel=21
					-38, -46, -30, -28, 24, -52, 35, -55, -33,
					-- layer=3 filter=26 channel=22
					7, 3, -5, 13, -5, 0, 2, -11, -12,
					-- layer=3 filter=26 channel=23
					-15, -21, -30, -5, -1, -10, 9, -6, -46,
					-- layer=3 filter=26 channel=24
					-27, -10, -26, -22, -23, -10, -37, 0, 27,
					-- layer=3 filter=26 channel=25
					-38, 5, -4, -22, 4, 9, 24, 2, 29,
					-- layer=3 filter=26 channel=26
					-1, -6, 9, 8, 8, -15, -4, 8, 6,
					-- layer=3 filter=26 channel=27
					22, 12, 8, -1, -30, 0, 22, -1, -5,
					-- layer=3 filter=26 channel=28
					12, -6, 6, -14, -9, 11, 13, 10, -3,
					-- layer=3 filter=26 channel=29
					9, -13, 25, 29, -49, -19, 21, -57, 0,
					-- layer=3 filter=26 channel=30
					-3, 2, -2, -9, 7, -12, 11, 3, -5,
					-- layer=3 filter=26 channel=31
					17, 5, 18, 15, -15, -75, -5, 52, -35,
					-- layer=3 filter=26 channel=32
					4, -8, -18, -32, -20, -78, -19, 9, -31,
					-- layer=3 filter=26 channel=33
					-31, -7, 11, -21, 20, -29, -20, -8, -27,
					-- layer=3 filter=26 channel=34
					23, 14, -5, 32, 4, 14, 42, 5, 48,
					-- layer=3 filter=26 channel=35
					7, 0, 11, 14, 14, 22, 43, 17, 45,
					-- layer=3 filter=26 channel=36
					-23, -15, -33, -8, 0, -13, -15, -25, 4,
					-- layer=3 filter=26 channel=37
					-8, -6, -10, 40, -6, -24, 25, -10, -7,
					-- layer=3 filter=26 channel=38
					3, -29, -7, 30, 2, 4, 64, 39, 34,
					-- layer=3 filter=26 channel=39
					2, -10, -10, 3, -11, -5, 7, 16, 11,
					-- layer=3 filter=26 channel=40
					-31, 6, -32, 21, 42, 55, 7, -15, 11,
					-- layer=3 filter=26 channel=41
					14, -17, -11, 51, 17, -1, 25, 27, 47,
					-- layer=3 filter=26 channel=42
					4, 9, -3, -20, -17, -21, 3, 7, -13,
					-- layer=3 filter=26 channel=43
					5, 12, 32, -6, -27, 39, 42, 0, 39,
					-- layer=3 filter=26 channel=44
					-6, 1, -7, 9, 4, 3, -4, -13, 13,
					-- layer=3 filter=26 channel=45
					-50, -31, -32, -1, -25, -33, 40, -16, -19,
					-- layer=3 filter=26 channel=46
					-4, 29, 26, -36, 14, 0, -26, 17, 17,
					-- layer=3 filter=26 channel=47
					-32, -59, -38, -24, 73, -35, -3, -26, -22,
					-- layer=3 filter=26 channel=48
					24, 22, -16, -3, 26, 53, 2, 70, 4,
					-- layer=3 filter=26 channel=49
					-53, -36, -74, 28, 6, -34, -11, 18, -4,
					-- layer=3 filter=26 channel=50
					-13, -6, -3, -14, 19, -4, 37, 7, 29,
					-- layer=3 filter=26 channel=51
					4, -19, -4, 7, -7, 0, 30, -32, -5,
					-- layer=3 filter=26 channel=52
					-66, 16, -69, -17, -14, -13, -11, -27, -19,
					-- layer=3 filter=26 channel=53
					-39, 19, -17, 49, 10, 49, 32, 25, -50,
					-- layer=3 filter=26 channel=54
					21, -11, -7, -9, 16, -17, -5, -27, -4,
					-- layer=3 filter=26 channel=55
					8, -17, 5, -32, -80, -52, -19, 20, -10,
					-- layer=3 filter=26 channel=56
					-21, -8, -36, -25, -14, -46, 22, 6, -34,
					-- layer=3 filter=26 channel=57
					-73, -48, -35, 12, -22, 33, -56, -22, -4,
					-- layer=3 filter=26 channel=58
					6, 13, -15, 29, 21, 4, -3, 21, -5,
					-- layer=3 filter=26 channel=59
					-39, 24, -7, -13, 66, -9, -16, 15, -50,
					-- layer=3 filter=26 channel=60
					3, -8, 7, 28, 7, 6, 46, -4, 31,
					-- layer=3 filter=26 channel=61
					9, -18, -56, -4, 29, -24, 59, 56, 4,
					-- layer=3 filter=26 channel=62
					-13, -14, -10, 17, 51, 47, 51, -29, 8,
					-- layer=3 filter=26 channel=63
					2, 15, 7, 13, -4, 4, 26, 15, 1,
					-- layer=3 filter=27 channel=0
					-15, 2, -50, -27, 0, -2, 10, 32, -11,
					-- layer=3 filter=27 channel=1
					-22, -19, -40, -14, 1, 20, -20, -2, -11,
					-- layer=3 filter=27 channel=2
					-18, -35, 58, -45, -53, -6, -24, -34, -39,
					-- layer=3 filter=27 channel=3
					22, -16, 24, 11, -58, 28, -4, -28, 0,
					-- layer=3 filter=27 channel=4
					-15, 16, 21, -2, -36, 3, -23, 24, 0,
					-- layer=3 filter=27 channel=5
					-11, 21, 10, 24, 8, 20, 12, 13, 11,
					-- layer=3 filter=27 channel=6
					53, -12, 30, -13, -70, -2, 27, 0, 52,
					-- layer=3 filter=27 channel=7
					-58, 6, 25, -14, 16, 10, -15, -2, 5,
					-- layer=3 filter=27 channel=8
					-3, 24, 10, 40, 3, 15, 47, 23, 0,
					-- layer=3 filter=27 channel=9
					28, 42, 26, -26, 14, 6, 16, -36, 5,
					-- layer=3 filter=27 channel=10
					-72, -17, 12, -66, 6, -36, 3, -25, -26,
					-- layer=3 filter=27 channel=11
					0, 47, 13, 9, 9, 23, -7, 14, 24,
					-- layer=3 filter=27 channel=12
					-37, -21, -31, -66, -10, 14, 0, 53, 32,
					-- layer=3 filter=27 channel=13
					-10, -31, -26, 41, 13, 34, 0, 0, 17,
					-- layer=3 filter=27 channel=14
					-17, -19, 60, 7, -2, 37, -15, 37, 79,
					-- layer=3 filter=27 channel=15
					-27, 5, -18, -4, 30, -3, 7, 8, 30,
					-- layer=3 filter=27 channel=16
					30, -29, -6, 51, -15, -5, -26, 66, -7,
					-- layer=3 filter=27 channel=17
					14, 7, 3, 20, -6, 36, 4, 3, 30,
					-- layer=3 filter=27 channel=18
					-2, 0, 22, 20, -6, 20, -5, -1, -10,
					-- layer=3 filter=27 channel=19
					24, 18, 15, 48, -30, 46, -12, -30, 18,
					-- layer=3 filter=27 channel=20
					-59, -33, 31, 9, -14, -20, -22, 4, -12,
					-- layer=3 filter=27 channel=21
					80, 5, -5, 3, -15, -47, -3, -24, 0,
					-- layer=3 filter=27 channel=22
					-10, 6, 12, 8, 11, 7, 13, -2, -8,
					-- layer=3 filter=27 channel=23
					59, 61, 26, 24, 10, 11, 40, -9, 1,
					-- layer=3 filter=27 channel=24
					-64, -50, -54, 21, -10, 26, 10, -4, 6,
					-- layer=3 filter=27 channel=25
					29, -16, -29, -20, -41, -53, -49, -42, -38,
					-- layer=3 filter=27 channel=26
					1, 3, -8, 6, -3, 7, 3, -2, -6,
					-- layer=3 filter=27 channel=27
					-10, -9, -11, -2, -7, 7, -2, 12, 31,
					-- layer=3 filter=27 channel=28
					0, 2, -5, 11, -5, -1, 9, -3, -9,
					-- layer=3 filter=27 channel=29
					-8, -22, 19, -5, 21, 40, 22, 27, 36,
					-- layer=3 filter=27 channel=30
					-3, 0, -1, -12, -11, -20, 10, -6, -12,
					-- layer=3 filter=27 channel=31
					38, 34, 3, -12, -2, 14, -26, 33, -3,
					-- layer=3 filter=27 channel=32
					-30, -9, 13, -68, 41, -4, -26, 25, -11,
					-- layer=3 filter=27 channel=33
					-23, 46, 76, -47, 7, 27, -22, -10, -13,
					-- layer=3 filter=27 channel=34
					-19, 38, 8, -10, -4, -6, 9, 3, -5,
					-- layer=3 filter=27 channel=35
					33, -24, -8, 25, -22, 15, -5, -10, -3,
					-- layer=3 filter=27 channel=36
					-53, 24, 36, -25, -23, 0, -2, 48, 43,
					-- layer=3 filter=27 channel=37
					38, 8, 26, 17, -15, -7, 26, 0, -29,
					-- layer=3 filter=27 channel=38
					28, -26, 4, 41, 23, 23, -16, -20, 12,
					-- layer=3 filter=27 channel=39
					12, -10, -5, -12, 3, 3, 0, 3, -9,
					-- layer=3 filter=27 channel=40
					21, 35, 13, 18, 31, 23, 10, -9, 6,
					-- layer=3 filter=27 channel=41
					23, -29, -60, 25, -18, -10, 24, -41, -44,
					-- layer=3 filter=27 channel=42
					23, 6, -6, 54, 5, 38, 28, 14, -12,
					-- layer=3 filter=27 channel=43
					3, -25, 48, 5, 13, 52, 13, 24, 44,
					-- layer=3 filter=27 channel=44
					0, 14, 10, 14, 6, 13, 2, 2, -4,
					-- layer=3 filter=27 channel=45
					2, 6, -11, 36, -47, 17, -17, 13, -4,
					-- layer=3 filter=27 channel=46
					-1, 19, 12, -23, 4, -26, -13, 5, -6,
					-- layer=3 filter=27 channel=47
					-20, -3, -10, -26, 51, 3, -19, 3, -2,
					-- layer=3 filter=27 channel=48
					-29, -31, 9, -9, 71, 48, 22, 44, 54,
					-- layer=3 filter=27 channel=49
					9, 11, -6, 14, 8, -10, 10, 10, -2,
					-- layer=3 filter=27 channel=50
					19, -16, -6, 10, -16, -7, 30, 22, 25,
					-- layer=3 filter=27 channel=51
					6, 56, 32, -4, 17, 47, 32, 37, -2,
					-- layer=3 filter=27 channel=52
					-33, -46, -57, 40, -39, 0, 15, -19, 0,
					-- layer=3 filter=27 channel=53
					18, 46, 0, 12, 15, -2, 46, -16, 12,
					-- layer=3 filter=27 channel=54
					22, 20, -21, -47, -31, -12, -15, -5, -13,
					-- layer=3 filter=27 channel=55
					-13, 0, -2, -29, 5, -25, -24, -11, -11,
					-- layer=3 filter=27 channel=56
					-46, -42, -47, -39, 6, -10, 8, -43, 6,
					-- layer=3 filter=27 channel=57
					-59, 27, 52, -53, 34, 9, 1, -10, -3,
					-- layer=3 filter=27 channel=58
					-23, -14, 18, -9, 52, -2, 7, -10, -9,
					-- layer=3 filter=27 channel=59
					-1, 2, -36, 24, -7, 5, -7, 13, -69,
					-- layer=3 filter=27 channel=60
					-21, 2, 19, 9, -11, -6, -5, -12, -16,
					-- layer=3 filter=27 channel=61
					18, -8, -13, -23, 19, -87, 0, 41, -12,
					-- layer=3 filter=27 channel=62
					-37, -10, -1, -41, 20, 21, -6, -10, 2,
					-- layer=3 filter=27 channel=63
					15, -11, 16, 4, 10, -13, -8, -8, 21,
					-- layer=3 filter=28 channel=0
					-8, 0, -9, -13, -14, -25, -26, -16, 0,
					-- layer=3 filter=28 channel=1
					-12, -20, 0, 2, -16, -3, -17, -5, -8,
					-- layer=3 filter=28 channel=2
					-2, 14, -4, -3, 9, 9, 16, -1, 13,
					-- layer=3 filter=28 channel=3
					-15, -12, -19, -18, 2, -11, -14, 0, 0,
					-- layer=3 filter=28 channel=4
					-1, -24, 3, 4, -19, -22, -17, 10, -8,
					-- layer=3 filter=28 channel=5
					-13, -10, -14, -12, 6, -4, -8, 3, -12,
					-- layer=3 filter=28 channel=6
					6, -21, 1, -10, -19, -11, 5, 0, -20,
					-- layer=3 filter=28 channel=7
					4, -20, -13, -4, -13, -14, -16, 0, -19,
					-- layer=3 filter=28 channel=8
					-22, -25, -24, -17, 8, -6, -19, -1, -6,
					-- layer=3 filter=28 channel=9
					-23, 0, -7, -15, -14, -9, -24, 3, -2,
					-- layer=3 filter=28 channel=10
					-18, 2, -26, -21, -10, -18, -1, 7, -1,
					-- layer=3 filter=28 channel=11
					-2, 10, 0, 2, 18, -27, -7, -12, -18,
					-- layer=3 filter=28 channel=12
					10, 8, -11, -19, -17, 1, -9, -16, -8,
					-- layer=3 filter=28 channel=13
					15, 1, 1, 0, -4, 11, -9, -3, -14,
					-- layer=3 filter=28 channel=14
					6, 0, -15, 0, -14, 6, -10, -6, -8,
					-- layer=3 filter=28 channel=15
					-12, 3, -8, -17, 4, -11, -18, -8, -8,
					-- layer=3 filter=28 channel=16
					11, 4, 2, -4, -6, 8, -9, 5, 12,
					-- layer=3 filter=28 channel=17
					-12, -1, -6, -3, -4, 5, -7, -12, -15,
					-- layer=3 filter=28 channel=18
					-1, 3, 6, -4, -3, -10, -10, 4, -6,
					-- layer=3 filter=28 channel=19
					-14, -2, -1, -17, -15, -21, -15, -15, 2,
					-- layer=3 filter=28 channel=20
					13, 16, -4, 7, -13, 9, -3, 2, 4,
					-- layer=3 filter=28 channel=21
					0, 9, -16, -16, -13, -14, 5, 2, -2,
					-- layer=3 filter=28 channel=22
					-5, -14, 11, 6, -3, -14, 9, 6, 5,
					-- layer=3 filter=28 channel=23
					-11, 2, -15, -10, -12, 2, -4, -13, -23,
					-- layer=3 filter=28 channel=24
					-26, -13, 0, -13, 2, -15, -12, -21, -14,
					-- layer=3 filter=28 channel=25
					0, -3, -8, -10, -3, 9, 0, 4, 8,
					-- layer=3 filter=28 channel=26
					-5, 0, -8, -12, -3, -6, 3, 10, -5,
					-- layer=3 filter=28 channel=27
					-15, -9, -6, 6, 0, -3, 3, 2, -17,
					-- layer=3 filter=28 channel=28
					-11, -16, -15, 12, 12, 4, 1, 12, -1,
					-- layer=3 filter=28 channel=29
					-24, 6, -17, -15, -16, -25, -3, -8, 0,
					-- layer=3 filter=28 channel=30
					13, 2, 6, 11, 2, -6, 3, -9, -8,
					-- layer=3 filter=28 channel=31
					-5, 10, 17, -16, 3, -5, 0, -3, 2,
					-- layer=3 filter=28 channel=32
					12, 1, -2, -14, 6, -19, -6, -10, -18,
					-- layer=3 filter=28 channel=33
					-18, -10, -7, -1, -13, -16, 6, 0, -17,
					-- layer=3 filter=28 channel=34
					-3, -21, -15, -20, -18, -7, -10, -18, -5,
					-- layer=3 filter=28 channel=35
					-12, -4, 7, -9, -13, -5, -8, -14, -14,
					-- layer=3 filter=28 channel=36
					-16, -9, -13, 4, -13, 8, 0, -3, 1,
					-- layer=3 filter=28 channel=37
					8, 5, -18, 7, -17, -21, -6, -5, -2,
					-- layer=3 filter=28 channel=38
					-16, -11, -12, -1, -6, 13, -14, -25, -7,
					-- layer=3 filter=28 channel=39
					-6, 9, 6, 12, 7, 3, 6, 9, -8,
					-- layer=3 filter=28 channel=40
					7, 15, 8, 20, -20, -14, 0, 15, -10,
					-- layer=3 filter=28 channel=41
					-18, 5, -12, -10, -19, -4, -4, 0, -16,
					-- layer=3 filter=28 channel=42
					-23, -22, -3, 8, -1, 7, -11, -10, -9,
					-- layer=3 filter=28 channel=43
					-7, 2, 3, -14, -17, -1, -6, 0, 7,
					-- layer=3 filter=28 channel=44
					-5, 2, -6, -7, 0, -2, -6, -3, -5,
					-- layer=3 filter=28 channel=45
					4, 3, -16, 7, -7, 22, 0, 3, -16,
					-- layer=3 filter=28 channel=46
					-8, 1, -1, -7, -13, -14, -24, -9, 0,
					-- layer=3 filter=28 channel=47
					6, 5, 14, -2, -3, 4, 3, -7, 0,
					-- layer=3 filter=28 channel=48
					-19, -5, -11, -8, -12, -36, -13, -15, -17,
					-- layer=3 filter=28 channel=49
					-16, 3, -4, -13, -6, 0, -5, -19, -5,
					-- layer=3 filter=28 channel=50
					9, -15, -1, -3, -17, -5, 9, -8, -13,
					-- layer=3 filter=28 channel=51
					2, 0, -6, 3, 7, -17, -14, -24, -5,
					-- layer=3 filter=28 channel=52
					-24, -1, -9, -16, -13, -7, 2, 13, 14,
					-- layer=3 filter=28 channel=53
					3, 11, -8, 4, -18, -1, -25, -5, -14,
					-- layer=3 filter=28 channel=54
					-8, -11, -7, 1, 0, 6, 6, -14, -5,
					-- layer=3 filter=28 channel=55
					0, 9, 3, 4, -3, -13, 5, -17, -13,
					-- layer=3 filter=28 channel=56
					-17, -16, -21, -13, -22, -8, 0, -13, 6,
					-- layer=3 filter=28 channel=57
					-8, -7, -2, -19, -20, -12, -11, -13, -11,
					-- layer=3 filter=28 channel=58
					1, 0, -20, -5, 4, -11, 0, -11, -17,
					-- layer=3 filter=28 channel=59
					-19, -25, 6, 7, 0, -18, -28, 3, -7,
					-- layer=3 filter=28 channel=60
					-10, -8, 0, 0, 4, 2, -4, -16, -2,
					-- layer=3 filter=28 channel=61
					-5, -7, 0, -22, -7, 0, -5, -17, -7,
					-- layer=3 filter=28 channel=62
					5, -8, -10, 0, -7, -10, 0, 0, -4,
					-- layer=3 filter=28 channel=63
					-14, -12, 5, -5, 4, 14, 9, -2, 12,
					-- layer=3 filter=29 channel=0
					-9, 5, -21, -4, -26, -20, 1, -16, -25,
					-- layer=3 filter=29 channel=1
					-4, -12, -6, 0, -7, -6, 0, 9, -6,
					-- layer=3 filter=29 channel=2
					0, -5, -24, 8, -8, -5, -8, -2, -17,
					-- layer=3 filter=29 channel=3
					-16, -1, 3, -5, -5, 11, 2, 8, 15,
					-- layer=3 filter=29 channel=4
					13, -12, -16, -13, -30, -7, -13, -16, -31,
					-- layer=3 filter=29 channel=5
					-11, 5, -1, -8, 0, 14, -6, -7, 0,
					-- layer=3 filter=29 channel=6
					-3, 1, 11, 4, -15, -14, -7, -27, -11,
					-- layer=3 filter=29 channel=7
					-5, 0, -13, -2, -11, 3, -8, -16, 10,
					-- layer=3 filter=29 channel=8
					-31, -12, -10, -33, -15, -5, -7, -14, 5,
					-- layer=3 filter=29 channel=9
					-8, 13, -16, 4, -2, 8, 19, -9, -1,
					-- layer=3 filter=29 channel=10
					-13, 3, -23, -33, -10, -28, 6, 23, 14,
					-- layer=3 filter=29 channel=11
					0, 19, -1, 3, 0, -17, -18, -1, -18,
					-- layer=3 filter=29 channel=12
					2, -2, 0, 26, 10, -16, -11, -5, 2,
					-- layer=3 filter=29 channel=13
					-10, -29, -24, 15, 1, 3, -13, -15, 4,
					-- layer=3 filter=29 channel=14
					-14, -17, 9, -10, -10, -15, -3, 13, -20,
					-- layer=3 filter=29 channel=15
					12, -1, -1, -7, -6, -2, 6, -38, -7,
					-- layer=3 filter=29 channel=16
					-14, 2, -18, 6, -19, -3, -9, 6, 28,
					-- layer=3 filter=29 channel=17
					15, 2, -6, 12, 4, -1, -11, 14, -11,
					-- layer=3 filter=29 channel=18
					-10, 13, -8, -7, -17, 0, -7, -9, -9,
					-- layer=3 filter=29 channel=19
					-2, -22, -23, 9, -5, -5, -11, 7, -7,
					-- layer=3 filter=29 channel=20
					4, -8, -4, 16, -8, -6, -12, -9, 0,
					-- layer=3 filter=29 channel=21
					-28, -23, -2, -25, -6, -18, 4, -2, -4,
					-- layer=3 filter=29 channel=22
					-3, 14, 14, 8, -7, 9, 1, -5, 9,
					-- layer=3 filter=29 channel=23
					7, -6, 1, -8, -14, 13, -7, 9, 4,
					-- layer=3 filter=29 channel=24
					-1, -7, -19, 5, 6, -7, 6, 10, -25,
					-- layer=3 filter=29 channel=25
					11, 2, 13, 9, -1, -22, -10, 0, -4,
					-- layer=3 filter=29 channel=26
					-10, 1, 13, -6, -2, 5, -13, -14, -3,
					-- layer=3 filter=29 channel=27
					9, 0, -18, 26, -4, 14, 9, 19, -13,
					-- layer=3 filter=29 channel=28
					-9, 8, -15, 8, -9, -12, 8, -5, 11,
					-- layer=3 filter=29 channel=29
					-27, 0, 0, -8, -9, 13, -5, 17, -2,
					-- layer=3 filter=29 channel=30
					-11, -3, -4, 5, -14, -5, -13, 2, -4,
					-- layer=3 filter=29 channel=31
					3, 13, -1, -3, 0, 1, -8, -3, -6,
					-- layer=3 filter=29 channel=32
					5, -8, -4, -16, -14, -13, -17, 5, 14,
					-- layer=3 filter=29 channel=33
					-24, -27, -28, 2, 19, -11, -27, 1, -13,
					-- layer=3 filter=29 channel=34
					-5, -1, 11, 13, -2, -10, -9, 27, -21,
					-- layer=3 filter=29 channel=35
					-18, 0, -26, 7, -3, 0, -9, -20, -27,
					-- layer=3 filter=29 channel=36
					-6, -15, -13, 1, -18, 16, 8, -14, -32,
					-- layer=3 filter=29 channel=37
					-2, 4, 5, -1, -3, -8, 8, 4, -21,
					-- layer=3 filter=29 channel=38
					5, 0, -12, -15, -39, 14, 17, -16, 21,
					-- layer=3 filter=29 channel=39
					3, 8, -8, -2, -2, 4, 8, 0, 11,
					-- layer=3 filter=29 channel=40
					1, 11, 5, 6, 3, 11, -12, -2, -3,
					-- layer=3 filter=29 channel=41
					-12, 0, 2, -6, -20, 6, -14, 8, -8,
					-- layer=3 filter=29 channel=42
					-1, -10, -18, 0, -4, -6, 0, 12, 5,
					-- layer=3 filter=29 channel=43
					-15, 2, 4, -10, -12, 3, -6, -13, 2,
					-- layer=3 filter=29 channel=44
					5, 0, 8, -13, 0, 2, 3, -3, 15,
					-- layer=3 filter=29 channel=45
					-2, 2, -13, 8, -24, -20, 3, 5, -26,
					-- layer=3 filter=29 channel=46
					2, -15, -5, -7, 5, -22, -19, 10, -7,
					-- layer=3 filter=29 channel=47
					-20, -22, -21, -6, -22, -16, -16, -13, 31,
					-- layer=3 filter=29 channel=48
					10, -6, 27, -22, -5, 0, 6, -6, 16,
					-- layer=3 filter=29 channel=49
					0, -24, 10, 9, 16, -3, -1, -1, 22,
					-- layer=3 filter=29 channel=50
					-4, -5, 2, 0, -3, 4, -8, 19, -11,
					-- layer=3 filter=29 channel=51
					-8, -9, -4, 6, 3, -5, 11, -24, -8,
					-- layer=3 filter=29 channel=52
					5, 13, -2, 14, -11, 3, 9, 6, -22,
					-- layer=3 filter=29 channel=53
					-23, 10, 19, -23, 7, -2, -25, 16, -18,
					-- layer=3 filter=29 channel=54
					12, -10, 11, -4, 7, -10, 19, 6, 23,
					-- layer=3 filter=29 channel=55
					-15, -13, -7, -18, -35, -28, -13, 11, 25,
					-- layer=3 filter=29 channel=56
					-19, -10, -10, 3, 1, -4, 5, -3, -11,
					-- layer=3 filter=29 channel=57
					0, -13, -8, 15, 6, -1, -15, -23, -15,
					-- layer=3 filter=29 channel=58
					-6, -6, -2, 0, -20, 10, 2, -16, 10,
					-- layer=3 filter=29 channel=59
					15, -2, -8, 0, 3, 2, -9, -20, -19,
					-- layer=3 filter=29 channel=60
					-16, -3, -14, -7, -5, -6, -21, 0, 3,
					-- layer=3 filter=29 channel=61
					-5, 13, 8, -35, 5, 13, 15, 1, 21,
					-- layer=3 filter=29 channel=62
					-31, -2, 0, -13, -19, -3, -4, -28, -21,
					-- layer=3 filter=29 channel=63
					6, 9, 13, 1, 4, 13, -8, 0, -5,
					-- layer=3 filter=30 channel=0
					19, 52, 14, 11, 30, 19, -41, 28, 0,
					-- layer=3 filter=30 channel=1
					-4, -2, 4, 47, -19, -36, 21, -88, -52,
					-- layer=3 filter=30 channel=2
					9, -56, -18, -25, -48, -5, 24, 1, 0,
					-- layer=3 filter=30 channel=3
					11, 17, -3, 38, -11, 35, -8, -51, -17,
					-- layer=3 filter=30 channel=4
					5, -24, 5, 9, 7, -1, -13, -3, 14,
					-- layer=3 filter=30 channel=5
					0, 10, 1, 16, -6, 12, 7, -5, -5,
					-- layer=3 filter=30 channel=6
					46, 14, 42, 18, -47, 37, -64, 3, -9,
					-- layer=3 filter=30 channel=7
					40, -20, -19, 8, -7, -15, -4, 17, -6,
					-- layer=3 filter=30 channel=8
					9, -42, 0, -45, -39, 0, 27, 27, -7,
					-- layer=3 filter=30 channel=9
					20, -10, 9, -7, -1, -6, -37, -46, -21,
					-- layer=3 filter=30 channel=10
					4, 20, 16, -19, -39, -22, -22, -8, -7,
					-- layer=3 filter=30 channel=11
					-3, 13, 45, -10, 63, 12, -62, -2, -13,
					-- layer=3 filter=30 channel=12
					17, 30, 29, 44, 13, 31, -11, -36, -1,
					-- layer=3 filter=30 channel=13
					-10, -29, 15, 5, -9, -30, -50, -56, -20,
					-- layer=3 filter=30 channel=14
					16, 0, -15, 23, -66, -27, -47, -35, -40,
					-- layer=3 filter=30 channel=15
					14, -8, 13, 54, 20, 13, 40, 28, 0,
					-- layer=3 filter=30 channel=16
					-38, -11, -35, -3, 2, 39, 23, 15, -16,
					-- layer=3 filter=30 channel=17
					20, -35, -20, 11, 8, -35, 18, 13, 9,
					-- layer=3 filter=30 channel=18
					0, 27, 58, -45, -9, -1, 8, -2, -17,
					-- layer=3 filter=30 channel=19
					21, -10, -25, 15, 12, 26, -21, -41, -37,
					-- layer=3 filter=30 channel=20
					-3, -4, -20, -21, -5, -35, 9, 20, -31,
					-- layer=3 filter=30 channel=21
					14, -7, 4, -24, 18, -41, -51, 24, -30,
					-- layer=3 filter=30 channel=22
					-13, -4, 12, 0, -12, 4, 4, -1, -3,
					-- layer=3 filter=30 channel=23
					9, 38, -31, -18, -5, -7, 29, -9, -5,
					-- layer=3 filter=30 channel=24
					-1, -5, -5, -6, -1, -17, -31, 0, -3,
					-- layer=3 filter=30 channel=25
					23, -10, -27, 22, 33, -3, 8, 20, 15,
					-- layer=3 filter=30 channel=26
					16, -12, -14, -15, 0, -11, 10, 5, 11,
					-- layer=3 filter=30 channel=27
					-5, -64, -41, -30, -43, -63, -37, -23, -13,
					-- layer=3 filter=30 channel=28
					9, -11, 3, -1, 1, -6, 5, 0, 1,
					-- layer=3 filter=30 channel=29
					-5, -23, 2, 1, -18, 12, 35, 15, 8,
					-- layer=3 filter=30 channel=30
					-4, 1, 0, -6, 11, -8, 13, 20, 2,
					-- layer=3 filter=30 channel=31
					32, -29, -54, 4, -38, -31, 19, -59, -3,
					-- layer=3 filter=30 channel=32
					-17, -16, 34, 26, -16, 28, 11, -9, 7,
					-- layer=3 filter=30 channel=33
					-43, -38, -16, -34, -21, -7, -27, -58, -20,
					-- layer=3 filter=30 channel=34
					-28, 29, 29, -19, -19, 1, -12, -2, -3,
					-- layer=3 filter=30 channel=35
					-12, -35, -38, -3, 7, 2, 9, 31, 15,
					-- layer=3 filter=30 channel=36
					42, -11, -19, 8, -29, -27, -38, -39, -44,
					-- layer=3 filter=30 channel=37
					-10, -22, -3, 19, -38, -3, -15, -15, 18,
					-- layer=3 filter=30 channel=38
					11, 4, -8, -19, 10, 2, 74, 53, 64,
					-- layer=3 filter=30 channel=39
					-8, -4, -2, 8, 2, -1, -9, -13, 9,
					-- layer=3 filter=30 channel=40
					-10, 20, -2, -25, -7, 7, 34, 20, 43,
					-- layer=3 filter=30 channel=41
					49, -1, 54, -38, -51, -21, 5, 23, -17,
					-- layer=3 filter=30 channel=42
					0, -13, -33, -9, -30, -15, -27, -33, 0,
					-- layer=3 filter=30 channel=43
					51, 29, 21, 18, -39, 67, 86, 42, 70,
					-- layer=3 filter=30 channel=44
					-7, 0, 3, -4, 5, -14, 6, -7, 9,
					-- layer=3 filter=30 channel=45
					20, -46, 10, -11, -58, -63, 5, -30, -30,
					-- layer=3 filter=30 channel=46
					25, -9, 6, 15, 13, 21, -23, -4, -3,
					-- layer=3 filter=30 channel=47
					-2, 6, 26, 18, -15, 33, -9, -15, -41,
					-- layer=3 filter=30 channel=48
					-2, 0, 17, 12, -28, -41, 17, 16, 41,
					-- layer=3 filter=30 channel=49
					-13, 7, 33, 27, 42, 3, -13, 7, -34,
					-- layer=3 filter=30 channel=50
					16, 16, 11, -18, -13, -23, -4, -1, 33,
					-- layer=3 filter=30 channel=51
					-36, -20, -1, 10, 46, 45, -23, 19, 18,
					-- layer=3 filter=30 channel=52
					41, 30, -9, -13, -3, -15, 5, -33, 12,
					-- layer=3 filter=30 channel=53
					21, 7, -32, -77, -10, -11, -1, 13, 51,
					-- layer=3 filter=30 channel=54
					4, -35, -5, 22, 40, 38, -26, -29, -27,
					-- layer=3 filter=30 channel=55
					11, 12, 6, 0, -43, 1, 3, -34, -12,
					-- layer=3 filter=30 channel=56
					19, 23, 14, -16, -6, 8, -15, 6, -18,
					-- layer=3 filter=30 channel=57
					25, 70, 4, -68, 1, 10, -73, 17, 16,
					-- layer=3 filter=30 channel=58
					1, 23, -12, -34, 5, 62, 36, 49, 84,
					-- layer=3 filter=30 channel=59
					18, -30, -3, 43, 25, 5, -32, -10, 36,
					-- layer=3 filter=30 channel=60
					-22, 0, 9, -15, -30, -60, 19, 17, 40,
					-- layer=3 filter=30 channel=61
					-24, -22, -47, -16, -11, 6, 34, -25, 4,
					-- layer=3 filter=30 channel=62
					11, 3, 12, 14, 8, 31, 44, 27, -8,
					-- layer=3 filter=30 channel=63
					-12, -15, -25, 12, 13, 4, -22, -11, 5,
					-- layer=3 filter=31 channel=0
					33, 3, -13, 22, 40, 3, -29, 30, -3,
					-- layer=3 filter=31 channel=1
					-17, 30, 13, 61, -65, -18, 5, -34, -44,
					-- layer=3 filter=31 channel=2
					-10, -28, 4, -46, 7, 6, -7, -16, -32,
					-- layer=3 filter=31 channel=3
					-9, 33, -7, 4, 58, 42, -1, -17, -2,
					-- layer=3 filter=31 channel=4
					-3, 9, -15, 7, 0, 2, 0, 4, 5,
					-- layer=3 filter=31 channel=5
					6, -8, 9, 13, 0, 4, 14, -14, -10,
					-- layer=3 filter=31 channel=6
					7, 12, -12, 4, 26, 49, -50, -10, 15,
					-- layer=3 filter=31 channel=7
					14, 23, 11, 24, -39, -4, -46, 16, -5,
					-- layer=3 filter=31 channel=8
					-7, 14, -15, -4, 7, 56, -29, -31, -28,
					-- layer=3 filter=31 channel=9
					0, 25, 41, 7, 5, 33, -53, 3, 18,
					-- layer=3 filter=31 channel=10
					14, 40, 22, 9, 24, 43, -21, -26, 9,
					-- layer=3 filter=31 channel=11
					3, -46, 16, -31, 10, 16, -38, 36, 1,
					-- layer=3 filter=31 channel=12
					28, 7, 11, 12, -5, -10, -32, -4, 16,
					-- layer=3 filter=31 channel=13
					-13, -5, 7, -45, -32, -63, -68, -73, -82,
					-- layer=3 filter=31 channel=14
					-2, -42, -22, 0, -18, -8, -13, -3, -23,
					-- layer=3 filter=31 channel=15
					32, 15, 25, 30, -9, 31, 27, -3, -35,
					-- layer=3 filter=31 channel=16
					24, 34, 11, 6, 32, 44, 53, 57, 32,
					-- layer=3 filter=31 channel=17
					-10, -14, 12, -22, -29, -8, -43, -17, -32,
					-- layer=3 filter=31 channel=18
					-9, -31, 2, -21, -5, -13, 13, 43, 0,
					-- layer=3 filter=31 channel=19
					2, -36, -11, -15, 25, 13, -27, -15, 4,
					-- layer=3 filter=31 channel=20
					20, -29, -22, -9, 7, -21, 54, 32, -15,
					-- layer=3 filter=31 channel=21
					-8, -36, -35, 7, -29, -26, 2, 20, -2,
					-- layer=3 filter=31 channel=22
					7, -9, 3, 5, -3, 11, -6, 1, -18,
					-- layer=3 filter=31 channel=23
					8, -24, -23, -10, -10, -27, 16, 29, 35,
					-- layer=3 filter=31 channel=24
					12, 35, -11, 13, 6, 9, -33, -33, -35,
					-- layer=3 filter=31 channel=25
					24, 47, -2, 22, 0, -14, -7, 31, 31,
					-- layer=3 filter=31 channel=26
					-4, 8, -13, -6, -4, -10, -1, -1, 12,
					-- layer=3 filter=31 channel=27
					-14, -30, -35, -45, -37, -65, -34, -72, -55,
					-- layer=3 filter=31 channel=28
					-7, 13, -3, 4, 0, 7, 8, -7, 6,
					-- layer=3 filter=31 channel=29
					-18, 2, 15, -29, -39, 13, 14, -2, 30,
					-- layer=3 filter=31 channel=30
					-2, -7, -14, 2, -11, 4, -13, 6, 17,
					-- layer=3 filter=31 channel=31
					-23, -26, -10, 6, -40, -17, 4, -5, 40,
					-- layer=3 filter=31 channel=32
					11, -4, -28, -23, 15, 16, 55, 8, 30,
					-- layer=3 filter=31 channel=33
					-1, -39, -1, -17, -25, 6, 16, 5, 32,
					-- layer=3 filter=31 channel=34
					10, 9, 34, -10, 0, -27, 0, 0, -13,
					-- layer=3 filter=31 channel=35
					-10, -3, -24, 0, -1, -4, 6, 25, 34,
					-- layer=3 filter=31 channel=36
					2, 9, 21, -4, -10, -14, -20, -2, -24,
					-- layer=3 filter=31 channel=37
					-31, 3, 21, -2, -27, 11, -34, -30, -13,
					-- layer=3 filter=31 channel=38
					-20, -4, -9, 1, -15, -23, 52, 30, 34,
					-- layer=3 filter=31 channel=39
					7, 2, -16, 7, 0, -15, -5, 9, 11,
					-- layer=3 filter=31 channel=40
					2, -73, -29, 6, -31, 0, 56, 61, 41,
					-- layer=3 filter=31 channel=41
					-2, -1, 49, -14, 0, 25, 7, -2, 10,
					-- layer=3 filter=31 channel=42
					-8, 16, -9, -40, -32, -27, 14, -30, -21,
					-- layer=3 filter=31 channel=43
					26, -3, 29, 65, 33, 35, 46, -3, 21,
					-- layer=3 filter=31 channel=44
					10, 13, -7, -1, -3, -1, -14, -12, -10,
					-- layer=3 filter=31 channel=45
					2, -38, -4, -23, -22, -7, -24, 11, -38,
					-- layer=3 filter=31 channel=46
					38, 5, 17, -8, 0, 17, 39, 57, 21,
					-- layer=3 filter=31 channel=47
					26, 8, 33, 19, -22, 44, -29, -26, -55,
					-- layer=3 filter=31 channel=48
					50, -27, 30, 12, -18, -38, 47, 17, 42,
					-- layer=3 filter=31 channel=49
					-27, -50, -13, -36, -44, -15, 32, 43, -45,
					-- layer=3 filter=31 channel=50
					24, -5, -7, -43, 3, -4, -13, 26, 18,
					-- layer=3 filter=31 channel=51
					-44, -44, 5, 24, -32, 21, 31, -25, -28,
					-- layer=3 filter=31 channel=52
					-10, 26, -23, -2, 4, 17, -14, -24, -46,
					-- layer=3 filter=31 channel=53
					2, -34, -4, -29, 4, 8, -22, 36, 74,
					-- layer=3 filter=31 channel=54
					24, 17, 31, 3, 13, 37, -20, -11, 29,
					-- layer=3 filter=31 channel=55
					9, 14, -10, -4, 18, -12, 0, -29, 13,
					-- layer=3 filter=31 channel=56
					7, 7, 3, 4, 3, 10, -28, 12, 6,
					-- layer=3 filter=31 channel=57
					41, 16, 2, -27, -10, -28, -27, 29, 17,
					-- layer=3 filter=31 channel=58
					-16, -9, 11, 21, 10, 46, -20, -4, 56,
					-- layer=3 filter=31 channel=59
					11, -21, -14, 25, 22, 57, 34, 38, 71,
					-- layer=3 filter=31 channel=60
					-6, -38, 15, -10, -31, -41, -8, -21, -8,
					-- layer=3 filter=31 channel=61
					-20, -4, -35, -2, 2, 13, 18, -6, 59,
					-- layer=3 filter=31 channel=62
					17, 15, -7, 47, 22, 64, 19, -44, -51,
					-- layer=3 filter=31 channel=63
					-17, -1, -1, 21, 14, 12, -3, -16, 2,
					-- layer=3 filter=32 channel=0
					-9, 13, 6, -4, -8, -15, 3, -6, -15,
					-- layer=3 filter=32 channel=1
					2, -14, 8, -4, -20, -4, -8, 0, -10,
					-- layer=3 filter=32 channel=2
					15, -6, 14, 5, -3, -10, 0, 8, 5,
					-- layer=3 filter=32 channel=3
					11, 1, -10, -14, -21, -8, -1, -5, 12,
					-- layer=3 filter=32 channel=4
					-13, -6, -11, -14, -15, -8, -22, -8, -14,
					-- layer=3 filter=32 channel=5
					-8, 7, 13, 2, -14, -12, -1, -12, 13,
					-- layer=3 filter=32 channel=6
					-1, -24, -12, -26, -9, 4, -4, 3, 10,
					-- layer=3 filter=32 channel=7
					3, -13, 0, -3, -19, 2, 12, 0, -2,
					-- layer=3 filter=32 channel=8
					14, -7, -11, -17, -20, -7, -24, -2, 9,
					-- layer=3 filter=32 channel=9
					-12, 5, -9, -10, -6, -31, -6, -24, 5,
					-- layer=3 filter=32 channel=10
					-10, 0, -13, -22, -8, -23, -10, 11, 4,
					-- layer=3 filter=32 channel=11
					-4, -1, -13, -2, 0, -6, -4, -5, -21,
					-- layer=3 filter=32 channel=12
					3, 15, -1, 7, -20, -18, 1, -15, -6,
					-- layer=3 filter=32 channel=13
					2, -21, -3, 9, -31, -13, -24, 4, -3,
					-- layer=3 filter=32 channel=14
					-13, -3, 2, 3, -29, -12, -24, -6, -14,
					-- layer=3 filter=32 channel=15
					-3, -3, -8, 14, 0, -10, -8, 0, -6,
					-- layer=3 filter=32 channel=16
					5, -16, -12, -22, -9, -7, -1, -23, -12,
					-- layer=3 filter=32 channel=17
					10, -9, -16, 3, -6, 1, -16, -18, -14,
					-- layer=3 filter=32 channel=18
					-36, -13, 9, -8, -12, -5, -23, -20, 4,
					-- layer=3 filter=32 channel=19
					-12, -10, -15, -9, -28, -17, -36, 6, 9,
					-- layer=3 filter=32 channel=20
					10, 12, 0, 13, 8, -2, 5, 3, -5,
					-- layer=3 filter=32 channel=21
					-15, -2, -4, -1, 23, -6, -3, 12, -17,
					-- layer=3 filter=32 channel=22
					6, 8, -5, -4, -5, 10, -14, -13, -11,
					-- layer=3 filter=32 channel=23
					-15, 16, 5, -13, -3, 8, -19, -21, -16,
					-- layer=3 filter=32 channel=24
					-15, -6, 7, 2, -22, -5, -9, 0, 2,
					-- layer=3 filter=32 channel=25
					-20, -12, -23, 2, -24, -21, 8, -14, -4,
					-- layer=3 filter=32 channel=26
					-12, -7, -5, 6, -12, 2, 4, 0, 11,
					-- layer=3 filter=32 channel=27
					12, -22, 2, 2, -19, -7, 9, -14, -4,
					-- layer=3 filter=32 channel=28
					-11, 5, 3, 3, 7, 10, 1, 10, 13,
					-- layer=3 filter=32 channel=29
					-15, 13, -14, -11, 2, -33, 3, -9, -5,
					-- layer=3 filter=32 channel=30
					-4, 9, 4, 6, 13, -10, -10, 14, -13,
					-- layer=3 filter=32 channel=31
					13, 22, 12, 4, -12, 2, 0, -3, -13,
					-- layer=3 filter=32 channel=32
					8, -18, -7, 4, -26, -12, -7, 13, 4,
					-- layer=3 filter=32 channel=33
					-12, 10, 2, -2, -19, -6, -6, 9, 0,
					-- layer=3 filter=32 channel=34
					-20, -18, -19, -27, 1, 6, -22, 7, -1,
					-- layer=3 filter=32 channel=35
					-9, -11, -4, -2, -22, -13, -17, -18, -3,
					-- layer=3 filter=32 channel=36
					4, -10, 10, 18, -24, -1, 1, -8, -6,
					-- layer=3 filter=32 channel=37
					-22, -11, -14, -9, -15, -3, -7, 1, 0,
					-- layer=3 filter=32 channel=38
					-21, -26, 7, -6, 12, -28, 1, -11, -13,
					-- layer=3 filter=32 channel=39
					12, -8, -12, -14, 8, 0, 10, 4, 14,
					-- layer=3 filter=32 channel=40
					-7, -9, 0, -18, 15, -35, -5, 1, -19,
					-- layer=3 filter=32 channel=41
					-6, -12, -22, -5, -13, -14, 10, -2, -11,
					-- layer=3 filter=32 channel=42
					12, -18, -5, -9, -2, -17, -10, 7, -3,
					-- layer=3 filter=32 channel=43
					16, -14, 17, 7, 22, 11, 6, -8, -15,
					-- layer=3 filter=32 channel=44
					0, 13, -12, 5, 11, -2, -1, 13, 9,
					-- layer=3 filter=32 channel=45
					7, -17, -10, 18, -1, -6, 10, 1, -1,
					-- layer=3 filter=32 channel=46
					-12, 8, -2, 8, 0, -26, -9, -11, -12,
					-- layer=3 filter=32 channel=47
					-21, -2, -4, -22, -17, -1, -8, -6, -4,
					-- layer=3 filter=32 channel=48
					8, -24, -1, -18, -23, -11, -27, 0, 11,
					-- layer=3 filter=32 channel=49
					-4, -19, -16, -11, 9, -14, -15, 17, -33,
					-- layer=3 filter=32 channel=50
					-23, -28, 8, -14, 23, -11, 5, 10, 1,
					-- layer=3 filter=32 channel=51
					-12, -14, 8, -8, -21, 24, -2, 0, -12,
					-- layer=3 filter=32 channel=52
					-3, 2, -9, -18, -17, 6, -6, -13, -14,
					-- layer=3 filter=32 channel=53
					-8, -17, 6, -15, 13, -13, 4, -15, -3,
					-- layer=3 filter=32 channel=54
					6, -18, 11, -16, -18, 8, -1, 23, 1,
					-- layer=3 filter=32 channel=55
					9, -2, 4, -12, 8, 2, 10, -1, 21,
					-- layer=3 filter=32 channel=56
					-2, 9, -16, -13, -6, 10, 14, -9, 14,
					-- layer=3 filter=32 channel=57
					-19, -3, 2, 9, -10, 7, -7, -16, -1,
					-- layer=3 filter=32 channel=58
					9, -1, 21, -8, 12, 0, 9, -18, -3,
					-- layer=3 filter=32 channel=59
					8, 11, -20, 2, -24, -20, 4, -5, 8,
					-- layer=3 filter=32 channel=60
					-27, -12, 2, -1, 15, -7, -3, 8, 6,
					-- layer=3 filter=32 channel=61
					1, -4, -6, 8, -12, -7, -18, 10, 16,
					-- layer=3 filter=32 channel=62
					-4, -7, -10, 14, -23, -26, -18, -14, -12,
					-- layer=3 filter=32 channel=63
					-3, -3, -8, 13, -15, -4, 7, -3, -11,
					-- layer=3 filter=33 channel=0
					7, 45, 11, -18, -29, 7, -31, -30, -62,
					-- layer=3 filter=33 channel=1
					16, 26, -4, -47, -10, -7, -27, -60, 10,
					-- layer=3 filter=33 channel=2
					-18, -4, 22, -12, -5, 12, -42, -16, -29,
					-- layer=3 filter=33 channel=3
					53, 17, 27, 29, 12, 4, 45, -2, 40,
					-- layer=3 filter=33 channel=4
					-11, -1, -20, -7, -29, -21, 18, 44, 26,
					-- layer=3 filter=33 channel=5
					-1, 0, 18, 15, 18, 21, 15, 22, 8,
					-- layer=3 filter=33 channel=6
					44, 10, 35, -12, 4, 45, 59, 22, 41,
					-- layer=3 filter=33 channel=7
					-2, 30, 6, 68, -29, 18, 50, -8, -22,
					-- layer=3 filter=33 channel=8
					-23, -13, 8, 11, 7, 23, 69, -16, 47,
					-- layer=3 filter=33 channel=9
					-2, 1, 12, 0, -23, 2, 30, -58, -40,
					-- layer=3 filter=33 channel=10
					1, -13, -18, -1, -12, 19, 36, -1, 43,
					-- layer=3 filter=33 channel=11
					5, 5, 44, -36, 13, 25, -46, -25, -19,
					-- layer=3 filter=33 channel=12
					-7, -21, -1, 8, -35, -24, -29, -49, -50,
					-- layer=3 filter=33 channel=13
					-39, -10, -8, -5, -23, -23, -27, -32, -60,
					-- layer=3 filter=33 channel=14
					-10, 20, 1, -20, 10, -11, 32, 1, 40,
					-- layer=3 filter=33 channel=15
					0, 27, 26, -2, 4, -18, -18, -29, 23,
					-- layer=3 filter=33 channel=16
					-61, -21, -22, -7, 4, -13, 34, 32, -13,
					-- layer=3 filter=33 channel=17
					1, -10, 10, 12, -7, 14, 10, 63, -16,
					-- layer=3 filter=33 channel=18
					27, -21, 20, -1, -18, -2, 12, 23, 47,
					-- layer=3 filter=33 channel=19
					-14, 8, -13, 24, 13, 43, 24, 20, 50,
					-- layer=3 filter=33 channel=20
					17, 22, 31, -21, 22, -1, -52, -60, -7,
					-- layer=3 filter=33 channel=21
					5, -49, 2, -27, -3, 24, 25, -14, -56,
					-- layer=3 filter=33 channel=22
					-2, -7, -3, -1, -7, 3, -13, 6, -9,
					-- layer=3 filter=33 channel=23
					21, 20, 31, 10, -3, -1, -18, -15, -39,
					-- layer=3 filter=33 channel=24
					-23, 11, 7, 15, -37, 30, -29, -13, -10,
					-- layer=3 filter=33 channel=25
					-41, 30, 6, -40, 22, -8, 26, 12, 4,
					-- layer=3 filter=33 channel=26
					6, 2, 2, -10, 9, 8, -10, 6, 12,
					-- layer=3 filter=33 channel=27
					-15, 0, 10, -9, -32, 48, -23, -16, -2,
					-- layer=3 filter=33 channel=28
					2, -10, -8, 15, 5, 8, -1, 8, 12,
					-- layer=3 filter=33 channel=29
					27, -22, 13, -34, -71, -31, 28, -4, -9,
					-- layer=3 filter=33 channel=30
					-3, 3, 2, 11, -1, 16, 9, 14, 6,
					-- layer=3 filter=33 channel=31
					-25, -5, -12, -60, 5, -45, -2, -56, -63,
					-- layer=3 filter=33 channel=32
					-6, 26, 8, -10, -26, 16, -37, 0, -23,
					-- layer=3 filter=33 channel=33
					24, -28, 6, -22, 21, 14, -82, 21, -5,
					-- layer=3 filter=33 channel=34
					36, 28, -17, -1, 3, 5, 26, 7, 47,
					-- layer=3 filter=33 channel=35
					8, -4, -16, 15, 14, -8, 29, 27, 4,
					-- layer=3 filter=33 channel=36
					21, 12, -26, -6, 13, -14, -81, -17, -28,
					-- layer=3 filter=33 channel=37
					-32, -26, -8, 8, 23, -23, -23, -41, -12,
					-- layer=3 filter=33 channel=38
					-15, -9, -16, -22, -18, -11, 17, -21, -8,
					-- layer=3 filter=33 channel=39
					-1, -9, -17, 4, 10, 7, 2, -16, -8,
					-- layer=3 filter=33 channel=40
					30, -8, 17, 0, 19, 8, -28, -26, 7,
					-- layer=3 filter=33 channel=41
					2, 5, -26, 45, 5, 25, 29, 34, 40,
					-- layer=3 filter=33 channel=42
					25, -6, 1, -2, -21, 10, -2, -10, -3,
					-- layer=3 filter=33 channel=43
					9, 31, 39, 14, -54, 11, 5, -6, 27,
					-- layer=3 filter=33 channel=44
					7, 11, -12, 4, 14, 11, -13, 7, -9,
					-- layer=3 filter=33 channel=45
					-3, -3, 13, -29, -9, 5, -3, -52, 13,
					-- layer=3 filter=33 channel=46
					10, 19, -1, 4, 5, -5, -1, -35, -11,
					-- layer=3 filter=33 channel=47
					-8, -16, -17, -52, -39, -17, 7, 4, -25,
					-- layer=3 filter=33 channel=48
					23, 45, -12, 0, 14, -30, -4, -6, -36,
					-- layer=3 filter=33 channel=49
					-24, 16, 8, 31, -11, -8, -33, 3, -14,
					-- layer=3 filter=33 channel=50
					12, 6, 2, 1, 45, 21, 56, -1, 19,
					-- layer=3 filter=33 channel=51
					-17, -14, -7, 29, -8, 1, 10, -23, -16,
					-- layer=3 filter=33 channel=52
					-11, 5, 11, -16, 0, 1, -54, -12, 3,
					-- layer=3 filter=33 channel=53
					-37, 8, 29, -7, 45, 10, 35, -16, -49,
					-- layer=3 filter=33 channel=54
					11, 26, -22, 29, 20, 29, 60, -23, 54,
					-- layer=3 filter=33 channel=55
					21, 9, 38, 15, -8, 43, -9, -1, 17,
					-- layer=3 filter=33 channel=56
					26, -24, 20, 1, -20, 24, 5, -52, -8,
					-- layer=3 filter=33 channel=57
					5, -28, -21, 17, 11, 5, -90, 4, -13,
					-- layer=3 filter=33 channel=58
					-36, -28, -21, 5, -20, 35, -18, -21, -40,
					-- layer=3 filter=33 channel=59
					-11, 51, -20, 17, 33, 27, -28, -36, -77,
					-- layer=3 filter=33 channel=60
					-22, 2, 5, 8, 38, 5, 16, 23, 24,
					-- layer=3 filter=33 channel=61
					-2, 29, 8, 1, -4, 6, 25, 11, 7,
					-- layer=3 filter=33 channel=62
					9, -13, -3, 4, 6, 12, 3, -77, 23,
					-- layer=3 filter=33 channel=63
					5, 22, 5, 0, -5, 14, 4, 27, -6,
					-- layer=3 filter=34 channel=0
					-19, -11, -8, 12, -22, 12, 4, 7, -10,
					-- layer=3 filter=34 channel=1
					-13, -5, 1, -7, -9, -5, 0, 3, 0,
					-- layer=3 filter=34 channel=2
					-9, -3, 4, 6, 7, -4, -9, -2, -17,
					-- layer=3 filter=34 channel=3
					16, -13, 0, 1, -6, 5, -22, -11, -7,
					-- layer=3 filter=34 channel=4
					-5, -7, 9, 2, -6, 12, -11, -9, 0,
					-- layer=3 filter=34 channel=5
					6, 14, 4, -10, 6, 2, -3, -1, 1,
					-- layer=3 filter=34 channel=6
					-16, 9, -11, 2, 15, -21, -12, -24, -3,
					-- layer=3 filter=34 channel=7
					-7, 0, 1, -18, -1, -21, -2, -4, 7,
					-- layer=3 filter=34 channel=8
					-9, 8, -7, -7, -8, -5, -21, 0, -7,
					-- layer=3 filter=34 channel=9
					-4, -15, -25, -8, -10, 1, 2, -12, -18,
					-- layer=3 filter=34 channel=10
					-9, 2, 6, 13, -10, 2, -14, -6, -1,
					-- layer=3 filter=34 channel=11
					-9, 10, -13, -20, 0, -7, 4, -8, -6,
					-- layer=3 filter=34 channel=12
					-1, 1, -10, -1, 1, -2, -7, -25, -12,
					-- layer=3 filter=34 channel=13
					-8, -7, -3, 7, 2, -15, 2, -6, 7,
					-- layer=3 filter=34 channel=14
					13, 0, -9, -5, 4, 12, -6, 6, -10,
					-- layer=3 filter=34 channel=15
					-9, -16, -12, 0, -19, -7, 8, -3, -9,
					-- layer=3 filter=34 channel=16
					-8, -11, 6, -5, 12, -12, -1, -14, -3,
					-- layer=3 filter=34 channel=17
					-9, 5, 0, -10, -16, 9, -9, -11, 2,
					-- layer=3 filter=34 channel=18
					3, -24, -16, -1, 3, -17, 0, -8, -12,
					-- layer=3 filter=34 channel=19
					9, 0, -13, 8, -11, -3, 0, 16, -3,
					-- layer=3 filter=34 channel=20
					-4, -4, 9, 7, 3, 5, -5, -11, -6,
					-- layer=3 filter=34 channel=21
					-10, -14, 6, 4, -14, 0, 5, -19, -9,
					-- layer=3 filter=34 channel=22
					6, 2, 10, -5, 7, -8, -13, -3, 4,
					-- layer=3 filter=34 channel=23
					0, -8, -14, -17, -19, -24, -9, 2, -20,
					-- layer=3 filter=34 channel=24
					-1, -3, -7, 7, 8, -11, -12, 0, -23,
					-- layer=3 filter=34 channel=25
					9, -3, -5, -19, -11, 0, -11, -6, -14,
					-- layer=3 filter=34 channel=26
					-1, -7, 10, -4, 11, -14, -14, 14, 6,
					-- layer=3 filter=34 channel=27
					-2, -4, -15, -8, 9, -3, -11, -10, -2,
					-- layer=3 filter=34 channel=28
					0, -6, 6, 5, -2, 0, -10, 1, -14,
					-- layer=3 filter=34 channel=29
					0, 6, -13, -6, -8, -8, -11, 1, 2,
					-- layer=3 filter=34 channel=30
					-2, 13, -1, -4, 3, 0, -9, 2, 11,
					-- layer=3 filter=34 channel=31
					-18, -3, -7, 2, -13, -2, 4, -4, -7,
					-- layer=3 filter=34 channel=32
					-3, -3, -7, -15, -8, -3, -11, -16, -2,
					-- layer=3 filter=34 channel=33
					-13, -3, -5, 10, 0, -21, -15, 9, 4,
					-- layer=3 filter=34 channel=34
					-16, -10, 0, 3, -9, -9, -11, -23, -4,
					-- layer=3 filter=34 channel=35
					-10, -3, -2, -20, -13, -13, -19, -13, -8,
					-- layer=3 filter=34 channel=36
					2, -4, -15, 8, -11, -3, -14, -3, -1,
					-- layer=3 filter=34 channel=37
					2, 2, -8, -15, -15, 9, -6, 4, -8,
					-- layer=3 filter=34 channel=38
					-13, 3, 1, -13, 1, 17, -10, -12, 1,
					-- layer=3 filter=34 channel=39
					-14, -12, -11, -5, -14, -6, -12, 0, -12,
					-- layer=3 filter=34 channel=40
					-7, -12, 9, -12, 0, -3, -14, 3, 4,
					-- layer=3 filter=34 channel=41
					6, -16, 6, 1, 13, -7, 0, -6, -7,
					-- layer=3 filter=34 channel=42
					10, -12, 1, -12, -1, -14, -9, -15, -23,
					-- layer=3 filter=34 channel=43
					-1, -8, -4, -11, 6, 18, 2, -16, 0,
					-- layer=3 filter=34 channel=44
					13, 13, 11, -9, 13, -9, 9, 0, -3,
					-- layer=3 filter=34 channel=45
					-8, -10, -8, 0, 9, 10, -19, -3, -9,
					-- layer=3 filter=34 channel=46
					-19, -17, -10, -11, -11, -4, -16, -4, 5,
					-- layer=3 filter=34 channel=47
					-12, 8, -9, 9, -22, -10, -17, -11, -20,
					-- layer=3 filter=34 channel=48
					-2, 0, -7, -7, -6, -14, 0, -18, -11,
					-- layer=3 filter=34 channel=49
					-4, -4, -1, -17, 9, 1, -9, -16, -21,
					-- layer=3 filter=34 channel=50
					-5, 0, -13, -11, -12, 9, 8, 0, 0,
					-- layer=3 filter=34 channel=51
					2, -17, 8, -11, -19, 11, -2, -9, -12,
					-- layer=3 filter=34 channel=52
					-13, -14, -8, 0, -15, 0, -7, -13, 0,
					-- layer=3 filter=34 channel=53
					-1, -21, -11, -19, 2, 11, -1, -2, -11,
					-- layer=3 filter=34 channel=54
					-11, -9, 5, 12, 7, 2, 14, 1, -11,
					-- layer=3 filter=34 channel=55
					-12, -17, -14, -8, -5, 8, 11, 8, 0,
					-- layer=3 filter=34 channel=56
					-1, -2, -12, -6, 7, -14, -10, -3, 2,
					-- layer=3 filter=34 channel=57
					2, -11, -23, 0, -9, 1, -19, -4, 6,
					-- layer=3 filter=34 channel=58
					8, -19, 10, 7, -7, 3, 5, -8, -18,
					-- layer=3 filter=34 channel=59
					-2, -2, -10, -5, -4, -15, -8, -9, 19,
					-- layer=3 filter=34 channel=60
					-13, -13, -4, -2, 10, 5, -12, -1, -18,
					-- layer=3 filter=34 channel=61
					-20, -4, -19, -14, 11, -24, 3, -3, -2,
					-- layer=3 filter=34 channel=62
					-16, 4, -22, -16, 0, 3, -8, -7, 7,
					-- layer=3 filter=34 channel=63
					-5, -3, 1, -12, -12, -6, 0, 10, 9,
					-- layer=3 filter=35 channel=0
					8, 1, 0, -51, -5, 8, -39, -10, 43,
					-- layer=3 filter=35 channel=1
					-7, -88, 5, 24, -50, -16, 12, -6, -22,
					-- layer=3 filter=35 channel=2
					-20, 2, -57, -10, -1, 5, -11, 25, -31,
					-- layer=3 filter=35 channel=3
					15, 22, 34, 14, -6, 4, 27, -15, 6,
					-- layer=3 filter=35 channel=4
					9, -12, -2, -3, -17, -3, 30, 16, 34,
					-- layer=3 filter=35 channel=5
					-3, -13, 1, 9, -19, 1, 1, -11, -3,
					-- layer=3 filter=35 channel=6
					36, 57, 49, 24, 6, 35, 1, 16, -6,
					-- layer=3 filter=35 channel=7
					-36, 23, -24, 5, -7, -52, 16, 40, -30,
					-- layer=3 filter=35 channel=8
					-52, -30, -35, 49, -2, 46, 69, 29, 43,
					-- layer=3 filter=35 channel=9
					-43, -88, -14, 21, -28, -26, 68, 51, -3,
					-- layer=3 filter=35 channel=10
					-78, -94, 21, 0, -38, -10, 55, -29, 44,
					-- layer=3 filter=35 channel=11
					6, 0, -12, -22, 0, -4, -54, 9, 44,
					-- layer=3 filter=35 channel=12
					-49, -62, -7, 16, -22, 4, -20, 8, -44,
					-- layer=3 filter=35 channel=13
					43, 14, -21, 27, 53, 9, -1, 16, 18,
					-- layer=3 filter=35 channel=14
					1, 17, 6, 27, 77, 25, 24, 18, 30,
					-- layer=3 filter=35 channel=15
					-40, -59, -40, -7, -12, -52, 0, -47, 8,
					-- layer=3 filter=35 channel=16
					-13, -56, -23, -47, 0, -19, 2, 16, 18,
					-- layer=3 filter=35 channel=17
					16, 6, -33, -25, -1, -14, 2, 11, 16,
					-- layer=3 filter=35 channel=18
					35, 18, 31, -19, 2, 26, -9, -50, 18,
					-- layer=3 filter=35 channel=19
					-6, 48, 19, 21, 4, 9, -18, -22, -49,
					-- layer=3 filter=35 channel=20
					-11, 7, -25, -17, 10, 7, -18, 6, 41,
					-- layer=3 filter=35 channel=21
					-33, -27, 10, -17, 8, -22, -34, 6, -29,
					-- layer=3 filter=35 channel=22
					-9, -6, 1, -11, 8, 7, 0, 10, -3,
					-- layer=3 filter=35 channel=23
					-28, 36, -5, -76, 7, -39, -20, 3, 14,
					-- layer=3 filter=35 channel=24
					12, 64, 1, 3, 17, 24, -21, -28, 13,
					-- layer=3 filter=35 channel=25
					-1, -34, 33, 0, -10, -11, 9, 32, 11,
					-- layer=3 filter=35 channel=26
					12, 4, -9, -4, -16, 0, 12, 0, 7,
					-- layer=3 filter=35 channel=27
					4, 69, -17, 1, 53, -1, -40, 22, -2,
					-- layer=3 filter=35 channel=28
					8, 1, 8, -9, 13, -12, 13, 8, 0,
					-- layer=3 filter=35 channel=29
					65, 49, 42, 33, 6, 1, 43, -4, 4,
					-- layer=3 filter=35 channel=30
					4, 0, 4, 5, -3, 1, -2, -4, -9,
					-- layer=3 filter=35 channel=31
					8, 20, 31, 30, -53, -48, 25, 45, -13,
					-- layer=3 filter=35 channel=32
					18, -49, -32, -27, -11, -17, -34, -6, -13,
					-- layer=3 filter=35 channel=33
					-86, -65, -7, -68, -13, 2, -19, 5, -8,
					-- layer=3 filter=35 channel=34
					-8, 17, 14, -7, 4, 9, -2, 23, 0,
					-- layer=3 filter=35 channel=35
					4, 16, 13, -22, -2, 24, -2, 9, 21,
					-- layer=3 filter=35 channel=36
					-38, -23, -8, 10, -14, 12, -21, 58, 32,
					-- layer=3 filter=35 channel=37
					23, -44, -9, 21, -26, 12, -1, 22, 26,
					-- layer=3 filter=35 channel=38
					2, 20, 40, 26, -33, -35, 18, -5, 22,
					-- layer=3 filter=35 channel=39
					-10, -12, 9, 2, -8, 13, -10, -4, 10,
					-- layer=3 filter=35 channel=40
					4, -18, -10, -27, -42, 0, 7, 0, 52,
					-- layer=3 filter=35 channel=41
					-7, 21, -44, 24, 10, 16, -19, 38, 47,
					-- layer=3 filter=35 channel=42
					19, 46, 36, 5, 7, 5, -44, 0, -40,
					-- layer=3 filter=35 channel=43
					-9, 42, 27, 38, 6, 12, 7, 4, -6,
					-- layer=3 filter=35 channel=44
					5, -11, -9, -5, -10, -8, 5, -10, -14,
					-- layer=3 filter=35 channel=45
					-4, -19, 6, 57, -38, 42, -14, -6, -13,
					-- layer=3 filter=35 channel=46
					-17, -69, 22, -18, -39, -17, 27, -1, -26,
					-- layer=3 filter=35 channel=47
					-25, -47, 21, -17, -19, -2, 54, 64, 28,
					-- layer=3 filter=35 channel=48
					-2, 16, 32, 2, -26, -59, 43, 37, 47,
					-- layer=3 filter=35 channel=49
					-2, -87, -29, -9, -8, -8, -12, -1, 14,
					-- layer=3 filter=35 channel=50
					28, 15, 35, 33, 27, -4, 14, -9, 17,
					-- layer=3 filter=35 channel=51
					-12, -115, -57, -4, 26, -16, 45, 45, -69,
					-- layer=3 filter=35 channel=52
					-34, 1, -12, 0, -10, -7, 36, 16, -21,
					-- layer=3 filter=35 channel=53
					-31, 2, 29, -10, 16, -28, 53, 50, 33,
					-- layer=3 filter=35 channel=54
					-32, -43, -5, 18, 4, 7, 19, 9, -20,
					-- layer=3 filter=35 channel=55
					-55, -71, -52, -71, -21, -62, -66, -13, -20,
					-- layer=3 filter=35 channel=56
					-106, 45, -1, 11, -27, -24, 8, 9, 24,
					-- layer=3 filter=35 channel=57
					-55, -48, 11, -80, -38, -33, -33, -26, 18,
					-- layer=3 filter=35 channel=58
					-38, -53, -53, 26, -15, 6, 20, 1, -7,
					-- layer=3 filter=35 channel=59
					-59, -48, -24, 13, -30, -53, -23, -45, -40,
					-- layer=3 filter=35 channel=60
					42, 31, 3, -2, 8, 41, 19, 16, 1,
					-- layer=3 filter=35 channel=61
					-66, -27, 47, 11, 5, 7, 18, 0, -18,
					-- layer=3 filter=35 channel=62
					-60, -105, -49, 45, -2, 35, 103, -9, 11,
					-- layer=3 filter=35 channel=63
					-8, 10, -6, 0, -5, 20, 16, -10, 5,
					-- layer=3 filter=36 channel=0
					11, -27, -57, 2, -62, -36, -31, -20, -42,
					-- layer=3 filter=36 channel=1
					-46, -3, -8, -12, -28, -32, 21, 25, -6,
					-- layer=3 filter=36 channel=2
					7, 39, 17, -35, 38, 31, 13, 0, 24,
					-- layer=3 filter=36 channel=3
					-21, 0, -35, -30, 24, -7, -31, -37, -25,
					-- layer=3 filter=36 channel=4
					-5, 4, 0, -31, 19, 9, -24, 32, 52,
					-- layer=3 filter=36 channel=5
					-11, -4, 5, -1, 6, 0, 9, 1, -15,
					-- layer=3 filter=36 channel=6
					23, 32, -22, 44, 87, -30, 43, 11, -19,
					-- layer=3 filter=36 channel=7
					-1, -3, -14, -15, -47, -20, -32, 18, 65,
					-- layer=3 filter=36 channel=8
					-14, 21, 16, -56, 44, 2, -7, 7, -8,
					-- layer=3 filter=36 channel=9
					15, -1, -57, 5, 18, 22, -14, 43, -6,
					-- layer=3 filter=36 channel=10
					10, 34, -27, 17, 3, -2, -26, -16, -32,
					-- layer=3 filter=36 channel=11
					21, -26, -23, 39, 15, -45, 37, 12, -59,
					-- layer=3 filter=36 channel=12
					-9, -12, 0, 23, 15, -34, 9, 4, 0,
					-- layer=3 filter=36 channel=13
					-26, -2, -20, 3, -12, -18, -10, -43, 2,
					-- layer=3 filter=36 channel=14
					-8, 32, 9, -31, -25, -19, 56, -44, -79,
					-- layer=3 filter=36 channel=15
					0, -29, -7, -29, -14, -38, 23, -1, -16,
					-- layer=3 filter=36 channel=16
					-49, -20, 62, -3, -4, -55, -42, -103, -44,
					-- layer=3 filter=36 channel=17
					-18, 20, 16, 22, 11, -19, -21, 7, -2,
					-- layer=3 filter=36 channel=18
					36, 26, -25, -2, 27, 13, -4, 13, 13,
					-- layer=3 filter=36 channel=19
					-36, -11, -55, 3, 27, -20, 53, 0, 23,
					-- layer=3 filter=36 channel=20
					0, 33, 10, -36, 21, 11, 17, -42, -15,
					-- layer=3 filter=36 channel=21
					-28, -4, -11, 19, 35, 38, 23, 33, 14,
					-- layer=3 filter=36 channel=22
					9, 3, -6, -11, 0, 4, 2, -6, -12,
					-- layer=3 filter=36 channel=23
					16, -43, -37, 19, -74, 16, -31, -71, -8,
					-- layer=3 filter=36 channel=24
					-9, 17, 7, -26, 34, 24, -57, 11, 0,
					-- layer=3 filter=36 channel=25
					-11, 19, -7, 9, 0, 12, 4, -8, -43,
					-- layer=3 filter=36 channel=26
					-6, 15, 1, 4, 3, 2, -3, 9, 5,
					-- layer=3 filter=36 channel=27
					-31, -5, 9, 18, 16, 13, -15, -31, 28,
					-- layer=3 filter=36 channel=28
					6, -14, 4, 11, 13, -6, -9, 0, -6,
					-- layer=3 filter=36 channel=29
					7, 41, 44, -5, 1, -4, 28, 5, 0,
					-- layer=3 filter=36 channel=30
					18, 11, -7, 10, 1, 12, -13, -8, -17,
					-- layer=3 filter=36 channel=31
					-27, -27, -9, 6, 8, 4, 53, -44, 1,
					-- layer=3 filter=36 channel=32
					-6, -19, 11, 91, 24, 1, 5, 12, -27,
					-- layer=3 filter=36 channel=33
					7, -28, 10, 7, 22, 16, 3, -44, 41,
					-- layer=3 filter=36 channel=34
					9, 18, 26, -23, -3, 12, 10, -5, -20,
					-- layer=3 filter=36 channel=35
					-9, -9, -4, -13, 22, 32, -2, -21, 9,
					-- layer=3 filter=36 channel=36
					30, 25, -10, -55, -5, -5, 3, -25, 56,
					-- layer=3 filter=36 channel=37
					-10, 15, -43, 11, 57, -40, 23, -21, -21,
					-- layer=3 filter=36 channel=38
					-36, 24, 24, -18, -20, 2, 0, -36, -73,
					-- layer=3 filter=36 channel=39
					-9, -6, -2, 13, -12, -13, -2, -1, 2,
					-- layer=3 filter=36 channel=40
					9, 4, -7, 26, -52, 17, 28, -28, -7,
					-- layer=3 filter=36 channel=41
					-50, 68, 24, -38, -11, -17, 34, -12, -54,
					-- layer=3 filter=36 channel=42
					-67, -14, -6, -16, 45, 38, 9, -46, 28,
					-- layer=3 filter=36 channel=43
					17, 45, 32, -10, 56, 24, 46, -25, -41,
					-- layer=3 filter=36 channel=44
					-16, -13, -4, -12, 1, 8, 0, 8, 15,
					-- layer=3 filter=36 channel=45
					21, 8, -17, -45, 0, -56, 25, 28, 41,
					-- layer=3 filter=36 channel=46
					18, -41, -22, 46, -48, -11, -23, -16, -19,
					-- layer=3 filter=36 channel=47
					-23, -18, 14, 41, 43, 23, 0, 12, 5,
					-- layer=3 filter=36 channel=48
					14, -4, 7, 5, -32, -33, 14, -5, -20,
					-- layer=3 filter=36 channel=49
					-73, -32, -10, 9, 4, -18, 45, -9, -31,
					-- layer=3 filter=36 channel=50
					-1, 40, -13, 11, 51, 7, 35, 16, -30,
					-- layer=3 filter=36 channel=51
					35, -29, -1, -55, -22, 4, -22, -17, 25,
					-- layer=3 filter=36 channel=52
					-17, -16, -20, -5, -9, 21, -52, -18, -3,
					-- layer=3 filter=36 channel=53
					53, 21, -5, 3, 19, -18, 9, -23, -12,
					-- layer=3 filter=36 channel=54
					8, 24, 21, -50, -28, -61, -61, -26, -15,
					-- layer=3 filter=36 channel=55
					-19, -15, -16, 45, 5, 26, -4, -1, 10,
					-- layer=3 filter=36 channel=56
					-25, -15, -6, 0, 52, -26, -19, 51, 10,
					-- layer=3 filter=36 channel=57
					38, -40, 26, 11, -29, 14, -54, -32, 20,
					-- layer=3 filter=36 channel=58
					1, 13, -11, -41, 51, 47, 3, -44, 45,
					-- layer=3 filter=36 channel=59
					86, -9, -44, 24, -30, -12, -51, -2, 2,
					-- layer=3 filter=36 channel=60
					6, 31, 23, 5, 50, 13, 35, -6, 17,
					-- layer=3 filter=36 channel=61
					-2, -26, -22, 41, -1, 7, -42, -9, -28,
					-- layer=3 filter=36 channel=62
					-6, -1, -22, -9, -31, -30, 2, -17, -24,
					-- layer=3 filter=36 channel=63
					0, 7, 12, -14, 0, 23, -11, 2, -26,
					-- layer=3 filter=37 channel=0
					5, 2, -5, 1, -13, -19, -1, 50, 11,
					-- layer=3 filter=37 channel=1
					-12, -3, 49, 75, -39, 26, 7, -38, -50,
					-- layer=3 filter=37 channel=2
					-13, -32, -5, 4, -4, 5, 9, -14, 14,
					-- layer=3 filter=37 channel=3
					-8, -4, 3, 32, 1, 14, 16, -40, -5,
					-- layer=3 filter=37 channel=4
					-22, -23, 0, 17, 7, 0, -11, 30, 5,
					-- layer=3 filter=37 channel=5
					11, -15, -9, -1, -9, -1, 2, -18, -9,
					-- layer=3 filter=37 channel=6
					27, 21, 14, 40, 8, 23, -22, -53, -13,
					-- layer=3 filter=37 channel=7
					-1, 15, 15, -51, -30, -11, -23, 27, 14,
					-- layer=3 filter=37 channel=8
					-34, -42, -20, 37, 13, 46, 7, -29, -20,
					-- layer=3 filter=37 channel=9
					0, -27, -9, 12, 7, 19, -77, -58, -19,
					-- layer=3 filter=37 channel=10
					-35, -33, 4, 19, 1, 20, -33, -30, -13,
					-- layer=3 filter=37 channel=11
					-41, -26, 6, -37, 14, -37, -49, 34, 3,
					-- layer=3 filter=37 channel=12
					-27, 0, 5, 33, 36, 7, -35, -19, -1,
					-- layer=3 filter=37 channel=13
					-14, 20, 18, -22, -54, -7, -21, -4, -17,
					-- layer=3 filter=37 channel=14
					2, -18, -16, 0, 21, 14, 10, -1, -13,
					-- layer=3 filter=37 channel=15
					-5, -18, -20, 53, 42, 27, 20, -7, 7,
					-- layer=3 filter=37 channel=16
					38, -26, -31, 44, -57, -50, 33, 29, 23,
					-- layer=3 filter=37 channel=17
					-12, -6, -2, -9, -40, -16, 4, 30, 40,
					-- layer=3 filter=37 channel=18
					-10, 28, 24, -16, -24, -49, -5, 35, -10,
					-- layer=3 filter=37 channel=19
					-1, -5, 12, 11, -17, 10, 6, 10, -46,
					-- layer=3 filter=37 channel=20
					-41, -63, -32, 23, 34, -21, 6, 13, -8,
					-- layer=3 filter=37 channel=21
					3, -2, -5, -9, 9, -53, -27, 12, -21,
					-- layer=3 filter=37 channel=22
					-11, 10, -1, -4, 0, 7, -1, 17, -19,
					-- layer=3 filter=37 channel=23
					4, 31, -1, -41, -66, -42, 26, 9, 28,
					-- layer=3 filter=37 channel=24
					-6, 22, 10, -12, -42, -69, -1, 27, -3,
					-- layer=3 filter=37 channel=25
					22, 11, -9, 13, -8, -22, 26, -12, 31,
					-- layer=3 filter=37 channel=26
					-11, 5, 0, -13, -16, 1, 17, 3, 14,
					-- layer=3 filter=37 channel=27
					2, -2, 2, 16, 3, -44, -2, 0, 11,
					-- layer=3 filter=37 channel=28
					2, -20, 11, 8, -1, -13, 3, 4, -1,
					-- layer=3 filter=37 channel=29
					-17, 25, 28, -8, 0, 10, 11, -4, -40,
					-- layer=3 filter=37 channel=30
					2, 2, 17, -8, -2, 0, 0, -11, 15,
					-- layer=3 filter=37 channel=31
					-39, -44, -52, -23, -58, 0, 14, -26, 0,
					-- layer=3 filter=37 channel=32
					-26, -21, 7, -24, -59, 18, 53, -31, 32,
					-- layer=3 filter=37 channel=33
					-39, -3, -12, -42, 15, -16, -9, -24, -5,
					-- layer=3 filter=37 channel=34
					25, 28, 8, -15, 4, -4, 0, -14, -43,
					-- layer=3 filter=37 channel=35
					-7, 18, 4, -41, -27, -38, -5, 38, 21,
					-- layer=3 filter=37 channel=36
					-3, -1, -8, -4, -44, -1, -39, 15, -24,
					-- layer=3 filter=37 channel=37
					0, 0, 10, 21, -12, -37, 23, 18, -25,
					-- layer=3 filter=37 channel=38
					4, 17, 31, -1, -3, 0, 29, 32, 62,
					-- layer=3 filter=37 channel=39
					0, -11, -7, -14, 6, -13, -4, -4, -14,
					-- layer=3 filter=37 channel=40
					-10, -15, -13, 16, -30, 14, 35, 50, 37,
					-- layer=3 filter=37 channel=41
					8, 33, 16, -20, -29, -45, 44, 31, 45,
					-- layer=3 filter=37 channel=42
					9, 38, 19, 8, -77, -24, 30, 13, 0,
					-- layer=3 filter=37 channel=43
					34, 7, 16, 38, 10, 38, 63, 14, 6,
					-- layer=3 filter=37 channel=44
					12, 11, 6, -8, -10, -2, -7, 7, 12,
					-- layer=3 filter=37 channel=45
					13, -2, 16, 0, -11, 34, 15, -15, -61,
					-- layer=3 filter=37 channel=46
					19, 4, 9, -12, -70, -36, 19, 12, 21,
					-- layer=3 filter=37 channel=47
					18, 21, 45, 78, -6, 30, 0, -22, -37,
					-- layer=3 filter=37 channel=48
					0, -8, 21, 30, -26, -22, 23, 7, 53,
					-- layer=3 filter=37 channel=49
					-25, 5, 0, -33, -11, -37, -4, 65, -4,
					-- layer=3 filter=37 channel=50
					55, 42, -3, 4, 14, -36, -17, -25, 29,
					-- layer=3 filter=37 channel=51
					-11, -29, 6, 38, 32, 38, 19, -10, -16,
					-- layer=3 filter=37 channel=52
					-27, 22, 8, -20, -59, -16, -16, -9, -3,
					-- layer=3 filter=37 channel=53
					-58, -30, -25, -27, 23, -22, -35, 39, 51,
					-- layer=3 filter=37 channel=54
					27, -26, -4, 4, -40, 40, 1, -20, -15,
					-- layer=3 filter=37 channel=55
					3, -9, -22, 27, -16, 0, 31, -38, -12,
					-- layer=3 filter=37 channel=56
					-1, 5, -13, 4, 22, 23, -35, -7, 15,
					-- layer=3 filter=37 channel=57
					5, 25, -11, -24, 18, -55, -15, 55, -5,
					-- layer=3 filter=37 channel=58
					-18, -40, -18, 24, 51, 43, 21, -6, 25,
					-- layer=3 filter=37 channel=59
					-4, -37, -27, -20, -36, 35, 9, 14, 40,
					-- layer=3 filter=37 channel=60
					6, 9, 11, -17, -8, 2, 15, -1, 2,
					-- layer=3 filter=37 channel=61
					-29, -40, -27, -23, -51, -42, 32, 1, 28,
					-- layer=3 filter=37 channel=62
					3, -71, -10, 42, 37, 74, 42, -47, -15,
					-- layer=3 filter=37 channel=63
					-8, 1, -6, -2, 20, -3, 1, -14, -2,
					-- layer=3 filter=38 channel=0
					6, -13, 12, -35, 4, 18, 48, 14, 14,
					-- layer=3 filter=38 channel=1
					-17, -5, -39, 22, -52, 12, 27, 62, 30,
					-- layer=3 filter=38 channel=2
					-20, -25, -17, 26, -8, -42, -4, 26, -3,
					-- layer=3 filter=38 channel=3
					-13, -37, 3, -13, -4, 29, -45, -21, 2,
					-- layer=3 filter=38 channel=4
					17, 33, 6, -7, -37, -14, 0, 24, 16,
					-- layer=3 filter=38 channel=5
					13, 3, 10, 14, 16, 16, 27, 22, 12,
					-- layer=3 filter=38 channel=6
					21, -17, -24, 48, 3, -11, 3, -11, -16,
					-- layer=3 filter=38 channel=7
					-44, -8, 1, 3, 15, -3, -4, 50, 14,
					-- layer=3 filter=38 channel=8
					-2, 3, -16, 2, -20, -24, 26, -5, 7,
					-- layer=3 filter=38 channel=9
					6, 21, 4, -5, -24, -16, 60, -10, 14,
					-- layer=3 filter=38 channel=10
					-62, -25, -63, 17, -23, -59, -37, -1, -32,
					-- layer=3 filter=38 channel=11
					0, 39, 17, 11, -14, 34, 27, 40, 14,
					-- layer=3 filter=38 channel=12
					-3, -10, 2, -6, -32, 17, 35, -1, -8,
					-- layer=3 filter=38 channel=13
					-1, 14, 6, 21, -13, -20, 19, -19, -7,
					-- layer=3 filter=38 channel=14
					29, 37, 3, 18, -16, -9, 10, 13, 47,
					-- layer=3 filter=38 channel=15
					-28, -5, -56, -32, -28, -78, 9, 52, -8,
					-- layer=3 filter=38 channel=16
					-32, 9, 14, -17, -50, -30, -48, 7, -20,
					-- layer=3 filter=38 channel=17
					2, -8, 31, 36, -28, 27, -8, -3, 13,
					-- layer=3 filter=38 channel=18
					0, 23, 13, 16, 18, 23, -26, 18, -21,
					-- layer=3 filter=38 channel=19
					16, -14, 38, 28, -52, -12, -18, -11, 25,
					-- layer=3 filter=38 channel=20
					6, -7, -28, 29, 8, -26, -19, -1, -14,
					-- layer=3 filter=38 channel=21
					24, 20, 13, -4, 11, 37, 36, -7, 34,
					-- layer=3 filter=38 channel=22
					9, 5, -9, 12, 5, -1, 11, -4, -14,
					-- layer=3 filter=38 channel=23
					56, 56, 66, 0, 41, 35, 18, 6, -8,
					-- layer=3 filter=38 channel=24
					-3, -14, -9, 13, 7, 19, 7, 10, -13,
					-- layer=3 filter=38 channel=25
					17, -17, 6, 21, -8, -25, -4, -38, -54,
					-- layer=3 filter=38 channel=26
					-7, 13, 6, 10, -1, 7, 2, -12, 4,
					-- layer=3 filter=38 channel=27
					33, 3, 1, 39, -33, -30, 19, 0, 30,
					-- layer=3 filter=38 channel=28
					-9, -3, 6, -4, -15, -9, -4, -1, 7,
					-- layer=3 filter=38 channel=29
					-33, 2, -13, -26, 60, 0, -11, 33, 7,
					-- layer=3 filter=38 channel=30
					-2, 7, 10, 0, 8, -6, -6, 4, 10,
					-- layer=3 filter=38 channel=31
					-41, 46, -47, -43, -2, 0, 0, -62, -34,
					-- layer=3 filter=38 channel=32
					30, 22, 20, 30, 1, -16, -43, -14, -16,
					-- layer=3 filter=38 channel=33
					41, 37, 11, -14, 6, 0, 16, 6, 16,
					-- layer=3 filter=38 channel=34
					-2, 12, 20, -3, -22, -28, -38, -30, -1,
					-- layer=3 filter=38 channel=35
					35, 19, 28, 15, -18, -10, 6, -18, -3,
					-- layer=3 filter=38 channel=36
					4, -17, -29, 19, -10, 7, 38, 21, 60,
					-- layer=3 filter=38 channel=37
					49, -5, 3, 31, -29, 11, 43, -38, -28,
					-- layer=3 filter=38 channel=38
					-8, 23, 18, 25, 14, 19, -19, -21, -30,
					-- layer=3 filter=38 channel=39
					-8, 0, 1, 15, 10, 2, 6, 4, 8,
					-- layer=3 filter=38 channel=40
					22, 24, 12, 28, 17, 12, -48, 9, -29,
					-- layer=3 filter=38 channel=41
					-18, -17, -48, 5, -20, -28, 34, -44, -11,
					-- layer=3 filter=38 channel=42
					23, 14, 14, 42, 21, 10, 26, 40, -1,
					-- layer=3 filter=38 channel=43
					-55, -4, -50, -27, 48, -4, -53, 8, -15,
					-- layer=3 filter=38 channel=44
					-11, -12, -8, 13, 6, 11, 10, -12, 8,
					-- layer=3 filter=38 channel=45
					1, 33, -6, 15, -59, -25, 70, 37, 33,
					-- layer=3 filter=38 channel=46
					-33, -4, -7, -9, -10, -8, 0, -13, -16,
					-- layer=3 filter=38 channel=47
					-3, -11, -13, -31, -17, -8, 20, 4, 18,
					-- layer=3 filter=38 channel=48
					-20, 6, -7, 5, 2, 15, -9, -3, -22,
					-- layer=3 filter=38 channel=49
					40, 59, 15, 46, 15, -7, 25, -10, 2,
					-- layer=3 filter=38 channel=50
					-15, -15, 3, 9, 6, 26, 13, -23, -5,
					-- layer=3 filter=38 channel=51
					10, 12, 10, -14, 4, -7, -36, 38, 11,
					-- layer=3 filter=38 channel=52
					-30, -9, -26, -7, -21, -18, -28, 27, 40,
					-- layer=3 filter=38 channel=53
					-8, 14, 26, -42, -3, -15, 69, -22, -12,
					-- layer=3 filter=38 channel=54
					25, 5, -20, -7, -16, -10, -31, 1, -46,
					-- layer=3 filter=38 channel=55
					-12, 17, -29, 14, -10, 0, -28, 22, 25,
					-- layer=3 filter=38 channel=56
					-46, -47, -40, -6, 2, 15, 18, 21, -14,
					-- layer=3 filter=38 channel=57
					42, 34, 52, 14, 37, 38, 13, -17, 27,
					-- layer=3 filter=38 channel=58
					-40, -4, -2, 9, 50, 6, -39, 54, -32,
					-- layer=3 filter=38 channel=59
					-11, 15, -3, -34, -36, -11, 19, 2, -64,
					-- layer=3 filter=38 channel=60
					13, -16, 19, 12, -16, -19, -17, 2, -20,
					-- layer=3 filter=38 channel=61
					4, 11, 33, -13, 25, 41, 7, -20, -29,
					-- layer=3 filter=38 channel=62
					-17, 26, 12, -75, -55, -9, -51, -30, -9,
					-- layer=3 filter=38 channel=63
					-2, 3, 12, 12, -6, 6, 3, 11, -1,
					-- layer=3 filter=39 channel=0
					-18, -11, -3, 0, -1, 1, -10, -3, -1,
					-- layer=3 filter=39 channel=1
					-17, -6, -8, -5, -9, -4, -13, -17, -21,
					-- layer=3 filter=39 channel=2
					-1, -17, -1, 9, -10, -6, -1, -25, -18,
					-- layer=3 filter=39 channel=3
					-5, -19, -10, -12, -18, 7, -5, -16, 8,
					-- layer=3 filter=39 channel=4
					-11, -6, 7, 6, -8, -18, 0, -17, -1,
					-- layer=3 filter=39 channel=5
					13, -6, 12, -6, 2, 1, 10, 6, -3,
					-- layer=3 filter=39 channel=6
					-17, 5, 0, 4, -15, -9, 0, -12, -4,
					-- layer=3 filter=39 channel=7
					0, -13, -10, 4, 8, -6, 7, 5, -10,
					-- layer=3 filter=39 channel=8
					1, 8, -12, 0, -7, 2, 5, -1, -5,
					-- layer=3 filter=39 channel=9
					-14, -10, -8, 10, -16, 5, 8, 2, 0,
					-- layer=3 filter=39 channel=10
					7, -10, -7, 3, -8, 0, -8, 7, -12,
					-- layer=3 filter=39 channel=11
					-4, 15, 9, 6, -8, -16, -5, 5, -3,
					-- layer=3 filter=39 channel=12
					7, -16, 0, -12, -14, 3, 5, -19, 5,
					-- layer=3 filter=39 channel=13
					-1, -7, -3, 4, -7, -9, 3, -12, -15,
					-- layer=3 filter=39 channel=14
					3, -4, 8, -15, -7, 1, -16, -6, 14,
					-- layer=3 filter=39 channel=15
					2, -16, -6, -9, -6, -19, -4, 0, 0,
					-- layer=3 filter=39 channel=16
					11, -9, 13, -13, -10, -5, -2, 3, -10,
					-- layer=3 filter=39 channel=17
					-8, -9, 5, 0, -5, 9, -18, -2, -15,
					-- layer=3 filter=39 channel=18
					-10, 0, 10, -11, 4, 0, -5, 11, -13,
					-- layer=3 filter=39 channel=19
					0, -12, -17, -3, 2, -1, 4, 3, -14,
					-- layer=3 filter=39 channel=20
					-8, 12, 11, -5, 7, 0, -5, -3, 3,
					-- layer=3 filter=39 channel=21
					13, -13, 0, 10, 0, 6, -19, 9, -3,
					-- layer=3 filter=39 channel=22
					-6, -10, 3, -12, 5, -8, 10, 5, 1,
					-- layer=3 filter=39 channel=23
					-2, -13, -6, 5, -6, -4, 7, 0, -13,
					-- layer=3 filter=39 channel=24
					-21, -21, 5, -2, 6, -11, 5, 4, -7,
					-- layer=3 filter=39 channel=25
					9, -12, -1, -13, 1, 7, -10, -12, -3,
					-- layer=3 filter=39 channel=26
					-1, 0, -10, 3, 14, 3, 7, 8, 6,
					-- layer=3 filter=39 channel=27
					3, -20, 2, 2, -7, -12, -9, -20, -18,
					-- layer=3 filter=39 channel=28
					-4, -9, 4, -12, 9, 5, -15, 3, 11,
					-- layer=3 filter=39 channel=29
					-11, -17, 0, -9, 3, -11, -9, -3, -18,
					-- layer=3 filter=39 channel=30
					1, 1, -11, -10, -10, 14, -11, 13, 0,
					-- layer=3 filter=39 channel=31
					2, -5, 3, 7, -6, -10, 1, -1, 4,
					-- layer=3 filter=39 channel=32
					3, -7, -2, 6, 7, -4, -2, 0, 13,
					-- layer=3 filter=39 channel=33
					1, -13, 5, -10, -2, -11, -4, 5, 3,
					-- layer=3 filter=39 channel=34
					-13, 1, -17, 0, -13, 4, -5, -3, -5,
					-- layer=3 filter=39 channel=35
					-1, -19, 4, -18, 0, -11, -13, 6, 5,
					-- layer=3 filter=39 channel=36
					-20, 4, -5, -8, 4, -18, -15, -12, 5,
					-- layer=3 filter=39 channel=37
					3, 9, -7, -13, 4, 7, -14, -18, -19,
					-- layer=3 filter=39 channel=38
					-3, -9, -7, -12, 9, -14, -9, 0, -3,
					-- layer=3 filter=39 channel=39
					14, -10, -5, 4, 8, -7, 9, -2, -8,
					-- layer=3 filter=39 channel=40
					10, -17, -12, -3, -17, 6, 7, -7, -10,
					-- layer=3 filter=39 channel=41
					-1, -3, -11, -7, 11, -11, 0, 1, -9,
					-- layer=3 filter=39 channel=42
					-12, -2, -1, -1, 1, -10, -10, -2, -9,
					-- layer=3 filter=39 channel=43
					-2, 0, -20, 6, -13, -16, -15, 9, -1,
					-- layer=3 filter=39 channel=44
					7, 11, -5, 14, -10, -6, -7, 7, -12,
					-- layer=3 filter=39 channel=45
					10, -22, 5, -4, -20, 6, -23, -22, -2,
					-- layer=3 filter=39 channel=46
					4, -4, -5, -10, -19, 5, -12, 6, -10,
					-- layer=3 filter=39 channel=47
					1, -20, -7, -16, -17, -15, -14, 4, -1,
					-- layer=3 filter=39 channel=48
					2, 3, -16, 4, 12, 0, -15, 3, -5,
					-- layer=3 filter=39 channel=49
					4, 4, -6, 9, -6, 2, 10, -1, -4,
					-- layer=3 filter=39 channel=50
					7, 4, 4, -2, 6, -15, -14, -3, 1,
					-- layer=3 filter=39 channel=51
					-1, 7, 10, -9, -12, 7, 6, 6, 1,
					-- layer=3 filter=39 channel=52
					-7, -10, -10, 2, 8, -11, 0, -18, -11,
					-- layer=3 filter=39 channel=53
					-13, 0, 4, 12, -4, 12, -8, 17, 12,
					-- layer=3 filter=39 channel=54
					-4, 3, -16, 9, -1, 9, -17, 3, -5,
					-- layer=3 filter=39 channel=55
					-13, 4, 4, -11, 0, 5, -3, -11, -5,
					-- layer=3 filter=39 channel=56
					-2, -8, 10, -10, 4, 2, -15, -6, -18,
					-- layer=3 filter=39 channel=57
					1, 0, 8, -14, -1, 13, -6, -18, -4,
					-- layer=3 filter=39 channel=58
					-3, 1, -17, -12, 0, 12, 10, 7, -12,
					-- layer=3 filter=39 channel=59
					-17, 1, 5, -13, -18, -13, 5, 17, 0,
					-- layer=3 filter=39 channel=60
					-5, 4, -8, -14, 8, 6, -19, 4, -4,
					-- layer=3 filter=39 channel=61
					8, -7, 7, 8, 10, 5, 4, -5, -2,
					-- layer=3 filter=39 channel=62
					7, 2, -3, 0, -13, -9, -13, 3, 5,
					-- layer=3 filter=39 channel=63
					2, -1, 7, -8, 12, -10, 11, -1, 7,
					-- layer=3 filter=40 channel=0
					-8, -1, -11, 8, 10, 12, 2, -5, -25,
					-- layer=3 filter=40 channel=1
					-19, 3, -1, -8, -39, -24, -33, -8, -24,
					-- layer=3 filter=40 channel=2
					4, -2, -7, -2, -24, -9, -9, -20, -9,
					-- layer=3 filter=40 channel=3
					9, -1, 0, -29, -11, -18, -14, -20, -30,
					-- layer=3 filter=40 channel=4
					-23, 0, -4, -13, 10, 5, 3, -3, -8,
					-- layer=3 filter=40 channel=5
					-1, -10, 13, -2, -5, 7, 8, -15, -21,
					-- layer=3 filter=40 channel=6
					-30, -14, -14, -11, -9, -10, -24, -11, 1,
					-- layer=3 filter=40 channel=7
					-23, -19, -20, -18, -24, -28, -6, 3, -6,
					-- layer=3 filter=40 channel=8
					-18, -16, -5, -22, -24, 15, -2, -26, -20,
					-- layer=3 filter=40 channel=9
					-22, -8, -16, -34, -18, -2, -31, -18, -37,
					-- layer=3 filter=40 channel=10
					-44, -21, -16, -23, -31, -20, -32, -6, -20,
					-- layer=3 filter=40 channel=11
					-22, -25, -25, -25, -22, 0, -18, -39, 17,
					-- layer=3 filter=40 channel=12
					-30, -13, -13, 19, 22, 1, -20, 15, -3,
					-- layer=3 filter=40 channel=13
					-7, 0, 7, 10, -19, 2, -16, 7, -21,
					-- layer=3 filter=40 channel=14
					-4, -6, 26, -16, 7, 5, -16, 0, -30,
					-- layer=3 filter=40 channel=15
					-40, -36, -27, -6, -7, -5, -24, -4, -37,
					-- layer=3 filter=40 channel=16
					-35, 0, -17, 0, -48, -16, -15, 36, 25,
					-- layer=3 filter=40 channel=17
					1, -18, 3, 3, -4, -5, 0, -18, 8,
					-- layer=3 filter=40 channel=18
					-6, -10, 12, -13, -12, -13, 3, -33, -25,
					-- layer=3 filter=40 channel=19
					-11, -6, 10, -3, 1, -14, 16, -5, -5,
					-- layer=3 filter=40 channel=20
					0, -37, 14, -14, 3, 22, 6, -1, -35,
					-- layer=3 filter=40 channel=21
					1, -20, -19, 10, 3, -30, -22, -10, -13,
					-- layer=3 filter=40 channel=22
					-3, 3, 7, -1, 9, 8, -3, 1, -3,
					-- layer=3 filter=40 channel=23
					-15, -11, -17, 0, -37, -42, 13, 0, -20,
					-- layer=3 filter=40 channel=24
					-12, 6, -21, -17, -14, -9, 8, -26, -21,
					-- layer=3 filter=40 channel=25
					26, 16, 17, 25, 0, 0, 8, -3, 22,
					-- layer=3 filter=40 channel=26
					-10, 12, 3, -13, 5, -2, -10, 16, 0,
					-- layer=3 filter=40 channel=27
					-18, -12, 8, -3, -14, -6, 4, -19, -27,
					-- layer=3 filter=40 channel=28
					-12, 11, 4, -4, -3, 2, -9, -10, -1,
					-- layer=3 filter=40 channel=29
					-34, -12, -47, 10, 6, -26, -24, -19, -44,
					-- layer=3 filter=40 channel=30
					-7, 0, 12, 4, -3, 4, -6, -13, -6,
					-- layer=3 filter=40 channel=31
					-41, 13, 18, -2, 3, -17, -8, 18, -44,
					-- layer=3 filter=40 channel=32
					-23, -33, -32, 13, -9, -20, -6, 0, -3,
					-- layer=3 filter=40 channel=33
					-25, -20, -13, -33, -3, -8, -38, 4, -21,
					-- layer=3 filter=40 channel=34
					-4, -17, -5, -20, 16, 2, 4, -35, -24,
					-- layer=3 filter=40 channel=35
					-17, -7, -8, 18, -20, -19, 4, -33, -8,
					-- layer=3 filter=40 channel=36
					-9, 0, -32, -36, -18, -50, -11, -22, -30,
					-- layer=3 filter=40 channel=37
					-31, -3, 19, -16, -22, 26, -4, 6, 11,
					-- layer=3 filter=40 channel=38
					-27, -10, -8, 12, -10, 7, -3, 1, 9,
					-- layer=3 filter=40 channel=39
					-2, -11, 2, -11, -13, 4, -4, 11, 9,
					-- layer=3 filter=40 channel=40
					-27, -23, 0, -2, -18, 4, -6, 0, 18,
					-- layer=3 filter=40 channel=41
					-21, -44, -33, -8, -42, 10, -16, -4, -11,
					-- layer=3 filter=40 channel=42
					-11, -19, -5, -14, -22, 11, 8, -20, -12,
					-- layer=3 filter=40 channel=43
					0, -32, -9, -24, 0, -3, -10, -26, -3,
					-- layer=3 filter=40 channel=44
					-8, -11, -11, 9, -8, -10, 7, 2, 11,
					-- layer=3 filter=40 channel=45
					-18, -1, -21, -19, -13, 16, -2, 6, -31,
					-- layer=3 filter=40 channel=46
					8, 5, -30, 14, -8, -5, -17, 19, 10,
					-- layer=3 filter=40 channel=47
					-35, -3, 6, -25, -13, -45, -27, -20, -17,
					-- layer=3 filter=40 channel=48
					-31, -12, -49, -18, -23, -15, -1, 23, -9,
					-- layer=3 filter=40 channel=49
					-2, -21, -32, 21, -13, 8, -13, -20, 5,
					-- layer=3 filter=40 channel=50
					-16, -14, -26, -37, -36, -24, -18, -35, -16,
					-- layer=3 filter=40 channel=51
					-30, 18, -13, -6, -12, -18, 0, 4, -34,
					-- layer=3 filter=40 channel=52
					-12, -8, -20, 8, -22, 1, 3, 8, 10,
					-- layer=3 filter=40 channel=53
					-24, -6, 13, 0, -33, -3, -7, -13, 9,
					-- layer=3 filter=40 channel=54
					7, 17, -1, -19, -18, -4, 6, 10, -5,
					-- layer=3 filter=40 channel=55
					-5, -15, -51, -28, -45, -43, -18, -13, -11,
					-- layer=3 filter=40 channel=56
					-23, -1, -17, -16, -3, 6, -29, -3, -16,
					-- layer=3 filter=40 channel=57
					-46, -20, 18, -40, -34, -14, -27, -1, 0,
					-- layer=3 filter=40 channel=58
					20, -30, -4, -35, -9, -42, -20, 0, -19,
					-- layer=3 filter=40 channel=59
					-16, -23, -24, -17, 10, -8, -26, -21, 0,
					-- layer=3 filter=40 channel=60
					-4, -25, 21, -15, -6, -3, 6, 0, 1,
					-- layer=3 filter=40 channel=61
					-5, -3, -4, -5, 8, -29, -24, 15, -5,
					-- layer=3 filter=40 channel=62
					-24, -23, -40, -20, 16, -16, -29, -14, 10,
					-- layer=3 filter=40 channel=63
					-4, -13, -3, -1, -13, -6, 9, 14, 1,
					-- layer=3 filter=41 channel=0
					-13, 0, 13, -8, -40, -8, -44, -62, -40,
					-- layer=3 filter=41 channel=1
					0, -6, -9, -23, 4, -7, 43, 11, 59,
					-- layer=3 filter=41 channel=2
					8, 41, -25, 15, -10, 16, 13, 24, 15,
					-- layer=3 filter=41 channel=3
					-14, 2, 12, -44, 0, -18, -37, -23, -29,
					-- layer=3 filter=41 channel=4
					19, 24, 5, -6, -9, -10, 19, -12, -9,
					-- layer=3 filter=41 channel=5
					-6, -9, 10, -7, -16, -8, -6, -12, -5,
					-- layer=3 filter=41 channel=6
					15, 51, -3, 35, 71, 16, 51, 20, -7,
					-- layer=3 filter=41 channel=7
					13, -16, 33, 1, 4, 35, 40, 12, 32,
					-- layer=3 filter=41 channel=8
					-34, 11, 8, -15, 26, 37, -29, 46, -3,
					-- layer=3 filter=41 channel=9
					10, -30, -18, 25, 7, 17, 53, 25, 11,
					-- layer=3 filter=41 channel=10
					8, -16, -29, 40, 8, -7, 23, 1, 5,
					-- layer=3 filter=41 channel=11
					44, 7, -14, 4, -14, -17, 53, -5, 5,
					-- layer=3 filter=41 channel=12
					7, 2, 13, 20, -36, -29, 0, 23, -8,
					-- layer=3 filter=41 channel=13
					5, 7, -17, -17, 21, 5, -9, 2, 49,
					-- layer=3 filter=41 channel=14
					-15, 47, 2, -15, -19, 8, 18, -29, -10,
					-- layer=3 filter=41 channel=15
					-10, -2, 8, -25, -11, 17, 25, -33, 22,
					-- layer=3 filter=41 channel=16
					-21, -26, 5, -36, -12, -46, -17, -65, -62,
					-- layer=3 filter=41 channel=17
					-11, 7, 15, 1, 18, 10, 14, -24, 1,
					-- layer=3 filter=41 channel=18
					2, -15, -62, 10, 35, 0, 7, -17, -20,
					-- layer=3 filter=41 channel=19
					-8, 19, -8, -56, 19, -62, 5, 14, 0,
					-- layer=3 filter=41 channel=20
					39, 61, -23, 27, 0, 13, 18, 25, 6,
					-- layer=3 filter=41 channel=21
					-40, -20, 4, -10, 6, 20, 25, 25, 38,
					-- layer=3 filter=41 channel=22
					-1, -13, 11, 0, -11, 3, 15, 0, 0,
					-- layer=3 filter=41 channel=23
					-56, -35, -4, -14, 24, 24, -33, 0, 8,
					-- layer=3 filter=41 channel=24
					32, 45, 19, -9, 70, 19, 28, -13, -14,
					-- layer=3 filter=41 channel=25
					-38, 13, -11, -6, 31, 4, 11, 30, -12,
					-- layer=3 filter=41 channel=26
					6, 14, -13, -13, 13, 2, 6, 0, -6,
					-- layer=3 filter=41 channel=27
					-18, 7, -11, -13, 31, -11, -28, -25, -7,
					-- layer=3 filter=41 channel=28
					0, -3, 12, -14, 12, 1, 7, 3, -2,
					-- layer=3 filter=41 channel=29
					23, 43, 34, 4, 19, 11, 43, 2, 22,
					-- layer=3 filter=41 channel=30
					-9, -11, -16, 6, -6, 19, 5, -5, -19,
					-- layer=3 filter=41 channel=31
					-15, -6, -11, 25, 66, 20, 52, 39, 53,
					-- layer=3 filter=41 channel=32
					11, -18, -10, 18, 0, -3, -35, -1, 13,
					-- layer=3 filter=41 channel=33
					26, -12, -39, 34, -1, -22, 6, 19, 19,
					-- layer=3 filter=41 channel=34
					-13, -28, -3, 9, 30, 0, 2, 19, 19,
					-- layer=3 filter=41 channel=35
					-5, 23, -10, -3, 24, 9, -6, 1, 6,
					-- layer=3 filter=41 channel=36
					17, -8, -14, 5, -7, 13, 53, -5, 23,
					-- layer=3 filter=41 channel=37
					-10, -22, -26, 2, 18, 10, 14, 19, 29,
					-- layer=3 filter=41 channel=38
					-29, 17, -3, 8, -5, 20, -20, 5, -27,
					-- layer=3 filter=41 channel=39
					3, 6, -9, -12, -5, 13, -12, 4, 2,
					-- layer=3 filter=41 channel=40
					3, 11, -7, -19, -31, -29, -24, 22, 10,
					-- layer=3 filter=41 channel=41
					-9, 6, -8, -40, -2, 22, -35, 10, 26,
					-- layer=3 filter=41 channel=42
					-19, 12, 43, -18, 31, 38, -24, -52, 27,
					-- layer=3 filter=41 channel=43
					-24, 31, 4, -1, -5, 6, 2, 32, -42,
					-- layer=3 filter=41 channel=44
					2, -4, -12, -14, 14, 16, 3, -13, -3,
					-- layer=3 filter=41 channel=45
					-3, 10, 1, -20, 34, 3, 10, 0, 26,
					-- layer=3 filter=41 channel=46
					-6, -23, -5, -7, 17, -22, -6, 9, 16,
					-- layer=3 filter=41 channel=47
					18, -63, 4, 18, -40, -9, -13, -19, -3,
					-- layer=3 filter=41 channel=48
					38, 27, 29, -25, -21, -10, 15, 17, -38,
					-- layer=3 filter=41 channel=49
					6, -42, -16, -38, -12, 24, -2, 0, 69,
					-- layer=3 filter=41 channel=50
					-24, 38, 25, 23, 20, 11, 42, 6, 8,
					-- layer=3 filter=41 channel=51
					43, -19, -1, -13, -31, -33, -34, -11, -4,
					-- layer=3 filter=41 channel=52
					12, 9, 19, 12, 27, 9, 0, -33, -17,
					-- layer=3 filter=41 channel=53
					26, 19, 9, 36, -6, -23, 25, -13, -39,
					-- layer=3 filter=41 channel=54
					-14, -24, 17, -28, 4, 14, 5, 15, -11,
					-- layer=3 filter=41 channel=55
					-25, 18, 4, -30, 0, 29, -25, 38, 15,
					-- layer=3 filter=41 channel=56
					-3, -28, 17, 44, 17, -11, 10, -13, -37,
					-- layer=3 filter=41 channel=57
					-26, -42, -89, 45, -35, -43, 39, -12, -42,
					-- layer=3 filter=41 channel=58
					10, -33, 7, 8, -54, 22, 19, 14, -34,
					-- layer=3 filter=41 channel=59
					0, -6, 8, 1, 7, -6, -10, -14, -8,
					-- layer=3 filter=41 channel=60
					-22, 26, -28, -14, 32, 5, 26, 21, -3,
					-- layer=3 filter=41 channel=61
					-38, 0, 10, 0, 3, 40, -13, 15, -13,
					-- layer=3 filter=41 channel=62
					-13, -19, 7, 31, -10, -18, 16, -28, 21,
					-- layer=3 filter=41 channel=63
					4, 1, 21, 7, -2, 0, -11, 1, 6,
					-- layer=3 filter=42 channel=0
					9, -6, 5, -19, -22, 38, -36, -56, -53,
					-- layer=3 filter=42 channel=1
					8, -4, 3, 53, -11, 43, 45, -14, -14,
					-- layer=3 filter=42 channel=2
					28, -5, 28, -8, -93, -8, -65, -52, -66,
					-- layer=3 filter=42 channel=3
					8, 16, 23, 31, -29, 18, 16, -21, 32,
					-- layer=3 filter=42 channel=4
					-13, 6, 19, -18, 16, 21, -22, 1, 16,
					-- layer=3 filter=42 channel=5
					2, 17, -1, 15, -6, 10, -14, 2, 2,
					-- layer=3 filter=42 channel=6
					22, 13, -3, 18, -5, 0, 20, -21, 25,
					-- layer=3 filter=42 channel=7
					12, -3, -22, 31, -6, 19, -7, 33, 14,
					-- layer=3 filter=42 channel=8
					7, -20, -11, 57, 14, 44, 8, -14, 32,
					-- layer=3 filter=42 channel=9
					29, -6, 10, 12, 55, 22, 13, 12, 21,
					-- layer=3 filter=42 channel=10
					-21, -9, -51, 16, 24, -5, -12, -32, -13,
					-- layer=3 filter=42 channel=11
					-11, -2, 4, -25, -26, 43, -27, -8, 40,
					-- layer=3 filter=42 channel=12
					7, -5, 18, 28, 39, 16, 23, 23, 8,
					-- layer=3 filter=42 channel=13
					5, 32, 3, -16, -30, -30, -31, -7, -31,
					-- layer=3 filter=42 channel=14
					-11, -20, 9, 49, 15, 52, -5, 53, 25,
					-- layer=3 filter=42 channel=15
					8, -2, 17, -2, 2, -29, 20, -9, 9,
					-- layer=3 filter=42 channel=16
					-13, -43, -49, -5, 18, -2, -31, 14, 32,
					-- layer=3 filter=42 channel=17
					34, 26, 30, -14, -11, 12, -10, 20, 0,
					-- layer=3 filter=42 channel=18
					-32, -26, 16, 14, 22, -39, 20, -8, -41,
					-- layer=3 filter=42 channel=19
					-21, 35, -23, 17, 6, 46, -3, 12, 0,
					-- layer=3 filter=42 channel=20
					-4, 21, -9, 51, 31, -37, -56, -48, -18,
					-- layer=3 filter=42 channel=21
					-65, -67, -32, -73, -18, 43, -40, 1, -3,
					-- layer=3 filter=42 channel=22
					4, -3, -7, -3, 12, 6, 13, 10, 10,
					-- layer=3 filter=42 channel=23
					-79, -25, -4, -44, 55, 13, -30, 31, -7,
					-- layer=3 filter=42 channel=24
					-4, 50, 24, 11, -16, 10, -11, -6, -12,
					-- layer=3 filter=42 channel=25
					20, -14, -6, -21, -18, -13, -9, 52, -9,
					-- layer=3 filter=42 channel=26
					3, 9, -14, 13, -16, -16, 6, -5, 4,
					-- layer=3 filter=42 channel=27
					51, 37, 14, 30, -2, 19, -32, -18, -9,
					-- layer=3 filter=42 channel=28
					-7, -1, -13, 13, -14, 11, 3, -1, 14,
					-- layer=3 filter=42 channel=29
					15, 14, 27, 15, -22, 20, 11, -73, -47,
					-- layer=3 filter=42 channel=30
					-8, 12, -4, -7, 9, -13, 14, -15, 11,
					-- layer=3 filter=42 channel=31
					-35, -5, 0, 15, 17, 37, -27, 20, -5,
					-- layer=3 filter=42 channel=32
					5, 3, -24, 11, 17, 30, -35, 28, 33,
					-- layer=3 filter=42 channel=33
					-23, -23, -36, 13, 59, -8, -31, 2, -15,
					-- layer=3 filter=42 channel=34
					14, 18, -52, -28, -1, 0, 9, 40, 61,
					-- layer=3 filter=42 channel=35
					5, 0, 12, 23, 6, -3, -6, 16, 0,
					-- layer=3 filter=42 channel=36
					-22, 1, -10, 33, -25, -42, 23, -7, -36,
					-- layer=3 filter=42 channel=37
					-4, -8, -19, 36, -33, 23, 28, 12, 26,
					-- layer=3 filter=42 channel=38
					-19, -8, -3, 12, -6, 5, 4, -11, -6,
					-- layer=3 filter=42 channel=39
					0, 14, 10, -15, 5, 7, -11, -6, 0,
					-- layer=3 filter=42 channel=40
					-24, -69, -22, -22, 14, -10, -50, 19, -19,
					-- layer=3 filter=42 channel=41
					-8, -5, -9, 45, 1, 31, 24, 18, 24,
					-- layer=3 filter=42 channel=42
					6, 40, 4, -12, -43, 5, 3, 36, 37,
					-- layer=3 filter=42 channel=43
					32, 45, 43, 13, -2, 28, -35, -6, 0,
					-- layer=3 filter=42 channel=44
					-16, 7, 7, 6, 9, -3, 0, -5, 7,
					-- layer=3 filter=42 channel=45
					23, 14, 8, 41, -64, 50, 20, -58, 6,
					-- layer=3 filter=42 channel=46
					-36, -8, -29, -41, 3, -4, -19, 11, -7,
					-- layer=3 filter=42 channel=47
					30, 5, 35, 27, 5, 5, -9, -31, 11,
					-- layer=3 filter=42 channel=48
					-26, 16, -9, 4, -1, 44, -57, -8, -54,
					-- layer=3 filter=42 channel=49
					-31, -59, -76, -14, -21, 35, -12, 45, 2,
					-- layer=3 filter=42 channel=50
					-7, -3, 27, -18, 24, 41, 10, 22, 15,
					-- layer=3 filter=42 channel=51
					-27, -52, -21, 8, -24, 6, 46, 36, 46,
					-- layer=3 filter=42 channel=52
					-35, 14, 11, -33, 0, 51, -12, -7, -10,
					-- layer=3 filter=42 channel=53
					-54, -23, -26, -19, 36, 44, -8, -2, -54,
					-- layer=3 filter=42 channel=54
					12, -6, 0, -26, -17, -13, 9, 25, 25,
					-- layer=3 filter=42 channel=55
					-17, -6, -18, 9, 20, 45, -4, -21, 30,
					-- layer=3 filter=42 channel=56
					25, 11, -15, 15, -17, -18, 44, -11, 7,
					-- layer=3 filter=42 channel=57
					-69, -8, -52, -21, 18, -23, 40, 60, -45,
					-- layer=3 filter=42 channel=58
					-11, -62, -38, 28, 10, -6, -23, -34, -26,
					-- layer=3 filter=42 channel=59
					4, 11, 6, 2, 28, 53, -19, -13, 4,
					-- layer=3 filter=42 channel=60
					13, 20, 21, 14, 35, 8, -8, 24, -7,
					-- layer=3 filter=42 channel=61
					-59, -11, -18, -56, 40, 16, -32, 30, -4,
					-- layer=3 filter=42 channel=62
					-3, -15, -12, 65, 13, 35, 43, -8, 4,
					-- layer=3 filter=42 channel=63
					-9, 0, 14, -24, 26, 5, -8, 2, 12,
					-- layer=3 filter=43 channel=0
					-10, 41, -4, -11, 15, -52, -47, -53, -52,
					-- layer=3 filter=43 channel=1
					0, -54, -31, -62, -34, -108, -35, -11, -17,
					-- layer=3 filter=43 channel=2
					21, -38, 16, -7, -38, 52, 22, 37, 70,
					-- layer=3 filter=43 channel=3
					-12, 20, -3, 6, -64, -38, 21, 1, 14,
					-- layer=3 filter=43 channel=4
					5, 14, 8, 34, 33, 47, -25, -26, -25,
					-- layer=3 filter=43 channel=5
					9, -3, -10, 4, -1, -21, 3, -4, 7,
					-- layer=3 filter=43 channel=6
					14, 15, 12, -23, -71, 0, -12, 8, 6,
					-- layer=3 filter=43 channel=7
					-57, -42, 30, 2, -30, -1, -7, -10, 20,
					-- layer=3 filter=43 channel=8
					-7, 32, -4, 28, -32, -14, 11, -2, -22,
					-- layer=3 filter=43 channel=9
					32, -25, -13, -46, -39, -14, 15, 8, 14,
					-- layer=3 filter=43 channel=10
					23, -6, 26, -17, -6, -22, 22, 2, -19,
					-- layer=3 filter=43 channel=11
					22, 4, -39, 0, 2, -4, -24, -71, -47,
					-- layer=3 filter=43 channel=12
					38, -25, 5, -13, -74, -45, -17, 0, 36,
					-- layer=3 filter=43 channel=13
					-15, -8, -46, 16, -18, 8, 5, -18, 26,
					-- layer=3 filter=43 channel=14
					-15, -64, 12, -4, -31, -12, -15, 9, -30,
					-- layer=3 filter=43 channel=15
					5, 5, 11, 26, 16, 39, 33, 22, 41,
					-- layer=3 filter=43 channel=16
					62, 12, -2, 54, 5, 36, -2, -31, 10,
					-- layer=3 filter=43 channel=17
					9, -4, -24, 5, 35, 18, -9, 1, 2,
					-- layer=3 filter=43 channel=18
					11, 21, 22, 9, 29, 25, -31, 0, -14,
					-- layer=3 filter=43 channel=19
					-3, 3, -13, 23, 1, 12, 64, 32, 44,
					-- layer=3 filter=43 channel=20
					-25, -16, 27, 24, 9, 12, 38, -6, -15,
					-- layer=3 filter=43 channel=21
					33, 16, -22, 6, 24, -8, 2, 4, 31,
					-- layer=3 filter=43 channel=22
					-12, 2, 11, -12, -11, -6, -1, 0, 6,
					-- layer=3 filter=43 channel=23
					-26, -37, -6, 4, -19, -19, 10, -37, -16,
					-- layer=3 filter=43 channel=24
					-40, -38, -68, 35, -9, 2, -1, 1, 26,
					-- layer=3 filter=43 channel=25
					-2, 24, 23, -20, -19, 7, -22, -15, -21,
					-- layer=3 filter=43 channel=26
					11, -11, -14, 0, 10, 0, -5, 8, 9,
					-- layer=3 filter=43 channel=27
					-60, -49, -48, 2, -26, -8, 14, -33, -7,
					-- layer=3 filter=43 channel=28
					-8, 15, -1, -3, 9, 9, -9, 0, 4,
					-- layer=3 filter=43 channel=29
					7, 38, 48, 22, 34, 57, -39, -75, -64,
					-- layer=3 filter=43 channel=30
					-11, 2, -5, 1, -12, -13, 16, 10, 16,
					-- layer=3 filter=43 channel=31
					52, 6, -33, 22, 34, 5, -12, 20, -36,
					-- layer=3 filter=43 channel=32
					-46, -13, -2, -39, -26, -45, -3, -26, -54,
					-- layer=3 filter=43 channel=33
					-16, -7, 5, 12, 0, -10, 46, -51, -27,
					-- layer=3 filter=43 channel=34
					17, 13, 4, -26, 12, 6, -14, -10, -27,
					-- layer=3 filter=43 channel=35
					-15, 0, 17, 29, 26, 40, -5, 12, 0,
					-- layer=3 filter=43 channel=36
					-21, -10, 27, -14, -53, 22, -6, -59, -25,
					-- layer=3 filter=43 channel=37
					-20, 6, -47, -12, -33, 16, -5, -13, -12,
					-- layer=3 filter=43 channel=38
					32, 9, 2, 1, 47, 6, -23, -1, -20,
					-- layer=3 filter=43 channel=39
					9, 5, -12, 5, 6, -1, 14, 0, -14,
					-- layer=3 filter=43 channel=40
					43, 52, 40, 22, 36, 46, 38, -17, -12,
					-- layer=3 filter=43 channel=41
					15, -28, -28, 4, 40, 23, 23, 0, 1,
					-- layer=3 filter=43 channel=42
					-36, -17, -44, 22, -33, 11, 24, -7, 5,
					-- layer=3 filter=43 channel=43
					22, -27, 31, 5, -17, 46, 36, 22, 32,
					-- layer=3 filter=43 channel=44
					6, -7, 0, 14, -12, 10, -11, 9, -13,
					-- layer=3 filter=43 channel=45
					-20, -16, -60, -24, -33, -94, -11, -9, -38,
					-- layer=3 filter=43 channel=46
					-5, -15, -20, -29, 22, -9, -1, 9, -7,
					-- layer=3 filter=43 channel=47
					35, -14, 1, -38, 0, -26, 59, 34, 67,
					-- layer=3 filter=43 channel=48
					16, 29, 65, 51, 54, 22, 8, -9, -34,
					-- layer=3 filter=43 channel=49
					-7, 32, -47, 4, 3, -3, -5, -34, -18,
					-- layer=3 filter=43 channel=50
					28, 0, -42, 15, -33, 25, 18, 36, 40,
					-- layer=3 filter=43 channel=51
					-1, 0, 32, 40, 44, 41, 2, 40, 32,
					-- layer=3 filter=43 channel=52
					-51, -25, -19, 29, -25, 0, 10, -36, 2,
					-- layer=3 filter=43 channel=53
					45, 40, 31, 82, 22, 20, -13, -13, 8,
					-- layer=3 filter=43 channel=54
					-10, 12, 15, -13, -57, -16, 15, 28, 22,
					-- layer=3 filter=43 channel=55
					-33, 6, 16, -46, 13, -37, 6, 38, -17,
					-- layer=3 filter=43 channel=56
					6, 20, 6, 4, 12, -17, 27, 6, 12,
					-- layer=3 filter=43 channel=57
					-7, -39, -24, 2, -46, -12, 0, -22, 20,
					-- layer=3 filter=43 channel=58
					2, 16, 36, 19, 27, 33, 9, 2, 51,
					-- layer=3 filter=43 channel=59
					-30, -13, -40, 12, -5, 9, -49, -41, -9,
					-- layer=3 filter=43 channel=60
					-18, 2, -5, -2, 27, 30, -13, -20, 3,
					-- layer=3 filter=43 channel=61
					20, -28, 25, -28, 13, -75, -49, 4, -11,
					-- layer=3 filter=43 channel=62
					6, -22, 37, 53, 5, -18, 35, 24, -2,
					-- layer=3 filter=43 channel=63
					-20, 3, 6, 0, 31, -17, 3, -9, -8,
					-- layer=3 filter=44 channel=0
					26, 16, 31, 13, -12, 30, -8, -20, -68,
					-- layer=3 filter=44 channel=1
					16, 33, -3, -50, -34, 11, 15, -42, 52,
					-- layer=3 filter=44 channel=2
					-4, 21, 3, 17, 0, -13, 15, 3, -5,
					-- layer=3 filter=44 channel=3
					36, 6, -9, 18, -18, 1, 16, -8, 17,
					-- layer=3 filter=44 channel=4
					-36, -4, 0, -2, -25, -36, 4, 41, 30,
					-- layer=3 filter=44 channel=5
					10, 0, -15, 9, 1, 12, -2, 10, 1,
					-- layer=3 filter=44 channel=6
					31, 34, 21, 33, 44, 22, 28, 17, 16,
					-- layer=3 filter=44 channel=7
					-49, -7, 0, 17, 9, -21, 74, -27, -43,
					-- layer=3 filter=44 channel=8
					-12, 35, 5, 8, 65, 26, 22, -5, -2,
					-- layer=3 filter=44 channel=9
					3, -10, 14, 12, 10, 57, 47, -42, -11,
					-- layer=3 filter=44 channel=10
					22, -6, 14, 37, 25, 9, 35, 10, 55,
					-- layer=3 filter=44 channel=11
					31, 24, -4, -70, -3, 9, -44, 0, -12,
					-- layer=3 filter=44 channel=12
					5, 16, 0, 21, -13, -1, 5, -35, -28,
					-- layer=3 filter=44 channel=13
					11, 37, 0, -16, -24, -31, 25, 0, -5,
					-- layer=3 filter=44 channel=14
					19, 38, -12, 20, 56, 6, 18, 24, 35,
					-- layer=3 filter=44 channel=15
					12, 11, 13, -5, -18, 11, 38, -8, 44,
					-- layer=3 filter=44 channel=16
					-10, 11, -16, -8, -33, -95, -25, -19, -3,
					-- layer=3 filter=44 channel=17
					9, 14, 26, -13, -10, 0, 31, 40, 11,
					-- layer=3 filter=44 channel=18
					7, -45, -51, 37, 22, -55, 24, 41, 0,
					-- layer=3 filter=44 channel=19
					-11, 23, -27, -4, 8, 21, -14, -2, 26,
					-- layer=3 filter=44 channel=20
					3, 14, 13, 50, 8, -15, 1, -29, 41,
					-- layer=3 filter=44 channel=21
					-74, -11, -13, -104, -31, 38, -60, -35, 10,
					-- layer=3 filter=44 channel=22
					-10, 1, -4, 1, -9, 12, -4, 2, 1,
					-- layer=3 filter=44 channel=23
					0, -6, 38, -21, -20, 2, -21, 47, -85,
					-- layer=3 filter=44 channel=24
					11, 22, 11, -8, 23, -11, -3, 21, 1,
					-- layer=3 filter=44 channel=25
					-7, 22, -15, -7, 1, 3, 3, -14, -12,
					-- layer=3 filter=44 channel=26
					-11, 10, 10, 0, -1, -14, 0, 0, 14,
					-- layer=3 filter=44 channel=27
					10, 45, -2, -18, -8, 33, -16, -12, -2,
					-- layer=3 filter=44 channel=28
					-2, 8, -11, 12, 12, 1, -2, 2, -6,
					-- layer=3 filter=44 channel=29
					-70, -80, -56, -9, 40, -39, 8, 23, 15,
					-- layer=3 filter=44 channel=30
					-6, 10, 8, -13, 8, -6, 4, -6, -6,
					-- layer=3 filter=44 channel=31
					7, 33, -32, -36, 2, -35, -71, 10, -100,
					-- layer=3 filter=44 channel=32
					21, 3, 9, 29, 9, -16, -66, -10, -5,
					-- layer=3 filter=44 channel=33
					-16, -36, -10, 48, 15, -34, -17, 1, 14,
					-- layer=3 filter=44 channel=34
					-16, -8, -39, 40, -8, 8, 28, -3, 30,
					-- layer=3 filter=44 channel=35
					-16, 17, 13, -2, 18, -5, 6, -10, -6,
					-- layer=3 filter=44 channel=36
					-15, 3, 9, -2, 7, -44, -12, -57, 7,
					-- layer=3 filter=44 channel=37
					-14, 9, -54, -24, 1, -54, -83, -74, -19,
					-- layer=3 filter=44 channel=38
					-30, -45, -38, -15, -19, -29, -51, -20, -26,
					-- layer=3 filter=44 channel=39
					1, -12, 10, -7, 0, 5, -15, 11, 3,
					-- layer=3 filter=44 channel=40
					27, -32, -1, 23, 37, 6, -31, 19, 1,
					-- layer=3 filter=44 channel=41
					-7, 20, 16, 47, 48, -9, 32, 22, 16,
					-- layer=3 filter=44 channel=42
					29, 9, 38, -18, -13, -18, 10, 11, -35,
					-- layer=3 filter=44 channel=43
					0, 29, -8, 17, 2, 0, -35, -20, 19,
					-- layer=3 filter=44 channel=44
					10, 4, 11, -12, 4, -1, 6, 1, -11,
					-- layer=3 filter=44 channel=45
					-42, 22, -3, -18, 2, 6, 61, -3, 42,
					-- layer=3 filter=44 channel=46
					-7, -12, -6, -16, 6, -5, -35, -43, -1,
					-- layer=3 filter=44 channel=47
					24, 34, 8, 9, -15, 21, 20, 30, 54,
					-- layer=3 filter=44 channel=48
					48, -2, 24, 10, 0, 19, -71, -24, -73,
					-- layer=3 filter=44 channel=49
					-28, 15, -37, -4, -4, -18, -47, -8, -4,
					-- layer=3 filter=44 channel=50
					-39, 22, -1, -22, 46, 57, 18, 16, 35,
					-- layer=3 filter=44 channel=51
					-34, -18, -27, 37, -25, 37, -15, -19, 28,
					-- layer=3 filter=44 channel=52
					-1, -2, 13, -8, 7, 16, 3, 3, -25,
					-- layer=3 filter=44 channel=53
					-87, -4, 20, -46, 19, 31, 15, 3, -14,
					-- layer=3 filter=44 channel=54
					-16, 11, -10, 21, -6, -16, 54, 0, 42,
					-- layer=3 filter=44 channel=55
					27, -1, 23, 11, 0, 21, 39, -4, 33,
					-- layer=3 filter=44 channel=56
					4, -24, 24, -14, -8, 21, 46, 9, 3,
					-- layer=3 filter=44 channel=57
					-13, -59, -63, 18, 25, -8, -37, 14, -13,
					-- layer=3 filter=44 channel=58
					-6, -13, 3, 64, -35, -5, 9, -41, -66,
					-- layer=3 filter=44 channel=59
					-6, 1, -2, -34, 22, 1, -86, -23, -102,
					-- layer=3 filter=44 channel=60
					-21, -5, -2, -1, 29, 25, 18, 17, 8,
					-- layer=3 filter=44 channel=61
					-9, -7, 15, -25, -3, 22, -20, 27, 25,
					-- layer=3 filter=44 channel=62
					9, 23, -6, 11, 30, 55, -16, -54, 30,
					-- layer=3 filter=44 channel=63
					9, 6, 4, -8, -2, -7, 12, 0, 15,
					-- layer=3 filter=45 channel=0
					-19, -17, -1, -21, -3, -3, -19, -7, -13,
					-- layer=3 filter=45 channel=1
					8, -8, -8, -2, -23, -5, 2, 6, 2,
					-- layer=3 filter=45 channel=2
					-19, 0, -15, -3, -10, 6, -19, -1, 0,
					-- layer=3 filter=45 channel=3
					-6, -18, -6, 5, -7, 2, 4, 3, -5,
					-- layer=3 filter=45 channel=4
					3, -18, 1, -20, -1, -16, -18, -17, -7,
					-- layer=3 filter=45 channel=5
					-7, -5, -12, 3, -10, -3, 5, -3, -7,
					-- layer=3 filter=45 channel=6
					8, -14, -1, -18, -13, 0, 4, 8, 4,
					-- layer=3 filter=45 channel=7
					8, 12, -3, -3, -16, 5, -4, -17, 0,
					-- layer=3 filter=45 channel=8
					-2, -3, -11, -3, -17, 4, -8, -12, -7,
					-- layer=3 filter=45 channel=9
					0, -17, 9, -1, -3, -4, -6, -12, -14,
					-- layer=3 filter=45 channel=10
					-8, -3, -15, -2, -13, 0, -6, -25, -1,
					-- layer=3 filter=45 channel=11
					-11, 0, 14, -9, 4, 8, -2, 1, -8,
					-- layer=3 filter=45 channel=12
					-19, 2, -11, -15, -24, 0, -7, -17, -10,
					-- layer=3 filter=45 channel=13
					-1, 7, 4, -3, 9, 5, -16, 11, 5,
					-- layer=3 filter=45 channel=14
					-10, -2, -15, -1, 10, 10, -1, -12, 7,
					-- layer=3 filter=45 channel=15
					-12, -4, 3, -22, -19, -2, 0, -15, -14,
					-- layer=3 filter=45 channel=16
					-9, -9, 6, -9, 7, 9, -16, -5, 10,
					-- layer=3 filter=45 channel=17
					3, -9, 1, 11, 10, -11, 8, 11, -19,
					-- layer=3 filter=45 channel=18
					-2, -6, 1, -6, -14, -13, 0, 0, -21,
					-- layer=3 filter=45 channel=19
					5, 13, -2, -1, -12, -5, 3, -9, -19,
					-- layer=3 filter=45 channel=20
					-10, 12, -16, 3, 12, -3, -16, -5, -9,
					-- layer=3 filter=45 channel=21
					-11, -10, -9, 3, -9, 7, -20, -1, -3,
					-- layer=3 filter=45 channel=22
					-14, 6, -1, -2, 8, -11, -7, -14, 4,
					-- layer=3 filter=45 channel=23
					-2, 1, -11, -14, -13, -11, 1, 1, 2,
					-- layer=3 filter=45 channel=24
					-15, -3, -13, -16, -17, -1, -3, -2, 1,
					-- layer=3 filter=45 channel=25
					3, -5, -11, -6, -16, 4, -11, -3, -8,
					-- layer=3 filter=45 channel=26
					-8, -6, 10, 12, -7, -11, 3, 11, -7,
					-- layer=3 filter=45 channel=27
					7, -6, 2, 9, 5, -8, -7, -15, -16,
					-- layer=3 filter=45 channel=28
					12, 11, -4, 10, 4, 6, 0, 1, 8,
					-- layer=3 filter=45 channel=29
					-12, 0, -5, 7, -5, -8, -24, -11, 0,
					-- layer=3 filter=45 channel=30
					13, -1, -8, -2, -12, 6, 11, 8, -12,
					-- layer=3 filter=45 channel=31
					-5, 10, 9, 2, 10, -11, 5, -15, -12,
					-- layer=3 filter=45 channel=32
					-9, -6, -11, 1, -13, -11, 5, 6, -13,
					-- layer=3 filter=45 channel=33
					-20, -16, -2, -8, -14, 11, -3, -13, -11,
					-- layer=3 filter=45 channel=34
					-9, -3, -15, 1, -17, 0, -16, -10, 3,
					-- layer=3 filter=45 channel=35
					5, -16, -7, 0, -13, -5, 3, -10, 4,
					-- layer=3 filter=45 channel=36
					9, 3, -5, -7, -6, -12, -7, 1, -13,
					-- layer=3 filter=45 channel=37
					-17, -13, -4, -15, -7, 0, -7, 6, 9,
					-- layer=3 filter=45 channel=38
					4, -9, -10, -14, 1, -6, 6, -5, 0,
					-- layer=3 filter=45 channel=39
					0, 11, -12, -2, 9, -8, 2, -2, 8,
					-- layer=3 filter=45 channel=40
					-10, 0, -11, -9, -7, 3, 0, -16, -4,
					-- layer=3 filter=45 channel=41
					8, 11, 4, -14, 1, 5, -7, -16, -14,
					-- layer=3 filter=45 channel=42
					5, -8, 0, 9, -9, -13, 3, -14, -17,
					-- layer=3 filter=45 channel=43
					10, 3, -5, -6, 10, 3, -13, -7, 0,
					-- layer=3 filter=45 channel=44
					-3, -6, 13, 2, -12, 8, -2, 12, 11,
					-- layer=3 filter=45 channel=45
					13, 4, 3, 0, -14, -19, -11, -2, -16,
					-- layer=3 filter=45 channel=46
					9, -16, -17, 2, -2, -2, -8, -3, -2,
					-- layer=3 filter=45 channel=47
					-4, -17, -4, -4, 0, -3, 0, -15, -12,
					-- layer=3 filter=45 channel=48
					1, -6, -5, -7, -6, 5, 5, -14, -11,
					-- layer=3 filter=45 channel=49
					-16, -21, 0, -6, 3, 5, -12, 12, -1,
					-- layer=3 filter=45 channel=50
					-5, -20, 9, -2, 15, -13, -4, -7, 2,
					-- layer=3 filter=45 channel=51
					-14, 3, -18, -6, 0, -21, 11, 3, 0,
					-- layer=3 filter=45 channel=52
					-6, -17, 8, -6, -5, 0, 4, 6, -13,
					-- layer=3 filter=45 channel=53
					-17, 4, -4, 11, -3, 2, -1, -4, -3,
					-- layer=3 filter=45 channel=54
					9, -11, 17, -8, -12, -12, -7, -11, 11,
					-- layer=3 filter=45 channel=55
					4, -8, 8, 0, -3, 8, 0, -23, -7,
					-- layer=3 filter=45 channel=56
					5, -12, -10, 7, 0, -3, 3, -1, 4,
					-- layer=3 filter=45 channel=57
					0, -16, -8, 1, -12, -6, -1, -11, -15,
					-- layer=3 filter=45 channel=58
					-11, -16, 0, 7, -6, 4, -10, -13, -2,
					-- layer=3 filter=45 channel=59
					-13, -11, -15, 1, -22, -20, 7, -9, 2,
					-- layer=3 filter=45 channel=60
					7, -15, -14, 8, -16, -8, 8, -4, 7,
					-- layer=3 filter=45 channel=61
					3, -8, -1, 6, 2, -10, 7, 5, 4,
					-- layer=3 filter=45 channel=62
					2, 12, 9, -7, -13, 3, -2, 7, -5,
					-- layer=3 filter=45 channel=63
					-14, 11, -8, -3, -7, 0, 2, -14, -7,
					-- layer=3 filter=46 channel=0
					26, 74, 16, 4, 11, 11, 28, 29, 15,
					-- layer=3 filter=46 channel=1
					44, 15, 18, -19, 7, -41, -13, -23, -12,
					-- layer=3 filter=46 channel=2
					22, 10, 1, -53, 16, 29, -37, -28, -37,
					-- layer=3 filter=46 channel=3
					0, -10, -38, 25, -31, 0, 5, 45, 28,
					-- layer=3 filter=46 channel=4
					-4, -16, 8, 15, -30, -28, 5, 18, 11,
					-- layer=3 filter=46 channel=5
					-11, -11, -16, 0, 10, -5, -2, -3, 16,
					-- layer=3 filter=46 channel=6
					-5, -7, 9, -49, -61, 11, -2, 33, -28,
					-- layer=3 filter=46 channel=7
					45, 52, 0, 16, -5, -27, 30, 4, 0,
					-- layer=3 filter=46 channel=8
					8, 38, 17, 21, -12, 0, 18, 25, -15,
					-- layer=3 filter=46 channel=9
					8, -22, 19, 33, 12, -10, -38, -54, -75,
					-- layer=3 filter=46 channel=10
					47, -24, 17, 17, -10, 18, -4, 12, 31,
					-- layer=3 filter=46 channel=11
					-21, -5, 54, -16, 53, 16, -16, -19, -31,
					-- layer=3 filter=46 channel=12
					-1, 21, 0, -22, 19, 15, -71, -57, -18,
					-- layer=3 filter=46 channel=13
					-25, 0, 3, -21, -3, -20, 24, 23, 15,
					-- layer=3 filter=46 channel=14
					10, 15, -26, -17, 54, -33, -30, -5, 46,
					-- layer=3 filter=46 channel=15
					43, -9, 22, 19, 44, 23, -47, -37, -61,
					-- layer=3 filter=46 channel=16
					-32, 0, -38, -18, -66, -28, 28, 47, -8,
					-- layer=3 filter=46 channel=17
					-20, -20, 5, 20, -37, -6, 21, 23, 17,
					-- layer=3 filter=46 channel=18
					-9, 23, 37, 1, -7, 49, 15, -3, 48,
					-- layer=3 filter=46 channel=19
					-28, -29, -45, 23, 17, 8, 22, 29, 10,
					-- layer=3 filter=46 channel=20
					15, 16, 43, -29, 17, 6, -83, -33, 15,
					-- layer=3 filter=46 channel=21
					-21, -8, 54, -12, 11, -7, -27, -47, -70,
					-- layer=3 filter=46 channel=22
					-12, 1, 3, 2, -5, 10, 6, 5, -14,
					-- layer=3 filter=46 channel=23
					-18, 43, 19, 5, -52, -23, 31, -6, -39,
					-- layer=3 filter=46 channel=24
					-19, -12, -2, -24, -19, -9, 21, 45, 19,
					-- layer=3 filter=46 channel=25
					3, -42, -5, 4, -20, -12, 0, -30, 33,
					-- layer=3 filter=46 channel=26
					10, 10, -9, -3, 2, -4, -7, 4, -4,
					-- layer=3 filter=46 channel=27
					-18, 6, 16, -30, -4, -38, 7, 11, 20,
					-- layer=3 filter=46 channel=28
					-8, -5, 0, -7, 9, -8, 12, 5, 1,
					-- layer=3 filter=46 channel=29
					-13, -30, -1, 14, 10, 24, 6, 40, 2,
					-- layer=3 filter=46 channel=30
					-2, 0, -1, -15, 8, 8, -3, 17, 7,
					-- layer=3 filter=46 channel=31
					-27, -18, -37, -27, -19, -26, -22, -44, -22,
					-- layer=3 filter=46 channel=32
					-21, -8, 45, -4, -7, 7, 24, 18, 10,
					-- layer=3 filter=46 channel=33
					-13, 5, 3, -54, -16, 13, -83, 21, -13,
					-- layer=3 filter=46 channel=34
					-31, 7, 32, 0, -11, -20, 2, 4, -6,
					-- layer=3 filter=46 channel=35
					-48, -43, -26, -26, -22, -23, 30, 0, 32,
					-- layer=3 filter=46 channel=36
					52, 3, 16, -7, -1, -22, -91, -9, 4,
					-- layer=3 filter=46 channel=37
					-21, -23, -7, -17, -44, -48, -19, 14, -19,
					-- layer=3 filter=46 channel=38
					-23, -15, -48, -9, 36, -15, 58, 17, 28,
					-- layer=3 filter=46 channel=39
					-11, 0, -12, 6, 14, -5, -6, 9, 11,
					-- layer=3 filter=46 channel=40
					-30, 73, 33, 0, 52, -4, 8, -31, 13,
					-- layer=3 filter=46 channel=41
					4, -15, 55, -13, -14, -27, 3, 0, 35,
					-- layer=3 filter=46 channel=42
					5, -37, 3, -14, -48, -25, 13, 6, -12,
					-- layer=3 filter=46 channel=43
					20, 24, 20, 5, 0, 42, 46, 5, 26,
					-- layer=3 filter=46 channel=44
					0, -1, -6, 9, 10, 1, -12, 4, -2,
					-- layer=3 filter=46 channel=45
					11, 26, 21, -1, -2, -19, 0, 22, 9,
					-- layer=3 filter=46 channel=46
					29, 8, 45, 1, -13, -35, 26, 6, 14,
					-- layer=3 filter=46 channel=47
					-12, 2, -23, -29, 19, -12, -46, -43, -71,
					-- layer=3 filter=46 channel=48
					14, -32, 21, -2, 65, -13, 12, 38, 75,
					-- layer=3 filter=46 channel=49
					-15, 64, 74, 7, 25, -18, -20, 12, 18,
					-- layer=3 filter=46 channel=50
					-16, 4, 3, -28, -31, -19, 1, -19, -1,
					-- layer=3 filter=46 channel=51
					21, 21, -12, 33, 50, 19, 0, 34, -12,
					-- layer=3 filter=46 channel=52
					44, 37, 7, -16, -16, 9, -31, -49, 9,
					-- layer=3 filter=46 channel=53
					-14, 25, 37, -22, 28, -13, 8, -4, -33,
					-- layer=3 filter=46 channel=54
					6, -32, -22, 19, -19, 11, 37, 44, 60,
					-- layer=3 filter=46 channel=55
					46, 23, 45, 43, 15, -10, 52, 23, 28,
					-- layer=3 filter=46 channel=56
					15, 29, 25, 17, 38, 29, -49, -29, -56,
					-- layer=3 filter=46 channel=57
					35, -4, -7, -44, 14, 53, -106, -34, -3,
					-- layer=3 filter=46 channel=58
					23, 28, 3, 41, 30, 54, 45, -1, -15,
					-- layer=3 filter=46 channel=59
					13, 0, 31, 0, -24, -11, 60, 30, 38,
					-- layer=3 filter=46 channel=60
					-30, -8, -4, 8, -50, -30, 35, -11, 34,
					-- layer=3 filter=46 channel=61
					-11, -66, -13, 19, -17, -3, 43, -27, -16,
					-- layer=3 filter=46 channel=62
					22, 11, 0, 7, 46, 43, -54, -28, -58,
					-- layer=3 filter=46 channel=63
					-11, -4, 1, 1, -7, 5, -1, 3, 14,
					-- layer=3 filter=47 channel=0
					-19, 3, 11, -33, 24, 13, -9, 36, 3,
					-- layer=3 filter=47 channel=1
					9, 6, -3, -20, -10, 11, 11, 1, 34,
					-- layer=3 filter=47 channel=2
					-19, 11, -15, 38, 0, 8, -2, -18, -24,
					-- layer=3 filter=47 channel=3
					40, 4, 0, 0, -28, 5, 42, 21, 34,
					-- layer=3 filter=47 channel=4
					12, -33, 9, -37, -16, -31, -49, -17, 18,
					-- layer=3 filter=47 channel=5
					3, 5, -11, -4, 6, 1, 15, 11, 0,
					-- layer=3 filter=47 channel=6
					-18, 9, -16, 23, -25, 8, 18, -18, 0,
					-- layer=3 filter=47 channel=7
					1, 5, 5, -17, -15, -25, 35, -35, -51,
					-- layer=3 filter=47 channel=8
					12, -6, -30, 37, 21, -23, 36, -19, 6,
					-- layer=3 filter=47 channel=9
					-42, -15, 27, 34, 30, 1, 35, -12, -17,
					-- layer=3 filter=47 channel=10
					27, -24, 23, -24, 4, 16, 18, 15, -4,
					-- layer=3 filter=47 channel=11
					-34, -1, -32, -52, -5, -2, -60, -40, 24,
					-- layer=3 filter=47 channel=12
					6, -26, -8, -20, 3, 1, -4, -28, -24,
					-- layer=3 filter=47 channel=13
					9, 12, -21, 14, -39, -36, 16, -12, 0,
					-- layer=3 filter=47 channel=14
					44, 45, -4, 5, 13, 7, 28, -34, -2,
					-- layer=3 filter=47 channel=15
					2, -1, -18, 3, 29, 4, -15, -10, 6,
					-- layer=3 filter=47 channel=16
					-24, -35, -24, 0, -32, 51, -32, 0, 8,
					-- layer=3 filter=47 channel=17
					16, 40, 17, -3, -23, -18, -32, -31, 54,
					-- layer=3 filter=47 channel=18
					30, 10, 27, -49, -9, 11, -73, 31, -27,
					-- layer=3 filter=47 channel=19
					16, 17, -14, 37, -25, 9, 8, -9, -12,
					-- layer=3 filter=47 channel=20
					-9, -21, -20, 4, -27, -24, -32, -8, -27,
					-- layer=3 filter=47 channel=21
					-63, 16, 3, -24, 18, 22, -33, -55, 30,
					-- layer=3 filter=47 channel=22
					1, 7, 9, -5, 6, -15, -13, -7, -8,
					-- layer=3 filter=47 channel=23
					-24, 22, 52, 17, -26, -23, -12, 6, -2,
					-- layer=3 filter=47 channel=24
					0, 7, 1, -77, -97, 0, -7, -17, 28,
					-- layer=3 filter=47 channel=25
					22, -18, -7, -3, -61, -6, 25, -45, -26,
					-- layer=3 filter=47 channel=26
					-9, 11, 5, 14, -8, -2, 1, 2, -6,
					-- layer=3 filter=47 channel=27
					20, 48, 16, 5, -21, 21, 24, -42, 16,
					-- layer=3 filter=47 channel=28
					14, 9, 0, 0, -4, -12, 0, -5, 3,
					-- layer=3 filter=47 channel=29
					-19, 7, 38, -24, 16, 25, -56, 14, 7,
					-- layer=3 filter=47 channel=30
					2, 7, 6, 3, -6, 0, 9, -15, 15,
					-- layer=3 filter=47 channel=31
					7, 16, -1, -23, 1, -60, -37, -23, -46,
					-- layer=3 filter=47 channel=32
					-19, -27, 16, 12, 14, -1, 50, 42, -10,
					-- layer=3 filter=47 channel=33
					-30, -5, 17, -1, -24, 33, -30, -6, -14,
					-- layer=3 filter=47 channel=34
					1, -19, 10, 22, -14, -2, -6, -3, -25,
					-- layer=3 filter=47 channel=35
					-8, 21, 20, -27, -63, -34, 0, -28, -23,
					-- layer=3 filter=47 channel=36
					-1, 34, -39, -2, -5, -21, -11, -51, 17,
					-- layer=3 filter=47 channel=37
					48, -2, 0, 22, -53, -54, 12, -34, 20,
					-- layer=3 filter=47 channel=38
					7, 0, 13, 24, -19, 42, 27, 24, 24,
					-- layer=3 filter=47 channel=39
					0, 10, -14, -10, 13, -6, -8, -6, -7,
					-- layer=3 filter=47 channel=40
					-3, 28, 26, 11, 39, 3, -56, 0, -33,
					-- layer=3 filter=47 channel=41
					24, 15, 25, -26, -53, -35, 23, 24, -32,
					-- layer=3 filter=47 channel=42
					20, 37, -10, 9, -43, -20, 10, 10, -14,
					-- layer=3 filter=47 channel=43
					0, -2, 1, -10, 39, -16, -5, 29, 21,
					-- layer=3 filter=47 channel=44
					17, 1, -6, -6, -13, -8, 7, 0, -2,
					-- layer=3 filter=47 channel=45
					7, 38, 4, 30, 12, -27, 32, -23, 9,
					-- layer=3 filter=47 channel=46
					-17, -12, 22, 7, -14, 7, -4, 14, -2,
					-- layer=3 filter=47 channel=47
					-35, -2, -17, -1, 6, 14, 8, 23, 18,
					-- layer=3 filter=47 channel=48
					-6, -14, -17, -5, 17, 29, 12, 9, 0,
					-- layer=3 filter=47 channel=49
					-12, 15, 12, -47, -23, -31, -41, -11, -13,
					-- layer=3 filter=47 channel=50
					21, 12, -7, -4, -1, 33, -71, -17, 40,
					-- layer=3 filter=47 channel=51
					0, -16, -54, 23, 44, 16, 14, 5, -7,
					-- layer=3 filter=47 channel=52
					2, 6, 5, -23, -29, -13, -40, -48, 25,
					-- layer=3 filter=47 channel=53
					-74, 12, 46, -47, 9, 53, -21, -14, 40,
					-- layer=3 filter=47 channel=54
					41, 8, 4, 2, -30, -23, 0, 18, 23,
					-- layer=3 filter=47 channel=55
					4, 2, 6, 24, 22, -24, 28, 12, 2,
					-- layer=3 filter=47 channel=56
					-16, -12, 7, -16, 29, 0, 1, 3, 27,
					-- layer=3 filter=47 channel=57
					-4, -50, -35, -93, -14, 27, -74, -35, -22,
					-- layer=3 filter=47 channel=58
					45, 11, -10, 2, 34, -24, -7, 5, -41,
					-- layer=3 filter=47 channel=59
					-25, 7, 24, -19, 4, -11, -28, 41, -3,
					-- layer=3 filter=47 channel=60
					13, -14, 33, 15, -30, -3, 11, -19, 3,
					-- layer=3 filter=47 channel=61
					-7, -36, 18, 34, -23, 14, 30, 15, 5,
					-- layer=3 filter=47 channel=62
					11, 1, 14, -9, 28, 3, -34, 8, 43,
					-- layer=3 filter=47 channel=63
					1, 3, 16, 0, -19, -5, 3, 7, -12,
					-- layer=3 filter=48 channel=0
					-4, -13, 1, -19, -3, -23, -7, 7, -10,
					-- layer=3 filter=48 channel=1
					-15, 3, -8, -10, -2, -16, 9, -19, 0,
					-- layer=3 filter=48 channel=2
					-13, 0, 0, -23, -7, 0, 3, -24, -14,
					-- layer=3 filter=48 channel=3
					2, 0, -8, 3, 3, 5, -14, 7, -7,
					-- layer=3 filter=48 channel=4
					-11, -9, -18, -11, 0, -15, -14, -14, 2,
					-- layer=3 filter=48 channel=5
					-5, 12, -4, 14, -12, -9, 5, -12, 12,
					-- layer=3 filter=48 channel=6
					10, -5, -8, -12, 4, 12, 10, 4, -5,
					-- layer=3 filter=48 channel=7
					-6, -16, -21, 0, -10, -22, -16, -10, -6,
					-- layer=3 filter=48 channel=8
					0, -1, -13, 0, 9, 1, 5, -16, 4,
					-- layer=3 filter=48 channel=9
					9, -22, -23, 2, -9, -2, 2, -15, -21,
					-- layer=3 filter=48 channel=10
					-19, -21, -13, 8, 1, -2, -13, -1, -17,
					-- layer=3 filter=48 channel=11
					0, -8, -3, -8, 0, -20, 1, -1, -10,
					-- layer=3 filter=48 channel=12
					9, -11, 1, -15, -1, -16, -25, -22, -18,
					-- layer=3 filter=48 channel=13
					-17, -12, 4, -6, 13, 12, 0, -6, -4,
					-- layer=3 filter=48 channel=14
					-9, 14, 1, 8, -1, -7, -16, 0, -11,
					-- layer=3 filter=48 channel=15
					-16, -5, -6, -14, -13, -23, -13, -15, 0,
					-- layer=3 filter=48 channel=16
					-1, 14, 12, -14, 11, -14, 4, 3, -22,
					-- layer=3 filter=48 channel=17
					11, 6, -5, 3, -1, 6, -14, -14, 3,
					-- layer=3 filter=48 channel=18
					2, 10, 4, -3, -1, -15, -9, -3, -3,
					-- layer=3 filter=48 channel=19
					-10, -11, 6, 11, 0, -8, -1, -3, -10,
					-- layer=3 filter=48 channel=20
					1, -11, -6, 3, -22, 6, 4, -24, -6,
					-- layer=3 filter=48 channel=21
					-9, -6, -2, 9, -14, -16, -17, -8, 0,
					-- layer=3 filter=48 channel=22
					8, -1, 6, -10, 2, -3, 4, 5, 3,
					-- layer=3 filter=48 channel=23
					-15, -6, -7, -14, 4, -8, -15, 5, -3,
					-- layer=3 filter=48 channel=24
					-5, 0, -18, -9, 4, -8, -11, 6, 1,
					-- layer=3 filter=48 channel=25
					-5, 6, -8, -12, 4, -9, -5, -3, -1,
					-- layer=3 filter=48 channel=26
					-8, -12, 9, -12, -12, -13, -9, 13, 10,
					-- layer=3 filter=48 channel=27
					-6, -10, -10, -5, 4, -6, 0, -7, 5,
					-- layer=3 filter=48 channel=28
					-5, 5, 13, 7, -12, 1, 7, -12, 2,
					-- layer=3 filter=48 channel=29
					6, -12, 12, 1, 6, 2, -4, 3, -14,
					-- layer=3 filter=48 channel=30
					-6, -6, -14, -9, 1, -4, 5, -6, 0,
					-- layer=3 filter=48 channel=31
					6, -3, -6, 12, -11, -4, -9, 0, -6,
					-- layer=3 filter=48 channel=32
					-12, -13, 0, -5, -9, -20, 4, -16, 0,
					-- layer=3 filter=48 channel=33
					0, -8, 1, -1, -14, 1, 0, 4, -4,
					-- layer=3 filter=48 channel=34
					-7, -15, -5, -3, -21, 12, -15, -6, -10,
					-- layer=3 filter=48 channel=35
					3, 0, -13, -12, -5, -13, -11, -7, 9,
					-- layer=3 filter=48 channel=36
					12, -23, -2, 4, 12, 0, -12, -8, 5,
					-- layer=3 filter=48 channel=37
					-7, -11, -19, 8, -9, 0, -15, -19, -6,
					-- layer=3 filter=48 channel=38
					9, -15, -10, -5, -8, -14, -17, -11, -5,
					-- layer=3 filter=48 channel=39
					5, -9, -3, 13, -11, -6, 15, 0, 0,
					-- layer=3 filter=48 channel=40
					-1, -11, 5, -1, -4, -9, 0, 6, 1,
					-- layer=3 filter=48 channel=41
					-6, -13, -4, 0, 0, 1, -8, -14, -7,
					-- layer=3 filter=48 channel=42
					-11, -7, -14, -16, -8, -11, -5, -6, 1,
					-- layer=3 filter=48 channel=43
					9, 6, 7, 0, -15, -14, -9, -24, -7,
					-- layer=3 filter=48 channel=44
					0, -3, 12, 5, -11, -7, -4, -14, -6,
					-- layer=3 filter=48 channel=45
					-1, -21, -7, 3, -4, -13, -5, -2, -11,
					-- layer=3 filter=48 channel=46
					2, -24, -12, -10, -24, -3, -3, -13, -15,
					-- layer=3 filter=48 channel=47
					2, 2, 1, -1, 11, -17, -19, -2, -18,
					-- layer=3 filter=48 channel=48
					-8, 7, 0, -7, -4, 13, -14, 9, -1,
					-- layer=3 filter=48 channel=49
					5, -18, -8, -9, -4, -10, -4, 0, -12,
					-- layer=3 filter=48 channel=50
					-5, 0, 4, 3, -2, -3, 0, 1, -15,
					-- layer=3 filter=48 channel=51
					-1, -8, -8, -18, 5, 4, -16, 0, 5,
					-- layer=3 filter=48 channel=52
					9, -12, -23, -11, 10, -7, -25, 0, -15,
					-- layer=3 filter=48 channel=53
					1, -10, -4, -10, 10, 8, -4, -11, 11,
					-- layer=3 filter=48 channel=54
					10, 0, -7, 11, -3, 5, 8, -11, 11,
					-- layer=3 filter=48 channel=55
					3, -10, -11, 0, -5, -2, 0, -16, -3,
					-- layer=3 filter=48 channel=56
					-21, 2, -8, -14, -17, -16, -23, -2, 0,
					-- layer=3 filter=48 channel=57
					0, -4, -10, -15, 12, 11, -2, -16, -20,
					-- layer=3 filter=48 channel=58
					-3, -8, -3, -6, -12, -2, 6, -11, -22,
					-- layer=3 filter=48 channel=59
					0, -9, -7, -3, -2, -18, -5, 4, 3,
					-- layer=3 filter=48 channel=60
					-10, 1, -4, -18, 0, -17, -14, -13, 10,
					-- layer=3 filter=48 channel=61
					9, 1, 4, -11, 3, 2, 7, 3, -14,
					-- layer=3 filter=48 channel=62
					-3, -22, 0, -6, 4, -17, -13, -3, -16,
					-- layer=3 filter=48 channel=63
					-4, 12, 0, -1, -6, 10, 9, 1, 14,
					-- layer=3 filter=49 channel=0
					-12, -13, -9, 3, -14, -7, 1, -13, -16,
					-- layer=3 filter=49 channel=1
					-22, 5, -1, -7, -1, 9, 2, -12, -5,
					-- layer=3 filter=49 channel=2
					7, -2, -8, -6, -19, -2, -8, 7, 3,
					-- layer=3 filter=49 channel=3
					-1, -5, -20, -13, -11, -3, -7, 11, -20,
					-- layer=3 filter=49 channel=4
					1, -12, -21, -13, 0, 0, -5, -13, -13,
					-- layer=3 filter=49 channel=5
					-6, 6, 11, -3, -10, -13, 14, 11, 0,
					-- layer=3 filter=49 channel=6
					3, -13, -12, 0, 10, -20, 8, 9, 4,
					-- layer=3 filter=49 channel=7
					-7, 8, 0, -9, 2, -4, -5, -7, -8,
					-- layer=3 filter=49 channel=8
					-12, -17, 4, -13, -1, 9, 11, -8, -10,
					-- layer=3 filter=49 channel=9
					-8, -4, 0, -15, -13, -16, -8, -4, -20,
					-- layer=3 filter=49 channel=10
					-2, -9, -6, 10, -8, 7, -8, -15, 2,
					-- layer=3 filter=49 channel=11
					-9, -6, -1, -4, -5, 7, 2, 12, -3,
					-- layer=3 filter=49 channel=12
					-6, 2, 1, -8, 0, 7, -5, 6, -3,
					-- layer=3 filter=49 channel=13
					8, -13, -17, 11, -11, -16, 5, -8, 1,
					-- layer=3 filter=49 channel=14
					-1, -11, -15, -4, 10, -9, -12, 3, 6,
					-- layer=3 filter=49 channel=15
					-10, -16, -4, -9, -19, -13, -1, -12, 12,
					-- layer=3 filter=49 channel=16
					3, -13, -1, -5, -3, 9, -19, -12, -13,
					-- layer=3 filter=49 channel=17
					-2, -11, 11, -2, 2, 3, -8, -2, -15,
					-- layer=3 filter=49 channel=18
					-25, -24, -12, -6, 8, -19, 4, -7, 0,
					-- layer=3 filter=49 channel=19
					-4, -5, 3, 4, -14, 6, -1, -3, 13,
					-- layer=3 filter=49 channel=20
					-14, -24, -15, -14, 11, -11, -15, 7, 3,
					-- layer=3 filter=49 channel=21
					-5, -6, -4, -2, -8, -2, -6, -6, -17,
					-- layer=3 filter=49 channel=22
					-6, -14, -8, -12, -1, 7, -9, 3, 5,
					-- layer=3 filter=49 channel=23
					-17, -12, -19, -4, 2, 0, -19, -14, 3,
					-- layer=3 filter=49 channel=24
					9, -2, -1, 7, -10, -14, -9, -2, -12,
					-- layer=3 filter=49 channel=25
					-10, 13, 5, 14, 0, -11, -6, -12, 11,
					-- layer=3 filter=49 channel=26
					0, 3, 11, 14, 1, -6, -8, 14, -11,
					-- layer=3 filter=49 channel=27
					8, 5, -1, 1, -2, -8, 6, -2, 12,
					-- layer=3 filter=49 channel=28
					10, 9, -14, -14, -1, -15, -5, 7, 7,
					-- layer=3 filter=49 channel=29
					-12, -13, -4, 1, -7, 2, 3, -10, 5,
					-- layer=3 filter=49 channel=30
					-11, -1, -1, 1, -1, -16, -9, 13, -6,
					-- layer=3 filter=49 channel=31
					6, 5, -4, 3, -3, 0, -14, 3, 1,
					-- layer=3 filter=49 channel=32
					3, -15, -23, -17, -6, 3, 0, 1, 7,
					-- layer=3 filter=49 channel=33
					-12, -11, -13, 0, -12, -5, 10, -9, 0,
					-- layer=3 filter=49 channel=34
					-20, -18, 0, -13, -3, -3, -21, 15, -7,
					-- layer=3 filter=49 channel=35
					-20, -1, 6, -18, -17, -14, -6, -4, -6,
					-- layer=3 filter=49 channel=36
					0, 4, 1, -2, -2, 4, 9, -10, -8,
					-- layer=3 filter=49 channel=37
					-11, -8, -6, 1, 4, -13, -10, -8, -6,
					-- layer=3 filter=49 channel=38
					-6, -17, 3, -13, 6, -15, -9, -16, -10,
					-- layer=3 filter=49 channel=39
					-11, -3, -8, 0, -11, -3, -9, -2, 5,
					-- layer=3 filter=49 channel=40
					-17, 4, -13, 5, 1, -13, 0, 0, -8,
					-- layer=3 filter=49 channel=41
					-17, -10, 6, -1, -5, -9, 3, -10, -10,
					-- layer=3 filter=49 channel=42
					-18, 6, 1, -11, 4, -16, 0, 12, 5,
					-- layer=3 filter=49 channel=43
					-9, -13, 1, -1, -12, 7, -4, 0, -18,
					-- layer=3 filter=49 channel=44
					6, -14, -8, 11, -5, -10, -1, 12, 1,
					-- layer=3 filter=49 channel=45
					-7, 6, -15, 2, 6, 2, -6, -11, 13,
					-- layer=3 filter=49 channel=46
					-2, -14, -4, 2, -5, -8, -5, -24, 10,
					-- layer=3 filter=49 channel=47
					-3, -15, -20, -16, -14, 4, -12, -18, -21,
					-- layer=3 filter=49 channel=48
					0, -19, -14, -6, 6, -14, -3, -4, 0,
					-- layer=3 filter=49 channel=49
					-12, -9, -13, 1, -8, 10, -22, -8, 6,
					-- layer=3 filter=49 channel=50
					-22, -3, -1, -12, -16, -15, -14, 5, 3,
					-- layer=3 filter=49 channel=51
					-2, 4, -18, 0, -7, 0, -1, -4, -13,
					-- layer=3 filter=49 channel=52
					6, 11, 9, -6, -10, -15, -9, -14, 0,
					-- layer=3 filter=49 channel=53
					-12, 3, -9, -6, -7, -8, -11, -9, 3,
					-- layer=3 filter=49 channel=54
					5, 1, 3, 0, 0, -6, 8, 0, 1,
					-- layer=3 filter=49 channel=55
					-11, -3, -22, -16, -5, 1, 5, -6, -10,
					-- layer=3 filter=49 channel=56
					0, -6, -5, 4, -11, -7, 9, -5, -14,
					-- layer=3 filter=49 channel=57
					0, 0, -5, 1, 11, -6, -13, 0, -5,
					-- layer=3 filter=49 channel=58
					-3, -1, 7, 5, -14, -3, 3, 3, -3,
					-- layer=3 filter=49 channel=59
					2, -12, 2, -16, -10, 4, -9, -10, -13,
					-- layer=3 filter=49 channel=60
					-5, -11, 4, -14, 10, -6, -1, -14, -13,
					-- layer=3 filter=49 channel=61
					6, -19, 9, -18, -10, -14, 3, 1, -20,
					-- layer=3 filter=49 channel=62
					-16, 5, 3, 2, -4, 0, 13, 0, -17,
					-- layer=3 filter=49 channel=63
					4, -13, 1, 12, -3, -6, 9, 4, 4,
					-- layer=3 filter=50 channel=0
					-48, -24, -51, -8, 12, 4, -21, 36, -9,
					-- layer=3 filter=50 channel=1
					-38, -4, 13, 13, 36, 32, 0, 48, 20,
					-- layer=3 filter=50 channel=2
					-16, -28, -58, -7, -9, -43, 10, 37, 47,
					-- layer=3 filter=50 channel=3
					-63, -51, -5, -10, -5, 26, 4, -8, 18,
					-- layer=3 filter=50 channel=4
					-45, -69, -13, -34, 17, 33, -6, 30, 22,
					-- layer=3 filter=50 channel=5
					0, -19, -9, 9, -7, 0, -12, -15, 4,
					-- layer=3 filter=50 channel=6
					-69, -14, 0, -13, -31, 3, 0, 5, 21,
					-- layer=3 filter=50 channel=7
					-22, -29, -60, -31, 10, 14, 19, 8, 66,
					-- layer=3 filter=50 channel=8
					-39, -16, -1, -39, 17, -18, 2, -21, 24,
					-- layer=3 filter=50 channel=9
					12, 35, 19, 12, 34, 39, -13, -50, 10,
					-- layer=3 filter=50 channel=10
					-17, 43, 16, -30, -34, -5, 15, -50, -35,
					-- layer=3 filter=50 channel=11
					-26, 46, -6, -33, 0, -24, 10, 76, 43,
					-- layer=3 filter=50 channel=12
					-6, -33, -14, 24, 49, 30, -1, 1, 7,
					-- layer=3 filter=50 channel=13
					23, -15, -41, -49, -8, -23, 65, 72, 77,
					-- layer=3 filter=50 channel=14
					-12, -37, -6, -5, -45, -17, 31, 55, 64,
					-- layer=3 filter=50 channel=15
					-38, -18, -40, 43, -25, -3, 9, -37, -51,
					-- layer=3 filter=50 channel=16
					35, 10, 15, -39, 2, -57, 37, 1, 24,
					-- layer=3 filter=50 channel=17
					-15, -31, -29, -16, 3, 12, 34, 16, 52,
					-- layer=3 filter=50 channel=18
					-13, -9, 18, -21, -8, -39, -11, 19, 15,
					-- layer=3 filter=50 channel=19
					-3, -27, -14, -36, -64, -59, -9, 3, 40,
					-- layer=3 filter=50 channel=20
					-1, -44, 15, -23, -7, -12, 25, 18, 0,
					-- layer=3 filter=50 channel=21
					-3, -9, -1, -18, 30, -10, -6, 18, -37,
					-- layer=3 filter=50 channel=22
					-7, -2, 10, -7, -7, 8, -6, 7, 0,
					-- layer=3 filter=50 channel=23
					15, 60, -6, -2, 23, -33, -6, 47, 47,
					-- layer=3 filter=50 channel=24
					-47, -39, -32, -86, -29, -27, -12, 57, 59,
					-- layer=3 filter=50 channel=25
					-28, -25, -31, -55, -62, -34, -7, 7, 28,
					-- layer=3 filter=50 channel=26
					7, -8, -12, 4, -15, 10, -13, 9, -9,
					-- layer=3 filter=50 channel=27
					25, 24, -13, -42, 32, -24, 55, 133, 101,
					-- layer=3 filter=50 channel=28
					0, -7, -6, -11, 0, 9, 6, -3, -3,
					-- layer=3 filter=50 channel=29
					-8, 25, -12, -50, -40, -32, 5, 47, -2,
					-- layer=3 filter=50 channel=30
					7, 1, 3, -12, 10, -18, -7, -3, 6,
					-- layer=3 filter=50 channel=31
					21, -29, -25, -26, 5, 33, 39, 59, 35,
					-- layer=3 filter=50 channel=32
					-11, 19, 18, 36, 22, 11, 26, 14, 9,
					-- layer=3 filter=50 channel=33
					-15, 34, 23, -19, 3, 4, -9, -42, 45,
					-- layer=3 filter=50 channel=34
					-19, -28, -27, -38, -31, -19, 13, -9, -41,
					-- layer=3 filter=50 channel=35
					-7, -33, -9, -15, -91, -33, -19, 49, 43,
					-- layer=3 filter=50 channel=36
					5, 0, 8, -50, -1, -16, 11, -14, 39,
					-- layer=3 filter=50 channel=37
					0, -13, 11, -7, 26, -30, 64, 51, 17,
					-- layer=3 filter=50 channel=38
					-38, -60, -27, 14, 5, 3, 30, 13, 63,
					-- layer=3 filter=50 channel=39
					11, -2, 3, -13, -1, 8, -7, 10, 8,
					-- layer=3 filter=50 channel=40
					1, -10, 21, -49, 22, -56, 20, 0, 3,
					-- layer=3 filter=50 channel=41
					-19, -73, -55, -17, -5, 11, -1, 23, -9,
					-- layer=3 filter=50 channel=42
					-15, -16, -52, 9, -18, -11, 58, 89, 50,
					-- layer=3 filter=50 channel=43
					-6, -32, -14, -12, -25, 1, 32, 0, 14,
					-- layer=3 filter=50 channel=44
					11, 10, 2, -3, 12, -12, 3, 14, -13,
					-- layer=3 filter=50 channel=45
					34, 8, -14, -10, -56, -49, -27, -37, 17,
					-- layer=3 filter=50 channel=46
					-16, 15, -8, 5, 0, -13, -4, -28, 7,
					-- layer=3 filter=50 channel=47
					-11, 50, 22, 0, 14, -17, -12, -22, -25,
					-- layer=3 filter=50 channel=48
					3, 19, -14, -12, -25, -6, 47, 25, 32,
					-- layer=3 filter=50 channel=49
					-3, -45, -17, -5, 13, -13, 38, 37, -7,
					-- layer=3 filter=50 channel=50
					-9, -27, -31, -24, -37, 18, -9, 42, 24,
					-- layer=3 filter=50 channel=51
					-7, 8, -11, 55, 9, 35, 14, -40, -37,
					-- layer=3 filter=50 channel=52
					-13, -43, 0, -59, -12, 0, -17, 58, 58,
					-- layer=3 filter=50 channel=53
					30, 53, -17, -18, 1, -14, -9, 15, 36,
					-- layer=3 filter=50 channel=54
					-34, 12, 3, 17, -6, 34, -49, -66, -36,
					-- layer=3 filter=50 channel=55
					-14, 31, -6, 29, 16, -5, 23, -12, -10,
					-- layer=3 filter=50 channel=56
					-25, 30, 0, 0, 31, -61, -43, -23, -69,
					-- layer=3 filter=50 channel=57
					-31, 59, 64, -23, -28, 29, -11, 32, 44,
					-- layer=3 filter=50 channel=58
					-14, -19, -36, -25, 6, -24, 18, -24, -33,
					-- layer=3 filter=50 channel=59
					-20, -18, -20, 17, 10, 21, -32, -9, -18,
					-- layer=3 filter=50 channel=60
					-2, -41, 10, -19, -14, -18, 40, 60, 13,
					-- layer=3 filter=50 channel=61
					0, 26, 19, 21, -6, -43, 15, 10, 2,
					-- layer=3 filter=50 channel=62
					-10, 18, -4, 3, 14, 23, 23, -41, 0,
					-- layer=3 filter=50 channel=63
					-1, 5, 23, 3, 1, -3, 28, 18, 14,
					-- layer=3 filter=51 channel=0
					-53, -111, -59, -21, 14, -40, -16, 42, -33,
					-- layer=3 filter=51 channel=1
					7, 23, 3, -5, 9, 5, -57, -57, -30,
					-- layer=3 filter=51 channel=2
					-3, 16, 15, 2, 55, -13, -33, -79, -92,
					-- layer=3 filter=51 channel=3
					20, 6, -7, 7, 29, 31, 27, 26, 48,
					-- layer=3 filter=51 channel=4
					16, 4, -10, -11, -2, -22, -17, -10, 30,
					-- layer=3 filter=51 channel=5
					-1, -4, 3, 8, -11, 13, 15, 9, 17,
					-- layer=3 filter=51 channel=6
					-16, 13, -37, 17, 74, -11, -5, -23, -1,
					-- layer=3 filter=51 channel=7
					-4, 3, -30, 8, 28, -1, 11, -2, -6,
					-- layer=3 filter=51 channel=8
					24, 39, 4, -7, 41, 15, -2, -15, 5,
					-- layer=3 filter=51 channel=9
					7, 5, 9, 34, 16, 19, -2, -8, 15,
					-- layer=3 filter=51 channel=10
					16, -27, -12, -23, -11, 1, 33, 17, 37,
					-- layer=3 filter=51 channel=11
					-12, -11, -63, -3, 35, -34, -44, 15, -59,
					-- layer=3 filter=51 channel=12
					-51, -24, -44, 0, 10, -7, -6, -37, -40,
					-- layer=3 filter=51 channel=13
					9, 29, 19, -27, -3, 8, -55, -47, -22,
					-- layer=3 filter=51 channel=14
					54, 28, -7, 20, 50, -1, 10, -37, -19,
					-- layer=3 filter=51 channel=15
					-3, -5, -16, 3, -2, 3, -51, 0, -41,
					-- layer=3 filter=51 channel=16
					6, 124, 27, -14, -53, 35, 6, -30, -36,
					-- layer=3 filter=51 channel=17
					15, 19, 20, -4, -2, -49, -26, -33, -3,
					-- layer=3 filter=51 channel=18
					-10, -16, 9, -24, 0, -2, 12, 59, 17,
					-- layer=3 filter=51 channel=19
					-9, -20, -14, -13, 38, -8, -20, -23, 5,
					-- layer=3 filter=51 channel=20
					-26, -27, 18, -38, -34, 26, -42, -81, -43,
					-- layer=3 filter=51 channel=21
					-28, 38, -30, 34, 23, -39, 19, -5, -41,
					-- layer=3 filter=51 channel=22
					-4, 11, 2, 10, 3, 8, -12, -3, 1,
					-- layer=3 filter=51 channel=23
					51, -46, -19, 3, 6, 30, -14, 7, 12,
					-- layer=3 filter=51 channel=24
					2, 3, 23, -56, 11, -8, -37, -18, -4,
					-- layer=3 filter=51 channel=25
					22, 30, -1, 25, -8, 14, -2, -8, 20,
					-- layer=3 filter=51 channel=26
					0, -11, -8, -6, -8, -3, 3, 7, -1,
					-- layer=3 filter=51 channel=27
					50, 64, 25, 1, -8, 22, 4, -92, -29,
					-- layer=3 filter=51 channel=28
					-8, -8, -14, 6, -7, 13, -5, -13, 10,
					-- layer=3 filter=51 channel=29
					11, 31, 23, 0, -8, -13, -47, 22, -36,
					-- layer=3 filter=51 channel=30
					0, 2, 15, -5, -5, -4, 1, 3, 4,
					-- layer=3 filter=51 channel=31
					28, -4, -6, -8, -108, 6, -19, -18, -18,
					-- layer=3 filter=51 channel=32
					-8, -69, -16, 48, 4, 8, 27, 3, 29,
					-- layer=3 filter=51 channel=33
					4, 26, 28, 2, -20, 28, -32, -2, 0,
					-- layer=3 filter=51 channel=34
					33, -3, 43, 27, 2, 10, 52, 8, -2,
					-- layer=3 filter=51 channel=35
					-7, 5, -4, -1, -16, -5, -3, 10, 7,
					-- layer=3 filter=51 channel=36
					2, 25, -12, -23, 43, 50, -55, -62, -6,
					-- layer=3 filter=51 channel=37
					20, 45, 24, 19, 23, -34, -18, -67, -7,
					-- layer=3 filter=51 channel=38
					-10, -1, 8, -30, -17, -16, -9, 59, -20,
					-- layer=3 filter=51 channel=39
					4, -13, 0, -4, -1, -14, 9, 3, 7,
					-- layer=3 filter=51 channel=40
					-40, -30, 31, -18, -41, -13, -57, -28, -9,
					-- layer=3 filter=51 channel=41
					27, 20, 69, -9, -16, -16, 18, 24, 11,
					-- layer=3 filter=51 channel=42
					-18, -12, -5, -8, 0, -11, 4, -62, -21,
					-- layer=3 filter=51 channel=43
					-42, 20, -5, -45, 43, -10, 16, 8, 15,
					-- layer=3 filter=51 channel=44
					-4, -1, -11, -8, -14, 5, -5, -5, 6,
					-- layer=3 filter=51 channel=45
					-16, 15, -15, -6, 45, 3, -53, -49, -59,
					-- layer=3 filter=51 channel=46
					18, -17, 24, 7, -20, 0, 26, 4, 22,
					-- layer=3 filter=51 channel=47
					1, 81, 0, -14, 9, 30, -69, -84, -62,
					-- layer=3 filter=51 channel=48
					6, 0, 9, -10, -42, -4, -46, -49, -71,
					-- layer=3 filter=51 channel=49
					-42, -7, -18, 0, -3, -53, -14, 37, -4,
					-- layer=3 filter=51 channel=50
					33, 9, 16, 7, 2, 15, -19, 43, 21,
					-- layer=3 filter=51 channel=51
					-24, 9, -20, 9, 6, 1, -6, -72, -24,
					-- layer=3 filter=51 channel=52
					-6, -29, -5, -54, -13, -24, -69, -46, -24,
					-- layer=3 filter=51 channel=53
					22, -17, -10, -17, -20, -40, -95, -49, -5,
					-- layer=3 filter=51 channel=54
					3, -10, -5, 28, 20, 8, 24, 3, 51,
					-- layer=3 filter=51 channel=55
					-24, -65, -54, 12, 11, -19, 18, -16, 9,
					-- layer=3 filter=51 channel=56
					-19, 7, -8, -12, -2, 41, -5, 19, -24,
					-- layer=3 filter=51 channel=57
					21, -11, 44, -43, 34, 64, -25, 55, 21,
					-- layer=3 filter=51 channel=58
					-32, 21, 28, -86, 12, -7, -12, 10, -29,
					-- layer=3 filter=51 channel=59
					-43, -64, -10, -22, 7, -9, 4, 24, 29,
					-- layer=3 filter=51 channel=60
					21, 15, 32, 24, -11, -1, 33, -6, 20,
					-- layer=3 filter=51 channel=61
					28, -18, 16, -11, -23, 5, -4, -27, 23,
					-- layer=3 filter=51 channel=62
					5, 2, -54, 0, 11, 0, -33, -9, 12,
					-- layer=3 filter=51 channel=63
					0, 3, -4, 16, -5, 8, -14, 30, -13,
					-- layer=3 filter=52 channel=0
					-12, -2, -18, -10, 0, -9, 11, 1, 25,
					-- layer=3 filter=52 channel=1
					-16, -16, 7, 41, 29, 56, 5, 41, -22,
					-- layer=3 filter=52 channel=2
					46, 3, 45, 26, -61, -4, -15, -48, -69,
					-- layer=3 filter=52 channel=3
					20, 27, 2, 20, -2, -16, -6, 18, -10,
					-- layer=3 filter=52 channel=4
					-1, 4, -33, 22, 13, -16, -21, -8, -9,
					-- layer=3 filter=52 channel=5
					-5, 5, 1, 2, -3, 4, -13, 1, 2,
					-- layer=3 filter=52 channel=6
					-24, 25, 8, -49, -43, -45, -17, -28, 2,
					-- layer=3 filter=52 channel=7
					1, 4, 3, 18, 5, -15, 0, -17, 25,
					-- layer=3 filter=52 channel=8
					25, -17, 16, -6, -13, -2, -25, -15, -22,
					-- layer=3 filter=52 channel=9
					-15, -19, 3, -27, 8, 9, -56, 22, 64,
					-- layer=3 filter=52 channel=10
					3, 42, 25, -5, 38, 16, -78, -7, -17,
					-- layer=3 filter=52 channel=11
					-40, -15, -10, -31, -9, -9, -25, -10, 24,
					-- layer=3 filter=52 channel=12
					-21, -21, -27, 14, 0, 20, -14, 22, 34,
					-- layer=3 filter=52 channel=13
					-15, 8, 25, 7, -23, 22, -29, -15, -7,
					-- layer=3 filter=52 channel=14
					3, -12, 16, 19, 1, 17, 14, 48, 4,
					-- layer=3 filter=52 channel=15
					-9, -12, 26, 6, 4, 9, -12, -17, -18,
					-- layer=3 filter=52 channel=16
					-19, -15, -33, -12, -27, 56, -50, -31, -7,
					-- layer=3 filter=52 channel=17
					-24, 25, -20, -37, 6, -5, 9, 12, 7,
					-- layer=3 filter=52 channel=18
					-35, -23, -13, -6, -40, -45, 26, -41, 2,
					-- layer=3 filter=52 channel=19
					-7, 6, -14, -1, -16, 31, 25, -14, -5,
					-- layer=3 filter=52 channel=20
					-6, 10, 31, 66, 23, -16, -13, -35, -30,
					-- layer=3 filter=52 channel=21
					0, 22, -26, -35, 13, 14, -52, 13, -10,
					-- layer=3 filter=52 channel=22
					-8, 5, 11, -4, -6, -1, 1, -13, 8,
					-- layer=3 filter=52 channel=23
					13, -8, -62, 40, -14, 14, 25, 20, 81,
					-- layer=3 filter=52 channel=24
					-1, 4, 4, 32, -72, -28, 37, -22, -44,
					-- layer=3 filter=52 channel=25
					0, -22, -33, 9, -39, -45, 31, 27, 30,
					-- layer=3 filter=52 channel=26
					-2, 4, -10, 11, -6, -1, -12, 6, 6,
					-- layer=3 filter=52 channel=27
					20, 21, 56, 47, 10, 2, -1, 5, 39,
					-- layer=3 filter=52 channel=28
					0, 2, -12, -7, -2, -4, -12, -14, 7,
					-- layer=3 filter=52 channel=29
					2, -2, 3, -37, -9, 45, 27, -52, -2,
					-- layer=3 filter=52 channel=30
					-15, 10, 3, 8, 5, 8, 0, -5, -8,
					-- layer=3 filter=52 channel=31
					-53, -47, 17, -20, -93, 40, 55, 79, 62,
					-- layer=3 filter=52 channel=32
					-60, 24, -28, -2, 3, 8, 15, 30, 53,
					-- layer=3 filter=52 channel=33
					-4, 10, 3, 12, 5, -8, 27, 1, -9,
					-- layer=3 filter=52 channel=34
					37, -50, 10, -15, 25, -28, 13, 30, 47,
					-- layer=3 filter=52 channel=35
					4, -14, -15, 39, 18, -22, 31, 0, -11,
					-- layer=3 filter=52 channel=36
					-15, 0, -24, 43, 16, 17, 13, 37, -22,
					-- layer=3 filter=52 channel=37
					-48, -25, 27, -20, 30, 40, 12, 26, -1,
					-- layer=3 filter=52 channel=38
					7, 0, 1, -28, -43, -9, 22, 19, -32,
					-- layer=3 filter=52 channel=39
					5, 12, -9, -12, -12, -1, -12, -9, 2,
					-- layer=3 filter=52 channel=40
					26, -41, -13, -15, -27, -41, -9, -49, -28,
					-- layer=3 filter=52 channel=41
					3, -25, -17, 34, -2, -12, -31, 19, 32,
					-- layer=3 filter=52 channel=42
					13, 26, -1, 17, -55, -42, 32, -4, 15,
					-- layer=3 filter=52 channel=43
					76, 50, 56, -5, -66, -43, 7, -49, -65,
					-- layer=3 filter=52 channel=44
					-14, -8, -10, 4, 6, 1, 1, -10, 6,
					-- layer=3 filter=52 channel=45
					40, 6, 19, 52, -27, 49, -9, -49, -39,
					-- layer=3 filter=52 channel=46
					-77, -18, -45, -13, 16, -13, -7, 23, 21,
					-- layer=3 filter=52 channel=47
					16, -8, -1, 20, 29, 8, 4, -40, -29,
					-- layer=3 filter=52 channel=48
					-43, -52, -69, -22, 8, -3, 24, -36, -12,
					-- layer=3 filter=52 channel=49
					-110, -81, -45, -1, -4, -14, -35, 25, 37,
					-- layer=3 filter=52 channel=50
					-42, 31, -21, -60, -22, -17, -11, -7, 14,
					-- layer=3 filter=52 channel=51
					-19, -35, -15, 7, 8, 1, 43, 37, 10,
					-- layer=3 filter=52 channel=52
					-18, 20, 1, -7, 0, -9, 32, 62, 15,
					-- layer=3 filter=52 channel=53
					-30, 10, -10, -59, -19, 5, -10, -17, -19,
					-- layer=3 filter=52 channel=54
					-13, 9, -5, 12, 19, 9, -89, -2, -12,
					-- layer=3 filter=52 channel=55
					6, 3, -24, 26, 28, 0, -31, -21, -6,
					-- layer=3 filter=52 channel=56
					24, -6, -1, 6, -28, -28, -24, -12, -23,
					-- layer=3 filter=52 channel=57
					-71, -9, -19, 10, -35, -3, 115, 42, 29,
					-- layer=3 filter=52 channel=58
					23, -3, 7, 15, -61, -99, -39, -58, 13,
					-- layer=3 filter=52 channel=59
					-37, -9, -1, 20, 9, 38, 3, 28, 71,
					-- layer=3 filter=52 channel=60
					34, 10, 17, 31, 6, 0, 27, 13, 21,
					-- layer=3 filter=52 channel=61
					32, 3, -27, -8, 2, -48, -17, -1, -32,
					-- layer=3 filter=52 channel=62
					3, -27, -3, -16, 10, -6, 20, 12, -19,
					-- layer=3 filter=52 channel=63
					-10, 1, 0, -6, -10, 7, -2, -16, 7,
					-- layer=3 filter=53 channel=0
					-1, 30, -9, 7, 45, 21, -15, 39, 45,
					-- layer=3 filter=53 channel=1
					29, -14, 8, 32, 40, -23, 14, 23, -41,
					-- layer=3 filter=53 channel=2
					1, -9, 8, -26, -13, -12, 5, -38, -17,
					-- layer=3 filter=53 channel=3
					0, -10, 18, 24, 25, 18, -2, 44, -24,
					-- layer=3 filter=53 channel=4
					10, 16, -11, 0, 0, 22, -23, -41, -7,
					-- layer=3 filter=53 channel=5
					-13, 8, -17, -15, -8, -14, -2, 0, -6,
					-- layer=3 filter=53 channel=6
					13, -5, 16, -16, -9, 9, -20, 9, 14,
					-- layer=3 filter=53 channel=7
					29, -9, -27, 11, -13, -61, -45, -41, -30,
					-- layer=3 filter=53 channel=8
					9, 2, 0, 16, -15, 4, -2, 43, 8,
					-- layer=3 filter=53 channel=9
					-28, -12, 0, 21, -10, 14, -33, 25, 31,
					-- layer=3 filter=53 channel=10
					31, 28, 43, -7, 9, 23, -4, 27, 17,
					-- layer=3 filter=53 channel=11
					-22, 5, 30, -23, 35, 33, -69, -26, 25,
					-- layer=3 filter=53 channel=12
					-37, -28, -15, 1, 29, 30, -5, 27, 9,
					-- layer=3 filter=53 channel=13
					24, -18, 10, 13, 75, 14, -60, -5, -26,
					-- layer=3 filter=53 channel=14
					6, -4, 34, 29, -13, 32, -16, -5, -54,
					-- layer=3 filter=53 channel=15
					15, 5, 34, 19, 13, 13, -11, -18, -52,
					-- layer=3 filter=53 channel=16
					19, -28, 0, 14, 20, 50, 22, 63, -7,
					-- layer=3 filter=53 channel=17
					27, 44, 12, 14, 21, 25, -43, -41, 15,
					-- layer=3 filter=53 channel=18
					-7, 8, 31, -35, -2, 4, -17, -57, 10,
					-- layer=3 filter=53 channel=19
					9, 12, -9, 23, 11, -7, -6, -29, -46,
					-- layer=3 filter=53 channel=20
					0, 2, 0, -28, 21, -14, 2, 3, 31,
					-- layer=3 filter=53 channel=21
					23, 23, -6, 2, 38, -8, -64, -45, -22,
					-- layer=3 filter=53 channel=22
					6, 5, 4, 3, -2, -5, 1, 7, 2,
					-- layer=3 filter=53 channel=23
					6, 27, 31, -2, -9, -9, 19, -4, 20,
					-- layer=3 filter=53 channel=24
					10, 15, 9, 20, 58, 34, -10, -37, -22,
					-- layer=3 filter=53 channel=25
					-21, -30, -31, -15, 9, -5, -17, -31, 11,
					-- layer=3 filter=53 channel=26
					-3, 15, 0, -9, -12, 4, -2, 0, 10,
					-- layer=3 filter=53 channel=27
					1, 14, 5, 12, 27, 5, 21, 18, 28,
					-- layer=3 filter=53 channel=28
					10, 0, 11, -1, -4, 4, 3, 2, -2,
					-- layer=3 filter=53 channel=29
					26, 23, 1, 7, -22, 43, -17, -38, -5,
					-- layer=3 filter=53 channel=30
					11, 10, -2, 11, -3, -9, -6, 11, 8,
					-- layer=3 filter=53 channel=31
					32, -33, 44, 26, -31, -12, -34, -49, 13,
					-- layer=3 filter=53 channel=32
					-15, -8, -3, -2, 3, 18, 61, 20, 45,
					-- layer=3 filter=53 channel=33
					-6, -6, 0, -15, -20, 0, 2, 26, 8,
					-- layer=3 filter=53 channel=34
					-33, 26, 4, 19, -23, -2, 12, -18, 10,
					-- layer=3 filter=53 channel=35
					-9, -11, -9, -13, 20, -17, -27, -36, -5,
					-- layer=3 filter=53 channel=36
					-2, 0, 10, 19, 8, 15, -16, 3, -44,
					-- layer=3 filter=53 channel=37
					-4, -6, -21, -6, 17, 7, -80, 5, 49,
					-- layer=3 filter=53 channel=38
					-1, -30, 8, -20, -20, -9, 43, 19, 35,
					-- layer=3 filter=53 channel=39
					10, 9, -5, -15, 0, -18, 12, -12, 9,
					-- layer=3 filter=53 channel=40
					-4, -37, -6, -33, -16, 35, 0, -9, 15,
					-- layer=3 filter=53 channel=41
					13, 32, 46, -17, -10, 14, -54, -51, -12,
					-- layer=3 filter=53 channel=42
					23, 8, -4, -21, 8, 5, -5, 13, 19,
					-- layer=3 filter=53 channel=43
					8, 0, 5, 28, -34, 24, 51, -16, 14,
					-- layer=3 filter=53 channel=44
					-6, -11, -5, 11, -3, -14, -3, -7, 10,
					-- layer=3 filter=53 channel=45
					29, -29, -15, 15, -21, -11, -46, -15, -36,
					-- layer=3 filter=53 channel=46
					28, 7, 5, 1, 14, -16, 14, -5, 5,
					-- layer=3 filter=53 channel=47
					7, 6, 47, 20, 61, 19, -5, 18, -19,
					-- layer=3 filter=53 channel=48
					4, -15, 24, -3, 15, 19, 6, 15, 48,
					-- layer=3 filter=53 channel=49
					21, 11, -3, -52, 5, 9, -33, -33, -13,
					-- layer=3 filter=53 channel=50
					57, 12, 8, 1, -21, -2, -57, -19, 40,
					-- layer=3 filter=53 channel=51
					-11, -14, -42, 0, 32, 19, 42, 21, 24,
					-- layer=3 filter=53 channel=52
					35, -4, 28, -19, 21, 5, -7, -24, -19,
					-- layer=3 filter=53 channel=53
					17, -34, -11, -4, -13, 11, -45, 24, 24,
					-- layer=3 filter=53 channel=54
					-12, -50, -21, 11, 35, 7, -51, 10, -16,
					-- layer=3 filter=53 channel=55
					29, 12, 47, -7, -16, -15, -11, -6, -5,
					-- layer=3 filter=53 channel=56
					40, 25, 17, 48, 41, -2, -31, -9, 13,
					-- layer=3 filter=53 channel=57
					6, 31, 18, -25, 44, 44, -22, -3, -8,
					-- layer=3 filter=53 channel=58
					2, -19, -61, 25, -25, 1, 18, 14, 61,
					-- layer=3 filter=53 channel=59
					-6, -25, 7, 0, -3, 26, 10, 23, 80,
					-- layer=3 filter=53 channel=60
					2, -13, 8, -18, -56, -19, 4, 9, -9,
					-- layer=3 filter=53 channel=61
					-54, -33, -56, -10, 5, -13, 49, 1, 15,
					-- layer=3 filter=53 channel=62
					-19, 0, 20, 37, 9, 30, 30, 30, -28,
					-- layer=3 filter=53 channel=63
					3, 7, -18, 5, 6, 21, 2, 13, 17,
					-- layer=3 filter=54 channel=0
					3, 34, 14, -30, 0, -6, 41, -17, 14,
					-- layer=3 filter=54 channel=1
					-15, -24, -51, -2, 3, 34, -15, 35, 30,
					-- layer=3 filter=54 channel=2
					-20, 14, -6, 59, 1, 19, 47, 24, 23,
					-- layer=3 filter=54 channel=3
					-62, -43, -47, -22, -51, -32, -48, -14, -51,
					-- layer=3 filter=54 channel=4
					26, 15, 10, 6, -14, 0, 26, 12, 2,
					-- layer=3 filter=54 channel=5
					-14, -14, 7, -18, -4, -5, 6, 0, -16,
					-- layer=3 filter=54 channel=6
					-17, -29, -18, 8, -70, 11, -2, 22, -46,
					-- layer=3 filter=54 channel=7
					-54, -25, 20, -31, 35, 51, 24, 14, 21,
					-- layer=3 filter=54 channel=8
					-49, -16, -43, -8, -27, 3, -1, 9, -15,
					-- layer=3 filter=54 channel=9
					39, -11, -15, -4, -54, -31, 34, 3, 19,
					-- layer=3 filter=54 channel=10
					-11, -20, -16, 19, -28, -35, 2, 30, -41,
					-- layer=3 filter=54 channel=11
					37, 55, -7, 35, -8, -19, 32, 3, -3,
					-- layer=3 filter=54 channel=12
					6, 23, -12, 14, -53, 12, 14, -3, 22,
					-- layer=3 filter=54 channel=13
					-19, -24, -34, 15, 8, 38, 29, 24, 56,
					-- layer=3 filter=54 channel=14
					-19, -19, -11, -2, -32, -10, 30, -23, 22,
					-- layer=3 filter=54 channel=15
					4, -17, -24, 24, 17, -19, 17, 30, 31,
					-- layer=3 filter=54 channel=16
					11, 38, 20, 17, -61, 0, -13, -12, 27,
					-- layer=3 filter=54 channel=17
					-2, -16, -1, 5, 7, 2, 11, -8, 2,
					-- layer=3 filter=54 channel=18
					27, 35, -2, -16, 13, 11, -19, 27, -8,
					-- layer=3 filter=54 channel=19
					19, -29, -5, 10, -64, -24, 24, -11, 3,
					-- layer=3 filter=54 channel=20
					-13, -10, 45, 3, -19, -1, 37, -6, -12,
					-- layer=3 filter=54 channel=21
					38, 72, 27, 23, 6, -10, 0, -3, 31,
					-- layer=3 filter=54 channel=22
					-2, 2, -12, -16, 0, 11, -14, 11, -12,
					-- layer=3 filter=54 channel=23
					40, 50, 27, 0, 3, 20, 7, -12, 26,
					-- layer=3 filter=54 channel=24
					0, -29, -12, 8, -38, -8, 51, 2, 35,
					-- layer=3 filter=54 channel=25
					26, -32, 44, 20, 9, 9, 22, -14, -9,
					-- layer=3 filter=54 channel=26
					3, 8, 6, -8, -12, -6, 1, -3, 13,
					-- layer=3 filter=54 channel=27
					-24, -43, -6, 24, -24, -5, 32, 20, 27,
					-- layer=3 filter=54 channel=28
					12, 0, 2, -2, 8, -11, -7, 4, -2,
					-- layer=3 filter=54 channel=29
					-50, -2, -23, -32, 74, 13, -17, 54, 5,
					-- layer=3 filter=54 channel=30
					10, 6, -7, -9, -12, 18, 16, -13, 13,
					-- layer=3 filter=54 channel=31
					-15, 33, -50, 22, 64, 67, 55, 54, 28,
					-- layer=3 filter=54 channel=32
					2, 2, 11, -17, -30, -23, -40, -26, -28,
					-- layer=3 filter=54 channel=33
					37, 44, 51, -7, -11, 0, 48, 11, 4,
					-- layer=3 filter=54 channel=34
					8, -9, -4, -8, 20, 3, -8, 28, 0,
					-- layer=3 filter=54 channel=35
					22, 30, 25, 18, 19, 3, 15, 1, -8,
					-- layer=3 filter=54 channel=36
					15, -6, 6, -15, -13, 3, 26, 11, 52,
					-- layer=3 filter=54 channel=37
					52, 19, 21, 20, -30, 34, 3, 11, 7,
					-- layer=3 filter=54 channel=38
					23, 34, 3, 6, 54, 27, -27, -4, -6,
					-- layer=3 filter=54 channel=39
					0, 0, 21, -6, 0, -8, 1, 14, -9,
					-- layer=3 filter=54 channel=40
					35, 96, 30, 39, 18, 6, -5, -5, 5,
					-- layer=3 filter=54 channel=41
					-11, -19, -52, -23, 6, 4, 11, 20, 13,
					-- layer=3 filter=54 channel=42
					8, -46, 4, 36, -11, 14, 0, -10, -14,
					-- layer=3 filter=54 channel=43
					-14, -28, -22, -1, -16, 1, -13, 0, -19,
					-- layer=3 filter=54 channel=44
					14, 2, 5, -6, 5, 13, 13, 12, 11,
					-- layer=3 filter=54 channel=45
					-27, -1, -1, 16, -1, -7, 47, 42, 5,
					-- layer=3 filter=54 channel=46
					-19, -21, 2, 17, -23, -7, 5, -16, -23,
					-- layer=3 filter=54 channel=47
					7, -19, -14, -26, -49, -40, 24, 2, 40,
					-- layer=3 filter=54 channel=48
					-45, 10, -33, 10, 74, 41, 19, -11, 16,
					-- layer=3 filter=54 channel=49
					39, 43, 29, 20, 42, -17, -2, 12, 48,
					-- layer=3 filter=54 channel=50
					-6, 0, 21, 30, -34, -14, -24, 2, -2,
					-- layer=3 filter=54 channel=51
					26, 55, 16, 4, 16, 1, -19, 62, -9,
					-- layer=3 filter=54 channel=52
					1, -20, -24, -16, -51, -18, 18, 40, 14,
					-- layer=3 filter=54 channel=53
					-8, 19, 42, 6, -1, -6, 57, -4, -6,
					-- layer=3 filter=54 channel=54
					-18, -4, 34, 15, -16, -1, 28, -19, -24,
					-- layer=3 filter=54 channel=55
					-18, 22, 8, -19, 26, 6, -27, 9, -14,
					-- layer=3 filter=54 channel=56
					-32, -19, 12, -20, -8, -25, 30, 1, -14,
					-- layer=3 filter=54 channel=57
					39, 24, 43, 32, -27, 5, 60, 7, 21,
					-- layer=3 filter=54 channel=58
					-6, 43, 38, -8, 43, -12, 10, 14, -25,
					-- layer=3 filter=54 channel=59
					7, 8, -9, 3, -46, -46, 17, 1, -45,
					-- layer=3 filter=54 channel=60
					8, 21, 8, 4, 10, 24, 8, 24, -16,
					-- layer=3 filter=54 channel=61
					21, 16, 22, 23, -8, -24, 34, 0, -4,
					-- layer=3 filter=54 channel=62
					8, -6, -1, -81, -22, -13, -28, 35, 51,
					-- layer=3 filter=54 channel=63
					10, -20, 10, -18, -21, -9, 1, 3, 0,
					-- layer=3 filter=55 channel=0
					13, -1, -33, 14, 1, 16, 0, 1, 13,
					-- layer=3 filter=55 channel=1
					19, -12, 4, 38, 0, 47, 0, -11, 38,
					-- layer=3 filter=55 channel=2
					-9, 6, -14, -18, 35, -5, -55, -18, -37,
					-- layer=3 filter=55 channel=3
					-27, -24, -3, 12, -20, 9, -2, 0, -5,
					-- layer=3 filter=55 channel=4
					16, -3, -5, -15, -25, 0, 12, -7, -24,
					-- layer=3 filter=55 channel=5
					-18, -21, -13, -1, -11, 10, -5, -8, -24,
					-- layer=3 filter=55 channel=6
					-9, -6, 26, -2, 5, 25, 38, 53, -20,
					-- layer=3 filter=55 channel=7
					45, 9, 2, 6, 2, -13, 33, 34, 0,
					-- layer=3 filter=55 channel=8
					4, 3, 4, -21, -42, 18, 54, 38, 5,
					-- layer=3 filter=55 channel=9
					14, 18, -5, 9, -50, 9, 61, -10, -1,
					-- layer=3 filter=55 channel=10
					23, 4, 16, 45, -41, -11, 18, 18, 46,
					-- layer=3 filter=55 channel=11
					-25, 15, 26, 12, 55, -4, -16, 3, -58,
					-- layer=3 filter=55 channel=12
					-23, -13, -19, -11, 17, -10, -19, -23, -19,
					-- layer=3 filter=55 channel=13
					-15, -33, -8, 25, 20, 13, -3, -11, -29,
					-- layer=3 filter=55 channel=14
					16, 13, -19, 19, 20, 30, 8, -31, 27,
					-- layer=3 filter=55 channel=15
					18, -10, -5, -2, 15, 0, -34, -42, -8,
					-- layer=3 filter=55 channel=16
					-29, -28, -4, -23, 0, -37, 12, 56, 7,
					-- layer=3 filter=55 channel=17
					29, 27, -7, 4, 41, 6, -10, 14, -29,
					-- layer=3 filter=55 channel=18
					29, 10, -5, 11, 30, 39, -21, -23, 2,
					-- layer=3 filter=55 channel=19
					10, -5, -4, 33, -31, 28, -9, -10, -25,
					-- layer=3 filter=55 channel=20
					-9, 0, -7, -62, 13, -20, -18, -31, 15,
					-- layer=3 filter=55 channel=21
					-20, 2, 4, 18, 9, -22, -1, -24, -38,
					-- layer=3 filter=55 channel=22
					15, 13, -1, 10, 7, 11, 1, 1, -2,
					-- layer=3 filter=55 channel=23
					23, 71, 18, -8, 40, 11, -10, 6, -8,
					-- layer=3 filter=55 channel=24
					25, 26, 17, 26, 48, 61, -22, 27, -19,
					-- layer=3 filter=55 channel=25
					-20, -44, -7, -4, 4, -38, -3, -22, -5,
					-- layer=3 filter=55 channel=26
					-10, 6, -2, 13, -13, -11, 13, 1, 12,
					-- layer=3 filter=55 channel=27
					-38, -37, 5, 1, 28, -4, 0, 72, 0,
					-- layer=3 filter=55 channel=28
					-3, 10, 12, -7, -5, -4, 0, -9, -5,
					-- layer=3 filter=55 channel=29
					23, -16, -44, 24, 10, 13, 22, -8, 0,
					-- layer=3 filter=55 channel=30
					9, -17, -9, -10, 10, -12, -7, 10, 17,
					-- layer=3 filter=55 channel=31
					-14, -29, -11, 6, 37, 35, 30, -24, 41,
					-- layer=3 filter=55 channel=32
					14, 46, 14, 11, -21, 24, 20, 7, -2,
					-- layer=3 filter=55 channel=33
					-12, 0, -1, -49, -20, 47, -88, -19, 13,
					-- layer=3 filter=55 channel=34
					-19, -29, -13, 4, 24, 20, 3, 1, 25,
					-- layer=3 filter=55 channel=35
					-3, -18, -10, -23, 9, 8, -22, 12, -8,
					-- layer=3 filter=55 channel=36
					40, 0, -30, -2, 6, 9, -70, -10, -18,
					-- layer=3 filter=55 channel=37
					6, -22, 20, 0, -42, 21, -28, -20, 12,
					-- layer=3 filter=55 channel=38
					0, 16, -13, 11, -8, 17, 34, -4, 33,
					-- layer=3 filter=55 channel=39
					-2, 8, -4, 7, -2, 2, -16, 9, -7,
					-- layer=3 filter=55 channel=40
					7, 16, 5, -7, -19, 3, -37, -19, -11,
					-- layer=3 filter=55 channel=41
					-18, 26, -3, -36, 28, 10, -26, 1, -3,
					-- layer=3 filter=55 channel=42
					29, -15, 27, -17, -6, 8, -35, 32, -9,
					-- layer=3 filter=55 channel=43
					-10, 8, -16, 2, -34, -5, 12, 26, 39,
					-- layer=3 filter=55 channel=44
					-19, 10, 14, -2, 9, -13, -10, 2, 9,
					-- layer=3 filter=55 channel=45
					-8, -25, -17, 27, -26, 50, 0, -18, 41,
					-- layer=3 filter=55 channel=46
					6, -33, 0, -8, -32, 5, 7, -29, -33,
					-- layer=3 filter=55 channel=47
					-6, -23, 11, -12, -3, -22, -54, -7, -50,
					-- layer=3 filter=55 channel=48
					7, 13, 22, -1, -9, -5, 22, 1, 17,
					-- layer=3 filter=55 channel=49
					21, 25, 20, 17, 19, -14, 5, -36, -19,
					-- layer=3 filter=55 channel=50
					0, 9, 76, 5, 9, -4, -6, 32, -12,
					-- layer=3 filter=55 channel=51
					-21, -5, -54, -2, -11, -7, 13, 8, -3,
					-- layer=3 filter=55 channel=52
					46, 13, 28, 13, -16, 0, -35, 16, 1,
					-- layer=3 filter=55 channel=53
					-5, -9, 34, -4, -26, -8, -7, -11, -23,
					-- layer=3 filter=55 channel=54
					-20, -13, -2, 44, 3, 31, 46, 16, 9,
					-- layer=3 filter=55 channel=55
					28, 19, 24, -6, -25, 0, -30, 25, 18,
					-- layer=3 filter=55 channel=56
					16, 20, 38, 25, 8, 19, -32, -32, -1,
					-- layer=3 filter=55 channel=57
					46, 36, 14, 0, 20, 27, -97, -32, 36,
					-- layer=3 filter=55 channel=58
					-10, 11, -22, 6, -12, -7, 8, 4, -36,
					-- layer=3 filter=55 channel=59
					2, -23, -24, 37, -16, 30, 11, -38, 6,
					-- layer=3 filter=55 channel=60
					11, -1, -34, 8, -15, 8, 29, 28, -8,
					-- layer=3 filter=55 channel=61
					-20, 30, -26, 25, -36, 19, 14, -7, 2,
					-- layer=3 filter=55 channel=62
					20, 16, 7, -14, -5, 29, -12, 0, 35,
					-- layer=3 filter=55 channel=63
					13, 13, -21, 6, -38, -11, -3, -11, 0,
					-- layer=3 filter=56 channel=0
					4, -18, -6, -5, 0, -9, -11, -8, -9,
					-- layer=3 filter=56 channel=1
					-4, -8, -12, 5, 8, 11, -9, -2, 11,
					-- layer=3 filter=56 channel=2
					-11, -6, 13, 2, 13, -11, 3, -10, 4,
					-- layer=3 filter=56 channel=3
					4, -15, -8, -6, 5, -2, -2, -8, -15,
					-- layer=3 filter=56 channel=4
					-16, 2, 5, 5, -7, -14, -11, -5, -10,
					-- layer=3 filter=56 channel=5
					-6, -5, 1, -3, 7, 5, -4, -14, -8,
					-- layer=3 filter=56 channel=6
					-6, 8, -4, -9, 11, -2, -18, -6, 10,
					-- layer=3 filter=56 channel=7
					-18, -13, 1, -3, 10, -15, 4, -8, -14,
					-- layer=3 filter=56 channel=8
					-7, -9, -7, 10, 1, 5, -11, -18, -9,
					-- layer=3 filter=56 channel=9
					0, -4, -5, -9, -6, -9, -17, -5, 2,
					-- layer=3 filter=56 channel=10
					-8, -17, -15, -10, 6, 0, 6, -16, 4,
					-- layer=3 filter=56 channel=11
					1, -5, -18, 1, -10, 0, -1, -12, -17,
					-- layer=3 filter=56 channel=12
					9, 6, -12, 9, -5, -13, 5, -10, -4,
					-- layer=3 filter=56 channel=13
					-13, 12, -7, -12, -13, -16, 7, -16, 10,
					-- layer=3 filter=56 channel=14
					-5, 6, 4, -4, 1, 0, -19, 4, -15,
					-- layer=3 filter=56 channel=15
					-18, -6, 0, -13, 0, 7, -3, -14, 0,
					-- layer=3 filter=56 channel=16
					6, -7, 13, 12, 2, -9, -9, 13, 8,
					-- layer=3 filter=56 channel=17
					-16, 9, 0, 0, -3, -19, 3, 9, -4,
					-- layer=3 filter=56 channel=18
					-8, 1, 1, -17, -3, -5, 4, 4, -18,
					-- layer=3 filter=56 channel=19
					-5, -12, -11, -9, -1, -2, -9, 6, -5,
					-- layer=3 filter=56 channel=20
					12, 1, 1, 3, 6, -3, -12, -18, 3,
					-- layer=3 filter=56 channel=21
					-3, -2, -6, -10, 12, 4, -1, -1, -8,
					-- layer=3 filter=56 channel=22
					-3, -3, 5, -2, 5, -13, 2, -6, 10,
					-- layer=3 filter=56 channel=23
					-15, -12, -8, 3, -4, 1, -13, -10, -11,
					-- layer=3 filter=56 channel=24
					-2, 12, -9, -7, 2, -12, 3, 12, -10,
					-- layer=3 filter=56 channel=25
					-2, 1, -5, -12, -3, -4, -11, -10, -12,
					-- layer=3 filter=56 channel=26
					7, -4, 1, 0, -11, -9, -1, -14, -8,
					-- layer=3 filter=56 channel=27
					-4, -2, -4, -7, 0, 9, 4, -13, -7,
					-- layer=3 filter=56 channel=28
					-8, -12, 3, -2, -9, -8, -5, -13, 4,
					-- layer=3 filter=56 channel=29
					-9, 1, -2, 10, 13, -3, -17, 3, -11,
					-- layer=3 filter=56 channel=30
					6, -9, 13, -8, -6, -6, -2, 13, 2,
					-- layer=3 filter=56 channel=31
					-4, 0, 10, 5, -10, -10, 8, 3, 7,
					-- layer=3 filter=56 channel=32
					0, -5, 6, 0, 6, -13, -13, -11, -13,
					-- layer=3 filter=56 channel=33
					-6, -1, 7, -4, 8, -11, 1, 3, -16,
					-- layer=3 filter=56 channel=34
					1, -6, -20, -13, -4, -9, -18, -20, -4,
					-- layer=3 filter=56 channel=35
					3, -3, -5, -3, 3, -12, -13, -6, 0,
					-- layer=3 filter=56 channel=36
					0, 6, 5, -11, -16, -1, -11, 0, 8,
					-- layer=3 filter=56 channel=37
					-8, -9, -6, -15, 2, -6, -14, -13, 0,
					-- layer=3 filter=56 channel=38
					-17, 10, 0, 3, -11, -4, -18, -2, 2,
					-- layer=3 filter=56 channel=39
					-15, -12, -3, 0, -10, 11, -4, -5, -11,
					-- layer=3 filter=56 channel=40
					-7, -14, 7, 5, -5, -9, -2, -13, -12,
					-- layer=3 filter=56 channel=41
					8, 5, -12, -5, -10, 1, 2, 10, 8,
					-- layer=3 filter=56 channel=42
					-11, 9, 0, 4, -3, -1, -8, -3, -11,
					-- layer=3 filter=56 channel=43
					-14, 12, -15, 5, -15, 11, -10, -14, 7,
					-- layer=3 filter=56 channel=44
					11, 0, 7, -4, 8, 2, 11, -10, 11,
					-- layer=3 filter=56 channel=45
					9, 12, -14, 2, -11, 9, -5, -9, -9,
					-- layer=3 filter=56 channel=46
					-8, -17, -13, 0, 0, -8, 0, 11, -7,
					-- layer=3 filter=56 channel=47
					13, -3, -5, -14, -12, 10, -13, -16, 4,
					-- layer=3 filter=56 channel=48
					4, 1, -1, -5, -3, -6, -2, -17, -5,
					-- layer=3 filter=56 channel=49
					-2, 8, -21, -16, -19, -2, 9, -16, -3,
					-- layer=3 filter=56 channel=50
					10, -12, 4, -16, 0, -2, -2, -9, 4,
					-- layer=3 filter=56 channel=51
					-24, 0, 9, -10, -18, 0, -18, -5, 3,
					-- layer=3 filter=56 channel=52
					-15, -11, 0, -2, -11, 12, -12, -12, 2,
					-- layer=3 filter=56 channel=53
					-12, -5, -8, -12, -21, 4, -2, 3, 4,
					-- layer=3 filter=56 channel=54
					-16, -2, 3, 3, -6, -2, 3, -14, 8,
					-- layer=3 filter=56 channel=55
					7, -13, -14, 8, -16, -5, -9, -17, -6,
					-- layer=3 filter=56 channel=56
					-7, -4, 0, -14, -3, -1, -11, -15, -6,
					-- layer=3 filter=56 channel=57
					-18, 1, -7, 0, 8, 12, 5, 9, -4,
					-- layer=3 filter=56 channel=58
					-8, -11, -3, 10, -9, -2, -7, -14, -13,
					-- layer=3 filter=56 channel=59
					0, 3, -2, 8, -8, -20, -5, -6, -12,
					-- layer=3 filter=56 channel=60
					-2, 8, -5, -10, -9, -3, -4, 5, -9,
					-- layer=3 filter=56 channel=61
					-8, -23, 3, 2, -16, -14, -6, -17, 5,
					-- layer=3 filter=56 channel=62
					3, -24, -3, -7, 6, 0, -12, 7, 5,
					-- layer=3 filter=56 channel=63
					4, 3, -8, 7, 10, 12, -1, -5, 9,
					-- layer=3 filter=57 channel=0
					1, -6, -7, 10, -8, -17, -7, -13, -23,
					-- layer=3 filter=57 channel=1
					-3, -13, 2, -8, -15, 4, 1, -15, -24,
					-- layer=3 filter=57 channel=2
					8, 0, 4, 1, -3, -19, -21, -12, -7,
					-- layer=3 filter=57 channel=3
					6, -13, -13, -11, -1, -3, -11, -3, -12,
					-- layer=3 filter=57 channel=4
					2, -9, 11, 4, 1, -19, -22, -8, -1,
					-- layer=3 filter=57 channel=5
					11, -2, 10, -9, 13, 10, -6, -6, 2,
					-- layer=3 filter=57 channel=6
					-11, -19, -13, -5, 7, 7, 0, -5, 12,
					-- layer=3 filter=57 channel=7
					-6, -4, -11, 9, 6, -6, -2, -7, -7,
					-- layer=3 filter=57 channel=8
					6, -5, -6, -3, -7, 0, 8, 0, 5,
					-- layer=3 filter=57 channel=9
					-11, 0, -3, -7, -1, -12, 7, 9, -3,
					-- layer=3 filter=57 channel=10
					3, 7, 6, -8, 12, 11, -7, -20, -16,
					-- layer=3 filter=57 channel=11
					0, 2, -5, -20, -4, -16, -7, -18, 9,
					-- layer=3 filter=57 channel=12
					-4, -10, -17, -9, -7, 7, 9, 0, -20,
					-- layer=3 filter=57 channel=13
					3, -6, 5, -2, 1, 0, -16, -12, 3,
					-- layer=3 filter=57 channel=14
					-12, 15, 12, -1, 6, -2, 5, -6, -12,
					-- layer=3 filter=57 channel=15
					-12, 8, -11, -6, -1, -5, 0, -21, -21,
					-- layer=3 filter=57 channel=16
					-7, -4, -10, -10, -15, -5, -4, 3, 10,
					-- layer=3 filter=57 channel=17
					8, 5, 13, -11, -5, -2, -10, -4, -16,
					-- layer=3 filter=57 channel=18
					12, 12, 3, -4, -6, -18, -16, -2, -2,
					-- layer=3 filter=57 channel=19
					5, -11, -6, -22, -10, 6, -10, -1, -7,
					-- layer=3 filter=57 channel=20
					-13, 3, -16, -12, -15, -14, 6, 6, -13,
					-- layer=3 filter=57 channel=21
					-5, 3, 2, -16, -14, -22, -11, -16, 0,
					-- layer=3 filter=57 channel=22
					5, -13, 2, -3, 0, -3, 14, 14, 2,
					-- layer=3 filter=57 channel=23
					-17, -1, 3, -14, 12, 10, -3, -15, 3,
					-- layer=3 filter=57 channel=24
					0, 9, -3, -8, -20, -2, -23, -17, -5,
					-- layer=3 filter=57 channel=25
					6, -18, 10, -7, -14, 0, -9, -11, -4,
					-- layer=3 filter=57 channel=26
					9, 2, -2, 14, -1, -13, 14, 8, 12,
					-- layer=3 filter=57 channel=27
					-6, 12, -10, -12, -1, -6, 6, -9, 5,
					-- layer=3 filter=57 channel=28
					5, 6, 4, -1, -11, 11, -14, -16, -3,
					-- layer=3 filter=57 channel=29
					0, -7, 5, -19, -14, -10, -4, -14, 9,
					-- layer=3 filter=57 channel=30
					3, 7, 10, -8, 13, -15, -11, -6, 14,
					-- layer=3 filter=57 channel=31
					-8, 13, -2, 10, -4, 3, 14, -7, -1,
					-- layer=3 filter=57 channel=32
					-1, 5, 3, 12, -4, -2, 3, 10, 2,
					-- layer=3 filter=57 channel=33
					-9, -18, -10, -12, -15, 7, 5, -13, -12,
					-- layer=3 filter=57 channel=34
					7, -16, -7, -21, -17, -14, -11, -3, -8,
					-- layer=3 filter=57 channel=35
					-7, -9, -13, -1, -12, -10, -19, 3, 5,
					-- layer=3 filter=57 channel=36
					-7, 0, 0, -10, 4, 6, -20, 7, -2,
					-- layer=3 filter=57 channel=37
					10, -20, 0, -19, 3, 11, -12, -16, 1,
					-- layer=3 filter=57 channel=38
					11, -7, 2, -10, 1, -8, 1, -17, -8,
					-- layer=3 filter=57 channel=39
					1, -4, 8, -8, -9, -11, -10, 1, 0,
					-- layer=3 filter=57 channel=40
					7, 2, -3, -7, -19, -16, -18, -5, -8,
					-- layer=3 filter=57 channel=41
					10, -14, -11, 4, -12, -1, -7, -15, 2,
					-- layer=3 filter=57 channel=42
					2, -14, -4, 0, -2, 0, -19, -25, -19,
					-- layer=3 filter=57 channel=43
					-11, 5, 3, -17, -17, -15, -16, 11, 13,
					-- layer=3 filter=57 channel=44
					4, 13, -2, -5, -7, -4, -3, 11, 13,
					-- layer=3 filter=57 channel=45
					1, 14, -4, -19, -1, -12, 2, 6, 8,
					-- layer=3 filter=57 channel=46
					-14, -8, -10, -7, 9, 9, -13, -3, -16,
					-- layer=3 filter=57 channel=47
					11, 7, -7, -5, 13, 7, -14, -18, 0,
					-- layer=3 filter=57 channel=48
					1, -16, 1, -5, 2, 6, 12, -9, -3,
					-- layer=3 filter=57 channel=49
					-13, 2, -10, 7, -9, -10, -12, 6, 0,
					-- layer=3 filter=57 channel=50
					3, -14, -10, -17, -14, 10, 2, 1, 7,
					-- layer=3 filter=57 channel=51
					4, -3, -9, -18, 13, -7, -8, -18, -12,
					-- layer=3 filter=57 channel=52
					4, 10, -1, -4, -13, -8, 2, -7, 4,
					-- layer=3 filter=57 channel=53
					0, 9, -5, -15, -6, -8, -12, -9, 1,
					-- layer=3 filter=57 channel=54
					-8, -16, -7, -20, -16, -12, -8, 1, 6,
					-- layer=3 filter=57 channel=55
					2, -9, -8, 9, 13, 9, 6, 8, -15,
					-- layer=3 filter=57 channel=56
					-2, -3, 4, 0, -9, 5, -12, -16, -8,
					-- layer=3 filter=57 channel=57
					-4, -8, 3, 0, 4, 5, 6, -14, 11,
					-- layer=3 filter=57 channel=58
					0, -3, -2, -8, -1, -10, -13, -15, -11,
					-- layer=3 filter=57 channel=59
					-14, -18, -18, -13, 17, 9, -7, -7, -13,
					-- layer=3 filter=57 channel=60
					-13, 4, 2, -17, -5, -13, 6, -23, -4,
					-- layer=3 filter=57 channel=61
					6, -5, 1, -5, 4, -17, -14, -19, -1,
					-- layer=3 filter=57 channel=62
					14, -5, 6, -14, -3, 7, 11, -7, -9,
					-- layer=3 filter=57 channel=63
					0, 14, -13, 12, -12, -2, -4, 1, 13,
					-- layer=3 filter=58 channel=0
					1, -1, -27, -22, -5, -24, -22, -2, -23,
					-- layer=3 filter=58 channel=1
					-4, -19, -7, 7, -10, 0, -2, -9, -11,
					-- layer=3 filter=58 channel=2
					-1, 7, 13, 16, -8, -12, 2, 1, -28,
					-- layer=3 filter=58 channel=3
					-1, 0, 9, 5, 5, 6, 2, -9, -20,
					-- layer=3 filter=58 channel=4
					-9, -2, -20, 8, -12, -19, -3, -6, -16,
					-- layer=3 filter=58 channel=5
					-7, 5, -7, 2, 10, -1, -4, 4, -13,
					-- layer=3 filter=58 channel=6
					-12, 11, 7, 0, 10, -4, -3, 13, -21,
					-- layer=3 filter=58 channel=7
					-6, -17, -9, -6, -7, -16, 6, 12, 1,
					-- layer=3 filter=58 channel=8
					9, -3, -5, -2, 1, 16, -26, -23, -25,
					-- layer=3 filter=58 channel=9
					-14, 0, 0, -17, -4, 7, -13, -17, -3,
					-- layer=3 filter=58 channel=10
					-27, -14, -14, -16, -9, -8, -21, -7, 12,
					-- layer=3 filter=58 channel=11
					-11, 0, -6, 0, -5, -27, 0, -5, 5,
					-- layer=3 filter=58 channel=12
					-1, 16, 10, -8, -29, -9, -1, -3, -1,
					-- layer=3 filter=58 channel=13
					4, 5, -8, 13, 5, -2, 5, 3, 12,
					-- layer=3 filter=58 channel=14
					-21, 0, 0, -10, 6, 1, -14, 14, -28,
					-- layer=3 filter=58 channel=15
					10, -18, -15, 2, -6, 5, 12, -18, -16,
					-- layer=3 filter=58 channel=16
					-4, 8, -8, -7, -10, 1, 0, -27, -2,
					-- layer=3 filter=58 channel=17
					-10, -1, 0, -19, -18, -12, -18, -28, -2,
					-- layer=3 filter=58 channel=18
					-4, 0, -3, -11, -4, -5, -18, 11, 2,
					-- layer=3 filter=58 channel=19
					-5, -4, 19, -4, 18, -22, -6, -6, -6,
					-- layer=3 filter=58 channel=20
					-13, 5, 8, -5, 8, -15, -4, 12, 3,
					-- layer=3 filter=58 channel=21
					-17, -10, 0, -1, 15, -13, -2, -11, -10,
					-- layer=3 filter=58 channel=22
					-6, -1, 9, -10, 5, -5, -4, 6, 0,
					-- layer=3 filter=58 channel=23
					1, 3, -1, -7, -10, -8, -1, 6, 21,
					-- layer=3 filter=58 channel=24
					-19, -4, 0, -4, 5, 10, 3, -6, 0,
					-- layer=3 filter=58 channel=25
					-5, -8, -3, 0, -4, -6, 12, -18, -10,
					-- layer=3 filter=58 channel=26
					0, -12, -13, 14, 9, 6, -2, -9, -6,
					-- layer=3 filter=58 channel=27
					-13, -10, 3, -4, 10, -2, 0, 25, 7,
					-- layer=3 filter=58 channel=28
					-1, 8, -14, -6, -9, 0, 7, 2, -14,
					-- layer=3 filter=58 channel=29
					-14, -2, -3, -18, 10, 1, 0, -6, 3,
					-- layer=3 filter=58 channel=30
					-12, -4, 7, 12, -14, -1, -5, 12, 12,
					-- layer=3 filter=58 channel=31
					25, -2, 15, -11, -22, 1, -1, 16, 3,
					-- layer=3 filter=58 channel=32
					7, -2, 3, -2, -5, -9, -10, -7, -1,
					-- layer=3 filter=58 channel=33
					-10, 9, -6, -14, 5, 3, -7, -10, 12,
					-- layer=3 filter=58 channel=34
					-15, -8, 0, -8, -16, 1, 9, -26, 5,
					-- layer=3 filter=58 channel=35
					-20, -22, 4, -10, 5, 4, 6, 10, 8,
					-- layer=3 filter=58 channel=36
					-4, -2, 5, -16, -17, 0, -5, -26, 0,
					-- layer=3 filter=58 channel=37
					-7, 4, 4, -16, 9, -13, -11, -31, -24,
					-- layer=3 filter=58 channel=38
					-16, 12, 21, -21, -25, -18, -2, 0, 10,
					-- layer=3 filter=58 channel=39
					-8, 12, 11, 4, 9, 4, 3, -5, -15,
					-- layer=3 filter=58 channel=40
					1, -11, -12, -15, -6, -28, 5, -17, -3,
					-- layer=3 filter=58 channel=41
					-26, -16, -1, 3, 1, 6, 13, -27, 7,
					-- layer=3 filter=58 channel=42
					-31, -5, 6, -1, 13, -15, -7, 5, 7,
					-- layer=3 filter=58 channel=43
					2, 10, 9, 3, 12, -24, 15, -8, -4,
					-- layer=3 filter=58 channel=44
					13, 1, -7, -9, -12, -6, 0, 14, -7,
					-- layer=3 filter=58 channel=45
					-11, -17, -14, 0, -6, -3, -27, -6, -25,
					-- layer=3 filter=58 channel=46
					-7, -9, -19, -13, -5, -22, -7, 1, -10,
					-- layer=3 filter=58 channel=47
					-12, -4, 4, -21, -11, -4, -4, -5, -14,
					-- layer=3 filter=58 channel=48
					-19, -6, 4, -18, 12, 2, -10, -2, 0,
					-- layer=3 filter=58 channel=49
					-13, -12, -8, -6, -4, -26, 7, 3, -6,
					-- layer=3 filter=58 channel=50
					-21, -11, 2, 10, 7, -10, 2, -19, -2,
					-- layer=3 filter=58 channel=51
					-9, -25, -31, -8, -12, 4, -2, -18, -15,
					-- layer=3 filter=58 channel=52
					2, -11, -15, 16, -10, -15, -24, 10, -7,
					-- layer=3 filter=58 channel=53
					-8, -22, -2, -9, -32, -27, -14, -21, 2,
					-- layer=3 filter=58 channel=54
					-13, -19, 11, 1, -1, 5, 9, -2, 1,
					-- layer=3 filter=58 channel=55
					-8, -9, -24, 10, -3, -2, -11, -1, 5,
					-- layer=3 filter=58 channel=56
					0, -14, -18, -14, 16, -12, 3, 4, -24,
					-- layer=3 filter=58 channel=57
					-2, 16, -5, -11, -16, -5, -23, 6, 6,
					-- layer=3 filter=58 channel=58
					16, 33, -8, -13, 9, 11, -29, -24, 1,
					-- layer=3 filter=58 channel=59
					-10, -15, -22, -17, -17, -13, 2, -15, -18,
					-- layer=3 filter=58 channel=60
					-30, -28, 11, -12, -7, -12, 4, -6, -1,
					-- layer=3 filter=58 channel=61
					3, -9, -8, -33, -22, -11, -12, -7, -9,
					-- layer=3 filter=58 channel=62
					-6, -3, -11, -10, 9, -12, -6, -15, -2,
					-- layer=3 filter=58 channel=63
					-3, -3, -14, -9, 6, -4, 12, 8, -10,
					-- layer=3 filter=59 channel=0
					-55, -22, 9, -27, -38, 18, -48, -2, -77,
					-- layer=3 filter=59 channel=1
					-63, -29, -23, -25, 42, 23, 7, 15, -11,
					-- layer=3 filter=59 channel=2
					-56, -38, -1, 6, -33, -7, 34, -2, -4,
					-- layer=3 filter=59 channel=3
					43, 43, 23, 37, 2, -6, 28, 43, 55,
					-- layer=3 filter=59 channel=4
					-26, -21, -8, 28, 5, -16, 65, -8, -8,
					-- layer=3 filter=59 channel=5
					1, -1, 12, 11, 24, 25, 5, 16, 0,
					-- layer=3 filter=59 channel=6
					40, 36, 39, 9, -39, 3, 13, -3, 45,
					-- layer=3 filter=59 channel=7
					2, -21, -50, 25, -38, -19, 46, -7, 17,
					-- layer=3 filter=59 channel=8
					-25, -21, -7, 10, 15, 16, 12, 0, 88,
					-- layer=3 filter=59 channel=9
					23, 18, 7, -32, 15, 25, 32, 35, 43,
					-- layer=3 filter=59 channel=10
					-40, -53, -19, -15, -6, -15, 46, 25, 17,
					-- layer=3 filter=59 channel=11
					-13, 11, -50, -11, 16, -5, -10, -13, 4,
					-- layer=3 filter=59 channel=12
					-30, -80, -69, -44, -3, -6, -13, 19, -2,
					-- layer=3 filter=59 channel=13
					-1, -16, 1, 11, 13, -12, -12, -43, -15,
					-- layer=3 filter=59 channel=14
					-46, -51, -16, 31, 21, 2, 8, 19, 14,
					-- layer=3 filter=59 channel=15
					-40, -8, -21, -30, -14, -17, 8, -27, -48,
					-- layer=3 filter=59 channel=16
					-72, -105, -78, -27, 24, 0, 10, -8, 2,
					-- layer=3 filter=59 channel=17
					-8, 40, 18, 24, 27, -6, 25, 14, -22,
					-- layer=3 filter=59 channel=18
					26, -11, 39, 11, -28, 15, 51, -15, 4,
					-- layer=3 filter=59 channel=19
					-6, 6, -22, 34, 0, 26, -20, -11, 0,
					-- layer=3 filter=59 channel=20
					-65, -12, 33, 35, 73, 28, 17, 8, -20,
					-- layer=3 filter=59 channel=21
					-15, 12, -42, -22, 56, -17, -41, -11, -5,
					-- layer=3 filter=59 channel=22
					10, 7, -10, 6, -5, -14, 0, 10, -4,
					-- layer=3 filter=59 channel=23
					0, 2, -3, 19, -33, 15, 1, -5, 40,
					-- layer=3 filter=59 channel=24
					-10, 7, 21, 17, -28, 8, 8, 15, 18,
					-- layer=3 filter=59 channel=25
					4, 20, -7, -16, 14, 2, -8, 10, 16,
					-- layer=3 filter=59 channel=26
					-12, 3, -13, 0, -2, -10, 14, -1, 7,
					-- layer=3 filter=59 channel=27
					-63, 42, -7, 8, 49, 26, -6, 7, 2,
					-- layer=3 filter=59 channel=28
					-13, -14, 0, -1, 5, 11, -7, -12, -7,
					-- layer=3 filter=59 channel=29
					62, 32, 60, 40, -21, -30, 39, -36, -15,
					-- layer=3 filter=59 channel=30
					-10, 7, 1, -4, -4, -20, -1, 0, 1,
					-- layer=3 filter=59 channel=31
					46, -20, 77, 32, -46, -40, -16, -23, 23,
					-- layer=3 filter=59 channel=32
					-21, -1, -14, 9, 14, 19, -54, -3, -6,
					-- layer=3 filter=59 channel=33
					-23, 1, -16, 10, -5, -8, 21, 23, -46,
					-- layer=3 filter=59 channel=34
					23, 15, 1, 9, 39, 13, 21, 26, 35,
					-- layer=3 filter=59 channel=35
					7, 6, 16, 47, 15, 9, 30, 7, 8,
					-- layer=3 filter=59 channel=36
					-60, -34, -28, 28, 44, 7, 14, 29, -6,
					-- layer=3 filter=59 channel=37
					-29, 12, 36, 11, 50, -13, -8, 0, 9,
					-- layer=3 filter=59 channel=38
					9, -10, 21, -9, -30, -3, 20, -9, 41,
					-- layer=3 filter=59 channel=39
					13, -4, 8, 5, -7, 4, 2, 15, 1,
					-- layer=3 filter=59 channel=40
					-2, -34, -4, 12, 1, -15, 2, -9, -3,
					-- layer=3 filter=59 channel=41
					14, 18, -15, 12, 3, 21, -18, 4, -12,
					-- layer=3 filter=59 channel=42
					15, 31, 45, 21, 18, -13, 17, 6, -13,
					-- layer=3 filter=59 channel=43
					68, 21, 43, 62, -10, 18, 23, -14, 19,
					-- layer=3 filter=59 channel=44
					-3, 1, -11, -6, -7, -9, -9, 0, 13,
					-- layer=3 filter=59 channel=45
					-30, -69, -14, -11, -13, 24, -41, -72, -5,
					-- layer=3 filter=59 channel=46
					-28, -39, -21, -10, 2, 12, -62, -23, -8,
					-- layer=3 filter=59 channel=47
					-7, 0, -14, -27, 35, 0, 18, 30, 7,
					-- layer=3 filter=59 channel=48
					-43, 0, 5, 20, 14, 26, 15, 3, 7,
					-- layer=3 filter=59 channel=49
					-34, -35, -67, -10, 14, 0, -34, -35, -93,
					-- layer=3 filter=59 channel=50
					6, 35, 28, 29, 32, -7, 19, 5, 46,
					-- layer=3 filter=59 channel=51
					12, -13, -28, -31, 2, 5, 71, 50, 4,
					-- layer=3 filter=59 channel=52
					-43, -43, 6, 5, -6, -5, 35, 28, -34,
					-- layer=3 filter=59 channel=53
					-2, 3, -28, 29, 45, 4, -6, 4, 8,
					-- layer=3 filter=59 channel=54
					-8, -25, 15, -38, 1, 6, -19, -30, 7,
					-- layer=3 filter=59 channel=55
					-7, -45, -36, 3, -21, 11, 3, 7, 1,
					-- layer=3 filter=59 channel=56
					-32, 10, -14, -19, -5, 4, -1, -38, 16,
					-- layer=3 filter=59 channel=57
					-63, 21, -5, 13, -41, -14, 9, 32, -19,
					-- layer=3 filter=59 channel=58
					41, 9, -12, 28, -23, 61, 42, -21, 21,
					-- layer=3 filter=59 channel=59
					-79, -32, -27, -10, 0, 14, -54, 7, -9,
					-- layer=3 filter=59 channel=60
					27, 42, 12, 15, 29, 8, 9, 18, 23,
					-- layer=3 filter=59 channel=61
					0, -9, -5, -8, -3, -17, 10, 32, 4,
					-- layer=3 filter=59 channel=62
					-29, -31, -44, -9, 27, -16, 34, 4, 36,
					-- layer=3 filter=59 channel=63
					-5, 11, -13, 13, -3, -7, 9, 8, 2,
					-- layer=3 filter=60 channel=0
					-3, 29, 27, -16, -6, -19, -35, -18, -28,
					-- layer=3 filter=60 channel=1
					0, -8, 3, -45, 26, 53, -41, -58, 77,
					-- layer=3 filter=60 channel=2
					-58, -39, -75, -5, -55, -23, -41, -30, -6,
					-- layer=3 filter=60 channel=3
					-18, -42, -20, -34, -56, 32, 9, 34, 34,
					-- layer=3 filter=60 channel=4
					-45, -63, -14, -2, -10, -2, 27, 2, 7,
					-- layer=3 filter=60 channel=5
					11, 18, 13, 7, -2, 4, -14, -14, -22,
					-- layer=3 filter=60 channel=6
					-37, -13, -34, -10, -53, -15, 15, 33, 41,
					-- layer=3 filter=60 channel=7
					21, 34, 0, 46, 4, 1, 47, -31, -22,
					-- layer=3 filter=60 channel=8
					10, -13, -27, 28, -13, -6, 40, 6, 11,
					-- layer=3 filter=60 channel=9
					44, 42, 3, -19, -2, -11, -11, -24, 16,
					-- layer=3 filter=60 channel=10
					69, 14, 38, 16, -16, 53, -5, 13, 13,
					-- layer=3 filter=60 channel=11
					3, -13, -34, -30, 8, 13, 5, 23, 2,
					-- layer=3 filter=60 channel=12
					4, 28, -14, -57, -27, -15, -36, 9, 0,
					-- layer=3 filter=60 channel=13
					-37, -67, -49, 11, 14, 24, 31, 77, 26,
					-- layer=3 filter=60 channel=14
					-19, -55, -69, 2, 59, 44, 8, 31, 46,
					-- layer=3 filter=60 channel=15
					-6, 3, -4, 0, 37, 5, -10, -54, -6,
					-- layer=3 filter=60 channel=16
					-7, -74, -58, -34, 0, 32, 13, 35, 23,
					-- layer=3 filter=60 channel=17
					-38, -7, -42, -13, 43, 21, 84, 58, 28,
					-- layer=3 filter=60 channel=18
					16, -20, -17, 16, -26, 18, -2, 8, -8,
					-- layer=3 filter=60 channel=19
					-64, -15, -31, -8, -16, 28, -4, 29, 12,
					-- layer=3 filter=60 channel=20
					-59, -11, -2, -18, 46, -12, -64, -40, -35,
					-- layer=3 filter=60 channel=21
					18, -6, 16, -4, -5, -2, -24, -15, 10,
					-- layer=3 filter=60 channel=22
					6, 14, -4, -1, -3, 13, -1, -10, 9,
					-- layer=3 filter=60 channel=23
					-30, 2, -20, 0, -20, 6, 24, 34, 16,
					-- layer=3 filter=60 channel=24
					-51, -32, -43, 9, -41, -25, 18, 50, 42,
					-- layer=3 filter=60 channel=25
					-26, -26, -56, -34, 3, 4, 49, 11, 12,
					-- layer=3 filter=60 channel=26
					-3, 6, -8, -1, 7, -3, -4, -13, -15,
					-- layer=3 filter=60 channel=27
					-53, -16, -59, -40, -14, 20, 26, 47, 32,
					-- layer=3 filter=60 channel=28
					-14, 7, 1, 10, -9, -8, -4, -6, -11,
					-- layer=3 filter=60 channel=29
					22, -46, 22, -27, -21, 13, -4, -4, -26,
					-- layer=3 filter=60 channel=30
					0, 4, 4, 6, -11, -22, 10, 2, -11,
					-- layer=3 filter=60 channel=31
					-15, -61, -67, 4, 33, 45, 8, -18, 24,
					-- layer=3 filter=60 channel=32
					4, -1, 8, -38, -1, -66, -56, -3, 26,
					-- layer=3 filter=60 channel=33
					0, 30, 38, -36, 30, 9, -15, 15, -12,
					-- layer=3 filter=60 channel=34
					-10, 5, -27, -5, -1, 1, -1, 36, 11,
					-- layer=3 filter=60 channel=35
					-55, -72, -33, 4, 0, 16, 49, 22, 32,
					-- layer=3 filter=60 channel=36
					-15, -22, 18, -36, -15, 35, -7, -36, 35,
					-- layer=3 filter=60 channel=37
					-29, -14, -27, 27, -13, -27, 22, 15, 18,
					-- layer=3 filter=60 channel=38
					-4, -23, -56, 29, 24, 24, 16, 10, 17,
					-- layer=3 filter=60 channel=39
					0, -8, 0, -7, -8, 9, -3, 4, 4,
					-- layer=3 filter=60 channel=40
					-6, 21, 26, -5, 28, 37, -34, -37, -40,
					-- layer=3 filter=60 channel=41
					54, 7, -15, 1, 25, 0, -19, 9, 10,
					-- layer=3 filter=60 channel=42
					-12, -65, -64, -19, -3, 6, 6, 34, 9,
					-- layer=3 filter=60 channel=43
					22, 67, 15, 12, 3, 30, 1, -20, 33,
					-- layer=3 filter=60 channel=44
					-5, 0, 2, -11, 6, -10, -1, 6, 14,
					-- layer=3 filter=60 channel=45
					-33, -19, -19, -57, -19, 36, -28, -75, 3,
					-- layer=3 filter=60 channel=46
					6, 12, 2, -40, 17, -25, -20, 1, -4,
					-- layer=3 filter=60 channel=47
					-32, 29, -16, -31, 17, -5, -14, -11, 19,
					-- layer=3 filter=60 channel=48
					-12, -65, 24, 17, 60, 21, -19, -3, -45,
					-- layer=3 filter=60 channel=49
					5, -23, -12, 37, 4, -21, 6, 3, -6,
					-- layer=3 filter=60 channel=50
					-32, -8, -22, -35, -19, 0, -5, 9, 12,
					-- layer=3 filter=60 channel=51
					75, 29, 63, 12, -1, -9, 25, -5, -11,
					-- layer=3 filter=60 channel=52
					-25, 2, 12, -33, -21, 2, -5, 35, -2,
					-- layer=3 filter=60 channel=53
					13, -19, 0, 27, 52, 20, 12, -17, -19,
					-- layer=3 filter=60 channel=54
					-15, -24, 26, 31, -13, 12, -14, 39, 58,
					-- layer=3 filter=60 channel=55
					40, 7, 52, 33, -27, -12, -28, -39, -31,
					-- layer=3 filter=60 channel=56
					15, 42, 9, -50, -21, -49, -80, -81, -67,
					-- layer=3 filter=60 channel=57
					-59, -7, -20, -18, -10, 3, 4, 8, -35,
					-- layer=3 filter=60 channel=58
					57, 46, 31, 29, 0, -23, 18, -12, -5,
					-- layer=3 filter=60 channel=59
					-12, 8, -3, -24, 48, -30, -7, 2, -16,
					-- layer=3 filter=60 channel=60
					-8, 2, -24, 6, -8, -16, 35, 23, 28,
					-- layer=3 filter=60 channel=61
					16, 55, 52, 6, 9, -36, -6, 20, -33,
					-- layer=3 filter=60 channel=62
					30, 17, 4, 2, 32, 65, -30, -25, 28,
					-- layer=3 filter=60 channel=63
					-16, 26, -15, -29, 19, 2, 0, -3, -7,
					-- layer=3 filter=61 channel=0
					22, 2, 8, 28, 52, 37, 0, 41, 32,
					-- layer=3 filter=61 channel=1
					-22, 2, 0, 69, -9, 6, 32, 34, -34,
					-- layer=3 filter=61 channel=2
					-9, -19, -24, -17, 13, -22, -15, 5, 30,
					-- layer=3 filter=61 channel=3
					-17, 12, -9, 24, 29, 59, -18, -16, 2,
					-- layer=3 filter=61 channel=4
					12, -9, -6, 9, 0, 23, -31, -36, -24,
					-- layer=3 filter=61 channel=5
					-7, 3, -14, 18, 1, -9, -15, -6, -21,
					-- layer=3 filter=61 channel=6
					-45, -18, -9, 16, 31, -14, -37, -18, 18,
					-- layer=3 filter=61 channel=7
					19, -40, -25, -44, -1, -11, -83, 0, -2,
					-- layer=3 filter=61 channel=8
					-4, -26, -9, 8, -2, 35, -12, -26, -3,
					-- layer=3 filter=61 channel=9
					-9, -4, 20, 17, 22, -7, -45, 10, 4,
					-- layer=3 filter=61 channel=10
					-14, 20, 0, 0, -10, 19, -16, -23, 29,
					-- layer=3 filter=61 channel=11
					-21, 16, 16, -20, 43, 3, -48, 28, 33,
					-- layer=3 filter=61 channel=12
					-35, -9, -16, 12, 61, 13, -11, 8, 25,
					-- layer=3 filter=61 channel=13
					-23, 12, -6, 27, 13, -35, -30, -3, -39,
					-- layer=3 filter=61 channel=14
					-18, -20, -33, 40, -10, 56, 0, 14, -6,
					-- layer=3 filter=61 channel=15
					-5, -10, -24, 6, -6, 16, -38, 34, -13,
					-- layer=3 filter=61 channel=16
					30, -26, -7, 69, 60, 71, 18, 78, 34,
					-- layer=3 filter=61 channel=17
					11, 36, 21, 40, 1, 0, -10, -25, -35,
					-- layer=3 filter=61 channel=18
					11, 6, 26, -3, 9, 1, 23, -54, -17,
					-- layer=3 filter=61 channel=19
					-21, -5, -16, 25, -34, 12, -26, -32, -13,
					-- layer=3 filter=61 channel=20
					7, -15, -21, -8, 6, -22, 49, 9, 13,
					-- layer=3 filter=61 channel=21
					-16, 1, 28, -14, 38, -11, -12, 14, -7,
					-- layer=3 filter=61 channel=22
					12, 5, 13, -8, 1, 7, 5, -2, -5,
					-- layer=3 filter=61 channel=23
					18, -4, 45, -17, -3, 19, 51, 12, 42,
					-- layer=3 filter=61 channel=24
					29, 22, 54, 5, 17, 22, 1, -1, -21,
					-- layer=3 filter=61 channel=25
					1, -22, -44, -18, -26, -34, -68, -41, -30,
					-- layer=3 filter=61 channel=26
					0, -6, -9, -6, -3, -12, 3, 15, -8,
					-- layer=3 filter=61 channel=27
					1, 18, 25, 18, 16, -40, -3, -2, 10,
					-- layer=3 filter=61 channel=28
					9, 12, -16, -17, 13, 5, -14, 5, 2,
					-- layer=3 filter=61 channel=29
					-35, -14, -31, 21, 12, -7, 8, -7, -35,
					-- layer=3 filter=61 channel=30
					2, 11, -4, -10, 0, -4, -8, -7, 13,
					-- layer=3 filter=61 channel=31
					-63, -24, -35, -9, -23, -38, -9, -54, -4,
					-- layer=3 filter=61 channel=32
					-7, 13, -23, 43, -15, 37, 78, 26, 57,
					-- layer=3 filter=61 channel=33
					16, 25, -26, -6, 17, 46, 18, -8, 13,
					-- layer=3 filter=61 channel=34
					-9, -5, -10, -13, -14, -12, 14, -18, -46,
					-- layer=3 filter=61 channel=35
					5, -23, 17, -7, -27, -39, -21, -13, -27,
					-- layer=3 filter=61 channel=36
					-7, 20, -3, 21, -21, 0, 17, 6, -30,
					-- layer=3 filter=61 channel=37
					-3, -40, 2, -9, -15, -43, 16, 26, 12,
					-- layer=3 filter=61 channel=38
					-10, -1, 18, 17, -2, -34, 23, 3, 15,
					-- layer=3 filter=61 channel=39
					-2, 14, 8, 8, -3, 6, -1, -17, 10,
					-- layer=3 filter=61 channel=40
					20, -19, 13, 35, -3, 18, 36, 11, 14,
					-- layer=3 filter=61 channel=41
					31, 15, 42, 22, 6, -39, -18, -11, -39,
					-- layer=3 filter=61 channel=42
					-18, 38, -1, 20, -28, -31, 30, 51, 5,
					-- layer=3 filter=61 channel=43
					-3, -12, -10, 9, 38, 18, 21, -20, 16,
					-- layer=3 filter=61 channel=44
					3, 14, -2, 11, 2, -6, -14, -8, -2,
					-- layer=3 filter=61 channel=45
					-25, -10, -7, -1, -22, 8, -45, -5, -65,
					-- layer=3 filter=61 channel=46
					2, 0, -1, 6, -15, -3, 3, 45, -10,
					-- layer=3 filter=61 channel=47
					-9, 31, 24, -9, 25, 20, -10, 27, 15,
					-- layer=3 filter=61 channel=48
					-20, -15, -9, 12, -33, 11, 24, -5, 30,
					-- layer=3 filter=61 channel=49
					19, 38, 7, 10, 20, 6, 34, 11, -77,
					-- layer=3 filter=61 channel=50
					10, 19, -14, 21, -6, -1, -17, 18, 8,
					-- layer=3 filter=61 channel=51
					-24, -31, -24, 38, 22, 38, 31, 5, -7,
					-- layer=3 filter=61 channel=52
					10, 17, 36, 28, 20, 6, -45, -29, -21,
					-- layer=3 filter=61 channel=53
					-56, -47, 2, -30, 20, 2, -56, -4, 59,
					-- layer=3 filter=61 channel=54
					52, -26, -11, 15, -5, 18, -79, -12, -30,
					-- layer=3 filter=61 channel=55
					21, 15, -8, -3, 23, 6, 6, -12, -1,
					-- layer=3 filter=61 channel=56
					7, 9, 0, -2, 20, 23, -12, 16, 45,
					-- layer=3 filter=61 channel=57
					14, 35, 32, -29, 33, 12, 5, 2, 20,
					-- layer=3 filter=61 channel=58
					-5, 7, -41, -19, 26, 2, -12, -42, 49,
					-- layer=3 filter=61 channel=59
					-20, -26, 13, 8, -10, 55, 29, 77, 66,
					-- layer=3 filter=61 channel=60
					8, -38, -22, -11, -22, -4, -10, -25, -30,
					-- layer=3 filter=61 channel=61
					-16, -21, -22, -18, 3, -27, -3, -5, 25,
					-- layer=3 filter=61 channel=62
					-13, -1, 5, 15, 50, 22, -19, -1, -12,
					-- layer=3 filter=61 channel=63
					-8, 10, -2, 28, 8, 9, -2, -2, -7,
					-- layer=3 filter=62 channel=0
					-6, -8, -14, -10, -5, -15, 6, 10, -16,
					-- layer=3 filter=62 channel=1
					-14, 11, 4, 8, -3, -2, 5, 0, -9,
					-- layer=3 filter=62 channel=2
					-18, -13, 4, 1, 10, 2, -17, 5, 0,
					-- layer=3 filter=62 channel=3
					3, 6, -16, -2, 11, 4, -16, -13, -6,
					-- layer=3 filter=62 channel=4
					8, 0, 0, 1, -6, -12, 7, 9, 0,
					-- layer=3 filter=62 channel=5
					-6, -5, -12, -7, 5, -2, 14, -7, 8,
					-- layer=3 filter=62 channel=6
					2, -14, 2, -11, -3, -9, -2, -1, 2,
					-- layer=3 filter=62 channel=7
					0, 8, 0, -16, 10, 7, -11, -5, -2,
					-- layer=3 filter=62 channel=8
					-14, 0, -11, -5, -8, -14, -5, -11, -1,
					-- layer=3 filter=62 channel=9
					-1, -5, 11, -9, 10, -3, -5, -3, -19,
					-- layer=3 filter=62 channel=10
					-15, -19, 4, -17, -13, -16, 3, -1, -5,
					-- layer=3 filter=62 channel=11
					-15, 6, -18, 6, -11, 5, -11, -20, -7,
					-- layer=3 filter=62 channel=12
					-13, -18, -6, 3, 8, -14, -20, -6, -3,
					-- layer=3 filter=62 channel=13
					-15, -10, 4, 0, 0, 0, -15, -13, -8,
					-- layer=3 filter=62 channel=14
					-2, -1, -10, -9, 12, -1, -10, 6, -15,
					-- layer=3 filter=62 channel=15
					8, -10, 1, 5, 5, -6, -1, -16, 6,
					-- layer=3 filter=62 channel=16
					10, 10, 0, 2, -6, -15, -6, 17, 4,
					-- layer=3 filter=62 channel=17
					-4, -7, -15, -18, 12, -14, -6, -13, -2,
					-- layer=3 filter=62 channel=18
					-3, -15, -8, -10, 10, -15, -10, -4, 3,
					-- layer=3 filter=62 channel=19
					-18, -8, 4, 2, 0, -15, -11, 7, 3,
					-- layer=3 filter=62 channel=20
					2, -2, 3, 5, -3, -17, 0, -15, -16,
					-- layer=3 filter=62 channel=21
					-11, -9, -7, -5, 11, 11, 2, 5, -11,
					-- layer=3 filter=62 channel=22
					1, -5, 10, -11, -7, -5, 4, -14, -10,
					-- layer=3 filter=62 channel=23
					11, -9, -10, -8, -7, -6, 6, 5, -12,
					-- layer=3 filter=62 channel=24
					-4, -5, -2, 6, -5, -9, -4, -10, -2,
					-- layer=3 filter=62 channel=25
					-4, -15, 0, -16, 10, 5, -4, -4, -6,
					-- layer=3 filter=62 channel=26
					-7, 14, 12, 13, -2, 4, 2, 9, 8,
					-- layer=3 filter=62 channel=27
					-9, 2, -2, 3, 3, 5, 6, -10, -11,
					-- layer=3 filter=62 channel=28
					1, 2, -5, -15, 1, 9, 10, 11, 2,
					-- layer=3 filter=62 channel=29
					-4, 3, -15, -16, 2, -6, -4, -9, 9,
					-- layer=3 filter=62 channel=30
					-8, 5, -11, -8, -4, -12, -11, 9, 0,
					-- layer=3 filter=62 channel=31
					-5, -11, 4, -2, 8, -2, -6, -11, 4,
					-- layer=3 filter=62 channel=32
					-9, -12, 1, 2, -1, 8, -16, 0, 10,
					-- layer=3 filter=62 channel=33
					0, -12, -13, -12, 6, 2, -12, 11, 4,
					-- layer=3 filter=62 channel=34
					4, -8, -16, -14, -8, 10, 10, -12, 5,
					-- layer=3 filter=62 channel=35
					5, -7, 1, -1, -16, 6, -5, -11, 8,
					-- layer=3 filter=62 channel=36
					-15, -13, -12, -8, 0, -16, -11, 6, 4,
					-- layer=3 filter=62 channel=37
					-7, -7, -14, 8, 8, -11, 9, 9, 3,
					-- layer=3 filter=62 channel=38
					15, 2, -16, -3, -11, -1, -7, 10, -6,
					-- layer=3 filter=62 channel=39
					-3, -6, -4, 11, 0, 3, 9, -1, 9,
					-- layer=3 filter=62 channel=40
					11, 12, 10, 5, 2, -8, 3, 8, -14,
					-- layer=3 filter=62 channel=41
					-16, -10, -20, -16, 7, -8, -11, -1, 11,
					-- layer=3 filter=62 channel=42
					-6, -6, 7, -18, -7, 10, 9, -10, -14,
					-- layer=3 filter=62 channel=43
					-2, 2, -13, -8, -14, -8, 9, -11, 7,
					-- layer=3 filter=62 channel=44
					6, -10, 0, 1, 3, -7, -11, -2, -15,
					-- layer=3 filter=62 channel=45
					9, 6, 0, -16, -2, -7, 4, 4, 4,
					-- layer=3 filter=62 channel=46
					-13, 2, 0, -11, -15, 0, 8, -9, -13,
					-- layer=3 filter=62 channel=47
					-8, -6, 2, -21, -5, 4, 5, 5, 8,
					-- layer=3 filter=62 channel=48
					-11, -10, -16, 11, 5, -9, -22, -14, -10,
					-- layer=3 filter=62 channel=49
					-14, -16, 9, 8, 4, 4, -13, -11, 0,
					-- layer=3 filter=62 channel=50
					-1, 5, -4, -7, 9, -9, -2, 10, -6,
					-- layer=3 filter=62 channel=51
					-4, -9, 2, -15, 9, 8, 2, -10, -5,
					-- layer=3 filter=62 channel=52
					-18, 5, -3, -5, -12, -17, 5, -15, -10,
					-- layer=3 filter=62 channel=53
					4, -3, -18, 2, 6, -12, -12, 7, 8,
					-- layer=3 filter=62 channel=54
					-13, -4, 5, -1, -10, 1, -5, 6, -1,
					-- layer=3 filter=62 channel=55
					-7, -14, -7, -7, 9, 2, 8, 5, 9,
					-- layer=3 filter=62 channel=56
					-4, 6, -14, -13, 0, -4, -12, -5, -11,
					-- layer=3 filter=62 channel=57
					-13, -9, 0, -11, -2, 0, 12, -6, 2,
					-- layer=3 filter=62 channel=58
					9, -12, 0, 3, -8, 10, 1, 13, 0,
					-- layer=3 filter=62 channel=59
					-9, 6, -9, 5, -14, 4, -20, 3, 1,
					-- layer=3 filter=62 channel=60
					-11, -1, 6, -16, 1, -8, 4, -13, 5,
					-- layer=3 filter=62 channel=61
					-5, 0, 4, 8, -15, 9, -13, 0, -5,
					-- layer=3 filter=62 channel=62
					-2, 7, -13, 14, 9, -2, 3, -15, -12,
					-- layer=3 filter=62 channel=63
					-4, 5, 8, -5, 11, 7, -14, 1, -11,
					-- layer=3 filter=63 channel=0
					17, 32, 51, 29, 42, -22, -22, -24, -28,
					-- layer=3 filter=63 channel=1
					-31, -22, -23, -41, 31, -78, -15, 7, -5,
					-- layer=3 filter=63 channel=2
					-11, 29, 3, 50, -33, -11, 37, 12, 43,
					-- layer=3 filter=63 channel=3
					12, -6, -14, -15, -47, -20, 31, 55, 29,
					-- layer=3 filter=63 channel=4
					5, -23, -27, 39, 20, 12, 9, -31, -20,
					-- layer=3 filter=63 channel=5
					15, 9, 13, 22, 13, 12, -3, -12, -1,
					-- layer=3 filter=63 channel=6
					12, 31, -5, -28, -34, -1, 16, 50, 34,
					-- layer=3 filter=63 channel=7
					-81, 3, 6, 3, -29, -3, 49, 1, 16,
					-- layer=3 filter=63 channel=8
					-3, 12, 14, 19, 15, 20, 1, 37, 0,
					-- layer=3 filter=63 channel=9
					16, -13, 31, 4, -36, -3, -15, -8, -18,
					-- layer=3 filter=63 channel=10
					29, -45, 0, -11, -44, 10, 17, 51, 45,
					-- layer=3 filter=63 channel=11
					-25, -37, -25, -25, -27, 0, -75, -99, -87,
					-- layer=3 filter=63 channel=12
					-4, 9, -7, -45, -49, -29, 10, -51, -25,
					-- layer=3 filter=63 channel=13
					-55, -13, -57, -16, -26, -30, 2, -11, 14,
					-- layer=3 filter=63 channel=14
					-13, 1, -62, 9, -4, -26, 11, 34, 9,
					-- layer=3 filter=63 channel=15
					36, 10, 15, -28, 16, 8, -11, -27, -43,
					-- layer=3 filter=63 channel=16
					-21, -2, -61, -39, -25, 41, -11, -29, -21,
					-- layer=3 filter=63 channel=17
					-25, 9, -31, 6, 28, 21, 13, 0, -11,
					-- layer=3 filter=63 channel=18
					25, -18, 24, 19, -31, 32, 8, 15, 44,
					-- layer=3 filter=63 channel=19
					-32, -11, -30, 1, 16, -7, 67, 89, 76,
					-- layer=3 filter=63 channel=20
					12, 62, 16, -11, 32, 0, -14, -25, -36,
					-- layer=3 filter=63 channel=21
					0, -1, 10, 5, 13, 3, -46, -48, -48,
					-- layer=3 filter=63 channel=22
					-7, 14, 11, 6, 1, 0, 5, -15, -7,
					-- layer=3 filter=63 channel=23
					-23, -33, -35, 23, -61, -21, 25, -26, -37,
					-- layer=3 filter=63 channel=24
					-50, -22, -28, -3, -50, -14, 33, 51, 59,
					-- layer=3 filter=63 channel=25
					-34, 28, 20, -3, 28, 9, 13, 7, 25,
					-- layer=3 filter=63 channel=26
					2, -3, -2, -13, -5, -2, 15, -7, -12,
					-- layer=3 filter=63 channel=27
					-29, -4, -42, 9, -5, 0, 29, 31, 0,
					-- layer=3 filter=63 channel=28
					-3, 5, 13, -8, 0, -3, 1, 2, 2,
					-- layer=3 filter=63 channel=29
					11, -47, 42, -1, -53, 6, 17, -6, -28,
					-- layer=3 filter=63 channel=30
					7, -12, 3, -1, -6, 11, 12, 5, 16,
					-- layer=3 filter=63 channel=31
					-38, -26, -50, -88, -47, -10, -20, -55, -56,
					-- layer=3 filter=63 channel=32
					16, 30, -22, -4, 15, -15, -65, -9, 1,
					-- layer=3 filter=63 channel=33
					-16, -23, 16, 37, -37, -64, 8, 25, 2,
					-- layer=3 filter=63 channel=34
					14, -36, -9, 21, 34, -6, 8, 15, 9,
					-- layer=3 filter=63 channel=35
					-40, -18, -17, 1, 28, 23, 31, 41, 20,
					-- layer=3 filter=63 channel=36
					4, -52, -24, -13, 49, -3, -62, -43, -38,
					-- layer=3 filter=63 channel=37
					-28, -24, -51, -36, 2, -10, -43, -16, 10,
					-- layer=3 filter=63 channel=38
					0, -26, -28, -15, 0, 39, 22, 40, 25,
					-- layer=3 filter=63 channel=39
					-3, 16, -9, -6, -9, 0, -2, 6, 0,
					-- layer=3 filter=63 channel=40
					29, 48, 15, 5, 45, 9, -2, -44, -1,
					-- layer=3 filter=63 channel=41
					-11, -18, -23, 30, 29, 9, -13, 26, 40,
					-- layer=3 filter=63 channel=42
					-37, -45, -41, 1, -34, -17, 31, -2, 12,
					-- layer=3 filter=63 channel=43
					-7, -43, 10, 18, -23, -14, 43, 17, 13,
					-- layer=3 filter=63 channel=44
					14, 1, -15, -3, 4, 9, 9, 7, 9,
					-- layer=3 filter=63 channel=45
					-54, -14, 12, -35, 45, -41, 4, 37, 7,
					-- layer=3 filter=63 channel=46
					9, -5, 37, 17, 50, 32, -37, -2, 19,
					-- layer=3 filter=63 channel=47
					14, 13, 20, 31, 0, 3, 10, 39, 25,
					-- layer=3 filter=63 channel=48
					39, 0, -11, -28, 56, 7, -15, 4, -10,
					-- layer=3 filter=63 channel=49
					-21, -3, -30, 24, -1, 19, -93, -72, -53,
					-- layer=3 filter=63 channel=50
					15, -13, -13, 10, -40, 2, 23, 7, 62,
					-- layer=3 filter=63 channel=51
					31, -42, 0, 30, 57, 8, -57, 22, -6,
					-- layer=3 filter=63 channel=52
					-9, -52, -66, 8, -3, -25, 6, -8, -52,
					-- layer=3 filter=63 channel=53
					-25, -7, 87, 32, 6, 35, -15, -58, -26,
					-- layer=3 filter=63 channel=54
					-12, -20, 22, 16, 41, 40, 0, 62, 38,
					-- layer=3 filter=63 channel=55
					7, -18, 1, -20, 21, 0, 10, 26, -8,
					-- layer=3 filter=63 channel=56
					-10, -1, 27, 13, 19, 27, 12, 5, 3,
					-- layer=3 filter=63 channel=57
					-31, -85, -4, 13, -84, 11, -14, -17, 11,
					-- layer=3 filter=63 channel=58
					22, 16, 8, 58, -36, -6, 6, -15, 28,
					-- layer=3 filter=63 channel=59
					-3, -14, 39, -44, 63, 22, -39, -10, 17,
					-- layer=3 filter=63 channel=60
					-17, -17, -21, 10, -8, 13, 40, -9, 38,
					-- layer=3 filter=63 channel=61
					0, -43, 1, 16, 9, 4, 14, 36, 18,
					-- layer=3 filter=63 channel=62
					21, 3, -14, -5, 30, 3, -28, -1, -46,
					-- layer=3 filter=63 channel=63
					0, 0, -11, -3, 11, -12, 11, -11, 18,
					-- layer=3 filter=64 channel=0
					-8, -4, -14, 6, 4, 5, -3, 10, 3,
					-- layer=3 filter=64 channel=1
					7, -9, 2, -15, -15, -11, 4, -20, -7,
					-- layer=3 filter=64 channel=2
					-10, 6, -7, -4, -17, 13, -12, -23, -10,
					-- layer=3 filter=64 channel=3
					-4, 0, -1, -23, 1, -26, -19, -11, -17,
					-- layer=3 filter=64 channel=4
					9, 0, -5, -18, 2, 3, -16, -4, -22,
					-- layer=3 filter=64 channel=5
					0, 12, -11, 6, -8, 9, -9, -11, 10,
					-- layer=3 filter=64 channel=6
					-13, -5, -12, -25, -18, -13, 0, -9, 0,
					-- layer=3 filter=64 channel=7
					-7, 10, -5, -4, -14, 16, -17, -9, -1,
					-- layer=3 filter=64 channel=8
					8, -2, -16, -13, -18, -22, -15, -6, -4,
					-- layer=3 filter=64 channel=9
					-14, -24, -12, -11, -19, -10, -12, -1, -9,
					-- layer=3 filter=64 channel=10
					-14, -21, -28, 5, -19, -24, 0, 6, 9,
					-- layer=3 filter=64 channel=11
					20, -8, 1, -2, 9, 3, -11, 1, 13,
					-- layer=3 filter=64 channel=12
					10, 20, -9, -15, -17, -3, -8, -2, 6,
					-- layer=3 filter=64 channel=13
					-5, 11, -11, 3, -4, -16, 3, 6, -3,
					-- layer=3 filter=64 channel=14
					1, 9, -17, -19, -13, 4, -20, -12, 2,
					-- layer=3 filter=64 channel=15
					-4, -15, -14, -12, -14, -6, -22, -13, -22,
					-- layer=3 filter=64 channel=16
					-1, 3, 10, 3, 3, -7, 3, 20, 12,
					-- layer=3 filter=64 channel=17
					1, 12, 2, -18, -15, -8, -17, -26, 3,
					-- layer=3 filter=64 channel=18
					-26, -25, 14, -18, -13, -6, -23, 4, -16,
					-- layer=3 filter=64 channel=19
					-12, 2, -16, -14, -4, -9, -10, -5, -9,
					-- layer=3 filter=64 channel=20
					0, -3, -9, 3, 0, -18, 18, -9, -4,
					-- layer=3 filter=64 channel=21
					-2, 10, 0, 17, 5, -22, -8, -5, -18,
					-- layer=3 filter=64 channel=22
					13, -1, 0, 6, -3, 10, -14, 6, 4,
					-- layer=3 filter=64 channel=23
					-30, -28, -10, -6, 8, 0, 2, -6, 6,
					-- layer=3 filter=64 channel=24
					5, 0, 11, 0, 0, 0, -16, -10, 4,
					-- layer=3 filter=64 channel=25
					15, -2, 7, -19, 8, 7, -16, -7, 1,
					-- layer=3 filter=64 channel=26
					0, -4, 2, -3, 8, -12, -14, 15, 1,
					-- layer=3 filter=64 channel=27
					15, 5, 10, 1, -6, 4, -17, -16, -1,
					-- layer=3 filter=64 channel=28
					-7, -7, 10, -2, 6, 8, -14, -10, 4,
					-- layer=3 filter=64 channel=29
					1, -18, -2, -5, 1, 0, -16, 9, 18,
					-- layer=3 filter=64 channel=30
					-13, -6, 12, 11, -10, -9, 8, 8, 9,
					-- layer=3 filter=64 channel=31
					12, 11, -3, -10, 3, 9, 3, 11, 2,
					-- layer=3 filter=64 channel=32
					0, -11, 3, 10, -2, 0, -18, 0, -14,
					-- layer=3 filter=64 channel=33
					-19, 15, 4, 0, -1, 9, -14, -23, 3,
					-- layer=3 filter=64 channel=34
					-14, -9, 0, 2, -27, -13, -16, -21, -13,
					-- layer=3 filter=64 channel=35
					-18, -5, -4, 1, -18, -26, -16, -32, 0,
					-- layer=3 filter=64 channel=36
					5, 4, -11, 0, -1, -9, 0, -9, 7,
					-- layer=3 filter=64 channel=37
					4, -15, -11, -1, -13, -3, -20, 5, 7,
					-- layer=3 filter=64 channel=38
					-1, -2, -14, -30, -6, -6, -6, 0, 0,
					-- layer=3 filter=64 channel=39
					10, -4, -8, -4, -14, -4, 9, -13, 6,
					-- layer=3 filter=64 channel=40
					-15, -1, -6, -10, 1, -7, 10, 10, -3,
					-- layer=3 filter=64 channel=41
					-4, 0, -8, 1, -1, -17, 0, 12, -3,
					-- layer=3 filter=64 channel=42
					-3, -2, 0, 12, 0, -11, 5, -20, 1,
					-- layer=3 filter=64 channel=43
					-21, -24, -22, -25, -11, -23, 17, 11, 6,
					-- layer=3 filter=64 channel=44
					0, 9, 7, 15, 12, 0, 12, 5, -4,
					-- layer=3 filter=64 channel=45
					9, -8, -11, 4, 7, -6, 4, -16, -1,
					-- layer=3 filter=64 channel=46
					-5, -19, 2, -12, -13, 11, -9, -10, 0,
					-- layer=3 filter=64 channel=47
					6, 2, -16, 10, 15, 0, -14, -11, 0,
					-- layer=3 filter=64 channel=48
					0, -18, 1, -20, -4, -12, -22, -11, -6,
					-- layer=3 filter=64 channel=49
					15, -1, -11, 16, -20, -7, -8, 0, -4,
					-- layer=3 filter=64 channel=50
					9, -2, 0, -2, -18, -14, -3, 9, -5,
					-- layer=3 filter=64 channel=51
					2, 4, -6, 15, 1, 0, -1, -3, -1,
					-- layer=3 filter=64 channel=52
					-3, 0, 6, 0, -4, 6, 2, -16, -3,
					-- layer=3 filter=64 channel=53
					-7, -6, -10, 10, 12, -9, -2, -15, 8,
					-- layer=3 filter=64 channel=54
					-6, -15, -24, 19, 0, 1, -13, 0, 0,
					-- layer=3 filter=64 channel=55
					1, 8, 14, 15, 6, 8, -7, 0, -5,
					-- layer=3 filter=64 channel=56
					-4, -8, -15, -14, -24, -5, -10, -11, -19,
					-- layer=3 filter=64 channel=57
					-16, -15, -3, -19, -1, -16, -17, 4, -12,
					-- layer=3 filter=64 channel=58
					12, 13, 11, 0, -7, -13, 13, 17, 16,
					-- layer=3 filter=64 channel=59
					-1, -13, 2, 1, -15, 1, -13, 12, -11,
					-- layer=3 filter=64 channel=60
					-16, -13, 4, -11, -14, -5, -15, -24, -17,
					-- layer=3 filter=64 channel=61
					-12, -21, 3, -11, -9, 1, -6, -7, 7,
					-- layer=3 filter=64 channel=62
					-23, -8, -19, -1, 5, -5, 4, -5, 0,
					-- layer=3 filter=64 channel=63
					5, 1, -10, -9, 5, -1, 10, -6, -11,
					-- layer=3 filter=65 channel=0
					4, 19, -22, -23, -9, 4, -30, -20, -10,
					-- layer=3 filter=65 channel=1
					25, -8, 32, -7, 24, 40, 13, -41, 53,
					-- layer=3 filter=65 channel=2
					-2, -5, -12, -14, -80, 0, -33, -23, -16,
					-- layer=3 filter=65 channel=3
					-8, -27, 16, 18, -68, -6, 0, 46, 5,
					-- layer=3 filter=65 channel=4
					-19, -14, -12, -13, -14, -30, 40, 23, -1,
					-- layer=3 filter=65 channel=5
					8, -5, 15, 7, 4, 6, 2, 6, 12,
					-- layer=3 filter=65 channel=6
					23, 11, -1, -23, -47, 16, 14, 9, -6,
					-- layer=3 filter=65 channel=7
					-14, 19, 7, 13, -24, -34, 63, -33, 10,
					-- layer=3 filter=65 channel=8
					-9, -18, 28, 63, -8, 6, 43, 36, 32,
					-- layer=3 filter=65 channel=9
					14, 9, 17, 29, 9, 20, 91, -14, 34,
					-- layer=3 filter=65 channel=10
					9, -12, 23, 15, -17, 7, 37, 12, 44,
					-- layer=3 filter=65 channel=11
					-35, 37, 32, -30, -3, 7, -22, 45, 1,
					-- layer=3 filter=65 channel=12
					1, -2, -15, 17, -21, 10, 13, -9, 5,
					-- layer=3 filter=65 channel=13
					-3, -22, 4, 35, -12, 3, 38, 31, 26,
					-- layer=3 filter=65 channel=14
					28, -14, 12, 30, 40, 38, -11, 15, 63,
					-- layer=3 filter=65 channel=15
					-17, -4, 19, -36, -18, 10, -9, -6, 26,
					-- layer=3 filter=65 channel=16
					-26, -36, -19, -13, -39, -16, -51, 18, 7,
					-- layer=3 filter=65 channel=17
					-1, 0, -13, 5, 12, -11, 58, 56, 16,
					-- layer=3 filter=65 channel=18
					37, 17, 1, 19, -4, -4, -28, -15, 16,
					-- layer=3 filter=65 channel=19
					-55, 2, -33, 23, -45, 8, 4, -30, -5,
					-- layer=3 filter=65 channel=20
					27, -18, 14, 13, 18, 24, -51, -35, 66,
					-- layer=3 filter=65 channel=21
					-33, 0, 16, -30, -3, 27, -4, -11, -2,
					-- layer=3 filter=65 channel=22
					-1, 13, -13, -4, 6, 13, -7, -5, -2,
					-- layer=3 filter=65 channel=23
					17, 39, 22, -2, -13, -23, -2, 26, -12,
					-- layer=3 filter=65 channel=24
					-39, -34, -21, 26, -29, 8, 7, 47, -2,
					-- layer=3 filter=65 channel=25
					-4, -30, -6, -8, -13, 12, 4, -14, -21,
					-- layer=3 filter=65 channel=26
					5, 10, -8, -1, 10, -14, -7, -10, 4,
					-- layer=3 filter=65 channel=27
					2, 12, 3, -5, -12, 10, 12, 46, -4,
					-- layer=3 filter=65 channel=28
					-12, 7, -11, -6, 4, -2, 0, -12, 8,
					-- layer=3 filter=65 channel=29
					29, -7, 6, -2, 10, 7, 16, 12, 7,
					-- layer=3 filter=65 channel=30
					5, 1, 12, -15, -6, 0, -5, -12, -12,
					-- layer=3 filter=65 channel=31
					-14, 15, -9, -7, -9, -29, -36, -8, 9,
					-- layer=3 filter=65 channel=32
					13, 4, -5, 0, 7, -10, -59, 1, 19,
					-- layer=3 filter=65 channel=33
					10, 27, 43, -29, 23, 12, -20, 46, 27,
					-- layer=3 filter=65 channel=34
					-4, 12, -20, 7, 5, -13, -3, 38, 42,
					-- layer=3 filter=65 channel=35
					5, -32, -4, 9, -5, -28, 22, -5, -16,
					-- layer=3 filter=65 channel=36
					9, -12, 30, -2, -2, 7, -22, -5, 42,
					-- layer=3 filter=65 channel=37
					7, -18, -8, 29, -57, -2, 4, 11, 35,
					-- layer=3 filter=65 channel=38
					-31, -45, -64, 7, 10, 20, -28, -47, -16,
					-- layer=3 filter=65 channel=39
					9, -13, -5, -4, -10, 0, -9, -6, 0,
					-- layer=3 filter=65 channel=40
					10, 13, -1, 2, 47, 7, -73, -57, -15,
					-- layer=3 filter=65 channel=41
					11, -15, -7, 34, 23, 5, -41, -24, -4,
					-- layer=3 filter=65 channel=42
					-1, -27, -26, 7, -45, -2, 8, 38, -13,
					-- layer=3 filter=65 channel=43
					-29, -4, -17, 34, -34, 38, -24, -42, 7,
					-- layer=3 filter=65 channel=44
					-13, 1, 4, -7, 12, -5, -10, 0, 3,
					-- layer=3 filter=65 channel=45
					9, 6, 27, 30, -35, 20, 11, -65, 11,
					-- layer=3 filter=65 channel=46
					-15, 28, -12, -21, 17, -7, -38, -49, -48,
					-- layer=3 filter=65 channel=47
					-44, -2, 5, 7, 45, 16, 3, 23, 18,
					-- layer=3 filter=65 channel=48
					12, -1, -5, 9, 56, 49, -55, -22, -69,
					-- layer=3 filter=65 channel=49
					-10, 21, -33, 21, -9, 21, -33, -5, 2,
					-- layer=3 filter=65 channel=50
					-12, -10, -8, 2, -30, 18, -4, 15, -14,
					-- layer=3 filter=65 channel=51
					31, -8, 4, 62, 22, 17, 29, 25, 44,
					-- layer=3 filter=65 channel=52
					16, -9, -15, -7, 8, -23, 19, 38, 28,
					-- layer=3 filter=65 channel=53
					-21, 19, 20, -3, 3, 3, 29, 3, -96,
					-- layer=3 filter=65 channel=54
					0, -35, -2, 28, 0, 4, 25, 28, 26,
					-- layer=3 filter=65 channel=55
					15, 31, 54, -3, -3, 15, -44, -10, 38,
					-- layer=3 filter=65 channel=56
					-2, 30, 16, 16, 2, 0, 5, -51, 13,
					-- layer=3 filter=65 channel=57
					-9, 16, -28, -14, 49, 40, -18, 60, -30,
					-- layer=3 filter=65 channel=58
					-11, -11, -12, 71, 8, 0, 27, -45, -57,
					-- layer=3 filter=65 channel=59
					-14, 7, 10, -36, -20, -6, -35, -19, -96,
					-- layer=3 filter=65 channel=60
					6, -6, -12, 22, 6, 1, 1, 20, 4,
					-- layer=3 filter=65 channel=61
					-20, 19, -2, 0, 22, 15, 4, 0, -36,
					-- layer=3 filter=65 channel=62
					-8, 16, 31, 9, 12, 57, 44, -29, 74,
					-- layer=3 filter=65 channel=63
					4, -5, -7, -27, -19, -2, 5, 0, 10,
					-- layer=3 filter=66 channel=0
					18, 21, 1, 31, 15, -24, -6, -16, -14,
					-- layer=3 filter=66 channel=1
					0, -1, 23, -8, 31, -22, 12, 0, 22,
					-- layer=3 filter=66 channel=2
					6, 40, -36, -35, -42, -2, -17, -6, -3,
					-- layer=3 filter=66 channel=3
					-8, 19, 7, -33, -20, -19, -4, 50, -22,
					-- layer=3 filter=66 channel=4
					20, 5, 42, 12, 16, 3, 16, -5, -30,
					-- layer=3 filter=66 channel=5
					-5, -13, -13, -10, -9, 16, 4, -1, -9,
					-- layer=3 filter=66 channel=6
					-35, 7, -37, -37, -28, -32, -13, 44, -34,
					-- layer=3 filter=66 channel=7
					-3, -26, 19, -21, -5, 28, 37, 26, -1,
					-- layer=3 filter=66 channel=8
					0, 19, 24, 1, -28, 5, -27, 36, -31,
					-- layer=3 filter=66 channel=9
					7, -38, 0, 27, 0, 15, 7, 16, 6,
					-- layer=3 filter=66 channel=10
					27, 2, 52, 1, -41, -9, 6, 37, 34,
					-- layer=3 filter=66 channel=11
					-10, 24, -56, -18, -44, -45, 1, -40, -14,
					-- layer=3 filter=66 channel=12
					-14, -15, -26, 9, 0, 11, -9, 1, -10,
					-- layer=3 filter=66 channel=13
					-33, 30, -7, 0, -15, -22, 30, 31, 29,
					-- layer=3 filter=66 channel=14
					37, 33, -28, -33, -1, 3, -27, 42, -2,
					-- layer=3 filter=66 channel=15
					6, -6, 0, 10, 50, 42, 9, -1, 27,
					-- layer=3 filter=66 channel=16
					31, -29, -24, 92, 16, 55, 16, -4, 45,
					-- layer=3 filter=66 channel=17
					-24, 13, 5, -12, 11, -12, 40, 9, 27,
					-- layer=3 filter=66 channel=18
					-33, 13, -11, -13, 9, -4, -25, -12, 11,
					-- layer=3 filter=66 channel=19
					-23, 17, 0, -64, -19, -54, 21, 45, -17,
					-- layer=3 filter=66 channel=20
					3, 13, -14, -1, -4, 14, -7, 32, -2,
					-- layer=3 filter=66 channel=21
					-24, 18, 29, 13, -4, -27, 0, -22, -11,
					-- layer=3 filter=66 channel=22
					6, 3, -6, -5, -14, 2, 7, 9, 2,
					-- layer=3 filter=66 channel=23
					-78, -26, -25, 1, -55, -15, 1, 10, -11,
					-- layer=3 filter=66 channel=24
					24, 32, 27, -24, -12, -43, 38, 17, 43,
					-- layer=3 filter=66 channel=25
					1, -43, -12, 31, 5, 24, 24, -24, -15,
					-- layer=3 filter=66 channel=26
					0, 6, 14, 3, -11, 2, -1, -4, -1,
					-- layer=3 filter=66 channel=27
					-4, 9, 25, -13, -23, -27, 5, -14, -29,
					-- layer=3 filter=66 channel=28
					10, 13, 1, -7, 0, -9, 9, -8, 5,
					-- layer=3 filter=66 channel=29
					29, 36, 17, 40, 62, 9, -26, 8, -3,
					-- layer=3 filter=66 channel=30
					11, 0, 0, -9, -11, 6, 1, -18, 0,
					-- layer=3 filter=66 channel=31
					9, 11, -29, 29, 9, 26, 16, 32, -4,
					-- layer=3 filter=66 channel=32
					-15, -25, -25, 14, -12, -6, 0, 17, 9,
					-- layer=3 filter=66 channel=33
					-13, 13, -28, 9, -8, -3, 9, 0, 19,
					-- layer=3 filter=66 channel=34
					-12, -23, -4, 22, 0, -17, -21, -15, -17,
					-- layer=3 filter=66 channel=35
					-35, 24, 29, -28, -22, -17, 14, -2, 4,
					-- layer=3 filter=66 channel=36
					48, 18, 36, 6, -30, 22, -33, -15, -1,
					-- layer=3 filter=66 channel=37
					22, 10, -23, -3, -60, -9, -17, 7, 18,
					-- layer=3 filter=66 channel=38
					24, -41, -15, -11, 22, 19, -3, 22, 39,
					-- layer=3 filter=66 channel=39
					10, 9, 8, -3, -2, -13, -11, 8, 2,
					-- layer=3 filter=66 channel=40
					-8, 44, 2, 21, 15, -12, 11, 1, -9,
					-- layer=3 filter=66 channel=41
					-16, 0, 2, -8, -9, -10, -14, 51, 31,
					-- layer=3 filter=66 channel=42
					-18, 10, 14, -30, -61, -23, 21, 31, 10,
					-- layer=3 filter=66 channel=43
					2, -15, 2, -23, -11, -26, 43, 29, 6,
					-- layer=3 filter=66 channel=44
					9, 3, -10, 6, 13, 0, -6, -7, -13,
					-- layer=3 filter=66 channel=45
					-28, 15, 29, -27, 14, -18, -6, 13, -35,
					-- layer=3 filter=66 channel=46
					-17, -9, 6, 68, 12, 48, 31, 32, -9,
					-- layer=3 filter=66 channel=47
					-33, 1, -22, 11, 36, 15, 21, 35, 19,
					-- layer=3 filter=66 channel=48
					22, 14, 41, -7, 34, 40, -19, 0, 1,
					-- layer=3 filter=66 channel=49
					40, 15, -17, -4, -4, -5, -41, -34, 33,
					-- layer=3 filter=66 channel=50
					-7, 15, -27, 7, -50, -35, 2, -22, 3,
					-- layer=3 filter=66 channel=51
					43, -25, -3, 73, 52, 15, -10, 9, -4,
					-- layer=3 filter=66 channel=52
					31, 0, 15, 0, -34, -18, 6, -17, 17,
					-- layer=3 filter=66 channel=53
					-8, 0, 61, 39, -46, 9, 27, -18, -25,
					-- layer=3 filter=66 channel=54
					2, -50, -5, 0, 0, 22, 47, 36, 3,
					-- layer=3 filter=66 channel=55
					17, 6, 13, -4, 10, -11, 3, 16, -10,
					-- layer=3 filter=66 channel=56
					25, 38, 60, 24, 53, 30, 4, -13, 6,
					-- layer=3 filter=66 channel=57
					-27, 2, -38, -27, -88, -15, -35, -21, 9,
					-- layer=3 filter=66 channel=58
					55, 49, 15, 12, -2, -3, 24, 6, -14,
					-- layer=3 filter=66 channel=59
					10, 2, 3, -11, -15, 0, -9, 27, -13,
					-- layer=3 filter=66 channel=60
					3, 5, -9, -2, -23, -32, -6, -29, -3,
					-- layer=3 filter=66 channel=61
					-4, -37, -15, 13, 4, 28, 34, -5, -24,
					-- layer=3 filter=66 channel=62
					-19, -19, 26, -8, 19, 32, 19, 30, 29,
					-- layer=3 filter=66 channel=63
					16, -4, 20, -9, -2, -9, 8, -3, 8,
					-- layer=3 filter=67 channel=0
					19, 64, 2, 9, 25, -14, -2, -17, -20,
					-- layer=3 filter=67 channel=1
					24, -20, -23, -21, 32, -37, -50, -30, -10,
					-- layer=3 filter=67 channel=2
					26, 23, 3, -13, -58, 21, -27, -15, -1,
					-- layer=3 filter=67 channel=3
					-30, -17, -12, -22, -77, -48, 1, 43, -18,
					-- layer=3 filter=67 channel=4
					11, -6, -3, 12, -16, 8, 35, 28, 24,
					-- layer=3 filter=67 channel=5
					8, -8, -2, -9, -16, -14, -23, -15, 15,
					-- layer=3 filter=67 channel=6
					-31, -2, -17, -28, -72, 2, 1, 49, -15,
					-- layer=3 filter=67 channel=7
					-25, -3, 26, 11, 6, 11, 18, -24, -21,
					-- layer=3 filter=67 channel=8
					-12, 37, 16, 38, -21, -11, 36, 17, -31,
					-- layer=3 filter=67 channel=9
					29, -38, 4, -18, -34, -57, 2, -36, -57,
					-- layer=3 filter=67 channel=10
					38, 4, 23, -4, -4, -34, -17, 52, 7,
					-- layer=3 filter=67 channel=11
					20, 22, -35, 22, 0, -3, 29, 3, -50,
					-- layer=3 filter=67 channel=12
					6, -21, -1, 11, -86, -42, 4, -44, -53,
					-- layer=3 filter=67 channel=13
					-48, -15, -32, 34, -30, 21, 41, 29, 36,
					-- layer=3 filter=67 channel=14
					0, -18, 9, -25, -1, 13, 13, 0, 43,
					-- layer=3 filter=67 channel=15
					29, 0, 24, 15, 61, 29, -3, 15, 57,
					-- layer=3 filter=67 channel=16
					31, 13, -1, -8, -44, 12, 20, -4, 17,
					-- layer=3 filter=67 channel=17
					-21, -12, -17, 15, 26, 19, 42, 48, 13,
					-- layer=3 filter=67 channel=18
					22, 26, 7, 8, 28, 40, -5, -6, 23,
					-- layer=3 filter=67 channel=19
					-30, 26, -21, 2, -18, 20, 37, 38, 2,
					-- layer=3 filter=67 channel=20
					6, 5, 26, 16, -29, -19, -41, -22, 3,
					-- layer=3 filter=67 channel=21
					1, 46, 10, 19, 12, -37, 6, -23, -35,
					-- layer=3 filter=67 channel=22
					0, -12, -6, -12, -11, 6, 8, -8, -10,
					-- layer=3 filter=67 channel=23
					-4, 2, 3, 0, -50, -9, 27, -53, -25,
					-- layer=3 filter=67 channel=24
					-14, -1, -25, 24, -30, 0, 28, 17, 15,
					-- layer=3 filter=67 channel=25
					-24, -52, -23, -16, -1, 8, 31, -17, -11,
					-- layer=3 filter=67 channel=26
					5, -5, -7, 1, 0, -14, 10, -5, 3,
					-- layer=3 filter=67 channel=27
					-50, -55, -40, 11, -27, -9, 11, -13, 0,
					-- layer=3 filter=67 channel=28
					-2, -11, 1, -6, 14, -3, 1, -3, -5,
					-- layer=3 filter=67 channel=29
					-2, -3, -9, 22, 26, 24, -2, -4, -15,
					-- layer=3 filter=67 channel=30
					5, -13, -4, -12, -4, -4, -6, -11, -7,
					-- layer=3 filter=67 channel=31
					4, 7, -27, 16, 14, 28, 32, 22, 8,
					-- layer=3 filter=67 channel=32
					-25, -20, -23, -71, -45, -44, -83, -45, -67,
					-- layer=3 filter=67 channel=33
					15, -5, 32, -19, -5, -20, -19, -18, -29,
					-- layer=3 filter=67 channel=34
					-24, 19, -8, -9, 14, 0, -28, 11, 20,
					-- layer=3 filter=67 channel=35
					-43, -17, -15, 20, 18, 7, 21, 15, 4,
					-- layer=3 filter=67 channel=36
					9, -11, 23, -25, -35, 14, -34, -26, 20,
					-- layer=3 filter=67 channel=37
					19, -10, -30, 22, -44, 3, -32, 14, 5,
					-- layer=3 filter=67 channel=38
					17, -8, -23, -4, 63, 18, -20, 25, 8,
					-- layer=3 filter=67 channel=39
					-12, 5, 12, -12, 6, -16, -5, 2, 2,
					-- layer=3 filter=67 channel=40
					26, 42, 30, 15, 26, 19, 1, -45, 9,
					-- layer=3 filter=67 channel=41
					-17, -69, -21, -13, -1, 15, 33, 31, 61,
					-- layer=3 filter=67 channel=42
					-41, -27, -8, 7, -58, -8, 25, 14, 2,
					-- layer=3 filter=67 channel=43
					-5, -25, -13, 5, -34, 7, 38, 5, 11,
					-- layer=3 filter=67 channel=44
					12, -7, 3, -9, 6, 5, -2, 3, -6,
					-- layer=3 filter=67 channel=45
					-9, 22, 4, 1, 13, -48, 23, 12, -16,
					-- layer=3 filter=67 channel=46
					-5, 9, 10, -24, 25, 3, -39, -4, -37,
					-- layer=3 filter=67 channel=47
					10, -51, -24, -17, -24, -8, 6, -18, -23,
					-- layer=3 filter=67 channel=48
					1, -9, 32, -36, 41, 24, 42, 38, 30,
					-- layer=3 filter=67 channel=49
					1, 6, -13, 32, 19, 9, -36, 9, 22,
					-- layer=3 filter=67 channel=50
					-31, -9, 22, 17, -72, 18, 10, 7, 7,
					-- layer=3 filter=67 channel=51
					38, 31, 36, 18, 22, -2, -50, 30, 5,
					-- layer=3 filter=67 channel=52
					10, 13, -2, -5, -20, -1, 29, 0, 33,
					-- layer=3 filter=67 channel=53
					8, 6, 37, 55, -18, 10, 43, 6, -52,
					-- layer=3 filter=67 channel=54
					-17, 0, 5, 18, -14, 2, 27, 28, -1,
					-- layer=3 filter=67 channel=55
					1, -6, 31, -39, 23, 33, -43, 16, 0,
					-- layer=3 filter=67 channel=56
					8, 25, 33, -2, 12, -25, 8, -13, -22,
					-- layer=3 filter=67 channel=57
					25, -34, -8, 16, -67, -19, 17, 7, -21,
					-- layer=3 filter=67 channel=58
					27, 29, 23, 37, 4, 10, 20, -14, 5,
					-- layer=3 filter=67 channel=59
					-9, 21, -9, 17, 13, -48, -49, -17, -52,
					-- layer=3 filter=67 channel=60
					-16, -17, -1, 2, -15, 18, 5, -8, 18,
					-- layer=3 filter=67 channel=61
					-17, -26, -2, -34, 4, -44, 8, -3, -39,
					-- layer=3 filter=67 channel=62
					3, 15, 42, -8, 48, 3, 25, 1, -37,
					-- layer=3 filter=67 channel=63
					1, -8, -4, -21, -3, -11, 12, 5, 9,
					-- layer=3 filter=68 channel=0
					-3, 3, 15, -17, 17, -7, -30, -43, -36,
					-- layer=3 filter=68 channel=1
					29, -33, 3, -9, 50, -23, 21, -10, 3,
					-- layer=3 filter=68 channel=2
					-2, -2, -37, -35, -76, -16, -34, 0, -8,
					-- layer=3 filter=68 channel=3
					-6, -28, -34, -17, -60, -28, -6, 63, 1,
					-- layer=3 filter=68 channel=4
					-15, 7, 4, 25, -16, 7, 9, 4, -2,
					-- layer=3 filter=68 channel=5
					30, 24, 12, 15, 14, 19, -5, -6, 5,
					-- layer=3 filter=68 channel=6
					-6, -15, -25, -3, -42, -14, 6, 73, 35,
					-- layer=3 filter=68 channel=7
					25, 11, 12, 6, -9, 0, 10, -7, 21,
					-- layer=3 filter=68 channel=8
					0, 23, 0, 25, 24, 31, -48, 35, 0,
					-- layer=3 filter=68 channel=9
					0, -31, -8, -35, 13, -5, -30, 21, 10,
					-- layer=3 filter=68 channel=10
					3, 13, 37, 1, -6, 24, 5, 11, 6,
					-- layer=3 filter=68 channel=11
					-49, -56, -19, -31, -54, 7, -23, -46, -24,
					-- layer=3 filter=68 channel=12
					-19, -41, -40, -21, -31, -16, 20, 29, 22,
					-- layer=3 filter=68 channel=13
					24, 0, 9, -34, -17, 5, -25, 17, 45,
					-- layer=3 filter=68 channel=14
					3, 13, -22, -8, -11, -20, 6, 47, 17,
					-- layer=3 filter=68 channel=15
					2, -12, 29, 24, 14, 43, 7, -13, 4,
					-- layer=3 filter=68 channel=16
					21, -17, 19, -2, -2, 46, -15, 0, -32,
					-- layer=3 filter=68 channel=17
					-15, 10, 21, -27, 22, -2, 21, 18, 15,
					-- layer=3 filter=68 channel=18
					2, -5, -3, 26, -16, 3, 23, 2, 31,
					-- layer=3 filter=68 channel=19
					-21, 2, -48, -22, -5, -39, 16, 68, 9,
					-- layer=3 filter=68 channel=20
					45, 53, 7, -6, -9, -7, -34, -15, -1,
					-- layer=3 filter=68 channel=21
					-76, -47, 35, -32, -3, -12, -15, -47, -41,
					-- layer=3 filter=68 channel=22
					-14, -4, 11, 3, 3, 0, 12, -7, 11,
					-- layer=3 filter=68 channel=23
					-88, -48, -36, -12, -34, 17, 15, -18, 25,
					-- layer=3 filter=68 channel=24
					16, 11, -2, 0, -18, -30, 33, 39, 37,
					-- layer=3 filter=68 channel=25
					-1, 27, 12, -6, 29, 22, 44, 18, 27,
					-- layer=3 filter=68 channel=26
					5, 2, 13, 0, 6, -9, 11, -6, 0,
					-- layer=3 filter=68 channel=27
					11, 12, -12, -42, 6, -24, -12, 21, 0,
					-- layer=3 filter=68 channel=28
					5, -3, 8, -8, 0, 13, 16, -5, 2,
					-- layer=3 filter=68 channel=29
					27, -17, 38, 17, -52, -14, -11, -40, -23,
					-- layer=3 filter=68 channel=30
					12, -7, 2, -13, 0, -1, 10, 0, -9,
					-- layer=3 filter=68 channel=31
					-5, -2, -59, -12, -12, 17, -63, 20, 54,
					-- layer=3 filter=68 channel=32
					20, 20, -40, -22, 5, 20, -34, -1, 13,
					-- layer=3 filter=68 channel=33
					-47, -4, -22, 1, -38, -49, -17, -43, 6,
					-- layer=3 filter=68 channel=34
					-4, -16, 0, 26, 37, -1, 52, 36, 36,
					-- layer=3 filter=68 channel=35
					-10, -6, 3, 13, 10, 16, 28, -3, 19,
					-- layer=3 filter=68 channel=36
					22, 4, 9, -8, -1, -22, 0, 3, 32,
					-- layer=3 filter=68 channel=37
					-20, -3, -45, -6, 4, -1, -22, 0, 46,
					-- layer=3 filter=68 channel=38
					14, -22, -3, -41, 26, -5, 10, 20, -8,
					-- layer=3 filter=68 channel=39
					8, 11, -5, -3, -7, -13, -1, 0, -7,
					-- layer=3 filter=68 channel=40
					15, 22, -4, -3, -5, -17, 20, -52, -9,
					-- layer=3 filter=68 channel=41
					4, 2, 12, 20, 9, 3, 5, 19, 37,
					-- layer=3 filter=68 channel=42
					0, 11, 4, -17, -63, -18, 19, 17, 28,
					-- layer=3 filter=68 channel=43
					-22, -2, -30, 54, -10, 30, 23, -20, -18,
					-- layer=3 filter=68 channel=44
					-15, -1, -3, 6, 2, -9, 2, -6, -9,
					-- layer=3 filter=68 channel=45
					37, -1, 13, -22, 0, -18, -44, 1, 17,
					-- layer=3 filter=68 channel=46
					25, 18, 36, 4, 41, 34, 2, -5, 10,
					-- layer=3 filter=68 channel=47
					1, -39, 1, -9, 52, 25, 6, 10, 0,
					-- layer=3 filter=68 channel=48
					29, 57, 46, -13, 33, 23, -29, 10, -21,
					-- layer=3 filter=68 channel=49
					9, -35, -1, 18, -36, 16, -24, -56, 33,
					-- layer=3 filter=68 channel=50
					-7, -9, 22, 27, -40, 36, 53, -11, 65,
					-- layer=3 filter=68 channel=51
					14, -53, -12, 39, 5, 0, -14, 3, 10,
					-- layer=3 filter=68 channel=52
					8, 15, -2, -13, 9, -17, 25, -13, -15,
					-- layer=3 filter=68 channel=53
					29, -26, 33, 7, -40, 18, -48, -12, -35,
					-- layer=3 filter=68 channel=54
					-28, -55, -19, -20, 11, -7, 15, 55, 9,
					-- layer=3 filter=68 channel=55
					5, 35, 30, -49, 3, -4, -43, 7, -25,
					-- layer=3 filter=68 channel=56
					21, 39, 27, 23, 25, -10, -13, -64, -78,
					-- layer=3 filter=68 channel=57
					-53, -36, -60, -1, -63, -20, -20, -25, 0,
					-- layer=3 filter=68 channel=58
					16, 17, -13, 39, -36, 3, -43, -71, 2,
					-- layer=3 filter=68 channel=59
					14, 13, 51, 19, 42, 29, 11, -9, 23,
					-- layer=3 filter=68 channel=60
					7, -1, -53, 16, -1, -10, 40, -2, 12,
					-- layer=3 filter=68 channel=61
					-14, 13, 11, 13, 20, 13, 17, 0, -21,
					-- layer=3 filter=68 channel=62
					-19, -22, -11, 50, 24, 9, 44, -14, -18,
					-- layer=3 filter=68 channel=63
					5, -1, 11, -5, 0, 0, -13, -6, -1,
					-- layer=3 filter=69 channel=0
					-14, -24, -17, -40, -36, -13, 10, 61, 10,
					-- layer=3 filter=69 channel=1
					-6, 22, -40, 5, 5, 2, -24, -48, -42,
					-- layer=3 filter=69 channel=2
					-4, -40, 32, 46, 26, 16, 32, -16, 20,
					-- layer=3 filter=69 channel=3
					8, 6, 0, 41, 42, 33, 3, -38, 29,
					-- layer=3 filter=69 channel=4
					-9, 12, 5, 3, 0, 5, -14, 1, 26,
					-- layer=3 filter=69 channel=5
					-34, 6, 0, 8, 10, -16, -14, 13, 0,
					-- layer=3 filter=69 channel=6
					25, 1, 21, 1, -49, 13, 26, -12, 39,
					-- layer=3 filter=69 channel=7
					-16, 13, 6, -4, 26, 20, -21, -32, -4,
					-- layer=3 filter=69 channel=8
					-18, -3, -18, 8, 12, -29, 33, -31, 21,
					-- layer=3 filter=69 channel=9
					17, 49, 2, -37, 9, -3, 1, -6, -1,
					-- layer=3 filter=69 channel=10
					-44, 10, -10, -27, 27, -31, -19, -22, -79,
					-- layer=3 filter=69 channel=11
					32, 8, 23, 52, 17, -5, -10, -10, 19,
					-- layer=3 filter=69 channel=12
					-11, -24, -20, -7, 15, 12, 13, -10, 16,
					-- layer=3 filter=69 channel=13
					0, -41, 7, 0, -3, 38, 5, -55, -15,
					-- layer=3 filter=69 channel=14
					-10, -34, 0, -13, -20, -49, 2, -44, -38,
					-- layer=3 filter=69 channel=15
					-3, -8, -4, 18, 42, -26, 1, 17, -8,
					-- layer=3 filter=69 channel=16
					-21, 30, -10, 6, 18, -13, -12, 10, -18,
					-- layer=3 filter=69 channel=17
					13, -22, 10, 42, 1, 5, -2, 3, 1,
					-- layer=3 filter=69 channel=18
					-2, -3, 45, -28, -19, 7, 15, 24, 4,
					-- layer=3 filter=69 channel=19
					25, 16, -6, 50, -5, 30, -6, -78, 33,
					-- layer=3 filter=69 channel=20
					-31, -35, 1, 11, -4, -28, 43, -8, -55,
					-- layer=3 filter=69 channel=21
					105, 50, -13, 10, -6, 21, -11, -3, 13,
					-- layer=3 filter=69 channel=22
					-1, -8, -4, 9, 8, -7, 15, 12, 7,
					-- layer=3 filter=69 channel=23
					93, 37, 12, 34, -2, 18, 18, -8, 32,
					-- layer=3 filter=69 channel=24
					-17, -37, -42, -21, -34, 6, 2, 12, 23,
					-- layer=3 filter=69 channel=25
					20, -12, -3, 36, 6, 0, -3, -6, -30,
					-- layer=3 filter=69 channel=26
					-12, 16, -6, -9, 0, -10, -2, -16, -11,
					-- layer=3 filter=69 channel=27
					-18, -55, -33, 14, 25, -5, 17, -28, 31,
					-- layer=3 filter=69 channel=28
					-9, -6, -7, 5, 1, -1, -4, 5, -8,
					-- layer=3 filter=69 channel=29
					-56, -34, -15, -53, 4, 37, 18, -6, 0,
					-- layer=3 filter=69 channel=30
					14, 17, 1, 0, 13, -2, 0, 8, 19,
					-- layer=3 filter=69 channel=31
					13, 0, -14, -5, 2, 42, 20, -23, 18,
					-- layer=3 filter=69 channel=32
					-19, 33, 41, -18, 1, -14, 25, 9, -29,
					-- layer=3 filter=69 channel=33
					-5, -5, 21, -9, 25, 18, 14, -34, -58,
					-- layer=3 filter=69 channel=34
					29, 28, 25, -8, 27, 17, 8, 55, -19,
					-- layer=3 filter=69 channel=35
					41, -1, -14, 35, 6, 60, 28, 22, -1,
					-- layer=3 filter=69 channel=36
					-2, 4, -3, 3, 18, 7, 4, 13, -15,
					-- layer=3 filter=69 channel=37
					-5, 14, 64, 6, 50, 20, 4, -12, -20,
					-- layer=3 filter=69 channel=38
					30, 37, 68, 20, 48, 5, 6, -2, 11,
					-- layer=3 filter=69 channel=39
					3, 0, 7, -15, -7, 3, 15, -11, 11,
					-- layer=3 filter=69 channel=40
					20, 5, -10, 4, -23, 11, 6, 25, -11,
					-- layer=3 filter=69 channel=41
					-6, -1, 0, -1, -23, 14, 48, -11, -11,
					-- layer=3 filter=69 channel=42
					0, -45, -4, 59, -3, 23, 10, -29, -8,
					-- layer=3 filter=69 channel=43
					38, 1, 18, 25, 2, 22, 12, 10, 39,
					-- layer=3 filter=69 channel=44
					-1, 0, -15, 12, -14, 20, 9, 4, -13,
					-- layer=3 filter=69 channel=45
					-6, 14, -13, -4, -2, -29, -2, -16, -14,
					-- layer=3 filter=69 channel=46
					26, 17, 9, 2, 0, 5, -24, 10, -1,
					-- layer=3 filter=69 channel=47
					12, 21, -39, -29, -35, -12, 0, 0, -1,
					-- layer=3 filter=69 channel=48
					-36, 0, -63, 34, 46, 3, 17, -31, 28,
					-- layer=3 filter=69 channel=49
					-10, 1, 32, -13, 11, -22, 12, 1, -29,
					-- layer=3 filter=69 channel=50
					45, -13, -1, 24, 13, 47, 28, 8, 34,
					-- layer=3 filter=69 channel=51
					-41, 30, -1, -47, 24, -7, 39, 30, 2,
					-- layer=3 filter=69 channel=52
					-15, -42, -36, 2, -58, -39, -2, 29, -8,
					-- layer=3 filter=69 channel=53
					12, 53, -52, -12, 50, 27, -9, -7, 41,
					-- layer=3 filter=69 channel=54
					36, 64, 35, 1, 5, -20, -45, -59, -15,
					-- layer=3 filter=69 channel=55
					-36, 10, 7, -13, -23, -18, 20, -7, -33,
					-- layer=3 filter=69 channel=56
					-16, 0, -5, -41, -22, -27, -5, 26, 2,
					-- layer=3 filter=69 channel=57
					34, 46, 76, -22, 21, 23, 1, 27, 40,
					-- layer=3 filter=69 channel=58
					-26, 14, 23, -23, 45, -11, 18, -9, 9,
					-- layer=3 filter=69 channel=59
					27, 14, -39, 15, -14, -32, -31, 9, -2,
					-- layer=3 filter=69 channel=60
					-12, 13, 43, 54, 55, 15, 17, 35, 7,
					-- layer=3 filter=69 channel=61
					54, 20, -9, 1, 0, -43, -29, -8, -15,
					-- layer=3 filter=69 channel=62
					9, 8, -22, -42, 15, -47, -1, -12, -11,
					-- layer=3 filter=69 channel=63
					-12, -2, 12, 8, -9, -2, -21, -10, -22,
					-- layer=3 filter=70 channel=0
					-2, -17, -7, -11, -15, -3, 11, 10, 11,
					-- layer=3 filter=70 channel=1
					-16, 10, 0, -1, 11, -14, -6, -4, 4,
					-- layer=3 filter=70 channel=2
					-2, -16, 10, -11, 7, -3, -14, -12, -11,
					-- layer=3 filter=70 channel=3
					3, -6, 9, -1, -15, -13, -12, 0, -16,
					-- layer=3 filter=70 channel=4
					-15, 0, 5, -17, -21, -6, -12, 5, -14,
					-- layer=3 filter=70 channel=5
					-1, 1, -6, 8, 12, -3, 10, -7, 12,
					-- layer=3 filter=70 channel=6
					-11, -11, -7, -4, 3, 6, -9, 4, 6,
					-- layer=3 filter=70 channel=7
					4, 3, -2, -13, -4, -17, 1, -14, -17,
					-- layer=3 filter=70 channel=8
					7, 5, 8, -6, -4, -6, 3, -13, -9,
					-- layer=3 filter=70 channel=9
					7, -4, 2, 14, -4, -5, -12, -11, -11,
					-- layer=3 filter=70 channel=10
					10, 8, -1, 1, -12, -10, 12, 3, -2,
					-- layer=3 filter=70 channel=11
					8, 4, -10, -13, 5, -5, 3, -13, 0,
					-- layer=3 filter=70 channel=12
					6, -8, 2, 1, 12, -22, 13, 9, -11,
					-- layer=3 filter=70 channel=13
					-1, 10, -3, 9, -3, -11, -12, -9, -16,
					-- layer=3 filter=70 channel=14
					-10, -11, -10, -8, 13, -4, 0, -16, -7,
					-- layer=3 filter=70 channel=15
					-4, 12, -15, 8, -10, -17, -14, 0, -7,
					-- layer=3 filter=70 channel=16
					-1, 5, -9, -12, 5, -9, 15, 0, -12,
					-- layer=3 filter=70 channel=17
					4, -9, 0, 9, -19, 0, 4, -5, -9,
					-- layer=3 filter=70 channel=18
					-10, 0, 1, -19, -13, -7, -11, -4, 4,
					-- layer=3 filter=70 channel=19
					-15, -11, 11, -10, -8, -16, 7, 8, -4,
					-- layer=3 filter=70 channel=20
					3, 10, -4, -3, -1, -1, -9, -2, -17,
					-- layer=3 filter=70 channel=21
					-19, 5, 3, -13, 0, 11, -22, 0, -13,
					-- layer=3 filter=70 channel=22
					13, 1, -13, -14, 13, -5, 1, 14, -7,
					-- layer=3 filter=70 channel=23
					-15, -7, -15, -21, 3, -19, 0, -1, 9,
					-- layer=3 filter=70 channel=24
					-12, -15, 0, -3, -10, -8, 0, -3, -6,
					-- layer=3 filter=70 channel=25
					7, 6, -14, -19, 11, 11, -8, 7, 6,
					-- layer=3 filter=70 channel=26
					6, 9, 1, 14, -2, 12, -10, -4, 9,
					-- layer=3 filter=70 channel=27
					3, 6, -13, 1, 5, 5, 7, -5, 3,
					-- layer=3 filter=70 channel=28
					11, -4, -16, -13, -8, 9, 12, -1, -5,
					-- layer=3 filter=70 channel=29
					4, 2, -3, -7, -3, 3, 10, -5, 10,
					-- layer=3 filter=70 channel=30
					-14, -12, 0, -11, 12, 13, -14, -11, -6,
					-- layer=3 filter=70 channel=31
					6, 12, 0, 4, 10, 9, -1, 11, -15,
					-- layer=3 filter=70 channel=32
					2, 0, -9, 3, -17, -3, 1, -11, -1,
					-- layer=3 filter=70 channel=33
					-8, 4, -9, -9, -8, -12, 0, -18, -12,
					-- layer=3 filter=70 channel=34
					-8, -8, -9, -17, -2, -17, -20, 0, -11,
					-- layer=3 filter=70 channel=35
					-4, -6, -6, 4, -7, -6, 3, 4, -9,
					-- layer=3 filter=70 channel=36
					-7, -7, 5, -3, 0, 3, -10, -16, 11,
					-- layer=3 filter=70 channel=37
					4, -4, -19, -2, -8, -4, -13, -6, -6,
					-- layer=3 filter=70 channel=38
					-17, -8, 7, -15, -19, -15, 0, -17, -4,
					-- layer=3 filter=70 channel=39
					2, -6, -10, 9, 1, 8, -14, 8, -7,
					-- layer=3 filter=70 channel=40
					4, 7, 0, -2, -3, -12, -9, -19, 2,
					-- layer=3 filter=70 channel=41
					-19, -2, -8, -15, -18, -9, -13, -9, -7,
					-- layer=3 filter=70 channel=42
					0, -10, -10, 2, 8, -2, 3, 5, -5,
					-- layer=3 filter=70 channel=43
					3, -2, -2, -9, 4, -7, 2, 7, -5,
					-- layer=3 filter=70 channel=44
					0, 3, 5, 6, -8, 0, -10, 9, 10,
					-- layer=3 filter=70 channel=45
					-8, 11, 1, 6, 5, 12, -13, 5, 0,
					-- layer=3 filter=70 channel=46
					-14, 8, 7, -2, -12, -10, 6, -17, -3,
					-- layer=3 filter=70 channel=47
					-2, -7, -8, 12, 6, 10, 12, 14, -10,
					-- layer=3 filter=70 channel=48
					0, 9, -14, -8, 2, -7, -9, 4, 4,
					-- layer=3 filter=70 channel=49
					-8, 8, -2, -4, 7, 0, 12, -8, -6,
					-- layer=3 filter=70 channel=50
					6, -4, -14, 1, -3, -11, 6, -6, -16,
					-- layer=3 filter=70 channel=51
					6, -17, -13, -13, 1, -9, -17, -1, -6,
					-- layer=3 filter=70 channel=52
					-14, -4, -6, 0, -12, -10, 0, 3, 6,
					-- layer=3 filter=70 channel=53
					-10, -10, -6, -10, 12, -10, -7, -13, 12,
					-- layer=3 filter=70 channel=54
					4, -2, 5, -6, -6, -11, -12, -17, 8,
					-- layer=3 filter=70 channel=55
					-2, 11, 0, -6, 9, -1, -11, -10, 2,
					-- layer=3 filter=70 channel=56
					-2, -19, -9, 8, -2, -1, 0, -19, -14,
					-- layer=3 filter=70 channel=57
					1, -18, -10, 0, -12, -8, 10, -12, -9,
					-- layer=3 filter=70 channel=58
					-8, 7, 7, -5, -4, -3, -11, -10, -2,
					-- layer=3 filter=70 channel=59
					-3, -11, 8, -10, -15, -16, -5, 4, -9,
					-- layer=3 filter=70 channel=60
					2, 2, -4, -9, 5, 9, 0, 6, -9,
					-- layer=3 filter=70 channel=61
					12, -12, 7, 3, -8, -15, 5, -4, -7,
					-- layer=3 filter=70 channel=62
					-1, 11, 4, -2, -9, -15, -4, -12, 0,
					-- layer=3 filter=70 channel=63
					13, -9, -7, -12, -6, 11, 12, -1, 4,
					-- layer=3 filter=71 channel=0
					4, 2, -22, -23, -20, -10, -41, -17, 19,
					-- layer=3 filter=71 channel=1
					23, -14, 12, -7, -3, 1, 2, 32, -7,
					-- layer=3 filter=71 channel=2
					23, -20, 13, -2, -5, 13, 2, -1, 20,
					-- layer=3 filter=71 channel=3
					-47, -69, -33, -18, -3, -23, -53, 26, -60,
					-- layer=3 filter=71 channel=4
					9, 62, 4, 13, 16, 9, 10, 0, 1,
					-- layer=3 filter=71 channel=5
					7, 15, 14, 3, 10, 17, -6, 10, 17,
					-- layer=3 filter=71 channel=6
					-6, -13, -23, -15, 34, -18, 23, 47, 15,
					-- layer=3 filter=71 channel=7
					14, 19, 7, -6, -30, -24, -41, 11, 24,
					-- layer=3 filter=71 channel=8
					21, 13, 9, 40, -10, 1, -44, 34, -15,
					-- layer=3 filter=71 channel=9
					-2, -37, -38, 23, -1, 2, -18, 39, 44,
					-- layer=3 filter=71 channel=10
					-8, 5, -56, 6, -2, 5, -21, -10, -45,
					-- layer=3 filter=71 channel=11
					-20, 5, -13, 13, -27, -15, 40, 0, 42,
					-- layer=3 filter=71 channel=12
					24, -25, 44, 3, -43, -11, 27, 60, 23,
					-- layer=3 filter=71 channel=13
					-5, -12, 5, -1, 26, 1, 9, 8, 12,
					-- layer=3 filter=71 channel=14
					1, 8, 69, -3, -33, 52, -16, 63, -14,
					-- layer=3 filter=71 channel=15
					15, 0, 7, 2, -16, -7, 32, 33, 0,
					-- layer=3 filter=71 channel=16
					56, -38, 19, -16, -19, -34, -27, 25, -4,
					-- layer=3 filter=71 channel=17
					22, 38, 21, 8, 42, 15, -8, 11, 25,
					-- layer=3 filter=71 channel=18
					-28, -7, -8, 24, 16, -26, 0, -37, 1,
					-- layer=3 filter=71 channel=19
					23, 13, 1, 20, 19, -14, 36, 4, -21,
					-- layer=3 filter=71 channel=20
					19, -10, 28, -4, -23, 19, -8, 7, 43,
					-- layer=3 filter=71 channel=21
					10, 30, -20, -11, 28, 23, 27, -11, 10,
					-- layer=3 filter=71 channel=22
					1, -3, 14, 7, 6, 1, 1, -15, -4,
					-- layer=3 filter=71 channel=23
					-3, -46, 31, -52, 5, -9, -29, -19, 38,
					-- layer=3 filter=71 channel=24
					12, -1, -22, 43, 22, -10, 24, -11, -13,
					-- layer=3 filter=71 channel=25
					8, 6, -37, 23, 13, -10, -37, 7, -42,
					-- layer=3 filter=71 channel=26
					-4, 7, 3, 11, 10, -4, 1, -2, -7,
					-- layer=3 filter=71 channel=27
					31, 0, 17, 7, -8, -2, 44, 42, 21,
					-- layer=3 filter=71 channel=28
					6, 0, -11, -8, -6, 9, 3, -10, 6,
					-- layer=3 filter=71 channel=29
					-23, 14, -33, -15, -16, -19, 12, -82, -10,
					-- layer=3 filter=71 channel=30
					1, 5, 7, -13, -12, -3, 15, 1, -7,
					-- layer=3 filter=71 channel=31
					30, -11, -2, 23, -27, -41, -38, -1, 14,
					-- layer=3 filter=71 channel=32
					-8, -12, -21, 6, -9, 9, 14, -20, 0,
					-- layer=3 filter=71 channel=33
					0, 0, 0, 8, -8, -20, 63, 10, -20,
					-- layer=3 filter=71 channel=34
					-39, 51, -33, -16, 15, -12, -6, 26, 7,
					-- layer=3 filter=71 channel=35
					-26, 7, -34, 11, 24, -6, -15, -29, -24,
					-- layer=3 filter=71 channel=36
					-22, 9, 40, 5, -50, 30, 36, 1, 4,
					-- layer=3 filter=71 channel=37
					13, 2, -48, -3, 27, -30, 53, 16, 61,
					-- layer=3 filter=71 channel=38
					-20, 0, -21, 12, 57, -10, -34, 11, -32,
					-- layer=3 filter=71 channel=39
					-14, -14, 1, -13, 1, 13, -15, -8, 7,
					-- layer=3 filter=71 channel=40
					-11, -25, 0, -23, -20, -17, -22, -36, -35,
					-- layer=3 filter=71 channel=41
					-18, -17, -1, 7, 34, 0, -60, -52, -1,
					-- layer=3 filter=71 channel=42
					-12, 18, 8, 14, 45, 22, 23, 31, 13,
					-- layer=3 filter=71 channel=43
					-51, -34, 3, 28, 21, 30, -9, -14, -17,
					-- layer=3 filter=71 channel=44
					-2, -5, -3, -1, 12, -8, 2, -1, 2,
					-- layer=3 filter=71 channel=45
					47, 13, 7, 10, -16, 2, -18, 15, -51,
					-- layer=3 filter=71 channel=46
					-7, -1, -24, 16, 38, -20, -1, 0, 27,
					-- layer=3 filter=71 channel=47
					18, -43, 6, 3, 17, -23, 23, 0, 3,
					-- layer=3 filter=71 channel=48
					-16, -12, -11, 39, -22, 33, -10, 5, -14,
					-- layer=3 filter=71 channel=49
					-26, 13, -15, -41, -9, -5, 3, -18, 63,
					-- layer=3 filter=71 channel=50
					-38, -24, -45, 1, 1, 1, 18, -25, 20,
					-- layer=3 filter=71 channel=51
					13, 47, 43, -44, -28, 1, -18, -15, 26,
					-- layer=3 filter=71 channel=52
					-29, 9, 32, -12, 25, 35, -25, -13, -2,
					-- layer=3 filter=71 channel=53
					38, -11, -84, 80, -41, -45, -5, -14, -43,
					-- layer=3 filter=71 channel=54
					-44, 0, -49, -74, -11, -80, -93, -13, -73,
					-- layer=3 filter=71 channel=55
					1, 14, 31, -15, -6, 27, -46, -2, -12,
					-- layer=3 filter=71 channel=56
					5, -4, -29, 6, 9, -12, 5, -12, -12,
					-- layer=3 filter=71 channel=57
					37, 0, -57, 38, 19, -61, 48, -30, -49,
					-- layer=3 filter=71 channel=58
					-34, -31, -19, -16, 9, 46, -35, -36, -1,
					-- layer=3 filter=71 channel=59
					14, -24, -18, 13, 9, -10, -2, -17, 4,
					-- layer=3 filter=71 channel=60
					-5, -4, -25, 20, 18, 10, -4, -15, -6,
					-- layer=3 filter=71 channel=61
					-6, -30, -7, -2, 45, -10, -35, 50, -22,
					-- layer=3 filter=71 channel=62
					3, 10, 2, 18, -15, 2, 33, 29, -2,
					-- layer=3 filter=71 channel=63
					-2, 2, 13, -13, 14, -11, 3, -30, -2,
					-- layer=3 filter=72 channel=0
					20, 42, -5, 23, 45, -2, -5, 0, -13,
					-- layer=3 filter=72 channel=1
					21, 11, -11, -30, 16, -40, -59, -59, -14,
					-- layer=3 filter=72 channel=2
					-13, 8, 19, -91, 1, 22, -14, -5, -27,
					-- layer=3 filter=72 channel=3
					0, 0, 15, -1, -54, -7, -9, 31, -37,
					-- layer=3 filter=72 channel=4
					8, 42, 36, 13, -12, 17, -11, 0, -25,
					-- layer=3 filter=72 channel=5
					12, -2, -9, -5, 16, -5, -4, -4, -8,
					-- layer=3 filter=72 channel=6
					-9, -19, 14, -42, -4, -16, -7, 71, -45,
					-- layer=3 filter=72 channel=7
					32, 29, 14, -20, -30, -68, -4, -4, -3,
					-- layer=3 filter=72 channel=8
					6, 32, 74, -2, -70, -9, 55, 42, -58,
					-- layer=3 filter=72 channel=9
					16, -27, -23, 10, -59, -26, 29, -59, -63,
					-- layer=3 filter=72 channel=10
					18, -8, 41, 29, -22, 4, -9, 16, 41,
					-- layer=3 filter=72 channel=11
					2, 25, 20, 26, 36, 5, 36, -16, -48,
					-- layer=3 filter=72 channel=12
					-31, -14, -2, -5, -32, 2, -22, -21, -9,
					-- layer=3 filter=72 channel=13
					-21, -12, 1, 4, 32, 18, -8, 24, 1,
					-- layer=3 filter=72 channel=14
					12, 5, 0, -30, 44, -17, -63, -59, -30,
					-- layer=3 filter=72 channel=15
					31, 14, 26, -37, 34, 9, -48, -6, 0,
					-- layer=3 filter=72 channel=16
					2, 24, 5, 2, -15, 15, 39, 74, 20,
					-- layer=3 filter=72 channel=17
					-8, -16, 12, 13, 13, -6, -25, 27, -14,
					-- layer=3 filter=72 channel=18
					-2, 36, 0, 6, 20, 50, 7, 10, 41,
					-- layer=3 filter=72 channel=19
					21, 15, -1, -9, 19, 21, 24, 36, -13,
					-- layer=3 filter=72 channel=20
					9, 12, 14, -61, -8, 31, -34, -15, -21,
					-- layer=3 filter=72 channel=21
					34, 16, 19, 37, 30, -52, 32, -10, -64,
					-- layer=3 filter=72 channel=22
					11, -1, 11, -12, 0, 8, -2, -2, -3,
					-- layer=3 filter=72 channel=23
					32, 13, 35, -19, -30, -15, 17, 13, -22,
					-- layer=3 filter=72 channel=24
					-3, 1, -21, 3, 48, 44, 12, 19, -14,
					-- layer=3 filter=72 channel=25
					0, -13, -25, -14, 4, 0, -29, -31, -8,
					-- layer=3 filter=72 channel=26
					-4, -6, 5, -13, -11, 4, -9, -7, 3,
					-- layer=3 filter=72 channel=27
					-19, -7, -28, -28, 0, -10, -8, 9, -30,
					-- layer=3 filter=72 channel=28
					-1, -6, -5, -2, -3, 10, 6, 13, 2,
					-- layer=3 filter=72 channel=29
					-9, 5, -47, 17, 28, -3, 0, 8, -3,
					-- layer=3 filter=72 channel=30
					5, 0, -18, -11, -11, 10, -12, 17, -8,
					-- layer=3 filter=72 channel=31
					2, 0, -20, -22, -19, -41, -24, -58, -27,
					-- layer=3 filter=72 channel=32
					8, 4, 2, 5, -15, 9, 14, -5, 13,
					-- layer=3 filter=72 channel=33
					-7, 9, 45, -20, -4, 5, -63, 20, 4,
					-- layer=3 filter=72 channel=34
					-49, 1, 3, -8, 6, -4, -8, -24, 4,
					-- layer=3 filter=72 channel=35
					-14, -11, -31, -8, 6, 21, -8, -2, 14,
					-- layer=3 filter=72 channel=36
					23, 6, 32, -28, -21, 14, -103, -40, -29,
					-- layer=3 filter=72 channel=37
					16, 39, -46, -1, -34, -13, -36, 14, -13,
					-- layer=3 filter=72 channel=38
					-7, -9, -69, -16, 41, 4, 15, 23, 16,
					-- layer=3 filter=72 channel=39
					0, -9, -12, -8, -10, 2, -15, -10, -7,
					-- layer=3 filter=72 channel=40
					-31, 39, -4, -4, 7, 46, -17, -23, 8,
					-- layer=3 filter=72 channel=41
					16, -17, 36, -1, 30, 21, 3, -33, -2,
					-- layer=3 filter=72 channel=42
					23, -20, -24, -25, -11, -15, -2, 23, -16,
					-- layer=3 filter=72 channel=43
					-27, -52, -18, -12, -12, 9, 30, 26, 35,
					-- layer=3 filter=72 channel=44
					-10, 0, 4, 9, -2, -4, -8, 14, -5,
					-- layer=3 filter=72 channel=45
					20, -2, -13, -23, 15, -9, -15, -3, -27,
					-- layer=3 filter=72 channel=46
					18, 21, 8, -8, 1, 26, 27, 1, 13,
					-- layer=3 filter=72 channel=47
					1, -19, -11, -5, -5, -4, 14, 9, -26,
					-- layer=3 filter=72 channel=48
					-4, -24, 5, 44, 35, 29, 2, 4, 5,
					-- layer=3 filter=72 channel=49
					35, 56, 54, 16, 36, 15, -8, -10, 25,
					-- layer=3 filter=72 channel=50
					-13, -18, -27, 9, -21, -15, -2, -32, -15,
					-- layer=3 filter=72 channel=51
					0, 63, 28, 3, 11, 0, -7, -11, 6,
					-- layer=3 filter=72 channel=52
					35, 3, 11, -22, 44, -12, -50, -14, 0,
					-- layer=3 filter=72 channel=53
					12, -24, 53, 48, -3, -17, 17, -12, -35,
					-- layer=3 filter=72 channel=54
					-37, 14, -1, 11, 25, 11, 48, 42, 0,
					-- layer=3 filter=72 channel=55
					31, 7, 56, -4, -38, -13, -3, 22, 16,
					-- layer=3 filter=72 channel=56
					24, 13, 17, 12, 23, 40, -4, -24, -24,
					-- layer=3 filter=72 channel=57
					60, -10, 29, 27, 18, 54, -70, -29, -3,
					-- layer=3 filter=72 channel=58
					2, -17, 23, 24, -24, 49, 37, 10, 20,
					-- layer=3 filter=72 channel=59
					14, -15, -8, 13, 16, 15, 26, 19, 27,
					-- layer=3 filter=72 channel=60
					-31, -16, -35, 0, -19, -31, -4, -5, 24,
					-- layer=3 filter=72 channel=61
					-20, -29, -26, 11, -12, 17, 38, 20, 7,
					-- layer=3 filter=72 channel=62
					2, -7, 11, -22, -13, 28, 5, -35, -66,
					-- layer=3 filter=72 channel=63
					11, 0, -1, -7, -1, 11, 13, 0, 8,
					-- layer=3 filter=73 channel=0
					-7, -17, -56, 10, 41, 0, -13, 48, 46,
					-- layer=3 filter=73 channel=1
					-17, 3, 26, 10, -39, -61, -25, 23, -36,
					-- layer=3 filter=73 channel=2
					-8, -37, 3, -19, 13, -12, 15, 0, -3,
					-- layer=3 filter=73 channel=3
					-39, -41, -22, -21, 101, 21, -32, 28, -23,
					-- layer=3 filter=73 channel=4
					-16, 7, 13, 22, 17, 33, -51, -42, 7,
					-- layer=3 filter=73 channel=5
					9, -20, -12, -2, 11, -3, -6, 2, -14,
					-- layer=3 filter=73 channel=6
					0, 3, -23, 11, 73, -2, -61, 20, 15,
					-- layer=3 filter=73 channel=7
					43, -17, -15, 9, -28, -36, -37, 1, 28,
					-- layer=3 filter=73 channel=8
					24, -17, 1, -33, 8, 13, -41, -4, -3,
					-- layer=3 filter=73 channel=9
					-2, 12, -1, -39, 29, 23, -81, 44, 41,
					-- layer=3 filter=73 channel=10
					2, 21, 3, -21, 37, 17, 10, -36, -23,
					-- layer=3 filter=73 channel=11
					-9, -47, 41, 0, -12, 13, -23, -21, 31,
					-- layer=3 filter=73 channel=12
					-7, -8, 12, -10, 12, 11, -18, 67, 60,
					-- layer=3 filter=73 channel=13
					7, -33, 28, -37, 22, 8, -31, 3, -12,
					-- layer=3 filter=73 channel=14
					9, -4, 35, -32, -31, -32, -38, 47, -77,
					-- layer=3 filter=73 channel=15
					-3, -3, 30, 0, -19, 18, 25, 34, -56,
					-- layer=3 filter=73 channel=16
					13, -9, 24, -16, 16, -29, -5, 17, -47,
					-- layer=3 filter=73 channel=17
					16, -3, 37, 16, 4, 1, -45, -54, -37,
					-- layer=3 filter=73 channel=18
					-18, 0, 3, -2, -20, -15, 28, -16, -21,
					-- layer=3 filter=73 channel=19
					12, -52, -7, -27, 19, -38, -19, -47, -27,
					-- layer=3 filter=73 channel=20
					-6, -46, -18, -13, -22, -6, 10, 6, -24,
					-- layer=3 filter=73 channel=21
					71, 0, 1, 16, -2, 17, -17, -24, 7,
					-- layer=3 filter=73 channel=22
					-12, 10, 0, -7, 4, 3, 4, -8, -8,
					-- layer=3 filter=73 channel=23
					26, -48, -37, 11, 5, 2, 5, 5, 72,
					-- layer=3 filter=73 channel=24
					6, -6, 6, 26, 14, 6, -10, -26, -7,
					-- layer=3 filter=73 channel=25
					-15, 27, -31, -8, 7, 14, -50, -3, 28,
					-- layer=3 filter=73 channel=26
					-3, -7, -15, 3, -14, -6, 10, 1, -2,
					-- layer=3 filter=73 channel=27
					23, -47, -9, -10, 7, -24, 18, 7, -9,
					-- layer=3 filter=73 channel=28
					7, 10, 10, 8, -13, 0, -1, 9, 5,
					-- layer=3 filter=73 channel=29
					38, 4, -11, -13, -61, 0, -11, -15, -18,
					-- layer=3 filter=73 channel=30
					-4, 18, -2, 1, -9, 0, -4, -1, -7,
					-- layer=3 filter=73 channel=31
					3, -24, 15, -42, -25, -19, -58, -72, -27,
					-- layer=3 filter=73 channel=32
					-11, 36, -17, 15, 40, 16, 85, 20, 31,
					-- layer=3 filter=73 channel=33
					10, -6, -6, 5, -23, -9, 36, -27, -11,
					-- layer=3 filter=73 channel=34
					-15, 16, 23, 28, 0, 25, 1, -19, -30,
					-- layer=3 filter=73 channel=35
					-3, 10, -10, 16, -1, 27, 4, -12, -7,
					-- layer=3 filter=73 channel=36
					-7, 11, 14, -11, -2, -27, 10, 18, -32,
					-- layer=3 filter=73 channel=37
					-2, -3, 12, 21, 55, 27, 5, 30, 29,
					-- layer=3 filter=73 channel=38
					-11, 14, -16, 15, 8, -26, 59, 41, 34,
					-- layer=3 filter=73 channel=39
					-7, 0, 6, -6, 12, -8, -8, -15, -11,
					-- layer=3 filter=73 channel=40
					24, -53, -12, -58, -58, -43, 27, 16, -9,
					-- layer=3 filter=73 channel=41
					-5, 35, 62, -11, 2, 33, -46, -57, -20,
					-- layer=3 filter=73 channel=42
					2, -6, -30, 2, 24, -7, 16, -31, 26,
					-- layer=3 filter=73 channel=43
					10, -12, 29, 18, 34, -48, 25, 15, 13,
					-- layer=3 filter=73 channel=44
					-7, -6, -2, -11, 9, -3, -4, -11, 6,
					-- layer=3 filter=73 channel=45
					35, -10, -9, -15, -23, -49, -33, 19, -68,
					-- layer=3 filter=73 channel=46
					8, 43, 11, -10, 11, 13, 7, 9, 20,
					-- layer=3 filter=73 channel=47
					-4, 26, 15, -11, 42, 39, -10, -36, -19,
					-- layer=3 filter=73 channel=48
					0, 15, 21, 26, -53, -39, -18, 9, 36,
					-- layer=3 filter=73 channel=49
					-38, -11, 21, -42, -54, 10, 32, -53, -37,
					-- layer=3 filter=73 channel=50
					9, -17, -16, -14, 1, 15, -21, 23, 41,
					-- layer=3 filter=73 channel=51
					-18, 44, 18, -14, 4, 31, 0, -33, -12,
					-- layer=3 filter=73 channel=52
					-17, -23, 14, -8, 35, -7, -27, -34, 3,
					-- layer=3 filter=73 channel=53
					87, -9, -26, 19, -40, -36, -86, 25, 53,
					-- layer=3 filter=73 channel=54
					-35, 23, -36, -46, 12, -11, -96, -38, -42,
					-- layer=3 filter=73 channel=55
					-9, -19, -6, 8, 4, -20, 24, 11, 0,
					-- layer=3 filter=73 channel=56
					18, 0, -28, 31, 49, -2, -22, 3, 14,
					-- layer=3 filter=73 channel=57
					17, 29, 33, -25, 21, 14, 14, -18, 24,
					-- layer=3 filter=73 channel=58
					-38, -35, -26, -43, -20, -7, -2, 12, 57,
					-- layer=3 filter=73 channel=59
					22, -17, 7, 17, 13, 36, 0, 39, 74,
					-- layer=3 filter=73 channel=60
					-4, -15, 18, 0, 0, -10, 14, 8, 15,
					-- layer=3 filter=73 channel=61
					3, -6, -46, 11, 32, -25, -25, -14, 46,
					-- layer=3 filter=73 channel=62
					2, 39, -1, 2, 0, 0, 0, 1, -44,
					-- layer=3 filter=73 channel=63
					-5, 15, -7, 19, 30, 3, -14, -5, -6,
					-- layer=3 filter=74 channel=0
					-9, 23, 6, -7, -1, 11, -14, 37, 29,
					-- layer=3 filter=74 channel=1
					4, 23, 1, -7, -41, 26, 33, -12, 55,
					-- layer=3 filter=74 channel=2
					-16, 23, 8, 34, 22, 4, 15, 14, -5,
					-- layer=3 filter=74 channel=3
					20, 14, -1, 10, -22, -31, 26, 28, 26,
					-- layer=3 filter=74 channel=4
					2, 3, 2, -63, -56, 2, -20, 28, -3,
					-- layer=3 filter=74 channel=5
					5, -4, 0, -6, 25, -6, 0, 5, 15,
					-- layer=3 filter=74 channel=6
					17, 32, 5, -7, -36, -6, 19, -15, 21,
					-- layer=3 filter=74 channel=7
					-25, 1, 9, 9, -17, -33, 55, 5, -41,
					-- layer=3 filter=74 channel=8
					33, 22, -16, 10, -12, 1, 46, -6, 21,
					-- layer=3 filter=74 channel=9
					-31, 22, 34, 49, 27, 12, 37, -28, -42,
					-- layer=3 filter=74 channel=10
					20, -4, 27, 4, -6, 6, 11, 9, 37,
					-- layer=3 filter=74 channel=11
					-15, 40, 18, -63, -29, 6, -39, -28, -3,
					-- layer=3 filter=74 channel=12
					30, 10, 11, -21, 3, -12, 0, -40, -53,
					-- layer=3 filter=74 channel=13
					9, 12, 15, 10, -24, -11, -3, -11, -10,
					-- layer=3 filter=74 channel=14
					62, 42, -3, 23, 12, 16, 22, -25, 13,
					-- layer=3 filter=74 channel=15
					12, 20, -1, 3, 11, -8, 5, 8, 11,
					-- layer=3 filter=74 channel=16
					-26, -25, -1, -22, -69, -7, -21, 35, -19,
					-- layer=3 filter=74 channel=17
					14, 46, -4, -43, 10, -9, -48, -15, 9,
					-- layer=3 filter=74 channel=18
					-12, 26, -14, -19, 0, -11, -100, 32, -26,
					-- layer=3 filter=74 channel=19
					-7, 34, 0, 11, -42, 29, 14, -12, -7,
					-- layer=3 filter=74 channel=20
					27, 22, -7, 7, 13, 0, -22, 17, -18,
					-- layer=3 filter=74 channel=21
					-65, -32, 11, -21, 0, 41, -20, -47, 2,
					-- layer=3 filter=74 channel=22
					-9, -7, 2, 18, -12, -5, -7, -8, -10,
					-- layer=3 filter=74 channel=23
					-17, 10, 26, -25, -8, -27, -24, -9, -48,
					-- layer=3 filter=74 channel=24
					-6, 32, 5, -60, -37, 22, -33, 1, -7,
					-- layer=3 filter=74 channel=25
					22, -58, 0, 15, -48, -30, 24, -11, 8,
					-- layer=3 filter=74 channel=26
					-7, 8, 4, -1, 8, -12, 17, -4, 6,
					-- layer=3 filter=74 channel=27
					31, 29, 34, 0, -3, 21, 17, -22, 0,
					-- layer=3 filter=74 channel=28
					-5, -6, 1, -3, 4, 8, -5, -10, 6,
					-- layer=3 filter=74 channel=29
					-37, 18, 8, -23, 34, -25, -59, 1, -6,
					-- layer=3 filter=74 channel=30
					-3, 3, 4, -13, -8, -10, -11, 8, 7,
					-- layer=3 filter=74 channel=31
					7, 23, -11, -39, -11, -64, -43, -71, -113,
					-- layer=3 filter=74 channel=32
					16, 0, 20, 17, 26, -1, 15, 22, 11,
					-- layer=3 filter=74 channel=33
					6, -13, 0, -7, 8, 5, -22, 23, -12,
					-- layer=3 filter=74 channel=34
					31, -15, -11, 27, 13, 3, -39, -25, -37,
					-- layer=3 filter=74 channel=35
					-5, 0, 40, -26, -37, -35, -20, 0, 8,
					-- layer=3 filter=74 channel=36
					30, 14, 2, 10, 13, 21, -23, -57, 7,
					-- layer=3 filter=74 channel=37
					30, 37, 31, 2, -73, -5, 13, -58, 2,
					-- layer=3 filter=74 channel=38
					-3, -8, -17, 26, -24, 28, -10, 28, 2,
					-- layer=3 filter=74 channel=39
					-1, -1, 4, -4, -5, 6, -4, 0, 4,
					-- layer=3 filter=74 channel=40
					-9, 22, -10, -9, 41, 26, -59, -30, -17,
					-- layer=3 filter=74 channel=41
					0, -13, 19, -18, 12, -30, -20, -6, -9,
					-- layer=3 filter=74 channel=42
					8, 0, 29, -9, -32, -5, -32, 15, -14,
					-- layer=3 filter=74 channel=43
					-33, 3, -1, -42, 38, -22, -24, 11, 18,
					-- layer=3 filter=74 channel=44
					18, 2, 11, -13, 12, -6, 2, 9, -8,
					-- layer=3 filter=74 channel=45
					8, 57, 2, 28, -6, -6, 36, -8, 49,
					-- layer=3 filter=74 channel=46
					-30, -32, -2, 17, -1, 0, 0, 5, 9,
					-- layer=3 filter=74 channel=47
					-13, 0, -2, -1, 11, 11, 15, 31, 23,
					-- layer=3 filter=74 channel=48
					0, 16, 5, -5, 19, 49, -26, -16, -5,
					-- layer=3 filter=74 channel=49
					10, 17, -14, -43, 4, -30, -42, -35, 0,
					-- layer=3 filter=74 channel=50
					-7, 9, -20, -17, 2, 18, -51, 1, 1,
					-- layer=3 filter=74 channel=51
					-11, -20, -42, 32, 79, -1, 3, 27, 31,
					-- layer=3 filter=74 channel=52
					26, -10, 22, -3, -66, -5, -53, -14, 12,
					-- layer=3 filter=74 channel=53
					-50, 26, 83, -73, 0, 39, 7, -33, -4,
					-- layer=3 filter=74 channel=54
					-1, -15, -2, 35, 8, 5, -8, 4, 30,
					-- layer=3 filter=74 channel=55
					23, 17, 2, 42, 29, -14, 38, -3, 10,
					-- layer=3 filter=74 channel=56
					-1, -9, 0, -14, 18, 55, 27, 34, 1,
					-- layer=3 filter=74 channel=57
					-28, -28, -19, -52, 6, 53, -105, -38, -48,
					-- layer=3 filter=74 channel=58
					23, -18, -16, 9, 48, -39, 13, 36, -51,
					-- layer=3 filter=74 channel=59
					-3, 22, 13, 0, -1, -5, -10, 26, 2,
					-- layer=3 filter=74 channel=60
					22, 9, 36, 41, -10, 1, 0, -22, 0,
					-- layer=3 filter=74 channel=61
					0, 14, 1, 16, -30, 16, 13, -37, -11,
					-- layer=3 filter=74 channel=62
					23, 20, 14, 3, 44, 5, -37, -10, 29,
					-- layer=3 filter=74 channel=63
					12, 9, 13, 4, -28, -11, 3, -6, -2,
					-- layer=3 filter=75 channel=0
					-1, -3, -8, -4, -20, -10, -25, -54, 1,
					-- layer=3 filter=75 channel=1
					17, -30, -21, -33, -27, 6, -64, 16, -3,
					-- layer=3 filter=75 channel=2
					-6, 34, -34, 22, -21, -21, -20, 12, 8,
					-- layer=3 filter=75 channel=3
					-10, 4, 16, -53, -74, -22, -50, -36, -19,
					-- layer=3 filter=75 channel=4
					2, 18, 0, 7, -14, -1, 2, -7, -27,
					-- layer=3 filter=75 channel=5
					7, 17, -12, 1, -15, -7, -6, 11, 15,
					-- layer=3 filter=75 channel=6
					12, 35, -6, 24, -56, -26, 10, 1, 18,
					-- layer=3 filter=75 channel=7
					-32, 16, 11, 37, 7, 51, 6, 19, 20,
					-- layer=3 filter=75 channel=8
					0, 10, 2, 28, -32, -30, 2, -1, -23,
					-- layer=3 filter=75 channel=9
					24, 5, -13, -2, -23, -34, 42, 3, -26,
					-- layer=3 filter=75 channel=10
					22, -12, -18, -14, -12, -54, -47, 4, 0,
					-- layer=3 filter=75 channel=11
					13, 2, -15, 36, 4, 17, 34, 23, 7,
					-- layer=3 filter=75 channel=12
					34, 10, 6, 20, -29, -9, -13, -10, -35,
					-- layer=3 filter=75 channel=13
					-26, -2, -33, 25, -11, 17, 30, -10, 49,
					-- layer=3 filter=75 channel=14
					13, 0, 22, -16, -9, 20, 40, 21, 71,
					-- layer=3 filter=75 channel=15
					16, -13, 11, -12, 17, 1, -2, -22, -12,
					-- layer=3 filter=75 channel=16
					25, 7, 41, -3, -68, -13, -50, -34, -23,
					-- layer=3 filter=75 channel=17
					-8, -25, -10, 7, 21, -1, 12, -40, 13,
					-- layer=3 filter=75 channel=18
					13, 1, -11, 0, 30, 41, -9, -5, 18,
					-- layer=3 filter=75 channel=19
					-27, 14, 26, -45, -24, -8, -3, 22, 16,
					-- layer=3 filter=75 channel=20
					13, 17, -5, 14, -2, 7, -23, 30, -3,
					-- layer=3 filter=75 channel=21
					0, 5, 11, 22, 21, 17, 65, 13, -25,
					-- layer=3 filter=75 channel=22
					4, 6, 7, 11, -7, -4, -7, 5, 12,
					-- layer=3 filter=75 channel=23
					0, 27, 2, 36, 15, 17, -8, -22, 21,
					-- layer=3 filter=75 channel=24
					-32, 18, 2, 24, -20, 11, 18, -31, 12,
					-- layer=3 filter=75 channel=25
					18, -3, 7, 11, -9, -5, 29, -11, -73,
					-- layer=3 filter=75 channel=26
					3, 7, -11, -1, -9, -4, -7, 7, -10,
					-- layer=3 filter=75 channel=27
					-10, -37, -20, 18, -16, -25, -11, -47, 19,
					-- layer=3 filter=75 channel=28
					0, -4, 10, 11, 6, -10, -8, -7, -8,
					-- layer=3 filter=75 channel=29
					0, 41, 0, 5, 49, 11, -20, 23, 34,
					-- layer=3 filter=75 channel=30
					-8, -10, -6, 11, 14, -2, -3, 2, 4,
					-- layer=3 filter=75 channel=31
					-28, 53, -1, 37, 51, 54, 73, 85, 38,
					-- layer=3 filter=75 channel=32
					13, 7, 4, -60, -43, -45, -83, -25, -41,
					-- layer=3 filter=75 channel=33
					16, 0, 36, -42, 11, 35, -16, 6, 0,
					-- layer=3 filter=75 channel=34
					23, 3, -5, -29, -8, 1, -39, -5, -8,
					-- layer=3 filter=75 channel=35
					-4, 26, 25, 8, -9, 16, 8, -6, -8,
					-- layer=3 filter=75 channel=36
					-16, -14, 11, -10, -21, 30, 16, 27, 52,
					-- layer=3 filter=75 channel=37
					32, 19, 31, 21, -22, 55, -9, 13, 0,
					-- layer=3 filter=75 channel=38
					13, -1, 2, -4, 21, 29, -36, 11, -21,
					-- layer=3 filter=75 channel=39
					5, 2, 1, -11, -4, -1, 4, 3, -10,
					-- layer=3 filter=75 channel=40
					3, 25, 29, 40, 23, -13, -10, -7, 23,
					-- layer=3 filter=75 channel=41
					3, -17, -32, -2, -3, 8, 39, 6, 40,
					-- layer=3 filter=75 channel=42
					-13, -3, -12, 15, -24, -1, -19, -31, 0,
					-- layer=3 filter=75 channel=43
					11, 10, 24, -11, 3, 10, -12, 22, 0,
					-- layer=3 filter=75 channel=44
					-13, -14, 3, 4, 11, 7, -11, -7, 1,
					-- layer=3 filter=75 channel=45
					-29, 20, -10, 23, -9, -29, -23, 12, -28,
					-- layer=3 filter=75 channel=46
					-31, 16, 20, -29, -26, -33, -13, -14, -29,
					-- layer=3 filter=75 channel=47
					3, -41, -9, -5, -18, -19, 33, 37, 11,
					-- layer=3 filter=75 channel=48
					-8, 8, 14, -24, 7, -26, 44, 34, 34,
					-- layer=3 filter=75 channel=49
					12, 4, 2, -5, 8, -4, -5, 32, 38,
					-- layer=3 filter=75 channel=50
					-21, -15, 81, 26, -12, 5, 20, 11, -24,
					-- layer=3 filter=75 channel=51
					20, -19, 4, 3, -13, -7, -50, 10, -27,
					-- layer=3 filter=75 channel=52
					2, 1, -11, 34, -25, -17, 17, -4, 21,
					-- layer=3 filter=75 channel=53
					37, 27, 57, 39, 10, -37, 89, 12, 6,
					-- layer=3 filter=75 channel=54
					7, -18, -5, 0, -39, -17, -3, -24, -44,
					-- layer=3 filter=75 channel=55
					8, 1, -10, -23, 33, 4, -38, 43, -7,
					-- layer=3 filter=75 channel=56
					-15, 14, -1, -1, -2, -1, 40, 6, -30,
					-- layer=3 filter=75 channel=57
					-19, 21, 8, -8, -19, 2, 39, -22, 17,
					-- layer=3 filter=75 channel=58
					31, 41, 2, 7, 24, -6, -16, 24, 0,
					-- layer=3 filter=75 channel=59
					7, 39, 0, 0, -47, -47, -33, -45, -61,
					-- layer=3 filter=75 channel=60
					-18, 19, -15, 5, -7, 5, 4, 6, -12,
					-- layer=3 filter=75 channel=61
					31, 15, 50, 7, 9, -37, -15, -19, -56,
					-- layer=3 filter=75 channel=62
					53, -31, 8, -58, -10, -29, -17, -40, -31,
					-- layer=3 filter=75 channel=63
					0, -17, 7, -26, 17, 0, 0, 3, -16,
					-- layer=3 filter=76 channel=0
					0, -6, -5, 11, 4, -15, 11, 4, -15,
					-- layer=3 filter=76 channel=1
					-4, 6, 5, -10, 9, -9, 9, -4, -12,
					-- layer=3 filter=76 channel=2
					-3, 7, 7, -4, 3, 4, -12, -7, -14,
					-- layer=3 filter=76 channel=3
					-10, -18, -5, 9, -6, -10, 11, -11, 3,
					-- layer=3 filter=76 channel=4
					-12, -4, -12, 2, -3, -9, 3, 0, -10,
					-- layer=3 filter=76 channel=5
					-4, -1, -9, -7, 6, 5, -11, 7, 12,
					-- layer=3 filter=76 channel=6
					-7, -3, 4, -3, -1, -13, -13, -18, -6,
					-- layer=3 filter=76 channel=7
					0, 8, 0, -10, 3, -5, -14, -12, -10,
					-- layer=3 filter=76 channel=8
					0, -11, -9, -14, -16, 7, -8, 6, -18,
					-- layer=3 filter=76 channel=9
					-19, 1, -16, -7, -15, 12, 11, 6, -5,
					-- layer=3 filter=76 channel=10
					-16, -16, -12, -12, 4, 4, 8, 6, 8,
					-- layer=3 filter=76 channel=11
					-6, 8, 9, -13, -16, 3, 12, 3, -7,
					-- layer=3 filter=76 channel=12
					11, -1, 5, -5, -15, 10, 5, 11, 9,
					-- layer=3 filter=76 channel=13
					-18, -4, 7, -5, -6, 6, -19, -2, -17,
					-- layer=3 filter=76 channel=14
					-5, -3, -13, -9, 4, -16, 1, -2, 7,
					-- layer=3 filter=76 channel=15
					-6, 0, 0, -13, -10, 9, -16, -8, -4,
					-- layer=3 filter=76 channel=16
					-1, 12, 6, 8, 2, 8, 22, -2, 9,
					-- layer=3 filter=76 channel=17
					4, 8, -9, -17, -12, -5, -4, -6, 0,
					-- layer=3 filter=76 channel=18
					4, -4, 2, 3, 6, -1, 0, -18, 6,
					-- layer=3 filter=76 channel=19
					5, 0, -13, 3, -4, -1, 7, 11, -18,
					-- layer=3 filter=76 channel=20
					-12, 17, 0, -15, -6, 0, -7, -2, -9,
					-- layer=3 filter=76 channel=21
					1, 1, 10, -6, 3, -10, 1, 1, 6,
					-- layer=3 filter=76 channel=22
					10, -11, -9, -12, 2, 11, 0, 14, -9,
					-- layer=3 filter=76 channel=23
					0, -9, -19, 5, 1, -4, -3, 0, -19,
					-- layer=3 filter=76 channel=24
					-12, 6, -1, -13, -3, 0, -8, -6, 8,
					-- layer=3 filter=76 channel=25
					-3, -1, -2, 0, -9, 0, 9, -18, 0,
					-- layer=3 filter=76 channel=26
					13, 13, -9, 4, -10, -11, 4, 14, -14,
					-- layer=3 filter=76 channel=27
					-2, -17, -18, -12, 3, 0, 3, 8, -10,
					-- layer=3 filter=76 channel=28
					10, 13, -3, -14, -5, 12, 10, -2, 10,
					-- layer=3 filter=76 channel=29
					8, -7, 1, -14, 9, 2, 13, -11, -5,
					-- layer=3 filter=76 channel=30
					-12, -1, -7, 15, -4, 9, -8, 10, 2,
					-- layer=3 filter=76 channel=31
					-10, 2, 10, -6, 10, -4, 5, 13, 3,
					-- layer=3 filter=76 channel=32
					-3, -7, -11, 1, 2, -2, -12, -13, 0,
					-- layer=3 filter=76 channel=33
					-11, -14, -4, 8, -19, 3, -11, 8, -16,
					-- layer=3 filter=76 channel=34
					-3, -11, 12, -14, -3, -20, 0, -19, 1,
					-- layer=3 filter=76 channel=35
					-4, 1, 4, -16, -1, 3, -16, -10, -10,
					-- layer=3 filter=76 channel=36
					-18, 3, -22, -2, 7, -11, 1, -7, -8,
					-- layer=3 filter=76 channel=37
					-12, 1, -20, -13, -10, -4, 0, 3, -15,
					-- layer=3 filter=76 channel=38
					-6, 2, 9, 8, 8, -3, -6, -16, 0,
					-- layer=3 filter=76 channel=39
					-5, 0, 6, 6, 7, -4, 2, 10, 4,
					-- layer=3 filter=76 channel=40
					-1, 6, 2, -6, -16, -7, 4, 0, -16,
					-- layer=3 filter=76 channel=41
					8, -6, 7, -18, 8, -4, -2, 9, 2,
					-- layer=3 filter=76 channel=42
					-1, 7, -10, -14, 2, 8, -17, 2, -14,
					-- layer=3 filter=76 channel=43
					5, 12, 15, -7, -9, -7, -15, -1, -13,
					-- layer=3 filter=76 channel=44
					3, 0, 5, 8, -1, -1, 0, -4, -10,
					-- layer=3 filter=76 channel=45
					-13, -10, -16, -15, -18, 10, -9, -3, -11,
					-- layer=3 filter=76 channel=46
					-14, -9, -8, 4, -9, 0, 10, 4, -10,
					-- layer=3 filter=76 channel=47
					-4, -6, -13, 9, 12, 1, -6, -8, -14,
					-- layer=3 filter=76 channel=48
					10, -12, 6, 10, 7, -15, -20, 0, 6,
					-- layer=3 filter=76 channel=49
					1, -9, 5, -5, -15, -13, -16, 3, -10,
					-- layer=3 filter=76 channel=50
					-10, -18, -3, -8, -2, 9, 8, 7, -15,
					-- layer=3 filter=76 channel=51
					-7, 1, 10, -13, -8, 0, -14, -2, 8,
					-- layer=3 filter=76 channel=52
					-14, -17, -1, 5, -7, -14, -11, -2, -12,
					-- layer=3 filter=76 channel=53
					-11, 13, -3, 5, -1, -1, 14, 1, 0,
					-- layer=3 filter=76 channel=54
					3, -2, -12, 14, -9, -1, 9, -11, -6,
					-- layer=3 filter=76 channel=55
					-12, -21, -5, -17, 6, -4, -1, -7, -20,
					-- layer=3 filter=76 channel=56
					-18, 5, -16, -11, 5, -10, -15, -14, 5,
					-- layer=3 filter=76 channel=57
					-12, 8, 4, -5, -17, -1, -18, -9, -1,
					-- layer=3 filter=76 channel=58
					-5, -1, 0, 13, 8, -8, -14, -16, -9,
					-- layer=3 filter=76 channel=59
					11, -2, -10, -12, 4, 3, 13, 7, 3,
					-- layer=3 filter=76 channel=60
					-3, 2, 8, 4, 4, -4, 6, 3, -12,
					-- layer=3 filter=76 channel=61
					1, -1, 11, -5, 4, -9, 4, 8, 6,
					-- layer=3 filter=76 channel=62
					-11, -4, 0, -4, 9, -16, 12, 4, 2,
					-- layer=3 filter=76 channel=63
					-3, -3, -11, -6, 4, 1, 14, 5, 4,
					-- layer=3 filter=77 channel=0
					-9, -19, 1, -29, -17, 26, -32, -24, 44,
					-- layer=3 filter=77 channel=1
					-6, -10, -41, 54, -29, -10, -7, 12, -47,
					-- layer=3 filter=77 channel=2
					5, -18, -44, 32, 25, -18, -29, -25, -22,
					-- layer=3 filter=77 channel=3
					-22, 14, -26, 19, -2, 38, -21, -64, -15,
					-- layer=3 filter=77 channel=4
					23, 11, -3, -4, 0, 18, -17, 1, 4,
					-- layer=3 filter=77 channel=5
					-21, 6, -8, -1, 10, 0, -6, -7, 6,
					-- layer=3 filter=77 channel=6
					-24, -1, -17, 81, 3, 48, 32, 8, -2,
					-- layer=3 filter=77 channel=7
					-12, -39, 9, -42, -10, 44, -17, -6, -15,
					-- layer=3 filter=77 channel=8
					-39, 5, -21, 24, 25, 20, 53, -30, 6,
					-- layer=3 filter=77 channel=9
					-5, 2, -14, 4, 16, -4, 19, 25, 13,
					-- layer=3 filter=77 channel=10
					-26, 12, -20, 28, 3, -63, -1, -2, -63,
					-- layer=3 filter=77 channel=11
					-3, 0, 28, -11, -3, -14, -18, 18, 3,
					-- layer=3 filter=77 channel=12
					-34, 18, 13, -17, 7, 14, 19, 17, -9,
					-- layer=3 filter=77 channel=13
					19, 5, -37, 44, 13, 30, 12, -8, -3,
					-- layer=3 filter=77 channel=14
					-29, -57, -52, 8, 0, -15, 0, 0, -8,
					-- layer=3 filter=77 channel=15
					-13, -31, -83, 36, 15, 11, -6, 3, -58,
					-- layer=3 filter=77 channel=16
					-10, 29, 39, 7, -69, -63, -7, 32, 37,
					-- layer=3 filter=77 channel=17
					44, 24, 13, 0, 18, 6, -15, -26, -18,
					-- layer=3 filter=77 channel=18
					21, 17, 32, 4, 16, 16, -14, 6, 4,
					-- layer=3 filter=77 channel=19
					22, 9, -5, 45, -34, 20, -15, -2, -5,
					-- layer=3 filter=77 channel=20
					3, -27, 0, -23, 23, -31, 23, 13, -30,
					-- layer=3 filter=77 channel=21
					3, -23, 11, -1, 3, -11, -9, 16, 4,
					-- layer=3 filter=77 channel=22
					6, 3, 11, -2, -12, 11, -2, -7, -18,
					-- layer=3 filter=77 channel=23
					37, 67, 67, -41, 20, 11, -16, -27, 42,
					-- layer=3 filter=77 channel=24
					25, 36, 29, 43, 25, 12, 23, 12, 19,
					-- layer=3 filter=77 channel=25
					11, -18, 8, -16, 33, -7, -14, 30, -25,
					-- layer=3 filter=77 channel=26
					-8, -10, -11, 0, -9, 1, 6, -8, 14,
					-- layer=3 filter=77 channel=27
					-8, -5, -40, 7, 5, -21, -14, -20, 6,
					-- layer=3 filter=77 channel=28
					3, 9, 3, 15, 12, 0, -9, 9, -13,
					-- layer=3 filter=77 channel=29
					-14, 0, -18, -1, 50, 28, 0, 3, -1,
					-- layer=3 filter=77 channel=30
					1, 13, 12, -5, 7, -3, -7, -8, -7,
					-- layer=3 filter=77 channel=31
					-33, 8, -44, -15, 26, 43, 26, 0, 20,
					-- layer=3 filter=77 channel=32
					-10, 5, 38, -51, 4, -39, -17, 37, 12,
					-- layer=3 filter=77 channel=33
					23, 2, 1, -20, 45, -30, -17, -38, -42,
					-- layer=3 filter=77 channel=34
					3, -14, 15, -45, 23, 20, -3, 21, -9,
					-- layer=3 filter=77 channel=35
					43, 0, 1, 11, 7, 28, -30, 5, 17,
					-- layer=3 filter=77 channel=36
					-9, -29, -60, 1, -56, -24, 19, 68, 24,
					-- layer=3 filter=77 channel=37
					-5, -11, 9, 11, -40, 28, 21, 46, -6,
					-- layer=3 filter=77 channel=38
					55, 49, 77, -1, -19, -3, -17, -39, -15,
					-- layer=3 filter=77 channel=39
					12, 7, -7, 0, 1, 11, -11, 7, 6,
					-- layer=3 filter=77 channel=40
					15, 8, 18, -24, -35, -15, -15, 25, 6,
					-- layer=3 filter=77 channel=41
					7, 26, -32, -24, -3, -23, 36, -19, 24,
					-- layer=3 filter=77 channel=42
					-3, 38, 18, 25, -7, 18, -19, -7, -1,
					-- layer=3 filter=77 channel=43
					48, 26, 2, 0, 21, 55, 25, 12, -18,
					-- layer=3 filter=77 channel=44
					-11, -3, -4, -11, 6, -16, -4, 3, -11,
					-- layer=3 filter=77 channel=45
					-37, -45, -31, 22, -11, -8, -6, -2, -5,
					-- layer=3 filter=77 channel=46
					2, -1, 19, -6, -31, -32, 15, 21, -23,
					-- layer=3 filter=77 channel=47
					29, 6, 54, 9, -21, 29, -10, 7, -32,
					-- layer=3 filter=77 channel=48
					-33, 3, 38, 16, -27, -37, -2, -6, 53,
					-- layer=3 filter=77 channel=49
					20, 26, 10, -39, 25, -13, 4, -9, -1,
					-- layer=3 filter=77 channel=50
					-15, -6, 47, 16, 51, 6, 17, 37, 16,
					-- layer=3 filter=77 channel=51
					7, -15, -20, -16, 30, 40, -21, 39, -18,
					-- layer=3 filter=77 channel=52
					16, -20, 31, -18, -18, -5, -45, 29, -2,
					-- layer=3 filter=77 channel=53
					-36, -32, 23, -19, 1, -17, -5, -24, 24,
					-- layer=3 filter=77 channel=54
					1, 31, 56, 33, -15, 55, -25, -21, -24,
					-- layer=3 filter=77 channel=55
					-9, 32, -27, -35, -25, -37, -6, 2, -23,
					-- layer=3 filter=77 channel=56
					-47, 13, 12, 33, 26, 5, 32, 26, 17,
					-- layer=3 filter=77 channel=57
					26, -29, 74, -22, -25, -29, 44, 15, 22,
					-- layer=3 filter=77 channel=58
					16, 1, -17, -10, 30, 39, 10, -62, -26,
					-- layer=3 filter=77 channel=59
					-16, -4, -43, -2, -79, -49, 15, 10, 14,
					-- layer=3 filter=77 channel=60
					4, 26, -6, -6, 16, 2, -13, 22, -27,
					-- layer=3 filter=77 channel=61
					-7, 25, 70, -40, -10, -7, -39, -12, -3,
					-- layer=3 filter=77 channel=62
					-23, 17, -57, 18, 54, -19, -1, 19, -20,
					-- layer=3 filter=77 channel=63
					-2, -3, 2, 29, 4, 17, -11, -12, -29,
					-- layer=3 filter=78 channel=0
					11, -11, 7, -9, 10, -1, -10, 7, -7,
					-- layer=3 filter=78 channel=1
					-11, -11, -7, -4, -11, -9, -15, 0, 8,
					-- layer=3 filter=78 channel=2
					6, 0, 11, -14, 7, 10, -9, 2, 3,
					-- layer=3 filter=78 channel=3
					4, -5, 8, -16, 1, 0, -5, -1, 6,
					-- layer=3 filter=78 channel=4
					-19, -1, -6, 6, 5, -10, -6, 11, -18,
					-- layer=3 filter=78 channel=5
					-7, 4, 7, 1, 10, -13, 0, 5, 13,
					-- layer=3 filter=78 channel=6
					-8, -9, 0, 13, 13, 4, -3, 12, -11,
					-- layer=3 filter=78 channel=7
					7, -14, -7, -3, -8, -5, -8, -1, -16,
					-- layer=3 filter=78 channel=8
					0, 7, 9, -16, -10, -1, -6, -16, -11,
					-- layer=3 filter=78 channel=9
					-8, -9, -1, -5, 0, 0, -15, 4, -16,
					-- layer=3 filter=78 channel=10
					-9, 0, 10, -11, -13, 0, -14, -3, 8,
					-- layer=3 filter=78 channel=11
					8, -9, -7, -8, 1, 0, -6, 0, -6,
					-- layer=3 filter=78 channel=12
					-4, 2, 8, -14, -11, 6, -11, -5, -12,
					-- layer=3 filter=78 channel=13
					-10, -10, 4, -11, -3, 11, -1, 5, 11,
					-- layer=3 filter=78 channel=14
					2, -2, -17, -14, 7, 4, -5, 8, -20,
					-- layer=3 filter=78 channel=15
					-10, -15, -12, -10, -11, 5, -5, -8, -6,
					-- layer=3 filter=78 channel=16
					14, -8, -2, -3, 5, -8, 8, -5, -10,
					-- layer=3 filter=78 channel=17
					12, 6, -7, -21, 1, -18, -2, -6, 8,
					-- layer=3 filter=78 channel=18
					5, -6, -1, 8, -5, 7, 11, -5, -6,
					-- layer=3 filter=78 channel=19
					-7, -15, -14, 0, 1, -11, -16, -11, -5,
					-- layer=3 filter=78 channel=20
					9, -12, 6, -5, 1, -8, 2, 5, 4,
					-- layer=3 filter=78 channel=21
					-18, -15, -14, 0, -7, 1, -8, -6, -4,
					-- layer=3 filter=78 channel=22
					5, 10, 10, -5, 5, -13, 0, 11, 1,
					-- layer=3 filter=78 channel=23
					-1, 3, 1, -7, -1, -8, 0, -15, -18,
					-- layer=3 filter=78 channel=24
					-4, -7, 10, -3, 0, 5, -9, -5, 6,
					-- layer=3 filter=78 channel=25
					2, -15, -13, -14, 4, -8, -15, -15, -7,
					-- layer=3 filter=78 channel=26
					2, -6, -7, -2, -3, 4, -2, -7, 4,
					-- layer=3 filter=78 channel=27
					-13, -2, -15, -17, 1, -3, 0, 5, 6,
					-- layer=3 filter=78 channel=28
					7, 0, 4, -5, 10, -11, -9, -9, -9,
					-- layer=3 filter=78 channel=29
					-1, 13, -2, 2, -4, 14, 2, 4, -1,
					-- layer=3 filter=78 channel=30
					8, -3, 0, -12, 10, -7, 1, 7, 6,
					-- layer=3 filter=78 channel=31
					14, 12, -5, -11, -3, -5, 5, -14, -1,
					-- layer=3 filter=78 channel=32
					8, 9, -1, -10, -3, -7, 6, -4, 9,
					-- layer=3 filter=78 channel=33
					-17, 0, -12, 9, 2, -10, 1, -12, -15,
					-- layer=3 filter=78 channel=34
					-16, -3, -6, -2, 5, 1, -12, -10, 6,
					-- layer=3 filter=78 channel=35
					10, -9, -1, -17, -8, -13, 2, -15, -3,
					-- layer=3 filter=78 channel=36
					10, -1, -9, -12, 9, -8, 1, -13, 4,
					-- layer=3 filter=78 channel=37
					-4, 4, -13, 0, -11, 3, -4, -4, -13,
					-- layer=3 filter=78 channel=38
					-13, -2, 0, 3, 1, -8, -14, -14, -6,
					-- layer=3 filter=78 channel=39
					3, 5, 0, -2, -7, 9, -10, 0, -6,
					-- layer=3 filter=78 channel=40
					-4, -3, 6, -16, -9, 2, 3, -6, -18,
					-- layer=3 filter=78 channel=41
					-6, 7, 6, -13, 8, -8, -7, 6, -5,
					-- layer=3 filter=78 channel=42
					-2, -10, 2, 3, -12, -15, -15, -9, -14,
					-- layer=3 filter=78 channel=43
					11, -17, -10, -10, -13, 5, -18, 9, -2,
					-- layer=3 filter=78 channel=44
					11, 14, -10, -6, 3, -12, -6, -7, 12,
					-- layer=3 filter=78 channel=45
					-9, 0, -6, 7, -9, 0, 3, -12, -14,
					-- layer=3 filter=78 channel=46
					-6, 2, -7, -17, -16, 2, 11, -19, 8,
					-- layer=3 filter=78 channel=47
					-5, 2, -14, 2, -1, 0, 8, -10, -13,
					-- layer=3 filter=78 channel=48
					0, -14, 0, -10, -7, 6, 9, 4, 4,
					-- layer=3 filter=78 channel=49
					9, 3, -1, 7, -14, -2, 9, -13, -5,
					-- layer=3 filter=78 channel=50
					-14, -10, 3, 7, 2, -9, -14, -3, -16,
					-- layer=3 filter=78 channel=51
					8, -15, -2, -11, -11, -7, 7, -17, 11,
					-- layer=3 filter=78 channel=52
					4, -4, 10, -2, -17, 7, 7, -12, -16,
					-- layer=3 filter=78 channel=53
					7, 6, -19, 7, 3, -3, -21, -13, 0,
					-- layer=3 filter=78 channel=54
					-14, 11, -8, 3, 9, 12, 0, -3, 9,
					-- layer=3 filter=78 channel=55
					-5, -7, 12, -6, -4, 6, -13, 5, -5,
					-- layer=3 filter=78 channel=56
					-10, -8, 7, 7, -9, -5, -6, 12, 10,
					-- layer=3 filter=78 channel=57
					-13, -4, -6, 13, 0, -8, -13, -13, -16,
					-- layer=3 filter=78 channel=58
					-9, -4, -2, 3, 7, -12, 11, 4, -3,
					-- layer=3 filter=78 channel=59
					-12, 13, -14, -15, 4, -14, -11, 7, 1,
					-- layer=3 filter=78 channel=60
					11, -2, 4, 2, 0, 2, -16, -17, -9,
					-- layer=3 filter=78 channel=61
					-10, 6, -7, -9, -3, -1, 10, -10, -4,
					-- layer=3 filter=78 channel=62
					6, -9, -5, 3, -15, 5, -7, 5, -7,
					-- layer=3 filter=78 channel=63
					-5, -14, 2, -5, -5, 1, 14, 7, -6,
					-- layer=3 filter=79 channel=0
					-8, -13, 6, -22, -14, -2, -12, -23, 5,
					-- layer=3 filter=79 channel=1
					10, 7, 0, 1, -16, -8, -1, -1, -5,
					-- layer=3 filter=79 channel=2
					-9, 2, -12, -11, -2, -5, -11, -12, -4,
					-- layer=3 filter=79 channel=3
					-9, -14, 9, -14, 7, 6, -17, -13, 0,
					-- layer=3 filter=79 channel=4
					-2, -23, -15, -7, 2, 8, -12, 6, 3,
					-- layer=3 filter=79 channel=5
					-14, 2, -4, 7, -14, 10, -1, -2, 8,
					-- layer=3 filter=79 channel=6
					2, 6, -2, 6, 10, -14, 9, 9, -14,
					-- layer=3 filter=79 channel=7
					-2, 14, -11, 11, 13, 6, -17, -16, 3,
					-- layer=3 filter=79 channel=8
					4, -10, -1, -4, -8, -9, 0, -16, -17,
					-- layer=3 filter=79 channel=9
					10, -4, -14, -20, -15, -6, -11, -1, 4,
					-- layer=3 filter=79 channel=10
					11, -4, -8, -13, -16, -5, -14, -7, -19,
					-- layer=3 filter=79 channel=11
					-1, -12, 3, -7, -18, -2, 6, -4, 0,
					-- layer=3 filter=79 channel=12
					3, -8, -10, -10, 5, 4, 0, -9, -17,
					-- layer=3 filter=79 channel=13
					-20, -15, 1, 7, -13, 7, -5, -6, -11,
					-- layer=3 filter=79 channel=14
					4, 4, -11, -3, -8, -5, 0, 7, 7,
					-- layer=3 filter=79 channel=15
					-4, -2, -5, -8, -18, -10, -21, 3, 8,
					-- layer=3 filter=79 channel=16
					0, 3, 0, 5, -5, 6, -2, -3, 7,
					-- layer=3 filter=79 channel=17
					-17, -23, -11, -11, -16, -14, 9, 6, 8,
					-- layer=3 filter=79 channel=18
					-9, -13, 4, -21, 0, -7, 11, 0, -24,
					-- layer=3 filter=79 channel=19
					-7, 3, -15, -5, -4, 9, -3, -4, -15,
					-- layer=3 filter=79 channel=20
					7, 0, -7, -9, -3, 0, -6, -16, -1,
					-- layer=3 filter=79 channel=21
					-13, 4, -17, 2, -10, -9, -9, 7, -5,
					-- layer=3 filter=79 channel=22
					4, 4, -5, 14, 5, -3, -11, 4, 11,
					-- layer=3 filter=79 channel=23
					-9, -17, -9, 0, -19, 4, -6, -15, -23,
					-- layer=3 filter=79 channel=24
					-11, -6, 2, -13, -1, -12, 12, -23, 3,
					-- layer=3 filter=79 channel=25
					1, 11, 9, -7, -14, 3, -3, 6, -17,
					-- layer=3 filter=79 channel=26
					-5, -10, 2, 3, -4, 11, -1, -13, -4,
					-- layer=3 filter=79 channel=27
					12, 12, 10, 10, -10, 0, -11, -12, -10,
					-- layer=3 filter=79 channel=28
					-1, 12, -5, 8, 3, 12, -15, 3, -10,
					-- layer=3 filter=79 channel=29
					-10, -2, 10, 5, 3, -6, 0, -15, 12,
					-- layer=3 filter=79 channel=30
					-14, 6, 4, -4, 8, 7, 5, -1, -10,
					-- layer=3 filter=79 channel=31
					-4, -10, -9, 0, -13, -2, -14, -5, -19,
					-- layer=3 filter=79 channel=32
					-7, 5, -10, 4, 0, -17, -3, -25, -23,
					-- layer=3 filter=79 channel=33
					-9, 11, -6, 0, -6, -23, 12, 2, -11,
					-- layer=3 filter=79 channel=34
					-2, -7, -1, -23, -1, 0, -4, -8, 4,
					-- layer=3 filter=79 channel=35
					3, 0, 1, -18, -15, 9, -11, -13, -7,
					-- layer=3 filter=79 channel=36
					-9, 1, -21, -11, -9, 3, 2, -20, -12,
					-- layer=3 filter=79 channel=37
					-16, -9, -12, -8, -15, 6, 9, -11, 5,
					-- layer=3 filter=79 channel=38
					8, 5, -11, -4, -3, -7, -13, 9, -9,
					-- layer=3 filter=79 channel=39
					-6, 14, 6, -10, 11, -3, 13, 11, 3,
					-- layer=3 filter=79 channel=40
					-13, -1, -2, 3, -2, -9, 11, -1, 4,
					-- layer=3 filter=79 channel=41
					-10, -10, -3, 12, -5, -11, 5, 6, -8,
					-- layer=3 filter=79 channel=42
					-8, -14, -3, -3, -1, 0, 7, 9, -13,
					-- layer=3 filter=79 channel=43
					8, -5, -2, 4, -10, -10, 3, 4, -20,
					-- layer=3 filter=79 channel=44
					-11, -5, 1, 4, 6, 14, -6, -3, -6,
					-- layer=3 filter=79 channel=45
					5, -10, -13, -15, -4, -10, -9, -9, -11,
					-- layer=3 filter=79 channel=46
					-9, -20, 4, -19, -18, -12, -6, -25, -6,
					-- layer=3 filter=79 channel=47
					0, -12, 0, 2, 0, -2, 0, 4, -9,
					-- layer=3 filter=79 channel=48
					-9, -22, 6, 8, -3, 4, -1, 2, -3,
					-- layer=3 filter=79 channel=49
					-10, 6, -18, -2, -15, 2, -8, -4, 4,
					-- layer=3 filter=79 channel=50
					-7, -4, -12, -14, 7, -1, -14, 5, 1,
					-- layer=3 filter=79 channel=51
					9, -6, -13, -10, -3, 1, -12, 0, -8,
					-- layer=3 filter=79 channel=52
					2, -13, -16, 10, 7, -14, -3, -21, 0,
					-- layer=3 filter=79 channel=53
					0, -8, 4, 3, -4, -7, -8, -6, 0,
					-- layer=3 filter=79 channel=54
					-6, -11, 3, -9, 0, -15, -8, 8, -16,
					-- layer=3 filter=79 channel=55
					14, -14, -5, 8, 0, 7, 3, -16, 4,
					-- layer=3 filter=79 channel=56
					3, 2, -3, -14, -5, -1, -19, -6, 0,
					-- layer=3 filter=79 channel=57
					4, -11, -1, -2, -5, -16, -5, -5, -11,
					-- layer=3 filter=79 channel=58
					-14, -15, -8, 8, -5, 4, 2, -13, -11,
					-- layer=3 filter=79 channel=59
					-22, -15, -15, -9, 4, 0, 0, 4, 6,
					-- layer=3 filter=79 channel=60
					-19, 10, -16, -12, -17, 2, -17, 0, -4,
					-- layer=3 filter=79 channel=61
					-25, -17, 3, 4, -12, -7, -3, 0, -8,
					-- layer=3 filter=79 channel=62
					-5, -10, -10, -9, -14, -10, -12, 10, -17,
					-- layer=3 filter=79 channel=63
					12, -5, 7, -4, 12, 5, -5, -10, 11,
					-- layer=3 filter=80 channel=0
					-11, -10, 0, -5, 8, -4, 12, 9, -1,
					-- layer=3 filter=80 channel=1
					-5, 7, 3, 10, 0, 4, -15, 6, 0,
					-- layer=3 filter=80 channel=2
					-13, -9, -11, 4, 0, 8, -2, 4, 4,
					-- layer=3 filter=80 channel=3
					-11, 0, -1, -5, -9, -6, 9, -8, 12,
					-- layer=3 filter=80 channel=4
					9, 13, 3, -13, -16, -12, -13, 9, -19,
					-- layer=3 filter=80 channel=5
					-5, 6, -4, 13, 0, 0, 5, -7, 8,
					-- layer=3 filter=80 channel=6
					1, 7, -13, 10, 12, -9, -15, -14, 0,
					-- layer=3 filter=80 channel=7
					8, -15, -12, 7, 2, -6, 1, -15, 1,
					-- layer=3 filter=80 channel=8
					7, -5, 14, -3, -9, -12, -12, -1, -2,
					-- layer=3 filter=80 channel=9
					0, 0, -10, 4, -8, -12, -14, 4, 11,
					-- layer=3 filter=80 channel=10
					-2, 10, 0, 7, 0, 4, 3, -5, -10,
					-- layer=3 filter=80 channel=11
					-13, 8, 14, 1, 3, 0, -8, -6, 3,
					-- layer=3 filter=80 channel=12
					4, -9, -2, -3, -12, -13, 8, 11, 1,
					-- layer=3 filter=80 channel=13
					-14, -7, 0, -9, 9, 1, -5, -8, -11,
					-- layer=3 filter=80 channel=14
					0, -2, -5, 14, 0, -6, 4, -17, -12,
					-- layer=3 filter=80 channel=15
					-14, -14, 9, 9, -1, 0, -6, -10, 3,
					-- layer=3 filter=80 channel=16
					3, 11, 3, 0, -3, 1, 13, 13, -1,
					-- layer=3 filter=80 channel=17
					-17, 5, 1, 0, -12, 5, 4, -1, 5,
					-- layer=3 filter=80 channel=18
					-22, 2, -5, 3, -3, 7, 8, -23, -9,
					-- layer=3 filter=80 channel=19
					12, 1, 9, -6, -9, 10, -17, 6, 0,
					-- layer=3 filter=80 channel=20
					-2, 4, 6, 12, -1, 6, 5, -5, -16,
					-- layer=3 filter=80 channel=21
					9, 6, 11, -16, -10, -14, -10, -17, -8,
					-- layer=3 filter=80 channel=22
					2, -3, -2, 9, 2, 13, 0, 1, -8,
					-- layer=3 filter=80 channel=23
					0, -13, 6, -10, -12, 6, 9, -16, 6,
					-- layer=3 filter=80 channel=24
					0, -2, 0, 4, -10, -8, -8, -4, -17,
					-- layer=3 filter=80 channel=25
					-7, -6, 10, -19, -14, -13, -4, -16, -13,
					-- layer=3 filter=80 channel=26
					8, 13, -3, -6, 1, -5, 14, 6, -13,
					-- layer=3 filter=80 channel=27
					-16, 12, 3, -6, 0, -6, 5, -1, -1,
					-- layer=3 filter=80 channel=28
					-5, -6, 12, -6, 1, 0, 6, -4, -12,
					-- layer=3 filter=80 channel=29
					-7, 16, -9, -10, 12, -14, 7, -5, -20,
					-- layer=3 filter=80 channel=30
					8, -10, -5, 8, -12, -14, -9, -13, 8,
					-- layer=3 filter=80 channel=31
					-3, -15, 0, 11, 6, -10, -2, 4, -13,
					-- layer=3 filter=80 channel=32
					12, 5, -2, 5, -6, -12, 3, -15, -1,
					-- layer=3 filter=80 channel=33
					3, -4, -15, 5, 9, 8, -13, 7, -6,
					-- layer=3 filter=80 channel=34
					5, 9, 2, 4, -14, -12, 2, -4, -1,
					-- layer=3 filter=80 channel=35
					-11, 0, -15, -12, 1, 1, 1, -16, -19,
					-- layer=3 filter=80 channel=36
					8, -8, -1, 6, -7, -14, 8, -1, -10,
					-- layer=3 filter=80 channel=37
					10, -18, 7, -15, 11, -7, 6, 6, -18,
					-- layer=3 filter=80 channel=38
					-18, 9, -13, 8, -1, -17, -10, 3, 3,
					-- layer=3 filter=80 channel=39
					4, 1, 2, 12, -11, 0, -14, 3, 14,
					-- layer=3 filter=80 channel=40
					-4, -1, 0, 3, 3, 7, -15, -4, 5,
					-- layer=3 filter=80 channel=41
					0, -11, -10, -17, 9, 9, -1, -13, -8,
					-- layer=3 filter=80 channel=42
					7, -13, -12, -7, -13, 3, -7, -6, -8,
					-- layer=3 filter=80 channel=43
					-15, 12, 1, 1, -9, 7, -6, -13, -5,
					-- layer=3 filter=80 channel=44
					-3, -5, -8, -14, 9, 14, 10, 6, 4,
					-- layer=3 filter=80 channel=45
					12, 4, -15, -6, -2, 1, -14, -1, 2,
					-- layer=3 filter=80 channel=46
					-5, -14, -2, 10, 2, -4, -3, -5, -9,
					-- layer=3 filter=80 channel=47
					-15, -5, -15, -7, -5, -1, -23, -20, -21,
					-- layer=3 filter=80 channel=48
					-12, -14, 7, -4, 9, -12, -8, 3, -10,
					-- layer=3 filter=80 channel=49
					0, -11, -6, -18, 2, 11, -22, -13, -6,
					-- layer=3 filter=80 channel=50
					-9, -5, -16, 0, 5, 2, 4, -19, -2,
					-- layer=3 filter=80 channel=51
					-4, -9, -6, -4, -12, -7, -1, 0, -13,
					-- layer=3 filter=80 channel=52
					-11, -12, 0, -12, -1, -10, 4, -16, -7,
					-- layer=3 filter=80 channel=53
					7, 9, -7, -14, 0, -14, 8, -9, 9,
					-- layer=3 filter=80 channel=54
					-11, 7, 6, -12, -8, 8, -13, -7, 7,
					-- layer=3 filter=80 channel=55
					-3, -6, -4, 12, -3, -15, -11, -9, 1,
					-- layer=3 filter=80 channel=56
					5, -6, 5, 3, 9, 2, 8, -2, -11,
					-- layer=3 filter=80 channel=57
					0, -17, 0, -14, -12, 4, 7, 6, -1,
					-- layer=3 filter=80 channel=58
					-6, -6, 14, -4, -17, -8, -10, 4, -7,
					-- layer=3 filter=80 channel=59
					-2, 9, 8, -11, -2, -19, -22, 1, 7,
					-- layer=3 filter=80 channel=60
					-5, -1, -2, -10, 1, 2, -8, -16, -6,
					-- layer=3 filter=80 channel=61
					-11, -18, -12, 8, -11, 6, 0, 0, -13,
					-- layer=3 filter=80 channel=62
					-7, 14, -13, -3, 9, -6, -5, -8, -12,
					-- layer=3 filter=80 channel=63
					-1, 6, 6, -3, -7, -11, -8, 8, 8,
					-- layer=3 filter=81 channel=0
					-19, -18, -11, 7, 0, 0, -16, 14, 28,
					-- layer=3 filter=81 channel=1
					9, 38, 14, -50, 15, -16, -40, 0, -5,
					-- layer=3 filter=81 channel=2
					-14, 33, -5, -16, -8, -8, 4, -20, -24,
					-- layer=3 filter=81 channel=3
					-10, 24, 1, -35, 6, -35, -2, 54, 0,
					-- layer=3 filter=81 channel=4
					20, 2, 30, 31, 6, 7, -27, -17, -16,
					-- layer=3 filter=81 channel=5
					4, 22, 18, 18, 25, 7, 4, 23, 8,
					-- layer=3 filter=81 channel=6
					-19, 4, -44, -8, 47, -40, -15, 37, -59,
					-- layer=3 filter=81 channel=7
					10, 17, 26, -23, -24, -4, 6, -8, -5,
					-- layer=3 filter=81 channel=8
					2, 67, 23, -8, -13, 15, -11, 6, -11,
					-- layer=3 filter=81 channel=9
					-19, 3, 21, 43, 6, -6, -17, 4, 33,
					-- layer=3 filter=81 channel=10
					7, -9, 39, -1, -27, 26, 14, 31, 58,
					-- layer=3 filter=81 channel=11
					-5, -12, -24, -8, -39, -74, -4, -37, -64,
					-- layer=3 filter=81 channel=12
					-5, 3, 13, -1, 3, -11, -18, 11, 0,
					-- layer=3 filter=81 channel=13
					-4, 12, 25, 31, 0, -19, 17, 9, -21,
					-- layer=3 filter=81 channel=14
					53, 34, -9, -29, 50, -12, -48, -19, -68,
					-- layer=3 filter=81 channel=15
					13, -4, -20, 0, 39, 19, -15, 15, 11,
					-- layer=3 filter=81 channel=16
					32, 60, 64, 15, -50, 41, 36, 18, 33,
					-- layer=3 filter=81 channel=17
					20, 49, 25, 35, 13, -12, -8, -31, -8,
					-- layer=3 filter=81 channel=18
					-23, 37, 11, -18, -33, 7, -4, -11, 18,
					-- layer=3 filter=81 channel=19
					-1, 18, 16, -39, 3, -35, 4, 21, -32,
					-- layer=3 filter=81 channel=20
					-16, -3, -29, -42, -81, -10, 7, 16, -16,
					-- layer=3 filter=81 channel=21
					5, -2, 59, 45, -7, -50, 2, -40, -70,
					-- layer=3 filter=81 channel=22
					-11, -14, 8, 9, -13, -14, -4, 6, 17,
					-- layer=3 filter=81 channel=23
					-15, 28, -7, -29, -79, -39, -4, -11, 2,
					-- layer=3 filter=81 channel=24
					-2, 0, 41, -20, 0, 5, 30, -33, 3,
					-- layer=3 filter=81 channel=25
					-12, -16, -16, 6, -2, 3, -27, -8, -7,
					-- layer=3 filter=81 channel=26
					1, -5, 0, 0, -5, 0, 3, 10, -10,
					-- layer=3 filter=81 channel=27
					13, 37, 32, -1, -52, -21, 10, -47, -26,
					-- layer=3 filter=81 channel=28
					16, -12, -4, 12, 9, -3, -10, 9, 12,
					-- layer=3 filter=81 channel=29
					5, 11, -12, 61, 57, -7, -30, 1, -18,
					-- layer=3 filter=81 channel=30
					-10, -3, 11, 12, 13, 4, 6, -2, 2,
					-- layer=3 filter=81 channel=31
					38, -12, -1, -9, -40, -32, -11, -42, -48,
					-- layer=3 filter=81 channel=32
					-24, -4, -4, 26, 20, 13, 55, 15, 42,
					-- layer=3 filter=81 channel=33
					-30, 10, 24, 29, -42, -39, -9, 12, -6,
					-- layer=3 filter=81 channel=34
					-16, -32, 6, 13, -16, 0, -8, -43, -35,
					-- layer=3 filter=81 channel=35
					-6, 26, 18, -24, -47, -26, -14, -16, -4,
					-- layer=3 filter=81 channel=36
					39, 40, 8, 12, 10, 10, -37, -17, -23,
					-- layer=3 filter=81 channel=37
					67, 28, 27, -1, -60, -69, -43, 8, -23,
					-- layer=3 filter=81 channel=38
					9, -24, -30, -2, 19, -17, -4, 33, 44,
					-- layer=3 filter=81 channel=39
					-6, 0, -3, 2, -3, -1, -12, -7, 1,
					-- layer=3 filter=81 channel=40
					-15, 40, -33, -15, -42, -30, 17, -33, 1,
					-- layer=3 filter=81 channel=41
					3, 31, 31, 23, -13, 7, -6, -18, 16,
					-- layer=3 filter=81 channel=42
					-1, 4, 0, -10, -18, -28, 7, -3, -3,
					-- layer=3 filter=81 channel=43
					-68, -27, -41, -42, 1, -54, 19, 28, 7,
					-- layer=3 filter=81 channel=44
					5, 11, 17, 1, 0, -5, -11, -10, 8,
					-- layer=3 filter=81 channel=45
					22, 43, 17, -7, 49, -37, -21, -34, -36,
					-- layer=3 filter=81 channel=46
					13, -25, 2, 35, 24, 58, 10, 42, 31,
					-- layer=3 filter=81 channel=47
					-3, 39, 16, 6, 60, 28, 20, 27, -11,
					-- layer=3 filter=81 channel=48
					15, 1, 40, -3, 37, 34, -41, 19, -1,
					-- layer=3 filter=81 channel=49
					34, -7, 14, 16, 14, 2, -5, -33, -33,
					-- layer=3 filter=81 channel=50
					46, -5, -52, 31, -39, -57, -49, 14, -27,
					-- layer=3 filter=81 channel=51
					55, 6, 14, 16, 45, 9, 3, 4, 8,
					-- layer=3 filter=81 channel=52
					21, -17, 17, -18, -15, -28, -39, -9, 20,
					-- layer=3 filter=81 channel=53
					-6, 9, 27, 32, -54, -35, -65, -35, -4,
					-- layer=3 filter=81 channel=54
					-7, -32, -15, -26, 5, 0, 17, 55, 47,
					-- layer=3 filter=81 channel=55
					4, 28, 14, 17, 19, -31, 0, 9, 14,
					-- layer=3 filter=81 channel=56
					0, 13, 50, -20, 66, 46, -6, 41, 0,
					-- layer=3 filter=81 channel=57
					-6, -15, 13, -19, -92, 45, -60, -47, -16,
					-- layer=3 filter=81 channel=58
					-22, 20, 31, -19, -27, -34, 47, 21, -13,
					-- layer=3 filter=81 channel=59
					-9, -44, 1, -34, -3, -3, 24, 24, 37,
					-- layer=3 filter=81 channel=60
					37, -13, -9, -21, -74, -70, -9, -56, -5,
					-- layer=3 filter=81 channel=61
					-7, 0, -17, 10, -14, 29, 17, -5, 32,
					-- layer=3 filter=81 channel=62
					5, 26, 12, -26, 22, 6, -8, 38, -3,
					-- layer=3 filter=81 channel=63
					13, 4, -9, 10, -2, -8, -6, -5, 0,
					-- layer=3 filter=82 channel=0
					2, -38, -2, -18, -67, -27, -1, -83, -8,
					-- layer=3 filter=82 channel=1
					-15, 40, 2, 12, -61, 7, 27, -39, 44,
					-- layer=3 filter=82 channel=2
					-4, -14, -1, 44, 12, -17, 50, -4, 22,
					-- layer=3 filter=82 channel=3
					-6, -4, -36, -9, 97, -8, -19, 14, -15,
					-- layer=3 filter=82 channel=4
					-35, -25, -4, -15, 8, -17, -4, 25, 11,
					-- layer=3 filter=82 channel=5
					19, -3, 9, 15, 20, 3, 11, 21, -6,
					-- layer=3 filter=82 channel=6
					-28, 5, -18, -12, 62, -16, -9, -1, -10,
					-- layer=3 filter=82 channel=7
					7, 28, -7, 18, -41, -59, 18, -35, -51,
					-- layer=3 filter=82 channel=8
					28, -6, -9, -50, 30, 5, 10, -26, -14,
					-- layer=3 filter=82 channel=9
					-63, -13, -8, 2, -16, 14, -3, 11, 3,
					-- layer=3 filter=82 channel=10
					20, 17, -9, 0, 15, -32, 18, 7, 30,
					-- layer=3 filter=82 channel=11
					-21, -1, 14, 7, -54, 14, -44, 4, 25,
					-- layer=3 filter=82 channel=12
					9, 0, 5, -14, -99, -20, 11, -46, 12,
					-- layer=3 filter=82 channel=13
					28, -19, 23, 36, -25, 0, 6, -12, -18,
					-- layer=3 filter=82 channel=14
					48, 33, 29, 24, 15, -52, 28, -33, -47,
					-- layer=3 filter=82 channel=15
					-4, -7, -25, 7, -74, -49, 23, 45, 9,
					-- layer=3 filter=82 channel=16
					0, 31, 36, -18, 29, -33, -44, -51, -42,
					-- layer=3 filter=82 channel=17
					-1, -3, -22, -10, -37, -12, -37, -3, 38,
					-- layer=3 filter=82 channel=18
					-11, -47, -50, 19, 2, -41, -21, -13, -16,
					-- layer=3 filter=82 channel=19
					15, 6, 23, 25, 29, -27, -25, -22, -35,
					-- layer=3 filter=82 channel=20
					13, 19, 20, 7, 26, -13, 36, -17, 38,
					-- layer=3 filter=82 channel=21
					-35, -6, -6, -41, -16, 75, -43, 14, 47,
					-- layer=3 filter=82 channel=22
					12, 2, 15, -7, -1, 0, -12, 4, 6,
					-- layer=3 filter=82 channel=23
					44, 18, 17, 1, -22, 28, -28, 19, 10,
					-- layer=3 filter=82 channel=24
					-11, -28, 2, -15, -38, -24, 2, -12, -37,
					-- layer=3 filter=82 channel=25
					39, 35, -8, 14, -1, -13, 16, 18, 0,
					-- layer=3 filter=82 channel=26
					7, 7, -13, -4, 9, -13, 7, 0, 15,
					-- layer=3 filter=82 channel=27
					32, 0, 27, 18, -20, 17, 37, -8, 14,
					-- layer=3 filter=82 channel=28
					-1, 4, 7, 8, 0, -6, 7, 11, -2,
					-- layer=3 filter=82 channel=29
					-103, -80, -69, -75, 11, -10, -38, 28, 11,
					-- layer=3 filter=82 channel=30
					4, 8, -12, -12, 11, -14, 7, 10, 2,
					-- layer=3 filter=82 channel=31
					-79, -17, -4, -36, -22, -38, -91, -105, -95,
					-- layer=3 filter=82 channel=32
					-23, 7, 47, -21, -56, -5, 9, -67, -10,
					-- layer=3 filter=82 channel=33
					-4, -42, 15, 55, 16, -15, 30, 64, 27,
					-- layer=3 filter=82 channel=34
					0, 40, -19, 8, 25, 25, -13, 15, -14,
					-- layer=3 filter=82 channel=35
					32, -14, -12, 6, 0, -9, -3, -38, -18,
					-- layer=3 filter=82 channel=36
					23, 31, 4, 31, 28, -68, 11, -56, -49,
					-- layer=3 filter=82 channel=37
					-17, -2, 38, -11, 32, -38, -18, -47, -25,
					-- layer=3 filter=82 channel=38
					-51, -20, 9, -36, -51, 4, -55, -65, -46,
					-- layer=3 filter=82 channel=39
					1, 14, 10, 0, 5, -3, -13, -8, 15,
					-- layer=3 filter=82 channel=40
					54, -21, 45, -19, -21, -7, 5, 2, 7,
					-- layer=3 filter=82 channel=41
					-19, 107, 49, -3, 29, 37, -34, -22, -37,
					-- layer=3 filter=82 channel=42
					24, 1, -14, 6, 20, -2, -8, 3, -19,
					-- layer=3 filter=82 channel=43
					-53, -12, -55, 14, 25, -58, -52, -25, -14,
					-- layer=3 filter=82 channel=44
					3, -9, -6, 10, 10, 12, 10, -13, -3,
					-- layer=3 filter=82 channel=45
					30, 20, 34, 34, -27, -45, 41, -45, 22,
					-- layer=3 filter=82 channel=46
					-31, -15, -36, -30, -49, -31, -70, -55, -78,
					-- layer=3 filter=82 channel=47
					-18, 2, -15, -1, -36, -10, 25, 33, 53,
					-- layer=3 filter=82 channel=48
					-21, 19, -27, 22, -33, -20, 14, -37, -11,
					-- layer=3 filter=82 channel=49
					-48, 65, 45, -21, -49, 18, -38, -3, -28,
					-- layer=3 filter=82 channel=50
					-77, -44, 15, -74, 69, 37, -41, -5, -12,
					-- layer=3 filter=82 channel=51
					-51, -37, -49, -36, -27, 50, -3, -7, 34,
					-- layer=3 filter=82 channel=52
					-20, -15, 16, -5, -30, -4, -4, -45, 2,
					-- layer=3 filter=82 channel=53
					-72, 3, 40, -43, 1, 21, 21, 7, -2,
					-- layer=3 filter=82 channel=54
					-35, 24, -36, -43, 39, -44, -34, -22, -44,
					-- layer=3 filter=82 channel=55
					-7, 7, 3, 10, -47, -14, 33, -28, 15,
					-- layer=3 filter=82 channel=56
					-41, -45, -12, -4, -42, 10, 8, 32, 50,
					-- layer=3 filter=82 channel=57
					0, 26, 58, 31, 81, 3, -24, 5, -92,
					-- layer=3 filter=82 channel=58
					12, -29, -18, 23, 49, -5, 14, 17, 8,
					-- layer=3 filter=82 channel=59
					1, -1, -10, -69, 3, -25, -33, -69, -46,
					-- layer=3 filter=82 channel=60
					19, -25, 2, 24, 41, 7, 0, 11, 3,
					-- layer=3 filter=82 channel=61
					10, 22, -21, -8, -46, 42, -4, -6, 26,
					-- layer=3 filter=82 channel=62
					43, 22, 12, -7, -6, 4, -33, -26, 49,
					-- layer=3 filter=82 channel=63
					-2, -3, 2, -22, -7, 6, -13, 8, -16,
					-- layer=3 filter=83 channel=0
					-18, 16, 21, 11, 3, 58, -2, 20, 25,
					-- layer=3 filter=83 channel=1
					-53, -60, -54, -32, 39, -40, -17, 11, -66,
					-- layer=3 filter=83 channel=2
					-76, -23, -31, -38, 34, -20, -22, 24, -34,
					-- layer=3 filter=83 channel=3
					36, 16, 23, 2, 13, 4, 4, 30, 23,
					-- layer=3 filter=83 channel=4
					4, 34, -17, -10, 19, -15, 4, -14, 7,
					-- layer=3 filter=83 channel=5
					13, 16, 10, 17, -3, 8, 16, 22, 12,
					-- layer=3 filter=83 channel=6
					43, 38, 11, 11, 34, -13, 40, -16, 16,
					-- layer=3 filter=83 channel=7
					-68, -19, -33, -67, 32, 34, -50, 33, 24,
					-- layer=3 filter=83 channel=8
					18, 13, 28, -43, 52, -7, -6, 6, -6,
					-- layer=3 filter=83 channel=9
					23, 0, 9, 15, 47, 1, 34, 26, 6,
					-- layer=3 filter=83 channel=10
					-41, -83, -127, -15, -9, -27, -21, 34, -39,
					-- layer=3 filter=83 channel=11
					18, 23, -31, 2, 36, 3, 33, 31, 34,
					-- layer=3 filter=83 channel=12
					32, -9, 25, 50, 42, 76, 45, 81, 32,
					-- layer=3 filter=83 channel=13
					-38, -33, -50, -65, -1, -36, -22, 19, -18,
					-- layer=3 filter=83 channel=14
					0, 38, 26, 8, 14, -15, -34, -39, -5,
					-- layer=3 filter=83 channel=15
					-51, 23, 1, -16, 22, -72, -5, -6, -56,
					-- layer=3 filter=83 channel=16
					-44, -73, -31, -6, 5, 9, 31, 42, -31,
					-- layer=3 filter=83 channel=17
					-7, -3, -6, 24, -29, 9, -13, -36, -34,
					-- layer=3 filter=83 channel=18
					9, -16, -23, -6, -22, 11, 5, 0, 38,
					-- layer=3 filter=83 channel=19
					-16, -48, -56, -3, -12, -36, -15, -37, -10,
					-- layer=3 filter=83 channel=20
					-7, 54, 21, -22, -7, 55, -74, 8, -34,
					-- layer=3 filter=83 channel=21
					-15, -17, -135, -33, 40, -87, 45, -22, 0,
					-- layer=3 filter=83 channel=22
					-8, -7, 4, -3, 13, -1, 8, -4, 9,
					-- layer=3 filter=83 channel=23
					-74, -10, 20, 0, 14, 83, -4, 21, 11,
					-- layer=3 filter=83 channel=24
					25, -7, -10, 8, -4, 38, -18, -26, 34,
					-- layer=3 filter=83 channel=25
					-38, 22, 7, -34, 8, 17, -21, -29, 23,
					-- layer=3 filter=83 channel=26
					5, 0, -16, -14, -11, 0, -2, -15, -7,
					-- layer=3 filter=83 channel=27
					16, 37, 17, -21, -25, 24, 0, -12, -5,
					-- layer=3 filter=83 channel=28
					11, -3, 9, 7, -1, 0, -3, -12, 4,
					-- layer=3 filter=83 channel=29
					32, 29, 52, -23, -48, -12, 25, -46, 2,
					-- layer=3 filter=83 channel=30
					-13, 7, -9, 7, -2, 3, -14, 0, -16,
					-- layer=3 filter=83 channel=31
					-3, 14, 21, 6, -72, 15, -34, 25, -24,
					-- layer=3 filter=83 channel=32
					10, -45, 16, 49, 7, -3, -35, 37, 2,
					-- layer=3 filter=83 channel=33
					19, -33, -15, 41, 26, -23, 9, 72, -46,
					-- layer=3 filter=83 channel=34
					11, -2, 21, 21, 33, 10, 22, 0, 28,
					-- layer=3 filter=83 channel=35
					-18, 8, 1, 15, 15, 14, 19, 11, 21,
					-- layer=3 filter=83 channel=36
					-31, 25, -45, -5, 100, 36, -26, 9, -31,
					-- layer=3 filter=83 channel=37
					4, 42, -16, 23, 91, -66, 56, -12, -14,
					-- layer=3 filter=83 channel=38
					-9, -6, -3, 33, -42, -20, 30, 37, 0,
					-- layer=3 filter=83 channel=39
					-10, -3, 5, 12, 11, 2, -11, 9, 5,
					-- layer=3 filter=83 channel=40
					-68, -18, -9, -18, -55, 30, -58, -19, -26,
					-- layer=3 filter=83 channel=41
					28, -41, -1, 33, 4, -1, 1, 14, 5,
					-- layer=3 filter=83 channel=42
					5, -13, -29, -31, 21, -6, 3, -18, -9,
					-- layer=3 filter=83 channel=43
					15, 30, 27, -25, 50, 16, -6, -55, -43,
					-- layer=3 filter=83 channel=44
					4, 0, 11, 1, 8, 9, -6, 6, 3,
					-- layer=3 filter=83 channel=45
					-32, 17, -26, -26, 31, -33, -58, -30, -47,
					-- layer=3 filter=83 channel=46
					-9, -60, 18, 16, 17, 11, -8, 21, 34,
					-- layer=3 filter=83 channel=47
					5, 37, -5, -12, 24, 46, 43, 47, 33,
					-- layer=3 filter=83 channel=48
					-16, 5, -55, -26, -103, -51, -53, -9, -47,
					-- layer=3 filter=83 channel=49
					-50, -38, -65, 30, 31, -55, -12, 25, 25,
					-- layer=3 filter=83 channel=50
					36, 12, -18, 9, 56, 20, 29, -1, 21,
					-- layer=3 filter=83 channel=51
					-31, -14, -29, -60, -11, -42, -40, -83, -24,
					-- layer=3 filter=83 channel=52
					-52, -49, -53, -23, -12, -12, -23, 13, -2,
					-- layer=3 filter=83 channel=53
					8, 9, -63, -13, -22, 2, 2, -30, -61,
					-- layer=3 filter=83 channel=54
					16, -8, -41, -5, 16, -18, -9, -25, 6,
					-- layer=3 filter=83 channel=55
					-85, -49, -57, -1, -37, 9, -64, 43, -10,
					-- layer=3 filter=83 channel=56
					13, 10, -30, -38, 1, -20, 20, 25, -60,
					-- layer=3 filter=83 channel=57
					28, -4, -16, 32, 28, 34, -11, 33, 40,
					-- layer=3 filter=83 channel=58
					-90, -4, -14, -102, 0, -28, -49, -47, -37,
					-- layer=3 filter=83 channel=59
					-52, -22, 30, -28, 50, -8, -37, 15, -30,
					-- layer=3 filter=83 channel=60
					4, 19, 23, 17, 23, 19, 23, 12, 27,
					-- layer=3 filter=83 channel=61
					2, -32, -7, -14, -13, 47, 8, 27, 19,
					-- layer=3 filter=83 channel=62
					12, 2, -28, -52, 19, -70, -21, -26, -63,
					-- layer=3 filter=83 channel=63
					19, 17, 24, -4, -5, 0, 17, 29, 10,
					-- layer=3 filter=84 channel=0
					-14, -5, 0, -3, -9, -3, 0, -13, 4,
					-- layer=3 filter=84 channel=1
					13, -10, 0, -13, -4, 0, -13, -11, -3,
					-- layer=3 filter=84 channel=2
					-12, 10, -5, 0, -7, -1, 10, 8, -5,
					-- layer=3 filter=84 channel=3
					-16, 0, -10, -3, 4, 2, -18, 1, 9,
					-- layer=3 filter=84 channel=4
					-8, -12, -6, -1, 10, -10, -13, -9, 8,
					-- layer=3 filter=84 channel=5
					2, -13, 0, 8, 9, 4, 8, -9, -12,
					-- layer=3 filter=84 channel=6
					2, -9, 3, 12, -12, -1, 8, -16, -5,
					-- layer=3 filter=84 channel=7
					9, 1, 3, -7, 7, -11, 5, 8, 6,
					-- layer=3 filter=84 channel=8
					-2, -4, 6, 12, 0, -8, 4, -6, -5,
					-- layer=3 filter=84 channel=9
					4, 3, -13, -1, 5, -6, -2, -4, 7,
					-- layer=3 filter=84 channel=10
					-5, -7, 3, 1, -5, -10, -12, -4, -14,
					-- layer=3 filter=84 channel=11
					1, -18, -14, 0, -12, -11, 7, 2, 10,
					-- layer=3 filter=84 channel=12
					1, -9, -2, 0, -6, -12, -9, -13, 9,
					-- layer=3 filter=84 channel=13
					-7, -15, -1, -2, 1, 4, -14, -10, -7,
					-- layer=3 filter=84 channel=14
					-2, -12, 5, 10, 9, 14, -11, 13, 2,
					-- layer=3 filter=84 channel=15
					7, -8, -3, -8, -1, -8, -11, 8, -8,
					-- layer=3 filter=84 channel=16
					2, -4, -13, 2, 12, 3, 0, 6, 15,
					-- layer=3 filter=84 channel=17
					-10, 4, -17, -16, -4, 10, 3, -10, -1,
					-- layer=3 filter=84 channel=18
					-3, -17, -18, -18, -9, -1, 4, 6, 10,
					-- layer=3 filter=84 channel=19
					0, -9, 13, -1, 9, -2, 2, -7, -14,
					-- layer=3 filter=84 channel=20
					-15, -13, -11, -1, -10, 0, 2, -8, 12,
					-- layer=3 filter=84 channel=21
					-9, -4, -13, -12, -12, -4, -9, 0, -4,
					-- layer=3 filter=84 channel=22
					-5, 2, 6, -9, 7, -3, -14, -8, 12,
					-- layer=3 filter=84 channel=23
					-14, -12, 8, 1, -2, 0, -14, -11, -1,
					-- layer=3 filter=84 channel=24
					0, 0, -1, -1, -10, 6, -15, 6, -12,
					-- layer=3 filter=84 channel=25
					-4, -10, 0, -15, -12, 3, 0, -7, -10,
					-- layer=3 filter=84 channel=26
					-12, 12, 3, -11, 12, -14, -10, 6, -6,
					-- layer=3 filter=84 channel=27
					-14, 1, -1, 2, -14, 5, 7, -8, 7,
					-- layer=3 filter=84 channel=28
					13, -14, -13, -7, 0, 5, -6, -7, -9,
					-- layer=3 filter=84 channel=29
					-10, 0, 9, 2, 4, -5, -12, -7, 5,
					-- layer=3 filter=84 channel=30
					-1, -13, -2, -12, -7, 10, 9, -11, -6,
					-- layer=3 filter=84 channel=31
					-4, 8, 7, 3, -4, 0, -9, 11, -3,
					-- layer=3 filter=84 channel=32
					-12, -2, 2, -12, -2, -2, -13, -14, -11,
					-- layer=3 filter=84 channel=33
					-16, 1, 10, 4, -3, -13, 12, -17, -9,
					-- layer=3 filter=84 channel=34
					4, -6, -12, -15, -13, 2, 3, 2, -2,
					-- layer=3 filter=84 channel=35
					-2, -2, 1, -5, -5, 10, 6, -2, 0,
					-- layer=3 filter=84 channel=36
					-16, -8, 12, 5, 1, -11, -1, -6, -14,
					-- layer=3 filter=84 channel=37
					1, -11, 5, -13, -4, 4, 0, -9, -14,
					-- layer=3 filter=84 channel=38
					-10, 3, -2, -2, -7, -1, -8, -6, -14,
					-- layer=3 filter=84 channel=39
					-8, -2, 3, 2, 6, -5, -3, 4, -12,
					-- layer=3 filter=84 channel=40
					-3, -16, 3, -9, -11, 1, -13, -5, -7,
					-- layer=3 filter=84 channel=41
					8, -8, -2, -10, -7, 11, -4, -8, -9,
					-- layer=3 filter=84 channel=42
					-15, 6, -6, -16, -3, 1, 11, -12, 8,
					-- layer=3 filter=84 channel=43
					-13, -1, 1, 1, 4, -8, 10, -4, 9,
					-- layer=3 filter=84 channel=44
					-12, 3, -1, 11, -9, -5, -9, -1, 12,
					-- layer=3 filter=84 channel=45
					-11, 10, 12, 3, -10, 7, -7, -9, 0,
					-- layer=3 filter=84 channel=46
					0, -19, 8, 2, -7, -6, -10, -20, 9,
					-- layer=3 filter=84 channel=47
					-12, -14, -7, 14, -15, 4, 8, 10, 12,
					-- layer=3 filter=84 channel=48
					7, 0, 3, 11, -11, -8, -4, -10, 11,
					-- layer=3 filter=84 channel=49
					-10, -6, 10, 8, 5, -1, -16, 4, 8,
					-- layer=3 filter=84 channel=50
					7, 2, -3, -18, -18, -8, -19, 3, 1,
					-- layer=3 filter=84 channel=51
					-2, -2, -6, -1, -14, -9, 6, 11, -13,
					-- layer=3 filter=84 channel=52
					-2, -7, 10, 12, -12, -11, -13, 2, -11,
					-- layer=3 filter=84 channel=53
					-2, 2, -7, 1, -13, -14, 10, -5, 2,
					-- layer=3 filter=84 channel=54
					-14, -10, 8, 6, 4, 8, -13, 4, -7,
					-- layer=3 filter=84 channel=55
					-5, 9, -12, 11, -19, 1, -8, 9, 4,
					-- layer=3 filter=84 channel=56
					-14, 3, -6, 3, -16, 1, 5, 5, -2,
					-- layer=3 filter=84 channel=57
					-6, 7, 3, -1, -18, -4, -10, 11, -1,
					-- layer=3 filter=84 channel=58
					2, -2, -6, -6, -6, 4, 0, -13, -4,
					-- layer=3 filter=84 channel=59
					6, 0, -14, 1, 7, -11, 1, -11, -3,
					-- layer=3 filter=84 channel=60
					5, 4, -1, -7, -12, 6, -2, -2, -3,
					-- layer=3 filter=84 channel=61
					-14, -18, -3, -6, -6, 2, -1, -13, -10,
					-- layer=3 filter=84 channel=62
					-2, -7, -10, -1, 4, 6, 14, 4, -9,
					-- layer=3 filter=84 channel=63
					-14, -11, -6, -13, 12, 0, 5, -10, 5,
					-- layer=3 filter=85 channel=0
					-8, 4, 63, 20, -42, -30, -21, -13, -35,
					-- layer=3 filter=85 channel=1
					-20, -20, -18, 3, -17, 23, -57, 19, 14,
					-- layer=3 filter=85 channel=2
					-83, -24, 29, -51, -8, -12, -36, 3, -17,
					-- layer=3 filter=85 channel=3
					60, -23, -27, -29, -35, -18, -21, 37, -6,
					-- layer=3 filter=85 channel=4
					-27, -13, -14, 45, 15, -12, 1, 18, 11,
					-- layer=3 filter=85 channel=5
					-16, -2, -25, -7, -2, -5, -17, 2, -6,
					-- layer=3 filter=85 channel=6
					7, 0, 5, -40, -71, 37, -3, 16, 40,
					-- layer=3 filter=85 channel=7
					48, 23, 2, -62, -3, -30, -109, 26, -54,
					-- layer=3 filter=85 channel=8
					2, 4, -33, -44, -32, -21, -69, 67, 3,
					-- layer=3 filter=85 channel=9
					19, 14, 1, -8, -20, -37, -18, 24, -22,
					-- layer=3 filter=85 channel=10
					0, -8, 10, -41, 2, -12, -21, 48, 51,
					-- layer=3 filter=85 channel=11
					-73, -19, 40, -5, 7, 70, 48, -20, -11,
					-- layer=3 filter=85 channel=12
					37, 13, 31, 9, 22, 8, -32, -13, -27,
					-- layer=3 filter=85 channel=13
					-2, -8, -51, -14, 48, 17, 55, 17, 21,
					-- layer=3 filter=85 channel=14
					11, -6, -44, -35, -38, -5, -11, -55, 26,
					-- layer=3 filter=85 channel=15
					34, -23, -41, -70, -44, 17, 2, -67, -23,
					-- layer=3 filter=85 channel=16
					-17, 43, 20, -4, -31, -50, 22, 28, -7,
					-- layer=3 filter=85 channel=17
					-49, -50, -14, 29, 12, 18, 53, 11, -10,
					-- layer=3 filter=85 channel=18
					-33, -66, 4, -3, -8, -52, 2, 38, -31,
					-- layer=3 filter=85 channel=19
					-20, -57, -48, -56, 13, 29, -20, 4, -28,
					-- layer=3 filter=85 channel=20
					-74, -53, -19, -10, 71, -66, -52, 33, 11,
					-- layer=3 filter=85 channel=21
					-37, -7, 17, -77, 33, 52, 56, -20, -6,
					-- layer=3 filter=85 channel=22
					2, 5, 9, -5, -14, -2, 0, -3, -15,
					-- layer=3 filter=85 channel=23
					-20, 36, 64, 12, -66, -54, 9, 12, -56,
					-- layer=3 filter=85 channel=24
					-27, -66, -50, -45, -70, -11, -12, 43, 4,
					-- layer=3 filter=85 channel=25
					9, 35, -14, 56, 24, 35, -15, -72, -57,
					-- layer=3 filter=85 channel=26
					-9, -3, -6, -7, -1, -3, 0, 9, 7,
					-- layer=3 filter=85 channel=27
					-81, -54, -41, -25, 72, 26, -25, -34, -50,
					-- layer=3 filter=85 channel=28
					-14, -6, -14, 10, 3, -11, -9, 6, -10,
					-- layer=3 filter=85 channel=29
					-22, -28, -39, 21, -33, 53, 62, -21, 20,
					-- layer=3 filter=85 channel=30
					3, -9, 7, 1, 9, 3, 0, 1, -13,
					-- layer=3 filter=85 channel=31
					-37, -33, -47, 34, 10, -49, 23, -54, -73,
					-- layer=3 filter=85 channel=32
					-32, 16, 32, 20, -6, -56, -30, 19, 51,
					-- layer=3 filter=85 channel=33
					-84, -41, -22, -34, -34, -44, 31, 40, 63,
					-- layer=3 filter=85 channel=34
					-9, -54, -41, 7, -11, 19, 44, 16, -17,
					-- layer=3 filter=85 channel=35
					-39, -24, -13, -15, 9, 44, 20, -4, -11,
					-- layer=3 filter=85 channel=36
					-43, -11, -20, -27, 49, 15, -38, 29, 38,
					-- layer=3 filter=85 channel=37
					-68, -36, -7, -8, 26, -16, -3, 24, 12,
					-- layer=3 filter=85 channel=38
					12, -28, -14, -21, -2, 0, 10, -34, -15,
					-- layer=3 filter=85 channel=39
					6, -3, -15, -14, 6, -6, 14, 0, -2,
					-- layer=3 filter=85 channel=40
					-43, 15, 55, 52, -23, -86, 49, 3, 15,
					-- layer=3 filter=85 channel=41
					-9, 7, 7, 22, -20, -1, 10, 48, -14,
					-- layer=3 filter=85 channel=42
					-34, -5, 3, -42, -49, 18, 11, -3, 7,
					-- layer=3 filter=85 channel=43
					24, -3, -54, -45, -10, 54, 41, -6, -6,
					-- layer=3 filter=85 channel=44
					-7, -14, 10, -6, -7, 8, 4, -10, -9,
					-- layer=3 filter=85 channel=45
					15, 10, 8, -46, 59, 40, -56, -85, -15,
					-- layer=3 filter=85 channel=46
					10, 36, 29, 19, 15, -37, 14, -2, 15,
					-- layer=3 filter=85 channel=47
					-18, 0, -15, 37, 32, 0, -9, 2, 28,
					-- layer=3 filter=85 channel=48
					-48, -2, 8, 60, 3, -36, 13, -26, 26,
					-- layer=3 filter=85 channel=49
					-9, -2, 18, -29, 36, 40, 18, -29, 23,
					-- layer=3 filter=85 channel=50
					16, -30, 8, 10, -10, 61, 79, -83, 0,
					-- layer=3 filter=85 channel=51
					19, -16, -22, -18, 19, -36, -20, 34, -9,
					-- layer=3 filter=85 channel=52
					15, 35, -37, 4, -79, -21, -2, -37, 39,
					-- layer=3 filter=85 channel=53
					-42, 25, 72, 65, 18, -41, 45, -14, 16,
					-- layer=3 filter=85 channel=54
					38, 59, -19, 3, 20, -10, -62, 35, -63,
					-- layer=3 filter=85 channel=55
					-7, 17, 33, 35, -35, -16, -5, 24, -32,
					-- layer=3 filter=85 channel=56
					34, 17, -44, -72, -4, -48, -28, -1, -54,
					-- layer=3 filter=85 channel=57
					12, -60, 32, 20, 24, -49, -37, 36, 0,
					-- layer=3 filter=85 channel=58
					2, 0, 6, -79, 1, -19, -55, 37, -41,
					-- layer=3 filter=85 channel=59
					11, 22, 24, -20, -25, -32, -40, -34, -25,
					-- layer=3 filter=85 channel=60
					-69, -18, -44, 8, 5, 1, 24, -7, -42,
					-- layer=3 filter=85 channel=61
					-2, 20, 60, 55, -14, -3, 42, 46, -1,
					-- layer=3 filter=85 channel=62
					15, -23, 1, 29, -3, 53, 23, 79, 19,
					-- layer=3 filter=85 channel=63
					-1, 2, 10, -4, -11, 2, -12, 5, -23,
					-- layer=3 filter=86 channel=0
					-8, 3, -48, -37, -74, -69, 23, 48, 51,
					-- layer=3 filter=86 channel=1
					29, -3, 61, 25, 4, -31, -19, 51, -84,
					-- layer=3 filter=86 channel=2
					7, -29, 8, -10, -22, 12, -18, -24, 22,
					-- layer=3 filter=86 channel=3
					-12, -17, -18, 22, -12, -5, 25, 47, -27,
					-- layer=3 filter=86 channel=4
					12, 10, 34, -10, -36, -37, -55, -16, 14,
					-- layer=3 filter=86 channel=5
					-19, -5, -21, -26, -29, 7, -3, 2, -4,
					-- layer=3 filter=86 channel=6
					-12, -17, -13, 10, 6, -23, -8, 17, 0,
					-- layer=3 filter=86 channel=7
					38, 16, 2, -35, -41, -5, -82, 2, 39,
					-- layer=3 filter=86 channel=8
					-20, -49, -38, -1, 16, -23, -59, 2, 32,
					-- layer=3 filter=86 channel=9
					-32, -5, 0, 8, 32, 43, -58, 55, 31,
					-- layer=3 filter=86 channel=10
					-7, -25, 4, -2, 25, 44, 30, 75, 22,
					-- layer=3 filter=86 channel=11
					-22, -12, -9, 14, -49, -53, -23, -35, -28,
					-- layer=3 filter=86 channel=12
					32, -28, -31, 2, -47, -37, -1, 68, 40,
					-- layer=3 filter=86 channel=13
					44, 22, 18, -49, -69, -21, -45, -22, -73,
					-- layer=3 filter=86 channel=14
					0, -18, -17, -2, -81, -38, 10, 27, -86,
					-- layer=3 filter=86 channel=15
					6, -22, 31, 25, -18, 21, 0, 54, 9,
					-- layer=3 filter=86 channel=16
					13, 44, 54, 58, 3, 43, -20, 19, 7,
					-- layer=3 filter=86 channel=17
					14, 42, 45, -58, -34, -48, 12, -25, 9,
					-- layer=3 filter=86 channel=18
					8, 37, 27, -25, -4, -21, -54, -1, -28,
					-- layer=3 filter=86 channel=19
					53, -16, 59, -32, -41, -43, 7, 35, -21,
					-- layer=3 filter=86 channel=20
					-28, -60, 20, -33, -5, -16, -34, 18, 21,
					-- layer=3 filter=86 channel=21
					-66, -40, 15, 17, -32, -15, -9, -30, -21,
					-- layer=3 filter=86 channel=22
					9, -1, 0, -8, 0, -13, -6, -9, -12,
					-- layer=3 filter=86 channel=23
					-12, 12, -48, -21, -15, -59, -7, -21, 51,
					-- layer=3 filter=86 channel=24
					41, 27, 8, -93, -131, -62, -27, 2, 42,
					-- layer=3 filter=86 channel=25
					41, 41, 26, -44, -45, -16, -9, -18, -6,
					-- layer=3 filter=86 channel=26
					3, -6, 3, 11, 4, -5, 7, -8, 13,
					-- layer=3 filter=86 channel=27
					51, -1, 39, -70, -66, -62, -6, 6, -24,
					-- layer=3 filter=86 channel=28
					-10, 5, -12, -2, 7, -8, -4, 9, -2,
					-- layer=3 filter=86 channel=29
					25, 13, 25, 0, 52, 77, -27, -57, -53,
					-- layer=3 filter=86 channel=30
					5, -3, -13, -14, 0, 10, 4, 0, -14,
					-- layer=3 filter=86 channel=31
					3, -16, 25, 35, 50, 16, 25, -16, -104,
					-- layer=3 filter=86 channel=32
					-17, 14, -18, -26, -4, -24, 43, 18, 25,
					-- layer=3 filter=86 channel=33
					-31, -39, -3, -43, -38, 52, 19, -35, -31,
					-- layer=3 filter=86 channel=34
					40, 21, 24, 12, 0, 10, -32, -20, -41,
					-- layer=3 filter=86 channel=35
					36, 35, 58, -23, -59, -54, -33, -51, -60,
					-- layer=3 filter=86 channel=36
					12, 11, 34, -29, -24, 19, 21, 4, 20,
					-- layer=3 filter=86 channel=37
					-17, -3, 76, -13, 2, -14, -14, 1, -26,
					-- layer=3 filter=86 channel=38
					-7, 24, 57, -15, -44, -13, 5, -20, -7,
					-- layer=3 filter=86 channel=39
					13, 14, 9, -10, 14, 2, -9, 7, 14,
					-- layer=3 filter=86 channel=40
					20, 31, 22, -35, 14, -30, 21, 25, -3,
					-- layer=3 filter=86 channel=41
					35, 35, -11, 9, -39, 21, 30, -26, -3,
					-- layer=3 filter=86 channel=42
					-4, 45, 24, -53, -88, -97, 4, 32, -23,
					-- layer=3 filter=86 channel=43
					42, -47, 2, -45, 17, 1, 0, -24, -23,
					-- layer=3 filter=86 channel=44
					-10, 4, 14, -6, 2, -5, 2, 2, -9,
					-- layer=3 filter=86 channel=45
					62, 41, 40, -9, -78, -57, -94, -18, -107,
					-- layer=3 filter=86 channel=46
					-8, 5, -18, 0, 5, -7, 14, 10, -12,
					-- layer=3 filter=86 channel=47
					-42, -32, -44, 26, 39, 34, 14, 38, 21,
					-- layer=3 filter=86 channel=48
					1, 12, 40, 44, 25, 13, 18, -27, 31,
					-- layer=3 filter=86 channel=49
					-3, 2, 11, -52, -66, -43, 16, -30, -80,
					-- layer=3 filter=86 channel=50
					6, 38, 57, 14, -20, 30, -4, -19, -37,
					-- layer=3 filter=86 channel=51
					6, -20, 25, 7, 0, -4, 34, 83, 44,
					-- layer=3 filter=86 channel=52
					-13, -1, 51, -61, -152, -91, 16, -21, 27,
					-- layer=3 filter=86 channel=53
					13, -26, -60, 79, 25, 5, -34, 8, 15,
					-- layer=3 filter=86 channel=54
					35, -7, 51, -23, -87, -50, -31, 16, -13,
					-- layer=3 filter=86 channel=55
					-26, 2, -8, -24, 19, -13, 48, 44, 48,
					-- layer=3 filter=86 channel=56
					-5, -25, -32, 1, 10, 0, -27, 54, 59,
					-- layer=3 filter=86 channel=57
					15, 49, -21, -16, -67, 13, 6, -55, 19,
					-- layer=3 filter=86 channel=58
					12, -28, -35, -28, 25, 10, -18, 2, 44,
					-- layer=3 filter=86 channel=59
					40, -1, -7, -11, -57, -36, -9, -5, 40,
					-- layer=3 filter=86 channel=60
					24, 36, 29, 7, 3, 43, -66, -45, -22,
					-- layer=3 filter=86 channel=61
					22, 4, 25, -2, 24, -53, 18, -24, -1,
					-- layer=3 filter=86 channel=62
					4, -25, 44, -10, 3, 3, -24, 69, -3,
					-- layer=3 filter=86 channel=63
					-3, -7, 13, -1, -14, 10, 17, 7, 0,
					-- layer=3 filter=87 channel=0
					-9, -14, 9, 0, -8, -7, 3, -4, -16,
					-- layer=3 filter=87 channel=1
					-8, 7, 10, 9, 9, 9, 4, -3, 4,
					-- layer=3 filter=87 channel=2
					0, 6, 6, 9, 3, 2, 0, 0, -10,
					-- layer=3 filter=87 channel=3
					0, -8, 12, -15, -13, 1, 10, -1, -1,
					-- layer=3 filter=87 channel=4
					-12, 5, -1, -17, 5, -7, -12, -13, 8,
					-- layer=3 filter=87 channel=5
					6, -4, 14, -2, 11, -11, -6, -6, -13,
					-- layer=3 filter=87 channel=6
					7, -12, 3, -12, 8, 0, 2, -10, -14,
					-- layer=3 filter=87 channel=7
					6, -3, 6, -17, -17, 2, -14, 8, 8,
					-- layer=3 filter=87 channel=8
					-10, -17, -12, -17, 1, -8, -7, 2, 0,
					-- layer=3 filter=87 channel=9
					-16, -5, -15, -11, -17, -17, 4, 10, 1,
					-- layer=3 filter=87 channel=10
					-8, 3, -18, 4, 10, -17, -10, -11, 8,
					-- layer=3 filter=87 channel=11
					1, 2, -7, -17, 12, -16, -2, 3, -11,
					-- layer=3 filter=87 channel=12
					1, 0, 11, -18, -19, 0, -16, -10, 8,
					-- layer=3 filter=87 channel=13
					-15, 2, -3, 4, -14, 6, -10, -1, 3,
					-- layer=3 filter=87 channel=14
					-3, -6, -13, 9, 8, -2, 10, 0, 2,
					-- layer=3 filter=87 channel=15
					0, 1, -16, 0, 5, -10, 0, 0, 8,
					-- layer=3 filter=87 channel=16
					1, -12, -3, -1, -10, -7, -14, -9, 1,
					-- layer=3 filter=87 channel=17
					-15, 9, -6, 4, 5, 5, 0, -1, 0,
					-- layer=3 filter=87 channel=18
					-18, -17, 9, -3, -6, 13, -9, -16, -6,
					-- layer=3 filter=87 channel=19
					-1, 5, -2, -8, 6, 3, -12, -10, 0,
					-- layer=3 filter=87 channel=20
					-10, 10, -10, -7, -18, -9, -12, -10, -9,
					-- layer=3 filter=87 channel=21
					-17, -4, -15, -11, 1, -5, 13, -6, 1,
					-- layer=3 filter=87 channel=22
					-14, 9, -13, 9, -11, 2, 2, -8, -14,
					-- layer=3 filter=87 channel=23
					0, -5, 2, 0, -17, -8, -6, 9, -6,
					-- layer=3 filter=87 channel=24
					-8, -2, -16, 0, -14, 0, 5, 7, 1,
					-- layer=3 filter=87 channel=25
					-19, 5, 0, 2, 7, -15, -12, 7, -3,
					-- layer=3 filter=87 channel=26
					15, 11, 12, -8, 4, 10, -13, -3, 11,
					-- layer=3 filter=87 channel=27
					2, -2, -8, -13, -4, 2, -8, -13, 8,
					-- layer=3 filter=87 channel=28
					-15, -3, 9, -8, 1, 5, -15, 1, 6,
					-- layer=3 filter=87 channel=29
					-8, -5, 0, 11, 11, 3, -5, 6, -10,
					-- layer=3 filter=87 channel=30
					11, -9, 10, -12, -3, -9, 13, -12, -8,
					-- layer=3 filter=87 channel=31
					4, 4, 6, 3, -3, 2, 12, -8, -7,
					-- layer=3 filter=87 channel=32
					-7, 1, -8, -15, -11, -3, 6, 11, 0,
					-- layer=3 filter=87 channel=33
					-14, -14, 10, -17, -13, 3, 1, -10, -20,
					-- layer=3 filter=87 channel=34
					-3, -6, -2, 8, 0, 2, -13, 6, -14,
					-- layer=3 filter=87 channel=35
					-15, -17, 3, 11, -16, -3, 0, 5, 13,
					-- layer=3 filter=87 channel=36
					-2, -12, -3, 6, -17, -2, 2, -1, -10,
					-- layer=3 filter=87 channel=37
					-19, -13, 0, 7, 2, 5, -1, -6, -3,
					-- layer=3 filter=87 channel=38
					1, 3, 9, -4, -1, 5, 1, -11, -6,
					-- layer=3 filter=87 channel=39
					-9, 6, 0, 2, 8, 14, -4, -15, -13,
					-- layer=3 filter=87 channel=40
					-10, 11, 5, 9, -11, -16, -14, -6, 9,
					-- layer=3 filter=87 channel=41
					-3, -10, -17, 0, -9, -10, 1, 2, -8,
					-- layer=3 filter=87 channel=42
					-7, -5, 0, -7, 7, 6, -9, -1, 11,
					-- layer=3 filter=87 channel=43
					9, 1, -13, -11, -2, -12, 2, -5, -7,
					-- layer=3 filter=87 channel=44
					-7, 5, -1, -1, -6, 9, -11, -6, -8,
					-- layer=3 filter=87 channel=45
					5, -8, -11, 9, 1, -7, -8, -10, 7,
					-- layer=3 filter=87 channel=46
					2, -10, -13, -9, -2, -6, 5, 9, 1,
					-- layer=3 filter=87 channel=47
					1, -3, 8, -17, -14, 6, 12, 0, 2,
					-- layer=3 filter=87 channel=48
					1, -7, 7, -10, -12, 14, 1, -4, -9,
					-- layer=3 filter=87 channel=49
					-10, 0, -8, -1, 8, -5, -6, -16, 8,
					-- layer=3 filter=87 channel=50
					0, -18, 7, 7, -8, 3, -11, 0, -13,
					-- layer=3 filter=87 channel=51
					-6, -6, 4, 2, -12, -11, -13, 12, -10,
					-- layer=3 filter=87 channel=52
					-15, -15, -15, -10, 11, 4, 9, -10, -13,
					-- layer=3 filter=87 channel=53
					-9, 9, -13, 9, -10, 0, -1, -3, -5,
					-- layer=3 filter=87 channel=54
					4, -16, 0, -8, -2, -8, 8, -6, -5,
					-- layer=3 filter=87 channel=55
					0, -5, 1, -13, 9, -10, 10, 2, -5,
					-- layer=3 filter=87 channel=56
					4, -9, 0, -20, 6, 10, -12, -1, 1,
					-- layer=3 filter=87 channel=57
					-21, -5, 2, -7, 10, -10, -18, -1, -15,
					-- layer=3 filter=87 channel=58
					-2, -16, -10, 6, 11, -2, 0, -12, -8,
					-- layer=3 filter=87 channel=59
					-11, 8, -11, 9, 6, -7, -7, -1, -17,
					-- layer=3 filter=87 channel=60
					-7, 8, -2, 7, -6, -2, 2, 11, 7,
					-- layer=3 filter=87 channel=61
					-11, 0, 6, -16, 6, -4, 0, 6, -3,
					-- layer=3 filter=87 channel=62
					-6, -12, 12, -10, 5, 2, -14, 13, -6,
					-- layer=3 filter=87 channel=63
					12, 7, 5, 1, 10, 13, -8, 12, -2,
					-- layer=3 filter=88 channel=0
					-17, -29, -7, -3, 9, 11, -29, -23, -13,
					-- layer=3 filter=88 channel=1
					-25, 5, -9, -21, 13, -1, 10, 34, 37,
					-- layer=3 filter=88 channel=2
					-52, 3, -26, 33, -30, -30, 32, -8, -25,
					-- layer=3 filter=88 channel=3
					0, -38, -19, -23, 37, -25, 27, 67, 32,
					-- layer=3 filter=88 channel=4
					7, -25, 4, -17, -31, -8, -13, 8, -30,
					-- layer=3 filter=88 channel=5
					23, -1, 7, 16, 18, 6, 26, 10, -3,
					-- layer=3 filter=88 channel=6
					-10, 5, -20, -41, -10, -29, 7, 24, 51,
					-- layer=3 filter=88 channel=7
					-19, 0, -17, -32, -44, -20, 49, 35, 33,
					-- layer=3 filter=88 channel=8
					-5, 0, -18, -13, -5, 13, -3, 46, 57,
					-- layer=3 filter=88 channel=9
					10, 10, 17, -7, 46, 21, -72, -41, 3,
					-- layer=3 filter=88 channel=10
					0, -18, 9, -23, 19, 5, -22, 6, -6,
					-- layer=3 filter=88 channel=11
					2, 11, 11, -71, -17, -48, -61, 19, 33,
					-- layer=3 filter=88 channel=12
					-18, -16, -6, 14, 65, 28, 50, 47, 58,
					-- layer=3 filter=88 channel=13
					6, -6, 16, -8, -52, -41, 31, 28, 17,
					-- layer=3 filter=88 channel=14
					16, 40, -11, 6, 9, -23, 33, 44, 2,
					-- layer=3 filter=88 channel=15
					-6, 29, 20, -13, 21, -28, 11, 12, -14,
					-- layer=3 filter=88 channel=16
					3, -54, -13, 29, 3, 21, 47, 31, 35,
					-- layer=3 filter=88 channel=17
					15, 20, 12, 7, -46, 19, -24, -54, 38,
					-- layer=3 filter=88 channel=18
					-14, -1, -41, -14, -35, -58, -33, -35, -93,
					-- layer=3 filter=88 channel=19
					19, -16, -4, -15, -55, -43, 23, -6, -1,
					-- layer=3 filter=88 channel=20
					-24, -43, -26, 0, -10, -27, 16, 1, -25,
					-- layer=3 filter=88 channel=21
					7, -27, 11, -17, 7, 1, -105, -32, 20,
					-- layer=3 filter=88 channel=22
					-3, -2, 10, -8, -9, 6, 1, 11, 7,
					-- layer=3 filter=88 channel=23
					-29, -9, -46, 14, -27, -33, 19, -7, 12,
					-- layer=3 filter=88 channel=24
					-1, -28, 16, -53, -119, -21, 1, -31, -27,
					-- layer=3 filter=88 channel=25
					10, -16, 0, 24, -8, -11, 11, 18, 3,
					-- layer=3 filter=88 channel=26
					-8, 10, 1, -8, -16, 0, 0, 8, 10,
					-- layer=3 filter=88 channel=27
					22, -9, 24, -46, -84, -34, 21, -33, -9,
					-- layer=3 filter=88 channel=28
					8, -2, 6, 13, 1, 9, 8, -3, 0,
					-- layer=3 filter=88 channel=29
					22, 9, -14, -21, -27, -68, -76, -24, -62,
					-- layer=3 filter=88 channel=30
					-10, -5, 10, -3, -10, -8, 7, 6, -5,
					-- layer=3 filter=88 channel=31
					39, 29, 9, 76, -9, -16, -18, -48, -15,
					-- layer=3 filter=88 channel=32
					23, 22, -14, 50, 12, 0, -34, -10, -1,
					-- layer=3 filter=88 channel=33
					1, -10, -22, 7, -6, -6, 62, 20, -24,
					-- layer=3 filter=88 channel=34
					9, 0, 10, 6, -29, -38, -21, -28, -70,
					-- layer=3 filter=88 channel=35
					14, -38, -12, -14, -87, -48, 8, -1, -36,
					-- layer=3 filter=88 channel=36
					-15, 0, -18, 28, -16, -39, 78, -8, -8,
					-- layer=3 filter=88 channel=37
					19, -1, 30, -48, -13, -6, 54, 13, 46,
					-- layer=3 filter=88 channel=38
					32, -17, -42, 46, 12, 28, 28, 32, 18,
					-- layer=3 filter=88 channel=39
					-5, -2, -1, -11, 3, -1, 0, 16, 12,
					-- layer=3 filter=88 channel=40
					0, -49, -36, 48, 19, 6, 1, 6, -27,
					-- layer=3 filter=88 channel=41
					31, 10, -2, 17, 26, 2, -16, 11, 0,
					-- layer=3 filter=88 channel=42
					5, 23, -3, 11, -44, -38, 47, 14, 12,
					-- layer=3 filter=88 channel=43
					-20, -7, -32, 5, 28, -34, 23, 59, 20,
					-- layer=3 filter=88 channel=44
					2, 4, -13, -5, -8, -17, 12, -13, -2,
					-- layer=3 filter=88 channel=45
					-10, 31, -4, -12, -50, -37, 14, 14, 48,
					-- layer=3 filter=88 channel=46
					-24, 24, -1, 16, 8, 17, -40, -23, -32,
					-- layer=3 filter=88 channel=47
					-13, 43, -21, 29, 43, 3, 40, 39, 46,
					-- layer=3 filter=88 channel=48
					-6, 33, -34, 17, 8, 40, 5, 0, -3,
					-- layer=3 filter=88 channel=49
					20, 12, 4, -3, 13, -17, -28, 24, -12,
					-- layer=3 filter=88 channel=50
					34, 1, 5, -83, 0, -6, -66, 6, 31,
					-- layer=3 filter=88 channel=51
					-3, 17, -39, 27, 14, -12, 47, 20, 10,
					-- layer=3 filter=88 channel=52
					13, -14, 29, 11, -58, -46, 2, -1, -30,
					-- layer=3 filter=88 channel=53
					-29, 1, 4, -43, -4, 51, -35, 28, 51,
					-- layer=3 filter=88 channel=54
					-15, -19, -35, -22, -5, -10, -27, 17, -9,
					-- layer=3 filter=88 channel=55
					7, -1, -11, 12, 12, -15, 26, 2, 0,
					-- layer=3 filter=88 channel=56
					-13, 5, 34, -31, 17, 9, -30, 6, -8,
					-- layer=3 filter=88 channel=57
					-17, 4, 7, -10, 0, 11, 0, -31, -63,
					-- layer=3 filter=88 channel=58
					22, 19, -32, 26, 46, 8, 77, 66, 25,
					-- layer=3 filter=88 channel=59
					34, 14, 15, -4, -19, 11, -111, -26, -31,
					-- layer=3 filter=88 channel=60
					-12, -38, -30, -17, -17, -63, -2, -4, -33,
					-- layer=3 filter=88 channel=61
					44, -6, -26, 28, 16, 22, 2, -14, 26,
					-- layer=3 filter=88 channel=62
					-5, 7, 0, 7, 13, -5, -29, 47, 20,
					-- layer=3 filter=88 channel=63
					7, 12, 3, 16, 16, -3, -2, -4, 1,
					-- layer=3 filter=89 channel=0
					-26, -30, -28, -5, -16, -69, -71, -63, -60,
					-- layer=3 filter=89 channel=1
					37, 27, 9, -17, -10, 37, 10, 30, 34,
					-- layer=3 filter=89 channel=2
					-53, -85, -77, 7, -4, -1, 11, -11, -2,
					-- layer=3 filter=89 channel=3
					15, 35, 10, 27, 66, 27, 4, 14, 17,
					-- layer=3 filter=89 channel=4
					-38, -44, 0, 3, 21, 18, -35, -2, 11,
					-- layer=3 filter=89 channel=5
					-3, 3, -4, 8, -5, -18, 5, 6, 7,
					-- layer=3 filter=89 channel=6
					-39, -37, -50, 18, 50, 14, -38, -36, -7,
					-- layer=3 filter=89 channel=7
					0, 21, 8, -13, -40, -4, 32, -4, 32,
					-- layer=3 filter=89 channel=8
					-31, -56, -36, 5, 48, 41, 8, -26, 46,
					-- layer=3 filter=89 channel=9
					45, 34, 8, 16, 31, 10, -15, 6, 46,
					-- layer=3 filter=89 channel=10
					54, 42, 54, 30, 6, 10, 19, 36, 44,
					-- layer=3 filter=89 channel=11
					-32, -35, -46, 1, 0, -31, 17, -22, -17,
					-- layer=3 filter=89 channel=12
					27, 17, -8, 23, -17, -36, -2, -14, -43,
					-- layer=3 filter=89 channel=13
					1, 32, -22, -26, -17, -13, -19, -60, 6,
					-- layer=3 filter=89 channel=14
					23, -37, -17, 21, 14, -28, 13, -11, -15,
					-- layer=3 filter=89 channel=15
					-6, -13, -21, 18, -8, 15, -7, -37, -20,
					-- layer=3 filter=89 channel=16
					44, 53, 9, -8, -78, -24, -9, -20, -17,
					-- layer=3 filter=89 channel=17
					-23, -2, -45, -14, 42, 0, 0, 1, 36,
					-- layer=3 filter=89 channel=18
					-12, -19, -17, -28, 36, -1, 16, -5, -24,
					-- layer=3 filter=89 channel=19
					-11, -18, -18, -11, 6, -6, -20, -17, -29,
					-- layer=3 filter=89 channel=20
					-36, -60, -57, -34, 44, -7, 42, -52, -7,
					-- layer=3 filter=89 channel=21
					-85, -15, -23, -37, 15, -16, -1, -11, 14,
					-- layer=3 filter=89 channel=22
					0, 0, 10, 9, 0, 3, 9, 1, -3,
					-- layer=3 filter=89 channel=23
					-5, 0, -10, -31, -1, -7, -11, -4, -15,
					-- layer=3 filter=89 channel=24
					-21, -66, -48, -11, 28, 0, -14, -26, 5,
					-- layer=3 filter=89 channel=25
					9, 10, -17, -36, -22, -22, -25, -25, -29,
					-- layer=3 filter=89 channel=26
					12, 6, -7, 0, 2, 4, -10, 5, 8,
					-- layer=3 filter=89 channel=27
					-46, -22, -43, -8, 46, -4, -4, -3, -3,
					-- layer=3 filter=89 channel=28
					-3, -9, -6, -3, -12, 10, 13, 12, 2,
					-- layer=3 filter=89 channel=29
					-105, -74, -92, 14, 56, 42, 1, -30, -4,
					-- layer=3 filter=89 channel=30
					-4, -1, 4, 2, -2, -6, 8, -9, -1,
					-- layer=3 filter=89 channel=31
					-18, -19, -63, -9, -6, 12, -3, -85, -74,
					-- layer=3 filter=89 channel=32
					36, 38, 24, -7, -51, -60, 6, 32, 4,
					-- layer=3 filter=89 channel=33
					4, 17, 49, 31, 2, 14, 24, -24, 35,
					-- layer=3 filter=89 channel=34
					-41, 15, 10, 11, 25, 0, 26, 14, 26,
					-- layer=3 filter=89 channel=35
					-8, -25, 9, -23, 7, 19, 27, -2, 14,
					-- layer=3 filter=89 channel=36
					9, -27, 28, -2, -29, 42, 5, -45, 6,
					-- layer=3 filter=89 channel=37
					1, 5, -8, -4, -11, 29, 3, 7, 29,
					-- layer=3 filter=89 channel=38
					36, 28, 10, -2, -26, -2, -23, -5, -2,
					-- layer=3 filter=89 channel=39
					4, 7, -9, -4, 8, 1, -10, 0, 14,
					-- layer=3 filter=89 channel=40
					-23, -9, 4, 2, -14, -19, 3, 10, 2,
					-- layer=3 filter=89 channel=41
					-11, 70, 16, -19, -56, -12, 38, -5, 16,
					-- layer=3 filter=89 channel=42
					-59, -15, 9, 1, 30, 9, -20, -22, 8,
					-- layer=3 filter=89 channel=43
					-29, -43, -27, -21, 20, -16, -12, -3, 2,
					-- layer=3 filter=89 channel=44
					10, 3, 10, -9, 1, 8, 1, -5, 1,
					-- layer=3 filter=89 channel=45
					-9, 7, -2, 13, -36, 2, -10, -31, 59,
					-- layer=3 filter=89 channel=46
					34, 21, 34, -38, -37, -48, -27, 0, -34,
					-- layer=3 filter=89 channel=47
					53, 20, 32, 13, 16, -5, -14, 2, -5,
					-- layer=3 filter=89 channel=48
					3, 23, 64, -58, -73, -33, -30, -5, -44,
					-- layer=3 filter=89 channel=49
					-3, 8, -11, -18, 2, 11, -38, -9, -30,
					-- layer=3 filter=89 channel=50
					-81, -31, 8, 16, 66, 29, -16, 12, 1,
					-- layer=3 filter=89 channel=51
					13, 32, -8, 20, -47, -25, -23, -1, -13,
					-- layer=3 filter=89 channel=52
					-12, -43, -23, -31, -26, -45, -1, -20, -16,
					-- layer=3 filter=89 channel=53
					-6, -14, -21, 25, -7, 27, 28, -2, -3,
					-- layer=3 filter=89 channel=54
					26, 16, 36, -22, -3, 48, -28, -12, 36,
					-- layer=3 filter=89 channel=55
					20, 44, 29, -7, -26, 10, 29, 9, 54,
					-- layer=3 filter=89 channel=56
					29, 2, 14, -27, 8, -12, 21, -44, 22,
					-- layer=3 filter=89 channel=57
					-6, 3, 18, 5, -45, -5, -10, -16, -11,
					-- layer=3 filter=89 channel=58
					1, -19, -24, 17, -55, -4, 4, 4, 25,
					-- layer=3 filter=89 channel=59
					39, -6, 12, -59, 1, -62, -37, -34, -17,
					-- layer=3 filter=89 channel=60
					-19, 31, 4, 16, 32, 50, 4, 4, 1,
					-- layer=3 filter=89 channel=61
					37, 62, 11, -11, -71, -20, -13, 1, 29,
					-- layer=3 filter=89 channel=62
					13, 21, -2, 1, 15, 3, 31, -29, 31,
					-- layer=3 filter=89 channel=63
					-15, 8, 14, -1, 7, 0, 4, 25, -5,
					-- layer=3 filter=90 channel=0
					24, 0, 12, 10, -1, 11, -36, 17, -15,
					-- layer=3 filter=90 channel=1
					35, 18, -3, -29, 3, -37, -4, -2, -4,
					-- layer=3 filter=90 channel=2
					-4, -13, -13, -46, -5, 4, -22, -13, 0,
					-- layer=3 filter=90 channel=3
					14, 3, -18, -13, -48, -40, -56, 6, -46,
					-- layer=3 filter=90 channel=4
					23, 53, 22, 14, -5, 25, -23, -22, -22,
					-- layer=3 filter=90 channel=5
					-1, 24, 8, 9, 3, 25, 10, -1, 8,
					-- layer=3 filter=90 channel=6
					-9, -25, -35, -9, -10, -27, -5, 55, -17,
					-- layer=3 filter=90 channel=7
					0, 6, 43, -23, -41, -24, 0, -5, 36,
					-- layer=3 filter=90 channel=8
					-9, 33, 32, 43, -12, 17, 23, 28, -13,
					-- layer=3 filter=90 channel=9
					11, -15, -26, 38, -6, -17, 37, 18, 20,
					-- layer=3 filter=90 channel=10
					20, 24, 12, 32, 25, 7, 4, -20, 35,
					-- layer=3 filter=90 channel=11
					16, -20, -12, 41, -21, 0, 35, -15, 3,
					-- layer=3 filter=90 channel=12
					3, -9, 8, -10, 4, -22, 22, 16, 24,
					-- layer=3 filter=90 channel=13
					-36, 5, 4, 17, 31, 19, -5, 12, -8,
					-- layer=3 filter=90 channel=14
					4, 11, 10, 17, 17, 30, -31, 37, -40,
					-- layer=3 filter=90 channel=15
					5, 5, 27, 3, 0, -14, 29, 34, 38,
					-- layer=3 filter=90 channel=16
					1, -32, -2, -15, -7, -29, -4, 52, 10,
					-- layer=3 filter=90 channel=17
					-12, 3, 3, 15, 32, 21, -6, 20, -13,
					-- layer=3 filter=90 channel=18
					-9, 13, 15, -10, 5, 39, -27, -10, -22,
					-- layer=3 filter=90 channel=19
					-10, 0, -36, -1, -12, 8, 13, -5, -1,
					-- layer=3 filter=90 channel=20
					26, 17, -15, -26, -37, 39, -27, -5, -17,
					-- layer=3 filter=90 channel=21
					12, 3, 43, 21, -3, -11, 32, -23, -23,
					-- layer=3 filter=90 channel=22
					-2, 4, -11, 10, -1, 6, 10, 12, 12,
					-- layer=3 filter=90 channel=23
					2, 7, 2, -42, 0, -48, -30, -14, -18,
					-- layer=3 filter=90 channel=24
					-14, 4, 17, 34, 32, 34, 20, 14, 1,
					-- layer=3 filter=90 channel=25
					8, -24, -35, -1, 0, -20, -31, -12, -15,
					-- layer=3 filter=90 channel=26
					-11, -12, -11, 13, -3, -1, -6, -4, -15,
					-- layer=3 filter=90 channel=27
					6, 15, -16, -1, -5, 32, -13, -26, -19,
					-- layer=3 filter=90 channel=28
					0, 0, 1, -11, 3, -9, -5, -11, 13,
					-- layer=3 filter=90 channel=29
					56, 4, -6, 36, -22, -23, -26, -14, -5,
					-- layer=3 filter=90 channel=30
					11, 5, -4, -7, 15, 15, 0, 3, 1,
					-- layer=3 filter=90 channel=31
					39, 28, 3, 6, -24, -32, -51, 32, 35,
					-- layer=3 filter=90 channel=32
					38, 8, -39, 12, 14, -4, 18, -14, 11,
					-- layer=3 filter=90 channel=33
					13, 13, 50, -11, 8, -14, -4, -13, -10,
					-- layer=3 filter=90 channel=34
					-3, 21, -22, -40, 13, 21, -31, -21, -5,
					-- layer=3 filter=90 channel=35
					-5, 1, 0, -12, -1, 0, -18, -36, 6,
					-- layer=3 filter=90 channel=36
					33, -26, 41, -15, -32, 29, -2, -13, -8,
					-- layer=3 filter=90 channel=37
					27, 26, -32, 12, -7, -39, 31, 23, 6,
					-- layer=3 filter=90 channel=38
					18, -12, -57, 23, 53, 34, -16, 19, 21,
					-- layer=3 filter=90 channel=39
					-4, -4, 7, 6, 0, -3, -7, -4, -13,
					-- layer=3 filter=90 channel=40
					-5, 10, -35, -8, 19, 0, -39, -28, -31,
					-- layer=3 filter=90 channel=41
					-10, -32, 41, 17, 0, 68, -53, -39, 2,
					-- layer=3 filter=90 channel=42
					-2, -17, -3, 10, 5, -3, -24, 24, 5,
					-- layer=3 filter=90 channel=43
					-48, -77, -12, 10, 13, 13, -2, 18, -3,
					-- layer=3 filter=90 channel=44
					-2, 10, 9, -13, 8, -7, -7, 9, 5,
					-- layer=3 filter=90 channel=45
					41, 3, 2, -18, -22, -25, -35, 18, -25,
					-- layer=3 filter=90 channel=46
					18, 13, -17, -11, 14, 20, 29, 18, 40,
					-- layer=3 filter=90 channel=47
					0, -18, -9, -11, 49, 12, 6, 20, -16,
					-- layer=3 filter=90 channel=48
					19, 9, 41, 24, 28, 64, -28, 48, 23,
					-- layer=3 filter=90 channel=49
					-2, 27, 11, 5, -15, 12, -18, -53, 23,
					-- layer=3 filter=90 channel=50
					-18, -39, -92, 0, -35, -34, -23, -10, -34,
					-- layer=3 filter=90 channel=51
					46, 65, 72, 44, -7, -15, 18, -49, 28,
					-- layer=3 filter=90 channel=52
					3, 8, 8, 7, 30, 17, -42, -8, -15,
					-- layer=3 filter=90 channel=53
					14, 0, 14, 81, -14, -50, -1, 1, 21,
					-- layer=3 filter=90 channel=54
					-31, -28, -49, -30, -8, -22, 26, 1, 23,
					-- layer=3 filter=90 channel=55
					49, -17, 56, -9, 18, 6, -30, 17, 7,
					-- layer=3 filter=90 channel=56
					41, 35, 0, 48, 26, 40, -26, -5, -12,
					-- layer=3 filter=90 channel=57
					12, 21, -27, -20, 14, 17, -20, -39, -28,
					-- layer=3 filter=90 channel=58
					-17, -14, 30, 19, 18, 19, -25, -31, -13,
					-- layer=3 filter=90 channel=59
					7, -43, -9, -25, 3, 8, 35, 13, 4,
					-- layer=3 filter=90 channel=60
					12, 26, -18, -9, -20, -22, -49, -52, -11,
					-- layer=3 filter=90 channel=61
					-16, 4, -27, 2, 34, 0, -13, 7, 14,
					-- layer=3 filter=90 channel=62
					1, 5, -7, 32, 10, 4, 6, 1, -18,
					-- layer=3 filter=90 channel=63
					3, 6, -7, 17, 19, 6, 19, 3, 25,
					-- layer=3 filter=91 channel=0
					4, -16, -15, 1, -3, -3, 9, -27, -15,
					-- layer=3 filter=91 channel=1
					-29, -3, -8, -17, -27, -5, -14, -13, -10,
					-- layer=3 filter=91 channel=2
					6, 23, 13, -16, -5, 20, -4, 0, -3,
					-- layer=3 filter=91 channel=3
					-24, -17, -1, -25, 0, -2, -14, -12, -32,
					-- layer=3 filter=91 channel=4
					-11, 0, -16, -21, 4, 0, 17, 5, -19,
					-- layer=3 filter=91 channel=5
					12, -9, -7, 7, -14, 7, 7, 7, -13,
					-- layer=3 filter=91 channel=6
					4, 6, 0, -16, 0, -7, -27, -15, -23,
					-- layer=3 filter=91 channel=7
					-6, -10, 12, 2, -5, -35, -19, -10, -1,
					-- layer=3 filter=91 channel=8
					-27, -19, -21, -25, -2, -10, 7, -2, -17,
					-- layer=3 filter=91 channel=9
					-6, -17, -12, -19, 9, -24, -11, -2, -19,
					-- layer=3 filter=91 channel=10
					-9, -18, 4, -1, -10, -9, -17, -24, -3,
					-- layer=3 filter=91 channel=11
					-10, 13, -15, -26, 0, 26, -16, 18, -4,
					-- layer=3 filter=91 channel=12
					-7, -18, 5, -11, -30, -11, -21, 0, -17,
					-- layer=3 filter=91 channel=13
					-12, 20, -15, -28, 14, -18, -13, -17, -16,
					-- layer=3 filter=91 channel=14
					-28, 8, 12, 5, 10, -17, -5, -33, -17,
					-- layer=3 filter=91 channel=15
					-20, 0, -22, 0, -24, -16, -6, -15, -27,
					-- layer=3 filter=91 channel=16
					-5, 12, 4, -14, 8, -3, -36, -10, 0,
					-- layer=3 filter=91 channel=17
					-12, 14, 1, -15, -10, 5, -12, 9, -32,
					-- layer=3 filter=91 channel=18
					-12, -38, -22, -16, -21, -10, -12, -21, -13,
					-- layer=3 filter=91 channel=19
					12, -11, -8, -2, 6, -10, -22, 7, 3,
					-- layer=3 filter=91 channel=20
					11, 0, 4, 1, 6, 6, 2, 6, 15,
					-- layer=3 filter=91 channel=21
					-30, -11, 0, -26, -8, 13, -17, 13, -2,
					-- layer=3 filter=91 channel=22
					-10, -11, 6, -10, -6, -11, 7, -3, -14,
					-- layer=3 filter=91 channel=23
					-11, -15, 15, -11, 1, -10, 11, -30, -22,
					-- layer=3 filter=91 channel=24
					-9, -6, -2, -21, -18, -10, -12, -3, -19,
					-- layer=3 filter=91 channel=25
					-2, -33, -22, -22, -21, -19, -11, -10, 1,
					-- layer=3 filter=91 channel=26
					-10, 2, -13, 8, -3, -13, -1, 4, -7,
					-- layer=3 filter=91 channel=27
					3, 30, 9, -15, 1, -9, -29, -23, 13,
					-- layer=3 filter=91 channel=28
					6, -7, -7, 3, 6, 3, 0, -8, 10,
					-- layer=3 filter=91 channel=29
					-10, -15, -19, -17, -15, -17, -11, 9, -17,
					-- layer=3 filter=91 channel=30
					11, -7, 4, 12, 5, 11, 9, 6, 10,
					-- layer=3 filter=91 channel=31
					0, -1, 3, 2, -13, 0, -21, -2, 4,
					-- layer=3 filter=91 channel=32
					0, 0, -26, -11, -7, -23, -16, -18, -24,
					-- layer=3 filter=91 channel=33
					-23, 3, -17, -11, -21, -11, -7, -1, -13,
					-- layer=3 filter=91 channel=34
					-23, -22, -23, -17, -27, 0, 11, -14, -35,
					-- layer=3 filter=91 channel=35
					11, -28, -16, -26, -28, -12, -28, -22, -41,
					-- layer=3 filter=91 channel=36
					2, -20, -33, -28, -13, -13, -25, -17, 6,
					-- layer=3 filter=91 channel=37
					-8, -4, -4, -29, 0, 0, 7, -7, -23,
					-- layer=3 filter=91 channel=38
					-11, -2, 2, -28, -8, -23, -38, -27, -13,
					-- layer=3 filter=91 channel=39
					11, 2, 13, 1, 12, 9, 8, -7, -11,
					-- layer=3 filter=91 channel=40
					12, 12, -14, 2, 9, -2, 9, -16, 3,
					-- layer=3 filter=91 channel=41
					-6, -15, -3, -34, 5, -18, -15, -14, -21,
					-- layer=3 filter=91 channel=42
					-14, 21, 5, -15, -11, -25, -22, -15, -2,
					-- layer=3 filter=91 channel=43
					-14, 0, -16, -18, 3, -11, -14, 8, -25,
					-- layer=3 filter=91 channel=44
					10, 6, -3, -1, 3, 3, -7, 4, -3,
					-- layer=3 filter=91 channel=45
					-7, -8, 9, -12, -5, -3, -8, 2, 2,
					-- layer=3 filter=91 channel=46
					-19, -6, -24, -3, -8, -21, -16, -4, -33,
					-- layer=3 filter=91 channel=47
					-9, 4, -15, -6, -9, -13, 4, -3, -16,
					-- layer=3 filter=91 channel=48
					-2, -16, -33, -5, 11, -1, -7, -13, -17,
					-- layer=3 filter=91 channel=49
					-32, 19, 7, 6, -26, 10, -21, -3, -15,
					-- layer=3 filter=91 channel=50
					-20, -4, -29, -13, -12, -2, 0, -6, -29,
					-- layer=3 filter=91 channel=51
					-35, -17, -2, 5, -34, -22, -8, 6, -20,
					-- layer=3 filter=91 channel=52
					5, -1, -6, -25, 6, -14, -3, -23, -12,
					-- layer=3 filter=91 channel=53
					9, 4, 14, -5, -2, 11, 6, -22, -25,
					-- layer=3 filter=91 channel=54
					-8, -1, -17, -28, -11, -13, 0, -8, 3,
					-- layer=3 filter=91 channel=55
					15, -14, -3, 7, -1, -17, -11, -16, 9,
					-- layer=3 filter=91 channel=56
					-24, -19, -30, -1, -9, 10, -1, 4, -17,
					-- layer=3 filter=91 channel=57
					-18, -18, -2, 7, -27, -8, 6, 3, -26,
					-- layer=3 filter=91 channel=58
					-23, 0, 0, -29, -22, -30, -7, -9, 10,
					-- layer=3 filter=91 channel=59
					4, -16, -36, -4, 24, -20, -9, -28, -25,
					-- layer=3 filter=91 channel=60
					-19, -11, 11, -19, -2, -23, -10, 7, -27,
					-- layer=3 filter=91 channel=61
					-25, 1, 5, 2, -21, -29, -28, -20, -19,
					-- layer=3 filter=91 channel=62
					-6, -4, -24, -17, -29, -10, 5, -4, -6,
					-- layer=3 filter=91 channel=63
					7, 12, -5, -7, 5, -8, 1, -6, 5,
					-- layer=3 filter=92 channel=0
					-16, -18, -8, -21, -14, 0, 6, -9, -13,
					-- layer=3 filter=92 channel=1
					-16, -18, -3, 3, 3, 6, -15, 5, -9,
					-- layer=3 filter=92 channel=2
					16, 1, 4, -16, -7, -7, 1, -13, -4,
					-- layer=3 filter=92 channel=3
					4, -31, -14, -10, -18, 7, -20, -8, -11,
					-- layer=3 filter=92 channel=4
					-30, -10, -20, -21, 2, -16, -10, -28, -2,
					-- layer=3 filter=92 channel=5
					1, 14, -7, 3, 2, 0, 9, -3, 11,
					-- layer=3 filter=92 channel=6
					-12, -19, 12, -17, 10, 0, -2, -9, -23,
					-- layer=3 filter=92 channel=7
					-28, -10, -8, 0, -23, -15, -3, -15, 9,
					-- layer=3 filter=92 channel=8
					-2, -20, 3, -7, -6, -18, -2, -30, -18,
					-- layer=3 filter=92 channel=9
					-12, -19, 2, -11, -1, -20, 16, -4, 9,
					-- layer=3 filter=92 channel=10
					-23, -16, -9, -17, -9, -6, -17, -17, -30,
					-- layer=3 filter=92 channel=11
					-18, -16, -1, -4, 0, -9, -10, 16, -3,
					-- layer=3 filter=92 channel=12
					0, 0, 7, 4, -6, 15, -8, 14, 9,
					-- layer=3 filter=92 channel=13
					-24, 4, -14, -23, -1, -13, 2, 0, 3,
					-- layer=3 filter=92 channel=14
					-29, 4, -16, -9, -14, 6, -1, 0, -15,
					-- layer=3 filter=92 channel=15
					-6, -14, -18, -9, 6, -8, 3, -12, 10,
					-- layer=3 filter=92 channel=16
					8, -4, -2, -9, 6, 3, -6, 25, 6,
					-- layer=3 filter=92 channel=17
					-30, -12, 0, -17, -1, -6, -19, 0, 0,
					-- layer=3 filter=92 channel=18
					-10, -4, 0, 14, -2, 6, -12, -16, -5,
					-- layer=3 filter=92 channel=19
					-24, -4, 9, -13, -11, -7, -19, -16, -18,
					-- layer=3 filter=92 channel=20
					-1, -8, 8, 2, -13, 9, -5, -20, 0,
					-- layer=3 filter=92 channel=21
					-22, -5, 7, -10, 1, 9, 4, 7, 0,
					-- layer=3 filter=92 channel=22
					-5, -8, -4, 8, -13, 10, 8, -11, 2,
					-- layer=3 filter=92 channel=23
					14, 0, -22, 2, -6, -8, -12, -8, -14,
					-- layer=3 filter=92 channel=24
					-10, -7, -15, -15, -4, 6, -2, 3, -16,
					-- layer=3 filter=92 channel=25
					0, -7, -11, -4, 4, -19, -17, 2, 6,
					-- layer=3 filter=92 channel=26
					2, 12, -1, -10, -8, -6, 0, 6, 6,
					-- layer=3 filter=92 channel=27
					-2, -9, -1, -8, -22, -15, 0, -17, -12,
					-- layer=3 filter=92 channel=28
					-7, -8, -2, 0, -9, -1, -1, -1, -14,
					-- layer=3 filter=92 channel=29
					13, -8, -8, 1, 2, -17, -3, 5, -14,
					-- layer=3 filter=92 channel=30
					-8, -11, 0, -14, 4, -7, 14, 0, -2,
					-- layer=3 filter=92 channel=31
					-29, 1, 7, 11, 4, 3, 0, -2, -7,
					-- layer=3 filter=92 channel=32
					-5, -6, -3, -15, -6, -1, 0, 13, 17,
					-- layer=3 filter=92 channel=33
					0, -2, 0, 6, 10, 7, -4, -4, -12,
					-- layer=3 filter=92 channel=34
					-8, 2, -6, 0, -10, 7, -20, 1, -21,
					-- layer=3 filter=92 channel=35
					-12, -20, 0, -20, -17, 0, -18, -19, -17,
					-- layer=3 filter=92 channel=36
					-23, -22, 3, -3, -10, 7, -14, 1, -7,
					-- layer=3 filter=92 channel=37
					-25, -4, 12, -2, 4, -13, 7, -13, 11,
					-- layer=3 filter=92 channel=38
					-2, -11, 2, 2, 18, -1, -28, -12, -3,
					-- layer=3 filter=92 channel=39
					0, 2, 15, 8, -14, 9, -7, 11, 4,
					-- layer=3 filter=92 channel=40
					4, -4, 5, 3, -2, 5, -15, -17, -16,
					-- layer=3 filter=92 channel=41
					4, -1, -3, 3, -14, 4, -29, 4, -10,
					-- layer=3 filter=92 channel=42
					-21, -11, -16, -15, -22, -3, -8, -23, -2,
					-- layer=3 filter=92 channel=43
					16, 2, 10, 17, 13, 22, 0, -17, -24,
					-- layer=3 filter=92 channel=44
					12, 11, 1, -2, 9, -5, -11, 11, 11,
					-- layer=3 filter=92 channel=45
					-1, -17, -1, 7, -1, -18, 5, -9, 9,
					-- layer=3 filter=92 channel=46
					-1, -8, -23, -21, -2, -3, 10, -9, -9,
					-- layer=3 filter=92 channel=47
					7, 7, 0, -12, -8, 0, -9, 23, 21,
					-- layer=3 filter=92 channel=48
					-13, -20, -1, 9, 8, 10, 9, -3, 0,
					-- layer=3 filter=92 channel=49
					-3, -1, -12, -12, -13, -12, 10, -1, -3,
					-- layer=3 filter=92 channel=50
					-17, 7, 1, -14, 10, -12, -17, 6, -29,
					-- layer=3 filter=92 channel=51
					4, 10, 3, -1, -2, 11, -11, 2, -1,
					-- layer=3 filter=92 channel=52
					-29, -17, -16, 2, 3, 1, 3, -9, -4,
					-- layer=3 filter=92 channel=53
					4, 0, 11, 0, 10, 9, 1, 0, 7,
					-- layer=3 filter=92 channel=54
					-4, 2, 0, -11, -18, -22, -1, 0, 0,
					-- layer=3 filter=92 channel=55
					0, -20, -24, -19, 1, -8, -8, 6, 6,
					-- layer=3 filter=92 channel=56
					-7, -1, -10, -5, 12, -9, -8, 10, 13,
					-- layer=3 filter=92 channel=57
					-6, -21, -6, 2, -3, -18, -19, -8, 2,
					-- layer=3 filter=92 channel=58
					3, -18, 20, 23, -3, 0, -25, -29, -15,
					-- layer=3 filter=92 channel=59
					0, -6, -11, 0, 0, -9, 22, 2, 1,
					-- layer=3 filter=92 channel=60
					-8, -5, -15, -12, 3, -7, -1, 1, -9,
					-- layer=3 filter=92 channel=61
					-5, -1, -3, 4, 0, 10, 5, -1, -17,
					-- layer=3 filter=92 channel=62
					5, -16, -2, 12, 0, -11, -4, 1, 8,
					-- layer=3 filter=92 channel=63
					7, 11, -1, 1, -2, -7, 8, 14, 6,
					-- layer=3 filter=93 channel=0
					-19, 36, 9, 0, 3, 16, -10, -17, -33,
					-- layer=3 filter=93 channel=1
					7, -31, -30, 0, 10, 8, 23, -31, 51,
					-- layer=3 filter=93 channel=2
					32, 39, -1, 8, -36, 17, -2, -20, 2,
					-- layer=3 filter=93 channel=3
					-30, -5, -21, -27, -22, -1, 25, 43, 44,
					-- layer=3 filter=93 channel=4
					1, -18, 12, 11, -23, -5, 16, 34, 20,
					-- layer=3 filter=93 channel=5
					-22, -18, -8, 5, 12, 1, -19, -7, -3,
					-- layer=3 filter=93 channel=6
					-31, -6, -2, -38, -77, 19, -31, 1, 4,
					-- layer=3 filter=93 channel=7
					-4, 25, 5, 30, 8, -17, 64, 13, -25,
					-- layer=3 filter=93 channel=8
					-13, 26, -12, 9, 1, -25, 46, 30, 24,
					-- layer=3 filter=93 channel=9
					15, -18, -10, -8, -10, -14, 36, 6, -12,
					-- layer=3 filter=93 channel=10
					18, -6, -4, 40, -13, -24, 15, 29, 12,
					-- layer=3 filter=93 channel=11
					-34, 39, -16, -42, -61, 14, -40, -68, -15,
					-- layer=3 filter=93 channel=12
					-22, -18, -62, -41, -26, -60, -68, -17, -44,
					-- layer=3 filter=93 channel=13
					0, -36, -10, -1, 3, 5, -19, 28, 36,
					-- layer=3 filter=93 channel=14
					-5, 1, -54, 2, 4, -11, 51, -3, 3,
					-- layer=3 filter=93 channel=15
					6, 3, -8, 17, 6, -12, 11, -41, 39,
					-- layer=3 filter=93 channel=16
					-49, -79, -60, -52, -60, -4, -33, 1, -32,
					-- layer=3 filter=93 channel=17
					0, -23, -6, -26, -4, -8, 20, 77, 6,
					-- layer=3 filter=93 channel=18
					1, -3, 13, -7, -13, 19, -6, 9, 11,
					-- layer=3 filter=93 channel=19
					-18, 30, -22, 19, -20, 2, -17, 7, -8,
					-- layer=3 filter=93 channel=20
					-15, 22, 5, 1, 38, -31, -82, -32, -50,
					-- layer=3 filter=93 channel=21
					-20, 22, -5, -14, -28, 32, -32, -26, 23,
					-- layer=3 filter=93 channel=22
					2, -4, 8, -8, 8, 4, -7, -1, -12,
					-- layer=3 filter=93 channel=23
					-22, 3, 12, -43, -34, -29, -16, -35, -49,
					-- layer=3 filter=93 channel=24
					-13, 0, 10, -32, -75, -10, -3, 31, 16,
					-- layer=3 filter=93 channel=25
					-10, -67, -34, 9, 16, 25, 66, 11, 18,
					-- layer=3 filter=93 channel=26
					9, 8, 13, -5, -9, 0, 10, 4, -6,
					-- layer=3 filter=93 channel=27
					-15, -6, 14, -37, 10, 27, -12, 31, -8,
					-- layer=3 filter=93 channel=28
					-10, 4, 6, 4, 15, -6, 11, 11, 8,
					-- layer=3 filter=93 channel=29
					3, -15, 12, 15, -36, 34, 71, 33, 33,
					-- layer=3 filter=93 channel=30
					13, -11, 12, 6, 12, 8, 6, -9, -7,
					-- layer=3 filter=93 channel=31
					3, -41, -58, 43, 0, 15, 23, 35, -19,
					-- layer=3 filter=93 channel=32
					-12, 1, -10, 7, -17, 7, 28, 2, -29,
					-- layer=3 filter=93 channel=33
					-4, -22, -6, -10, 11, -16, -57, 4, -16,
					-- layer=3 filter=93 channel=34
					-12, -49, 14, 4, 0, 11, 20, 51, 12,
					-- layer=3 filter=93 channel=35
					-66, -45, -15, -25, -30, 7, 21, 30, 29,
					-- layer=3 filter=93 channel=36
					21, -22, -5, 20, 5, 13, -61, -45, -14,
					-- layer=3 filter=93 channel=37
					4, 13, -15, 11, -49, -16, 1, -41, 45,
					-- layer=3 filter=93 channel=38
					11, -12, -29, 13, 10, -5, 4, 18, -6,
					-- layer=3 filter=93 channel=39
					7, -12, -13, -4, 3, -7, 12, -8, 1,
					-- layer=3 filter=93 channel=40
					17, -9, 9, -17, 39, 18, -1, 0, -6,
					-- layer=3 filter=93 channel=41
					-2, 32, -12, -15, -9, 21, 20, 36, 13,
					-- layer=3 filter=93 channel=42
					-3, 18, 20, -11, -65, 0, -8, 12, -5,
					-- layer=3 filter=93 channel=43
					18, 35, 3, 21, -2, 30, 39, 34, 26,
					-- layer=3 filter=93 channel=44
					11, -15, 5, 11, 11, -3, 0, 5, 13,
					-- layer=3 filter=93 channel=45
					-32, 22, 12, -10, -12, -35, 25, -4, 21,
					-- layer=3 filter=93 channel=46
					17, -35, -31, -9, -7, -14, 44, 9, -34,
					-- layer=3 filter=93 channel=47
					-7, -6, -23, -44, -27, -48, -34, -1, -27,
					-- layer=3 filter=93 channel=48
					2, -29, -11, 3, 50, 2, 40, -9, -5,
					-- layer=3 filter=93 channel=49
					-1, 2, -22, 24, -5, 3, -22, -39, 18,
					-- layer=3 filter=93 channel=50
					-1, 15, 36, 3, -22, 54, -13, 9, 32,
					-- layer=3 filter=93 channel=51
					51, -9, 8, 15, 35, 0, 26, 63, 32,
					-- layer=3 filter=93 channel=52
					55, 3, 48, -25, -29, -2, 21, -10, -1,
					-- layer=3 filter=93 channel=53
					-5, -7, 33, -13, 17, 54, 41, -21, -10,
					-- layer=3 filter=93 channel=54
					-8, -7, 11, 34, 33, 39, 34, 49, 47,
					-- layer=3 filter=93 channel=55
					20, 28, 5, 32, 27, 0, 35, -4, -27,
					-- layer=3 filter=93 channel=56
					-8, 50, 34, 18, -2, -12, -28, -23, 10,
					-- layer=3 filter=93 channel=57
					-20, -17, -8, -53, -30, -43, -66, 7, -21,
					-- layer=3 filter=93 channel=58
					23, 42, 6, 41, 10, -11, 37, 21, 21,
					-- layer=3 filter=93 channel=59
					-8, 32, -6, -1, -2, -23, 50, 18, -22,
					-- layer=3 filter=93 channel=60
					10, 7, -30, 0, 3, 21, 42, 16, 23,
					-- layer=3 filter=93 channel=61
					12, -36, -17, -22, 9, -35, 59, 16, -7,
					-- layer=3 filter=93 channel=62
					0, -8, 0, 5, 7, -11, 9, 8, 65,
					-- layer=3 filter=93 channel=63
					14, 1, 2, -17, -9, -15, 4, -3, -16,
					-- layer=3 filter=94 channel=0
					0, 6, 5, -10, -14, 2, -12, -14, -6,
					-- layer=3 filter=94 channel=1
					2, 0, -18, -9, -1, 0, -8, 3, 8,
					-- layer=3 filter=94 channel=2
					-21, 11, -7, 9, -4, 12, 8, -7, -2,
					-- layer=3 filter=94 channel=3
					-6, -3, -18, 8, 5, -7, 0, -12, -1,
					-- layer=3 filter=94 channel=4
					-7, -9, 4, 10, 9, 5, -17, 9, -14,
					-- layer=3 filter=94 channel=5
					-2, -2, -12, -9, 0, 3, -13, -11, -14,
					-- layer=3 filter=94 channel=6
					15, 14, -1, -15, -2, -4, -10, -12, -11,
					-- layer=3 filter=94 channel=7
					3, -22, -7, 0, 0, -15, -11, 11, 0,
					-- layer=3 filter=94 channel=8
					1, -8, -2, -3, 10, 11, -3, -8, -9,
					-- layer=3 filter=94 channel=9
					-11, -12, 4, -11, -13, -8, 16, 0, 13,
					-- layer=3 filter=94 channel=10
					3, -4, -6, -6, 1, 8, -17, 2, -12,
					-- layer=3 filter=94 channel=11
					-11, 6, 6, -4, 10, -22, -13, -5, -23,
					-- layer=3 filter=94 channel=12
					-9, 9, -13, -9, 2, -12, 2, -5, -7,
					-- layer=3 filter=94 channel=13
					-19, -1, -14, 7, 0, -2, -20, -16, -15,
					-- layer=3 filter=94 channel=14
					-12, 7, 1, 6, -3, 12, -1, 0, 5,
					-- layer=3 filter=94 channel=15
					-19, -12, -24, 5, -6, -8, 5, -7, 4,
					-- layer=3 filter=94 channel=16
					2, -6, -14, 0, 9, -9, -2, 3, 8,
					-- layer=3 filter=94 channel=17
					-18, -4, -16, 9, 8, -15, 7, -6, -19,
					-- layer=3 filter=94 channel=18
					-13, 11, 3, 5, 4, 5, -5, -23, -14,
					-- layer=3 filter=94 channel=19
					-13, 3, -2, -17, 14, 5, 3, -7, -15,
					-- layer=3 filter=94 channel=20
					-11, -14, -13, -4, -6, 0, 4, 10, -9,
					-- layer=3 filter=94 channel=21
					-13, -8, -9, 18, -9, 3, -11, 2, -9,
					-- layer=3 filter=94 channel=22
					-6, -13, -12, -10, 6, -8, 5, 9, -2,
					-- layer=3 filter=94 channel=23
					8, -6, -8, -18, -6, -14, -10, 8, -6,
					-- layer=3 filter=94 channel=24
					3, -4, 2, 11, 11, -1, -21, -7, 2,
					-- layer=3 filter=94 channel=25
					-1, 10, 4, -2, -9, -4, -18, 10, -1,
					-- layer=3 filter=94 channel=26
					11, 5, -8, 6, -13, -4, 4, -9, 9,
					-- layer=3 filter=94 channel=27
					4, 0, -17, 4, 6, -16, -8, -7, -3,
					-- layer=3 filter=94 channel=28
					11, -6, -16, 5, 4, -11, -5, 2, 8,
					-- layer=3 filter=94 channel=29
					-12, -13, 5, 2, 6, -5, 3, -13, -11,
					-- layer=3 filter=94 channel=30
					-11, -11, 9, -1, 11, -14, -7, 8, -10,
					-- layer=3 filter=94 channel=31
					-5, -13, -14, -8, 3, -15, -2, -9, -14,
					-- layer=3 filter=94 channel=32
					-1, 5, -21, -5, -1, 11, 6, -12, 0,
					-- layer=3 filter=94 channel=33
					0, -14, 3, -7, -11, 6, -13, -1, -13,
					-- layer=3 filter=94 channel=34
					-18, -8, -3, -11, 2, -3, 10, 5, -14,
					-- layer=3 filter=94 channel=35
					10, 1, -18, 3, 9, -11, 8, -9, -18,
					-- layer=3 filter=94 channel=36
					-19, -18, 0, -7, 2, -16, 2, 5, 4,
					-- layer=3 filter=94 channel=37
					-1, 3, -1, -11, 13, -10, -4, 2, -1,
					-- layer=3 filter=94 channel=38
					9, -4, 4, -13, 11, -5, 2, -22, -16,
					-- layer=3 filter=94 channel=39
					11, -12, -7, 2, -5, 12, -3, -1, -11,
					-- layer=3 filter=94 channel=40
					-4, 10, -18, -13, -16, -10, -10, 1, 12,
					-- layer=3 filter=94 channel=41
					-3, -6, 0, -10, -11, -12, -3, 6, -6,
					-- layer=3 filter=94 channel=42
					-7, -13, -17, -3, 2, 9, -12, -10, -10,
					-- layer=3 filter=94 channel=43
					2, 10, 5, -10, 1, -8, -2, -6, 0,
					-- layer=3 filter=94 channel=44
					-5, 10, 3, 13, 5, 10, 0, -6, -8,
					-- layer=3 filter=94 channel=45
					-5, 0, 2, -11, -10, 3, -7, -1, -18,
					-- layer=3 filter=94 channel=46
					-4, -7, -7, -17, -12, -19, 3, 9, 0,
					-- layer=3 filter=94 channel=47
					1, 9, -18, -6, -8, -15, 3, 5, -10,
					-- layer=3 filter=94 channel=48
					-12, -14, -19, -3, 6, 6, -5, -6, -8,
					-- layer=3 filter=94 channel=49
					-18, 7, -16, 12, -3, -6, -5, -7, -5,
					-- layer=3 filter=94 channel=50
					-8, 0, 2, 0, 2, 3, 5, 2, 0,
					-- layer=3 filter=94 channel=51
					-11, 3, -5, 0, -5, -7, -12, 3, 11,
					-- layer=3 filter=94 channel=52
					-7, -13, -6, -7, -14, -6, -9, -2, 4,
					-- layer=3 filter=94 channel=53
					-4, 0, 7, 11, -2, 5, -7, -1, -9,
					-- layer=3 filter=94 channel=54
					-19, -12, -1, 13, -10, -4, 0, -14, 7,
					-- layer=3 filter=94 channel=55
					-13, 2, -21, 0, 0, -4, 6, -3, 3,
					-- layer=3 filter=94 channel=56
					-2, -9, -1, 1, -15, -9, 14, -1, -5,
					-- layer=3 filter=94 channel=57
					-16, 0, 9, 0, -17, -15, 0, -17, 0,
					-- layer=3 filter=94 channel=58
					4, 5, 11, -11, 3, -2, -14, -13, 0,
					-- layer=3 filter=94 channel=59
					-14, -5, -12, -17, 6, -12, -6, 9, 1,
					-- layer=3 filter=94 channel=60
					-12, 6, 0, 2, 0, -3, -13, -4, -12,
					-- layer=3 filter=94 channel=61
					-10, 13, -1, -16, 6, -2, -19, -12, 1,
					-- layer=3 filter=94 channel=62
					-1, -4, -14, 5, -15, 1, 12, 20, -18,
					-- layer=3 filter=94 channel=63
					-9, -3, 10, 1, -9, -13, -14, -3, 3,
					-- layer=3 filter=95 channel=0
					13, -5, 5, 15, 20, -20, 23, -2, 11,
					-- layer=3 filter=95 channel=1
					-41, -10, 3, 35, -20, 28, 12, 58, -30,
					-- layer=3 filter=95 channel=2
					8, -6, 3, 14, 44, -19, 17, -7, 32,
					-- layer=3 filter=95 channel=3
					-52, -43, -48, -6, -26, 0, -7, -29, 3,
					-- layer=3 filter=95 channel=4
					38, 8, 17, -9, -5, 5, -53, -52, -16,
					-- layer=3 filter=95 channel=5
					-6, -11, 9, 16, -11, 3, 15, 9, -6,
					-- layer=3 filter=95 channel=6
					-57, -30, -52, 2, 4, -13, -21, -3, 13,
					-- layer=3 filter=95 channel=7
					17, -39, -8, -26, 24, 50, -33, 27, -1,
					-- layer=3 filter=95 channel=8
					-12, 0, -40, -24, 3, 16, -16, 2, 5,
					-- layer=3 filter=95 channel=9
					-18, 8, -28, -7, 20, 26, -23, 20, 30,
					-- layer=3 filter=95 channel=10
					-23, 19, -9, -5, 0, 8, -33, 2, -36,
					-- layer=3 filter=95 channel=11
					11, 14, -14, 14, -1, -27, 19, 1, 7,
					-- layer=3 filter=95 channel=12
					-10, -7, -16, 8, 46, 12, 25, 37, 34,
					-- layer=3 filter=95 channel=13
					-2, 33, -9, -10, -35, -11, 16, -14, -6,
					-- layer=3 filter=95 channel=14
					-19, 6, -63, 2, -33, -24, -13, 43, -39,
					-- layer=3 filter=95 channel=15
					-17, -18, -36, 39, 23, 32, -4, 21, -38,
					-- layer=3 filter=95 channel=16
					10, -3, 1, 71, 19, 48, 4, 4, 26,
					-- layer=3 filter=95 channel=17
					32, 2, 60, 13, -8, 17, -19, -54, -2,
					-- layer=3 filter=95 channel=18
					11, -1, 44, -18, -5, -37, -4, -7, -34,
					-- layer=3 filter=95 channel=19
					18, -26, -13, -10, -9, -7, -2, -10, 12,
					-- layer=3 filter=95 channel=20
					-3, -38, -6, 26, 11, -21, 30, 49, -13,
					-- layer=3 filter=95 channel=21
					18, 16, 20, 2, -5, 2, -19, 9, 9,
					-- layer=3 filter=95 channel=22
					-3, 1, -13, 4, -5, -8, 2, 6, 8,
					-- layer=3 filter=95 channel=23
					30, -1, 24, -23, 7, 8, 4, -14, 38,
					-- layer=3 filter=95 channel=24
					51, 9, 46, -28, -10, -10, 0, 11, 23,
					-- layer=3 filter=95 channel=25
					39, -17, -23, 20, -21, -32, 4, -45, -30,
					-- layer=3 filter=95 channel=26
					0, 8, 5, -13, -1, 2, 14, -2, 0,
					-- layer=3 filter=95 channel=27
					27, 10, 25, 13, 0, -31, 15, -23, 26,
					-- layer=3 filter=95 channel=28
					-1, -5, -17, 13, -9, -16, 8, 0, 0,
					-- layer=3 filter=95 channel=29
					2, 14, 10, -23, 46, 0, -41, 8, -1,
					-- layer=3 filter=95 channel=30
					10, 25, 6, -7, -5, 13, 9, -11, 3,
					-- layer=3 filter=95 channel=31
					-37, -5, -43, 24, 8, 42, 37, 3, -30,
					-- layer=3 filter=95 channel=32
					-4, 44, -7, 26, 23, 7, 51, 14, -2,
					-- layer=3 filter=95 channel=33
					-15, 14, -10, 5, -20, -8, 4, -45, -18,
					-- layer=3 filter=95 channel=34
					27, 0, 13, 6, 2, 3, -43, -24, -58,
					-- layer=3 filter=95 channel=35
					43, 13, 22, -4, -35, -11, -18, -29, 1,
					-- layer=3 filter=95 channel=36
					-28, 1, -36, -2, -27, 24, 9, 8, -4,
					-- layer=3 filter=95 channel=37
					21, -6, 6, 8, -40, 22, 58, 6, 5,
					-- layer=3 filter=95 channel=38
					32, 41, 57, 13, 8, 17, 4, 24, 10,
					-- layer=3 filter=95 channel=39
					15, 8, 8, -5, -3, 14, 15, 2, 5,
					-- layer=3 filter=95 channel=40
					16, 3, 4, 48, -14, 10, 19, 36, 4,
					-- layer=3 filter=95 channel=41
					36, 7, -21, -44, -24, -9, 17, -17, -16,
					-- layer=3 filter=95 channel=42
					-1, 35, -3, -8, -28, -8, 21, 2, 41,
					-- layer=3 filter=95 channel=43
					27, 41, 6, -22, 54, 18, 11, 51, 32,
					-- layer=3 filter=95 channel=44
					9, 1, -5, -3, -4, -15, 17, -6, -14,
					-- layer=3 filter=95 channel=45
					-7, 4, -5, -37, -3, -18, 2, 9, -2,
					-- layer=3 filter=95 channel=46
					-17, -8, -2, 35, -13, 6, 7, 15, 7,
					-- layer=3 filter=95 channel=47
					-32, 2, -39, 12, -7, -25, 27, 45, 39,
					-- layer=3 filter=95 channel=48
					-21, 25, 5, 26, -27, 7, -8, -3, 18,
					-- layer=3 filter=95 channel=49
					42, 9, 25, 10, -14, -21, 27, -6, -31,
					-- layer=3 filter=95 channel=50
					28, 16, 42, -1, -16, -28, -3, 4, 32,
					-- layer=3 filter=95 channel=51
					15, 12, 35, 19, 29, 27, 19, 0, -1,
					-- layer=3 filter=95 channel=52
					-12, 10, 33, -15, -39, 5, -28, -12, 3,
					-- layer=3 filter=95 channel=53
					-14, 2, 15, -1, -23, 3, -38, -22, 17,
					-- layer=3 filter=95 channel=54
					40, -21, 4, -30, -5, 2, -33, -21, -39,
					-- layer=3 filter=95 channel=55
					-21, 9, -40, -8, 9, -5, 11, -2, -57,
					-- layer=3 filter=95 channel=56
					1, 20, 18, -12, 33, 3, -12, 49, 18,
					-- layer=3 filter=95 channel=57
					-9, -16, 36, -47, -55, -13, -3, -52, 12,
					-- layer=3 filter=95 channel=58
					26, 24, 1, -18, 53, 18, 13, 42, 24,
					-- layer=3 filter=95 channel=59
					5, 13, -11, -17, -21, 11, -1, 21, 22,
					-- layer=3 filter=95 channel=60
					31, 1, 24, 8, -23, 3, -15, -36, -19,
					-- layer=3 filter=95 channel=61
					0, 18, 12, 16, 1, 5, -6, -18, 11,
					-- layer=3 filter=95 channel=62
					-31, -2, 0, -26, 37, 23, -1, 52, -14,
					-- layer=3 filter=95 channel=63
					-12, -13, 22, 28, 20, -9, 7, -24, -3,
					-- layer=3 filter=96 channel=0
					5, 11, -3, 1, -14, 2, 6, 12, 11,
					-- layer=3 filter=96 channel=1
					5, 12, -6, -5, 11, -6, -4, -12, -1,
					-- layer=3 filter=96 channel=2
					-14, -18, 3, -9, -3, 6, 3, -7, 3,
					-- layer=3 filter=96 channel=3
					2, 0, 9, -9, 8, 11, -2, 9, 0,
					-- layer=3 filter=96 channel=4
					0, -12, 2, 0, 12, -6, -8, -18, -2,
					-- layer=3 filter=96 channel=5
					0, -14, -11, 4, -10, 2, 2, 2, 3,
					-- layer=3 filter=96 channel=6
					-4, 12, -14, -1, -13, -3, -3, -27, 0,
					-- layer=3 filter=96 channel=7
					-9, -6, 10, -4, -1, 5, -10, -4, -9,
					-- layer=3 filter=96 channel=8
					-11, 12, 2, -11, 3, -13, -14, -4, 11,
					-- layer=3 filter=96 channel=9
					0, 5, -6, -16, -16, -9, 0, 6, -2,
					-- layer=3 filter=96 channel=10
					-14, 3, 1, 11, -1, 1, 3, 0, -15,
					-- layer=3 filter=96 channel=11
					-16, -2, -3, 1, -10, 4, -14, -10, -17,
					-- layer=3 filter=96 channel=12
					7, -1, 0, 11, 2, -13, 3, 0, -9,
					-- layer=3 filter=96 channel=13
					6, -4, -15, -15, -9, 7, -1, 7, 5,
					-- layer=3 filter=96 channel=14
					-2, -11, 7, 7, 11, -9, -10, -5, 3,
					-- layer=3 filter=96 channel=15
					-9, 7, 10, -12, -7, 7, -5, -11, -4,
					-- layer=3 filter=96 channel=16
					0, -11, -3, -7, -1, 12, -8, -1, -8,
					-- layer=3 filter=96 channel=17
					-9, -13, -8, 0, 12, 2, -6, 0, 5,
					-- layer=3 filter=96 channel=18
					-2, -16, -8, -20, -21, -10, -15, -7, -4,
					-- layer=3 filter=96 channel=19
					-1, -11, -8, 0, -14, 10, 4, 5, -4,
					-- layer=3 filter=96 channel=20
					-2, -13, -8, -4, -22, 6, -1, 9, -6,
					-- layer=3 filter=96 channel=21
					-19, -20, 7, -5, -9, -22, -17, -10, 1,
					-- layer=3 filter=96 channel=22
					0, -2, -13, -5, -1, 12, -8, -3, 3,
					-- layer=3 filter=96 channel=23
					-8, -5, -11, 0, -23, -17, -8, -21, 8,
					-- layer=3 filter=96 channel=24
					-4, 4, -14, -12, 6, -6, -15, -12, -19,
					-- layer=3 filter=96 channel=25
					1, 5, 6, -5, 0, -4, 2, -10, 0,
					-- layer=3 filter=96 channel=26
					10, 5, -11, -5, -6, -9, 14, -14, -7,
					-- layer=3 filter=96 channel=27
					-11, -5, 0, -4, 10, -2, 0, 3, -11,
					-- layer=3 filter=96 channel=28
					-3, -12, -3, -5, -8, 9, -6, 0, -5,
					-- layer=3 filter=96 channel=29
					5, 9, -4, 0, -10, -5, -13, 11, -12,
					-- layer=3 filter=96 channel=30
					7, -13, -5, 9, -12, 16, 9, 6, -6,
					-- layer=3 filter=96 channel=31
					-3, -12, -2, -7, 13, 3, -8, 9, -10,
					-- layer=3 filter=96 channel=32
					-14, -3, -9, 1, -4, -12, -15, -7, 2,
					-- layer=3 filter=96 channel=33
					-11, 6, 1, -15, -12, 8, 0, -11, 5,
					-- layer=3 filter=96 channel=34
					0, -15, -6, -11, 1, 5, 6, -1, -11,
					-- layer=3 filter=96 channel=35
					-16, -3, 2, 1, 1, -24, -10, -18, -4,
					-- layer=3 filter=96 channel=36
					-9, -15, 11, -8, -4, -2, -2, 10, -6,
					-- layer=3 filter=96 channel=37
					4, 1, -14, -2, 11, -4, -4, 2, -11,
					-- layer=3 filter=96 channel=38
					-2, -7, 8, -11, -1, -18, -11, -5, 0,
					-- layer=3 filter=96 channel=39
					2, 8, -11, 15, 7, 12, -13, 10, 10,
					-- layer=3 filter=96 channel=40
					-3, 5, -4, 0, -11, 8, 5, 0, -9,
					-- layer=3 filter=96 channel=41
					-9, 0, -13, -16, -1, 5, 4, 2, 3,
					-- layer=3 filter=96 channel=42
					4, 12, -5, 8, -1, 6, -11, 0, -15,
					-- layer=3 filter=96 channel=43
					-8, -19, -6, 9, 4, -17, 7, -5, -8,
					-- layer=3 filter=96 channel=44
					4, 13, -9, 9, 8, -12, 9, 9, -10,
					-- layer=3 filter=96 channel=45
					9, 12, 10, 0, -7, -2, -8, -12, 4,
					-- layer=3 filter=96 channel=46
					0, -8, 9, -19, 6, 11, -3, -17, 6,
					-- layer=3 filter=96 channel=47
					-16, 0, -7, 9, -9, -3, 2, -9, -5,
					-- layer=3 filter=96 channel=48
					3, 0, 3, -9, -7, -9, -5, -6, 15,
					-- layer=3 filter=96 channel=49
					4, 6, 2, -11, -7, -2, -5, -6, -3,
					-- layer=3 filter=96 channel=50
					0, -1, -7, -22, 4, 0, -14, -10, 3,
					-- layer=3 filter=96 channel=51
					-2, 0, -12, -9, 12, 5, 4, -3, 8,
					-- layer=3 filter=96 channel=52
					-3, -13, -12, -7, -1, 6, 3, 1, 10,
					-- layer=3 filter=96 channel=53
					-4, -14, -10, -18, -2, 0, 4, -7, -12,
					-- layer=3 filter=96 channel=54
					3, -11, 0, 4, -10, 0, -20, -6, -2,
					-- layer=3 filter=96 channel=55
					-4, -14, -22, -16, -9, -19, 0, -5, -2,
					-- layer=3 filter=96 channel=56
					-12, -16, 0, -17, -18, -14, -5, -3, 1,
					-- layer=3 filter=96 channel=57
					3, 6, -7, -1, -23, 0, 3, 2, -2,
					-- layer=3 filter=96 channel=58
					0, 6, 0, -11, -5, -4, -10, -1, -4,
					-- layer=3 filter=96 channel=59
					5, 1, 10, 5, 10, 7, -15, -16, 0,
					-- layer=3 filter=96 channel=60
					-11, 0, -13, -6, -10, -20, -14, 0, -4,
					-- layer=3 filter=96 channel=61
					-18, -19, -2, 2, -24, 6, -1, -14, 3,
					-- layer=3 filter=96 channel=62
					4, -3, -5, -14, 0, -11, 12, -15, -6,
					-- layer=3 filter=96 channel=63
					4, -11, -1, 8, 6, -12, 13, 6, -8,
					-- layer=3 filter=97 channel=0
					-1, -17, -5, -9, -28, 23, -10, -42, -35,
					-- layer=3 filter=97 channel=1
					-2, -9, -44, 59, -50, 44, 9, -10, -14,
					-- layer=3 filter=97 channel=2
					2, 1, 26, 26, -39, -36, -40, 3, -6,
					-- layer=3 filter=97 channel=3
					3, 27, 1, -2, -64, 15, -2, -71, 0,
					-- layer=3 filter=97 channel=4
					-5, 4, 23, 0, -7, 27, 0, 27, -2,
					-- layer=3 filter=97 channel=5
					-2, -2, 7, 14, 0, 1, 21, 18, -2,
					-- layer=3 filter=97 channel=6
					20, 10, 4, 18, -42, 3, 31, -25, -6,
					-- layer=3 filter=97 channel=7
					-23, 6, 28, 9, 12, 20, -42, 25, 1,
					-- layer=3 filter=97 channel=8
					6, 4, -19, 40, -2, 15, 36, 11, 14,
					-- layer=3 filter=97 channel=9
					3, 11, -23, 4, -2, 7, 13, -51, -19,
					-- layer=3 filter=97 channel=10
					4, 25, -30, 0, 20, -37, -25, -35, 1,
					-- layer=3 filter=97 channel=11
					0, 12, 9, 7, 20, 24, -24, 33, 4,
					-- layer=3 filter=97 channel=12
					-7, -10, 28, -10, -12, -28, -16, 11, -28,
					-- layer=3 filter=97 channel=13
					10, 36, -5, 34, -21, -3, 16, 4, -5,
					-- layer=3 filter=97 channel=14
					-25, 3, 7, 64, 5, 54, 26, 66, 40,
					-- layer=3 filter=97 channel=15
					-14, 18, -26, 19, -11, -19, 4, 6, 5,
					-- layer=3 filter=97 channel=16
					6, -32, -16, 17, 34, -11, -57, -9, 2,
					-- layer=3 filter=97 channel=17
					9, 28, 45, -3, -2, 19, 3, 18, -13,
					-- layer=3 filter=97 channel=18
					-12, -17, 20, 35, 54, 9, -10, -4, -27,
					-- layer=3 filter=97 channel=19
					-9, 43, 6, 15, -21, 43, 1, 20, 7,
					-- layer=3 filter=97 channel=20
					15, 4, -22, 55, 33, -55, -21, 3, -8,
					-- layer=3 filter=97 channel=21
					-17, -23, -3, -3, 17, 18, 13, 23, -20,
					-- layer=3 filter=97 channel=22
					10, 3, -10, 15, 13, 15, -12, -4, 11,
					-- layer=3 filter=97 channel=23
					-8, -15, 30, -17, 32, 19, -23, -11, 6,
					-- layer=3 filter=97 channel=24
					12, 21, 18, 10, -13, 17, 16, 24, 15,
					-- layer=3 filter=97 channel=25
					19, -32, 7, -3, -23, -20, -21, -6, -48,
					-- layer=3 filter=97 channel=26
					-6, -3, -12, -3, 12, -1, -6, -14, 0,
					-- layer=3 filter=97 channel=27
					26, 23, 2, 13, 18, 3, -28, 9, 31,
					-- layer=3 filter=97 channel=28
					4, 3, 9, -13, 13, 3, 13, -10, -1,
					-- layer=3 filter=97 channel=29
					-5, -12, -18, -14, 11, -3, 9, -10, 31,
					-- layer=3 filter=97 channel=30
					-10, 8, -5, -3, -7, 7, -2, -14, -11,
					-- layer=3 filter=97 channel=31
					-30, 42, -46, -22, 5, 23, 4, 25, 8,
					-- layer=3 filter=97 channel=32
					-7, -12, -53, -17, -20, 12, -78, -35, -19,
					-- layer=3 filter=97 channel=33
					25, 8, -33, -2, 77, 4, -17, -2, 19,
					-- layer=3 filter=97 channel=34
					20, 7, -33, -23, -9, 6, -12, 15, 40,
					-- layer=3 filter=97 channel=35
					32, 3, 54, 9, 6, -6, -5, 9, 10,
					-- layer=3 filter=97 channel=36
					-18, -23, -43, 53, -51, -24, 36, 64, 37,
					-- layer=3 filter=97 channel=37
					-13, -18, -7, 42, -36, 17, 49, 11, -17,
					-- layer=3 filter=97 channel=38
					21, -6, 24, 25, 10, 6, -12, -18, -6,
					-- layer=3 filter=97 channel=39
					0, 4, -3, -12, -3, -9, 7, -4, 8,
					-- layer=3 filter=97 channel=40
					22, 7, -29, 25, 32, 10, 3, 14, -1,
					-- layer=3 filter=97 channel=41
					36, 22, -48, 26, -2, -9, 39, 21, 32,
					-- layer=3 filter=97 channel=42
					0, 30, 9, 17, -30, 7, -15, 58, 32,
					-- layer=3 filter=97 channel=43
					40, 37, 18, 15, -8, 31, 13, 26, 18,
					-- layer=3 filter=97 channel=44
					0, -5, -13, 3, 12, -5, -7, 8, -11,
					-- layer=3 filter=97 channel=45
					-21, 15, 8, 52, -68, 51, 28, 7, 14,
					-- layer=3 filter=97 channel=46
					-27, 0, -53, -9, -21, -18, -13, -49, -36,
					-- layer=3 filter=97 channel=47
					7, -22, 25, 3, 0, 8, 34, -1, 20,
					-- layer=3 filter=97 channel=48
					-19, 1, -19, 13, -1, 40, 0, 14, -14,
					-- layer=3 filter=97 channel=49
					10, 13, -33, 32, -3, 13, 40, 36, 12,
					-- layer=3 filter=97 channel=50
					-21, 14, 24, -3, 25, 5, 42, 13, 1,
					-- layer=3 filter=97 channel=51
					-15, -22, 26, -2, 3, -14, 32, 39, 21,
					-- layer=3 filter=97 channel=52
					3, 50, 28, 33, 0, 7, -22, 16, -7,
					-- layer=3 filter=97 channel=53
					-61, -26, 3, -23, 32, 7, 45, -14, 22,
					-- layer=3 filter=97 channel=54
					25, 45, 24, -20, -49, -4, 1, -17, -18,
					-- layer=3 filter=97 channel=55
					16, 8, -29, -10, 8, 36, -57, -20, 45,
					-- layer=3 filter=97 channel=56
					-9, 1, -29, 10, -32, -9, 28, -20, -10,
					-- layer=3 filter=97 channel=57
					-9, 19, -3, -18, 27, -35, 15, 52, -16,
					-- layer=3 filter=97 channel=58
					5, -38, 3, -20, 19, 0, 8, 29, 7,
					-- layer=3 filter=97 channel=59
					-32, 25, -33, 65, -11, 41, -52, -27, -91,
					-- layer=3 filter=97 channel=60
					20, 0, 21, 3, 27, 15, 2, 14, -12,
					-- layer=3 filter=97 channel=61
					-29, 4, 34, -45, 6, -23, -24, -18, -26,
					-- layer=3 filter=97 channel=62
					17, 40, 16, 29, -22, 22, 22, -40, -6,
					-- layer=3 filter=97 channel=63
					-1, 5, 25, -20, -1, -13, -3, -6, -2,
					-- layer=3 filter=98 channel=0
					-18, 5, -54, 0, 9, -6, -6, 0, 21,
					-- layer=3 filter=98 channel=1
					32, -10, -2, -33, -18, -70, 21, 20, -40,
					-- layer=3 filter=98 channel=2
					0, -14, -26, -28, -33, 1, -3, -23, 33,
					-- layer=3 filter=98 channel=3
					-25, 2, -20, -9, 36, -2, -6, 16, -33,
					-- layer=3 filter=98 channel=4
					-3, 25, -14, 26, 40, 17, -5, 4, 27,
					-- layer=3 filter=98 channel=5
					7, -9, 14, 10, -1, 0, 1, 8, -1,
					-- layer=3 filter=98 channel=6
					22, 35, -27, 50, 81, -42, 37, 14, -6,
					-- layer=3 filter=98 channel=7
					14, -27, -3, 8, -37, 10, -65, 21, 53,
					-- layer=3 filter=98 channel=8
					-11, -11, -25, 18, 37, 25, -33, 51, 23,
					-- layer=3 filter=98 channel=9
					-12, -20, -25, -25, 6, 10, 20, 51, 45,
					-- layer=3 filter=98 channel=10
					39, 6, 0, 7, 46, 18, -6, 14, -51,
					-- layer=3 filter=98 channel=11
					18, 6, -26, 56, 9, -48, 32, -25, -31,
					-- layer=3 filter=98 channel=12
					43, 20, 16, 18, -16, -32, 17, 22, 12,
					-- layer=3 filter=98 channel=13
					-2, 0, -8, -28, -62, -13, -14, -6, 59,
					-- layer=3 filter=98 channel=14
					-11, 3, 35, -3, 19, -2, 28, -7, -17,
					-- layer=3 filter=98 channel=15
					4, -17, -13, -36, -47, -26, 52, 34, -14,
					-- layer=3 filter=98 channel=16
					44, 0, 50, -34, -26, -22, -45, -59, -28,
					-- layer=3 filter=98 channel=17
					-22, -5, -6, -1, 24, -3, -17, -10, 31,
					-- layer=3 filter=98 channel=18
					12, 43, -17, 5, 27, -2, -14, -2, -13,
					-- layer=3 filter=98 channel=19
					17, -22, -27, 16, 32, -18, 17, 22, 30,
					-- layer=3 filter=98 channel=20
					22, -1, 8, 24, 31, 0, -28, 19, 4,
					-- layer=3 filter=98 channel=21
					-25, -9, 0, 31, 5, -1, 16, 23, 3,
					-- layer=3 filter=98 channel=22
					-6, -10, -8, -15, -7, -10, 2, 0, -5,
					-- layer=3 filter=98 channel=23
					-24, -27, -1, -43, -32, 16, -27, -29, 64,
					-- layer=3 filter=98 channel=24
					-2, 8, -47, 2, 13, -68, -13, 9, -3,
					-- layer=3 filter=98 channel=25
					31, 33, -5, -20, -54, -35, 23, 8, -36,
					-- layer=3 filter=98 channel=26
					-6, 3, -11, -9, 4, -12, -1, -1, 8,
					-- layer=3 filter=98 channel=27
					7, -10, -8, 4, -6, 5, 0, -18, 42,
					-- layer=3 filter=98 channel=28
					-14, 8, -8, -6, -1, 12, 16, -8, 0,
					-- layer=3 filter=98 channel=29
					2, 15, 15, 7, 27, 27, 16, -18, 41,
					-- layer=3 filter=98 channel=30
					-15, 2, -4, -9, 3, 4, -13, 8, -14,
					-- layer=3 filter=98 channel=31
					-24, -31, -15, -10, 23, -26, 7, -19, 17,
					-- layer=3 filter=98 channel=32
					-9, -13, 7, 23, 13, -9, 41, 3, -10,
					-- layer=3 filter=98 channel=33
					12, -32, 0, 17, -21, -12, 54, -6, 14,
					-- layer=3 filter=98 channel=34
					1, 7, -5, -10, -2, 26, -11, -29, -41,
					-- layer=3 filter=98 channel=35
					3, 7, -6, 1, 0, -7, -13, -29, -8,
					-- layer=3 filter=98 channel=36
					12, 24, -17, -11, -38, -47, 46, -4, -5,
					-- layer=3 filter=98 channel=37
					-5, -3, -26, 33, 30, -88, 80, 18, 11,
					-- layer=3 filter=98 channel=38
					31, 15, 23, -26, 11, 13, -47, -49, -70,
					-- layer=3 filter=98 channel=39
					-8, 2, 0, -6, 0, 0, 13, -3, 9,
					-- layer=3 filter=98 channel=40
					6, 47, 32, -40, 16, -30, 7, -9, 12,
					-- layer=3 filter=98 channel=41
					20, 75, 52, -23, -34, 22, -20, -75, -74,
					-- layer=3 filter=98 channel=42
					-21, 17, -20, 16, 41, 27, -14, -2, 45,
					-- layer=3 filter=98 channel=43
					-5, 26, -4, -19, 57, 28, 3, -2, -39,
					-- layer=3 filter=98 channel=44
					9, -11, 11, 6, 13, 11, -9, -10, 5,
					-- layer=3 filter=98 channel=45
					11, 15, -16, -5, -11, -50, 2, -16, -29,
					-- layer=3 filter=98 channel=46
					-4, -38, 4, -34, -14, -15, 20, 7, -4,
					-- layer=3 filter=98 channel=47
					8, -2, 22, -13, 8, -3, -1, -17, -28,
					-- layer=3 filter=98 channel=48
					17, 21, 23, 36, 5, 2, -29, -48, -35,
					-- layer=3 filter=98 channel=49
					-49, -55, -9, -20, -38, -82, 22, -60, -37,
					-- layer=3 filter=98 channel=50
					-28, 15, -27, 26, 20, 33, 9, 10, 2,
					-- layer=3 filter=98 channel=51
					-28, -6, 8, -24, -27, 5, -14, 14, -19,
					-- layer=3 filter=98 channel=52
					-24, 11, 0, -4, -15, 9, -51, -36, 15,
					-- layer=3 filter=98 channel=53
					41, 68, -52, 68, -12, -34, 36, -20, 26,
					-- layer=3 filter=98 channel=54
					4, -16, -20, -59, -71, -34, -96, -31, -30,
					-- layer=3 filter=98 channel=55
					22, 24, 35, -4, 27, 18, -26, 0, -30,
					-- layer=3 filter=98 channel=56
					-6, 3, 19, -2, 22, -17, 9, 36, -2,
					-- layer=3 filter=98 channel=57
					7, -24, -25, -14, -36, -45, 16, -20, -18,
					-- layer=3 filter=98 channel=58
					43, -6, -24, 2, 31, 28, -36, -8, 35,
					-- layer=3 filter=98 channel=59
					23, -20, -26, -22, -19, 4, -15, -2, 8,
					-- layer=3 filter=98 channel=60
					5, 38, 22, 26, 56, 29, -24, -39, -26,
					-- layer=3 filter=98 channel=61
					26, 11, 39, -55, 4, 3, -58, -8, -7,
					-- layer=3 filter=98 channel=62
					-15, -28, 7, 13, -5, -35, 0, 18, -7,
					-- layer=3 filter=98 channel=63
					5, -12, 9, -24, 27, -1, 15, -9, -16,
					-- layer=3 filter=99 channel=0
					-14, -42, -13, -15, -48, 2, 2, 13, -7,
					-- layer=3 filter=99 channel=1
					-41, -33, -19, -24, -12, -40, 29, -5, -33,
					-- layer=3 filter=99 channel=2
					23, -59, 7, 21, -1, -31, 16, -1, -18,
					-- layer=3 filter=99 channel=3
					0, -13, 2, -1, 49, 20, 12, -15, 20,
					-- layer=3 filter=99 channel=4
					-28, 13, 0, 2, -12, -15, -2, -24, 8,
					-- layer=3 filter=99 channel=5
					-16, 7, 9, 1, 22, 10, 10, 11, 10,
					-- layer=3 filter=99 channel=6
					31, 15, 0, 18, 38, -26, 18, -7, 40,
					-- layer=3 filter=99 channel=7
					0, 13, -14, 31, -4, 40, -32, -28, -33,
					-- layer=3 filter=99 channel=8
					-3, 9, -7, -41, 17, 3, 8, -6, 24,
					-- layer=3 filter=99 channel=9
					7, 47, 6, -16, 1, 7, 61, 23, 34,
					-- layer=3 filter=99 channel=10
					-39, -24, -42, -41, 24, -22, 30, 4, -18,
					-- layer=3 filter=99 channel=11
					19, -12, -5, 37, 33, 0, 5, 4, -17,
					-- layer=3 filter=99 channel=12
					-17, -6, -18, -30, -10, -31, -16, 29, -31,
					-- layer=3 filter=99 channel=13
					54, -12, 5, 15, -16, 0, -18, -69, -41,
					-- layer=3 filter=99 channel=14
					38, 12, 41, 16, 18, -30, 32, 6, 1,
					-- layer=3 filter=99 channel=15
					-44, -12, -32, -52, -71, -93, -17, -6, -109,
					-- layer=3 filter=99 channel=16
					-80, -16, 18, -17, -4, -37, -12, -14, -54,
					-- layer=3 filter=99 channel=17
					28, 3, 3, 5, -28, 8, -33, -35, -8,
					-- layer=3 filter=99 channel=18
					-14, -9, 0, 29, 0, 8, 44, 4, 50,
					-- layer=3 filter=99 channel=19
					35, 17, 22, 32, 11, 3, -26, -79, 13,
					-- layer=3 filter=99 channel=20
					-23, -20, -8, 4, 34, 12, -26, -15, -20,
					-- layer=3 filter=99 channel=21
					45, -10, -21, -2, 36, 19, 19, 4, 14,
					-- layer=3 filter=99 channel=22
					0, 7, -15, -8, -9, 11, 0, -5, -12,
					-- layer=3 filter=99 channel=23
					7, -2, 28, 0, 43, 36, -27, 0, 23,
					-- layer=3 filter=99 channel=24
					14, -6, -14, 14, -24, 21, -12, -19, 20,
					-- layer=3 filter=99 channel=25
					-3, 15, -16, -8, 11, 0, 5, -5, 11,
					-- layer=3 filter=99 channel=26
					-9, 11, 11, 7, -10, -2, 1, -8, 11,
					-- layer=3 filter=99 channel=27
					22, 17, 20, 48, -8, 34, -1, -1, 13,
					-- layer=3 filter=99 channel=28
					0, 8, 8, 6, 0, 4, 0, 12, 12,
					-- layer=3 filter=99 channel=29
					-15, -29, -4, -39, -54, -12, 26, -6, 21,
					-- layer=3 filter=99 channel=30
					-4, -18, -3, -6, 2, 0, -13, 16, 5,
					-- layer=3 filter=99 channel=31
					6, -40, -1, -20, -8, -21, -11, -59, -48,
					-- layer=3 filter=99 channel=32
					-13, 33, 42, 19, -23, 9, 0, 23, -14,
					-- layer=3 filter=99 channel=33
					-10, -4, 21, 28, 18, -18, -2, 53, -68,
					-- layer=3 filter=99 channel=34
					20, 10, 15, 3, 22, 12, 29, 9, 37,
					-- layer=3 filter=99 channel=35
					26, 27, -14, 25, 19, 32, 4, 8, 15,
					-- layer=3 filter=99 channel=36
					-21, 14, -30, 20, 90, -37, 32, 24, -15,
					-- layer=3 filter=99 channel=37
					-4, 6, 25, 0, 63, -44, 16, -14, -46,
					-- layer=3 filter=99 channel=38
					-34, -1, 16, -6, -35, -7, 23, -28, -23,
					-- layer=3 filter=99 channel=39
					-11, 4, -8, 9, -9, -7, -8, 7, -2,
					-- layer=3 filter=99 channel=40
					-22, 2, -13, -48, -42, -26, -30, -2, -25,
					-- layer=3 filter=99 channel=41
					-15, 42, 8, -2, -26, 25, 1, -3, -9,
					-- layer=3 filter=99 channel=42
					49, 1, 30, 29, 2, 37, -3, -43, 5,
					-- layer=3 filter=99 channel=43
					0, 16, 10, -40, -35, -56, -52, -67, -57,
					-- layer=3 filter=99 channel=44
					0, -11, -16, 11, -12, 8, 7, 7, -12,
					-- layer=3 filter=99 channel=45
					42, -19, -7, 44, -34, -18, 20, -6, -6,
					-- layer=3 filter=99 channel=46
					-11, -25, 7, 4, 4, 18, 2, -15, 12,
					-- layer=3 filter=99 channel=47
					-4, 0, 12, -18, 30, -11, -7, -20, -14,
					-- layer=3 filter=99 channel=48
					-62, -25, -44, -2, -80, -47, 21, -5, -2,
					-- layer=3 filter=99 channel=49
					-38, 2, -13, 16, -11, 10, 0, 7, -33,
					-- layer=3 filter=99 channel=50
					37, 25, 3, -1, 78, 23, 32, 28, 5,
					-- layer=3 filter=99 channel=51
					-43, -7, -7, -69, -55, -39, -59, -76, -11,
					-- layer=3 filter=99 channel=52
					-33, -17, -24, 9, -45, -28, -12, -14, -40,
					-- layer=3 filter=99 channel=53
					20, 41, -40, -50, 18, -69, 0, -29, -1,
					-- layer=3 filter=99 channel=54
					-10, 10, -14, -26, -4, -3, -32, -28, 0,
					-- layer=3 filter=99 channel=55
					-59, -32, 14, 8, -46, 2, -14, 25, 42,
					-- layer=3 filter=99 channel=56
					11, -27, -47, -17, -35, -30, -9, 33, 13,
					-- layer=3 filter=99 channel=57
					3, 63, 25, 32, 70, 34, 2, 5, 3,
					-- layer=3 filter=99 channel=58
					-56, -18, -21, -68, -13, -25, -54, -18, -64,
					-- layer=3 filter=99 channel=59
					-16, -17, -28, -6, -1, -6, -18, -44, -48,
					-- layer=3 filter=99 channel=60
					13, -1, 20, 26, 46, -9, 38, 42, 18,
					-- layer=3 filter=99 channel=61
					-1, 25, -1, 1, -24, 23, 0, 16, 9,
					-- layer=3 filter=99 channel=62
					-4, -2, -39, -69, -68, -88, -30, -31, -49,
					-- layer=3 filter=99 channel=63
					-8, 10, 14, 8, -2, 14, 6, 4, -16,
					-- layer=3 filter=100 channel=0
					-50, -30, 0, 35, 68, 5, 17, 28, -41,
					-- layer=3 filter=100 channel=1
					5, 8, -3, -29, 0, -3, -14, 9, -37,
					-- layer=3 filter=100 channel=2
					-55, -6, -33, 5, -8, -10, -14, 0, -16,
					-- layer=3 filter=100 channel=3
					9, 7, 23, -30, -60, -27, -40, -24, 47,
					-- layer=3 filter=100 channel=4
					-3, -11, -75, 10, -6, -11, 15, -19, 4,
					-- layer=3 filter=100 channel=5
					-12, -16, -13, -24, 2, -11, -27, 12, 3,
					-- layer=3 filter=100 channel=6
					-21, -3, -4, 31, 11, -5, -18, -35, -27,
					-- layer=3 filter=100 channel=7
					-15, 17, -74, 7, -1, -28, 47, 1, -17,
					-- layer=3 filter=100 channel=8
					-29, -51, -31, -14, -7, -47, -38, -59, 31,
					-- layer=3 filter=100 channel=9
					11, -50, -3, 41, 24, 4, 19, -5, 30,
					-- layer=3 filter=100 channel=10
					-39, -87, -42, -41, -15, 7, -3, 42, 8,
					-- layer=3 filter=100 channel=11
					16, 61, 8, 36, 12, 66, 40, 43, 41,
					-- layer=3 filter=100 channel=12
					6, -1, 10, -5, 28, 33, 9, 38, 12,
					-- layer=3 filter=100 channel=13
					53, 37, -59, -19, -39, -11, -1, 4, 20,
					-- layer=3 filter=100 channel=14
					27, -28, 20, -23, 25, 12, -34, -15, 45,
					-- layer=3 filter=100 channel=15
					-56, 0, 0, 25, -18, 36, -11, 26, -16,
					-- layer=3 filter=100 channel=16
					-17, 55, -15, 23, 14, 15, 40, 7, -27,
					-- layer=3 filter=100 channel=17
					0, -14, -30, 12, 12, 6, -3, -59, -23,
					-- layer=3 filter=100 channel=18
					-1, 11, 2, -46, 19, 12, -30, -12, 15,
					-- layer=3 filter=100 channel=19
					6, -12, -3, -39, -26, -73, -8, -45, -6,
					-- layer=3 filter=100 channel=20
					-6, 24, 39, -30, -10, 26, -12, -15, -8,
					-- layer=3 filter=100 channel=21
					2, 5, -50, 26, 22, 20, 18, 9, 6,
					-- layer=3 filter=100 channel=22
					6, 14, 11, -14, 12, 7, 10, 14, -13,
					-- layer=3 filter=100 channel=23
					-15, 8, 35, 47, 52, -31, 6, 31, 10,
					-- layer=3 filter=100 channel=24
					5, 33, -47, -19, 3, -11, -11, 11, 35,
					-- layer=3 filter=100 channel=25
					-18, 4, -4, -34, -55, -25, -25, -6, -4,
					-- layer=3 filter=100 channel=26
					4, -4, 2, -7, 8, -2, 17, -12, 1,
					-- layer=3 filter=100 channel=27
					-10, 83, 10, 21, -6, -9, -10, 2, 14,
					-- layer=3 filter=100 channel=28
					-11, 10, 3, 3, -3, -8, -5, 0, -7,
					-- layer=3 filter=100 channel=29
					29, 36, 78, 42, 43, 46, -25, -36, -36,
					-- layer=3 filter=100 channel=30
					-7, 8, 0, 1, -7, -3, -8, 8, -10,
					-- layer=3 filter=100 channel=31
					50, -14, 84, 26, 15, 45, 8, 44, 26,
					-- layer=3 filter=100 channel=32
					0, -41, -2, 14, -25, 14, 21, 33, -39,
					-- layer=3 filter=100 channel=33
					14, 30, 52, -57, -11, -13, -59, -13, -45,
					-- layer=3 filter=100 channel=34
					36, 10, 19, 18, -4, -34, 9, -2, 27,
					-- layer=3 filter=100 channel=35
					7, 56, 19, 14, -37, -58, 5, -24, -30,
					-- layer=3 filter=100 channel=36
					-20, 38, 0, -37, 29, -29, -26, 17, -4,
					-- layer=3 filter=100 channel=37
					13, -2, 19, 32, -17, 8, -9, 8, 52,
					-- layer=3 filter=100 channel=38
					-11, -22, 14, -40, -48, -16, 51, 15, 15,
					-- layer=3 filter=100 channel=39
					-3, 6, -10, 1, 0, 9, 10, -6, 7,
					-- layer=3 filter=100 channel=40
					-6, -25, 49, -25, 3, -55, 0, -12, -3,
					-- layer=3 filter=100 channel=41
					-34, -19, 0, -1, -54, -25, -25, -18, 15,
					-- layer=3 filter=100 channel=42
					2, -10, -18, 28, 1, -21, -6, -27, -25,
					-- layer=3 filter=100 channel=43
					44, -24, -5, -12, -41, -28, 0, -11, 0,
					-- layer=3 filter=100 channel=44
					-1, -11, -1, 7, 6, 1, 13, -4, -4,
					-- layer=3 filter=100 channel=45
					0, 31, -11, -47, -1, -42, -58, -67, -39,
					-- layer=3 filter=100 channel=46
					3, -33, 22, -17, 9, 40, 18, 1, -40,
					-- layer=3 filter=100 channel=47
					-9, 31, 27, -15, -3, 21, -44, 7, -31,
					-- layer=3 filter=100 channel=48
					-42, -19, -10, -33, -8, -68, -24, 7, -21,
					-- layer=3 filter=100 channel=49
					9, -26, -21, 18, -23, -14, -8, -10, -2,
					-- layer=3 filter=100 channel=50
					45, 16, -19, 12, -17, 19, 0, -32, 33,
					-- layer=3 filter=100 channel=51
					24, 20, -8, 36, -10, 23, -48, -18, -45,
					-- layer=3 filter=100 channel=52
					-7, -83, -27, 15, -28, -3, 61, 15, -3,
					-- layer=3 filter=100 channel=53
					-2, -58, 16, 35, 47, -18, -17, -4, 30,
					-- layer=3 filter=100 channel=54
					1, -19, -8, -25, -65, -30, -7, 13, -20,
					-- layer=3 filter=100 channel=55
					-69, -44, -8, 3, 14, -3, 4, 29, -21,
					-- layer=3 filter=100 channel=56
					-42, -53, -31, 19, 51, -12, -9, -19, -12,
					-- layer=3 filter=100 channel=57
					67, -21, -16, -76, -4, 55, -48, 52, 11,
					-- layer=3 filter=100 channel=58
					11, -45, 1, -3, -33, 5, 59, -15, -2,
					-- layer=3 filter=100 channel=59
					-31, -72, 44, -4, 23, 2, 13, -11, -39,
					-- layer=3 filter=100 channel=60
					42, 26, 11, 2, -40, -28, 4, -7, 34,
					-- layer=3 filter=100 channel=61
					14, -29, -15, -40, -21, -9, 57, 0, 28,
					-- layer=3 filter=100 channel=62
					-9, -36, -32, -2, 8, -33, -25, -18, 39,
					-- layer=3 filter=100 channel=63
					4, 5, -7, 4, -15, 11, -4, 21, 2,
					-- layer=3 filter=101 channel=0
					-9, 32, 5, 41, 48, 4, 36, 20, 3,
					-- layer=3 filter=101 channel=1
					1, -54, 15, -20, -43, -30, -65, 16, -14,
					-- layer=3 filter=101 channel=2
					23, -30, -18, -32, -12, -86, -4, -29, 13,
					-- layer=3 filter=101 channel=3
					28, -21, 13, -4, -29, -11, -56, -20, -31,
					-- layer=3 filter=101 channel=4
					-58, -72, -34, 10, -4, 4, 15, 40, -8,
					-- layer=3 filter=101 channel=5
					-12, 3, -19, -7, -12, -20, -6, -13, -10,
					-- layer=3 filter=101 channel=6
					19, 30, 25, -7, 15, 11, -27, -24, -40,
					-- layer=3 filter=101 channel=7
					20, -2, -45, 22, 0, -67, 37, -63, -40,
					-- layer=3 filter=101 channel=8
					40, -36, -7, -10, -56, -48, 10, -33, -22,
					-- layer=3 filter=101 channel=9
					-3, 3, 34, 8, -50, -2, -33, 9, -10,
					-- layer=3 filter=101 channel=10
					-14, -51, 3, 41, -42, -9, 43, -8, -11,
					-- layer=3 filter=101 channel=11
					-78, 20, 5, -2, 9, -3, 40, 37, -30,
					-- layer=3 filter=101 channel=12
					7, 8, -14, 22, -26, 24, 6, -25, 6,
					-- layer=3 filter=101 channel=13
					10, 4, -3, -49, -14, -10, 5, -23, 8,
					-- layer=3 filter=101 channel=14
					46, -45, 1, -46, -29, 3, -46, -83, 1,
					-- layer=3 filter=101 channel=15
					-23, -18, 0, 38, -38, 9, -44, -34, -68,
					-- layer=3 filter=101 channel=16
					77, 70, 20, 9, -98, -1, 3, -51, -43,
					-- layer=3 filter=101 channel=17
					-34, -27, -34, 1, 2, 17, -4, 7, -15,
					-- layer=3 filter=101 channel=18
					38, 5, -68, 16, 34, -27, 24, 62, 41,
					-- layer=3 filter=101 channel=19
					53, 13, 50, 4, 32, -18, -3, -71, -59,
					-- layer=3 filter=101 channel=20
					44, -2, -63, 2, 19, 32, 2, 12, 13,
					-- layer=3 filter=101 channel=21
					-91, -6, -20, -17, -9, -30, -51, 19, 0,
					-- layer=3 filter=101 channel=22
					-8, -12, 11, 5, 1, -4, 0, 1, -17,
					-- layer=3 filter=101 channel=23
					33, 54, 31, 34, 16, -50, 17, 18, -21,
					-- layer=3 filter=101 channel=24
					33, 20, -12, 10, 1, -70, 7, -3, -1,
					-- layer=3 filter=101 channel=25
					-19, -46, -51, 11, 6, 39, 40, -13, 27,
					-- layer=3 filter=101 channel=26
					-12, 7, 5, -1, 0, 3, -9, -15, 14,
					-- layer=3 filter=101 channel=27
					3, 4, -7, -12, 1, -49, 22, -19, -44,
					-- layer=3 filter=101 channel=28
					15, 14, -4, 10, 5, -15, 16, 14, -3,
					-- layer=3 filter=101 channel=29
					-64, -15, -24, 10, 36, -9, 23, 103, 40,
					-- layer=3 filter=101 channel=30
					-11, -12, -6, -11, -11, -7, -16, 9, -17,
					-- layer=3 filter=101 channel=31
					-10, 7, -4, -13, -12, -2, -12, 28, -31,
					-- layer=3 filter=101 channel=32
					2, 50, 43, 21, -24, 43, 30, 23, 11,
					-- layer=3 filter=101 channel=33
					7, 13, -35, -48, -78, -12, 13, 0, -2,
					-- layer=3 filter=101 channel=34
					-40, -45, 10, 26, -17, 11, -5, 22, 1,
					-- layer=3 filter=101 channel=35
					-21, 3, -20, -14, 1, -19, 21, 5, 22,
					-- layer=3 filter=101 channel=36
					-3, -29, 26, -19, -37, -59, -28, -49, -16,
					-- layer=3 filter=101 channel=37
					-5, 4, 3, -74, -32, 3, -16, 18, -51,
					-- layer=3 filter=101 channel=38
					21, 46, -21, -45, -6, 33, 6, 51, 31,
					-- layer=3 filter=101 channel=39
					-8, 11, -1, 0, 5, 0, -5, 9, 13,
					-- layer=3 filter=101 channel=40
					7, 48, 22, -23, 17, 7, -2, 19, 27,
					-- layer=3 filter=101 channel=41
					-6, -29, 35, -34, -8, 7, -45, 9, -16,
					-- layer=3 filter=101 channel=42
					33, -2, 27, -29, -22, -20, -6, -47, -64,
					-- layer=3 filter=101 channel=43
					-29, -28, -7, 0, 21, -49, 7, 27, 7,
					-- layer=3 filter=101 channel=44
					-19, 6, -9, 6, -10, 2, 8, -8, -8,
					-- layer=3 filter=101 channel=45
					16, -29, 13, 5, -20, -74, -8, -29, 4,
					-- layer=3 filter=101 channel=46
					17, 55, 44, 17, -30, 0, 45, 5, -8,
					-- layer=3 filter=101 channel=47
					32, 1, -16, 33, -39, -1, 17, -11, 4,
					-- layer=3 filter=101 channel=48
					-12, 21, 29, 9, 9, 24, 22, 6, -5,
					-- layer=3 filter=101 channel=49
					-63, -4, -16, -101, 30, 9, -80, 21, 0,
					-- layer=3 filter=101 channel=50
					-8, 40, 31, -22, -14, -10, -31, 0, 15,
					-- layer=3 filter=101 channel=51
					22, -13, -35, -17, -4, -2, -39, 25, -39,
					-- layer=3 filter=101 channel=52
					24, 0, -10, -21, -2, -70, -45, 2, -9,
					-- layer=3 filter=101 channel=53
					-36, 15, 18, -25, -24, 0, 40, 39, -30,
					-- layer=3 filter=101 channel=54
					-51, -39, -33, -3, -13, 23, 8, -40, -67,
					-- layer=3 filter=101 channel=55
					-12, -10, 10, 58, -9, 45, 24, -15, -22,
					-- layer=3 filter=101 channel=56
					-15, 8, 28, 33, 0, 8, -6, -11, -39,
					-- layer=3 filter=101 channel=57
					-31, 4, -22, 12, -15, -51, 9, -19, -77,
					-- layer=3 filter=101 channel=58
					65, 30, 0, 37, -43, -35, 39, 22, 23,
					-- layer=3 filter=101 channel=59
					29, 42, 48, 20, -61, -16, -18, -23, -51,
					-- layer=3 filter=101 channel=60
					-53, -32, -60, -17, -49, 7, 22, 11, 44,
					-- layer=3 filter=101 channel=61
					31, 15, 56, -1, -25, 14, 48, 11, 33,
					-- layer=3 filter=101 channel=62
					-6, -22, 19, -10, -12, 23, -19, -1, -27,
					-- layer=3 filter=101 channel=63
					1, -34, 15, 1, -13, -5, 6, 3, 5,
					-- layer=3 filter=102 channel=0
					4, 19, 16, 12, 24, 24, -18, -21, -27,
					-- layer=3 filter=102 channel=1
					-21, -27, 9, -7, -25, -22, -6, -64, 16,
					-- layer=3 filter=102 channel=2
					39, 30, 15, 36, -36, -10, 4, -12, 14,
					-- layer=3 filter=102 channel=3
					-37, -5, -24, -33, -54, -19, 35, 35, 30,
					-- layer=3 filter=102 channel=4
					-28, -52, -43, -21, -26, -37, 0, 23, 10,
					-- layer=3 filter=102 channel=5
					4, 4, -3, -5, 1, 3, -17, -4, -12,
					-- layer=3 filter=102 channel=6
					-8, -10, -27, -40, -112, -25, 30, 13, 26,
					-- layer=3 filter=102 channel=7
					-18, 2, -41, -15, 5, -8, 8, -18, -3,
					-- layer=3 filter=102 channel=8
					-1, -14, -16, -51, -40, 2, 10, -5, 10,
					-- layer=3 filter=102 channel=9
					19, 16, 46, 4, 11, 9, -8, -36, -47,
					-- layer=3 filter=102 channel=10
					16, -38, -22, -28, -36, -8, 5, 14, 46,
					-- layer=3 filter=102 channel=11
					35, 21, 4, 5, 0, 28, -38, 30, 5,
					-- layer=3 filter=102 channel=12
					18, 29, -15, 40, 34, 8, 0, -51, -24,
					-- layer=3 filter=102 channel=13
					10, -26, -16, 24, -20, -47, -21, 24, -45,
					-- layer=3 filter=102 channel=14
					-16, 0, -47, 6, -2, 51, 22, -12, 33,
					-- layer=3 filter=102 channel=15
					-6, -2, -2, 17, 21, -4, -4, -37, 38,
					-- layer=3 filter=102 channel=16
					-68, -43, -26, 9, 17, 7, 27, 16, 23,
					-- layer=3 filter=102 channel=17
					-29, -12, -23, -10, -6, -26, 31, 102, 23,
					-- layer=3 filter=102 channel=18
					-6, -20, 10, 24, -7, -29, 4, 45, 20,
					-- layer=3 filter=102 channel=19
					-56, -21, -5, -2, -58, -10, -54, 13, 0,
					-- layer=3 filter=102 channel=20
					11, 54, 6, 56, 16, -1, -9, 0, 47,
					-- layer=3 filter=102 channel=21
					-50, -16, -4, 7, -27, 34, -42, -3, -7,
					-- layer=3 filter=102 channel=22
					-4, -3, 14, 2, 2, 9, -11, 8, 7,
					-- layer=3 filter=102 channel=23
					-46, 5, 8, -13, -15, 19, -13, 10, -18,
					-- layer=3 filter=102 channel=24
					-6, 9, 2, -9, -55, -37, -2, 50, 35,
					-- layer=3 filter=102 channel=25
					-31, -19, -53, -22, 11, -29, 6, -5, -13,
					-- layer=3 filter=102 channel=26
					-13, 0, -2, 13, 5, 6, -13, 8, -1,
					-- layer=3 filter=102 channel=27
					19, 15, -4, -6, 8, 4, -17, 15, -15,
					-- layer=3 filter=102 channel=28
					7, -3, -8, 8, 16, 1, -12, 11, -2,
					-- layer=3 filter=102 channel=29
					21, 7, 39, 15, -28, -43, 10, 34, -1,
					-- layer=3 filter=102 channel=30
					-12, 18, -3, 1, 6, -3, 7, -8, 14,
					-- layer=3 filter=102 channel=31
					41, 20, 27, 60, 12, 20, 48, 19, 10,
					-- layer=3 filter=102 channel=32
					-18, 23, 27, 1, -21, 14, -17, -18, 5,
					-- layer=3 filter=102 channel=33
					30, -24, -33, 36, 17, 4, -14, -10, -3,
					-- layer=3 filter=102 channel=34
					-36, -21, -37, -18, -32, -22, -2, 34, 0,
					-- layer=3 filter=102 channel=35
					-49, -34, -37, -22, -20, -78, -10, 2, 8,
					-- layer=3 filter=102 channel=36
					31, -5, -4, 6, -16, -15, -30, -39, -9,
					-- layer=3 filter=102 channel=37
					4, -41, -55, -2, -46, -46, -18, -6, -19,
					-- layer=3 filter=102 channel=38
					2, -12, -37, 44, 11, -10, 41, -2, 16,
					-- layer=3 filter=102 channel=39
					7, -1, -2, 0, -1, -4, 7, 14, -11,
					-- layer=3 filter=102 channel=40
					-16, 0, 15, 17, 54, 15, -18, 37, -2,
					-- layer=3 filter=102 channel=41
					-43, -1, -75, -41, -57, -53, -2, 90, 28,
					-- layer=3 filter=102 channel=42
					-17, -13, -8, -30, -60, -39, 0, 49, 5,
					-- layer=3 filter=102 channel=43
					3, 28, 2, -4, -29, -6, 56, -5, 41,
					-- layer=3 filter=102 channel=44
					12, -11, 1, -11, 9, -1, -13, -9, -2,
					-- layer=3 filter=102 channel=45
					-25, -43, -9, -9, -22, 14, -11, -60, 37,
					-- layer=3 filter=102 channel=46
					-29, -7, -5, -16, -12, 1, -8, -48, -47,
					-- layer=3 filter=102 channel=47
					0, 33, 4, 29, -13, 15, 20, 25, 2,
					-- layer=3 filter=102 channel=48
					-1, 6, -13, 5, 31, 0, 19, -13, -4,
					-- layer=3 filter=102 channel=49
					17, 11, -17, 33, 6, -33, -29, -5, -42,
					-- layer=3 filter=102 channel=50
					-7, 14, -15, 10, -31, -18, 41, 32, -16,
					-- layer=3 filter=102 channel=51
					-16, -40, -18, 47, 59, 28, 23, -4, 37,
					-- layer=3 filter=102 channel=52
					9, -5, 11, 24, -42, -30, 4, 17, -7,
					-- layer=3 filter=102 channel=53
					-18, 12, 37, -45, 46, 42, 21, 16, 26,
					-- layer=3 filter=102 channel=54
					-20, 5, 10, 19, 33, 50, 34, 15, 75,
					-- layer=3 filter=102 channel=55
					24, -9, -14, 41, 8, 5, 30, -7, 17,
					-- layer=3 filter=102 channel=56
					31, 28, 12, 48, 21, 13, 10, -3, 42,
					-- layer=3 filter=102 channel=57
					-16, 2, -35, 3, 7, -40, -4, 33, -33,
					-- layer=3 filter=102 channel=58
					-15, 5, -39, 16, 11, -6, 32, 1, 20,
					-- layer=3 filter=102 channel=59
					-33, 7, 32, -35, 48, 24, 0, -18, -3,
					-- layer=3 filter=102 channel=60
					-36, -10, -32, -27, -19, -29, 26, 34, 8,
					-- layer=3 filter=102 channel=61
					2, 8, 35, -22, -14, -19, 16, -24, 12,
					-- layer=3 filter=102 channel=62
					11, -26, -12, 4, 36, 43, 22, -15, 56,
					-- layer=3 filter=102 channel=63
					-2, 18, 0, 5, -13, -17, 7, 8, 8,
					-- layer=3 filter=103 channel=0
					-22, -59, -28, 5, 9, 16, -9, 45, -9,
					-- layer=3 filter=103 channel=1
					-12, 28, 22, 8, 20, 13, 1, 5, -3,
					-- layer=3 filter=103 channel=2
					-12, -8, 15, 26, 34, 21, 19, -34, -28,
					-- layer=3 filter=103 channel=3
					-1, -1, -4, 21, 53, 17, 15, 6, 18,
					-- layer=3 filter=103 channel=4
					1, -35, 11, 11, 7, 0, 1, 2, 24,
					-- layer=3 filter=103 channel=5
					14, 16, 12, -7, 21, -4, 12, 21, 8,
					-- layer=3 filter=103 channel=6
					-37, 0, -29, 9, 41, -39, -9, -39, -6,
					-- layer=3 filter=103 channel=7
					4, 23, -40, 38, 25, 10, 26, -13, 5,
					-- layer=3 filter=103 channel=8
					9, -14, -21, -24, 38, 3, 0, -32, 11,
					-- layer=3 filter=103 channel=9
					9, 65, 55, 11, 45, 0, 29, 31, 15,
					-- layer=3 filter=103 channel=10
					-16, -25, -9, -38, 3, -15, 38, 37, 8,
					-- layer=3 filter=103 channel=11
					-11, -27, 12, 9, 23, 3, -23, -14, -2,
					-- layer=3 filter=103 channel=12
					-14, 2, -34, -2, 63, 38, -34, -6, -4,
					-- layer=3 filter=103 channel=13
					22, 15, 26, 4, 1, 1, 15, -36, 0,
					-- layer=3 filter=103 channel=14
					37, 20, 8, -2, 35, -26, -3, -20, 8,
					-- layer=3 filter=103 channel=15
					-2, 31, 5, 11, 4, -34, -7, -9, -35,
					-- layer=3 filter=103 channel=16
					-21, 9, -12, -44, -28, 6, 4, -18, -39,
					-- layer=3 filter=103 channel=17
					3, -4, -19, 16, -15, -9, 0, -37, 9,
					-- layer=3 filter=103 channel=18
					-37, -40, 11, -18, -24, 6, 4, 17, -9,
					-- layer=3 filter=103 channel=19
					-19, -9, -13, 18, 17, -4, -45, -70, -15,
					-- layer=3 filter=103 channel=20
					-47, -46, -10, -33, -17, 26, -18, -48, -47,
					-- layer=3 filter=103 channel=21
					2, -24, -18, -4, 22, 11, -18, 2, 7,
					-- layer=3 filter=103 channel=22
					3, 9, -9, 18, 10, -2, 5, 2, 1,
					-- layer=3 filter=103 channel=23
					21, -15, -10, 12, 19, 5, -6, 4, 21,
					-- layer=3 filter=103 channel=24
					-5, -21, 0, -17, -53, 13, -55, -34, -2,
					-- layer=3 filter=103 channel=25
					35, 21, -10, -1, -7, 27, 3, 25, 39,
					-- layer=3 filter=103 channel=26
					-16, 3, 0, -14, -6, 11, 3, -5, 2,
					-- layer=3 filter=103 channel=27
					29, 13, 44, 13, -4, 25, 22, -19, -5,
					-- layer=3 filter=103 channel=28
					-11, 11, -15, 7, 1, 1, 12, 8, 6,
					-- layer=3 filter=103 channel=29
					-15, -12, 2, -10, -24, -17, 9, 30, -15,
					-- layer=3 filter=103 channel=30
					-12, -6, -7, -6, -5, -6, -1, -1, -7,
					-- layer=3 filter=103 channel=31
					16, 5, 7, 14, -52, -8, 2, 10, -16,
					-- layer=3 filter=103 channel=32
					35, 12, 30, 34, 11, 6, 23, 21, 35,
					-- layer=3 filter=103 channel=33
					-25, 9, 7, 0, -3, 47, -14, -3, -17,
					-- layer=3 filter=103 channel=34
					7, -9, 15, 27, -11, -23, 38, -18, -18,
					-- layer=3 filter=103 channel=35
					28, 12, 26, 0, -30, -9, 6, 7, 20,
					-- layer=3 filter=103 channel=36
					-13, 8, -20, -12, 57, 16, 11, 6, 3,
					-- layer=3 filter=103 channel=37
					13, 15, 62, 5, 26, -14, 45, -50, 1,
					-- layer=3 filter=103 channel=38
					-1, -1, 3, 11, -40, -1, 22, 27, -14,
					-- layer=3 filter=103 channel=39
					2, 2, -9, 4, -10, 2, -13, -3, 1,
					-- layer=3 filter=103 channel=40
					-37, -15, -7, -11, 15, -27, 8, 2, -28,
					-- layer=3 filter=103 channel=41
					-15, -33, 31, -15, -18, 0, 3, -9, -13,
					-- layer=3 filter=103 channel=42
					0, -37, 14, 6, 8, -2, -5, -63, -20,
					-- layer=3 filter=103 channel=43
					-9, 36, -14, -11, 15, -41, -8, -41, 24,
					-- layer=3 filter=103 channel=44
					-3, -3, 2, 8, -14, 7, 11, -8, -5,
					-- layer=3 filter=103 channel=45
					23, 21, 10, 15, 13, 22, -29, -28, 17,
					-- layer=3 filter=103 channel=46
					-5, 11, -1, 4, -11, 21, 10, 1, 3,
					-- layer=3 filter=103 channel=47
					-23, 53, -22, -26, 16, 6, -49, -3, -36,
					-- layer=3 filter=103 channel=48
					13, 9, -20, -1, -52, 17, 11, 0, -29,
					-- layer=3 filter=103 channel=49
					-20, -47, -3, 24, 25, -32, 9, 26, -30,
					-- layer=3 filter=103 channel=50
					9, 10, -15, 4, 18, 17, -19, 2, 27,
					-- layer=3 filter=103 channel=51
					-16, 17, -7, 18, 16, 3, 2, -28, -11,
					-- layer=3 filter=103 channel=52
					-9, -41, -4, 2, -35, -23, -42, -1, -2,
					-- layer=3 filter=103 channel=53
					-3, 27, -5, -41, 36, 14, -48, 3, 23,
					-- layer=3 filter=103 channel=54
					19, 4, -17, 23, 26, 0, 5, -11, 22,
					-- layer=3 filter=103 channel=55
					-25, -7, -25, 25, 1, -29, 18, 6, -16,
					-- layer=3 filter=103 channel=56
					-9, -4, -9, -21, -11, 47, -12, 27, 39,
					-- layer=3 filter=103 channel=57
					-28, 15, 30, -34, 1, 54, -19, 44, 30,
					-- layer=3 filter=103 channel=58
					-42, 0, 11, -29, 16, -31, 14, -21, -45,
					-- layer=3 filter=103 channel=59
					-28, -14, -15, -6, 7, 12, -14, 20, 18,
					-- layer=3 filter=103 channel=60
					22, 12, 35, 18, -10, -29, 33, -2, 20,
					-- layer=3 filter=103 channel=61
					59, 29, 26, 3, -36, 6, -11, 5, 30,
					-- layer=3 filter=103 channel=62
					-14, 24, -30, -46, 25, -18, -44, 20, 3,
					-- layer=3 filter=103 channel=63
					-2, -2, 8, -2, -24, 6, -4, 18, 10,
					-- layer=3 filter=104 channel=0
					-28, -31, 9, -46, -29, -25, -27, -14, -86,
					-- layer=3 filter=104 channel=1
					-30, 4, -23, 25, -19, -26, 7, 0, 11,
					-- layer=3 filter=104 channel=2
					-24, -17, -49, 18, -3, -12, 18, 25, 46,
					-- layer=3 filter=104 channel=3
					10, 25, -11, 11, 17, -6, 24, 0, 2,
					-- layer=3 filter=104 channel=4
					-18, -34, -1, -14, 23, -22, 22, 11, 0,
					-- layer=3 filter=104 channel=5
					15, -4, -14, 3, -8, -2, 1, 5, -12,
					-- layer=3 filter=104 channel=6
					16, 41, 12, -2, 17, 40, 26, 42, 60,
					-- layer=3 filter=104 channel=7
					13, 4, 10, 6, -40, -17, 10, 8, -16,
					-- layer=3 filter=104 channel=8
					-2, -27, -1, 2, 26, 50, 4, 5, 27,
					-- layer=3 filter=104 channel=9
					10, -45, -4, 20, -50, -5, 0, 4, -17,
					-- layer=3 filter=104 channel=10
					14, -25, 11, 33, 23, 40, -7, -17, 30,
					-- layer=3 filter=104 channel=11
					22, -75, -36, -12, -36, -20, -4, -2, -17,
					-- layer=3 filter=104 channel=12
					10, 7, -32, 7, -39, -37, 18, -7, -18,
					-- layer=3 filter=104 channel=13
					-7, 13, -26, -27, 45, -35, 6, 40, 38,
					-- layer=3 filter=104 channel=14
					-43, -18, -79, -15, 31, -18, 36, -3, -9,
					-- layer=3 filter=104 channel=15
					-27, 9, -3, -6, 2, 33, -13, -37, 40,
					-- layer=3 filter=104 channel=16
					-8, 24, -5, 11, 19, 38, -34, -59, -5,
					-- layer=3 filter=104 channel=17
					-24, -8, 11, -20, 26, -23, 21, 31, -7,
					-- layer=3 filter=104 channel=18
					50, -37, -2, 3, -4, -15, -31, 20, 22,
					-- layer=3 filter=104 channel=19
					-7, 5, -18, -20, 28, -15, 31, 62, 35,
					-- layer=3 filter=104 channel=20
					19, 27, -22, -37, 43, 13, -10, -2, 2,
					-- layer=3 filter=104 channel=21
					-36, -45, -20, -41, -28, -14, 13, -9, 6,
					-- layer=3 filter=104 channel=22
					5, 12, -6, -6, 1, 9, 11, -15, -1,
					-- layer=3 filter=104 channel=23
					-24, -62, -38, 13, -35, -1, -22, -21, 8,
					-- layer=3 filter=104 channel=24
					29, -1, 14, 10, 1, -5, 12, 42, 28,
					-- layer=3 filter=104 channel=25
					2, 12, 16, 9, 50, 37, 15, 4, 1,
					-- layer=3 filter=104 channel=26
					3, 9, 7, 5, -10, 1, 0, -5, -10,
					-- layer=3 filter=104 channel=27
					-19, -32, -16, -4, 45, 17, 22, -3, -4,
					-- layer=3 filter=104 channel=28
					-9, 8, 11, 2, -12, 8, -12, -5, -2,
					-- layer=3 filter=104 channel=29
					30, -42, 18, -34, -25, -27, 22, -28, 2,
					-- layer=3 filter=104 channel=30
					4, 8, 1, 6, -1, 3, 7, 12, 4,
					-- layer=3 filter=104 channel=31
					-23, -14, -2, 31, 47, 25, 62, 23, 48,
					-- layer=3 filter=104 channel=32
					-5, 21, -27, -2, -78, 1, -12, -37, -57,
					-- layer=3 filter=104 channel=33
					-16, -56, -54, 6, 16, -47, -8, -24, 2,
					-- layer=3 filter=104 channel=34
					27, -37, -22, -30, 25, 29, 21, -8, 1,
					-- layer=3 filter=104 channel=35
					-8, 12, 1, 9, 29, 9, -7, 30, 22,
					-- layer=3 filter=104 channel=36
					-31, -71, -70, -14, 10, -6, -57, 3, 2,
					-- layer=3 filter=104 channel=37
					-19, 8, -7, 1, 18, 11, 3, 37, 16,
					-- layer=3 filter=104 channel=38
					9, -1, -14, 1, -4, 12, 13, 22, 3,
					-- layer=3 filter=104 channel=39
					3, 11, -1, -12, -1, 5, -5, 7, 13,
					-- layer=3 filter=104 channel=40
					-5, -45, 5, 1, 19, -5, 11, 7, 14,
					-- layer=3 filter=104 channel=41
					-1, 11, -15, 12, 20, 27, 42, 55, 48,
					-- layer=3 filter=104 channel=42
					9, 26, 11, -1, 19, 6, 22, 19, 14,
					-- layer=3 filter=104 channel=43
					23, 16, -1, -4, -27, -11, 62, 14, 9,
					-- layer=3 filter=104 channel=44
					2, -2, -8, -4, 13, 3, -2, -11, -7,
					-- layer=3 filter=104 channel=45
					-63, -25, 2, -29, 47, 4, -2, 34, 19,
					-- layer=3 filter=104 channel=46
					42, -17, 28, 25, -18, 43, 16, 0, -9,
					-- layer=3 filter=104 channel=47
					33, -36, -34, 61, -23, 13, 49, 33, 31,
					-- layer=3 filter=104 channel=48
					0, 15, 14, 37, -6, -33, 17, -12, 13,
					-- layer=3 filter=104 channel=49
					-18, -46, -15, -20, -7, -20, -21, 3, -17,
					-- layer=3 filter=104 channel=50
					-1, 36, 57, 16, 46, 9, 17, 32, 10,
					-- layer=3 filter=104 channel=51
					13, -24, 2, -6, -41, -21, 31, -25, -20,
					-- layer=3 filter=104 channel=52
					22, -6, -3, -4, 16, -29, -8, -5, -31,
					-- layer=3 filter=104 channel=53
					-14, -51, 6, 24, 0, -27, 30, -6, 19,
					-- layer=3 filter=104 channel=54
					9, 5, 51, 27, 0, 5, 34, -23, -5,
					-- layer=3 filter=104 channel=55
					-36, -5, -26, -58, -75, -14, 5, -22, -33,
					-- layer=3 filter=104 channel=56
					-17, -18, 0, 16, -34, -38, 26, 17, 9,
					-- layer=3 filter=104 channel=57
					-1, -72, -27, 12, -54, -65, -13, 22, 21,
					-- layer=3 filter=104 channel=58
					7, -17, 3, -14, -49, 29, 9, 6, 50,
					-- layer=3 filter=104 channel=59
					4, 4, 14, -21, -47, 25, -10, -29, -64,
					-- layer=3 filter=104 channel=60
					-21, 27, -14, 1, 39, 12, 21, -13, -3,
					-- layer=3 filter=104 channel=61
					2, 21, 4, 32, -13, -1, 10, -17, 11,
					-- layer=3 filter=104 channel=62
					0, -48, -26, 0, -1, -6, 69, -15, 12,
					-- layer=3 filter=104 channel=63
					-6, 1, 5, -13, -15, -5, -12, -7, -25,
					-- layer=3 filter=105 channel=0
					8, 0, 7, 10, 27, 0, 10, 10, 32,
					-- layer=3 filter=105 channel=1
					-2, 23, 35, 0, -34, 5, 16, 24, 12,
					-- layer=3 filter=105 channel=2
					2, 10, -25, 9, 23, -33, 16, 31, 16,
					-- layer=3 filter=105 channel=3
					-48, 3, -7, -39, 50, -6, -6, 15, -22,
					-- layer=3 filter=105 channel=4
					60, 6, 40, 13, 26, 31, 3, -9, -33,
					-- layer=3 filter=105 channel=5
					-15, -3, 3, 6, 17, 10, 14, 11, 5,
					-- layer=3 filter=105 channel=6
					-50, -22, -19, 8, 84, -6, -16, -3, -36,
					-- layer=3 filter=105 channel=7
					56, 3, 3, -5, -4, 23, -20, 24, -7,
					-- layer=3 filter=105 channel=8
					-3, 9, 0, -20, 3, 35, -29, 36, 6,
					-- layer=3 filter=105 channel=9
					-24, 30, 14, 22, 24, 28, -28, 13, 15,
					-- layer=3 filter=105 channel=10
					14, 1, 22, 6, 2, 7, -3, 30, 24,
					-- layer=3 filter=105 channel=11
					0, -7, -19, -5, -18, 6, 9, -6, 6,
					-- layer=3 filter=105 channel=12
					-8, 21, -12, 20, 40, 17, 8, 26, 34,
					-- layer=3 filter=105 channel=13
					10, 47, 17, -10, 22, 9, 18, 32, 22,
					-- layer=3 filter=105 channel=14
					36, 36, -30, -8, 0, 12, -6, -14, -27,
					-- layer=3 filter=105 channel=15
					2, 27, 4, -1, -5, 41, 19, 10, 4,
					-- layer=3 filter=105 channel=16
					-25, 20, -15, 47, 23, 50, 17, -1, 22,
					-- layer=3 filter=105 channel=17
					14, 5, 30, 4, -6, 9, -28, -59, 13,
					-- layer=3 filter=105 channel=18
					-45, -12, -29, -25, 3, -20, -23, 21, -26,
					-- layer=3 filter=105 channel=19
					10, -14, -5, -55, 33, -41, -16, 7, -48,
					-- layer=3 filter=105 channel=20
					7, -8, -47, -14, 8, -10, 2, 35, -14,
					-- layer=3 filter=105 channel=21
					-10, 12, 25, -5, -25, -2, 24, -10, 18,
					-- layer=3 filter=105 channel=22
					12, 11, -9, -9, -11, 2, -13, 2, 6,
					-- layer=3 filter=105 channel=23
					-35, -15, -18, -20, 7, 9, -18, 5, 13,
					-- layer=3 filter=105 channel=24
					22, 13, 46, -29, 43, 0, 5, -13, 8,
					-- layer=3 filter=105 channel=25
					27, -16, -14, 20, -3, -20, -14, -26, 1,
					-- layer=3 filter=105 channel=26
					-12, 12, 0, 9, 2, -4, 15, -15, 5,
					-- layer=3 filter=105 channel=27
					41, 7, 34, -1, 0, -24, 3, 10, 9,
					-- layer=3 filter=105 channel=28
					-13, 11, 2, -7, 11, -12, -2, -11, -14,
					-- layer=3 filter=105 channel=29
					-16, 19, -26, 20, 27, -24, -30, -10, 12,
					-- layer=3 filter=105 channel=30
					-9, 8, 12, -14, -7, 7, -9, 1, 12,
					-- layer=3 filter=105 channel=31
					-50, -52, -75, -3, 13, 8, 15, -22, -23,
					-- layer=3 filter=105 channel=32
					24, 24, 2, 61, 22, -2, 48, 20, 36,
					-- layer=3 filter=105 channel=33
					-8, 26, -30, 14, -46, -5, 9, 10, 17,
					-- layer=3 filter=105 channel=34
					-10, -22, -1, -2, -30, -7, -7, -43, -42,
					-- layer=3 filter=105 channel=35
					34, 14, 32, -31, -29, -14, -13, 1, -11,
					-- layer=3 filter=105 channel=36
					23, 25, -26, -7, -6, 12, 0, 21, 3,
					-- layer=3 filter=105 channel=37
					13, 30, 17, -12, -13, -5, 23, 28, -9,
					-- layer=3 filter=105 channel=38
					-13, -54, -68, 19, -1, 10, 0, -1, 24,
					-- layer=3 filter=105 channel=39
					10, 16, -3, -6, 5, 12, 0, -1, 4,
					-- layer=3 filter=105 channel=40
					-6, -3, 5, 17, -2, -24, 13, 31, -5,
					-- layer=3 filter=105 channel=41
					3, 20, 4, -38, -10, 22, -53, -17, -22,
					-- layer=3 filter=105 channel=42
					0, 39, 29, -21, 11, -18, -13, -8, 19,
					-- layer=3 filter=105 channel=43
					-38, 22, -12, -39, 68, -20, 29, 78, -6,
					-- layer=3 filter=105 channel=44
					-9, 0, 2, 10, 9, -11, 2, -3, -14,
					-- layer=3 filter=105 channel=45
					-19, 14, 11, -13, 38, 5, -10, 18, 20,
					-- layer=3 filter=105 channel=46
					-6, 12, 17, 45, 2, 21, 50, 53, 19,
					-- layer=3 filter=105 channel=47
					-12, 27, -7, -1, -9, 14, 0, 34, 24,
					-- layer=3 filter=105 channel=48
					9, 21, 3, 23, -32, 10, -5, -9, 14,
					-- layer=3 filter=105 channel=49
					32, 14, 3, -1, -17, 15, 5, -36, 13,
					-- layer=3 filter=105 channel=50
					-14, -3, 6, -24, 0, -37, -38, 8, 12,
					-- layer=3 filter=105 channel=51
					48, 57, -2, 30, 21, -14, 1, -27, 1,
					-- layer=3 filter=105 channel=52
					15, -8, 35, -3, 26, -14, -38, -16, 5,
					-- layer=3 filter=105 channel=53
					-31, -8, 32, -35, -28, 0, -23, -14, 8,
					-- layer=3 filter=105 channel=54
					3, -11, 17, -14, -29, 1, -52, -7, -31,
					-- layer=3 filter=105 channel=55
					16, -13, -30, 16, 15, -35, 20, -12, -10,
					-- layer=3 filter=105 channel=56
					17, -1, 51, -4, 53, 36, 11, 56, 8,
					-- layer=3 filter=105 channel=57
					-36, -8, -5, -42, -57, -5, -15, -34, -28,
					-- layer=3 filter=105 channel=58
					49, 34, 5, -6, -2, -21, 14, 49, 17,
					-- layer=3 filter=105 channel=59
					11, -3, 43, -18, 1, 39, 24, 26, 64,
					-- layer=3 filter=105 channel=60
					20, -64, -31, -33, -61, -43, -22, -6, -16,
					-- layer=3 filter=105 channel=61
					-3, -7, -2, 28, 4, 68, 19, -22, 34,
					-- layer=3 filter=105 channel=62
					30, 44, 15, -16, 24, 23, 6, 49, -4,
					-- layer=3 filter=105 channel=63
					0, -1, -6, 11, -1, -13, 17, -18, 11,
					-- layer=3 filter=106 channel=0
					-17, -27, -10, -10, -27, -10, -46, -51, 23,
					-- layer=3 filter=106 channel=1
					16, -3, 39, 24, -7, 15, 19, 47, 13,
					-- layer=3 filter=106 channel=2
					10, -6, -16, -28, 14, -15, -26, -22, -17,
					-- layer=3 filter=106 channel=3
					-14, -16, -29, -6, -7, 0, -25, -14, -23,
					-- layer=3 filter=106 channel=4
					-5, 18, 9, 6, 15, -4, -15, -30, -53,
					-- layer=3 filter=106 channel=5
					-20, -12, 0, 0, 6, -2, -14, -4, -9,
					-- layer=3 filter=106 channel=6
					-8, -20, -17, 10, 2, -26, 24, 8, -1,
					-- layer=3 filter=106 channel=7
					61, 0, 8, -14, -19, 24, -34, 29, 43,
					-- layer=3 filter=106 channel=8
					-11, -13, 2, -16, -18, -7, 4, 30, 23,
					-- layer=3 filter=106 channel=9
					3, -3, -19, 10, -2, 13, 48, 60, 47,
					-- layer=3 filter=106 channel=10
					-2, 30, 4, 43, -7, -20, -4, 3, -11,
					-- layer=3 filter=106 channel=11
					0, 17, 21, 8, 36, -24, 11, -2, 16,
					-- layer=3 filter=106 channel=12
					-8, -9, -15, -25, -32, 3, 9, 26, 9,
					-- layer=3 filter=106 channel=13
					16, -16, -11, 32, 42, 32, -29, 4, 5,
					-- layer=3 filter=106 channel=14
					5, -15, 16, 5, -23, 14, -11, 3, 11,
					-- layer=3 filter=106 channel=15
					-3, -22, 18, -6, 0, 18, -4, -35, -26,
					-- layer=3 filter=106 channel=16
					-53, -29, 10, -16, 26, 3, -20, 1, -21,
					-- layer=3 filter=106 channel=17
					31, 25, 10, 30, 38, 29, -30, -61, -7,
					-- layer=3 filter=106 channel=18
					5, -1, 4, 5, 0, 14, -2, -72, -32,
					-- layer=3 filter=106 channel=19
					4, -6, -23, -1, -27, 0, -49, -63, -47,
					-- layer=3 filter=106 channel=20
					19, -8, -9, -20, 2, 2, 23, 5, 2,
					-- layer=3 filter=106 channel=21
					-11, 33, 26, -3, 34, 7, 41, -13, -2,
					-- layer=3 filter=106 channel=22
					0, -10, -16, 0, -5, -12, 6, -6, 7,
					-- layer=3 filter=106 channel=23
					-3, 31, 14, -14, 20, 46, -11, -3, 45,
					-- layer=3 filter=106 channel=24
					28, 16, 26, 32, 54, 23, 16, -23, -25,
					-- layer=3 filter=106 channel=25
					-7, -24, -3, -5, 24, -18, -2, 2, -19,
					-- layer=3 filter=106 channel=26
					15, -13, -14, 12, 1, 10, -6, 19, 12,
					-- layer=3 filter=106 channel=27
					-7, 12, 5, 43, 58, 15, -15, 11, -5,
					-- layer=3 filter=106 channel=28
					8, -12, 0, 7, -9, -3, -8, 8, 2,
					-- layer=3 filter=106 channel=29
					-4, 5, -34, 15, 34, 17, 46, -46, 10,
					-- layer=3 filter=106 channel=30
					-3, 2, -9, -5, 13, -16, 0, 7, 2,
					-- layer=3 filter=106 channel=31
					-37, -37, -14, -3, 48, 53, 19, -8, 46,
					-- layer=3 filter=106 channel=32
					-11, 20, -6, 2, -18, 21, 4, 0, 18,
					-- layer=3 filter=106 channel=33
					12, 9, 4, 1, -8, -10, 10, 24, -8,
					-- layer=3 filter=106 channel=34
					-46, 4, -6, 21, 13, -1, 0, 32, 33,
					-- layer=3 filter=106 channel=35
					25, -12, -15, 14, 32, -1, -20, -32, -14,
					-- layer=3 filter=106 channel=36
					9, -5, 13, 30, -7, 18, 24, 54, 0,
					-- layer=3 filter=106 channel=37
					3, 1, 22, 15, -8, 33, 7, 18, 46,
					-- layer=3 filter=106 channel=38
					1, 31, 48, 33, -3, 9, 25, 1, -6,
					-- layer=3 filter=106 channel=39
					11, -1, -9, -10, 0, 10, 4, -7, -10,
					-- layer=3 filter=106 channel=40
					-10, -21, -1, -16, -43, -20, -7, -30, -13,
					-- layer=3 filter=106 channel=41
					4, 11, -2, -4, 4, -16, -32, -41, -8,
					-- layer=3 filter=106 channel=42
					-8, 26, 2, 8, 34, 32, -29, -34, 0,
					-- layer=3 filter=106 channel=43
					-8, 5, -14, -6, -37, -8, 9, 28, -19,
					-- layer=3 filter=106 channel=44
					-8, 0, -9, -2, -12, 5, 6, -12, -6,
					-- layer=3 filter=106 channel=45
					42, -2, -1, 25, -19, 34, -43, -37, 6,
					-- layer=3 filter=106 channel=46
					-5, -14, 0, -1, -11, 4, -3, -23, -35,
					-- layer=3 filter=106 channel=47
					-4, -41, 27, -24, -18, 6, -24, -19, -14,
					-- layer=3 filter=106 channel=48
					-32, -32, 32, 24, -21, -5, -10, -7, -5,
					-- layer=3 filter=106 channel=49
					10, 14, -6, -20, -13, 13, 33, -38, -3,
					-- layer=3 filter=106 channel=50
					-9, 4, 12, 12, 18, 5, 26, 9, -16,
					-- layer=3 filter=106 channel=51
					26, -18, -27, -46, -49, -22, 10, 16, 16,
					-- layer=3 filter=106 channel=52
					24, 6, 27, -15, 34, 5, -30, 18, -4,
					-- layer=3 filter=106 channel=53
					4, -2, 0, 69, -8, -50, -12, 13, -22,
					-- layer=3 filter=106 channel=54
					-21, -26, 0, -17, -7, -8, -37, -17, -36,
					-- layer=3 filter=106 channel=55
					21, 32, 36, -33, -18, 31, -38, 27, -13,
					-- layer=3 filter=106 channel=56
					12, 27, 8, 55, 36, -17, 0, -18, -8,
					-- layer=3 filter=106 channel=57
					47, 17, -12, 30, 28, -50, 36, -13, -6,
					-- layer=3 filter=106 channel=58
					13, -16, -47, -3, -53, -14, 4, -15, 16,
					-- layer=3 filter=106 channel=59
					17, -16, 7, 35, -29, 12, 4, -10, 28,
					-- layer=3 filter=106 channel=60
					8, -2, -9, 4, 2, 0, -4, 38, 6,
					-- layer=3 filter=106 channel=61
					-9, -2, 4, 19, 15, 30, -17, 2, -19,
					-- layer=3 filter=106 channel=62
					11, 7, 15, 9, -28, 9, 20, 19, 39,
					-- layer=3 filter=106 channel=63
					15, -10, -3, 9, -16, 0, -7, -3, 0,
					-- layer=3 filter=107 channel=0
					-4, 8, -4, -1, 10, -5, 1, -6, -4,
					-- layer=3 filter=107 channel=1
					-4, 3, 7, 4, -4, 0, 10, -12, -11,
					-- layer=3 filter=107 channel=2
					-11, -11, 1, 12, -14, 0, -6, -15, -8,
					-- layer=3 filter=107 channel=3
					-14, 7, -9, 13, 1, -13, 10, 0, 0,
					-- layer=3 filter=107 channel=4
					-8, -5, 6, -3, 7, 8, -2, -7, 8,
					-- layer=3 filter=107 channel=5
					-9, 1, -4, 14, 0, 2, 4, -8, 2,
					-- layer=3 filter=107 channel=6
					-10, -9, -1, 5, 4, -1, -13, 5, 3,
					-- layer=3 filter=107 channel=7
					6, -13, 7, -6, -17, -3, -12, -3, -2,
					-- layer=3 filter=107 channel=8
					1, -14, -10, -7, -12, 1, -12, 4, 0,
					-- layer=3 filter=107 channel=9
					12, 4, -12, -16, 10, 0, 1, 0, -4,
					-- layer=3 filter=107 channel=10
					0, -5, 3, -4, -5, 13, 9, 5, -4,
					-- layer=3 filter=107 channel=11
					-12, -6, -2, -4, 8, 8, -13, -15, -12,
					-- layer=3 filter=107 channel=12
					14, -12, 1, -8, -5, -6, 13, 15, 1,
					-- layer=3 filter=107 channel=13
					9, 4, -14, 3, -10, -5, 4, -4, 8,
					-- layer=3 filter=107 channel=14
					2, -13, 10, -9, -9, -5, 6, 0, 6,
					-- layer=3 filter=107 channel=15
					-19, -7, 1, -9, 3, 1, 6, 9, -5,
					-- layer=3 filter=107 channel=16
					-14, 4, 14, -8, 13, 6, -5, 1, 6,
					-- layer=3 filter=107 channel=17
					7, 3, -12, 1, 4, -8, -7, -13, 9,
					-- layer=3 filter=107 channel=18
					-15, -9, 1, 3, -12, -13, 0, -13, 5,
					-- layer=3 filter=107 channel=19
					8, 3, 0, 9, 3, 5, 3, 10, -12,
					-- layer=3 filter=107 channel=20
					-1, 2, -8, 3, -13, -3, 4, -10, 3,
					-- layer=3 filter=107 channel=21
					-4, -6, -14, 12, -15, 5, 3, 3, 2,
					-- layer=3 filter=107 channel=22
					14, 1, -2, 0, -4, 6, -8, 5, 12,
					-- layer=3 filter=107 channel=23
					-15, -9, 2, -4, 7, 5, -8, -18, -6,
					-- layer=3 filter=107 channel=24
					-5, 1, 10, -7, -12, -3, 2, 8, 8,
					-- layer=3 filter=107 channel=25
					7, -3, -16, -8, -12, -10, 5, -3, 0,
					-- layer=3 filter=107 channel=26
					-1, -12, 9, -7, 13, -3, -11, -6, 15,
					-- layer=3 filter=107 channel=27
					-1, -12, -9, 1, -2, -14, -11, 10, 0,
					-- layer=3 filter=107 channel=28
					-10, -10, -14, 1, 12, 4, 3, -13, 5,
					-- layer=3 filter=107 channel=29
					-14, 8, -6, 12, 4, 0, 2, -13, 15,
					-- layer=3 filter=107 channel=30
					-4, 13, -9, 3, 14, -6, -6, 6, 1,
					-- layer=3 filter=107 channel=31
					4, 5, -10, 11, 1, -14, 1, 13, 0,
					-- layer=3 filter=107 channel=32
					-3, -13, 7, -12, 4, 1, -15, 7, 9,
					-- layer=3 filter=107 channel=33
					-3, 9, -4, -7, -11, -10, 2, -14, 0,
					-- layer=3 filter=107 channel=34
					-15, 3, -9, -1, -15, 3, -10, -11, 0,
					-- layer=3 filter=107 channel=35
					8, -8, 5, 0, -1, 2, -17, -4, -7,
					-- layer=3 filter=107 channel=36
					-11, 1, -4, 14, 15, -8, 3, 0, 0,
					-- layer=3 filter=107 channel=37
					8, -10, 0, 6, 14, 7, -1, -6, 8,
					-- layer=3 filter=107 channel=38
					-8, 0, -9, -4, 1, 2, 12, -5, -9,
					-- layer=3 filter=107 channel=39
					1, 0, -6, 10, 0, 8, -12, 9, -3,
					-- layer=3 filter=107 channel=40
					-12, -13, -16, 3, -2, 0, 12, 4, -15,
					-- layer=3 filter=107 channel=41
					-16, -1, 2, -5, 5, 1, 3, -18, 12,
					-- layer=3 filter=107 channel=42
					7, -5, -15, 4, 6, -8, -1, 8, -10,
					-- layer=3 filter=107 channel=43
					-13, -10, -11, -7, 0, -14, -7, 7, 4,
					-- layer=3 filter=107 channel=44
					-1, 10, -1, -7, 5, -7, -13, -3, 6,
					-- layer=3 filter=107 channel=45
					-11, 6, -3, -1, 0, -13, -12, 8, 5,
					-- layer=3 filter=107 channel=46
					0, 1, 0, 4, -14, -10, -13, -8, -5,
					-- layer=3 filter=107 channel=47
					-9, -9, -14, 2, -10, 0, -5, -13, -10,
					-- layer=3 filter=107 channel=48
					3, -6, -13, -15, -1, 4, 11, -3, 0,
					-- layer=3 filter=107 channel=49
					1, -13, 6, 0, 0, -8, 0, -12, 8,
					-- layer=3 filter=107 channel=50
					-19, 3, 11, -17, -9, -12, -8, 2, -5,
					-- layer=3 filter=107 channel=51
					-10, -16, -17, -11, 9, -10, 13, 0, -6,
					-- layer=3 filter=107 channel=52
					-15, 7, -9, -16, -5, 4, 0, -6, 1,
					-- layer=3 filter=107 channel=53
					-11, -6, 4, -7, -6, -3, 0, -5, -9,
					-- layer=3 filter=107 channel=54
					-6, -6, -5, 6, 8, -8, -1, -1, 10,
					-- layer=3 filter=107 channel=55
					-18, 7, 8, -14, -3, -15, -17, 8, 0,
					-- layer=3 filter=107 channel=56
					-10, 6, 9, -1, -14, -11, -14, -2, -6,
					-- layer=3 filter=107 channel=57
					-12, 8, -9, -12, 7, -1, 4, -2, -2,
					-- layer=3 filter=107 channel=58
					0, 0, -2, 3, 13, -9, -14, -8, 8,
					-- layer=3 filter=107 channel=59
					6, -11, 5, 3, 1, -13, -5, 2, -5,
					-- layer=3 filter=107 channel=60
					9, -18, 3, 11, -13, -4, 0, -1, -15,
					-- layer=3 filter=107 channel=61
					1, -9, -6, -7, -4, -10, -6, -6, 7,
					-- layer=3 filter=107 channel=62
					3, -10, 8, -10, -4, -8, 7, -12, -7,
					-- layer=3 filter=107 channel=63
					-3, 8, 10, 0, 13, 11, 3, 4, 2,
					-- layer=3 filter=108 channel=0
					-2, -18, -1, -6, -24, -30, -4, -41, -42,
					-- layer=3 filter=108 channel=1
					-2, -29, -19, -2, 21, -1, 25, -42, 30,
					-- layer=3 filter=108 channel=2
					-4, 8, 10, 14, -34, -17, -14, -43, -24,
					-- layer=3 filter=108 channel=3
					-21, -12, -12, -9, 25, -8, 5, 42, 3,
					-- layer=3 filter=108 channel=4
					-8, 0, 21, -22, -59, -15, -18, 13, -34,
					-- layer=3 filter=108 channel=5
					8, 3, 15, 12, -6, -2, -6, -2, 2,
					-- layer=3 filter=108 channel=6
					-25, -3, -8, -23, -9, -18, 17, 3, 73,
					-- layer=3 filter=108 channel=7
					4, -20, -6, -14, 14, 5, 33, -42, -6,
					-- layer=3 filter=108 channel=8
					35, -8, 40, 4, -3, 28, 11, 28, 30,
					-- layer=3 filter=108 channel=9
					15, 8, 8, -1, 49, 57, -13, -4, 43,
					-- layer=3 filter=108 channel=10
					17, -6, 9, 8, 39, 24, 34, -13, -1,
					-- layer=3 filter=108 channel=11
					-12, 14, -43, -65, -35, 6, 19, -4, 18,
					-- layer=3 filter=108 channel=12
					7, -31, -39, 33, 19, 16, 34, 40, 4,
					-- layer=3 filter=108 channel=13
					-7, 7, -1, -17, 25, -49, 5, 26, 8,
					-- layer=3 filter=108 channel=14
					3, 7, 23, 54, 3, 55, -3, 80, 49,
					-- layer=3 filter=108 channel=15
					6, 22, 0, -20, -4, 34, 31, -8, 23,
					-- layer=3 filter=108 channel=16
					-48, -69, -24, 49, -16, -52, 8, 43, 47,
					-- layer=3 filter=108 channel=17
					-31, 66, 22, -9, -21, -18, -16, 34, -11,
					-- layer=3 filter=108 channel=18
					-22, -54, -35, 29, 3, -52, 23, -4, -28,
					-- layer=3 filter=108 channel=19
					-24, -26, 9, -4, -71, 2, -38, -4, -9,
					-- layer=3 filter=108 channel=20
					17, 21, -18, 33, -18, -29, -18, 7, 32,
					-- layer=3 filter=108 channel=21
					-82, -24, 23, -76, -2, 63, -79, 2, 46,
					-- layer=3 filter=108 channel=22
					-5, 9, -3, -14, 0, -9, -2, 2, -4,
					-- layer=3 filter=108 channel=23
					-81, -23, -47, 6, 14, 14, 23, 31, 6,
					-- layer=3 filter=108 channel=24
					0, 15, 22, -10, -40, -13, 37, 30, 0,
					-- layer=3 filter=108 channel=25
					-78, -80, -81, 14, -4, -31, -99, -48, -62,
					-- layer=3 filter=108 channel=26
					-12, 6, -7, 6, 13, 1, 1, 14, 10,
					-- layer=3 filter=108 channel=27
					18, 20, 4, -2, -26, 7, 11, -4, -17,
					-- layer=3 filter=108 channel=28
					9, 7, 10, 8, 5, 14, -2, 0, 8,
					-- layer=3 filter=108 channel=29
					10, 12, -18, -58, -18, -45, 25, 6, 3,
					-- layer=3 filter=108 channel=30
					-12, 0, -4, 10, -6, -12, 3, 2, -20,
					-- layer=3 filter=108 channel=31
					-8, 11, -57, -10, -6, -37, -52, 41, 22,
					-- layer=3 filter=108 channel=32
					3, 30, -25, 23, 34, -23, -37, 13, 18,
					-- layer=3 filter=108 channel=33
					27, -5, 7, 30, 23, 2, 30, 22, 8,
					-- layer=3 filter=108 channel=34
					-45, -43, -61, -9, 17, 0, 31, 44, 32,
					-- layer=3 filter=108 channel=35
					-30, -34, -10, 7, -18, -47, -13, -64, -65,
					-- layer=3 filter=108 channel=36
					-16, -26, 26, 28, -37, -51, 45, 26, 43,
					-- layer=3 filter=108 channel=37
					-59, -7, -13, -59, 3, -18, 1, -33, 41,
					-- layer=3 filter=108 channel=38
					-38, -55, -27, 19, -4, 17, -59, -24, -1,
					-- layer=3 filter=108 channel=39
					-3, -4, 6, 10, 13, -12, -2, 3, 6,
					-- layer=3 filter=108 channel=40
					40, -15, 28, 35, 1, -25, -9, 47, 13,
					-- layer=3 filter=108 channel=41
					-28, 0, -30, 14, 18, -19, -30, 2, -13,
					-- layer=3 filter=108 channel=42
					12, 23, 13, 0, 8, -16, 42, 29, -1,
					-- layer=3 filter=108 channel=43
					39, 15, -3, 20, -3, 4, -23, 14, 0,
					-- layer=3 filter=108 channel=44
					3, -7, -9, -1, -13, 1, 7, 4, -8,
					-- layer=3 filter=108 channel=45
					-18, -26, -11, 19, -7, 12, 18, -10, 73,
					-- layer=3 filter=108 channel=46
					-34, -11, -17, 18, 26, 20, -61, -53, 4,
					-- layer=3 filter=108 channel=47
					19, 10, 1, 18, 60, 19, -5, -11, 17,
					-- layer=3 filter=108 channel=48
					17, 32, 19, 23, -6, -1, -70, -31, -45,
					-- layer=3 filter=108 channel=49
					-69, -11, -36, -57, -12, 7, -36, -2, -9,
					-- layer=3 filter=108 channel=50
					-101, -42, -13, -91, 74, 6, -28, 3, -1,
					-- layer=3 filter=108 channel=51
					15, -4, -49, 44, -2, 17, 27, -37, -6,
					-- layer=3 filter=108 channel=52
					1, 23, 11, -7, -50, 4, -24, 1, -53,
					-- layer=3 filter=108 channel=53
					-11, -7, 23, -37, 24, 15, 5, 12, 1,
					-- layer=3 filter=108 channel=54
					-45, -63, -51, -27, 6, -22, -17, -3, -13,
					-- layer=3 filter=108 channel=55
					1, 0, -25, 9, 6, 8, 14, 0, 8,
					-- layer=3 filter=108 channel=56
					22, 3, 52, 0, -25, 37, 16, 7, 21,
					-- layer=3 filter=108 channel=57
					-6, -6, -26, 23, 25, -49, 41, 15, -24,
					-- layer=3 filter=108 channel=58
					44, 0, 5, 58, 1, 6, 11, -18, -59,
					-- layer=3 filter=108 channel=59
					11, 17, 5, 3, 21, 23, -36, -27, 13,
					-- layer=3 filter=108 channel=60
					-43, -43, -35, 20, 5, -13, 11, 2, -18,
					-- layer=3 filter=108 channel=61
					-22, -5, 10, 13, 19, 24, -25, 10, 10,
					-- layer=3 filter=108 channel=62
					12, -17, 1, 35, 9, 28, 0, 44, 44,
					-- layer=3 filter=108 channel=63
					-7, 6, 3, 0, 16, -16, -6, 13, 9,
					-- layer=3 filter=109 channel=0
					29, -17, 2, 0, -40, -52, -58, -1, -35,
					-- layer=3 filter=109 channel=1
					-12, 12, 12, -50, 5, -63, 2, 15, 0,
					-- layer=3 filter=109 channel=2
					-28, -13, -41, 31, 48, -6, 13, 5, 39,
					-- layer=3 filter=109 channel=3
					21, -11, -12, 3, 32, 7, 0, 17, -8,
					-- layer=3 filter=109 channel=4
					-25, -17, -28, 20, 10, 1, -17, 13, 21,
					-- layer=3 filter=109 channel=5
					-5, 0, -5, -16, -21, -4, -10, -13, 3,
					-- layer=3 filter=109 channel=6
					10, 7, -4, -24, 21, -43, 21, 48, 18,
					-- layer=3 filter=109 channel=7
					4, 9, 10, 2, 1, -75, 9, -5, -3,
					-- layer=3 filter=109 channel=8
					-20, 28, -7, -19, 20, 26, 2, 28, 19,
					-- layer=3 filter=109 channel=9
					-44, -4, 6, -11, 4, -22, -47, 10, -24,
					-- layer=3 filter=109 channel=10
					52, 22, 35, -10, -44, 17, 32, -13, 15,
					-- layer=3 filter=109 channel=11
					-86, -101, -47, -13, -61, 6, -9, 18, -11,
					-- layer=3 filter=109 channel=12
					-31, -23, -7, -46, -16, 46, -40, -77, -48,
					-- layer=3 filter=109 channel=13
					-47, -43, -44, -42, 2, -15, 21, -17, 2,
					-- layer=3 filter=109 channel=14
					6, 20, -49, -8, -9, 26, 46, 26, 39,
					-- layer=3 filter=109 channel=15
					-15, 3, 7, -32, -50, -18, -34, -63, -35,
					-- layer=3 filter=109 channel=16
					-15, 17, 75, 12, -18, 23, -36, -1, -13,
					-- layer=3 filter=109 channel=17
					-59, -1, -40, -23, -5, 35, 3, 4, 30,
					-- layer=3 filter=109 channel=18
					30, -78, -32, 31, -49, 0, -31, 25, 45,
					-- layer=3 filter=109 channel=19
					-43, -34, 19, -8, 13, -60, 18, 23, 10,
					-- layer=3 filter=109 channel=20
					7, -3, 3, -12, 32, 62, -16, -14, 18,
					-- layer=3 filter=109 channel=21
					-95, -66, -22, -58, -11, 22, 8, 33, -9,
					-- layer=3 filter=109 channel=22
					2, 3, -5, 14, -4, 7, -13, -10, -5,
					-- layer=3 filter=109 channel=23
					2, -48, -23, 25, -38, 13, -16, 8, 23,
					-- layer=3 filter=109 channel=24
					-22, -56, -62, -7, -39, -9, -4, 45, 11,
					-- layer=3 filter=109 channel=25
					25, 52, 60, 14, 28, 22, 4, -33, 0,
					-- layer=3 filter=109 channel=26
					1, -6, -7, -1, -3, 9, -3, 9, 1,
					-- layer=3 filter=109 channel=27
					-49, -18, -22, -17, 32, 11, -7, 21, -17,
					-- layer=3 filter=109 channel=28
					-13, 7, 12, 8, -2, 6, 1, -8, -2,
					-- layer=3 filter=109 channel=29
					-61, -86, -62, 45, -8, 22, -8, 21, -1,
					-- layer=3 filter=109 channel=30
					15, 1, 11, -6, -4, 10, 6, 1, 17,
					-- layer=3 filter=109 channel=31
					-48, -24, -23, -17, -51, -6, -16, -57, -58,
					-- layer=3 filter=109 channel=32
					-23, 30, 21, 37, 48, -11, -2, -7, -4,
					-- layer=3 filter=109 channel=33
					-13, -38, -41, 46, 31, -93, -4, 9, 29,
					-- layer=3 filter=109 channel=34
					5, -14, 6, 29, 17, 38, -10, -29, -15,
					-- layer=3 filter=109 channel=35
					9, -24, -44, 17, 18, 22, 0, -1, 3,
					-- layer=3 filter=109 channel=36
					34, -26, -31, -33, 111, -23, -27, -6, 8,
					-- layer=3 filter=109 channel=37
					-55, -47, -43, -39, 52, -53, -17, 4, -25,
					-- layer=3 filter=109 channel=38
					44, 10, 2, 3, -14, 28, -2, -32, -18,
					-- layer=3 filter=109 channel=39
					13, -14, -3, 7, 13, 1, -8, -14, 11,
					-- layer=3 filter=109 channel=40
					50, 0, 59, -1, 23, 18, 21, -26, 36,
					-- layer=3 filter=109 channel=41
					33, 68, 18, 17, -1, 28, -29, -25, -19,
					-- layer=3 filter=109 channel=42
					-13, -17, -18, 16, -17, 6, 12, -6, 23,
					-- layer=3 filter=109 channel=43
					-7, -48, -78, 22, 43, -22, 36, -43, 29,
					-- layer=3 filter=109 channel=44
					0, -5, 11, -4, -10, -11, 12, 13, -10,
					-- layer=3 filter=109 channel=45
					-5, -5, -34, -13, 62, -29, 6, 24, 8,
					-- layer=3 filter=109 channel=46
					18, 38, 30, 41, 20, -7, -23, -34, 4,
					-- layer=3 filter=109 channel=47
					-48, -4, 20, 46, 42, 7, 1, 8, -13,
					-- layer=3 filter=109 channel=48
					34, -33, -14, 4, 30, 11, 15, -15, -5,
					-- layer=3 filter=109 channel=49
					-33, 37, -1, -14, -46, 13, -17, -18, -27,
					-- layer=3 filter=109 channel=50
					-26, -21, -19, 2, -3, 8, 10, 13, 40,
					-- layer=3 filter=109 channel=51
					-11, -36, -64, 11, -12, -14, 14, -25, 1,
					-- layer=3 filter=109 channel=52
					15, -4, -32, -47, -11, -42, -25, -11, 30,
					-- layer=3 filter=109 channel=53
					-26, -8, 49, 21, 24, 11, -30, 13, -31,
					-- layer=3 filter=109 channel=54
					18, 32, -1, 2, 40, -23, -31, 14, -8,
					-- layer=3 filter=109 channel=55
					45, 0, 37, -4, -27, -45, 46, -30, 3,
					-- layer=3 filter=109 channel=56
					-20, -13, -3, -5, 5, -16, 8, 34, -37,
					-- layer=3 filter=109 channel=57
					-29, -75, -51, 24, -36, -35, -55, 7, -19,
					-- layer=3 filter=109 channel=58
					42, -33, -5, 39, -26, -29, 10, -28, 16,
					-- layer=3 filter=109 channel=59
					-10, -35, 29, 3, -25, -63, -81, -23, -17,
					-- layer=3 filter=109 channel=60
					5, -22, -15, 30, 24, 32, 3, -31, 43,
					-- layer=3 filter=109 channel=61
					46, 32, 33, 48, 60, 53, 45, -4, 14,
					-- layer=3 filter=109 channel=62
					9, -43, -42, -15, -24, 0, 2, -29, -11,
					-- layer=3 filter=109 channel=63
					-17, 1, -13, -28, -1, -4, -27, -6, -11,
					-- layer=3 filter=110 channel=0
					-15, -15, -10, 1, -5, 0, -2, -9, -7,
					-- layer=3 filter=110 channel=1
					0, 2, -7, 1, -1, -7, -6, 10, 5,
					-- layer=3 filter=110 channel=2
					6, -6, -6, 11, -7, -5, -5, -1, -2,
					-- layer=3 filter=110 channel=3
					-16, 11, -3, -13, -5, 14, -8, -14, -10,
					-- layer=3 filter=110 channel=4
					3, -1, -13, 6, 0, -7, -4, -16, 2,
					-- layer=3 filter=110 channel=5
					11, 10, 8, -5, -9, -15, -6, 7, -10,
					-- layer=3 filter=110 channel=6
					-3, 7, -11, -9, -5, 3, -14, -9, -17,
					-- layer=3 filter=110 channel=7
					-5, -13, 7, 0, -1, -16, 8, 11, -2,
					-- layer=3 filter=110 channel=8
					-10, -5, 2, 9, -5, -5, -15, -3, -15,
					-- layer=3 filter=110 channel=9
					0, 11, 3, -1, -15, 10, 4, -17, -12,
					-- layer=3 filter=110 channel=10
					-17, 3, 0, 0, 5, -8, 9, -12, 4,
					-- layer=3 filter=110 channel=11
					-6, -18, 6, 6, 0, -4, 11, 11, -14,
					-- layer=3 filter=110 channel=12
					-18, 5, -10, 10, -2, -17, -3, -9, -8,
					-- layer=3 filter=110 channel=13
					9, -14, 1, -4, 6, -1, -13, -4, 0,
					-- layer=3 filter=110 channel=14
					-4, 2, 5, -12, -4, -9, -5, -1, -6,
					-- layer=3 filter=110 channel=15
					8, -8, -8, 2, 4, -4, -11, -9, 0,
					-- layer=3 filter=110 channel=16
					0, -11, 2, -8, -11, 5, 6, 2, 0,
					-- layer=3 filter=110 channel=17
					-16, -16, -11, -9, 9, 0, -17, 8, -4,
					-- layer=3 filter=110 channel=18
					3, -8, 0, -17, -14, -8, 2, -1, 2,
					-- layer=3 filter=110 channel=19
					2, -16, 6, -11, 2, -17, 9, 2, 1,
					-- layer=3 filter=110 channel=20
					8, -14, -17, -16, -7, 2, 6, -3, 1,
					-- layer=3 filter=110 channel=21
					13, -11, 4, 12, -7, 11, 14, -4, -13,
					-- layer=3 filter=110 channel=22
					-4, -3, 3, 2, -4, 5, 3, -4, -8,
					-- layer=3 filter=110 channel=23
					9, -12, 0, 2, -7, 11, 5, -2, -18,
					-- layer=3 filter=110 channel=24
					-7, 1, -12, -8, -10, -16, -14, -16, 8,
					-- layer=3 filter=110 channel=25
					-5, -10, 13, -11, 5, -8, 3, 2, 6,
					-- layer=3 filter=110 channel=26
					5, 11, -6, -1, 4, 11, -5, 0, -11,
					-- layer=3 filter=110 channel=27
					-16, -13, -12, -6, -10, -13, -2, 11, 0,
					-- layer=3 filter=110 channel=28
					5, -10, -15, -1, -2, -4, -1, -1, 11,
					-- layer=3 filter=110 channel=29
					1, -10, -11, -1, -5, 3, -5, 1, 6,
					-- layer=3 filter=110 channel=30
					0, 9, 0, 2, 5, 0, -1, 8, -13,
					-- layer=3 filter=110 channel=31
					-14, -6, 7, -6, -4, 11, 1, -14, -2,
					-- layer=3 filter=110 channel=32
					3, -3, -6, -4, 10, -15, 10, -6, -14,
					-- layer=3 filter=110 channel=33
					-5, -9, -4, -9, -6, -8, -13, 5, 9,
					-- layer=3 filter=110 channel=34
					-15, -17, -11, 9, -14, 0, -10, -18, 9,
					-- layer=3 filter=110 channel=35
					2, 3, 10, -18, 9, 0, -7, 7, -9,
					-- layer=3 filter=110 channel=36
					4, -6, 1, 3, -4, 10, -1, 1, -13,
					-- layer=3 filter=110 channel=37
					-14, 5, 7, 0, 0, -9, -8, 9, 0,
					-- layer=3 filter=110 channel=38
					-15, -7, -17, -10, 3, -2, 10, -8, 10,
					-- layer=3 filter=110 channel=39
					5, -1, 5, -6, -9, -6, -4, 10, -12,
					-- layer=3 filter=110 channel=40
					-4, 3, 4, -9, -1, -9, -7, 10, -8,
					-- layer=3 filter=110 channel=41
					-8, 8, 10, -15, -3, -7, -2, -10, -10,
					-- layer=3 filter=110 channel=42
					-14, 0, 7, -1, -6, 1, 7, 0, -15,
					-- layer=3 filter=110 channel=43
					-2, -16, -20, -5, -3, 14, -11, -4, -19,
					-- layer=3 filter=110 channel=44
					-5, 13, -7, -3, 4, 0, -1, 9, 11,
					-- layer=3 filter=110 channel=45
					0, -9, -14, 2, -10, -4, 3, -5, -7,
					-- layer=3 filter=110 channel=46
					-4, -14, 18, -7, -3, -14, -2, -10, -9,
					-- layer=3 filter=110 channel=47
					-5, 0, -16, -19, -15, -13, 8, 17, -6,
					-- layer=3 filter=110 channel=48
					-2, 12, -15, 8, -4, -5, -15, -5, 5,
					-- layer=3 filter=110 channel=49
					-5, -12, 13, -9, 0, -4, 15, -14, -4,
					-- layer=3 filter=110 channel=50
					7, 11, -9, 12, -15, 0, -13, -13, 0,
					-- layer=3 filter=110 channel=51
					14, -7, 0, -10, -10, -2, -13, 2, -3,
					-- layer=3 filter=110 channel=52
					-16, 5, -1, -6, -15, -9, -4, -16, 4,
					-- layer=3 filter=110 channel=53
					-3, 5, -8, -11, 0, -11, 1, 4, -4,
					-- layer=3 filter=110 channel=54
					-18, -14, -13, -7, -8, 2, 0, 5, -3,
					-- layer=3 filter=110 channel=55
					0, 0, -11, -15, -11, 0, 9, -2, -8,
					-- layer=3 filter=110 channel=56
					-13, -9, -7, -7, -3, -5, 8, -14, -16,
					-- layer=3 filter=110 channel=57
					-8, 4, -9, -17, 12, 12, -15, -1, -3,
					-- layer=3 filter=110 channel=58
					-17, 6, 7, 12, 8, -10, 5, 12, -15,
					-- layer=3 filter=110 channel=59
					10, -12, 1, -5, -12, -7, 6, 5, 8,
					-- layer=3 filter=110 channel=60
					-10, -1, -7, -7, 10, -6, 2, 7, 7,
					-- layer=3 filter=110 channel=61
					9, 3, -2, -5, 11, 4, -7, 1, -7,
					-- layer=3 filter=110 channel=62
					-5, -14, -8, -11, -8, -10, 7, 1, -1,
					-- layer=3 filter=110 channel=63
					1, -8, 7, 11, 8, -6, 0, 13, 13,
					-- layer=3 filter=111 channel=0
					-17, -12, -14, -1, -5, 4, -13, -3, 3,
					-- layer=3 filter=111 channel=1
					2, -7, -18, 11, -2, 9, 0, -9, -9,
					-- layer=3 filter=111 channel=2
					-8, 12, 6, -7, -13, 12, 4, -6, 6,
					-- layer=3 filter=111 channel=3
					-12, 3, 11, -6, -14, 0, -15, -15, -14,
					-- layer=3 filter=111 channel=4
					10, 11, -8, -3, -1, -3, 6, 2, -1,
					-- layer=3 filter=111 channel=5
					0, 7, -5, 1, -9, 12, 1, 12, 0,
					-- layer=3 filter=111 channel=6
					-14, -7, -15, 6, -11, -9, -10, -13, -15,
					-- layer=3 filter=111 channel=7
					-5, 3, 4, -3, 7, 4, 7, -5, 10,
					-- layer=3 filter=111 channel=8
					10, -15, -8, -10, -6, 2, 6, -3, -16,
					-- layer=3 filter=111 channel=9
					-17, -14, 5, 8, 2, -8, 0, 7, 0,
					-- layer=3 filter=111 channel=10
					-3, 3, -4, 1, 0, 5, -2, -5, -1,
					-- layer=3 filter=111 channel=11
					4, -13, 5, 5, -14, -3, 6, -15, -4,
					-- layer=3 filter=111 channel=12
					-3, 5, -10, -19, 6, -2, -11, 8, -7,
					-- layer=3 filter=111 channel=13
					7, -1, 0, -4, 10, -14, -5, -1, -14,
					-- layer=3 filter=111 channel=14
					-8, -1, -14, 3, 6, -11, -9, 11, -8,
					-- layer=3 filter=111 channel=15
					0, 8, 4, 0, -5, 0, 2, 9, -13,
					-- layer=3 filter=111 channel=16
					0, -5, -10, 1, -11, -3, 3, 7, 3,
					-- layer=3 filter=111 channel=17
					2, 9, 3, 0, 8, 3, 3, 4, -2,
					-- layer=3 filter=111 channel=18
					7, -11, -5, -7, -5, -15, 3, -17, -5,
					-- layer=3 filter=111 channel=19
					-3, 11, -8, 5, -8, 9, -10, -2, -6,
					-- layer=3 filter=111 channel=20
					5, -17, -5, 0, -10, -11, 12, 0, 9,
					-- layer=3 filter=111 channel=21
					7, -10, -11, -16, -10, 5, 0, -3, -10,
					-- layer=3 filter=111 channel=22
					2, -7, 7, -15, -9, -6, -3, 0, 11,
					-- layer=3 filter=111 channel=23
					-11, 8, -4, -4, -11, -10, -6, -2, -12,
					-- layer=3 filter=111 channel=24
					6, -13, -3, -18, -4, 10, -11, -16, 1,
					-- layer=3 filter=111 channel=25
					6, -2, 2, -1, -8, 7, 0, 4, -10,
					-- layer=3 filter=111 channel=26
					-1, -8, 11, -7, -6, 0, 12, 0, -5,
					-- layer=3 filter=111 channel=27
					-12, 0, -13, -2, -6, -17, -1, 5, -9,
					-- layer=3 filter=111 channel=28
					2, -11, 8, -9, -15, -2, 12, 12, 7,
					-- layer=3 filter=111 channel=29
					-1, -6, -5, 4, 13, -13, -10, -2, -1,
					-- layer=3 filter=111 channel=30
					-2, 5, 5, -2, -1, -3, -5, 3, -13,
					-- layer=3 filter=111 channel=31
					-9, 0, -11, 15, 11, 4, -8, -1, 14,
					-- layer=3 filter=111 channel=32
					-13, -12, -7, -7, -1, 0, 11, 1, 10,
					-- layer=3 filter=111 channel=33
					-14, -6, 6, 7, -15, -9, -12, 13, -6,
					-- layer=3 filter=111 channel=34
					-5, 10, -6, -4, -7, 3, 4, -12, -10,
					-- layer=3 filter=111 channel=35
					15, 12, -6, 4, 3, -17, -5, 1, 9,
					-- layer=3 filter=111 channel=36
					-18, -12, -8, 8, 12, 0, 7, 12, -3,
					-- layer=3 filter=111 channel=37
					-10, 7, -9, -15, -1, -7, -7, 9, 1,
					-- layer=3 filter=111 channel=38
					-9, 10, -12, -10, -5, 8, -17, -15, 7,
					-- layer=3 filter=111 channel=39
					-6, -8, -2, -8, 4, -14, -7, 3, 12,
					-- layer=3 filter=111 channel=40
					-8, 9, 6, -9, -15, -10, -4, 1, 10,
					-- layer=3 filter=111 channel=41
					3, -2, 2, 11, 10, -10, 2, 0, -13,
					-- layer=3 filter=111 channel=42
					3, -5, -3, 1, 7, 10, -10, 8, -13,
					-- layer=3 filter=111 channel=43
					1, 10, 4, 10, -14, -16, 3, -15, 8,
					-- layer=3 filter=111 channel=44
					11, 0, -2, 13, 10, -10, 1, 0, -9,
					-- layer=3 filter=111 channel=45
					-17, -5, -10, -11, -1, -11, 12, -3, 0,
					-- layer=3 filter=111 channel=46
					-14, -5, 3, -16, 3, -17, -15, -12, 8,
					-- layer=3 filter=111 channel=47
					-14, 1, -20, 0, 2, -12, -2, 4, -2,
					-- layer=3 filter=111 channel=48
					-6, -14, -4, -19, -11, 0, 0, -2, -3,
					-- layer=3 filter=111 channel=49
					0, 0, -3, -16, -12, -7, 0, -4, 5,
					-- layer=3 filter=111 channel=50
					-5, -8, 7, -12, 5, 2, -15, -13, -11,
					-- layer=3 filter=111 channel=51
					4, 11, -7, -10, 9, 6, -6, -15, -4,
					-- layer=3 filter=111 channel=52
					10, -2, -10, -10, 2, 5, 9, -7, -10,
					-- layer=3 filter=111 channel=53
					-12, 0, -6, -8, 13, 0, 15, -5, -8,
					-- layer=3 filter=111 channel=54
					-6, -13, -16, -12, -5, 10, 6, 12, -4,
					-- layer=3 filter=111 channel=55
					8, 1, -13, 5, -1, -8, -16, 13, -14,
					-- layer=3 filter=111 channel=56
					7, 5, -4, 13, -3, 11, 4, -2, -6,
					-- layer=3 filter=111 channel=57
					-13, -11, -17, 14, 7, -15, -2, 0, 3,
					-- layer=3 filter=111 channel=58
					0, -16, -19, -14, -11, -6, 6, 0, 1,
					-- layer=3 filter=111 channel=59
					-13, -10, 3, -1, 1, 8, 9, 1, -22,
					-- layer=3 filter=111 channel=60
					0, -10, 4, 4, 5, -14, -7, 5, -5,
					-- layer=3 filter=111 channel=61
					1, -13, -6, 0, 0, -6, 6, -14, -12,
					-- layer=3 filter=111 channel=62
					-4, 0, -9, -3, 4, 4, -3, 7, 3,
					-- layer=3 filter=111 channel=63
					-9, 11, 1, 12, 9, -4, 5, -2, -4,
					-- layer=3 filter=112 channel=0
					-32, 6, -9, 6, 12, -14, 10, 77, 23,
					-- layer=3 filter=112 channel=1
					-8, 37, 11, 14, 22, 13, -9, -36, -29,
					-- layer=3 filter=112 channel=2
					-24, -3, 36, 14, 16, 16, 16, -26, -7,
					-- layer=3 filter=112 channel=3
					42, 11, -11, 16, 25, 23, 40, 22, 38,
					-- layer=3 filter=112 channel=4
					-13, -50, -23, -6, 6, -15, -11, 21, 34,
					-- layer=3 filter=112 channel=5
					-13, -11, -23, 6, -11, 0, -11, 0, 1,
					-- layer=3 filter=112 channel=6
					-11, -7, -20, -49, -17, -29, -15, -38, -1,
					-- layer=3 filter=112 channel=7
					8, 38, 0, 45, 9, -6, 17, -20, -15,
					-- layer=3 filter=112 channel=8
					17, -37, 3, -36, -5, 2, -8, -47, -25,
					-- layer=3 filter=112 channel=9
					-7, 22, 28, 15, 4, 9, -16, -45, -24,
					-- layer=3 filter=112 channel=10
					4, -10, 5, 6, -11, 12, -3, -2, 3,
					-- layer=3 filter=112 channel=11
					-23, -2, -14, -9, 28, -7, -79, -17, -19,
					-- layer=3 filter=112 channel=12
					-2, -10, -21, -9, 60, 16, -40, -46, -25,
					-- layer=3 filter=112 channel=13
					-9, -6, 30, -27, -21, -3, -11, 5, 5,
					-- layer=3 filter=112 channel=14
					1, -19, -20, -24, 48, -27, -15, -46, -47,
					-- layer=3 filter=112 channel=15
					6, 47, -1, 34, 27, 11, 4, -19, -11,
					-- layer=3 filter=112 channel=16
					8, 38, -39, -37, -63, -44, 36, 43, 0,
					-- layer=3 filter=112 channel=17
					-38, -20, -36, -9, -31, -14, -50, 25, 7,
					-- layer=3 filter=112 channel=18
					-3, 6, 30, -23, -25, -5, -4, 63, 14,
					-- layer=3 filter=112 channel=19
					-13, -54, -18, -10, 5, -5, 28, 7, -6,
					-- layer=3 filter=112 channel=20
					-39, -12, 4, -39, -6, 24, -44, -23, -43,
					-- layer=3 filter=112 channel=21
					12, -1, -8, 23, 0, -4, -35, -37, -5,
					-- layer=3 filter=112 channel=22
					-1, 14, 5, 1, -6, -8, -5, 0, -13,
					-- layer=3 filter=112 channel=23
					42, 29, 7, 44, -27, -24, 12, 20, 13,
					-- layer=3 filter=112 channel=24
					-18, 8, -14, -54, -41, -56, -62, -20, 3,
					-- layer=3 filter=112 channel=25
					27, 8, -17, 8, -4, 29, 19, -8, 54,
					-- layer=3 filter=112 channel=26
					6, 6, -7, 5, 15, -11, 4, -15, 7,
					-- layer=3 filter=112 channel=27
					-4, 1, -13, -43, -19, -17, -11, -39, -29,
					-- layer=3 filter=112 channel=28
					12, -8, 11, 9, -2, 15, -16, -4, 2,
					-- layer=3 filter=112 channel=29
					-25, -20, 13, 2, -13, -17, -37, 46, 0,
					-- layer=3 filter=112 channel=30
					-9, 7, 16, 0, -2, 1, -14, 7, 14,
					-- layer=3 filter=112 channel=31
					21, -7, 11, -17, -48, -72, -1, 4, -51,
					-- layer=3 filter=112 channel=32
					-16, 7, 7, 30, -13, 8, 44, -7, 25,
					-- layer=3 filter=112 channel=33
					-30, 6, 20, -35, -11, 26, -46, -6, 1,
					-- layer=3 filter=112 channel=34
					47, -20, 19, -13, -8, -2, 4, -4, -46,
					-- layer=3 filter=112 channel=35
					4, 1, 2, -16, -16, 12, 12, 34, 47,
					-- layer=3 filter=112 channel=36
					0, 9, 9, -7, 46, 15, -67, -15, -19,
					-- layer=3 filter=112 channel=37
					8, 24, 60, -11, 18, -44, 11, -54, -45,
					-- layer=3 filter=112 channel=38
					-8, 0, 13, -34, -31, -21, 8, 61, 55,
					-- layer=3 filter=112 channel=39
					-3, 10, 2, -6, -9, 12, 3, 4, -9,
					-- layer=3 filter=112 channel=40
					-20, 4, -4, 12, 26, 5, 19, 12, 26,
					-- layer=3 filter=112 channel=41
					-19, -2, 0, -24, -20, -6, 30, 36, -1,
					-- layer=3 filter=112 channel=42
					17, -6, -29, -55, -35, -72, -12, -27, -43,
					-- layer=3 filter=112 channel=43
					3, 5, 0, 4, 24, -16, 33, 5, 39,
					-- layer=3 filter=112 channel=44
					12, 8, 10, 11, -6, -8, 3, -14, -7,
					-- layer=3 filter=112 channel=45
					8, 9, 23, -34, 34, 10, 26, 19, -32,
					-- layer=3 filter=112 channel=46
					-5, -11, -5, 23, -39, 0, 48, 19, 26,
					-- layer=3 filter=112 channel=47
					-10, 45, 3, -22, -12, -20, -24, -36, -58,
					-- layer=3 filter=112 channel=48
					-13, 6, -39, -13, 14, -16, 19, -11, 48,
					-- layer=3 filter=112 channel=49
					-42, 2, -1, 10, 19, -2, 21, 62, -22,
					-- layer=3 filter=112 channel=50
					38, 5, -13, -18, -4, -13, -44, -5, 29,
					-- layer=3 filter=112 channel=51
					-49, -8, -28, 16, 35, 4, 26, -40, -42,
					-- layer=3 filter=112 channel=52
					-14, 16, 26, -13, 2, -22, -31, -25, -7,
					-- layer=3 filter=112 channel=53
					-19, -1, 10, -22, 36, 14, -28, 27, 38,
					-- layer=3 filter=112 channel=54
					9, -9, -43, 66, 14, 29, 41, -13, 28,
					-- layer=3 filter=112 channel=55
					0, -7, -8, 68, 2, -1, 47, -6, -3,
					-- layer=3 filter=112 channel=56
					5, 20, 0, -29, 12, 47, -27, 22, 4,
					-- layer=3 filter=112 channel=57
					-28, -20, 26, -41, 13, 21, -53, 42, -6,
					-- layer=3 filter=112 channel=58
					-2, 4, 39, 28, 35, 9, 7, 3, 14,
					-- layer=3 filter=112 channel=59
					1, 10, 5, -11, -6, -7, 60, 32, 45,
					-- layer=3 filter=112 channel=60
					22, -2, 34, -2, -36, -24, -19, -31, 19,
					-- layer=3 filter=112 channel=61
					21, 7, 9, 15, -25, -51, 26, -4, 34,
					-- layer=3 filter=112 channel=62
					12, -6, -32, -22, 25, 9, -22, -34, -41,
					-- layer=3 filter=112 channel=63
					-5, 1, -20, 3, -31, 13, -17, 18, -12,
					-- layer=3 filter=113 channel=0
					-28, -8, -32, -43, -24, -27, -21, -40, 21,
					-- layer=3 filter=113 channel=1
					31, -17, 27, -42, -33, -55, 10, 58, 0,
					-- layer=3 filter=113 channel=2
					-27, -17, -62, -22, -7, -15, 8, 5, -23,
					-- layer=3 filter=113 channel=3
					-42, -16, -10, -63, -21, -42, -4, 32, -11,
					-- layer=3 filter=113 channel=4
					-30, -46, -70, 23, 14, -20, 16, -7, -6,
					-- layer=3 filter=113 channel=5
					6, -15, -2, -12, 3, 4, -6, 8, 0,
					-- layer=3 filter=113 channel=6
					-10, 18, -4, 36, 14, 13, 60, 0, 75,
					-- layer=3 filter=113 channel=7
					0, -20, -2, -16, -43, 39, -2, 34, 86,
					-- layer=3 filter=113 channel=8
					-4, -19, 3, 23, 41, 26, -21, -5, 19,
					-- layer=3 filter=113 channel=9
					13, -8, 31, 21, 33, 16, 24, 48, 17,
					-- layer=3 filter=113 channel=10
					40, 51, 33, 19, 30, 34, 2, 10, -20,
					-- layer=3 filter=113 channel=11
					12, 19, -42, 36, -34, -8, 28, 12, 29,
					-- layer=3 filter=113 channel=12
					10, 4, 15, 46, 15, 23, 10, 13, 4,
					-- layer=3 filter=113 channel=13
					12, 17, -26, -91, -99, -89, 56, -5, 11,
					-- layer=3 filter=113 channel=14
					0, 11, 17, -2, 6, 36, 0, 69, 59,
					-- layer=3 filter=113 channel=15
					10, -24, -22, -15, -28, -29, 27, 9, -39,
					-- layer=3 filter=113 channel=16
					25, 8, 25, -26, -33, -32, -50, 7, -27,
					-- layer=3 filter=113 channel=17
					-14, 26, -50, -22, -5, -21, 65, 11, 60,
					-- layer=3 filter=113 channel=18
					38, 18, -3, 13, 21, 8, -2, -46, 11,
					-- layer=3 filter=113 channel=19
					-39, 6, 11, -60, -78, -51, -41, 4, 13,
					-- layer=3 filter=113 channel=20
					2, -3, -53, 5, 27, 42, 16, 32, 34,
					-- layer=3 filter=113 channel=21
					-37, -35, 13, -17, 33, 29, 20, 12, 27,
					-- layer=3 filter=113 channel=22
					10, -14, -6, 2, 13, -3, 2, -2, -6,
					-- layer=3 filter=113 channel=23
					-59, -8, 10, -46, 1, 39, 2, 30, 106,
					-- layer=3 filter=113 channel=24
					-9, 7, -11, -43, -42, -47, 24, 19, 27,
					-- layer=3 filter=113 channel=25
					-37, -6, -4, -54, -93, -98, -19, -19, -79,
					-- layer=3 filter=113 channel=26
					-8, 2, 6, -11, -10, 5, 0, -1, 4,
					-- layer=3 filter=113 channel=27
					-21, -3, -50, -34, -58, -10, 30, 7, 2,
					-- layer=3 filter=113 channel=28
					-6, -11, 5, -7, -8, -5, 0, -6, -2,
					-- layer=3 filter=113 channel=29
					31, 48, 39, 19, 42, 30, -3, -28, 23,
					-- layer=3 filter=113 channel=30
					8, -16, -3, -8, 9, 16, 13, -11, -20,
					-- layer=3 filter=113 channel=31
					-1, -29, 4, -30, -38, -8, -36, -21, -3,
					-- layer=3 filter=113 channel=32
					-7, 39, 16, -1, 20, -1, 24, 43, 2,
					-- layer=3 filter=113 channel=33
					3, -25, 34, 56, 8, 4, 10, 4, 0,
					-- layer=3 filter=113 channel=34
					-17, -2, -29, 22, 18, 30, -20, -4, 2,
					-- layer=3 filter=113 channel=35
					-46, -12, -11, -52, -26, -62, 4, -27, -14,
					-- layer=3 filter=113 channel=36
					-23, 25, 5, -26, -31, -32, 43, 31, 13,
					-- layer=3 filter=113 channel=37
					-6, -36, -41, -10, -16, -25, 64, 48, 37,
					-- layer=3 filter=113 channel=38
					33, -18, 28, -11, -40, 15, -22, -26, -28,
					-- layer=3 filter=113 channel=39
					-12, 12, 3, 2, -4, -15, -15, -2, -13,
					-- layer=3 filter=113 channel=40
					47, -33, 40, -5, 12, -19, -7, 1, 0,
					-- layer=3 filter=113 channel=41
					17, 14, -12, -30, -80, -67, 8, 1, 20,
					-- layer=3 filter=113 channel=42
					-53, 18, -28, -50, -48, -18, 26, 20, 40,
					-- layer=3 filter=113 channel=43
					29, 13, 6, 35, 21, 26, -30, -31, -5,
					-- layer=3 filter=113 channel=44
					12, -12, -3, -8, 1, -2, 12, 0, 6,
					-- layer=3 filter=113 channel=45
					18, -17, -21, -25, -52, -58, -30, -32, -9,
					-- layer=3 filter=113 channel=46
					2, 1, 20, -7, 10, -13, -21, -22, -1,
					-- layer=3 filter=113 channel=47
					-4, 15, 43, 34, 42, 27, 20, -4, 7,
					-- layer=3 filter=113 channel=48
					31, 36, 49, -26, -78, -43, -39, -23, -39,
					-- layer=3 filter=113 channel=49
					-60, -90, -36, -44, -66, -18, 20, 9, -2,
					-- layer=3 filter=113 channel=50
					-62, 3, 14, 15, 37, -20, 34, 10, 18,
					-- layer=3 filter=113 channel=51
					18, 4, -7, 43, -5, 19, -2, -32, 1,
					-- layer=3 filter=113 channel=52
					-47, -20, -56, -71, -58, 7, 21, 20, 48,
					-- layer=3 filter=113 channel=53
					66, 0, 13, 35, 12, -39, 1, 17, 4,
					-- layer=3 filter=113 channel=54
					-13, -49, -11, -34, -60, -26, -1, -18, -11,
					-- layer=3 filter=113 channel=55
					9, 6, 21, 17, 30, 37, -9, 27, -1,
					-- layer=3 filter=113 channel=56
					29, 27, 8, 23, 15, -6, -9, -16, 5,
					-- layer=3 filter=113 channel=57
					-54, -4, -31, 0, -40, -49, 40, -14, 13,
					-- layer=3 filter=113 channel=58
					40, 13, -22, 30, 17, 19, -15, -36, -36,
					-- layer=3 filter=113 channel=59
					16, 8, 23, -30, -11, -19, 0, 11, -4,
					-- layer=3 filter=113 channel=60
					16, 20, -2, 13, 49, 39, -5, 11, -45,
					-- layer=3 filter=113 channel=61
					5, 14, 58, 6, 34, 32, -24, 15, -9,
					-- layer=3 filter=113 channel=62
					-8, 11, 30, 40, 37, -10, -4, -30, -3,
					-- layer=3 filter=113 channel=63
					18, 0, -7, 2, 10, 6, -15, 15, 5,
					-- layer=3 filter=114 channel=0
					19, 44, 14, 20, 36, 15, -18, 68, 9,
					-- layer=3 filter=114 channel=1
					-85, -31, -52, 23, -28, -64, 11, -31, -84,
					-- layer=3 filter=114 channel=2
					-89, -97, 11, -51, -36, 9, 38, 12, 8,
					-- layer=3 filter=114 channel=3
					30, 7, 32, 33, -9, 0, 12, -2, 14,
					-- layer=3 filter=114 channel=4
					-9, -11, -12, -15, -8, -5, -10, -6, 14,
					-- layer=3 filter=114 channel=5
					-11, 18, 12, 14, -2, 2, -3, 11, 5,
					-- layer=3 filter=114 channel=6
					53, 11, 42, -3, -52, -16, -3, -43, 33,
					-- layer=3 filter=114 channel=7
					-47, -22, -9, -81, -31, -46, -12, 2, 0,
					-- layer=3 filter=114 channel=8
					-12, -14, -25, 9, 14, 18, 0, -5, -3,
					-- layer=3 filter=114 channel=9
					-16, 15, -7, -5, -20, 22, -13, -21, 23,
					-- layer=3 filter=114 channel=10
					-16, 25, 20, -62, 0, 1, 34, -35, -42,
					-- layer=3 filter=114 channel=11
					5, -6, 0, -6, 4, 39, -19, -12, 20,
					-- layer=3 filter=114 channel=12
					-35, -42, -3, 1, 63, 47, 0, 36, 60,
					-- layer=3 filter=114 channel=13
					-58, -13, 5, -23, -17, 0, 11, -2, -5,
					-- layer=3 filter=114 channel=14
					-82, -83, -27, -15, 1, -17, -56, 61, -29,
					-- layer=3 filter=114 channel=15
					12, 21, 41, 54, 31, -8, 7, 37, -21,
					-- layer=3 filter=114 channel=16
					54, -15, -44, 26, 83, 83, 30, 41, 5,
					-- layer=3 filter=114 channel=17
					0, -1, 5, -14, 29, 10, 3, 50, 21,
					-- layer=3 filter=114 channel=18
					-3, 0, 67, 1, -25, -6, -1, -2, 0,
					-- layer=3 filter=114 channel=19
					0, -73, -25, 3, -26, 10, 20, -15, 40,
					-- layer=3 filter=114 channel=20
					-68, -74, 19, 49, 29, -24, -4, 6, -14,
					-- layer=3 filter=114 channel=21
					58, 31, 4, -3, -7, -25, 1, -6, -7,
					-- layer=3 filter=114 channel=22
					8, 0, -11, 0, -10, 10, 2, -9, 7,
					-- layer=3 filter=114 channel=23
					38, -21, -6, -36, -9, 9, 6, -26, 11,
					-- layer=3 filter=114 channel=24
					-9, -51, -48, 6, -28, -11, 21, 48, 17,
					-- layer=3 filter=114 channel=25
					-2, 2, -12, -27, -5, 2, -98, -14, 37,
					-- layer=3 filter=114 channel=26
					6, -9, -8, 11, 3, -12, 13, 3, 3,
					-- layer=3 filter=114 channel=27
					-89, -90, -38, -8, -10, 12, 17, 29, 11,
					-- layer=3 filter=114 channel=28
					-2, -9, -5, -2, 7, 5, -10, 1, -3,
					-- layer=3 filter=114 channel=29
					4, -10, 5, 28, -58, -17, 7, -46, -5,
					-- layer=3 filter=114 channel=30
					2, -3, 0, -10, 12, 12, 12, 0, 11,
					-- layer=3 filter=114 channel=31
					29, -51, -3, -9, -20, -7, -39, -11, 24,
					-- layer=3 filter=114 channel=32
					-13, -32, -10, 55, 52, 40, 65, 21, 55,
					-- layer=3 filter=114 channel=33
					-30, 13, 24, -3, -5, 7, 42, 0, -20,
					-- layer=3 filter=114 channel=34
					-21, 40, 22, 15, -23, -26, 4, -10, -30,
					-- layer=3 filter=114 channel=35
					11, -30, -31, 9, 2, 29, -13, 10, 28,
					-- layer=3 filter=114 channel=36
					-46, -65, -6, -16, 13, -66, 1, 5, -17,
					-- layer=3 filter=114 channel=37
					-20, 0, -39, 28, 45, 13, 22, -9, 25,
					-- layer=3 filter=114 channel=38
					6, -31, -12, 23, 33, 12, 49, 49, 46,
					-- layer=3 filter=114 channel=39
					-4, -2, -20, -12, 1, 4, 13, -5, 8,
					-- layer=3 filter=114 channel=40
					26, -12, 6, 39, 12, 11, 36, 38, -5,
					-- layer=3 filter=114 channel=41
					-6, -24, 54, 38, 10, 2, -4, -27, -3,
					-- layer=3 filter=114 channel=42
					-30, -41, -21, -5, -34, 9, 56, 11, 27,
					-- layer=3 filter=114 channel=43
					-8, -15, 33, 26, 8, 2, 30, -7, 45,
					-- layer=3 filter=114 channel=44
					12, 14, -5, -10, 0, 8, 0, -2, 0,
					-- layer=3 filter=114 channel=45
					-79, -95, -98, -49, 3, -41, 0, 32, -37,
					-- layer=3 filter=114 channel=46
					34, 12, 18, 10, 18, -11, -19, -14, 3,
					-- layer=3 filter=114 channel=47
					20, 57, 0, 1, 26, 41, 12, 45, 16,
					-- layer=3 filter=114 channel=48
					-6, -28, -9, 5, 60, 8, -27, 24, 35,
					-- layer=3 filter=114 channel=49
					-4, 33, 37, 6, 3, 3, 7, 2, -24,
					-- layer=3 filter=114 channel=50
					67, -20, -54, 14, -49, -18, 32, -24, 49,
					-- layer=3 filter=114 channel=51
					-59, 19, 16, 7, 9, 30, 26, 20, 3,
					-- layer=3 filter=114 channel=52
					0, -8, -13, -2, -15, -15, 26, -41, -26,
					-- layer=3 filter=114 channel=53
					36, 10, -39, 5, 9, 46, 7, -6, 53,
					-- layer=3 filter=114 channel=54
					2, 12, 6, -5, 6, -6, -3, -9, 28,
					-- layer=3 filter=114 channel=55
					-24, -27, 8, -9, 3, 1, 35, -6, 31,
					-- layer=3 filter=114 channel=56
					-7, -6, -6, -12, -20, 9, -15, 3, 27,
					-- layer=3 filter=114 channel=57
					26, 64, 62, -14, 39, 24, -20, 38, -16,
					-- layer=3 filter=114 channel=58
					-14, -2, 3, -13, 31, 4, 43, 9, 38,
					-- layer=3 filter=114 channel=59
					-24, -28, 8, 28, 70, 16, -21, -2, 63,
					-- layer=3 filter=114 channel=60
					-27, -41, 24, -4, 5, 8, -15, 9, 32,
					-- layer=3 filter=114 channel=61
					12, -30, -43, 23, 32, -4, -2, -7, 38,
					-- layer=3 filter=114 channel=62
					-42, -17, -24, 40, -9, -6, 6, -13, -42,
					-- layer=3 filter=114 channel=63
					9, 14, -14, 9, 35, 8, 14, -3, 12,
					-- layer=3 filter=115 channel=0
					-16, 30, 7, -5, -7, 21, 6, -37, -52,
					-- layer=3 filter=115 channel=1
					11, -5, 4, -22, 8, 1, -15, -58, 32,
					-- layer=3 filter=115 channel=2
					23, 48, -7, 4, -29, -1, 5, 13, -10,
					-- layer=3 filter=115 channel=3
					35, 42, -6, -10, 1, -15, 4, 16, 5,
					-- layer=3 filter=115 channel=4
					-16, -30, -20, -5, 17, -4, 30, 17, 8,
					-- layer=3 filter=115 channel=5
					14, 0, -6, -25, -13, -9, -16, -13, -4,
					-- layer=3 filter=115 channel=6
					13, 21, 15, 0, 13, 9, 17, 37, 17,
					-- layer=3 filter=115 channel=7
					-3, 10, 0, 10, 8, 22, 58, -5, -2,
					-- layer=3 filter=115 channel=8
					-17, -23, -15, 13, 28, 38, -5, 8, 22,
					-- layer=3 filter=115 channel=9
					-17, -73, -34, 11, 0, 0, 42, 27, -14,
					-- layer=3 filter=115 channel=10
					-1, -48, -33, 20, -6, 22, 21, 39, 58,
					-- layer=3 filter=115 channel=11
					19, -12, -32, 9, -29, 8, -4, -17, -10,
					-- layer=3 filter=115 channel=12
					16, 0, -9, 15, -48, -58, -15, -65, -43,
					-- layer=3 filter=115 channel=13
					14, 13, 10, -20, -12, -22, 20, 21, 24,
					-- layer=3 filter=115 channel=14
					1, -7, -40, 12, 29, -3, 29, -11, 2,
					-- layer=3 filter=115 channel=15
					-2, 2, -7, -25, -15, -3, 13, -23, 65,
					-- layer=3 filter=115 channel=16
					-26, -4, -39, -6, -26, 0, -40, -50, -30,
					-- layer=3 filter=115 channel=17
					-25, 6, -23, -21, -4, -6, 63, 51, 14,
					-- layer=3 filter=115 channel=18
					7, 7, -33, 1, 10, 31, 8, 24, 35,
					-- layer=3 filter=115 channel=19
					-17, 21, -18, -14, 6, -28, 1, 48, 1,
					-- layer=3 filter=115 channel=20
					-12, 69, 9, 25, -1, 20, -32, 0, 13,
					-- layer=3 filter=115 channel=21
					-55, -50, -25, -20, 1, 26, 1, 12, 14,
					-- layer=3 filter=115 channel=22
					-5, -2, -6, -13, 7, -11, 2, 8, 14,
					-- layer=3 filter=115 channel=23
					-100, -35, -37, 36, -16, 24, 2, 1, -2,
					-- layer=3 filter=115 channel=24
					20, 48, 27, -36, -29, -8, 11, 8, 33,
					-- layer=3 filter=115 channel=25
					-25, 27, 21, -8, 5, 37, 50, 28, 36,
					-- layer=3 filter=115 channel=26
					-10, 0, 3, -14, -14, -8, 5, 13, 13,
					-- layer=3 filter=115 channel=27
					9, 36, 20, -31, 5, 26, 2, 0, -39,
					-- layer=3 filter=115 channel=28
					1, -6, -4, 7, -1, 10, 9, -3, 6,
					-- layer=3 filter=115 channel=29
					55, 5, 32, 21, -15, -22, 38, 8, 10,
					-- layer=3 filter=115 channel=30
					14, -2, -15, 12, -10, -3, 7, -10, -10,
					-- layer=3 filter=115 channel=31
					28, -19, 37, 65, 7, 3, 32, 77, 56,
					-- layer=3 filter=115 channel=32
					-16, -44, -47, -29, -10, -10, -32, 5, -8,
					-- layer=3 filter=115 channel=33
					-21, -13, -58, 48, -1, -5, -2, 14, 16,
					-- layer=3 filter=115 channel=34
					30, -24, -24, 18, -7, 27, 46, 21, 14,
					-- layer=3 filter=115 channel=35
					-18, 21, 16, 6, 5, 10, 13, 0, -2,
					-- layer=3 filter=115 channel=36
					-10, -4, -5, 25, 13, 6, -10, -34, -21,
					-- layer=3 filter=115 channel=37
					-13, 11, -15, 13, 12, 5, -41, -12, 0,
					-- layer=3 filter=115 channel=38
					0, -23, -25, -10, -53, -4, 0, 12, 0,
					-- layer=3 filter=115 channel=39
					-11, 11, 4, 7, -4, -3, 12, 6, 14,
					-- layer=3 filter=115 channel=40
					-21, 9, 6, 22, 22, 15, 13, 13, 12,
					-- layer=3 filter=115 channel=41
					-9, 8, -5, 9, 7, 8, 7, 68, 47,
					-- layer=3 filter=115 channel=42
					25, 30, 31, -23, -25, -16, -4, -14, 1,
					-- layer=3 filter=115 channel=43
					23, 36, 7, 5, -37, -5, -4, -23, 2,
					-- layer=3 filter=115 channel=44
					-9, 4, -4, -6, 7, -3, 5, -11, 7,
					-- layer=3 filter=115 channel=45
					-46, -16, 16, -30, 19, 11, -4, -18, 25,
					-- layer=3 filter=115 channel=46
					0, -35, -12, -1, 6, -8, 15, 26, 19,
					-- layer=3 filter=115 channel=47
					12, 11, -24, 30, -2, -3, 26, 3, 10,
					-- layer=3 filter=115 channel=48
					8, 9, 0, -29, 14, -16, 18, -4, -44,
					-- layer=3 filter=115 channel=49
					26, -55, -59, 24, -1, -6, -42, -2, 24,
					-- layer=3 filter=115 channel=50
					-5, 39, 45, 16, 22, 16, 37, 0, 31,
					-- layer=3 filter=115 channel=51
					25, -36, -15, -2, -1, -38, -5, 9, -16,
					-- layer=3 filter=115 channel=52
					21, 7, -15, 35, -6, -2, 68, -16, -6,
					-- layer=3 filter=115 channel=53
					-13, -29, 38, 42, 15, 15, 24, 5, -38,
					-- layer=3 filter=115 channel=54
					-3, -27, 38, 0, 7, 7, 76, 41, 66,
					-- layer=3 filter=115 channel=55
					-13, -16, -34, -6, 14, 12, 0, -8, 7,
					-- layer=3 filter=115 channel=56
					-15, -5, 25, -4, -14, 1, 14, 0, 13,
					-- layer=3 filter=115 channel=57
					-62, -57, -46, 17, -42, -7, 27, 36, 17,
					-- layer=3 filter=115 channel=58
					16, 0, 7, 6, -51, 5, -3, -33, -13,
					-- layer=3 filter=115 channel=59
					-28, 2, 8, -23, 35, 0, 24, 0, -6,
					-- layer=3 filter=115 channel=60
					5, 48, -21, 7, 6, 27, 36, 11, 9,
					-- layer=3 filter=115 channel=61
					-2, -14, 12, -1, 2, -5, 0, -1, -11,
					-- layer=3 filter=115 channel=62
					-5, -47, -37, 18, -11, -1, 31, 0, 60,
					-- layer=3 filter=115 channel=63
					-6, -20, -8, -20, -14, -10, 1, 4, -10,
					-- layer=3 filter=116 channel=0
					5, -1, 9, 21, 32, 14, 22, 1, -6,
					-- layer=3 filter=116 channel=1
					-3, 17, 22, 30, -33, 31, 31, -13, 25,
					-- layer=3 filter=116 channel=2
					-18, -7, -27, -1, -1, -23, -3, 2, 15,
					-- layer=3 filter=116 channel=3
					9, 28, 2, 12, 10, 11, 20, 6, 21,
					-- layer=3 filter=116 channel=4
					21, 12, -16, -21, -25, -15, 3, 8, -28,
					-- layer=3 filter=116 channel=5
					10, 10, 10, 15, 12, 4, 16, 13, 2,
					-- layer=3 filter=116 channel=6
					-33, 26, 14, -9, 61, -4, 1, 23, -21,
					-- layer=3 filter=116 channel=7
					34, 9, 0, -10, -39, -35, -26, 26, -15,
					-- layer=3 filter=116 channel=8
					-3, -3, 7, -10, 18, 66, 18, 34, 20,
					-- layer=3 filter=116 channel=9
					-12, 1, 24, 53, 20, 26, -17, -36, -32,
					-- layer=3 filter=116 channel=10
					5, -15, 21, 11, 15, 22, -10, -19, 54,
					-- layer=3 filter=116 channel=11
					-3, 42, -31, -31, 46, -18, -31, 33, -44,
					-- layer=3 filter=116 channel=12
					-12, 7, -12, 7, 30, 8, -11, -13, -12,
					-- layer=3 filter=116 channel=13
					5, 60, -13, 0, -1, -47, 0, 17, -24,
					-- layer=3 filter=116 channel=14
					4, 12, -7, 42, 67, 37, -4, 0, -6,
					-- layer=3 filter=116 channel=15
					7, 19, -15, 40, -2, 37, 10, 44, 36,
					-- layer=3 filter=116 channel=16
					-13, -39, -44, 39, 58, 71, 48, 33, 14,
					-- layer=3 filter=116 channel=17
					23, 61, -1, 25, 12, -46, -19, -9, -49,
					-- layer=3 filter=116 channel=18
					-23, 12, -33, 8, -3, -57, -6, -7, -42,
					-- layer=3 filter=116 channel=19
					-15, 23, -5, -8, 5, 30, -5, 0, -21,
					-- layer=3 filter=116 channel=20
					26, 35, 2, 10, 37, -13, 15, 35, 3,
					-- layer=3 filter=116 channel=21
					-37, -26, -13, -43, 9, -19, -48, 16, -44,
					-- layer=3 filter=116 channel=22
					-5, 14, 8, 10, -10, -2, 0, 16, -18,
					-- layer=3 filter=116 channel=23
					-42, -13, -11, -18, 15, 10, 0, -13, -25,
					-- layer=3 filter=116 channel=24
					7, 45, 13, -17, 87, -4, -7, -6, -45,
					-- layer=3 filter=116 channel=25
					54, 4, -15, 13, -27, -48, 4, 10, 13,
					-- layer=3 filter=116 channel=26
					10, 3, -11, -1, -7, -1, -11, 6, -9,
					-- layer=3 filter=116 channel=27
					30, 49, 0, 21, 36, -8, 15, 3, -36,
					-- layer=3 filter=116 channel=28
					-7, -5, -6, 13, 12, 16, -14, -3, 5,
					-- layer=3 filter=116 channel=29
					-20, 16, -14, -12, 5, -40, -7, -39, -59,
					-- layer=3 filter=116 channel=30
					3, 13, 11, 10, 8, 6, 7, 8, 16,
					-- layer=3 filter=116 channel=31
					-33, 28, -27, 21, -27, 0, -14, -46, -22,
					-- layer=3 filter=116 channel=32
					-13, -31, 17, 11, -1, 29, 6, -6, 53,
					-- layer=3 filter=116 channel=33
					-6, -13, -2, -13, 5, 48, -32, 29, 36,
					-- layer=3 filter=116 channel=34
					20, -4, -17, -5, -23, -18, 30, -40, -27,
					-- layer=3 filter=116 channel=35
					0, 34, -3, -25, -25, -46, -20, 14, -26,
					-- layer=3 filter=116 channel=36
					19, -3, -15, 9, 7, 28, -27, -13, 18,
					-- layer=3 filter=116 channel=37
					38, 15, -40, 18, -27, -5, 26, -10, -22,
					-- layer=3 filter=116 channel=38
					-17, 8, -12, 30, 0, -17, 47, 42, 43,
					-- layer=3 filter=116 channel=39
					-3, 4, -2, 6, 2, -7, 7, -12, -12,
					-- layer=3 filter=116 channel=40
					-23, -34, -20, 13, 16, -7, 12, 34, 6,
					-- layer=3 filter=116 channel=41
					33, 32, 28, -21, 5, -28, 11, 15, -22,
					-- layer=3 filter=116 channel=42
					-19, 49, 7, -14, 1, -27, -2, 49, -37,
					-- layer=3 filter=116 channel=43
					-2, 16, 4, -18, 41, 3, 56, 51, 38,
					-- layer=3 filter=116 channel=44
					6, 14, 13, -3, -11, -7, 8, 9, 2,
					-- layer=3 filter=116 channel=45
					-16, 9, 4, 21, -20, 71, 24, -5, 51,
					-- layer=3 filter=116 channel=46
					-5, -30, -13, 15, -26, 14, 19, 5, 14,
					-- layer=3 filter=116 channel=47
					-34, 10, 46, 21, 12, 39, 19, 31, 22,
					-- layer=3 filter=116 channel=48
					-30, 0, 15, 2, 0, 35, -9, -10, 21,
					-- layer=3 filter=116 channel=49
					29, -6, -33, -21, -8, -48, -27, 7, -89,
					-- layer=3 filter=116 channel=50
					-16, 27, -9, -21, 24, -66, 16, 10, -47,
					-- layer=3 filter=116 channel=51
					4, -22, -17, 37, -19, 16, 8, 31, 41,
					-- layer=3 filter=116 channel=52
					0, 45, 14, 7, 13, -10, -12, -8, -53,
					-- layer=3 filter=116 channel=53
					-56, -28, 51, -63, 17, 22, -15, 3, -7,
					-- layer=3 filter=116 channel=54
					67, 12, 16, 5, -26, -10, 6, 4, 26,
					-- layer=3 filter=116 channel=55
					21, 0, 18, 3, 1, 3, -16, -38, 46,
					-- layer=3 filter=116 channel=56
					3, 29, 39, -5, 23, 38, 17, -14, 9,
					-- layer=3 filter=116 channel=57
					-20, -25, -36, -32, 2, -15, -54, -46, -33,
					-- layer=3 filter=116 channel=58
					30, -6, -11, -8, 10, 19, 8, 36, 42,
					-- layer=3 filter=116 channel=59
					-15, -1, -2, 38, 21, 46, 8, 11, 68,
					-- layer=3 filter=116 channel=60
					44, 24, 1, 3, -24, -4, 25, -4, 5,
					-- layer=3 filter=116 channel=61
					-40, -17, -6, 2, -19, 25, 7, -26, 7,
					-- layer=3 filter=116 channel=62
					8, -12, 14, 50, 43, 72, 8, -11, 38,
					-- layer=3 filter=116 channel=63
					8, 4, 1, 5, 6, -18, -14, -2, 15,
					-- layer=3 filter=117 channel=0
					-2, 0, -9, -5, 7, -9, -4, 3, 10,
					-- layer=3 filter=117 channel=1
					5, -18, -4, -8, -3, -12, -5, -16, -3,
					-- layer=3 filter=117 channel=2
					-11, -8, -13, -6, -18, -7, 3, 0, -11,
					-- layer=3 filter=117 channel=3
					-6, -8, -8, 2, -15, -14, -13, 4, 3,
					-- layer=3 filter=117 channel=4
					-7, 3, 0, -23, -6, -4, 0, -11, -22,
					-- layer=3 filter=117 channel=5
					-6, -4, -5, 14, -9, -8, 6, -3, -7,
					-- layer=3 filter=117 channel=6
					11, -12, -14, 6, -14, 6, -10, -8, -7,
					-- layer=3 filter=117 channel=7
					-9, 9, -1, 10, 9, -5, -18, -15, 2,
					-- layer=3 filter=117 channel=8
					-14, -17, -1, -4, -19, -3, -15, 7, 8,
					-- layer=3 filter=117 channel=9
					-2, -1, 2, -4, -16, 0, 1, -2, -10,
					-- layer=3 filter=117 channel=10
					-1, 0, -20, 0, 3, -7, 9, -6, -11,
					-- layer=3 filter=117 channel=11
					-7, 0, 4, -12, 13, 7, -14, -4, -1,
					-- layer=3 filter=117 channel=12
					-12, -15, -9, 0, -15, 11, -12, -16, -6,
					-- layer=3 filter=117 channel=13
					-17, -2, -13, -5, -5, 10, 1, -20, -22,
					-- layer=3 filter=117 channel=14
					-6, 2, -6, -12, 4, -3, 0, 9, 5,
					-- layer=3 filter=117 channel=15
					-18, -21, 1, -17, 2, -14, 4, 1, -9,
					-- layer=3 filter=117 channel=16
					-8, -14, 0, -3, -10, 13, 1, -6, -7,
					-- layer=3 filter=117 channel=17
					11, -14, 0, 5, -6, 7, -8, -12, 7,
					-- layer=3 filter=117 channel=18
					0, -6, 0, -23, -9, -12, -12, -15, -9,
					-- layer=3 filter=117 channel=19
					-1, -15, -5, -3, -11, -1, 1, -14, -1,
					-- layer=3 filter=117 channel=20
					-7, 2, -5, 6, -7, 8, 1, -4, -16,
					-- layer=3 filter=117 channel=21
					-9, -12, 2, -2, 7, -14, -16, 13, -14,
					-- layer=3 filter=117 channel=22
					-4, -14, 6, -12, 11, -9, -3, -2, 13,
					-- layer=3 filter=117 channel=23
					-3, -16, -7, -2, -12, 1, -20, 7, -10,
					-- layer=3 filter=117 channel=24
					-21, -15, 11, 0, 8, -16, -6, 1, -11,
					-- layer=3 filter=117 channel=25
					-2, 5, -10, -13, -1, -14, -2, 3, 0,
					-- layer=3 filter=117 channel=26
					0, 2, 5, 1, -7, 10, -12, 10, -5,
					-- layer=3 filter=117 channel=27
					-9, 0, -16, 12, 2, -7, -15, 0, 1,
					-- layer=3 filter=117 channel=28
					8, -3, -14, -6, -11, 11, -5, 10, -13,
					-- layer=3 filter=117 channel=29
					-16, -12, -16, 8, -6, 7, -16, -12, -15,
					-- layer=3 filter=117 channel=30
					0, 7, 4, -12, 9, 0, 2, 12, -13,
					-- layer=3 filter=117 channel=31
					-1, 0, 0, -5, -14, -2, 7, -2, -4,
					-- layer=3 filter=117 channel=32
					-11, -2, 2, 6, 5, -15, 6, 10, 0,
					-- layer=3 filter=117 channel=33
					-21, -1, 0, 1, 4, -7, 0, -11, -2,
					-- layer=3 filter=117 channel=34
					-4, 9, -11, -1, -13, -2, 0, -1, -13,
					-- layer=3 filter=117 channel=35
					-16, -14, -13, -6, -18, -15, -10, -15, -2,
					-- layer=3 filter=117 channel=36
					-23, -17, -3, -4, -9, -2, 7, -3, -1,
					-- layer=3 filter=117 channel=37
					-12, -4, 8, -5, 7, -10, -12, 0, -26,
					-- layer=3 filter=117 channel=38
					4, -1, 7, 1, -16, 8, 2, 8, -7,
					-- layer=3 filter=117 channel=39
					0, 11, -6, 1, -5, 4, -9, 9, -4,
					-- layer=3 filter=117 channel=40
					10, 5, 5, -21, 0, -10, 0, 4, -16,
					-- layer=3 filter=117 channel=41
					-9, -7, -5, -12, 4, 5, -2, -3, -1,
					-- layer=3 filter=117 channel=42
					9, -16, 4, 8, 1, -14, -14, -15, -1,
					-- layer=3 filter=117 channel=43
					13, 5, 12, -24, -5, 4, -12, 9, 9,
					-- layer=3 filter=117 channel=44
					-1, -7, -2, 2, -12, -8, -4, -9, -1,
					-- layer=3 filter=117 channel=45
					-15, 2, -2, 3, 8, -12, 12, 0, -9,
					-- layer=3 filter=117 channel=46
					3, -11, -15, 0, 0, -11, -10, -20, -17,
					-- layer=3 filter=117 channel=47
					-2, -8, 3, 3, -12, 5, 12, -2, 0,
					-- layer=3 filter=117 channel=48
					-8, 5, -9, 3, 4, -5, -13, -11, -11,
					-- layer=3 filter=117 channel=49
					13, 11, 11, -19, 7, -9, -8, -4, -23,
					-- layer=3 filter=117 channel=50
					0, -11, -3, 3, -5, 12, 3, -19, 4,
					-- layer=3 filter=117 channel=51
					-18, -7, -17, -9, 4, -15, 5, 5, -6,
					-- layer=3 filter=117 channel=52
					-17, 2, -13, 6, -1, -7, -7, 5, 6,
					-- layer=3 filter=117 channel=53
					9, -3, 2, 10, 1, 10, -7, 8, 10,
					-- layer=3 filter=117 channel=54
					1, -16, -5, -22, 10, -9, 2, -22, -13,
					-- layer=3 filter=117 channel=55
					-15, 0, -14, -14, -21, -4, -1, -13, 10,
					-- layer=3 filter=117 channel=56
					-24, -9, -3, -15, -4, -14, -9, -12, -4,
					-- layer=3 filter=117 channel=57
					-3, -2, 4, 0, 7, -7, 6, -7, -7,
					-- layer=3 filter=117 channel=58
					11, 0, -10, -21, -1, -6, -12, -3, 7,
					-- layer=3 filter=117 channel=59
					-6, -10, 0, 7, 12, -11, -6, 10, 3,
					-- layer=3 filter=117 channel=60
					3, -7, 0, 1, -18, -1, 1, 4, -6,
					-- layer=3 filter=117 channel=61
					9, 0, -2, -15, -5, -5, 5, -13, -1,
					-- layer=3 filter=117 channel=62
					2, -2, -6, -6, 1, -2, 5, -3, 7,
					-- layer=3 filter=117 channel=63
					3, -5, 0, -10, 8, 6, -9, 12, -4,
					-- layer=3 filter=118 channel=0
					19, 25, 9, 0, 9, -31, 1, -19, -42,
					-- layer=3 filter=118 channel=1
					17, -7, -7, -23, -20, -20, 0, -27, 19,
					-- layer=3 filter=118 channel=2
					8, 20, -27, -20, -14, -35, -8, 15, -10,
					-- layer=3 filter=118 channel=3
					-43, -19, -14, -34, -7, -23, 5, 36, -28,
					-- layer=3 filter=118 channel=4
					8, -9, 15, 49, -1, -46, 16, 12, -27,
					-- layer=3 filter=118 channel=5
					7, 7, -9, 0, 19, 17, 0, -9, -6,
					-- layer=3 filter=118 channel=6
					-9, -27, -12, 13, 73, -15, 10, 64, 43,
					-- layer=3 filter=118 channel=7
					45, 6, 2, 7, 35, 26, 4, 19, 15,
					-- layer=3 filter=118 channel=8
					-34, -17, -36, -22, 21, 1, -9, 66, 34,
					-- layer=3 filter=118 channel=9
					0, -37, -4, -27, -10, 13, 53, 25, -11,
					-- layer=3 filter=118 channel=10
					-17, -21, -6, 2, -14, 4, 47, -17, 0,
					-- layer=3 filter=118 channel=11
					16, 43, 18, 10, -26, 3, 16, 51, 1,
					-- layer=3 filter=118 channel=12
					35, 0, 9, 41, 39, 20, -7, 34, 11,
					-- layer=3 filter=118 channel=13
					35, 36, 5, -5, -28, 25, 9, -29, 35,
					-- layer=3 filter=118 channel=14
					43, 29, -14, 29, 49, 47, 8, 48, 62,
					-- layer=3 filter=118 channel=15
					-12, 15, 32, -33, -19, -6, 38, -14, -7,
					-- layer=3 filter=118 channel=16
					43, -68, -28, 26, 19, 40, -10, -38, 32,
					-- layer=3 filter=118 channel=17
					23, -3, 56, 29, -21, 4, 6, -33, -22,
					-- layer=3 filter=118 channel=18
					-50, -24, -64, 8, -32, -41, 23, -16, -17,
					-- layer=3 filter=118 channel=19
					-10, 1, -7, -10, 3, -2, -15, 25, 20,
					-- layer=3 filter=118 channel=20
					18, 28, -2, 33, 4, -3, 6, 4, 15,
					-- layer=3 filter=118 channel=21
					-56, -50, 16, -32, -70, -21, -64, 9, -39,
					-- layer=3 filter=118 channel=22
					12, 12, -8, -5, -7, -13, 11, -11, -8,
					-- layer=3 filter=118 channel=23
					-38, -1, 26, -2, -4, 39, -15, -28, -44,
					-- layer=3 filter=118 channel=24
					60, 37, -3, 7, 27, -10, 14, 8, -17,
					-- layer=3 filter=118 channel=25
					-1, -27, -5, 6, -73, -21, -24, -49, -50,
					-- layer=3 filter=118 channel=26
					-5, 8, -1, 1, 0, 13, 10, -7, -2,
					-- layer=3 filter=118 channel=27
					16, 27, 5, -6, -28, -22, -40, -42, -20,
					-- layer=3 filter=118 channel=28
					-1, -1, 8, -7, 9, -9, -9, -8, 5,
					-- layer=3 filter=118 channel=29
					-10, 29, -3, 32, 37, 22, 41, 32, 60,
					-- layer=3 filter=118 channel=30
					-8, 1, -12, 9, -1, 0, 2, 15, 3,
					-- layer=3 filter=118 channel=31
					99, 28, 70, 70, 5, 28, 18, 35, 100,
					-- layer=3 filter=118 channel=32
					-2, -24, -2, 13, -6, 2, 16, 3, -46,
					-- layer=3 filter=118 channel=33
					-25, -12, -25, 2, 11, -39, -12, -7, -3,
					-- layer=3 filter=118 channel=34
					-41, -59, -59, -46, -52, -24, 10, -26, 2,
					-- layer=3 filter=118 channel=35
					16, -9, -8, -10, -56, -40, -56, -44, -43,
					-- layer=3 filter=118 channel=36
					18, 1, -15, -6, 10, -18, 22, 31, 26,
					-- layer=3 filter=118 channel=37
					28, 8, 18, 10, -23, 15, -5, 34, 11,
					-- layer=3 filter=118 channel=38
					31, 12, 53, -4, 66, 41, -39, -41, -22,
					-- layer=3 filter=118 channel=39
					11, -9, 9, -6, 10, 5, -5, -3, 3,
					-- layer=3 filter=118 channel=40
					-20, 0, -2, 12, -21, -37, 35, -18, -2,
					-- layer=3 filter=118 channel=41
					-34, 8, -12, -37, -55, 37, -30, -22, 15,
					-- layer=3 filter=118 channel=42
					2, 26, 43, -17, 1, 0, 0, 0, 25,
					-- layer=3 filter=118 channel=43
					-16, 14, 10, 39, 15, 10, 25, 12, 11,
					-- layer=3 filter=118 channel=44
					-9, -8, -12, 1, -9, 6, -12, -11, -2,
					-- layer=3 filter=118 channel=45
					27, 16, 18, -24, 11, -34, 7, 14, 13,
					-- layer=3 filter=118 channel=46
					9, 9, -1, -4, 0, 28, 29, 0, -3,
					-- layer=3 filter=118 channel=47
					7, -12, -14, 9, 48, 40, -2, -4, 33,
					-- layer=3 filter=118 channel=48
					15, 31, 6, 49, 57, 45, 17, -3, -16,
					-- layer=3 filter=118 channel=49
					0, -91, -12, -18, -70, 18, -77, -27, -60,
					-- layer=3 filter=118 channel=50
					-105, -77, -19, 26, -2, 13, 11, 6, 13,
					-- layer=3 filter=118 channel=51
					-11, -9, -25, -23, -68, -46, -20, -10, 23,
					-- layer=3 filter=118 channel=52
					39, 29, 14, 16, -7, -13, -32, 3, 28,
					-- layer=3 filter=118 channel=53
					9, 30, 27, 23, 1, -12, -10, 32, -19,
					-- layer=3 filter=118 channel=54
					5, -62, -69, -52, -21, -57, 7, 24, -9,
					-- layer=3 filter=118 channel=55
					15, 10, 18, -27, 0, 11, 19, 5, 10,
					-- layer=3 filter=118 channel=56
					8, 20, 0, 5, 12, 39, -31, -5, -19,
					-- layer=3 filter=118 channel=57
					-35, -40, -18, -19, -65, -68, -26, -14, -115,
					-- layer=3 filter=118 channel=58
					-21, 6, 0, 46, 4, 29, -5, 2, -12,
					-- layer=3 filter=118 channel=59
					12, 15, 27, -9, 0, 17, 44, 16, -2,
					-- layer=3 filter=118 channel=60
					-58, -58, -56, -50, -57, -58, -28, -52, -35,
					-- layer=3 filter=118 channel=61
					-32, -33, -16, -23, -24, 12, -39, -15, -33,
					-- layer=3 filter=118 channel=62
					-28, 4, 3, -4, 4, -12, 53, 53, 12,
					-- layer=3 filter=118 channel=63
					28, 0, -1, 21, 18, 10, 10, 9, 3,
					-- layer=3 filter=119 channel=0
					-15, 3, -2, -20, -6, 12, 9, 2, -44,
					-- layer=3 filter=119 channel=1
					8, 0, -17, -28, 16, 3, 9, -70, -8,
					-- layer=3 filter=119 channel=2
					1, 3, 17, -6, -51, 23, 23, 8, 1,
					-- layer=3 filter=119 channel=3
					33, -18, 31, 18, -51, -3, 13, 7, 14,
					-- layer=3 filter=119 channel=4
					-14, 24, 16, -35, -19, -35, 26, 23, 41,
					-- layer=3 filter=119 channel=5
					-7, 7, -7, -1, -6, 7, -11, -17, 1,
					-- layer=3 filter=119 channel=6
					36, 5, 38, -1, -39, 19, 46, -4, 24,
					-- layer=3 filter=119 channel=7
					-29, 0, 0, 16, 20, 28, 38, -21, -31,
					-- layer=3 filter=119 channel=8
					36, 42, 20, 32, -19, -26, 43, -3, 1,
					-- layer=3 filter=119 channel=9
					14, -15, -2, 14, -23, 32, 45, -55, -27,
					-- layer=3 filter=119 channel=10
					7, -11, -35, -15, -4, -9, 12, 2, 46,
					-- layer=3 filter=119 channel=11
					-1, 0, 41, 11, 1, 29, 12, 8, -5,
					-- layer=3 filter=119 channel=12
					8, -2, 11, -36, -25, -14, -2, -17, -43,
					-- layer=3 filter=119 channel=13
					10, -7, 12, 32, 6, 7, 42, -3, 1,
					-- layer=3 filter=119 channel=14
					15, 22, 60, -16, 31, -4, 4, -6, 48,
					-- layer=3 filter=119 channel=15
					-9, 14, 2, -19, 10, -4, 5, -31, 3,
					-- layer=3 filter=119 channel=16
					-25, -28, -12, -84, -28, -57, 8, 13, -12,
					-- layer=3 filter=119 channel=17
					6, -10, -33, -10, 0, 2, 48, 53, 36,
					-- layer=3 filter=119 channel=18
					-21, 18, -15, 12, 13, 22, -9, 14, 34,
					-- layer=3 filter=119 channel=19
					-15, 2, 12, 9, -14, 16, -5, -35, 34,
					-- layer=3 filter=119 channel=20
					0, 21, 31, 2, -12, 27, -18, -37, 12,
					-- layer=3 filter=119 channel=21
					19, -22, 7, -5, 11, 27, 33, 6, -11,
					-- layer=3 filter=119 channel=22
					-3, 0, -6, 14, -6, -8, -9, 9, -3,
					-- layer=3 filter=119 channel=23
					4, -8, -10, 1, 18, -2, 0, 10, -52,
					-- layer=3 filter=119 channel=24
					-25, -29, 0, 4, -37, -6, 13, 13, -8,
					-- layer=3 filter=119 channel=25
					-32, 8, 21, -32, 25, 13, 0, 1, 4,
					-- layer=3 filter=119 channel=26
					-16, 11, -15, -6, -7, -10, 5, -9, -1,
					-- layer=3 filter=119 channel=27
					-6, 1, 13, 20, -15, 45, 16, 12, 9,
					-- layer=3 filter=119 channel=28
					-7, -7, -1, 12, 4, -10, -2, 0, 5,
					-- layer=3 filter=119 channel=29
					-9, -33, 20, -33, -39, -42, 7, -21, 5,
					-- layer=3 filter=119 channel=30
					-4, -5, 8, -7, 9, -3, -4, -5, -19,
					-- layer=3 filter=119 channel=31
					1, 29, 25, -19, -39, -45, -6, -8, -9,
					-- layer=3 filter=119 channel=32
					-2, -36, -18, -16, 14, 11, -71, -58, -41,
					-- layer=3 filter=119 channel=33
					3, 18, 33, 42, 35, 10, 4, 23, -4,
					-- layer=3 filter=119 channel=34
					-25, 6, -2, 10, 21, -15, -5, 36, 72,
					-- layer=3 filter=119 channel=35
					-16, 2, -4, 21, 28, -9, 23, 2, -8,
					-- layer=3 filter=119 channel=36
					-1, 8, -4, 11, 29, -11, 10, -23, 7,
					-- layer=3 filter=119 channel=37
					6, -2, -16, -3, 11, -28, 0, -25, -18,
					-- layer=3 filter=119 channel=38
					-44, -24, -50, -23, -9, -22, -25, -12, -26,
					-- layer=3 filter=119 channel=39
					3, 9, -11, 4, 12, 5, -8, -5, 4,
					-- layer=3 filter=119 channel=40
					0, 17, -16, -31, 16, 13, -24, -13, 23,
					-- layer=3 filter=119 channel=41
					-14, -8, -26, 42, 15, -2, 8, 20, 7,
					-- layer=3 filter=119 channel=42
					26, -20, -3, 31, -13, 6, -17, 13, -17,
					-- layer=3 filter=119 channel=43
					-4, -5, 28, -6, -69, -14, -35, -37, -32,
					-- layer=3 filter=119 channel=44
					0, 11, 6, -11, 13, 18, 12, -10, 13,
					-- layer=3 filter=119 channel=45
					13, 6, 22, 17, 18, 6, 29, -23, 10,
					-- layer=3 filter=119 channel=46
					-45, -21, -31, -17, 39, 18, -23, -25, -17,
					-- layer=3 filter=119 channel=47
					0, -11, -37, -6, 2, -11, 11, -19, 3,
					-- layer=3 filter=119 channel=48
					-2, 18, -24, -6, 6, -36, -13, 0, -19,
					-- layer=3 filter=119 channel=49
					-12, -11, -4, 44, 4, 5, -27, 27, 21,
					-- layer=3 filter=119 channel=50
					-13, -23, -14, 21, 8, 30, 45, -26, -2,
					-- layer=3 filter=119 channel=51
					0, -1, 23, 2, -4, -4, -10, -11, -4,
					-- layer=3 filter=119 channel=52
					-14, 9, -3, 7, -9, -5, 43, -9, 22,
					-- layer=3 filter=119 channel=53
					-2, 30, 11, -14, 22, -9, 23, 0, -35,
					-- layer=3 filter=119 channel=54
					14, 29, -8, 24, 7, -21, 45, -3, 40,
					-- layer=3 filter=119 channel=55
					-19, -2, 14, -12, 6, 12, 7, 11, 46,
					-- layer=3 filter=119 channel=56
					-5, -27, -8, -13, -55, -24, 4, 4, -22,
					-- layer=3 filter=119 channel=57
					-19, -24, -34, 50, 51, 54, 1, 31, 2,
					-- layer=3 filter=119 channel=58
					-42, -16, -2, 0, -37, -11, -15, -23, -45,
					-- layer=3 filter=119 channel=59
					-32, 19, -11, 2, 52, 2, -25, -50, -79,
					-- layer=3 filter=119 channel=60
					-21, 6, 14, 0, 57, 29, 32, 14, 15,
					-- layer=3 filter=119 channel=61
					-17, -5, -32, -12, -18, 8, 0, 16, -1,
					-- layer=3 filter=119 channel=62
					-18, -3, -13, 0, -39, -23, -6, -52, 0,
					-- layer=3 filter=119 channel=63
					0, -12, 3, -14, -11, -2, 5, 4, -7,
					-- layer=3 filter=120 channel=0
					1, -42, -6, -35, -91, -4, -13, 21, -8,
					-- layer=3 filter=120 channel=1
					-54, 20, -38, 52, -34, 6, 24, 2, -25,
					-- layer=3 filter=120 channel=2
					-26, -12, -17, 76, 50, 0, 30, 40, 27,
					-- layer=3 filter=120 channel=3
					-11, 35, -3, 5, 37, 9, -1, -52, -17,
					-- layer=3 filter=120 channel=4
					9, 19, -11, -14, 1, 12, 17, 26, 14,
					-- layer=3 filter=120 channel=5
					-8, 6, -11, 4, -8, 1, -12, -16, -12,
					-- layer=3 filter=120 channel=6
					12, -1, -22, 16, 9, -15, 23, 9, 3,
					-- layer=3 filter=120 channel=7
					-62, -40, -2, 13, 10, 19, -9, 19, -29,
					-- layer=3 filter=120 channel=8
					-52, -1, -14, -21, 2, 11, 1, -21, -40,
					-- layer=3 filter=120 channel=9
					-19, 0, 3, 34, -29, 13, -12, -33, -25,
					-- layer=3 filter=120 channel=10
					-14, -44, -54, 6, 19, -17, -76, -82, -39,
					-- layer=3 filter=120 channel=11
					44, -19, -27, -10, -24, -41, 12, 28, 1,
					-- layer=3 filter=120 channel=12
					35, -5, 34, 30, -16, 23, 47, -1, 16,
					-- layer=3 filter=120 channel=13
					-31, -3, -15, -34, -46, -7, 27, 13, 19,
					-- layer=3 filter=120 channel=14
					-12, 20, -8, -11, -4, -47, 25, -2, -6,
					-- layer=3 filter=120 channel=15
					-85, -24, -48, 11, 3, 0, 28, 61, 11,
					-- layer=3 filter=120 channel=16
					-32, -8, -41, -9, 11, 12, 50, -21, 5,
					-- layer=3 filter=120 channel=17
					0, -31, 26, -4, -18, 31, -18, -21, 29,
					-- layer=3 filter=120 channel=18
					15, -13, -7, 6, 10, -19, -30, 27, -4,
					-- layer=3 filter=120 channel=19
					11, -17, -17, 6, 19, -20, 23, 58, 8,
					-- layer=3 filter=120 channel=20
					-8, 7, 19, 1, 34, -28, 30, -1, -53,
					-- layer=3 filter=120 channel=21
					-29, -8, -44, -52, 10, 4, -4, 0, 21,
					-- layer=3 filter=120 channel=22
					-12, -11, 8, -14, -14, 0, 10, -13, -8,
					-- layer=3 filter=120 channel=23
					-39, -6, 15, -28, 29, 34, -38, -1, -25,
					-- layer=3 filter=120 channel=24
					25, 4, 1, -9, -1, -43, -15, 1, -5,
					-- layer=3 filter=120 channel=25
					11, -1, -9, 9, 5, 7, -2, -11, -15,
					-- layer=3 filter=120 channel=26
					-5, -4, 2, -14, -10, -4, 17, 4, 0,
					-- layer=3 filter=120 channel=27
					-18, -40, -2, -15, -28, 14, 3, 11, 41,
					-- layer=3 filter=120 channel=28
					-7, -8, 0, 7, -8, 0, -14, 4, 0,
					-- layer=3 filter=120 channel=29
					-10, -2, 37, -37, 2, -5, -68, -39, 4,
					-- layer=3 filter=120 channel=30
					-12, 2, -8, -6, 15, -3, 1, 10, 4,
					-- layer=3 filter=120 channel=31
					33, 1, 5, 33, 25, 28, -17, 1, -36,
					-- layer=3 filter=120 channel=32
					18, 3, 35, -5, -31, -14, -22, -18, -44,
					-- layer=3 filter=120 channel=33
					6, -100, -65, 38, 43, -21, 14, -26, -8,
					-- layer=3 filter=120 channel=34
					24, -11, 13, -32, 33, 20, 16, -13, 0,
					-- layer=3 filter=120 channel=35
					20, 49, -2, 5, 33, 20, 18, 32, 13,
					-- layer=3 filter=120 channel=36
					15, -12, -70, 15, -33, -100, -18, 7, 13,
					-- layer=3 filter=120 channel=37
					1, 7, -48, 30, 6, -6, 46, 5, -23,
					-- layer=3 filter=120 channel=38
					20, 40, 19, 32, 22, -7, -8, 19, 29,
					-- layer=3 filter=120 channel=39
					-6, -3, -1, 4, 14, 12, -8, 8, 8,
					-- layer=3 filter=120 channel=40
					8, 10, -3, -13, -25, 0, -32, 7, 4,
					-- layer=3 filter=120 channel=41
					7, 9, -3, -2, 6, -14, -11, 14, 2,
					-- layer=3 filter=120 channel=42
					-3, 23, -11, 13, 7, -19, 4, 12, 48,
					-- layer=3 filter=120 channel=43
					52, 66, 32, 10, 39, 5, 16, 34, 9,
					-- layer=3 filter=120 channel=44
					4, -3, -3, -7, 3, 11, -3, 1, 5,
					-- layer=3 filter=120 channel=45
					-41, 16, -1, -13, -9, -22, 65, 86, 47,
					-- layer=3 filter=120 channel=46
					34, 14, 3, -9, -7, 34, 15, 33, 46,
					-- layer=3 filter=120 channel=47
					1, -60, -28, 45, -41, 27, 54, 20, 9,
					-- layer=3 filter=120 channel=48
					12, 51, 27, 0, -14, -30, -19, -38, -31,
					-- layer=3 filter=120 channel=49
					-1, 1, 11, -14, 29, -3, 38, 32, 16,
					-- layer=3 filter=120 channel=50
					20, 19, 17, 9, 29, -3, -2, -3, 18,
					-- layer=3 filter=120 channel=51
					-29, -40, -12, -39, 22, 27, 15, 39, -33,
					-- layer=3 filter=120 channel=52
					-47, 18, -8, -43, 2, -17, -31, -29, -39,
					-- layer=3 filter=120 channel=53
					-8, 8, 3, -24, 23, 1, -33, -25, 17,
					-- layer=3 filter=120 channel=54
					33, 33, 25, 20, 18, 14, -3, -44, -46,
					-- layer=3 filter=120 channel=55
					-29, -19, -36, -10, -55, -23, -27, -23, -10,
					-- layer=3 filter=120 channel=56
					-28, -7, -31, -11, -29, -29, 23, -7, -55,
					-- layer=3 filter=120 channel=57
					19, -35, -30, -7, -30, -46, -10, -40, -12,
					-- layer=3 filter=120 channel=58
					-14, -19, 15, -16, 23, 39, -9, 25, 21,
					-- layer=3 filter=120 channel=59
					28, 36, 30, -31, -22, 8, -6, 4, -19,
					-- layer=3 filter=120 channel=60
					-8, 17, 17, -12, 52, 25, -10, 25, 10,
					-- layer=3 filter=120 channel=61
					-15, 13, 30, -12, -12, 54, -34, -35, 16,
					-- layer=3 filter=120 channel=62
					5, -3, -17, -22, 0, -22, 7, 6, -22,
					-- layer=3 filter=120 channel=63
					-16, -24, -7, -14, 19, -20, -16, -14, -23,
					-- layer=3 filter=121 channel=0
					-12, 0, -13, 8, -16, 0, -5, 12, -15,
					-- layer=3 filter=121 channel=1
					-5, -16, 6, 4, -10, 0, 6, -3, 9,
					-- layer=3 filter=121 channel=2
					-12, -13, 7, -19, 0, -9, -1, 5, 0,
					-- layer=3 filter=121 channel=3
					2, 7, -10, -1, 2, -1, 8, 1, 12,
					-- layer=3 filter=121 channel=4
					3, -15, -13, -6, -12, -18, -7, -16, 0,
					-- layer=3 filter=121 channel=5
					-6, -13, 0, -2, -4, 10, 12, 5, -2,
					-- layer=3 filter=121 channel=6
					-17, 0, -12, -9, -12, -2, -4, 12, 7,
					-- layer=3 filter=121 channel=7
					0, 4, 0, -12, 4, -17, 6, -5, -4,
					-- layer=3 filter=121 channel=8
					-15, -12, -8, -10, -10, 7, 2, 6, -7,
					-- layer=3 filter=121 channel=9
					9, 0, 0, 3, -10, 1, -11, -8, 3,
					-- layer=3 filter=121 channel=10
					0, -7, -15, -5, 8, 9, -4, 0, -2,
					-- layer=3 filter=121 channel=11
					13, 12, -12, -15, -2, 4, 7, -8, -13,
					-- layer=3 filter=121 channel=12
					-3, 4, -11, 1, -17, -12, 1, 8, -7,
					-- layer=3 filter=121 channel=13
					-3, -10, 4, 13, 0, -11, -14, -1, 7,
					-- layer=3 filter=121 channel=14
					7, -3, -16, -11, -10, -17, -18, -14, -11,
					-- layer=3 filter=121 channel=15
					12, 7, -8, 4, 0, -2, -5, -11, 7,
					-- layer=3 filter=121 channel=16
					12, -3, 2, -12, 3, -7, -12, -1, 4,
					-- layer=3 filter=121 channel=17
					-12, 7, 4, 12, -5, -3, 3, -14, -12,
					-- layer=3 filter=121 channel=18
					-6, -17, 7, 10, -5, -8, -14, -15, -9,
					-- layer=3 filter=121 channel=19
					7, -2, -13, -3, -5, -6, 7, -8, 0,
					-- layer=3 filter=121 channel=20
					-10, -4, 4, -13, 1, -2, -3, -8, -9,
					-- layer=3 filter=121 channel=21
					-9, 8, 14, -18, -8, -9, -7, -1, -14,
					-- layer=3 filter=121 channel=22
					12, 9, -6, -1, 5, -10, -7, -5, -8,
					-- layer=3 filter=121 channel=23
					8, -6, 2, -16, -12, -15, -11, 5, -11,
					-- layer=3 filter=121 channel=24
					-17, 2, -16, 0, -14, -15, -1, -8, -7,
					-- layer=3 filter=121 channel=25
					-11, -14, -11, 5, 0, 8, 2, -14, 2,
					-- layer=3 filter=121 channel=26
					14, -12, -14, -6, 0, -12, 12, -8, -4,
					-- layer=3 filter=121 channel=27
					-3, 0, 2, -3, -4, 6, -9, -7, -3,
					-- layer=3 filter=121 channel=28
					-7, 11, 4, -15, 5, -6, -1, -12, 1,
					-- layer=3 filter=121 channel=29
					-6, -6, 1, 3, -10, -10, 4, 10, -11,
					-- layer=3 filter=121 channel=30
					-5, -16, 9, 2, 13, -2, -13, 5, -4,
					-- layer=3 filter=121 channel=31
					-11, -18, 9, -8, -9, 4, 8, -6, 5,
					-- layer=3 filter=121 channel=32
					-4, -12, -5, -17, 1, -11, 1, -10, 9,
					-- layer=3 filter=121 channel=33
					-5, -15, 6, -8, -15, -14, -1, -5, 2,
					-- layer=3 filter=121 channel=34
					-12, 0, -3, 9, -10, 3, -7, -3, -8,
					-- layer=3 filter=121 channel=35
					4, -3, 6, -8, 2, 15, -3, 1, 0,
					-- layer=3 filter=121 channel=36
					1, -15, 1, -12, 0, -14, 11, 6, 9,
					-- layer=3 filter=121 channel=37
					6, -9, 7, -13, 12, -11, 0, -12, -17,
					-- layer=3 filter=121 channel=38
					0, -8, 1, -13, -13, -1, -3, 3, 7,
					-- layer=3 filter=121 channel=39
					0, -7, -13, -14, 14, -3, -7, -4, 7,
					-- layer=3 filter=121 channel=40
					3, -9, -2, -17, -6, -3, -10, -15, 7,
					-- layer=3 filter=121 channel=41
					-5, 0, -6, 1, -10, 9, -8, 3, 0,
					-- layer=3 filter=121 channel=42
					-10, 0, -6, -13, 12, -10, -3, 8, -12,
					-- layer=3 filter=121 channel=43
					0, -2, -3, -8, -6, 8, -2, -7, 2,
					-- layer=3 filter=121 channel=44
					-6, 8, 5, -7, 12, 8, 8, -7, 13,
					-- layer=3 filter=121 channel=45
					9, 6, 1, -2, -5, -10, -15, -1, -3,
					-- layer=3 filter=121 channel=46
					-14, -4, -13, -8, -10, -2, -7, 5, -19,
					-- layer=3 filter=121 channel=47
					12, -16, -3, 6, 7, 0, -11, -11, -10,
					-- layer=3 filter=121 channel=48
					-4, 3, -2, -8, 4, -19, -14, 5, -8,
					-- layer=3 filter=121 channel=49
					5, 1, 12, -3, 6, -3, -2, 8, 8,
					-- layer=3 filter=121 channel=50
					0, -9, -14, -2, 11, 1, -16, -15, -19,
					-- layer=3 filter=121 channel=51
					-17, -13, -1, -11, -5, 4, -19, -11, -7,
					-- layer=3 filter=121 channel=52
					0, 8, -15, -14, 6, -13, -15, 11, -2,
					-- layer=3 filter=121 channel=53
					-5, -13, 6, -8, -10, 5, -13, -6, -5,
					-- layer=3 filter=121 channel=54
					-16, 0, 3, 5, 2, 7, 6, -8, -17,
					-- layer=3 filter=121 channel=55
					13, 2, -12, 5, 0, -20, 5, -1, -15,
					-- layer=3 filter=121 channel=56
					3, -4, 0, 2, -1, -1, -2, -10, -17,
					-- layer=3 filter=121 channel=57
					5, -10, -1, -7, -6, 7, 1, -3, 6,
					-- layer=3 filter=121 channel=58
					-11, 7, -12, 0, -7, -7, -20, 5, 8,
					-- layer=3 filter=121 channel=59
					0, -6, 2, -2, -4, -19, 1, -12, -2,
					-- layer=3 filter=121 channel=60
					-15, -19, -6, -2, 0, 7, -2, -17, -6,
					-- layer=3 filter=121 channel=61
					-5, -14, -3, -13, -20, -16, -10, 7, -7,
					-- layer=3 filter=121 channel=62
					5, -2, -6, -10, -5, -4, 0, -14, -10,
					-- layer=3 filter=121 channel=63
					-3, -5, 4, 0, -9, -14, -13, 8, -10,
					-- layer=3 filter=122 channel=0
					-3, -4, 9, 22, 40, 10, -39, 43, 41,
					-- layer=3 filter=122 channel=1
					-14, 13, 3, 2, -36, -32, -16, -8, -8,
					-- layer=3 filter=122 channel=2
					-9, -19, -27, 1, 55, -1, 19, 24, 10,
					-- layer=3 filter=122 channel=3
					-26, 1, -49, 6, 98, 0, -13, 11, -23,
					-- layer=3 filter=122 channel=4
					20, -6, 0, 24, 12, 18, -20, 0, -1,
					-- layer=3 filter=122 channel=5
					-2, -21, 2, 7, -13, 1, -2, -12, -8,
					-- layer=3 filter=122 channel=6
					22, 12, -44, 42, 57, -8, 17, 2, -2,
					-- layer=3 filter=122 channel=7
					54, 7, -20, 11, -20, -49, 3, 9, -43,
					-- layer=3 filter=122 channel=8
					-14, 0, -29, -60, 11, 36, -27, 20, 34,
					-- layer=3 filter=122 channel=9
					-18, 43, 15, 5, -13, 30, -40, 10, 41,
					-- layer=3 filter=122 channel=10
					-4, 14, 13, 25, 16, 33, 13, 7, 41,
					-- layer=3 filter=122 channel=11
					23, -16, -13, 23, -4, -20, -29, -35, -40,
					-- layer=3 filter=122 channel=12
					-42, 43, 23, 3, 0, 19, -39, -22, 27,
					-- layer=3 filter=122 channel=13
					6, -36, -27, -46, 11, -55, -12, -20, -16,
					-- layer=3 filter=122 channel=14
					3, -9, -14, -13, 3, -75, 0, -46, -65,
					-- layer=3 filter=122 channel=15
					15, -4, -2, -20, -23, 12, -6, -11, -36,
					-- layer=3 filter=122 channel=16
					-19, 0, 18, 38, 31, 33, 48, 23, -38,
					-- layer=3 filter=122 channel=17
					17, -22, -25, -6, -2, -36, -28, -7, 11,
					-- layer=3 filter=122 channel=18
					2, 20, 25, 0, 2, 17, 7, 38, 10,
					-- layer=3 filter=122 channel=19
					-9, -69, -83, -21, 0, -52, -55, -50, -35,
					-- layer=3 filter=122 channel=20
					-6, -15, -16, -21, 25, 2, 16, -8, -6,
					-- layer=3 filter=122 channel=21
					17, 10, -13, 22, -11, -35, -34, -5, 0,
					-- layer=3 filter=122 channel=22
					-6, 6, -14, -18, 5, 0, 2, -1, 6,
					-- layer=3 filter=122 channel=23
					-28, -18, -5, -8, 0, 9, -15, 10, 5,
					-- layer=3 filter=122 channel=24
					25, -8, -2, 24, 20, -14, 19, -24, -42,
					-- layer=3 filter=122 channel=25
					4, 17, 13, 9, 13, 7, -19, -13, 17,
					-- layer=3 filter=122 channel=26
					-7, -6, 13, -9, -1, -11, -15, 6, -5,
					-- layer=3 filter=122 channel=27
					-1, -46, -35, 13, 17, -63, -5, 31, -20,
					-- layer=3 filter=122 channel=28
					-1, 5, 0, -5, -6, -8, -16, 9, -10,
					-- layer=3 filter=122 channel=29
					-4, -19, -47, 11, -36, -15, -4, -4, -7,
					-- layer=3 filter=122 channel=30
					17, 15, -7, 5, -9, 10, 4, 19, 22,
					-- layer=3 filter=122 channel=31
					2, -31, -4, -11, -53, -17, 8, -47, -14,
					-- layer=3 filter=122 channel=32
					-5, 46, 9, 26, 32, 41, 70, 4, 51,
					-- layer=3 filter=122 channel=33
					-2, -55, -47, 15, -33, -58, -19, 24, -13,
					-- layer=3 filter=122 channel=34
					13, -3, 63, -1, 13, 9, -22, -3, -15,
					-- layer=3 filter=122 channel=35
					28, 10, -18, 12, 6, -10, -2, 1, -10,
					-- layer=3 filter=122 channel=36
					14, 7, -8, 25, 16, 7, -54, -23, -58,
					-- layer=3 filter=122 channel=37
					-18, -6, -13, -19, -14, -22, -12, -1, -8,
					-- layer=3 filter=122 channel=38
					23, 19, 5, 19, -26, 9, 57, 9, 12,
					-- layer=3 filter=122 channel=39
					14, 5, 16, -6, 6, -7, -5, 8, 6,
					-- layer=3 filter=122 channel=40
					-9, -38, -15, -50, 1, 18, 11, -1, 37,
					-- layer=3 filter=122 channel=41
					5, 25, 41, -16, 33, 22, -60, -29, -34,
					-- layer=3 filter=122 channel=42
					6, -7, -41, -23, 35, -7, -18, -10, -3,
					-- layer=3 filter=122 channel=43
					-9, -11, -21, 12, 25, -50, 41, 37, 0,
					-- layer=3 filter=122 channel=44
					7, -3, 14, 6, 8, 9, 10, 12, -8,
					-- layer=3 filter=122 channel=45
					-13, -23, -21, -53, -3, -10, -32, 18, 47,
					-- layer=3 filter=122 channel=46
					52, 7, 39, -2, 8, 16, 15, 7, 16,
					-- layer=3 filter=122 channel=47
					-9, 26, 30, 35, 9, 26, -39, 25, -23,
					-- layer=3 filter=122 channel=48
					4, 13, 3, 10, -20, -12, 14, -21, 38,
					-- layer=3 filter=122 channel=49
					26, -16, 9, -21, -6, -13, 7, -53, -51,
					-- layer=3 filter=122 channel=50
					36, 21, 14, -7, 34, 1, -14, 18, 24,
					-- layer=3 filter=122 channel=51
					28, 15, -17, -33, 2, -16, -2, 5, 0,
					-- layer=3 filter=122 channel=52
					26, -2, 23, 0, 14, -37, -40, 2, -20,
					-- layer=3 filter=122 channel=53
					-5, -32, -25, -40, -8, 2, -72, -7, -7,
					-- layer=3 filter=122 channel=54
					-4, -2, 34, 4, 16, 8, -30, 16, 11,
					-- layer=3 filter=122 channel=55
					19, 26, 17, 15, -12, -19, 8, 2, 0,
					-- layer=3 filter=122 channel=56
					11, 42, 22, 30, 20, 32, -26, 38, 29,
					-- layer=3 filter=122 channel=57
					23, -22, 3, 0, -17, -19, -31, -30, -2,
					-- layer=3 filter=122 channel=58
					-32, -26, -22, -10, -35, 0, -3, 21, 79,
					-- layer=3 filter=122 channel=59
					16, -27, 36, -7, 12, 9, 38, 28, 106,
					-- layer=3 filter=122 channel=60
					-4, -17, 7, 14, 12, -11, 0, -9, 18,
					-- layer=3 filter=122 channel=61
					0, 57, -8, 29, 7, 58, 2, -37, 44,
					-- layer=3 filter=122 channel=62
					-13, 11, 1, -13, -9, 1, -22, 15, -26,
					-- layer=3 filter=122 channel=63
					-3, 3, -15, 4, -9, 5, 17, 25, -3,
					-- layer=3 filter=123 channel=0
					-10, -11, 3, -8, -8, -10, 7, -1, 5,
					-- layer=3 filter=123 channel=1
					8, -4, -2, 4, 0, 3, 2, 7, 5,
					-- layer=3 filter=123 channel=2
					-16, -14, 1, -4, -19, -8, -17, 15, -9,
					-- layer=3 filter=123 channel=3
					16, 0, 6, -2, -6, -13, -8, 8, 6,
					-- layer=3 filter=123 channel=4
					0, -15, -3, 7, 4, 0, -12, 7, 3,
					-- layer=3 filter=123 channel=5
					5, -13, -3, 9, -5, 1, -15, -3, 3,
					-- layer=3 filter=123 channel=6
					13, -2, -2, -6, 12, -11, -6, 3, -15,
					-- layer=3 filter=123 channel=7
					0, -13, 4, 7, 2, -19, 12, -14, 9,
					-- layer=3 filter=123 channel=8
					-3, -16, -1, -14, -17, -5, -16, 1, 3,
					-- layer=3 filter=123 channel=9
					4, -6, -10, -17, -22, -7, -3, 0, -20,
					-- layer=3 filter=123 channel=10
					5, 7, -12, -3, -8, 2, 8, -4, 14,
					-- layer=3 filter=123 channel=11
					-13, -9, -9, -4, -14, -8, -15, 5, 12,
					-- layer=3 filter=123 channel=12
					9, -11, -8, 2, 4, 2, -5, -18, -8,
					-- layer=3 filter=123 channel=13
					0, -12, -12, -1, 3, -7, 5, 7, -11,
					-- layer=3 filter=123 channel=14
					-7, -14, 2, -12, 6, 13, 1, 9, -17,
					-- layer=3 filter=123 channel=15
					-8, 0, 6, -9, -20, 3, -5, -3, 6,
					-- layer=3 filter=123 channel=16
					-7, 5, -6, 2, 6, -4, 0, 5, 5,
					-- layer=3 filter=123 channel=17
					-1, -17, 13, 4, -4, -14, -4, 10, -18,
					-- layer=3 filter=123 channel=18
					-8, -6, 0, -16, -21, -11, -7, -10, -4,
					-- layer=3 filter=123 channel=19
					0, -11, 11, -11, -13, -19, -8, -14, -18,
					-- layer=3 filter=123 channel=20
					-16, -6, -9, 11, -12, 5, -13, 9, -10,
					-- layer=3 filter=123 channel=21
					-1, 6, 0, -10, -11, -11, -15, 5, -11,
					-- layer=3 filter=123 channel=22
					12, -11, -3, 1, 7, -4, 6, -6, -2,
					-- layer=3 filter=123 channel=23
					8, -19, -2, 0, -11, 2, -2, 10, -10,
					-- layer=3 filter=123 channel=24
					-21, 2, -7, -7, 0, -8, -13, -1, -6,
					-- layer=3 filter=123 channel=25
					6, -15, 2, -11, -22, -4, 15, -7, 3,
					-- layer=3 filter=123 channel=26
					1, -10, -15, 3, 0, 5, -10, -14, -13,
					-- layer=3 filter=123 channel=27
					-1, -14, -12, -14, -14, -12, 7, 5, 4,
					-- layer=3 filter=123 channel=28
					-8, 10, 5, 12, -9, 10, -14, -11, 3,
					-- layer=3 filter=123 channel=29
					4, 7, -5, 12, 9, -22, -8, 1, 10,
					-- layer=3 filter=123 channel=30
					-8, -12, 0, -7, -4, 4, 4, -10, 9,
					-- layer=3 filter=123 channel=31
					15, -4, -10, 2, 4, 19, 19, 11, 5,
					-- layer=3 filter=123 channel=32
					1, -12, -14, -25, -10, -7, -21, -22, -20,
					-- layer=3 filter=123 channel=33
					-17, 6, -4, -14, 7, -6, -18, 0, 4,
					-- layer=3 filter=123 channel=34
					-13, 6, 5, -13, -17, 2, -11, -16, 1,
					-- layer=3 filter=123 channel=35
					-4, -15, 14, -18, -6, 4, -12, 5, -8,
					-- layer=3 filter=123 channel=36
					-4, -16, -14, -9, -13, 0, -20, -2, -12,
					-- layer=3 filter=123 channel=37
					-15, -8, 4, -13, 1, -4, -6, -7, -14,
					-- layer=3 filter=123 channel=38
					-2, -7, -11, -5, 0, -5, 1, -8, 10,
					-- layer=3 filter=123 channel=39
					15, 0, 5, -13, 0, -8, -4, -11, -3,
					-- layer=3 filter=123 channel=40
					-20, -3, -25, -8, 4, -19, 0, 10, 3,
					-- layer=3 filter=123 channel=41
					-5, -10, -10, 5, -5, -5, -7, -7, 13,
					-- layer=3 filter=123 channel=42
					-16, -10, 3, 11, 7, -5, 2, 1, 1,
					-- layer=3 filter=123 channel=43
					5, 8, 0, -13, -3, -21, -11, -17, 10,
					-- layer=3 filter=123 channel=44
					-9, -6, 2, -3, -4, -3, 9, -1, -2,
					-- layer=3 filter=123 channel=45
					5, -8, -2, -5, 0, 5, 11, 1, 8,
					-- layer=3 filter=123 channel=46
					12, -1, 0, -1, 4, 9, 3, 9, 1,
					-- layer=3 filter=123 channel=47
					-17, -4, -17, -3, 0, 0, -10, -2, -12,
					-- layer=3 filter=123 channel=48
					12, 6, -12, -6, -14, -4, -3, -10, 14,
					-- layer=3 filter=123 channel=49
					8, 10, -14, -6, -9, -9, -13, -16, 10,
					-- layer=3 filter=123 channel=50
					6, -10, -9, -2, 1, 7, -9, -10, 7,
					-- layer=3 filter=123 channel=51
					-3, 0, -7, -4, 6, 6, 5, -1, 3,
					-- layer=3 filter=123 channel=52
					10, -4, 0, -3, -3, -7, -11, -16, 1,
					-- layer=3 filter=123 channel=53
					-7, -15, -7, 1, -1, -4, 4, 17, -12,
					-- layer=3 filter=123 channel=54
					-1, 3, -13, -1, -3, 8, 2, -13, 9,
					-- layer=3 filter=123 channel=55
					1, 10, -10, -16, -20, 2, -2, -8, -7,
					-- layer=3 filter=123 channel=56
					-3, -7, 10, -7, -3, -2, -11, -3, -8,
					-- layer=3 filter=123 channel=57
					6, -3, -19, 4, 3, 9, 9, -4, -9,
					-- layer=3 filter=123 channel=58
					-7, -10, 15, -1, -14, 0, -6, -3, 0,
					-- layer=3 filter=123 channel=59
					0, -7, 12, 2, 11, -2, 0, -2, -3,
					-- layer=3 filter=123 channel=60
					-16, -8, -4, 0, 6, -7, -3, 8, 8,
					-- layer=3 filter=123 channel=61
					-7, -1, -12, -17, -15, 16, 4, 1, -13,
					-- layer=3 filter=123 channel=62
					-12, 3, 0, -3, -19, -3, 8, -9, -8,
					-- layer=3 filter=123 channel=63
					-4, 1, 0, -12, 7, -4, 12, 0, -10,
					-- layer=3 filter=124 channel=0
					-49, 0, -12, -5, 4, -23, 9, 70, 5,
					-- layer=3 filter=124 channel=1
					-11, -1, -7, -3, 38, 9, -36, -49, -22,
					-- layer=3 filter=124 channel=2
					4, -1, -8, 16, 20, 22, 46, -8, 27,
					-- layer=3 filter=124 channel=3
					-7, -10, -11, 0, 56, -28, 0, -10, -15,
					-- layer=3 filter=124 channel=4
					-21, -14, -5, 29, 32, -8, 28, -6, 8,
					-- layer=3 filter=124 channel=5
					-19, -33, -13, 7, -9, -10, 1, -7, 7,
					-- layer=3 filter=124 channel=6
					-1, 22, 8, 7, -13, 21, 0, 26, 15,
					-- layer=3 filter=124 channel=7
					63, -1, -16, 10, 0, -11, 17, -29, -8,
					-- layer=3 filter=124 channel=8
					-7, -21, -27, -15, 13, -8, -6, -11, 19,
					-- layer=3 filter=124 channel=9
					25, -3, -4, -1, -2, -17, -36, 22, -2,
					-- layer=3 filter=124 channel=10
					-8, -28, 19, -5, -19, -16, -5, 14, -19,
					-- layer=3 filter=124 channel=11
					0, 4, 0, 6, 0, 3, -17, -16, -9,
					-- layer=3 filter=124 channel=12
					-27, -1, -32, 15, 22, 26, -23, -3, 20,
					-- layer=3 filter=124 channel=13
					20, -37, -20, -24, 22, -8, -3, -17, 0,
					-- layer=3 filter=124 channel=14
					4, -29, -58, -25, -17, -20, 13, -82, -70,
					-- layer=3 filter=124 channel=15
					15, -37, -7, -11, 4, -4, 8, -12, -4,
					-- layer=3 filter=124 channel=16
					-10, 34, 4, -11, -30, -10, 30, -45, -27,
					-- layer=3 filter=124 channel=17
					-2, -18, -34, -6, 36, -35, 5, 35, 0,
					-- layer=3 filter=124 channel=18
					32, -2, 6, -27, -11, 29, -5, 58, 26,
					-- layer=3 filter=124 channel=19
					20, -6, -18, -2, 3, -17, 8, -6, 5,
					-- layer=3 filter=124 channel=20
					-32, 28, 24, -35, 15, 8, 13, 10, -10,
					-- layer=3 filter=124 channel=21
					27, 22, 7, 20, 13, -15, -31, 17, -7,
					-- layer=3 filter=124 channel=22
					5, 2, -2, -18, -5, 5, -6, -10, -4,
					-- layer=3 filter=124 channel=23
					9, 22, -30, 34, -27, 5, 5, 11, 35,
					-- layer=3 filter=124 channel=24
					15, -11, -12, -34, 0, -24, -10, 28, 28,
					-- layer=3 filter=124 channel=25
					-21, 6, 8, 23, 43, 40, 45, 20, 36,
					-- layer=3 filter=124 channel=26
					-3, 3, 15, 0, -15, -9, 1, 12, -12,
					-- layer=3 filter=124 channel=27
					-49, -27, -51, -15, 27, -3, 15, 0, -34,
					-- layer=3 filter=124 channel=28
					3, -7, 13, 9, -2, 7, -8, 1, -7,
					-- layer=3 filter=124 channel=29
					0, -9, 6, -7, -1, 39, 24, 24, 15,
					-- layer=3 filter=124 channel=30
					9, 19, 11, -9, 11, -3, 4, -5, 8,
					-- layer=3 filter=124 channel=31
					31, -17, 27, 36, 19, 28, 70, -1, 34,
					-- layer=3 filter=124 channel=32
					7, 1, 8, -19, -7, 15, 40, 11, 14,
					-- layer=3 filter=124 channel=33
					-30, -6, -12, -32, -12, 1, -10, -13, -31,
					-- layer=3 filter=124 channel=34
					0, -40, 36, 4, 24, 12, 6, 0, -20,
					-- layer=3 filter=124 channel=35
					-17, -4, -29, 10, 36, 40, 19, 21, 19,
					-- layer=3 filter=124 channel=36
					3, -23, -20, -14, 48, 46, -58, -12, -27,
					-- layer=3 filter=124 channel=37
					-37, 22, 46, -34, 50, 11, -22, -21, -7,
					-- layer=3 filter=124 channel=38
					7, 10, 32, -34, -8, 1, 49, 8, 19,
					-- layer=3 filter=124 channel=39
					8, 7, -9, 12, -11, 0, -11, -5, -1,
					-- layer=3 filter=124 channel=40
					0, 19, 13, 1, -18, 14, 42, 14, 47,
					-- layer=3 filter=124 channel=41
					-7, 8, 4, -23, -7, 5, -4, 23, -7,
					-- layer=3 filter=124 channel=42
					-2, -24, -7, -9, 7, -9, 12, -41, 1,
					-- layer=3 filter=124 channel=43
					15, 14, 3, 6, -52, -27, 38, -7, 1,
					-- layer=3 filter=124 channel=44
					11, 11, 2, -10, 0, 0, 13, 0, -8,
					-- layer=3 filter=124 channel=45
					-17, -52, -17, -38, 44, -3, -23, -22, 9,
					-- layer=3 filter=124 channel=46
					39, -23, 20, 29, -12, 5, 9, 25, 9,
					-- layer=3 filter=124 channel=47
					9, 22, -4, 43, -12, 27, -13, 5, 1,
					-- layer=3 filter=124 channel=48
					-10, 10, -34, 10, 28, -20, 36, -32, 32,
					-- layer=3 filter=124 channel=49
					0, -19, -3, -10, 15, -3, -23, -17, -18,
					-- layer=3 filter=124 channel=50
					38, 35, 57, 6, -3, 10, -1, 13, 31,
					-- layer=3 filter=124 channel=51
					6, -25, -76, -27, 35, -36, 19, 48, 5,
					-- layer=3 filter=124 channel=52
					34, -10, -7, -17, -27, -19, 38, 24, -14,
					-- layer=3 filter=124 channel=53
					9, 28, -20, 41, 21, -9, -49, -5, 15,
					-- layer=3 filter=124 channel=54
					31, -27, 33, 24, 26, 21, -3, 1, 20,
					-- layer=3 filter=124 channel=55
					-3, 5, 0, -6, -7, -32, 5, -4, -34,
					-- layer=3 filter=124 channel=56
					-18, 19, 14, -5, 3, -8, -32, 34, 11,
					-- layer=3 filter=124 channel=57
					-3, 19, 14, -16, -68, 1, -35, -2, 37,
					-- layer=3 filter=124 channel=58
					14, 40, 4, 9, -48, -25, 20, -8, 33,
					-- layer=3 filter=124 channel=59
					24, -5, -24, -14, -24, -45, 30, 1, 62,
					-- layer=3 filter=124 channel=60
					-6, 14, -19, 30, 19, 17, 21, 4, 19,
					-- layer=3 filter=124 channel=61
					31, 6, -29, 21, -14, -6, 11, -8, 4,
					-- layer=3 filter=124 channel=62
					3, -51, -32, -32, -5, -15, -12, 7, -28,
					-- layer=3 filter=124 channel=63
					-12, -21, -9, 25, -29, 4, -26, -9, -3,
					-- layer=3 filter=125 channel=0
					-18, -40, -40, -3, -38, 21, -30, -2, -12,
					-- layer=3 filter=125 channel=1
					-66, -32, -78, -38, -3, -86, -28, -11, -60,
					-- layer=3 filter=125 channel=2
					-48, -18, 22, -14, 43, -7, -48, -25, -52,
					-- layer=3 filter=125 channel=3
					47, 8, 41, 1, -5, -3, -1, -23, 20,
					-- layer=3 filter=125 channel=4
					16, 9, -34, -1, 13, -7, 16, -13, 9,
					-- layer=3 filter=125 channel=5
					17, 16, 1, -1, 16, -6, 10, 5, -3,
					-- layer=3 filter=125 channel=6
					54, 33, 27, -2, 18, -4, 19, -20, 74,
					-- layer=3 filter=125 channel=7
					-53, 23, 0, -88, -20, 18, -34, -12, -7,
					-- layer=3 filter=125 channel=8
					-24, 18, 15, -30, 29, -3, -46, -43, -12,
					-- layer=3 filter=125 channel=9
					11, 17, -17, -51, -22, 16, 0, -10, -13,
					-- layer=3 filter=125 channel=10
					-29, -21, -65, -7, 34, 4, -51, -29, 1,
					-- layer=3 filter=125 channel=11
					15, -27, -30, -10, -3, -14, 29, 0, 14,
					-- layer=3 filter=125 channel=12
					13, -19, 7, -22, -66, -30, 30, 11, 11,
					-- layer=3 filter=125 channel=13
					-35, -10, -3, -71, -55, -43, -38, -23, -51,
					-- layer=3 filter=125 channel=14
					-38, 8, 9, 5, -1, -21, -8, -48, -22,
					-- layer=3 filter=125 channel=15
					-57, 12, -15, -44, -5, -51, 25, -4, -70,
					-- layer=3 filter=125 channel=16
					-59, -33, -13, -17, -44, -25, 17, -30, -15,
					-- layer=3 filter=125 channel=17
					0, -3, -13, 28, -3, 15, 6, -27, -29,
					-- layer=3 filter=125 channel=18
					2, -18, 4, 10, -19, 9, 53, 62, 37,
					-- layer=3 filter=125 channel=19
					-13, -23, -20, -9, -3, -10, -25, -19, 27,
					-- layer=3 filter=125 channel=20
					-75, 23, 2, -20, 7, 51, -34, -64, -67,
					-- layer=3 filter=125 channel=21
					6, -30, -93, 14, 23, -33, 9, -6, -1,
					-- layer=3 filter=125 channel=22
					12, -7, -12, 7, 14, -7, 3, -6, -8,
					-- layer=3 filter=125 channel=23
					-25, -46, -18, 4, 4, 53, -4, -14, -11,
					-- layer=3 filter=125 channel=24
					17, 12, 14, -26, -20, 9, -40, -17, -21,
					-- layer=3 filter=125 channel=25
					-26, 39, 2, 6, 50, 34, -8, 25, 31,
					-- layer=3 filter=125 channel=26
					14, 9, 8, 5, -10, 5, -4, 11, -5,
					-- layer=3 filter=125 channel=27
					-38, 8, -41, -26, -31, 27, -78, -66, -52,
					-- layer=3 filter=125 channel=28
					-12, -11, 0, 11, 10, 0, 1, -14, 6,
					-- layer=3 filter=125 channel=29
					16, 9, 21, -6, -112, -59, 28, -30, 18,
					-- layer=3 filter=125 channel=30
					1, -2, -15, 4, 0, -10, -11, 12, 6,
					-- layer=3 filter=125 channel=31
					-12, -8, 16, 4, -23, 16, -4, 4, -35,
					-- layer=3 filter=125 channel=32
					5, -19, -13, 21, -12, -19, 15, 4, -14,
					-- layer=3 filter=125 channel=33
					-22, -46, -18, 13, -9, -28, 3, 26, -82,
					-- layer=3 filter=125 channel=34
					17, 18, 7, 12, 17, 5, 38, 24, 69,
					-- layer=3 filter=125 channel=35
					-3, 0, -2, 17, 31, 5, 4, 33, 38,
					-- layer=3 filter=125 channel=36
					-80, -13, -73, -9, 24, -53, -38, -24, -18,
					-- layer=3 filter=125 channel=37
					-23, 32, -22, 17, 67, -19, 32, -1, -29,
					-- layer=3 filter=125 channel=38
					-7, -21, -26, 49, -2, -9, 62, 36, 8,
					-- layer=3 filter=125 channel=39
					-8, 2, 1, -4, -3, 8, -12, -1, -14,
					-- layer=3 filter=125 channel=40
					-54, -13, -39, 17, -11, 44, -9, 6, 3,
					-- layer=3 filter=125 channel=41
					-5, -24, -9, 37, 10, 0, 27, 27, 42,
					-- layer=3 filter=125 channel=42
					-19, 35, 26, -23, 3, 7, -29, -44, 31,
					-- layer=3 filter=125 channel=43
					-12, 33, 51, -13, -7, -12, -8, -14, -5,
					-- layer=3 filter=125 channel=44
					-13, -9, 11, 8, -12, 8, 2, 8, 0,
					-- layer=3 filter=125 channel=45
					-53, -29, -52, -66, 6, -30, -32, -1, -37,
					-- layer=3 filter=125 channel=46
					23, 8, 37, -3, 28, 31, 13, 24, 68,
					-- layer=3 filter=125 channel=47
					9, 34, 11, -5, -9, -42, -13, -58, -25,
					-- layer=3 filter=125 channel=48
					-16, -2, -32, 4, -37, -19, 24, 19, -5,
					-- layer=3 filter=125 channel=49
					-17, -16, -34, 30, 22, -16, -15, 24, 16,
					-- layer=3 filter=125 channel=50
					57, 19, 0, 24, 29, 17, 61, 12, 28,
					-- layer=3 filter=125 channel=51
					-31, -12, -3, -51, -26, -32, 0, -57, -37,
					-- layer=3 filter=125 channel=52
					-54, -6, -33, -32, 0, -17, -38, -42, -45,
					-- layer=3 filter=125 channel=53
					43, 33, -50, -14, -30, 2, 18, -17, -27,
					-- layer=3 filter=125 channel=54
					11, -11, 5, 2, 25, -7, -12, -8, 11,
					-- layer=3 filter=125 channel=55
					-49, -41, -17, 0, -35, -37, -27, 42, 45,
					-- layer=3 filter=125 channel=56
					-12, -9, -47, -9, -23, -1, -49, 21, -33,
					-- layer=3 filter=125 channel=57
					-13, -29, -53, 28, 0, -14, -11, 7, -12,
					-- layer=3 filter=125 channel=58
					-108, 6, 1, -64, 24, 27, -39, -37, -14,
					-- layer=3 filter=125 channel=59
					31, 0, 29, -35, 46, 33, -30, 15, 20,
					-- layer=3 filter=125 channel=60
					-12, 11, 27, 6, 22, 30, 18, -16, -6,
					-- layer=3 filter=125 channel=61
					-21, -10, -23, -34, 0, 23, 16, 28, 25,
					-- layer=3 filter=125 channel=62
					-34, 2, -55, -25, -37, -82, -1, -35, -74,
					-- layer=3 filter=125 channel=63
					-4, 9, -4, 0, 24, 3, 0, 3, -6,
					-- layer=3 filter=126 channel=0
					-17, 16, -17, -15, 13, 8, -11, -52, -35,
					-- layer=3 filter=126 channel=1
					40, -22, -20, -17, -2, 1, 14, -13, 59,
					-- layer=3 filter=126 channel=2
					15, 27, 3, 1, -40, -2, -31, 4, 0,
					-- layer=3 filter=126 channel=3
					12, -23, 11, -35, -97, -10, -45, -42, -24,
					-- layer=3 filter=126 channel=4
					17, 19, 13, -13, -5, 15, 12, 55, -18,
					-- layer=3 filter=126 channel=5
					-1, 3, 7, -1, -10, -5, -13, 10, -7,
					-- layer=3 filter=126 channel=6
					30, -1, 0, -2, -29, 13, 38, -3, -18,
					-- layer=3 filter=126 channel=7
					-49, -15, 39, 1, 23, 17, 16, 34, 32,
					-- layer=3 filter=126 channel=8
					18, 40, 19, 79, 16, 10, 36, 0, -33,
					-- layer=3 filter=126 channel=9
					4, -4, 7, 17, -10, -16, 69, -20, 0,
					-- layer=3 filter=126 channel=10
					-1, -20, -28, 22, -15, -30, 22, 5, 4,
					-- layer=3 filter=126 channel=11
					14, 12, -13, -6, -3, 2, 48, 7, 28,
					-- layer=3 filter=126 channel=12
					2, -25, 16, -14, -35, -18, 16, 13, -16,
					-- layer=3 filter=126 channel=13
					0, 16, 0, 28, -18, -6, 45, 34, 17,
					-- layer=3 filter=126 channel=14
					5, 44, 43, 28, 1, 44, -1, 26, 98,
					-- layer=3 filter=126 channel=15
					-10, -1, -9, -3, 21, -4, 2, 13, 40,
					-- layer=3 filter=126 channel=16
					17, -46, -19, 17, -17, -15, -59, 9, 21,
					-- layer=3 filter=126 channel=17
					14, 15, 13, 6, 10, 13, 39, 29, 12,
					-- layer=3 filter=126 channel=18
					-19, 5, -11, 12, 41, 18, -4, -8, 1,
					-- layer=3 filter=126 channel=19
					-4, 40, -10, 7, -18, 12, 2, 1, 3,
					-- layer=3 filter=126 channel=20
					36, 15, -24, 19, -30, 21, -37, 19, 29,
					-- layer=3 filter=126 channel=21
					-28, -11, 12, -16, 19, 12, 41, 16, 6,
					-- layer=3 filter=126 channel=22
					8, -4, 5, -8, -2, -7, -3, 2, 0,
					-- layer=3 filter=126 channel=23
					-41, -10, 17, -19, 18, 8, -15, 24, -24,
					-- layer=3 filter=126 channel=24
					-5, 3, 0, 20, 12, 20, 45, 20, 10,
					-- layer=3 filter=126 channel=25
					0, -26, 2, -10, -3, 8, -25, 1, -26,
					-- layer=3 filter=126 channel=26
					13, 10, 13, 0, 12, 7, -1, 6, 4,
					-- layer=3 filter=126 channel=27
					13, 0, 4, 23, -16, 0, -16, -14, 10,
					-- layer=3 filter=126 channel=28
					-2, 3, 15, 11, 8, 12, -7, -7, -7,
					-- layer=3 filter=126 channel=29
					2, 14, 3, 7, 17, -24, 8, 14, 41,
					-- layer=3 filter=126 channel=30
					12, 5, 6, 8, -11, 11, -6, -4, -4,
					-- layer=3 filter=126 channel=31
					-24, 17, -54, -10, 6, -9, -20, 35, -21,
					-- layer=3 filter=126 channel=32
					0, 6, 2, 3, -14, -24, -74, -10, -30,
					-- layer=3 filter=126 channel=33
					28, 16, 12, 30, 28, -14, 23, -1, 34,
					-- layer=3 filter=126 channel=34
					-17, 32, -18, -21, -6, -3, 2, 19, 50,
					-- layer=3 filter=126 channel=35
					12, 7, 21, 3, 14, 6, 2, 7, -1,
					-- layer=3 filter=126 channel=36
					16, -7, 31, -11, -52, -7, 41, 19, 57,
					-- layer=3 filter=126 channel=37
					35, 14, -60, 43, -53, 10, 5, 13, 23,
					-- layer=3 filter=126 channel=38
					-8, -14, -43, 14, 38, 17, -56, -9, -16,
					-- layer=3 filter=126 channel=39
					1, -12, -11, 14, 1, 6, -16, 4, 2,
					-- layer=3 filter=126 channel=40
					11, 45, 18, 12, 42, -10, -21, 5, 16,
					-- layer=3 filter=126 channel=41
					-15, -23, -37, 10, -3, -30, 6, -10, 19,
					-- layer=3 filter=126 channel=42
					-3, 16, 3, 0, 7, 23, -6, 55, -11,
					-- layer=3 filter=126 channel=43
					-11, -16, 13, -26, -10, 38, -15, 16, -14,
					-- layer=3 filter=126 channel=44
					-3, 1, -7, -13, -13, -9, 15, -9, -4,
					-- layer=3 filter=126 channel=45
					-5, 17, 7, 37, -41, -12, 54, 21, 10,
					-- layer=3 filter=126 channel=46
					-49, 0, -15, -2, 40, -21, -13, -9, -11,
					-- layer=3 filter=126 channel=47
					7, -32, 8, 3, 10, -22, 37, -13, 26,
					-- layer=3 filter=126 channel=48
					2, 19, 12, -15, 1, 13, -17, 6, -11,
					-- layer=3 filter=126 channel=49
					3, 25, -23, 26, 17, 16, 11, 27, 74,
					-- layer=3 filter=126 channel=50
					-25, -14, -1, -1, -20, 24, 0, -6, -6,
					-- layer=3 filter=126 channel=51
					31, 16, 65, 43, -13, 5, -33, -1, 3,
					-- layer=3 filter=126 channel=52
					-8, 19, -25, -11, 4, 21, 10, 11, 47,
					-- layer=3 filter=126 channel=53
					3, -4, 33, 40, -21, -9, 75, -33, -37,
					-- layer=3 filter=126 channel=54
					-2, 10, 0, -19, -30, -30, 32, 8, 1,
					-- layer=3 filter=126 channel=55
					-1, -9, 1, -26, 4, 26, -37, 26, 25,
					-- layer=3 filter=126 channel=56
					3, 4, 6, -7, -1, 8, 67, -27, -30,
					-- layer=3 filter=126 channel=57
					-13, -46, -58, 13, 7, 11, 14, 14, -1,
					-- layer=3 filter=126 channel=58
					-7, -13, -1, 29, 9, 1, -6, -1, -69,
					-- layer=3 filter=126 channel=59
					-24, 9, 1, 35, 11, 10, -37, -5, -74,
					-- layer=3 filter=126 channel=60
					6, 13, 6, -6, 4, 2, -14, 10, -32,
					-- layer=3 filter=126 channel=61
					-23, -6, 31, -18, 15, 16, -17, 13, -17,
					-- layer=3 filter=126 channel=62
					0, -4, 30, 29, -4, -9, 37, -24, 24,
					-- layer=3 filter=126 channel=63
					3, 0, 29, -6, 6, -25, 5, 4, 16,
					-- layer=3 filter=127 channel=0
					-35, 10, 6, -13, 39, -5, -3, 18, 23,
					-- layer=3 filter=127 channel=1
					-15, -20, 19, 8, 9, -25, -6, 20, -2,
					-- layer=3 filter=127 channel=2
					11, -18, -5, -12, -32, -11, -24, -57, 1,
					-- layer=3 filter=127 channel=3
					33, 22, 9, 18, -3, 33, 7, 31, -4,
					-- layer=3 filter=127 channel=4
					0, -11, 13, 2, 16, 16, -34, -28, -40,
					-- layer=3 filter=127 channel=5
					-15, -1, -22, -10, 16, -4, -13, -1, -3,
					-- layer=3 filter=127 channel=6
					-5, -17, 14, -17, -15, -10, -19, -2, -10,
					-- layer=3 filter=127 channel=7
					-1, -24, -32, -15, -3, -17, -8, -32, 1,
					-- layer=3 filter=127 channel=8
					13, 13, 9, 28, -25, -1, 17, 25, -33,
					-- layer=3 filter=127 channel=9
					-26, 12, 44, 18, 12, 4, -21, 24, 41,
					-- layer=3 filter=127 channel=10
					15, 0, 61, -75, -8, -19, 0, 12, -4,
					-- layer=3 filter=127 channel=11
					-29, -16, -15, -21, 4, -20, -34, -17, 5,
					-- layer=3 filter=127 channel=12
					-26, -34, -11, -5, 26, 15, 17, 38, 71,
					-- layer=3 filter=127 channel=13
					-50, -11, -18, 42, -22, -31, -25, 0, -11,
					-- layer=3 filter=127 channel=14
					7, 35, -1, -3, -5, 24, -42, 38, 23,
					-- layer=3 filter=127 channel=15
					15, -23, 2, 18, 39, 12, 10, 26, 8,
					-- layer=3 filter=127 channel=16
					-2, -32, 21, 52, 5, 29, -20, 3, 42,
					-- layer=3 filter=127 channel=17
					0, 24, -2, -11, 26, 17, -29, -24, 23,
					-- layer=3 filter=127 channel=18
					-20, 21, 36, -23, -3, -4, -24, -42, -45,
					-- layer=3 filter=127 channel=19
					5, 1, -2, 23, -13, -1, 21, 2, 11,
					-- layer=3 filter=127 channel=20
					-31, -34, -9, -16, -42, -17, 8, -18, 8,
					-- layer=3 filter=127 channel=21
					15, 15, 30, 21, 9, -14, 6, -20, -11,
					-- layer=3 filter=127 channel=22
					11, 7, -9, 7, 0, 8, -6, 5, 4,
					-- layer=3 filter=127 channel=23
					-17, 27, -34, -15, -42, -45, 4, -6, 17,
					-- layer=3 filter=127 channel=24
					-22, 3, 22, -16, -11, 12, 12, -7, 17,
					-- layer=3 filter=127 channel=25
					48, -27, -20, 22, -31, -5, -33, -51, -8,
					-- layer=3 filter=127 channel=26
					5, 14, -10, -10, -8, -8, 0, -1, 10,
					-- layer=3 filter=127 channel=27
					23, 30, 14, 16, -2, -4, -5, -4, 18,
					-- layer=3 filter=127 channel=28
					-9, 10, -1, 14, 3, -2, -10, 10, 11,
					-- layer=3 filter=127 channel=29
					4, 28, 21, 15, 21, 31, -25, 23, -45,
					-- layer=3 filter=127 channel=30
					6, 8, -6, -1, -2, -6, -11, -4, 11,
					-- layer=3 filter=127 channel=31
					35, 10, -15, -26, -6, -21, -30, 0, 2,
					-- layer=3 filter=127 channel=32
					-48, 29, -5, -16, 7, 14, 54, 14, 26,
					-- layer=3 filter=127 channel=33
					-27, -1, 17, -39, -22, 10, 17, -25, 0,
					-- layer=3 filter=127 channel=34
					0, 8, 27, 7, -4, -6, -25, 0, -39,
					-- layer=3 filter=127 channel=35
					-14, -16, 10, -4, -4, -29, -13, -26, -12,
					-- layer=3 filter=127 channel=36
					8, -13, 23, -20, -13, -11, -5, 17, -22,
					-- layer=3 filter=127 channel=37
					17, -21, 39, 4, -13, -19, 3, 23, 4,
					-- layer=3 filter=127 channel=38
					30, 0, -3, 27, 20, -13, -19, 30, 14,
					-- layer=3 filter=127 channel=39
					16, 2, -16, 13, -7, 6, 1, -6, 11,
					-- layer=3 filter=127 channel=40
					-21, 51, 2, -15, -28, -13, 3, -35, -37,
					-- layer=3 filter=127 channel=41
					44, 6, 40, 27, 12, -19, 14, -5, -49,
					-- layer=3 filter=127 channel=42
					-19, 2, -13, 27, -11, -20, 22, -7, 7,
					-- layer=3 filter=127 channel=43
					7, -23, 31, -8, 12, 3, 17, 25, 37,
					-- layer=3 filter=127 channel=44
					-2, 0, -11, 6, 9, 5, -13, 8, -7,
					-- layer=3 filter=127 channel=45
					22, -3, -18, 23, -28, -20, -40, -9, -43,
					-- layer=3 filter=127 channel=46
					-28, -1, 4, 31, 8, 23, 3, 25, 39,
					-- layer=3 filter=127 channel=47
					-34, 37, 3, -9, 69, 23, 10, 32, 18,
					-- layer=3 filter=127 channel=48
					-12, -6, 37, 0, 12, 48, -45, 34, 32,
					-- layer=3 filter=127 channel=49
					1, 27, 5, 21, 11, 8, 30, 20, -22,
					-- layer=3 filter=127 channel=50
					16, -39, -11, 3, -53, -10, -31, -4, 27,
					-- layer=3 filter=127 channel=51
					25, 42, 3, 48, 64, 62, 37, -3, 31,
					-- layer=3 filter=127 channel=52
					-9, 28, 6, -1, 37, -4, -45, -25, 29,
					-- layer=3 filter=127 channel=53
					16, 17, 16, 19, -35, 9, -5, 21, 7,
					-- layer=3 filter=127 channel=54
					8, -15, -14, 0, 13, 15, -26, 15, -2,
					-- layer=3 filter=127 channel=55
					27, 32, 17, -6, 28, 0, -1, 11, -7,
					-- layer=3 filter=127 channel=56
					27, 19, 31, 1, 12, 18, -19, 0, 16,
					-- layer=3 filter=127 channel=57
					-50, -6, 50, -51, -42, 26, -40, -16, -29,
					-- layer=3 filter=127 channel=58
					32, 17, 29, -22, 45, -3, 30, -2, 0,
					-- layer=3 filter=127 channel=59
					-24, -34, 31, -7, -27, 18, -7, 46, 56,
					-- layer=3 filter=127 channel=60
					31, -6, 26, 21, -48, -23, -24, -39, -23,
					-- layer=3 filter=127 channel=61
					6, 0, -5, 25, -11, -12, 9, 29, 16,
					-- layer=3 filter=127 channel=62
					-13, -5, 44, -31, 11, 8, 20, 56, 1,
					-- layer=3 filter=127 channel=63
					0, -3, 19, 16, 8, 16, -2, 10, 11,

					others=>0 );
END iwght_package;

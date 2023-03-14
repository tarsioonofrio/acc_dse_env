LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE gold_package is
		type padroes is array(0 to 4000000) of integer;
		constant gold: padroes := ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 14, 0, 0, 
		5, 17, 0, 0, 0, 56, 25, 36, 0, 0, 0, 0, 0, 15, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 7, 3, 0, 2, 
		0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 20, 
		11, 0, 0, 50, 54, 9, 0, 0, 0, 0, 0, 7, 0, 0, 0, 
		0, 0, 7, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 21, 29, 0, 0, 0, 2, 0, 0, 0, 
		0, 0, 0, 0, 0, 78, 9, 0, 0, 31, 17, 48, 25, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 35, 3, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 
		55, 0, 0, 0, 76, 97, 72, 62, 15, 0, 0, 0, 0, 0, 0, 
		0, 50, 0, 0, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 37, 24, 1, 0, 0, 0, 0, 0, 2, 6, 4, 0, 32, 
		0, 0, 21, 58, 27, 20, 9, 0, 0, 0, 0, 0, 0, 0, 0, 
		
		80, 81, 84, 84, 84, 82, 86, 91, 90, 79, 71, 74, 74, 70, 70, 
		88, 86, 87, 86, 89, 99, 75, 85, 59, 60, 38, 36, 52, 74, 74, 
		63, 90, 90, 88, 88, 66, 52, 38, 39, 41, 7, 14, 7, 42, 72, 
		8, 76, 83, 96, 82, 78, 45, 16, 16, 39, 14, 15, 7, 10, 65, 
		7, 49, 61, 105, 77, 33, 14, 10, 4, 54, 30, 7, 21, 8, 29, 
		0, 39, 56, 45, 53, 30, 28, 16, 0, 82, 10, 4, 23, 12, 11, 
		3, 6, 63, 56, 51, 68, 35, 25, 0, 62, 6, 8, 18, 28, 11, 
		12, 12, 25, 60, 52, 58, 0, 16, 16, 42, 16, 2, 22, 17, 30, 
		8, 20, 0, 47, 36, 17, 24, 26, 45, 25, 36, 0, 15, 38, 61, 
		24, 16, 0, 31, 13, 22, 48, 25, 9, 27, 2, 13, 39, 72, 75, 
		53, 25, 0, 74, 15, 18, 32, 13, 2, 7, 13, 10, 7, 35, 34, 
		2, 30, 17, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 52, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		
		23, 36, 24, 30, 25, 27, 27, 23, 21, 29, 30, 26, 26, 23, 20, 
		21, 26, 23, 32, 23, 78, 33, 35, 28, 29, 50, 29, 12, 19, 27, 
		47, 13, 26, 27, 18, 68, 52, 10, 7, 61, 104, 82, 69, 1, 33, 
		95, 0, 29, 23, 45, 17, 85, 55, 59, 41, 119, 58, 67, 31, 0, 
		129, 100, 52, 0, 161, 80, 120, 77, 65, 0, 102, 81, 61, 65, 0, 
		95, 148, 72, 10, 120, 91, 158, 89, 94, 12, 143, 86, 58, 69, 35, 
		85, 182, 42, 67, 54, 79, 174, 113, 113, 60, 139, 77, 46, 60, 70, 
		109, 181, 45, 73, 25, 136, 159, 95, 90, 69, 124, 84, 48, 75, 55, 
		160, 157, 117, 97, 49, 58, 77, 84, 53, 60, 65, 76, 23, 47, 34, 
		170, 153, 172, 71, 112, 32, 51, 151, 57, 84, 80, 21, 36, 46, 44, 
		148, 141, 163, 77, 226, 108, 121, 177, 135, 59, 38, 55, 65, 65, 60, 
		107, 146, 146, 160, 236, 110, 80, 76, 88, 78, 93, 95, 106, 110, 113, 
		120, 82, 81, 233, 152, 98, 98, 91, 90, 91, 99, 110, 123, 115, 125, 
		134, 100, 46, 270, 112, 98, 104, 92, 93, 102, 109, 119, 115, 116, 153, 
		142, 115, 90, 125, 87, 85, 105, 104, 103, 115, 115, 99, 111, 167, 139, 
		
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 31, 21, 0, 0, 0, 
		2, 0, 0, 0, 0, 0, 0, 6, 7, 0, 43, 29, 41, 0, 0, 
		89, 0, 0, 0, 0, 0, 37, 31, 16, 0, 36, 11, 18, 20, 0, 
		93, 37, 30, 0, 73, 48, 52, 33, 17, 0, 46, 58, 16, 41, 0, 
		57, 22, 35, 0, 0, 6, 51, 51, 58, 0, 57, 41, 9, 31, 35, 
		58, 48, 9, 17, 0, 0, 46, 38, 68, 0, 63, 42, 8, 11, 42, 
		48, 60, 52, 41, 0, 0, 49, 4, 34, 0, 27, 42, 0, 10, 5, 
		58, 37, 69, 0, 18, 0, 20, 19, 11, 17, 0, 18, 0, 0, 1, 
		16, 27, 87, 0, 74, 0, 0, 64, 31, 0, 22, 9, 10, 0, 2, 
		0, 29, 79, 0, 122, 97, 10, 34, 67, 34, 33, 33, 26, 22, 33, 
		0, 0, 66, 0, 78, 20, 5, 9, 32, 30, 34, 30, 37, 36, 42, 
		57, 0, 0, 42, 71, 34, 40, 32, 33, 34, 37, 44, 43, 35, 45, 
		61, 39, 0, 56, 39, 33, 46, 39, 30, 35, 34, 35, 38, 35, 49, 
		64, 38, 21, 32, 30, 13, 23, 33, 35, 44, 52, 34, 30, 75, 79, 
		
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 12, 7, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 13, 9, 6, 10, 19, 17, 0, 
		5, 0, 0, 0, 0, 0, 1, 6, 26, 0, 0, 0, 9, 10, 1, 
		27, 29, 0, 0, 33, 0, 0, 0, 16, 0, 7, 17, 15, 10, 5, 
		17, 38, 0, 0, 0, 0, 4, 0, 16, 6, 19, 16, 18, 11, 7, 
		15, 29, 0, 0, 0, 0, 18, 21, 13, 0, 10, 25, 20, 16, 0, 
		23, 34, 29, 11, 0, 23, 12, 6, 4, 0, 18, 28, 23, 0, 0, 
		27, 33, 35, 27, 21, 0, 0, 1, 18, 5, 23, 23, 8, 0, 0, 
		42, 24, 42, 4, 0, 0, 12, 40, 33, 26, 41, 36, 48, 48, 39, 
		115, 58, 19, 0, 68, 104, 101, 98, 91, 81, 91, 97, 103, 106, 106, 
		120, 106, 36, 39, 90, 89, 90, 90, 91, 95, 101, 103, 106, 105, 108, 
		129, 113, 85, 89, 77, 92, 91, 93, 92, 99, 112, 121, 117, 118, 137, 
		125, 121, 109, 121, 98, 105, 101, 91, 85, 96, 107, 109, 95, 117, 124, 
		
		31, 36, 35, 31, 30, 37, 35, 36, 31, 26, 28, 35, 35, 29, 26, 
		33, 41, 36, 32, 35, 45, 15, 33, 30, 31, 9, 11, 26, 35, 25, 
		18, 51, 37, 35, 35, 32, 24, 16, 21, 31, 0, 0, 0, 17, 38, 
		0, 36, 27, 39, 25, 34, 8, 0, 3, 30, 0, 9, 3, 1, 44, 
		0, 10, 4, 44, 11, 0, 0, 0, 1, 52, 1, 0, 6, 0, 16, 
		0, 12, 5, 43, 67, 30, 9, 0, 0, 69, 0, 0, 8, 0, 0, 
		0, 0, 25, 19, 49, 46, 0, 0, 0, 55, 0, 0, 9, 13, 0, 
		0, 0, 0, 8, 27, 27, 0, 12, 2, 37, 5, 0, 14, 8, 8, 
		0, 5, 0, 28, 7, 25, 10, 7, 15, 7, 22, 0, 23, 26, 25, 
		11, 2, 0, 31, 0, 9, 29, 0, 0, 10, 0, 11, 22, 34, 24, 
		40, 6, 0, 51, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 
		2, 25, 0, 34, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 5, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 5, 47, 7, 18, 0, 0, 0, 
		0, 34, 0, 0, 0, 0, 8, 0, 3, 12, 0, 0, 0, 0, 0, 
		10, 51, 0, 3, 43, 23, 0, 0, 0, 48, 21, 0, 17, 5, 0, 
		0, 3, 0, 0, 0, 0, 0, 6, 3, 93, 0, 0, 10, 12, 20, 
		6, 0, 0, 0, 0, 16, 0, 0, 0, 66, 0, 0, 16, 30, 1, 
		0, 23, 0, 0, 16, 8, 0, 0, 0, 28, 0, 0, 14, 0, 0, 
		4, 21, 0, 12, 0, 0, 0, 10, 21, 0, 0, 0, 0, 8, 0, 
		0, 14, 0, 60, 0, 0, 28, 37, 0, 0, 0, 3, 23, 0, 0, 
		26, 6, 0, 125, 54, 52, 21, 0, 0, 11, 58, 69, 49, 17, 5, 
		16, 4, 17, 71, 0, 0, 11, 15, 28, 48, 56, 62, 73, 69, 61, 
		63, 24, 41, 0, 0, 57, 52, 52, 58, 69, 81, 84, 59, 61, 99, 
		67, 65, 39, 0, 21, 65, 60, 57, 60, 69, 67, 59, 67, 98, 24, 
		62, 76, 46, 15, 33, 43, 37, 55, 74, 81, 65, 76, 119, 89, 55, 
		
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 38, 22, 0, 0, 0, 11, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 8, 11, 0, 0, 
		30, 0, 0, 0, 2, 0, 20, 1, 0, 0, 18, 0, 0, 0, 0, 
		48, 47, 29, 0, 87, 70, 32, 9, 0, 0, 32, 28, 0, 3, 0, 
		27, 21, 37, 0, 0, 8, 51, 23, 19, 0, 40, 1, 0, 0, 11, 
		45, 35, 0, 0, 0, 13, 19, 28, 14, 0, 29, 12, 0, 0, 12, 
		55, 38, 46, 9, 0, 0, 21, 0, 0, 0, 12, 3, 0, 0, 0, 
		60, 31, 47, 0, 17, 0, 0, 3, 0, 5, 0, 0, 0, 0, 16, 
		12, 26, 50, 0, 26, 0, 0, 45, 19, 0, 0, 0, 0, 0, 0, 
		0, 28, 33, 10, 143, 80, 14, 0, 16, 0, 0, 4, 0, 0, 0, 
		0, 0, 38, 40, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		2, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 1, 24, 5, 
		
		0, 6, 0, 0, 0, 5, 0, 0, 0, 2, 2, 2, 0, 0, 0, 
		0, 3, 1, 1, 3, 11, 0, 6, 5, 2, 0, 0, 0, 0, 0, 
		3, 3, 0, 0, 0, 46, 0, 0, 0, 22, 25, 10, 0, 0, 0, 
		0, 0, 0, 3, 0, 6, 13, 0, 0, 40, 17, 13, 0, 0, 0, 
		17, 19, 0, 30, 50, 25, 32, 2, 0, 7, 29, 0, 0, 0, 0, 
		34, 50, 2, 9, 93, 55, 36, 14, 0, 40, 41, 7, 13, 0, 0, 
		31, 43, 7, 3, 39, 42, 74, 22, 10, 54, 33, 1, 0, 10, 0, 
		43, 58, 0, 0, 22, 94, 46, 33, 10, 48, 30, 6, 14, 17, 0, 
		60, 73, 9, 32, 3, 35, 17, 11, 12, 0, 40, 3, 0, 0, 0, 
		75, 71, 26, 34, 34, 4, 23, 36, 6, 35, 0, 0, 0, 3, 2, 
		76, 67, 30, 74, 30, 22, 61, 78, 22, 0, 0, 0, 2, 10, 5, 
		71, 75, 52, 98, 89, 32, 28, 27, 14, 11, 13, 17, 20, 21, 22, 
		7, 52, 62, 102, 42, 16, 15, 11, 9, 10, 14, 21, 28, 30, 29, 
		19, 11, 70, 84, 20, 19, 10, 14, 17, 20, 20, 29, 19, 32, 36, 
		19, 20, 10, 45, 8, 20, 26, 18, 18, 19, 17, 16, 31, 37, 7, 
		
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
		
		2, 0, 2, 0, 7, 2, 0, 0, 6, 0, 0, 0, 0, 5, 1, 
		7, 3, 3, 0, 0, 27, 26, 0, 0, 0, 30, 40, 15, 0, 0, 
		0, 0, 4, 0, 10, 0, 0, 9, 22, 19, 0, 0, 12, 15, 0, 
		2, 76, 9, 6, 11, 6, 14, 9, 1, 0, 0, 0, 0, 13, 0, 
		0, 53, 13, 13, 0, 64, 0, 2, 0, 42, 16, 14, 5, 0, 52, 
		12, 0, 0, 56, 0, 0, 0, 3, 8, 63, 0, 0, 0, 0, 29, 
		24, 0, 0, 0, 0, 26, 0, 0, 0, 40, 0, 12, 24, 10, 10, 
		31, 0, 60, 0, 24, 0, 0, 0, 0, 26, 0, 1, 0, 0, 0, 
		4, 0, 21, 0, 55, 0, 0, 17, 0, 49, 0, 0, 1, 0, 26, 
		0, 0, 0, 39, 0, 25, 10, 0, 60, 0, 0, 0, 5, 19, 0, 
		0, 3, 0, 57, 9, 56, 0, 0, 0, 10, 33, 33, 37, 9, 4, 
		0, 0, 0, 53, 0, 0, 0, 0, 0, 0, 0, 3, 2, 12, 0, 
		18, 6, 0, 0, 0, 0, 0, 1, 3, 9, 10, 16, 0, 0, 10, 
		0, 15, 38, 0, 0, 7, 10, 8, 0, 2, 5, 0, 0, 18, 0, 
		0, 0, 29, 0, 0, 0, 0, 0, 7, 17, 7, 4, 23, 15, 0, 
		
		101, 110, 105, 109, 106, 101, 111, 119, 110, 91, 75, 76, 85, 95, 96, 
		104, 112, 110, 113, 107, 95, 106, 94, 73, 41, 31, 33, 43, 72, 90, 
		75, 73, 108, 115, 108, 95, 74, 48, 26, 11, 32, 33, 34, 30, 72, 
		66, 17, 105, 108, 97, 61, 56, 29, 17, 11, 49, 27, 29, 22, 42, 
		56, 30, 102, 78, 83, 43, 57, 35, 21, 0, 51, 43, 24, 33, 10, 
		17, 32, 101, 43, 37, 52, 67, 54, 40, 0, 48, 42, 23, 27, 22, 
		22, 36, 71, 107, 31, 28, 65, 42, 57, 0, 55, 32, 12, 17, 35, 
		16, 50, 34, 77, 37, 35, 52, 35, 46, 16, 47, 38, 13, 23, 64, 
		26, 21, 21, 31, 22, 29, 50, 31, 30, 43, 36, 37, 5, 52, 83, 
		29, 21, 49, 0, 52, 10, 21, 50, 13, 44, 33, 13, 16, 60, 90, 
		0, 22, 47, 0, 61, 25, 0, 26, 29, 7, 0, 0, 0, 0, 0, 
		0, 0, 41, 1, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 26, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		
		21, 32, 20, 28, 27, 24, 22, 29, 25, 19, 15, 7, 18, 27, 30, 
		20, 25, 20, 30, 18, 28, 40, 17, 27, 7, 31, 20, 0, 2, 22, 
		22, 0, 21, 31, 15, 37, 60, 36, 0, 0, 51, 50, 57, 0, 6, 
		113, 0, 22, 18, 31, 8, 42, 31, 25, 0, 85, 24, 55, 27, 0, 
		118, 0, 54, 0, 60, 31, 85, 56, 42, 0, 59, 69, 25, 58, 0, 
		66, 34, 68, 0, 2, 48, 100, 73, 87, 0, 88, 83, 12, 47, 33, 
		66, 86, 23, 76, 0, 0, 71, 69, 99, 0, 111, 62, 18, 12, 44, 
		54, 103, 36, 55, 0, 0, 113, 46, 68, 0, 84, 77, 0, 18, 50, 
		84, 46, 95, 11, 10, 34, 63, 37, 3, 61, 1, 78, 0, 22, 14, 
		65, 48, 137, 0, 63, 0, 4, 76, 17, 23, 72, 16, 0, 0, 25, 
		0, 42, 136, 0, 149, 35, 0, 57, 82, 51, 4, 0, 0, 0, 11, 
		0, 9, 76, 0, 149, 79, 27, 27, 34, 14, 13, 15, 21, 20, 25, 
		33, 0, 0, 64, 147, 25, 28, 23, 23, 14, 15, 12, 20, 19, 18, 
		48, 15, 0, 144, 49, 19, 38, 22, 15, 15, 19, 21, 33, 0, 39, 
		56, 24, 6, 56, 28, 1, 15, 26, 16, 30, 35, 21, 0, 54, 78, 
		
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 5, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 22, 17, 19, 0, 0, 
		24, 0, 0, 0, 0, 0, 0, 18, 12, 11, 21, 16, 15, 0, 0, 
		53, 0, 0, 0, 13, 37, 29, 11, 13, 0, 11, 23, 3, 12, 0, 
		59, 3, 0, 0, 1, 40, 12, 18, 10, 0, 43, 31, 9, 21, 7, 
		49, 26, 0, 0, 3, 0, 35, 28, 27, 0, 42, 13, 5, 3, 6, 
		42, 35, 17, 0, 13, 15, 65, 25, 13, 0, 23, 14, 8, 13, 0, 
		51, 39, 41, 0, 5, 34, 3, 0, 0, 18, 0, 34, 1, 0, 0, 
		32, 34, 41, 15, 27, 26, 11, 19, 10, 21, 45, 19, 0, 0, 0, 
		16, 35, 48, 0, 43, 31, 48, 70, 60, 39, 14, 27, 32, 33, 38, 
		52, 49, 50, 11, 94, 53, 41, 39, 37, 45, 44, 49, 45, 43, 47, 
		53, 39, 21, 45, 81, 42, 49, 41, 39, 38, 43, 43, 56, 61, 45, 
		58, 49, 32, 69, 51, 44, 44, 42, 47, 47, 53, 52, 56, 38, 75, 
		64, 51, 46, 45, 45, 37, 49, 48, 45, 43, 49, 45, 35, 58, 65, 
		
		62, 62, 60, 66, 69, 58, 66, 76, 76, 69, 64, 55, 58, 66, 70, 
		66, 63, 60, 70, 57, 22, 90, 67, 83, 32, 41, 46, 41, 46, 62, 
		72, 36, 64, 73, 63, 67, 100, 79, 22, 0, 36, 35, 61, 28, 33, 
		118, 0, 70, 63, 77, 42, 39, 42, 30, 0, 77, 37, 62, 48, 0, 
		99, 0, 93, 0, 8, 26, 77, 61, 50, 0, 43, 74, 23, 58, 13, 
		77, 2, 101, 47, 0, 48, 64, 65, 80, 0, 82, 95, 14, 45, 38, 
		69, 53, 64, 107, 0, 0, 48, 62, 92, 0, 105, 66, 23, 6, 44, 
		48, 57, 58, 77, 0, 0, 104, 49, 65, 0, 70, 81, 3, 19, 58, 
		52, 7, 100, 0, 42, 52, 70, 34, 2, 82, 21, 99, 10, 10, 25, 
		31, 12, 112, 0, 64, 25, 3, 38, 33, 43, 91, 37, 0, 10, 77, 
		0, 22, 117, 0, 75, 16, 0, 38, 80, 64, 8, 0, 0, 6, 35, 
		0, 0, 45, 0, 147, 94, 28, 27, 23, 0, 0, 0, 0, 0, 2, 
		4, 0, 0, 28, 150, 0, 3, 1, 4, 0, 0, 0, 0, 0, 0, 
		13, 0, 0, 102, 37, 0, 10, 0, 0, 0, 0, 0, 1, 0, 7, 
		18, 0, 0, 42, 22, 0, 0, 0, 0, 0, 5, 0, 0, 0, 41, 
		
		81, 83, 82, 84, 84, 79, 91, 100, 86, 67, 56, 57, 62, 78, 71, 
		83, 95, 89, 90, 78, 44, 86, 75, 54, 0, 0, 3, 22, 47, 66, 
		55, 54, 89, 93, 90, 68, 30, 10, 0, 0, 0, 0, 0, 17, 41, 
		9, 0, 83, 85, 67, 16, 0, 0, 0, 0, 0, 0, 0, 0, 23, 
		0, 0, 75, 22, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 20, 
		0, 0, 67, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 35, 63, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 19, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 
		0, 0, 0, 0, 2, 0, 0, 0, 0, 28, 0, 0, 0, 0, 52, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 65, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
		
		others=>0 );
END gold_package;
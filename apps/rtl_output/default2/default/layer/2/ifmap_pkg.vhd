library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package ifmap_package is
  type mem is array(0 to 4000000) of integer;

  constant input_map : mem := (

    -- ifmap
    -- channel=0
    20, 0, 0, 59, 41, 72, 54, 
    210, 47, 69, 129, 124, 130, 154, 
    154, 100, 3, 182, 288, 197, 58, 
    107, 147, 72, 170, 168, 168, 29, 
    85, 280, 134, 35, 79, 82, 26, 
    76, 164, 193, 18, 50, 0, 4, 
    106, 42, 68, 0, 0, 0, 0, 
    
    -- channel=1
    0, 0, 0, 135, 168, 186, 117, 
    209, 82, 191, 51, 0, 2, 86, 
    0, 0, 0, 13, 0, 0, 26, 
    48, 84, 0, 0, 0, 0, 0, 
    0, 56, 62, 9, 29, 80, 85, 
    22, 0, 0, 55, 31, 0, 19, 
    26, 28, 25, 16, 4, 1, 0, 
    
    -- channel=2
    0, 11, 20, 0, 14, 57, 7, 
    125, 35, 78, 66, 33, 67, 50, 
    133, 75, 44, 104, 88, 87, 77, 
    114, 71, 43, 51, 68, 35, 41, 
    2, 107, 124, 87, 64, 64, 43, 
    0, 125, 133, 23, 42, 52, 30, 
    31, 34, 17, 9, 8, 0, 21, 
    
    -- channel=3
    263, 254, 211, 225, 157, 137, 209, 
    171, 270, 142, 76, 64, 27, 103, 
    42, 110, 45, 7, 39, 35, 31, 
    0, 135, 25, 29, 31, 28, 69, 
    0, 11, 17, 0, 15, 0, 78, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    
    -- channel=4
    57, 41, 75, 91, 117, 78, 76, 
    151, 127, 91, 73, 178, 42, 86, 
    64, 122, 100, 57, 295, 65, 59, 
    47, 132, 195, 64, 188, 59, 61, 
    57, 165, 33, 81, 71, 37, 112, 
    82, 190, 0, 0, 0, 0, 0, 
    0, 102, 0, 0, 0, 0, 0, 
    
    -- channel=5
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    
    -- channel=6
    9, 42, 14, 0, 0, 0, 0, 
    7, 18, 67, 109, 44, 115, 0, 
    122, 144, 100, 200, 119, 158, 36, 
    114, 60, 38, 107, 73, 90, 29, 
    116, 150, 161, 102, 91, 16, 0, 
    37, 221, 124, 0, 53, 46, 11, 
    0, 16, 4, 11, 28, 29, 56, 
    
    -- channel=7
    56, 4, 43, 131, 104, 67, 96, 
    113, 103, 53, 0, 81, 0, 72, 
    0, 80, 0, 0, 129, 0, 0, 
    0, 69, 84, 21, 59, 7, 0, 
    13, 115, 31, 0, 49, 76, 63, 
    95, 47, 2, 42, 0, 0, 0, 
    41, 98, 21, 0, 0, 6, 20, 
    
    -- channel=8
    0, 0, 0, 0, 1, 84, 0, 
    0, 0, 0, 94, 0, 52, 45, 
    31, 0, 0, 56, 0, 107, 30, 
    95, 55, 0, 22, 0, 53, 0, 
    0, 0, 64, 73, 61, 60, 20, 
    0, 0, 169, 30, 119, 89, 80, 
    64, 0, 110, 84, 82, 48, 62, 
    
    -- channel=9
    101, 139, 106, 56, 40, 35, 27, 
    0, 40, 68, 82, 2, 149, 19, 
    148, 75, 180, 168, 0, 154, 52, 
    223, 55, 100, 224, 54, 155, 87, 
    305, 71, 157, 143, 112, 86, 23, 
    234, 128, 266, 272, 191, 157, 220, 
    202, 271, 270, 243, 243, 254, 270, 
    
    -- channel=10
    157, 159, 134, 124, 94, 39, 85, 
    90, 132, 81, 26, 35, 38, 24, 
    21, 160, 116, 49, 29, 44, 12, 
    33, 46, 2, 84, 35, 62, 29, 
    60, 81, 66, 0, 44, 90, 4, 
    69, 57, 170, 87, 39, 11, 14, 
    51, 59, 60, 36, 22, 43, 49, 
    
    -- channel=11
    319, 339, 318, 278, 175, 194, 245, 
    263, 304, 233, 150, 108, 132, 157, 
    222, 232, 161, 145, 109, 154, 111, 
    168, 191, 181, 145, 151, 106, 162, 
    111, 119, 128, 124, 109, 24, 172, 
    1, 89, 0, 0, 0, 0, 0, 
    0, 0, 0, 0, 0, 0, 0, 
    
    -- channel=12
    54, 4, 55, 116, 38, 25, 75, 
    0, 27, 0, 0, 1, 0, 22, 
    42, 75, 77, 0, 0, 10, 10, 
    0, 0, 18, 30, 0, 0, 0, 
    0, 0, 18, 2, 67, 30, 108, 
    62, 8, 118, 17, 15, 41, 10, 
    0, 36, 0, 0, 3, 12, 0, 
    
    -- channel=13
    0, 7, 0, 0, 0, 18, 0, 
    0, 1, 54, 16, 6, 53, 11, 
    18, 0, 26, 0, 0, 7, 47, 
    64, 0, 26, 32, 0, 0, 70, 
    65, 0, 98, 64, 50, 16, 51, 
    111, 0, 36, 157, 124, 158, 196, 
    149, 92, 122, 174, 186, 197, 186, 
    
    -- channel=14
    7, 0, 31, 65, 79, 76, 48, 
    100, 62, 98, 101, 128, 91, 108, 
    108, 111, 135, 150, 198, 135, 63, 
    118, 135, 157, 134, 150, 109, 36, 
    132, 184, 112, 79, 109, 64, 64, 
    127, 154, 67, 12, 0, 0, 0, 
    58, 89, 0, 0, 0, 0, 0, 
    
    -- channel=15
    49, 79, 47, 0, 0, 0, 0, 
    12, 25, 0, 8, 20, 62, 0, 
    130, 47, 70, 82, 33, 76, 1, 
    126, 14, 68, 73, 43, 46, 15, 
    150, 85, 64, 58, 65, 3, 0, 
    172, 164, 170, 146, 131, 160, 173, 
    224, 217, 195, 194, 206, 235, 262, 
    
    
    others => 0);
end ifmap_package;
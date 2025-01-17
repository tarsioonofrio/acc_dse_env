library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package ifmap_package is
  type mem is array(0 to 4000000) of integer;

  constant input_map : mem := (

    -- ifmap
    -- channel=0
    145, 219, 247, 330, 242, 157, 230, 201, 143, 203, 101, 44, 207, 95, 66, 44, 67, 0, 96, 0, 173, 36, 73, 54, 0, 0, 0, 463, 333, 345, 389, 326, 255, 55, 0, 0, 94, 0, 0, 0, 0, 0, 0, 0, 108, 11, 36, 11, 176, 12, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 340, 488, 518, 60, 143, 110, 440, 183, 143, 58, 0, 0, 219, 257, 296, 231, 147, 65, 182, 159, 281, 0, 0, 0, 0, 0, 0, 0, 131, 100, 178, 0, 0, 0, 0, 0, 0, 0, 0, 105, 0, 0, 0, 0, 16, 0, 155, 281, 191, 178, 210, 151, 253, 210, 65, 52, 76, 0, 0, 0, 0, 0, 15, 0, 0, 0, 355, 276, 220, 0, 0, 33, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 140, 119, 24, 0, 48, 401, 192, 179, 400, 227, 164, 46, 131, 63, 0, 94, 199, 208, 204, 183, 224, 0, 0, 0, 0, 0, 0, 173, 162, 61, 38, 20, 0, 0, 0, 85, 22, 232, 0, 43, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 9, 41, 44, 0, 6, 26, 248, 109, 0, 80, 53, 0, 0, 0, 66, 22, 91, 67, 196, 244, 139, 58, 51, 190, 258, 303, 448, 408, 291, 453, 356, 311, 246, 131, 197, 288, 213, 205, 370, 159, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 0, 5, 320, 118, 61, 280, 446, 340, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
    
    
    others => 0);
end ifmap_package;

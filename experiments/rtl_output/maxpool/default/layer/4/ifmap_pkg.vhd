library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package ifmap_package is
  type mem is array(0 to 4000000) of integer;

  constant input_map : mem := (

    -- ifmap
    -- channel=0
    292, 555, 0, 277, 0, 94, 1015, 289, 0, 0, 151, 764, 307, 328, 315, 0, 79, 157, 0, 267, 303, 185, 172, 0, 358, 0, 519, 164, 200, 0, 53, 207, 0, 130, 668, 65, 421, 804, 0, 0, 384, 90, 83, 164, 0, 0, 315, 276, 383, 13, 562, 0, 436, 186, 0, 521, 448, 0, 417, 16, 279, 359, 0, 164, 
    
    
    others => 0);
end ifmap_package;

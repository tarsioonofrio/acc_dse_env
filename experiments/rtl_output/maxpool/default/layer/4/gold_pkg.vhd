library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -307, -397, -80, 557, -275, 622, 266, -515, -384, -249, 
    
    
    others => 0);
end gold_package;

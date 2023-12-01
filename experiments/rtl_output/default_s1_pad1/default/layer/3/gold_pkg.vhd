library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -602, -464, -688, 727, -835, 1771, 459, 876, -140, -990, 
    
    
    others => 0);
end gold_package;

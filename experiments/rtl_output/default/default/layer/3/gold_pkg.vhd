library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -530, -6027, -3046, -7489, -5675, -7553, -8487, -7823, -8743, -3740, 
    
    
    others => 0);
end gold_package;

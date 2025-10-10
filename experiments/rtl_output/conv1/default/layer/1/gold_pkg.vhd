library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -682, 789, -1290, 273, -631, 510, 277, -430, 470, -80, 
    
    
    others => 0);
end gold_package;

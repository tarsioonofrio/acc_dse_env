library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -1315, 462, 259, 460, 554, -339, 654, 283, -1554, 336, 
    
    
    others => 0);
end gold_package;

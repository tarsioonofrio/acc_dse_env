library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -532, -4916, 2651, 4890, -1707, 1755, -975, -1243, 1072, -1061, 
    
    
    others => 0);
end gold_package;

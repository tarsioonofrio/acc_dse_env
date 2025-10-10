library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    380, 589, 468, 75, -2166, 1064, 196, -1689, 498, -115, 
    
    
    others => 0);
end gold_package;

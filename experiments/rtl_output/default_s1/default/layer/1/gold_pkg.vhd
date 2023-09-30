library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -1548, 774, 410, 313, 23, 311, 753, -308, -711, -107, 
    
    
    others => 0);
end gold_package;

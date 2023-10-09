library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -483, -701, -280, 1684, 368, 1899, 902, -440, -1871, -1112, 
    
    
    others => 0);
end gold_package;

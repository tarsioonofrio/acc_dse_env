library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -343557, -124765, -111924, -277940, -178802, -176982, -276126, -562151, -312413, -205717, 
    
    
    others => 0);
end gold_package;

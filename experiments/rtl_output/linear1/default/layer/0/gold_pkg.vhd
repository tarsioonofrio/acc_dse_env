library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -11, 313, -277, -14, 5, 234, 184, -488, 251, -170, 
    
    
    others => 0);
end gold_package;

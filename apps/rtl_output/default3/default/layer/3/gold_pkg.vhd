library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -223438, -442630, -65548, -110721, -171347, -326475, -102510, -189646, -271200, -256222, 
    
    
    others => 0);
end gold_package;

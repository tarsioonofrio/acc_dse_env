library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -37722, -42538, 81186, -97659, 11892, -193954, -98897, -135580, -233299, -275351, 
    
    
    others => 0);
end gold_package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -429, 76, 298, 146, 274, 253, 217, -36, -458, -262, 
    
    
    others => 0);
end gold_package;

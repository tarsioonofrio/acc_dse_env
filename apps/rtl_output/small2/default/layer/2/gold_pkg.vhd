library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -157061, -425812, -74392, -130320, -204945, -182691, -411340, -245598, 102234, -180686, 
    
    
    others => 0);
end gold_package;

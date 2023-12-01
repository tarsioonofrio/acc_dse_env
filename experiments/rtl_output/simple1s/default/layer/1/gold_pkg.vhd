library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -621, 761, 939, -50, -800, 313, 1145, 718, -998, 127, 
    
    
    others => 0);
end gold_package;

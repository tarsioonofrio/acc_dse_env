library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -78488, -101499, -20472, 142598, -70381, 159333, 68197, -131717, -98179, -63704, 
    
    
    others => 0);
end gold_package;

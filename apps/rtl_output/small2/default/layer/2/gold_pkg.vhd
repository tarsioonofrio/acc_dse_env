library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    91164, -184859, -101407, -177331, -104498, -73639, -421447, -242436, -310754, -282845, 
    
    
    others => 0);
end gold_package;

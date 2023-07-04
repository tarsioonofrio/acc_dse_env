library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -82184, -402796, -139451, 91222, -138461, -85313, -210054, -166824, -174039, -441799, 
    
    
    others => 0);
end gold_package;

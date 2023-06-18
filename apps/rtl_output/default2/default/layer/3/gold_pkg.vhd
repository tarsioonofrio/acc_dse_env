library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -57895, 9232, -109873, 26078, -73773, -17511, -352382, -88464, -47994, -182013, 
    
    
    others => 0);
end gold_package;

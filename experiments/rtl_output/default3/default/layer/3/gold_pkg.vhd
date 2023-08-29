library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    -31248, -41450, 28348, -4791, -140835, -51967, -120520, -40740, -90694, 29240, 
    
    
    others => 0);
end gold_package;

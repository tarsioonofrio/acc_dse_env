library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- gold
    -- channel=0
    32701, -120424, -201173, -150618, -49962, -266734, -197632, -251514, -165139, -181975, 
    
    
    others => 0);
end gold_package;

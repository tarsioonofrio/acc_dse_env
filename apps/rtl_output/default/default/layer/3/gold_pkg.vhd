library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- ifmap
    -135661, -1542841, -779683, -1917072, -1452695, -1933415, -2172550, -2002605, -2238206, -957300,
    others => 0);
end gold_package;

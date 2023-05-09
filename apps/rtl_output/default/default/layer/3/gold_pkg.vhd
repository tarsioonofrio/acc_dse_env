library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- ifmap
    -144052, -111231, -69225, -2590, -62233, -108108, -81969, -270606, -169980, -101494,
    others => 0);
end gold_package;

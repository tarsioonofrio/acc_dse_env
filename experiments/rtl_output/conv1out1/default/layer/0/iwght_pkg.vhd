library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    8272,

    -- weights
    -- filter=0 channel=0
    0, 39, 32, 49, 21, 7, 56, 36, 44,
    -- filter=0 channel=1
    103, 115, 66, 96, 111, 72, 20, 83, 65,
    -- filter=0 channel=2
    -148, -148, -93, -131, -136, -69, -96, -115, -128,

    others => 0);
end iwght_package;

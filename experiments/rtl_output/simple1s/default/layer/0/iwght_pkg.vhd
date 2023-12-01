library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    130930,

    -- weights
    -- filter=0 channel=0
    51, 54, 37, 46, 53, 41, 23, 40, 0,
    -- filter=0 channel=1
    11, -20, 1, -45, 35, -9, -45, -25, -42,
    -- filter=0 channel=2
    -96, -142, -110, -129, -92, -83, -52, -117, -109,

    others => 0);
end iwght_package;

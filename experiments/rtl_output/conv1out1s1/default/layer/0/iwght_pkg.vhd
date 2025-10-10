library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    146402,

    -- weights
    -- filter=0 channel=0
    37, 66, -20, 58, 61, -17, 86, 48, -20,
    -- filter=0 channel=1
    4, -52, 1, 2, -33, -56, 7, -33, 15,
    -- filter=0 channel=2
    -77, -50, -148, -121, -123, -94, -109, -93, -164,

    others => 0);
end iwght_package;

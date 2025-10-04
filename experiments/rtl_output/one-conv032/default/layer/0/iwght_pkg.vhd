library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    13757,

    -- weights
    -- filter=0 channel=0
    53, -59, -20, 79, -76, -6, 9, 46, 61,

    others => 0);
end iwght_package;

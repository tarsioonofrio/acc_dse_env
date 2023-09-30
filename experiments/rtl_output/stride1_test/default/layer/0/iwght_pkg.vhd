library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package iwght_package is
  type mem is array(0 to 4000000) of integer;

  constant input_wght : mem := (
    -- bias
    0, 0, 0, 
    -- weights
    2048,  1024,  2048,
    -512, -1024,  1024,
    1280,  768, -1792,

    2048,  1024,  2048,
    -512, -1024,  1024,
    1280,  768, -1792,

    2048,  1024,  2048,
    -512, -1024,  1024,
    1280,  768, -1792,
    others => 0);
end iwght_package;

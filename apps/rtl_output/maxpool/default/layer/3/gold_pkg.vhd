library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package gold_package is
  type mem is array(0 to 4000000) of integer;

  constant gold : mem := (

    -- ifmap
    588, 196, 234, 272, 360, 0, 0, 0, 112, 97, 417, 158, 142, 351, 310, 476, 0, 240, 168, 243, 140, 280, 562, 0, 261, 539, 192, 585, 9, 525, 454, 474,
    others => 0);
end gold_package;

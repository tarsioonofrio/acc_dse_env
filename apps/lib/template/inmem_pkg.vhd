library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
package {package} is
  type mem is array(0 to 2**{mem_size}) of integer;

  constant {constant} : mem := (
[data]
    others => 0);
end {package};

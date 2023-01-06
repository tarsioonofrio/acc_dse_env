library ieee;
use ieee.std_logic_1164.all;

package util_pkg is

    function log2ceil(arg : positive) return natural;

end package util_pkg;


package body util_pkg is

-- https://electronics.stackexchange.com/questions/183765/standard-integer-width-function-in-vhdl
function log2ceil(arg : positive) return natural is
    variable tmp : positive     := 1;
    variable log : natural      := 0;
begin
    if arg = 1 then return 0; end if;
    while arg > tmp loop
        tmp := tmp * 2;
        log := log + 1;
    end loop;
    return log - 1;
end function;

end package body util_pkg;


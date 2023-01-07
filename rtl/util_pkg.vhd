library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use std.textio.all;

package util_pkg is

    type array_int is array(0 to 4000000) of integer;

end package util_pkg;


package body util_pkg is

    -- https://www.fpga4student.com/2018/08/how-to-read-image-in-vhdl.html
    function init_mem(file_name : in string) return array_int is
        file f : text open read_mode is file_name;
        variable mif_line : line;
        variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
        variable temp_mem : mem_type;
    begin
        for i in mem_type'range loop
            readline(f, mif_line);
            read(mif_line, temp_bv);
            temp_mem(i) := to_stdlogicvector(temp_bv);
        end loop;
        return temp_mem;
    end function;

end package body util_pkg;
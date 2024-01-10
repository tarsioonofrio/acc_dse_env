library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;


package util_package is

  type type_array_int is array(natural range <>) of integer;
  impure function read_data(file_name : in string; mem_size: in integer) return type_array_int;
  impure function read_value(file_name : in string; addr: in integer) return integer;

end package util_package;


package body util_package is

  -- https://nandland.com/file-input-output/
  -- https://www.fpga4student.com/2018/08/how-to-read-image-in-vhdl.html
  impure function read_data(file_name : in string; mem_size: in integer) return type_array_int is
      file file_ptr : text open read_mode is file_name;
      variable line_ptr : line;
      variable tmp_int : integer := 0;
      variable i : integer := 0;
      variable tmp_arr : type_array_int(0 to mem_size) := (others=>0);
  begin
      if file_name = "" then
        return tmp_arr;
      else
        while not endfile(file_ptr) loop
        --for i in type_array_int'range loop
            readline(file_ptr, line_ptr);
            read(line_ptr, tmp_int);
            tmp_arr(i) := tmp_int;
            i := i + 1;
        end loop;
        return tmp_arr;
      end if;
  end function;


  impure function read_value(file_name : in string; addr: in integer) return integer is
      file file_ptr : text open read_mode is file_name;
      variable line_ptr : line;
      variable output : integer := 0;
      variable i : integer := -1;
    begin
      while not endfile(file_ptr) and (i/=addr) loop 
         --report "*** " & file_name & " " & integer'image(addr) &" "& integer'image(i);
         readline(file_ptr, line_ptr);
         i := i + 1;
      end loop;
      if i=addr then
         read(line_ptr, output);
      end if;
      return output;
  end function;



end package body util_package;

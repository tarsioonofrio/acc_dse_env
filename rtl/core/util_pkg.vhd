library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.config_package.all;

package util_package is

  type type_array_int is array(0 to 4000000) of integer;
  impure function read_data(file_name : in string) return type_array_int;
  impure function read_config(file_name : in string) return type_config_logic;
  function convert_config_logic_integer(config_logic : type_config_logic) return type_config_integer;
  function config_integer_init return type_config_integer;

end package util_package;


package body util_package is

  --https://nandland.com/file-input-output/
  -- https://www.fpga4student.com/2018/08/how-to-read-image-in-vhdl.html
  impure function read_data(file_name : in string) return type_array_int is
      file file_ptr : text open read_mode is file_name;
      variable line_ptr : line;
      variable tmp_int : integer := 0;
      variable i : integer := 0;
      variable tmp_arr : type_array_int := (others=>0);
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

  impure function read_config(file_name : in string) return type_config_logic is
      file file_ptr : text open read_mode is file_name;
      variable line_ptr : line;
      variable value : integer := 0;
      variable config : type_config_logic;
  begin
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.n_filter := CONV_STD_LOGIC_VECTOR(value, config.n_filter'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.n_channel := CONV_STD_LOGIC_VECTOR(value, config.n_channel'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.x_size := CONV_STD_LOGIC_VECTOR(value, config.x_size'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.x_size_x_size := CONV_STD_LOGIC_VECTOR(value, config.x_size_x_size'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);

        config.convs_per_line := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.convs_per_line_convs_per_line := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line_convs_per_line'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.convs_per_line_convs_per_line_1 := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line_convs_per_line_1'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);

        config.convs_per_line_convs_per_line_n_channel := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line_convs_per_line_n_channel'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.convs_per_line_convs_per_line_n_channel_1 := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line_convs_per_line_n_channel_1'LENGTH);
        readline(file_ptr, line_ptr);
        read(line_ptr, value);
        config.convs_per_line_convs_per_line_n_channel_n_filter := CONV_STD_LOGIC_VECTOR(value, config.convs_per_line_convs_per_line_n_channel_n_filter'LENGTH);
      return config;
  end function;


  function convert_config_logic_integer(config_logic : type_config_logic) return type_config_integer is
      variable config_integer : type_config_integer;
  begin
      config_integer.n_filter := conv_integer(unsigned(config_logic.n_filter));
      config_integer.n_channel := conv_integer(unsigned(config_logic.n_channel));
      config_integer.x_size := conv_integer(unsigned(config_logic.x_size));
      config_integer.x_size_x_size := conv_integer(unsigned(config_logic.x_size_x_size));
      --config_integer.filter_width := conv_integer(unsigned(config_logic.filter_width));
      --config_integer.filter_width_filter_width := conv_integer(unsigned(config_logic.filter_width_filter_width));
      --config_integer.filter_width_filter_width_1 := conv_integer(unsigned(config_logic.filter_width_filter_width_1));
      config_integer.convs_per_line := conv_integer(unsigned(config_logic.convs_per_line));
      config_integer.convs_per_line_convs_per_line := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line));
      config_integer.convs_per_line_convs_per_line_1 := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line_1));
      --config_integer.input_size := conv_integer(unsigned(config_logic.input_size));
      --config_integer.carry_size := conv_integer(unsigned(config_logic.carry_size));
      config_integer.convs_per_line_convs_per_line_n_channel := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line_n_channel));
      config_integer.convs_per_line_convs_per_line_n_channel_1 := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line_n_channel_1));
      config_integer.convs_per_line_convs_per_line_n_channel_n_filter := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line_n_channel_n_filter));
      return config_integer;
  end function;

  function config_integer_init return type_config_integer is
        variable config_integer : type_config_integer;
    begin
      config_integer.n_filter := 0;
      config_integer.n_channel := 0;
      config_integer.x_size := 0;
      config_integer.x_size_x_size := 0;
      --config_integer.filter_width := 0;
      --config_integer.filter_width_filter_width := 0;
      --config_integer.filter_width_filter_width_1 := 0;
      config_integer.convs_per_line := 0;
      config_integer.convs_per_line_convs_per_line := 0;
      config_integer.convs_per_line_convs_per_line_1 := 0;
      --config_integer.input_sizer := 0;
      --config_integer.carry_sizer := 0;
      config_integer.convs_per_line_convs_per_line_n_channel := 0;
      config_integer.convs_per_line_convs_per_line_n_channel_1 := 0;
      config_integer.convs_per_line_convs_per_line_n_channel_n_filter := 0;
      return config_integer;
    end function;

    function string_to_std_logic_vector(data : string; s: integer; e: integer) return std_logic_vector is
        variable output : std_logic_vector(255 downto 0);
        type type_hex_vector is array (0 to 15) of std_logic_vector(3 downto 0);
        variable str_vector : string := "0123456789ABCDEF";
        variable hex_vector : type_hex := (
            x"0", x"1", x"2", x"3", x"4", x"5", x"6", x"7", x"8", x"9", x"A", x"B", x"C", x"D", x"E", x"F"
        );
    begin
        for i in s to e loop
            for h in 0 to 15 loop
                if data(i*4+3 downto i*4) = str_vector(h) then
                    output(s(i*4+3 downto i*4)) := hex_vector(h);
--                     ret(i*8+7 downto i*8) := std_logic_vector(to_unsigned(character'pos(s(i)), 8));
                end if;
            end loop;
        end loop;
        return output;
    end function string_to_std_logic_vector;

end package body util_package;
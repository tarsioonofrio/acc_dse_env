library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.config_package.all;


package config_package_array is
    type type_config_logic_vector is array (natural range 0 to 2) of type_config_logic;

  constant type_config_logic_vector_const: type_config_logic_vector := (
    0 =>    (n_filter => "00010000",
                n_channel => "00000011",
                x_size => "0100000",
                x_size_x_size => "010000000000",
                convs_per_line => "001111",
                convs_per_line_convs_per_line => "0011100001",
                convs_per_line_convs_per_line_1 => "0011100010",
                convs_per_line_convs_per_line_n_channel => "0000001010100011",
                convs_per_line_convs_per_line_n_channel_1 => "0000000111000010",
                convs_per_line_convs_per_line_n_channel_n_filter => "0000000010101000110000"),
    1 =>    (n_filter => "01000000",
                n_channel => "00100000",
                x_size => "0000111",
                x_size_x_size => "000000110001",
                convs_per_line => "000011",
                convs_per_line_convs_per_line => "0000001001",
                convs_per_line_convs_per_line_1 => "0000001010",
                convs_per_line_convs_per_line_n_channel => "0000000100100000",
                convs_per_line_convs_per_line_n_channel_1 => "0000000100010111",
                convs_per_line_convs_per_line_n_channel_n_filter => "0000000100100000000000"),
    2 =>    (n_filter => "00100000",
                n_channel => "00010000",
                x_size => "0001111",
                x_size_x_size => "000011100001",
                convs_per_line => "000111",
                convs_per_line_convs_per_line => "0000110001",
                convs_per_line_convs_per_line_1 => "0000110010",
                convs_per_line_convs_per_line_n_channel => "0000001100010000",
                convs_per_line_convs_per_line_n_channel_1 => "0000001011011111",
                convs_per_line_convs_per_line_n_channel_n_filter => "0000000110001000000000")
   );

end package config_package_array;


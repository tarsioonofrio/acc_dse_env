library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.config_package.all;


package config_package_array is
  type type_config_logic_vector is array (natural range 0 to 3) of type_config_logic;

  constant const_config_logic_vector: type_config_logic_vector := (
    0 =>    (n_filter => "0100000",
                n_channel => "0000011",
                x_size => "0100000",
                x_size_x_size => "010000000000",
                convs_per_line => "001111",
                convs_per_line_convs_per_line => "0011100001",
                convs_per_line_convs_per_line_1 => "0011100010",
                convs_per_line_convs_per_line_n_channel => "000001010100011",
                convs_per_line_convs_per_line_n_channel_1 => "000000111000010",
                convs_per_line_convs_per_line_n_channel_n_filter => "00000101010001100000"),
    1 =>    (n_filter => "0100000",
                n_channel => "0100000",
                x_size => "0001111",
                x_size_x_size => "000011100001",
                convs_per_line => "000111",
                convs_per_line_convs_per_line => "0000110001",
                convs_per_line_convs_per_line_1 => "0000110010",
                convs_per_line_convs_per_line_n_channel => "000011000100000",
                convs_per_line_convs_per_line_n_channel_1 => "000010111101111",
                convs_per_line_convs_per_line_n_channel_n_filter => "00001100010000000000"),
    2 =>    (n_filter => "0100000",
                n_channel => "0100000",
                x_size => "0000111",
                x_size_x_size => "000000110001",
                convs_per_line => "000011",
                convs_per_line_convs_per_line => "0000001001",
                convs_per_line_convs_per_line_1 => "0000001010",
                convs_per_line_convs_per_line_n_channel => "000000100100000",
                convs_per_line_convs_per_line_n_channel_1 => "000000100010111",
                convs_per_line_convs_per_line_n_channel_n_filter => "00000010010000000000"),
    3 =>    (n_filter => "0001010",
                n_channel => "0100000",
                x_size => "0000011",
                x_size_x_size => "000000001001",
                convs_per_line => "001010",
                convs_per_line_convs_per_line => "0001100100",
                convs_per_line_convs_per_line_1 => "0001100101",
                convs_per_line_convs_per_line_n_channel => "000110010000000",
                convs_per_line_convs_per_line_n_channel_1 => "000110000011100",
                convs_per_line_convs_per_line_n_channel_n_filter => "00000111110100000000")
   );

end package config_package_array;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package op_generics_pkg is

type type_array_TOTAL_OPS is array (0 to 4) of integer range 0 to 3600;
constant TOTAL_OPS : type_array_TOTAL_OPS := (3600, 1568, 576, 0, 10);
type type_array_X_SIZE is array (0 to 4) of integer range 0 to 32;
constant X_SIZE : type_array_X_SIZE := (32, 15, 7, 0, 0);
type type_array_CONVS_PER_LINE is array (0 to 4) of integer range 0 to 15;
constant CONVS_PER_LINE : type_array_CONVS_PER_LINE := (15, 7, 3, 0, 0);
type type_array_N_FILTER is array (0 to 4) of integer range 0 to 64;
constant N_FILTER : type_array_N_FILTER := (16, 32, 64, 64, 0);
type type_array_N_CHANNEL is array (0 to 4) of integer range 0 to 32;
constant N_CHANNEL : type_array_N_CHANNEL := (3, 16, 32, 0, 0);
type type_array_STRIDE is array (0 to 4) of integer range 0 to 3;
constant STRIDE : type_array_STRIDE := (2, 2, 2, 3, 0);
type type_array_FILTER_WIDTH is array (0 to 4) of integer range 0 to 3;
constant FILTER_WIDTH : type_array_FILTER_WIDTH := (3, 3, 3, 3, 0);
type type_array_IN_FEATURES is array (0 to 4) of integer range 0 to 64;
constant IN_FEATURES : type_array_IN_FEATURES := (0, 0, 0, 0, 64);
type type_array_OUT_FEATURES is array (0 to 4) of integer range 0 to 10;
constant OUT_FEATURES : type_array_OUT_FEATURES := (0, 0, 0, 0, 10);

end package op_generics_pkg;

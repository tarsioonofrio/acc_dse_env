library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package op_generics_pkg is

type type_array_TOTAL_OPS is array (0 to 1) of integer range 10 to 225;
constant TOTAL_OPS : type_array_TOTAL_OPS := (225, 10);
type type_array_X_SIZE is array (0 to 1) of integer range 0 to 32;
constant X_SIZE : type_array_X_SIZE := (32, 0);
type type_array_CONVS_PER_LINE is array (0 to 1) of integer range 0 to 15;
constant CONVS_PER_LINE : type_array_CONVS_PER_LINE := (15, 0);
type type_array_N_FILTER is array (0 to 1) of integer range 0 to 1;
constant N_FILTER : type_array_N_FILTER := (1, 0);
type type_array_N_CHANNEL is array (0 to 1) of integer range 0 to 3;
constant N_CHANNEL : type_array_N_CHANNEL := (3, 0);
type type_array_STRIDE is array (0 to 1) of integer range 0 to 2;
constant STRIDE : type_array_STRIDE := (2, 0);
type type_array_FILTER_WIDTH is array (0 to 1) of integer range 0 to 3;
constant FILTER_WIDTH : type_array_FILTER_WIDTH := (3, 0);
type type_array_IN_FEATURES is array (0 to 1) of integer range 0 to 225;
constant IN_FEATURES : type_array_IN_FEATURES := (0, 225);
type type_array_OUT_FEATURES is array (0 to 1) of integer range 0 to 10;
constant OUT_FEATURES : type_array_OUT_FEATURES := (0, 10);

end package op_generics_pkg;

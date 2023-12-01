library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package op_generics_pkg is

type type_array_TOTAL_OPS is array (0 to 0) of integer range 10 to 10;
constant TOTAL_OPS : type_array_TOTAL_OPS := (10);
type type_array_X_SIZE is array (0 to 0) of integer range 0 to 0;
constant X_SIZE : type_array_X_SIZE := (0);
type type_array_CONVS_PER_LINE is array (0 to 0) of integer range 0 to 0;
constant CONVS_PER_LINE : type_array_CONVS_PER_LINE := (0);
type type_array_N_FILTER is array (0 to 0) of integer range 0 to 0;
constant N_FILTER : type_array_N_FILTER := (0);
type type_array_N_CHANNEL is array (0 to 0) of integer range 0 to 0;
constant N_CHANNEL : type_array_N_CHANNEL := (0);
type type_array_STRIDE is array (0 to 0) of integer range 0 to 0;
constant STRIDE : type_array_STRIDE := (0);
type type_array_FILTER_WIDTH is array (0 to 0) of integer range 0 to 0;
constant FILTER_WIDTH : type_array_FILTER_WIDTH := (0);
type type_array_IN_FEATURES is array (0 to 0) of integer range 3072 to 3072;
constant IN_FEATURES : type_array_IN_FEATURES := (3072);
type type_array_OUT_FEATURES is array (0 to 0) of integer range 10 to 10;
constant OUT_FEATURES : type_array_OUT_FEATURES := (10);

end package op_generics_pkg;

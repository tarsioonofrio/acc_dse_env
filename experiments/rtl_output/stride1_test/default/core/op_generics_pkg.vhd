library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package op_generics_pkg is

type type_array_TOTAL_OPS is array (0 to 1) of integer;
constant TOTAL_OPS : type_array_TOTAL_OPS := (27, 0);
type type_array_X_SIZE is array (0 to 1) of integer;
constant X_SIZE : type_array_X_SIZE := (5, 0);
type type_array_CONVS_PER_LINE is array (0 to 1) of integer;
constant CONVS_PER_LINE : type_array_CONVS_PER_LINE := (3, 0);
type type_array_N_FILTER is array (0 to 1) of integer;
constant N_FILTER : type_array_N_FILTER := (3, 0);
type type_array_N_CHANNEL is array (0 to 1) of integer;
constant N_CHANNEL : type_array_N_CHANNEL := (3, 0);
type type_array_STRIDE is array (0 to 1) of integer;
constant STRIDE : type_array_STRIDE := (1, 0);
type type_array_FILTER_WIDTH is array (0 to 1) of integer;
constant FILTER_WIDTH : type_array_FILTER_WIDTH := (3, 0);
type type_array_IN_FEATURES is array (0 to 1) of integer;
constant IN_FEATURES : type_array_IN_FEATURES := (0, 0);
type type_array_OUT_FEATURES is array (0 to 1) of integer;
constant OUT_FEATURES : type_array_OUT_FEATURES := (0, 0);

end package op_generics_pkg;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package op_generics_pkg is

type type_array_TOTAL_OPS is array (0 to 0) of integer;
constant TOTAL_OPS : type_array_TOTAL_OPS := (14400);
type type_array_X_SIZE is array (0 to 0) of integer;
constant X_SIZE : type_array_X_SIZE := (122);
type type_array_CONVS_PER_LINE is array (0 to 0) of integer;
constant CONVS_PER_LINE : type_array_CONVS_PER_LINE := (120);
type type_array_N_CHANNEL is array (0 to 0) of integer;
constant N_CHANNEL : type_array_N_CHANNEL := (1);
type type_array_N_FILTER is array (0 to 0) of integer;
constant N_FILTER : type_array_N_FILTER := (1);
type type_array_STRIDE is array (0 to 0) of integer;
constant STRIDE : type_array_STRIDE := (1);
type type_array_FILTER_WIDTH is array (0 to 0) of integer;
constant FILTER_WIDTH : type_array_FILTER_WIDTH := (3);
type type_array_IN_FEATURES is array (0 to 0) of integer;
constant IN_FEATURES : type_array_IN_FEATURES := (14884);
type type_array_OUT_FEATURES is array (0 to 0) of integer;
constant OUT_FEATURES : type_array_OUT_FEATURES := (14400);

end package op_generics_pkg;

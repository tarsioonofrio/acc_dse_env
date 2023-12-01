library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


package common_generics_pkg is

constant OP_TYPE: string := "CCCL";
constant SHIFT: integer := 8;
constant DATAFLOW_TYPE: string := "ws";
constant ARRAY_TYPE: string := "syst2d";
constant MEM_SIZE: integer := 16;
constant MAX_MEM_SIZE: integer := 36;
constant INPUT_SIZE: integer := 16;
constant CARRY_SIZE: integer := 4;
constant LAT: integer := 2;
constant DEVICE: string := "7SERIES";

end package common_generics_pkg;

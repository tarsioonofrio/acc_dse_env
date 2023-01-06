library ieee;
library work;

use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;


package config_package is
    type type_config_logic is record
    --N_FILTER
    n_filter : std_logic_vector({LOG_N_FILTER} downto 0);
    --N_CHANNEL
    n_channel : std_logic_vector({LOG_N_CHANNEL} downto 0);
    --X_SIZE
    x_size : std_logic_vector({LOG_X_SIZE} downto 0);
    --X_SIZE*X_SIZE
    x_size_x_size : std_logic_vector({LOG_X_SIZE_X_SIZE} downto 0);
    --CONVS_PER_LINE
    convs_per_line: std_logic_vector({LOG_CONVS_PER_LINE} downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE
    convs_per_line_convs_per_line: std_logic_vector({LOG_CONVS_PER_LINE_CONVS_PER_LINE} downto 0);
    --(CONVS_PER_LINE*CONVS_PER_LINE)+1
    convs_per_line_convs_per_line_1: std_logic_vector({LOG_CONVS_PER_LINE_CONVS_PER_LINE_1} downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL
    convs_per_line_convs_per_line_n_channel: std_logic_vector({LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL} downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE*(N_CHANNEL-1)
    convs_per_line_convs_per_line_n_channel_1: std_logic_vector({LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1} downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER
    convs_per_line_convs_per_line_n_channel_n_filter : std_logic_vector ({LOG_CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER} downto 0);
    --INPUT_SIZE
    --input_size : std_logic_vector(log2ceil(INPUT_SIZE) downto 0);
    --CARRY_SIZE
    --carry_size : std_logic_vector(log2ceil(CARRY_SIZE) downto 0);
    --FILTER_WIDTH
    --filter_width : std_logic_vector({LOG_FILTER_WIDTH} downto 0);
    --FILTER_WIDTH*FILTER_WIDTH
    --filter_width_filter_width : std_logic_vector({LOG_FILTER_WIDTH_FILTER_WIDTH} downto 0);
    --(FILTER_WIDTH*FILTER_WIDTH)-1
    --filter_width_filter_width_1: std_logic_vector({LOG_FILTER_WIDTH_FILTER_WIDTH_1} downto 0);
  end record type_config_logic;

  --constant type_config_logic_init: type_config_logic := (
  --  n_filter => (others => '0'),
  --  convs_per_line_convs_per_line_n_channel_n_filter => (others => '0')
  --  );

  type type_config_integer is record
    n_filter : integer range 0 to {N_FILTER};

    n_channel : integer range 0 to {N_CHANNEL};

    x_size : integer range 0 to {X_SIZE};

    x_size_x_size : integer range 0 to {X_SIZE_X_SIZE};

    convs_per_line: integer range 0 to {CONVS_PER_LINE};

    convs_per_line_convs_per_line: integer range 0 to {CONVS_PER_LINE_CONVS_PER_LINE};

    convs_per_line_convs_per_line_1: integer range 0 to {CONVS_PER_LINE_CONVS_PER_LINE_1};

    convs_per_line_convs_per_line_n_channel: integer range 0 to {CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL};

    convs_per_line_convs_per_line_n_channel_1: integer range 0 to {CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_1};

    convs_per_line_convs_per_line_n_channel_n_filter : integer range 0 to {CONVS_PER_LINE_CONVS_PER_LINE_N_CHANNEL_N_FILTER};

    --input_size : integer range 0 to INPUT_SIZE;
    --carry_size : integer range 0 to CARRY_SIZE;
    --filter_width : integer range 0 to {FILTER_WIDTH};
    --filter_width_filter_width : integer range 0 to {FILTER_WIDTH_FILTER_WIDTH};
    --filter_width_filter_width_1: integer range 0 to {FILTER_WIDTH_FILTER_WIDTH_1};
    end record type_config_integer;

  --constant type_config_integer_init: type_config_integer := (
  --  n_filter => 0,
  --  convs_per_line_convs_per_line_n_channel_n_filter => 0
  --  );


  --function convert_config_logic_integer(config_logic : type_config_logic) return type_config_integer;

end package config_package;


package body config_package is

function convert_config_logic_integer(config_logic : type_config_logic) return type_config_integer is
    variable config_integer : type_config_integer;
begin
    config_integer.n_filter := conv_integer(unsigned(config_logic.n_filter));
    config_integer.convs_per_line_convs_per_line_n_channel_n_filter := conv_integer(unsigned(config_logic.convs_per_line_convs_per_line_n_channel_n_filter));
    return config_integer;
end function;


end package body config_package;
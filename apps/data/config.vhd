library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;

package config_pkg is
  type type_config_logic is record
    --n_filter       : std_logic_vector(log2ceil(N_FILTER) downto 0);
    --convs_per_line_convs_per_line_n_channel_n_filter : std_logic_vector (log2ceil(CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER) downto 0);
    n_filter       : std_logic_vector(4 downto 0);
    convs_per_line_convs_per_line_n_channel_n_filter : std_logic_vector (14 downto 0);

    --n_channel      : std_logic_vector(log2ceil(N_CHANNEL) downto 0);
    --x_size         : std_logic_vector(log2ceil(X_SIZE) downto 0);
    --filter_width   : std_logic_vector(log2ceil(FILTER_WIDTH) downto 0);
    --convs_per_line : std_logic_vector(log2ceil(CONVS_PER_LINE) downto 0);
    --input_size     : std_logic_vector(log2ceil(INPUT_SIZE) downto 0);
    --shift          : std_logic_vector(log2ceil(SHIFT) downto 0);
    --carry_size     : std_logic_vector(log2ceil(CARRY_SIZE) downto 0);
  end record type_config_logic;

constant type_config_logic_init: type_config_logic := (
  n_filter => (others => '0'),
  convs_per_line_convs_per_line_n_channel_n_filter => (others => '0')
  );

  type type_config_integer is record
    --n_filter       : std_logic_vector(log2ceil(N_FILTER) downto 0);
    --convs_per_line_convs_per_line_n_channel_n_filter : std_logic_vector (log2ceil(CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER) downto 0);
    n_filter       : integer range 0 to 16;
    convs_per_line_convs_per_line_n_channel_n_filter : integer range 0 to 10800;

    --n_channel      : std_logic_vector(log2ceil(N_CHANNEL) downto 0);
    --x_size         : std_logic_vector(log2ceil(X_SIZE) downto 0);
    --filter_width   : std_logic_vector(log2ceil(FILTER_WIDTH) downto 0);
    --convs_per_line : std_logic_vector(log2ceil(CONVS_PER_LINE) downto 0);
    --input_size     : std_logic_vector(log2ceil(INPUT_SIZE) downto 0);
    --shift          : std_logic_vector(log2ceil(SHIFT) downto 0);
    --carry_size     : std_logic_vector(log2ceil(CARRY_SIZE) downto 0);
  end record type_config_integer;

constant type_config_integer_init: type_config_integer := (
  n_filter => 0,
  convs_per_line_convs_per_line_n_channel_n_filter => 0
  );

end package config_pkg;


package body util_pkg is

function convert_config_logic_integer(config_logic : type_config_logic) return type_config_integer is
    variable config_integer : type_config_integer;
begin
    config_integer.n_filter <= conv_integer(config_logic.n_filter);
    config_integer.convs_per_line_convs_per_line_n_channel_n_filter <= conv_integer(config_logic.convs_per_line_convs_per_line_n_channel_n_filter);
    return config_integer;
end function;

end package body util_pkg;
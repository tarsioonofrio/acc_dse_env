library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;

package config_package is
  type type_config_logic is record
    --N_FILTER
    n_filter : std_logic_vector(4 downto 0);
    --N_CHANNEL
    n_channel : std_logic_vector(2 downto 0);
    --X_SIZE
    x_size : std_logic_vector(6 downto 0);
    --X_SIZE*X_SIZE
    x_size_x_size : std_logic_vector(11 downto 0);
    --FILTER_WIDTH
    --filter_width : std_logic_vector(1 downto 0);
    --FILTER_WIDTH*FILTER_WIDTH
    --filter_width_filter_width : std_logic_vector(4 downto 0);
    --CONVS_PER_LINE
    convs_per_line: std_logic_vector(3 downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE
    convs_per_line_convs_per_line: std_logic_vector(7 downto 0);

    --INPUT_SIZE=16
    input_size : std_logic_vector(4 downto 0);
    --CARRY_SIZE=4
    carry_size : std_logic_vector(3 downto 0);



    --CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL
    convs_per_line_convs_per_line_n_channel: std_logic_vector(10 downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE*(N_CHANNEL-1)
    convs_per_line_convs_per_line_n_channel_1: std_logic_vector(9 downto 0);
    --CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER
    convs_per_line_convs_per_line_n_channel_n_filter : std_logic_vector (14 downto 0);
  end record type_config_logic;

  --constant type_config_logic_init: type_config_logic := (
  --  n_filter => (others => '0'),
  --  convs_per_line_convs_per_line_n_channel_n_filter => (others => '0')
  --  );

  type type_config_integer is record
    n_filter       : integer range 0 to 16;

    n_channel       : integer range 0 to 3;

    x_size : integer range 0 to 32;

    x_size_x_size : integer range 0 to 1024;

    convs_per_line: integer range 0 to 15;

    convs_per_line_convs_per_line: integer range 0 to 225;

    input_size : integer range 0 to 16;

    carry_size : integer range 0 to 4;



    convs_per_line_convs_per_line_n_channel: integer range 0 to 675;

    convs_per_line_convs_per_line_n_channel_1: integer range 0 to 450;

    convs_per_line_convs_per_line_n_channel_n_filter : integer range 0 to 10800;

      --n_channel      : std_logic_vector(log2ceil(N_CHANNEL) downto 0);
      --x_size         : std_logic_vector(log2ceil(X_SIZE) downto 0);
      --filter_width   : std_logic_vector(log2ceil(FILTER_WIDTH) downto 0);
      --convs_per_line : std_logic_vector(log2ceil(CONVS_PER_LINE) downto 0);
      --input_size     : std_logic_vector(log2ceil(INPUT_SIZE) downto 0);
      --shift          : std_logic_vector(log2ceil(SHIFT) downto 0);
      --carry_size     : std_logic_vector(log2ceil(CARRY_SIZE) downto 0);
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
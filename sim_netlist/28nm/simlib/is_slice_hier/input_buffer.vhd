library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity input_buffer is
  generic (N_FILTER     : integer := 16;
           N_CHANNEL    : integer := 3;
           FILTER_WIDTH : integer := 3;
           INPUT_SIZE   : integer := 8;
           MEM_SIZE     : integer := 12
           );
  port (clock : in std_logic;
        reset : in std_logic;

        read_bias    : in std_logic;
        read_weights : in std_logic;
        inmem_valid  : in std_logic;


        inmem_value : in std_logic_vector((INPUT_SIZE*2)-1 downto 0);

        bias_idx : in std_logic_vector(MEM_SIZE-1 downto 0);

        weights_idx0 : in std_logic_vector(MEM_SIZE-1 downto 0);
        weights_idx1 : in std_logic_vector(MEM_SIZE-1 downto 0);
        weights_idx2 : in std_logic_vector(MEM_SIZE-1 downto 0);

        mem_bias_value : out std_logic_vector((INPUT_SIZE*2)-1 downto 0);

        mem_weights_value0 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
        mem_weights_value1 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
        mem_weights_value2 : out std_logic_vector((INPUT_SIZE)-1 downto 0);

        weight_x : out std_logic_vector(MEM_SIZE-1 downto 0);
        bias_x   : out std_logic_vector(MEM_SIZE-1 downto 0)


        );
end input_buffer;

architecture a1 of input_buffer is

--type bias_3x3 is array (0 to N_FILTER-1) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  type bias_3x3 is array (0 to N_FILTER-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal mem_bias : bias_3x3;

  type weights_3x3 is array (0 to (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER)-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal mem_weights : weights_3x3;

  signal weight_x_signal, bias_x_signal : std_logic_vector(MEM_SIZE-1 downto 0);

begin

  ----------------------------------------------------------------------------
  -- menage bias
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      bias_x_signal <= (others => '0');
      mem_bias      <= (others => (others => '0'));

    elsif rising_edge(clock) then

      if read_bias = '1' and bias_x_signal < N_FILTER and inmem_valid = '1' then
        mem_bias(conv_integer(bias_x_signal)) <= inmem_value;
        bias_x_signal                         <= bias_x_signal + '1';
      end if;

    end if;
  end process;

  ----------------------------------------------------------------------------
  -- manage weights
  ----------------------------------------------------------------------------  
  process(reset, clock)
  begin
    if reset = '1' then
      weight_x_signal <= (others => '0');
      mem_weights     <= (others => (others => '0'));
    elsif rising_edge(clock) then

      if read_weights = '1' and inmem_valid = '1' and weight_x_signal < (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
        mem_weights(conv_integer(weight_x_signal)) <= inmem_value;
        weight_x_signal                            <= weight_x_signal + 1;
      end if;

    end if;
  end process;

  mem_bias_value <= mem_bias(conv_integer(bias_idx));

  mem_weights_value0 <= mem_weights(conv_integer(weights_idx0))(INPUT_SIZE-1 downto 0);
  mem_weights_value1 <= mem_weights(conv_integer(weights_idx1))(INPUT_SIZE-1 downto 0);
  mem_weights_value2 <= mem_weights(conv_integer(weights_idx2))(INPUT_SIZE-1 downto 0);

  weight_x <= weight_x_signal;
  bias_x   <= bias_x_signal;

end a1;

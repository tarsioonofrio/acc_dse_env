library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.CONV_STD_LOGIC_VECTOR;

entity convolution is
  generic (N_FILTER       : integer := 16;
           N_CHANNEL      : integer := 3;
           STRIDE         : integer := 2;
           X_SIZE         : integer := 32;
           FILTER_WIDTH   : integer := 3;
           CONVS_PER_LINE : integer := 15;
           MEM_SIZE       : integer := 12;
           INPUT_SIZE     : integer := 8;
           SHIFT          : integer := 4;
           CARRY_SIZE     : integer := 4
           );
  port (clock : in std_logic;
        reset : in std_logic;

        -- Accelerator interface
        start_conv : in  std_logic;
        end_conv   : out std_logic;
        debug      : out std_logic;

        -- Input memory interface
        inmem_valid   : in  std_logic;
        inmem_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);  -- value from feature map memory
        inmem_address : out std_logic_vector(MEM_SIZE-1 downto 0);  -- feature map address
        inmem_ce      : out std_logic;

        -- Ofmap memory interface
        ofmap_valid   : in  std_logic;
        pixel_in      : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        pixel_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
        ofmap_we      : out std_logic;
        ofmap_ce      : out std_logic

        );
end entity convolution;

architecture a1 of convolution is

  signal mem_weights_value0_s, mem_weights_value1_s, mem_weights_value2_s                 : std_logic_vector(INPUT_SIZE-1 downto 0);
  signal mem_bias_value_s                                                                 : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal weight_x_s, bias_x_s, weights_idx0_s, weights_idx1_s, weights_idx2_s, bias_idx_s : std_logic_vector(MEM_SIZE-1 downto 0);
  signal read_bias_s, read_weights_s                                                      : std_logic;

begin

  syst2d : entity work.syst2d
    port map(clock         => clock,
             reset         => reset,
             start_conv    => start_conv,
             end_conv      => end_conv,
             debug         => debug,
             inmem_valid   => inmem_valid,
             inmem_value   => inmem_value,
             inmem_address => inmem_address,
             inmem_ce      => inmem_ce,
             ofmap_valid   => ofmap_valid,
             pixel_in      => pixel_in,
             pixel_out     => pixel_out,
             ofmap_address => ofmap_address,
             ofmap_we      => ofmap_we,
             ofmap_ce      => ofmap_ce,

             mem_weights_value0 => mem_weights_value0_s,
             mem_weights_value1 => mem_weights_value1_s,
             mem_weights_value2 => mem_weights_value2_s,
             weight_x           => weight_x_s,
             bias_x             => bias_x_s,
             mem_bias_value     => mem_bias_value_s,

             read_bias_out    => read_bias_s,
             read_weights_out => read_weights_s,
             bias_idx_out     => bias_idx_s,
             weights_idx0_out => weights_idx0_s,
             weights_idx1_out => weights_idx1_s,
             weights_idx2_out => weights_idx2_s
             );

  input_buffer : entity work.input_buffer
    generic map(N_FILTER     => N_FILTER,
                N_CHANNEL    => N_CHANNEL,
                FILTER_WIDTH => FILTER_WIDTH,
                INPUT_SIZE   => INPUT_SIZE,
                MEM_SIZE     => MEM_SIZE
                )
    port map(clock              => clock,
             reset              => reset,
             read_bias          => read_bias_s,
             inmem_valid        => inmem_valid,
             read_weights       => read_weights_s,
             inmem_value        => inmem_value,
             bias_idx           => bias_idx_s,
             mem_bias_value     => mem_bias_value_s,
             weights_idx0       => weights_idx0_s,
             weights_idx1       => weights_idx1_s,
             weights_idx2       => weights_idx2_s,
             mem_weights_value0 => mem_weights_value0_s,
             mem_weights_value1 => mem_weights_value1_s,
             mem_weights_value2 => mem_weights_value2_s,
             weight_x           => weight_x_s,
             bias_x             => bias_x_s
             );

end a1;

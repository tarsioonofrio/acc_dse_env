library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

use work.config_package.all;
use work.util_package.all;


entity tb is
  generic (
    N_FILTER       : integer := 16;
    N_CHANNEL      : integer := 3;
    X_SIZE         : integer := 32;
    FILTER_WIDTH   : integer := 3;
    CONVS_PER_LINE : integer := 15;
    MEM_SIZE       : integer := 12;
    INPUT_SIZE     : integer := 8;
    CARRY_SIZE     : integer := 4;
    SHIFT          : integer := 8;
    LAT            : integer := 2;
    N_LAYER        : integer := 0;
    PATH           : string  := ""
  );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, end_conv, end_conv2, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_we, iwght_valid, ifmap_ce, ifmap_we, ifmap_valid : std_logic := '0';

  signal address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal value_out, value_in : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal config : type_config_logic;


  signal input_wght, input_map, gold, temp_arr : type_array_int := (others=> 0);
 

begin
  DUT : entity work.core
    generic map(
      N_FILTER       => N_FILTER,
      N_CHANNEL      => N_CHANNEL,
      X_SIZE         => X_SIZE,
      FILTER_WIDTH   => FILTER_WIDTH,
      CONVS_PER_LINE => CONVS_PER_LINE,
      MEM_SIZE       => MEM_SIZE,
      INPUT_SIZE     => INPUT_SIZE,
      SHIFT          => SHIFT,
      CARRY_SIZE     => CARRY_SIZE
      )
    port map(
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv,
      p_end_conv      => end_conv,
      p_debug         => debug,
      config          => config,

      p_iwght_ce      => iwght_ce,
      p_iwght_we      => iwght_we,
      p_iwght_valid   => iwght_valid,

      p_ifmap_ce      => ifmap_ce,
      p_ifmap_we      => ifmap_we,
      p_ifmap_valid   => ifmap_valid,

      p_ofmap_valid   => ofmap_valid,
      p_ofmap_we      => ofmap_we,
      p_ofmap_ce      => ofmap_ce,

      p_address       => address,
      p_value_in      => value_in,
      p_value_out     => value_out
      );

  clock <= not clock after 0.5 ns;

  process
    -- convolution counter
    variable cont_conv : integer := 0;
  begin
    -- Image input
    input_map <= read_data(PATH & "/0/ifmap_pkg.txt");

    for index in 0 to N_LAYER - 1 loop
      wait until rising_edge(clock);
      reset <= '1';
      input_wght <= read_data(PATH & "/" & integer'image(index) & "/iwght_pkg.txt");
      gold <= read_data(PATH & "/" & integer'image(index) & "/gold_pkg.txt");
      config <= read_config(PATH & "/" & integer'image(index) & "/config_pkg.txt");
      wait until rising_edge(clock);

      reset <= '0';
      iwght_ce <= '1';
      iwght_we <= '1';
      ifmap_ce <= '0';
      ifmap_we <= '0';
      for i in 0 to (conv_integer(unsigned(config.convs_per_line_convs_per_line_n_channel_n_filter)) + conv_integer(unsigned(config.n_filter))) loop
        address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
        value_in <= CONV_STD_LOGIC_VECTOR(input_wght(i), INPUT_SIZE*2);
        wait until rising_edge(clock);
      end loop;

      iwght_ce <= '0';
      iwght_we <= '0';
      ifmap_ce <= '1';
      ifmap_we <= '1';
      for i in 0 to (conv_integer(unsigned(config.x_size_x_size))*conv_integer(unsigned(config.n_channel))) loop
        address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
        value_in <= CONV_STD_LOGIC_VECTOR(input_map(i), INPUT_SIZE*2);
        wait until rising_edge(clock);
      end loop;

      iwght_ce <= '0';
      iwght_we <= '0';
      ifmap_ce <= '0';
      ifmap_we <= '0';
      start_conv <= '1';
      wait until rising_edge(clock);
      start_conv <= '0';
      wait until rising_edge(clock);
      wait until end_conv = '1';
      input_map <= (others => 0);
      wait until rising_edge(clock);

      for i in 0 to (conv_integer(unsigned(config.convs_per_line_convs_per_line))*conv_integer(unsigned(config.n_filter))) loop
        ofmap_ce <= '1';
        address <= CONV_STD_LOGIC_VECTOR(i, INPUT_SIZE);
        wait until rising_edge(ofmap_valid);
        input_map(i) <= conv_integer(unsigned(value_out));
          if value_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(address))), (INPUT_SIZE*2)) then
            report "end of simulation with error!";
            report "number of convolutions executed: " & integer'image(cont_conv);
            report "idx: " & integer'image(CONV_INTEGER(unsigned(address)));
            report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(address))));

            if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
              report "obtained value: " & integer'image(CONV_INTEGER(value_out(31 downto 0)));
            else
              report "obtained value: " & integer'image(CONV_INTEGER(value_out));
            end if;

            assert false severity failure;
          end if;
          cont_conv := cont_conv + 1;
      end loop;

      report "number of convolutions: " & integer'image(cont_conv);
      report "end of conv " & integer'image(index) & " without error!";

      ofmap_ce <= '0';  
    end loop;

    -- stop simulation
    report "end of simulation without error!" severity failure;
  end process;

end a1;
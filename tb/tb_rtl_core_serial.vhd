library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_textio.all;

use std.textio.all;

use work.config_package.all;
-- use work.iwght_package.all;
-- use work.ifmap_package.all;
use work.gold_package.all;
use work.util_package.all;


entity tb is
  generic (N_FILTER       : integer := 16;
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
           PATH           : string  := "";
           BRAM_NUM_IWGHT : integer := 2;
           BRAM_NUM_IFMAP : integer := 2;
           BRAM_NUM_GOLD  : integer := 2
           );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, debug : std_logic := '0';

  signal iwght_valid, ifmap_valid, ofmap_valid, ofmap_ce, ofmap_we, end_conv : std_logic := '0';

  signal address_in, address_out : std_logic_vector(MEM_SIZE-1 downto 0);

  signal value_in, value_out : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

  signal config : type_config_logic := read_config(PATH & "/config_pkg.txt");

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
      CARRY_SIZE     => CARRY_SIZE,
      IWGHT_PATH     => PATH & "/iwght.txt",
      IFMAP_PATH     => PATH & "/ifmap.txt",
      N_LAYER        => N_LAYER
 )
    port map(
      clock         => clock,
      reset         => reset,

      p_start_conv    => start_conv,
      p_end_conv      => end_conv,
      p_debug         => debug,
      config          => config,

      p_iwght_ce      => '0',
      p_iwght_we      => '0',
      p_iwght_valid   => iwght_valid,

      p_ifmap_ce      => '0',
      p_ifmap_we      => '0',
      p_ifmap_valid   => ifmap_valid,

      p_ofmap_we      => ofmap_we,
      p_ofmap_ce      => ofmap_ce,
      p_ofmap_valid   => ofmap_valid,

      p_address_in    => address_in,
      p_value_in      => value_in,
      p_address_out   => address_out,
      p_value_out     => value_out
      );

  OFMAP : entity work.memory
    generic map(
      ROM_PATH => "",
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ofmap_ce,
      wr_en    => ofmap_we,
      data_in  => value_out,
      address  => address_out,
      data_av  => ofmap_valid,
      data_out => value_in,
      n_read   => ofmap_n_read,
      n_write  => ofmap_n_write
      );


  clock <= not clock after 0.5 ns;

  reset <= '1', '0' after 2.5 ns;

  start_conv <= '0', '1' after 2.5 ns, '0' after 3.5 ns;


  process(clock)

  variable cont_conv : integer := 0;


  begin

    if clock'event and clock = '0' then
      if debug = '1' and cont_conv < (conv_integer(unsigned(config.convs_per_line_convs_per_line))*conv_integer(unsigned(config.n_filter))) then
        if value_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(address_out))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
          --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
          report "end of simulation with error!";
          report "number of convolutions executed: " & integer'image(cont_conv);
          report "idx: " & integer'image(CONV_INTEGER(unsigned(address_out)));
          report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(address_out))));

          if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
            report "obtained value: " & integer'image(CONV_INTEGER(value_out(31 downto 0)));
          else
            report "obtained value: " & integer'image(CONV_INTEGER(value_out));
          end if;

          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;

      elsif end_conv = '1' then
        report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
        report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
        report "number of convolutions: " & integer'image(cont_conv);
        report "end of simulation without error!" severity failure;
      end if;
    end if;

  end process;

end a1;

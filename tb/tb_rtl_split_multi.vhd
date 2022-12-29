library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_textio.all;

use std.textio.all;

use work.gold_package.all;


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
           LAT            : integer := 2
           );
end tb;

architecture a1 of tb is
  signal clock, reset, start_conv, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, iwght_ce, iwght_valid, ifmap_ce, ifmap_valid, end_conv : std_logic := '0';

  signal iwght_address, ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal iwght_value, ifmap_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal ofmap_out, ofmap_in : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal iwght_n_read, iwght_n_write, ifmap_n_read, ifmap_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

  signal conf_n_filter       : std_logic_vector (integer(ceil(log2(real(N_FILTER) + real(1)))) downto 0) := N_FILTER;
  signal conf_n_channel      : std_logic_vector (integer(ceil(log2(real(N_CHANNEL) + real(1)))) downto 0) := N_CHANNEL;
  signal conf_stride         : std_logic_vector (integer(ceil(log2(real(STRIDE) + real(1)))) downto 0) := STRIDE;
  signal conf_x_size         : std_logic_vector (integer(ceil(log2(real(X_SIZE) + real(1)))) downto 0) := X_SIZE;
  signal conf_filter_width   : std_logic_vector (integer(ceil(log2(real(FILTER_WIDTH) + real(1)))) downto 0) := FILTER_WIDTH;
  signal conf_convs_per_line : std_logic_vector (integer(ceil(log2(real(CONVS_PER_LINE) + real(1)))) downto 0) := CONVS_PER_LINE;
  signal conf_mem_size       : std_logic_vector (integer(ceil(log2(real(MEM_SIZE) + real(1)))) downto 0) := MEM_SIZE;
  signal conf_input_size     : std_logic_vector (integer(ceil(log2(real(INPUT_SIZE) + real(1)))) downto 0) := INPUT_SIZE;
  signal conf_shift          : std_logic_vector (integer(ceil(log2(real(SHIFT) + real(1)))) downto 0) := SHIFT;
  signal conf_carry_size     : std_logic_vector (integer(ceil(log2(real(CARRY_SIZE) + real(1)))) downto 0) := CARRY_SIZE;

begin

  IWGHT : entity work.memory
    generic map(
      ROM => "weight",
      INPUT_SIZE => INPUT_SIZE*2,
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => iwght_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => iwght_address,
      data_av  => iwght_valid,
      data_out => iwght_value,
      n_read   => iwght_n_read,
      n_write  => iwght_n_write
      );

  IFMAP : entity work.memory
    generic map(
      ROM => "map",
      INPUT_SIZE => INPUT_SIZE*2,
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ifmap_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => ifmap_address,
      data_av  => ifmap_valid,
      data_out => ifmap_value,
      n_read   => ifmap_n_read,
      n_write  => ifmap_n_write
      );

  OFMAP : entity work.memory
    generic map(
      ROM => "no",
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
      ADDRESS_SIZE => MEM_SIZE,
      DATA_AV_LATENCY => LAT
      )
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ofmap_ce,
      wr_en    => ofmap_we,
      data_in  => ofmap_out,
      address  => ofmap_address,
      data_av  => ofmap_valid,
      data_out => ofmap_in,
      n_read   => ofmap_n_read,
      n_write  => ofmap_n_write
      );

  DUT : entity work.convolution
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

      start_conv    => start_conv,
      end_conv      => end_conv,
      debug         => debug,

      conf_n_filter       => conf_n_filter,
      conf_n_channel      => conf_n_channel,
      conf_stride         => conf_stride,
      conf_x_size         => conf_x_size,
      conf_filter_width   => conf_filter_width,
      conf_convs_per_line => conf_convs_per_line,
      --conf_mem_size       => conf_mem_size,
      conf_input_size     => conf_input_size,
      conf_shift          => conf_shift,
      conf_carry_size     => conf_carry_size,

      iwght_valid   => iwght_valid,
      iwght_value   => iwght_value,
      iwght_address => iwght_address,
      iwght_ce      => iwght_ce,

      ifmap_valid   => ifmap_valid,
      ifmap_value   => ifmap_value,
      ifmap_address => ifmap_address,
      ifmap_ce      => ifmap_ce,

      ofmap_valid   => ofmap_valid,
      ofmap_in      => ofmap_in,
      ofmap_out     => ofmap_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

  clock <= not clock after 0.5 ns;

  reset <= '1', '0' after 2.5 ns;

  start_conv <= '0', '1' after 2.5 ns, '0' after 3.5 ns;

  process(clock)

    -- convolution counter
    variable cont_conv : integer := 0;

  begin

    if clock'event and clock = '0' then
      if debug = '1' and cont_conv < CONVS_PER_LINE*CONVS_PER_LINE*N_FILTER then
        if ofmap_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
          --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
          report "end of simulation with error!";
          report "number of convolutions executed: " & integer'image(cont_conv);
          report "idx: " & integer'image(CONV_INTEGER(unsigned(ofmap_address)));
          report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(ofmap_address))));

          if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)));
          else
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out));
          end if;

          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;

      elsif end_conv = '1' then
        report "number of iwght read: " & integer'image(CONV_INTEGER(unsigned(iwght_n_read)));
        report "number of iwght write: " & integer'image(CONV_INTEGER(unsigned(iwght_n_write)));
        report "number of ifmap read: " & integer'image(CONV_INTEGER(unsigned(ifmap_n_read)));
        report "number of ifmap write: " & integer'image(CONV_INTEGER(unsigned(ifmap_n_write)));
        report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
        report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
        report "number of convolutions: " & integer'image(cont_conv);
        report "end of simulation without error!" severity failure;
      end if;
    end if;

  end process;

end a1;

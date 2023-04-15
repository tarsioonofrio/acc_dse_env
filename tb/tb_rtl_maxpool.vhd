library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_textio.all;
use IEEE.math_real.all;

use std.textio.all;

use work.gold_package.all;
-- use work.config_package.all;


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
  signal clock, reset, start_pool, debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, ifmap_ce, ifmap_valid, end_pool : std_logic := '0';

  signal ifmap_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);

  signal ifmap_value : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal ofmap_out, ofmap_in : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal ifmap_n_read, ifmap_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

  -- signal config : type_config_logic;

begin

  IFMAP : entity work.memory
    generic map(
      ROM => "map",
      INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE),
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

  DUT : entity work.maxpool
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

      start_pool    => start_pool,
      end_pool      => end_pool,
      debug         => debug,
      -- config        => config,

      ifmap_valid   => ifmap_valid,
      ifmap_value   => ifmap_value(INPUT_SIZE*2-1 downto 0),
      ifmap_address => ifmap_address,
      ifmap_ce      => ifmap_ce,

      ofmap_valid   => ofmap_valid,
      ofmap_out     => ofmap_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

  -- config.n_filter <= CONV_STD_LOGIC_VECTOR(N_FILTER, config.n_filter'LENGTH);
  -- config.n_channel <= CONV_STD_LOGIC_VECTOR(N_CHANNEL, config.n_channel'LENGTH);
  -- config.x_size <= CONV_STD_LOGIC_VECTOR(X_SIZE, config.x_size'LENGTH);
  -- config.x_size_x_size <= CONV_STD_LOGIC_VECTOR(X_SIZE*X_SIZE, config.x_size_x_size'LENGTH);
  -- --config.filter_width <= CONV_STD_LOGIC_VECTOR(FILTER_WIDTH, config.filter_width'LENGTH);
  -- --config.filter_width_filter_width <= CONV_STD_LOGIC_VECTOR(FILTER_WIDTH*FILTER_WIDTH, config.filter_width_filter_width'LENGTH);
  -- --config.filter_width_filter_width_1 <= CONV_STD_LOGIC_VECTOR((FILTER_WIDTH*FILTER_WIDTH)-1, config.filter_width_filter_width_1'LENGTH);
  -- --config.input_size <= CONV_STD_LOGIC_VECTOR(INPUT_SIZE, config.input_size'LENGTH);
  -- --config.carry_size <= CONV_STD_LOGIC_VECTOR(CARRY_SIZE, config.carry_size'LENGTH);
  -- config.convs_per_line <= CONV_STD_LOGIC_VECTOR(CONVS_PER_LINE, config.convs_per_line'LENGTH);
  -- config.convs_per_line_convs_per_line <= CONV_STD_LOGIC_VECTOR(CONVS_PER_LINE*CONVS_PER_LINE, config.convs_per_line_convs_per_line'LENGTH);
  -- config.convs_per_line_convs_per_line_1 <= CONV_STD_LOGIC_VECTOR((CONVS_PER_LINE*CONVS_PER_LINE)+1, config.convs_per_line_convs_per_line_1'LENGTH);

  -- config.convs_per_line_convs_per_line_n_channel <= CONV_STD_LOGIC_VECTOR(CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL, config.convs_per_line_convs_per_line_n_channel'LENGTH);
  -- config.convs_per_line_convs_per_line_n_channel_1 <= CONV_STD_LOGIC_VECTOR(CONVS_PER_LINE*CONVS_PER_LINE*(N_CHANNEL-1), config.convs_per_line_convs_per_line_n_channel_1'LENGTH);
  -- config.convs_per_line_convs_per_line_n_channel_n_filter <= CONV_STD_LOGIC_VECTOR(CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER, config.convs_per_line_convs_per_line_n_channel_n_filter'LENGTH);

  clock <= not clock after 0.5 ns;

  reset <= '1', '0' after 2.5 ns;

  start_pool <= '0', '1' after 2.5 ns, '0' after 3.5 ns;

  process(clock)

    -- convolution counter
    variable cont_conv : integer := 0;

  begin

--     if clock'event and clock = '1' then
--       if iwght_valid = '1' then
--           report "iwght_value " &  integer'image(CONV_INTEGER(iwght_value(31 downto 0)));
--       end if;
--
--       if ifmap_valid = '1' then
--           report "ifmap_value " &  integer'image(CONV_INTEGER(ifmap_value(31 downto 0)));-- & " idx: " & integer'image(CONV_INTEGER(unsigned(ifmap_address)));
--       end if;
--       if ofmap_valid = '1' then
--           report "ofmap_out " & integer'image(CONV_INTEGER((ofmap_out(31 downto 0))));
--       end if;
--     end if;

    if clock'event and clock = '1' then
      if debug = '1' and cont_conv < CONVS_PER_LINE*CONVS_PER_LINE*N_FILTER then
        if ofmap_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
          --if ofmap_out(31 downto 0) /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))),(INPUT_SIZE*2)) then
          report "end of simulation with error!";
          report "number of convolutions executed: " & integer'image(cont_conv);
          report "idx: " & integer'image(CONV_INTEGER(unsigned(ofmap_address)));
          report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(ofmap_address(31 downto 0)))));

          if (INPUT_SIZE*2)+CARRY_SIZE > 32 then
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)));
          else
            report "obtained value: " & integer'image(CONV_INTEGER(ofmap_out(31 downto 0)));
          end if;

          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;

      elsif end_pool = '1' then
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
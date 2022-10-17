library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;
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
           LAT            : integer := 2;
           CLK_PERIOD     : time    := 1.0 ns;
           RST_TIME       : time    := 5.0 ns;
           RISE_START     : time    := 7.3 ns;
           FALL_START     : time    := 9.3 ns;
           IN_DELAY       : time    := 0.3 ns
           );
end tb;

architecture a1 of tb is
  signal inmem_value                                                      : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal inmem_address, ofmap_address                                     : std_logic_vector(MEM_SIZE-1 downto 0);
  signal clock, reset, start_conv, debug                                  : std_logic := '0';
  signal ofmap_valid, ofmap_ce, ofmap_we, inmem_ce, inmem_valid, end_conv : std_logic := '0';
  signal pixel_out, pixel_in                                              : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  signal inmem_n_read, inmem_n_write, ofmap_n_read, ofmap_n_write         : std_logic_vector(31 downto 0);

  signal inmem_valid_delay, ofmap_valid_delay : std_logic := '0';
  signal inmem_value_delay                    : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal pixel_in_delay                       : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

begin

  INMEM : entity work.memory
    generic map(ROM => "yes", INPUT_SIZE => INPUT_SIZE*2, ADDRESS_SIZE => MEM_SIZE, DATA_AV_LATENCY => LAT)
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => inmem_ce,
      wr_en    => '0',
      data_in  => (others => '0'),
      address  => inmem_address,
      data_av  => inmem_valid,
      data_out => inmem_value,

      n_read  => inmem_n_read,
      n_write => inmem_n_write
      );

  OFMAPMEM : entity work.memory
    generic map(ROM => "no", INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE), ADDRESS_SIZE => MEM_SIZE, DATA_AV_LATENCY => LAT)
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => ofmap_ce,
      wr_en    => ofmap_we,
      data_in  => pixel_out,
      address  => ofmap_address,
      data_av  => ofmap_valid,
      data_out => pixel_in,

      n_read  => ofmap_n_read,
      n_write => ofmap_n_write
      );

  DUT : entity work.convolution
    port map(
      clock => clock,
      reset => reset,

      start_conv => start_conv,
      end_conv   => end_conv,
      debug      => debug,

      inmem_valid   => inmem_valid_delay,
      inmem_value   => inmem_value_delay,
      inmem_address => inmem_address,
      inmem_ce      => inmem_ce,

      ofmap_valid   => ofmap_valid_delay,
      pixel_in      => pixel_in_delay,
      pixel_out     => pixel_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

  inmem_valid_delay <= inmem_valid after IN_DELAY;
  inmem_value_delay <= inmem_value after IN_DELAY;
  ofmap_valid_delay <= ofmap_valid after IN_DELAY;
  pixel_in_delay    <= pixel_in    after IN_DELAY;

  reset <= '1', '0' after RST_TIME;

  clock <= not clock after CLK_PERIOD;

  start_conv <= '0', '1' after RISE_START, '0' after FALL_START;

  process(clock)

    -- convolution counter
    variable cont_conv : integer := 0;

  begin

    if clock'event and clock = '0' then

      if debug = '1' and cont_conv < CONVS_PER_LINE*CONVS_PER_LINE*N_FILTER then
        if pixel_out /= CONV_STD_LOGIC_VECTOR(gold(CONV_INTEGER(unsigned(ofmap_address))), ((INPUT_SIZE*2)+CARRY_SIZE)) then
          report "end of simulation with error!";
          report "idx: " & integer'image(CONV_INTEGER(unsigned(ofmap_address)));
          report "expected value: " & integer'image(gold(CONV_INTEGER(unsigned(ofmap_address))));
          report "obtained value: " & integer'image(CONV_INTEGER(pixel_out));
          assert false severity failure;
        end if;
        cont_conv := cont_conv + 1;
      elsif end_conv = '1' then
        report "number of inmem read: " & integer'image(CONV_INTEGER(unsigned(inmem_n_read)));
        report "number of inmem write: " & integer'image(CONV_INTEGER(unsigned(inmem_n_write)));
        report "number of ofmap read: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_read)));
        report "number of ofmap write: " & integer'image(CONV_INTEGER(unsigned(ofmap_n_write)));
        report "number of convolutions: " & integer'image(cont_conv);
        report "end of simulation without error!" severity failure;
      end if;
    end if;

  end process;

end a1;

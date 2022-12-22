library ieee;
library std;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
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
  port (
    clock : in std_logic;
    reset : in std_logic;
    start_conv : in std_logic

    --wr_data: in std_logic_vector(7 downto 0);
    --wr_addr: in std_logic_vector(7 downto 0);
    --wr_enable: in std_logic;
    --rd_data: out std_logic_vector(7 downto 0);
    --rd_addr: in std_logic_vector(7 downto 0);
    --rd_enable: in std_logic;
    --done: out std_logic;
    --scl: out std_logic;
    --sda: inout std_logic
  );
end tb;

architecture tb of tb is
  signal inmem_value                  : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal inmem_address, ofmap_address : std_logic_vector(MEM_SIZE-1 downto 0);
  
  signal debug : std_logic := '0';

  signal ofmap_valid, ofmap_ce, ofmap_we, inmem_ce, inmem_valid, end_conv : std_logic := '0';

  signal pixel_out, pixel_in                                              : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal inmem_n_read, inmem_n_write, ofmap_n_read, ofmap_n_write : std_logic_vector(31 downto 0);

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
      clock => clock,
      reset => reset,

      start_conv => start_conv,
      end_conv   => end_conv,
      debug      => debug,

      inmem_valid   => inmem_valid,
      inmem_value   => inmem_value,
      inmem_address => inmem_address,
      inmem_ce      => inmem_ce,

      ofmap_valid   => ofmap_valid,
      pixel_in      => pixel_in,
      pixel_out     => pixel_out,
      ofmap_address => ofmap_address,
      ofmap_we      => ofmap_we,
      ofmap_ce      => ofmap_ce
      );

end tb;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity bram_wrapper is
    generic (
        DEVICE: string := "7SERIES";
        N_LAYER        : integer := 0
        );


  port (reset   : in std_logic;
        clock   : in std_logic;
        chip_en : in std_logic;
        wr_en   : in std_logic;
        data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
        address : in std_logic_vector(ADDRESS_SIZE-1 downto 0);

        data_av  : out std_logic;
        data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);

        n_read  : out std_logic_vector(31 downto 0);
        n_write : out std_logic_vector(31 downto 0)
        );
end bram_wrapper;

architecture a1 of bram_wrapper is

signal data_valid std_logic;

begin

  -- code to imitate data_av in simulation
  process(reset, clock)
  begin
    if reset = '1' then
        data_valid <= '0';
    elsif rising_edge(clock) then
        data_valid <= chip_en;
        data_av <= data_valid;
    end if;
  end process;

MEM_IFMAP_18K_LAYER0_ENTITY0 : if N_LAYER = 0 generate
  entity work.ifmap_18k_layer0_entity0
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY0;

MEM_IFMAP_18K_LAYER0_ENTITY1 : if N_LAYER = 1 generate
  entity work.ifmap_18k_layer0_entity1
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY1;

MEM_IFMAP_18K_LAYER0_ENTITY2 : if N_LAYER = 2 generate
  entity work.ifmap_18k_layer0_entity2
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY2;

MEM_IFMAP_18K_LAYER0_ENTITY3 : if N_LAYER = 3 generate
  entity work.ifmap_18k_layer0_entity3
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY3;

MEM_IFMAP_18K_LAYER0_ENTITY4 : if N_LAYER = 4 generate
  entity work.ifmap_18k_layer0_entity4
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY4;

MEM_IFMAP_18K_LAYER0_ENTITY5 : if N_LAYER = 5 generate
  entity work.ifmap_18k_layer0_entity5
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY5;

MEM_IFMAP_18K_LAYER0_ENTITY6 : if N_LAYER = 6 generate
  entity work.ifmap_18k_layer0_entity6
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY6;

MEM_IFMAP_18K_LAYER0_ENTITY7 : if N_LAYER = 7 generate
  entity work.ifmap_18k_layer0_entity7
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY7;

MEM_IFMAP_18K_LAYER0_ENTITY8 : if N_LAYER = 8 generate
  entity work.ifmap_18k_layer0_entity8
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY8;

MEM_IFMAP_18K_LAYER0_ENTITY9 : if N_LAYER = 9 generate
  entity work.ifmap_18k_layer0_entity9
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY9;

MEM_IFMAP_18K_LAYER0_ENTITY10 : if N_LAYER = 10 generate
  entity work.ifmap_18k_layer0_entity10
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY10;

MEM_IFMAP_18K_LAYER0_ENTITY11 : if N_LAYER = 11 generate
  entity work.ifmap_18k_layer0_entity11
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY11;

MEM_IFMAP_18K_LAYER0_ENTITY12 : if N_LAYER = 12 generate
  entity work.ifmap_18k_layer0_entity12
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY12;

MEM_IFMAP_18K_LAYER0_ENTITY13 : if N_LAYER = 13 generate
  entity work.ifmap_18k_layer0_entity13
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY13;

MEM_IFMAP_18K_LAYER0_ENTITY14 : if N_LAYER = 14 generate
  entity work.ifmap_18k_layer0_entity14
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY14;

MEM_IFMAP_18K_LAYER0_ENTITY15 : if N_LAYER = 15 generate
  entity work.ifmap_18k_layer0_entity15
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY15;

MEM_IFMAP_18K_LAYER0_ENTITY16 : if N_LAYER = 16 generate
  entity work.ifmap_18k_layer0_entity16
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY16;

MEM_IFMAP_18K_LAYER0_ENTITY17 : if N_LAYER = 17 generate
  entity work.ifmap_18k_layer0_entity17
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY17;

MEM_IFMAP_18K_LAYER0_ENTITY18 : if N_LAYER = 18 generate
  entity work.ifmap_18k_layer0_entity18
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY18;

MEM_IFMAP_18K_LAYER0_ENTITY19 : if N_LAYER = 19 generate
  entity work.ifmap_18k_layer0_entity19
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY19;

MEM_IFMAP_18K_LAYER0_ENTITY20 : if N_LAYER = 20 generate
  entity work.ifmap_18k_layer0_entity20
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY20;

MEM_IFMAP_18K_LAYER0_ENTITY21 : if N_LAYER = 21 generate
  entity work.ifmap_18k_layer0_entity21
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY21;

MEM_IFMAP_18K_LAYER0_ENTITY22 : if N_LAYER = 22 generate
  entity work.ifmap_18k_layer0_entity22
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY22;

MEM_IFMAP_18K_LAYER0_ENTITY23 : if N_LAYER = 23 generate
  entity work.ifmap_18k_layer0_entity23
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY23;

MEM_IFMAP_18K_LAYER0_ENTITY24 : if N_LAYER = 24 generate
  entity work.ifmap_18k_layer0_entity24
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY24;

MEM_IFMAP_18K_LAYER0_ENTITY25 : if N_LAYER = 25 generate
  entity work.ifmap_18k_layer0_entity25
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY25;

MEM_IFMAP_18K_LAYER0_ENTITY26 : if N_LAYER = 26 generate
  entity work.ifmap_18k_layer0_entity26
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY26;

MEM_IFMAP_18K_LAYER0_ENTITY27 : if N_LAYER = 27 generate
  entity work.ifmap_18k_layer0_entity27
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY27;

MEM_IFMAP_18K_LAYER0_ENTITY28 : if N_LAYER = 28 generate
  entity work.ifmap_18k_layer0_entity28
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY28;

MEM_IFMAP_18K_LAYER0_ENTITY29 : if N_LAYER = 29 generate
  entity work.ifmap_18k_layer0_entity29
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_18K_LAYER0_ENTITY29;


end a1;

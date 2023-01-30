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

MEM_IFMAP_36K_LAYER0_ENTITY0 : if N_LAYER = 0 generate
  entity work.ifmap_36k_layer0_entity0
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY0;

MEM_IFMAP_36K_LAYER0_ENTITY1 : if N_LAYER = 1 generate
  entity work.ifmap_36k_layer0_entity1
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY1;

MEM_IFMAP_36K_LAYER0_ENTITY2 : if N_LAYER = 2 generate
  entity work.ifmap_36k_layer0_entity2
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY2;

MEM_IFMAP_36K_LAYER0_ENTITY3 : if N_LAYER = 3 generate
  entity work.ifmap_36k_layer0_entity3
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY3;

MEM_IFMAP_36K_LAYER0_ENTITY4 : if N_LAYER = 4 generate
  entity work.ifmap_36k_layer0_entity4
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY4;

MEM_IFMAP_36K_LAYER0_ENTITY5 : if N_LAYER = 5 generate
  entity work.ifmap_36k_layer0_entity5
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY5;

MEM_IFMAP_36K_LAYER0_ENTITY6 : if N_LAYER = 6 generate
  entity work.ifmap_36k_layer0_entity6
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY6;

MEM_IFMAP_36K_LAYER0_ENTITY7 : if N_LAYER = 7 generate
  entity work.ifmap_36k_layer0_entity7
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY7;

MEM_IFMAP_36K_LAYER0_ENTITY8 : if N_LAYER = 8 generate
  entity work.ifmap_36k_layer0_entity8
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY8;

MEM_IFMAP_36K_LAYER0_ENTITY9 : if N_LAYER = 9 generate
  entity work.ifmap_36k_layer0_entity9
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY9;

MEM_IFMAP_36K_LAYER0_ENTITY10 : if N_LAYER = 10 generate
  entity work.ifmap_36k_layer0_entity10
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY10;

MEM_IFMAP_36K_LAYER0_ENTITY11 : if N_LAYER = 11 generate
  entity work.ifmap_36k_layer0_entity11
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY11;

MEM_IFMAP_36K_LAYER0_ENTITY12 : if N_LAYER = 12 generate
  entity work.ifmap_36k_layer0_entity12
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY12;

MEM_IFMAP_36K_LAYER0_ENTITY13 : if N_LAYER = 13 generate
  entity work.ifmap_36k_layer0_entity13
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY13;

MEM_IFMAP_36K_LAYER0_ENTITY14 : if N_LAYER = 14 generate
  entity work.ifmap_36k_layer0_entity14
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate MEM_IFMAP_36K_LAYER0_ENTITY14;


end a1;

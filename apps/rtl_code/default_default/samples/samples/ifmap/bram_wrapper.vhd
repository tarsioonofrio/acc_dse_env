library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity bram_wrapper is
  generic (INPUT_SIZE      : integer := 8;
           ADDRESS_SIZE    : integer := 12;
           DATA_AV_LATENCY : integer := 0;
           N_LAYER         : integer := 0;
           ROM_PATH        : string  := ""
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


begin

  MEM_IFMAP_36K_LAYER0_ENTITY0 :  if N_LAYER = 0 generate
  entity work.ifmap_36k_layer0_entity0
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY1 :  if N_LAYER = 1 generate
  entity work.ifmap_36k_layer0_entity1
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY2 :  if N_LAYER = 2 generate
  entity work.ifmap_36k_layer0_entity2
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY3 :  if N_LAYER = 3 generate
  entity work.ifmap_36k_layer0_entity3
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY4 :  if N_LAYER = 4 generate
  entity work.ifmap_36k_layer0_entity4
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY5 :  if N_LAYER = 5 generate
  entity work.ifmap_36k_layer0_entity5
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY6 :  if N_LAYER = 6 generate
  entity work.ifmap_36k_layer0_entity6
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY7 :  if N_LAYER = 7 generate
  entity work.ifmap_36k_layer0_entity7
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY8 :  if N_LAYER = 8 generate
  entity work.ifmap_36k_layer0_entity8
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY9 :  if N_LAYER = 9 generate
  entity work.ifmap_36k_layer0_entity9
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY10 :  if N_LAYER = 10 generate
  entity work.ifmap_36k_layer0_entity10
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY11 :  if N_LAYER = 11 generate
  entity work.ifmap_36k_layer0_entity11
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY12 :  if N_LAYER = 12 generate
  entity work.ifmap_36k_layer0_entity12
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY13 :  if N_LAYER = 13 generate
  entity work.ifmap_36k_layer0_entity13
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

MEM_IFMAP_36K_LAYER0_ENTITY14 :  if N_LAYER = 14 generate
  entity work.ifmap_36k_layer0_entity14
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );


end a1;

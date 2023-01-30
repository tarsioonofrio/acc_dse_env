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

MEM_IFMAP_36K_LAYER1_ENTITY0 : if N_LAYER = 0 generate
  entity work.ifmap_36k_layer1_entity0
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
end generate MEM_IFMAP_36K_LAYER1_ENTITY0;

MEM_IFMAP_36K_LAYER1_ENTITY1 : if N_LAYER = 1 generate
  entity work.ifmap_36k_layer1_entity1
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
end generate MEM_IFMAP_36K_LAYER1_ENTITY1;


end a1;

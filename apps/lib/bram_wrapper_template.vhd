library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity memory is
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
end memory;

architecture a1 of memory is


begin

  {code}

end a1;

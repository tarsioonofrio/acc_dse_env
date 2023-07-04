library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.config_package.all;
use work.util_package.all;


entity tb is
  generic (
    BRAM_NAME       : string  := "default";
--     BRAM_NAME       : string  := "ifmap_layer0";
--     BRAM_NAME       : string  := "iwght_layer0";
--     PATH_DATA       : string  := "/layer/0/ifmap.txt";
    PATH_DATA       : string  := "/layer/0/iwght.txt";
    INPUT_SIZE : integer := 8;
    MEM_SIZE   : integer := 12 ;
    PATH       : string  := "";
    DEVICE     : string  := "7SERIES";
    MAX_MEM_SIZE : integer := 16;
    BRAM_NAME_LAYER   : integer := 0;
    BRAM_NUM   : integer :=371001;
    BRAM_ADDR  : integer := 9
  );
end tb;


architecture a1 of tb is

signal reset    : std_logic := '0';
signal clock    : std_logic := '0';
signal nclock   : std_logic := '0';
signal chip_en  : std_logic := '0';
signal wr_en    : std_logic := '0';
signal valid    : std_logic := '0';
signal address  : std_logic_vector(MEM_SIZE-1 downto 0);
signal data_in  : std_logic_vector(MAX_MEM_SIZE-1 downto 0);
signal data_out : std_logic_vector(MAX_MEM_SIZE-1 downto 0);
signal data     : type_array_int := read_data(PATH & PATH_DATA);
signal n_read   : std_logic_vector(31 downto 0);
signal n_write  : std_logic_vector(31 downto 0);

constant const_bram_num : integer := (integer(BRAM_NUM mod  10 ** (2 * (BRAM_NAME_LAYER + 1)) / 10 ** (2*BRAM_NAME_LAYER)));

begin

  MEM : entity work.memory
  generic map(
    BRAM_NAME => BRAM_NAME,
    BRAM_NUM => const_bram_num,
    INPUT_SIZE => MAX_MEM_SIZE,
    ADDRESS_SIZE => MEM_SIZE,
    BRAM_ADDR => BRAM_ADDR
    )
  port map(
    clock    => clock,
    reset    => reset,
    chip_en  => chip_en,
    wr_en    => wr_en,
    data_in  => data_in,
    address  => address,
    data_out => data_out,
    data_av  => valid,
    n_read   => n_read,
    n_write  => n_write
    );

  clock <= not clock after 0.5 ns;
  nclock <= not clock;

  process

  begin

    report "*** start";
    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';
    report "*** reset";

    -- write stage
    if BRAM_NAME = "default" then
        chip_en <= '1';
        wr_en <= '1';
        for i in 0 to ((const_bram_num)*(2**BRAM_ADDR)-1)  loop
          address <= std_logic_vector(to_unsigned(i, MEM_SIZE));
          data_in <= std_logic_vector(to_signed(data(i), MAX_MEM_SIZE));
          wait until rising_edge(clock);
        end loop;

        chip_en <= '0';
        wr_en <= '0';
        wait until rising_edge(clock);
    end if;

    -- read stage
    chip_en <= '1';
    wr_en <= '0';
    for i in 0 to ((const_bram_num)*(2**BRAM_ADDR)-1)  loop
      address <= std_logic_vector(to_unsigned(i, MEM_SIZE));
      wait until rising_edge(clock);
      -- wait until rising_edge(clock);
--       report "input: " & integer'image(data(i)) & ", " & "output: " & integer'image(to_integer(signed(data_out)));
      if data(i) /= to_integer(signed(data_out)) then
        assert false report "end of simulation with error!"  severity failure;
      end if;
    end loop;

    chip_en <= '0';
    wr_en <= '0';
    wait until rising_edge(clock);
    wait until rising_edge(clock);

    report "end of simulation without error!" severity failure;

  end process;
end a1;
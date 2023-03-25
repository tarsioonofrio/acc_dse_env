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
    BRAM_NAME  : string  := "default"; -- "default", "ifmap_layer0", "iwght_layer0"
    PATH_DATA  : string  := "/layer/0/ifmap.txt";
    INPUT_SIZE : integer := 8;
    MEM_SIZE   : integer := 12 ;
    PATH       : string  := "";
    DEVICE     : string  := "7SERIES";
    BRAM_NUM   : integer := 9;
    BRAM_SIZE  : integer := 16;
    MAX_MEM_SIZE : integer := 16;
    BRAM_ADDR  : integer := 11
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


begin

  MEM : entity work.memory
  generic map(
    BRAM_NAME => BRAM_NAME,
    BRAM_NUM => BRAM_NUM,
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
        for i in 0 to (BRAM_NUM*((BRAM_ADDR**2)-1)) loop
          address <= std_logic_vector(to_unsigned(i, MEM_SIZE));
          data_in <= std_logic_vector(to_unsigned(data(i), MAX_MEM_SIZE));
          wait until rising_edge(clock);
        end loop;

        chip_en <= '0';
        wr_en <= '0';
        data_in <= std_logic_vector(to_unsigned(0, MAX_MEM_SIZE));
        wait until rising_edge(clock);
        wait until rising_edge(clock);
    end if;

    -- read stage
    chip_en <= '1';
    wr_en <= '0';
    for i in 0 to (BRAM_NUM*((BRAM_ADDR**2)-1)) loop
      address <= std_logic_vector(to_unsigned(i, MEM_SIZE));
      wait until rising_edge(clock);
      -- wait until rising_edge(clock);
      report "data: " & integer'image(data(i)) & ", " & "data_out: " & integer'image(to_integer(signed(data_out)));
    end loop;

    chip_en <= '0';
    wr_en <= '0';
    wait until rising_edge(clock);
    wait until rising_edge(clock);

    report "end of simulation without error!" severity failure;

  end process;
end a1;

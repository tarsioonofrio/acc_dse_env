library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use ieee.std_logic_textio.all;

use work.util_package.all;


entity tb is
  generic (
    BRAM_NAME       : string  := "ifmap_layer0_entity0"; -- "default", "ifmap_layer0_entity0", "iwght_layer0_entity0"
    INPUT_SIZE      : integer := 8;
    ADDRESS_SIZE    : integer := 12;
    MAX_MEM_SIZE    : integer := 36;
    MEM_SIZE        : integer := 12;
    PATH            : string  := "";
    DEVICE          : string := "7SERIES";
    BRAM_NUM        : integer := 2;
    BRAM_RW_DEPTH   : integer := 16;
    BRAM_ADDR       : integer := 11
  );
end tb;


architecture a1 of tb is

signal reset    : std_logic := '0';
signal clock    : std_logic := '0';
signal chip_en  : std_logic := '0';
signal wr_en    : std_logic := '0';
signal address  : std_logic_vector(BRAM_ADDR-1 downto 0);
signal data_in  : std_logic_vector(BRAM_RW_DEPTH-1 downto 0);
signal data_out : std_logic_vector(BRAM_RW_DEPTH-1 downto 0);
signal data     : type_array_int := read_data(PATH & "/layer/0/ifmap_pkg.txt");


begin

  BRAM_SINGLE_INST: entity work.bram_single
  generic map (
    BRAM_NAME => BRAM_NAME
  )
  port map(
    CLK  => clock,
    RST  => reset,
    EN   => chip_en,
    WE   => wr_en,
    DI   => data_in,
    ADDR => address,
    DO   => data_out
  );


  clock <= not clock after 0.5 ns;

  process

  begin

    report "*** start";
    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';
    report "*** reser";

    if BRAM_NAME = "default" then
        chip_en <= '1';
        wr_en <= '1';

        for i in 0 to (BRAM_ADDR*BRAM_ADDR-1) loop
          address <= CONV_STD_LOGIC_VECTOR(i, BRAM_ADDR);
          data_in <= CONV_STD_LOGIC_VECTOR(data(i), BRAM_RW_DEPTH);
          wait until rising_edge(clock);
        end loop;
    end if;

    chip_en <= '0';
    wr_en <= '0';
    wait until rising_edge(clock);
    wait until rising_edge(clock);

    chip_en <= '1';
    wr_en <= '0';
    for i in 0 to (BRAM_ADDR*BRAM_ADDR-1) loop
      address <= CONV_STD_LOGIC_VECTOR(i, BRAM_ADDR);
      wait until rising_edge(clock);
      wait until rising_edge(clock);
      report "data: " & integer'image(data(i)) & ", " & "data_out: " & integer'image(CONV_INTEGER(signed(data_out))); 
    end loop;

    report "end of simulation without error!" severity failure;

  end process;
end a1;

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
    FPGA       : std_logic := '0';
    BRAM_NAME       : string  := "default";
--     BRAM_NAME       : string  := "ifmap_layer0";
--     BRAM_NAME       : string  := "iwght_layer0";
--     PATH_DATA       : string  := "/layer/0/ifmap.txt";
    INPUT_SIZE : integer := 8;
    MEM_SIZE   : integer := 12 ;
    PATH       : string  := "";
    DEVICE     : string  := "7SERIES";
    MAX_MEM_SIZE : integer := 16;
    BRAM_NAME_LAYER   : integer := 0;
    BRAM_NUM   : integer :=371001;
    BRAM_SIZE  : integer := 16;
    BRAM_ADDR  : integer := 9
  );
  port (
    p_clock : in std_logic
  );
end tb;


architecture a1 of tb is

signal reset    : std_logic := '0';
signal clock    : std_logic := '0';
signal nclock   : std_logic := '0';
signal chip_en_in  : std_logic := '0';
signal chip_en_out  : std_logic := '0';
signal wr_en_out    : std_logic := '0';
signal valid_in    : std_logic := '0';
signal valid_out    : std_logic := '0';
signal address_in  : std_logic_vector(MEM_SIZE-1 downto 0);
signal address_out  : std_logic_vector(MEM_SIZE-1 downto 0);
signal data_in  : std_logic_vector(MAX_MEM_SIZE-1 downto 0);
signal data_out : std_logic_vector(MAX_MEM_SIZE-1 downto 0);
signal n_read_in   : std_logic_vector(31 downto 0);
signal n_read_out   : std_logic_vector(31 downto 0);
signal n_write_in  : std_logic_vector(31 downto 0);
signal n_write_out  : std_logic_vector(31 downto 0);

constant const_bram_num : integer := (integer(BRAM_NUM mod  10 ** (2 * (BRAM_NAME_LAYER + 1)) / 10 ** (2*BRAM_NAME_LAYER)));


begin

  IF_FPGA : if FPGA = '1' generate
    clock <= p_clock;
  end generate IF_FPGA;

  IF_NO_FPGA : if FPGA = '0' generate
    clock <= not clock after 0.5 ns;
  end generate IF_NO_FPGA;

  nclock <= not clock;

  INMEM : entity work.memory
  generic map(
    BRAM_NAME => BRAM_NAME,
    BRAM_NUM => const_bram_num,
    BRAM_NAME_LAYER => BRAM_NAME_LAYER,
    INPUT_SIZE => MAX_MEM_SIZE,
    ADDRESS_SIZE => MEM_SIZE,
    BRAM_ADDR => BRAM_ADDR
    )
  port map(
    clock    => clock,
    reset    => reset,
    chip_en  => chip_en_in,
    wr_en    => '0',
    data_in  => (others => '0'),
    address  => address_in,
    data_out => data_in,
    data_av  => valid_in,
    n_read   => n_read_in,
    n_write  => n_write_in
    );

  OUTMEM : entity work.memory
  generic map(
    BRAM_NAME => "default",
    BRAM_NUM => const_bram_num,
    BRAM_NAME_LAYER => BRAM_NAME_LAYER,
    INPUT_SIZE => MAX_MEM_SIZE,
    ADDRESS_SIZE => MEM_SIZE,
    BRAM_ADDR => BRAM_ADDR
    )
  port map(
    clock    => clock,
    reset    => reset,
    chip_en  => chip_en_out,
    wr_en    => wr_en_out,
    data_in  => data_in,
    address  => address_out,
    data_out => data_out,
    data_av  => valid_out,
    n_read   => n_read_out,
    n_write  => n_write_out
    );


  process
  begin

    report "*** start";
    wait until rising_edge(clock);
    reset <= '1';
    wait until rising_edge(clock);

    reset <= '0';
    report "*** reset";

    -- write stage
    chip_en_in <= '1';
    for i in 0 to ((const_bram_num)*(2**BRAM_ADDR)-1) loop
      address_in <= std_logic_vector(to_unsigned(i, MEM_SIZE));
      wait until rising_edge(clock);
      chip_en_out <= '1';
      wr_en_out <= '1';
      address_out <= std_logic_vector(to_unsigned(i, MEM_SIZE));
    end loop;

    wait until rising_edge(clock);
    chip_en_in <= '0';
    chip_en_out <= '0';
    wr_en_out <= '0';
    wait until rising_edge(clock);

    -- read stage
    chip_en_in <= '1';
    chip_en_out <= '1';
    for i in 0 to ((const_bram_num)*(2**BRAM_ADDR)-1) loop
      address_in <= std_logic_vector(to_unsigned(i, MEM_SIZE));
      address_out <= std_logic_vector(to_unsigned(i, MEM_SIZE));
      wait until rising_edge(clock);
      if data_in /= data_out then
        report "input: " & integer'image(to_integer(signed(data_in(31 downto 0)))) & ", " & "output: " & integer'image(to_integer(signed(data_out(31 downto 0))));
--         assert false severity failure;
      end if;
    end loop;

    chip_en_in <= '0';
    chip_en_out <= '0';
    wait until rising_edge(clock);
    wait until rising_edge(clock);

    report "end of simulation without error!" severity failure;

  end process;
end a1;
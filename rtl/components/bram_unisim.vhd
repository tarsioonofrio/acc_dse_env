library ieee;
use ieee.std_logic_1164.all;


library UNISIM;
use UNISIM.vcomponents.all;
library UNIMACRO;
use unimacro.Vcomponents.all;


-- BRAM_SINGLE_MACRO: Single Port RAM
--                    7 Series
-- Xilinx HDL Language Template, version 2021.2

-- Note -  This Unimacro model assumes the port directions to be "downto".
--         Simulation of this model with "to" in the port directions could lead to erroneous results.

---------------------------------------------------------------------
--  READ_WIDTH | BRAM_SIZE | READ Depth  | ADDR Width |            --
-- WRITE_WIDTH |           | WRITE Depth |            |  WE Width  --
-- ============|===========|=============|============|============--
--    37-72    |  "36Kb"   |      512    |    9-bit   |    8-bit   --
--    19-36    |  "36Kb"   |     1024    |   10-bit   |    4-bit   --
--    19-36    |  "18Kb"   |      512    |    9-bit   |    4-bit   --
--    10-18    |  "36Kb"   |     2048    |   11-bit   |    2-bit   --
--    10-18    |  "18Kb"   |     1024    |   10-bit   |    2-bit   --
--     5-9     |  "36Kb"   |     4096    |   12-bit   |    1-bit   --
--     5-9     |  "18Kb"   |     2048    |   11-bit   |    1-bit   --
--     3-4     |  "36Kb"   |     8192    |   13-bit   |    1-bit   --
--     3-4     |  "18Kb"   |     4096    |   12-bit   |    1-bit   --
--       2     |  "36Kb"   |    16384    |   14-bit   |    1-bit   --
--       2     |  "18Kb"   |     8192    |   13-bit   |    1-bit   --
--       1     |  "36Kb"   |    32768    |   15-bit   |    1-bit   --
--       1     |  "18Kb"   |    16384    |   14-bit   |    1-bit   --
---------------------------------------------------------------------

entity bram is
    generic (
        BRAM_SIZE: string := "18Kb";
        BRAM_SIZE_ADD: integer := 8;
        DEVICE: string := "7SERIES";
        INPUT_SIZE : integer := 8;
        READ_WIDTH : integer := 0;
        INIT_XX : string
             );
  
    port (reset   : in std_logic;
          clock   : in std_logic;
          chip_en : in std_logic;
          wr_en   : in std_logic;
          data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
          address : in std_logic_vector(BRAM_SIZE_ADD-1 downto 0);
  
          data_av  : out std_logic;
          data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);
  
          n_read  : out std_logic_vector(31 downto 0);
          n_write : out std_logic_vector(31 downto 0)
          );
  end bram;

  architecture a1 of bram is

    function string_to_std_logic_vector(data : string; s: integer; e: integer) return std_logic_vector is
        variable output : std_logic_vector(255 downto 0);
        type type_hex_vector is array (0 to 15) of std_logic_vector(3 downto 0);
        variable str_vector : string := "0123456789ABCDEF";
        variable hex_vector : type_hex := (
            x"0", x"1", x"2", x"3", x"4", x"5", x"6", x"7", x"8", x"9", x"A", x"B", x"C", x"D", x"E", x"F"
        );
    begin
        for i in s to e loop
            for h in 0 to 15 loop
                if data(i*4+3 downto i*4) = str_vector(h) then
                    output(s(i*4+3 downto i*4)) := hex_vector(h);
--                     ret(i*8+7 downto i*8) := std_logic_vector(to_unsigned(character'pos(s(i)), 8));
                end if;
            end loop;
        end loop;
        return output;
    end function string_to_std_logic_vector;

    begin

    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
       BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
       DEVICE => "7SERIES",             -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
       DO_REG => 0,                     -- Optional output register (0 or 1)
       INIT => X"000000000000000000",   -- Initial values on output port
       INIT_FILE => "NONE",
       WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       SRVAL => X"000000000000000000",  -- Set/Reset value for port output
       WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
       -- The following INIT_xx declarations specify the initial contents of the RAM
       INIT_00 => string_to_std_logic_vector(INIT_XX,64*16#00#, 64*16#01#-1),
       INIT_01 => string_to_std_logic_vector(INIT_XX,64*16#01#, 64*16#02#-1),
       INIT_02 => string_to_std_logic_vector(INIT_XX,64*16#02#, 64*16#02#-1),
       INIT_03 => string_to_std_logic_vector(INIT_XX,64*16#03#, 64*16#04#-1),
       INIT_04 => string_to_std_logic_vector(INIT_XX,64*16#04#, 64*16#05#-1),
       INIT_05 => string_to_std_logic_vector(INIT_XX,64*16#05#, 64*16#06#-1),
       INIT_06 => string_to_std_logic_vector(INIT_XX,64*16#06#, 64*16#07#-1),
       INIT_07 => string_to_std_logic_vector(INIT_XX,64*16#07#, 64*16#08#-1),
       INIT_08 => string_to_std_logic_vector(INIT_XX,64*16#08#, 64*16#09#-1),
       INIT_09 => string_to_std_logic_vector(INIT_XX,64*16#09#, 64*16#0A#-1),
       INIT_0A => string_to_std_logic_vector(INIT_XX,64*16#0A#, 64*16#0B#-1),
       INIT_0B => string_to_std_logic_vector(INIT_XX,64*16#0B#, 64*16#0C#-1),
       INIT_0C => string_to_std_logic_vector(INIT_XX,64*16#0C#, 64*16#0D#-1),
       INIT_0D => string_to_std_logic_vector(INIT_XX,64*16#0D#, 64*16#0E#-1),
       INIT_0E => string_to_std_logic_vector(INIT_XX,64*16#0E#, 64*16#0F#-1),
       INIT_0F => string_to_std_logic_vector(INIT_XX,64*16#0F#, 64*16#10#-1),
       INIT_10 => string_to_std_logic_vector(INIT_XX,64*16#10#, 64*16#11#-1),
       INIT_11 => string_to_std_logic_vector(INIT_XX,64*16#11#, 64*16#12#-1),
       INIT_12 => string_to_std_logic_vector(INIT_XX,64*16#12#, 64*16#13#-1),
       INIT_13 => string_to_std_logic_vector(INIT_XX,64*16#13#, 64*16#14#-1),
       INIT_14 => string_to_std_logic_vector(INIT_XX,64*16#14#, 64*16#15#-1),
       INIT_15 => string_to_std_logic_vector(INIT_XX,64*16#15#, 64*16#16#-1),
       INIT_16 => string_to_std_logic_vector(INIT_XX,64*16#16#, 64*16#17#-1),
       INIT_17 => string_to_std_logic_vector(INIT_XX,64*16#17#, 64*16#18#-1),
       INIT_18 => string_to_std_logic_vector(INIT_XX,64*16#18#, 64*16#19#-1),
       INIT_19 => string_to_std_logic_vector(INIT_XX,64*16#19#, 64*16#1A#-1),
       INIT_1A => string_to_std_logic_vector(INIT_XX,64*16#1A#, 64*16#1B#-1),
       INIT_1B => string_to_std_logic_vector(INIT_XX,64*16#1B#, 64*16#1C#-1),
       INIT_1C => string_to_std_logic_vector(INIT_XX,64*16#1C#, 64*16#1D#-1),
       INIT_1D => string_to_std_logic_vector(INIT_XX,64*16#1D#, 64*16#1E#-1),
       INIT_1E => string_to_std_logic_vector(INIT_XX,64*16#1E#, 64*16#1F#-1),
       INIT_1F => string_to_std_logic_vector(INIT_XX,64*16#1F#, 64*16#20#-1),
       INIT_20 => string_to_std_logic_vector(INIT_XX,64*16#20#, 64*16#21#-1),
       INIT_21 => string_to_std_logic_vector(INIT_XX,64*16#21#, 64*16#22#-1),
       INIT_22 => string_to_std_logic_vector(INIT_XX,64*16#22#, 64*16#23#-1),
       INIT_23 => string_to_std_logic_vector(INIT_XX,64*16#23#, 64*16#24#-1),
       INIT_24 => string_to_std_logic_vector(INIT_XX,64*16#24#, 64*16#25#-1),
       INIT_25 => string_to_std_logic_vector(INIT_XX,64*16#25#, 64*16#26#-1),
       INIT_26 => string_to_std_logic_vector(INIT_XX,64*16#26#, 64*16#27#-1),
       INIT_27 => string_to_std_logic_vector(INIT_XX,64*16#27#, 64*16#28#-1),
       INIT_28 => string_to_std_logic_vector(INIT_XX,64*16#28#, 64*16#29#-1),
       INIT_29 => string_to_std_logic_vector(INIT_XX,64*16#29#, 64*16#2A#-1),
       INIT_2A => string_to_std_logic_vector(INIT_XX,64*16#2A#, 64*16#2B#-1),
       INIT_2B => string_to_std_logic_vector(INIT_XX,64*16#2B#, 64*16#2C#-1),
       INIT_2C => string_to_std_logic_vector(INIT_XX,64*16#2C#, 64*16#2D#-1),
       INIT_2D => string_to_std_logic_vector(INIT_XX,64*16#2D#, 64*16#2E#-1),
       INIT_2E => string_to_std_logic_vector(INIT_XX,64*16#2E#, 64*16#2F#-1),
       INIT_2F => string_to_std_logic_vector(INIT_XX,64*16#2F#, 64*16#30#-1),
       INIT_30 => string_to_std_logic_vector(INIT_XX,64*16#30#, 64*16#31#-1),
       INIT_31 => string_to_std_logic_vector(INIT_XX,64*16#31#, 64*16#32#-1),
       INIT_32 => string_to_std_logic_vector(INIT_XX,64*16#32#, 64*16#33#-1),
       INIT_33 => string_to_std_logic_vector(INIT_XX,64*16#33#, 64*16#34#-1),
       INIT_34 => string_to_std_logic_vector(INIT_XX,64*16#34#, 64*16#35#-1),
       INIT_35 => string_to_std_logic_vector(INIT_XX,64*16#35#, 64*16#36#-1),
       INIT_36 => string_to_std_logic_vector(INIT_XX,64*16#36#, 64*16#37#-1),
       INIT_37 => string_to_std_logic_vector(INIT_XX,64*16#37#, 64*16#38#-1),
       INIT_38 => string_to_std_logic_vector(INIT_XX,64*16#38#, 64*16#39#-1),
       INIT_39 => string_to_std_logic_vector(INIT_XX,64*16#39#, 64*16#3A#-1),
       INIT_3A => string_to_std_logic_vector(INIT_XX,64*16#3A#, 64*16#3B#-1),
       INIT_3B => string_to_std_logic_vector(INIT_XX,64*16#3B#, 64*16#3C#-1),
       INIT_3C => string_to_std_logic_vector(INIT_XX,64*16#3C#, 64*16#3D#-1),
       INIT_3D => string_to_std_logic_vector(INIT_XX,64*16#3D#, 64*16#3E#-1),
       INIT_3E => string_to_std_logic_vector(INIT_XX,64*16#3E#, 64*16#3F#-1),
       INIT_3F => string_to_std_logic_vector(INIT_XX,64*16#3F#, 64*16#40#-1),

       -- The next set of INIT_xx are valid when configured as 36Kb
       INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",

       -- The next set of INITP_xx are for the parity bits
       INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",

       -- The next set of INIT_xx are valid when configured as 36Kb
       INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000")
    port map (
       DO => DO,      -- Output data, width defined by READ_WIDTH parameter
       ADDR => ADDR,  -- Input address, width defined by read/write port depth
       CLK => CLK,    -- 1-bit input clock
       DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
       EN => EN,      -- 1-bit input RAM enable
       REGCE => REGCE, -- 1-bit input output register enable
       RST => RST,    -- 1-bit input reset
       WE => WE       -- Input write enable, width defined by write port depth
    );


-- End of BRAM_SINGLE_MACRO_inst instantiation

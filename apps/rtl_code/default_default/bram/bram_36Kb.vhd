-- https://docs.xilinx.com/r/en-US/ug953-vivado-7series-libraries/BRAM_SINGLE_MACRO

library UNISIM;
use UNISIM.vcomponents.all;
library UNIMACRO;
use unimacro.Vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

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

entity bram_single is
    generic (
        -- replace ADDR_BRAM, INPUT_SIZE and ADDRESS_SIZE generics with constants using python
--         ADDR_BRAM      : integer := 10;
--         INPUT_SIZE      : integer := 8;
--         ADDRESS_SIZE    : integer := 12;

        DEVICE     : string := "7SERIES";
        BRAM_NAME  : string := "default"
        );

    port (
        RST  : in std_logic;
        CLK  : in std_logic;
        EN   : in std_logic;
        WE   : in std_logic;
        DI   : in std_logic_vector(24-1 downto 0);
        ADDR : in std_logic_vector(10-1 downto 0);
        DO   : out std_logic_vector(24-1 downto 0)
    );
 end bram_single;

  architecture a1 of bram_single is
    signal bram_wr_en    : std_logic_vector(4-1 downto 0);
    signal bram_addr     : std_logic_vector(10-1 downto 0);

    begin
    bram_wr_en <= (others => '1') when WE = '1' else (others => '0');
    bram_addr <= ADDR(10-1 downto 0);
          

    MEM_IWGHT_LAYER0_ENTITY0 : if BRAM_NAME = "iwght_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffebaffdeecfffcf000186900112a0008a400001d000894fffa570004fefff05b",
            INIT_01 => X"ffffe5ffffcafffff700000a00002200001f001da3ffcfa0000a4b00188d0013d2",
            INIT_02 => X"000035000018ffffddffffff000038ffffd300002e00002c000003000004000000",
            INIT_03 => X"ffffe600000bffffdaffffc6ffffedffffc3ffffccffffc9000018000020000021",
            INIT_04 => X"000025000018000017fffff5000010ffffe2ffffc6ffffc0ffffd300001f00001b",
            INIT_05 => X"00001d000026fffff3000032000007000007ffffd3fffff6ffffd8ffffd800000f",
            INIT_06 => X"ffffff000024000005000020fffff3000013ffffcf00000c000006ffffd8000033",
            INIT_07 => X"ffffdb00000effffecfffff4ffffdcffffc1fffffaffffdfffffeb00000bfffffb",
            INIT_08 => X"00000200001200002400001800002d000037000006ffffe1000027000009000032",
            INIT_09 => X"000037ffffc2fffffbfffff8ffffc6ffffe7000016ffffee00002d000021ffffe6",
            INIT_0A => X"fffff500001000003400000000001f000040ffffc200001effffe6ffffd2fffffc",
            INIT_0B => X"00002b00004dffffeb00002bfffff6ffffe6ffffc6ffffe5ffffcc00001e000052",
            INIT_0C => X"ffffe100003900004400002200002bfffffdffffcdfffffcffffafffffbefffffa",
            INIT_0D => X"00002600002800002cfffff9fffffa00003300000b000039000001ffffe1ffffc2",
            INIT_0E => X"000018ffffe6fffff0ffffef00001bfffffa00002f00004500003b00002f00001f",
            INIT_0F => X"fffff4ffffc6ffffcaffffe5000004ffffd2ffffd6ffffd5fffff8000021ffffe4",
            INIT_10 => X"00004400000dffffd600003300003000000400001c000000000019ffffd6ffffe9",
            INIT_11 => X"ffffe4000009fffff5ffffd0fffff0000022ffffc1ffffb3000005fffffcffffbe",
            INIT_12 => X"00003300001100004000002600000e00000000000f000025000010ffffbc00001c",
            INIT_13 => X"ffffc9000009fffff5fffff6ffffcdfffff000000000003400001fffffea00002d",
            INIT_14 => X"ffffc6fffff2000000ffffbaffffc700000a00001c000021ffffd3ffffbbffffc4",
            INIT_15 => X"00002fffffc7ffffcbfffff700003300003c000034ffffff00002d000015000028",
            INIT_16 => X"fffffc00000afffff8ffffc5ffffc9ffffd1000017fffff7fffff8ffffde000003",
            INIT_17 => X"fffff8fffffafffffb000002000003fffff9ffffd5fffff700001c00003900000b",
            INIT_18 => X"00003100001700001b00001dffffdf00001e00002bfffff0ffffc5ffffc1000016",
            INIT_19 => X"00002700002cfffff7000006000029ffffe900002800003b000020fffff300002d",
            INIT_1A => X"00001000001dffffc8ffffd8fffff1ffffd2fffff500002500002500003d000014",
            INIT_1B => X"fffff300004500001dffffe6ffffaeffffbf000021000012ffffe400001e000031",
            INIT_1C => X"ffffe6fffff7ffffd000001cffffddffffedffffcb000010000035ffffdaffffdc",
            INIT_1D => X"000001000015fffff9ffffe2ffffe3000026fffffdffffd9ffffe0ffffecffffd5",
            INIT_1E => X"ffffc5000033fffffbffffe500003300002cffffea00003300001600002f00001f",
            INIT_1F => X"000026000005ffffd7fffff8000028ffffd700001bfffff9ffffe000003effffdb",
            INIT_20 => X"000029ffffc7fffff9fffffeffffd800003000003afffff300004b00000a000003",
            INIT_21 => X"fffff9000034ffffe4ffffdfffffd9ffffc9ffffddfffffaffffebffffd7ffffff",
            INIT_22 => X"00001b00000300003d000013000019ffffecffffbfffffffffffd6fffffe00004d",
            INIT_23 => X"000038fffffb00003effffe8000036ffffff000007ffffe9ffffbcfffff2ffffdb",
            INIT_24 => X"000015fffffa000010ffffe400000a00002d00002300000a00001200002400000f",
            INIT_25 => X"000010ffffda000019000009ffffe0ffffdfffffd1fffffdfffff7ffffd1000029",
            INIT_26 => X"ffffe4000013ffffefffffe1000018ffffdd00000dfffff5ffffeb00001afffff7",
            INIT_27 => X"ffffdbfffff500002b000042fffff0000026000046000014000031000002ffffd2",
            INIT_28 => X"ffffccfffff2000023ffffdaffffe4fffff7fffff8ffffcf",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER0_ENTITY0;


    MEM_IWGHT_LAYER1_ENTITY0 : if BRAM_NAME = "iwght_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"002185000a32000ea5fffa16001017004a57fff88dfffb98fff23efff546ffd97f",
            INIT_01 => X"002f1d001305000d1ffff3ef0044f20041b4001a10fff2beffda53000277004171",
            INIT_02 => X"001aee002a6efff25e001b8cfffa92fff844ffd00f002f06fffb1bffed1b000aed",
            INIT_03 => X"00091dffe848001361ffed400005d9ffd5f5001e3d0022b7001729002657004eda",
            INIT_04 => X"fffec7002c6e001756fffaef00227f002c7a000be8fff0af001eeffff538ffd2aa",
            INIT_05 => X"00000affffed002be4001e3cffe10000380e002571002da40018cc000ac3fff967",
            INIT_06 => X"fffffb00001ffffff0fffff3000010ffffff000019000000ffffeb000006fffff4",
            INIT_07 => X"00003400008f00002800002d00002a000027ffffe0fffffaffffe600001d00000b",
            INIT_08 => X"ffffd6000006fffff900000bfffff6fffffe000038000014000023000064000028",
            INIT_09 => X"00000000000700006000003a00004500008d00005400004300003f000011ffffd6",
            INIT_0A => X"00001b000000fffffe00001100001f00002400000000000f000019ffffe600001a",
            INIT_0B => X"fffff0ffffddffffecfffffe000000fffffeffffecffffd8000021fffffcffffd3",
            INIT_0C => X"00000200003b000012fffffd000018000003000020fffff2ffffdffffff7ffffd8",
            INIT_0D => X"000005fffffafffff8000004fffffefffffc00000900001afffff4fffff4ffffee",
            INIT_0E => X"fffffb000008ffffeaffffd8ffffe8fffffc00000dfffffc000011000026ffffe5",
            INIT_0F => X"00000700000200001100000f000003000009ffffc8ffffdcfffffa000007ffffdc",
            INIT_10 => X"000015fffff7ffffe300002500000f00001000002200000e00000bfffffdffffef",
            INIT_11 => X"000024000002000010000015000010ffffcbfffff8000000000004fffffa000000",
            INIT_12 => X"000011fffff1ffffe9000001fffff0ffffcffffff7ffffd900000300001000000a",
            INIT_13 => X"000013000020000007ffffdffffff0000001000037000011fffff500000e000009",
            INIT_14 => X"ffffb7ffffffffffc6ffffd2ffffbd000000ffffe7ffffe500000cfffff3fffffd",
            INIT_15 => X"000022fffffa000001fffff4fffff9000008ffffeeffffdfffff91ffffd4ffffd7",
            INIT_16 => X"fffffcfffff0000002fffff2ffffdefffff4ffffd8fffff7ffffe5000012000000",
            INIT_17 => X"000005fffff8000018000001000010fffff6ffffff000011ffffe4fffff6000009",
            INIT_18 => X"00000c000002fffff7000001ffffefffffeb000002000002fffff0fffff0fffff5",
            INIT_19 => X"ffffc700000600000dffffed00001000000700001affffe3fffff800002c000007",
            INIT_1A => X"000008fffff6000011000012fffffb00003000000e00000dffff98ffffe6000013",
            INIT_1B => X"00000affffdcffffe3ffffff00001afffffe00001d000022ffffee000003000004",
            INIT_1C => X"000002000019000019000021ffffee00000800001b000000ffffe8000016fffffc",
            INIT_1D => X"fffffcfffff5000014ffffe000001cffffdbffffedffffd5000012000015000010",
            INIT_1E => X"ffffff000016000003ffffe9000002000004ffffebfffffb00000effffe7fffffa",
            INIT_1F => X"ffffe8ffffccfffffd00000400001d000006000010ffffebffffff000019000014",
            INIT_20 => X"ffffc6ffffddfffffd000000000023000002fffff000001e000012000001000000",
            INIT_21 => X"000024ffffceffffe200001100002c00006e000025000005000000ffffd7ffffde",
            INIT_22 => X"000000ffff9b000009ffffaffffff6fffff600004300002a000069ffffeb000026",
            INIT_23 => X"00004600003f00003e000039000014000007fffff1fffff700003b00001cfffff3",
            INIT_24 => X"000002ffffedffffbeffffbbfffffe000051fffff5ffffe5000007fffff1000022",
            INIT_25 => X"000003000002000010ffffeaffffb4ffffb2ffffddfffffdffffea000033000021",
            INIT_26 => X"000012fffff8fffff2fffffeffffec00001100000c000019ffffbfffffc6ffffd0",
            INIT_27 => X"000018000008000022000013000004000022000034000014000020000000000014",
            INIT_28 => X"ffffdc00002100001f000020000029000012fffff2000009ffffedffffd7fffff5",
            INIT_29 => X"fffffc000011fffffaffffe1000023ffffda000036000054ffffe2000003ffffff",
            INIT_2A => X"ffffd900000e000043000039ffffc1ffffcfffffbaffffd0000003000006ffffda",
            INIT_2B => X"00001800003e000025ffffd5ffffefffffdc000038000025000012ffffe4ffffdd",
            INIT_2C => X"ffff97ffffd9fffffe00000400000500001800001f000019ffffc6ffffcdffffcc",
            INIT_2D => X"00003000001700002a000005fffff400000cffffef000042000031000034ffff8e",
            INIT_2E => X"ffffe7000023000004000005fffffdffffe200000500001e00002300000d000033",
            INIT_2F => X"000022fffff9fffffc000004000005fffff700001dfffffa00001000004d000007",
            INIT_30 => X"00000000000d00000800001d00000300001afffffeffffe5ffffe0fffff2fffffd",
            INIT_31 => X"ffffe3ffffd2ffffe600000000001f00000900001000000400001bffffe0fffff7",
            INIT_32 => X"fffffeffffdaffffddfffff0ffffd400000700000dfffff7fffff0fffffe000007",
            INIT_33 => X"000028fffff1ffffb6ffffdeffffd8ffffdcffffe7000023000049000031000000",
            INIT_34 => X"ffffefffffceffffe0fffff6ffffdeffffeaffffccffffd300004dffffc7ffffad",
            INIT_35 => X"fffff300001100002000002a000013000016000038000030000031000024000014",
            INIT_36 => X"fffffbffffeeffffbb000000000014000024ffffcefffff6000015ffffeeffffc3",
            INIT_37 => X"000005000000ffffff00003b00002600000e000001ffffedfffff1ffffbb000004",
            INIT_38 => X"ffffe4000008ffffe4fffff3000003ffffd9ffffdafffffaffffc200001affffb7",
            INIT_39 => X"ffffe6fffffb000013ffffeffffff7000013000032000018ffffe9ffffe1ffffee",
            INIT_3A => X"fffff8000000fffff9000007ffffeefffff2000014000022000011ffffddffffe6",
            INIT_3B => X"ffffeeffffe9ffffe500001900001cffffb3ffffdffffff5000008fffff6000002",
            INIT_3C => X"00005900001d00001f00000d00000b00000ffffffcffffefffffd9ffffc7fffffd",
            INIT_3D => X"000001ffffc4ffffeeffffd9ffffd3ffffc500001900003500000e00003c00001f",
            INIT_3E => X"00000cfffff400000a00002600000600000d00000afffffc000025fffff3000006",
            INIT_3F => X"000035ffffeaffffdcffffdd000004000006ffffd9fffff5fffffffffffd00001e",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffd2000022ffffe7ffffeffffff100000fffffcaffffe400000000001800001a",
            INIT_41 => X"000019ffffd6000038000031ffffffffffe0000010000037fffffb00000000000d",
            INIT_42 => X"fffffdffffe300001e00001ffffffbfffffc00001c000028ffffe2ffffcf00002e",
            INIT_43 => X"00002c000024ffffe9000011000026fffffc00000ffffff8000019ffffe3fffffc",
            INIT_44 => X"00000700001d00001600000cffffe700000f000002ffffea000013ffffe8fffff3",
            INIT_45 => X"000008ffffd4fffffd00000f000002fffffc00001bffffd8ffffd8ffffd6000038",
            INIT_46 => X"000038000004ffffcf000036ffffecffffd2000005fffff4ffffceffffeafffffe",
            INIT_47 => X"000007000031ffffcfffffd4000023fffff6fffff000002d00002cffffceffffc8",
            INIT_48 => X"000006000024ffffe5ffffc6000028000008ffffe500003c00000100000afffff0",
            INIT_49 => X"ffffe6ffffff000001fffff8ffffe6fffff400001f00000000001fffffddffffc9",
            INIT_4A => X"00001000000fffffe9ffffe600001f000009fffffbfffff6000000000011000018",
            INIT_4B => X"fffff2000007fffff6000023ffffe8fffffe000024fffffa00000400000b00000d",
            INIT_4C => X"00001fffffccffffc9000022fffffaffffd800003100001dfffff3000002000000",
            INIT_4D => X"000032ffffebffffcb000003fffff8ffffee000014000016ffffb7fffff3000000",
            INIT_4E => X"fffffdffffe0ffffeb00000300003000003600002600002200002700001b00000d",
            INIT_4F => X"000023ffffd9ffffc3000023ffffffffffdcffffe300001d000037ffffb7ffffe8",
            INIT_50 => X"ffffe8ffffe5000030fffffcffffe900002d00002effffe4000020ffffedffffbe",
            INIT_51 => X"fffff800002c00004400002500004900003e00000f00001f00001700000200002c",
            INIT_52 => X"ffffcafffffc000005fffffcffffe3ffffd800003500000fffffdc00001c000013",
            INIT_53 => X"ffffffffffbf000029fffff4ffffeb00000600001b00001200001a000013000030",
            INIT_54 => X"00000cfffffbfffffd000003000000000000fffffd00003e000003ffffc000000e",
            INIT_55 => X"fffff3ffffeafffff6fffff3fffff8ffffea00000affffe4fffff0000008ffffee",
            INIT_56 => X"000008fffff000000000000efffff6fffff6fffff4ffffe700000bffffed000006",
            INIT_57 => X"000000000005000000ffffecfffffd000005ffffeb00000dffffe8fffff0fffff5",
            INIT_58 => X"000002fffffb000000fffff4000007fffff1ffffedffffee000003fffff6fffffa",
            INIT_59 => X"fffffd000006fffff3fffff7fffff0fffff3fffff4fffffbfffff6000006000011",
            INIT_5A => X"00000c000000ffffddffffeb000000ffffee00000700000500000a00000dfffffd",
            INIT_5B => X"ffffff000008ffffedfffffcffffecfffff9000007000004000009000002ffffe7",
            INIT_5C => X"000000000003fffff200000fffffebfffffffffffcfffff9fffff7000002000002",
            INIT_5D => X"fffff2000004000007fffff8000011fffff8ffffebffffdffffffaffffea000010",
            INIT_5E => X"fffffcfffff4000002ffffeb000000fffff4000005fffff8000005000008fffffc",
            INIT_5F => X"ffffee000001000000fffffd000000fffff200000b00000affffe2fffffdffffe1",
            INIT_60 => X"000003fffff1ffffecfffff8fffff500000b000007000012000008ffffeefffff9",
            INIT_61 => X"ffffffffffe8fffff7000000fffff000000bfffff5fffffbfffffbfffff2000005",
            INIT_62 => X"fffffdffffe7ffffe9ffffefffffebffffec000006ffffffffffed000000fffffb",
            INIT_63 => X"ffffeafffff8fffff4fffff5fffff200000afffff6fffffe000000fffff4fffffa",
            INIT_64 => X"ffffed00000fffffecffffebfffff4ffffe7fffff0000000fffff1fffffe00000c",
            INIT_65 => X"fffffa000001000004000003fffff4ffffedfffff3fffffbffffebfffffbfffff9",
            INIT_66 => X"fffff8ffffeb000000ffffe900000500000cfffffefffff200000bffffee000007",
            INIT_67 => X"ffffedfffff2000003fffff8000000ffffeafffffc000003000004fffffcffffe7",
            INIT_68 => X"fffff0ffffeeffffe0000000fffffc000005ffffe8ffffeaffffff000005ffffea",
            INIT_69 => X"000011000004000002fffffbffffed000009fffff0fffff6000009fffff3000001",
            INIT_6A => X"ffffec000008000010ffffea00000b00000bffffec000005000000000001000000",
            INIT_6B => X"fffff5fffff1fffff1fffff9fffff0fffffefffff2ffffeaffffe8fffff6000002",
            INIT_6C => X"000009fffff1fffffa00000100000b00000bffffed000007000007fffff6000009",
            INIT_6D => X"ffffe3ffffeffffff3fffff4fffffb00000900000d000008fffffa000006fffff6",
            INIT_6E => X"fffff6fffffb00001700001b000009fffff0000008fffff7fffff3000012000004",
            INIT_6F => X"ffffe6fffffa00003e000012ffffe3ffffd5ffffe3fffffc00000100000c000001",
            INIT_70 => X"00000700001e000011ffffd9fffff700000cffffeaffffd6ffffb6fffff3ffffee",
            INIT_71 => X"ffffceffffd0ffffc2ffffe4ffffdfffffd5ffffbeffffe4000032ffffceffffe6",
            INIT_72 => X"ffffbfffffd3ffffc3ffffc3ffffe5ffffd6fffff8ffffd0ffffd100000affffcd",
            INIT_73 => X"fffffb00000f00001b000031000025000023000016000016fffffeffffe9ffffea",
            INIT_74 => X"00001f00000effffedfffff7ffffe1000018000016ffffff00003600001c000008",
            INIT_75 => X"fffff900002400000e000003fffff100001100002bfffff6000008000007fffff2",
            INIT_76 => X"00000000000300000900000fffffdeffffd7ffffabffffcfffffb6fffff0ffffc3",
            INIT_77 => X"000024fffff4000001000014ffffe900001d00000ffffffa00000e00003a000028",
            INIT_78 => X"fffff5000000ffffdefffff4fffff700001a000016ffffdcffffeefffffdfffff0",
            INIT_79 => X"ffffe2ffffebffffb2ffffaaffffcfffffb500001c000038fffff3ffffdfffffe0",
            INIT_7A => X"fffffa00000f00000c000003000016fffff2fffffaffffff000000000000ffffea",
            INIT_7B => X"00002affffe800000d000027ffffc8ffffe5fffffc000000ffffe0ffffef000000",
            INIT_7C => X"00002200003fffffed00001700001a00000f00001d000035000012000060000041",
            INIT_7D => X"000000ffffe400000c00002c000006fffff8000000000006000037000046fffff9",
            INIT_7E => X"00002b000002fffffe00000400000200000100000d00000afffffd000016ffffd4",
            INIT_7F => X"00000effffe6000002000004fffffb00001300001600001300000d00001f000018",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY0;


    MEM_IWGHT_LAYER1_ENTITY1 : if BRAM_NAME = "iwght_layer1_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffeeffffcefffff000001bffffda00000dfffffa000014000015ffffdf000010",
            INIT_01 => X"00001a00003200003f000022fffffffffff2fffff5000002ffffecfffff7ffffe3",
            INIT_02 => X"ffffbeffffec000023ffffd6fffff500002effffe7ffffce000017000011000012",
            INIT_03 => X"ffffe0ffffcc000008000005fffff1ffffd600002effffe7ffffdaffffdaffffed",
            INIT_04 => X"000006ffffd5fffff800000b000028000006000008ffffeeffffe9ffffd4ffffe5",
            INIT_05 => X"ffffd1ffffc7ffffd9000015ffffb6ffffa7fffffdfffff700001cffffe9ffffe9",
            INIT_06 => X"000006000014fffff1000003000024ffffd9fffffc00000dfffff3ffffd7ffffbc",
            INIT_07 => X"fffff6fffff000000f000011ffffe9fffff700000c000014000005000029000011",
            INIT_08 => X"fffffdffffec00000ffffff6ffffecffffdbffffe900000affffe5ffffecffffeb",
            INIT_09 => X"fffff100000c000005000026000038fffff9fffff5fffff800001cfffff0ffffff",
            INIT_0A => X"000036ffffadffff9fffffcbffff92ffffadfffffa00002c00000efffff3ffffe9",
            INIT_0B => X"fffffeffffdb000004ffffcbffffe5ffffd0ffffc4ffff8dfffffbffffd5ffffe7",
            INIT_0C => X"000035000023ffffebfffff7ffffd1ffffc6ffff9efffff0ffffecffffb7fffff2",
            INIT_0D => X"fffff3ffffdeffffd8ffffe0ffffedfffffd00000000003100001a000012000022",
            INIT_0E => X"00001cffffef00000700001200000a00001bfffffcfffff2000008ffffd8fffffd",
            INIT_0F => X"fffff1ffffd3ffffe0ffffb7ffffbafffff4ffffd4fffffe000019ffffeeffffe3",
            INIT_10 => X"fffffa000000000018000015fffff100001800002d00000d000024fffffa00000c",
            INIT_11 => X"ffffe0ffffdcffffe800005800001600000effffe0ffffe4ffffefffffdfffffd7",
            INIT_12 => X"fffffd00000000001000000dfffffcffffbeffffe2000010ffffbd000000000007",
            INIT_13 => X"00001a000016000012000019000000000014000010000006ffffee000001000007",
            INIT_14 => X"fffff9ffffeeffffe3ffffeffffffeffffe400001a00000800001900001000000b",
            INIT_15 => X"ffffd1ffffe5ffffd500000000000efffff800001100000f000012000020000004",
            INIT_16 => X"00003e000016000003fffffd000002ffffedffffd7000001ffffbcffffe9ffffdd",
            INIT_17 => X"fffffa00000afffffeffffc4000007fffff9ffffd3fffffd000014fffff800000f",
            INIT_18 => X"000007ffffdb00002300000d000002000011000012000000ffffe2000022000015",
            INIT_19 => X"00000c00000d000005ffffe700003400001c00002300002100002500001400000a",
            INIT_1A => X"ffffe500000bfffff4ffffff000005fffffd00003c00002700000900002f000005",
            INIT_1B => X"fffffaffffd2fffff8ffffe5ffffedffffc8000006ffffedffffe9000016000005",
            INIT_1C => X"000033fffff1fffff8fffffbffffdeffffb300001c00002b00001300000f00000a",
            INIT_1D => X"00003100001a00001500000500000e000007ffffeefffff200001bffffe2fffff9",
            INIT_1E => X"fffff1fffff7ffffec000004000044ffffd200000a00002efffff7000021000022",
            INIT_1F => X"ffffd4ffffbdffff78ffffbe000002000000ffffff000005000007ffffc3fffff9",
            INIT_20 => X"000030000021fffffc00001500000b00000fffffd3ffffd5fffff0ffffcdffffb8",
            INIT_21 => X"fffffbfffffc00001a00001900000400001000001d00000bfffff8ffffea00001e",
            INIT_22 => X"ffffd8ffffc600000c000025fffff800001700003700001e00001900001700002f",
            INIT_23 => X"00002900002a000026ffffebfffff2fffff9fffffbffffeafffff1fffff1ffffe5",
            INIT_24 => X"ffffeaffffe2fffffd00000e000000ffffb8ffffbbfffff7000015000025000032",
            INIT_25 => X"ffffe800000dffffdaffffd6000031000012fffff600001afffff5ffffe5000026",
            INIT_26 => X"00000700001afffff000001600003500002effffea00001cffffda000023ffffed",
            INIT_27 => X"00000200003800003300003100002700001c000036000015000005000008000004",
            INIT_28 => X"ffffb5fffff1fffff1fffff2ffffd3ffffcdfffff2ffffedfffff9000019000024",
            INIT_29 => X"00003700003f000053000022000026000028ffffcbffffceffffdfffffabffffa1",
            INIT_2A => X"fffff000001400000b00000100000afffff6fffff2fffffbfffff000000300000e",
            INIT_2B => X"00000bffffddfffff1ffffde00000b00000a00001b000017fffffe00000500000c",
            INIT_2C => X"000020000021000021000030fffffdfffffc000040000000000002000021ffffef",
            INIT_2D => X"ffffc1ffffccffffe7ffffc4ffffdefffff2fffff5ffffe8000013000019ffffe5",
            INIT_2E => X"00000600002300003a00002200002c00002500000affffd2ffffddffffeeffffca",
            INIT_2F => X"00002c00001affffe400000efffffefffffffffff7fffff0000018000013fffff3",
            INIT_30 => X"00000500001affffa3ffff95ffffaeffffedffffb3ffffabfffff5000002000011",
            INIT_31 => X"ffffd500001600000cffffd3000006000008fffff500002f000016000022000013",
            INIT_32 => X"ffffef000016fffff600001d000032000034000011000034ffffec000031fffffa",
            INIT_33 => X"000004fffffcffffe9fffffdffffce000004ffffee000004fffff1fffff5fffff0",
            INIT_34 => X"00002900001100001500001ffffffb00001600000e00001a000027000025000015",
            INIT_35 => X"ffffff00001200000bffffe3ffffd0ffffe500000f00000200001700001f00002d",
            INIT_36 => X"ffffdcffffe8ffffcefffffa00002bfffffbffffebffffe5fffffe00000affffe9",
            INIT_37 => X"ffffc6ffffb6ffffacffffb0000013000002000007ffffcdffffefffffbbffffac",
            INIT_38 => X"000003ffffffffffe0000024fffffeffffec000003000011000019ffffabffffb6",
            INIT_39 => X"fffff8fffffcffffb7ffffbaffffb6ffffbafffff800000bffffec00000a00001a",
            INIT_3A => X"fffff0ffffdeffffe200000900002e00004efffff400002f000010ffffcdfffffe",
            INIT_3B => X"000000ffffefffffd3000006000005fffff6ffffc3ffffc3ffffe4ffffb3ffffd3",
            INIT_3C => X"000010fffffe000016ffffef00001300001ffffff5fffff9fffffefffff8000010",
            INIT_3D => X"fffff2fffffb00001200000c00000e00000bfffff500000c00000ffffffd00001e",
            INIT_3E => X"fffffc000001000009ffffe7fffffaffffe5fffff4fffffb00000cffffecfffffe",
            INIT_3F => X"000000fffff5ffffea000001ffffe6fffffa000002fffff8000000fffff3000001",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffeefffffafffff6ffffe5000003ffffeefffff4000000fffff6ffffff000005",
            INIT_41 => X"000001fffff4fffff400000000000900000affffe9ffffec000001000006ffffeb",
            INIT_42 => X"fffff6ffffeffffff9ffffedfffff5ffffeb000011fffffffffffbfffffe000005",
            INIT_43 => X"fffffbfffff6fffff1ffffe0000004fffff5000007000005ffffe8000004000006",
            INIT_44 => X"ffffef00000bfffffc000006fffff0000000000005ffffe3ffffff000005000005",
            INIT_45 => X"000000ffffe5000000ffffe3ffffe5fffffcfffff1ffffe3000006ffffed000014",
            INIT_46 => X"00000600000cfffffafffff2000008fffffd00000dfffff4fffffc000003ffffe7",
            INIT_47 => X"fffff9fffff3fffffa000013fffff800000dffffebffffee000007000013000013",
            INIT_48 => X"fffff7ffffeafffffd000000000003000000000007fffff2000000000004fffff8",
            INIT_49 => X"fffff200000bffffed000008000004fffff8ffffe4ffffff00000dfffff800000e",
            INIT_4A => X"fffff0fffffd00000cfffffefffff7000000000001ffffeafffff0fffffdfffff0",
            INIT_4B => X"000003ffffe7000004fffff0000005fffff2ffffecfffffdfffff7fffffbfffff8",
            INIT_4C => X"ffffe7ffffe9000000fffff8fffff4000009000007ffffedffffeefffffefffffb",
            INIT_4D => X"fffff1ffffe3ffffeafffffffffff2fffff5ffffe9fffff3000001000006000009",
            INIT_4E => X"fffff1fffffc000002ffffe700000afffff8ffffeffffffc000008ffffeffffff9",
            INIT_4F => X"fffff8fffff500000effffeefffff100001100000efffffc000009fffff9000005",
            INIT_50 => X"00000b000001fffff5ffffeafffffafffff0fffff9ffffe6fffff6fffff9fffffb",
            INIT_51 => X"fffff1fffff1000003ffffe6fffffcffffeaffffec000004ffffe1fffffdfffff7",
            INIT_52 => X"000014000007000002000011fffff3fffff5000010ffffec000000ffffdafffff1",
            INIT_53 => X"ffffedfffffe000001000004ffffed00000300000afffffa00000fffffef000007",
            INIT_54 => X"000001fffffc00000000000a000000fffff2fffff1fffff700000dffffffffffe8",
            INIT_55 => X"fffffe000001000006000004000005fffff5000001fffff8fffffffffffd000002",
            INIT_56 => X"ffffec000000fffff0000003ffffe9fffffcfffffc000008fffff6000006000005",
            INIT_57 => X"fffffdfffff7fffffd000003ffffeb00000ffffff900000000000000000bffffeb",
            INIT_58 => X"000022ffffd9ffffb8ffffdcffffdb000015000002fffffc000004fffff100000a",
            INIT_59 => X"00000a00002f00001c00000500000500002e000021000010000019fffff7ffffee",
            INIT_5A => X"000014fffff6000028ffffedffffe600002200004800000200002e000030fffff4",
            INIT_5B => X"000027ffffed00004800002b00001100001dfffff700001900004200003600001e",
            INIT_5C => X"000029fffff4ffffd5fffffeffffc9ffffdc00000a00000fffffdd00003400003b",
            INIT_5D => X"fffffeffffe800001600000cffffe6fffffdffffdafffffffffff100000d000024",
            INIT_5E => X"ffffed00002f000010ffffdc000010ffffea00001c00001affffeeffffe3000003",
            INIT_5F => X"ffffffffffdfffffbe000002ffffebffffec000001fffff0000006000000ffffd1",
            INIT_60 => X"fffff4ffffe800000ffffffaffffef000006fffffcfffffaffffe2ffffc7ffffb9",
            INIT_61 => X"fffff0fffff3ffffefffffd9000017fffffcfffffbffffdeffffebfffff5000015",
            INIT_62 => X"000013fffff7ffffebfffff8ffffd9ffffbf000003ffffee000000ffffce00000a",
            INIT_63 => X"ffffea000006ffffe7ffffd1fffffd000000000002fffff900000f00000dfffff0",
            INIT_64 => X"ffffaaffffd6000024ffffbd000015fffff9000018ffffdeffffc9ffffdfffffe0",
            INIT_65 => X"fffff0ffffefffffc0000000ffffd9ffffc100002e000013ffffef00000affffde",
            INIT_66 => X"ffffe7ffffeafffffb00002e00000e00002e000031000011000007fffff4000012",
            INIT_67 => X"fffff0000022000004000001ffffef000005000002fffffa000004fffffc000000",
            INIT_68 => X"000004fffffb00000ffffffa000009ffffdffffff1fffffafffffe000002fffff5",
            INIT_69 => X"ffffdcfffff4000005fffff7ffffda000023fffff2ffffb3fffff0ffffeafffffc",
            INIT_6A => X"ffffc4000016ffffe0ffffa200000fffffe6ffffb1000018fffffaffffcbfffffb",
            INIT_6B => X"ffffd9ffffecfffffffffff0ffffe500000800002400000200001e00004dffffd5",
            INIT_6C => X"ffffe200000c00000c000009ffffe8000012fffffcffffbcffffe3ffffeeffffd1",
            INIT_6D => X"ffffdf000005000008ffffde00001afffff8ffffeb00000affffcffffff8000024",
            INIT_6E => X"00003800006900005600002a00001600002a00001d00002a000014ffffe4ffffcd",
            INIT_6F => X"00000300001afffff6ffff9bffffd6fffff5fffffbffffcb000004000025ffffe9",
            INIT_70 => X"fffffc000007fffffd00000a000028000005ffffd6fffffefffff6ffffe9000015",
            INIT_71 => X"00000200001efffff7ffffe9ffffeb00000500000e00001800001f000017000006",
            INIT_72 => X"00001600001900002200002f00002cfffff0fffffe00001efffff000000f000001",
            INIT_73 => X"00002700001000001afffff8000012000011fffff9ffffe5ffffd4ffffe4000000",
            INIT_74 => X"ffffecffffd0ffffef000006000035000025000006000037000005ffffe5fffff3",
            INIT_75 => X"fffff9000026000022fffffdfffff4ffffea000046000000ffffda000000000010",
            INIT_76 => X"00002600000500000d00001dffffdffffff5fffffc00001a000000000006000008",
            INIT_77 => X"fffff3000009fffffbffffeb000013000028fffff3000000000020000018000008",
            INIT_78 => X"000008ffffd9ffffd0fffff1ffffecfffff2000011000011ffffd0ffffe7ffffef",
            INIT_79 => X"000031fffff700001400002d000020ffffd1ffffe8000018ffffebffffc1000022",
            INIT_7A => X"00000dffffe4ffffc8000008ffffe1ffffd7ffffeafffffd00001300001400000d",
            INIT_7B => X"00000000000d00000efffffcfffffd00001100001afffff8fffffbffffdfffffcf",
            INIT_7C => X"ffffffffffeffffff1ffffc9000000fffff7fffff0fffffb00001f00000d000004",
            INIT_7D => X"000012fffffdffffc0ffffcffffff9000019ffffcfffffd2fffffc000016fffff6",
            INIT_7E => X"00000800001800000dfffffc000002000049000002ffffd9000047ffffe4ffffe9",
            INIT_7F => X"ffffd9000030ffffe3ffffc0ffffe5ffffd2ffffe6000004ffffef000014000013",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY1;


    MEM_IWGHT_LAYER1_ENTITY2 : if BRAM_NAME = "iwght_layer1_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000fffffedfffffb000035fffffdffffdffffff4000006ffffd3000010fffff0",
            INIT_01 => X"00001200001b00001600000200002effffff00001100001c00001300001700000c",
            INIT_02 => X"000019000012000002fffff2fffff3ffffda00000400000affffe2000016fffffc",
            INIT_03 => X"00002dfffff4ffffe900000000001bfffff1000002fffff7ffffe900000bfffff3",
            INIT_04 => X"fffff4000023ffffcc00000a000030ffffefffffe9ffffeb000008ffffee00000a",
            INIT_05 => X"00003800004f000053000025000046000048000013ffffed00001d000021ffffd6",
            INIT_06 => X"000021ffffeaffffd5ffffe100001800002000000a00003b000021ffffe9000010",
            INIT_07 => X"fffffd00002c000014ffffe100000200001efffffbffffde00002dffffcbffff98",
            INIT_08 => X"000045fffff300002bfffff2ffffeaffffdefffffcfffff800001a00003cffffe0",
            INIT_09 => X"ffffd8ffffd0000009fffff8ffffe100000000002dfffff9ffffda00002100004e",
            INIT_0A => X"ffffe5ffffaeffffd9ffffd600000affffdd00000100002900000c000034000017",
            INIT_0B => X"fffffefffff9fffffefffffc00004f000011ffffd9000017ffffd0ffff9b000024",
            INIT_0C => X"ffffafffffb0000013ffffaeffffb7000002ffffff00000a000008000000000003",
            INIT_0D => X"fffffb00000600005000002affffdc000043000028ffffddfffff1ffffff000017",
            INIT_0E => X"ffffe900003000002dffffe500002a000014fffff5fffffb000001ffffe600001d",
            INIT_0F => X"000018ffffedffffe9000016fffff9ffffe300004500006e00000dfffffa00002c",
            INIT_10 => X"000006fffff1ffffd4ffffe0000000000005fffffcffffe600002c000009ffffe5",
            INIT_11 => X"000005000002ffffe9000005ffffdbfffffb00000600000300001e000027fffff8",
            INIT_12 => X"00000bffffe8000017000004fffff2fffff9000027ffffdbfffffaffffe0ffffe2",
            INIT_13 => X"ffffd2ffffe9ffffc8ffffd2000004ffffbbffffd0000021ffffa5ffffe3fffff2",
            INIT_14 => X"ffffde00001600000dfffff3fffffb00000900000a00000affffd6000007000016",
            INIT_15 => X"00000d00000700000900001e00001effffe2ffffddfffffbffffe1000008ffffee",
            INIT_16 => X"ffffe8000033ffffc3000000000064ffffbbffffd700001200001200002b000016",
            INIT_17 => X"fffff2ffffdfffffd9ffffdf00000300000cffffe6000029ffffe6ffffd0ffffbd",
            INIT_18 => X"ffff7cffffcd00002a00000a00000300001300002600003600000f00000a000007",
            INIT_19 => X"fffff1000040ffffe4fffff2000018ffffcfffffb9fffff4ffffa2ffff9afffffa",
            INIT_1A => X"fffff8ffffee000019ffffea00000d00000bfffff0ffffddfffff0000027ffffd7",
            INIT_1B => X"00000e00001400000500001dfffffe00000100003400002bfffff300000000001b",
            INIT_1C => X"000000000013ffffea00001ffffffaffffee00000900001100000400001e00001c",
            INIT_1D => X"fffff3fffffcfffff7ffffee000000fffffc000000000026000012000007000010",
            INIT_1E => X"00002a000003ffffea00002700001100000700001800001c000000ffffe800000f",
            INIT_1F => X"ffffe3fffff3000053000014ffffcb00005800002affffc9fffff500000effffef",
            INIT_20 => X"00000ffffff2fffffd00000bfffff1fffffc000015ffffdaffffd7000006000028",
            INIT_21 => X"ffffecffffe1000000ffffc3ffffe6000009fffffbfffff9000033ffffd6000007",
            INIT_22 => X"000007fffff900001700002600001800001afffff8fffff9fffffc000001ffffee",
            INIT_23 => X"ffffe600000affffec000018fffff8000013fffff3000009fffff8ffffd8fffffa",
            INIT_24 => X"ffffed000016000009ffffecfffffe00000d00000a00001ffffff4ffffe7ffffe7",
            INIT_25 => X"000010000004ffffe900000700002000000f000008000026000003fffff9fffff7",
            INIT_26 => X"ffff8affffa8ffffbeffff99fffff8ffffdafffffffffff6000009fffff4000007",
            INIT_27 => X"000015000037000010000022000021000012ffffccffffa0ffffa4ffffa9ffff74",
            INIT_28 => X"fffffcfffff6ffffe4000000000022fffffeffffe300002400001afffffb00002b",
            INIT_29 => X"00000dfffff100002900005100000400001500005f00002c000029000046ffffe4",
            INIT_2A => X"ffffebffffffffffe2ffffeeffffe600000200000600001d000000fffff8000004",
            INIT_2B => X"00000a00001700001f000024fffff1fffff6fffffd00001900000bfffff3fffffc",
            INIT_2C => X"ffffc3ffffd7ffffa1ffffcf000003fffffdfffffdfffff700003c00002800000b",
            INIT_2D => X"000025fffff7fffff9ffffedfffff0ffffedffffffffffe9fffff5000016ffffc8",
            INIT_2E => X"ffffd8ffffdcfffff9ffffc9fffff0ffffcfffffa0ffffd2ffffe5ffffe2ffffd2",
            INIT_2F => X"00000cffffefffffe5ffffe8ffffebffffea000009ffffe5000004000018ffffdf",
            INIT_30 => X"000013fffff5fffffa00000200001b00000d00001000001d00001bffffea000009",
            INIT_31 => X"ffffe1fffff8000002000007ffffe8ffffe4fffffffffffefffffc00000e000015",
            INIT_32 => X"ffffb000000c00001800002bffffe8ffffe8000014ffffd9fffff5ffffe8fffff2",
            INIT_33 => X"ffffd6ffffd9fffff900000fffffeeffffe0fffff0ffffd7ffffb1ffffefffffd3",
            INIT_34 => X"00000bfffff6000019000029fffff0000006fffffe00000d000003ffffecfffff8",
            INIT_35 => X"00000ffffffa000017000005fffffe00000a000005ffffe4ffffebfffff4fffff6",
            INIT_36 => X"ffffdefffffd00001cffffed000006000014000007fffffcfffff800000500001e",
            INIT_37 => X"ffffe5ffffef00000afffffb000012ffffecfffff6ffffe9fffffcfffff2ffffe9",
            INIT_38 => X"ffffeb000012000005000027000014fffff6fffff3000008fffff9ffffe4fffff4",
            INIT_39 => X"00002afffff100000000000ffffffffffffe000004000008fffff0000012fffff6",
            INIT_3A => X"ffffed00000800000900001b00000800002000001400001d000031000010ffffd0",
            INIT_3B => X"fffffd00003a00000100000000000600000600001e000014fffffefffff7fffff1",
            INIT_3C => X"000011000029000034000000fffffc00001400001fffffe7000003000005ffffea",
            INIT_3D => X"000002ffffe1000015000009ffffdb00000c000021000009000003000031000003",
            INIT_3E => X"000002fffff700000d00000d00000f00001100000300000000000cfffff500002e",
            INIT_3F => X"00000a00001800002d00001e00001700001a000015000000000017ffffddfffff6",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000a000004000000fffff800000700000affffebfffff7ffffdf000001000008",
            INIT_41 => X"00001e00005600002e00000bffffaeffffce000005ffffed00002d000023fffff3",
            INIT_42 => X"00002a00000cffffc6000000000015000004ffffefffffe4ffffedfffff3000006",
            INIT_43 => X"ffffd7fffff1ffffd8000006fffff300002200001b000037000013fffff2ffffba",
            INIT_44 => X"00001900004400002900002900000fffffb100000cffffe1ffffb3ffffd9ffffd0",
            INIT_45 => X"00001300000500000bffffe1ffffe3fffff4000017ffffeaffffdf000012fffff3",
            INIT_46 => X"fffffe00002800001a000011ffffedffffeaffffef000002ffffff00001ffffff1",
            INIT_47 => X"fffff5ffffd7ffffe3ffffeefffff0ffffe8ffffd5ffffe5ffffd5ffffe2000021",
            INIT_48 => X"ffffddffffeffffff9ffffedfffffe000033ffffe4000000000011fffffbffffe0",
            INIT_49 => X"ffffd8fffffafffff8ffffe8fffffbffffe9ffffdefffff7fffff2fffff2000017",
            INIT_4A => X"00001e00003100000500000500003100001e000008000008000004000012ffffd6",
            INIT_4B => X"000009ffffcc000044ffffaeffffad000003ffffea000003ffffe7000009000015",
            INIT_4C => X"ffffe500000300001500001100000c00001900000c00000000003d00001d000036",
            INIT_4D => X"ffffd7ffffd6ffffdc00001effffbf00000c000003ffffdbffffe900000d000018",
            INIT_4E => X"000025000034fffffc000026ffffdaffffe2fffff9fffff6ffffc5000002fffff6",
            INIT_4F => X"ffffd8000010ffffebffffdf000001ffffedffffff00001c00004d00004d000010",
            INIT_50 => X"000000000000ffffdcffffec00000bffffee000024000018ffffff000026000025",
            INIT_51 => X"00001f00000700000c000020ffffe2fffff1000016ffffe8ffffedfffffdffffec",
            INIT_52 => X"ffffbcfffff400000cfffff5ffffec000000fffffaffffdffffff4fffffeffffca",
            INIT_53 => X"00002600003100006d00001000002800001100002b00001b00001000000cffffeb",
            INIT_54 => X"fffff1000004fffffb000028000013fffff8ffffe5ffffe5ffffdcfffff900003b",
            INIT_55 => X"fffff9ffffed00001afffff2000017000009fffffffffff6ffffbfffffecfffff0",
            INIT_56 => X"000018fffff7000006000010fffff300000e000005ffffe0ffffdb00000b000006",
            INIT_57 => X"ffffdeffffda000002fffffffffff9fffff100000a00000ffffffd000035000013",
            INIT_58 => X"ffffe5000006fffffaffffde000006fffff7fffff7ffffecffffe2000019000008",
            INIT_59 => X"00001f00001d00001bfffffe00000b000001fffffa000011000005000002000000",
            INIT_5A => X"fffffefffff900001400000000001dfffff7000001fffffb000008000028000018",
            INIT_5B => X"fffff8ffffe0000023fffff5ffffeefffff8fffff7fffffafffff8000010fffff1",
            INIT_5C => X"ffffdb00000800000b00001c00005900006000005100001700002afffff7ffffca",
            INIT_5D => X"ffffd400000d000025ffffb1ffffd9fffff8ffffdbfffff2000019fffff5ffffe6",
            INIT_5E => X"ffffe600000a000003ffffddffffec00001300001500000700001400002700004f",
            INIT_5F => X"fffff9fffff4fffff200000b000008ffffe1ffffe300001900000affffee000001",
            INIT_60 => X"ffffbbffffd800000400001e00001600000c000000000002ffffed00001fffffd8",
            INIT_61 => X"00002f000027fffffefffffaffffec000000ffffed00001cffffd9000016000014",
            INIT_62 => X"ffffdafffff8000007000006ffffc4fffff2ffffe2ffffdb00000b00000ffffff3",
            INIT_63 => X"fffffe00002c000001000032fffffeffffee00001dfffff1ffffeffffffefffff0",
            INIT_64 => X"00000800000afffff9ffffdcffffd1000014fffff5fffffa00000200000effffef",
            INIT_65 => X"00000100001000000e00001500000600001300000cffffdf00001800000b00002d",
            INIT_66 => X"fffff6fffffdffffed00000affffd5ffffe4000010ffffe2000012000000000002",
            INIT_67 => X"fffffc00002300006000004a00007100002d00002f000025ffffd3000000000012",
            INIT_68 => X"ffffffffffed00000700001200000c00001500000500000500000dffffe500001f",
            INIT_69 => X"000024ffffe2fffff7fffff0ffffdbffffdbfffff3ffffd6000002fffff2000001",
            INIT_6A => X"ffffcafffff200002a000013000006fffffbfffff1fffff7ffffd0ffffc7fffff9",
            INIT_6B => X"000017ffffe3fffff9ffffcd00001ffffffdfffff4000004000004000001ffffe1",
            INIT_6C => X"ffffef000003000015fffff300000c000024fffff0fffff8fffff3fffffefffffb",
            INIT_6D => X"000010000009fffff0ffffc1ffffea000024fffff700000300001cffffeb000000",
            INIT_6E => X"000008000000000000ffffff000000000002000014ffffddffffeefffff5ffffe3",
            INIT_6F => X"fffff700002a00000effffe100000ffffffc000015000026000013000003ffffeb",
            INIT_70 => X"00001d000014fffff2ffffeefffff3000007ffffe7ffffd8ffffd3ffffec000003",
            INIT_71 => X"fffffeffffe5fffff3000023fffffbfffff6fffff9fffffcfffff5ffffc2000027",
            INIT_72 => X"000027000000000032000014fffffbffffe9000042fffff3fffffa00002d000032",
            INIT_73 => X"00001dfffff8fffff9000019ffffeffffff6fffff3fffff9fffff2ffffd7fffffa",
            INIT_74 => X"00002a00000b00001400000900001effffecffffeffffff0fffffd00000a000014",
            INIT_75 => X"00000dffffd4ffffd600000c00000600002cfffffd00001300002700001c00001c",
            INIT_76 => X"00003800002c000027000021000041000034000052000014000011fffffe00000e",
            INIT_77 => X"000034ffffe0fffffc00002dffffdefffffc00000200000e00003d00002b00001f",
            INIT_78 => X"00000ffffff7ffffff00003200000cfffff3ffffe7fffff7000005ffffe3000050",
            INIT_79 => X"00000f000006ffffbaffffd6ffffd6fffff9ffffdd00000200001d00000f00002f",
            INIT_7A => X"00002c00000300001e00001c00000a00002600000b000002ffffe7fffffcfffff4",
            INIT_7B => X"00002300001e000008000004ffffe0ffffe4fffff4000002fffffefffff0000024",
            INIT_7C => X"fffff0000002ffffe6fffff3000025fffffdfffff3000000000000ffffdfffffda",
            INIT_7D => X"000018fffff3000009ffffdd000002ffffdf00000fffffe9ffffd6fffff8ffffe5",
            INIT_7E => X"000004000007ffffe6fffff7ffffe3ffffc8000007000005ffffd2ffffeaffffdc",
            INIT_7F => X"00001bfffffd00001e00001500001c000005000001000029fffff2ffffcefffff6",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY2;


    MEM_IWGHT_LAYER1_ENTITY3 : if BRAM_NAME = "iwght_layer1_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffa300000afffff3ffffc500001a00003d000042000017000001ffffe0000001",
            INIT_01 => X"ffffc2ffffeb00000afffff6ffffd1000043ffffef00000dffffe1000010ffffc8",
            INIT_02 => X"00000c000022000001fffff700000900001cfffff9ffffe2000026ffffffffffeb",
            INIT_03 => X"fffff5000004fffff9000020ffffdfffffe3ffffbe00001effffe1ffffd3000002",
            INIT_04 => X"00001ffffff1000023fffff1ffffe800001c000011fffff3ffffddfffff3000005",
            INIT_05 => X"fffffdffffe300002300002a000001000010fffff5ffffea000018ffffe0ffffd7",
            INIT_06 => X"fffff000001efffff4ffffcc00000afffff7fffff800000600001100000b000016",
            INIT_07 => X"ffffddffffe7000001ffffc5ffffd6000001fffff8fffff800003a000024000034",
            INIT_08 => X"ffffe5fffffcfffffbfffff5ffffed00002000003200002500004b000029fffff2",
            INIT_09 => X"fffffc000032ffffecfffffe000000fffff5ffffeeffffea00001200001effffe0",
            INIT_0A => X"000017000004ffffe600000cfffff6ffffdf00000500001d000014000028ffffed",
            INIT_0B => X"00001c000019ffffe700005c000015000003000058000017000011ffffea00000c",
            INIT_0C => X"000005fffff6000015fffffefffff6ffffe3ffffe700000dffff99ffffc0ffffd0",
            INIT_0D => X"00001300000f00000000002900000600000a000002000000fffff400000dfffff8",
            INIT_0E => X"000013000002000009000009fffff4fffffefffffe000004000020fffffafffff2",
            INIT_0F => X"00000e000010000000fffff400003600001b00002a00000d00000b00000c000017",
            INIT_10 => X"000017000018000015ffffff00001900004200002500000a00003900001d000021",
            INIT_11 => X"00002100001bffffc5ffffb9ffffbfffffe1ffffcdffffd0000013ffffe1ffffdc",
            INIT_12 => X"ffffdb00000f00000cfffff6000005fffffaffffe800004000004300001000002c",
            INIT_13 => X"fffffb000018000002000032000018fffffdfffffafffff600001e000000000015",
            INIT_14 => X"00000affffe8000000000007000013ffffeaffffff000000ffffeaffffe6fffffe",
            INIT_15 => X"000005000000fffffb000028fffff000000a00001efffff5ffffd000000d000018",
            INIT_16 => X"00000cfffff000001500000cfffff0ffffefffffeb000003fffffc00000000001a",
            INIT_17 => X"00000dffffc700002700001300001f00001a00001700001b00001b000015fffffa",
            INIT_18 => X"ffffe100000cffffe700000000002c00000effffffffffe600002d000003fffff2",
            INIT_19 => X"000011000015ffffdd00000900001900000f00000600000dfffff7ffffd1ffffe1",
            INIT_1A => X"00002200000cfffff9000011fffffffffff3ffffeaffffca000034000015000017",
            INIT_1B => X"fffff4ffffe5000034000002ffffe9000000fffff400000900000d000005000033",
            INIT_1C => X"fffff600001afffff100001c00001b000025000012000022ffffff00002f000006",
            INIT_1D => X"000015ffffd3ffffccfffff0ffffc7ffffccffffccffff9bffffea000001ffffd6",
            INIT_1E => X"ffffeefffff200000800000b000006fffffbfffff800000efffffb000000ffffd6",
            INIT_1F => X"fffff800001b00001600000800000cffffecfffff1ffffd6ffffdaffffda000000",
            INIT_20 => X"ffffebfffffd00003500002400001b00000efffff900001dffffe5ffffedffffe5",
            INIT_21 => X"000010ffffe700000dffffdc00000e000012ffffdbffffebffffde00000500001f",
            INIT_22 => X"000019fffff000001dffffcdffffe9000007ffffd5ffffc2fffff3ffffe1000020",
            INIT_23 => X"000025000019fffff600000effffebfffffd00000d00001bffffcbffffeefffff8",
            INIT_24 => X"fffffafffffefffff2fffff5ffffe000000afffff1ffffe7fffff4000019fffff9",
            INIT_25 => X"ffffeaffffbbffffc0000010ffffdbffffdaffffd5ffffda000002fffff2ffffe1",
            INIT_26 => X"000001000003ffffddfffff2fffff1fffff3ffffe7ffffe6ffffc4ffffd4ffffdd",
            INIT_27 => X"000025ffffee00000ffffff1ffffd1ffffdbffffd9ffffc5ffffe5ffffe9ffffeb",
            INIT_28 => X"00001600000dfffff0ffffd4ffffdcffffec00000000000000000e000043000039",
            INIT_29 => X"000001fffffaffffe9ffffe2ffffdffffffbffffff000005000015fffff9fffff1",
            INIT_2A => X"ffffe4ffffa6ffffb3ffffc6ffffe1ffffc700000e00001400000500001f000027",
            INIT_2B => X"ffff9400001e000019ffffa7ffffc5fffff2ffffb3ffffb600001bffffa9ffffa9",
            INIT_2C => X"ffffd4ffffc1ffffa8fffff4ffffc4ffff9bffffc5ffffa0ffffc6ffffa8ffffda",
            INIT_2D => X"fffff3ffffdbfffff2fffff400001000000bfffffb000015fffff0ffffdaffffea",
            INIT_2E => X"00000c000026000031fffff100001d000029ffffca00000000000affffe100000b",
            INIT_2F => X"000017fffffc000015000017ffffe6000022000000000001ffffdb00000a000027",
            INIT_30 => X"fffff6000047000021fffff0000027ffffd4fffffe000036ffffecffffe900000a",
            INIT_31 => X"ffffbdffff9cffff86000001fffff8fffffdffffff000007fffff2000016000008",
            INIT_32 => X"000000000003ffffd1fffff2ffffe2ffffe8fffff5000015ffffbeffff7affffd1",
            INIT_33 => X"000017ffffecfffff2fffffeffffe8000000000007fffff5fffffefffff2fffff4",
            INIT_34 => X"ffffd6ffffe3ffffd0ffffdfffffaeffffd4ffffe3ffffccffffad000000ffffe4",
            INIT_35 => X"00002600003300001700001300000800002f000016000011fffff5ffffebffffd9",
            INIT_36 => X"fffff4ffffd8ffffeefffff1ffffde00000c00000200000c000002000012000010",
            INIT_37 => X"ffffdaffffd8ffffee00001000001c000011fffffbffffe9fffffafffff6ffffe4",
            INIT_38 => X"00002d00001d00001e00002400002e00001a000034fffffbffffc0ffffbaffffb0",
            INIT_39 => X"fffff0fffffcfffffa000000ffffef000015fffff9fffff0ffffebffffe7fffffa",
            INIT_3A => X"ffffee00000000000600000000002800000c000017fffff8fffffc000005000000",
            INIT_3B => X"fffffb000011fffff400002900000500001a00000400000b00002a00000c000013",
            INIT_3C => X"00007a00002f00006d00004f00003300001a000006fffff500001efffff7000003",
            INIT_3D => X"ffffd500001000000dfffff4000003000032fffffb00001300002a000064000054",
            INIT_3E => X"fffff2fffff800003affffff00000300001efffff9ffffed000023fffff7fffff8",
            INIT_3F => X"ffffb1fffff6ffffbbfffff8fffff300000bfffffdfffff100000d00001b000013",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000ffffe8ffffdd000006000015000018ffffafffffd2ffffeaffffb9ffffa3",
            INIT_41 => X"fffff6fffff5000001000021000012fffffc000020000027fffffffffff8000015",
            INIT_42 => X"00000000003700001500001400001affffeefffff5000006fffff1ffffdfffffd3",
            INIT_43 => X"ffff99ffff8bffffb6000006fffff000000a00000ffffffafffffefffff9fffff9",
            INIT_44 => X"000007000002000042000047ffffdcffffd6ffffcafffff6ffffcfffff86ffffac",
            INIT_45 => X"000001ffffe3000009fffff1000044000016fffffbffffd7ffffe8ffffe8000014",
            INIT_46 => X"00000ffffffe00001100004d00000600001c000021000030000030ffffcfffffe0",
            INIT_47 => X"ffffd7ffffdc00001300001800000700001f00001f00001f00001e00003e000019",
            INIT_48 => X"000016000010000019fffffa000003ffffebffffd1ffffe5ffffd7fffff0ffffc2",
            INIT_49 => X"ffffefffffcbffffddfffff8ffffe4fffffa00000900001900002400000500001e",
            INIT_4A => X"000009ffffe5000004fffffbffffc1ffffefffffe4ffffa2000000ffffd1ffffd9",
            INIT_4B => X"ffffc9ffffe6ffffdf00000dffffddffffcdfffffbffffcbffffbcffffe7ffffdf",
            INIT_4C => X"000011fffff4000000ffffddffffd6000012ffffe1ffffe3ffffeb000013ffffd0",
            INIT_4D => X"ffffd2fffff4ffffd4ffffd3ffffcf000018000011fffff900000f000001fffff5",
            INIT_4E => X"fffff3ffffebfffffefffff3000012ffffebfffffb000006ffffeeffffc9ffffe1",
            INIT_4F => X"000024000039fffff400000600000affffd6fffff6ffffe7ffffc3ffffd6000000",
            INIT_50 => X"ffffbfffffdeffffb7ffffbfffffc7ffffbeffffc5ffffa6ffffa7ffffeaffffd5",
            INIT_51 => X"ffffe800002700000e00001effffe600000000001cffffe3ffffef000001ffffdc",
            INIT_52 => X"00002200002700000f000006fffffe000008ffffef000000ffffaa000007ffffe9",
            INIT_53 => X"000016fffff9000003000010ffffef00002000000fffffeb00002f000017fffff9",
            INIT_54 => X"ffffc200001600001a00000100000c00000800000afffffffffffcfffff8000019",
            INIT_55 => X"00001100000a000018fffffdffffeb00000cffffe4fffff5ffffccffffc5ffffda",
            INIT_56 => X"fffff2ffffb7ffffff00002bffffedfffffa00000cfffff6ffffef000015000019",
            INIT_57 => X"fffff5000005fffff2ffffff00002500002a000010000006ffffdeffffa4000005",
            INIT_58 => X"fffff8000009fffff3fffffafffff3fffff000000ffffffbffffe7000005ffffe6",
            INIT_59 => X"00001300001c000004000000ffffbefffff6000008ffffe5ffffe0ffffc8ffffeb",
            INIT_5A => X"ffffd6ffffd9000005fffffa000012ffffadffffe3fffff2000000000008000037",
            INIT_5B => X"00001100001ffffff800000c000032000019ffffcb000002ffffe1ffffdffffff2",
            INIT_5C => X"fffffd00002afffffd000016000012000000ffffeb00000000001700001afffff8",
            INIT_5D => X"000016000017ffffe900000000000a00000300000d000014ffffeeffffee000004",
            INIT_5E => X"000001000000ffffe9000003000000fffff500000a00001c00000500003e00000f",
            INIT_5F => X"00000600003200000fffffe3ffffce00001c00000afffff400000e00001bfffffc",
            INIT_60 => X"000022000008fffffb00000b000002fffffcffffee00000000000b00002fffffe7",
            INIT_61 => X"000022000004ffffef000009ffffeeffffed000003000018fffff7000007fffffc",
            INIT_62 => X"000000ffffea00000fffffffffffee00001800000100000300000f00001b000000",
            INIT_63 => X"00001bffffc7ffffdd00001e000050000018000048000031000017ffffe5000025",
            INIT_64 => X"ffffd8fffffeffffedfffff2000022000011fffff7000001000028ffffdc000034",
            INIT_65 => X"000009ffffe6ffffe500000dfffff900001100000000001bffffd0ffffe2ffffa9",
            INIT_66 => X"000023ffffebffffd4ffffc4ffffc8ffffcaffffd300002cfffff000000dfffff2",
            INIT_67 => X"00002000002b000014000013fffff9fffff9000008ffffe1ffffe7000024000026",
            INIT_68 => X"ffffe5ffffecffffdeffffddfffff2000043fffff700001100001900001bfffff7",
            INIT_69 => X"ffffbe000000fffff8ffffe400002100004600004a00003e00003d00002cffffdf",
            INIT_6A => X"ffffdfffffefffffd100000c00001cffffecffffb4ffffd1ffffc7ffffc6ffffc2",
            INIT_6B => X"ffffdeffffe1000003fffffaffffb6fffff6fffffeffffe200000f000025000021",
            INIT_6C => X"ffffe9fffff5ffffff00000dffffcdffffe9ffffbafffff8000031000002ffffd3",
            INIT_6D => X"00002e00001100001300000e00000a00000000001effffe5fffff0ffffeafffffa",
            INIT_6E => X"ffffdc00000e000013fffff1fffff500001600001e000021000004ffffedfffffb",
            INIT_6F => X"ffffccfffff6fffff1fffff6ffffce00000000000000001a00002d000052000003",
            INIT_70 => X"ffffafffffa5ffffd8000012000012ffffeafffff8ffffe2ffffe9ffffd0ffffac",
            INIT_71 => X"00003400000efffff7ffffd7ffffb2ffffbcffffd4fffff5ffffe1ffffeffffff4",
            INIT_72 => X"ffffb2ffffdbfffff5ffffd0fffffc00000efffffefffffdfffff700002a00000c",
            INIT_73 => X"000037fffff2ffffe300001400001200000000000f00000000000f00000fffffeb",
            INIT_74 => X"000007000018ffffcc00000000000fffffcdfffffa00001dffffcafffff1fffff0",
            INIT_75 => X"00001bfffffcffffe8ffffd600003cfffff200000100003b000015fffffefffff2",
            INIT_76 => X"00000b000000ffffe300001c00002900001000000b00001e00001b000022000023",
            INIT_77 => X"000002000015fffffcfffff400000e00001a00000600000cffffe8ffffeeffffcc",
            INIT_78 => X"fffff000003a00003800004200003e00004000004300002a00004b000033fffff9",
            INIT_79 => X"ffffe3ffffdfffffdeffffdaffff94ffffbeffffbcffff8affffbcfffff5ffffba",
            INIT_7A => X"ffffbbffffc4ffffe6ffffe2fffff7ffffe5ffffe4ffffa2ffffefffffc0ffffde",
            INIT_7B => X"000037ffffff00000000000cffffd9ffffe9fffffaffffe1ffffbeffff8600000c",
            INIT_7C => X"ffffefffffe0ffffdc00000dffffebfffff7000027000042fffffe00004200002f",
            INIT_7D => X"00001500000a000008000015000027000005000021000010fffffb00000100000e",
            INIT_7E => X"ffffdb00001b00000b00001400003800001000000c00000afffff100001e000022",
            INIT_7F => X"000029fffff500002200000d000010000021000003ffffdbffffcb000002000005",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY3;


    MEM_IWGHT_LAYER1_ENTITY4 : if BRAM_NAME = "iwght_layer1_entity4" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00001effffe4ffffe7fffff7fffff0ffffd8fffff0fffff8000017fffffdffffee",
            INIT_01 => X"000013fffff200000cfffffffffff1fffff3ffffefffffebffffe900000b00000a",
            INIT_02 => X"fffffeffffe900000c000009000007ffffed000032000031000014000016000021",
            INIT_03 => X"000000ffffdaffffe9fffffcffffe400000600001000001efffffb000000ffffed",
            INIT_04 => X"00002000003a000048fffff900005e00005d000033000009000010fffffa000003",
            INIT_05 => X"00000d00000efffff700000000000500000afffffd00001e00000e000025000013",
            INIT_06 => X"00000f00001dffffe4fffff8ffffe8ffffe600000dffffe3ffffe8000000ffffea",
            INIT_07 => X"00000fffffeafffff5ffffd2000019000014000014000008fffff600000100001f",
            INIT_08 => X"ffffe600000ffffffc00000300001900001100000700000200001affffe7000018",
            INIT_09 => X"fffff6fffff400001c00001100000300002900001200001c00001100000700000b",
            INIT_0A => X"ffffbbfffff3000004ffffd300000600000dfffff9000004fffff1000003000003",
            INIT_0B => X"00002400002100000affffc0ffff70ffff97ffffc3ffff94ffffb7fffff7ffffde",
            INIT_0C => X"00002dffffd800002100001300000300001900001100000400002300000f000010",
            INIT_0D => X"000025ffffedfffffb00000a00000900001800003200000600000affffe6000009",
            INIT_0E => X"000008ffffe7ffffc8000009ffffd5ffffd2fffff4ffffd4fffff6ffffec000010",
            INIT_0F => X"ffffe8fffff1ffffdfffffea000004ffffea000008000009000001ffffe9ffffef",
            INIT_10 => X"000003fffffc00000ffffff000000000001500000d000003000012000018ffffe6",
            INIT_11 => X"00000300000bffffea000000ffffeaffffeb000009000000fffffb00000300000e",
            INIT_12 => X"ffffd8ffffd4ffffe2ffffc7ffffeffffffc00000400001100000a00000a000003",
            INIT_13 => X"000009000015fffffb00000bffffedffff9affffabffffccffffc1ffffc2ffffde",
            INIT_14 => X"ffffb3ffffc1ffff96fffffe000035000036ffffe5000003000029ffffd6fffff7",
            INIT_15 => X"00001600000000003300004200001a000005000024000005ffffe9ffffd6ffffb2",
            INIT_16 => X"000009ffffe5ffffdeffffa3ffffbfffffe9ffffd8ffffd6fffff1ffffcf000027",
            INIT_17 => X"00003400000a00001c00001e000000fffff700000f00000e00001b00002cffffeb",
            INIT_18 => X"000014000010ffffeeffffe7ffffcbfffff6ffffcaffffdafffff9fffffdfffffa",
            INIT_19 => X"ffffd8fffff5000007fffff2ffffee00000afffff8000007ffffed000001fffffc",
            INIT_1A => X"fffff200000c00000800000700001d000014000024000029fffff3ffffedfffff3",
            INIT_1B => X"000001000000000005fffff9000002000018000003fffffcffffc600001efffffa",
            INIT_1C => X"00000e00003b00003000004dfffff2fffff9000003ffffd3ffffd6ffffdbffffda",
            INIT_1D => X"fffff1000001ffffe9ffffe3ffffedffffc4ffffec00000effffe7000018000036",
            INIT_1E => X"00001000000bffffd5000007000004000000ffffedffffd8ffffebfffffdfffffd",
            INIT_1F => X"000008fffffffffff100001b000006fffff5fffff4000016000036000017000034",
            INIT_20 => X"ffffe400000a00002affffff000005fffff0ffffd2fffff9ffffd600000b000014",
            INIT_21 => X"00000d00000c000013000005ffffeffffff6000015ffffed00001b00000cfffffb",
            INIT_22 => X"fffffaffffff000010000031ffffeb000004fffff7fffff600001c00001ffffff4",
            INIT_23 => X"00002800001500000200000c00001afffffd000014ffffeeffffd2ffffe700000e",
            INIT_24 => X"00001a00000dffffecfffff600000600001200000f000003fffff7000006ffffeb",
            INIT_25 => X"ffffc900008d00000effffc6000050000034ffffcf00002d00001dffffc4000011",
            INIT_26 => X"000004fffff300000100002e00003a00002affffe6000000ffffe2ffffcbffffcd",
            INIT_27 => X"fffff1ffffe500000a000008ffffe4000001000020000031fffff3ffffeffffff4",
            INIT_28 => X"000037ffffe700000900002affffd9fffff4fffff0000016000015ffffbffffff9",
            INIT_29 => X"00001dffffe9ffffd800000d000006ffffea00001600002e000011ffffeb000036",
            INIT_2A => X"000017000025fffff800001000001bfffffd00001e000025fffff300000e000022",
            INIT_2B => X"00000600000c000008fffffefffffa00002200001cffffd9000016000036000028",
            INIT_2C => X"000018000006000003fffff3000004fffff7fffff500001700000400001a00000a",
            INIT_2D => X"ffffd9000015ffffe9ffffeafffff0fffff3fffffa00000fffffed000030000005",
            INIT_2E => X"ffffe200004d00001a00000200002cffffea000006ffffd1ffffe2fffff7fffffb",
            INIT_2F => X"00000fffffecfffff4ffffaaffffa3fffffeffffffffffd2ffffdefffffaffffbf",
            INIT_30 => X"ffffa8ffffa2fffff1000025000021fffff1ffffe2ffffecfffffbfffff3000000",
            INIT_31 => X"ffffe000000afffff0ffffca00000700001bffffec000000ffffc5ffffc5ffffd6",
            INIT_32 => X"ffffe9fffff3fffffbffffea00000600000400001100001500002200002e00000e",
            INIT_33 => X"00001600000affffacfffff2000011ffffd5000006000016ffffc9ffffe500000a",
            INIT_34 => X"000007fffff9fffff6000000ffffd5ffffecffffeaffffe400002200001d00001f",
            INIT_35 => X"000001fffff9ffffd8ffffe4ffffe9ffffe100000900000a000022ffffef000008",
            INIT_36 => X"00000600001600000b00001dfffffdfffff5000023000018000006000002ffffe1",
            INIT_37 => X"fffff8ffffd1ffffabffffc6ffffee00001500000600000100000500000b00000e",
            INIT_38 => X"000021000026000036fffff4000003fffff5fffff2fffffc000028ffffedfffffd",
            INIT_39 => X"00002100000500000000000ffffff700000200000d00000c00000200003b000047",
            INIT_3A => X"ffffb5fffff5000026ffffdffffffb000027000023000006ffffe2fffff9fffff8",
            INIT_3B => X"ffffffffffd1ffffbb000007ffffedfffff100001400000d00000effffc7fffff3",
            INIT_3C => X"00001d000033000002ffffdeffffc2000015ffffcfffffe100001c00002f000033",
            INIT_3D => X"000006ffffffffffd9ffffec000023ffffcbffffe000000dfffff800000e000021",
            INIT_3E => X"00000f00001000000c000020000024fffffdffffff000009000010ffffd9000007",
            INIT_3F => X"ffffc2000024000006ffffb1000028fffff7ffffe8000036ffffdaffffc3ffff9d",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000022000019000001ffffee00000ffffff4000009000005000003000004ffffd8",
            INIT_41 => X"ffffd0ffffe4ffffe7ffffcc00002400000bfffff200002a00000ffffff1000026",
            INIT_42 => X"ffffefffffe1ffffe9ffffd8000006fffff9ffffd4ffffeaffffedfffff6fffffb",
            INIT_43 => X"00000cfffff8ffffecffffe9fffff2fffffbffffee000034000003000007000012",
            INIT_44 => X"000027ffffd4ffffadfffffcffffffffffd900000200000b00001dffffe8ffffde",
            INIT_45 => X"000018000001fffffb00001d000029fffff300002c000022ffffe000001300000a",
            INIT_46 => X"00001300001bfffffa00000000000100000a00001600000dfffff6000013000004",
            INIT_47 => X"00001200002d00001ffffff400002100003bffffef000031000010000035000028",
            INIT_48 => X"ffffd6000004ffffedffffe3ffffc9ffffeffffff8000013fffff9000001ffffd9",
            INIT_49 => X"ffffe6ffffff00000d000007000004000023000000000013000006000028fffff1",
            INIT_4A => X"000009fffff6ffffe4ffffd5ffffb9fffff3ffffd9ffffbeffffe2fffff8ffffd4",
            INIT_4B => X"000020000004000000fffff6fffffd000009000011ffffe200000c00001ffffff8",
            INIT_4C => X"ffffe000000affffedfffff9fffff6fffff600001100002900001fffffe400000e",
            INIT_4D => X"ffffd7fffff6fffffeffffeb00000600002dfffffffffffcfffffe00000efffff3",
            INIT_4E => X"00000300000500001efffff7fffffa00001000002000001900001a000020000027",
            INIT_4F => X"ffffe400000e00001c000006ffffe0ffffd4fffff7000000fffffeffffc4000018",
            INIT_50 => X"00000c00001dffffe8ffffe7ffffd9ffffedffffd8fffff6000006fffff6fffff8",
            INIT_51 => X"ffffcefffff2ffffe9ffffbdffffe8fffff0ffffd2fffff0ffffe7000004fffffd",
            INIT_52 => X"fffff3ffffd8fffffd000032fffff0ffffdd00002500000a000008000011fffff4",
            INIT_53 => X"fffff800002c00001d000001000018ffffdaffffce000017ffffcb000010000030",
            INIT_54 => X"00002b00003600001effffe6000012ffffe9000017ffffd800002f000012fffffe",
            INIT_55 => X"fffffc000000ffffd1fffffd00000b000010000012ffffe1ffffd9000039fffff9",
            INIT_56 => X"ffffe6ffffdeffffebfffff6ffffe700001200000e000010000008fffffaffffe2",
            INIT_57 => X"fffff1ffffdefffff4ffffe900000500000dffffd4fffff400000a00001100000b",
            INIT_58 => X"fffffe00000c000000000020fffff4fffff300000800000dfffff8fffffa000015",
            INIT_59 => X"fffff8000004000009fffff7ffffd6000011000033fffffbfffff100000dfffff0",
            INIT_5A => X"000029ffffd700002900003c00001100000c00002200001000000300000100001a",
            INIT_5B => X"000003ffffd600000500004500000000000800000f000000000002fffffa00001d",
            INIT_5C => X"000001ffffecfffff2ffffd1fffffcfffff1ffffe7000006ffffc800001dfffff6",
            INIT_5D => X"ffffcdffffe1000000ffffe5fffff8ffffd5ffffa9ffffe7ffffdcffffbeffffd1",
            INIT_5E => X"ffffee000001fffffdfffff7fffffa000000000004ffffd800002b000003ffffc1",
            INIT_5F => X"ffffe0fffff100001c000019fffffb00002000000500000e000005000009000002",
            INIT_60 => X"ffffc9ffffdefffff5fffff000000afffff2fffffe00000a000010fffff6fffff6",
            INIT_61 => X"ffffe6ffffd6ffffc7ffffe3ffffec000004000028ffffc4ffffeb000025ffffdb",
            INIT_62 => X"000028fffffbffffe6ffffd8ffffb8fffff400002900000affffdb00000dfffff0",
            INIT_63 => X"000054fffff2000010ffffeaffffeeffffc8ffffb7ffffea000033fffff0ffffe8",
            INIT_64 => X"00001b00002f000029000029ffffe600000effffe2ffffeefffffbffffda00004d",
            INIT_65 => X"000013000018000028ffffc2ffffc7ffffd900001a00003100001effffff000017",
            INIT_66 => X"fffffafffff1ffffecfffff5ffffcf000011ffffedfffff000001800003a00003f",
            INIT_67 => X"ffffc800003a00002000002800002400001a00001800001000004900002effffee",
            INIT_68 => X"00000000002100000c000003000007fffff9ffffd9ffffddffffcffffff5ffffd7",
            INIT_69 => X"fffffb00000900003500000cffffe400000a000028000000fffff4ffffdcffffdc",
            INIT_6A => X"00006e00002500000e000042000012fffff7fffff9fffff8000015000006ffffed",
            INIT_6B => X"00000900003c000000ffffbcffffe5ffffa2fffff0ffffc3ffffee000019000028",
            INIT_6C => X"ffffdb00000dfffff5ffffe5ffffedfffffa00001400000500000d00003f000023",
            INIT_6D => X"00000500000e00003500001500004600003000005100003100003000002cffffed",
            INIT_6E => X"00000d000004fffff1ffffeeffffcdffffdcfffffc000000fffffffffff2fffffd",
            INIT_6F => X"ffffff000000ffffc0ffffecffffd2ffffd5000006ffffd7000001ffffeeffffe1",
            INIT_70 => X"00003bfffff700001a000017ffffccffffe0ffffdc000002000035000019ffffdf",
            INIT_71 => X"000003000035000042ffffdefffffa00000fffffbefffff9ffffebfffff900003b",
            INIT_72 => X"ffffd5ffffcbffffeeffffcbffffdc000001fffffb000013000012000007000024",
            INIT_73 => X"ffffd8000000000034ffffb9ffffcf00000c00000affffed00002d000001ffffec",
            INIT_74 => X"000004000005000045ffffe2ffffc900002300004b000018ffffcc000018000040",
            INIT_75 => X"ffffbeffffe100003cfffffafffff300001a00002dfffff8ffffe1ffffe5fffffc",
            INIT_76 => X"ffffeffffff1000008ffffef00001c00002300001400002d00004400001efffffa",
            INIT_77 => X"00004800004300000c00003afffffdfffff1000013ffffda00000d00000affffd5",
            INIT_78 => X"00002a000022ffffecffffe8000002ffffd5ffffd7ffffbd00002f00001d00000d",
            INIT_79 => X"ffffea000013ffffe7fffffd00002c000018000003fffff700000d00002a000010",
            INIT_7A => X"000012000007fffff7fffff200000a000008000000fffffa000000000001ffffef",
            INIT_7B => X"000007fffffcfffffafffff3fffff5fffff5fffff6000002fffff4000013ffffed",
            INIT_7C => X"000000fffff500000e000000fffffbfffff9000010fffff0fffff3fffff900000a",
            INIT_7D => X"000000fffffc000000ffffe6ffffedfffffd00000bfffff4000007000002ffffff",
            INIT_7E => X"fffffcffffebfffff4fffff4fffff7000003000000000005fffff9ffffffffffee",
            INIT_7F => X"fffff3fffff6000004000000000000ffffecfffffd000010fffff6fffffefffff1",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY4;


    MEM_IWGHT_LAYER1_ENTITY5 : if BRAM_NAME = "iwght_layer1_entity5" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffef000009fffff1fffffa000003000010000004ffffe900000100000dfffff4",
            INIT_01 => X"00000300000a00000a00000000000afffffb000000fffffcfffffbfffff0fffffd",
            INIT_02 => X"000017000004fffffe000002fffffb000013fffffdfffff5fffff6000003000011",
            INIT_03 => X"000007000000000000fffff3fffff500000c000007000006fffff9fffffdfffff1",
            INIT_04 => X"ffffeb000006fffffd00000d000000000001000003fffff7000002ffffec00000f",
            INIT_05 => X"00000000000000000efffffdfffffbfffff7fffff5fffff0000002ffffef00000b",
            INIT_06 => X"ffffff000006ffffeaffffea000000000003fffff4ffffecfffff100000bfffff9",
            INIT_07 => X"000005fffff500000f00000cfffff0ffffee000011000010ffffea000011ffffec",
            INIT_08 => X"00001500000afffff1000004000007fffff5000000fffff6fffff8ffffeb00000e",
            INIT_09 => X"ffffed00000e000003fffff0fffff9fffffafffffb000007fffff3000002000011",
            INIT_0A => X"00000d000004ffffe8fffffffffff9000002ffffff00000efffff300000cfffff3",
            INIT_0B => X"00000900000afffff4ffffe9fffff400000b000006fffffd000003fffff5000002",
            INIT_0C => X"fffff9000012ffffeeffffe9000005fffffafffffc00000dfffff000000affffeb",
            INIT_0D => X"fffff8fffff0ffffeaffffedfffff3000004fffff0fffff2fffff4fffff1fffffd",
            INIT_0E => X"000004ffffe8fffffefffff4ffffe8fffffe00000500000afffffe000003fffff6",
            INIT_0F => X"fffff600000f00000500000bfffff6fffffe000000fffffe000003fffff9fffff3",
            INIT_10 => X"000004ffffebfffffafffffbffffeffffff5000009fffff600000d000007000011",
            INIT_11 => X"000000fffff5000003fffff6fffff5000001fffff8000004000000fffff6ffffee",
            INIT_12 => X"fffff3000009ffffeaffffec000007000000fffffcfffff9ffffebfffff2fffff8",
            INIT_13 => X"fffffbfffff9ffffff000008000006000003fffffbfffff7fffff9000000ffffee",
            INIT_14 => X"000006ffffe7000008fffff8fffffefffffafffff8ffffe9fffff4fffff3ffffee",
            INIT_15 => X"fffff3ffffe4fffffaffffd5ffffe9fffffd000002000015fffffdffffeeffffe9",
            INIT_16 => X"00004800001d00002800004300002e00001f000014fffffcffffdffffffcffffdd",
            INIT_17 => X"000030ffffdafffff2fffff9ffffe600000200000b00001e00001800003a000040",
            INIT_18 => X"ffffeefffffdffffe0fffff7ffffe0fffffb00003300003100002cfffff000000b",
            INIT_19 => X"fffff6fffff4fffff7ffffd7fffffefffffe00000affffeaffffe1000017ffffe9",
            INIT_1A => X"000016000000000027000020000026000022000013000004000018000005ffffe9",
            INIT_1B => X"ffffe8ffff9affffb2000006ffffe900000d000001fffff400001b00001900001c",
            INIT_1C => X"ffffdbfffff200000200002f000008000024000000000022ffffe5ffffc3ffffdb",
            INIT_1D => X"ffffeeffffd5ffffc4ffffd2ffffe6ffffc1ffffc9ffffe0ffffe800000cffffef",
            INIT_1E => X"000010000021000013fffff5000003fffffcffffe5ffffce000001ffffcfffffbf",
            INIT_1F => X"ffffee00001600002e00000d000017fffffe00000500000200000200000cffffed",
            INIT_20 => X"ffffddfffff2ffffd1ffffeaffffeffffff9000001000015fffff2000010fffff6",
            INIT_21 => X"ffffddffffaeffffafffffefffffc6ffffcf00001e000009000007fffff9fffff2",
            INIT_22 => X"fffff8fffffd000009ffffc3000000fffffffffff7ffffc7ffffcdffffe0ffffe5",
            INIT_23 => X"000028ffffc7ffffa3ffffbaffffb1ffffb1ffffb8fffff400001b000001000007",
            INIT_24 => X"fffff400000100001500001f00001300002500000600002c000026ffffec000009",
            INIT_25 => X"00001300002bffffec00000b000027fffff5ffffecffffdefffff1ffffeb000013",
            INIT_26 => X"000016000006ffffd1fffff2fffff6ffffebffffd5000009fffffa000009000004",
            INIT_27 => X"ffffff000007fffff9000004fffffffffff3000014000007fffffe00001c00000a",
            INIT_28 => X"00004200002400000bfffffb000000fffffd00002900002c000019000030000020",
            INIT_29 => X"ffffc7fffff7ffffbdffffb7000017000001000023000024000007000023000020",
            INIT_2A => X"00001f000028fffffcfffffbffffe200001700002000000bfffffd000007fffffc",
            INIT_2B => X"ffffee00000b00001400001400002400002400002e00004100001300000600000a",
            INIT_2C => X"00000f00000100000800000d000003ffffda00000400000cffffcaffffdcfffff0",
            INIT_2D => X"000002ffffb8ffffedfffff2ffffeffffff500001d00000b000028000013000010",
            INIT_2E => X"fffff6000007000015fffff900000000002200001400000b000010ffffdcffffbe",
            INIT_2F => X"000003000023fffff9000003000028000013000035ffffe9000006fffffdfffff7",
            INIT_30 => X"00001600003000002c00001500002e00002d00003cfffffc00002a000002000000",
            INIT_31 => X"000019ffffefffffcf00000c000012ffffeeffffdffffff7ffffe9fffff1ffffc8",
            INIT_32 => X"00000effffd8ffffddffffdb00000200001d000014000014000035000037ffffcc",
            INIT_33 => X"00002000001c00000e00003300003800004d00000700001e00000e000023000027",
            INIT_34 => X"ffffc9ffffe8ffffd3fffff7ffffe900001600003300001cffffc3ffffc7fffff5",
            INIT_35 => X"00002c00001700001b00001200002a00002c000001000007fffff800002efffffb",
            INIT_36 => X"000006ffffeb000001ffffef000000000026ffffe7ffffdf00002bfffffe000011",
            INIT_37 => X"00001fffffe200000e00002dfffff6fffff3fffff2ffffe9000033000000ffffdd",
            INIT_38 => X"000006ffffdf00001100000a00000400000400001bffffe0ffffdc00000700001e",
            INIT_39 => X"ffffe9ffffe5fffff2ffffddffffe2000002000035000012000030ffffe3fffff8",
            INIT_3A => X"00000800000600001800003e00001000002100003f000010ffffed00000d00000c",
            INIT_3B => X"00000b000013fffffbffffe4000001ffffe7fffff6ffffe5fffffa00001d000003",
            INIT_3C => X"000027fffff400000500002800001000001afffff9ffffd6ffffd1000029ffffef",
            INIT_3D => X"000007000024000009000004000018fffff5000006fffff6ffffe9ffffdefffff6",
            INIT_3E => X"fffffdfffff6000008fffff2000000000035000008fffff4fffffd00000efffff1",
            INIT_3F => X"ffffe900000100000000000600000efffff6ffffde00000300000afffff4fffff2",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000b00001500002800002a00004a00000f00000b00001c00001000001300000f",
            INIT_41 => X"00000dfffff500000a000005ffffd7fffff2ffffe3fffff7ffffef000028000017",
            INIT_42 => X"000022000001ffffdc00003ffffff8000012000000ffffcf000001ffffe0fffffb",
            INIT_43 => X"fffffd000013ffffb5ffffc7ffffbcffffdcffffe7ffffeffffffa00000bfffffe",
            INIT_44 => X"00001900001e000013000048fffffeffffd8000019000001ffffe1000011ffffff",
            INIT_45 => X"00001f000004000001fffff4fffff6fffff1fffff3fffff4fffffe000011000003",
            INIT_46 => X"ffffdbfffffbfffff800000200001b000019000025000020fffff100003a00001a",
            INIT_47 => X"00001effffeb000001ffffe9fffff1fffff5fffff7ffffddfffffaffffe1000013",
            INIT_48 => X"ffffebffffee00000affffed000001000019fffff6ffffd7fffff5fffffb000010",
            INIT_49 => X"ffffea000001ffffeffffff0ffffe700000000000a000015000008000003000014",
            INIT_4A => X"fffffd000008fffff5ffffed00000500000a000002000000000002000008fffffe",
            INIT_4B => X"fffffd000002000011fffff300000400000dfffff400000bffffe8ffffedffffeb",
            INIT_4C => X"fffff8fffffe00000200000a00000cfffff6000015000007fffff6fffffd000002",
            INIT_4D => X"000000ffffff00000700000b000003ffffff000005ffffe600000bfffffefffffc",
            INIT_4E => X"fffff8ffffeafffffc000001ffffeb000007000006ffffe5fffff1fffff4fffff4",
            INIT_4F => X"fffff2fffff5ffffe7fffff0ffffef000005000009fffff1000001fffff6fffffb",
            INIT_50 => X"ffffe7fffff9ffffe5ffffe8ffffe7000000000009ffffebfffff100000cffffed",
            INIT_51 => X"fffffdfffff900000affffeefffff9fffffdffffee00000a000001000009000005",
            INIT_52 => X"ffffe5fffff1fffffcffffebffffecfffffd000000000000fffff9fffff500000f",
            INIT_53 => X"fffffcfffffe000002fffff5fffff4000009ffffeffffffffffffa00000900000b",
            INIT_54 => X"000002000004000004fffff1000000000001ffffe9fffff5ffffe6ffffe6000000",
            INIT_55 => X"fffff3fffffc000001fffff9fffff1fffff100000f00000f000007000004fffff0",
            INIT_56 => X"ffffeb00000100000b000003fffffc000007fffff100000000000b000000fffff5",
            INIT_57 => X"000000000002ffffec00000800000dfffff5ffffee000009ffffeafffff9000002",
            INIT_58 => X"ffffe3fffffefffff6fffff3fffffffffff2fffffc00000700000f00000fffffec",
            INIT_59 => X"ffffeb000000fffff0ffffe3ffffedfffff8ffffec00000bfffff9fffff2fffff6",
            INIT_5A => X"ffffff00000d000000ffffec00000effffeefffff600000d00000700000500000e",
            INIT_5B => X"ffffeafffff0000000000004fffff0000007ffffedfffff4fffff8ffffef000004",
            INIT_5C => X"000007ffffe4000004fffff2ffffe7000002000000000005ffffee000007fffff9",
            INIT_5D => X"ffffefffffe0fffff4ffffdeffffdfffffe6000003000000ffffe1ffffed00000b",
            INIT_5E => X"fffff3ffffe9fffff0000000fffff6fffffdfffff3fffff6000013000006fffff8",
            INIT_5F => X"fffffdffffe6000007fffff4ffffe7000005ffffecffffebfffff8fffffa000001",
            INIT_60 => X"000005fffff400001000000bffffecffffffffffe3000005000013fffff2000007",
            INIT_61 => X"000006ffffebfffffefffff2fffff5000000ffffe7fffffbfffffcffffe5fffff3",
            INIT_62 => X"fffff6000005ffffe800000f000006ffffecfffff9fffffdfffff4fffff4fffffd",
            INIT_63 => X"ffffebfffffd000004ffffef000006fffffdfffffe000014ffffed000012fffffd",
            INIT_64 => X"000004000005fffffdfffff7ffffed000000ffffff00000300000a000003000009",
            INIT_65 => X"000009ffffecfffff7ffffefffffecffffeb000000ffffe9000005000001000011",
            INIT_66 => X"ffffeefffff4fffff0000006000009fffffc000003fffff3ffffeefffff2fffff7",
            INIT_67 => X"ffffe8fffff4fffff400000b000009ffffe2ffffefffffe4000002ffffe4ffffe9",
            INIT_68 => X"000005fffff9fffff3ffffeafffffeffffecfffffa000002000002fffff5fffffe",
            INIT_69 => X"fffffe000000000000ffffe7ffffef000007ffffecffffe7fffff5fffff1fffff6",
            INIT_6A => X"000008000008000008fffffeffffedfffff6fffff000000600000300000b000000",
            INIT_6B => X"ffffeb000000fffff7fffff5000005ffffe3fffffcfffffc000005000000000005",
            INIT_6C => X"fffffa00000f000008000003ffffe9fffffc00000effffe9ffffea00000bfffff9",
            INIT_6D => X"fffffdffffe900000c00000400000200000400000b00000f000008000009000005",
            INIT_6E => X"000008000000000006fffff2fffffe00000affffe9fffffffffff600000affffec",
            INIT_6F => X"fffffcfffff7fffff3000001fffff8000000fffff600000efffffaffffeb000006",
            INIT_70 => X"000006fffff8000004ffffed000000fffff1fffffefffff600000c00001200000e",
            INIT_71 => X"fffff600000a000005fffffcfffff7fffffc000008ffffedffffeafffffdfffff4",
            INIT_72 => X"fffff1fffff9fffffcfffff9ffffea00000dfffffaffffef000013fffffb000005",
            INIT_73 => X"fffff2000003fffff5fffff0ffffff00000affffec000002ffffe500000affffe9",
            INIT_74 => X"ffffeffffff2ffffebffffecfffff2000005fffff9000007fffff4000002ffffef",
            INIT_75 => X"00000b000005000006ffffed000000fffff1fffff6fffffe000000ffffecfffffb",
            INIT_76 => X"00000ffffff600000a000009fffff4fffffafffff9ffffe7fffffaffffff000004",
            INIT_77 => X"ffffeefffff8ffffe9ffffeb000003fffff2ffffeb00000cffffebfffffaffffe6",
            INIT_78 => X"fffffcffffe4fffff8fffff5ffffeafffff000000000000ffffff9fffff3000004",
            INIT_79 => X"fffffbffffeaffffeefffff5fffffafffff1ffffeaffffec000010000005ffffe9",
            INIT_7A => X"ffffebfffff5ffffe5ffffeefffffafffff9fffff5000009ffffeffffff5000007",
            INIT_7B => X"000000fffff5000005fffffafffffaffffec000003fffff100000e000002000003",
            INIT_7C => X"ffffee00000dfffff9fffffffffffeffffff000006ffffeeffffeefffff3fffffa",
            INIT_7D => X"000002000000ffffedfffffafffff7000008ffffe9000011000008000000fffff7",
            INIT_7E => X"00000500002e00002200000000000c000016fffff6ffffeeffffdc00001e00002d",
            INIT_7F => X"ffffc9fffff2ffffd4ffffe9fffffdfffff9000031000035fffff4000026000032",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY5;


    MEM_IWGHT_LAYER1_ENTITY6 : if BRAM_NAME = "iwght_layer1_entity6" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000038fffffc00000b00003effffd9fffffb00001effffb3ffffa7000012ffffa9",
            INIT_01 => X"ffffe2ffffe8ffffe9000017000029000016fffff200000b00000b00000a00000a",
            INIT_02 => X"ffffffffffe1ffffb7ffffecffffe4ffffea000003fffffa00000f00002200002a",
            INIT_03 => X"000007fffff200001a00003500002d00001500003afffff3000010ffffdf000018",
            INIT_04 => X"000026fffffcffffe9000022ffffd500000d00000e00000f000003fffff0ffffe1",
            INIT_05 => X"fffff7000013ffffe4ffffbeffffd300000100002e00000400002afffff8000016",
            INIT_06 => X"000001000006ffffc9000012fffff5ffffe000001800000e000026fffffb00000c",
            INIT_07 => X"000013000000ffffdc000013000008000015000018000007fffffdffffddffffea",
            INIT_08 => X"000018ffffff00000400000c000038fffff5000015fffffa000006ffffffffffd6",
            INIT_09 => X"ffffd100002afffff1ffffe4000015000003ffffecffffe7fffff3fffffcfffffe",
            INIT_0A => X"ffffcb00000efffff4ffffd9ffffd2ffffbd000014fffff2ffffc6000020000005",
            INIT_0B => X"fffff7ffffc600000500000c00000000001affffe9000002000023000001fffffe",
            INIT_0C => X"00001d00001a00002e000016ffffe5ffffdcffffce00003ffffffc00000a000012",
            INIT_0D => X"000013000000fffff000002a00001bffffe3fffff100000dfffff900000b000009",
            INIT_0E => X"00000effffec00000300000d00000500000a00002d00003100001900001cffffed",
            INIT_0F => X"000034fffffc00001c00000cfffffdffffff00001700000a000026000018fffff7",
            INIT_10 => X"00001e00002d000016ffffeefffff4ffffeffffffc000008000006ffffe6000014",
            INIT_11 => X"00000dfffffe000013000003fffff2ffffd3ffffe4ffffaafffff4ffffdbffffe9",
            INIT_12 => X"fffff9000035000008fffff9000018ffffe6fffff6ffffe3fffff8000005ffffeb",
            INIT_13 => X"ffffed00001dffffe900000d000010000017fffff100001d00001f000019ffffff",
            INIT_14 => X"000006fffff8ffffbfffffcfffffdaffffcdfffff0fffff8ffffaffffff8fffff8",
            INIT_15 => X"ffffe8fffff9000003ffffcfffffefffffff00000900002b00000dffffeb000000",
            INIT_16 => X"000017fffff300000e00001cffffd700000100000c000008000015ffffda000000",
            INIT_17 => X"fffff400000cffffef00000d000007fffff9fffffe00000c000007000001ffffe1",
            INIT_18 => X"ffffeffffff000000affffe1ffffedfffffeffffdcffffe4ffffe300000200000e",
            INIT_19 => X"fffffdffffe9000004fffff9ffffee00000dffffedfffff7ffffe8ffffdf000002",
            INIT_1A => X"00000cfffff5fffff0fffff4ffffe4ffffebffffd4ffffedfffff7000009fffff9",
            INIT_1B => X"000000fffff4000004000001fffff900000fffffed000000000003fffffefffffa",
            INIT_1C => X"fffff2000000ffffebffffeefffffbffffe5000003000002ffffedffffe9000001",
            INIT_1D => X"000000fffff6fffffd000007ffffe9fffff4000006ffffebfffff0000002fffff7",
            INIT_1E => X"000007fffff2000003000009fffff1000008ffffe9ffffecfffffdffffeb00000a",
            INIT_1F => X"fffff3fffff1fffffe00000dfffff5fffff5000016ffffff00000dffffe8fffff8",
            INIT_20 => X"ffffe9fffffdffffe6fffff8ffffe9000013000012000000000004ffffe8ffffea",
            INIT_21 => X"000005fffff1fffffefffffeffffedffffe4fffff6ffffea00000f000006000005",
            INIT_22 => X"ffffee00001100000b00000afffff7000001000000ffffe8000002fffff1ffffe4",
            INIT_23 => X"fffff7ffffed000003fffff9ffffeefffffdffffe5fffff4ffffebfffff3ffffe9",
            INIT_24 => X"00000800000cfffffefffff7fffffb000010000016fffff800000000000cfffff9",
            INIT_25 => X"000004fffff6000001fffffd000000000011000014000019fffffd000000000020",
            INIT_26 => X"000000ffffe8000000000002fffff6fffffafffff9fffffd000011fffff5000005",
            INIT_27 => X"ffffefffffefffffecffffe0000002fffff7ffffe8ffffffffffe6fffff1ffffeb",
            INIT_28 => X"fffff2ffffebfffff7000000ffffe0fffff5ffffe3ffffec000000fffff4ffffe0",
            INIT_29 => X"000020fffffd00000cfffff900000ffffff7ffffe6ffffe0000008000002fffffd",
            INIT_2A => X"fffff1000008ffffed000006000000000000000009000012fffffa00000bfffff3",
            INIT_2B => X"ffffd9fffffc00000bffffdb00000c000000ffffe6ffffe8ffffe9ffffdcfffff4",
            INIT_2C => X"00000f000012000011fffffafffff3ffffedffffedffffebffffeafffff0ffffe6",
            INIT_2D => X"fffff8fffffaffffe3fffff8fffff0000008000004ffffe600000effffe5fffffc",
            INIT_2E => X"fffff5ffffec000003000001fffffafffff7fffff4000002ffffe8fffff0fffffe",
            INIT_2F => X"00000700000afffff0fffff1ffffea000009ffffffffffeafffff1000000fffff6",
            INIT_30 => X"00000efffff9fffffaffffe3fffffefffff9fffff2fffffa000008ffffebfffff0",
            INIT_31 => X"00000e000007000004ffffee00001a000019ffffffffffe9ffffebfffff9fffffc",
            INIT_32 => X"00000600005700003a00006200004a00004200003c00001c00000500001a000018",
            INIT_33 => X"ffffe5ffff74ffffb8ffff83ffffaeffffb6ffffc0fffff7ffffef000000ffffc6",
            INIT_34 => X"fffffd000006fffffd00006300000f00001b00001cfffff4ffffe5000012fffff5",
            INIT_35 => X"ffffe0000004fffffa00001800001affffbeffff63ffffebffffc4ffffbcffffdc",
            INIT_36 => X"000000000000000008000012fffff400000afffff600005400003400002affffed",
            INIT_37 => X"00000700002d000016000006fffff4fffffcfffffa000011000009000000ffffe5",
            INIT_38 => X"fffff1ffffe5ffffbb00000900002c00001400003a000019000030000014000016",
            INIT_39 => X"000047000002000024000025fffff1fffff5000007ffffb0ffffe0fffff5ffffc3",
            INIT_3A => X"ffffcbffff84ffffc9ffffb5fffff5fffffdffff6effff9e000023ffffff00002a",
            INIT_3B => X"00003100001dfffff9ffffed00000400000effffeeffffddffffdfffffc1fffffe",
            INIT_3C => X"000012fffff9fffffbfffffdfffff900001f000031ffffdc00002300000f000065",
            INIT_3D => X"ffffd6ffffe1fffffc00003100001f00000affffa8ffffe4fffff0ffffd7ffffd6",
            INIT_3E => X"00000700002c00001400004900000a000022000016000003ffffe7ffffde000014",
            INIT_3F => X"00000100001700002100002200000b00000f000028ffffea000002fffff6ffffed",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffb000018fffff6ffffe8000016ffffe100000effffda000002000015fffffc",
            INIT_41 => X"fffff900000e000013000013000009000002000002fffff900001500000e00001b",
            INIT_42 => X"fffff1fffffd00000000001d000001fffff6fffff8fffff6ffffeaffffdcfffffd",
            INIT_43 => X"ffffee00000ffffffd00000f00000cffffe8000009fffffbfffff800000a000000",
            INIT_44 => X"ffffcdffffebffffe4ffffe600001efffff3000001000021000000000009fffff3",
            INIT_45 => X"00002fffffa2ffffb5fffff5ffff9bffffd6ffffb8ffffffffffb8ffffe6ffffc7",
            INIT_46 => X"ffffecfffff900002effffe9fffff400000c00000700002a000020000032000024",
            INIT_47 => X"fffff800000effffeafffffefffff300000ffffffffffff7ffffdefffffbfffffa",
            INIT_48 => X"00003bfffffafffff3ffffe400001dffffd0fffff000000e00000f00000cfffff0",
            INIT_49 => X"00001400000b000013ffffcfffffc0ffffbbffffd3ffffd2ffffe000000e000019",
            INIT_4A => X"ffffe500000e00001a00000b000009000017ffffe6fffff900000100000ffffff1",
            INIT_4B => X"000004000014000018fffffc00001b00001afffffdfffffeffffff000005fffff6",
            INIT_4C => X"ffffeffffff7000017fffffd00002100001200000200001000000e000008fffffc",
            INIT_4D => X"ffffd5000003ffffc4ffffd2ffffeeffffccffffedfffff900000cffffd0ffffef",
            INIT_4E => X"fffff3fffff000002100003b00002c00001900002f00000700000000001affffcb",
            INIT_4F => X"ffffc4fffff2ffffcaffffe6ffffeaffffd9ffffcfffff94ffffe5ffffe0ffff96",
            INIT_50 => X"ffffee000009000013000000000016000031000040ffffdffffff5000009ffffe9",
            INIT_51 => X"00000f000029000013fffff6000005ffffd3ffffdbffffeeffffedffffe200001d",
            INIT_52 => X"fffff6fffffffffff9ffffea00000500004d00000f00003200004d00001ffffffc",
            INIT_53 => X"000021000025ffffe3fffff6ffffe9ffffdafffff400000afffff5ffffea000002",
            INIT_54 => X"fffffeffffecffffeb000000ffffe1000000fffff5ffffe0ffffd7000024ffffff",
            INIT_55 => X"000029000016fffff3fffffbffffdffffff3fffffefffffbfffff200000200001d",
            INIT_56 => X"fffff9000022000037000005000015ffffdeffffe7ffffde000017000018000015",
            INIT_57 => X"000001000008000012fffff400000bfffff6ffffe4ffffd8ffffef000011000001",
            INIT_58 => X"00002600003900005f00001200000d000001000019000019ffffe9ffffe0ffffda",
            INIT_59 => X"fffffc00001200001100000b000009000024000006fffff400002600002800002e",
            INIT_5A => X"ffffeafffff0fffff8ffffecffffb4ffffd0fffff6ffffe8ffffeb000008000026",
            INIT_5B => X"00002e000022ffffe5fffffdffffe100000effffe5ffffee000000000019ffffee",
            INIT_5C => X"ffffeffffff600002a00001cffffd8ffffe8ffffe6ffffbfffffd8ffffe7ffffe7",
            INIT_5D => X"fffff2ffffd1ffffeafffffe000042000040fffff8ffffd8ffffdcffffc1ffffde",
            INIT_5E => X"fffffdffffe500001700000a000019000040fffff7ffffeaffffd3000004ffffee",
            INIT_5F => X"00001e000000ffffd2fffffe00004cffffbfffffdbfffffafffff6fffff6fffffe",
            INIT_60 => X"ffffff00000a00000500000100000800000dfffff0fffff1ffffe5000005000017",
            INIT_61 => X"ffffcdffffd8ffffddfffff3fffff800000700000500000500002200001300000e",
            INIT_62 => X"000008000030000021000019000006000004fffff4ffffeb000009ffffeefffffa",
            INIT_63 => X"fffff6ffffe600000dfffff4fffff6fffffcfffff3ffffde00000100001f00000f",
            INIT_64 => X"00001800000cfffff4fffff4ffffe5ffffb0ffffd4ffffeeffffdb000012ffffe7",
            INIT_65 => X"000001fffff7000012fffff900001800002f000011fffffb000017000002ffffe3",
            INIT_66 => X"ffff9bffffebfffff600001affffe8ffffe8ffffe300000afffff6ffffdfffffed",
            INIT_67 => X"fffffc000006ffffe0ffffea000019000018ffffc6ffff87ffff78ffffb9ffff9a",
            INIT_68 => X"ffffe9000011ffffccffffc100000affffdcffffb300000200000e00001b000026",
            INIT_69 => X"00002900000a00002c00002bffffef000014000027000000ffffee00000affffd6",
            INIT_6A => X"ffffeb000008ffffeffffff600001700000cfffff6000027000039ffffff000022",
            INIT_6B => X"00001bfffff400000100002000000cfffff3fffff2fffffdffffe0fffff5fffff9",
            INIT_6C => X"ffffcaffffeeffffc9ffffb8fffff6ffffe4fffff400001900001a000026000038",
            INIT_6D => X"fffffefffff900000cffffe9fffff7ffffff000005000011000001000003fffff0",
            INIT_6E => X"00000b00000a00000efffff1ffffdaffffc7ffffc3ffffdcfffffd000009000001",
            INIT_6F => X"000005ffffe1fffff4fffffaffffe3ffffd800002fffffddffffd000001effffed",
            INIT_70 => X"fffffffffffaffffe300002800002200000dffffc8000010000020fffff1fffffd",
            INIT_71 => X"000012000013fffff200000e00003fffffe9fffff2000003000002000003000006",
            INIT_72 => X"ffffccfffffa00000e000019fffff100001b00000f00000dfffff5fffff0fffff0",
            INIT_73 => X"00001100001400001effffc2ffffb0000004ffffbbffffe0ffffb4ffffc4ffffe2",
            INIT_74 => X"ffffda00000700004c00004a00002cffffcefffffa000002ffffe4000011000000",
            INIT_75 => X"00000f00000b00000d000017000000ffffe7fffffbffffdaffffbbfffffcffffed",
            INIT_76 => X"000000fffff2fffff9fffff800000400002200001cfffff8000004000019000023",
            INIT_77 => X"fffff700000000001a00000800000700000000000b000019fffff9fffff7000007",
            INIT_78 => X"000013fffffdfffff7000020ffffef000022000000fffff5000007000005fffffc",
            INIT_79 => X"000030000003ffffebffffd9000010fffff300000b00001900002000000800000d",
            INIT_7A => X"ffffed000017ffffe1fffff5ffffdb00000d000011000000000042000021fffff1",
            INIT_7B => X"fffffcffffe3fffff6000026ffffef00000e000000000029000026fffffa00000e",
            INIT_7C => X"ffffe600000000001d000005000021000006000009000000ffffe8ffffccffffeb",
            INIT_7D => X"00002c000007ffffcc000021fffff4ffffe800003afffffbffffd9000008000019",
            INIT_7E => X"00001400000effffec00000e000001ffffe6ffffffffffecfffffb000029ffffff",
            INIT_7F => X"ffffce00002300001000000200001b00000e00003200001b00002100000c000006",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY6;


    MEM_IWGHT_LAYER1_ENTITY7 : if BRAM_NAME = "iwght_layer1_entity7" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000015fffffdfffff0fffffa00000100000e000010fffffcffffe3fffff5ffffed",
            INIT_01 => X"ffffdd00001a00001100002f00002000002000000e00003200001600003600000e",
            INIT_02 => X"00000700003b000018000007000015ffffe800004200001c00001500000c000011",
            INIT_03 => X"000008ffffe800002900000f000010000015ffffda00001c00000bffffeaffffd6",
            INIT_04 => X"ffffeaffffe7ffffc7ffffb8ffffeeffffe4ffffe7ffffebffffd8ffffcd000027",
            INIT_05 => X"fffff500003a000022fffffcfffff2fffffeffffb5ffffb9ffffafffffd5fffff9",
            INIT_06 => X"000009ffffe8000002fffffbffffec000015fffff9000011ffffe5fffff1000012",
            INIT_07 => X"000006000002fffff700000900001800000bffffee00003e000001ffffc8000011",
            INIT_08 => X"00001300002900000300001afffffe00000900001a00000dffffe900000d00000b",
            INIT_09 => X"fffff4ffffeaffffcfffffe2ffffc0ffffe7fffff1ffffb700000effffa8ffffe5",
            INIT_0A => X"ffffd8ffffd5fffffaffffdeffffbbffffc2fffffa00000ffffff2ffffc9fffffb",
            INIT_0B => X"fffffbffff9affffc0fffff0ffffbfffffdfffffec000012fffffdffffe3ffffcc",
            INIT_0C => X"ffffd7fffff2000001ffffeaffffea00001e000000fffff0ffffc9ffffa5ffff97",
            INIT_0D => X"ffffd1ffffd7ffff82ffffcaffffa9ffffabffffbbffffe7ffffeaffffccffffbf",
            INIT_0E => X"000024fffffcffffffffffe6fffffdffffd9ffffe1ffffabfffff000001a000000",
            INIT_0F => X"00001400000200001b00001800000e00001cffffcfffffdd000000000000ffffe1",
            INIT_10 => X"fffffa00003e00003600001700003000004500000fffffd7ffffdf000013000003",
            INIT_11 => X"ffffedffffedffffe000001400003500001100003300003300000effffedffffe3",
            INIT_12 => X"fffff7ffffef00000e000001ffffeb00000700000bffffe9000002ffffefffffe2",
            INIT_13 => X"000024ffffec00001d000008ffffe5ffffcaffffdd000015ffffe3ffffe200001b",
            INIT_14 => X"000006000016000000ffffe700001300002bfffff300001a000031000016000032",
            INIT_15 => X"00001afffff8000043000021000000000039000015000000fffff0fffff3000005",
            INIT_16 => X"000008ffff9effffb600002fffffd1ffffb0ffffeeffffdeffffd2ffffdb000038",
            INIT_17 => X"ffffc3ffff95ffff9700001100000d00000c00003100000400003000002c000000",
            INIT_18 => X"000031000015000032000015000008ffffcd000004000022ffff76ffff90ffffc5",
            INIT_19 => X"fffffb00001a00002b00001100004400000cfffff4ffffcfffffe300000400000d",
            INIT_1A => X"000000000000000001fffff3000002ffffe1ffffef00001300001300001ffffff4",
            INIT_1B => X"ffffea000004fffff6ffffe0ffffeaffffa7ffffbcffffd0ffff9affffceffffe6",
            INIT_1C => X"ffffe4fffff1fffffbffffeeffffe1fffffe000002000003ffffde00000bffffca",
            INIT_1D => X"ffffe5fffff0000004ffffc9ffffd8fffff1fffffa000005ffffe2000016000011",
            INIT_1E => X"fffffc00002500002000001c00001f00002e00002d00000fffffe5ffffdaffffd6",
            INIT_1F => X"fffffb000014fffffb000022000005ffffec00000effffcaffffdd000014fffffd",
            INIT_20 => X"fffffaffffe4000019ffffe300000e00001200001800000f000029ffffdf000017",
            INIT_21 => X"ffffffffffedfffff3ffffe0ffffed00000cffffeeffffe9fffff7ffffdf000000",
            INIT_22 => X"000004fffff9fffff100001cffffcbffffe9000013000015000024000011000002",
            INIT_23 => X"00000400000a00001f00002600001c000017000037fffff900000500001a00000c",
            INIT_24 => X"fffff1fffffe000009000004fffff900001e000001fffff800002e000009ffffe3",
            INIT_25 => X"00002100002100002a000019fffff200000affffd6ffffdfffffc7ffffecffffcc",
            INIT_26 => X"000000ffffe6ffffda000010ffffd6ffffeaffffda00000700002400000800001c",
            INIT_27 => X"fffff3ffffe1ffffc4ffffd6fffffbffffd7ffffcaffffe600000afffffdffffe1",
            INIT_28 => X"00003300001700003800000d00001300000000001900000dffffeafffffeffffda",
            INIT_29 => X"00001200001dfffffb000047000000fffff4000004000004ffffd100002c000004",
            INIT_2A => X"00001200001100000400001100001effffecfffffc00002900000600001c000011",
            INIT_2B => X"fffffd00000b000004fffff500001500001600000e00000d000019000011fffff7",
            INIT_2C => X"00001500001b00001100001a00000800000cfffff0fffff1fffff7000009fffff2",
            INIT_2D => X"00003d000063ffffdbffffe5000021fffffdfffff5000018fffff100001e000009",
            INIT_2E => X"ffffeeffffbdffffd9fffffa00001100002200005b00006900004c00002d000047",
            INIT_2F => X"00001c000016000005fffff3000005fffff6fffff9ffffde000004ffffdcffffbf",
            INIT_30 => X"00002800002ffffffafffff9000022fffffefffffb00000100002400003c000014",
            INIT_31 => X"000007000023fffff2ffffde00001a00000100000200001400000b00001100000c",
            INIT_32 => X"000011000014000014000003000021000041000015000026000011fffff9000000",
            INIT_33 => X"ffffed000000000006fffff5ffffeffffffafffff000000dffffea00000e000012",
            INIT_34 => X"000014fffff300000efffff3fffff0000008ffffff00001a00002700000600000f",
            INIT_35 => X"ffffc0ffffc0ffffddffffebfffff6ffffceffffd7fffffe000008fffffe000016",
            INIT_36 => X"fffff1fffffc00000000000700002000000c00004700003400001900004bffffff",
            INIT_37 => X"fffffe00003d00002400002c00002600000500002dffffeaffffda00000900001f",
            INIT_38 => X"ffffea00001d00003200000600000000000c00003c00000500004affffe6fffff5",
            INIT_39 => X"fffff6ffffc3000016000002ffffd8fffff3ffffe7ffffd4ffffd1fffffb000000",
            INIT_3A => X"00001b00001f00000d000002ffffecffffd1fffffa00000b000011ffffe8fffffd",
            INIT_3B => X"ffffe4fffff5ffffdf00001afffffa00000200002400000000000100000a000014",
            INIT_3C => X"000006fffffbfffff7ffffec00001100000afffffaffffd9fffffe00003700001f",
            INIT_3D => X"ffffe200000fffffcf000017000007fffff2ffffdf00001f00001cfffff400001e",
            INIT_3E => X"ffffd5ffffdffffffaffffc7ffffcaffffceffffddffffc4ffffa2ffffe1ffffc9",
            INIT_3F => X"ffffd7000000ffffd6fffff0ffffd8fffff2ffffe6000012fffff0000004000002",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffbfffffd7ffff95ffff91ffffeaffffe8fffff9ffffecfffffbffffe9ffffff",
            INIT_41 => X"00001600000effffe2ffff9dffffb9ffffddffffff000003000012ffffdaffffc6",
            INIT_42 => X"000015ffffe5000013ffffdffffff2ffffcdffffedffffbcffffdf000003000016",
            INIT_43 => X"ffffec000029fffff800002400000cffffff00003700002a00001b00002600000c",
            INIT_44 => X"fffff2000005000009000017fffff2fffff3fffffcfffffaffffffffffffffffe5",
            INIT_45 => X"00000a000007fffffeffffe8ffffe900001d00000100000f000009fffffa00000d",
            INIT_46 => X"fffffbffffd9ffffdffffff3ffffdcffffc4ffffa5fffffeffffebffffef00000c",
            INIT_47 => X"00002900000700000c000019000011000016ffffffffffe9fffff2fffffcffffe8",
            INIT_48 => X"000003000029000010000024ffffdbffffd2ffffeaffffc6ffffff00001cffffe2",
            INIT_49 => X"000018ffffecfffff7ffffff00001e000031000020000033000025000014000000",
            INIT_4A => X"fffff1ffffe7ffffc6ffffd1fffff4ffffb9000001ffffe9fffffdffffddfffffd",
            INIT_4B => X"00001c00002ffffff9fffff200001100002500002e000027ffffdc000017ffffb2",
            INIT_4C => X"00001100001700000bffffe4000013ffffefffffe8ffffb1ffffd2ffffe9000004",
            INIT_4D => X"ffffe2ffffee00000c00001500001900000d00001b000002000019000005000003",
            INIT_4E => X"000005000002fffff4fffff1fffff5ffffeefffff1ffffdcffffcdffffaafffff3",
            INIT_4F => X"ffffe1ffffe6000009ffffe9ffffe700000100000f00000d000010fffffcfffff7",
            INIT_50 => X"00001600003600001100002a00002d00000500003600001a00000fffffe5fffff2",
            INIT_51 => X"00002500002b00001400000dffffe6ffffe8000015000017ffffe500001200005f",
            INIT_52 => X"ffffd0000002ffffacffffb1000010fffff9000001fffff400003100001e000005",
            INIT_53 => X"00000bffffeaffffe4ffffd1ffffcbffffeafffff6ffffe7ffffc900001affffe8",
            INIT_54 => X"00000a00002c00003a000009000036000000000019fffff500002700000c000025",
            INIT_55 => X"ffffbefffff4fffff6ffffcdffffeffffff9ffffa9ffffd6000008ffffde00000d",
            INIT_56 => X"000011ffffe3ffffeeffffe6fffff1000008ffffdbffffeaffffeeffffdeffffcc",
            INIT_57 => X"ffffbbfffff200001dfffff5fffff4fffff7ffffdffffff6000013fffffaffffd6",
            INIT_58 => X"fffffa000003000016fffff7fffff3ffffeaffffd1ffffd0ffffd3ffffcafffffb",
            INIT_59 => X"fffff2fffffb00002f00000d00001f000059ffffeb00001100001c000020000011",
            INIT_5A => X"00000afffff7ffffdfffffdc000002000002fffffdffffc7ffffe6ffffdbffffaa",
            INIT_5B => X"000048000003fffff5000042000002000023000001000011000007fffff1000000",
            INIT_5C => X"000010ffffecffffeffffff2ffffe4ffffd6fffffaffffbf000016ffffc5fffff9",
            INIT_5D => X"ffffe3000011ffffc7ffffebfffff5ffffd1ffffc0ffffdf000024000011000007",
            INIT_5E => X"fffff1000021000002000001000010000002fffff000001500000cffffed00000b",
            INIT_5F => X"000004000023fffffbffffe6000007fffffdfffff9fffff9fffffe000003fffffe",
            INIT_60 => X"ffffe6ffffff000013fffffbffffecffffe8ffffeefffffc00001b000020fffffe",
            INIT_61 => X"00000efffff5000000fffff2000018ffffd7ffffee000036000013000007000013",
            INIT_62 => X"ffffe9ffffccffffd900002f000014ffffd400002c000034fffff900002d00000e",
            INIT_63 => X"fffffbffffed00000400000600002e00000600001300002f000012000020000037",
            INIT_64 => X"000004ffffd1ffffdcffffc400000700000cfffff9fffffc00002500002efffff3",
            INIT_65 => X"ffffcefffffd00000dffffd3ffffe000001200002000001e000000000016ffffe7",
            INIT_66 => X"fffff5000004fffffaffffe7ffffe700001affffd3ffffbaffffe9000020ffffe0",
            INIT_67 => X"fffff000000400000100000a000012000007000011000019000014ffffeb000033",
            INIT_68 => X"ffffe9fffff6ffffecfffffc00002300001900001300001600000cfffffc00000c",
            INIT_69 => X"000003fffff6000015fffff6fffff4000003000010fffff9ffffdffffff6ffffeb",
            INIT_6A => X"ffffff000009fffffa000017ffffebffffedffffdf000010000002ffffb200001d",
            INIT_6B => X"ffffd2fffff800000dffffe900000900000100002800001ffffffe000018000037",
            INIT_6C => X"fffffe00000000000000004d00002400000600002c000009ffffd4ffffcfffffd4",
            INIT_6D => X"fffff000002300000f000003fffff400001e000034ffffdd000010000023fffffd",
            INIT_6E => X"00000cfffff0fffff2000020000002ffffe100000e000000000009000009000012",
            INIT_6F => X"000000000012000002000025000035fffff300002400001300000300000700001a",
            INIT_70 => X"00000300004600000affffae000031000036ffffb3000016000014ffffaeffffd9",
            INIT_71 => X"000000fffffcffffe3ffffdafffff1fffffaffffed000006000021fffff4000013",
            INIT_72 => X"fffff7ffffe8fffff800000900000000000000001dfffff600000bfffffbffffc9",
            INIT_73 => X"ffff9b000006000020ffffc1000015000019ffffbbffffdeffffd1000015fffff6",
            INIT_74 => X"ffffef00003900002bfffffa00000b000036ffffdb000007000004000039000005",
            INIT_75 => X"00004afffffa000012fffffc00000d000020000009fffff200001cfffff5000000",
            INIT_76 => X"ffffdf00002dfffff4ffffc6000016fffffbffffc200005200004500001900004a",
            INIT_77 => X"000014ffffceffffffffffe9000005000039000017000017ffffda00001d000026",
            INIT_78 => X"00000000002affffd2fffff200002cffffdaffffe200002700001700000a000005",
            INIT_79 => X"00002fffffd900000000003fffffd1fffff100002cffffdbffffef000037ffffd4",
            INIT_7A => X"000006000018ffffeeffffe5fffff500002cffffc9fffff6000010ffffd0ffffcf",
            INIT_7B => X"000002000030ffffccffffe200000200002bffffe8ffffe100002d00000effffcc",
            INIT_7C => X"00001900000700001a00001500000100003100003fffffac00000300001cffffdc",
            INIT_7D => X"000001fffffbffffdefffff400001500000afffffd00000dffffd400000dfffff1",
            INIT_7E => X"fffff3fffffa00003f00000cffffb600004b000023ffffd0000033fffff2ffff9f",
            INIT_7F => X"00000ffffffe00001cffffe9000012fffff5000014000005fffff8ffffe9fffff7",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY7;


    MEM_IWGHT_LAYER1_ENTITY8 : if BRAM_NAME = "iwght_layer1_entity8" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00001cfffffcffffcb00000bfffff6ffffcdffffe3fffff8fffff3000015000016",
            INIT_01 => X"00000a000050ffffddffffe9000023ffffebfffff500002b00001affffefffffe8",
            INIT_02 => X"000014000015fffff6ffffc100002e000000ffffc800003bffffffffffdcffffcc",
            INIT_03 => X"00002700000a000023ffffeafffff1000005ffffe8000001ffffe4fffff6000002",
            INIT_04 => X"ffffc600000dfffff7fffff0ffffe9ffffcaffffe4000003ffffedfffffc00002f",
            INIT_05 => X"00002dffffbbffffc9000020000016ffffcdffffcffffff9000016000033ffffd2",
            INIT_06 => X"fffff300002500005fffffc0ffffc7000015ffffaeffffc7fffff3ffffeeffffcb",
            INIT_07 => X"000008000037ffffd6fffff3ffffe7ffffeffffff6000010ffffe8fffffb000033",
            INIT_08 => X"ffffc9000052000011ffffe8ffffec000007000005ffffea00000000000dfffff2",
            INIT_09 => X"ffffd3fffffb00001fffffed00001c00000e00001bffffedffffce000011fffff0",
            INIT_0A => X"fffffd000015fffff5fffffc000028ffffd6ffffc000000effffd4ffffff000004",
            INIT_0B => X"ffffedfffffe00000bffffeb000000ffffeffffffc00000a00000100000fffffc1",
            INIT_0C => X"000009ffffe3000031ffffd9ffffbeffffe9fffff3ffffdbffffe100002affffeb",
            INIT_0D => X"00001300004c000026ffffe9000002ffffcdffffe1ffffe4ffffceffffe800000b",
            INIT_0E => X"ffffd2ffffe0ffffe0000004000007000005000003ffffed00000a00001f000008",
            INIT_0F => X"00000d000027000021fffff700000300002bfffffbfffff3000031ffffc6ffffdd",
            INIT_10 => X"fffff0000010fffff900001400003d00004b00005100004300000f000029000008",
            INIT_11 => X"000008ffffe5ffffe1ffffccffffc7fffffb000008ffffdd00000b000012000009",
            INIT_12 => X"000002fffffcfffff600000a000003000001fffff100002100000c000006000005",
            INIT_13 => X"000006fffff500000f000017ffffed000018fffffefffff600000800000bfffff4",
            INIT_14 => X"00002200001100003e00000c000013ffffe8fffffe000003000011fffff9000015",
            INIT_15 => X"ffffc7ffffd9000014ffffc4fffffbfffff4ffffdcfffffb000036ffffd2000002",
            INIT_16 => X"00004a00000f00004d00007000004b000016000004000008ffffff000001000000",
            INIT_17 => X"000027000019fffffc00002600000200000bffffec000033000015ffffee00003e",
            INIT_18 => X"ffffd8fffff800002efffffa00000700002effffdbffffd300001b00001e000007",
            INIT_19 => X"ffffb1ffffe0ffffd6000000ffffe6000004000000000006fffffb00002d00000c",
            INIT_1A => X"ffffdf00000e00000e000017ffffe2fffff8000039ffffb3ffffd8fffff2fffff6",
            INIT_1B => X"000016fffff7ffffe600000fffffe0fffff1ffffc4ffffe8ffffd100001dfffff8",
            INIT_1C => X"000031000011ffffe7fffffe000033ffffe7ffffe100001e000001ffffdfffffbf",
            INIT_1D => X"ffffbd00000f00001c00001c00001f000014fffffbfffffb000019ffffffffffec",
            INIT_1E => X"ffffcbffffa3ffffa8fffff6000008000008000029ffffeeffffc9000039ffffc0",
            INIT_1F => X"00002000000f000041000031000011000008ffffe2000003ffff9fffffaaffffbd",
            INIT_20 => X"fffff4ffffeeffffbeffff9cffffb0ffff7dffffda00000e00001f00001500000c",
            INIT_21 => X"000005ffffe800000700001000001f00001800001b000033000041fffffffffffe",
            INIT_22 => X"000003fffff600001e000018fffffd000000fffff9fffff4fffff9ffffe9fffff4",
            INIT_23 => X"ffffe100003dffffdeffffddffffeb000009ffffe3ffffe3ffffd9000009000001",
            INIT_24 => X"00000cfffffeffffe9000015fffffafffff100000dfffff9ffffdf000020000000",
            INIT_25 => X"fffffb000011000012fffff0fffff9fffff8ffffd7ffffcf000022000015ffffeb",
            INIT_26 => X"00002dfffff0fffff8000008ffffc500000b000004ffffff000009000010000008",
            INIT_27 => X"00001effffe6ffffbf00001d00000d00000b00002100001f00001700000800000c",
            INIT_28 => X"00002800001100001500002c00003300000b000013ffffe3000017000003ffffd1",
            INIT_29 => X"000003fffff9000024ffffe500000b00000c00001600000ffffff9000018fffff4",
            INIT_2A => X"00003900005500001700004800003400000200004400002bffffc700000c000028",
            INIT_2B => X"00002dfffffc00002400000300001e000003ffffef000000fffffcffffdaffffde",
            INIT_2C => X"000014fffff600002400001efffff100001bfffff2fffffa000022fffffafffff3",
            INIT_2D => X"ffffe3fffffb00001cffffdf00001a00000300001c00000b00001900000c00000e",
            INIT_2E => X"000003000007fffff500001800002affffee000000000004ffffd900000ffffff1",
            INIT_2F => X"00000b00000700001efffff0000003000026ffffe400002dfffff400000bfffff8",
            INIT_30 => X"00000bffffb200000a000015fffff400001a00000300001100000cffffdb000004",
            INIT_31 => X"ffffeffffff9000016ffffd6ffffc6000001000029ffffecffffd9fffff8ffffef",
            INIT_32 => X"ffffe7000015000006ffffd5000017000012ffffe000000900002900003a000034",
            INIT_33 => X"000001fffff8fffff900001500001c00000d000014000011ffffff000025000007",
            INIT_34 => X"000009ffffef00002b00000b00000f00000c00000c00000600001affffe8fffff1",
            INIT_35 => X"000017ffffe0000016000000fffffd000002ffffee00000bfffff7fffffa000006",
            INIT_36 => X"000011000010ffffe5000002fffff0fffff2ffffecfffff8000014fffff4000004",
            INIT_37 => X"ffffefffffe9ffffe9ffffe7000006fffff9fffff600000f000004000000ffffe6",
            INIT_38 => X"ffffccfffff000003c00001f000016000012fffffb000032fffffcffffdffffff9",
            INIT_39 => X"000012000035ffffeefffffaffffbdffffe0000009ffffd1ffffe6ffffe1ffffe8",
            INIT_3A => X"000002fffff5ffffff000022ffffd900003800001e000032000053000052000013",
            INIT_3B => X"ffffdafffff5000000000015fffff500001e000010ffffe8fffff7ffffdd000039",
            INIT_3C => X"000045ffffff00000500002c000021000016000020ffffefffffe9fffff4fffff5",
            INIT_3D => X"ffffe8ffffc0000007ffffde00000fffffeeffffefffffe700002a000015fffff9",
            INIT_3E => X"000013ffffebffffee000022ffffe1000036ffffc5000028000019ffffa4000015",
            INIT_3F => X"000025000009ffffab000033ffffdeffffc5ffffee000003ffffffffffbdffffe2",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffaefffff0ffffb2ffffb1ffffbcffffd7ffffddfffff3ffffd1ffffe1ffffee",
            INIT_41 => X"00000100000c00001800001effffe2fffff400000000000b00000100001cffff97",
            INIT_42 => X"fffffe000005ffffedfffffefffff8000027ffffdf00001100001dfffff2fffff7",
            INIT_43 => X"ffffe7000020ffffe3fffff7000023fffff9ffffcdffffec000002ffffddffffe7",
            INIT_44 => X"000010000034000002fffff2ffffd4ffffe9ffffe4ffffee00000900000dffffef",
            INIT_45 => X"000008000004000028000017000008000014fffffcffffedfffff700001300000b",
            INIT_46 => X"000020000025ffffd300000300002f00001700003c00002b00000b000034000025",
            INIT_47 => X"fffff9ffffdf000013000016000027000012ffffea00000efffffc000012000025",
            INIT_48 => X"00000f00000b00001200001b000016000002ffffe7ffffe3ffffd1fffffcffffed",
            INIT_49 => X"00002e00001a00000600001b00002600002100000700000100000b00000a000013",
            INIT_4A => X"ffffd300002e000003fffff300000b000015ffffd7000018fffff7ffffb900000e",
            INIT_4B => X"000028000009ffffc7ffffc7ffffabffffaeffffeffffff0ffffc3fffff2ffffc4",
            INIT_4C => X"00000700002dffffd8ffffea000025fffffd00001d000010000027000030000003",
            INIT_4D => X"fffffbffffe1fffffe000009fffffdfffff6000010ffffed00000000000fffffca",
            INIT_4E => X"00002b000015000000000048000060000016fffffafffffd000003ffffec000008",
            INIT_4F => X"000015000008ffffeeffffd6ffffe5ffffbcffffb8000004ffffe0ffffd700000b",
            INIT_50 => X"00001a000003000012000009fffff0000006ffffea000009000006ffffd4fffff8",
            INIT_51 => X"fffff8ffffec000008ffffe8000009fffffffffff1000007000022fffffb000002",
            INIT_52 => X"00001e000036ffffe4ffffbeffffe900000100002affffeb000019000013000000",
            INIT_53 => X"00002800002800004100001100004d000047000013000042000037000017ffffeb",
            INIT_54 => X"00001a00004b000038000022000017fffff9000008000018000045ffffe800000e",
            INIT_55 => X"00003e00002100002c00002600001f00002e00002e00001700003e00003700004a",
            INIT_56 => X"fffff5ffffe6fffffcffffc900001000001600002ffffffffffffcffffe7000035",
            INIT_57 => X"fffff0fffff3fffff0ffffc7ffffdaffffc800000b00000bfffff000000b000004",
            INIT_58 => X"00002e000023000019000003000012000000ffffdfffffd900000000000900000a",
            INIT_59 => X"fffff1ffffd100002600000000000afffff9ffffeafffff7000013fffff2000018",
            INIT_5A => X"ffffe9000006000021ffffd5ffffe400001d00000e00001b000008ffffeafffff0",
            INIT_5B => X"ffffe1ffffdfffffec000000fffff0fffffbfffff6000022fffffbfffff9000027",
            INIT_5C => X"fffffc00002900002afffffcffffc9ffffbbffffbafffff4fffff8ffffd8fffff1",
            INIT_5D => X"fffff5000011000034ffffe2ffffc7ffffdb00000b000023000007fffff1000024",
            INIT_5E => X"00000afffff1000029000008000000ffffc3000000ffffef00000600000d000022",
            INIT_5F => X"00000a000000fffffefffff5ffffebfffff6000019fffffe00002b000017fffff4",
            INIT_60 => X"000004fffffbfffffd00000effffc4000012fffff7ffffdcfffff5ffffda000007",
            INIT_61 => X"ffffdbffffebffffefffffe0ffffd2000000ffffed000011ffffe0000007fffffd",
            INIT_62 => X"00000efffffbfffff8000024ffffdcffffefffffe7000018ffffee000006fffff0",
            INIT_63 => X"fffff1fffffcfffffd00000c000023000033ffffccffffddffffe400000d000017",
            INIT_64 => X"00000bfffff9ffffe9fffff900000effffccffffd4fffff9ffffe1fffff3ffffcb",
            INIT_65 => X"ffffdc00002fffffecffffe500004900005300001200001200004000003d00002c",
            INIT_66 => X"fffff600000c000003fffffd00000cffffe3ffffd7ffffd8ffffd8ffffeb000018",
            INIT_67 => X"00001affffdaffffdd000031000024fffff1ffffebffffdfffffe2fffffdffffff",
            INIT_68 => X"ffffe4000015000057000039fffff800001a000039fffff8fffff1fffff3ffffea",
            INIT_69 => X"ffffdbffffdaffffe6ffffd5fffffeffffdcffffc6ffffcaffffe0ffffe7000029",
            INIT_6A => X"fffffa00001b000004ffffff000006ffffee000000000005fffff1ffffd5fffff6",
            INIT_6B => X"000022000024000013000004ffffee000000000009ffffee00000affffff000012",
            INIT_6C => X"000022000013000014fffffeffffd4fffff8fffff900001300000d000009000010",
            INIT_6D => X"00006500005600002700004c000029fffff400002100000000003d000036000036",
            INIT_6E => X"fffffc000018fffffdffffc3ffffd6fffff9000012fffff7ffffddffffff000051",
            INIT_6F => X"00004200004800002f00005700004000004400003300006c000052fffff9000014",
            INIT_70 => X"ffffca000000000014000016000008ffffb9ffff98ffff83000000000011ffffdd",
            INIT_71 => X"00000cfffff3ffffd600002cffffe5ffffe1fffffbffffe0ffffc5ffffc2ffffaf",
            INIT_72 => X"000020000019000003000013fffff9ffffeb00000e00001700000a000010000010",
            INIT_73 => X"00000900001bffffdafffff8fffffb00000cfffff8000001fffff8000005fffff6",
            INIT_74 => X"fffffd00002700002000001200000100000400001400001e00000d00000d000023",
            INIT_75 => X"ffffdb00001effffee00001700002900000effffe3000000ffffc3ffffdffffff4",
            INIT_76 => X"000016fffff1fffff0ffffc6fffff0ffffe3000003ffffffffffe7000004ffffcb",
            INIT_77 => X"fffff7ffffd4ffffbaffff8cfffffbffffceffffca00002300002700001f000013",
            INIT_78 => X"000040000047000036fffff2ffffeaffffef00000b000013ffffe000001a00000d",
            INIT_79 => X"fffffefffffa00000600001c000032ffffde000000fffffd00000900002800000b",
            INIT_7A => X"ffffb8fffff5000006fffffb00004b00004200003800000d000006ffffe6ffffe7",
            INIT_7B => X"ffffc8ffffbfffffe9000013000018fffff6000023000030000011ffffe5ffffa1",
            INIT_7C => X"00003900002affffdeffffa1ffffd5fffffcfffffbfffff200001c000014000010",
            INIT_7D => X"fffffc000014000004ffffffffffe7ffffd7ffffbd000018000012fffff5000018",
            INIT_7E => X"00000000000ffffff0000044000033000027ffffe8fffffefffff6fffffafffff6",
            INIT_7F => X"000006000012000000ffffd6ffffdcffffccffffebffffeeffffc1ffff96ffff9d",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY8;


    MEM_IWGHT_LAYER1_ENTITY9 : if BRAM_NAME = "iwght_layer1_entity9" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000efffff2ffffee00000300001bffffeb00001afffffdfffff000000000000f",
            INIT_01 => X"00000cfffff7000001ffffe1fffff4000004fffff2000001ffffe7fffff600000a",
            INIT_02 => X"000001fffff6ffffc7ffffdcffffeaffffeeffffe7fffff9000012fffff4ffffdd",
            INIT_03 => X"00000bffffd3fffffcffffccfffffa000005000001000021ffffe6ffffc6ffffe0",
            INIT_04 => X"ffffcdffffcaffffc7ffffe3ffffeeffffea00002000001600000ffffff200001b",
            INIT_05 => X"000003ffffefffffec000014fffff1000005000011fffff200002100002500001c",
            INIT_06 => X"ffffe5ffffeeffffecffffe500001a00000e00001200000100000efffffe000005",
            INIT_07 => X"00007000005100001400003d000045000000ffffd3ffffe3fffff7ffffeaffffdb",
            INIT_08 => X"000029ffffd9000029000047ffffe6fffffe000011fffffe000015fffff3fffff7",
            INIT_09 => X"000007ffffff000021ffffdb000045000044000020fffffc00003b00003e000013",
            INIT_0A => X"ffffe700000effffe600001200001e00002900001300000300000c000002000001",
            INIT_0B => X"fffff9ffffebfffff800000000000100000c000005fffff1ffffdd000008fffff7",
            INIT_0C => X"fffffa000001fffff600000a00002100003100001000001900000c00000bfffff6",
            INIT_0D => X"fffffaffffee000025000001fffff6000010fffff5ffffe2fffff0000008ffffdb",
            INIT_0E => X"000002000005ffffccffffb8ffffc900000a00000000000700001a00000affffeb",
            INIT_0F => X"000017fffff4fffff2fffff4ffffce00001dfffff7000007000025000014000019",
            INIT_10 => X"000011000005000006ffffebffffe200000b00000700002a000020ffffdffffffa",
            INIT_11 => X"00003100000e00002600001a00002e00002000000f000000fffffbfffffe000028",
            INIT_12 => X"fffff200003400003600004fffffd7ffffd7000019ffffd5ffffce000018fffffd",
            INIT_13 => X"ffffd2ffffdcffffdc00002b00002400004cffffd9ffffe6ffffe3ffffd7fffffa",
            INIT_14 => X"00001a00002800000b00001600000c000003000024000005fffff7ffffe5ffffe6",
            INIT_15 => X"000003ffffdefffffe000010ffffebfffff1ffffe8000016000033000009000016",
            INIT_16 => X"fffff100001f00001effffd1ffffebffffe4000004ffffdf00000900001a000000",
            INIT_17 => X"ffffccffffd9fffffd000017000000ffffe9fffffd000008fffff7ffffe4fffff8",
            INIT_18 => X"000005ffffec00002300000c00002b000031000028000019000000000008ffffe6",
            INIT_19 => X"00004700002f00001200005800004300000b000003ffffec000001ffffeb000005",
            INIT_1A => X"00000900001500000d000004fffffffffff7ffffe400000a000011ffffd8ffffe2",
            INIT_1B => X"ffffe400001d00000d00002affffffffffe5fffffffffffeffffe6fffffc000010",
            INIT_1C => X"fffffb00002e00002900002200001b000029000007000004fffff5ffffcfffffd9",
            INIT_1D => X"000004fffff1000012fffffbfffff100001700001effffda00003e000051fffff5",
            INIT_1E => X"000023ffffe4ffffeeffffe6ffffec00000000000d00002a00000900001a00000a",
            INIT_1F => X"00000500002400001e000000ffffe5000003ffffebffffddffffe7000016000026",
            INIT_20 => X"fffffbfffffa00000ffffff0000008fffffbfffff6ffffec000008fffffffffffb",
            INIT_21 => X"ffffeffffff7000006ffffe8000004000004000000ffffe0fffff0000000000006",
            INIT_22 => X"00001a00000d000012fffffcfffff2ffffeb000010fffffffffff7ffffec000000",
            INIT_23 => X"ffffef00000cfffffbfffffd00001e00000600000200000cffffe8ffffe8fffff6",
            INIT_24 => X"fffff5ffffedfffff1fffffefffff8000007fffff500000b00000000001afffff9",
            INIT_25 => X"00000dffffe5ffffe4ffffe9ffffebffffe4ffffecffffe5ffffda000007ffffe9",
            INIT_26 => X"ffffe8fffff6ffffeafffff2ffffed00000000000b00000800000c000000000007",
            INIT_27 => X"ffffed00000bffffebffffebffffe5ffffe3000006000014ffffdffffffbffffff",
            INIT_28 => X"000000ffffecfffff8000004fffffbffffeaffffe7000008ffffeefffff0ffffed",
            INIT_29 => X"fffff5ffffedffffebfffff3fffff2fffff3ffffe8fffffaffffedfffff3ffffe8",
            INIT_2A => X"000000ffffdfffffe1ffffefffffeeffffe2ffffedffffee00000affffe6000004",
            INIT_2B => X"00000affffdcffffeb000008ffffe5000001000005ffffecfffff0000009000006",
            INIT_2C => X"000001000000ffffe8000004ffffe300000a000001ffffebfffffbfffff8fffff0",
            INIT_2D => X"ffffddfffffd00000d000005fffff6fffff4fffffaffffeefffffbffffe6fffff0",
            INIT_2E => X"000003fffffcfffff5fffff8ffffe500000c000000000001fffffefffff4ffffd9",
            INIT_2F => X"000000fffffeffffffffffe1ffffe500000000000c00000bfffff1fffff0fffff1",
            INIT_30 => X"000000ffffec000006fffff5000008ffffe700000ffffff0000003ffffeeffffec",
            INIT_31 => X"ffffeeffffe8ffffeaffffe9ffffe1ffffe3000007fffffa00000a00000dffffe4",
            INIT_32 => X"000003ffffe4fffff5fffffcfffff0000005000005ffffdf000001ffffe2fffffa",
            INIT_33 => X"ffffe9ffffffffffe6fffff6ffffeaffffe7ffffff00000affffe5ffffec000003",
            INIT_34 => X"ffffe9000000000008fffff5ffffedffffe7fffff800000dffffe6fffff4ffffe9",
            INIT_35 => X"ffffed000001fffffcffffee000004ffffe7ffffe9ffffec000007fffffbffffef",
            INIT_36 => X"fffff3fffff7000002000002ffffe2fffffc00000700000affffe9fffffffffffc",
            INIT_37 => X"fffff8000000fffffbffffe2000008000001000002ffffe700000200000efffff5",
            INIT_38 => X"ffffed00000000000200000affffeafffff2fffffa000000fffff7ffffef000005",
            INIT_39 => X"fffffffffff1fffff9000008fffffcfffff200000afffffb000009000009ffffec",
            INIT_3A => X"ffffeb00000b00000a000007ffffe8000008000000ffffecfffff6000008000016",
            INIT_3B => X"00000a000018ffffdb000001000015ffffedfffff8000014ffffd3fffff2ffffef",
            INIT_3C => X"ffffc1ffffd800000bffffdb00002b00003700002f00001000003100003c00000a",
            INIT_3D => X"00004d00003b00001a00001cfffff9fffffcffffc7ffffb6ffffd8ffffb8ffffe5",
            INIT_3E => X"ffffdefffff0fffffb00000affffea000017000022fffffa000030000055000023",
            INIT_3F => X"fffffcffffe6ffffcbffffe2fffff1ffffd2ffffd800001700001b000021fffffd",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00002300000d00002a00000500000b00000bfffff8ffffff000016ffffedffffe7",
            INIT_41 => X"000017ffffc9000014000000000002ffffb0ffff95ffffb9fffff200001afffff3",
            INIT_42 => X"ffffd1ffffdfffffdafffff6000008ffffe2fffff4000003fffffefffff4000000",
            INIT_43 => X"00001dffffeaffffc4fffff900000cfffffb000000000010fffff7ffffceffffcb",
            INIT_44 => X"000006ffffcc000014000002ffffe300000e000010ffffe9fffff100000f000013",
            INIT_45 => X"ffffd900001900001100001b00002200001600001500000f00000ffffffbfffffc",
            INIT_46 => X"00000c000030000010ffffd000000bfffff2ffffd0ffffabffffa8000000000001",
            INIT_47 => X"00002100000200001a000007fffff900000d000001ffffe9000035000044000021",
            INIT_48 => X"ffffd6ffffe9ffffdfffffb7fffff4ffffefffffef00001f000019000006000014",
            INIT_49 => X"00000500000e00000effffe2000002ffffd5ffffc1ffffb6ffffc1ffffbdffffed",
            INIT_4A => X"fffff5000027ffffd6ffffeeffffe300000e000019000005000008fffff0000004",
            INIT_4B => X"000023ffffeb000015000015ffffe6fffff0fffffcfffff800001900003bffffdc",
            INIT_4C => X"ffffddffffccffffd400000a000005ffffee000015000022000010000006000019",
            INIT_4D => X"000032ffffecffffe5ffffbdffff9d000007fffffcffffda00002700001600001d",
            INIT_4E => X"000020000018000005000015ffffceffff9afffffbffffd9ffffccffffd0ffffee",
            INIT_4F => X"000015fffffdfffff2000023000001ffffe700000700001f000027fffffd00001e",
            INIT_50 => X"ffffe000000e00000cffffeeffffe300000300000900000a000017000015fffff8",
            INIT_51 => X"ffffdeffffecffffc9ffffc5ffffccffffb8ffffc1000009ffffffffffe6fffffb",
            INIT_52 => X"00000500000b000007fffffbffffd5ffffbe000001fffff7ffffeb000017fffff2",
            INIT_53 => X"00001700000400001a00000bfffff3000012000035000039ffffed000021000019",
            INIT_54 => X"00002400001200000100000d00000f00000cfffffefffff7fffffcffffd800002f",
            INIT_55 => X"ffffdeffff8affffb9ffffd0ffff98ffffc9fffff5ffffe9fffff7fffffbffffff",
            INIT_56 => X"00005900002600002600005500004300004e00003500003300000c000009fffff0",
            INIT_57 => X"00002affffe2ffffecfffffd00000800001800002c000031000043000034000026",
            INIT_58 => X"00000f00001b00001bffffe600000800000afffffa000018000031ffffe6000026",
            INIT_59 => X"000000000025ffffedfffff7fffffeffffcdffffe4ffffef00002200002800002c",
            INIT_5A => X"000039fffff0ffffd9ffffc7ffffedfffffdffffeeffffe0000000ffffdfffffff",
            INIT_5B => X"ffffeeffffdeffffe8000000fffff6fffffbfffffcfffff400001affffff00000a",
            INIT_5C => X"ffffed00001b000010000006000016fffffdfffffc00001effffebfffff6000023",
            INIT_5D => X"00002c00001b000023fffff9000020fffffcfffff0fffff1fffff1ffffecffffe1",
            INIT_5E => X"00000300002800001500001300000b000018000000fffff7ffffed000022000006",
            INIT_5F => X"fffffd00000effffe1ffffcfffffebffffe1ffffcf00001affffe7ffffccfffffc",
            INIT_60 => X"000012ffffe5fffffefffffffffff900003400001700000000002200000400000a",
            INIT_61 => X"ffffdbffffab00002affffedffffe300000600000a00000600000b000012000018",
            INIT_62 => X"fffff300001affffd7000009000051ffffe3fffff5000018ffffd2ffffd3ffffe2",
            INIT_63 => X"ffffdcfffff5fffff0ffffeafffffaffffdcffffe5ffffbbffffccffffd1ffffd2",
            INIT_64 => X"00000c00000dffffe0000016fffff5fffff0000017ffffeaffffdd000014fffff1",
            INIT_65 => X"00000affffe9000006ffffe1ffffc9000007ffffe8ffffdb000022000009ffffe7",
            INIT_66 => X"000035ffffe0000002000034000005000000ffffee000022000000ffffe900001d",
            INIT_67 => X"000004000003000016fffff5000016fffff8fffff9fffff1000011fffff1000005",
            INIT_68 => X"ffffe200000100003500004500005a00001d00006f00003f000020000045000036",
            INIT_69 => X"000031fffff4fffffc000008ffffd3ffffaeffffd2fffffbffffe5ffffe1fffff2",
            INIT_6A => X"fffffeffffe0ffffdb000014ffffe7ffffdaffffe0fffff9000034ffffd5fffffa",
            INIT_6B => X"00002700006900003800005b00007b00001700004900003500001bfffff2ffffe1",
            INIT_6C => X"ffffe600000fffffe6ffffe5ffffe8000005fffffe000011ffffdcffffd6000036",
            INIT_6D => X"fffff1000000fffff7000016fffff1ffffec00002200001cffffe7000012ffffef",
            INIT_6E => X"fffff9000016000004fffff7000014ffffc8fffffb000035fffff1ffffe500001e",
            INIT_6F => X"fffff0000026fffff9ffffd7ffffbd00001e00003f000008000000ffffe1000000",
            INIT_70 => X"000009ffffecffffef00002100000a00000affffd800000100001afffff9ffffd8",
            INIT_71 => X"00000c00001afffff0fffff6ffffca000010fffff0ffffd1000001ffffdfffffd4",
            INIT_72 => X"fffff700000b000019ffffe9ffffd8000006fffffe000028fffffc00000f000028",
            INIT_73 => X"ffffd4ffffe6ffffd7000003ffffd6ffffb000001500002300001800001400000e",
            INIT_74 => X"ffffd1ffffeaffffe2000002ffffd8ffffc2ffffcbffffccffffd5fffff8fffff0",
            INIT_75 => X"ffffe5000023fffff8ffffd9000033fffff7ffffdf000035000033000031000006",
            INIT_76 => X"00000d00001600000ffffff9fffff4fffffcffffc1fffff2ffffd0ffffd3fffff9",
            INIT_77 => X"ffffc2fffff0fffff1ffffebffffdb000020ffffe3ffffd9000044ffffddffffc5",
            INIT_78 => X"000003fffffeffff9fffffddffffeaffffceffffd7fffff0ffffdd000010000001",
            INIT_79 => X"000002fffffaffffe8fffffaffffdf000001fffff9ffffccffffe2ffffc5ffffcb",
            INIT_7A => X"fffff4ffffd2ffffe4ffffddfffff8000003ffffdfffffd9000048000022ffffbe",
            INIT_7B => X"ffffc4fffff8000036000007ffffcd000016000017ffff9cffffdafffffaffffd7",
            INIT_7C => X"000028fffff2ffffb400000b00000efffff300002b00000bffffd0000030000005",
            INIT_7D => X"00006600005500003c00004e000069000039000038000006fffff7fffff1fffffc",
            INIT_7E => X"ffffdfffffaaffffcaffffdbffffb1ffffc4ffffda000000fffffaffffe0000023",
            INIT_7F => X"fffffc00000d000004ffffd0fffffdfffffaffffb4fffff2fffffcfffff9ffffd6",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY9;


    MEM_IWGHT_LAYER1_ENTITY10 : if BRAM_NAME = "iwght_layer1_entity10" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffdcffffe5fffff2ffffeffffff1ffffdb000018fffffbffffe4ffffeafffff7",
            INIT_01 => X"ffffd5000023ffffeeffffd000003d00002e000001ffffe4000047000013ffffeb",
            INIT_02 => X"000003ffffd600000700002700000bffffdefffff200000bfffff000001cffffdb",
            INIT_03 => X"fffff2ffffe9000015ffffe1ffffdf00000afffff9ffffe900000cffffe9000021",
            INIT_04 => X"ffffd6fffffcffffe7ffffd1000032000007ffffedffffe6fffff5fffff7fffffb",
            INIT_05 => X"00003a00000efffff8000028000014ffffd6ffffd700000effffdcfffffbffffe3",
            INIT_06 => X"000017ffffef000007fffff4ffffeaffffecffffcbffffd8000029000011000003",
            INIT_07 => X"000014ffffd2ffffef00000cffffe2ffffe1000004000005ffffccffffdc000043",
            INIT_08 => X"fffffcfffffc00001200002300001a000021000011fffff900000a000012000024",
            INIT_09 => X"000013000003fffff1000037000036000019fffff2fffff0fffff000001400000c",
            INIT_0A => X"ffffe6fffffb000041fffffc00000a000015ffffce00000ffffffcfffff2000009",
            INIT_0B => X"00003a00002300000c00001100002c000010ffffd2fffff8ffffd6000009fffffb",
            INIT_0C => X"000019000006fffff6ffffc9000034fffffcffffdc00001e000031fffffeffffd5",
            INIT_0D => X"000000ffffc4000010fffffaffffda000001fffff3fffff900000800000000000c",
            INIT_0E => X"00001f000007fffff5000000ffffe0ffffebffffe0fffffffffffa00000600000e",
            INIT_0F => X"000006fffff9fffff7000015fffff100000700002a00000a00001300000dfffff4",
            INIT_10 => X"fffff1ffffedffffe5fffff0ffffb7ffffc4ffffffffffecfffff000000a000036",
            INIT_11 => X"fffff1ffffd2fffffc000024fffff600001c00001700000700001dffffeb00001c",
            INIT_12 => X"ffffe5fffff8000010ffffea000000ffffa8ffffdbffffc4ffffe7ffffddfffffd",
            INIT_13 => X"000001000000fffff400000bffffdd000007fffff3ffffd3ffffd9ffffd0ffffeb",
            INIT_14 => X"ffffb7ffffcdffffccffffddfffff0000007ffffefffffd4fffffb000019000006",
            INIT_15 => X"ffffa4ffffcdfffff1ffffebffffe4ffffc4ffffe3ffffe1ffffd9ffffda000007",
            INIT_16 => X"00002dffffe700001100001fffffdb000006ffffdfffffe0ffffc8ffff93ffffbd",
            INIT_17 => X"00005b00006600000d00004800004a00001000000a00000a000010fffffa000004",
            INIT_18 => X"ffffcaffffdefffffcffffe0ffffd9000007fffff3ffffee000038000090000053",
            INIT_19 => X"fffff9ffffeffffffbfffff4000010fffff0ffffe7fffffdfffff1ffffdbfffff3",
            INIT_1A => X"ffffe200000000001dffffddffffedffffecfffffe000009ffffd0ffffedfffffb",
            INIT_1B => X"ffffd200000fffffcdffffca000008ffffedfffffefffff6fffffefffff9000023",
            INIT_1C => X"fffffefffffb00003b00001800001200003e000009ffffffffffc8ffffdaffffcf",
            INIT_1D => X"00004500000fffffed00000b000006ffffeb000007000000fffffc00000dffffe9",
            INIT_1E => X"00003afffff7ffffd9ffffdaffffe7ffffc600000100000bffffe200000000003b",
            INIT_1F => X"000025fffff1000012fffff4ffffdfffffceffffddffffcaffffffffffe6ffffff",
            INIT_20 => X"ffffbf000006fffff7000013fffff500000200003e00003400002a00001800004e",
            INIT_21 => X"000012fffff0000010fffff6ffffda000008fffffaffffc6ffffe3fffff3ffffe3",
            INIT_22 => X"fffff8fffff200000afffffcffffda00000d00001effffec00000e000037000007",
            INIT_23 => X"00000000000a000011fffff5fffffeffffe000001b000004000012000024fffffd",
            INIT_24 => X"ffffcfffffd6ffffdaffffbcffffc400001600001700000c000022fffff0fffffd",
            INIT_25 => X"fffff0000000000025ffffa100001c000012ffffc5ffffeeffffddfffff8ffffcc",
            INIT_26 => X"000001ffffc100000300000bffff7bffffa5ffffe1ffffa0ffff76000010000016",
            INIT_27 => X"00002100000400002c00002200000100001600002800000000001f00000d00000f",
            INIT_28 => X"000028fffff2000006000039fffff7ffffbeffffaa000025ffffe8ffffe2000011",
            INIT_29 => X"ffffeeffffdeffffe8fffff9ffffe500003700001e00001a000020fffff2000029",
            INIT_2A => X"fffff9ffffe8000010000021ffffed00002800001c000027ffffd6ffffcfffffdb",
            INIT_2B => X"00000dffffd8ffffe500001a00000ffffff8000000fffff900001a000012fffffb",
            INIT_2C => X"00001900000f00001000000d000013ffffe7000015000017ffffd600002d00002c",
            INIT_2D => X"000023ffffff00000200001000001b00002000000b000000000011000020ffffea",
            INIT_2E => X"ffffe3000020fffffeffffe800002e00002afffff8000025000006ffffdffffffc",
            INIT_2F => X"00002300000c000012000003000006ffffe000000ffffff2ffffe000000bffffec",
            INIT_30 => X"000028fffffc000003000039ffffc4ffffdaffffc3ffffc9fffff6ffffdeffffb6",
            INIT_31 => X"fffff7ffffe7fffff000001c000005ffffffffffc1000023fffff3fffffd000038",
            INIT_32 => X"ffffe7ffffe1000016ffffecffffc3ffffe0ffffee000011fffff7000019ffffd6",
            INIT_33 => X"00001c000059ffffb7fffffa000035ffffdaffffc7fffff9000005fffffb000033",
            INIT_34 => X"fffffbffffe300000100003bffffe8ffffdf000022ffffe1ffffe3ffffeeffffec",
            INIT_35 => X"00001bfffff3ffffdf000019fffff4ffffd3fffffa00000dfffffd000027000002",
            INIT_36 => X"00002a000016ffffd5ffffdfffffc0fffff2ffffe9ffffe8000016ffffebffffe0",
            INIT_37 => X"00003a000004000012000006ffffe3000003ffffe400000000002a000023ffffcf",
            INIT_38 => X"000008fffff4ffffb800001300000cffffc500001600000cffffeb000016000017",
            INIT_39 => X"ffffe2fffffe000025ffffc7fffff800000efffff1fffff200000afffff4fffff4",
            INIT_3A => X"00000c000027000020ffffe500001bfffffeffffc1ffffecfffff3ffffa8fffffe",
            INIT_3B => X"ffffdcfffff000002dffffedfffff700000200000000000dfffffa000009000025",
            INIT_3C => X"fffffdffffd400000d00000effffad000026000013fffff0ffffef00001600004d",
            INIT_3D => X"fffff2fffff7000012fffffefffffb000006000012000004fffff800000000001c",
            INIT_3E => X"fffff6fffff8fffff1000003ffffee000005ffffeafffff9fffff9fffff9000007",
            INIT_3F => X"000000000006ffffff000000fffff4fffff600000b000006fffff0000001fffffe",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffff600000efffff2fffffe00000dffffff000006fffff3000005ffffe8000000",
            INIT_41 => X"000006ffffffffffefffffeaffffea000007fffff6fffff2000006fffffdffffe9",
            INIT_42 => X"000004fffffafffffbffffe9fffff5fffffa00000c00000cfffff100000afffffc",
            INIT_43 => X"ffffef00000bfffff9fffffe000000000000000006fffff4000006fffff2ffffe7",
            INIT_44 => X"00000afffff4ffffec000012000002fffffbfffff2ffffe7000009fffff7000002",
            INIT_45 => X"ffffe700000e000000000000fffff1000001fffff2ffffed000000fffff9000008",
            INIT_46 => X"00000fffffed000010fffffbffffec00000a00000affffec000000ffffec00000d",
            INIT_47 => X"fffff2fffffffffffb000011fffff000000dfffff400000a00000ffffff3fffff5",
            INIT_48 => X"ffffeafffff1fffff0000001fffff8000000ffffe6000001000000ffffeefffffc",
            INIT_49 => X"ffffefffffedffffebfffffbfffff9fffffd000006fffff8000007fffffdfffff7",
            INIT_4A => X"000009ffffeffffff1ffffeefffff4fffffcfffff8000002fffffdffffeeffffef",
            INIT_4B => X"000007000012fffff3ffffebffffecfffffb00000efffff200000fffffea00000b",
            INIT_4C => X"000006ffffe9ffffebffffe8fffff900000100000d000009fffff400000d00000f",
            INIT_4D => X"ffffecfffff3fffff0fffff300000effffed00000c000008ffffe5ffffe7000000",
            INIT_4E => X"000001000004fffff900000b000003fffff8000005000006ffffe900000affffe7",
            INIT_4F => X"000005000001fffff000000dffffeefffff7fffff6ffffedffffecfffff9000006",
            INIT_50 => X"fffffc000005ffffec000006fffffcffffe9fffff3000000ffffeffffff4ffffec",
            INIT_51 => X"00000afffff3fffffdffffe9fffffdfffffeffffeafffffdffffecffffef00000a",
            INIT_52 => X"fffff4ffffea000001fffffe000007ffffe7000001000000ffffe2000009fffff8",
            INIT_53 => X"000007ffffeffffffe00000f00000d000003fffff0000008ffffeefffffbfffff5",
            INIT_54 => X"00000cfffff0ffffe4fffffbfffff3ffffed00001500000e00000cfffff0000005",
            INIT_55 => X"00000bfffff0ffffedfffffbfffff4ffffe900000d000012000005fffff100000b",
            INIT_56 => X"fffffc00000700000c000002000007fffff000000a00000d00000fffffebffffe8",
            INIT_57 => X"00001500000c000004000011000010ffffea000000fffff000000d000004fffff3",
            INIT_58 => X"00001d000019fffffeffffff00000affffe6fffffcfffff5ffffe4fffffdfffff7",
            INIT_59 => X"fffffaffffd5ffffdf00000200002400001afffffb00002600000500000b000032",
            INIT_5A => X"00002dfffffcfffff9000015fffff3fffffa000008000014000011fffff9000000",
            INIT_5B => X"fffff1fffffd000001ffffce00000ffffffeffffe600000a00000f000003000013",
            INIT_5C => X"ffffcdffffd3000000fffffc000002000004ffffedffffe1fffff7fffff4ffffc7",
            INIT_5D => X"000006000000ffffe700001800002500000500001300002bffffe6fffff5fffffd",
            INIT_5E => X"000009fffffdffffbfffffe6fffffb00000700000500002500000fffffec00000b",
            INIT_5F => X"000014fffff800000d00001c000018000007fffff7fffff3fffffaffffa2ffffc2",
            INIT_60 => X"fffff4ffffde000003fffffffffff2fffff200000a00001f00002d000014fffff6",
            INIT_61 => X"00000d00000f00000c00000f00000b00000100000400001a000016000001000000",
            INIT_62 => X"000005000008ffffe9000004fffff3fffff4ffffc2ffffc000000fffffc6ffffc3",
            INIT_63 => X"00000500000b00000000000600000f00000effffe9ffffc5000006fffffbffffd8",
            INIT_64 => X"ffffe7ffffafffffc5000000fffffcffffe0000013ffffcafffff4000033fffffa",
            INIT_65 => X"ffffcfffffcafffffeffffc6ffffe3000020fffff0fffffafffff1fffff0ffffb4",
            INIT_66 => X"00000bfffff0ffffc8ffffc8fffff7ffffd2ffffe4fffff300000000003b000025",
            INIT_67 => X"fffffa000011000000ffffd6000008000000ffffeffffffe000009ffffdc00001d",
            INIT_68 => X"000006fffffcffffe400000c000010fffff0fffff4ffffe9ffffd7ffffe5fffffa",
            INIT_69 => X"ffffbc000029ffffeeffffdc00000bffffe5000004ffffeffffffffffff4fffff3",
            INIT_6A => X"fffff6fffff800000dffffff00001700000b000004000026fffffa00000affffe8",
            INIT_6B => X"000000ffffe7000010ffffff00005300003400000100001200004d000019000017",
            INIT_6C => X"ffffdd00003bfffff7ffffe7fffff300002bfffff500000b000000ffffff00000e",
            INIT_6D => X"ffffef00000cfffffa000006ffffe6ffffebfffff6ffffe4ffffe700000effffe9",
            INIT_6E => X"fffff6fffffd000012fffff0ffffdbffffffffffecffffd0ffffe4ffffd4ffffed",
            INIT_6F => X"000012ffffd2fffff000000cffffe8ffffe2ffffe3000018000031000020000009",
            INIT_70 => X"000028ffffe300000000002900002400001efffff0000018000003fffff1000023",
            INIT_71 => X"fffff3000001000008000006000000ffffffffffc6fffff500001cffffb8fffff5",
            INIT_72 => X"000007ffffdc00002900003800000e000013000006000023000007fffffe000000",
            INIT_73 => X"ffffb9ffffafffffbefffff2ffffd9ffffd1fffffd000019fffffdfffff8000010",
            INIT_74 => X"000026000046ffffe7ffff9dffff86ffffafffffc5ffff99ffffb7ffffd8ffffd0",
            INIT_75 => X"00000000000000001300002800003d000001ffffc0fffff5fffffbffffefffffb7",
            INIT_76 => X"fffff8000000000005000003fffffefffff6fffffc000023000010000034000023",
            INIT_77 => X"00001c00000f00002200002200001f00001e00000f000014fffff8fffffd000000",
            INIT_78 => X"ffffeb00000affffef00000afffff0ffffd0000012ffffdffffffcffffebffffdc",
            INIT_79 => X"00000affffe2fffff1ffffeafffff9fffff5ffffed00000afffffcfffff3ffffed",
            INIT_7A => X"000004000001fffffd000001fffffcfffff800000100000800000cfffff2ffffec",
            INIT_7B => X"00001400001b000015ffffeffffffb00001200000000000bfffff3000002000014",
            INIT_7C => X"00002500001800001200000000003700004700001200000900000200000a000012",
            INIT_7D => X"fffff900000c00001000002a000027000021000016000015000007000033000014",
            INIT_7E => X"000028ffffec00001800000cffffd3000014000005ffffedfffffc000003ffffe5",
            INIT_7F => X"fffffc00000500000e000009000005fffffefffffefffff5000024ffffe6000010",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY10;


    MEM_IWGHT_LAYER1_ENTITY11 : if BRAM_NAME = "iwght_layer1_entity11" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffff900001dfffff9ffffecffffce000014ffffe7ffffea000018fffffa000016",
            INIT_01 => X"ffffffffffe4000008000013000026fffffbffffecfffff300000100000dfffff7",
            INIT_02 => X"fffff1000008000009fffff9000014fffff8000000fffff6ffffedfffff2fffff8",
            INIT_03 => X"ffffe600001b00000effffe8fffffefffff900001ffffffffffffffffffbfffff2",
            INIT_04 => X"000008000019000005ffffdcfffff1fffffdffffe1fffffcfffffc00000500000f",
            INIT_05 => X"00000fffff84ffffa3ffffdeffff94ffff6effff6dffff95ffffe1ffff84fffff1",
            INIT_06 => X"00000100001dfffffafffff2fffff800000e00003400003200000800001d000031",
            INIT_07 => X"00000800001afffff0ffffeefffffafffff100000200000c000012000011fffff8",
            INIT_08 => X"ffffaaffffa7ffffa5ffffb5ffffdcffffe4ffffd300002900002d00002b000024",
            INIT_09 => X"00002e00002700003000001100001700000600000dfffffb000000ffffa9ffffa1",
            INIT_0A => X"00001b00001c00001cffffff000023fffffdfffff1fffff3ffffecffffe7ffffe9",
            INIT_0B => X"000000ffffff000018000009fffff3fffffafffff0fffffe00000cffffeb000014",
            INIT_0C => X"000015ffffed00000a00000900002200001500000e000015000003000015000017",
            INIT_0D => X"00000b00003500004800005700002700000800001800001900000e000002ffffe9",
            INIT_0E => X"000018ffffc7ffffe4ffffeb000008ffffe600001500000e000001000022000049",
            INIT_0F => X"fffff2ffffe4ffffe200002c00000c00001a000040000029000023ffffedfffff1",
            INIT_10 => X"000008fffff100001f00003200000afffff900002600003c000004000013fffff6",
            INIT_11 => X"ffffe8ffffeb000004ffffe400000ffffffffffff9ffffd1ffffc9ffffd3fffff2",
            INIT_12 => X"00000600000200001700000600002100003700000a00002b00003300001bfffff3",
            INIT_13 => X"000036000014ffffd5000004000001ffffdf00001dfffffbfffffd000027000008",
            INIT_14 => X"00000a000021fffff1ffffe1000018fffff7000017000009000015000006000009",
            INIT_15 => X"ffffdcffffe2ffffd7000016fffffeffffdbffffe600000b000007000024000004",
            INIT_16 => X"000012ffffe3ffffe3000006ffffd100002c000038fffffcffffc9fffff1ffffea",
            INIT_17 => X"ffffda000016000006000043000007fffff600001efffff9ffffe0ffffe6000012",
            INIT_18 => X"ffffd100003a000013000007000004ffffce000014ffffe5ffffbe00003200000d",
            INIT_19 => X"fffff100000300003c000037000018ffffdafffff4ffffc7ffff81fffff0fffffd",
            INIT_1A => X"ffffd4fffff7ffffedffffbffffff3fffff7ffffe4ffffc0ffffdf000008fffff0",
            INIT_1B => X"fffffdffffe700000ffffff3ffffebffffe2000008fffff0fffff1ffffc9000003",
            INIT_1C => X"fffff7fffff800002c000009ffffe0000021000006ffffd9000011000000ffffff",
            INIT_1D => X"ffffe8000023000019fffff6000024000002fffff300002f000018ffffed00002d",
            INIT_1E => X"00000800000f000008ffffe500000b000017ffffc5ffffe8fffff7000009000009",
            INIT_1F => X"ffffd0fffff5000014ffffb3ffffd0ffffd0ffffb5fffff7fffff1000006000018",
            INIT_20 => X"00000300000c000011fffff3ffffe3ffffe8ffffeaffffe6000015000011ffffe0",
            INIT_21 => X"00001bfffff0fffff7000007000013000004fffff1fffffcffffea00000b00002e",
            INIT_22 => X"000015fffff700002d00001dfffffefffff2ffffd1000013ffffc1fffff8ffffd0",
            INIT_23 => X"ffffe5ffffbaffffeaffffa8fffffcffffe2ffffdc000011ffffe8fffffb000016",
            INIT_24 => X"000013000009fffff8000021fffff6ffffebffffeefffffb000001fffff3fffff4",
            INIT_25 => X"fffff2fffff7fffffafffff2ffffcf000002000003ffffd7000020000006000008",
            INIT_26 => X"00004900000f000014000026fffff8000002fffff6fffffd000010000000000000",
            INIT_27 => X"fffffaffffed00000000002000000400000e000059000033000018fffff4000023",
            INIT_28 => X"00003600001100003f000032000028000017fffffb000013ffffe9ffffbf000006",
            INIT_29 => X"fffffcffffe5ffffe6ffffe2fffffefffff3ffffc900002d00002afffff0000034",
            INIT_2A => X"00001800001efffff9000000ffffeaffffd100001affffdbffffd8000013000020",
            INIT_2B => X"00003800000300003b00002efffff9000013fffff1fffffa00003e000006ffffd0",
            INIT_2C => X"00000affffec000013fffff7fffff8ffffd4000004ffffe2ffffeafffff9000024",
            INIT_2D => X"ffffedffffdb000005ffffe2ffffc7ffffd9ffffffffffe300000a00002a00001f",
            INIT_2E => X"00002d00001800003b000012ffffe0000010fffffaffffd8ffffeffffffcffffef",
            INIT_2F => X"ffffef00001a000028000026000019ffffe5ffffbe00001b00000cffffca000020",
            INIT_30 => X"ffffd2ffffe800000900000200000100000d00000200000cffffff00000400000b",
            INIT_31 => X"fffff0ffff88000006ffffedffff84000021000025fffff0fffff0fffff2000026",
            INIT_32 => X"000003ffffe3fffff900001affffdcffffe7000016fffffd00001d000031000019",
            INIT_33 => X"00000500001700002900003e00001b000022000028000050000008ffffdcffffee",
            INIT_34 => X"00002e00001300001afffffbffffe100001b000013ffffe600003000000f000004",
            INIT_35 => X"ffffd7000038ffffffffffdc00000c000026fffffc00001000001b000014000017",
            INIT_36 => X"fffff6fffffbffffd600001600002efffff2fffff6ffffffffffd9fffff500000f",
            INIT_37 => X"fffff2000017fffffeffffedffffe000001800002500001a00000f00001c00002a",
            INIT_38 => X"ffffc3000004fffff6ffffddffffeffffff1ffffe6000017ffffd7ffffdf000008",
            INIT_39 => X"000002ffffd5ffffe5000012ffffdeffffe800000e000024ffffde00001f00001a",
            INIT_3A => X"ffffecffffe3fffff6fffffdffffe3ffffffffffeaffffe9ffffe2ffffec000029",
            INIT_3B => X"000007fffffb00000000002fffffc9ffffd8000004ffffefffffd0fffffefffffe",
            INIT_3C => X"000005fffff1000002fffff7ffffe5000006000020ffffccffffb3000022000016",
            INIT_3D => X"ffffe4ffffcd000018fffff9000009000019000019000009000026000008ffffff",
            INIT_3E => X"ffffc300000600001cffffdc000016000000ffffd9ffffd6ffffda000026000011",
            INIT_3F => X"000013000006000033ffffd7fffff8000029000017fffff700001200000b00000a",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000001700000200000efffff900000e00002200000c000010000003000014",
            INIT_41 => X"000017fffffb00002e00003d000022ffffe2ffffe4ffffdc00001ffffff4000002",
            INIT_42 => X"ffffe000000600003dfffff400001d00003700000afffff0fffffcfffffc000038",
            INIT_43 => X"ffffcf000043ffffbbffffe900003cffffe4ffffe4fffff1ffffd6000007000040",
            INIT_44 => X"00000000002900000400003800001300000b000010000017000000ffffd8fffffd",
            INIT_45 => X"ffffcaffffe6ffffd1000009ffffdd00001a00001ffffff6ffffed00002c000004",
            INIT_46 => X"00000affffecffffe9fffff800000ffffffbffffceffffefffffcffffff3ffffbb",
            INIT_47 => X"00000100001500001a00000b000006000000fffff1ffffe9ffffd9000002fffff6",
            INIT_48 => X"000009ffffe0ffffcd00000d000016ffffe900000a00000700000c00001300001c",
            INIT_49 => X"fffffbffffeb00000100000a00001700003700000300000000001a000009fffff3",
            INIT_4A => X"ffffe6fffffa00000300001f00002a00000a000015000006ffffebffffdb000012",
            INIT_4B => X"000004000005fffff7000018ffffe4ffffc6fffff3000008000022fffff900000f",
            INIT_4C => X"000020000013fffffa000006ffffe3fffffcffffe6ffffd9fffff6000017ffffe9",
            INIT_4D => X"ffffe1ffffefffffebfffffcfffff900002000000bfffff4000006000000000009",
            INIT_4E => X"00001000002a000047fffffe00000d00000c00002b00001b00000100002e00000e",
            INIT_4F => X"ffffd8ffffc8ffffe9ffffdbffffde00005400006b00004b000028000006000050",
            INIT_50 => X"ffffc3ffffd3000009ffffedffffcc000012fffff9fffff1fffff2ffffc7ffffe6",
            INIT_51 => X"fffffaffffe8ffffe0ffffd0fffff0ffffefffffceffffd7000008000009fffff7",
            INIT_52 => X"00000cffffe4fffff300000600001f000017ffffecfffff8000016fffffe000007",
            INIT_53 => X"00001cffffe1ffffe3ffffebffffe3ffffe9000015000010fffffb000018000009",
            INIT_54 => X"ffffdd000024fffffefffff600000200000e00000b000005ffffd7ffffe5000030",
            INIT_55 => X"000027000031fffffe00001600000d000003ffffeeffffecfffff9ffffd1fffff3",
            INIT_56 => X"00000e00001d00001bfffff7ffffe9000005ffffe8000013ffffecffffe200000b",
            INIT_57 => X"ffffe9000000ffffea00000300001c00000affffdbfffff0000033fffffd000023",
            INIT_58 => X"000002ffffceffffc2ffffd2fffffa00003c000037000023000022000022000001",
            INIT_59 => X"000041000004000000fffffe000009000000000018fffff7ffffd6ffffc1ffffe0",
            INIT_5A => X"00001800001dfffff700000a000010fffff7ffffec00000dfffff9000020000016",
            INIT_5B => X"ffffee00004200002100001100001300001700001a00001900002600001b00000d",
            INIT_5C => X"ffffefffffd0ffffe2000004fffffdffffff000028ffffa400002800002dffffc2",
            INIT_5D => X"ffffbeffffb7000036ffffbfffffb600003fffffaeffffe6fffff5ffff8fffffc0",
            INIT_5E => X"fffff2ffffea00000900002200000600001dffffecfffff7ffffac000009000055",
            INIT_5F => X"00002400001300000e00000700000affffff000006fffff200002000000a000000",
            INIT_60 => X"ffffbcffffeefffff200000500001e00001900000d000009000023000035000040",
            INIT_61 => X"000027ffffd4ffffe8000008ffffe8ffffdcffffe4000002ffffcd000000ffffed",
            INIT_62 => X"00000bfffffb00003000001effffe7ffffee000002fffffb000003fffff8fffffc",
            INIT_63 => X"000011000001ffffce000000ffffe1ffffffffffe3fffff9ffffe700001200000e",
            INIT_64 => X"000036ffffe0000013ffffeaffffc100002cfffff5ffffec00000ffffffb000000",
            INIT_65 => X"ffffe1fffffb00000cfffff500000c000012fffffe00002c00003b00000100000e",
            INIT_66 => X"00000b00001affffec00000a00000e00000dfffffc000003ffffe1000028fffffc",
            INIT_67 => X"00000400000300001e00004200001e000032000028ffffcefffff7ffffeaffffc2",
            INIT_68 => X"ffffeefffff1000018fffff7000014000029fffff800000e000010ffffcd000015",
            INIT_69 => X"00001400000300001b00000a000009ffffe500000b00000bfffff8ffff97ffffd0",
            INIT_6A => X"00002500000000000400001300000f000015000000ffffe400001c00001bffffe8",
            INIT_6B => X"ffffe500001400000600000200001300002100001300001e000000fffff700003a",
            INIT_6C => X"00000200000bffffdcfffff0ffffdafffffeffffeb000009000022000006ffffe3",
            INIT_6D => X"ffff99000028000016000001ffffe1000002fffffefffff4ffffdbffffd2ffffed",
            INIT_6E => X"00001c000002000026000012ffff77ffffc4000038ffff8cffff9d000003ffffae",
            INIT_6F => X"00000e000016ffffff00000a000000ffffed00001f000015fffffd00000e000002",
            INIT_70 => X"fffff200001b000003ffffeaffffd3000025fffff9fffffc00000e00001900001a",
            INIT_71 => X"ffffcfffffb7ffffcd000006ffffb1ffff9cffffc6ffffbcffff91ffffdb000000",
            INIT_72 => X"000011000000000010000003fffffeffffecfffffc00000affffc8ffffedffffe2",
            INIT_73 => X"000010000006ffffe5ffffea000004000018fffffeffffee00001600002b000002",
            INIT_74 => X"000009ffffff000005fffff300000e00001f00000c00000100000700000e00001c",
            INIT_75 => X"00001200001ffffff1fffff8000025000047fffff2000031000018fffff9ffffee",
            INIT_76 => X"00003b000017ffffd9ffffd6000017ffffefffffa6fffff3ffffe2ffffc2fffff1",
            INIT_77 => X"ffffd9ffffdcffffa7ffffc9ffffff00002800003800003d000031000041000028",
            INIT_78 => X"ffffdaffffb1fffff3fffff2ffffcdffffbdffffe7fffff2fffff0ffffd9ffffb3",
            INIT_79 => X"00000400000000002f00003e00003a00004500001afffff4ffffdafffffe00002c",
            INIT_7A => X"fffffd000015ffffecffffd8000015fffffb00001100000700000c000012ffffdd",
            INIT_7B => X"fffff6ffffdc000001fffff300001800002d000013000022000052fffff7000048",
            INIT_7C => X"00000c00002100001e00001600000f000003000015fffffbfffff8000001fffff5",
            INIT_7D => X"fffffa000000ffffbbffffbbffffbfffff96ffffd600001800001400000d000011",
            INIT_7E => X"fffff1ffffedffffef000010000004000014fffffffffff700001400000ffffff8",
            INIT_7F => X"ffffbbffffe3ffffd3ffffdbffffabffffe5000015000023ffffd2000012000006",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY11;


    MEM_IWGHT_LAYER1_ENTITY12 : if BRAM_NAME = "iwght_layer1_entity12" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00001a000004fffff2000041ffffff000013000012000022ffffe0ffffd7ffffde",
            INIT_01 => X"ffffdb000004fffffa00002c000005000009ffffe6ffffe6000024fffff1fffff0",
            INIT_02 => X"00000900000c00000200001100000700001000002200001700001000001bffffe6",
            INIT_03 => X"fffff4fffff1fffff700001efffffd000011000046ffffd700001700002300000f",
            INIT_04 => X"fffff7fffff100000a000010fffffa00000700000b00001200000900002600000a",
            INIT_05 => X"000010000004000020000003fffffc00003000002e000002ffffe9ffffe8ffffe5",
            INIT_06 => X"00000100000a00000100000c000015000011fffffd00001a00000d000025000011",
            INIT_07 => X"ffffe000001b00000b00002900001e00001f000018000002fffffefffff6000003",
            INIT_08 => X"000017ffffeb00001c000045000035fffff500001f00002900002700001600001d",
            INIT_09 => X"000010ffffeb00000600000f000023ffffffffffd8ffffefffffeffffff9ffffe5",
            INIT_0A => X"000024000007ffffe4000009fffff9000000000004fffff800001affffe800000a",
            INIT_0B => X"000011000014fffffcfffff100002400003c00000a00001dfffffcffffe9fffff3",
            INIT_0C => X"fffff0ffffddffffc9ffffd7fffff8ffffb7ffffd7ffffceffffc2ffffedffffe1",
            INIT_0D => X"000015fffff700001dfffff900002a000005000025000003ffffdbffffee000006",
            INIT_0E => X"fffff100000300001700000800000b00002d00001d000049fffff900001a000026",
            INIT_0F => X"00002d00000e00001c000025ffffe2000006000014fffff800001000001800000f",
            INIT_10 => X"ffffe600000cffffe4000000000009ffffeaffffd900000c00000300001900002a",
            INIT_11 => X"00002a00004fffffbdffffbbffffc6ffffbeffffecffffe4ffffafffffc3ffffe9",
            INIT_12 => X"fffff9fffffffffff3fffff6000006000012ffffe500000a00003e00000200000a",
            INIT_13 => X"fffff1fffff2fffffb00000d000014000018ffffee000008fffff0000014000021",
            INIT_14 => X"00000b000004000000fffff200000c000011000001000017fffff9ffffceffffc6",
            INIT_15 => X"00002800001100000000000800001cfffffa000005000005000005000003000029",
            INIT_16 => X"00000800001b000015ffffc6ffffb7ffff9200000200001c00001600001c00002c",
            INIT_17 => X"fffff2000009ffffcaffffd4000001ffffef00000600000400002a000008000020",
            INIT_18 => X"ffffedfffffdfffffe000013fffff5fffff6fffff4ffffb9ffffd8ffffefffffc9",
            INIT_19 => X"ffffe4fffffefffffbffffe500000000000500001000001600000f000003ffffe3",
            INIT_1A => X"00001600000cffffeaffffe5fffffbfffff700000d000008000000fffffcffffe7",
            INIT_1B => X"ffffbffffffeffffe0ffffd4ffffd5fffff5fffffeffffff00001500001fffffd5",
            INIT_1C => X"000000fffff000000f00001d000022000019ffffabffff8effffc2ffffabffffbb",
            INIT_1D => X"00002e00001cffffeefffffb000040ffffef00003f000031ffffc3ffffb8ffffb6",
            INIT_1E => X"000001000010000029fffffc000001000016000013000001fffffefffff600000a",
            INIT_1F => X"00000500000a00000700002400000d00003800000100002200002efffff4000002",
            INIT_20 => X"ffffffffffed00001900003dffffe900002a00000500001e00001800001f000012",
            INIT_21 => X"ffffd8000012fffffbffffeb000010fffffffffff5ffff9cffffcbffff80ffffe0",
            INIT_22 => X"ffffc2ffffd0ffff9affffb9ffffbbffffceffffebffffd1ffffe100001affffd1",
            INIT_23 => X"00004600004400000efffffd000018000017000012000023000023000027000019",
            INIT_24 => X"ffffd3fffffeffffe3fffffaffffd7ffffe9ffffccfffffcfffff300001e00001e",
            INIT_25 => X"ffffefffffedffffedffffd6ffffcc00001affffd1ffffd7ffffebfffffaffffd3",
            INIT_26 => X"ffff90ffffd3ffffa6ffff7bffffa5000021ffffccffffdaffffebffffbbffffed",
            INIT_27 => X"00001600000900002500001800000800000d00002300000000001700000affffb1",
            INIT_28 => X"fffff400000400000dffffb9ffffe6ffffbf000029000004fffff500000400003d",
            INIT_29 => X"00000300000900000000000b00001000000c000006fffffdffffef000014000010",
            INIT_2A => X"00001100001000001000000ffffffe000011000003000024000018000006ffffe4",
            INIT_2B => X"ffffeaffffe2ffffcfffffdeffffeaffffb2ffffefffffe0ffffc500002000001d",
            INIT_2C => X"ffffdc00000400002d00004800000100001800002b000022fffff4fffff6000006",
            INIT_2D => X"fffffefffffafffff400001dffffe5000018000008fffff8fffffa00001300000f",
            INIT_2E => X"00000bffffff000004ffffedfffff3ffffecffffeffffff2fffff6ffffe0fffff4",
            INIT_2F => X"fffffc000015ffffdd00001e00004700000800001a00000c00002d00002b000007",
            INIT_30 => X"fffffe00001cffffd8ffffdc000021ffffefffffdf000008fffffb00001600000c",
            INIT_31 => X"ffffe1ffffe8ffffe7fffffaffffed00002bffffedffffed00000ffffff9000018",
            INIT_32 => X"fffffefffff9000009fffff4000004ffffcdffffe1ffffd1fffff0ffffcfffffd5",
            INIT_33 => X"ffffeb00003400001e000002000000000015000007ffffeafffffa00000d000009",
            INIT_34 => X"ffffcc00000000001affffeffffffa00000cffffe6ffffeefffff7000019000020",
            INIT_35 => X"ffffd3ffffaf00001d000004ffffed00001300002b00001b00000000001e000004",
            INIT_36 => X"ffffe5000006000001fffff4ffffa8ffff97ffffb9fffff3ffffcaffffe0ffffbe",
            INIT_37 => X"ffffdaffffd0ffffc6000023000006fffffcffffdeffffd8fffff0ffffdaffffdb",
            INIT_38 => X"00002e000010fffffc00001d00001d00001300001b00001affffebffffdfffff8d",
            INIT_39 => X"00001d000021ffffee00000400002200001200001afffffa00000a00000b000023",
            INIT_3A => X"ffffecffffe5ffffce00000a000008000019000000000010000008fffff8000000",
            INIT_3B => X"fffff4000016000022000013000006ffffd0ffffc3ffffc8ffffb2ffffe3ffffcb",
            INIT_3C => X"000006ffffaeffffd7ffffceffffdafffff5ffffcffffff8fffff3000006ffffea",
            INIT_3D => X"00001b00001400001d00000f00001600001b00002c00001000000dffffd9ffffdd",
            INIT_3E => X"ffffe8000008000012ffffe5ffffd600000900000ffffff700001bfffffc000007",
            INIT_3F => X"ffffe4000013000002fffff9000006000000000001000003000000000015000009",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffdaffffc5ffffde00002b00001b000000ffffd8000000fffff8fffffdfffff1",
            INIT_41 => X"ffffed00000100000a000004000003000016fffffe000002ffffddffffceffffe2",
            INIT_42 => X"000008ffffecffffdeffffcafffffe000009ffffe900000100000f000012fffffb",
            INIT_43 => X"ffffdfffffeb00001bffffef000000000000fffff9ffffecfffff700000500000e",
            INIT_44 => X"00001000000c000000fffffb000019ffffebffffcfffffbf00001f000021ffffdf",
            INIT_45 => X"ffffe5000020fffffb000002ffffffffffe3ffffe6ffffbbfffff8ffffd6000019",
            INIT_46 => X"fffff4ffffd600000dffffe1fffffafffff8fffff3fffff0fffff4000012fffffb",
            INIT_47 => X"000002ffffeefffff200000b000029fffffdffffcd000006fffffaffffcfffffda",
            INIT_48 => X"ffffe400001f00001f000000fffff1fffffa000007ffffc600001f00000d00000b",
            INIT_49 => X"000000fffffefffff3000008000011ffffd9000037fffffbfffff700002a000010",
            INIT_4A => X"fffff000002affffc7ffffe9000015ffffc0fffff1000016ffffedffffe2ffffd5",
            INIT_4B => X"00000effffdcfffff8ffffb600004e000003ffffd900002c000044fffff8fffff7",
            INIT_4C => X"ffffefffffdb00001cffffeb00001200002900004700000700002700000f000005",
            INIT_4D => X"00000bffffd4ffffe600001900000f00000c000025000036ffffdbfffff3000023",
            INIT_4E => X"00002ffffff9ffffdaffffff000016fffff7ffffcf000013fffff6fffffb000005",
            INIT_4F => X"000006fffffc000040ffffd8ffffe700003cffffdcffffd000003a000003000027",
            INIT_50 => X"ffffeffffff5000023ffffecffffbefffff900002affffd0ffffe000001cfffff4",
            INIT_51 => X"fffffdfffffe000006000031000008000032000015ffffd600001affffe7ffffee",
            INIT_52 => X"fffffeffffeefffff000000bffffd7fffff4000002fffff800002affffcc000007",
            INIT_53 => X"000003ffffeb000004000002000015000016fffff8ffffddffffed000001fffff2",
            INIT_54 => X"fffffafffffdfffff800001000001dffffe0ffffef000020ffffefffffe2000027",
            INIT_55 => X"000040000019ffffe3fffff7000019000022ffffc0ffffe8000006ffffbeffffe2",
            INIT_56 => X"00005200005000001b00002e000042000011fffff5ffffee000055ffffedffffc1",
            INIT_57 => X"ffffc8000016000013ffffdaffffe100001bffffe200002300001e00000600005e",
            INIT_58 => X"fffff700001c00002dffffceffffed00000dffffde00000100001a000028000003",
            INIT_59 => X"00002700001700001d00001c00000affffe3ffffeafffff5fffffdffffe3000000",
            INIT_5A => X"000029ffffe600000800000500001d00001200001800002100001f00001e000005",
            INIT_5B => X"fffffaffffd3ffffdc000008ffffc3ffffca00005000003b00001700003200003e",
            INIT_5C => X"000022000054ffffd6ffffef000036ffffcaffffda000008fffffefffff8ffffef",
            INIT_5D => X"000004fffff3fffff0000004ffffe5fffffefffffffffff2fffffe000006000011",
            INIT_5E => X"ffffb5ffffa7ffffb400000700002900001d00001d00000500002500002e000029",
            INIT_5F => X"00003700002800002f000037fffff8ffffa1ffffbeffff93ffff8fffff89ffffbb",
            INIT_60 => X"ffffa9ffffcfffff96ffffb3ffffaeffffb7ffffad000015000029000027ffffff",
            INIT_61 => X"000010000012ffffd700003400002b000002000018000027000000ffffcaffffaf",
            INIT_62 => X"00001c000026fffff6ffffdcffffc5fffff3ffffedffffec00003200002800000e",
            INIT_63 => X"000004fffff4ffffdaffffe7fffffc000002000002000007fffff500000dffffef",
            INIT_64 => X"fffff7ffffd2fffff7000017ffffeffffff0ffffc7fffff5ffffe400001afffff5",
            INIT_65 => X"ffffeeffffdd00001e000000fffff9fffffeffffe9fffff9000000000009000000",
            INIT_66 => X"00001d000014ffffdafffff700000900001c000004ffffe5fffff1ffffecffffca",
            INIT_67 => X"00000700000600000f00000a000000ffffec00002a00002800000200001efffffe",
            INIT_68 => X"00001a00000700000700001900001100001a00000e00000ffffff1ffffeb00000e",
            INIT_69 => X"00000e00000a000012fffffe000000000006ffffffffffeaffffddffffe2000019",
            INIT_6A => X"00001900000e000021fffffa000000000016000007ffffe4ffffe400001100000f",
            INIT_6B => X"ffffee000015fffff3fffff700000b00000f00000500000c000027000016000026",
            INIT_6C => X"00000200002b00001efffff6ffffd6ffffe300000dffffacffffd800001effffd2",
            INIT_6D => X"ffffebfffffdfffffdfffff800000bfffffe00000bfffff9fffff7000027000017",
            INIT_6E => X"00001a000013000017fffffd00000f00000f00002800001e000000000005ffffee",
            INIT_6F => X"000017000000fffffbfffff900000cfffffd00000700002900002300001000001f",
            INIT_70 => X"ffff99ffffc5ffff77fffff2ffffc7ffffc400001600002900000a00001b000009",
            INIT_71 => X"ffffe5fffff9000009000007fffff200000bffffe3ffffb2ffffd5ffffe3ffffa0",
            INIT_72 => X"fffffbfffff3fffff5fffff100000800000afffffe00000800000500001efffffa",
            INIT_73 => X"000002000006ffffde000029000023fffff200000a000003000013000013fffff1",
            INIT_74 => X"000007fffff5ffffca00000bfffff1ffffc6fffff4000018fffffc000017ffffeb",
            INIT_75 => X"00000d000007000008000002ffffecffffdeffffedfffff9ffffe3fffffefffffa",
            INIT_76 => X"00001d00001b000019000007000013000011fffffdffffe4ffffe7000000000008",
            INIT_77 => X"000003000009000012fffffbffffecffffe5fffff3fffffd000005000024000020",
            INIT_78 => X"00002200002300004700004600001800002600001c00000000001800000f000005",
            INIT_79 => X"00000ffffffcfffffe000002ffffd7ffffebfffffdffffc700000dffffff000007",
            INIT_7A => X"ffffbcffff96000000ffffe7ffffff00000bffffc7ffff97fffffcffffe5ffffe6",
            INIT_7B => X"000041fffff100000a00000e00001300002300000effffe7ffffcfffffa0ffffd0",
            INIT_7C => X"fffff5ffffeaffffcaffffef000013ffffe7000027000008000027000023000025",
            INIT_7D => X"000004fffffffffff000000affffecfffffafffff2fffff8000005000004000006",
            INIT_7E => X"00000500000400001b00000a00001dffffee000009000024000015ffffffffffed",
            INIT_7F => X"00002300000b00000bfffffc000006000000fffff3000020fffff9000017000013",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY12;


    MEM_IWGHT_LAYER1_ENTITY13 : if BRAM_NAME = "iwght_layer1_entity13" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000004000006ffffeeffffd2fffff7fffffcffffe2ffffd900000500001600000b",
            INIT_01 => X"ffffdafffff7ffffee00000cffffe4ffffe8ffffe300000cfffff3ffffeffffff4",
            INIT_02 => X"fffffdffffed00000300001b00003a00000000000f00002cfffff4fffffc000021",
            INIT_03 => X"fffff9ffffecfffff5fffffc000009ffffff000004fffffefffffdffffdfffffea",
            INIT_04 => X"fffff800004500004600001b00003900001e00000900000c00000a000015ffffef",
            INIT_05 => X"00000ffffff9ffffe400000100000b00000600001700002300000b00003f00000e",
            INIT_06 => X"000008000039ffffcaffffd7ffffd4ffffb0ffffd4fffffcffffe3000026000046",
            INIT_07 => X"fffffd000004fffff600000cffffedffffedffffee000003fffff4000008000012",
            INIT_08 => X"ffffe2ffffe5fffff400000c00002700001bffffc7ffffb8ffffe8ffffc1ffffce",
            INIT_09 => X"00000dffffe6ffffff00000effffe800001400001e000004ffffdcfffff9ffffe9",
            INIT_0A => X"fffff4ffffeafffffaffffed000010000018fffff600001200001000000bffffd6",
            INIT_0B => X"00001500000600001fffff9dffffca00000bffffdeffffacffffcbffffc6ffffc4",
            INIT_0C => X"000028fffff200000c000008fffff8000012000014ffffed00001b000022000012",
            INIT_0D => X"000025fffff3fffffdfffff9000005fffffa00000600002d000016ffffef000016",
            INIT_0E => X"000016ffffc4ffffadffffe4ffffd5ffffd7ffffec000002fffff1ffffe5ffffeb",
            INIT_0F => X"00000400002d000013fffffe00001fffffd3ffffedffffefffffe3ffffd5ffffe0",
            INIT_10 => X"ffffd600000000000b000002ffffd5ffffd4fffff4ffffd1ffffe3000000fffff7",
            INIT_11 => X"00001f00000ffffff0fffff900000c",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER1_ENTITY13;


    MEM_IWGHT_LAYER2_ENTITY0 : if BRAM_NAME = "iwght_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffe7ef0006a4000521002a0cffb7b0003001000073fff170fffe76fff509fff8e0",
            INIT_01 => X"002323000bd5002342fff083fffd10fff6450016b3000b7a0015ce000dc2ffe731",
            INIT_02 => X"000006002a490018e6ffee1e0007d6ffddff0017c2000270000f0a000a63fff8a1",
            INIT_03 => X"ffffd7ffffef000005fffff2fffff7ffffedfffffaffffed000000fffff2fffff5",
            INIT_04 => X"ffffebffffeb000005ffffe4fffffdffffe9000010ffffdd000017fffffdffffcf",
            INIT_05 => X"ffffd3fffffefffff5000004000008ffffd1ffffe2ffffdc000002fffff5ffffdc",
            INIT_06 => X"00001cffffe8000000fffffbffffff00000cfffff7ffffdeffffeaffffdcffffdf",
            INIT_07 => X"fffff5fffffc000015fffff9000004fffff6ffffea000000000013000009000014",
            INIT_08 => X"ffffea000009fffff9ffffeafffffafffffcffffec000013000016fffffaffffe4",
            INIT_09 => X"ffffe2ffffe4fffff4fffff3000007ffffed00000400001afffff200001cffffe4",
            INIT_0A => X"ffffd4ffffd9ffffe2fffff1ffffdb00000ffffff0000000fffff8000015fffff5",
            INIT_0B => X"ffffe4ffffd0ffffe3fffff8ffffdaffffefffffdaffffe2fffff5fffff4ffffd7",
            INIT_0C => X"00000efffff2000005ffffddffffd0ffffe6fffff900000cffffe8000016000000",
            INIT_0D => X"ffffef00000600000d000017fffffaffffe0ffffdbffffe3ffffedfffff3000003",
            INIT_0E => X"000012ffffeaffffeaffffe6000004ffffdefffffbffffe5000013ffffe7000000",
            INIT_0F => X"fffff5ffffe0ffffdaffffdc000000fffffcfffffafffff900000d00000a000005",
            INIT_10 => X"00001600001600000effffeefffff500001e00000a00000900002c000015000014",
            INIT_11 => X"ffffeafffffd00000b000008000014000014ffffed000013fffffe00000affffff",
            INIT_12 => X"fffff100000f00000d000015000026000030000000fffff6ffffeeffffe8000000",
            INIT_13 => X"00003c00000400004f000057000029000012000036000027ffffe2ffffcbffffd2",
            INIT_14 => X"000011ffffd9ffffd4ffffdfffffecfffff400000900000c00003600000a00002e",
            INIT_15 => X"00003100001d000004ffffe6ffffc1ffffaf00000700000000000affffed00001a",
            INIT_16 => X"00006800003d000011000058000014ffffd7ffffc3ffffe0fffff0fffffafffff8",
            INIT_17 => X"ffffd4fffff7000012ffffe800003000000a00000fffffde00000ffffff0000030",
            INIT_18 => X"00003700004900002900006200006000005900004e00003f00003affffdd000001",
            INIT_19 => X"000011000010ffffea000003ffffe6000006ffffe6fffff600000b000012000017",
            INIT_1A => X"ffffeeffffbfffffc7ffffec00001afffffbfffffa000005fffffb000017fffff8",
            INIT_1B => X"fffff800000900000d00003500003d00002100000400001200001e00002100002b",
            INIT_1C => X"ffffc8ffffdaffffde00000200000600002200001c00000bffffe3ffffe9ffffd2",
            INIT_1D => X"ffffd2000009ffffe4000032000006ffffbf00001effffefffffc5000009ffffca",
            INIT_1E => X"fffff200001f00001100002cfffff6ffffcefffff6000004ffffe2000002000017",
            INIT_1F => X"ffffb200005f000019ffffae00003b000007000008fffff8fffff400001bffffca",
            INIT_20 => X"ffffeaffffe4fffff3000001ffffd9ffffd0000012fffffeffffd700005e000013",
            INIT_21 => X"00000500000300001f000000ffffcffffff700001affffee00001efffffcfffffb",
            INIT_22 => X"00000b00001f00001d000046ffff8a00000b00008bffff63000017000056ffffa4",
            INIT_23 => X"00001bffffe6fffff0000014ffffffffffd4000016fffff3ffffea000014ffffdd",
            INIT_24 => X"000014ffffe1fffff6000017fffff7ffffe2fffff7ffffdcfffff4fffff7ffffea",
            INIT_25 => X"00002300000fffffed000002000062fffff0ffffe5000033ffffeffffff5000022",
            INIT_26 => X"ffff7300001c00001affffbb000005000050ffff92000013000045ffffdbfffffe",
            INIT_27 => X"fffffaffffd200001200000e000054ffff6800001b000057ffff4900000c000047",
            INIT_28 => X"fffff8000022000012000003000008fffff6fffffd000019ffffe9ffffd6fffff2",
            INIT_29 => X"fffffa00000dffffc9000045000001ffffaa000042000001ffffd5000004fffffd",
            INIT_2A => X"fffffb000000ffffddfffff4ffffe3000030fffff400001c00001bffffd8fffffb",
            INIT_2B => X"ffffe6ffffae000036000016ffffdc000011ffffebfffff300001efffff8000016",
            INIT_2C => X"ffff83ffffe3ffffdeffffb500002dfffff300000600003b00000bffffee00001e",
            INIT_2D => X"000014000042fffff5000024000000ffffc5000040ffffefffffa700000affffc4",
            INIT_2E => X"fffff0ffffd9000009ffffe3ffffe6ffffee00000e00000affffe300001a000016",
            INIT_2F => X"000029000004fffffe00004700001c00001c00004c00004700002a000016fffffb",
            INIT_30 => X"ffffe6ffffe200001ffffff0fffff9ffffe1ffffdbffffc8000011ffffe8ffffdf",
            INIT_31 => X"000011ffffef00002dffffefffffdefffff9000000ffffac000008ffffc1ffffcd",
            INIT_32 => X"ffff9400000dffffcaffffceffffcdffffce00000000003000000fffffd7000016",
            INIT_33 => X"00002800001700000100003f00000effffed00000bfffff9ffffd9000002ffffc8",
            INIT_34 => X"000031ffffcafffff200002a00004900003c00004f00005000004d000042000016",
            INIT_35 => X"ffffc400000c000012ffffe200002100002a00003affffea00003200000f000039",
            INIT_36 => X"ffffdcffff9fffffc0ffff8cffffaeffffe9000006000029ffffdb00001900001b",
            INIT_37 => X"000034ffffecffffd500000afffff6fffff000001500000fffffecffffd2ffffaa",
            INIT_38 => X"fffff8fffffcfffff2fffffe00000bffffe0000005000006ffffe7000018ffffd5",
            INIT_39 => X"ffffd200004400000c000027ffffc000002f000025ffffcc00002c000005fffff4",
            INIT_3A => X"ffffccffffcaffffe5fffff0000003ffffc800004affffe5ffffac000061ffffda",
            INIT_3B => X"fffff1ffffd800002e00000cffffee00000cfffffd00000effffc400001dffffd5",
            INIT_3C => X"00005fffff6a000031000068ffff38000039000019ffffbb00001bffffc5000019",
            INIT_3D => X"000003000000ffffc700003900000f000005000033ffffe600001900000500002b",
            INIT_3E => X"fffff8ffffeefffff700000fffffc4000007ffffccffffddfffffbfffffbfffff3",
            INIT_3F => X"ffffe100003effffcbffffe900002cffffd1ffffebfffffc000029fffff1000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffff7800002a00002affffa500001e000023ffffda00001dffffd3000039ffffbf",
            INIT_41 => X"00002000007fffff6700005900004effff86000054000012ffffd000001c00005b",
            INIT_42 => X"ffffe800001600000dfffffa00000300000f000017ffffe200001efffff3000004",
            INIT_43 => X"000060ffffd3ffffc9000033ffffdeffffe7000000000031ffffc400001cfffffe",
            INIT_44 => X"000007ffffecfffff1fffff0fffff1ffffef000013ffffac00004c000009ffff81",
            INIT_45 => X"ffffc5ffffbeffffdbffffe0ffffffffffc6000019fffff4000010fffff9000004",
            INIT_46 => X"00000500002f00002100000100000f000011000010ffffe9000023fffffa000011",
            INIT_47 => X"ffff69ffff88ffff90ffff91ffffedfffffd00003a00001100000800000a00000c",
            INIT_48 => X"ffffe6fffffa00001afffff900000c000022ffff94ffff7dffff7dffff8bffff23",
            INIT_49 => X"00000ffffffd000009000023fffffd00001200002700000effffe1000017000038",
            INIT_4A => X"00000600000900001200000f00001fffffecffffef00001500001600000dffffe8",
            INIT_4B => X"ffffe300000affffdeffff9bffffa5ffffaeffffa8ffffb1ffffc5ffffebffffd6",
            INIT_4C => X"ffff87ffffc3fffff7ffffb7ffffe7000015fffff0fffffeffffdbfffff6000017",
            INIT_4D => X"ffffe7000020fffffffffffe00001fffffed00000fffff8effff94ffffbcffff84",
            INIT_4E => X"00000200002f000014000007000028000010000007000023ffffe300000b000001",
            INIT_4F => X"000002fffff7ffffe3ffffc8ffffadffffb0ffff70ffff71ffffa9ffff7effff8f",
            INIT_50 => X"000000ffffee00000dfffff800000100000c00001cffffcdffffe5000012ffffe2",
            INIT_51 => X"fffff000001dfffff7fffffc00002800001600002200001900001300000a00001e",
            INIT_52 => X"ffffd9ffffd500000dfffff3fffffdffffdd00002f00001b00001700003b000026",
            INIT_53 => X"00002c00000c00000300001400000800000400002a000028000010000032ffffd3",
            INIT_54 => X"ffffd7000042fffffdfffff0000018fffffd00000dfffff700001dffffea00002f",
            INIT_55 => X"fffffbffffeffffff2ffffe3ffffc300000d00000a00001b000021000030000030",
            INIT_56 => X"00001900002f000019000021000003000006ffffea00000b00003f000044ffffff",
            INIT_57 => X"00001300002700001d000001fffffcfffffcffffaeffff9bffffac00000f000035",
            INIT_58 => X"00000800002b00001600003cfffff1ffffe6000002fffff7ffffddffffdbffffec",
            INIT_59 => X"fffffa00002800002500003300000dffffdf000019000000fffff3fffffb00000f",
            INIT_5A => X"00000e00000f000005000006000010000037ffffcf00000dfffffdffffe7000016",
            INIT_5B => X"ffffbeffffe9000006fffff900002700003600002600001800000effffcdffffcd",
            INIT_5C => X"ffffc5ffffdfffffd6000002ffffd8ffffe500000fffffea00000a000016ffffe2",
            INIT_5D => X"000009000006ffffd600002900001800002d00001f00001c000020fffff0000009",
            INIT_5E => X"ffffdefffff6ffffc7ffffdeffffddffffc4ffffdeffffed000026ffffd5ffffcd",
            INIT_5F => X"ffffedffffecffffd8ffffd6000000ffffd7ffffee00001600001f000002ffffe9",
            INIT_60 => X"00000a000000fffff7fffff5fffffefffff900001c000001fffff1000002ffffd3",
            INIT_61 => X"00002a000026000006ffffefffffdc000000fffff8fffff4fffffbffffff000002",
            INIT_62 => X"fffff5fffff700000afffff500002700004800004400001300003b00003cfffff6",
            INIT_63 => X"00002e000003000018000030000026000000000007000026000024000012ffffff",
            INIT_64 => X"ffffa0ffff9dffff82ffffaeffffc1ffffaaffff92ffffcd00000cfffff3000016",
            INIT_65 => X"000000ffffef000006ffffcfffffe100001e000004fffff4ffffda000023ffff6b",
            INIT_66 => X"00000100002000002bffffde00001b000015ffffdffffff1fffff800000bffffdf",
            INIT_67 => X"fffffffffff900002000000000002200002100001e00000200000c00003d000021",
            INIT_68 => X"000002000020ffffe2000008fffff1000015fffffbffffec000000ffffff000002",
            INIT_69 => X"ffffd8ffffd8ffffc8ffffd1ffffdf000013ffffe0ffffd0fffff200000efffff5",
            INIT_6A => X"fffff200000000000dfffff800000800000bffffe2fffff4ffffe1fffff0ffffd0",
            INIT_6B => X"fffff100001500000d000019fffffcffffeaffffecffffd0fffff8fffffbffffd4",
            INIT_6C => X"fffff900000cfffff800002b00001bffffe8ffffb6ffffca000000fffff5fffffb",
            INIT_6D => X"ffffe7ffffe5000020fffff1fffff6ffffe4000001000009000025fffff000001c",
            INIT_6E => X"00001500001400001200000f000012000020000027000010000012fffffc000015",
            INIT_6F => X"00002200000200002300000400000fffffd2000021ffffb7ffff8dffffd6ffffc6",
            INIT_70 => X"00001affffef000014fffff900001affffe5ffffecfffff9000012fffffe000006",
            INIT_71 => X"00001500002000001600002600000c00000c00001d000011000016fffff300001d",
            INIT_72 => X"00000000002e00000afffff900000e00000500000c00002600002700000f00000e",
            INIT_73 => X"00003ffffffeffffd0ffffe0000003ffffebffffd700000affffff00001a00002c",
            INIT_74 => X"ffffd3fffff6ffffd7ffffc400002900003900003f00002100003d000049000018",
            INIT_75 => X"ffffd8ffffaaffffeaffffebffffde000031fffffd000010fffff3fffff3fffff8",
            INIT_76 => X"000029ffffe4fffff8fffff6ffffd2ffffc4ffffd300000d00001affffe5fffff0",
            INIT_77 => X"000018ffffdeffffbdffffd1fffff1ffffe6fffff4fffff3000013000023000028",
            INIT_78 => X"ffffc5ffffe800002efffff8ffffcbffffe4ffffcefffff1fffffdfffff100001e",
            INIT_79 => X"00001d00002afffff5000004fffff7000004000024fffff7ffffe8fffffbffffed",
            INIT_7A => X"000002fffffdffffebfffff100001400001300001cfffffdfffff200003800000a",
            INIT_7B => X"00000700001c00001cfffffb000025000026fffff700000f000034000004ffffed",
            INIT_7C => X"fffff7ffffe000000600001700003500002a00003800006500000200000600000c",
            INIT_7D => X"ffffa7ffffbcffffcbffffddffffcafffff9ffffe5ffffc3ffffddffffe8ffffdd",
            INIT_7E => X"ffffe9ffffbdffffc700000500003b000035ffff9cffff96fffff5ffff62ffff78",
            INIT_7F => X"000023fffff7ffffdc00001d000004000010ffffc700002effffd7ffffbfffffdc",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER2_ENTITY0;


    MEM_IWGHT_LAYER2_ENTITY1 : if BRAM_NAME = "iwght_layer2_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000003000011fffffaffffe9ffffe200001900000000000800000afffff5",
            INIT_01 => X"00001a00000efffff600002300001b00001c00001e000012000019fffff700001e",
            INIT_02 => X"ffffc1fffff2ffffc1ffffa1ffffb100000f00001b00002bfffff2fffff8fffffa",
            INIT_03 => X"00000a00003e00003c000040ffffea00000e000005ffffb4ffffccfffffaffffa5",
            INIT_04 => X"ffffed000014ffffebfffff7ffffe9fffff1000016000008ffffe5000030000037",
            INIT_05 => X"000005ffffe800002800002900002b00000800000500002c000001fffff8ffffe7",
            INIT_06 => X"000011fffff4ffffe4000021fffffb000018fffffbfffffe000000000001ffffeb",
            INIT_07 => X"00001c00000a00002400001d000011000029000022fffff5ffffe700004b000033",
            INIT_08 => X"ffffe6fffff1ffffed00001e000005000034ffffedfffff9fffff3ffffe7ffffe6",
            INIT_09 => X"00001300001200001b00002300001e00001300001200001800001dfffffbffffe1",
            INIT_0A => X"ffffe700000100003cffffce00000d000013fffffe000024000014ffffe100000d",
            INIT_0B => X"000032000042ffffed00000000001600003200003500000500000400003c00001d",
            INIT_0C => X"00002b00002a000062000041000015000020fffffc00002500001b00001b00003e",
            INIT_0D => X"ffffcaffffccffffe8000017fffffa00000d000009fffffd00001800004400003a",
            INIT_0E => X"fffffbffffef00004100003800001400004e000052000036000000000019000007",
            INIT_0F => X"00000200001400001e00001bfffff9000011fffffd00002a000023000000000002",
            INIT_10 => X"ffffd4ffffde000010fffff2fffff000000a000009ffffe2fffff8ffffef000004",
            INIT_11 => X"ffffd3ffffd9fffffa00000afffff9fffffc000013fffff4ffffc9fffff2000019",
            INIT_12 => X"ffffeafffff8000009fffff700000000001efffffb000023000009fffffafffffd",
            INIT_13 => X"000017fffffd00001f000003000013fffff700002b000008000004000021000000",
            INIT_14 => X"000010ffffdc00001600000700000500003500002dfffffb00001e000014ffffe4",
            INIT_15 => X"ffffcefffff0ffffdcffffd500002a00001afffff6fffffc000013ffffe1ffffea",
            INIT_16 => X"ffff65ffff73ffff74ffff63ffff45ffff4affffe5ffffd8ffffae000015ffffbb",
            INIT_17 => X"000013000031ffffe900001afffff600000000000400000effffe400000f000000",
            INIT_18 => X"000028ffffcbfffffafffff7ffffda000018000037ffffe700002200005bffffc9",
            INIT_19 => X"fffffa000011000002ffffc5ffffd7ffffe2000006000020000051ffffd8000003",
            INIT_1A => X"000001ffffcb00003200001effffdb00003700002bffffee00001d00002d00004b",
            INIT_1B => X"000016ffffebffffc6ffffcbffffd3ffffc9ffffc9ffffccffff7effffc100000e",
            INIT_1C => X"00000c00000500003200001900002dfffff500001300002000000b000006000001",
            INIT_1D => X"ffff99ffff8200002200000cfffffa00001500003700003300001b00002600003f",
            INIT_1E => X"000001000019fffffb000018fffff8000025000018fffff3ffffc3ffffcbffffd1",
            INIT_1F => X"00001a000019000018000019000015fffff8000027ffffd9000002ffffcdffffe9",
            INIT_20 => X"000011fffff0000018fffffe000012ffffeeffffddffffe6fffffaffffe0ffffec",
            INIT_21 => X"fffffc000012fffff4000005ffffdcfffffbfffff8ffffd900000c00000cffffdf",
            INIT_22 => X"00000e000000000000fffff9000011ffffff000016ffffe1ffffee000011000005",
            INIT_23 => X"ffffec000012ffffbfffffc8ffffcdffffa3ffff9fffffceffffecffffe2fffff6",
            INIT_24 => X"ffffee000018fffff900001300000700001400000a00001f00000f00000cffffff",
            INIT_25 => X"ffffd2ffffd0ffffaf000012fffff1ffffcfffffefffffdbffffdefffffcfffffe",
            INIT_26 => X"ffffbdffffefffff97ffffa8ffff96ffffd6ffffcaffffeeffffddffffb0ffffaf",
            INIT_27 => X"00001f000023000017fffffe000001fffffd000006fffff0000013fffff4ffffe9",
            INIT_28 => X"ffffdeffffe2ffffc4ffffc5ffffb5ffffc2ffff95ffff63ffffad000006000023",
            INIT_29 => X"00001e00000bfffff000000900000afffffb000008ffffe1fffff8000014000017",
            INIT_2A => X"ffffe8ffffb1000000fffff100001100000e000017fffff0fffff7000012000003",
            INIT_2B => X"00000800000f00000dfffff3fffffbffffec00001400002800001fffffefffffcf",
            INIT_2C => X"000028fffffdffffcd00000bffffefffffd0ffffd7fffff3ffffdefffffbffffe3",
            INIT_2D => X"00001000002a00002300000100001cfffffeffffd900000100000dffffcdfffff7",
            INIT_2E => X"000011fffff2000003ffffddfffffb00000affffecffffe000000efffff9ffffef",
            INIT_2F => X"fffff2ffffed00001600000300000300001000000a00001bfffff5ffffdfffffff",
            INIT_30 => X"00006900005c00005f00006a00002c00001400003dfffff1fffff1fffffd000003",
            INIT_31 => X"00002900001e000020fffffbfffff8ffffaeffffb6ffffc6ffffbb00007500004d",
            INIT_32 => X"ffffa7ffff9bffffe9ffffcbffffd3ffffc6ffff95ffffa9ffffc3ffffd2ffffc0",
            INIT_33 => X"00002cffffe200000700002b00001300002700001bffffb5ffffb5ffffbdffffbd",
            INIT_34 => X"000001fffff100000000001100001efffff100000200001effffe9000014000044",
            INIT_35 => X"fffff900001000000900000700000200000500001900001c00000fffffee000000",
            INIT_36 => X"00000cfffffeffffd8fffffd00000bffffec000007000019000003000029ffffd1",
            INIT_37 => X"fffffdfffff7fffffc000007ffffe200000c00001500000efffff500000200001e",
            INIT_38 => X"000018fffffbfffff4fffff2ffffcf00003200003b00006000002800003a00004f",
            INIT_39 => X"fffff6fffffbffffe6fffff8fffff6ffffe3fffffa000038fffffffffffbffffed",
            INIT_3A => X"fffff0fffff0fffffefffffa000007000018fffffdfffff0000006000008000016",
            INIT_3B => X"fffffefffffdfffff2ffffdbffffb6000006fffffaffffe100002e000000ffffdf",
            INIT_3C => X"00001e00001f000006000019000001000009000000ffffecffffe1ffffdf00001f",
            INIT_3D => X"ffff1bfffeb6fffef2ffffe3ffff56ffff63ffffeb000005fffffe000005000008",
            INIT_3E => X"00002700003bfffff3000019000029ffffed00002b00003cffff2fffff1effff33",
            INIT_3F => X"00001effffea00000c000011fffff2000003000039fffff8fffffd000019000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000010ffffd700000000002a000019000051fffffb00000400000f000000fffff6",
            INIT_41 => X"fffff5ffffeb00000b00000d000024fffff3fffff500001300002cffffef00002d",
            INIT_42 => X"ffffe6ffffdeffffe3ffffddffffeaffffd3fffff0ffffff00000ffffffd00001f",
            INIT_43 => X"ffffe4ffffd7fffff200001cfffffbffffde000001fffffdfffffefffffaffffc7",
            INIT_44 => X"ffff7cffff88fffff8fffffc000006ffffdcfffff7000017ffffea00001e000024",
            INIT_45 => X"000011fffff800000300001fffff84ffff38ffff6bffff5dffff3affff1200000e",
            INIT_46 => X"fffff9ffffe5ffffd1fffff0fffff5ffffcdffffecfffffeffffed000001000021",
            INIT_47 => X"00003300003000001d000016ffffe7fffff600002e000033000013ffffea000000",
            INIT_48 => X"fffffafffff4fffff4000016ffffdf00000100002900001afffff400002f00000b",
            INIT_49 => X"fffffdffffecffffffffffd0ffffc8fffff9ffffe9ffffd0fffffb00001500000f",
            INIT_4A => X"ffffb0fffff6fffff3ffffecffffda000009ffffdcffffe5ffffed000003fffff9",
            INIT_4B => X"ffffe5fffff2fffffeffffeeffffe0ffffe3ffffe6000001ffffebffffd1000007",
            INIT_4C => X"ffffbeffff8dffff92ffffc3ffffaeffffc4ffffabffffb3ffffce000001ffffe7",
            INIT_4D => X"ffffd9ffffd3ffff90ffff75ffff94ffffb4ffff75ffff83ffffd6ffffa2ffff52",
            INIT_4E => X"00002700000100002500002bffffc4ffffc7ffffc2ffffd6ffffe5ffffcaffffdf",
            INIT_4F => X"ffffeafffff9ffffeb000010ffffee00002100000100001700001400001f00001f",
            INIT_50 => X"00002300001c00000a00000000000700002700001400000b000007ffffe4fffff1",
            INIT_51 => X"ffffe900003f00003600002800002800004a00001600000e00003ffffffdffffff",
            INIT_52 => X"000010000008ffffdb00000f00000c000019000001ffffecffffcbffffc000001c",
            INIT_53 => X"00006500003800000d00001d000026ffffe5ffffebffffcefffffeffffdd000000",
            INIT_54 => X"ffffeafffffe000012fffffc00000700002b00002800007300007e00004d000069",
            INIT_55 => X"00004600002d000036000024000020000019ffffb9ffff8dffffbeffffd5ffffe3",
            INIT_56 => X"ffffbbffffc8fffff0fffff4ffffdcfffff1fffff4000016000007000019000011",
            INIT_57 => X"00000e00002200001d00004100002500002000001affffe600001e000008ffffe8",
            INIT_58 => X"fffff8ffffed000012000020000050000036ffffcffffff000002a00001b000017",
            INIT_59 => X"ffffa2ffffd0000004ffffe9ffffec00002300004800004fffffd7ffffaaffffd8",
            INIT_5A => X"000042ffffabffff8effffb7fffffa00001d00000400004d00007d000062ffffd9",
            INIT_5B => X"fffff6ffffdaffffe0ffffeaffffdaffffbf00001a00001700001d000026000032",
            INIT_5C => X"00001000000effffc1ffffb7ffffc000002400000400000f000015000016000013",
            INIT_5D => X"00004100000700000bfffff1ffffb5ffffa6ffffdb00002100002900002affffff",
            INIT_5E => X"ffffe5ffffd8fffff9ffffe1fffff5ffffe8000011fffff7fffffe000031000046",
            INIT_5F => X"000004fffffdfffffe00000000002b000011000015000016fffff300000b000025",
            INIT_60 => X"00001000002800002f000019ffffc3ffffddffffe2000019000010fffffa000033",
            INIT_61 => X"fffffe000000fffff8ffffefffffe9fffffbffffc0ffffcbffffdd00000400000d",
            INIT_62 => X"000003000024000006000037000014ffffdffffff300000affffdcffffe7ffffca",
            INIT_63 => X"000023fffff9000002fffff200002efffff3000001000036000023fffff2000025",
            INIT_64 => X"fffffe00001300002e00000cfffffa00001400001600001000000000001a00002a",
            INIT_65 => X"ffffefffffecffffe6ffffe3ffffdcfffff5000020000006000008000001000036",
            INIT_66 => X"00002700001300000a00000100001000000ffffffbfffff8fffff7fffff1000003",
            INIT_67 => X"00004900003a00004200001f00005a000060ffffe800001f00000b000038000012",
            INIT_68 => X"000000ffffe900001a00001600002600002c00003d000022fffff4000017000021",
            INIT_69 => X"00001bffffe9fffff700001500000400000effffe300002400000cfffff5000028",
            INIT_6A => X"00002800002b00001f00001cfffffd00001effffd8ffffdbfffff7ffffc7000026",
            INIT_6B => X"ffffd7ffffdaffffdcffffe8fffff2000023fffffbffffd100003000001300001d",
            INIT_6C => X"fffff8fffffc000011000021000008000005000028ffffe5000010fffff1ffffe3",
            INIT_6D => X"ffffb8ffffbeffffc6ffffe7fffff0ffffeafffff3ffffef00001affffea00001d",
            INIT_6E => X"00003600003d00001100002d000031ffffa8ffffcaffffd3ffffcdffffd3ffffb5",
            INIT_6F => X"00006300000000000f00004300005200002d000045000021000033000019000020",
            INIT_70 => X"00003700002a00000e000057fffff6000002000015000011000036000015000025",
            INIT_71 => X"ffffe3ffffcb000018ffffa8ffffbfffffa6ffff8bffffa7ffff96fffff2ffffe4",
            INIT_72 => X"ffffe1ffffd700000dffffe7000012ffffffffffe6000029ffffe0ffffbb000012",
            INIT_73 => X"00000effffcaffffe3ffffb1ffffbfffffb700000bfffffbffffcfffffea000004",
            INIT_74 => X"000029ffffe900002000000afffff4ffffe7fffffeffffe200000300000300000a",
            INIT_75 => X"fffff000003000000affffdf00000c000011fffff1ffffe6fffff4ffffe5000021",
            INIT_76 => X"00000600003dffffcefffffeffffe1ffffbeffffd2ffffc8ffffdbffffcd000001",
            INIT_77 => X"ffffd200000f00002700001b000023000032fffff5fffffd000010fffffa00000f",
            INIT_78 => X"00000400002000002c00000400000100000800003cfffffaffffef00001900000e",
            INIT_79 => X"000022000031fffff5000049fffffaffffd900002bffffebffffff00001a00003e",
            INIT_7A => X"00005600004000002efffff8ffffe100002200002400000ffffff0000023000009",
            INIT_7B => X"00000fffffe7fffffa00001c00003000002000002c00004e00004400004d00003f",
            INIT_7C => X"ffffdcffffbaffffa8ffffc9ffffc4fffff9ffffed00002000000bfffffc000015",
            INIT_7D => X"00000000000b00000200000000001b00000effffe4fffff2ffffcdffffbdffffcb",
            INIT_7E => X"ffffedfffff500000800002500000000001f000016000003ffffebfffff5000009",
            INIT_7F => X"fffffffffffd00001900003500001bffffddffffdeffffebffffe8fffffbfffffb",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER2_ENTITY1;


    MEM_IWGHT_LAYER2_ENTITY2 : if BRAM_NAME = "iwght_layer2_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffff300000bffffe700000ffffff900002600002900001800000900000300001c",
            INIT_01 => X"ffffd6ffffe8fffff4ffffd9ffffc9fffff5ffffdeffffea000015000019ffffe7",
            INIT_02 => X"fffff7ffffe7fffffd000007ffffdbffffdeffffff00000afffff8ffffccffffb6",
            INIT_03 => X"ffffe4fffffb000017000007000010ffffef000011000013000012fffff7000019",
            INIT_04 => X"fffffaffffe0ffffd7ffffdd000007ffffee000004000009fffffd00000ffffffd",
            INIT_05 => X"ffffe800000a000010fffff000001afffffafffff7fffff9ffffe4ffffecffffce",
            INIT_06 => X"ffffbcffffc6000009ffffb9ffffcfffffc7ffffc9ffffc1000017000024ffffe1",
            INIT_07 => X"ffffe600000200000100001effffef00001900001e00000f00001600001cffffcf",
            INIT_08 => X"000019000014000005ffffffffffdffffff2ffffef00000400000affffe0000006",
            INIT_09 => X"ffffd7ffffd3000003000000ffffec000022000035fffff2000012000002000019",
            INIT_0A => X"000005ffffd1ffffdfffffd2fffff7ffffc2ffffc0000003ffffebfffff500000a",
            INIT_0B => X"fffff4ffffe9ffffe6ffffecffffe4ffffe3ffffd2ffffefffffdaffffe6fffff6",
            INIT_0C => X"00002100000d000002fffffafffff6000023fffff9fffff8fffff8000015000025",
            INIT_0D => X"ffffc5ffffdfffffe3ffffed000010000008000021fffff100000bfffffc000014",
            INIT_0E => X"ffffe6ffffe0ffffe3ffffd2fffff7ffffe9ffffddfffff3000012ffffe9ffffca",
            INIT_0F => X"fffffb00001bfffff1fffff5000004fffffb00000f00000fffffe3ffffdeffffed",
            INIT_10 => X"000008000002000015fffff7000005000006000006ffffee000003000013ffffe0",
            INIT_11 => X"000008fffffa00000700003100000cfffffe00001a00001900000e000001000023",
            INIT_12 => X"00000f00000600003e00002c000004ffffdbffffdafffffdffffd5ffffe3fffff3",
            INIT_13 => X"ffffd0000000ffffdbfffff500000500000afffff400001600003500000800003f",
            INIT_14 => X"fffff8ffffe700001d000008fffff500000b00000effffddffffe600000bffffef",
            INIT_15 => X"00000bffffe400001b00002b00001000003700001e00001000002d00003600000e",
            INIT_16 => X"ffffc3ffffeb00000000001100000cfffff0ffffff000019000008000017000007",
            INIT_17 => X"ffffebfffff5ffffd7fffff7ffffe700000effffdbffffd1fffffeffffc5ffffc5",
            INIT_18 => X"00000cfffff9ffffe8ffffdb00000800000100001400001bfffff0ffffd7ffffd3",
            INIT_19 => X"fffff200000bffffc1ffffd8ffffe5fffff8ffffdaffffefffffd0ffffed00000b",
            INIT_1A => X"000004000000ffffe700002500000d00002200002800001700001500001cffffea",
            INIT_1B => X"fffff0000006ffffe6ffffd4fffff400000afffff4000006ffffff000014ffffe2",
            INIT_1C => X"00001400000bffffecfffff7000001fffffc000035fffff5ffffe7ffffe2ffffe8",
            INIT_1D => X"ffffec000008fffff3000009000018ffffef00000600001100001cfffffcffffce",
            INIT_1E => X"fffff8fffffbffffffffffed00000dfffff4fffff600002800001b00000900000e",
            INIT_1F => X"fffff6000010fffff0000000ffffcbffffc4fffff8ffffbe000000000000fffff2",
            INIT_20 => X"ffffd0fffff0ffffc2ffffcfffffdcffffd5000007000028000018000006fffff7",
            INIT_21 => X"fffff8fffffcfffff9ffffdcffffe5000008000007fffff1ffffceffffc9ffffcb",
            INIT_22 => X"fffff900000d00001b00000e00002cfffffeffffed000002000008ffffdcffffd9",
            INIT_23 => X"ffffe4000006fffff8000017fffff5000004ffffff000017ffffdeffffdfffffe1",
            INIT_24 => X"00000c000009ffffe200001f000037ffffefffffe9ffffeaffffee00001dfffff1",
            INIT_25 => X"000026fffffb00001f00000c00002000001a00003900000c000010000000fffff3",
            INIT_26 => X"fffff700000a000014fffff4fffff2ffffeffffff300000b00001bfffffa00001c",
            INIT_27 => X"ffffcc000020000005000001ffffe9ffffd5ffffc4ffffdfffffdbfffff1ffffee",
            INIT_28 => X"ffffd4ffffbeffffb9ffffceffffb700001f000000ffffc0ffffe1000000ffffd1",
            INIT_29 => X"fffff1fffff1000001fffff1fffff7ffffe300003c00003600003b000003ffffa5",
            INIT_2A => X"00000effffed00000000002700000b00000900003000001a00001cfffffefffff3",
            INIT_2B => X"00000afffff8000019ffffe7fffff900002400003500002600001000000afffff2",
            INIT_2C => X"ffffde000001fffffaffffe6fffff8fffff2ffffe4000005000009ffffe0ffffec",
            INIT_2D => X"000014000019ffffe8000003000015ffffe000001700000bffffa7ffffdb000001",
            INIT_2E => X"00001fffffe3fffff1fffffd000001fffff2000017fffff2ffffe7000010fffffd",
            INIT_2F => X"fffffd000006ffffebfffff0000006ffffccffffef000000ffff9d00000efffff0",
            INIT_30 => X"00001800003000000d00001700000b00000b000013fffff4ffffdf000007ffffe2",
            INIT_31 => X"000050fffffe00000b000022ffff8bfffffa00000e000002ffffdcfffff4000004",
            INIT_32 => X"fffffcffffea00001afffff5ffffeafffff500000700003900003b00000100002a",
            INIT_33 => X"00000d000005fffffbffffe0fffff0ffffe4000015ffffdd00001900002000002e",
            INIT_34 => X"00004200003e000007fffff600005600003c000008000029000013000014000007",
            INIT_35 => X"00001500004700001400005700003e00003d00003700006000004c00003300002d",
            INIT_36 => X"00000700001500003900002400001f00001b00002b00001100006b000041000045",
            INIT_37 => X"000006fffffdffffe200000bfffffffffff1000018000015fffff900001c000024",
            INIT_38 => X"fffff4ffffbfffffe5000001ffffb7ffffc7fffffdffffe3ffffdf000005ffffe7",
            INIT_39 => X"ffffd9ffffefffffc900000e00003affffa8ffffdf000010ffffe6ffffd200000a",
            INIT_3A => X"ffffffffffdcffffdafffff6ffffccffffe6ffffdcffffabffffcafffffeffffe5",
            INIT_3B => X"000023000020ffffe0000018000005000009fffffa00001700001fffffe7000003",
            INIT_3C => X"ffffccffffe3ffffbeffffcafffff9ffffd8ffffe3ffffbf00000800000d000001",
            INIT_3D => X"000034000000fffff9000013fffff9ffffff000003fffffcfffff7ffffebffffdf",
            INIT_3E => X"ffffb4ffffca000006ffffaa000003000036ffffcafffff100002a000016fffff2",
            INIT_3F => X"00002f000063ffffc000001a000033ffffeeffffef00002effffedffffd5000027",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffbb000004000006000019ffffc900001b00003400000200004e000040fffff8",
            INIT_41 => X"000021000000000009000015000003ffffefffffeb00002300001d00002e000024",
            INIT_42 => X"00000affffedffffe3ffffb3000011000009ffffa4ffffea000048ffffc5ffffdf",
            INIT_43 => X"fffff5000019ffffe2ffffea00000b000018fffff300001d000002fffff200001e",
            INIT_44 => X"ffffb1ffffe8000043ffffcaffffe0000002ffffe7ffffedffffe6ffffe7ffffdb",
            INIT_45 => X"fffffaffffff000030000013000010000021000026000009ffffc500001f000031",
            INIT_46 => X"ffffb9ffffbefffff4000056fffffeffff9f000038fffffdffffe2ffffff000018",
            INIT_47 => X"ffffc5ffffe1000002fffff8ffff85fffff4fffffcffff5dffffb300000cffffe3",
            INIT_48 => X"000016000009ffffd6ffffe4000010ffffec00000effffe6ffffd1ffffd3fffff7",
            INIT_49 => X"ffffca00005900002affffeb00001300002f00001bffffe600001a000014ffffde",
            INIT_4A => X"fffff4fffffe00002c00000900001500000b00001dfffff2ffffe100005900001f",
            INIT_4B => X"ffffec00000cffffd4ffffdf000006fffff2fffff4000013ffffc2ffffeaffffc8",
            INIT_4C => X"00000e000007000003000007000007ffffee000001000000ffffe8000013000012",
            INIT_4D => X"000072000083000074000029000037000057000019000018000000000016000000",
            INIT_4E => X"000006fffff3fffff7fffff2ffffeefffff6000009fffffa00002f000056000036",
            INIT_4F => X"00000f00001b00000a00000cffffee000033ffffec00000d000013fffff0fffffd",
            INIT_50 => X"00003800002efffff8ffffdffffff9ffffd1ffffe9000017ffffee00001b000014",
            INIT_51 => X"000001ffffe8ffffdd000008ffffe5ffffd6fffff4ffffecffffe5000026000008",
            INIT_52 => X"00003600003a00003900005800002f00000f00002200001ffffffa000000fffff4",
            INIT_53 => X"ffffd6fffffdffffe7ffffd3000027ffffdffffffb00000e00000f00002000001a",
            INIT_54 => X"00003400001e00002600002b00000100003000000400000300000cfffff8000000",
            INIT_55 => X"000004fffff4ffffe500001e00003f00002f00003c00003000002a000029000031",
            INIT_56 => X"000000ffffd1000012000012ffffd7000007000014fffff9ffffe8ffffefffffed",
            INIT_57 => X"ffffc5ffffd7ffffdbffffe5ffffcb000006000000000007ffffd3ffffef00000b",
            INIT_58 => X"ffffe900001e00003500004dfffffc00001a00001c000004000006fffff4fffff1",
            INIT_59 => X"ffffddffffe500001f00000300000100001bffffe3ffffe0000011fffffc00000d",
            INIT_5A => X"000031fffff700001c00002a00000c00001900001300000c000016ffffff000014",
            INIT_5B => X"ffffafffffd0ffffaeffffc3000003000000ffffc9000022fffffc000021000008",
            INIT_5C => X"ffffc0ffffe2fffff3ffffe9ffffbbffffdcfffff9000000fffff9ffffa5ffffd1",
            INIT_5D => X"fffffeffffe9ffffb1ffffd2ffffaafffff8ffff9bffff9600005d000023fffff1",
            INIT_5E => X"fffffcfffffb00000f00000affffdc000007ffffcd000024ffffe0ffffd800000a",
            INIT_5F => X"00003a00000400000500000800000a00001cffffe9fffff4000014000016000002",
            INIT_60 => X"000025000045000040ffffff00001c00002800000bfffffd00000cffffdffffffe",
            INIT_61 => X"00001d000001ffffd6ffffefffffeffffff8fffffbffffedfffff9fffff5000036",
            INIT_62 => X"00001bffffe9fffff600002b00001c000004000019000033000004000003ffffff",
            INIT_63 => X"000015fffff5000019000015ffffecffffc4fffff4ffffe8ffffd5ffffd9ffffcd",
            INIT_64 => X"00002bfffffcfffff800001bffffe8fffff6fffff8000000fffffafffff4000033",
            INIT_65 => X"00001700000e000010ffffe8fffff500000dffffec000003000006000037000022",
            INIT_66 => X"fffffe00002600000fffffef00000afffff1ffffe6fffffafffffd000009000004",
            INIT_67 => X"fffff7000023ffffec000000fffff600001d00000d000012000008000012000014",
            INIT_68 => X"00000700003f00003effffe0fffff000001700004500003200002f000019000009",
            INIT_69 => X"ffffc6ffffd0000015ffffc5ffffe5fffff7fffff0fffff4000030000038000037",
            INIT_6A => X"00002ffffff1ffffc4ffffc3ffffd7ffffcfffffe8ffffbc00000100000d00002d",
            INIT_6B => X"00000900000effffecffffe6ffffebffffc2ffffe9000032fffff1fffff2fffff3",
            INIT_6C => X"000000ffffcc000021ffffdbffffe4000023fffff600002c000001fffff3000031",
            INIT_6D => X"fffffb00000affffda00000300000000000ffffff3fffff9ffffe3ffffc8ffffcf",
            INIT_6E => X"000005ffffe8ffffc200000fffffc3ffffcdffffeaffffb0ffffa8000010ffffe0",
            INIT_6F => X"fffffb00001a000037000016000024fffff9ffffe6ffffed00002d000018fffff9",
            INIT_70 => X"ffffbdffffeeffffe4ffffd000000a00000300001c000007000004000021000010",
            INIT_71 => X"ffffe8ffffea000012ffffdd00000900000cffffe3000034fffff0ffffbcffffe4",
            INIT_72 => X"fffffb00000000003c000001000020000043000003000014ffffe4ffffe2000007",
            INIT_73 => X"00002a00001e000021fffffb000026000003ffffd500001fffffed000000000039",
            INIT_74 => X"000009ffffdbffff9a00001cffffe2fffffd00001dffffb100000effffd4ffffe8",
            INIT_75 => X"000000fffff1fffffb00001efffffdffffe2fffffbfffff6ffffe7fffff4ffffba",
            INIT_76 => X"000016000053000032ffffe6000046000023ffffddfffff5fffffbffffe7ffffe6",
            INIT_77 => X"000000ffffec000016ffffd1ffffd5000029fffff100001800001600003400001f",
            INIT_78 => X"ffffdfffffe7ffffa4ffffaaffffe0ffffb7ffffa8000020ffffb6fffff900001d",
            INIT_79 => X"00005dffffa700000700002f00003bffffe4ffffd6000018ffffe0ffffdb000001",
            INIT_7A => X"000028000019fffff9000037000016ffffdeffffc2ffff85000021ffff8effffb9",
            INIT_7B => X"000043fffff800005a00003cffffdd00001e000021ffffd700002a000031000005",
            INIT_7C => X"000011fffff900001dffffe400003000001cffffee00003f000024fffff3000054",
            INIT_7D => X"ffffb500000a000013000017000008ffffebfffff7ffffe0fffffe000008ffffff",
            INIT_7E => X"ffffe9000002fffff1ffffd200000fffffb8ffffc0fffffaffffd0ffffd7000023",
            INIT_7F => X"000012fffff3fffffc000027fffff4ffffecffffec00000a000019ffffe8000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER2_ENTITY2;


    MEM_IWGHT_LAYER2_ENTITY3 : if BRAM_NAME = "iwght_layer2_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00002400001700003700001efffff200001b00000dfffff5ffffe8000004fffffd",
            INIT_01 => X"00003100003900000a000039000017000018000012000010ffffd8fffffc00001d",
            INIT_02 => X"00001effffec00001d00000700004700005200002300003c000040fffffd00001b",
            INIT_03 => X"ffffeeffffd6000015000010ffffe2ffffe4000022000023000004000019000001",
            INIT_04 => X"fffffbfffff400004800000a00002a00004700001a000027ffffb3fffff2fffff8",
            INIT_05 => X"fffffeffffe0ffff9cffffb1ffffb3ffffbeffffc300000dffffe8ffffd600001a",
            INIT_06 => X"ffffc6ffffe6ffffc000001200003100002afffff6fffffc000021ffffe1ffffe8",
            INIT_07 => X"000002000001ffffecffffe1ffffe5ffff6affff53ffff67ffff84ffff6bffff82",
            INIT_08 => X"ffffefffff8dffffa4ffffc6000000ffffddffffd800003200001500001affffeb",
            INIT_09 => X"00003500002f00001800002300003d000005fffffe00000100000effffabffff9d",
            INIT_0A => X"00003400000b00000c000022000000fffff2000010000022000006ffffee00000e",
            INIT_0B => X"fffff100000f000000ffffeeffffeeffffe0ffffcd00001700002bffffccfffff1",
            INIT_0C => X"fffff2fffff0ffffd1ffffa8ffffdfffffd200001a000020000000ffffe8fffffe",
            INIT_0D => X"ffffedfffff3ffffddffffeeffffdbffffd0ffffdbffffd4ffffeffffff2ffffe3",
            INIT_0E => X"fffffffffffdffffeeffffd8fffff1ffffe9ffffdeffffddffffc0ffffed000000",
            INIT_0F => X"00001a000009fffff400002200000d00000b00000400000000001600000c000009",
            INIT_10 => X"00000cfffff5ffffeeffffe200001100001d00002100000700000dffffff000012",
            INIT_11 => X"ffffdfffffeafffff7000006000019ffffe2fffff800000700001500001afffffb",
            INIT_12 => X"ffffecfffff8ffffe7fffff8ffffeefffff3ffffe900000dfffff5ffffddffffef",
            INIT_13 => X"fffffeffffe0000013000022fffff6000020000006000007ffffe8ffffecffffee",
            INIT_14 => X"ffffe6ffffbdffffc2ffffd6fffffdffffe7fffff8ffffe700000effffe1ffffe6",
            INIT_15 => X"00001900002800002c00000e00003700001400000e000002ffffc7ffffffffffeb",
            INIT_16 => X"000009ffffd7fffff9ffffecffffebfffff2fffff9fffffe00000d000006000034",
            INIT_17 => X"00002800000b00000e00001cffffffffffe900000dfffff7000004000005fffff8",
            INIT_18 => X"ffffe3ffffecfffff9fffff0fffffc000022fffff500001d000026000017000019",
            INIT_19 => X"fffff4000001fffff6ffffeefffff4ffffc3ffffb2ffffcfffffefffffe2fffffb",
            INIT_1A => X"ffffe5000016ffffddffffdc000017ffffdf00000fffffef00001200003d000014",
            INIT_1B => X"00002800000600001700000effffebfffffc00001100000f00001500001b000006",
            INIT_1C => X"fffff9fffff3ffffe8000005ffffe0ffffd2ffffeeffffc3ffffadffffeffffff3",
            INIT_1D => X"ffffd2000002fffffcffffd4ffffbaffffd2ffff88fffffeffffe9ffffbd000002",
            INIT_1E => X"ffffdbffffbdffffb1000039000029ffffe2fffffcffffccfffff1000000ffffcd",
            INIT_1F => X"ffffbdffffccffffe2ffffcdffffc5fffffaffffe1ffffdeffffe1ffffc9ffffc0",
            INIT_20 => X"fffff9000002fffff1000000000013ffffed00001a000020000020ffffeeffffed",
            INIT_21 => X"000029ffffe100001f00000b000000fffff2fffffbffffedffffe4000013000006",
            INIT_22 => X"00001a000009000016fffff300000d00001500001600001300002c000001000017",
            INIT_23 => X"000011fffff200000dfffffdffffadffffed00000500002700001700000f000001",
            INIT_24 => X"fffff0fffff8ffffbefffff800000cffffd700002400001600001900001900001a",
            INIT_25 => X"00001300000300002c00003b00001700002dffffd300000f000023",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER2_ENTITY3;


    MEM_IFMAP_LAYER0_ENTITY0 : if BRAM_NAME = "ifmap_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000a100009f00009e00009f0000a200009c0000a00000a60000a500009f00009e",
            INIT_01 => X"00009500009c0000a00000a00000a20000a70000aa0000a90000a60000a10000a0",
            INIT_02 => X"00009800007400007e00008900008f00008d00008c00008f000095000094000096",
            INIT_03 => X"00009f00009b00009c0000a30000a20000a40000a00000a20000a600009f000097",
            INIT_04 => X"00008c00008b00009100009700009a0000a00000a90000ab0000ab0000aa0000a3",
            INIT_05 => X"00009700009700007700007d00008800008f00008e00009100009300009500008d",
            INIT_06 => X"0000a100009d00009e0000a20000a30000a50000a50000a30000a00000a700009e",
            INIT_07 => X"00007200006500006200006e00007900009100009f0000aa0000a90000a70000a6",
            INIT_08 => X"0000a000009b00009b00007800008200008b00008e00008c00008f000086000078",
            INIT_09 => X"00009d0000b10000bf0000a70000a50000a50000a90000a90000a70000a70000ae",
            INIT_0A => X"00005600004a00005000005c00006200006700006800009500009e0000a40000a2",
            INIT_0B => X"0000aa0000a100009c00009b00007f00008800008c00008c000084000071000053",
            INIT_0C => X"0000920000970000c30000f60000ad0000a40000a40000a60000a90000a30000a9",
            INIT_0D => X"00005400004a00005d00006100006a00007000007100005500004e00006f00008e",
            INIT_0E => X"0000a100009300008200008500009400008100008500008a000080000069000055",
            INIT_0F => X"00004200006100008000009d0000b40000a30000a50000a30000a70000a70000a5",
            INIT_10 => X"00003a00005b00006300005e00007200007700007a000076000059000042000045",
            INIT_11 => X"0000aa00009900005800002f00006d00007f00008600008a00008c00006c000043",
            INIT_12 => X"00004e00004400006400007f0000810000930000a40000a60000a90000aa0000a8",
            INIT_13 => X"00002e00003f00005500007300006b00006900007c000092000084000053000048",
            INIT_14 => X"0000a50000a700008f00004600002a00006300008300008600008d00008400004f",
            INIT_15 => X"00005500005b00005800007400009000008200007800008c0000a10000ab0000a8",
            INIT_16 => X"00003900003100003600005500006400006a0000660000880000a300007c00004d",
            INIT_17 => X"0000a60000a30000a100009900007c0000360000670000aa00008800008a00006b",
            INIT_18 => X"00005000005400005200005600007900009c00009d00007d0000710000ae0000a5",
            INIT_19 => X"00004a00002800003800004700005600005300005700007100009200008a000051",
            INIT_1A => X"0000cf00009900009c00009e0000ae00009a00005e0000860000b4000089000085",
            INIT_1B => X"00004c00003b00004a00005600005d00007d0000940000ae00009c0000cf0000ed",
            INIT_1C => X"00005f00002800003200004b00005400005700005600006a00008500008f000089",
            INIT_1D => X"0000ed0000d500007a00009f00009b0000b10000a500008e00006c0000b7000084",
            INIT_1E => X"0000af00005b00002d00005000004e00007800007d00009c0000b70000a40000dc",
            INIT_1F => X"00006800003b00002900003b00004e00005800006700005700006b00009b00009d",
            INIT_20 => X"0000c70000c20000750000860000ad0000a60000bb0000aa0000870000640000bc",
            INIT_21 => X"0000a00000d200007d0000260000540000660000750000860000bd0000b90000aa",
            INIT_22 => X"0000bd00004c00003e00003700004900005500006800005e00005300005d000092",
            INIT_23 => X"0000890000a80000a800006100009f0000b20000a60000ae0000af00007f00005a",
            INIT_24 => X"00007b00009b0000c200009600003200007300007800007b0000a00000d80000ba",
            INIT_25 => X"00005d0000bd00004900004f00004900005400005600005f00005400005400005b",
            INIT_26 => X"0000bd0000a70000910000930000670000a70000ad0000880000770000b9000098",
            INIT_27 => X"0000570000720000950000ba00009a00004700007500007e00008d0000b40000e2",
            INIT_28 => X"0000a800006c0000c200005e00006100005a000064000063000050000048000050",
            INIT_29 => X"0000ac0000be0000c600008a0000730000640000a700009c0000630000690000ba",
            INIT_2A => X"00005500006e0000820000890000b300009800004700006700009200009a000091",
            INIT_2B => X"0000b80000ac0000840000c500007500006100006400007300006d00005f00005b",
            INIT_2C => X"0000870000910000f20000e600008f00008200007300009b00008c00004e000082",
            INIT_2D => X"0000570000470000570000700000980000a800009000005f00006c000079000083",
            INIT_2E => X"0000a80000bf0000a80000920000cb000088000079000067000078000070000069",
            INIT_2F => X"00007100007100008c0000a20000ad00009a00006000008a00008a00007e00004e",
            INIT_30 => X"00005e00004f00004e00006d00008700009400009c0000ab000070000069000065",
            INIT_31 => X"00005e0000b00000b70000a40000a30000d600009000009700007d00006b000065",
            INIT_32 => X"00005600007300006600007400007200007600008100006a00009400009c000060",
            INIT_33 => X"00006600004700003a00003c00004b000085000080000044000076000090000065",
            INIT_34 => X"00005600007c0000b00000ad0000a70000b20000d400008c00009600008f000074",
            INIT_35 => X"00005c00005500009300008100007c00008600004d00006800008700009900008d",
            INIT_36 => X"00009b00008500005600004100002c00004000004b00006b000075000084000096",
            INIT_37 => X"0000770000560000900000b10000ae0000ab0000bb0000c700009700009a0000a0",
            INIT_38 => X"0000830000490000740000b800009100006c00008100004600009000008900007a",
            INIT_39 => X"0000a40000ab0000a300007900005a00002f000034000033000059000086000089",
            INIT_3A => X"0000ab0000830000630000980000b50000b10000b30000c30000a500009500009e",
            INIT_3B => X"0000570000590000640000960000bf0000b200007a00005d00005000005d000067",
            INIT_3C => X"00007f00008000009000009000006c00003c00002e00001800002600002e00003c",
            INIT_3D => X"0000db0000f500009600005300008a0000b50000b20000b10000c3000075000078",
            INIT_3E => X"00002300003d00006e00007d0000a80000c20000be0000b0000095000086000085",
            INIT_3F => X"00003700003b00004500004e00004800004500003a00003d00003a000031000022",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000d00000fc0000fd0000d300006d00008c0000b10000b00000ae0000af00004f",
            INIT_41 => X"00003200003400003c00004400004400006800007a00007400007c00007200007c",
            INIT_42 => X"00002900002a00002b00003000003b00003300002b000033000038000038000033",
            INIT_43 => X"00003c00006e0000e30000fd0000f60000a50000a50000b20000a8000090000060",
            INIT_44 => X"00002e00002e00002600002a00002e00002a00002d000030000031000031000035",
            INIT_45 => X"00001d00001d00002d00003300003500003700003200002e00002e00002a00002b",
            INIT_46 => X"00003200003200003d00008d0000f10000fe0000c20000840000a600008300003b",
            INIT_47 => X"00002a00002600002700002300002200002700002a00002f000032000031000033",
            INIT_48 => X"00002200001e00003000003300002e00003200003800003b00003e00003800002d",
            INIT_49 => X"0000340000340000320000360000420000bb0001000000d7000080000080000049",
            INIT_4A => X"00003b00002e00002b00002800002800002700002400002900002b00002d00002e",
            INIT_4B => X"00002900001f00002300003400005300004600003200003600003b00004000003e",
            INIT_4C => X"00002c00002c00003600003800003100003a00007c0000f00000e0000080000042",
            INIT_4D => X"00002e00003600003a00003600002d00002c00002c00002b00002b00002e00002f",
            INIT_4E => X"00002c00002300001d00002300003200004c00005500004900003300002400002b",
            INIT_4F => X"00002d00002800003000003a0000300000360000410000610000d30000ca00004e",
            INIT_50 => X"00001c00002700002f00003000002700002700003300002e00002f00003000002f",
            INIT_51 => X"00002e00002900002100002000002300003200003300002e000043000043000028",
            INIT_52 => X"00002a00002d00003600003a00003d0000350000340000360000400000aa000068",
            INIT_53 => X"00003f00002c00002800002500002700002800002a00002e00003100002e000029",
            INIT_54 => X"00002a00002b00002500002600001f00002a00004400003300000f00001f00002f",
            INIT_55 => X"00003c00003800003500003a00003800003100002600001b00001f000031000047",
            INIT_56 => X"00003800004900004f00003e00002a00002100002700002d000032000035000039",
            INIT_57 => X"00002800002c00002a00002700002b00002300003100003d00002800000d000026",
            INIT_58 => X"00004200003e00003800002f00002400001d00001b00001e00001700001b00002a",
            INIT_59 => X"00001a00003c00005d00006d00005500003c00002b00002b00003100004500004b",
            INIT_5A => X"00002400002600002800002800002800002b00002d00003800003600001400001d",
            INIT_5B => X"00004a00003d00002f00002000001200001300001d00001900001d00001600001a",
            INIT_5C => X"00002200001800003000005900006900005900004300002d000034000035000042",
            INIT_5D => X"00007100006f00007100007300006d00007000007600007400006f000070000015",
            INIT_5E => X"00006d00007000006f00007100007500007700007500007500006f00006f000074",
            INIT_5F => X"00005500005b00005f00006100006100006200006500006b00006a00006b00006b",
            INIT_60 => X"00006f00006e00007400007200007500007100007000007400007200006e000070",
            INIT_61 => X"00006800006e00007300007000006f00007300007300007500007700007100006e",
            INIT_62 => X"00006e00005800005b00005f000062000061000066000066000069000064000066",
            INIT_63 => X"00006d00007200007300007300007500007500007300006a00006f00006f00006d",
            INIT_64 => X"00004d00004e00005a00006000006f00007200007400007100007200007300006f",
            INIT_65 => X"00006e00006b00005900005f000062000063000063000067000060000056000055",
            INIT_66 => X"00008200009200007b00007500007300007700007800007500006e00007000006d",
            INIT_67 => X"00003f00004b00005a00005a00005700005000006f00007000007200007300006f",
            INIT_68 => X"00007300007200006b00005e00006300006500006600006200005500003e000046",
            INIT_69 => X"00007200009c0000d6000080000074000071000074000078000071000072000072",
            INIT_6A => X"00004800005e00006600007200006e00006700004500003500005000006c00006f",
            INIT_6B => X"00007000006400006800006d00005d00005e00006500006000005300004900004e",
            INIT_6C => X"00004b00006600007a00008a00007600007400006f000073000074000071000073",
            INIT_6D => X"00005b00006400006000007400007a00007900007100005300003800003a000032",
            INIT_6E => X"00007500004a00002500005f00006400005f00006200006900005400003a00003a",
            INIT_6F => X"00004300005700006c00006200006b000078000074000075000076000073000076",
            INIT_70 => X"00004700005300006f00006600006300007600008e00008200005400004b000053",
            INIT_71 => X"00007500006f00004000002b00006000007300005d00006300006200003d00002f",
            INIT_72 => X"00005f00005700006a00008300006e00005e00006d000071000077000074000072",
            INIT_73 => X"00003500003c00005100005d00006200005d00007c00009900007600004d000058",
            INIT_74 => X"00007500007100007c00007900003a0000690000a100006100006700005300002f",
            INIT_75 => X"00005500005100005000006f00008f00008d00006900005900008700007900007a",
            INIT_76 => X"00002300003900004900005200004d00004f00006700008700007d00004700004e",
            INIT_77 => X"00007600007400007400009500009a00006400008b0000b000006700006a00003b",
            INIT_78 => X"00003900004a00005400005500006e0000830000990000830000b40000d60000b4",
            INIT_79 => X"00001e00003100004c00005500005500005100006200007c00008500007d000044",
            INIT_7A => X"0000c500005900007600007000009c0000a90000970000740000b700006700004b",
            INIT_7B => X"00005500002c00005000004c00006f00006c00008900009f0000870000bf0000e0",
            INIT_7C => X"00002e00002400003b00004f0000580000660000530000640000930000930000a5",
            INIT_7D => X"0000b600005f00005d00007b0000780000a70000af00009000006c0000bf000051",
            INIT_7E => X"0000c900007900002600005400006200006b0000770000ab0000a100008e0000ab",
            INIT_7F => X"00003800003700003500004b00005700006800005d00005000005900008b000098",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER0_ENTITY0;


    MEM_IFMAP_LAYER0_ENTITY1 : if BRAM_NAME = "ifmap_layer0_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00009000009a00004400006d00007b00007b00009c0000b40000860000600000c2",
            INIT_01 => X"0000950000bb0000930000320000720000720000710000950000ca0000a6000072",
            INIT_02 => X"0000c000003700004a00004900005700005700005f000054000053000058000076",
            INIT_03 => X"00009500007d00008400004800007400007c00006a00006e0000bc00009a00005f",
            INIT_04 => X"00006e0000900000b50000980000470000720000750000830000ac0000d80000ae",
            INIT_05 => X"00006b0000c4000049000059000058000065000064000050000049000050000055",
            INIT_06 => X"0000b40000b900007b00006a00004a00007a00007700005900006d0000ba0000a7",
            INIT_07 => X"00006d0000800000850000af00009800004700006400008800008f00008c0000a5",
            INIT_08 => X"0000a70000810000c500005f00005500006000007400006e00006000005d000056",
            INIT_09 => X"00008a0000ec0000dd00008300007800005e00007d0000780000530000890000b2",
            INIT_0A => X"00004800005500006c00009300009f000086000058000068000070000079000082",
            INIT_0B => X"0000b60000a40000920000cb00006800006000005600006e00006d000068000058",
            INIT_0C => X"00006a0000840000980000a300008f00005000007900007e00007d0000560000aa",
            INIT_0D => X"00004f00004c00006900008200008d00008a00008f00005a00006500006500006a",
            INIT_0E => X"0000b60000b80000a70000a60000d700006800006c00005800005300005b00005d",
            INIT_0F => X"00006e00005b00006900006600006900007400005d000089000095000060000066",
            INIT_10 => X"00004600003800003800004500007e00007800003800006000008000006700005b",
            INIT_11 => X"0000830000b80000b50000af0000b80000d300006e00007400007000005e00005d",
            INIT_12 => X"00005c00008f00007500006f00007900004000005a00008000009400008b000058",
            INIT_13 => X"00006900004500003e00002900003b00004400006300006d00007500008b000060",
            INIT_14 => X"00005a0000950000b60000b30000b00000bd0000c000006f000073000078000077",
            INIT_15 => X"00004b0000760000b000008600006100007600003b00008600008800007c000079",
            INIT_16 => X"00007900007600005b00005a00003100003300003100005600008100007c000077",
            INIT_17 => X"00008700006700009d0000b50000ad0000b20000c100009c00006b00006f000071",
            INIT_18 => X"00004e0000640000940000b60000ad00007600005a00004d00005a0000690000af",
            INIT_19 => X"00006d00007b00007d00006400004700003900002100002e00003400003d00004d",
            INIT_1A => X"0000f70000990000570000900000b30000a90000b20000c8000078000069000071",
            INIT_1B => X"00003e00006d0000850000ac0000c00000c40000b600009c00008d00008c0000de",
            INIT_1C => X"00005c000060000068000065000063000054000055000051000046000036000031",
            INIT_1D => X"0000fd0000fc0000d30000700000920000b10000ac0000b70000c500006900005a",
            INIT_1E => X"00005400005200005700005d00007c00008500008500008d00008400008f0000e0",
            INIT_1F => X"00005f00006100006100006c00006800006000005b00005e00005d000055000054",
            INIT_20 => X"0000880000e70000fb0000f50000a60000aa0000b60000ae0000a8000089000059",
            INIT_21 => X"00005a00005600005200005100005100004f00004800004b00004c000050000058",
            INIT_22 => X"00005b00005a00005f00005e00006000006000005e00005d000059000057000059",
            INIT_23 => X"00005400005e00009f0000f50000fa0000bd0000880000b3000099000066000057",
            INIT_24 => X"00005500005600005300004f000052000054000056000054000053000055000054",
            INIT_25 => X"00005e00006f00006700005e00006300006600006500006700006700005c000059",
            INIT_26 => X"00005a00005800005b00005d0000c60000fd0000d500008800009400006a000055",
            INIT_27 => X"00005f00005c00005900005600005300005000005100005200005200005300005a",
            INIT_28 => X"00005600006300007200008900007b00006900006c00006c00006d00006e00006c",
            INIT_29 => X"00005200005c00005e00005700005c00008f0000f50000e500009100005f000053",
            INIT_2A => X"00006900006e00006a00006100005a000058000056000053000054000053000052",
            INIT_2B => X"00005600005900006200006e00007d00008a00008200006c00005b00005f000061",
            INIT_2C => X"00005000005700006100005700005e00006800007e0000e40000db00006a000053",
            INIT_2D => X"00005d00006500006600005d00005c000061000059000059000057000054000052",
            INIT_2E => X"00005800005800005c00006100006c00006000006200007e000081000065000055",
            INIT_2F => X"00005300006000006400006700005f00005e0000610000640000c5000085000054",
            INIT_30 => X"00006600005d00005a00005c00005d00005f00005c00005c00005800005000004f",
            INIT_31 => X"00005900005700005b00005800006400007c00005d00003c00005a00006e00007d",
            INIT_32 => X"00005e00005c00006600006400005d00005200004700004d00005900006b00004f",
            INIT_33 => X"00008300008400007000005b00005300005800005e00005f000061000063000063",
            INIT_34 => X"00005800005c00005a00005b000055000066000074000055000040000061000074",
            INIT_35 => X"00006500005f00005600005000004900004700004a000043000048000055000051",
            INIT_36 => X"00007300009100009c00008200006900005800005800005f00007100007700006d",
            INIT_37 => X"00005100005700005c00005900005600005900006900006b000040000052000052",
            INIT_38 => X"00006800005700004600003a00003f00004900004500004900004200004500004f",
            INIT_39 => X"00004d00006300008700009200008300006d00005700005f00006000006f000077",
            INIT_3A => X"00002c00002d00002f00002900002e00003500003300002f000031000043000054",
            INIT_3B => X"00002b00002700002600002800002c00002d000029000031000034000029000029",
            INIT_3C => X"00002400002400002600002900002b00002700002c00002b00002d00002d00002c",
            INIT_3D => X"00002600002e00002d00002f00002b00003100003800002d000028000033000021",
            INIT_3E => X"00003500003200002900002100001e000021000028000029000034000036000029",
            INIT_3F => X"00002200002000001f00002200002600002d00002e000032000030000034000037",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00003000002b00002b00002d00002d00002c00002a00003000002400002100002f",
            INIT_41 => X"00003200003400003100003600002f000027000023000025000026000033000039",
            INIT_42 => X"00002800002100002200002200002300002700003300003700003000003200002f",
            INIT_43 => X"00005f00003900002d00002c00003000003000002e00002b00002c00001f000020",
            INIT_44 => X"00004200005400004c00004100002f00004300003a00003600002f00002900004b",
            INIT_45 => X"00003000002900002400002700002700002b00002e00002d000027000034000032",
            INIT_46 => X"00006b0000a400003b00002a00002900002c00002f00002800002b00002f000031",
            INIT_47 => X"00005d00006900007600006f00006200003800001f00003200004700003c000038",
            INIT_48 => X"00003900004000003600002400002400002e00003000002d00002f000046000043",
            INIT_49 => X"00003a00004e00005500002a00002700002500002900002900002700002c000035",
            INIT_4A => X"00006100006000007400007a00007800006e00004c00002d00002b00001f00002b",
            INIT_4B => X"00001c00001100005000003900002800002c00003a00003100002500002f000056",
            INIT_4C => X"00004600004b00003b00003400002700002500002a00002b00002800002b000030",
            INIT_4D => X"00004d00006700005e00005a00006c00008400007900004a000040000048000039",
            INIT_4E => X"00003800002900002600005c00005a00002700003000003a000024000027000045",
            INIT_4F => X"00004f00005d00006b00004d00003100003300003300003100002700002400002a",
            INIT_50 => X"00003a00004a00005400005800005100007000008c00006b000045000052000058",
            INIT_51 => X"00002b00005200007100003b000069000090000027000033000032000020000031",
            INIT_52 => X"00004d00004a00006500008000007900004e00003b00005f000042000032000029",
            INIT_53 => X"00003500004300004c00004500004600005d00007b00007000003d000049000052",
            INIT_54 => X"00002f00003300007000009500006900008f0000a300002d00003b00002300001b",
            INIT_55 => X"00004700004f00004f00006b00007d0000910000770000a60000c600009200003c",
            INIT_56 => X"00002b00004700004e00004e00004a00005900007200007a00007000003a000035",
            INIT_57 => X"00002f00003300003200007a0000a800009e00007a0000af00003900002c00000f",
            INIT_58 => X"00002800004d00004500006800006800008400009b0000830000bc0000e20000b3",
            INIT_59 => X"00002100003b00004900004f00006000004d00005c00008a00008900009a00004d",
            INIT_5A => X"00005000002c00003700003b0000880000b20000990000740000bd00002e00001f",
            INIT_5B => X"00007100002200004f00005900005f00006a00009f0000970000850000a40000bc",
            INIT_5C => X"00003000003700004e00005100005e00005800004b00005200008200008e0000c0",
            INIT_5D => X"00009800002c00002f0000350000440000850000b90000900000690000c200001a",
            INIT_5E => X"0000b200008c00002f00006d0000690000620000810000b700009400005e00007e",
            INIT_5F => X"00001800004000004900005900005100005500005000004f00005300006f00008c",
            INIT_60 => X"00006700007800002700003200003a0000420000620000c00000a30000670000c1",
            INIT_61 => X"0000880000ae00009300004400006d00006b00007500009d0000c800009b00007f",
            INIT_62 => X"0000c400002200004500005100006300005e00004800004600004c000050000068",
            INIT_63 => X"0000a900006700005800002200003700003e00004300006d0000bc0000ac000070",
            INIT_64 => X"00007a00007f0000aa00009500004600005f00007d00008600008c00009f0000a9",
            INIT_65 => X"0000880000c500002f00003500005000006f00006800005a00005b000053000069",
            INIT_66 => X"0000e60000d300007400005d00003400004d00005800004d00008e0000b50000ae",
            INIT_67 => X"00005000006500008a00009200007600004b00005f000065000070000082000089",
            INIT_68 => X"0000b20000a00000cc00003000003000003600005d000063000063000057000044",
            INIT_69 => X"00007500008d00009b00008500002500005200007100007e00005a0000ac0000bc",
            INIT_6A => X"00004800006100007600007e00006d00006800003a00005700005c00005a000058",
            INIT_6B => X"0000c20000b80000b40000d700002e00003700002d00003700005200005e00004d",
            INIT_6C => X"00004900005900005900005f00006900003d00006f0000910000660000690000ba",
            INIT_6D => X"00003500003300003d00007300006900002000004000006600005f000058000062",
            INIT_6E => X"0000bc0000c10000bd0000c00000cd00003600004000004400004000004e000041",
            INIT_6F => X"00008500006400006000006c00003700005000006f00008d00008f000060000085",
            INIT_70 => X"00002800003c00002700003400003a00005600005c00005d00007800005d00005d",
            INIT_71 => X"0000980000b80000b90000b50000bb0000b400002e00002d00003600003e00003b",
            INIT_72 => X"0000760000a800007b00005600006c00003300007e000087000082000084000063",
            INIT_73 => X"00004400003c00005d00003400003200002c00004e000076000069000067000049",
            INIT_74 => X"00006f0000a00000b40000ac0000af0000bb00009200002e000032000034000040",
            INIT_75 => X"0000650000940000b10000ad00007400005600004900005700006f0000b9000092",
            INIT_76 => X"00004c00005200004b00005300004500002900003300003600003900003f000042",
            INIT_77 => X"00009f00005b0000930000b30000a80000b00000c800007c00003f00004500003d",
            INIT_78 => X"00006d00008f0000b50000c50000d00000c00000a40000930000900000e10000fa",
            INIT_79 => X"00007000007800007700007a00006f00006e00006600005700004400003a00003e",
            INIT_7A => X"0000f70000d10000710000960000b60000b10000c00000d5000085000073000070",
            INIT_7B => X"00006500006800007700009400009800009c0000a200009500009d0000e80000fc",
            INIT_7C => X"00008900008400008e00008d00008700008200008300007d00007300006e00006f",
            INIT_7D => X"0000e40000f10000ed0000a40000ae0000c00000bc0000bc0000a8000087000084",
            INIT_7E => X"00007d00007400007100007800007300006500006b00006900006900006f000099",
            INIT_7F => X"00008500008b00008600008700008900008900008b00008400008000007e00007d",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER0_ENTITY1;


    MEM_IFMAP_LAYER0_ENTITY2 : if BRAM_NAME = "ifmap_layer0_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00007f0000af0000f50000f20000b50000890000bf0000b000008600008200008d",
            INIT_01 => X"00007d000078000071000073000075000075000074000078000079000077000076",
            INIT_02 => X"0000a200009500008c00009000009200008e00008e00009100008600008200007d",
            INIT_03 => X"00007d0000800000760000cd0000f90000d100008f0000a700008800007c00008c",
            INIT_04 => X"00008600008300007b00007500007100007000007100007300007900007f00007f",
            INIT_05 => X"0000930000a50000b60000a700009800009a00009500009300009800009600008a",
            INIT_06 => X"00008100008300007b0000720000990000f70000ea0000a400007e00007a000082",
            INIT_07 => X"00009a00009600008d00008300007f00007b000077000077000077000077000077",
            INIT_08 => X"00008a0000950000a20000a90000b60000b200009e00008a00008c00008d000096",
            INIT_09 => X"00007b00008500007c00008100007e00008c0000ea0000e900008a00007e000085",
            INIT_0A => X"00009300009400008b00008a00008c00008400008200007e00007a000077000074",
            INIT_0B => X"00008d00008f0000930000a100008b00008e0000b00000b600009900008500008b",
            INIT_0C => X"00008300008700008b0000820000800000790000770000d300009f00007d00008a",
            INIT_0D => X"00008a00008700008800008a00008b000088000087000082000078000076000078",
            INIT_0E => X"00008b0000920000890000940000b100008800006700008c0000a40000b2000097",
            INIT_0F => X"000080000089000087000080000075000069000069000072000085000071000084",
            INIT_10 => X"0000b300009a00008500007d00008300008800008900008a00008b000089000083",
            INIT_11 => X"00008600008b00008f0000840000940000a800007f00006c0000920000a80000b5",
            INIT_12 => X"00008000007800007300006c00006a00006d00006600006800007300007000007d",
            INIT_13 => X"0000be0000c50000aa00009000007f00007f00008600009800009c000090000087",
            INIT_14 => X"00007b0000840000860000860000840000950000a000006b00007e0000820000a4",
            INIT_15 => X"00007600006400005900006200006c00006800006c000065000069000072000073",
            INIT_16 => X"0000910000af0000b60000a700009100007b000082000083000091000098000089",
            INIT_17 => X"00006e00008100007c",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER0_ENTITY2;


    MEM_IFMAP_LAYER1_ENTITY0 : if BRAM_NAME = "ifmap_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"00003700006c000060000000000000000000000000000000000000000000000000",
            INIT_05 => X"00002a00000f00000000001700000000000000000000004c00000c000038000021",
            INIT_06 => X"00000000001300001100006100005f00002b000000000007000015000000000000",
            INIT_07 => X"00005a0000b800004600004300000000007300005d000000000029000000000000",
            INIT_08 => X"0000050000000000000000000000000000230000d6000017000000000000000000",
            INIT_09 => X"0000c200001d00000000000e00013a00002700001f00003a00001c000000000000",
            INIT_0A => X"0000160000000000000000220001cf00001700000000006f000080000038000024",
            INIT_0B => X"00000a00000000000000009200017a0000000000000000000000f2000060000000",
            INIT_0C => X"00007c00000000007b00000000000000000d0000000000ce00009d000000000000",
            INIT_0D => X"00000000000000000000000000000f00000000000000000000000300000000000c",
            INIT_0E => X"000000000000000000000000000000000000000011000000000000000000000000",
            INIT_0F => X"000000000000000000000000000000000038000000000000000000000000000036",
            INIT_10 => X"00000000000000000000009d00000000007700000000000000004b000000000000",
            INIT_11 => X"00000600000000002100000000001300000000000000000000001500000000002d",
            INIT_12 => X"00000000000000000d000000000000000000000000000000000000000000000000",
            INIT_13 => X"00000000000600000000000000006a00000000000000000000006e000000000079",
            INIT_14 => X"00000000003700001b00003900003c0000000000000000000000cb000000000000",
            INIT_15 => X"0000080000000000b6000032000000000000000006000000000000000000000000",
            INIT_16 => X"00000000002e00001100002000000c00000000006700003900000000000a000000",
            INIT_17 => X"00000b00000900000000000000000000001700000900003600001500000000002a",
            INIT_18 => X"00000000000800000000000900002900000d000000000017000000000006000019",
            INIT_19 => X"000000000017000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"00000000000000000000000000001300001a00002600001600000000000900000d",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000001b000000000000000000000000000000000002000001000000000005",
            INIT_1D => X"00000000000000000000000000000000000000000000000000000000001100000e",
            INIT_1E => X"00000600000100000000000200003b00000000000000000000000000000f000000",
            INIT_1F => X"00000000000500000000000b000000000000000000000000000000000015000018",
            INIT_20 => X"00001700000500000c00001f00000000000100004000001c000006000011000000",
            INIT_21 => X"00003800000000000000003000002200001300000800001200002100000800002d",
            INIT_22 => X"00000000000000000000000000000000000800000000001a00002e000000000031",
            INIT_23 => X"00004a000000000000000022000000000000000000000000000000000000000000",
            INIT_24 => X"00000000003200001100000000000a00000900000900000000003200002a00004a",
            INIT_25 => X"00000000005b00000000001f00001900000400003e000000000005000000000000",
            INIT_26 => X"00000000000d00000000005b00005d00000000001600000000000000000000004e",
            INIT_27 => X"00000000000000000000001c00005b00000000000000000000000000005f000083",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"00000000001700000000003c000000000000000000000000000019000000000029",
            INIT_2A => X"00001700000800000000001f000000000000000000000010000000000000000036",
            INIT_2B => X"00000000002f00002700005600003b0000aa00000000000000000000000000000e",
            INIT_2C => X"00002d00009400005100006100006800007200004c00004d000056000087000027",
            INIT_2D => X"00009b00000000000a00000c00001800000000002500003800000000004d000000",
            INIT_2E => X"00003600003900003900007400000000000000000000001c00000e00000000002d",
            INIT_2F => X"00009200005000004d00000200001d00004b00000000001300000000000000001b",
            INIT_30 => X"00001500001200000000000000000000009e000024000000000000000000000050",
            INIT_31 => X"00000000000000000000000000000000000000000000000000001c00004b000032",
            INIT_32 => X"00000000000000000000002500000000002c00003700000000000000000000004e",
            INIT_33 => X"00000000000000000000000000001300001100000000003f000000000064000000",
            INIT_34 => X"00005300000400000b00001400000000000700000000000200005f000000000000",
            INIT_35 => X"00000000000000000000000000000000000000001700002e000032000018000004",
            INIT_36 => X"00000000000000000000000000000d00000d000000000000000000000000000000",
            INIT_37 => X"00000e00000000001600000000000000000000000d000000000000000000000000",
            INIT_38 => X"00000000000000000000002100000100000000000000000600000000000000001e",
            INIT_39 => X"00000000002e00004100003800003900000000000000000000001b000012000000",
            INIT_3A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"000000000000000000000000000000000000000000000000000000000000000022",
            INIT_3C => X"00001a00000000000300007c000017000000000023000000000000000000000000",
            INIT_3D => X"00000c00000000000000001700001800000600001500000000001a000000000000",
            INIT_3E => X"00003300000000001900006c00002700009200008100004000003500002400001e",
            INIT_3F => X"000000000000000070000000000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00003600000000003800003800004f00001c000000000000000000000005000000",
            INIT_41 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_42 => X"000000000000000000000000000000000000000000000013000000000000000000",
            INIT_43 => X"00006500004200001c000000000000000000000000000000000000000000000000",
            INIT_44 => X"00000000001900007700005600005900004e000062000000000000000066000026",
            INIT_45 => X"00003900001800002500002800000c0000740000b700004700003500006000004d",
            INIT_46 => X"0000920000a900008b00009a00008a00008400006e000050000039000078000085",
            INIT_47 => X"0000500000670000a90000b50000a600000a0000000000000000bb0000ab00009c",
            INIT_48 => X"00000000000000001c00001100002d00001c00000000000000004d000097000046",
            INIT_49 => X"00000000000000000000000000000000000000001d00006800001d000000000021",
            INIT_4A => X"0000730000560000670000d100002400004000006a00003400003700002f00002b",
            INIT_4B => X"000000000000000000000000000000000000000000000000000061000017000042",
            INIT_4C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_4D => X"00000000000000000000000000000000000000000000000000000f000000000000",
            INIT_4E => X"000068000000000021000000000000000006000000000000000000000000000000",
            INIT_4F => X"0000a90000980000a000007d0000c100007c00009c00007d00009b0000b3000000",
            INIT_50 => X"00001100000000000000000000000000000000000000001c0000060000b00000c2",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"00005100004b000061000062000000000000000000000000000000000000000000",
            INIT_55 => X"00006800002a00005a00005e00005b000053000088000061000041000049000050",
            INIT_56 => X"00004600007b00004e00006d00007600003c00007300005f00007600006000005a",
            INIT_57 => X"00002e00002300001500001000004f00003b00004600009700005c00005d000041",
            INIT_58 => X"00000000000000000000000000000d00000000000000000000000000000000002f",
            INIT_59 => X"00004300007000004500004800004b00005600005700007b000073000063000000",
            INIT_5A => X"00003c00002400000000001e00002200003200002b000044000012000005000040",
            INIT_5B => X"00001500000000000600000000002100002100000000000900000000005d000007",
            INIT_5C => X"00000000000000000000000000000000000000000000000000002b000017000019",
            INIT_5D => X"00002600002c00004a00005e00005a000000000000000000000000000000000000",
            INIT_5E => X"00000e00005000003e00003a00002600002600000000003600003c000047000031",
            INIT_5F => X"00003500004400005a00002600003500003f00002d00002e000031000046000002",
            INIT_60 => X"00000000000200000000001d00000000002c00000800000000001c000044000049",
            INIT_61 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_63 => X"00004c00000000001100000000001100003200000000000a000000000017000000",
            INIT_64 => X"00000000001100000000001c00007600000000000200000000002e000000000000",
            INIT_65 => X"0000af00000000003e00001800001a00008600007b00001200006e000000000000",
            INIT_66 => X"00006c0000740000d10000be00010a00011600004c00004800003500003300003d",
            INIT_67 => X"00007b00003e00005500002b0000030000350000150000960000f00000be0000c1",
            INIT_68 => X"00004000000000000a00001100005700006400004000001000000000003400001c",
            INIT_69 => X"00000000000000000000003700007600001700002f00002700003000004000001f",
            INIT_6A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6B => X"00000000009700000000000000000900000000006c00000000002b000000000000",
            INIT_6C => X"0000790000c40000620000b00000000000ed00000000000000006f000084000065",
            INIT_6D => X"00001f000053000076000025000000000046000000000092000000000053000000",
            INIT_6E => X"0000000000110000060000000000000000240000000000a2000000000000000000",
            INIT_6F => X"00002400003200005c00001100001e00000000000600000000000000000000000b",
            INIT_70 => X"00002e00005900003600004200002600002c00004600003400008a00005000009e",
            INIT_71 => X"00001700001f00000000002700003500003100002a000022000036000022000097",
            INIT_72 => X"0000000000280000bd00009a00001c00002100006600003700002b0000a60000af",
            INIT_73 => X"000000000000000000000000000000000000000000000000000000000000000010",
            INIT_74 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_75 => X"00000000000000001f00000b000000000000000000000000000000000000000000",
            INIT_76 => X"00000000001900002000002a000005000018000030000000000000000000000000",
            INIT_77 => X"0000a30000ae00007d0000d00000b00000b30000a700008a00008600007e000047",
            INIT_78 => X"0000000000000000000000000000000000000000020000000000e10000bf0000ac",
            INIT_79 => X"00000000005300000000006500000000000000004e00000000002a00002f000004",
            INIT_7A => X"00000000001c00000000002500000000005000000000000500001100000000003a",
            INIT_7B => X"00000000002200000000000000000000000000000000000000000000000000008b",
            INIT_7C => X"00000000000000000000000a00002400000d000018000012000000000000000004",
            INIT_7D => X"00001e00000000003300000000000000001200005000000400000000004d000000",
            INIT_7E => X"00000000000000002500000000000000000000009100000000000000003f000000",
            INIT_7F => X"00000000000000007700000000000000000a000044000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER1_ENTITY0;


    MEM_IFMAP_LAYER1_ENTITY1 : if BRAM_NAME = "ifmap_layer1_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000410000300000610000000000a6000005000042000067000000000000000000",
            INIT_01 => X"00002900000000000000000000000000000000000000000300000000000b000038",
            INIT_02 => X"00000500000000006f00002d00000000002300000000002200000000002300004e",
            INIT_03 => X"00002e00000300002b00000000000000000000000000000000000000005c00002e",
            INIT_04 => X"00005300005e00005e00000000000000000000000000000000000000000000002c",
            INIT_05 => X"0000670000a20000b0000090000039000030000036000030000000000000000000",
            INIT_06 => X"00003400004300001400003b0000250000790000b400006a00006800004a000067",
            INIT_07 => X"00002700000000002c00002200000000002400000000003400000000004200006a",
            INIT_08 => X"00000000000000004600000000000000000800001700003300000000003c000000",
            INIT_09 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000000000000000017000000000000000000000000000000000000",
            INIT_0B => X"00002f00001200001700000300000000000000000100002d00000a000016000000",
            INIT_0C => X"00002700003900004200006000000000000200001500000800000000001e000045",
            INIT_0D => X"0000bb00009600008800007e00007e00004800000700006900002600003a00003a",
            INIT_0E => X"0000ab0000a900009e000096000092000066",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER1_ENTITY1;


    MEM_IFMAP_LAYER2_ENTITY0 : if BRAM_NAME = "ifmap_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000a00001d00001d00000f00000d00001700001400000f000012000012",
            INIT_01 => X"00000800000400001300001300000f00001200001600001500000c000006000001",
            INIT_02 => X"00001300000b00000000000b000005000000000000000000000004000000000003",
            INIT_03 => X"00000000000000000000000000000000000000001e00002000001b00001200001b",
            INIT_04 => X"00000000000000000000000000001100000b00001900000c000000000001000001",
            INIT_05 => X"000000000000000003000003000000000000000000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000001000000000000000000000000000000000000000000000000000004",
            INIT_08 => X"00000000000000000000000000000000001c000004000000000000000000000000",
            INIT_09 => X"000000000002000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"00000000000b000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000b00000000000000000000000000000b000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000008000000000000000000000000000000000000",
            INIT_0E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00000000000000000000000000000000000b000000000000000000000000000000",
            INIT_10 => X"000000000000000020000000000000000000000000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"00000000000000000000000b000000000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"00000000000d000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000007000004000000000000000000000000",
            INIT_21 => X"000000000000000000000001000000000000000000000000000000000000000006",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00003200000000000000000000000a00003f00000f00001a00000f000000000000",
            INIT_24 => X"00003a00002c00002000002700002500002900002200002000002500003800003a",
            INIT_25 => X"00002200001e00002400001f00002000002000001d00001d00001e000000000000",
            INIT_26 => X"00002200001d00001900002100000f00000e00002f00002f000030000021000028",
            INIT_27 => X"00002a00004100003100003300002900003a00002800003400003300002f000023",
            INIT_28 => X"00000000002900001c00001a00002d00002100001c00001700001f00002a000030",
            INIT_29 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"00000000000000000000000600000e000018000003000000000000000000000000",
            INIT_2D => X"00000000001b00000000000100000200000000000000000000000000000b000000",
            INIT_2E => X"00000500001400001100000000000000001e000000000000000000000000000006",
            INIT_2F => X"00000000001700000f00000300000000000800000000001000001d000000000003",
            INIT_30 => X"00000000000b00000000000300004400000000000400000600000a00001a000000",
            INIT_31 => X"00003700000000000000000b00001e00000c00000000000000000b000017000002",
            INIT_32 => X"00002d00000600000000000600001400002000000200001100000a000004000000",
            INIT_33 => X"00002800001d000000000008000011000000000000000020000000000000000000",
            INIT_34 => X"00000600000000001000000000000b00000b000000000000000008000011000004",
            INIT_35 => X"00001500001200001200000900000e000027000000000024000018000000000000",
            INIT_36 => X"00000d00005800000000002300002b00000000000000000c000000000000000000",
            INIT_37 => X"00003600000000000b00001f00002200001b00000000000000001100002d000028",
            INIT_38 => X"00002800002200001e00001a00002100001f000007000000000045000012000023",
            INIT_39 => X"00002400002500002700000000002500003300003800002a00002f00002f00002e",
            INIT_3A => X"00000000005200002e00002c00003a00002e00002f00003600002f00002a000024",
            INIT_3B => X"00002800004500002a00002f00002e00002f00002a00002a00002600002b000013",
            INIT_3C => X"00002d00003100002e00002400002300002800001900001900002c00003300002b",
            INIT_3D => X"00000000000000000000000000000000000000000000001f00003a00004300002e",
            INIT_3E => X"00000000000000000000000000000000000000000000000a000002000000000000",
            INIT_3F => X"00000000000300001c00001f000000000017000008000010000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000001100002b00000000000000000000000000000000002a000000",
            INIT_41 => X"00000000000e00000000000000000000007100000000000000003f00002d000042",
            INIT_42 => X"00000500006c00000000002a00003b00002600005a00000000002500002c000028",
            INIT_43 => X"00001e00005200002f00000000003c00004800005d000024000034000000000023",
            INIT_44 => X"00006000003e00006100002c00000000000000003700003100005900000000003e",
            INIT_45 => X"00000000003800001500007300004800002500003100001200005c000073000000",
            INIT_46 => X"00004d00003700000c00001200004700007500000000006a00004a00005a000000",
            INIT_47 => X"00005000004f00000000004600003800008b000006000000000031000028000065",
            INIT_48 => X"00002c00002e00001300002a00000b000084000042000068000013000025000006",
            INIT_49 => X"00000000009f00003a00004a00000000000000000400005b000016000029000000",
            INIT_4A => X"00000c00000000000000001700005a00003b00003000004d000000000018000064",
            INIT_4B => X"00001a00004100008300007100002000004c00009300000000009400003c00000f",
            INIT_4C => X"00003a0000730000d800000000004e00002b00001d00003100002000002300001d",
            INIT_4D => X"00000000001200005f00004f00004000003e00003c00003d00003800004700003c",
            INIT_4E => X"00004800005000004000003800003900003e00003f0000490000420000af000082",
            INIT_4F => X"00004100003c00004200004d00003900005a0000cb00000000004500006a00003d",
            INIT_50 => X"00003500004800005400003e00004b00007600007b00003800004e00004d000048",
            INIT_51 => X"00000000000000008000006f00001a00003a000055000044000038000044000043",
            INIT_52 => X"000000000000000000000000000004000000000005000003000006000008000008",
            INIT_53 => X"00000000000000001a00004900000a00000700000c00000a000007000005000006",
            INIT_54 => X"000007000004000004000000000000000004000000000000000006000024000000",
            INIT_55 => X"00002800000000000000001700000700001500001a00000d000000000000000000",
            INIT_56 => X"00000000000000000000000500001b00003700000000000d000005000009000025",
            INIT_57 => X"00000e00000600005600008000000b00001300005a000026000000000001000000",
            INIT_58 => X"00000000000800000000000000000000001800000f000025000025000000000000",
            INIT_59 => X"00002700000900000000000000000000003a00001f00001a00002a000000000000",
            INIT_5A => X"00000000001100000900000a000000000021000000000004000000000007000006",
            INIT_5B => X"00000000001600001900001000001c00000700001500001d00001700000000000b",
            INIT_5C => X"00000b000004000010000000000000000000000000000000000000000000000000",
            INIT_5D => X"00000300000000000000000000000000000400001a00000000000000001c000004",
            INIT_5E => X"00000000000c00004a00000000000000001100000400000900000000000000002f",
            INIT_5F => X"00008500009c00004600000000000000000000000000001f00001b000000000000",
            INIT_60 => X"00000000000000000000000000001b000041000020000000000000000000000028",
            INIT_61 => X"00000000000000000000000000000000000000000000000000000000004600000f",
            INIT_62 => X"000000000000000000000000000000000000000000000000000002000000000000",
            INIT_63 => X"000000000000000000000000000000000011000000000000000012000007000004",
            INIT_64 => X"000000000000000013000000000000000000000000000000000000000008000000",
            INIT_65 => X"000000000004000013000014000000000000000000000000000000000000000000",
            INIT_66 => X"0000b70000ac00009d0000a40000a50000a20000a300009d000000000022000028",
            INIT_67 => X"0000ac0000a80000ad0000a200009200009200008400007c00007c0000940000ad",
            INIT_68 => X"00008b00006e00004e00003e00002e00003a00007a0000a00000a900008c0000a0",
            INIT_69 => X"00001e00000700002d00004800007300008e0000af0000b00000ac00006a000089",
            INIT_6A => X"00004d0000590000a20000aa0000a400002b00004d00006700003a00002700000a",
            INIT_6B => X"00009400001f00001700003a00002500001b00002d00003300000c000015000027",
            INIT_6C => X"00001c00001700003900003100000000001f00002f00004300004700004e000060",
            INIT_6D => X"00000000002d00003100004500003b00002500009900008e00001200001600002f",
            INIT_6E => X"00003200002f00009f00006200002a00000e00001700001200001000002a00003e",
            INIT_6F => X"00000a00001c00002600000e00001000002800003200000000002f00002d00003e",
            INIT_70 => X"00000900002d00002f00001e00002900002700002e00002600003700006200002c",
            INIT_71 => X"00000d00003000003600002200005500000e00002b000000000014000041000022",
            INIT_72 => X"00003500000000002400000500001000007900002d00000f000026000042000054",
            INIT_73 => X"00000000008a00006200000900000600001d00003400002d000028000008000020",
            INIT_74 => X"00000000000000000000000600000000000000001a000017000000000023000015",
            INIT_75 => X"00000000000000000000003a000006000000000000000000000000000000000000",
            INIT_76 => X"000034000000000000000000000000000000000000000000000000000000000000",
            INIT_77 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_79 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"000025000023000022000000000000000000000000000000000000000000000000",
            INIT_7B => X"00001e00002400002600001a00001700001d00002400002600002700001e000020",
            INIT_7C => X"00001d00000e00001d00000f00002000002800001f00002a00002c000023000018",
            INIT_7D => X"00001a00002700002100002800003900000600001c00002b000020000009000000",
            INIT_7E => X"00004c00000000002c00002500000000000000000000002e000021000006000000",
            INIT_7F => X"00000000000900000000004800000000000000000400002400000f000029000021",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER2_ENTITY0;


    MEM_IFMAP_LAYER2_ENTITY1 : if BRAM_NAME = "ifmap_layer2_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000000b00000900005600000200002600000000004a000000",
            INIT_01 => X"00003e00001a00000000000a00000000002b000000000006000000000000000059",
            INIT_02 => X"00000000000000000000001400000000000000008e000000000000000000000013",
            INIT_03 => X"00000000000000006600000000000000000000003600003f000000000020000000",
            INIT_04 => X"00000000000000004200003800000000000000000000000000000000001500000a",
            INIT_05 => X"00002100000000000200000000000800000f00001d000000000000000042000000",
            INIT_06 => X"00002300002100001e000000000025000000000024000000000000000011000004",
            INIT_07 => X"00000000000500000200000000002700000f00000000002c000000000000000000",
            INIT_08 => X"00002200000000000000007800000000000400002a00001400003400003000000c",
            INIT_09 => X"000000000014000020000000000000000001000009000008000000000000000000",
            INIT_0A => X"000000000000000000000000000000000000000000000000000000000000000040",
            INIT_0B => X"000000000000000000000000000000000000000000000043000021000000000000",
            INIT_0C => X"00000000000000000000005d000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000004000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00003700003a00003000002900002f00002c00002d00003000002b000000000000",
            INIT_10 => X"00002d00002e00003000003500002c00003100002a00002700002600002500002a",
            INIT_11 => X"00001c00002500001f00000e00000000000000000c00003b00002900001f000000",
            INIT_12 => X"00000000000000000000000000002300002d00003b00003200003500002e000029",
            INIT_13 => X"00000000000000001900002500003200002300000000000000001a000004000000",
            INIT_14 => X"000018000012000000000000000011000000000006000000000000000000000000",
            INIT_15 => X"000005000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"00000000000000000000000000000000000300000300003800000b000000000000",
            INIT_17 => X"00000000000000000700003a000007000000000000000000000000000000000000",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000002000000",
            INIT_1A => X"00000f00000000000000000500001a00000000000000000000000000000000000d",
            INIT_1B => X"000000000000000000000000000000000000000008000000000004000018000003",
            INIT_1C => X"00000000000000001f00000000000000000a000011000008000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00000800000800001100000a000000000000000000000000000000000000000000",
            INIT_24 => X"00000600000800001100002300002d00002100000b00000b00000c00000c000004",
            INIT_25 => X"00000000000000004200002300000500000000000800000c00000a00000a000000",
            INIT_26 => X"00001600003700000500000800000500003300003500000a00001700000a000000",
            INIT_27 => X"00000500000000000000000c00000e000000000000000000000000000000000009",
            INIT_28 => X"00000000000600001000000400001a000000000002000000000000000008000008",
            INIT_29 => X"00000000000700000000000900000000000000000e00000200000000000100000e",
            INIT_2A => X"00002800003e00000300000600000000000f000000000000000000000000000000",
            INIT_2B => X"000000000000000000000000000007000015000014000000000000000000000000",
            INIT_2C => X"00000000000000001100000000001100000000003100000000001200001800001c",
            INIT_2D => X"00000e000021000035000035000002000000000000000000000000000000000000",
            INIT_2E => X"00000000000000000000000100000000000000000e000005000000000009000000",
            INIT_2F => X"00000c000000000000000000000030000026000000000000000000000000000026",
            INIT_30 => X"00001100003600004e000000000000000000000009000023000000000004000000",
            INIT_31 => X"00005100001e000000000000000000000007000000000003000018000000000000",
            INIT_32 => X"00000000000c00002100003500000a000005000000000000000000000000000037",
            INIT_33 => X"000000000000000000000000000000000000000003000005000004000028000056",
            INIT_34 => X"00000000000000000000000000000000000000003f000018000000000016000000",
            INIT_35 => X"00000000000000000b00004f000018000000000000000000000000000000000000",
            INIT_36 => X"000000000000000000000014000000000000000000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000012000003000000000022",
            INIT_38 => X"00001c00000c00000600000800001500000900000e00000a00001300000d000000",
            INIT_39 => X"00003600000f00000d00000900000b00000800000200000600001300001b000022",
            INIT_3A => X"00002400002600000a00001a00002100002400003500003400001f00001a00000f",
            INIT_3B => X"00002b00004b00005e00005300002000002800003300005100000800000a00000b",
            INIT_3C => X"00003600002f00004500002e00001900001200000e00001400003300001a000019",
            INIT_3D => X"00007e00003500001500005e00007100001b00001500003b00004200005d00005b",
            INIT_3E => X"00007f00000100002500003900003800006700003b00003300003b000064000044",
            INIT_3F => X"00005000007f00005b00002e00004b00007d00007e0000bd00001300002800009e",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000650000a800007500005a00001700004300009400007a00001500003c000047",
            INIT_41 => X"0000390000400000a500008e00003300004c00003b00004600008100007800004e",
            INIT_42 => X"00002600004b00004800004c00007800005f00005000006a0000850000a5000039",
            INIT_43 => X"00006500003300005100004e0000590000660000380000730000660000b80000b0",
            INIT_44 => X"00005f00003300006f0000750000860000b30000c000000e00002b00002c000041",
            INIT_45 => X"00008b0000ab0000c700002700002700002f00002500004000005a000042000079",
            INIT_46 => X"00007100005a00004700004000003c0000790000b900009100006500009e0000a2",
            INIT_47 => X"00006f00007c00008500008a0000a50000e70000c900009d0000cb0000c1000068",
            INIT_48 => X"00007a0000af0000e50000b10000a100008c00008e00008a000088000080000078",
            INIT_49 => X"00008500009d0000a300009a00009500008c000084000076000071000070000075",
            INIT_4A => X"00009300009b00008c0000820000770000730000790000800000880000ef0000a6",
            INIT_4B => X"00007c00007e00008900007f0000740000a700007f00008f0000970000ab0000a3",
            INIT_4C => X"00000000000000000000000000000000008d0000af00009a000085000086000088",
            INIT_4D => X"00000000000000000000000000000b00001c000013000000000000000000000000",
            INIT_4E => X"00001400000000000000003300001400000b000000000000000000000000000000",
            INIT_4F => X"00002800001c00003e00000000000000000000000000003f00000000000000001e",
            INIT_50 => X"00000000000000000000001900000000001e000007000000000000000000000000",
            INIT_51 => X"00000000000e00000600001a00000000000000000000000000000000000000000c",
            INIT_52 => X"00000000000000001d00000400000f000000000000000000000009000000000000",
            INIT_53 => X"00000000000000000300004f00000200000000002f000025000000000000000008",
            INIT_54 => X"00000d00001800000000000000000000000000001c000026000000000006000000",
            INIT_55 => X"00000000000000000800001800000000000900000000000500000000000000000d",
            INIT_56 => X"00000000000000001e00003d000000000000000000000007000000000002000000",
            INIT_57 => X"00003200002200000000002e00000000000000000000001000000000001c000000",
            INIT_58 => X"00000000000000000000000000000d00003a000026000036000000000000000003",
            INIT_59 => X"00000000000100003100001f00002e00000000000000001500001200000000000a",
            INIT_5A => X"00000f000019000000000000000000000000000022000000000000000008000000",
            INIT_5B => X"0000a200000000000000000000004100002100001600000000000000000000000d",
            INIT_5C => X"00000d00000000000000000000000200000000000600000c00003700003f000052",
            INIT_5D => X"000000000000000000000000000000000002000000000056000041000000000036",
            INIT_5E => X"00000100000000000000000600003e000025000000000002000000000000000003",
            INIT_5F => X"00003600001800000000000c00004200000000000000000a000007000000000000",
            INIT_60 => X"000004000000000000000000000005000000000000000000000009000013000024",
            INIT_61 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_63 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_64 => X"00000000000000000000000000001f000004000000000000000000000000000000",
            INIT_65 => X"00002d00000500000000000000000000000000000000000000000b000000000000",
            INIT_66 => X"000000000000000000000000000002000000000001000002000000000007000000",
            INIT_67 => X"00000600000100001000000000000300000000000000003b000002000000000000",
            INIT_68 => X"00000e00000000000000005d00000000000000000000000000002c000000000000",
            INIT_69 => X"00000000000000000000000f00001c000000000000000000000000000000000000",
            INIT_6A => X"00000c000000000000000000000004000000000013000012000000000000000052",
            INIT_6B => X"00000000000000000300001d00000000000000002d000000000005000000000017",
            INIT_6C => X"000000000011000000000008000000000000000012000000000011000000000016",
            INIT_6D => X"00000000001000000300000000003b00000000001900000900000000000000001b",
            INIT_6E => X"00005800000000000d000033000000000000000012000012000000000000000005",
            INIT_6F => X"00001d00002c00003e00003300002800000200000000000400002d000000000000",
            INIT_70 => X"00004f00004900004400004e00004e00002e00000000003b000000000036000070",
            INIT_71 => X"00004800004900000000000800004800006f00005a00005300005a000058000056",
            INIT_72 => X"00008a00006000005a00005e00005d00005700005b00005b00005400004c00004a",
            INIT_73 => X"00007400006100006400006100005700005300004d000045000050000031000000",
            INIT_74 => X"00005200005200004900005500005f00004900004100006700006700005000005e",
            INIT_75 => X"00002f00002f00002e00003300002e00002f00004500005300006b00005e000052",
            INIT_76 => X"00003200003200002400002700002600002700001c00002300002b00002f000031",
            INIT_77 => X"00002400001500001300002100000400002500001300005500003400002d000035",
            INIT_78 => X"00001a00000000000000002c00003800002e00003400003b00001a00002800002d",
            INIT_79 => X"00002500003600002c00007900000000003900002700000400000b00000a00004f",
            INIT_7A => X"00000000005300000e00000000001200000000005300001800000800001a000023",
            INIT_7B => X"00000000000b00005f00000800000000000000001a00002c00004900000a000063",
            INIT_7C => X"00000000000000000000004900002e00000000003800000000003900000000001e",
            INIT_7D => X"00000000000c00001500000000000d0000040000230000000000000000bf000000",
            INIT_7E => X"00000d00002700001e0000000000000000a400000000000000000a000050000061",
            INIT_7F => X"00000000007c000000000008000000000068000045000000000001000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER2_ENTITY1;


    MEM_IFMAP_LAYER2_ENTITY2 : if BRAM_NAME = "ifmap_layer2_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000300001100003c00000000001700000000001200002200002a000000",
            INIT_01 => X"00000000001800000a00004400003a00002600000000002200000600003100001c",
            INIT_02 => X"00005600004800000500000000000a00001700000e00002a00001900000000004a",
            INIT_03 => X"00000000000000000000005600000b0000000000a300000000001100005100001c",
            INIT_04 => X"00000000000000009800000000002800004000000000001e00002d000028000014",
            INIT_05 => X"00004100000300000000001100000e000010000010000009000000000000000000",
            INIT_06 => X"00001000001700001400001000000800000a00000500000900000000001f000048",
            INIT_07 => X"00000d000009000000000011000000000000000074000010000000000017000008",
            INIT_08 => X"00000000000000001900000d00000000000000002600000000000900000d000010",
            INIT_09 => X"00000000000000000300003100000b00000000001000001800000900000c000016",
            INIT_0A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"000000000000000004000000000000000000000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000001000000000000",
            INIT_0D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000000000000000000000000000005000000000000000000000000000012000004",
            INIT_0F => X"000000000008000038000000000000000027000001000000000000000000000000",
            INIT_10 => X"000000000000000000000000000004000000000000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000014000000000000000000000000000000000000",
            INIT_12 => X"00000000000000000000000000000000000000000000000000000000000000000f",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"000000000012000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"00003000001e000000000000000000000000000000000011000000000000000000",
            INIT_18 => X"00000000000000000000000100002400001c00000000000000000000000000003e",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"000000000000000000000000000002000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"00003900003000003500003500003300003600002f000000000000000013000000",
            INIT_1F => X"00003600003800003000002700002800002500002000002000002b00003600003b",
            INIT_20 => X"00001100000600000600000200000200002300003900003b000042000033000039",
            INIT_21 => X"00000000000000000000001e00003d000037000039000036000013000030000027",
            INIT_22 => X"000012000040000037000032000000000015000017000000000001000000000004",
            INIT_23 => X"00001200000000000000000000000000000000001700000000000000000000001e",
            INIT_24 => X"000000000009000010000000000000000006000025000033000044000010000034",
            INIT_25 => X"00000b00000800002b00000d00000b00003800003100000f000000000000000000",
            INIT_26 => X"00000e00003d00000700002c00000000000000000000000000000000002a000000",
            INIT_27 => X"00000400000000000000000000000000001300000300000800001700002e000011",
            INIT_28 => X"00000000000f00001300000000000a00002e000022000000000025000000000019",
            INIT_29 => X"00000c00000000000000001c000000000009000011000015000000000002000000",
            INIT_2A => X"00000000001400000e00001600002100000000000000000000000000002c000000",
            INIT_2B => X"00002800001e00000000000000000000000500000600001f000000000000000003",
            INIT_2C => X"00000000000000000000001700001100000600002c000000000015000014000005",
            INIT_2D => X"00000000000000003c000032000000000000000000000000000000000000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"00000000000000000000000000000000000000000000000000000000000000004f",
            INIT_30 => X"000000000000000000000000000000000000000028000000000000000000000000",
            INIT_31 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"000022000027000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"00001e00001d00002900003200002f00002b00002800002000002c000029000023",
            INIT_34 => X"00002e00003000004300000e00002100002c00002400002400002800002e000029",
            INIT_35 => X"00002a00002900002800000200003f00002c000015000019000029000021000005",
            INIT_36 => X"00005c00000b00001a00003200000c00001c000000000010000024000028000020",
            INIT_37 => X"00001800002300000000001900002500002700000c00003800002400002e000000",
            INIT_38 => X"00002400002a00002700001300000000004100000500002c00000000002600001a",
            INIT_39 => X"00002f00003700000000002400001a00002b000012000038000014000000000025",
            INIT_3A => X"00002000001d00000700002a000034000000000043000025000016000000000000",
            INIT_3B => X"00002b00000000003900001c00001500000000000000004600000e000024000011",
            INIT_3C => X"00003500000000000200003400002900000600000b00002500000000000d000028",
            INIT_3D => X"00003f00000000000d00000d00001100000000002c00001100000000001800000b",
            INIT_3E => X"00000000000000002b00000500003f00000000001b00000e000000000034000000",
            INIT_3F => X"00000f00002c00001d00000000001400002a00000000003900000000000000001a",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00003200002900000000003800000000000000002f00001000000000000f00002f",
            INIT_41 => X"00000000000000002100001100000800000800000f00002b000027000005000000",
            INIT_42 => X"000000000000000003000007000000000000000000000005000052000000000000",
            INIT_43 => X"00000500000200000600000000002e000022000000000000000014000003000000",
            INIT_44 => X"00000d000022000000000000000009000000000000000002000000000000000001",
            INIT_45 => X"000013000015000000000000000000000001000000000000000006000009000000",
            INIT_46 => X"00000000000c000000000000000000000000000000000014000004000000000000",
            INIT_47 => X"00001a000012000000",
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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER2_ENTITY2;


    MEM_GOLD_LAYER0_ENTITY0 : if BRAM_NAME = "gold_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000a00001d00001d00000f00000d00001700001400000f000012000012",
            INIT_01 => X"00000800000400001300001300000f00001200001600001500000c000006000001",
            INIT_02 => X"00001300000b00000000000b000005000000000000000000000004000000000003",
            INIT_03 => X"00000000000000000000000000000000000000001e00002000001b00001200001b",
            INIT_04 => X"00000000000000000000000000001100000b00001900000c000000000001000001",
            INIT_05 => X"000000000000000003000003000000000000000000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000001000000000000000000000000000000000000000000000000000004",
            INIT_08 => X"00000000000000000000000000000000001c000004000000000000000000000000",
            INIT_09 => X"000000000002000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"00000000000b000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000b00000000000000000000000000000b000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000008000000000000000000000000000000000000",
            INIT_0E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00000000000000000000000000000000000b000000000000000000000000000000",
            INIT_10 => X"000000000000000020000000000000000000000000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"00000000000000000000000b000000000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"00000000000d000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000007000004000000000000000000000000",
            INIT_21 => X"000000000000000000000001000000000000000000000000000000000000000006",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00003200000000000000000000000a00003f00000f00001a00000f000000000000",
            INIT_24 => X"00003a00002c00002000002700002500002900002200002000002500003800003a",
            INIT_25 => X"00002200001e00002400001f00002000002000001d00001d00001e000000000000",
            INIT_26 => X"00002200001d00001900002100000f00000e00002f00002f000030000021000028",
            INIT_27 => X"00002a00004100003100003300002900003a00002800003400003300002f000023",
            INIT_28 => X"00000000002900001c00001a00002d00002100001c00001700001f00002a000030",
            INIT_29 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"00000000000000000000000600000e000018000003000000000000000000000000",
            INIT_2D => X"00000000001b00000000000100000200000000000000000000000000000b000000",
            INIT_2E => X"00000500001400001100000000000000001e000000000000000000000000000006",
            INIT_2F => X"00000000001700000f00000300000000000800000000001000001d000000000003",
            INIT_30 => X"00000000000b00000000000300004400000000000400000600000a00001a000000",
            INIT_31 => X"00003700000000000000000b00001e00000c00000000000000000b000017000002",
            INIT_32 => X"00002d00000600000000000600001400002000000200001100000a000004000000",
            INIT_33 => X"00002800001d000000000008000011000000000000000020000000000000000000",
            INIT_34 => X"00000600000000001000000000000b00000b000000000000000008000011000004",
            INIT_35 => X"00001500001200001200000900000e000027000000000024000018000000000000",
            INIT_36 => X"00000d00005800000000002300002b00000000000000000c000000000000000000",
            INIT_37 => X"00003600000000000b00001f00002200001b00000000000000001100002d000028",
            INIT_38 => X"00002800002200001e00001a00002100001f000007000000000045000012000023",
            INIT_39 => X"00002400002500002700000000002500003300003800002a00002f00002f00002e",
            INIT_3A => X"00000000005200002e00002c00003a00002e00002f00003600002f00002a000024",
            INIT_3B => X"00002800004500002a00002f00002e00002f00002a00002a00002600002b000013",
            INIT_3C => X"00002d00003100002e00002400002300002800001900001900002c00003300002b",
            INIT_3D => X"00000000000000000000000000000000000000000000001f00003a00004300002e",
            INIT_3E => X"00000000000000000000000000000000000000000000000a000002000000000000",
            INIT_3F => X"00000000000300001c00001f000000000017000008000010000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000001100002b00000000000000000000000000000000002a000000",
            INIT_41 => X"00000000000e00000000000000000000007100000000000000003f00002d000042",
            INIT_42 => X"00000500006c00000000002a00003b00002600005a00000000002500002c000028",
            INIT_43 => X"00001e00005200002f00000000003c00004800005d000024000034000000000023",
            INIT_44 => X"00006000003e00006100002c00000000000000003700003100005900000000003e",
            INIT_45 => X"00000000003800001500007300004800002500003100001200005c000073000000",
            INIT_46 => X"00004d00003700000c00001200004700007500000000006a00004a00005a000000",
            INIT_47 => X"00005000004f00000000004600003800008b000006000000000031000028000065",
            INIT_48 => X"00002c00002e00001300002a00000b000084000042000068000013000025000006",
            INIT_49 => X"00000000009f00003a00004a00000000000000000400005b000016000029000000",
            INIT_4A => X"00000c00000000000000001700005a00003b00003000004d000000000018000064",
            INIT_4B => X"00001a00004100008300007100002000004c00009300000000009400003c00000f",
            INIT_4C => X"00003a0000730000d800000000004e00002b00001d00003100002000002300001d",
            INIT_4D => X"00000000001200005f00004f00004000003e00003c00003d00003800004700003c",
            INIT_4E => X"00004800005000004000003800003900003e00003f0000490000420000af000082",
            INIT_4F => X"00004100003c00004200004d00003900005a0000cb00000000004500006a00003d",
            INIT_50 => X"00003500004800005400003e00004b00007600007b00003800004e00004d000048",
            INIT_51 => X"00000000000000008000006f00001a00003a000055000044000038000044000043",
            INIT_52 => X"000000000000000000000000000004000000000005000003000006000008000008",
            INIT_53 => X"00000000000000001a00004900000a00000700000c00000a000007000005000006",
            INIT_54 => X"000007000004000004000000000000000004000000000000000006000024000000",
            INIT_55 => X"00002800000000000000001700000700001500001a00000d000000000000000000",
            INIT_56 => X"00000000000000000000000500001b00003700000000000d000005000009000025",
            INIT_57 => X"00000e00000600005600008000000b00001300005a000026000000000001000000",
            INIT_58 => X"00000000000800000000000000000000001800000f000025000025000000000000",
            INIT_59 => X"00002700000900000000000000000000003a00001f00001a00002a000000000000",
            INIT_5A => X"00000000001100000900000a000000000021000000000004000000000007000006",
            INIT_5B => X"00000000001600001900001000001c00000700001500001d00001700000000000b",
            INIT_5C => X"00000b000004000010000000000000000000000000000000000000000000000000",
            INIT_5D => X"00000300000000000000000000000000000400001a00000000000000001c000004",
            INIT_5E => X"00000000000c00004a00000000000000001100000400000900000000000000002f",
            INIT_5F => X"00008500009c00004600000000000000000000000000001f00001b000000000000",
            INIT_60 => X"00000000000000000000000000001b000041000020000000000000000000000028",
            INIT_61 => X"00000000000000000000000000000000000000000000000000000000004600000f",
            INIT_62 => X"000000000000000000000000000000000000000000000000000002000000000000",
            INIT_63 => X"000000000000000000000000000000000011000000000000000012000007000004",
            INIT_64 => X"000000000000000013000000000000000000000000000000000000000008000000",
            INIT_65 => X"000000000004000013000014000000000000000000000000000000000000000000",
            INIT_66 => X"0000b70000ac00009d0000a40000a50000a20000a300009d000000000022000028",
            INIT_67 => X"0000ac0000a80000ad0000a200009200009200008400007c00007c0000940000ad",
            INIT_68 => X"00008b00006e00004e00003e00002e00003a00007a0000a00000a900008c0000a0",
            INIT_69 => X"00001e00000700002d00004800007300008e0000af0000b00000ac00006a000089",
            INIT_6A => X"00004d0000590000a20000aa0000a400002b00004d00006700003a00002700000a",
            INIT_6B => X"00009400001f00001700003a00002500001b00002d00003300000c000015000027",
            INIT_6C => X"00001c00001700003900003100000000001f00002f00004300004700004e000060",
            INIT_6D => X"00000000002d00003100004500003b00002500009900008e00001200001600002f",
            INIT_6E => X"00003200002f00009f00006200002a00000e00001700001200001000002a00003e",
            INIT_6F => X"00000a00001c00002600000e00001000002800003200000000002f00002d00003e",
            INIT_70 => X"00000900002d00002f00001e00002900002700002e00002600003700006200002c",
            INIT_71 => X"00000d00003000003600002200005500000e00002b000000000014000041000022",
            INIT_72 => X"00003500000000002400000500001000007900002d00000f000026000042000054",
            INIT_73 => X"00000000008a00006200000900000600001d00003400002d000028000008000020",
            INIT_74 => X"00000000000000000000000600000000000000001a000017000000000023000015",
            INIT_75 => X"00000000000000000000003a000006000000000000000000000000000000000000",
            INIT_76 => X"000034000000000000000000000000000000000000000000000000000000000000",
            INIT_77 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_79 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"000025000023000022000000000000000000000000000000000000000000000000",
            INIT_7B => X"00001e00002400002600001a00001700001d00002400002600002700001e000020",
            INIT_7C => X"00001d00000e00001d00000f00002000002800001f00002a00002c000023000018",
            INIT_7D => X"00001a00002700002100002800003900000600001c00002b000020000009000000",
            INIT_7E => X"00004c00000000002c00002500000000000000000000002e000021000006000000",
            INIT_7F => X"00000000000900000000004800000000000000000400002400000f000029000021",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER0_ENTITY0;


    MEM_GOLD_LAYER0_ENTITY1 : if BRAM_NAME = "gold_layer0_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000000b00000900005600000200002600000000004a000000",
            INIT_01 => X"00003e00001a00000000000a00000000002b000000000006000000000000000059",
            INIT_02 => X"00000000000000000000001400000000000000008e000000000000000000000013",
            INIT_03 => X"00000000000000006600000000000000000000003600003f000000000020000000",
            INIT_04 => X"00000000000000004200003800000000000000000000000000000000001500000a",
            INIT_05 => X"00002100000000000200000000000800000f00001d000000000000000042000000",
            INIT_06 => X"00002300002100001e000000000025000000000024000000000000000011000004",
            INIT_07 => X"00000000000500000200000000002700000f00000000002c000000000000000000",
            INIT_08 => X"00002200000000000000007800000000000400002a00001400003400003000000c",
            INIT_09 => X"000000000014000020000000000000000001000009000008000000000000000000",
            INIT_0A => X"000000000000000000000000000000000000000000000000000000000000000040",
            INIT_0B => X"000000000000000000000000000000000000000000000043000021000000000000",
            INIT_0C => X"00000000000000000000005d000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000004000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00003700003a00003000002900002f00002c00002d00003000002b000000000000",
            INIT_10 => X"00002d00002e00003000003500002c00003100002a00002700002600002500002a",
            INIT_11 => X"00001c00002500001f00000e00000000000000000c00003b00002900001f000000",
            INIT_12 => X"00000000000000000000000000002300002d00003b00003200003500002e000029",
            INIT_13 => X"00000000000000001900002500003200002300000000000000001a000004000000",
            INIT_14 => X"000018000012000000000000000011000000000006000000000000000000000000",
            INIT_15 => X"000005000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"00000000000000000000000000000000000300000300003800000b000000000000",
            INIT_17 => X"00000000000000000700003a000007000000000000000000000000000000000000",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000002000000",
            INIT_1A => X"00000f00000000000000000500001a00000000000000000000000000000000000d",
            INIT_1B => X"000000000000000000000000000000000000000008000000000004000018000003",
            INIT_1C => X"00000000000000001f00000000000000000a000011000008000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00000800000800001100000a000000000000000000000000000000000000000000",
            INIT_24 => X"00000600000800001100002300002d00002100000b00000b00000c00000c000004",
            INIT_25 => X"00000000000000004200002300000500000000000800000c00000a00000a000000",
            INIT_26 => X"00001600003700000500000800000500003300003500000a00001700000a000000",
            INIT_27 => X"00000500000000000000000c00000e000000000000000000000000000000000009",
            INIT_28 => X"00000000000600001000000400001a000000000002000000000000000008000008",
            INIT_29 => X"00000000000700000000000900000000000000000e00000200000000000100000e",
            INIT_2A => X"00002800003e00000300000600000000000f000000000000000000000000000000",
            INIT_2B => X"000000000000000000000000000007000015000014000000000000000000000000",
            INIT_2C => X"00000000000000001100000000001100000000003100000000001200001800001c",
            INIT_2D => X"00000e000021000035000035000002000000000000000000000000000000000000",
            INIT_2E => X"00000000000000000000000100000000000000000e000005000000000009000000",
            INIT_2F => X"00000c000000000000000000000030000026000000000000000000000000000026",
            INIT_30 => X"00001100003600004e000000000000000000000009000023000000000004000000",
            INIT_31 => X"00005100001e000000000000000000000007000000000003000018000000000000",
            INIT_32 => X"00000000000c00002100003500000a000005000000000000000000000000000037",
            INIT_33 => X"000000000000000000000000000000000000000003000005000004000028000056",
            INIT_34 => X"00000000000000000000000000000000000000003f000018000000000016000000",
            INIT_35 => X"00000000000000000b00004f000018000000000000000000000000000000000000",
            INIT_36 => X"000000000000000000000014000000000000000000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000012000003000000000022",
            INIT_38 => X"00001c00000c00000600000800001500000900000e00000a00001300000d000000",
            INIT_39 => X"00003600000f00000d00000900000b00000800000200000600001300001b000022",
            INIT_3A => X"00002400002600000a00001a00002100002400003500003400001f00001a00000f",
            INIT_3B => X"00002b00004b00005e00005300002000002800003300005100000800000a00000b",
            INIT_3C => X"00003600002f00004500002e00001900001200000e00001400003300001a000019",
            INIT_3D => X"00007e00003500001500005e00007100001b00001500003b00004200005d00005b",
            INIT_3E => X"00007f00000100002500003900003800006700003b00003300003b000064000044",
            INIT_3F => X"00005000007f00005b00002e00004b00007d00007e0000bd00001300002800009e",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000650000a800007500005a00001700004300009400007a00001500003c000047",
            INIT_41 => X"0000390000400000a500008e00003300004c00003b00004600008100007800004e",
            INIT_42 => X"00002600004b00004800004c00007800005f00005000006a0000850000a5000039",
            INIT_43 => X"00006500003300005100004e0000590000660000380000730000660000b80000b0",
            INIT_44 => X"00005f00003300006f0000750000860000b30000c000000e00002b00002c000041",
            INIT_45 => X"00008b0000ab0000c700002700002700002f00002500004000005a000042000079",
            INIT_46 => X"00007100005a00004700004000003c0000790000b900009100006500009e0000a2",
            INIT_47 => X"00006f00007c00008500008a0000a50000e70000c900009d0000cb0000c1000068",
            INIT_48 => X"00007a0000af0000e50000b10000a100008c00008e00008a000088000080000078",
            INIT_49 => X"00008500009d0000a300009a00009500008c000084000076000071000070000075",
            INIT_4A => X"00009300009b00008c0000820000770000730000790000800000880000ef0000a6",
            INIT_4B => X"00007c00007e00008900007f0000740000a700007f00008f0000970000ab0000a3",
            INIT_4C => X"00000000000000000000000000000000008d0000af00009a000085000086000088",
            INIT_4D => X"00000000000000000000000000000b00001c000013000000000000000000000000",
            INIT_4E => X"00001400000000000000003300001400000b000000000000000000000000000000",
            INIT_4F => X"00002800001c00003e00000000000000000000000000003f00000000000000001e",
            INIT_50 => X"00000000000000000000001900000000001e000007000000000000000000000000",
            INIT_51 => X"00000000000e00000600001a00000000000000000000000000000000000000000c",
            INIT_52 => X"00000000000000001d00000400000f000000000000000000000009000000000000",
            INIT_53 => X"00000000000000000300004f00000200000000002f000025000000000000000008",
            INIT_54 => X"00000d00001800000000000000000000000000001c000026000000000006000000",
            INIT_55 => X"00000000000000000800001800000000000900000000000500000000000000000d",
            INIT_56 => X"00000000000000001e00003d000000000000000000000007000000000002000000",
            INIT_57 => X"00003200002200000000002e00000000000000000000001000000000001c000000",
            INIT_58 => X"00000000000000000000000000000d00003a000026000036000000000000000003",
            INIT_59 => X"00000000000100003100001f00002e00000000000000001500001200000000000a",
            INIT_5A => X"00000f000019000000000000000000000000000022000000000000000008000000",
            INIT_5B => X"0000a200000000000000000000004100002100001600000000000000000000000d",
            INIT_5C => X"00000d00000000000000000000000200000000000600000c00003700003f000052",
            INIT_5D => X"000000000000000000000000000000000002000000000056000041000000000036",
            INIT_5E => X"00000100000000000000000600003e000025000000000002000000000000000003",
            INIT_5F => X"00003600001800000000000c00004200000000000000000a000007000000000000",
            INIT_60 => X"000004000000000000000000000005000000000000000000000009000013000024",
            INIT_61 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_63 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_64 => X"00000000000000000000000000001f000004000000000000000000000000000000",
            INIT_65 => X"00002d00000500000000000000000000000000000000000000000b000000000000",
            INIT_66 => X"000000000000000000000000000002000000000001000002000000000007000000",
            INIT_67 => X"00000600000100001000000000000300000000000000003b000002000000000000",
            INIT_68 => X"00000e00000000000000005d00000000000000000000000000002c000000000000",
            INIT_69 => X"00000000000000000000000f00001c000000000000000000000000000000000000",
            INIT_6A => X"00000c000000000000000000000004000000000013000012000000000000000052",
            INIT_6B => X"00000000000000000300001d00000000000000002d000000000005000000000017",
            INIT_6C => X"000000000011000000000008000000000000000012000000000011000000000016",
            INIT_6D => X"00000000001000000300000000003b00000000001900000900000000000000001b",
            INIT_6E => X"00005800000000000d000033000000000000000012000012000000000000000005",
            INIT_6F => X"00001d00002c00003e00003300002800000200000000000400002d000000000000",
            INIT_70 => X"00004f00004900004400004e00004e00002e00000000003b000000000036000070",
            INIT_71 => X"00004800004900000000000800004800006f00005a00005300005a000058000056",
            INIT_72 => X"00008a00006000005a00005e00005d00005700005b00005b00005400004c00004a",
            INIT_73 => X"00007400006100006400006100005700005300004d000045000050000031000000",
            INIT_74 => X"00005200005200004900005500005f00004900004100006700006700005000005e",
            INIT_75 => X"00002f00002f00002e00003300002e00002f00004500005300006b00005e000052",
            INIT_76 => X"00003200003200002400002700002600002700001c00002300002b00002f000031",
            INIT_77 => X"00002400001500001300002100000400002500001300005500003400002d000035",
            INIT_78 => X"00001a00000000000000002c00003800002e00003400003b00001a00002800002d",
            INIT_79 => X"00002500003600002c00007900000000003900002700000400000b00000a00004f",
            INIT_7A => X"00000000005300000e00000000001200000000005300001800000800001a000023",
            INIT_7B => X"00000000000b00005f00000800000000000000001a00002c00004900000a000063",
            INIT_7C => X"00000000000000000000004900002e00000000003800000000003900000000001e",
            INIT_7D => X"00000000000c00001500000000000d0000040000230000000000000000bf000000",
            INIT_7E => X"00000d00002700001e0000000000000000a400000000000000000a000050000061",
            INIT_7F => X"00000000007c000000000008000000000068000045000000000001000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER0_ENTITY1;


    MEM_GOLD_LAYER0_ENTITY2 : if BRAM_NAME = "gold_layer0_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000300001100003c00000000001700000000001200002200002a000000",
            INIT_01 => X"00000000001800000a00004400003a00002600000000002200000600003100001c",
            INIT_02 => X"00005600004800000500000000000a00001700000e00002a00001900000000004a",
            INIT_03 => X"00000000000000000000005600000b0000000000a300000000001100005100001c",
            INIT_04 => X"00000000000000009800000000002800004000000000001e00002d000028000014",
            INIT_05 => X"00004100000300000000001100000e000010000010000009000000000000000000",
            INIT_06 => X"00001000001700001400001000000800000a00000500000900000000001f000048",
            INIT_07 => X"00000d000009000000000011000000000000000074000010000000000017000008",
            INIT_08 => X"00000000000000001900000d00000000000000002600000000000900000d000010",
            INIT_09 => X"00000000000000000300003100000b00000000001000001800000900000c000016",
            INIT_0A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"000000000000000004000000000000000000000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000001000000000000",
            INIT_0D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000000000000000000000000000005000000000000000000000000000012000004",
            INIT_0F => X"000000000008000038000000000000000027000001000000000000000000000000",
            INIT_10 => X"000000000000000000000000000004000000000000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000014000000000000000000000000000000000000",
            INIT_12 => X"00000000000000000000000000000000000000000000000000000000000000000f",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"000000000012000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"00003000001e000000000000000000000000000000000011000000000000000000",
            INIT_18 => X"00000000000000000000000100002400001c00000000000000000000000000003e",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"000000000000000000000000000002000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"00003900003000003500003500003300003600002f000000000000000013000000",
            INIT_1F => X"00003600003800003000002700002800002500002000002000002b00003600003b",
            INIT_20 => X"00001100000600000600000200000200002300003900003b000042000033000039",
            INIT_21 => X"00000000000000000000001e00003d000037000039000036000013000030000027",
            INIT_22 => X"000012000040000037000032000000000015000017000000000001000000000004",
            INIT_23 => X"00001200000000000000000000000000000000001700000000000000000000001e",
            INIT_24 => X"000000000009000010000000000000000006000025000033000044000010000034",
            INIT_25 => X"00000b00000800002b00000d00000b00003800003100000f000000000000000000",
            INIT_26 => X"00000e00003d00000700002c00000000000000000000000000000000002a000000",
            INIT_27 => X"00000400000000000000000000000000001300000300000800001700002e000011",
            INIT_28 => X"00000000000f00001300000000000a00002e000022000000000025000000000019",
            INIT_29 => X"00000c00000000000000001c000000000009000011000015000000000002000000",
            INIT_2A => X"00000000001400000e00001600002100000000000000000000000000002c000000",
            INIT_2B => X"00002800001e00000000000000000000000500000600001f000000000000000003",
            INIT_2C => X"00000000000000000000001700001100000600002c000000000015000014000005",
            INIT_2D => X"00000000000000003c000032000000000000000000000000000000000000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"00000000000000000000000000000000000000000000000000000000000000004f",
            INIT_30 => X"000000000000000000000000000000000000000028000000000000000000000000",
            INIT_31 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"000022000027000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"00001e00001d00002900003200002f00002b00002800002000002c000029000023",
            INIT_34 => X"00002e00003000004300000e00002100002c00002400002400002800002e000029",
            INIT_35 => X"00002a00002900002800000200003f00002c000015000019000029000021000005",
            INIT_36 => X"00005c00000b00001a00003200000c00001c000000000010000024000028000020",
            INIT_37 => X"00001800002300000000001900002500002700000c00003800002400002e000000",
            INIT_38 => X"00002400002a00002700001300000000004100000500002c00000000002600001a",
            INIT_39 => X"00002f00003700000000002400001a00002b000012000038000014000000000025",
            INIT_3A => X"00002000001d00000700002a000034000000000043000025000016000000000000",
            INIT_3B => X"00002b00000000003900001c00001500000000000000004600000e000024000011",
            INIT_3C => X"00003500000000000200003400002900000600000b00002500000000000d000028",
            INIT_3D => X"00003f00000000000d00000d00001100000000002c00001100000000001800000b",
            INIT_3E => X"00000000000000002b00000500003f00000000001b00000e000000000034000000",
            INIT_3F => X"00000f00002c00001d00000000001400002a00000000003900000000000000001a",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00003200002900000000003800000000000000002f00001000000000000f00002f",
            INIT_41 => X"00000000000000002100001100000800000800000f00002b000027000005000000",
            INIT_42 => X"000000000000000003000007000000000000000000000005000052000000000000",
            INIT_43 => X"00000500000200000600000000002e000022000000000000000014000003000000",
            INIT_44 => X"00000d000022000000000000000009000000000000000002000000000000000001",
            INIT_45 => X"000013000015000000000000000000000001000000000000000006000009000000",
            INIT_46 => X"00000000000c000000000000000000000000000000000014000004000000000000",
            INIT_47 => X"00001a000012000000",
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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER0_ENTITY2;


    MEM_GOLD_LAYER1_ENTITY0 : if BRAM_NAME = "gold_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000470000000000000001010000bc0000510001040000400000120000a0",
            INIT_01 => X"0000000000000000310000000000000000000000000000ba00000000000000001c",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000092",
            INIT_03 => X"000000000000000000000000000002000000000000000104000000000000000000",
            INIT_04 => X"0000000000020000000000000000000000000000000000380000000000a8000000",
            INIT_05 => X"000000000000000000000037000053000000000000000000000000000000000000",
            INIT_06 => X"00000000000000000f000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000b700008200011300003700013400017a0000a8000000000000000000000000",
            INIT_08 => X"00000000000000000000006200014d00000000007900002d000000000000000035",
            INIT_09 => X"0000000000000000d100000000006a00000000003500001000007e000000000000",
            INIT_0A => X"0000c60000810000d20000770000330000a00000000000b00000b0000000000000",
            INIT_0B => X"00003c0000a10000000000c80000650000000000570000a9000008000000000000",
            INIT_0C => X"00000000000000005c00000000000600000000000000000000007a000058000000",
            INIT_0D => X"0000000000240000ff0000000000480000770000000000e600002c000000000000",
            INIT_0E => X"000000000000000000000000000000000000000000000036000000000019000000",
            INIT_0F => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000aa00006c0000b500004d00005d000000000000",
            INIT_11 => X"0000b300011900000000000000000000001500003000001b00000000003f000000",
            INIT_12 => X"0000280000000000000000260000b60000bd0000000000aa000000000012000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000680000d000014f0001440001240000c0000000000000000000000000000000",
            INIT_15 => X"00005d0000cf000000000016000057000009000000000000000040000000000017",
            INIT_16 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000b80000010000a8000000000000000000000000000000000000000000000000",
            INIT_18 => X"00000000000000000000000000000000006300001500009000009600002800001e",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000f800007900000000000000000000000000006c00000000000000009e00011b",
            INIT_1B => X"00006900000000001c0000000000000000110000120000670000ff000004000043",
            INIT_1C => X"00001700005100006c00009100000000000000003100004e000086000000000041",
            INIT_1D => X"0000000000100000000000780000000000e00000fd0000b0000000000046000026",
            INIT_1E => X"00008f00006a0000ef0000fb0000c10000ab000059000000000000000000000000",
            INIT_1F => X"0000620000ab00004600007b00000000000000001000001400005300003b0000db",
            INIT_20 => X"0000000000a100009700005100012300007a00008c00006d0000a200013c00005a",
            INIT_21 => X"00000000000000000000000000000000000700000000003c000000000000000000",
            INIT_22 => X"00008c00012f0000a200004f00001e000000000000000000000000000104000000",
            INIT_23 => X"0000000000120001380000720000a100008300016100013a00015b000000000000",
            INIT_24 => X"0000000000000000ae0000cd00013e0000ad0000e00000dc000070000088000000",
            INIT_25 => X"0000460000bf00001f0000c8000000000000000000000000000000000000000000",
            INIT_26 => X"00001e00003600009f00013b00007300001e00000000002600001b00004e00004b",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000a50000aa000006",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"00006600010100007600004300006a000000000000000000000000000000000000",
            INIT_2B => X"00000000000000000000000000000000000000000000000000000000000000007c",
            INIT_2C => X"000000000000000000000000000031000000000069000059000000000000000000",
            INIT_2D => X"0000000000000000000000000000ed00007200003100001000000000000000003d",
            INIT_2E => X"0000000000000000000000d000017f00012c000070000000000000000000000000",
            INIT_2F => X"00007600004400006d0000de000021000039000008000067000000000032000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000eb000141000084",
            INIT_31 => X"00000000000000000000000000009200007f00003f00006e0000780000b2000000",
            INIT_32 => X"00000000000000000000014800008700003400001e00000000019100001c000000",
            INIT_33 => X"00000000000000000000004600004a000058000000000000000000000000000000",
            INIT_34 => X"0000c50000d70000f3000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER1_ENTITY0;


    MEM_GOLD_LAYER2_ENTITY0 : if BRAM_NAME = "gold_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"00003700006c000060000000000000000000000000000000000000000000000000",
            INIT_05 => X"00002a00000f00000000001700000000000000000000004c00000c000038000021",
            INIT_06 => X"00000000001300001100006100005f00002b000000000007000015000000000000",
            INIT_07 => X"00005a0000b800004600004300000000007300005d000000000029000000000000",
            INIT_08 => X"0000050000000000000000000000000000230000d6000017000000000000000000",
            INIT_09 => X"0000c200001d00000000000e00013a00002700001f00003a00001c000000000000",
            INIT_0A => X"0000160000000000000000220001cf00001700000000006f000080000038000024",
            INIT_0B => X"00000a00000000000000009200017a0000000000000000000000f2000060000000",
            INIT_0C => X"00007c00000000007b00000000000000000d0000000000ce00009d000000000000",
            INIT_0D => X"00000000000000000000000000000f00000000000000000000000300000000000c",
            INIT_0E => X"000000000000000000000000000000000000000011000000000000000000000000",
            INIT_0F => X"000000000000000000000000000000000038000000000000000000000000000036",
            INIT_10 => X"00000000000000000000009d00000000007700000000000000004b000000000000",
            INIT_11 => X"00000600000000002100000000001300000000000000000000001500000000002d",
            INIT_12 => X"00000000000000000d000000000000000000000000000000000000000000000000",
            INIT_13 => X"00000000000600000000000000006a00000000000000000000006e000000000079",
            INIT_14 => X"00000000003700001b00003900003c0000000000000000000000cb000000000000",
            INIT_15 => X"0000080000000000b6000032000000000000000006000000000000000000000000",
            INIT_16 => X"00000000002e00001100002000000c00000000006700003900000000000a000000",
            INIT_17 => X"00000b00000900000000000000000000001700000900003600001500000000002a",
            INIT_18 => X"00000000000800000000000900002900000d000000000017000000000006000019",
            INIT_19 => X"000000000017000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"00000000000000000000000000001300001a00002600001600000000000900000d",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000001b000000000000000000000000000000000002000001000000000005",
            INIT_1D => X"00000000000000000000000000000000000000000000000000000000001100000e",
            INIT_1E => X"00000600000100000000000200003b00000000000000000000000000000f000000",
            INIT_1F => X"00000000000500000000000b000000000000000000000000000000000015000018",
            INIT_20 => X"00001700000500000c00001f00000000000100004000001c000006000011000000",
            INIT_21 => X"00003800000000000000003000002200001300000800001200002100000800002d",
            INIT_22 => X"00000000000000000000000000000000000800000000001a00002e000000000031",
            INIT_23 => X"00004a000000000000000022000000000000000000000000000000000000000000",
            INIT_24 => X"00000000003200001100000000000a00000900000900000000003200002a00004a",
            INIT_25 => X"00000000005b00000000001f00001900000400003e000000000005000000000000",
            INIT_26 => X"00000000000d00000000005b00005d00000000001600000000000000000000004e",
            INIT_27 => X"00000000000000000000001c00005b00000000000000000000000000005f000083",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"00000000001700000000003c000000000000000000000000000019000000000029",
            INIT_2A => X"00001700000800000000001f000000000000000000000010000000000000000036",
            INIT_2B => X"00000000002f00002700005600003b0000aa00000000000000000000000000000e",
            INIT_2C => X"00002d00009400005100006100006800007200004c00004d000056000087000027",
            INIT_2D => X"00009b00000000000a00000c00001800000000002500003800000000004d000000",
            INIT_2E => X"00003600003900003900007400000000000000000000001c00000e00000000002d",
            INIT_2F => X"00009200005000004d00000200001d00004b00000000001300000000000000001b",
            INIT_30 => X"00001500001200000000000000000000009e000024000000000000000000000050",
            INIT_31 => X"00000000000000000000000000000000000000000000000000001c00004b000032",
            INIT_32 => X"00000000000000000000002500000000002c00003700000000000000000000004e",
            INIT_33 => X"00000000000000000000000000001300001100000000003f000000000064000000",
            INIT_34 => X"00005300000400000b00001400000000000700000000000200005f000000000000",
            INIT_35 => X"00000000000000000000000000000000000000001700002e000032000018000004",
            INIT_36 => X"00000000000000000000000000000d00000d000000000000000000000000000000",
            INIT_37 => X"00000e00000000001600000000000000000000000d000000000000000000000000",
            INIT_38 => X"00000000000000000000002100000100000000000000000600000000000000001e",
            INIT_39 => X"00000000002e00004100003800003900000000000000000000001b000012000000",
            INIT_3A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"000000000000000000000000000000000000000000000000000000000000000022",
            INIT_3C => X"00001a00000000000300007c000017000000000023000000000000000000000000",
            INIT_3D => X"00000c00000000000000001700001800000600001500000000001a000000000000",
            INIT_3E => X"00003300000000001900006c00002700009200008100004000003500002400001e",
            INIT_3F => X"000000000000000070000000000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00003600000000003800003800004f00001c000000000000000000000005000000",
            INIT_41 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_42 => X"000000000000000000000000000000000000000000000013000000000000000000",
            INIT_43 => X"00006500004200001c000000000000000000000000000000000000000000000000",
            INIT_44 => X"00000000001900007700005600005900004e000062000000000000000066000026",
            INIT_45 => X"00003900001800002500002800000c0000740000b700004700003500006000004d",
            INIT_46 => X"0000920000a900008b00009a00008a00008400006e000050000039000078000085",
            INIT_47 => X"0000500000670000a90000b50000a600000a0000000000000000bb0000ab00009c",
            INIT_48 => X"00000000000000001c00001100002d00001c00000000000000004d000097000046",
            INIT_49 => X"00000000000000000000000000000000000000001d00006800001d000000000021",
            INIT_4A => X"0000730000560000670000d100002400004000006a00003400003700002f00002b",
            INIT_4B => X"000000000000000000000000000000000000000000000000000061000017000042",
            INIT_4C => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_4D => X"00000000000000000000000000000000000000000000000000000f000000000000",
            INIT_4E => X"000068000000000021000000000000000006000000000000000000000000000000",
            INIT_4F => X"0000a90000980000a000007d0000c100007c00009c00007d00009b0000b3000000",
            INIT_50 => X"00001100000000000000000000000000000000000000001c0000060000b00000c2",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"00005100004b000061000062000000000000000000000000000000000000000000",
            INIT_55 => X"00006800002a00005a00005e00005b000053000088000061000041000049000050",
            INIT_56 => X"00004600007b00004e00006d00007600003c00007300005f00007600006000005a",
            INIT_57 => X"00002e00002300001500001000004f00003b00004600009700005c00005d000041",
            INIT_58 => X"00000000000000000000000000000d00000000000000000000000000000000002f",
            INIT_59 => X"00004300007000004500004800004b00005600005700007b000073000063000000",
            INIT_5A => X"00003c00002400000000001e00002200003200002b000044000012000005000040",
            INIT_5B => X"00001500000000000600000000002100002100000000000900000000005d000007",
            INIT_5C => X"00000000000000000000000000000000000000000000000000002b000017000019",
            INIT_5D => X"00002600002c00004a00005e00005a000000000000000000000000000000000000",
            INIT_5E => X"00000e00005000003e00003a00002600002600000000003600003c000047000031",
            INIT_5F => X"00003500004400005a00002600003500003f00002d00002e000031000046000002",
            INIT_60 => X"00000000000200000000001d00000000002c00000800000000001c000044000049",
            INIT_61 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_63 => X"00004c00000000001100000000001100003200000000000a000000000017000000",
            INIT_64 => X"00000000001100000000001c00007600000000000200000000002e000000000000",
            INIT_65 => X"0000af00000000003e00001800001a00008600007b00001200006e000000000000",
            INIT_66 => X"00006c0000740000d10000be00010a00011600004c00004800003500003300003d",
            INIT_67 => X"00007b00003e00005500002b0000030000350000150000960000f00000be0000c1",
            INIT_68 => X"00004000000000000a00001100005700006400004000001000000000003400001c",
            INIT_69 => X"00000000000000000000003700007600001700002f00002700003000004000001f",
            INIT_6A => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6B => X"00000000009700000000000000000900000000006c00000000002b000000000000",
            INIT_6C => X"0000790000c40000620000b00000000000ed00000000000000006f000084000065",
            INIT_6D => X"00001f000053000076000025000000000046000000000092000000000053000000",
            INIT_6E => X"0000000000110000060000000000000000240000000000a2000000000000000000",
            INIT_6F => X"00002400003200005c00001100001e00000000000600000000000000000000000b",
            INIT_70 => X"00002e00005900003600004200002600002c00004600003400008a00005000009e",
            INIT_71 => X"00001700001f00000000002700003500003100002a000022000036000022000097",
            INIT_72 => X"0000000000280000bd00009a00001c00002100006600003700002b0000a60000af",
            INIT_73 => X"000000000000000000000000000000000000000000000000000000000000000010",
            INIT_74 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_75 => X"00000000000000001f00000b000000000000000000000000000000000000000000",
            INIT_76 => X"00000000001900002000002a000005000018000030000000000000000000000000",
            INIT_77 => X"0000a30000ae00007d0000d00000b00000b30000a700008a00008600007e000047",
            INIT_78 => X"0000000000000000000000000000000000000000020000000000e10000bf0000ac",
            INIT_79 => X"00000000005300000000006500000000000000004e00000000002a00002f000004",
            INIT_7A => X"00000000001c00000000002500000000005000000000000500001100000000003a",
            INIT_7B => X"00000000002200000000000000000000000000000000000000000000000000008b",
            INIT_7C => X"00000000000000000000000a00002400000d000018000012000000000000000004",
            INIT_7D => X"00001e00000000003300000000000000001200005000000400000000004d000000",
            INIT_7E => X"00000000000000002500000000000000000000009100000000000000003f000000",
            INIT_7F => X"00000000000000007700000000000000000a000044000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER2_ENTITY0;


    MEM_GOLD_LAYER2_ENTITY1 : if BRAM_NAME = "gold_layer2_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000410000300000610000000000a6000005000042000067000000000000000000",
            INIT_01 => X"00002900000000000000000000000000000000000000000300000000000b000038",
            INIT_02 => X"00000500000000006f00002d00000000002300000000002200000000002300004e",
            INIT_03 => X"00002e00000300002b00000000000000000000000000000000000000005c00002e",
            INIT_04 => X"00005300005e00005e00000000000000000000000000000000000000000000002c",
            INIT_05 => X"0000670000a20000b0000090000039000030000036000030000000000000000000",
            INIT_06 => X"00003400004300001400003b0000250000790000b400006a00006800004a000067",
            INIT_07 => X"00002700000000002c00002200000000002400000000003400000000004200006a",
            INIT_08 => X"00000000000000004600000000000000000800001700003300000000003c000000",
            INIT_09 => X"000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000000000000000017000000000000000000000000000000000000",
            INIT_0B => X"00002f00001200001700000300000000000000000100002d00000a000016000000",
            INIT_0C => X"00002700003900004200006000000000000200001500000800000000001e000045",
            INIT_0D => X"0000bb00009600008800007e00007e00004800000700006900002600003a00003a",
            INIT_0E => X"0000ab0000a900009e000096000092000066",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

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
            INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
        )
        port map (
            DO => DO,      -- Output data, width defined by READ_WIDTH parameter
            ADDR => bram_addr,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER2_ENTITY1;

MEM_EMPTY_36Kb : if BRAM_NAME = "default" generate
    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
        BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
        DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
        DO_REG => 0,                     -- Optional output register (0 or 1)
        INIT => X"000000000000000000",   -- Initial values on output port
        INIT_FILE => "NONE",
        WRITE_WIDTH => 24, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        READ_WIDTH => 24, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        SRVAL => X"000000000000000000",  -- Set/Reset value for port output
        WRITE_MODE => "WRITE_FIRST"      -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
    )
    port map (
        DO => DO,      -- Output data, width defined by READ_WIDTH parameter
        ADDR => bram_addr,  -- Input address, width defined by read/write port depth
        CLK => CLK,    -- 1-bit input clock
        DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
        EN => EN,      -- 1-bit input RAM enable
        REGCE => '1', -- 1-bit input output register enable
        RST => RST,    -- 1-bit input reset
        WE => bram_wr_en       -- Input write enable, width defined by write port depth
    );
-- End of BRAM_SINGLE_MACRO_inst instantiation
end generate;


end a1;
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
        -- replace ADDR_WIDHT, INPUT_SIZE and ADDRESS_SIZE generics with constants using python
        ADDR_WIDHT      : integer := 10;
        INPUT_SIZE      : integer := 8;
        ADDRESS_SIZE    : integer := 12;

        DEVICE     : string := "7SERIES";
        BRAM_NAME  : string := "default"
        );

    port (
        RST  : in std_logic;
        CLK  : in std_logic;
        EN   : in std_logic;
        WE   : in std_logic;
        DI   : in std_logic_vector(INPUT_SIZE-1 downto 0);
        ADDR : in std_logic_vector(ADDRESS_SIZE-1 downto 0);
        DO   : out std_logic_vector(INPUT_SIZE-1 downto 0)
    );
 end bram_single;

  architecture a1 of bram_single is
    signal bram_wr_en    : std_logic_vector(4-1 downto 0);
    signal bram_addr     : std_logic_vector(9-1 downto 0);

    begin
    bram_wr_en <= (others => '1') when WE = '1' else (others => '0');
    bram_addr <= ADDR(9-1 downto 0);
          

    MEM_IWGHT_LAYER1_ENTITY0 : if BRAM_NAME = "iwght_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00002a0cffffb7b00000300100000073fffff170fffffe76fffff509fffff8e0",
            INIT_01 => X"000016b300000b7a000015ce00000dc2ffffe731ffffe7ef000006a400000521",
            INIT_02 => X"00000a63fffff8a10000232300000bd500002342fffff083fffffd10fffff645",
            INIT_03 => X"00002a49000018e6ffffee1e000007d6ffffddff000017c20000027000000f0a",
            INIT_04 => X"fffffff7ffffffedfffffffaffffffed00000000fffffff2fffffff500000006",
            INIT_05 => X"ffffffdd00000017fffffffdffffffcfffffffd7ffffffef00000005fffffff2",
            INIT_06 => X"ffffffdcffffffebffffffeb00000005ffffffe4fffffffdffffffe900000010",
            INIT_07 => X"fffffff50000000400000008ffffffd1ffffffe2ffffffdc00000002fffffff5",
            INIT_08 => X"0000000cfffffff7ffffffdeffffffeaffffffdcffffffdfffffffd3fffffffe",
            INIT_09 => X"0000001300000009000000140000001cffffffe800000000fffffffbffffffff",
            INIT_0A => X"fffffff5fffffffc00000015fffffff900000004fffffff6ffffffea00000000",
            INIT_0B => X"ffffffeafffffffafffffffcffffffec0000001300000016fffffffaffffffe4",
            INIT_0C => X"000000040000001afffffff20000001cffffffe4ffffffea00000009fffffff9",
            INIT_0D => X"00000015fffffff5ffffffe2ffffffe4fffffff4fffffff300000007ffffffed",
            INIT_0E => X"ffffffd9ffffffe2fffffff1ffffffdb0000000ffffffff000000000fffffff8",
            INIT_0F => X"ffffffdaffffffefffffffdaffffffe2fffffff5fffffff4ffffffd7ffffffd4",
            INIT_10 => X"0000000cffffffe80000001600000000ffffffe4ffffffd0ffffffe3fffffff8",
            INIT_11 => X"000000030000000efffffff200000005ffffffddffffffd0ffffffe6fffffff9",
            INIT_12 => X"0000000d00000017fffffffaffffffe0ffffffdbffffffe3ffffffedfffffff3",
            INIT_13 => X"ffffffdefffffffbffffffe500000013ffffffe700000000ffffffef00000006",
            INIT_14 => X"0000000d0000000a0000000500000012ffffffeaffffffeaffffffe600000004",
            INIT_15 => X"fffffff5ffffffe0ffffffdaffffffdc00000000fffffffcfffffffafffffff9",
            INIT_16 => X"ffffffeefffffff50000001e0000000a000000090000002c0000001500000014",
            INIT_17 => X"ffffffed00000013fffffffe0000000affffffff00000016000000160000000e",
            INIT_18 => X"ffffffe800000000ffffffeafffffffd0000000b000000080000001400000014",
            INIT_19 => X"0000000f0000000d00000015000000260000003000000000fffffff6ffffffee",
            INIT_1A => X"00000029000000120000003600000027ffffffe2ffffffcbffffffd2fffffff1",
            INIT_1B => X"0000000c000000360000000a0000002e0000003c000000040000004f00000057",
            INIT_1C => X"0000001a00000011ffffffd9ffffffd4ffffffdfffffffecfffffff400000009",
            INIT_1D => X"00000004ffffffe6ffffffc1ffffffaf00000007000000000000000affffffed",
            INIT_1E => X"ffffffd7ffffffc3ffffffe0fffffff0fffffffafffffff8000000310000001d",
            INIT_1F => X"0000000ffffffff000000030000000680000003d000000110000005800000014",
            INIT_20 => X"ffffffd4fffffff700000012ffffffe8000000300000000a0000000fffffffde",
            INIT_21 => X"0000006200000060000000590000004e0000003f0000003affffffdd00000001",
            INIT_22 => X"ffffffe6fffffff60000000b0000001200000017000000370000004900000029",
            INIT_23 => X"00000017fffffff80000001100000010ffffffea00000003ffffffe600000006",
            INIT_24 => X"ffffffbfffffffc7ffffffec0000001afffffffbfffffffa00000005fffffffb",
            INIT_25 => X"0000003d0000002100000004000000120000001e000000210000002bffffffee",
            INIT_26 => X"0000000bffffffe3ffffffe9ffffffd2fffffff8000000090000000d00000035",
            INIT_27 => X"ffffffcaffffffc8ffffffdaffffffde0000000200000006000000220000001c",
            INIT_28 => X"ffffffe40000003200000006ffffffbf0000001effffffefffffffc500000009",
            INIT_29 => X"ffffffcefffffff600000004ffffffe20000000200000017ffffffd200000009",
            INIT_2A => X"fffffff40000001bffffffcafffffff20000001f000000110000002cfffffff6",
            INIT_2B => X"ffffffb20000005f00000019ffffffae0000003b0000000700000008fffffff8",
            INIT_2C => X"00000001ffffffd9ffffffd000000012fffffffeffffffd70000005e00000013",
            INIT_2D => X"0000001affffffee0000001efffffffcfffffffbffffffeaffffffe4fffffff3",
            INIT_2E => X"00000056ffffffa400000005000000030000001f00000000ffffffcffffffff7",
            INIT_2F => X"0000001f0000001d00000046ffffff8a0000000b0000008bffffff6300000017",
            INIT_30 => X"ffffffffffffffd400000016fffffff3ffffffea00000014ffffffdd0000000b",
            INIT_31 => X"ffffffdcfffffff4fffffff7ffffffea0000001bffffffe6fffffff000000014",
            INIT_32 => X"0000002200000014ffffffe1fffffff600000017fffffff7ffffffe2fffffff7",
            INIT_33 => X"ffffffed0000000200000062fffffff0ffffffe500000033ffffffeffffffff5",
            INIT_34 => X"00000050ffffff920000001300000045ffffffdbfffffffe000000230000000f",
            INIT_35 => X"ffffff490000000c00000047ffffff730000001c0000001affffffbb00000005",
            INIT_36 => X"fffffffaffffffd2000000120000000e00000054ffffff680000001b00000057",
            INIT_37 => X"0000000300000008fffffff6fffffffd00000019ffffffe9ffffffd6fffffff2",
            INIT_38 => X"0000004200000001ffffffd500000004fffffffdfffffff80000002200000012",
            INIT_39 => X"ffffffd8fffffffbfffffffa0000000dffffffc90000004500000001ffffffaa",
            INIT_3A => X"00000000ffffffddfffffff4ffffffe300000030fffffff40000001c0000001b",
            INIT_3B => X"ffffffdc00000011ffffffebfffffff30000001efffffff800000016fffffffb",
            INIT_3C => X"0000003b0000000bffffffee0000001effffffe6ffffffae0000003600000016",
            INIT_3D => X"ffffffc4ffffff83ffffffe3ffffffdeffffffb50000002dfffffff300000006",
            INIT_3E => X"fffffff50000002400000000ffffffc500000040ffffffefffffffa70000000a",
            INIT_3F => X"ffffffee0000000e0000000affffffe30000001a000000160000001400000042",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000002a00000016fffffffbfffffff0ffffffd900000009ffffffe3ffffffe6",
            INIT_01 => X"0000002900000004fffffffe000000470000001c0000001c0000004c00000047",
            INIT_02 => X"fffffff0fffffff9ffffffe1ffffffdbffffffc800000011ffffffe8ffffffdf",
            INIT_03 => X"00000000ffffffac00000008ffffffc1ffffffcdffffffe6ffffffe20000001f",
            INIT_04 => X"ffffffd70000001600000011ffffffef0000002dffffffefffffffdefffffff9",
            INIT_05 => X"0000000dffffffcaffffffceffffffcdffffffce00000000000000300000000f",
            INIT_06 => X"0000000effffffed0000000bfffffff9ffffffd900000002ffffffc8ffffff94",
            INIT_07 => X"000000500000004d00000042000000160000002800000017000000010000003f",
            INIT_08 => X"0000003900000031ffffffcafffffff20000002a000000490000003c0000004f",
            INIT_09 => X"00000012ffffffe2000000210000002a0000003affffffea000000320000000f",
            INIT_0A => X"ffffffe90000000600000029ffffffdb000000190000001bffffffc40000000c",
            INIT_0B => X"ffffffecffffffd2ffffffaaffffffdcffffff9fffffffc0ffffff8cffffffae",
            INIT_0C => X"00000034ffffffecffffffd50000000afffffff6fffffff0000000150000000f",
            INIT_0D => X"fffffffe0000000bffffffe00000000500000006ffffffe700000018ffffffd5",
            INIT_0E => X"00000025ffffffcc0000002c00000005fffffff4fffffff8fffffffcfffffff2",
            INIT_0F => X"00000061ffffffdaffffffd2000000440000000c00000027ffffffc00000002f",
            INIT_10 => X"ffffffcaffffffe5fffffff000000003ffffffc80000004affffffe5ffffffac",
            INIT_11 => X"ffffffee0000000cfffffffd0000000effffffc40000001dffffffd5ffffffcc",
            INIT_12 => X"ffffffbb0000001bffffffc500000019fffffff1ffffffd80000002e0000000c",
            INIT_13 => X"0000002b0000005fffffff6a0000003100000068ffffff380000003900000019",
            INIT_14 => X"ffffffc7000000390000000f0000000500000033ffffffe60000001900000005",
            INIT_15 => X"00000007ffffffccffffffddfffffffbfffffffbfffffff30000000300000000",
            INIT_16 => X"00000029fffffff100000000fffffff8ffffffeefffffff70000000fffffffc4",
            INIT_17 => X"ffffffe10000003effffffcbffffffe90000002cffffffd1ffffffebfffffffc",
            INIT_18 => X"ffffffa50000001e00000023ffffffda0000001dffffffd300000039ffffffbf",
            INIT_19 => X"0000005400000012ffffffd00000001c0000005bffffff780000002a0000002a",
            INIT_1A => X"fffffff300000004000000200000007fffffff67000000590000004effffff86",
            INIT_1B => X"000000160000000dfffffffa000000030000000f00000017ffffffe20000001e",
            INIT_1C => X"ffffffdeffffffe70000000000000031ffffffc40000001cfffffffeffffffe8",
            INIT_1D => X"ffffffac0000004c00000009ffffff8100000060ffffffd3ffffffc900000033",
            INIT_1E => X"0000000400000007ffffffecfffffff1fffffff0fffffff1ffffffef00000013",
            INIT_1F => X"ffffffdbffffffe0ffffffffffffffc600000019fffffff400000010fffffff9",
            INIT_20 => X"0000001100000010ffffffe900000023fffffffa00000011ffffffc5ffffffbe",
            INIT_21 => X"000000080000000a0000000c000000050000002f00000021000000010000000f",
            INIT_22 => X"ffffff69ffffff88ffffff90ffffff91ffffffedfffffffd0000003a00000011",
            INIT_23 => X"fffffff90000000c00000022ffffff94ffffff7dffffff7dffffff8bffffff23",
            INIT_24 => X"000000270000000effffffe10000001700000038ffffffe6fffffffa0000001a",
            INIT_25 => X"0000000dffffffe80000000ffffffffd0000000900000023fffffffd00000012",
            INIT_26 => X"00000009000000120000000f0000001fffffffecffffffef0000001500000016",
            INIT_27 => X"ffffffa5ffffffaeffffffa8ffffffb1ffffffc5ffffffebffffffd600000006",
            INIT_28 => X"fffffffeffffffdbfffffff600000017ffffffe30000000affffffdeffffff9b",
            INIT_29 => X"ffffff84ffffff87ffffffc3fffffff7ffffffb7ffffffe700000015fffffff0",
            INIT_2A => X"fffffffffffffffe0000001fffffffed0000000fffffff8effffff94ffffffbc",
            INIT_2B => X"000000100000000700000023ffffffe30000000b00000001ffffffe700000020",
            INIT_2C => X"ffffffa9ffffff7effffff8f000000020000002f000000140000000700000028",
            INIT_2D => X"00000002fffffff7ffffffe3ffffffc8ffffffadffffffb0ffffff70ffffff71",
            INIT_2E => X"fffffff8000000010000000c0000001cffffffcdffffffe500000012ffffffe2",
            INIT_2F => X"0000002200000019000000130000000a0000001e00000000ffffffee0000000d",
            INIT_30 => X"0000003b00000026fffffff00000001dfffffff7fffffffc0000002800000016",
            INIT_31 => X"ffffffd50000000dfffffff3fffffffdffffffdd0000002f0000001b00000017",
            INIT_32 => X"00000008000000040000002a000000280000001000000032ffffffd3ffffffd9",
            INIT_33 => X"fffffff70000001dffffffea0000002f0000002c0000000c0000000300000014",
            INIT_34 => X"00000030ffffffd700000042fffffffdfffffff000000018fffffffd0000000d",
            INIT_35 => X"fffffff2ffffffe3ffffffc30000000d0000000a0000001b0000002100000030",
            INIT_36 => X"00000006ffffffea0000000b0000003f00000044fffffffffffffffbffffffef",
            INIT_37 => X"ffffffac0000000f00000035000000190000002f000000190000002100000003",
            INIT_38 => X"00000013000000270000001d00000001fffffffcfffffffcffffffaeffffff9b",
            INIT_39 => X"0000003cfffffff1ffffffe600000002fffffff7ffffffddffffffdbffffffec",
            INIT_3A => X"0000001900000000fffffff3fffffffb0000000f000000080000002b00000016",
            INIT_3B => X"ffffffe700000016fffffffa0000002800000025000000330000000dffffffdf",
            INIT_3C => X"0000000f00000005000000060000001000000037ffffffcf0000000dfffffffd",
            INIT_3D => X"000000270000003600000026000000180000000effffffcdffffffcd0000000e",
            INIT_3E => X"ffffffea0000000a00000016ffffffe2ffffffbeffffffe900000006fffffff9",
            INIT_3F => X"00000009ffffffc5ffffffdfffffffd600000002ffffffd8ffffffe50000000f",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffd600000029000000180000002d0000001f0000001c00000020fffffff0",
            INIT_01 => X"ffffffc4ffffffdeffffffed00000026ffffffd5ffffffcd0000000900000006",
            INIT_02 => X"0000001f00000002ffffffe9ffffffdefffffff6ffffffc7ffffffdeffffffdd",
            INIT_03 => X"ffffffedffffffecffffffd8ffffffd600000000ffffffd7ffffffee00000016",
            INIT_04 => X"fffffff5fffffffefffffff90000001c00000001fffffff100000002ffffffd3",
            INIT_05 => X"fffffff8fffffff4fffffffbffffffff000000020000000a00000000fffffff7",
            INIT_06 => X"0000003cfffffff60000002a0000002600000006ffffffefffffffdc00000000",
            INIT_07 => X"fffffff70000000afffffff5000000270000004800000044000000130000003b",
            INIT_08 => X"000000260000000000000007000000260000002400000012fffffffffffffff5",
            INIT_09 => X"ffffffcd0000000cfffffff3000000160000002e000000030000001800000030",
            INIT_0A => X"ffffff6bffffffa0ffffff9dffffff82ffffffaeffffffc1ffffffaaffffff92",
            INIT_0B => X"00000006ffffffcfffffffe10000001e00000004fffffff4ffffffda00000023",
            INIT_0C => X"00000015ffffffdffffffff1fffffff80000000bffffffdf00000000ffffffef",
            INIT_0D => X"0000000c0000003d0000002100000001000000200000002bffffffde0000001b",
            INIT_0E => X"fffffffffffffff9000000200000000000000022000000210000001e00000002",
            INIT_0F => X"00000008fffffff100000015fffffffbffffffec00000000ffffffff00000002",
            INIT_10 => X"ffffffe0ffffffd0fffffff20000000efffffff50000000200000020ffffffe2",
            INIT_11 => X"fffffff0ffffffd0ffffffd8ffffffd8ffffffc8ffffffd1ffffffdf00000013",
            INIT_12 => X"000000000000000dfffffff8000000080000000bffffffe2fffffff4ffffffe1",
            INIT_13 => X"fffffffcffffffeaffffffecffffffd0fffffff8fffffffbffffffd4fffffff2",
            INIT_14 => X"ffffffca00000000fffffff5fffffffbfffffff1000000150000000d00000019",
            INIT_15 => X"0000001cfffffff90000000cfffffff80000002b0000001bffffffe8ffffffb6",
            INIT_16 => X"00000020fffffff1fffffff6ffffffe4000000010000000900000025fffffff0",
            INIT_17 => X"00000020000000270000001000000012fffffffc00000015ffffffe7ffffffe5",
            INIT_18 => X"ffffff8dffffffd6ffffffc60000001500000014000000120000000f00000012",
            INIT_19 => X"000000220000000200000023000000040000000fffffffd200000021ffffffb7",
            INIT_1A => X"fffffff90000001affffffe5ffffffecfffffff900000012fffffffe00000006",
            INIT_1B => X"0000001d0000001100000016fffffff30000001d0000001affffffef00000014",
            INIT_1C => X"0000000f0000000e000000150000002000000016000000260000000c0000000c",
            INIT_1D => X"0000002e0000000afffffff90000000e000000050000000c0000002600000027",
            INIT_1E => X"00000003ffffffebffffffd70000000affffffff0000001a0000002c00000000",
            INIT_1F => X"000000210000003d00000049000000180000003ffffffffeffffffd0ffffffe0",
            INIT_20 => X"fffffff8ffffffd3fffffff6ffffffd7ffffffc400000029000000390000003f",
            INIT_21 => X"ffffffeaffffffebffffffde00000031fffffffd00000010fffffff3fffffff3",
            INIT_22 => X"ffffffc4ffffffd30000000d0000001affffffe5fffffff0ffffffd8ffffffaa",
            INIT_23 => X"00000013000000230000002800000029ffffffe4fffffff8fffffff6ffffffd2",
            INIT_24 => X"00000018ffffffdeffffffbdffffffd1fffffff1ffffffe6fffffff4fffffff3",
            INIT_25 => X"fffffff8ffffffcbffffffe4ffffffcefffffff1fffffffdfffffff10000001e",
            INIT_26 => X"00000024fffffff7ffffffe8fffffffbffffffedffffffc5ffffffe80000002e",
            INIT_27 => X"000000380000000a0000001d0000002afffffff500000004fffffff700000004",
            INIT_28 => X"fffffffdffffffebfffffff100000014000000130000001cfffffffdfffffff2",
            INIT_29 => X"0000002500000026fffffff70000000f0000003400000004ffffffed00000002",
            INIT_2A => X"0000006500000002000000060000000c000000070000001c0000001cfffffffb",
            INIT_2B => X"ffffffddfffffff7ffffffe00000000600000017000000350000002a00000038",
            INIT_2C => X"ffffffcbffffffddffffffcafffffff9ffffffe5ffffffc3ffffffddffffffe8",
            INIT_2D => X"00000035ffffff9cffffff96fffffff5ffffff62ffffff78ffffffa7ffffffbc",
            INIT_2E => X"ffffffd7ffffffbfffffffdcffffffe9ffffffbdffffffc7000000050000003b",
            INIT_2F => X"00000023fffffff7ffffffdc0000001d0000000400000010ffffffc70000002e",
            INIT_30 => X"fffffffaffffffe9ffffffe20000001900000000000000080000000afffffff5",
            INIT_31 => X"0000001e0000001200000019fffffff70000001e000000000000000300000011",
            INIT_32 => X"fffffff8fffffffa0000001a0000000efffffff6000000230000001b0000001c",
            INIT_33 => X"fffffff2ffffffc1ffffffa1ffffffb10000000f0000001b0000002bfffffff2",
            INIT_34 => X"ffffffea0000000e00000005ffffffb4ffffffccfffffffaffffffa5ffffffc1",
            INIT_35 => X"00000008ffffffe500000030000000370000000a0000003e0000003c00000040",
            INIT_36 => X"ffffffe7ffffffed00000014ffffffebfffffff7ffffffe9fffffff100000016",
            INIT_37 => X"00000028000000290000002b00000008000000050000002c00000001fffffff8",
            INIT_38 => X"00000018fffffffbfffffffe0000000000000001ffffffeb00000005ffffffe8",
            INIT_39 => X"ffffffe70000004b0000003300000011fffffff4ffffffe400000021fffffffb",
            INIT_3A => X"0000001c0000000a000000240000001d000000110000002900000022fffffff5",
            INIT_3B => X"0000001e0000000500000034ffffffedfffffff9fffffff3ffffffe7ffffffe6",
            INIT_3C => X"00000012000000180000001dfffffffbffffffe1ffffffe6fffffff1ffffffed",
            INIT_3D => X"ffffffe10000000d00000013000000120000001b000000230000001e00000013",
            INIT_3E => X"000000010000003cffffffce0000000d00000013fffffffe0000002400000014",
            INIT_3F => X"00000016000000320000003500000005000000040000003c0000001dffffffe7",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000250000001b0000001b0000003e0000003200000042ffffffed00000000",
            INIT_01 => X"0000003a0000002b0000002a00000062000000410000001500000020fffffffc",
            INIT_02 => X"ffffffe800000017fffffffa0000000d00000009fffffffd0000001800000044",
            INIT_03 => X"0000004e0000005200000036000000000000001900000007ffffffcaffffffcc",
            INIT_04 => X"000000230000000000000002fffffffbffffffef000000410000003800000014",
            INIT_05 => X"00000002000000140000001e0000001bfffffff900000011fffffffd0000002a",
            INIT_06 => X"fffffff2fffffff00000000a00000009ffffffe2fffffff8ffffffef00000004",
            INIT_07 => X"00000013fffffff4ffffffc9fffffff200000019ffffffd4ffffffde00000010",
            INIT_08 => X"fffffffafffffffdffffffd3ffffffd9fffffffa0000000afffffff9fffffffc",
            INIT_09 => X"fffffff800000009fffffff7000000000000001efffffffb0000002300000009",
            INIT_0A => X"00000013fffffff70000002b00000008000000040000002100000000ffffffea",
            INIT_0B => X"fffffffb0000001e00000014ffffffe400000017fffffffd0000001f00000003",
            INIT_0C => X"ffffffea00000010ffffffdc000000160000000700000005000000350000002d",
            INIT_0D => X"ffffffdcffffffd50000002a0000001afffffff6fffffffc00000013ffffffe1",
            INIT_0E => X"ffffff4affffffe5ffffffd8ffffffae00000015ffffffbbffffffcefffffff0",
            INIT_0F => X"ffffffe40000000f00000000ffffff65ffffff73ffffff74ffffff63ffffff45",
            INIT_10 => X"0000001300000031ffffffe90000001afffffff600000000000000040000000e",
            INIT_11 => X"fffffff7ffffffda0000001800000037ffffffe7000000220000005bffffffc9",
            INIT_12 => X"000000060000002000000051ffffffd80000000300000028ffffffcbfffffffa",
            INIT_13 => X"0000002d0000004bfffffffa0000001100000002ffffffc5ffffffd7ffffffe2",
            INIT_14 => X"ffffffcb000000320000001effffffdb000000370000002bffffffee0000001d",
            INIT_15 => X"ffffffd3ffffffc9ffffffc9ffffffccffffff7effffffc10000000e00000001",
            INIT_16 => X"000000200000000b000000060000000100000016ffffffebffffffc6ffffffcb",
            INIT_17 => X"0000003f0000000c0000000500000032000000190000002dfffffff500000013",
            INIT_18 => X"000000220000000cfffffffa0000001500000037000000330000001b00000026",
            INIT_19 => X"0000002500000018fffffff3ffffffc3ffffffcbffffffd1ffffff99ffffff82",
            INIT_1A => X"00000002ffffffcdffffffe90000000100000019fffffffb00000018fffffff8",
            INIT_1B => X"0000001a00000019000000180000001900000015fffffff800000027ffffffd9",
            INIT_1C => X"fffffffe00000012ffffffeeffffffddffffffe6fffffffaffffffe0ffffffec",
            INIT_1D => X"fffffff8ffffffd90000000c0000000cffffffdf00000011fffffff000000018",
            INIT_1E => X"0000001100000005fffffffc00000012fffffff400000005ffffffdcfffffffb",
            INIT_1F => X"0000000000000000fffffff900000011ffffffff00000016ffffffe1ffffffee",
            INIT_20 => X"ffffffcdffffffa3ffffff9fffffffceffffffecffffffe2fffffff60000000e",
            INIT_21 => X"0000001f0000000f0000000cffffffffffffffec00000012ffffffbfffffffc8",
            INIT_22 => X"fffffffeffffffee00000018fffffff90000001300000007000000140000000a",
            INIT_23 => X"ffffffaf00000012fffffff1ffffffcfffffffefffffffdbffffffdefffffffc",
            INIT_24 => X"ffffffd6ffffffcaffffffeeffffffddffffffb0ffffffafffffffd2ffffffd0",
            INIT_25 => X"00000013fffffff4ffffffe9ffffffbdffffffefffffff97ffffffa8ffffff96",
            INIT_26 => X"0000001f0000002300000017fffffffe00000001fffffffd00000006fffffff0",
            INIT_27 => X"ffffffc5ffffffb5ffffffc2ffffff95ffffff63ffffffad0000000600000023",
            INIT_28 => X"00000008ffffffe1fffffff80000001400000017ffffffdeffffffe2ffffffc4",
            INIT_29 => X"00000012000000030000001e0000000bfffffff0000000090000000afffffffb",
            INIT_2A => X"ffffffb100000000fffffff1000000110000000e00000017fffffff0fffffff7",
            INIT_2B => X"fffffffbffffffec00000014000000280000001fffffffefffffffcfffffffe8",
            INIT_2C => X"fffffff3ffffffdefffffffbffffffe3000000080000000f0000000dfffffff3",
            INIT_2D => X"fffffff700000028fffffffdffffffcd0000000bffffffefffffffd0ffffffd7",
            INIT_2E => X"00000023000000010000001cfffffffeffffffd9000000010000000dffffffcd",
            INIT_2F => X"0000000affffffecffffffe00000000efffffff9ffffffef000000100000002a",
            INIT_30 => X"fffffff5ffffffdfffffffff00000011fffffff200000003ffffffddfffffffb",
            INIT_31 => X"fffffff2ffffffed000000160000000300000003000000100000000a0000001b",
            INIT_32 => X"0000006a0000002c000000140000003dfffffff1fffffff1fffffffd00000003",
            INIT_33 => X"ffffffb6ffffffc6ffffffbb000000750000004d000000690000005c0000005f",
            INIT_34 => X"ffffffd2ffffffc0000000290000001e00000020fffffffbfffffff8ffffffae",
            INIT_35 => X"ffffff9bffffffe9ffffffcbffffffd3ffffffc6ffffff95ffffffa9ffffffc3",
            INIT_36 => X"00000013000000270000001bffffffb5ffffffb5ffffffbdffffffbdffffffa7",
            INIT_37 => X"0000001effffffe900000014000000440000002cffffffe2000000070000002b",
            INIT_38 => X"0000000000000001fffffff100000000000000110000001efffffff100000002",
            INIT_39 => X"00000009000000070000000200000005000000190000001c0000000fffffffee",
            INIT_3A => X"ffffffec00000007000000190000000300000029ffffffd1fffffff900000010",
            INIT_3B => X"fffffff5000000020000001e0000000cfffffffeffffffd8fffffffd0000000b",
            INIT_3C => X"fffffffdfffffff7fffffffc00000007ffffffe20000000c000000150000000e",
            INIT_3D => X"fffffff2ffffffcf000000320000003b00000060000000280000003a0000004f",
            INIT_3E => X"fffffffa00000038fffffffffffffffbffffffed00000018fffffffbfffffff4",
            INIT_3F => X"0000000800000016fffffff6fffffffbffffffe6fffffff8fffffff6ffffffe3",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffff0fffffffefffffffa0000000700000018fffffffdfffffff000000006",
            INIT_01 => X"ffffffb600000006fffffffaffffffe10000002e00000000ffffffdffffffff0",
            INIT_02 => X"ffffffecffffffe1ffffffdf0000001ffffffffefffffffdfffffff2ffffffdb",
            INIT_03 => X"000000080000001e0000001f0000000600000019000000010000000900000000",
            INIT_04 => X"fffffef2ffffffe3ffffff56ffffff63ffffffeb00000005fffffffe00000005",
            INIT_05 => X"ffffffed0000002b0000003cffffff2fffffff1effffff33ffffff1bfffffeb6",
            INIT_06 => X"fffffffd0000001900000000000000270000003bfffffff30000001900000029",
            INIT_07 => X"0000001effffffea0000000c00000011fffffff20000000300000039fffffff8",
            INIT_08 => X"0000002a0000001900000051fffffffb000000040000000f00000000fffffff6",
            INIT_09 => X"fffffff5000000130000002cffffffef0000002d00000010ffffffd700000000",
            INIT_0A => X"fffffffd0000001ffffffff5ffffffeb0000000b0000000d00000024fffffff3",
            INIT_0B => X"ffffffdeffffffe3ffffffddffffffeaffffffd3fffffff0ffffffff0000000f",
            INIT_0C => X"fffffffbffffffde00000001fffffffdfffffffefffffffaffffffc7ffffffe6",
            INIT_0D => X"00000017ffffffea0000001e00000024ffffffe4ffffffd7fffffff20000001c",
            INIT_0E => X"0000000effffff7cffffff88fffffff8fffffffc00000006ffffffdcfffffff7",
            INIT_0F => X"000000030000001fffffff84ffffff38ffffff6bffffff5dffffff3affffff12",
            INIT_10 => X"ffffffcdffffffecfffffffeffffffed000000010000002100000011fffffff8",
            INIT_11 => X"00000013ffffffea00000000fffffff9ffffffe5ffffffd1fffffff0fffffff5",
            INIT_12 => X"00000033000000300000001d00000016ffffffe7fffffff60000002e00000033",
            INIT_13 => X"00000016ffffffdf00000001000000290000001afffffff40000002f0000000b",
            INIT_14 => X"ffffffe9ffffffd0fffffffb000000150000000ffffffffafffffff4fffffff4",
            INIT_15 => X"00000003fffffff9fffffffdffffffecffffffffffffffd0ffffffc8fffffff9",
            INIT_16 => X"fffffff6fffffff3ffffffecffffffda00000009ffffffdcffffffe5ffffffed",
            INIT_17 => X"ffffffe0ffffffe3ffffffe600000001ffffffebffffffd100000007ffffffb0",
            INIT_18 => X"ffffffb3ffffffce00000001ffffffe7ffffffe5fffffff2fffffffeffffffee",
            INIT_19 => X"ffffff52ffffffbeffffff8dffffff92ffffffc3ffffffaeffffffc4ffffffab",
            INIT_1A => X"ffffff90ffffff75ffffff94ffffffb4ffffff75ffffff83ffffffd6ffffffa2",
            INIT_1B => X"ffffffc7ffffffc2ffffffd6ffffffe5ffffffcaffffffdfffffffd9ffffffd3",
            INIT_1C => X"000000140000001f0000001f0000002700000001000000250000002bffffffc4",
            INIT_1D => X"ffffffeafffffff9ffffffeb00000010ffffffee000000210000000100000017",
            INIT_1E => X"000000000000000700000027000000140000000b00000007ffffffe4fffffff1",
            INIT_1F => X"000000160000000e0000003ffffffffdffffffff000000230000001c0000000a",
            INIT_20 => X"ffffffc00000001cffffffe90000003f0000003600000028000000280000004a",
            INIT_21 => X"00000008ffffffdb0000000f0000000c0000001900000001ffffffecffffffcb",
            INIT_22 => X"00000026ffffffe5ffffffebffffffcefffffffeffffffdd0000000000000010",
            INIT_23 => X"000000730000007e0000004d0000006900000065000000380000000d0000001d",
            INIT_24 => X"ffffffe3ffffffeafffffffe00000012fffffffc000000070000002b00000028",
            INIT_25 => X"00000036000000240000002000000019ffffffb9ffffff8dffffffbeffffffd5",
            INIT_26 => X"fffffff1fffffff400000016000000070000001900000011000000460000002d",
            INIT_27 => X"0000001e00000008ffffffe8ffffffbbffffffc8fffffff0fffffff4ffffffdc",
            INIT_28 => X"0000000e000000220000001d0000004100000025000000200000001affffffe6",
            INIT_29 => X"000000200000005000000036ffffffcffffffff00000002a0000001b00000017",
            INIT_2A => X"000000480000004fffffffd7ffffffaaffffffd8fffffff8ffffffed00000012",
            INIT_2B => X"00000062ffffffd9ffffffa2ffffffd000000004ffffffe9ffffffec00000023",
            INIT_2C => X"ffffffabffffff8effffffb7fffffffa0000001d000000040000004d0000007d",
            INIT_2D => X"ffffffdaffffffbf0000001a000000170000001d000000260000003200000042",
            INIT_2E => X"0000000f000000150000001600000013fffffff6ffffffdaffffffe0ffffffea",
            INIT_2F => X"ffffffff000000100000000effffffc1ffffffb7ffffffc00000002400000004",
            INIT_30 => X"0000000bfffffff1ffffffb5ffffffa6ffffffdb00000021000000290000002a",
            INIT_31 => X"ffffffe800000011fffffff7fffffffe00000031000000460000004100000007",
            INIT_32 => X"fffffff30000000b00000025ffffffe5ffffffd8fffffff9ffffffe1fffffff5",
            INIT_33 => X"00000004fffffffdfffffffe000000000000002b000000110000001500000016",
            INIT_34 => X"00000019ffffffc3ffffffddffffffe20000001900000010fffffffa00000033",
            INIT_35 => X"ffffffc0ffffffcbffffffdd000000040000000d00000010000000280000002f",
            INIT_36 => X"ffffffe7ffffffcafffffffe00000000fffffff8ffffffefffffffe9fffffffb",
            INIT_37 => X"00000024000000060000003700000014ffffffdffffffff30000000affffffdc",
            INIT_38 => X"0000002efffffff3000000010000003600000023fffffff20000002500000003",
            INIT_39 => X"00000010000000000000001a0000002a00000023fffffff900000002fffffff2",
            INIT_3A => X"00000036fffffffe000000130000002e0000000cfffffffa0000001400000016",
            INIT_3B => X"ffffffe6ffffffe3ffffffdcfffffff500000020000000060000000800000001",
            INIT_3C => X"0000000ffffffffbfffffff8fffffff7fffffff100000003ffffffefffffffec",
            INIT_3D => X"0000000b000000380000001200000027000000130000000a0000000100000010",
            INIT_3E => X"000000490000003a000000420000001f0000005a00000060ffffffe80000001f",
            INIT_3F => X"00000016000000260000002c0000003d00000022fffffff40000001700000021",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffe3000000240000000cfffffff50000002800000000ffffffe90000001a",
            INIT_01 => X"ffffffc7000000260000001bffffffe9fffffff700000015000000040000000e",
            INIT_02 => X"0000002b0000001f0000001cfffffffd0000001effffffd8ffffffdbfffffff7",
            INIT_03 => X"fffffff200000023fffffffbffffffd100000030000000130000001d00000028",
            INIT_04 => X"ffffffe500000010fffffff1ffffffe3ffffffd7ffffffdaffffffdcffffffe8",
            INIT_05 => X"0000001dfffffff8fffffffc0000001100000021000000080000000500000028",
            INIT_06 => X"ffffffc6ffffffe7fffffff0ffffffeafffffff3ffffffef0000001affffffea",
            INIT_07 => X"ffffffa8ffffffcaffffffd3ffffffcdffffffd3ffffffb5ffffffb8ffffffbe",
            INIT_08 => X"000000330000001900000020000000360000003d000000110000002d00000031",
            INIT_09 => X"00000063000000000000000f00000043000000520000002d0000004500000021",
            INIT_0A => X"00000057fffffff6000000020000001500000011000000360000001500000025",
            INIT_0B => X"ffffff8bffffffa7ffffff96fffffff2ffffffe4000000370000002a0000000e",
            INIT_0C => X"ffffffbb00000012ffffffe3ffffffcb00000018ffffffa8ffffffbfffffffa6",
            INIT_0D => X"ffffffd70000000dffffffe700000012ffffffffffffffe600000029ffffffe0",
            INIT_0E => X"ffffffbfffffffb70000000bfffffffbffffffcfffffffea00000004ffffffe1",
            INIT_0F => X"ffffffe200000003000000030000000a0000000effffffcaffffffe3ffffffb1",
            INIT_10 => X"0000002100000029ffffffe9000000200000000afffffff4ffffffe7fffffffe",
            INIT_11 => X"0000000affffffdf0000000c00000011fffffff1ffffffe6fffffff4ffffffe5",
            INIT_12 => X"ffffffbeffffffd2ffffffc8ffffffdbffffffcd00000001fffffff000000030",
            INIT_13 => X"00000010fffffffa0000000f000000060000003dffffffcefffffffeffffffe1",
            INIT_14 => X"ffffffd20000000f000000270000001b0000002300000032fffffff5fffffffd",
            INIT_15 => X"0000000400000001000000080000003cfffffffaffffffef000000190000000e",
            INIT_16 => X"0000002bffffffebffffffff0000001a0000003e00000004000000200000002c",
            INIT_17 => X"00000023000000090000002200000031fffffff500000049fffffffaffffffd9",
            INIT_18 => X"000000400000002efffffff8ffffffe100000022000000240000000ffffffff0",
            INIT_19 => X"00000030000000200000002c0000004e000000440000004d0000003f00000056",
            INIT_1A => X"000000200000000bfffffffc000000150000000fffffffe7fffffffa0000001c",
            INIT_1B => X"ffffffcbffffffdcffffffbaffffffa8ffffffc9ffffffc4fffffff9ffffffed",
            INIT_1C => X"00000002000000000000001b0000000effffffe4fffffff2ffffffcdffffffbd",
            INIT_1D => X"0000001f0000001600000003ffffffebfffffff500000009000000000000000b",
            INIT_1E => X"ffffffe8fffffffbfffffffbffffffedfffffff5000000080000002500000000",
            INIT_1F => X"fffffffffffffffd00000019000000350000001bffffffddffffffdeffffffeb",
            INIT_20 => X"0000000ffffffff900000026000000290000001800000009000000030000001c",
            INIT_21 => X"ffffffdeffffffea0000001500000019ffffffe7fffffff30000000bffffffe7",
            INIT_22 => X"ffffffccffffffb6ffffffd6ffffffe8fffffff4ffffffd9ffffffc9fffffff5",
            INIT_23 => X"ffffffe7fffffffd00000007ffffffdbffffffdeffffffff0000000afffffff8",
            INIT_24 => X"00000010ffffffef000000110000001300000012fffffff700000019fffffff7",
            INIT_25 => X"00000009fffffffd0000000ffffffffdffffffe4fffffffb0000001700000007",
            INIT_26 => X"ffffffcefffffffaffffffe0ffffffd7ffffffdd00000007ffffffee00000004",
            INIT_27 => X"00000010fffffff00000001afffffffafffffff7fffffff9ffffffe4ffffffec",
            INIT_28 => X"ffffffc7ffffffc9ffffffc10000001700000024ffffffe1ffffffe80000000a",
            INIT_29 => X"000000160000001cffffffcfffffffbcffffffc600000009ffffffb9ffffffcf",
            INIT_2A => X"ffffffe600000002000000010000001effffffef000000190000001e0000000f",
            INIT_2B => X"ffffffffffffffdffffffff2ffffffef000000040000000affffffe000000006",
            INIT_2C => X"00000035fffffff2000000120000000200000019000000190000001400000005",
            INIT_2D => X"fffffff50000000affffffd7ffffffd30000000300000000ffffffec00000022",
            INIT_2E => X"ffffffd1ffffffdfffffffd2fffffff7ffffffc2ffffffc000000003ffffffeb",
            INIT_2F => X"ffffffe4ffffffe3ffffffd2ffffffefffffffdaffffffe6fffffff600000005",
            INIT_30 => X"fffffff8fffffff80000001500000025fffffff4ffffffe9ffffffe6ffffffec",
            INIT_31 => X"00000014000000210000000d00000002fffffffafffffff600000023fffffff9",
            INIT_32 => X"ffffffe3ffffffed000000100000000800000021fffffff10000000bfffffffc",
            INIT_33 => X"ffffffe9ffffffddfffffff300000012ffffffe9ffffffcaffffffc5ffffffdf",
            INIT_34 => X"ffffffe3ffffffdeffffffedffffffe6ffffffe0ffffffe3ffffffd2fffffff7",
            INIT_35 => X"fffffffb0000001bfffffff1fffffff500000004fffffffb0000000f0000000f",
            INIT_36 => X"fffffff7000000050000000600000006ffffffee0000000300000013ffffffe0",
            INIT_37 => X"0000001a000000190000000e0000000100000023000000080000000200000015",
            INIT_38 => X"ffffffe3fffffff300000008fffffffa00000007000000310000000cfffffffe",
            INIT_39 => X"000000060000003e0000002c00000004ffffffdbffffffdafffffffdffffffd5",
            INIT_3A => X"000000050000000afffffff40000001600000035000000080000003f0000000f",
            INIT_3B => X"ffffffddffffffe60000000bffffffefffffffd000000000ffffffdbfffffff5",
            INIT_3C => X"0000000efffffff8ffffffe70000001d00000008fffffff50000000b0000000e",
            INIT_3D => X"0000001b0000002b00000010000000370000001e000000100000002d00000036",
            INIT_3E => X"fffffff0ffffffff000000190000000800000017000000070000000bffffffe4",
            INIT_3F => X"fffffffeffffffc5ffffffc5ffffffc3ffffffeb00000000000000110000000c",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffebfffffff5ffffffd7fffffff7ffffffe70000000effffffdbffffffd1",
            INIT_01 => X"ffffffdb0000000800000001000000140000001bfffffff0ffffffd7ffffffd3",
            INIT_02 => X"ffffffdaffffffefffffffd0ffffffed0000000b0000000cfffffff9ffffffe8",
            INIT_03 => X"0000001cffffffeafffffff20000000bffffffc1ffffffd8ffffffe5fffffff8",
            INIT_04 => X"00000000ffffffe7000000250000000d00000022000000280000001700000015",
            INIT_05 => X"fffffff40000000afffffff400000006ffffffff00000014ffffffe200000004",
            INIT_06 => X"fffffff5ffffffe7ffffffe2ffffffe8fffffff000000006ffffffe6ffffffd4",
            INIT_07 => X"ffffffce000000140000000bffffffecfffffff700000001fffffffc00000035",
            INIT_08 => X"fffffff30000000900000018ffffffef00000006000000110000001cfffffffc",
            INIT_09 => X"fffffff4fffffff6000000280000001b000000090000000effffffec00000008",
            INIT_0A => X"0000000000000000fffffff2fffffff8fffffffbffffffffffffffed0000000d",
            INIT_0B => X"fffffff600000010fffffff000000000ffffffcbffffffc4fffffff8ffffffbe",
            INIT_0C => X"ffffffcfffffffdcffffffd500000007000000280000001800000006fffffff7",
            INIT_0D => X"00000007fffffff1ffffffceffffffc9ffffffcbffffffd0fffffff0ffffffc2",
            INIT_0E => X"ffffffdcffffffd9fffffff8fffffffcfffffff9ffffffdcffffffe500000008",
            INIT_0F => X"0000000d0000001b0000000e0000002cfffffffeffffffed0000000200000008",
            INIT_10 => X"fffffff500000004ffffffff00000017ffffffdeffffffdfffffffe1fffffff9",
            INIT_11 => X"ffffffeaffffffee0000001dfffffff1ffffffe400000006fffffff800000017",
            INIT_12 => X"fffffff30000000c00000009ffffffe20000001f00000037ffffffefffffffe9",
            INIT_13 => X"0000001f0000000c000000200000001a000000390000000c0000001000000000",
            INIT_14 => X"ffffffeffffffff30000000b0000001bfffffffa0000001c00000026fffffffb",
            INIT_15 => X"ffffffdbfffffff1ffffffeefffffff70000000a00000014fffffff4fffffff2",
            INIT_16 => X"ffffffcc000000200000000500000001ffffffe9ffffffd5ffffffc4ffffffdf",
            INIT_17 => X"ffffffceffffffb70000001f00000000ffffffc0ffffffe100000000ffffffd1",
            INIT_18 => X"0000003c000000360000003b00000003ffffffa5ffffffd4ffffffbeffffffb9",
            INIT_19 => X"fffffffefffffff3fffffff1fffffff100000001fffffff1fffffff7ffffffe3",
            INIT_1A => X"ffffffed00000000000000270000000b00000009000000300000001a0000001c",
            INIT_1B => X"fffffff9000000240000003500000026000000100000000afffffff20000000e",
            INIT_1C => X"0000000500000009ffffffe0ffffffec0000000afffffff800000019ffffffe7",
            INIT_1D => X"00000001ffffffde00000001fffffffaffffffe6fffffff8fffffff2ffffffe4",
            INIT_1E => X"ffffffe80000000300000015ffffffe0000000170000000bffffffa7ffffffdb",
            INIT_1F => X"fffffff200000017fffffff2ffffffe700000010fffffffd0000001400000019",
            INIT_20 => X"ffffff9d0000000efffffff00000001fffffffe3fffffff1fffffffd00000001",
            INIT_21 => X"fffffffd00000006ffffffebfffffff000000006ffffffccffffffef00000000",
            INIT_22 => X"000000170000000b0000000b00000013fffffff4ffffffdf00000007ffffffe2",
            INIT_23 => X"0000000e00000002ffffffdcfffffff40000000400000018000000300000000d",
            INIT_24 => X"000000010000002a00000050fffffffe0000000b00000022ffffff8bfffffffa",
            INIT_25 => X"ffffffea0000001afffffff5ffffffeafffffff500000007000000390000003b",
            INIT_26 => X"fffffff0ffffffe400000015ffffffdd00000019000000200000002efffffffc",
            INIT_27 => X"000000290000001300000014000000070000000d00000005fffffffbffffffe0",
            INIT_28 => X"0000002d000000420000003e00000007fffffff6000000560000003c00000008",
            INIT_29 => X"00000014000000570000003e0000003d00000037000000600000004c00000033",
            INIT_2A => X"0000001b0000002b000000110000006b00000041000000450000001500000047",
            INIT_2B => X"fffffff90000001c00000024000000070000001500000039000000240000001f",
            INIT_2C => X"00000006fffffffdffffffe20000000bfffffffffffffff10000001800000015",
            INIT_2D => X"00000001ffffffb7ffffffc7fffffffdffffffe3ffffffdf00000005ffffffe7",
            INIT_2E => X"ffffffdf00000010ffffffe6ffffffd20000000afffffff4ffffffbfffffffe5",
            INIT_2F => X"fffffffeffffffe5ffffffd9ffffffefffffffc90000000e0000003affffffa8",
            INIT_30 => X"ffffffdcffffffdafffffff6ffffffccffffffe6ffffffdcffffffabffffffca",
            INIT_31 => X"0000000500000009fffffffa000000170000001fffffffe700000003ffffffff",
            INIT_32 => X"ffffffbf000000080000000d000000010000002300000020ffffffe000000018",
            INIT_33 => X"ffffffdfffffffccffffffe3ffffffbeffffffcafffffff9ffffffd8ffffffe3",
            INIT_34 => X"fffffff900000013fffffff9ffffffff00000003fffffffcfffffff7ffffffeb",
            INIT_35 => X"00000036ffffffcafffffff10000002a00000016fffffff20000003400000000",
            INIT_36 => X"ffffffedffffffd500000027ffffffb4ffffffca00000006ffffffaa00000003",
            INIT_37 => X"0000002f00000063ffffffc00000001a00000033ffffffeeffffffef0000002e",
            INIT_38 => X"00000019ffffffc90000001b00000034000000020000004e00000040fffffff8",
            INIT_39 => X"ffffffeb000000230000001d0000002e00000024ffffffbb0000000400000006",
            INIT_3A => X"ffffffc5ffffffdf0000002100000000000000090000001500000003ffffffef",
            INIT_3B => X"ffffffedffffffe3ffffffb30000001100000009ffffffa4ffffffea00000048",
            INIT_3C => X"0000000b00000018fffffff30000001d00000002fffffff20000001e0000000a",
            INIT_3D => X"ffffffedffffffe6ffffffe7ffffffdbfffffff500000019ffffffe2ffffffea",
            INIT_3E => X"00000031ffffffb1ffffffe800000043ffffffcaffffffe000000002ffffffe7",
            INIT_3F => X"000000300000001300000010000000210000002600000009ffffffc50000001f",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffff9f00000038fffffffdffffffe2ffffffff00000018fffffffaffffffff",
            INIT_01 => X"ffffffb30000000cffffffe3ffffffb9ffffffbefffffff400000056fffffffe",
            INIT_02 => X"ffffffc5ffffffe100000002fffffff8ffffff85fffffff4fffffffcffffff5d",
            INIT_03 => X"ffffffe400000010ffffffec0000000effffffe6ffffffd1ffffffd3fffffff7",
            INIT_04 => X"0000001bffffffe60000001a00000014ffffffde0000001600000009ffffffd6",
            INIT_05 => X"000000590000001fffffffca000000590000002affffffeb000000130000002f",
            INIT_06 => X"fffffffe0000002c00000009000000150000000b0000001dfffffff2ffffffe1",
            INIT_07 => X"00000006fffffff2fffffff400000013ffffffc2ffffffeaffffffc8fffffff4",
            INIT_08 => X"00000000ffffffe80000001300000012ffffffec0000000cffffffd4ffffffdf",
            INIT_09 => X"000000000000000e00000007000000030000000700000007ffffffee00000001",
            INIT_0A => X"0000007400000029000000370000005700000019000000180000000000000016",
            INIT_0B => X"fffffff600000009fffffffa0000002f00000056000000360000007200000083",
            INIT_0C => X"00000013fffffff0fffffffd00000006fffffff3fffffff7fffffff2ffffffee",
            INIT_0D => X"0000000f0000001b0000000a0000000cffffffee00000033ffffffec0000000d",
            INIT_0E => X"ffffffdffffffff9ffffffd1ffffffe900000017ffffffee0000001b00000014",
            INIT_0F => X"fffffff4ffffffecffffffe50000002600000008000000380000002efffffff8",
            INIT_10 => X"00000000fffffff400000001ffffffe8ffffffdd00000008ffffffe5ffffffd6",
            INIT_11 => X"0000003a00000039000000580000002f0000000f000000220000001ffffffffa",
            INIT_12 => X"00000027ffffffdffffffffb0000000e0000000f000000200000001a00000036",
            INIT_13 => X"000000030000000cfffffff800000000ffffffd6fffffffdffffffe7ffffffd3",
            INIT_14 => X"00000031000000340000001e000000260000002b000000010000003000000004",
            INIT_15 => X"ffffffe50000001e0000003f0000002f0000003c000000300000002a00000029",
            INIT_16 => X"0000000700000014fffffff9ffffffe8ffffffefffffffed00000004fffffff4",
            INIT_17 => X"ffffffd3ffffffef0000000b00000000ffffffd10000001200000012ffffffd7",
            INIT_18 => X"ffffffc5ffffffd7ffffffdbffffffe5ffffffcb000000060000000000000007",
            INIT_19 => X"0000004dfffffffc0000001a0000001c0000000400000006fffffff4fffffff1",
            INIT_1A => X"ffffffe3ffffffe000000011fffffffc0000000dffffffe90000001e00000035",
            INIT_1B => X"ffffffff00000014ffffffddffffffe50000001f00000003000000010000001b",
            INIT_1C => X"fffffff70000001c0000002a0000000c00000019000000130000000c00000016",
            INIT_1D => X"0000000300000000ffffffc900000022fffffffc000000210000000800000031",
            INIT_1E => X"00000000fffffff9ffffffa5ffffffd1ffffffafffffffd0ffffffaeffffffc3",
            INIT_1F => X"fffffff1ffffffc0ffffffe2fffffff3ffffffe9ffffffbbffffffdcfffffff9",
            INIT_20 => X"ffffffb1ffffffd2ffffffaafffffff8ffffff9bffffff960000005d00000023",
            INIT_21 => X"00000007ffffffcd00000024ffffffe0ffffffd80000000afffffffeffffffe9",
            INIT_22 => X"000000140000001600000002fffffffcfffffffb0000000f0000000affffffdc",
            INIT_23 => X"0000003a0000000400000005000000080000000a0000001cffffffe9fffffff4",
            INIT_24 => X"ffffffff0000001c000000280000000bfffffffd0000000cffffffdffffffffe",
            INIT_25 => X"fffffffbffffffedfffffff9fffffff500000036000000250000004500000040",
            INIT_26 => X"00000003ffffffff0000001d00000001ffffffd6ffffffefffffffeffffffff8",
            INIT_27 => X"ffffffe9fffffff60000002b0000001c00000004000000190000003300000004",
            INIT_28 => X"ffffffecffffffc4fffffff4ffffffe8ffffffd5ffffffd9ffffffcd0000001b",
            INIT_29 => X"00000000fffffffafffffff40000003300000015fffffff50000001900000015",
            INIT_2A => X"000000220000002bfffffffcfffffff80000001bffffffe8fffffff6fffffff8",
            INIT_2B => X"00000010ffffffe8fffffff50000000dffffffec000000030000000600000037",
            INIT_2C => X"fffffff1ffffffe6fffffffafffffffd0000000900000004000000170000000e",
            INIT_2D => X"000000080000001200000014fffffffe000000260000000fffffffef0000000a",
            INIT_2E => X"fffffff700000023ffffffec00000000fffffff60000001d0000000d00000012",
            INIT_2F => X"ffffffe0fffffff00000001700000045000000320000002f0000001900000009",
            INIT_30 => X"fffffff0fffffff4000000300000003800000037000000070000003f0000003e",
            INIT_31 => X"0000000d0000002dffffffc6ffffffd000000015ffffffc5ffffffe5fffffff7",
            INIT_32 => X"fffffff1ffffffc4ffffffc3ffffffd7ffffffcfffffffe8ffffffbc00000001",
            INIT_33 => X"ffffffebffffffc2ffffffe900000032fffffff1fffffff2fffffff30000002f",
            INIT_34 => X"0000002c00000001fffffff300000031000000090000000effffffecffffffe6",
            INIT_35 => X"ffffffcf00000000ffffffcc00000021ffffffdbffffffe400000023fffffff6",
            INIT_36 => X"ffffffda00000003000000000000000ffffffff3fffffff9ffffffe3ffffffc8",
            INIT_37 => X"ffffffcdffffffeaffffffb0ffffffa800000010ffffffe0fffffffb0000000a",
            INIT_38 => X"0000002d00000018fffffff900000005ffffffe8ffffffc20000000fffffffc3",
            INIT_39 => X"fffffffb0000001a000000370000001600000024fffffff9ffffffe6ffffffed",
            INIT_3A => X"ffffffd00000000a000000030000001c00000007000000040000002100000010",
            INIT_3B => X"ffffffe300000034fffffff0ffffffbcffffffe4ffffffbdffffffeeffffffe4",
            INIT_3C => X"ffffffe200000007ffffffe8ffffffea00000012ffffffdd000000090000000c",
            INIT_3D => X"000000000000003c0000000100000020000000430000000300000014ffffffe4",
            INIT_3E => X"0000002600000003ffffffd50000001fffffffed0000000000000039fffffffb",
            INIT_3F => X"ffffffb10000000effffffd4ffffffe80000002a0000001e00000021fffffffb",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffba00000009ffffffdbffffff9a0000001cffffffe2fffffffd0000001d",
            INIT_01 => X"fffffffb0000001efffffffdffffffe2fffffffbfffffff6ffffffe7fffffff4",
            INIT_02 => X"00000023ffffffddfffffff5fffffffbffffffe7ffffffe600000000fffffff1",
            INIT_03 => X"00000016000000340000001f000000160000005300000032ffffffe600000046",
            INIT_04 => X"00000000ffffffec00000016ffffffd1ffffffd500000029fffffff100000018",
            INIT_05 => X"ffffffaaffffffe0ffffffb7ffffffa800000020ffffffb6fffffff90000001d",
            INIT_06 => X"ffffffd600000018ffffffe0ffffffdb00000001ffffffdfffffffe7ffffffa4",
            INIT_07 => X"ffffff8effffffb90000005dffffffa7000000070000002f0000003bffffffe4",
            INIT_08 => X"00000019fffffff90000003700000016ffffffdeffffffc2ffffff8500000021",
            INIT_09 => X"ffffffdd0000001e00000021ffffffd70000002a000000310000000500000028",
            INIT_0A => X"0000003f00000024fffffff30000005400000043fffffff80000005a0000003c",
            INIT_0B => X"ffffffff00000011fffffff90000001dffffffe4000000300000001cffffffee",
            INIT_0C => X"000000130000001700000008ffffffebfffffff7ffffffe0fffffffe00000008",
            INIT_0D => X"ffffffb8ffffffc0fffffffaffffffd0ffffffd700000023ffffffb50000000a",
            INIT_0E => X"00000019ffffffe800000000ffffffe900000002fffffff1ffffffd20000000f",
            INIT_0F => X"00000012fffffff3fffffffc00000027fffffff4ffffffecffffffec0000000a",
            INIT_10 => X"0000001efffffff20000001b0000000dfffffff5ffffffe800000004fffffffd",
            INIT_11 => X"0000001200000010ffffffd8fffffffc0000001d000000240000001700000037",
            INIT_12 => X"fffffffd0000001b00000031000000390000000a000000390000001700000018",
            INIT_13 => X"ffffffec0000001d000000070000004700000052000000230000003c00000040",
            INIT_14 => X"ffffffe2ffffffe400000022000000230000000400000019000000010000001e",
            INIT_15 => X"00000027ffffffb3fffffff2fffffff8ffffffeeffffffd60000001500000010",
            INIT_16 => X"0000001afffffffbfffffff4000000480000000a0000002a000000470000001a",
            INIT_17 => X"ffffff9cffffffb1ffffffb3ffffffbeffffffc30000000dffffffe8ffffffd6",
            INIT_18 => X"0000002afffffff6fffffffc00000021ffffffe1ffffffe8fffffffeffffffe0",
            INIT_19 => X"ffffff84ffffff6bffffff82ffffffc6ffffffe6ffffffc00000001200000031",
            INIT_1A => X"0000000200000001ffffffecffffffe1ffffffe5ffffff6affffff53ffffff67",
            INIT_1B => X"ffffffc600000000ffffffddffffffd800000032000000150000001affffffeb",
            INIT_1C => X"fffffffe000000010000000effffffabffffff9dffffffefffffff8dffffffa4",
            INIT_1D => X"ffffffee0000000e000000350000002f00000018000000230000003d00000005",
            INIT_1E => X"0000000b0000000c0000002200000000fffffff2000000100000002200000006",
            INIT_1F => X"ffffffeeffffffe0ffffffcd000000170000002bffffffccfffffff100000034",
            INIT_20 => X"0000002000000000ffffffe8fffffffefffffff10000000f00000000ffffffee",
            INIT_21 => X"ffffffe3fffffff2fffffff0ffffffd1ffffffa8ffffffdfffffffd20000001a",
            INIT_22 => X"ffffffddffffffeeffffffdbffffffd0ffffffdbffffffd4ffffffeffffffff2",
            INIT_23 => X"ffffffe9ffffffdeffffffddffffffc0ffffffed00000000ffffffedfffffff3",
            INIT_24 => X"000000160000000c00000009fffffffffffffffdffffffeeffffffd8fffffff1",
            INIT_25 => X"0000001a00000009fffffff4000000220000000d0000000b0000000400000000",
            INIT_26 => X"ffffffe2000000110000001d00000021000000070000000dffffffff00000012",
            INIT_27 => X"fffffff800000007000000150000001afffffffb0000000cfffffff5ffffffee",
            INIT_28 => X"ffffffddffffffefffffffdfffffffeafffffff70000000600000019ffffffe2",
            INIT_29 => X"fffffff8ffffffe7fffffff8ffffffeefffffff3ffffffe90000000dfffffff5",
            INIT_2A => X"fffffff6000000200000000600000007ffffffe8ffffffecffffffeeffffffec",
            INIT_2B => X"ffffffe70000000effffffe1ffffffe6fffffffeffffffe00000001300000022",
            INIT_2C => X"ffffffebffffffe6ffffffbdffffffc2ffffffd6fffffffdffffffe7fffffff8",
            INIT_2D => X"0000002c0000000e00000037000000140000000e00000002ffffffc7ffffffff",
            INIT_2E => X"fffffff2fffffff9fffffffe0000000d00000006000000340000001900000028",
            INIT_2F => X"0000000400000005fffffff800000009ffffffd7fffffff9ffffffecffffffeb",
            INIT_30 => X"000000280000000b0000000e0000001cffffffffffffffe90000000dfffffff7",
            INIT_31 => X"fffffff0fffffffc00000022fffffff50000001d000000260000001700000019",
            INIT_32 => X"ffffffb2ffffffcfffffffefffffffe2fffffffbffffffe3ffffffecfffffff9",
            INIT_33 => X"0000003d00000014fffffff400000001fffffff6ffffffeefffffff4ffffffc3",
            INIT_34 => X"00000016ffffffddffffffdc00000017ffffffdf0000000fffffffef00000012",
            INIT_35 => X"ffffffebfffffffc000000110000000f000000150000001b00000006ffffffe5",
            INIT_36 => X"ffffffc3ffffffadffffffeffffffff30000002800000006000000170000000e",
            INIT_37 => X"00000002fffffff9fffffff3ffffffe800000005ffffffe0ffffffd2ffffffee",
            INIT_38 => X"fffffffcffffffd4ffffffbaffffffd2ffffff88fffffffeffffffe9ffffffbd",
            INIT_39 => X"ffffffe2fffffffcffffffccfffffff100000000ffffffcdffffffd200000002",
            INIT_3A => X"ffffffe1ffffffc9ffffffc0ffffffdbffffffbdffffffb10000003900000029",
            INIT_3B => X"ffffffbdffffffccffffffe2ffffffcdffffffc5fffffffaffffffe1ffffffde",
            INIT_3C => X"0000000000000013ffffffed0000001a0000002000000020ffffffeeffffffed",
            INIT_3D => X"fffffffbffffffedffffffe40000001300000006fffffff900000002fffffff1",
            INIT_3E => X"000000010000001700000029ffffffe10000001f0000000b00000000fffffff2",
            INIT_3F => X"0000000900000016fffffff30000000d0000001500000016000000130000002c",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffadffffffed0000000500000027000000170000000f000000010000001a",
            INIT_01 => X"0000001600000019000000190000001a00000011fffffff20000000dfffffffd",
            INIT_02 => X"00000023fffffff0fffffff8ffffffbefffffff80000000cffffffd700000024",
            INIT_03 => X"00000013000000030000002c0000003b000000170000002dffffffd30000000f",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
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

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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


    MEM_IFMAP_LAYER1_ENTITY0 : if BRAM_NAME = "ifmap_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000001d0000000f0000000d00000017000000140000000f0000001200000012",
            INIT_01 => X"00000016000000150000000c0000000600000001000000000000000a0000001d",
            INIT_02 => X"0000000000000003000000080000000400000013000000130000000f00000012",
            INIT_03 => X"0000000b000000000000000b0000000500000000000000000000000000000004",
            INIT_04 => X"00000000000000000000001e000000200000001b000000120000001b00000013",
            INIT_05 => X"0000000c00000000000000010000000100000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000110000000b00000019",
            INIT_07 => X"0000000300000003000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000040000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000001000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000000000000000000001c0000000400000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_0E => X"0000000b00000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"000000000000000b000000000000000000000000000000000000000000000000",
            INIT_10 => X"000000000000000000000000000000000000000b000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000080000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000000000000000000000000000b0000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000020",
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
            INIT_26 => X"000000000000000000000000000000000000000000000000000000000000000b",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"000000000000000d000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000000000000000000000070000000400000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000006000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000010000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000a0000003f0000000f0000001a0000000f000000000000000000000000",
            INIT_31 => X"0000002000000025000000380000003a00000032000000000000000000000000",
            INIT_32 => X"000000000000003a0000002c0000002000000027000000250000002900000022",
            INIT_33 => X"000000240000001f00000020000000200000001d0000001d0000001e00000000",
            INIT_34 => X"0000000e0000002f0000002f000000300000002100000028000000220000001e",
            INIT_35 => X"000000330000002f00000023000000220000001d00000019000000210000000f",
            INIT_36 => X"0000002a000000410000003100000033000000290000003a0000002800000034",
            INIT_37 => X"0000001a0000002d000000210000001c000000170000001f0000002a00000030",
            INIT_38 => X"000000000000000000000000000000000000000000000000000000290000001c",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"00000000000000000000000000000000000000060000000e0000001800000003",
            INIT_3E => X"000000000000000100000002000000000000000000000000000000000000000b",
            INIT_3F => X"0000001e0000000000000000000000000000000000000006000000000000001b",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000001d00000000000000030000000500000014000000110000000000000000",
            INIT_01 => X"00000000000000170000000f0000000300000000000000080000000000000010",
            INIT_02 => X"00000003000000440000000000000004000000060000000a0000001a00000000",
            INIT_03 => X"00000000000000000000000b0000001700000002000000000000000b00000000",
            INIT_04 => X"00000004000000000000003700000000000000000000000b0000001e0000000c",
            INIT_05 => X"000000060000000000000006000000140000002000000002000000110000000a",
            INIT_06 => X"000000110000000000000000000000200000000000000000000000000000002d",
            INIT_07 => X"00000000000000080000001100000004000000280000001d0000000000000008",
            INIT_08 => X"00000000000000060000000000000010000000000000000b0000000b00000000",
            INIT_09 => X"00000012000000090000000e0000002700000000000000240000001800000000",
            INIT_0A => X"00000000000000000000000c0000000000000000000000000000001500000012",
            INIT_0B => X"000000110000002d000000280000000d0000005800000000000000230000002b",
            INIT_0C => X"00000036000000000000000b0000001f000000220000001b0000000000000000",
            INIT_0D => X"0000001a000000210000001f0000000700000000000000450000001200000023",
            INIT_0E => X"000000380000002a0000002f0000002f0000002e00000028000000220000001e",
            INIT_0F => X"0000002a00000024000000240000002500000027000000000000002500000033",
            INIT_10 => X"000000520000002e0000002c0000003a0000002e0000002f000000360000002f",
            INIT_11 => X"0000002e0000002f0000002a0000002a000000260000002b0000001300000000",
            INIT_12 => X"000000190000002c000000330000002b00000028000000450000002a0000002f",
            INIT_13 => X"0000002e0000002d000000310000002e00000024000000230000002800000019",
            INIT_14 => X"00000000000000000000000000000000000000000000001f0000003a00000043",
            INIT_15 => X"00000000000000000000000a0000000200000000000000000000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"00000000000000030000001c0000001f00000000000000170000000800000010",
            INIT_18 => X"0000002b00000000000000000000000000000000000000000000002a00000000",
            INIT_19 => X"00000000000000000000003f0000002d00000042000000000000000000000011",
            INIT_1A => X"0000002c00000028000000000000000e00000000000000000000000000000071",
            INIT_1B => X"0000006c000000000000002a0000003b000000260000005a0000000000000025",
            INIT_1C => X"0000003c000000480000005d0000002400000034000000000000002300000005",
            INIT_1D => X"0000003100000059000000000000003e0000001e000000520000002f00000000",
            INIT_1E => X"00000000000000600000003e000000610000002c000000000000000000000037",
            INIT_1F => X"0000001500000073000000480000002500000031000000120000005c00000073",
            INIT_20 => X"00000075000000000000006a0000004a0000005a000000000000000000000038",
            INIT_21 => X"0000003100000028000000650000004d000000370000000c0000001200000047",
            INIT_22 => X"000000500000004f0000000000000046000000380000008b0000000600000000",
            INIT_23 => X"0000002a0000000b000000840000004200000068000000130000002500000006",
            INIT_24 => X"000000040000005b0000001600000029000000000000002c0000002e00000013",
            INIT_25 => X"0000001800000064000000000000009f0000003a0000004a0000000000000000",
            INIT_26 => X"0000000000000000000000170000005a0000003b000000300000004d00000000",
            INIT_27 => X"000000200000004c0000009300000000000000940000003c0000000f0000000c",
            INIT_28 => X"0000003100000020000000230000001d0000001a000000410000008300000071",
            INIT_29 => X"0000003c0000003a00000073000000d8000000000000004e0000002b0000001d",
            INIT_2A => X"0000005f0000004f000000400000003e0000003c0000003d0000003800000047",
            INIT_2B => X"0000003e0000003f0000004900000042000000af000000820000000000000012",
            INIT_2C => X"000000450000006a0000003d0000004800000050000000400000003800000039",
            INIT_2D => X"000000410000003c000000420000004d000000390000005a000000cb00000000",
            INIT_2E => X"0000003e0000004b000000760000007b000000380000004e0000004d00000048",
            INIT_2F => X"0000005500000044000000380000004400000043000000350000004800000054",
            INIT_30 => X"00000008000000080000000000000000000000800000006f0000001a0000003a",
            INIT_31 => X"0000000000000000000000000000000400000000000000050000000300000006",
            INIT_32 => X"0000000a000000070000000c0000000a00000007000000050000000600000000",
            INIT_33 => X"0000000000000006000000240000000000000000000000000000001a00000049",
            INIT_34 => X"0000000000000007000000040000000400000000000000000000000400000000",
            INIT_35 => X"000000000000001700000007000000150000001a0000000d0000000000000000",
            INIT_36 => X"00000037000000000000000d0000000500000009000000250000002800000000",
            INIT_37 => X"000000000000000100000000000000000000000000000000000000050000001b",
            INIT_38 => X"0000000e0000000600000056000000800000000b000000130000005a00000026",
            INIT_39 => X"0000000000000000000000180000000f00000025000000250000000000000000",
            INIT_3A => X"0000001f0000001a0000002a0000000000000000000000000000000800000000",
            INIT_3B => X"000000070000000600000027000000090000000000000000000000000000003a",
            INIT_3C => X"00000011000000090000000a0000000000000021000000000000000400000000",
            INIT_3D => X"0000001c00000007000000150000001d00000017000000000000000b00000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000160000001900000010",
            INIT_3F => X"000000040000000b000000040000001000000000000000000000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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


    MEM_IFMAP_LAYER1_ENTITY2 : if BRAM_NAME = "ifmap_layer1_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000000000000000000000000040000001a00000000000000000000001c",
            INIT_01 => X"00000011000000040000000900000000000000000000002f0000000300000000",
            INIT_02 => X"0000001b0000000000000000000000000000000c0000004a0000000000000000",
            INIT_03 => X"000000850000009c00000046000000000000000000000000000000000000001f",
            INIT_04 => X"000000000000001b000000410000002000000000000000000000000000000028",
            INIT_05 => X"000000000000000000000000000000460000000f000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000002",
            INIT_08 => X"0000000000000011000000000000000000000012000000070000000400000000",
            INIT_09 => X"0000000000000000000000080000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000000000000000000001300000000000000000000000000000000",
            INIT_0B => X"0000001300000014000000000000000000000000000000000000000000000000",
            INIT_0C => X"000000a2000000a30000009d0000000000000022000000280000000000000004",
            INIT_0D => X"0000007c00000094000000ad000000b7000000ac0000009d000000a4000000a5",
            INIT_0E => X"000000ac000000a8000000ad000000a20000009200000092000000840000007c",
            INIT_0F => X"0000003e0000002e0000003a0000007a000000a0000000a90000008c000000a0",
            INIT_10 => X"000000af000000b0000000ac0000006a000000890000008b0000006e0000004e",
            INIT_11 => X"000000270000000a0000001e000000070000002d00000048000000730000008e",
            INIT_12 => X"00000059000000a2000000aa000000a40000002b0000004d000000670000003a",
            INIT_13 => X"000000250000001b0000002d000000330000000c00000015000000270000004d",
            INIT_14 => X"00000043000000470000004e00000060000000940000001f000000170000003a",
            INIT_15 => X"0000002f0000001c000000170000003900000031000000000000001f0000002f",
            INIT_16 => X"00000031000000450000003b00000025000000990000008e0000001200000016",
            INIT_17 => X"0000000e0000001700000012000000100000002a0000003e000000000000002d",
            INIT_18 => X"0000002f0000002d0000003e000000320000002f0000009f000000620000002a",
            INIT_19 => X"0000000a0000001c000000260000000e00000010000000280000003200000000",
            INIT_1A => X"0000001e00000029000000270000002e0000002600000037000000620000002c",
            INIT_1B => X"0000002b00000000000000140000004100000022000000090000002d0000002f",
            INIT_1C => X"00000042000000540000000d000000300000003600000022000000550000000e",
            INIT_1D => X"00000000000000240000000500000010000000790000002d0000000f00000026",
            INIT_1E => X"000000060000001d000000340000002d00000028000000080000002000000035",
            INIT_1F => X"00000017000000000000002300000015000000000000008a0000006200000009",
            INIT_20 => X"000000000000000000000000000000000000000600000000000000000000001a",
            INIT_21 => X"000000000000003a000000060000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000003400000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000002300000022000000000000000000000000000000000000000000000000",
            INIT_29 => X"000000170000001d0000002400000026000000270000001e0000002000000025",
            INIT_2A => X"0000002a0000002c00000023000000180000001e00000024000000260000001a",
            INIT_2B => X"000000000000001d0000000e0000001d0000000f00000020000000280000001f",
            INIT_2C => X"000000210000002800000039000000060000001c0000002b0000002000000009",
            INIT_2D => X"00000000000000000000002e0000002100000006000000000000001a00000027",
            INIT_2E => X"0000000f00000029000000210000004c000000000000002c0000002500000000",
            INIT_2F => X"0000000000000009000000000000004800000000000000000000000400000024",
            INIT_30 => X"0000000b00000009000000560000000200000026000000000000004a00000000",
            INIT_31 => X"0000000000000006000000000000000000000059000000000000000000000000",
            INIT_32 => X"00000000000000130000003e0000001a000000000000000a000000000000002b",
            INIT_33 => X"00000000000000000000001400000000000000000000008e0000000000000000",
            INIT_34 => X"0000000000000000000000360000003f00000000000000200000000000000000",
            INIT_35 => X"0000000000000000000000150000000a00000000000000000000006600000000",
            INIT_36 => X"0000000000000000000000000000004200000038000000000000000000000000",
            INIT_37 => X"0000000200000000000000080000000f0000001d000000000000000000000042",
            INIT_38 => X"0000000000000024000000000000000000000011000000040000002100000000",
            INIT_39 => X"00000000000000000000000000000023000000210000001e0000000000000025",
            INIT_3A => X"00000000000000050000000200000000000000270000000f000000000000002c",
            INIT_3B => X"0000007800000000000000040000002a0000001400000034000000300000000c",
            INIT_3C => X"0000000900000008000000000000000000000000000000220000000000000000",
            INIT_3D => X"0000000000000040000000000000001400000020000000000000000000000001",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000004300000021000000000000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY2;


    MEM_IFMAP_LAYER1_ENTITY3 : if BRAM_NAME = "ifmap_layer1_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"000000000000000000000000000000000000005d000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000002b00000000000000000000000400000000000000000000000000000000",
            INIT_05 => X"000000370000003a00000030000000290000002f0000002c0000002d00000030",
            INIT_06 => X"000000350000002c000000310000002a0000002700000026000000250000002a",
            INIT_07 => X"0000000c0000003b000000290000001f000000000000002d0000002e00000030",
            INIT_08 => X"0000002e000000290000001c000000250000001f0000000e0000000000000000",
            INIT_09 => X"000000000000000000000000000000230000002d0000003b0000003200000035",
            INIT_0A => X"000000320000002300000000000000000000001a000000040000000000000000",
            INIT_0B => X"0000000000000000000000000000000000000000000000000000001900000025",
            INIT_0C => X"0000000000000018000000120000000000000000000000110000000000000006",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000300000003000000380000000b00000000000000000000000500000000",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000070000003a00000007000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_13 => X"000000000000000d000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000050000001a00000000000000000000000000000000",
            INIT_15 => X"000000000000000000000008000000000000000400000018000000030000000f",
            INIT_16 => X"0000000800000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000001f00000000000000000000000a00000011",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000b0000000c0000000c000000040000000800000008000000110000000a",
            INIT_22 => X"00000000000000060000000800000011000000230000002d000000210000000b",
            INIT_23 => X"00000042000000230000000500000000000000080000000c0000000a0000000a",
            INIT_24 => X"00000033000000350000000a000000170000000a000000000000000000000000",
            INIT_25 => X"0000000000000000000000090000001600000037000000050000000800000005",
            INIT_26 => X"0000000500000000000000000000000c0000000e000000000000000000000000",
            INIT_27 => X"000000040000001a000000000000000200000000000000000000000800000008",
            INIT_28 => X"0000000e0000000200000000000000010000000e000000000000000600000010",
            INIT_29 => X"0000000000000000000000000000000700000000000000090000000000000000",
            INIT_2A => X"0000003e0000000300000006000000000000000f000000000000000000000000",
            INIT_2B => X"0000000700000015000000140000000000000000000000000000000000000028",
            INIT_2C => X"0000000000000012000000180000001c00000000000000000000000000000000",
            INIT_2D => X"0000000000000000000000000000001100000000000000110000000000000031",
            INIT_2E => X"0000003500000035000000020000000000000000000000000000000000000000",
            INIT_2F => X"000000000000000e000000050000000000000009000000000000000e00000021",
            INIT_30 => X"0000000000000000000000260000000000000000000000000000000100000000",
            INIT_31 => X"0000000c00000000000000000000000000000030000000260000000000000000",
            INIT_32 => X"0000000000000000000000000000000900000023000000000000000400000000",
            INIT_33 => X"000000000000000300000018000000000000000000000011000000360000004e",
            INIT_34 => X"0000000000000037000000510000001e00000000000000000000000000000007",
            INIT_35 => X"0000000c00000021000000350000000a00000005000000000000000000000000",
            INIT_36 => X"0000000000000000000000030000000500000004000000280000005600000000",
            INIT_37 => X"0000001800000000000000160000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000000000000000000000000000000000000000003f",
            INIT_39 => X"0000000b0000004f000000180000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000300000000000000220000000000000000000000000000001400000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000012",
            INIT_3D => X"0000000800000015000000090000000e0000000a000000130000000d00000000",
            INIT_3E => X"0000000200000006000000130000001b000000220000001c0000000c00000006",
            INIT_3F => X"0000001a0000000f000000360000000f0000000d000000090000000b00000008",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY3;


    MEM_IFMAP_LAYER1_ENTITY4 : if BRAM_NAME = "ifmap_layer1_entity4" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000260000000a0000001a000000210000002400000035000000340000001f",
            INIT_01 => X"00000020000000280000003300000051000000080000000a0000000b00000024",
            INIT_02 => X"00000014000000330000001a000000190000002b0000004b0000005e00000053",
            INIT_03 => X"0000005b000000360000002f000000450000002e00000019000000120000000e",
            INIT_04 => X"000000150000005e000000710000001b000000150000003b000000420000005d",
            INIT_05 => X"000000670000003b000000330000003b00000064000000440000007e00000035",
            INIT_06 => X"00000013000000280000009e0000007f00000001000000250000003900000038",
            INIT_07 => X"000000500000007f0000005b0000002e0000004b0000007d0000007e000000bd",
            INIT_08 => X"0000005a0000001700000043000000940000007a000000150000003c00000047",
            INIT_09 => X"0000003b0000004600000081000000780000004e00000065000000a800000075",
            INIT_0A => X"000000a5000000390000003900000040000000a50000008e000000330000004c",
            INIT_0B => X"0000004b000000480000004c000000780000005f000000500000006a00000085",
            INIT_0C => X"0000005900000066000000380000007300000066000000b8000000b000000026",
            INIT_0D => X"0000000e0000002b0000002c000000410000006500000033000000510000004e",
            INIT_0E => X"000000790000005f000000330000006f0000007500000086000000b3000000c0",
            INIT_0F => X"000000c700000027000000270000002f00000025000000400000005a00000042",
            INIT_10 => X"00000079000000b900000091000000650000009e000000a20000008b000000ab",
            INIT_11 => X"000000cb000000c100000068000000710000005a00000047000000400000003c",
            INIT_12 => X"0000006f0000007c000000850000008a000000a5000000e7000000c90000009d",
            INIT_13 => X"000000b1000000a10000008c0000008e0000008a000000880000008000000078",
            INIT_14 => X"00000084000000760000007100000070000000750000007a000000af000000e5",
            INIT_15 => X"000000ef000000a6000000850000009d000000a30000009a000000950000008c",
            INIT_16 => X"0000009b0000008c000000820000007700000073000000790000008000000088",
            INIT_17 => X"00000074000000a70000007f0000008f00000097000000ab000000a300000093",
            INIT_18 => X"0000009a0000008500000086000000880000007c0000007e000000890000007f",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000008d000000af",
            INIT_1A => X"00000000000000000000000b0000001c00000013000000000000000000000000",
            INIT_1B => X"0000000b00000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000000000000000001e0000001400000000000000000000003300000014",
            INIT_1D => X"000000280000001c0000003e000000000000000000000000000000000000003f",
            INIT_1E => X"00000019000000000000001e0000000700000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000c000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000e000000060000001a0000000000000000",
            INIT_21 => X"000000000000001d000000040000000f00000000000000000000000000000009",
            INIT_22 => X"00000002000000000000002f0000002500000000000000000000000800000000",
            INIT_23 => X"000000260000000000000006000000000000000000000000000000030000004f",
            INIT_24 => X"0000000d0000000d00000018000000000000000000000000000000000000001c",
            INIT_25 => X"0000000800000018000000000000000900000000000000050000000000000000",
            INIT_26 => X"0000000000000000000000070000000000000002000000000000000000000000",
            INIT_27 => X"000000000000001c0000000000000000000000000000001e0000003d00000000",
            INIT_28 => X"0000003200000022000000000000002e00000000000000000000000000000010",
            INIT_29 => X"000000000000000d0000003a0000002600000036000000000000000000000003",
            INIT_2A => X"000000000000001500000012000000000000000a000000000000000000000000",
            INIT_2B => X"00000008000000000000000000000001000000310000001f0000002e00000000",
            INIT_2C => X"0000001900000000000000000000000000000000000000220000000000000000",
            INIT_2D => X"0000004100000021000000160000000000000000000000000000000d0000000f",
            INIT_2E => X"0000000c000000370000003f00000052000000a2000000000000000000000000",
            INIT_2F => X"000000360000000d000000000000000000000000000000020000000000000006",
            INIT_30 => X"0000000000000000000000000000000200000000000000560000004100000000",
            INIT_31 => X"0000002500000000000000020000000000000000000000030000000000000000",
            INIT_32 => X"000000070000000000000000000000010000000000000000000000060000003e",
            INIT_33 => X"0000003600000018000000000000000c0000004200000000000000000000000a",
            INIT_34 => X"0000000000000005000000000000000000000000000000090000001300000024",
            INIT_35 => X"0000000000000000000000000000000000000000000000040000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000000000000000000000000000000000000000000001f0000000400000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000b00000000",
            INIT_3C => X"0000000000000001000000020000000000000007000000000000002d00000005",
            INIT_3D => X"0000000200000000000000000000000000000000000000000000000000000002",
            INIT_3E => X"000000060000000100000010000000000000000300000000000000000000003b",
            INIT_3F => X"0000005d000000000000000000000000000000000000002c0000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY4;


    MEM_IFMAP_LAYER1_ENTITY5 : if BRAM_NAME = "ifmap_layer1_entity5" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000000000000000000000000000000e0000000000000000",
            INIT_01 => X"00000000000000520000000000000000000000000000000f0000001c00000000",
            INIT_02 => X"0000000000000000000000000000000400000000000000130000001200000000",
            INIT_03 => X"00000000000000000000002d000000000000000500000000000000170000000c",
            INIT_04 => X"000000000000001100000000000000160000000000000000000000030000001d",
            INIT_05 => X"0000001b00000000000000110000000000000008000000000000000000000012",
            INIT_06 => X"00000003000000000000003b0000000000000019000000090000000000000000",
            INIT_07 => X"0000000000000012000000120000000000000000000000050000000000000010",
            INIT_08 => X"0000002d000000000000000000000058000000000000000d0000003300000000",
            INIT_09 => X"0000001d0000002c0000003e0000003300000028000000020000000000000004",
            INIT_0A => X"0000004e0000004e0000002e000000000000003b000000000000003600000070",
            INIT_0B => X"0000005a000000530000005a00000058000000560000004f0000004900000044",
            INIT_0C => X"0000004c0000004a00000048000000490000000000000008000000480000006f",
            INIT_0D => X"000000600000005a0000005e0000005d000000570000005b0000005b00000054",
            INIT_0E => X"00000057000000530000004d000000450000005000000031000000000000008a",
            INIT_0F => X"0000006700000067000000500000005e00000074000000610000006400000061",
            INIT_10 => X"00000052000000520000005200000049000000550000005f0000004900000041",
            INIT_11 => X"0000002e000000330000002e0000002f00000045000000530000006b0000005e",
            INIT_12 => X"000000270000001c000000230000002b0000002f000000310000002f0000002f",
            INIT_13 => X"000000340000002d000000350000003200000032000000240000002700000026",
            INIT_14 => X"0000002400000015000000130000002100000004000000250000001300000055",
            INIT_15 => X"0000002c000000380000002e000000340000003b0000001a000000280000002d",
            INIT_16 => X"00000027000000040000000b0000000a0000004f0000001a0000000000000000",
            INIT_17 => X"0000001a0000002300000025000000360000002c000000790000000000000039",
            INIT_18 => X"000000530000000e000000000000001200000000000000530000001800000008",
            INIT_19 => X"00000000000000000000001a0000002c000000490000000a0000006300000000",
            INIT_1A => X"0000000000000039000000000000001e000000000000000b0000005f00000008",
            INIT_1B => X"00000000000000000000000000000000000000490000002e0000000000000038",
            INIT_1C => X"00000015000000000000000d00000004000000230000000000000000000000bf",
            INIT_1D => X"000000a400000000000000000000000a0000005000000061000000000000000c",
            INIT_1E => X"0000000100000000000000000000000d000000270000001e0000000000000000",
            INIT_1F => X"000000000000007c000000000000000800000000000000680000004500000000",
            INIT_20 => X"0000003c00000000000000170000000000000012000000220000002a00000000",
            INIT_21 => X"000000000000002200000006000000310000001c000000000000000300000011",
            INIT_22 => X"000000000000004a00000000000000180000000a000000440000003a00000026",
            INIT_23 => X"0000004800000005000000000000000a000000170000000e0000002a00000019",
            INIT_24 => X"0000000b00000000000000a30000000000000011000000510000001c00000056",
            INIT_25 => X"0000001e0000002d000000280000001400000000000000000000000000000056",
            INIT_26 => X"0000000000000000000000000000009800000000000000280000004000000000",
            INIT_27 => X"00000000000000110000000e0000001000000010000000090000000000000000",
            INIT_28 => X"0000000a0000000500000009000000000000001f000000480000004100000003",
            INIT_29 => X"0000000000000017000000080000001000000017000000140000001000000008",
            INIT_2A => X"0000000d00000009000000000000001100000000000000000000007400000010",
            INIT_2B => X"0000000d00000000000000000000002600000000000000090000000d00000010",
            INIT_2C => X"0000001000000018000000090000000c00000016000000000000000000000019",
            INIT_2D => X"0000000000000000000000000000000000000003000000310000000b00000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000001000000000000000000000000000000000000000400000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000012000000040000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000005",
            INIT_35 => X"0000000000000008000000380000000000000000000000270000000100000000",
            INIT_36 => X"0000000000000004000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000f000000000000000000000000000000000000001400000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000012000000000000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY5;


    MEM_IFMAP_LAYER1_ENTITY6 : if BRAM_NAME = "ifmap_layer1_entity6" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000300000001e000000000000000000000000000000000000000000000011",
            INIT_01 => X"00000001000000240000001c000000000000000000000000000000000000003e",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000200000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"000000360000002f000000000000000000000013000000000000000000000000",
            INIT_0A => X"0000002b000000360000003b0000003900000030000000350000003500000033",
            INIT_0B => X"0000003600000038000000300000002700000028000000250000002000000020",
            INIT_0C => X"000000020000000200000023000000390000003b000000420000003300000039",
            INIT_0D => X"0000003900000036000000130000003000000027000000110000000600000006",
            INIT_0E => X"00000000000000040000000000000000000000000000001e0000003d00000037",
            INIT_0F => X"0000004000000037000000320000000000000015000000170000000000000001",
            INIT_10 => X"0000000000000000000000170000000000000000000000000000001e00000012",
            INIT_11 => X"0000003300000044000000100000003400000012000000000000000000000000",
            INIT_12 => X"0000000000000000000000090000001000000000000000000000000600000025",
            INIT_13 => X"0000002b0000000d0000000b00000038000000310000000f0000000000000000",
            INIT_14 => X"000000000000000000000000000000000000002a000000000000000b00000008",
            INIT_15 => X"000000170000002e000000110000000e0000003d000000070000002c00000000",
            INIT_16 => X"0000000400000000000000000000000000000000000000130000000300000008",
            INIT_17 => X"000000000000000a0000002e0000002200000000000000250000000000000019",
            INIT_18 => X"0000001100000015000000000000000200000000000000000000000f00000013",
            INIT_19 => X"0000002c000000000000000c00000000000000000000001c0000000000000009",
            INIT_1A => X"000000140000000e000000160000002100000000000000000000000000000000",
            INIT_1B => X"0000000000000005000000060000001f00000000000000000000000300000000",
            INIT_1C => X"00000000000000150000001400000005000000280000001e0000000000000000",
            INIT_1D => X"000000000000000000000000000000000000001700000011000000060000002c",
            INIT_1E => X"0000003c00000032000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"00000000000000000000004f0000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000002800000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000002700000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000002f0000002b00000028000000200000002c000000290000002300000022",
            INIT_27 => X"00000024000000280000002e000000290000001e0000001d0000002900000032",
            INIT_28 => X"000000050000002e00000030000000430000000e000000210000002c00000024",
            INIT_29 => X"00000028000000020000003f0000002c00000015000000190000002900000021",
            INIT_2A => X"0000001c00000000000000100000002400000028000000200000002a00000029",
            INIT_2B => X"000000240000002e000000000000005c0000000b0000001a000000320000000c",
            INIT_2C => X"0000001800000023000000000000001900000025000000270000000c00000038",
            INIT_2D => X"000000130000000000000041000000050000002c00000000000000260000001a",
            INIT_2E => X"0000001200000038000000140000000000000025000000240000002a00000027",
            INIT_2F => X"00000000000000000000002f0000003700000000000000240000001a0000002b",
            INIT_30 => X"0000001d000000070000002a0000003400000000000000430000002500000016",
            INIT_31 => X"000000150000000000000000000000460000000e000000240000001100000020",
            INIT_32 => X"00000025000000000000000d000000280000002b00000000000000390000001c",
            INIT_33 => X"0000000b0000003500000000000000020000003400000029000000060000000b",
            INIT_34 => X"0000000d0000000d00000011000000000000002c000000110000000000000018",
            INIT_35 => X"000000000000001b0000000e0000000000000034000000000000003f00000000",
            INIT_36 => X"00000000000000000000001a00000000000000000000002b000000050000003f",
            INIT_37 => X"0000000f0000002c0000001d00000000000000140000002a0000000000000039",
            INIT_38 => X"0000003800000000000000000000002f00000010000000000000000f0000002f",
            INIT_39 => X"0000000f0000002b000000270000000500000000000000320000002900000000",
            INIT_3A => X"0000000000000000000000000000000000000021000000110000000800000008",
            INIT_3B => X"0000000000000003000000070000000000000000000000000000000500000052",
            INIT_3C => X"0000002e00000022000000000000000000000014000000030000000000000000",
            INIT_3D => X"0000000200000000000000000000000100000005000000020000000600000000",
            INIT_3E => X"000000000000000d000000220000000000000000000000090000000000000000",
            INIT_3F => X"0000000000000000000000000000000100000000000000000000000600000009",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY6;


    MEM_IFMAP_LAYER1_ENTITY7 : if BRAM_NAME = "ifmap_layer1_entity7" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000000000000140000000400000000000000000000001300000015",
            INIT_01 => X"0000001a0000001200000000000000000000000c000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
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

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_IFMAP_LAYER1_ENTITY7;


    MEM_GOLD_LAYER1_ENTITY0 : if BRAM_NAME = "gold_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"00000021000000370000006c0000006000000000000000000000000000000000",
            INIT_07 => X"00000000000000170000000000000000000000000000004c0000000c00000038",
            INIT_08 => X"0000002b00000000000000070000001500000000000000000000002a0000000f",
            INIT_09 => X"000000290000000000000000000000000000001300000011000000610000005f",
            INIT_0A => X"0000005a000000b8000000460000004300000000000000730000005d00000000",
            INIT_0B => X"000000000000000000000023000000d600000017000000000000000000000000",
            INIT_0C => X"0000001f0000003a0000001c0000000000000000000000050000000000000000",
            INIT_0D => X"0000003800000024000000c20000001d000000000000000e0000013a00000027",
            INIT_0E => X"000000000000000000000022000001cf00000017000000000000006f00000080",
            INIT_0F => X"0000017a000000000000000000000000000000f2000000600000000000000016",
            INIT_10 => X"000000ce0000009d00000000000000000000000a000000000000000000000092",
            INIT_11 => X"0000000c0000007c000000000000007b00000000000000000000000d00000000",
            INIT_12 => X"00000000000000000000000f0000000000000000000000000000000300000000",
            INIT_13 => X"0000000000000011000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000360000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000380000000000000000",
            INIT_16 => X"0000009d000000000000007700000000000000000000004b0000000000000000",
            INIT_17 => X"000000000000000000000015000000000000002d000000000000000000000000",
            INIT_18 => X"0000000000000000000000060000000000000021000000000000001300000000",
            INIT_19 => X"000000000000000d000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000006a0000000000000000000000000000006e000000000000007900000000",
            INIT_1B => X"00000000000000cb000000000000000000000000000000060000000000000000",
            INIT_1C => X"0000000000000000000000370000001b000000390000003c0000000000000000",
            INIT_1D => X"000000b600000032000000000000000000000006000000000000000000000000",
            INIT_1E => X"000000000000006700000039000000000000000a000000000000000800000000",
            INIT_1F => X"00000015000000000000002a000000000000002e00000011000000200000000c",
            INIT_20 => X"0000000b00000009000000000000000000000000000000170000000900000036",
            INIT_21 => X"00000009000000290000000d0000000000000017000000000000000600000019",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000800000000",
            INIT_23 => X"000000090000000d000000000000001700000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000130000001a000000260000001600000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000200000001000000000000000500000000000000000000000000000000",
            INIT_27 => X"0000000e000000000000001b0000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000011",
            INIT_29 => X"000000000000000000000000000000000000000f000000000000000000000000",
            INIT_2A => X"000000000000001500000018000000060000000100000000000000020000003b",
            INIT_2B => X"0000000000000005000000000000000b00000000000000000000000000000000",
            INIT_2C => X"0000001f0000000000000001000000400000001c000000060000001100000000",
            INIT_2D => X"000000080000001200000021000000080000002d00000017000000050000000c",
            INIT_2E => X"0000000000000031000000380000000000000000000000300000002200000013",
            INIT_2F => X"0000000000000000000000000000000000000008000000000000001a0000002e",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"00000000000000320000002a0000004a0000004a000000000000000000000022",
            INIT_32 => X"00000000000000000000003200000011000000000000000a0000000900000009",
            INIT_33 => X"000000000000001f00000019000000040000003e000000000000000500000000",
            INIT_34 => X"00000000000000160000000000000000000000000000004e000000000000005b",
            INIT_35 => X"000000000000005f00000083000000000000000d000000000000005b0000005d",
            INIT_36 => X"0000000000000000000000000000001c0000005b000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000190000000000000029000000000000000000000000",
            INIT_39 => X"00000000000000360000000000000017000000000000003c0000000000000000",
            INIT_3A => X"00000008000000000000001f0000000000000000000000000000001000000000",
            INIT_3B => X"0000003b000000aa000000000000000000000000000000000000000e00000017",
            INIT_3C => X"0000004d000000560000008700000027000000000000002f0000002700000056",
            INIT_3D => X"000000000000002d00000094000000510000006100000068000000720000004c",
            INIT_3E => X"0000000a0000000c00000018000000000000002500000038000000000000004d",
            INIT_3F => X"00000000000000000000001c0000000e000000000000002d0000009b00000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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


    MEM_GOLD_LAYER1_ENTITY1 : if BRAM_NAME = "gold_layer1_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000001b0000003600000039000000390000007400000000",
            INIT_01 => X"00000092000000500000004d000000020000001d0000004b0000000000000013",
            INIT_02 => X"00000000000000000000009e0000002400000000000000000000000000000050",
            INIT_03 => X"00000000000000000000001c0000004b00000032000000150000001200000000",
            INIT_04 => X"000000000000004e000000000000000000000000000000000000000000000000",
            INIT_05 => X"000000000000000000000025000000000000002c000000370000000000000000",
            INIT_06 => X"0000001300000011000000000000003f00000000000000640000000000000000",
            INIT_07 => X"000000020000005f000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000400000053000000040000000b00000014000000000000000700000000",
            INIT_09 => X"00000000000000000000000000000000000000170000002e0000003200000018",
            INIT_0A => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"000000000000000000000000000000000000000000000000000000000000000d",
            INIT_0C => X"0000000e00000000000000160000000000000000000000000000000d00000000",
            INIT_0D => X"000000210000000100000000000000000000000600000000000000000000001e",
            INIT_0E => X"00000000000000000000001b0000001200000000000000000000000000000000",
            INIT_0F => X"0000000000000000000000000000002e00000041000000380000003900000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000002200000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000001a00000000000000030000007c000000170000000000000023",
            INIT_14 => X"0000000000000017000000180000000600000015000000000000001a00000000",
            INIT_15 => X"00000092000000810000004000000035000000240000001e0000000c00000000",
            INIT_16 => X"0000000000000000000000000000003300000000000000190000006c00000027",
            INIT_17 => X"0000000000000000000000700000000000000000000000000000000000000000",
            INIT_18 => X"000000380000004f0000001c0000000000000000000000000000000500000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000360000000000000038",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000001300000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000660000002600000065000000420000001c00000000",
            INIT_1E => X"0000004d00000000000000190000007700000056000000590000004e00000062",
            INIT_1F => X"00000025000000280000000c00000074000000b7000000470000003500000060",
            INIT_20 => X"000000840000006e000000500000003900000078000000850000003900000018",
            INIT_21 => X"000000bb000000ab0000009c00000092000000a90000008b0000009a0000008a",
            INIT_22 => X"0000005000000067000000a9000000b5000000a60000000a0000000000000000",
            INIT_23 => X"000000110000002d0000001c00000000000000000000004d0000009700000046",
            INIT_24 => X"0000001d000000680000001d000000000000002100000000000000000000001c",
            INIT_25 => X"0000002f0000002b000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000005600000067000000d100000024000000400000006a0000003400000037",
            INIT_27 => X"0000000000000000000000000000000000000061000000170000004200000073",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000f00000000",
            INIT_2B => X"0000000600000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"0000009b000000b3000000000000006800000000000000210000000000000000",
            INIT_2D => X"000000a900000098000000a00000007d000000c10000007c0000009c0000007d",
            INIT_2E => X"000000000000000000000000000000000000001c00000006000000b0000000c2",
            INIT_2F => X"0000000000000000000000000000000000000000000000110000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"00000050000000510000004b0000006100000062000000000000000000000000",
            INIT_35 => X"0000005a0000005e0000005b0000005300000088000000610000004100000049",
            INIT_36 => X"0000003c000000730000005f00000076000000600000005a000000680000002a",
            INIT_37 => X"0000005c0000005d00000041000000460000007b0000004e0000006d00000076",
            INIT_38 => X"0000002e0000002300000015000000100000004f0000003b0000004600000097",
            INIT_39 => X"000000000000000d00000000000000000000000000000000000000000000002f",
            INIT_3A => X"000000570000007b000000730000006300000000000000000000000000000000",
            INIT_3B => X"0000000500000040000000430000007000000045000000480000004b00000056",
            INIT_3C => X"00000024000000000000001e00000022000000320000002b0000004400000012",
            INIT_3D => X"00000021000000210000000000000009000000000000005d000000070000003c",
            INIT_3E => X"000000000000002b000000170000001900000015000000000000000600000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_GOLD_LAYER1_ENTITY1;


    MEM_GOLD_LAYER1_ENTITY2 : if BRAM_NAME = "gold_layer1_entity2" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000004a0000005e0000005a0000000000000000000000000000000000000000",
            INIT_01 => X"0000002600000000000000360000003c0000004700000031000000260000002c",
            INIT_02 => X"0000003100000046000000020000000e000000500000003e0000003a00000026",
            INIT_03 => X"00000035000000440000005a00000026000000350000003f0000002d0000002e",
            INIT_04 => X"0000001d000000000000002c00000008000000000000001c0000004400000049",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000200000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000001100000032000000000000000a00000000000000170000000000000000",
            INIT_09 => X"000000000000002e00000000000000000000004c000000000000001100000000",
            INIT_0A => X"000000000000000000000011000000000000001c000000760000000000000002",
            INIT_0B => X"0000003e000000180000001a000000860000007b000000120000006e00000000",
            INIT_0C => X"000001160000004c0000004800000035000000330000003d000000af00000000",
            INIT_0D => X"000000f0000000be000000c10000006c00000074000000d1000000be0000010a",
            INIT_0E => X"0000007b0000003e000000550000002b00000003000000350000001500000096",
            INIT_0F => X"000000110000005700000064000000400000001000000000000000340000001c",
            INIT_10 => X"0000002f0000002700000030000000400000001f00000040000000000000000a",
            INIT_11 => X"0000000000000000000000000000000000000000000000370000007600000017",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"00000009000000000000006c000000000000002b000000000000000000000000",
            INIT_14 => X"000000000000006f000000840000006500000000000000970000000000000000",
            INIT_15 => X"0000000000000079000000c400000062000000b000000000000000ed00000000",
            INIT_16 => X"0000007600000025000000000000004600000000000000920000000000000053",
            INIT_17 => X"0000002400000000000000a20000000000000000000000000000001f00000053",
            INIT_18 => X"00000000000000000000000b0000000000000011000000060000000000000000",
            INIT_19 => X"00000024000000320000005c000000110000001e000000000000000600000000",
            INIT_1A => X"00000042000000260000002c00000046000000340000008a000000500000009e",
            INIT_1B => X"0000002a000000220000003600000022000000970000002e0000005900000036",
            INIT_1C => X"000000a6000000af000000170000001f00000000000000270000003500000031",
            INIT_1D => X"00000028000000bd0000009a0000001c0000002100000066000000370000002b",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000001000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000001f0000000b000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000001800000030000000000000000000000000000000000000000000000000",
            INIT_23 => X"000000860000007e000000470000000000000019000000200000002a00000005",
            INIT_24 => X"000000a3000000ae0000007d000000d0000000b0000000b3000000a70000008a",
            INIT_25 => X"0000000000000000000000000000000200000000000000e1000000bf000000ac",
            INIT_26 => X"0000004e000000000000002a0000002f00000004000000000000000000000000",
            INIT_27 => X"000000000000003a000000000000005300000000000000650000000000000000",
            INIT_28 => X"0000001c00000000000000250000000000000050000000000000000500000011",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000008b00000000",
            INIT_2A => X"0000001200000000000000000000000400000000000000220000000000000000",
            INIT_2B => X"000000000000000000000000000000000000000a000000240000000d00000018",
            INIT_2C => X"000000330000000000000000000000120000005000000004000000000000004d",
            INIT_2D => X"000000000000009100000000000000000000003f000000000000001e00000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000250000000000000000",
            INIT_2F => X"00000000000000000000007700000000000000000000000a0000004400000000",
            INIT_30 => X"00000000000000a6000000050000004200000067000000000000000000000000",
            INIT_31 => X"0000000000000003000000000000000b00000038000000410000003000000061",
            INIT_32 => X"000000230000004e000000290000000000000000000000000000000000000000",
            INIT_33 => X"000000000000006f0000002d0000000000000023000000000000002200000000",
            INIT_34 => X"00000000000000000000000000000000000000000000005c0000002e00000005",
            INIT_35 => X"0000000000000000000000000000002c0000002e000000030000002b00000000",
            INIT_36 => X"00000000000000530000005e0000005e00000000000000000000000000000000",
            INIT_37 => X"000000b000000090000000390000003000000036000000300000000000000000",
            INIT_38 => X"00000079000000b40000006a000000680000004a0000006700000067000000a2",
            INIT_39 => X"00000000000000420000006a0000003400000043000000140000003b00000025",
            INIT_3A => X"00000027000000000000002c0000002200000000000000240000000000000034",
            INIT_3B => X"0000000000000000000000080000001700000033000000000000003c00000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000046",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000001700000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000010000002d0000000a000000160000000000000000",

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_GOLD_LAYER1_ENTITY2;


    MEM_GOLD_LAYER1_ENTITY3 : if BRAM_NAME = "gold_layer1_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000008000000000000001e000000450000002f000000120000001700000003",
            INIT_01 => X"0000003a00000027000000390000004200000060000000000000000200000015",
            INIT_02 => X"000000880000007e0000007e000000480000000700000069000000260000003a",
            INIT_03 => X"000000ab000000a90000009e000000960000009200000066000000bb00000096",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
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

            -- The next set of INITP_xx are for the parity bits
            INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000"
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
    end generate MEM_GOLD_LAYER1_ENTITY3;

    MEM_EMPTY_18Kb : if BRAM_NAME = "default" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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
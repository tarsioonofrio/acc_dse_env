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
        INPUT_SIZE : integer := 8;
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
            INIT_00 => X"fffff8e0fffff509fffffe76fffff1700000007300003001ffffb7b000002a0c",
            INIT_01 => X"00000521000006a4ffffe7efffffe73100000dc2000015ce00000b7a000016b3",
            INIT_02 => X"fffff645fffffd10fffff0830000234200000bd500002323fffff8a100000a63",
            INIT_03 => X"00000f0a00000270000017c2ffffddff000007d6ffffee1e000018e600002a49",
            INIT_04 => X"00000006fffffff5fffffff200000000ffffffedfffffffaffffffedfffffff7",
            INIT_05 => X"fffffff200000005ffffffefffffffd7ffffffcffffffffd00000017ffffffdd",
            INIT_06 => X"00000010ffffffe9fffffffdffffffe400000005ffffffebffffffebffffffdc",
            INIT_07 => X"fffffff500000002ffffffdcffffffe2ffffffd10000000800000004fffffff5",
            INIT_08 => X"fffffffeffffffd3ffffffdfffffffdcffffffeaffffffdefffffff70000000c",
            INIT_09 => X"fffffffffffffffb00000000ffffffe80000001c000000140000000900000013",
            INIT_0A => X"00000000ffffffeafffffff600000004fffffff900000015fffffffcfffffff5",
            INIT_0B => X"ffffffe4fffffffa0000001600000013ffffffecfffffffcfffffffaffffffea",
            INIT_0C => X"fffffff900000009ffffffeaffffffe40000001cfffffff20000001a00000004",
            INIT_0D => X"ffffffed00000007fffffff3fffffff4ffffffe4ffffffe2fffffff500000015",
            INIT_0E => X"fffffff800000000fffffff00000000fffffffdbfffffff1ffffffe2ffffffd9",
            INIT_0F => X"ffffffd4ffffffd7fffffff4fffffff5ffffffe2ffffffdaffffffefffffffda",
            INIT_10 => X"fffffff8ffffffe3ffffffd0ffffffe40000000000000016ffffffe80000000c",
            INIT_11 => X"fffffff9ffffffe6ffffffd0ffffffdd00000005fffffff20000000e00000003",
            INIT_12 => X"fffffff3ffffffedffffffe3ffffffdbffffffe0fffffffa000000170000000d",
            INIT_13 => X"00000006ffffffef00000000ffffffe700000013ffffffe5fffffffbffffffde",
            INIT_14 => X"00000004ffffffe6ffffffeaffffffea00000012000000050000000a0000000d",
            INIT_15 => X"fffffff9fffffffafffffffc00000000ffffffdcffffffdaffffffe0fffffff5",
            INIT_16 => X"00000014000000150000002c000000090000000a0000001efffffff5ffffffee",
            INIT_17 => X"0000000e0000001600000016ffffffff0000000afffffffe00000013ffffffed",
            INIT_18 => X"0000001400000014000000080000000bfffffffdffffffea00000000ffffffe8",
            INIT_19 => X"ffffffeefffffff6000000000000003000000026000000150000000d0000000f",
            INIT_1A => X"fffffff1ffffffd2ffffffcbffffffe200000027000000360000001200000029",
            INIT_1B => X"000000570000004f000000040000003c0000002e0000000a000000360000000c",
            INIT_1C => X"00000009fffffff4ffffffecffffffdfffffffd4ffffffd9000000110000001a",
            INIT_1D => X"ffffffed0000000a0000000000000007ffffffafffffffc1ffffffe600000004",
            INIT_1E => X"0000001d00000031fffffff8fffffffafffffff0ffffffe0ffffffc3ffffffd7",
            INIT_1F => X"0000001400000058000000110000003d0000006800000030fffffff00000000f",
            INIT_20 => X"ffffffde0000000f0000000a00000030ffffffe800000012fffffff7ffffffd4",
            INIT_21 => X"00000001ffffffdd0000003a0000003f0000004e000000590000006000000062",
            INIT_22 => X"00000029000000490000003700000017000000120000000bfffffff6ffffffe6",
            INIT_23 => X"00000006ffffffe600000003ffffffea0000001000000011fffffff800000017",
            INIT_24 => X"fffffffb00000005fffffffafffffffb0000001affffffecffffffc7ffffffbf",
            INIT_25 => X"ffffffee0000002b000000210000001e0000001200000004000000210000003d",
            INIT_26 => X"000000350000000d00000009fffffff8ffffffd2ffffffe9ffffffe30000000b",
            INIT_27 => X"0000001c000000220000000600000002ffffffdeffffffdaffffffc8ffffffca",
            INIT_28 => X"00000009ffffffc5ffffffef0000001effffffbf0000000600000032ffffffe4",
            INIT_29 => X"00000009ffffffd20000001700000002ffffffe200000004fffffff6ffffffce",
            INIT_2A => X"fffffff60000002c000000110000001ffffffff2ffffffca0000001bfffffff4",
            INIT_2B => X"fffffff800000008000000070000003bffffffae000000190000005fffffffb2",
            INIT_2C => X"000000130000005effffffd7fffffffe00000012ffffffd0ffffffd900000001",
            INIT_2D => X"fffffff3ffffffe4ffffffeafffffffbfffffffc0000001effffffee0000001a",
            INIT_2E => X"fffffff7ffffffcf000000000000001f0000000300000005ffffffa400000056",
            INIT_2F => X"00000017ffffff630000008b0000000bffffff8a000000460000001d0000001f",
            INIT_30 => X"0000000bffffffdd00000014ffffffeafffffff300000016ffffffd4ffffffff",
            INIT_31 => X"00000014fffffff0ffffffe60000001bffffffeafffffff7fffffff4ffffffdc",
            INIT_32 => X"fffffff7ffffffe2fffffff700000017fffffff6ffffffe10000001400000022",
            INIT_33 => X"fffffff5ffffffef00000033ffffffe5fffffff00000006200000002ffffffed",
            INIT_34 => X"0000000f00000023fffffffeffffffdb0000004500000013ffffff9200000050",
            INIT_35 => X"00000005ffffffbb0000001a0000001cffffff73000000470000000cffffff49",
            INIT_36 => X"000000570000001bffffff68000000540000000e00000012ffffffd2fffffffa",
            INIT_37 => X"fffffff2ffffffd6ffffffe900000019fffffffdfffffff60000000800000003",
            INIT_38 => X"0000001200000022fffffff8fffffffd00000004ffffffd50000000100000042",
            INIT_39 => X"ffffffaa0000000100000045ffffffc90000000dfffffffafffffffbffffffd8",
            INIT_3A => X"0000001b0000001cfffffff400000030ffffffe3fffffff4ffffffdd00000000",
            INIT_3B => X"fffffffb00000016fffffff80000001efffffff3ffffffeb00000011ffffffdc",
            INIT_3C => X"0000001600000036ffffffaeffffffe60000001effffffee0000000b0000003b",
            INIT_3D => X"00000006fffffff30000002dffffffb5ffffffdeffffffe3ffffff83ffffffc4",
            INIT_3E => X"0000000affffffa7ffffffef00000040ffffffc50000000000000024fffffff5",
            INIT_3F => X"0000004200000014000000160000001affffffe30000000a0000000effffffee",

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
            INIT_00 => X"ffffffe6ffffffe300000009ffffffd9fffffff0fffffffb000000160000002a",
            INIT_01 => X"000000470000004c0000001c0000001c00000047fffffffe0000000400000029",
            INIT_02 => X"ffffffdfffffffe800000011ffffffc8ffffffdbffffffe1fffffff9fffffff0",
            INIT_03 => X"0000001fffffffe2ffffffe6ffffffcdffffffc100000008ffffffac00000000",
            INIT_04 => X"fffffff9ffffffdeffffffef0000002dffffffef0000001100000016ffffffd7",
            INIT_05 => X"0000000f0000003000000000ffffffceffffffcdffffffceffffffca0000000d",
            INIT_06 => X"ffffff94ffffffc800000002ffffffd9fffffff90000000bffffffed0000000e",
            INIT_07 => X"0000003f00000001000000170000002800000016000000420000004d00000050",
            INIT_08 => X"0000004f0000003c000000490000002afffffff2ffffffca0000003100000039",
            INIT_09 => X"0000000f00000032ffffffea0000003a0000002a00000021ffffffe200000012",
            INIT_0A => X"0000000cffffffc40000001b00000019ffffffdb0000002900000006ffffffe9",
            INIT_0B => X"ffffffaeffffff8cffffffc0ffffff9fffffffdcffffffaaffffffd2ffffffec",
            INIT_0C => X"0000000f00000015fffffff0fffffff60000000affffffd5ffffffec00000034",
            INIT_0D => X"ffffffd500000018ffffffe70000000600000005ffffffe00000000bfffffffe",
            INIT_0E => X"fffffff2fffffffcfffffff8fffffff4000000050000002cffffffcc00000025",
            INIT_0F => X"0000002fffffffc0000000270000000c00000044ffffffd2ffffffda00000061",
            INIT_10 => X"ffffffacffffffe50000004affffffc800000003fffffff0ffffffe5ffffffca",
            INIT_11 => X"ffffffccffffffd50000001dffffffc40000000efffffffd0000000cffffffee",
            INIT_12 => X"0000000c0000002effffffd8fffffff100000019ffffffc50000001bffffffbb",
            INIT_13 => X"0000001900000039ffffff380000006800000031ffffff6a0000005f0000002b",
            INIT_14 => X"0000000500000019ffffffe600000033000000050000000f00000039ffffffc7",
            INIT_15 => X"0000000000000003fffffff3fffffffbfffffffbffffffddffffffcc00000007",
            INIT_16 => X"ffffffc40000000ffffffff7ffffffeefffffff800000000fffffff100000029",
            INIT_17 => X"fffffffcffffffebffffffd10000002cffffffe9ffffffcb0000003effffffe1",
            INIT_18 => X"ffffffbf00000039ffffffd30000001dffffffda000000230000001effffffa5",
            INIT_19 => X"0000002a0000002affffff780000005b0000001cffffffd00000001200000054",
            INIT_1A => X"ffffff860000004e00000059ffffff670000007f0000002000000004fffffff3",
            INIT_1B => X"0000001effffffe2000000170000000f00000003fffffffa0000000d00000016",
            INIT_1C => X"ffffffe8fffffffe0000001cffffffc40000003100000000ffffffe7ffffffde",
            INIT_1D => X"00000033ffffffc9ffffffd300000060ffffff81000000090000004cffffffac",
            INIT_1E => X"00000013ffffffeffffffff1fffffff0fffffff1ffffffec0000000700000004",
            INIT_1F => X"fffffff900000010fffffff400000019ffffffc6ffffffffffffffe0ffffffdb",
            INIT_20 => X"ffffffbeffffffc500000011fffffffa00000023ffffffe90000001000000011",
            INIT_21 => X"0000000f00000001000000210000002f000000050000000c0000000a00000008",
            INIT_22 => X"000000110000003afffffffdffffffedffffff91ffffff90ffffff88ffffff69",
            INIT_23 => X"ffffff23ffffff8bffffff7dffffff7dffffff94000000220000000cfffffff9",
            INIT_24 => X"0000001afffffffaffffffe60000003800000017ffffffe10000000e00000027",
            INIT_25 => X"00000012fffffffd0000002300000009fffffffd0000000fffffffe80000000d",
            INIT_26 => X"0000001600000015ffffffefffffffec0000001f0000000f0000001200000009",
            INIT_27 => X"00000006ffffffd6ffffffebffffffc5ffffffb1ffffffa8ffffffaeffffffa5",
            INIT_28 => X"ffffff9bffffffde0000000affffffe300000017fffffff6ffffffdbfffffffe",
            INIT_29 => X"fffffff000000015ffffffe7ffffffb7fffffff7ffffffc3ffffff87ffffff84",
            INIT_2A => X"ffffffbcffffff94ffffff8e0000000fffffffed0000001ffffffffeffffffff",
            INIT_2B => X"00000020ffffffe7000000010000000bffffffe3000000230000000700000010",
            INIT_2C => X"0000002800000007000000140000002f00000002ffffff8fffffff7effffffa9",
            INIT_2D => X"ffffff71ffffff70ffffffb0ffffffadffffffc8ffffffe3fffffff700000002",
            INIT_2E => X"ffffffe200000012ffffffe5ffffffcd0000001c0000000c00000001fffffff8",
            INIT_2F => X"0000000dffffffee000000000000001e0000000a000000130000001900000022",
            INIT_30 => X"0000001600000028fffffffcfffffff70000001dfffffff0000000260000003b",
            INIT_31 => X"000000170000001b0000002fffffffddfffffffdfffffff30000000dffffffd5",
            INIT_32 => X"ffffffd9ffffffd30000003200000010000000280000002a0000000400000008",
            INIT_33 => X"00000014000000030000000c0000002c0000002fffffffea0000001dfffffff7",
            INIT_34 => X"0000000dfffffffd00000018fffffff0fffffffd00000042ffffffd700000030",
            INIT_35 => X"00000030000000210000001b0000000a0000000dffffffc3ffffffe3fffffff2",
            INIT_36 => X"ffffffeffffffffbffffffff000000440000003f0000000bffffffea00000006",
            INIT_37 => X"0000000300000021000000190000002f00000019000000350000000fffffffac",
            INIT_38 => X"ffffff9bffffffaefffffffcfffffffc000000010000001d0000002700000013",
            INIT_39 => X"ffffffecffffffdbffffffddfffffff700000002ffffffe6fffffff10000003c",
            INIT_3A => X"000000160000002b000000080000000ffffffffbfffffff30000000000000019",
            INIT_3B => X"ffffffdf0000000d000000330000002500000028fffffffa00000016ffffffe7",
            INIT_3C => X"fffffffd0000000dffffffcf000000370000001000000006000000050000000f",
            INIT_3D => X"0000000effffffcdffffffcd0000000e00000018000000260000003600000027",
            INIT_3E => X"fffffff900000006ffffffe9ffffffbeffffffe2000000160000000affffffea",
            INIT_3F => X"0000000fffffffe5ffffffd800000002ffffffd6ffffffdfffffffc500000009",

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
            INIT_00 => X"fffffff0000000200000001c0000001f0000002d0000001800000029ffffffd6",
            INIT_01 => X"0000000600000009ffffffcdffffffd500000026ffffffedffffffdeffffffc4",
            INIT_02 => X"ffffffddffffffdeffffffc7fffffff6ffffffdeffffffe9000000020000001f",
            INIT_03 => X"00000016ffffffeeffffffd700000000ffffffd6ffffffd8ffffffecffffffed",
            INIT_04 => X"ffffffd300000002fffffff1000000010000001cfffffff9fffffffefffffff5",
            INIT_05 => X"fffffff7000000000000000a00000002fffffffffffffffbfffffff4fffffff8",
            INIT_06 => X"00000000ffffffdcffffffef00000006000000260000002afffffff60000003c",
            INIT_07 => X"0000003b00000013000000440000004800000027fffffff50000000afffffff7",
            INIT_08 => X"fffffff5ffffffff000000120000002400000026000000070000000000000026",
            INIT_09 => X"0000003000000018000000030000002e00000016fffffff30000000cffffffcd",
            INIT_0A => X"ffffff92ffffffaaffffffc1ffffffaeffffff82ffffff9dffffffa0ffffff6b",
            INIT_0B => X"00000023ffffffdafffffff4000000040000001effffffe1ffffffcf00000006",
            INIT_0C => X"ffffffef00000000ffffffdf0000000bfffffff8fffffff1ffffffdf00000015",
            INIT_0D => X"0000001bffffffde0000002b0000002000000001000000210000003d0000000c",
            INIT_0E => X"000000020000001e00000021000000220000000000000020fffffff9ffffffff",
            INIT_0F => X"00000002ffffffff00000000ffffffecfffffffb00000015fffffff100000008",
            INIT_10 => X"ffffffe20000002000000002fffffff50000000efffffff2ffffffd0ffffffe0",
            INIT_11 => X"00000013ffffffdfffffffd1ffffffc8ffffffd8ffffffd8ffffffd0fffffff0",
            INIT_12 => X"ffffffe1fffffff4ffffffe20000000b00000008fffffff80000000d00000000",
            INIT_13 => X"fffffff2ffffffd4fffffffbfffffff8ffffffd0ffffffecffffffeafffffffc",
            INIT_14 => X"000000190000000d00000015fffffff1fffffffbfffffff500000000ffffffca",
            INIT_15 => X"ffffffb6ffffffe80000001b0000002bfffffff80000000cfffffff90000001c",
            INIT_16 => X"fffffff0000000250000000900000001ffffffe4fffffff6fffffff100000020",
            INIT_17 => X"ffffffe5ffffffe700000015fffffffc00000012000000100000002700000020",
            INIT_18 => X"000000120000000f000000120000001400000015ffffffc6ffffffd6ffffff8d",
            INIT_19 => X"ffffffb700000021ffffffd20000000f00000004000000230000000200000022",
            INIT_1A => X"00000006fffffffe00000012fffffff9ffffffecffffffe50000001afffffff9",
            INIT_1B => X"00000014ffffffef0000001a0000001dfffffff300000016000000110000001d",
            INIT_1C => X"0000000c0000000c000000260000001600000020000000150000000e0000000f",
            INIT_1D => X"00000027000000260000000c000000050000000efffffff90000000a0000002e",
            INIT_1E => X"000000000000002c0000001affffffff0000000affffffd7ffffffeb00000003",
            INIT_1F => X"ffffffe0ffffffd0fffffffe0000003f00000018000000490000003d00000021",
            INIT_20 => X"0000003f0000003900000029ffffffc4ffffffd7fffffff6ffffffd3fffffff8",
            INIT_21 => X"fffffff3fffffff300000010fffffffd00000031ffffffdeffffffebffffffea",
            INIT_22 => X"ffffffaaffffffd8fffffff0ffffffe50000001a0000000dffffffd3ffffffc4",
            INIT_23 => X"ffffffd2fffffff6fffffff8ffffffe400000029000000280000002300000013",
            INIT_24 => X"fffffff3fffffff4ffffffe6fffffff1ffffffd1ffffffbdffffffde00000018",
            INIT_25 => X"0000001efffffff1fffffffdfffffff1ffffffceffffffe4ffffffcbfffffff8",
            INIT_26 => X"0000002effffffe8ffffffc5ffffffedfffffffbffffffe8fffffff700000024",
            INIT_27 => X"00000004fffffff700000004fffffff50000002a0000001d0000000a00000038",
            INIT_28 => X"fffffff2fffffffd0000001c0000001300000014fffffff1ffffffebfffffffd",
            INIT_29 => X"00000002ffffffed00000004000000340000000ffffffff70000002600000025",
            INIT_2A => X"fffffffb0000001c0000001c000000070000000c000000060000000200000065",
            INIT_2B => X"000000380000002a000000350000001700000006ffffffe0fffffff7ffffffdd",
            INIT_2C => X"ffffffe8ffffffddffffffc3ffffffe5fffffff9ffffffcaffffffddffffffcb",
            INIT_2D => X"ffffffbcffffffa7ffffff78ffffff62fffffff5ffffff96ffffff9c00000035",
            INIT_2E => X"0000003b00000005ffffffc7ffffffbdffffffe9ffffffdcffffffbfffffffd7",
            INIT_2F => X"0000002effffffc700000010000000040000001dffffffdcfffffff700000023",
            INIT_30 => X"fffffff50000000a000000080000000000000019ffffffe2ffffffe9fffffffa",
            INIT_31 => X"0000001100000003000000000000001efffffff700000019000000120000001e",
            INIT_32 => X"0000001c0000001b00000023fffffff60000000e0000001afffffffafffffff8",
            INIT_33 => X"fffffff20000002b0000001b0000000fffffffb1ffffffa1ffffffc1fffffff2",
            INIT_34 => X"ffffffc1ffffffa5fffffffaffffffccffffffb4000000050000000effffffea",
            INIT_35 => X"000000400000003c0000003e0000000a0000003700000030ffffffe500000008",
            INIT_36 => X"00000016fffffff1ffffffe9fffffff7ffffffeb00000014ffffffedffffffe7",
            INIT_37 => X"fffffff8000000010000002c00000005000000080000002b0000002900000028",
            INIT_38 => X"ffffffe800000005ffffffeb0000000100000000fffffffefffffffb00000018",
            INIT_39 => X"fffffffb00000021ffffffe4fffffff400000011000000330000004bffffffe7",
            INIT_3A => X"fffffff50000002200000029000000110000001d000000240000000a0000001c",
            INIT_3B => X"ffffffe6ffffffe7fffffff3fffffff9ffffffed00000034000000050000001e",
            INIT_3C => X"ffffffedfffffff1ffffffe6ffffffe1fffffffb0000001d0000001800000012",
            INIT_3D => X"000000130000001e000000230000001b00000012000000130000000dffffffe1",
            INIT_3E => X"0000001400000024fffffffe000000130000000dffffffce0000003c00000001",
            INIT_3F => X"ffffffe70000001d0000003c0000000400000005000000350000003200000016",

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
            INIT_00 => X"00000000ffffffed00000042000000320000003e0000001b0000001b00000025",
            INIT_01 => X"fffffffc000000200000001500000041000000620000002a0000002b0000003a",
            INIT_02 => X"0000004400000018fffffffd000000090000000dfffffffa00000017ffffffe8",
            INIT_03 => X"ffffffccffffffca00000007000000190000000000000036000000520000004e",
            INIT_04 => X"000000140000003800000041ffffffeffffffffb000000020000000000000023",
            INIT_05 => X"0000002afffffffd00000011fffffff90000001b0000001e0000001400000002",
            INIT_06 => X"00000004ffffffeffffffff8ffffffe2000000090000000afffffff0fffffff2",
            INIT_07 => X"00000010ffffffdeffffffd400000019fffffff2ffffffc9fffffff400000013",
            INIT_08 => X"fffffffcfffffff90000000afffffffaffffffd9ffffffd3fffffffdfffffffa",
            INIT_09 => X"0000000900000023fffffffb0000001e00000000fffffff700000009fffffff8",
            INIT_0A => X"ffffffea000000000000002100000004000000080000002bfffffff700000013",
            INIT_0B => X"000000030000001ffffffffd00000017ffffffe4000000140000001efffffffb",
            INIT_0C => X"0000002d00000035000000050000000700000016ffffffdc00000010ffffffea",
            INIT_0D => X"ffffffe100000013fffffffcfffffff60000001a0000002affffffd5ffffffdc",
            INIT_0E => X"fffffff0ffffffceffffffbb00000015ffffffaeffffffd8ffffffe5ffffff4a",
            INIT_0F => X"ffffff45ffffff63ffffff74ffffff73ffffff65000000000000000fffffffe4",
            INIT_10 => X"0000000e0000000400000000fffffff60000001affffffe90000003100000013",
            INIT_11 => X"ffffffc90000005b00000022ffffffe70000003700000018ffffffdafffffff7",
            INIT_12 => X"fffffffaffffffcb0000002800000003ffffffd8000000510000002000000006",
            INIT_13 => X"ffffffe2ffffffd7ffffffc50000000200000011fffffffa0000004b0000002d",
            INIT_14 => X"0000001dffffffee0000002b00000037ffffffdb0000001e00000032ffffffcb",
            INIT_15 => X"000000010000000effffffc1ffffff7effffffccffffffc9ffffffc9ffffffd3",
            INIT_16 => X"ffffffcbffffffc6ffffffeb0000001600000001000000060000000b00000020",
            INIT_17 => X"00000013fffffff50000002d0000001900000032000000050000000c0000003f",
            INIT_18 => X"000000260000001b000000330000003700000015fffffffa0000000c00000022",
            INIT_19 => X"ffffff82ffffff99ffffffd1ffffffcbffffffc3fffffff30000001800000025",
            INIT_1A => X"fffffff800000018fffffffb0000001900000001ffffffe9ffffffcd00000002",
            INIT_1B => X"ffffffd900000027fffffff8000000150000001900000018000000190000001a",
            INIT_1C => X"ffffffecffffffe0fffffffaffffffe6ffffffddffffffee00000012fffffffe",
            INIT_1D => X"00000018fffffff000000011ffffffdf0000000c0000000cffffffd9fffffff8",
            INIT_1E => X"fffffffbffffffdc00000005fffffff400000012fffffffc0000000500000011",
            INIT_1F => X"ffffffeeffffffe100000016ffffffff00000011fffffff90000000000000000",
            INIT_20 => X"0000000efffffff6ffffffe2ffffffecffffffceffffff9fffffffa3ffffffcd",
            INIT_21 => X"ffffffc8ffffffbf00000012ffffffecffffffff0000000c0000000f0000001f",
            INIT_22 => X"0000000a000000140000000700000013fffffff900000018ffffffeefffffffe",
            INIT_23 => X"fffffffcffffffdeffffffdbffffffefffffffcffffffff100000012ffffffaf",
            INIT_24 => X"ffffffd0ffffffd2ffffffafffffffb0ffffffddffffffeeffffffcaffffffd6",
            INIT_25 => X"ffffff96ffffffa8ffffff97ffffffefffffffbdffffffe9fffffff400000013",
            INIT_26 => X"fffffff000000006fffffffd00000001fffffffe00000017000000230000001f",
            INIT_27 => X"0000002300000006ffffffadffffff63ffffff95ffffffc2ffffffb5ffffffc5",
            INIT_28 => X"ffffffc4ffffffe2ffffffde0000001700000014fffffff8ffffffe100000008",
            INIT_29 => X"fffffffb0000000a00000009fffffff00000000b0000001e0000000300000012",
            INIT_2A => X"fffffff7fffffff0000000170000000e00000011fffffff100000000ffffffb1",
            INIT_2B => X"ffffffe8ffffffcfffffffef0000001f0000002800000014ffffffecfffffffb",
            INIT_2C => X"fffffff30000000d0000000f00000008ffffffe3fffffffbffffffdefffffff3",
            INIT_2D => X"ffffffd7ffffffd0ffffffef0000000bffffffcdfffffffd00000028fffffff7",
            INIT_2E => X"ffffffcd0000000d00000001ffffffd9fffffffe0000001c0000000100000023",
            INIT_2F => X"0000002a00000010ffffffeffffffff90000000effffffe0ffffffec0000000a",
            INIT_30 => X"fffffffbffffffdd00000003fffffff200000011ffffffffffffffdffffffff5",
            INIT_31 => X"0000001b0000000a00000010000000030000000300000016ffffffedfffffff2",
            INIT_32 => X"00000003fffffffdfffffff1fffffff10000003d000000140000002c0000006a",
            INIT_33 => X"0000005f0000005c000000690000004d00000075ffffffbbffffffc6ffffffb6",
            INIT_34 => X"ffffffaefffffff8fffffffb000000200000001e00000029ffffffc0ffffffd2",
            INIT_35 => X"ffffffc3ffffffa9ffffff95ffffffc6ffffffd3ffffffcbffffffe9ffffff9b",
            INIT_36 => X"ffffffa7ffffffbdffffffbdffffffb5ffffffb50000001b0000002700000013",
            INIT_37 => X"0000002b00000007ffffffe20000002c0000004400000014ffffffe90000001e",
            INIT_38 => X"00000002fffffff10000001e0000001100000000fffffff10000000100000000",
            INIT_39 => X"ffffffee0000000f0000001c0000001900000005000000020000000700000009",
            INIT_3A => X"00000010fffffff9ffffffd100000029000000030000001900000007ffffffec",
            INIT_3B => X"0000000bfffffffdffffffd8fffffffe0000000c0000001e00000002fffffff5",
            INIT_3C => X"0000000e000000150000000cffffffe200000007fffffffcfffffff7fffffffd",
            INIT_3D => X"0000004f0000003a00000028000000600000003b00000032ffffffcffffffff2",
            INIT_3E => X"fffffff4fffffffb00000018ffffffedfffffffbffffffff00000038fffffffa",
            INIT_3F => X"ffffffe3fffffff6fffffff8ffffffe6fffffffbfffffff60000001600000008",

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
            INIT_00 => X"00000006fffffff0fffffffd0000001800000007fffffffafffffffefffffff0",
            INIT_01 => X"fffffff0ffffffdf000000000000002effffffe1fffffffa00000006ffffffb6",
            INIT_02 => X"ffffffdbfffffff2fffffffdfffffffe0000001fffffffdfffffffe1ffffffec",
            INIT_03 => X"00000000000000090000000100000019000000060000001f0000001e00000008",
            INIT_04 => X"00000005fffffffe00000005ffffffebffffff63ffffff56ffffffe3fffffef2",
            INIT_05 => X"fffffeb6ffffff1bffffff33ffffff1effffff2f0000003c0000002bffffffed",
            INIT_06 => X"0000002900000019fffffff30000003b000000270000000000000019fffffffd",
            INIT_07 => X"fffffff80000003900000003fffffff2000000110000000cffffffea0000001e",
            INIT_08 => X"fffffff6000000000000000f00000004fffffffb00000051000000190000002a",
            INIT_09 => X"00000000ffffffd7000000100000002dffffffef0000002c00000013fffffff5",
            INIT_0A => X"fffffff3000000240000000d0000000bffffffebfffffff50000001ffffffffd",
            INIT_0B => X"0000000ffffffffffffffff0ffffffd3ffffffeaffffffddffffffe3ffffffde",
            INIT_0C => X"ffffffe6ffffffc7fffffffafffffffefffffffd00000001ffffffdefffffffb",
            INIT_0D => X"0000001cfffffff2ffffffd7ffffffe4000000240000001effffffea00000017",
            INIT_0E => X"fffffff7ffffffdc00000006fffffffcfffffff8ffffff88ffffff7c0000000e",
            INIT_0F => X"ffffff12ffffff3affffff5dffffff6bffffff38ffffff840000001f00000003",
            INIT_10 => X"fffffff8000000110000002100000001ffffffedfffffffeffffffecffffffcd",
            INIT_11 => X"fffffff5fffffff0ffffffd1ffffffe5fffffff900000000ffffffea00000013",
            INIT_12 => X"000000330000002efffffff6ffffffe7000000160000001d0000003000000033",
            INIT_13 => X"0000000b0000002ffffffff40000001a0000002900000001ffffffdf00000016",
            INIT_14 => X"fffffff4fffffff4fffffffa0000000f00000015fffffffbffffffd0ffffffe9",
            INIT_15 => X"fffffff9ffffffc8ffffffd0ffffffffffffffecfffffffdfffffff900000003",
            INIT_16 => X"ffffffedffffffe5ffffffdc00000009ffffffdaffffffecfffffff3fffffff6",
            INIT_17 => X"ffffffb000000007ffffffd1ffffffeb00000001ffffffe6ffffffe3ffffffe0",
            INIT_18 => X"ffffffeefffffffefffffff2ffffffe5ffffffe700000001ffffffceffffffb3",
            INIT_19 => X"ffffffabffffffc4ffffffaeffffffc3ffffff92ffffff8dffffffbeffffff52",
            INIT_1A => X"ffffffa2ffffffd6ffffff83ffffff75ffffffb4ffffff94ffffff75ffffff90",
            INIT_1B => X"ffffffd3ffffffd9ffffffdfffffffcaffffffe5ffffffd6ffffffc2ffffffc7",
            INIT_1C => X"ffffffc40000002b0000002500000001000000270000001f0000001f00000014",
            INIT_1D => X"000000170000000100000021ffffffee00000010ffffffebfffffff9ffffffea",
            INIT_1E => X"fffffff1ffffffe4000000070000000b00000014000000270000000700000000",
            INIT_1F => X"0000000a0000001c00000023fffffffffffffffd0000003f0000000e00000016",
            INIT_20 => X"0000004a0000002800000028000000360000003fffffffe90000001cffffffc0",
            INIT_21 => X"ffffffcbffffffec00000001000000190000000c0000000fffffffdb00000008",
            INIT_22 => X"0000001000000000ffffffddfffffffeffffffceffffffebffffffe500000026",
            INIT_23 => X"0000001d0000000d0000003800000065000000690000004d0000007e00000073",
            INIT_24 => X"000000280000002b00000007fffffffc00000012fffffffeffffffeaffffffe3",
            INIT_25 => X"ffffffd5ffffffbeffffff8dffffffb900000019000000200000002400000036",
            INIT_26 => X"0000002d0000004600000011000000190000000700000016fffffff4fffffff1",
            INIT_27 => X"ffffffdcfffffff4fffffff0ffffffc8ffffffbbffffffe8000000080000001e",
            INIT_28 => X"ffffffe60000001a0000002000000025000000410000001d000000220000000e",
            INIT_29 => X"000000170000001b0000002afffffff0ffffffcf000000360000005000000020",
            INIT_2A => X"00000012ffffffedfffffff8ffffffd8ffffffaaffffffd70000004f00000048",
            INIT_2B => X"00000023ffffffecffffffe900000004ffffffd0ffffffa2ffffffd900000062",
            INIT_2C => X"0000007d0000004d000000040000001dfffffffaffffffb7ffffff8effffffab",
            INIT_2D => X"0000004200000032000000260000001d000000170000001affffffbfffffffda",
            INIT_2E => X"ffffffeaffffffe0ffffffdafffffff60000001300000016000000150000000f",
            INIT_2F => X"0000000400000024ffffffc0ffffffb7ffffffc10000000e00000010ffffffff",
            INIT_30 => X"0000002a0000002900000021ffffffdbffffffa6ffffffb5fffffff10000000b",
            INIT_31 => X"00000007000000410000004600000031fffffffefffffff700000011ffffffe8",
            INIT_32 => X"fffffff5ffffffe1fffffff9ffffffd8ffffffe5000000250000000bfffffff3",
            INIT_33 => X"0000001600000015000000110000002b00000000fffffffefffffffd00000004",
            INIT_34 => X"00000033fffffffa0000001000000019ffffffe2ffffffddffffffc300000019",
            INIT_35 => X"0000002f00000028000000100000000d00000004ffffffddffffffcbffffffc0",
            INIT_36 => X"fffffffbffffffe9ffffffeffffffff800000000fffffffeffffffcaffffffe7",
            INIT_37 => X"ffffffdc0000000afffffff3ffffffdf00000014000000370000000600000024",
            INIT_38 => X"0000000300000025fffffff2000000230000003600000001fffffff30000002e",
            INIT_39 => X"fffffff200000002fffffff9000000230000002a0000001a0000000000000010",
            INIT_3A => X"0000001600000014fffffffa0000000c0000002e00000013fffffffe00000036",
            INIT_3B => X"00000001000000080000000600000020fffffff5ffffffdcffffffe3ffffffe6",
            INIT_3C => X"ffffffecffffffef00000003fffffff1fffffff7fffffff8fffffffb0000000f",
            INIT_3D => X"00000010000000010000000a000000130000002700000012000000380000000b",
            INIT_3E => X"0000001fffffffe8000000600000005a0000001f000000420000003a00000049",
            INIT_3F => X"0000002100000017fffffff4000000220000003d0000002c0000002600000016",

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
            INIT_00 => X"0000001affffffe90000000000000028fffffff50000000c00000024ffffffe3",
            INIT_01 => X"0000000e0000000400000015fffffff7ffffffe90000001b00000026ffffffc7",
            INIT_02 => X"fffffff7ffffffdbffffffd80000001efffffffd0000001c0000001f0000002b",
            INIT_03 => X"000000280000001d0000001300000030ffffffd1fffffffb00000023fffffff2",
            INIT_04 => X"ffffffe8ffffffdcffffffdaffffffd7ffffffe3fffffff100000010ffffffe5",
            INIT_05 => X"0000002800000005000000080000002100000011fffffffcfffffff80000001d",
            INIT_06 => X"ffffffea0000001affffffeffffffff3ffffffeafffffff0ffffffe7ffffffc6",
            INIT_07 => X"ffffffbeffffffb8ffffffb5ffffffd3ffffffcdffffffd3ffffffcaffffffa8",
            INIT_08 => X"000000310000002d000000110000003d00000036000000200000001900000033",
            INIT_09 => X"00000021000000450000002d00000052000000430000000f0000000000000063",
            INIT_0A => X"000000250000001500000036000000110000001500000002fffffff600000057",
            INIT_0B => X"0000000e0000002a00000037ffffffe4fffffff2ffffff96ffffffa7ffffff8b",
            INIT_0C => X"ffffffa6ffffffbfffffffa800000018ffffffcbffffffe300000012ffffffbb",
            INIT_0D => X"ffffffe000000029ffffffe6ffffffff00000012ffffffe70000000dffffffd7",
            INIT_0E => X"ffffffe100000004ffffffeaffffffcffffffffb0000000bffffffb7ffffffbf",
            INIT_0F => X"ffffffb1ffffffe3ffffffca0000000e0000000a0000000300000003ffffffe2",
            INIT_10 => X"fffffffeffffffe7fffffff40000000a00000020ffffffe90000002900000021",
            INIT_11 => X"ffffffe5fffffff4ffffffe6fffffff1000000110000000cffffffdf0000000a",
            INIT_12 => X"00000030fffffff000000001ffffffcdffffffdbffffffc8ffffffd2ffffffbe",
            INIT_13 => X"ffffffe1fffffffeffffffce0000003d000000060000000ffffffffa00000010",
            INIT_14 => X"fffffffdfffffff500000032000000230000001b000000270000000fffffffd2",
            INIT_15 => X"0000000e00000019ffffffeffffffffa0000003c000000080000000100000004",
            INIT_16 => X"0000002c00000020000000040000003e0000001affffffffffffffeb0000002b",
            INIT_17 => X"ffffffd9fffffffa00000049fffffff500000031000000220000000900000023",
            INIT_18 => X"fffffff00000000f0000002400000022ffffffe1fffffff80000002e00000040",
            INIT_19 => X"000000560000003f0000004d000000440000004e0000002c0000002000000030",
            INIT_1A => X"0000001cfffffffaffffffe70000000f00000015fffffffc0000000b00000020",
            INIT_1B => X"ffffffedfffffff9ffffffc4ffffffc9ffffffa8ffffffbaffffffdcffffffcb",
            INIT_1C => X"ffffffbdffffffcdfffffff2ffffffe40000000e0000001b0000000000000002",
            INIT_1D => X"0000000b0000000000000009fffffff5ffffffeb00000003000000160000001f",
            INIT_1E => X"000000000000002500000008fffffff5ffffffedfffffffbfffffffbffffffe8",
            INIT_1F => X"ffffffebffffffdeffffffdd0000001b0000003500000019fffffffdffffffff",
            INIT_20 => X"0000001c0000000300000009000000180000002900000026fffffff90000000f",
            INIT_21 => X"ffffffe70000000bfffffff3ffffffe70000001900000015ffffffeaffffffde",
            INIT_22 => X"fffffff5ffffffc9ffffffd9fffffff4ffffffe8ffffffd6ffffffb6ffffffcc",
            INIT_23 => X"fffffff80000000affffffffffffffdeffffffdb00000007fffffffdffffffe7",
            INIT_24 => X"fffffff700000019fffffff7000000120000001300000011ffffffef00000010",
            INIT_25 => X"0000000700000017fffffffbffffffe4fffffffd0000000ffffffffd00000009",
            INIT_26 => X"00000004ffffffee00000007ffffffddffffffd7ffffffe0fffffffaffffffce",
            INIT_27 => X"ffffffecffffffe4fffffff9fffffff7fffffffa0000001afffffff000000010",
            INIT_28 => X"0000000affffffe8ffffffe10000002400000017ffffffc1ffffffc9ffffffc7",
            INIT_29 => X"ffffffcfffffffb900000009ffffffc6ffffffbcffffffcf0000001c00000016",
            INIT_2A => X"0000000f0000001e00000019ffffffef0000001e0000000100000002ffffffe6",
            INIT_2B => X"00000006ffffffe00000000a00000004ffffffeffffffff2ffffffdfffffffff",
            INIT_2C => X"000000050000001400000019000000190000000200000012fffffff200000035",
            INIT_2D => X"00000022ffffffec0000000000000003ffffffd3ffffffd70000000afffffff5",
            INIT_2E => X"ffffffeb00000003ffffffc0ffffffc2fffffff7ffffffd2ffffffdfffffffd1",
            INIT_2F => X"00000005fffffff6ffffffe6ffffffdaffffffefffffffd2ffffffe3ffffffe4",
            INIT_30 => X"ffffffecffffffe6ffffffe9fffffff40000002500000015fffffff8fffffff8",
            INIT_31 => X"fffffff900000023fffffff6fffffffa000000020000000d0000002100000014",
            INIT_32 => X"fffffffc0000000bfffffff1000000210000000800000010ffffffedffffffe3",
            INIT_33 => X"ffffffdfffffffc5ffffffcaffffffe900000012fffffff3ffffffddffffffe9",
            INIT_34 => X"fffffff7ffffffd2ffffffe3ffffffe0ffffffe6ffffffedffffffdeffffffe3",
            INIT_35 => X"0000000f0000000ffffffffb00000004fffffff5fffffff10000001bfffffffb",
            INIT_36 => X"ffffffe00000001300000003ffffffee000000060000000600000005fffffff7",
            INIT_37 => X"00000015000000020000000800000023000000010000000e000000190000001a",
            INIT_38 => X"fffffffe0000000c0000003100000007fffffffa00000008fffffff3ffffffe3",
            INIT_39 => X"ffffffd5fffffffdffffffdaffffffdb000000040000002c0000003e00000006",
            INIT_3A => X"0000000f0000003f000000080000003500000016fffffff40000000a00000005",
            INIT_3B => X"fffffff5ffffffdb00000000ffffffd0ffffffef0000000bffffffe6ffffffdd",
            INIT_3C => X"0000000e0000000bfffffff5000000080000001dffffffe7fffffff80000000e",
            INIT_3D => X"000000360000002d000000100000001e00000037000000100000002b0000001b",
            INIT_3E => X"ffffffe40000000b00000007000000170000000800000019fffffffffffffff0",
            INIT_3F => X"0000000c0000001100000000ffffffebffffffc3ffffffc5ffffffc5fffffffe",

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
            INIT_00 => X"ffffffd1ffffffdb0000000effffffe7fffffff7ffffffd7fffffff5ffffffeb",
            INIT_01 => X"ffffffd3ffffffd7fffffff00000001b000000140000000100000008ffffffdb",
            INIT_02 => X"ffffffe8fffffff90000000c0000000bffffffedffffffd0ffffffefffffffda",
            INIT_03 => X"fffffff8ffffffe5ffffffd8ffffffc10000000bfffffff2ffffffea0000001c",
            INIT_04 => X"000000150000001700000028000000220000000d00000025ffffffe700000000",
            INIT_05 => X"00000004ffffffe200000014ffffffff00000006fffffff40000000afffffff4",
            INIT_06 => X"ffffffd4ffffffe600000006fffffff0ffffffe8ffffffe2ffffffe7fffffff5",
            INIT_07 => X"00000035fffffffc00000001fffffff7ffffffec0000000b00000014ffffffce",
            INIT_08 => X"fffffffc0000001c0000001100000006ffffffef0000001800000009fffffff3",
            INIT_09 => X"00000008ffffffec0000000e000000090000001b00000028fffffff6fffffff4",
            INIT_0A => X"0000000dffffffedfffffffffffffffbfffffff8fffffff20000000000000000",
            INIT_0B => X"ffffffbefffffff8ffffffc4ffffffcb00000000fffffff000000010fffffff6",
            INIT_0C => X"fffffff700000006000000180000002800000007ffffffd5ffffffdcffffffcf",
            INIT_0D => X"ffffffc2fffffff0ffffffd0ffffffcbffffffc9ffffffcefffffff100000007",
            INIT_0E => X"00000008ffffffe5ffffffdcfffffff9fffffffcfffffff8ffffffd9ffffffdc",
            INIT_0F => X"0000000800000002ffffffedfffffffe0000002c0000000e0000001b0000000d",
            INIT_10 => X"fffffff9ffffffe1ffffffdfffffffde00000017ffffffff00000004fffffff5",
            INIT_11 => X"00000017fffffff800000006ffffffe4fffffff10000001dffffffeeffffffea",
            INIT_12 => X"ffffffe9ffffffef000000370000001fffffffe2000000090000000cfffffff3",
            INIT_13 => X"00000000000000100000000c000000390000001a000000200000000c0000001f",
            INIT_14 => X"fffffffb000000260000001cfffffffa0000001b0000000bfffffff3ffffffef",
            INIT_15 => X"fffffff2fffffff4000000140000000afffffff7ffffffeefffffff1ffffffdb",
            INIT_16 => X"ffffffdfffffffc4ffffffd5ffffffe9000000010000000500000020ffffffcc",
            INIT_17 => X"ffffffd100000000ffffffe1ffffffc0000000000000001fffffffb7ffffffce",
            INIT_18 => X"ffffffb9ffffffbeffffffd4ffffffa5000000030000003b000000360000003c",
            INIT_19 => X"ffffffe3fffffff7fffffff100000001fffffff1fffffff1fffffff3fffffffe",
            INIT_1A => X"0000001c0000001a00000030000000090000000b0000002700000000ffffffed",
            INIT_1B => X"0000000efffffff20000000a00000010000000260000003500000024fffffff9",
            INIT_1C => X"ffffffe700000019fffffff80000000affffffecffffffe00000000900000005",
            INIT_1D => X"ffffffe4fffffff2fffffff8ffffffe6fffffffa00000001ffffffde00000001",
            INIT_1E => X"ffffffdbffffffa70000000b00000017ffffffe00000001500000003ffffffe8",
            INIT_1F => X"0000001900000014fffffffd00000010ffffffe7fffffff200000017fffffff2",
            INIT_20 => X"00000001fffffffdfffffff1ffffffe30000001ffffffff00000000effffff9d",
            INIT_21 => X"00000000ffffffefffffffcc00000006fffffff0ffffffeb00000006fffffffd",
            INIT_22 => X"ffffffe200000007ffffffdffffffff4000000130000000b0000000b00000017",
            INIT_23 => X"0000000d000000300000001800000004fffffff4ffffffdc000000020000000e",
            INIT_24 => X"fffffffaffffff8b000000220000000bfffffffe000000500000002a00000001",
            INIT_25 => X"0000003b0000003900000007fffffff5ffffffeafffffff50000001affffffea",
            INIT_26 => X"fffffffc0000002e0000002000000019ffffffdd00000015ffffffe4fffffff0",
            INIT_27 => X"ffffffe0fffffffb000000050000000d00000007000000140000001300000029",
            INIT_28 => X"000000080000003c00000056fffffff6000000070000003e000000420000002d",
            INIT_29 => X"000000330000004c00000060000000370000003d0000003e0000005700000014",
            INIT_2A => X"000000470000001500000045000000410000006b000000110000002b0000001b",
            INIT_2B => X"0000001f00000024000000390000001500000007000000240000001cfffffff9",
            INIT_2C => X"0000001500000018fffffff1ffffffff0000000bffffffe2fffffffd00000006",
            INIT_2D => X"ffffffe700000005ffffffdfffffffe3fffffffdffffffc7ffffffb700000001",
            INIT_2E => X"ffffffe5ffffffbffffffff40000000affffffd2ffffffe600000010ffffffdf",
            INIT_2F => X"ffffffa80000003a0000000effffffc9ffffffefffffffd9ffffffe5fffffffe",
            INIT_30 => X"ffffffcaffffffabffffffdcffffffe6ffffffccfffffff6ffffffdaffffffdc",
            INIT_31 => X"ffffffff00000003ffffffe70000001f00000017fffffffa0000000900000005",
            INIT_32 => X"00000018ffffffe00000002000000023000000010000000d00000008ffffffbf",
            INIT_33 => X"ffffffe3ffffffd8fffffff9ffffffcaffffffbeffffffe3ffffffccffffffdf",
            INIT_34 => X"ffffffebfffffff7fffffffc00000003fffffffffffffff900000013fffffff9",
            INIT_35 => X"0000000000000034fffffff2000000160000002afffffff1ffffffca00000036",
            INIT_36 => X"00000003ffffffaa00000006ffffffcaffffffb400000027ffffffd5ffffffed",
            INIT_37 => X"0000002effffffefffffffee000000330000001affffffc0000000630000002f",
            INIT_38 => X"fffffff8000000400000004e00000002000000340000001bffffffc900000019",
            INIT_39 => X"0000000600000004ffffffbb000000240000002e0000001d00000023ffffffeb",
            INIT_3A => X"ffffffef0000000300000015000000090000000000000021ffffffdfffffffc5",
            INIT_3B => X"00000048ffffffeaffffffa40000000900000011ffffffb3ffffffe3ffffffed",
            INIT_3C => X"0000000a0000001efffffff2000000020000001dfffffff3000000180000000b",
            INIT_3D => X"ffffffeaffffffe200000019fffffff5ffffffdbffffffe7ffffffe6ffffffed",
            INIT_3E => X"ffffffe700000002ffffffe0ffffffca00000043ffffffe8ffffffb100000031",
            INIT_3F => X"0000001fffffffc5000000090000002600000021000000100000001300000030",

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
            INIT_00 => X"fffffffffffffffa00000018ffffffffffffffe2fffffffd00000038ffffff9f",
            INIT_01 => X"fffffffe00000056fffffff4ffffffbeffffffb9ffffffe30000000cffffffb3",
            INIT_02 => X"ffffff5dfffffffcfffffff4ffffff85fffffff800000002ffffffe1ffffffc5",
            INIT_03 => X"fffffff7ffffffd3ffffffd1ffffffe60000000effffffec00000010ffffffe4",
            INIT_04 => X"ffffffd60000000900000016ffffffde000000140000001affffffe60000001b",
            INIT_05 => X"0000002f00000013ffffffeb0000002a00000059ffffffca0000001f00000059",
            INIT_06 => X"ffffffe1fffffff20000001d0000000b00000015000000090000002cfffffffe",
            INIT_07 => X"fffffff4ffffffc8ffffffeaffffffc200000013fffffff4fffffff200000006",
            INIT_08 => X"ffffffdfffffffd40000000cffffffec0000001200000013ffffffe800000000",
            INIT_09 => X"00000001ffffffee000000070000000700000003000000070000000e00000000",
            INIT_0A => X"0000001600000000000000180000001900000057000000370000002900000074",
            INIT_0B => X"000000830000007200000036000000560000002ffffffffa00000009fffffff6",
            INIT_0C => X"ffffffeefffffff2fffffff7fffffff300000006fffffffdfffffff000000013",
            INIT_0D => X"0000000dffffffec00000033ffffffee0000000c0000000a0000001b0000000f",
            INIT_0E => X"000000140000001bffffffee00000017ffffffe9ffffffd1fffffff9ffffffdf",
            INIT_0F => X"fffffff80000002e000000380000000800000026ffffffe5ffffffecfffffff4",
            INIT_10 => X"ffffffd6ffffffe500000008ffffffddffffffe800000001fffffff400000000",
            INIT_11 => X"fffffffa0000001f000000220000000f0000002f00000058000000390000003a",
            INIT_12 => X"000000360000001a000000200000000f0000000efffffffbffffffdf00000027",
            INIT_13 => X"ffffffd3ffffffe7fffffffdffffffd600000000fffffff80000000c00000003",
            INIT_14 => X"0000000400000030000000010000002b000000260000001e0000003400000031",
            INIT_15 => X"000000290000002a000000300000003c0000002f0000003f0000001effffffe5",
            INIT_16 => X"fffffff400000004ffffffedffffffefffffffe8fffffff90000001400000007",
            INIT_17 => X"ffffffd70000001200000012ffffffd1000000000000000bffffffefffffffd3",
            INIT_18 => X"000000070000000000000006ffffffcbffffffe5ffffffdbffffffd7ffffffc5",
            INIT_19 => X"fffffff1fffffff400000006000000040000001c0000001afffffffc0000004d",
            INIT_1A => X"000000350000001effffffe90000000dfffffffc00000011ffffffe0ffffffe3",
            INIT_1B => X"0000001b00000001000000030000001fffffffe5ffffffdd00000014ffffffff",
            INIT_1C => X"000000160000000c00000013000000190000000c0000002a0000001cfffffff7",
            INIT_1D => X"000000310000000800000021fffffffc00000022ffffffc90000000000000003",
            INIT_1E => X"ffffffc3ffffffaeffffffd0ffffffafffffffd1ffffffa5fffffff900000000",
            INIT_1F => X"fffffff9ffffffdcffffffbbffffffe9fffffff3ffffffe2ffffffc0fffffff1",
            INIT_20 => X"000000230000005dffffff96ffffff9bfffffff8ffffffaaffffffd2ffffffb1",
            INIT_21 => X"ffffffe9fffffffe0000000affffffd8ffffffe000000024ffffffcd00000007",
            INIT_22 => X"ffffffdc0000000a0000000ffffffffbfffffffc000000020000001600000014",
            INIT_23 => X"fffffff4ffffffe90000001c0000000a0000000800000005000000040000003a",
            INIT_24 => X"fffffffeffffffdf0000000cfffffffd0000000b000000280000001cffffffff",
            INIT_25 => X"00000040000000450000002500000036fffffff5fffffff9ffffffedfffffffb",
            INIT_26 => X"fffffff8ffffffefffffffefffffffd6000000010000001dffffffff00000003",
            INIT_27 => X"000000040000003300000019000000040000001c0000002bfffffff6ffffffe9",
            INIT_28 => X"0000001bffffffcdffffffd9ffffffd5ffffffe8fffffff4ffffffc4ffffffec",
            INIT_29 => X"0000001500000019fffffff50000001500000033fffffff4fffffffa00000000",
            INIT_2A => X"fffffff8fffffff6ffffffe80000001bfffffff8fffffffc0000002b00000022",
            INIT_2B => X"000000370000000600000003ffffffec0000000dfffffff5ffffffe800000010",
            INIT_2C => X"0000000e000000170000000400000009fffffffdfffffffaffffffe6fffffff1",
            INIT_2D => X"0000000affffffef0000000f00000026fffffffe000000140000001200000008",
            INIT_2E => X"000000120000000d0000001dfffffff600000000ffffffec00000023fffffff7",
            INIT_2F => X"00000009000000190000002f000000320000004500000017fffffff0ffffffe0",
            INIT_30 => X"0000003e0000003f00000007000000370000003800000030fffffff4fffffff0",
            INIT_31 => X"fffffff7ffffffe5ffffffc500000015ffffffd0ffffffc60000002d0000000d",
            INIT_32 => X"00000001ffffffbcffffffe8ffffffcfffffffd7ffffffc3ffffffc4fffffff1",
            INIT_33 => X"0000002ffffffff3fffffff2fffffff100000032ffffffe9ffffffc2ffffffeb",
            INIT_34 => X"ffffffe6ffffffec0000000e0000000900000031fffffff3000000010000002c",
            INIT_35 => X"fffffff600000023ffffffe4ffffffdb00000021ffffffcc00000000ffffffcf",
            INIT_36 => X"ffffffc8ffffffe3fffffff9fffffff30000000f0000000000000003ffffffda",
            INIT_37 => X"0000000afffffffbffffffe000000010ffffffa8ffffffb0ffffffeaffffffcd",
            INIT_38 => X"ffffffc30000000fffffffc2ffffffe800000005fffffff9000000180000002d",
            INIT_39 => X"ffffffedffffffe6fffffff90000002400000016000000370000001afffffffb",
            INIT_3A => X"000000100000002100000004000000070000001c000000030000000affffffd0",
            INIT_3B => X"ffffffe4ffffffeeffffffbdffffffe4ffffffbcfffffff000000034ffffffe3",
            INIT_3C => X"0000000c00000009ffffffdd00000012ffffffeaffffffe800000007ffffffe2",
            INIT_3D => X"ffffffe400000014000000030000004300000020000000010000003c00000000",
            INIT_3E => X"fffffffb0000003900000000ffffffed0000001fffffffd50000000300000026",
            INIT_3F => X"fffffffb000000210000001e0000002affffffe8ffffffd40000000effffffb1",

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
            INIT_00 => X"0000001dfffffffdffffffe20000001cffffff9affffffdb00000009ffffffba",
            INIT_01 => X"fffffff4ffffffe7fffffff6fffffffbffffffe2fffffffd0000001efffffffb",
            INIT_02 => X"fffffff100000000ffffffe6ffffffe7fffffffbfffffff5ffffffdd00000023",
            INIT_03 => X"00000046ffffffe60000003200000053000000160000001f0000003400000016",
            INIT_04 => X"00000018fffffff100000029ffffffd5ffffffd100000016ffffffec00000000",
            INIT_05 => X"0000001dfffffff9ffffffb600000020ffffffa8ffffffb7ffffffe0ffffffaa",
            INIT_06 => X"ffffffa4ffffffe7ffffffdf00000001ffffffdbffffffe000000018ffffffd6",
            INIT_07 => X"ffffffe40000003b0000002f00000007ffffffa70000005dffffffb9ffffff8e",
            INIT_08 => X"00000021ffffff85ffffffc2ffffffde0000001600000037fffffff900000019",
            INIT_09 => X"0000002800000005000000310000002affffffd7000000210000001effffffdd",
            INIT_0A => X"0000003c0000005afffffff80000004300000054fffffff3000000240000003f",
            INIT_0B => X"ffffffee0000001c00000030ffffffe40000001dfffffff900000011ffffffff",
            INIT_0C => X"00000008fffffffeffffffe0fffffff7ffffffeb000000080000001700000013",
            INIT_0D => X"0000000affffffb500000023ffffffd7ffffffd0fffffffaffffffc0ffffffb8",
            INIT_0E => X"0000000fffffffd2fffffff100000002ffffffe900000000ffffffe800000019",
            INIT_0F => X"0000000affffffecffffffecfffffff400000027fffffffcfffffff300000012",
            INIT_10 => X"fffffffd00000004ffffffe8fffffff50000000d0000001bfffffff20000001e",
            INIT_11 => X"0000003700000017000000240000001dfffffffcffffffd80000001000000012",
            INIT_12 => X"0000001800000017000000390000000a00000039000000310000001bfffffffd",
            INIT_13 => X"000000400000003c000000230000005200000047000000070000001dffffffec",
            INIT_14 => X"0000001e0000000100000019000000040000002300000022ffffffe4ffffffe2",
            INIT_15 => X"0000001000000015ffffffd6ffffffeefffffff8fffffff2ffffffb300000027",
            INIT_16 => X"0000001a000000470000002a0000000a00000048fffffff4fffffffb0000001a",
            INIT_17 => X"ffffffd6ffffffe80000000dffffffc3ffffffbeffffffb3ffffffb1ffffff9c",
            INIT_18 => X"ffffffe0fffffffeffffffe8ffffffe100000021fffffffcfffffff60000002a",
            INIT_19 => X"0000003100000012ffffffc0ffffffe6ffffffc6ffffff82ffffff6bffffff84",
            INIT_1A => X"ffffff67ffffff53ffffff6affffffe5ffffffe1ffffffec0000000100000002",
            INIT_1B => X"ffffffeb0000001a0000001500000032ffffffd8ffffffdd00000000ffffffc6",
            INIT_1C => X"ffffffa4ffffff8dffffffefffffff9dffffffab0000000e00000001fffffffe",
            INIT_1D => X"000000050000003d00000023000000180000002f000000350000000effffffee",
            INIT_1E => X"000000060000002200000010fffffff200000000000000220000000c0000000b",
            INIT_1F => X"00000034fffffff1ffffffcc0000002b00000017ffffffcdffffffe0ffffffee",
            INIT_20 => X"ffffffee000000000000000ffffffff1fffffffeffffffe80000000000000020",
            INIT_21 => X"0000001affffffd2ffffffdfffffffa8ffffffd1fffffff0fffffff2ffffffe3",
            INIT_22 => X"fffffff2ffffffefffffffd4ffffffdbffffffd0ffffffdbffffffeeffffffdd",
            INIT_23 => X"fffffff3ffffffed00000000ffffffedffffffc0ffffffddffffffdeffffffe9",
            INIT_24 => X"fffffff1ffffffd8ffffffeefffffffdffffffff000000090000000c00000016",
            INIT_25 => X"00000000000000040000000b0000000d00000022fffffff4000000090000001a",
            INIT_26 => X"00000012ffffffff0000000d00000007000000210000001d00000011ffffffe2",
            INIT_27 => X"ffffffeefffffff50000000cfffffffb0000001a0000001500000007fffffff8",
            INIT_28 => X"ffffffe20000001900000006fffffff7ffffffeaffffffdfffffffefffffffdd",
            INIT_29 => X"fffffff50000000dffffffe9fffffff3ffffffeefffffff8ffffffe7fffffff8",
            INIT_2A => X"ffffffecffffffeeffffffecffffffe8000000070000000600000020fffffff6",
            INIT_2B => X"0000002200000013ffffffe0fffffffeffffffe6ffffffe10000000effffffe7",
            INIT_2C => X"fffffff8ffffffe7fffffffdffffffd6ffffffc2ffffffbdffffffe6ffffffeb",
            INIT_2D => X"ffffffffffffffc7000000020000000e00000014000000370000000e0000002c",
            INIT_2E => X"000000280000001900000034000000060000000dfffffffefffffff9fffffff2",
            INIT_2F => X"ffffffebffffffecfffffff9ffffffd700000009fffffff80000000500000004",
            INIT_30 => X"fffffff70000000dffffffe9ffffffff0000001c0000000e0000000b00000028",
            INIT_31 => X"0000001900000017000000260000001dfffffff500000022fffffffcfffffff0",
            INIT_32 => X"fffffff9ffffffecffffffe3fffffffbffffffe2ffffffefffffffcfffffffb2",
            INIT_33 => X"ffffffc3fffffff4ffffffeefffffff600000001fffffff4000000140000003d",
            INIT_34 => X"00000012ffffffef0000000fffffffdf00000017ffffffdcffffffdd00000016",
            INIT_35 => X"ffffffe5000000060000001b000000150000000f00000011fffffffcffffffeb",
            INIT_36 => X"0000000e000000170000000600000028fffffff3ffffffefffffffadffffffc3",
            INIT_37 => X"ffffffeeffffffd2ffffffe000000005ffffffe8fffffff3fffffff900000002",
            INIT_38 => X"ffffffbdffffffe9fffffffeffffff88ffffffd2ffffffbaffffffd4fffffffc",
            INIT_39 => X"00000002ffffffd2ffffffcd00000000fffffff1ffffffccfffffffcffffffe2",
            INIT_3A => X"0000002900000039ffffffb1ffffffbdffffffdbffffffc0ffffffc9ffffffe1",
            INIT_3B => X"ffffffdeffffffe1fffffffaffffffc5ffffffcdffffffe2ffffffccffffffbd",
            INIT_3C => X"ffffffedffffffee00000020000000200000001affffffed0000001300000000",
            INIT_3D => X"fffffff100000002fffffff90000000600000013ffffffe4ffffffedfffffffb",
            INIT_3E => X"fffffff2000000000000000b0000001fffffffe1000000290000001700000001",
            INIT_3F => X"0000002c0000001300000016000000150000000dfffffff30000001600000009",

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
            INIT_00 => X"0000001a000000010000000f000000170000002700000005ffffffedffffffad",
            INIT_01 => X"fffffffd0000000dfffffff2000000110000001a000000190000001900000016",
            INIT_02 => X"00000024ffffffd70000000cfffffff8ffffffbefffffff8fffffff000000023",
            INIT_03 => X"0000000fffffffd30000002d000000170000003b0000002c0000000300000013",
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
            INIT_00 => X"00000012000000120000000f00000014000000170000000d0000000f0000001d",
            INIT_01 => X"0000001d0000000a0000000000000001000000060000000c0000001500000016",
            INIT_02 => X"000000120000000f000000130000001300000004000000080000000300000000",
            INIT_03 => X"00000004000000000000000000000000000000050000000b000000000000000b",
            INIT_04 => X"000000130000001b000000120000001b000000200000001e0000000000000000",
            INIT_05 => X"000000000000000000000000000000000000000100000001000000000000000c",
            INIT_06 => X"000000190000000b000000110000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000300000003",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000000040000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000100000000",
            INIT_0B => X"00000000000000000000000000000000000000040000001c0000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000002000000000000000000000000",
            INIT_0E => X"000000000000000000000000000000000000000000000000000000000000000b",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000b00000000",
            INIT_10 => X"0000000000000000000000000000000b00000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000080000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000b0000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"0000002000000000000000000000000000000000000000000000000000000000",
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
            INIT_26 => X"0000000b00000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000d00000000",
            INIT_2C => X"0000000000000000000000000000000000000004000000070000000000000000",
            INIT_2D => X"0000000000000000000000000000000600000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000010000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000f0000001a0000000f0000003f0000000a",
            INIT_31 => X"000000000000000000000000000000320000003a000000380000002500000020",
            INIT_32 => X"00000022000000290000002500000027000000200000002c0000003a00000000",
            INIT_33 => X"000000000000001e0000001d0000001d00000020000000200000001f00000024",
            INIT_34 => X"0000001e000000220000002800000021000000300000002f0000002f0000000e",
            INIT_35 => X"0000000f00000021000000190000001d00000022000000230000002f00000033",
            INIT_36 => X"00000034000000280000003a000000290000003300000031000000410000002a",
            INIT_37 => X"000000300000002a0000001f000000170000001c000000210000002d0000001a",
            INIT_38 => X"0000001c00000029000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"00000003000000180000000e0000000600000000000000000000000000000000",
            INIT_3E => X"0000000b00000000000000000000000000000000000000020000000100000000",
            INIT_3F => X"0000001b0000000000000006000000000000000000000000000000000000001e",

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
            INIT_00 => X"000000000000000000000011000000140000000500000003000000000000001d",
            INIT_01 => X"00000010000000000000000800000000000000030000000f0000001700000000",
            INIT_02 => X"000000000000001a0000000a0000000600000004000000000000004400000003",
            INIT_03 => X"000000000000000b0000000000000002000000170000000b0000000000000000",
            INIT_04 => X"0000000c0000001e0000000b0000000000000000000000370000000000000004",
            INIT_05 => X"0000000a00000011000000020000002000000014000000060000000000000006",
            INIT_06 => X"0000002d00000000000000000000000000000020000000000000000000000011",
            INIT_07 => X"00000008000000000000001d0000002800000004000000110000000800000000",
            INIT_08 => X"000000000000000b0000000b0000000000000010000000000000000600000000",
            INIT_09 => X"00000000000000180000002400000000000000270000000e0000000900000012",
            INIT_0A => X"00000012000000150000000000000000000000000000000c0000000000000000",
            INIT_0B => X"0000002b0000002300000000000000580000000d000000280000002d00000011",
            INIT_0C => X"00000000000000000000001b000000220000001f0000000b0000000000000036",
            INIT_0D => X"00000023000000120000004500000000000000070000001f000000210000001a",
            INIT_0E => X"0000001e00000022000000280000002e0000002f0000002f0000002a00000038",
            INIT_0F => X"000000330000002500000000000000270000002500000024000000240000002a",
            INIT_10 => X"0000002f000000360000002f0000002e0000003a0000002c0000002e00000052",
            INIT_11 => X"00000000000000130000002b000000260000002a0000002a0000002f0000002e",
            INIT_12 => X"0000002f0000002a00000045000000280000002b000000330000002c00000019",
            INIT_13 => X"000000190000002800000023000000240000002e000000310000002d0000002e",
            INIT_14 => X"000000430000003a0000001f0000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000000000000000000020000000a0000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"000000100000000800000017000000000000001f0000001c0000000300000000",
            INIT_18 => X"000000000000002a00000000000000000000000000000000000000000000002b",
            INIT_19 => X"000000110000000000000000000000420000002d0000003f0000000000000000",
            INIT_1A => X"000000710000000000000000000000000000000e00000000000000280000002c",
            INIT_1B => X"00000025000000000000005a000000260000003b0000002a000000000000006c",
            INIT_1C => X"00000005000000230000000000000034000000240000005d000000480000003c",
            INIT_1D => X"000000000000002f000000520000001e0000003e000000000000005900000031",
            INIT_1E => X"0000003700000000000000000000002c000000610000003e0000006000000000",
            INIT_1F => X"000000730000005c000000120000003100000025000000480000007300000015",
            INIT_20 => X"0000003800000000000000000000005a0000004a0000006a0000000000000075",
            INIT_21 => X"00000047000000120000000c000000370000004d000000650000002800000031",
            INIT_22 => X"00000000000000060000008b0000003800000046000000000000004f00000050",
            INIT_23 => X"0000000600000025000000130000006800000042000000840000000b0000002a",
            INIT_24 => X"000000130000002e0000002c0000000000000029000000160000005b00000004",
            INIT_25 => X"00000000000000000000004a0000003a0000009f000000000000006400000018",
            INIT_26 => X"000000000000004d000000300000003b0000005a000000170000000000000000",
            INIT_27 => X"0000000c0000000f0000003c0000009400000000000000930000004c00000020",
            INIT_28 => X"0000007100000083000000410000001a0000001d000000230000002000000031",
            INIT_29 => X"0000001d0000002b0000004e00000000000000d8000000730000003a0000003c",
            INIT_2A => X"00000047000000380000003d0000003c0000003e000000400000004f0000005f",
            INIT_2B => X"000000120000000000000082000000af00000042000000490000003f0000003e",
            INIT_2C => X"00000039000000380000004000000050000000480000003d0000006a00000045",
            INIT_2D => X"00000000000000cb0000005a000000390000004d000000420000003c00000041",
            INIT_2E => X"000000480000004d0000004e000000380000007b000000760000004b0000003e",
            INIT_2F => X"0000005400000048000000350000004300000044000000380000004400000055",
            INIT_30 => X"0000003a0000001a0000006f0000008000000000000000000000000800000008",
            INIT_31 => X"0000000600000003000000050000000000000004000000000000000000000000",
            INIT_32 => X"000000000000000600000005000000070000000a0000000c000000070000000a",
            INIT_33 => X"000000490000001a000000000000000000000000000000240000000600000000",
            INIT_34 => X"0000000000000004000000000000000000000004000000040000000700000000",
            INIT_35 => X"00000000000000000000000d0000001a00000015000000070000001700000000",
            INIT_36 => X"00000000000000280000002500000009000000050000000d0000000000000037",
            INIT_37 => X"0000001b00000005000000000000000000000000000000000000000100000000",
            INIT_38 => X"000000260000005a000000130000000b0000008000000056000000060000000e",
            INIT_39 => X"000000000000000000000025000000250000000f000000180000000000000000",
            INIT_3A => X"00000000000000080000000000000000000000000000002a0000001a0000001f",
            INIT_3B => X"0000003a00000000000000000000000000000009000000270000000600000007",
            INIT_3C => X"00000000000000040000000000000021000000000000000a0000000900000011",
            INIT_3D => X"000000000000000b00000000000000170000001d00000015000000070000001c",
            INIT_3E => X"0000001000000019000000160000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000010000000040000000b00000004",

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
            INIT_00 => X"0000001c00000000000000000000001a00000004000000000000000000000000",
            INIT_01 => X"00000000000000030000002f0000000000000000000000090000000400000011",
            INIT_02 => X"00000000000000000000004a0000000c0000000000000000000000000000001b",
            INIT_03 => X"0000001f00000000000000000000000000000000000000460000009c00000085",
            INIT_04 => X"0000002800000000000000000000000000000020000000410000001b00000000",
            INIT_05 => X"0000000000000000000000000000000f00000046000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000200000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000004000000070000001200000000000000000000001100000000",
            INIT_09 => X"0000000000000000000000000000000000000000000000080000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000013000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000000000000000000000000000001400000013",
            INIT_0C => X"00000004000000000000002800000022000000000000009d000000a3000000a2",
            INIT_0D => X"000000a5000000a40000009d000000ac000000b7000000ad000000940000007c",
            INIT_0E => X"0000007c000000840000009200000092000000a2000000ad000000a8000000ac",
            INIT_0F => X"000000a00000008c000000a9000000a00000007a0000003a0000002e0000003e",
            INIT_10 => X"0000004e0000006e0000008b000000890000006a000000ac000000b0000000af",
            INIT_11 => X"0000008e00000073000000480000002d000000070000001e0000000a00000027",
            INIT_12 => X"0000003a000000670000004d0000002b000000a4000000aa000000a200000059",
            INIT_13 => X"0000004d00000027000000150000000c000000330000002d0000001b00000025",
            INIT_14 => X"0000003a000000170000001f00000094000000600000004e0000004700000043",
            INIT_15 => X"0000002f0000001f000000000000003100000039000000170000001c0000002f",
            INIT_16 => X"00000016000000120000008e00000099000000250000003b0000004500000031",
            INIT_17 => X"0000002d000000000000003e0000002a0000001000000012000000170000000e",
            INIT_18 => X"0000002a000000620000009f0000002f000000320000003e0000002d0000002f",
            INIT_19 => X"000000000000003200000028000000100000000e000000260000001c0000000a",
            INIT_1A => X"0000002c0000006200000037000000260000002e00000027000000290000001e",
            INIT_1B => X"0000002f0000002d00000009000000220000004100000014000000000000002b",
            INIT_1C => X"0000000e000000550000002200000036000000300000000d0000005400000042",
            INIT_1D => X"000000260000000f0000002d0000007900000010000000050000002400000000",
            INIT_1E => X"000000350000002000000008000000280000002d000000340000001d00000006",
            INIT_1F => X"00000009000000620000008a0000000000000015000000230000000000000017",
            INIT_20 => X"0000001a00000000000000000000000600000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000060000003a00000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000034000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000002200000023",
            INIT_29 => X"00000025000000200000001e0000002700000026000000240000001d00000017",
            INIT_2A => X"0000001a00000026000000240000001e00000018000000230000002c0000002a",
            INIT_2B => X"0000001f00000028000000200000000f0000001d0000000e0000001d00000000",
            INIT_2C => X"00000009000000200000002b0000001c00000006000000390000002800000021",
            INIT_2D => X"000000270000001a0000000000000006000000210000002e0000000000000000",
            INIT_2E => X"00000000000000250000002c000000000000004c00000021000000290000000f",
            INIT_2F => X"0000002400000004000000000000000000000048000000000000000900000000",
            INIT_30 => X"000000000000004a00000000000000260000000200000056000000090000000b",
            INIT_31 => X"0000000000000000000000000000005900000000000000000000000600000000",
            INIT_32 => X"0000002b000000000000000a000000000000001a0000003e0000001300000000",
            INIT_33 => X"00000000000000000000008e0000000000000000000000140000000000000000",
            INIT_34 => X"000000000000000000000020000000000000003f000000360000000000000000",
            INIT_35 => X"000000000000006600000000000000000000000a000000150000000000000000",
            INIT_36 => X"0000000000000000000000000000003800000042000000000000000000000000",
            INIT_37 => X"0000004200000000000000000000001d0000000f000000080000000000000002",
            INIT_38 => X"0000000000000021000000040000001100000000000000000000002400000000",
            INIT_39 => X"00000025000000000000001e0000002100000023000000000000000000000000",
            INIT_3A => X"0000002c000000000000000f0000002700000000000000020000000500000000",
            INIT_3B => X"0000000c0000003000000034000000140000002a000000040000000000000078",
            INIT_3C => X"0000000000000000000000220000000000000000000000000000000800000009",
            INIT_3D => X"0000000100000000000000000000002000000014000000000000004000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000002100000043000000000000000000000000",

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
            INIT_01 => X"0000000000000000000000000000005d00000000000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000000000000000000000000000000000000400000000000000000000002b",
            INIT_05 => X"000000300000002d0000002c0000002f00000029000000300000003a00000037",
            INIT_06 => X"0000002a0000002500000026000000270000002a000000310000002c00000035",
            INIT_07 => X"000000300000002e0000002d000000000000001f000000290000003b0000000c",
            INIT_08 => X"00000000000000000000000e0000001f000000250000001c000000290000002e",
            INIT_09 => X"00000035000000320000003b0000002d00000023000000000000000000000000",
            INIT_0A => X"0000000000000000000000040000001a00000000000000000000002300000032",
            INIT_0B => X"0000002500000019000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000600000000000000110000000000000000000000120000001800000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000000000000000500000000000000000000000b000000380000000300000003",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"000000000000000000000000000000070000003a000000070000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000002000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000000d00000000",
            INIT_14 => X"000000000000000000000000000000000000001a000000050000000000000000",
            INIT_15 => X"0000000f00000003000000180000000400000000000000080000000000000000",
            INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000008",
            INIT_17 => X"000000110000000a00000000000000000000001f000000000000000000000000",
            INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000a000000110000000800000008000000040000000c0000000c0000000b",
            INIT_22 => X"0000000b000000210000002d0000002300000011000000080000000600000000",
            INIT_23 => X"0000000a0000000a0000000c0000000800000000000000050000002300000042",
            INIT_24 => X"0000000000000000000000000000000a000000170000000a0000003500000033",
            INIT_25 => X"0000000500000008000000050000003700000016000000090000000000000000",
            INIT_26 => X"0000000000000000000000000000000e0000000c000000000000000000000005",
            INIT_27 => X"0000000800000008000000000000000000000002000000000000001a00000004",
            INIT_28 => X"0000001000000006000000000000000e0000000100000000000000020000000e",
            INIT_29 => X"0000000000000000000000090000000000000007000000000000000000000000",
            INIT_2A => X"0000000000000000000000000000000f0000000000000006000000030000003e",
            INIT_2B => X"0000002800000000000000000000000000000000000000140000001500000007",
            INIT_2C => X"000000000000000000000000000000000000001c000000180000001200000000",
            INIT_2D => X"0000003100000000000000110000000000000011000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000020000003500000035",
            INIT_2F => X"000000210000000e000000000000000900000000000000050000000e00000000",
            INIT_30 => X"0000000000000001000000000000000000000000000000260000000000000000",
            INIT_31 => X"000000000000000000000026000000300000000000000000000000000000000c",
            INIT_32 => X"0000000000000004000000000000002300000009000000000000000000000000",
            INIT_33 => X"0000004e00000036000000110000000000000000000000180000000300000000",
            INIT_34 => X"000000070000000000000000000000000000001e000000510000003700000000",
            INIT_35 => X"000000000000000000000000000000050000000a00000035000000210000000c",
            INIT_36 => X"0000000000000056000000280000000400000005000000030000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000160000000000000018",
            INIT_38 => X"0000003f00000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000180000004f0000000b",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000014000000000000000000000000000000220000000000000003",
            INIT_3C => X"0000001200000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"000000000000000d000000130000000a0000000e000000090000001500000008",
            INIT_3E => X"000000060000000c0000001c000000220000001b000000130000000600000002",
            INIT_3F => X"000000080000000b000000090000000d0000000f000000360000000f0000001a",

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
            INIT_00 => X"0000001f000000340000003500000024000000210000001a0000000a00000026",
            INIT_01 => X"000000240000000b0000000a0000000800000051000000330000002800000020",
            INIT_02 => X"000000530000005e0000004b0000002b000000190000001a0000003300000014",
            INIT_03 => X"0000000e00000012000000190000002e000000450000002f000000360000005b",
            INIT_04 => X"0000005d000000420000003b000000150000001b000000710000005e00000015",
            INIT_05 => X"000000350000007e00000044000000640000003b000000330000003b00000067",
            INIT_06 => X"000000380000003900000025000000010000007f0000009e0000002800000013",
            INIT_07 => X"000000bd0000007e0000007d0000004b0000002e0000005b0000007f00000050",
            INIT_08 => X"000000470000003c000000150000007a0000009400000043000000170000005a",
            INIT_09 => X"00000075000000a8000000650000004e0000007800000081000000460000003b",
            INIT_0A => X"0000004c000000330000008e000000a5000000400000003900000039000000a5",
            INIT_0B => X"000000850000006a000000500000005f000000780000004c000000480000004b",
            INIT_0C => X"00000026000000b0000000b80000006600000073000000380000006600000059",
            INIT_0D => X"0000004e000000510000003300000065000000410000002c0000002b0000000e",
            INIT_0E => X"000000c0000000b300000086000000750000006f000000330000005f00000079",
            INIT_0F => X"000000420000005a00000040000000250000002f0000002700000027000000c7",
            INIT_10 => X"000000ab0000008b000000a20000009e0000006500000091000000b900000079",
            INIT_11 => X"0000003c00000040000000470000005a0000007100000068000000c1000000cb",
            INIT_12 => X"0000009d000000c9000000e7000000a50000008a000000850000007c0000006f",
            INIT_13 => X"0000007800000080000000880000008a0000008e0000008c000000a1000000b1",
            INIT_14 => X"000000e5000000af0000007a0000007500000070000000710000007600000084",
            INIT_15 => X"0000008c000000950000009a000000a30000009d00000085000000a6000000ef",
            INIT_16 => X"0000008800000080000000790000007300000077000000820000008c0000009b",
            INIT_17 => X"00000093000000a3000000ab000000970000008f0000007f000000a700000074",
            INIT_18 => X"0000007f000000890000007e0000007c0000008800000086000000850000009a",
            INIT_19 => X"000000af0000008d000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000130000001c0000000b0000000000000000",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000b",
            INIT_1C => X"00000014000000330000000000000000000000140000001e0000000000000000",
            INIT_1D => X"0000003f000000000000000000000000000000000000003e0000001c00000028",
            INIT_1E => X"00000000000000000000000000000000000000070000001e0000000000000019",
            INIT_1F => X"0000000000000000000000000000000c00000000000000000000000000000000",
            INIT_20 => X"00000000000000000000001a000000060000000e000000000000000000000000",
            INIT_21 => X"000000090000000000000000000000000000000f000000040000001d00000000",
            INIT_22 => X"00000000000000080000000000000000000000250000002f0000000000000002",
            INIT_23 => X"0000004f00000003000000000000000000000000000000060000000000000026",
            INIT_24 => X"0000001c00000000000000000000000000000000000000180000000d0000000d",
            INIT_25 => X"0000000000000000000000050000000000000009000000000000001800000008",
            INIT_26 => X"0000000000000000000000000000000200000000000000070000000000000000",
            INIT_27 => X"000000000000003d0000001e0000000000000000000000000000001c00000000",
            INIT_28 => X"000000100000000000000000000000000000002e000000000000002200000032",
            INIT_29 => X"00000003000000000000000000000036000000260000003a0000000d00000000",
            INIT_2A => X"0000000000000000000000000000000a00000000000000120000001500000000",
            INIT_2B => X"000000000000002e0000001f0000003100000001000000000000000000000008",
            INIT_2C => X"0000000000000000000000220000000000000000000000000000000000000019",
            INIT_2D => X"0000000f0000000d000000000000000000000000000000160000002100000041",
            INIT_2E => X"000000000000000000000000000000a2000000520000003f000000370000000c",
            INIT_2F => X"0000000600000000000000020000000000000000000000000000000d00000036",
            INIT_30 => X"0000000000000041000000560000000000000002000000000000000000000000",
            INIT_31 => X"0000000000000000000000030000000000000000000000020000000000000025",
            INIT_32 => X"0000003e00000006000000000000000000000001000000000000000000000007",
            INIT_33 => X"0000000a0000000000000000000000420000000c000000000000001800000036",
            INIT_34 => X"0000002400000013000000090000000000000000000000000000000500000000",
            INIT_35 => X"0000000000000000000000040000000000000000000000000000000000000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000000000000040000001f0000000000000000000000000000000000000000",
            INIT_3B => X"000000000000000b000000000000000000000000000000000000000000000000",
            INIT_3C => X"000000050000002d000000000000000700000000000000020000000100000000",
            INIT_3D => X"0000000200000000000000000000000000000000000000000000000000000002",
            INIT_3E => X"0000003b00000000000000000000000300000000000000100000000100000006",
            INIT_3F => X"00000000000000000000002c000000000000000000000000000000000000005d",

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
            INIT_00 => X"00000000000000000000000e0000000000000000000000000000000000000000",
            INIT_01 => X"000000000000001c0000000f0000000000000000000000000000005200000000",
            INIT_02 => X"0000000000000012000000130000000000000004000000000000000000000000",
            INIT_03 => X"0000000c000000170000000000000005000000000000002d0000000000000000",
            INIT_04 => X"0000001d00000003000000000000000000000016000000000000001100000000",
            INIT_05 => X"000000120000000000000000000000080000000000000011000000000000001b",
            INIT_06 => X"00000000000000000000000900000019000000000000003b0000000000000003",
            INIT_07 => X"0000001000000000000000050000000000000000000000120000001200000000",
            INIT_08 => X"00000000000000330000000d000000000000005800000000000000000000002d",
            INIT_09 => X"00000004000000000000000200000028000000330000003e0000002c0000001d",
            INIT_0A => X"0000007000000036000000000000003b000000000000002e0000004e0000004e",
            INIT_0B => X"00000044000000490000004f00000056000000580000005a000000530000005a",
            INIT_0C => X"0000006f00000048000000080000000000000049000000480000004a0000004c",
            INIT_0D => X"000000540000005b0000005b000000570000005d0000005e0000005a00000060",
            INIT_0E => X"0000008a000000000000003100000050000000450000004d0000005300000057",
            INIT_0F => X"000000610000006400000061000000740000005e000000500000006700000067",
            INIT_10 => X"00000041000000490000005f0000005500000049000000520000005200000052",
            INIT_11 => X"0000005e0000006b00000053000000450000002f0000002e000000330000002e",
            INIT_12 => X"0000002f0000002f000000310000002f0000002b000000230000001c00000027",
            INIT_13 => X"0000002600000027000000240000003200000032000000350000002d00000034",
            INIT_14 => X"0000005500000013000000250000000400000021000000130000001500000024",
            INIT_15 => X"0000002d000000280000001a0000003b000000340000002e000000380000002c",
            INIT_16 => X"00000000000000000000001a0000004f0000000a0000000b0000000400000027",
            INIT_17 => X"0000003900000000000000790000002c0000003600000025000000230000001a",
            INIT_18 => X"0000000800000018000000530000000000000012000000000000000e00000053",
            INIT_19 => X"00000000000000630000000a000000490000002c0000001a0000000000000000",
            INIT_1A => X"000000080000005f0000000b000000000000001e000000000000003900000000",
            INIT_1B => X"00000038000000000000002e0000004900000000000000000000000000000000",
            INIT_1C => X"000000bf000000000000000000000023000000040000000d0000000000000015",
            INIT_1D => X"0000000c0000000000000061000000500000000a0000000000000000000000a4",
            INIT_1E => X"00000000000000000000001e000000270000000d000000000000000000000001",
            INIT_1F => X"0000000000000045000000680000000000000008000000000000007c00000000",
            INIT_20 => X"000000000000002a00000022000000120000000000000017000000000000003c",
            INIT_21 => X"0000001100000003000000000000001c00000031000000060000002200000000",
            INIT_22 => X"000000260000003a000000440000000a00000018000000000000004a00000000",
            INIT_23 => X"000000190000002a0000000e000000170000000a000000000000000500000048",
            INIT_24 => X"000000560000001c000000510000001100000000000000a3000000000000000b",
            INIT_25 => X"0000005600000000000000000000000000000014000000280000002d0000001e",
            INIT_26 => X"0000000000000040000000280000000000000098000000000000000000000000",
            INIT_27 => X"00000000000000000000000900000010000000100000000e0000001100000000",
            INIT_28 => X"0000000300000041000000480000001f0000000000000009000000050000000a",
            INIT_29 => X"0000000800000010000000140000001700000010000000080000001700000000",
            INIT_2A => X"000000100000007400000000000000000000001100000000000000090000000d",
            INIT_2B => X"000000100000000d00000009000000000000002600000000000000000000000d",
            INIT_2C => X"000000190000000000000000000000160000000c000000090000001800000010",
            INIT_2D => X"000000000000000b000000310000000300000000000000000000000000000000",
            INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000004000000000000000000000000000000000000000100000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000040000001200000000000000000000000000000000",
            INIT_34 => X"0000000500000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000000000001000000270000000000000000000000380000000800000000",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000400000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000014000000000000000000000000000000000000000f00000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000001200000000000000000000000000000000",

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
            INIT_00 => X"0000001100000000000000000000000000000000000000000000001e00000030",
            INIT_01 => X"0000003e000000000000000000000000000000000000001c0000002400000001",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000002",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000000000001300000000000000000000002f00000036",
            INIT_0A => X"00000033000000350000003500000030000000390000003b000000360000002b",
            INIT_0B => X"0000002000000020000000250000002800000027000000300000003800000036",
            INIT_0C => X"0000003900000033000000420000003b00000039000000230000000200000002",
            INIT_0D => X"0000000600000006000000110000002700000030000000130000003600000039",
            INIT_0E => X"000000370000003d0000001e0000000000000000000000000000000400000000",
            INIT_0F => X"0000000100000000000000170000001500000000000000320000003700000040",
            INIT_10 => X"000000120000001e000000000000000000000000000000170000000000000000",
            INIT_11 => X"0000000000000000000000000000001200000034000000100000004400000033",
            INIT_12 => X"0000002500000006000000000000000000000010000000090000000000000000",
            INIT_13 => X"00000000000000000000000f00000031000000380000000b0000000d0000002b",
            INIT_14 => X"000000080000000b000000000000002a00000000000000000000000000000000",
            INIT_15 => X"000000000000002c000000070000003d0000000e000000110000002e00000017",
            INIT_16 => X"0000000800000003000000130000000000000000000000000000000000000004",
            INIT_17 => X"00000019000000000000002500000000000000220000002e0000000a00000000",
            INIT_18 => X"000000130000000f000000000000000000000002000000000000001500000011",
            INIT_19 => X"00000009000000000000001c00000000000000000000000c000000000000002c",
            INIT_1A => X"0000000000000000000000000000000000000021000000160000000e00000014",
            INIT_1B => X"000000000000000300000000000000000000001f000000060000000500000000",
            INIT_1C => X"00000000000000000000001e0000002800000005000000140000001500000000",
            INIT_1D => X"0000002c00000006000000110000001700000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000320000003c",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"00000000000000000000000000000000000000000000004f0000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000028000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000027",
            INIT_26 => X"0000002200000023000000290000002c00000020000000280000002b0000002f",
            INIT_27 => X"00000032000000290000001d0000001e000000290000002e0000002800000024",
            INIT_28 => X"000000240000002c000000210000000e00000043000000300000002e00000005",
            INIT_29 => X"000000210000002900000019000000150000002c0000003f0000000200000028",
            INIT_2A => X"000000290000002a00000020000000280000002400000010000000000000001c",
            INIT_2B => X"0000000c000000320000001a0000000b0000005c000000000000002e00000024",
            INIT_2C => X"000000380000000c000000270000002500000019000000000000002300000018",
            INIT_2D => X"0000001a00000026000000000000002c00000005000000410000000000000013",
            INIT_2E => X"000000270000002a000000240000002500000000000000140000003800000012",
            INIT_2F => X"0000002b0000001a0000002400000000000000370000002f0000000000000000",
            INIT_30 => X"00000016000000250000004300000000000000340000002a000000070000001d",
            INIT_31 => X"0000002000000011000000240000000e00000046000000000000000000000015",
            INIT_32 => X"0000001c00000039000000000000002b000000280000000d0000000000000025",
            INIT_33 => X"0000000b0000000600000029000000340000000200000000000000350000000b",
            INIT_34 => X"0000001800000000000000110000002c00000000000000110000000d0000000d",
            INIT_35 => X"000000000000003f0000000000000034000000000000000e0000001b00000000",
            INIT_36 => X"0000003f000000050000002b00000000000000000000001a0000000000000000",
            INIT_37 => X"00000039000000000000002a00000014000000000000001d0000002c0000000f",
            INIT_38 => X"0000002f0000000f00000000000000100000002f000000000000000000000038",
            INIT_39 => X"0000000000000029000000320000000000000005000000270000002b0000000f",
            INIT_3A => X"0000000800000008000000110000002100000000000000000000000000000000",
            INIT_3B => X"0000005200000005000000000000000000000000000000070000000300000000",
            INIT_3C => X"000000000000000000000003000000140000000000000000000000220000002e",
            INIT_3D => X"0000000000000006000000020000000500000001000000000000000000000002",
            INIT_3E => X"0000000000000000000000090000000000000000000000220000000d00000000",
            INIT_3F => X"0000000900000006000000000000000000000001000000000000000000000000",

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
            INIT_00 => X"0000001500000013000000000000000000000004000000140000000000000000",
            INIT_01 => X"0000000000000000000000000000000c0000000000000000000000120000001a",
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
            INIT_06 => X"00000000000000000000000000000000000000600000006c0000003700000021",
            INIT_07 => X"000000380000000c0000004c0000000000000000000000000000001700000000",
            INIT_08 => X"0000000f0000002a00000000000000000000001500000007000000000000002b",
            INIT_09 => X"0000005f00000061000000110000001300000000000000000000000000000029",
            INIT_0A => X"000000000000005d00000073000000000000004300000046000000b80000005a",
            INIT_0B => X"00000000000000000000000000000017000000d6000000230000000000000000",
            INIT_0C => X"00000000000000000000000500000000000000000000001c0000003a0000001f",
            INIT_0D => X"000000270000013a0000000e000000000000001d000000c20000002400000038",
            INIT_0E => X"000000800000006f0000000000000017000001cf000000220000000000000000",
            INIT_0F => X"000000160000000000000060000000f20000000000000000000000000000017a",
            INIT_10 => X"0000009200000000000000000000000a00000000000000000000009d000000ce",
            INIT_11 => X"000000000000000d00000000000000000000007b000000000000007c0000000c",
            INIT_12 => X"00000000000000030000000000000000000000000000000f0000000000000000",
            INIT_13 => X"0000000000000000000000000000000000000000000000000000001100000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000360000000000000000",
            INIT_15 => X"0000000000000000000000380000000000000000000000000000000000000000",
            INIT_16 => X"00000000000000000000004b000000000000000000000077000000000000009d",
            INIT_17 => X"0000000000000000000000000000002d00000000000000150000000000000000",
            INIT_18 => X"0000000000000013000000000000002100000000000000060000000000000000",
            INIT_19 => X"0000000000000000000000000000000000000000000000000000000d00000000",
            INIT_1A => X"0000000000000079000000000000006e0000000000000000000000000000006a",
            INIT_1B => X"000000000000000000000006000000000000000000000000000000cb00000000",
            INIT_1C => X"00000000000000000000003c000000390000001b000000370000000000000000",
            INIT_1D => X"00000000000000000000000000000006000000000000000000000032000000b6",
            INIT_1E => X"0000000000000008000000000000000a00000000000000390000006700000000",
            INIT_1F => X"0000000c00000020000000110000002e000000000000002a0000000000000015",
            INIT_20 => X"000000360000000900000017000000000000000000000000000000090000000b",
            INIT_21 => X"00000019000000060000000000000017000000000000000d0000002900000009",
            INIT_22 => X"0000000000000008000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000017000000000000000d00000009",
            INIT_24 => X"0000000000000016000000260000001a00000013000000000000000000000000",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"0000000000000000000000000000000000000005000000000000000100000002",
            INIT_27 => X"00000000000000000000000000000000000000000000001b000000000000000e",
            INIT_28 => X"0000001100000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000f00000000000000000000000000000000",
            INIT_2A => X"0000003b00000002000000000000000100000006000000180000001500000000",
            INIT_2B => X"000000000000000000000000000000000000000b000000000000000500000000",
            INIT_2C => X"0000000000000011000000060000001c0000004000000001000000000000001f",
            INIT_2D => X"0000000c00000005000000170000002d00000008000000210000001200000008",
            INIT_2E => X"0000001300000022000000300000000000000000000000380000003100000000",
            INIT_2F => X"0000002e0000001a000000000000000800000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000002200000000000000000000004a0000004a0000002a0000003200000000",
            INIT_32 => X"00000009000000090000000a0000000000000011000000320000000000000000",
            INIT_33 => X"0000000000000005000000000000003e00000004000000190000001f00000000",
            INIT_34 => X"0000005b000000000000004e0000000000000000000000000000001600000000",
            INIT_35 => X"0000005d0000005b000000000000000d00000000000000830000005f00000000",
            INIT_36 => X"0000000000000000000000000000005b0000001c000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000002900000000000000190000000000000000",
            INIT_39 => X"00000000000000000000003c0000000000000017000000000000003600000000",
            INIT_3A => X"00000000000000100000000000000000000000000000001f0000000000000008",
            INIT_3B => X"000000170000000e00000000000000000000000000000000000000aa0000003b",
            INIT_3C => X"00000056000000270000002f000000000000002700000087000000560000004d",
            INIT_3D => X"0000004c00000072000000680000006100000051000000940000002d00000000",
            INIT_3E => X"0000004d00000000000000380000002500000000000000180000000c0000000a",
            INIT_3F => X"000000000000009b0000002d000000000000000e0000001c0000000000000000",

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
            INIT_00 => X"00000000000000740000003900000039000000360000001b0000000000000000",
            INIT_01 => X"00000013000000000000004b0000001d000000020000004d0000005000000092",
            INIT_02 => X"00000050000000000000000000000000000000240000009e0000000000000000",
            INIT_03 => X"000000000000001200000015000000320000004b0000001c0000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000004e00000000",
            INIT_05 => X"0000000000000000000000370000002c00000000000000250000000000000000",
            INIT_06 => X"000000000000000000000064000000000000003f000000000000001100000013",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000005f00000002",
            INIT_08 => X"000000000000000700000000000000140000000b000000040000005300000004",
            INIT_09 => X"00000018000000320000002e0000001700000000000000000000000000000000",
            INIT_0A => X"000000000000000000000000000000000000000000000000000000000000000d",
            INIT_0B => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"000000000000000d00000000000000000000000000000016000000000000000e",
            INIT_0D => X"0000001e00000000000000000000000600000000000000000000000100000021",
            INIT_0E => X"00000000000000000000000000000000000000120000001b0000000000000000",
            INIT_0F => X"000000000000003900000038000000410000002e000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000022000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"0000002300000000000000170000007c00000003000000000000001a00000000",
            INIT_14 => X"000000000000001a000000000000001500000006000000180000001700000000",
            INIT_15 => X"000000000000000c0000001e0000002400000035000000400000008100000092",
            INIT_16 => X"000000270000006c000000190000000000000033000000000000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000700000000000000000",
            INIT_18 => X"00000000000000050000000000000000000000000000001c0000004f00000038",
            INIT_19 => X"0000003800000000000000360000000000000000000000000000000000000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000013000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000001c000000420000006500000026000000660000000000000000",
            INIT_1E => X"000000620000004e00000059000000560000007700000019000000000000004d",
            INIT_1F => X"000000600000003500000047000000b7000000740000000c0000002800000025",
            INIT_20 => X"0000001800000039000000850000007800000039000000500000006e00000084",
            INIT_21 => X"0000008a0000009a0000008b000000a9000000920000009c000000ab000000bb",
            INIT_22 => X"00000000000000000000000a000000a6000000b5000000a90000006700000050",
            INIT_23 => X"00000046000000970000004d00000000000000000000001c0000002d00000011",
            INIT_24 => X"0000001c000000000000000000000021000000000000001d000000680000001d",
            INIT_25 => X"0000000000000000000000000000000000000000000000000000002b0000002f",
            INIT_26 => X"00000037000000340000006a0000004000000024000000d10000006700000056",
            INIT_27 => X"0000007300000042000000170000006100000000000000000000000000000000",
            INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"000000000000000f000000000000000000000000000000000000000000000000",
            INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000006",
            INIT_2C => X"000000000000000000000021000000000000006800000000000000b30000009b",
            INIT_2D => X"0000007d0000009c0000007c000000c10000007d000000a000000098000000a9",
            INIT_2E => X"000000c2000000b0000000060000001c00000000000000000000000000000000",
            INIT_2F => X"0000000000000000000000110000000000000000000000000000000000000000",
            INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"00000000000000000000000000000062000000610000004b0000005100000050",
            INIT_35 => X"00000049000000410000006100000088000000530000005b0000005e0000005a",
            INIT_36 => X"0000002a000000680000005a00000060000000760000005f000000730000003c",
            INIT_37 => X"000000760000006d0000004e0000007b00000046000000410000005d0000005c",
            INIT_38 => X"00000097000000460000003b0000004f0000001000000015000000230000002e",
            INIT_39 => X"0000002f00000000000000000000000000000000000000000000000d00000000",
            INIT_3A => X"0000000000000000000000000000000000000063000000730000007b00000057",
            INIT_3B => X"000000560000004b000000480000004500000070000000430000004000000005",
            INIT_3C => X"00000012000000440000002b00000032000000220000001e0000000000000024",
            INIT_3D => X"0000003c000000070000005d0000000000000009000000000000002100000021",
            INIT_3E => X"0000000000000006000000000000001500000019000000170000002b00000000",
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
            INIT_00 => X"00000000000000000000000000000000000000000000005a0000005e0000004a",
            INIT_01 => X"0000002c0000002600000031000000470000003c000000360000000000000026",
            INIT_02 => X"000000260000003a0000003e000000500000000e000000020000004600000031",
            INIT_03 => X"0000002e0000002d0000003f00000035000000260000005a0000004400000035",
            INIT_04 => X"00000049000000440000001c00000000000000080000002c000000000000001d",
            INIT_05 => X"0000000000000002000000000000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000017000000000000000a000000000000003200000011",
            INIT_09 => X"0000000000000011000000000000004c00000000000000000000002e00000000",
            INIT_0A => X"0000000200000000000000760000001c00000000000000110000000000000000",
            INIT_0B => X"000000000000006e000000120000007b000000860000001a000000180000003e",
            INIT_0C => X"00000000000000af0000003d0000003300000035000000480000004c00000116",
            INIT_0D => X"0000010a000000be000000d1000000740000006c000000c1000000be000000f0",
            INIT_0E => X"000000960000001500000035000000030000002b000000550000003e0000007b",
            INIT_0F => X"0000001c00000034000000000000001000000040000000640000005700000011",
            INIT_10 => X"0000000a00000000000000400000001f0000004000000030000000270000002f",
            INIT_11 => X"0000001700000076000000370000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000000000000002b000000000000006c0000000000000009",
            INIT_14 => X"0000000000000000000000970000000000000065000000840000006f00000000",
            INIT_15 => X"00000000000000ed00000000000000b000000062000000c40000007900000000",
            INIT_16 => X"0000005300000000000000920000000000000046000000000000002500000076",
            INIT_17 => X"000000530000001f000000000000000000000000000000a20000000000000024",
            INIT_18 => X"00000000000000000000000600000011000000000000000b0000000000000000",
            INIT_19 => X"0000000000000006000000000000001e000000110000005c0000003200000024",
            INIT_1A => X"0000009e000000500000008a00000034000000460000002c0000002600000042",
            INIT_1B => X"00000036000000590000002e000000970000002200000036000000220000002a",
            INIT_1C => X"000000310000003500000027000000000000001f00000017000000af000000a6",
            INIT_1D => X"0000002b0000003700000066000000210000001c0000009a000000bd00000028",
            INIT_1E => X"0000000000000010000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"0000000000000000000000000000000000000000000000000000000b0000001f",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000003000000018",
            INIT_23 => X"000000050000002a000000200000001900000000000000470000007e00000086",
            INIT_24 => X"0000008a000000a7000000b3000000b0000000d00000007d000000ae000000a3",
            INIT_25 => X"000000ac000000bf000000e10000000000000002000000000000000000000000",
            INIT_26 => X"000000000000000000000000000000040000002f0000002a000000000000004e",
            INIT_27 => X"0000000000000000000000650000000000000053000000000000003a00000000",
            INIT_28 => X"000000110000000500000000000000500000000000000025000000000000001c",
            INIT_29 => X"000000000000008b000000000000000000000000000000000000000000000000",
            INIT_2A => X"0000000000000000000000220000000000000004000000000000000000000012",
            INIT_2B => X"000000180000000d000000240000000a00000000000000000000000000000000",
            INIT_2C => X"0000004d00000000000000040000005000000012000000000000000000000033",
            INIT_2D => X"000000000000001e000000000000003f00000000000000000000009100000000",
            INIT_2E => X"0000000000000000000000250000000000000000000000000000000000000000",
            INIT_2F => X"00000000000000440000000a0000000000000000000000770000000000000000",
            INIT_30 => X"000000000000000000000000000000670000004200000005000000a600000000",
            INIT_31 => X"000000610000003000000041000000380000000b000000000000000300000000",
            INIT_32 => X"0000000000000000000000000000000000000000000000290000004e00000023",
            INIT_33 => X"00000000000000220000000000000023000000000000002d0000006f00000000",
            INIT_34 => X"000000050000002e0000005c0000000000000000000000000000000000000000",
            INIT_35 => X"000000000000002b000000030000002e0000002c000000000000000000000000",
            INIT_36 => X"000000000000000000000000000000000000005e0000005e0000005300000000",
            INIT_37 => X"00000000000000000000003000000036000000300000003900000090000000b0",
            INIT_38 => X"000000a200000067000000670000004a000000680000006a000000b400000079",
            INIT_39 => X"000000250000003b0000001400000043000000340000006a0000004200000000",
            INIT_3A => X"00000034000000000000002400000000000000220000002c0000000000000027",
            INIT_3B => X"000000000000003c000000000000003300000017000000080000000000000000",
            INIT_3C => X"0000004600000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000017000000000000000000000000",
            INIT_3F => X"0000000000000000000000160000000a0000002d000000010000000000000000",

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
            INIT_00 => X"0000000300000017000000120000002f000000450000001e0000000000000008",
            INIT_01 => X"000000150000000200000000000000600000004200000039000000270000003a",
            INIT_02 => X"0000003a000000260000006900000007000000480000007e0000007e00000088",
            INIT_03 => X"00000096000000bb0000006600000092000000960000009e000000a9000000ab",
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
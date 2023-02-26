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
          

    MEM_IWGHT_LAYER2_ENTITY0 : if BRAM_NAME = "iwght_layer2_entity0" generate
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
            INIT_00 => X"ffffd97ffffff546fffff23efffffb98fffff88d00004a5700001017fffffa16",
            INIT_01 => X"00000ea500000a32000021850000417100000277ffffda53fffff2be00001a10",
            INIT_02 => X"000041b4000044f2fffff3ef00000d1f0000130500002f1d00000aedffffed1b",
            INIT_03 => X"fffffb1b00002f06ffffd00ffffff844fffffa9200001b8cfffff25e00002a6e",
            INIT_04 => X"00001aee00004eda0000265700001729000022b700001e3dffffd5f5000005d9",
            INIT_05 => X"ffffed4000001361ffffe8480000091dffffd2aafffff53800001eeffffff0af",
            INIT_06 => X"00000be800002c7a0000227ffffffaef0000175600002c6efffffec7fffff967",
            INIT_07 => X"00000ac3000018cc00002da4000025710000380effffe10000001e3c00002be4",
            INIT_08 => X"ffffffed0000000afffffff400000006ffffffeb0000000000000019ffffffff",
            INIT_09 => X"00000010fffffff3fffffff00000001ffffffffb0000000b0000001dffffffe6",
            INIT_0A => X"fffffffaffffffe0000000270000002a0000002d000000280000008f00000034",
            INIT_0B => X"0000002800000064000000230000001400000038fffffffefffffff60000000b",
            INIT_0C => X"fffffff900000006ffffffd6ffffffd6000000110000003f0000004300000054",
            INIT_0D => X"0000008d000000450000003a0000006000000007000000000000001affffffe6",
            INIT_0E => X"000000190000000f00000000000000240000001f00000011fffffffe00000000",
            INIT_0F => X"0000001bffffffd3fffffffc00000021ffffffd8ffffffecfffffffe00000000",
            INIT_10 => X"fffffffeffffffecffffffddfffffff0ffffffd8fffffff7ffffffdffffffff2",
            INIT_11 => X"000000200000000300000018fffffffd000000120000003b00000002ffffffee",
            INIT_12 => X"fffffff4fffffff40000001a00000009fffffffcfffffffe00000004fffffff8",
            INIT_13 => X"fffffffa00000005ffffffe50000002600000011fffffffc0000000dfffffffc",
            INIT_14 => X"ffffffe8ffffffd8ffffffea00000008fffffffbffffffdc00000007fffffffa",
            INIT_15 => X"ffffffdcffffffc800000009000000030000000f000000110000000200000007",
            INIT_16 => X"ffffffeffffffffd0000000b0000000e00000022000000100000000f00000025",
            INIT_17 => X"ffffffe3fffffff70000001500000000fffffffa0000000400000000fffffff8",
            INIT_18 => X"ffffffcb00000010000000150000001000000002000000240000000a00000010",
            INIT_19 => X"00000003ffffffd9fffffff7ffffffcffffffff000000001ffffffe9fffffff1",
            INIT_1A => X"00000011000000090000000efffffff5000000110000003700000001fffffff0",
            INIT_1B => X"ffffffdf000000070000002000000013fffffffdfffffff30000000cffffffe5",
            INIT_1C => X"ffffffe700000000ffffffbdffffffd2ffffffc6ffffffffffffffb7ffffffd7",
            INIT_1D => X"ffffffd4ffffff91ffffffdfffffffee00000008fffffff9fffffff400000001",
            INIT_1E => X"fffffffa000000220000000000000012ffffffe5fffffff7ffffffd8fffffff4",
            INIT_1F => X"ffffffdefffffff200000002fffffff0fffffffc00000009fffffff6ffffffe4",
            INIT_20 => X"00000011fffffffffffffff6000000100000000100000018fffffff800000005",
            INIT_21 => X"fffffff5fffffff0fffffff00000000200000002ffffffebffffffef00000001",
            INIT_22 => X"fffffff7000000020000000c000000070000002cfffffff8ffffffe30000001a",
            INIT_23 => X"0000000700000010ffffffed0000000d00000006ffffffc700000013ffffffe6",
            INIT_24 => X"ffffff980000000d0000000e00000030fffffffb0000001200000011fffffff6",
            INIT_25 => X"000000080000000400000003ffffffee000000220000001dfffffffe0000001a",
            INIT_26 => X"ffffffffffffffe3ffffffdc0000000afffffffc00000016ffffffe800000000",
            INIT_27 => X"0000001b00000008ffffffee0000002100000019000000190000000200000010",
            INIT_28 => X"0000001500000012ffffffd5ffffffedffffffdb0000001cffffffe000000014",
            INIT_29 => X"fffffff5fffffffcfffffffaffffffe70000000efffffffbffffffeb00000004",
            INIT_2A => X"00000002ffffffe90000000300000016ffffffff0000001400000019ffffffff",
            INIT_2B => X"ffffffeb00000010000000060000001d00000004fffffffdffffffccffffffe8",
            INIT_2C => X"0000000000000001000000120000001efffffff0000000020000002300000000",
            INIT_2D => X"fffffffdffffffddffffffc6ffffffdeffffffd7000000000000000500000025",
            INIT_2E => X"0000006e0000002c00000011ffffffe2ffffffce0000002400000026ffffffeb",
            INIT_2F => X"000000690000002a00000043fffffff6fffffff6ffffffaf00000009ffffff9b",
            INIT_30 => X"00000000fffffff30000001c0000003bfffffff7fffffff10000000700000014",
            INIT_31 => X"000000390000003e0000003f0000004600000022fffffff100000007ffffffe5",
            INIT_32 => X"fffffff500000051fffffffeffffffbbffffffbeffffffed0000000200000021",
            INIT_33 => X"00000033ffffffeafffffffdffffffddffffffb2ffffffb4ffffffea00000010",
            INIT_34 => X"0000000200000003ffffffd0ffffffc6ffffffbf000000190000000c00000011",
            INIT_35 => X"ffffffecfffffffefffffff2fffffff800000012000000140000000000000020",
            INIT_36 => X"0000001400000034000000220000000400000013000000220000000800000018",
            INIT_37 => X"fffffff5ffffffd7ffffffed00000009fffffff2000000120000002900000020",
            INIT_38 => X"0000001f00000021ffffffdcffffffff00000003ffffffe20000005400000036",
            INIT_39 => X"ffffffda00000023ffffffe1fffffffa00000011fffffffcffffffda00000006",
            INIT_3A => X"00000003ffffffd0ffffffbaffffffcfffffffc100000039000000430000000e",
            INIT_3B => X"ffffffd9ffffffddffffffe4000000120000002500000038ffffffdcffffffef",
            INIT_3C => X"ffffffd5000000250000003e00000018ffffffccffffffcdffffffc600000019",
            INIT_3D => X"0000001f000000180000000500000004fffffffeffffffd9ffffff97ffffff8e",
            INIT_3E => X"000000340000003100000042ffffffef0000000cfffffff4000000050000002a",
            INIT_3F => X"0000001700000030000000330000000d000000230000001e00000005ffffffe2",

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
    end generate MEM_IWGHT_LAYER2_ENTITY0;


    MEM_IWGHT_LAYER2_ENTITY1 : if BRAM_NAME = "iwght_layer2_entity1" generate
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
            INIT_00 => X"fffffffd000000050000000400000023ffffffe7000000070000004d00000010",
            INIT_01 => X"fffffffa0000001dfffffff70000000500000004fffffffcfffffff900000022",
            INIT_02 => X"fffffffdfffffff2ffffffe0ffffffe5fffffffe0000001a000000030000001d",
            INIT_03 => X"000000080000000d00000000fffffff7ffffffe00000001b0000000400000010",
            INIT_04 => X"000000090000001f00000000ffffffe6ffffffd2ffffffe300000007fffffffe",
            INIT_05 => X"fffffff0fffffff70000000d00000007ffffffd4fffffff0ffffffddffffffda",
            INIT_06 => X"fffffffe00000000000000310000004900000023ffffffe7ffffffdcffffffd8",
            INIT_07 => X"ffffffdeffffffb6fffffff100000028ffffffadffffffc70000004dffffffd3",
            INIT_08 => X"ffffffccffffffeaffffffdefffffff6ffffffe0ffffffceffffffef00000014",
            INIT_09 => X"0000002400000031000000300000003800000016000000130000002a00000020",
            INIT_0A => X"00000011fffffff3ffffffc3ffffffee00000015fffffff6ffffffce00000024",
            INIT_0B => X"0000001400000000ffffffbbffffffeefffffffb00000004ffffffbbfffffff1",
            INIT_0C => X"ffffffed000000010000000e000000260000003bffffffff0000000000000005",
            INIT_0D => X"ffffffb70000001affffffc2fffffffaffffffdaffffffd900000003fffffff3",
            INIT_0E => X"ffffffe400000008ffffffe4ffffffeeffffffe1ffffffe90000001800000032",
            INIT_0F => X"00000013fffffff7ffffffef00000013fffffffbffffffe6ffffffe6ffffffdd",
            INIT_10 => X"000000110000002200000014fffffff2ffffffee00000007fffffff900000000",
            INIT_11 => X"fffffff800000002fffffff600000008fffffff5ffffffdfffffffb30000001c",
            INIT_12 => X"00000019ffffffe5ffffffe9ffffffeefffffffdffffffc7ffffffd9ffffffef",
            INIT_13 => X"fffffffc0000000f0000000b0000000d0000001f0000001d000000590000001f",
            INIT_14 => X"0000003c0000000e0000003500000019ffffffc5ffffffd3ffffffd9ffffffee",
            INIT_15 => X"ffffffc40000000100000006fffffff300000025fffffffc0000000a0000000d",
            INIT_16 => X"00000006000000260000000afffffff40000000c0000001efffffffdffffffff",
            INIT_17 => X"fffffff5ffffffd90000000600000004ffffffddffffffdcffffffea00000035",
            INIT_18 => X"0000001a0000001800000000ffffffe4ffffffca0000000ffffffff1ffffffef",
            INIT_19 => X"ffffffe700000022ffffffd20000000d00000000fffffffb0000003700000010",
            INIT_1A => X"ffffffe0ffffffff0000003100000038ffffffd6000000190000002effffffcf",
            INIT_1B => X"ffffffe2000000280000001cfffffffcfffffffb0000001f0000001effffffe3",
            INIT_1C => X"fffffffdfffffffcffffffe300000019fffffff80000000ffffffffc00000026",
            INIT_1D => X"00000011ffffffe9000000240000002cfffffff3ffffffe800000013ffffffea",
            INIT_1E => X"000000020000000fffffffe70000000c000000160000001d0000000700000038",
            INIT_1F => X"ffffffd6ffffffd8ffffffd80000001bfffffffc000000020000000ffffffffd",
            INIT_20 => X"ffffffd400000008fffffffeffffffeaffffffcefffffff400000005ffffffd2",
            INIT_21 => X"ffffffec00000036ffffffcf0000000400000038ffffffc8ffffffce0000002c",
            INIT_22 => X"0000002dfffffff0fffffff600000023ffffffd4ffffffcf0000003100000007",
            INIT_23 => X"fffffff00000000a000000010000003cffffffe50000000800000028ffffffc6",
            INIT_24 => X"ffffffe50000002400000006ffffffc9ffffffdd0000001f000000000000001f",
            INIT_25 => X"fffffff4ffffffe6fffffff800000001ffffffffffffffe60000001800000011",
            INIT_26 => X"00000000fffffff6fffffffb000000090000001fffffffe6ffffffe90000000f",
            INIT_27 => X"000000100000000d0000000b00000004fffffffa00000024fffffffeffffffe8",
            INIT_28 => X"00000023fffffff600000007fffffff20000000000000002fffffff30000001d",
            INIT_29 => X"00000031ffffffd8fffffffa00000022ffffffc9ffffffcc0000001f00000000",
            INIT_2A => X"fffffff3ffffffb70000001600000014ffffffeefffffff800000003ffffffcb",
            INIT_2B => X"ffffffeb000000320000000d0000001b00000027000000220000002600000036",
            INIT_2C => X"0000003000000003ffffffebffffffe0fffffffdffffffe8ffffffb700000037",
            INIT_2D => X"0000001dffffffe3ffffffdcffffffff00000023ffffffc3ffffffd900000023",
            INIT_2E => X"ffffffbeffffffed00000020ffffffe40000002e0000002dffffffe9fffffffc",
            INIT_2F => X"00000030ffffffe5ffffffe80000002c00000002000000170000001f0000000f",
            INIT_30 => X"0000003e0000004900000025000000440000002cfffffff8000000130000001c",
            INIT_31 => X"ffffffdc0000000f00000035ffffffd8ffffffe3fffffffc00000005fffffffc",
            INIT_32 => X"ffffffca00000030000000130000001a000000120000001b00000006ffffffeb",
            INIT_33 => X"fffffff400000029ffffffbfffffffff0000000effffffc0000000030000003e",
            INIT_34 => X"fffffffd000000000000000000000003fffffffdfffffffb0000000cffffffee",
            INIT_35 => X"00000008fffffff0ffffffe40000000affffffeafffffff8fffffff3fffffff6",
            INIT_36 => X"ffffffeafffffff300000006ffffffed0000000bffffffe7fffffff4fffffff6",
            INIT_37 => X"fffffff60000000e00000000fffffff000000008fffffff5fffffff0ffffffe8",
            INIT_38 => X"0000000dffffffeb00000005fffffffdffffffec000000000000000500000000",
            INIT_39 => X"fffffffafffffff600000003ffffffeeffffffedfffffff100000007fffffff4",
            INIT_3A => X"00000000fffffffb000000020000001100000006fffffff6fffffffbfffffff4",
            INIT_3B => X"fffffff3fffffff0fffffff7fffffff300000006fffffffdfffffffd0000000d",
            INIT_3C => X"0000000a0000000500000007ffffffee00000000ffffffebffffffdd00000000",
            INIT_3D => X"0000000cffffffe700000002000000090000000400000007fffffff9ffffffec",
            INIT_3E => X"fffffffcffffffed00000008ffffffff0000000200000002fffffff7fffffff9",
            INIT_3F => X"fffffffcffffffffffffffeb0000000ffffffff2000000030000000000000010",

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
    end generate MEM_IWGHT_LAYER2_ENTITY1;


    MEM_IWGHT_LAYER2_ENTITY2 : if BRAM_NAME = "iwght_layer2_entity2" generate
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
            INIT_00 => X"ffffffeafffffffaffffffdfffffffebfffffff800000011fffffff800000007",
            INIT_01 => X"00000004fffffff2fffffffc0000000800000005fffffff800000005fffffff4",
            INIT_02 => X"00000000ffffffeb00000002fffffff4fffffffcffffffe1fffffffdffffffe2",
            INIT_03 => X"0000000a0000000bfffffff200000000fffffffd0000000000000001ffffffee",
            INIT_04 => X"fffffff9ffffffee0000000800000012000000070000000bfffffff5fffffff8",
            INIT_05 => X"ffffffecfffffff10000000300000005fffffff2fffffffbfffffffbfffffff5",
            INIT_06 => X"0000000bfffffff000000000fffffff7ffffffe8fffffffffffffffb00000000",
            INIT_07 => X"ffffffedffffffff00000006ffffffecffffffebffffffefffffffe9ffffffe7",
            INIT_08 => X"fffffffdfffffffafffffff400000000fffffffefffffff60000000afffffff2",
            INIT_09 => X"fffffff5fffffff4fffffff8ffffffea0000000cfffffffefffffff100000000",
            INIT_0A => X"fffffff0ffffffe7fffffff4ffffffebffffffec0000000fffffffedfffffff9",
            INIT_0B => X"fffffffbffffffebfffffffbfffffff3ffffffedfffffff40000000300000004",
            INIT_0C => X"00000001fffffffa00000007ffffffee0000000bfffffff2fffffffe0000000c",
            INIT_0D => X"00000005ffffffe900000000ffffffebfffffff8ffffffe7fffffffc00000004",
            INIT_0E => X"00000003fffffffcffffffea00000000fffffff800000003fffffff2ffffffed",
            INIT_0F => X"ffffffea00000005ffffffffffffffeaffffffe800000005fffffffc00000000",
            INIT_10 => X"ffffffe0ffffffeefffffff000000001fffffff300000009fffffff6fffffff0",
            INIT_11 => X"00000009ffffffedfffffffb0000000200000004000000110000000000000001",
            INIT_12 => X"0000000000000005ffffffec0000000b0000000bffffffea0000001000000008",
            INIT_13 => X"ffffffec00000002fffffff6ffffffe8ffffffeafffffff2fffffffefffffff0",
            INIT_14 => X"fffffff9fffffff1fffffff1fffffff500000009fffffff60000000700000007",
            INIT_15 => X"ffffffed0000000b0000000b00000001fffffffafffffff100000009fffffff6",
            INIT_16 => X"00000006fffffffa000000080000000d00000009fffffffbfffffff4fffffff3",
            INIT_17 => X"ffffffefffffffe30000000400000012fffffff3fffffff700000008fffffff0",
            INIT_18 => X"000000090000001b00000017fffffffbfffffff6000000010000000c00000001",
            INIT_19 => X"fffffffcffffffe3ffffffd5ffffffe3000000120000003efffffffaffffffe6",
            INIT_1A => X"ffffffeefffffff3ffffffb6ffffffd6ffffffea0000000cfffffff7ffffffd9",
            INIT_1B => X"000000110000001e00000007ffffffe6ffffffce00000032ffffffe4ffffffbe",
            INIT_1C => X"ffffffd5ffffffdfffffffe4ffffffc2ffffffd0ffffffceffffffcd0000000a",
            INIT_1D => X"ffffffd1ffffffd0fffffff8ffffffd6ffffffe5ffffffc3ffffffc3ffffffd3",
            INIT_1E => X"ffffffbfffffffeaffffffe9fffffffe00000016000000160000002300000025",
            INIT_1F => X"000000310000001b0000000ffffffffb000000080000001c00000036ffffffff",
            INIT_20 => X"0000001600000018ffffffe1fffffff7ffffffed0000000e0000001ffffffff2",
            INIT_21 => X"0000000700000008fffffff60000002b00000011fffffff1000000030000000e",
            INIT_22 => X"00000024fffffff9ffffffc3fffffff0ffffffb6ffffffcfffffffabffffffd7",
            INIT_23 => X"ffffffde0000000f000000090000000300000000000000280000003a0000000e",
            INIT_24 => X"fffffffa0000000f0000001dffffffe90000001400000001fffffff400000024",
            INIT_25 => X"fffffff0fffffffdffffffeeffffffdc000000160000001afffffff7fffffff4",
            INIT_26 => X"ffffffde00000000fffffff5ffffffe0ffffffdffffffff3000000380000001c",
            INIT_27 => X"ffffffb5ffffffcfffffffaaffffffb2ffffffebffffffe2ffffffea00000000",
            INIT_28 => X"00000000fffffffffffffffafffffff200000016000000030000000c0000000f",
            INIT_29 => X"fffffffa00000000ffffffefffffffe000000000fffffffcffffffe5ffffffc8",
            INIT_2A => X"000000270000000dffffffe80000002a00000041000000600000001200000035",
            INIT_2B => X"0000001d0000000f0000001a00000017ffffffed0000003f00000022fffffff9",
            INIT_2C => X"00000046000000370000000600000000fffffff8000000060000002c0000000c",
            INIT_2D => X"ffffffe400000000ffffffd400000016fffffffd0000000a0000000d00000001",
            INIT_2E => X"0000000200000004fffffffe000000020000002b000000180000001f0000000d",
            INIT_2F => X"000000130000001600000013fffffffb0000000400000002ffffffe60000000e",
            INIT_30 => X"00000010ffffffdf0000001500000014fffffffa0000000dffffffda0000001b",
            INIT_31 => X"fffffff0ffffffceffffffeeffffffe3fffffff7ffffffec00000002fffffff5",
            INIT_32 => X"fffffff2ffffffff000000220000003f000000320000001a0000001200000011",
            INIT_33 => X"00000017ffffffceffffffe70000002efffffff5ffffffd600000023ffffffec",
            INIT_34 => X"ffffffbeffffffedffffffdaffffffdaffffffe70000002effffffd6fffffff1",
            INIT_35 => X"0000000500000008ffffffccffffffe0ffffffe5ffffffd4ffffffe9ffffffee",
            INIT_36 => X"0000000800000006000000280000000bfffffff8ffffffd500000006ffffffe9",
            INIT_37 => X"ffffffe90000001cfffffff7fffffffdffffffa7ffffffb600000015ffffffd9",
            INIT_38 => X"ffffffc7ffffffd1ffffffbcffffffd7fffffff30000000dfffffffcffffffd9",
            INIT_39 => X"0000002400000003fffffff10000001400000006000000110000002900000005",
            INIT_3A => X"000000140000000cfffffff7ffffffe9000000110000000ffffffff0fffffff6",
            INIT_3B => X"ffffffebffffffecffffffe50000000affffffe9ffffffdbffffffecfffffff6",
            INIT_3C => X"0000000fffffffecfffffffdfffffffffffffff00000001cfffffff8fffffff5",
            INIT_3D => X"fffffff90000003800000026000000050000000cfffffff1ffffffe9fffffff3",
            INIT_3E => X"0000000e0000002cfffffffaffffffadffffff92ffffffcbffffff9fffffffad",
            INIT_3F => X"00000036ffffffe7ffffffd5fffffffbffffff8dffffffc4ffffffd0ffffffe5",

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
    end generate MEM_IWGHT_LAYER2_ENTITY2;


    MEM_IWGHT_LAYER2_ENTITY3 : if BRAM_NAME = "iwght_layer2_entity3" generate
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
            INIT_00 => X"ffffffcb00000004ffffffdbfffffffefffffff2ffffffb7ffffffecfffffff0",
            INIT_01 => X"ffffff9effffffc6ffffffd1fffffff7ffffffeb000000230000003500000022",
            INIT_02 => X"000000120000001a0000003100000000fffffffdffffffedffffffe0ffffffd8",
            INIT_03 => X"ffffffdefffffff3fffffffdffffffd800000008fffffff2fffffffc0000001b",
            INIT_04 => X"0000000a0000001200000007ffffffef0000001cffffffe3ffffffee00000019",
            INIT_05 => X"fffffffeffffffd4fffffff4ffffffbaffffffb7ffffffe0ffffffd3fffffff1",
            INIT_06 => X"0000000cfffffffa000000240000000d0000002d00000018fffffff100000015",
            INIT_07 => X"0000001800000000fffffffaffffffd7ffffffdfffffffefffffffe4ffffffe0",
            INIT_08 => X"0000000e0000001600000058ffffffe8ffffffdcffffffe00000000700000000",
            INIT_09 => X"ffffffbd00000010ffffffe2ffffffbefffffffc0000000d0000001000000000",
            INIT_0A => X"fffffffd0000000700000001ffffffee00000006000000100000001400000000",
            INIT_0B => X"0000001900000012000000160000001a0000000b000000100000001900000008",
            INIT_0C => X"0000001affffffe4fffffffeffffffefffffffe3ffffffeefffffff900000004",
            INIT_0D => X"00000020000000120000000f00000011fffffff80000000e00000000ffffffd5",
            INIT_0E => X"ffffffe5ffffffd1ffffffddffffffe9ffffffbc00000001ffffffd7ffffffed",
            INIT_0F => X"00000002fffffffd00000003000000160000003e0000000ffffffff800000014",
            INIT_10 => X"fffffffdffffffd3fffffff900000007ffffffc4fffffffe0000000afffffffa",
            INIT_11 => X"0000001500000022ffffffe2000000000000001200000011000000020000000d",
            INIT_12 => X"00000023ffffffdb000000070000000a00000014000000250000002100000023",
            INIT_13 => X"0000001c00000034ffffffe7000000050000000d0000000c000000050000002f",
            INIT_14 => X"00000009000000270000003cfffffffd00000005fffffffffffffff40000000b",
            INIT_15 => X"ffffffe50000000500000016ffffffe9ffffffed00000006ffffffc8ffffffed",
            INIT_16 => X"ffffffe5fffffff8ffffffd2fffffffa0000000a0000000f000000130000002b",
            INIT_17 => X"0000001cffffffb3ffffffdefffffffbfffffff8fffffff100000033fffffff9",
            INIT_18 => X"ffffffe20000001bfffffff2ffffffee000000070000000e0000000500000015",
            INIT_19 => X"0000001a000000310000002200000021fffffff70000002e0000000affffffd2",
            INIT_1A => X"0000004400000004ffffffecfffffff7fffffff1fffffff9ffffffc300000007",
            INIT_1B => X"00000005ffffffff0000000000000002ffffffbeffffff78ffffffbdffffffd4",
            INIT_1C => X"ffffffb8ffffffcdfffffff0ffffffd5ffffffd30000000f0000000b00000015",
            INIT_1D => X"fffffffc00000021000000300000001effffffeafffffff80000000b0000001d",
            INIT_1E => X"0000001000000004000000190000001afffffffcfffffffb0000002f00000017",
            INIT_1F => X"000000190000001e0000003700000017fffffff8000000250000000cffffffc6",
            INIT_20 => X"ffffffd8ffffffe5fffffff1fffffff1ffffffeafffffffbfffffff9fffffff2",
            INIT_21 => X"ffffffeb000000260000002a00000029000000320000002500000015fffffff7",
            INIT_22 => X"ffffffbbffffffb8000000000000000efffffffdffffffe2ffffffea00000026",
            INIT_23 => X"ffffffe5fffffff50000001afffffff60000001200000031ffffffd6ffffffda",
            INIT_24 => X"0000000dffffffe8ffffffed00000023ffffffda0000001cffffffea0000002e",
            INIT_25 => X"0000003500000016fffffff00000001a00000007000000040000000800000005",
            INIT_26 => X"00000015000000360000001c0000002700000031000000330000003800000002",
            INIT_27 => X"0000002400000019fffffff9ffffffedfffffff2ffffffcdffffffd3fffffff2",
            INIT_28 => X"fffffff1fffffff1ffffffb5ffffffa1ffffffabffffffdfffffffceffffffcb",
            INIT_29 => X"000000280000002600000022000000530000003f000000370000000e00000003",
            INIT_2A => X"fffffff0fffffffbfffffff2fffffff60000000a000000010000000b00000014",
            INIT_2B => X"fffffff00000000c00000005fffffffe000000170000001b0000000a0000000b",
            INIT_2C => X"ffffffdefffffff1ffffffdd0000000bffffffef000000210000000200000000",
            INIT_2D => X"00000040fffffffcfffffffd00000030000000210000002100000020ffffffe5",
            INIT_2E => X"0000001900000013ffffffe8fffffff5fffffff2ffffffdeffffffc4ffffffe7",
            INIT_2F => X"ffffffccffffffc1ffffffcaffffffeeffffffddffffffd20000000a00000025",
            INIT_30 => X"0000002c000000220000003a0000002300000006fffffff30000001300000018",
            INIT_31 => X"fffffff0fffffff7fffffffffffffffe0000000effffffe40000001a0000002c",
            INIT_32 => X"0000001100000002fffffff5ffffffabffffffb3ffffffedffffffaeffffff95",
            INIT_33 => X"ffffffa30000001a000000050000001300000022000000160000002ffffffff5",
            INIT_34 => X"0000000800000006ffffffd30000000c00000016ffffffd5fffffffa00000031",
            INIT_35 => X"ffffffec000000340000001100000034000000320000001dfffffff600000016",
            INIT_36 => X"ffffffeffffffff0fffffff5fffffff100000004ffffffee00000004ffffffce",
            INIT_37 => X"fffffffdffffffe9fffffffc000000040000001500000025000000270000001a",
            INIT_38 => X"0000000e00000016fffffffb0000001f0000001500000011000000290000002d",
            INIT_39 => X"0000001f00000017000000020000000fffffffe5ffffffd0ffffffe30000000b",
            INIT_3A => X"00000012ffffffffffffffe90000000afffffffeffffffe5ffffffebfffffffb",
            INIT_3B => X"0000002bfffffffaffffffceffffffe8ffffffdcffffffacffffffbbffffffef",
            INIT_3C => X"ffffffcd000000070000000200000013ffffffb0ffffffacffffffb6ffffffc6",
            INIT_3D => X"ffffffb6ffffffab000000190000001100000003ffffffecfffffffe00000024",
            INIT_3E => X"ffffffe0ffffffff000000030000001a0000000affffffec0000000bfffffff8",
            INIT_3F => X"ffffffbaffffffb6ffffffbaffffffb7fffffffcfffffff8fffffffeffffffcd",

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
    end generate MEM_IWGHT_LAYER2_ENTITY3;


    MEM_IWGHT_LAYER2_ENTITY4 : if BRAM_NAME = "iwght_layer2_entity4" generate
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
            INIT_00 => X"000000100000002ffffffff40000004e0000002e00000009ffffffe2ffffffde",
            INIT_01 => X"fffffff0ffffffd3ffffffb3ffffffe4ffffffc3ffffffc3fffffff600000005",
            INIT_02 => X"00000006ffffffd3ffffffef0000000000000010fffffff8fffffffefffffff9",
            INIT_03 => X"fffffff50000001f00000013ffffffef00000016fffffffe000000100000001e",
            INIT_04 => X"fffffffd0000000f0000000cfffffff50000000b0000000e0000000c00000012",
            INIT_05 => X"fffffffbfffffff2fffffffeffffffec0000000cfffffffbfffffff4ffffffe5",
            INIT_06 => X"fffffffaffffffe70000000900000001fffffffc00000001fffffff300000000",
            INIT_07 => X"fffffff800000002fffffffaffffffe600000001ffffffeafffffff500000000",
            INIT_08 => X"00000005fffffffffffffff600000000fffffff4ffffffee00000003ffffffe5",
            INIT_09 => X"fffffff6fffffffaffffffeeffffffeb0000000600000001ffffffecffffffe9",
            INIT_0A => X"0000000a0000000900000000fffffff4fffffff40000000100000005fffffffe",
            INIT_0B => X"fffffffbffffffff00000011ffffffebfffffff5ffffffedfffffff9ffffffef",
            INIT_0C => X"fffffff60000000600000004ffffffe80000000500000007fffffff500000004",
            INIT_0D => X"ffffffe0fffffff1fffffff6fffffffb0000000500000005ffffffffffffffe3",
            INIT_0E => X"0000000500000000fffffff000000006fffffffc0000000bffffffef00000014",
            INIT_0F => X"ffffffed00000006ffffffe3fffffff1fffffffcffffffe5ffffffe300000000",
            INIT_10 => X"ffffffe500000000ffffffe700000003fffffffcfffffff40000000dfffffffd",
            INIT_11 => X"00000008fffffff2fffffffa0000000c00000006000000130000001300000007",
            INIT_12 => X"ffffffeeffffffeb0000000dfffffff800000013fffffffafffffff3fffffff9",
            INIT_13 => X"fffffff80000000400000000fffffff200000007000000000000000300000000",
            INIT_14 => X"fffffffdffffffeafffffff70000000efffffff80000000dffffffffffffffe4",
            INIT_15 => X"fffffff80000000400000008ffffffed0000000bfffffff2fffffff0fffffffd",
            INIT_16 => X"fffffff0ffffffea0000000100000000fffffff7fffffffe0000000cfffffffd",
            INIT_17 => X"fffffff0fffffff8fffffffbfffffff7fffffffdffffffecfffffff200000005",
            INIT_18 => X"fffffff000000004ffffffe700000003fffffffbfffffffeffffffeeffffffed",
            INIT_19 => X"0000000700000009fffffff4fffffff800000000ffffffe9ffffffe700000009",
            INIT_1A => X"0000000600000001fffffff3ffffffe9fffffff5fffffff2ffffffffffffffea",
            INIT_1B => X"ffffffe3fffffff1fffffff9ffffffef00000008fffffffcffffffeffffffff8",
            INIT_1C => X"0000000affffffe700000002fffffffcfffffff100000005fffffff900000009",
            INIT_1D => X"fffffffc0000000e00000011fffffff1ffffffee0000000efffffff5fffffff8",
            INIT_1E => X"fffffffbfffffff9fffffff6ffffffe6fffffff9fffffff0fffffffaffffffea",
            INIT_1F => X"fffffff5000000010000000bfffffff7fffffffdffffffe100000004ffffffec",
            INIT_20 => X"ffffffeafffffffcffffffe600000003fffffff1fffffff1fffffff1ffffffda",
            INIT_21 => X"00000000ffffffec00000010fffffff5fffffff3000000110000000200000007",
            INIT_22 => X"0000001400000007ffffffef0000000ffffffffa0000000a00000003ffffffed",
            INIT_23 => X"0000000400000001fffffffeffffffedffffffe8ffffffff0000000dfffffff7",
            INIT_24 => X"fffffff1fffffff2000000000000000a00000000fffffffc0000000100000002",
            INIT_25 => X"fffffffdfffffffffffffff800000001fffffff5000000050000000400000006",
            INIT_26 => X"00000001fffffffe0000000500000006fffffff600000008fffffffcfffffffc",
            INIT_27 => X"ffffffe900000003fffffff000000000ffffffecffffffeb0000000b00000000",
            INIT_28 => X"00000000fffffff90000000fffffffeb00000003fffffffdfffffff7fffffffd",
            INIT_29 => X"0000000afffffff100000004fffffffc0000000200000015ffffffdbffffffdc",
            INIT_2A => X"ffffffb8ffffffd900000022ffffffeefffffff7000000190000001000000021",
            INIT_2B => X"0000002e00000005000000050000001c0000002f0000000afffffff400000030",
            INIT_2C => X"0000002e000000020000004800000022ffffffe6ffffffed00000028fffffff6",
            INIT_2D => X"000000140000001e000000360000004200000019fffffff70000001d00000011",
            INIT_2E => X"0000002b00000048ffffffed000000270000003b00000034ffffffdd0000000f",
            INIT_2F => X"0000000affffffdcffffffc9fffffffeffffffd5fffffff40000002900000024",
            INIT_30 => X"0000000dfffffff1ffffffffffffffdafffffffdffffffe60000000c00000016",
            INIT_31 => X"ffffffe8fffffffe00000003ffffffe3ffffffee0000001a0000001cffffffea",
            INIT_32 => X"00000010ffffffdc000000100000002fffffffedffffffd10000000000000006",
            INIT_33 => X"fffffff000000001ffffffecffffffeb00000002ffffffbeffffffdfffffffff",
            INIT_34 => X"ffffffb9ffffffc7ffffffe2fffffffafffffffc00000006ffffffeffffffffa",
            INIT_35 => X"0000000fffffffe8fffffff400000015fffffff5ffffffebffffffdefffffffb",
            INIT_36 => X"fffffffc00000017ffffffd9ffffffeffffffff3fffffff00000000affffffce",
            INIT_37 => X"00000000ffffffee00000003ffffffbfffffffd9fffffff8ffffffebfffffff7",
            INIT_38 => X"00000013fffffff00000000d0000000ffffffff90000000200000000fffffffd",
            INIT_39 => X"ffffffd1ffffffe700000006ffffffeaffffffe0ffffffdfffffffc9ffffffde",
            INIT_3A => X"00000018fffffff900000015ffffffbd00000024ffffffd6ffffffaaffffffde",
            INIT_3B => X"0000000affffffef000000130000002effffffc1ffffffd900000000ffffffc0",
            INIT_3C => X"ffffffeffffffff000000012fffffff40000000700000011000000310000002e",
            INIT_3D => X"0000000e0000002efffffffbffffffeaffffffe700000000fffffffc00000004",
            INIT_3E => X"fffffffa0000000200000005ffffffef000000010000000400000022fffffff0",
            INIT_3F => X"fffffff500000002fffffffefffffffafffffff1ffffffdf00000009fffffffa",

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
    end generate MEM_IWGHT_LAYER2_ENTITY4;


    MEM_IWGHT_LAYER2_ENTITY5 : if BRAM_NAME = "iwght_layer2_entity5" generate
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
            INIT_00 => X"0000000ffffffffb00000004fffffffcffffffeafffffff0ffffffb3fffffff2",
            INIT_01 => X"00000023ffffffdafffffff700000005fffffff4ffffffdcfffffffbffffffcb",
            INIT_02 => X"fffffffa00000018ffffffb1ffffffe60000000fffffffa2ffffffe000000016",
            INIT_03 => X"ffffffc4ffffffd50000004d0000001e000000020000002400000008ffffffe5",
            INIT_04 => X"fffffff0ffffffffffffffecffffffd9ffffffd1ffffffeeffffffe3ffffffbc",
            INIT_05 => X"fffffffc00000012ffffffe8000000090000000c0000000cffffffe200000024",
            INIT_06 => X"fffffff8ffffffcf0000000affffffebfffffff80000001affffffde00000008",
            INIT_07 => X"00000005ffffffdfffffffcdffffffe4000000140000002a0000001d0000002a",
            INIT_08 => X"000000160000002a000000560000006900000038ffffffe90000002500000004",
            INIT_09 => X"ffffffcbfffffffbfffffff5ffffffd6ffffff9bfffffff60000001a00000003",
            INIT_0A => X"00000015ffffffe9fffffff6fffffffeffffffd600000005000000280000000a",
            INIT_0B => X"fffffffd00000007fffffffc00000006000000170000001f000000180000000e",
            INIT_0C => X"00000005ffffffebffffffe9fffffff70000001e00000002000000010000000f",
            INIT_0D => X"fffffff00000001efffffffefffffff00000002c0000002f0000002200000019",
            INIT_0E => X"0000001600000000ffffffe4ffffffd4ffffffe5fffffff90000001100000012",
            INIT_0F => X"fffffff80000001a0000001000000027fffffff3ffffffe50000000500000037",
            INIT_10 => X"00000006000000250000003500000006ffffffefffffffd0ffffffec00000010",
            INIT_11 => X"00000000ffffffda0000000000000046ffffffeafffffff4fffffffd00000022",
            INIT_12 => X"00000026fffffff90000000800000006000000000000001afffffffcfffffff5",
            INIT_13 => X"ffffffdf0000001d0000000d0000000500000026000000080000001800000020",
            INIT_14 => X"00000000fffffff30000002800000013ffffffebfffffffb00000009fffffff3",
            INIT_15 => X"ffffffefffffffe7ffffffd00000001100000011fffffff2ffffffecfffffff1",
            INIT_16 => X"ffffffd0ffffffd90000000800000022ffffffc1ffffffeb00000018ffffffe8",
            INIT_17 => X"ffffffd1000000200000002d00000014fffffff7000000310000000d00000014",
            INIT_18 => X"00000013fffffffdffffffeaffffffd7ffffffe100000008ffffffc8ffffffe4",
            INIT_19 => X"0000000dffffffcfffffffdffffffffbfffffff80000001a00000011fffffffd",
            INIT_1A => X"fffffffc0000000e0000000d00000000000000040000000d0000001ffffffffb",
            INIT_1B => X"fffffff0fffffff700000000ffffffc9fffffff1ffffffeffffffffffffffff6",
            INIT_1C => X"00000016fffffffcffffffd2ffffffcf00000019fffffff9ffffffcfffffffc0",
            INIT_1D => X"fffffffd00000012ffffffe9ffffffe400000047ffffffd90000000200000049",
            INIT_1E => X"00000002fffffffc0000000d00000018000000080000001300000014ffffffef",
            INIT_1F => X"00000004ffffffe6ffffffd2ffffffe5ffffffc0ffffffe300000030ffffffd9",
            INIT_20 => X"fffffff000000010ffffffd300000006fffffff4ffffffdffffffffd00000035",
            INIT_21 => X"fffffffbffffffed0000000f0000000c00000017000000130000001c00000011",
            INIT_22 => X"ffffffff0000002e00000002000000160000001b00000012fffffffc00000016",
            INIT_23 => X"ffffffe20000000a00000004ffffffdafffffff3fffffff20000000200000012",
            INIT_24 => X"00000019fffffff30000000bffffffe9fffffff700000002fffffff10000001b",
            INIT_25 => X"00000000ffffffe9fffffff40000002d0000000affffffee00000008ffffffeb",
            INIT_26 => X"ffffffe9ffffffef000000300000000affffffcc00000023fffffff4ffffffd6",
            INIT_27 => X"000000210000001dffffffed0000001300000048000000460000002500000053",
            INIT_28 => X"0000004f0000003800000010ffffffe9000000210000003b0000000a00000020",
            INIT_29 => X"00000018ffffffe1ffffffd5ffffffea00000021ffffff98ffffffcb0000002d",
            INIT_2A => X"ffffffdefffffffb0000001e00000002ffffffe1000000140000002cfffffffd",
            INIT_2B => X"ffffffe00000003c0000001afffffff8fffffffcffffffdeffffffeafffffff2",
            INIT_2C => X"0000002bfffffff3000000450000004e00000021ffffffdafffffff90000002d",
            INIT_2D => X"00000000ffffffe1fffffff800000009ffffffd0ffffffd80000001700000034",
            INIT_2E => X"0000000c0000002900000001ffffffdd0000000affffffd6ffffffd9ffffffae",
            INIT_2F => X"ffffffe500000024ffffff9bffffffd000000017ffffffd9000000110000004f",
            INIT_30 => X"fffffffcfffffffefffffff9fffffffe0000000300000000000000080000000a",
            INIT_31 => X"ffffffff00000002ffffffb7ffffffae00000013ffffffb0ffffffaf00000017",
            INIT_32 => X"fffffffffffffff1ffffffdd0000002800000043ffffffdc0000002a00000050",
            INIT_33 => X"00000006fffffffb0000001dffffffe600000001fffffffbfffffff500000014",
            INIT_34 => X"0000002affffffe50000002d00000030ffffffe90000002cfffffffa0000000d",
            INIT_35 => X"0000006e00000045ffffffe3fffffff900000016ffffffe9ffffffed00000018",
            INIT_36 => X"ffffffe5000000090000002cffffffe6fffffffc0000000500000000ffffffe0",
            INIT_37 => X"ffffffd4fffffff100000006fffffff8000000270000001e0000000300000006",
            INIT_38 => X"fffffffbffffffdb00000005ffffffe90000000200000005ffffffe2ffffffe0",
            INIT_39 => X"fffffffaffffffdb00000027fffffff9fffffff20000000400000017ffffffe8",
            INIT_3A => X"0000000bfffffff2ffffffe3ffffffa500000021ffffffd0ffffffbb00000004",
            INIT_3B => X"ffffffd2ffffffc8ffffffe9ffffffd20000001600000007ffffffd60000000a",
            INIT_3C => X"0000000a00000009fffffffbfffffff30000000d00000016ffffffdeffffffee",
            INIT_3D => X"00000008ffffffe1fffffffbffffffddffffffe20000001e0000001e00000009",
            INIT_3E => X"000000070000000d000000160000002b0000001200000012ffffffd7ffffffbb",
            INIT_3F => X"0000006400000000ffffffc300000033ffffffe8ffffffbdffffffd0ffffffe6",

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
    end generate MEM_IWGHT_LAYER2_ENTITY5;


    MEM_IWGHT_LAYER2_ENTITY6 : if BRAM_NAME = "iwght_layer2_entity6" generate
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
            INIT_00 => X"00000029ffffffe60000000c00000003ffffffdfffffffd9ffffffdffffffff2",
            INIT_01 => X"000000070000000a0000000f000000360000002600000013000000030000000a",
            INIT_02 => X"0000002affffffcdffffff7cfffffffaffffff9affffffa2fffffff4ffffffb9",
            INIT_03 => X"ffffffcf00000018fffffff2ffffffe400000040fffffff1ffffffd700000027",
            INIT_04 => X"fffffff0ffffffddfffffff00000000b0000000dffffffea00000019ffffffee",
            INIT_05 => X"fffffff80000001b00000000fffffff30000002b0000003400000001fffffffe",
            INIT_06 => X"0000001d00000005000000140000000e0000001c0000001e0000000400000011",
            INIT_07 => X"00000009ffffffeefffffffa0000001fffffffea000000130000000000000010",
            INIT_08 => X"00000007000000120000002600000000fffffffc00000000ffffffeefffffff7",
            INIT_09 => X"fffffffcfffffff30000000fffffffe8000000000000001c0000001800000007",
            INIT_0A => X"0000001100000027ffffffea000000030000002affffffef0000000efffffff5",
            INIT_0B => X"ffffffc90000002a00000058ffffffcb0000001400000053fffffff3ffffffe3",
            INIT_0C => X"0000002800000006ffffffd7ffffffda00000015fffffffcfffffff10000000b",
            INIT_0D => X"fffffffdfffffff20000000f00000007ffffffd600000033fffffff9fffffffb",
            INIT_0E => X"00000009ffffffe6ffffffc300000000ffffffe1ffffffecffffffee00000001",
            INIT_0F => X"fffffffcfffffff9fffffff80000001a000000180000002600000017fffffff9",
            INIT_10 => X"00000007fffffffaffffffd8fffffff800000009fffffff300000013fffffff8",
            INIT_11 => X"00000018ffffffec0000000affffffe6ffffffe7ffffffe7fffffff40000001f",
            INIT_12 => X"0000000a0000000dfffffffeffffffec0000000900000016ffffffedfffffff7",
            INIT_13 => X"fffffff90000000300000026000000080000000f0000002000000007ffffffe9",
            INIT_14 => X"000000040000001000000007fffffff400000009fffffff6ffffffffffffffda",
            INIT_15 => X"fffffff8ffffff99ffffffbeffffffa8ffffff8affffff74ffffffa9ffffffa4",
            INIT_16 => X"ffffffa0ffffffcc000000120000002100000022000000100000003700000015",
            INIT_17 => X"0000002bfffffffb0000001a00000024ffffffe3fffffffe0000002200000000",
            INIT_18 => X"ffffffe4fffffff6fffffffcffffffe400000046000000290000002c0000005f",
            INIT_19 => X"00000015000000040000005100000029fffffff10000000d00000004fffffff8",
            INIT_1A => X"000000000000001d0000000600000002ffffffe6ffffffeeffffffe2ffffffff",
            INIT_1B => X"ffffffebfffffffcfffffff30000000b00000019fffffffdfffffff6fffffff1",
            INIT_1C => X"000000240000001f000000170000000a0000000b000000280000003cfffffff7",
            INIT_1D => X"fffffffdfffffffd00000003ffffffcfffffffa1ffffffd7ffffffc3ffffffc8",
            INIT_1E => X"00000016fffffff5ffffffe9ffffffffffffffedfffffff0ffffffedfffffff9",
            INIT_1F => X"fffffff700000025ffffffd2ffffffe2ffffffe5ffffffd2ffffffa0ffffffcf",
            INIT_20 => X"fffffff0ffffffc9fffffff9ffffffdcffffffd8ffffffdf0000001800000004",
            INIT_21 => X"ffffffe500000009ffffffeaffffffebffffffe8ffffffe5ffffffef0000000c",
            INIT_22 => X"00000009ffffffea0000001b0000001d000000100000000d0000001b00000002",
            INIT_23 => X"fffffffafffffff500000013000000150000000efffffffcfffffffeffffffff",
            INIT_24 => X"ffffffe4ffffffe80000000700000002fffffff8ffffffe1fffffff2ffffffe8",
            INIT_25 => X"fffffff5ffffffd900000014ffffffe8ffffffe80000002b000000180000000c",
            INIT_26 => X"ffffffb0ffffffd3ffffffefffffffb1ffffffd7fffffff0ffffffe0ffffffee",
            INIT_27 => X"0000000ffffffff9ffffffd9ffffffd6fffffff8ffffffec000000030000000d",
            INIT_28 => X"fffffffe00000006fffffff00000002900000019fffffff60000000bfffffff6",
            INIT_29 => X"fffffff4ffffffebffffffe4000000050000000afffffffe0000000500000017",
            INIT_2A => X"fffffffa0000000f0000001e00000005fffffff8fffffffc0000000700000014",
            INIT_2B => X"00000006ffffffed0000001cfffffffdffffffdeffffffe9fffffff2fffffffc",
            INIT_2C => X"ffffffe9fffffff6ffffffec00000012fffffffb0000000affffffefffffffe5",
            INIT_2D => X"fffffff4ffffffe4fffffff900000008fffffff3fffffff60000001400000027",
            INIT_2E => X"0000000500000012ffffffebfffffff600000012fffffff00000000800000004",
            INIT_2F => X"fffffffeffffffff0000000f00000000fffffff10000002affffffd000000010",
            INIT_30 => X"000000310000001d0000001400000020000000080000001b0000000900000008",
            INIT_31 => X"ffffffedfffffff1fffffff7fffffffe000000140000001e0000000600000006",
            INIT_32 => X"00000000000000010000003afffffffdffffffea0000000500000003ffffffe7",
            INIT_33 => X"0000001f00000014fffffffc0000000000000034000000290000001100000003",
            INIT_34 => X"000000310000000300000009000000210000000cffffffdb0000000900000015",
            INIT_35 => X"ffffffe1000000020000002efffffff50000000c000000000000000300000011",
            INIT_36 => X"0000000f0000000d0000000dfffffff700000002fffffff6ffffffdd00000017",
            INIT_37 => X"00000000000000150000001a000000170000001e0000002d000000180000000a",
            INIT_38 => X"0000000800000001ffffffdffffffff7ffffffeb0000000a00000007fffffff8",
            INIT_39 => X"00000000000000040000000afffffff3000000230000002dffffffed00000005",
            INIT_3A => X"ffffffceffffffae0000000b0000002e000000560000001e00000006fffffff3",
            INIT_3B => X"ffffffedffffffe4ffffffef000000040000001500000000ffffffc60000000c",
            INIT_3C => X"0000002affffffbafffffff200000013000000370000001b00000022fffffff3",
            INIT_3D => X"00000006ffffffd8fffffff1ffffffd7ffffffd0ffffffd9ffffffb3ffffffe1",
            INIT_3E => X"0000000cffffffb10000000f00000029000000290000004400000019fffffff3",
            INIT_3F => X"00000012ffffffdfffffffea00000017fffffff4ffffffe3ffffffe10000000b",

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
    end generate MEM_IWGHT_LAYER2_ENTITY6;


    MEM_IWGHT_LAYER2_ENTITY7 : if BRAM_NAME = "iwght_layer2_entity7" generate
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
            INIT_00 => X"0000000500000013fffffff10000001fffffffff00000002ffffffefffffffea",
            INIT_01 => X"ffffffed000000110000001a00000028fffffffe00000021ffffffe2ffffffd5",
            INIT_02 => X"ffffffe5ffffffd5ffffffe8fffffff0ffffffeeffffffe3ffffffd7fffffff5",
            INIT_03 => X"ffffffe0fffffffb0000001100000000ffffffe400000033fffffffeffffffed",
            INIT_04 => X"fffffff9ffffffefffffffdd00000017fffffff2fffffff2fffffff7ffffffde",
            INIT_05 => X"ffffffe9fffffffbffffffe8fffffff8fffffffaffffffd8ffffffd600000012",
            INIT_06 => X"0000000400000008000000080000001e00000031000000050000000500000031",
            INIT_07 => X"0000001e0000001500000009ffffffe700000003ffffffea00000003ffffffad",
            INIT_08 => X"ffffffae00000044ffffffcc00000009000000360000001d0000003d00000000",
            INIT_09 => X"0000000c000000190000000c000000110000001500000003ffffffe500000018",
            INIT_0A => X"0000000dffffffe9ffffffdb000000030000000cffffffbf0000001effffffdc",
            INIT_0B => X"ffffffd6ffffffd7fffffff600000002ffffffc5fffffff6fffffff9ffffffe2",
            INIT_0C => X"ffffffda00000026fffffffc0000003400000025000000100000004d0000004d",
            INIT_0D => X"0000001cffffffffffffffed00000001ffffffdfffffffeb00000010ffffffd8",
            INIT_0E => X"0000002500000026ffffffff0000001800000024ffffffee0000000bffffffec",
            INIT_0F => X"ffffffdc0000000000000000ffffffecfffffffdffffffedffffffe800000016",
            INIT_10 => X"fffffff1ffffffe2000000200000000c000000070000001fffffffcafffffffe",
            INIT_11 => X"fffffff4ffffffdffffffffa00000000ffffffecfffffff50000000cfffffff4",
            INIT_12 => X"ffffffbcffffffeb0000000c000000100000001b0000002b0000001100000028",
            INIT_13 => X"000000100000006d00000031000000260000003bfffffff9ffffffdcffffffe5",
            INIT_14 => X"ffffffe5fffffff80000001300000028fffffffb00000004fffffff1fffffff0",
            INIT_15 => X"ffffffecffffffbffffffff6ffffffff0000000900000017fffffff20000001a",
            INIT_16 => X"ffffffedfffffff9000000060000000bffffffdbffffffe0000000050000000e",
            INIT_17 => X"fffffff30000001000000006fffffff7000000180000001300000035fffffffd",
            INIT_18 => X"0000000f0000000afffffff1fffffff9ffffffff00000002ffffffdaffffffde",
            INIT_19 => X"0000000800000019ffffffe2ffffffecfffffff7fffffff700000006ffffffde",
            INIT_1A => X"fffffffa00000006ffffffe500000000000000020000000500000011fffffffa",
            INIT_1B => X"000000010000000bfffffffe0000001b0000001d0000001f0000001800000028",
            INIT_1C => X"00000008fffffffb00000001fffffff70000001d0000000000000014fffffff9",
            INIT_1D => X"fffffffefffffff100000010fffffff8fffffffafffffff7fffffff8ffffffee",
            INIT_1E => X"fffffff500000023ffffffe0fffffff8ffffffcafffffff70000002a00000017",
            INIT_1F => X"0000005100000060000000590000001c0000000b00000008ffffffdbffffffe6",
            INIT_20 => X"fffffff500000019fffffff2ffffffdbfffffff8ffffffd9ffffffb100000025",
            INIT_21 => X"0000000dffffffd40000004f0000002700000014000000070000001500000013",
            INIT_22 => X"ffffffecffffffdd000000030000000affffffe600000001ffffffee0000000a",
            INIT_23 => X"00000019ffffffe3ffffffe1000000080000000bfffffff2fffffff4fffffff9",
            INIT_24 => X"ffffffd80000001fffffffed00000002000000000000000c000000160000001e",
            INIT_25 => X"00000004ffffffd8ffffffbb0000001400000016ffffffd90000001cffffffed",
            INIT_26 => X"00000000ffffffecfffffffafffffffe000000270000002ffffffff30000000f",
            INIT_27 => X"0000000bffffffdbffffffe2fffffff2ffffffc40000000600000007fffffff8",
            INIT_28 => X"ffffffdafffffff0fffffffeffffffeffffffff10000001dffffffeefffffffe",
            INIT_29 => X"00000032000000010000002cfffffffeffffffef0000000e00000002fffffffa",
            INIT_2A => X"fffffff500000014ffffffd1ffffffdcfffffff90000000a000000080000002d",
            INIT_2B => X"0000000b00000018ffffffdf0000000c0000001300000006000000150000000e",
            INIT_2C => X"0000001000000001000000020000000000000012ffffffe200000010ffffffe4",
            INIT_2D => X"ffffffd50000000affffffedfffffffdfffffff60000001200000000ffffffd3",
            INIT_2E => X"000000250000002f0000002d000000710000004a0000006000000023fffffffc",
            INIT_2F => X"0000001fffffffe50000000d0000000500000005000000150000000c00000012",
            INIT_30 => X"00000007ffffffedffffffff00000001fffffff200000002ffffffd6fffffff3",
            INIT_31 => X"ffffffdbffffffdbfffffff0fffffff7ffffffe200000024fffffff9ffffffc7",
            INIT_32 => X"ffffffd0fffffff7fffffff1fffffffb00000006000000130000002afffffff2",
            INIT_33 => X"ffffffcaffffffe1000000010000000400000004fffffff4fffffffd0000001f",
            INIT_34 => X"ffffffcdfffffff9ffffffe300000017fffffffbfffffffefffffff3fffffff8",
            INIT_35 => X"fffffff0000000240000000cfffffff30000001500000003ffffffef00000000",
            INIT_36 => X"ffffffeb0000001c00000003fffffff700000024ffffffeaffffffc1fffffff0",
            INIT_37 => X"0000000900000010ffffffe3fffffff5ffffffeeffffffdd0000001400000002",
            INIT_38 => X"00000000ffffffff000000000000000000000008ffffffeb0000000300000013",
            INIT_39 => X"0000002600000015fffffffc0000000fffffffe10000000e0000002afffffff7",
            INIT_3A => X"00000003ffffffecffffffd3ffffffd8ffffffe700000007fffffff3ffffffee",
            INIT_3B => X"fffffff2000000140000001d00000027ffffffc2fffffff5fffffffcfffffff9",
            INIT_3C => X"fffffff6fffffffb00000023fffffff3ffffffe5fffffffe000000320000002d",
            INIT_3D => X"fffffffafffffff300000042ffffffe9fffffffb000000140000003200000000",
            INIT_3E => X"00000027fffffffaffffffd7fffffff2fffffff9fffffff3fffffff6ffffffef",
            INIT_3F => X"00000019fffffff9fffffff80000001d000000140000000afffffffdfffffff0",

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
    end generate MEM_IWGHT_LAYER2_ENTITY7;


    MEM_IWGHT_LAYER2_ENTITY8 : if BRAM_NAME = "iwght_layer2_entity8" generate
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
            INIT_00 => X"ffffffefffffffec0000001e00000009000000140000000b0000002a0000001c",
            INIT_01 => X"0000001c0000002700000013fffffffd0000002c000000060000000cffffffd6",
            INIT_02 => X"ffffffd40000000d0000000efffffffe00000011000000140000005200000034",
            INIT_03 => X"0000004100000021000000270000002c000000380000001f0000002b0000003d",
            INIT_04 => X"0000000e00000002fffffffcffffffde0000002dfffffffcffffffe000000034",
            INIT_05 => X"00000050ffffffe300000005fffffff7ffffffe7fffffff30000000c00000032",
            INIT_06 => X"fffffffffffffff70000000f0000002f0000000f0000001d00000002ffffffdd",
            INIT_07 => X"fffffff9ffffffd6ffffffd6ffffffba000000060000000ffffffff4fffffffc",
            INIT_08 => X"ffffffe7000000020000000b000000260000000a0000001c0000001e00000003",
            INIT_09 => X"0000002c00000024fffffff0fffffffe00000002fffffff4ffffffe4ffffffe0",
            INIT_0A => X"00000004000000080000001e00000023ffffffdaffffffdf0000000000000000",
            INIT_0B => X"fffffff3fffffffd00000025fffffff3ffffffe600000002fffffff0ffffffe5",
            INIT_0C => X"fffffff8ffffffd6ffffffe90000000fffffffdf00000002ffffffdd00000009",
            INIT_0D => X"fffffff300000018ffffffdcffffffeaffffffd20000000500000007ffffffc8",
            INIT_0E => X"ffffffe3fffffff7ffffffe60000000700000004fffffff6ffffffcefffffff2",
            INIT_0F => X"0000002900000001000000050000001c000000150000001efffffffd0000001b",
            INIT_10 => X"00000001ffffffe00000000100000017000000420000003d0000001affffffc5",
            INIT_11 => X"fffffff30000000affffffa3ffffffc800000010ffffffe10000000dffffffef",
            INIT_12 => X"00000043ffffffd1fffffff60000000affffffebffffffc2ffffffebffffffff",
            INIT_13 => X"00000026ffffffe2fffffff90000001c00000009fffffff70000000100000022",
            INIT_14 => X"0000000c00000002ffffffd3ffffffe10000001effffffbeffffffe3ffffffdf",
            INIT_15 => X"00000020fffffff900000004fffffff500000005fffffff3ffffffddfffffff3",
            INIT_16 => X"000000110000001cffffffe8fffffff100000023fffffff10000001fffffffd7",
            INIT_17 => X"ffffffe000000018ffffffeafffffff500000010000000010000002a00000023",
            INIT_18 => X"ffffffe3fffffffd000000160000000b0000001100000006fffffff8fffffff7",
            INIT_19 => X"0000000affffffccfffffff40000001efffffff000000034000000240000003a",
            INIT_1A => X"fffffff8fffffff800000001ffffffd6ffffffc500000001ffffffe7ffffffdd",
            INIT_1B => X"fffffff2000000290000004b000000250000003200000020ffffffedfffffff5",
            INIT_1C => X"fffffffbfffffffcffffffe5ffffffe00000001e00000012ffffffeaffffffee",
            INIT_1D => X"fffffff500000000fffffffeffffffec00000032fffffffcffffffed00000028",
            INIT_1E => X"000000140000001d00000005ffffffdffffffff60000000cffffffe600000004",
            INIT_1F => X"000000170000000cffffffea0000001100000017000000580000000300000015",
            INIT_20 => X"0000005cffffffe7000000190000001cffffffd0ffffffc0ffffff990000000d",
            INIT_21 => X"ffffffe7ffffffe3fffffff6fffffffe00000015fffffff600000005fffffff8",
            INIT_22 => X"0000000dfffffff400000000000000020000000a000000060000002900000000",
            INIT_23 => X"0000000f00000013fffffff2fffffffa0000002000000004fffffffefffffffe",
            INIT_24 => X"fffffff400000009000000090000000200000013000000170000000c0000000b",
            INIT_25 => X"0000000d0000002a0000001b00000036fffffff400000000000000100000000e",
            INIT_26 => X"000000210000001d000000390000000a000000250000004200000019ffffffff",
            INIT_27 => X"000000150000001800000017ffffffdcffffffe100000013ffffffd0ffffffcd",
            INIT_28 => X"ffffffe1ffffffbfffffffb9ffffffc50000001b000000210000002c00000010",
            INIT_29 => X"0000004300000040ffffffe8fffffffa00000005fffffff60000000c0000000f",
            INIT_2A => X"ffffffdb00000015000000000000001efffffff6fffffffafffffffd00000018",
            INIT_2B => X"000000320000000200000018fffffffbfffffffeffffffe6ffffffea00000000",
            INIT_2C => X"ffffffffffffffea000000130000000700000000ffffffe80000000a00000018",
            INIT_2D => X"0000000dffffffd0fffffff50000001e0000000afffffff000000028fffffffb",
            INIT_2E => X"00000000000000050000001a00000000fffffffc00000003ffffffebffffffef",
            INIT_2F => X"fffffff00000000c00000015fffffff00000000cfffffffa000000150000001b",
            INIT_30 => X"0000001b000000170000001a0000001f0000001300000027ffffffc70000000d",
            INIT_31 => X"fffffff2000000030000002dffffffe6ffffffff0000000e0000002c00000000",
            INIT_32 => X"ffffffe70000000cffffffe1ffffffe1ffffffd1fffffff70000000d00000006",
            INIT_33 => X"0000000f0000001900000009ffffffdd00000015000000110000001700000015",
            INIT_34 => X"00000034ffffffcaffffffeafffffff3ffffffff00000011fffffff90000000c",
            INIT_35 => X"0000002200000033000000050000000d00000009fffffff400000000ffffffe9",
            INIT_36 => X"0000000200000034ffffffe5fffffff4000000060000002fffffffff00000022",
            INIT_37 => X"00000012000000250000001b0000001cfffffff10000001afffffff6ffffffd6",
            INIT_38 => X"00000001ffffffeaffffff9bffffffccffffffccffffffc7fffffff0ffffffcc",
            INIT_39 => X"ffffffd300000015ffffffd600000000fffffffb0000000efffffff8fffffffb",
            INIT_3A => X"000000060000000b00000008fffffff2ffffffee00000000ffffffdaffffffda",
            INIT_3B => X"ffffffd6fffffff1ffffffec0000000c00000008000000160000001bfffffff8",
            INIT_3C => X"ffffffe5ffffffedffffffe50000001dfffffff90000000e0000001b00000024",
            INIT_3D => X"00000035fffffffdffffffeb0000001f00000005ffffffdeffffffebffffffdb",
            INIT_3E => X"000000120000000effffffdc0000000dffffffe70000001000000020ffffffe1",
            INIT_3F => X"fffffff3ffffffc2ffffffd500000007ffffffe9ffffffcd0000001dfffffff0",

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
    end generate MEM_IWGHT_LAYER2_ENTITY8;


    MEM_IWGHT_LAYER2_ENTITY9 : if BRAM_NAME = "iwght_layer2_entity9" generate
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
            INIT_00 => X"00000019fffffff8ffffffeeffffffcb0000001b0000000dfffffffdffffffeb",
            INIT_01 => X"0000000efffffff60000001900000025fffffff900000019fffffff4ffffffe7",
            INIT_02 => X"fffffff10000000affffffe0fffffff5fffffff2fffffffefffffffaffffffe1",
            INIT_03 => X"fffffff200000002ffffffdaffffffd5ffffffdaffffffdb00000010ffffffc0",
            INIT_04 => X"ffffffbbffffffeaffffffddffffffd4ffffffc4ffffffe6ffffffe7fffffff3",
            INIT_05 => X"fffffff1fffffff2ffffffdd0000000300000001ffffffebffffffe9ffffffe5",
            INIT_06 => X"ffffffc5ffffffd9ffffffdbffffffd1fffffff10000000fffffffee00000025",
            INIT_07 => X"00000039000000430000000e0000000000000000ffffffecffffffdcffffffd4",
            INIT_08 => X"fffffff00000000d00000016fffffff1fffffff90000001500000005ffffffff",
            INIT_09 => X"fffffffbffffffdfffffffe2ffffffe9fffffffa00000001000000270000001f",
            INIT_0A => X"00000005000000140000000effffffc7ffffffe1ffffffc6ffffffb3ffffffa6",
            INIT_0B => X"ffffffe4ffffffa9ffffffa90000001bffffffb6ffffffb3fffffff2ffffffc5",
            INIT_0C => X"ffffffa7000000190000001effffff94ffffffdaffffffa8ffffffc6ffffffa0",
            INIT_0D => X"ffffffc5ffffff9bffffffc4fffffff4ffffffa8ffffffc1ffffffd4ffffffea",
            INIT_0E => X"ffffffdafffffff000000015fffffffb0000000b00000010fffffff4fffffff2",
            INIT_0F => X"ffffffdbfffffff30000000bffffffe10000000a00000000ffffffca00000029",
            INIT_10 => X"0000001dfffffff100000031000000260000000c000000270000000affffffdb",
            INIT_11 => X"000000010000000000000022ffffffe60000001700000015fffffffc00000017",
            INIT_12 => X"0000000affffffe9ffffffec00000036fffffffeffffffd400000027fffffff0",
            INIT_13 => X"0000002100000047fffffff60000000800000016fffffff200000007ffffffff",
            INIT_14 => X"fffffffdfffffff800000001ffffff86ffffff9cffffffbdffffffd1ffffff7a",
            INIT_15 => X"ffffffbe00000015fffffff5ffffffe8ffffffe2fffffff2ffffffd100000003",
            INIT_16 => X"00000000fffffff4fffffff2fffffffefffffff50000000700000000ffffffe8",
            INIT_17 => X"fffffffefffffff2ffffffec00000017ffffffe400000000ffffffadffffffcc",
            INIT_18 => X"ffffffe3ffffffd4ffffffaeffffffdfffffffd0ffffffe3ffffffd6ffffffd9",
            INIT_19 => X"ffffffebfffffff500000011000000160000002f000000080000001300000017",
            INIT_1A => X"00000033000000260000001000000012000000020000000c000000020000000c",
            INIT_1B => X"ffffffdefffffff1ffffffeeffffffd8fffffff4ffffffe4fffffff6fffffffa",
            INIT_1C => X"ffffffe9fffffffb000000110000001c00000010ffffffeeffffffd8ffffffda",
            INIT_1D => X"ffffffb0ffffffbaffffffc0fffffffb000000340000001a0000002e00000024",
            INIT_1E => X"0000001e0000001d0000002dfffffffaffffffe7ffffffebfffffff0fffffff9",
            INIT_1F => X"00000015ffffffef00000000fffffffafffffffcfffffff00000000000000005",
            INIT_20 => X"fffffffcfffffff8000000170000000c00000028000000000000000600000000",
            INIT_21 => X"ffffffee000000130000000c0000002a0000000b000000040000001a00000005",
            INIT_22 => X"00000029fffffff400000011fffffffb00000003fffffff70000001efffffff5",
            INIT_23 => X"000000060000001a000000330000004f0000006d0000002f0000007a00000054",
            INIT_24 => X"000000640000002a00000013fffffffb0000003200000003fffffff40000000d",
            INIT_25 => X"00000010ffffffd5fffffff8fffffff700000023ffffffedfffffff90000001e",
            INIT_26 => X"00000003ffffffff0000003afffffff8fffffff2000000130000001b0000000d",
            INIT_27 => X"fffffff1fffffffd0000000bfffffff3fffffff8ffffffbbfffffff6ffffffb1",
            INIT_28 => X"ffffffa3ffffffb9ffffffeaffffffd2ffffffaf000000180000001500000006",
            INIT_29 => X"ffffffddffffffe80000000000000015fffffff8ffffffff0000002700000020",
            INIT_2A => X"fffffffc000000120000002100000001fffffff5fffffff6ffffffd3ffffffdf",
            INIT_2B => X"fffffff100000006fffffff5ffffffee0000001a000000140000001500000037",
            INIT_2C => X"00000000fffffff9fffffff9fffffffefffffffa0000000f0000000afffffff0",
            INIT_2D => X"00000006ffffffb6ffffff8bffffff99ffffffacffffff86ffffffcffffffff6",
            INIT_2E => X"ffffffcaffffffd6ffffffdc0000004700000042000000020000000700000014",
            INIT_2F => X"ffffffe8ffffffe8ffffffd7fffffffb0000001600000044fffffff100000009",
            INIT_30 => X"ffffffe300000001ffffffe0ffffffcf0000003000000030000000210000001c",
            INIT_31 => X"000000060000004d00000011fffffffe0000000f000000190000003e0000001e",
            INIT_32 => X"0000001f0000001f0000001f000000070000001800000013ffffffdcffffffd7",
            INIT_33 => X"ffffffc2fffffff0ffffffd7ffffffe5ffffffd1ffffffeb00000003fffffffa",
            INIT_34 => X"0000001900000010000000160000001e00000005000000240000001900000009",
            INIT_35 => X"fffffffaffffffe4fffffff8ffffffddffffffcbffffffefffffffd9ffffffd1",
            INIT_36 => X"00000000ffffffa2ffffffe4ffffffefffffffc1fffffffb00000004ffffffe5",
            INIT_37 => X"00000009ffffffdfffffffe7ffffffbcffffffcbfffffffbffffffcdffffffdd",
            INIT_38 => X"0000000dffffffdfffffffe6ffffffc9ffffffd000000013ffffffebffffffe3",
            INIT_39 => X"ffffffe100000012ffffffd6ffffffdd00000000fffffff400000011fffffff5",
            INIT_3A => X"000000010000000ffffffff90000001100000018ffffffcfffffffd3ffffffd4",
            INIT_3B => X"fffffff4ffffffd2ffffffe1ffffffc9ffffffee00000006fffffffbffffffeb",
            INIT_3C => X"00000012fffffff3fffffffeffffffebfffffff300000000ffffffd6ffffffc3",
            INIT_3D => X"ffffffe7fffffff6ffffffd60000000a00000006fffffff40000003900000024",
            INIT_3E => X"ffffffd5ffffffeaffffffa7ffffffa6ffffffc5ffffffbeffffffc7ffffffbf",
            INIT_3F => X"ffffffb7ffffffdeffffffbfffffffdc00000001ffffffefffffffe30000001c",

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
    end generate MEM_IWGHT_LAYER2_ENTITY9;


    MEM_IWGHT_LAYER2_ENTITY10 : if BRAM_NAME = "iwght_layer2_entity10" generate
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
            INIT_00 => X"00000000ffffffe60000001e0000000e00000027ffffffe8ffffffe900000007",
            INIT_01 => X"ffffffaa00000000ffffffef00000008fffffffe000000060000000f00000027",
            INIT_02 => X"00000022fffffff9000000170000002fffffffeb0000000f00000020ffffffef",
            INIT_03 => X"0000001000000003fffffff90000001600000019fffffff8fffffffcffffffff",
            INIT_04 => X"0000000a000000080000000c000000010000001a00000016ffffffc2ffffffda",
            INIT_05 => X"ffffffc5ffffffccfffffff5ffffffe40000000cffffffebfffffffd00000018",
            INIT_06 => X"0000000a000000110000001900000015ffffffeffffffff60000000cfffffffa",
            INIT_07 => X"ffffffed0000002bffffffffffffffb7fffffff200000005ffffffa4ffffffde",
            INIT_08 => X"00000006000000100000002a00000025fffffffffffffff200000005fffffff5",
            INIT_09 => X"ffffffe600000005ffffffe7fffffffb0000000ffffffff0fffffff3fffffffa",
            INIT_0A => X"fffffff300000009fffffff8ffffffebffffffc8ffffffe0ffffffe500000008",
            INIT_0B => X"fffffff6ffffffbe00000000000000040000001c000000130000003700000008",
            INIT_0C => X"00000000fffffff2ffffffe3ffffffad00000012fffffffa00000005ffffffd9",
            INIT_0D => X"ffffffd6fffffff2ffffffdfffffffe100000002ffffffcb0000001900000032",
            INIT_0E => X"0000000cfffffff80000001f00000011fffffff80000001a0000001700000000",
            INIT_0F => X"ffffffeb000000000000001200000016fffffffd0000002afffffffd00000004",
            INIT_10 => X"ffffffeeffffffee000000140000000d000000030000000a00000000ffffffe9",
            INIT_11 => X"00000017000000160000000f0000003e000000050000001c0000000afffffff5",
            INIT_12 => X"0000000000000003ffffffe90000000000000001fffffffc0000001b0000000e",
            INIT_13 => X"fffffff40000000a0000001cffffffceffffffe30000000f0000003200000006",
            INIT_14 => X"ffffffe70000002f0000000b00000000ffffffeefffffffc000000020000000b",
            INIT_15 => X"fffffffb0000000800000022fffffffc00000007fffffff70000001800000003",
            INIT_16 => X"ffffffedffffffee00000009ffffffef0000000400000022000000000000001b",
            INIT_17 => X"0000000f000000030000000100000018ffffffeeffffffff0000000fffffffea",
            INIT_18 => X"0000000000000025ffffffe50000001700000031000000480000001800000050",
            INIT_19 => X"0000001effffffddffffffc70000001b00000034ffffffdc0000002800000001",
            INIT_1A => X"fffffff70000001100000022fffffff2ffffffedfffffffeffffffd8ffffffa9",
            INIT_1B => X"ffffffe2ffffffd00000001b0000000000000011fffffff90000000dffffffe5",
            INIT_1C => X"ffffffe600000009fffffff20000000dfffffff00000002cffffffd3ffffffca",
            INIT_1D => X"ffffffc8ffffffc4ffffffd4ffffffeb000000230000002600000024ffffffe7",
            INIT_1E => X"ffffffe100000008fffffff9fffffff900000013000000140000002b00000020",
            INIT_1F => X"fffffff70000001b0000001900000011fffffff700000043fffffff2ffffffdd",
            INIT_20 => X"ffffffdeffffffecffffffe5ffffffdf0000002c0000003d0000003e0000004a",
            INIT_21 => X"0000004600000021ffffffe4fffffff800000000ffffffbeffffffc2ffffffc6",
            INIT_22 => X"ffffffc7ffffffd1ffffffb4ffffffec0000001c0000000cffffffd1ffffffef",
            INIT_23 => X"ffffffdf00000021000000250000000fffffffe2fffffffefffffff6ffffffb6",
            INIT_24 => X"fffffffa00000003ffffffe1ffffffdeffffffd30000000200000031fffffff8",
            INIT_25 => X"ffffffbaffffffe9ffffffcd0000000dfffffffffffffff5ffffffe9fffffffa",
            INIT_26 => X"ffffffeafffffff0ffffffe50000001e000000000000000a0000000e00000013",
            INIT_27 => X"000000110000002efffffffbffffffed00000004000000210000001e00000016",
            INIT_28 => X"fffffff5fffffff1000000130000000effffffdc00000003000000520000002d",
            INIT_29 => X"0000001a0000000000000000ffffffcefffffff6fffffff1fffffff6ffffffcc",
            INIT_2A => X"ffffffacffffffd0ffffffe9ffffffe2fffffff8ffffffea0000001200000012",
            INIT_2B => X"ffffffd8ffffffa5ffffffaffffffff4ffffffefffffffe1fffffff5ffffffd4",
            INIT_2C => X"ffffffbcffffffb2ffffffd7fffffff70000000e000000340000000c0000002a",
            INIT_2D => X"fffffff7fffffffdfffffffe0000000efffffffcffffffd0fffffff5ffffffdb",
            INIT_2E => X"ffffffb2ffffffeb0000000f0000000f000000000000000f0000000000000012",
            INIT_2F => X"00000014ffffffe3fffffff200000037fffffff0fffffff1ffffffca0000001d",
            INIT_30 => X"fffffffaffffffcd0000000f00000000ffffffcc0000001800000007fffffff2",
            INIT_31 => X"fffffffe000000150000003b00000001fffffff20000003cffffffd6ffffffe8",
            INIT_32 => X"fffffffc0000001b00000023000000220000001b0000001e0000000b00000010",
            INIT_33 => X"000000290000001cffffffe3000000000000000bffffffccffffffeeffffffe8",
            INIT_34 => X"0000000c000000060000001a0000000efffffff4fffffffc0000001500000002",
            INIT_35 => X"fffffff9000000330000004b0000002a00000043000000400000003e00000042",
            INIT_36 => X"000000380000003afffffff0ffffffbafffffff5ffffffbcffffff8affffffbc",
            INIT_37 => X"ffffffbeffffff94ffffffdaffffffdeffffffdfffffffe3ffffffdeffffffc0",
            INIT_38 => X"ffffffefffffffa2ffffffe4ffffffe5fffffff7ffffffe2ffffffe6ffffffc4",
            INIT_39 => X"ffffffbb0000000cffffff86ffffffbeffffffe1fffffffaffffffe9ffffffd9",
            INIT_3A => X"0000000c00000000ffffffff000000370000002f00000042fffffffe00000042",
            INIT_3B => X"00000027fffffff7ffffffeb0000000dffffffdcffffffe0ffffffef0000000e",
            INIT_3C => X"00000001fffffffb000000100000002100000005000000270000001500000008",
            INIT_3D => X"0000000a00000015000000220000001efffffff10000000a0000000c00000010",
            INIT_3E => X"00000038000000140000000b0000001bffffffdb0000000500000002ffffffcb",
            INIT_3F => X"ffffffdb0000000300000021000000100000000d00000022fffffff500000029",

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
    end generate MEM_IWGHT_LAYER2_ENTITY10;


    MEM_IWGHT_LAYER2_ENTITY11 : if BRAM_NAME = "iwght_layer2_entity11" generate
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
            INIT_00 => X"ffffffeefffffffd00000017fffffff8fffffff0ffffffd8fffffff0fffffff7",
            INIT_01 => X"ffffffe7ffffffe40000001e0000000a0000000bffffffe9ffffffebffffffef",
            INIT_02 => X"fffffff3fffffff1ffffffff0000000cfffffff2000000130000002100000016",
            INIT_03 => X"000000140000003100000032ffffffed00000007000000090000000cffffffe9",
            INIT_04 => X"fffffffeffffffed00000000fffffffb0000001e0000001000000006ffffffe4",
            INIT_05 => X"fffffffcffffffe9ffffffda0000000000000003fffffffa0000001000000009",
            INIT_06 => X"000000330000005d0000005efffffff9000000480000003a0000002000000013",
            INIT_07 => X"000000250000000e0000001efffffffd0000000a0000000500000000fffffff7",
            INIT_08 => X"0000000e0000000dffffffea00000000ffffffe8ffffffe30000000dffffffe6",
            INIT_09 => X"ffffffe8fffffff8ffffffe40000001d0000000f0000001f00000001fffffff6",
            INIT_0A => X"00000008000000140000001400000019ffffffd2fffffff5ffffffea0000000f",
            INIT_0B => X"00000018ffffffe70000001a0000000200000007000000110000001900000003",
            INIT_0C => X"fffffffc0000000fffffffe60000000b00000007000000110000001c00000012",
            INIT_0D => X"0000002900000003000000110000001cfffffff4fffffff60000000300000003",
            INIT_0E => X"fffffff100000004fffffff90000000d00000006ffffffd300000004fffffff3",
            INIT_0F => X"ffffffbbffffffdefffffff7ffffffb7ffffff94ffffffc3ffffff97ffffff70",
            INIT_10 => X"ffffffc00000000a0000002100000024000000100000000f0000002300000004",
            INIT_11 => X"0000001100000019000000030000001300000021ffffffd80000002d00000009",
            INIT_12 => X"ffffffe60000000a000000060000003200000018000000090000000afffffffb",
            INIT_13 => X"ffffffed0000002500000010ffffffecfffffff6ffffffd4fffffff4ffffffd2",
            INIT_14 => X"ffffffd500000009ffffffc8ffffffe700000008ffffffefffffffe900000001",
            INIT_15 => X"0000000900000008ffffffea00000004ffffffeaffffffdffffffff1ffffffe8",
            INIT_16 => X"ffffffe60000001800000012000000030000000d0000001500000000fffffff0",
            INIT_17 => X"0000000ffffffffc000000030000000e00000003fffffffb0000000000000009",
            INIT_18 => X"ffffffebffffffea00000000ffffffea0000000b00000003000000030000000a",
            INIT_19 => X"0000000a0000001100000004fffffffcffffffefffffffc7ffffffe2ffffffd4",
            INIT_1A => X"ffffffd8ffffffdeffffffc2ffffffc1ffffffccffffffabffffff9affffffed",
            INIT_1B => X"0000000bfffffffb0000001500000009fffffff7ffffffd60000002900000003",
            INIT_1C => X"ffffffe50000003600000035fffffffeffffff96ffffffc1ffffffb3ffffffb2",
            INIT_1D => X"ffffffd6ffffffe90000000500000024000000050000001a0000004200000033",
            INIT_1E => X"000000000000001600000027ffffffcffffffff1ffffffd6ffffffd8ffffffe9",
            INIT_1F => X"ffffffbfffffffa3ffffffdeffffffe500000009ffffffeb0000002c0000001b",
            INIT_20 => X"0000000e0000000ffffffff7000000000000001e0000001c0000000a00000034",
            INIT_21 => X"fffffffafffffffdfffffff9ffffffdaffffffcafffffff6ffffffcbffffffe7",
            INIT_22 => X"ffffffee0000001000000014fffffffc00000001ffffffed00000007fffffff8",
            INIT_23 => X"0000000affffffeefffffff200000007fffffff5ffffffd8fffffff3ffffffed",
            INIT_24 => X"fffffff30000002900000024000000140000001d00000007000000080000000c",
            INIT_25 => X"fffffff2fffffffa0000001effffffc6fffffffc000000030000001800000002",
            INIT_26 => X"fffffff9000000050000000000000001ffffffdaffffffdbffffffd6ffffffd3",
            INIT_27 => X"00000003fffffff9fffffff20000004d000000300000003b0000000e00000036",
            INIT_28 => X"00000018ffffffe70000000effffffecffffffc4ffffffedffffffe3ffffffe9",
            INIT_29 => X"00000001fffffff1fffffffdfffffffdffffffebffffffd8ffffffed00000000",
            INIT_2A => X"0000000400000007ffffffd50000000b00000010000000340000001700000036",
            INIT_2B => X"00000016fffffff4fffffff5000000060000001bfffffff1ffffffff00000008",
            INIT_2C => X"000000140000000bffffffd6fffffff9ffffffd2fffffff000000005ffffffff",
            INIT_2D => X"0000002a0000000affffffe4fffffffb0000000c0000001bffffffed00000015",
            INIT_2E => X"fffffff6ffffffef00000005000000130000000c0000000dfffffff40000001f",
            INIT_2F => X"0000001cfffffff6fffffff700000004ffffffeb0000003100000010ffffffff",
            INIT_30 => X"fffffffa0000000effffffe7ffffffd2ffffffee00000014fffffffd0000001a",
            INIT_31 => X"0000000c000000020000001500000028ffffffeb00000006fffffff700000003",
            INIT_32 => X"0000000f0000001200000006fffffff6ffffffec0000000d0000001a00000011",
            INIT_33 => X"ffffffc40000001d0000002dffffffcf0000003400000050ffffffc60000000e",
            INIT_34 => X"0000008dffffffc9ffffffcdffffffcbffffffe200000000ffffffe60000002a",
            INIT_35 => X"0000003a0000002e00000001fffffff300000004fffffff4ffffffeffffffff3",
            INIT_36 => X"000000310000002000000001ffffffe4000000080000000affffffe5fffffff1",
            INIT_37 => X"fffffff9ffffffbf0000001500000016fffffff0fffffff4ffffffd90000002a",
            INIT_38 => X"00000009ffffffe70000003700000036ffffffeb000000110000002e00000016",
            INIT_39 => X"ffffffea000000060000000dffffffd8ffffffe90000001d000000220000000e",
            INIT_3A => X"fffffff3000000250000001efffffffd0000001b00000010fffffff800000025",
            INIT_3B => X"00000017000000280000003600000016ffffffd90000001c00000022fffffffa",
            INIT_3C => X"fffffffe000000080000000c000000060000000a0000001a0000000400000017",
            INIT_3D => X"fffffff5fffffff700000004fffffff300000003000000060000001800000005",
            INIT_3E => X"00000030ffffffed0000000ffffffffafffffff3fffffff0ffffffeaffffffe9",
            INIT_3F => X"00000015ffffffd9fffffffbfffffff7ffffffe2ffffffd100000006ffffffea",

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
    end generate MEM_IWGHT_LAYER2_ENTITY11;


    MEM_IWGHT_LAYER2_ENTITY12 : if BRAM_NAME = "iwght_layer2_entity12" generate
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
            INIT_00 => X"0000002c000000020000001a0000004dffffffe2ffffffbffffffffaffffffde",
            INIT_01 => X"ffffffd2fffffffffffffffeffffffa3ffffffaafffffff4ffffffec0000000f",
            INIT_02 => X"00000000fffffff3fffffffbffffffecffffffe2fffffff10000002100000025",
            INIT_03 => X"fffffff1ffffffa2ffffffa8ffffffd6ffffffc5ffffffc500000000ffffffec",
            INIT_04 => X"0000001b00000007ffffffcafffffff00000000affffffe00000000e0000002e",
            INIT_05 => X"0000002200000015000000110000000400000006ffffffeafffffffbfffffff3",
            INIT_06 => X"ffffffe90000000affffffe5ffffffc90000001600000006ffffffd500000011",
            INIT_07 => X"fffffff2ffffffac0000000a000000160000001f0000001d00000022ffffffe4",
            INIT_08 => X"ffffffeaffffffecffffffd500000000fffffff6fffffff90000000700000008",
            INIT_09 => X"ffffffef000000220000000a00000009ffffffe1ffffffe9ffffffe4ffffffd8",
            INIT_0A => X"fffffff900000001ffffffe100000002000000060000001800000023fffffff5",
            INIT_0B => X"fffffffd0000001d0000000b00000016000000060000000e0000000b00000005",
            INIT_0C => X"000000010000000600000015ffffffeeffffffc6ffffffabffffffd1fffffff8",
            INIT_0D => X"fffffffdffffffed00000028fffffffcfffffff2fffffff500000003fffffff4",
            INIT_0E => X"000000360000002600000021000000470000003b000000020000000c0000000d",
            INIT_0F => X"00000002fffffff70000000f000000000000000500000021fffffff8fffffff9",
            INIT_10 => X"ffffffe2000000060000002300000027fffffffbffffffdf00000026fffffff5",
            INIT_11 => X"ffffffb5fffffff3ffffffc70000000e0000000d00000014fffffff1ffffffed",
            INIT_12 => X"00000007ffffffbbffffffd1ffffffff000000330000002f0000001cffffffe1",
            INIT_13 => X"ffffffcf00000015ffffffc2ffffffde00000002000000330000001d00000021",
            INIT_14 => X"0000000efffffff80000000dffffffe0ffffffcb00000023ffffffecffffffd9",
            INIT_15 => X"ffffffff0000000600000007ffffffd90000001000000009fffffffffffffffd",
            INIT_16 => X"00000024000000200000000c000000100000000fffffff9dffffffc3ffffffda",
            INIT_17 => X"00000036ffffffe8fffffff700000028ffffffb10000000600000024ffffffc2",
            INIT_18 => X"ffffffd800000004000000030000000500000009fffffff40000000fffffffee",
            INIT_19 => X"00000001000000190000002200000026fffffff10000000f0000002afffffff2",
            INIT_1A => X"0000000b00000024ffffffccffffffe7ffffffe4ffffffd0fffffffbfffffff6",
            INIT_1B => X"ffffffedffffffeaffffffd4fffffff900000006ffffffd8ffffffe9ffffffe1",
            INIT_1C => X"ffffffef00000012000000070000000300000034ffffffeefffffffbfffffff2",
            INIT_1D => X"ffffffe9ffffffecfffffff80000000cffffffdeffffffe80000001d0000000b",
            INIT_1E => X"00000002ffffffd9fffffffffffffffcffffffadffffffd4000000270000000a",
            INIT_1F => X"00000013ffffffe0000000220000002cfffffff3000000290000001dfffffffb",
            INIT_20 => X"00000001000000180000000400000013fffffff60000000d000000160000000a",
            INIT_21 => X"0000000100000000fffffffa0000001b00000013000000280000003500000010",
            INIT_22 => X"00000031ffffffef0000003b00000021fffffff40000001f0000002d00000012",
            INIT_23 => X"ffffffd900000001fffffff900000013fffffff8ffffffefffffffc9ffffffe3",
            INIT_24 => X"ffffffed00000004ffffffd6fffffff100000028000000060000001300000000",
            INIT_25 => X"0000002300000004000000070000000dffffffffffffffe6ffffffd4fffffff8",
            INIT_26 => X"ffffffe2ffffffbeffffffd9fffffff3ffffffb9ffffffd5ffffffe4fffffff6",
            INIT_27 => X"00000009fffffff80000001f0000000cffffffe20000001100000009fffffffd",
            INIT_28 => X"fffffff60000000000000004000000200000000effffffe40000001f00000029",
            INIT_29 => X"00000011fffffff6fffffff6fffffff9ffffffed0000000affffffe0fffffff3",
            INIT_2A => X"0000000efffffffefffffffcffffffff0000002d00000006ffffffebfffffffe",
            INIT_2B => X"fffffff6ffffffd700000027000000200000001a000000190000002000000010",
            INIT_2C => X"fffffffafffffff70000001e000000050000000300000018ffffffc4fffffffe",
            INIT_2D => X"00000000fffffff7ffffffd4ffffffe0000000060000001c0000000effffffe4",
            INIT_2E => X"fffffff8fffffff600000006fffffff6ffffffd8ffffffedffffffd9ffffffe7",
            INIT_2F => X"ffffffe80000001d0000000cfffffffd00000004ffffffe7fffffff0ffffffd2",
            INIT_30 => X"fffffff0ffffffe8ffffffbdffffffe9fffffff2ffffffcefffffff400000011",
            INIT_31 => X"000000080000000a00000025ffffffddfffffff000000032fffffffdffffffd8",
            INIT_32 => X"fffffff30000003000000010ffffffcb00000017ffffffceffffffda00000018",
            INIT_33 => X"000000010000001d0000002cfffffff8fffffffe000000120000002fffffffd8",
            INIT_34 => X"00000017ffffffe900000012ffffffe60000001e000000360000002bfffffff9",
            INIT_35 => X"00000039ffffffd9ffffffe100000012000000100000000bfffffffdffffffd1",
            INIT_36 => X"00000000fffffffcffffffe2fffffffa00000008000000100000000e00000012",
            INIT_37 => X"ffffffe7fffffff6ffffffebffffffdeffffffe60000000b000000110000000a",
            INIT_38 => X"fffffff4ffffffd40000000d00000005ffffffe9fffffff4ffffffdefffffff1",
            INIT_39 => X"00000015fffffffafffffff80000000d00000008fffffff3fffffff400000020",
            INIT_3A => X"000000000000000cfffffffefffffff00000000dfffffff1fffffffb00000033",
            INIT_3B => X"00000011ffffffd6fffffff70000000900000004fffffff80000001a00000001",
            INIT_3C => X"0000000300000010000000220000000c000000110000003c00000029ffffffd7",
            INIT_3D => X"000000290000001dfffffffa00000002000000000000000f0000000800000000",
            INIT_3E => X"0000004500000005ffffffd600000003fffffff60000001dffffffc800000006",
            INIT_3F => X"ffffffe7fffffff1fffffffcffffffd1fffffff2ffffffec00000001ffffffd1",

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
    end generate MEM_IWGHT_LAYER2_ENTITY12;


    MEM_IWGHT_LAYER2_ENTITY13 : if BRAM_NAME = "iwght_layer2_entity13" generate
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
            INIT_00 => X"ffffffbeffffffdcffffffe7ffffffa9ffffffd5fffffff8ffffffe500000000",
            INIT_01 => X"ffffffe1ffffffcdffffffc1000000030000002bffffffd80000000400000000",
            INIT_02 => X"fffffffafffffff7fffffffd00000001ffffffee000000020000000900000005",
            INIT_03 => X"0000000e0000000500000020fffffffb000000190000001cfffffff1ffffffe0",
            INIT_04 => X"fffffff6fffffff6000000100000000afffffffefffffff20000000afffffff0",
            INIT_05 => X"fffffff5ffffffdeffffffc9ffffffdb00000025ffffffebffffffc400000028",
            INIT_06 => X"00000004ffffffecffffffe3ffffffc7ffffffd6ffffffe6fffffff00000000d",
            INIT_07 => X"ffffffdb0000000a00000029fffffff4ffffffb8ffffffd8ffffffe6fffffffb",
            INIT_08 => X"00000028ffffffe8fffffff000000033ffffffeaffffffb7ffffffc8ffffffee",
            INIT_09 => X"ffffffea00000010fffffff2000000540000004dffffffdafffffffbffffffee",
            INIT_0A => X"ffffffe20000000effffffe600000029000000290000002f0000001b00000017",
            INIT_0B => X"ffffffff0000001e000000310000001affffffd9ffffffc7ffffffc200000028",
            INIT_0C => X"00000018000000130000003f0000003a00000018fffffff0ffffffed00000011",
            INIT_0D => X"ffffffcffffffff5ffffffecfffffff1fffffffaffffffee0000002e00000049",
            INIT_0E => X"00000010000000180000001a0000002400000028000000200000003affffffc8",
            INIT_0F => X"ffffffd7fffffff5ffffffcfffffffddffffffd9fffffff90000000700000003",
            INIT_10 => X"0000000c0000002100000000ffffffdcffffffdcfffffff40000000000000028",
            INIT_11 => X"0000000affffffe40000000c0000003500000009fffffffbffffffed00000006",
            INIT_12 => X"00000015fffffff8fffffff9fffffff700000012000000420000000e00000025",
            INIT_13 => X"0000006e0000002800000019ffffffeeffffffc3fffffff0ffffffa2ffffffe5",
            INIT_14 => X"ffffffbc000000000000003c00000009000000230000003f0000000d00000005",
            INIT_15 => X"00000014fffffffaffffffedffffffe5fffffff50000000dffffffdbffffffed",
            INIT_16 => X"0000002c00000030000000310000005100000030000000460000001500000035",
            INIT_17 => X"0000000e00000005fffffffdfffffff2ffffffff00000000fffffffcffffffdc",
            INIT_18 => X"ffffffcdffffffeefffffff1000000040000000dffffffe1ffffffee00000001",
            INIT_19 => X"ffffffd700000006ffffffd5ffffffd2ffffffecffffffc000000000ffffffff",
            INIT_1A => X"ffffffdf000000190000003500000002ffffffdcffffffe0ffffffcc00000017",
            INIT_1B => X"0000001afffffff70000003b0000003bfffffff9ffffffebfffffff9ffffffbe",
            INIT_1C => X"0000000ffffffffaffffffde0000004200000035000000030000002400000007",
            INIT_1D => X"0000001200000013fffffffb00000001ffffffdcffffffcbffffffeeffffffcb",
            INIT_1E => X"ffffffd5ffffffec000000010000002dffffffed0000000a0000000cffffffcf",
            INIT_1F => X"ffffffb90000003400000000ffffffd80000004000000018ffffffcc00000018",
            INIT_20 => X"0000004b00000023ffffffc9ffffffe2000000450000000500000004fffffffc",
            INIT_21 => X"ffffffe5ffffffe1fffffff80000002d0000001afffffff3fffffffa0000003c",
            INIT_22 => X"ffffffe1ffffffbefffffffa0000001e000000440000002d0000001400000023",
            INIT_23 => X"0000001cffffffef00000008fffffff1ffffffefffffffd50000000a0000000d",
            INIT_24 => X"ffffffda00000013fffffff1fffffffd0000003a0000000c0000004300000048",
            INIT_25 => X"0000000d0000001d0000002fffffffbdffffffd7ffffffd500000002ffffffe8",
            INIT_26 => X"ffffffec000000220000002a000000100000002a0000000dfffffff700000003",
            INIT_27 => X"000000180000002cfffffffdffffffe700000013ffffffeaffffffef00000001",
            INIT_28 => X"00000000fffffffa00000000000000080000000afffffff2fffffff700000007",
            INIT_29 => X"00000012ffffffed00000013fffffff400000002fffffff6fffffff5fffffff5",
            INIT_2A => X"fffffff3fffffffafffffffc000000070000000afffffff9fffffff3fffffff0",
            INIT_2B => X"00000010fffffff9fffffffb000000000000000efffffff500000000ffffffff",
            INIT_2C => X"0000000200000007fffffff40000000bfffffffdffffffedffffffe600000000",
            INIT_2D => X"fffffffc00000000ffffffeefffffffffffffff9000000050000000000000003",
            INIT_2E => X"fffffff7fffffff4fffffff4ffffffebfffffffcfffffff1fffffffefffffff6",
            INIT_2F => X"00000010fffffffdffffffec000000000000000000000004fffffff6fffffff3",
            INIT_30 => X"fffffff40000000d00000001ffffffe9000000040000001000000003fffffffa",
            INIT_31 => X"fffffff100000009ffffffeffffffffdfffffff0fffffffbfffffffc00000000",
            INIT_32 => X"fffffffb0000000a000000000000000a0000000a000000030000001100000003",
            INIT_33 => X"fffffff6fffffff5fffffffd00000013fffffffb00000002fffffffe00000004",
            INIT_34 => X"00000017fffffff1fffffffdfffffff900000006000000070000000cfffffff5",
            INIT_35 => X"fffffff30000000000000000000000070000000fffffffec00000002fffffff7",
            INIT_36 => X"0000000300000001000000000000000dfffffffd00000006ffffffeb0000000b",
            INIT_37 => X"ffffffef00000002fffffff0fffffff5fffffff7fffffffbfffffffd0000000e",
            INIT_38 => X"0000000000000000fffffff90000000bfffffff1ffffffecfffffff400000003",
            INIT_39 => X"00000000ffffffeaffffffea00000006ffffffffffffffec00000011ffffffea",
            INIT_3A => X"0000001000000011ffffffeefffffff00000000c0000000ffffffff500000005",
            INIT_3B => X"0000000effffffebfffffff8fffffff600000000fffffff50000000700000004",
            INIT_3C => X"fffffff10000000a000000150000001100000002fffffff300000007fffffffb",
            INIT_3D => X"fffffffafffffff9fffffff0000000030000000effffffedfffffff30000000c",
            INIT_3E => X"fffffff30000000effffffff00000002fffffff9ffffffffffffffe800000004",
            INIT_3F => X"0000000d00000002fffffff500000003fffffffd000000060000000bfffffff4",

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
    end generate MEM_IWGHT_LAYER2_ENTITY13;


    MEM_IWGHT_LAYER2_ENTITY14 : if BRAM_NAME = "iwght_layer2_entity14" generate
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
            INIT_00 => X"ffffffe9fffffff40000000a00000009ffffffeb0000000afffffff00000000d",
            INIT_01 => X"fffffffcfffffffa00000005ffffffe9ffffffee00000012fffffff9fffffffd",
            INIT_02 => X"fffffff1fffffff4fffffff2fffffff000000004fffffff3ffffffedffffffea",
            INIT_03 => X"fffffff0fffffff8fffffff600000003fffffffe0000000a00000005fffffffe",
            INIT_04 => X"ffffffe8fffffff4fffffffeffffffe800000004fffffff3fffffff900000003",
            INIT_05 => X"fffffffe00000000fffffffefffffff60000000b000000050000000ffffffff6",
            INIT_06 => X"00000011000000070000000dfffffff600000009fffffff5ffffffeffffffffb",
            INIT_07 => X"fffffffaffffffeb00000004ffffffeefffffff60000000000000004fffffff8",
            INIT_08 => X"00000001fffffff5fffffff600000003fffffff500000000fffffff8fffffff2",
            INIT_09 => X"ffffffebfffffff9fffffffc0000000000000007ffffffecffffffea00000009",
            INIT_0A => X"fffffff3ffffffee00000000fffffff9fffffff7fffffffb0000000300000006",
            INIT_0B => X"00000008fffffffffffffff9fffffffbffffffeefffffff3fffffff4ffffffe9",
            INIT_0C => X"fffffff8fffffffafffffffefffffff800000008ffffffe700000006ffffffe9",
            INIT_0D => X"ffffffeefffffffd0000001500000002fffffffdffffffe9ffffffd5fffffffa",
            INIT_0E => X"ffffffe4fffffff3ffffffddfffffffcffffffdffffffffc000000140000001f",
            INIT_0F => X"0000002e00000043000000280000001d00000048000000400000003a00000018",
            INIT_10 => X"0000001e0000000b00000002ffffffe6fffffff9fffffff2ffffffda00000030",
            INIT_11 => X"0000000bfffffff00000002c0000003100000033fffffffbffffffe0fffffff7",
            INIT_12 => X"ffffffe0fffffffdffffffeeffffffe900000017ffffffe1ffffffea0000000a",
            INIT_13 => X"fffffffefffffffeffffffd7fffffff7fffffff4fffffff6ffffffe900000005",
            INIT_14 => X"0000001800000004000000130000002200000026000000200000002700000000",
            INIT_15 => X"000000160000001c000000190000001bfffffff4000000010000000dffffffe9",
            INIT_16 => X"00000006ffffffb2ffffff9affffffe8ffffffdbffffffc3ffffffe500000022",
            INIT_17 => X"0000000000000024000000080000002f00000002fffffff2ffffffdbffffffef",
            INIT_18 => X"0000000cffffffe8ffffffe0ffffffc9ffffffc1ffffffe6ffffffd2ffffffc4",
            INIT_19 => X"ffffffd5ffffffeeffffffbfffffffcf00000001ffffffceffffffe5fffffffc",
            INIT_1A => X"00000003fffffff5000000130000002100000010ffffffed0000000c00000002",
            INIT_1B => X"0000000200000005fffffffe000000170000000d0000002e00000016ffffffee",
            INIT_1C => X"fffffff600000010fffffff20000001500000001fffffff9ffffffefffffffea",
            INIT_1D => X"ffffffd1fffffff2ffffffddfffffff2fffffff900000007000000090000001e",
            INIT_1E => X"ffffffcfffffffc6ffffffefffffffafffffffaeffffffddffffffe5ffffffe0",
            INIT_1F => X"ffffffcdffffffc7fffffff7ffffffff00000000ffffffc300000009fffffffd",
            INIT_20 => X"fffffff800000007000000010000001bfffffff4ffffffb8ffffffb1ffffffb1",
            INIT_21 => X"ffffffbaffffffa3ffffffc70000002800000009ffffffec000000260000002c",
            INIT_22 => X"0000000600000025000000130000001f0000001500000001fffffff400000013",
            INIT_23 => X"ffffffebfffffff1ffffffdeffffffecfffffff5000000270000000bffffffec",
            INIT_24 => X"0000002b000000130000000400000009fffffffa00000009ffffffd5ffffffeb",
            INIT_25 => X"fffffff6fffffff2ffffffd100000006000000160000000a0000001cfffffffe",
            INIT_26 => X"0000000700000014fffffff3ffffffff00000004fffffff900000007ffffffff",
            INIT_27 => X"0000002000000030000000190000002c00000029fffffffd00000000fffffffb",
            INIT_28 => X"0000000b00000024000000420000002000000023000000070000002400000023",
            INIT_29 => X"0000000100000017ffffffb7ffffffbdfffffff7ffffffc7fffffffc00000007",
            INIT_2A => X"fffffffd0000000b0000002000000017ffffffe2fffffffbfffffffc00000028",
            INIT_2B => X"0000001f0000000a0000000600000013000000410000002e0000002400000024",
            INIT_2C => X"00000014000000140000000bffffffeefffffff0ffffffdcffffffca0000000c",
            INIT_2D => X"00000004ffffffda000000030000000d00000008000000010000000f00000010",
            INIT_2E => X"00000013000000280000000b0000001dfffffff5ffffffeffffffff2ffffffed",
            INIT_2F => X"ffffffb800000002ffffffbeffffffdc000000100000000b0000001400000022",
            INIT_30 => X"00000000fffffff90000001500000007fffffff6fffffff7fffffffd00000006",
            INIT_31 => X"ffffffe900000035000000130000002800000003fffffff90000002300000003",
            INIT_32 => X"00000000000000020000002afffffffc0000003c0000002d0000002e00000015",
            INIT_33 => X"0000002c0000003000000016ffffffc8fffffff1ffffffe9fffffff7ffffffdf",
            INIT_34 => X"ffffffee000000120000000cffffffcfffffffef00000019ffffffcc00000037",
            INIT_35 => X"0000003500000014000000140000001d00000002ffffffdbffffffddffffffd8",
            INIT_36 => X"0000000e00000027000000230000000e0000001e000000070000004d00000038",
            INIT_37 => X"000000330000000e0000001c00000020fffffff5ffffffc7ffffffc30000001c",
            INIT_38 => X"0000003300000016ffffffe9fffffff7ffffffd3ffffffe8ffffffc9fffffffb",
            INIT_39 => X"0000002efffffff800000007000000010000002c0000002a000000120000001b",
            INIT_3A => X"000000170000002c00000011fffffffe0000002bffffffdfffffffe700000026",
            INIT_3B => X"00000000ffffffef00000001ffffffeb00000006ffffffdd0000000000000033",
            INIT_3C => X"ffffffe9fffffff2fffffff3fffffff60000002d0000000effffffe20000001f",
            INIT_3D => X"0000001e00000007ffffffdcffffffe00000001b00000004000000040000000a",
            INIT_3E => X"00000011ffffffdf00000006fffffff8ffffffe3000000300000001200000035",
            INIT_3F => X"00000002ffffffe2ffffffddfffffff2ffffffe5ffffffe90000000c0000000d",

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
    end generate MEM_IWGHT_LAYER2_ENTITY14;


    MEM_IWGHT_LAYER2_ENTITY15 : if BRAM_NAME = "iwght_layer2_entity15" generate
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
            INIT_00 => X"ffffffed000000100000003f00000021000000100000003e0000001800000006",
            INIT_01 => X"00000008000000030000001dfffffffaffffffe5fffffff6ffffffe700000001",
            INIT_02 => X"ffffffe4fffffffb000000130000000bffffffef00000029ffffffd1ffffffd6",
            INIT_03 => X"fffffff90000001a000000100000002800000005fffffff400000027fffffff6",
            INIT_04 => X"ffffffdeffffffe9fffffff600000006fffffff5000000180000000400000009",
            INIT_05 => X"0000002400000007fffffff10000000efffffffdfffffff40000000800000035",
            INIT_06 => X"00000000fffffff200000008fffffff6fffffffdfffffff2fffffff40000000a",
            INIT_07 => X"00000003ffffffdefffffff60000000e000000060000000000000001ffffffe9",
            INIT_08 => X"0000000f00000013000000100000001c0000000b0000000f0000004a0000002a",
            INIT_09 => X"00000028000000150000000b0000001700000028ffffffeffffffff7ffffffe3",
            INIT_0A => X"fffffff2ffffffd7000000050000000afffffff50000000dfffffffbffffffe0",
            INIT_0B => X"00000001ffffffcf0000000000000012fffffff80000003fffffffdc00000001",
            INIT_0C => X"00000022fffffffe0000000bfffffffaffffffefffffffe7ffffffdcffffffbc",
            INIT_0D => X"ffffffc7ffffffb500000013fffffffdffffffff00000011ffffffe100000001",
            INIT_0E => X"00000019ffffffd8fffffffe00000048000000130000001e0000001900000003",
            INIT_0F => X"00000011fffffffefffffff4fffffff3fffffff1fffffff6fffffff400000001",
            INIT_10 => X"000000040000001f0000001a0000003afffffff1000000200000002500000019",
            INIT_11 => X"0000001b00000002fffffff8fffffffbffffffdb00000013ffffffe1fffffffa",
            INIT_12 => X"ffffffddfffffff7fffffff5fffffff1ffffffe900000001ffffffeb0000001e",
            INIT_13 => X"00000010fffffffbfffffff5ffffffd7fffffff60000001900000001ffffffed",
            INIT_14 => X"0000000affffffeeffffffeb000000140000000300000008000000150000000a",
            INIT_15 => X"00000000ffffffe7fffffff0ffffffef00000001ffffffeafffffffe00000008",
            INIT_16 => X"0000000200000000000000020000000a00000005ffffffedfffffff500000008",
            INIT_17 => X"fffffffdffffffebffffffedffffffe80000000bfffffff40000000d00000004",
            INIT_18 => X"fffffff30000001100000002fffffffd00000002fffffffdfffffff600000007",
            INIT_19 => X"00000015fffffff60000000c0000000a00000002fffffffefffffff8fffffffc",
            INIT_1A => X"fffffffe0000000bffffffe600000005ffffffff000000030000000b00000007",
            INIT_1B => X"ffffffff00000000fffffff4fffffff4fffffff1ffffffe50000000600000007",
            INIT_1C => X"ffffffeb00000001fffffffcffffffeafffffff8fffffffbfffffff600000001",
            INIT_1D => X"fffffff10000000900000005ffffffeffffffff0ffffffe7fffffff5fffffff2",
            INIT_1E => X"ffffffed0000000cfffffff1ffffffeb0000000900000000ffffffe7ffffffe8",
            INIT_1F => X"ffffffe5fffffff9ffffffe70000000500000009000000010000000affffffee",
            INIT_20 => X"fffffffdfffffff9ffffffee0000000afffffff9fffffffd0000000ffffffff5",
            INIT_21 => X"fffffff90000000000000000fffffffdffffffecffffffebfffffffcfffffff1",
            INIT_22 => X"ffffffe50000000b00000009fffffffaffffffffffffffef00000009fffffff4",
            INIT_23 => X"fffffff500000002fffffffefffffffc00000000ffffffe6ffffffe6fffffff5",
            INIT_24 => X"ffffffe90000000100000000fffffff1000000040000000400000002fffffff0",
            INIT_25 => X"00000004000000070000000f0000000ffffffff1fffffff1fffffff900000001",
            INIT_26 => X"fffffffcfffffff3fffffff5000000000000000b00000000fffffff100000007",
            INIT_27 => X"fffffffc000000030000000b00000001ffffffeb00000002fffffff9ffffffea",
            INIT_28 => X"00000009ffffffeefffffff50000000d00000008ffffffec0000000200000000",
            INIT_29 => X"ffffffec0000000f0000000f00000007fffffffcfffffff2fffffffffffffff3",
            INIT_2A => X"fffffff6fffffffeffffffe3fffffff6fffffff2fffffff90000000bffffffec",
            INIT_2B => X"fffffff8ffffffedffffffe3fffffff000000000ffffffeb0000000e00000005",
            INIT_2C => X"000000070000000dfffffff6ffffffee0000000effffffec000000000000000d",
            INIT_2D => X"ffffffff00000004ffffffeffffffff8fffffff4ffffffed00000007fffffff0",
            INIT_2E => X"0000000400000000fffffff0ffffffeafffffff900000007ffffffee00000005",
            INIT_2F => X"0000000000000002ffffffe7fffffff200000004ffffffe4000000070000000b",
            INIT_30 => X"ffffffedffffffe10000000000000003ffffffe6ffffffdfffffffdefffffff4",
            INIT_31 => X"ffffffe0ffffffeffffffff80000000600000013fffffff6fffffff3fffffffd",
            INIT_32 => X"fffffff600000000fffffff0ffffffe9fffffff300000001fffffffafffffff8",
            INIT_33 => X"ffffffebffffffec00000005ffffffe7fffffff400000007ffffffe6fffffffd",
            INIT_34 => X"00000007fffffff20000001300000005ffffffe3ffffffffffffffec0000000b",
            INIT_35 => X"00000010fffffff400000005fffffff3ffffffe5fffffffcfffffffbffffffe7",
            INIT_36 => X"00000000fffffff5fffffff2fffffffeffffffeb00000006fffffffdfffffff4",
            INIT_37 => X"fffffff4fffffffdfffffff9ffffffec000000060000000fffffffe800000005",
            INIT_38 => X"fffffff6fffffffd00000012ffffffed00000014fffffffefffffffd00000006",
            INIT_39 => X"ffffffef00000004fffffffdffffffeb00000009000000030000000a00000003",
            INIT_3A => X"ffffffff00000000ffffffedfffffff7fffffffd000000050000000400000011",
            INIT_3B => X"0000000100000005ffffffe900000000ffffffebffffffecffffffeffffffff7",
            INIT_3C => X"ffffffec00000009fffffff7fffffff2ffffffeefffffff300000003fffffffc",
            INIT_3D => X"0000000900000006fffffff0fffffff4ffffffeeffffffe9ffffffe400000002",
            INIT_3E => X"ffffffe4ffffffefffffffe2000000090000000bfffffff4fffffff4ffffffe8",
            INIT_3F => X"fffffffefffffff50000000200000002fffffffaffffffecfffffffeffffffea",

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
    end generate MEM_IWGHT_LAYER2_ENTITY15;


    MEM_IWGHT_LAYER2_ENTITY16 : if BRAM_NAME = "iwght_layer2_entity16" generate
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
            INIT_00 => X"fffffff3fffffff900000005fffffff6fffffff1fffffff5ffffffe7ffffffec",
            INIT_01 => X"00000007ffffffefffffffe70000000000000000fffffffe000000000000000b",
            INIT_02 => X"0000000300000006fffffff0fffffff6ffffffedfffffffe0000000800000008",
            INIT_03 => X"00000008000000050000000000000005fffffffcfffffffcffffffe300000005",
            INIT_04 => X"fffffff5fffffff700000000ffffffebfffffff90000000bffffffeaffffffe9",
            INIT_05 => X"0000000efffffffcffffffe900000003000000080000000ffffffffa00000005",
            INIT_06 => X"00000009000000080000000f0000000b0000000400000002000000040000000c",
            INIT_07 => X"ffffffe9fffffffdffffffec0000000afffffff6ffffffffffffffe90000000a",
            INIT_08 => X"fffffffefffffff200000006000000000000000800000006ffffffebfffffffa",
            INIT_09 => X"0000000efffffff600000000fffffff800000001fffffff3fffffff7fffffffc",
            INIT_0A => X"0000000e000000120000000cfffffff6fffffffefffffff100000000ffffffed",
            INIT_0B => X"00000004fffffff800000006fffffff4fffffffdffffffeaffffffed00000008",
            INIT_0C => X"fffffffcfffffff7fffffffc000000050000000afffffff600000005fffffffb",
            INIT_0D => X"00000013ffffffeffffffffa0000000dffffffeafffffff9fffffffcfffffff9",
            INIT_0E => X"fffffff1ffffffe90000000affffffe500000002ffffffec0000000affffffff",
            INIT_0F => X"fffffff0fffffff500000003fffffff2ffffffef00000002fffffff400000007",
            INIT_10 => X"fffffff900000005fffffff2ffffffecffffffebfffffff2ffffffeffffffffb",
            INIT_11 => X"ffffffec00000000fffffffefffffff6fffffff100000000ffffffed00000006",
            INIT_12 => X"000000050000000b00000004fffffffffffffffaffffffe7fffffff9fffffffa",
            INIT_13 => X"fffffff4000000090000000afffffff60000000fffffffe6fffffffaffffffeb",
            INIT_14 => X"0000000cffffffebfffffff200000003ffffffebffffffe9fffffff8ffffffee",
            INIT_15 => X"00000004fffffff3fffffff90000000f00000000fffffff0ffffffeafffffff5",
            INIT_16 => X"fffffff8ffffffe4fffffffcffffffe90000000500000010ffffffecffffffea",
            INIT_17 => X"fffffff1fffffffafffffff5ffffffeeffffffeafffffffb00000007fffffff5",
            INIT_18 => X"ffffffef00000009fffffff5fffffff9fffffffaffffffeeffffffe5fffffff5",
            INIT_19 => X"ffffffeb00000003000000020000000efffffff100000003ffffffecfffffffa",
            INIT_1A => X"fffffffa00000005fffffff500000000fffffffafffffff3ffffffeeffffffee",
            INIT_1B => X"00000006fffffffffffffffefffffffffffffff90000000dffffffeefffffff7",
            INIT_1C => X"000000000000000800000011ffffffe900000008fffffff7fffffffaffffffed",
            INIT_1D => X"00000000000000020000002d0000001effffffdcffffffeefffffff600000016",
            INIT_1E => X"0000000c00000000000000220000002e000000050000003200000026fffffff4",
            INIT_1F => X"0000003500000031fffffff9fffffffdffffffe9ffffffd4fffffff2ffffffc9",
            INIT_20 => X"ffffffa900000012ffffffa7ffffffb30000001efffffffbffffffd90000003e",
            INIT_21 => X"0000000bfffffffc000000380000000a0000000a0000000b0000000bfffffff2",
            INIT_22 => X"000000160000002900000017ffffffe9ffffffe8ffffffe20000002a00000022",
            INIT_23 => X"0000000ffffffffa00000003ffffffeaffffffe4ffffffecffffffb7ffffffe1",
            INIT_24 => X"ffffffff00000018ffffffdf00000010fffffff30000003a000000150000002d",
            INIT_25 => X"000000350000001afffffff200000007ffffffe1fffffff0000000030000000f",
            INIT_26 => X"0000000e0000000dffffffd500000022ffffffe9fffffffc0000002600000016",
            INIT_27 => X"fffffff80000002a000000040000002e00000001ffffffd3ffffffbeffffffe4",
            INIT_28 => X"00000013fffffff70000000cfffffffb000000260000000e00000018ffffffe0",
            INIT_29 => X"fffffff500000012ffffffc90000000600000001ffffffeaffffffddfffffffd",
            INIT_2A => X"0000000700000018000000150000000800000013ffffffdc0000000000000013",
            INIT_2B => X"ffffffd6ffffffff00000006fffffffa00000015fffffff5000000380000000c",
            INIT_2C => X"00000004ffffffff00000018fffffffefffffffcfffffff3ffffffe7ffffffec",
            INIT_2D => X"0000000300000015ffffffe4fffffff10000002affffffd10000000500000020",
            INIT_2E => X"ffffffc6fffffff200000014ffffffbdffffffd2ffffffd9fffffff40000000e",
            INIT_2F => X"ffffffcbfffffffe000000010000002300000002ffffffe90000001a00000000",
            INIT_30 => X"0000000c00000005ffffffc6fffffff7000000120000000afffffffc0000003f",
            INIT_31 => X"ffffffceffffffdcffffffe5000000160000002e0000001a0000001d00000009",
            INIT_32 => X"0000000bfffffff90000000dfffffff1ffffffe30000001b0000002afffffff0",
            INIT_33 => X"0000000000000013ffffffed0000001c00000019000000310000002d0000000a",
            INIT_34 => X"000000050000000d00000003ffffffec0000000efffffff70000001800000026",
            INIT_35 => X"0000000a00000017fffffffffffffffd0000000c0000001cfffffffc00000034",
            INIT_36 => X"00000014ffffffe60000000600000008fffffffcffffffeffffffff4ffffffee",
            INIT_37 => X"000000160000002d0000001effffffe9ffffffdbfffffff4ffffffaaffffffe4",
            INIT_38 => X"ffffffd3fffffff20000000300000013fffffffe0000000dffffffeb00000005",
            INIT_39 => X"fffffff8ffffffe3fffffff6ffffffe600000018fffffff90000000800000035",
            INIT_3A => X"fffffff9ffffffff000000190000001f0000001dfffffff10000001700000010",
            INIT_3B => X"0000000dffffffe90000001dffffffedfffffff8fffffff8ffffffaffffffff8",
            INIT_3C => X"fffffff0ffffffcdffffffdaffffffcfffffffbffffffff80000000600000000",
            INIT_3D => X"ffffffeb0000000d0000002b00000009ffffffffffffffefffffffcf00000003",
            INIT_3E => X"fffffff9ffffffe800000000ffffffda00000015000000080000000c00000001",
            INIT_3F => X"ffffffd70000001c0000000efffffff300000017ffffffe10000000100000007",

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
    end generate MEM_IWGHT_LAYER2_ENTITY16;


    MEM_IWGHT_LAYER2_ENTITY17 : if BRAM_NAME = "iwght_layer2_entity17" generate
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
            INIT_00 => X"0000000cfffffffefffffff9000000070000000dffffffef0000000cfffffff4",
            INIT_01 => X"0000000e00000002ffffffe3ffffffe4ffffffdcfffffffeffffffedffffffe1",
            INIT_02 => X"0000000afffffff0ffffffef00000002ffffffdfffffffe8fffffff7ffffffed",
            INIT_03 => X"0000000dffffffeefffffff900000004ffffffe9fffffffdfffffff900000009",
            INIT_04 => X"fffffff7ffffffedffffffd4ffffffebffffffe4fffffff4fffffff0fffffff5",
            INIT_05 => X"0000000cfffffffafffffffe0000000300000000ffffffed0000000ffffffff9",
            INIT_06 => X"0000000100000004fffffff40000000000000001ffffffe9ffffffed00000002",
            INIT_07 => X"00000003ffffffe5fffffffbffffffeeffffffeb00000000fffffff2fffffff7",
            INIT_08 => X"00000002fffffff0ffffffeb00000006fffffff4ffffffe900000007fffffffd",
            INIT_09 => X"fffffff6000000000000000affffffebfffffffdffffffecffffffe900000008",
            INIT_0A => X"fffffff10000000900000003fffffff200000007fffffff8ffffffe80000000d",
            INIT_0B => X"ffffffff00000016fffffff5fffffff50000000dfffffffefffffff1fffffff3",
            INIT_0C => X"ffffffeaffffffe800000004000000000000001200000013ffffffe9fffffff8",
            INIT_0D => X"ffffffe6fffffffdffffffe900000005000000060000000fffffffeafffffff6",
            INIT_0E => X"ffffffe4ffffffedfffffffefffffffefffffff100000005ffffffe4fffffff1",
            INIT_0F => X"00000002ffffffe80000000000000001fffffff70000000a0000000b00000011",
            INIT_10 => X"ffffffeeffffffe9fffffff3ffffffebfffffff4ffffffe5fffffffdffffffee",
            INIT_11 => X"fffffff900000003ffffffedfffffff7fffffff90000000c00000000fffffff8",
            INIT_12 => X"0000001600000010fffffffbfffffff7fffffffe0000000c0000000800000020",
            INIT_13 => X"00000000fffffffd00000019000000140000001100000000fffffffd00000001",
            INIT_14 => X"fffffff60000000400000005fffffff500000011fffffffdfffffff9fffffffa",
            INIT_15 => X"fffffff60000000200000000ffffffe800000000ffffffebfffffff1ffffffe6",
            INIT_16 => X"ffffffffffffffe8fffffff700000002ffffffe0ffffffecffffffefffffffef",
            INIT_17 => X"ffffffe0fffffff400000000ffffffecffffffe3fffffff5ffffffe000000000",
            INIT_18 => X"fffffff7ffffffebfffffff2fffffffd0000000200000008ffffffe0ffffffe6",
            INIT_19 => X"fffffff70000000ffffffff90000000cfffffffd00000020fffffff30000000b",
            INIT_1A => X"fffffffa0000001200000009000000000000000000000006ffffffed00000008",
            INIT_1B => X"fffffff1fffffff4ffffffdcffffffe9ffffffe8ffffffe6000000000000000c",
            INIT_1C => X"ffffffdb0000000bfffffffcffffffd9ffffffe6fffffff0ffffffeaffffffeb",
            INIT_1D => X"ffffffedffffffedfffffff3fffffffa00000011000000120000000ffffffffc",
            INIT_1E => X"ffffffe50000000effffffe60000000400000008fffffff0fffffff8ffffffe3",
            INIT_1F => X"fffffffafffffff8fffffffefffffff0ffffffe800000002fffffff4fffffff7",
            INIT_20 => X"fffffffa0000000100000003ffffffecfffffff5fffffff600000000fffffff1",
            INIT_21 => X"ffffffeaffffffff00000009ffffffeafffffff1fffffff00000000a00000007",
            INIT_22 => X"fffffff0ffffffeb00000008fffffffafffffff2fffffff9fffffffeffffffe3",
            INIT_23 => X"fffffffafffffff90000000efffffffcfffffff9ffffffebffffffe9ffffffff",
            INIT_24 => X"000000190000001affffffee00000004000000070000000e000000180000001a",
            INIT_25 => X"000000050000001c0000003c000000420000004a000000620000003a00000057",
            INIT_26 => X"00000006ffffffc600000000ffffffeffffffff7ffffffc0ffffffb6ffffffae",
            INIT_27 => X"ffffff83ffffffb8ffffff74ffffffe5fffffff500000012ffffffe5fffffff4",
            INIT_28 => X"0000001c0000001b0000000f00000063fffffffd00000006fffffffdffffffdc",
            INIT_29 => X"ffffffbcffffffc4ffffffebffffff63ffffffbe0000001a00000018fffffffa",
            INIT_2A => X"00000004ffffffe0ffffffed0000002a0000003400000054fffffff60000000a",
            INIT_2B => X"fffffff400000012000000080000000000000000ffffffe50000000000000009",
            INIT_2C => X"00000011fffffffafffffffcfffffff400000006000000160000002d00000007",
            INIT_2D => X"000000160000001400000030000000190000003a000000140000002c00000009",
            INIT_2E => X"ffffffbbffffffe5fffffff1ffffffc3fffffff5ffffffe0ffffffb000000007",
            INIT_2F => X"fffffff5fffffff1000000250000002400000002000000470000002affffffff",
            INIT_30 => X"00000023ffffff9effffff6efffffffdfffffff5ffffffb5ffffffc9ffffff84",
            INIT_31 => X"ffffffcbfffffffeffffffc1ffffffdfffffffddffffffee0000000e00000004",
            INIT_32 => X"ffffffedfffffff90000001d00000031000000650000000f00000023ffffffdc",
            INIT_33 => X"000000310000001ffffffff9fffffffdfffffffbfffffff900000012ffffffd6",
            INIT_34 => X"ffffffd7fffffff0ffffffe4ffffffa80000000a0000001f00000031fffffffc",
            INIT_35 => X"ffffffe1ffffffd600000014ffffffdeffffffe7000000030000001600000022",
            INIT_36 => X"0000000a00000049000000140000002c00000007ffffffedfffffff600000002",
            INIT_37 => X"ffffffea000000280000000f0000000b00000022000000210000001700000001",
            INIT_38 => X"fffffffc0000001500000002ffffffda0000000effffffe100000016ffffffe8",
            INIT_39 => X"fffffff600000018fffffffb0000001b0000000e00000015fffffff900000002",
            INIT_3A => X"000000020000000900000013000000130000000efffffff9fffffffdffffffdc",
            INIT_3B => X"ffffffeafffffff6fffffff8fffffff6000000010000001d00000000fffffffd",
            INIT_3C => X"fffffff1000000000000000afffffff8fffffffb00000009ffffffe80000000c",
            INIT_3D => X"0000000ffffffffd0000000fffffffeefffffff3000000090000000000000021",
            INIT_3E => X"00000001fffffff30000001effffffe6ffffffe4ffffffebffffffcdffffffc7",
            INIT_3F => X"ffffffe6ffffffb8ffffffffffffffb8ffffffd6ffffff9bfffffff5ffffffb5",

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
    end generate MEM_IWGHT_LAYER2_ENTITY17;


    MEM_IWGHT_LAYER2_ENTITY18 : if BRAM_NAME = "iwght_layer2_entity18" generate
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
            INIT_00 => X"ffffffa20000002f0000002400000032000000200000002a000000070000000c",
            INIT_01 => X"fffffff4ffffffe90000002efffffff9ffffffecfffffffafffffffbffffffde",
            INIT_02 => X"fffffff7ffffffff0000000ffffffff3fffffffeffffffea0000000efffffff8",
            INIT_03 => X"fffffff00000000c0000000f0000000efffffff0ffffffd00000001dffffffe4",
            INIT_04 => X"fffffff3fffffffa0000003b000000190000000effffffe0ffffffd2ffffffd3",
            INIT_05 => X"ffffffbbffffffc0ffffffcf000000130000000b00000014fffffff10000000f",
            INIT_06 => X"00000001fffffff9ffffffe600000017000000090000000b0000001a0000000e",
            INIT_07 => X"ffffffe5fffffff600000005fffffffffffffffefffffffd0000001a0000001b",
            INIT_08 => X"fffffffc000000180000001400000004fffffffc000000080000000e00000010",
            INIT_09 => X"000000020000001200000021fffffffd00000017fffffff7ffffffefffffffef",
            INIT_0A => X"ffffffd00000000cfffffff9ffffffedffffffccffffffeeffffffd2ffffffc4",
            INIT_0B => X"00000003ffffffd5ffffffcb0000001a00000000000000070000002f00000019",
            INIT_0C => X"0000002c0000003b00000021fffffff0fffffff3ffffff96ffffffe0ffffffe5",
            INIT_0D => X"ffffff94ffffffcfffffffd9ffffffeaffffffe6ffffffcafffffff2ffffffc4",
            INIT_0E => X"ffffffe900000009fffffff5ffffffdf00000040000000310000001600000000",
            INIT_0F => X"0000001300000009ffffffee0000001dffffffe2ffffffedffffffeeffffffdb",
            INIT_10 => X"ffffffd300000005fffffff600000013000000290000000ffffffffc0000001f",
            INIT_11 => X"0000004d000000320000000f0000004d00000005ffffffeafffffff9ffffffff",
            INIT_12 => X"fffffff600000002ffffffeafffffff50000000afffffff4ffffffdaffffffe9",
            INIT_13 => X"fffffff6ffffffe30000002500000021ffffffff00000024ffffffd7ffffffe0",
            INIT_14 => X"fffffff500000000ffffffe100000000ffffffebffffffecfffffffe0000001d",
            INIT_15 => X"00000002fffffff2fffffffbfffffffefffffff3ffffffdffffffffbfffffff3",
            INIT_16 => X"0000001600000029000000150000001800000017ffffffdeffffffe7ffffffde",
            INIT_17 => X"00000015000000050000003700000022fffffff90000000100000011ffffffef",
            INIT_18 => X"ffffffd8ffffffe4fffffff60000000bfffffff4000000120000000800000001",
            INIT_19 => X"ffffffdaffffffe0ffffffe90000001900000019000000010000000d00000012",
            INIT_1A => X"0000005f00000039000000260000002e0000002800000026fffffff400000006",
            INIT_1B => X"00000024000000090000000b0000001100000012fffffffc0000002600000008",
            INIT_1C => X"ffffffebffffffe8fffffff6ffffffd0ffffffb4ffffffecfffffff8fffffff0",
            INIT_1D => X"ffffffeaffffffee0000001900000000ffffffeeffffffe50000000effffffe1",
            INIT_1E => X"fffffffdffffffe5000000220000002effffffe7ffffffe7ffffffd8ffffffbf",
            INIT_1F => X"ffffffe6ffffffe8ffffffd80000001c0000002afffffff6ffffffefffffffde",
            INIT_20 => X"ffffffc1ffffffdcffffffd8fffffff80000004000000042fffffffeffffffea",
            INIT_21 => X"ffffffd1fffffff2ffffffee00000004ffffffd3ffffffeafffffff700000040",
            INIT_22 => X"000000190000000a00000017ffffffe5fffffffdfffffffefffffff6fffffff6",
            INIT_23 => X"fffffffaffffffdbffffffbf0000004cfffffffeffffffd2000000000000001e",
            INIT_24 => X"0000001700000005ffffffe5fffffff1fffffff00000000d0000000800000001",
            INIT_25 => X"000000050000000affffffff0000000e00000013000000220000000500000005",
            INIT_26 => X"00000007fffffff8fffffff3ffffffddffffffd8ffffffcdfffffffaffffffee",
            INIT_27 => X"00000009ffffffebfffffff40000000400000006000000190000002100000030",
            INIT_28 => X"000000080000000f0000001f00000001ffffffdefffffff3fffffffcfffffff6",
            INIT_29 => X"fffffff40000000dffffffe6fffffff6ffffffe700000012ffffffdbffffffee",
            INIT_2A => X"ffffffd4ffffffb0ffffffe5fffffff4fffffff40000000c00000018ffffffe3",
            INIT_2B => X"0000000200000017fffffffb000000110000002f00000018fffffff900000012",
            INIT_2C => X"fffffff700000001ffffffedffffffdffffffff60000000affffffe3ffffffe8",
            INIT_2D => X"ffffffe80000001afffffff6ffffffebffffff9bffffff9affffffb9ffffff78",
            INIT_2E => X"ffffff87ffffffc60000001800000019ffffffeaffffffe000000006fffffffc",
            INIT_2F => X"000000260000001b0000000e00000002ffffffb3ffffffdc0000000affffffc1",
            INIT_30 => X"ffffffcc00000011ffffffe9ffffffd60000000affffffee0000000000000027",
            INIT_31 => X"00000014ffffffef0000002b0000002c0000000a0000002900000022ffffffff",
            INIT_32 => X"0000003900000027fffffff60000000c00000017fffffff6ffffffef00000008",
            INIT_33 => X"ffffffebfffffff9fffffff5ffffffe0fffffffdfffffff2fffffff30000000c",
            INIT_34 => X"0000002000000001fffffff40000001b00000038000000260000001a00000019",
            INIT_35 => X"fffffff4ffffffe4fffffff6ffffffb8ffffffc9ffffffeeffffffcafffffff0",
            INIT_36 => X"00000003000000010000001100000005fffffffffffffff7ffffffe90000000c",
            INIT_37 => X"fffffff9fffffffe0000000100000009fffffffdffffffdcffffffc3ffffffc7",
            INIT_38 => X"ffffffdafffffff10000000e0000000a0000000bffffffed0000001effffffd0",
            INIT_39 => X"ffffffdd0000002fffffffd8ffffffe3fffffffafffffff4ffffffe100000005",
            INIT_3A => X"fffffffdfffffff10000002000000010ffffffc80000000d0000002200000028",
            INIT_3B => X"ffffffe3fffffffaffffffff00000006000000030000000200000003fffffff2",
            INIT_3C => X"ffffffe90000003f0000000efffffff20000001300000012fffffff0fffffff0",
            INIT_3D => X"fffffff50000000d0000000f0000001bfffffff1000000190000000efffffffa",
            INIT_3E => X"ffffffccffffffe2ffffffc4ffffffb4ffffffe0ffffffbb00000004ffffffb0",
            INIT_3F => X"ffffffc20000001e00000014000000110000000000000011ffffffe400000002",

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
    end generate MEM_IWGHT_LAYER2_ENTITY18;


    MEM_IWGHT_LAYER2_ENTITY19 : if BRAM_NAME = "iwght_layer2_entity19" generate
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
            INIT_00 => X"fffffffaffffffce0000002c0000004a0000004c00000007ffffffdaffffffed",
            INIT_01 => X"fffffffcffffffbbffffffdafffffffbffffffe700000000000000170000000d",
            INIT_02 => X"0000000b0000000f000000230000001900000004fffffff80000001c00000022",
            INIT_03 => X"00000004fffffff8fffffff9fffffff20000000000000007fffffff7fffffff9",
            INIT_04 => X"000000190000000b0000000000000007000000080000001a00000000fffffff7",
            INIT_05 => X"fffffffc0000000500000007fffffff50000000000000022ffffffef00000020",
            INIT_06 => X"fffffff7fffffffd000000130000000d0000000800000020000000190000000b",
            INIT_07 => X"fffffff300000010ffffffd9ffffffeb0000000300000030fffffff100000021",
            INIT_08 => X"0000004200000000000000110000000dffffffdbfffffff5ffffffe100000017",
            INIT_09 => X"ffffffed0000000efffffffa0000002600000029000000000000000effffffef",
            INIT_0A => X"00000026fffffff6ffffffe3fffffffcffffffebffffffccffffffe800000000",
            INIT_0B => X"000000090000000600000021000000050000001d00000000ffffffe600000019",
            INIT_0C => X"00000008ffffffd9fffffffb0000003affffffe8fffffff400000021ffffffcc",
            INIT_0D => X"000000070000002cffffffff00000029fffffffbffffffecffffffffffffffe6",
            INIT_0E => X"000000010000000effffffec0000000e00000014000000060000000c00000021",
            INIT_0F => X"0000001b000000320000000e0000001b000000020000001000000023ffffffce",
            INIT_10 => X"ffffffedfffffff5ffffffe3fffffffc000000100000000e00000001fffffffa",
            INIT_11 => X"fffffff0fffffffd000000150000000e0000003600000016000000320000000e",
            INIT_12 => X"00000020000000200000002f000000110000001affffffdd000000110000000c",
            INIT_13 => X"000000150000001c00000042ffffffe80000001500000007000000180000003b",
            INIT_14 => X"00000007ffffffd6ffffffea0000000b0000001cffffffda0000001500000010",
            INIT_15 => X"0000000f00000029ffffffe80000000800000027ffffffcdffffffd8ffffffeb",
            INIT_16 => X"ffffffe7ffffffe4ffffffeeffffffb8ffffffc7ffffffe7ffffffeafffffff9",
            INIT_17 => X"ffffffd5ffffffafffffffb9ffffffb5fffffffefffffff2fffffffc00000022",
            INIT_18 => X"0000003afffffff500000012fffffff1ffffffe500000011fffffff900000015",
            INIT_19 => X"ffffffecfffffffb00000002ffffffe80000000900000011ffffffc800000001",
            INIT_1A => X"0000003effffffee0000000b0000001800000009fffffff70000000200000006",
            INIT_1B => X"0000000b0000000dffffffe90000000d0000001a00000009fffffffe0000001a",
            INIT_1C => X"000000030000002900000013ffffffe5ffffffa80000000effffffb7fffffff1",
            INIT_1D => X"ffffffe7ffffffc0ffffffe2ffffffcfffffffeafffffff4fffffffbffffffc9",
            INIT_1E => X"fffffff20000000ffffffffaffffffc2ffffffbbffffffdefffffffaffffffd5",
            INIT_1F => X"ffffffd8ffffffccffffffe3fffffffd00000012ffffffecffffffdfffffffbf",
            INIT_20 => X"fffffff0ffffffc0ffffff9afffffffbffffff97ffffffa5ffffffc9fffffff0",
            INIT_21 => X"000000000000001effffffeaffffffea00000001fffffff2ffffffd7ffffffbf",
            INIT_22 => X"ffffffccffffffeaffffffe7ffffffbbffffffabffffffa9ffffffcaffffff82",
            INIT_23 => X"ffffffd7ffffffd1000000000000001afffffff0ffffffabffffffe1ffffffd9",
            INIT_24 => X"fffffffdffffffe6fffffffffffffffc00000024ffffffe10000000000000000",
            INIT_25 => X"ffffffddffffffcf0000001c0000000e000000180000001b0000000200000014",
            INIT_26 => X"0000000300000013ffffffdfffffffd70000000f000000450000003000000017",
            INIT_27 => X"000000360000003efffffffaffffffe3ffffffed0000000e0000003300000033",
            INIT_28 => X"000000110000003500000014ffffffe0ffffffedffffffedffffffe2ffffffef",
            INIT_29 => X"00000002ffffffe90000000b00000007ffffffeb000000010000000effffffef",
            INIT_2A => X"fffffff70000001bffffffe2ffffffe300000015ffffffddffffffcaffffffe5",
            INIT_2B => X"000000080000001dffffffec000000240000003200000016000000310000001a",
            INIT_2C => X"fffffff30000002b00000013ffffffe700000000000000160000000600000005",
            INIT_2D => X"fffffff3fffffff0000000000000001500000039000000000000002100000043",
            INIT_2E => X"fffffff80000001a00000038ffffffdbffffffd2ffffffdeffffffeeffffffb0",
            INIT_2F => X"ffffffd10000002fffffffb6ffffff9e00000008000000000000002c00000030",
            INIT_30 => X"00000004000000310000000c0000000d00000011ffffff97ffffff95ffffffc3",
            INIT_31 => X"ffffffc5ffffff90ffffff760000002200000004ffffffcd0000000800000015",
            INIT_32 => X"0000003200000015000000310000000d00000004ffffffe3ffffffcffffffff4",
            INIT_33 => X"0000000c00000044000000110000002b0000001afffffffbfffffff40000001f",
            INIT_34 => X"0000001300000013ffffffefffffffe100000002fffffff30000000100000000",
            INIT_35 => X"00000000ffffffe6ffffffceffffff9affffffd0ffffffbcffffffa7ffffffea",
            INIT_36 => X"ffffffe0fffffff600000004ffffffeaffffffca0000000bffffffde00000003",
            INIT_37 => X"00000002fffffffeffffffe1ffffffeefffffffbfffffff1ffffffe400000011",
            INIT_38 => X"00000016ffffffe200000005fffffffafffffff1ffffffd8ffffffc900000004",
            INIT_39 => X"fffffff0ffffffe5ffffffd6ffffffdaffffffe50000000f0000002d0000002e",
            INIT_3A => X"0000001f0000001c0000002000000025fffffffcfffffffd00000014ffffffdd",
            INIT_3B => X"ffffffca0000000effffffec0000000500000022fffffffb00000014fffffffb",
            INIT_3C => X"00000017ffffffdf000000290000000f00000018000000120000000effffffe3",
            INIT_3D => X"00000019ffffffe4fffffffa00000000ffffffdffffffff7ffffffe9ffffffee",
            INIT_3E => X"0000000cffffffedffffffe0fffffff3ffffffedffffffff0000000200000011",
            INIT_3F => X"000000240000001500000013ffffffe9ffffffcb0000001cfffffff1fffffff9",

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
    end generate MEM_IWGHT_LAYER2_ENTITY19;


    MEM_IWGHT_LAYER2_ENTITY20 : if BRAM_NAME = "iwght_layer2_entity20" generate
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
            INIT_00 => X"000000040000000c0000001a00000005fffffff900000037000000170000001c",
            INIT_01 => X"000000260000001f0000000a00000004ffffffe3000000090000002efffffff8",
            INIT_02 => X"000000010000001efffffff90000000400000009fffffffefffffff1ffffffcc",
            INIT_03 => X"ffffffecffffffc7ffffffdfffffffd60000000afffffff2000000190000002a",
            INIT_04 => X"00000021000000210000001c000000080000002400000007ffffffdaffffffea",
            INIT_05 => X"ffffffd600000010ffffffdaffffffe600000000ffffffe1fffffffd0000000a",
            INIT_06 => X"ffffffe6ffffffcaffffffd7fffffffbffffffd6ffffffc4ffffffe1fffffff3",
            INIT_07 => X"ffffffdafffffffeffffffea0000000d0000001900000000000000130000000d",
            INIT_08 => X"000000380000001700000033000000040000002cffffffd10000000400000004",
            INIT_09 => X"fffffff40000000000000047fffffffb0000001d00000012000000110000001c",
            INIT_0A => X"0000000600000029fffffffcffffffec0000001e000000110000000400000011",
            INIT_0B => X"00000012fffffff700000011000000190000000d0000000e0000001600000015",
            INIT_0C => X"fffffff5000000040000000bfffffffdfffffff200000009fffffff7fffffff1",
            INIT_0D => X"fffffff00000000c000000080000001a000000110000001b0000001500000009",
            INIT_0E => X"0000001efffffff100000018fffffff5fffffffd00000021ffffffe5ffffffdb",
            INIT_0F => X"000000630000003d000000470000002d0000004c000000690000005b00000022",
            INIT_10 => X"00000011fffffffaffffffd9ffffffbdffffffeeffffffbfffffffdc00000004",
            INIT_11 => X"ffffffdefffffff9fffffff600000005fffffff300000005000000160000001c",
            INIT_12 => X"000000140000003c0000002400000001fffffffbfffffffe00000022fffffff9",
            INIT_13 => X"fffffffa0000002f000000280000000c000000110000000b0000001400000002",
            INIT_14 => X"000000010000001affffffdefffffff2000000230000000700000000fffffff9",
            INIT_15 => X"0000001100000026000000150000004100000021000000030000001400000014",
            INIT_16 => X"00000011000000120000000effffffea0000000dfffffff0fffffffaffffffef",
            INIT_17 => X"fffffff50000000600000000ffffffed0000000f00000006000000270000001a",
            INIT_18 => X"ffffffff00000008fffffff0fffffff30000000efffffff30000001400000016",
            INIT_19 => X"fffffffe00000008fffffffeffffffd7ffffffcefffffff6ffffffebffffffdd",
            INIT_1A => X"ffffffc0ffffffc0ffffffff0000004b0000001900000034000000470000000c",
            INIT_1B => X"000000200000000700000000fffffffcfffffff10000001f00000009ffffffda",
            INIT_1C => X"ffffffea0000002d00000005000000260000002c000000240000003dfffffffe",
            INIT_1D => X"fffffff5ffffffe60000004a000000050000003c0000000c0000000000000006",
            INIT_1E => X"000000320000001dffffffea00000000fffffffbffffffd1ffffffd4ffffffe7",
            INIT_1F => X"fffffff3ffffffd80000000200000016ffffffc3fffffff6fffffffdffffffe8",
            INIT_20 => X"000000110000000bfffffffaffffffd1ffffffec000000020000000d0000001f",
            INIT_21 => X"0000001b000000140000000a00000001000000000000002400000002fffffffa",
            INIT_22 => X"0000001affffffdffffffff5ffffffe40000001f00000037fffffffeffffffd9",
            INIT_23 => X"fffffffa0000000a00000011ffffffecfffffff7fffffffb000000060000001e",
            INIT_24 => X"fffffff40000001c0000001fffffffdffffffff20000000700000017ffffffcf",
            INIT_25 => X"0000000fffffffe2ffffffc9ffffffe1ffffffa2ffffffc4ffffffddffffffce",
            INIT_26 => X"ffffffcaffffffc7fffffffaffffffdfffffffd50000000200000004fffffff0",
            INIT_27 => X"00000012ffffffe6fffffff2ffffffd8fffffff0ffffffd600000000ffffffd7",
            INIT_28 => X"ffffffffffffffe9fffffffbffffffecfffffff9ffffffe8ffffffeaffffff91",
            INIT_29 => X"ffffff95ffffffd7ffffffbfffffffc6ffffffda0000001200000003ffffffff",
            INIT_2A => X"ffffffddffffffb9ffffff9dffffffe20000000e000000160000001600000003",
            INIT_2B => X"ffffffdfffffffbcffffffedffffffcdfffffff2ffffffdf00000013ffffffe5",
            INIT_2C => X"000000150000000c000000260000001b0000002a00000037ffffffff0000000c",
            INIT_2D => X"00000024fffffff800000029ffffffecffffffe5fffffffffffffffffffffffa",
            INIT_2E => X"fffffffcfffffff3fffffff2000000170000000900000005fffffff20000000d",
            INIT_2F => X"fffffffa000000090000000f000000010000001dffffffe9ffffffe8fffffffe",
            INIT_30 => X"000000070000000a0000000cffffffefffffffebfffffffeffffffa5ffffffc4",
            INIT_31 => X"ffffffdcfffffff3ffffffdfffffffd9fffffffbffffffe8fffffffcfffffff2",
            INIT_32 => X"ffffffe9ffffffff0000001600000011000000190000000c0000000700000029",
            INIT_33 => X"ffffffe20000001cffffffffffffffc6ffffffeaffffffd2ffffffdb00000024",
            INIT_34 => X"0000001000000029000000030000000000000014000000250000003300000020",
            INIT_35 => X"000000310000001efffffffffffffff7ffffffec00000018fffffffdffffffdd",
            INIT_36 => X"fffffffdffffffe900000001ffffffb9fffffff4ffffffd1ffffffc6ffffffe7",
            INIT_37 => X"fffffff1ffffffb200000017ffffffdc000000270000002e0000002500000011",
            INIT_38 => X"fffffff2fffffff90000002f0000001c00000004ffffffe9ffffffd2ffffffb1",
            INIT_39 => X"ffffffe8ffffffef00000013ffffffe40000000b000000170000001100000003",
            INIT_3A => X"0000000500000019000000020000001b0000000d00000019000000150000000c",
            INIT_3B => X"ffffffeeffffffe2fffffff3ffffffaaffffffcdffffffdcfffffff1ffffffee",
            INIT_3C => X"fffffff5fffffff1fffffff40000000200000005fffffff7fffffffc00000010",
            INIT_3D => X"0000000d0000000f00000001ffffffe7ffffffe900000009ffffffe6ffffffe1",
            INIT_3E => X"fffffff2ffffffe50000000f0000001a00000036000000050000002d0000002a",
            INIT_3F => X"0000001100000036000000160000005f00000012ffffffe50000001700000015",

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
    end generate MEM_IWGHT_LAYER2_ENTITY20;


    MEM_IWGHT_LAYER2_ENTITY21 : if BRAM_NAME = "iwght_layer2_entity21" generate
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
            INIT_00 => X"ffffffe8ffffffe60000000d000000140000002b00000025000000050000001e",
            INIT_01 => X"00000031fffffff400000001fffffff900000010ffffffb1ffffffac00000002",
            INIT_02 => X"ffffffd0ffffffe80000001affffffc9ffffffe7fffffff6ffffffeaffffffcb",
            INIT_03 => X"ffffffd1ffffffe4ffffffea0000000b000000250000000c00000027fffffff5",
            INIT_04 => X"000000190000000000000036000000090000003a0000002c0000000a0000000d",
            INIT_05 => X"ffffffde00000008ffffffd6ffffffa9fffffff9ffffffefffffffcdfffffff6",
            INIT_06 => X"fffffff4ffffffbeffffffccffffffdeffffffeeffffffeaffffffdb00000008",
            INIT_07 => X"fffffff1ffffffe6ffffffeeffffffe300000011ffffffd6fffffffa00000013",
            INIT_08 => X"fffffff6ffffffdffffffff7fffffff4fffffff50000001dfffffff2ffffffbb",
            INIT_09 => X"fffffffbffffffcaffffffd3ffffffd0ffffffd1ffffffeafffffff3fffffff7",
            INIT_0A => X"0000001600000003fffffffa00000011000000200000001c00000011ffffffeb",
            INIT_0B => X"000000590000001f0000000d0000002ffffffffbfffffff2ffffffaaffffffdb",
            INIT_0C => X"ffffffe6ffffffc7fffffffd0000000200000002ffffffdcffffffdffffffff7",
            INIT_0D => X"0000000a00000000fffffff10000000700000011000000010000002300000002",
            INIT_0E => X"00000042fffffff50000000300000048fffffff9ffffffc500000016ffffffbf",
            INIT_0F => X"fffffffaffffffd6ffffffe4fffffff2ffffffefffffffec0000001000000007",
            INIT_10 => X"0000001100000024ffffffdfffffffc0ffffffd1fffffff5ffffffebffffffc7",
            INIT_11 => X"00000011ffffffe30000000bffffffed0000000c00000015fffffff000000002",
            INIT_12 => X"00000010000000010000000200000021fffffff1fffffffe00000003fffffffe",
            INIT_13 => X"fffffff9fffffff9fffffffd00000007ffffffe6fffffffb0000002300000004",
            INIT_14 => X"fffffffe000000200000001bfffffffcffffffeeffffffe8ffffffecfffffffb",
            INIT_15 => X"00000013ffffffffffffffe600000013000000070000001300000036ffffffee",
            INIT_16 => X"ffffffd700000018fffffff200000000fffffff50000000e0000000e0000002d",
            INIT_17 => X"fffffff9000000340000002cffffffd4000000140000002fffffffd9ffffffcc",
            INIT_18 => X"ffffffe90000003700000020000000120000002f00000013000000060000002e",
            INIT_19 => X"0000000600000004ffffffedfffffffbfffffff30000002e00000025fffffffc",
            INIT_1A => X"fffffff90000000c00000007ffffffc4ffffffdcffffffd100000004ffffffe7",
            INIT_1B => X"00000016000000000000001e0000002000000012ffffffe0ffffffd30000000d",
            INIT_1C => X"fffffffdffffffceffffffe000000020ffffffe9ffffffbaffffffd30000001a",
            INIT_1D => X"ffffffe7ffffffe7fffffffa00000004fffffff500000033ffffffeb00000014",
            INIT_1E => X"000000190000001100000007000000120000000a0000000100000004fffffff0",
            INIT_1F => X"0000000cfffffffc0000000c00000016000000130000001900000023fffffffc",
            INIT_20 => X"ffffffecfffffff6ffffffe9ffffffebfffffff6ffffffdffffffff900000010",
            INIT_21 => X"00000003fffffff4fffffff600000015fffffff6000000030000001dffffffb2",
            INIT_22 => X"0000000200000010ffffffdfffffffedffffffeb00000017fffffffa00000009",
            INIT_23 => X"ffffffff0000003700000018fffffffe0000001f000000280000000100000009",
            INIT_24 => X"ffffffe90000000dfffffff8ffffffd2ffffffd4ffffffcfffffffd400000009",
            INIT_25 => X"0000002c00000006000000240000004d0000000000000000fffffffefffffffd",
            INIT_26 => X"0000002300000010ffffffdd000000340000001efffffff4000000030000000f",
            INIT_27 => X"00000023fffffff0000000120000000900000009000000000000000effffffe1",
            INIT_28 => X"0000000200000020fffffff2fffffff00000000c0000001a0000000700000003",
            INIT_29 => X"0000001300000024fffffff30000003500000025000000020000001200000000",
            INIT_2A => X"ffffffd9ffffffae0000001400000016ffffffb30000003600000031ffffffae",
            INIT_2B => X"0000000a000000460000000300000013fffffff40000002100000006ffffffed",
            INIT_2C => X"fffffffafffffff1ffffffdaffffffe3fffffffc00000000ffffffc9fffffffb",
            INIT_2D => X"0000000bfffffff60000001d000000000000000000000009fffffff8ffffffe8",
            INIT_2E => X"fffffff7fffffff600000015ffffffd1ffffffdeffffffbb0000001900000015",
            INIT_2F => X"ffffffc10000002000000006ffffff9b00000005000000390000000400000007",
            INIT_30 => X"ffffffdb000000360000000bfffffffa0000002b00000039ffffffef00000000",
            INIT_31 => X"fffffff50000001cfffffff200000009000000200000000dfffffffc00000012",
            INIT_32 => X"fffffffa0000004a0000004a000000190000004500000052ffffffc2fffffffb",
            INIT_33 => X"00000016ffffffc6fffffff40000002dffffffdf000000260000001dffffffda",
            INIT_34 => X"00000017000000170000003900000005ffffffe9ffffffffffffffce00000014",
            INIT_35 => X"000000050000000a0000001700000027ffffffe2ffffffda0000002cfffffff2",
            INIT_36 => X"ffffffd20000002a00000000ffffffd400000037ffffffefffffffdb0000002c",
            INIT_37 => X"fffffff1ffffffd10000003f00000000ffffffd90000002fffffffcfffffffd0",
            INIT_38 => X"00000010fffffff6ffffffc90000002cfffffff5ffffffe5ffffffee00000018",
            INIT_39 => X"00000006ffffffcc0000000e0000002dffffffe1ffffffe80000002b00000002",
            INIT_3A => X"ffffffe2ffffffcc0000003000000002ffffffdc0000001c00000003ffffffac",
            INIT_3B => X"0000003f0000003100000001000000150000001a0000000700000019fffffff1",
            INIT_3C => X"0000000dffffffd40000000dfffffffd0000000a00000015fffffff4ffffffde",
            INIT_3D => X"fffffffb00000001ffffff9ffffffff200000033ffffffd0000000230000004b",
            INIT_3E => X"ffffffb60000000c0000003ffffffffafffffff3fffffff7ffffffe9fffffff8",
            INIT_3F => X"0000000500000014fffffff500000012ffffffe90000001cfffffffe0000000f",

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
    end generate MEM_IWGHT_LAYER2_ENTITY21;


    MEM_IWGHT_LAYER2_ENTITY22 : if BRAM_NAME = "iwght_layer2_entity22" generate
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
            INIT_00 => X"0000001600000015fffffff3fffffff8ffffffe3ffffffcdfffffff60000000b",
            INIT_01 => X"ffffffcbfffffffc0000001cffffffe8ffffffef0000001a0000002bfffffff5",
            INIT_02 => X"ffffffeb00000023ffffffe9ffffffdd000000500000000affffffccffffffdc",
            INIT_03 => X"ffffffff0000003bffffffc8000000000000002effffffc1fffffff600000015",
            INIT_04 => X"0000001400000002fffffff6ffffffe400000001ffffffe800000005fffffff1",
            INIT_05 => X"ffffffea000000230000000a000000270000002ffffffffcffffffed00000003",
            INIT_06 => X"ffffffe4ffffffcaffffffe9fffffff0fffffff70000000dffffffc6ffffffd2",
            INIT_07 => X"0000003300000016fffffff9ffffffcfffffffcd0000001600000020ffffffc9",
            INIT_08 => X"ffffffbb0000002dffffffcbffffffeefffffff3ffffffc7ffffffae00000015",
            INIT_09 => X"ffffffc7ffffffc00000005f00000025fffffff300000033fffffffbffffffe8",
            INIT_0A => X"00000010fffffff6ffffffefffffffe7fffffff3ffffffd60000003700000008",
            INIT_0B => X"fffffff20000000d00000000ffffffea0000000500000007ffffffecffffffe8",
            INIT_0C => X"0000001100000052ffffffc9fffffff000000011ffffffceffffffed0000001b",
            INIT_0D => X"0000000e0000001cffffffed0000001ffffffffbffffffd300000004ffffffff",
            INIT_0E => X"ffffffd40000000effffffc0ffffffd600000028fffffffcfffffff500000015",
            INIT_0F => X"fffffffdffffffc10000000f000000010000000afffffffcffffffef00000000",
            INIT_10 => X"ffffffeb0000000bfffffffeffffffedffffffeb0000002affffffe1ffffffdb",
            INIT_11 => X"fffffff3ffffffe9ffffffbeffffffd900000031ffffffe3000000090000000b",
            INIT_12 => X"ffffffe8ffffffceffffffe4ffffffe1ffffffcd00000002ffffffe900000026",
            INIT_13 => X"0000004c00000013000000080000001f0000000affffffed0000000300000005",
            INIT_14 => X"0000000700000004ffffffe0ffffffe0ffffffd2ffffffddffffffc600000031",
            INIT_15 => X"fffffff3fffffffb0000002b00000003fffffff700000021000000270000000d",
            INIT_16 => X"00000008000000290000000f00000043000000510000004b0000003d00000014",
            INIT_17 => X"fffffff900000010fffffff000000009000000120000000bffffffdd00000008",
            INIT_18 => X"fffffffbffffffc7ffffffccffffffe1ffffffe5000000080000000500000006",
            INIT_19 => X"0000000c00000021fffffff100000001000000030000000afffffff6fffffffc",
            INIT_1A => X"00000002fffffff40000000b00000008fffffff6fffffffe00000018ffffffed",
            INIT_1B => X"000000170000000ffffffff50000000600000015fffffff90000001100000003",
            INIT_1C => X"fffffffeffffffe8000000130000000c0000003e000000110000002200000002",
            INIT_1D => X"ffffffd200000036fffffffbffffffdcfffffff4fffffffbffffffc400000014",
            INIT_1E => X"ffffffd9ffffffc70000000000000001ffffffff000000080000000400000016",
            INIT_1F => X"0000004b000000700000004d0000000f0000004a0000003effffffee00000015",
            INIT_20 => X"00000033ffffffec0000000b0000000200000026fffffffc0000001900000027",
            INIT_21 => X"000000070000001e0000001bffffffd3ffffffdb0000002e00000007fffffffa",
            INIT_22 => X"0000002efffffff8ffffffd80000000c0000002dfffffffb0000000600000000",
            INIT_23 => X"00000004ffffffe600000000ffffffd6ffffffe0ffffffb1fffffff6fffffff2",
            INIT_24 => X"ffffffd8ffffffb300000039fffffff8ffffffe2000000170000000e0000000e",
            INIT_25 => X"ffffffdffffffff80000001dffffffd1ffffffe8ffffffc4fffffff1ffffffe0",
            INIT_26 => X"0000000fffffffe6fffffff700000016ffffffbfffffffdf000000010000001e",
            INIT_27 => X"ffffffe1ffffffe700000033fffffffeffffffe70000001100000031ffffffec",
            INIT_28 => X"ffffffff00000019fffffffbfffffffb000000140000001f0000001c0000001c",
            INIT_29 => X"0000000fffffffbdffffffc000000039ffffffc9ffffffee0000002900000008",
            INIT_2A => X"00000008fffffff6ffffffa8ffffffa3ffffffcbffffffbdffffffaaffffff9f",
            INIT_2B => X"00000003ffffffe2000000080000001100000031000000410000000f00000020",
            INIT_2C => X"0000000c000000150000001f0000000effffffdaffffff7dffffffb0ffffff9c",
            INIT_2D => X"ffffffbeffffffeefffffff4fffffffeffffffff00000041000000330000001b",
            INIT_2E => X"000000180000001f0000001000000007ffffffe800000005fffffff4ffffffe9",
            INIT_2F => X"fffffff9fffffff4fffffff900000000fffffffd000000180000001efffffff6",
            INIT_30 => X"000000030000000100000009ffffffd9ffffffe3ffffffe300000009ffffffeb",
            INIT_31 => X"ffffffddffffffde0000003dffffffe10000000000000020ffffffdffffffff9",
            INIT_32 => X"0000000dfffffff1fffffffa00000015ffffffe9fffffffe0000000cffffffeb",
            INIT_33 => X"0000001500000022ffffffcfffffffd7fffffff8fffffff9fffffff000000012",
            INIT_34 => X"00000011fffffffb000000080000001000000009ffffffff000000040000000b",
            INIT_35 => X"ffffffc500000008fffffff8fffffff00000002d0000000c0000000800000017",
            INIT_36 => X"0000001f000000210000000b0000000d0000001dffffffbfffffffe60000001e",
            INIT_37 => X"ffffffd10000000300000017ffffffe3000000130000000b000000330000002c",
            INIT_38 => X"000000150000001100000028fffffff400000018fffffff90000000f00000016",
            INIT_39 => X"0000000c0000000bffffffe500000024fffffff900000003000000280000000c",
            INIT_3A => X"ffffffc70000002b000000440000000200000034000000480000001700000055",
            INIT_3B => X"00000039ffffffdeffffffdafffffffc00000000ffffffef000000030000001e",
            INIT_3C => X"0000000300000024fffffffc0000002dfffffff3fffffffa00000022fffffffa",
            INIT_3D => X"fffffff20000001bfffffff10000001e00000024fffffff6000000140000000e",
            INIT_3E => X"0000000c000000190000000b0000001c000000030000001affffffdf0000001c",
            INIT_3F => X"fffffffbffffffe3fffffff10000000fffffffd90000000400000000ffffffee",

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
    end generate MEM_IWGHT_LAYER2_ENTITY22;


    MEM_IWGHT_LAYER2_ENTITY23 : if BRAM_NAME = "iwght_layer2_entity23" generate
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
            INIT_00 => X"0000002a00000018fffffff50000000700000003fffffff80000000bfffffff4",
            INIT_01 => X"0000002dffffffe40000002600000003fffffff00000001e000000070000000b",
            INIT_02 => X"00000004ffffffdb0000000c00000011000000030000001afffffff400000015",
            INIT_03 => X"0000000affffffb20000000bffffffeffffffff8ffffffd9ffffffec00000029",
            INIT_04 => X"00000001ffffffc6ffffffd600000016fffffff9ffffffef000000340000003a",
            INIT_05 => X"0000002900000009ffffffe00000001200000017ffffffd50000000600000015",
            INIT_06 => X"ffffffe70000000700000025ffffffff00000011000000140000000d0000001c",
            INIT_07 => X"00000015fffffff9fffffff800000001fffffff1ffffffe80000001a00000006",
            INIT_08 => X"0000000c0000000c0000000f0000000b0000002bffffffef0000000900000006",
            INIT_09 => X"fffffffafffffff70000000bffffffee00000002fffffffd0000000000000016",
            INIT_0A => X"ffffffe00000001700000004fffffff400000014fffffff8ffffffecfffffff2",
            INIT_0B => X"fffffff000000002ffffffe50000001000000011ffffffe60000000000000004",
            INIT_0C => X"0000000ffffffff6fffffff900000006ffffffe7ffffffe9ffffffe9ffffffef",
            INIT_0D => X"fffffff9ffffffdffffffffc00000032fffffffb00000012000000160000001f",
            INIT_0E => X"0000003cfffffff0ffffffccffffffe8ffffffe1ffffffe6ffffffd100000009",
            INIT_0F => X"ffffffe0ffffffbdfffffffaffffffee00000035000000120000001300000052",
            INIT_10 => X"00000053000000320000001e00000038ffffffd900000022fffffffffffffff5",
            INIT_11 => X"0000000200000039ffffffddfffffff7ffffffe8000000100000001efffffff5",
            INIT_12 => X"0000001500000000fffffff5ffffffdafffffff5fffffff4ffffffe9ffffffef",
            INIT_13 => X"0000002000000016000000210000002c00000005ffffffff00000045fffffff9",
            INIT_14 => X"000000150000002affffffe7ffffffefffffffee0000000fffffffde00000007",
            INIT_15 => X"ffffffc0ffffffe800000015ffffffa40000001900000028ffffffc500000036",
            INIT_16 => X"ffffffe100000022ffffffeeffffffeb00000013ffffffe2ffffffbdffffffff",
            INIT_17 => X"00000003ffffffeeffffffc5ffffffde00000033ffffffab0000000900000025",
            INIT_18 => X"ffffffeeffffffe1ffffffd1fffffff3ffffffddffffffd7ffffffbcffffffb1",
            INIT_19 => X"ffffffb2fffffff0ffffffaeffffff970000001c000000010000000b00000000",
            INIT_1A => X"fffffff4ffffffe20000001e000000180000000c00000001fffffff7fffffff2",
            INIT_1B => X"0000001d00000011ffffffdf00000027fffffff8fffffffeffffffed00000005",
            INIT_1C => X"fffffffeffffffe7ffffffdd00000002ffffffecffffffcdfffffff900000023",
            INIT_1D => X"fffffff7ffffffe300000020ffffffe7ffffffef0000000d00000009ffffffee",
            INIT_1E => X"ffffffe4ffffffe9ffffffd4fffffff20000000200000034000000100000000b",
            INIT_1F => X"00000013fffffff7ffffffedfffffffc00000014000000080000001700000028",
            INIT_20 => X"000000040000000800000025000000340000000b0000002b0000003c00000017",
            INIT_21 => X"0000002f00000003ffffffd300000025000000200000002500000012fffffffc",
            INIT_22 => X"0000000effffffea00000012000000270000001600000013ffffffdffffffff9",
            INIT_23 => X"ffffffedfffffffcffffffd1ffffffe3ffffffe700000002000000160000001b",
            INIT_24 => X"000000120000000b0000000f000000130000000a0000000b0000000100000007",
            INIT_25 => X"00000021000000260000001b000000060000001a0000002e0000000effffffb9",
            INIT_26 => X"fffffff700000018ffffffd7000000150000000bfffffff3000000030000002e",
            INIT_27 => X"ffffffd3ffffffc4fffffff2ffffffc3fffffff0ffffffefffffffaeffffffab",
            INIT_28 => X"ffffffc7ffffffc7000000090000002800000003000000300000002700000010",
            INIT_29 => X"0000001dfffffffd00000025ffffffeaffffffd80000002d00000007ffffffca",
            INIT_2A => X"0000000f00000000ffffffed00000010fffffff6fffffffd00000009fffffffe",
            INIT_2B => X"ffffffe1fffffffb00000008ffffffec00000003fffffffdfffffffa00000016",
            INIT_2C => X"000000600000004800000000000000150000002b0000000bffffffd7ffffffe0",
            INIT_2D => X"00000004ffffffb8ffffffbcffffffe5ffffffd6ffffffee0000000800000015",
            INIT_2E => X"fffffff8ffffffd40000000600000009ffffffea00000006fffffff000000009",
            INIT_2F => X"00000012000000030000001a00000002fffffffb0000002200000007fffffff1",
            INIT_30 => X"ffffffff00000009ffffffe800000008ffffffecfffffff80000000000000013",
            INIT_31 => X"00000019ffffffeb0000002a00000001ffffffe9ffffffbeffffffe400000036",
            INIT_32 => X"0000001effffffeb00000017000000370000004200000013000000470000004d",
            INIT_33 => X"000000110000004100000028000000280000000effffffe80000004500000018",
            INIT_34 => X"00000008fffffff90000001700000022000000380000004b0000001a0000004a",
            INIT_35 => X"000000370000003e000000170000002e0000002e0000001f000000260000002c",
            INIT_36 => X"000000210000003e00000035ffffffe7fffffffcffffffff0000002f00000016",
            INIT_37 => X"00000010ffffffc9fffffffcffffffe6fffffff5000000040000000bfffffff0",
            INIT_38 => X"0000000b0000000bffffffc8ffffffdaffffffc7fffffff0fffffff3fffffff0",
            INIT_39 => X"0000000a0000000900000000ffffffd9ffffffdf000000000000001200000003",
            INIT_3A => X"00000019000000230000002e00000018fffffff200000013fffffff7ffffffea",
            INIT_3B => X"fffffff90000000a0000000000000026ffffffd1fffffff1fffffff0ffffffea",
            INIT_3C => X"000000080000001b0000000e0000001dffffffe4ffffffd50000002100000006",
            INIT_3D => X"ffffffe900000027fffffff9fffffffb00000022fffffff6fffffffbfffffff0",
            INIT_3E => X"00000000ffffffecffffffdfffffffe1fffffff1ffffffd8fffffff8fffffff4",
            INIT_3F => X"ffffffbaffffffbbffffffc9fffffffc0000002a00000029fffffffc00000024",

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
    end generate MEM_IWGHT_LAYER2_ENTITY23;


    MEM_IWGHT_LAYER2_ENTITY24 : if BRAM_NAME = "iwght_layer2_entity24" generate
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
            INIT_00 => X"fffffff100000007000000230000000bffffffdbffffffc7ffffffe200000034",
            INIT_01 => X"00000011fffffff5000000220000000d00000006ffffffef00000000ffffffc3",
            INIT_02 => X"000000000000000800000029fffffff10000000afffffff4000000170000002b",
            INIT_03 => X"fffffffe00000019fffffff6ffffffebfffffff5fffffffe000000000000000a",
            INIT_04 => X"00000007ffffffdafffffff5ffffffdcfffffff700000012ffffffc40000000e",
            INIT_05 => X"fffffffdfffffffb00000004fffffffd00000007ffffffe000000011ffffffed",
            INIT_06 => X"00000000ffffffd2ffffffe0ffffffefffffffebffffffdbfffffff000000006",
            INIT_07 => X"ffffffee00000018ffffffe7ffffffefffffffdc00000024fffffff8fffffffb",
            INIT_08 => X"0000000e000000170000000dffffffe4ffffffddffffffcc0000003300000023",
            INIT_09 => X"0000000cfffffffdfffffffcfffffff1ffffffcbfffffff3ffffffe1fffffff9",
            INIT_0A => X"ffffffd4ffffffcc0000000efffffff9ffffffe9fffffff90000000b0000002c",
            INIT_0B => X"0000003d0000004000000012000000120000005300000049ffffffe5ffffffec",
            INIT_0C => X"0000002fffffffdc00000018ffffffebffffffd8ffffffd8ffffffd7ffffffe3",
            INIT_0D => X"0000000cfffffffd000000030000000cfffffff6fffffffffffffffdffffffe2",
            INIT_0E => X"ffffffdfffffffebfffffff10000002400000031ffffffddffffffda0000001a",
            INIT_0F => X"ffffffeafffffff3fffffff1fffffff8000000390000001afffffff800000039",
            INIT_10 => X"0000005700000015ffffffe400000029ffffffe7ffffffe0ffffffcaffffffc6",
            INIT_11 => X"ffffffdcfffffffeffffffd5ffffffe6ffffffdaffffffdbfffffff6ffffffd5",
            INIT_12 => X"fffffff10000000500000000ffffffee00000006ffffffff000000040000001b",
            INIT_13 => X"fffffffa00000012ffffffff0000000affffffee0000000900000000ffffffee",
            INIT_14 => X"0000000400000013000000240000002200000010000000090000000d00000013",
            INIT_15 => X"fffffff9fffffff8ffffffd4fffffffe00000014000000130000002200000036",
            INIT_16 => X"000000360000003d0000000000000021fffffff4000000290000004c00000027",
            INIT_17 => X"000000560000006500000051ffffffffffffffddfffffff700000012fffffff9",
            INIT_18 => X"ffffffd6ffffffc3fffffffd00000018fffffffc00000014fffffff900000052",
            INIT_19 => X"0000006c000000330000004400000040000000570000002f0000004800000042",
            INIT_1A => X"ffffffdd0000001100000000ffffff83ffffff98ffffffb90000000800000016",
            INIT_1B => X"0000001400000000ffffffcaffffffafffffffc2ffffffc5ffffffe0fffffffb",
            INIT_1C => X"ffffffe1ffffffe50000002cffffffd6fffffff30000000c0000001000000010",
            INIT_1D => X"0000000a000000170000000effffffebfffffff9000000130000000300000019",
            INIT_1E => X"00000020fffffff600000005fffffff800000001fffffff80000000cfffffffb",
            INIT_1F => X"fffffff8ffffffda0000001b00000009000000230000000d0000000d0000001e",
            INIT_20 => X"000000140000000400000001000000120000002000000027fffffffdfffffff4",
            INIT_21 => X"ffffffdfffffffc300000000ffffffe30000000e0000002900000017ffffffee",
            INIT_22 => X"0000001effffffdbffffffcb00000004ffffffe7ffffffff00000003ffffffe3",
            INIT_23 => X"fffffff0ffffffc6fffffff0fffffff100000016000000130000001f00000027",
            INIT_24 => X"00000023ffffffcaffffffcefffffffbffffff8cffffffbaffffffd4fffffff7",
            INIT_25 => X"0000000d0000001affffffe0000000130000000bffffffefffffffeafffffff2",
            INIT_26 => X"0000003600000047000000400000000b0000002800000009fffffffd00000000",
            INIT_27 => X"ffffffde000000320000001c00000006fffffffafffffffeffffffe7ffffffe6",
            INIT_28 => X"000000060000000d00000038000000420000004bfffffffb00000006fffffff5",
            INIT_29 => X"ffffffb8ffffffa1ffffffe5000000110000003000000023fffffff600000018",
            INIT_2A => X"00000013ffffffe9ffffffbfffffffc800000010000000140000001cfffffff2",
            INIT_2B => X"fffffffbfffffffcffffffd5ffffffa1ffffffde0000002a0000003900000018",
            INIT_2C => X"fffffff50000001200000018ffffffbdffffffd7ffffffe7ffffffff00000004",
            INIT_2D => X"00000014fffffffcfffffff6fffffffafffffff6fffffffeffffffe800000027",
            INIT_2E => X"0000003300000044fffffff00000000f00000000ffffff9dffffff96ffffffc1",
            INIT_2F => X"ffffffeeffffffebffffffccffffffdcffffffd6000000000000001200000006",
            INIT_30 => X"0000000f00000000fffffff0fffffffd0000001affffffeb0000001b00000003",
            INIT_31 => X"ffffffeefffffff20000000e0000000afffffff6ffffffe700000001fffffff2",
            INIT_32 => X"00000004fffffff4ffffffe100000001fffffff70000000cffffffddfffffff4",
            INIT_33 => X"00000012fffffff9ffffffe7ffffffeeffffffeaffffffdcffffffc7fffffff6",
            INIT_34 => X"00000001ffffffe0ffffffc6ffffffe6000000210000000100000005fffffffa",
            INIT_35 => X"ffffffccfffffffcffffffd30000000b0000001bfffffff20000000f00000016",
            INIT_36 => X"00000020ffffffeaffffffeeffffffe3ffffffc7ffffffcaffffffcd0000001c",
            INIT_37 => X"0000002500000021fffffff20000001100000005fffffff100000014ffffffec",
            INIT_38 => X"ffffffef0000000300000005fffffffe0000000e00000001000000120000000e",
            INIT_39 => X"0000001affffffe5ffffffecffffffeeffffffe5ffffffdbffffffeafffffff7",
            INIT_3A => X"ffffffe3ffffffd300000000000000450000003d000000140000005100000070",
            INIT_3B => X"fffffff7fffffff300000015fffffffe00000011fffffffeffffffe600000047",
            INIT_3C => X"00000029ffffffd900000029000000130000003e0000003bfffffffc00000020",
            INIT_3D => X"0000004400000045ffffffdb00000021ffffffff000000070000000100000002",
            INIT_3E => X"0000000c0000000300000013000000290000001e00000012ffffffe60000000e",
            INIT_3F => X"ffffffe7fffffff700000008ffffffddfffffff1000000050000000c00000001",

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
    end generate MEM_IWGHT_LAYER2_ENTITY24;


    MEM_IWGHT_LAYER2_ENTITY25 : if BRAM_NAME = "iwght_layer2_entity25" generate
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
            INIT_00 => X"00000000fffffff8ffffffebfffffff9fffffff60000000b0000000c00000019",
            INIT_01 => X"0000001000000031000000210000000afffffff600000001fffffffaffffffdb",
            INIT_02 => X"00000008fffffff0ffffffe2fffffff500000010fffffff60000000100000025",
            INIT_03 => X"ffffffeefffffffaffffffeb0000000a0000001a00000007000000000000000a",
            INIT_04 => X"ffffffc9ffffffb8ffffffcc0000000500000002000000190000001400000025",
            INIT_05 => X"00000007fffffff70000001dffffffcefffffff4fffffff2fffffff400000017",
            INIT_06 => X"fffffffaffffffdf000000200000002a000000070000000bffffffe2ffffffeb",
            INIT_07 => X"00000006000000050000001100000028fffffffefffffffb000000000000000f",
            INIT_08 => X"000000200000002e0000001a000000260000000e00000031fffffffd00000018",
            INIT_09 => X"ffffffceffffffd500000019ffffffd7ffffffd70000004f0000003600000034",
            INIT_0A => X"fffffff2fffffffaffffffd7ffffffe3ffffffe6ffffffd90000004c00000024",
            INIT_0B => X"0000002bffffffdcffffffdcffffffd2ffffffe6ffffffe5fffffff700000005",
            INIT_0C => X"00000024000000030000000c000000160000000b000000280000001a00000016",
            INIT_0D => X"000000090000003300000016ffffffe8fffffff1ffffffeb00000010fffffffe",
            INIT_0E => X"ffffffde00000003000000000000001a00000009ffffffdf00000004ffffffe4",
            INIT_0F => X"ffffffebffffffd10000001e0000001ffffffff1fffffff8ffffffe4fffffff7",
            INIT_10 => X"00000008fffffffdffffffe90000000000000017fffffffdffffffd9ffffffcc",
            INIT_11 => X"ffffffe600000008000000000000001900000028000000310000002b0000000c",
            INIT_12 => X"00000023ffffffec0000000500000005ffffffeb00000001ffffffec00000003",
            INIT_13 => X"0000000b0000004300000058000000120000002f00000047ffffffe2ffffffd8",
            INIT_14 => X"000000110000000affffffe4fffffff7ffffffff000000040000000d00000015",
            INIT_15 => X"0000000900000010fffffffcffffffe6fffffffeffffffffffffffe5ffffffff",
            INIT_16 => X"0000002a0000000d0000001dffffffe4ffffffd9ffffffcffffffff500000004",
            INIT_17 => X"00000007000000290000001b00000022000000290000002efffffffbfffffff5",
            INIT_18 => X"000000510000003effffffda0000001e00000017fffffff1fffffffb00000012",
            INIT_19 => X"fffffff1000000040000000a0000001a000000090000002a0000000d00000000",
            INIT_1A => X"ffffffecffffffe6ffffffeeffffffe4000000230000002600000016ffffffe7",
            INIT_1B => X"ffffffddffffffeb00000003ffffffe5000000000000001e0000002400000005",
            INIT_1C => X"fffffffbffffffff00000008ffffffecfffffff6fffffffb00000008fffffff0",
            INIT_1D => X"0000000ffffffffafffffffb0000000600000000fffffff0ffffffe000000000",
            INIT_1E => X"0000000400000004ffffffe800000006fffffff7ffffffef00000000ffffffec",
            INIT_1F => X"fffffff7ffffffff00000010ffffffebfffffff2fffffffc000000120000000d",
            INIT_20 => X"0000001afffffff6ffffffe8ffffffe80000000c00000002000000060000001e",
            INIT_21 => X"fffffffdfffffffb0000000cffffffeffffffff90000001a000000000000000b",
            INIT_22 => X"fffffff500000007fffffff8fffffffefffffff1ffffffedfffffff5ffffffe9",
            INIT_23 => X"00000007ffffffdaffffffe5ffffffecffffffe4ffffffebffffffe9ffffffe4",
            INIT_24 => X"ffffffe50000000d00000007000000000000000c000000080000000b00000000",
            INIT_25 => X"ffffffedfffffff2ffffffeafffffff6ffffffe8fffffffffffffffbffffffdf",
            INIT_26 => X"0000001400000006ffffffe3ffffffe5ffffffebffffffeb0000000bffffffed",
            INIT_27 => X"ffffffedfffffff0ffffffee00000008ffffffe7ffffffeafffffffb00000004",
            INIT_28 => X"fffffff8ffffffec00000000ffffffe8fffffff3ffffffedfffffffaffffffe8",
            INIT_29 => X"fffffff3fffffff2fffffff3ffffffebffffffedfffffff500000004ffffffe6",
            INIT_2A => X"0000000affffffeeffffffedffffffe2ffffffeeffffffefffffffe1ffffffdf",
            INIT_2B => X"000000000000000600000009fffffff0ffffffec0000000500000001ffffffe5",
            INIT_2C => X"00000008ffffffebffffffdc0000000afffffff0fffffff8fffffffbffffffeb",
            INIT_2D => X"000000010000000affffffe300000004ffffffe80000000000000001fffffff0",
            INIT_2E => X"ffffffe6fffffffbffffffeefffffffafffffff4fffffff6000000050000000d",
            INIT_2F => X"fffffffdffffffddffffffd9fffffff4fffffffe00000001000000000000000c",
            INIT_30 => X"ffffffe5fffffff8fffffff5fffffffc00000003fffffff1fffffff0fffffff1",
            INIT_31 => X"0000000b0000000c00000000ffffffe5ffffffe1fffffffffffffffe00000000",
            INIT_32 => X"ffffffecffffffee00000003fffffff00000000fffffffe700000008fffffff5",
            INIT_33 => X"00000006ffffffec00000000ffffffe40000000d0000000afffffffa00000007",
            INIT_34 => X"ffffffe3ffffffe1ffffffe9ffffffeaffffffe8ffffffeefffffffaffffffe2",
            INIT_35 => X"00000001ffffffdf0000000500000005fffffff0fffffffcfffffff5ffffffe4",
            INIT_36 => X"0000000300000003ffffffecffffffe50000000affffffffffffffe7ffffffea",
            INIT_37 => X"fffffff6ffffffe6ffffffffffffffe9ffffffe9fffffff4ffffffe60000000d",
            INIT_38 => X"fffffff8ffffffe7ffffffedfffffff50000000800000000ffffffe9ffffffef",
            INIT_39 => X"fffffffb00000007ffffffecffffffe9ffffffe700000004ffffffeefffffffc",
            INIT_3A => X"00000001ffffffedfffffffcffffffffffffffe90000000a00000007fffffffc",
            INIT_3B => X"ffffffe20000000200000002fffffff7fffffff3fffffff50000000e00000002",
            INIT_3C => X"ffffffe7000000020000000100000008ffffffe2fffffffb00000000fffffff8",
            INIT_3D => X"00000005ffffffeffffffff700000000fffffffafffffff2ffffffea0000000a",
            INIT_3E => X"0000000200000000ffffffedffffffec0000000900000009fffffffb0000000a",
            INIT_3F => X"fffffff2fffffffc00000008fffffff9fffffff1ffffffff0000001600000008",

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
    end generate MEM_IWGHT_LAYER2_ENTITY25;


    MEM_IWGHT_LAYER2_ENTITY26 : if BRAM_NAME = "iwght_layer2_entity26" generate
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
            INIT_00 => X"fffffff6ffffffec0000000000000008ffffffe8000000070000000a0000000b",
            INIT_01 => X"ffffffebffffffeffffffff2ffffffd300000014fffffff8ffffffed00000015",
            INIT_02 => X"00000001ffffffdb000000180000000a0000000a0000003c0000003100000010",
            INIT_03 => X"0000002f000000370000002bffffffdb0000000bffffffd8ffffffc1ffffffe5",
            INIT_04 => X"ffffffb8ffffffd8ffffffb6ffffffc7fffffffcfffffff90000001c0000001a",
            INIT_05 => X"0000003b0000004d000000230000005500000030fffffffa0000002200000017",
            INIT_06 => X"ffffffea0000000afffffffbfffffff0ffffffdefffffffd000000210000001b",
            INIT_07 => X"00000017ffffffd8ffffffd2fffffff1ffffffe2ffffffcbffffffe6fffffffc",
            INIT_08 => X"ffffffe7ffffffed00000016fffffffffffffff80000000b0000000b00000005",
            INIT_09 => X"0000002a0000000d00000023fffffff30000001afffffff2ffffffb9ffffff95",
            INIT_0A => X"ffffffb0000000020000000000000014ffffffc90000001700000000fffffff4",
            INIT_0B => X"fffffffe00000003fffffff4ffffffe200000008fffffff6ffffffdaffffffdf",
            INIT_0C => X"ffffffd1ffffffcbffffffcefffffff70000001000000000fffffffb0000000c",
            INIT_0D => X"fffffff9ffffffc4ffffffea0000001d000000130000000ffffffff1ffffffe9",
            INIT_0E => X"000000100000000effffffe30000000200000014ffffffcc00000006fffffffc",
            INIT_0F => X"fffffffb0000000f0000000f0000001500000016000000220000001b00000011",
            INIT_10 => X"00000019ffffffd90000000100000000ffffffa8ffffffabffffffd0fffffff2",
            INIT_11 => X"0000000bffffffd000000010000000300000000c000000210000004400000035",
            INIT_12 => X"ffffffe9000000010000000dfffffff9000000070000001a0000000200000021",
            INIT_13 => X"0000001400000006000000190000001fffffffefffffffeffffffff4ffffffb7",
            INIT_14 => X"ffffffdfffffffe9ffffffd6ffffffedffffffbdffffffc1ffffffb6ffffffc1",
            INIT_15 => X"ffffffd500000002ffffffe20000000e0000000e0000000500000004fffffff0",
            INIT_16 => X"0000000800000005000000190000000effffffe3ffffffeeffffffd600000027",
            INIT_17 => X"fffffff5ffffffdc0000003b00000019fffffff8fffffffcfffffff0ffffffe6",
            INIT_18 => X"0000001500000015ffffffeb0000002300000019000000060000001000000022",
            INIT_19 => X"00000015ffffffee000000050000000affffffd4ffffffccffffffdd0000001d",
            INIT_1A => X"0000001600000027ffffffdafffffffc00000007ffffff9dffffffbdffffffe5",
            INIT_1B => X"ffffffec00000032ffffffeeffffffd0ffffffccffffffd9fffffffbffffff9a",
            INIT_1C => X"ffffffce000000150000000500000018000000200000001efffffffd00000027",
            INIT_1D => X"0000001f00000007ffffffe70000000100000023fffffff2fffffffd00000015",
            INIT_1E => X"fffffff800000015000000170000000a0000000900000003ffffffe3ffffffee",
            INIT_1F => X"0000000c0000000effffffe0fffffffbffffffe6ffffffff00000009ffffffc1",
            INIT_20 => X"ffffffb8ffffffccffffffc5ffffffc9ffffffecffffffdefffffff200000017",
            INIT_21 => X"ffffffebfffffff700000001ffffffbeffffffd5fffffffb000000070000000b",
            INIT_22 => X"000000050000001900000021ffffffed000000390000003500000012fffffff3",
            INIT_23 => X"0000000b0000001a00000004000000170000002fffffffd8fffffffcfffffff7",
            INIT_24 => X"fffffffe0000000c0000000f0000000d000000010000001200000024ffffffff",
            INIT_25 => X"fffffffbfffffff7ffffffe9fffffff5ffffffc9ffffff98ffffffd0ffffffb9",
            INIT_26 => X"ffffff8affffffdefffffff0000000090000000c00000033000000350000004e",
            INIT_27 => X"0000004300000055000000260000002600000059000000260000003400000043",
            INIT_28 => X"000000310000002c0000001800000008fffffffdffffffecffffffe20000002a",
            INIT_29 => X"00000026ffffffe60000003100000018fffffffa0000000a00000008ffffffe6",
            INIT_2A => X"0000001b0000001b0000000f0000002c0000002800000022ffffffefffffffe4",
            INIT_2B => X"ffffffcdfffffffefffffff7ffffffed0000002500000000ffffffffffffffdf",
            INIT_2C => X"00000000ffffffe0ffffffeefffffffdffffffedffffffc7ffffffd9fffffff0",
            INIT_2D => X"000000390000000affffffff0000001afffffff4fffffffcfffffffbfffffff6",
            INIT_2E => X"00000000ffffffe8ffffffdeffffffee00000023fffffff6ffffffeb0000001e",
            INIT_2F => X"fffffffcfffffffd0000001600000006000000100000001bffffffedffffffe1",
            INIT_30 => X"ffffffecfffffff1fffffff1fffffff0fffffffc00000020fffffff900000023",
            INIT_31 => X"0000001b0000002c0000000600000022ffffffedfffffff70000000000000018",
            INIT_32 => X"0000000b00000013000000150000002800000003fffffffcffffffccffffffe7",
            INIT_33 => X"0000001affffffcfffffffe1ffffffebffffffcfffffffe10000000efffffffd",
            INIT_34 => X"0000000a0000000400000022000000000000001700000034fffffff9ffffffff",
            INIT_35 => X"fffffffeffffffe50000001200000018000000120000000b000000060000000a",
            INIT_36 => X"00000006ffffffe3ffffffed0000002affffffabffffffdbffffffe2ffffffd3",
            INIT_37 => X"ffffffd200000018fffffff5ffffffe30000005100000009ffffffd70000001a",
            INIT_38 => X"fffffff3ffffffd2ffffffd1ffffffccffffffbbffffffe5ffffffdcfffffffa",
            INIT_39 => X"ffffffeafffffff0fffffff5ffffffdcfffffff100000014ffffffddffffffea",
            INIT_3A => X"00000017fffffff0fffffff500000016ffffffe00000000d0000000cffffffe7",
            INIT_3B => X"0000000900000022ffffffdbffffffe800000007ffffffc9ffffffe100000006",
            INIT_3C => X"ffffffe90000000a0000001dffffffe90000000000000022ffffffee00000000",
            INIT_3D => X"000000050000003400000002ffffffe00000003500000005fffffff100000011",
            INIT_3E => X"fffffff1fffffff9fffffff800000016fffffff5000000160000000300000004",
            INIT_3F => X"0000003600000045000000200000003f0000006f0000001d0000005a00000045",

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
    end generate MEM_IWGHT_LAYER2_ENTITY26;


    MEM_IWGHT_LAYER2_ENTITY27 : if BRAM_NAME = "iwght_layer2_entity27" generate
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
            INIT_00 => X"0000003500000001ffffffe2fffffff2ffffffe1ffffffe5fffffffbffffffd2",
            INIT_01 => X"ffffffaeffffffd300000008fffffffcfffffff400000031fffffffaffffffd5",
            INIT_02 => X"00000034fffffff9ffffffe0ffffffdaffffffe700000014ffffffdbffffffe0",
            INIT_03 => X"fffffffeffffffe1fffffff20000001b0000003500000049000000170000007b",
            INIT_04 => X"0000005b00000038000000690000002700000036ffffffd6ffffffdc00000011",
            INIT_05 => X"fffffffe00000005ffffffe8ffffffe5ffffffe60000000fffffffe6ffffffef",
            INIT_06 => X"00000012ffffffe70000001c00000022ffffffecfffffff100000016fffffff7",
            INIT_07 => X"00000000fffffff10000001effffffe5fffffff100000035fffffffbffffffc8",
            INIT_08 => X"00000014fffffff70000000400000016fffffff900000000ffffffe100000000",
            INIT_09 => X"000000080000003f0000001effffffbdffffffd7fffffff900000026fffffff0",
            INIT_0A => X"ffffffd8fffffff90000001a00000001ffffffd80000000a0000000a00000021",
            INIT_0B => X"ffffffefffffffec00000009ffffffd4ffffffdf00000001ffffffd1fffffff0",
            INIT_0C => X"00000010ffffffcafffffff6fffffff00000001a0000000c000000280000000f",
            INIT_0D => X"fffffffc00000028fffffffe00000006ffffffd8ffffffe9000000190000000b",
            INIT_0E => X"fffffff70000000e00000014000000180000002300000015ffffffb0ffffffd6",
            INIT_0F => X"00000003ffffffd7ffffffe6ffffffd4fffffff0fffffff8ffffffd5ffffffcc",
            INIT_10 => X"ffffffcbffffffc2ffffffd800000002ffffffe2ffffffeaffffffd100000006",
            INIT_11 => X"000000310000003300000035ffffffdffffffff700000033ffffffd9fffffff8",
            INIT_12 => X"00000023ffffffe5fffffff9ffffffd3ffffffd0fffffff2ffffffc1fffffffc",
            INIT_13 => X"fffffff4fffffff90000000f000000160000000dffffffc5ffffffdd00000044",
            INIT_14 => X"ffffffd9ffffffe300000020ffffffdbffffffebfffffff1fffffff0ffffffc2",
            INIT_15 => X"0000000100000010ffffffddfffffff0ffffffd7ffffffceffffffeaffffffdd",
            INIT_16 => X"ffffff9ffffffffe00000003ffffffcbffffffc5ffffffe2ffffffccfffffff9",
            INIT_17 => X"00000001ffffffdffffffffaffffffe8fffffffa00000002ffffffbe00000022",
            INIT_18 => X"00000048ffffffd9ffffffdf00000003fffffff8ffffffddffffffe4ffffffd2",
            INIT_19 => X"fffffff4ffffffd7fffffffaffffffdaffffff9c0000001700000016ffffffcd",
            INIT_1A => X"0000000700000036fffffff8ffffffc40000000500000030ffffffd00000000b",
            INIT_1B => X"0000002bfffffff30000000e0000000bffffffb4fffffff200000028fffffffc",
            INIT_1C => X"fffffff1fffffff7000000060000003800000039000000690000004e0000003c",
            INIT_1D => X"000000550000006600000023ffffffe0fffffffa00000000ffffffdaffffffc4",
            INIT_1E => X"ffffffb1ffffffdbffffffcaffffffaaffffffdfffffffd6fffffff9fffffffc",
            INIT_1F => X"fffffff2ffffffb4fffffffafffffffdffffffd0000000040000000dfffffffc",
            INIT_20 => X"fffffff7ffffffeaffffffe4fffffffb00000018ffffffdbfffffff1ffffffef",
            INIT_21 => X"fffffff2ffffffe5ffffffdcffffffeb0000001300000047ffffffe400000001",
            INIT_22 => X"0000002e0000003dffffffd0ffffffee00000023ffffffd5ffffffdb0000001c",
            INIT_23 => X"fffffff00000000bfffffff2ffffffde0000000b0000002700000007ffffffd6",
            INIT_24 => X"0000000300000021ffffffe90000000cffffffe9fffffff90000000affffffdf",
            INIT_25 => X"ffffffe100000015ffffffe9fffffff2fffffffbfffffff7fffffff5ffffffe6",
            INIT_26 => X"ffffffed0000000700000032ffffffd1ffffffe7fffffffcffffffd6ffffffe3",
            INIT_27 => X"fffffffbffffffdc0000000effffffd7ffffffd60000001400000028fffffff8",
            INIT_28 => X"0000000e0000003a000000030000001100000029ffffffd8ffffffcbffffffec",
            INIT_29 => X"ffffffeafffffff400000007ffffffef0000001700000043ffffffdcffffffcc",
            INIT_2A => X"0000000500000004ffffffe1ffffffe20000000cffffffefffffffd200000014",
            INIT_2B => X"00000024000000120000000afffffff900000011000000210000001a00000023",
            INIT_2C => X"00000012fffffffcfffffffc0000000c00000014fffffff0fffffff0fffffff2",
            INIT_2D => X"000000190000003600000037fffffff1000000030000001300000009fffffff2",
            INIT_2E => X"fffffffc0000000fffffffce000000150000000afffffffc00000041fffffffb",
            INIT_2F => X"ffffffe6fffffffb00000009ffffffd6fffffff8ffffffd2000000100000002c",
            INIT_30 => X"000000110000000c000000230000003affffffd5fffffffe000000310000001e",
            INIT_31 => X"ffffffdcfffffffc00000034ffffffc9fffffff600000006000000190000000c",
            INIT_32 => X"0000000000000008fffffff9fffffff300000001ffffffdafffffffa00000010",
            INIT_33 => X"ffffffc4000000000000000e00000006fffffffaffffffffffffffe0ffffffeb",
            INIT_34 => X"ffffffe000000000fffffff5000000070000001ffffffff40000000d00000013",
            INIT_35 => X"0000000a0000002a00000007fffffff100000015fffffff7fffffff900000006",
            INIT_36 => X"000000360000000afffffff0ffffffecffffffffffffffc4ffffffb7fffffff0",
            INIT_37 => X"ffffffe5ffffffedfffffff10000001cffffffeb0000001d0000000700000017",
            INIT_38 => X"0000001cfffffff600000024fffffffcffffffd2fffffff1fffffffdffffffdd",
            INIT_39 => X"ffffffe7ffffffc4ffffffdbffffffa800000000ffffffea00000010fffffff8",
            INIT_3A => X"ffffffe5ffffffebffffffd0ffffffd9ffffffd3fffffff300000007ffffffdd",
            INIT_3B => X"0000000bfffffff400000000000000010000000600000019fffffffbffffffd4",
            INIT_3C => X"ffffffef00000007fffffff0ffffffddffffffccffffffcdffffffb700000007",
            INIT_3D => X"ffffffdaffffffd9ffffffe1ffffffe3ffffffc4ffffffe4ffffffebfffffff1",
            INIT_3E => X"ffffffcdffffffa4ffffffbdffffff93ffffffc8ffffffe0ffffffdf00000006",
            INIT_3F => X"ffffffdb0000001f00000011ffffffe70000002d00000004fffffffa00000010",

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
    end generate MEM_IWGHT_LAYER2_ENTITY27;


    MEM_IWGHT_LAYER2_ENTITY28 : if BRAM_NAME = "iwght_layer2_entity28" generate
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
            INIT_00 => X"0000000a0000000a000000100000004a000000480000000d000000660000005b",
            INIT_01 => X"000000530000009000000038ffffffeefffffff300000007ffffffd9ffffffe0",
            INIT_02 => X"fffffffcffffffdeffffffcafffffff3ffffffdbfffffff1fffffffdffffffe7",
            INIT_03 => X"fffffff000000010fffffff4fffffffbffffffeffffffff9fffffffbffffffed",
            INIT_04 => X"ffffffd000000009fffffffeffffffecffffffedffffffdd0000001d00000000",
            INIT_05 => X"ffffffe200000023fffffff9fffffffefffffff6fffffffeffffffed00000008",
            INIT_06 => X"ffffffcaffffffcd0000000fffffffd2ffffffcfffffffdaffffffc8ffffffff",
            INIT_07 => X"000000090000003e00000012000000180000003bfffffffbfffffffeffffffe9",
            INIT_08 => X"0000000dfffffffc0000000000000007ffffffeb000000060000000bffffffed",
            INIT_09 => X"0000000f000000450000003b00000000ffffffe20000000b00000001ffffffc6",
            INIT_0A => X"ffffffe7ffffffdaffffffd9fffffff70000003affffffffffffffe6ffffffff",
            INIT_0B => X"ffffffcaffffffddffffffceffffffdffffffff400000012fffffff100000025",
            INIT_0C => X"0000004e000000180000002a000000340000003e00000002fffffff500000013",
            INIT_0D => X"fffffff700000006ffffffbfffffffe3fffffff3ffffffe3ffffffc6fffffffa",
            INIT_0E => X"00000008ffffffdafffffff600000010fffffff0000000120000000700000037",
            INIT_0F => X"0000000effffffec0000001e0000000dffffffdafffffffc0000000afffffff2",
            INIT_10 => X"fffffff8fffffffd0000002400000012000000040000001bffffffe0fffffffe",
            INIT_11 => X"fffffff5000000110000000a00000000fffffffdfffffff0000000220000000c",
            INIT_12 => X"0000001700000016ffffffc4ffffffbcffffffdaffffffd6ffffffcfffffffcc",
            INIT_13 => X"fffffff8ffffffddffffffeeffffffc5000000120000001cffffffa100000025",
            INIT_14 => X"00000000fffffff00000001600000010ffffff76ffffffa0ffffffe1ffffffa5",
            INIT_15 => X"ffffff7b0000000b00000003ffffffc1000000010000000f0000000d0000001f",
            INIT_16 => X"00000000000000280000001600000001000000220000002c0000000400000021",
            INIT_17 => X"00000011ffffffe2ffffffe800000025ffffffaaffffffbefffffff700000039",
            INIT_18 => X"00000006fffffff20000002800000029fffffff2000000200000001a0000001e",
            INIT_19 => X"00000037ffffffe5fffffff9ffffffe8ffffffdeffffffeeffffffdbffffffcf",
            INIT_1A => X"ffffffd6000000270000001c00000028ffffffed0000002100000010ffffffe8",
            INIT_1B => X"fffffff9fffffffb000000120000001afffffff900000000fffffff80000000f",
            INIT_1C => X"0000001affffffe5ffffffd80000000d0000002c0000002dffffffd600000017",
            INIT_1D => X"00000015ffffffe7000000130000000d000000100000000f00000019ffffffea",
            INIT_1E => X"0000002000000011000000000000000b000000200000001b0000001000000002",
            INIT_1F => X"ffffffff00000023fffffffcffffffdf0000000600000025fffffff80000002a",
            INIT_20 => X"0000002effffffe8fffffffe00000020ffffffe3ffffffec0000000bffffffe0",
            INIT_21 => X"fffffff20000000fffffffe00000000600000003000000120000000c00000023",
            INIT_22 => X"ffffffb6ffffffdefffffff6ffffffc9ffffffc3ffffffdaffffffc400000039",
            INIT_23 => X"00000003fffffffc0000002800000038fffffffdfffffff300000023ffffffc1",
            INIT_24 => X"ffffffff000000050000001cfffffff0ffffffe7fffffff7ffffffd600000019",
            INIT_25 => X"fffffff700000011ffffffeeffffffe0ffffffc3ffffffec00000016ffffffe1",
            INIT_26 => X"ffffffe700000033fffffffb00000005fffffff9ffffffc7ffffffda00000035",
            INIT_27 => X"fffffffaffffffb7000000590000001cffffffecffffffeeffffffe3ffffffe1",
            INIT_28 => X"00000022ffffffdfffffffe80000003b00000001ffffffe3fffffffb00000002",
            INIT_29 => X"00000027fffffffd0000000dfffffffaffffffd3fffffff400000019ffffffdf",
            INIT_2A => X"fffffff30000001bffffffe0ffffffeb00000016ffffffe8ffffffe9fffffff2",
            INIT_2B => X"ffffffc0ffffffdfffffffd5000000160000002affffffcf000000230000002a",
            INIT_2C => X"00000000ffffffe400000003ffffffe30000000600000012000000040000003a",
            INIT_2D => X"0000001700000016ffffffeb0000000c00000016ffffffc50000000c00000013",
            INIT_2E => X"ffffffb8fffffff400000008fffffff4fffffff40000000afffffff2fffffff1",
            INIT_2F => X"0000000efffffff8ffffffc700000025fffffffeffffffe2fffffffeffffffa8",
            INIT_30 => X"fffffff3ffffffecffffffc1fffffffe0000001bffffffe50000002000000027",
            INIT_31 => X"0000000c0000002500000009fffffffa0000000d0000000000000002fffffff7",
            INIT_32 => X"ffffffed0000002dfffffff0ffffffdc0000004d00000016ffffffeffffffff0",
            INIT_33 => X"0000001300000026ffffffad0000000e0000000dffffffd4fffffffd0000001c",
            INIT_34 => X"00000000fffffff8000000040000001200000006fffffffbfffffffe00000012",
            INIT_35 => X"fffffff7fffffff200000007fffffff9fffffff9fffffff9ffffffea00000005",
            INIT_36 => X"ffffffee00000003fffffff1fffffff8fffffff6fffffffe00000001fffffff0",
            INIT_37 => X"000000060000000bfffffff6fffffff400000000ffffffff0000000600000000",
            INIT_38 => X"00000000ffffffe800000005fffffff300000006ffffffff0000000dfffffffe",
            INIT_39 => X"fffffff20000000efffffff6ffffffe9fffffffd00000006fffffff2fffffff6",
            INIT_3A => X"00000007ffffffeaffffffeaffffffefffffffff00000006fffffffc0000000a",
            INIT_3B => X"fffffff10000000c0000000cfffffffafffffff5ffffffe9fffffffbfffffffa",
            INIT_3C => X"00000004ffffffe7fffffff200000006fffffff4000000060000000000000000",
            INIT_3D => X"fffffffefffffff90000000bffffffef00000002fffffff700000009ffffffe7",
            INIT_3E => X"fffffff2fffffffb0000000200000012ffffffecfffffff40000000a00000008",
            INIT_3F => X"fffffff900000000ffffffedfffffff200000001fffffff10000000000000000",

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
    end generate MEM_IWGHT_LAYER2_ENTITY28;


    MEM_IWGHT_LAYER2_ENTITY29 : if BRAM_NAME = "iwght_layer2_entity29" generate
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
            INIT_00 => X"0000000effffffe70000000dffffffec00000000ffffffec0000000a0000000a",
            INIT_01 => X"ffffffecfffffffb00000010ffffffed0000000ffffffff5fffffff30000000f",
            INIT_02 => X"0000000afffffff40000000dfffffff000000011fffffffbfffffffffffffff2",
            INIT_03 => X"fffffffcffffffee0000000000000001ffffffe600000000fffffff800000001",
            INIT_04 => X"fffffff0fffffff1ffffffeafffffff7fffffffd00000007fffffff800000006",
            INIT_05 => X"fffffffdfffffff9fffffffbffffffebffffffedffffffefffffffefffffffee",
            INIT_06 => X"fffffffd00000002fffffff8fffffffcfffffff4ffffffeefffffff1ffffffef",
            INIT_07 => X"000000090000000bffffffea0000000ffffffff20000000efffffffbffffffec",
            INIT_08 => X"ffffffebfffffff300000012000000070000000f0000000dfffffff400000009",
            INIT_09 => X"0000000d00000001fffffff9ffffffe8ffffffebffffffe90000000600000000",
            INIT_0A => X"ffffffe7ffffffe5000000080000000cffffffed0000000efffffff3fffffff0",
            INIT_0B => X"fffffff3ffffffecffffffe70000000affffffe90000000600000005fffffff8",
            INIT_0C => X"000000030000000bfffffff9000000040000000100000006fffffff9ffffffec",
            INIT_0D => X"ffffffedfffffff6fffffff7ffffffee0000000dfffffff00000000100000005",
            INIT_0E => X"ffffffecfffffff4ffffffef00000000fffffff3ffffffe9fffffffc00000006",
            INIT_0F => X"ffffffec00000005fffffffc0000000affffffefffffffecfffffffdffffffea",
            INIT_10 => X"fffffffefffffffdffffffe9fffffffdfffffff30000000afffffff800000009",
            INIT_11 => X"ffffffe20000000000000001ffffffe700000007fffffffe00000001ffffffea",
            INIT_12 => X"fffffff4fffffff5fffffffbffffffee00000008fffffff0000000030000000d",
            INIT_13 => X"0000000ffffffffeffffffef0000000700000005fffffff00000000c0000000e",
            INIT_14 => X"00000015ffffffedfffffff3fffffffbffffffe4fffffff00000000c0000000b",
            INIT_15 => X"fffffff100000005000000120000000dffffffe9fffffff4fffffffbffffffed",
            INIT_16 => X"fffffff00000000bffffffe8ffffffeb0000000f0000000d0000000afffffff0",
            INIT_17 => X"00000007000000020000000c00000007fffffffcfffffff3000000040000000d",
            INIT_18 => X"fffffff000000000ffffffea0000001000000011000000040000000c00000015",
            INIT_19 => X"fffffff7fffffffdffffffe4fffffff5fffffffcffffffe60000000affffffff",
            INIT_1A => X"fffffffe000000190000001d000000320000000b0000000500000026fffffffb",
            INIT_1B => X"0000001a0000002400000002ffffffdfffffffd5fffffffa00000000fffffff9",
            INIT_1C => X"000000110000001400000008fffffffafffffff300000015fffffff9fffffffc",
            INIT_1D => X"0000002d00000013000000030000000f0000000affffffe6fffffffe0000000f",
            INIT_1E => X"ffffffce00000001fffffffdfffffff1ffffffc7fffffff4fffffff7ffffffe1",
            INIT_1F => X"ffffffed0000000400000002fffffffc00000000ffffffd3ffffffcdfffffffd",
            INIT_20 => X"fffffff5ffffffe60000002b00000013000000050000002500000018ffffffe7",
            INIT_21 => X"00000000000000060000000bffffffec0000000f000000250000000500000007",
            INIT_22 => X"fffffffbffffffe6ffffffbffffffffd00000009ffffffc2ffffffa2fffffffa",
            INIT_23 => X"fffffff3fffffff700000007000000180000001c0000000dfffffff800000014",
            INIT_24 => X"fffffff6000000140000002d0000001f0000000afffffff2fffffff2ffffffff",
            INIT_25 => X"00000003ffffffdefffffff40000000000000001000000160000001a00000004",
            INIT_26 => X"000000010000000b0000000f0000000c0000000f0000000dffffffc3ffffffc6",
            INIT_27 => X"0000000fffffffc0ffffffc2fffffff4fffffff300000004ffffffe900000008",
            INIT_28 => X"00000005ffffffd8fffffffb00000006ffffffc5ffffffe90000000e0000000f",
            INIT_29 => X"00000006000000000000000b00000005fffffffa00000033fffffff4ffffffca",
            INIT_2A => X"00000013ffffffe0fffffffc00000000ffffffc5ffffffafffffffe7ffffffb4",
            INIT_2B => X"fffffff0fffffff1fffffffafffffff000000020ffffffe3ffffffc6fffffffe",
            INIT_2C => X"ffffffcaffffffcf000000250000003b00000000fffffff3ffffffe4ffffffd2",
            INIT_2D => X"fffffff7ffffffc8ffffffc8fffffff00000000b0000001dffffffdc00000009",
            INIT_2E => X"fffffffeffffffef0000000000000008ffffffd60000000000000011fffffffa",
            INIT_2F => X"fffffffaffffffe5ffffffd7ffffffe9fffffff4fffffff0000000100000000c",
            INIT_30 => X"ffffffe4fffffffc00000006fffffff3fffffff4ffffffffffffffef00000004",
            INIT_31 => X"ffffffe50000000bffffffdcffffffee00000029ffffffbcffffffe80000000a",
            INIT_32 => X"fffffffa00000026000000040000000b00000017ffffffff0000000dfffffff8",
            INIT_33 => X"fffffff600000017000000190000004d00000012000000010000003400000053",
            INIT_34 => X"ffffffff00000010ffffffe7000000000000000effffffff000000000000000b",
            INIT_35 => X"fffffff50000002bfffffff3ffffffe7fffffff70000003bffffffddffffffe9",
            INIT_36 => X"0000000effffffe7ffffffe4fffffff6ffffffebffffffe600000006fffffffa",
            INIT_37 => X"0000000cffffffefffffffedffffffd4ffffffe4ffffffd0ffffffecffffffff",
            INIT_38 => X"ffffffdbfffffff000000012fffffffdfffffff6000000090000002000000031",
            INIT_39 => X"00000018ffffffe3ffffffe2ffffffe80000000cfffffff0ffffffd200000012",
            INIT_3A => X"00000023fffffff10000000300000018fffffff00000001e0000002400000029",
            INIT_3B => X"00000000ffffffe300000028fffffff5ffffffb80000001cfffffff5ffffffc6",
            INIT_3C => X"ffffffff00000000000000060000000800000001fffffff300000000fffffffe",
            INIT_3D => X"000000070000002300000006000000130000000e0000003800000029ffffffdc",
            INIT_3E => X"0000000700000010fffffff8fffffffd00000019fffffffdffffffd1ffffffd9",
            INIT_3F => X"fffffff2ffffffbeffffffafffffffb9ffffffd0ffffffd8ffffffb7ffffff99",

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
    end generate MEM_IWGHT_LAYER2_ENTITY29;


    MEM_IWGHT_LAYER2_ENTITY30 : if BRAM_NAME = "iwght_layer2_entity30" generate
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
            INIT_00 => X"ffffffc5ffffffafffffff86ffffff9dffffffe70000004600000026ffffffb7",
            INIT_01 => X"ffffffeffffffffbfffffff5ffffffc0000000010000003d0000002800000013",
            INIT_02 => X"000000000000000000000023000000340000001000000023fffffffcfffffff6",
            INIT_03 => X"fffffffe000000030000000500000000fffffff800000000fffffffdfffffff8",
            INIT_04 => X"000000140000000f0000001e0000001f00000022000000220000000f0000001c",
            INIT_05 => X"ffffffdcffffffebfffffffcffffffdf00000012ffffffd0fffffff00000000a",
            INIT_06 => X"ffffffef0000000affffffebffffffedfffffff3fffffffc0000000affffffed",
            INIT_07 => X"fffffff5fffffff9ffffffeafffffff1ffffffe20000000affffffecfffffff2",
            INIT_08 => X"0000000c0000000800000001fffffff8fffffffc00000001fffffffd00000001",
            INIT_09 => X"000000040000001400000002fffffff30000000b0000000000000012fffffffb",
            INIT_0A => X"ffffffef000000150000001b00000014000000120000000a0000000200000009",
            INIT_0B => X"0000001200000047000000370000000000000012000000180000002500000014",
            INIT_0C => X"0000003300000007000000150000001600000021000000270000002a00000010",
            INIT_0D => X"0000000cfffffff9ffffffe500000003fffffffcffffffed0000000500000014",
            INIT_0E => X"ffffffd30000000c00000018ffffffec0000002800000010ffffffe600000024",
            INIT_0F => X"fffffff5fffffffefffffffe00000005000000090000000e00000005fffffffc",
            INIT_10 => X"00000016fffffffa00000018ffffffeaffffffe700000014ffffffceffffffec",
            INIT_11 => X"fffffff90000001dfffffff9fffffff70000000d00000001fffffff3ffffffec",
            INIT_12 => X"fffffffb000000260000001300000008ffffffe4fffffffffffffff8fffffff2",
            INIT_13 => X"ffffffedfffffff600000000fffffff800000014fffffff90000000900000008",
            INIT_14 => X"fffffff1fffffff2fffffffbffffffffffffffff0000001ffffffff9fffffffe",
            INIT_15 => X"ffffffe80000000e0000001bffffffe60000000f00000005fffffffcfffffffc",
            INIT_16 => X"ffffffe1fffffffdfffffff1ffffffdc000000050000001900000008fffffff1",
            INIT_17 => X"ffffff84ffffffe1ffffff95ffffff6dffffff6effffff94ffffffdeffffffa3",
            INIT_18 => X"ffffff840000000f000000310000001d0000000800000032000000340000000e",
            INIT_19 => X"fffffff8fffffff2fffffffa0000001d00000001fffffff80000001100000012",
            INIT_1A => X"0000000c00000002fffffff1fffffffaffffffeefffffff00000001a00000008",
            INIT_1B => X"000000240000002b0000002d00000029ffffffd3ffffffe4ffffffdcffffffb5",
            INIT_1C => X"ffffffa5ffffffa7ffffffaaffffffa1ffffffa900000000fffffffb0000000d",
            INIT_1D => X"00000006000000170000001100000030000000270000002effffffe9ffffffe7",
            INIT_1E => X"ffffffecfffffff3fffffff1fffffffd00000023ffffffff0000001c0000001c",
            INIT_1F => X"0000001b00000014ffffffeb0000000cfffffffefffffff0fffffffafffffff3",
            INIT_20 => X"0000000900000018ffffffff0000000000000017000000150000000300000015",
            INIT_21 => X"0000000e0000001500000022000000090000000affffffed00000015ffffffe9",
            INIT_22 => X"000000020000000e000000190000001800000008000000270000005700000048",
            INIT_23 => X"000000350000000b0000004900000022000000010000000e00000015ffffffe6",
            INIT_24 => X"00000008ffffffebffffffe4ffffffc700000018fffffff1ffffffed00000023",
            INIT_25 => X"00000029000000400000001a0000000c0000002cffffffe2ffffffe4fffffff2",
            INIT_26 => X"fffffff600000013000000040000003c00000026fffffff90000000a00000032",
            INIT_27 => X"0000001ffffffff100000008fffffff2ffffffd3ffffffc9ffffffd1fffffff9",
            INIT_28 => X"ffffffff0000000fffffffe400000004ffffffebffffffe8fffffff30000001b",
            INIT_29 => X"000000330000002b0000000a0000003700000021000000060000001700000002",
            INIT_2A => X"000000060000000800000027fffffffdfffffffb0000001dffffffdf00000001",
            INIT_2B => X"00000004ffffffd5000000140000003600000009000000060000001500000009",
            INIT_2C => X"00000017fffffff700000018ffffffe1fffffff1000000210000000a00000004",
            INIT_2D => X"00000024000000070000000bffffffe6ffffffdbfffffffe00000016ffffffd7",
            INIT_2E => X"ffffffe2ffffffdcffffffeafffffff1ffffffc9fffffffc000000380000002c",
            INIT_2F => X"ffffffd100000006ffffffe3ffffffe30000001200000012ffffffe6ffffffe0",
            INIT_30 => X"fffffff90000001efffffff600000007000000430000000600000016ffffffda",
            INIT_31 => X"0000000d00000032ffffffbeffffffe500000014ffffffce0000000400000007",
            INIT_32 => X"000000130000003affffffd1fffffffdfffffff0ffffff81ffffffc7fffffff4",
            INIT_33 => X"ffffffda00000018000000370000003c00000003fffffff1fffffff000000008",
            INIT_34 => X"ffffffdfffffffc0ffffffe4fffffff7fffffff3ffffffbfffffffedfffffff7",
            INIT_35 => X"ffffffd400000003ffffffc9fffffff1fffffff000000008ffffffe2ffffffeb",
            INIT_36 => X"fffffff30000000fffffffe7fffffffdffffffff0000000000000011ffffffd9",
            INIT_37 => X"0000000600000021ffffffe0000000090000002cfffffff8fffffff70000002d",
            INIT_38 => X"ffffffed000000180000002ffffffff30000000200000024fffffff600000019",
            INIT_39 => X"00000023ffffffe80000000900000009fffffff7ffffffe8ffffffc500000017",
            INIT_3A => X"0000000bffffffe5000000080000000f000000080000001800000006fffffff1",
            INIT_3B => X"fffffff7ffffffb5ffffffd0ffffffd0ffffffb300000014fffffff5ffffffd0",
            INIT_3C => X"ffffffe00000001100000015ffffffe6ffffffeaffffffe8ffffffe3fffffff3",
            INIT_3D => X"000000110000000c000000030000002e0000000bffffffeafffffffcfffffff1",
            INIT_3E => X"000000040000001300000007fffffff7fffffff00000001bffffffd0fffffff8",
            INIT_3F => X"ffffffc100000013ffffffd1fffffff2fffffffe0000001d0000002dfffffff7",

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
    end generate MEM_IWGHT_LAYER2_ENTITY30;


    MEM_IWGHT_LAYER2_ENTITY31 : if BRAM_NAME = "iwght_layer2_entity31" generate
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
            INIT_00 => X"0000001500000016fffffffbffffffe800000011ffffffdcffffffe2fffffffc",
            INIT_01 => X"ffffffa8ffffffeaffffffbaffffffe5fffffff4fffffff300000001fffffffb",
            INIT_02 => X"ffffffeeffffffebfffffff600000021fffffff8000000090000001300000008",
            INIT_03 => X"0000000600000020ffffffd70000000300000002ffffffcffffffff2fffffffa",
            INIT_04 => X"fffffff7fffffff2000000000000000000000010fffffffdfffffff600000002",
            INIT_05 => X"fffffff800000026000000140000000f0000004900000023fffffff400000018",
            INIT_06 => X"00000033000000590000000e000000040000002000000000ffffffedfffffffa",
            INIT_07 => X"00000006ffffffbfffffffe900000013fffffffb000000170000002800000032",
            INIT_08 => X"0000003f000000110000003600000034fffffff00000002a0000002dffffffc9",
            INIT_09 => X"fffffff3fffffffeffffffe2ffffffe6ffffffe5fffffffc0000002000000013",
            INIT_0A => X"ffffffd8ffffffdb0000001affffffd1ffffffea00000000fffffff90000001e",
            INIT_0B => X"00000018ffffffd0000000060000003efffffffafffffff100000013fffffff9",
            INIT_0C => X"0000002e0000003b000000030000003800000024fffffff9ffffffeaffffffe2",
            INIT_0D => X"00000004ffffffd4fffffff8fffffff700000013ffffffec0000000a0000001f",
            INIT_0E => X"0000002a0000000affffffe3ffffffffffffffd9ffffffc7ffffffe200000005",
            INIT_0F => X"ffffffdbffffffedffffffeffffffffcffffffefffffffd8fffffffa00000010",
            INIT_10 => X"ffffffe0000000120000003b000000180000002d00000020ffffffca0000000c",
            INIT_11 => X"0000001bffffffbeffffffe50000001900000026000000280000001affffffef",
            INIT_12 => X"0000000b00000004ffffffff0000000c000000020000000d0000000100000002",
            INIT_13 => X"00000009ffffffe8ffffffd200000026fffffff2fffffff0fffffff000000025",
            INIT_14 => X"00000021ffffff84ffffffed00000006ffffff88fffffff00000001900000031",
            INIT_15 => X"0000001dfffffffd00000016ffffffe7ffffffdc0000001afffffff9ffffffe3",
            INIT_16 => X"00000003ffffffeeffffffdc000000080000005000000028000000220000001b",
            INIT_17 => X"0000003e000000290000001700000005000000040000000f00000030ffffffe6",
            INIT_18 => X"000000130000001bffffffe1fffffffb0000001a000000130000002e00000017",
            INIT_19 => X"000000140000001b00000010fffffffc000000260000000cffffffdcffffffff",
            INIT_1A => X"00000038ffffffd70000000ffffffff5ffffffd9fffffffffffffff6fffffff2",
            INIT_1B => X"0000002e00000016ffffffd6fffffffbfffffff60000002a0000001c0000000f",
            INIT_1C => X"0000001a0000002500000018ffffffe0ffffffedfffffffe00000017fffffff2",
            INIT_1D => X"00000008ffffffdfffffffd700000017ffffffe6fffffff1ffffffefffffffdd",
            INIT_1E => X"fffffff600000004ffffffc30000001a0000001fffffffde000000240000000e",
            INIT_1F => X"ffffffe8ffffffde00000012ffffffe5ffffffd50000000200000029ffffffec",
            INIT_20 => X"ffffffe2ffffffe9ffffffeaffffffffffffffe3fffffffdfffffff6ffffffe3",
            INIT_21 => X"ffffffecfffffffefffffffeffffffd0ffffffef00000004ffffffd8ffffffc9",
            INIT_22 => X"0000002f00000000fffffffb000000070000001600000022ffffffb3ffffffcc",
            INIT_23 => X"0000002000000006ffffffe5fffffff700000002fffffff100000005ffffffff",
            INIT_24 => X"000000080000002600000009000000190000001900000009fffffff900000018",
            INIT_25 => X"ffffffcdffffffe40000001100000026ffffffdaffffffd6ffffffd900000000",
            INIT_26 => X"00000016ffffffdc0000001c00000006ffffffc30000000a0000000b00000012",
            INIT_27 => X"fffffff70000001700000029fffffff8ffffffd7000000330000000600000013",
            INIT_28 => X"0000001400000003000000100000000c000000220000000efffffff90000000e",
            INIT_29 => X"00000002000000170000000000000002fffffff40000001fffffffdcffffffe4",
            INIT_2A => X"ffffffe2000000220000003d0000002efffffffb0000001700000038fffffffc",
            INIT_2B => X"fffffffcfffffff00000000a000000370000001dfffffff40000003d00000006",
            INIT_2C => X"ffffffe00000004000000007ffffffd6fffffff1ffffffe4ffffffe40000003c",
            INIT_2D => X"ffffffe9ffffffbb00000043ffffffcffffffffdffffffd80000000000000017",
            INIT_2E => X"000000100000000b000000130000003800000004000000290000000000000004",
            INIT_2F => X"0000002cffffffedfffffff60000001f0000001affffffdd00000009ffffffd1",
            INIT_30 => X"ffffffe6ffffffcaffffffbbfffffff3ffffffcfffffffefffffffcefffffffb",
            INIT_31 => X"0000000ffffffff8ffffffe9ffffffec0000000afffffff600000002ffffffd9",
            INIT_32 => X"ffffffe9fffffff100000000000000060000000b0000001a0000001500000001",
            INIT_33 => X"0000001c000000130000000c000000070000000affffffe9000000160000000d",
            INIT_34 => X"ffffffcdffffffe000000009fffffff3000000090000001a0000000000000003",
            INIT_35 => X"00000037000000170000000a00000001ffffffebfffffffb00000012ffffffdb",
            INIT_36 => X"ffffffeb00000006000000150000000a0000002a0000001f00000003fffffffa",
            INIT_37 => X"ffffffe60000000ffffffff90000002200000008fffffff3ffffffc6ffffffe4",
            INIT_38 => X"00000018fffffff70000000500000004ffffffe900000017fffffff6ffffffd9",
            INIT_39 => X"ffffffe6fffffffcffffffe300000006fffffffa000000130000002000000009",
            INIT_3A => X"0000000000000006fffffff40000000b00000020fffffff9fffffffcffffffeb",
            INIT_3B => X"ffffffefffffffe10000000e0000002e000000010000001b0000002b0000000c",
            INIT_3C => X"0000000dfffffffe000000470000002a00000010000000500000000600000028",
            INIT_3D => X"0000004b0000006b00000054ffffffdeffffffdbffffffe9ffffffc8ffffffd8",
            INIT_3E => X"ffffffe6ffffffc7fffffff2fffffff1fffffff900000012ffffffccffffffed",
            INIT_3F => X"00000009ffffffd3ffffffc3fffffff70000000900000008ffffffd7ffffffce",

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
    end generate MEM_IWGHT_LAYER2_ENTITY31;


    MEM_IWGHT_LAYER2_ENTITY32 : if BRAM_NAME = "iwght_layer2_entity32" generate
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
            INIT_00 => X"ffffffeffffffff0ffffffd0ffffffe0ffffffe8fffffffa00000007fffffffe",
            INIT_01 => X"00000016fffffff8ffffffec000000170000001f00000006fffffff3ffffffe4",
            INIT_02 => X"0000000c0000000900000018fffffffb0000001000000015ffffffe9ffffffe3",
            INIT_03 => X"ffffffebffffffe3ffffffe10000001c00000030ffffffe5ffffffd700000005",
            INIT_04 => X"0000000b0000000e00000002fffffff6fffffffe00000024ffffffddfffffff3",
            INIT_05 => X"ffffffd1fffffff9ffffffecffffffee000000030000000d00000016fffffffe",
            INIT_06 => X"00000031000000270000000bffffffe2ffffffec00000013ffffffe800000005",
            INIT_07 => X"ffffffe9fffffff70000001b0000001d0000000e00000023fffffffd00000033",
            INIT_08 => X"fffffff0ffffffdb0000000a0000001c00000003ffffffea00000000ffffffe9",
            INIT_09 => X"00000001000000220000002200000023000000370000003cfffffffaffffffd2",
            INIT_0A => X"ffffffc2ffffffce00000002ffffffe0ffffffc1ffffffd6fffffff700000018",
            INIT_0B => X"0000000000000009fffffffe0000000000000004000000410000001600000020",
            INIT_0C => X"fffffff90000000dffffffecfffffff7000000100000000afffffff70000001d",
            INIT_0D => X"000000180000000d0000001b00000026000000190000001a0000001700000013",
            INIT_0E => X"000000110000002100000042ffffffeeffffffc20000002d00000028ffffffa4",
            INIT_0F => X"00000028fffffffffffffffd00000004ffffffe2ffffffd0ffffffefffffffc0",
            INIT_10 => X"ffffff8ffffffff5ffffffe6ffffffae0000003fffffffb6ffffffbf00000036",
            INIT_11 => X"ffffffb7ffffffbe0000005500000009ffffffacfffffff7ffffffec0000001d",
            INIT_12 => X"000000060000002200000009ffffffeafffffff2000000000000000a00000020",
            INIT_13 => X"fffffff200000006ffffffff0000000a000000070000000e0000001300000024",
            INIT_14 => X"000000400000003500000023000000090000000d000000190000001e00000005",
            INIT_15 => X"fffffff2ffffffeeffffffbcffffffed00000000ffffffcd00000002ffffffe4",
            INIT_16 => X"ffffffdcffffffe800000008ffffffe8ffffffd400000027fffffffcfffffff8",
            INIT_17 => X"00000003fffffffb00000002ffffffeeffffffe70000001e00000030fffffffb",
            INIT_18 => X"0000000b0000000e00000012ffffffe7fffffff9ffffffe3ffffffffffffffe1",
            INIT_19 => X"00000000ffffffce000000010000001100000000fffffffb0000000fffffffec",
            INIT_1A => X"fffffff50000002cffffffc1ffffffea00000013ffffffe0000000360000000e",
            INIT_1B => X"000000010000003b0000002cfffffffe000000120000000cfffffff50000000c",
            INIT_1C => X"fffffffbffffffe1fffffffc00000028ffffffe100000003fffffffc0000000d",
            INIT_1D => X"0000000e0000000affffffec0000001a0000000bffffffc2ffffffeafffffff7",
            INIT_1E => X"ffffffce00000028000000320000001e000000420000001e0000000300000004",
            INIT_1F => X"00000015ffffffcd000000100000000efffffff80000002900000014fffffff7",
            INIT_20 => X"00000018fffffff1ffffffeeffffffd0ffffff97fffffff80000000b0000000b",
            INIT_21 => X"ffffffe5000000090000000a0000001b0000000300000014ffffffe80000001b",
            INIT_22 => X"0000001cffffffe400000000000000150000000f000000130000000400000000",
            INIT_23 => X"000000250000003afffffff7000000000000001e000000130000002100000013",
            INIT_24 => X"000000020000000600000014ffffffe5ffffffe3000000060000002200000009",
            INIT_25 => X"ffffffebfffffffeffffffdafffffff0ffffffdc0000000b00000002ffffffed",
            INIT_26 => X"ffffffd2ffffffdbfffffff4fffffffe00000002ffffffe10000000100000016",
            INIT_27 => X"00000028ffffff99ffffffae00000003ffffff9dffffff8c00000038ffffffc4",
            INIT_28 => X"ffffff770000001200000026000000020000001c000000020000000efffffffd",
            INIT_29 => X"000000150000001fffffffed000000000000000affffffff000000160000000e",
            INIT_2A => X"0000001a000000190000000efffffffcfffffff900000025ffffffd3ffffffea",
            INIT_2B => X"000000030000001bfffffff200000000ffffffdbffffff91ffffffbcffffffc6",
            INIT_2C => X"ffffff9cffffffb100000006ffffffcdffffffb7ffffffcfffffffe2ffffffed",
            INIT_2D => X"ffffffc80000000afffffffcffffffecfffffffe000000030000001000000000",
            INIT_2E => X"00000011000000020000002b00000016ffffffeefffffffe0000001800000004",
            INIT_2F => X"ffffffeaffffffe500000006000000100000001c0000000e0000000700000001",
            INIT_30 => X"0000000c0000001f0000000efffffff300000005ffffffff00000009ffffffee",
            INIT_31 => X"fffffff90000001800000031fffffff20000004700000025fffffff8fffffff1",
            INIT_32 => X"0000001f00000012fffffff1ffffffc2ffffffe2fffffff3ffffffa6ffffffef",
            INIT_33 => X"00000017ffffffd6ffffffd9000000170000003b000000280000004100000031",
            INIT_34 => X"0000003d0000003800000028ffffffffffffffc9ffffffa7ffffffdcffffffd9",
            INIT_35 => X"ffffffb3ffffffd9fffffff0fffffff2ffffffe7ffffffbdffffffcdfffffff2",
            INIT_36 => X"fffffff3ffffffb1ffffffda0000002cfffffffeffffffdafffffff40000001a",
            INIT_37 => X"000000450000003a0000003e0000002f0000000000000004ffffffdd00000012",
            INIT_38 => X"0000000c0000000700000011fffffffb00000015ffffffd8ffffffec00000015",
            INIT_39 => X"fffffffd00000048fffffff70000005200000022000000130000002d00000018",
            INIT_3A => X"fffffff300000001ffffffdcfffffff6fffffff500000001fffffff8fffffffb",
            INIT_3B => X"00000015000000030000000f000000160000001e000000210000000c00000011",
            INIT_3C => X"0000000d0000001400000018ffffffd6ffffff96ffffffbfffffffbbffffffbb",
            INIT_3D => X"00000000fffffffafffffff80000000f00000014fffffff7ffffffff00000014",
            INIT_3E => X"0000000400000010ffffffefffffffedfffffff10000000600000012ffffffd2",
            INIT_3F => X"0000002300000015ffffffe5ffffffabffffffdbffffffd3ffffffe3ffffffbb",

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
    end generate MEM_IWGHT_LAYER2_ENTITY32;


    MEM_IWGHT_LAYER2_ENTITY33 : if BRAM_NAME = "iwght_layer2_entity33" generate
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
            INIT_00 => X"ffffffdeffffffd7ffffffe0000000220000001200000013ffffffff00000041",
            INIT_01 => X"fffffff2000000040000001afffffff0fffffff100000024ffffffe6ffffffe6",
            INIT_02 => X"00000009000000050000002cfffffffa00000004ffffffdbffffffe60000001b",
            INIT_03 => X"000000100000001700000022000000100000000700000011000000020000000c",
            INIT_04 => X"000000090000000f0000002300000017ffffffd70000004600000011fffffffd",
            INIT_05 => X"0000001efffffff7fffffff1fffffff40000000a000000260000000900000012",
            INIT_06 => X"0000000b00000007fffffffa000000100000000afffffff1fffffff7ffffffe5",
            INIT_07 => X"ffffffe8ffffffe9000000020000002e00000030fffffffc0000000300000020",
            INIT_08 => X"000000040000001000000011000000250000000d0000001afffffffd00000011",
            INIT_09 => X"000000150000000c000000010000000a0000000100000003fffffff6fffffffe",
            INIT_0A => X"00000002000000180000001f0000001e000000290000000b0000001bffffffe0",
            INIT_0B => X"0000001d0000001600000027000000290000001ffffffff50000003500000045",
            INIT_0C => X"0000001cffffffeb00000017ffffffe5fffffff9ffffffefffffffefffffffd8",
            INIT_0D => X"ffffffff000000230000000f00000006ffffffeb000000100000000affffffe8",
            INIT_0E => X"0000001afffffff80000000400000000fffffff900000009ffffffe400000007",
            INIT_0F => X"00000024fffffff3ffffffe9fffffffc0000001d0000000a0000003c00000024",
            INIT_10 => X"fffffff1fffffffc0000001400000011ffffffe1ffffffedffffffc2ffffffce",
            INIT_11 => X"ffffffd7ffffffb7fffffff8ffffffd7ffffffc9ffffffddfffffff000000006",
            INIT_12 => X"ffffffeeffffffdb0000000300000025000000050000002afffffff90000001d",
            INIT_13 => X"fffffff700000015000000260000001afffffff9000000490000001d0000002d",
            INIT_14 => X"0000000b000000080000001700000003fffffff10000000f0000001800000010",
            INIT_15 => X"fffffff80000001400000006ffffffe2000000250000001c0000000e0000002d",
            INIT_16 => X"0000002a00000019000000030000000cffffffd9ffffffea0000000900000000",
            INIT_17 => X"ffffffe40000000cffffffe6ffffffe9ffffffc3ffffffafffffffe4ffffffec",
            INIT_18 => X"ffffffbeffffffc6ffffffbbffffffbd0000004f0000002a0000000a00000002",
            INIT_19 => X"0000003e0000000affffffe50000001200000006fffffff6fffffff3ffffffff",
            INIT_1A => X"fffffff90000002100000014fffffff000000008ffffffee0000001800000014",
            INIT_1B => X"0000000dfffffffbfffffff2fffffff1ffffffc6ffffffcefffffff900000017",
            INIT_1C => X"00000001000000110000000cfffffff200000000000000040000000b00000029",
            INIT_1D => X"00000003000000050000000500000005fffffffa0000001c0000000800000000",
            INIT_1E => X"00000011000000280000002c0000001c000000160000001c00000002ffffff92",
            INIT_1F => X"ffffffb7ffffffc6000000150000001b0000000800000020000000080000002a",
            INIT_20 => X"0000000400000006ffffffef00000001ffffffd4ffffffca00000009fffffff2",
            INIT_21 => X"ffffffc9ffffffefffffffd8ffffffb9fffffff4fffffff6fffffff500000013",
            INIT_22 => X"fffffffefffffffdffffffedffffffe3000000030000000f0000001600000010",
            INIT_23 => X"0000000500000000ffffffe5fffffffbfffffffeffffffe4ffffffe7fffffffc",
            INIT_24 => X"00000000000000080000000dfffffff7fffffffbffffffe5ffffffea0000000c",
            INIT_25 => X"00000016ffffffd50000001f00000015fffffffffffffffefffffff5ffffffd5",
            INIT_26 => X"ffffffd4ffffffe0fffffffeffffffbfffffffbbffffffabffffffc2ffffff8e",
            INIT_27 => X"ffffffab00000019000000220000001d0000000ffffffff000000000ffffffb6",
            INIT_28 => X"ffffffb8ffffffc3000000310000003fffffffef00000040fffffffbffffffee",
            INIT_29 => X"0000001c0000002e0000000afffffff6fffffffe000000010000001300000016",
            INIT_2A => X"00000001fffffffc00000029000000100000000100000002fffffff40000002e",
            INIT_2B => X"0000002200000001000000380000000d00000024000000070000000a00000005",
            INIT_2C => X"000000120000001f000000180000001e000000050000002affffffe90000003d",
            INIT_2D => X"00000019ffffffedffffffffffffffe0ffffff80ffffffcbffffff9cfffffff5",
            INIT_2E => X"ffffffff00000010ffffffebfffffffb00000012ffffffd8ffffffd10000001a",
            INIT_2F => X"ffffffe1ffffffd1ffffffebffffffceffffffbbffffffb9ffffff9affffffd0",
            INIT_30 => X"ffffffc200000019000000270000002300000023000000120000001700000018",
            INIT_31 => X"fffffffd0000000e00000044000000460000001e0000001efffffff3fffffffc",
            INIT_32 => X"ffffffccffffffe9ffffffd7fffffffaffffffe3fffffffeffffffd3ffffffd3",
            INIT_33 => X"fffffffaffffffebffffffd7ffffffd10000001affffffccffffffd6ffffffed",
            INIT_34 => X"ffffffedffffffefffffffedffffffbbffffffebffffffdaffffffcc00000021",
            INIT_35 => X"ffffffa5ffffff7bffffffa6ffffffd3ffffff90ffffffb10000000a00000017",
            INIT_36 => X"00000000000000230000000d0000000800000018000000250000000900000016",
            INIT_37 => X"0000003d00000004fffffff50000000400000029ffffffbfffffffe6ffffffb9",
            INIT_38 => X"0000000d00000004fffffff40000001000000014ffffffeffffffffd00000006",
            INIT_39 => X"0000000c000000100000000b000000000000000900000003ffffffe400000006",
            INIT_3A => X"00000018000000240000000300000011fffffffe0000000f0000001000000010",
            INIT_3B => X"000000110000001d00000020ffffffc5ffffffe0ffffffefffffffb2ffffffea",
            INIT_3C => X"ffffffdeffffffcfffffffe2ffffffea00000006fffffff6fffffff400000022",
            INIT_3D => X"0000002b0000001800000001000000480000002d00000004ffffffdc0000000f",
            INIT_3E => X"00000013fffffffafffffff80000000800000018ffffffe50000001dfffffff4",
            INIT_3F => X"fffffffafffffffefffffff4ffffffe0fffffff6fffffff2ffffffefffffffec",

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
    end generate MEM_IWGHT_LAYER2_ENTITY33;


    MEM_IWGHT_LAYER2_ENTITY34 : if BRAM_NAME = "iwght_layer2_entity34" generate
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
            INIT_00 => X"fffffff3ffffffed00000004ffffffff0000000b000000070000002b0000002d",
            INIT_01 => X"0000000c0000001a00000008000000470000001effffffdd00000015fffffffc",
            INIT_02 => X"0000000c00000016fffffffb00000008ffffffdfffffffef00000021ffffffdc",
            INIT_03 => X"ffffffd80000001cfffffffe00000018fffffff90000000fffffffedffffffed",
            INIT_04 => X"0000002bffffffedfffffffaffffffe7ffffffe8ffffffe1ffffffd5ffffffcf",
            INIT_05 => X"fffffff0ffffffd1ffffffe1ffffffcd00000004fffffff400000009fffffff9",
            INIT_06 => X"fffffffe000000090000000dfffffffaffffffea000000070000001500000000",
            INIT_07 => X"000000020000001e00000034ffffffeb0000002000000019fffffff7ffffffee",
            INIT_08 => X"ffffffe60000000cfffffffaffffffef0000001a00000000ffffffcc00000004",
            INIT_09 => X"0000001e000000000000001b0000002b00000013ffffffed000000040000001d",
            INIT_0A => X"ffffffafffffffd3ffffffbeffffffe0ffffffcafffffff3ffffffb9ffffff97",
            INIT_0B => X"ffffffa8fffffff40000000100000006ffffffe5ffffffdbffffffdafffffff0",
            INIT_0C => X"ffffffd8ffffffdefffffffc0000000600000023ffffffc6ffffffd0ffffffda",
            INIT_0D => X"ffffff8dffffffdfffffffeb0000001a0000001b000000130000001d0000001d",
            INIT_0E => X"fffffffc000000100000002e000000230000000b0000000afffffffa0000001a",
            INIT_0F => X"000000120000002200000004ffffffee000000210000001d00000000fffffff8",
            INIT_10 => X"00000008000000100000000000000019000000080000000affffffceffffffe5",
            INIT_11 => X"ffffffecffffffcbffffffe3ffffffb2ffffffc8ffffffc3ffffffd000000006",
            INIT_12 => X"000000130000002200000016fffffff4ffffffea00000006fffffff3fffffff8",
            INIT_13 => X"ffffffcffffffff5ffffffdaffffffceffffffd7ffffffae00000006ffffffdd",
            INIT_14 => X"ffffffd90000000d000000100000002c0000001b000000160000000f0000001d",
            INIT_15 => X"000000140000001b00000007fffffffc0000001bfffffff70000000f00000009",
            INIT_16 => X"ffffffd6ffffffe50000001200000008ffffffe8000000090000001500000000",
            INIT_17 => X"00000003000000010000000000000006fffffff90000000200000013ffffffe4",
            INIT_18 => X"fffffff1fffffffdfffffff800000000ffffffd8000000000000001b0000002b",
            INIT_19 => X"ffffffdeffffffc5ffffffdaffffffe2ffffffceffffffdd00000002fffffffe",
            INIT_1A => X"0000001600000003000000040000000a00000001ffffffedfffffffb00000012",
            INIT_1B => X"0000000f00000001ffffffe900000009fffffffeffffffcaffffffdeffffffec",
            INIT_1C => X"000000080000000e00000005fffffff7ffffffecfffffff90000000000000000",
            INIT_1D => X"ffffffef0000001bffffffebffffffdfffffffdf000000210000001fffffffbf",
            INIT_1E => X"ffffffcfffffffeb00000019fffffffb000000000000000c0000001000000019",
            INIT_1F => X"ffffffd6fffffff8ffffffbbffffffe6ffffffe3ffffffff00000002fffffffb",
            INIT_20 => X"00000020ffffffe5fffffffb00000012fffffff4fffffff0fffffff3fffffff8",
            INIT_21 => X"fffffffaffffffe10000000dffffffd6fffffff4ffffffdaffffffcffffffffa",
            INIT_22 => X"00000006ffffffcdfffffffd000000290000000bfffffff2ffffffee00000002",
            INIT_23 => X"0000000b0000000d0000001fffffffc600000007fffffffafffffff100000000",
            INIT_24 => X"0000001f0000001fffffffe4000000100000002afffffff7fffffffb00000037",
            INIT_25 => X"ffffffd90000001100000008fffffff3fffffffe00000000ffffffd5ffffffe2",
            INIT_26 => X"ffffffed00000016fffffff1ffffffc000000015ffffffe9ffffffc70000002a",
            INIT_27 => X"fffffff0fffffff7fffffff8000000440000002cffffffd9000000030000004e",
            INIT_28 => X"ffffffb6fffffff8ffffffdc0000000e000000050000000f0000002700000007",
            INIT_29 => X"000000470000002900000012ffffffeb0000001cffffffdbffffffef00000023",
            INIT_2A => X"fffffff3ffffffdb00000036000000250000000c0000000f00000019ffffffe6",
            INIT_2B => X"ffffffd40000000b00000005fffffffbfffffff600000013ffffffcffffffff7",
            INIT_2C => X"00000016ffffffffffffffdafffffff90000002f00000027000000030000003a",
            INIT_2D => X"ffffffd0ffffffdc0000003cffffffe7ffffffd800000040fffffffc00000006",
            INIT_2E => X"fffffff40000001cffffffe0ffffffd00000002afffffff9ffffffbeffffffec",
            INIT_2F => X"00000023fffffff5ffffffefffffffeeffffffe70000001affffffd600000015",
            INIT_30 => X"00000032000000080000003100000006fffffffefffffffd00000007ffffffcc",
            INIT_31 => X"0000002afffffff800000002fffffff4ffffffd70000000bfffffff0ffffffee",
            INIT_32 => X"fffffffefffffff200000001ffffffedffffffddfffffff80000001600000015",
            INIT_33 => X"0000000200000004ffffffeb0000000300000027ffffffe2ffffffef00000020",
            INIT_34 => X"ffffffefffffffe00000001d00000010fffffff8fffffffdfffffffaffffffe2",
            INIT_35 => X"ffffffbe00000006ffffffe8ffffffc00000002200000019fffffff7ffffffe3",
            INIT_36 => X"0000001900000040ffffffc1ffffffed00000055ffffffeefffffff500000011",
            INIT_37 => X"000000420000002e0000001b00000050000000520000005e000000060000001e",
            INIT_38 => X"00000023ffffffe20000001bffffffe1ffffffda0000001300000016ffffffc8",
            INIT_39 => X"00000003000000280000001a00000001ffffffde0000000dffffffedffffffce",
            INIT_3A => X"0000002d0000001cfffffff700000000ffffffe3fffffffdfffffff5ffffffea",
            INIT_3B => X"ffffffe30000000a0000001c0000001d0000001700000027000000050000001e",
            INIT_3C => X"0000001f0000002100000018000000120000001d0000000500000008ffffffe6",
            INIT_3D => X"000000290000003e00000032000000170000003b00000050ffffffcaffffffc3",
            INIT_3E => X"00000008ffffffdcffffffd3fffffffaffffffeffffffff8fffffffe00000008",
            INIT_3F => X"ffffffdaffffffca00000036ffffffefffffffd6000000540000002200000011",

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
    end generate MEM_IWGHT_LAYER2_ENTITY34;


    MEM_IWGHT_LAYER2_ENTITY35 : if BRAM_NAME = "iwght_layer2_entity35" generate
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
            INIT_00 => X"00000006fffffffefffffff2fffffffffffffffeffffffe500000004fffffff0",
            INIT_01 => X"fffffff300000004000000290000002e00000025000000050000001d0000001d",
            INIT_02 => X"0000002900000007ffffffb4ffffffa7ffffffb5ffffffbbffffff89ffffff8f",
            INIT_03 => X"ffffff93ffffffbeffffffa1fffffff8000000370000002f0000002800000037",
            INIT_04 => X"ffffffff000000270000002900000015ffffffadffffffb7ffffffaeffffffb3",
            INIT_05 => X"ffffff96ffffffcfffffffa9ffffffafffffffca000000000000002700000018",
            INIT_06 => X"000000020000002b00000034ffffffd700000012000000100000000e00000028",
            INIT_07 => X"00000032ffffffecffffffedfffffff3ffffffc5ffffffdcfffffff600000026",
            INIT_08 => X"0000001cffffffef0000000dfffffff5000000070000000200000002fffffffc",
            INIT_09 => X"ffffffe7ffffffdafffffff400000004fffffff50000001affffffe4fffffff5",
            INIT_0A => X"ffffffc7fffffff0ffffffef00000017fffffff7ffffffd2fffffff700000000",
            INIT_0B => X"0000000900000000fffffff9ffffffe9fffffffefffffff9000000000000001e",
            INIT_0C => X"ffffffddffffffeeffffffcaffffffecfffffff1ffffffe5000000040000001c",
            INIT_0D => X"00000009fffffff7ffffffda000000140000001dfffffffe0000001e00000002",
            INIT_0E => X"000000280000002affffffec000000000000000a0000000f0000000600000007",
            INIT_0F => X"0000000effffffebfffffff10000000f0000000e0000001a0000001100000019",
            INIT_10 => X"00000007000000070000001a00000019ffffffe2ffffffddffffffeaffffffff",
            INIT_11 => X"0000000600000000fffffffe000000120000000a0000000e0000000f00000011",
            INIT_12 => X"ffffffe4ffffffe4000000070000001600000000fffffffa000000210000000e",
            INIT_13 => X"000000190000002600000016000000270000000c000000050000000f0000000b",
            INIT_14 => X"fffffff7fffffff300000015ffffffeeffffffd20000001effffffd8ffffffac",
            INIT_15 => X"0000000dffffffe3ffffffd6fffffff60000001e0000002b0000000200000017",
            INIT_16 => X"00000027fffffff7fffffff90000000bfffffffe0000000bfffffff8fffffffd",
            INIT_17 => X"fffffffdffffffebffffffee00000005000000000000001e000000280000000f",
            INIT_18 => X"0000000ffffffffd00000017000000130000001a0000001f0000001000000023",
            INIT_19 => X"0000002900000007fffffffd0000000cfffffff9fffffffb0000000000000017",
            INIT_1A => X"000000090000001b0000000a0000002900000016ffffffc4ffffffc7fffffff2",
            INIT_1B => X"ffffff77ffffffc5ffffff99ffffffa0ffffffe3ffffffd5ffffffb2ffffffe3",
            INIT_1C => X"0000000bfffffff20000000700000009fffffff9ffffffe5fffffffa0000001e",
            INIT_1D => X"0000000500000008fffffffe0000000a00000008fffffff1fffffff5fffffff3",
            INIT_1E => X"fffffffbfffffff10000001300000013000000030000000afffffff200000023",
            INIT_1F => X"00000029ffffffde0000000600000002ffffffeb00000017fffffffc00000018",
            INIT_20 => X"fffffff4ffffffc6fffffff10000000bffffffcafffffff500000007fffffffa",
            INIT_21 => X"fffffffeffffffe3fffffff9ffffffedffffffdeffffffec0000000200000008",
            INIT_22 => X"000000070000000d0000000800000000ffffffe7ffffffe4fffffffd00000011",
            INIT_23 => X"0000001300000007000000190000001b0000001d000000200000002400000005",
            INIT_24 => X"fffffffdfffffff3ffffffe5ffffffecfffffffb000000120000000900000003",
            INIT_25 => X"000000050000000f00000018000000000000001c000000260000001800000046",
            INIT_26 => X"00000047000000230000002200000007ffffffff0000000dffffffc7fffffffd",
            INIT_27 => X"ffffffebffffffd700000002fffffffefffffffc0000000fffffffe6ffffffe5",
            INIT_28 => X"fffffffcffffff97ffffffc70000000bffffffffffffffe700000000ffffff96",
            INIT_29 => X"ffffffbcffffffd0ffffffa0ffffffcfffffffe70000000e0000002300000013",
            INIT_2A => X"0000000e0000000afffffff10000004100000025000000230000002700000008",
            INIT_2B => X"00000027ffffffe700000013ffffffefffffffcaffffffeafffffff500000006",
            INIT_2C => X"0000000400000005fffffff8fffffff2fffffffaffffffec0000000afffffff0",
            INIT_2D => X"ffffffff00000004ffffffedffffffff000000150000002400000009ffffffee",
            INIT_2E => X"0000001d0000000a0000001b00000004000000050000001300000017fffffff9",
            INIT_2F => X"00000020fffffff30000000000000006fffffffc0000000b0000000b00000023",
            INIT_30 => X"0000000b0000001600000005ffffffd9ffffffe2fffffffcfffffff7ffffffd2",
            INIT_31 => X"ffffffee0000000600000004fffffff4ffffffeffffffff30000000cffffffe3",
            INIT_32 => X"ffffffe8ffffffe40000000cffffffeefffffff7ffffffda00000021fffffffc",
            INIT_33 => X"fffffff40000002c0000000f000000000000003a0000001b00000003ffffffed",
            INIT_34 => X"fffffffdffffffeaffffffdffffffffdfffffffe00000004ffffffff00000009",
            INIT_35 => X"fffffffcfffffff5ffffffecfffffff9ffffffef000000150000000a0000000c",
            INIT_36 => X"000000090000001e000000390000001b0000004600000045fffffff80000000e",
            INIT_37 => X"0000003f0000000b0000002300000017000000060000000b00000001ffffffe4",
            INIT_38 => X"fffffff90000000f0000004600000026ffffffe3fffffffcffffffd4ffffffb0",
            INIT_39 => X"ffffffd4ffffffd7ffffffca00000039000000080000001200000008fffffff4",
            INIT_3A => X"00000003ffffffeeffffffedffffffed0000000cfffffff600000004fffffffd",
            INIT_3B => X"ffffffceffffffc1ffffffe8ffffffb8ffffffc70000001b000000270000000c",
            INIT_3C => X"fffffff4ffffffe5ffffffe2ffffffe9fffffff9ffffffdc000000040000001e",
            INIT_3D => X"00000014ffffffe80000000effffffffffffffe60000000dffffffd60000000b",
            INIT_3E => X"0000001000000012fffffff60000001800000010ffffffedfffffffaffffffea",
            INIT_3F => X"fffffff4ffffffc4ffffffc6ffffffcbffffffacffffffde0000000bffffffca",

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
    end generate MEM_IWGHT_LAYER2_ENTITY35;


    MEM_IWGHT_LAYER2_ENTITY36 : if BRAM_NAME = "iwght_layer2_entity36" generate
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
            INIT_00 => X"ffffff9d0000001f000000060000001500000012000000220000001bffffffed",
            INIT_01 => X"0000001400000012fffffff8000000080000000cfffffff20000002800000016",
            INIT_02 => X"ffffffef000000160000002d00000006fffffffa00000005fffffff9fffffffd",
            INIT_03 => X"fffffff300000025ffffffebffffffe5fffffff100000002ffffffecffffffd7",
            INIT_04 => X"ffffffd5ffffffe4ffffffadffffffc400000016ffffffe0ffffffd5ffffffe3",
            INIT_05 => X"ffffffefffffffedffffffd30000001ffffffffe000000130000002d00000004",
            INIT_06 => X"fffffff700000000ffffffe3ffffffd1fffffff4ffffffd4ffffffd500000002",
            INIT_07 => X"0000000b00000000ffffffd60000000cfffffff9fffffff00000000f0000001f",
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
    end generate MEM_IWGHT_LAYER2_ENTITY36;


    MEM_IFMAP_LAYER2_ENTITY0 : if BRAM_NAME = "ifmap_layer2_entity0" generate
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
    end generate MEM_IFMAP_LAYER2_ENTITY0;


    MEM_IFMAP_LAYER2_ENTITY1 : if BRAM_NAME = "ifmap_layer2_entity1" generate
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
    end generate MEM_IFMAP_LAYER2_ENTITY1;


    MEM_IFMAP_LAYER2_ENTITY2 : if BRAM_NAME = "ifmap_layer2_entity2" generate
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
    end generate MEM_IFMAP_LAYER2_ENTITY2;


    MEM_IFMAP_LAYER2_ENTITY3 : if BRAM_NAME = "ifmap_layer2_entity3" generate
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
    end generate MEM_IFMAP_LAYER2_ENTITY3;


    MEM_GOLD_LAYER2_ENTITY0 : if BRAM_NAME = "gold_layer2_entity0" generate
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
            INIT_00 => X"000000a000000012000000400000010400000051000000bc0000010100000000",
            INIT_01 => X"0000000000000047000000000000001c0000000000000000000000ba00000000",
            INIT_02 => X"0000000000000000000000000000003100000000000000000000009200000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000000000000000000000000000000104000000000000000000000002",
            INIT_05 => X"0000000000000000000000000000000000000000000000a80000000000000038",
            INIT_06 => X"0000000000000000000000000000000000000000000000020000000000000000",
            INIT_07 => X"0000000000000000000000000000000000000000000000530000003700000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"00000000000000000000000f0000000000000000000000000000000000000000",
            INIT_0A => X"00000000000000a80000017a00000134000000370000011300000082000000b7",
            INIT_0B => X"0000003500000000000000000000002d00000079000000000000014d00000062",
            INIT_0C => X"00000000000000000000000000000000000000000000007e0000001000000035",
            INIT_0D => X"000000000000006a00000000000000d100000000000000000000000000000000",
            INIT_0E => X"000000b0000000b000000000000000a00000003300000077000000d200000081",
            INIT_0F => X"000000c6000000000000000000000008000000a9000000570000000000000065",
            INIT_10 => X"000000c800000000000000a10000003c00000000000000580000007a00000000",
            INIT_11 => X"000000000000000000000006000000000000005c000000000000000000000000",
            INIT_12 => X"000000000000002c000000e600000000000000770000004800000000000000ff",
            INIT_13 => X"0000002400000000000000000000001900000000000000360000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"00000000000000000000005d0000004d000000b50000006c000000aa00000000",
            INIT_17 => X"000000000000000000000000000000000000003f000000000000001b00000030",
            INIT_18 => X"0000001500000000000000000000000000000119000000b30000000000000012",
            INIT_19 => X"00000000000000aa00000000000000bd000000b6000000260000000000000000",
            INIT_1A => X"0000002800000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000000000c000000124000001440000014f000000d00000006800000017",
            INIT_1D => X"0000000000000040000000000000000000000009000000570000001600000000",
            INIT_1E => X"000000cf0000005d000000000000000000000000000000000000000000000000",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000000000000000000000000000000000000000000a800000001000000b8",
            INIT_21 => X"0000001e00000028000000960000009000000015000000630000000000000000",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000000000000000000000000000000000000000000000000000011b0000009e",
            INIT_24 => X"00000000000000000000006c0000000000000000000000000000000000000079",
            INIT_25 => X"000000f80000004300000004000000ff00000067000000120000001100000000",
            INIT_26 => X"000000000000001c00000000000000690000004100000000000000860000004e",
            INIT_27 => X"000000310000000000000000000000910000006c000000510000001700000026",
            INIT_28 => X"0000004600000000000000b0000000fd000000e0000000000000007800000000",
            INIT_29 => X"00000010000000000000000000000000000000000000000000000059000000ab",
            INIT_2A => X"000000c1000000fb000000ef0000006a0000008f000000db0000003b00000053",
            INIT_2B => X"000000140000001000000000000000000000007b00000046000000ab00000062",
            INIT_2C => X"0000005a0000013c000000a20000006d0000008c0000007a0000012300000051",
            INIT_2D => X"00000097000000a1000000000000000000000000000000000000003c00000000",
            INIT_2E => X"0000000700000000000000000000000000000000000000000000000000000104",
            INIT_2F => X"000000000000000000000000000000000000001e0000004f000000a20000012f",
            INIT_30 => X"0000008c00000000000000000000015b0000013a0000016100000083000000a1",
            INIT_31 => X"00000072000001380000001200000000000000000000008800000070000000dc",
            INIT_32 => X"000000e0000000ad0000013e000000cd000000ae000000000000000000000000",
            INIT_33 => X"000000000000000000000000000000000000000000000000000000c80000001f",
            INIT_34 => X"000000bf000000460000004b0000004e0000001b00000026000000000000001e",
            INIT_35 => X"000000730000013b0000009f000000360000001e00000006000000aa000000a5",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"000000000000000000000000000000000000006a000000430000007600000101",
            INIT_3B => X"000000660000007c000000000000000000000000000000000000000000000000",
            INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000059",
            INIT_3D => X"000000690000000000000031000000000000000000000000000000000000003d",
            INIT_3E => X"0000000000000000000000100000003100000072000000ed0000000000000000",
            INIT_3F => X"000000000000000000000000000000000000000000000000000000700000012c",

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
    end generate MEM_GOLD_LAYER2_ENTITY0;


    MEM_GOLD_LAYER2_ENTITY1 : if BRAM_NAME = "gold_layer2_entity1" generate
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
            INIT_00 => X"0000017f000000d0000000000000000000000000000000000000003200000000",
            INIT_01 => X"00000067000000080000003900000021000000de0000006d0000004400000076",
            INIT_02 => X"0000008400000141000000eb0000000000000000000000000000000000000000",
            INIT_03 => X"00000000000000000000000000000000000000b2000000780000006e0000003f",
            INIT_04 => X"0000007f0000009200000000000000000000000000000000000000000000001c",
            INIT_05 => X"00000191000000000000001e0000003400000087000001480000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000580000004a",
            INIT_07 => X"0000004600000000000000000000000000000000000000f3000000d7000000c5",
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
    end generate MEM_GOLD_LAYER2_ENTITY1;

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
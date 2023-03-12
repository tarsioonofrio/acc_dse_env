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
        DI   : in std_logic_vector(36-1 downto 0);
        ADDR : in std_logic_vector(10-1 downto 0);
        DO   : out std_logic_vector(36-1 downto 0)
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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000018690000112a000008a40000001d00000894fffffa57000004fefffff05b",
            INIT_01 => X"00001da3ffffcfa000000a4b0000188d000013d2fffffebaffffdeecfffffcf0",
            INIT_02 => X"0000000400000000ffffffe5ffffffcafffffff70000000a000000220000001f",
            INIT_03 => X"00000018ffffffddffffffff00000038ffffffd30000002e0000002c00000003",
            INIT_04 => X"ffffffedffffffc3ffffffccffffffc900000018000000200000002100000035",
            INIT_05 => X"ffffffc0ffffffd30000001f0000001bffffffe60000000bffffffdaffffffc6",
            INIT_06 => X"0000000f000000250000001800000017fffffff500000010ffffffe2ffffffc6",
            INIT_07 => X"fffffff3000000320000000700000007ffffffd3fffffff6ffffffd8ffffffd8",
            INIT_08 => X"00000013ffffffcf0000000c00000006ffffffd8000000330000001d00000026",
            INIT_09 => X"ffffffeb0000000bfffffffbffffffff000000240000000500000020fffffff3",
            INIT_0A => X"ffffffdb0000000effffffecfffffff4ffffffdcffffffc1fffffffaffffffdf",
            INIT_0B => X"000000180000002d0000003700000006ffffffe1000000270000000900000032",
            INIT_0C => X"00000016ffffffee0000002d00000021ffffffe6000000020000001200000024",
            INIT_0D => X"ffffffd2fffffffc00000037ffffffc2fffffffbfffffff8ffffffc6ffffffe7",
            INIT_0E => X"0000001000000034000000000000001f00000040ffffffc20000001effffffe6",
            INIT_0F => X"fffffff6ffffffe6ffffffc6ffffffe5ffffffcc0000001e00000052fffffff5",
            INIT_10 => X"fffffffcffffffafffffffbefffffffa0000002b0000004dffffffeb0000002b",
            INIT_11 => X"ffffffc2ffffffe10000003900000044000000220000002bfffffffdffffffcd",
            INIT_12 => X"0000002cfffffff9fffffffa000000330000000b0000003900000001ffffffe1",
            INIT_13 => X"fffffffa0000002f000000450000003b0000002f0000001f0000002600000028",
            INIT_14 => X"fffffff800000021ffffffe400000018ffffffe6fffffff0ffffffef0000001b",
            INIT_15 => X"fffffff4ffffffc6ffffffcaffffffe500000004ffffffd2ffffffd6ffffffd5",
            INIT_16 => X"0000003300000030000000040000001c0000000000000019ffffffd6ffffffe9",
            INIT_17 => X"ffffffc1ffffffb300000005fffffffcffffffbe000000440000000dffffffd6",
            INIT_18 => X"ffffffbc0000001cffffffe400000009fffffff5ffffffd0fffffff000000022",
            INIT_19 => X"0000001100000040000000260000000e000000000000000f0000002500000010",
            INIT_1A => X"ffffffcdfffffff000000000000000340000001fffffffea0000002d00000033",
            INIT_1B => X"00000021ffffffd3ffffffbbffffffc4ffffffc900000009fffffff5fffffff6",
            INIT_1C => X"00000028ffffffc6fffffff200000000ffffffbaffffffc70000000a0000001c",
            INIT_1D => X"ffffffcbfffffff7000000330000003c00000034ffffffff0000002d00000015",
            INIT_1E => X"ffffffd100000017fffffff7fffffff8ffffffde000000030000002fffffffc7",
            INIT_1F => X"0000001c000000390000000bfffffffc0000000afffffff8ffffffc5ffffffc9",
            INIT_20 => X"fffffff8fffffffafffffffb0000000200000003fffffff9ffffffd5fffffff7",
            INIT_21 => X"0000001dffffffdf0000001e0000002bfffffff0ffffffc5ffffffc100000016",
            INIT_22 => X"000000280000003b00000020fffffff30000002d00000031000000170000001b",
            INIT_23 => X"0000003d00000014000000270000002cfffffff70000000600000029ffffffe9",
            INIT_24 => X"0000001dffffffc8ffffffd8fffffff1ffffffd2fffffff50000002500000025",
            INIT_25 => X"ffffffaeffffffbf0000002100000012ffffffe40000001e0000003100000010",
            INIT_26 => X"0000001000000035ffffffdaffffffdcfffffff3000000450000001dffffffe6",
            INIT_27 => X"ffffffd5ffffffe6fffffff7ffffffd00000001cffffffddffffffedffffffcb",
            INIT_28 => X"fffffff9ffffffe2ffffffe300000026fffffffdffffffd9ffffffe0ffffffec",
            INIT_29 => X"0000002cffffffea00000033000000160000002f0000001f0000000100000015",
            INIT_2A => X"ffffffe00000003effffffdbffffffc500000033fffffffbffffffe500000033",
            INIT_2B => X"0000002600000005ffffffd7fffffff800000028ffffffd70000001bfffffff9",
            INIT_2C => X"fffffffeffffffd8000000300000003afffffff30000004b0000000a00000003",
            INIT_2D => X"ffffffddfffffffaffffffebffffffd7ffffffff00000029ffffffc7fffffff9",
            INIT_2E => X"fffffffe0000004dfffffff900000034ffffffe4ffffffdfffffffd9ffffffc9",
            INIT_2F => X"000000030000003d0000001300000019ffffffecffffffbfffffffffffffffd6",
            INIT_30 => X"00000036ffffffff00000007ffffffe9ffffffbcfffffff2ffffffdb0000001b",
            INIT_31 => X"0000000a00000012000000240000000f00000038fffffffb0000003effffffe8",
            INIT_32 => X"0000002900000015fffffffa00000010ffffffe40000000a0000002d00000023",
            INIT_33 => X"0000001900000009ffffffe0ffffffdfffffffd1fffffffdfffffff7ffffffd1",
            INIT_34 => X"ffffffdd0000000dfffffff5ffffffeb0000001afffffff700000010ffffffda",
            INIT_35 => X"0000003100000002ffffffd2ffffffe400000013ffffffefffffffe100000018",
            INIT_36 => X"ffffffdbfffffff50000002b00000042fffffff0000000260000004600000014",
            INIT_37 => X"ffffffccfffffff200000023ffffffdaffffffe4fffffff7fffffff8ffffffcf",
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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffa160000101700004a57fffff88dfffffb98fffff23efffff546ffffd97f",
            INIT_01 => X"00001a10fffff2beffffda5300000277000041710000218500000a3200000ea5",
            INIT_02 => X"ffffed1b00000aed00002f1d0000130500000d1ffffff3ef000044f2000041b4",
            INIT_03 => X"00002a6efffff25e00001b8cfffffa92fffff844ffffd00f00002f06fffffb1b",
            INIT_04 => X"000005d9ffffd5f500001e3d000022b7000017290000265700004eda00001aee",
            INIT_05 => X"fffff0af00001eeffffff538ffffd2aa0000091dffffe84800001361ffffed40",
            INIT_06 => X"fffff967fffffec700002c6e00001756fffffaef0000227f00002c7a00000be8",
            INIT_07 => X"00002be400001e3cffffe1000000380e0000257100002da4000018cc00000ac3",
            INIT_08 => X"ffffffff0000001900000000ffffffeb00000006fffffff40000000affffffed",
            INIT_09 => X"ffffffe60000001d0000000bfffffffb0000001ffffffff0fffffff300000010",
            INIT_0A => X"000000340000008f000000280000002d0000002a00000027ffffffe0fffffffa",
            INIT_0B => X"0000000bfffffff6fffffffe0000003800000014000000230000006400000028",
            INIT_0C => X"00000054000000430000003f00000011ffffffd6ffffffd600000006fffffff9",
            INIT_0D => X"ffffffe60000001a0000000000000007000000600000003a000000450000008d",
            INIT_0E => X"00000000fffffffe000000110000001f00000024000000000000000f00000019",
            INIT_0F => X"00000000fffffffeffffffecffffffd800000021fffffffcffffffd30000001b",
            INIT_10 => X"fffffff2ffffffdffffffff7ffffffd8fffffff0ffffffddffffffecfffffffe",
            INIT_11 => X"ffffffee000000020000003b00000012fffffffd000000180000000300000020",
            INIT_12 => X"fffffff800000004fffffffefffffffc000000090000001afffffff4fffffff4",
            INIT_13 => X"fffffffc0000000dfffffffc0000001100000026ffffffe500000005fffffffa",
            INIT_14 => X"fffffffa00000007ffffffdcfffffffb00000008ffffffeaffffffd8ffffffe8",
            INIT_15 => X"0000000700000002000000110000000f0000000300000009ffffffc8ffffffdc",
            INIT_16 => X"000000250000000f00000010000000220000000e0000000bfffffffdffffffef",
            INIT_17 => X"fffffff80000000000000004fffffffa0000000000000015fffffff7ffffffe3",
            INIT_18 => X"000000100000000a0000002400000002000000100000001500000010ffffffcb",
            INIT_19 => X"fffffff1ffffffe900000001fffffff0ffffffcffffffff7ffffffd900000003",
            INIT_1A => X"fffffff0000000010000003700000011fffffff50000000e0000000900000011",
            INIT_1B => X"ffffffe50000000cfffffff3fffffffd000000130000002000000007ffffffdf",
            INIT_1C => X"ffffffd7ffffffb7ffffffffffffffc6ffffffd2ffffffbd00000000ffffffe7",
            INIT_1D => X"00000001fffffff4fffffff900000008ffffffeeffffffdfffffff91ffffffd4",
            INIT_1E => X"fffffff4ffffffd8fffffff7ffffffe5000000120000000000000022fffffffa",
            INIT_1F => X"ffffffe4fffffff600000009fffffffcfffffff000000002fffffff2ffffffde",
            INIT_20 => X"00000005fffffff8000000180000000100000010fffffff6ffffffff00000011",
            INIT_21 => X"00000001ffffffefffffffeb0000000200000002fffffff0fffffff0fffffff5",
            INIT_22 => X"0000001affffffe3fffffff80000002c000000070000000c00000002fffffff7",
            INIT_23 => X"ffffffe600000013ffffffc7000000060000000dffffffed0000001000000007",
            INIT_24 => X"fffffff60000001100000012fffffffb000000300000000e0000000dffffff98",
            INIT_25 => X"0000001afffffffe0000001d00000022ffffffee000000030000000400000008",
            INIT_26 => X"00000000ffffffe800000016fffffffc0000000affffffdcffffffe3ffffffff",
            INIT_27 => X"0000001000000002000000190000001900000021ffffffee000000080000001b",
            INIT_28 => X"00000014ffffffe00000001cffffffdbffffffedffffffd50000001200000015",
            INIT_29 => X"00000004ffffffebfffffffb0000000effffffe7fffffffafffffffcfffffff5",
            INIT_2A => X"ffffffff0000001900000014ffffffff0000001600000003ffffffe900000002",
            INIT_2B => X"ffffffe8ffffffccfffffffd000000040000001d0000000600000010ffffffeb",
            INIT_2C => X"000000000000002300000002fffffff00000001e000000120000000100000000",
            INIT_2D => X"000000250000000500000000ffffffd7ffffffdeffffffc6ffffffddfffffffd",
            INIT_2E => X"ffffffeb0000002600000024ffffffceffffffe2000000110000002c0000006e",
            INIT_2F => X"ffffff9b00000009ffffffaffffffff6fffffff6000000430000002a00000069",
            INIT_30 => X"0000001400000007fffffff1fffffff70000003b0000001cfffffff300000000",
            INIT_31 => X"ffffffe500000007fffffff100000022000000460000003f0000003e00000039",
            INIT_32 => X"0000002100000002ffffffedffffffbeffffffbbfffffffe00000051fffffff5",
            INIT_33 => X"00000010ffffffeaffffffb4ffffffb2ffffffddfffffffdffffffea00000033",
            INIT_34 => X"000000110000000c00000019ffffffbfffffffc6ffffffd00000000300000002",
            INIT_35 => X"00000020000000000000001400000012fffffff8fffffff2fffffffeffffffec",
            INIT_36 => X"0000001800000008000000220000001300000004000000220000003400000014",
            INIT_37 => X"000000200000002900000012fffffff200000009ffffffedffffffd7fffffff5",
            INIT_38 => X"0000003600000054ffffffe200000003ffffffffffffffdc000000210000001f",
            INIT_39 => X"00000006ffffffdafffffffc00000011fffffffaffffffe100000023ffffffda",
            INIT_3A => X"0000000e0000004300000039ffffffc1ffffffcfffffffbaffffffd000000003",
            INIT_3B => X"ffffffefffffffdc000000380000002500000012ffffffe4ffffffddffffffd9",
            INIT_3C => X"00000019ffffffc6ffffffcdffffffcc000000180000003e00000025ffffffd5",
            INIT_3D => X"ffffff8effffff97ffffffd9fffffffe0000000400000005000000180000001f",
            INIT_3E => X"0000002a00000005fffffff40000000cffffffef000000420000003100000034",
            INIT_3F => X"ffffffe2000000050000001e000000230000000d000000330000003000000017",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000100000004d00000007ffffffe7000000230000000400000005fffffffd",
            INIT_41 => X"00000022fffffff9fffffffc0000000400000005fffffff70000001dfffffffa",
            INIT_42 => X"0000001d000000030000001afffffffeffffffe5ffffffe0fffffff2fffffffd",
            INIT_43 => X"00000010000000040000001bffffffe0fffffff7000000000000000d00000008",
            INIT_44 => X"fffffffe00000007ffffffe3ffffffd2ffffffe6000000000000001f00000009",
            INIT_45 => X"ffffffdaffffffddfffffff0ffffffd4000000070000000dfffffff7fffffff0",
            INIT_46 => X"ffffffd8ffffffdcffffffe700000023000000490000003100000000fffffffe",
            INIT_47 => X"ffffffd30000004dffffffc7ffffffad00000028fffffff1ffffffb6ffffffde",
            INIT_48 => X"00000014ffffffefffffffceffffffe0fffffff6ffffffdeffffffeaffffffcc",
            INIT_49 => X"000000200000002a000000130000001600000038000000300000003100000024",
            INIT_4A => X"00000024ffffffcefffffff600000015ffffffeeffffffc3fffffff300000011",
            INIT_4B => X"fffffff1ffffffbb00000004fffffffbffffffeeffffffbb0000000000000014",
            INIT_4C => X"0000000500000000ffffffff0000003b000000260000000e00000001ffffffed",
            INIT_4D => X"fffffff300000003ffffffd9ffffffdafffffffaffffffc20000001affffffb7",
            INIT_4E => X"0000003200000018ffffffe9ffffffe1ffffffeeffffffe400000008ffffffe4",
            INIT_4F => X"ffffffddffffffe6ffffffe6fffffffb00000013ffffffeffffffff700000013",
            INIT_50 => X"00000000fffffff900000007ffffffeefffffff2000000140000002200000011",
            INIT_51 => X"0000001cffffffb3ffffffdffffffff500000008fffffff600000002fffffff8",
            INIT_52 => X"ffffffefffffffd9ffffffc7fffffffdffffffeeffffffe9ffffffe500000019",
            INIT_53 => X"0000001f000000590000001d0000001f0000000d0000000b0000000ffffffffc",
            INIT_54 => X"ffffffeeffffffd9ffffffd3ffffffc500000019000000350000000e0000003c",
            INIT_55 => X"0000000d0000000afffffffc00000025fffffff30000000600000001ffffffc4",
            INIT_56 => X"fffffffffffffffd0000001e0000000cfffffff40000000a0000002600000006",
            INIT_57 => X"00000035ffffffeaffffffdcffffffdd0000000400000006ffffffd9fffffff5",
            INIT_58 => X"ffffffeffffffff10000000fffffffcaffffffe400000000000000180000001a",
            INIT_59 => X"0000001000000037fffffffb000000000000000dffffffd200000022ffffffe7",
            INIT_5A => X"ffffffcf0000002e00000019ffffffd60000003800000031ffffffffffffffe0",
            INIT_5B => X"ffffffe30000001e0000001ffffffffbfffffffc0000001c00000028ffffffe2",
            INIT_5C => X"00000026fffffffc0000000ffffffff800000019ffffffe3fffffffcfffffffd",
            INIT_5D => X"ffffffea00000013ffffffe8fffffff30000002c00000024ffffffe900000011",
            INIT_5E => X"00000038000000070000001d000000160000000cffffffe70000000f00000002",
            INIT_5F => X"fffffffd0000000f00000002fffffffc0000001bffffffd8ffffffd8ffffffd6",
            INIT_60 => X"ffffffd200000005fffffff4ffffffceffffffeafffffffe00000008ffffffd4",
            INIT_61 => X"0000002cffffffceffffffc80000003800000004ffffffcf00000036ffffffec",
            INIT_62 => X"0000000700000031ffffffcfffffffd400000023fffffff6fffffff00000002d",
            INIT_63 => X"ffffffc60000002800000008ffffffe50000003c000000010000000afffffff0",
            INIT_64 => X"0000001f000000000000001fffffffddffffffc90000000600000024ffffffe5",
            INIT_65 => X"0000001100000018ffffffe6ffffffff00000001fffffff8ffffffe6fffffff4",
            INIT_66 => X"0000000fffffffe9ffffffe60000001f00000009fffffffbfffffff600000000",
            INIT_67 => X"ffffffe8fffffffe00000024fffffffa000000040000000b0000000d00000010",
            INIT_68 => X"0000001dfffffff30000000200000000fffffff200000007fffffff600000023",
            INIT_69 => X"000000000000001fffffffccffffffc900000022fffffffaffffffd800000031",
            INIT_6A => X"ffffffcb00000003fffffff8ffffffee0000001400000016ffffffb7fffffff3",
            INIT_6B => X"000000360000002600000022000000270000001b0000000d00000032ffffffeb",
            INIT_6C => X"00000037ffffffb7ffffffe8fffffffdffffffe0ffffffeb0000000300000030",
            INIT_6D => X"00000023ffffffd9ffffffc300000023ffffffffffffffdcffffffe30000001d",
            INIT_6E => X"fffffffcffffffe90000002d0000002effffffe400000020ffffffedffffffbe",
            INIT_6F => X"0000000f0000001f00000017000000020000002cffffffe8ffffffe500000030",
            INIT_70 => X"0000001c00000013fffffff80000002c0000004400000025000000490000003e",
            INIT_71 => X"fffffffc00000005fffffffcffffffe3ffffffd8000000350000000fffffffdc",
            INIT_72 => X"ffffffeb000000060000001b000000120000001a0000001300000030ffffffca",
            INIT_73 => X"0000003e00000003ffffffc00000000effffffffffffffbf00000029fffffff4",
            INIT_74 => X"ffffffee0000000cfffffffbfffffffd000000030000000000000000fffffffd",
            INIT_75 => X"fffffff6fffffff3fffffff8ffffffea0000000affffffe4fffffff000000008",
            INIT_76 => X"fffffff6fffffff4ffffffe70000000bffffffed00000006fffffff3ffffffea",
            INIT_77 => X"ffffffe8fffffff0fffffff500000008fffffff0000000000000000efffffff6",
            INIT_78 => X"000000000000000500000000ffffffecfffffffd00000005ffffffeb0000000d",
            INIT_79 => X"fffffff400000007fffffff1ffffffedffffffee00000003fffffff6fffffffa",
            INIT_7A => X"fffffff4fffffffbfffffff6000000060000001100000002fffffffb00000000",
            INIT_7B => X"0000000dfffffffdfffffffd00000006fffffff3fffffff7fffffff0fffffff3",
            INIT_7C => X"00000000ffffffddffffffeb00000000ffffffee00000007000000050000000a",
            INIT_7D => X"ffffffecfffffff900000007000000040000000900000002ffffffe70000000c",
            INIT_7E => X"fffffff9fffffff70000000200000002ffffffff00000008ffffffedfffffffc",
            INIT_7F => X"000000100000000000000003fffffff20000000fffffffebfffffffffffffffc",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000007fffffff800000011fffffff8ffffffebffffffdffffffffaffffffea",
            INIT_01 => X"fffffff400000005fffffff80000000500000008fffffffcfffffff200000004",
            INIT_02 => X"ffffffe2fffffffdffffffe1fffffffcfffffff400000002ffffffeb00000000",
            INIT_03 => X"ffffffee0000000100000000fffffffd00000000fffffff20000000b0000000a",
            INIT_04 => X"fffffff8fffffff50000000b000000070000001200000008ffffffeefffffff9",
            INIT_05 => X"fffffff5fffffffbfffffffbfffffff20000000500000003fffffff1ffffffec",
            INIT_06 => X"00000000fffffffbffffffffffffffe8fffffff700000000fffffff00000000b",
            INIT_07 => X"ffffffe7ffffffe9ffffffefffffffebffffffec00000006ffffffffffffffed",
            INIT_08 => X"fffffff20000000afffffff6fffffffe00000000fffffff4fffffffafffffffd",
            INIT_09 => X"00000000fffffff1fffffffe0000000cffffffeafffffff8fffffff4fffffff5",
            INIT_0A => X"fffffff9ffffffed0000000fffffffecffffffebfffffff4ffffffe7fffffff0",
            INIT_0B => X"0000000400000003fffffff4ffffffedfffffff3fffffffbffffffebfffffffb",
            INIT_0C => X"0000000cfffffffefffffff20000000bffffffee00000007fffffffa00000001",
            INIT_0D => X"00000004fffffffcffffffe7fffffff8ffffffeb00000000ffffffe900000005",
            INIT_0E => X"ffffffedfffffff200000003fffffff800000000ffffffeafffffffc00000003",
            INIT_0F => X"00000000fffffffc00000005ffffffe8ffffffeaffffffff00000005ffffffea",
            INIT_10 => X"fffffff0fffffff600000009fffffff300000001fffffff0ffffffeeffffffe0",
            INIT_11 => X"0000000100000000000000110000000400000002fffffffbffffffed00000009",
            INIT_12 => X"0000000800000010ffffffea0000000b0000000bffffffec0000000500000000",
            INIT_13 => X"fffffff0fffffffefffffff2ffffffeaffffffe8fffffff600000002ffffffec",
            INIT_14 => X"0000000700000007fffffff600000009fffffff5fffffff1fffffff1fffffff9",
            INIT_15 => X"fffffff600000009fffffff1fffffffa000000010000000b0000000bffffffed",
            INIT_16 => X"fffffff3fffffff4fffffffb000000090000000d00000008fffffffa00000006",
            INIT_17 => X"fffffff000000008fffffff7fffffff30000001200000004ffffffe3ffffffef",
            INIT_18 => X"000000010000000c00000001fffffff6fffffffb000000170000001b00000009",
            INIT_19 => X"ffffffe6fffffffa0000003e00000012ffffffe3ffffffd5ffffffe3fffffffc",
            INIT_1A => X"ffffffd9fffffff70000000cffffffeaffffffd6ffffffb6fffffff3ffffffee",
            INIT_1B => X"ffffffbeffffffe400000032ffffffceffffffe6000000070000001e00000011",
            INIT_1C => X"0000000affffffcdffffffceffffffd0ffffffc2ffffffe4ffffffdfffffffd5",
            INIT_1D => X"ffffffd3ffffffc3ffffffc3ffffffe5ffffffd6fffffff8ffffffd0ffffffd1",
            INIT_1E => X"00000025000000230000001600000016fffffffeffffffe9ffffffeaffffffbf",
            INIT_1F => X"ffffffff000000360000001c00000008fffffffb0000000f0000001b00000031",
            INIT_20 => X"fffffff20000001f0000000effffffedfffffff7ffffffe10000001800000016",
            INIT_21 => X"0000000e00000003fffffff1000000110000002bfffffff60000000800000007",
            INIT_22 => X"ffffffd7ffffffabffffffcfffffffb6fffffff0ffffffc3fffffff900000024",
            INIT_23 => X"0000000e0000003a000000280000000000000003000000090000000fffffffde",
            INIT_24 => X"00000024fffffff40000000100000014ffffffe90000001d0000000ffffffffa",
            INIT_25 => X"fffffff4fffffff70000001a00000016ffffffdcffffffeefffffffdfffffff0",
            INIT_26 => X"0000001c00000038fffffff3ffffffdfffffffe0fffffff500000000ffffffde",
            INIT_27 => X"00000000ffffffeaffffffe2ffffffebffffffb2ffffffaaffffffcfffffffb5",
            INIT_28 => X"0000000f0000000c0000000300000016fffffff2fffffffaffffffff00000000",
            INIT_29 => X"ffffffc8ffffffe5fffffffc00000000ffffffe0ffffffef00000000fffffffa",
            INIT_2A => X"000000350000001200000060000000410000002affffffe80000000d00000027",
            INIT_2B => X"fffffff9000000220000003fffffffed000000170000001a0000000f0000001d",
            INIT_2C => X"0000000c0000002c00000006fffffff800000000000000060000003700000046",
            INIT_2D => X"000000010000000d0000000afffffffd00000016ffffffd400000000ffffffe4",
            INIT_2E => X"0000000d0000001f000000180000002b00000002fffffffe0000000400000002",
            INIT_2F => X"0000000effffffe60000000200000004fffffffb000000130000001600000013",
            INIT_30 => X"0000001bffffffda0000000dfffffffa0000001400000015ffffffdf00000010",
            INIT_31 => X"fffffff500000002ffffffecfffffff7ffffffe3ffffffeeffffffcefffffff0",
            INIT_32 => X"00000011000000120000001a000000320000003f00000022fffffffffffffff2",
            INIT_33 => X"ffffffec00000023ffffffd6fffffff50000002effffffe7ffffffce00000017",
            INIT_34 => X"fffffff1ffffffd60000002effffffe7ffffffdaffffffdaffffffedffffffbe",
            INIT_35 => X"ffffffeeffffffe9ffffffd4ffffffe5ffffffe0ffffffcc0000000800000005",
            INIT_36 => X"ffffffe900000006ffffffd5fffffff80000000b000000280000000600000008",
            INIT_37 => X"ffffffd900000015ffffffb6ffffffa7fffffffdfffffff70000001cffffffe9",
            INIT_38 => X"ffffffd9fffffffc0000000dfffffff3ffffffd7ffffffbcffffffd1ffffffc7",
            INIT_39 => X"0000000500000029000000110000000600000014fffffff10000000300000024",
            INIT_3A => X"fffffff6fffffff00000000f00000011ffffffe9fffffff70000000c00000014",
            INIT_3B => X"fffffff6ffffffecffffffdbffffffe90000000affffffe5ffffffecffffffeb",
            INIT_3C => X"fffffff5fffffff80000001cfffffff0fffffffffffffffdffffffec0000000f",
            INIT_3D => X"fffffff3ffffffe9fffffff10000000c000000050000002600000038fffffff9",
            INIT_3E => X"ffffffadffffff9fffffffcbffffff92ffffffadfffffffa0000002c0000000e",
            INIT_3F => X"ffffffe5ffffffd0ffffffc4ffffff8dfffffffbffffffd5ffffffe700000036",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff0ffffffecffffffb7fffffff2fffffffeffffffdb00000004ffffffcb",
            INIT_41 => X"000000220000003500000023ffffffebfffffff7ffffffd1ffffffc6ffffff9e",
            INIT_42 => X"ffffffd8ffffffe0ffffffedfffffffd00000000000000310000001a00000012",
            INIT_43 => X"0000001bfffffffcfffffff200000008ffffffd8fffffffdfffffff3ffffffde",
            INIT_44 => X"00000019ffffffeeffffffe30000001cffffffef00000007000000120000000a",
            INIT_45 => X"fffffff1ffffffd3ffffffe0ffffffb7ffffffbafffffff4ffffffd4fffffffe",
            INIT_46 => X"00000015fffffff1000000180000002d0000000d00000024fffffffa0000000c",
            INIT_47 => X"ffffffe0ffffffe4ffffffefffffffdfffffffd7fffffffa0000000000000018",
            INIT_48 => X"0000000000000007ffffffe0ffffffdcffffffe800000058000000160000000e",
            INIT_49 => X"00000000000000100000000dfffffffcffffffbeffffffe200000010ffffffbd",
            INIT_4A => X"00000000000000140000001000000006ffffffee0000000100000007fffffffd",
            INIT_4B => X"0000000800000019000000100000000b0000001a000000160000001200000019",
            INIT_4C => X"00000004fffffff9ffffffeeffffffe3ffffffeffffffffeffffffe40000001a",
            INIT_4D => X"ffffffd5000000000000000efffffff8000000110000000f0000001200000020",
            INIT_4E => X"ffffffedffffffd700000001ffffffbcffffffe9ffffffddffffffd1ffffffe5",
            INIT_4F => X"00000014fffffff80000000f0000003e0000001600000003fffffffd00000002",
            INIT_50 => X"fffffffa0000000afffffffeffffffc400000007fffffff9ffffffd3fffffffd",
            INIT_51 => X"0000000d00000002000000110000001200000000ffffffe20000002200000015",
            INIT_52 => X"000000230000002100000025000000140000000a00000007ffffffdb00000023",
            INIT_53 => X"0000002f000000050000000c0000000d00000005ffffffe7000000340000001c",
            INIT_54 => X"0000000bfffffff4ffffffff00000005fffffffd0000003c0000002700000009",
            INIT_55 => X"ffffffedffffffc800000006ffffffedffffffe90000001600000005ffffffe5",
            INIT_56 => X"0000002b000000130000000f0000000afffffffaffffffd2fffffff8ffffffe5",
            INIT_57 => X"fffffff900000033fffffff1fffffff8fffffffbffffffdeffffffb30000001c",
            INIT_58 => X"00000015000000050000000e00000007ffffffeefffffff20000001bffffffe2",
            INIT_59 => X"ffffffd20000000a0000002efffffff70000002100000022000000310000001a",
            INIT_5A => X"00000007ffffffc3fffffff9fffffff1fffffff7ffffffec0000000400000044",
            INIT_5B => X"ffffffd4ffffffbdffffff78ffffffbe0000000200000000ffffffff00000005",
            INIT_5C => X"000000150000000b0000000fffffffd3ffffffd5fffffff0ffffffcdffffffb8",
            INIT_5D => X"0000001d0000000bfffffff8ffffffea0000001e0000003000000021fffffffc",
            INIT_5E => X"000000170000002ffffffffbfffffffc0000001a000000190000000400000010",
            INIT_5F => X"ffffffc60000000c00000025fffffff800000017000000370000001e00000019",
            INIT_60 => X"fffffff2fffffff9fffffffbffffffeafffffff1fffffff1ffffffe5ffffffd8",
            INIT_61 => X"fffffff7000000150000002500000032000000290000002a00000026ffffffeb",
            INIT_62 => X"00000026ffffffeaffffffe2fffffffd0000000e00000000ffffffb8ffffffbb",
            INIT_63 => X"ffffffdaffffffd60000003100000012fffffff60000001afffffff5ffffffe5",
            INIT_64 => X"0000002effffffea0000001cffffffda00000023ffffffedffffffe80000000d",
            INIT_65 => X"000000050000000800000004000000070000001afffffff00000001600000035",
            INIT_66 => X"00000002000000380000003300000031000000270000001c0000003600000015",
            INIT_67 => X"fffffff2ffffffd3ffffffcdfffffff2ffffffedfffffff90000001900000024",
            INIT_68 => X"ffffffcbffffffceffffffdfffffffabffffffa1ffffffb5fffffff1fffffff1",
            INIT_69 => X"000000030000000e000000370000003f00000053000000220000002600000028",
            INIT_6A => X"000000140000000b000000010000000afffffff6fffffff2fffffffbfffffff0",
            INIT_6B => X"0000000b0000000a0000001b00000017fffffffe000000050000000cfffffff0",
            INIT_6C => X"000000000000000200000021ffffffef0000000bffffffddfffffff1ffffffde",
            INIT_6D => X"ffffffe500000020000000210000002100000030fffffffdfffffffc00000040",
            INIT_6E => X"ffffffe7ffffffc4ffffffdefffffff2fffffff5ffffffe80000001300000019",
            INIT_6F => X"000000250000000affffffd2ffffffddffffffeeffffffcaffffffc1ffffffcc",
            INIT_70 => X"0000001800000013fffffff300000006000000230000003a000000220000002c",
            INIT_71 => X"0000002c0000001affffffe40000000efffffffefffffffffffffff7fffffff0",
            INIT_72 => X"ffffff95ffffffaeffffffedffffffb3ffffffabfffffff50000000200000011",
            INIT_73 => X"fffffff50000002f000000160000002200000013000000050000001affffffa3",
            INIT_74 => X"00000031fffffffaffffffd5000000160000000cffffffd30000000600000008",
            INIT_75 => X"00000016fffffff60000001d00000032000000340000001100000034ffffffec",
            INIT_76 => X"ffffffce00000004ffffffee00000004fffffff1fffffff5fffffff0ffffffef",
            INIT_77 => X"0000001a00000027000000250000001500000004fffffffcffffffe9fffffffd",
            INIT_78 => X"0000002d0000002900000011000000150000001ffffffffb000000160000000e",
            INIT_79 => X"0000000bffffffe3ffffffd0ffffffe50000000f00000002000000170000001f",
            INIT_7A => X"fffffffbffffffebffffffe5fffffffe0000000affffffe9ffffffff00000012",
            INIT_7B => X"ffffffefffffffbbffffffacffffffdcffffffe8ffffffcefffffffa0000002b",
            INIT_7C => X"ffffffc6ffffffb6ffffffacffffffb0000000130000000200000007ffffffcd",
            INIT_7D => X"00000024fffffffeffffffec000000030000001100000019ffffffabffffffb6",
            INIT_7E => X"fffffff80000000bffffffec0000000a0000001a00000003ffffffffffffffe0",
            INIT_7F => X"ffffffcdfffffffefffffff8fffffffcffffffb7ffffffbaffffffb6ffffffba",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffdeffffffe2000000090000002e0000004efffffff40000002f00000010",
            INIT_01 => X"00000005fffffff6ffffffc3ffffffc3ffffffe4ffffffb3ffffffd3fffffff0",
            INIT_02 => X"fffffff9fffffffefffffff80000001000000000ffffffefffffffd300000006",
            INIT_03 => X"0000001e00000010fffffffe00000016ffffffef000000130000001ffffffff5",
            INIT_04 => X"000000120000000c0000000e0000000bfffffff50000000c0000000ffffffffd",
            INIT_05 => X"ffffffe5fffffff4fffffffb0000000cffffffecfffffffefffffff2fffffffb",
            INIT_06 => X"00000000fffffff300000001fffffffc0000000100000009ffffffe7fffffffa",
            INIT_07 => X"00000000fffffff5ffffffea00000001ffffffe6fffffffa00000002fffffff8",
            INIT_08 => X"ffffffe500000003ffffffeefffffff400000000fffffff6ffffffff00000005",
            INIT_09 => X"ffffffe9ffffffec0000000100000006ffffffebffffffeefffffffafffffff6",
            INIT_0A => X"fffffffe0000000500000001fffffff4fffffff400000000000000090000000a",
            INIT_0B => X"ffffffeffffffff9ffffffedfffffff5ffffffeb00000011fffffffffffffffb",
            INIT_0C => X"00000004fffffff50000000700000005ffffffe80000000400000006fffffff6",
            INIT_0D => X"ffffffe3ffffffff0000000500000005fffffffbfffffff6fffffff1ffffffe0",
            INIT_0E => X"00000014ffffffef0000000bfffffffc00000006fffffff00000000000000005",
            INIT_0F => X"00000000ffffffe3ffffffe5fffffffcfffffff1ffffffe300000006ffffffed",
            INIT_10 => X"fffffffd0000000dfffffff4fffffffc00000003ffffffe700000000ffffffe5",
            INIT_11 => X"000000070000001300000013000000060000000cfffffffafffffff200000008",
            INIT_12 => X"fffffff9fffffff3fffffffa00000013fffffff80000000dffffffebffffffee",
            INIT_13 => X"00000000000000030000000000000007fffffff20000000000000004fffffff8",
            INIT_14 => X"ffffffe4ffffffff0000000dfffffff80000000efffffff7ffffffeafffffffd",
            INIT_15 => X"fffffffdfffffff0fffffff20000000bffffffed0000000800000004fffffff8",
            INIT_16 => X"fffffffd0000000cfffffffefffffff70000000000000001ffffffeafffffff0",
            INIT_17 => X"00000005fffffff2ffffffecfffffffdfffffff7fffffffbfffffff8fffffff0",
            INIT_18 => X"ffffffedffffffeefffffffefffffffb00000003ffffffe700000004fffffff0",
            INIT_19 => X"00000009ffffffe7ffffffe900000000fffffff8fffffff40000000900000007",
            INIT_1A => X"ffffffeafffffffffffffff2fffffff5ffffffe9fffffff30000000100000006",
            INIT_1B => X"fffffff8ffffffeffffffffc00000008ffffffeffffffff9fffffff1ffffffe3",
            INIT_1C => X"00000009fffffff900000005fffffff1fffffffc00000002ffffffe70000000a",
            INIT_1D => X"fffffff8fffffff50000000effffffeefffffff1000000110000000efffffffc",
            INIT_1E => X"ffffffeafffffffafffffff0fffffff9ffffffe6fffffff6fffffff9fffffffb",
            INIT_1F => X"ffffffec00000004ffffffe1fffffffdfffffff70000000b00000001fffffff5",
            INIT_20 => X"ffffffdafffffff1fffffff1fffffff100000003ffffffe6fffffffcffffffea",
            INIT_21 => X"000000070000000200000011fffffff3fffffff500000010ffffffec00000000",
            INIT_22 => X"ffffffed000000030000000afffffffa0000000fffffffef0000000700000014",
            INIT_23 => X"fffffff70000000dffffffffffffffe8ffffffedfffffffe0000000100000004",
            INIT_24 => X"0000000200000001fffffffc000000000000000a00000000fffffff2fffffff1",
            INIT_25 => X"000000060000000400000005fffffff500000001fffffff8fffffffffffffffd",
            INIT_26 => X"fffffffcfffffffc00000008fffffff60000000600000005fffffffe00000001",
            INIT_27 => X"000000000000000bffffffebffffffec00000000fffffff000000003ffffffe9",
            INIT_28 => X"fffffffdfffffff7fffffffd00000003ffffffeb0000000ffffffff900000000",
            INIT_29 => X"ffffffdcffffffdb0000001500000002fffffffc00000004fffffff10000000a",
            INIT_2A => X"000000210000001000000019fffffff7ffffffee00000022ffffffd9ffffffb8",
            INIT_2B => X"00000030fffffff40000000a0000002f0000001c00000005000000050000002e",
            INIT_2C => X"fffffff600000028ffffffedffffffe60000002200000048000000020000002e",
            INIT_2D => X"000000110000001dfffffff70000001900000042000000360000001e00000014",
            INIT_2E => X"0000000fffffffdd000000340000003b00000027ffffffed000000480000002b",
            INIT_2F => X"0000002400000029fffffff4ffffffd5fffffffeffffffc9ffffffdc0000000a",
            INIT_30 => X"000000160000000cffffffe6fffffffdffffffdafffffffffffffff10000000d",
            INIT_31 => X"ffffffea0000001c0000001affffffeeffffffe300000003fffffffeffffffe8",
            INIT_32 => X"0000000600000000ffffffd1ffffffed0000002f00000010ffffffdc00000010",
            INIT_33 => X"ffffffffffffffdfffffffbe00000002ffffffebffffffec00000001fffffff0",
            INIT_34 => X"fffffffaffffffef00000006fffffffcfffffffaffffffe2ffffffc7ffffffb9",
            INIT_35 => X"fffffffbffffffdeffffffebfffffff500000015fffffff4ffffffe80000000f",
            INIT_36 => X"ffffffce0000000afffffff0fffffff3ffffffefffffffd900000017fffffffc",
            INIT_37 => X"fffffff7ffffffebfffffff8ffffffd9ffffffbf00000003ffffffee00000000",
            INIT_38 => X"fffffffd0000000000000002fffffff90000000f0000000dfffffff000000013",
            INIT_39 => X"ffffffdeffffffc9ffffffdfffffffe0ffffffea00000006ffffffe7ffffffd1",
            INIT_3A => X"ffffffdeffffffaaffffffd600000024ffffffbd00000015fffffff900000018",
            INIT_3B => X"ffffffc000000000ffffffd9ffffffc10000002e00000013ffffffef0000000a",
            INIT_3C => X"0000002e000000310000001100000007fffffff400000012fffffff0ffffffef",
            INIT_3D => X"00000004fffffffc00000000ffffffe7ffffffeafffffffb0000002e0000000e",
            INIT_3E => X"fffffff0000000220000000400000001ffffffef0000000500000002fffffffa",
            INIT_3F => X"fffffffa00000009ffffffdffffffff1fffffffafffffffe00000002fffffff5",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff2ffffffb3fffffff0ffffffeafffffffc00000004fffffffb0000000f",
            INIT_41 => X"ffffffcbfffffffbffffffdcfffffff400000005fffffff7ffffffda00000023",
            INIT_42 => X"00000016ffffffe0ffffffa20000000fffffffe6ffffffb100000018fffffffa",
            INIT_43 => X"ffffffe50000000800000024000000020000001e0000004dffffffd5ffffffc4",
            INIT_44 => X"ffffffbcffffffe3ffffffeeffffffd1ffffffd9ffffffecfffffffffffffff0",
            INIT_45 => X"00000024ffffffe20000000c0000000c00000009ffffffe800000012fffffffc",
            INIT_46 => X"00000008ffffffde0000001afffffff8ffffffeb0000000affffffcffffffff8",
            INIT_47 => X"0000002a0000001d0000002a00000014ffffffe4ffffffcdffffffdf00000005",
            INIT_48 => X"0000000400000025ffffffe90000003800000069000000560000002a00000016",
            INIT_49 => X"000000030000001afffffff6ffffff9bffffffd6fffffff5fffffffbffffffcb",
            INIT_4A => X"0000000a0000002800000005ffffffd6fffffffefffffff6ffffffe900000015",
            INIT_4B => X"0000000e000000180000001f0000001700000006fffffffc00000007fffffffd",
            INIT_4C => X"0000000f00000001000000020000001efffffff7ffffffe9ffffffeb00000005",
            INIT_4D => X"00000019000000220000002f0000002cfffffff0fffffffe0000001efffffff0",
            INIT_4E => X"0000001200000011fffffff9ffffffe5ffffffd4ffffffe40000000000000016",
            INIT_4F => X"0000003700000005ffffffe5fffffff300000027000000100000001afffffff8",
            INIT_50 => X"00000010ffffffecffffffd0ffffffef00000006000000350000002500000006",
            INIT_51 => X"00000022fffffffdfffffff4ffffffea0000004600000000ffffffda00000000",
            INIT_52 => X"fffffff5fffffffc0000001a000000000000000600000008fffffff900000026",
            INIT_53 => X"00000020000000180000000800000026000000050000000d0000001dffffffdf",
            INIT_54 => X"fffffff300000009fffffffbffffffeb0000001300000028fffffff300000000",
            INIT_55 => X"fffffff1ffffffecfffffff20000001100000011ffffffd0ffffffe7ffffffef",
            INIT_56 => X"ffffffe800000018ffffffebffffffc10000002200000008ffffffd9ffffffd0",
            INIT_57 => X"000000140000000d00000031fffffff7000000140000002d00000020ffffffd1",
            INIT_58 => X"ffffffe4ffffffc800000008ffffffe1ffffffd7ffffffeafffffffd00000013",
            INIT_59 => X"fffffffd000000110000001afffffff8fffffffbffffffdfffffffcf0000000d",
            INIT_5A => X"fffffffb0000001f0000000d00000004000000000000000d0000000efffffffc",
            INIT_5B => X"fffffff6ffffffffffffffeffffffff1ffffffc900000000fffffff7fffffff0",
            INIT_5C => X"ffffffc0ffffffcffffffff900000019ffffffcfffffffd2fffffffc00000016",
            INIT_5D => X"0000004900000002ffffffd900000047ffffffe4ffffffe900000012fffffffd",
            INIT_5E => X"ffffffef000000140000001300000008000000180000000dfffffffc00000002",
            INIT_5F => X"ffffffd900000030ffffffe3ffffffc0ffffffe5ffffffd2ffffffe600000004",
            INIT_60 => X"00000035fffffffdffffffdffffffff400000006ffffffd300000010fffffff0",
            INIT_61 => X"000000110000001c00000013000000170000000c0000000fffffffedfffffffb",
            INIT_62 => X"00000016fffffffc000000120000001b00000016000000020000002effffffff",
            INIT_63 => X"0000001200000002fffffff2fffffff3ffffffda000000040000000affffffe2",
            INIT_64 => X"0000001bfffffff100000002fffffff7ffffffe90000000bfffffff300000019",
            INIT_65 => X"ffffffeb00000008ffffffee0000000a0000002dfffffff4ffffffe900000000",
            INIT_66 => X"ffffffd6fffffff400000023ffffffcc0000000a00000030ffffffefffffffe9",
            INIT_67 => X"0000005300000025000000460000004800000013ffffffed0000001d00000021",
            INIT_68 => X"000000200000000a0000003b00000021ffffffe900000010000000380000004f",
            INIT_69 => X"0000002dffffffcbffffff9800000021ffffffeaffffffd5ffffffe100000018",
            INIT_6A => X"fffffffd0000002c00000014ffffffe1000000020000001efffffffbffffffde",
            INIT_6B => X"fffffff2ffffffeaffffffdefffffffcfffffff80000001a0000003cffffffe0",
            INIT_6C => X"0000002dfffffff9ffffffda000000210000004e00000045fffffff30000002b",
            INIT_6D => X"0000003400000017ffffffd8ffffffd000000009fffffff8ffffffe100000000",
            INIT_6E => X"ffffffaeffffffd9ffffffd60000000affffffdd00000001000000290000000c",
            INIT_6F => X"0000004f00000011ffffffd900000017ffffffd0ffffff9b00000024ffffffe5",
            INIT_70 => X"0000000a000000080000000000000003fffffffefffffff9fffffffefffffffc",
            INIT_71 => X"00000017ffffffafffffffb000000013ffffffaeffffffb700000002ffffffff",
            INIT_72 => X"000000500000002affffffdc0000004300000028ffffffddfffffff1ffffffff",
            INIT_73 => X"00000014fffffff5fffffffb00000001ffffffe60000001dfffffffb00000006",
            INIT_74 => X"0000000dfffffffa0000002cffffffe9000000300000002dffffffe50000002a",
            INIT_75 => X"00000018ffffffedffffffe900000016fffffff9ffffffe3000000450000006e",
            INIT_76 => X"ffffffe00000000000000005fffffffcffffffe60000002c00000009ffffffe5",
            INIT_77 => X"00000006000000030000001e00000027fffffff800000006fffffff1ffffffd4",
            INIT_78 => X"ffffffe0ffffffe20000000500000002ffffffe900000005ffffffdbfffffffb",
            INIT_79 => X"ffffffe80000001700000004fffffff2fffffff900000027ffffffdbfffffffa",
            INIT_7A => X"00000004ffffffbbffffffd000000021ffffffa5ffffffe3fffffff20000000b",
            INIT_7B => X"0000000affffffd60000000700000016ffffffd2ffffffe9ffffffc8ffffffd2",
            INIT_7C => X"ffffffeeffffffde000000160000000dfffffff3fffffffb000000090000000a",
            INIT_7D => X"000000090000001e0000001effffffe2ffffffddfffffffbffffffe100000008",
            INIT_7E => X"ffffffbbffffffd700000012000000120000002b000000160000000d00000007",
            INIT_7F => X"ffffffe6ffffffd0ffffffbdffffffe800000033ffffffc30000000000000064",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffff2ffffffdfffffffd9ffffffdf000000030000000cffffffe600000029",
            INIT_01 => X"0000000a000000030000001300000026000000360000000f0000000a00000007",
            INIT_02 => X"ffffffb9fffffff4ffffffa2ffffff9afffffffaffffff7cffffffcd0000002a",
            INIT_03 => X"00000027ffffffd7fffffff100000040ffffffe4fffffff200000018ffffffcf",
            INIT_04 => X"ffffffee00000019ffffffea0000000d0000000bfffffff0ffffffddfffffff0",
            INIT_05 => X"fffffffe00000001000000340000002bfffffff3000000000000001bfffffff8",
            INIT_06 => X"00000011000000040000001e0000001c0000000e00000014000000050000001d",
            INIT_07 => X"000000100000000000000013ffffffea0000001ffffffffaffffffee00000009",
            INIT_08 => X"fffffff7ffffffee00000000fffffffc00000000000000260000001200000007",
            INIT_09 => X"00000007000000180000001c00000000ffffffe80000000ffffffff3fffffffc",
            INIT_0A => X"fffffff50000000effffffef0000002a00000003ffffffea0000002700000011",
            INIT_0B => X"ffffffe3fffffff30000005300000014ffffffcb000000580000002affffffc9",
            INIT_0C => X"0000000bfffffff1fffffffc00000015ffffffdaffffffd70000000600000028",
            INIT_0D => X"fffffffbfffffff900000033ffffffd6000000070000000ffffffff2fffffffd",
            INIT_0E => X"00000001ffffffeeffffffecffffffe100000000ffffffc3ffffffe600000009",
            INIT_0F => X"fffffff90000001700000026000000180000001afffffff8fffffff9fffffffc",
            INIT_10 => X"fffffff800000013fffffff300000009fffffff8ffffffd8fffffffa00000007",
            INIT_11 => X"0000001ffffffff4ffffffe7ffffffe7ffffffe60000000affffffec00000018",
            INIT_12 => X"fffffff7ffffffed0000001600000009ffffffecfffffffe0000000d0000000a",
            INIT_13 => X"ffffffe900000007000000200000000f000000080000002600000003fffffff9",
            INIT_14 => X"ffffffdafffffffffffffff600000009fffffff4000000070000001000000004",
            INIT_15 => X"ffffffa4ffffffa9ffffff74ffffff8affffffa8ffffffbeffffff99fffffff8",
            INIT_16 => X"000000150000003700000010000000220000002100000012ffffffccffffffa0",
            INIT_17 => X"0000000000000022fffffffeffffffe3000000240000001afffffffb0000002b",
            INIT_18 => X"0000005f0000002c0000002900000046ffffffe4fffffffcfffffff6ffffffe4",
            INIT_19 => X"fffffff8000000040000000dfffffff100000029000000510000000400000015",
            INIT_1A => X"ffffffffffffffe2ffffffeeffffffe600000002000000060000001d00000000",
            INIT_1B => X"fffffff1fffffff6fffffffd000000190000000bfffffff3fffffffcffffffeb",
            INIT_1C => X"fffffff70000003c000000280000000b0000000a000000170000001f00000024",
            INIT_1D => X"ffffffc8ffffffc3ffffffd7ffffffa1ffffffcf00000003fffffffdfffffffd",
            INIT_1E => X"fffffff9ffffffedfffffff0ffffffedffffffffffffffe9fffffff500000016",
            INIT_1F => X"ffffffcfffffffa0ffffffd2ffffffe5ffffffe2ffffffd200000025fffffff7",
            INIT_20 => X"0000000400000018ffffffdfffffffd8ffffffdcfffffff9ffffffc9fffffff0",
            INIT_21 => X"0000000cffffffefffffffe5ffffffe8ffffffebffffffea00000009ffffffe5",
            INIT_22 => X"000000020000001b0000000d000000100000001d0000001bffffffea00000009",
            INIT_23 => X"fffffffffffffffefffffffc0000000e0000001500000013fffffff5fffffffa",
            INIT_24 => X"ffffffe8fffffff2ffffffe1fffffff80000000200000007ffffffe8ffffffe4",
            INIT_25 => X"0000000c000000180000002bffffffe8ffffffe800000014ffffffd9fffffff5",
            INIT_26 => X"ffffffeeffffffe0fffffff0ffffffd7ffffffb1ffffffefffffffd3ffffffb0",
            INIT_27 => X"0000000d00000003ffffffecfffffff8ffffffd6ffffffd9fffffff90000000f",
            INIT_28 => X"fffffff60000000bfffffff60000001900000029fffffff000000006fffffffe",
            INIT_29 => X"0000001700000005fffffffe0000000a00000005ffffffe4ffffffebfffffff4",
            INIT_2A => X"0000001400000007fffffffcfffffff8000000050000001e0000000ffffffffa",
            INIT_2B => X"fffffffcfffffff2ffffffe9ffffffdefffffffd0000001cffffffed00000006",
            INIT_2C => X"ffffffe5ffffffef0000000afffffffb00000012ffffffecfffffff6ffffffe9",
            INIT_2D => X"0000002700000014fffffff6fffffff300000008fffffff9ffffffe4fffffff4",
            INIT_2E => X"0000000400000008fffffff000000012fffffff6ffffffeb0000001200000005",
            INIT_2F => X"00000010ffffffd00000002afffffff1000000000000000ffffffffffffffffe",
            INIT_30 => X"00000008000000090000001b0000000800000020000000140000001d00000031",
            INIT_31 => X"00000006000000060000001e00000014fffffffefffffff7fffffff1ffffffed",
            INIT_32 => X"ffffffe70000000300000005ffffffeafffffffd0000003a0000000100000000",
            INIT_33 => X"0000000300000011000000290000003400000000fffffffc000000140000001f",
            INIT_34 => X"0000001500000009ffffffdb0000000c00000021000000090000000300000031",
            INIT_35 => X"0000001100000003000000000000000cfffffff50000002e00000002ffffffe1",
            INIT_36 => X"00000017ffffffddfffffff600000002fffffff70000000d0000000d0000000f",
            INIT_37 => X"0000000a000000180000002d0000001e000000170000001a0000001500000000",
            INIT_38 => X"fffffff8000000070000000affffffebfffffff7ffffffdf0000000100000008",
            INIT_39 => X"00000005ffffffed0000002d00000023fffffff30000000a0000000400000000",
            INIT_3A => X"fffffff3000000060000001e000000560000002e0000000bffffffaeffffffce",
            INIT_3B => X"0000000cffffffc6000000000000001500000004ffffffefffffffe4ffffffed",
            INIT_3C => X"fffffff3000000220000001b0000003700000013fffffff2ffffffba0000002a",
            INIT_3D => X"ffffffe1ffffffb3ffffffd9ffffffd0ffffffd7fffffff1ffffffd800000006",
            INIT_3E => X"fffffff3000000190000004400000029000000290000000fffffffb10000000c",
            INIT_3F => X"0000000bffffffe1ffffffe3fffffff400000017ffffffeaffffffdf00000012",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffeaffffffef00000002ffffffff0000001ffffffff10000001300000005",
            INIT_41 => X"ffffffd5ffffffe200000021fffffffe000000280000001a00000011ffffffed",
            INIT_42 => X"fffffff5ffffffd7ffffffe3ffffffeefffffff0ffffffe8ffffffd5ffffffe5",
            INIT_43 => X"ffffffedfffffffe00000033ffffffe40000000000000011fffffffbffffffe0",
            INIT_44 => X"ffffffdefffffff7fffffff2fffffff200000017ffffffddffffffeffffffff9",
            INIT_45 => X"00000012ffffffd6ffffffd8fffffffafffffff8ffffffe8fffffffbffffffe9",
            INIT_46 => X"000000310000000500000005000000310000001e000000080000000800000004",
            INIT_47 => X"ffffffad00000003ffffffea00000003ffffffe700000009000000150000001e",
            INIT_48 => X"000000000000003d0000001d0000003600000009ffffffcc00000044ffffffae",
            INIT_49 => X"00000018ffffffe50000000300000015000000110000000c000000190000000c",
            INIT_4A => X"ffffffdc0000001effffffbf0000000c00000003ffffffdbffffffe90000000d",
            INIT_4B => X"ffffffe2fffffff9fffffff6ffffffc500000002fffffff6ffffffd7ffffffd6",
            INIT_4C => X"0000004d0000004d000000100000002500000034fffffffc00000026ffffffda",
            INIT_4D => X"ffffffd800000010ffffffebffffffdf00000001ffffffedffffffff0000001c",
            INIT_4E => X"ffffffec0000000bffffffee0000002400000018ffffffff0000002600000025",
            INIT_4F => X"00000016ffffffe8ffffffedfffffffdffffffec0000000000000000ffffffdc",
            INIT_50 => X"fffffffeffffffca0000001f000000070000000c00000020ffffffe2fffffff1",
            INIT_51 => X"fffffff40000000cfffffff5ffffffec00000000fffffffaffffffdffffffff4",
            INIT_52 => X"00000028000000110000002b0000001b000000100000000cffffffebffffffbc",
            INIT_53 => X"ffffffe5ffffffdcfffffff90000003b00000026000000310000006d00000010",
            INIT_54 => X"fffffff0fffffff100000004fffffffb0000002800000013fffffff8ffffffe5",
            INIT_55 => X"0000001afffffff20000001700000009fffffffffffffff6ffffffbfffffffec",
            INIT_56 => X"0000000e00000005ffffffe0ffffffdb0000000b00000006fffffff9ffffffed",
            INIT_57 => X"fffffffd000000350000001300000018fffffff70000000600000010fffffff3",
            INIT_58 => X"ffffffdeffffffda00000002fffffffffffffff9fffffff10000000a0000000f",
            INIT_59 => X"ffffffde00000006fffffff7fffffff7ffffffecffffffe20000001900000008",
            INIT_5A => X"fffffffa00000011000000050000000200000000ffffffe500000006fffffffa",
            INIT_5B => X"00000028000000180000001f0000001d0000001bfffffffe0000000b00000001",
            INIT_5C => X"fffffff900000014000000000000001dfffffff700000001fffffffb00000008",
            INIT_5D => X"ffffffeefffffff8fffffff7fffffffafffffff800000010fffffff1fffffffe",
            INIT_5E => X"000000170000002afffffff7ffffffcafffffff8ffffffe000000023fffffff5",
            INIT_5F => X"ffffffe6ffffffdb000000080000000b0000001c000000590000006000000051",
            INIT_60 => X"00000025ffffffb1ffffffd9fffffff8ffffffdbfffffff200000019fffffff5",
            INIT_61 => X"00000013000000150000000700000014000000270000004fffffffd40000000d",
            INIT_62 => X"0000000affffffee00000001ffffffe60000000a00000003ffffffddffffffec",
            INIT_63 => X"fffffff9fffffff4fffffff20000000b00000008ffffffe1ffffffe300000019",
            INIT_64 => X"0000001e000000160000000c0000000000000002ffffffed0000001fffffffd8",
            INIT_65 => X"ffffffed0000001cffffffd90000001600000014ffffffbbffffffd800000004",
            INIT_66 => X"0000000ffffffff30000002f00000027fffffffefffffffaffffffec00000000",
            INIT_67 => X"fffffff80000000700000006ffffffc4fffffff2ffffffe2ffffffdb0000000b",
            INIT_68 => X"fffffffeffffffee0000001dfffffff1ffffffeffffffffefffffff0ffffffda",
            INIT_69 => X"fffffffa000000020000000effffffeffffffffe0000002c0000000100000032",
            INIT_6A => X"0000002d000000080000000afffffff9ffffffdcffffffd100000014fffffff5",
            INIT_6B => X"0000000e0000001500000006000000130000000cffffffdf000000180000000b",
            INIT_6C => X"ffffffe400000010ffffffe20000001200000000000000020000000100000010",
            INIT_6D => X"ffffffd30000000000000012fffffff6fffffffdffffffed0000000affffffd5",
            INIT_6E => X"fffffffc00000023000000600000004a000000710000002d0000002f00000025",
            INIT_6F => X"000000120000000c0000001500000005000000050000000dffffffe50000001f",
            INIT_70 => X"fffffff3ffffffd600000002fffffff200000001ffffffffffffffed00000007",
            INIT_71 => X"ffffffc7fffffff900000024ffffffe2fffffff7fffffff0ffffffdbffffffdb",
            INIT_72 => X"fffffff20000002a0000001300000006fffffffbfffffff1fffffff7ffffffd0",
            INIT_73 => X"0000001ffffffffdfffffff4000000040000000400000001ffffffe1ffffffca",
            INIT_74 => X"fffffff8fffffff3fffffffefffffffb00000017ffffffe3fffffff9ffffffcd",
            INIT_75 => X"00000000ffffffef0000000300000015fffffff30000000c00000024fffffff0",
            INIT_76 => X"fffffff0ffffffc1ffffffea00000024fffffff7000000030000001cffffffeb",
            INIT_77 => X"0000000200000014ffffffddffffffeefffffff5ffffffe30000001000000009",
            INIT_78 => X"0000001300000003ffffffeb000000080000000000000000ffffffff00000000",
            INIT_79 => X"fffffff70000002a0000000effffffe10000000ffffffffc0000001500000026",
            INIT_7A => X"ffffffeefffffff300000007ffffffe7ffffffd8ffffffd3ffffffec00000003",
            INIT_7B => X"fffffff9fffffffcfffffff5ffffffc2000000270000001d00000014fffffff2",
            INIT_7C => X"0000002d00000032fffffffeffffffe5fffffff300000023fffffffbfffffff6",
            INIT_7D => X"000000000000003200000014fffffffbffffffe900000042fffffff3fffffffa",
            INIT_7E => X"ffffffeffffffff6fffffff3fffffff9fffffff2ffffffd7fffffffa00000027",
            INIT_7F => X"fffffff0fffffffd0000000a000000140000001dfffffff8fffffff900000019",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000001c0000002a0000000b00000014000000090000001effffffecffffffef",
            INIT_01 => X"ffffffd60000000c000000060000002cfffffffd00000013000000270000001c",
            INIT_02 => X"00000034000000520000001400000011fffffffe0000000e0000000dffffffd4",
            INIT_03 => X"0000003d0000002b0000001f000000380000002c000000270000002100000041",
            INIT_04 => X"00000034ffffffe0fffffffc0000002dffffffdefffffffc000000020000000e",
            INIT_05 => X"000000320000000cfffffff3ffffffe7fffffff700000005ffffffe300000050",
            INIT_06 => X"ffffffdd000000020000001d0000000f0000002f0000000ffffffff7ffffffff",
            INIT_07 => X"fffffffcfffffff40000000f00000006ffffffbaffffffd6ffffffd6fffffff9",
            INIT_08 => X"000000030000001e0000001c0000000a000000260000000b00000002ffffffe7",
            INIT_09 => X"ffffffe0ffffffe4fffffff400000002fffffffefffffff0000000240000002c",
            INIT_0A => X"0000000000000000ffffffdfffffffda000000230000001e0000000800000004",
            INIT_0B => X"ffffffe5fffffff000000002ffffffe6fffffff300000025fffffffdfffffff3",
            INIT_0C => X"00000009ffffffdd00000002ffffffdf0000000fffffffe9ffffffd6fffffff8",
            INIT_0D => X"ffffffc80000000700000005ffffffd2ffffffeaffffffdc00000018fffffff3",
            INIT_0E => X"fffffff2ffffffcefffffff60000000400000007ffffffe6fffffff7ffffffe3",
            INIT_0F => X"0000001bfffffffd0000001e000000150000001c000000050000000100000029",
            INIT_10 => X"ffffffc50000001a0000003d000000420000001700000001ffffffe000000001",
            INIT_11 => X"ffffffef0000000dffffffe100000010ffffffc8ffffffa30000000afffffff3",
            INIT_12 => X"ffffffffffffffebffffffc2ffffffeb0000000afffffff6ffffffd100000043",
            INIT_13 => X"0000002200000001fffffff7000000090000001cfffffff9ffffffe200000026",
            INIT_14 => X"ffffffdfffffffe3ffffffbe0000001effffffe1ffffffd3000000020000000c",
            INIT_15 => X"fffffff3ffffffddfffffff300000005fffffff500000004fffffff900000020",
            INIT_16 => X"ffffffd70000001ffffffff100000023fffffff1ffffffe80000001c00000011",
            INIT_17 => X"000000230000002a0000000100000010fffffff5ffffffea00000018ffffffe0",
            INIT_18 => X"fffffff7fffffff800000006000000110000000b00000016fffffffdffffffe3",
            INIT_19 => X"0000003a0000002400000034fffffff00000001efffffff4ffffffcc0000000a",
            INIT_1A => X"ffffffddffffffe700000001ffffffc5ffffffd600000001fffffff8fffffff8",
            INIT_1B => X"fffffff5ffffffed0000002000000032000000250000004b00000029fffffff2",
            INIT_1C => X"ffffffeeffffffea000000120000001effffffe0ffffffe5fffffffcfffffffb",
            INIT_1D => X"00000028ffffffedfffffffc00000032ffffffecfffffffe00000000fffffff5",
            INIT_1E => X"00000004ffffffe60000000cfffffff6ffffffdf000000050000001d00000014",
            INIT_1F => X"0000001500000003000000580000001700000011ffffffea0000000c00000017",
            INIT_20 => X"0000000dffffff99ffffffc0ffffffd00000001c00000019ffffffe70000005c",
            INIT_21 => X"fffffff800000005fffffff600000015fffffffefffffff6ffffffe3ffffffe7",
            INIT_22 => X"0000000000000029000000060000000a0000000200000000fffffff40000000d",
            INIT_23 => X"fffffffefffffffe0000000400000020fffffffafffffff2000000130000000f",
            INIT_24 => X"0000000b0000000c0000001700000013000000020000000900000009fffffff4",
            INIT_25 => X"0000000e0000001000000000fffffff4000000360000001b0000002a0000000d",
            INIT_26 => X"ffffffff0000001900000042000000250000000a000000390000001d00000021",
            INIT_27 => X"ffffffcdffffffd000000013ffffffe1ffffffdc000000170000001800000015",
            INIT_28 => X"000000100000002c000000210000001bffffffc5ffffffb9ffffffbfffffffe1",
            INIT_29 => X"0000000f0000000cfffffff600000005fffffffaffffffe80000004000000043",
            INIT_2A => X"00000018fffffffdfffffffafffffff60000001e0000000000000015ffffffdb",
            INIT_2B => X"00000000ffffffeaffffffe6fffffffefffffffb000000180000000200000032",
            INIT_2C => X"000000180000000affffffe8000000000000000700000013ffffffeaffffffff",
            INIT_2D => X"fffffffb00000028fffffff00000000a0000001efffffff5ffffffd00000000d",
            INIT_2E => X"ffffffefffffffeb00000003fffffffc000000000000001a0000000500000000",
            INIT_2F => X"0000001b00000015fffffffa0000000cfffffff0000000150000000cfffffff0",
            INIT_30 => X"0000000dffffffc700000027000000130000001f0000001a000000170000001b",
            INIT_31 => X"000000000000002c0000000effffffffffffffe60000002d00000003fffffff2",
            INIT_32 => X"000000060000000dfffffff7ffffffd1ffffffe1ffffffe10000000cffffffe7",
            INIT_33 => X"00000015000000170000001100000015ffffffdd00000009000000190000000f",
            INIT_34 => X"0000000cfffffff900000011fffffffffffffff3ffffffeaffffffca00000034",
            INIT_35 => X"ffffffe900000000fffffff4000000090000000d000000050000003300000022",
            INIT_36 => X"00000022ffffffff0000002f00000006fffffff4ffffffe50000003400000002",
            INIT_37 => X"ffffffd6fffffff60000001afffffff10000001c0000001b0000002500000012",
            INIT_38 => X"ffffffccfffffff0ffffffc7ffffffccffffffccffffff9bffffffea00000001",
            INIT_39 => X"fffffffbfffffff80000000efffffffb00000000ffffffd600000015ffffffd3",
            INIT_3A => X"ffffffdaffffffda00000000ffffffeefffffff2000000080000000b00000006",
            INIT_3B => X"fffffff80000001b00000016000000080000000cffffffecfffffff1ffffffd6",
            INIT_3C => X"000000240000001b0000000efffffff90000001dffffffe5ffffffedffffffe5",
            INIT_3D => X"ffffffdbffffffebffffffde000000050000001fffffffebfffffffd00000035",
            INIT_3E => X"ffffffe10000002000000010ffffffe70000000dffffffdc0000000e00000012",
            INIT_3F => X"fffffff00000001dffffffcdffffffe900000007ffffffd5ffffffc2fffffff3",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffebfffffffd0000000d0000001bffffffcbffffffeefffffff800000019",
            INIT_41 => X"ffffffe7fffffff400000019fffffff90000002500000019fffffff60000000e",
            INIT_42 => X"ffffffe1fffffffafffffffefffffff2fffffff5ffffffe00000000afffffff1",
            INIT_43 => X"ffffffc000000010ffffffdbffffffdaffffffd5ffffffda00000002fffffff2",
            INIT_44 => X"fffffff3ffffffe7ffffffe6ffffffc4ffffffd4ffffffddffffffeaffffffbb",
            INIT_45 => X"ffffffe5ffffffe9ffffffeb0000000100000003ffffffddfffffff2fffffff1",
            INIT_46 => X"00000025ffffffee0000000ffffffff1ffffffd1ffffffdbffffffd9ffffffc5",
            INIT_47 => X"ffffffd4ffffffdcffffffec00000000000000000000000e0000004300000039",
            INIT_48 => X"ffffffff0000000500000015fffffff9fffffff1000000160000000dfffffff0",
            INIT_49 => X"0000001f0000002700000001fffffffaffffffe9ffffffe2ffffffdffffffffb",
            INIT_4A => X"ffffffa6ffffffb3ffffffc6ffffffe1ffffffc70000000e0000001400000005",
            INIT_4B => X"ffffffc5fffffff2ffffffb3ffffffb60000001bffffffa9ffffffa9ffffffe4",
            INIT_4C => X"ffffffa0ffffffc6ffffffa8ffffffdaffffff940000001e00000019ffffffa7",
            INIT_4D => X"ffffffeaffffffd4ffffffc1ffffffa8fffffff4ffffffc4ffffff9bffffffc5",
            INIT_4E => X"fffffff2fffffff4000000100000000bfffffffb00000015fffffff0ffffffda",
            INIT_4F => X"00000029ffffffca000000000000000affffffe10000000bfffffff3ffffffdb",
            INIT_50 => X"ffffffdb0000000a000000270000000c0000002600000031fffffff10000001d",
            INIT_51 => X"00000017fffffffc0000001500000017ffffffe6000000220000000000000001",
            INIT_52 => X"fffffff000000027ffffffd4fffffffe00000036ffffffecffffffe90000000a",
            INIT_53 => X"ffffffff00000007fffffff20000001600000008fffffff60000004700000021",
            INIT_54 => X"ffffff7affffffd1ffffffbdffffff9cffffff8600000001fffffff8fffffffd",
            INIT_55 => X"00000003ffffffd1fffffff2ffffffe2ffffffe8fffffff500000015ffffffbe",
            INIT_56 => X"ffffffe80000000000000007fffffff5fffffffefffffff2fffffff400000000",
            INIT_57 => X"ffffffccffffffad00000000ffffffe400000017ffffffecfffffff2fffffffe",
            INIT_58 => X"ffffffd9ffffffd6ffffffe3ffffffd0ffffffdfffffffaeffffffd4ffffffe3",
            INIT_59 => X"0000001700000013000000080000002f0000001600000011fffffff5ffffffeb",
            INIT_5A => X"0000000c000000020000000c0000000200000012000000100000002600000033",
            INIT_5B => X"fffffffafffffff6ffffffe4fffffff4ffffffd8ffffffeefffffff1ffffffde",
            INIT_5C => X"ffffffdaffffffd8ffffffee000000100000001c00000011fffffffbffffffe9",
            INIT_5D => X"000000240000002e0000001a00000034fffffffbffffffc0ffffffbaffffffb0",
            INIT_5E => X"fffffff9fffffff0ffffffebffffffe7fffffffa0000002d0000001d0000001e",
            INIT_5F => X"0000000500000000fffffff0fffffffcfffffffa00000000ffffffef00000015",
            INIT_60 => X"000000000000000600000000000000280000000c00000017fffffff8fffffffc",
            INIT_61 => X"000000050000001a000000040000000b0000002a0000000c00000013ffffffee",
            INIT_62 => X"fffffff50000001efffffff700000003fffffffb00000011fffffff400000029",
            INIT_63 => X"000000540000007a0000002f0000006d0000004f000000330000001a00000006",
            INIT_64 => X"0000000dfffffff40000000300000032fffffffb000000130000002a00000064",
            INIT_65 => X"0000001efffffff9ffffffed00000023fffffff7fffffff8ffffffd500000010",
            INIT_66 => X"0000000d0000001b00000013fffffff2fffffff80000003affffffff00000003",
            INIT_67 => X"ffffffb1fffffff6ffffffbbfffffff8fffffff30000000bfffffffdfffffff1",
            INIT_68 => X"000000060000001500000018ffffffafffffffd2ffffffeaffffffb9ffffffa3",
            INIT_69 => X"0000002000000027fffffffffffffff80000001500000000ffffffe8ffffffdd",
            INIT_6A => X"ffffffdfffffffd3fffffff6fffffff5000000010000002100000012fffffffc",
            INIT_6B => X"0000003700000015000000140000001affffffeefffffff500000006fffffff1",
            INIT_6C => X"fffffff00000000a0000000ffffffffafffffffefffffff9fffffff900000000",
            INIT_6D => X"fffffff6ffffffcfffffff86ffffffacffffff99ffffff8bffffffb600000006",
            INIT_6E => X"0000001400000007000000020000004200000047ffffffdcffffffd6ffffffca",
            INIT_6F => X"00000009fffffff10000004400000016fffffffbffffffd7ffffffe8ffffffe8",
            INIT_70 => X"0000001c000000210000003000000030ffffffcfffffffe000000001ffffffe3",
            INIT_71 => X"0000001e0000003e000000190000000ffffffffe000000110000004d00000006",
            INIT_72 => X"ffffffd7ffffffdc0000001300000018000000070000001f0000001f0000001f",
            INIT_73 => X"fffffffa00000003ffffffebffffffd1ffffffe5ffffffd7fffffff0ffffffc2",
            INIT_74 => X"000000090000001900000024000000050000001e000000160000001000000019",
            INIT_75 => X"ffffffd1ffffffd9ffffffefffffffcbffffffddfffffff8ffffffe4fffffffa",
            INIT_76 => X"ffffffe500000004fffffffbffffffc1ffffffefffffffe4ffffffa200000000",
            INIT_77 => X"ffffffddffffffcdfffffffbffffffcbffffffbcffffffe7ffffffdf00000009",
            INIT_78 => X"ffffffe3ffffffeb00000013ffffffd0ffffffc9ffffffe6ffffffdf0000000d",
            INIT_79 => X"fffffff500000011fffffff400000000ffffffddffffffd600000012ffffffe1",
            INIT_7A => X"ffffffd4ffffffd3ffffffcf0000001800000011fffffff90000000f00000001",
            INIT_7B => X"ffffffebfffffffb00000006ffffffeeffffffc9ffffffe1ffffffd2fffffff4",
            INIT_7C => X"ffffffc3ffffffd600000000fffffff3ffffffebfffffffefffffff300000012",
            INIT_7D => X"0000002400000039fffffff4000000060000000affffffd6fffffff6ffffffe7",
            INIT_7E => X"ffffffbfffffffc7ffffffbeffffffc5ffffffa6ffffffa7ffffffeaffffffd5",
            INIT_7F => X"0000001cffffffe3ffffffef00000001ffffffdcffffffbfffffffdeffffffb7",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000007ffffffe9ffffffe8000000270000000e0000001effffffe600000000",
            INIT_01 => X"000000270000000f00000006fffffffe00000008ffffffef00000000ffffffaa",
            INIT_02 => X"ffffffef000000200000000fffffffeb0000002f00000017fffffff900000022",
            INIT_03 => X"fffffffffffffffcfffffff80000001900000016fffffff90000000300000010",
            INIT_04 => X"ffffffdaffffffc2000000160000001a000000010000000c000000080000000a",
            INIT_05 => X"00000018fffffffdffffffeb0000000cffffffe4fffffff5ffffffccffffffc5",
            INIT_06 => X"fffffffa0000000cfffffff6ffffffef0000001500000019000000110000000a",
            INIT_07 => X"ffffffdeffffffa400000005fffffff2ffffffb7ffffffff0000002bffffffed",
            INIT_08 => X"fffffff500000005fffffff2ffffffff000000250000002a0000001000000006",
            INIT_09 => X"fffffffafffffff3fffffff00000000ffffffffbffffffe700000005ffffffe6",
            INIT_0A => X"00000008ffffffe5ffffffe0ffffffc8ffffffebfffffff800000009fffffff3",
            INIT_0B => X"0000000800000037000000130000001c0000000400000000ffffffbefffffff6",
            INIT_0C => X"ffffffd900000005fffffffa00000012ffffffadffffffe3fffffff200000000",
            INIT_0D => X"0000003200000019ffffffcb00000002ffffffe1ffffffdffffffff2ffffffd6",
            INIT_0E => X"00000000000000170000001afffffff8000000110000001ffffffff80000000c",
            INIT_0F => X"00000004fffffffd0000002afffffffd000000160000001200000000ffffffeb",
            INIT_10 => X"ffffffe9000000000000000a000000030000000d00000014ffffffeeffffffee",
            INIT_11 => X"fffffff50000000a0000001c000000050000003e0000000f0000001600000017",
            INIT_12 => X"0000000e0000001bfffffffc0000000100000000ffffffe90000000300000000",
            INIT_13 => X"00000006000000320000000fffffffe3ffffffce0000001c0000000afffffff4",
            INIT_14 => X"0000000b00000002fffffffcffffffee000000000000000b0000002fffffffe7",
            INIT_15 => X"0000000300000018fffffff700000007fffffffc0000002200000008fffffffb",
            INIT_16 => X"0000001b000000000000002200000004ffffffef00000009ffffffeeffffffed",
            INIT_17 => X"ffffffea0000000fffffffffffffffee0000001800000001000000030000000f",
            INIT_18 => X"0000005000000018000000480000003100000017ffffffe50000002500000000",
            INIT_19 => X"0000000100000028ffffffdc000000340000001bffffffc7ffffffdd0000001e",
            INIT_1A => X"ffffffa9ffffffd8fffffffeffffffedfffffff20000002200000011fffffff7",
            INIT_1B => X"ffffffe50000000dfffffff900000011000000000000001bffffffd0ffffffe2",
            INIT_1C => X"ffffffcaffffffd30000002cfffffff00000000dfffffff200000009ffffffe6",
            INIT_1D => X"ffffffe7000000240000002600000023ffffffebffffffd4ffffffc4ffffffc8",
            INIT_1E => X"000000200000002b0000001400000013fffffff9fffffff900000008ffffffe1",
            INIT_1F => X"ffffffddfffffff200000043fffffff700000011000000190000001bfffffff7",
            INIT_20 => X"0000004a0000003e0000003d0000002cffffffdfffffffe5ffffffecffffffde",
            INIT_21 => X"ffffffc6ffffffc2ffffffbe00000000fffffff8ffffffe40000002100000046",
            INIT_22 => X"ffffffefffffffd10000000c0000001cffffffecffffffb4ffffffd1ffffffc7",
            INIT_23 => X"ffffffb6fffffff6fffffffeffffffe20000000f0000002500000021ffffffdf",
            INIT_24 => X"fffffff80000003100000002ffffffd3ffffffdeffffffe100000003fffffffa",
            INIT_25 => X"fffffffaffffffe9fffffff5ffffffff0000000dffffffcdffffffe9ffffffba",
            INIT_26 => X"000000130000000e0000000a000000000000001effffffe5fffffff0ffffffea",
            INIT_27 => X"000000160000001e0000002100000004ffffffedfffffffb0000002e00000011",
            INIT_28 => X"0000002d0000005200000003ffffffdc0000000e00000013fffffff1fffffff5",
            INIT_29 => X"ffffffccfffffff6fffffff1fffffff6ffffffce00000000000000000000001a",
            INIT_2A => X"0000001200000012ffffffeafffffff8ffffffe2ffffffe9ffffffd0ffffffac",
            INIT_2B => X"ffffffd4fffffff5ffffffe1ffffffeffffffff4ffffffafffffffa5ffffffd8",
            INIT_2C => X"0000002a0000000c000000340000000efffffff7ffffffd7ffffffb2ffffffbc",
            INIT_2D => X"ffffffdbfffffff5ffffffd0fffffffc0000000efffffffefffffffdfffffff7",
            INIT_2E => X"00000012000000000000000f000000000000000f0000000fffffffebffffffb2",
            INIT_2F => X"0000001dffffffcafffffff1fffffff000000037fffffff2ffffffe300000014",
            INIT_30 => X"fffffff20000000700000018ffffffcc000000000000000fffffffcdfffffffa",
            INIT_31 => X"ffffffe8ffffffd60000003cfffffff2000000010000003b00000015fffffffe",
            INIT_32 => X"000000100000000b0000001e0000001b00000022000000230000001bfffffffc",
            INIT_33 => X"ffffffe8ffffffeeffffffcc0000000b00000000ffffffe30000001c00000029",
            INIT_34 => X"0000000200000015fffffffcfffffff40000000e0000001a000000060000000c",
            INIT_35 => X"000000420000003e00000040000000430000002a0000004b00000033fffffff9",
            INIT_36 => X"ffffffbcffffff8affffffbcfffffff5ffffffbafffffff00000003a00000038",
            INIT_37 => X"ffffffc0ffffffdeffffffe3ffffffdfffffffdeffffffdaffffff94ffffffbe",
            INIT_38 => X"ffffffc4ffffffe6ffffffe2fffffff7ffffffe5ffffffe4ffffffa2ffffffef",
            INIT_39 => X"ffffffd9ffffffe9fffffffaffffffe1ffffffbeffffff860000000cffffffbb",
            INIT_3A => X"00000042fffffffe000000420000002f00000037ffffffff000000000000000c",
            INIT_3B => X"0000000effffffefffffffe0ffffffdc0000000dffffffebfffffff700000027",
            INIT_3C => X"000000080000001500000027000000050000002100000010fffffffb00000001",
            INIT_3D => X"000000100000000c0000000afffffff10000001e00000022000000150000000a",
            INIT_3E => X"ffffffcb0000000200000005ffffffdb0000001b0000000b0000001400000038",
            INIT_3F => X"00000029fffffff5000000220000000d000000100000002100000003ffffffdb",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff7fffffff0ffffffd8fffffff0fffffff800000017fffffffdffffffee",
            INIT_41 => X"ffffffefffffffebffffffe90000000b0000000a0000001effffffe4ffffffe7",
            INIT_42 => X"000000160000002100000013fffffff20000000cfffffffffffffff1fffffff3",
            INIT_43 => X"ffffffe90000000c0000000900000007ffffffed000000320000003100000014",
            INIT_44 => X"ffffffe400000006000000100000001efffffffb00000000ffffffedfffffffe",
            INIT_45 => X"0000000900000010fffffffa0000000300000000ffffffdaffffffe9fffffffc",
            INIT_46 => X"00000013000000200000003a00000048fffffff90000005e0000005d00000033",
            INIT_47 => X"fffffff700000000000000050000000afffffffd0000001e0000000e00000025",
            INIT_48 => X"ffffffe60000000dffffffe3ffffffe800000000ffffffea0000000d0000000e",
            INIT_49 => X"fffffff6000000010000001f0000000f0000001dffffffe4fffffff8ffffffe8",
            INIT_4A => X"0000000fffffffeafffffff5ffffffd200000019000000140000001400000008",
            INIT_4B => X"00000003000000190000001100000007000000020000001affffffe700000018",
            INIT_4C => X"000000120000001c00000011000000070000000bffffffe60000000ffffffffc",
            INIT_4D => X"0000000300000003fffffff6fffffff40000001c000000110000000300000029",
            INIT_4E => X"fffffff300000004ffffffd3000000060000000dfffffff900000004fffffff1",
            INIT_4F => X"ffffff70ffffff97ffffffc3ffffff94ffffffb7fffffff7ffffffdeffffffbb",
            INIT_50 => X"00000004000000230000000f0000001000000024000000210000000affffffc0",
            INIT_51 => X"000000090000002dffffffd80000002100000013000000030000001900000011",
            INIT_52 => X"fffffffb0000000a000000090000001800000032000000060000000affffffe6",
            INIT_53 => X"ffffffd2fffffff4ffffffd4fffffff6ffffffec0000001000000025ffffffed",
            INIT_54 => X"00000001ffffffe9ffffffef00000008ffffffe7ffffffc800000009ffffffd5",
            INIT_55 => X"ffffffe8fffffff1ffffffdfffffffea00000004ffffffea0000000800000009",
            INIT_56 => X"fffffff000000000000000150000000d000000030000001200000018ffffffe6",
            INIT_57 => X"0000000900000000fffffffb000000030000000e00000003fffffffc0000000f",
            INIT_58 => X"0000000a00000003000000030000000bffffffea00000000ffffffeaffffffeb",
            INIT_59 => X"ffffffd4ffffffe2ffffffc7ffffffeffffffffc00000004000000110000000a",
            INIT_5A => X"ffffffedffffff9affffffabffffffccffffffc1ffffffc2ffffffdeffffffd8",
            INIT_5B => X"0000000300000029ffffffd6fffffff70000000900000015fffffffb0000000b",
            INIT_5C => X"ffffffb2ffffffb3ffffffc1ffffff96fffffffe0000003500000036ffffffe5",
            INIT_5D => X"00000033000000420000001a000000050000002400000005ffffffe9ffffffd6",
            INIT_5E => X"ffffffe9ffffffd8ffffffd6fffffff1ffffffcf000000270000001600000000",
            INIT_5F => X"0000001b0000002cffffffeb00000009ffffffe5ffffffdeffffffa3ffffffbf",
            INIT_60 => X"000000340000000a0000001c0000001e00000000fffffff70000000f0000000e",
            INIT_61 => X"ffffffe7ffffffcbfffffff6ffffffcaffffffdafffffff9fffffffdfffffffa",
            INIT_62 => X"fffffff800000007ffffffed00000001fffffffc0000001400000010ffffffee",
            INIT_63 => X"ffffffedfffffff3ffffffd8fffffff500000007fffffff2ffffffee0000000a",
            INIT_64 => X"0000000c00000008000000070000001d000000140000002400000029fffffff3",
            INIT_65 => X"000000020000001800000003fffffffcffffffc60000001efffffffafffffff2",
            INIT_66 => X"ffffffd3ffffffd6ffffffdbffffffda000000010000000000000005fffffff9",
            INIT_67 => X"000000360000000e0000003b000000300000004dfffffff2fffffff900000003",
            INIT_68 => X"ffffffe9ffffffe3ffffffedffffffc4ffffffec0000000effffffe700000018",
            INIT_69 => X"00000000ffffffedffffffd8ffffffebfffffffdfffffffdfffffff100000001",
            INIT_6A => X"000000360000001700000034000000100000000bffffffd50000000700000004",
            INIT_6B => X"00000008fffffffffffffff10000001b00000006fffffff5fffffff400000016",
            INIT_6C => X"ffffffff00000005fffffff0ffffffd2fffffff9ffffffd60000000b00000014",
            INIT_6D => X"00000015ffffffed0000001b0000000cfffffffbffffffe40000000a0000002a",
            INIT_6E => X"0000001ffffffff40000000d0000000c0000001300000005ffffffeffffffff6",
            INIT_6F => X"ffffffff0000001000000031ffffffeb00000004fffffff7fffffff60000001c",
            INIT_70 => X"0000001afffffffd00000014ffffffeeffffffd2ffffffe70000000efffffffa",
            INIT_71 => X"00000003fffffff700000006ffffffeb0000002800000015000000020000000c",
            INIT_72 => X"000000110000001a0000000dffffffecfffffff600000006000000120000000f",
            INIT_73 => X"0000000effffffc60000005000000034ffffffcf0000002d0000001dffffffc4",
            INIT_74 => X"0000002affffffe600000000ffffffe2ffffffcbffffffcdffffffc90000008d",
            INIT_75 => X"fffffff3ffffffeffffffff400000004fffffff3000000010000002e0000003a",
            INIT_76 => X"fffffff1ffffffe50000000a00000008ffffffe4000000010000002000000031",
            INIT_77 => X"0000002affffffd9fffffff4fffffff00000001600000015ffffffbffffffff9",
            INIT_78 => X"000000160000002e00000011ffffffeb0000003600000037ffffffe700000009",
            INIT_79 => X"0000000e000000220000001dffffffe9ffffffd80000000d00000006ffffffea",
            INIT_7A => X"00000025fffffff8000000100000001bfffffffd0000001e00000025fffffff3",
            INIT_7B => X"fffffffa000000220000001cffffffd900000016000000360000002800000017",
            INIT_7C => X"00000017000000040000001a0000000a000000060000000c00000008fffffffe",
            INIT_7D => X"00000005000000180000000600000003fffffff300000004fffffff7fffffff5",
            INIT_7E => X"ffffffe9ffffffeafffffff0fffffff3fffffffa0000000fffffffed00000030",
            INIT_7F => X"ffffffea00000006ffffffd1ffffffe2fffffff7fffffffbffffffd900000015",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffdefffffffaffffffbfffffffe20000004d0000001a000000020000002c",
            INIT_01 => X"0000000fffffffecfffffff4ffffffaaffffffa3fffffffeffffffffffffffd2",
            INIT_02 => X"0000002500000021fffffff1ffffffe2ffffffecfffffffbfffffff300000000",
            INIT_03 => X"ffffffec00000000ffffffc5ffffffc5ffffffd6ffffffa8ffffffa2fffffff1",
            INIT_04 => X"0000002e0000000effffffe00000000afffffff0ffffffca000000070000001b",
            INIT_05 => X"fffffff3fffffffbffffffea0000000600000004000000110000001500000022",
            INIT_06 => X"00000011ffffffd50000000600000016ffffffc9ffffffe50000000affffffe9",
            INIT_07 => X"ffffffe4000000220000001d0000001f000000160000000affffffacfffffff2",
            INIT_08 => X"0000000800000007fffffff9fffffff600000000ffffffd5ffffffecffffffea",
            INIT_09 => X"ffffffd8ffffffe4ffffffe9ffffffe1000000090000000a00000022ffffffef",
            INIT_0A => X"fffffff500000023000000180000000600000002ffffffe100000001fffffff9",
            INIT_0B => X"000000050000000b0000000e00000006000000160000000b0000001dfffffffd",
            INIT_0C => X"fffffff8ffffffd1ffffffabffffffc6ffffffee000000150000000600000001",
            INIT_0D => X"fffffff400000003fffffff5fffffff2fffffffc00000028ffffffedfffffffd",
            INIT_0E => X"0000000d0000000c000000020000003b00000047000000210000002600000036",
            INIT_0F => X"fffffff9fffffff80000002100000005000000000000000ffffffff700000002",
            INIT_10 => X"fffffff500000026ffffffdffffffffb000000270000002300000006ffffffe2",
            INIT_11 => X"ffffffedfffffff1000000140000000d0000000effffffc7fffffff3ffffffb5",
            INIT_12 => X"ffffffe10000001c0000002f00000033ffffffffffffffd1ffffffbb00000007",
            INIT_13 => X"000000210000001d0000003300000002ffffffdeffffffc200000015ffffffcf",
            INIT_14 => X"ffffffd9ffffffec00000023ffffffcbffffffe00000000dfffffff80000000e",
            INIT_15 => X"fffffffdffffffff0000000900000010ffffffd90000000700000006ffffffff",
            INIT_16 => X"ffffffdaffffffc3ffffff9d0000000f000000100000000c0000002000000024",
            INIT_17 => X"ffffffc20000002400000006ffffffb100000028fffffff7ffffffe800000036",
            INIT_18 => X"ffffffee0000000ffffffff400000009000000050000000300000004ffffffd8",
            INIT_19 => X"fffffff20000002a0000000ffffffff100000026000000220000001900000001",
            INIT_1A => X"fffffff6fffffffbffffffd0ffffffe4ffffffe7ffffffcc000000240000000b",
            INIT_1B => X"ffffffe1ffffffe9ffffffd800000006fffffff9ffffffd4ffffffeaffffffed",
            INIT_1C => X"fffffff2fffffffbffffffee00000034000000030000000700000012ffffffef",
            INIT_1D => X"0000000b0000001dffffffe8ffffffde0000000cfffffff8ffffffecffffffe9",
            INIT_1E => X"0000000a00000027ffffffd4ffffffadfffffffcffffffffffffffd900000002",
            INIT_1F => X"fffffffb0000001d00000029fffffff30000002c00000022ffffffe000000013",
            INIT_20 => X"0000000a000000160000000dfffffff600000013000000040000001800000001",
            INIT_21 => X"000000100000003500000028000000130000001bfffffffa0000000000000001",
            INIT_22 => X"000000120000002d0000001ffffffff4000000210000003bffffffef00000031",
            INIT_23 => X"ffffffe3ffffffc9ffffffeffffffff800000013fffffff900000001ffffffd9",
            INIT_24 => X"00000000000000130000000600000028fffffff1ffffffd600000004ffffffed",
            INIT_25 => X"fffffff8ffffffd4ffffffe6ffffffff0000000d000000070000000400000023",
            INIT_26 => X"fffffff6ffffffe4ffffffd5ffffffb9fffffff3ffffffd9ffffffbeffffffe2",
            INIT_27 => X"fffffffd0000000900000011ffffffe20000000c0000001ffffffff800000009",
            INIT_28 => X"000000290000001fffffffe40000000e000000200000000400000000fffffff6",
            INIT_29 => X"fffffff3ffffffe00000000affffffedfffffff9fffffff6fffffff600000011",
            INIT_2A => X"fffffffeffffffeb000000060000002dfffffffffffffffcfffffffe0000000e",
            INIT_2B => X"0000001000000020000000190000001a0000002000000027ffffffd7fffffff6",
            INIT_2C => X"fffffffeffffffc40000001800000003000000050000001efffffff7fffffffa",
            INIT_2D => X"ffffffe40000000e0000001c00000006ffffffe0ffffffd4fffffff700000000",
            INIT_2E => X"ffffffe7ffffffd9ffffffedffffffd8fffffff600000006fffffff6fffffff8",
            INIT_2F => X"ffffffd2fffffff0ffffffe700000004fffffffd0000000c0000001dffffffe8",
            INIT_30 => X"00000011fffffff4ffffffcefffffff2ffffffe9ffffffbdffffffe8fffffff0",
            INIT_31 => X"ffffffd8fffffffd00000032fffffff0ffffffdd000000250000000a00000008",
            INIT_32 => X"00000018ffffffdaffffffce00000017ffffffcb0000001000000030fffffff3",
            INIT_33 => X"ffffffd80000002f00000012fffffffefffffff80000002c0000001d00000001",
            INIT_34 => X"fffffff90000002b000000360000001effffffe600000012ffffffe900000017",
            INIT_35 => X"ffffffd1fffffffd0000000b0000001000000012ffffffe1ffffffd900000039",
            INIT_36 => X"000000120000000e0000001000000008fffffffaffffffe2fffffffc00000000",
            INIT_37 => X"0000000a000000110000000bffffffe6ffffffdeffffffebfffffff6ffffffe7",
            INIT_38 => X"fffffff1ffffffdefffffff4ffffffe9000000050000000dffffffd4fffffff4",
            INIT_39 => X"00000020fffffff4fffffff3000000080000000dfffffff8fffffffa00000015",
            INIT_3A => X"00000033fffffffbfffffff10000000dfffffff0fffffffe0000000c00000000",
            INIT_3B => X"000000010000001afffffff80000000400000009fffffff7ffffffd600000011",
            INIT_3C => X"ffffffd7000000290000003c000000110000000c000000220000001000000003",
            INIT_3D => X"00000000000000080000000f0000000000000002fffffffa0000001d00000029",
            INIT_3E => X"00000006ffffffc80000001dfffffff600000003ffffffd60000000500000045",
            INIT_3F => X"ffffffd100000001ffffffecfffffff2ffffffd1fffffffcfffffff1ffffffe7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000ffffffe5fffffff8ffffffd5ffffffa9ffffffe7ffffffdcffffffbe",
            INIT_41 => X"0000000000000004ffffffd80000002b00000003ffffffc1ffffffcdffffffe1",
            INIT_42 => X"000000050000000900000002ffffffee00000001fffffffdfffffff7fffffffa",
            INIT_43 => X"ffffffe0fffffff10000001c00000019fffffffb00000020000000050000000e",
            INIT_44 => X"fffffff00000000afffffff2fffffffe0000000a00000010fffffff6fffffff6",
            INIT_45 => X"00000028ffffffc4ffffffeb00000025ffffffdbffffffc9ffffffdefffffff5",
            INIT_46 => X"0000000dfffffff0ffffffe6ffffffd6ffffffc7ffffffe3ffffffec00000004",
            INIT_47 => X"fffffffbffffffe6ffffffd8ffffffb8fffffff4000000290000000affffffdb",
            INIT_48 => X"ffffffeeffffffc8ffffffb7ffffffea00000033fffffff0ffffffe800000028",
            INIT_49 => X"ffffffeefffffffbffffffda0000004d00000054fffffff200000010ffffffea",
            INIT_4A => X"000000170000001b0000002f0000002900000029ffffffe60000000effffffe2",
            INIT_4B => X"00000028ffffffc2ffffffc7ffffffd90000001a000000310000001effffffff",
            INIT_4C => X"00000011ffffffedfffffff0000000180000003a0000003f0000001300000018",
            INIT_4D => X"000000490000002effffffeefffffffafffffff1ffffffecfffffff5ffffffcf",
            INIT_4E => X"ffffffc80000003a0000002000000028000000240000001a0000001800000010",
            INIT_4F => X"0000000300000007fffffff9ffffffd9ffffffddffffffcffffffff5ffffffd7",
            INIT_50 => X"0000002800000000fffffff4ffffffdcffffffdc00000000000000210000000c",
            INIT_51 => X"00000006ffffffedfffffffb00000009000000350000000cffffffe40000000a",
            INIT_52 => X"000000250000000e0000004200000012fffffff7fffffff9fffffff800000015",
            INIT_53 => X"ffffffe5ffffffa2fffffff0ffffffc3ffffffee00000019000000280000006e",
            INIT_54 => X"000000050000000d0000003f00000023000000090000003c00000000ffffffbc",
            INIT_55 => X"ffffffedffffffdb0000000dfffffff5ffffffe5ffffffedfffffffa00000014",
            INIT_56 => X"000000350000001500000046000000300000005100000031000000300000002c",
            INIT_57 => X"ffffffdcfffffffc00000000fffffffffffffff2fffffffd000000050000000e",
            INIT_58 => X"00000001ffffffeeffffffe10000000d00000004fffffff1ffffffeeffffffcd",
            INIT_59 => X"ffffffff00000000ffffffc0ffffffecffffffd2ffffffd500000006ffffffd7",
            INIT_5A => X"00000017ffffffccffffffe0ffffffdc000000020000003500000019ffffffdf",
            INIT_5B => X"ffffffbefffffff9ffffffebfffffff90000003b0000003bfffffff70000001a",
            INIT_5C => X"0000000700000024000000030000003500000042ffffffdefffffffa0000000f",
            INIT_5D => X"ffffffcbffffffeeffffffcbffffffdc00000001fffffffb0000001300000012",
            INIT_5E => X"ffffffcf0000000c0000000affffffed0000002d00000001ffffffecffffffd5",
            INIT_5F => X"00000018ffffffcc0000001800000040ffffffd80000000000000034ffffffb9",
            INIT_60 => X"fffffffc000000040000000500000045ffffffe2ffffffc9000000230000004b",
            INIT_61 => X"0000003cfffffffafffffff30000001a0000002dfffffff8ffffffe1ffffffe5",
            INIT_62 => X"00000023000000140000002d000000440000001efffffffaffffffbeffffffe1",
            INIT_63 => X"0000000d0000000affffffd5ffffffeffffffff100000008ffffffef0000001c",
            INIT_64 => X"00000048000000430000000c0000003afffffffdfffffff100000013ffffffda",
            INIT_65 => X"ffffffe800000002ffffffd5ffffffd7ffffffbd0000002f0000001d0000000d",
            INIT_66 => X"00000003fffffff70000000d0000002a000000100000002a00000022ffffffec",
            INIT_67 => X"00000001ffffffefffffffea00000013ffffffe7fffffffd0000002c00000018",
            INIT_68 => X"00000007fffffff7fffffff20000000a0000000800000000fffffffa00000000",
            INIT_69 => X"fffffff5fffffff5fffffff600000002fffffff400000013ffffffed00000012",
            INIT_6A => X"fffffff0fffffff3fffffff90000000a00000007fffffffcfffffffafffffff3",
            INIT_6B => X"ffffffff00000000fffffff50000000e00000000fffffffbfffffff900000010",
            INIT_6C => X"00000000ffffffe6ffffffedfffffffd0000000bfffffff40000000700000002",
            INIT_6D => X"000000030000000000000005fffffff9ffffffffffffffee00000000fffffffc",
            INIT_6E => X"fffffff6fffffffefffffff1fffffffcffffffebfffffff4fffffff4fffffff7",
            INIT_6F => X"fffffff3fffffff6000000040000000000000000ffffffecfffffffd00000010",
            INIT_70 => X"fffffffa000000030000001000000004ffffffe9000000010000000dfffffff4",
            INIT_71 => X"00000000fffffffcfffffffbfffffff0fffffffdffffffef00000009fffffff1",
            INIT_72 => X"0000000300000011000000030000000a0000000a000000000000000afffffffb",
            INIT_73 => X"00000004fffffffe00000002fffffffb00000013fffffffdfffffff5fffffff6",
            INIT_74 => X"fffffff50000000c0000000700000006fffffff9fffffffdfffffff100000017",
            INIT_75 => X"fffffff700000002ffffffec0000000f000000070000000000000000fffffff3",
            INIT_76 => X"0000000bffffffeb00000006fffffffd0000000d000000000000000100000003",
            INIT_77 => X"0000000efffffffdfffffffbfffffff7fffffff5fffffff000000002ffffffef",
            INIT_78 => X"00000003fffffff4ffffffecfffffff10000000bfffffff90000000000000000",
            INIT_79 => X"ffffffea00000011ffffffecffffffff00000006ffffffeaffffffea00000000",
            INIT_7A => X"00000005fffffff50000000f0000000cfffffff0ffffffee0000001100000010",
            INIT_7B => X"0000000400000007fffffff500000000fffffff6fffffff8ffffffeb0000000e",
            INIT_7C => X"fffffffb00000007fffffff30000000200000011000000150000000afffffff1",
            INIT_7D => X"0000000cfffffff3ffffffed0000000e00000003fffffff0fffffff9fffffffa",
            INIT_7E => X"00000004ffffffe8fffffffffffffff900000002ffffffff0000000efffffff3",
            INIT_7F => X"fffffff40000000b00000006fffffffd00000003fffffff5000000020000000d",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000dfffffff00000000affffffeb000000090000000afffffff4ffffffe9",
            INIT_01 => X"fffffffdfffffff900000012ffffffeeffffffe900000005fffffffafffffffc",
            INIT_02 => X"ffffffeaffffffedfffffff300000004fffffff0fffffff2fffffff4fffffff1",
            INIT_03 => X"fffffffe000000050000000afffffffe00000003fffffff6fffffff8fffffff0",
            INIT_04 => X"00000003fffffff9fffffff300000004ffffffe8fffffffefffffff4ffffffe8",
            INIT_05 => X"fffffff60000000f000000050000000bfffffff6fffffffe00000000fffffffe",
            INIT_06 => X"fffffffbffffffeffffffff500000009fffffff60000000d0000000700000011",
            INIT_07 => X"fffffff80000000400000000fffffff6ffffffee00000004ffffffebfffffffa",
            INIT_08 => X"fffffff2fffffff800000000fffffff500000003fffffff6fffffff500000001",
            INIT_09 => X"00000009ffffffeaffffffec0000000700000000fffffffcfffffff9ffffffeb",
            INIT_0A => X"0000000600000003fffffffbfffffff7fffffff900000000ffffffeefffffff3",
            INIT_0B => X"ffffffe9fffffff4fffffff3ffffffeefffffffbfffffff9ffffffff00000008",
            INIT_0C => X"ffffffe900000006ffffffe700000008fffffff8fffffffefffffffafffffff8",
            INIT_0D => X"fffffffaffffffd5ffffffe9fffffffd0000000200000015fffffffdffffffee",
            INIT_0E => X"0000001f00000014fffffffcffffffdffffffffcffffffddfffffff3ffffffe4",
            INIT_0F => X"000000180000003a00000040000000480000001d00000028000000430000002e",
            INIT_10 => X"00000030ffffffdafffffff2fffffff9ffffffe6000000020000000b0000001e",
            INIT_11 => X"fffffff7ffffffe0fffffffb00000033000000310000002cfffffff00000000b",
            INIT_12 => X"0000000affffffeaffffffe100000017ffffffe9ffffffeefffffffdffffffe0",
            INIT_13 => X"00000005ffffffe9fffffff6fffffff4fffffff7ffffffd7fffffffefffffffe",
            INIT_14 => X"0000000000000027000000200000002600000022000000130000000400000018",
            INIT_15 => X"ffffffe90000000d00000001fffffff40000001b000000190000001c00000016",
            INIT_16 => X"00000022ffffffe5ffffffc3ffffffdbffffffe8ffffff9affffffb200000006",
            INIT_17 => X"ffffffefffffffdbfffffff2000000020000002f000000080000002400000000",
            INIT_18 => X"ffffffc4ffffffd2ffffffe6ffffffc1ffffffc9ffffffe0ffffffe80000000c",
            INIT_19 => X"fffffffcffffffe5ffffffce00000001ffffffcfffffffbfffffffeeffffffd5",
            INIT_1A => X"000000020000000cffffffed000000100000002100000013fffffff500000003",
            INIT_1B => X"ffffffee000000160000002e0000000d00000017fffffffe0000000500000002",
            INIT_1C => X"ffffffeaffffffeffffffff90000000100000015fffffff200000010fffffff6",
            INIT_1D => X"0000001e0000000900000007fffffff9fffffff2ffffffddfffffff2ffffffd1",
            INIT_1E => X"ffffffe0ffffffe5ffffffddffffffaeffffffafffffffefffffffc6ffffffcf",
            INIT_1F => X"fffffffd00000009ffffffc300000000fffffffffffffff7ffffffc7ffffffcd",
            INIT_20 => X"ffffffb1ffffffb1ffffffb8fffffff40000001b0000000100000007fffffff8",
            INIT_21 => X"0000002c00000026ffffffec0000000900000028ffffffc7ffffffa3ffffffba",
            INIT_22 => X"00000013fffffff400000001000000150000001f000000130000002500000006",
            INIT_23 => X"ffffffec0000000b00000027fffffff5ffffffecffffffdefffffff1ffffffeb",
            INIT_24 => X"ffffffebffffffd500000009fffffffa0000000900000004000000130000002b",
            INIT_25 => X"fffffffe0000001c0000000a0000001600000006ffffffd1fffffff2fffffff6",
            INIT_26 => X"ffffffff00000007fffffff900000004fffffffffffffff30000001400000007",
            INIT_27 => X"fffffffb00000000fffffffd000000290000002c000000190000003000000020",
            INIT_28 => X"000000230000002400000007000000230000002000000042000000240000000b",
            INIT_29 => X"00000007fffffffcffffffc7fffffff7ffffffbdffffffb70000001700000001",
            INIT_2A => X"00000028fffffffcfffffffbffffffe200000017000000200000000bfffffffd",
            INIT_2B => X"00000024000000240000002e0000004100000013000000060000000a0000001f",
            INIT_2C => X"0000000cffffffcaffffffdcfffffff0ffffffee0000000b0000001400000014",
            INIT_2D => X"000000100000000f00000001000000080000000d00000003ffffffda00000004",
            INIT_2E => X"ffffffedfffffff2ffffffeffffffff50000001d0000000b0000002800000013",
            INIT_2F => X"00000022000000140000000b00000010ffffffdcffffffbe00000002ffffffb8",
            INIT_30 => X"00000006fffffffdfffffff7fffffff60000000700000015fffffff900000000",
            INIT_31 => X"0000000300000023fffffff900000003000000280000001300000035ffffffe9",
            INIT_32 => X"000000150000002e0000002d0000003cfffffffc0000002a0000000200000000",
            INIT_33 => X"ffffffdffffffff7ffffffe9fffffff1ffffffc800000016000000300000002c",
            INIT_34 => X"00000037ffffffcc00000019ffffffefffffffcf0000000c00000012ffffffee",
            INIT_35 => X"ffffffd8ffffffddffffffdb000000020000001d000000140000001400000035",
            INIT_36 => X"000000380000004d000000070000001e0000000e00000023000000270000000e",
            INIT_37 => X"0000001cffffffc3ffffffc7fffffff5000000200000001c0000000e00000033",
            INIT_38 => X"fffffffbffffffc9ffffffe8ffffffd3fffffff7ffffffe90000001600000033",
            INIT_39 => X"0000001b000000120000002a0000002c0000000100000007fffffff80000002e",
            INIT_3A => X"00000026ffffffe7ffffffdf0000002bfffffffe000000110000002c00000017",
            INIT_3B => X"0000003300000000ffffffdd00000006ffffffeb00000001ffffffef00000000",
            INIT_3C => X"0000001fffffffe20000000e0000002dfffffff6fffffff3fffffff2ffffffe9",
            INIT_3D => X"0000000a00000004000000040000001bffffffe0ffffffdc000000070000001e",
            INIT_3E => X"000000350000001200000030ffffffe3fffffff800000006ffffffdf00000011",
            INIT_3F => X"0000000d0000000cffffffe9ffffffe5fffffff2ffffffddffffffe200000002",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000006000000180000003e00000010000000210000003f00000010ffffffed",
            INIT_41 => X"00000001ffffffe7fffffff6ffffffe5fffffffa0000001d0000000300000008",
            INIT_42 => X"ffffffd6ffffffd100000029ffffffef0000000b00000013fffffffbffffffe4",
            INIT_43 => X"fffffff600000027fffffff40000000500000028000000100000001afffffff9",
            INIT_44 => X"000000090000000400000018fffffff500000006fffffff6ffffffe9ffffffde",
            INIT_45 => X"0000003500000008fffffff4fffffffd0000000efffffff10000000700000024",
            INIT_46 => X"0000000afffffff4fffffff2fffffffdfffffff600000008fffffff200000000",
            INIT_47 => X"ffffffe90000000100000000000000060000000efffffff6ffffffde00000003",
            INIT_48 => X"0000002a0000004a0000000f0000000b0000001c00000010000000130000000f",
            INIT_49 => X"ffffffe3fffffff7ffffffef00000028000000170000000b0000001500000028",
            INIT_4A => X"ffffffe0fffffffb0000000dfffffff50000000a00000005ffffffd7fffffff2",
            INIT_4B => X"00000001ffffffdc0000003ffffffff80000001200000000ffffffcf00000001",
            INIT_4C => X"ffffffbcffffffdcffffffe7ffffffeffffffffa0000000bfffffffe00000022",
            INIT_4D => X"00000001ffffffe100000011fffffffffffffffd00000013ffffffb5ffffffc7",
            INIT_4E => X"00000003000000190000001e0000001300000048fffffffeffffffd800000019",
            INIT_4F => X"00000001fffffff4fffffff6fffffff1fffffff3fffffff4fffffffe00000011",
            INIT_50 => X"000000190000002500000020fffffff10000003a0000001a0000001f00000004",
            INIT_51 => X"fffffffaffffffe100000013ffffffdbfffffffbfffffff8000000020000001b",
            INIT_52 => X"0000001effffffeb00000001ffffffe9fffffff1fffffff5fffffff7ffffffdd",
            INIT_53 => X"ffffffed0000000100000019fffffff6ffffffd7fffffff5fffffffb00000010",
            INIT_54 => X"0000000a00000015000000080000000300000014ffffffebffffffee0000000a",
            INIT_55 => X"00000008fffffffeffffffea00000001ffffffeffffffff0ffffffe700000000",
            INIT_56 => X"00000008fffffff5ffffffed000000050000000a000000020000000000000002",
            INIT_57 => X"000000040000000dfffffff40000000bffffffe8ffffffedffffffebfffffffd",
            INIT_58 => X"00000007fffffff6fffffffd00000002fffffffd0000000200000011fffffff3",
            INIT_59 => X"fffffffcfffffff8fffffffe000000020000000a0000000cfffffff600000015",
            INIT_5A => X"000000070000000b00000003ffffffff00000005ffffffe60000000bfffffffe",
            INIT_5B => X"0000000700000006ffffffe5fffffff1fffffff4fffffff400000000ffffffff",
            INIT_5C => X"00000001fffffff6fffffffbfffffff8ffffffeafffffffc00000001ffffffeb",
            INIT_5D => X"fffffff2fffffff5ffffffe7fffffff0ffffffef0000000500000009fffffff1",
            INIT_5E => X"ffffffe8ffffffe70000000000000009ffffffebfffffff10000000cffffffed",
            INIT_5F => X"ffffffee0000000a000000010000000900000005ffffffe7fffffff9ffffffe5",
            INIT_60 => X"fffffff50000000ffffffffdfffffff90000000affffffeefffffff9fffffffd",
            INIT_61 => X"fffffff1fffffffcffffffebffffffecfffffffd0000000000000000fffffff9",
            INIT_62 => X"fffffff400000009ffffffeffffffffffffffffa000000090000000bffffffe5",
            INIT_63 => X"fffffff5ffffffe6ffffffe600000000fffffffcfffffffe00000002fffffff5",
            INIT_64 => X"fffffff0000000020000000400000004fffffff10000000000000001ffffffe9",
            INIT_65 => X"00000001fffffff9fffffff1fffffff10000000f0000000f0000000700000004",
            INIT_66 => X"00000007fffffff1000000000000000b00000000fffffff5fffffff3fffffffc",
            INIT_67 => X"ffffffeafffffff900000002ffffffeb000000010000000b00000003fffffffc",
            INIT_68 => X"0000000000000002ffffffec000000080000000dfffffff5ffffffee00000009",
            INIT_69 => X"fffffff3fffffffffffffff2fffffffc000000070000000f0000000fffffffec",
            INIT_6A => X"ffffffec0000000bfffffff9fffffff2fffffff6ffffffe3fffffffefffffff6",
            INIT_6B => X"000000050000000effffffeb00000000fffffff0ffffffe3ffffffedfffffff8",
            INIT_6C => X"0000000d00000000ffffffec0000000effffffeefffffff60000000d00000007",
            INIT_6D => X"fffffff000000007ffffffedfffffff4fffffff8ffffffef00000004ffffffff",
            INIT_6E => X"00000005ffffffee00000007fffffff9ffffffeafffffff00000000000000004",
            INIT_6F => X"0000000b00000007ffffffe400000004fffffff2ffffffe70000000200000000",
            INIT_70 => X"fffffff4ffffffdeffffffdfffffffe60000000300000000ffffffe1ffffffed",
            INIT_71 => X"fffffffdfffffff3fffffff60000001300000006fffffff8ffffffefffffffe0",
            INIT_72 => X"fffffff8fffffffa00000001fffffff3ffffffe9fffffff000000000fffffff6",
            INIT_73 => X"fffffffdffffffe600000007fffffff4ffffffe700000005ffffffecffffffeb",
            INIT_74 => X"0000000bffffffecffffffffffffffe30000000500000013fffffff200000007",
            INIT_75 => X"ffffffe7fffffffbfffffffcffffffe5fffffff300000005fffffff400000010",
            INIT_76 => X"fffffff4fffffffd00000006ffffffebfffffffefffffff2fffffff500000000",
            INIT_77 => X"00000005ffffffe80000000f00000006ffffffecfffffff9fffffffdfffffff4",
            INIT_78 => X"00000006fffffffdfffffffe00000014ffffffed00000012fffffffdfffffff6",
            INIT_79 => X"000000030000000a0000000300000009ffffffebfffffffd00000004ffffffef",
            INIT_7A => X"000000110000000400000005fffffffdfffffff7ffffffed00000000ffffffff",
            INIT_7B => X"fffffff7ffffffefffffffecffffffeb00000000ffffffe90000000500000001",
            INIT_7C => X"fffffffc00000003fffffff3ffffffeefffffff2fffffff700000009ffffffec",
            INIT_7D => X"00000002ffffffe4ffffffe9ffffffeefffffff4fffffff00000000600000009",
            INIT_7E => X"ffffffe8fffffff4fffffff40000000b00000009ffffffe2ffffffefffffffe4",
            INIT_7F => X"ffffffeafffffffeffffffecfffffffa0000000200000002fffffff5fffffffe",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffecffffffe7fffffff5fffffff1fffffff600000005fffffff9fffffff3",
            INIT_01 => X"0000000b00000000fffffffe0000000000000000ffffffe7ffffffef00000007",
            INIT_02 => X"0000000800000008fffffffeffffffedfffffff6fffffff00000000600000003",
            INIT_03 => X"00000005ffffffe3fffffffcfffffffc00000005000000000000000500000008",
            INIT_04 => X"ffffffe9ffffffea0000000bfffffff9ffffffeb00000000fffffff7fffffff5",
            INIT_05 => X"00000005fffffffa0000000f0000000800000003ffffffe9fffffffc0000000e",
            INIT_06 => X"0000000c0000000400000002000000040000000b0000000f0000000800000009",
            INIT_07 => X"0000000affffffe9fffffffffffffff60000000affffffecfffffffdffffffe9",
            INIT_08 => X"fffffffaffffffeb00000006000000080000000000000006fffffff2fffffffe",
            INIT_09 => X"fffffffcfffffff7fffffff300000001fffffff800000000fffffff60000000e",
            INIT_0A => X"ffffffed00000000fffffff1fffffffefffffff60000000c000000120000000e",
            INIT_0B => X"00000008ffffffedffffffeafffffffdfffffff400000006fffffff800000004",
            INIT_0C => X"fffffffb00000005fffffff60000000a00000005fffffffcfffffff7fffffffc",
            INIT_0D => X"fffffff9fffffffcfffffff9ffffffea0000000dfffffffaffffffef00000013",
            INIT_0E => X"ffffffff0000000affffffec00000002ffffffe50000000affffffe9fffffff1",
            INIT_0F => X"00000007fffffff400000002ffffffeffffffff200000003fffffff5fffffff0",
            INIT_10 => X"fffffffbffffffeffffffff2ffffffebffffffecfffffff200000005fffffff9",
            INIT_11 => X"00000006ffffffed00000000fffffff1fffffff6fffffffe00000000ffffffec",
            INIT_12 => X"fffffffafffffff9ffffffe7fffffffaffffffff000000040000000b00000005",
            INIT_13 => X"ffffffebfffffffaffffffe60000000ffffffff60000000a00000009fffffff4",
            INIT_14 => X"ffffffeefffffff8ffffffe9ffffffeb00000003fffffff2ffffffeb0000000c",
            INIT_15 => X"fffffff5ffffffeafffffff0000000000000000ffffffff9fffffff300000004",
            INIT_16 => X"ffffffeaffffffec0000001000000005ffffffe9fffffffcffffffe4fffffff8",
            INIT_17 => X"fffffff500000007fffffffbffffffeaffffffeefffffff5fffffffafffffff1",
            INIT_18 => X"fffffff5ffffffe5ffffffeefffffffafffffff9fffffff500000009ffffffef",
            INIT_19 => X"fffffffaffffffec00000003fffffff10000000e0000000200000003ffffffeb",
            INIT_1A => X"ffffffeeffffffeefffffff3fffffffa00000000fffffff500000005fffffffa",
            INIT_1B => X"fffffff7ffffffee0000000dfffffff9fffffffffffffffeffffffff00000006",
            INIT_1C => X"ffffffedfffffffafffffff700000008ffffffe9000000110000000800000000",
            INIT_1D => X"00000016fffffff6ffffffeeffffffdc0000001e0000002d0000000200000000",
            INIT_1E => X"fffffff40000002600000032000000050000002e00000022000000000000000c",
            INIT_1F => X"ffffffc9fffffff2ffffffd4ffffffe9fffffffdfffffff90000003100000035",
            INIT_20 => X"0000003effffffd9fffffffb0000001effffffb3ffffffa700000012ffffffa9",
            INIT_21 => X"fffffff20000000b0000000b0000000a0000000a00000038fffffffc0000000b",
            INIT_22 => X"000000220000002affffffe2ffffffe8ffffffe9000000170000002900000016",
            INIT_23 => X"ffffffe1ffffffb7ffffffecffffffe4ffffffea00000003fffffffa0000000f",
            INIT_24 => X"0000002d000000150000003afffffff300000010ffffffdf00000018ffffffff",
            INIT_25 => X"0000000f00000003fffffff0ffffffe100000007fffffff20000001a00000035",
            INIT_26 => X"0000001600000026fffffffcffffffe900000022ffffffd50000000d0000000e",
            INIT_27 => X"ffffffe4ffffffbeffffffd3000000010000002e000000040000002afffffff8",
            INIT_28 => X"ffffffe0000000180000000e00000026fffffffb0000000cfffffff700000013",
            INIT_29 => X"fffffffdffffffddffffffea0000000100000006ffffffc900000012fffffff5",
            INIT_2A => X"0000001300000000ffffffdc0000001300000008000000150000001800000007",
            INIT_2B => X"0000000c00000038fffffff500000015fffffffa00000006ffffffffffffffd6",
            INIT_2C => X"ffffffecffffffe7fffffff3fffffffcfffffffe00000018ffffffff00000004",
            INIT_2D => X"0000002000000005ffffffd10000002afffffff1ffffffe40000001500000003",
            INIT_2E => X"0000000efffffff4ffffffd9ffffffd2ffffffbd00000014fffffff2ffffffc6",
            INIT_2F => X"000000000000001affffffe9000000020000002300000001fffffffeffffffcb",
            INIT_30 => X"0000003ffffffffc0000000a00000012fffffff7ffffffc6000000050000000c",
            INIT_31 => X"000000090000001d0000001a0000002e00000016ffffffe5ffffffdcffffffce",
            INIT_32 => X"fffffff00000002a0000001bffffffe3fffffff10000000dfffffff90000000b",
            INIT_33 => X"0000000a0000002d00000031000000190000001cffffffed0000001300000000",
            INIT_34 => X"0000002600000018fffffff70000000effffffec000000030000000d00000005",
            INIT_35 => X"00000034fffffffc0000001c0000000cfffffffdffffffff000000170000000a",
            INIT_36 => X"ffffffeefffffff4ffffffeffffffffc0000000800000006ffffffe600000014",
            INIT_37 => X"ffffffe4ffffffaafffffff4ffffffdbffffffe90000001e0000002d00000016",
            INIT_38 => X"00000005ffffffeb0000000dfffffffe0000001300000003fffffff2ffffffd3",
            INIT_39 => X"0000003500000008fffffff900000018ffffffe6fffffff6ffffffe3fffffff8",
            INIT_3A => X"0000001000000017fffffff10000001d0000001f00000019fffffffffffffff9",
            INIT_3B => X"fffffff8ffffffaffffffff8fffffff8ffffffed0000001dffffffe90000000d",
            INIT_3C => X"0000000000000006fffffff8ffffffbfffffffcfffffffdaffffffcdfffffff0",
            INIT_3D => X"00000003ffffffcfffffffefffffffff000000090000002b0000000dffffffeb",
            INIT_3E => X"000000010000000c0000000800000015ffffffda00000000ffffffe8fffffff9",
            INIT_3F => X"0000000700000001ffffffe100000017fffffff30000000e0000001cffffffd7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff40000000cffffffef0000000d00000007fffffff9fffffffe0000000c",
            INIT_41 => X"ffffffe1ffffffedfffffffeffffffdcffffffe4ffffffe3000000020000000e",
            INIT_42 => X"ffffffedfffffff7ffffffe8ffffffdf00000002ffffffeffffffff00000000a",
            INIT_43 => X"00000009fffffff9fffffffdffffffe900000004fffffff9ffffffee0000000d",
            INIT_44 => X"fffffff5fffffff0fffffff4ffffffe4ffffffebffffffd4ffffffedfffffff7",
            INIT_45 => X"fffffff90000000fffffffed0000000000000003fffffffefffffffa0000000c",
            INIT_46 => X"00000002ffffffedffffffe90000000100000000fffffff40000000400000001",
            INIT_47 => X"fffffff7fffffff200000000ffffffebffffffeefffffffbffffffe500000003",
            INIT_48 => X"fffffffd00000007ffffffe9fffffff400000006ffffffebfffffff000000002",
            INIT_49 => X"00000008ffffffe9ffffffecfffffffdffffffeb0000000a00000000fffffff6",
            INIT_4A => X"0000000dffffffe8fffffff800000007fffffff20000000300000009fffffff1",
            INIT_4B => X"fffffff3fffffff1fffffffe0000000dfffffff5fffffff500000016ffffffff",
            INIT_4C => X"fffffff8ffffffe900000013000000120000000000000004ffffffe8ffffffea",
            INIT_4D => X"fffffff6ffffffea0000000f0000000600000005ffffffe9fffffffdffffffe6",
            INIT_4E => X"fffffff1ffffffe400000005fffffff1fffffffefffffffeffffffedffffffe4",
            INIT_4F => X"000000110000000b0000000afffffff70000000100000000ffffffe800000002",
            INIT_50 => X"ffffffeefffffffdffffffe5fffffff4ffffffebfffffff3ffffffe9ffffffee",
            INIT_51 => X"fffffff8000000000000000cfffffff9fffffff7ffffffed00000003fffffff9",
            INIT_52 => X"00000020000000080000000cfffffffefffffff7fffffffb0000001000000016",
            INIT_53 => X"00000001fffffffd00000000000000110000001400000019fffffffd00000000",
            INIT_54 => X"fffffffafffffff9fffffffd00000011fffffff50000000500000004fffffff6",
            INIT_55 => X"ffffffe6fffffff1ffffffeb00000000ffffffe80000000000000002fffffff6",
            INIT_56 => X"ffffffefffffffefffffffecffffffe000000002fffffff7ffffffe8ffffffff",
            INIT_57 => X"00000000ffffffe0fffffff5ffffffe3ffffffec00000000fffffff4ffffffe0",
            INIT_58 => X"ffffffe6ffffffe00000000800000002fffffffdfffffff2ffffffebfffffff7",
            INIT_59 => X"0000000bfffffff300000020fffffffd0000000cfffffff90000000ffffffff7",
            INIT_5A => X"00000008ffffffed0000000600000000000000000000000900000012fffffffa",
            INIT_5B => X"0000000c00000000ffffffe6ffffffe8ffffffe9ffffffdcfffffff4fffffff1",
            INIT_5C => X"ffffffebffffffeafffffff0ffffffe6ffffffd9fffffffc0000000bffffffdb",
            INIT_5D => X"fffffffc0000000f0000001200000011fffffffafffffff3ffffffedffffffed",
            INIT_5E => X"ffffffe3fffffff8fffffff00000000800000004ffffffe60000000effffffe5",
            INIT_5F => X"fffffff7fffffff400000002ffffffe8fffffff0fffffffefffffff8fffffffa",
            INIT_60 => X"fffffff100000000fffffff6fffffff5ffffffec0000000300000001fffffffa",
            INIT_61 => X"000000070000000afffffff0fffffff1ffffffea00000009ffffffffffffffea",
            INIT_62 => X"ffffffe3fffffffefffffff9fffffff2fffffffa00000008ffffffebfffffff0",
            INIT_63 => X"ffffffffffffffe9ffffffebfffffff9fffffffc0000000efffffff9fffffffa",
            INIT_64 => X"0000001a000000180000000e0000000700000004ffffffee0000001a00000019",
            INIT_65 => X"000000570000003a000000620000004a000000420000003c0000001c00000005",
            INIT_66 => X"ffffffaeffffffb6ffffffc0fffffff7ffffffef00000000ffffffc600000006",
            INIT_67 => X"fffffff4ffffffe500000012fffffff5ffffffe5ffffff74ffffffb8ffffff83",
            INIT_68 => X"ffffffdcfffffffd00000006fffffffd000000630000000f0000001b0000001c",
            INIT_69 => X"fffffffa000000180000001affffffbeffffff63ffffffebffffffc4ffffffbc",
            INIT_6A => X"0000000afffffff600000054000000340000002affffffedffffffe000000004",
            INIT_6B => X"0000000900000000ffffffe500000000000000000000000800000012fffffff4",
            INIT_6C => X"000000070000002d0000001600000006fffffff4fffffffcfffffffa00000011",
            INIT_6D => X"000000090000002c000000140000003a00000019000000300000001400000016",
            INIT_6E => X"00000007ffffffb0ffffffe0fffffff5ffffffc3fffffff1ffffffe5ffffffbb",
            INIT_6F => X"ffffffff0000002a00000047000000020000002400000025fffffff1fffffff5",
            INIT_70 => X"ffffff84ffffffc9ffffffb5fffffff5fffffffdffffff6effffff9e00000023",
            INIT_71 => X"000000040000000effffffeeffffffddffffffdfffffffc1fffffffeffffffcb",
            INIT_72 => X"ffffffdc000000230000000f00000065000000310000001dfffffff9ffffffed",
            INIT_73 => X"ffffffd600000012fffffff9fffffffbfffffffdfffffff90000001f00000031",
            INIT_74 => X"fffffffc000000310000001f0000000affffffa8ffffffe4fffffff0ffffffd7",
            INIT_75 => X"000000220000001600000003ffffffe7ffffffde00000014ffffffd6ffffffe1",
            INIT_76 => X"00000002fffffff6ffffffed000000070000002c00000014000000490000000a",
            INIT_77 => X"000000010000001700000021000000220000000b0000000f00000028ffffffea",
            INIT_78 => X"ffffffe800000016ffffffe10000000effffffda0000000200000015fffffffc",
            INIT_79 => X"00000002fffffff9000000150000000e0000001bfffffffb00000018fffffff6",
            INIT_7A => X"ffffffdcfffffffdfffffff90000000e00000013000000130000000900000002",
            INIT_7B => X"fffffffd000000000000001d00000001fffffff6fffffff8fffffff6ffffffea",
            INIT_7C => X"0000000cffffffe800000009fffffffbfffffff80000000a00000000fffffff1",
            INIT_7D => X"000000210000000000000009fffffff3ffffffee0000000ffffffffd0000000f",
            INIT_7E => X"ffffffc7ffffffcdffffffebffffffe4ffffffe60000001efffffff300000001",
            INIT_7F => X"ffffffb5fffffff5ffffff9bffffffd6ffffffb8ffffffffffffffb8ffffffe6",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000c000000070000002a0000002000000032000000240000002fffffffa2",
            INIT_01 => X"ffffffdefffffffbfffffffaffffffecfffffff90000002effffffe9fffffff4",
            INIT_02 => X"fffffff80000000effffffeafffffffefffffff30000000ffffffffffffffff7",
            INIT_03 => X"ffffffe40000001dffffffd0fffffff00000000e0000000f0000000cfffffff0",
            INIT_04 => X"ffffffd3ffffffd2ffffffe00000000e000000190000003bfffffffafffffff3",
            INIT_05 => X"0000000ffffffff1000000140000000b00000013ffffffcfffffffc0ffffffbb",
            INIT_06 => X"0000000e0000001a0000000b0000000900000017ffffffe6fffffff900000001",
            INIT_07 => X"0000001b0000001afffffffdfffffffeffffffff00000005fffffff6ffffffe5",
            INIT_08 => X"000000100000000e00000008fffffffc000000040000001400000018fffffffc",
            INIT_09 => X"ffffffefffffffeffffffff700000017fffffffd000000210000001200000002",
            INIT_0A => X"ffffffc4ffffffd2ffffffeeffffffccffffffedfffffff90000000cffffffd0",
            INIT_0B => X"000000190000002f00000007000000000000001affffffcbffffffd500000003",
            INIT_0C => X"ffffffe5ffffffe0ffffff96fffffff3fffffff0000000210000003b0000002c",
            INIT_0D => X"ffffffc4fffffff2ffffffcaffffffe6ffffffeaffffffd9ffffffcfffffff94",
            INIT_0E => X"00000000000000160000003100000040ffffffdffffffff500000009ffffffe9",
            INIT_0F => X"ffffffdbffffffeeffffffedffffffe20000001dffffffee0000000900000013",
            INIT_10 => X"0000001ffffffffc0000000f0000002900000013fffffff600000005ffffffd3",
            INIT_11 => X"fffffffffffffff9ffffffea000000050000004d0000000f000000320000004d",
            INIT_12 => X"ffffffe9ffffffdafffffff40000000afffffff5ffffffea00000002fffffff6",
            INIT_13 => X"ffffffe0ffffffd700000024ffffffff0000002100000025ffffffe3fffffff6",
            INIT_14 => X"0000001dfffffffeffffffecffffffeb00000000ffffffe100000000fffffff5",
            INIT_15 => X"fffffff3fffffffbffffffdffffffff3fffffffefffffffbfffffff200000002",
            INIT_16 => X"ffffffdeffffffe7ffffffde0000001700000018000000150000002900000016",
            INIT_17 => X"ffffffef0000001100000001fffffff900000022000000370000000500000015",
            INIT_18 => X"000000010000000800000012fffffff40000000bfffffff6ffffffe4ffffffd8",
            INIT_19 => X"000000120000000d000000010000001900000019ffffffe9ffffffe0ffffffda",
            INIT_1A => X"00000006fffffff400000026000000280000002e00000026000000390000005f",
            INIT_1B => X"0000000800000026fffffffc00000012000000110000000b0000000900000024",
            INIT_1C => X"fffffff0fffffff8ffffffecffffffb4ffffffd0fffffff6ffffffe8ffffffeb",
            INIT_1D => X"ffffffe10000000effffffe5ffffffee0000000000000019ffffffeeffffffea",
            INIT_1E => X"ffffffbfffffffd8ffffffe7ffffffe70000002e00000022ffffffe5fffffffd",
            INIT_1F => X"ffffffdeffffffeffffffff60000002a0000001cffffffd8ffffffe8ffffffe6",
            INIT_20 => X"ffffffeafffffffe0000004200000040fffffff8ffffffd8ffffffdcffffffc1",
            INIT_21 => X"00000040fffffff7ffffffeaffffffd300000004ffffffeefffffff2ffffffd1",
            INIT_22 => X"fffffff6fffffff6fffffffefffffffdffffffe5000000170000000a00000019",
            INIT_23 => X"0000001e00000000ffffffd2fffffffe0000004cffffffbfffffffdbfffffffa",
            INIT_24 => X"00000001000000080000000dfffffff0fffffff1ffffffe50000000500000017",
            INIT_25 => X"000000050000000500000022000000130000000effffffff0000000a00000005",
            INIT_26 => X"ffffffeefffffffaffffffcdffffffd8ffffffddfffffff3fffffff800000007",
            INIT_27 => X"0000003000000021000000190000000600000004fffffff4ffffffeb00000009",
            INIT_28 => X"fffffff6fffffffcfffffff3ffffffde000000010000001f0000000f00000008",
            INIT_29 => X"ffffffeeffffffdb00000012ffffffe7fffffff6ffffffe60000000dfffffff4",
            INIT_2A => X"ffffffe3000000180000000cfffffff4fffffff4ffffffe5ffffffb0ffffffd4",
            INIT_2B => X"00000012fffffff9000000180000002f00000011fffffffb0000001700000002",
            INIT_2C => X"ffffffe8ffffffe30000000afffffff6ffffffdfffffffed00000001fffffff7",
            INIT_2D => X"ffffff78ffffffb9ffffff9affffff9bffffffebfffffff60000001affffffe8",
            INIT_2E => X"fffffffc00000006ffffffe0ffffffea0000001900000018ffffffc6ffffff87",
            INIT_2F => X"ffffffc10000000affffffdcffffffb3000000020000000e0000001b00000026",
            INIT_30 => X"0000002700000000ffffffee0000000affffffd6ffffffe900000011ffffffcc",
            INIT_31 => X"ffffffff00000022000000290000000a0000002c0000002bffffffef00000014",
            INIT_32 => X"00000008ffffffeffffffff6000000170000000cfffffff60000002700000039",
            INIT_33 => X"0000000cfffffff3fffffff2fffffffdffffffe0fffffff5fffffff9ffffffeb",
            INIT_34 => X"000000190000001a00000026000000380000001bfffffff40000000100000020",
            INIT_35 => X"fffffff0ffffffcaffffffeeffffffc9ffffffb8fffffff6ffffffe4fffffff4",
            INIT_36 => X"0000000cffffffe9fffffff7ffffffff00000005000000110000000100000003",
            INIT_37 => X"ffffffc7ffffffc3ffffffdcfffffffd0000000900000001fffffffefffffff9",
            INIT_38 => X"ffffffd00000001effffffed0000000b0000000a0000000efffffff1ffffffda",
            INIT_39 => X"00000005ffffffe1fffffff4fffffffaffffffe3ffffffd80000002fffffffdd",
            INIT_3A => X"00000028000000220000000dffffffc80000001000000020fffffff1fffffffd",
            INIT_3B => X"fffffff200000003000000020000000300000006fffffffffffffffaffffffe3",
            INIT_3C => X"fffffff0fffffff00000001200000013fffffff20000000e0000003fffffffe9",
            INIT_3D => X"fffffffa0000000e00000019fffffff10000001b0000000f0000000dfffffff5",
            INIT_3E => X"ffffffb000000004ffffffbbffffffe0ffffffb4ffffffc4ffffffe2ffffffcc",
            INIT_3F => X"00000002ffffffe4000000110000000000000011000000140000001effffffc2",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffedffffffda000000070000004c0000004a0000002cffffffcefffffffa",
            INIT_41 => X"0000000d0000001700000000ffffffe7fffffffbffffffdaffffffbbfffffffc",
            INIT_42 => X"000000220000001cfffffff80000000400000019000000230000000f0000000b",
            INIT_43 => X"fffffff9fffffff70000000700000000fffffff2fffffff9fffffff800000004",
            INIT_44 => X"fffffff7000000000000001a0000000800000007000000000000000b00000019",
            INIT_45 => X"00000020ffffffef0000002200000000fffffff50000000700000005fffffffc",
            INIT_46 => X"0000000b0000001900000020000000080000000d00000013fffffffdfffffff7",
            INIT_47 => X"00000021fffffff10000003000000003ffffffebffffffd900000010fffffff3",
            INIT_48 => X"00000017ffffffe1fffffff5ffffffdb0000000d000000110000000000000042",
            INIT_49 => X"ffffffef0000000e000000000000002900000026fffffffa0000000effffffed",
            INIT_4A => X"00000000ffffffe8ffffffccffffffebfffffffcffffffe3fffffff600000026",
            INIT_4B => X"00000019ffffffe6000000000000001d00000005000000210000000600000009",
            INIT_4C => X"ffffffcc00000021fffffff4ffffffe80000003afffffffbffffffd900000008",
            INIT_4D => X"ffffffe6ffffffffffffffecfffffffb00000029ffffffff0000002c00000007",
            INIT_4E => X"000000210000000c00000006000000140000000effffffec0000000e00000001",
            INIT_4F => X"ffffffce0000002300000010000000020000001b0000000e000000320000001b",
            INIT_50 => X"fffffffa000000010000000e00000010fffffffcffffffe3fffffff5ffffffed",
            INIT_51 => X"0000000e0000003200000016000000360000000e00000015fffffffdfffffff0",
            INIT_52 => X"0000000c00000011ffffffdd0000001a000000110000002f0000002000000020",
            INIT_53 => X"0000003b000000180000000700000015ffffffe8000000420000001c00000015",
            INIT_54 => X"0000001000000015ffffffda0000001c0000000bffffffeaffffffd600000007",
            INIT_55 => X"ffffffebffffffd8ffffffcd0000002700000008ffffffe8000000290000000f",
            INIT_56 => X"fffffff9ffffffeaffffffe7ffffffc7ffffffb8ffffffeeffffffe4ffffffe7",
            INIT_57 => X"00000022fffffffcfffffff2fffffffeffffffb5ffffffb9ffffffafffffffd5",
            INIT_58 => X"00000015fffffff900000011ffffffe5fffffff100000012fffffff50000003a",
            INIT_59 => X"00000001ffffffc80000001100000009ffffffe800000002fffffffbffffffec",
            INIT_5A => X"0000000600000002fffffff700000009000000180000000bffffffee0000003e",
            INIT_5B => X"0000001afffffffe000000090000001a0000000dffffffe90000000d0000000b",
            INIT_5C => X"fffffff1ffffffb70000000effffffa8ffffffe5000000130000002900000003",
            INIT_5D => X"ffffffc9fffffffbfffffff4ffffffeaffffffcfffffffe2ffffffc0ffffffe7",
            INIT_5E => X"ffffffd5fffffffaffffffdeffffffbbffffffc2fffffffa0000000ffffffff2",
            INIT_5F => X"ffffffbfffffffdfffffffec00000012fffffffdffffffe3ffffffccffffffd8",
            INIT_60 => X"fffffff0ffffffc9ffffffa5ffffff97fffffffbffffff9affffffc0fffffff0",
            INIT_61 => X"ffffffbfffffffd7fffffff200000001ffffffeaffffffea0000001e00000000",
            INIT_62 => X"ffffff82ffffffcaffffffa9ffffffabffffffbbffffffe7ffffffeaffffffcc",
            INIT_63 => X"ffffffd9ffffffe1ffffffabfffffff00000001a00000000ffffffd1ffffffd7",
            INIT_64 => X"0000000000000000ffffffe100000024fffffffcffffffffffffffe6fffffffd",
            INIT_65 => X"00000014000000020000001b000000180000000e0000001cffffffcfffffffdd",
            INIT_66 => X"0000001700000030000000450000000fffffffd7ffffffdf0000001300000003",
            INIT_67 => X"00000033000000330000000effffffedffffffe3fffffffa0000003e00000036",
            INIT_68 => X"ffffffefffffffe2ffffffedffffffedffffffe0000000140000003500000011",
            INIT_69 => X"ffffffef0000000e00000001ffffffeb000000070000000bffffffe900000002",
            INIT_6A => X"ffffffe5ffffffcaffffffdd00000015ffffffe3ffffffe20000001bfffffff7",
            INIT_6B => X"0000001a00000031000000160000003200000024ffffffec0000001d00000008",
            INIT_6C => X"00000005000000060000001600000000ffffffe7000000130000002bfffffff3",
            INIT_6D => X"000000430000002100000000000000390000001500000000fffffff0fffffff3",
            INIT_6E => X"ffffffb0ffffffeeffffffdeffffffd2ffffffdb000000380000001afffffff8",
            INIT_6F => X"000000300000002c0000000000000008ffffff9effffffb60000002fffffffd1",
            INIT_70 => X"ffffffc3ffffff95ffffff97000000110000000d0000000c0000003100000004",
            INIT_71 => X"0000001500000008ffffffcd0000000400000022ffffff76ffffff90ffffffc5",
            INIT_72 => X"fffffff4ffffffcfffffffe3000000040000000d000000310000001500000032",
            INIT_73 => X"0000001ffffffff4fffffffb0000001a0000002b00000011000000440000000c",
            INIT_74 => X"0000000000000001fffffff300000002ffffffe1ffffffef0000001300000013",
            INIT_75 => X"ffffffeaffffffa7ffffffbcffffffd0ffffff9affffffceffffffe600000000",
            INIT_76 => X"00000003ffffffde0000000bffffffcaffffffea00000004fffffff6ffffffe0",
            INIT_77 => X"00000011ffffffe4fffffff1fffffffbffffffeeffffffe1fffffffe00000002",
            INIT_78 => X"00000004ffffffc9ffffffd8fffffff1fffffffa00000005ffffffe200000016",
            INIT_79 => X"0000002e0000002d0000000fffffffe5ffffffdaffffffd6ffffffe5fffffff0",
            INIT_7A => X"ffffffdd00000014fffffffdfffffffc00000025000000200000001c0000001f",
            INIT_7B => X"fffffffb00000014fffffffb0000002200000005ffffffec0000000effffffca",
            INIT_7C => X"ffffffe30000000e00000012000000180000000f00000029ffffffdf00000017",
            INIT_7D => X"ffffffeeffffffe9fffffff7ffffffdf00000000fffffffaffffffe400000019",
            INIT_7E => X"0000001100000002ffffffffffffffedfffffff3ffffffe0ffffffed0000000c",
            INIT_7F => X"fffffff9fffffff10000001cffffffcbffffffe9000000130000001500000024",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000001c0000001700000037fffffff9000000050000001a0000000c00000004",
            INIT_01 => X"fffffff80000002e00000009ffffffe3000000040000000a0000001f00000026",
            INIT_02 => X"ffffffccfffffff1fffffffe0000000900000004fffffff90000001e00000001",
            INIT_03 => X"0000002a00000019fffffff20000000affffffd6ffffffdfffffffc7ffffffec",
            INIT_04 => X"ffffffeaffffffda0000000700000024000000080000001c0000002100000021",
            INIT_05 => X"0000000afffffffdffffffe100000000ffffffe6ffffffda00000010ffffffd6",
            INIT_06 => X"fffffff3ffffffe1ffffffc4ffffffd6fffffffbffffffd7ffffffcaffffffe6",
            INIT_07 => X"0000000d0000001300000000000000190000000dffffffeafffffffeffffffda",
            INIT_08 => X"0000000400000004ffffffd10000002c00000004000000330000001700000038",
            INIT_09 => X"0000001c00000011000000120000001dfffffffb0000004700000000fffffff4",
            INIT_0A => X"0000001100000004000000110000001effffffecfffffffc0000002900000006",
            INIT_0B => X"00000015000000160000000e0000000d0000001900000011fffffff700000012",
            INIT_0C => X"fffffff1fffffff700000009fffffff2fffffffd0000000b00000004fffffff5",
            INIT_0D => X"00000009000000150000001b000000110000001a000000080000000cfffffff0",
            INIT_0E => X"ffffffdbffffffe500000021fffffffdfffffff500000018fffffff10000001e",
            INIT_0F => X"000000220000005b000000690000004c0000002d000000470000003d00000063",
            INIT_10 => X"00000004ffffffdcffffffbfffffffeeffffffbdffffffd9fffffffa00000011",
            INIT_11 => X"0000001c0000001600000005fffffff300000005fffffff6fffffff9ffffffde",
            INIT_12 => X"fffffff900000022fffffffefffffffb00000001000000240000003c00000014",
            INIT_13 => X"00000002000000140000000b000000110000000c000000280000002ffffffffa",
            INIT_14 => X"fffffff9000000000000000700000023fffffff2ffffffde0000001a00000001",
            INIT_15 => X"0000001400000014000000030000002100000041000000150000002600000011",
            INIT_16 => X"ffffffeffffffffafffffff00000000dffffffea0000000e0000001200000011",
            INIT_17 => X"0000001a00000027000000060000000fffffffed0000000000000006fffffff5",
            INIT_18 => X"0000001600000014fffffff30000000efffffff3fffffff000000008ffffffff",
            INIT_19 => X"ffffffddffffffebfffffff6ffffffceffffffd7fffffffe00000008fffffffe",
            INIT_1A => X"0000000c0000004700000034000000190000004bffffffffffffffc0ffffffc0",
            INIT_1B => X"ffffffda000000090000001ffffffff1fffffffc000000000000000700000020",
            INIT_1C => X"fffffffe0000003d000000240000002c00000026000000050000002dffffffea",
            INIT_1D => X"00000006000000000000000c0000003c000000050000004affffffe6fffffff5",
            INIT_1E => X"ffffffe7ffffffd4ffffffd1fffffffb00000000ffffffea0000001d00000032",
            INIT_1F => X"ffffffe8fffffffdfffffff6ffffffc30000001600000002ffffffd8fffffff3",
            INIT_20 => X"0000001f0000000d00000002ffffffecffffffd1fffffffa0000000b00000011",
            INIT_21 => X"fffffffa000000020000002400000000000000010000000a000000140000001b",
            INIT_22 => X"ffffffd9fffffffe000000370000001fffffffe4fffffff5ffffffdf0000001a",
            INIT_23 => X"0000001e00000006fffffffbfffffff7ffffffec000000110000000afffffffa",
            INIT_24 => X"ffffffcf0000001700000007fffffff2ffffffdf0000001f0000001cfffffff4",
            INIT_25 => X"ffffffceffffffddffffffc4ffffffa2ffffffe1ffffffc9ffffffe20000000f",
            INIT_26 => X"fffffff00000000400000002ffffffd5ffffffdffffffffaffffffc7ffffffca",
            INIT_27 => X"ffffffd700000000ffffffd6fffffff0ffffffd8fffffff2ffffffe600000012",
            INIT_28 => X"ffffff91ffffffeaffffffe8fffffff9ffffffecfffffffbffffffe9ffffffff",
            INIT_29 => X"ffffffff0000000300000012ffffffdaffffffc6ffffffbfffffffd7ffffff95",
            INIT_2A => X"0000000300000016000000160000000effffffe2ffffff9dffffffb9ffffffdd",
            INIT_2B => X"ffffffe500000013ffffffdffffffff2ffffffcdffffffedffffffbcffffffdf",
            INIT_2C => X"0000000cffffffff000000370000002a0000001b000000260000000c00000015",
            INIT_2D => X"fffffffaffffffffffffffffffffffe5ffffffec00000029fffffff800000024",
            INIT_2E => X"0000000dfffffff2000000050000000900000017fffffff2fffffff3fffffffc",
            INIT_2F => X"fffffffeffffffe8ffffffe90000001d000000010000000f00000009fffffffa",
            INIT_30 => X"ffffffc4ffffffa5fffffffeffffffebffffffef0000000c0000000a00000007",
            INIT_31 => X"fffffff2fffffffcffffffe8fffffffbffffffd9ffffffdffffffff3ffffffdc",
            INIT_32 => X"00000029000000070000000c000000190000001100000016ffffffffffffffe9",
            INIT_33 => X"00000024ffffffdbffffffd2ffffffeaffffffc6ffffffff0000001cffffffe2",
            INIT_34 => X"0000002000000033000000250000001400000000000000030000002900000010",
            INIT_35 => X"ffffffddfffffffd00000018ffffffecfffffff7ffffffff0000001e00000031",
            INIT_36 => X"ffffffe7ffffffc6ffffffd1fffffff4ffffffb900000001ffffffe9fffffffd",
            INIT_37 => X"00000011000000250000002e00000027ffffffdc00000017ffffffb2fffffff1",
            INIT_38 => X"ffffffb1ffffffd2ffffffe9000000040000001c0000002ffffffff9fffffff2",
            INIT_39 => X"0000000300000011000000170000000bffffffe400000013ffffffefffffffe8",
            INIT_3A => X"0000000c00000015000000190000000d0000001b000000020000001900000005",
            INIT_3B => X"ffffffeefffffff1ffffffdcffffffcdffffffaafffffff3ffffffe2ffffffee",
            INIT_3C => X"00000010fffffffcfffffff70000000500000002fffffff4fffffff1fffffff5",
            INIT_3D => X"ffffffe1ffffffe600000009ffffffe9ffffffe7000000010000000f0000000d",
            INIT_3E => X"0000002a0000002d00000005000000360000001a0000000fffffffe5fffffff2",
            INIT_3F => X"0000001500000017ffffffe5000000120000005f000000160000003600000011",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000001e00000005000000250000002b000000140000000dffffffe6ffffffe8",
            INIT_41 => X"00000002ffffffacffffffb100000010fffffff900000001fffffff400000031",
            INIT_42 => X"ffffffcbffffffeafffffff6ffffffe7ffffffc90000001affffffe8ffffffd0",
            INIT_43 => X"fffffff5000000270000000c000000250000000bffffffeaffffffe4ffffffd1",
            INIT_44 => X"0000000d0000000a0000002c0000003a00000009000000360000000000000019",
            INIT_45 => X"fffffff6ffffffcdffffffeffffffff9ffffffa9ffffffd600000008ffffffde",
            INIT_46 => X"00000008ffffffdbffffffeaffffffeeffffffdeffffffccffffffbefffffff4",
            INIT_47 => X"00000013fffffffaffffffd600000011ffffffe3ffffffeeffffffe6fffffff1",
            INIT_48 => X"ffffffbbfffffff20000001dfffffff5fffffff4fffffff7ffffffdffffffff6",
            INIT_49 => X"fffffff7fffffff3ffffffeaffffffd1ffffffd0ffffffd3ffffffcafffffffb",
            INIT_4A => X"ffffffeb000000110000001c0000002000000011fffffffa0000000300000016",
            INIT_4B => X"ffffffdbffffffaafffffff2fffffffb0000002f0000000d0000001f00000059",
            INIT_4C => X"fffffff7ffffffdfffffffdc0000000200000002fffffffdffffffc7ffffffe6",
            INIT_4D => X"0000000200000023000000010000001100000007fffffff1000000000000000a",
            INIT_4E => X"ffffffbf00000016ffffffc5fffffff90000004800000003fffffff500000042",
            INIT_4F => X"0000000700000010ffffffecffffffeffffffff2ffffffe4ffffffd6fffffffa",
            INIT_50 => X"ffffffc7ffffffebfffffff5ffffffd1ffffffc0ffffffdf0000002400000011",
            INIT_51 => X"00000002fffffff0000000150000000cffffffed0000000bffffffe300000011",
            INIT_52 => X"fffffffe00000003fffffffefffffff100000021000000020000000100000010",
            INIT_53 => X"0000000400000023fffffffbffffffe600000007fffffffdfffffff9fffffff9",
            INIT_54 => X"fffffffbffffffecffffffe8ffffffeefffffffc0000001b00000020fffffffe",
            INIT_55 => X"ffffffee00000036000000130000000700000013ffffffe6ffffffff00000013",
            INIT_56 => X"0000002d0000000e0000000efffffff500000000fffffff200000018ffffffd7",
            INIT_57 => X"ffffffccffffffd90000002f00000014ffffffd40000002c00000034fffffff9",
            INIT_58 => X"0000002e00000006000000130000002f000000120000002000000037ffffffe9",
            INIT_59 => X"fffffffc000000250000002efffffff3fffffffbffffffed0000000400000006",
            INIT_5A => X"ffffffe700000004ffffffd1ffffffdcffffffc4000000070000000cfffffff9",
            INIT_5B => X"0000000dffffffd3ffffffe000000012000000200000001e0000000000000016",
            INIT_5C => X"0000001affffffd3ffffffbaffffffe900000020ffffffe0ffffffcefffffffd",
            INIT_5D => X"00000014ffffffeb00000033fffffff500000004fffffffaffffffe7ffffffe7",
            INIT_5E => X"fffffff000000004000000010000000a00000012000000070000001100000019",
            INIT_5F => X"fffffffc000000230000001900000013000000160000000cfffffffc0000000c",
            INIT_60 => X"00000010fffffff9ffffffdffffffff6ffffffebffffffe9fffffff6ffffffec",
            INIT_61 => X"ffffffb20000001d00000003fffffff600000015fffffff6fffffff400000003",
            INIT_62 => X"00000009fffffffa00000017ffffffebffffffedffffffdf0000001000000002",
            INIT_63 => X"0000000900000001000000280000001ffffffffe0000001800000037ffffffff",
            INIT_64 => X"00000009ffffffd4ffffffcfffffffd4ffffffd2fffffff80000000dffffffe9",
            INIT_65 => X"fffffffdfffffffe00000000000000000000004d00000024000000060000002c",
            INIT_66 => X"0000000f00000003fffffff40000001e00000034ffffffdd0000001000000023",
            INIT_67 => X"ffffffe10000000e00000000000000090000000900000012fffffff000000023",
            INIT_68 => X"00000003000000070000001a0000000cfffffff0fffffff20000002000000002",
            INIT_69 => X"0000000000000012000000020000002500000035fffffff30000002400000013",
            INIT_6A => X"ffffffae0000003100000036ffffffb30000001600000014ffffffaeffffffd9",
            INIT_6B => X"ffffffed0000000600000021fffffff40000001300000003000000460000000a",
            INIT_6C => X"fffffffbffffffc900000000fffffffcffffffe3ffffffdafffffff1fffffffa",
            INIT_6D => X"ffffffe8fffffff80000000900000000000000000000001dfffffff60000000b",
            INIT_6E => X"0000001500000019ffffffbbffffffdeffffffd100000015fffffff6fffffff7",
            INIT_6F => X"00000007000000040000003900000005ffffff9b0000000600000020ffffffc1",
            INIT_70 => X"00000000ffffffef000000390000002bfffffffa0000000b00000036ffffffdb",
            INIT_71 => X"00000012fffffffc0000000d0000002000000009fffffff20000001cfffffff5",
            INIT_72 => X"fffffffbffffffc20000005200000045000000190000004a0000004afffffffa",
            INIT_73 => X"ffffffda0000001d00000026ffffffdf0000002dfffffff4ffffffc600000016",
            INIT_74 => X"00000014ffffffceffffffffffffffe900000005000000390000001700000017",
            INIT_75 => X"fffffff20000002cffffffdaffffffe200000027000000170000000a00000005",
            INIT_76 => X"0000002cffffffdbffffffef00000037ffffffd4000000000000002affffffd2",
            INIT_77 => X"ffffffd0ffffffcf0000002fffffffd9000000000000003fffffffd1fffffff1",
            INIT_78 => X"00000018ffffffeeffffffe5fffffff50000002cffffffc9fffffff600000010",
            INIT_79 => X"000000020000002bffffffe8ffffffe10000002d0000000effffffcc00000006",
            INIT_7A => X"ffffffac000000030000001cffffffdc0000000200000030ffffffccffffffe2",
            INIT_7B => X"fffffff100000019000000070000001a0000001500000001000000310000003f",
            INIT_7C => X"ffffffdefffffff4000000150000000afffffffd0000000dffffffd40000000d",
            INIT_7D => X"0000004b00000023ffffffd000000033fffffff2ffffff9f00000001fffffffb",
            INIT_7E => X"fffffff8ffffffe9fffffff7fffffff3fffffffa0000003f0000000cffffffb6",
            INIT_7F => X"0000000ffffffffe0000001cffffffe900000012fffffff50000001400000005",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000bfffffff6ffffffcdffffffe3fffffff8fffffff30000001500000016",
            INIT_01 => X"fffffff50000002b0000001affffffefffffffe80000001cfffffffcffffffcb",
            INIT_02 => X"ffffffdcffffffcc0000000a00000050ffffffddffffffe900000023ffffffeb",
            INIT_03 => X"00000015fffffff6ffffffc10000002e00000000ffffffc80000003bffffffff",
            INIT_04 => X"fffffff100000005ffffffe800000001ffffffe4fffffff60000000200000014",
            INIT_05 => X"00000003ffffffedfffffffc0000002f000000270000000a00000023ffffffea",
            INIT_06 => X"ffffffd2ffffffc60000000dfffffff7fffffff0ffffffe9ffffffcaffffffe4",
            INIT_07 => X"ffffffc90000002000000016ffffffcdffffffcffffffff90000001600000033",
            INIT_08 => X"00000015ffffffaeffffffc7fffffff3ffffffeeffffffcb0000002dffffffbb",
            INIT_09 => X"ffffffe8fffffffb00000033fffffff3000000250000005fffffffc0ffffffc7",
            INIT_0A => X"0000000800000037ffffffd6fffffff3ffffffe7ffffffeffffffff600000010",
            INIT_0B => X"ffffffe8ffffffec0000000700000005ffffffea000000000000000dfffffff2",
            INIT_0C => X"0000001bffffffedffffffce00000011fffffff0ffffffc90000005200000011",
            INIT_0D => X"ffffffff00000004ffffffd3fffffffb0000001fffffffed0000001c0000000e",
            INIT_0E => X"00000015fffffff5fffffffc00000028ffffffd6ffffffc00000000effffffd4",
            INIT_0F => X"00000000ffffffeffffffffc0000000a000000010000000fffffffc1fffffffd",
            INIT_10 => X"ffffffdbffffffe10000002affffffebffffffedfffffffe0000000bffffffeb",
            INIT_11 => X"0000000b00000009ffffffe300000031ffffffd9ffffffbeffffffe9fffffff3",
            INIT_12 => X"00000026ffffffe900000002ffffffcdffffffe1ffffffe4ffffffceffffffe8",
            INIT_13 => X"0000000500000003ffffffed0000000a0000001f00000008000000130000004c",
            INIT_14 => X"00000031ffffffc6ffffffddffffffd2ffffffe0ffffffe00000000400000007",
            INIT_15 => X"0000000d0000002700000021fffffff7000000030000002bfffffffbfffffff3",
            INIT_16 => X"000000140000003d0000004b00000051000000430000000f0000002900000008",
            INIT_17 => X"00000008ffffffdd0000000b0000001200000009fffffff000000010fffffff9",
            INIT_18 => X"000000060000000500000008ffffffe5ffffffe1ffffffccffffffc7fffffffb",
            INIT_19 => X"fffffffcfffffff60000000a0000000300000001fffffff1000000210000000c",
            INIT_1A => X"ffffffed00000018fffffffefffffff6000000080000000bfffffff400000002",
            INIT_1B => X"0000000300000011fffffff90000001500000006fffffff50000000f00000017",
            INIT_1C => X"0000000200000022000000110000003e0000000c00000013ffffffe8fffffffe",
            INIT_1D => X"00000014ffffffc4fffffffbfffffff4ffffffdcfffffffb00000036ffffffd2",
            INIT_1E => X"000000160000000400000008ffffffff0000000100000000ffffffc7ffffffd9",
            INIT_1F => X"00000015ffffffee0000003e0000004a0000000f0000004d000000700000004b",
            INIT_20 => X"0000002700000019fffffffc00000026000000020000000bffffffec00000033",
            INIT_21 => X"fffffffa000000070000002effffffdbffffffd30000001b0000001e00000007",
            INIT_22 => X"0000000000000006fffffffb0000002d0000000cffffffd8fffffff80000002e",
            INIT_23 => X"fffffff2fffffff6ffffffb1ffffffe0ffffffd600000000ffffffe600000004",
            INIT_24 => X"0000000e0000000e00000017ffffffe2fffffff800000039ffffffb3ffffffd8",
            INIT_25 => X"ffffffe0fffffff1ffffffc4ffffffe8ffffffd10000001dfffffff8ffffffdf",
            INIT_26 => X"0000001e00000001ffffffdfffffffbf00000016fffffff7ffffffe60000000f",
            INIT_27 => X"ffffffec0000003100000011ffffffe7fffffffe00000033ffffffe7ffffffe1",
            INIT_28 => X"0000001c0000001c0000001f00000014fffffffbfffffffb00000019ffffffff",
            INIT_29 => X"0000000800000029ffffffeeffffffc900000039ffffffc0ffffffbd0000000f",
            INIT_2A => X"ffffff9fffffffaaffffffbdffffffcbffffffa3ffffffa8fffffff600000008",
            INIT_2B => X"000000200000000f00000041000000310000001100000008ffffffe200000003",
            INIT_2C => X"ffffff9cffffffb0ffffff7dffffffda0000000e0000001f000000150000000c",
            INIT_2D => X"0000001b0000003300000041fffffffffffffffefffffff4ffffffeeffffffbe",
            INIT_2E => X"ffffffe9fffffff400000005ffffffe800000007000000100000001f00000018",
            INIT_2F => X"fffffff60000001e00000018fffffffd00000000fffffff9fffffff4fffffff9",
            INIT_30 => X"ffffffeb00000009ffffffe3ffffffe3ffffffd9000000090000000100000003",
            INIT_31 => X"fffffff9ffffffdf0000002000000000ffffffe10000003dffffffdeffffffdd",
            INIT_32 => X"ffffffeb0000000cfffffffeffffffe900000015fffffffafffffff10000000d",
            INIT_33 => X"00000012fffffff0fffffff9fffffff8ffffffd7ffffffcf0000002200000015",
            INIT_34 => X"0000000b00000004ffffffff000000090000001000000008fffffffb00000011",
            INIT_35 => X"00000017000000080000000c0000002dfffffff0fffffff800000008ffffffc5",
            INIT_36 => X"0000001effffffe6ffffffbf0000001d0000000d0000000b000000210000001f",
            INIT_37 => X"0000002c000000330000000b00000013ffffffe30000001700000003ffffffd1",
            INIT_38 => X"000000160000000ffffffff900000018fffffff4000000280000001100000015",
            INIT_39 => X"0000000c0000002800000003fffffff900000024ffffffe50000000b0000000c",
            INIT_3A => X"0000005500000017000000480000003400000002000000440000002bffffffc7",
            INIT_3B => X"0000001e00000003ffffffef00000000fffffffcffffffdaffffffde00000039",
            INIT_3C => X"fffffffa00000022fffffffafffffff30000002dfffffffc0000002400000003",
            INIT_3D => X"0000000e00000014fffffff6000000240000001efffffff10000001bfffffff2",
            INIT_3E => X"0000001cffffffdf0000001a000000030000001c0000000b000000190000000c",
            INIT_3F => X"ffffffee0000000000000004ffffffd90000000ffffffff1ffffffe3fffffffb",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff40000000bfffffff80000000300000007fffffff5000000180000002a",
            INIT_41 => X"0000000b000000070000001efffffff00000000300000026ffffffe40000002d",
            INIT_42 => X"00000015fffffff40000001a00000003000000110000000cffffffdb00000004",
            INIT_43 => X"00000029ffffffecffffffd9fffffff8ffffffef0000000bffffffb20000000a",
            INIT_44 => X"0000003a00000034ffffffeffffffff900000016ffffffd6ffffffc600000001",
            INIT_45 => X"0000001500000006ffffffd50000001700000012ffffffe00000000900000029",
            INIT_46 => X"0000001c0000000d0000001400000011ffffffff0000002500000007ffffffe7",
            INIT_47 => X"000000060000001affffffe8fffffff100000001fffffff8fffffff900000015",
            INIT_48 => X"0000000600000009ffffffef0000002b0000000b0000000f0000000c0000000c",
            INIT_49 => X"0000001600000000fffffffd00000002ffffffee0000000bfffffff7fffffffa",
            INIT_4A => X"fffffff2ffffffecfffffff800000014fffffff40000000400000017ffffffe0",
            INIT_4B => X"0000000400000000ffffffe60000001100000010ffffffe500000002fffffff0",
            INIT_4C => X"ffffffefffffffe9ffffffe9ffffffe700000006fffffff9fffffff60000000f",
            INIT_4D => X"0000001f0000001600000012fffffffb00000032fffffffcffffffdffffffff9",
            INIT_4E => X"00000009ffffffd1ffffffe6ffffffe1ffffffe8ffffffccfffffff00000003c",
            INIT_4F => X"00000052000000130000001200000035ffffffeefffffffaffffffbdffffffe0",
            INIT_50 => X"fffffff5ffffffff00000022ffffffd9000000380000001e0000003200000053",
            INIT_51 => X"fffffff50000001e00000010ffffffe8fffffff7ffffffdd0000003900000002",
            INIT_52 => X"ffffffefffffffe9fffffff4fffffff5ffffffdafffffff50000000000000015",
            INIT_53 => X"fffffff900000045ffffffff000000050000002c000000210000001600000020",
            INIT_54 => X"00000007ffffffde0000000fffffffeeffffffefffffffe70000002a00000015",
            INIT_55 => X"00000036ffffffc50000002800000019ffffffa400000015ffffffe8ffffffc0",
            INIT_56 => X"ffffffffffffffbdffffffe200000013ffffffebffffffee00000022ffffffe1",
            INIT_57 => X"0000002500000009ffffffab00000033ffffffdeffffffc5ffffffee00000003",
            INIT_58 => X"ffffffb1ffffffbcffffffd7ffffffddfffffff3ffffffd1ffffffe1ffffffee",
            INIT_59 => X"000000000000000b000000010000001cffffff97ffffffaefffffff0ffffffb2",
            INIT_5A => X"fffffff2fffffff7000000010000000c000000180000001effffffe2fffffff4",
            INIT_5B => X"00000005ffffffedfffffffefffffff800000027ffffffdf000000110000001d",
            INIT_5C => X"00000023fffffff9ffffffcdffffffec00000002ffffffddffffffe7fffffffe",
            INIT_5D => X"ffffffee000000090000000dffffffefffffffe700000020ffffffe3fffffff7",
            INIT_5E => X"0000000b000000100000003400000002fffffff2ffffffd4ffffffe9ffffffe4",
            INIT_5F => X"00000028000000170000000800000014fffffffcffffffedfffffff700000013",
            INIT_60 => X"000000170000003c0000002b0000000b00000034000000250000000800000004",
            INIT_61 => X"fffffffc00000012000000250000002000000025ffffffd3000000030000002f",
            INIT_62 => X"fffffff9ffffffdf00000013000000160000002700000012ffffffea0000000e",
            INIT_63 => X"0000001b0000001600000002ffffffe7ffffffe3ffffffd1fffffffcffffffed",
            INIT_64 => X"00000007000000010000000b0000000a000000130000000f0000000b00000012",
            INIT_65 => X"ffffffb90000000e0000002e0000001a000000060000001b0000002600000021",
            INIT_66 => X"0000002e00000003fffffff30000000b00000015ffffffd700000018fffffff7",
            INIT_67 => X"ffffffabffffffaeffffffeffffffff0ffffffc3fffffff2ffffffc4ffffffd3",
            INIT_68 => X"000000100000002700000030000000030000002800000009ffffffc7ffffffc7",
            INIT_69 => X"ffffffca000000070000002dffffffd8ffffffea00000025fffffffd0000001d",
            INIT_6A => X"fffffffe00000009fffffffdfffffff600000010ffffffed000000000000000f",
            INIT_6B => X"00000016fffffffafffffffd00000003ffffffec00000008fffffffbffffffe1",
            INIT_6C => X"ffffffe0ffffffd70000000b0000002b00000015000000000000004800000060",
            INIT_6D => X"0000001500000008ffffffeeffffffd6ffffffe5ffffffbcffffffb800000004",
            INIT_6E => X"00000009fffffff000000006ffffffea0000000900000006ffffffd4fffffff8",
            INIT_6F => X"fffffff10000000700000022fffffffb000000020000001a0000000300000012",
            INIT_70 => X"0000001300000000fffffff8ffffffec00000008ffffffe800000009ffffffff",
            INIT_71 => X"00000036ffffffe4ffffffbeffffffe9000000010000002affffffeb00000019",
            INIT_72 => X"0000004d0000004700000013000000420000003700000017ffffffeb0000001e",
            INIT_73 => X"0000001800000045ffffffe80000000e00000028000000280000004100000011",
            INIT_74 => X"0000004a0000001a0000004b000000380000002200000017fffffff900000008",
            INIT_75 => X"0000002c000000260000001f0000002e0000002e000000170000003e00000037",
            INIT_76 => X"000000160000002ffffffffffffffffcffffffe7000000350000003e00000021",
            INIT_77 => X"fffffff00000000b00000004fffffff5ffffffe6fffffffcffffffc900000010",
            INIT_78 => X"fffffff0fffffff3fffffff0ffffffc7ffffffdaffffffc80000000b0000000b",
            INIT_79 => X"000000030000001200000000ffffffdfffffffd900000000000000090000000a",
            INIT_7A => X"ffffffeafffffff700000013fffffff2000000180000002e0000002300000019",
            INIT_7B => X"ffffffeafffffff0fffffff1ffffffd100000026000000000000000afffffff9",
            INIT_7C => X"0000000600000021ffffffd5ffffffe40000001d0000000e0000001b00000008",
            INIT_7D => X"fffffff0fffffffbfffffff600000022fffffffbfffffff900000027ffffffe9",
            INIT_7E => X"fffffff4fffffff8ffffffd8fffffff1ffffffe1ffffffdfffffffec00000000",
            INIT_7F => X"00000024fffffffc000000290000002afffffffcffffffc9ffffffbbffffffba",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000034ffffffe2ffffffc7ffffffdb0000000b0000002300000007fffffff1",
            INIT_01 => X"ffffffc300000000ffffffef000000060000000d00000022fffffff500000011",
            INIT_02 => X"0000002b00000017fffffff40000000afffffff1000000290000000800000000",
            INIT_03 => X"0000000a00000000fffffffefffffff5ffffffebfffffff600000019fffffffe",
            INIT_04 => X"0000000effffffc400000012fffffff7ffffffdcfffffff5ffffffda00000007",
            INIT_05 => X"ffffffed00000011ffffffe000000007fffffffd00000004fffffffbfffffffd",
            INIT_06 => X"00000006fffffff0ffffffdbffffffebffffffefffffffe0ffffffd200000000",
            INIT_07 => X"fffffffbfffffff800000024ffffffdcffffffefffffffe700000018ffffffee",
            INIT_08 => X"0000002300000033ffffffccffffffddffffffe40000000d000000170000000e",
            INIT_09 => X"fffffff9ffffffe1fffffff3ffffffcbfffffff1fffffffcfffffffd0000000c",
            INIT_0A => X"0000002c0000000bfffffff9ffffffe9fffffff90000000effffffccffffffd4",
            INIT_0B => X"ffffffecffffffe500000049000000530000001200000012000000400000003d",
            INIT_0C => X"ffffffe3ffffffd7ffffffd8ffffffd8ffffffeb00000018ffffffdc0000002f",
            INIT_0D => X"ffffffe2fffffffdfffffffffffffff60000000c00000003fffffffd0000000c",
            INIT_0E => X"0000001affffffdaffffffdd0000003100000024fffffff1ffffffebffffffdf",
            INIT_0F => X"00000039fffffff80000001a00000039fffffff8fffffff1fffffff3ffffffea",
            INIT_10 => X"ffffffc6ffffffcaffffffe0ffffffe700000029ffffffe40000001500000057",
            INIT_11 => X"ffffffd5fffffff6ffffffdbffffffdaffffffe6ffffffd5fffffffeffffffdc",
            INIT_12 => X"0000001b00000004ffffffff00000006ffffffee0000000000000005fffffff1",
            INIT_13 => X"ffffffee0000000000000009ffffffee0000000affffffff00000012fffffffa",
            INIT_14 => X"000000130000000d000000090000001000000022000000240000001300000004",
            INIT_15 => X"00000036000000220000001300000014fffffffeffffffd4fffffff8fffffff9",
            INIT_16 => X"000000270000004c00000029fffffff400000021000000000000003d00000036",
            INIT_17 => X"fffffff900000012fffffff7ffffffddffffffff000000510000006500000056",
            INIT_18 => X"00000052fffffff900000014fffffffc00000018fffffffdffffffc3ffffffd6",
            INIT_19 => X"00000042000000480000002f000000570000004000000044000000330000006c",
            INIT_1A => X"0000001600000008ffffffb9ffffff98ffffff830000000000000011ffffffdd",
            INIT_1B => X"fffffffbffffffe0ffffffc5ffffffc2ffffffafffffffca0000000000000014",
            INIT_1C => X"00000010000000100000000cfffffff3ffffffd60000002cffffffe5ffffffe1",
            INIT_1D => X"000000190000000300000013fffffff9ffffffeb0000000e000000170000000a",
            INIT_1E => X"fffffffb0000000cfffffff800000001fffffff800000005fffffff600000020",
            INIT_1F => X"0000001e0000000d0000000d00000023000000090000001bffffffdafffffff8",
            INIT_20 => X"fffffff4fffffffd000000270000002000000012000000010000000400000014",
            INIT_21 => X"ffffffee00000017000000290000000effffffe300000000ffffffc3ffffffdf",
            INIT_22 => X"ffffffe300000003ffffffffffffffe700000004ffffffcbffffffdb0000001e",
            INIT_23 => X"000000270000001f0000001300000016fffffff1fffffff0ffffffc6fffffff0",
            INIT_24 => X"fffffff7ffffffd4ffffffbaffffff8cfffffffbffffffceffffffca00000023",
            INIT_25 => X"fffffff2ffffffeaffffffef0000000b00000013ffffffe00000001a0000000d",
            INIT_26 => X"00000000fffffffd00000009000000280000000b000000400000004700000036",
            INIT_27 => X"ffffffe6ffffffe7fffffffefffffffa000000060000001c00000032ffffffde",
            INIT_28 => X"fffffff500000006fffffffb0000004b00000042000000380000000d00000006",
            INIT_29 => X"00000018fffffff6000000230000003000000011ffffffe5ffffffa1ffffffb8",
            INIT_2A => X"fffffff20000001c0000001400000010ffffffc8ffffffbfffffffe900000013",
            INIT_2B => X"00000018000000390000002affffffdeffffffa1ffffffd5fffffffcfffffffb",
            INIT_2C => X"00000004ffffffffffffffe7ffffffd7ffffffbd0000001800000012fffffff5",
            INIT_2D => X"00000027ffffffe8fffffffefffffff6fffffffafffffff6fffffffc00000014",
            INIT_2E => X"ffffffc1ffffff96ffffff9d000000000000000ffffffff00000004400000033",
            INIT_2F => X"000000060000001200000000ffffffd6ffffffdcffffffccffffffebffffffee",
            INIT_30 => X"000000030000001bffffffeb0000001afffffffdfffffff0000000000000000f",
            INIT_31 => X"fffffff200000001ffffffe7fffffff60000000a0000000efffffff2ffffffee",
            INIT_32 => X"fffffff4ffffffdd0000000cfffffff700000001ffffffe1fffffff400000004",
            INIT_33 => X"fffffff6ffffffc7ffffffdcffffffeaffffffeeffffffe7fffffff900000012",
            INIT_34 => X"fffffffa000000050000000100000021ffffffe6ffffffc6ffffffe000000001",
            INIT_35 => X"000000160000000ffffffff20000001b0000000bffffffd3fffffffcffffffcc",
            INIT_36 => X"0000001cffffffcdffffffcaffffffc7ffffffe3ffffffeeffffffea00000020",
            INIT_37 => X"ffffffec00000014fffffff10000000500000011fffffff20000002100000025",
            INIT_38 => X"0000000e00000012000000010000000efffffffe0000000500000003ffffffef",
            INIT_39 => X"fffffff7ffffffeaffffffdbffffffe5ffffffeeffffffecffffffe50000001a",
            INIT_3A => X"0000007000000051000000140000003d0000004500000000ffffffd3ffffffe3",
            INIT_3B => X"00000047ffffffe6fffffffe00000011fffffffe00000015fffffff3fffffff7",
            INIT_3C => X"00000020fffffffc0000003b0000003e0000001300000029ffffffd900000029",
            INIT_3D => X"000000020000000100000007ffffffff00000021ffffffdb0000004500000044",
            INIT_3E => X"0000000effffffe6000000120000001e0000002900000013000000030000000c",
            INIT_3F => X"000000010000000c00000005fffffff1ffffffdd00000008fffffff7ffffffe7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000190000000c0000000bfffffff6fffffff9ffffffebfffffff800000000",
            INIT_41 => X"ffffffdbfffffffa00000001fffffff60000000a000000210000003100000010",
            INIT_42 => X"0000002500000001fffffff600000010fffffff5ffffffe2fffffff000000008",
            INIT_43 => X"0000000a00000000000000070000001a0000000affffffebfffffffaffffffee",
            INIT_44 => X"0000002500000014000000190000000200000005ffffffccffffffb8ffffffc9",
            INIT_45 => X"00000017fffffff4fffffff2fffffff4ffffffce0000001dfffffff700000007",
            INIT_46 => X"ffffffebffffffe20000000b000000070000002a00000020ffffffdffffffffa",
            INIT_47 => X"0000000f00000000fffffffbfffffffe00000028000000110000000500000006",
            INIT_48 => X"00000018fffffffd000000310000000e000000260000001a0000002e00000020",
            INIT_49 => X"00000034000000360000004fffffffd7ffffffd700000019ffffffd5ffffffce",
            INIT_4A => X"000000240000004cffffffd9ffffffe6ffffffe3ffffffd7fffffffafffffff2",
            INIT_4B => X"00000005fffffff7ffffffe5ffffffe6ffffffd2ffffffdcffffffdc0000002b",
            INIT_4C => X"000000160000001a000000280000000b000000160000000c0000000300000024",
            INIT_4D => X"fffffffe00000010ffffffebfffffff1ffffffe8000000160000003300000009",
            INIT_4E => X"ffffffe400000004ffffffdf000000090000001a0000000000000003ffffffde",
            INIT_4F => X"fffffff7ffffffe4fffffff8fffffff10000001f0000001effffffd1ffffffeb",
            INIT_50 => X"ffffffccffffffd9fffffffd0000001700000000ffffffe9fffffffd00000008",
            INIT_51 => X"0000000c0000002b0000003100000028000000190000000000000008ffffffe6",
            INIT_52 => X"00000003ffffffec00000001ffffffeb0000000500000005ffffffec00000023",
            INIT_53 => X"ffffffd8ffffffe2000000470000002f0000001200000058000000430000000b",
            INIT_54 => X"000000150000000d00000004fffffffffffffff7ffffffe40000000a00000011",
            INIT_55 => X"ffffffffffffffe5fffffffffffffffeffffffe6fffffffc0000001000000009",
            INIT_56 => X"00000004fffffff5ffffffcfffffffd9ffffffe40000001d0000000d0000002a",
            INIT_57 => X"fffffff5fffffffb0000002e00000029000000220000001b0000002900000007",
            INIT_58 => X"00000012fffffffbfffffff1000000170000001effffffda0000003e00000051",
            INIT_59 => X"000000000000000d0000002a000000090000001a0000000a00000004fffffff1",
            INIT_5A => X"ffffffe7000000160000002600000023ffffffe4ffffffeeffffffe6ffffffec",
            INIT_5B => X"00000005000000240000001e00000000ffffffe500000003ffffffebffffffdd",
            INIT_5C => X"fffffff000000008fffffffbfffffff6ffffffec00000008fffffffffffffffb",
            INIT_5D => X"00000000ffffffe0fffffff00000000000000006fffffffbfffffffa0000000f",
            INIT_5E => X"ffffffec00000000ffffffeffffffff700000006ffffffe80000000400000004",
            INIT_5F => X"0000000d00000012fffffffcfffffff2ffffffeb00000010fffffffffffffff7",
            INIT_60 => X"0000001e00000006000000020000000cffffffe8ffffffe8fffffff60000001a",
            INIT_61 => X"0000000b000000000000001afffffff9ffffffef0000000cfffffffbfffffffd",
            INIT_62 => X"ffffffe9fffffff5ffffffedfffffff1fffffffefffffff800000007fffffff5",
            INIT_63 => X"ffffffe4ffffffe9ffffffebffffffe4ffffffecffffffe5ffffffda00000007",
            INIT_64 => X"000000000000000b000000080000000c00000000000000070000000dffffffe5",
            INIT_65 => X"ffffffdffffffffbffffffffffffffe8fffffff6ffffffeafffffff2ffffffed",
            INIT_66 => X"ffffffed0000000bffffffebffffffebffffffe5ffffffe30000000600000014",
            INIT_67 => X"00000004fffffffbffffffeaffffffe700000008ffffffeefffffff0ffffffed",
            INIT_68 => X"ffffffe8fffffffaffffffedfffffff3ffffffe800000000ffffffecfffffff8",
            INIT_69 => X"ffffffe600000004fffffff5ffffffedffffffebfffffff3fffffff2fffffff3",
            INIT_6A => X"ffffffdfffffffe1ffffffefffffffeeffffffe2ffffffedffffffee0000000a",
            INIT_6B => X"ffffffe50000000100000005ffffffecfffffff0000000090000000600000000",
            INIT_6C => X"ffffffebfffffffbfffffff8fffffff00000000affffffdcffffffeb00000008",
            INIT_6D => X"fffffff00000000100000000ffffffe800000004ffffffe30000000a00000001",
            INIT_6E => X"0000000d00000005fffffff6fffffff4fffffffaffffffeefffffffbffffffe6",
            INIT_6F => X"0000000c0000000000000001fffffffefffffff4ffffffd9ffffffddfffffffd",
            INIT_70 => X"fffffff1fffffff0fffffff100000003fffffffcfffffff5fffffff8ffffffe5",
            INIT_71 => X"00000000fffffffeffffffffffffffe1ffffffe5000000000000000c0000000b",
            INIT_72 => X"fffffff500000008ffffffe70000000ffffffff000000003ffffffeeffffffec",
            INIT_73 => X"00000007fffffffa0000000a0000000dffffffe400000000ffffffec00000006",
            INIT_74 => X"ffffffe2fffffffaffffffeeffffffe8ffffffeaffffffe9ffffffe1ffffffe3",
            INIT_75 => X"ffffffe4fffffff5fffffffcfffffff00000000500000005ffffffdf00000001",
            INIT_76 => X"ffffffeaffffffe7ffffffff0000000affffffe5ffffffec0000000300000003",
            INIT_77 => X"0000000dffffffe6fffffff4ffffffe9ffffffe9ffffffffffffffe6fffffff6",
            INIT_78 => X"ffffffefffffffe90000000000000008fffffff5ffffffedffffffe7fffffff8",
            INIT_79 => X"fffffffcffffffee00000004ffffffe7ffffffe9ffffffec00000007fffffffb",
            INIT_7A => X"fffffffc000000070000000affffffe9fffffffffffffffcffffffed00000001",
            INIT_7B => X"000000020000000efffffff5fffffff3fffffff70000000200000002ffffffe2",
            INIT_7C => X"fffffff800000000fffffffbffffffe2000000080000000100000002ffffffe7",
            INIT_7D => X"0000000affffffeafffffff2fffffffa00000000fffffff7ffffffef00000005",
            INIT_7E => X"0000000afffffffb0000000900000009ffffffecffffffed0000000000000002",
            INIT_7F => X"0000000800000016fffffffffffffff1fffffff900000008fffffffcfffffff2",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000b0000000a00000007ffffffe80000000800000000ffffffecfffffff6",
            INIT_01 => X"00000015ffffffedfffffff800000014ffffffd3fffffff2ffffffefffffffeb",
            INIT_02 => X"00000010000000310000003c0000000a0000000a00000018ffffffdb00000001",
            INIT_03 => X"ffffffe5ffffffc1ffffffd80000000bffffffdb0000002b000000370000002f",
            INIT_04 => X"0000001a0000001cfffffff9fffffffcffffffc7ffffffb6ffffffd8ffffffb8",
            INIT_05 => X"0000001700000022fffffffa0000003000000055000000230000004d0000003b",
            INIT_06 => X"0000001b00000021fffffffdffffffdefffffff0fffffffb0000000affffffea",
            INIT_07 => X"fffffffcffffffe6ffffffcbffffffe2fffffff1ffffffd2ffffffd800000017",
            INIT_08 => X"000000050000000b0000000bfffffff8ffffffff00000016ffffffedffffffe7",
            INIT_09 => X"ffffff95ffffffb9fffffff20000001afffffff3000000230000000d0000002a",
            INIT_0A => X"fffffff40000000000000017ffffffc9000000140000000000000002ffffffb0",
            INIT_0B => X"ffffffdfffffffdafffffff600000008ffffffe2fffffff400000003fffffffe",
            INIT_0C => X"0000000cfffffffb0000000000000010fffffff7ffffffceffffffcbffffffd1",
            INIT_0D => X"ffffffe9fffffff10000000f000000130000001dffffffeaffffffc4fffffff9",
            INIT_0E => X"fffffffc00000006ffffffcc0000001400000002ffffffe30000000e00000010",
            INIT_0F => X"000000110000001b0000002200000016000000150000000f0000000ffffffffb",
            INIT_10 => X"fffffff2ffffffd0ffffffabffffffa80000000000000001ffffffd900000019",
            INIT_11 => X"0000003500000044000000210000000c0000003000000010ffffffd00000000b",
            INIT_12 => X"00000021000000020000001a00000007fffffff90000000d00000001ffffffe9",
            INIT_13 => X"ffffffb7fffffff4ffffffefffffffef0000001f000000190000000600000014",
            INIT_14 => X"ffffffc1ffffffb6ffffffc1ffffffbdffffffedffffffd6ffffffe9ffffffdf",
            INIT_15 => X"fffffff000000004000000050000000e0000000effffffe200000002ffffffd5",
            INIT_16 => X"00000027ffffffd6ffffffeeffffffe30000000e000000190000000500000008",
            INIT_17 => X"ffffffe6fffffff0fffffffcfffffff8000000190000003bffffffdcfffffff5",
            INIT_18 => X"0000002200000010000000060000001900000023ffffffeb0000001500000015",
            INIT_19 => X"0000001dffffffddffffffccffffffd40000000a00000005ffffffee00000015",
            INIT_1A => X"ffffffe5ffffffbdffffff9d00000007fffffffcffffffda0000002700000016",
            INIT_1B => X"ffffff9afffffffbffffffd9ffffffccffffffd0ffffffee00000032ffffffec",
            INIT_1C => X"00000027fffffffd0000001e00000020000000180000000500000015ffffffce",
            INIT_1D => X"00000015fffffffdfffffff20000002300000001ffffffe7000000070000001f",
            INIT_1E => X"ffffffeeffffffe300000003000000090000000a0000001700000015fffffff8",
            INIT_1F => X"ffffffc100000009ffffffffffffffe6fffffffbffffffe00000000e0000000c",
            INIT_20 => X"00000017fffffff2ffffffdeffffffecffffffc9ffffffc5ffffffccffffffb8",
            INIT_21 => X"0000000b00000007fffffffbffffffd5ffffffbe00000001fffffff7ffffffeb",
            INIT_22 => X"fffffff3000000120000003500000039ffffffed000000210000001900000005",
            INIT_23 => X"fffffff7fffffffcffffffd80000002f00000017000000040000001a0000000b",
            INIT_24 => X"ffffffff0000002400000012000000010000000d0000000f0000000cfffffffe",
            INIT_25 => X"ffffffb9ffffffd0ffffff98ffffffc9fffffff5ffffffe9fffffff7fffffffb",
            INIT_26 => X"0000004e00000035000000330000000c00000009fffffff0ffffffdeffffff8a",
            INIT_27 => X"0000004300000034000000260000005900000026000000260000005500000043",
            INIT_28 => X"0000002affffffe2ffffffecfffffffd00000008000000180000002c00000031",
            INIT_29 => X"ffffffe6000000080000000afffffffa0000001800000031ffffffe600000026",
            INIT_2A => X"ffffffe4ffffffef00000022000000280000002c0000000f0000001b0000001b",
            INIT_2B => X"ffffffdfffffffff0000000000000025ffffffedfffffff7fffffffeffffffcd",
            INIT_2C => X"fffffff0ffffffd9ffffffc7ffffffedfffffffdffffffeeffffffe000000000",
            INIT_2D => X"fffffff6fffffffbfffffffcfffffff40000001affffffff0000000a00000039",
            INIT_2E => X"0000001effffffebfffffff600000023ffffffeeffffffdeffffffe800000000",
            INIT_2F => X"ffffffe1ffffffed0000001b000000100000000600000016fffffffdfffffffc",
            INIT_30 => X"00000023fffffff900000020fffffffcfffffff0fffffff1fffffff1ffffffec",
            INIT_31 => X"0000001800000000fffffff7ffffffed00000022000000060000002c0000001b",
            INIT_32 => X"ffffffe7ffffffccfffffffc000000030000002800000015000000130000000b",
            INIT_33 => X"fffffffd0000000effffffe1ffffffcfffffffebffffffe1ffffffcf0000001a",
            INIT_34 => X"fffffffffffffff900000034000000170000000000000022000000040000000a",
            INIT_35 => X"0000000a000000060000000b000000120000001800000012ffffffe5fffffffe",
            INIT_36 => X"ffffffd3ffffffe2ffffffdbffffffab0000002affffffedffffffe300000006",
            INIT_37 => X"0000001affffffd70000000900000051ffffffe3fffffff500000018ffffffd2",
            INIT_38 => X"fffffffaffffffdcffffffe5ffffffbbffffffccffffffd1ffffffd2fffffff3",
            INIT_39 => X"ffffffeaffffffdd00000014fffffff1ffffffdcfffffff5fffffff0ffffffea",
            INIT_3A => X"ffffffe70000000c0000000dffffffe000000016fffffff5fffffff000000017",
            INIT_3B => X"00000006ffffffe1ffffffc900000007ffffffe8ffffffdb0000002200000009",
            INIT_3C => X"00000000ffffffee0000002200000000ffffffe90000001d0000000affffffe9",
            INIT_3D => X"00000011fffffff10000000500000035ffffffe0000000020000003400000005",
            INIT_3E => X"000000040000000300000016fffffff500000016fffffff8fffffff9fffffff1",
            INIT_3F => X"000000450000005a0000001d0000006f0000003f000000200000004500000036",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffd2fffffffbffffffe5ffffffe1fffffff2ffffffe20000000100000035",
            INIT_41 => X"ffffffd5fffffffa00000031fffffff4fffffffc00000008ffffffd3ffffffae",
            INIT_42 => X"ffffffe0ffffffdb00000014ffffffe7ffffffdaffffffe0fffffff900000034",
            INIT_43 => X"0000007b0000001700000049000000350000001bfffffff2ffffffe1fffffffe",
            INIT_44 => X"00000011ffffffdcffffffd6000000360000002700000069000000380000005b",
            INIT_45 => X"ffffffefffffffe60000000fffffffe6ffffffe5ffffffe800000005fffffffe",
            INIT_46 => X"fffffff700000016fffffff1ffffffec000000220000001cffffffe700000012",
            INIT_47 => X"ffffffc8fffffffb00000035fffffff1ffffffe50000001efffffff100000000",
            INIT_48 => X"00000000ffffffe100000000fffffff90000001600000004fffffff700000014",
            INIT_49 => X"fffffff000000026fffffff9ffffffd7ffffffbd0000001e0000003f00000008",
            INIT_4A => X"000000210000000a0000000affffffd8000000010000001afffffff9ffffffd8",
            INIT_4B => X"fffffff0ffffffd100000001ffffffdfffffffd400000009ffffffecffffffef",
            INIT_4C => X"0000000f000000280000000c0000001afffffff0fffffff6ffffffca00000010",
            INIT_4D => X"0000000b00000019ffffffe9ffffffd800000006fffffffe00000028fffffffc",
            INIT_4E => X"ffffffd6ffffffb0000000150000002300000018000000140000000efffffff7",
            INIT_4F => X"ffffffccffffffd5fffffff8fffffff0ffffffd4ffffffe6ffffffd700000003",
            INIT_50 => X"00000006ffffffd1ffffffeaffffffe200000002ffffffd8ffffffc2ffffffcb",
            INIT_51 => X"fffffff8ffffffd900000033fffffff7ffffffdf000000350000003300000031",
            INIT_52 => X"fffffffcffffffc1fffffff2ffffffd0ffffffd3fffffff9ffffffe500000023",
            INIT_53 => X"00000044ffffffddffffffc50000000d000000160000000ffffffff9fffffff4",
            INIT_54 => X"ffffffc2fffffff0fffffff1ffffffebffffffdb00000020ffffffe3ffffffd9",
            INIT_55 => X"ffffffddffffffeaffffffceffffffd7fffffff0ffffffdd0000001000000001",
            INIT_56 => X"fffffff9ffffffccffffffe2ffffffc5ffffffcb00000003fffffffeffffff9f",
            INIT_57 => X"00000022ffffffbe00000002fffffffaffffffe8fffffffaffffffdf00000001",
            INIT_58 => X"ffffffd2ffffffe4ffffffddfffffff800000003ffffffdfffffffd900000048",
            INIT_59 => X"ffffffcd0000001600000017ffffff9cffffffdafffffffaffffffd7fffffff4",
            INIT_5A => X"0000000bffffffd00000003000000005ffffffc4fffffff80000003600000007",
            INIT_5B => X"fffffffc00000028fffffff2ffffffb40000000b0000000efffffff30000002b",
            INIT_5C => X"0000003c0000004e00000069000000390000003800000006fffffff7fffffff1",
            INIT_5D => X"ffffffc4ffffffda00000000fffffffaffffffe0000000230000006600000055",
            INIT_5E => X"fffffffcfffffff9ffffffd6ffffffdfffffffaaffffffcaffffffdbffffffb1",
            INIT_5F => X"fffffffc0000000d00000004ffffffd0fffffffdfffffffaffffffb4fffffff2",
            INIT_60 => X"ffffffeffffffff1ffffffdb00000018fffffffbffffffe4ffffffeafffffff7",
            INIT_61 => X"00000001ffffffe40000004700000013ffffffebffffffdcffffffe5fffffff2",
            INIT_62 => X"0000001cffffffdbffffffd500000023ffffffeeffffffd00000003d0000002e",
            INIT_63 => X"ffffffd600000007000000270000000bffffffdefffffff20000000bfffffff0",
            INIT_64 => X"ffffffdf0000000afffffff9ffffffe90000000cffffffe90000002100000003",
            INIT_65 => X"ffffffe6fffffff5fffffff7fffffffbfffffff2ffffffe900000015ffffffe1",
            INIT_66 => X"ffffffe3ffffffd6fffffffcffffffe7ffffffd10000003200000007ffffffed",
            INIT_67 => X"fffffff80000002800000014ffffffd6ffffffd70000000effffffdcfffffffb",
            INIT_68 => X"ffffffecffffffcbffffffd80000002900000011000000030000003a0000000e",
            INIT_69 => X"ffffffccffffffdc0000004300000017ffffffef00000007fffffff4ffffffea",
            INIT_6A => X"00000014ffffffd2ffffffef0000000cffffffe2ffffffe10000000400000005",
            INIT_6B => X"000000230000001a0000002100000011fffffff90000000a0000001200000024",
            INIT_6C => X"fffffff2fffffff0fffffff0000000140000000cfffffffcfffffffc00000012",
            INIT_6D => X"fffffff2000000090000001300000003fffffff1000000370000003600000019",
            INIT_6E => X"fffffffb00000041fffffffc0000000a00000015ffffffce0000000ffffffffc",
            INIT_6F => X"0000002c00000010ffffffd2fffffff8ffffffd600000009fffffffbffffffe6",
            INIT_70 => X"0000001e00000031fffffffeffffffd50000003a000000230000000c00000011",
            INIT_71 => X"0000000c0000001900000006fffffff6ffffffc900000034fffffffcffffffdc",
            INIT_72 => X"00000010fffffffaffffffda00000001fffffff3fffffff90000000800000000",
            INIT_73 => X"ffffffebffffffe0fffffffffffffffa000000060000000e00000000ffffffc4",
            INIT_74 => X"000000130000000dfffffff40000001f00000007fffffff500000000ffffffe0",
            INIT_75 => X"00000006fffffff9fffffff700000015fffffff1000000070000002a0000000a",
            INIT_76 => X"fffffff0ffffffb7ffffffc4ffffffffffffffecfffffff00000000a00000036",
            INIT_77 => X"00000017000000070000001dffffffeb0000001cfffffff1ffffffedffffffe5",
            INIT_78 => X"ffffffddfffffffdfffffff1ffffffd2fffffffc00000024fffffff60000001c",
            INIT_79 => X"fffffff800000010ffffffea00000000ffffffa8ffffffdbffffffc4ffffffe7",
            INIT_7A => X"ffffffdd00000007fffffff3ffffffd3ffffffd9ffffffd0ffffffebffffffe5",
            INIT_7B => X"ffffffd4fffffffb00000019000000060000000100000000fffffff40000000b",
            INIT_7C => X"00000007ffffffb7ffffffcdffffffccffffffddfffffff000000007ffffffef",
            INIT_7D => X"fffffff1ffffffebffffffe4ffffffc4ffffffe3ffffffe1ffffffd9ffffffda",
            INIT_7E => X"00000006ffffffdfffffffe0ffffffc8ffffff93ffffffbdffffffa4ffffffcd",
            INIT_7F => X"00000010fffffffa000000040000002dffffffe7000000110000001fffffffdb",

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


    MEM_IWGHT_LAYER1_ENTITY14 : if BRAM_NAME = "iwght_layer1_entity14" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000005b000000660000000d000000480000004a000000100000000a0000000a",
            INIT_01 => X"ffffffe0ffffffd900000007fffffff3ffffffee000000380000009000000053",
            INIT_02 => X"ffffffe7fffffffdfffffff1ffffffdbfffffff3ffffffcaffffffdefffffffc",
            INIT_03 => X"ffffffedfffffffbfffffff9ffffffeffffffffbfffffff400000010fffffff0",
            INIT_04 => X"000000000000001dffffffddffffffedffffffecfffffffe00000009ffffffd0",
            INIT_05 => X"00000008ffffffedfffffffefffffff6fffffffefffffff900000023ffffffe2",
            INIT_06 => X"ffffffffffffffc8ffffffdaffffffcfffffffd20000000fffffffcdffffffca",
            INIT_07 => X"ffffffe9fffffffefffffffb0000003b00000018000000120000003e00000009",
            INIT_08 => X"ffffffed0000000b00000006ffffffeb0000000700000000fffffffc0000000d",
            INIT_09 => X"ffffffc6000000010000000bffffffe2000000000000003b000000450000000f",
            INIT_0A => X"ffffffffffffffe6ffffffff0000003afffffff7ffffffd9ffffffdaffffffe7",
            INIT_0B => X"00000025fffffff100000012fffffff4ffffffdfffffffceffffffddffffffca",
            INIT_0C => X"00000013fffffff5000000020000003e000000340000002a000000180000004e",
            INIT_0D => X"fffffffaffffffc6ffffffe3fffffff3ffffffe3ffffffbf00000006fffffff7",
            INIT_0E => X"000000370000000700000012fffffff000000010fffffff6ffffffda00000008",
            INIT_0F => X"fffffff20000000afffffffcffffffda0000000d0000001effffffec0000000e",
            INIT_10 => X"fffffffeffffffe00000001b000000040000001200000024fffffffdfffffff8",
            INIT_11 => X"0000000c00000022fffffff0fffffffd000000000000000a00000011fffffff5",
            INIT_12 => X"ffffffccffffffcfffffffd6ffffffdaffffffbcffffffc40000001600000017",
            INIT_13 => X"00000025ffffffa10000001c00000012ffffffc5ffffffeeffffffddfffffff8",
            INIT_14 => X"ffffffa5ffffffe1ffffffa0ffffff760000001000000016fffffff000000000",
            INIT_15 => X"0000001f0000000d0000000f00000001ffffffc1000000030000000bffffff7b",
            INIT_16 => X"00000021000000040000002c0000002200000001000000160000002800000000",
            INIT_17 => X"00000039fffffff7ffffffbeffffffaa00000025ffffffe8ffffffe200000011",
            INIT_18 => X"0000001e0000001a00000020fffffff20000002900000028fffffff200000006",
            INIT_19 => X"ffffffcfffffffdbffffffeeffffffdeffffffe8fffffff9ffffffe500000037",
            INIT_1A => X"ffffffe80000001000000021ffffffed000000280000001c00000027ffffffd6",
            INIT_1B => X"0000000ffffffff800000000fffffff90000001a00000012fffffffbfffffff9",
            INIT_1C => X"00000017ffffffd60000002d0000002c0000000dffffffd8ffffffe50000001a",
            INIT_1D => X"ffffffea000000190000000f000000100000000d00000013ffffffe700000015",
            INIT_1E => X"00000002000000100000001b000000200000000b000000000000001100000020",
            INIT_1F => X"0000002afffffff80000002500000006ffffffdffffffffc00000023ffffffff",
            INIT_20 => X"ffffffe00000000bffffffecffffffe300000020fffffffeffffffe80000002e",
            INIT_21 => X"000000230000000c000000120000000300000006ffffffe00000000ffffffff2",
            INIT_22 => X"00000039ffffffc4ffffffdaffffffc3ffffffc9fffffff6ffffffdeffffffb6",
            INIT_23 => X"ffffffc100000023fffffff3fffffffd0000003800000028fffffffc00000003",
            INIT_24 => X"00000019ffffffd6fffffff7ffffffe7fffffff00000001c00000005ffffffff",
            INIT_25 => X"ffffffe100000016ffffffecffffffc3ffffffe0ffffffee00000011fffffff7",
            INIT_26 => X"00000035ffffffdaffffffc7fffffff900000005fffffffb00000033ffffffe7",
            INIT_27 => X"ffffffe1ffffffe3ffffffeeffffffec0000001c00000059ffffffb7fffffffa",
            INIT_28 => X"00000002fffffffbffffffe3000000010000003bffffffe8ffffffdf00000022",
            INIT_29 => X"ffffffdf00000019fffffff4ffffffd3fffffffa0000000dfffffffd00000027",
            INIT_2A => X"fffffff2ffffffe9ffffffe800000016ffffffebffffffe00000001bfffffff3",
            INIT_2B => X"0000002a00000023ffffffcf0000002a00000016ffffffd5ffffffdfffffffc0",
            INIT_2C => X"0000003a000000040000001200000006ffffffe300000003ffffffe400000000",
            INIT_2D => X"000000130000000cffffffc5000000160000000cffffffeb0000001600000017",
            INIT_2E => X"fffffff1fffffff20000000afffffff4fffffff400000008fffffff4ffffffb8",
            INIT_2F => X"ffffffa8fffffffeffffffe2fffffffe00000025ffffffc7fffffff80000000e",
            INIT_30 => X"0000002700000020ffffffe50000001bfffffffeffffffc1ffffffecfffffff3",
            INIT_31 => X"fffffff700000002000000000000000dfffffffa00000009000000250000000c",
            INIT_32 => X"fffffff0ffffffef000000160000004dffffffdcfffffff00000002dffffffed",
            INIT_33 => X"0000001cfffffffdffffffd40000000d0000000effffffad0000002600000013",
            INIT_34 => X"00000012fffffffefffffffb000000060000001200000004fffffff800000000",
            INIT_35 => X"00000005ffffffeafffffff9fffffff9fffffff900000007fffffff2fffffff7",
            INIT_36 => X"fffffff000000001fffffffefffffff6fffffff8fffffff100000003ffffffee",
            INIT_37 => X"0000000000000006ffffffff00000000fffffff4fffffff60000000b00000006",
            INIT_38 => X"fffffffe0000000dffffffff00000006fffffff300000005ffffffe800000000",
            INIT_39 => X"fffffff6fffffff200000006fffffffdffffffe9fffffff60000000efffffff2",
            INIT_3A => X"0000000afffffffc00000006ffffffffffffffefffffffeaffffffea00000007",
            INIT_3B => X"fffffffafffffffbffffffe9fffffff5fffffffa0000000c0000000cfffffff1",
            INIT_3C => X"000000000000000000000006fffffff400000006fffffff2ffffffe700000004",
            INIT_3D => X"ffffffe700000009fffffff700000002ffffffef0000000bfffffff9fffffffe",
            INIT_3E => X"000000080000000afffffff4ffffffec0000001200000002fffffffbfffffff2",
            INIT_3F => X"0000000000000000fffffff100000001fffffff2ffffffed00000000fffffff9",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000a0000000affffffec00000000ffffffec0000000dffffffe70000000e",
            INIT_41 => X"0000000ffffffff3fffffff50000000fffffffed00000010fffffffbffffffec",
            INIT_42 => X"fffffff2fffffffffffffffb00000011fffffff00000000dfffffff40000000a",
            INIT_43 => X"00000001fffffff800000000ffffffe60000000100000000ffffffeefffffffc",
            INIT_44 => X"00000006fffffff800000007fffffffdfffffff7ffffffeafffffff1fffffff0",
            INIT_45 => X"ffffffeeffffffefffffffefffffffedffffffebfffffffbfffffff9fffffffd",
            INIT_46 => X"ffffffeffffffff1ffffffeefffffff4fffffffcfffffff800000002fffffffd",
            INIT_47 => X"ffffffecfffffffb0000000efffffff20000000fffffffea0000000b00000009",
            INIT_48 => X"00000009fffffff40000000d0000000f0000000700000012fffffff3ffffffeb",
            INIT_49 => X"0000000000000006ffffffe9ffffffebffffffe8fffffff9000000010000000d",
            INIT_4A => X"fffffff0fffffff30000000effffffed0000000c00000008ffffffe5ffffffe7",
            INIT_4B => X"fffffff80000000500000006ffffffe90000000affffffe7ffffffecfffffff3",
            INIT_4C => X"ffffffecfffffff9000000060000000100000004fffffff90000000b00000003",
            INIT_4D => X"0000000500000001fffffff00000000dffffffeefffffff7fffffff6ffffffed",
            INIT_4E => X"00000006fffffffcffffffe9fffffff300000000ffffffeffffffff4ffffffec",
            INIT_4F => X"ffffffeafffffffdffffffecffffffef0000000afffffffc00000005ffffffec",
            INIT_50 => X"00000009fffffff80000000afffffff3fffffffdffffffe9fffffffdfffffffe",
            INIT_51 => X"ffffffea00000001fffffffe00000007ffffffe70000000100000000ffffffe2",
            INIT_52 => X"0000000d00000003fffffff000000008ffffffeefffffffbfffffff5fffffff4",
            INIT_53 => X"0000000e0000000cfffffff00000000500000007ffffffeffffffffe0000000f",
            INIT_54 => X"0000000b0000000cfffffff0ffffffe4fffffffbfffffff3ffffffed00000015",
            INIT_55 => X"ffffffedfffffffbfffffff4ffffffe90000000d0000001200000005fffffff1",
            INIT_56 => X"fffffff00000000a0000000d0000000fffffffebffffffe80000000bfffffff0",
            INIT_57 => X"0000000d00000004fffffff3fffffffc000000070000000c0000000200000007",
            INIT_58 => X"000000150000000c000000040000001100000010ffffffea00000000fffffff0",
            INIT_59 => X"ffffffff0000000affffffe6fffffffcfffffff5ffffffe4fffffffdfffffff7",
            INIT_5A => X"fffffffb00000026000000050000000b000000320000001d00000019fffffffe",
            INIT_5B => X"fffffff900000000fffffffaffffffd5ffffffdf00000002000000240000001a",
            INIT_5C => X"fffffffcfffffff900000015fffffff3fffffffa000000080000001400000011",
            INIT_5D => X"0000000ffffffffeffffffe60000000a0000000f00000003000000130000002d",
            INIT_5E => X"ffffffe1fffffff7fffffff4ffffffc7fffffff1fffffffd00000001ffffffce",
            INIT_5F => X"fffffffdffffffcdffffffd300000000fffffffc0000000200000004ffffffed",
            INIT_60 => X"ffffffe7000000180000002500000005000000130000002bffffffe6fffffff5",
            INIT_61 => X"0000000700000005000000250000000fffffffec0000000b0000000600000000",
            INIT_62 => X"fffffffaffffffa2ffffffc200000009fffffffdffffffbfffffffe6fffffffb",
            INIT_63 => X"00000014fffffff80000000d0000001c0000001800000007fffffff7fffffff3",
            INIT_64 => X"fffffffffffffff2fffffff20000000a0000001f0000002d00000014fffffff6",
            INIT_65 => X"000000040000001a000000160000000100000000fffffff4ffffffde00000003",
            INIT_66 => X"ffffffc6ffffffc30000000d0000000f0000000c0000000f0000000b00000001",
            INIT_67 => X"00000008ffffffe900000004fffffff3fffffff4ffffffc2ffffffc00000000f",
            INIT_68 => X"0000000f0000000effffffe9ffffffc500000006fffffffbffffffd800000005",
            INIT_69 => X"ffffffcafffffff400000033fffffffa000000050000000b0000000000000006",
            INIT_6A => X"ffffffb4ffffffe7ffffffafffffffc500000000fffffffcffffffe000000013",
            INIT_6B => X"fffffffeffffffc6ffffffe300000020fffffff0fffffffafffffff1fffffff0",
            INIT_6C => X"ffffffd2ffffffe4fffffff3000000000000003b00000025ffffffcfffffffca",
            INIT_6D => X"00000009ffffffdc0000001d0000000bfffffff0ffffffc8ffffffc8fffffff7",
            INIT_6E => X"fffffffa0000001100000000ffffffd60000000800000000ffffffeffffffffe",
            INIT_6F => X"0000000c00000010fffffff0fffffff4ffffffe9ffffffd7ffffffe5fffffffa",
            INIT_70 => X"00000004ffffffeffffffffffffffff4fffffff300000006fffffffcffffffe4",
            INIT_71 => X"0000000affffffe8ffffffbc00000029ffffffeeffffffdc0000000bffffffe5",
            INIT_72 => X"fffffff80000000dffffffff000000170000000b0000000400000026fffffffa",
            INIT_73 => X"000000530000003400000001000000120000004d0000001900000017fffffff6",
            INIT_74 => X"0000000b00000000ffffffff0000000e00000000ffffffe700000010ffffffff",
            INIT_75 => X"ffffffe9ffffffdd0000003bfffffff7ffffffe7fffffff30000002bfffffff5",
            INIT_76 => X"fffffffa00000006ffffffe6ffffffebfffffff6ffffffe4ffffffe70000000e",
            INIT_77 => X"ffffffffffffffecffffffd0ffffffe4ffffffd4ffffffedffffffef0000000c",
            INIT_78 => X"000000310000002000000009fffffff6fffffffd00000012fffffff0ffffffdb",
            INIT_79 => X"00000012ffffffd2fffffff00000000cffffffe8ffffffe2ffffffe300000018",
            INIT_7A => X"00000029000000240000001efffffff00000001800000003fffffff100000023",
            INIT_7B => X"ffffffc6fffffff50000001cffffffb8fffffff500000028ffffffe300000000",
            INIT_7C => X"fffffffe00000000fffffff300000001000000080000000600000000ffffffff",
            INIT_7D => X"ffffffdc00000029000000380000000e00000013000000060000002300000007",
            INIT_7E => X"ffffffd9ffffffd1fffffffd00000019fffffffdfffffff80000001000000007",
            INIT_7F => X"ffffff99ffffffb7ffffffd8ffffffd0ffffffb9ffffffafffffffbefffffff2",

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
    end generate MEM_IWGHT_LAYER1_ENTITY14;


    MEM_IWGHT_LAYER1_ENTITY15 : if BRAM_NAME = "iwght_layer1_entity15" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffb70000002600000046ffffffe7ffffff9dffffff86ffffffafffffffc5",
            INIT_01 => X"00000013000000280000003d00000001ffffffc0fffffff5fffffffbffffffef",
            INIT_02 => X"fffffff6fffffffc000000230000001000000034000000230000000000000000",
            INIT_03 => X"fffffff8fffffffd00000000fffffff8000000000000000500000003fffffffe",
            INIT_04 => X"0000001c0000000f00000022000000220000001f0000001e0000000f00000014",
            INIT_05 => X"0000000afffffff0ffffffd000000012ffffffdffffffffcffffffebffffffdc",
            INIT_06 => X"ffffffed0000000afffffffcfffffff3ffffffedffffffeb0000000affffffef",
            INIT_07 => X"fffffff2ffffffec0000000affffffe2fffffff1ffffffeafffffff9fffffff5",
            INIT_08 => X"00000001fffffffd00000001fffffffcfffffff800000001000000080000000c",
            INIT_09 => X"fffffffb00000012000000000000000bfffffff3000000020000001400000004",
            INIT_0A => X"00000009000000020000000a00000012000000140000001b00000015ffffffef",
            INIT_0B => X"0000001400000025000000180000001200000000000000370000004700000012",
            INIT_0C => X"000000100000002a000000270000002100000016000000150000000700000033",
            INIT_0D => X"0000001400000005ffffffedfffffffc00000003ffffffe5fffffff90000000c",
            INIT_0E => X"00000024ffffffe60000001000000028ffffffec000000180000000cffffffd3",
            INIT_0F => X"fffffffc000000050000000e0000000900000005fffffffefffffffefffffff5",
            INIT_10 => X"ffffffecffffffce00000014ffffffe7ffffffea00000018fffffffa00000016",
            INIT_11 => X"ffffffecfffffff3000000010000000dfffffff7fffffff90000001dfffffff9",
            INIT_12 => X"fffffff2fffffff8ffffffffffffffe4000000080000001300000026fffffffb",
            INIT_13 => X"0000000800000009fffffff900000014fffffff800000000fffffff6ffffffed",
            INIT_14 => X"fffffffefffffff90000001ffffffffffffffffffffffffbfffffff2fffffff1",
            INIT_15 => X"fffffffcfffffffc000000050000000fffffffe60000001b0000000effffffe8",
            INIT_16 => X"fffffff1000000080000001900000005ffffffdcfffffff1fffffffdffffffe1",
            INIT_17 => X"ffffffa3ffffffdeffffff94ffffff6effffff6dffffff95ffffffe1ffffff84",
            INIT_18 => X"0000000e0000003400000032000000080000001d000000310000000fffffff84",
            INIT_19 => X"0000001200000011fffffff8000000010000001dfffffffafffffff2fffffff8",
            INIT_1A => X"000000080000001afffffff0ffffffeefffffffafffffff1000000020000000c",
            INIT_1B => X"ffffffb5ffffffdcffffffe4ffffffd3000000290000002d0000002b00000024",
            INIT_1C => X"0000000dfffffffb00000000ffffffa9ffffffa1ffffffaaffffffa7ffffffa5",
            INIT_1D => X"ffffffe7ffffffe90000002e0000002700000030000000110000001700000006",
            INIT_1E => X"0000001c0000001cffffffff00000023fffffffdfffffff1fffffff3ffffffec",
            INIT_1F => X"fffffff3fffffffafffffff0fffffffe0000000cffffffeb000000140000001b",
            INIT_20 => X"0000001500000003000000150000001700000000ffffffff0000001800000009",
            INIT_21 => X"ffffffe900000015ffffffed0000000a0000000900000022000000150000000e",
            INIT_22 => X"0000004800000057000000270000000800000018000000190000000e00000002",
            INIT_23 => X"ffffffe6000000150000000e0000000100000022000000490000000b00000035",
            INIT_24 => X"00000023ffffffedfffffff100000018ffffffc7ffffffe4ffffffeb00000008",
            INIT_25 => X"fffffff2ffffffe4ffffffe20000002c0000000c0000001a0000004000000029",
            INIT_26 => X"000000320000000afffffff9000000260000003c0000000400000013fffffff6",
            INIT_27 => X"fffffff9ffffffd1ffffffc9ffffffd3fffffff200000008fffffff10000001f",
            INIT_28 => X"0000001bfffffff3ffffffe8ffffffeb00000004ffffffe40000000fffffffff",
            INIT_29 => X"00000002000000170000000600000021000000370000000a0000002b00000033",
            INIT_2A => X"00000001ffffffdf0000001dfffffffbfffffffd000000270000000800000006",
            INIT_2B => X"000000090000001500000006000000090000003600000014ffffffd500000004",
            INIT_2C => X"000000040000000a00000021fffffff1ffffffe100000018fffffff700000017",
            INIT_2D => X"ffffffd700000016fffffffeffffffdbffffffe60000000b0000000700000024",
            INIT_2E => X"0000002c00000038fffffffcffffffc9fffffff1ffffffeaffffffdcffffffe2",
            INIT_2F => X"ffffffe0ffffffe60000001200000012ffffffe3ffffffe300000006ffffffd1",
            INIT_30 => X"ffffffda00000016000000060000004300000007fffffff60000001efffffff9",
            INIT_31 => X"0000000700000004ffffffce00000014ffffffe5ffffffbe000000320000000d",
            INIT_32 => X"fffffff4ffffffc7ffffff81fffffff0fffffffdffffffd10000003a00000013",
            INIT_33 => X"00000008fffffff0fffffff1000000030000003c0000003700000018ffffffda",
            INIT_34 => X"fffffff7ffffffedffffffbffffffff3fffffff7ffffffe4ffffffc0ffffffdf",
            INIT_35 => X"ffffffebffffffe200000008fffffff0fffffff1ffffffc900000003ffffffd4",
            INIT_36 => X"ffffffd90000001100000000fffffffffffffffdffffffe70000000ffffffff3",
            INIT_37 => X"0000002dfffffff7fffffff80000002c00000009ffffffe00000002100000006",
            INIT_38 => X"00000019fffffff60000002400000002fffffff30000002f00000018ffffffed",
            INIT_39 => X"00000017ffffffc5ffffffe8fffffff70000000900000009ffffffe800000023",
            INIT_3A => X"fffffff10000000600000018000000080000000f00000008ffffffe50000000b",
            INIT_3B => X"ffffffd0fffffff500000014ffffffb3ffffffd0ffffffd0ffffffb5fffffff7",
            INIT_3C => X"fffffff3ffffffe3ffffffe8ffffffeaffffffe60000001500000011ffffffe0",
            INIT_3D => X"fffffff1fffffffcffffffea0000000b0000002e000000030000000c00000011",
            INIT_3E => X"fffffff8ffffffd00000001bfffffff0fffffff7000000070000001300000004",
            INIT_3F => X"fffffff70000002d0000001dfffffffefffffff2ffffffd100000013ffffffc1",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffcffffffe2ffffffdc00000011ffffffe8fffffffb0000001600000015",
            INIT_41 => X"fffffffb00000001fffffff3fffffff4ffffffe5ffffffbaffffffeaffffffa8",
            INIT_42 => X"000000080000001300000009fffffff800000021fffffff6ffffffebffffffee",
            INIT_43 => X"fffffffafffffff2ffffffcf0000000200000003ffffffd70000002000000006",
            INIT_44 => X"00000002fffffff6fffffffd000000100000000000000000fffffff2fffffff7",
            INIT_45 => X"00000018fffffff400000023000000490000000f0000001400000026fffffff8",
            INIT_46 => X"fffffffaffffffed0000000000000020000000040000000e0000005900000033",
            INIT_47 => X"000000320000002800000017fffffffb00000013ffffffe9ffffffbf00000006",
            INIT_48 => X"ffffffc90000002d0000002afffffff00000003400000036000000110000003f",
            INIT_49 => X"0000001300000020fffffffcffffffe5ffffffe6ffffffe2fffffffefffffff3",
            INIT_4A => X"0000001efffffff900000000ffffffeaffffffd10000001affffffdbffffffd8",
            INIT_4B => X"fffffff900000013fffffff1fffffffa0000003e00000006ffffffd000000018",
            INIT_4C => X"ffffffe2ffffffeafffffff90000002400000038000000030000003b0000002e",
            INIT_4D => X"0000001f0000000affffffec00000013fffffff7fffffff8ffffffd400000004",
            INIT_4E => X"00000005ffffffe2ffffffc7ffffffd9ffffffffffffffe30000000a0000002a",
            INIT_4F => X"00000010fffffffaffffffd8ffffffeffffffffcffffffefffffffedffffffdb",
            INIT_50 => X"0000000cffffffca000000200000002d000000180000003b00000012ffffffe0",
            INIT_51 => X"ffffffef0000001a000000280000002600000019ffffffe5ffffffbe0000001b",
            INIT_52 => X"00000002000000010000000d000000020000000cffffffff000000040000000b",
            INIT_53 => X"00000025fffffff0fffffff0fffffff200000026ffffffd2ffffffe800000009",
            INIT_54 => X"0000003100000019fffffff0ffffff8800000006ffffffedffffff8400000021",
            INIT_55 => X"ffffffe3fffffff90000001affffffdcffffffe700000016fffffffd0000001d",
            INIT_56 => X"0000001b00000022000000280000005000000008ffffffdcffffffee00000003",
            INIT_57 => X"ffffffe6000000300000000f000000040000000500000017000000290000003e",
            INIT_58 => X"000000170000002e000000130000001afffffffbffffffe10000001b00000013",
            INIT_59 => X"ffffffffffffffdc0000000c00000026fffffffc000000100000001b00000014",
            INIT_5A => X"fffffff2fffffff6ffffffffffffffd9fffffff50000000fffffffd700000038",
            INIT_5B => X"0000000f0000001c0000002afffffff6fffffffbffffffd6000000160000002e",
            INIT_5C => X"fffffff200000017fffffffeffffffedffffffe000000018000000250000001a",
            INIT_5D => X"ffffffddffffffeffffffff1ffffffe600000017ffffffd7ffffffdf00000008",
            INIT_5E => X"0000000e00000024ffffffde0000001f0000001affffffc300000004fffffff6",
            INIT_5F => X"ffffffec0000002900000002ffffffd5ffffffe500000012ffffffdeffffffe8",
            INIT_60 => X"ffffffe3fffffff6fffffffdffffffe3ffffffffffffffeaffffffe9ffffffe2",
            INIT_61 => X"ffffffc9ffffffd800000004ffffffefffffffd0fffffffefffffffeffffffec",
            INIT_62 => X"ffffffccffffffb3000000220000001600000007fffffffb000000000000002f",
            INIT_63 => X"ffffffff00000005fffffff100000002fffffff7ffffffe50000000600000020",
            INIT_64 => X"00000018fffffff9000000090000001900000019000000090000002600000008",
            INIT_65 => X"00000000ffffffd9ffffffd6ffffffda0000002600000011ffffffe4ffffffcd",
            INIT_66 => X"000000120000000b0000000affffffc3000000060000001cffffffdc00000016",
            INIT_67 => X"000000130000000600000033ffffffd7fffffff80000002900000017fffffff7",
            INIT_68 => X"0000000efffffff90000000e000000220000000c000000100000000300000014",
            INIT_69 => X"ffffffe4ffffffdc0000001ffffffff400000002000000000000001700000002",
            INIT_6A => X"fffffffc0000003800000017fffffffb0000002e0000003d00000022ffffffe2",
            INIT_6B => X"000000060000003dfffffff40000001d000000370000000afffffff0fffffffc",
            INIT_6C => X"0000003cffffffe4ffffffe4fffffff1ffffffd60000000700000040ffffffe0",
            INIT_6D => X"0000001700000000ffffffd8fffffffdffffffcf00000043ffffffbbffffffe9",
            INIT_6E => X"0000000400000000000000290000000400000038000000130000000b00000010",
            INIT_6F => X"ffffffd100000009ffffffdd0000001a0000001ffffffff6ffffffed0000002c",
            INIT_70 => X"fffffffbffffffceffffffefffffffcffffffff3ffffffbbffffffcaffffffe6",
            INIT_71 => X"ffffffd900000002fffffff60000000affffffecffffffe9fffffff80000000f",
            INIT_72 => X"00000001000000150000001a0000000b0000000600000000fffffff1ffffffe9",
            INIT_73 => X"0000000d00000016ffffffe90000000a000000070000000c000000130000001c",
            INIT_74 => X"00000003000000000000001a00000009fffffff300000009ffffffe0ffffffcd",
            INIT_75 => X"ffffffdb00000012fffffffbffffffeb000000010000000a0000001700000037",
            INIT_76 => X"fffffffa000000030000001f0000002a0000000a0000001500000006ffffffeb",
            INIT_77 => X"ffffffe4ffffffc6fffffff30000000800000022fffffff90000000fffffffe6",
            INIT_78 => X"ffffffd9fffffff600000017ffffffe90000000400000005fffffff700000018",
            INIT_79 => X"000000090000002000000013fffffffa00000006ffffffe3fffffffcffffffe6",
            INIT_7A => X"ffffffebfffffffcfffffff9000000200000000bfffffff40000000600000000",
            INIT_7B => X"0000000c0000002b0000001b000000010000002e0000000effffffe1ffffffef",
            INIT_7C => X"000000280000000600000050000000100000002a00000047fffffffe0000000d",
            INIT_7D => X"ffffffd8ffffffc8ffffffe9ffffffdbffffffde000000540000006b0000004b",
            INIT_7E => X"ffffffedffffffcc00000012fffffff9fffffff1fffffff2ffffffc7ffffffe6",
            INIT_7F => X"ffffffceffffffd70000000800000009fffffff7ffffffc3ffffffd300000009",

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
    end generate MEM_IWGHT_LAYER1_ENTITY15;


    MEM_IWGHT_LAYER1_ENTITY16 : if BRAM_NAME = "iwght_layer1_entity16" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffe00000007fffffffaffffffe8ffffffe0ffffffd0fffffff0ffffffef",
            INIT_01 => X"ffffffe4fffffff3000000060000001f00000017ffffffecfffffff800000016",
            INIT_02 => X"ffffffe3ffffffe90000001500000010fffffffb00000018000000090000000c",
            INIT_03 => X"00000005ffffffd7ffffffe5000000300000001cffffffe1ffffffe3ffffffeb",
            INIT_04 => X"fffffff3ffffffdd00000024fffffffefffffff6000000020000000e0000000b",
            INIT_05 => X"fffffffe000000160000000d00000003ffffffeeffffffecfffffff9ffffffd1",
            INIT_06 => X"00000005ffffffe800000013ffffffecffffffe20000000b0000002700000031",
            INIT_07 => X"00000033fffffffd000000230000000e0000001d0000001bfffffff7ffffffe9",
            INIT_08 => X"ffffffe900000000ffffffea000000030000001c0000000affffffdbfffffff0",
            INIT_09 => X"ffffffd2fffffffa0000003c0000003700000023000000220000002200000001",
            INIT_0A => X"00000018fffffff7ffffffd6ffffffc1ffffffe000000002ffffffceffffffc2",
            INIT_0B => X"0000002000000016000000410000000400000000fffffffe0000000900000000",
            INIT_0C => X"0000001dfffffff70000000a00000010fffffff7ffffffec0000000dfffffff9",
            INIT_0D => X"00000013000000170000001a00000019000000260000001b0000000d00000018",
            INIT_0E => X"ffffffa4000000280000002dffffffc2ffffffee000000420000002100000011",
            INIT_0F => X"ffffffc0ffffffefffffffd0ffffffe200000004fffffffdffffffff00000028",
            INIT_10 => X"00000036ffffffbfffffffb60000003fffffffaeffffffe6fffffff5ffffff8f",
            INIT_11 => X"0000001dffffffecfffffff7ffffffac0000000900000055ffffffbeffffffb7",
            INIT_12 => X"000000200000000a00000000fffffff2ffffffea000000090000002200000006",
            INIT_13 => X"00000024000000130000000e000000070000000affffffff00000006fffffff2",
            INIT_14 => X"000000050000001e000000190000000d00000009000000230000003500000040",
            INIT_15 => X"ffffffe400000002ffffffcd00000000ffffffedffffffbcffffffeefffffff2",
            INIT_16 => X"fffffff8fffffffc00000027ffffffd4ffffffe800000008ffffffe8ffffffdc",
            INIT_17 => X"fffffffb000000300000001effffffe7ffffffee00000002fffffffb00000003",
            INIT_18 => X"ffffffe1ffffffffffffffe3fffffff9ffffffe7000000120000000e0000000b",
            INIT_19 => X"ffffffec0000000ffffffffb000000000000001100000001ffffffce00000000",
            INIT_1A => X"0000000e00000036ffffffe000000013ffffffeaffffffc10000002cfffffff5",
            INIT_1B => X"0000000cfffffff50000000c00000012fffffffe0000002c0000003b00000001",
            INIT_1C => X"0000000dfffffffc00000003ffffffe100000028fffffffcffffffe1fffffffb",
            INIT_1D => X"fffffff7ffffffeaffffffc20000000b0000001affffffec0000000a0000000e",
            INIT_1E => X"00000004000000030000001e000000420000001e0000003200000028ffffffce",
            INIT_1F => X"fffffff70000001400000029fffffff80000000e00000010ffffffcd00000015",
            INIT_20 => X"0000000b0000000bfffffff8ffffff97ffffffd0ffffffeefffffff100000018",
            INIT_21 => X"0000001bffffffe800000014000000030000001b0000000a00000009ffffffe5",
            INIT_22 => X"0000000000000004000000130000000f0000001500000000ffffffe40000001c",
            INIT_23 => X"0000001300000021000000130000001e00000000fffffff70000003a00000025",
            INIT_24 => X"000000090000002200000006ffffffe3ffffffe5000000140000000600000002",
            INIT_25 => X"ffffffed000000020000000bffffffdcfffffff0ffffffdafffffffeffffffeb",
            INIT_26 => X"0000001600000001ffffffe100000002fffffffefffffff4ffffffdbffffffd2",
            INIT_27 => X"ffffffc400000038ffffff8cffffff9d00000003ffffffaeffffff9900000028",
            INIT_28 => X"fffffffd0000000e000000020000001c000000020000002600000012ffffff77",
            INIT_29 => X"0000000e00000016ffffffff0000000a00000000ffffffed0000001f00000015",
            INIT_2A => X"ffffffeaffffffd300000025fffffff9fffffffc0000000e000000190000001a",
            INIT_2B => X"ffffffc6ffffffbcffffff91ffffffdb00000000fffffff20000001b00000003",
            INIT_2C => X"ffffffedffffffe2ffffffcfffffffb7ffffffcd00000006ffffffb1ffffff9c",
            INIT_2D => X"000000000000001000000003fffffffeffffffecfffffffc0000000affffffc8",
            INIT_2E => X"0000000400000018fffffffeffffffee000000160000002b0000000200000011",
            INIT_2F => X"00000001000000070000000e0000001c0000001000000006ffffffe5ffffffea",
            INIT_30 => X"ffffffee00000009ffffffff00000005fffffff30000000e0000001f0000000c",
            INIT_31 => X"fffffff1fffffff80000002500000047fffffff20000003100000018fffffff9",
            INIT_32 => X"ffffffefffffffa6fffffff3ffffffe2ffffffc2fffffff1000000120000001f",
            INIT_33 => X"0000003100000041000000280000003b00000017ffffffd9ffffffd600000017",
            INIT_34 => X"ffffffd9ffffffdcffffffa7ffffffc9ffffffff00000028000000380000003d",
            INIT_35 => X"fffffff2ffffffcdffffffbdffffffe7fffffff2fffffff0ffffffd9ffffffb3",
            INIT_36 => X"0000001afffffff4ffffffdafffffffe0000002cffffffdaffffffb1fffffff3",
            INIT_37 => X"00000012ffffffdd00000004000000000000002f0000003e0000003a00000045",
            INIT_38 => X"00000015ffffffecffffffd800000015fffffffb00000011000000070000000c",
            INIT_39 => X"000000180000002d000000130000002200000052fffffff700000048fffffffd",
            INIT_3A => X"fffffffbfffffff800000001fffffff5fffffff6ffffffdc00000001fffffff3",
            INIT_3B => X"000000110000000c000000210000001e000000160000000f0000000300000015",
            INIT_3C => X"ffffffbbffffffbbffffffbfffffff96ffffffd600000018000000140000000d",
            INIT_3D => X"00000014fffffffffffffff7000000140000000ffffffff8fffffffa00000000",
            INIT_3E => X"ffffffd20000001200000006fffffff1ffffffedffffffef0000001000000004",
            INIT_3F => X"ffffffbbffffffe3ffffffd3ffffffdbffffffabffffffe50000001500000023",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000041ffffffff000000130000001200000022ffffffe0ffffffd7ffffffde",
            INIT_41 => X"ffffffe6ffffffe600000024fffffff1fffffff00000001a00000004fffffff2",
            INIT_42 => X"0000001bffffffe6ffffffdb00000004fffffffa0000002c0000000500000009",
            INIT_43 => X"0000000c00000002000000110000000700000010000000220000001700000010",
            INIT_44 => X"fffffffd0000001100000046ffffffd700000017000000230000000f00000009",
            INIT_45 => X"0000001200000009000000260000000afffffff4fffffff1fffffff70000001e",
            INIT_46 => X"ffffffe5fffffff7fffffff10000000a00000010fffffffa000000070000000b",
            INIT_47 => X"0000002000000003fffffffc000000300000002e00000002ffffffe9ffffffe8",
            INIT_48 => X"00000011fffffffd0000001a0000000d00000025000000110000001000000004",
            INIT_49 => X"fffffffefffffff600000003000000010000000a000000010000000c00000015",
            INIT_4A => X"ffffffe00000001b0000000b000000290000001e0000001f0000001800000002",
            INIT_4B => X"0000004500000035fffffff50000001f0000002900000027000000160000001d",
            INIT_4C => X"ffffffd8ffffffefffffffeffffffff9ffffffe500000017ffffffeb0000001c",
            INIT_4D => X"ffffffe80000000a00000010ffffffeb000000060000000f00000023ffffffff",
            INIT_4E => X"00000007ffffffe400000009fffffff90000000000000004fffffff80000001a",
            INIT_4F => X"000000240000003c0000000a0000001dfffffffcffffffe9fffffff300000024",
            INIT_50 => X"ffffffceffffffc2ffffffedffffffe10000001100000014fffffffcfffffff1",
            INIT_51 => X"00000006fffffff0ffffffddffffffc9ffffffd7fffffff8ffffffb7ffffffd7",
            INIT_52 => X"0000001dfffffff90000002a000000050000002500000003ffffffdbffffffee",
            INIT_53 => X"0000002d0000001d00000049fffffff90000001a0000002600000015fffffff7",
            INIT_54 => X"00000010000000180000000ffffffff10000000300000017000000080000000b",
            INIT_55 => X"0000002d0000000e0000001c00000025ffffffe20000000600000014fffffff8",
            INIT_56 => X"0000000000000009ffffffeaffffffd90000000c00000003000000190000002a",
            INIT_57 => X"ffffffecffffffe4ffffffafffffffc3ffffffe9ffffffe60000000cffffffe4",
            INIT_58 => X"000000020000000a0000002a0000004fffffffbdffffffbbffffffc6ffffffbe",
            INIT_59 => X"fffffffffffffff3fffffff60000000600000012ffffffe50000000a0000003e",
            INIT_5A => X"0000001400000018ffffffee00000008fffffff00000001400000021fffffff9",
            INIT_5B => X"00000017fffffff9ffffffceffffffc6fffffff1fffffff2fffffffb0000000d",
            INIT_5C => X"000000290000000b0000000400000000fffffff20000000c0000001100000001",
            INIT_5D => X"00000000000000080000001cfffffffa00000005000000050000000500000003",
            INIT_5E => X"ffffff92000000020000001c000000160000001c0000002c0000002800000011",
            INIT_5F => X"0000002a0000000800000020000000080000001b00000015ffffffc6ffffffb7",
            INIT_60 => X"fffffff200000009ffffffcaffffffd400000001ffffffef0000000600000004",
            INIT_61 => X"00000013fffffff5fffffff6fffffff4ffffffb9ffffffd8ffffffefffffffc9",
            INIT_62 => X"00000010000000160000000f00000003ffffffe3ffffffedfffffffdfffffffe",
            INIT_63 => X"fffffffcffffffe7ffffffe4fffffffefffffffbffffffe50000000000000005",
            INIT_64 => X"0000000cffffffeaffffffe5fffffffbfffffff70000000d0000000800000000",
            INIT_65 => X"ffffffd5fffffff5fffffffeffffffff000000150000001fffffffd500000016",
            INIT_66 => X"ffffff8effffffc2ffffffabffffffbbffffffbffffffffeffffffe0ffffffd4",
            INIT_67 => X"ffffffb600000000fffffff00000000f0000001d0000002200000019ffffffab",
            INIT_68 => X"ffffffeefffffffb00000040ffffffef0000003f00000031ffffffc3ffffffb8",
            INIT_69 => X"000000160000001300000001fffffffefffffff60000000a0000002e0000001c",
            INIT_6A => X"0000002efffffff400000002000000010000001000000029fffffffc00000001",
            INIT_6B => X"000000050000000a00000007000000240000000d000000380000000100000022",
            INIT_6C => X"0000003dffffffe90000002a000000050000001e000000180000001f00000012",
            INIT_6D => X"fffffff5ffffff9cffffffcbffffff80ffffffe0ffffffffffffffed00000019",
            INIT_6E => X"0000001affffffd1ffffffd800000012fffffffbffffffeb00000010ffffffff",
            INIT_6F => X"ffffffd0ffffff9affffffb9ffffffbbffffffceffffffebffffffd1ffffffe1",
            INIT_70 => X"00000018000000170000001200000023000000230000002700000019ffffffc2",
            INIT_71 => X"fffffffcfffffff30000001e0000001e00000046000000440000000efffffffd",
            INIT_72 => X"ffffffd3ffffffd3fffffffeffffffe3fffffffaffffffd7ffffffe9ffffffcc",
            INIT_73 => X"ffffffedffffffd6ffffffcc0000001affffffd1ffffffd7ffffffebfffffffa",
            INIT_74 => X"00000021ffffffccffffffdaffffffebffffffbbffffffedffffffefffffffed",
            INIT_75 => X"000000170000000affffffb1ffffff90ffffffd3ffffffa6ffffff7bffffffa5",
            INIT_76 => X"00000016000000090000002500000018000000080000000d0000002300000000",
            INIT_77 => X"ffffffb9ffffffe6ffffffbf0000002900000004fffffff5000000040000003d",
            INIT_78 => X"00000006fffffffdffffffef0000001400000010fffffff4000000040000000d",
            INIT_79 => X"00000006ffffffe40000000300000009000000000000000b000000100000000c",
            INIT_7A => X"00000010000000100000000ffffffffe00000011000000030000002400000018",
            INIT_7B => X"ffffffeaffffffb2ffffffefffffffe0ffffffc5000000200000001d00000011",
            INIT_7C => X"00000022fffffff4fffffff600000006ffffffeaffffffe2ffffffcfffffffde",
            INIT_7D => X"0000000fffffffdc000000040000002d0000004800000001000000180000002b",
            INIT_7E => X"fffffff40000001dffffffe50000001800000008fffffff8fffffffa00000013",
            INIT_7F => X"ffffffecffffffeffffffff2fffffff6ffffffe0fffffff4fffffffefffffffa",

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
    end generate MEM_IWGHT_LAYER1_ENTITY16;


    MEM_IWGHT_LAYER1_ENTITY17 : if BRAM_NAME = "iwght_layer1_entity17" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000002d0000002b000000070000000bffffffff00000004ffffffedfffffff3",
            INIT_01 => X"fffffffc00000015ffffffdd0000001e00000047000000080000001a0000000c",
            INIT_02 => X"ffffffdc00000021ffffffefffffffdf00000008fffffffb000000160000000c",
            INIT_03 => X"ffffffedffffffed0000000ffffffff900000018fffffffe0000001cffffffd8",
            INIT_04 => X"ffffffcfffffffd5ffffffe1ffffffe8ffffffe7fffffffaffffffed0000002b",
            INIT_05 => X"fffffff900000009fffffff400000004ffffffcdffffffe1ffffffd1fffffff0",
            INIT_06 => X"000000000000001500000007ffffffeafffffffa0000000d00000009fffffffe",
            INIT_07 => X"ffffffeefffffff70000001900000020ffffffeb000000340000001e00000002",
            INIT_08 => X"00000004ffffffcc000000000000001affffffeffffffffa0000000cffffffe6",
            INIT_09 => X"0000001d00000004ffffffed000000130000002b0000001b000000000000001e",
            INIT_0A => X"ffffff97ffffffb9fffffff3ffffffcaffffffe0ffffffbeffffffd3ffffffaf",
            INIT_0B => X"fffffff0ffffffdaffffffdbffffffe50000000600000001fffffff4ffffffa8",
            INIT_0C => X"ffffffdaffffffd0ffffffc60000002300000006fffffffcffffffdeffffffd8",
            INIT_0D => X"0000001d0000001d000000130000001b0000001affffffebffffffdfffffff8d",
            INIT_0E => X"0000001afffffffa0000000a0000000b000000230000002e00000010fffffffc",
            INIT_0F => X"fffffff8000000000000001d00000021ffffffee000000040000002200000012",
            INIT_10 => X"ffffffe5ffffffce0000000a0000000800000019000000000000001000000008",
            INIT_11 => X"00000006ffffffd0ffffffc3ffffffc8ffffffb2ffffffe3ffffffcbffffffec",
            INIT_12 => X"fffffff8fffffff300000006ffffffeafffffff4000000160000002200000013",
            INIT_13 => X"ffffffdd00000006ffffffaeffffffd7ffffffceffffffdafffffff5ffffffcf",
            INIT_14 => X"0000001d0000000f000000160000001b0000002c000000100000000dffffffd9",
            INIT_15 => X"000000090000000ffffffff70000001bfffffffc000000070000001b00000014",
            INIT_16 => X"000000000000001500000009ffffffe80000000800000012ffffffe5ffffffd6",
            INIT_17 => X"ffffffe40000001300000002fffffff900000006000000000000000100000003",
            INIT_18 => X"0000002b0000001b00000000ffffffd800000000fffffff8fffffffdfffffff1",
            INIT_19 => X"fffffffe00000002ffffffddffffffceffffffe2ffffffdaffffffc5ffffffde",
            INIT_1A => X"00000012fffffffbffffffed000000010000000a000000040000000300000016",
            INIT_1B => X"ffffffecffffffdeffffffcafffffffe00000009ffffffe9000000010000000f",
            INIT_1C => X"0000000000000000fffffff9ffffffecfffffff7000000050000000e00000008",
            INIT_1D => X"ffffffbf0000001f00000021ffffffdfffffffdfffffffeb0000001bffffffef",
            INIT_1E => X"00000019000000100000000c00000000fffffffb00000019ffffffebffffffcf",
            INIT_1F => X"fffffffb00000002ffffffffffffffe3ffffffe6ffffffbbfffffff8ffffffd6",
            INIT_20 => X"fffffff8fffffff3fffffff0fffffff400000012fffffffbffffffe500000020",
            INIT_21 => X"fffffffaffffffcfffffffdafffffff4ffffffd60000000dffffffe1fffffffa",
            INIT_22 => X"00000002ffffffeefffffff20000000b00000029fffffffdffffffcd00000006",
            INIT_23 => X"00000000fffffff1fffffffa00000007ffffffc60000001f0000000d0000000b",
            INIT_24 => X"00000037fffffffbfffffff70000002a00000010ffffffe40000001f0000001f",
            INIT_25 => X"ffffffe2ffffffd500000000fffffffefffffff30000000800000011ffffffd9",
            INIT_26 => X"0000002affffffc7ffffffe900000015ffffffc0fffffff100000016ffffffed",
            INIT_27 => X"0000004e00000003ffffffd90000002c00000044fffffff8fffffff7fffffff0",
            INIT_28 => X"00000007000000270000000f000000050000000effffffdcfffffff8ffffffb6",
            INIT_29 => X"00000023ffffffefffffffdb0000001cffffffeb000000120000002900000047",
            INIT_2A => X"ffffffe6000000190000000f0000000c0000002500000036ffffffdbfffffff3",
            INIT_2B => X"fffffff7ffffffcf00000013fffffff6fffffffb000000050000000bffffffd4",
            INIT_2C => X"0000003a00000003000000270000002ffffffff9ffffffdaffffffff00000016",
            INIT_2D => X"00000006fffffffc00000040ffffffd8ffffffe70000003cffffffdcffffffd0",
            INIT_2E => X"ffffffecffffffbefffffff90000002affffffd0ffffffe00000001cfffffff4",
            INIT_2F => X"00000015ffffffd60000001affffffe7ffffffeeffffffeffffffff500000023",
            INIT_30 => X"ffffffcc00000007fffffffdfffffffe00000006000000310000000800000032",
            INIT_31 => X"ffffffeefffffff00000000bffffffd7fffffff400000002fffffff80000002a",
            INIT_32 => X"0000001500000016fffffff8ffffffddffffffed00000001fffffff2fffffffe",
            INIT_33 => X"00000020ffffffefffffffe20000002700000003ffffffeb0000000400000002",
            INIT_34 => X"ffffffe2fffffffafffffffdfffffff8000000100000001dffffffe0ffffffef",
            INIT_35 => X"ffffffe3fffffff70000001900000022ffffffc0ffffffe800000006ffffffbe",
            INIT_36 => X"00000011fffffff5ffffffee00000055ffffffedffffffc10000004000000019",
            INIT_37 => X"0000001e000000060000005e00000052000000500000001b0000002e00000042",
            INIT_38 => X"ffffffc80000001600000013ffffffdaffffffe10000001bffffffe200000023",
            INIT_39 => X"ffffffceffffffed0000000dffffffde000000010000001a0000002800000003",
            INIT_3A => X"ffffffeafffffff5fffffffdffffffe300000000fffffff70000001c0000002d",
            INIT_3B => X"0000001e0000000500000027000000170000001d0000001c0000000affffffe3",
            INIT_3C => X"ffffffe600000008000000050000001d0000001200000018000000210000001f",
            INIT_3D => X"ffffffc3ffffffca000000500000003b00000017000000320000003e00000029",
            INIT_3E => X"00000008fffffffefffffff8ffffffeffffffffaffffffd3ffffffdc00000008",
            INIT_3F => X"000000110000002200000054ffffffd6ffffffef00000036ffffffcaffffffda",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff000000004ffffffe5fffffffefffffffffffffff2fffffffe00000006",
            INIT_41 => X"0000001d0000001d00000005000000250000002e0000002900000004fffffff3",
            INIT_42 => X"ffffff8fffffff89ffffffbbffffffb5ffffffa7ffffffb40000000700000029",
            INIT_43 => X"00000037000000280000002f00000037fffffff8ffffffa1ffffffbeffffff93",
            INIT_44 => X"ffffffb3ffffffaeffffffb7ffffffad000000150000002900000027ffffffff",
            INIT_45 => X"000000180000002700000000ffffffcaffffffafffffffa9ffffffcfffffff96",
            INIT_46 => X"000000280000000e0000001000000012ffffffd7000000340000002b00000002",
            INIT_47 => X"00000026fffffff6ffffffdcffffffc5fffffff3ffffffedffffffec00000032",
            INIT_48 => X"fffffffc000000020000000200000007fffffff50000000dffffffef0000001c",
            INIT_49 => X"fffffff5ffffffe40000001afffffff500000004fffffff4ffffffdaffffffe7",
            INIT_4A => X"00000000fffffff7ffffffd2fffffff700000017ffffffeffffffff0ffffffc7",
            INIT_4B => X"0000001e00000000fffffff9fffffffeffffffe9fffffff90000000000000009",
            INIT_4C => X"0000001c00000004ffffffe5fffffff1ffffffecffffffcaffffffeeffffffdd",
            INIT_4D => X"000000020000001efffffffe0000001d00000014ffffffdafffffff700000009",
            INIT_4E => X"00000007000000060000000f0000000a00000000ffffffec0000002a00000028",
            INIT_4F => X"00000019000000110000001a0000000e0000000ffffffff1ffffffeb0000000e",
            INIT_50 => X"ffffffffffffffeaffffffddffffffe2000000190000001a0000000700000007",
            INIT_51 => X"000000110000000f0000000e0000000a00000012fffffffe0000000000000006",
            INIT_52 => X"0000000e00000021fffffffa000000000000001600000007ffffffe4ffffffe4",
            INIT_53 => X"0000000b0000000f000000050000000c00000027000000160000002600000019",
            INIT_54 => X"ffffffacffffffd80000001effffffd2ffffffee00000015fffffff3fffffff7",
            INIT_55 => X"00000017000000020000002b0000001efffffff6ffffffd6ffffffe30000000d",
            INIT_56 => X"fffffffdfffffff80000000bfffffffe0000000bfffffff9fffffff700000027",
            INIT_57 => X"0000000f000000280000001e0000000000000005ffffffeeffffffebfffffffd",
            INIT_58 => X"00000023000000100000001f0000001a0000001300000017fffffffd0000000f",
            INIT_59 => X"0000001700000000fffffffbfffffff90000000cfffffffd0000000700000029",
            INIT_5A => X"fffffff2ffffffc7ffffffc400000016000000290000000a0000001b00000009",
            INIT_5B => X"ffffffe3ffffffb2ffffffd5ffffffe3ffffffa0ffffff99ffffffc5ffffff77",
            INIT_5C => X"0000001efffffffaffffffe5fffffff90000000900000007fffffff20000000b",
            INIT_5D => X"fffffff3fffffff5fffffff1000000080000000afffffffe0000000800000005",
            INIT_5E => X"00000023fffffff20000000a000000030000001300000013fffffff1fffffffb",
            INIT_5F => X"00000018fffffffc00000017ffffffeb0000000200000006ffffffde00000029",
            INIT_60 => X"fffffffa00000007fffffff5ffffffca0000000bfffffff1ffffffc6fffffff4",
            INIT_61 => X"0000000800000002ffffffecffffffdeffffffedfffffff9ffffffe3fffffffe",
            INIT_62 => X"00000011fffffffdffffffe4ffffffe700000000000000080000000d00000007",
            INIT_63 => X"0000000500000024000000200000001d0000001b000000190000000700000013",
            INIT_64 => X"000000030000000900000012fffffffbffffffecffffffe5fffffff3fffffffd",
            INIT_65 => X"0000004600000018000000260000001c00000000000000180000000f00000005",
            INIT_66 => X"fffffffdffffffc70000000dffffffff00000007000000220000002300000047",
            INIT_67 => X"ffffffe5ffffffe60000000ffffffffcfffffffe00000002ffffffd7ffffffeb",
            INIT_68 => X"ffffff9600000000ffffffe7ffffffff0000000bffffffc7ffffff97fffffffc",
            INIT_69 => X"00000013000000230000000effffffe7ffffffcfffffffa0ffffffd0ffffffbc",
            INIT_6A => X"0000000800000027000000230000002500000041fffffff10000000a0000000e",
            INIT_6B => X"00000006fffffff5ffffffeaffffffcaffffffef00000013ffffffe700000027",
            INIT_6C => X"fffffff00000000affffffecfffffffafffffff2fffffff80000000500000004",
            INIT_6D => X"ffffffee000000090000002400000015ffffffffffffffed00000004ffffffff",
            INIT_6E => X"fffffff9000000170000001300000005000000040000001b0000000a0000001d",
            INIT_6F => X"000000230000000b0000000bfffffffc0000000600000000fffffff300000020",
            INIT_70 => X"ffffffd2fffffff7fffffffcffffffe2ffffffd900000005000000160000000b",
            INIT_71 => X"ffffffe30000000cfffffff3ffffffeffffffff40000000400000006ffffffee",
            INIT_72 => X"fffffffc00000021ffffffdafffffff7ffffffee0000000cffffffe4ffffffe8",
            INIT_73 => X"ffffffed000000030000001b0000003a000000000000000f0000002cfffffff4",
            INIT_74 => X"00000009ffffffff00000004fffffffefffffffdffffffdfffffffeafffffffd",
            INIT_75 => X"0000000c0000000a00000015ffffffeffffffff9ffffffecfffffff5fffffffc",
            INIT_76 => X"0000000efffffff800000045000000460000001b000000390000001e00000009",
            INIT_77 => X"ffffffe4000000010000000b0000000600000017000000230000000b0000003f",
            INIT_78 => X"ffffffb0ffffffd4fffffffcffffffe300000026000000460000000ffffffff9",
            INIT_79 => X"fffffff400000008000000120000000800000039ffffffcaffffffd7ffffffd4",
            INIT_7A => X"fffffffd00000004fffffff60000000cffffffedffffffedffffffee00000003",
            INIT_7B => X"0000000c000000270000001bffffffc7ffffffb8ffffffe8ffffffc1ffffffce",
            INIT_7C => X"0000001e00000004ffffffdcfffffff9ffffffe9ffffffe2ffffffe5fffffff4",
            INIT_7D => X"0000000bffffffd60000000dffffffe6ffffffff0000000effffffe800000014",
            INIT_7E => X"ffffffeafffffffaffffffed0000001000000018fffffff60000001200000010",
            INIT_7F => X"ffffffca0000000bffffffdeffffffacffffffcbffffffc6ffffffc4fffffff4",

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
    end generate MEM_IWGHT_LAYER1_ENTITY17;


    MEM_IWGHT_LAYER1_ENTITY18 : if BRAM_NAME = "iwght_layer1_entity18" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffed0000001b000000220000001200000015000000060000001fffffff9d",
            INIT_01 => X"0000001600000028fffffff20000000c00000008fffffff80000001200000014",
            INIT_02 => X"fffffffdfffffff900000005fffffffa000000060000002d00000016ffffffef",
            INIT_03 => X"ffffffd7ffffffec00000002fffffff1ffffffe5ffffffeb00000025fffffff3",
            INIT_04 => X"ffffffe3ffffffd5ffffffe000000016ffffffc4ffffffadffffffe4ffffffd5",
            INIT_05 => X"000000040000002d00000013fffffffe0000001fffffffd3ffffffedffffffef",
            INIT_06 => X"00000002ffffffd5ffffffd4fffffff4ffffffd1ffffffe300000000fffffff7",
            INIT_07 => X"0000001f0000000ffffffff0fffffff90000000cffffffd6000000000000000b",
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
    end generate MEM_IWGHT_LAYER1_ENTITY18;


    MEM_IWGHT_LAYER2_ENTITY0 : if BRAM_NAME = "iwght_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000002a00000016fffffffbfffffff0ffffffd900000009ffffffe3ffffffe6",
            INIT_41 => X"0000002900000004fffffffe000000470000001c0000001c0000004c00000047",
            INIT_42 => X"fffffff0fffffff9ffffffe1ffffffdbffffffc800000011ffffffe8ffffffdf",
            INIT_43 => X"00000000ffffffac00000008ffffffc1ffffffcdffffffe6ffffffe20000001f",
            INIT_44 => X"ffffffd70000001600000011ffffffef0000002dffffffefffffffdefffffff9",
            INIT_45 => X"0000000dffffffcaffffffceffffffcdffffffce00000000000000300000000f",
            INIT_46 => X"0000000effffffed0000000bfffffff9ffffffd900000002ffffffc8ffffff94",
            INIT_47 => X"000000500000004d00000042000000160000002800000017000000010000003f",
            INIT_48 => X"0000003900000031ffffffcafffffff20000002a000000490000003c0000004f",
            INIT_49 => X"00000012ffffffe2000000210000002a0000003affffffea000000320000000f",
            INIT_4A => X"ffffffe90000000600000029ffffffdb000000190000001bffffffc40000000c",
            INIT_4B => X"ffffffecffffffd2ffffffaaffffffdcffffff9fffffffc0ffffff8cffffffae",
            INIT_4C => X"00000034ffffffecffffffd50000000afffffff6fffffff0000000150000000f",
            INIT_4D => X"fffffffe0000000bffffffe00000000500000006ffffffe700000018ffffffd5",
            INIT_4E => X"00000025ffffffcc0000002c00000005fffffff4fffffff8fffffffcfffffff2",
            INIT_4F => X"00000061ffffffdaffffffd2000000440000000c00000027ffffffc00000002f",
            INIT_50 => X"ffffffcaffffffe5fffffff000000003ffffffc80000004affffffe5ffffffac",
            INIT_51 => X"ffffffee0000000cfffffffd0000000effffffc40000001dffffffd5ffffffcc",
            INIT_52 => X"ffffffbb0000001bffffffc500000019fffffff1ffffffd80000002e0000000c",
            INIT_53 => X"0000002b0000005fffffff6a0000003100000068ffffff380000003900000019",
            INIT_54 => X"ffffffc7000000390000000f0000000500000033ffffffe60000001900000005",
            INIT_55 => X"00000007ffffffccffffffddfffffffbfffffffbfffffff30000000300000000",
            INIT_56 => X"00000029fffffff100000000fffffff8ffffffeefffffff70000000fffffffc4",
            INIT_57 => X"ffffffe10000003effffffcbffffffe90000002cffffffd1ffffffebfffffffc",
            INIT_58 => X"ffffffa50000001e00000023ffffffda0000001dffffffd300000039ffffffbf",
            INIT_59 => X"0000005400000012ffffffd00000001c0000005bffffff780000002a0000002a",
            INIT_5A => X"fffffff300000004000000200000007fffffff67000000590000004effffff86",
            INIT_5B => X"000000160000000dfffffffa000000030000000f00000017ffffffe20000001e",
            INIT_5C => X"ffffffdeffffffe70000000000000031ffffffc40000001cfffffffeffffffe8",
            INIT_5D => X"ffffffac0000004c00000009ffffff8100000060ffffffd3ffffffc900000033",
            INIT_5E => X"0000000400000007ffffffecfffffff1fffffff0fffffff1ffffffef00000013",
            INIT_5F => X"ffffffdbffffffe0ffffffffffffffc600000019fffffff400000010fffffff9",
            INIT_60 => X"0000001100000010ffffffe900000023fffffffa00000011ffffffc5ffffffbe",
            INIT_61 => X"000000080000000a0000000c000000050000002f00000021000000010000000f",
            INIT_62 => X"ffffff69ffffff88ffffff90ffffff91ffffffedfffffffd0000003a00000011",
            INIT_63 => X"fffffff90000000c00000022ffffff94ffffff7dffffff7dffffff8bffffff23",
            INIT_64 => X"000000270000000effffffe10000001700000038ffffffe6fffffffa0000001a",
            INIT_65 => X"0000000dffffffe80000000ffffffffd0000000900000023fffffffd00000012",
            INIT_66 => X"00000009000000120000000f0000001fffffffecffffffef0000001500000016",
            INIT_67 => X"ffffffa5ffffffaeffffffa8ffffffb1ffffffc5ffffffebffffffd600000006",
            INIT_68 => X"fffffffeffffffdbfffffff600000017ffffffe30000000affffffdeffffff9b",
            INIT_69 => X"ffffff84ffffff87ffffffc3fffffff7ffffffb7ffffffe700000015fffffff0",
            INIT_6A => X"fffffffffffffffe0000001fffffffed0000000fffffff8effffff94ffffffbc",
            INIT_6B => X"000000100000000700000023ffffffe30000000b00000001ffffffe700000020",
            INIT_6C => X"ffffffa9ffffff7effffff8f000000020000002f000000140000000700000028",
            INIT_6D => X"00000002fffffff7ffffffe3ffffffc8ffffffadffffffb0ffffff70ffffff71",
            INIT_6E => X"fffffff8000000010000000c0000001cffffffcdffffffe500000012ffffffe2",
            INIT_6F => X"0000002200000019000000130000000a0000001e00000000ffffffee0000000d",
            INIT_70 => X"0000003b00000026fffffff00000001dfffffff7fffffffc0000002800000016",
            INIT_71 => X"ffffffd50000000dfffffff3fffffffdffffffdd0000002f0000001b00000017",
            INIT_72 => X"00000008000000040000002a000000280000001000000032ffffffd3ffffffd9",
            INIT_73 => X"fffffff70000001dffffffea0000002f0000002c0000000c0000000300000014",
            INIT_74 => X"00000030ffffffd700000042fffffffdfffffff000000018fffffffd0000000d",
            INIT_75 => X"fffffff2ffffffe3ffffffc30000000d0000000a0000001b0000002100000030",
            INIT_76 => X"00000006ffffffea0000000b0000003f00000044fffffffffffffffbffffffef",
            INIT_77 => X"ffffffac0000000f00000035000000190000002f000000190000002100000003",
            INIT_78 => X"00000013000000270000001d00000001fffffffcfffffffcffffffaeffffff9b",
            INIT_79 => X"0000003cfffffff1ffffffe600000002fffffff7ffffffddffffffdbffffffec",
            INIT_7A => X"0000001900000000fffffff3fffffffb0000000f000000080000002b00000016",
            INIT_7B => X"ffffffe700000016fffffffa0000002800000025000000330000000dffffffdf",
            INIT_7C => X"0000000f00000005000000060000001000000037ffffffcf0000000dfffffffd",
            INIT_7D => X"000000270000003600000026000000180000000effffffcdffffffcd0000000e",
            INIT_7E => X"ffffffea0000000a00000016ffffffe2ffffffbeffffffe900000006fffffff9",
            INIT_7F => X"00000009ffffffc5ffffffdfffffffd600000002ffffffd8ffffffe50000000f",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000250000001b0000001b0000003e0000003200000042ffffffed00000000",
            INIT_41 => X"0000003a0000002b0000002a00000062000000410000001500000020fffffffc",
            INIT_42 => X"ffffffe800000017fffffffa0000000d00000009fffffffd0000001800000044",
            INIT_43 => X"0000004e0000005200000036000000000000001900000007ffffffcaffffffcc",
            INIT_44 => X"000000230000000000000002fffffffbffffffef000000410000003800000014",
            INIT_45 => X"00000002000000140000001e0000001bfffffff900000011fffffffd0000002a",
            INIT_46 => X"fffffff2fffffff00000000a00000009ffffffe2fffffff8ffffffef00000004",
            INIT_47 => X"00000013fffffff4ffffffc9fffffff200000019ffffffd4ffffffde00000010",
            INIT_48 => X"fffffffafffffffdffffffd3ffffffd9fffffffa0000000afffffff9fffffffc",
            INIT_49 => X"fffffff800000009fffffff7000000000000001efffffffb0000002300000009",
            INIT_4A => X"00000013fffffff70000002b00000008000000040000002100000000ffffffea",
            INIT_4B => X"fffffffb0000001e00000014ffffffe400000017fffffffd0000001f00000003",
            INIT_4C => X"ffffffea00000010ffffffdc000000160000000700000005000000350000002d",
            INIT_4D => X"ffffffdcffffffd50000002a0000001afffffff6fffffffc00000013ffffffe1",
            INIT_4E => X"ffffff4affffffe5ffffffd8ffffffae00000015ffffffbbffffffcefffffff0",
            INIT_4F => X"ffffffe40000000f00000000ffffff65ffffff73ffffff74ffffff63ffffff45",
            INIT_50 => X"0000001300000031ffffffe90000001afffffff600000000000000040000000e",
            INIT_51 => X"fffffff7ffffffda0000001800000037ffffffe7000000220000005bffffffc9",
            INIT_52 => X"000000060000002000000051ffffffd80000000300000028ffffffcbfffffffa",
            INIT_53 => X"0000002d0000004bfffffffa0000001100000002ffffffc5ffffffd7ffffffe2",
            INIT_54 => X"ffffffcb000000320000001effffffdb000000370000002bffffffee0000001d",
            INIT_55 => X"ffffffd3ffffffc9ffffffc9ffffffccffffff7effffffc10000000e00000001",
            INIT_56 => X"000000200000000b000000060000000100000016ffffffebffffffc6ffffffcb",
            INIT_57 => X"0000003f0000000c0000000500000032000000190000002dfffffff500000013",
            INIT_58 => X"000000220000000cfffffffa0000001500000037000000330000001b00000026",
            INIT_59 => X"0000002500000018fffffff3ffffffc3ffffffcbffffffd1ffffff99ffffff82",
            INIT_5A => X"00000002ffffffcdffffffe90000000100000019fffffffb00000018fffffff8",
            INIT_5B => X"0000001a00000019000000180000001900000015fffffff800000027ffffffd9",
            INIT_5C => X"fffffffe00000012ffffffeeffffffddffffffe6fffffffaffffffe0ffffffec",
            INIT_5D => X"fffffff8ffffffd90000000c0000000cffffffdf00000011fffffff000000018",
            INIT_5E => X"0000001100000005fffffffc00000012fffffff400000005ffffffdcfffffffb",
            INIT_5F => X"0000000000000000fffffff900000011ffffffff00000016ffffffe1ffffffee",
            INIT_60 => X"ffffffcdffffffa3ffffff9fffffffceffffffecffffffe2fffffff60000000e",
            INIT_61 => X"0000001f0000000f0000000cffffffffffffffec00000012ffffffbfffffffc8",
            INIT_62 => X"fffffffeffffffee00000018fffffff90000001300000007000000140000000a",
            INIT_63 => X"ffffffaf00000012fffffff1ffffffcfffffffefffffffdbffffffdefffffffc",
            INIT_64 => X"ffffffd6ffffffcaffffffeeffffffddffffffb0ffffffafffffffd2ffffffd0",
            INIT_65 => X"00000013fffffff4ffffffe9ffffffbdffffffefffffff97ffffffa8ffffff96",
            INIT_66 => X"0000001f0000002300000017fffffffe00000001fffffffd00000006fffffff0",
            INIT_67 => X"ffffffc5ffffffb5ffffffc2ffffff95ffffff63ffffffad0000000600000023",
            INIT_68 => X"00000008ffffffe1fffffff80000001400000017ffffffdeffffffe2ffffffc4",
            INIT_69 => X"00000012000000030000001e0000000bfffffff0000000090000000afffffffb",
            INIT_6A => X"ffffffb100000000fffffff1000000110000000e00000017fffffff0fffffff7",
            INIT_6B => X"fffffffbffffffec00000014000000280000001fffffffefffffffcfffffffe8",
            INIT_6C => X"fffffff3ffffffdefffffffbffffffe3000000080000000f0000000dfffffff3",
            INIT_6D => X"fffffff700000028fffffffdffffffcd0000000bffffffefffffffd0ffffffd7",
            INIT_6E => X"00000023000000010000001cfffffffeffffffd9000000010000000dffffffcd",
            INIT_6F => X"0000000affffffecffffffe00000000efffffff9ffffffef000000100000002a",
            INIT_70 => X"fffffff5ffffffdfffffffff00000011fffffff200000003ffffffddfffffffb",
            INIT_71 => X"fffffff2ffffffed000000160000000300000003000000100000000a0000001b",
            INIT_72 => X"0000006a0000002c000000140000003dfffffff1fffffff1fffffffd00000003",
            INIT_73 => X"ffffffb6ffffffc6ffffffbb000000750000004d000000690000005c0000005f",
            INIT_74 => X"ffffffd2ffffffc0000000290000001e00000020fffffffbfffffff8ffffffae",
            INIT_75 => X"ffffff9bffffffe9ffffffcbffffffd3ffffffc6ffffff95ffffffa9ffffffc3",
            INIT_76 => X"00000013000000270000001bffffffb5ffffffb5ffffffbdffffffbdffffffa7",
            INIT_77 => X"0000001effffffe900000014000000440000002cffffffe2000000070000002b",
            INIT_78 => X"0000000000000001fffffff100000000000000110000001efffffff100000002",
            INIT_79 => X"00000009000000070000000200000005000000190000001c0000000fffffffee",
            INIT_7A => X"ffffffec00000007000000190000000300000029ffffffd1fffffff900000010",
            INIT_7B => X"fffffff5000000020000001e0000000cfffffffeffffffd8fffffffd0000000b",
            INIT_7C => X"fffffffdfffffff7fffffffc00000007ffffffe20000000c000000150000000e",
            INIT_7D => X"fffffff2ffffffcf000000320000003b00000060000000280000003a0000004f",
            INIT_7E => X"fffffffa00000038fffffffffffffffbffffffed00000018fffffffbfffffff4",
            INIT_7F => X"0000000800000016fffffff6fffffffbffffffe6fffffff8fffffff6ffffffe3",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffe3000000240000000cfffffff50000002800000000ffffffe90000001a",
            INIT_41 => X"ffffffc7000000260000001bffffffe9fffffff700000015000000040000000e",
            INIT_42 => X"0000002b0000001f0000001cfffffffd0000001effffffd8ffffffdbfffffff7",
            INIT_43 => X"fffffff200000023fffffffbffffffd100000030000000130000001d00000028",
            INIT_44 => X"ffffffe500000010fffffff1ffffffe3ffffffd7ffffffdaffffffdcffffffe8",
            INIT_45 => X"0000001dfffffff8fffffffc0000001100000021000000080000000500000028",
            INIT_46 => X"ffffffc6ffffffe7fffffff0ffffffeafffffff3ffffffef0000001affffffea",
            INIT_47 => X"ffffffa8ffffffcaffffffd3ffffffcdffffffd3ffffffb5ffffffb8ffffffbe",
            INIT_48 => X"000000330000001900000020000000360000003d000000110000002d00000031",
            INIT_49 => X"00000063000000000000000f00000043000000520000002d0000004500000021",
            INIT_4A => X"00000057fffffff6000000020000001500000011000000360000001500000025",
            INIT_4B => X"ffffff8bffffffa7ffffff96fffffff2ffffffe4000000370000002a0000000e",
            INIT_4C => X"ffffffbb00000012ffffffe3ffffffcb00000018ffffffa8ffffffbfffffffa6",
            INIT_4D => X"ffffffd70000000dffffffe700000012ffffffffffffffe600000029ffffffe0",
            INIT_4E => X"ffffffbfffffffb70000000bfffffffbffffffcfffffffea00000004ffffffe1",
            INIT_4F => X"ffffffe200000003000000030000000a0000000effffffcaffffffe3ffffffb1",
            INIT_50 => X"0000002100000029ffffffe9000000200000000afffffff4ffffffe7fffffffe",
            INIT_51 => X"0000000affffffdf0000000c00000011fffffff1ffffffe6fffffff4ffffffe5",
            INIT_52 => X"ffffffbeffffffd2ffffffc8ffffffdbffffffcd00000001fffffff000000030",
            INIT_53 => X"00000010fffffffa0000000f000000060000003dffffffcefffffffeffffffe1",
            INIT_54 => X"ffffffd20000000f000000270000001b0000002300000032fffffff5fffffffd",
            INIT_55 => X"0000000400000001000000080000003cfffffffaffffffef000000190000000e",
            INIT_56 => X"0000002bffffffebffffffff0000001a0000003e00000004000000200000002c",
            INIT_57 => X"00000023000000090000002200000031fffffff500000049fffffffaffffffd9",
            INIT_58 => X"000000400000002efffffff8ffffffe100000022000000240000000ffffffff0",
            INIT_59 => X"00000030000000200000002c0000004e000000440000004d0000003f00000056",
            INIT_5A => X"000000200000000bfffffffc000000150000000fffffffe7fffffffa0000001c",
            INIT_5B => X"ffffffcbffffffdcffffffbaffffffa8ffffffc9ffffffc4fffffff9ffffffed",
            INIT_5C => X"00000002000000000000001b0000000effffffe4fffffff2ffffffcdffffffbd",
            INIT_5D => X"0000001f0000001600000003ffffffebfffffff500000009000000000000000b",
            INIT_5E => X"ffffffe8fffffffbfffffffbffffffedfffffff5000000080000002500000000",
            INIT_5F => X"fffffffffffffffd00000019000000350000001bffffffddffffffdeffffffeb",
            INIT_60 => X"0000000ffffffff900000026000000290000001800000009000000030000001c",
            INIT_61 => X"ffffffdeffffffea0000001500000019ffffffe7fffffff30000000bffffffe7",
            INIT_62 => X"ffffffccffffffb6ffffffd6ffffffe8fffffff4ffffffd9ffffffc9fffffff5",
            INIT_63 => X"ffffffe7fffffffd00000007ffffffdbffffffdeffffffff0000000afffffff8",
            INIT_64 => X"00000010ffffffef000000110000001300000012fffffff700000019fffffff7",
            INIT_65 => X"00000009fffffffd0000000ffffffffdffffffe4fffffffb0000001700000007",
            INIT_66 => X"ffffffcefffffffaffffffe0ffffffd7ffffffdd00000007ffffffee00000004",
            INIT_67 => X"00000010fffffff00000001afffffffafffffff7fffffff9ffffffe4ffffffec",
            INIT_68 => X"ffffffc7ffffffc9ffffffc10000001700000024ffffffe1ffffffe80000000a",
            INIT_69 => X"000000160000001cffffffcfffffffbcffffffc600000009ffffffb9ffffffcf",
            INIT_6A => X"ffffffe600000002000000010000001effffffef000000190000001e0000000f",
            INIT_6B => X"ffffffffffffffdffffffff2ffffffef000000040000000affffffe000000006",
            INIT_6C => X"00000035fffffff2000000120000000200000019000000190000001400000005",
            INIT_6D => X"fffffff50000000affffffd7ffffffd30000000300000000ffffffec00000022",
            INIT_6E => X"ffffffd1ffffffdfffffffd2fffffff7ffffffc2ffffffc000000003ffffffeb",
            INIT_6F => X"ffffffe4ffffffe3ffffffd2ffffffefffffffdaffffffe6fffffff600000005",
            INIT_70 => X"fffffff8fffffff80000001500000025fffffff4ffffffe9ffffffe6ffffffec",
            INIT_71 => X"00000014000000210000000d00000002fffffffafffffff600000023fffffff9",
            INIT_72 => X"ffffffe3ffffffed000000100000000800000021fffffff10000000bfffffffc",
            INIT_73 => X"ffffffe9ffffffddfffffff300000012ffffffe9ffffffcaffffffc5ffffffdf",
            INIT_74 => X"ffffffe3ffffffdeffffffedffffffe6ffffffe0ffffffe3ffffffd2fffffff7",
            INIT_75 => X"fffffffb0000001bfffffff1fffffff500000004fffffffb0000000f0000000f",
            INIT_76 => X"fffffff7000000050000000600000006ffffffee0000000300000013ffffffe0",
            INIT_77 => X"0000001a000000190000000e0000000100000023000000080000000200000015",
            INIT_78 => X"ffffffe3fffffff300000008fffffffa00000007000000310000000cfffffffe",
            INIT_79 => X"000000060000003e0000002c00000004ffffffdbffffffdafffffffdffffffd5",
            INIT_7A => X"000000050000000afffffff40000001600000035000000080000003f0000000f",
            INIT_7B => X"ffffffddffffffe60000000bffffffefffffffd000000000ffffffdbfffffff5",
            INIT_7C => X"0000000efffffff8ffffffe70000001d00000008fffffff50000000b0000000e",
            INIT_7D => X"0000001b0000002b00000010000000370000001e000000100000002d00000036",
            INIT_7E => X"fffffff0ffffffff000000190000000800000017000000070000000bffffffe4",
            INIT_7F => X"fffffffeffffffc5ffffffc5ffffffc3ffffffeb00000000000000110000000c",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffff9f00000038fffffffdffffffe2ffffffff00000018fffffffaffffffff",
            INIT_41 => X"ffffffb30000000cffffffe3ffffffb9ffffffbefffffff400000056fffffffe",
            INIT_42 => X"ffffffc5ffffffe100000002fffffff8ffffff85fffffff4fffffffcffffff5d",
            INIT_43 => X"ffffffe400000010ffffffec0000000effffffe6ffffffd1ffffffd3fffffff7",
            INIT_44 => X"0000001bffffffe60000001a00000014ffffffde0000001600000009ffffffd6",
            INIT_45 => X"000000590000001fffffffca000000590000002affffffeb000000130000002f",
            INIT_46 => X"fffffffe0000002c00000009000000150000000b0000001dfffffff2ffffffe1",
            INIT_47 => X"00000006fffffff2fffffff400000013ffffffc2ffffffeaffffffc8fffffff4",
            INIT_48 => X"00000000ffffffe80000001300000012ffffffec0000000cffffffd4ffffffdf",
            INIT_49 => X"000000000000000e00000007000000030000000700000007ffffffee00000001",
            INIT_4A => X"0000007400000029000000370000005700000019000000180000000000000016",
            INIT_4B => X"fffffff600000009fffffffa0000002f00000056000000360000007200000083",
            INIT_4C => X"00000013fffffff0fffffffd00000006fffffff3fffffff7fffffff2ffffffee",
            INIT_4D => X"0000000f0000001b0000000a0000000cffffffee00000033ffffffec0000000d",
            INIT_4E => X"ffffffdffffffff9ffffffd1ffffffe900000017ffffffee0000001b00000014",
            INIT_4F => X"fffffff4ffffffecffffffe50000002600000008000000380000002efffffff8",
            INIT_50 => X"00000000fffffff400000001ffffffe8ffffffdd00000008ffffffe5ffffffd6",
            INIT_51 => X"0000003a00000039000000580000002f0000000f000000220000001ffffffffa",
            INIT_52 => X"00000027ffffffdffffffffb0000000e0000000f000000200000001a00000036",
            INIT_53 => X"000000030000000cfffffff800000000ffffffd6fffffffdffffffe7ffffffd3",
            INIT_54 => X"00000031000000340000001e000000260000002b000000010000003000000004",
            INIT_55 => X"ffffffe50000001e0000003f0000002f0000003c000000300000002a00000029",
            INIT_56 => X"0000000700000014fffffff9ffffffe8ffffffefffffffed00000004fffffff4",
            INIT_57 => X"ffffffd3ffffffef0000000b00000000ffffffd10000001200000012ffffffd7",
            INIT_58 => X"ffffffc5ffffffd7ffffffdbffffffe5ffffffcb000000060000000000000007",
            INIT_59 => X"0000004dfffffffc0000001a0000001c0000000400000006fffffff4fffffff1",
            INIT_5A => X"ffffffe3ffffffe000000011fffffffc0000000dffffffe90000001e00000035",
            INIT_5B => X"ffffffff00000014ffffffddffffffe50000001f00000003000000010000001b",
            INIT_5C => X"fffffff70000001c0000002a0000000c00000019000000130000000c00000016",
            INIT_5D => X"0000000300000000ffffffc900000022fffffffc000000210000000800000031",
            INIT_5E => X"00000000fffffff9ffffffa5ffffffd1ffffffafffffffd0ffffffaeffffffc3",
            INIT_5F => X"fffffff1ffffffc0ffffffe2fffffff3ffffffe9ffffffbbffffffdcfffffff9",
            INIT_60 => X"ffffffb1ffffffd2ffffffaafffffff8ffffff9bffffff960000005d00000023",
            INIT_61 => X"00000007ffffffcd00000024ffffffe0ffffffd80000000afffffffeffffffe9",
            INIT_62 => X"000000140000001600000002fffffffcfffffffb0000000f0000000affffffdc",
            INIT_63 => X"0000003a0000000400000005000000080000000a0000001cffffffe9fffffff4",
            INIT_64 => X"ffffffff0000001c000000280000000bfffffffd0000000cffffffdffffffffe",
            INIT_65 => X"fffffffbffffffedfffffff9fffffff500000036000000250000004500000040",
            INIT_66 => X"00000003ffffffff0000001d00000001ffffffd6ffffffefffffffeffffffff8",
            INIT_67 => X"ffffffe9fffffff60000002b0000001c00000004000000190000003300000004",
            INIT_68 => X"ffffffecffffffc4fffffff4ffffffe8ffffffd5ffffffd9ffffffcd0000001b",
            INIT_69 => X"00000000fffffffafffffff40000003300000015fffffff50000001900000015",
            INIT_6A => X"000000220000002bfffffffcfffffff80000001bffffffe8fffffff6fffffff8",
            INIT_6B => X"00000010ffffffe8fffffff50000000dffffffec000000030000000600000037",
            INIT_6C => X"fffffff1ffffffe6fffffffafffffffd0000000900000004000000170000000e",
            INIT_6D => X"000000080000001200000014fffffffe000000260000000fffffffef0000000a",
            INIT_6E => X"fffffff700000023ffffffec00000000fffffff60000001d0000000d00000012",
            INIT_6F => X"ffffffe0fffffff00000001700000045000000320000002f0000001900000009",
            INIT_70 => X"fffffff0fffffff4000000300000003800000037000000070000003f0000003e",
            INIT_71 => X"0000000d0000002dffffffc6ffffffd000000015ffffffc5ffffffe5fffffff7",
            INIT_72 => X"fffffff1ffffffc4ffffffc3ffffffd7ffffffcfffffffe8ffffffbc00000001",
            INIT_73 => X"ffffffebffffffc2ffffffe900000032fffffff1fffffff2fffffff30000002f",
            INIT_74 => X"0000002c00000001fffffff300000031000000090000000effffffecffffffe6",
            INIT_75 => X"ffffffcf00000000ffffffcc00000021ffffffdbffffffe400000023fffffff6",
            INIT_76 => X"ffffffda00000003000000000000000ffffffff3fffffff9ffffffe3ffffffc8",
            INIT_77 => X"ffffffcdffffffeaffffffb0ffffffa800000010ffffffe0fffffffb0000000a",
            INIT_78 => X"0000002d00000018fffffff900000005ffffffe8ffffffc20000000fffffffc3",
            INIT_79 => X"fffffffb0000001a000000370000001600000024fffffff9ffffffe6ffffffed",
            INIT_7A => X"ffffffd00000000a000000030000001c00000007000000040000002100000010",
            INIT_7B => X"ffffffe300000034fffffff0ffffffbcffffffe4ffffffbdffffffeeffffffe4",
            INIT_7C => X"ffffffe200000007ffffffe8ffffffea00000012ffffffdd000000090000000c",
            INIT_7D => X"000000000000003c0000000100000020000000430000000300000014ffffffe4",
            INIT_7E => X"0000002600000003ffffffd50000001fffffffed0000000000000039fffffffb",
            INIT_7F => X"ffffffb10000000effffffd4ffffffe80000002a0000001e00000021fffffffb",

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


    MEM_IWGHT_LAYER2_ENTITY4 : if BRAM_NAME = "iwght_layer2_entity4" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffadffffffed0000000500000027000000170000000f000000010000001a",
            INIT_41 => X"0000001600000019000000190000001a00000011fffffff20000000dfffffffd",
            INIT_42 => X"00000023fffffff0fffffff8ffffffbefffffff80000000cffffffd700000024",
            INIT_43 => X"00000013000000030000002c0000003b000000170000002dffffffd30000000f",
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
    end generate MEM_IWGHT_LAYER2_ENTITY4;


    MEM_IFMAP_LAYER0_ENTITY0 : if BRAM_NAME = "ifmap_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000009f000000a20000009c000000a0000000a6000000a50000009f0000009e",
            INIT_01 => X"000000aa000000a9000000a6000000a1000000a0000000a10000009f0000009e",
            INIT_02 => X"0000009400000096000000950000009c000000a0000000a0000000a2000000a7",
            INIT_03 => X"000000740000007e000000890000008f0000008d0000008c0000008f00000095",
            INIT_04 => X"000000a2000000a4000000a0000000a2000000a60000009f0000009700000098",
            INIT_05 => X"000000ab000000ab000000aa000000a30000009f0000009b0000009c000000a3",
            INIT_06 => X"0000008d0000008c0000008b00000091000000970000009a000000a0000000a9",
            INIT_07 => X"000000770000007d000000880000008f0000008e000000910000009300000095",
            INIT_08 => X"000000a5000000a5000000a3000000a0000000a70000009e0000009700000097",
            INIT_09 => X"000000a9000000a7000000a6000000a10000009d0000009e000000a2000000a3",
            INIT_0A => X"0000007200000065000000620000006e00000079000000910000009f000000aa",
            INIT_0B => X"00000078000000820000008b0000008e0000008c0000008f0000008600000078",
            INIT_0C => X"000000a9000000a9000000a7000000a7000000ae000000a00000009b0000009b",
            INIT_0D => X"000000a4000000a20000009d000000b1000000bf000000a7000000a5000000a5",
            INIT_0E => X"0000004a000000500000005c000000620000006700000068000000950000009e",
            INIT_0F => X"0000007f000000880000008c0000008c00000084000000710000005300000056",
            INIT_10 => X"000000a6000000a9000000a3000000a9000000aa000000a10000009c0000009b",
            INIT_11 => X"0000008e0000009200000097000000c3000000f6000000ad000000a4000000a4",
            INIT_12 => X"0000005d000000610000006a0000007000000071000000550000004e0000006f",
            INIT_13 => X"00000081000000850000008a000000800000006900000055000000540000004a",
            INIT_14 => X"000000a7000000a7000000a5000000a100000093000000820000008500000094",
            INIT_15 => X"0000004200000061000000800000009d000000b4000000a3000000a5000000a3",
            INIT_16 => X"0000005e00000072000000770000007a00000076000000590000004200000045",
            INIT_17 => X"000000860000008a0000008c0000006c000000430000003a0000005b00000063",
            INIT_18 => X"000000aa000000a8000000aa00000099000000580000002f0000006d0000007f",
            INIT_19 => X"00000044000000640000007f0000008100000093000000a4000000a6000000a9",
            INIT_1A => X"0000006b000000690000007c000000920000008400000053000000480000004e",
            INIT_1B => X"000000860000008d000000840000004f0000002e0000003f0000005500000073",
            INIT_1C => X"000000a8000000a5000000a70000008f000000460000002a0000006300000083",
            INIT_1D => X"00000058000000740000009000000082000000780000008c000000a1000000ab",
            INIT_1E => X"0000006a0000006600000088000000a30000007c0000004d000000550000005b",
            INIT_1F => X"000000880000008a0000006b0000003900000031000000360000005500000064",
            INIT_20 => X"000000a6000000a3000000a1000000990000007c0000003600000067000000aa",
            INIT_21 => X"00000056000000790000009c0000009d0000007d00000071000000ae000000a5",
            INIT_22 => X"0000005700000071000000920000008a00000051000000500000005400000052",
            INIT_23 => X"00000089000000850000004a0000002800000038000000470000005600000053",
            INIT_24 => X"000000990000009c0000009e000000ae0000009a0000005e00000086000000b4",
            INIT_25 => X"0000005d0000007d00000094000000ae0000009c000000cf000000ed000000cf",
            INIT_26 => X"0000006a000000850000008f000000890000004c0000003b0000004a00000056",
            INIT_27 => X"000000840000005f00000028000000320000004b000000540000005700000056",
            INIT_28 => X"0000007a0000009f0000009b000000b1000000a50000008e0000006c000000b7",
            INIT_29 => X"000000780000007d0000009c000000b7000000a4000000dc000000ed000000d5",
            INIT_2A => X"0000006b0000009b0000009d000000af0000005b0000002d000000500000004e",
            INIT_2B => X"000000680000003b000000290000003b0000004e000000580000006700000057",
            INIT_2C => X"00000086000000ad000000a6000000bb000000aa0000008700000064000000bc",
            INIT_2D => X"0000007500000086000000bd000000b9000000aa000000c7000000c200000075",
            INIT_2E => X"0000005d00000092000000a0000000d20000007d000000260000005400000066",
            INIT_2F => X"0000004c0000003e000000370000004900000055000000680000005e00000053",
            INIT_30 => X"0000009f000000b2000000a6000000ae000000af0000007f0000005a000000bd",
            INIT_31 => X"0000007b000000a0000000d8000000ba00000089000000a8000000a800000061",
            INIT_32 => X"0000005b0000007b0000009b000000c200000096000000320000007300000078",
            INIT_33 => X"000000490000004f0000004900000054000000560000005f0000005400000054",
            INIT_34 => X"000000a7000000ad0000008800000077000000b9000000980000005d000000bd",
            INIT_35 => X"0000008d000000b4000000e2000000bd000000a7000000910000009300000067",
            INIT_36 => X"000000570000007200000095000000ba0000009a00000047000000750000007e",
            INIT_37 => X"0000005e000000610000005a0000006400000063000000500000004800000050",
            INIT_38 => X"000000a70000009c0000006300000069000000ba000000a80000006c000000c2",
            INIT_39 => X"0000009a00000091000000ac000000be000000c60000008a0000007300000064",
            INIT_3A => X"0000006e0000008200000089000000b300000098000000470000006700000092",
            INIT_3B => X"000000750000006100000064000000730000006d0000005f0000005b00000055",
            INIT_3C => X"0000009b0000008c0000004e00000082000000b8000000ac00000084000000c5",
            INIT_3D => X"000000830000008700000091000000f2000000e60000008f0000008200000073",
            INIT_3E => X"000000570000007000000098000000a8000000900000005f0000006c00000079",
            INIT_3F => X"0000008800000079000000670000007800000070000000690000005700000047",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000008a0000007e0000004e000000a8000000bf000000a800000092000000cb",
            INIT_41 => X"00000071000000710000008c000000a2000000ad0000009a000000600000008a",
            INIT_42 => X"0000006d00000087000000940000009c000000ab000000700000006900000065",
            INIT_43 => X"00000090000000970000007d0000006b000000650000005e0000004f0000004e",
            INIT_44 => X"0000009c000000600000005e000000b0000000b7000000a4000000a3000000d6",
            INIT_45 => X"0000007300000066000000740000007200000076000000810000006a00000094",
            INIT_46 => X"0000004b00000085000000800000004400000076000000900000006500000056",
            INIT_47 => X"0000008c000000960000008f0000007400000066000000470000003a0000003c",
            INIT_48 => X"0000008d000000560000007c000000b0000000ad000000a7000000b2000000d4",
            INIT_49 => X"00000093000000810000007c000000860000004d000000680000008700000099",
            INIT_4A => X"000000400000004b0000006b0000007500000084000000960000005c00000055",
            INIT_4B => X"000000970000009a000000a00000009b0000008500000056000000410000002c",
            INIT_4C => X"000000770000005600000090000000b1000000ae000000ab000000bb000000c7",
            INIT_4D => X"000000b8000000910000006c000000810000004600000090000000890000007a",
            INIT_4E => X"0000003400000033000000590000008600000089000000830000004900000074",
            INIT_4F => X"000000950000009e000000a4000000ab000000a3000000790000005a0000002f",
            INIT_50 => X"000000830000006300000098000000b5000000b1000000b3000000c3000000a5",
            INIT_51 => X"000000bf000000b20000007a0000005d000000500000005d00000067000000ab",
            INIT_52 => X"00000018000000260000002e0000003c00000057000000590000006400000096",
            INIT_53 => X"000000780000007f0000008000000090000000900000006c0000003c0000002e",
            INIT_54 => X"00000096000000530000008a000000b5000000b2000000b1000000c300000075",
            INIT_55 => X"000000c2000000be000000b0000000950000008600000085000000db000000f5",
            INIT_56 => X"0000003a0000003100000022000000230000003d0000006e0000007d000000a8",
            INIT_57 => X"000000370000003b000000450000004e00000048000000450000003a0000003d",
            INIT_58 => X"000000d30000006d0000008c000000b1000000b0000000ae000000af0000004f",
            INIT_59 => X"0000007a000000740000007c000000720000007c000000d0000000fc000000fd",
            INIT_5A => X"000000380000003300000032000000340000003c000000440000004400000068",
            INIT_5B => X"0000002a0000002b000000300000003b000000330000002b0000003300000038",
            INIT_5C => X"000000f6000000a5000000a5000000b2000000a8000000900000006000000029",
            INIT_5D => X"000000300000003100000031000000350000003c0000006e000000e3000000fd",
            INIT_5E => X"0000002b0000002e0000002e000000260000002a0000002e0000002a0000002d",
            INIT_5F => X"0000002d000000330000003500000037000000320000002e0000002e0000002a",
            INIT_60 => X"000000fe000000c200000084000000a6000000830000003b0000001d0000001d",
            INIT_61 => X"00000032000000310000003300000032000000320000003d0000008d000000f1",
            INIT_62 => X"0000002a00000026000000270000002300000022000000270000002a0000002f",
            INIT_63 => X"000000330000002e00000032000000380000003b0000003e000000380000002d",
            INIT_64 => X"00000100000000d7000000800000008000000049000000220000001e00000030",
            INIT_65 => X"0000002d0000002e0000003400000034000000320000003600000042000000bb",
            INIT_66 => X"0000002e0000002b00000028000000280000002700000024000000290000002b",
            INIT_67 => X"000000530000004600000032000000360000003b000000400000003e0000003b",
            INIT_68 => X"000000f0000000e00000008000000042000000290000001f0000002300000034",
            INIT_69 => X"0000002f0000002c0000002c0000003600000038000000310000003a0000007c",
            INIT_6A => X"0000003a000000360000002d0000002c0000002c0000002b0000002b0000002e",
            INIT_6B => X"0000004c000000550000004900000033000000240000002b0000002e00000036",
            INIT_6C => X"000000d3000000ca0000004e0000002c000000230000001d0000002300000032",
            INIT_6D => X"0000002d00000028000000300000003a00000030000000360000004100000061",
            INIT_6E => X"000000300000002700000027000000330000002e0000002f000000300000002f",
            INIT_6F => X"000000330000002e0000004300000043000000280000001c000000270000002f",
            INIT_70 => X"000000aa000000680000002e0000002900000021000000200000002300000032",
            INIT_71 => X"0000002d000000360000003a0000003d00000035000000340000003600000040",
            INIT_72 => X"00000027000000280000002a0000002e000000310000002e000000290000002a",
            INIT_73 => X"000000330000000f0000001f0000002f0000003f0000002c0000002800000025",
            INIT_74 => X"000000470000002a0000002b00000025000000260000001f0000002a00000044",
            INIT_75 => X"000000350000003a0000003800000031000000260000001b0000001f00000031",
            INIT_76 => X"00000021000000270000002d0000003200000035000000390000003c00000038",
            INIT_77 => X"000000280000000d0000002600000038000000490000004f0000003e0000002a",
            INIT_78 => X"000000280000002c0000002a000000270000002b00000023000000310000003d",
            INIT_79 => X"0000002f000000240000001d0000001b0000001e000000170000001b0000002a",
            INIT_7A => X"0000002b0000002b00000031000000450000004b000000420000003e00000038",
            INIT_7B => X"000000140000001d0000001a0000003c0000005d0000006d000000550000003c",
            INIT_7C => X"000000260000002800000028000000280000002b0000002d0000003800000036",
            INIT_7D => X"00000012000000130000001d000000190000001d000000160000001a00000024",
            INIT_7E => X"0000002d0000003400000035000000420000004a0000003d0000002f00000020",
            INIT_7F => X"0000001500000022000000180000003000000059000000690000005900000043",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000071000000730000006d0000007000000076000000740000006f00000070",
            INIT_01 => X"0000007700000075000000750000006f0000006f00000074000000710000006f",
            INIT_02 => X"0000006a0000006b0000006b0000006d000000700000006f0000007100000075",
            INIT_03 => X"000000550000005b0000005f000000610000006100000062000000650000006b",
            INIT_04 => X"0000007200000075000000710000007000000074000000720000006e00000070",
            INIT_05 => X"000000730000007500000077000000710000006e0000006f0000006e00000074",
            INIT_06 => X"0000006400000066000000680000006e00000073000000700000006f00000073",
            INIT_07 => X"000000580000005b0000005f0000006200000061000000660000006600000069",
            INIT_08 => X"0000007500000075000000730000006a0000006f0000006f0000006d0000006e",
            INIT_09 => X"0000007100000072000000730000006f0000006d000000720000007300000073",
            INIT_0A => X"000000550000004d0000004e0000005a000000600000006f0000007200000074",
            INIT_0B => X"000000590000005f000000620000006300000063000000670000006000000056",
            INIT_0C => X"0000007700000078000000750000006e000000700000006d0000006e0000006b",
            INIT_0D => X"00000072000000730000006f00000082000000920000007b0000007500000073",
            INIT_0E => X"0000003f0000004b0000005a0000005a00000057000000500000006f00000070",
            INIT_0F => X"0000005e00000063000000650000006600000062000000550000003e00000046",
            INIT_10 => X"000000740000007800000071000000720000007200000073000000720000006b",
            INIT_11 => X"0000006c0000006f000000720000009c000000d6000000800000007400000071",
            INIT_12 => X"0000005e00000066000000720000006e00000067000000450000003500000050",
            INIT_13 => X"0000005d0000005e000000650000006000000053000000490000004e00000048",
            INIT_14 => X"000000730000007400000071000000730000007000000064000000680000006d",
            INIT_15 => X"000000320000004b000000660000007a0000008a00000076000000740000006f",
            INIT_16 => X"00000060000000740000007a000000790000007100000053000000380000003a",
            INIT_17 => X"0000005f0000006200000069000000540000003a0000003a0000005b00000064",
            INIT_18 => X"000000760000007300000076000000750000004a000000250000005f00000064",
            INIT_19 => X"00000043000000570000006c000000620000006b000000780000007400000075",
            INIT_1A => X"0000006600000063000000760000008e00000082000000540000004b00000053",
            INIT_1B => X"0000005d00000063000000620000003d0000002f00000047000000530000006f",
            INIT_1C => X"0000007400000072000000750000006f000000400000002b0000006000000073",
            INIT_1D => X"000000570000006a000000830000006e0000005e0000006d0000007100000077",
            INIT_1E => X"000000620000005d0000007c00000099000000760000004d000000580000005f",
            INIT_1F => X"0000006100000067000000530000002f000000350000003c000000510000005d",
            INIT_20 => X"0000007a00000075000000710000007c000000790000003a00000069000000a1",
            INIT_21 => X"000000500000006f0000008f0000008d00000069000000590000008700000079",
            INIT_22 => X"0000004f00000067000000870000007d000000470000004e0000005500000051",
            INIT_23 => X"000000670000006a0000003b000000230000003900000049000000520000004d",
            INIT_24 => X"000000760000007400000074000000950000009a000000640000008b000000b0",
            INIT_25 => X"000000550000006e000000830000009900000083000000b4000000d6000000b4",
            INIT_26 => X"000000620000007c000000850000007d00000044000000390000004a00000054",
            INIT_27 => X"000000670000004b0000001e000000310000004c000000550000005500000051",
            INIT_28 => X"0000005900000076000000700000009c000000a90000009700000074000000b7",
            INIT_29 => X"0000006f0000006c000000890000009f00000087000000bf000000e0000000c5",
            INIT_2A => X"000000640000009300000093000000a5000000550000002c000000500000004c",
            INIT_2B => X"000000510000002e000000240000003b0000004f000000580000006600000053",
            INIT_2C => X"0000005d0000007b00000078000000a7000000af000000900000006c000000bf",
            INIT_2D => X"0000006b00000077000000ab000000a10000008e000000ab000000b60000005f",
            INIT_2E => X"000000590000008b00000098000000c900000079000000260000005400000062",
            INIT_2F => X"0000003800000037000000350000004b00000057000000680000005d00000050",
            INIT_30 => X"0000006d0000007b0000007b0000009c000000b40000008600000060000000c2",
            INIT_31 => X"0000007100000095000000ca000000a600000072000000900000009a00000044",
            INIT_32 => X"000000580000007600000095000000bb00000093000000320000007200000072",
            INIT_33 => X"000000370000004a0000004900000057000000570000005f0000005400000053",
            INIT_34 => X"000000740000007c0000006a0000006e000000bc0000009a0000005f000000c0",
            INIT_35 => X"00000083000000ac000000d8000000ae000000950000007d0000008400000048",
            INIT_36 => X"000000550000006e00000090000000b500000098000000470000007200000075",
            INIT_37 => X"0000004900000059000000580000006500000064000000500000004900000050",
            INIT_38 => X"0000007a00000077000000590000006d000000ba000000a70000006b000000c4",
            INIT_39 => X"0000008f0000008c000000a5000000b4000000b90000007b0000006a0000004a",
            INIT_3A => X"0000006d0000008000000085000000af00000098000000470000006400000088",
            INIT_3B => X"0000005f0000005500000060000000740000006e000000600000005d00000056",
            INIT_3C => X"0000007d000000780000005300000089000000b2000000a700000081000000c5",
            INIT_3D => X"00000079000000820000008a000000ec000000dd00000083000000780000005e",
            INIT_3E => X"000000550000006c000000930000009f00000086000000580000006800000070",
            INIT_3F => X"0000006800000060000000560000006e0000006d000000680000005800000048",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000007e0000007d00000056000000aa000000b6000000a400000092000000cb",
            INIT_41 => X"0000006a0000006a0000008400000098000000a30000008f0000005000000079",
            INIT_42 => X"00000069000000820000008d0000008a0000008f0000005a0000006500000065",
            INIT_43 => X"000000680000006c00000058000000530000005b0000005d0000004f0000004c",
            INIT_44 => X"000000950000006000000066000000b6000000b8000000a7000000a6000000d7",
            INIT_45 => X"0000006e0000005b000000690000006600000069000000740000005d00000089",
            INIT_46 => X"000000450000007e00000078000000380000006000000080000000670000005b",
            INIT_47 => X"0000006e00000074000000700000005e0000005d000000460000003800000038",
            INIT_48 => X"0000008b0000005800000083000000b8000000b5000000af000000b8000000d3",
            INIT_49 => X"0000008f000000750000006f00000079000000400000005a0000008000000094",
            INIT_4A => X"0000003b00000044000000630000006d000000750000008b000000600000005c",
            INIT_4B => X"0000006f00000073000000780000007700000069000000450000003e00000029",
            INIT_4C => X"000000790000005a00000095000000b6000000b3000000b0000000bd000000c0",
            INIT_4D => X"000000b00000008600000061000000760000003b00000086000000880000007c",
            INIT_4E => X"000000330000003100000056000000810000007c000000770000004b00000076",
            INIT_4F => X"0000006b0000006f0000007100000079000000760000005b0000005a00000031",
            INIT_50 => X"00000087000000670000009d000000b5000000ad000000b2000000c10000009c",
            INIT_51 => X"000000b6000000ad000000760000005a0000004d0000005a00000069000000af",
            INIT_52 => X"000000210000002e000000340000003d0000004d0000004e0000006400000094",
            INIT_53 => X"00000069000000710000006d0000007b0000007d000000640000004700000039",
            INIT_54 => X"000000990000005700000090000000b3000000a9000000b2000000c800000078",
            INIT_55 => X"000000c0000000c4000000b60000009c0000008d0000008c000000de000000f7",
            INIT_56 => X"000000510000004600000036000000310000003e0000006d00000085000000ac",
            INIT_57 => X"0000005a0000005c000000600000006800000065000000630000005400000055",
            INIT_58 => X"000000d30000007000000092000000b1000000ac000000b7000000c500000069",
            INIT_59 => X"00000085000000850000008d000000840000008f000000e0000000fd000000fc",
            INIT_5A => X"0000005d00000055000000540000005400000052000000570000005d0000007c",
            INIT_5B => X"0000005f00000061000000610000006c00000068000000600000005b0000005e",
            INIT_5C => X"000000f5000000a6000000aa000000b6000000ae000000a80000008900000059",
            INIT_5D => X"000000480000004b0000004c000000500000005800000088000000e7000000fb",
            INIT_5E => X"00000057000000590000005a000000560000005200000051000000510000004f",
            INIT_5F => X"0000005a0000005f0000005e00000060000000600000005e0000005d00000059",
            INIT_60 => X"000000fa000000bd00000088000000b30000009900000066000000570000005b",
            INIT_61 => X"00000054000000530000005500000054000000540000005e0000009f000000f5",
            INIT_62 => X"000000590000005500000056000000530000004f000000520000005400000056",
            INIT_63 => X"000000670000005e00000063000000660000006500000067000000670000005c",
            INIT_64 => X"000000fd000000d500000088000000940000006a000000550000005e0000006f",
            INIT_65 => X"00000052000000530000005a0000005a000000580000005b0000005d000000c6",
            INIT_66 => X"0000005f0000005c000000590000005600000053000000500000005100000052",
            INIT_67 => X"000000890000007b000000690000006c0000006c0000006d0000006e0000006c",
            INIT_68 => X"000000f5000000e5000000910000005f00000053000000560000006300000072",
            INIT_69 => X"0000005300000052000000520000005c0000005e000000570000005c0000008f",
            INIT_6A => X"0000006e0000006a000000610000005a00000058000000560000005300000054",
            INIT_6B => X"0000007d0000008a000000820000006c0000005b0000005f0000006100000069",
            INIT_6C => X"000000e4000000db0000006a000000530000005600000059000000620000006e",
            INIT_6D => X"00000052000000500000005700000061000000570000005e000000680000007e",
            INIT_6E => X"000000660000005d0000005c0000006100000059000000590000005700000054",
            INIT_6F => X"00000060000000620000007e0000008100000065000000550000005d00000065",
            INIT_70 => X"000000c5000000850000005400000058000000580000005c000000610000006c",
            INIT_71 => X"000000530000006000000064000000670000005f0000005e0000006100000064",
            INIT_72 => X"0000005c0000005d0000005f0000005c0000005c00000058000000500000004f",
            INIT_73 => X"0000005d0000003c0000005a0000006e0000007d000000660000005d0000005a",
            INIT_74 => X"0000006b0000004f00000059000000570000005b00000058000000640000007c",
            INIT_75 => X"0000005c00000066000000640000005d00000052000000470000004d00000059",
            INIT_76 => X"00000053000000580000005e0000005f0000006100000063000000630000005e",
            INIT_77 => X"000000550000004000000061000000740000008300000084000000700000005b",
            INIT_78 => X"00000051000000580000005c0000005a0000005b000000550000006600000074",
            INIT_79 => X"000000560000005000000049000000470000004a000000430000004800000055",
            INIT_7A => X"00000058000000580000005f00000071000000770000006d000000650000005f",
            INIT_7B => X"00000040000000520000005200000073000000910000009c0000008200000069",
            INIT_7C => X"00000051000000570000005c000000590000005600000059000000690000006b",
            INIT_7D => X"0000003a0000003f00000049000000450000004900000042000000450000004f",
            INIT_7E => X"000000570000005f000000600000006f00000077000000680000005700000046",
            INIT_7F => X"00000043000000540000004d000000630000008700000092000000830000006d",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000002d0000002f000000290000002e00000035000000330000002f00000031",
            INIT_01 => X"0000002c0000002d00000029000000310000003400000029000000290000002c",
            INIT_02 => X"0000002b0000002d0000002d0000002c0000002b000000270000002600000028",
            INIT_03 => X"00000021000000240000002400000026000000290000002b000000270000002c",
            INIT_04 => X"0000002d0000002f0000002b00000031000000380000002d0000002800000033",
            INIT_05 => X"000000210000002800000029000000340000003600000029000000260000002e",
            INIT_06 => X"000000300000003400000037000000350000003200000029000000210000001e",
            INIT_07 => X"00000022000000200000001f00000022000000260000002d0000002e00000032",
            INIT_08 => X"0000002d0000002d0000002c0000002a0000003000000024000000210000002f",
            INIT_09 => X"0000002300000025000000260000003300000039000000300000002b0000002b",
            INIT_0A => X"000000320000002f000000320000003400000031000000360000002f00000027",
            INIT_0B => X"0000002100000022000000220000002300000027000000330000003700000030",
            INIT_0C => X"00000030000000300000002e0000002b0000002c0000001f0000002000000028",
            INIT_0D => X"000000360000002f000000290000004b0000005f000000390000002d0000002c",
            INIT_0E => X"0000003200000042000000540000004c000000410000002f000000430000003a",
            INIT_0F => X"0000002400000027000000270000002b0000002e0000002d0000002700000034",
            INIT_10 => X"0000002c0000002f000000280000002b0000002f000000310000003000000029",
            INIT_11 => X"000000470000003c000000380000006b000000a40000003b0000002a00000029",
            INIT_12 => X"0000005d00000069000000760000006f00000062000000380000001f00000032",
            INIT_13 => X"00000024000000240000002e000000300000002d0000002f0000004600000043",
            INIT_14 => X"0000002900000029000000270000002c00000035000000390000004000000036",
            INIT_15 => X"0000001f0000002b0000003a0000004e000000550000002a0000002700000025",
            INIT_16 => X"00000060000000740000007a000000780000006e0000004c0000002d0000002b",
            INIT_17 => X"000000280000002c0000003a00000031000000250000002f0000005600000061",
            INIT_18 => X"0000002b000000280000002b000000300000001c000000110000005000000039",
            INIT_19 => X"00000039000000460000004b0000003b0000003400000027000000250000002a",
            INIT_1A => X"0000005e0000005a0000006c00000084000000790000004a0000004000000048",
            INIT_1B => X"00000027000000300000003a0000002400000027000000450000004d00000067",
            INIT_1C => X"00000027000000240000002a0000003800000029000000260000005c0000005a",
            INIT_1D => X"0000004f0000005d0000006b0000004d00000031000000330000003300000031",
            INIT_1E => X"0000005800000051000000700000008c0000006b000000450000005200000058",
            INIT_1F => X"00000027000000330000003200000020000000310000003a0000004a00000054",
            INIT_20 => X"00000032000000290000002b00000052000000710000003b0000006900000090",
            INIT_21 => X"0000004a0000006500000080000000790000004e0000003b0000005f00000042",
            INIT_22 => X"000000460000005d0000007b000000700000003d00000049000000520000004d",
            INIT_23 => X"0000002d0000003b000000230000001b00000035000000430000004c00000045",
            INIT_24 => X"0000003c0000002f000000330000007000000095000000690000008f000000a3",
            INIT_25 => X"0000004f0000006b0000007d0000009100000077000000a6000000c600000092",
            INIT_26 => X"00000059000000720000007a000000700000003a00000035000000470000004f",
            INIT_27 => X"000000390000002c0000000f0000002b000000470000004e0000004e0000004a",
            INIT_28 => X"0000002f00000033000000320000007a000000a80000009e0000007a000000af",
            INIT_29 => X"0000006800000068000000840000009b00000083000000bc000000e2000000b3",
            INIT_2A => X"0000005c0000008a000000890000009a0000004d000000280000004d00000045",
            INIT_2B => X"0000002e0000001f000000210000003b000000490000004f000000600000004d",
            INIT_2C => X"0000002c000000370000003b00000088000000b20000009900000074000000bd",
            INIT_2D => X"0000005f0000006a0000009f0000009700000085000000a4000000bc00000050",
            INIT_2E => X"00000052000000820000008e000000c000000071000000220000004f00000059",
            INIT_2F => X"0000001a00000030000000370000004e000000510000005e000000580000004b",
            INIT_30 => X"0000002f000000350000004400000085000000b90000009000000069000000c2",
            INIT_31 => X"0000006200000081000000b7000000940000005e0000007e000000980000002c",
            INIT_32 => X"000000530000006f0000008c000000b20000008c0000002f0000006d00000069",
            INIT_33 => X"000000180000004000000049000000590000005100000055000000500000004f",
            INIT_34 => X"000000320000003a0000004200000062000000c0000000a300000067000000c1",
            INIT_35 => X"000000750000009d000000c80000009b0000007f000000670000007800000027",
            INIT_36 => X"000000500000006800000088000000ae00000093000000440000006d0000006b",
            INIT_37 => X"000000220000004500000051000000630000005e00000048000000460000004c",
            INIT_38 => X"000000370000003e000000430000006d000000bc000000ac00000070000000c4",
            INIT_39 => X"000000860000008c0000009f000000a9000000a9000000670000005800000022",
            INIT_3A => X"000000690000007a0000007f000000aa00000095000000460000005f0000007d",
            INIT_3B => X"0000002f00000035000000500000006f000000680000005a0000005b00000053",
            INIT_3C => X"0000004d000000580000004d0000008e000000b5000000ae00000088000000c5",
            INIT_3D => X"000000700000008200000089000000e6000000d3000000740000005d00000034",
            INIT_3E => X"00000050000000650000008a00000092000000760000004b0000005f00000065",
            INIT_3F => X"0000003000000030000000360000005d00000063000000630000005700000044",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000710000007e0000005a000000ac000000bc000000b2000000a0000000cc",
            INIT_41 => X"0000005a00000058000000750000008d0000009b000000850000002500000052",
            INIT_42 => X"00000061000000760000007e0000006d000000680000003a000000570000005c",
            INIT_43 => X"0000002e000000370000002d00000037000000520000005e0000004d00000048",
            INIT_44 => X"000000910000006600000069000000ba000000c2000000b8000000b4000000d7",
            INIT_45 => X"000000620000004900000059000000590000005f000000690000003d0000006f",
            INIT_46 => X"0000003d00000073000000690000002000000040000000660000005f00000058",
            INIT_47 => X"000000360000004000000044000000400000004e000000410000003500000033",
            INIT_48 => X"0000008f0000006000000085000000bc000000c1000000bd000000c0000000cd",
            INIT_49 => X"0000008500000064000000600000006c00000037000000500000006f0000008d",
            INIT_4A => X"000000340000003a000000560000005c0000005d000000780000005d0000005d",
            INIT_4B => X"0000002e0000002d000000360000003e0000003b000000280000003c00000027",
            INIT_4C => X"000000840000006300000098000000b8000000b9000000b5000000bb000000b4",
            INIT_4D => X"000000a80000007b000000560000006c000000330000007e0000008700000082",
            INIT_4E => X"000000320000002c0000004e0000007600000069000000670000004900000076",
            INIT_4F => X"0000002e000000320000003400000040000000440000003c0000005d00000034",
            INIT_50 => X"000000920000006f000000a0000000b4000000ac000000af000000bb00000092",
            INIT_51 => X"000000b1000000ad000000740000005600000049000000570000006f000000b9",
            INIT_52 => X"000000290000003300000036000000390000003f000000420000006500000094",
            INIT_53 => X"0000003f000000450000003d0000004c000000520000004b0000005300000045",
            INIT_54 => X"0000009f0000005b00000093000000b3000000a8000000b0000000c80000007c",
            INIT_55 => X"000000c5000000d0000000c0000000a40000009300000090000000e1000000fa",
            INIT_56 => X"0000006600000057000000440000003a0000003e0000006d0000008f000000b5",
            INIT_57 => X"00000073000000700000007000000078000000770000007a0000006f0000006e",
            INIT_58 => X"000000d10000007100000096000000b6000000b1000000c0000000d500000085",
            INIT_59 => X"000000980000009c000000a2000000950000009d000000e8000000fc000000f7",
            INIT_5A => X"0000007d000000730000006e0000006f00000065000000680000007700000094",
            INIT_5B => X"0000008400000089000000840000008e0000008d000000870000008200000083",
            INIT_5C => X"000000ed000000a4000000ae000000c0000000bc000000bc000000a800000087",
            INIT_5D => X"000000650000006b00000069000000690000006f00000099000000e4000000f1",
            INIT_5E => X"000000800000007e0000007d0000007d00000074000000710000007800000073",
            INIT_5F => X"000000850000008b000000860000008700000089000000890000008b00000084",
            INIT_60 => X"000000f2000000b500000089000000bf000000b000000086000000820000008d",
            INIT_61 => X"00000074000000780000007900000077000000760000007f000000af000000f5",
            INIT_62 => X"000000820000007d0000007d0000007800000071000000730000007500000075",
            INIT_63 => X"000000950000008c00000090000000920000008e0000008e0000009100000086",
            INIT_64 => X"000000f9000000d10000008f000000a7000000880000007c0000008c000000a2",
            INIT_65 => X"00000073000000790000007f0000007f0000007d0000008000000076000000cd",
            INIT_66 => X"0000008a00000086000000830000007b00000075000000710000007000000071",
            INIT_67 => X"000000b6000000a7000000980000009a00000095000000930000009800000096",
            INIT_68 => X"000000f7000000ea000000a40000007e0000007a0000008200000093000000a5",
            INIT_69 => X"00000077000000770000007700000081000000830000007b0000007200000099",
            INIT_6A => X"0000009a000000960000008d000000830000007f0000007b0000007700000077",
            INIT_6B => X"000000a9000000b6000000b20000009e0000008a0000008c0000008d00000096",
            INIT_6C => X"000000ea000000e90000008a0000007e000000850000008a00000095000000a2",
            INIT_6D => X"00000077000000740000007b000000850000007c000000810000007e0000008c",
            INIT_6E => X"000000940000008b0000008a0000008c00000084000000820000007e0000007a",
            INIT_6F => X"0000008b0000008e000000b0000000b600000099000000850000008b00000093",
            INIT_70 => X"000000d30000009f0000007d0000008a0000008d0000008f00000093000000a1",
            INIT_71 => X"0000007800000083000000870000008b00000082000000800000007900000077",
            INIT_72 => X"000000880000008a0000008b0000008800000087000000820000007800000076",
            INIT_73 => X"00000088000000670000008c000000a4000000b2000000970000008a00000087",
            INIT_74 => X"0000008500000071000000840000008b000000920000008900000094000000b1",
            INIT_75 => X"0000008000000089000000870000008000000075000000690000006900000072",
            INIT_76 => X"0000007d0000008300000088000000890000008a0000008b0000008900000083",
            INIT_77 => X"0000007f0000006c00000092000000a8000000b5000000b30000009a00000085",
            INIT_78 => X"000000700000007d000000860000008b0000008f0000008400000094000000a8",
            INIT_79 => X"00000078000000730000006c0000006a0000006d000000660000006800000073",
            INIT_7A => X"0000007f0000007f00000086000000980000009c000000900000008700000080",
            INIT_7B => X"0000006b0000007e00000082000000a4000000be000000c5000000aa00000090",
            INIT_7C => X"000000730000007b0000008400000086000000860000008400000095000000a0",
            INIT_7D => X"00000059000000620000006c000000680000006c000000650000006900000072",
            INIT_7E => X"0000007b00000082000000830000009100000098000000890000007600000064",
            INIT_7F => X"0000006e000000810000007c00000091000000af000000b6000000a700000091",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000001b0000003600000039000000390000007400000000",
            INIT_41 => X"00000092000000500000004d000000020000001d0000004b0000000000000013",
            INIT_42 => X"00000000000000000000009e0000002400000000000000000000000000000050",
            INIT_43 => X"00000000000000000000001c0000004b00000032000000150000001200000000",
            INIT_44 => X"000000000000004e000000000000000000000000000000000000000000000000",
            INIT_45 => X"000000000000000000000025000000000000002c000000370000000000000000",
            INIT_46 => X"0000001300000011000000000000003f00000000000000640000000000000000",
            INIT_47 => X"000000020000005f000000000000000000000000000000000000000000000000",
            INIT_48 => X"0000000400000053000000040000000b00000014000000000000000700000000",
            INIT_49 => X"00000000000000000000000000000000000000170000002e0000003200000018",
            INIT_4A => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_4B => X"000000000000000000000000000000000000000000000000000000000000000d",
            INIT_4C => X"0000000e00000000000000160000000000000000000000000000000d00000000",
            INIT_4D => X"000000210000000100000000000000000000000600000000000000000000001e",
            INIT_4E => X"00000000000000000000001b0000001200000000000000000000000000000000",
            INIT_4F => X"0000000000000000000000000000002e00000041000000380000003900000000",
            INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000000000002200000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"000000000000001a00000000000000030000007c000000170000000000000023",
            INIT_54 => X"0000000000000017000000180000000600000015000000000000001a00000000",
            INIT_55 => X"00000092000000810000004000000035000000240000001e0000000c00000000",
            INIT_56 => X"0000000000000000000000000000003300000000000000190000006c00000027",
            INIT_57 => X"0000000000000000000000700000000000000000000000000000000000000000",
            INIT_58 => X"000000380000004f0000001c0000000000000000000000000000000500000000",
            INIT_59 => X"0000000000000000000000000000000000000000000000360000000000000038",
            INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"0000000000000000000000000000000000000000000000000000001300000000",
            INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"0000000000000000000000660000002600000065000000420000001c00000000",
            INIT_5E => X"0000004d00000000000000190000007700000056000000590000004e00000062",
            INIT_5F => X"00000025000000280000000c00000074000000b7000000470000003500000060",
            INIT_60 => X"000000840000006e000000500000003900000078000000850000003900000018",
            INIT_61 => X"000000bb000000ab0000009c00000092000000a90000008b0000009a0000008a",
            INIT_62 => X"0000005000000067000000a9000000b5000000a60000000a0000000000000000",
            INIT_63 => X"000000110000002d0000001c00000000000000000000004d0000009700000046",
            INIT_64 => X"0000001d000000680000001d000000000000002100000000000000000000001c",
            INIT_65 => X"0000002f0000002b000000000000000000000000000000000000000000000000",
            INIT_66 => X"0000005600000067000000d100000024000000400000006a0000003400000037",
            INIT_67 => X"0000000000000000000000000000000000000061000000170000004200000073",
            INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6A => X"0000000000000000000000000000000000000000000000000000000f00000000",
            INIT_6B => X"0000000600000000000000000000000000000000000000000000000000000000",
            INIT_6C => X"0000009b000000b3000000000000006800000000000000210000000000000000",
            INIT_6D => X"000000a900000098000000a00000007d000000c10000007c0000009c0000007d",
            INIT_6E => X"000000000000000000000000000000000000001c00000006000000b0000000c2",
            INIT_6F => X"0000000000000000000000000000000000000000000000110000000000000000",
            INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_74 => X"00000050000000510000004b0000006100000062000000000000000000000000",
            INIT_75 => X"0000005a0000005e0000005b0000005300000088000000610000004100000049",
            INIT_76 => X"0000003c000000730000005f00000076000000600000005a000000680000002a",
            INIT_77 => X"0000005c0000005d00000041000000460000007b0000004e0000006d00000076",
            INIT_78 => X"0000002e0000002300000015000000100000004f0000003b0000004600000097",
            INIT_79 => X"000000000000000d00000000000000000000000000000000000000000000002f",
            INIT_7A => X"000000570000007b000000730000006300000000000000000000000000000000",
            INIT_7B => X"0000000500000040000000430000007000000045000000480000004b00000056",
            INIT_7C => X"00000024000000000000001e00000022000000320000002b0000004400000012",
            INIT_7D => X"00000021000000210000000000000009000000000000005d000000070000003c",
            INIT_7E => X"000000000000002b000000170000001900000015000000000000000600000000",
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
    end generate MEM_IFMAP_LAYER1_ENTITY0;


    MEM_IFMAP_LAYER1_ENTITY1 : if BRAM_NAME = "ifmap_layer1_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000008000000000000001e000000450000002f000000120000001700000003",
            INIT_41 => X"0000003a00000027000000390000004200000060000000000000000200000015",
            INIT_42 => X"000000880000007e0000007e000000480000000700000069000000260000003a",
            INIT_43 => X"000000ab000000a90000009e000000960000009200000066000000bb00000096",
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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000001d00000000000000030000000500000014000000110000000000000000",
            INIT_41 => X"00000000000000170000000f0000000300000000000000080000000000000010",
            INIT_42 => X"00000003000000440000000000000004000000060000000a0000001a00000000",
            INIT_43 => X"00000000000000000000000b0000001700000002000000000000000b00000000",
            INIT_44 => X"00000004000000000000003700000000000000000000000b0000001e0000000c",
            INIT_45 => X"000000060000000000000006000000140000002000000002000000110000000a",
            INIT_46 => X"000000110000000000000000000000200000000000000000000000000000002d",
            INIT_47 => X"00000000000000080000001100000004000000280000001d0000000000000008",
            INIT_48 => X"00000000000000060000000000000010000000000000000b0000000b00000000",
            INIT_49 => X"00000012000000090000000e0000002700000000000000240000001800000000",
            INIT_4A => X"00000000000000000000000c0000000000000000000000000000001500000012",
            INIT_4B => X"000000110000002d000000280000000d0000005800000000000000230000002b",
            INIT_4C => X"00000036000000000000000b0000001f000000220000001b0000000000000000",
            INIT_4D => X"0000001a000000210000001f0000000700000000000000450000001200000023",
            INIT_4E => X"000000380000002a0000002f0000002f0000002e00000028000000220000001e",
            INIT_4F => X"0000002a00000024000000240000002500000027000000000000002500000033",
            INIT_50 => X"000000520000002e0000002c0000003a0000002e0000002f000000360000002f",
            INIT_51 => X"0000002e0000002f0000002a0000002a000000260000002b0000001300000000",
            INIT_52 => X"000000190000002c000000330000002b00000028000000450000002a0000002f",
            INIT_53 => X"0000002e0000002d000000310000002e00000024000000230000002800000019",
            INIT_54 => X"00000000000000000000000000000000000000000000001f0000003a00000043",
            INIT_55 => X"00000000000000000000000a0000000200000000000000000000000000000000",
            INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000030000001c0000001f00000000000000170000000800000010",
            INIT_58 => X"0000002b00000000000000000000000000000000000000000000002a00000000",
            INIT_59 => X"00000000000000000000003f0000002d00000042000000000000000000000011",
            INIT_5A => X"0000002c00000028000000000000000e00000000000000000000000000000071",
            INIT_5B => X"0000006c000000000000002a0000003b000000260000005a0000000000000025",
            INIT_5C => X"0000003c000000480000005d0000002400000034000000000000002300000005",
            INIT_5D => X"0000003100000059000000000000003e0000001e000000520000002f00000000",
            INIT_5E => X"00000000000000600000003e000000610000002c000000000000000000000037",
            INIT_5F => X"0000001500000073000000480000002500000031000000120000005c00000073",
            INIT_60 => X"00000075000000000000006a0000004a0000005a000000000000000000000038",
            INIT_61 => X"0000003100000028000000650000004d000000370000000c0000001200000047",
            INIT_62 => X"000000500000004f0000000000000046000000380000008b0000000600000000",
            INIT_63 => X"0000002a0000000b000000840000004200000068000000130000002500000006",
            INIT_64 => X"000000040000005b0000001600000029000000000000002c0000002e00000013",
            INIT_65 => X"0000001800000064000000000000009f0000003a0000004a0000000000000000",
            INIT_66 => X"0000000000000000000000170000005a0000003b000000300000004d00000000",
            INIT_67 => X"000000200000004c0000009300000000000000940000003c0000000f0000000c",
            INIT_68 => X"0000003100000020000000230000001d0000001a000000410000008300000071",
            INIT_69 => X"0000003c0000003a00000073000000d8000000000000004e0000002b0000001d",
            INIT_6A => X"0000005f0000004f000000400000003e0000003c0000003d0000003800000047",
            INIT_6B => X"0000003e0000003f0000004900000042000000af000000820000000000000012",
            INIT_6C => X"000000450000006a0000003d0000004800000050000000400000003800000039",
            INIT_6D => X"000000410000003c000000420000004d000000390000005a000000cb00000000",
            INIT_6E => X"0000003e0000004b000000760000007b000000380000004e0000004d00000048",
            INIT_6F => X"0000005500000044000000380000004400000043000000350000004800000054",
            INIT_70 => X"00000008000000080000000000000000000000800000006f0000001a0000003a",
            INIT_71 => X"0000000000000000000000000000000400000000000000050000000300000006",
            INIT_72 => X"0000000a000000070000000c0000000a00000007000000050000000600000000",
            INIT_73 => X"0000000000000006000000240000000000000000000000000000001a00000049",
            INIT_74 => X"0000000000000007000000040000000400000000000000000000000400000000",
            INIT_75 => X"000000000000001700000007000000150000001a0000000d0000000000000000",
            INIT_76 => X"00000037000000000000000d0000000500000009000000250000002800000000",
            INIT_77 => X"000000000000000100000000000000000000000000000000000000050000001b",
            INIT_78 => X"0000000e0000000600000056000000800000000b000000130000005a00000026",
            INIT_79 => X"0000000000000000000000180000000f00000025000000250000000000000000",
            INIT_7A => X"0000001f0000001a0000002a0000000000000000000000000000000800000000",
            INIT_7B => X"000000070000000600000027000000090000000000000000000000000000003a",
            INIT_7C => X"00000011000000090000000a0000000000000021000000000000000400000000",
            INIT_7D => X"0000001c00000007000000150000001d00000017000000000000000b00000000",
            INIT_7E => X"0000000000000000000000000000000000000000000000160000001900000010",
            INIT_7F => X"000000040000000b000000040000001000000000000000000000000000000000",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_41 => X"000000000000000000000000000000000000005d000000000000000000000000",
            INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0000002b00000000000000000000000400000000000000000000000000000000",
            INIT_45 => X"000000370000003a00000030000000290000002f0000002c0000002d00000030",
            INIT_46 => X"000000350000002c000000310000002a0000002700000026000000250000002a",
            INIT_47 => X"0000000c0000003b000000290000001f000000000000002d0000002e00000030",
            INIT_48 => X"0000002e000000290000001c000000250000001f0000000e0000000000000000",
            INIT_49 => X"000000000000000000000000000000230000002d0000003b0000003200000035",
            INIT_4A => X"000000320000002300000000000000000000001a000000040000000000000000",
            INIT_4B => X"0000000000000000000000000000000000000000000000000000001900000025",
            INIT_4C => X"0000000000000018000000120000000000000000000000110000000000000006",
            INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_4E => X"0000000300000003000000380000000b00000000000000000000000500000000",
            INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_50 => X"0000000000000000000000070000003a00000007000000000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_53 => X"000000000000000d000000000000000000000000000000000000000000000000",
            INIT_54 => X"0000000000000000000000050000001a00000000000000000000000000000000",
            INIT_55 => X"000000000000000000000008000000000000000400000018000000030000000f",
            INIT_56 => X"0000000800000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"0000000000000000000000000000001f00000000000000000000000a00000011",
            INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_61 => X"0000000b0000000c0000000c000000040000000800000008000000110000000a",
            INIT_62 => X"00000000000000060000000800000011000000230000002d000000210000000b",
            INIT_63 => X"00000042000000230000000500000000000000080000000c0000000a0000000a",
            INIT_64 => X"00000033000000350000000a000000170000000a000000000000000000000000",
            INIT_65 => X"0000000000000000000000090000001600000037000000050000000800000005",
            INIT_66 => X"0000000500000000000000000000000c0000000e000000000000000000000000",
            INIT_67 => X"000000040000001a000000000000000200000000000000000000000800000008",
            INIT_68 => X"0000000e0000000200000000000000010000000e000000000000000600000010",
            INIT_69 => X"0000000000000000000000000000000700000000000000090000000000000000",
            INIT_6A => X"0000003e0000000300000006000000000000000f000000000000000000000000",
            INIT_6B => X"0000000700000015000000140000000000000000000000000000000000000028",
            INIT_6C => X"0000000000000012000000180000001c00000000000000000000000000000000",
            INIT_6D => X"0000000000000000000000000000001100000000000000110000000000000031",
            INIT_6E => X"0000003500000035000000020000000000000000000000000000000000000000",
            INIT_6F => X"000000000000000e000000050000000000000009000000000000000e00000021",
            INIT_70 => X"0000000000000000000000260000000000000000000000000000000100000000",
            INIT_71 => X"0000000c00000000000000000000000000000030000000260000000000000000",
            INIT_72 => X"0000000000000000000000000000000900000023000000000000000400000000",
            INIT_73 => X"000000000000000300000018000000000000000000000011000000360000004e",
            INIT_74 => X"0000000000000037000000510000001e00000000000000000000000000000007",
            INIT_75 => X"0000000c00000021000000350000000a00000005000000000000000000000000",
            INIT_76 => X"0000000000000000000000030000000500000004000000280000005600000000",
            INIT_77 => X"0000001800000000000000160000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000000000000000000000000000000000000000000000000003f",
            INIT_79 => X"0000000b0000004f000000180000000000000000000000000000000000000000",
            INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"0000000300000000000000220000000000000000000000000000001400000000",
            INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000012",
            INIT_7D => X"0000000800000015000000090000000e0000000a000000130000000d00000000",
            INIT_7E => X"0000000200000006000000130000001b000000220000001c0000000c00000006",
            INIT_7F => X"0000001a0000000f000000360000000f0000000d000000090000000b00000008",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000000000000000000000000000e0000000000000000",
            INIT_41 => X"00000000000000520000000000000000000000000000000f0000001c00000000",
            INIT_42 => X"0000000000000000000000000000000400000000000000130000001200000000",
            INIT_43 => X"00000000000000000000002d000000000000000500000000000000170000000c",
            INIT_44 => X"000000000000001100000000000000160000000000000000000000030000001d",
            INIT_45 => X"0000001b00000000000000110000000000000008000000000000000000000012",
            INIT_46 => X"00000003000000000000003b0000000000000019000000090000000000000000",
            INIT_47 => X"0000000000000012000000120000000000000000000000050000000000000010",
            INIT_48 => X"0000002d000000000000000000000058000000000000000d0000003300000000",
            INIT_49 => X"0000001d0000002c0000003e0000003300000028000000020000000000000004",
            INIT_4A => X"0000004e0000004e0000002e000000000000003b000000000000003600000070",
            INIT_4B => X"0000005a000000530000005a00000058000000560000004f0000004900000044",
            INIT_4C => X"0000004c0000004a00000048000000490000000000000008000000480000006f",
            INIT_4D => X"000000600000005a0000005e0000005d000000570000005b0000005b00000054",
            INIT_4E => X"00000057000000530000004d000000450000005000000031000000000000008a",
            INIT_4F => X"0000006700000067000000500000005e00000074000000610000006400000061",
            INIT_50 => X"00000052000000520000005200000049000000550000005f0000004900000041",
            INIT_51 => X"0000002e000000330000002e0000002f00000045000000530000006b0000005e",
            INIT_52 => X"000000270000001c000000230000002b0000002f000000310000002f0000002f",
            INIT_53 => X"000000340000002d000000350000003200000032000000240000002700000026",
            INIT_54 => X"0000002400000015000000130000002100000004000000250000001300000055",
            INIT_55 => X"0000002c000000380000002e000000340000003b0000001a000000280000002d",
            INIT_56 => X"00000027000000040000000b0000000a0000004f0000001a0000000000000000",
            INIT_57 => X"0000001a0000002300000025000000360000002c000000790000000000000039",
            INIT_58 => X"000000530000000e000000000000001200000000000000530000001800000008",
            INIT_59 => X"00000000000000000000001a0000002c000000490000000a0000006300000000",
            INIT_5A => X"0000000000000039000000000000001e000000000000000b0000005f00000008",
            INIT_5B => X"00000000000000000000000000000000000000490000002e0000000000000038",
            INIT_5C => X"00000015000000000000000d00000004000000230000000000000000000000bf",
            INIT_5D => X"000000a400000000000000000000000a0000005000000061000000000000000c",
            INIT_5E => X"0000000100000000000000000000000d000000270000001e0000000000000000",
            INIT_5F => X"000000000000007c000000000000000800000000000000680000004500000000",
            INIT_60 => X"0000003c00000000000000170000000000000012000000220000002a00000000",
            INIT_61 => X"000000000000002200000006000000310000001c000000000000000300000011",
            INIT_62 => X"000000000000004a00000000000000180000000a000000440000003a00000026",
            INIT_63 => X"0000004800000005000000000000000a000000170000000e0000002a00000019",
            INIT_64 => X"0000000b00000000000000a30000000000000011000000510000001c00000056",
            INIT_65 => X"0000001e0000002d000000280000001400000000000000000000000000000056",
            INIT_66 => X"0000000000000000000000000000009800000000000000280000004000000000",
            INIT_67 => X"00000000000000110000000e0000001000000010000000090000000000000000",
            INIT_68 => X"0000000a0000000500000009000000000000001f000000480000004100000003",
            INIT_69 => X"0000000000000017000000080000001000000017000000140000001000000008",
            INIT_6A => X"0000000d00000009000000000000001100000000000000000000007400000010",
            INIT_6B => X"0000000d00000000000000000000002600000000000000090000000d00000010",
            INIT_6C => X"0000001000000018000000090000000c00000016000000000000000000000019",
            INIT_6D => X"0000000000000000000000000000000000000003000000310000000b00000000",
            INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"0000000000000001000000000000000000000000000000000000000400000000",
            INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"0000000000000000000000000000000000000012000000040000000000000000",
            INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000005",
            INIT_75 => X"0000000000000008000000380000000000000000000000270000000100000000",
            INIT_76 => X"0000000000000004000000000000000000000000000000000000000000000000",
            INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000f000000000000000000000000000000000000001400000000",
            INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7F => X"0000000000000000000000000000000000000012000000000000000000000000",

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


    MEM_IFMAP_LAYER2_ENTITY3 : if BRAM_NAME = "ifmap_layer2_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000000000000000000140000000400000000000000000000001300000015",
            INIT_41 => X"0000001a0000001200000000000000000000000c000000000000000000000000",
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
    end generate MEM_IFMAP_LAYER2_ENTITY3;


    MEM_GOLD_LAYER0_ENTITY0 : if BRAM_NAME = "gold_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000001d00000000000000030000000500000014000000110000000000000000",
            INIT_41 => X"00000000000000170000000f0000000300000000000000080000000000000010",
            INIT_42 => X"00000003000000440000000000000004000000060000000a0000001a00000000",
            INIT_43 => X"00000000000000000000000b0000001700000002000000000000000b00000000",
            INIT_44 => X"00000004000000000000003700000000000000000000000b0000001e0000000c",
            INIT_45 => X"000000060000000000000006000000140000002000000002000000110000000a",
            INIT_46 => X"000000110000000000000000000000200000000000000000000000000000002d",
            INIT_47 => X"00000000000000080000001100000004000000280000001d0000000000000008",
            INIT_48 => X"00000000000000060000000000000010000000000000000b0000000b00000000",
            INIT_49 => X"00000012000000090000000e0000002700000000000000240000001800000000",
            INIT_4A => X"00000000000000000000000c0000000000000000000000000000001500000012",
            INIT_4B => X"000000110000002d000000280000000d0000005800000000000000230000002b",
            INIT_4C => X"00000036000000000000000b0000001f000000220000001b0000000000000000",
            INIT_4D => X"0000001a000000210000001f0000000700000000000000450000001200000023",
            INIT_4E => X"000000380000002a0000002f0000002f0000002e00000028000000220000001e",
            INIT_4F => X"0000002a00000024000000240000002500000027000000000000002500000033",
            INIT_50 => X"000000520000002e0000002c0000003a0000002e0000002f000000360000002f",
            INIT_51 => X"0000002e0000002f0000002a0000002a000000260000002b0000001300000000",
            INIT_52 => X"000000190000002c000000330000002b00000028000000450000002a0000002f",
            INIT_53 => X"0000002e0000002d000000310000002e00000024000000230000002800000019",
            INIT_54 => X"00000000000000000000000000000000000000000000001f0000003a00000043",
            INIT_55 => X"00000000000000000000000a0000000200000000000000000000000000000000",
            INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000030000001c0000001f00000000000000170000000800000010",
            INIT_58 => X"0000002b00000000000000000000000000000000000000000000002a00000000",
            INIT_59 => X"00000000000000000000003f0000002d00000042000000000000000000000011",
            INIT_5A => X"0000002c00000028000000000000000e00000000000000000000000000000071",
            INIT_5B => X"0000006c000000000000002a0000003b000000260000005a0000000000000025",
            INIT_5C => X"0000003c000000480000005d0000002400000034000000000000002300000005",
            INIT_5D => X"0000003100000059000000000000003e0000001e000000520000002f00000000",
            INIT_5E => X"00000000000000600000003e000000610000002c000000000000000000000037",
            INIT_5F => X"0000001500000073000000480000002500000031000000120000005c00000073",
            INIT_60 => X"00000075000000000000006a0000004a0000005a000000000000000000000038",
            INIT_61 => X"0000003100000028000000650000004d000000370000000c0000001200000047",
            INIT_62 => X"000000500000004f0000000000000046000000380000008b0000000600000000",
            INIT_63 => X"0000002a0000000b000000840000004200000068000000130000002500000006",
            INIT_64 => X"000000040000005b0000001600000029000000000000002c0000002e00000013",
            INIT_65 => X"0000001800000064000000000000009f0000003a0000004a0000000000000000",
            INIT_66 => X"0000000000000000000000170000005a0000003b000000300000004d00000000",
            INIT_67 => X"000000200000004c0000009300000000000000940000003c0000000f0000000c",
            INIT_68 => X"0000003100000020000000230000001d0000001a000000410000008300000071",
            INIT_69 => X"0000003c0000003a00000073000000d8000000000000004e0000002b0000001d",
            INIT_6A => X"0000005f0000004f000000400000003e0000003c0000003d0000003800000047",
            INIT_6B => X"0000003e0000003f0000004900000042000000af000000820000000000000012",
            INIT_6C => X"000000450000006a0000003d0000004800000050000000400000003800000039",
            INIT_6D => X"000000410000003c000000420000004d000000390000005a000000cb00000000",
            INIT_6E => X"0000003e0000004b000000760000007b000000380000004e0000004d00000048",
            INIT_6F => X"0000005500000044000000380000004400000043000000350000004800000054",
            INIT_70 => X"00000008000000080000000000000000000000800000006f0000001a0000003a",
            INIT_71 => X"0000000000000000000000000000000400000000000000050000000300000006",
            INIT_72 => X"0000000a000000070000000c0000000a00000007000000050000000600000000",
            INIT_73 => X"0000000000000006000000240000000000000000000000000000001a00000049",
            INIT_74 => X"0000000000000007000000040000000400000000000000000000000400000000",
            INIT_75 => X"000000000000001700000007000000150000001a0000000d0000000000000000",
            INIT_76 => X"00000037000000000000000d0000000500000009000000250000002800000000",
            INIT_77 => X"000000000000000100000000000000000000000000000000000000050000001b",
            INIT_78 => X"0000000e0000000600000056000000800000000b000000130000005a00000026",
            INIT_79 => X"0000000000000000000000180000000f00000025000000250000000000000000",
            INIT_7A => X"0000001f0000001a0000002a0000000000000000000000000000000800000000",
            INIT_7B => X"000000070000000600000027000000090000000000000000000000000000003a",
            INIT_7C => X"00000011000000090000000a0000000000000021000000000000000400000000",
            INIT_7D => X"0000001c00000007000000150000001d00000017000000000000000b00000000",
            INIT_7E => X"0000000000000000000000000000000000000000000000160000001900000010",
            INIT_7F => X"000000040000000b000000040000001000000000000000000000000000000000",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_41 => X"000000000000000000000000000000000000005d000000000000000000000000",
            INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0000002b00000000000000000000000400000000000000000000000000000000",
            INIT_45 => X"000000370000003a00000030000000290000002f0000002c0000002d00000030",
            INIT_46 => X"000000350000002c000000310000002a0000002700000026000000250000002a",
            INIT_47 => X"0000000c0000003b000000290000001f000000000000002d0000002e00000030",
            INIT_48 => X"0000002e000000290000001c000000250000001f0000000e0000000000000000",
            INIT_49 => X"000000000000000000000000000000230000002d0000003b0000003200000035",
            INIT_4A => X"000000320000002300000000000000000000001a000000040000000000000000",
            INIT_4B => X"0000000000000000000000000000000000000000000000000000001900000025",
            INIT_4C => X"0000000000000018000000120000000000000000000000110000000000000006",
            INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_4E => X"0000000300000003000000380000000b00000000000000000000000500000000",
            INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_50 => X"0000000000000000000000070000003a00000007000000000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_53 => X"000000000000000d000000000000000000000000000000000000000000000000",
            INIT_54 => X"0000000000000000000000050000001a00000000000000000000000000000000",
            INIT_55 => X"000000000000000000000008000000000000000400000018000000030000000f",
            INIT_56 => X"0000000800000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"0000000000000000000000000000001f00000000000000000000000a00000011",
            INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_61 => X"0000000b0000000c0000000c000000040000000800000008000000110000000a",
            INIT_62 => X"00000000000000060000000800000011000000230000002d000000210000000b",
            INIT_63 => X"00000042000000230000000500000000000000080000000c0000000a0000000a",
            INIT_64 => X"00000033000000350000000a000000170000000a000000000000000000000000",
            INIT_65 => X"0000000000000000000000090000001600000037000000050000000800000005",
            INIT_66 => X"0000000500000000000000000000000c0000000e000000000000000000000000",
            INIT_67 => X"000000040000001a000000000000000200000000000000000000000800000008",
            INIT_68 => X"0000000e0000000200000000000000010000000e000000000000000600000010",
            INIT_69 => X"0000000000000000000000000000000700000000000000090000000000000000",
            INIT_6A => X"0000003e0000000300000006000000000000000f000000000000000000000000",
            INIT_6B => X"0000000700000015000000140000000000000000000000000000000000000028",
            INIT_6C => X"0000000000000012000000180000001c00000000000000000000000000000000",
            INIT_6D => X"0000000000000000000000000000001100000000000000110000000000000031",
            INIT_6E => X"0000003500000035000000020000000000000000000000000000000000000000",
            INIT_6F => X"000000000000000e000000050000000000000009000000000000000e00000021",
            INIT_70 => X"0000000000000000000000260000000000000000000000000000000100000000",
            INIT_71 => X"0000000c00000000000000000000000000000030000000260000000000000000",
            INIT_72 => X"0000000000000000000000000000000900000023000000000000000400000000",
            INIT_73 => X"000000000000000300000018000000000000000000000011000000360000004e",
            INIT_74 => X"0000000000000037000000510000001e00000000000000000000000000000007",
            INIT_75 => X"0000000c00000021000000350000000a00000005000000000000000000000000",
            INIT_76 => X"0000000000000000000000030000000500000004000000280000005600000000",
            INIT_77 => X"0000001800000000000000160000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000000000000000000000000000000000000000000000000003f",
            INIT_79 => X"0000000b0000004f000000180000000000000000000000000000000000000000",
            INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"0000000300000000000000220000000000000000000000000000001400000000",
            INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000012",
            INIT_7D => X"0000000800000015000000090000000e0000000a000000130000000d00000000",
            INIT_7E => X"0000000200000006000000130000001b000000220000001c0000000c00000006",
            INIT_7F => X"0000001a0000000f000000360000000f0000000d000000090000000b00000008",

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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000000000000000000000000000e0000000000000000",
            INIT_41 => X"00000000000000520000000000000000000000000000000f0000001c00000000",
            INIT_42 => X"0000000000000000000000000000000400000000000000130000001200000000",
            INIT_43 => X"00000000000000000000002d000000000000000500000000000000170000000c",
            INIT_44 => X"000000000000001100000000000000160000000000000000000000030000001d",
            INIT_45 => X"0000001b00000000000000110000000000000008000000000000000000000012",
            INIT_46 => X"00000003000000000000003b0000000000000019000000090000000000000000",
            INIT_47 => X"0000000000000012000000120000000000000000000000050000000000000010",
            INIT_48 => X"0000002d000000000000000000000058000000000000000d0000003300000000",
            INIT_49 => X"0000001d0000002c0000003e0000003300000028000000020000000000000004",
            INIT_4A => X"0000004e0000004e0000002e000000000000003b000000000000003600000070",
            INIT_4B => X"0000005a000000530000005a00000058000000560000004f0000004900000044",
            INIT_4C => X"0000004c0000004a00000048000000490000000000000008000000480000006f",
            INIT_4D => X"000000600000005a0000005e0000005d000000570000005b0000005b00000054",
            INIT_4E => X"00000057000000530000004d000000450000005000000031000000000000008a",
            INIT_4F => X"0000006700000067000000500000005e00000074000000610000006400000061",
            INIT_50 => X"00000052000000520000005200000049000000550000005f0000004900000041",
            INIT_51 => X"0000002e000000330000002e0000002f00000045000000530000006b0000005e",
            INIT_52 => X"000000270000001c000000230000002b0000002f000000310000002f0000002f",
            INIT_53 => X"000000340000002d000000350000003200000032000000240000002700000026",
            INIT_54 => X"0000002400000015000000130000002100000004000000250000001300000055",
            INIT_55 => X"0000002c000000380000002e000000340000003b0000001a000000280000002d",
            INIT_56 => X"00000027000000040000000b0000000a0000004f0000001a0000000000000000",
            INIT_57 => X"0000001a0000002300000025000000360000002c000000790000000000000039",
            INIT_58 => X"000000530000000e000000000000001200000000000000530000001800000008",
            INIT_59 => X"00000000000000000000001a0000002c000000490000000a0000006300000000",
            INIT_5A => X"0000000000000039000000000000001e000000000000000b0000005f00000008",
            INIT_5B => X"00000000000000000000000000000000000000490000002e0000000000000038",
            INIT_5C => X"00000015000000000000000d00000004000000230000000000000000000000bf",
            INIT_5D => X"000000a400000000000000000000000a0000005000000061000000000000000c",
            INIT_5E => X"0000000100000000000000000000000d000000270000001e0000000000000000",
            INIT_5F => X"000000000000007c000000000000000800000000000000680000004500000000",
            INIT_60 => X"0000003c00000000000000170000000000000012000000220000002a00000000",
            INIT_61 => X"000000000000002200000006000000310000001c000000000000000300000011",
            INIT_62 => X"000000000000004a00000000000000180000000a000000440000003a00000026",
            INIT_63 => X"0000004800000005000000000000000a000000170000000e0000002a00000019",
            INIT_64 => X"0000000b00000000000000a30000000000000011000000510000001c00000056",
            INIT_65 => X"0000001e0000002d000000280000001400000000000000000000000000000056",
            INIT_66 => X"0000000000000000000000000000009800000000000000280000004000000000",
            INIT_67 => X"00000000000000110000000e0000001000000010000000090000000000000000",
            INIT_68 => X"0000000a0000000500000009000000000000001f000000480000004100000003",
            INIT_69 => X"0000000000000017000000080000001000000017000000140000001000000008",
            INIT_6A => X"0000000d00000009000000000000001100000000000000000000007400000010",
            INIT_6B => X"0000000d00000000000000000000002600000000000000090000000d00000010",
            INIT_6C => X"0000001000000018000000090000000c00000016000000000000000000000019",
            INIT_6D => X"0000000000000000000000000000000000000003000000310000000b00000000",
            INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"0000000000000001000000000000000000000000000000000000000400000000",
            INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"0000000000000000000000000000000000000012000000040000000000000000",
            INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000005",
            INIT_75 => X"0000000000000008000000380000000000000000000000270000000100000000",
            INIT_76 => X"0000000000000004000000000000000000000000000000000000000000000000",
            INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"000000000000000f000000000000000000000000000000000000001400000000",
            INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_7F => X"0000000000000000000000000000000000000012000000000000000000000000",

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


    MEM_GOLD_LAYER0_ENTITY3 : if BRAM_NAME = "gold_layer0_entity3" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000000000000000000140000000400000000000000000000001300000015",
            INIT_41 => X"0000001a0000001200000000000000000000000c000000000000000000000000",
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
    end generate MEM_GOLD_LAYER0_ENTITY3;


    MEM_GOLD_LAYER1_ENTITY0 : if BRAM_NAME = "gold_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000101000000bc00000051000001040000004000000012000000a0",
            INIT_01 => X"00000000000000ba00000000000000000000001c000000000000004700000000",
            INIT_02 => X"0000000000000092000000000000000000000031000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000200000000000000000000010400000000000000000000000000000000",
            INIT_05 => X"0000003800000000000000a80000000000000000000000000000000000000000",
            INIT_06 => X"0000000000000000000000020000000000000000000000000000000000000000",
            INIT_07 => X"0000000000000037000000530000000000000000000000000000000000000000",
            INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"00000000000000000000000000000000000000000000000f0000000000000000",
            INIT_0A => X"000000b7000000820000011300000037000001340000017a000000a800000000",
            INIT_0B => X"000000620000014d00000000000000790000002d000000000000000000000035",
            INIT_0C => X"00000035000000100000007e0000000000000000000000000000000000000000",
            INIT_0D => X"00000000000000000000000000000000000000d1000000000000006a00000000",
            INIT_0E => X"00000081000000d20000007700000033000000a000000000000000b0000000b0",
            INIT_0F => X"000000650000000000000057000000a9000000080000000000000000000000c6",
            INIT_10 => X"000000000000007a00000058000000000000003c000000a100000000000000c8",
            INIT_11 => X"0000000000000000000000000000005c00000000000000060000000000000000",
            INIT_12 => X"000000ff00000000000000480000007700000000000000e60000002c00000000",
            INIT_13 => X"0000000000000000000000360000000000000019000000000000000000000024",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"00000000000000aa0000006c000000b50000004d0000005d0000000000000000",
            INIT_17 => X"000000300000001b000000000000003f00000000000000000000000000000000",
            INIT_18 => X"0000001200000000000000b30000011900000000000000000000000000000015",
            INIT_19 => X"000000000000000000000026000000b6000000bd00000000000000aa00000000",
            INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000028",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000001700000068000000d00000014f0000014400000124000000c000000000",
            INIT_1D => X"0000000000000016000000570000000900000000000000000000004000000000",
            INIT_1E => X"0000000000000000000000000000000000000000000000000000005d000000cf",
            INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000b800000001000000a80000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000063000000150000009000000096000000280000001e",
            INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"0000009e0000011b000000000000000000000000000000000000000000000000",
            INIT_24 => X"00000079000000000000000000000000000000000000006c0000000000000000",
            INIT_25 => X"00000000000000110000001200000067000000ff0000000400000043000000f8",
            INIT_26 => X"0000004e00000086000000000000004100000069000000000000001c00000000",
            INIT_27 => X"0000002600000017000000510000006c00000091000000000000000000000031",
            INIT_28 => X"000000000000007800000000000000e0000000fd000000b00000000000000046",
            INIT_29 => X"000000ab00000059000000000000000000000000000000000000000000000010",
            INIT_2A => X"000000530000003b000000db0000008f0000006a000000ef000000fb000000c1",
            INIT_2B => X"00000062000000ab000000460000007b00000000000000000000001000000014",
            INIT_2C => X"00000051000001230000007a0000008c0000006d000000a20000013c0000005a",
            INIT_2D => X"000000000000003c00000000000000000000000000000000000000a100000097",
            INIT_2E => X"0000010400000000000000000000000000000000000000000000000000000007",
            INIT_2F => X"0000012f000000a20000004f0000001e00000000000000000000000000000000",
            INIT_30 => X"000000a100000083000001610000013a0000015b00000000000000000000008c",
            INIT_31 => X"000000dc00000070000000880000000000000000000000120000013800000072",
            INIT_32 => X"000000000000000000000000000000ae000000cd0000013e000000ad000000e0",
            INIT_33 => X"0000001f000000c8000000000000000000000000000000000000000000000000",
            INIT_34 => X"0000001e00000000000000260000001b0000004e0000004b00000046000000bf",
            INIT_35 => X"000000a5000000aa000000060000001e000000360000009f0000013b00000073",
            INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"0000010100000076000000430000006a00000000000000000000000000000000",
            INIT_3B => X"0000000000000000000000000000000000000000000000000000007c00000066",
            INIT_3C => X"0000005900000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"0000003d00000000000000000000000000000000000000310000000000000069",
            INIT_3E => X"0000000000000000000000ed0000007200000031000000100000000000000000",
            INIT_3F => X"0000012c00000070000000000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000000003200000000000000000000000000000000000000d00000017f",
            INIT_41 => X"00000076000000440000006d000000de00000021000000390000000800000067",
            INIT_42 => X"0000000000000000000000000000000000000000000000eb0000014100000084",
            INIT_43 => X"0000003f0000006e00000078000000b200000000000000000000000000000000",
            INIT_44 => X"0000001c0000000000000000000000000000000000000000000000920000007f",
            INIT_45 => X"00000000000000000000014800000087000000340000001e0000000000000191",
            INIT_46 => X"0000004a00000058000000000000000000000000000000000000000000000000",
            INIT_47 => X"000000c5000000d7000000f30000000000000000000000000000000000000046",
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
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000001b0000003600000039000000390000007400000000",
            INIT_41 => X"00000092000000500000004d000000020000001d0000004b0000000000000013",
            INIT_42 => X"00000000000000000000009e0000002400000000000000000000000000000050",
            INIT_43 => X"00000000000000000000001c0000004b00000032000000150000001200000000",
            INIT_44 => X"000000000000004e000000000000000000000000000000000000000000000000",
            INIT_45 => X"000000000000000000000025000000000000002c000000370000000000000000",
            INIT_46 => X"0000001300000011000000000000003f00000000000000640000000000000000",
            INIT_47 => X"000000020000005f000000000000000000000000000000000000000000000000",
            INIT_48 => X"0000000400000053000000040000000b00000014000000000000000700000000",
            INIT_49 => X"00000000000000000000000000000000000000170000002e0000003200000018",
            INIT_4A => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_4B => X"000000000000000000000000000000000000000000000000000000000000000d",
            INIT_4C => X"0000000e00000000000000160000000000000000000000000000000d00000000",
            INIT_4D => X"000000210000000100000000000000000000000600000000000000000000001e",
            INIT_4E => X"00000000000000000000001b0000001200000000000000000000000000000000",
            INIT_4F => X"0000000000000000000000000000002e00000041000000380000003900000000",
            INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000000000002200000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"000000000000001a00000000000000030000007c000000170000000000000023",
            INIT_54 => X"0000000000000017000000180000000600000015000000000000001a00000000",
            INIT_55 => X"00000092000000810000004000000035000000240000001e0000000c00000000",
            INIT_56 => X"0000000000000000000000000000003300000000000000190000006c00000027",
            INIT_57 => X"0000000000000000000000700000000000000000000000000000000000000000",
            INIT_58 => X"000000380000004f0000001c0000000000000000000000000000000500000000",
            INIT_59 => X"0000000000000000000000000000000000000000000000360000000000000038",
            INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"0000000000000000000000000000000000000000000000000000001300000000",
            INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"0000000000000000000000660000002600000065000000420000001c00000000",
            INIT_5E => X"0000004d00000000000000190000007700000056000000590000004e00000062",
            INIT_5F => X"00000025000000280000000c00000074000000b7000000470000003500000060",
            INIT_60 => X"000000840000006e000000500000003900000078000000850000003900000018",
            INIT_61 => X"000000bb000000ab0000009c00000092000000a90000008b0000009a0000008a",
            INIT_62 => X"0000005000000067000000a9000000b5000000a60000000a0000000000000000",
            INIT_63 => X"000000110000002d0000001c00000000000000000000004d0000009700000046",
            INIT_64 => X"0000001d000000680000001d000000000000002100000000000000000000001c",
            INIT_65 => X"0000002f0000002b000000000000000000000000000000000000000000000000",
            INIT_66 => X"0000005600000067000000d100000024000000400000006a0000003400000037",
            INIT_67 => X"0000000000000000000000000000000000000061000000170000004200000073",
            INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6A => X"0000000000000000000000000000000000000000000000000000000f00000000",
            INIT_6B => X"0000000600000000000000000000000000000000000000000000000000000000",
            INIT_6C => X"0000009b000000b3000000000000006800000000000000210000000000000000",
            INIT_6D => X"000000a900000098000000a00000007d000000c10000007c0000009c0000007d",
            INIT_6E => X"000000000000000000000000000000000000001c00000006000000b0000000c2",
            INIT_6F => X"0000000000000000000000000000000000000000000000110000000000000000",
            INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_74 => X"00000050000000510000004b0000006100000062000000000000000000000000",
            INIT_75 => X"0000005a0000005e0000005b0000005300000088000000610000004100000049",
            INIT_76 => X"0000003c000000730000005f00000076000000600000005a000000680000002a",
            INIT_77 => X"0000005c0000005d00000041000000460000007b0000004e0000006d00000076",
            INIT_78 => X"0000002e0000002300000015000000100000004f0000003b0000004600000097",
            INIT_79 => X"000000000000000d00000000000000000000000000000000000000000000002f",
            INIT_7A => X"000000570000007b000000730000006300000000000000000000000000000000",
            INIT_7B => X"0000000500000040000000430000007000000045000000480000004b00000056",
            INIT_7C => X"00000024000000000000001e00000022000000320000002b0000004400000012",
            INIT_7D => X"00000021000000210000000000000009000000000000005d000000070000003c",
            INIT_7E => X"000000000000002b000000170000001900000015000000000000000600000000",
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
    end generate MEM_GOLD_LAYER2_ENTITY0;


    MEM_GOLD_LAYER2_ENTITY1 : if BRAM_NAME = "gold_layer2_entity1" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000008000000000000001e000000450000002f000000120000001700000003",
            INIT_41 => X"0000003a00000027000000390000004200000060000000000000000200000015",
            INIT_42 => X"000000880000007e0000007e000000480000000700000069000000260000003a",
            INIT_43 => X"000000ab000000a90000009e000000960000009200000066000000bb00000096",
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
        WRITE_WIDTH => 36, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        READ_WIDTH => 36, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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
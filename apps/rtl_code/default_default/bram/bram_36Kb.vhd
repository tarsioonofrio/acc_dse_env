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
        ADDR_BRAM      : integer := 10;
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
        DI   : in std_logic_vector((10**2)-1 downto 0);
        ADDR : in std_logic_vector(ADDR_BRAM-1 downto 0);
        DO   : out std_logic_vector((10**2)-1 downto 0)
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000186900000112a0000008a400000001d000000894ffffffa570000004feffffff05b",
            INIT_01 => X"000001da3fffffcfa0000000a4b00000188d0000013d2ffffffebafffffdeecffffffcf0",
            INIT_02 => X"000000004000000000fffffffe5fffffffcaffffffff700000000a00000002200000001f",
            INIT_03 => X"000000018fffffffddfffffffff000000038fffffffd300000002e00000002c000000003",
            INIT_04 => X"fffffffedfffffffc3fffffffccfffffffc9000000018000000020000000021000000035",
            INIT_05 => X"fffffffc0fffffffd300000001f00000001bfffffffe600000000bfffffffdafffffffc6",
            INIT_06 => X"00000000f000000025000000018000000017ffffffff5000000010fffffffe2fffffffc6",
            INIT_07 => X"ffffffff3000000032000000007000000007fffffffd3ffffffff6fffffffd8fffffffd8",
            INIT_08 => X"000000013fffffffcf00000000c000000006fffffffd800000003300000001d000000026",
            INIT_09 => X"fffffffeb00000000bffffffffbfffffffff000000024000000005000000020ffffffff3",
            INIT_0A => X"fffffffdb00000000efffffffecffffffff4fffffffdcfffffffc1ffffffffafffffffdf",
            INIT_0B => X"00000001800000002d000000037000000006fffffffe1000000027000000009000000032",
            INIT_0C => X"000000016fffffffee00000002d000000021fffffffe6000000002000000012000000024",
            INIT_0D => X"fffffffd2ffffffffc000000037fffffffc2ffffffffbffffffff8fffffffc6fffffffe7",
            INIT_0E => X"00000001000000003400000000000000001f000000040fffffffc200000001efffffffe6",
            INIT_0F => X"ffffffff6fffffffe6fffffffc6fffffffe5fffffffcc00000001e000000052ffffffff5",
            INIT_10 => X"ffffffffcfffffffaffffffffbeffffffffa00000002b00000004dfffffffeb00000002b",
            INIT_11 => X"fffffffc2fffffffe100000003900000004400000002200000002bffffffffdfffffffcd",
            INIT_12 => X"00000002cffffffff9ffffffffa00000003300000000b000000039000000001fffffffe1",
            INIT_13 => X"ffffffffa00000002f00000004500000003b00000002f00000001f000000026000000028",
            INIT_14 => X"ffffffff8000000021fffffffe4000000018fffffffe6ffffffff0fffffffef00000001b",
            INIT_15 => X"ffffffff4fffffffc6fffffffcafffffffe5000000004fffffffd2fffffffd6fffffffd5",
            INIT_16 => X"00000003300000003000000000400000001c000000000000000019fffffffd6fffffffe9",
            INIT_17 => X"fffffffc1fffffffb3000000005ffffffffcfffffffbe00000004400000000dfffffffd6",
            INIT_18 => X"fffffffbc00000001cfffffffe4000000009ffffffff5fffffffd0ffffffff0000000022",
            INIT_19 => X"00000001100000004000000002600000000e00000000000000000f000000025000000010",
            INIT_1A => X"fffffffcdffffffff000000000000000003400000001ffffffffea00000002d000000033",
            INIT_1B => X"000000021fffffffd3fffffffbbfffffffc4fffffffc9000000009ffffffff5ffffffff6",
            INIT_1C => X"000000028fffffffc6ffffffff2000000000fffffffbafffffffc700000000a00000001c",
            INIT_1D => X"fffffffcbffffffff700000003300000003c000000034fffffffff00000002d000000015",
            INIT_1E => X"fffffffd1000000017ffffffff7ffffffff8fffffffde00000000300000002ffffffffc7",
            INIT_1F => X"00000001c00000003900000000bffffffffc00000000affffffff8fffffffc5fffffffc9",
            INIT_20 => X"ffffffff8ffffffffaffffffffb000000002000000003ffffffff9fffffffd5ffffffff7",
            INIT_21 => X"00000001dfffffffdf00000001e00000002bffffffff0fffffffc5fffffffc1000000016",
            INIT_22 => X"00000002800000003b000000020ffffffff300000002d00000003100000001700000001b",
            INIT_23 => X"00000003d00000001400000002700000002cffffffff7000000006000000029fffffffe9",
            INIT_24 => X"00000001dfffffffc8fffffffd8ffffffff1fffffffd2ffffffff5000000025000000025",
            INIT_25 => X"fffffffaefffffffbf000000021000000012fffffffe400000001e000000031000000010",
            INIT_26 => X"000000010000000035fffffffdafffffffdcffffffff300000004500000001dfffffffe6",
            INIT_27 => X"fffffffd5fffffffe6ffffffff7fffffffd000000001cfffffffddfffffffedfffffffcb",
            INIT_28 => X"ffffffff9fffffffe2fffffffe3000000026ffffffffdfffffffd9fffffffe0fffffffec",
            INIT_29 => X"00000002cfffffffea00000003300000001600000002f00000001f000000001000000015",
            INIT_2A => X"fffffffe000000003efffffffdbfffffffc5000000033ffffffffbfffffffe5000000033",
            INIT_2B => X"000000026000000005fffffffd7ffffffff8000000028fffffffd700000001bffffffff9",
            INIT_2C => X"ffffffffefffffffd800000003000000003affffffff300000004b00000000a000000003",
            INIT_2D => X"fffffffddffffffffafffffffebfffffffd7fffffffff000000029fffffffc7ffffffff9",
            INIT_2E => X"ffffffffe00000004dffffffff9000000034fffffffe4fffffffdffffffffd9fffffffc9",
            INIT_2F => X"00000000300000003d000000013000000019fffffffecfffffffbfffffffffffffffffd6",
            INIT_30 => X"000000036fffffffff000000007fffffffe9fffffffbcffffffff2fffffffdb00000001b",
            INIT_31 => X"00000000a00000001200000002400000000f000000038ffffffffb00000003efffffffe8",
            INIT_32 => X"000000029000000015ffffffffa000000010fffffffe400000000a00000002d000000023",
            INIT_33 => X"000000019000000009fffffffe0fffffffdffffffffd1ffffffffdffffffff7fffffffd1",
            INIT_34 => X"fffffffdd00000000dffffffff5fffffffeb00000001affffffff7000000010fffffffda",
            INIT_35 => X"000000031000000002fffffffd2fffffffe4000000013fffffffeffffffffe1000000018",
            INIT_36 => X"fffffffdbffffffff500000002b000000042ffffffff0000000026000000046000000014",
            INIT_37 => X"fffffffccffffffff2000000023fffffffdafffffffe4ffffffff7ffffffff8fffffffcf",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffa16000001017000004a57ffffff88dffffffb98ffffff23effffff546fffffd97f",
            INIT_01 => X"000001a10ffffff2befffffda53000000277000004171000002185000000a32000000ea5",
            INIT_02 => X"fffffed1b000000aed000002f1d000001305000000d1fffffff3ef0000044f20000041b4",
            INIT_03 => X"000002a6effffff25e000001b8cffffffa92ffffff844fffffd00f000002f06ffffffb1b",
            INIT_04 => X"0000005d9fffffd5f5000001e3d0000022b7000001729000002657000004eda000001aee",
            INIT_05 => X"ffffff0af000001eefffffff538fffffd2aa00000091dfffffe848000001361fffffed40",
            INIT_06 => X"ffffff967ffffffec7000002c6e000001756ffffffaef00000227f000002c7a000000be8",
            INIT_07 => X"000002be4000001e3cfffffe10000000380e000002571000002da40000018cc000000ac3",
            INIT_08 => X"fffffffff000000019000000000fffffffeb000000006ffffffff400000000afffffffed",
            INIT_09 => X"fffffffe600000001d00000000bffffffffb00000001fffffffff0ffffffff3000000010",
            INIT_0A => X"00000003400000008f00000002800000002d00000002a000000027fffffffe0ffffffffa",
            INIT_0B => X"00000000bffffffff6ffffffffe000000038000000014000000023000000064000000028",
            INIT_0C => X"00000005400000004300000003f000000011fffffffd6fffffffd6000000006ffffffff9",
            INIT_0D => X"fffffffe600000001a00000000000000000700000006000000003a00000004500000008d",
            INIT_0E => X"000000000ffffffffe00000001100000001f00000002400000000000000000f000000019",
            INIT_0F => X"000000000ffffffffefffffffecfffffffd8000000021ffffffffcfffffffd300000001b",
            INIT_10 => X"ffffffff2fffffffdfffffffff7fffffffd8ffffffff0fffffffddfffffffecffffffffe",
            INIT_11 => X"fffffffee00000000200000003b000000012ffffffffd000000018000000003000000020",
            INIT_12 => X"ffffffff8000000004ffffffffeffffffffc00000000900000001affffffff4ffffffff4",
            INIT_13 => X"ffffffffc00000000dffffffffc000000011000000026fffffffe5000000005ffffffffa",
            INIT_14 => X"ffffffffa000000007fffffffdcffffffffb000000008fffffffeafffffffd8fffffffe8",
            INIT_15 => X"00000000700000000200000001100000000f000000003000000009fffffffc8fffffffdc",
            INIT_16 => X"00000002500000000f00000001000000002200000000e00000000bffffffffdfffffffef",
            INIT_17 => X"ffffffff8000000000000000004ffffffffa000000000000000015ffffffff7fffffffe3",
            INIT_18 => X"00000001000000000a000000024000000002000000010000000015000000010fffffffcb",
            INIT_19 => X"ffffffff1fffffffe9000000001ffffffff0fffffffcfffffffff7fffffffd9000000003",
            INIT_1A => X"ffffffff0000000001000000037000000011ffffffff500000000e000000009000000011",
            INIT_1B => X"fffffffe500000000cffffffff3ffffffffd000000013000000020000000007fffffffdf",
            INIT_1C => X"fffffffd7fffffffb7ffffffffffffffffc6fffffffd2fffffffbd000000000fffffffe7",
            INIT_1D => X"000000001ffffffff4ffffffff9000000008fffffffeefffffffdffffffff91fffffffd4",
            INIT_1E => X"ffffffff4fffffffd8ffffffff7fffffffe5000000012000000000000000022ffffffffa",
            INIT_1F => X"fffffffe4ffffffff6000000009ffffffffcffffffff0000000002ffffffff2fffffffde",
            INIT_20 => X"000000005ffffffff8000000018000000001000000010ffffffff6fffffffff000000011",
            INIT_21 => X"000000001fffffffeffffffffeb000000002000000002ffffffff0ffffffff0ffffffff5",
            INIT_22 => X"00000001afffffffe3ffffffff800000002c00000000700000000c000000002ffffffff7",
            INIT_23 => X"fffffffe6000000013fffffffc700000000600000000dfffffffed000000010000000007",
            INIT_24 => X"ffffffff6000000011000000012ffffffffb00000003000000000e00000000dfffffff98",
            INIT_25 => X"00000001affffffffe00000001d000000022fffffffee000000003000000004000000008",
            INIT_26 => X"000000000fffffffe8000000016ffffffffc00000000afffffffdcfffffffe3fffffffff",
            INIT_27 => X"000000010000000002000000019000000019000000021fffffffee00000000800000001b",
            INIT_28 => X"000000014fffffffe000000001cfffffffdbfffffffedfffffffd5000000012000000015",
            INIT_29 => X"000000004fffffffebffffffffb00000000efffffffe7ffffffffaffffffffcffffffff5",
            INIT_2A => X"fffffffff000000019000000014fffffffff000000016000000003fffffffe9000000002",
            INIT_2B => X"fffffffe8fffffffccffffffffd00000000400000001d000000006000000010fffffffeb",
            INIT_2C => X"000000000000000023000000002ffffffff000000001e000000012000000001000000000",
            INIT_2D => X"000000025000000005000000000fffffffd7fffffffdefffffffc6fffffffddffffffffd",
            INIT_2E => X"fffffffeb000000026000000024fffffffcefffffffe200000001100000002c00000006e",
            INIT_2F => X"fffffff9b000000009fffffffafffffffff6ffffffff600000004300000002a000000069",
            INIT_30 => X"000000014000000007ffffffff1ffffffff700000003b00000001cffffffff3000000000",
            INIT_31 => X"fffffffe5000000007ffffffff100000002200000004600000003f00000003e000000039",
            INIT_32 => X"000000021000000002fffffffedfffffffbefffffffbbffffffffe000000051ffffffff5",
            INIT_33 => X"000000010fffffffeafffffffb4fffffffb2fffffffddffffffffdfffffffea000000033",
            INIT_34 => X"00000001100000000c000000019fffffffbffffffffc6fffffffd0000000003000000002",
            INIT_35 => X"000000020000000000000000014000000012ffffffff8ffffffff2ffffffffefffffffec",
            INIT_36 => X"000000018000000008000000022000000013000000004000000022000000034000000014",
            INIT_37 => X"000000020000000029000000012ffffffff2000000009fffffffedfffffffd7ffffffff5",
            INIT_38 => X"000000036000000054fffffffe2000000003ffffffffffffffffdc00000002100000001f",
            INIT_39 => X"000000006fffffffdaffffffffc000000011ffffffffafffffffe1000000023fffffffda",
            INIT_3A => X"00000000e000000043000000039fffffffc1fffffffcffffffffbafffffffd0000000003",
            INIT_3B => X"fffffffeffffffffdc000000038000000025000000012fffffffe4fffffffddfffffffd9",
            INIT_3C => X"000000019fffffffc6fffffffcdfffffffcc00000001800000003e000000025fffffffd5",
            INIT_3D => X"fffffff8efffffff97fffffffd9ffffffffe00000000400000000500000001800000001f",
            INIT_3E => X"00000002a000000005ffffffff400000000cfffffffef000000042000000031000000034",
            INIT_3F => X"fffffffe200000000500000001e00000002300000000d000000033000000030000000017",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000001000000004d000000007fffffffe7000000023000000004000000005ffffffffd",
            INIT_41 => X"000000022ffffffff9ffffffffc000000004000000005ffffffff700000001dffffffffa",
            INIT_42 => X"00000001d00000000300000001affffffffefffffffe5fffffffe0ffffffff2ffffffffd",
            INIT_43 => X"00000001000000000400000001bfffffffe0ffffffff700000000000000000d000000008",
            INIT_44 => X"ffffffffe000000007fffffffe3fffffffd2fffffffe600000000000000001f000000009",
            INIT_45 => X"fffffffdafffffffddffffffff0fffffffd400000000700000000dffffffff7ffffffff0",
            INIT_46 => X"fffffffd8fffffffdcfffffffe7000000023000000049000000031000000000ffffffffe",
            INIT_47 => X"fffffffd300000004dfffffffc7fffffffad000000028ffffffff1fffffffb6fffffffde",
            INIT_48 => X"000000014fffffffeffffffffcefffffffe0ffffffff6fffffffdefffffffeafffffffcc",
            INIT_49 => X"00000002000000002a000000013000000016000000038000000030000000031000000024",
            INIT_4A => X"000000024fffffffceffffffff6000000015fffffffeefffffffc3ffffffff3000000011",
            INIT_4B => X"ffffffff1fffffffbb000000004ffffffffbfffffffeefffffffbb000000000000000014",
            INIT_4C => X"000000005000000000fffffffff00000003b00000002600000000e000000001fffffffed",
            INIT_4D => X"ffffffff3000000003fffffffd9fffffffdaffffffffafffffffc200000001afffffffb7",
            INIT_4E => X"000000032000000018fffffffe9fffffffe1fffffffeefffffffe4000000008fffffffe4",
            INIT_4F => X"fffffffddfffffffe6fffffffe6ffffffffb000000013fffffffefffffffff7000000013",
            INIT_50 => X"000000000ffffffff9000000007fffffffeeffffffff2000000014000000022000000011",
            INIT_51 => X"00000001cfffffffb3fffffffdfffffffff5000000008ffffffff6000000002ffffffff8",
            INIT_52 => X"fffffffeffffffffd9fffffffc7ffffffffdfffffffeefffffffe9fffffffe5000000019",
            INIT_53 => X"00000001f00000005900000001d00000001f00000000d00000000b00000000fffffffffc",
            INIT_54 => X"fffffffeefffffffd9fffffffd3fffffffc500000001900000003500000000e00000003c",
            INIT_55 => X"00000000d00000000affffffffc000000025ffffffff3000000006000000001fffffffc4",
            INIT_56 => X"fffffffffffffffffd00000001e00000000cffffffff400000000a000000026000000006",
            INIT_57 => X"000000035fffffffeafffffffdcfffffffdd000000004000000006fffffffd9ffffffff5",
            INIT_58 => X"fffffffefffffffff100000000ffffffffcafffffffe400000000000000001800000001a",
            INIT_59 => X"000000010000000037ffffffffb00000000000000000dfffffffd2000000022fffffffe7",
            INIT_5A => X"fffffffcf00000002e000000019fffffffd6000000038000000031ffffffffffffffffe0",
            INIT_5B => X"fffffffe300000001e00000001fffffffffbffffffffc00000001c000000028fffffffe2",
            INIT_5C => X"000000026ffffffffc00000000fffffffff8000000019fffffffe3ffffffffcffffffffd",
            INIT_5D => X"fffffffea000000013fffffffe8ffffffff300000002c000000024fffffffe9000000011",
            INIT_5E => X"00000003800000000700000001d00000001600000000cfffffffe700000000f000000002",
            INIT_5F => X"ffffffffd00000000f000000002ffffffffc00000001bfffffffd8fffffffd8fffffffd6",
            INIT_60 => X"fffffffd2000000005ffffffff4fffffffcefffffffeaffffffffe000000008fffffffd4",
            INIT_61 => X"00000002cfffffffcefffffffc8000000038000000004fffffffcf000000036fffffffec",
            INIT_62 => X"000000007000000031fffffffcffffffffd4000000023ffffffff6ffffffff000000002d",
            INIT_63 => X"fffffffc6000000028000000008fffffffe500000003c00000000100000000affffffff0",
            INIT_64 => X"00000001f00000000000000001ffffffffddfffffffc9000000006000000024fffffffe5",
            INIT_65 => X"000000011000000018fffffffe6fffffffff000000001ffffffff8fffffffe6ffffffff4",
            INIT_66 => X"00000000ffffffffe9fffffffe600000001f000000009ffffffffbffffffff6000000000",
            INIT_67 => X"fffffffe8ffffffffe000000024ffffffffa00000000400000000b00000000d000000010",
            INIT_68 => X"00000001dffffffff3000000002000000000ffffffff2000000007ffffffff6000000023",
            INIT_69 => X"00000000000000001ffffffffccfffffffc9000000022ffffffffafffffffd8000000031",
            INIT_6A => X"fffffffcb000000003ffffffff8fffffffee000000014000000016fffffffb7ffffffff3",
            INIT_6B => X"00000003600000002600000002200000002700000001b00000000d000000032fffffffeb",
            INIT_6C => X"000000037fffffffb7fffffffe8ffffffffdfffffffe0fffffffeb000000003000000030",
            INIT_6D => X"000000023fffffffd9fffffffc3000000023ffffffffffffffffdcfffffffe300000001d",
            INIT_6E => X"ffffffffcfffffffe900000002d00000002efffffffe4000000020fffffffedfffffffbe",
            INIT_6F => X"00000000f00000001f00000001700000000200000002cfffffffe8fffffffe5000000030",
            INIT_70 => X"00000001c000000013ffffffff800000002c00000004400000002500000004900000003e",
            INIT_71 => X"ffffffffc000000005ffffffffcfffffffe3fffffffd800000003500000000ffffffffdc",
            INIT_72 => X"fffffffeb00000000600000001b00000001200000001a000000013000000030fffffffca",
            INIT_73 => X"00000003e000000003fffffffc000000000effffffffffffffffbf000000029ffffffff4",
            INIT_74 => X"fffffffee00000000cffffffffbffffffffd000000003000000000000000000ffffffffd",
            INIT_75 => X"ffffffff6ffffffff3ffffffff8fffffffea00000000afffffffe4ffffffff0000000008",
            INIT_76 => X"ffffffff6ffffffff4fffffffe700000000bfffffffed000000006ffffffff3fffffffea",
            INIT_77 => X"fffffffe8ffffffff0ffffffff5000000008ffffffff000000000000000000effffffff6",
            INIT_78 => X"000000000000000005000000000fffffffecffffffffd000000005fffffffeb00000000d",
            INIT_79 => X"ffffffff4000000007ffffffff1fffffffedfffffffee000000003ffffffff6ffffffffa",
            INIT_7A => X"ffffffff4ffffffffbffffffff6000000006000000011000000002ffffffffb000000000",
            INIT_7B => X"00000000dffffffffdffffffffd000000006ffffffff3ffffffff7ffffffff0ffffffff3",
            INIT_7C => X"000000000fffffffddfffffffeb000000000fffffffee00000000700000000500000000a",
            INIT_7D => X"fffffffecffffffff9000000007000000004000000009000000002fffffffe700000000c",
            INIT_7E => X"ffffffff9ffffffff7000000002000000002fffffffff000000008fffffffedffffffffc",
            INIT_7F => X"000000010000000000000000003ffffffff200000000ffffffffebfffffffffffffffffc",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000007ffffffff8000000011ffffffff8fffffffebfffffffdfffffffffafffffffea",
            INIT_01 => X"ffffffff4000000005ffffffff8000000005000000008ffffffffcffffffff2000000004",
            INIT_02 => X"fffffffe2ffffffffdfffffffe1ffffffffcffffffff4000000002fffffffeb000000000",
            INIT_03 => X"fffffffee000000001000000000ffffffffd000000000ffffffff200000000b00000000a",
            INIT_04 => X"ffffffff8ffffffff500000000b000000007000000012000000008fffffffeeffffffff9",
            INIT_05 => X"ffffffff5ffffffffbffffffffbffffffff2000000005000000003ffffffff1fffffffec",
            INIT_06 => X"000000000ffffffffbffffffffffffffffe8ffffffff7000000000ffffffff000000000b",
            INIT_07 => X"fffffffe7fffffffe9fffffffeffffffffebfffffffec000000006ffffffffffffffffed",
            INIT_08 => X"ffffffff200000000affffffff6ffffffffe000000000ffffffff4ffffffffaffffffffd",
            INIT_09 => X"000000000ffffffff1ffffffffe00000000cfffffffeaffffffff8ffffffff4ffffffff5",
            INIT_0A => X"ffffffff9fffffffed00000000ffffffffecfffffffebffffffff4fffffffe7ffffffff0",
            INIT_0B => X"000000004000000003ffffffff4fffffffedffffffff3ffffffffbfffffffebffffffffb",
            INIT_0C => X"00000000cffffffffeffffffff200000000bfffffffee000000007ffffffffa000000001",
            INIT_0D => X"000000004ffffffffcfffffffe7ffffffff8fffffffeb000000000fffffffe9000000005",
            INIT_0E => X"fffffffedffffffff2000000003ffffffff8000000000fffffffeaffffffffc000000003",
            INIT_0F => X"000000000ffffffffc000000005fffffffe8fffffffeafffffffff000000005fffffffea",
            INIT_10 => X"ffffffff0ffffffff6000000009ffffffff3000000001ffffffff0fffffffeefffffffe0",
            INIT_11 => X"000000001000000000000000011000000004000000002ffffffffbfffffffed000000009",
            INIT_12 => X"000000008000000010fffffffea00000000b00000000bfffffffec000000005000000000",
            INIT_13 => X"ffffffff0ffffffffeffffffff2fffffffeafffffffe8ffffffff6000000002fffffffec",
            INIT_14 => X"000000007000000007ffffffff6000000009ffffffff5ffffffff1ffffffff1ffffffff9",
            INIT_15 => X"ffffffff6000000009ffffffff1ffffffffa00000000100000000b00000000bfffffffed",
            INIT_16 => X"ffffffff3ffffffff4ffffffffb00000000900000000d000000008ffffffffa000000006",
            INIT_17 => X"ffffffff0000000008ffffffff7ffffffff3000000012000000004fffffffe3fffffffef",
            INIT_18 => X"00000000100000000c000000001ffffffff6ffffffffb00000001700000001b000000009",
            INIT_19 => X"fffffffe6ffffffffa00000003e000000012fffffffe3fffffffd5fffffffe3ffffffffc",
            INIT_1A => X"fffffffd9ffffffff700000000cfffffffeafffffffd6fffffffb6ffffffff3fffffffee",
            INIT_1B => X"fffffffbefffffffe4000000032fffffffcefffffffe600000000700000001e000000011",
            INIT_1C => X"00000000afffffffcdfffffffcefffffffd0fffffffc2fffffffe4fffffffdffffffffd5",
            INIT_1D => X"fffffffd3fffffffc3fffffffc3fffffffe5fffffffd6ffffffff8fffffffd0fffffffd1",
            INIT_1E => X"000000025000000023000000016000000016ffffffffefffffffe9fffffffeafffffffbf",
            INIT_1F => X"fffffffff00000003600000001c000000008ffffffffb00000000f00000001b000000031",
            INIT_20 => X"ffffffff200000001f00000000efffffffedffffffff7fffffffe1000000018000000016",
            INIT_21 => X"00000000e000000003ffffffff100000001100000002bffffffff6000000008000000007",
            INIT_22 => X"fffffffd7fffffffabfffffffcffffffffb6ffffffff0fffffffc3ffffffff9000000024",
            INIT_23 => X"00000000e00000003a00000002800000000000000000300000000900000000ffffffffde",
            INIT_24 => X"000000024ffffffff4000000001000000014fffffffe900000001d00000000fffffffffa",
            INIT_25 => X"ffffffff4ffffffff700000001a000000016fffffffdcfffffffeeffffffffdffffffff0",
            INIT_26 => X"00000001c000000038ffffffff3fffffffdffffffffe0ffffffff5000000000fffffffde",
            INIT_27 => X"000000000fffffffeafffffffe2fffffffebfffffffb2fffffffaafffffffcffffffffb5",
            INIT_28 => X"00000000f00000000c000000003000000016ffffffff2ffffffffafffffffff000000000",
            INIT_29 => X"fffffffc8fffffffe5ffffffffc000000000fffffffe0fffffffef000000000ffffffffa",
            INIT_2A => X"00000003500000001200000006000000004100000002afffffffe800000000d000000027",
            INIT_2B => X"ffffffff900000002200000003ffffffffed00000001700000001a00000000f00000001d",
            INIT_2C => X"00000000c00000002c000000006ffffffff8000000000000000006000000037000000046",
            INIT_2D => X"00000000100000000d00000000affffffffd000000016fffffffd4000000000fffffffe4",
            INIT_2E => X"00000000d00000001f00000001800000002b000000002ffffffffe000000004000000002",
            INIT_2F => X"00000000efffffffe6000000002000000004ffffffffb000000013000000016000000013",
            INIT_30 => X"00000001bfffffffda00000000dffffffffa000000014000000015fffffffdf000000010",
            INIT_31 => X"ffffffff5000000002fffffffecffffffff7fffffffe3fffffffeefffffffceffffffff0",
            INIT_32 => X"00000001100000001200000001a00000003200000003f000000022fffffffffffffffff2",
            INIT_33 => X"fffffffec000000023fffffffd6ffffffff500000002efffffffe7fffffffce000000017",
            INIT_34 => X"ffffffff1fffffffd600000002efffffffe7fffffffdafffffffdafffffffedfffffffbe",
            INIT_35 => X"fffffffeefffffffe9fffffffd4fffffffe5fffffffe0fffffffcc000000008000000005",
            INIT_36 => X"fffffffe9000000006fffffffd5ffffffff800000000b000000028000000006000000008",
            INIT_37 => X"fffffffd9000000015fffffffb6fffffffa7ffffffffdffffffff700000001cfffffffe9",
            INIT_38 => X"fffffffd9ffffffffc00000000dffffffff3fffffffd7fffffffbcfffffffd1fffffffc7",
            INIT_39 => X"000000005000000029000000011000000006000000014ffffffff1000000003000000024",
            INIT_3A => X"ffffffff6ffffffff000000000f000000011fffffffe9ffffffff700000000c000000014",
            INIT_3B => X"ffffffff6fffffffecfffffffdbfffffffe900000000afffffffe5fffffffecfffffffeb",
            INIT_3C => X"ffffffff5ffffffff800000001cffffffff0fffffffffffffffffdfffffffec00000000f",
            INIT_3D => X"ffffffff3fffffffe9ffffffff100000000c000000005000000026000000038ffffffff9",
            INIT_3E => X"fffffffadfffffff9ffffffffcbfffffff92fffffffadffffffffa00000002c00000000e",
            INIT_3F => X"fffffffe5fffffffd0fffffffc4fffffff8dffffffffbfffffffd5fffffffe7000000036",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff0fffffffecfffffffb7ffffffff2ffffffffefffffffdb000000004fffffffcb",
            INIT_41 => X"000000022000000035000000023fffffffebffffffff7fffffffd1fffffffc6fffffff9e",
            INIT_42 => X"fffffffd8fffffffe0fffffffedffffffffd00000000000000003100000001a000000012",
            INIT_43 => X"00000001bffffffffcffffffff2000000008fffffffd8ffffffffdffffffff3fffffffde",
            INIT_44 => X"000000019fffffffeefffffffe300000001cfffffffef00000000700000001200000000a",
            INIT_45 => X"ffffffff1fffffffd3fffffffe0fffffffb7fffffffbaffffffff4fffffffd4ffffffffe",
            INIT_46 => X"000000015ffffffff100000001800000002d00000000d000000024ffffffffa00000000c",
            INIT_47 => X"fffffffe0fffffffe4fffffffeffffffffdffffffffd7ffffffffa000000000000000018",
            INIT_48 => X"000000000000000007fffffffe0fffffffdcfffffffe800000005800000001600000000e",
            INIT_49 => X"00000000000000001000000000dffffffffcfffffffbefffffffe2000000010fffffffbd",
            INIT_4A => X"000000000000000014000000010000000006fffffffee000000001000000007ffffffffd",
            INIT_4B => X"00000000800000001900000001000000000b00000001a000000016000000012000000019",
            INIT_4C => X"000000004ffffffff9fffffffeefffffffe3fffffffefffffffffefffffffe400000001a",
            INIT_4D => X"fffffffd500000000000000000effffffff800000001100000000f000000012000000020",
            INIT_4E => X"fffffffedfffffffd7000000001fffffffbcfffffffe9fffffffddfffffffd1fffffffe5",
            INIT_4F => X"000000014ffffffff800000000f00000003e000000016000000003ffffffffd000000002",
            INIT_50 => X"ffffffffa00000000affffffffefffffffc4000000007ffffffff9fffffffd3ffffffffd",
            INIT_51 => X"00000000d000000002000000011000000012000000000fffffffe2000000022000000015",
            INIT_52 => X"00000002300000002100000002500000001400000000a000000007fffffffdb000000023",
            INIT_53 => X"00000002f00000000500000000c00000000d000000005fffffffe700000003400000001c",
            INIT_54 => X"00000000bffffffff4fffffffff000000005ffffffffd00000003c000000027000000009",
            INIT_55 => X"fffffffedfffffffc8000000006fffffffedfffffffe9000000016000000005fffffffe5",
            INIT_56 => X"00000002b00000001300000000f00000000affffffffafffffffd2ffffffff8fffffffe5",
            INIT_57 => X"ffffffff9000000033ffffffff1ffffffff8ffffffffbfffffffdefffffffb300000001c",
            INIT_58 => X"00000001500000000500000000e000000007fffffffeeffffffff200000001bfffffffe2",
            INIT_59 => X"fffffffd200000000a00000002effffffff700000002100000002200000003100000001a",
            INIT_5A => X"000000007fffffffc3ffffffff9ffffffff1ffffffff7fffffffec000000004000000044",
            INIT_5B => X"fffffffd4fffffffbdfffffff78fffffffbe000000002000000000fffffffff000000005",
            INIT_5C => X"00000001500000000b00000000ffffffffd3fffffffd5ffffffff0fffffffcdfffffffb8",
            INIT_5D => X"00000001d00000000bffffffff8fffffffea00000001e000000030000000021ffffffffc",
            INIT_5E => X"00000001700000002fffffffffbffffffffc00000001a000000019000000004000000010",
            INIT_5F => X"fffffffc600000000c000000025ffffffff800000001700000003700000001e000000019",
            INIT_60 => X"ffffffff2ffffffff9ffffffffbfffffffeaffffffff1ffffffff1fffffffe5fffffffd8",
            INIT_61 => X"ffffffff700000001500000002500000003200000002900000002a000000026fffffffeb",
            INIT_62 => X"000000026fffffffeafffffffe2ffffffffd00000000e000000000fffffffb8fffffffbb",
            INIT_63 => X"fffffffdafffffffd6000000031000000012ffffffff600000001affffffff5fffffffe5",
            INIT_64 => X"00000002efffffffea00000001cfffffffda000000023fffffffedfffffffe800000000d",
            INIT_65 => X"00000000500000000800000000400000000700000001affffffff0000000016000000035",
            INIT_66 => X"00000000200000003800000003300000003100000002700000001c000000036000000015",
            INIT_67 => X"ffffffff2fffffffd3fffffffcdffffffff2fffffffedffffffff9000000019000000024",
            INIT_68 => X"fffffffcbfffffffcefffffffdffffffffabfffffffa1fffffffb5ffffffff1ffffffff1",
            INIT_69 => X"00000000300000000e00000003700000003f000000053000000022000000026000000028",
            INIT_6A => X"00000001400000000b00000000100000000affffffff6ffffffff2ffffffffbffffffff0",
            INIT_6B => X"00000000b00000000a00000001b000000017ffffffffe00000000500000000cffffffff0",
            INIT_6C => X"000000000000000002000000021fffffffef00000000bfffffffddffffffff1fffffffde",
            INIT_6D => X"fffffffe5000000020000000021000000021000000030ffffffffdffffffffc000000040",
            INIT_6E => X"fffffffe7fffffffc4fffffffdeffffffff2ffffffff5fffffffe8000000013000000019",
            INIT_6F => X"00000002500000000afffffffd2fffffffddfffffffeefffffffcafffffffc1fffffffcc",
            INIT_70 => X"000000018000000013ffffffff300000000600000002300000003a00000002200000002c",
            INIT_71 => X"00000002c00000001afffffffe400000000effffffffefffffffffffffffff7ffffffff0",
            INIT_72 => X"fffffff95fffffffaefffffffedfffffffb3fffffffabffffffff5000000002000000011",
            INIT_73 => X"ffffffff500000002f00000001600000002200000001300000000500000001afffffffa3",
            INIT_74 => X"000000031ffffffffafffffffd500000001600000000cfffffffd3000000006000000008",
            INIT_75 => X"000000016ffffffff600000001d000000032000000034000000011000000034fffffffec",
            INIT_76 => X"fffffffce000000004fffffffee000000004ffffffff1ffffffff5ffffffff0fffffffef",
            INIT_77 => X"00000001a000000027000000025000000015000000004ffffffffcfffffffe9ffffffffd",
            INIT_78 => X"00000002d00000002900000001100000001500000001fffffffffb00000001600000000e",
            INIT_79 => X"00000000bfffffffe3fffffffd0fffffffe500000000f00000000200000001700000001f",
            INIT_7A => X"ffffffffbfffffffebfffffffe5ffffffffe00000000afffffffe9fffffffff000000012",
            INIT_7B => X"fffffffeffffffffbbfffffffacfffffffdcfffffffe8fffffffceffffffffa00000002b",
            INIT_7C => X"fffffffc6fffffffb6fffffffacfffffffb0000000013000000002000000007fffffffcd",
            INIT_7D => X"000000024ffffffffefffffffec000000003000000011000000019fffffffabfffffffb6",
            INIT_7E => X"ffffffff800000000bfffffffec00000000a00000001a000000003ffffffffffffffffe0",
            INIT_7F => X"fffffffcdffffffffeffffffff8ffffffffcfffffffb7fffffffbafffffffb6fffffffba",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffdefffffffe200000000900000002e00000004effffffff400000002f000000010",
            INIT_01 => X"000000005ffffffff6fffffffc3fffffffc3fffffffe4fffffffb3fffffffd3ffffffff0",
            INIT_02 => X"ffffffff9ffffffffeffffffff8000000010000000000fffffffeffffffffd3000000006",
            INIT_03 => X"00000001e000000010ffffffffe000000016fffffffef00000001300000001fffffffff5",
            INIT_04 => X"00000001200000000c00000000e00000000bffffffff500000000c00000000fffffffffd",
            INIT_05 => X"fffffffe5ffffffff4ffffffffb00000000cfffffffecffffffffeffffffff2ffffffffb",
            INIT_06 => X"000000000ffffffff3000000001ffffffffc000000001000000009fffffffe7ffffffffa",
            INIT_07 => X"000000000ffffffff5fffffffea000000001fffffffe6ffffffffa000000002ffffffff8",
            INIT_08 => X"fffffffe5000000003fffffffeeffffffff4000000000ffffffff6fffffffff000000005",
            INIT_09 => X"fffffffe9fffffffec000000001000000006fffffffebfffffffeeffffffffaffffffff6",
            INIT_0A => X"ffffffffe000000005000000001ffffffff4ffffffff400000000000000000900000000a",
            INIT_0B => X"fffffffefffffffff9fffffffedffffffff5fffffffeb000000011fffffffffffffffffb",
            INIT_0C => X"000000004ffffffff5000000007000000005fffffffe8000000004000000006ffffffff6",
            INIT_0D => X"fffffffe3fffffffff000000005000000005ffffffffbffffffff6ffffffff1fffffffe0",
            INIT_0E => X"000000014fffffffef00000000bffffffffc000000006ffffffff0000000000000000005",
            INIT_0F => X"000000000fffffffe3fffffffe5ffffffffcffffffff1fffffffe3000000006fffffffed",
            INIT_10 => X"ffffffffd00000000dffffffff4ffffffffc000000003fffffffe7000000000fffffffe5",
            INIT_11 => X"00000000700000001300000001300000000600000000cffffffffaffffffff2000000008",
            INIT_12 => X"ffffffff9ffffffff3ffffffffa000000013ffffffff800000000dfffffffebfffffffee",
            INIT_13 => X"000000000000000003000000000000000007ffffffff2000000000000000004ffffffff8",
            INIT_14 => X"fffffffe4fffffffff00000000dffffffff800000000effffffff7fffffffeaffffffffd",
            INIT_15 => X"ffffffffdffffffff0ffffffff200000000bfffffffed000000008000000004ffffffff8",
            INIT_16 => X"ffffffffd00000000cffffffffeffffffff7000000000000000001fffffffeaffffffff0",
            INIT_17 => X"000000005ffffffff2fffffffecffffffffdffffffff7ffffffffbffffffff8ffffffff0",
            INIT_18 => X"fffffffedfffffffeeffffffffeffffffffb000000003fffffffe7000000004ffffffff0",
            INIT_19 => X"000000009fffffffe7fffffffe9000000000ffffffff8ffffffff4000000009000000007",
            INIT_1A => X"fffffffeafffffffffffffffff2ffffffff5fffffffe9ffffffff3000000001000000006",
            INIT_1B => X"ffffffff8fffffffefffffffffc000000008fffffffefffffffff9ffffffff1fffffffe3",
            INIT_1C => X"000000009ffffffff9000000005ffffffff1ffffffffc000000002fffffffe700000000a",
            INIT_1D => X"ffffffff8ffffffff500000000efffffffeeffffffff100000001100000000effffffffc",
            INIT_1E => X"fffffffeaffffffffaffffffff0ffffffff9fffffffe6ffffffff6ffffffff9ffffffffb",
            INIT_1F => X"fffffffec000000004fffffffe1ffffffffdffffffff700000000b000000001ffffffff5",
            INIT_20 => X"fffffffdaffffffff1ffffffff1ffffffff1000000003fffffffe6ffffffffcfffffffea",
            INIT_21 => X"000000007000000002000000011ffffffff3ffffffff5000000010fffffffec000000000",
            INIT_22 => X"fffffffed00000000300000000affffffffa00000000ffffffffef000000007000000014",
            INIT_23 => X"ffffffff700000000dffffffffffffffffe8fffffffedffffffffe000000001000000004",
            INIT_24 => X"000000002000000001ffffffffc00000000000000000a000000000ffffffff2ffffffff1",
            INIT_25 => X"000000006000000004000000005ffffffff5000000001ffffffff8fffffffffffffffffd",
            INIT_26 => X"ffffffffcffffffffc000000008ffffffff6000000006000000005ffffffffe000000001",
            INIT_27 => X"00000000000000000bfffffffebfffffffec000000000ffffffff0000000003fffffffe9",
            INIT_28 => X"ffffffffdffffffff7ffffffffd000000003fffffffeb00000000fffffffff9000000000",
            INIT_29 => X"fffffffdcfffffffdb000000015000000002ffffffffc000000004ffffffff100000000a",
            INIT_2A => X"000000021000000010000000019ffffffff7fffffffee000000022fffffffd9fffffffb8",
            INIT_2B => X"000000030ffffffff400000000a00000002f00000001c00000000500000000500000002e",
            INIT_2C => X"ffffffff6000000028fffffffedfffffffe600000002200000004800000000200000002e",
            INIT_2D => X"00000001100000001dffffffff700000001900000004200000003600000001e000000014",
            INIT_2E => X"00000000ffffffffdd00000003400000003b000000027fffffffed00000004800000002b",
            INIT_2F => X"000000024000000029ffffffff4fffffffd5ffffffffefffffffc9fffffffdc00000000a",
            INIT_30 => X"00000001600000000cfffffffe6ffffffffdfffffffdafffffffffffffffff100000000d",
            INIT_31 => X"fffffffea00000001c00000001afffffffeefffffffe3000000003ffffffffefffffffe8",
            INIT_32 => X"000000006000000000fffffffd1fffffffed00000002f000000010fffffffdc000000010",
            INIT_33 => X"ffffffffffffffffdffffffffbe000000002fffffffebfffffffec000000001ffffffff0",
            INIT_34 => X"ffffffffafffffffef000000006ffffffffcffffffffafffffffe2fffffffc7fffffffb9",
            INIT_35 => X"ffffffffbfffffffdefffffffebffffffff5000000015ffffffff4fffffffe800000000f",
            INIT_36 => X"fffffffce00000000affffffff0ffffffff3fffffffeffffffffd9000000017ffffffffc",
            INIT_37 => X"ffffffff7fffffffebffffffff8fffffffd9fffffffbf000000003fffffffee000000000",
            INIT_38 => X"ffffffffd000000000000000002ffffffff900000000f00000000dffffffff0000000013",
            INIT_39 => X"fffffffdefffffffc9fffffffdffffffffe0fffffffea000000006fffffffe7fffffffd1",
            INIT_3A => X"fffffffdefffffffaafffffffd6000000024fffffffbd000000015ffffffff9000000018",
            INIT_3B => X"fffffffc0000000000fffffffd9fffffffc100000002e000000013fffffffef00000000a",
            INIT_3C => X"00000002e000000031000000011000000007ffffffff4000000012ffffffff0fffffffef",
            INIT_3D => X"000000004ffffffffc000000000fffffffe7fffffffeaffffffffb00000002e00000000e",
            INIT_3E => X"ffffffff0000000022000000004000000001fffffffef000000005000000002ffffffffa",
            INIT_3F => X"ffffffffa000000009fffffffdfffffffff1ffffffffaffffffffe000000002ffffffff5",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff2fffffffb3ffffffff0fffffffeaffffffffc000000004ffffffffb00000000f",
            INIT_41 => X"fffffffcbffffffffbfffffffdcffffffff4000000005ffffffff7fffffffda000000023",
            INIT_42 => X"000000016fffffffe0fffffffa200000000ffffffffe6fffffffb1000000018ffffffffa",
            INIT_43 => X"fffffffe500000000800000002400000000200000001e00000004dfffffffd5fffffffc4",
            INIT_44 => X"fffffffbcfffffffe3fffffffeefffffffd1fffffffd9fffffffecfffffffffffffffff0",
            INIT_45 => X"000000024fffffffe200000000c00000000c000000009fffffffe8000000012ffffffffc",
            INIT_46 => X"000000008fffffffde00000001affffffff8fffffffeb00000000afffffffcfffffffff8",
            INIT_47 => X"00000002a00000001d00000002a000000014fffffffe4fffffffcdfffffffdf000000005",
            INIT_48 => X"000000004000000025fffffffe900000003800000006900000005600000002a000000016",
            INIT_49 => X"00000000300000001affffffff6fffffff9bfffffffd6ffffffff5ffffffffbfffffffcb",
            INIT_4A => X"00000000a000000028000000005fffffffd6ffffffffeffffffff6fffffffe9000000015",
            INIT_4B => X"00000000e00000001800000001f000000017000000006ffffffffc000000007ffffffffd",
            INIT_4C => X"00000000f00000000100000000200000001effffffff7fffffffe9fffffffeb000000005",
            INIT_4D => X"00000001900000002200000002f00000002cffffffff0ffffffffe00000001effffffff0",
            INIT_4E => X"000000012000000011ffffffff9fffffffe5fffffffd4fffffffe4000000000000000016",
            INIT_4F => X"000000037000000005fffffffe5ffffffff300000002700000001000000001affffffff8",
            INIT_50 => X"000000010fffffffecfffffffd0fffffffef000000006000000035000000025000000006",
            INIT_51 => X"000000022ffffffffdffffffff4fffffffea000000046000000000fffffffda000000000",
            INIT_52 => X"ffffffff5ffffffffc00000001a000000000000000006000000008ffffffff9000000026",
            INIT_53 => X"00000002000000001800000000800000002600000000500000000d00000001dfffffffdf",
            INIT_54 => X"ffffffff3000000009ffffffffbfffffffeb000000013000000028ffffffff3000000000",
            INIT_55 => X"ffffffff1fffffffecffffffff2000000011000000011fffffffd0fffffffe7fffffffef",
            INIT_56 => X"fffffffe8000000018fffffffebfffffffc1000000022000000008fffffffd9fffffffd0",
            INIT_57 => X"00000001400000000d000000031ffffffff700000001400000002d000000020fffffffd1",
            INIT_58 => X"fffffffe4fffffffc8000000008fffffffe1fffffffd7fffffffeaffffffffd000000013",
            INIT_59 => X"ffffffffd00000001100000001affffffff8ffffffffbfffffffdffffffffcf00000000d",
            INIT_5A => X"ffffffffb00000001f00000000d00000000400000000000000000d00000000effffffffc",
            INIT_5B => X"ffffffff6ffffffffffffffffefffffffff1fffffffc9000000000ffffffff7ffffffff0",
            INIT_5C => X"fffffffc0fffffffcfffffffff9000000019fffffffcffffffffd2ffffffffc000000016",
            INIT_5D => X"000000049000000002fffffffd9000000047fffffffe4fffffffe9000000012ffffffffd",
            INIT_5E => X"fffffffef00000001400000001300000000800000001800000000dffffffffc000000002",
            INIT_5F => X"fffffffd9000000030fffffffe3fffffffc0fffffffe5fffffffd2fffffffe6000000004",
            INIT_60 => X"000000035ffffffffdfffffffdfffffffff4000000006fffffffd3000000010ffffffff0",
            INIT_61 => X"00000001100000001c00000001300000001700000000c00000000ffffffffedffffffffb",
            INIT_62 => X"000000016ffffffffc00000001200000001b00000001600000000200000002efffffffff",
            INIT_63 => X"000000012000000002ffffffff2ffffffff3fffffffda00000000400000000afffffffe2",
            INIT_64 => X"00000001bffffffff1000000002ffffffff7fffffffe900000000bffffffff3000000019",
            INIT_65 => X"fffffffeb000000008fffffffee00000000a00000002dffffffff4fffffffe9000000000",
            INIT_66 => X"fffffffd6ffffffff4000000023fffffffcc00000000a000000030fffffffeffffffffe9",
            INIT_67 => X"000000053000000025000000046000000048000000013fffffffed00000001d000000021",
            INIT_68 => X"00000002000000000a00000003b000000021fffffffe900000001000000003800000004f",
            INIT_69 => X"00000002dfffffffcbfffffff98000000021fffffffeafffffffd5fffffffe1000000018",
            INIT_6A => X"ffffffffd00000002c000000014fffffffe100000000200000001effffffffbfffffffde",
            INIT_6B => X"ffffffff2fffffffeafffffffdeffffffffcffffffff800000001a00000003cfffffffe0",
            INIT_6C => X"00000002dffffffff9fffffffda00000002100000004e000000045ffffffff300000002b",
            INIT_6D => X"000000034000000017fffffffd8fffffffd0000000009ffffffff8fffffffe1000000000",
            INIT_6E => X"fffffffaefffffffd9fffffffd600000000afffffffdd00000000100000002900000000c",
            INIT_6F => X"00000004f000000011fffffffd9000000017fffffffd0fffffff9b000000024fffffffe5",
            INIT_70 => X"00000000a000000008000000000000000003ffffffffeffffffff9ffffffffeffffffffc",
            INIT_71 => X"000000017fffffffaffffffffb0000000013fffffffaefffffffb7000000002fffffffff",
            INIT_72 => X"00000005000000002afffffffdc000000043000000028fffffffddffffffff1fffffffff",
            INIT_73 => X"000000014ffffffff5ffffffffb000000001fffffffe600000001dffffffffb000000006",
            INIT_74 => X"00000000dffffffffa00000002cfffffffe900000003000000002dfffffffe500000002a",
            INIT_75 => X"000000018fffffffedfffffffe9000000016ffffffff9fffffffe300000004500000006e",
            INIT_76 => X"fffffffe0000000000000000005ffffffffcfffffffe600000002c000000009fffffffe5",
            INIT_77 => X"00000000600000000300000001e000000027ffffffff8000000006ffffffff1fffffffd4",
            INIT_78 => X"fffffffe0fffffffe2000000005000000002fffffffe9000000005fffffffdbffffffffb",
            INIT_79 => X"fffffffe8000000017000000004ffffffff2ffffffff9000000027fffffffdbffffffffa",
            INIT_7A => X"000000004fffffffbbfffffffd0000000021fffffffa5fffffffe3ffffffff200000000b",
            INIT_7B => X"00000000afffffffd6000000007000000016fffffffd2fffffffe9fffffffc8fffffffd2",
            INIT_7C => X"fffffffeefffffffde00000001600000000dffffffff3ffffffffb00000000900000000a",
            INIT_7D => X"00000000900000001e00000001efffffffe2fffffffddffffffffbfffffffe1000000008",
            INIT_7E => X"fffffffbbfffffffd700000001200000001200000002b00000001600000000d000000007",
            INIT_7F => X"fffffffe6fffffffd0fffffffbdfffffffe8000000033fffffffc3000000000000000064",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffff2fffffffdffffffffd9fffffffdf00000000300000000cfffffffe6000000029",
            INIT_01 => X"00000000a00000000300000001300000002600000003600000000f00000000a000000007",
            INIT_02 => X"fffffffb9ffffffff4fffffffa2fffffff9affffffffafffffff7cfffffffcd00000002a",
            INIT_03 => X"000000027fffffffd7ffffffff1000000040fffffffe4ffffffff2000000018fffffffcf",
            INIT_04 => X"fffffffee000000019fffffffea00000000d00000000bffffffff0fffffffddffffffff0",
            INIT_05 => X"ffffffffe00000000100000003400000002bffffffff300000000000000001bffffffff8",
            INIT_06 => X"00000001100000000400000001e00000001c00000000e00000001400000000500000001d",
            INIT_07 => X"000000010000000000000000013fffffffea00000001fffffffffafffffffee000000009",
            INIT_08 => X"ffffffff7fffffffee000000000ffffffffc000000000000000026000000012000000007",
            INIT_09 => X"00000000700000001800000001c000000000fffffffe800000000fffffffff3ffffffffc",
            INIT_0A => X"ffffffff500000000efffffffef00000002a000000003fffffffea000000027000000011",
            INIT_0B => X"fffffffe3ffffffff3000000053000000014fffffffcb00000005800000002afffffffc9",
            INIT_0C => X"00000000bffffffff1ffffffffc000000015fffffffdafffffffd7000000006000000028",
            INIT_0D => X"ffffffffbffffffff9000000033fffffffd600000000700000000fffffffff2ffffffffd",
            INIT_0E => X"000000001fffffffeefffffffecfffffffe1000000000fffffffc3fffffffe6000000009",
            INIT_0F => X"ffffffff900000001700000002600000001800000001affffffff8ffffffff9ffffffffc",
            INIT_10 => X"ffffffff8000000013ffffffff3000000009ffffffff8fffffffd8ffffffffa000000007",
            INIT_11 => X"00000001fffffffff4fffffffe7fffffffe7fffffffe600000000afffffffec000000018",
            INIT_12 => X"ffffffff7fffffffed000000016000000009fffffffecffffffffe00000000d00000000a",
            INIT_13 => X"fffffffe900000000700000002000000000f000000008000000026000000003ffffffff9",
            INIT_14 => X"fffffffdafffffffffffffffff6000000009ffffffff4000000007000000010000000004",
            INIT_15 => X"fffffffa4fffffffa9fffffff74fffffff8afffffffa8fffffffbefffffff99ffffffff8",
            INIT_16 => X"000000015000000037000000010000000022000000021000000012fffffffccfffffffa0",
            INIT_17 => X"000000000000000022ffffffffefffffffe300000002400000001affffffffb00000002b",
            INIT_18 => X"00000005f00000002c000000029000000046fffffffe4ffffffffcffffffff6fffffffe4",
            INIT_19 => X"ffffffff800000000400000000dffffffff1000000029000000051000000004000000015",
            INIT_1A => X"ffffffffffffffffe2fffffffeefffffffe600000000200000000600000001d000000000",
            INIT_1B => X"ffffffff1ffffffff6ffffffffd00000001900000000bffffffff3ffffffffcfffffffeb",
            INIT_1C => X"ffffffff700000003c00000002800000000b00000000a00000001700000001f000000024",
            INIT_1D => X"fffffffc8fffffffc3fffffffd7fffffffa1fffffffcf000000003ffffffffdffffffffd",
            INIT_1E => X"ffffffff9fffffffedffffffff0fffffffedffffffffffffffffe9ffffffff5000000016",
            INIT_1F => X"fffffffcffffffffa0fffffffd2fffffffe5fffffffe2fffffffd2000000025ffffffff7",
            INIT_20 => X"000000004000000018fffffffdffffffffd8fffffffdcffffffff9fffffffc9ffffffff0",
            INIT_21 => X"00000000cfffffffeffffffffe5fffffffe8fffffffebfffffffea000000009fffffffe5",
            INIT_22 => X"00000000200000001b00000000d00000001000000001d00000001bfffffffea000000009",
            INIT_23 => X"fffffffffffffffffeffffffffc00000000e000000015000000013ffffffff5ffffffffa",
            INIT_24 => X"fffffffe8ffffffff2fffffffe1ffffffff8000000002000000007fffffffe8fffffffe4",
            INIT_25 => X"00000000c00000001800000002bfffffffe8fffffffe8000000014fffffffd9ffffffff5",
            INIT_26 => X"fffffffeefffffffe0ffffffff0fffffffd7fffffffb1fffffffeffffffffd3fffffffb0",
            INIT_27 => X"00000000d000000003fffffffecffffffff8fffffffd6fffffffd9ffffffff900000000f",
            INIT_28 => X"ffffffff600000000bffffffff6000000019000000029ffffffff0000000006ffffffffe",
            INIT_29 => X"000000017000000005ffffffffe00000000a000000005fffffffe4fffffffebffffffff4",
            INIT_2A => X"000000014000000007ffffffffcffffffff800000000500000001e00000000fffffffffa",
            INIT_2B => X"ffffffffcffffffff2fffffffe9fffffffdeffffffffd00000001cfffffffed000000006",
            INIT_2C => X"fffffffe5fffffffef00000000affffffffb000000012fffffffecffffffff6fffffffe9",
            INIT_2D => X"000000027000000014ffffffff6ffffffff3000000008ffffffff9fffffffe4ffffffff4",
            INIT_2E => X"000000004000000008ffffffff0000000012ffffffff6fffffffeb000000012000000005",
            INIT_2F => X"000000010fffffffd000000002affffffff100000000000000000ffffffffffffffffffe",
            INIT_30 => X"00000000800000000900000001b00000000800000002000000001400000001d000000031",
            INIT_31 => X"00000000600000000600000001e000000014ffffffffeffffffff7ffffffff1fffffffed",
            INIT_32 => X"fffffffe7000000003000000005fffffffeaffffffffd00000003a000000001000000000",
            INIT_33 => X"000000003000000011000000029000000034000000000ffffffffc00000001400000001f",
            INIT_34 => X"000000015000000009fffffffdb00000000c000000021000000009000000003000000031",
            INIT_35 => X"00000001100000000300000000000000000cffffffff500000002e000000002fffffffe1",
            INIT_36 => X"000000017fffffffddffffffff6000000002ffffffff700000000d00000000d00000000f",
            INIT_37 => X"00000000a00000001800000002d00000001e00000001700000001a000000015000000000",
            INIT_38 => X"ffffffff800000000700000000afffffffebffffffff7fffffffdf000000001000000008",
            INIT_39 => X"000000005fffffffed00000002d000000023ffffffff300000000a000000004000000000",
            INIT_3A => X"ffffffff300000000600000001e00000005600000002e00000000bfffffffaefffffffce",
            INIT_3B => X"00000000cfffffffc6000000000000000015000000004fffffffeffffffffe4fffffffed",
            INIT_3C => X"ffffffff300000002200000001b000000037000000013ffffffff2fffffffba00000002a",
            INIT_3D => X"fffffffe1fffffffb3fffffffd9fffffffd0fffffffd7ffffffff1fffffffd8000000006",
            INIT_3E => X"ffffffff300000001900000004400000002900000002900000000ffffffffb100000000c",
            INIT_3F => X"00000000bfffffffe1fffffffe3ffffffff4000000017fffffffeafffffffdf000000012",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffeafffffffef000000002fffffffff00000001fffffffff1000000013000000005",
            INIT_41 => X"fffffffd5fffffffe2000000021ffffffffe00000002800000001a000000011fffffffed",
            INIT_42 => X"ffffffff5fffffffd7fffffffe3fffffffeeffffffff0fffffffe8fffffffd5fffffffe5",
            INIT_43 => X"fffffffedffffffffe000000033fffffffe4000000000000000011ffffffffbfffffffe0",
            INIT_44 => X"fffffffdeffffffff7ffffffff2ffffffff2000000017fffffffddfffffffefffffffff9",
            INIT_45 => X"000000012fffffffd6fffffffd8ffffffffaffffffff8fffffffe8ffffffffbfffffffe9",
            INIT_46 => X"00000003100000000500000000500000003100000001e000000008000000008000000004",
            INIT_47 => X"fffffffad000000003fffffffea000000003fffffffe700000000900000001500000001e",
            INIT_48 => X"00000000000000003d00000001d000000036000000009fffffffcc000000044fffffffae",
            INIT_49 => X"000000018fffffffe500000000300000001500000001100000000c00000001900000000c",
            INIT_4A => X"fffffffdc00000001efffffffbf00000000c000000003fffffffdbfffffffe900000000d",
            INIT_4B => X"fffffffe2ffffffff9ffffffff6fffffffc5000000002ffffffff6fffffffd7fffffffd6",
            INIT_4C => X"00000004d00000004d000000010000000025000000034ffffffffc000000026fffffffda",
            INIT_4D => X"fffffffd8000000010fffffffebfffffffdf000000001fffffffedfffffffff00000001c",
            INIT_4E => X"fffffffec00000000bfffffffee000000024000000018fffffffff000000026000000025",
            INIT_4F => X"000000016fffffffe8fffffffedffffffffdfffffffec000000000000000000fffffffdc",
            INIT_50 => X"ffffffffefffffffca00000001f00000000700000000c000000020fffffffe2ffffffff1",
            INIT_51 => X"ffffffff400000000cffffffff5fffffffec000000000ffffffffafffffffdfffffffff4",
            INIT_52 => X"00000002800000001100000002b00000001b00000001000000000cfffffffebfffffffbc",
            INIT_53 => X"fffffffe5fffffffdcffffffff900000003b00000002600000003100000006d000000010",
            INIT_54 => X"ffffffff0ffffffff1000000004ffffffffb000000028000000013ffffffff8fffffffe5",
            INIT_55 => X"00000001affffffff2000000017000000009fffffffffffffffff6fffffffbffffffffec",
            INIT_56 => X"00000000e000000005fffffffe0fffffffdb00000000b000000006ffffffff9fffffffed",
            INIT_57 => X"ffffffffd000000035000000013000000018ffffffff7000000006000000010ffffffff3",
            INIT_58 => X"fffffffdefffffffda000000002fffffffffffffffff9ffffffff100000000a00000000f",
            INIT_59 => X"fffffffde000000006ffffffff7ffffffff7fffffffecfffffffe2000000019000000008",
            INIT_5A => X"ffffffffa000000011000000005000000002000000000fffffffe5000000006ffffffffa",
            INIT_5B => X"00000002800000001800000001f00000001d00000001bffffffffe00000000b000000001",
            INIT_5C => X"ffffffff900000001400000000000000001dffffffff7000000001ffffffffb000000008",
            INIT_5D => X"fffffffeeffffffff8ffffffff7ffffffffaffffffff8000000010ffffffff1ffffffffe",
            INIT_5E => X"00000001700000002affffffff7fffffffcaffffffff8fffffffe0000000023ffffffff5",
            INIT_5F => X"fffffffe6fffffffdb00000000800000000b00000001c000000059000000060000000051",
            INIT_60 => X"000000025fffffffb1fffffffd9ffffffff8fffffffdbffffffff2000000019ffffffff5",
            INIT_61 => X"00000001300000001500000000700000001400000002700000004ffffffffd400000000d",
            INIT_62 => X"00000000afffffffee000000001fffffffe600000000a000000003fffffffddfffffffec",
            INIT_63 => X"ffffffff9ffffffff4ffffffff200000000b000000008fffffffe1fffffffe3000000019",
            INIT_64 => X"00000001e00000001600000000c000000000000000002fffffffed00000001ffffffffd8",
            INIT_65 => X"fffffffed00000001cfffffffd9000000016000000014fffffffbbfffffffd8000000004",
            INIT_66 => X"00000000fffffffff300000002f000000027ffffffffeffffffffafffffffec000000000",
            INIT_67 => X"ffffffff8000000007000000006fffffffc4ffffffff2fffffffe2fffffffdb00000000b",
            INIT_68 => X"ffffffffefffffffee00000001dffffffff1fffffffefffffffffeffffffff0fffffffda",
            INIT_69 => X"ffffffffa00000000200000000efffffffefffffffffe00000002c000000001000000032",
            INIT_6A => X"00000002d00000000800000000affffffff9fffffffdcfffffffd1000000014ffffffff5",
            INIT_6B => X"00000000e00000001500000000600000001300000000cfffffffdf00000001800000000b",
            INIT_6C => X"fffffffe4000000010fffffffe2000000012000000000000000002000000001000000010",
            INIT_6D => X"fffffffd3000000000000000012ffffffff6ffffffffdfffffffed00000000afffffffd5",
            INIT_6E => X"ffffffffc00000002300000006000000004a00000007100000002d00000002f000000025",
            INIT_6F => X"00000001200000000c00000001500000000500000000500000000dfffffffe500000001f",
            INIT_70 => X"ffffffff3fffffffd6000000002ffffffff2000000001ffffffffffffffffed000000007",
            INIT_71 => X"fffffffc7ffffffff9000000024fffffffe2ffffffff7ffffffff0fffffffdbfffffffdb",
            INIT_72 => X"ffffffff200000002a000000013000000006ffffffffbffffffff1ffffffff7fffffffd0",
            INIT_73 => X"00000001fffffffffdffffffff4000000004000000004000000001fffffffe1fffffffca",
            INIT_74 => X"ffffffff8ffffffff3ffffffffeffffffffb000000017fffffffe3ffffffff9fffffffcd",
            INIT_75 => X"000000000fffffffef000000003000000015ffffffff300000000c000000024ffffffff0",
            INIT_76 => X"ffffffff0fffffffc1fffffffea000000024ffffffff700000000300000001cfffffffeb",
            INIT_77 => X"000000002000000014fffffffddfffffffeeffffffff5fffffffe3000000010000000009",
            INIT_78 => X"000000013000000003fffffffeb000000008000000000000000000fffffffff000000000",
            INIT_79 => X"ffffffff700000002a00000000efffffffe100000000fffffffffc000000015000000026",
            INIT_7A => X"fffffffeeffffffff3000000007fffffffe7fffffffd8fffffffd3fffffffec000000003",
            INIT_7B => X"ffffffff9ffffffffcffffffff5fffffffc200000002700000001d000000014ffffffff2",
            INIT_7C => X"00000002d000000032ffffffffefffffffe5ffffffff3000000023ffffffffbffffffff6",
            INIT_7D => X"000000000000000032000000014ffffffffbfffffffe9000000042ffffffff3ffffffffa",
            INIT_7E => X"fffffffefffffffff6ffffffff3ffffffff9ffffffff2fffffffd7ffffffffa000000027",
            INIT_7F => X"ffffffff0ffffffffd00000000a00000001400000001dffffffff8ffffffff9000000019",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000001c00000002a00000000b00000001400000000900000001efffffffecfffffffef",
            INIT_01 => X"fffffffd600000000c00000000600000002cffffffffd00000001300000002700000001c",
            INIT_02 => X"000000034000000052000000014000000011ffffffffe00000000e00000000dfffffffd4",
            INIT_03 => X"00000003d00000002b00000001f00000003800000002c000000027000000021000000041",
            INIT_04 => X"000000034fffffffe0ffffffffc00000002dfffffffdeffffffffc00000000200000000e",
            INIT_05 => X"00000003200000000cffffffff3fffffffe7ffffffff7000000005fffffffe3000000050",
            INIT_06 => X"fffffffdd00000000200000001d00000000f00000002f00000000fffffffff7fffffffff",
            INIT_07 => X"ffffffffcffffffff400000000f000000006fffffffbafffffffd6fffffffd6ffffffff9",
            INIT_08 => X"00000000300000001e00000001c00000000a00000002600000000b000000002fffffffe7",
            INIT_09 => X"fffffffe0fffffffe4ffffffff4000000002ffffffffeffffffff000000002400000002c",
            INIT_0A => X"000000000000000000fffffffdffffffffda00000002300000001e000000008000000004",
            INIT_0B => X"fffffffe5ffffffff0000000002fffffffe6ffffffff3000000025ffffffffdffffffff3",
            INIT_0C => X"000000009fffffffdd000000002fffffffdf00000000ffffffffe9fffffffd6ffffffff8",
            INIT_0D => X"fffffffc8000000007000000005fffffffd2fffffffeafffffffdc000000018ffffffff3",
            INIT_0E => X"ffffffff2fffffffceffffffff6000000004000000007fffffffe6ffffffff7fffffffe3",
            INIT_0F => X"00000001bffffffffd00000001e00000001500000001c000000005000000001000000029",
            INIT_10 => X"fffffffc500000001a00000003d000000042000000017000000001fffffffe0000000001",
            INIT_11 => X"fffffffef00000000dfffffffe1000000010fffffffc8fffffffa300000000affffffff3",
            INIT_12 => X"ffffffffffffffffebfffffffc2fffffffeb00000000affffffff6fffffffd1000000043",
            INIT_13 => X"000000022000000001ffffffff700000000900000001cffffffff9fffffffe2000000026",
            INIT_14 => X"fffffffdffffffffe3fffffffbe00000001efffffffe1fffffffd300000000200000000c",
            INIT_15 => X"ffffffff3fffffffddffffffff3000000005ffffffff5000000004ffffffff9000000020",
            INIT_16 => X"fffffffd700000001fffffffff1000000023ffffffff1fffffffe800000001c000000011",
            INIT_17 => X"00000002300000002a000000001000000010ffffffff5fffffffea000000018fffffffe0",
            INIT_18 => X"ffffffff7ffffffff800000000600000001100000000b000000016ffffffffdfffffffe3",
            INIT_19 => X"00000003a000000024000000034ffffffff000000001effffffff4fffffffcc00000000a",
            INIT_1A => X"fffffffddfffffffe7000000001fffffffc5fffffffd6000000001ffffffff8ffffffff8",
            INIT_1B => X"ffffffff5fffffffed00000002000000003200000002500000004b000000029ffffffff2",
            INIT_1C => X"fffffffeefffffffea00000001200000001efffffffe0fffffffe5ffffffffcffffffffb",
            INIT_1D => X"000000028fffffffedffffffffc000000032fffffffecffffffffe000000000ffffffff5",
            INIT_1E => X"000000004fffffffe600000000cffffffff6fffffffdf00000000500000001d000000014",
            INIT_1F => X"000000015000000003000000058000000017000000011fffffffea00000000c000000017",
            INIT_20 => X"00000000dfffffff99fffffffc0fffffffd000000001c000000019fffffffe700000005c",
            INIT_21 => X"ffffffff8000000005ffffffff6000000015ffffffffeffffffff6fffffffe3fffffffe7",
            INIT_22 => X"00000000000000002900000000600000000a000000002000000000ffffffff400000000d",
            INIT_23 => X"ffffffffeffffffffe000000004000000020ffffffffaffffffff200000001300000000f",
            INIT_24 => X"00000000b00000000c000000017000000013000000002000000009000000009ffffffff4",
            INIT_25 => X"00000000e000000010000000000ffffffff400000003600000001b00000002a00000000d",
            INIT_26 => X"fffffffff00000001900000004200000002500000000a00000003900000001d000000021",
            INIT_27 => X"fffffffcdfffffffd0000000013fffffffe1fffffffdc000000017000000018000000015",
            INIT_28 => X"00000001000000002c00000002100000001bfffffffc5fffffffb9fffffffbffffffffe1",
            INIT_29 => X"00000000f00000000cffffffff6000000005ffffffffafffffffe8000000040000000043",
            INIT_2A => X"000000018ffffffffdffffffffaffffffff600000001e000000000000000015fffffffdb",
            INIT_2B => X"000000000fffffffeafffffffe6ffffffffeffffffffb000000018000000002000000032",
            INIT_2C => X"00000001800000000afffffffe8000000000000000007000000013fffffffeafffffffff",
            INIT_2D => X"ffffffffb000000028ffffffff000000000a00000001effffffff5fffffffd000000000d",
            INIT_2E => X"fffffffeffffffffeb000000003ffffffffc00000000000000001a000000005000000000",
            INIT_2F => X"00000001b000000015ffffffffa00000000cffffffff000000001500000000cffffffff0",
            INIT_30 => X"00000000dfffffffc700000002700000001300000001f00000001a00000001700000001b",
            INIT_31 => X"00000000000000002c00000000effffffffffffffffe600000002d000000003ffffffff2",
            INIT_32 => X"00000000600000000dffffffff7fffffffd1fffffffe1fffffffe100000000cfffffffe7",
            INIT_33 => X"000000015000000017000000011000000015fffffffdd00000000900000001900000000f",
            INIT_34 => X"00000000cffffffff9000000011fffffffffffffffff3fffffffeafffffffca000000034",
            INIT_35 => X"fffffffe9000000000ffffffff400000000900000000d000000005000000033000000022",
            INIT_36 => X"000000022fffffffff00000002f000000006ffffffff4fffffffe5000000034000000002",
            INIT_37 => X"fffffffd6ffffffff600000001affffffff100000001c00000001b000000025000000012",
            INIT_38 => X"fffffffccffffffff0fffffffc7fffffffccfffffffccfffffff9bfffffffea000000001",
            INIT_39 => X"ffffffffbffffffff800000000effffffffb000000000fffffffd6000000015fffffffd3",
            INIT_3A => X"fffffffdafffffffda000000000fffffffeeffffffff200000000800000000b000000006",
            INIT_3B => X"ffffffff800000001b00000001600000000800000000cfffffffecffffffff1fffffffd6",
            INIT_3C => X"00000002400000001b00000000effffffff900000001dfffffffe5fffffffedfffffffe5",
            INIT_3D => X"fffffffdbfffffffebfffffffde00000000500000001ffffffffebffffffffd000000035",
            INIT_3E => X"fffffffe1000000020000000010fffffffe700000000dfffffffdc00000000e000000012",
            INIT_3F => X"ffffffff000000001dfffffffcdfffffffe9000000007fffffffd5fffffffc2ffffffff3",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffebffffffffd00000000d00000001bfffffffcbfffffffeeffffffff8000000019",
            INIT_41 => X"fffffffe7ffffffff4000000019ffffffff9000000025000000019ffffffff600000000e",
            INIT_42 => X"fffffffe1ffffffffaffffffffeffffffff2ffffffff5fffffffe000000000affffffff1",
            INIT_43 => X"fffffffc0000000010fffffffdbfffffffdafffffffd5fffffffda000000002ffffffff2",
            INIT_44 => X"ffffffff3fffffffe7fffffffe6fffffffc4fffffffd4fffffffddfffffffeafffffffbb",
            INIT_45 => X"fffffffe5fffffffe9fffffffeb000000001000000003fffffffddffffffff2ffffffff1",
            INIT_46 => X"000000025fffffffee00000000fffffffff1fffffffd1fffffffdbfffffffd9fffffffc5",
            INIT_47 => X"fffffffd4fffffffdcfffffffec00000000000000000000000000e000000043000000039",
            INIT_48 => X"fffffffff000000005000000015ffffffff9ffffffff100000001600000000dffffffff0",
            INIT_49 => X"00000001f000000027000000001ffffffffafffffffe9fffffffe2fffffffdfffffffffb",
            INIT_4A => X"fffffffa6fffffffb3fffffffc6fffffffe1fffffffc700000000e000000014000000005",
            INIT_4B => X"fffffffc5ffffffff2fffffffb3fffffffb600000001bfffffffa9fffffffa9fffffffe4",
            INIT_4C => X"fffffffa0fffffffc6fffffffa8fffffffdafffffff9400000001e000000019fffffffa7",
            INIT_4D => X"fffffffeafffffffd4fffffffc1fffffffa8ffffffff4fffffffc4fffffff9bfffffffc5",
            INIT_4E => X"ffffffff2ffffffff400000001000000000bffffffffb000000015ffffffff0fffffffda",
            INIT_4F => X"000000029fffffffca00000000000000000afffffffe100000000bffffffff3fffffffdb",
            INIT_50 => X"fffffffdb00000000a00000002700000000c000000026000000031ffffffff100000001d",
            INIT_51 => X"000000017ffffffffc000000015000000017fffffffe6000000022000000000000000001",
            INIT_52 => X"ffffffff0000000027fffffffd4ffffffffe000000036fffffffecfffffffe900000000a",
            INIT_53 => X"fffffffff000000007ffffffff2000000016000000008ffffffff6000000047000000021",
            INIT_54 => X"fffffff7afffffffd1fffffffbdfffffff9cfffffff86000000001ffffffff8ffffffffd",
            INIT_55 => X"000000003fffffffd1ffffffff2fffffffe2fffffffe8ffffffff5000000015fffffffbe",
            INIT_56 => X"fffffffe8000000000000000007ffffffff5ffffffffeffffffff2ffffffff4000000000",
            INIT_57 => X"fffffffccfffffffad000000000fffffffe4000000017fffffffecffffffff2ffffffffe",
            INIT_58 => X"fffffffd9fffffffd6fffffffe3fffffffd0fffffffdffffffffaefffffffd4fffffffe3",
            INIT_59 => X"00000001700000001300000000800000002f000000016000000011ffffffff5fffffffeb",
            INIT_5A => X"00000000c00000000200000000c000000002000000012000000010000000026000000033",
            INIT_5B => X"ffffffffaffffffff6fffffffe4ffffffff4fffffffd8fffffffeeffffffff1fffffffde",
            INIT_5C => X"fffffffdafffffffd8fffffffee00000001000000001c000000011ffffffffbfffffffe9",
            INIT_5D => X"00000002400000002e00000001a000000034ffffffffbfffffffc0fffffffbafffffffb0",
            INIT_5E => X"ffffffff9ffffffff0fffffffebfffffffe7ffffffffa00000002d00000001d00000001e",
            INIT_5F => X"000000005000000000ffffffff0ffffffffcffffffffa000000000fffffffef000000015",
            INIT_60 => X"00000000000000000600000000000000002800000000c000000017ffffffff8ffffffffc",
            INIT_61 => X"00000000500000001a00000000400000000b00000002a00000000c000000013fffffffee",
            INIT_62 => X"ffffffff500000001effffffff7000000003ffffffffb000000011ffffffff4000000029",
            INIT_63 => X"00000005400000007a00000002f00000006d00000004f00000003300000001a000000006",
            INIT_64 => X"00000000dffffffff4000000003000000032ffffffffb00000001300000002a000000064",
            INIT_65 => X"00000001effffffff9fffffffed000000023ffffffff7ffffffff8fffffffd5000000010",
            INIT_66 => X"00000000d00000001b000000013ffffffff2ffffffff800000003afffffffff000000003",
            INIT_67 => X"fffffffb1ffffffff6fffffffbbffffffff8ffffffff300000000bffffffffdffffffff1",
            INIT_68 => X"000000006000000015000000018fffffffaffffffffd2fffffffeafffffffb9fffffffa3",
            INIT_69 => X"000000020000000027fffffffffffffffff8000000015000000000fffffffe8fffffffdd",
            INIT_6A => X"fffffffdffffffffd3ffffffff6ffffffff5000000001000000021000000012ffffffffc",
            INIT_6B => X"00000003700000001500000001400000001afffffffeeffffffff5000000006ffffffff1",
            INIT_6C => X"ffffffff000000000a00000000fffffffffaffffffffeffffffff9ffffffff9000000000",
            INIT_6D => X"ffffffff6fffffffcffffffff86fffffffacfffffff99fffffff8bfffffffb6000000006",
            INIT_6E => X"000000014000000007000000002000000042000000047fffffffdcfffffffd6fffffffca",
            INIT_6F => X"000000009ffffffff1000000044000000016ffffffffbfffffffd7fffffffe8fffffffe8",
            INIT_70 => X"00000001c000000021000000030000000030fffffffcffffffffe0000000001fffffffe3",
            INIT_71 => X"00000001e00000003e00000001900000000fffffffffe00000001100000004d000000006",
            INIT_72 => X"fffffffd7fffffffdc00000001300000001800000000700000001f00000001f00000001f",
            INIT_73 => X"ffffffffa000000003fffffffebfffffffd1fffffffe5fffffffd7ffffffff0fffffffc2",
            INIT_74 => X"00000000900000001900000002400000000500000001e000000016000000010000000019",
            INIT_75 => X"fffffffd1fffffffd9fffffffeffffffffcbfffffffddffffffff8fffffffe4ffffffffa",
            INIT_76 => X"fffffffe5000000004ffffffffbfffffffc1fffffffeffffffffe4fffffffa2000000000",
            INIT_77 => X"fffffffddfffffffcdffffffffbfffffffcbfffffffbcfffffffe7fffffffdf000000009",
            INIT_78 => X"fffffffe3fffffffeb000000013fffffffd0fffffffc9fffffffe6fffffffdf00000000d",
            INIT_79 => X"ffffffff5000000011ffffffff4000000000fffffffddfffffffd6000000012fffffffe1",
            INIT_7A => X"fffffffd4fffffffd3fffffffcf000000018000000011ffffffff900000000f000000001",
            INIT_7B => X"fffffffebffffffffb000000006fffffffeefffffffc9fffffffe1fffffffd2ffffffff4",
            INIT_7C => X"fffffffc3fffffffd6000000000ffffffff3fffffffebffffffffeffffffff3000000012",
            INIT_7D => X"000000024000000039ffffffff400000000600000000afffffffd6ffffffff6fffffffe7",
            INIT_7E => X"fffffffbffffffffc7fffffffbefffffffc5fffffffa6fffffffa7fffffffeafffffffd5",
            INIT_7F => X"00000001cfffffffe3fffffffef000000001fffffffdcfffffffbffffffffdefffffffb7",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000007fffffffe9fffffffe800000002700000000e00000001efffffffe6000000000",
            INIT_01 => X"00000002700000000f000000006ffffffffe000000008fffffffef000000000fffffffaa",
            INIT_02 => X"fffffffef00000002000000000ffffffffeb00000002f000000017ffffffff9000000022",
            INIT_03 => X"fffffffffffffffffcffffffff8000000019000000016ffffffff9000000003000000010",
            INIT_04 => X"fffffffdafffffffc200000001600000001a00000000100000000c00000000800000000a",
            INIT_05 => X"000000018ffffffffdfffffffeb00000000cfffffffe4ffffffff5fffffffccfffffffc5",
            INIT_06 => X"ffffffffa00000000cffffffff6fffffffef00000001500000001900000001100000000a",
            INIT_07 => X"fffffffdefffffffa4000000005ffffffff2fffffffb7fffffffff00000002bfffffffed",
            INIT_08 => X"ffffffff5000000005ffffffff2fffffffff00000002500000002a000000010000000006",
            INIT_09 => X"ffffffffaffffffff3ffffffff000000000fffffffffbfffffffe7000000005fffffffe6",
            INIT_0A => X"000000008fffffffe5fffffffe0fffffffc8fffffffebffffffff8000000009ffffffff3",
            INIT_0B => X"00000000800000003700000001300000001c000000004000000000fffffffbeffffffff6",
            INIT_0C => X"fffffffd9000000005ffffffffa000000012fffffffadfffffffe3ffffffff2000000000",
            INIT_0D => X"000000032000000019fffffffcb000000002fffffffe1fffffffdfffffffff2fffffffd6",
            INIT_0E => X"00000000000000001700000001affffffff800000001100000001fffffffff800000000c",
            INIT_0F => X"000000004ffffffffd00000002affffffffd000000016000000012000000000fffffffeb",
            INIT_10 => X"fffffffe900000000000000000a00000000300000000d000000014fffffffeefffffffee",
            INIT_11 => X"ffffffff500000000a00000001c00000000500000003e00000000f000000016000000017",
            INIT_12 => X"00000000e00000001bffffffffc000000001000000000fffffffe9000000003000000000",
            INIT_13 => X"00000000600000003200000000ffffffffe3fffffffce00000001c00000000affffffff4",
            INIT_14 => X"00000000b000000002ffffffffcfffffffee00000000000000000b00000002ffffffffe7",
            INIT_15 => X"000000003000000018ffffffff7000000007ffffffffc000000022000000008ffffffffb",
            INIT_16 => X"00000001b000000000000000022000000004fffffffef000000009fffffffeefffffffed",
            INIT_17 => X"fffffffea00000000fffffffffffffffffee00000001800000000100000000300000000f",
            INIT_18 => X"000000050000000018000000048000000031000000017fffffffe5000000025000000000",
            INIT_19 => X"000000001000000028fffffffdc00000003400000001bfffffffc7fffffffdd00000001e",
            INIT_1A => X"fffffffa9fffffffd8ffffffffefffffffedffffffff2000000022000000011ffffffff7",
            INIT_1B => X"fffffffe500000000dffffffff900000001100000000000000001bfffffffd0fffffffe2",
            INIT_1C => X"fffffffcafffffffd300000002cffffffff000000000dffffffff2000000009fffffffe6",
            INIT_1D => X"fffffffe7000000024000000026000000023fffffffebfffffffd4fffffffc4fffffffc8",
            INIT_1E => X"00000002000000002b000000014000000013ffffffff9ffffffff9000000008fffffffe1",
            INIT_1F => X"fffffffddffffffff2000000043ffffffff700000001100000001900000001bffffffff7",
            INIT_20 => X"00000004a00000003e00000003d00000002cfffffffdffffffffe5fffffffecfffffffde",
            INIT_21 => X"fffffffc6fffffffc2fffffffbe000000000ffffffff8fffffffe4000000021000000046",
            INIT_22 => X"fffffffeffffffffd100000000c00000001cfffffffecfffffffb4fffffffd1fffffffc7",
            INIT_23 => X"fffffffb6ffffffff6ffffffffefffffffe200000000f000000025000000021fffffffdf",
            INIT_24 => X"ffffffff8000000031000000002fffffffd3fffffffdefffffffe1000000003ffffffffa",
            INIT_25 => X"ffffffffafffffffe9ffffffff5fffffffff00000000dfffffffcdfffffffe9fffffffba",
            INIT_26 => X"00000001300000000e00000000a00000000000000001efffffffe5ffffffff0fffffffea",
            INIT_27 => X"00000001600000001e000000021000000004fffffffedffffffffb00000002e000000011",
            INIT_28 => X"00000002d000000052000000003fffffffdc00000000e000000013ffffffff1ffffffff5",
            INIT_29 => X"fffffffccffffffff6ffffffff1ffffffff6fffffffce00000000000000000000000001a",
            INIT_2A => X"000000012000000012fffffffeaffffffff8fffffffe2fffffffe9fffffffd0fffffffac",
            INIT_2B => X"fffffffd4ffffffff5fffffffe1fffffffefffffffff4fffffffaffffffffa5fffffffd8",
            INIT_2C => X"00000002a00000000c00000003400000000effffffff7fffffffd7fffffffb2fffffffbc",
            INIT_2D => X"fffffffdbffffffff5fffffffd0ffffffffc00000000effffffffeffffffffdffffffff7",
            INIT_2E => X"00000001200000000000000000f00000000000000000f00000000ffffffffebfffffffb2",
            INIT_2F => X"00000001dfffffffcaffffffff1ffffffff0000000037ffffffff2fffffffe3000000014",
            INIT_30 => X"ffffffff2000000007000000018fffffffcc00000000000000000ffffffffcdffffffffa",
            INIT_31 => X"fffffffe8fffffffd600000003cffffffff200000000100000003b000000015ffffffffe",
            INIT_32 => X"00000001000000000b00000001e00000001b00000002200000002300000001bffffffffc",
            INIT_33 => X"fffffffe8fffffffeefffffffcc00000000b000000000fffffffe300000001c000000029",
            INIT_34 => X"000000002000000015ffffffffcffffffff400000000e00000001a00000000600000000c",
            INIT_35 => X"00000004200000003e00000004000000004300000002a00000004b000000033ffffffff9",
            INIT_36 => X"fffffffbcfffffff8afffffffbcffffffff5fffffffbaffffffff000000003a000000038",
            INIT_37 => X"fffffffc0fffffffdefffffffe3fffffffdffffffffdefffffffdafffffff94fffffffbe",
            INIT_38 => X"fffffffc4fffffffe6fffffffe2ffffffff7fffffffe5fffffffe4fffffffa2fffffffef",
            INIT_39 => X"fffffffd9fffffffe9ffffffffafffffffe1fffffffbefffffff8600000000cfffffffbb",
            INIT_3A => X"000000042ffffffffe00000004200000002f000000037fffffffff00000000000000000c",
            INIT_3B => X"00000000efffffffeffffffffe0fffffffdc00000000dfffffffebffffffff7000000027",
            INIT_3C => X"000000008000000015000000027000000005000000021000000010ffffffffb000000001",
            INIT_3D => X"00000001000000000c00000000affffffff100000001e00000002200000001500000000a",
            INIT_3E => X"fffffffcb000000002000000005fffffffdb00000001b00000000b000000014000000038",
            INIT_3F => X"000000029ffffffff500000002200000000d000000010000000021000000003fffffffdb",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff7ffffffff0fffffffd8ffffffff0ffffffff8000000017ffffffffdfffffffee",
            INIT_41 => X"fffffffeffffffffebfffffffe900000000b00000000a00000001efffffffe4fffffffe7",
            INIT_42 => X"000000016000000021000000013ffffffff200000000cfffffffffffffffff1ffffffff3",
            INIT_43 => X"fffffffe900000000c000000009000000007fffffffed000000032000000031000000014",
            INIT_44 => X"fffffffe400000000600000001000000001effffffffb000000000fffffffedffffffffe",
            INIT_45 => X"000000009000000010ffffffffa000000003000000000fffffffdafffffffe9ffffffffc",
            INIT_46 => X"00000001300000002000000003a000000048ffffffff900000005e00000005d000000033",
            INIT_47 => X"ffffffff700000000000000000500000000affffffffd00000001e00000000e000000025",
            INIT_48 => X"fffffffe600000000dfffffffe3fffffffe8000000000fffffffea00000000d00000000e",
            INIT_49 => X"ffffffff600000000100000001f00000000f00000001dfffffffe4ffffffff8fffffffe8",
            INIT_4A => X"00000000ffffffffeaffffffff5fffffffd2000000019000000014000000014000000008",
            INIT_4B => X"00000000300000001900000001100000000700000000200000001afffffffe7000000018",
            INIT_4C => X"00000001200000001c00000001100000000700000000bfffffffe600000000fffffffffc",
            INIT_4D => X"000000003000000003ffffffff6ffffffff400000001c000000011000000003000000029",
            INIT_4E => X"ffffffff3000000004fffffffd300000000600000000dffffffff9000000004ffffffff1",
            INIT_4F => X"fffffff70fffffff97fffffffc3fffffff94fffffffb7ffffffff7fffffffdefffffffbb",
            INIT_50 => X"00000000400000002300000000f00000001000000002400000002100000000afffffffc0",
            INIT_51 => X"00000000900000002dfffffffd8000000021000000013000000003000000019000000011",
            INIT_52 => X"ffffffffb00000000a00000000900000001800000003200000000600000000afffffffe6",
            INIT_53 => X"fffffffd2ffffffff4fffffffd4ffffffff6fffffffec000000010000000025fffffffed",
            INIT_54 => X"000000001fffffffe9fffffffef000000008fffffffe7fffffffc8000000009fffffffd5",
            INIT_55 => X"fffffffe8ffffffff1fffffffdffffffffea000000004fffffffea000000008000000009",
            INIT_56 => X"ffffffff000000000000000001500000000d000000003000000012000000018fffffffe6",
            INIT_57 => X"000000009000000000ffffffffb00000000300000000e000000003ffffffffc00000000f",
            INIT_58 => X"00000000a00000000300000000300000000bfffffffea000000000fffffffeafffffffeb",
            INIT_59 => X"fffffffd4fffffffe2fffffffc7fffffffefffffffffc00000000400000001100000000a",
            INIT_5A => X"fffffffedfffffff9afffffffabfffffffccfffffffc1fffffffc2fffffffdefffffffd8",
            INIT_5B => X"000000003000000029fffffffd6ffffffff7000000009000000015ffffffffb00000000b",
            INIT_5C => X"fffffffb2fffffffb3fffffffc1fffffff96ffffffffe000000035000000036fffffffe5",
            INIT_5D => X"00000003300000004200000001a000000005000000024000000005fffffffe9fffffffd6",
            INIT_5E => X"fffffffe9fffffffd8fffffffd6ffffffff1fffffffcf000000027000000016000000000",
            INIT_5F => X"00000001b00000002cfffffffeb000000009fffffffe5fffffffdefffffffa3fffffffbf",
            INIT_60 => X"00000003400000000a00000001c00000001e000000000ffffffff700000000f00000000e",
            INIT_61 => X"fffffffe7fffffffcbffffffff6fffffffcafffffffdaffffffff9ffffffffdffffffffa",
            INIT_62 => X"ffffffff8000000007fffffffed000000001ffffffffc000000014000000010fffffffee",
            INIT_63 => X"fffffffedffffffff3fffffffd8ffffffff5000000007ffffffff2fffffffee00000000a",
            INIT_64 => X"00000000c00000000800000000700000001d000000014000000024000000029ffffffff3",
            INIT_65 => X"000000002000000018000000003ffffffffcfffffffc600000001effffffffaffffffff2",
            INIT_66 => X"fffffffd3fffffffd6fffffffdbfffffffda000000001000000000000000005ffffffff9",
            INIT_67 => X"00000003600000000e00000003b00000003000000004dffffffff2ffffffff9000000003",
            INIT_68 => X"fffffffe9fffffffe3fffffffedfffffffc4fffffffec00000000efffffffe7000000018",
            INIT_69 => X"000000000fffffffedfffffffd8fffffffebffffffffdffffffffdffffffff1000000001",
            INIT_6A => X"00000003600000001700000003400000001000000000bfffffffd5000000007000000004",
            INIT_6B => X"000000008fffffffffffffffff100000001b000000006ffffffff5ffffffff4000000016",
            INIT_6C => X"fffffffff000000005ffffffff0fffffffd2ffffffff9fffffffd600000000b000000014",
            INIT_6D => X"000000015fffffffed00000001b00000000cffffffffbfffffffe400000000a00000002a",
            INIT_6E => X"00000001fffffffff400000000d00000000c000000013000000005fffffffefffffffff6",
            INIT_6F => X"fffffffff000000010000000031fffffffeb000000004ffffffff7ffffffff600000001c",
            INIT_70 => X"00000001affffffffd000000014fffffffeefffffffd2fffffffe700000000effffffffa",
            INIT_71 => X"000000003ffffffff7000000006fffffffeb00000002800000001500000000200000000c",
            INIT_72 => X"00000001100000001a00000000dfffffffecffffffff600000000600000001200000000f",
            INIT_73 => X"00000000efffffffc6000000050000000034fffffffcf00000002d00000001dfffffffc4",
            INIT_74 => X"00000002afffffffe6000000000fffffffe2fffffffcbfffffffcdfffffffc900000008d",
            INIT_75 => X"ffffffff3fffffffefffffffff4000000004ffffffff300000000100000002e00000003a",
            INIT_76 => X"ffffffff1fffffffe500000000a000000008fffffffe4000000001000000020000000031",
            INIT_77 => X"00000002afffffffd9ffffffff4ffffffff0000000016000000015fffffffbfffffffff9",
            INIT_78 => X"00000001600000002e000000011fffffffeb000000036000000037fffffffe7000000009",
            INIT_79 => X"00000000e00000002200000001dfffffffe9fffffffd800000000d000000006fffffffea",
            INIT_7A => X"000000025ffffffff800000001000000001bffffffffd00000001e000000025ffffffff3",
            INIT_7B => X"ffffffffa00000002200000001cfffffffd9000000016000000036000000028000000017",
            INIT_7C => X"00000001700000000400000001a00000000a00000000600000000c000000008ffffffffe",
            INIT_7D => X"000000005000000018000000006000000003ffffffff3000000004ffffffff7ffffffff5",
            INIT_7E => X"fffffffe9fffffffeaffffffff0ffffffff3ffffffffa00000000ffffffffed000000030",
            INIT_7F => X"fffffffea000000006fffffffd1fffffffe2ffffffff7ffffffffbfffffffd9000000015",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffdeffffffffafffffffbffffffffe200000004d00000001a00000000200000002c",
            INIT_01 => X"00000000ffffffffecffffffff4fffffffaafffffffa3ffffffffeffffffffffffffffd2",
            INIT_02 => X"000000025000000021ffffffff1fffffffe2fffffffecffffffffbffffffff3000000000",
            INIT_03 => X"fffffffec000000000fffffffc5fffffffc5fffffffd6fffffffa8fffffffa2ffffffff1",
            INIT_04 => X"00000002e00000000efffffffe000000000affffffff0fffffffca00000000700000001b",
            INIT_05 => X"ffffffff3ffffffffbfffffffea000000006000000004000000011000000015000000022",
            INIT_06 => X"000000011fffffffd5000000006000000016fffffffc9fffffffe500000000afffffffe9",
            INIT_07 => X"fffffffe400000002200000001d00000001f00000001600000000afffffffacffffffff2",
            INIT_08 => X"000000008000000007ffffffff9ffffffff6000000000fffffffd5fffffffecfffffffea",
            INIT_09 => X"fffffffd8fffffffe4fffffffe9fffffffe100000000900000000a000000022fffffffef",
            INIT_0A => X"ffffffff5000000023000000018000000006000000002fffffffe1000000001ffffffff9",
            INIT_0B => X"00000000500000000b00000000e00000000600000001600000000b00000001dffffffffd",
            INIT_0C => X"ffffffff8fffffffd1fffffffabfffffffc6fffffffee000000015000000006000000001",
            INIT_0D => X"ffffffff4000000003ffffffff5ffffffff2ffffffffc000000028fffffffedffffffffd",
            INIT_0E => X"00000000d00000000c00000000200000003b000000047000000021000000026000000036",
            INIT_0F => X"ffffffff9ffffffff800000002100000000500000000000000000fffffffff7000000002",
            INIT_10 => X"ffffffff5000000026fffffffdfffffffffb000000027000000023000000006fffffffe2",
            INIT_11 => X"fffffffedffffffff100000001400000000d00000000efffffffc7ffffffff3fffffffb5",
            INIT_12 => X"fffffffe100000001c00000002f000000033ffffffffffffffffd1fffffffbb000000007",
            INIT_13 => X"00000002100000001d000000033000000002fffffffdefffffffc2000000015fffffffcf",
            INIT_14 => X"fffffffd9fffffffec000000023fffffffcbfffffffe000000000dffffffff800000000e",
            INIT_15 => X"ffffffffdfffffffff000000009000000010fffffffd9000000007000000006fffffffff",
            INIT_16 => X"fffffffdafffffffc3fffffff9d00000000f00000001000000000c000000020000000024",
            INIT_17 => X"fffffffc2000000024000000006fffffffb1000000028ffffffff7fffffffe8000000036",
            INIT_18 => X"fffffffee00000000fffffffff4000000009000000005000000003000000004fffffffd8",
            INIT_19 => X"ffffffff200000002a00000000fffffffff1000000026000000022000000019000000001",
            INIT_1A => X"ffffffff6ffffffffbfffffffd0fffffffe4fffffffe7fffffffcc00000002400000000b",
            INIT_1B => X"fffffffe1fffffffe9fffffffd8000000006ffffffff9fffffffd4fffffffeafffffffed",
            INIT_1C => X"ffffffff2ffffffffbfffffffee000000034000000003000000007000000012fffffffef",
            INIT_1D => X"00000000b00000001dfffffffe8fffffffde00000000cffffffff8fffffffecfffffffe9",
            INIT_1E => X"00000000a000000027fffffffd4fffffffadffffffffcffffffffffffffffd9000000002",
            INIT_1F => X"ffffffffb00000001d000000029ffffffff300000002c000000022fffffffe0000000013",
            INIT_20 => X"00000000a00000001600000000dffffffff6000000013000000004000000018000000001",
            INIT_21 => X"00000001000000003500000002800000001300000001bffffffffa000000000000000001",
            INIT_22 => X"00000001200000002d00000001fffffffff400000002100000003bfffffffef000000031",
            INIT_23 => X"fffffffe3fffffffc9fffffffefffffffff8000000013ffffffff9000000001fffffffd9",
            INIT_24 => X"000000000000000013000000006000000028ffffffff1fffffffd6000000004fffffffed",
            INIT_25 => X"ffffffff8fffffffd4fffffffe6fffffffff00000000d000000007000000004000000023",
            INIT_26 => X"ffffffff6fffffffe4fffffffd5fffffffb9ffffffff3fffffffd9fffffffbefffffffe2",
            INIT_27 => X"ffffffffd000000009000000011fffffffe200000000c00000001fffffffff8000000009",
            INIT_28 => X"00000002900000001ffffffffe400000000e000000020000000004000000000ffffffff6",
            INIT_29 => X"ffffffff3fffffffe000000000afffffffedffffffff9ffffffff6ffffffff6000000011",
            INIT_2A => X"ffffffffefffffffeb00000000600000002dfffffffffffffffffcffffffffe00000000e",
            INIT_2B => X"00000001000000002000000001900000001a000000020000000027fffffffd7ffffffff6",
            INIT_2C => X"ffffffffefffffffc400000001800000000300000000500000001effffffff7ffffffffa",
            INIT_2D => X"fffffffe400000000e00000001c000000006fffffffe0fffffffd4ffffffff7000000000",
            INIT_2E => X"fffffffe7fffffffd9fffffffedfffffffd8ffffffff6000000006ffffffff6ffffffff8",
            INIT_2F => X"fffffffd2ffffffff0fffffffe7000000004ffffffffd00000000c00000001dfffffffe8",
            INIT_30 => X"000000011ffffffff4fffffffceffffffff2fffffffe9fffffffbdfffffffe8ffffffff0",
            INIT_31 => X"fffffffd8ffffffffd000000032ffffffff0fffffffdd00000002500000000a000000008",
            INIT_32 => X"000000018fffffffdafffffffce000000017fffffffcb000000010000000030ffffffff3",
            INIT_33 => X"fffffffd800000002f000000012ffffffffeffffffff800000002c00000001d000000001",
            INIT_34 => X"ffffffff900000002b00000003600000001efffffffe6000000012fffffffe9000000017",
            INIT_35 => X"fffffffd1ffffffffd00000000b000000010000000012fffffffe1fffffffd9000000039",
            INIT_36 => X"00000001200000000e000000010000000008ffffffffafffffffe2ffffffffc000000000",
            INIT_37 => X"00000000a00000001100000000bfffffffe6fffffffdefffffffebffffffff6fffffffe7",
            INIT_38 => X"ffffffff1fffffffdeffffffff4fffffffe900000000500000000dfffffffd4ffffffff4",
            INIT_39 => X"000000020ffffffff4ffffffff300000000800000000dffffffff8ffffffffa000000015",
            INIT_3A => X"000000033ffffffffbffffffff100000000dffffffff0ffffffffe00000000c000000000",
            INIT_3B => X"00000000100000001affffffff8000000004000000009ffffffff7fffffffd6000000011",
            INIT_3C => X"fffffffd700000002900000003c00000001100000000c000000022000000010000000003",
            INIT_3D => X"00000000000000000800000000f000000000000000002ffffffffa00000001d000000029",
            INIT_3E => X"000000006fffffffc800000001dffffffff6000000003fffffffd6000000005000000045",
            INIT_3F => X"fffffffd1000000001fffffffecffffffff2fffffffd1ffffffffcffffffff1fffffffe7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000fffffffe5ffffffff8fffffffd5fffffffa9fffffffe7fffffffdcfffffffbe",
            INIT_41 => X"000000000000000004fffffffd800000002b000000003fffffffc1fffffffcdfffffffe1",
            INIT_42 => X"000000005000000009000000002fffffffee000000001ffffffffdffffffff7ffffffffa",
            INIT_43 => X"fffffffe0ffffffff100000001c000000019ffffffffb00000002000000000500000000e",
            INIT_44 => X"ffffffff000000000affffffff2ffffffffe00000000a000000010ffffffff6ffffffff6",
            INIT_45 => X"000000028fffffffc4fffffffeb000000025fffffffdbfffffffc9fffffffdeffffffff5",
            INIT_46 => X"00000000dffffffff0fffffffe6fffffffd6fffffffc7fffffffe3fffffffec000000004",
            INIT_47 => X"ffffffffbfffffffe6fffffffd8fffffffb8ffffffff400000002900000000afffffffdb",
            INIT_48 => X"fffffffeefffffffc8fffffffb7fffffffea000000033ffffffff0fffffffe8000000028",
            INIT_49 => X"fffffffeeffffffffbfffffffda00000004d000000054ffffffff2000000010fffffffea",
            INIT_4A => X"00000001700000001b00000002f000000029000000029fffffffe600000000efffffffe2",
            INIT_4B => X"000000028fffffffc2fffffffc7fffffffd900000001a00000003100000001efffffffff",
            INIT_4C => X"000000011fffffffedffffffff000000001800000003a00000003f000000013000000018",
            INIT_4D => X"00000004900000002efffffffeeffffffffaffffffff1fffffffecffffffff5fffffffcf",
            INIT_4E => X"fffffffc800000003a00000002000000002800000002400000001a000000018000000010",
            INIT_4F => X"000000003000000007ffffffff9fffffffd9fffffffddfffffffcfffffffff5fffffffd7",
            INIT_50 => X"000000028000000000ffffffff4fffffffdcfffffffdc00000000000000002100000000c",
            INIT_51 => X"000000006fffffffedffffffffb00000000900000003500000000cfffffffe400000000a",
            INIT_52 => X"00000002500000000e000000042000000012ffffffff7ffffffff9ffffffff8000000015",
            INIT_53 => X"fffffffe5fffffffa2ffffffff0fffffffc3fffffffee00000001900000002800000006e",
            INIT_54 => X"00000000500000000d00000003f00000002300000000900000003c000000000fffffffbc",
            INIT_55 => X"fffffffedfffffffdb00000000dffffffff5fffffffe5fffffffedffffffffa000000014",
            INIT_56 => X"00000003500000001500000004600000003000000005100000003100000003000000002c",
            INIT_57 => X"fffffffdcffffffffc000000000fffffffffffffffff2ffffffffd00000000500000000e",
            INIT_58 => X"000000001fffffffeefffffffe100000000d000000004ffffffff1fffffffeefffffffcd",
            INIT_59 => X"fffffffff000000000fffffffc0fffffffecfffffffd2fffffffd5000000006fffffffd7",
            INIT_5A => X"000000017fffffffccfffffffe0fffffffdc000000002000000035000000019fffffffdf",
            INIT_5B => X"fffffffbeffffffff9fffffffebffffffff900000003b00000003bffffffff700000001a",
            INIT_5C => X"000000007000000024000000003000000035000000042fffffffdeffffffffa00000000f",
            INIT_5D => X"fffffffcbfffffffeefffffffcbfffffffdc000000001ffffffffb000000013000000012",
            INIT_5E => X"fffffffcf00000000c00000000afffffffed00000002d000000001fffffffecfffffffd5",
            INIT_5F => X"000000018fffffffcc000000018000000040fffffffd8000000000000000034fffffffb9",
            INIT_60 => X"ffffffffc000000004000000005000000045fffffffe2fffffffc900000002300000004b",
            INIT_61 => X"00000003cffffffffaffffffff300000001a00000002dffffffff8fffffffe1fffffffe5",
            INIT_62 => X"00000002300000001400000002d00000004400000001effffffffafffffffbefffffffe1",
            INIT_63 => X"00000000d00000000afffffffd5fffffffefffffffff1000000008fffffffef00000001c",
            INIT_64 => X"00000004800000004300000000c00000003affffffffdffffffff1000000013fffffffda",
            INIT_65 => X"fffffffe8000000002fffffffd5fffffffd7fffffffbd00000002f00000001d00000000d",
            INIT_66 => X"000000003ffffffff700000000d00000002a00000001000000002a000000022fffffffec",
            INIT_67 => X"000000001fffffffeffffffffea000000013fffffffe7ffffffffd00000002c000000018",
            INIT_68 => X"000000007ffffffff7ffffffff200000000a000000008000000000ffffffffa000000000",
            INIT_69 => X"ffffffff5ffffffff5ffffffff6000000002ffffffff4000000013fffffffed000000012",
            INIT_6A => X"ffffffff0ffffffff3ffffffff900000000a000000007ffffffffcffffffffaffffffff3",
            INIT_6B => X"fffffffff000000000ffffffff500000000e000000000ffffffffbffffffff9000000010",
            INIT_6C => X"000000000fffffffe6fffffffedffffffffd00000000bffffffff4000000007000000002",
            INIT_6D => X"000000003000000000000000005ffffffff9ffffffffffffffffee000000000ffffffffc",
            INIT_6E => X"ffffffff6ffffffffeffffffff1ffffffffcfffffffebffffffff4ffffffff4ffffffff7",
            INIT_6F => X"ffffffff3ffffffff6000000004000000000000000000fffffffecffffffffd000000010",
            INIT_70 => X"ffffffffa000000003000000010000000004fffffffe900000000100000000dffffffff4",
            INIT_71 => X"000000000ffffffffcffffffffbffffffff0ffffffffdfffffffef000000009ffffffff1",
            INIT_72 => X"00000000300000001100000000300000000a00000000a00000000000000000affffffffb",
            INIT_73 => X"000000004ffffffffe000000002ffffffffb000000013ffffffffdffffffff5ffffffff6",
            INIT_74 => X"ffffffff500000000c000000007000000006ffffffff9ffffffffdffffffff1000000017",
            INIT_75 => X"ffffffff7000000002fffffffec00000000f000000007000000000000000000ffffffff3",
            INIT_76 => X"00000000bfffffffeb000000006ffffffffd00000000d000000000000000001000000003",
            INIT_77 => X"00000000effffffffdffffffffbffffffff7ffffffff5ffffffff0000000002fffffffef",
            INIT_78 => X"000000003ffffffff4fffffffecffffffff100000000bffffffff9000000000000000000",
            INIT_79 => X"fffffffea000000011fffffffecfffffffff000000006fffffffeafffffffea000000000",
            INIT_7A => X"000000005ffffffff500000000f00000000cffffffff0fffffffee000000011000000010",
            INIT_7B => X"000000004000000007ffffffff5000000000ffffffff6ffffffff8fffffffeb00000000e",
            INIT_7C => X"ffffffffb000000007ffffffff300000000200000001100000001500000000affffffff1",
            INIT_7D => X"00000000cffffffff3fffffffed00000000e000000003ffffffff0ffffffff9ffffffffa",
            INIT_7E => X"000000004fffffffe8fffffffffffffffff9000000002fffffffff00000000effffffff3",
            INIT_7F => X"ffffffff400000000b000000006ffffffffd000000003ffffffff500000000200000000d",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000dffffffff000000000afffffffeb00000000900000000affffffff4fffffffe9",
            INIT_01 => X"ffffffffdffffffff9000000012fffffffeefffffffe9000000005ffffffffaffffffffc",
            INIT_02 => X"fffffffeafffffffedffffffff3000000004ffffffff0ffffffff2ffffffff4ffffffff1",
            INIT_03 => X"ffffffffe00000000500000000affffffffe000000003ffffffff6ffffffff8ffffffff0",
            INIT_04 => X"000000003ffffffff9ffffffff3000000004fffffffe8ffffffffeffffffff4fffffffe8",
            INIT_05 => X"ffffffff600000000f00000000500000000bffffffff6ffffffffe000000000ffffffffe",
            INIT_06 => X"ffffffffbfffffffefffffffff5000000009ffffffff600000000d000000007000000011",
            INIT_07 => X"ffffffff8000000004000000000ffffffff6fffffffee000000004fffffffebffffffffa",
            INIT_08 => X"ffffffff2ffffffff8000000000ffffffff5000000003ffffffff6ffffffff5000000001",
            INIT_09 => X"000000009fffffffeafffffffec000000007000000000ffffffffcffffffff9fffffffeb",
            INIT_0A => X"000000006000000003ffffffffbffffffff7ffffffff9000000000fffffffeeffffffff3",
            INIT_0B => X"fffffffe9ffffffff4ffffffff3fffffffeeffffffffbffffffff9fffffffff000000008",
            INIT_0C => X"fffffffe9000000006fffffffe7000000008ffffffff8ffffffffeffffffffaffffffff8",
            INIT_0D => X"ffffffffafffffffd5fffffffe9ffffffffd000000002000000015ffffffffdfffffffee",
            INIT_0E => X"00000001f000000014ffffffffcfffffffdfffffffffcfffffffddffffffff3fffffffe4",
            INIT_0F => X"00000001800000003a00000004000000004800000001d00000002800000004300000002e",
            INIT_10 => X"000000030fffffffdaffffffff2ffffffff9fffffffe600000000200000000b00000001e",
            INIT_11 => X"ffffffff7fffffffe0ffffffffb00000003300000003100000002cffffffff000000000b",
            INIT_12 => X"00000000afffffffeafffffffe1000000017fffffffe9fffffffeeffffffffdfffffffe0",
            INIT_13 => X"000000005fffffffe9ffffffff6ffffffff4ffffffff7fffffffd7ffffffffeffffffffe",
            INIT_14 => X"000000000000000027000000020000000026000000022000000013000000004000000018",
            INIT_15 => X"fffffffe900000000d000000001ffffffff400000001b00000001900000001c000000016",
            INIT_16 => X"000000022fffffffe5fffffffc3fffffffdbfffffffe8fffffff9afffffffb2000000006",
            INIT_17 => X"fffffffeffffffffdbffffffff200000000200000002f000000008000000024000000000",
            INIT_18 => X"fffffffc4fffffffd2fffffffe6fffffffc1fffffffc9fffffffe0fffffffe800000000c",
            INIT_19 => X"ffffffffcfffffffe5fffffffce000000001fffffffcffffffffbffffffffeefffffffd5",
            INIT_1A => X"00000000200000000cfffffffed000000010000000021000000013ffffffff5000000003",
            INIT_1B => X"fffffffee00000001600000002e00000000d000000017ffffffffe000000005000000002",
            INIT_1C => X"fffffffeafffffffefffffffff9000000001000000015ffffffff2000000010ffffffff6",
            INIT_1D => X"00000001e000000009000000007ffffffff9ffffffff2fffffffddffffffff2fffffffd1",
            INIT_1E => X"fffffffe0fffffffe5fffffffddfffffffaefffffffaffffffffeffffffffc6fffffffcf",
            INIT_1F => X"ffffffffd000000009fffffffc3000000000fffffffffffffffff7fffffffc7fffffffcd",
            INIT_20 => X"fffffffb1fffffffb1fffffffb8ffffffff400000001b000000001000000007ffffffff8",
            INIT_21 => X"00000002c000000026fffffffec000000009000000028fffffffc7fffffffa3fffffffba",
            INIT_22 => X"000000013ffffffff400000000100000001500000001f000000013000000025000000006",
            INIT_23 => X"fffffffec00000000b000000027ffffffff5fffffffecfffffffdeffffffff1fffffffeb",
            INIT_24 => X"fffffffebfffffffd5000000009ffffffffa00000000900000000400000001300000002b",
            INIT_25 => X"ffffffffe00000001c00000000a000000016000000006fffffffd1ffffffff2ffffffff6",
            INIT_26 => X"fffffffff000000007ffffffff9000000004fffffffffffffffff3000000014000000007",
            INIT_27 => X"ffffffffb000000000ffffffffd00000002900000002c000000019000000030000000020",
            INIT_28 => X"00000002300000002400000000700000002300000002000000004200000002400000000b",
            INIT_29 => X"000000007ffffffffcfffffffc7ffffffff7fffffffbdfffffffb7000000017000000001",
            INIT_2A => X"000000028ffffffffcffffffffbfffffffe200000001700000002000000000bffffffffd",
            INIT_2B => X"00000002400000002400000002e00000004100000001300000000600000000a00000001f",
            INIT_2C => X"00000000cfffffffcafffffffdcffffffff0fffffffee00000000b000000014000000014",
            INIT_2D => X"00000001000000000f00000000100000000800000000d000000003fffffffda000000004",
            INIT_2E => X"fffffffedffffffff2fffffffefffffffff500000001d00000000b000000028000000013",
            INIT_2F => X"00000002200000001400000000b000000010fffffffdcfffffffbe000000002fffffffb8",
            INIT_30 => X"000000006ffffffffdffffffff7ffffffff6000000007000000015ffffffff9000000000",
            INIT_31 => X"000000003000000023ffffffff9000000003000000028000000013000000035fffffffe9",
            INIT_32 => X"00000001500000002e00000002d00000003cffffffffc00000002a000000002000000000",
            INIT_33 => X"fffffffdfffffffff7fffffffe9ffffffff1fffffffc800000001600000003000000002c",
            INIT_34 => X"000000037fffffffcc000000019fffffffeffffffffcf00000000c000000012fffffffee",
            INIT_35 => X"fffffffd8fffffffddfffffffdb00000000200000001d000000014000000014000000035",
            INIT_36 => X"00000003800000004d00000000700000001e00000000e00000002300000002700000000e",
            INIT_37 => X"00000001cfffffffc3fffffffc7ffffffff500000002000000001c00000000e000000033",
            INIT_38 => X"ffffffffbfffffffc9fffffffe8fffffffd3ffffffff7fffffffe9000000016000000033",
            INIT_39 => X"00000001b00000001200000002a00000002c000000001000000007ffffffff800000002e",
            INIT_3A => X"000000026fffffffe7fffffffdf00000002bffffffffe00000001100000002c000000017",
            INIT_3B => X"000000033000000000fffffffdd000000006fffffffeb000000001fffffffef000000000",
            INIT_3C => X"00000001ffffffffe200000000e00000002dffffffff6ffffffff3ffffffff2fffffffe9",
            INIT_3D => X"00000000a00000000400000000400000001bfffffffe0fffffffdc00000000700000001e",
            INIT_3E => X"000000035000000012000000030fffffffe3ffffffff8000000006fffffffdf000000011",
            INIT_3F => X"00000000d00000000cfffffffe9fffffffe5ffffffff2fffffffddfffffffe2000000002",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000600000001800000003e00000001000000002100000003f000000010fffffffed",
            INIT_41 => X"000000001fffffffe7ffffffff6fffffffe5ffffffffa00000001d000000003000000008",
            INIT_42 => X"fffffffd6fffffffd1000000029fffffffef00000000b000000013ffffffffbfffffffe4",
            INIT_43 => X"ffffffff6000000027ffffffff400000000500000002800000001000000001affffffff9",
            INIT_44 => X"000000009000000004000000018ffffffff5000000006ffffffff6fffffffe9fffffffde",
            INIT_45 => X"000000035000000008ffffffff4ffffffffd00000000effffffff1000000007000000024",
            INIT_46 => X"00000000affffffff4ffffffff2ffffffffdffffffff6000000008ffffffff2000000000",
            INIT_47 => X"fffffffe900000000100000000000000000600000000effffffff6fffffffde000000003",
            INIT_48 => X"00000002a00000004a00000000f00000000b00000001c00000001000000001300000000f",
            INIT_49 => X"fffffffe3ffffffff7fffffffef00000002800000001700000000b000000015000000028",
            INIT_4A => X"fffffffe0ffffffffb00000000dffffffff500000000a000000005fffffffd7ffffffff2",
            INIT_4B => X"000000001fffffffdc00000003fffffffff8000000012000000000fffffffcf000000001",
            INIT_4C => X"fffffffbcfffffffdcfffffffe7fffffffefffffffffa00000000bffffffffe000000022",
            INIT_4D => X"000000001fffffffe1000000011fffffffffffffffffd000000013fffffffb5fffffffc7",
            INIT_4E => X"00000000300000001900000001e000000013000000048ffffffffefffffffd8000000019",
            INIT_4F => X"000000001ffffffff4ffffffff6ffffffff1ffffffff3ffffffff4ffffffffe000000011",
            INIT_50 => X"000000019000000025000000020ffffffff100000003a00000001a00000001f000000004",
            INIT_51 => X"ffffffffafffffffe1000000013fffffffdbffffffffbffffffff800000000200000001b",
            INIT_52 => X"00000001efffffffeb000000001fffffffe9ffffffff1ffffffff5ffffffff7fffffffdd",
            INIT_53 => X"fffffffed000000001000000019ffffffff6fffffffd7ffffffff5ffffffffb000000010",
            INIT_54 => X"00000000a000000015000000008000000003000000014fffffffebfffffffee00000000a",
            INIT_55 => X"000000008ffffffffefffffffea000000001fffffffefffffffff0fffffffe7000000000",
            INIT_56 => X"000000008ffffffff5fffffffed00000000500000000a000000002000000000000000002",
            INIT_57 => X"00000000400000000dffffffff400000000bfffffffe8fffffffedfffffffebffffffffd",
            INIT_58 => X"000000007ffffffff6ffffffffd000000002ffffffffd000000002000000011ffffffff3",
            INIT_59 => X"ffffffffcffffffff8ffffffffe00000000200000000a00000000cffffffff6000000015",
            INIT_5A => X"00000000700000000b000000003fffffffff000000005fffffffe600000000bffffffffe",
            INIT_5B => X"000000007000000006fffffffe5ffffffff1ffffffff4ffffffff4000000000fffffffff",
            INIT_5C => X"000000001ffffffff6ffffffffbffffffff8fffffffeaffffffffc000000001fffffffeb",
            INIT_5D => X"ffffffff2ffffffff5fffffffe7ffffffff0fffffffef000000005000000009ffffffff1",
            INIT_5E => X"fffffffe8fffffffe7000000000000000009fffffffebffffffff100000000cfffffffed",
            INIT_5F => X"fffffffee00000000a000000001000000009000000005fffffffe7ffffffff9fffffffe5",
            INIT_60 => X"ffffffff500000000fffffffffdffffffff900000000afffffffeeffffffff9ffffffffd",
            INIT_61 => X"ffffffff1ffffffffcfffffffebfffffffecffffffffd000000000000000000ffffffff9",
            INIT_62 => X"ffffffff4000000009fffffffeffffffffffffffffffa00000000900000000bfffffffe5",
            INIT_63 => X"ffffffff5fffffffe6fffffffe6000000000ffffffffcffffffffe000000002ffffffff5",
            INIT_64 => X"ffffffff0000000002000000004000000004ffffffff1000000000000000001fffffffe9",
            INIT_65 => X"000000001ffffffff9ffffffff1ffffffff100000000f00000000f000000007000000004",
            INIT_66 => X"000000007ffffffff100000000000000000b000000000ffffffff5ffffffff3ffffffffc",
            INIT_67 => X"fffffffeaffffffff9000000002fffffffeb00000000100000000b000000003ffffffffc",
            INIT_68 => X"000000000000000002fffffffec00000000800000000dffffffff5fffffffee000000009",
            INIT_69 => X"ffffffff3fffffffffffffffff2ffffffffc00000000700000000f00000000ffffffffec",
            INIT_6A => X"fffffffec00000000bffffffff9ffffffff2ffffffff6fffffffe3ffffffffeffffffff6",
            INIT_6B => X"00000000500000000efffffffeb000000000ffffffff0fffffffe3fffffffedffffffff8",
            INIT_6C => X"00000000d000000000fffffffec00000000efffffffeeffffffff600000000d000000007",
            INIT_6D => X"ffffffff0000000007fffffffedffffffff4ffffffff8fffffffef000000004fffffffff",
            INIT_6E => X"000000005fffffffee000000007ffffffff9fffffffeaffffffff0000000000000000004",
            INIT_6F => X"00000000b000000007fffffffe4000000004ffffffff2fffffffe7000000002000000000",
            INIT_70 => X"ffffffff4fffffffdefffffffdffffffffe6000000003000000000fffffffe1fffffffed",
            INIT_71 => X"ffffffffdffffffff3ffffffff6000000013000000006ffffffff8fffffffeffffffffe0",
            INIT_72 => X"ffffffff8ffffffffa000000001ffffffff3fffffffe9ffffffff0000000000ffffffff6",
            INIT_73 => X"ffffffffdfffffffe6000000007ffffffff4fffffffe7000000005fffffffecfffffffeb",
            INIT_74 => X"00000000bfffffffecffffffffffffffffe3000000005000000013ffffffff2000000007",
            INIT_75 => X"fffffffe7ffffffffbffffffffcfffffffe5ffffffff3000000005ffffffff4000000010",
            INIT_76 => X"ffffffff4ffffffffd000000006fffffffebffffffffeffffffff2ffffffff5000000000",
            INIT_77 => X"000000005fffffffe800000000f000000006fffffffecffffffff9ffffffffdffffffff4",
            INIT_78 => X"000000006ffffffffdffffffffe000000014fffffffed000000012ffffffffdffffffff6",
            INIT_79 => X"00000000300000000a000000003000000009fffffffebffffffffd000000004fffffffef",
            INIT_7A => X"000000011000000004000000005ffffffffdffffffff7fffffffed000000000fffffffff",
            INIT_7B => X"ffffffff7fffffffeffffffffecfffffffeb000000000fffffffe9000000005000000001",
            INIT_7C => X"ffffffffc000000003ffffffff3fffffffeeffffffff2ffffffff7000000009fffffffec",
            INIT_7D => X"000000002fffffffe4fffffffe9fffffffeeffffffff4ffffffff0000000006000000009",
            INIT_7E => X"fffffffe8ffffffff4ffffffff400000000b000000009fffffffe2fffffffeffffffffe4",
            INIT_7F => X"fffffffeaffffffffefffffffecffffffffa000000002000000002ffffffff5ffffffffe",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffecfffffffe7ffffffff5ffffffff1ffffffff6000000005ffffffff9ffffffff3",
            INIT_01 => X"00000000b000000000ffffffffe000000000000000000fffffffe7fffffffef000000007",
            INIT_02 => X"000000008000000008ffffffffefffffffedffffffff6ffffffff0000000006000000003",
            INIT_03 => X"000000005fffffffe3ffffffffcffffffffc000000005000000000000000005000000008",
            INIT_04 => X"fffffffe9fffffffea00000000bffffffff9fffffffeb000000000ffffffff7ffffffff5",
            INIT_05 => X"000000005ffffffffa00000000f000000008000000003fffffffe9ffffffffc00000000e",
            INIT_06 => X"00000000c00000000400000000200000000400000000b00000000f000000008000000009",
            INIT_07 => X"00000000afffffffe9fffffffffffffffff600000000afffffffecffffffffdfffffffe9",
            INIT_08 => X"ffffffffafffffffeb000000006000000008000000000000000006ffffffff2ffffffffe",
            INIT_09 => X"ffffffffcffffffff7ffffffff3000000001ffffffff8000000000ffffffff600000000e",
            INIT_0A => X"fffffffed000000000ffffffff1ffffffffeffffffff600000000c00000001200000000e",
            INIT_0B => X"000000008fffffffedfffffffeaffffffffdffffffff4000000006ffffffff8000000004",
            INIT_0C => X"ffffffffb000000005ffffffff600000000a000000005ffffffffcffffffff7ffffffffc",
            INIT_0D => X"ffffffff9ffffffffcffffffff9fffffffea00000000dffffffffafffffffef000000013",
            INIT_0E => X"fffffffff00000000afffffffec000000002fffffffe500000000afffffffe9ffffffff1",
            INIT_0F => X"000000007ffffffff4000000002fffffffefffffffff2000000003ffffffff5ffffffff0",
            INIT_10 => X"ffffffffbfffffffefffffffff2fffffffebfffffffecffffffff2000000005ffffffff9",
            INIT_11 => X"000000006fffffffed000000000ffffffff1ffffffff6ffffffffe000000000fffffffec",
            INIT_12 => X"ffffffffaffffffff9fffffffe7ffffffffafffffffff00000000400000000b000000005",
            INIT_13 => X"fffffffebffffffffafffffffe600000000fffffffff600000000a000000009ffffffff4",
            INIT_14 => X"fffffffeeffffffff8fffffffe9fffffffeb000000003ffffffff2fffffffeb00000000c",
            INIT_15 => X"ffffffff5fffffffeaffffffff000000000000000000fffffffff9ffffffff3000000004",
            INIT_16 => X"fffffffeafffffffec000000010000000005fffffffe9ffffffffcfffffffe4ffffffff8",
            INIT_17 => X"ffffffff5000000007ffffffffbfffffffeafffffffeeffffffff5ffffffffaffffffff1",
            INIT_18 => X"ffffffff5fffffffe5fffffffeeffffffffaffffffff9ffffffff5000000009fffffffef",
            INIT_19 => X"ffffffffafffffffec000000003ffffffff100000000e000000002000000003fffffffeb",
            INIT_1A => X"fffffffeefffffffeeffffffff3ffffffffa000000000ffffffff5000000005ffffffffa",
            INIT_1B => X"ffffffff7fffffffee00000000dffffffff9fffffffffffffffffefffffffff000000006",
            INIT_1C => X"fffffffedffffffffaffffffff7000000008fffffffe9000000011000000008000000000",
            INIT_1D => X"000000016ffffffff6fffffffeefffffffdc00000001e00000002d000000002000000000",
            INIT_1E => X"ffffffff400000002600000003200000000500000002e00000002200000000000000000c",
            INIT_1F => X"fffffffc9ffffffff2fffffffd4fffffffe9ffffffffdffffffff9000000031000000035",
            INIT_20 => X"00000003efffffffd9ffffffffb00000001efffffffb3fffffffa7000000012fffffffa9",
            INIT_21 => X"ffffffff200000000b00000000b00000000a00000000a000000038ffffffffc00000000b",
            INIT_22 => X"00000002200000002afffffffe2fffffffe8fffffffe9000000017000000029000000016",
            INIT_23 => X"fffffffe1fffffffb7fffffffecfffffffe4fffffffea000000003ffffffffa00000000f",
            INIT_24 => X"00000002d00000001500000003affffffff3000000010fffffffdf000000018fffffffff",
            INIT_25 => X"00000000f000000003ffffffff0fffffffe1000000007ffffffff200000001a000000035",
            INIT_26 => X"000000016000000026ffffffffcfffffffe9000000022fffffffd500000000d00000000e",
            INIT_27 => X"fffffffe4fffffffbefffffffd300000000100000002e00000000400000002affffffff8",
            INIT_28 => X"fffffffe000000001800000000e000000026ffffffffb00000000cffffffff7000000013",
            INIT_29 => X"ffffffffdfffffffddfffffffea000000001000000006fffffffc9000000012ffffffff5",
            INIT_2A => X"000000013000000000fffffffdc000000013000000008000000015000000018000000007",
            INIT_2B => X"00000000c000000038ffffffff5000000015ffffffffa000000006ffffffffffffffffd6",
            INIT_2C => X"fffffffecfffffffe7ffffffff3ffffffffcffffffffe000000018fffffffff000000004",
            INIT_2D => X"000000020000000005fffffffd100000002affffffff1fffffffe4000000015000000003",
            INIT_2E => X"00000000effffffff4fffffffd9fffffffd2fffffffbd000000014ffffffff2fffffffc6",
            INIT_2F => X"00000000000000001afffffffe9000000002000000023000000001ffffffffefffffffcb",
            INIT_30 => X"00000003fffffffffc00000000a000000012ffffffff7fffffffc600000000500000000c",
            INIT_31 => X"00000000900000001d00000001a00000002e000000016fffffffe5fffffffdcfffffffce",
            INIT_32 => X"ffffffff000000002a00000001bfffffffe3ffffffff100000000dffffffff900000000b",
            INIT_33 => X"00000000a00000002d00000003100000001900000001cfffffffed000000013000000000",
            INIT_34 => X"000000026000000018ffffffff700000000efffffffec00000000300000000d000000005",
            INIT_35 => X"000000034ffffffffc00000001c00000000cffffffffdfffffffff00000001700000000a",
            INIT_36 => X"fffffffeeffffffff4fffffffefffffffffc000000008000000006fffffffe6000000014",
            INIT_37 => X"fffffffe4fffffffaaffffffff4fffffffdbfffffffe900000001e00000002d000000016",
            INIT_38 => X"000000005fffffffeb00000000dffffffffe000000013000000003ffffffff2fffffffd3",
            INIT_39 => X"000000035000000008ffffffff9000000018fffffffe6ffffffff6fffffffe3ffffffff8",
            INIT_3A => X"000000010000000017ffffffff100000001d00000001f000000019fffffffffffffffff9",
            INIT_3B => X"ffffffff8fffffffafffffffff8ffffffff8fffffffed00000001dfffffffe900000000d",
            INIT_3C => X"000000000000000006ffffffff8fffffffbffffffffcffffffffdafffffffcdffffffff0",
            INIT_3D => X"000000003fffffffcffffffffeffffffffff00000000900000002b00000000dfffffffeb",
            INIT_3E => X"00000000100000000c000000008000000015fffffffda000000000fffffffe8ffffffff9",
            INIT_3F => X"000000007000000001fffffffe1000000017ffffffff300000000e00000001cfffffffd7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff400000000cfffffffef00000000d000000007ffffffff9ffffffffe00000000c",
            INIT_41 => X"fffffffe1fffffffedffffffffefffffffdcfffffffe4fffffffe300000000200000000e",
            INIT_42 => X"fffffffedffffffff7fffffffe8fffffffdf000000002fffffffefffffffff000000000a",
            INIT_43 => X"000000009ffffffff9ffffffffdfffffffe9000000004ffffffff9fffffffee00000000d",
            INIT_44 => X"ffffffff5ffffffff0ffffffff4fffffffe4fffffffebfffffffd4fffffffedffffffff7",
            INIT_45 => X"ffffffff900000000ffffffffed000000000000000003ffffffffeffffffffa00000000c",
            INIT_46 => X"000000002fffffffedfffffffe9000000001000000000ffffffff4000000004000000001",
            INIT_47 => X"ffffffff7ffffffff2000000000fffffffebfffffffeeffffffffbfffffffe5000000003",
            INIT_48 => X"ffffffffd000000007fffffffe9ffffffff4000000006fffffffebffffffff0000000002",
            INIT_49 => X"000000008fffffffe9fffffffecffffffffdfffffffeb00000000a000000000ffffffff6",
            INIT_4A => X"00000000dfffffffe8ffffffff8000000007ffffffff2000000003000000009ffffffff1",
            INIT_4B => X"ffffffff3ffffffff1ffffffffe00000000dffffffff5ffffffff5000000016fffffffff",
            INIT_4C => X"ffffffff8fffffffe9000000013000000012000000000000000004fffffffe8fffffffea",
            INIT_4D => X"ffffffff6fffffffea00000000f000000006000000005fffffffe9ffffffffdfffffffe6",
            INIT_4E => X"ffffffff1fffffffe4000000005ffffffff1ffffffffeffffffffefffffffedfffffffe4",
            INIT_4F => X"00000001100000000b00000000affffffff7000000001000000000fffffffe8000000002",
            INIT_50 => X"fffffffeeffffffffdfffffffe5ffffffff4fffffffebffffffff3fffffffe9fffffffee",
            INIT_51 => X"ffffffff800000000000000000cffffffff9ffffffff7fffffffed000000003ffffffff9",
            INIT_52 => X"00000002000000000800000000cffffffffeffffffff7ffffffffb000000010000000016",
            INIT_53 => X"000000001ffffffffd000000000000000011000000014000000019ffffffffd000000000",
            INIT_54 => X"ffffffffaffffffff9ffffffffd000000011ffffffff5000000005000000004ffffffff6",
            INIT_55 => X"fffffffe6ffffffff1fffffffeb000000000fffffffe8000000000000000002ffffffff6",
            INIT_56 => X"fffffffeffffffffeffffffffecfffffffe0000000002ffffffff7fffffffe8fffffffff",
            INIT_57 => X"000000000fffffffe0ffffffff5fffffffe3fffffffec000000000ffffffff4fffffffe0",
            INIT_58 => X"fffffffe6fffffffe0000000008000000002ffffffffdffffffff2fffffffebffffffff7",
            INIT_59 => X"00000000bffffffff3000000020ffffffffd00000000cffffffff900000000fffffffff7",
            INIT_5A => X"000000008fffffffed000000006000000000000000000000000009000000012ffffffffa",
            INIT_5B => X"00000000c000000000fffffffe6fffffffe8fffffffe9fffffffdcffffffff4ffffffff1",
            INIT_5C => X"fffffffebfffffffeaffffffff0fffffffe6fffffffd9ffffffffc00000000bfffffffdb",
            INIT_5D => X"ffffffffc00000000f000000012000000011ffffffffaffffffff3fffffffedfffffffed",
            INIT_5E => X"fffffffe3ffffffff8ffffffff0000000008000000004fffffffe600000000efffffffe5",
            INIT_5F => X"ffffffff7ffffffff4000000002fffffffe8ffffffff0ffffffffeffffffff8ffffffffa",
            INIT_60 => X"ffffffff1000000000ffffffff6ffffffff5fffffffec000000003000000001ffffffffa",
            INIT_61 => X"00000000700000000affffffff0ffffffff1fffffffea000000009ffffffffffffffffea",
            INIT_62 => X"fffffffe3ffffffffeffffffff9ffffffff2ffffffffa000000008fffffffebffffffff0",
            INIT_63 => X"ffffffffffffffffe9fffffffebffffffff9ffffffffc00000000effffffff9ffffffffa",
            INIT_64 => X"00000001a00000001800000000e000000007000000004fffffffee00000001a000000019",
            INIT_65 => X"00000005700000003a00000006200000004a00000004200000003c00000001c000000005",
            INIT_66 => X"fffffffaefffffffb6fffffffc0ffffffff7fffffffef000000000fffffffc6000000006",
            INIT_67 => X"ffffffff4fffffffe5000000012ffffffff5fffffffe5fffffff74fffffffb8fffffff83",
            INIT_68 => X"fffffffdcffffffffd000000006ffffffffd00000006300000000f00000001b00000001c",
            INIT_69 => X"ffffffffa00000001800000001afffffffbefffffff63fffffffebfffffffc4fffffffbc",
            INIT_6A => X"00000000affffffff600000005400000003400000002afffffffedfffffffe0000000004",
            INIT_6B => X"000000009000000000fffffffe5000000000000000000000000008000000012ffffffff4",
            INIT_6C => X"00000000700000002d000000016000000006ffffffff4ffffffffcffffffffa000000011",
            INIT_6D => X"00000000900000002c00000001400000003a000000019000000030000000014000000016",
            INIT_6E => X"000000007fffffffb0fffffffe0ffffffff5fffffffc3ffffffff1fffffffe5fffffffbb",
            INIT_6F => X"fffffffff00000002a000000047000000002000000024000000025ffffffff1ffffffff5",
            INIT_70 => X"fffffff84fffffffc9fffffffb5ffffffff5ffffffffdfffffff6efffffff9e000000023",
            INIT_71 => X"00000000400000000efffffffeefffffffddfffffffdffffffffc1ffffffffefffffffcb",
            INIT_72 => X"fffffffdc00000002300000000f00000006500000003100000001dffffffff9fffffffed",
            INIT_73 => X"fffffffd6000000012ffffffff9ffffffffbffffffffdffffffff900000001f000000031",
            INIT_74 => X"ffffffffc00000003100000001f00000000afffffffa8fffffffe4ffffffff0fffffffd7",
            INIT_75 => X"000000022000000016000000003fffffffe7fffffffde000000014fffffffd6fffffffe1",
            INIT_76 => X"000000002ffffffff6fffffffed00000000700000002c00000001400000004900000000a",
            INIT_77 => X"00000000100000001700000002100000002200000000b00000000f000000028fffffffea",
            INIT_78 => X"fffffffe8000000016fffffffe100000000efffffffda000000002000000015ffffffffc",
            INIT_79 => X"000000002ffffffff900000001500000000e00000001bffffffffb000000018ffffffff6",
            INIT_7A => X"fffffffdcffffffffdffffffff900000000e000000013000000013000000009000000002",
            INIT_7B => X"ffffffffd00000000000000001d000000001ffffffff6ffffffff8ffffffff6fffffffea",
            INIT_7C => X"00000000cfffffffe8000000009ffffffffbffffffff800000000a000000000ffffffff1",
            INIT_7D => X"000000021000000000000000009ffffffff3fffffffee00000000fffffffffd00000000f",
            INIT_7E => X"fffffffc7fffffffcdfffffffebfffffffe4fffffffe600000001effffffff3000000001",
            INIT_7F => X"fffffffb5ffffffff5fffffff9bfffffffd6fffffffb8ffffffffffffffffb8fffffffe6",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000c00000000700000002a00000002000000003200000002400000002ffffffffa2",
            INIT_01 => X"fffffffdeffffffffbffffffffafffffffecffffffff900000002efffffffe9ffffffff4",
            INIT_02 => X"ffffffff800000000efffffffeaffffffffeffffffff300000000ffffffffffffffffff7",
            INIT_03 => X"fffffffe400000001dfffffffd0ffffffff000000000e00000000f00000000cffffffff0",
            INIT_04 => X"fffffffd3fffffffd2fffffffe000000000e00000001900000003bffffffffaffffffff3",
            INIT_05 => X"00000000fffffffff100000001400000000b000000013fffffffcffffffffc0fffffffbb",
            INIT_06 => X"00000000e00000001a00000000b000000009000000017fffffffe6ffffffff9000000001",
            INIT_07 => X"00000001b00000001affffffffdffffffffefffffffff000000005ffffffff6fffffffe5",
            INIT_08 => X"00000001000000000e000000008ffffffffc000000004000000014000000018ffffffffc",
            INIT_09 => X"fffffffeffffffffefffffffff7000000017ffffffffd000000021000000012000000002",
            INIT_0A => X"fffffffc4fffffffd2fffffffeefffffffccfffffffedffffffff900000000cfffffffd0",
            INIT_0B => X"00000001900000002f00000000700000000000000001afffffffcbfffffffd5000000003",
            INIT_0C => X"fffffffe5fffffffe0fffffff96ffffffff3ffffffff000000002100000003b00000002c",
            INIT_0D => X"fffffffc4ffffffff2fffffffcafffffffe6fffffffeafffffffd9fffffffcffffffff94",
            INIT_0E => X"000000000000000016000000031000000040fffffffdfffffffff5000000009fffffffe9",
            INIT_0F => X"fffffffdbfffffffeefffffffedfffffffe200000001dfffffffee000000009000000013",
            INIT_10 => X"00000001fffffffffc00000000f000000029000000013ffffffff6000000005fffffffd3",
            INIT_11 => X"fffffffffffffffff9fffffffea00000000500000004d00000000f00000003200000004d",
            INIT_12 => X"fffffffe9fffffffdaffffffff400000000affffffff5fffffffea000000002ffffffff6",
            INIT_13 => X"fffffffe0fffffffd7000000024fffffffff000000021000000025fffffffe3ffffffff6",
            INIT_14 => X"00000001dffffffffefffffffecfffffffeb000000000fffffffe1000000000ffffffff5",
            INIT_15 => X"ffffffff3ffffffffbfffffffdfffffffff3ffffffffeffffffffbffffffff2000000002",
            INIT_16 => X"fffffffdefffffffe7fffffffde000000017000000018000000015000000029000000016",
            INIT_17 => X"fffffffef000000011000000001ffffffff9000000022000000037000000005000000015",
            INIT_18 => X"000000001000000008000000012ffffffff400000000bffffffff6fffffffe4fffffffd8",
            INIT_19 => X"00000001200000000d000000001000000019000000019fffffffe9fffffffe0fffffffda",
            INIT_1A => X"000000006ffffffff400000002600000002800000002e00000002600000003900000005f",
            INIT_1B => X"000000008000000026ffffffffc00000001200000001100000000b000000009000000024",
            INIT_1C => X"ffffffff0ffffffff8fffffffecfffffffb4fffffffd0ffffffff6fffffffe8fffffffeb",
            INIT_1D => X"fffffffe100000000efffffffe5fffffffee000000000000000019fffffffeefffffffea",
            INIT_1E => X"fffffffbffffffffd8fffffffe7fffffffe700000002e000000022fffffffe5ffffffffd",
            INIT_1F => X"fffffffdefffffffefffffffff600000002a00000001cfffffffd8fffffffe8fffffffe6",
            INIT_20 => X"fffffffeaffffffffe000000042000000040ffffffff8fffffffd8fffffffdcfffffffc1",
            INIT_21 => X"000000040ffffffff7fffffffeafffffffd3000000004fffffffeeffffffff2fffffffd1",
            INIT_22 => X"ffffffff6ffffffff6ffffffffeffffffffdfffffffe500000001700000000a000000019",
            INIT_23 => X"00000001e000000000fffffffd2ffffffffe00000004cfffffffbffffffffdbffffffffa",
            INIT_24 => X"00000000100000000800000000dffffffff0ffffffff1fffffffe5000000005000000017",
            INIT_25 => X"00000000500000000500000002200000001300000000efffffffff00000000a000000005",
            INIT_26 => X"fffffffeeffffffffafffffffcdfffffffd8fffffffddffffffff3ffffffff8000000007",
            INIT_27 => X"000000030000000021000000019000000006000000004ffffffff4fffffffeb000000009",
            INIT_28 => X"ffffffff6ffffffffcffffffff3fffffffde00000000100000001f00000000f000000008",
            INIT_29 => X"fffffffeefffffffdb000000012fffffffe7ffffffff6fffffffe600000000dffffffff4",
            INIT_2A => X"fffffffe300000001800000000cffffffff4ffffffff4fffffffe5fffffffb0fffffffd4",
            INIT_2B => X"000000012ffffffff900000001800000002f000000011ffffffffb000000017000000002",
            INIT_2C => X"fffffffe8fffffffe300000000affffffff6fffffffdffffffffed000000001ffffffff7",
            INIT_2D => X"fffffff78fffffffb9fffffff9afffffff9bfffffffebffffffff600000001afffffffe8",
            INIT_2E => X"ffffffffc000000006fffffffe0fffffffea000000019000000018fffffffc6fffffff87",
            INIT_2F => X"fffffffc100000000afffffffdcfffffffb300000000200000000e00000001b000000026",
            INIT_30 => X"000000027000000000fffffffee00000000afffffffd6fffffffe9000000011fffffffcc",
            INIT_31 => X"fffffffff00000002200000002900000000a00000002c00000002bfffffffef000000014",
            INIT_32 => X"000000008fffffffefffffffff600000001700000000cffffffff6000000027000000039",
            INIT_33 => X"00000000cffffffff3ffffffff2ffffffffdfffffffe0ffffffff5ffffffff9fffffffeb",
            INIT_34 => X"00000001900000001a00000002600000003800000001bffffffff4000000001000000020",
            INIT_35 => X"ffffffff0fffffffcafffffffeefffffffc9fffffffb8ffffffff6fffffffe4ffffffff4",
            INIT_36 => X"00000000cfffffffe9ffffffff7fffffffff000000005000000011000000001000000003",
            INIT_37 => X"fffffffc7fffffffc3fffffffdcffffffffd000000009000000001ffffffffeffffffff9",
            INIT_38 => X"fffffffd000000001efffffffed00000000b00000000a00000000effffffff1fffffffda",
            INIT_39 => X"000000005fffffffe1ffffffff4ffffffffafffffffe3fffffffd800000002ffffffffdd",
            INIT_3A => X"00000002800000002200000000dfffffffc8000000010000000020ffffffff1ffffffffd",
            INIT_3B => X"ffffffff2000000003000000002000000003000000006fffffffffffffffffafffffffe3",
            INIT_3C => X"ffffffff0ffffffff0000000012000000013ffffffff200000000e00000003ffffffffe9",
            INIT_3D => X"ffffffffa00000000e000000019ffffffff100000001b00000000f00000000dffffffff5",
            INIT_3E => X"fffffffb0000000004fffffffbbfffffffe0fffffffb4fffffffc4fffffffe2fffffffcc",
            INIT_3F => X"000000002fffffffe400000001100000000000000001100000001400000001efffffffc2",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffedfffffffda00000000700000004c00000004a00000002cfffffffceffffffffa",
            INIT_41 => X"00000000d000000017000000000fffffffe7ffffffffbfffffffdafffffffbbffffffffc",
            INIT_42 => X"00000002200000001cffffffff800000000400000001900000002300000000f00000000b",
            INIT_43 => X"ffffffff9ffffffff7000000007000000000ffffffff2ffffffff9ffffffff8000000004",
            INIT_44 => X"ffffffff700000000000000001a00000000800000000700000000000000000b000000019",
            INIT_45 => X"000000020fffffffef000000022000000000ffffffff5000000007000000005ffffffffc",
            INIT_46 => X"00000000b00000001900000002000000000800000000d000000013ffffffffdffffffff7",
            INIT_47 => X"000000021ffffffff1000000030000000003fffffffebfffffffd9000000010ffffffff3",
            INIT_48 => X"000000017fffffffe1ffffffff5fffffffdb00000000d000000011000000000000000042",
            INIT_49 => X"fffffffef00000000e000000000000000029000000026ffffffffa00000000efffffffed",
            INIT_4A => X"000000000fffffffe8fffffffccfffffffebffffffffcfffffffe3ffffffff6000000026",
            INIT_4B => X"000000019fffffffe600000000000000001d000000005000000021000000006000000009",
            INIT_4C => X"fffffffcc000000021ffffffff4fffffffe800000003affffffffbfffffffd9000000008",
            INIT_4D => X"fffffffe6ffffffffffffffffecffffffffb000000029fffffffff00000002c000000007",
            INIT_4E => X"00000002100000000c00000000600000001400000000efffffffec00000000e000000001",
            INIT_4F => X"fffffffce00000002300000001000000000200000001b00000000e00000003200000001b",
            INIT_50 => X"ffffffffa00000000100000000e000000010ffffffffcfffffffe3ffffffff5fffffffed",
            INIT_51 => X"00000000e00000003200000001600000003600000000e000000015ffffffffdffffffff0",
            INIT_52 => X"00000000c000000011fffffffdd00000001a00000001100000002f000000020000000020",
            INIT_53 => X"00000003b000000018000000007000000015fffffffe800000004200000001c000000015",
            INIT_54 => X"000000010000000015fffffffda00000001c00000000bfffffffeafffffffd6000000007",
            INIT_55 => X"fffffffebfffffffd8fffffffcd000000027000000008fffffffe800000002900000000f",
            INIT_56 => X"ffffffff9fffffffeafffffffe7fffffffc7fffffffb8fffffffeefffffffe4fffffffe7",
            INIT_57 => X"000000022ffffffffcffffffff2ffffffffefffffffb5fffffffb9fffffffaffffffffd5",
            INIT_58 => X"000000015ffffffff9000000011fffffffe5ffffffff1000000012ffffffff500000003a",
            INIT_59 => X"000000001fffffffc8000000011000000009fffffffe8000000002ffffffffbfffffffec",
            INIT_5A => X"000000006000000002ffffffff700000000900000001800000000bfffffffee00000003e",
            INIT_5B => X"00000001affffffffe00000000900000001a00000000dfffffffe900000000d00000000b",
            INIT_5C => X"ffffffff1fffffffb700000000efffffffa8fffffffe5000000013000000029000000003",
            INIT_5D => X"fffffffc9ffffffffbffffffff4fffffffeafffffffcffffffffe2fffffffc0fffffffe7",
            INIT_5E => X"fffffffd5ffffffffafffffffdefffffffbbfffffffc2ffffffffa00000000fffffffff2",
            INIT_5F => X"fffffffbffffffffdffffffffec000000012ffffffffdfffffffe3fffffffccfffffffd8",
            INIT_60 => X"ffffffff0fffffffc9fffffffa5fffffff97ffffffffbfffffff9afffffffc0ffffffff0",
            INIT_61 => X"fffffffbffffffffd7ffffffff2000000001fffffffeafffffffea00000001e000000000",
            INIT_62 => X"fffffff82fffffffcafffffffa9fffffffabfffffffbbfffffffe7fffffffeafffffffcc",
            INIT_63 => X"fffffffd9fffffffe1fffffffabffffffff000000001a000000000fffffffd1fffffffd7",
            INIT_64 => X"000000000000000000fffffffe1000000024ffffffffcffffffffffffffffe6ffffffffd",
            INIT_65 => X"00000001400000000200000001b00000001800000000e00000001cfffffffcffffffffdd",
            INIT_66 => X"00000001700000003000000004500000000ffffffffd7fffffffdf000000013000000003",
            INIT_67 => X"00000003300000003300000000efffffffedfffffffe3ffffffffa00000003e000000036",
            INIT_68 => X"fffffffeffffffffe2fffffffedfffffffedfffffffe0000000014000000035000000011",
            INIT_69 => X"fffffffef00000000e000000001fffffffeb00000000700000000bfffffffe9000000002",
            INIT_6A => X"fffffffe5fffffffcafffffffdd000000015fffffffe3fffffffe200000001bffffffff7",
            INIT_6B => X"00000001a000000031000000016000000032000000024fffffffec00000001d000000008",
            INIT_6C => X"000000005000000006000000016000000000fffffffe700000001300000002bffffffff3",
            INIT_6D => X"000000043000000021000000000000000039000000015000000000ffffffff0ffffffff3",
            INIT_6E => X"fffffffb0fffffffeefffffffdefffffffd2fffffffdb00000003800000001affffffff8",
            INIT_6F => X"00000003000000002c000000000000000008fffffff9efffffffb600000002ffffffffd1",
            INIT_70 => X"fffffffc3fffffff95fffffff9700000001100000000d00000000c000000031000000004",
            INIT_71 => X"000000015000000008fffffffcd000000004000000022fffffff76fffffff90fffffffc5",
            INIT_72 => X"ffffffff4fffffffcffffffffe300000000400000000d000000031000000015000000032",
            INIT_73 => X"00000001fffffffff4ffffffffb00000001a00000002b00000001100000004400000000c",
            INIT_74 => X"000000000000000001ffffffff3000000002fffffffe1fffffffef000000013000000013",
            INIT_75 => X"fffffffeafffffffa7fffffffbcfffffffd0fffffff9afffffffcefffffffe6000000000",
            INIT_76 => X"000000003fffffffde00000000bfffffffcafffffffea000000004ffffffff6fffffffe0",
            INIT_77 => X"000000011fffffffe4ffffffff1ffffffffbfffffffeefffffffe1ffffffffe000000002",
            INIT_78 => X"000000004fffffffc9fffffffd8ffffffff1ffffffffa000000005fffffffe2000000016",
            INIT_79 => X"00000002e00000002d00000000ffffffffe5fffffffdafffffffd6fffffffe5ffffffff0",
            INIT_7A => X"fffffffdd000000014ffffffffdffffffffc00000002500000002000000001c00000001f",
            INIT_7B => X"ffffffffb000000014ffffffffb000000022000000005fffffffec00000000efffffffca",
            INIT_7C => X"fffffffe300000000e00000001200000001800000000f000000029fffffffdf000000017",
            INIT_7D => X"fffffffeefffffffe9ffffffff7fffffffdf000000000ffffffffafffffffe4000000019",
            INIT_7E => X"000000011000000002ffffffffffffffffedffffffff3fffffffe0fffffffed00000000c",
            INIT_7F => X"ffffffff9ffffffff100000001cfffffffcbfffffffe9000000013000000015000000024",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000001c000000017000000037ffffffff900000000500000001a00000000c000000004",
            INIT_01 => X"ffffffff800000002e000000009fffffffe300000000400000000a00000001f000000026",
            INIT_02 => X"fffffffccffffffff1ffffffffe000000009000000004ffffffff900000001e000000001",
            INIT_03 => X"00000002a000000019ffffffff200000000afffffffd6fffffffdffffffffc7fffffffec",
            INIT_04 => X"fffffffeafffffffda00000000700000002400000000800000001c000000021000000021",
            INIT_05 => X"00000000affffffffdfffffffe1000000000fffffffe6fffffffda000000010fffffffd6",
            INIT_06 => X"ffffffff3fffffffe1fffffffc4fffffffd6ffffffffbfffffffd7fffffffcafffffffe6",
            INIT_07 => X"00000000d00000001300000000000000001900000000dfffffffeaffffffffefffffffda",
            INIT_08 => X"000000004000000004fffffffd100000002c000000004000000033000000017000000038",
            INIT_09 => X"00000001c00000001100000001200000001dffffffffb000000047000000000ffffffff4",
            INIT_0A => X"00000001100000000400000001100000001efffffffecffffffffc000000029000000006",
            INIT_0B => X"00000001500000001600000000e00000000d000000019000000011ffffffff7000000012",
            INIT_0C => X"ffffffff1ffffffff7000000009ffffffff2ffffffffd00000000b000000004ffffffff5",
            INIT_0D => X"00000000900000001500000001b00000001100000001a00000000800000000cffffffff0",
            INIT_0E => X"fffffffdbfffffffe5000000021ffffffffdffffffff5000000018ffffffff100000001e",
            INIT_0F => X"00000002200000005b00000006900000004c00000002d00000004700000003d000000063",
            INIT_10 => X"000000004fffffffdcfffffffbffffffffeefffffffbdfffffffd9ffffffffa000000011",
            INIT_11 => X"00000001c000000016000000005ffffffff3000000005ffffffff6ffffffff9fffffffde",
            INIT_12 => X"ffffffff9000000022ffffffffeffffffffb00000000100000002400000003c000000014",
            INIT_13 => X"00000000200000001400000000b00000001100000000c00000002800000002fffffffffa",
            INIT_14 => X"ffffffff9000000000000000007000000023ffffffff2fffffffde00000001a000000001",
            INIT_15 => X"000000014000000014000000003000000021000000041000000015000000026000000011",
            INIT_16 => X"fffffffefffffffffaffffffff000000000dfffffffea00000000e000000012000000011",
            INIT_17 => X"00000001a00000002700000000600000000ffffffffed000000000000000006ffffffff5",
            INIT_18 => X"000000016000000014ffffffff300000000effffffff3ffffffff0000000008fffffffff",
            INIT_19 => X"fffffffddfffffffebffffffff6fffffffcefffffffd7ffffffffe000000008ffffffffe",
            INIT_1A => X"00000000c00000004700000003400000001900000004bffffffffffffffffc0fffffffc0",
            INIT_1B => X"fffffffda00000000900000001fffffffff1ffffffffc000000000000000007000000020",
            INIT_1C => X"ffffffffe00000003d00000002400000002c00000002600000000500000002dfffffffea",
            INIT_1D => X"00000000600000000000000000c00000003c00000000500000004afffffffe6ffffffff5",
            INIT_1E => X"fffffffe7fffffffd4fffffffd1ffffffffb000000000fffffffea00000001d000000032",
            INIT_1F => X"fffffffe8ffffffffdffffffff6fffffffc3000000016000000002fffffffd8ffffffff3",
            INIT_20 => X"00000001f00000000d000000002fffffffecfffffffd1ffffffffa00000000b000000011",
            INIT_21 => X"ffffffffa00000000200000002400000000000000000100000000a00000001400000001b",
            INIT_22 => X"fffffffd9ffffffffe00000003700000001ffffffffe4ffffffff5fffffffdf00000001a",
            INIT_23 => X"00000001e000000006ffffffffbffffffff7fffffffec00000001100000000affffffffa",
            INIT_24 => X"fffffffcf000000017000000007ffffffff2fffffffdf00000001f00000001cffffffff4",
            INIT_25 => X"fffffffcefffffffddfffffffc4fffffffa2fffffffe1fffffffc9fffffffe200000000f",
            INIT_26 => X"ffffffff0000000004000000002fffffffd5fffffffdfffffffffafffffffc7fffffffca",
            INIT_27 => X"fffffffd7000000000fffffffd6ffffffff0fffffffd8ffffffff2fffffffe6000000012",
            INIT_28 => X"fffffff91fffffffeafffffffe8ffffffff9fffffffecffffffffbfffffffe9fffffffff",
            INIT_29 => X"fffffffff000000003000000012fffffffdafffffffc6fffffffbffffffffd7fffffff95",
            INIT_2A => X"00000000300000001600000001600000000efffffffe2fffffff9dfffffffb9fffffffdd",
            INIT_2B => X"fffffffe5000000013fffffffdfffffffff2fffffffcdfffffffedfffffffbcfffffffdf",
            INIT_2C => X"00000000cfffffffff00000003700000002a00000001b00000002600000000c000000015",
            INIT_2D => X"ffffffffafffffffffffffffffffffffffe5fffffffec000000029ffffffff8000000024",
            INIT_2E => X"00000000dffffffff2000000005000000009000000017ffffffff2ffffffff3ffffffffc",
            INIT_2F => X"ffffffffefffffffe8fffffffe900000001d00000000100000000f000000009ffffffffa",
            INIT_30 => X"fffffffc4fffffffa5ffffffffefffffffebfffffffef00000000c00000000a000000007",
            INIT_31 => X"ffffffff2ffffffffcfffffffe8ffffffffbfffffffd9fffffffdfffffffff3fffffffdc",
            INIT_32 => X"00000002900000000700000000c000000019000000011000000016ffffffffffffffffe9",
            INIT_33 => X"000000024fffffffdbfffffffd2fffffffeafffffffc6fffffffff00000001cfffffffe2",
            INIT_34 => X"000000020000000033000000025000000014000000000000000003000000029000000010",
            INIT_35 => X"fffffffddffffffffd000000018fffffffecffffffff7fffffffff00000001e000000031",
            INIT_36 => X"fffffffe7fffffffc6fffffffd1ffffffff4fffffffb9000000001fffffffe9ffffffffd",
            INIT_37 => X"00000001100000002500000002e000000027fffffffdc000000017fffffffb2ffffffff1",
            INIT_38 => X"fffffffb1fffffffd2fffffffe900000000400000001c00000002fffffffff9ffffffff2",
            INIT_39 => X"00000000300000001100000001700000000bfffffffe4000000013fffffffeffffffffe8",
            INIT_3A => X"00000000c00000001500000001900000000d00000001b000000002000000019000000005",
            INIT_3B => X"fffffffeeffffffff1fffffffdcfffffffcdfffffffaaffffffff3fffffffe2fffffffee",
            INIT_3C => X"000000010ffffffffcffffffff7000000005000000002ffffffff4ffffffff1ffffffff5",
            INIT_3D => X"fffffffe1fffffffe6000000009fffffffe9fffffffe700000000100000000f00000000d",
            INIT_3E => X"00000002a00000002d00000000500000003600000001a00000000ffffffffe5ffffffff2",
            INIT_3F => X"000000015000000017fffffffe500000001200000005f000000016000000036000000011",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000001e00000000500000002500000002b00000001400000000dfffffffe6fffffffe8",
            INIT_41 => X"000000002fffffffacfffffffb1000000010ffffffff9000000001ffffffff4000000031",
            INIT_42 => X"fffffffcbfffffffeaffffffff6fffffffe7fffffffc900000001afffffffe8fffffffd0",
            INIT_43 => X"ffffffff500000002700000000c00000002500000000bfffffffeafffffffe4fffffffd1",
            INIT_44 => X"00000000d00000000a00000002c00000003a000000009000000036000000000000000019",
            INIT_45 => X"ffffffff6fffffffcdfffffffefffffffff9fffffffa9fffffffd6000000008fffffffde",
            INIT_46 => X"000000008fffffffdbfffffffeafffffffeefffffffdefffffffccfffffffbeffffffff4",
            INIT_47 => X"000000013ffffffffafffffffd6000000011fffffffe3fffffffeefffffffe6ffffffff1",
            INIT_48 => X"fffffffbbffffffff200000001dffffffff5ffffffff4ffffffff7fffffffdfffffffff6",
            INIT_49 => X"ffffffff7ffffffff3fffffffeafffffffd1fffffffd0fffffffd3fffffffcaffffffffb",
            INIT_4A => X"fffffffeb00000001100000001c000000020000000011ffffffffa000000003000000016",
            INIT_4B => X"fffffffdbfffffffaaffffffff2ffffffffb00000002f00000000d00000001f000000059",
            INIT_4C => X"ffffffff7fffffffdffffffffdc000000002000000002ffffffffdfffffffc7fffffffe6",
            INIT_4D => X"000000002000000023000000001000000011000000007ffffffff100000000000000000a",
            INIT_4E => X"fffffffbf000000016fffffffc5ffffffff9000000048000000003ffffffff5000000042",
            INIT_4F => X"000000007000000010fffffffecfffffffefffffffff2fffffffe4fffffffd6ffffffffa",
            INIT_50 => X"fffffffc7fffffffebffffffff5fffffffd1fffffffc0fffffffdf000000024000000011",
            INIT_51 => X"000000002ffffffff000000001500000000cfffffffed00000000bfffffffe3000000011",
            INIT_52 => X"ffffffffe000000003ffffffffeffffffff1000000021000000002000000001000000010",
            INIT_53 => X"000000004000000023ffffffffbfffffffe6000000007ffffffffdffffffff9ffffffff9",
            INIT_54 => X"ffffffffbfffffffecfffffffe8fffffffeeffffffffc00000001b000000020ffffffffe",
            INIT_55 => X"fffffffee000000036000000013000000007000000013fffffffe6fffffffff000000013",
            INIT_56 => X"00000002d00000000e00000000effffffff5000000000ffffffff2000000018fffffffd7",
            INIT_57 => X"fffffffccfffffffd900000002f000000014fffffffd400000002c000000034ffffffff9",
            INIT_58 => X"00000002e00000000600000001300000002f000000012000000020000000037fffffffe9",
            INIT_59 => X"ffffffffc00000002500000002effffffff3ffffffffbfffffffed000000004000000006",
            INIT_5A => X"fffffffe7000000004fffffffd1fffffffdcfffffffc400000000700000000cffffffff9",
            INIT_5B => X"00000000dfffffffd3fffffffe000000001200000002000000001e000000000000000016",
            INIT_5C => X"00000001afffffffd3fffffffbafffffffe9000000020fffffffe0fffffffceffffffffd",
            INIT_5D => X"000000014fffffffeb000000033ffffffff5000000004ffffffffafffffffe7fffffffe7",
            INIT_5E => X"ffffffff000000000400000000100000000a000000012000000007000000011000000019",
            INIT_5F => X"ffffffffc00000002300000001900000001300000001600000000cffffffffc00000000c",
            INIT_60 => X"000000010ffffffff9fffffffdfffffffff6fffffffebfffffffe9ffffffff6fffffffec",
            INIT_61 => X"fffffffb200000001d000000003ffffffff6000000015ffffffff6ffffffff4000000003",
            INIT_62 => X"000000009ffffffffa000000017fffffffebfffffffedfffffffdf000000010000000002",
            INIT_63 => X"00000000900000000100000002800000001fffffffffe000000018000000037fffffffff",
            INIT_64 => X"000000009fffffffd4fffffffcffffffffd4fffffffd2ffffffff800000000dfffffffe9",
            INIT_65 => X"ffffffffdffffffffe00000000000000000000000004d00000002400000000600000002c",
            INIT_66 => X"00000000f000000003ffffffff400000001e000000034fffffffdd000000010000000023",
            INIT_67 => X"fffffffe100000000e000000000000000009000000009000000012ffffffff0000000023",
            INIT_68 => X"00000000300000000700000001a00000000cffffffff0ffffffff2000000020000000002",
            INIT_69 => X"000000000000000012000000002000000025000000035ffffffff3000000024000000013",
            INIT_6A => X"fffffffae000000031000000036fffffffb3000000016000000014fffffffaefffffffd9",
            INIT_6B => X"fffffffed000000006000000021ffffffff400000001300000000300000004600000000a",
            INIT_6C => X"ffffffffbfffffffc9000000000ffffffffcfffffffe3fffffffdaffffffff1ffffffffa",
            INIT_6D => X"fffffffe8ffffffff800000000900000000000000000000000001dffffffff600000000b",
            INIT_6E => X"000000015000000019fffffffbbfffffffdefffffffd1000000015ffffffff6ffffffff7",
            INIT_6F => X"000000007000000004000000039000000005fffffff9b000000006000000020fffffffc1",
            INIT_70 => X"000000000fffffffef00000003900000002bffffffffa00000000b000000036fffffffdb",
            INIT_71 => X"000000012ffffffffc00000000d000000020000000009ffffffff200000001cffffffff5",
            INIT_72 => X"ffffffffbfffffffc200000005200000004500000001900000004a00000004affffffffa",
            INIT_73 => X"fffffffda00000001d000000026fffffffdf00000002dffffffff4fffffffc6000000016",
            INIT_74 => X"000000014fffffffceffffffffffffffffe9000000005000000039000000017000000017",
            INIT_75 => X"ffffffff200000002cfffffffdafffffffe200000002700000001700000000a000000005",
            INIT_76 => X"00000002cfffffffdbfffffffef000000037fffffffd400000000000000002afffffffd2",
            INIT_77 => X"fffffffd0fffffffcf00000002ffffffffd900000000000000003ffffffffd1ffffffff1",
            INIT_78 => X"000000018fffffffeefffffffe5ffffffff500000002cfffffffc9ffffffff6000000010",
            INIT_79 => X"00000000200000002bfffffffe8fffffffe100000002d00000000efffffffcc000000006",
            INIT_7A => X"fffffffac00000000300000001cfffffffdc000000002000000030fffffffccfffffffe2",
            INIT_7B => X"ffffffff100000001900000000700000001a00000001500000000100000003100000003f",
            INIT_7C => X"fffffffdeffffffff400000001500000000affffffffd00000000dfffffffd400000000d",
            INIT_7D => X"00000004b000000023fffffffd0000000033ffffffff2fffffff9f000000001ffffffffb",
            INIT_7E => X"ffffffff8fffffffe9ffffffff7ffffffff3ffffffffa00000003f00000000cfffffffb6",
            INIT_7F => X"00000000fffffffffe00000001cfffffffe9000000012ffffffff5000000014000000005",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000bffffffff6fffffffcdfffffffe3ffffffff8ffffffff3000000015000000016",
            INIT_01 => X"ffffffff500000002b00000001afffffffeffffffffe800000001cffffffffcfffffffcb",
            INIT_02 => X"fffffffdcfffffffcc00000000a000000050fffffffddfffffffe9000000023fffffffeb",
            INIT_03 => X"000000015ffffffff6fffffffc100000002e000000000fffffffc800000003bfffffffff",
            INIT_04 => X"ffffffff1000000005fffffffe8000000001fffffffe4ffffffff6000000002000000014",
            INIT_05 => X"000000003fffffffedffffffffc00000002f00000002700000000a000000023fffffffea",
            INIT_06 => X"fffffffd2fffffffc600000000dffffffff7ffffffff0fffffffe9fffffffcafffffffe4",
            INIT_07 => X"fffffffc9000000020000000016fffffffcdfffffffcfffffffff9000000016000000033",
            INIT_08 => X"000000015fffffffaefffffffc7ffffffff3fffffffeefffffffcb00000002dfffffffbb",
            INIT_09 => X"fffffffe8ffffffffb000000033ffffffff300000002500000005ffffffffc0fffffffc7",
            INIT_0A => X"000000008000000037fffffffd6ffffffff3fffffffe7fffffffefffffffff6000000010",
            INIT_0B => X"fffffffe8fffffffec000000007000000005fffffffea00000000000000000dffffffff2",
            INIT_0C => X"00000001bfffffffedfffffffce000000011ffffffff0fffffffc9000000052000000011",
            INIT_0D => X"fffffffff000000004fffffffd3ffffffffb00000001ffffffffed00000001c00000000e",
            INIT_0E => X"000000015ffffffff5ffffffffc000000028fffffffd6fffffffc000000000efffffffd4",
            INIT_0F => X"000000000fffffffefffffffffc00000000a00000000100000000ffffffffc1ffffffffd",
            INIT_10 => X"fffffffdbfffffffe100000002afffffffebfffffffedffffffffe00000000bfffffffeb",
            INIT_11 => X"00000000b000000009fffffffe3000000031fffffffd9fffffffbefffffffe9ffffffff3",
            INIT_12 => X"000000026fffffffe9000000002fffffffcdfffffffe1fffffffe4fffffffcefffffffe8",
            INIT_13 => X"000000005000000003fffffffed00000000a00000001f00000000800000001300000004c",
            INIT_14 => X"000000031fffffffc6fffffffddfffffffd2fffffffe0fffffffe0000000004000000007",
            INIT_15 => X"00000000d000000027000000021ffffffff700000000300000002bffffffffbffffffff3",
            INIT_16 => X"00000001400000003d00000004b00000005100000004300000000f000000029000000008",
            INIT_17 => X"000000008fffffffdd00000000b000000012000000009ffffffff0000000010ffffffff9",
            INIT_18 => X"000000006000000005000000008fffffffe5fffffffe1fffffffccfffffffc7ffffffffb",
            INIT_19 => X"ffffffffcffffffff600000000a000000003000000001ffffffff100000002100000000c",
            INIT_1A => X"fffffffed000000018ffffffffeffffffff600000000800000000bffffffff4000000002",
            INIT_1B => X"000000003000000011ffffffff9000000015000000006ffffffff500000000f000000017",
            INIT_1C => X"00000000200000002200000001100000003e00000000c000000013fffffffe8ffffffffe",
            INIT_1D => X"000000014fffffffc4ffffffffbffffffff4fffffffdcffffffffb000000036fffffffd2",
            INIT_1E => X"000000016000000004000000008fffffffff000000001000000000fffffffc7fffffffd9",
            INIT_1F => X"000000015fffffffee00000003e00000004a00000000f00000004d00000007000000004b",
            INIT_20 => X"000000027000000019ffffffffc00000002600000000200000000bfffffffec000000033",
            INIT_21 => X"ffffffffa00000000700000002efffffffdbfffffffd300000001b00000001e000000007",
            INIT_22 => X"000000000000000006ffffffffb00000002d00000000cfffffffd8ffffffff800000002e",
            INIT_23 => X"ffffffff2ffffffff6fffffffb1fffffffe0fffffffd6000000000fffffffe6000000004",
            INIT_24 => X"00000000e00000000e000000017fffffffe2ffffffff8000000039fffffffb3fffffffd8",
            INIT_25 => X"fffffffe0ffffffff1fffffffc4fffffffe8fffffffd100000001dffffffff8fffffffdf",
            INIT_26 => X"00000001e000000001fffffffdffffffffbf000000016ffffffff7fffffffe600000000f",
            INIT_27 => X"fffffffec000000031000000011fffffffe7ffffffffe000000033fffffffe7fffffffe1",
            INIT_28 => X"00000001c00000001c00000001f000000014ffffffffbffffffffb000000019fffffffff",
            INIT_29 => X"000000008000000029fffffffeefffffffc9000000039fffffffc0fffffffbd00000000f",
            INIT_2A => X"fffffff9ffffffffaafffffffbdfffffffcbfffffffa3fffffffa8ffffffff6000000008",
            INIT_2B => X"00000002000000000f000000041000000031000000011000000008fffffffe2000000003",
            INIT_2C => X"fffffff9cfffffffb0fffffff7dfffffffda00000000e00000001f00000001500000000c",
            INIT_2D => X"00000001b000000033000000041fffffffffffffffffeffffffff4fffffffeefffffffbe",
            INIT_2E => X"fffffffe9ffffffff4000000005fffffffe800000000700000001000000001f000000018",
            INIT_2F => X"ffffffff600000001e000000018ffffffffd000000000ffffffff9ffffffff4ffffffff9",
            INIT_30 => X"fffffffeb000000009fffffffe3fffffffe3fffffffd9000000009000000001000000003",
            INIT_31 => X"ffffffff9fffffffdf000000020000000000fffffffe100000003dfffffffdefffffffdd",
            INIT_32 => X"fffffffeb00000000cffffffffefffffffe9000000015ffffffffaffffffff100000000d",
            INIT_33 => X"000000012ffffffff0ffffffff9ffffffff8fffffffd7fffffffcf000000022000000015",
            INIT_34 => X"00000000b000000004fffffffff000000009000000010000000008ffffffffb000000011",
            INIT_35 => X"00000001700000000800000000c00000002dffffffff0ffffffff8000000008fffffffc5",
            INIT_36 => X"00000001efffffffe6fffffffbf00000001d00000000d00000000b00000002100000001f",
            INIT_37 => X"00000002c00000003300000000b000000013fffffffe3000000017000000003fffffffd1",
            INIT_38 => X"00000001600000000fffffffff9000000018ffffffff4000000028000000011000000015",
            INIT_39 => X"00000000c000000028000000003ffffffff9000000024fffffffe500000000b00000000c",
            INIT_3A => X"00000005500000001700000004800000003400000000200000004400000002bfffffffc7",
            INIT_3B => X"00000001e000000003fffffffef000000000ffffffffcfffffffdafffffffde000000039",
            INIT_3C => X"ffffffffa000000022ffffffffaffffffff300000002dffffffffc000000024000000003",
            INIT_3D => X"00000000e000000014ffffffff600000002400000001effffffff100000001bffffffff2",
            INIT_3E => X"00000001cfffffffdf00000001a00000000300000001c00000000b00000001900000000c",
            INIT_3F => X"fffffffee000000000000000004fffffffd900000000fffffffff1fffffffe3ffffffffb",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff400000000bffffffff8000000003000000007ffffffff500000001800000002a",
            INIT_41 => X"00000000b00000000700000001effffffff0000000003000000026fffffffe400000002d",
            INIT_42 => X"000000015ffffffff400000001a00000000300000001100000000cfffffffdb000000004",
            INIT_43 => X"000000029fffffffecfffffffd9ffffffff8fffffffef00000000bfffffffb200000000a",
            INIT_44 => X"00000003a000000034fffffffefffffffff9000000016fffffffd6fffffffc6000000001",
            INIT_45 => X"000000015000000006fffffffd5000000017000000012fffffffe0000000009000000029",
            INIT_46 => X"00000001c00000000d000000014000000011fffffffff000000025000000007fffffffe7",
            INIT_47 => X"00000000600000001afffffffe8ffffffff1000000001ffffffff8ffffffff9000000015",
            INIT_48 => X"000000006000000009fffffffef00000002b00000000b00000000f00000000c00000000c",
            INIT_49 => X"000000016000000000ffffffffd000000002fffffffee00000000bffffffff7ffffffffa",
            INIT_4A => X"ffffffff2fffffffecffffffff8000000014ffffffff4000000004000000017fffffffe0",
            INIT_4B => X"000000004000000000fffffffe6000000011000000010fffffffe5000000002ffffffff0",
            INIT_4C => X"fffffffeffffffffe9fffffffe9fffffffe7000000006ffffffff9ffffffff600000000f",
            INIT_4D => X"00000001f000000016000000012ffffffffb000000032ffffffffcfffffffdfffffffff9",
            INIT_4E => X"000000009fffffffd1fffffffe6fffffffe1fffffffe8fffffffccffffffff000000003c",
            INIT_4F => X"000000052000000013000000012000000035fffffffeeffffffffafffffffbdfffffffe0",
            INIT_50 => X"ffffffff5fffffffff000000022fffffffd900000003800000001e000000032000000053",
            INIT_51 => X"ffffffff500000001e000000010fffffffe8ffffffff7fffffffdd000000039000000002",
            INIT_52 => X"fffffffeffffffffe9ffffffff4ffffffff5fffffffdaffffffff5000000000000000015",
            INIT_53 => X"ffffffff9000000045fffffffff00000000500000002c000000021000000016000000020",
            INIT_54 => X"000000007fffffffde00000000ffffffffeefffffffeffffffffe700000002a000000015",
            INIT_55 => X"000000036fffffffc5000000028000000019fffffffa4000000015fffffffe8fffffffc0",
            INIT_56 => X"ffffffffffffffffbdfffffffe2000000013fffffffebfffffffee000000022fffffffe1",
            INIT_57 => X"000000025000000009fffffffab000000033fffffffdefffffffc5fffffffee000000003",
            INIT_58 => X"fffffffb1fffffffbcfffffffd7fffffffddffffffff3fffffffd1fffffffe1fffffffee",
            INIT_59 => X"00000000000000000b00000000100000001cfffffff97fffffffaeffffffff0fffffffb2",
            INIT_5A => X"ffffffff2ffffffff700000000100000000c00000001800000001efffffffe2ffffffff4",
            INIT_5B => X"000000005fffffffedffffffffeffffffff8000000027fffffffdf00000001100000001d",
            INIT_5C => X"000000023ffffffff9fffffffcdfffffffec000000002fffffffddfffffffe7ffffffffe",
            INIT_5D => X"fffffffee00000000900000000dfffffffeffffffffe7000000020fffffffe3ffffffff7",
            INIT_5E => X"00000000b000000010000000034000000002ffffffff2fffffffd4fffffffe9fffffffe4",
            INIT_5F => X"000000028000000017000000008000000014ffffffffcfffffffedffffffff7000000013",
            INIT_60 => X"00000001700000003c00000002b00000000b000000034000000025000000008000000004",
            INIT_61 => X"ffffffffc000000012000000025000000020000000025fffffffd300000000300000002f",
            INIT_62 => X"ffffffff9fffffffdf000000013000000016000000027000000012fffffffea00000000e",
            INIT_63 => X"00000001b000000016000000002fffffffe7fffffffe3fffffffd1ffffffffcfffffffed",
            INIT_64 => X"00000000700000000100000000b00000000a00000001300000000f00000000b000000012",
            INIT_65 => X"fffffffb900000000e00000002e00000001a00000000600000001b000000026000000021",
            INIT_66 => X"00000002e000000003ffffffff300000000b000000015fffffffd7000000018ffffffff7",
            INIT_67 => X"fffffffabfffffffaefffffffefffffffff0fffffffc3ffffffff2fffffffc4fffffffd3",
            INIT_68 => X"000000010000000027000000030000000003000000028000000009fffffffc7fffffffc7",
            INIT_69 => X"fffffffca00000000700000002dfffffffd8fffffffea000000025ffffffffd00000001d",
            INIT_6A => X"ffffffffe000000009ffffffffdffffffff6000000010fffffffed00000000000000000f",
            INIT_6B => X"000000016ffffffffaffffffffd000000003fffffffec000000008ffffffffbfffffffe1",
            INIT_6C => X"fffffffe0fffffffd700000000b00000002b000000015000000000000000048000000060",
            INIT_6D => X"000000015000000008fffffffeefffffffd6fffffffe5fffffffbcfffffffb8000000004",
            INIT_6E => X"000000009ffffffff0000000006fffffffea000000009000000006fffffffd4ffffffff8",
            INIT_6F => X"ffffffff1000000007000000022ffffffffb00000000200000001a000000003000000012",
            INIT_70 => X"000000013000000000ffffffff8fffffffec000000008fffffffe8000000009fffffffff",
            INIT_71 => X"000000036fffffffe4fffffffbefffffffe900000000100000002afffffffeb000000019",
            INIT_72 => X"00000004d000000047000000013000000042000000037000000017fffffffeb00000001e",
            INIT_73 => X"000000018000000045fffffffe800000000e000000028000000028000000041000000011",
            INIT_74 => X"00000004a00000001a00000004b000000038000000022000000017ffffffff9000000008",
            INIT_75 => X"00000002c00000002600000001f00000002e00000002e00000001700000003e000000037",
            INIT_76 => X"00000001600000002ffffffffffffffffffcfffffffe700000003500000003e000000021",
            INIT_77 => X"ffffffff000000000b000000004ffffffff5fffffffe6ffffffffcfffffffc9000000010",
            INIT_78 => X"ffffffff0ffffffff3ffffffff0fffffffc7fffffffdafffffffc800000000b00000000b",
            INIT_79 => X"000000003000000012000000000fffffffdffffffffd900000000000000000900000000a",
            INIT_7A => X"fffffffeaffffffff7000000013ffffffff200000001800000002e000000023000000019",
            INIT_7B => X"fffffffeaffffffff0ffffffff1fffffffd100000002600000000000000000affffffff9",
            INIT_7C => X"000000006000000021fffffffd5fffffffe400000001d00000000e00000001b000000008",
            INIT_7D => X"ffffffff0ffffffffbffffffff6000000022ffffffffbffffffff9000000027fffffffe9",
            INIT_7E => X"ffffffff4ffffffff8fffffffd8ffffffff1fffffffe1fffffffdffffffffec000000000",
            INIT_7F => X"000000024ffffffffc00000002900000002affffffffcfffffffc9fffffffbbfffffffba",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000034fffffffe2fffffffc7fffffffdb00000000b000000023000000007ffffffff1",
            INIT_01 => X"fffffffc3000000000fffffffef00000000600000000d000000022ffffffff5000000011",
            INIT_02 => X"00000002b000000017ffffffff400000000affffffff1000000029000000008000000000",
            INIT_03 => X"00000000a000000000ffffffffeffffffff5fffffffebffffffff6000000019ffffffffe",
            INIT_04 => X"00000000efffffffc4000000012ffffffff7fffffffdcffffffff5fffffffda000000007",
            INIT_05 => X"fffffffed000000011fffffffe0000000007ffffffffd000000004ffffffffbffffffffd",
            INIT_06 => X"000000006ffffffff0fffffffdbfffffffebfffffffeffffffffe0fffffffd2000000000",
            INIT_07 => X"ffffffffbffffffff8000000024fffffffdcfffffffeffffffffe7000000018fffffffee",
            INIT_08 => X"000000023000000033fffffffccfffffffddfffffffe400000000d00000001700000000e",
            INIT_09 => X"ffffffff9fffffffe1ffffffff3fffffffcbffffffff1ffffffffcffffffffd00000000c",
            INIT_0A => X"00000002c00000000bffffffff9fffffffe9ffffffff900000000efffffffccfffffffd4",
            INIT_0B => X"fffffffecfffffffe500000004900000005300000001200000001200000004000000003d",
            INIT_0C => X"fffffffe3fffffffd7fffffffd8fffffffd8fffffffeb000000018fffffffdc00000002f",
            INIT_0D => X"fffffffe2ffffffffdfffffffffffffffff600000000c000000003ffffffffd00000000c",
            INIT_0E => X"00000001afffffffdafffffffdd000000031000000024ffffffff1fffffffebfffffffdf",
            INIT_0F => X"000000039ffffffff800000001a000000039ffffffff8ffffffff1ffffffff3fffffffea",
            INIT_10 => X"fffffffc6fffffffcafffffffe0fffffffe7000000029fffffffe4000000015000000057",
            INIT_11 => X"fffffffd5ffffffff6fffffffdbfffffffdafffffffe6fffffffd5ffffffffefffffffdc",
            INIT_12 => X"00000001b000000004fffffffff000000006fffffffee000000000000000005ffffffff1",
            INIT_13 => X"fffffffee000000000000000009fffffffee00000000afffffffff000000012ffffffffa",
            INIT_14 => X"00000001300000000d000000009000000010000000022000000024000000013000000004",
            INIT_15 => X"000000036000000022000000013000000014ffffffffefffffffd4ffffffff8ffffffff9",
            INIT_16 => X"00000002700000004c000000029ffffffff400000002100000000000000003d000000036",
            INIT_17 => X"ffffffff9000000012ffffffff7fffffffddfffffffff000000051000000065000000056",
            INIT_18 => X"000000052ffffffff9000000014ffffffffc000000018ffffffffdfffffffc3fffffffd6",
            INIT_19 => X"00000004200000004800000002f00000005700000004000000004400000003300000006c",
            INIT_1A => X"000000016000000008fffffffb9fffffff98fffffff83000000000000000011fffffffdd",
            INIT_1B => X"ffffffffbfffffffe0fffffffc5fffffffc2fffffffaffffffffca000000000000000014",
            INIT_1C => X"00000001000000001000000000cffffffff3fffffffd600000002cfffffffe5fffffffe1",
            INIT_1D => X"000000019000000003000000013ffffffff9fffffffeb00000000e00000001700000000a",
            INIT_1E => X"ffffffffb00000000cffffffff8000000001ffffffff8000000005ffffffff6000000020",
            INIT_1F => X"00000001e00000000d00000000d00000002300000000900000001bfffffffdaffffffff8",
            INIT_20 => X"ffffffff4ffffffffd000000027000000020000000012000000001000000004000000014",
            INIT_21 => X"fffffffee00000001700000002900000000efffffffe3000000000fffffffc3fffffffdf",
            INIT_22 => X"fffffffe3000000003ffffffffffffffffe7000000004fffffffcbfffffffdb00000001e",
            INIT_23 => X"00000002700000001f000000013000000016ffffffff1ffffffff0fffffffc6ffffffff0",
            INIT_24 => X"ffffffff7fffffffd4fffffffbafffffff8cffffffffbfffffffcefffffffca000000023",
            INIT_25 => X"ffffffff2fffffffeafffffffef00000000b000000013fffffffe000000001a00000000d",
            INIT_26 => X"000000000ffffffffd00000000900000002800000000b000000040000000047000000036",
            INIT_27 => X"fffffffe6fffffffe7ffffffffeffffffffa00000000600000001c000000032fffffffde",
            INIT_28 => X"ffffffff5000000006ffffffffb00000004b00000004200000003800000000d000000006",
            INIT_29 => X"000000018ffffffff6000000023000000030000000011fffffffe5fffffffa1fffffffb8",
            INIT_2A => X"ffffffff200000001c000000014000000010fffffffc8fffffffbffffffffe9000000013",
            INIT_2B => X"00000001800000003900000002afffffffdefffffffa1fffffffd5ffffffffcffffffffb",
            INIT_2C => X"000000004ffffffffffffffffe7fffffffd7fffffffbd000000018000000012ffffffff5",
            INIT_2D => X"000000027fffffffe8ffffffffeffffffff6ffffffffaffffffff6ffffffffc000000014",
            INIT_2E => X"fffffffc1fffffff96fffffff9d00000000000000000fffffffff0000000044000000033",
            INIT_2F => X"000000006000000012000000000fffffffd6fffffffdcfffffffccfffffffebfffffffee",
            INIT_30 => X"00000000300000001bfffffffeb00000001affffffffdffffffff000000000000000000f",
            INIT_31 => X"ffffffff2000000001fffffffe7ffffffff600000000a00000000effffffff2fffffffee",
            INIT_32 => X"ffffffff4fffffffdd00000000cffffffff7000000001fffffffe1ffffffff4000000004",
            INIT_33 => X"ffffffff6fffffffc7fffffffdcfffffffeafffffffeefffffffe7ffffffff9000000012",
            INIT_34 => X"ffffffffa000000005000000001000000021fffffffe6fffffffc6fffffffe0000000001",
            INIT_35 => X"00000001600000000fffffffff200000001b00000000bfffffffd3ffffffffcfffffffcc",
            INIT_36 => X"00000001cfffffffcdfffffffcafffffffc7fffffffe3fffffffeefffffffea000000020",
            INIT_37 => X"fffffffec000000014ffffffff1000000005000000011ffffffff2000000021000000025",
            INIT_38 => X"00000000e00000001200000000100000000effffffffe000000005000000003fffffffef",
            INIT_39 => X"ffffffff7fffffffeafffffffdbfffffffe5fffffffeefffffffecfffffffe500000001a",
            INIT_3A => X"00000007000000005100000001400000003d000000045000000000fffffffd3fffffffe3",
            INIT_3B => X"000000047fffffffe6ffffffffe000000011ffffffffe000000015ffffffff3ffffffff7",
            INIT_3C => X"000000020ffffffffc00000003b00000003e000000013000000029fffffffd9000000029",
            INIT_3D => X"000000002000000001000000007fffffffff000000021fffffffdb000000045000000044",
            INIT_3E => X"00000000efffffffe600000001200000001e00000002900000001300000000300000000c",
            INIT_3F => X"00000000100000000c000000005ffffffff1fffffffdd000000008ffffffff7fffffffe7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000001900000000c00000000bffffffff6ffffffff9fffffffebffffffff8000000000",
            INIT_41 => X"fffffffdbffffffffa000000001ffffffff600000000a000000021000000031000000010",
            INIT_42 => X"000000025000000001ffffffff6000000010ffffffff5fffffffe2ffffffff0000000008",
            INIT_43 => X"00000000a00000000000000000700000001a00000000afffffffebffffffffafffffffee",
            INIT_44 => X"000000025000000014000000019000000002000000005fffffffccfffffffb8fffffffc9",
            INIT_45 => X"000000017ffffffff4ffffffff2ffffffff4fffffffce00000001dffffffff7000000007",
            INIT_46 => X"fffffffebfffffffe200000000b00000000700000002a000000020fffffffdfffffffffa",
            INIT_47 => X"00000000f000000000ffffffffbffffffffe000000028000000011000000005000000006",
            INIT_48 => X"000000018ffffffffd00000003100000000e00000002600000001a00000002e000000020",
            INIT_49 => X"00000003400000003600000004ffffffffd7fffffffd7000000019fffffffd5fffffffce",
            INIT_4A => X"00000002400000004cfffffffd9fffffffe6fffffffe3fffffffd7ffffffffaffffffff2",
            INIT_4B => X"000000005ffffffff7fffffffe5fffffffe6fffffffd2fffffffdcfffffffdc00000002b",
            INIT_4C => X"00000001600000001a00000002800000000b00000001600000000c000000003000000024",
            INIT_4D => X"ffffffffe000000010fffffffebffffffff1fffffffe8000000016000000033000000009",
            INIT_4E => X"fffffffe4000000004fffffffdf00000000900000001a000000000000000003fffffffde",
            INIT_4F => X"ffffffff7fffffffe4ffffffff8ffffffff100000001f00000001efffffffd1fffffffeb",
            INIT_50 => X"fffffffccfffffffd9ffffffffd000000017000000000fffffffe9ffffffffd000000008",
            INIT_51 => X"00000000c00000002b000000031000000028000000019000000000000000008fffffffe6",
            INIT_52 => X"000000003fffffffec000000001fffffffeb000000005000000005fffffffec000000023",
            INIT_53 => X"fffffffd8fffffffe200000004700000002f00000001200000005800000004300000000b",
            INIT_54 => X"00000001500000000d000000004fffffffffffffffff7fffffffe400000000a000000011",
            INIT_55 => X"ffffffffffffffffe5fffffffffffffffffefffffffe6ffffffffc000000010000000009",
            INIT_56 => X"000000004ffffffff5fffffffcffffffffd9fffffffe400000001d00000000d00000002a",
            INIT_57 => X"ffffffff5ffffffffb00000002e00000002900000002200000001b000000029000000007",
            INIT_58 => X"000000012ffffffffbffffffff100000001700000001efffffffda00000003e000000051",
            INIT_59 => X"00000000000000000d00000002a00000000900000001a00000000a000000004ffffffff1",
            INIT_5A => X"fffffffe7000000016000000026000000023fffffffe4fffffffeefffffffe6fffffffec",
            INIT_5B => X"00000000500000002400000001e000000000fffffffe5000000003fffffffebfffffffdd",
            INIT_5C => X"ffffffff0000000008ffffffffbffffffff6fffffffec000000008fffffffffffffffffb",
            INIT_5D => X"000000000fffffffe0ffffffff0000000000000000006ffffffffbffffffffa00000000f",
            INIT_5E => X"fffffffec000000000fffffffefffffffff7000000006fffffffe8000000004000000004",
            INIT_5F => X"00000000d000000012ffffffffcffffffff2fffffffeb000000010fffffffffffffffff7",
            INIT_60 => X"00000001e00000000600000000200000000cfffffffe8fffffffe8ffffffff600000001a",
            INIT_61 => X"00000000b00000000000000001affffffff9fffffffef00000000cffffffffbffffffffd",
            INIT_62 => X"fffffffe9ffffffff5fffffffedffffffff1ffffffffeffffffff8000000007ffffffff5",
            INIT_63 => X"fffffffe4fffffffe9fffffffebfffffffe4fffffffecfffffffe5fffffffda000000007",
            INIT_64 => X"00000000000000000b00000000800000000c00000000000000000700000000dfffffffe5",
            INIT_65 => X"fffffffdfffffffffbffffffffffffffffe8ffffffff6fffffffeaffffffff2fffffffed",
            INIT_66 => X"fffffffed00000000bfffffffebfffffffebfffffffe5fffffffe3000000006000000014",
            INIT_67 => X"000000004ffffffffbfffffffeafffffffe7000000008fffffffeeffffffff0fffffffed",
            INIT_68 => X"fffffffe8ffffffffafffffffedffffffff3fffffffe8000000000fffffffecffffffff8",
            INIT_69 => X"fffffffe6000000004ffffffff5fffffffedfffffffebffffffff3ffffffff2ffffffff3",
            INIT_6A => X"fffffffdffffffffe1fffffffeffffffffeefffffffe2fffffffedfffffffee00000000a",
            INIT_6B => X"fffffffe5000000001000000005fffffffecffffffff0000000009000000006000000000",
            INIT_6C => X"fffffffebffffffffbffffffff8ffffffff000000000afffffffdcfffffffeb000000008",
            INIT_6D => X"ffffffff0000000001000000000fffffffe8000000004fffffffe300000000a000000001",
            INIT_6E => X"00000000d000000005ffffffff6ffffffff4ffffffffafffffffeeffffffffbfffffffe6",
            INIT_6F => X"00000000c000000000000000001ffffffffeffffffff4fffffffd9fffffffddffffffffd",
            INIT_70 => X"ffffffff1ffffffff0ffffffff1000000003ffffffffcffffffff5ffffffff8fffffffe5",
            INIT_71 => X"000000000ffffffffeffffffffffffffffe1fffffffe500000000000000000c00000000b",
            INIT_72 => X"ffffffff5000000008fffffffe700000000fffffffff0000000003fffffffeefffffffec",
            INIT_73 => X"000000007ffffffffa00000000a00000000dfffffffe4000000000fffffffec000000006",
            INIT_74 => X"fffffffe2ffffffffafffffffeefffffffe8fffffffeafffffffe9fffffffe1fffffffe3",
            INIT_75 => X"fffffffe4ffffffff5ffffffffcffffffff0000000005000000005fffffffdf000000001",
            INIT_76 => X"fffffffeafffffffe7fffffffff00000000afffffffe5fffffffec000000003000000003",
            INIT_77 => X"00000000dfffffffe6ffffffff4fffffffe9fffffffe9ffffffffffffffffe6ffffffff6",
            INIT_78 => X"fffffffeffffffffe9000000000000000008ffffffff5fffffffedfffffffe7ffffffff8",
            INIT_79 => X"ffffffffcfffffffee000000004fffffffe7fffffffe9fffffffec000000007ffffffffb",
            INIT_7A => X"ffffffffc00000000700000000afffffffe9fffffffffffffffffcfffffffed000000001",
            INIT_7B => X"00000000200000000effffffff5ffffffff3ffffffff7000000002000000002fffffffe2",
            INIT_7C => X"ffffffff8000000000ffffffffbfffffffe2000000008000000001000000002fffffffe7",
            INIT_7D => X"00000000afffffffeaffffffff2ffffffffa000000000ffffffff7fffffffef000000005",
            INIT_7E => X"00000000affffffffb000000009000000009fffffffecfffffffed000000000000000002",
            INIT_7F => X"000000008000000016fffffffffffffffff1ffffffff9000000008ffffffffcffffffff2",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000b00000000a000000007fffffffe8000000008000000000fffffffecffffffff6",
            INIT_01 => X"000000015fffffffedffffffff8000000014fffffffd3ffffffff2fffffffeffffffffeb",
            INIT_02 => X"00000001000000003100000003c00000000a00000000a000000018fffffffdb000000001",
            INIT_03 => X"fffffffe5fffffffc1fffffffd800000000bfffffffdb00000002b00000003700000002f",
            INIT_04 => X"00000001a00000001cffffffff9ffffffffcfffffffc7fffffffb6fffffffd8fffffffb8",
            INIT_05 => X"000000017000000022ffffffffa00000003000000005500000002300000004d00000003b",
            INIT_06 => X"00000001b000000021ffffffffdfffffffdeffffffff0ffffffffb00000000afffffffea",
            INIT_07 => X"ffffffffcfffffffe6fffffffcbfffffffe2ffffffff1fffffffd2fffffffd8000000017",
            INIT_08 => X"00000000500000000b00000000bffffffff8fffffffff000000016fffffffedfffffffe7",
            INIT_09 => X"fffffff95fffffffb9ffffffff200000001affffffff300000002300000000d00000002a",
            INIT_0A => X"ffffffff4000000000000000017fffffffc9000000014000000000000000002fffffffb0",
            INIT_0B => X"fffffffdffffffffdaffffffff6000000008fffffffe2ffffffff4000000003ffffffffe",
            INIT_0C => X"00000000cffffffffb000000000000000010ffffffff7fffffffcefffffffcbfffffffd1",
            INIT_0D => X"fffffffe9ffffffff100000000f00000001300000001dfffffffeafffffffc4ffffffff9",
            INIT_0E => X"ffffffffc000000006fffffffcc000000014000000002fffffffe300000000e000000010",
            INIT_0F => X"00000001100000001b00000002200000001600000001500000000f00000000fffffffffb",
            INIT_10 => X"ffffffff2fffffffd0fffffffabfffffffa8000000000000000001fffffffd9000000019",
            INIT_11 => X"00000003500000004400000002100000000c000000030000000010fffffffd000000000b",
            INIT_12 => X"00000002100000000200000001a000000007ffffffff900000000d000000001fffffffe9",
            INIT_13 => X"fffffffb7ffffffff4fffffffeffffffffef00000001f000000019000000006000000014",
            INIT_14 => X"fffffffc1fffffffb6fffffffc1fffffffbdfffffffedfffffffd6fffffffe9fffffffdf",
            INIT_15 => X"ffffffff000000000400000000500000000e00000000efffffffe2000000002fffffffd5",
            INIT_16 => X"000000027fffffffd6fffffffeefffffffe300000000e000000019000000005000000008",
            INIT_17 => X"fffffffe6ffffffff0ffffffffcffffffff800000001900000003bfffffffdcffffffff5",
            INIT_18 => X"000000022000000010000000006000000019000000023fffffffeb000000015000000015",
            INIT_19 => X"00000001dfffffffddfffffffccfffffffd400000000a000000005fffffffee000000015",
            INIT_1A => X"fffffffe5fffffffbdfffffff9d000000007ffffffffcfffffffda000000027000000016",
            INIT_1B => X"fffffff9affffffffbfffffffd9fffffffccfffffffd0fffffffee000000032fffffffec",
            INIT_1C => X"000000027ffffffffd00000001e000000020000000018000000005000000015fffffffce",
            INIT_1D => X"000000015ffffffffdffffffff2000000023000000001fffffffe700000000700000001f",
            INIT_1E => X"fffffffeefffffffe300000000300000000900000000a000000017000000015ffffffff8",
            INIT_1F => X"fffffffc1000000009ffffffffffffffffe6ffffffffbfffffffe000000000e00000000c",
            INIT_20 => X"000000017ffffffff2fffffffdefffffffecfffffffc9fffffffc5fffffffccfffffffb8",
            INIT_21 => X"00000000b000000007ffffffffbfffffffd5fffffffbe000000001ffffffff7fffffffeb",
            INIT_22 => X"ffffffff3000000012000000035000000039fffffffed000000021000000019000000005",
            INIT_23 => X"ffffffff7ffffffffcfffffffd800000002f00000001700000000400000001a00000000b",
            INIT_24 => X"fffffffff00000002400000001200000000100000000d00000000f00000000cffffffffe",
            INIT_25 => X"fffffffb9fffffffd0fffffff98fffffffc9ffffffff5fffffffe9ffffffff7ffffffffb",
            INIT_26 => X"00000004e00000003500000003300000000c000000009ffffffff0fffffffdefffffff8a",
            INIT_27 => X"000000043000000034000000026000000059000000026000000026000000055000000043",
            INIT_28 => X"00000002afffffffe2fffffffecffffffffd00000000800000001800000002c000000031",
            INIT_29 => X"fffffffe600000000800000000affffffffa000000018000000031fffffffe6000000026",
            INIT_2A => X"fffffffe4fffffffef00000002200000002800000002c00000000f00000001b00000001b",
            INIT_2B => X"fffffffdffffffffff000000000000000025fffffffedffffffff7ffffffffefffffffcd",
            INIT_2C => X"ffffffff0fffffffd9fffffffc7fffffffedffffffffdfffffffeefffffffe0000000000",
            INIT_2D => X"ffffffff6ffffffffbffffffffcffffffff400000001afffffffff00000000a000000039",
            INIT_2E => X"00000001efffffffebffffffff6000000023fffffffeefffffffdefffffffe8000000000",
            INIT_2F => X"fffffffe1fffffffed00000001b000000010000000006000000016ffffffffdffffffffc",
            INIT_30 => X"000000023ffffffff9000000020ffffffffcffffffff0ffffffff1ffffffff1fffffffec",
            INIT_31 => X"000000018000000000ffffffff7fffffffed00000002200000000600000002c00000001b",
            INIT_32 => X"fffffffe7fffffffccffffffffc00000000300000002800000001500000001300000000b",
            INIT_33 => X"ffffffffd00000000efffffffe1fffffffcffffffffebfffffffe1fffffffcf00000001a",
            INIT_34 => X"fffffffffffffffff900000003400000001700000000000000002200000000400000000a",
            INIT_35 => X"00000000a00000000600000000b000000012000000018000000012fffffffe5ffffffffe",
            INIT_36 => X"fffffffd3fffffffe2fffffffdbfffffffab00000002afffffffedfffffffe3000000006",
            INIT_37 => X"00000001afffffffd7000000009000000051fffffffe3ffffffff5000000018fffffffd2",
            INIT_38 => X"ffffffffafffffffdcfffffffe5fffffffbbfffffffccfffffffd1fffffffd2ffffffff3",
            INIT_39 => X"fffffffeafffffffdd000000014ffffffff1fffffffdcffffffff5ffffffff0fffffffea",
            INIT_3A => X"fffffffe700000000c00000000dfffffffe0000000016ffffffff5ffffffff0000000017",
            INIT_3B => X"000000006fffffffe1fffffffc9000000007fffffffe8fffffffdb000000022000000009",
            INIT_3C => X"000000000fffffffee000000022000000000fffffffe900000001d00000000afffffffe9",
            INIT_3D => X"000000011ffffffff1000000005000000035fffffffe0000000002000000034000000005",
            INIT_3E => X"000000004000000003000000016ffffffff5000000016ffffffff8ffffffff9ffffffff1",
            INIT_3F => X"00000004500000005a00000001d00000006f00000003f000000020000000045000000036",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffd2ffffffffbfffffffe5fffffffe1ffffffff2fffffffe2000000001000000035",
            INIT_41 => X"fffffffd5ffffffffa000000031ffffffff4ffffffffc000000008fffffffd3fffffffae",
            INIT_42 => X"fffffffe0fffffffdb000000014fffffffe7fffffffdafffffffe0ffffffff9000000034",
            INIT_43 => X"00000007b00000001700000004900000003500000001bffffffff2fffffffe1ffffffffe",
            INIT_44 => X"000000011fffffffdcfffffffd600000003600000002700000006900000003800000005b",
            INIT_45 => X"fffffffeffffffffe600000000ffffffffe6fffffffe5fffffffe8000000005ffffffffe",
            INIT_46 => X"ffffffff7000000016ffffffff1fffffffec00000002200000001cfffffffe7000000012",
            INIT_47 => X"fffffffc8ffffffffb000000035ffffffff1fffffffe500000001effffffff1000000000",
            INIT_48 => X"000000000fffffffe1000000000ffffffff9000000016000000004ffffffff7000000014",
            INIT_49 => X"ffffffff0000000026ffffffff9fffffffd7fffffffbd00000001e00000003f000000008",
            INIT_4A => X"00000002100000000a00000000afffffffd800000000100000001affffffff9fffffffd8",
            INIT_4B => X"ffffffff0fffffffd1000000001fffffffdffffffffd4000000009fffffffecfffffffef",
            INIT_4C => X"00000000f00000002800000000c00000001affffffff0ffffffff6fffffffca000000010",
            INIT_4D => X"00000000b000000019fffffffe9fffffffd8000000006ffffffffe000000028ffffffffc",
            INIT_4E => X"fffffffd6fffffffb000000001500000002300000001800000001400000000effffffff7",
            INIT_4F => X"fffffffccfffffffd5ffffffff8ffffffff0fffffffd4fffffffe6fffffffd7000000003",
            INIT_50 => X"000000006fffffffd1fffffffeafffffffe2000000002fffffffd8fffffffc2fffffffcb",
            INIT_51 => X"ffffffff8fffffffd9000000033ffffffff7fffffffdf000000035000000033000000031",
            INIT_52 => X"ffffffffcfffffffc1ffffffff2fffffffd0fffffffd3ffffffff9fffffffe5000000023",
            INIT_53 => X"000000044fffffffddfffffffc500000000d00000001600000000fffffffff9ffffffff4",
            INIT_54 => X"fffffffc2ffffffff0ffffffff1fffffffebfffffffdb000000020fffffffe3fffffffd9",
            INIT_55 => X"fffffffddfffffffeafffffffcefffffffd7ffffffff0fffffffdd000000010000000001",
            INIT_56 => X"ffffffff9fffffffccfffffffe2fffffffc5fffffffcb000000003ffffffffefffffff9f",
            INIT_57 => X"000000022fffffffbe000000002ffffffffafffffffe8ffffffffafffffffdf000000001",
            INIT_58 => X"fffffffd2fffffffe4fffffffddffffffff8000000003fffffffdffffffffd9000000048",
            INIT_59 => X"fffffffcd000000016000000017fffffff9cfffffffdaffffffffafffffffd7ffffffff4",
            INIT_5A => X"00000000bfffffffd0000000030000000005fffffffc4ffffffff8000000036000000007",
            INIT_5B => X"ffffffffc000000028ffffffff2fffffffb400000000b00000000effffffff300000002b",
            INIT_5C => X"00000003c00000004e000000069000000039000000038000000006ffffffff7ffffffff1",
            INIT_5D => X"fffffffc4fffffffda000000000ffffffffafffffffe0000000023000000066000000055",
            INIT_5E => X"ffffffffcffffffff9fffffffd6fffffffdffffffffaafffffffcafffffffdbfffffffb1",
            INIT_5F => X"ffffffffc00000000d000000004fffffffd0ffffffffdffffffffafffffffb4ffffffff2",
            INIT_60 => X"fffffffefffffffff1fffffffdb000000018ffffffffbfffffffe4fffffffeaffffffff7",
            INIT_61 => X"000000001fffffffe4000000047000000013fffffffebfffffffdcfffffffe5ffffffff2",
            INIT_62 => X"00000001cfffffffdbfffffffd5000000023fffffffeefffffffd000000003d00000002e",
            INIT_63 => X"fffffffd600000000700000002700000000bfffffffdeffffffff200000000bffffffff0",
            INIT_64 => X"fffffffdf00000000affffffff9fffffffe900000000cfffffffe9000000021000000003",
            INIT_65 => X"fffffffe6ffffffff5ffffffff7ffffffffbffffffff2fffffffe9000000015fffffffe1",
            INIT_66 => X"fffffffe3fffffffd6ffffffffcfffffffe7fffffffd1000000032000000007fffffffed",
            INIT_67 => X"ffffffff8000000028000000014fffffffd6fffffffd700000000efffffffdcffffffffb",
            INIT_68 => X"fffffffecfffffffcbfffffffd800000002900000001100000000300000003a00000000e",
            INIT_69 => X"fffffffccfffffffdc000000043000000017fffffffef000000007ffffffff4fffffffea",
            INIT_6A => X"000000014fffffffd2fffffffef00000000cfffffffe2fffffffe1000000004000000005",
            INIT_6B => X"00000002300000001a000000021000000011ffffffff900000000a000000012000000024",
            INIT_6C => X"ffffffff2ffffffff0ffffffff000000001400000000cffffffffcffffffffc000000012",
            INIT_6D => X"ffffffff2000000009000000013000000003ffffffff1000000037000000036000000019",
            INIT_6E => X"ffffffffb000000041ffffffffc00000000a000000015fffffffce00000000fffffffffc",
            INIT_6F => X"00000002c000000010fffffffd2ffffffff8fffffffd6000000009ffffffffbfffffffe6",
            INIT_70 => X"00000001e000000031ffffffffefffffffd500000003a00000002300000000c000000011",
            INIT_71 => X"00000000c000000019000000006ffffffff6fffffffc9000000034ffffffffcfffffffdc",
            INIT_72 => X"000000010ffffffffafffffffda000000001ffffffff3ffffffff9000000008000000000",
            INIT_73 => X"fffffffebfffffffe0fffffffffffffffffa00000000600000000e000000000fffffffc4",
            INIT_74 => X"00000001300000000dffffffff400000001f000000007ffffffff5000000000fffffffe0",
            INIT_75 => X"000000006ffffffff9ffffffff7000000015ffffffff100000000700000002a00000000a",
            INIT_76 => X"ffffffff0fffffffb7fffffffc4ffffffffffffffffecffffffff000000000a000000036",
            INIT_77 => X"00000001700000000700000001dfffffffeb00000001cffffffff1fffffffedfffffffe5",
            INIT_78 => X"fffffffddffffffffdffffffff1fffffffd2ffffffffc000000024ffffffff600000001c",
            INIT_79 => X"ffffffff8000000010fffffffea000000000fffffffa8fffffffdbfffffffc4fffffffe7",
            INIT_7A => X"fffffffdd000000007ffffffff3fffffffd3fffffffd9fffffffd0fffffffebfffffffe5",
            INIT_7B => X"fffffffd4ffffffffb000000019000000006000000001000000000ffffffff400000000b",
            INIT_7C => X"000000007fffffffb7fffffffcdfffffffccfffffffddffffffff0000000007fffffffef",
            INIT_7D => X"ffffffff1fffffffebfffffffe4fffffffc4fffffffe3fffffffe1fffffffd9fffffffda",
            INIT_7E => X"000000006fffffffdffffffffe0fffffffc8fffffff93fffffffbdfffffffa4fffffffcd",
            INIT_7F => X"000000010ffffffffa00000000400000002dfffffffe700000001100000001ffffffffdb",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000005b00000006600000000d00000004800000004a00000001000000000a00000000a",
            INIT_01 => X"fffffffe0fffffffd9000000007ffffffff3fffffffee000000038000000090000000053",
            INIT_02 => X"fffffffe7ffffffffdffffffff1fffffffdbffffffff3fffffffcafffffffdeffffffffc",
            INIT_03 => X"fffffffedffffffffbffffffff9fffffffefffffffffbffffffff4000000010ffffffff0",
            INIT_04 => X"00000000000000001dfffffffddfffffffedfffffffecffffffffe000000009fffffffd0",
            INIT_05 => X"000000008fffffffedffffffffeffffffff6ffffffffeffffffff9000000023fffffffe2",
            INIT_06 => X"ffffffffffffffffc8fffffffdafffffffcffffffffd200000000ffffffffcdfffffffca",
            INIT_07 => X"fffffffe9ffffffffeffffffffb00000003b00000001800000001200000003e000000009",
            INIT_08 => X"fffffffed00000000b000000006fffffffeb000000007000000000ffffffffc00000000d",
            INIT_09 => X"fffffffc600000000100000000bfffffffe200000000000000003b00000004500000000f",
            INIT_0A => X"ffffffffffffffffe6fffffffff00000003affffffff7fffffffd9fffffffdafffffffe7",
            INIT_0B => X"000000025ffffffff1000000012ffffffff4fffffffdffffffffcefffffffddfffffffca",
            INIT_0C => X"000000013ffffffff500000000200000003e00000003400000002a00000001800000004e",
            INIT_0D => X"ffffffffafffffffc6fffffffe3ffffffff3fffffffe3fffffffbf000000006ffffffff7",
            INIT_0E => X"000000037000000007000000012ffffffff0000000010ffffffff6fffffffda000000008",
            INIT_0F => X"ffffffff200000000affffffffcfffffffda00000000d00000001efffffffec00000000e",
            INIT_10 => X"ffffffffefffffffe000000001b000000004000000012000000024ffffffffdffffffff8",
            INIT_11 => X"00000000c000000022ffffffff0ffffffffd00000000000000000a000000011ffffffff5",
            INIT_12 => X"fffffffccfffffffcffffffffd6fffffffdafffffffbcfffffffc4000000016000000017",
            INIT_13 => X"000000025fffffffa100000001c000000012fffffffc5fffffffeefffffffddffffffff8",
            INIT_14 => X"fffffffa5fffffffe1fffffffa0fffffff76000000010000000016ffffffff0000000000",
            INIT_15 => X"00000001f00000000d00000000f000000001fffffffc100000000300000000bfffffff7b",
            INIT_16 => X"00000002100000000400000002c000000022000000001000000016000000028000000000",
            INIT_17 => X"000000039ffffffff7fffffffbefffffffaa000000025fffffffe8fffffffe2000000011",
            INIT_18 => X"00000001e00000001a000000020ffffffff2000000029000000028ffffffff2000000006",
            INIT_19 => X"fffffffcffffffffdbfffffffeefffffffdefffffffe8ffffffff9fffffffe5000000037",
            INIT_1A => X"fffffffe8000000010000000021fffffffed00000002800000001c000000027fffffffd6",
            INIT_1B => X"00000000fffffffff8000000000ffffffff900000001a000000012ffffffffbffffffff9",
            INIT_1C => X"000000017fffffffd600000002d00000002c00000000dfffffffd8fffffffe500000001a",
            INIT_1D => X"fffffffea00000001900000000f00000001000000000d000000013fffffffe7000000015",
            INIT_1E => X"00000000200000001000000001b00000002000000000b000000000000000011000000020",
            INIT_1F => X"00000002affffffff8000000025000000006fffffffdfffffffffc000000023fffffffff",
            INIT_20 => X"fffffffe000000000bfffffffecfffffffe3000000020ffffffffefffffffe800000002e",
            INIT_21 => X"00000002300000000c000000012000000003000000006fffffffe000000000fffffffff2",
            INIT_22 => X"000000039fffffffc4fffffffdafffffffc3fffffffc9ffffffff6fffffffdefffffffb6",
            INIT_23 => X"fffffffc1000000023ffffffff3ffffffffd000000038000000028ffffffffc000000003",
            INIT_24 => X"000000019fffffffd6ffffffff7fffffffe7ffffffff000000001c000000005fffffffff",
            INIT_25 => X"fffffffe1000000016fffffffecfffffffc3fffffffe0fffffffee000000011ffffffff7",
            INIT_26 => X"000000035fffffffdafffffffc7ffffffff9000000005ffffffffb000000033fffffffe7",
            INIT_27 => X"fffffffe1fffffffe3fffffffeefffffffec00000001c000000059fffffffb7ffffffffa",
            INIT_28 => X"000000002ffffffffbfffffffe300000000100000003bfffffffe8fffffffdf000000022",
            INIT_29 => X"fffffffdf000000019ffffffff4fffffffd3ffffffffa00000000dffffffffd000000027",
            INIT_2A => X"ffffffff2fffffffe9fffffffe8000000016fffffffebfffffffe000000001bffffffff3",
            INIT_2B => X"00000002a000000023fffffffcf00000002a000000016fffffffd5fffffffdffffffffc0",
            INIT_2C => X"00000003a000000004000000012000000006fffffffe3000000003fffffffe4000000000",
            INIT_2D => X"00000001300000000cfffffffc500000001600000000cfffffffeb000000016000000017",
            INIT_2E => X"ffffffff1ffffffff200000000affffffff4ffffffff4000000008ffffffff4fffffffb8",
            INIT_2F => X"fffffffa8ffffffffefffffffe2ffffffffe000000025fffffffc7ffffffff800000000e",
            INIT_30 => X"000000027000000020fffffffe500000001bffffffffefffffffc1fffffffecffffffff3",
            INIT_31 => X"ffffffff700000000200000000000000000dffffffffa00000000900000002500000000c",
            INIT_32 => X"ffffffff0fffffffef00000001600000004dfffffffdcffffffff000000002dfffffffed",
            INIT_33 => X"00000001cffffffffdfffffffd400000000d00000000efffffffad000000026000000013",
            INIT_34 => X"000000012ffffffffeffffffffb000000006000000012000000004ffffffff8000000000",
            INIT_35 => X"000000005fffffffeaffffffff9ffffffff9ffffffff9000000007ffffffff2ffffffff7",
            INIT_36 => X"ffffffff0000000001ffffffffeffffffff6ffffffff8ffffffff1000000003fffffffee",
            INIT_37 => X"000000000000000006fffffffff000000000ffffffff4ffffffff600000000b000000006",
            INIT_38 => X"ffffffffe00000000dfffffffff000000006ffffffff3000000005fffffffe8000000000",
            INIT_39 => X"ffffffff6ffffffff2000000006ffffffffdfffffffe9ffffffff600000000effffffff2",
            INIT_3A => X"00000000affffffffc000000006ffffffffffffffffeffffffffeafffffffea000000007",
            INIT_3B => X"ffffffffaffffffffbfffffffe9ffffffff5ffffffffa00000000c00000000cffffffff1",
            INIT_3C => X"000000000000000000000000006ffffffff4000000006ffffffff2fffffffe7000000004",
            INIT_3D => X"fffffffe7000000009ffffffff7000000002fffffffef00000000bffffffff9ffffffffe",
            INIT_3E => X"00000000800000000affffffff4fffffffec000000012000000002ffffffffbffffffff2",
            INIT_3F => X"000000000000000000ffffffff1000000001ffffffff2fffffffed000000000ffffffff9",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000a00000000afffffffec000000000fffffffec00000000dfffffffe700000000e",
            INIT_41 => X"00000000fffffffff3ffffffff500000000ffffffffed000000010ffffffffbfffffffec",
            INIT_42 => X"ffffffff2fffffffffffffffffb000000011ffffffff000000000dffffffff400000000a",
            INIT_43 => X"000000001ffffffff8000000000fffffffe6000000001000000000fffffffeeffffffffc",
            INIT_44 => X"000000006ffffffff8000000007ffffffffdffffffff7fffffffeaffffffff1ffffffff0",
            INIT_45 => X"fffffffeefffffffeffffffffeffffffffedfffffffebffffffffbffffffff9ffffffffd",
            INIT_46 => X"fffffffefffffffff1fffffffeeffffffff4ffffffffcffffffff8000000002ffffffffd",
            INIT_47 => X"fffffffecffffffffb00000000effffffff200000000ffffffffea00000000b000000009",
            INIT_48 => X"000000009ffffffff400000000d00000000f000000007000000012ffffffff3fffffffeb",
            INIT_49 => X"000000000000000006fffffffe9fffffffebfffffffe8ffffffff900000000100000000d",
            INIT_4A => X"ffffffff0ffffffff300000000efffffffed00000000c000000008fffffffe5fffffffe7",
            INIT_4B => X"ffffffff8000000005000000006fffffffe900000000afffffffe7fffffffecffffffff3",
            INIT_4C => X"fffffffecffffffff9000000006000000001000000004ffffffff900000000b000000003",
            INIT_4D => X"000000005000000001ffffffff000000000dfffffffeeffffffff7ffffffff6fffffffed",
            INIT_4E => X"000000006ffffffffcfffffffe9ffffffff3000000000fffffffefffffffff4fffffffec",
            INIT_4F => X"fffffffeaffffffffdfffffffecfffffffef00000000affffffffc000000005fffffffec",
            INIT_50 => X"000000009ffffffff800000000affffffff3ffffffffdfffffffe9ffffffffdffffffffe",
            INIT_51 => X"fffffffea000000001ffffffffe000000007fffffffe7000000001000000000fffffffe2",
            INIT_52 => X"00000000d000000003ffffffff0000000008fffffffeeffffffffbffffffff5ffffffff4",
            INIT_53 => X"00000000e00000000cffffffff0000000005000000007fffffffefffffffffe00000000f",
            INIT_54 => X"00000000b00000000cffffffff0fffffffe4ffffffffbffffffff3fffffffed000000015",
            INIT_55 => X"fffffffedffffffffbffffffff4fffffffe900000000d000000012000000005ffffffff1",
            INIT_56 => X"ffffffff000000000a00000000d00000000ffffffffebfffffffe800000000bffffffff0",
            INIT_57 => X"00000000d000000004ffffffff3ffffffffc00000000700000000c000000002000000007",
            INIT_58 => X"00000001500000000c000000004000000011000000010fffffffea000000000ffffffff0",
            INIT_59 => X"fffffffff00000000afffffffe6ffffffffcffffffff5fffffffe4ffffffffdffffffff7",
            INIT_5A => X"ffffffffb00000002600000000500000000b00000003200000001d000000019ffffffffe",
            INIT_5B => X"ffffffff9000000000ffffffffafffffffd5fffffffdf00000000200000002400000001a",
            INIT_5C => X"ffffffffcffffffff9000000015ffffffff3ffffffffa000000008000000014000000011",
            INIT_5D => X"00000000fffffffffefffffffe600000000a00000000f00000000300000001300000002d",
            INIT_5E => X"fffffffe1ffffffff7ffffffff4fffffffc7ffffffff1ffffffffd000000001fffffffce",
            INIT_5F => X"ffffffffdfffffffcdfffffffd3000000000ffffffffc000000002000000004fffffffed",
            INIT_60 => X"fffffffe700000001800000002500000000500000001300000002bfffffffe6ffffffff5",
            INIT_61 => X"00000000700000000500000002500000000ffffffffec00000000b000000006000000000",
            INIT_62 => X"ffffffffafffffffa2fffffffc2000000009ffffffffdfffffffbffffffffe6ffffffffb",
            INIT_63 => X"000000014ffffffff800000000d00000001c000000018000000007ffffffff7ffffffff3",
            INIT_64 => X"fffffffffffffffff2ffffffff200000000a00000001f00000002d000000014ffffffff6",
            INIT_65 => X"00000000400000001a000000016000000001000000000ffffffff4fffffffde000000003",
            INIT_66 => X"fffffffc6fffffffc300000000d00000000f00000000c00000000f00000000b000000001",
            INIT_67 => X"000000008fffffffe9000000004ffffffff3ffffffff4fffffffc2fffffffc000000000f",
            INIT_68 => X"00000000f00000000efffffffe9fffffffc5000000006ffffffffbfffffffd8000000005",
            INIT_69 => X"fffffffcaffffffff4000000033ffffffffa00000000500000000b000000000000000006",
            INIT_6A => X"fffffffb4fffffffe7fffffffaffffffffc5000000000ffffffffcfffffffe0000000013",
            INIT_6B => X"ffffffffefffffffc6fffffffe3000000020ffffffff0ffffffffaffffffff1ffffffff0",
            INIT_6C => X"fffffffd2fffffffe4ffffffff300000000000000003b000000025fffffffcffffffffca",
            INIT_6D => X"000000009fffffffdc00000001d00000000bffffffff0fffffffc8fffffffc8ffffffff7",
            INIT_6E => X"ffffffffa000000011000000000fffffffd6000000008000000000fffffffefffffffffe",
            INIT_6F => X"00000000c000000010ffffffff0ffffffff4fffffffe9fffffffd7fffffffe5ffffffffa",
            INIT_70 => X"000000004fffffffeffffffffffffffffff4ffffffff3000000006ffffffffcfffffffe4",
            INIT_71 => X"00000000afffffffe8fffffffbc000000029fffffffeefffffffdc00000000bfffffffe5",
            INIT_72 => X"ffffffff800000000dfffffffff00000001700000000b000000004000000026ffffffffa",
            INIT_73 => X"00000005300000003400000000100000001200000004d000000019000000017ffffffff6",
            INIT_74 => X"00000000b000000000fffffffff00000000e000000000fffffffe7000000010fffffffff",
            INIT_75 => X"fffffffe9fffffffdd00000003bffffffff7fffffffe7ffffffff300000002bffffffff5",
            INIT_76 => X"ffffffffa000000006fffffffe6fffffffebffffffff6fffffffe4fffffffe700000000e",
            INIT_77 => X"ffffffffffffffffecfffffffd0fffffffe4fffffffd4fffffffedfffffffef00000000c",
            INIT_78 => X"000000031000000020000000009ffffffff6ffffffffd000000012ffffffff0fffffffdb",
            INIT_79 => X"000000012fffffffd2ffffffff000000000cfffffffe8fffffffe2fffffffe3000000018",
            INIT_7A => X"00000002900000002400000001effffffff0000000018000000003ffffffff1000000023",
            INIT_7B => X"fffffffc6ffffffff500000001cfffffffb8ffffffff5000000028fffffffe3000000000",
            INIT_7C => X"ffffffffe000000000ffffffff3000000001000000008000000006000000000fffffffff",
            INIT_7D => X"fffffffdc00000002900000003800000000e000000013000000006000000023000000007",
            INIT_7E => X"fffffffd9fffffffd1ffffffffd000000019ffffffffdffffffff8000000010000000007",
            INIT_7F => X"fffffff99fffffffb7fffffffd8fffffffd0fffffffb9fffffffaffffffffbeffffffff2",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffb7000000026000000046fffffffe7fffffff9dfffffff86fffffffaffffffffc5",
            INIT_01 => X"00000001300000002800000003d000000001fffffffc0ffffffff5ffffffffbfffffffef",
            INIT_02 => X"ffffffff6ffffffffc000000023000000010000000034000000023000000000000000000",
            INIT_03 => X"ffffffff8ffffffffd000000000ffffffff8000000000000000005000000003ffffffffe",
            INIT_04 => X"00000001c00000000f00000002200000002200000001f00000001e00000000f000000014",
            INIT_05 => X"00000000affffffff0fffffffd0000000012fffffffdfffffffffcfffffffebfffffffdc",
            INIT_06 => X"fffffffed00000000affffffffcffffffff3fffffffedfffffffeb00000000afffffffef",
            INIT_07 => X"ffffffff2fffffffec00000000afffffffe2ffffffff1fffffffeaffffffff9ffffffff5",
            INIT_08 => X"000000001ffffffffd000000001ffffffffcffffffff800000000100000000800000000c",
            INIT_09 => X"ffffffffb00000001200000000000000000bffffffff3000000002000000014000000004",
            INIT_0A => X"00000000900000000200000000a00000001200000001400000001b000000015fffffffef",
            INIT_0B => X"000000014000000025000000018000000012000000000000000037000000047000000012",
            INIT_0C => X"00000001000000002a000000027000000021000000016000000015000000007000000033",
            INIT_0D => X"000000014000000005fffffffedffffffffc000000003fffffffe5ffffffff900000000c",
            INIT_0E => X"000000024fffffffe6000000010000000028fffffffec00000001800000000cfffffffd3",
            INIT_0F => X"ffffffffc00000000500000000e000000009000000005ffffffffeffffffffeffffffff5",
            INIT_10 => X"fffffffecfffffffce000000014fffffffe7fffffffea000000018ffffffffa000000016",
            INIT_11 => X"fffffffecffffffff300000000100000000dffffffff7ffffffff900000001dffffffff9",
            INIT_12 => X"ffffffff2ffffffff8ffffffffffffffffe4000000008000000013000000026ffffffffb",
            INIT_13 => X"000000008000000009ffffffff9000000014ffffffff8000000000ffffffff6fffffffed",
            INIT_14 => X"ffffffffeffffffff900000001fffffffffffffffffffffffffffbffffffff2ffffffff1",
            INIT_15 => X"ffffffffcffffffffc00000000500000000ffffffffe600000001b00000000efffffffe8",
            INIT_16 => X"ffffffff1000000008000000019000000005fffffffdcffffffff1ffffffffdfffffffe1",
            INIT_17 => X"fffffffa3fffffffdefffffff94fffffff6efffffff6dfffffff95fffffffe1fffffff84",
            INIT_18 => X"00000000e00000003400000003200000000800000001d00000003100000000ffffffff84",
            INIT_19 => X"000000012000000011ffffffff800000000100000001dffffffffaffffffff2ffffffff8",
            INIT_1A => X"00000000800000001affffffff0fffffffeeffffffffaffffffff100000000200000000c",
            INIT_1B => X"fffffffb5fffffffdcfffffffe4fffffffd300000002900000002d00000002b000000024",
            INIT_1C => X"00000000dffffffffb000000000fffffffa9fffffffa1fffffffaafffffffa7fffffffa5",
            INIT_1D => X"fffffffe7fffffffe900000002e000000027000000030000000011000000017000000006",
            INIT_1E => X"00000001c00000001cfffffffff000000023ffffffffdffffffff1ffffffff3fffffffec",
            INIT_1F => X"ffffffff3ffffffffaffffffff0ffffffffe00000000cfffffffeb00000001400000001b",
            INIT_20 => X"000000015000000003000000015000000017000000000fffffffff000000018000000009",
            INIT_21 => X"fffffffe9000000015fffffffed00000000a00000000900000002200000001500000000e",
            INIT_22 => X"00000004800000005700000002700000000800000001800000001900000000e000000002",
            INIT_23 => X"fffffffe600000001500000000e00000000100000002200000004900000000b000000035",
            INIT_24 => X"000000023fffffffedffffffff1000000018fffffffc7fffffffe4fffffffeb000000008",
            INIT_25 => X"ffffffff2fffffffe4fffffffe200000002c00000000c00000001a000000040000000029",
            INIT_26 => X"00000003200000000affffffff900000002600000003c000000004000000013ffffffff6",
            INIT_27 => X"ffffffff9fffffffd1fffffffc9fffffffd3ffffffff2000000008ffffffff100000001f",
            INIT_28 => X"00000001bffffffff3fffffffe8fffffffeb000000004fffffffe400000000ffffffffff",
            INIT_29 => X"00000000200000001700000000600000002100000003700000000a00000002b000000033",
            INIT_2A => X"000000001fffffffdf00000001dffffffffbffffffffd000000027000000008000000006",
            INIT_2B => X"000000009000000015000000006000000009000000036000000014fffffffd5000000004",
            INIT_2C => X"00000000400000000a000000021ffffffff1fffffffe1000000018ffffffff7000000017",
            INIT_2D => X"fffffffd7000000016ffffffffefffffffdbfffffffe600000000b000000007000000024",
            INIT_2E => X"00000002c000000038ffffffffcfffffffc9ffffffff1fffffffeafffffffdcfffffffe2",
            INIT_2F => X"fffffffe0fffffffe6000000012000000012fffffffe3fffffffe3000000006fffffffd1",
            INIT_30 => X"fffffffda000000016000000006000000043000000007ffffffff600000001effffffff9",
            INIT_31 => X"000000007000000004fffffffce000000014fffffffe5fffffffbe00000003200000000d",
            INIT_32 => X"ffffffff4fffffffc7fffffff81ffffffff0ffffffffdfffffffd100000003a000000013",
            INIT_33 => X"000000008ffffffff0ffffffff100000000300000003c000000037000000018fffffffda",
            INIT_34 => X"ffffffff7fffffffedfffffffbfffffffff3ffffffff7fffffffe4fffffffc0fffffffdf",
            INIT_35 => X"fffffffebfffffffe2000000008ffffffff0ffffffff1fffffffc9000000003fffffffd4",
            INIT_36 => X"fffffffd9000000011000000000fffffffffffffffffdfffffffe700000000fffffffff3",
            INIT_37 => X"00000002dffffffff7ffffffff800000002c000000009fffffffe0000000021000000006",
            INIT_38 => X"000000019ffffffff6000000024000000002ffffffff300000002f000000018fffffffed",
            INIT_39 => X"000000017fffffffc5fffffffe8ffffffff7000000009000000009fffffffe8000000023",
            INIT_3A => X"ffffffff100000000600000001800000000800000000f000000008fffffffe500000000b",
            INIT_3B => X"fffffffd0ffffffff5000000014fffffffb3fffffffd0fffffffd0fffffffb5ffffffff7",
            INIT_3C => X"ffffffff3fffffffe3fffffffe8fffffffeafffffffe6000000015000000011fffffffe0",
            INIT_3D => X"ffffffff1ffffffffcfffffffea00000000b00000002e00000000300000000c000000011",
            INIT_3E => X"ffffffff8fffffffd000000001bffffffff0ffffffff7000000007000000013000000004",
            INIT_3F => X"ffffffff700000002d00000001dffffffffeffffffff2fffffffd1000000013fffffffc1",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffffcfffffffe2fffffffdc000000011fffffffe8ffffffffb000000016000000015",
            INIT_41 => X"ffffffffb000000001ffffffff3ffffffff4fffffffe5fffffffbafffffffeafffffffa8",
            INIT_42 => X"000000008000000013000000009ffffffff8000000021ffffffff6fffffffebfffffffee",
            INIT_43 => X"ffffffffaffffffff2fffffffcf000000002000000003fffffffd7000000020000000006",
            INIT_44 => X"000000002ffffffff6ffffffffd000000010000000000000000000ffffffff2ffffffff7",
            INIT_45 => X"000000018ffffffff400000002300000004900000000f000000014000000026ffffffff8",
            INIT_46 => X"ffffffffafffffffed00000000000000002000000000400000000e000000059000000033",
            INIT_47 => X"000000032000000028000000017ffffffffb000000013fffffffe9fffffffbf000000006",
            INIT_48 => X"fffffffc900000002d00000002affffffff000000003400000003600000001100000003f",
            INIT_49 => X"000000013000000020ffffffffcfffffffe5fffffffe6fffffffe2ffffffffeffffffff3",
            INIT_4A => X"00000001effffffff9000000000fffffffeafffffffd100000001afffffffdbfffffffd8",
            INIT_4B => X"ffffffff9000000013ffffffff1ffffffffa00000003e000000006fffffffd0000000018",
            INIT_4C => X"fffffffe2fffffffeaffffffff900000002400000003800000000300000003b00000002e",
            INIT_4D => X"00000001f00000000afffffffec000000013ffffffff7ffffffff8fffffffd4000000004",
            INIT_4E => X"000000005fffffffe2fffffffc7fffffffd9ffffffffffffffffe300000000a00000002a",
            INIT_4F => X"000000010ffffffffafffffffd8fffffffefffffffffcfffffffeffffffffedfffffffdb",
            INIT_50 => X"00000000cfffffffca00000002000000002d00000001800000003b000000012fffffffe0",
            INIT_51 => X"fffffffef00000001a000000028000000026000000019fffffffe5fffffffbe00000001b",
            INIT_52 => X"00000000200000000100000000d00000000200000000cfffffffff00000000400000000b",
            INIT_53 => X"000000025ffffffff0ffffffff0ffffffff2000000026fffffffd2fffffffe8000000009",
            INIT_54 => X"000000031000000019ffffffff0fffffff88000000006fffffffedfffffff84000000021",
            INIT_55 => X"fffffffe3ffffffff900000001afffffffdcfffffffe7000000016ffffffffd00000001d",
            INIT_56 => X"00000001b000000022000000028000000050000000008fffffffdcfffffffee000000003",
            INIT_57 => X"fffffffe600000003000000000f00000000400000000500000001700000002900000003e",
            INIT_58 => X"00000001700000002e00000001300000001affffffffbfffffffe100000001b000000013",
            INIT_59 => X"ffffffffffffffffdc00000000c000000026ffffffffc00000001000000001b000000014",
            INIT_5A => X"ffffffff2ffffffff6ffffffffffffffffd9ffffffff500000000ffffffffd7000000038",
            INIT_5B => X"00000000f00000001c00000002affffffff6ffffffffbfffffffd600000001600000002e",
            INIT_5C => X"ffffffff2000000017ffffffffefffffffedfffffffe000000001800000002500000001a",
            INIT_5D => X"fffffffddfffffffefffffffff1fffffffe6000000017fffffffd7fffffffdf000000008",
            INIT_5E => X"00000000e000000024fffffffde00000001f00000001afffffffc3000000004ffffffff6",
            INIT_5F => X"fffffffec000000029000000002fffffffd5fffffffe5000000012fffffffdefffffffe8",
            INIT_60 => X"fffffffe3ffffffff6ffffffffdfffffffe3ffffffffffffffffeafffffffe9fffffffe2",
            INIT_61 => X"fffffffc9fffffffd8000000004fffffffeffffffffd0ffffffffeffffffffefffffffec",
            INIT_62 => X"fffffffccfffffffb3000000022000000016000000007ffffffffb00000000000000002f",
            INIT_63 => X"fffffffff000000005ffffffff1000000002ffffffff7fffffffe5000000006000000020",
            INIT_64 => X"000000018ffffffff9000000009000000019000000019000000009000000026000000008",
            INIT_65 => X"000000000fffffffd9fffffffd6fffffffda000000026000000011fffffffe4fffffffcd",
            INIT_66 => X"00000001200000000b00000000afffffffc300000000600000001cfffffffdc000000016",
            INIT_67 => X"000000013000000006000000033fffffffd7ffffffff8000000029000000017ffffffff7",
            INIT_68 => X"00000000effffffff900000000e00000002200000000c000000010000000003000000014",
            INIT_69 => X"fffffffe4fffffffdc00000001fffffffff4000000002000000000000000017000000002",
            INIT_6A => X"ffffffffc000000038000000017ffffffffb00000002e00000003d000000022fffffffe2",
            INIT_6B => X"00000000600000003dffffffff400000001d00000003700000000affffffff0ffffffffc",
            INIT_6C => X"00000003cfffffffe4fffffffe4ffffffff1fffffffd6000000007000000040fffffffe0",
            INIT_6D => X"000000017000000000fffffffd8ffffffffdfffffffcf000000043fffffffbbfffffffe9",
            INIT_6E => X"00000000400000000000000002900000000400000003800000001300000000b000000010",
            INIT_6F => X"fffffffd1000000009fffffffdd00000001a00000001fffffffff6fffffffed00000002c",
            INIT_70 => X"ffffffffbfffffffcefffffffeffffffffcfffffffff3fffffffbbfffffffcafffffffe6",
            INIT_71 => X"fffffffd9000000002ffffffff600000000afffffffecfffffffe9ffffffff800000000f",
            INIT_72 => X"00000000100000001500000001a00000000b000000006000000000ffffffff1fffffffe9",
            INIT_73 => X"00000000d000000016fffffffe900000000a00000000700000000c00000001300000001c",
            INIT_74 => X"00000000300000000000000001a000000009ffffffff3000000009fffffffe0fffffffcd",
            INIT_75 => X"fffffffdb000000012ffffffffbfffffffeb00000000100000000a000000017000000037",
            INIT_76 => X"ffffffffa00000000300000001f00000002a00000000a000000015000000006fffffffeb",
            INIT_77 => X"fffffffe4fffffffc6ffffffff3000000008000000022ffffffff900000000ffffffffe6",
            INIT_78 => X"fffffffd9ffffffff6000000017fffffffe9000000004000000005ffffffff7000000018",
            INIT_79 => X"000000009000000020000000013ffffffffa000000006fffffffe3ffffffffcfffffffe6",
            INIT_7A => X"fffffffebffffffffcffffffff900000002000000000bffffffff4000000006000000000",
            INIT_7B => X"00000000c00000002b00000001b00000000100000002e00000000efffffffe1fffffffef",
            INIT_7C => X"00000002800000000600000005000000001000000002a000000047ffffffffe00000000d",
            INIT_7D => X"fffffffd8fffffffc8fffffffe9fffffffdbfffffffde00000005400000006b00000004b",
            INIT_7E => X"fffffffedfffffffcc000000012ffffffff9ffffffff1ffffffff2fffffffc7fffffffe6",
            INIT_7F => X"fffffffcefffffffd7000000008000000009ffffffff7fffffffc3fffffffd3000000009",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffffe000000007ffffffffafffffffe8fffffffe0fffffffd0ffffffff0fffffffef",
            INIT_01 => X"fffffffe4ffffffff300000000600000001f000000017fffffffecffffffff8000000016",
            INIT_02 => X"fffffffe3fffffffe9000000015000000010ffffffffb00000001800000000900000000c",
            INIT_03 => X"000000005fffffffd7fffffffe500000003000000001cfffffffe1fffffffe3fffffffeb",
            INIT_04 => X"ffffffff3fffffffdd000000024ffffffffeffffffff600000000200000000e00000000b",
            INIT_05 => X"ffffffffe00000001600000000d000000003fffffffeefffffffecffffffff9fffffffd1",
            INIT_06 => X"000000005fffffffe8000000013fffffffecfffffffe200000000b000000027000000031",
            INIT_07 => X"000000033ffffffffd00000002300000000e00000001d00000001bffffffff7fffffffe9",
            INIT_08 => X"fffffffe9000000000fffffffea00000000300000001c00000000afffffffdbffffffff0",
            INIT_09 => X"fffffffd2ffffffffa00000003c000000037000000023000000022000000022000000001",
            INIT_0A => X"000000018ffffffff7fffffffd6fffffffc1fffffffe0000000002fffffffcefffffffc2",
            INIT_0B => X"000000020000000016000000041000000004000000000ffffffffe000000009000000000",
            INIT_0C => X"00000001dffffffff700000000a000000010ffffffff7fffffffec00000000dffffffff9",
            INIT_0D => X"00000001300000001700000001a00000001900000002600000001b00000000d000000018",
            INIT_0E => X"fffffffa400000002800000002dfffffffc2fffffffee000000042000000021000000011",
            INIT_0F => X"fffffffc0fffffffeffffffffd0fffffffe2000000004ffffffffdfffffffff000000028",
            INIT_10 => X"000000036fffffffbffffffffb600000003ffffffffaefffffffe6ffffffff5fffffff8f",
            INIT_11 => X"00000001dfffffffecffffffff7fffffffac000000009000000055fffffffbefffffffb7",
            INIT_12 => X"00000002000000000a000000000ffffffff2fffffffea000000009000000022000000006",
            INIT_13 => X"00000002400000001300000000e00000000700000000afffffffff000000006ffffffff2",
            INIT_14 => X"00000000500000001e00000001900000000d000000009000000023000000035000000040",
            INIT_15 => X"fffffffe4000000002fffffffcd000000000fffffffedfffffffbcfffffffeeffffffff2",
            INIT_16 => X"ffffffff8ffffffffc000000027fffffffd4fffffffe8000000008fffffffe8fffffffdc",
            INIT_17 => X"ffffffffb00000003000000001efffffffe7fffffffee000000002ffffffffb000000003",
            INIT_18 => X"fffffffe1ffffffffffffffffe3ffffffff9fffffffe700000001200000000e00000000b",
            INIT_19 => X"fffffffec00000000fffffffffb000000000000000011000000001fffffffce000000000",
            INIT_1A => X"00000000e000000036fffffffe0000000013fffffffeafffffffc100000002cffffffff5",
            INIT_1B => X"00000000cffffffff500000000c000000012ffffffffe00000002c00000003b000000001",
            INIT_1C => X"00000000dffffffffc000000003fffffffe1000000028ffffffffcfffffffe1ffffffffb",
            INIT_1D => X"ffffffff7fffffffeafffffffc200000000b00000001afffffffec00000000a00000000e",
            INIT_1E => X"00000000400000000300000001e00000004200000001e000000032000000028fffffffce",
            INIT_1F => X"ffffffff7000000014000000029ffffffff800000000e000000010fffffffcd000000015",
            INIT_20 => X"00000000b00000000bffffffff8fffffff97fffffffd0fffffffeeffffffff1000000018",
            INIT_21 => X"00000001bfffffffe800000001400000000300000001b00000000a000000009fffffffe5",
            INIT_22 => X"00000000000000000400000001300000000f000000015000000000fffffffe400000001c",
            INIT_23 => X"00000001300000002100000001300000001e000000000ffffffff700000003a000000025",
            INIT_24 => X"000000009000000022000000006fffffffe3fffffffe5000000014000000006000000002",
            INIT_25 => X"fffffffed00000000200000000bfffffffdcffffffff0fffffffdaffffffffefffffffeb",
            INIT_26 => X"000000016000000001fffffffe1000000002ffffffffeffffffff4fffffffdbfffffffd2",
            INIT_27 => X"fffffffc4000000038fffffff8cfffffff9d000000003fffffffaefffffff99000000028",
            INIT_28 => X"ffffffffd00000000e00000000200000001c000000002000000026000000012fffffff77",
            INIT_29 => X"00000000e000000016fffffffff00000000a000000000fffffffed00000001f000000015",
            INIT_2A => X"fffffffeafffffffd3000000025ffffffff9ffffffffc00000000e00000001900000001a",
            INIT_2B => X"fffffffc6fffffffbcfffffff91fffffffdb000000000ffffffff200000001b000000003",
            INIT_2C => X"fffffffedfffffffe2fffffffcffffffffb7fffffffcd000000006fffffffb1fffffff9c",
            INIT_2D => X"000000000000000010000000003ffffffffefffffffecffffffffc00000000afffffffc8",
            INIT_2E => X"000000004000000018ffffffffefffffffee00000001600000002b000000002000000011",
            INIT_2F => X"00000000100000000700000000e00000001c000000010000000006fffffffe5fffffffea",
            INIT_30 => X"fffffffee000000009fffffffff000000005ffffffff300000000e00000001f00000000c",
            INIT_31 => X"ffffffff1ffffffff8000000025000000047ffffffff2000000031000000018ffffffff9",
            INIT_32 => X"fffffffeffffffffa6ffffffff3fffffffe2fffffffc2ffffffff100000001200000001f",
            INIT_33 => X"00000003100000004100000002800000003b000000017fffffffd9fffffffd6000000017",
            INIT_34 => X"fffffffd9fffffffdcfffffffa7fffffffc9fffffffff00000002800000003800000003d",
            INIT_35 => X"ffffffff2fffffffcdfffffffbdfffffffe7ffffffff2ffffffff0fffffffd9fffffffb3",
            INIT_36 => X"00000001affffffff4fffffffdaffffffffe00000002cfffffffdafffffffb1ffffffff3",
            INIT_37 => X"000000012fffffffdd00000000400000000000000002f00000003e00000003a000000045",
            INIT_38 => X"000000015fffffffecfffffffd8000000015ffffffffb00000001100000000700000000c",
            INIT_39 => X"00000001800000002d000000013000000022000000052ffffffff7000000048ffffffffd",
            INIT_3A => X"ffffffffbffffffff8000000001ffffffff5ffffffff6fffffffdc000000001ffffffff3",
            INIT_3B => X"00000001100000000c00000002100000001e00000001600000000f000000003000000015",
            INIT_3C => X"fffffffbbfffffffbbfffffffbffffffff96fffffffd600000001800000001400000000d",
            INIT_3D => X"000000014fffffffffffffffff700000001400000000fffffffff8ffffffffa000000000",
            INIT_3E => X"fffffffd2000000012000000006ffffffff1fffffffedfffffffef000000010000000004",
            INIT_3F => X"fffffffbbfffffffe3fffffffd3fffffffdbfffffffabfffffffe5000000015000000023",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000041fffffffff000000013000000012000000022fffffffe0fffffffd7fffffffde",
            INIT_41 => X"fffffffe6fffffffe6000000024ffffffff1ffffffff000000001a000000004ffffffff2",
            INIT_42 => X"00000001bfffffffe6fffffffdb000000004ffffffffa00000002c000000005000000009",
            INIT_43 => X"00000000c000000002000000011000000007000000010000000022000000017000000010",
            INIT_44 => X"ffffffffd000000011000000046fffffffd700000001700000002300000000f000000009",
            INIT_45 => X"00000001200000000900000002600000000affffffff4ffffffff1ffffffff700000001e",
            INIT_46 => X"fffffffe5ffffffff7ffffffff100000000a000000010ffffffffa00000000700000000b",
            INIT_47 => X"000000020000000003ffffffffc00000003000000002e000000002fffffffe9fffffffe8",
            INIT_48 => X"000000011ffffffffd00000001a00000000d000000025000000011000000010000000004",
            INIT_49 => X"ffffffffeffffffff600000000300000000100000000a00000000100000000c000000015",
            INIT_4A => X"fffffffe000000001b00000000b00000002900000001e00000001f000000018000000002",
            INIT_4B => X"000000045000000035ffffffff500000001f00000002900000002700000001600000001d",
            INIT_4C => X"fffffffd8fffffffeffffffffefffffffff9fffffffe5000000017fffffffeb00000001c",
            INIT_4D => X"fffffffe800000000a000000010fffffffeb00000000600000000f000000023fffffffff",
            INIT_4E => X"000000007fffffffe4000000009ffffffff9000000000000000004ffffffff800000001a",
            INIT_4F => X"00000002400000003c00000000a00000001dffffffffcfffffffe9ffffffff3000000024",
            INIT_50 => X"fffffffcefffffffc2fffffffedfffffffe1000000011000000014ffffffffcffffffff1",
            INIT_51 => X"000000006ffffffff0fffffffddfffffffc9fffffffd7ffffffff8fffffffb7fffffffd7",
            INIT_52 => X"00000001dffffffff900000002a000000005000000025000000003fffffffdbfffffffee",
            INIT_53 => X"00000002d00000001d000000049ffffffff900000001a000000026000000015ffffffff7",
            INIT_54 => X"00000001000000001800000000fffffffff100000000300000001700000000800000000b",
            INIT_55 => X"00000002d00000000e00000001c000000025fffffffe2000000006000000014ffffffff8",
            INIT_56 => X"000000000000000009fffffffeafffffffd900000000c00000000300000001900000002a",
            INIT_57 => X"fffffffecfffffffe4fffffffaffffffffc3fffffffe9fffffffe600000000cfffffffe4",
            INIT_58 => X"00000000200000000a00000002a00000004ffffffffbdfffffffbbfffffffc6fffffffbe",
            INIT_59 => X"fffffffffffffffff3ffffffff6000000006000000012fffffffe500000000a00000003e",
            INIT_5A => X"000000014000000018fffffffee000000008ffffffff0000000014000000021ffffffff9",
            INIT_5B => X"000000017ffffffff9fffffffcefffffffc6ffffffff1ffffffff2ffffffffb00000000d",
            INIT_5C => X"00000002900000000b000000004000000000ffffffff200000000c000000011000000001",
            INIT_5D => X"00000000000000000800000001cffffffffa000000005000000005000000005000000003",
            INIT_5E => X"fffffff9200000000200000001c00000001600000001c00000002c000000028000000011",
            INIT_5F => X"00000002a00000000800000002000000000800000001b000000015fffffffc6fffffffb7",
            INIT_60 => X"ffffffff2000000009fffffffcafffffffd4000000001fffffffef000000006000000004",
            INIT_61 => X"000000013ffffffff5ffffffff6ffffffff4fffffffb9fffffffd8fffffffeffffffffc9",
            INIT_62 => X"00000001000000001600000000f000000003fffffffe3fffffffedffffffffdffffffffe",
            INIT_63 => X"ffffffffcfffffffe7fffffffe4ffffffffeffffffffbfffffffe5000000000000000005",
            INIT_64 => X"00000000cfffffffeafffffffe5ffffffffbffffffff700000000d000000008000000000",
            INIT_65 => X"fffffffd5ffffffff5ffffffffefffffffff00000001500000001ffffffffd5000000016",
            INIT_66 => X"fffffff8efffffffc2fffffffabfffffffbbfffffffbfffffffffefffffffe0fffffffd4",
            INIT_67 => X"fffffffb6000000000ffffffff000000000f00000001d000000022000000019fffffffab",
            INIT_68 => X"fffffffeeffffffffb000000040fffffffef00000003f000000031fffffffc3fffffffb8",
            INIT_69 => X"000000016000000013000000001ffffffffeffffffff600000000a00000002e00000001c",
            INIT_6A => X"00000002effffffff4000000002000000001000000010000000029ffffffffc000000001",
            INIT_6B => X"00000000500000000a00000000700000002400000000d000000038000000001000000022",
            INIT_6C => X"00000003dfffffffe900000002a00000000500000001e00000001800000001f000000012",
            INIT_6D => X"ffffffff5fffffff9cfffffffcbfffffff80fffffffe0ffffffffffffffffed000000019",
            INIT_6E => X"00000001afffffffd1fffffffd8000000012ffffffffbfffffffeb000000010fffffffff",
            INIT_6F => X"fffffffd0fffffff9afffffffb9fffffffbbfffffffcefffffffebfffffffd1fffffffe1",
            INIT_70 => X"000000018000000017000000012000000023000000023000000027000000019fffffffc2",
            INIT_71 => X"ffffffffcffffffff300000001e00000001e00000004600000004400000000effffffffd",
            INIT_72 => X"fffffffd3fffffffd3ffffffffefffffffe3ffffffffafffffffd7fffffffe9fffffffcc",
            INIT_73 => X"fffffffedfffffffd6fffffffcc00000001afffffffd1fffffffd7fffffffebffffffffa",
            INIT_74 => X"000000021fffffffccfffffffdafffffffebfffffffbbfffffffedfffffffeffffffffed",
            INIT_75 => X"00000001700000000afffffffb1fffffff90fffffffd3fffffffa6fffffff7bfffffffa5",
            INIT_76 => X"00000001600000000900000002500000001800000000800000000d000000023000000000",
            INIT_77 => X"fffffffb9fffffffe6fffffffbf000000029000000004ffffffff500000000400000003d",
            INIT_78 => X"000000006ffffffffdfffffffef000000014000000010ffffffff400000000400000000d",
            INIT_79 => X"000000006fffffffe400000000300000000900000000000000000b00000001000000000c",
            INIT_7A => X"00000001000000001000000000fffffffffe000000011000000003000000024000000018",
            INIT_7B => X"fffffffeafffffffb2fffffffeffffffffe0fffffffc500000002000000001d000000011",
            INIT_7C => X"000000022ffffffff4ffffffff6000000006fffffffeafffffffe2fffffffcffffffffde",
            INIT_7D => X"00000000ffffffffdc00000000400000002d00000004800000000100000001800000002b",
            INIT_7E => X"ffffffff400000001dfffffffe5000000018000000008ffffffff8ffffffffa000000013",
            INIT_7F => X"fffffffecfffffffefffffffff2ffffffff6fffffffe0ffffffff4ffffffffeffffffffa",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000002d00000002b00000000700000000bfffffffff000000004fffffffedffffffff3",
            INIT_01 => X"ffffffffc000000015fffffffdd00000001e00000004700000000800000001a00000000c",
            INIT_02 => X"fffffffdc000000021fffffffeffffffffdf000000008ffffffffb00000001600000000c",
            INIT_03 => X"fffffffedfffffffed00000000fffffffff9000000018ffffffffe00000001cfffffffd8",
            INIT_04 => X"fffffffcffffffffd5fffffffe1fffffffe8fffffffe7ffffffffafffffffed00000002b",
            INIT_05 => X"ffffffff9000000009ffffffff4000000004fffffffcdfffffffe1fffffffd1ffffffff0",
            INIT_06 => X"000000000000000015000000007fffffffeaffffffffa00000000d000000009ffffffffe",
            INIT_07 => X"fffffffeeffffffff7000000019000000020fffffffeb00000003400000001e000000002",
            INIT_08 => X"000000004fffffffcc00000000000000001afffffffefffffffffa00000000cfffffffe6",
            INIT_09 => X"00000001d000000004fffffffed00000001300000002b00000001b00000000000000001e",
            INIT_0A => X"fffffff97fffffffb9ffffffff3fffffffcafffffffe0fffffffbefffffffd3fffffffaf",
            INIT_0B => X"ffffffff0fffffffdafffffffdbfffffffe5000000006000000001ffffffff4fffffffa8",
            INIT_0C => X"fffffffdafffffffd0fffffffc6000000023000000006ffffffffcfffffffdefffffffd8",
            INIT_0D => X"00000001d00000001d00000001300000001b00000001afffffffebfffffffdffffffff8d",
            INIT_0E => X"00000001affffffffa00000000a00000000b00000002300000002e000000010ffffffffc",
            INIT_0F => X"ffffffff800000000000000001d000000021fffffffee000000004000000022000000012",
            INIT_10 => X"fffffffe5fffffffce00000000a000000008000000019000000000000000010000000008",
            INIT_11 => X"000000006fffffffd0fffffffc3fffffffc8fffffffb2fffffffe3fffffffcbfffffffec",
            INIT_12 => X"ffffffff8ffffffff3000000006fffffffeaffffffff4000000016000000022000000013",
            INIT_13 => X"fffffffdd000000006fffffffaefffffffd7fffffffcefffffffdaffffffff5fffffffcf",
            INIT_14 => X"00000001d00000000f00000001600000001b00000002c00000001000000000dfffffffd9",
            INIT_15 => X"00000000900000000fffffffff700000001bffffffffc00000000700000001b000000014",
            INIT_16 => X"000000000000000015000000009fffffffe8000000008000000012fffffffe5fffffffd6",
            INIT_17 => X"fffffffe4000000013000000002ffffffff9000000006000000000000000001000000003",
            INIT_18 => X"00000002b00000001b000000000fffffffd8000000000ffffffff8ffffffffdffffffff1",
            INIT_19 => X"ffffffffe000000002fffffffddfffffffcefffffffe2fffffffdafffffffc5fffffffde",
            INIT_1A => X"000000012ffffffffbfffffffed00000000100000000a000000004000000003000000016",
            INIT_1B => X"fffffffecfffffffdefffffffcaffffffffe000000009fffffffe900000000100000000f",
            INIT_1C => X"000000000000000000ffffffff9fffffffecffffffff700000000500000000e000000008",
            INIT_1D => X"fffffffbf00000001f000000021fffffffdffffffffdffffffffeb00000001bfffffffef",
            INIT_1E => X"00000001900000001000000000c000000000ffffffffb000000019fffffffebfffffffcf",
            INIT_1F => X"ffffffffb000000002ffffffffffffffffe3fffffffe6fffffffbbffffffff8fffffffd6",
            INIT_20 => X"ffffffff8ffffffff3ffffffff0ffffffff4000000012ffffffffbfffffffe5000000020",
            INIT_21 => X"ffffffffafffffffcffffffffdaffffffff4fffffffd600000000dfffffffe1ffffffffa",
            INIT_22 => X"000000002fffffffeeffffffff200000000b000000029ffffffffdfffffffcd000000006",
            INIT_23 => X"000000000ffffffff1ffffffffa000000007fffffffc600000001f00000000d00000000b",
            INIT_24 => X"000000037ffffffffbffffffff700000002a000000010fffffffe400000001f00000001f",
            INIT_25 => X"fffffffe2fffffffd5000000000ffffffffeffffffff3000000008000000011fffffffd9",
            INIT_26 => X"00000002afffffffc7fffffffe9000000015fffffffc0ffffffff1000000016fffffffed",
            INIT_27 => X"00000004e000000003fffffffd900000002c000000044ffffffff8ffffffff7ffffffff0",
            INIT_28 => X"00000000700000002700000000f00000000500000000efffffffdcffffffff8fffffffb6",
            INIT_29 => X"000000023fffffffeffffffffdb00000001cfffffffeb000000012000000029000000047",
            INIT_2A => X"fffffffe600000001900000000f00000000c000000025000000036fffffffdbffffffff3",
            INIT_2B => X"ffffffff7fffffffcf000000013ffffffff6ffffffffb00000000500000000bfffffffd4",
            INIT_2C => X"00000003a00000000300000002700000002fffffffff9fffffffdafffffffff000000016",
            INIT_2D => X"000000006ffffffffc000000040fffffffd8fffffffe700000003cfffffffdcfffffffd0",
            INIT_2E => X"fffffffecfffffffbeffffffff900000002afffffffd0fffffffe000000001cffffffff4",
            INIT_2F => X"000000015fffffffd600000001afffffffe7fffffffeefffffffefffffffff5000000023",
            INIT_30 => X"fffffffcc000000007ffffffffdffffffffe000000006000000031000000008000000032",
            INIT_31 => X"fffffffeeffffffff000000000bfffffffd7ffffffff4000000002ffffffff800000002a",
            INIT_32 => X"000000015000000016ffffffff8fffffffddfffffffed000000001ffffffff2ffffffffe",
            INIT_33 => X"000000020fffffffeffffffffe2000000027000000003fffffffeb000000004000000002",
            INIT_34 => X"fffffffe2ffffffffaffffffffdffffffff800000001000000001dfffffffe0fffffffef",
            INIT_35 => X"fffffffe3ffffffff7000000019000000022fffffffc0fffffffe8000000006fffffffbe",
            INIT_36 => X"000000011ffffffff5fffffffee000000055fffffffedfffffffc1000000040000000019",
            INIT_37 => X"00000001e00000000600000005e00000005200000005000000001b00000002e000000042",
            INIT_38 => X"fffffffc8000000016000000013fffffffdafffffffe100000001bfffffffe2000000023",
            INIT_39 => X"fffffffcefffffffed00000000dfffffffde00000000100000001a000000028000000003",
            INIT_3A => X"fffffffeaffffffff5ffffffffdfffffffe3000000000ffffffff700000001c00000002d",
            INIT_3B => X"00000001e00000000500000002700000001700000001d00000001c00000000afffffffe3",
            INIT_3C => X"fffffffe600000000800000000500000001d00000001200000001800000002100000001f",
            INIT_3D => X"fffffffc3fffffffca00000005000000003b00000001700000003200000003e000000029",
            INIT_3E => X"000000008ffffffffeffffffff8fffffffefffffffffafffffffd3fffffffdc000000008",
            INIT_3F => X"000000011000000022000000054fffffffd6fffffffef000000036fffffffcafffffffda",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffffffff0000000004fffffffe5ffffffffefffffffffffffffff2ffffffffe000000006",
            INIT_41 => X"00000001d00000001d00000000500000002500000002e000000029000000004ffffffff3",
            INIT_42 => X"fffffff8ffffffff89fffffffbbfffffffb5fffffffa7fffffffb4000000007000000029",
            INIT_43 => X"00000003700000002800000002f000000037ffffffff8fffffffa1fffffffbefffffff93",
            INIT_44 => X"fffffffb3fffffffaefffffffb7fffffffad000000015000000029000000027fffffffff",
            INIT_45 => X"000000018000000027000000000fffffffcafffffffaffffffffa9fffffffcffffffff96",
            INIT_46 => X"00000002800000000e000000010000000012fffffffd700000003400000002b000000002",
            INIT_47 => X"000000026ffffffff6fffffffdcfffffffc5ffffffff3fffffffedfffffffec000000032",
            INIT_48 => X"ffffffffc000000002000000002000000007ffffffff500000000dfffffffef00000001c",
            INIT_49 => X"ffffffff5fffffffe400000001affffffff5000000004ffffffff4fffffffdafffffffe7",
            INIT_4A => X"000000000ffffffff7fffffffd2ffffffff7000000017fffffffefffffffff0fffffffc7",
            INIT_4B => X"00000001e000000000ffffffff9ffffffffefffffffe9ffffffff9000000000000000009",
            INIT_4C => X"00000001c000000004fffffffe5ffffffff1fffffffecfffffffcafffffffeefffffffdd",
            INIT_4D => X"00000000200000001effffffffe00000001d000000014fffffffdaffffffff7000000009",
            INIT_4E => X"00000000700000000600000000f00000000a000000000fffffffec00000002a000000028",
            INIT_4F => X"00000001900000001100000001a00000000e00000000fffffffff1fffffffeb00000000e",
            INIT_50 => X"ffffffffffffffffeafffffffddfffffffe200000001900000001a000000007000000007",
            INIT_51 => X"00000001100000000f00000000e00000000a000000012ffffffffe000000000000000006",
            INIT_52 => X"00000000e000000021ffffffffa000000000000000016000000007fffffffe4fffffffe4",
            INIT_53 => X"00000000b00000000f00000000500000000c000000027000000016000000026000000019",
            INIT_54 => X"fffffffacfffffffd800000001efffffffd2fffffffee000000015ffffffff3ffffffff7",
            INIT_55 => X"00000001700000000200000002b00000001effffffff6fffffffd6fffffffe300000000d",
            INIT_56 => X"ffffffffdffffffff800000000bffffffffe00000000bffffffff9ffffffff7000000027",
            INIT_57 => X"00000000f00000002800000001e000000000000000005fffffffeefffffffebffffffffd",
            INIT_58 => X"00000002300000001000000001f00000001a000000013000000017ffffffffd00000000f",
            INIT_59 => X"000000017000000000ffffffffbffffffff900000000cffffffffd000000007000000029",
            INIT_5A => X"ffffffff2fffffffc7fffffffc400000001600000002900000000a00000001b000000009",
            INIT_5B => X"fffffffe3fffffffb2fffffffd5fffffffe3fffffffa0fffffff99fffffffc5fffffff77",
            INIT_5C => X"00000001effffffffafffffffe5ffffffff9000000009000000007ffffffff200000000b",
            INIT_5D => X"ffffffff3ffffffff5ffffffff100000000800000000affffffffe000000008000000005",
            INIT_5E => X"000000023ffffffff200000000a000000003000000013000000013ffffffff1ffffffffb",
            INIT_5F => X"000000018ffffffffc000000017fffffffeb000000002000000006fffffffde000000029",
            INIT_60 => X"ffffffffa000000007ffffffff5fffffffca00000000bffffffff1fffffffc6ffffffff4",
            INIT_61 => X"000000008000000002fffffffecfffffffdefffffffedffffffff9fffffffe3ffffffffe",
            INIT_62 => X"000000011ffffffffdfffffffe4fffffffe700000000000000000800000000d000000007",
            INIT_63 => X"00000000500000002400000002000000001d00000001b000000019000000007000000013",
            INIT_64 => X"000000003000000009000000012ffffffffbfffffffecfffffffe5ffffffff3ffffffffd",
            INIT_65 => X"00000004600000001800000002600000001c00000000000000001800000000f000000005",
            INIT_66 => X"ffffffffdfffffffc700000000dfffffffff000000007000000022000000023000000047",
            INIT_67 => X"fffffffe5fffffffe600000000fffffffffcffffffffe000000002fffffffd7fffffffeb",
            INIT_68 => X"fffffff96000000000fffffffe7fffffffff00000000bfffffffc7fffffff97ffffffffc",
            INIT_69 => X"00000001300000002300000000efffffffe7fffffffcffffffffa0fffffffd0fffffffbc",
            INIT_6A => X"000000008000000027000000023000000025000000041ffffffff100000000a00000000e",
            INIT_6B => X"000000006ffffffff5fffffffeafffffffcafffffffef000000013fffffffe7000000027",
            INIT_6C => X"ffffffff000000000afffffffecffffffffaffffffff2ffffffff8000000005000000004",
            INIT_6D => X"fffffffee000000009000000024000000015ffffffffffffffffed000000004fffffffff",
            INIT_6E => X"ffffffff900000001700000001300000000500000000400000001b00000000a00000001d",
            INIT_6F => X"00000002300000000b00000000bffffffffc000000006000000000ffffffff3000000020",
            INIT_70 => X"fffffffd2ffffffff7ffffffffcfffffffe2fffffffd900000000500000001600000000b",
            INIT_71 => X"fffffffe300000000cffffffff3fffffffefffffffff4000000004000000006fffffffee",
            INIT_72 => X"ffffffffc000000021fffffffdaffffffff7fffffffee00000000cfffffffe4fffffffe8",
            INIT_73 => X"fffffffed00000000300000001b00000003a00000000000000000f00000002cffffffff4",
            INIT_74 => X"000000009fffffffff000000004ffffffffeffffffffdfffffffdffffffffeaffffffffd",
            INIT_75 => X"00000000c00000000a000000015fffffffefffffffff9fffffffecffffffff5ffffffffc",
            INIT_76 => X"00000000effffffff800000004500000004600000001b00000003900000001e000000009",
            INIT_77 => X"fffffffe400000000100000000b00000000600000001700000002300000000b00000003f",
            INIT_78 => X"fffffffb0fffffffd4ffffffffcfffffffe300000002600000004600000000fffffffff9",
            INIT_79 => X"ffffffff4000000008000000012000000008000000039fffffffcafffffffd7fffffffd4",
            INIT_7A => X"ffffffffd000000004ffffffff600000000cfffffffedfffffffedfffffffee000000003",
            INIT_7B => X"00000000c00000002700000001bfffffffc7fffffffb8fffffffe8fffffffc1fffffffce",
            INIT_7C => X"00000001e000000004fffffffdcffffffff9fffffffe9fffffffe2fffffffe5ffffffff4",
            INIT_7D => X"00000000bfffffffd600000000dfffffffe6fffffffff00000000efffffffe8000000014",
            INIT_7E => X"fffffffeaffffffffafffffffed000000010000000018ffffffff6000000012000000010",
            INIT_7F => X"fffffffca00000000bfffffffdefffffffacfffffffcbfffffffc6fffffffc4ffffffff4",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffed00000001b00000002200000001200000001500000000600000001ffffffff9d",
            INIT_01 => X"000000016000000028ffffffff200000000c000000008ffffffff8000000012000000014",
            INIT_02 => X"ffffffffdffffffff9000000005ffffffffa00000000600000002d000000016fffffffef",
            INIT_03 => X"fffffffd7fffffffec000000002ffffffff1fffffffe5fffffffeb000000025ffffffff3",
            INIT_04 => X"fffffffe3fffffffd5fffffffe0000000016fffffffc4fffffffadfffffffe4fffffffd5",
            INIT_05 => X"00000000400000002d000000013ffffffffe00000001ffffffffd3fffffffedfffffffef",
            INIT_06 => X"000000002fffffffd5fffffffd4ffffffff4fffffffd1fffffffe3000000000ffffffff7",
            INIT_07 => X"00000001f00000000fffffffff0ffffffff900000000cfffffffd600000000000000000b",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000002a0cfffffb7b0000003001000000073ffffff170ffffffe76ffffff509ffffff8e0",
            INIT_01 => X"0000016b3000000b7a0000015ce000000dc2fffffe731fffffe7ef0000006a4000000521",
            INIT_02 => X"000000a63ffffff8a1000002323000000bd5000002342ffffff083ffffffd10ffffff645",
            INIT_03 => X"000002a490000018e6fffffee1e0000007d6fffffddff0000017c2000000270000000f0a",
            INIT_04 => X"ffffffff7fffffffedffffffffafffffffed000000000ffffffff2ffffffff5000000006",
            INIT_05 => X"fffffffdd000000017ffffffffdfffffffcffffffffd7fffffffef000000005ffffffff2",
            INIT_06 => X"fffffffdcfffffffebfffffffeb000000005fffffffe4ffffffffdfffffffe9000000010",
            INIT_07 => X"ffffffff5000000004000000008fffffffd1fffffffe2fffffffdc000000002ffffffff5",
            INIT_08 => X"00000000cffffffff7fffffffdefffffffeafffffffdcfffffffdffffffffd3ffffffffe",
            INIT_09 => X"00000001300000000900000001400000001cfffffffe8000000000ffffffffbfffffffff",
            INIT_0A => X"ffffffff5ffffffffc000000015ffffffff9000000004ffffffff6fffffffea000000000",
            INIT_0B => X"fffffffeaffffffffaffffffffcfffffffec000000013000000016ffffffffafffffffe4",
            INIT_0C => X"00000000400000001affffffff200000001cfffffffe4fffffffea000000009ffffffff9",
            INIT_0D => X"000000015ffffffff5fffffffe2fffffffe4ffffffff4ffffffff3000000007fffffffed",
            INIT_0E => X"fffffffd9fffffffe2ffffffff1fffffffdb00000000fffffffff0000000000ffffffff8",
            INIT_0F => X"fffffffdafffffffeffffffffdafffffffe2ffffffff5ffffffff4fffffffd7fffffffd4",
            INIT_10 => X"00000000cfffffffe8000000016000000000fffffffe4fffffffd0fffffffe3ffffffff8",
            INIT_11 => X"00000000300000000effffffff2000000005fffffffddfffffffd0fffffffe6ffffffff9",
            INIT_12 => X"00000000d000000017ffffffffafffffffe0fffffffdbfffffffe3fffffffedffffffff3",
            INIT_13 => X"fffffffdeffffffffbfffffffe5000000013fffffffe7000000000fffffffef000000006",
            INIT_14 => X"00000000d00000000a000000005000000012fffffffeafffffffeafffffffe6000000004",
            INIT_15 => X"ffffffff5fffffffe0fffffffdafffffffdc000000000ffffffffcffffffffaffffffff9",
            INIT_16 => X"fffffffeeffffffff500000001e00000000a00000000900000002c000000015000000014",
            INIT_17 => X"fffffffed000000013ffffffffe00000000afffffffff00000001600000001600000000e",
            INIT_18 => X"fffffffe8000000000fffffffeaffffffffd00000000b000000008000000014000000014",
            INIT_19 => X"00000000f00000000d000000015000000026000000030000000000ffffffff6fffffffee",
            INIT_1A => X"000000029000000012000000036000000027fffffffe2fffffffcbfffffffd2ffffffff1",
            INIT_1B => X"00000000c00000003600000000a00000002e00000003c00000000400000004f000000057",
            INIT_1C => X"00000001a000000011fffffffd9fffffffd4fffffffdffffffffecffffffff4000000009",
            INIT_1D => X"000000004fffffffe6fffffffc1fffffffaf00000000700000000000000000afffffffed",
            INIT_1E => X"fffffffd7fffffffc3fffffffe0ffffffff0ffffffffaffffffff800000003100000001d",
            INIT_1F => X"00000000fffffffff000000003000000006800000003d000000011000000058000000014",
            INIT_20 => X"fffffffd4ffffffff7000000012fffffffe800000003000000000a00000000ffffffffde",
            INIT_21 => X"00000006200000006000000005900000004e00000003f00000003afffffffdd000000001",
            INIT_22 => X"fffffffe6ffffffff600000000b000000012000000017000000037000000049000000029",
            INIT_23 => X"000000017ffffffff8000000011000000010fffffffea000000003fffffffe6000000006",
            INIT_24 => X"fffffffbffffffffc7fffffffec00000001affffffffbffffffffa000000005ffffffffb",
            INIT_25 => X"00000003d00000002100000000400000001200000001e00000002100000002bfffffffee",
            INIT_26 => X"00000000bfffffffe3fffffffe9fffffffd2ffffffff800000000900000000d000000035",
            INIT_27 => X"fffffffcafffffffc8fffffffdafffffffde00000000200000000600000002200000001c",
            INIT_28 => X"fffffffe4000000032000000006fffffffbf00000001efffffffeffffffffc5000000009",
            INIT_29 => X"fffffffceffffffff6000000004fffffffe2000000002000000017fffffffd2000000009",
            INIT_2A => X"ffffffff400000001bfffffffcaffffffff200000001f00000001100000002cffffffff6",
            INIT_2B => X"fffffffb200000005f000000019fffffffae00000003b000000007000000008ffffffff8",
            INIT_2C => X"000000001fffffffd9fffffffd0000000012ffffffffefffffffd700000005e000000013",
            INIT_2D => X"00000001afffffffee00000001effffffffcffffffffbfffffffeafffffffe4ffffffff3",
            INIT_2E => X"000000056fffffffa400000000500000000300000001f000000000fffffffcfffffffff7",
            INIT_2F => X"00000001f00000001d000000046fffffff8a00000000b00000008bfffffff63000000017",
            INIT_30 => X"ffffffffffffffffd4000000016ffffffff3fffffffea000000014fffffffdd00000000b",
            INIT_31 => X"fffffffdcffffffff4ffffffff7fffffffea00000001bfffffffe6ffffffff0000000014",
            INIT_32 => X"000000022000000014fffffffe1ffffffff6000000017ffffffff7fffffffe2ffffffff7",
            INIT_33 => X"fffffffed000000002000000062ffffffff0fffffffe5000000033fffffffefffffffff5",
            INIT_34 => X"000000050fffffff92000000013000000045fffffffdbffffffffe00000002300000000f",
            INIT_35 => X"fffffff4900000000c000000047fffffff7300000001c00000001afffffffbb000000005",
            INIT_36 => X"ffffffffafffffffd200000001200000000e000000054fffffff6800000001b000000057",
            INIT_37 => X"000000003000000008ffffffff6ffffffffd000000019fffffffe9fffffffd6ffffffff2",
            INIT_38 => X"000000042000000001fffffffd5000000004ffffffffdffffffff8000000022000000012",
            INIT_39 => X"fffffffd8ffffffffbffffffffa00000000dfffffffc9000000045000000001fffffffaa",
            INIT_3A => X"000000000fffffffddffffffff4fffffffe3000000030ffffffff400000001c00000001b",
            INIT_3B => X"fffffffdc000000011fffffffebffffffff300000001effffffff8000000016ffffffffb",
            INIT_3C => X"00000003b00000000bfffffffee00000001efffffffe6fffffffae000000036000000016",
            INIT_3D => X"fffffffc4fffffff83fffffffe3fffffffdefffffffb500000002dffffffff3000000006",
            INIT_3E => X"ffffffff5000000024000000000fffffffc5000000040fffffffeffffffffa700000000a",
            INIT_3F => X"fffffffee00000000e00000000afffffffe300000001a000000016000000014000000042",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000002a000000016ffffffffbffffffff0fffffffd9000000009fffffffe3fffffffe6",
            INIT_41 => X"000000029000000004ffffffffe00000004700000001c00000001c00000004c000000047",
            INIT_42 => X"ffffffff0ffffffff9fffffffe1fffffffdbfffffffc8000000011fffffffe8fffffffdf",
            INIT_43 => X"000000000fffffffac000000008fffffffc1fffffffcdfffffffe6fffffffe200000001f",
            INIT_44 => X"fffffffd7000000016000000011fffffffef00000002dfffffffeffffffffdeffffffff9",
            INIT_45 => X"00000000dfffffffcafffffffcefffffffcdfffffffce00000000000000003000000000f",
            INIT_46 => X"00000000efffffffed00000000bffffffff9fffffffd9000000002fffffffc8fffffff94",
            INIT_47 => X"00000005000000004d00000004200000001600000002800000001700000000100000003f",
            INIT_48 => X"000000039000000031fffffffcaffffffff200000002a00000004900000003c00000004f",
            INIT_49 => X"000000012fffffffe200000002100000002a00000003afffffffea00000003200000000f",
            INIT_4A => X"fffffffe9000000006000000029fffffffdb00000001900000001bfffffffc400000000c",
            INIT_4B => X"fffffffecfffffffd2fffffffaafffffffdcfffffff9ffffffffc0fffffff8cfffffffae",
            INIT_4C => X"000000034fffffffecfffffffd500000000affffffff6ffffffff000000001500000000f",
            INIT_4D => X"ffffffffe00000000bfffffffe0000000005000000006fffffffe7000000018fffffffd5",
            INIT_4E => X"000000025fffffffcc00000002c000000005ffffffff4ffffffff8ffffffffcffffffff2",
            INIT_4F => X"000000061fffffffdafffffffd200000004400000000c000000027fffffffc000000002f",
            INIT_50 => X"fffffffcafffffffe5ffffffff0000000003fffffffc800000004afffffffe5fffffffac",
            INIT_51 => X"fffffffee00000000cffffffffd00000000efffffffc400000001dfffffffd5fffffffcc",
            INIT_52 => X"fffffffbb00000001bfffffffc5000000019ffffffff1fffffffd800000002e00000000c",
            INIT_53 => X"00000002b00000005ffffffff6a000000031000000068fffffff38000000039000000019",
            INIT_54 => X"fffffffc700000003900000000f000000005000000033fffffffe6000000019000000005",
            INIT_55 => X"000000007fffffffccfffffffddffffffffbffffffffbffffffff3000000003000000000",
            INIT_56 => X"000000029ffffffff1000000000ffffffff8fffffffeeffffffff700000000ffffffffc4",
            INIT_57 => X"fffffffe100000003efffffffcbfffffffe900000002cfffffffd1fffffffebffffffffc",
            INIT_58 => X"fffffffa500000001e000000023fffffffda00000001dfffffffd3000000039fffffffbf",
            INIT_59 => X"000000054000000012fffffffd000000001c00000005bfffffff7800000002a00000002a",
            INIT_5A => X"ffffffff300000000400000002000000007ffffffff6700000005900000004efffffff86",
            INIT_5B => X"00000001600000000dffffffffa00000000300000000f000000017fffffffe200000001e",
            INIT_5C => X"fffffffdefffffffe7000000000000000031fffffffc400000001cffffffffefffffffe8",
            INIT_5D => X"fffffffac00000004c000000009fffffff81000000060fffffffd3fffffffc9000000033",
            INIT_5E => X"000000004000000007fffffffecffffffff1ffffffff0ffffffff1fffffffef000000013",
            INIT_5F => X"fffffffdbfffffffe0ffffffffffffffffc6000000019ffffffff4000000010ffffffff9",
            INIT_60 => X"000000011000000010fffffffe9000000023ffffffffa000000011fffffffc5fffffffbe",
            INIT_61 => X"00000000800000000a00000000c00000000500000002f00000002100000000100000000f",
            INIT_62 => X"fffffff69fffffff88fffffff90fffffff91fffffffedffffffffd00000003a000000011",
            INIT_63 => X"ffffffff900000000c000000022fffffff94fffffff7dfffffff7dfffffff8bfffffff23",
            INIT_64 => X"00000002700000000efffffffe1000000017000000038fffffffe6ffffffffa00000001a",
            INIT_65 => X"00000000dfffffffe800000000fffffffffd000000009000000023ffffffffd000000012",
            INIT_66 => X"00000000900000001200000000f00000001ffffffffecfffffffef000000015000000016",
            INIT_67 => X"fffffffa5fffffffaefffffffa8fffffffb1fffffffc5fffffffebfffffffd6000000006",
            INIT_68 => X"ffffffffefffffffdbffffffff6000000017fffffffe300000000afffffffdefffffff9b",
            INIT_69 => X"fffffff84fffffff87fffffffc3ffffffff7fffffffb7fffffffe7000000015ffffffff0",
            INIT_6A => X"fffffffffffffffffe00000001ffffffffed00000000ffffffff8efffffff94fffffffbc",
            INIT_6B => X"000000010000000007000000023fffffffe300000000b000000001fffffffe7000000020",
            INIT_6C => X"fffffffa9fffffff7efffffff8f00000000200000002f000000014000000007000000028",
            INIT_6D => X"000000002ffffffff7fffffffe3fffffffc8fffffffadfffffffb0fffffff70fffffff71",
            INIT_6E => X"ffffffff800000000100000000c00000001cfffffffcdfffffffe5000000012fffffffe2",
            INIT_6F => X"00000002200000001900000001300000000a00000001e000000000fffffffee00000000d",
            INIT_70 => X"00000003b000000026ffffffff000000001dffffffff7ffffffffc000000028000000016",
            INIT_71 => X"fffffffd500000000dffffffff3ffffffffdfffffffdd00000002f00000001b000000017",
            INIT_72 => X"00000000800000000400000002a000000028000000010000000032fffffffd3fffffffd9",
            INIT_73 => X"ffffffff700000001dfffffffea00000002f00000002c00000000c000000003000000014",
            INIT_74 => X"000000030fffffffd7000000042ffffffffdffffffff0000000018ffffffffd00000000d",
            INIT_75 => X"ffffffff2fffffffe3fffffffc300000000d00000000a00000001b000000021000000030",
            INIT_76 => X"000000006fffffffea00000000b00000003f000000044fffffffffffffffffbfffffffef",
            INIT_77 => X"fffffffac00000000f00000003500000001900000002f000000019000000021000000003",
            INIT_78 => X"00000001300000002700000001d000000001ffffffffcffffffffcfffffffaefffffff9b",
            INIT_79 => X"00000003cffffffff1fffffffe6000000002ffffffff7fffffffddfffffffdbfffffffec",
            INIT_7A => X"000000019000000000ffffffff3ffffffffb00000000f00000000800000002b000000016",
            INIT_7B => X"fffffffe7000000016ffffffffa00000002800000002500000003300000000dfffffffdf",
            INIT_7C => X"00000000f000000005000000006000000010000000037fffffffcf00000000dffffffffd",
            INIT_7D => X"00000002700000003600000002600000001800000000efffffffcdfffffffcd00000000e",
            INIT_7E => X"fffffffea00000000a000000016fffffffe2fffffffbefffffffe9000000006ffffffff9",
            INIT_7F => X"000000009fffffffc5fffffffdffffffffd6000000002fffffffd8fffffffe500000000f",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffd600000002900000001800000002d00000001f00000001c000000020ffffffff0",
            INIT_01 => X"fffffffc4fffffffdefffffffed000000026fffffffd5fffffffcd000000009000000006",
            INIT_02 => X"00000001f000000002fffffffe9fffffffdeffffffff6fffffffc7fffffffdefffffffdd",
            INIT_03 => X"fffffffedfffffffecfffffffd8fffffffd6000000000fffffffd7fffffffee000000016",
            INIT_04 => X"ffffffff5ffffffffeffffffff900000001c000000001ffffffff1000000002fffffffd3",
            INIT_05 => X"ffffffff8ffffffff4ffffffffbfffffffff00000000200000000a000000000ffffffff7",
            INIT_06 => X"00000003cffffffff600000002a000000026000000006fffffffeffffffffdc000000000",
            INIT_07 => X"ffffffff700000000affffffff500000002700000004800000004400000001300000003b",
            INIT_08 => X"000000026000000000000000007000000026000000024000000012fffffffffffffffff5",
            INIT_09 => X"fffffffcd00000000cffffffff300000001600000002e000000003000000018000000030",
            INIT_0A => X"fffffff6bfffffffa0fffffff9dfffffff82fffffffaefffffffc1fffffffaafffffff92",
            INIT_0B => X"000000006fffffffcffffffffe100000001e000000004ffffffff4fffffffda000000023",
            INIT_0C => X"000000015fffffffdfffffffff1ffffffff800000000bfffffffdf000000000fffffffef",
            INIT_0D => X"00000000c00000003d00000002100000000100000002000000002bfffffffde00000001b",
            INIT_0E => X"fffffffffffffffff900000002000000000000000002200000002100000001e000000002",
            INIT_0F => X"000000008ffffffff1000000015ffffffffbfffffffec000000000fffffffff000000002",
            INIT_10 => X"fffffffe0fffffffd0ffffffff200000000effffffff5000000002000000020fffffffe2",
            INIT_11 => X"ffffffff0fffffffd0fffffffd8fffffffd8fffffffc8fffffffd1fffffffdf000000013",
            INIT_12 => X"00000000000000000dffffffff800000000800000000bfffffffe2ffffffff4fffffffe1",
            INIT_13 => X"ffffffffcfffffffeafffffffecfffffffd0ffffffff8ffffffffbfffffffd4ffffffff2",
            INIT_14 => X"fffffffca000000000ffffffff5ffffffffbffffffff100000001500000000d000000019",
            INIT_15 => X"00000001cffffffff900000000cffffffff800000002b00000001bfffffffe8fffffffb6",
            INIT_16 => X"000000020ffffffff1ffffffff6fffffffe4000000001000000009000000025ffffffff0",
            INIT_17 => X"000000020000000027000000010000000012ffffffffc000000015fffffffe7fffffffe5",
            INIT_18 => X"fffffff8dfffffffd6fffffffc600000001500000001400000001200000000f000000012",
            INIT_19 => X"00000002200000000200000002300000000400000000ffffffffd2000000021fffffffb7",
            INIT_1A => X"ffffffff900000001afffffffe5fffffffecffffffff9000000012ffffffffe000000006",
            INIT_1B => X"00000001d000000011000000016ffffffff300000001d00000001afffffffef000000014",
            INIT_1C => X"00000000f00000000e00000001500000002000000001600000002600000000c00000000c",
            INIT_1D => X"00000002e00000000affffffff900000000e00000000500000000c000000026000000027",
            INIT_1E => X"000000003fffffffebfffffffd700000000afffffffff00000001a00000002c000000000",
            INIT_1F => X"00000002100000003d00000004900000001800000003fffffffffefffffffd0fffffffe0",
            INIT_20 => X"ffffffff8fffffffd3ffffffff6fffffffd7fffffffc400000002900000003900000003f",
            INIT_21 => X"fffffffeafffffffebfffffffde000000031ffffffffd000000010ffffffff3ffffffff3",
            INIT_22 => X"fffffffc4fffffffd300000000d00000001afffffffe5ffffffff0fffffffd8fffffffaa",
            INIT_23 => X"000000013000000023000000028000000029fffffffe4ffffffff8ffffffff6fffffffd2",
            INIT_24 => X"000000018fffffffdefffffffbdfffffffd1ffffffff1fffffffe6ffffffff4ffffffff3",
            INIT_25 => X"ffffffff8fffffffcbfffffffe4fffffffceffffffff1ffffffffdffffffff100000001e",
            INIT_26 => X"000000024ffffffff7fffffffe8ffffffffbfffffffedfffffffc5fffffffe800000002e",
            INIT_27 => X"00000003800000000a00000001d00000002affffffff5000000004ffffffff7000000004",
            INIT_28 => X"ffffffffdfffffffebffffffff100000001400000001300000001cffffffffdffffffff2",
            INIT_29 => X"000000025000000026ffffffff700000000f000000034000000004fffffffed000000002",
            INIT_2A => X"00000006500000000200000000600000000c00000000700000001c00000001cffffffffb",
            INIT_2B => X"fffffffddffffffff7fffffffe000000000600000001700000003500000002a000000038",
            INIT_2C => X"fffffffcbfffffffddfffffffcaffffffff9fffffffe5fffffffc3fffffffddfffffffe8",
            INIT_2D => X"000000035fffffff9cfffffff96ffffffff5fffffff62fffffff78fffffffa7fffffffbc",
            INIT_2E => X"fffffffd7fffffffbffffffffdcfffffffe9fffffffbdfffffffc700000000500000003b",
            INIT_2F => X"000000023ffffffff7fffffffdc00000001d000000004000000010fffffffc700000002e",
            INIT_30 => X"ffffffffafffffffe9fffffffe200000001900000000000000000800000000affffffff5",
            INIT_31 => X"00000001e000000012000000019ffffffff700000001e000000000000000003000000011",
            INIT_32 => X"ffffffff8ffffffffa00000001a00000000effffffff600000002300000001b00000001c",
            INIT_33 => X"ffffffff2fffffffc1fffffffa1fffffffb100000000f00000001b00000002bffffffff2",
            INIT_34 => X"fffffffea00000000e000000005fffffffb4fffffffccffffffffafffffffa5fffffffc1",
            INIT_35 => X"000000008fffffffe500000003000000003700000000a00000003e00000003c000000040",
            INIT_36 => X"fffffffe7fffffffed000000014fffffffebffffffff7fffffffe9ffffffff1000000016",
            INIT_37 => X"00000002800000002900000002b00000000800000000500000002c000000001ffffffff8",
            INIT_38 => X"000000018ffffffffbffffffffe000000000000000001fffffffeb000000005fffffffe8",
            INIT_39 => X"fffffffe700000004b000000033000000011ffffffff4fffffffe4000000021ffffffffb",
            INIT_3A => X"00000001c00000000a00000002400000001d000000011000000029000000022ffffffff5",
            INIT_3B => X"00000001e000000005000000034fffffffedffffffff9ffffffff3fffffffe7fffffffe6",
            INIT_3C => X"00000001200000001800000001dffffffffbfffffffe1fffffffe6ffffffff1fffffffed",
            INIT_3D => X"fffffffe100000000d00000001300000001200000001b00000002300000001e000000013",
            INIT_3E => X"00000000100000003cfffffffce00000000d000000013ffffffffe000000024000000014",
            INIT_3F => X"00000001600000003200000003500000000500000000400000003c00000001dfffffffe7",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000002500000001b00000001b00000003e000000032000000042fffffffed000000000",
            INIT_41 => X"00000003a00000002b00000002a000000062000000041000000015000000020ffffffffc",
            INIT_42 => X"fffffffe8000000017ffffffffa00000000d000000009ffffffffd000000018000000044",
            INIT_43 => X"00000004e000000052000000036000000000000000019000000007fffffffcafffffffcc",
            INIT_44 => X"000000023000000000000000002ffffffffbfffffffef000000041000000038000000014",
            INIT_45 => X"00000000200000001400000001e00000001bffffffff9000000011ffffffffd00000002a",
            INIT_46 => X"ffffffff2ffffffff000000000a000000009fffffffe2ffffffff8fffffffef000000004",
            INIT_47 => X"000000013ffffffff4fffffffc9ffffffff2000000019fffffffd4fffffffde000000010",
            INIT_48 => X"ffffffffaffffffffdfffffffd3fffffffd9ffffffffa00000000affffffff9ffffffffc",
            INIT_49 => X"ffffffff8000000009ffffffff700000000000000001effffffffb000000023000000009",
            INIT_4A => X"000000013ffffffff700000002b000000008000000004000000021000000000fffffffea",
            INIT_4B => X"ffffffffb00000001e000000014fffffffe4000000017ffffffffd00000001f000000003",
            INIT_4C => X"fffffffea000000010fffffffdc00000001600000000700000000500000003500000002d",
            INIT_4D => X"fffffffdcfffffffd500000002a00000001affffffff6ffffffffc000000013fffffffe1",
            INIT_4E => X"fffffff4afffffffe5fffffffd8fffffffae000000015fffffffbbfffffffceffffffff0",
            INIT_4F => X"fffffffe400000000f000000000fffffff65fffffff73fffffff74fffffff63fffffff45",
            INIT_50 => X"000000013000000031fffffffe900000001affffffff600000000000000000400000000e",
            INIT_51 => X"ffffffff7fffffffda000000018000000037fffffffe700000002200000005bfffffffc9",
            INIT_52 => X"000000006000000020000000051fffffffd8000000003000000028fffffffcbffffffffa",
            INIT_53 => X"00000002d00000004bffffffffa000000011000000002fffffffc5fffffffd7fffffffe2",
            INIT_54 => X"fffffffcb00000003200000001efffffffdb00000003700000002bfffffffee00000001d",
            INIT_55 => X"fffffffd3fffffffc9fffffffc9fffffffccfffffff7efffffffc100000000e000000001",
            INIT_56 => X"00000002000000000b000000006000000001000000016fffffffebfffffffc6fffffffcb",
            INIT_57 => X"00000003f00000000c00000000500000003200000001900000002dffffffff5000000013",
            INIT_58 => X"00000002200000000cffffffffa00000001500000003700000003300000001b000000026",
            INIT_59 => X"000000025000000018ffffffff3fffffffc3fffffffcbfffffffd1fffffff99fffffff82",
            INIT_5A => X"000000002fffffffcdfffffffe9000000001000000019ffffffffb000000018ffffffff8",
            INIT_5B => X"00000001a000000019000000018000000019000000015ffffffff8000000027fffffffd9",
            INIT_5C => X"ffffffffe000000012fffffffeefffffffddfffffffe6ffffffffafffffffe0fffffffec",
            INIT_5D => X"ffffffff8fffffffd900000000c00000000cfffffffdf000000011ffffffff0000000018",
            INIT_5E => X"000000011000000005ffffffffc000000012ffffffff4000000005fffffffdcffffffffb",
            INIT_5F => X"000000000000000000ffffffff9000000011fffffffff000000016fffffffe1fffffffee",
            INIT_60 => X"fffffffcdfffffffa3fffffff9ffffffffcefffffffecfffffffe2ffffffff600000000e",
            INIT_61 => X"00000001f00000000f00000000cffffffffffffffffec000000012fffffffbffffffffc8",
            INIT_62 => X"ffffffffefffffffee000000018ffffffff900000001300000000700000001400000000a",
            INIT_63 => X"fffffffaf000000012ffffffff1fffffffcffffffffeffffffffdbfffffffdeffffffffc",
            INIT_64 => X"fffffffd6fffffffcafffffffeefffffffddfffffffb0fffffffaffffffffd2fffffffd0",
            INIT_65 => X"000000013ffffffff4fffffffe9fffffffbdfffffffeffffffff97fffffffa8fffffff96",
            INIT_66 => X"00000001f000000023000000017ffffffffe000000001ffffffffd000000006ffffffff0",
            INIT_67 => X"fffffffc5fffffffb5fffffffc2fffffff95fffffff63fffffffad000000006000000023",
            INIT_68 => X"000000008fffffffe1ffffffff8000000014000000017fffffffdefffffffe2fffffffc4",
            INIT_69 => X"00000001200000000300000001e00000000bffffffff000000000900000000affffffffb",
            INIT_6A => X"fffffffb1000000000ffffffff100000001100000000e000000017ffffffff0ffffffff7",
            INIT_6B => X"ffffffffbfffffffec00000001400000002800000001ffffffffeffffffffcffffffffe8",
            INIT_6C => X"ffffffff3fffffffdeffffffffbfffffffe300000000800000000f00000000dffffffff3",
            INIT_6D => X"ffffffff7000000028ffffffffdfffffffcd00000000bfffffffeffffffffd0fffffffd7",
            INIT_6E => X"00000002300000000100000001cffffffffefffffffd900000000100000000dfffffffcd",
            INIT_6F => X"00000000afffffffecfffffffe000000000effffffff9fffffffef00000001000000002a",
            INIT_70 => X"ffffffff5fffffffdffffffffff000000011ffffffff2000000003fffffffddffffffffb",
            INIT_71 => X"ffffffff2fffffffed00000001600000000300000000300000001000000000a00000001b",
            INIT_72 => X"00000006a00000002c00000001400000003dffffffff1ffffffff1ffffffffd000000003",
            INIT_73 => X"fffffffb6fffffffc6fffffffbb00000007500000004d00000006900000005c00000005f",
            INIT_74 => X"fffffffd2fffffffc000000002900000001e000000020ffffffffbffffffff8fffffffae",
            INIT_75 => X"fffffff9bfffffffe9fffffffcbfffffffd3fffffffc6fffffff95fffffffa9fffffffc3",
            INIT_76 => X"00000001300000002700000001bfffffffb5fffffffb5fffffffbdfffffffbdfffffffa7",
            INIT_77 => X"00000001efffffffe900000001400000004400000002cfffffffe200000000700000002b",
            INIT_78 => X"000000000000000001ffffffff100000000000000001100000001effffffff1000000002",
            INIT_79 => X"00000000900000000700000000200000000500000001900000001c00000000ffffffffee",
            INIT_7A => X"fffffffec000000007000000019000000003000000029fffffffd1ffffffff9000000010",
            INIT_7B => X"ffffffff500000000200000001e00000000cffffffffefffffffd8ffffffffd00000000b",
            INIT_7C => X"ffffffffdffffffff7ffffffffc000000007fffffffe200000000c00000001500000000e",
            INIT_7D => X"ffffffff2fffffffcf00000003200000003b00000006000000002800000003a00000004f",
            INIT_7E => X"ffffffffa000000038fffffffffffffffffbfffffffed000000018ffffffffbffffffff4",
            INIT_7F => X"000000008000000016ffffffff6ffffffffbfffffffe6ffffffff8ffffffff6fffffffe3",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffffffff0ffffffffeffffffffa000000007000000018ffffffffdffffffff0000000006",
            INIT_01 => X"fffffffb6000000006ffffffffafffffffe100000002e000000000fffffffdfffffffff0",
            INIT_02 => X"fffffffecfffffffe1fffffffdf00000001fffffffffeffffffffdffffffff2fffffffdb",
            INIT_03 => X"00000000800000001e00000001f000000006000000019000000001000000009000000000",
            INIT_04 => X"ffffffef2fffffffe3fffffff56fffffff63fffffffeb000000005ffffffffe000000005",
            INIT_05 => X"fffffffed00000002b00000003cfffffff2ffffffff1efffffff33fffffff1bffffffeb6",
            INIT_06 => X"ffffffffd00000001900000000000000002700000003bffffffff3000000019000000029",
            INIT_07 => X"00000001efffffffea00000000c000000011ffffffff2000000003000000039ffffffff8",
            INIT_08 => X"00000002a000000019000000051ffffffffb00000000400000000f000000000ffffffff6",
            INIT_09 => X"ffffffff500000001300000002cfffffffef00000002d000000010fffffffd7000000000",
            INIT_0A => X"ffffffffd00000001fffffffff5fffffffeb00000000b00000000d000000024ffffffff3",
            INIT_0B => X"fffffffdefffffffe3fffffffddfffffffeafffffffd3ffffffff0fffffffff00000000f",
            INIT_0C => X"ffffffffbfffffffde000000001ffffffffdffffffffeffffffffafffffffc7fffffffe6",
            INIT_0D => X"000000017fffffffea00000001e000000024fffffffe4fffffffd7ffffffff200000001c",
            INIT_0E => X"00000000efffffff7cfffffff88ffffffff8ffffffffc000000006fffffffdcffffffff7",
            INIT_0F => X"00000000300000001ffffffff84fffffff38fffffff6bfffffff5dfffffff3afffffff12",
            INIT_10 => X"fffffffcdfffffffecffffffffefffffffed000000001000000021000000011ffffffff8",
            INIT_11 => X"000000013fffffffea000000000ffffffff9fffffffe5fffffffd1ffffffff0ffffffff5",
            INIT_12 => X"00000003300000003000000001d000000016fffffffe7ffffffff600000002e000000033",
            INIT_13 => X"000000016fffffffdf00000000100000002900000001affffffff400000002f00000000b",
            INIT_14 => X"fffffffe9fffffffd0ffffffffb00000001500000000fffffffffaffffffff4ffffffff4",
            INIT_15 => X"000000003ffffffff9ffffffffdfffffffecffffffffffffffffd0fffffffc8ffffffff9",
            INIT_16 => X"ffffffff6ffffffff3fffffffecfffffffda000000009fffffffdcfffffffe5fffffffed",
            INIT_17 => X"fffffffe0fffffffe3fffffffe6000000001fffffffebfffffffd1000000007fffffffb0",
            INIT_18 => X"fffffffb3fffffffce000000001fffffffe7fffffffe5ffffffff2ffffffffefffffffee",
            INIT_19 => X"fffffff52fffffffbefffffff8dfffffff92fffffffc3fffffffaefffffffc4fffffffab",
            INIT_1A => X"fffffff90fffffff75fffffff94fffffffb4fffffff75fffffff83fffffffd6fffffffa2",
            INIT_1B => X"fffffffc7fffffffc2fffffffd6fffffffe5fffffffcafffffffdffffffffd9fffffffd3",
            INIT_1C => X"00000001400000001f00000001f00000002700000000100000002500000002bfffffffc4",
            INIT_1D => X"fffffffeaffffffff9fffffffeb000000010fffffffee000000021000000001000000017",
            INIT_1E => X"00000000000000000700000002700000001400000000b000000007fffffffe4ffffffff1",
            INIT_1F => X"00000001600000000e00000003fffffffffdfffffffff00000002300000001c00000000a",
            INIT_20 => X"fffffffc000000001cfffffffe900000003f00000003600000002800000002800000004a",
            INIT_21 => X"000000008fffffffdb00000000f00000000c000000019000000001fffffffecfffffffcb",
            INIT_22 => X"000000026fffffffe5fffffffebfffffffceffffffffefffffffdd000000000000000010",
            INIT_23 => X"00000007300000007e00000004d00000006900000006500000003800000000d00000001d",
            INIT_24 => X"fffffffe3fffffffeaffffffffe000000012ffffffffc00000000700000002b000000028",
            INIT_25 => X"000000036000000024000000020000000019fffffffb9fffffff8dfffffffbefffffffd5",
            INIT_26 => X"ffffffff1ffffffff400000001600000000700000001900000001100000004600000002d",
            INIT_27 => X"00000001e000000008fffffffe8fffffffbbfffffffc8ffffffff0ffffffff4fffffffdc",
            INIT_28 => X"00000000e00000002200000001d00000004100000002500000002000000001afffffffe6",
            INIT_29 => X"000000020000000050000000036fffffffcfffffffff000000002a00000001b000000017",
            INIT_2A => X"00000004800000004ffffffffd7fffffffaafffffffd8ffffffff8fffffffed000000012",
            INIT_2B => X"000000062fffffffd9fffffffa2fffffffd0000000004fffffffe9fffffffec000000023",
            INIT_2C => X"fffffffabfffffff8efffffffb7ffffffffa00000001d00000000400000004d00000007d",
            INIT_2D => X"fffffffdafffffffbf00000001a00000001700000001d000000026000000032000000042",
            INIT_2E => X"00000000f000000015000000016000000013ffffffff6fffffffdafffffffe0fffffffea",
            INIT_2F => X"fffffffff00000001000000000efffffffc1fffffffb7fffffffc0000000024000000004",
            INIT_30 => X"00000000bffffffff1fffffffb5fffffffa6fffffffdb00000002100000002900000002a",
            INIT_31 => X"fffffffe8000000011ffffffff7ffffffffe000000031000000046000000041000000007",
            INIT_32 => X"ffffffff300000000b000000025fffffffe5fffffffd8ffffffff9fffffffe1ffffffff5",
            INIT_33 => X"000000004ffffffffdffffffffe00000000000000002b000000011000000015000000016",
            INIT_34 => X"000000019fffffffc3fffffffddfffffffe2000000019000000010ffffffffa000000033",
            INIT_35 => X"fffffffc0fffffffcbfffffffdd00000000400000000d00000001000000002800000002f",
            INIT_36 => X"fffffffe7fffffffcaffffffffe000000000ffffffff8fffffffeffffffffe9ffffffffb",
            INIT_37 => X"000000024000000006000000037000000014fffffffdfffffffff300000000afffffffdc",
            INIT_38 => X"00000002effffffff3000000001000000036000000023ffffffff2000000025000000003",
            INIT_39 => X"00000001000000000000000001a00000002a000000023ffffffff9000000002ffffffff2",
            INIT_3A => X"000000036ffffffffe00000001300000002e00000000cffffffffa000000014000000016",
            INIT_3B => X"fffffffe6fffffffe3fffffffdcffffffff5000000020000000006000000008000000001",
            INIT_3C => X"00000000fffffffffbffffffff8ffffffff7ffffffff1000000003fffffffeffffffffec",
            INIT_3D => X"00000000b00000003800000001200000002700000001300000000a000000001000000010",
            INIT_3E => X"00000004900000003a00000004200000001f00000005a000000060fffffffe800000001f",
            INIT_3F => X"00000001600000002600000002c00000003d000000022ffffffff4000000017000000021",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffe300000002400000000cffffffff5000000028000000000fffffffe900000001a",
            INIT_41 => X"fffffffc700000002600000001bfffffffe9ffffffff700000001500000000400000000e",
            INIT_42 => X"00000002b00000001f00000001cffffffffd00000001efffffffd8fffffffdbffffffff7",
            INIT_43 => X"ffffffff2000000023ffffffffbfffffffd100000003000000001300000001d000000028",
            INIT_44 => X"fffffffe5000000010ffffffff1fffffffe3fffffffd7fffffffdafffffffdcfffffffe8",
            INIT_45 => X"00000001dffffffff8ffffffffc000000011000000021000000008000000005000000028",
            INIT_46 => X"fffffffc6fffffffe7ffffffff0fffffffeaffffffff3fffffffef00000001afffffffea",
            INIT_47 => X"fffffffa8fffffffcafffffffd3fffffffcdfffffffd3fffffffb5fffffffb8fffffffbe",
            INIT_48 => X"00000003300000001900000002000000003600000003d00000001100000002d000000031",
            INIT_49 => X"00000006300000000000000000f00000004300000005200000002d000000045000000021",
            INIT_4A => X"000000057ffffffff6000000002000000015000000011000000036000000015000000025",
            INIT_4B => X"fffffff8bfffffffa7fffffff96ffffffff2fffffffe400000003700000002a00000000e",
            INIT_4C => X"fffffffbb000000012fffffffe3fffffffcb000000018fffffffa8fffffffbffffffffa6",
            INIT_4D => X"fffffffd700000000dfffffffe7000000012ffffffffffffffffe6000000029fffffffe0",
            INIT_4E => X"fffffffbffffffffb700000000bffffffffbfffffffcffffffffea000000004fffffffe1",
            INIT_4F => X"fffffffe200000000300000000300000000a00000000efffffffcafffffffe3fffffffb1",
            INIT_50 => X"000000021000000029fffffffe900000002000000000affffffff4fffffffe7ffffffffe",
            INIT_51 => X"00000000afffffffdf00000000c000000011ffffffff1fffffffe6ffffffff4fffffffe5",
            INIT_52 => X"fffffffbefffffffd2fffffffc8fffffffdbfffffffcd000000001ffffffff0000000030",
            INIT_53 => X"000000010ffffffffa00000000f00000000600000003dfffffffceffffffffefffffffe1",
            INIT_54 => X"fffffffd200000000f00000002700000001b000000023000000032ffffffff5ffffffffd",
            INIT_55 => X"00000000400000000100000000800000003cffffffffafffffffef00000001900000000e",
            INIT_56 => X"00000002bfffffffebfffffffff00000001a00000003e00000000400000002000000002c",
            INIT_57 => X"000000023000000009000000022000000031ffffffff5000000049ffffffffafffffffd9",
            INIT_58 => X"00000004000000002effffffff8fffffffe100000002200000002400000000fffffffff0",
            INIT_59 => X"00000003000000002000000002c00000004e00000004400000004d00000003f000000056",
            INIT_5A => X"00000002000000000bffffffffc00000001500000000ffffffffe7ffffffffa00000001c",
            INIT_5B => X"fffffffcbfffffffdcfffffffbafffffffa8fffffffc9fffffffc4ffffffff9fffffffed",
            INIT_5C => X"00000000200000000000000001b00000000efffffffe4ffffffff2fffffffcdfffffffbd",
            INIT_5D => X"00000001f000000016000000003fffffffebffffffff500000000900000000000000000b",
            INIT_5E => X"fffffffe8ffffffffbffffffffbfffffffedffffffff5000000008000000025000000000",
            INIT_5F => X"fffffffffffffffffd00000001900000003500000001bfffffffddfffffffdefffffffeb",
            INIT_60 => X"00000000fffffffff900000002600000002900000001800000000900000000300000001c",
            INIT_61 => X"fffffffdefffffffea000000015000000019fffffffe7ffffffff300000000bfffffffe7",
            INIT_62 => X"fffffffccfffffffb6fffffffd6fffffffe8ffffffff4fffffffd9fffffffc9ffffffff5",
            INIT_63 => X"fffffffe7ffffffffd000000007fffffffdbfffffffdefffffffff00000000affffffff8",
            INIT_64 => X"000000010fffffffef000000011000000013000000012ffffffff7000000019ffffffff7",
            INIT_65 => X"000000009ffffffffd00000000fffffffffdfffffffe4ffffffffb000000017000000007",
            INIT_66 => X"fffffffceffffffffafffffffe0fffffffd7fffffffdd000000007fffffffee000000004",
            INIT_67 => X"000000010ffffffff000000001affffffffaffffffff7ffffffff9fffffffe4fffffffec",
            INIT_68 => X"fffffffc7fffffffc9fffffffc1000000017000000024fffffffe1fffffffe800000000a",
            INIT_69 => X"00000001600000001cfffffffcffffffffbcfffffffc6000000009fffffffb9fffffffcf",
            INIT_6A => X"fffffffe600000000200000000100000001efffffffef00000001900000001e00000000f",
            INIT_6B => X"ffffffffffffffffdfffffffff2fffffffef00000000400000000afffffffe0000000006",
            INIT_6C => X"000000035ffffffff2000000012000000002000000019000000019000000014000000005",
            INIT_6D => X"ffffffff500000000afffffffd7fffffffd3000000003000000000fffffffec000000022",
            INIT_6E => X"fffffffd1fffffffdffffffffd2ffffffff7fffffffc2fffffffc0000000003fffffffeb",
            INIT_6F => X"fffffffe4fffffffe3fffffffd2fffffffeffffffffdafffffffe6ffffffff6000000005",
            INIT_70 => X"ffffffff8ffffffff8000000015000000025ffffffff4fffffffe9fffffffe6fffffffec",
            INIT_71 => X"00000001400000002100000000d000000002ffffffffaffffffff6000000023ffffffff9",
            INIT_72 => X"fffffffe3fffffffed000000010000000008000000021ffffffff100000000bffffffffc",
            INIT_73 => X"fffffffe9fffffffddffffffff3000000012fffffffe9fffffffcafffffffc5fffffffdf",
            INIT_74 => X"fffffffe3fffffffdefffffffedfffffffe6fffffffe0fffffffe3fffffffd2ffffffff7",
            INIT_75 => X"ffffffffb00000001bffffffff1ffffffff5000000004ffffffffb00000000f00000000f",
            INIT_76 => X"ffffffff7000000005000000006000000006fffffffee000000003000000013fffffffe0",
            INIT_77 => X"00000001a00000001900000000e000000001000000023000000008000000002000000015",
            INIT_78 => X"fffffffe3ffffffff3000000008ffffffffa00000000700000003100000000cffffffffe",
            INIT_79 => X"00000000600000003e00000002c000000004fffffffdbfffffffdaffffffffdfffffffd5",
            INIT_7A => X"00000000500000000affffffff400000001600000003500000000800000003f00000000f",
            INIT_7B => X"fffffffddfffffffe600000000bfffffffeffffffffd0000000000fffffffdbffffffff5",
            INIT_7C => X"00000000effffffff8fffffffe700000001d000000008ffffffff500000000b00000000e",
            INIT_7D => X"00000001b00000002b00000001000000003700000001e00000001000000002d000000036",
            INIT_7E => X"ffffffff0fffffffff00000001900000000800000001700000000700000000bfffffffe4",
            INIT_7F => X"ffffffffefffffffc5fffffffc5fffffffc3fffffffeb00000000000000001100000000c",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffebffffffff5fffffffd7ffffffff7fffffffe700000000efffffffdbfffffffd1",
            INIT_01 => X"fffffffdb00000000800000000100000001400000001bffffffff0fffffffd7fffffffd3",
            INIT_02 => X"fffffffdafffffffeffffffffd0fffffffed00000000b00000000cffffffff9fffffffe8",
            INIT_03 => X"00000001cfffffffeaffffffff200000000bfffffffc1fffffffd8fffffffe5ffffffff8",
            INIT_04 => X"000000000fffffffe700000002500000000d000000022000000028000000017000000015",
            INIT_05 => X"ffffffff400000000affffffff4000000006fffffffff000000014fffffffe2000000004",
            INIT_06 => X"ffffffff5fffffffe7fffffffe2fffffffe8ffffffff0000000006fffffffe6fffffffd4",
            INIT_07 => X"fffffffce00000001400000000bfffffffecffffffff7000000001ffffffffc000000035",
            INIT_08 => X"ffffffff3000000009000000018fffffffef00000000600000001100000001cffffffffc",
            INIT_09 => X"ffffffff4ffffffff600000002800000001b00000000900000000efffffffec000000008",
            INIT_0A => X"000000000000000000ffffffff2ffffffff8ffffffffbffffffffffffffffed00000000d",
            INIT_0B => X"ffffffff6000000010ffffffff0000000000fffffffcbfffffffc4ffffffff8fffffffbe",
            INIT_0C => X"fffffffcffffffffdcfffffffd5000000007000000028000000018000000006ffffffff7",
            INIT_0D => X"000000007ffffffff1fffffffcefffffffc9fffffffcbfffffffd0ffffffff0fffffffc2",
            INIT_0E => X"fffffffdcfffffffd9ffffffff8ffffffffcffffffff9fffffffdcfffffffe5000000008",
            INIT_0F => X"00000000d00000001b00000000e00000002cffffffffefffffffed000000002000000008",
            INIT_10 => X"ffffffff5000000004fffffffff000000017fffffffdefffffffdffffffffe1ffffffff9",
            INIT_11 => X"fffffffeafffffffee00000001dffffffff1fffffffe4000000006ffffffff8000000017",
            INIT_12 => X"ffffffff300000000c000000009fffffffe200000001f000000037fffffffeffffffffe9",
            INIT_13 => X"00000001f00000000c00000002000000001a00000003900000000c000000010000000000",
            INIT_14 => X"fffffffefffffffff300000000b00000001bffffffffa00000001c000000026ffffffffb",
            INIT_15 => X"fffffffdbffffffff1fffffffeeffffffff700000000a000000014ffffffff4ffffffff2",
            INIT_16 => X"fffffffcc000000020000000005000000001fffffffe9fffffffd5fffffffc4fffffffdf",
            INIT_17 => X"fffffffcefffffffb700000001f000000000fffffffc0fffffffe1000000000fffffffd1",
            INIT_18 => X"00000003c00000003600000003b000000003fffffffa5fffffffd4fffffffbefffffffb9",
            INIT_19 => X"ffffffffeffffffff3ffffffff1ffffffff1000000001ffffffff1ffffffff7fffffffe3",
            INIT_1A => X"fffffffed00000000000000002700000000b00000000900000003000000001a00000001c",
            INIT_1B => X"ffffffff900000002400000003500000002600000001000000000affffffff200000000e",
            INIT_1C => X"000000005000000009fffffffe0fffffffec00000000affffffff8000000019fffffffe7",
            INIT_1D => X"000000001fffffffde000000001ffffffffafffffffe6ffffffff8ffffffff2fffffffe4",
            INIT_1E => X"fffffffe8000000003000000015fffffffe000000001700000000bfffffffa7fffffffdb",
            INIT_1F => X"ffffffff2000000017ffffffff2fffffffe7000000010ffffffffd000000014000000019",
            INIT_20 => X"fffffff9d00000000effffffff000000001ffffffffe3ffffffff1ffffffffd000000001",
            INIT_21 => X"ffffffffd000000006fffffffebffffffff0000000006fffffffccfffffffef000000000",
            INIT_22 => X"00000001700000000b00000000b000000013ffffffff4fffffffdf000000007fffffffe2",
            INIT_23 => X"00000000e000000002fffffffdcffffffff400000000400000001800000003000000000d",
            INIT_24 => X"00000000100000002a000000050ffffffffe00000000b000000022fffffff8bffffffffa",
            INIT_25 => X"fffffffea00000001affffffff5fffffffeaffffffff500000000700000003900000003b",
            INIT_26 => X"ffffffff0fffffffe4000000015fffffffdd00000001900000002000000002effffffffc",
            INIT_27 => X"00000002900000001300000001400000000700000000d000000005ffffffffbfffffffe0",
            INIT_28 => X"00000002d00000004200000003e000000007ffffffff600000005600000003c000000008",
            INIT_29 => X"00000001400000005700000003e00000003d00000003700000006000000004c000000033",
            INIT_2A => X"00000001b00000002b00000001100000006b000000041000000045000000015000000047",
            INIT_2B => X"ffffffff900000001c00000002400000000700000001500000003900000002400000001f",
            INIT_2C => X"000000006ffffffffdfffffffe200000000bfffffffffffffffff1000000018000000015",
            INIT_2D => X"000000001fffffffb7fffffffc7ffffffffdfffffffe3fffffffdf000000005fffffffe7",
            INIT_2E => X"fffffffdf000000010fffffffe6fffffffd200000000affffffff4fffffffbffffffffe5",
            INIT_2F => X"ffffffffefffffffe5fffffffd9fffffffeffffffffc900000000e00000003afffffffa8",
            INIT_30 => X"fffffffdcfffffffdaffffffff6fffffffccfffffffe6fffffffdcfffffffabfffffffca",
            INIT_31 => X"000000005000000009ffffffffa00000001700000001ffffffffe7000000003fffffffff",
            INIT_32 => X"fffffffbf00000000800000000d000000001000000023000000020fffffffe0000000018",
            INIT_33 => X"fffffffdffffffffccfffffffe3fffffffbefffffffcaffffffff9fffffffd8fffffffe3",
            INIT_34 => X"ffffffff9000000013ffffffff9fffffffff000000003ffffffffcffffffff7fffffffeb",
            INIT_35 => X"000000036fffffffcaffffffff100000002a000000016ffffffff2000000034000000000",
            INIT_36 => X"fffffffedfffffffd5000000027fffffffb4fffffffca000000006fffffffaa000000003",
            INIT_37 => X"00000002f000000063fffffffc000000001a000000033fffffffeefffffffef00000002e",
            INIT_38 => X"000000019fffffffc900000001b00000003400000000200000004e000000040ffffffff8",
            INIT_39 => X"fffffffeb00000002300000001d00000002e000000024fffffffbb000000004000000006",
            INIT_3A => X"fffffffc5fffffffdf000000021000000000000000009000000015000000003fffffffef",
            INIT_3B => X"fffffffedfffffffe3fffffffb3000000011000000009fffffffa4fffffffea000000048",
            INIT_3C => X"00000000b000000018ffffffff300000001d000000002ffffffff200000001e00000000a",
            INIT_3D => X"fffffffedfffffffe6fffffffe7fffffffdbffffffff5000000019fffffffe2fffffffea",
            INIT_3E => X"000000031fffffffb1fffffffe8000000043fffffffcafffffffe0000000002fffffffe7",
            INIT_3F => X"000000030000000013000000010000000021000000026000000009fffffffc500000001f",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffff9f000000038ffffffffdfffffffe2fffffffff000000018ffffffffafffffffff",
            INIT_41 => X"fffffffb300000000cfffffffe3fffffffb9fffffffbeffffffff4000000056ffffffffe",
            INIT_42 => X"fffffffc5fffffffe1000000002ffffffff8fffffff85ffffffff4ffffffffcfffffff5d",
            INIT_43 => X"fffffffe4000000010fffffffec00000000efffffffe6fffffffd1fffffffd3ffffffff7",
            INIT_44 => X"00000001bfffffffe600000001a000000014fffffffde000000016000000009fffffffd6",
            INIT_45 => X"00000005900000001ffffffffca00000005900000002afffffffeb00000001300000002f",
            INIT_46 => X"ffffffffe00000002c00000000900000001500000000b00000001dffffffff2fffffffe1",
            INIT_47 => X"000000006ffffffff2ffffffff4000000013fffffffc2fffffffeafffffffc8ffffffff4",
            INIT_48 => X"000000000fffffffe8000000013000000012fffffffec00000000cfffffffd4fffffffdf",
            INIT_49 => X"00000000000000000e000000007000000003000000007000000007fffffffee000000001",
            INIT_4A => X"000000074000000029000000037000000057000000019000000018000000000000000016",
            INIT_4B => X"ffffffff6000000009ffffffffa00000002f000000056000000036000000072000000083",
            INIT_4C => X"000000013ffffffff0ffffffffd000000006ffffffff3ffffffff7ffffffff2fffffffee",
            INIT_4D => X"00000000f00000001b00000000a00000000cfffffffee000000033fffffffec00000000d",
            INIT_4E => X"fffffffdfffffffff9fffffffd1fffffffe9000000017fffffffee00000001b000000014",
            INIT_4F => X"ffffffff4fffffffecfffffffe500000002600000000800000003800000002effffffff8",
            INIT_50 => X"000000000ffffffff4000000001fffffffe8fffffffdd000000008fffffffe5fffffffd6",
            INIT_51 => X"00000003a00000003900000005800000002f00000000f00000002200000001fffffffffa",
            INIT_52 => X"000000027fffffffdfffffffffb00000000e00000000f00000002000000001a000000036",
            INIT_53 => X"00000000300000000cffffffff8000000000fffffffd6ffffffffdfffffffe7fffffffd3",
            INIT_54 => X"00000003100000003400000001e00000002600000002b000000001000000030000000004",
            INIT_55 => X"fffffffe500000001e00000003f00000002f00000003c00000003000000002a000000029",
            INIT_56 => X"000000007000000014ffffffff9fffffffe8fffffffeffffffffed000000004ffffffff4",
            INIT_57 => X"fffffffd3fffffffef00000000b000000000fffffffd1000000012000000012fffffffd7",
            INIT_58 => X"fffffffc5fffffffd7fffffffdbfffffffe5fffffffcb000000006000000000000000007",
            INIT_59 => X"00000004dffffffffc00000001a00000001c000000004000000006ffffffff4ffffffff1",
            INIT_5A => X"fffffffe3fffffffe0000000011ffffffffc00000000dfffffffe900000001e000000035",
            INIT_5B => X"fffffffff000000014fffffffddfffffffe500000001f00000000300000000100000001b",
            INIT_5C => X"ffffffff700000001c00000002a00000000c00000001900000001300000000c000000016",
            INIT_5D => X"000000003000000000fffffffc9000000022ffffffffc000000021000000008000000031",
            INIT_5E => X"000000000ffffffff9fffffffa5fffffffd1fffffffaffffffffd0fffffffaefffffffc3",
            INIT_5F => X"ffffffff1fffffffc0fffffffe2ffffffff3fffffffe9fffffffbbfffffffdcffffffff9",
            INIT_60 => X"fffffffb1fffffffd2fffffffaaffffffff8fffffff9bfffffff9600000005d000000023",
            INIT_61 => X"000000007fffffffcd000000024fffffffe0fffffffd800000000affffffffefffffffe9",
            INIT_62 => X"000000014000000016000000002ffffffffcffffffffb00000000f00000000afffffffdc",
            INIT_63 => X"00000003a00000000400000000500000000800000000a00000001cfffffffe9ffffffff4",
            INIT_64 => X"fffffffff00000001c00000002800000000bffffffffd00000000cfffffffdfffffffffe",
            INIT_65 => X"ffffffffbfffffffedffffffff9ffffffff5000000036000000025000000045000000040",
            INIT_66 => X"000000003fffffffff00000001d000000001fffffffd6fffffffeffffffffefffffffff8",
            INIT_67 => X"fffffffe9ffffffff600000002b00000001c000000004000000019000000033000000004",
            INIT_68 => X"fffffffecfffffffc4ffffffff4fffffffe8fffffffd5fffffffd9fffffffcd00000001b",
            INIT_69 => X"000000000ffffffffaffffffff4000000033000000015ffffffff5000000019000000015",
            INIT_6A => X"00000002200000002bffffffffcffffffff800000001bfffffffe8ffffffff6ffffffff8",
            INIT_6B => X"000000010fffffffe8ffffffff500000000dfffffffec000000003000000006000000037",
            INIT_6C => X"ffffffff1fffffffe6ffffffffaffffffffd00000000900000000400000001700000000e",
            INIT_6D => X"000000008000000012000000014ffffffffe00000002600000000ffffffffef00000000a",
            INIT_6E => X"ffffffff7000000023fffffffec000000000ffffffff600000001d00000000d000000012",
            INIT_6F => X"fffffffe0ffffffff000000001700000004500000003200000002f000000019000000009",
            INIT_70 => X"ffffffff0ffffffff400000003000000003800000003700000000700000003f00000003e",
            INIT_71 => X"00000000d00000002dfffffffc6fffffffd0000000015fffffffc5fffffffe5ffffffff7",
            INIT_72 => X"ffffffff1fffffffc4fffffffc3fffffffd7fffffffcffffffffe8fffffffbc000000001",
            INIT_73 => X"fffffffebfffffffc2fffffffe9000000032ffffffff1ffffffff2ffffffff300000002f",
            INIT_74 => X"00000002c000000001ffffffff300000003100000000900000000efffffffecfffffffe6",
            INIT_75 => X"fffffffcf000000000fffffffcc000000021fffffffdbfffffffe4000000023ffffffff6",
            INIT_76 => X"fffffffda00000000300000000000000000fffffffff3ffffffff9fffffffe3fffffffc8",
            INIT_77 => X"fffffffcdfffffffeafffffffb0fffffffa8000000010fffffffe0ffffffffb00000000a",
            INIT_78 => X"00000002d000000018ffffffff9000000005fffffffe8fffffffc200000000ffffffffc3",
            INIT_79 => X"ffffffffb00000001a000000037000000016000000024ffffffff9fffffffe6fffffffed",
            INIT_7A => X"fffffffd000000000a00000000300000001c000000007000000004000000021000000010",
            INIT_7B => X"fffffffe3000000034ffffffff0fffffffbcfffffffe4fffffffbdfffffffeefffffffe4",
            INIT_7C => X"fffffffe2000000007fffffffe8fffffffea000000012fffffffdd00000000900000000c",
            INIT_7D => X"00000000000000003c000000001000000020000000043000000003000000014fffffffe4",
            INIT_7E => X"000000026000000003fffffffd500000001ffffffffed000000000000000039ffffffffb",
            INIT_7F => X"fffffffb100000000efffffffd4fffffffe800000002a00000001e000000021ffffffffb",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffffffba000000009fffffffdbfffffff9a00000001cfffffffe2ffffffffd00000001d",
            INIT_01 => X"ffffffffb00000001effffffffdfffffffe2ffffffffbffffffff6fffffffe7ffffffff4",
            INIT_02 => X"000000023fffffffddffffffff5ffffffffbfffffffe7fffffffe6000000000ffffffff1",
            INIT_03 => X"00000001600000003400000001f000000016000000053000000032fffffffe6000000046",
            INIT_04 => X"000000000fffffffec000000016fffffffd1fffffffd5000000029ffffffff1000000018",
            INIT_05 => X"fffffffaafffffffe0fffffffb7fffffffa8000000020fffffffb6ffffffff900000001d",
            INIT_06 => X"fffffffd6000000018fffffffe0fffffffdb000000001fffffffdffffffffe7fffffffa4",
            INIT_07 => X"fffffff8efffffffb900000005dfffffffa700000000700000002f00000003bfffffffe4",
            INIT_08 => X"000000019ffffffff9000000037000000016fffffffdefffffffc2fffffff85000000021",
            INIT_09 => X"fffffffdd00000001e000000021fffffffd700000002a000000031000000005000000028",
            INIT_0A => X"00000003f000000024ffffffff3000000054000000043ffffffff800000005a00000003c",
            INIT_0B => X"fffffffff000000011ffffffff900000001dfffffffe400000003000000001cfffffffee",
            INIT_0C => X"000000013000000017000000008fffffffebffffffff7fffffffe0ffffffffe000000008",
            INIT_0D => X"fffffffb8fffffffc0ffffffffafffffffd0fffffffd7000000023fffffffb500000000a",
            INIT_0E => X"000000019fffffffe8000000000fffffffe9000000002ffffffff1fffffffd200000000f",
            INIT_0F => X"000000012ffffffff3ffffffffc000000027ffffffff4fffffffecfffffffec00000000a",
            INIT_10 => X"00000001effffffff200000001b00000000dffffffff5fffffffe8000000004ffffffffd",
            INIT_11 => X"000000012000000010fffffffd8ffffffffc00000001d000000024000000017000000037",
            INIT_12 => X"ffffffffd00000001b00000003100000003900000000a000000039000000017000000018",
            INIT_13 => X"fffffffec00000001d00000000700000004700000005200000002300000003c000000040",
            INIT_14 => X"fffffffe2fffffffe400000002200000002300000000400000001900000000100000001e",
            INIT_15 => X"000000027fffffffb3ffffffff2ffffffff8fffffffeefffffffd6000000015000000010",
            INIT_16 => X"00000001affffffffbffffffff400000004800000000a00000002a00000004700000001a",
            INIT_17 => X"fffffff9cfffffffb1fffffffb3fffffffbefffffffc300000000dfffffffe8fffffffd6",
            INIT_18 => X"00000002affffffff6ffffffffc000000021fffffffe1fffffffe8ffffffffefffffffe0",
            INIT_19 => X"fffffff84fffffff6bfffffff82fffffffc6fffffffe6fffffffc0000000012000000031",
            INIT_1A => X"000000002000000001fffffffecfffffffe1fffffffe5fffffff6afffffff53fffffff67",
            INIT_1B => X"fffffffc6000000000fffffffddfffffffd800000003200000001500000001afffffffeb",
            INIT_1C => X"ffffffffe00000000100000000efffffffabfffffff9dfffffffeffffffff8dfffffffa4",
            INIT_1D => X"fffffffee00000000e00000003500000002f00000001800000002300000003d000000005",
            INIT_1E => X"00000000b00000000c000000022000000000ffffffff2000000010000000022000000006",
            INIT_1F => X"fffffffeefffffffe0fffffffcd00000001700000002bfffffffccffffffff1000000034",
            INIT_20 => X"000000020000000000fffffffe8ffffffffeffffffff100000000f000000000fffffffee",
            INIT_21 => X"fffffffe3ffffffff2ffffffff0fffffffd1fffffffa8fffffffdffffffffd200000001a",
            INIT_22 => X"fffffffddfffffffeefffffffdbfffffffd0fffffffdbfffffffd4fffffffefffffffff2",
            INIT_23 => X"fffffffe9fffffffdefffffffddfffffffc0fffffffed000000000fffffffedffffffff3",
            INIT_24 => X"00000001600000000c000000009fffffffffffffffffdfffffffeefffffffd8ffffffff1",
            INIT_25 => X"00000001a000000009ffffffff400000002200000000d00000000b000000004000000000",
            INIT_26 => X"fffffffe200000001100000001d00000002100000000700000000dfffffffff000000012",
            INIT_27 => X"ffffffff800000000700000001500000001affffffffb00000000cffffffff5fffffffee",
            INIT_28 => X"fffffffddfffffffeffffffffdffffffffeaffffffff7000000006000000019fffffffe2",
            INIT_29 => X"ffffffff8fffffffe7ffffffff8fffffffeeffffffff3fffffffe900000000dffffffff5",
            INIT_2A => X"ffffffff6000000020000000006000000007fffffffe8fffffffecfffffffeefffffffec",
            INIT_2B => X"fffffffe700000000efffffffe1fffffffe6ffffffffefffffffe0000000013000000022",
            INIT_2C => X"fffffffebfffffffe6fffffffbdfffffffc2fffffffd6ffffffffdfffffffe7ffffffff8",
            INIT_2D => X"00000002c00000000e00000003700000001400000000e000000002fffffffc7fffffffff",
            INIT_2E => X"ffffffff2ffffffff9ffffffffe00000000d000000006000000034000000019000000028",
            INIT_2F => X"000000004000000005ffffffff8000000009fffffffd7ffffffff9fffffffecfffffffeb",
            INIT_30 => X"00000002800000000b00000000e00000001cffffffffffffffffe900000000dffffffff7",
            INIT_31 => X"ffffffff0ffffffffc000000022ffffffff500000001d000000026000000017000000019",
            INIT_32 => X"fffffffb2fffffffcffffffffeffffffffe2ffffffffbfffffffe3fffffffecffffffff9",
            INIT_33 => X"00000003d000000014ffffffff4000000001ffffffff6fffffffeeffffffff4fffffffc3",
            INIT_34 => X"000000016fffffffddfffffffdc000000017fffffffdf00000000ffffffffef000000012",
            INIT_35 => X"fffffffebffffffffc00000001100000000f00000001500000001b000000006fffffffe5",
            INIT_36 => X"fffffffc3fffffffadfffffffefffffffff300000002800000000600000001700000000e",
            INIT_37 => X"000000002ffffffff9ffffffff3fffffffe8000000005fffffffe0fffffffd2fffffffee",
            INIT_38 => X"ffffffffcfffffffd4fffffffbafffffffd2fffffff88ffffffffefffffffe9fffffffbd",
            INIT_39 => X"fffffffe2ffffffffcfffffffccffffffff1000000000fffffffcdfffffffd2000000002",
            INIT_3A => X"fffffffe1fffffffc9fffffffc0fffffffdbfffffffbdfffffffb1000000039000000029",
            INIT_3B => X"fffffffbdfffffffccfffffffe2fffffffcdfffffffc5ffffffffafffffffe1fffffffde",
            INIT_3C => X"000000000000000013fffffffed00000001a000000020000000020fffffffeefffffffed",
            INIT_3D => X"ffffffffbfffffffedfffffffe4000000013000000006ffffffff9000000002ffffffff1",
            INIT_3E => X"000000001000000017000000029fffffffe100000001f00000000b000000000ffffffff2",
            INIT_3F => X"000000009000000016ffffffff300000000d00000001500000001600000001300000002c",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffffffadfffffffed00000000500000002700000001700000000f00000000100000001a",
            INIT_41 => X"00000001600000001900000001900000001a000000011ffffffff200000000dffffffffd",
            INIT_42 => X"000000023ffffffff0ffffffff8fffffffbeffffffff800000000cfffffffd7000000024",
            INIT_43 => X"00000001300000000300000002c00000003b00000001700000002dfffffffd300000000f",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000009f0000000a200000009c0000000a00000000a60000000a500000009f00000009e",
            INIT_01 => X"0000000aa0000000a90000000a60000000a10000000a00000000a100000009f00000009e",
            INIT_02 => X"00000009400000009600000009500000009c0000000a00000000a00000000a20000000a7",
            INIT_03 => X"00000007400000007e00000008900000008f00000008d00000008c00000008f000000095",
            INIT_04 => X"0000000a20000000a40000000a00000000a20000000a600000009f000000097000000098",
            INIT_05 => X"0000000ab0000000ab0000000aa0000000a300000009f00000009b00000009c0000000a3",
            INIT_06 => X"00000008d00000008c00000008b00000009100000009700000009a0000000a00000000a9",
            INIT_07 => X"00000007700000007d00000008800000008f00000008e000000091000000093000000095",
            INIT_08 => X"0000000a50000000a50000000a30000000a00000000a700000009e000000097000000097",
            INIT_09 => X"0000000a90000000a70000000a60000000a100000009d00000009e0000000a20000000a3",
            INIT_0A => X"00000007200000006500000006200000006e00000007900000009100000009f0000000aa",
            INIT_0B => X"00000007800000008200000008b00000008e00000008c00000008f000000086000000078",
            INIT_0C => X"0000000a90000000a90000000a70000000a70000000ae0000000a000000009b00000009b",
            INIT_0D => X"0000000a40000000a200000009d0000000b10000000bf0000000a70000000a50000000a5",
            INIT_0E => X"00000004a00000005000000005c00000006200000006700000006800000009500000009e",
            INIT_0F => X"00000007f00000008800000008c00000008c000000084000000071000000053000000056",
            INIT_10 => X"0000000a60000000a90000000a30000000a90000000aa0000000a100000009c00000009b",
            INIT_11 => X"00000008e0000000920000000970000000c30000000f60000000ad0000000a40000000a4",
            INIT_12 => X"00000005d00000006100000006a00000007000000007100000005500000004e00000006f",
            INIT_13 => X"00000008100000008500000008a00000008000000006900000005500000005400000004a",
            INIT_14 => X"0000000a70000000a70000000a50000000a1000000093000000082000000085000000094",
            INIT_15 => X"00000004200000006100000008000000009d0000000b40000000a30000000a50000000a3",
            INIT_16 => X"00000005e00000007200000007700000007a000000076000000059000000042000000045",
            INIT_17 => X"00000008600000008a00000008c00000006c00000004300000003a00000005b000000063",
            INIT_18 => X"0000000aa0000000a80000000aa00000009900000005800000002f00000006d00000007f",
            INIT_19 => X"00000004400000006400000007f0000000810000000930000000a40000000a60000000a9",
            INIT_1A => X"00000006b00000006900000007c00000009200000008400000005300000004800000004e",
            INIT_1B => X"00000008600000008d00000008400000004f00000002e00000003f000000055000000073",
            INIT_1C => X"0000000a80000000a50000000a700000008f00000004600000002a000000063000000083",
            INIT_1D => X"00000005800000007400000009000000008200000007800000008c0000000a10000000ab",
            INIT_1E => X"00000006a0000000660000000880000000a300000007c00000004d00000005500000005b",
            INIT_1F => X"00000008800000008a00000006b000000039000000031000000036000000055000000064",
            INIT_20 => X"0000000a60000000a30000000a100000009900000007c0000000360000000670000000aa",
            INIT_21 => X"00000005600000007900000009c00000009d00000007d0000000710000000ae0000000a5",
            INIT_22 => X"00000005700000007100000009200000008a000000051000000050000000054000000052",
            INIT_23 => X"00000008900000008500000004a000000028000000038000000047000000056000000053",
            INIT_24 => X"00000009900000009c00000009e0000000ae00000009a00000005e0000000860000000b4",
            INIT_25 => X"00000005d00000007d0000000940000000ae00000009c0000000cf0000000ed0000000cf",
            INIT_26 => X"00000006a00000008500000008f00000008900000004c00000003b00000004a000000056",
            INIT_27 => X"00000008400000005f00000002800000003200000004b000000054000000057000000056",
            INIT_28 => X"00000007a00000009f00000009b0000000b10000000a500000008e00000006c0000000b7",
            INIT_29 => X"00000007800000007d00000009c0000000b70000000a40000000dc0000000ed0000000d5",
            INIT_2A => X"00000006b00000009b00000009d0000000af00000005b00000002d00000005000000004e",
            INIT_2B => X"00000006800000003b00000002900000003b00000004e000000058000000067000000057",
            INIT_2C => X"0000000860000000ad0000000a60000000bb0000000aa0000000870000000640000000bc",
            INIT_2D => X"0000000750000000860000000bd0000000b90000000aa0000000c70000000c2000000075",
            INIT_2E => X"00000005d0000000920000000a00000000d200000007d000000026000000054000000066",
            INIT_2F => X"00000004c00000003e00000003700000004900000005500000006800000005e000000053",
            INIT_30 => X"00000009f0000000b20000000a60000000ae0000000af00000007f00000005a0000000bd",
            INIT_31 => X"00000007b0000000a00000000d80000000ba0000000890000000a80000000a8000000061",
            INIT_32 => X"00000005b00000007b00000009b0000000c2000000096000000032000000073000000078",
            INIT_33 => X"00000004900000004f00000004900000005400000005600000005f000000054000000054",
            INIT_34 => X"0000000a70000000ad0000000880000000770000000b900000009800000005d0000000bd",
            INIT_35 => X"00000008d0000000b40000000e20000000bd0000000a7000000091000000093000000067",
            INIT_36 => X"0000000570000000720000000950000000ba00000009a00000004700000007500000007e",
            INIT_37 => X"00000005e00000006100000005a000000064000000063000000050000000048000000050",
            INIT_38 => X"0000000a700000009c0000000630000000690000000ba0000000a800000006c0000000c2",
            INIT_39 => X"00000009a0000000910000000ac0000000be0000000c600000008a000000073000000064",
            INIT_3A => X"00000006e0000000820000000890000000b3000000098000000047000000067000000092",
            INIT_3B => X"00000007500000006100000006400000007300000006d00000005f00000005b000000055",
            INIT_3C => X"00000009b00000008c00000004e0000000820000000b80000000ac0000000840000000c5",
            INIT_3D => X"0000000830000000870000000910000000f20000000e600000008f000000082000000073",
            INIT_3E => X"0000000570000000700000000980000000a800000009000000005f00000006c000000079",
            INIT_3F => X"000000088000000079000000067000000078000000070000000069000000057000000047",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000008a00000007e00000004e0000000a80000000bf0000000a80000000920000000cb",
            INIT_41 => X"00000007100000007100000008c0000000a20000000ad00000009a00000006000000008a",
            INIT_42 => X"00000006d00000008700000009400000009c0000000ab000000070000000069000000065",
            INIT_43 => X"00000009000000009700000007d00000006b00000006500000005e00000004f00000004e",
            INIT_44 => X"00000009c00000006000000005e0000000b00000000b70000000a40000000a30000000d6",
            INIT_45 => X"00000007300000006600000007400000007200000007600000008100000006a000000094",
            INIT_46 => X"00000004b000000085000000080000000044000000076000000090000000065000000056",
            INIT_47 => X"00000008c00000009600000008f00000007400000006600000004700000003a00000003c",
            INIT_48 => X"00000008d00000005600000007c0000000b00000000ad0000000a70000000b20000000d4",
            INIT_49 => X"00000009300000008100000007c00000008600000004d000000068000000087000000099",
            INIT_4A => X"00000004000000004b00000006b00000007500000008400000009600000005c000000055",
            INIT_4B => X"00000009700000009a0000000a000000009b00000008500000005600000004100000002c",
            INIT_4C => X"0000000770000000560000000900000000b10000000ae0000000ab0000000bb0000000c7",
            INIT_4D => X"0000000b800000009100000006c00000008100000004600000009000000008900000007a",
            INIT_4E => X"000000034000000033000000059000000086000000089000000083000000049000000074",
            INIT_4F => X"00000009500000009e0000000a40000000ab0000000a300000007900000005a00000002f",
            INIT_50 => X"0000000830000000630000000980000000b50000000b10000000b30000000c30000000a5",
            INIT_51 => X"0000000bf0000000b200000007a00000005d00000005000000005d0000000670000000ab",
            INIT_52 => X"00000001800000002600000002e00000003c000000057000000059000000064000000096",
            INIT_53 => X"00000007800000007f00000008000000009000000009000000006c00000003c00000002e",
            INIT_54 => X"00000009600000005300000008a0000000b50000000b20000000b10000000c3000000075",
            INIT_55 => X"0000000c20000000be0000000b00000000950000000860000000850000000db0000000f5",
            INIT_56 => X"00000003a00000003100000002200000002300000003d00000006e00000007d0000000a8",
            INIT_57 => X"00000003700000003b00000004500000004e00000004800000004500000003a00000003d",
            INIT_58 => X"0000000d300000006d00000008c0000000b10000000b00000000ae0000000af00000004f",
            INIT_59 => X"00000007a00000007400000007c00000007200000007c0000000d00000000fc0000000fd",
            INIT_5A => X"00000003800000003300000003200000003400000003c000000044000000044000000068",
            INIT_5B => X"00000002a00000002b00000003000000003b00000003300000002b000000033000000038",
            INIT_5C => X"0000000f60000000a50000000a50000000b20000000a8000000090000000060000000029",
            INIT_5D => X"00000003000000003100000003100000003500000003c00000006e0000000e30000000fd",
            INIT_5E => X"00000002b00000002e00000002e00000002600000002a00000002e00000002a00000002d",
            INIT_5F => X"00000002d00000003300000003500000003700000003200000002e00000002e00000002a",
            INIT_60 => X"0000000fe0000000c20000000840000000a600000008300000003b00000001d00000001d",
            INIT_61 => X"00000003200000003100000003300000003200000003200000003d00000008d0000000f1",
            INIT_62 => X"00000002a00000002600000002700000002300000002200000002700000002a00000002f",
            INIT_63 => X"00000003300000002e00000003200000003800000003b00000003e00000003800000002d",
            INIT_64 => X"0000001000000000d700000008000000008000000004900000002200000001e000000030",
            INIT_65 => X"00000002d00000002e0000000340000000340000000320000000360000000420000000bb",
            INIT_66 => X"00000002e00000002b00000002800000002800000002700000002400000002900000002b",
            INIT_67 => X"00000005300000004600000003200000003600000003b00000004000000003e00000003b",
            INIT_68 => X"0000000f00000000e000000008000000004200000002900000001f000000023000000034",
            INIT_69 => X"00000002f00000002c00000002c00000003600000003800000003100000003a00000007c",
            INIT_6A => X"00000003a00000003600000002d00000002c00000002c00000002b00000002b00000002e",
            INIT_6B => X"00000004c00000005500000004900000003300000002400000002b00000002e000000036",
            INIT_6C => X"0000000d30000000ca00000004e00000002c00000002300000001d000000023000000032",
            INIT_6D => X"00000002d00000002800000003000000003a000000030000000036000000041000000061",
            INIT_6E => X"00000003000000002700000002700000003300000002e00000002f00000003000000002f",
            INIT_6F => X"00000003300000002e00000004300000004300000002800000001c00000002700000002f",
            INIT_70 => X"0000000aa00000006800000002e000000029000000021000000020000000023000000032",
            INIT_71 => X"00000002d00000003600000003a00000003d000000035000000034000000036000000040",
            INIT_72 => X"00000002700000002800000002a00000002e00000003100000002e00000002900000002a",
            INIT_73 => X"00000003300000000f00000001f00000002f00000003f00000002c000000028000000025",
            INIT_74 => X"00000004700000002a00000002b00000002500000002600000001f00000002a000000044",
            INIT_75 => X"00000003500000003a00000003800000003100000002600000001b00000001f000000031",
            INIT_76 => X"00000002100000002700000002d00000003200000003500000003900000003c000000038",
            INIT_77 => X"00000002800000000d00000002600000003800000004900000004f00000003e00000002a",
            INIT_78 => X"00000002800000002c00000002a00000002700000002b00000002300000003100000003d",
            INIT_79 => X"00000002f00000002400000001d00000001b00000001e00000001700000001b00000002a",
            INIT_7A => X"00000002b00000002b00000003100000004500000004b00000004200000003e000000038",
            INIT_7B => X"00000001400000001d00000001a00000003c00000005d00000006d00000005500000003c",
            INIT_7C => X"00000002600000002800000002800000002800000002b00000002d000000038000000036",
            INIT_7D => X"00000001200000001300000001d00000001900000001d00000001600000001a000000024",
            INIT_7E => X"00000002d00000003400000003500000004200000004a00000003d00000002f000000020",
            INIT_7F => X"000000015000000022000000018000000030000000059000000069000000059000000043",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000007100000007300000006d00000007000000007600000007400000006f000000070",
            INIT_01 => X"00000007700000007500000007500000006f00000006f00000007400000007100000006f",
            INIT_02 => X"00000006a00000006b00000006b00000006d00000007000000006f000000071000000075",
            INIT_03 => X"00000005500000005b00000005f00000006100000006100000006200000006500000006b",
            INIT_04 => X"00000007200000007500000007100000007000000007400000007200000006e000000070",
            INIT_05 => X"00000007300000007500000007700000007100000006e00000006f00000006e000000074",
            INIT_06 => X"00000006400000006600000006800000006e00000007300000007000000006f000000073",
            INIT_07 => X"00000005800000005b00000005f000000062000000061000000066000000066000000069",
            INIT_08 => X"00000007500000007500000007300000006a00000006f00000006f00000006d00000006e",
            INIT_09 => X"00000007100000007200000007300000006f00000006d000000072000000073000000073",
            INIT_0A => X"00000005500000004d00000004e00000005a00000006000000006f000000072000000074",
            INIT_0B => X"00000005900000005f000000062000000063000000063000000067000000060000000056",
            INIT_0C => X"00000007700000007800000007500000006e00000007000000006d00000006e00000006b",
            INIT_0D => X"00000007200000007300000006f00000008200000009200000007b000000075000000073",
            INIT_0E => X"00000003f00000004b00000005a00000005a00000005700000005000000006f000000070",
            INIT_0F => X"00000005e00000006300000006500000006600000006200000005500000003e000000046",
            INIT_10 => X"00000007400000007800000007100000007200000007200000007300000007200000006b",
            INIT_11 => X"00000006c00000006f00000007200000009c0000000d6000000080000000074000000071",
            INIT_12 => X"00000005e00000006600000007200000006e000000067000000045000000035000000050",
            INIT_13 => X"00000005d00000005e00000006500000006000000005300000004900000004e000000048",
            INIT_14 => X"00000007300000007400000007100000007300000007000000006400000006800000006d",
            INIT_15 => X"00000003200000004b00000006600000007a00000008a00000007600000007400000006f",
            INIT_16 => X"00000006000000007400000007a00000007900000007100000005300000003800000003a",
            INIT_17 => X"00000005f00000006200000006900000005400000003a00000003a00000005b000000064",
            INIT_18 => X"00000007600000007300000007600000007500000004a00000002500000005f000000064",
            INIT_19 => X"00000004300000005700000006c00000006200000006b000000078000000074000000075",
            INIT_1A => X"00000006600000006300000007600000008e00000008200000005400000004b000000053",
            INIT_1B => X"00000005d00000006300000006200000003d00000002f00000004700000005300000006f",
            INIT_1C => X"00000007400000007200000007500000006f00000004000000002b000000060000000073",
            INIT_1D => X"00000005700000006a00000008300000006e00000005e00000006d000000071000000077",
            INIT_1E => X"00000006200000005d00000007c00000009900000007600000004d00000005800000005f",
            INIT_1F => X"00000006100000006700000005300000002f00000003500000003c00000005100000005d",
            INIT_20 => X"00000007a00000007500000007100000007c00000007900000003a0000000690000000a1",
            INIT_21 => X"00000005000000006f00000008f00000008d000000069000000059000000087000000079",
            INIT_22 => X"00000004f00000006700000008700000007d00000004700000004e000000055000000051",
            INIT_23 => X"00000006700000006a00000003b00000002300000003900000004900000005200000004d",
            INIT_24 => X"00000007600000007400000007400000009500000009a00000006400000008b0000000b0",
            INIT_25 => X"00000005500000006e0000000830000000990000000830000000b40000000d60000000b4",
            INIT_26 => X"00000006200000007c00000008500000007d00000004400000003900000004a000000054",
            INIT_27 => X"00000006700000004b00000001e00000003100000004c000000055000000055000000051",
            INIT_28 => X"00000005900000007600000007000000009c0000000a90000000970000000740000000b7",
            INIT_29 => X"00000006f00000006c00000008900000009f0000000870000000bf0000000e00000000c5",
            INIT_2A => X"0000000640000000930000000930000000a500000005500000002c00000005000000004c",
            INIT_2B => X"00000005100000002e00000002400000003b00000004f000000058000000066000000053",
            INIT_2C => X"00000005d00000007b0000000780000000a70000000af00000009000000006c0000000bf",
            INIT_2D => X"00000006b0000000770000000ab0000000a100000008e0000000ab0000000b600000005f",
            INIT_2E => X"00000005900000008b0000000980000000c9000000079000000026000000054000000062",
            INIT_2F => X"00000003800000003700000003500000004b00000005700000006800000005d000000050",
            INIT_30 => X"00000006d00000007b00000007b00000009c0000000b40000000860000000600000000c2",
            INIT_31 => X"0000000710000000950000000ca0000000a600000007200000009000000009a000000044",
            INIT_32 => X"0000000580000000760000000950000000bb000000093000000032000000072000000072",
            INIT_33 => X"00000003700000004a00000004900000005700000005700000005f000000054000000053",
            INIT_34 => X"00000007400000007c00000006a00000006e0000000bc00000009a00000005f0000000c0",
            INIT_35 => X"0000000830000000ac0000000d80000000ae00000009500000007d000000084000000048",
            INIT_36 => X"00000005500000006e0000000900000000b5000000098000000047000000072000000075",
            INIT_37 => X"000000049000000059000000058000000065000000064000000050000000049000000050",
            INIT_38 => X"00000007a00000007700000005900000006d0000000ba0000000a700000006b0000000c4",
            INIT_39 => X"00000008f00000008c0000000a50000000b40000000b900000007b00000006a00000004a",
            INIT_3A => X"00000006d0000000800000000850000000af000000098000000047000000064000000088",
            INIT_3B => X"00000005f00000005500000006000000007400000006e00000006000000005d000000056",
            INIT_3C => X"00000007d0000000780000000530000000890000000b20000000a70000000810000000c5",
            INIT_3D => X"00000007900000008200000008a0000000ec0000000dd00000008300000007800000005e",
            INIT_3E => X"00000005500000006c00000009300000009f000000086000000058000000068000000070",
            INIT_3F => X"00000006800000006000000005600000006e00000006d000000068000000058000000048",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000007e00000007d0000000560000000aa0000000b60000000a40000000920000000cb",
            INIT_41 => X"00000006a00000006a0000000840000000980000000a300000008f000000050000000079",
            INIT_42 => X"00000006900000008200000008d00000008a00000008f00000005a000000065000000065",
            INIT_43 => X"00000006800000006c00000005800000005300000005b00000005d00000004f00000004c",
            INIT_44 => X"0000000950000000600000000660000000b60000000b80000000a70000000a60000000d7",
            INIT_45 => X"00000006e00000005b00000006900000006600000006900000007400000005d000000089",
            INIT_46 => X"00000004500000007e00000007800000003800000006000000008000000006700000005b",
            INIT_47 => X"00000006e00000007400000007000000005e00000005d000000046000000038000000038",
            INIT_48 => X"00000008b0000000580000000830000000b80000000b50000000af0000000b80000000d3",
            INIT_49 => X"00000008f00000007500000006f00000007900000004000000005a000000080000000094",
            INIT_4A => X"00000003b00000004400000006300000006d00000007500000008b00000006000000005c",
            INIT_4B => X"00000006f00000007300000007800000007700000006900000004500000003e000000029",
            INIT_4C => X"00000007900000005a0000000950000000b60000000b30000000b00000000bd0000000c0",
            INIT_4D => X"0000000b000000008600000006100000007600000003b00000008600000008800000007c",
            INIT_4E => X"00000003300000003100000005600000008100000007c00000007700000004b000000076",
            INIT_4F => X"00000006b00000006f00000007100000007900000007600000005b00000005a000000031",
            INIT_50 => X"00000008700000006700000009d0000000b50000000ad0000000b20000000c100000009c",
            INIT_51 => X"0000000b60000000ad00000007600000005a00000004d00000005a0000000690000000af",
            INIT_52 => X"00000002100000002e00000003400000003d00000004d00000004e000000064000000094",
            INIT_53 => X"00000006900000007100000006d00000007b00000007d000000064000000047000000039",
            INIT_54 => X"0000000990000000570000000900000000b30000000a90000000b20000000c8000000078",
            INIT_55 => X"0000000c00000000c40000000b600000009c00000008d00000008c0000000de0000000f7",
            INIT_56 => X"00000005100000004600000003600000003100000003e00000006d0000000850000000ac",
            INIT_57 => X"00000005a00000005c000000060000000068000000065000000063000000054000000055",
            INIT_58 => X"0000000d30000000700000000920000000b10000000ac0000000b70000000c5000000069",
            INIT_59 => X"00000008500000008500000008d00000008400000008f0000000e00000000fd0000000fc",
            INIT_5A => X"00000005d00000005500000005400000005400000005200000005700000005d00000007c",
            INIT_5B => X"00000005f00000006100000006100000006c00000006800000006000000005b00000005e",
            INIT_5C => X"0000000f50000000a60000000aa0000000b60000000ae0000000a8000000089000000059",
            INIT_5D => X"00000004800000004b00000004c0000000500000000580000000880000000e70000000fb",
            INIT_5E => X"00000005700000005900000005a00000005600000005200000005100000005100000004f",
            INIT_5F => X"00000005a00000005f00000005e00000006000000006000000005e00000005d000000059",
            INIT_60 => X"0000000fa0000000bd0000000880000000b300000009900000006600000005700000005b",
            INIT_61 => X"00000005400000005300000005500000005400000005400000005e00000009f0000000f5",
            INIT_62 => X"00000005900000005500000005600000005300000004f000000052000000054000000056",
            INIT_63 => X"00000006700000005e00000006300000006600000006500000006700000006700000005c",
            INIT_64 => X"0000000fd0000000d500000008800000009400000006a00000005500000005e00000006f",
            INIT_65 => X"00000005200000005300000005a00000005a00000005800000005b00000005d0000000c6",
            INIT_66 => X"00000005f00000005c000000059000000056000000053000000050000000051000000052",
            INIT_67 => X"00000008900000007b00000006900000006c00000006c00000006d00000006e00000006c",
            INIT_68 => X"0000000f50000000e500000009100000005f000000053000000056000000063000000072",
            INIT_69 => X"00000005300000005200000005200000005c00000005e00000005700000005c00000008f",
            INIT_6A => X"00000006e00000006a00000006100000005a000000058000000056000000053000000054",
            INIT_6B => X"00000007d00000008a00000008200000006c00000005b00000005f000000061000000069",
            INIT_6C => X"0000000e40000000db00000006a00000005300000005600000005900000006200000006e",
            INIT_6D => X"00000005200000005000000005700000006100000005700000005e00000006800000007e",
            INIT_6E => X"00000006600000005d00000005c000000061000000059000000059000000057000000054",
            INIT_6F => X"00000006000000006200000007e00000008100000006500000005500000005d000000065",
            INIT_70 => X"0000000c500000008500000005400000005800000005800000005c00000006100000006c",
            INIT_71 => X"00000005300000006000000006400000006700000005f00000005e000000061000000064",
            INIT_72 => X"00000005c00000005d00000005f00000005c00000005c00000005800000005000000004f",
            INIT_73 => X"00000005d00000003c00000005a00000006e00000007d00000006600000005d00000005a",
            INIT_74 => X"00000006b00000004f00000005900000005700000005b00000005800000006400000007c",
            INIT_75 => X"00000005c00000006600000006400000005d00000005200000004700000004d000000059",
            INIT_76 => X"00000005300000005800000005e00000005f00000006100000006300000006300000005e",
            INIT_77 => X"00000005500000004000000006100000007400000008300000008400000007000000005b",
            INIT_78 => X"00000005100000005800000005c00000005a00000005b000000055000000066000000074",
            INIT_79 => X"00000005600000005000000004900000004700000004a000000043000000048000000055",
            INIT_7A => X"00000005800000005800000005f00000007100000007700000006d00000006500000005f",
            INIT_7B => X"00000004000000005200000005200000007300000009100000009c000000082000000069",
            INIT_7C => X"00000005100000005700000005c00000005900000005600000005900000006900000006b",
            INIT_7D => X"00000003a00000003f00000004900000004500000004900000004200000004500000004f",
            INIT_7E => X"00000005700000005f00000006000000006f000000077000000068000000057000000046",
            INIT_7F => X"00000004300000005400000004d00000006300000008700000009200000008300000006d",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000002d00000002f00000002900000002e00000003500000003300000002f000000031",
            INIT_01 => X"00000002c00000002d00000002900000003100000003400000002900000002900000002c",
            INIT_02 => X"00000002b00000002d00000002d00000002c00000002b000000027000000026000000028",
            INIT_03 => X"00000002100000002400000002400000002600000002900000002b00000002700000002c",
            INIT_04 => X"00000002d00000002f00000002b00000003100000003800000002d000000028000000033",
            INIT_05 => X"00000002100000002800000002900000003400000003600000002900000002600000002e",
            INIT_06 => X"00000003000000003400000003700000003500000003200000002900000002100000001e",
            INIT_07 => X"00000002200000002000000001f00000002200000002600000002d00000002e000000032",
            INIT_08 => X"00000002d00000002d00000002c00000002a00000003000000002400000002100000002f",
            INIT_09 => X"00000002300000002500000002600000003300000003900000003000000002b00000002b",
            INIT_0A => X"00000003200000002f00000003200000003400000003100000003600000002f000000027",
            INIT_0B => X"000000021000000022000000022000000023000000027000000033000000037000000030",
            INIT_0C => X"00000003000000003000000002e00000002b00000002c00000001f000000020000000028",
            INIT_0D => X"00000003600000002f00000002900000004b00000005f00000003900000002d00000002c",
            INIT_0E => X"00000003200000004200000005400000004c00000004100000002f00000004300000003a",
            INIT_0F => X"00000002400000002700000002700000002b00000002e00000002d000000027000000034",
            INIT_10 => X"00000002c00000002f00000002800000002b00000002f000000031000000030000000029",
            INIT_11 => X"00000004700000003c00000003800000006b0000000a400000003b00000002a000000029",
            INIT_12 => X"00000005d00000006900000007600000006f00000006200000003800000001f000000032",
            INIT_13 => X"00000002400000002400000002e00000003000000002d00000002f000000046000000043",
            INIT_14 => X"00000002900000002900000002700000002c000000035000000039000000040000000036",
            INIT_15 => X"00000001f00000002b00000003a00000004e00000005500000002a000000027000000025",
            INIT_16 => X"00000006000000007400000007a00000007800000006e00000004c00000002d00000002b",
            INIT_17 => X"00000002800000002c00000003a00000003100000002500000002f000000056000000061",
            INIT_18 => X"00000002b00000002800000002b00000003000000001c000000011000000050000000039",
            INIT_19 => X"00000003900000004600000004b00000003b00000003400000002700000002500000002a",
            INIT_1A => X"00000005e00000005a00000006c00000008400000007900000004a000000040000000048",
            INIT_1B => X"00000002700000003000000003a00000002400000002700000004500000004d000000067",
            INIT_1C => X"00000002700000002400000002a00000003800000002900000002600000005c00000005a",
            INIT_1D => X"00000004f00000005d00000006b00000004d000000031000000033000000033000000031",
            INIT_1E => X"00000005800000005100000007000000008c00000006b000000045000000052000000058",
            INIT_1F => X"00000002700000003300000003200000002000000003100000003a00000004a000000054",
            INIT_20 => X"00000003200000002900000002b00000005200000007100000003b000000069000000090",
            INIT_21 => X"00000004a00000006500000008000000007900000004e00000003b00000005f000000042",
            INIT_22 => X"00000004600000005d00000007b00000007000000003d00000004900000005200000004d",
            INIT_23 => X"00000002d00000003b00000002300000001b00000003500000004300000004c000000045",
            INIT_24 => X"00000003c00000002f00000003300000007000000009500000006900000008f0000000a3",
            INIT_25 => X"00000004f00000006b00000007d0000000910000000770000000a60000000c6000000092",
            INIT_26 => X"00000005900000007200000007a00000007000000003a00000003500000004700000004f",
            INIT_27 => X"00000003900000002c00000000f00000002b00000004700000004e00000004e00000004a",
            INIT_28 => X"00000002f00000003300000003200000007a0000000a800000009e00000007a0000000af",
            INIT_29 => X"00000006800000006800000008400000009b0000000830000000bc0000000e20000000b3",
            INIT_2A => X"00000005c00000008a00000008900000009a00000004d00000002800000004d000000045",
            INIT_2B => X"00000002e00000001f00000002100000003b00000004900000004f00000006000000004d",
            INIT_2C => X"00000002c00000003700000003b0000000880000000b20000000990000000740000000bd",
            INIT_2D => X"00000005f00000006a00000009f0000000970000000850000000a40000000bc000000050",
            INIT_2E => X"00000005200000008200000008e0000000c000000007100000002200000004f000000059",
            INIT_2F => X"00000001a00000003000000003700000004e00000005100000005e00000005800000004b",
            INIT_30 => X"00000002f0000000350000000440000000850000000b90000000900000000690000000c2",
            INIT_31 => X"0000000620000000810000000b700000009400000005e00000007e00000009800000002c",
            INIT_32 => X"00000005300000006f00000008c0000000b200000008c00000002f00000006d000000069",
            INIT_33 => X"00000001800000004000000004900000005900000005100000005500000005000000004f",
            INIT_34 => X"00000003200000003a0000000420000000620000000c00000000a30000000670000000c1",
            INIT_35 => X"00000007500000009d0000000c800000009b00000007f000000067000000078000000027",
            INIT_36 => X"0000000500000000680000000880000000ae00000009300000004400000006d00000006b",
            INIT_37 => X"00000002200000004500000005100000006300000005e00000004800000004600000004c",
            INIT_38 => X"00000003700000003e00000004300000006d0000000bc0000000ac0000000700000000c4",
            INIT_39 => X"00000008600000008c00000009f0000000a90000000a9000000067000000058000000022",
            INIT_3A => X"00000006900000007a00000007f0000000aa00000009500000004600000005f00000007d",
            INIT_3B => X"00000002f00000003500000005000000006f00000006800000005a00000005b000000053",
            INIT_3C => X"00000004d00000005800000004d00000008e0000000b50000000ae0000000880000000c5",
            INIT_3D => X"0000000700000000820000000890000000e60000000d300000007400000005d000000034",
            INIT_3E => X"00000005000000006500000008a00000009200000007600000004b00000005f000000065",
            INIT_3F => X"00000003000000003000000003600000005d000000063000000063000000057000000044",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000007100000007e00000005a0000000ac0000000bc0000000b20000000a00000000cc",
            INIT_41 => X"00000005a00000005800000007500000008d00000009b000000085000000025000000052",
            INIT_42 => X"00000006100000007600000007e00000006d00000006800000003a00000005700000005c",
            INIT_43 => X"00000002e00000003700000002d00000003700000005200000005e00000004d000000048",
            INIT_44 => X"0000000910000000660000000690000000ba0000000c20000000b80000000b40000000d7",
            INIT_45 => X"00000006200000004900000005900000005900000005f00000006900000003d00000006f",
            INIT_46 => X"00000003d00000007300000006900000002000000004000000006600000005f000000058",
            INIT_47 => X"00000003600000004000000004400000004000000004e000000041000000035000000033",
            INIT_48 => X"00000008f0000000600000000850000000bc0000000c10000000bd0000000c00000000cd",
            INIT_49 => X"00000008500000006400000006000000006c00000003700000005000000006f00000008d",
            INIT_4A => X"00000003400000003a00000005600000005c00000005d00000007800000005d00000005d",
            INIT_4B => X"00000002e00000002d00000003600000003e00000003b00000002800000003c000000027",
            INIT_4C => X"0000000840000000630000000980000000b80000000b90000000b50000000bb0000000b4",
            INIT_4D => X"0000000a800000007b00000005600000006c00000003300000007e000000087000000082",
            INIT_4E => X"00000003200000002c00000004e000000076000000069000000067000000049000000076",
            INIT_4F => X"00000002e00000003200000003400000004000000004400000003c00000005d000000034",
            INIT_50 => X"00000009200000006f0000000a00000000b40000000ac0000000af0000000bb000000092",
            INIT_51 => X"0000000b10000000ad00000007400000005600000004900000005700000006f0000000b9",
            INIT_52 => X"00000002900000003300000003600000003900000003f000000042000000065000000094",
            INIT_53 => X"00000003f00000004500000003d00000004c00000005200000004b000000053000000045",
            INIT_54 => X"00000009f00000005b0000000930000000b30000000a80000000b00000000c800000007c",
            INIT_55 => X"0000000c50000000d00000000c00000000a40000000930000000900000000e10000000fa",
            INIT_56 => X"00000006600000005700000004400000003a00000003e00000006d00000008f0000000b5",
            INIT_57 => X"00000007300000007000000007000000007800000007700000007a00000006f00000006e",
            INIT_58 => X"0000000d10000000710000000960000000b60000000b10000000c00000000d5000000085",
            INIT_59 => X"00000009800000009c0000000a200000009500000009d0000000e80000000fc0000000f7",
            INIT_5A => X"00000007d00000007300000006e00000006f000000065000000068000000077000000094",
            INIT_5B => X"00000008400000008900000008400000008e00000008d000000087000000082000000083",
            INIT_5C => X"0000000ed0000000a40000000ae0000000c00000000bc0000000bc0000000a8000000087",
            INIT_5D => X"00000006500000006b00000006900000006900000006f0000000990000000e40000000f1",
            INIT_5E => X"00000008000000007e00000007d00000007d000000074000000071000000078000000073",
            INIT_5F => X"00000008500000008b00000008600000008700000008900000008900000008b000000084",
            INIT_60 => X"0000000f20000000b50000000890000000bf0000000b000000008600000008200000008d",
            INIT_61 => X"00000007400000007800000007900000007700000007600000007f0000000af0000000f5",
            INIT_62 => X"00000008200000007d00000007d000000078000000071000000073000000075000000075",
            INIT_63 => X"00000009500000008c00000009000000009200000008e00000008e000000091000000086",
            INIT_64 => X"0000000f90000000d100000008f0000000a700000008800000007c00000008c0000000a2",
            INIT_65 => X"00000007300000007900000007f00000007f00000007d0000000800000000760000000cd",
            INIT_66 => X"00000008a00000008600000008300000007b000000075000000071000000070000000071",
            INIT_67 => X"0000000b60000000a700000009800000009a000000095000000093000000098000000096",
            INIT_68 => X"0000000f70000000ea0000000a400000007e00000007a0000000820000000930000000a5",
            INIT_69 => X"00000007700000007700000007700000008100000008300000007b000000072000000099",
            INIT_6A => X"00000009a00000009600000008d00000008300000007f00000007b000000077000000077",
            INIT_6B => X"0000000a90000000b60000000b200000009e00000008a00000008c00000008d000000096",
            INIT_6C => X"0000000ea0000000e900000008a00000007e00000008500000008a0000000950000000a2",
            INIT_6D => X"00000007700000007400000007b00000008500000007c00000008100000007e00000008c",
            INIT_6E => X"00000009400000008b00000008a00000008c00000008400000008200000007e00000007a",
            INIT_6F => X"00000008b00000008e0000000b00000000b600000009900000008500000008b000000093",
            INIT_70 => X"0000000d300000009f00000007d00000008a00000008d00000008f0000000930000000a1",
            INIT_71 => X"00000007800000008300000008700000008b000000082000000080000000079000000077",
            INIT_72 => X"00000008800000008a00000008b000000088000000087000000082000000078000000076",
            INIT_73 => X"00000008800000006700000008c0000000a40000000b200000009700000008a000000087",
            INIT_74 => X"00000008500000007100000008400000008b0000000920000000890000000940000000b1",
            INIT_75 => X"000000080000000089000000087000000080000000075000000069000000069000000072",
            INIT_76 => X"00000007d00000008300000008800000008900000008a00000008b000000089000000083",
            INIT_77 => X"00000007f00000006c0000000920000000a80000000b50000000b300000009a000000085",
            INIT_78 => X"00000007000000007d00000008600000008b00000008f0000000840000000940000000a8",
            INIT_79 => X"00000007800000007300000006c00000006a00000006d000000066000000068000000073",
            INIT_7A => X"00000007f00000007f00000008600000009800000009c000000090000000087000000080",
            INIT_7B => X"00000006b00000007e0000000820000000a40000000be0000000c50000000aa000000090",
            INIT_7C => X"00000007300000007b0000000840000000860000000860000000840000000950000000a0",
            INIT_7D => X"00000005900000006200000006c00000006800000006c000000065000000069000000072",
            INIT_7E => X"00000007b000000082000000083000000091000000098000000089000000076000000064",
            INIT_7F => X"00000006e00000008100000007c0000000910000000af0000000b60000000a7000000091",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"00000002100000003700000006c000000060000000000000000000000000000000000000",
            INIT_07 => X"00000000000000001700000000000000000000000000000000004c00000000c000000038",
            INIT_08 => X"00000002b00000000000000000700000001500000000000000000000000002a00000000f",
            INIT_09 => X"00000002900000000000000000000000000000000001300000001100000006100000005f",
            INIT_0A => X"00000005a0000000b800000004600000004300000000000000007300000005d000000000",
            INIT_0B => X"0000000000000000000000000230000000d6000000017000000000000000000000000000",
            INIT_0C => X"00000001f00000003a00000001c000000000000000000000000005000000000000000000",
            INIT_0D => X"0000000380000000240000000c200000001d00000000000000000e00000013a000000027",
            INIT_0E => X"0000000000000000000000000220000001cf00000001700000000000000006f000000080",
            INIT_0F => X"00000017a0000000000000000000000000000000000f2000000060000000000000000016",
            INIT_10 => X"0000000ce00000009d00000000000000000000000000a000000000000000000000000092",
            INIT_11 => X"00000000c00000007c00000000000000007b00000000000000000000000000d000000000",
            INIT_12 => X"00000000000000000000000000f000000000000000000000000000000000003000000000",
            INIT_13 => X"000000000000000011000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000036000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000038000000000000000000",
            INIT_16 => X"00000009d00000000000000007700000000000000000000000004b000000000000000000",
            INIT_17 => X"00000000000000000000000001500000000000000002d000000000000000000000000000",
            INIT_18 => X"000000000000000000000000006000000000000000021000000000000000013000000000",
            INIT_19 => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"00000006a00000000000000000000000000000000006e000000000000000079000000000",
            INIT_1B => X"0000000000000000cb000000000000000000000000000000000006000000000000000000",
            INIT_1C => X"00000000000000000000000003700000001b00000003900000003c000000000000000000",
            INIT_1D => X"0000000b6000000032000000000000000000000000006000000000000000000000000000",
            INIT_1E => X"00000000000000006700000003900000000000000000a000000000000000008000000000",
            INIT_1F => X"00000001500000000000000002a00000000000000002e00000001100000002000000000c",
            INIT_20 => X"00000000b000000009000000000000000000000000000000000017000000009000000036",
            INIT_21 => X"00000000900000002900000000d000000000000000017000000000000000006000000019",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000008000000000",
            INIT_23 => X"00000000900000000d000000000000000017000000000000000000000000000000000000",
            INIT_24 => X"00000000000000000000000000000000001300000001a000000026000000016000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"000000002000000001000000000000000005000000000000000000000000000000000000",
            INIT_27 => X"00000000e00000000000000001b000000000000000000000000000000000000000000000",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000000011",
            INIT_29 => X"00000000000000000000000000000000000000000000f000000000000000000000000000",
            INIT_2A => X"00000000000000001500000001800000000600000000100000000000000000200000003b",
            INIT_2B => X"00000000000000000500000000000000000b000000000000000000000000000000000000",
            INIT_2C => X"00000001f00000000000000000100000004000000001c000000006000000011000000000",
            INIT_2D => X"00000000800000001200000002100000000800000002d00000001700000000500000000c",
            INIT_2E => X"000000000000000031000000038000000000000000000000000030000000022000000013",
            INIT_2F => X"00000000000000000000000000000000000000000000800000000000000001a00000002e",
            INIT_30 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"00000000000000003200000002a00000004a00000004a000000000000000000000000022",
            INIT_32 => X"00000000000000000000000003200000001100000000000000000a000000009000000009",
            INIT_33 => X"00000000000000001f00000001900000000400000003e000000000000000005000000000",
            INIT_34 => X"00000000000000001600000000000000000000000000000000004e00000000000000005b",
            INIT_35 => X"00000000000000005f00000008300000000000000000d00000000000000005b00000005d",
            INIT_36 => X"00000000000000000000000000000000001c00000005b000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000019000000000000000029000000000000000000000000000",
            INIT_39 => X"00000000000000003600000000000000001700000000000000003c000000000000000000",
            INIT_3A => X"00000000800000000000000001f000000000000000000000000000000000010000000000",
            INIT_3B => X"00000003b0000000aa00000000000000000000000000000000000000000000e000000017",
            INIT_3C => X"00000004d00000005600000008700000002700000000000000002f000000027000000056",
            INIT_3D => X"00000000000000002d00000009400000005100000006100000006800000007200000004c",
            INIT_3E => X"00000000a00000000c00000001800000000000000002500000003800000000000000004d",
            INIT_3F => X"00000000000000000000000001c00000000e00000000000000002d00000009b000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000001b000000036000000039000000039000000074000000000",
            INIT_41 => X"00000009200000005000000004d00000000200000001d00000004b000000000000000013",
            INIT_42 => X"00000000000000000000000009e000000024000000000000000000000000000000000050",
            INIT_43 => X"00000000000000000000000001c00000004b000000032000000015000000012000000000",
            INIT_44 => X"00000000000000004e000000000000000000000000000000000000000000000000000000",
            INIT_45 => X"00000000000000000000000002500000000000000002c000000037000000000000000000",
            INIT_46 => X"00000001300000001100000000000000003f000000000000000064000000000000000000",
            INIT_47 => X"00000000200000005f000000000000000000000000000000000000000000000000000000",
            INIT_48 => X"00000000400000005300000000400000000b000000014000000000000000007000000000",
            INIT_49 => X"00000000000000000000000000000000000000000001700000002e000000032000000018",
            INIT_4A => X"00000000d000000000000000000000000000000000000000000000000000000000000000",
            INIT_4B => X"00000000000000000000000000000000000000000000000000000000000000000000000d",
            INIT_4C => X"00000000e00000000000000001600000000000000000000000000000000000d000000000",
            INIT_4D => X"00000002100000000100000000000000000000000000600000000000000000000000001e",
            INIT_4E => X"00000000000000000000000001b000000012000000000000000000000000000000000000",
            INIT_4F => X"00000000000000000000000000000000002e000000041000000038000000039000000000",
            INIT_50 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000022000000000",
            INIT_52 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"00000000000000001a00000000000000000300000007c000000017000000000000000023",
            INIT_54 => X"00000000000000001700000001800000000600000001500000000000000001a000000000",
            INIT_55 => X"00000009200000008100000004000000003500000002400000001e00000000c000000000",
            INIT_56 => X"00000000000000000000000000000000003300000000000000001900000006c000000027",
            INIT_57 => X"000000000000000000000000070000000000000000000000000000000000000000000000",
            INIT_58 => X"00000003800000004f00000001c000000000000000000000000000000000005000000000",
            INIT_59 => X"000000000000000000000000000000000000000000000000000036000000000000000038",
            INIT_5A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"000000000000000000000000000000000000000000000000000000000000013000000000",
            INIT_5C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"00000000000000000000000006600000002600000006500000004200000001c000000000",
            INIT_5E => X"00000004d00000000000000001900000007700000005600000005900000004e000000062",
            INIT_5F => X"00000002500000002800000000c0000000740000000b7000000047000000035000000060",
            INIT_60 => X"00000008400000006e000000050000000039000000078000000085000000039000000018",
            INIT_61 => X"0000000bb0000000ab00000009c0000000920000000a900000008b00000009a00000008a",
            INIT_62 => X"0000000500000000670000000a90000000b50000000a600000000a000000000000000000",
            INIT_63 => X"00000001100000002d00000001c00000000000000000000000004d000000097000000046",
            INIT_64 => X"00000001d00000006800000001d00000000000000002100000000000000000000000001c",
            INIT_65 => X"00000002f00000002b000000000000000000000000000000000000000000000000000000",
            INIT_66 => X"0000000560000000670000000d100000002400000004000000006a000000034000000037",
            INIT_67 => X"000000000000000000000000000000000000000000061000000017000000042000000073",
            INIT_68 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_69 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6A => X"00000000000000000000000000000000000000000000000000000000000000f000000000",
            INIT_6B => X"000000006000000000000000000000000000000000000000000000000000000000000000",
            INIT_6C => X"00000009b0000000b3000000000000000068000000000000000021000000000000000000",
            INIT_6D => X"0000000a90000000980000000a000000007d0000000c100000007c00000009c00000007d",
            INIT_6E => X"00000000000000000000000000000000000000000001c0000000060000000b00000000c2",
            INIT_6F => X"000000000000000000000000000000000000000000000000000011000000000000000000",
            INIT_70 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_71 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_74 => X"00000005000000005100000004b000000061000000062000000000000000000000000000",
            INIT_75 => X"00000005a00000005e00000005b000000053000000088000000061000000041000000049",
            INIT_76 => X"00000003c00000007300000005f00000007600000006000000005a00000006800000002a",
            INIT_77 => X"00000005c00000005d00000004100000004600000007b00000004e00000006d000000076",
            INIT_78 => X"00000002e00000002300000001500000001000000004f00000003b000000046000000097",
            INIT_79 => X"00000000000000000d00000000000000000000000000000000000000000000000000002f",
            INIT_7A => X"00000005700000007b000000073000000063000000000000000000000000000000000000",
            INIT_7B => X"00000000500000004000000004300000007000000004500000004800000004b000000056",
            INIT_7C => X"00000002400000000000000001e00000002200000003200000002b000000044000000012",
            INIT_7D => X"00000002100000002100000000000000000900000000000000005d00000000700000003c",
            INIT_7E => X"00000000000000002b000000017000000019000000015000000000000000006000000000",
            INIT_7F => X"000000000000000000000000000000000000000000000000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000004a00000005e00000005a000000000000000000000000000000000000000000000",
            INIT_01 => X"00000002600000000000000003600000003c00000004700000003100000002600000002c",
            INIT_02 => X"00000003100000004600000000200000000e00000005000000003e00000003a000000026",
            INIT_03 => X"00000003500000004400000005a00000002600000003500000003f00000002d00000002e",
            INIT_04 => X"00000001d00000000000000002c00000000800000000000000001c000000044000000049",
            INIT_05 => X"000000000000000000000000000000000000000000000000000000000000002000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"00000001100000003200000000000000000a000000000000000017000000000000000000",
            INIT_09 => X"00000000000000002e00000000000000000000000004c000000000000000011000000000",
            INIT_0A => X"00000000000000000000000001100000000000000001c000000076000000000000000002",
            INIT_0B => X"00000003e00000001800000001a00000008600000007b00000001200000006e000000000",
            INIT_0C => X"00000011600000004c00000004800000003500000003300000003d0000000af000000000",
            INIT_0D => X"0000000f00000000be0000000c100000006c0000000740000000d10000000be00000010a",
            INIT_0E => X"00000007b00000003e00000005500000002b000000003000000035000000015000000096",
            INIT_0F => X"00000001100000005700000006400000004000000001000000000000000003400000001c",
            INIT_10 => X"00000002f00000002700000003000000004000000001f00000004000000000000000000a",
            INIT_11 => X"000000000000000000000000000000000000000000000000000037000000076000000017",
            INIT_12 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"00000000900000000000000006c00000000000000002b000000000000000000000000000",
            INIT_14 => X"00000000000000006f000000084000000065000000000000000097000000000000000000",
            INIT_15 => X"0000000000000000790000000c40000000620000000b00000000000000000ed000000000",
            INIT_16 => X"000000076000000025000000000000000046000000000000000092000000000000000053",
            INIT_17 => X"0000000240000000000000000a200000000000000000000000000000000001f000000053",
            INIT_18 => X"00000000000000000000000000b000000000000000011000000006000000000000000000",
            INIT_19 => X"00000002400000003200000005c00000001100000001e000000000000000006000000000",
            INIT_1A => X"00000004200000002600000002c00000004600000003400000008a00000005000000009e",
            INIT_1B => X"00000002a00000002200000003600000002200000009700000002e000000059000000036",
            INIT_1C => X"0000000a60000000af00000001700000001f000000000000000027000000035000000031",
            INIT_1D => X"0000000280000000bd00000009a00000001c00000002100000006600000003700000002b",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000010000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"00000001f00000000b000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000018000000030000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00000008600000007e00000004700000000000000001900000002000000002a000000005",
            INIT_24 => X"0000000a30000000ae00000007d0000000d00000000b00000000b30000000a700000008a",
            INIT_25 => X"0000000000000000000000000000000000020000000000000000e10000000bf0000000ac",
            INIT_26 => X"00000004e00000000000000002a00000002f000000004000000000000000000000000000",
            INIT_27 => X"00000000000000003a000000000000000053000000000000000065000000000000000000",
            INIT_28 => X"00000001c000000000000000025000000000000000050000000000000000005000000011",
            INIT_29 => X"00000000000000000000000000000000000000000000000000000000000008b000000000",
            INIT_2A => X"000000012000000000000000000000000004000000000000000022000000000000000000",
            INIT_2B => X"00000000000000000000000000000000000000000000a00000002400000000d000000018",
            INIT_2C => X"00000003300000000000000000000000001200000005000000000400000000000000004d",
            INIT_2D => X"00000000000000009100000000000000000000000003f00000000000000001e000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000025000000000000000000",
            INIT_2F => X"00000000000000000000000007700000000000000000000000000a000000044000000000",
            INIT_30 => X"0000000000000000a6000000005000000042000000067000000000000000000000000000",
            INIT_31 => X"00000000000000000300000000000000000b000000038000000041000000030000000061",
            INIT_32 => X"00000002300000004e000000029000000000000000000000000000000000000000000000",
            INIT_33 => X"00000000000000006f00000002d000000000000000023000000000000000022000000000",
            INIT_34 => X"00000000000000000000000000000000000000000000000000005c00000002e000000005",
            INIT_35 => X"00000000000000000000000000000000002c00000002e00000000300000002b000000000",
            INIT_36 => X"00000000000000005300000005e00000005e000000000000000000000000000000000000",
            INIT_37 => X"0000000b0000000090000000039000000030000000036000000030000000000000000000",
            INIT_38 => X"0000000790000000b400000006a00000006800000004a0000000670000000670000000a2",
            INIT_39 => X"00000000000000004200000006a00000003400000004300000001400000003b000000025",
            INIT_3A => X"00000002700000000000000002c000000022000000000000000024000000000000000034",
            INIT_3B => X"00000000000000000000000000800000001700000003300000000000000003c000000000",
            INIT_3C => X"000000000000000000000000000000000000000000000000000000000000000000000046",
            INIT_3D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"000000000000000000000000000000000017000000000000000000000000000000000000",
            INIT_3F => X"00000000000000000000000000100000002d00000000a000000016000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000800000000000000001e00000004500000002f000000012000000017000000003",
            INIT_41 => X"00000003a000000027000000039000000042000000060000000000000000002000000015",
            INIT_42 => X"00000008800000007e00000007e00000004800000000700000006900000002600000003a",
            INIT_43 => X"0000000ab0000000a900000009e0000000960000000920000000660000000bb000000096",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000001d00000000f00000000d00000001700000001400000000f000000012000000012",
            INIT_01 => X"00000001600000001500000000c00000000600000000100000000000000000a00000001d",
            INIT_02 => X"00000000000000000300000000800000000400000001300000001300000000f000000012",
            INIT_03 => X"00000000b00000000000000000b000000005000000000000000000000000000000000004",
            INIT_04 => X"00000000000000000000000001e00000002000000001b00000001200000001b000000013",
            INIT_05 => X"00000000c000000000000000001000000001000000000000000000000000000000000000",
            INIT_06 => X"00000000000000000000000000000000000000000000000000001100000000b000000019",
            INIT_07 => X"000000003000000003000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"000000000000000000000000004000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000001000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000000000000000000000001c000000004000000000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000000000002000000000000000000000000000000000000",
            INIT_0E => X"00000000b000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00000000000000000b000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"00000000000000000000000000000000000000000000b000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"000000000000000000000000008000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000000000000000000000000000000000b000000000000000000",
            INIT_16 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"000000000000000000000000000000000000000000000000000000000000000000000020",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"00000000000000000000000000000000000000000000000000000000000000000000000b",
            INIT_27 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"000000000000000000000000007000000004000000000000000000000000000000000000",
            INIT_2D => X"000000000000000000000000000000000000000000006000000000000000000000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000001000000000000000000",
            INIT_2F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"00000000a00000003f00000000f00000001a00000000f000000000000000000000000000",
            INIT_31 => X"00000002000000002500000003800000003a000000032000000000000000000000000000",
            INIT_32 => X"00000000000000003a00000002c000000020000000027000000025000000029000000022",
            INIT_33 => X"00000002400000001f00000002000000002000000001d00000001d00000001e000000000",
            INIT_34 => X"00000000e00000002f00000002f00000003000000002100000002800000002200000001e",
            INIT_35 => X"00000003300000002f00000002300000002200000001d00000001900000002100000000f",
            INIT_36 => X"00000002a00000004100000003100000003300000002900000003a000000028000000034",
            INIT_37 => X"00000001a00000002d00000002100000001c00000001700000001f00000002a000000030",
            INIT_38 => X"00000000000000000000000000000000000000000000000000000000000002900000001c",
            INIT_39 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"00000000000000000000000000000000000000000000600000000e000000018000000003",
            INIT_3E => X"00000000000000000100000000200000000000000000000000000000000000000000000b",
            INIT_3F => X"00000001e00000000000000000000000000000000000000000000600000000000000001b",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000001d000000000000000003000000005000000014000000011000000000000000000",
            INIT_41 => X"00000000000000001700000000f000000003000000000000000008000000000000000010",
            INIT_42 => X"00000000300000004400000000000000000400000000600000000a00000001a000000000",
            INIT_43 => X"00000000000000000000000000b00000001700000000200000000000000000b000000000",
            INIT_44 => X"00000000400000000000000003700000000000000000000000000b00000001e00000000c",
            INIT_45 => X"00000000600000000000000000600000001400000002000000000200000001100000000a",
            INIT_46 => X"00000001100000000000000000000000002000000000000000000000000000000000002d",
            INIT_47 => X"00000000000000000800000001100000000400000002800000001d000000000000000008",
            INIT_48 => X"00000000000000000600000000000000001000000000000000000b00000000b000000000",
            INIT_49 => X"00000001200000000900000000e000000027000000000000000024000000018000000000",
            INIT_4A => X"00000000000000000000000000c000000000000000000000000000000000015000000012",
            INIT_4B => X"00000001100000002d00000002800000000d00000005800000000000000002300000002b",
            INIT_4C => X"00000003600000000000000000b00000001f00000002200000001b000000000000000000",
            INIT_4D => X"00000001a00000002100000001f000000007000000000000000045000000012000000023",
            INIT_4E => X"00000003800000002a00000002f00000002f00000002e00000002800000002200000001e",
            INIT_4F => X"00000002a000000024000000024000000025000000027000000000000000025000000033",
            INIT_50 => X"00000005200000002e00000002c00000003a00000002e00000002f00000003600000002f",
            INIT_51 => X"00000002e00000002f00000002a00000002a00000002600000002b000000013000000000",
            INIT_52 => X"00000001900000002c00000003300000002b00000002800000004500000002a00000002f",
            INIT_53 => X"00000002e00000002d00000003100000002e000000024000000023000000028000000019",
            INIT_54 => X"00000000000000000000000000000000000000000000000000001f00000003a000000043",
            INIT_55 => X"00000000000000000000000000a000000002000000000000000000000000000000000000",
            INIT_56 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000000300000001c00000001f000000000000000017000000008000000010",
            INIT_58 => X"00000002b00000000000000000000000000000000000000000000000000002a000000000",
            INIT_59 => X"00000000000000000000000003f00000002d000000042000000000000000000000000011",
            INIT_5A => X"00000002c00000002800000000000000000e000000000000000000000000000000000071",
            INIT_5B => X"00000006c00000000000000002a00000003b00000002600000005a000000000000000025",
            INIT_5C => X"00000003c00000004800000005d000000024000000034000000000000000023000000005",
            INIT_5D => X"00000003100000005900000000000000003e00000001e00000005200000002f000000000",
            INIT_5E => X"00000000000000006000000003e00000006100000002c000000000000000000000000037",
            INIT_5F => X"00000001500000007300000004800000002500000003100000001200000005c000000073",
            INIT_60 => X"00000007500000000000000006a00000004a00000005a000000000000000000000000038",
            INIT_61 => X"00000003100000002800000006500000004d00000003700000000c000000012000000047",
            INIT_62 => X"00000005000000004f00000000000000004600000003800000008b000000006000000000",
            INIT_63 => X"00000002a00000000b000000084000000042000000068000000013000000025000000006",
            INIT_64 => X"00000000400000005b00000001600000002900000000000000002c00000002e000000013",
            INIT_65 => X"00000001800000006400000000000000009f00000003a00000004a000000000000000000",
            INIT_66 => X"00000000000000000000000001700000005a00000003b00000003000000004d000000000",
            INIT_67 => X"00000002000000004c00000009300000000000000009400000003c00000000f00000000c",
            INIT_68 => X"00000003100000002000000002300000001d00000001a000000041000000083000000071",
            INIT_69 => X"00000003c00000003a0000000730000000d800000000000000004e00000002b00000001d",
            INIT_6A => X"00000005f00000004f00000004000000003e00000003c00000003d000000038000000047",
            INIT_6B => X"00000003e00000003f0000000490000000420000000af000000082000000000000000012",
            INIT_6C => X"00000004500000006a00000003d000000048000000050000000040000000038000000039",
            INIT_6D => X"00000004100000003c00000004200000004d00000003900000005a0000000cb000000000",
            INIT_6E => X"00000003e00000004b00000007600000007b00000003800000004e00000004d000000048",
            INIT_6F => X"000000055000000044000000038000000044000000043000000035000000048000000054",
            INIT_70 => X"00000000800000000800000000000000000000000008000000006f00000001a00000003a",
            INIT_71 => X"000000000000000000000000000000000004000000000000000005000000003000000006",
            INIT_72 => X"00000000a00000000700000000c00000000a000000007000000005000000006000000000",
            INIT_73 => X"00000000000000000600000002400000000000000000000000000000000001a000000049",
            INIT_74 => X"000000000000000007000000004000000004000000000000000000000000004000000000",
            INIT_75 => X"00000000000000001700000000700000001500000001a00000000d000000000000000000",
            INIT_76 => X"00000003700000000000000000d000000005000000009000000025000000028000000000",
            INIT_77 => X"00000000000000000100000000000000000000000000000000000000000000500000001b",
            INIT_78 => X"00000000e00000000600000005600000008000000000b00000001300000005a000000026",
            INIT_79 => X"00000000000000000000000001800000000f000000025000000025000000000000000000",
            INIT_7A => X"00000001f00000001a00000002a000000000000000000000000000000000008000000000",
            INIT_7B => X"00000000700000000600000002700000000900000000000000000000000000000000003a",
            INIT_7C => X"00000001100000000900000000a000000000000000021000000000000000004000000000",
            INIT_7D => X"00000001c00000000700000001500000001d00000001700000000000000000b000000000",
            INIT_7E => X"000000000000000000000000000000000000000000000000000016000000019000000010",
            INIT_7F => X"00000000400000000b000000004000000010000000000000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000000000000000000400000001a00000000000000000000000001c",
            INIT_01 => X"00000001100000000400000000900000000000000000000000002f000000003000000000",
            INIT_02 => X"00000001b00000000000000000000000000000000000c00000004a000000000000000000",
            INIT_03 => X"00000008500000009c00000004600000000000000000000000000000000000000000001f",
            INIT_04 => X"00000000000000001b000000041000000020000000000000000000000000000000000028",
            INIT_05 => X"00000000000000000000000000000000004600000000f000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000002",
            INIT_08 => X"000000000000000011000000000000000000000000012000000007000000004000000000",
            INIT_09 => X"000000000000000000000000008000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000000000000000000000013000000000000000000000000000000000000",
            INIT_0B => X"000000013000000014000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000a20000000a300000009d000000000000000022000000028000000000000000004",
            INIT_0D => X"00000007c0000000940000000ad0000000b70000000ac00000009d0000000a40000000a5",
            INIT_0E => X"0000000ac0000000a80000000ad0000000a200000009200000009200000008400000007c",
            INIT_0F => X"00000003e00000002e00000003a00000007a0000000a00000000a900000008c0000000a0",
            INIT_10 => X"0000000af0000000b00000000ac00000006a00000008900000008b00000006e00000004e",
            INIT_11 => X"00000002700000000a00000001e00000000700000002d00000004800000007300000008e",
            INIT_12 => X"0000000590000000a20000000aa0000000a400000002b00000004d00000006700000003a",
            INIT_13 => X"00000002500000001b00000002d00000003300000000c00000001500000002700000004d",
            INIT_14 => X"00000004300000004700000004e00000006000000009400000001f00000001700000003a",
            INIT_15 => X"00000002f00000001c00000001700000003900000003100000000000000001f00000002f",
            INIT_16 => X"00000003100000004500000003b00000002500000009900000008e000000012000000016",
            INIT_17 => X"00000000e00000001700000001200000001000000002a00000003e00000000000000002d",
            INIT_18 => X"00000002f00000002d00000003e00000003200000002f00000009f00000006200000002a",
            INIT_19 => X"00000000a00000001c00000002600000000e000000010000000028000000032000000000",
            INIT_1A => X"00000001e00000002900000002700000002e00000002600000003700000006200000002c",
            INIT_1B => X"00000002b00000000000000001400000004100000002200000000900000002d00000002f",
            INIT_1C => X"00000004200000005400000000d00000003000000003600000002200000005500000000e",
            INIT_1D => X"00000000000000002400000000500000001000000007900000002d00000000f000000026",
            INIT_1E => X"00000000600000001d00000003400000002d000000028000000008000000020000000035",
            INIT_1F => X"00000001700000000000000002300000001500000000000000008a000000062000000009",
            INIT_20 => X"00000000000000000000000000000000000000000000600000000000000000000000001a",
            INIT_21 => X"00000000000000003a000000006000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000034000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"000000023000000022000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"00000001700000001d00000002400000002600000002700000001e000000020000000025",
            INIT_2A => X"00000002a00000002c00000002300000001800000001e00000002400000002600000001a",
            INIT_2B => X"00000000000000001d00000000e00000001d00000000f00000002000000002800000001f",
            INIT_2C => X"00000002100000002800000003900000000600000001c00000002b000000020000000009",
            INIT_2D => X"00000000000000000000000002e00000002100000000600000000000000001a000000027",
            INIT_2E => X"00000000f00000002900000002100000004c00000000000000002c000000025000000000",
            INIT_2F => X"000000000000000009000000000000000048000000000000000000000000004000000024",
            INIT_30 => X"00000000b00000000900000005600000000200000002600000000000000004a000000000",
            INIT_31 => X"000000000000000006000000000000000000000000059000000000000000000000000000",
            INIT_32 => X"00000000000000001300000003e00000001a00000000000000000a00000000000000002b",
            INIT_33 => X"00000000000000000000000001400000000000000000000000008e000000000000000000",
            INIT_34 => X"00000000000000000000000003600000003f000000000000000020000000000000000000",
            INIT_35 => X"00000000000000000000000001500000000a000000000000000000000000066000000000",
            INIT_36 => X"000000000000000000000000000000000042000000038000000000000000000000000000",
            INIT_37 => X"00000000200000000000000000800000000f00000001d000000000000000000000000042",
            INIT_38 => X"000000000000000024000000000000000000000000011000000004000000021000000000",
            INIT_39 => X"00000000000000000000000000000000002300000002100000001e000000000000000025",
            INIT_3A => X"00000000000000000500000000200000000000000002700000000f00000000000000002c",
            INIT_3B => X"00000007800000000000000000400000002a00000001400000003400000003000000000c",
            INIT_3C => X"000000009000000008000000000000000000000000000000000022000000000000000000",
            INIT_3D => X"000000000000000040000000000000000014000000020000000000000000000000000001",
            INIT_3E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"000000000000000000000000000000000043000000021000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_41 => X"00000000000000000000000000000000000000000005d000000000000000000000000000",
            INIT_42 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"00000002b000000000000000000000000004000000000000000000000000000000000000",
            INIT_45 => X"00000003700000003a00000003000000002900000002f00000002c00000002d000000030",
            INIT_46 => X"00000003500000002c00000003100000002a00000002700000002600000002500000002a",
            INIT_47 => X"00000000c00000003b00000002900000001f00000000000000002d00000002e000000030",
            INIT_48 => X"00000002e00000002900000001c00000002500000001f00000000e000000000000000000",
            INIT_49 => X"00000000000000000000000000000000002300000002d00000003b000000032000000035",
            INIT_4A => X"00000003200000002300000000000000000000000001a000000004000000000000000000",
            INIT_4B => X"000000000000000000000000000000000000000000000000000000000000019000000025",
            INIT_4C => X"000000000000000018000000012000000000000000000000000011000000000000000006",
            INIT_4D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_4E => X"00000000300000000300000003800000000b000000000000000000000000005000000000",
            INIT_4F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_50 => X"00000000000000000000000000700000003a000000007000000000000000000000000000",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"000000000000000000000000000000000002000000000000000000000000000000000000",
            INIT_53 => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"00000000000000000000000000500000001a000000000000000000000000000000000000",
            INIT_55 => X"00000000000000000000000000800000000000000000400000001800000000300000000f",
            INIT_56 => X"000000008000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000000000000000000000001f00000000000000000000000000a000000011",
            INIT_58 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_59 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_60 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_61 => X"00000000b00000000c00000000c00000000400000000800000000800000001100000000a",
            INIT_62 => X"00000000000000000600000000800000001100000002300000002d00000002100000000b",
            INIT_63 => X"00000004200000002300000000500000000000000000800000000c00000000a00000000a",
            INIT_64 => X"00000003300000003500000000a00000001700000000a000000000000000000000000000",
            INIT_65 => X"000000000000000000000000009000000016000000037000000005000000008000000005",
            INIT_66 => X"00000000500000000000000000000000000c00000000e000000000000000000000000000",
            INIT_67 => X"00000000400000001a000000000000000002000000000000000000000000008000000008",
            INIT_68 => X"00000000e00000000200000000000000000100000000e000000000000000006000000010",
            INIT_69 => X"000000000000000000000000000000000007000000000000000009000000000000000000",
            INIT_6A => X"00000003e00000000300000000600000000000000000f000000000000000000000000000",
            INIT_6B => X"000000007000000015000000014000000000000000000000000000000000000000000028",
            INIT_6C => X"00000000000000001200000001800000001c000000000000000000000000000000000000",
            INIT_6D => X"000000000000000000000000000000000011000000000000000011000000000000000031",
            INIT_6E => X"000000035000000035000000002000000000000000000000000000000000000000000000",
            INIT_6F => X"00000000000000000e00000000500000000000000000900000000000000000e000000021",
            INIT_70 => X"000000000000000000000000026000000000000000000000000000000000001000000000",
            INIT_71 => X"00000000c000000000000000000000000000000000030000000026000000000000000000",
            INIT_72 => X"000000000000000000000000000000000009000000023000000000000000004000000000",
            INIT_73 => X"00000000000000000300000001800000000000000000000000001100000003600000004e",
            INIT_74 => X"00000000000000003700000005100000001e000000000000000000000000000000000007",
            INIT_75 => X"00000000c00000002100000003500000000a000000005000000000000000000000000000",
            INIT_76 => X"000000000000000000000000003000000005000000004000000028000000056000000000",
            INIT_77 => X"000000018000000000000000016000000000000000000000000000000000000000000000",
            INIT_78 => X"00000000000000000000000000000000000000000000000000000000000000000000003f",
            INIT_79 => X"00000000b00000004f000000018000000000000000000000000000000000000000000000",
            INIT_7A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"000000003000000000000000022000000000000000000000000000000000014000000000",
            INIT_7C => X"000000000000000000000000000000000000000000000000000000000000000000000012",
            INIT_7D => X"00000000800000001500000000900000000e00000000a00000001300000000d000000000",
            INIT_7E => X"00000000200000000600000001300000001b00000002200000001c00000000c000000006",
            INIT_7F => X"00000001a00000000f00000003600000000f00000000d00000000900000000b000000008",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000002600000000a00000001a00000002100000002400000003500000003400000001f",
            INIT_01 => X"00000002000000002800000003300000005100000000800000000a00000000b000000024",
            INIT_02 => X"00000001400000003300000001a00000001900000002b00000004b00000005e000000053",
            INIT_03 => X"00000005b00000003600000002f00000004500000002e00000001900000001200000000e",
            INIT_04 => X"00000001500000005e00000007100000001b00000001500000003b00000004200000005d",
            INIT_05 => X"00000006700000003b00000003300000003b00000006400000004400000007e000000035",
            INIT_06 => X"00000001300000002800000009e00000007f000000001000000025000000039000000038",
            INIT_07 => X"00000005000000007f00000005b00000002e00000004b00000007d00000007e0000000bd",
            INIT_08 => X"00000005a00000001700000004300000009400000007a00000001500000003c000000047",
            INIT_09 => X"00000003b00000004600000008100000007800000004e0000000650000000a8000000075",
            INIT_0A => X"0000000a50000000390000000390000000400000000a500000008e00000003300000004c",
            INIT_0B => X"00000004b00000004800000004c00000007800000005f00000005000000006a000000085",
            INIT_0C => X"0000000590000000660000000380000000730000000660000000b80000000b0000000026",
            INIT_0D => X"00000000e00000002b00000002c00000004100000006500000003300000005100000004e",
            INIT_0E => X"00000007900000005f00000003300000006f0000000750000000860000000b30000000c0",
            INIT_0F => X"0000000c700000002700000002700000002f00000002500000004000000005a000000042",
            INIT_10 => X"0000000790000000b900000009100000006500000009e0000000a200000008b0000000ab",
            INIT_11 => X"0000000cb0000000c100000006800000007100000005a00000004700000004000000003c",
            INIT_12 => X"00000006f00000007c00000008500000008a0000000a50000000e70000000c900000009d",
            INIT_13 => X"0000000b10000000a100000008c00000008e00000008a000000088000000080000000078",
            INIT_14 => X"00000008400000007600000007100000007000000007500000007a0000000af0000000e5",
            INIT_15 => X"0000000ef0000000a600000008500000009d0000000a300000009a00000009500000008c",
            INIT_16 => X"00000009b00000008c000000082000000077000000073000000079000000080000000088",
            INIT_17 => X"0000000740000000a700000007f00000008f0000000970000000ab0000000a3000000093",
            INIT_18 => X"00000009a00000008500000008600000008800000007c00000007e00000008900000007f",
            INIT_19 => X"00000000000000000000000000000000000000000000000000000000000008d0000000af",
            INIT_1A => X"00000000000000000000000000b00000001c000000013000000000000000000000000000",
            INIT_1B => X"00000000b000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000000000000000000001e000000014000000000000000000000000033000000014",
            INIT_1D => X"00000002800000001c00000003e00000000000000000000000000000000000000000003f",
            INIT_1E => X"00000001900000000000000001e000000007000000000000000000000000000000000000",
            INIT_1F => X"00000000000000000000000000000000000000000000c000000000000000000000000000",
            INIT_20 => X"00000000000000000000000000000000000e00000000600000001a000000000000000000",
            INIT_21 => X"00000000000000001d00000000400000000f000000000000000000000000000000000009",
            INIT_22 => X"00000000200000000000000002f000000025000000000000000000000000008000000000",
            INIT_23 => X"00000002600000000000000000600000000000000000000000000000000000300000004f",
            INIT_24 => X"00000000d00000000d00000001800000000000000000000000000000000000000000001c",
            INIT_25 => X"000000008000000018000000000000000009000000000000000005000000000000000000",
            INIT_26 => X"000000000000000000000000007000000000000000002000000000000000000000000000",
            INIT_27 => X"00000000000000001c00000000000000000000000000000000001e00000003d000000000",
            INIT_28 => X"00000003200000002200000000000000002e000000000000000000000000000000000010",
            INIT_29 => X"00000000000000000d00000003a000000026000000036000000000000000000000000003",
            INIT_2A => X"00000000000000001500000001200000000000000000a000000000000000000000000000",
            INIT_2B => X"00000000800000000000000000000000000100000003100000001f00000002e000000000",
            INIT_2C => X"000000019000000000000000000000000000000000000000000022000000000000000000",
            INIT_2D => X"00000004100000002100000001600000000000000000000000000000000000d00000000f",
            INIT_2E => X"00000000c00000003700000003f0000000520000000a2000000000000000000000000000",
            INIT_2F => X"00000003600000000d000000000000000000000000000000000002000000000000000006",
            INIT_30 => X"000000000000000000000000000000000002000000000000000056000000041000000000",
            INIT_31 => X"000000025000000000000000002000000000000000000000000003000000000000000000",
            INIT_32 => X"00000000700000000000000000000000000100000000000000000000000000600000003e",
            INIT_33 => X"00000003600000001800000000000000000c00000004200000000000000000000000000a",
            INIT_34 => X"000000000000000005000000000000000000000000000000000009000000013000000024",
            INIT_35 => X"000000000000000000000000000000000000000000000000000004000000000000000000",
            INIT_36 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000000000000000000000000000000000000000000000000001f000000004000000000",
            INIT_3B => X"00000000000000000000000000000000000000000000000000000000000000b000000000",
            INIT_3C => X"00000000000000000100000000200000000000000000700000000000000002d000000005",
            INIT_3D => X"000000002000000000000000000000000000000000000000000000000000000000000002",
            INIT_3E => X"00000000600000000100000001000000000000000000300000000000000000000000003b",
            INIT_3F => X"00000005d00000000000000000000000000000000000000000002c000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000000000000000000000000000000000e000000000000000000",
            INIT_41 => X"00000000000000005200000000000000000000000000000000000f00000001c000000000",
            INIT_42 => X"000000000000000000000000000000000004000000000000000013000000012000000000",
            INIT_43 => X"00000000000000000000000002d00000000000000000500000000000000001700000000c",
            INIT_44 => X"00000000000000001100000000000000001600000000000000000000000000300000001d",
            INIT_45 => X"00000001b000000000000000011000000000000000008000000000000000000000000012",
            INIT_46 => X"00000000300000000000000003b000000000000000019000000009000000000000000000",
            INIT_47 => X"000000000000000012000000012000000000000000000000000005000000000000000010",
            INIT_48 => X"00000002d00000000000000000000000005800000000000000000d000000033000000000",
            INIT_49 => X"00000001d00000002c00000003e000000033000000028000000002000000000000000004",
            INIT_4A => X"00000004e00000004e00000002e00000000000000003b000000000000000036000000070",
            INIT_4B => X"00000005a00000005300000005a00000005800000005600000004f000000049000000044",
            INIT_4C => X"00000004c00000004a00000004800000004900000000000000000800000004800000006f",
            INIT_4D => X"00000006000000005a00000005e00000005d00000005700000005b00000005b000000054",
            INIT_4E => X"00000005700000005300000004d00000004500000005000000003100000000000000008a",
            INIT_4F => X"00000006700000006700000005000000005e000000074000000061000000064000000061",
            INIT_50 => X"00000005200000005200000005200000004900000005500000005f000000049000000041",
            INIT_51 => X"00000002e00000003300000002e00000002f00000004500000005300000006b00000005e",
            INIT_52 => X"00000002700000001c00000002300000002b00000002f00000003100000002f00000002f",
            INIT_53 => X"00000003400000002d000000035000000032000000032000000024000000027000000026",
            INIT_54 => X"000000024000000015000000013000000021000000004000000025000000013000000055",
            INIT_55 => X"00000002c00000003800000002e00000003400000003b00000001a00000002800000002d",
            INIT_56 => X"00000002700000000400000000b00000000a00000004f00000001a000000000000000000",
            INIT_57 => X"00000001a00000002300000002500000003600000002c000000079000000000000000039",
            INIT_58 => X"00000005300000000e000000000000000012000000000000000053000000018000000008",
            INIT_59 => X"00000000000000000000000001a00000002c00000004900000000a000000063000000000",
            INIT_5A => X"00000000000000003900000000000000001e00000000000000000b00000005f000000008",
            INIT_5B => X"00000000000000000000000000000000000000000004900000002e000000000000000038",
            INIT_5C => X"00000001500000000000000000d0000000040000000230000000000000000000000000bf",
            INIT_5D => X"0000000a400000000000000000000000000a00000005000000006100000000000000000c",
            INIT_5E => X"00000000100000000000000000000000000d00000002700000001e000000000000000000",
            INIT_5F => X"00000000000000007c000000000000000008000000000000000068000000045000000000",
            INIT_60 => X"00000003c00000000000000001700000000000000001200000002200000002a000000000",
            INIT_61 => X"00000000000000002200000000600000003100000001c000000000000000003000000011",
            INIT_62 => X"00000000000000004a00000000000000001800000000a00000004400000003a000000026",
            INIT_63 => X"00000004800000000500000000000000000a00000001700000000e00000002a000000019",
            INIT_64 => X"00000000b0000000000000000a300000000000000001100000005100000001c000000056",
            INIT_65 => X"00000001e00000002d000000028000000014000000000000000000000000000000000056",
            INIT_66 => X"000000000000000000000000000000000098000000000000000028000000040000000000",
            INIT_67 => X"00000000000000001100000000e000000010000000010000000009000000000000000000",
            INIT_68 => X"00000000a00000000500000000900000000000000001f000000048000000041000000003",
            INIT_69 => X"000000000000000017000000008000000010000000017000000014000000010000000008",
            INIT_6A => X"00000000d000000009000000000000000011000000000000000000000000074000000010",
            INIT_6B => X"00000000d00000000000000000000000002600000000000000000900000000d000000010",
            INIT_6C => X"00000001000000001800000000900000000c000000016000000000000000000000000019",
            INIT_6D => X"00000000000000000000000000000000000000000000300000003100000000b000000000",
            INIT_6E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"000000000000000001000000000000000000000000000000000000000000004000000000",
            INIT_71 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"000000000000000000000000000000000000000000012000000004000000000000000000",
            INIT_74 => X"000000000000000000000000000000000000000000000000000000000000000000000005",
            INIT_75 => X"000000000000000008000000038000000000000000000000000027000000001000000000",
            INIT_76 => X"000000000000000004000000000000000000000000000000000000000000000000000000",
            INIT_77 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"00000000000000000f000000000000000000000000000000000000000000014000000000",
            INIT_79 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7F => X"000000000000000000000000000000000000000000012000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000003000000001e000000000000000000000000000000000000000000000000000011",
            INIT_01 => X"00000000100000002400000001c00000000000000000000000000000000000000000003e",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"000000002000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"00000003600000002f000000000000000000000000013000000000000000000000000000",
            INIT_0A => X"00000002b00000003600000003b000000039000000030000000035000000035000000033",
            INIT_0B => X"000000036000000038000000030000000027000000028000000025000000020000000020",
            INIT_0C => X"00000000200000000200000002300000003900000003b000000042000000033000000039",
            INIT_0D => X"000000039000000036000000013000000030000000027000000011000000006000000006",
            INIT_0E => X"00000000000000000400000000000000000000000000000000001e00000003d000000037",
            INIT_0F => X"000000040000000037000000032000000000000000015000000017000000000000000001",
            INIT_10 => X"00000000000000000000000001700000000000000000000000000000000001e000000012",
            INIT_11 => X"000000033000000044000000010000000034000000012000000000000000000000000000",
            INIT_12 => X"000000000000000000000000009000000010000000000000000000000000006000000025",
            INIT_13 => X"00000002b00000000d00000000b00000003800000003100000000f000000000000000000",
            INIT_14 => X"00000000000000000000000000000000000000000002a00000000000000000b000000008",
            INIT_15 => X"00000001700000002e00000001100000000e00000003d00000000700000002c000000000",
            INIT_16 => X"000000004000000000000000000000000000000000000000000013000000003000000008",
            INIT_17 => X"00000000000000000a00000002e000000022000000000000000025000000000000000019",
            INIT_18 => X"00000001100000001500000000000000000200000000000000000000000000f000000013",
            INIT_19 => X"00000002c00000000000000000c00000000000000000000000001c000000000000000009",
            INIT_1A => X"00000001400000000e000000016000000021000000000000000000000000000000000000",
            INIT_1B => X"00000000000000000500000000600000001f000000000000000000000000003000000000",
            INIT_1C => X"00000000000000001500000001400000000500000002800000001e000000000000000000",
            INIT_1D => X"00000000000000000000000000000000000000000001700000001100000000600000002c",
            INIT_1E => X"00000003c000000032000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"00000000000000000000000004f000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000028000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000027000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"00000002f00000002b00000002800000002000000002c000000029000000023000000022",
            INIT_27 => X"00000002400000002800000002e00000002900000001e00000001d000000029000000032",
            INIT_28 => X"00000000500000002e00000003000000004300000000e00000002100000002c000000024",
            INIT_29 => X"00000002800000000200000003f00000002c000000015000000019000000029000000021",
            INIT_2A => X"00000001c00000000000000001000000002400000002800000002000000002a000000029",
            INIT_2B => X"00000002400000002e00000000000000005c00000000b00000001a00000003200000000c",
            INIT_2C => X"00000001800000002300000000000000001900000002500000002700000000c000000038",
            INIT_2D => X"00000001300000000000000004100000000500000002c00000000000000002600000001a",
            INIT_2E => X"00000001200000003800000001400000000000000002500000002400000002a000000027",
            INIT_2F => X"00000000000000000000000002f00000003700000000000000002400000001a00000002b",
            INIT_30 => X"00000001d00000000700000002a000000034000000000000000043000000025000000016",
            INIT_31 => X"00000001500000000000000000000000004600000000e000000024000000011000000020",
            INIT_32 => X"00000002500000000000000000d00000002800000002b00000000000000003900000001c",
            INIT_33 => X"00000000b00000003500000000000000000200000003400000002900000000600000000b",
            INIT_34 => X"00000000d00000000d00000001100000000000000002c000000011000000000000000018",
            INIT_35 => X"00000000000000001b00000000e00000000000000003400000000000000003f000000000",
            INIT_36 => X"00000000000000000000000001a00000000000000000000000002b00000000500000003f",
            INIT_37 => X"00000000f00000002c00000001d00000000000000001400000002a000000000000000039",
            INIT_38 => X"00000003800000000000000000000000002f00000001000000000000000000f00000002f",
            INIT_39 => X"00000000f00000002b000000027000000005000000000000000032000000029000000000",
            INIT_3A => X"000000000000000000000000000000000000000000021000000011000000008000000008",
            INIT_3B => X"000000000000000003000000007000000000000000000000000000000000005000000052",
            INIT_3C => X"00000002e000000022000000000000000000000000014000000003000000000000000000",
            INIT_3D => X"000000002000000000000000000000000001000000005000000002000000006000000000",
            INIT_3E => X"00000000000000000d000000022000000000000000000000000009000000000000000000",
            INIT_3F => X"000000000000000000000000000000000001000000000000000000000000006000000009",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000000000000000000014000000004000000000000000000000000013000000015",
            INIT_41 => X"00000001a00000001200000000000000000000000000c000000000000000000000000000",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000001d00000000f00000000d00000001700000001400000000f000000012000000012",
            INIT_01 => X"00000001600000001500000000c00000000600000000100000000000000000a00000001d",
            INIT_02 => X"00000000000000000300000000800000000400000001300000001300000000f000000012",
            INIT_03 => X"00000000b00000000000000000b000000005000000000000000000000000000000000004",
            INIT_04 => X"00000000000000000000000001e00000002000000001b00000001200000001b000000013",
            INIT_05 => X"00000000c000000000000000001000000001000000000000000000000000000000000000",
            INIT_06 => X"00000000000000000000000000000000000000000000000000001100000000b000000019",
            INIT_07 => X"000000003000000003000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"000000000000000000000000004000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000001000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000000000000000000000001c000000004000000000000000000000000000000000000",
            INIT_0C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"000000000000000000000000000000000002000000000000000000000000000000000000",
            INIT_0E => X"00000000b000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"00000000000000000b000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"00000000000000000000000000000000000000000000b000000000000000000000000000",
            INIT_11 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"000000000000000000000000008000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000000000000000000000000000000000b000000000000000000",
            INIT_16 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_17 => X"000000000000000000000000000000000000000000000000000000000000000000000020",
            INIT_18 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_19 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"00000000000000000000000000000000000000000000000000000000000000000000000b",
            INIT_27 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_2B => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_2C => X"000000000000000000000000007000000004000000000000000000000000000000000000",
            INIT_2D => X"000000000000000000000000000000000000000000006000000000000000000000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000001000000000000000000",
            INIT_2F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_30 => X"00000000a00000003f00000000f00000001a00000000f000000000000000000000000000",
            INIT_31 => X"00000002000000002500000003800000003a000000032000000000000000000000000000",
            INIT_32 => X"00000000000000003a00000002c000000020000000027000000025000000029000000022",
            INIT_33 => X"00000002400000001f00000002000000002000000001d00000001d00000001e000000000",
            INIT_34 => X"00000000e00000002f00000002f00000003000000002100000002800000002200000001e",
            INIT_35 => X"00000003300000002f00000002300000002200000001d00000001900000002100000000f",
            INIT_36 => X"00000002a00000004100000003100000003300000002900000003a000000028000000034",
            INIT_37 => X"00000001a00000002d00000002100000001c00000001700000001f00000002a000000030",
            INIT_38 => X"00000000000000000000000000000000000000000000000000000000000002900000001c",
            INIT_39 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"00000000000000000000000000000000000000000000600000000e000000018000000003",
            INIT_3E => X"00000000000000000100000000200000000000000000000000000000000000000000000b",
            INIT_3F => X"00000001e00000000000000000000000000000000000000000000600000000000000001b",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000001d000000000000000003000000005000000014000000011000000000000000000",
            INIT_41 => X"00000000000000001700000000f000000003000000000000000008000000000000000010",
            INIT_42 => X"00000000300000004400000000000000000400000000600000000a00000001a000000000",
            INIT_43 => X"00000000000000000000000000b00000001700000000200000000000000000b000000000",
            INIT_44 => X"00000000400000000000000003700000000000000000000000000b00000001e00000000c",
            INIT_45 => X"00000000600000000000000000600000001400000002000000000200000001100000000a",
            INIT_46 => X"00000001100000000000000000000000002000000000000000000000000000000000002d",
            INIT_47 => X"00000000000000000800000001100000000400000002800000001d000000000000000008",
            INIT_48 => X"00000000000000000600000000000000001000000000000000000b00000000b000000000",
            INIT_49 => X"00000001200000000900000000e000000027000000000000000024000000018000000000",
            INIT_4A => X"00000000000000000000000000c000000000000000000000000000000000015000000012",
            INIT_4B => X"00000001100000002d00000002800000000d00000005800000000000000002300000002b",
            INIT_4C => X"00000003600000000000000000b00000001f00000002200000001b000000000000000000",
            INIT_4D => X"00000001a00000002100000001f000000007000000000000000045000000012000000023",
            INIT_4E => X"00000003800000002a00000002f00000002f00000002e00000002800000002200000001e",
            INIT_4F => X"00000002a000000024000000024000000025000000027000000000000000025000000033",
            INIT_50 => X"00000005200000002e00000002c00000003a00000002e00000002f00000003600000002f",
            INIT_51 => X"00000002e00000002f00000002a00000002a00000002600000002b000000013000000000",
            INIT_52 => X"00000001900000002c00000003300000002b00000002800000004500000002a00000002f",
            INIT_53 => X"00000002e00000002d00000003100000002e000000024000000023000000028000000019",
            INIT_54 => X"00000000000000000000000000000000000000000000000000001f00000003a000000043",
            INIT_55 => X"00000000000000000000000000a000000002000000000000000000000000000000000000",
            INIT_56 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000000300000001c00000001f000000000000000017000000008000000010",
            INIT_58 => X"00000002b00000000000000000000000000000000000000000000000000002a000000000",
            INIT_59 => X"00000000000000000000000003f00000002d000000042000000000000000000000000011",
            INIT_5A => X"00000002c00000002800000000000000000e000000000000000000000000000000000071",
            INIT_5B => X"00000006c00000000000000002a00000003b00000002600000005a000000000000000025",
            INIT_5C => X"00000003c00000004800000005d000000024000000034000000000000000023000000005",
            INIT_5D => X"00000003100000005900000000000000003e00000001e00000005200000002f000000000",
            INIT_5E => X"00000000000000006000000003e00000006100000002c000000000000000000000000037",
            INIT_5F => X"00000001500000007300000004800000002500000003100000001200000005c000000073",
            INIT_60 => X"00000007500000000000000006a00000004a00000005a000000000000000000000000038",
            INIT_61 => X"00000003100000002800000006500000004d00000003700000000c000000012000000047",
            INIT_62 => X"00000005000000004f00000000000000004600000003800000008b000000006000000000",
            INIT_63 => X"00000002a00000000b000000084000000042000000068000000013000000025000000006",
            INIT_64 => X"00000000400000005b00000001600000002900000000000000002c00000002e000000013",
            INIT_65 => X"00000001800000006400000000000000009f00000003a00000004a000000000000000000",
            INIT_66 => X"00000000000000000000000001700000005a00000003b00000003000000004d000000000",
            INIT_67 => X"00000002000000004c00000009300000000000000009400000003c00000000f00000000c",
            INIT_68 => X"00000003100000002000000002300000001d00000001a000000041000000083000000071",
            INIT_69 => X"00000003c00000003a0000000730000000d800000000000000004e00000002b00000001d",
            INIT_6A => X"00000005f00000004f00000004000000003e00000003c00000003d000000038000000047",
            INIT_6B => X"00000003e00000003f0000000490000000420000000af000000082000000000000000012",
            INIT_6C => X"00000004500000006a00000003d000000048000000050000000040000000038000000039",
            INIT_6D => X"00000004100000003c00000004200000004d00000003900000005a0000000cb000000000",
            INIT_6E => X"00000003e00000004b00000007600000007b00000003800000004e00000004d000000048",
            INIT_6F => X"000000055000000044000000038000000044000000043000000035000000048000000054",
            INIT_70 => X"00000000800000000800000000000000000000000008000000006f00000001a00000003a",
            INIT_71 => X"000000000000000000000000000000000004000000000000000005000000003000000006",
            INIT_72 => X"00000000a00000000700000000c00000000a000000007000000005000000006000000000",
            INIT_73 => X"00000000000000000600000002400000000000000000000000000000000001a000000049",
            INIT_74 => X"000000000000000007000000004000000004000000000000000000000000004000000000",
            INIT_75 => X"00000000000000001700000000700000001500000001a00000000d000000000000000000",
            INIT_76 => X"00000003700000000000000000d000000005000000009000000025000000028000000000",
            INIT_77 => X"00000000000000000100000000000000000000000000000000000000000000500000001b",
            INIT_78 => X"00000000e00000000600000005600000008000000000b00000001300000005a000000026",
            INIT_79 => X"00000000000000000000000001800000000f000000025000000025000000000000000000",
            INIT_7A => X"00000001f00000001a00000002a000000000000000000000000000000000008000000000",
            INIT_7B => X"00000000700000000600000002700000000900000000000000000000000000000000003a",
            INIT_7C => X"00000001100000000900000000a000000000000000021000000000000000004000000000",
            INIT_7D => X"00000001c00000000700000001500000001d00000001700000000000000000b000000000",
            INIT_7E => X"000000000000000000000000000000000000000000000000000016000000019000000010",
            INIT_7F => X"00000000400000000b000000004000000010000000000000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000000000000000000000000000000000400000001a00000000000000000000000001c",
            INIT_01 => X"00000001100000000400000000900000000000000000000000002f000000003000000000",
            INIT_02 => X"00000001b00000000000000000000000000000000000c00000004a000000000000000000",
            INIT_03 => X"00000008500000009c00000004600000000000000000000000000000000000000000001f",
            INIT_04 => X"00000000000000001b000000041000000020000000000000000000000000000000000028",
            INIT_05 => X"00000000000000000000000000000000004600000000f000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000002",
            INIT_08 => X"000000000000000011000000000000000000000000012000000007000000004000000000",
            INIT_09 => X"000000000000000000000000008000000000000000000000000000000000000000000000",
            INIT_0A => X"000000000000000000000000000000000013000000000000000000000000000000000000",
            INIT_0B => X"000000013000000014000000000000000000000000000000000000000000000000000000",
            INIT_0C => X"0000000a20000000a300000009d000000000000000022000000028000000000000000004",
            INIT_0D => X"00000007c0000000940000000ad0000000b70000000ac00000009d0000000a40000000a5",
            INIT_0E => X"0000000ac0000000a80000000ad0000000a200000009200000009200000008400000007c",
            INIT_0F => X"00000003e00000002e00000003a00000007a0000000a00000000a900000008c0000000a0",
            INIT_10 => X"0000000af0000000b00000000ac00000006a00000008900000008b00000006e00000004e",
            INIT_11 => X"00000002700000000a00000001e00000000700000002d00000004800000007300000008e",
            INIT_12 => X"0000000590000000a20000000aa0000000a400000002b00000004d00000006700000003a",
            INIT_13 => X"00000002500000001b00000002d00000003300000000c00000001500000002700000004d",
            INIT_14 => X"00000004300000004700000004e00000006000000009400000001f00000001700000003a",
            INIT_15 => X"00000002f00000001c00000001700000003900000003100000000000000001f00000002f",
            INIT_16 => X"00000003100000004500000003b00000002500000009900000008e000000012000000016",
            INIT_17 => X"00000000e00000001700000001200000001000000002a00000003e00000000000000002d",
            INIT_18 => X"00000002f00000002d00000003e00000003200000002f00000009f00000006200000002a",
            INIT_19 => X"00000000a00000001c00000002600000000e000000010000000028000000032000000000",
            INIT_1A => X"00000001e00000002900000002700000002e00000002600000003700000006200000002c",
            INIT_1B => X"00000002b00000000000000001400000004100000002200000000900000002d00000002f",
            INIT_1C => X"00000004200000005400000000d00000003000000003600000002200000005500000000e",
            INIT_1D => X"00000000000000002400000000500000001000000007900000002d00000000f000000026",
            INIT_1E => X"00000000600000001d00000003400000002d000000028000000008000000020000000035",
            INIT_1F => X"00000001700000000000000002300000001500000000000000008a000000062000000009",
            INIT_20 => X"00000000000000000000000000000000000000000000600000000000000000000000001a",
            INIT_21 => X"00000000000000003a000000006000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000034000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_27 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_28 => X"000000023000000022000000000000000000000000000000000000000000000000000000",
            INIT_29 => X"00000001700000001d00000002400000002600000002700000001e000000020000000025",
            INIT_2A => X"00000002a00000002c00000002300000001800000001e00000002400000002600000001a",
            INIT_2B => X"00000000000000001d00000000e00000001d00000000f00000002000000002800000001f",
            INIT_2C => X"00000002100000002800000003900000000600000001c00000002b000000020000000009",
            INIT_2D => X"00000000000000000000000002e00000002100000000600000000000000001a000000027",
            INIT_2E => X"00000000f00000002900000002100000004c00000000000000002c000000025000000000",
            INIT_2F => X"000000000000000009000000000000000048000000000000000000000000004000000024",
            INIT_30 => X"00000000b00000000900000005600000000200000002600000000000000004a000000000",
            INIT_31 => X"000000000000000006000000000000000000000000059000000000000000000000000000",
            INIT_32 => X"00000000000000001300000003e00000001a00000000000000000a00000000000000002b",
            INIT_33 => X"00000000000000000000000001400000000000000000000000008e000000000000000000",
            INIT_34 => X"00000000000000000000000003600000003f000000000000000020000000000000000000",
            INIT_35 => X"00000000000000000000000001500000000a000000000000000000000000066000000000",
            INIT_36 => X"000000000000000000000000000000000042000000038000000000000000000000000000",
            INIT_37 => X"00000000200000000000000000800000000f00000001d000000000000000000000000042",
            INIT_38 => X"000000000000000024000000000000000000000000011000000004000000021000000000",
            INIT_39 => X"00000000000000000000000000000000002300000002100000001e000000000000000025",
            INIT_3A => X"00000000000000000500000000200000000000000002700000000f00000000000000002c",
            INIT_3B => X"00000007800000000000000000400000002a00000001400000003400000003000000000c",
            INIT_3C => X"000000009000000008000000000000000000000000000000000022000000000000000000",
            INIT_3D => X"000000000000000040000000000000000014000000020000000000000000000000000001",
            INIT_3E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"000000000000000000000000000000000043000000021000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_41 => X"00000000000000000000000000000000000000000005d000000000000000000000000000",
            INIT_42 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"00000002b000000000000000000000000004000000000000000000000000000000000000",
            INIT_45 => X"00000003700000003a00000003000000002900000002f00000002c00000002d000000030",
            INIT_46 => X"00000003500000002c00000003100000002a00000002700000002600000002500000002a",
            INIT_47 => X"00000000c00000003b00000002900000001f00000000000000002d00000002e000000030",
            INIT_48 => X"00000002e00000002900000001c00000002500000001f00000000e000000000000000000",
            INIT_49 => X"00000000000000000000000000000000002300000002d00000003b000000032000000035",
            INIT_4A => X"00000003200000002300000000000000000000000001a000000004000000000000000000",
            INIT_4B => X"000000000000000000000000000000000000000000000000000000000000019000000025",
            INIT_4C => X"000000000000000018000000012000000000000000000000000011000000000000000006",
            INIT_4D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_4E => X"00000000300000000300000003800000000b000000000000000000000000005000000000",
            INIT_4F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_50 => X"00000000000000000000000000700000003a000000007000000000000000000000000000",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_52 => X"000000000000000000000000000000000002000000000000000000000000000000000000",
            INIT_53 => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"00000000000000000000000000500000001a000000000000000000000000000000000000",
            INIT_55 => X"00000000000000000000000000800000000000000000400000001800000000300000000f",
            INIT_56 => X"000000008000000000000000000000000000000000000000000000000000000000000000",
            INIT_57 => X"00000000000000000000000000000000001f00000000000000000000000000a000000011",
            INIT_58 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_59 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_60 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_61 => X"00000000b00000000c00000000c00000000400000000800000000800000001100000000a",
            INIT_62 => X"00000000000000000600000000800000001100000002300000002d00000002100000000b",
            INIT_63 => X"00000004200000002300000000500000000000000000800000000c00000000a00000000a",
            INIT_64 => X"00000003300000003500000000a00000001700000000a000000000000000000000000000",
            INIT_65 => X"000000000000000000000000009000000016000000037000000005000000008000000005",
            INIT_66 => X"00000000500000000000000000000000000c00000000e000000000000000000000000000",
            INIT_67 => X"00000000400000001a000000000000000002000000000000000000000000008000000008",
            INIT_68 => X"00000000e00000000200000000000000000100000000e000000000000000006000000010",
            INIT_69 => X"000000000000000000000000000000000007000000000000000009000000000000000000",
            INIT_6A => X"00000003e00000000300000000600000000000000000f000000000000000000000000000",
            INIT_6B => X"000000007000000015000000014000000000000000000000000000000000000000000028",
            INIT_6C => X"00000000000000001200000001800000001c000000000000000000000000000000000000",
            INIT_6D => X"000000000000000000000000000000000011000000000000000011000000000000000031",
            INIT_6E => X"000000035000000035000000002000000000000000000000000000000000000000000000",
            INIT_6F => X"00000000000000000e00000000500000000000000000900000000000000000e000000021",
            INIT_70 => X"000000000000000000000000026000000000000000000000000000000000001000000000",
            INIT_71 => X"00000000c000000000000000000000000000000000030000000026000000000000000000",
            INIT_72 => X"000000000000000000000000000000000009000000023000000000000000004000000000",
            INIT_73 => X"00000000000000000300000001800000000000000000000000001100000003600000004e",
            INIT_74 => X"00000000000000003700000005100000001e000000000000000000000000000000000007",
            INIT_75 => X"00000000c00000002100000003500000000a000000005000000000000000000000000000",
            INIT_76 => X"000000000000000000000000003000000005000000004000000028000000056000000000",
            INIT_77 => X"000000018000000000000000016000000000000000000000000000000000000000000000",
            INIT_78 => X"00000000000000000000000000000000000000000000000000000000000000000000003f",
            INIT_79 => X"00000000b00000004f000000018000000000000000000000000000000000000000000000",
            INIT_7A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"000000003000000000000000022000000000000000000000000000000000014000000000",
            INIT_7C => X"000000000000000000000000000000000000000000000000000000000000000000000012",
            INIT_7D => X"00000000800000001500000000900000000e00000000a00000001300000000d000000000",
            INIT_7E => X"00000000200000000600000001300000001b00000002200000001c00000000c000000006",
            INIT_7F => X"00000001a00000000f00000003600000000f00000000d00000000900000000b000000008",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000002600000000a00000001a00000002100000002400000003500000003400000001f",
            INIT_01 => X"00000002000000002800000003300000005100000000800000000a00000000b000000024",
            INIT_02 => X"00000001400000003300000001a00000001900000002b00000004b00000005e000000053",
            INIT_03 => X"00000005b00000003600000002f00000004500000002e00000001900000001200000000e",
            INIT_04 => X"00000001500000005e00000007100000001b00000001500000003b00000004200000005d",
            INIT_05 => X"00000006700000003b00000003300000003b00000006400000004400000007e000000035",
            INIT_06 => X"00000001300000002800000009e00000007f000000001000000025000000039000000038",
            INIT_07 => X"00000005000000007f00000005b00000002e00000004b00000007d00000007e0000000bd",
            INIT_08 => X"00000005a00000001700000004300000009400000007a00000001500000003c000000047",
            INIT_09 => X"00000003b00000004600000008100000007800000004e0000000650000000a8000000075",
            INIT_0A => X"0000000a50000000390000000390000000400000000a500000008e00000003300000004c",
            INIT_0B => X"00000004b00000004800000004c00000007800000005f00000005000000006a000000085",
            INIT_0C => X"0000000590000000660000000380000000730000000660000000b80000000b0000000026",
            INIT_0D => X"00000000e00000002b00000002c00000004100000006500000003300000005100000004e",
            INIT_0E => X"00000007900000005f00000003300000006f0000000750000000860000000b30000000c0",
            INIT_0F => X"0000000c700000002700000002700000002f00000002500000004000000005a000000042",
            INIT_10 => X"0000000790000000b900000009100000006500000009e0000000a200000008b0000000ab",
            INIT_11 => X"0000000cb0000000c100000006800000007100000005a00000004700000004000000003c",
            INIT_12 => X"00000006f00000007c00000008500000008a0000000a50000000e70000000c900000009d",
            INIT_13 => X"0000000b10000000a100000008c00000008e00000008a000000088000000080000000078",
            INIT_14 => X"00000008400000007600000007100000007000000007500000007a0000000af0000000e5",
            INIT_15 => X"0000000ef0000000a600000008500000009d0000000a300000009a00000009500000008c",
            INIT_16 => X"00000009b00000008c000000082000000077000000073000000079000000080000000088",
            INIT_17 => X"0000000740000000a700000007f00000008f0000000970000000ab0000000a3000000093",
            INIT_18 => X"00000009a00000008500000008600000008800000007c00000007e00000008900000007f",
            INIT_19 => X"00000000000000000000000000000000000000000000000000000000000008d0000000af",
            INIT_1A => X"00000000000000000000000000b00000001c000000013000000000000000000000000000",
            INIT_1B => X"00000000b000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"00000000000000000000000001e000000014000000000000000000000000033000000014",
            INIT_1D => X"00000002800000001c00000003e00000000000000000000000000000000000000000003f",
            INIT_1E => X"00000001900000000000000001e000000007000000000000000000000000000000000000",
            INIT_1F => X"00000000000000000000000000000000000000000000c000000000000000000000000000",
            INIT_20 => X"00000000000000000000000000000000000e00000000600000001a000000000000000000",
            INIT_21 => X"00000000000000001d00000000400000000f000000000000000000000000000000000009",
            INIT_22 => X"00000000200000000000000002f000000025000000000000000000000000008000000000",
            INIT_23 => X"00000002600000000000000000600000000000000000000000000000000000300000004f",
            INIT_24 => X"00000000d00000000d00000001800000000000000000000000000000000000000000001c",
            INIT_25 => X"000000008000000018000000000000000009000000000000000005000000000000000000",
            INIT_26 => X"000000000000000000000000007000000000000000002000000000000000000000000000",
            INIT_27 => X"00000000000000001c00000000000000000000000000000000001e00000003d000000000",
            INIT_28 => X"00000003200000002200000000000000002e000000000000000000000000000000000010",
            INIT_29 => X"00000000000000000d00000003a000000026000000036000000000000000000000000003",
            INIT_2A => X"00000000000000001500000001200000000000000000a000000000000000000000000000",
            INIT_2B => X"00000000800000000000000000000000000100000003100000001f00000002e000000000",
            INIT_2C => X"000000019000000000000000000000000000000000000000000022000000000000000000",
            INIT_2D => X"00000004100000002100000001600000000000000000000000000000000000d00000000f",
            INIT_2E => X"00000000c00000003700000003f0000000520000000a2000000000000000000000000000",
            INIT_2F => X"00000003600000000d000000000000000000000000000000000002000000000000000006",
            INIT_30 => X"000000000000000000000000000000000002000000000000000056000000041000000000",
            INIT_31 => X"000000025000000000000000002000000000000000000000000003000000000000000000",
            INIT_32 => X"00000000700000000000000000000000000100000000000000000000000000600000003e",
            INIT_33 => X"00000003600000001800000000000000000c00000004200000000000000000000000000a",
            INIT_34 => X"000000000000000005000000000000000000000000000000000009000000013000000024",
            INIT_35 => X"000000000000000000000000000000000000000000000000000004000000000000000000",
            INIT_36 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000000000000000000000000000000000000000000000000001f000000004000000000",
            INIT_3B => X"00000000000000000000000000000000000000000000000000000000000000b000000000",
            INIT_3C => X"00000000000000000100000000200000000000000000700000000000000002d000000005",
            INIT_3D => X"000000002000000000000000000000000000000000000000000000000000000000000002",
            INIT_3E => X"00000000600000000100000001000000000000000000300000000000000000000000003b",
            INIT_3F => X"00000005d00000000000000000000000000000000000000000002c000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000000000000000000000000000000000e000000000000000000",
            INIT_41 => X"00000000000000005200000000000000000000000000000000000f00000001c000000000",
            INIT_42 => X"000000000000000000000000000000000004000000000000000013000000012000000000",
            INIT_43 => X"00000000000000000000000002d00000000000000000500000000000000001700000000c",
            INIT_44 => X"00000000000000001100000000000000001600000000000000000000000000300000001d",
            INIT_45 => X"00000001b000000000000000011000000000000000008000000000000000000000000012",
            INIT_46 => X"00000000300000000000000003b000000000000000019000000009000000000000000000",
            INIT_47 => X"000000000000000012000000012000000000000000000000000005000000000000000010",
            INIT_48 => X"00000002d00000000000000000000000005800000000000000000d000000033000000000",
            INIT_49 => X"00000001d00000002c00000003e000000033000000028000000002000000000000000004",
            INIT_4A => X"00000004e00000004e00000002e00000000000000003b000000000000000036000000070",
            INIT_4B => X"00000005a00000005300000005a00000005800000005600000004f000000049000000044",
            INIT_4C => X"00000004c00000004a00000004800000004900000000000000000800000004800000006f",
            INIT_4D => X"00000006000000005a00000005e00000005d00000005700000005b00000005b000000054",
            INIT_4E => X"00000005700000005300000004d00000004500000005000000003100000000000000008a",
            INIT_4F => X"00000006700000006700000005000000005e000000074000000061000000064000000061",
            INIT_50 => X"00000005200000005200000005200000004900000005500000005f000000049000000041",
            INIT_51 => X"00000002e00000003300000002e00000002f00000004500000005300000006b00000005e",
            INIT_52 => X"00000002700000001c00000002300000002b00000002f00000003100000002f00000002f",
            INIT_53 => X"00000003400000002d000000035000000032000000032000000024000000027000000026",
            INIT_54 => X"000000024000000015000000013000000021000000004000000025000000013000000055",
            INIT_55 => X"00000002c00000003800000002e00000003400000003b00000001a00000002800000002d",
            INIT_56 => X"00000002700000000400000000b00000000a00000004f00000001a000000000000000000",
            INIT_57 => X"00000001a00000002300000002500000003600000002c000000079000000000000000039",
            INIT_58 => X"00000005300000000e000000000000000012000000000000000053000000018000000008",
            INIT_59 => X"00000000000000000000000001a00000002c00000004900000000a000000063000000000",
            INIT_5A => X"00000000000000003900000000000000001e00000000000000000b00000005f000000008",
            INIT_5B => X"00000000000000000000000000000000000000000004900000002e000000000000000038",
            INIT_5C => X"00000001500000000000000000d0000000040000000230000000000000000000000000bf",
            INIT_5D => X"0000000a400000000000000000000000000a00000005000000006100000000000000000c",
            INIT_5E => X"00000000100000000000000000000000000d00000002700000001e000000000000000000",
            INIT_5F => X"00000000000000007c000000000000000008000000000000000068000000045000000000",
            INIT_60 => X"00000003c00000000000000001700000000000000001200000002200000002a000000000",
            INIT_61 => X"00000000000000002200000000600000003100000001c000000000000000003000000011",
            INIT_62 => X"00000000000000004a00000000000000001800000000a00000004400000003a000000026",
            INIT_63 => X"00000004800000000500000000000000000a00000001700000000e00000002a000000019",
            INIT_64 => X"00000000b0000000000000000a300000000000000001100000005100000001c000000056",
            INIT_65 => X"00000001e00000002d000000028000000014000000000000000000000000000000000056",
            INIT_66 => X"000000000000000000000000000000000098000000000000000028000000040000000000",
            INIT_67 => X"00000000000000001100000000e000000010000000010000000009000000000000000000",
            INIT_68 => X"00000000a00000000500000000900000000000000001f000000048000000041000000003",
            INIT_69 => X"000000000000000017000000008000000010000000017000000014000000010000000008",
            INIT_6A => X"00000000d000000009000000000000000011000000000000000000000000074000000010",
            INIT_6B => X"00000000d00000000000000000000000002600000000000000000900000000d000000010",
            INIT_6C => X"00000001000000001800000000900000000c000000016000000000000000000000000019",
            INIT_6D => X"00000000000000000000000000000000000000000000300000003100000000b000000000",
            INIT_6E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"000000000000000001000000000000000000000000000000000000000000004000000000",
            INIT_71 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"000000000000000000000000000000000000000000012000000004000000000000000000",
            INIT_74 => X"000000000000000000000000000000000000000000000000000000000000000000000005",
            INIT_75 => X"000000000000000008000000038000000000000000000000000027000000001000000000",
            INIT_76 => X"000000000000000004000000000000000000000000000000000000000000000000000000",
            INIT_77 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_78 => X"00000000000000000f000000000000000000000000000000000000000000014000000000",
            INIT_79 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7E => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_7F => X"000000000000000000000000000000000000000000012000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000003000000001e000000000000000000000000000000000000000000000000000011",
            INIT_01 => X"00000000100000002400000001c00000000000000000000000000000000000000000003e",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"000000002000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"00000003600000002f000000000000000000000000013000000000000000000000000000",
            INIT_0A => X"00000002b00000003600000003b000000039000000030000000035000000035000000033",
            INIT_0B => X"000000036000000038000000030000000027000000028000000025000000020000000020",
            INIT_0C => X"00000000200000000200000002300000003900000003b000000042000000033000000039",
            INIT_0D => X"000000039000000036000000013000000030000000027000000011000000006000000006",
            INIT_0E => X"00000000000000000400000000000000000000000000000000001e00000003d000000037",
            INIT_0F => X"000000040000000037000000032000000000000000015000000017000000000000000001",
            INIT_10 => X"00000000000000000000000001700000000000000000000000000000000001e000000012",
            INIT_11 => X"000000033000000044000000010000000034000000012000000000000000000000000000",
            INIT_12 => X"000000000000000000000000009000000010000000000000000000000000006000000025",
            INIT_13 => X"00000002b00000000d00000000b00000003800000003100000000f000000000000000000",
            INIT_14 => X"00000000000000000000000000000000000000000002a00000000000000000b000000008",
            INIT_15 => X"00000001700000002e00000001100000000e00000003d00000000700000002c000000000",
            INIT_16 => X"000000004000000000000000000000000000000000000000000013000000003000000008",
            INIT_17 => X"00000000000000000a00000002e000000022000000000000000025000000000000000019",
            INIT_18 => X"00000001100000001500000000000000000200000000000000000000000000f000000013",
            INIT_19 => X"00000002c00000000000000000c00000000000000000000000001c000000000000000009",
            INIT_1A => X"00000001400000000e000000016000000021000000000000000000000000000000000000",
            INIT_1B => X"00000000000000000500000000600000001f000000000000000000000000003000000000",
            INIT_1C => X"00000000000000001500000001400000000500000002800000001e000000000000000000",
            INIT_1D => X"00000000000000000000000000000000000000000001700000001100000000600000002c",
            INIT_1E => X"00000003c000000032000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"00000000000000000000000004f000000000000000000000000000000000000000000000",
            INIT_21 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000000000000000000000000000000028000000000000000000000000000000000000",
            INIT_23 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_25 => X"000000027000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"00000002f00000002b00000002800000002000000002c000000029000000023000000022",
            INIT_27 => X"00000002400000002800000002e00000002900000001e00000001d000000029000000032",
            INIT_28 => X"00000000500000002e00000003000000004300000000e00000002100000002c000000024",
            INIT_29 => X"00000002800000000200000003f00000002c000000015000000019000000029000000021",
            INIT_2A => X"00000001c00000000000000001000000002400000002800000002000000002a000000029",
            INIT_2B => X"00000002400000002e00000000000000005c00000000b00000001a00000003200000000c",
            INIT_2C => X"00000001800000002300000000000000001900000002500000002700000000c000000038",
            INIT_2D => X"00000001300000000000000004100000000500000002c00000000000000002600000001a",
            INIT_2E => X"00000001200000003800000001400000000000000002500000002400000002a000000027",
            INIT_2F => X"00000000000000000000000002f00000003700000000000000002400000001a00000002b",
            INIT_30 => X"00000001d00000000700000002a000000034000000000000000043000000025000000016",
            INIT_31 => X"00000001500000000000000000000000004600000000e000000024000000011000000020",
            INIT_32 => X"00000002500000000000000000d00000002800000002b00000000000000003900000001c",
            INIT_33 => X"00000000b00000003500000000000000000200000003400000002900000000600000000b",
            INIT_34 => X"00000000d00000000d00000001100000000000000002c000000011000000000000000018",
            INIT_35 => X"00000000000000001b00000000e00000000000000003400000000000000003f000000000",
            INIT_36 => X"00000000000000000000000001a00000000000000000000000002b00000000500000003f",
            INIT_37 => X"00000000f00000002c00000001d00000000000000001400000002a000000000000000039",
            INIT_38 => X"00000003800000000000000000000000002f00000001000000000000000000f00000002f",
            INIT_39 => X"00000000f00000002b000000027000000005000000000000000032000000029000000000",
            INIT_3A => X"000000000000000000000000000000000000000000021000000011000000008000000008",
            INIT_3B => X"000000000000000003000000007000000000000000000000000000000000005000000052",
            INIT_3C => X"00000002e000000022000000000000000000000000014000000003000000000000000000",
            INIT_3D => X"000000002000000000000000000000000001000000005000000002000000006000000000",
            INIT_3E => X"00000000000000000d000000022000000000000000000000000009000000000000000000",
            INIT_3F => X"000000000000000000000000000000000001000000000000000000000000006000000009",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000000000000000000000000014000000004000000000000000000000000013000000015",
            INIT_41 => X"00000001a00000001200000000000000000000000000c000000000000000000000000000",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000001010000000bc0000000510000001040000000400000000120000000a0",
            INIT_01 => X"0000000000000000ba00000000000000000000000001c000000000000000047000000000",
            INIT_02 => X"000000000000000092000000000000000000000000031000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000002000000000000000000000000104000000000000000000000000000000000000",
            INIT_05 => X"0000000380000000000000000a8000000000000000000000000000000000000000000000",
            INIT_06 => X"000000000000000000000000002000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000037000000053000000000000000000000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_09 => X"00000000000000000000000000000000000000000000000000000f000000000000000000",
            INIT_0A => X"0000000b700000008200000011300000003700000013400000017a0000000a8000000000",
            INIT_0B => X"00000006200000014d00000000000000007900000002d000000000000000000000000035",
            INIT_0C => X"00000003500000001000000007e000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000d100000000000000006a000000000",
            INIT_0E => X"0000000810000000d20000000770000000330000000a00000000000000000b00000000b0",
            INIT_0F => X"0000000650000000000000000570000000a90000000080000000000000000000000000c6",
            INIT_10 => X"00000000000000007a00000005800000000000000003c0000000a10000000000000000c8",
            INIT_11 => X"00000000000000000000000000000000005c000000000000000006000000000000000000",
            INIT_12 => X"0000000ff0000000000000000480000000770000000000000000e600000002c000000000",
            INIT_13 => X"000000000000000000000000036000000000000000019000000000000000000000000024",
            INIT_14 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000aa00000006c0000000b500000004d00000005d000000000000000000",
            INIT_17 => X"00000003000000001b00000000000000003f000000000000000000000000000000000000",
            INIT_18 => X"0000000120000000000000000b3000000119000000000000000000000000000000000015",
            INIT_19 => X"0000000000000000000000000260000000b60000000bd0000000000000000aa000000000",
            INIT_1A => X"000000000000000000000000000000000000000000000000000000000000000000000028",
            INIT_1B => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000170000000680000000d000000014f0000001440000001240000000c0000000000",
            INIT_1D => X"000000000000000016000000057000000009000000000000000000000000040000000000",
            INIT_1E => X"00000000000000000000000000000000000000000000000000000000000005d0000000cf",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"0000000b80000000010000000a8000000000000000000000000000000000000000000000",
            INIT_21 => X"00000000000000000000000006300000001500000009000000009600000002800000001e",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00000009e00000011b000000000000000000000000000000000000000000000000000000",
            INIT_24 => X"00000007900000000000000000000000000000000000000000006c000000000000000000",
            INIT_25 => X"0000000000000000110000000120000000670000000ff0000000040000000430000000f8",
            INIT_26 => X"00000004e00000008600000000000000004100000006900000000000000001c000000000",
            INIT_27 => X"00000002600000001700000005100000006c000000091000000000000000000000000031",
            INIT_28 => X"0000000000000000780000000000000000e00000000fd0000000b0000000000000000046",
            INIT_29 => X"0000000ab000000059000000000000000000000000000000000000000000000000000010",
            INIT_2A => X"00000005300000003b0000000db00000008f00000006a0000000ef0000000fb0000000c1",
            INIT_2B => X"0000000620000000ab00000004600000007b000000000000000000000000010000000014",
            INIT_2C => X"00000005100000012300000007a00000008c00000006d0000000a200000013c00000005a",
            INIT_2D => X"00000000000000003c0000000000000000000000000000000000000000000a1000000097",
            INIT_2E => X"000000104000000000000000000000000000000000000000000000000000000000000007",
            INIT_2F => X"00000012f0000000a200000004f00000001e000000000000000000000000000000000000",
            INIT_30 => X"0000000a100000008300000016100000013a00000015b00000000000000000000000008c",
            INIT_31 => X"0000000dc000000070000000088000000000000000000000000012000000138000000072",
            INIT_32 => X"0000000000000000000000000000000000ae0000000cd00000013e0000000ad0000000e0",
            INIT_33 => X"00000001f0000000c8000000000000000000000000000000000000000000000000000000",
            INIT_34 => X"00000001e00000000000000002600000001b00000004e00000004b0000000460000000bf",
            INIT_35 => X"0000000a50000000aa00000000600000001e00000003600000009f00000013b000000073",
            INIT_36 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000010100000007600000004300000006a000000000000000000000000000000000000",
            INIT_3B => X"00000000000000000000000000000000000000000000000000000000000007c000000066",
            INIT_3C => X"000000059000000000000000000000000000000000000000000000000000000000000000",
            INIT_3D => X"00000003d000000000000000000000000000000000000000000031000000000000000069",
            INIT_3E => X"0000000000000000000000000ed000000072000000031000000010000000000000000000",
            INIT_3F => X"00000012c000000070000000000000000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000000000000000320000000000000000000000000000000000000000000d000000017f",
            INIT_41 => X"00000007600000004400000006d0000000de000000021000000039000000008000000067",
            INIT_42 => X"0000000000000000000000000000000000000000000000000000eb000000141000000084",
            INIT_43 => X"00000003f00000006e0000000780000000b2000000000000000000000000000000000000",
            INIT_44 => X"00000001c00000000000000000000000000000000000000000000000000009200000007f",
            INIT_45 => X"00000000000000000000000014800000008700000003400000001e000000000000000191",
            INIT_46 => X"00000004a000000058000000000000000000000000000000000000000000000000000000",
            INIT_47 => X"0000000c50000000d70000000f3000000000000000000000000000000000000000000046",
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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_05 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_06 => X"00000002100000003700000006c000000060000000000000000000000000000000000000",
            INIT_07 => X"00000000000000001700000000000000000000000000000000004c00000000c000000038",
            INIT_08 => X"00000002b00000000000000000700000001500000000000000000000000002a00000000f",
            INIT_09 => X"00000002900000000000000000000000000000000001300000001100000006100000005f",
            INIT_0A => X"00000005a0000000b800000004600000004300000000000000007300000005d000000000",
            INIT_0B => X"0000000000000000000000000230000000d6000000017000000000000000000000000000",
            INIT_0C => X"00000001f00000003a00000001c000000000000000000000000005000000000000000000",
            INIT_0D => X"0000000380000000240000000c200000001d00000000000000000e00000013a000000027",
            INIT_0E => X"0000000000000000000000000220000001cf00000001700000000000000006f000000080",
            INIT_0F => X"00000017a0000000000000000000000000000000000f2000000060000000000000000016",
            INIT_10 => X"0000000ce00000009d00000000000000000000000000a000000000000000000000000092",
            INIT_11 => X"00000000c00000007c00000000000000007b00000000000000000000000000d000000000",
            INIT_12 => X"00000000000000000000000000f000000000000000000000000000000000003000000000",
            INIT_13 => X"000000000000000011000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"000000000000000000000000036000000000000000000000000000000000000000000000",
            INIT_15 => X"000000000000000000000000000000000000000000000000000038000000000000000000",
            INIT_16 => X"00000009d00000000000000007700000000000000000000000004b000000000000000000",
            INIT_17 => X"00000000000000000000000001500000000000000002d000000000000000000000000000",
            INIT_18 => X"000000000000000000000000006000000000000000021000000000000000013000000000",
            INIT_19 => X"00000000000000000d000000000000000000000000000000000000000000000000000000",
            INIT_1A => X"00000006a00000000000000000000000000000000006e000000000000000079000000000",
            INIT_1B => X"0000000000000000cb000000000000000000000000000000000006000000000000000000",
            INIT_1C => X"00000000000000000000000003700000001b00000003900000003c000000000000000000",
            INIT_1D => X"0000000b6000000032000000000000000000000000006000000000000000000000000000",
            INIT_1E => X"00000000000000006700000003900000000000000000a000000000000000008000000000",
            INIT_1F => X"00000001500000000000000002a00000000000000002e00000001100000002000000000c",
            INIT_20 => X"00000000b000000009000000000000000000000000000000000017000000009000000036",
            INIT_21 => X"00000000900000002900000000d000000000000000017000000000000000006000000019",
            INIT_22 => X"000000000000000000000000000000000000000000000000000000000000008000000000",
            INIT_23 => X"00000000900000000d000000000000000017000000000000000000000000000000000000",
            INIT_24 => X"00000000000000000000000000000000001300000001a000000026000000016000000000",
            INIT_25 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_26 => X"000000002000000001000000000000000005000000000000000000000000000000000000",
            INIT_27 => X"00000000e00000000000000001b000000000000000000000000000000000000000000000",
            INIT_28 => X"000000000000000000000000000000000000000000000000000000000000000000000011",
            INIT_29 => X"00000000000000000000000000000000000000000000f000000000000000000000000000",
            INIT_2A => X"00000000000000001500000001800000000600000000100000000000000000200000003b",
            INIT_2B => X"00000000000000000500000000000000000b000000000000000000000000000000000000",
            INIT_2C => X"00000001f00000000000000000100000004000000001c000000006000000011000000000",
            INIT_2D => X"00000000800000001200000002100000000800000002d00000001700000000500000000c",
            INIT_2E => X"000000000000000031000000038000000000000000000000000030000000022000000013",
            INIT_2F => X"00000000000000000000000000000000000000000000800000000000000001a00000002e",
            INIT_30 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_31 => X"00000000000000003200000002a00000004a00000004a000000000000000000000000022",
            INIT_32 => X"00000000000000000000000003200000001100000000000000000a000000009000000009",
            INIT_33 => X"00000000000000001f00000001900000000400000003e000000000000000005000000000",
            INIT_34 => X"00000000000000001600000000000000000000000000000000004e00000000000000005b",
            INIT_35 => X"00000000000000005f00000008300000000000000000d00000000000000005b00000005d",
            INIT_36 => X"00000000000000000000000000000000001c00000005b000000000000000000000000000",
            INIT_37 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"000000000000000000000000019000000000000000029000000000000000000000000000",
            INIT_39 => X"00000000000000003600000000000000001700000000000000003c000000000000000000",
            INIT_3A => X"00000000800000000000000001f000000000000000000000000000000000010000000000",
            INIT_3B => X"00000003b0000000aa00000000000000000000000000000000000000000000e000000017",
            INIT_3C => X"00000004d00000005600000008700000002700000000000000002f000000027000000056",
            INIT_3D => X"00000000000000002d00000009400000005100000006100000006800000007200000004c",
            INIT_3E => X"00000000a00000000c00000001800000000000000002500000003800000000000000004d",
            INIT_3F => X"00000000000000000000000001c00000000e00000000000000002d00000009b000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000000001b000000036000000039000000039000000074000000000",
            INIT_41 => X"00000009200000005000000004d00000000200000001d00000004b000000000000000013",
            INIT_42 => X"00000000000000000000000009e000000024000000000000000000000000000000000050",
            INIT_43 => X"00000000000000000000000001c00000004b000000032000000015000000012000000000",
            INIT_44 => X"00000000000000004e000000000000000000000000000000000000000000000000000000",
            INIT_45 => X"00000000000000000000000002500000000000000002c000000037000000000000000000",
            INIT_46 => X"00000001300000001100000000000000003f000000000000000064000000000000000000",
            INIT_47 => X"00000000200000005f000000000000000000000000000000000000000000000000000000",
            INIT_48 => X"00000000400000005300000000400000000b000000014000000000000000007000000000",
            INIT_49 => X"00000000000000000000000000000000000000000001700000002e000000032000000018",
            INIT_4A => X"00000000d000000000000000000000000000000000000000000000000000000000000000",
            INIT_4B => X"00000000000000000000000000000000000000000000000000000000000000000000000d",
            INIT_4C => X"00000000e00000000000000001600000000000000000000000000000000000d000000000",
            INIT_4D => X"00000002100000000100000000000000000000000000600000000000000000000000001e",
            INIT_4E => X"00000000000000000000000001b000000012000000000000000000000000000000000000",
            INIT_4F => X"00000000000000000000000000000000002e000000041000000038000000039000000000",
            INIT_50 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"000000000000000000000000000000000000000000000000000000000000022000000000",
            INIT_52 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"00000000000000001a00000000000000000300000007c000000017000000000000000023",
            INIT_54 => X"00000000000000001700000001800000000600000001500000000000000001a000000000",
            INIT_55 => X"00000009200000008100000004000000003500000002400000001e00000000c000000000",
            INIT_56 => X"00000000000000000000000000000000003300000000000000001900000006c000000027",
            INIT_57 => X"000000000000000000000000070000000000000000000000000000000000000000000000",
            INIT_58 => X"00000003800000004f00000001c000000000000000000000000000000000005000000000",
            INIT_59 => X"000000000000000000000000000000000000000000000000000036000000000000000038",
            INIT_5A => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5B => X"000000000000000000000000000000000000000000000000000000000000013000000000",
            INIT_5C => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_5D => X"00000000000000000000000006600000002600000006500000004200000001c000000000",
            INIT_5E => X"00000004d00000000000000001900000007700000005600000005900000004e000000062",
            INIT_5F => X"00000002500000002800000000c0000000740000000b7000000047000000035000000060",
            INIT_60 => X"00000008400000006e000000050000000039000000078000000085000000039000000018",
            INIT_61 => X"0000000bb0000000ab00000009c0000000920000000a900000008b00000009a00000008a",
            INIT_62 => X"0000000500000000670000000a90000000b50000000a600000000a000000000000000000",
            INIT_63 => X"00000001100000002d00000001c00000000000000000000000004d000000097000000046",
            INIT_64 => X"00000001d00000006800000001d00000000000000002100000000000000000000000001c",
            INIT_65 => X"00000002f00000002b000000000000000000000000000000000000000000000000000000",
            INIT_66 => X"0000000560000000670000000d100000002400000004000000006a000000034000000037",
            INIT_67 => X"000000000000000000000000000000000000000000061000000017000000042000000073",
            INIT_68 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_69 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_6A => X"00000000000000000000000000000000000000000000000000000000000000f000000000",
            INIT_6B => X"000000006000000000000000000000000000000000000000000000000000000000000000",
            INIT_6C => X"00000009b0000000b3000000000000000068000000000000000021000000000000000000",
            INIT_6D => X"0000000a90000000980000000a000000007d0000000c100000007c00000009c00000007d",
            INIT_6E => X"00000000000000000000000000000000000000000001c0000000060000000b00000000c2",
            INIT_6F => X"000000000000000000000000000000000000000000000000000011000000000000000000",
            INIT_70 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_71 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_72 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_73 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_74 => X"00000005000000005100000004b000000061000000062000000000000000000000000000",
            INIT_75 => X"00000005a00000005e00000005b000000053000000088000000061000000041000000049",
            INIT_76 => X"00000003c00000007300000005f00000007600000006000000005a00000006800000002a",
            INIT_77 => X"00000005c00000005d00000004100000004600000007b00000004e00000006d000000076",
            INIT_78 => X"00000002e00000002300000001500000001000000004f00000003b000000046000000097",
            INIT_79 => X"00000000000000000d00000000000000000000000000000000000000000000000000002f",
            INIT_7A => X"00000005700000007b000000073000000063000000000000000000000000000000000000",
            INIT_7B => X"00000000500000004000000004300000007000000004500000004800000004b000000056",
            INIT_7C => X"00000002400000000000000001e00000002200000003200000002b000000044000000012",
            INIT_7D => X"00000002100000002100000000000000000900000000000000005d00000000700000003c",
            INIT_7E => X"00000000000000002b000000017000000019000000015000000000000000006000000000",
            INIT_7F => X"000000000000000000000000000000000000000000000000000000000000000000000000",

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
            WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00000004a00000005e00000005a000000000000000000000000000000000000000000000",
            INIT_01 => X"00000002600000000000000003600000003c00000004700000003100000002600000002c",
            INIT_02 => X"00000003100000004600000000200000000e00000005000000003e00000003a000000026",
            INIT_03 => X"00000003500000004400000005a00000002600000003500000003f00000002d00000002e",
            INIT_04 => X"00000001d00000000000000002c00000000800000000000000001c000000044000000049",
            INIT_05 => X"000000000000000000000000000000000000000000000000000000000000002000000000",
            INIT_06 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_07 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_08 => X"00000001100000003200000000000000000a000000000000000017000000000000000000",
            INIT_09 => X"00000000000000002e00000000000000000000000004c000000000000000011000000000",
            INIT_0A => X"00000000000000000000000001100000000000000001c000000076000000000000000002",
            INIT_0B => X"00000003e00000001800000001a00000008600000007b00000001200000006e000000000",
            INIT_0C => X"00000011600000004c00000004800000003500000003300000003d0000000af000000000",
            INIT_0D => X"0000000f00000000be0000000c100000006c0000000740000000d10000000be00000010a",
            INIT_0E => X"00000007b00000003e00000005500000002b000000003000000035000000015000000096",
            INIT_0F => X"00000001100000005700000006400000004000000001000000000000000003400000001c",
            INIT_10 => X"00000002f00000002700000003000000004000000001f00000004000000000000000000a",
            INIT_11 => X"000000000000000000000000000000000000000000000000000037000000076000000017",
            INIT_12 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"00000000900000000000000006c00000000000000002b000000000000000000000000000",
            INIT_14 => X"00000000000000006f000000084000000065000000000000000097000000000000000000",
            INIT_15 => X"0000000000000000790000000c40000000620000000b00000000000000000ed000000000",
            INIT_16 => X"000000076000000025000000000000000046000000000000000092000000000000000053",
            INIT_17 => X"0000000240000000000000000a200000000000000000000000000000000001f000000053",
            INIT_18 => X"00000000000000000000000000b000000000000000011000000006000000000000000000",
            INIT_19 => X"00000002400000003200000005c00000001100000001e000000000000000006000000000",
            INIT_1A => X"00000004200000002600000002c00000004600000003400000008a00000005000000009e",
            INIT_1B => X"00000002a00000002200000003600000002200000009700000002e000000059000000036",
            INIT_1C => X"0000000a60000000af00000001700000001f000000000000000027000000035000000031",
            INIT_1D => X"0000000280000000bd00000009a00000001c00000002100000006600000003700000002b",
            INIT_1E => X"000000000000000000000000000000000000000000000000000000000000010000000000",
            INIT_1F => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_20 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_21 => X"00000001f00000000b000000000000000000000000000000000000000000000000000000",
            INIT_22 => X"000000018000000030000000000000000000000000000000000000000000000000000000",
            INIT_23 => X"00000008600000007e00000004700000000000000001900000002000000002a000000005",
            INIT_24 => X"0000000a30000000ae00000007d0000000d00000000b00000000b30000000a700000008a",
            INIT_25 => X"0000000000000000000000000000000000020000000000000000e10000000bf0000000ac",
            INIT_26 => X"00000004e00000000000000002a00000002f000000004000000000000000000000000000",
            INIT_27 => X"00000000000000003a000000000000000053000000000000000065000000000000000000",
            INIT_28 => X"00000001c000000000000000025000000000000000050000000000000000005000000011",
            INIT_29 => X"00000000000000000000000000000000000000000000000000000000000008b000000000",
            INIT_2A => X"000000012000000000000000000000000004000000000000000022000000000000000000",
            INIT_2B => X"00000000000000000000000000000000000000000000a00000002400000000d000000018",
            INIT_2C => X"00000003300000000000000000000000001200000005000000000400000000000000004d",
            INIT_2D => X"00000000000000009100000000000000000000000003f00000000000000001e000000000",
            INIT_2E => X"000000000000000000000000000000000000000000000000000025000000000000000000",
            INIT_2F => X"00000000000000000000000007700000000000000000000000000a000000044000000000",
            INIT_30 => X"0000000000000000a6000000005000000042000000067000000000000000000000000000",
            INIT_31 => X"00000000000000000300000000000000000b000000038000000041000000030000000061",
            INIT_32 => X"00000002300000004e000000029000000000000000000000000000000000000000000000",
            INIT_33 => X"00000000000000006f00000002d000000000000000023000000000000000022000000000",
            INIT_34 => X"00000000000000000000000000000000000000000000000000005c00000002e000000005",
            INIT_35 => X"00000000000000000000000000000000002c00000002e00000000300000002b000000000",
            INIT_36 => X"00000000000000005300000005e00000005e000000000000000000000000000000000000",
            INIT_37 => X"0000000b0000000090000000039000000030000000036000000030000000000000000000",
            INIT_38 => X"0000000790000000b400000006a00000006800000004a0000000670000000670000000a2",
            INIT_39 => X"00000000000000004200000006a00000003400000004300000001400000003b000000025",
            INIT_3A => X"00000002700000000000000002c000000022000000000000000024000000000000000034",
            INIT_3B => X"00000000000000000000000000800000001700000003300000000000000003c000000000",
            INIT_3C => X"000000000000000000000000000000000000000000000000000000000000000000000046",
            INIT_3D => X"000000000000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"000000000000000000000000000000000017000000000000000000000000000000000000",
            INIT_3F => X"00000000000000000000000000100000002d00000000a000000016000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000800000000000000001e00000004500000002f000000012000000017000000003",
            INIT_41 => X"00000003a000000027000000039000000042000000060000000000000000002000000015",
            INIT_42 => X"00000008800000007e00000007e00000004800000000700000006900000002600000003a",
            INIT_43 => X"0000000ab0000000a900000009e0000000960000000920000000660000000bb000000096",
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
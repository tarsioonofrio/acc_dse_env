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
        DI   : in std_logic_vector(16-1 downto 0);
        ADDR : in std_logic_vector(11-1 downto 0);
        DO   : out std_logic_vector(16-1 downto 0)
    );
 end bram_single;

  architecture a1 of bram_single is
    signal bram_wr_en    : std_logic_vector(2-1 downto 0);
    signal bram_addr     : std_logic_vector(11-1 downto 0);

    begin
    bram_wr_en <= (others => '1') when WE = '1' else (others => '0');
    bram_addr <= ADDR(11-1 downto 0);
          

    MEM_IWGHT_LAYER0_ENTITY0 : if BRAM_NAME = "iwght_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"1da3cfa00a4b188d13d2febadeecfcf01869112a08a4001d0894fa5704fef05b",
            INIT_01 => X"0018ffddffff0038ffd3002e002c000300040000ffe5ffcafff7000a0022001f",
            INIT_02 => X"ffc0ffd3001f001bffe6000bffdaffc6ffedffc3ffccffc90018002000210035",
            INIT_03 => X"fff3003200070007ffd3fff6ffd8ffd8000f002500180017fff50010ffe2ffc6",
            INIT_04 => X"ffeb000bfffbffff002400050020fff30013ffcf000c0006ffd80033001d0026",
            INIT_05 => X"0018002d00370006ffe1002700090032ffdb000effecfff4ffdcffc1fffaffdf",
            INIT_06 => X"ffd2fffc0037ffc2fffbfff8ffc6ffe70016ffee002d0021ffe6000200120024",
            INIT_07 => X"fff6ffe6ffc6ffe5ffcc001e0052fff5001000340000001f0040ffc2001effe6",
            INIT_08 => X"ffc2ffe1003900440022002bfffdffcdfffcffafffbefffa002b004dffeb002b",
            INIT_09 => X"fffa002f0045003b002f001f00260028002cfff9fffa0033000b00390001ffe1",
            INIT_0A => X"fff4ffc6ffcaffe50004ffd2ffd6ffd5fff80021ffe40018ffe6fff0ffef001b",
            INIT_0B => X"ffc1ffb30005fffcffbe0044000dffd6003300300004001c00000019ffd6ffe9",
            INIT_0C => X"001100400026000e0000000f00250010ffbc001cffe40009fff5ffd0fff00022",
            INIT_0D => X"0021ffd3ffbbffc4ffc90009fff5fff6ffcdfff000000034001fffea002d0033",
            INIT_0E => X"ffcbfff70033003c0034ffff002d00150028ffc6fff20000ffbaffc7000a001c",
            INIT_0F => X"001c0039000bfffc000afff8ffc5ffc9ffd10017fff7fff8ffde0003002fffc7",
            INIT_10 => X"001dffdf001e002bfff0ffc5ffc10016fff8fffafffb00020003fff9ffd5fff7",
            INIT_11 => X"003d00140027002cfff700060029ffe90028003b0020fff3002d00310017001b",
            INIT_12 => X"ffaeffbf00210012ffe4001e00310010001dffc8ffd8fff1ffd2fff500250025",
            INIT_13 => X"ffd5ffe6fff7ffd0001cffddffedffcb00100035ffdaffdcfff30045001dffe6",
            INIT_14 => X"002cffea00330016002f001f00010015fff9ffe2ffe30026fffdffd9ffe0ffec",
            INIT_15 => X"00260005ffd7fff80028ffd7001bfff9ffe0003effdbffc50033fffbffe50033",
            INIT_16 => X"ffddfffaffebffd7ffff0029ffc7fff9fffeffd80030003afff3004b000a0003",
            INIT_17 => X"0003003d00130019ffecffbfffffffd6fffe004dfff90034ffe4ffdfffd9ffc9",
            INIT_18 => X"000a00120024000f0038fffb003effe80036ffff0007ffe9ffbcfff2ffdb001b",
            INIT_19 => X"00190009ffe0ffdfffd1fffdfff7ffd100290015fffa0010ffe4000a002d0023",
            INIT_1A => X"00310002ffd2ffe40013ffefffe10018ffdd000dfff5ffeb001afff70010ffda",
            INIT_1B => X"ffccfff20023ffdaffe4fff7fff8ffcfffdbfff5002b0042fff0002600460014",
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
    end generate MEM_IWGHT_LAYER0_ENTITY0;


    MEM_IWGHT_LAYER1_ENTITY0 : if BRAM_NAME = "iwght_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"1a10f2beda530277417121850a320ea5fa1610174a57f88dfb98f23ef546d97f",
            INIT_01 => X"2a6ef25e1b8cfa92f844d00f2f06fb1bed1b0aed2f1d13050d1ff3ef44f241b4",
            INIT_02 => X"f0af1eeff538d2aa091de8481361ed4005d9d5f51e3d22b7172926574eda1aee",
            INIT_03 => X"2be41e3ce100380e25712da418cc0ac3f967fec72c6e1756faef227f2c7a0be8",
            INIT_04 => X"ffe6001d000bfffb001ffff0fff30010ffff00190000ffeb0006fff4000affed",
            INIT_05 => X"000bfff6fffe003800140023006400280034008f0028002d002a0027ffe0fffa",
            INIT_06 => X"ffe6001a000000070060003a0045008d00540043003f0011ffd6ffd60006fff9",
            INIT_07 => X"0000fffeffecffd80021fffcffd3001b0000fffe0011001f00240000000f0019",
            INIT_08 => X"ffee0002003b0012fffd001800030020fff2ffdffff7ffd8fff0ffddffecfffe",
            INIT_09 => X"fffc000dfffc00110026ffe50005fffafff80004fffefffc0009001afff4fff4",
            INIT_0A => X"000700020011000f00030009ffc8ffdcfffa0007ffdcfffb0008ffeaffd8ffe8",
            INIT_0B => X"fff800000004fffa00000015fff7ffe30025000f00100022000e000bfffdffef",
            INIT_0C => X"fff1ffe90001fff0ffcffff7ffd900030010000a00240002001000150010ffcb",
            INIT_0D => X"ffe5000cfff3fffd001300200007ffdffff0000100370011fff5000e00090011",
            INIT_0E => X"0001fff4fff90008ffeeffdfff91ffd4ffd7ffb7ffffffc6ffd2ffbd0000ffe7",
            INIT_0F => X"ffe4fff60009fffcfff00002fff2ffdefff4ffd8fff7ffe5001200000022fffa",
            INIT_10 => X"0001ffefffeb00020002fff0fff0fff50005fff8001800010010fff6ffff0011",
            INIT_11 => X"ffe60013ffc70006000dffed00100007001affe3fff8002c0007000c0002fff7",
            INIT_12 => X"001afffe001d0022ffee000300040008fff600110012fffb0030000e000dff98",
            INIT_13 => X"00100002001900190021ffee0008001b0000ffe80016fffc000affdcffe3ffff",
            INIT_14 => X"0004ffebfffb000effe7fffafffcfff50014ffe0001cffdbffedffd500120015",
            INIT_15 => X"ffe8ffccfffd0004001d00060010ffebffff00190014ffff00160003ffe90002",
            INIT_16 => X"002500050000ffd7ffdeffc6ffddfffd000000230002fff0001e001200010000",
            INIT_17 => X"ff9b0009ffaffff6fff60043002a0069ffeb00260024ffceffe20011002c006e",
            INIT_18 => X"ffe50007fff100220046003f003e003900140007fff1fff7003b001cfff30000",
            INIT_19 => X"0010ffeaffb4ffb2ffddfffdffea003300210002ffedffbeffbbfffe0051fff5",
            INIT_1A => X"0020000000140012fff8fff2fffeffec0011000c0019ffbfffc6ffd000030002",
            INIT_1B => X"002000290012fff20009ffedffd7fff500180008002200130004002200340014",
            INIT_1C => X"0006ffdafffc0011fffaffe10023ffda00360054ffe20003ffffffdc0021001f",
            INIT_1D => X"ffefffdc003800250012ffe4ffddffd9000e00430039ffc1ffcfffbaffd00003",
            INIT_1E => X"ff8eff97ffd9fffe000400050018001f0019ffc6ffcdffcc0018003e0025ffd5",
            INIT_1F => X"ffe20005001e0023000d003300300017002a0005fff4000cffef004200310034",
            INIT_20 => X"0022fff9fffc00040005fff7001dfffa0010004d0007ffe7002300040005fffd",
            INIT_21 => X"00100004001bffe0fff70000000d0008001d0003001afffeffe5ffe0fff2fffd",
            INIT_22 => X"ffdaffddfff0ffd40007000dfff7fff0fffe0007ffe3ffd2ffe60000001f0009",
            INIT_23 => X"ffd3004dffc7ffad0028fff1ffb6ffdeffd8ffdcffe70023004900310000fffe",
            INIT_24 => X"0020002a0013001600380030003100240014ffefffceffe0fff6ffdeffeaffcc",
            INIT_25 => X"fff1ffbb0004fffbffeeffbb000000140024ffcefff60015ffeeffc3fff30011",
            INIT_26 => X"fff30003ffd9ffdafffaffc2001affb700050000ffff003b0026000e0001ffed",
            INIT_27 => X"ffddffe6ffe6fffb0013ffeffff7001300320018ffe9ffe1ffeeffe40008ffe4",
            INIT_28 => X"001cffb3ffdffff50008fff60002fff80000fff90007ffeefff2001400220011",
            INIT_29 => X"001f0059001d001f000d000b000ffffcffefffd9ffc7fffdffeeffe9ffe50019",
            INIT_2A => X"000d000afffc0025fff300060001ffc4ffeeffd9ffd3ffc500190035000e003c",
            INIT_2B => X"0035ffeaffdcffdd00040006ffd9fff5fffffffd001e000cfff4000a00260006",
            INIT_2C => X"00100037fffb0000000dffd20022ffe7ffeffff1000fffcaffe400000018001a",
            INIT_2D => X"ffe3001e001ffffbfffc001c0028ffe2ffcf002e0019ffd600380031ffffffe0",
            INIT_2E => X"ffea0013ffe8fff3002c0024ffe900110026fffc000ffff80019ffe3fffcfffd",
            INIT_2F => X"fffd000f0002fffc001bffd8ffd8ffd600380007001d0016000cffe7000f0002",
            INIT_30 => X"002cffceffc800380004ffcf0036ffecffd20005fff4ffceffeafffe0008ffd4",
            INIT_31 => X"ffc600280008ffe5003c0001000afff000070031ffcfffd40023fff6fff0002d",
            INIT_32 => X"00110018ffe6ffff0001fff8ffe6fff4001f0000001fffddffc900060024ffe5",
            INIT_33 => X"ffe8fffe0024fffa0004000b000d0010000fffe9ffe6001f0009fffbfff60000",
            INIT_34 => X"0000001fffccffc90022fffaffd80031001dfff300020000fff20007fff60023",
            INIT_35 => X"0036002600220027001b000d0032ffebffcb0003fff8ffee00140016ffb7fff3",
            INIT_36 => X"0023ffd9ffc30023ffffffdcffe3001d0037ffb7ffe8fffdffe0ffeb00030030",
            INIT_37 => X"000f001f00170002002cffe8ffe50030fffcffe9002d002effe40020ffedffbe",
            INIT_38 => X"fffc0005fffcffe3ffd80035000fffdc001c0013fff8002c004400250049003e",
            INIT_39 => X"003e0003ffc0000effffffbf0029fff4ffeb0006001b0012001a00130030ffca",
            INIT_3A => X"fff6fff3fff8ffea000affe4fff00008ffee000cfffbfffd000300000000fffd",
            INIT_3B => X"ffe8fff0fff50008fff00000000efff6fff6fff4ffe7000bffed0006fff3ffea",
            INIT_3C => X"fff40007fff1ffedffee0003fff6fffa000000050000ffecfffd0005ffeb000d",
            INIT_3D => X"000dfffdfffd0006fff3fff7fff0fff3fff4fffbfff6000600110002fffb0000",
            INIT_3E => X"ffecfff90007000400090002ffe7000c0000ffddffeb0000ffee00070005000a",
            INIT_3F => X"001000000003fff2000fffebfffffffcfff9fff700020002ffff0008ffedfffc",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fff40005fff800050008fffcfff200040007fff80011fff8ffebffdffffaffea",
            INIT_41 => X"ffee00010000fffd0000fff2000b000affe2fffdffe1fffcfff40002ffeb0000",
            INIT_42 => X"fff5fffbfffbfff200050003fff1ffecfff8fff5000b000700120008ffeefff9",
            INIT_43 => X"ffe7ffe9ffefffebffec0006ffffffed0000fffbffffffe8fff70000fff0000b",
            INIT_44 => X"0000fff1fffe000cffeafff8fff4fff5fff2000afff6fffe0000fff4fffafffd",
            INIT_45 => X"00040003fff4ffedfff3fffbffebfffbfff9ffed000fffecffebfff4ffe7fff0",
            INIT_46 => X"0004fffcffe7fff8ffeb0000ffe90005000cfffefff2000bffee0007fffa0001",
            INIT_47 => X"0000fffc0005ffe8ffeaffff0005ffeaffedfff20003fff80000ffeafffc0003",
            INIT_48 => X"00010000001100040002fffbffed0009fff0fff60009fff30001fff0ffeeffe0",
            INIT_49 => X"fff0fffefff2ffeaffe8fff60002ffec00080010ffea000b000bffec00050000",
            INIT_4A => X"fff60009fff1fffa0001000b000bffed00070007fff60009fff5fff1fff1fff9",
            INIT_4B => X"fff00008fff7fff300120004ffe3ffeffff3fff4fffb0009000d0008fffa0006",
            INIT_4C => X"ffe6fffa003e0012ffe3ffd5ffe3fffc0001000c0001fff6fffb0017001b0009",
            INIT_4D => X"ffbeffe40032ffceffe60007001e0011ffd9fff7000cffeaffd6ffb6fff3ffee",
            INIT_4E => X"ffd3ffc3ffc3ffe5ffd6fff8ffd0ffd1000affcdffceffd0ffc2ffe4ffdfffd5",
            INIT_4F => X"ffff0036001c0008fffb000f001b00310025002300160016fffeffe9ffeaffbf",
            INIT_50 => X"000e0003fff10011002bfff600080007fff2001f000effedfff7ffe100180016",
            INIT_51 => X"000e003a0028000000030009000fffdeffd7ffabffcfffb6fff0ffc3fff90024",
            INIT_52 => X"fff4fff7001a0016ffdcffeefffdfff00024fff400010014ffe9001d000ffffa",
            INIT_53 => X"0000ffeaffe2ffebffb2ffaaffcfffb5001c0038fff3ffdfffe0fff50000ffde",
            INIT_54 => X"ffc8ffe5fffc0000ffe0ffef0000fffa000f000c00030016fff2fffaffff0000",
            INIT_55 => X"fff90022003fffed0017001a000f001d0035001200600041002affe8000d0027",
            INIT_56 => X"0001000d000afffd0016ffd40000ffe4000c002c0006fff80000000600370046",
            INIT_57 => X"000effe600020004fffb001300160013000d001f0018002b0002fffe00040002",
            INIT_58 => X"fff50002ffecfff7ffe3ffeeffcefff0001bffda000dfffa00140015ffdf0010",
            INIT_59 => X"ffec0023ffd6fff5002effe7ffce001700110012001a0032003f0022fffffff2",
            INIT_5A => X"ffeeffe9ffd4ffe5ffe0ffcc00080005fff1ffd6002effe7ffdaffdaffedffbe",
            INIT_5B => X"ffd90015ffb6ffa7fffdfff7001cffe9ffe90006ffd5fff8000b002800060008",
            INIT_5C => X"00050029001100060014fff100030024ffd9fffc000dfff3ffd7ffbcffd1ffc7",
            INIT_5D => X"fff6ffecffdbffe9000affe5ffecffebfff6fff0000f0011ffe9fff7000c0014",
            INIT_5E => X"fff3ffe9fff1000c000500260038fff9fff5fff8001cfff0fffffffdffec000f",
            INIT_5F => X"ffe5ffd0ffc4ff8dfffbffd5ffe70036ffadff9fffcbff92ffadfffa002c000e",
            INIT_60 => X"002200350023ffebfff7ffd1ffc6ff9efff0ffecffb7fff2fffeffdb0004ffcb",
            INIT_61 => X"001bfffcfff20008ffd8fffdfff3ffdeffd8ffe0ffedfffd00000031001a0012",
            INIT_62 => X"fff1ffd3ffe0ffb7ffbafff4ffd4fffe0019ffeeffe3001cffef00070012000a",
            INIT_63 => X"ffe0ffe4ffefffdfffd7fffa000000180015fff10018002d000d0024fffa000c",
            INIT_64 => X"00000010000dfffcffbeffe20010ffbd00000007ffe0ffdcffe800580016000e",
            INIT_65 => X"000800190010000b001a0016001200190000001400100006ffee00010007fffd",
            INIT_66 => X"ffd50000000efff80011000f001200200004fff9ffeeffe3ffeffffeffe4001a",
            INIT_67 => X"0014fff8000f003e00160003fffd0002ffedffd70001ffbcffe9ffddffd1ffe5",
            INIT_68 => X"000d0002001100120000ffe200220015fffa000afffeffc40007fff9ffd3fffd",
            INIT_69 => X"002f0005000c000d0005ffe70034001c0023002100250014000a0007ffdb0023",
            INIT_6A => X"ffedffc80006ffedffe900160005ffe5000bfff4ffff0005fffd003c00270009",
            INIT_6B => X"fff90033fff1fff8fffbffdeffb3001c002b0013000f000afffaffd2fff8ffe5",
            INIT_6C => X"ffd2000a002efff7002100220031001a00150005000e0007ffeefff2001bffe2",
            INIT_6D => X"ffd4ffbdff78ffbe00020000ffff00050007ffc3fff9fff1fff7ffec00040044",
            INIT_6E => X"001d000bfff8ffea001e00300021fffc0015000b000fffd3ffd5fff0ffcdffb8",
            INIT_6F => X"ffc6000c0025fff800170037001e00190017002ffffbfffc001a001900040010",
            INIT_70 => X"fff70015002500320029002a0026ffebfff2fff9fffbffeafff1fff1ffe5ffd8",
            INIT_71 => X"ffdaffd600310012fff6001afff5ffe50026ffeaffe2fffd000e0000ffb8ffbb",
            INIT_72 => X"0005000800040007001afff000160035002effea001cffda0023ffedffe8000d",
            INIT_73 => X"fff2ffd3ffcdfff2ffedfff90019002400020038003300310027001c00360015",
            INIT_74 => X"0003000e0037003f0053002200260028ffcbffceffdfffabffa1ffb5fff1fff1",
            INIT_75 => X"000b000a001b0017fffe0005000cfff00014000b0001000afff6fff2fffbfff0",
            INIT_76 => X"ffe50020002100210030fffdfffc0040000000020021ffef000bffddfff1ffde",
            INIT_77 => X"0025000affd2ffddffeeffcaffc1ffccffe7ffc4ffdefff2fff5ffe800130019",
            INIT_78 => X"002c001affe4000efffefffffff7fff000180013fff300060023003a0022002c",
            INIT_79 => X"fff5002f0016002200130005001affa3ff95ffaeffedffb3ffabfff500020011",
            INIT_7A => X"0016fff6001d0032003400110034ffec0031fffaffd50016000cffd300060008",
            INIT_7B => X"001a0027002500150004fffcffe9fffdffce0004ffee0004fff1fff5fff0ffef",
            INIT_7C => X"000bffe3ffd0ffe5000f00020017001f002d002900110015001ffffb0016000e",
            INIT_7D => X"ffefffbbffacffdcffe8ffcefffa002bfffbffebffe5fffe000affe9ffff0012",
            INIT_7E => X"0024fffeffec000300110019ffabffb6ffc6ffb6ffacffb0001300020007ffcd",
            INIT_7F => X"ffcdfffefff8fffcffb7ffbaffb6ffbafff8000bffec000a001a0003ffffffe0",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0005fff6ffc3ffc3ffe4ffb3ffd3fff0ffdeffe20009002e004efff4002f0010",
            INIT_01 => X"001e0010fffe0016ffef0013001ffff5fff9fffefff800100000ffefffd30006",
            INIT_02 => X"ffe5fff4fffb000cffecfffefff2fffb0012000c000e000bfff5000c000ffffd",
            INIT_03 => X"0000fff5ffea0001ffe6fffa0002fff80000fff30001fffc00010009ffe7fffa",
            INIT_04 => X"ffe9ffec00010006ffebffeefffafff6ffe50003ffeefff40000fff6ffff0005",
            INIT_05 => X"ffeffff9ffedfff5ffeb0011fffffffbfffe00050001fff4fff400000009000a",
            INIT_06 => X"ffe3ffff00050005fffbfff6fff1ffe00004fff500070005ffe800040006fff6",
            INIT_07 => X"0000ffe3ffe5fffcfff1ffe30006ffed0014ffef000bfffc0006fff000000005",
            INIT_08 => X"0007001300130006000cfffafff20008fffd000dfff4fffc0003ffe70000ffe5",
            INIT_09 => X"0000000300000007fff200000004fff8fff9fff3fffa0013fff8000dffebffee",
            INIT_0A => X"fffdfff0fff2000bffed00080004fff8ffe4ffff000dfff8000efff7ffeafffd",
            INIT_0B => X"0005fff2ffecfffdfff7fffbfff8fff0fffd000cfffefff700000001ffeafff0",
            INIT_0C => X"0009ffe7ffe90000fff8fff400090007ffedffeefffefffb0003ffe70004fff0",
            INIT_0D => X"fff8ffeffffc0008ffeffff9fff1ffe3ffeafffffff2fff5ffe9fff300010006",
            INIT_0E => X"fff8fff5000effeefff10011000efffc0009fff90005fff1fffc0002ffe7000a",
            INIT_0F => X"ffec0004ffe1fffdfff7000b0001fff5ffeafffafff0fff9ffe6fff6fff9fffb",
            INIT_10 => X"000700020011fff3fff50010ffec0000ffdafff1fff1fff10003ffe6fffcffea",
            INIT_11 => X"fff7000dffffffe8ffedfffe00010004ffed0003000afffa000fffef00070014",
            INIT_12 => X"000600040005fff50001fff8fffffffd00020001fffc0000000a0000fff2fff1",
            INIT_13 => X"0000000bffebffec0000fff00003ffe9fffcfffc0008fff600060005fffe0001",
            INIT_14 => X"ffdcffdb00150002fffc0004fff1000afffdfff7fffd0003ffeb000ffff90000",
            INIT_15 => X"0030fff4000a002f001c00050005002e002100100019fff7ffee0022ffd9ffb8",
            INIT_16 => X"0011001dfff7001900420036001e0014fff60028ffedffe6002200480002002e",
            INIT_17 => X"00240029fff4ffd5fffeffc9ffdc000a000fffdd0034003b0027ffed0048002b",
            INIT_18 => X"ffea001c001affeeffe30003fffeffe80016000cffe6fffdffdafffffff1000d",
            INIT_19 => X"ffffffdfffbe0002ffebffec0001fff000060000ffd1ffed002f0010ffdc0010",
            INIT_1A => X"fffbffdeffebfff50015fff4ffe8000ffffaffef0006fffcfffaffe2ffc7ffb9",
            INIT_1B => X"fff7ffebfff8ffd9ffbf0003ffee0000ffce000afff0fff3ffefffd90017fffc",
            INIT_1C => X"ffdeffc9ffdfffe0ffea0006ffe7ffd1fffd00000002fff9000f000dfff00013",
            INIT_1D => X"ffc00000ffd9ffc1002e0013ffef000affdeffaaffd60024ffbd0015fff90018",
            INIT_1E => X"0004fffc0000ffe7ffeafffb002e000e002e003100110007fff40012fff0ffef",
            INIT_1F => X"fffa0009ffdffff1fffafffe0002fff5fff0002200040001ffef00050002fffa",
            INIT_20 => X"ffcbfffbffdcfff40005fff7ffda0023fff2ffb3fff0ffeafffc0004fffb000f",
            INIT_21 => X"ffe5000800240002001e004dffd5ffc40016ffe0ffa2000fffe6ffb10018fffa",
            INIT_22 => X"0024ffe2000c000c0009ffe80012fffcffbcffe3ffeeffd1ffd9ffecfffffff0",
            INIT_23 => X"002a001d002a0014ffe4ffcdffdf00050008ffde001afff8ffeb000affcffff8",
            INIT_24 => X"0003001afff6ff9bffd6fff5fffbffcb00040025ffe9003800690056002a0016",
            INIT_25 => X"000e0018001f00170006fffc0007fffd000a00280005ffd6fffefff6ffe90015",
            INIT_26 => X"00190022002f002cfff0fffe001efff0000f00010002001efff7ffe9ffeb0005",
            INIT_27 => X"00370005ffe5fff300270010001afff800120011fff9ffe5ffd4ffe400000016",
            INIT_28 => X"0022fffdfff4ffea00460000ffda00000010ffecffd0ffef0006003500250006",
            INIT_29 => X"00200018000800260005000d001dffdffff5fffc001a000000060008fff90026",
            INIT_2A => X"fff1ffecfff200110011ffd0ffe7ffeffff30009fffbffeb00130028fff30000",
            INIT_2B => X"0014000d0031fff70014002d0020ffd1ffe80018ffebffc100220008ffd9ffd0",
            INIT_2C => X"fffd0011001afff8fffbffdfffcf000dffe4ffc80008ffe1ffd7ffeafffd0013",
            INIT_2D => X"fff6ffffffeffff1ffc90000fff7fff0fffb001f000d00040000000d000efffc",
            INIT_2E => X"00490002ffd90047ffe4ffe90012fffdffc0ffcffff90019ffcfffd2fffc0016",
            INIT_2F => X"ffd90030ffe3ffc0ffe5ffd2ffe60004ffef0014001300080018000dfffc0002",
            INIT_30 => X"0011001c00130017000c000fffedfffb0035fffdffdffff40006ffd30010fff0",
            INIT_31 => X"00120002fff2fff3ffda0004000affe20016fffc0012001b00160002002effff",
            INIT_32 => X"ffeb0008ffee000a002dfff4ffe90000001bfff10002fff7ffe9000bfff30019",
            INIT_33 => X"00530025004600480013ffed001d0021ffd6fff40023ffcc000a0030ffefffe9",
            INIT_34 => X"002dffcbff980021ffeaffd5ffe100180020000a003b0021ffe900100038004f",
            INIT_35 => X"fff2ffeaffdefffcfff8001a003cffe0fffd002c0014ffe10002001efffbffde",
            INIT_36 => X"00340017ffd8ffd00009fff8ffe10000002dfff9ffda0021004e0045fff3002b",
            INIT_37 => X"004f0011ffd90017ffd0ff9b0024ffe5ffaeffd9ffd6000affdd00010029000c",
            INIT_38 => X"0017ffafffb00013ffaeffb70002ffff000a000800000003fffefff9fffefffc",
            INIT_39 => X"0014fff5fffb0001ffe6001dfffb00060050002affdc00430028ffddfff1ffff",
            INIT_3A => X"0018ffedffe90016fff9ffe30045006e000dfffa002cffe90030002dffe5002a",
            INIT_3B => X"00060003001e0027fff80006fff1ffd4ffe000000005fffcffe6002c0009ffe5",
            INIT_3C => X"ffe800170004fff2fff90027ffdbfffaffe0ffe200050002ffe90005ffdbfffb",
            INIT_3D => X"000affd600070016ffd2ffe9ffc8ffd20004ffbbffd00021ffa5ffe3fff2000b",
            INIT_3E => X"0009001e001effe2ffddfffbffe10008ffeeffde0016000dfff3fffb0009000a",
            INIT_3F => X"ffe6ffd0ffbdffe80033ffc300000064ffbbffd700120012002b0016000d0007",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"000a0003001300260036000f000a0007fff2ffdfffd9ffdf0003000cffe60029",
            INIT_41 => X"0027ffd7fff10040ffe4fff20018ffcfffb9fff4ffa2ff9afffaff7cffcd002a",
            INIT_42 => X"fffe00010034002bfff30000001bfff8ffee0019ffea000d000bfff0ffddfff0",
            INIT_43 => X"001000000013ffea001ffffaffee000900110004001e001c000e00140005001d",
            INIT_44 => X"00070018001c0000ffe8000ffff3fffcfff7ffee0000fffc0000002600120007",
            INIT_45 => X"ffe3fff300530014ffcb0058002affc9fff5000effef002a0003ffea00270011",
            INIT_46 => X"fffbfff90033ffd60007000ffff2fffd000bfff1fffc0015ffdaffd700060028",
            INIT_47 => X"fff9001700260018001afff8fff9fffc0001ffeeffecffe10000ffc3ffe60009",
            INIT_48 => X"001ffff4ffe7ffe7ffe6000affec0018fff80013fff30009fff8ffd8fffa0007",
            INIT_49 => X"ffe900070020000f000800260003fff9fff7ffed00160009ffecfffe000d000a",
            INIT_4A => X"ffa4ffa9ff74ff8affa8ffbeff99fff8ffdafffffff60009fff4000700100004",
            INIT_4B => X"00000022fffeffe30024001afffb002b001500370010002200210012ffccffa0",
            INIT_4C => X"fff80004000dfff10029005100040015005f002c00290046ffe4fffcfff6ffe4",
            INIT_4D => X"fff1fff6fffd0019000bfff3fffcffebffffffe2ffeeffe600020006001d0000",
            INIT_4E => X"ffc8ffc3ffd7ffa1ffcf0003fffdfffdfff7003c0028000b000a0017001f0024",
            INIT_4F => X"ffcfffa0ffd2ffe5ffe2ffd20025fff7fff9ffedfff0ffedffffffe9fff50016",
            INIT_50 => X"000cffefffe5ffe8ffebffea0009ffe500040018ffdfffd8ffdcfff9ffc9fff0",
            INIT_51 => X"fffffffefffc000e00150013fff5fffa0002001b000d0010001d001bffea0009",
            INIT_52 => X"000c0018002bffe8ffe80014ffd9fff5ffe8fff2ffe1fff800020007ffe8ffe4",
            INIT_53 => X"000d0003ffecfff8ffd6ffd9fff9000fffeeffe0fff0ffd7ffb1ffefffd3ffb0",
            INIT_54 => X"00170005fffe000a0005ffe4ffebfff4fff6000bfff600190029fff00006fffe",
            INIT_55 => X"fffcfff2ffe9ffdefffd001cffed000600140007fffcfff80005001e000ffffa",
            INIT_56 => X"00270014fff6fff30008fff9ffe4fff4ffe5ffef000afffb0012ffecfff6ffe9",
            INIT_57 => X"0010ffd0002afff10000000ffffffffe00040008fff00012fff6ffeb00120005",
            INIT_58 => X"00060006001e0014fffefff7fff1ffed00080009001b000800200014001d0031",
            INIT_59 => X"00030011002900340000fffc0014001fffe700030005ffeafffd003a00010000",
            INIT_5A => X"001100030000000cfff5002e0002ffe100150009ffdb000c0021000900030031",
            INIT_5B => X"000a0018002d001e0017001a001500000017ffddfff60002fff7000d000d000f",
            INIT_5C => X"0005ffed002d0023fff3000a00040000fff80007000affebfff7ffdf00010008",
            INIT_5D => X"000cffc6000000150004ffefffe4ffedfff30006001e0056002e000bffaeffce",
            INIT_5E => X"ffe1ffb3ffd9ffd0ffd7fff1ffd80006fff30022001b00370013fff2ffba002a",
            INIT_5F => X"000bffe1ffe3fff40017ffeaffdf0012fff30019004400290029000fffb1000c",
            INIT_60 => X"ffd5ffe20021fffe0028001a0011ffedffeaffef0002ffff001ffff100130005",
            INIT_61 => X"ffedfffe0033ffe400000011fffbffe0fff5ffd7ffe3ffeefff0ffe8ffd5ffe5",
            INIT_62 => X"0012ffd6ffd8fffafff8ffe8fffbffe9ffdefff7fff2fff20017ffddffeffff9",
            INIT_63 => X"ffad0003ffea0003ffe700090015001e0031000500050031001e000800080004",
            INIT_64 => X"0018ffe5000300150011000c0019000c0000003d001d00360009ffcc0044ffae",
            INIT_65 => X"ffe2fff9fff6ffc50002fff6ffd7ffd6ffdc001effbf000c0003ffdbffe9000d",
            INIT_66 => X"ffd80010ffebffdf0001ffedffff001c004d004d001000250034fffc0026ffda",
            INIT_67 => X"0016ffe8ffedfffdffec00000000ffdcffec000bffee00240018ffff00260025",
            INIT_68 => X"fff4000cfff5ffec0000fffaffdffff4fffeffca001f0007000c0020ffe2fff1",
            INIT_69 => X"ffe5ffdcfff9003b00260031006d001000280011002b001b0010000cffebffbc",
            INIT_6A => X"001afff200170009fffffff6ffbfffecfff0fff10004fffb00280013fff8ffe5",
            INIT_6B => X"fffd003500130018fff700060010fff3000e0005ffe0ffdb000b0006fff9ffed",
            INIT_6C => X"ffde0006fff7fff7ffecffe200190008ffdeffda0002fffffff9fff1000a000f",
            INIT_6D => X"00280018001f001d001bfffe000b0001fffa0011000500020000ffe50006fffa",
            INIT_6E => X"ffeefff8fff7fffafff80010fff1fffefff900140000001dfff70001fffb0008",
            INIT_6F => X"ffe6ffdb0008000b001c0059006000510017002afff7ffcafff8ffe00023fff5",
            INIT_70 => X"00130015000700140027004fffd4000d0025ffb1ffd9fff8ffdbfff20019fff5",
            INIT_71 => X"fff9fff4fff2000b0008ffe1ffe30019000affee0001ffe6000a0003ffddffec",
            INIT_72 => X"ffed001cffd900160014ffbbffd80004001e0016000c00000002ffed001fffd8",
            INIT_73 => X"fff800070006ffc4fff2ffe2ffdb000b000ffff3002f0027fffefffaffec0000",
            INIT_74 => X"fffa0002000effeffffe002c00010032fffeffee001dfff1ffeffffefff0ffda",
            INIT_75 => X"000e001500060013000cffdf0018000b002d0008000afff9ffdcffd10014fff5",
            INIT_76 => X"ffd300000012fff6fffdffed000affd5ffe40010ffe200120000000200010010",
            INIT_77 => X"0012000c001500050005000dffe5001ffffc00230060004a0071002d002f0025",
            INIT_78 => X"ffc7fff90024ffe2fff7fff0ffdbffdbfff3ffd60002fff20001ffffffed0007",
            INIT_79 => X"001ffffdfff4000400040001ffe1ffcafff2002a00130006fffbfff1fff7ffd0",
            INIT_7A => X"0000ffef00030015fff3000c0024fff0fff8fff3fffefffb0017ffe3fff9ffcd",
            INIT_7B => X"00020014ffddffeefff5ffe300100009fff0ffc1ffea0024fff70003001cffeb",
            INIT_7C => X"fff7002a000effe1000ffffc0015002600130003ffeb000800000000ffff0000",
            INIT_7D => X"fff9fffcfff5ffc20027001d0014fff2ffeefff30007ffe7ffd8ffd3ffec0003",
            INIT_7E => X"000000320014fffbffe90042fff3fffa002d0032fffeffe5fff30023fffbfff6",
            INIT_7F => X"fff0fffd000a0014001dfff8fff90019ffeffff6fff3fff9fff2ffd7fffa0027",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffd6000c0006002cfffd00130027001c001c002a000b00140009001effecffef",
            INIT_01 => X"003d002b001f0038002c0027002100410034005200140011fffe000e000dffd4",
            INIT_02 => X"0032000cfff3ffe7fff70005ffe300500034ffe0fffc002dffdefffc0002000e",
            INIT_03 => X"fffcfff4000f0006ffbaffd6ffd6fff9ffdd0002001d000f002f000ffff7ffff",
            INIT_04 => X"ffe0ffe4fff40002fffefff00024002c0003001e001c000a0026000b0002ffe7",
            INIT_05 => X"ffe5fff00002ffe6fff30025fffdfff300000000ffdfffda0023001e00080004",
            INIT_06 => X"ffc800070005ffd2ffeaffdc0018fff30009ffdd0002ffdf000fffe9ffd6fff8",
            INIT_07 => X"001bfffd001e0015001c000500010029fff2ffcefff600040007ffe6fff7ffe3",
            INIT_08 => X"ffef000dffe10010ffc8ffa3000afff3ffc5001a003d004200170001ffe00001",
            INIT_09 => X"00220001fff70009001cfff9ffe20026ffffffebffc2ffeb000afff6ffd10043",
            INIT_0A => X"fff3ffddfff30005fff50004fff90020ffdfffe3ffbe001effe1ffd30002000c",
            INIT_0B => X"0023002a00010010fff5ffea0018ffe0ffd7001ffff10023fff1ffe8001c0011",
            INIT_0C => X"003a00240034fff0001efff4ffcc000afff7fff800060011000b0016fffdffe3",
            INIT_0D => X"fff5ffed002000320025004b0029fff2ffddffe70001ffc5ffd60001fff8fff8",
            INIT_0E => X"0028ffedfffc0032ffecfffe0000fff5ffeeffea0012001effe0ffe5fffcfffb",
            INIT_0F => X"00150003005800170011ffea000c00170004ffe6000cfff6ffdf0005001d0014",
            INIT_10 => X"fff80005fff60015fffefff6ffe3ffe7000dff99ffc0ffd0001c0019ffe7005c",
            INIT_11 => X"fffefffe00040020fffafff20013000f000000290006000a00020000fff4000d",
            INIT_12 => X"000e00100000fff40036001b002a000d000b000c00170013000200090009fff4",
            INIT_13 => X"ffcdffd00013ffe1ffdc001700180015ffff001900420025000a0039001d0021",
            INIT_14 => X"000f000cfff60005fffaffe8004000430010002c0021001bffc5ffb9ffbfffe1",
            INIT_15 => X"0000ffeaffe6fffefffb0018000200320018fffdfffafff6001e00000015ffdb",
            INIT_16 => X"fffb0028fff0000a001efff5ffd0000d0018000affe8000000070013ffeaffff",
            INIT_17 => X"001b0015fffa000cfff00015000cfff0ffefffeb0003fffc0000001a00050000",
            INIT_18 => X"0000002c000effffffe6002d0003fff2000dffc700270013001f001a0017001b",
            INIT_19 => X"0015001700110015ffdd00090019000f0006000dfff7ffd1ffe1ffe1000cffe7",
            INIT_1A => X"ffe90000fff40009000d000500330022000cfff90011fffffff3ffeaffca0034",
            INIT_1B => X"ffd6fff6001afff1001c001b002500120022ffff002f0006fff4ffe500340002",
            INIT_1C => X"fffbfff8000efffb0000ffd60015ffd3ffccfff0ffc7ffccffccff9bffea0001",
            INIT_1D => X"fff8001b00160008000cffecfff1ffd6ffdaffda0000ffeefff20008000b0006",
            INIT_1E => X"ffdbffebffde0005001fffebfffd00350024001b000efff9001dffe5ffedffe5",
            INIT_1F => X"fff0001dffcdffe90007ffd5ffc2fff3ffe100200010ffe7000dffdc000e0012",
            INIT_20 => X"ffe7fff40019fff900250019fff6000effebfffd000d001bffcbffeefff80019",
            INIT_21 => X"ffc00010ffdbffdaffd5ffda0002fff2ffe1fffafffefff2fff5ffe0000afff1",
            INIT_22 => X"ffe5ffe9ffeb00010003ffddfff2fff1fff3ffe7ffe6ffc4ffd4ffddffeaffbb",
            INIT_23 => X"ffd4ffdcffec00000000000e004300390025ffee000ffff1ffd1ffdbffd9ffc5",
            INIT_24 => X"001f00270001fffaffe9ffe2ffdffffbffff00050015fff9fff10016000dfff0",
            INIT_25 => X"ffc5fff2ffb3ffb6001bffa9ffa9ffe4ffa6ffb3ffc6ffe1ffc7000e00140005",
            INIT_26 => X"ffeaffd4ffc1ffa8fff4ffc4ff9bffc5ffa0ffc6ffa8ffdaff94001e0019ffa7",
            INIT_27 => X"0029ffca0000000affe1000bfff3ffdbfff2fff40010000bfffb0015fff0ffda",
            INIT_28 => X"0017fffc00150017ffe6002200000001ffdb000a0027000c00260031fff1001d",
            INIT_29 => X"ffff0007fff200160008fff600470021fff00027ffd4fffe0036ffecffe9000a",
            INIT_2A => X"0003ffd1fff2ffe2ffe8fff50015ffbeff7affd1ffbdff9cff860001fff8fffd",
            INIT_2B => X"ffccffad0000ffe40017ffecfff2fffeffe800000007fff5fffefff2fff40000",
            INIT_2C => X"001700130008002f00160011fff5ffebffd9ffd6ffe3ffd0ffdfffaeffd4ffe3",
            INIT_2D => X"fffafff6ffe4fff4ffd8ffeefff1ffde000c0002000c00020012001000260033",
            INIT_2E => X"0024002e001a0034fffbffc0ffbaffb0ffdaffd8ffee0010001c0011fffbffe9",
            INIT_2F => X"00050000fff0fffcfffa0000ffef0015fff9fff0ffebffe7fffa002d001d001e",
            INIT_30 => X"0005001a0004000b002a000c0013ffee0000000600000028000c0017fff8fffc",
            INIT_31 => X"0054007a002f006d004f0033001a0006fff5001efff70003fffb0011fff40029",
            INIT_32 => X"001efff9ffed0023fff7fff8ffd50010000dfff400030032fffb0013002a0064",
            INIT_33 => X"ffb1fff6ffbbfff8fff3000bfffdfff1000d001b0013fff2fff8003affff0003",
            INIT_34 => X"00200027fffffff800150000ffe8ffdd000600150018ffafffd2ffeaffb9ffa3",
            INIT_35 => X"003700150014001affeefff50006fff1ffdfffd3fff6fff5000100210012fffc",
            INIT_36 => X"fff6ffcfff86ffacff99ff8bffb60006fff0000a000ffffafffefff9fff90000",
            INIT_37 => X"0009fff100440016fffbffd7ffe8ffe800140007000200420047ffdcffd6ffca",
            INIT_38 => X"001e003e0019000ffffe0011004d0006001c002100300030ffcfffe00001ffe3",
            INIT_39 => X"fffa0003ffebffd1ffe5ffd7fff0ffc2ffd7ffdc001300180007001f001f001f",
            INIT_3A => X"ffd1ffd9ffefffcbffddfff8ffe4fffa0009001900240005001e001600100019",
            INIT_3B => X"ffddffcdfffbffcbffbcffe7ffdf0009ffe50004fffbffc1ffefffe4ffa20000",
            INIT_3C => X"fff50011fff40000ffddffd60012ffe1ffe3ffeb0013ffd0ffc9ffe6ffdf000d",
            INIT_3D => X"ffebfffb0006ffeeffc9ffe1ffd2fff4ffd4ffd3ffcf00180011fff9000f0001",
            INIT_3E => X"00240039fff40006000affd6fff6ffe7ffc3ffd60000fff3ffebfffefff30012",
            INIT_3F => X"001cffe3ffef0001ffdcffbfffdeffb7ffbfffc7ffbeffc5ffa6ffa7ffeaffd5",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0027000f0006fffe0008ffef0000ffaa0007ffe9ffe80027000e001effe60000",
            INIT_41 => X"fffffffcfff800190016fff900030010ffef0020000fffeb002f0017fff90022",
            INIT_42 => X"0018fffdffeb000cffe4fff5ffccffc5ffdaffc20016001a0001000c0008000a",
            INIT_43 => X"ffdeffa40005fff2ffb7ffff002bffedfffa000cfff6ffef001500190011000a",
            INIT_44 => X"fffafff3fff0000ffffbffe70005ffe6fff50005fff2ffff0025002a00100006",
            INIT_45 => X"000800370013001c00040000ffbefff60008ffe5ffe0ffc8ffebfff80009fff3",
            INIT_46 => X"00320019ffcb0002ffe1ffdffff2ffd6ffd90005fffa0012ffadffe3fff20000",
            INIT_47 => X"0004fffd002afffd001600120000ffeb00000017001afff80011001ffff8000c",
            INIT_48 => X"fff5000a001c0005003e000f00160017ffe90000000a0003000d0014ffeeffee",
            INIT_49 => X"00060032000fffe3ffce001c000afff4000e001bfffc00010000ffe900030000",
            INIT_4A => X"00030018fff70007fffc00220008fffb000b0002fffcffee0000000b002fffe7",
            INIT_4B => X"ffea000fffffffee001800010003000f001b000000220004ffef0009ffeeffed",
            INIT_4C => X"00010028ffdc0034001bffc7ffdd001e00500018004800310017ffe500250000",
            INIT_4D => X"ffe5000dfff900110000001bffd0ffe2ffa9ffd8fffeffedfff200220011fff7",
            INIT_4E => X"ffe7002400260023ffebffd4ffc4ffc8ffcaffd3002cfff0000dfff20009ffe6",
            INIT_4F => X"ffddfff20043fff700110019001bfff70020002b00140013fff9fff90008ffe1",
            INIT_50 => X"ffc6ffc2ffbe0000fff8ffe400210046004a003e003d002cffdfffe5ffecffde",
            INIT_51 => X"ffb6fff6fffeffe2000f00250021ffdfffefffd1000c001cffecffb4ffd1ffc7",
            INIT_52 => X"fffaffe9fff5ffff000dffcdffe9ffbafff800310002ffd3ffdeffe10003fffa",
            INIT_53 => X"0016001e00210004ffedfffb002e00110013000e000a0000001effe5fff0ffea",
            INIT_54 => X"ffccfff6fff1fff6ffce00000000001a002d00520003ffdc000e0013fff1fff5",
            INIT_55 => X"ffd4fff5ffe1ffeffff4ffafffa5ffd800120012ffeafff8ffe2ffe9ffd0ffac",
            INIT_56 => X"ffdbfff5ffd0fffc000efffefffdfff7002a000c0034000efff7ffd7ffb2ffbc",
            INIT_57 => X"001dffcafff1fff00037fff2ffe3001400120000000f0000000f000fffebffb2",
            INIT_58 => X"ffe8ffd6003cfff20001003b0015fffefff200070018ffcc0000000fffcdfffa",
            INIT_59 => X"ffe8ffeeffcc000b0000ffe3001c00290010000b001e001b00220023001bfffc",
            INIT_5A => X"0042003e00400043002a004b0033fff900020015fffcfff4000e001a0006000c",
            INIT_5B => X"ffc0ffdeffe3ffdfffdeffdaff94ffbeffbcff8affbcfff5ffbafff0003a0038",
            INIT_5C => X"ffd9ffe9fffaffe1ffbeff86000cffbbffc4ffe6ffe2fff7ffe5ffe4ffa2ffef",
            INIT_5D => X"000effefffe0ffdc000dffebfff700270042fffe0042002f0037ffff0000000c",
            INIT_5E => X"0010000c000afff1001e00220015000a000800150027000500210010fffb0001",
            INIT_5F => X"0029fff50022000d001000210003ffdbffcb00020005ffdb001b000b00140038",
            INIT_60 => X"ffefffebffe9000b000a001effe4ffe7fff7fff0ffd8fff0fff80017fffdffee",
            INIT_61 => X"ffe9000c00090007ffed003200310014001600210013fff2000cfffffff1fff3",
            INIT_62 => X"00090010fffa00030000ffdaffe9fffcffe400060010001efffb0000ffedfffe",
            INIT_63 => X"fff700000005000afffd001e000e002500130020003a0048fff9005e005d0033",
            INIT_64 => X"fff60001001f000f001dffe4fff8ffe8ffe6000dffe3ffe80000ffea000d000e",
            INIT_65 => X"00030019001100070002001affe70018000fffeafff5ffd20019001400140008",
            INIT_66 => X"00030003fff6fff4001c0011000300290012001c00110007000bffe6000ffffc",
            INIT_67 => X"ff70ff97ffc3ff94ffb7fff7ffdeffbbfff30004ffd30006000dfff90004fff1",
            INIT_68 => X"0009002dffd80021001300030019001100040023000f001000240021000affc0",
            INIT_69 => X"ffd2fff4ffd4fff6ffec00100025ffedfffb000a0009001800320006000affe6",
            INIT_6A => X"ffe8fff1ffdfffea0004ffea000800090001ffe9ffef0008ffe7ffc80009ffd5",
            INIT_6B => X"00090000fffb0003000e0003fffc000ffff000000015000d000300120018ffe6",
            INIT_6C => X"ffd4ffe2ffc7ffeffffc00040011000a000a00030003000bffea0000ffeaffeb",
            INIT_6D => X"00030029ffd6fff700090015fffb000bffedff9affabffccffc1ffc2ffdeffd8",
            INIT_6E => X"00330042001a000500240005ffe9ffd6ffb2ffb3ffc1ff96fffe00350036ffe5",
            INIT_6F => X"001b002cffeb0009ffe5ffdeffa3ffbfffe9ffd8ffd6fff1ffcf002700160000",
            INIT_70 => X"ffe7ffcbfff6ffcaffdafff9fffdfffa0034000a001c001e0000fff7000f000e",
            INIT_71 => X"ffedfff3ffd8fff50007fff2ffee000afff80007ffed0001fffc00140010ffee",
            INIT_72 => X"000200180003fffcffc6001efffafff2000c00080007001d001400240029fff3",
            INIT_73 => X"0036000e003b0030004dfff2fff90003ffd3ffd6ffdbffda000100000005fff9",
            INIT_74 => X"0000ffedffd8ffebfffdfffdfff10001ffe9ffe3ffedffc4ffec000effe70018",
            INIT_75 => X"0008fffffff1001b0006fff5fff400160036001700340010000bffd500070004",
            INIT_76 => X"0015ffed001b000cfffbffe4000a002affff0005fff0ffd2fff9ffd6000b0014",
            INIT_77 => X"ffff00100031ffeb0004fff7fff6001c001ffff4000d000c00130005ffeffff6",
            INIT_78 => X"0003fff70006ffeb002800150002000c001afffd0014ffeeffd2ffe7000efffa",
            INIT_79 => X"000effc600500034ffcf002d001dffc40011001a000dffecfff600060012000f",
            INIT_7A => X"fff3ffeffff40004fff30001002e003a002affe60000ffe2ffcbffcdffc9008d",
            INIT_7B => X"002affd9fff4fff000160015ffbffff9fff1ffe5000a0008ffe4000100200031",
            INIT_7C => X"000e0022001dffe9ffd8000d0006ffea0016002e0011ffeb00360037ffe70009",
            INIT_7D => X"fffa0022001cffd900160036002800170025fff80010001bfffd001e0025fff3",
            INIT_7E => X"0005001800060003fff30004fff7fff500170004001a000a0006000c0008fffe",
            INIT_7F => X"ffea0006ffd1ffe2fff7fffbffd90015ffe9ffeafff0fff3fffa000fffed0030",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000fffecfff4ffaaffa3fffeffffffd2ffdefffaffbfffe2004d001a0002002c",
            INIT_01 => X"ffec0000ffc5ffc5ffd6ffa8ffa2fff100250021fff1ffe2ffecfffbfff30000",
            INIT_02 => X"fff3fffbffea00060004001100150022002e000effe0000afff0ffca0007001b",
            INIT_03 => X"ffe40022001d001f0016000affacfff20011ffd500060016ffc9ffe5000affe9",
            INIT_04 => X"ffd8ffe4ffe9ffe10009000a0022ffef00080007fff9fff60000ffd5ffecffea",
            INIT_05 => X"0005000b000e00060016000b001dfffdfff50023001800060002ffe10001fff9",
            INIT_06 => X"fff40003fff5fff2fffc0028ffedfffdfff8ffd1ffabffc6ffee001500060001",
            INIT_07 => X"fff9fff8002100050000000ffff70002000d000c0002003b0047002100260036",
            INIT_08 => X"ffedfff10014000d000effc7fff3ffb5fff50026ffdffffb002700230006ffe2",
            INIT_09 => X"0021001d00330002ffdeffc20015ffcfffe1001c002f0033ffffffd1ffbb0007",
            INIT_0A => X"fffdffff00090010ffd900070006ffffffd9ffec0023ffcbffe0000dfff8000e",
            INIT_0B => X"ffc200240006ffb10028fff7ffe80036ffdaffc3ff9d000f0010000c00200024",
            INIT_0C => X"fff2002a000ffff10026002200190001ffee000ffff40009000500030004ffd8",
            INIT_0D => X"ffe1ffe9ffd80006fff9ffd4ffeaffedfff6fffbffd0ffe4ffe7ffcc0024000b",
            INIT_0E => X"000b001dffe8ffde000cfff8ffecffe9fff2fffbffee0034000300070012ffef",
            INIT_0F => X"fffb001d0029fff3002c0022ffe00013000a0027ffd4ffadfffcffffffd90002",
            INIT_10 => X"0010003500280013001bfffa00000001000a0016000dfff60013000400180001",
            INIT_11 => X"ffe3ffc9ffeffff80013fff90001ffd90012002d001ffff40021003bffef0031",
            INIT_12 => X"fff8ffd4ffe6ffff000d0007000400230000001300060028fff1ffd60004ffed",
            INIT_13 => X"fffd00090011ffe2000c001ffff80009fff6ffe4ffd5ffb9fff3ffd9ffbeffe2",
            INIT_14 => X"fff3ffe0000affedfff9fff6fff600110029001fffe4000e002000040000fff6",
            INIT_15 => X"001000200019001a00200027ffd7fff6fffeffeb0006002dfffffffcfffe000e",
            INIT_16 => X"ffe4000e001c0006ffe0ffd4fff70000fffeffc4001800030005001efff7fffa",
            INIT_17 => X"ffd2fff0ffe70004fffd000c001dffe8ffe7ffd9ffedffd8fff60006fff6fff8",
            INIT_18 => X"ffd8fffd0032fff0ffdd0025000a00080011fff4ffcefff2ffe9ffbdffe8fff0",
            INIT_19 => X"ffd8002f0012fffefff8002c001d00010018ffdaffce0017ffcb00100030fff3",
            INIT_1A => X"ffd1fffd000b00100012ffe1ffd90039fff9002b0036001effe60012ffe90017",
            INIT_1B => X"000a0011000bffe6ffdeffebfff6ffe70012000e00100008fffaffe2fffc0000",
            INIT_1C => X"0020fff4fff30008000dfff8fffa0015fff1ffdefff4ffe90005000dffd4fff4",
            INIT_1D => X"0001001afff800040009fff7ffd600110033fffbfff1000dfff0fffe000c0000",
            INIT_1E => X"00000008000f00000002fffa001d0029ffd70029003c0011000c002200100003",
            INIT_1F => X"ffd10001ffecfff2ffd1fffcfff1ffe70006ffc8001dfff60003ffd600050045",
            INIT_20 => X"00000004ffd8002b0003ffc1ffcdffe10000ffe5fff8ffd5ffa9ffe7ffdcffbe",
            INIT_21 => X"ffe0fff1001c0019fffb00200005000e000500090002ffee0001fffdfff7fffa",
            INIT_22 => X"0028ffc4ffeb0025ffdbffc9ffdefff5fff0000afff2fffe000a0010fff6fff6",
            INIT_23 => X"fffbffe6ffd8ffb8fff40029000affdb000dfff0ffe6ffd6ffc7ffe3ffec0004",
            INIT_24 => X"ffeefffbffda004d0054fff20010ffeaffeeffc8ffb7ffea0033fff0ffe80028",
            INIT_25 => X"0028ffc2ffc7ffd9001a0031001effff0017001b002f00290029ffe6000effe2",
            INIT_26 => X"0049002effeefffafff1ffecfff5ffcf0011ffedfff00018003a003f00130018",
            INIT_27 => X"00030007fff9ffd9ffddffcffff5ffd7ffc8003a002000280024001a00180010",
            INIT_28 => X"0006ffedfffb00090035000cffe4000a00280000fff4ffdcffdc00000021000c",
            INIT_29 => X"ffe5ffa2fff0ffc3ffee00190028006e0025000e00420012fff7fff9fff80015",
            INIT_2A => X"ffedffdb000dfff5ffe5ffedfffa00140005000d003f00230009003c0000ffbc",
            INIT_2B => X"ffdcfffc0000fffffff2fffd0005000e0035001500460030005100310030002c",
            INIT_2C => X"ffff0000ffc0ffecffd2ffd50006ffd70001ffeeffe1000d0004fff1ffeeffcd",
            INIT_2D => X"ffbefff9ffebfff9003b003bfff7001a0017ffccffe0ffdc000200350019ffdf",
            INIT_2E => X"ffcbffeeffcbffdc0001fffb0013001200070024000300350042ffdefffa000f",
            INIT_2F => X"0018ffcc00180040ffd800000034ffb9ffcf000c000affed002d0001ffecffd5",
            INIT_30 => X"003cfffafff3001a002dfff8ffe1ffe5fffc000400050045ffe2ffc90023004b",
            INIT_31 => X"000d000affd5ffeffff10008ffef001c00230014002d0044001efffaffbeffe1",
            INIT_32 => X"ffe80002ffd5ffd7ffbd002f001d000d00480043000c003afffdfff10013ffda",
            INIT_33 => X"0001ffefffea0013ffe7fffd002c00180003fff7000d002a0010002a0022ffec",
            INIT_34 => X"fff5fff5fff60002fff40013ffed00120007fff7fff2000a00080000fffa0000",
            INIT_35 => X"ffff0000fff5000e0000fffbfff90010fff0fff3fff9000a0007fffcfffafff3",
            INIT_36 => X"000300000005fff9ffffffee0000fffc0000ffe6ffedfffd000bfff400070002",
            INIT_37 => X"fff3fff6000400000000ffecfffd0010fff6fffefff1fffcffebfff4fff4fff7",
            INIT_38 => X"0000fffcfffbfff0fffdffef0009fff1fffa000300100004ffe90001000dfff4",
            INIT_39 => X"0004fffe0002fffb0013fffdfff5fff6000300110003000a000a0000000afffb",
            INIT_3A => X"fff70002ffec000f000700000000fff3fff5000c00070006fff9fffdfff10017",
            INIT_3B => X"000efffdfffbfff7fff5fff00002ffef000bffeb0006fffd000d000000010003",
            INIT_3C => X"ffea0011ffecffff0006ffeaffea00000003fff4ffecfff1000bfff900000000",
            INIT_3D => X"00040007fff50000fff6fff8ffeb000e0005fff5000f000cfff0ffee00110010",
            INIT_3E => X"000cfff3ffed000e0003fff0fff9fffafffb0007fff3000200110015000afff1",
            INIT_3F => X"fff4000b0006fffd0003fff50002000d0004ffe8fffffff90002ffff000efff3",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffdfff90012ffeeffe90005fffafffc000dfff0000affeb0009000afff4ffe9",
            INIT_41 => X"fffe0005000afffe0003fff6fff8fff0ffeaffedfff30004fff0fff2fff4fff1",
            INIT_42 => X"fff6000f0005000bfff6fffe0000fffe0003fff9fff30004ffe8fffefff4ffe8",
            INIT_43 => X"fff800040000fff6ffee0004ffebfffafffbffeffff50009fff6000d00070011",
            INIT_44 => X"0009ffeaffec00070000fffcfff9ffebfff2fff80000fff50003fff6fff50001",
            INIT_45 => X"ffe9fff4fff3ffeefffbfff9ffff000800060003fffbfff7fff90000ffeefff3",
            INIT_46 => X"fffaffd5ffe9fffd00020015fffdffeeffe90006ffe70008fff8fffefffafff8",
            INIT_47 => X"0018003a00400048001d00280043002e001f0014fffcffdffffcffddfff3ffe4",
            INIT_48 => X"fff7ffe0fffb00330031002cfff0000b0030ffdafff2fff9ffe60002000b001e",
            INIT_49 => X"0005ffe9fff6fff4fff7ffd7fffefffe000affeaffe10017ffe9ffeefffdffe0",
            INIT_4A => X"ffe9000d0001fff4001b0019001c001600000027002000260022001300040018",
            INIT_4B => X"ffefffdbfff20002002f0008002400000022ffe5ffc3ffdbffe8ff9affb20006",
            INIT_4C => X"fffcffe5ffce0001ffcfffbfffeeffd5ffc4ffd2ffe6ffc1ffc9ffe0ffe8000c",
            INIT_4D => X"ffee0016002e000d0017fffe000500020002000cffed001000210013fff50003",
            INIT_4E => X"001e00090007fff9fff2ffddfff2ffd1ffeaffeffff900010015fff20010fff6",
            INIT_4F => X"fffd0009ffc30000fffffff7ffc7ffcdffe0ffe5ffddffaeffafffefffc6ffcf",
            INIT_50 => X"002c0026ffec00090028ffc7ffa3ffbaffb1ffb1ffb8fff4001b00010007fff8",
            INIT_51 => X"ffec000b0027fff5ffecffdefff1ffeb0013fff400010015001f001300250006",
            INIT_52 => X"fffe001c000a00160006ffd1fff2fff6ffebffd50009fffa000900040013002b",
            INIT_53 => X"fffb0000fffd0029002c001900300020ffff0007fff90004fffffff300140007",
            INIT_54 => X"0007fffcffc7fff7ffbdffb7001700010023002400070023002000420024000b",
            INIT_55 => X"00240024002e004100130006000a001f0028fffcfffbffe200170020000bfffd",
            INIT_56 => X"0010000f00010008000d0003ffda0004000cffcaffdcfff0ffee000b00140014",
            INIT_57 => X"00220014000b0010ffdcffbe0002ffb8ffedfff2ffeffff5001d000b00280013",
            INIT_58 => X"00030023fff90003002800130035ffe90006fffdfff7fff600070015fff90000",
            INIT_59 => X"ffdffff7ffe9fff1ffc800160030002c0015002e002d003cfffc002a00020000",
            INIT_5A => X"ffd8ffddffdb0002001d0014001400350037ffcc0019ffefffcf000c0012ffee",
            INIT_5B => X"001cffc3ffc7fff50020001c000e00330038004d0007001e000e00230027000e",
            INIT_5C => X"001b0012002a002c00010007fff8002efffbffc9ffe8ffd3fff7ffe900160033",
            INIT_5D => X"00330000ffdd0006ffeb0001ffef00000026ffe7ffdf002bfffe0011002c0017",
            INIT_5E => X"000a00040004001bffe0ffdc0007001e001fffe2000e002dfff6fff3fff2ffe9",
            INIT_5F => X"000d000cffe9ffe5fff2ffddffe20002003500120030ffe3fff80006ffdf0011",
            INIT_60 => X"0001ffe7fff6ffe5fffa001d0003000800060018003e00100021003f0010ffed",
            INIT_61 => X"fff60027fff4000500280010001afff9ffd6ffd10029ffef000b0013fffbffe4",
            INIT_62 => X"00350008fff4fffd000efff100070024000900040018fff50006fff6ffe9ffde",
            INIT_63 => X"ffe9000100000006000efff6ffde0003000afff4fff2fffdfff60008fff20000",
            INIT_64 => X"ffe3fff7ffef00280017000b00150028002a004a000f000b001c00100013000f",
            INIT_65 => X"0001ffdc003ffff800120000ffcf0001ffe0fffb000dfff5000a0005ffd7fff2",
            INIT_66 => X"0001ffe10011fffffffd0013ffb5ffc7ffbcffdcffe7ffeffffa000bfffe0022",
            INIT_67 => X"0001fff4fff6fff1fff3fff4fffe001100030019001e00130048fffeffd80019",
            INIT_68 => X"fffaffe10013ffdbfffbfff80002001b001900250020fff1003a001a001f0004",
            INIT_69 => X"ffed00010019fff6ffd7fff5fffb0010001effeb0001ffe9fff1fff5fff7ffdd",
            INIT_6A => X"0008fffeffea0001ffeffff0ffe70000000a0015000800030014ffebffee000a",
            INIT_6B => X"0004000dfff4000bffe8ffedffebfffd0008fff5ffed0005000a000200000002",
            INIT_6C => X"fffcfff8fffe0002000a000cfff600150007fff6fffd0002fffd00020011fff3",
            INIT_6D => X"00070006ffe5fff1fff4fff40000ffff0007000b0003ffff0005ffe6000bfffe",
            INIT_6E => X"fff2fff5ffe7fff0ffef00050009fff10001fff6fffbfff8ffeafffc0001ffeb",
            INIT_6F => X"ffee000a000100090005ffe7fff9ffe5ffe8ffe700000009ffebfff1000cffed",
            INIT_70 => X"fff1fffcffebffecfffd00000000fff9fff5000ffffdfff9000affeefff9fffd",
            INIT_71 => X"fff5ffe6ffe60000fffcfffe0002fff5fff40009ffeffffffffa0009000bffe5",
            INIT_72 => X"0001fff9fff1fff1000f000f00070004fff0000200040004fff100000001ffe9",
            INIT_73 => X"ffeafff90002ffeb0001000b0003fffc0007fff10000000b0000fff5fff3fffc",
            INIT_74 => X"fff3fffffff2fffc0007000f000fffec00000002ffec0008000dfff5ffee0009",
            INIT_75 => X"0005000effeb0000fff0ffe3ffedfff8ffec000bfff9fff2fff6ffe3fffefff6",
            INIT_76 => X"fff00007ffedfff4fff8ffef0004ffff000d0000ffec000effeefff6000d0007",
            INIT_77 => X"000b0007ffe40004fff2ffe7000200000005ffee0007fff9ffeafff000000004",
            INIT_78 => X"fffdfff3fff600130006fff8ffefffe0fff4ffdeffdfffe600030000ffe1ffed",
            INIT_79 => X"fffdffe60007fff4ffe70005ffecffebfff8fffa0001fff3ffe9fff00000fff6",
            INIT_7A => X"ffe7fffbfffcffe5fff30005fff40010000bffecffffffe300050013fff20007",
            INIT_7B => X"0005ffe8000f0006ffecfff9fffdfff4fff4fffd0006ffebfffefff2fff50000",
            INIT_7C => X"0003000a00030009ffebfffd0004ffef0006fffdfffe0014ffed0012fffdfff6",
            INIT_7D => X"fff7ffefffecffeb0000ffe900050001001100040005fffdfff7ffed0000ffff",
            INIT_7E => X"0002ffe4ffe9ffeefff4fff000060009fffc0003fff3ffeefff2fff70009ffec",
            INIT_7F => X"ffeafffeffecfffa00020002fff5fffeffe8fff4fff4000b0009ffe2ffefffe4",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000b0000fffe00000000ffe7ffef0007ffecffe7fff5fff1fff60005fff9fff3",
            INIT_01 => X"0005ffe3fffcfffc000500000005000800080008fffeffedfff6fff000060003",
            INIT_02 => X"0005fffa000f00080003ffe9fffc000effe9ffea000bfff9ffeb0000fff7fff5",
            INIT_03 => X"000affe9fffffff6000affecfffdffe9000c000400020004000b000f00080009",
            INIT_04 => X"fffcfff7fff30001fff80000fff6000efffaffeb0006000800000006fff2fffe",
            INIT_05 => X"0008ffedffeafffdfff40006fff80004ffed0000fff1fffefff6000c0012000e",
            INIT_06 => X"fff9fffcfff9ffea000dfffaffef0013fffb0005fff6000a0005fffcfff7fffc",
            INIT_07 => X"0007fff40002ffeffff20003fff5fff0ffff000affec0002ffe5000affe9fff1",
            INIT_08 => X"0006ffed0000fff1fff6fffe0000ffecfffbffeffff2ffebffecfff20005fff9",
            INIT_09 => X"ffebfffaffe6000ffff6000a0009fff4fffafff9ffe7fffaffff0004000b0005",
            INIT_0A => X"fff5ffeafff00000000ffff9fff30004ffeefff8ffe9ffeb0003fff2ffeb000c",
            INIT_0B => X"fff50007fffbffeaffeefff5fffafff1ffeaffec00100005ffe9fffcffe4fff8",
            INIT_0C => X"fffaffec0003fff1000e00020003ffebfff5ffe5ffeefffafff9fff50009ffef",
            INIT_0D => X"fff7ffee000dfff9fffffffeffff0006ffeeffeefff3fffa0000fff50005fffa",
            INIT_0E => X"0016fff6ffeeffdc001e002d00020000ffedfffafff70008ffe9001100080000",
            INIT_0F => X"ffc9fff2ffd4ffe9fffdfff900310035fff4002600320005002e00220000000c",
            INIT_10 => X"fff2000b000b000a000a0038fffc000b003effd9fffb001effb3ffa70012ffa9",
            INIT_11 => X"ffe1ffb7ffecffe4ffea0003fffa000f0022002affe2ffe8ffe9001700290016",
            INIT_12 => X"000f0003fff0ffe10007fff2001a0035002d0015003afff30010ffdf0018ffff",
            INIT_13 => X"ffe4ffbeffd30001002e0004002afff800160026fffcffe90022ffd5000d000e",
            INIT_14 => X"fffdffddffea00010006ffc90012fff5ffe00018000e0026fffb000cfff70013",
            INIT_15 => X"000c0038fff50015fffa0006ffffffd600130000ffdc00130008001500180007",
            INIT_16 => X"00200005ffd1002afff1ffe400150003ffecffe7fff3fffcfffe0018ffff0004",
            INIT_17 => X"0000001affe9000200230001fffeffcb000efff4ffd9ffd2ffbd0014fff2ffc6",
            INIT_18 => X"0009001d001a002e0016ffe5ffdcffce003ffffc000a0012fff7ffc60005000c",
            INIT_19 => X"000a002d00310019001cffed00130000fff0002a001bffe3fff1000dfff9000b",
            INIT_1A => X"0034fffc001c000cfffdffff0017000a00260018fff7000effec0003000d0005",
            INIT_1B => X"ffe4ffaafff4ffdbffe9001e002d0016ffeefff4ffeffffc00080006ffe60014",
            INIT_1C => X"00350008fff90018ffe6fff6ffe3fff80005ffeb000dfffe00130003fff2ffd3",
            INIT_1D => X"fff8ffaffff8fff8ffed001dffe9000d00100017fff1001d001f0019fffffff9",
            INIT_1E => X"0003ffcfffefffff0009002b000dffeb00000006fff8ffbfffcfffdaffcdfff0",
            INIT_1F => X"00070001ffe10017fff3000e001cffd70001000c00080015ffda0000ffe8fff9",
            INIT_20 => X"ffe1ffedfffeffdcffe4ffe30002000efff4000cffef000d0007fff9fffe000c",
            INIT_21 => X"0009fff9fffdffe90004fff9ffee000dffedfff7ffe8ffdf0002ffeffff0000a",
            INIT_22 => X"fff9000fffed00000003fffefffa000cfff5fff0fff4ffe4ffebffd4ffedfff7",
            INIT_23 => X"fff7fff20000ffebffeefffbffe500030002ffedffe900010000fff400040001",
            INIT_24 => X"0008ffe9ffecfffdffeb000a0000fff6fffd0007ffe9fff40006ffebfff00002",
            INIT_25 => X"fff3fff1fffe000dfff5fff50016ffff000dffe8fff80007fff200030009fff1",
            INIT_26 => X"fff6ffea000f00060005ffe9fffdffe6fff8ffe90013001200000004ffe8ffea",
            INIT_27 => X"0011000b000afff700010000ffe80002fff1ffe40005fff1fffefffeffedffe4",
            INIT_28 => X"fff80000000cfff9fff7ffed0003fff9ffeefffdffe5fff4ffebfff3ffe9ffee",
            INIT_29 => X"0001fffd0000001100140019fffd000000200008000cfffefff7fffb00100016",
            INIT_2A => X"ffe6fff1ffeb0000ffe800000002fff6fffafff9fffd0011fff500050004fff6",
            INIT_2B => X"0000ffe0fff5ffe3ffec0000fff4ffe0ffefffefffecffe00002fff7ffe8ffff",
            INIT_2C => X"000bfff30020fffd000cfff9000ffff7ffe6ffe000080002fffdfff2ffebfff7",
            INIT_2D => X"000c0000ffe6ffe8ffe9ffdcfff4fff10008ffed00060000000000090012fffa",
            INIT_2E => X"fffc000f00120011fffafff3ffedffedffebffeafff0ffe6ffd9fffc000bffdb",
            INIT_2F => X"fff7fff40002ffe8fff0fffefff8fffaffe3fff8fff000080004ffe6000effe5",
            INIT_30 => X"0007000afff0fff1ffea0009ffffffeafff10000fff6fff5ffec00030001fffa",
            INIT_31 => X"ffffffe9ffebfff9fffc000efff9fffaffe3fffefff9fff2fffa0008ffebfff0",
            INIT_32 => X"0057003a0062004a0042003c001c0005001a0018000e00070004ffee001a0019",
            INIT_33 => X"fff4ffe50012fff5ffe5ff74ffb8ff83ffaeffb6ffc0fff7ffef0000ffc60006",
            INIT_34 => X"fffa0018001affbeff63ffebffc4ffbcffdcfffd0006fffd0063000f001b001c",
            INIT_35 => X"00090000ffe50000000000080012fff4000afff600540034002affedffe00004",
            INIT_36 => X"0009002c0014003a00190030001400160007002d00160006fff4fffcfffa0011",
            INIT_37 => X"ffff002a0047000200240025fff1fff50007ffb0ffe0fff5ffc3fff1ffe5ffbb",
            INIT_38 => X"0004000effeeffddffdfffc1fffeffcbff84ffc9ffb5fff5fffdff6eff9e0023",
            INIT_39 => X"ffd60012fff9fffbfffdfff9001f0031ffdc0023000f00650031001dfff9ffed",
            INIT_3A => X"002200160003ffe7ffde0014ffd6ffe1fffc0031001f000affa8ffe4fff0ffd7",
            INIT_3B => X"0001001700210022000b000f0028ffea0002fff6ffed0007002c00140049000a",
            INIT_3C => X"0002fff90015000e001bfffb0018fff6ffe80016ffe1000effda00020015fffc",
            INIT_3D => X"fffd0000001d0001fff6fff8fff6ffeaffdcfffdfff9000e0013001300090002",
            INIT_3E => X"002100000009fff3ffee000ffffd000f000cffe80009fffbfff8000a0000fff1",
            INIT_3F => X"ffb5fff5ff9bffd6ffb8ffffffb8ffe6ffc7ffcdffebffe4ffe6001efff30001",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffdefffbfffaffecfff9002effe9fff4000c0007002a002000320024002fffa2",
            INIT_41 => X"ffe4001dffd0fff0000e000f000cfff0fff8000effeafffefff3000ffffffff7",
            INIT_42 => X"000ffff10014000b0013ffcfffc0ffbbffd3ffd2ffe0000e0019003bfffafff3",
            INIT_43 => X"001b001afffdfffeffff0005fff6ffe5000e001a000b00090017ffe6fff90001",
            INIT_44 => X"ffefffeffff70017fffd0021001200020010000e0008fffc000400140018fffc",
            INIT_45 => X"0019002f00070000001affcbffd50003ffc4ffd2ffeeffccffedfff9000cffd0",
            INIT_46 => X"ffc4fff2ffcaffe6ffeaffd9ffcfff94ffe5ffe0ff96fff3fff00021003b002c",
            INIT_47 => X"ffdbffeeffedffe2001dffee000900130000001600310040ffdffff50009ffe9",
            INIT_48 => X"fffffff9ffea0005004d000f0032004d001ffffc000f00290013fff60005ffd3",
            INIT_49 => X"ffe0ffd70024ffff00210025ffe3fff6ffe9ffdafff4000afff5ffea0002fff6",
            INIT_4A => X"fff3fffbffdffff3fffefffbfff20002001dfffeffecffeb0000ffe10000fff5",
            INIT_4B => X"ffef00110001fff90022003700050015ffdeffe7ffde00170018001500290016",
            INIT_4C => X"0012000d000100190019ffe9ffe0ffda000100080012fff4000bfff6ffe4ffd8",
            INIT_4D => X"00080026fffc00120011000b000900240006fff400260028002e00260039005f",
            INIT_4E => X"ffe1000effe5ffee00000019ffeeffeafff0fff8ffecffb4ffd0fff6ffe8ffeb",
            INIT_4F => X"ffdeffeffff6002a001cffd8ffe8ffe6ffbfffd8ffe7ffe7002e0022ffe5fffd",
            INIT_50 => X"0040fff7ffeaffd30004ffeefff2ffd1ffeafffe00420040fff8ffd8ffdcffc1",
            INIT_51 => X"001e0000ffd2fffe004cffbfffdbfffafff6fff6fffefffdffe50017000a0019",
            INIT_52 => X"0005000500220013000effff000a000500010008000dfff0fff1ffe500050017",
            INIT_53 => X"00300021001900060004fff4ffeb0009ffeefffaffcdffd8ffddfff3fff80007",
            INIT_54 => X"ffeeffdb0012ffe7fff6ffe6000dfff4fff6fffcfff3ffde0001001f000f0008",
            INIT_55 => X"0012fff90018002f0011fffb00170002ffe30018000cfff4fff4ffe5ffb0ffd4",
            INIT_56 => X"ff78ffb9ff9aff9bffebfff6001affe8ffe8ffe3000afff6ffdfffed0001fff7",
            INIT_57 => X"ffc1000affdcffb30002000e001b0026fffc0006ffe0ffea00190018ffc6ff87",
            INIT_58 => X"ffff00220029000a002c002bffef001400270000ffee000affd6ffe90011ffcc",
            INIT_59 => X"000cfff3fff2fffdffe0fff5fff9ffeb0008ffeffff60017000cfff600270039",
            INIT_5A => X"fff0ffcaffeeffc9ffb8fff6ffe4fff40019001a00260038001bfff400010020",
            INIT_5B => X"ffc7ffc3ffdcfffd00090001fffefff9000cffe9fff7ffff0005001100010003",
            INIT_5C => X"0005ffe1fff4fffaffe3ffd8002fffddffd0001effed000b000a000efff1ffda",
            INIT_5D => X"fff20003000200030006fffffffaffe300280022000dffc800100020fff1fffd",
            INIT_5E => X"fffa000e0019fff1001b000f000dfff5fff0fff000120013fff2000e003fffe9",
            INIT_5F => X"0002ffe40011000000110014001effc2ffb00004ffbbffe0ffb4ffc4ffe2ffcc",
            INIT_60 => X"000d00170000ffe7fffbffdaffbbfffcffedffda0007004c004a002cffcefffa",
            INIT_61 => X"fff9fff700070000fff2fff9fff800040022001cfff8000400190023000f000b",
            INIT_62 => X"0020ffef00220000fff500070005fffcfff70000001a000800070000000b0019",
            INIT_63 => X"0021fff100300003ffebffd90010fff3000b001900200008000d0013fffdfff7",
            INIT_64 => X"ffef000e000000290026fffa000effed0017ffe1fff5ffdb000d001100000042",
            INIT_65 => X"0019ffe60000001d00050021000600090000ffe8ffccffebfffcffe3fff60026",
            INIT_66 => X"ffe6ffffffecfffb0029ffff002c0007ffcc0021fff4ffe8003afffbffd90008",
            INIT_67 => X"ffce002300100002001b000e0032001b0021000c00060014000effec000e0001",
            INIT_68 => X"000e003200160036000e0015fffdfff0fffa0001000e0010fffcffe3fff5ffed",
            INIT_69 => X"003b001800070015ffe80042001c0015000c0011ffdd001a0011002f00200020",
            INIT_6A => X"ffebffd8ffcd00270008ffe80029000f00100015ffda001c000bffeaffd60007",
            INIT_6B => X"0022fffcfff2fffeffb5ffb9ffafffd5fff9ffeaffe7ffc7ffb8ffeeffe4ffe7",
            INIT_6C => X"0001ffc800110009ffe80002fffbffec0015fff90011ffe5fff10012fff5003a",
            INIT_6D => X"001afffe0009001a000dffe9000d000b00060002fff700090018000bffee003e",
            INIT_6E => X"ffc9fffbfff4ffeaffcfffe2ffc0ffe7fff1ffb7000effa8ffe5001300290003",
            INIT_6F => X"ffbfffdfffec0012fffdffe3ffccffd8ffd5fffaffdeffbbffc2fffa000ffff2",
            INIT_70 => X"ffbfffd7fff20001ffeaffea001e0000fff0ffc9ffa5ff97fffbff9affc0fff0",
            INIT_71 => X"ffd9ffe1ffabfff0001a0000ffd1ffd7ff82ffcaffa9ffabffbbffe7ffeaffcc",
            INIT_72 => X"00140002001b0018000e001cffcfffdd00000000ffe10024fffcffffffe6fffd",
            INIT_73 => X"00330033000effedffe3fffa003e0036001700300045000fffd7ffdf00130003",
            INIT_74 => X"ffef000e0001ffeb0007000bffe90002ffefffe2ffedffedffe0001400350011",
            INIT_75 => X"001a0031001600320024ffec001d0008ffe5ffcaffdd0015ffe3ffe2001bfff7",
            INIT_76 => X"004300210000003900150000fff0fff30005000600160000ffe70013002bfff3",
            INIT_77 => X"0030002c00000008ff9effb6002fffd1ffb0ffeeffdeffd2ffdb0038001afff8",
            INIT_78 => X"00150008ffcd00040022ff76ff90ffc5ffc3ff95ff970011000d000c00310004",
            INIT_79 => X"001ffff4fffb001a002b00110044000cfff4ffcfffe30004000d003100150032",
            INIT_7A => X"ffeaffa7ffbcffd0ff9affceffe6000000000001fff30002ffe1ffef00130013",
            INIT_7B => X"0011ffe4fff1fffbffeeffe1fffe00020003ffde000bffcaffea0004fff6ffe0",
            INIT_7C => X"002e002d000fffe5ffdaffd6ffe5fff00004ffc9ffd8fff1fffa0005ffe20016",
            INIT_7D => X"fffb0014fffb00220005ffec000effcaffdd0014fffdfffc00250020001c001f",
            INIT_7E => X"ffeeffe9fff7ffdf0000fffaffe40019ffe3000e00120018000f0029ffdf0017",
            INIT_7F => X"fff9fff1001cffcbffe900130015002400110002ffffffedfff3ffe0ffed000c",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fff8002e0009ffe30004000a001f0026001c00170037fff90005001a000c0004",
            INIT_01 => X"002a0019fff2000affd6ffdfffc7ffecffccfff1fffe00090004fff9001e0001",
            INIT_02 => X"000afffdffe10000ffe6ffda0010ffd6ffeaffda000700240008001c00210021",
            INIT_03 => X"000d001300000019000dffeafffeffdafff3ffe1ffc4ffd6fffbffd7ffcaffe6",
            INIT_04 => X"001c00110012001dfffb00470000fff400040004ffd1002c0004003300170038",
            INIT_05 => X"00150016000e000d00190011fff70012001100040011001effecfffc00290006",
            INIT_06 => X"00090015001b0011001a0008000cfff0fff1fff70009fff2fffd000b0004fff5",
            INIT_07 => X"0022005b0069004c002d0047003d0063ffdbffe50021fffdfff50018fff1001e",
            INIT_08 => X"001c00160005fff30005fff6fff9ffde0004ffdcffbfffeeffbdffd9fffa0011",
            INIT_09 => X"00020014000b0011000c0028002ffffafff90022fffefffb00010024003c0014",
            INIT_0A => X"00140014000300210041001500260011fff9000000070023fff2ffde001a0001",
            INIT_0B => X"001a00270006000fffed00000006fff5ffeffffafff0000dffea000e00120011",
            INIT_0C => X"ffddffebfff6ffceffd7fffe0008fffe00160014fff3000efff3fff00008ffff",
            INIT_0D => X"ffda0009001ffff1fffc000000070020000c004700340019004bffffffc0ffc0",
            INIT_0E => X"00060000000c003c0005004affe6fff5fffe003d0024002c00260005002dffea",
            INIT_0F => X"ffe8fffdfff6ffc300160002ffd8fff3ffe7ffd4ffd1fffb0000ffea001d0032",
            INIT_10 => X"fffa0002002400000001000a0014001b001f000d0002ffecffd1fffa000b0011",
            INIT_11 => X"001e0006fffbfff7ffec0011000afffaffd9fffe0037001fffe4fff5ffdf001a",
            INIT_12 => X"ffceffddffc4ffa2ffe1ffc9ffe2000fffcf00170007fff2ffdf001f001cfff4",
            INIT_13 => X"ffd70000ffd6fff0ffd8fff2ffe60012fff000040002ffd5ffdffffaffc7ffca",
            INIT_14 => X"ffff00030012ffdaffc6ffbfffd7ff95ff91ffeaffe8fff9ffecfffbffe9ffff",
            INIT_15 => X"ffe50013ffdffff2ffcdffedffbcffdf000300160016000effe2ff9dffb9ffdd",
            INIT_16 => X"fffaffffffffffe5ffec0029fff80024000cffff0037002a001b0026000c0015",
            INIT_17 => X"fffeffe8ffe9001d0001000f0009fffa000dfff2000500090017fff2fff3fffc",
            INIT_18 => X"fff2fffcffe8fffbffd9ffdffff3ffdcffc4ffa5fffeffebffef000c000a0007",
            INIT_19 => X"0024ffdbffd2ffeaffc6ffff001cffe200290007000c001900110016ffffffe9",
            INIT_1A => X"ffddfffd0018ffecfff7ffff001e003100200033002500140000000300290010",
            INIT_1B => X"00110025002e0027ffdc0017ffb2fff1ffe7ffc6ffd1fff4ffb90001ffe9fffd",
            INIT_1C => X"000300110017000bffe40013ffefffe8ffb1ffd2ffe90004001c002ffff9fff2",
            INIT_1D => X"ffeefff1ffdcffcdffaafff3ffe2ffee000c00150019000d001b000200190005",
            INIT_1E => X"ffe1ffe60009ffe9ffe70001000f000d0010fffcfff700050002fff4fff1fff5",
            INIT_1F => X"00150017ffe50012005f001600360011002a002d00050036001a000fffe5fff2",
            INIT_20 => X"0002ffacffb10010fff90001fff40031001e00050025002b0014000dffe6ffe8",
            INIT_21 => X"fff50027000c0025000bffeaffe4ffd1ffcbffeafff6ffe7ffc9001affe8ffd0",
            INIT_22 => X"fff6ffcdffeffff9ffa9ffd60008ffde000d000a002c003a0009003600000019",
            INIT_23 => X"0013fffaffd60011ffe3ffeeffe6fff10008ffdbffeaffeeffdeffccffbefff4",
            INIT_24 => X"fff7fff3ffeaffd1ffd0ffd3ffcafffbffbbfff2001dfff5fff4fff7ffdffff6",
            INIT_25 => X"ffdbffaafff2fffb002f000d001f0059ffeb0011001c00200011fffa00030016",
            INIT_26 => X"00020023000100110007fff10000000afff7ffdfffdc00020002fffdffc7ffe6",
            INIT_27 => X"00070010ffecffeffff2ffe4ffd6fffaffbf0016ffc5fff900480003fff50042",
            INIT_28 => X"0002fff00015000cffed000bffe30011ffc7ffebfff5ffd1ffc0ffdf00240011",
            INIT_29 => X"00040023fffbffe60007fffdfff9fff9fffe0003fffefff10021000200010010",
            INIT_2A => X"ffee0036001300070013ffe6ffff0013fffbffecffe8ffeefffc001b0020fffe",
            INIT_2B => X"ffccffd9002f0014ffd4002c0034fff9002d000e000efff50000fff20018ffd7",
            INIT_2C => X"fffc0025002efff3fffbffed00040006002e00060013002f001200200037ffe9",
            INIT_2D => X"000dffd3ffe000120020001e00000016ffe70004ffd1ffdcffc40007000cfff9",
            INIT_2E => X"0014ffeb0033fff50004fffaffe7ffe7001affd3ffbaffe90020ffe0ffcefffd",
            INIT_2F => X"fffc0023001900130016000cfffc000cfff000040001000a0012000700110019",
            INIT_30 => X"ffb2001d0003fff60015fff6fff400030010fff9ffdffff6ffebffe9fff6ffec",
            INIT_31 => X"000900010028001ffffe00180037ffff0009fffa0017ffebffedffdf00100002",
            INIT_32 => X"fffdfffe00000000004d00240006002c0009ffd4ffcfffd4ffd2fff8000dffe9",
            INIT_33 => X"ffe1000e0000000900090012fff00023000f0003fff4001e0034ffdd00100023",
            INIT_34 => X"00000012000200250035fff30024001300030007001a000cfff0fff200200002",
            INIT_35 => X"ffed00060021fff4001300030046000affae00310036ffb300160014ffaeffd9",
            INIT_36 => X"ffe8fff8000900000000001dfff6000bfffbffc90000fffcffe3ffdafff1fffa",
            INIT_37 => X"0007000400390005ff9b00060020ffc100150019ffbbffdeffd10015fff6fff7",
            INIT_38 => X"0012fffc000d00200009fff2001cfff50000ffef0039002bfffa000b0036ffdb",
            INIT_39 => X"ffda001d0026ffdf002dfff4ffc60016fffbffc2005200450019004a004afffa",
            INIT_3A => X"fff2002cffdaffe200270017000a00050014ffceffffffe90005003900170017",
            INIT_3B => X"ffd0ffcf002fffd90000003fffd1fff1002cffdbffef0037ffd40000002affd2",
            INIT_3C => X"0002002bffe8ffe1002d000effcc00060018ffeeffe5fff5002cffc9fff60010",
            INIT_3D => X"fff100190007001a001500010031003fffac0003001cffdc00020030ffccffe2",
            INIT_3E => X"004b0023ffd00033fff2ff9f0001fffbffdefff40015000afffd000dffd4000d",
            INIT_3F => X"000ffffe001cffe90012fff500140005fff8ffe9fff7fff3fffa003f000cffb6",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fff5002b001affefffe8001cfffcffcb000bfff6ffcdffe3fff8fff300150016",
            INIT_41 => X"0015fff6ffc1002e0000ffc8003bffffffdcffcc000a0050ffddffe90023ffeb",
            INIT_42 => X"0003ffedfffc002f0027000a0023ffeafff10005ffe80001ffe4fff600020014",
            INIT_43 => X"ffc900200016ffcdffcffff900160033ffd2ffc6000dfff7fff0ffe9ffcaffe4",
            INIT_44 => X"ffe8fffb0033fff30025005fffc0ffc70015ffaeffc7fff3ffeeffcb002dffbb",
            INIT_45 => X"ffe8ffec00070005ffea0000000dfff200080037ffd6fff3ffe7ffeffff60010",
            INIT_46 => X"ffff0004ffd3fffb001fffed001c000e001bffedffce0011fff0ffc900520011",
            INIT_47 => X"0000ffeffffc000a0001000fffc1fffd0015fff5fffc0028ffd6ffc0000effd4",
            INIT_48 => X"000b0009ffe30031ffd9ffbeffe9fff3ffdbffe1002affebffedfffe000bffeb",
            INIT_49 => X"00050003ffed000a001f00080013004c0026ffe90002ffcdffe1ffe4ffceffe8",
            INIT_4A => X"000d00270021fff70003002bfffbfff30031ffc6ffddffd2ffe0ffe000040007",
            INIT_4B => X"0008ffdd000b00120009fff00010fff90014003d004b00510043000f00290008",
            INIT_4C => X"fffcfff6000a00030001fff10021000c000600050008ffe5ffe1ffccffc7fffb",
            INIT_4D => X"00030011fff900150006fff5000f0017ffed0018fffefff60008000bfff40002",
            INIT_4E => X"0014ffc4fffbfff4ffdcfffb0036ffd2000200220011003e000c0013ffe8fffe",
            INIT_4F => X"0015ffee003e004a000f004d0070004b001600040008ffff00010000ffc7ffd9",
            INIT_50 => X"fffa0007002effdbffd3001b001e000700270019fffc00260002000bffec0033",
            INIT_51 => X"fff2fff6ffb1ffe0ffd60000ffe6000400000006fffb002d000cffd8fff8002e",
            INIT_52 => X"ffe0fff1ffc4ffe8ffd1001dfff8ffdf000e000e0017ffe2fff80039ffb3ffd8",
            INIT_53 => X"ffec00310011ffe7fffe0033ffe7ffe1001e0001ffdfffbf0016fff7ffe6000f",
            INIT_54 => X"00080029ffeeffc90039ffc0ffbd000f001c001c001f0014fffbfffb0019ffff",
            INIT_55 => X"0020000f0041003100110008ffe20003ff9fffaaffbdffcbffa3ffa8fff60008",
            INIT_56 => X"001b00330041fffffffefff4ffeeffbeff9cffb0ff7dffda000e001f0015000c",
            INIT_57 => X"fff6001e0018fffd0000fff9fff4fff9ffe9fff40005ffe800070010001f0018",
            INIT_58 => X"fff9ffdf00200000ffe1003dffdeffddffeb0009ffe3ffe3ffd9000900010003",
            INIT_59 => X"0012fff0fff9fff8ffd7ffcf00220015ffeb000cfffeffe90015fffafff1000d",
            INIT_5A => X"00170008000c002dfff0fff80008ffc5000b0004ffff000900100008fffb0011",
            INIT_5B => X"002c0033000b0013ffe300170003ffd1001effe6ffbf001d000d000b0021001f",
            INIT_5C => X"000c00280003fff90024ffe5000b000c0016000ffff90018fff4002800110015",
            INIT_5D => X"001e0003ffef0000fffcffdaffde0039005500170048003400020044002bffc7",
            INIT_5E => X"000e0014fff60024001efff1001bfff2fffa0022fffafff3002dfffc00240003",
            INIT_5F => X"ffee00000004ffd9000ffff1ffe3fffb001cffdf001a0003001c000b0019000c",
            INIT_60 => X"000b0007001efff000030026ffe4002dfff4000bfff800030007fff50018002a",
            INIT_61 => X"0029ffecffd9fff8ffef000bffb2000a0015fff4001a00030011000cffdb0004",
            INIT_62 => X"00150006ffd500170012ffe000090029003a0034ffeffff90016ffd6ffc60001",
            INIT_63 => X"0006001affe8fff10001fff8fff90015001c000d00140011ffff00250007ffe7",
            INIT_64 => X"00160000fffd0002ffee000bfff7fffa00060009ffef002b000b000f000c000c",
            INIT_65 => X"00040000ffe600110010ffe50002fff0fff2ffecfff80014fff400040017ffe0",
            INIT_66 => X"001f00160012fffb0032fffcffdffff9ffefffe9ffe9ffe70006fff9fff6000f",
            INIT_67 => X"0052001300120035ffeefffaffbdffe00009ffd1ffe6ffe1ffe8ffccfff0003c",
            INIT_68 => X"fff5001e0010ffe8fff7ffdd00390002fff5ffff0022ffd90038001e00320053",
            INIT_69 => X"fff90045ffff0005002c002100160020ffefffe9fff4fff5ffdafff500000015",
            INIT_6A => X"0036ffc500280019ffa40015ffe8ffc00007ffde000fffeeffefffe7002a0015",
            INIT_6B => X"00250009ffab0033ffdeffc5ffee0003ffffffbdffe20013ffebffee0022ffe1",
            INIT_6C => X"0000000b0001001cff97ffaefff0ffb2ffb1ffbcffd7ffddfff3ffd1ffe1ffee",
            INIT_6D => X"0005ffedfffefff80027ffdf0011001dfff2fff70001000c0018001effe2fff4",
            INIT_6E => X"ffee0009000dffefffe70020ffe3fff70023fff9ffcdffec0002ffddffe7fffe",
            INIT_6F => X"0028001700080014fffcffedfff70013000b001000340002fff2ffd4ffe9ffe4",
            INIT_70 => X"fffc0012002500200025ffd30003002f0017003c002b000b0034002500080004",
            INIT_71 => X"001b00160002ffe7ffe3ffd1fffcffedfff9ffdf0013001600270012ffea000e",
            INIT_72 => X"ffb9000e002e001a0006001b0026002100070001000b000a0013000f000b0012",
            INIT_73 => X"ffabffaeffeffff0ffc3fff2ffc4ffd3002e0003fff3000b0015ffd70018fff7",
            INIT_74 => X"ffca0007002dffd8ffea0025fffd001d001000270030000300280009ffc7ffc7",
            INIT_75 => X"0016fffafffd0003ffec0008fffbffe1fffe0009fffdfff60010ffed0000000f",
            INIT_76 => X"00150008ffeeffd6ffe5ffbcffb80004ffe0ffd7000b002b0015000000480060",
            INIT_77 => X"fff100070022fffb0002001a000300120009fff00006ffea00090006ffd4fff8",
            INIT_78 => X"0036ffe4ffbeffe90001002affeb001900130000fff8ffec0008ffe80009ffff",
            INIT_79 => X"00180045ffe8000e0028002800410011004d00470013004200370017ffeb001e",
            INIT_7A => X"002c0026001f002e002e0017003e0037004a001a004b003800220017fff90008",
            INIT_7B => X"fff0000b0004fff5ffe6fffcffc900100016002ffffffffcffe70035003e0021",
            INIT_7C => X"000300120000ffdfffd900000009000afff0fff3fff0ffc7ffdaffc8000b000b",
            INIT_7D => X"ffeafff0fff1ffd100260000000afff9ffeafff70013fff20018002e00230019",
            INIT_7E => X"fff0fffbfff60022fffbfff90027ffe900060021ffd5ffe4001d000e001b0008",
            INIT_7F => X"0024fffc0029002afffcffc9ffbbffbafff4fff8ffd8fff1ffe1ffdfffec0000",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffc30000ffef0006000d0022fff500110034ffe2ffc7ffdb000b00230007fff1",
            INIT_01 => X"000a0000fffefff5ffebfff60019fffe002b0017fff4000afff1002900080000",
            INIT_02 => X"ffed0011ffe00007fffd0004fffbfffd000effc40012fff7ffdcfff5ffda0007",
            INIT_03 => X"fffbfff80024ffdcffefffe70018ffee0006fff0ffdbffebffefffe0ffd20000",
            INIT_04 => X"fff9ffe1fff3ffcbfff1fffcfffd000c00230033ffccffddffe4000d0017000e",
            INIT_05 => X"ffecffe500490053001200120040003d002c000bfff9ffe9fff9000effccffd4",
            INIT_06 => X"ffe2fffdfffffff6000c0003fffd000cffe3ffd7ffd8ffd8ffeb0018ffdc002f",
            INIT_07 => X"0039fff8001a0039fff8fff1fff3ffea001affdaffdd00310024fff1ffebffdf",
            INIT_08 => X"ffd5fff6ffdbffdaffe6ffd5fffeffdcffc6ffcaffe0ffe70029ffe400150057",
            INIT_09 => X"ffee00000009ffee000affff0012fffa001b0004ffff0006ffee00000005fff1",
            INIT_0A => X"0036002200130014fffeffd4fff8fff90013000d000900100022002400130004",
            INIT_0B => X"fff90012fff7ffddffff0051006500560027004c0029fff400210000003d0036",
            INIT_0C => X"00420048002f0057004000440033006c0052fff90014fffc0018fffdffc3ffd6",
            INIT_0D => X"fffbffe0ffc5ffc2ffafffca0000001400160008ffb9ff98ff8300000011ffdd",
            INIT_0E => X"001900030013fff9ffeb000e0017000a00100010000cfff3ffd6002cffe5ffe1",
            INIT_0F => X"001e000d000d00230009001bffdafff8fffb000cfff80001fff80005fff60020",
            INIT_10 => X"ffee00170029000effe30000ffc3ffdffff4fffd002700200012000100040014",
            INIT_11 => X"0027001f00130016fff1fff0ffc6fff0ffe30003ffffffe70004ffcbffdb001e",
            INIT_12 => X"fff2ffeaffef000b0013ffe0001a000dfff7ffd4ffbaff8cfffbffceffca0023",
            INIT_13 => X"ffe6ffe7fffefffa0006001c0032ffde0000fffd00090028000b004000470036",
            INIT_14 => X"0018fff6002300300011ffe5ffa1ffb8fff50006fffb004b00420038000d0006",
            INIT_15 => X"00180039002affdeffa1ffd5fffcfffbfff2001c00140010ffc8ffbfffe90013",
            INIT_16 => X"0027ffe8fffefff6fffafff6fffc00140004ffffffe7ffd7ffbd00180012fff5",
            INIT_17 => X"000600120000ffd6ffdcffccffebffeeffc1ff96ff9d0000000ffff000440033",
            INIT_18 => X"fff20001ffe7fff6000a000efff2ffee0003001bffeb001afffdfff00000000f",
            INIT_19 => X"fff6ffc7ffdcffeaffeeffe7fff90012fff4ffdd000cfff70001ffe1fff40004",
            INIT_1A => X"0016000ffff2001b000bffd3fffcffccfffa000500010021ffe6ffc6ffe00001",
            INIT_1B => X"ffec0014fff100050011fff200210025001cffcdffcaffc7ffe3ffeeffea0020",
            INIT_1C => X"fff7ffeaffdbffe5ffeeffecffe5001a000e00120001000efffe00050003ffef",
            INIT_1D => X"0047ffe6fffe0011fffe0015fff3fff7007000510014003d00450000ffd3ffe3",
            INIT_1E => X"000200010007ffff0021ffdb004500440020fffc003b003e00130029ffd90029",
            INIT_1F => X"0001000c0005fff1ffdd0008fff7ffe7000effe60012001e002900130003000c",
            INIT_20 => X"ffdbfffa0001fff6000a0021003100100019000c000bfff6fff9ffebfff80000",
            INIT_21 => X"000a00000007001a000affebfffaffee00250001fff60010fff5ffe2fff00008",
            INIT_22 => X"0017fff4fff2fff4ffce001dfff7000700250014001900020005ffccffb8ffc9",
            INIT_23 => X"000f0000fffbfffe0028001100050006ffebffe2000b0007002a0020ffdffffa",
            INIT_24 => X"00340036004fffd7ffd70019ffd5ffce0018fffd0031000e0026001a002e0020",
            INIT_25 => X"0005fff7ffe5ffe6ffd2ffdcffdc002b0024004cffd9ffe6ffe3ffd7fffafff2",
            INIT_26 => X"fffe0010ffebfff1ffe80016003300090016001a0028000b0016000c00030024",
            INIT_27 => X"fff7ffe4fff8fff1001f001effd1ffebffe40004ffdf0009001a00000003ffde",
            INIT_28 => X"000c002b00310028001900000008ffe6ffccffd9fffd00170000ffe9fffd0008",
            INIT_29 => X"ffd8ffe20047002f001200580043000b0003ffec0001ffeb00050005ffec0023",
            INIT_2A => X"ffffffe5fffffffeffe6fffc001000090015000d0004fffffff7ffe4000a0011",
            INIT_2B => X"fff5fffb002e00290022001b002900070004fff5ffcfffd9ffe4001d000d002a",
            INIT_2C => X"0000000d002a0009001a000a0004fff10012fffbfff10017001effda003e0051",
            INIT_2D => X"00050024001e0000ffe50003ffebffddffe7001600260023ffe4ffeeffe6ffec",
            INIT_2E => X"0000ffe0fff000000006fffbfffa000ffff00008fffbfff6ffec0008fffffffb",
            INIT_2F => X"000d0012fffcfff2ffeb0010fffffff7ffec0000ffeffff70006ffe800040004",
            INIT_30 => X"000b0000001afff9ffef000cfffbfffd001e00060002000cffe8ffe8fff6001a",
            INIT_31 => X"ffe4ffe9ffebffe4ffecffe5ffda0007ffe9fff5ffedfff1fffefff80007fff5",
            INIT_32 => X"ffdffffbffffffe8fff6ffeafff2ffed0000000b0008000c00000007000dffe5",
            INIT_33 => X"0004fffbffeaffe70008ffeefff0ffedffed000bffebffebffe5ffe300060014",
            INIT_34 => X"ffe60004fff5ffedffebfff3fff2fff3ffe8fffaffedfff3ffe80000ffecfff8",
            INIT_35 => X"ffe500010005ffecfff0000900060000ffdfffe1ffefffeeffe2ffedffee000a",
            INIT_36 => X"fff000010000ffe80004ffe3000a0001ffebfffbfff8fff0000affdcffeb0008",
            INIT_37 => X"000c00000001fffefff4ffd9ffddfffd000d0005fff6fff4fffaffeefffbffe6",
            INIT_38 => X"0000fffeffffffe1ffe50000000c000bfff1fff0fff10003fffcfff5fff8ffe5",
            INIT_39 => X"0007fffa000a000dffe40000ffec0006fff50008ffe7000ffff00003ffeeffec",
            INIT_3A => X"ffe4fff5fffcfff000050005ffdf0001ffe2fffaffeeffe8ffeaffe9ffe1ffe3",
            INIT_3B => X"000dffe6fff4ffe9ffe9ffffffe6fff6ffeaffe7ffff000affe5ffec00030003",
            INIT_3C => X"fffcffee0004ffe7ffe9ffec0007fffbffefffe900000008fff5ffedffe7fff8",
            INIT_3D => X"0002000efff5fff3fff700020002ffe2fffc0007000affe9fffffffcffed0001",
            INIT_3E => X"000affeafff2fffa0000fff7ffef0005fff80000fffbffe2000800010002ffe7",
            INIT_3F => X"00080016fffffff1fff90008fffcfff2000afffb00090009ffecffed00000002",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0015ffedfff80014ffd3fff2ffefffeb000b000a0007ffe800080000ffecfff6",
            INIT_41 => X"ffe5ffc1ffd8000bffdb002b0037002f00100031003c000a000a0018ffdb0001",
            INIT_42 => X"00170022fffa003000550023004d003b001a001cfff9fffcffc7ffb6ffd8ffb8",
            INIT_43 => X"fffcffe6ffcbffe2fff1ffd2ffd80017001b0021fffdffdefff0fffb000affea",
            INIT_44 => X"ff95ffb9fff2001afff30023000d002a0005000b000bfff8ffff0016ffedffe7",
            INIT_45 => X"ffdfffdafff60008ffe2fff40003fffefff400000017ffc9001400000002ffb0",
            INIT_46 => X"ffe9fff1000f0013001dffeaffc4fff9000cfffb00000010fff7ffceffcbffd1",
            INIT_47 => X"0011001b002200160015000f000ffffbfffc0006ffcc00140002ffe3000e0010",
            INIT_48 => X"003500440021000c00300010ffd0000bfff2ffd0ffabffa800000001ffd90019",
            INIT_49 => X"ffb7fff4ffefffef001f00190006001400210002001a0007fff9000d0001ffe9",
            INIT_4A => X"fff000040005000e000effe20002ffd5ffc1ffb6ffc1ffbdffedffd6ffe9ffdf",
            INIT_4B => X"ffe6fff0fffcfff80019003bffdcfff50027ffd6ffeeffe3000e001900050008",
            INIT_4C => X"001dffddffccffd4000a0005ffee001500220010000600190023ffeb00150015",
            INIT_4D => X"ff9afffbffd9ffccffd0ffee0032ffecffe5ffbdff9d0007fffcffda00270016",
            INIT_4E => X"0015fffdfff200230001ffe70007001f0027fffd001e0020001800050015ffce",
            INIT_4F => X"ffc10009ffffffe6fffbffe0000e000cffeeffe300030009000a00170015fff8",
            INIT_50 => X"000b0007fffbffd5ffbe0001fff7ffeb0017fff2ffdeffecffc9ffc5ffccffb8",
            INIT_51 => X"fff7fffcffd8002f00170004001a000bfff3001200350039ffed002100190005",
            INIT_52 => X"ffb9ffd0ff98ffc9fff5ffe9fff7fffbffff002400120001000d000f000cfffe",
            INIT_53 => X"00430034002600590026002600550043004e00350033000c0009fff0ffdeff8a",
            INIT_54 => X"ffe60008000afffa00180031ffe60026002affe2ffecfffd00080018002c0031",
            INIT_55 => X"ffdfffff00000025ffedfff7fffeffcdffe4ffef00220028002c000f001b001b",
            INIT_56 => X"fff6fffbfffcfff4001affff000a0039fff0ffd9ffc7ffedfffdffeeffe00000",
            INIT_57 => X"ffe1ffed001b001000060016fffdfffc001effebfff60023ffeeffdeffe80000",
            INIT_58 => X"00180000fff7ffed00220006002c001b0023fff90020fffcfff0fff1fff1ffec",
            INIT_59 => X"fffd000effe1ffcfffebffe1ffcf001affe7ffccfffc0003002800150013000b",
            INIT_5A => X"000a0006000b001200180012ffe5fffefffffff900340017000000220004000a",
            INIT_5B => X"001affd700090051ffe3fff50018ffd2ffd3ffe2ffdbffab002affedffe30006",
            INIT_5C => X"ffeaffdd0014fff1ffdcfff5fff0ffeafffaffdcffe5ffbbffccffd1ffd2fff3",
            INIT_5D => X"0006ffe1ffc90007ffe8ffdb00220009ffe7000c000dffe00016fff5fff00017",
            INIT_5E => X"0011fff100050035ffe00002003400050000ffee00220000ffe9001d000affe9",
            INIT_5F => X"0045005a001d006f003f002000450036000400030016fff50016fff8fff9fff1",
            INIT_60 => X"ffd5fffa0031fff4fffc0008ffd3ffaeffd2fffbffe5ffe1fff2ffe200010035",
            INIT_61 => X"007b001700490035001bfff2ffe1fffeffe0ffdb0014ffe7ffdaffe0fff90034",
            INIT_62 => X"ffefffe6000fffe6ffe5ffe80005fffe0011ffdcffd60036002700690038005b",
            INIT_63 => X"ffc8fffb0035fff1ffe5001efff10000fff70016fff1ffec0022001cffe70012",
            INIT_64 => X"fff00026fff9ffd7ffbd001e003f00080000ffe10000fff900160004fff70014",
            INIT_65 => X"fff0ffd10001ffdfffd40009ffecffef0021000a000affd80001001afff9ffd8",
            INIT_66 => X"000b0019ffe9ffd80006fffe0028fffc000f0028000c001afff0fff6ffca0010",
            INIT_67 => X"ffccffd5fff8fff0ffd4ffe6ffd70003ffd6ffb00015002300180014000efff7",
            INIT_68 => X"fff8ffd90033fff7ffdf0035003300310006ffd1ffeaffe20002ffd8ffc2ffcb",
            INIT_69 => X"0044ffddffc5000d0016000ffff9fff4fffcffc1fff2ffd0ffd3fff9ffe50023",
            INIT_6A => X"ffddffeaffceffd7fff0ffdd00100001ffc2fff0fff1ffebffdb0020ffe3ffd9",
            INIT_6B => X"0022ffbe0002fffaffe8fffaffdf0001fff9ffccffe2ffc5ffcb0003fffeff9f",
            INIT_6C => X"ffcd00160017ff9cffdafffaffd7fff4ffd2ffe4ffddfff80003ffdfffd90048",
            INIT_6D => X"fffc0028fff2ffb4000b000efff3002b000bffd000300005ffc4fff800360007",
            INIT_6E => X"ffc4ffda0000fffaffe0002300660055003c004e0069003900380006fff7fff1",
            INIT_6F => X"fffc000d0004ffd0fffdfffaffb4fff2fffcfff9ffd6ffdfffaaffcaffdbffb1",
            INIT_70 => X"0001ffe400470013ffebffdcffe5fff2ffeffff1ffdb0018fffbffe4ffeafff7",
            INIT_71 => X"ffd600070027000bffdefff2000bfff0001cffdbffd50023ffeeffd0003d002e",
            INIT_72 => X"ffe6fff5fff7fffbfff2ffe90015ffe1ffdf000afff9ffe9000cffe900210003",
            INIT_73 => X"fff800280014ffd6ffd7000effdcfffbffe3ffd6fffcffe7ffd100320007ffed",
            INIT_74 => X"ffccffdc00430017ffef0007fff4ffeaffecffcbffd8002900110003003a000e",
            INIT_75 => X"0023001a00210011fff9000a001200240014ffd2ffef000cffe2ffe100040005",
            INIT_76 => X"fff2000900130003fff1003700360019fff2fff0fff00014000cfffcfffc0012",
            INIT_77 => X"002c0010ffd2fff8ffd60009fffbffe6fffb0041fffc000a0015ffce000ffffc",
            INIT_78 => X"000c00190006fff6ffc90034fffcffdc001e0031fffeffd5003a0023000c0011",
            INIT_79 => X"ffebffe0fffffffa0006000e0000ffc40010fffaffda0001fff3fff900080000",
            INIT_7A => X"0006fff9fff70015fff10007002a000a0013000dfff4001f0007fff50000ffe0",
            INIT_7B => X"00170007001dffeb001cfff1ffedffe5fff0ffb7ffc4ffffffecfff0000a0036",
            INIT_7C => X"fff80010ffea0000ffa8ffdbffc4ffe7ffddfffdfff1ffd2fffc0024fff6001c",
            INIT_7D => X"ffd4fffb0019000600010000fff4000bffdd0007fff3ffd3ffd9ffd0ffebffe5",
            INIT_7E => X"fff1ffebffe4ffc4ffe3ffe1ffd9ffda0007ffb7ffcdffccffddfff00007ffef",
            INIT_7F => X"0010fffa0004002dffe70011001fffdb0006ffdfffe0ffc8ff93ffbdffa4ffcd",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffe0ffd90007fff3ffee003800900053005b0066000d0048004a0010000a000a",
            INIT_01 => X"ffedfffbfff9ffeffffbfff40010fff0ffe7fffdfff1ffdbfff3ffcaffdefffc",
            INIT_02 => X"0008ffedfffefff6fffefff90023ffe20000001dffddffedffecfffe0009ffd0",
            INIT_03 => X"ffe9fffefffb003b00180012003e0009ffffffc8ffdaffcfffd2000fffcdffca",
            INIT_04 => X"ffc60001000bffe20000003b0045000fffed000b0006ffeb00070000fffc000d",
            INIT_05 => X"0025fff10012fff4ffdfffceffddffcaffffffe6ffff003afff7ffd9ffdaffe7",
            INIT_06 => X"fffaffc6ffe3fff3ffe3ffbf0006fff70013fff50002003e0034002a0018004e",
            INIT_07 => X"fff2000afffcffda000d001effec000e003700070012fff00010fff6ffda0008",
            INIT_08 => X"000c0022fff0fffd0000000a0011fff5fffeffe0001b000400120024fffdfff8",
            INIT_09 => X"0025ffa1001c0012ffc5ffeeffddfff8ffccffcfffd6ffdaffbcffc400160017",
            INIT_0A => X"001f000d000f0001ffc10003000bff7bffa5ffe1ffa0ff7600100016fff00000",
            INIT_0B => X"0039fff7ffbeffaa0025ffe8ffe2001100210004002c00220001001600280000",
            INIT_0C => X"ffcfffdbffeeffdeffe8fff9ffe50037001e001a0020fff200290028fff20006",
            INIT_0D => X"000ffff80000fff9001a0012fffbfff9ffe800100021ffed0028001c0027ffd6",
            INIT_0E => X"ffea0019000f0010000d0013ffe700150017ffd6002d002c000dffd8ffe5001a",
            INIT_0F => X"002afff800250006ffdffffc0023ffff00020010001b0020000b000000110020",
            INIT_10 => X"0023000c001200030006ffe0000ffff2ffe0000bffecffe30020fffeffe8002e",
            INIT_11 => X"ffc10023fff3fffd00380028fffc00030039ffc4ffdaffc3ffc9fff6ffdeffb6",
            INIT_12 => X"ffe10016ffecffc3ffe0ffee0011fff70019ffd6fff7ffe7fff0001c0005ffff",
            INIT_13 => X"ffe1ffe3ffeeffec001c0059ffb7fffa0035ffdaffc7fff90005fffb0033ffe7",
            INIT_14 => X"ffdf0019fff4ffd3fffa000dfffd00270002fffbffe30001003bffe8ffdf0022",
            INIT_15 => X"002a0023ffcf002a0016ffd5ffdfffc0fff2ffe9ffe80016ffebffe0001bfff3",
            INIT_16 => X"0013000cffc50016000cffeb00160017003a000400120006ffe30003ffe40000",
            INIT_17 => X"ffa8fffeffe2fffe0025ffc7fff8000efff1fff2000afff4fff40008fff4ffb8",
            INIT_18 => X"fff700020000000dfffa00090025000c00270020ffe5001bfffeffc1ffecfff3",
            INIT_19 => X"001cfffdffd4000d000effad00260013fff0ffef0016004dffdcfff0002dffed",
            INIT_1A => X"0005ffeafff9fff9fff90007fff2fff70012fffefffb000600120004fff80000",
            INIT_1B => X"00000006ffff0000fff4fff6000b0006fff00001fffefff6fff8fff10003ffee",
            INIT_1C => X"fff6fff20006fffdffe9fff6000efff2fffe000dffff0006fff30005ffe80000",
            INIT_1D => X"fffafffbffe9fff5fffa000c000cfff1000afffc0006ffffffefffeaffea0007",
            INIT_1E => X"ffe70009fff70002ffef000bfff9fffe000000000006fff40006fff2ffe70004",
            INIT_1F => X"00000000fff10001fff2ffed0000fff90008000afff4ffec00120002fffbfff2",
            INIT_20 => X"000ffff3fff5000fffed0010fffbffec000a000affec0000ffec000dffe7000e",
            INIT_21 => X"0001fff80000ffe600010000ffeefffcfff2fffffffb0011fff0000dfff4000a",
            INIT_22 => X"ffeeffefffefffedffebfffbfff9fffd0006fff80007fffdfff7ffeafff1fff0",
            INIT_23 => X"ffecfffb000efff2000fffea000b0009ffeffff1ffeefff4fffcfff80002fffd",
            INIT_24 => X"00000006ffe9ffebffe8fff90001000d0009fff4000d000f00070012fff3ffeb",
            INIT_25 => X"fff800050006ffe9000affe7ffecfff3fff0fff3000effed000c0008ffe5ffe7",
            INIT_26 => X"00050001fff0000dffeefff7fff6ffedffecfff9000600010004fff9000b0003",
            INIT_27 => X"ffeafffdffecffef000afffc0005ffec0006fffcffe9fff30000ffeffff4ffec",
            INIT_28 => X"ffea0001fffe0007ffe700010000ffe20009fff8000afff3fffdffe9fffdfffe",
            INIT_29 => X"000e000cfff000050007ffeffffe000f000d0003fff00008ffeefffbfff5fff4",
            INIT_2A => X"ffedfffbfff4ffe9000d00120005fff1000b000cfff0ffe4fffbfff3ffed0015",
            INIT_2B => X"000d0004fff3fffc0007000c00020007fff0000a000d000fffebffe8000bfff0",
            INIT_2C => X"ffff000affe6fffcfff5ffe4fffdfff70015000c000400110010ffea0000fff0",
            INIT_2D => X"fff90000fffaffd5ffdf00020024001afffb00260005000b0032001d0019fffe",
            INIT_2E => X"000ffffeffe6000a000f00030013002dfffcfff90015fff3fffa000800140011",
            INIT_2F => X"fffdffcdffd30000fffc00020004ffedffe1fff7fff4ffc7fff1fffd0001ffce",
            INIT_30 => X"000700050025000fffec000b00060000ffe70018002500050013002bffe6fff5",
            INIT_31 => X"0014fff8000d001c00180007fff7fff3fffaffa2ffc20009fffdffbfffe6fffb",
            INIT_32 => X"0004001a001600010000fff4ffde0003fffffff2fff2000a001f002d0014fff6",
            INIT_33 => X"0008ffe90004fff3fff4ffc2ffc0000fffc6ffc3000d000f000c000f000b0001",
            INIT_34 => X"ffcafff40033fffa0005000b00000006000f000effe9ffc50006fffbffd80005",
            INIT_35 => X"fffeffc6ffe30020fff0fffafff1fff0ffb4ffe7ffafffc50000fffcffe00013",
            INIT_36 => X"0009ffdc001d000bfff0ffc8ffc8fff7ffd2ffe4fff30000003b0025ffcfffca",
            INIT_37 => X"000c0010fff0fff4ffe9ffd7ffe5fffafffa00110000ffd600080000ffeffffe",
            INIT_38 => X"000affe8ffbc0029ffeeffdc000bffe50004ffeffffffff4fff30006fffcffe4",
            INIT_39 => X"0053003400010012004d00190017fff6fff8000dffff0017000b00040026fffa",
            INIT_3A => X"ffe9ffdd003bfff7ffe7fff3002bfff5000b0000ffff000e0000ffe70010ffff",
            INIT_3B => X"ffffffecffd0ffe4ffd4ffedffef000cfffa0006ffe6ffebfff6ffe4ffe7000e",
            INIT_3C => X"0012ffd2fff0000cffe8ffe2ffe30018003100200009fff6fffd0012fff0ffdb",
            INIT_3D => X"ffc6fff5001cffb8fff50028ffe3000000290024001efff000180003fff10023",
            INIT_3E => X"ffdc00290038000e0013000600230007fffe0000fff30001000800060000ffff",
            INIT_3F => X"ff99ffb7ffd8ffd0ffb9ffafffbefff2ffd9ffd1fffd0019fffdfff800100007",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00130028003d0001ffc0fff5fffbffefffb700260046ffe7ff9dff86ffafffc5",
            INIT_41 => X"fff8fffd0000fff8000000050003fffefff6fffc002300100034002300000000",
            INIT_42 => X"000afff0ffd00012ffdffffcffebffdc001c000f00220022001f001e000f0014",
            INIT_43 => X"fff2ffec000affe2fff1ffeafff9fff5ffed000afffcfff3ffedffeb000affef",
            INIT_44 => X"fffb00120000000bfff30002001400040001fffd0001fffcfff800010008000c",
            INIT_45 => X"0014002500180012000000370047001200090002000a00120014001b0015ffef",
            INIT_46 => X"00140005ffedfffc0003ffe5fff9000c0010002a002700210016001500070033",
            INIT_47 => X"fffc0005000e00090005fffefffefff50024ffe600100028ffec0018000cffd3",
            INIT_48 => X"ffecfff30001000dfff7fff9001dfff9ffecffce0014ffe7ffea0018fffa0016",
            INIT_49 => X"00080009fff90014fff80000fff6ffedfff2fff8ffffffe4000800130026fffb",
            INIT_4A => X"fffcfffc0005000fffe6001b000effe8fffefff9001ffffffffffffbfff2fff1",
            INIT_4B => X"ffa3ffdeff94ff6eff6dff95ffe1ff84fff1000800190005ffdcfff1fffdffe1",
            INIT_4C => X"00120011fff80001001dfffafff2fff8000e003400320008001d0031000fff84",
            INIT_4D => X"ffb5ffdcffe4ffd30029002d002b00240008001afff0ffeefffafff10002000c",
            INIT_4E => X"ffe7ffe9002e00270030001100170006000dfffb0000ffa9ffa1ffaaffa7ffa5",
            INIT_4F => X"fff3fffafff0fffe000cffeb0014001b001c001cffff0023fffdfff1fff3ffec",
            INIT_50 => X"ffe90015ffed000a000900220015000e00150003001500170000ffff00180009",
            INIT_51 => X"ffe60015000e000100220049000b0035004800570027000800180019000e0002",
            INIT_52 => X"fff2ffe4ffe2002c000c001a004000290023ffedfff10018ffc7ffe4ffeb0008",
            INIT_53 => X"fff9ffd1ffc9ffd3fff20008fff1001f0032000afff90026003c00040013fff6",
            INIT_54 => X"00020017000600210037000a002b0033001bfff3ffe8ffeb0004ffe4000fffff",
            INIT_55 => X"000900150006000900360014ffd500040001ffdf001dfffbfffd002700080006",
            INIT_56 => X"ffd70016fffeffdbffe6000b000700240004000a0021fff1ffe10018fff70017",
            INIT_57 => X"ffe0ffe600120012ffe3ffe30006ffd1002c0038fffcffc9fff1ffeaffdcffe2",
            INIT_58 => X"00070004ffce0014ffe5ffbe0032000dffda0016000600430007fff6001efff9",
            INIT_59 => X"0008fff0fff10003003c00370018ffdafff4ffc7ff81fff0fffdffd1003a0013",
            INIT_5A => X"ffebffe20008fff0fff1ffc90003ffd4fff7ffedffbffff3fff7ffe4ffc0ffdf",
            INIT_5B => X"002dfff7fff8002c0009ffe000210006ffd900110000fffffffdffe7000ffff3",
            INIT_5C => X"0017ffc5ffe8fff700090009ffe800230019fff600240002fff3002f0018ffed",
            INIT_5D => X"ffd0fff50014ffb3ffd0ffd0ffb5fff7fff1000600180008000f0008ffe5000b",
            INIT_5E => X"fff1fffcffea000b002e0003000c0011fff3ffe3ffe8ffeaffe600150011ffe0",
            INIT_5F => X"fff7002d001dfffefff2ffd10013ffc1fff8ffd0001bfff0fff7000700130004",
            INIT_60 => X"fffb0001fff3fff4ffe5ffbaffeaffa8fffcffe2ffdc0011ffe8fffb00160015",
            INIT_61 => X"fffafff2ffcf00020003ffd700200006000800130009fff80021fff6ffebffee",
            INIT_62 => X"0018fff400230049000f00140026fff80002fff6fffd001000000000fff2fff7",
            INIT_63 => X"003200280017fffb0013ffe9ffbf0006fffaffed000000200004000e00590033",
            INIT_64 => X"00130020fffcffe5ffe6ffe2fffefff3ffc9002d002afff0003400360011003f",
            INIT_65 => X"fff90013fff1fffa003e0006ffd00018001efff90000ffeaffd1001affdbffd8",
            INIT_66 => X"001f000affec0013fff7fff8ffd40004ffe2ffeafff9002400380003003b002e",
            INIT_67 => X"0010fffaffd8ffeffffcffefffedffdb0005ffe2ffc7ffd9ffffffe3000a002a",
            INIT_68 => X"ffef001a002800260019ffe5ffbe001b000cffca0020002d0018003b0012ffe0",
            INIT_69 => X"0025fff0fff0fff20026ffd2ffe8000900020001000d0002000cffff0004000b",
            INIT_6A => X"ffe3fff9001affdcffe70016fffd001d00310019fff0ff880006ffedff840021",
            INIT_6B => X"ffe60030000f0004000500170029003e001b0022002800500008ffdcffee0003",
            INIT_6C => X"ffffffdc000c0026fffc0010001b00140017002e0013001afffbffe1001b0013",
            INIT_6D => X"000f001c002afff6fffbffd60016002efff2fff6ffffffd9fff5000fffd70038",
            INIT_6E => X"ffddffeffff1ffe60017ffd7ffdf0008fff20017fffeffedffe000180025001a",
            INIT_6F => X"ffec00290002ffd5ffe50012ffdeffe8000e0024ffde001f001affc30004fff6",
            INIT_70 => X"ffc9ffd80004ffefffd0fffefffeffecffe3fff6fffdffe3ffffffeaffe9ffe2",
            INIT_71 => X"ffff0005fff10002fff7ffe500060020ffccffb3002200160007fffb0000002f",
            INIT_72 => X"0000ffd9ffd6ffda00260011ffe4ffcd0018fff9000900190019000900260008",
            INIT_73 => X"001300060033ffd7fff800290017fff70012000b000affc30006001cffdc0016",
            INIT_74 => X"ffe4ffdc001ffff40002000000170002000efff9000e0022000c001000030014",
            INIT_75 => X"0006003dfff4001d0037000afff0fffcfffc00380017fffb002e003d0022ffe2",
            INIT_76 => X"00170000ffd8fffdffcf0043ffbbffe9003cffe4ffe4fff1ffd600070040ffe0",
            INIT_77 => X"ffd10009ffdd001a001ffff6ffed002c000400000029000400380013000b0010",
            INIT_78 => X"ffd90002fff6000affecffe9fff8000ffffbffceffefffcffff3ffbbffcaffe6",
            INIT_79 => X"000d0016ffe9000a0007000c0013001c00010015001a000b00060000fff1ffe9",
            INIT_7A => X"ffdb0012fffbffeb0001000a0017003700030000001a0009fff30009ffe0ffcd",
            INIT_7B => X"ffe4ffc6fff300080022fff9000fffe6fffa0003001f002a000a00150006ffeb",
            INIT_7C => X"000900200013fffa0006ffe3fffcffe6ffd9fff60017ffe900040005fff70018",
            INIT_7D => X"000c002b001b0001002e000effe1ffefffebfffcfff90020000bfff400060000",
            INIT_7E => X"ffd8ffc8ffe9ffdbffde0054006b004b0028000600500010002a0047fffe000d",
            INIT_7F => X"ffceffd700080009fff7ffc3ffd30009ffedffcc0012fff9fff1fff2ffc7ffe6",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffe4fff30006001f0017ffecfff80016fffe0007fffaffe8ffe0ffd0fff0ffef",
            INIT_01 => X"0005ffd7ffe50030001cffe1ffe3ffebffe3ffe900150010fffb00180009000c",
            INIT_02 => X"fffe0016000d0003ffeeffecfff9ffd1fff3ffdd0024fffefff60002000e000b",
            INIT_03 => X"0033fffd0023000e001d001bfff7ffe90005ffe80013ffecffe2000b00270031",
            INIT_04 => X"ffd2fffa003c00370023002200220001ffe90000ffea0003001c000affdbfff0",
            INIT_05 => X"00200016004100040000fffe000900000018fff7ffd6ffc1ffe00002ffceffc2",
            INIT_06 => X"00130017001a00190026001b000d0018001dfff7000a0010fff7ffec000dfff9",
            INIT_07 => X"ffc0ffefffd0ffe20004fffdffff0028ffa40028002dffc2ffee004200210011",
            INIT_08 => X"001dffecfff7ffac00090055ffbeffb70036ffbfffb6003fffaeffe6fff5ff8f",
            INIT_09 => X"00240013000e0007000affff0006fff20020000a0000fff2ffea000900220006",
            INIT_0A => X"ffe40002ffcd0000ffedffbcffeefff20005001e0019000d0009002300350040",
            INIT_0B => X"fffb0030001effe7ffee0002fffb0003fff8fffc0027ffd4ffe80008ffe8ffdc",
            INIT_0C => X"ffec000ffffb000000110001ffce0000ffe1ffffffe3fff9ffe70012000e000b",
            INIT_0D => X"000cfff5000c0012fffe002c003b0001000e0036ffe00013ffeaffc1002cfff5",
            INIT_0E => X"fff7ffeaffc2000b001affec000a000e000dfffc0003ffe10028fffcffe1fffb",
            INIT_0F => X"fff700140029fff8000e0010ffcd001500040003001e0042001e00320028ffce",
            INIT_10 => X"001bffe800140003001b000a0009ffe5000b000bfff8ff97ffd0ffeefff10018",
            INIT_11 => X"001300210013001e0000fff7003a0025000000040013000f00150000ffe4001c",
            INIT_12 => X"ffed0002000bffdcfff0ffdafffeffeb000900220006ffe3ffe5001400060002",
            INIT_13 => X"ffc40038ff8cff9d0003ffaeff99002800160001ffe10002fffefff4ffdbffd2",
            INIT_14 => X"000e0016ffff000a0000ffed001f0015fffd000e0002001c000200260012ff77",
            INIT_15 => X"ffc6ffbcff91ffdb0000fff2001b0003ffeaffd30025fff9fffc000e0019001a",
            INIT_16 => X"000000100003fffeffecfffc000affc8ffedffe2ffcfffb7ffcd0006ffb1ff9c",
            INIT_17 => X"00010007000e001c00100006ffe5ffea00040018fffeffee0016002b00020011",
            INIT_18 => X"fff1fff800250047fff200310018fff9ffee0009ffff0005fff3000e001f000c",
            INIT_19 => X"003100410028003b0017ffd9ffd60017ffefffa6fff3ffe2ffc2fff10012001f",
            INIT_1A => X"fff2ffcdffbdffe7fff2fff0ffd9ffb3ffd9ffdcffa7ffc9ffff00280038003d",
            INIT_1B => X"0012ffdd00040000002f003e003a0045001afff4ffdafffe002cffdaffb1fff3",
            INIT_1C => X"0018002d001300220052fff70048fffd0015ffecffd80015fffb00110007000c",
            INIT_1D => X"0011000c0021001e0016000f00030015fffbfff80001fff5fff6ffdc0001fff3",
            INIT_1E => X"0014fffffff70014000ffff8fffa0000ffbbffbbffbfff96ffd600180014000d",
            INIT_1F => X"ffbbffe3ffd3ffdbffabffe500150023ffd200120006fff1ffedffef00100004",
            INIT_20 => X"ffe6ffe60024fff1fff0001a0004fff20041ffff001300120022ffe0ffd7ffde",
            INIT_21 => X"000c0002001100070010002200170010001bffe6ffdb0004fffa002c00050009",
            INIT_22 => X"001200090026000afff4fff1fff7001efffd00110046ffd700170023000f0009",
            INIT_23 => X"00200003fffc0030002e0002ffe9ffe8ffe5fff7fff1000a0010fffa0007000b",
            INIT_24 => X"fffefff600030001000a0001000c00150011fffd001a000d0025001100100004",
            INIT_25 => X"00450035fff5001f002900270016001dffe0001b000b0029001e001f00180002",
            INIT_26 => X"ffe8000a0010ffeb0006000f0023ffffffd8ffefffeffff9ffe50017ffeb001c",
            INIT_27 => X"0024003c000a001dfffcffe9fff300240007ffe40009fff900000004fff8001a",
            INIT_28 => X"0006fff0ffddffc9ffd7fff8ffb7ffd7ffceffc2ffedffe100110014fffcfff1",
            INIT_29 => X"002d001d0049fff9001a00260015fff7001dfff9002a000500250003ffdbffee",
            INIT_2A => X"002d000e001c0025ffe200060014fff800100018000ffff1000300170008000b",
            INIT_2B => X"ffecffe4ffafffc3ffe9ffe6000cffe400000009ffeaffd9000c00030019002a",
            INIT_2C => X"fffffff3fff600060012ffe5000a003e0002000a002a004fffbdffbbffc6ffbe",
            INIT_2D => X"0017fff9ffceffc6fff1fff2fffb000d00140018ffee0008fff000140021fff9",
            INIT_2E => X"00000008001cfffa00050005000500030029000b00040000fff2000c00110001",
            INIT_2F => X"002a000800200008001b0015ffc6ffb7ff920002001c0016001c002c00280011",
            INIT_30 => X"0013fff5fff6fff4ffb9ffd8ffefffc9fff20009ffcaffd40001ffef00060004",
            INIT_31 => X"fffcffe7ffe4fffefffbffe50000000500100016000f0003ffe3ffedfffdfffe",
            INIT_32 => X"ffd5fff5fffeffff0015001fffd50016000cffeaffe5fffbfff7000d00080000",
            INIT_33 => X"ffb60000fff0000f001d00220019ffabff8effc2ffabffbbffbffffeffe0ffd4",
            INIT_34 => X"001600130001fffefff6000a002e001cffeefffb0040ffef003f0031ffc3ffb8",
            INIT_35 => X"0005000a00070024000d003800010022002efff40002000100100029fffc0001",
            INIT_36 => X"fff5ff9cffcbff80ffe0ffffffed0019003dffe9002a0005001e0018001f0012",
            INIT_37 => X"ffd0ff9affb9ffbbffceffebffd1ffe1001affd1ffd80012fffbffeb0010ffff",
            INIT_38 => X"fffcfff3001e001e00460044000efffd0018001700120023002300270019ffc2",
            INIT_39 => X"ffedffd6ffcc001affd1ffd7ffebfffaffd3ffd3fffeffe3fffaffd7ffe9ffcc",
            INIT_3A => X"0017000affb1ff90ffd3ffa6ff7bffa50021ffccffdaffebffbbffedffefffed",
            INIT_3B => X"ffb9ffe6ffbf00290004fff50004003d00160009002500180008000d00230000",
            INIT_3C => X"0006ffe4000300090000000b0010000c0006fffdffef00140010fff40004000d",
            INIT_3D => X"ffeaffb2ffefffe0ffc50020001d001100100010000ffffe0011000300240018",
            INIT_3E => X"000fffdc0004002d004800010018002b0022fff4fff60006ffeaffe2ffcfffde",
            INIT_3F => X"ffecffeffff2fff6ffe0fff4fffefffafff4001dffe500180008fff8fffa0013",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fffc0015ffdd001e00470008001a000c002d002b0007000bffff0004ffedfff3",
            INIT_41 => X"ffedffed000ffff90018fffe001cffd8ffdc0021ffefffdf0008fffb0016000c",
            INIT_42 => X"fff90009fff40004ffcdffe1ffd1fff0ffcfffd5ffe1ffe8ffe7fffaffed002b",
            INIT_43 => X"ffeefff700190020ffeb0034001e0002000000150007ffeafffa000d0009fffe",
            INIT_44 => X"001d0004ffed0013002b001b0000001e0004ffcc0000001affeffffa000cffe6",
            INIT_45 => X"fff0ffdaffdbffe500060001fff4ffa8ff97ffb9fff3ffcaffe0ffbeffd3ffaf",
            INIT_46 => X"001d001d0013001b001affebffdfff8dffdaffd0ffc600230006fffcffdeffd8",
            INIT_47 => X"fff80000001d0021ffee000400220012001afffa000a000b0023002e0010fffc",
            INIT_48 => X"0006ffd0ffc3ffc8ffb2ffe3ffcbffecffe5ffce000a00080019000000100008",
            INIT_49 => X"ffdd0006ffaeffd7ffceffdafff5ffcffff8fff30006ffeafff4001600220013",
            INIT_4A => X"0009000ffff7001bfffc0007001b0014001d000f0016001b002c0010000dffd9",
            INIT_4B => X"ffe400130002fff90006000000010003000000150009ffe800080012ffe5ffd6",
            INIT_4C => X"fffe0002ffddffceffe2ffdaffc5ffde002b001b0000ffd80000fff8fffdfff1",
            INIT_4D => X"ffecffdeffcafffe0009ffe90001000f0012fffbffed0001000a000400030016",
            INIT_4E => X"ffbf001f0021ffdfffdfffeb001bffef00000000fff9ffecfff70005000e0008",
            INIT_4F => X"fffb0002ffffffe3ffe6ffbbfff8ffd600190010000c0000fffb0019ffebffcf",
            INIT_50 => X"fffaffcfffdafff4ffd6000dffe1fffafff8fff3fff0fff40012fffbffe50020",
            INIT_51 => X"0000fff1fffa0007ffc6001f000d000b0002ffeefff2000b0029fffdffcd0006",
            INIT_52 => X"ffe2ffd50000fffefff300080011ffd90037fffbfff7002a0010ffe4001f001f",
            INIT_53 => X"004e0003ffd9002c0044fff8fff7fff0002affc7ffe90015ffc0fff10016ffed",
            INIT_54 => X"0023ffefffdb001cffeb00120029004700070027000f0005000effdcfff8ffb6",
            INIT_55 => X"fff7ffcf0013fff6fffb0005000bffd4ffe60019000f000c00250036ffdbfff3",
            INIT_56 => X"0006fffc0040ffd8ffe7003cffdcffd0003a00030027002ffff9ffdaffff0016",
            INIT_57 => X"0015ffd6001affe7ffeeffeffff50023ffecffbefff9002affd0ffe0001cfff4",
            INIT_58 => X"ffeefff0000bffd7fff40002fff8002affcc0007fffdfffe0006003100080032",
            INIT_59 => X"0020ffefffe200270003ffeb0004000200150016fff8ffddffed0001fff2fffe",
            INIT_5A => X"ffe3fff700190022ffc0ffe80006ffbeffe2fffafffdfff80010001dffe0ffef",
            INIT_5B => X"001e0006005e00520050001b002e00420011fff5ffee0055ffedffc100400019",
            INIT_5C => X"ffceffed000dffde0001001a00280003ffc800160013ffdaffe1001bffe20023",
            INIT_5D => X"001e000500270017001d001c000affe3ffeafff5fffdffe30000fff7001c002d",
            INIT_5E => X"ffc3ffca0050003b00170032003e0029ffe600080005001d001200180021001f",
            INIT_5F => X"001100220054ffd6ffef0036ffcaffda0008fffefff8ffeffffaffd3ffdc0008",
            INIT_60 => X"001d001d00050025002e00290004fff3fff00004ffe5fffefffffff2fffe0006",
            INIT_61 => X"00370028002f0037fff8ffa1ffbeff93ff8fff89ffbbffb5ffa7ffb400070029",
            INIT_62 => X"001800270000ffcaffafffa9ffcfff96ffb3ffaeffb7ffad001500290027ffff",
            INIT_63 => X"0026fff6ffdcffc5fff3ffedffec00320028000e00100012ffd70034002b0002",
            INIT_64 => X"fff5ffe4001afff50004fff4ffdaffe7fffc000200020007fff5000dffef001c",
            INIT_65 => X"001e0000fff9fffeffe9fff9000000090000fff7ffd2fff70017ffeffff0ffc7",
            INIT_66 => X"0002001efffe001d0014ffdafff70009001c0004ffe5fff1ffecffcaffeeffdd",
            INIT_67 => X"00190011001a000e000ffff1ffeb000e00070006000f000a0000ffec002a0028",
            INIT_68 => X"0011000f000e000a0012fffe00000006ffffffeaffddffe20019001a00070007",
            INIT_69 => X"000b000f0005000c0027001600260019000e0021fffa000000160007ffe4ffe4",
            INIT_6A => X"00170002002b001efff6ffd6ffe3000dffacffd8001effd2ffee0015fff3fff7",
            INIT_6B => X"000f0028001e00000005ffeeffebfffdfffdfff8000bfffe000bfff9fff70027",
            INIT_6C => X"00170000fffbfff9000cfffd0007002900230010001f001a00130017fffd000f",
            INIT_6D => X"ffe3ffb2ffd5ffe3ffa0ff99ffc5ff77fff2ffc7ffc400160029000a001b0009",
            INIT_6E => X"fff3fff5fff10008000afffe00080005001efffaffe5fff900090007fff2000b",
            INIT_6F => X"0018fffc0017ffeb00020006ffde00290023fff2000a000300130013fff1fffb",
            INIT_70 => X"00080002ffecffdeffedfff9ffe3fffefffa0007fff5ffca000bfff1ffc6fff4",
            INIT_71 => X"000500240020001d001b0019000700130011fffdffe4ffe700000008000d0007",
            INIT_72 => X"004600180026001c00000018000f0005000300090012fffbffecffe5fff3fffd",
            INIT_73 => X"ffe5ffe6000ffffcfffe0002ffd7ffebfffdffc7000dffff0007002200230047",
            INIT_74 => X"00130023000effe7ffcfffa0ffd0ffbcff960000ffe7ffff000bffc7ff97fffc",
            INIT_75 => X"0006fff5ffeaffcaffef0013ffe7002700080027002300250041fff1000a000e",
            INIT_76 => X"ffee000900240015ffffffed0004fffffff0000affecfffafff2fff800050004",
            INIT_77 => X"0023000b000bfffc00060000fff30020fff90017001300050004001b000a001d",
            INIT_78 => X"ffe3000cfff3ffeffff400040006ffeeffd2fff7fffcffe2ffd900050016000b",
            INIT_79 => X"ffed0003001b003a0000000f002cfff4fffc0021ffdafff7ffee000cffe4ffe8",
            INIT_7A => X"000c000a0015ffeffff9ffecfff5fffc0009ffff0004fffefffdffdfffeafffd",
            INIT_7B => X"ffe40001000b000600170023000b003f000efff800450046001b0039001e0009",
            INIT_7C => X"fff40008001200080039ffcaffd7ffd4ffb0ffd4fffcffe300260046000ffff9",
            INIT_7D => X"000c0027001bffc7ffb8ffe8ffc1ffcefffd0004fff6000cffedffedffee0003",
            INIT_7E => X"000bffd6000dffe6ffff000effe80014001e0004ffdcfff9ffe9ffe2ffe5fff4",
            INIT_7F => X"ffca000bffdeffacffcbffc6ffc4fff4ffeafffaffed00100018fff600120010",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00160028fff2000c0008fff800120014ffed001b0022001200150006001fff9d",
            INIT_01 => X"ffd7ffec0002fff1ffe5ffeb0025fff3fffdfff90005fffa0006002d0016ffef",
            INIT_02 => X"0004002d0013fffe001fffd3ffedffefffe3ffd5ffe00016ffc4ffadffe4ffd5",
            INIT_03 => X"001f000ffff0fff9000cffd60000000b0002ffd5ffd4fff4ffd1ffe30000fff7",
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
    end generate MEM_IWGHT_LAYER1_ENTITY9;


    MEM_IWGHT_LAYER2_ENTITY0 : if BRAM_NAME = "iwght_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"16b30b7a15ce0dc2e731e7ef06a405212a0cb7b030010073f170fe76f509f8e0",
            INIT_01 => X"2a4918e6ee1e07d6ddff17c202700f0a0a63f8a123230bd52342f083fd10f645",
            INIT_02 => X"ffdd0017fffdffcfffd7ffef0005fff2fff7ffedfffaffed0000fff2fff50006",
            INIT_03 => X"fff500040008ffd1ffe2ffdc0002fff5ffdcffebffeb0005ffe4fffdffe90010",
            INIT_04 => X"001300090014001cffe80000fffbffff000cfff7ffdeffeaffdcffdfffd3fffe",
            INIT_05 => X"ffeafffafffcffec00130016fffaffe4fff5fffc0015fff90004fff6ffea0000",
            INIT_06 => X"0015fff5ffe2ffe4fff4fff30007ffed0004001afff2001cffe4ffea0009fff9",
            INIT_07 => X"ffdaffefffdaffe2fff5fff4ffd7ffd4ffd9ffe2fff1ffdb000ffff00000fff8",
            INIT_08 => X"0003000efff20005ffddffd0ffe6fff9000cffe800160000ffe4ffd0ffe3fff8",
            INIT_09 => X"ffdefffbffe50013ffe70000ffef0006000d0017fffaffe0ffdbffe3ffedfff3",
            INIT_0A => X"fff5ffe0ffdaffdc0000fffcfffafff9000d000a00050012ffeaffeaffe60004",
            INIT_0B => X"ffed0013fffe000affff00160016000effeefff5001e000a0009002c00150014",
            INIT_0C => X"000f000d0015002600300000fff6ffeeffe80000ffeafffd000b000800140014",
            INIT_0D => X"000c0036000a002e003c0004004f00570029001200360027ffe2ffcbffd2fff1",
            INIT_0E => X"0004ffe6ffc1ffaf00070000000affed001a0011ffd9ffd4ffdfffecfff40009",
            INIT_0F => X"000ffff000300068003d001100580014ffd7ffc3ffe0fff0fffafff80031001d",
            INIT_10 => X"006200600059004e003f003affdd0001ffd4fff70012ffe80030000a000fffde",
            INIT_11 => X"0017fff800110010ffea0003ffe60006ffe6fff6000b00120017003700490029",
            INIT_12 => X"003d002100040012001e0021002bffeeffbfffc7ffec001afffbfffa0005fffb",
            INIT_13 => X"ffcaffc8ffdaffde000200060022001c000bffe3ffe9ffd2fff80009000d0035",
            INIT_14 => X"ffcefff60004ffe200020017ffd20009ffe400320006ffbf001effefffc50009",
            INIT_15 => X"ffb2005f0019ffae003b00070008fff8fff4001bffcafff2001f0011002cfff6",
            INIT_16 => X"001affee001efffcfffbffeaffe4fff30001ffd9ffd00012fffeffd7005e0013",
            INIT_17 => X"001f001d0046ff8a000b008bff6300170056ffa400050003001f0000ffcffff7",
            INIT_18 => X"ffdcfff4fff7ffea001bffe6fff00014ffffffd40016fff3ffea0014ffdd000b",
            INIT_19 => X"ffed00020062fff0ffe50033ffeffff500220014ffe1fff60017fff7ffe2fff7",
            INIT_1A => X"ff49000c0047ff73001c001affbb00050050ff9200130045ffdbfffe0023000f",
            INIT_1B => X"00030008fff6fffd0019ffe9ffd6fff2fffaffd20012000e0054ff68001b0057",
            INIT_1C => X"ffd8fffbfffa000dffc900450001ffaa00420001ffd50004fffdfff800220012",
            INIT_1D => X"ffdc0011ffebfff3001efff80016fffb0000ffddfff4ffe30030fff4001c001b",
            INIT_1E => X"ffc4ff83ffe3ffdeffb5002dfff30006003b000bffee001effe6ffae00360016",
            INIT_1F => X"ffee000e000affe3001a001600140042fff500240000ffc50040ffefffa7000a",
            INIT_20 => X"00290004fffe0047001c001c004c0047002a0016fffbfff0ffd90009ffe3ffe6",
            INIT_21 => X"0000ffac0008ffc1ffcdffe6ffe2001ffff0fff9ffe1ffdbffc80011ffe8ffdf",
            INIT_22 => X"000dffcaffceffcdffce00000030000fffd700160011ffef002dffefffdefff9",
            INIT_23 => X"0050004d00420016002800170001003f000effed000bfff9ffd90002ffc8ff94",
            INIT_24 => X"0012ffe20021002a003affea0032000f00390031ffcafff2002a0049003c004f",
            INIT_25 => X"ffecffd2ffaaffdcff9fffc0ff8cffaeffe900060029ffdb0019001bffc4000c",
            INIT_26 => X"fffe000bffe000050006ffe70018ffd50034ffecffd5000afff6fff00015000f",
            INIT_27 => X"0061ffdaffd20044000c0027ffc0002f0025ffcc002c0005fff4fff8fffcfff2",
            INIT_28 => X"ffee000cfffd000effc4001dffd5ffccffcaffe5fff00003ffc8004affe5ffac",
            INIT_29 => X"002b005fff6a00310068ff3800390019ffbb001bffc50019fff1ffd8002e000c",
            INIT_2A => X"0007ffccffddfffbfffbfff300030000ffc70039000f00050033ffe600190005",
            INIT_2B => X"ffe1003effcbffe9002cffd1ffebfffc0029fff10000fff8ffeefff7000fffc4",
            INIT_2C => X"00540012ffd0001c005bff78002a002affa5001e0023ffda001dffd30039ffbf",
            INIT_2D => X"0016000dfffa0003000f0017ffe2001efff300040020007fff670059004eff86",
            INIT_2E => X"ffac004c0009ff810060ffd3ffc90033ffdeffe700000031ffc4001cfffeffe8",
            INIT_2F => X"ffdbffe0ffffffc60019fff40010fff900040007ffecfff1fff0fff1ffef0013",
            INIT_30 => X"0008000a000c0005002f00210001000f00110010ffe90023fffa0011ffc5ffbe",
            INIT_31 => X"fff9000c0022ff94ff7dff7dff8bff23ff69ff88ff90ff91ffedfffd003a0011",
            INIT_32 => X"000dffe8000ffffd00090023fffd00120027000effe100170038ffe6fffa001a",
            INIT_33 => X"ffa5ffaeffa8ffb1ffc5ffebffd6000600090012000f001fffecffef00150016",
            INIT_34 => X"ff84ff87ffc3fff7ffb7ffe70015fff0fffeffdbfff60017ffe3000affdeff9b",
            INIT_35 => X"001000070023ffe3000b0001ffe70020fffffffe001fffed000fff8eff94ffbc",
            INIT_36 => X"0002fff7ffe3ffc8ffadffb0ff70ff71ffa9ff7eff8f0002002f001400070028",
            INIT_37 => X"002200190013000a001e0000ffee000dfff80001000c001cffcdffe50012ffe2",
            INIT_38 => X"ffd5000dfff3fffdffdd002f001b0017003b0026fff0001dfff7fffc00280016",
            INIT_39 => X"fff7001dffea002f002c000c0003001400080004002a002800100032ffd3ffd9",
            INIT_3A => X"fff2ffe3ffc3000d000a001b002100300030ffd70042fffdfff00018fffd000d",
            INIT_3B => X"ffac000f00350019002f0019002100030006ffea000b003f0044fffffffbffef",
            INIT_3C => X"003cfff1ffe60002fff7ffddffdbffec00130027001d0001fffcfffcffaeff9b",
            INIT_3D => X"ffe70016fffa002800250033000dffdf00190000fff3fffb000f0008002b0016",
            INIT_3E => X"0027003600260018000effcdffcd000e000f0005000600100037ffcf000dfffd",
            INIT_3F => X"0009ffc5ffdfffd60002ffd8ffe5000fffea000a0016ffe2ffbeffe90006fff9",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffc4ffdeffed0026ffd5ffcd00090006ffd600290018002d001f001c0020fff0",
            INIT_41 => X"ffedffecffd8ffd60000ffd7ffee0016001f0002ffe9ffdefff6ffc7ffdeffdd",
            INIT_42 => X"fff8fff4fffbffff0002000a0000fff7fff5fffefff9001c0001fff10002ffd3",
            INIT_43 => X"fff7000afff50027004800440013003b003cfff6002a00260006ffefffdc0000",
            INIT_44 => X"ffcd000cfff30016002e000300180030002600000007002600240012fffffff5",
            INIT_45 => X"0006ffcfffe1001e0004fff4ffda0023ff6bffa0ff9dff82ffaeffc1ffaaff92",
            INIT_46 => X"000c003d002100010020002bffde001b0015ffdffff1fff8000bffdf0000ffef",
            INIT_47 => X"0008fff10015fffbffec0000ffff0002fffffff90020000000220021001e0002",
            INIT_48 => X"fff0ffd0ffd8ffd8ffc8ffd1ffdf0013ffe0ffd0fff2000efff500020020ffe2",
            INIT_49 => X"fffcffeaffecffd0fff8fffbffd4fff20000000dfff80008000bffe2fff4ffe1",
            INIT_4A => X"001cfff9000cfff8002b001bffe8ffb6ffca0000fff5fffbfff10015000d0019",
            INIT_4B => X"0020002700100012fffc0015ffe7ffe50020fff1fff6ffe4000100090025fff0",
            INIT_4C => X"0022000200230004000fffd20021ffb7ff8dffd6ffc6001500140012000f0012",
            INIT_4D => X"001d00110016fff3001d001affef0014fff9001affe5ffecfff90012fffe0006",
            INIT_4E => X"002e000afff9000e0005000c00260027000f000e0015002000160026000c000c",
            INIT_4F => X"0021003d00490018003ffffeffd0ffe00003ffebffd7000affff001a002c0000",
            INIT_50 => X"ffeaffebffde0031fffd0010fff3fff3fff8ffd3fff6ffd7ffc400290039003f",
            INIT_51 => X"0013002300280029ffe4fff8fff6ffd2ffc4ffd3000d001affe5fff0ffd8ffaa",
            INIT_52 => X"fff8ffcbffe4ffcefff1fffdfff1001e0018ffdeffbdffd1fff1ffe6fff4fff3",
            INIT_53 => X"0038000a001d002afff50004fff700040024fff7ffe8fffbffedffc5ffe8002e",
            INIT_54 => X"00250026fff7000f00340004ffed0002fffdffebfff100140013001cfffdfff2",
            INIT_55 => X"ffddfff7ffe0000600170035002a0038006500020006000c0007001c001cfffb",
            INIT_56 => X"0035ff9cff96fff5ff62ff78ffa7ffbcffcbffddffcafff9ffe5ffc3ffddffe8",
            INIT_57 => X"0023fff7ffdc001d00040010ffc7002effd7ffbfffdcffe9ffbdffc70005003b",
            INIT_58 => X"001e00120019fff7001e000000030011fffaffe9ffe2001900000008000afff5",
            INIT_59 => X"fff2ffc1ffa1ffb1000f001b002bfff2fff8fffa001a000efff60023001b001c",
            INIT_5A => X"0008ffe500300037000a003e003c0040ffea000e0005ffb4ffccfffaffa5ffc1",
            INIT_5B => X"00280029002b00080005002c0001fff8ffe7ffed0014ffebfff7ffe9fff10016",
            INIT_5C => X"ffe7004b00330011fff4ffe40021fffb0018fffbfffe00000001ffeb0005ffe8",
            INIT_5D => X"001e00050034ffedfff9fff3ffe7ffe6001c000a0024001d001100290022fff5",
            INIT_5E => X"ffe1000d00130012001b0023001e001300120018001dfffbffe1ffe6fff1ffed",
            INIT_5F => X"00160032003500050004003c001dffe70001003cffce000d0013fffe00240014",
            INIT_60 => X"003a002b002a0062004100150020fffc0025001b001b003e00320042ffed0000",
            INIT_61 => X"004e00520036000000190007ffcaffccffe80017fffa000d0009fffd00180044",
            INIT_62 => X"00020014001e001bfff90011fffd002a002300000002fffbffef004100380014",
            INIT_63 => X"0013fff4ffc9fff20019ffd4ffde0010fff2fff0000a0009ffe2fff8ffef0004",
            INIT_64 => X"fff80009fff70000001efffb00230009fffafffdffd3ffd9fffa000afff9fffc",
            INIT_65 => X"fffb001e0014ffe40017fffd001f00030013fff7002b0008000400210000ffea",
            INIT_66 => X"ffdcffd5002a001afff6fffc0013ffe1ffea0010ffdc0016000700050035002d",
            INIT_67 => X"ffe4000f0000ff65ff73ff74ff63ff45ff4affe5ffd8ffae0015ffbbffcefff0",
            INIT_68 => X"fff7ffda00180037ffe70022005bffc900130031ffe9001afff600000004000e",
            INIT_69 => X"002d004bfffa00110002ffc5ffd7ffe2000600200051ffd800030028ffcbfffa",
            INIT_6A => X"ffd3ffc9ffc9ffccff7effc1000e0001ffcb0032001effdb0037002bffee001d",
            INIT_6B => X"003f000c000500320019002dfff500130020000b000600010016ffebffc6ffcb",
            INIT_6C => X"00250018fff3ffc3ffcbffd1ff99ff820022000cfffa001500370033001b0026",
            INIT_6D => X"001a0019001800190015fff80027ffd90002ffcdffe900010019fffb0018fff8",
            INIT_6E => X"fff8ffd9000c000cffdf0011fff00018fffe0012ffeeffddffe6fffaffe0ffec",
            INIT_6F => X"00000000fff90011ffff0016ffe1ffee00110005fffc0012fff40005ffdcfffb",
            INIT_70 => X"001f000f000cffffffec0012ffbfffc8ffcdffa3ff9fffceffecffe2fff6000e",
            INIT_71 => X"ffaf0012fff1ffcfffefffdbffdefffcfffeffee0018fff9001300070014000a",
            INIT_72 => X"0013fff4ffe9ffbdffefff97ffa8ff96ffd6ffcaffeeffddffb0ffafffd2ffd0",
            INIT_73 => X"ffc5ffb5ffc2ff95ff63ffad00060023001f00230017fffe0001fffd0006fff0",
            INIT_74 => X"00120003001e000bfff00009000afffb0008ffe1fff800140017ffdeffe2ffc4",
            INIT_75 => X"fffbffec00140028001fffefffcfffe8ffb10000fff10011000e0017fff0fff7",
            INIT_76 => X"fff70028fffdffcd000bffefffd0ffd7fff3ffdefffbffe30008000f000dfff3",
            INIT_77 => X"000affecffe0000efff9ffef0010002a00230001001cfffeffd90001000dffcd",
            INIT_78 => X"fff2ffed0016000300030010000a001bfff5ffdfffff0011fff20003ffddfffb",
            INIT_79 => X"ffb6ffc6ffbb0075004d0069005c005f006a002c0014003dfff1fff1fffd0003",
            INIT_7A => X"ff9bffe9ffcbffd3ffc6ff95ffa9ffc3ffd2ffc00029001e0020fffbfff8ffae",
            INIT_7B => X"001effe900140044002cffe20007002b00130027001bffb5ffb5ffbdffbdffa7",
            INIT_7C => X"00090007000200050019001c000fffee00000001fff100000011001efff10002",
            INIT_7D => X"fff50002001e000cfffeffd8fffd000bffec0007001900030029ffd1fff90010",
            INIT_7E => X"fff2ffcf0032003b00600028003a004ffffdfff7fffc0007ffe2000c0015000e",
            INIT_7F => X"00080016fff6fffbffe6fff8fff6ffe3fffa0038fffffffbffed0018fffbfff4",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"ffb60006fffaffe1002e0000ffdffff0fff0fffefffa00070018fffdfff00006",
            INIT_01 => X"0008001e001f00060019000100090000ffecffe1ffdf001ffffefffdfff2ffdb",
            INIT_02 => X"ffed002b003cff2fff1eff33ff1bfeb6fef2ffe3ff56ff63ffeb0005fffe0005",
            INIT_03 => X"001effea000c0011fff200030039fff8fffd001900000027003bfff300190029",
            INIT_04 => X"fff50013002cffef002d0010ffd70000002a00190051fffb0004000f0000fff6",
            INIT_05 => X"ffdeffe3ffddffeaffd3fff0ffff000ffffd001ffff5ffeb000b000d0024fff3",
            INIT_06 => X"0017ffea001e0024ffe4ffd7fff2001cfffbffde0001fffdfffefffaffc7ffe6",
            INIT_07 => X"0003001fff84ff38ff6bff5dff3aff12000eff7cff88fff8fffc0006ffdcfff7",
            INIT_08 => X"0013ffea0000fff9ffe5ffd1fff0fff5ffcdffecfffeffed000100210011fff8",
            INIT_09 => X"0016ffdf00010029001afff4002f000b00330030001d0016ffe7fff6002e0033",
            INIT_0A => X"0003fff9fffdffecffffffd0ffc8fff9ffe9ffd0fffb0015000ffffafff4fff4",
            INIT_0B => X"ffe0ffe3ffe60001ffebffd10007ffb0fff6fff3ffecffda0009ffdcffe5ffed",
            INIT_0C => X"ff52ffbeff8dff92ffc3ffaeffc4ffabffb3ffce0001ffe7ffe5fff2fffeffee",
            INIT_0D => X"ffc7ffc2ffd6ffe5ffcaffdfffd9ffd3ff90ff75ff94ffb4ff75ff83ffd6ffa2",
            INIT_0E => X"ffeafff9ffeb0010ffee0021000100170014001f001f002700010025002bffc4",
            INIT_0F => X"0016000e003ffffdffff0023001c000a0000000700270014000b0007ffe4fff1",
            INIT_10 => X"0008ffdb000f000c00190001ffecffcbffc0001cffe9003f003600280028004a",
            INIT_11 => X"0073007e004d006900650038000d001d0026ffe5ffebffcefffeffdd00000010",
            INIT_12 => X"0036002400200019ffb9ff8dffbeffd5ffe3ffeafffe0012fffc0007002b0028",
            INIT_13 => X"001e0008ffe8ffbbffc8fff0fff4ffdcfff1fff400160007001900110046002d",
            INIT_14 => X"002000500036ffcffff0002a001b0017000e0022001d004100250020001affe6",
            INIT_15 => X"0062ffd9ffa2ffd00004ffe9ffec00230048004fffd7ffaaffd8fff8ffed0012",
            INIT_16 => X"ffdaffbf001a0017001d002600320042ffabff8effb7fffa001d0004004d007d",
            INIT_17 => X"ffff0010000effc1ffb7ffc000240004000f001500160013fff6ffdaffe0ffea",
            INIT_18 => X"ffe80011fff7fffe0031004600410007000bfff1ffb5ffa6ffdb00210029002a",
            INIT_19 => X"0004fffdfffe0000002b001100150016fff3000b0025ffe5ffd8fff9ffe1fff5",
            INIT_1A => X"ffc0ffcbffdd0004000d00100028002f0019ffc3ffddffe200190010fffa0033",
            INIT_1B => X"0024000600370014ffdffff3000affdcffe7ffcafffe0000fff8ffefffe9fffb",
            INIT_1C => X"00100000001a002a0023fff90002fff2002efff3000100360023fff200250003",
            INIT_1D => X"ffe6ffe3ffdcfff500200006000800010036fffe0013002e000cfffa00140016",
            INIT_1E => X"000b0038001200270013000a00010010000ffffbfff8fff7fff10003ffefffec",
            INIT_1F => X"00160026002c003d0022fff4001700210049003a0042001f005a0060ffe8001f",
            INIT_20 => X"ffc70026001bffe9fff700150004000effe30024000cfff500280000ffe9001a",
            INIT_21 => X"fff20023fffbffd100300013001d0028002b001f001cfffd001effd8ffdbfff7",
            INIT_22 => X"001dfff8fffc00110021000800050028ffe50010fff1ffe3ffd7ffdaffdcffe8",
            INIT_23 => X"ffa8ffcaffd3ffcdffd3ffb5ffb8ffbeffc6ffe7fff0ffeafff3ffef001affea",
            INIT_24 => X"00630000000f00430052002d004500210033001900200036003d0011002d0031",
            INIT_25 => X"ff8bffa7ff96fff2ffe40037002a000e0057fff6000200150011003600150025",
            INIT_26 => X"ffd7000dffe70012ffffffe60029ffe0ffbb0012ffe3ffcb0018ffa8ffbfffa6",
            INIT_27 => X"ffe200030003000a000effcaffe3ffb1ffbfffb7000bfffbffcfffea0004ffe1",
            INIT_28 => X"000affdf000c0011fff1ffe6fff4ffe500210029ffe90020000afff4ffe7fffe",
            INIT_29 => X"0010fffa000f0006003dffcefffeffe1ffbeffd2ffc8ffdbffcd0001fff00030",
            INIT_2A => X"000400010008003cfffaffef0019000effd2000f0027001b00230032fff5fffd",
            INIT_2B => X"0023000900220031fff50049fffaffd9002bffebffff001a003e00040020002c",
            INIT_2C => X"00300020002c004e0044004d003f00560040002efff8ffe100220024000ffff0",
            INIT_2D => X"ffcbffdcffbaffa8ffc9ffc4fff9ffed0020000bfffc0015000fffe7fffa001c",
            INIT_2E => X"001f00160003ffebfff500090000000b00020000001b000effe4fff2ffcdffbd",
            INIT_2F => X"fffffffd00190035001bffddffdeffebffe8fffbfffbffedfff5000800250000",
            INIT_30 => X"ffdeffea00150019ffe7fff3000bffe7000ffff900260029001800090003001c",
            INIT_31 => X"ffe7fffd0007ffdbffdeffff000afff8ffccffb6ffd6ffe8fff4ffd9ffc9fff5",
            INIT_32 => X"0009fffd000ffffdffe4fffb001700070010ffef001100130012fff70019fff7",
            INIT_33 => X"0010fff0001afffafff7fff9ffe4ffecffcefffaffe0ffd7ffdd0007ffee0004",
            INIT_34 => X"0016001cffcfffbcffc60009ffb9ffcfffc7ffc9ffc100170024ffe1ffe8000a",
            INIT_35 => X"ffffffdffff2ffef0004000affe00006ffe600020001001effef0019001e000f",
            INIT_36 => X"fff5000affd7ffd300030000ffec00220035fff2001200020019001900140005",
            INIT_37 => X"ffe4ffe3ffd2ffefffdaffe6fff60005ffd1ffdfffd2fff7ffc2ffc00003ffeb",
            INIT_38 => X"00140021000d0002fffafff60023fff9fff8fff800150025fff4ffe9ffe6ffec",
            INIT_39 => X"ffe9ffddfff30012ffe9ffcaffc5ffdfffe3ffed001000080021fff1000bfffc",
            INIT_3A => X"fffb001bfff1fff50004fffb000f000fffe3ffdeffedffe6ffe0ffe3ffd2fff7",
            INIT_3B => X"001a0019000e00010023000800020015fff7000500060006ffee00030013ffe0",
            INIT_3C => X"0006003e002c0004ffdbffdafffdffd5ffe3fff30008fffa00070031000cfffe",
            INIT_3D => X"ffddffe6000bffefffd00000ffdbfff50005000afff4001600350008003f000f",
            INIT_3E => X"001b002b00100037001e0010002d0036000efff8ffe7001d0008fff5000b000e",
            INIT_3F => X"fffeffc5ffc5ffc3ffeb00000011000cfff0ffff0019000800170007000bffe4",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffdb000800010014001bfff0ffd7ffd3ffebfff5ffd7fff7ffe7000effdbffd1",
            INIT_41 => X"001cffeafff2000bffc1ffd8ffe5fff8ffdaffefffd0ffed000b000cfff9ffe8",
            INIT_42 => X"fff4000afff40006ffff0014ffe200040000ffe70025000d0022002800170015",
            INIT_43 => X"ffce0014000bffecfff70001fffc0035fff5ffe7ffe2ffe8fff00006ffe6ffd4",
            INIT_44 => X"fff4fff60028001b0009000effec0008fff300090018ffef00060011001cfffc",
            INIT_45 => X"fff60010fff00000ffcbffc4fff8ffbe00000000fff2fff8fffbffffffed000d",
            INIT_46 => X"0007fff1ffceffc9ffcbffd0fff0ffc2ffcfffdcffd50007002800180006fff7",
            INIT_47 => X"000d001b000e002cfffeffed00020008ffdcffd9fff8fffcfff9ffdcffe50008",
            INIT_48 => X"ffeaffee001dfff1ffe40006fff80017fff50004ffff0017ffdeffdfffe1fff9",
            INIT_49 => X"001f000c0020001a0039000c00100000fff3000c0009ffe2001f0037ffefffe9",
            INIT_4A => X"ffdbfff1ffeefff7000a0014fff4fff2ffeffff3000b001bfffa001c0026fffb",
            INIT_4B => X"ffceffb7001f0000ffc0ffe10000ffd1ffcc002000050001ffe9ffd5ffc4ffdf",
            INIT_4C => X"fffefff3fff1fff10001fff1fff7ffe3003c0036003b0003ffa5ffd4ffbeffb9",
            INIT_4D => X"fff90024003500260010000afff2000effed00000027000b00090030001a001c",
            INIT_4E => X"0001ffde0001fffaffe6fff8fff2ffe400050009ffe0ffec000afff80019ffe7",
            INIT_4F => X"fff20017fff2ffe70010fffd00140019ffe800030015ffe00017000bffa7ffdb",
            INIT_50 => X"fffd0006ffebfff00006ffccffef0000ff9d000efff0001fffe3fff1fffd0001",
            INIT_51 => X"000e0002ffdcfff4000400180030000d0017000b000b0013fff4ffdf0007ffe2",
            INIT_52 => X"ffea001afff5ffeafff500070039003b0001002a0050fffe000b0022ff8bfffa",
            INIT_53 => X"0029001300140007000d0005fffbffe0fff0ffe40015ffdd00190020002efffc",
            INIT_54 => X"00140057003e003d00370060004c0033002d0042003e0007fff60056003c0008",
            INIT_55 => X"fff9001c00240007001500390024001f001b002b0011006b0041004500150047",
            INIT_56 => X"0001ffb7ffc7fffdffe3ffdf0005ffe70006fffdffe2000bfffffff100180015",
            INIT_57 => X"fffeffe5ffd9ffefffc9000e003affa8ffdf0010ffe6ffd2000afff4ffbfffe5",
            INIT_58 => X"00050009fffa0017001fffe70003ffffffdcffdafff6ffccffe6ffdcffabffca",
            INIT_59 => X"ffdfffccffe3ffbeffcafff9ffd8ffe3ffbf0008000d000100230020ffe00018",
            INIT_5A => X"0036ffcafff1002a0016fff200340000fff90013fff9ffff0003fffcfff7ffeb",
            INIT_5B => X"002f0063ffc0001a0033ffeeffef002effedffd50027ffb4ffca0006ffaa0003",
            INIT_5C => X"ffeb0023001d002e0024ffbb000400060019ffc9001b00340002004e0040fff8",
            INIT_5D => X"ffedffe3ffb300110009ffa4ffea0048ffc5ffdf00210000000900150003ffef",
            INIT_5E => X"ffedffe6ffe7ffdbfff50019ffe2ffea000b0018fff3001d0002fff2001e000a",
            INIT_5F => X"003000130010002100260009ffc5001f0031ffb1ffe80043ffcaffe00002ffe7",
            INIT_60 => X"ffb3000cffe3ffb9ffbefff40056fffeff9f0038fffdffe2ffff0018fffaffff",
            INIT_61 => X"ffe40010ffec000effe6ffd1ffd3fff7ffc5ffe10002fff8ff85fff4fffcff5d",
            INIT_62 => X"0059001fffca0059002affeb0013002f001bffe6001a0014ffde00160009ffd6",
            INIT_63 => X"0006fff2fff40013ffc2ffeaffc8fff4fffe002c00090015000b001dfff2ffe1",
            INIT_64 => X"0000000e0007000300070007ffee00010000ffe800130012ffec000cffd4ffdf",
            INIT_65 => X"fff60009fffa002f005600360072008300740029003700570019001800000016",
            INIT_66 => X"000f001b000a000cffee0033ffec000d0013fff0fffd0006fff3fff7fff2ffee",
            INIT_67 => X"fff4ffecffe5002600080038002efff8ffdffff9ffd1ffe90017ffee001b0014",
            INIT_68 => X"003a00390058002f000f0022001ffffa0000fff40001ffe8ffdd0008ffe5ffd6",
            INIT_69 => X"0003000cfff80000ffd6fffdffe7ffd30027ffdffffb000e000f0020001a0036",
            INIT_6A => X"ffe5001e003f002f003c0030002a002900310034001e0026002b000100300004",
            INIT_6B => X"ffd3ffef000b0000ffd100120012ffd700070014fff9ffe8ffefffed0004fff4",
            INIT_6C => X"004dfffc001a001c00040006fff4fff1ffc5ffd7ffdbffe5ffcb000600000007",
            INIT_6D => X"ffff0014ffddffe5001f00030001001bffe3ffe00011fffc000dffe9001e0035",
            INIT_6E => X"00030000ffc90022fffc002100080031fff7001c002a000c00190013000c0016",
            INIT_6F => X"fff1ffc0ffe2fff3ffe9ffbbffdcfff90000fff9ffa5ffd1ffafffd0ffaeffc3",
            INIT_70 => X"0007ffcd0024ffe0ffd8000afffeffe9ffb1ffd2ffaafff8ff9bff96005d0023",
            INIT_71 => X"003a000400050008000a001cffe9fff4001400160002fffcfffb000f000affdc",
            INIT_72 => X"fffbffedfff9fff50036002500450040ffff001c0028000bfffd000cffdffffe",
            INIT_73 => X"ffe9fff6002b001c00040019003300040003ffff001d0001ffd6ffefffeffff8",
            INIT_74 => X"0000fffafff400330015fff500190015ffecffc4fff4ffe8ffd5ffd9ffcd001b",
            INIT_75 => X"0010ffe8fff5000dffec0003000600370022002bfffcfff8001bffe8fff6fff8",
            INIT_76 => X"000800120014fffe0026000fffef000afff1ffe6fffafffd000900040017000e",
            INIT_77 => X"ffe0fff0001700450032002f00190009fff70023ffec0000fff6001d000d0012",
            INIT_78 => X"000d002dffc6ffd00015ffc5ffe5fff7fff0fff40030003800370007003f003e",
            INIT_79 => X"ffebffc2ffe90032fff1fff2fff3002ffff1ffc4ffc3ffd7ffcfffe8ffbc0001",
            INIT_7A => X"ffcf0000ffcc0021ffdbffe40023fff6002c0001fff300310009000effecffe6",
            INIT_7B => X"ffcdffeaffb0ffa80010ffe0fffb000affda00030000000ffff3fff9ffe3ffc8",
            INIT_7C => X"fffb001a003700160024fff9ffe6ffed002d0018fff90005ffe8ffc2000fffc3",
            INIT_7D => X"ffe30034fff0ffbcffe4ffbdffeeffe4ffd0000a0003001c0007000400210010",
            INIT_7E => X"0000003c00010020004300030014ffe4ffe20007ffe8ffea0012ffdd0009000c",
            INIT_7F => X"ffb1000effd4ffe8002a001e0021fffb00260003ffd5001fffed00000039fffb",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"fffb001efffdffe2fffbfff6ffe7fff4ffba0009ffdbff9a001cffe2fffd001d",
            INIT_01 => X"00160034001f001600530032ffe600460023ffddfff5fffbffe7ffe60000fff1",
            INIT_02 => X"ffaaffe0ffb7ffa80020ffb6fff9001d0000ffec0016ffd1ffd50029fff10018",
            INIT_03 => X"ff8effb9005dffa70007002f003bffe4ffd60018ffe0ffdb0001ffdfffe7ffa4",
            INIT_04 => X"ffdd001e0021ffd7002a0031000500280019fff900370016ffdeffc2ff850021",
            INIT_05 => X"ffff0011fff9001dffe40030001cffee003f0024fff300540043fff8005a003c",
            INIT_06 => X"ffb8ffc0fffaffd0ffd70023ffb5000a001300170008ffebfff7ffe0fffe0008",
            INIT_07 => X"0012fff3fffc0027fff4ffecffec000a0019ffe80000ffe90002fff1ffd2000f",
            INIT_08 => X"00120010ffd8fffc001d002400170037001efff2001b000dfff5ffe80004fffd",
            INIT_09 => X"ffec001d0007004700520023003c0040fffd001b00310039000a003900170018",
            INIT_0A => X"0027ffb3fff2fff8ffeeffd600150010ffe2ffe400220023000400190001001e",
            INIT_0B => X"ff9cffb1ffb3ffbeffc3000dffe8ffd6001afffbfff40048000a002a0047001a",
            INIT_0C => X"ff84ff6bff82ffc6ffe6ffc000120031002afff6fffc0021ffe1ffe8fffeffe0",
            INIT_0D => X"ffc60000ffddffd800320015001affeb00020001ffecffe1ffe5ff6aff53ff67",
            INIT_0E => X"ffee000e0035002f00180023003d0005fffe0001000effabff9dffefff8dffa4",
            INIT_0F => X"ffeeffe0ffcd0017002bffccfff10034000b000c00220000fff2001000220006",
            INIT_10 => X"ffe3fff2fff0ffd1ffa8ffdfffd2001a00200000ffe8fffefff1000f0000ffee",
            INIT_11 => X"ffe9ffdeffddffc0ffed0000ffedfff3ffddffeeffdbffd0ffdbffd4ffeffff2",
            INIT_12 => X"001a0009fff40022000d000b000400000016000c0009fffffffdffeeffd8fff1",
            INIT_13 => X"fff800070015001afffb000cfff5ffeeffe20011001d00210007000dffff0012",
            INIT_14 => X"fff8ffe7fff8ffeefff3ffe9000dfff5ffddffefffdfffeafff700060019ffe2",
            INIT_15 => X"ffe7000effe1ffe6fffeffe000130022fff6002000060007ffe8ffecffeeffec",
            INIT_16 => X"002c000e00370014000e0002ffc7ffffffebffe6ffbdffc2ffd6fffdffe7fff8",
            INIT_17 => X"00040005fff80009ffd7fff9ffecffebfff2fff9fffe000d0006003400190028",
            INIT_18 => X"fff0fffc0022fff5001d0026001700190028000b000e001cffffffe9000dfff7",
            INIT_19 => X"003d0014fff40001fff6ffeefff4ffc3ffb2ffcfffefffe2fffbffe3ffecfff9",
            INIT_1A => X"ffebfffc0011000f0015001b0006ffe50016ffddffdc0017ffdf000fffef0012",
            INIT_1B => X"0002fff9fff3ffe80005ffe0ffd2ffeeffc3ffadffeffff3002800060017000e",
            INIT_1C => X"ffe2fffcffccfff10000ffcdffd20002fffcffd4ffbaffd2ff88fffeffe9ffbd",
            INIT_1D => X"ffbdffccffe2ffcdffc5fffaffe1ffdeffe1ffc9ffc0ffdbffbdffb100390029",
            INIT_1E => X"fffbffedffe400130006fff90002fff100000013ffed001a00200020ffeeffed",
            INIT_1F => X"00090016fff3000d001500160013002c000100170029ffe1001f000b0000fff2",
            INIT_20 => X"001600190019001a0011fff2000dfffdffadffed000500270017000f0001001a",
            INIT_21 => X"00130003002c003b0017002dffd3000f0023fff0fff8ffbefff8000cffd70024",
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
    end generate MEM_IWGHT_LAYER2_ENTITY2;


    MEM_IFMAP_LAYER0_ENTITY0 : if BRAM_NAME = "ifmap_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00aa00a900a600a100a000a1009f009e009f00a2009c00a000a600a5009f009e",
            INIT_01 => X"0074007e0089008f008d008c008f0095009400960095009c00a000a000a200a7",
            INIT_02 => X"00ab00ab00aa00a3009f009b009c00a300a200a400a000a200a6009f00970098",
            INIT_03 => X"0077007d0088008f008e009100930095008d008c008b00910097009a00a000a9",
            INIT_04 => X"00a900a700a600a1009d009e00a200a300a500a500a300a000a7009e00970097",
            INIT_05 => X"00780082008b008e008c008f00860078007200650062006e00790091009f00aa",
            INIT_06 => X"00a400a2009d00b100bf00a700a500a500a900a900a700a700ae00a0009b009b",
            INIT_07 => X"007f0088008c008c0084007100530056004a0050005c0062006700680095009e",
            INIT_08 => X"008e0092009700c300f600ad00a400a400a600a900a300a900aa00a1009c009b",
            INIT_09 => X"00810085008a0080006900550054004a005d0061006a007000710055004e006f",
            INIT_0A => X"004200610080009d00b400a300a500a300a700a700a500a10093008200850094",
            INIT_0B => X"0086008a008c006c0043003a005b0063005e00720077007a0076005900420045",
            INIT_0C => X"00440064007f0081009300a400a600a900aa00a800aa00990058002f006d007f",
            INIT_0D => X"0086008d0084004f002e003f00550073006b0069007c0092008400530048004e",
            INIT_0E => X"00580074009000820078008c00a100ab00a800a500a7008f0046002a00630083",
            INIT_0F => X"0088008a006b00390031003600550064006a0066008800a3007c004d0055005b",
            INIT_10 => X"00560079009c009d007d007100ae00a500a600a300a10099007c0036006700aa",
            INIT_11 => X"00890085004a00280038004700560053005700710092008a0051005000540052",
            INIT_12 => X"005d007d009400ae009c00cf00ed00cf0099009c009e00ae009a005e008600b4",
            INIT_13 => X"0084005f00280032004b005400570056006a0085008f0089004c003b004a0056",
            INIT_14 => X"0078007d009c00b700a400dc00ed00d5007a009f009b00b100a5008e006c00b7",
            INIT_15 => X"0068003b0029003b004e005800670057006b009b009d00af005b002d0050004e",
            INIT_16 => X"0075008600bd00b900aa00c700c20075008600ad00a600bb00aa0087006400bc",
            INIT_17 => X"004c003e0037004900550068005e0053005d009200a000d2007d002600540066",
            INIT_18 => X"007b00a000d800ba008900a800a80061009f00b200a600ae00af007f005a00bd",
            INIT_19 => X"0049004f004900540056005f00540054005b007b009b00c20096003200730078",
            INIT_1A => X"008d00b400e200bd00a700910093006700a700ad0088007700b90098005d00bd",
            INIT_1B => X"005e0061005a0064006300500048005000570072009500ba009a00470075007e",
            INIT_1C => X"009a009100ac00be00c6008a0073006400a7009c0063006900ba00a8006c00c2",
            INIT_1D => X"0075006100640073006d005f005b0055006e0082008900b30098004700670092",
            INIT_1E => X"00830087009100f200e6008f00820073009b008c004e008200b800ac008400c5",
            INIT_1F => X"0088007900670078007000690057004700570070009800a80090005f006c0079",
            INIT_20 => X"00710071008c00a200ad009a0060008a008a007e004e00a800bf00a8009200cb",
            INIT_21 => X"00900097007d006b0065005e004f004e006d00870094009c00ab007000690065",
            INIT_22 => X"007300660074007200760081006a0094009c0060005e00b000b700a400a300d6",
            INIT_23 => X"008c0096008f007400660047003a003c004b0085008000440076009000650056",
            INIT_24 => X"00930081007c0086004d006800870099008d0056007c00b000ad00a700b200d4",
            INIT_25 => X"0097009a00a0009b008500560041002c0040004b006b007500840096005c0055",
            INIT_26 => X"00b80091006c0081004600900089007a00770056009000b100ae00ab00bb00c7",
            INIT_27 => X"0095009e00a400ab00a30079005a002f00340033005900860089008300490074",
            INIT_28 => X"00bf00b2007a005d0050005d006700ab00830063009800b500b100b300c300a5",
            INIT_29 => X"0078007f008000900090006c003c002e00180026002e003c0057005900640096",
            INIT_2A => X"00c200be00b000950086008500db00f500960053008a00b500b200b100c30075",
            INIT_2B => X"0037003b0045004e00480045003a003d003a003100220023003d006e007d00a8",
            INIT_2C => X"007a0074007c0072007c00d000fc00fd00d3006d008c00b100b000ae00af004f",
            INIT_2D => X"002a002b0030003b0033002b003300380038003300320034003c004400440068",
            INIT_2E => X"0030003100310035003c006e00e300fd00f600a500a500b200a8009000600029",
            INIT_2F => X"002d0033003500370032002e002e002a002b002e002e0026002a002e002a002d",
            INIT_30 => X"00320031003300320032003d008d00f100fe00c2008400a60083003b001d001d",
            INIT_31 => X"0033002e00320038003b003e0038002d002a00260027002300220027002a002f",
            INIT_32 => X"002d002e0034003400320036004200bb010000d70080008000490022001e0030",
            INIT_33 => X"0053004600320036003b0040003e003b002e002b00280028002700240029002b",
            INIT_34 => X"002f002c002c003600380031003a007c00f000e0008000420029001f00230034",
            INIT_35 => X"004c0055004900330024002b002e0036003a0036002d002c002c002b002b002e",
            INIT_36 => X"002d00280030003a003000360041006100d300ca004e002c0023001d00230032",
            INIT_37 => X"0033002e004300430028001c0027002f0030002700270033002e002f0030002f",
            INIT_38 => X"002d0036003a003d003500340036004000aa0068002e00290021002000230032",
            INIT_39 => X"0033000f001f002f003f002c0028002500270028002a002e0031002e0029002a",
            INIT_3A => X"0035003a003800310026001b001f00310047002a002b00250026001f002a0044",
            INIT_3B => X"0028000d002600380049004f003e002a00210027002d003200350039003c0038",
            INIT_3C => X"002f0024001d001b001e0017001b002a0028002c002a0027002b00230031003d",
            INIT_3D => X"0014001d001a003c005d006d0055003c002b002b00310045004b0042003e0038",
            INIT_3E => X"00120013001d0019001d0016001a00240026002800280028002b002d00380036",
            INIT_3F => X"00150022001800300059006900590043002d003400350042004a003d002f0020",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"007700750075006f006f00740071006f00710073006d007000760074006f0070",
            INIT_41 => X"0055005b005f0061006100620065006b006a006b006b006d0070006f00710075",
            INIT_42 => X"0073007500770071006e006f006e0074007200750071007000740072006e0070",
            INIT_43 => X"0058005b005f00620061006600660069006400660068006e00730070006f0073",
            INIT_44 => X"007100720073006f006d007200730073007500750073006a006f006f006d006e",
            INIT_45 => X"0059005f0062006300630067006000560055004d004e005a0060006f00720074",
            INIT_46 => X"00720073006f00820092007b00750073007700780075006e0070006d006e006b",
            INIT_47 => X"005e00630065006600620055003e0046003f004b005a005a00570050006f0070",
            INIT_48 => X"006c006f0072009c00d60080007400710074007800710072007200730072006b",
            INIT_49 => X"005d005e0065006000530049004e0048005e00660072006e0067004500350050",
            INIT_4A => X"0032004b0066007a008a00760074006f0073007400710073007000640068006d",
            INIT_4B => X"005f006200690054003a003a005b006400600074007a0079007100530038003a",
            INIT_4C => X"00430057006c0062006b0078007400750076007300760075004a0025005f0064",
            INIT_4D => X"005d00630062003d002f00470053006f006600630076008e00820054004b0053",
            INIT_4E => X"0057006a0083006e005e006d00710077007400720075006f0040002b00600073",
            INIT_4F => X"006100670053002f0035003c0051005d0062005d007c00990076004d0058005f",
            INIT_50 => X"0050006f008f008d0069005900870079007a00750071007c0079003a006900a1",
            INIT_51 => X"0067006a003b0023003900490052004d004f00670087007d0047004e00550051",
            INIT_52 => X"0055006e00830099008300b400d600b40076007400740095009a0064008b00b0",
            INIT_53 => X"0067004b001e0031004c0055005500510062007c0085007d00440039004a0054",
            INIT_54 => X"006f006c0089009f008700bf00e000c5005900760070009c00a90097007400b7",
            INIT_55 => X"0051002e0024003b004f00580066005300640093009300a50055002c0050004c",
            INIT_56 => X"006b007700ab00a1008e00ab00b6005f005d007b007800a700af0090006c00bf",
            INIT_57 => X"003800370035004b00570068005d00500059008b009800c90079002600540062",
            INIT_58 => X"0071009500ca00a600720090009a0044006d007b007b009c00b40086006000c2",
            INIT_59 => X"0037004a004900570057005f0054005300580076009500bb0093003200720072",
            INIT_5A => X"008300ac00d800ae0095007d008400480074007c006a006e00bc009a005f00c0",
            INIT_5B => X"004900590058006500640050004900500055006e009000b50098004700720075",
            INIT_5C => X"008f008c00a500b400b9007b006a004a007a00770059006d00ba00a7006b00c4",
            INIT_5D => X"005f005500600074006e0060005d0056006d0080008500af0098004700640088",
            INIT_5E => X"00790082008a00ec00dd00830078005e007d00780053008900b200a7008100c5",
            INIT_5F => X"006800600056006e006d0068005800480055006c0093009f0086005800680070",
            INIT_60 => X"006a006a0084009800a3008f00500079007e007d005600aa00b600a4009200cb",
            INIT_61 => X"0068006c00580053005b005d004f004c00690082008d008a008f005a00650065",
            INIT_62 => X"006e005b0069006600690074005d008900950060006600b600b800a700a600d7",
            INIT_63 => X"006e00740070005e005d0046003800380045007e00780038006000800067005b",
            INIT_64 => X"008f0075006f00790040005a00800094008b0058008300b800b500af00b800d3",
            INIT_65 => X"006f00730078007700690045003e0029003b00440063006d0075008b0060005c",
            INIT_66 => X"00b0008600610076003b00860088007c0079005a009500b600b300b000bd00c0",
            INIT_67 => X"006b006f007100790076005b005a00310033003100560081007c0077004b0076",
            INIT_68 => X"00b600ad0076005a004d005a006900af00870067009d00b500ad00b200c1009c",
            INIT_69 => X"00690071006d007b007d0064004700390021002e0034003d004d004e00640094",
            INIT_6A => X"00c000c400b6009c008d008c00de00f700990057009000b300a900b200c80078",
            INIT_6B => X"005a005c0060006800650063005400550051004600360031003e006d008500ac",
            INIT_6C => X"00850085008d0084008f00e000fd00fc00d30070009200b100ac00b700c50069",
            INIT_6D => X"005f00610061006c00680060005b005e005d00550054005400520057005d007c",
            INIT_6E => X"0048004b004c00500058008800e700fb00f500a600aa00b600ae00a800890059",
            INIT_6F => X"005a005f005e00600060005e005d005900570059005a0056005200510051004f",
            INIT_70 => X"00540053005500540054005e009f00f500fa00bd008800b3009900660057005b",
            INIT_71 => X"0067005e00630066006500670067005c0059005500560053004f005200540056",
            INIT_72 => X"00520053005a005a0058005b005d00c600fd00d500880094006a0055005e006f",
            INIT_73 => X"0089007b0069006c006c006d006e006c005f005c005900560053005000510052",
            INIT_74 => X"005300520052005c005e0057005c008f00f500e50091005f0053005600630072",
            INIT_75 => X"007d008a0082006c005b005f00610069006e006a0061005a0058005600530054",
            INIT_76 => X"00520050005700610057005e0068007e00e400db006a0053005600590062006e",
            INIT_77 => X"00600062007e008100650055005d00650066005d005c00610059005900570054",
            INIT_78 => X"0053006000640067005f005e0061006400c50085005400580058005c0061006c",
            INIT_79 => X"005d003c005a006e007d0066005d005a005c005d005f005c005c00580050004f",
            INIT_7A => X"005c00660064005d00520047004d0059006b004f00590057005b00580064007c",
            INIT_7B => X"0055004000610074008300840070005b00530058005e005f006100630063005e",
            INIT_7C => X"0056005000490047004a00430048005500510058005c005a005b005500660074",
            INIT_7D => X"00400052005200730091009c0082006900580058005f00710077006d0065005f",
            INIT_7E => X"003a003f00490045004900420045004f00510057005c0059005600590069006b",
            INIT_7F => X"00430054004d0063008700920083006d0057005f0060006f0077006800570046",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"002c002d00290031003400290029002c002d002f0029002e00350033002f0031",
            INIT_01 => X"00210024002400260029002b0027002c002b002d002d002c002b002700260028",
            INIT_02 => X"0021002800290034003600290026002e002d002f002b00310038002d00280033",
            INIT_03 => X"00220020001f00220026002d002e00320030003400370035003200290021001e",
            INIT_04 => X"002300250026003300390030002b002b002d002d002c002a003000240021002f",
            INIT_05 => X"002100220022002300270033003700300032002f0032003400310036002f0027",
            INIT_06 => X"0036002f0029004b005f0039002d002c00300030002e002b002c001f00200028",
            INIT_07 => X"002400270027002b002e002d00270034003200420054004c0041002f0043003a",
            INIT_08 => X"0047003c0038006b00a4003b002a0029002c002f0028002b002f003100300029",
            INIT_09 => X"00240024002e0030002d002f00460043005d00690076006f00620038001f0032",
            INIT_0A => X"001f002b003a004e0055002a00270025002900290027002c0035003900400036",
            INIT_0B => X"0028002c003a00310025002f0056006100600074007a0078006e004c002d002b",
            INIT_0C => X"00390046004b003b003400270025002a002b0028002b0030001c001100500039",
            INIT_0D => X"00270030003a002400270045004d0067005e005a006c00840079004a00400048",
            INIT_0E => X"004f005d006b004d003100330033003100270024002a003800290026005c005a",
            INIT_0F => X"00270033003200200031003a004a0054005800510070008c006b004500520058",
            INIT_10 => X"004a006500800079004e003b005f004200320029002b00520071003b00690090",
            INIT_11 => X"002d003b0023001b00350043004c00450046005d007b0070003d00490052004d",
            INIT_12 => X"004f006b007d0091007700a600c60092003c002f0033007000950069008f00a3",
            INIT_13 => X"0039002c000f002b0047004e004e004a00590072007a0070003a00350047004f",
            INIT_14 => X"006800680084009b008300bc00e200b3002f00330032007a00a8009e007a00af",
            INIT_15 => X"002e001f0021003b0049004f0060004d005c008a0089009a004d0028004d0045",
            INIT_16 => X"005f006a009f0097008500a400bc0050002c0037003b008800b20099007400bd",
            INIT_17 => X"001a00300037004e0051005e0058004b00520082008e00c000710022004f0059",
            INIT_18 => X"0062008100b70094005e007e0098002c002f00350044008500b90090006900c2",
            INIT_19 => X"0018004000490059005100550050004f0053006f008c00b2008c002f006d0069",
            INIT_1A => X"0075009d00c8009b007f0067007800270032003a0042006200c000a3006700c1",
            INIT_1B => X"0022004500510063005e00480046004c00500068008800ae00930044006d006b",
            INIT_1C => X"0086008c009f00a900a90067005800220037003e0043006d00bc00ac007000c4",
            INIT_1D => X"002f00350050006f0068005a005b00530069007a007f00aa00950046005f007d",
            INIT_1E => X"00700082008900e600d30074005d0034004d0058004d008e00b500ae008800c5",
            INIT_1F => X"003000300036005d006300630057004400500065008a00920076004b005f0065",
            INIT_20 => X"005a00580075008d009b0085002500520071007e005a00ac00bc00b200a000cc",
            INIT_21 => X"002e0037002d00370052005e004d004800610076007e006d0068003a0057005c",
            INIT_22 => X"0062004900590059005f0069003d006f00910066006900ba00c200b800b400d7",
            INIT_23 => X"0036004000440040004e004100350033003d00730069002000400066005f0058",
            INIT_24 => X"008500640060006c00370050006f008d008f0060008500bc00c100bd00c000cd",
            INIT_25 => X"002e002d0036003e003b0028003c00270034003a0056005c005d0078005d005d",
            INIT_26 => X"00a8007b0056006c0033007e0087008200840063009800b800b900b500bb00b4",
            INIT_27 => X"002e0032003400400044003c005d00340032002c004e00760069006700490076",
            INIT_28 => X"00b100ad0074005600490057006f00b90092006f00a000b400ac00af00bb0092",
            INIT_29 => X"003f0045003d004c0052004b005300450029003300360039003f004200650094",
            INIT_2A => X"00c500d000c000a40093009000e100fa009f005b009300b300a800b000c8007c",
            INIT_2B => X"00730070007000780077007a006f006e006600570044003a003e006d008f00b5",
            INIT_2C => X"0098009c00a20095009d00e800fc00f700d10071009600b600b100c000d50085",
            INIT_2D => X"008400890084008e008d008700820083007d0073006e006f0065006800770094",
            INIT_2E => X"0065006b00690069006f009900e400f100ed00a400ae00c000bc00bc00a80087",
            INIT_2F => X"0085008b0086008700890089008b00840080007e007d007d0074007100780073",
            INIT_30 => X"00740078007900770076007f00af00f500f200b5008900bf00b000860082008d",
            INIT_31 => X"0095008c00900092008e008e009100860082007d007d00780071007300750075",
            INIT_32 => X"00730079007f007f007d0080007600cd00f900d1008f00a70088007c008c00a2",
            INIT_33 => X"00b600a70098009a0095009300980096008a00860083007b0075007100700071",
            INIT_34 => X"00770077007700810083007b0072009900f700ea00a4007e007a0082009300a5",
            INIT_35 => X"00a900b600b2009e008a008c008d0096009a0096008d0083007f007b00770077",
            INIT_36 => X"00770074007b0085007c0081007e008c00ea00e9008a007e0085008a009500a2",
            INIT_37 => X"008b008e00b000b600990085008b00930094008b008a008c00840082007e007a",
            INIT_38 => X"007800830087008b008200800079007700d3009f007d008a008d008f009300a1",
            INIT_39 => X"00880067008c00a400b20097008a00870088008a008b00880087008200780076",
            INIT_3A => X"00800089008700800075006900690072008500710084008b00920089009400b1",
            INIT_3B => X"007f006c009200a800b500b3009a0085007d008300880089008a008b00890083",
            INIT_3C => X"00780073006c006a006d0066006800730070007d0086008b008f0084009400a8",
            INIT_3D => X"006b007e008200a400be00c500aa0090007f007f00860098009c009000870080",
            INIT_3E => X"00590062006c0068006c0065006900720073007b0084008600860084009500a0",
            INIT_3F => X"006e0081007c009100af00b600a70091007b0082008300910098008900760064",

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
    end generate MEM_IFMAP_LAYER0_ENTITY1;


    MEM_IFMAP_LAYER1_ENTITY0 : if BRAM_NAME = "ifmap_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"00000017000000000000004c000c003800210037006c00600000000000000000",
            INIT_04 => X"0029000000000000001300110061005f002b00000007001500000000002a000f",
            INIT_05 => X"00000000002300d60017000000000000005a00b80046004300000073005d0000",
            INIT_06 => X"0038002400c2001d0000000e013a0027001f003a001c00000000000500000000",
            INIT_07 => X"017a00000000000000f200600000001600000000002201cf00170000006f0080",
            INIT_08 => X"000c007c0000007b00000000000d000000ce009d00000000000a000000000092",
            INIT_09 => X"0000001100000000000000000000000000000000000f00000000000000030000",
            INIT_0A => X"0000000000000000000000380000000000000000003600000000000000000000",
            INIT_0B => X"0000000000150000002d000000000000009d0000007700000000004b00000000",
            INIT_0C => X"0000000d00000000000000000000000000000000000600000021000000130000",
            INIT_0D => X"000000cb000000000000000600000000006a000000000000006e000000790000",
            INIT_0E => X"00b60032000000000006000000000000000000000037001b0039003c00000000",
            INIT_0F => X"00150000002a0000002e00110020000c0000006700390000000a000000080000",
            INIT_10 => X"00090029000d00000017000000060019000b0009000000000000001700090036",
            INIT_11 => X"0009000d00000017000000000000000000000000000000000000000000080000",
            INIT_12 => X"000000000000000000000000000000000000000000000013001a002600160000",
            INIT_13 => X"000e0000001b0000000000000000000000020001000000050000000000000000",
            INIT_14 => X"0000000000000000000f00000000000000000000000000000000000000000011",
            INIT_15 => X"000000050000000b00000000000000000000001500180006000100000002003b",
            INIT_16 => X"0008001200210008002d00170005000c001f000000010040001c000600110000",
            INIT_17 => X"000000000000000000080000001a002e00000031003800000000003000220013",
            INIT_18 => X"00000032002a004a004a00000000002200000000000000000000000000000000",
            INIT_19 => X"0000001f00190004003e00000005000000000000003200110000000a00090009",
            INIT_1A => X"0000005f00830000000d0000005b005d00000016000000000000004e0000005b",
            INIT_1B => X"00000000000000000000000000000000000000000000001c005b000000000000",
            INIT_1C => X"00000036000000170000003c0000000000000000001900000029000000000000",
            INIT_1D => X"003b00aa0000000000000000000e001700080000001f00000000000000100000",
            INIT_1E => X"0000002d00940051006100680072004c004d0056008700270000002f00270056",
            INIT_1F => X"00000000001c000e0000002d009b0000000a000c00180000002500380000004d",
            INIT_20 => X"00920050004d0002001d004b0000001300000000001b00360039003900740000",
            INIT_21 => X"00000000001c004b003200150012000000000000009e00240000000000000050",
            INIT_22 => X"0000000000250000002c0037000000000000004e000000000000000000000000",
            INIT_23 => X"0002005f000000000000000000000000001300110000003f0000006400000000",
            INIT_24 => X"00000000000000000017002e00320018000400530004000b0014000000070000",
            INIT_25 => X"0000000000000000000000000000000d000d0000000000000000000000000000",
            INIT_26 => X"0021000100000000000600000000001e000e00000016000000000000000d0000",
            INIT_27 => X"000000000000002e004100380039000000000000001b00120000000000000000",
            INIT_28 => X"0000000000000000000000000022000000000000000000000000000000000000",
            INIT_29 => X"0000001a00000003007c00170000002300000000000000000000000000000000",
            INIT_2A => X"00920081004000350024001e000c0000000000170018000600150000001a0000",
            INIT_2B => X"00000000007000000000000000000000000000000000003300000019006c0027",
            INIT_2C => X"000000000000000000000036000000380038004f001c00000000000000050000",
            INIT_2D => X"0000000000000000000000000013000000000000000000000000000000000000",
            INIT_2E => X"000000000066002600650042001c000000000000000000000000000000000000",
            INIT_2F => X"00250028000c007400b7004700350060004d00000019007700560059004e0062",
            INIT_30 => X"00bb00ab009c009200a9008b009a008a0084006e005000390078008500390018",
            INIT_31 => X"0011002d001c00000000004d009700460050006700a900b500a6000a00000000",
            INIT_32 => X"002f002b000000000000000000000000001d0068001d0000002100000000001c",
            INIT_33 => X"000000000000000000610017004200730056006700d100240040006a00340037",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"00060000000000000000000000000000000000000000000000000000000f0000",
            INIT_36 => X"00a9009800a0007d00c1007c009c007d009b00b3000000680000002100000000",
            INIT_37 => X"000000000000000000000011000000000000000000000000001c000600b000c2",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"005a005e005b0053008800610041004900500051004b00610062000000000000",
            INIT_3B => X"005c005d00410046007b004e006d0076003c0073005f00760060005a0068002a",
            INIT_3C => X"0000000d00000000000000000000002f002e002300150010004f003b00460097",
            INIT_3D => X"000500400043007000450048004b00560057007b007300630000000000000000",
            INIT_3E => X"00210021000000090000005d0007003c00240000001e00220032002b00440012",
            INIT_3F => X"000000000000000000000000000000000000002b001700190015000000060000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"002600000036003c004700310026002c004a005e005a00000000000000000000",
            INIT_41 => X"00350044005a00260035003f002d002e003100460002000e0050003e003a0026",
            INIT_42 => X"00000000000000000000000000020000001d0000002c00080000001c00440049",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0000002e00000000004c000000110000001100320000000a0000001700000000",
            INIT_45 => X"003e0018001a0086007b0012006e00000000000000110000001c007600000002",
            INIT_46 => X"00f000be00c1006c007400d100be010a0116004c004800350033003d00af0000",
            INIT_47 => X"0011005700640040001000000034001c007b003e0055002b0003003500150096",
            INIT_48 => X"00000000000000000000003700760017002f002700300040001f00400000000a",
            INIT_49 => X"00090000006c0000002b00000000000000000000000000000000000000000000",
            INIT_4A => X"0000007900c4006200b0000000ed00000000006f008400650000009700000000",
            INIT_4B => X"0024000000a2000000000000001f005300760025000000460000009200000053",
            INIT_4C => X"00240032005c0011001e00000006000000000000000b00000011000600000000",
            INIT_4D => X"002a0022003600220097002e0059003600420026002c00460034008a0050009e",
            INIT_4E => X"002800bd009a001c002100660037002b00a600af0017001f0000002700350031",
            INIT_4F => X"0000000000000000000000000000000000000000000000000000000000100000",
            INIT_50 => X"001f000b00000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"0086007e0047000000190020002a000500180030000000000000000000000000",
            INIT_52 => X"0000000000000002000000e100bf00ac00a300ae007d00d000b000b300a7008a",
            INIT_53 => X"0000003a000000530000006500000000004e0000002a002f0004000000000000",
            INIT_54 => X"000000000000000000000000008b0000001c0000002500000050000000050011",
            INIT_55 => X"0000000000000000000a0024000d001800120000000000040000002200000000",
            INIT_56 => X"0000009100000000003f0000001e00000033000000000012005000040000004d",
            INIT_57 => X"00000000007700000000000a0044000000000000000000000000002500000000",
            INIT_58 => X"000000030000000b0038004100300061000000a6000500420067000000000000",
            INIT_59 => X"0000006f002d000000230000002200000023004e002900000000000000000000",
            INIT_5A => X"000000000000002c002e0003002b000000000000000000000000005c002e0005",
            INIT_5B => X"00b0009000390030003600300000000000000053005e005e0000000000000000",
            INIT_5C => X"00000042006a003400430014003b0025007900b4006a0068004a0067006700a2",
            INIT_5D => X"000000000008001700330000003c000000270000002c00220000002400000034",
            INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000046",
            INIT_5F => X"000000000001002d000a00160000000000000000000000170000000000000000",
            INIT_60 => X"003a002700390042006000000002001500080000001e0045002f001200170003",
            INIT_61 => X"00ab00a9009e00960092006600bb00960088007e007e0048000700690026003a",
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
    end generate MEM_IFMAP_LAYER1_ENTITY0;


    MEM_IFMAP_LAYER2_ENTITY0 : if BRAM_NAME = "ifmap_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00160015000c000600010000000a001d001d000f000d00170014000f00120012",
            INIT_01 => X"000b0000000b00050000000000000004000000030008000400130013000f0012",
            INIT_02 => X"000c000000010001000000000000000000000000001e0020001b0012001b0013",
            INIT_03 => X"00030003000000000000000000000000000000000000000000000011000b0019",
            INIT_04 => X"0000000000040000000000000000000000000000000000000000000000000000",
            INIT_05 => X"00000000001c0004000000000000000000000001000000000000000000000000",
            INIT_06 => X"0000000000000002000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000b000000000000000000000000000b0000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000b000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000800000000000000000000",
            INIT_0A => X"00000000000000000000000b0000000000000000000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000002000000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000b",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000600000000000000000000000700040000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000100000000",
            INIT_18 => X"002000250038003a0032000000000000000a003f000f001a000f000000000000",
            INIT_19 => X"0024001f00200020001d001d001e00000000003a002c00200027002500290022",
            INIT_1A => X"0033002f00230022001d00190021000f000e002f002f0030002100280022001e",
            INIT_1B => X"001a002d0021001c0017001f002a0030002a0041003100330029003a00280034",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000029001c",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"00000000000000000006000e0018000300000000000000000000000000000000",
            INIT_1F => X"001e000000000000000000060000001b0000000100020000000000000000000b",
            INIT_20 => X"00000017000f00030000000800000010001d0000000300050014001100000000",
            INIT_21 => X"00000000000b001700020000000b000000030044000000040006000a001a0000",
            INIT_22 => X"0006000000060014002000020011000a00040000003700000000000b001e000c",
            INIT_23 => X"00000008001100040028001d000000080011000000000020000000000000002d",
            INIT_24 => X"00120009000e0027000000240018000000000006000000100000000b000b0000",
            INIT_25 => X"0011002d0028000d005800000023002b00000000000c00000000000000150012",
            INIT_26 => X"001a0021001f0007000000450012002300360000000b001f0022001b00000000",
            INIT_27 => X"002a00240024002500270000002500330038002a002f002f002e00280022001e",
            INIT_28 => X"002e002f002a002a0026002b001300000052002e002c003a002e002f0036002f",
            INIT_29 => X"002e002d0031002e00240023002800190019002c0033002b00280045002a002f",
            INIT_2A => X"00000000000a0002000000000000000000000000000000000000001f003a0043",
            INIT_2B => X"00000003001c001f000000170008001000000000000000000000000000000000",
            INIT_2C => X"00000000003f002d0042000000000011002b00000000000000000000002a0000",
            INIT_2D => X"006c0000002a003b0026005a00000025002c00280000000e0000000000000071",
            INIT_2E => X"003100590000003e001e0052002f0000003c0048005d00240034000000230005",
            INIT_2F => X"001500730048002500310012005c007300000060003e0061002c000000000037",
            INIT_30 => X"003100280065004d0037000c0012004700750000006a004a005a000000000038",
            INIT_31 => X"002a000b0084004200680013002500060050004f000000460038008b00060000",
            INIT_32 => X"001800640000009f003a004a000000000004005b001600290000002c002e0013",
            INIT_33 => X"0020004c009300000094003c000f000c000000000017005a003b0030004d0000",
            INIT_34 => X"003c003a007300d80000004e002b001d003100200023001d001a004100830071",
            INIT_35 => X"003e003f0049004200af008200000012005f004f0040003e003c003d00380047",
            INIT_36 => X"0041003c0042004d0039005a00cb00000045006a003d00480050004000380039",
            INIT_37 => X"00550044003800440043003500480054003e004b0076007b0038004e004d0048",
            INIT_38 => X"0000000000000004000000050003000600080008000000000080006f001a003a",
            INIT_39 => X"000000060024000000000000001a0049000a0007000c000a0007000500060000",
            INIT_3A => X"0000001700070015001a000d0000000000000007000400040000000000040000",
            INIT_3B => X"0000000100000000000000000005001b00370000000d00050009002500280000",
            INIT_3C => X"000000000018000f0025002500000000000e000600560080000b0013005a0026",
            INIT_3D => X"0007000600270009000000000000003a001f001a002a00000000000000080000",
            INIT_3E => X"001c00070015001d00170000000b000000110009000a00000021000000040000",
            INIT_3F => X"0004000b00040010000000000000000000000000000000000000001600190010",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00110004000900000000002f000300000000000000000004001a00000000001c",
            INIT_41 => X"0085009c00460000000000000000001f001b000000000000000c004a00000000",
            INIT_42 => X"0000000000000046000f0000000000000000001b004100200000000000000028",
            INIT_43 => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_44 => X"0000000000080000000000000000000000000011000000000012000700040000",
            INIT_45 => X"0013001400000000000000000000000000000000000000130000000000000000",
            INIT_46 => X"007c009400ad00b700ac009d00a400a500a200a3009d00000022002800000004",
            INIT_47 => X"003e002e003a007a00a000a9008c00a000ac00a800ad00a2009200920084007c",
            INIT_48 => X"0027000a001e0007002d00480073008e00af00b000ac006a0089008b006e004e",
            INIT_49 => X"0025001b002d0033000c00150027004d005900a200aa00a4002b004d0067003a",
            INIT_4A => X"002f001c0017003900310000001f002f00430047004e00600094001f0017003a",
            INIT_4B => X"000e001700120010002a003e0000002d00310045003b00250099008e00120016",
            INIT_4C => X"000a001c0026000e0010002800320000002f002d003e0032002f009f0062002a",
            INIT_4D => X"002b00000014004100220009002d002f001e00290027002e002600370062002c",
            INIT_4E => X"00000024000500100079002d000f002600420054000d0030003600220055000e",
            INIT_4F => X"00170000002300150000008a006200090006001d0034002d0028000800200035",
            INIT_50 => X"0000003a0006000000000000000000000000000000000000000600000000001a",
            INIT_51 => X"0000000000000034000000000000000000000000000000000000000000000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"0017001d002400260027001e0020002500230022000000000000000000000000",
            INIT_55 => X"0000001d000e001d000f00200028001f002a002c00230018001e00240026001a",
            INIT_56 => X"00000000002e002100060000001a00270021002800390006001c002b00200009",
            INIT_57 => X"00000009000000480000000000040024000f00290021004c0000002c00250000",
            INIT_58 => X"00000006000000000059000000000000000b00090056000200260000004a0000",
            INIT_59 => X"00000000001400000000008e0000000000000013003e001a0000000a0000002b",
            INIT_5A => X"000000000015000a0000000000660000000000000036003f0000002000000000",
            INIT_5B => X"000200000008000f001d00000000004200000000000000420038000000000000",
            INIT_5C => X"00000000000000230021001e0000002500000024000000000011000400210000",
            INIT_5D => X"007800000004002a001400340030000c00000005000200000027000f0000002c",
            INIT_5E => X"0000004000000014002000000000000100090008000000000000002200000000",
            INIT_5F => X"0000000000000043002100000000000000000000000000000000000000000000",
            INIT_60 => X"0000000000000000005d00000000000000000000000000000000000000000000",
            INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"0037003a00300029002f002c002d0030002b0000000000040000000000000000",
            INIT_63 => X"000c003b0029001f0000002d002e00300035002c0031002a002700260025002a",
            INIT_64 => X"0000000000000023002d003b00320035002e0029001c0025001f000e00000000",
            INIT_65 => X"000000000000000000000000001900250032002300000000001a000400000000",
            INIT_66 => X"0000000000000000000000000000000000000018001200000000001100000006",
            INIT_67 => X"00000000000000000000000000000000000300030038000b0000000000050000",
            INIT_68 => X"00000000000000000000000000000000000000000007003a0007000000000000",
            INIT_69 => X"0000000d00000000000000000000000000000000000000020000000000000000",
            INIT_6A => X"0000000000080000000400180003000f000000000005001a0000000000000000",
            INIT_6B => X"000000000000001f00000000000a001100080000000000000000000000000000",
            INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"000b000c000c0004000800080011000a00000000000000000000000000000000",
            INIT_71 => X"00420023000500000008000c000a000a00000006000800110023002d0021000b",
            INIT_72 => X"0000000000090016003700050008000500330035000a0017000a000000000000",
            INIT_73 => X"0004001a000000020000000000080008000500000000000c000e000000000000",
            INIT_74 => X"00000000000000070000000900000000000e000200000001000e000000060010",
            INIT_75 => X"00070015001400000000000000000028003e000300060000000f000000000000",
            INIT_76 => X"00000000000000110000001100000031000000120018001c0000000000000000",
            INIT_77 => X"0000000e0005000000090000000e002100350035000200000000000000000000",
            INIT_78 => X"000c000000000000003000260000000000000000002600000000000000010000",
            INIT_79 => X"0000000300180000000000110036004e00000000000000090023000000040000",
            INIT_7A => X"000c00210035000a0005000000000000000000370051001e0000000000000007",
            INIT_7B => X"0018000000160000000000000000000000000000000300050004002800560000",
            INIT_7C => X"000b004f0018000000000000000000000000000000000000000000000000003f",
            INIT_7D => X"0003000000220000000000000014000000000000000000000000000000000000",
            INIT_7E => X"000800150009000e000a0013000d000000000000000000000000000000000012",
            INIT_7F => X"001a000f0036000f000d0009000b0008000200060013001b0022001c000c0006",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00200028003300510008000a000b00240026000a001a0021002400350034001f",
            INIT_01 => X"005b0036002f0045002e00190012000e00140033001a0019002b004b005e0053",
            INIT_02 => X"0067003b0033003b00640044007e00350015005e0071001b0015003b0042005d",
            INIT_03 => X"0050007f005b002e004b007d007e00bd00130028009e007f0001002500390038",
            INIT_04 => X"003b004600810078004e006500a80075005a001700430094007a0015003c0047",
            INIT_05 => X"004b0048004c0078005f0050006a008500a500390039004000a5008e0033004c",
            INIT_06 => X"000e002b002c0041006500330051004e0059006600380073006600b800b00026",
            INIT_07 => X"00c700270027002f00250040005a00420079005f0033006f0075008600b300c0",
            INIT_08 => X"00cb00c100680071005a00470040003c007900b900910065009e00a2008b00ab",
            INIT_09 => X"00b100a1008c008e008a008800800078006f007c0085008a00a500e700c9009d",
            INIT_0A => X"00ef00a60085009d00a3009a0095008c00840076007100700075007a00af00e5",
            INIT_0B => X"007400a7007f008f009700ab00a30093009b008c008200770073007900800088",
            INIT_0C => X"000000000000000000000000008d00af009a008500860088007c007e0089007f",
            INIT_0D => X"000b000000000000000000000000000000000000000b001c0013000000000000",
            INIT_0E => X"0028001c003e0000000000000000003f00000000001e00140000000000330014",
            INIT_0F => X"0000000000000000000c00000000000000190000001e00070000000000000000",
            INIT_10 => X"0000001d0004000f0000000000000009000000000000000e0006001a00000000",
            INIT_11 => X"0026000000060000000000000003004f00020000002f00250000000000080000",
            INIT_12 => X"00080018000000090000000500000000000d000d00180000000000000000001c",
            INIT_13 => X"0000001c000000000000001e003d000000000000000700000002000000000000",
            INIT_14 => X"0000000d003a00260036000000000003003200220000002e0000000000000010",
            INIT_15 => X"00080000000000010031001f002e00000000001500120000000a000000000000",
            INIT_16 => X"004100210016000000000000000d000f00190000000000000000002200000000",
            INIT_17 => X"0036000d000000000000000200000006000c0037003f005200a2000000000000",
            INIT_18 => X"0025000000020000000000030000000000000000000000020000005600410000",
            INIT_19 => X"003600180000000c004200000000000a0007000000000001000000000006003e",
            INIT_1A => X"0000000000000000000000040000000000000005000000000000000900130024",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000b000000000000000000000000001f00040000",
            INIT_1E => X"00020000000000000000000000000002000000010002000000070000002d0005",
            INIT_1F => X"005d0000000000000000002c000000000006000100100000000300000000003b",
            INIT_20 => X"00000052000000000000000f001c000000000000000000000000000e00000000",
            INIT_21 => X"00000000002d0000000500000017000c00000000000000040000001300120000",
            INIT_22 => X"001b00000011000000080000000000120000001100000016000000000003001d",
            INIT_23 => X"0000001200120000000000050000001000030000003b00000019000900000000",
            INIT_24 => X"001d002c003e00330028000200000004002d0000000000580000000d00330000",
            INIT_25 => X"005a0053005a00580056004f00490044004e004e002e0000003b000000360070",
            INIT_26 => X"0060005a005e005d0057005b005b0054004c004a00480049000000080048006f",
            INIT_27 => X"006700670050005e007400610064006100570053004d0045005000310000008a",
            INIT_28 => X"002e0033002e002f00450053006b005e00520052005200490055005f00490041",
            INIT_29 => X"0034002d0035003200320024002700260027001c0023002b002f0031002f002f",
            INIT_2A => X"002c0038002e0034003b001a0028002d00240015001300210004002500130055",
            INIT_2B => X"001a002300250036002c00790000003900270004000b000a004f001a00000000",
            INIT_2C => X"00000000001a002c0049000a006300000053000e000000120000005300180008",
            INIT_2D => X"00000000000000000049002e00000038000000390000001e0000000b005f0008",
            INIT_2E => X"00a400000000000a005000610000000c00150000000d000400230000000000bf",
            INIT_2F => X"0000007c000000080000006800450000000100000000000d0027001e00000000",
            INIT_30 => X"0000002200060031001c000000030011003c00000017000000120022002a0000",
            INIT_31 => X"004800050000000a0017000e002a00190000004a00000018000a0044003a0026",
            INIT_32 => X"001e002d002800140000000000000056000b000000a3000000110051001c0056",
            INIT_33 => X"00000011000e0010001000090000000000000000000000980000002800400000",
            INIT_34 => X"00000017000800100017001400100008000a000500090000001f004800410003",
            INIT_35 => X"000d00000000002600000009000d0010000d0009000000110000000000740010",
            INIT_36 => X"000000000000000000030031000b0000001000180009000c0016000000000019",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000001000000000000000000040000",
            INIT_39 => X"0000000000000000001200040000000000000000000000000000000000000000",
            INIT_3A => X"0000000800380000000000270001000000000000000000000000000000000005",
            INIT_3B => X"0000000000000000000000000000000000000004000000000000000000000000",
            INIT_3C => X"000000000000000000000000000000000000000f000000000000000000140000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000001200000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00010024001c0000000000000000003e0030001e000000000000000000000011",
            INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_42 => X"0002000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0036002f00000000001300000000000000000000000000000000000000000000",
            INIT_45 => X"00360038003000270028002500200020002b0036003b00390030003500350033",
            INIT_46 => X"003900360013003000270011000600060002000200230039003b004200330039",
            INIT_47 => X"0040003700320000001500170000000100000004000000000000001e003d0037",
            INIT_48 => X"00330044001000340012000000000000000000000017000000000000001e0012",
            INIT_49 => X"002b000d000b00380031000f0000000000000000000900100000000000060025",
            INIT_4A => X"0017002e0011000e003d0007002c00000000000000000000002a0000000b0008",
            INIT_4B => X"0000000a002e0022000000250000001900040000000000000000001300030008",
            INIT_4C => X"002c0000000c00000000001c00000009001100150000000200000000000f0013",
            INIT_4D => X"000000050006001f00000000000300000014000e001600210000000000000000",
            INIT_4E => X"0000000000000000001700110006002c00000015001400050028001e00000000",
            INIT_4F => X"00000000000000000000000000000000003c0032000000000000000000000000",
            INIT_50 => X"0000000000000000000000000000000000000000004f00000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000280000000000000000",
            INIT_52 => X"0027000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"00240028002e0029001e001d00290032002f002b00280020002c002900230022",
            INIT_54 => X"00280002003f002c00150019002900210005002e00300043000e0021002c0024",
            INIT_55 => X"0024002e0000005c000b001a0032000c001c00000010002400280020002a0029",
            INIT_56 => X"0013000000410005002c00000026001a001800230000001900250027000c0038",
            INIT_57 => X"00000000002f003700000024001a002b001200380014000000250024002a0027",
            INIT_58 => X"0015000000000046000e002400110020001d0007002a00340000004300250016",
            INIT_59 => X"000b003500000002003400290006000b00250000000d0028002b00000039001c",
            INIT_5A => X"0000001b000e000000340000003f0000000d000d00110000002c001100000018",
            INIT_5B => X"000f002c001d00000014002a0000003900000000001a00000000002b0005003f",
            INIT_5C => X"000f002b002700050000003200290000003800000000002f00100000000f002f",
            INIT_5D => X"0000000300070000000000000005005200000000000000000021001100080008",
            INIT_5E => X"00020000000000010005000200060000002e0022000000000014000300000000",
            INIT_5F => X"000000000000000100000000000600090000000d002200000000000900000000",
            INIT_60 => X"001a001200000000000c00000000000000000000001400040000000000130015",
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
    end generate MEM_IFMAP_LAYER2_ENTITY1;


    MEM_GOLD_LAYER0_ENTITY0 : if BRAM_NAME = "gold_layer0_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00160015000c000600010000000a001d001d000f000d00170014000f00120012",
            INIT_01 => X"000b0000000b00050000000000000004000000030008000400130013000f0012",
            INIT_02 => X"000c000000010001000000000000000000000000001e0020001b0012001b0013",
            INIT_03 => X"00030003000000000000000000000000000000000000000000000011000b0019",
            INIT_04 => X"0000000000040000000000000000000000000000000000000000000000000000",
            INIT_05 => X"00000000001c0004000000000000000000000001000000000000000000000000",
            INIT_06 => X"0000000000000002000000000000000000000000000000000000000000000000",
            INIT_07 => X"0000000b000000000000000000000000000b0000000000000000000000000000",
            INIT_08 => X"000000000000000000000000000000000000000000000000000b000000000000",
            INIT_09 => X"0000000000000000000000000000000000000000000800000000000000000000",
            INIT_0A => X"00000000000000000000000b0000000000000000000000000000000000000000",
            INIT_0B => X"0000000000000000000000000000002000000000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000000000000000000000000000000000000000000000000000000000000000b",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"0000000d00000000000000000000000000000000000000000000000000000000",
            INIT_16 => X"0000000000000000000600000000000000000000000700040000000000000000",
            INIT_17 => X"0000000000000000000000000000000000000000000000000000000100000000",
            INIT_18 => X"002000250038003a0032000000000000000a003f000f001a000f000000000000",
            INIT_19 => X"0024001f00200020001d001d001e00000000003a002c00200027002500290022",
            INIT_1A => X"0033002f00230022001d00190021000f000e002f002f0030002100280022001e",
            INIT_1B => X"001a002d0021001c0017001f002a0030002a0041003100330029003a00280034",
            INIT_1C => X"000000000000000000000000000000000000000000000000000000000029001c",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"00000000000000000006000e0018000300000000000000000000000000000000",
            INIT_1F => X"001e000000000000000000060000001b0000000100020000000000000000000b",
            INIT_20 => X"00000017000f00030000000800000010001d0000000300050014001100000000",
            INIT_21 => X"00000000000b001700020000000b000000030044000000040006000a001a0000",
            INIT_22 => X"0006000000060014002000020011000a00040000003700000000000b001e000c",
            INIT_23 => X"00000008001100040028001d000000080011000000000020000000000000002d",
            INIT_24 => X"00120009000e0027000000240018000000000006000000100000000b000b0000",
            INIT_25 => X"0011002d0028000d005800000023002b00000000000c00000000000000150012",
            INIT_26 => X"001a0021001f0007000000450012002300360000000b001f0022001b00000000",
            INIT_27 => X"002a00240024002500270000002500330038002a002f002f002e00280022001e",
            INIT_28 => X"002e002f002a002a0026002b001300000052002e002c003a002e002f0036002f",
            INIT_29 => X"002e002d0031002e00240023002800190019002c0033002b00280045002a002f",
            INIT_2A => X"00000000000a0002000000000000000000000000000000000000001f003a0043",
            INIT_2B => X"00000003001c001f000000170008001000000000000000000000000000000000",
            INIT_2C => X"00000000003f002d0042000000000011002b00000000000000000000002a0000",
            INIT_2D => X"006c0000002a003b0026005a00000025002c00280000000e0000000000000071",
            INIT_2E => X"003100590000003e001e0052002f0000003c0048005d00240034000000230005",
            INIT_2F => X"001500730048002500310012005c007300000060003e0061002c000000000037",
            INIT_30 => X"003100280065004d0037000c0012004700750000006a004a005a000000000038",
            INIT_31 => X"002a000b0084004200680013002500060050004f000000460038008b00060000",
            INIT_32 => X"001800640000009f003a004a000000000004005b001600290000002c002e0013",
            INIT_33 => X"0020004c009300000094003c000f000c000000000017005a003b0030004d0000",
            INIT_34 => X"003c003a007300d80000004e002b001d003100200023001d001a004100830071",
            INIT_35 => X"003e003f0049004200af008200000012005f004f0040003e003c003d00380047",
            INIT_36 => X"0041003c0042004d0039005a00cb00000045006a003d00480050004000380039",
            INIT_37 => X"00550044003800440043003500480054003e004b0076007b0038004e004d0048",
            INIT_38 => X"0000000000000004000000050003000600080008000000000080006f001a003a",
            INIT_39 => X"000000060024000000000000001a0049000a0007000c000a0007000500060000",
            INIT_3A => X"0000001700070015001a000d0000000000000007000400040000000000040000",
            INIT_3B => X"0000000100000000000000000005001b00370000000d00050009002500280000",
            INIT_3C => X"000000000018000f0025002500000000000e000600560080000b0013005a0026",
            INIT_3D => X"0007000600270009000000000000003a001f001a002a00000000000000080000",
            INIT_3E => X"001c00070015001d00170000000b000000110009000a00000021000000040000",
            INIT_3F => X"0004000b00040010000000000000000000000000000000000000001600190010",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00110004000900000000002f000300000000000000000004001a00000000001c",
            INIT_41 => X"0085009c00460000000000000000001f001b000000000000000c004a00000000",
            INIT_42 => X"0000000000000046000f0000000000000000001b004100200000000000000028",
            INIT_43 => X"0000000000000000000000000000000200000000000000000000000000000000",
            INIT_44 => X"0000000000080000000000000000000000000011000000000012000700040000",
            INIT_45 => X"0013001400000000000000000000000000000000000000130000000000000000",
            INIT_46 => X"007c009400ad00b700ac009d00a400a500a200a3009d00000022002800000004",
            INIT_47 => X"003e002e003a007a00a000a9008c00a000ac00a800ad00a2009200920084007c",
            INIT_48 => X"0027000a001e0007002d00480073008e00af00b000ac006a0089008b006e004e",
            INIT_49 => X"0025001b002d0033000c00150027004d005900a200aa00a4002b004d0067003a",
            INIT_4A => X"002f001c0017003900310000001f002f00430047004e00600094001f0017003a",
            INIT_4B => X"000e001700120010002a003e0000002d00310045003b00250099008e00120016",
            INIT_4C => X"000a001c0026000e0010002800320000002f002d003e0032002f009f0062002a",
            INIT_4D => X"002b00000014004100220009002d002f001e00290027002e002600370062002c",
            INIT_4E => X"00000024000500100079002d000f002600420054000d0030003600220055000e",
            INIT_4F => X"00170000002300150000008a006200090006001d0034002d0028000800200035",
            INIT_50 => X"0000003a0006000000000000000000000000000000000000000600000000001a",
            INIT_51 => X"0000000000000034000000000000000000000000000000000000000000000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"0017001d002400260027001e0020002500230022000000000000000000000000",
            INIT_55 => X"0000001d000e001d000f00200028001f002a002c00230018001e00240026001a",
            INIT_56 => X"00000000002e002100060000001a00270021002800390006001c002b00200009",
            INIT_57 => X"00000009000000480000000000040024000f00290021004c0000002c00250000",
            INIT_58 => X"00000006000000000059000000000000000b00090056000200260000004a0000",
            INIT_59 => X"00000000001400000000008e0000000000000013003e001a0000000a0000002b",
            INIT_5A => X"000000000015000a0000000000660000000000000036003f0000002000000000",
            INIT_5B => X"000200000008000f001d00000000004200000000000000420038000000000000",
            INIT_5C => X"00000000000000230021001e0000002500000024000000000011000400210000",
            INIT_5D => X"007800000004002a001400340030000c00000005000200000027000f0000002c",
            INIT_5E => X"0000004000000014002000000000000100090008000000000000002200000000",
            INIT_5F => X"0000000000000043002100000000000000000000000000000000000000000000",
            INIT_60 => X"0000000000000000005d00000000000000000000000000000000000000000000",
            INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"0037003a00300029002f002c002d0030002b0000000000040000000000000000",
            INIT_63 => X"000c003b0029001f0000002d002e00300035002c0031002a002700260025002a",
            INIT_64 => X"0000000000000023002d003b00320035002e0029001c0025001f000e00000000",
            INIT_65 => X"000000000000000000000000001900250032002300000000001a000400000000",
            INIT_66 => X"0000000000000000000000000000000000000018001200000000001100000006",
            INIT_67 => X"00000000000000000000000000000000000300030038000b0000000000050000",
            INIT_68 => X"00000000000000000000000000000000000000000007003a0007000000000000",
            INIT_69 => X"0000000d00000000000000000000000000000000000000020000000000000000",
            INIT_6A => X"0000000000080000000400180003000f000000000005001a0000000000000000",
            INIT_6B => X"000000000000001f00000000000a001100080000000000000000000000000000",
            INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"000b000c000c0004000800080011000a00000000000000000000000000000000",
            INIT_71 => X"00420023000500000008000c000a000a00000006000800110023002d0021000b",
            INIT_72 => X"0000000000090016003700050008000500330035000a0017000a000000000000",
            INIT_73 => X"0004001a000000020000000000080008000500000000000c000e000000000000",
            INIT_74 => X"00000000000000070000000900000000000e000200000001000e000000060010",
            INIT_75 => X"00070015001400000000000000000028003e000300060000000f000000000000",
            INIT_76 => X"00000000000000110000001100000031000000120018001c0000000000000000",
            INIT_77 => X"0000000e0005000000090000000e002100350035000200000000000000000000",
            INIT_78 => X"000c000000000000003000260000000000000000002600000000000000010000",
            INIT_79 => X"0000000300180000000000110036004e00000000000000090023000000040000",
            INIT_7A => X"000c00210035000a0005000000000000000000370051001e0000000000000007",
            INIT_7B => X"0018000000160000000000000000000000000000000300050004002800560000",
            INIT_7C => X"000b004f0018000000000000000000000000000000000000000000000000003f",
            INIT_7D => X"0003000000220000000000000014000000000000000000000000000000000000",
            INIT_7E => X"000800150009000e000a0013000d000000000000000000000000000000000012",
            INIT_7F => X"001a000f0036000f000d0009000b0008000200060013001b0022001c000c0006",

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
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"00200028003300510008000a000b00240026000a001a0021002400350034001f",
            INIT_01 => X"005b0036002f0045002e00190012000e00140033001a0019002b004b005e0053",
            INIT_02 => X"0067003b0033003b00640044007e00350015005e0071001b0015003b0042005d",
            INIT_03 => X"0050007f005b002e004b007d007e00bd00130028009e007f0001002500390038",
            INIT_04 => X"003b004600810078004e006500a80075005a001700430094007a0015003c0047",
            INIT_05 => X"004b0048004c0078005f0050006a008500a500390039004000a5008e0033004c",
            INIT_06 => X"000e002b002c0041006500330051004e0059006600380073006600b800b00026",
            INIT_07 => X"00c700270027002f00250040005a00420079005f0033006f0075008600b300c0",
            INIT_08 => X"00cb00c100680071005a00470040003c007900b900910065009e00a2008b00ab",
            INIT_09 => X"00b100a1008c008e008a008800800078006f007c0085008a00a500e700c9009d",
            INIT_0A => X"00ef00a60085009d00a3009a0095008c00840076007100700075007a00af00e5",
            INIT_0B => X"007400a7007f008f009700ab00a30093009b008c008200770073007900800088",
            INIT_0C => X"000000000000000000000000008d00af009a008500860088007c007e0089007f",
            INIT_0D => X"000b000000000000000000000000000000000000000b001c0013000000000000",
            INIT_0E => X"0028001c003e0000000000000000003f00000000001e00140000000000330014",
            INIT_0F => X"0000000000000000000c00000000000000190000001e00070000000000000000",
            INIT_10 => X"0000001d0004000f0000000000000009000000000000000e0006001a00000000",
            INIT_11 => X"0026000000060000000000000003004f00020000002f00250000000000080000",
            INIT_12 => X"00080018000000090000000500000000000d000d00180000000000000000001c",
            INIT_13 => X"0000001c000000000000001e003d000000000000000700000002000000000000",
            INIT_14 => X"0000000d003a00260036000000000003003200220000002e0000000000000010",
            INIT_15 => X"00080000000000010031001f002e00000000001500120000000a000000000000",
            INIT_16 => X"004100210016000000000000000d000f00190000000000000000002200000000",
            INIT_17 => X"0036000d000000000000000200000006000c0037003f005200a2000000000000",
            INIT_18 => X"0025000000020000000000030000000000000000000000020000005600410000",
            INIT_19 => X"003600180000000c004200000000000a0007000000000001000000000006003e",
            INIT_1A => X"0000000000000000000000040000000000000005000000000000000900130024",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000000b000000000000000000000000001f00040000",
            INIT_1E => X"00020000000000000000000000000002000000010002000000070000002d0005",
            INIT_1F => X"005d0000000000000000002c000000000006000100100000000300000000003b",
            INIT_20 => X"00000052000000000000000f001c000000000000000000000000000e00000000",
            INIT_21 => X"00000000002d0000000500000017000c00000000000000040000001300120000",
            INIT_22 => X"001b00000011000000080000000000120000001100000016000000000003001d",
            INIT_23 => X"0000001200120000000000050000001000030000003b00000019000900000000",
            INIT_24 => X"001d002c003e00330028000200000004002d0000000000580000000d00330000",
            INIT_25 => X"005a0053005a00580056004f00490044004e004e002e0000003b000000360070",
            INIT_26 => X"0060005a005e005d0057005b005b0054004c004a00480049000000080048006f",
            INIT_27 => X"006700670050005e007400610064006100570053004d0045005000310000008a",
            INIT_28 => X"002e0033002e002f00450053006b005e00520052005200490055005f00490041",
            INIT_29 => X"0034002d0035003200320024002700260027001c0023002b002f0031002f002f",
            INIT_2A => X"002c0038002e0034003b001a0028002d00240015001300210004002500130055",
            INIT_2B => X"001a002300250036002c00790000003900270004000b000a004f001a00000000",
            INIT_2C => X"00000000001a002c0049000a006300000053000e000000120000005300180008",
            INIT_2D => X"00000000000000000049002e00000038000000390000001e0000000b005f0008",
            INIT_2E => X"00a400000000000a005000610000000c00150000000d000400230000000000bf",
            INIT_2F => X"0000007c000000080000006800450000000100000000000d0027001e00000000",
            INIT_30 => X"0000002200060031001c000000030011003c00000017000000120022002a0000",
            INIT_31 => X"004800050000000a0017000e002a00190000004a00000018000a0044003a0026",
            INIT_32 => X"001e002d002800140000000000000056000b000000a3000000110051001c0056",
            INIT_33 => X"00000011000e0010001000090000000000000000000000980000002800400000",
            INIT_34 => X"00000017000800100017001400100008000a000500090000001f004800410003",
            INIT_35 => X"000d00000000002600000009000d0010000d0009000000110000000000740010",
            INIT_36 => X"000000000000000000030031000b0000001000180009000c0016000000000019",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000001000000000000000000040000",
            INIT_39 => X"0000000000000000001200040000000000000000000000000000000000000000",
            INIT_3A => X"0000000800380000000000270001000000000000000000000000000000000005",
            INIT_3B => X"0000000000000000000000000000000000000004000000000000000000000000",
            INIT_3C => X"000000000000000000000000000000000000000f000000000000000000140000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000001200000000000000000000000000000000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00010024001c0000000000000000003e0030001e000000000000000000000011",
            INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_42 => X"0002000000000000000000000000000000000000000000000000000000000000",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0036002f00000000001300000000000000000000000000000000000000000000",
            INIT_45 => X"00360038003000270028002500200020002b0036003b00390030003500350033",
            INIT_46 => X"003900360013003000270011000600060002000200230039003b004200330039",
            INIT_47 => X"0040003700320000001500170000000100000004000000000000001e003d0037",
            INIT_48 => X"00330044001000340012000000000000000000000017000000000000001e0012",
            INIT_49 => X"002b000d000b00380031000f0000000000000000000900100000000000060025",
            INIT_4A => X"0017002e0011000e003d0007002c00000000000000000000002a0000000b0008",
            INIT_4B => X"0000000a002e0022000000250000001900040000000000000000001300030008",
            INIT_4C => X"002c0000000c00000000001c00000009001100150000000200000000000f0013",
            INIT_4D => X"000000050006001f00000000000300000014000e001600210000000000000000",
            INIT_4E => X"0000000000000000001700110006002c00000015001400050028001e00000000",
            INIT_4F => X"00000000000000000000000000000000003c0032000000000000000000000000",
            INIT_50 => X"0000000000000000000000000000000000000000004f00000000000000000000",
            INIT_51 => X"0000000000000000000000000000000000000000000000280000000000000000",
            INIT_52 => X"0027000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"00240028002e0029001e001d00290032002f002b00280020002c002900230022",
            INIT_54 => X"00280002003f002c00150019002900210005002e00300043000e0021002c0024",
            INIT_55 => X"0024002e0000005c000b001a0032000c001c00000010002400280020002a0029",
            INIT_56 => X"0013000000410005002c00000026001a001800230000001900250027000c0038",
            INIT_57 => X"00000000002f003700000024001a002b001200380014000000250024002a0027",
            INIT_58 => X"0015000000000046000e002400110020001d0007002a00340000004300250016",
            INIT_59 => X"000b003500000002003400290006000b00250000000d0028002b00000039001c",
            INIT_5A => X"0000001b000e000000340000003f0000000d000d00110000002c001100000018",
            INIT_5B => X"000f002c001d00000014002a0000003900000000001a00000000002b0005003f",
            INIT_5C => X"000f002b002700050000003200290000003800000000002f00100000000f002f",
            INIT_5D => X"0000000300070000000000000005005200000000000000000021001100080008",
            INIT_5E => X"00020000000000010005000200060000002e0022000000000014000300000000",
            INIT_5F => X"000000000000000100000000000600090000000d002200000000000900000000",
            INIT_60 => X"001a001200000000000c00000000000000000000001400040000000000130015",
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
    end generate MEM_GOLD_LAYER0_ENTITY1;


    MEM_GOLD_LAYER1_ENTITY0 : if BRAM_NAME = "gold_layer1_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"000000ba00000000001c0000004700000000010100bc005101040040001200a0",
            INIT_01 => X"0000000000000000000000000000000000000092000000000031000000000000",
            INIT_02 => X"0038000000a80000000000000000000000020000000001040000000000000000",
            INIT_03 => X"0000003700530000000000000000000000000000000200000000000000000000",
            INIT_04 => X"00000000000000000000000f0000000000000000000000000000000000000000",
            INIT_05 => X"0062014d00000079002d00000000003500b70082011300370134017a00a80000",
            INIT_06 => X"000000000000000000d10000006a000000350010007e00000000000000000000",
            INIT_07 => X"00650000005700a900080000000000c6008100d20077003300a0000000b000b0",
            INIT_08 => X"000000000000005c00000006000000000000007a00580000003c00a1000000c8",
            INIT_09 => X"0000000000360000001900000000002400ff000000480077000000e6002c0000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"0030001b0000003f0000000000000000000000aa006c00b5004d005d00000000",
            INIT_0C => X"00000000002600b600bd000000aa00000012000000b301190000000000000015",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000028",
            INIT_0E => X"000000160057000900000000004000000017006800d0014f0144012400c00000",
            INIT_0F => X"00000000000000000000000000000000000000000000000000000000005d00cf",
            INIT_10 => X"0000000000630015009000960028001e00b8000100a800000000000000000000",
            INIT_11 => X"009e011b00000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"000000110012006700ff0004004300f800790000000000000000006c00000000",
            INIT_13 => X"002600170051006c0091000000000031004e00860000004100690000001c0000",
            INIT_14 => X"00ab005900000000000000000000001000000078000000e000fd00b000000046",
            INIT_15 => X"006200ab0046007b00000000001000140053003b00db008f006a00ef00fb00c1",
            INIT_16 => X"0000003c000000000000000000a1009700510123007a008c006d00a2013c005a",
            INIT_17 => X"012f00a2004f001e000000000000000001040000000000000000000000000007",
            INIT_18 => X"00dc007000880000000000120138007200a100830161013a015b00000000008c",
            INIT_19 => X"001f00c800000000000000000000000000000000000000ae00cd013e00ad00e0",
            INIT_1A => X"00a500aa0006001e0036009f013b0073001e00000026001b004e004b004600bf",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"000000000000000000000000007c0066010100760043006a0000000000000000",
            INIT_1E => X"003d000000000000000000310000006900590000000000000000000000000000",
            INIT_1F => X"012c00700000000000000000000000000000000000ed00720031001000000000",
            INIT_20 => X"00760044006d00de002100390008006700000032000000000000000000d0017f",
            INIT_21 => X"003f006e007800b200000000000000000000000000000000000000eb01410084",
            INIT_22 => X"00000000014800870034001e00000191001c000000000000000000000092007f",
            INIT_23 => X"00c500d700f300000000000000000046004a0058000000000000000000000000",
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
    end generate MEM_GOLD_LAYER1_ENTITY0;


    MEM_GOLD_LAYER2_ENTITY0 : if BRAM_NAME = "gold_layer2_entity0" generate
        BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
        generic map (
            BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
            DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
            DO_REG => 0,                     -- Optional output register (0 or 1)
            INIT => X"000000000000000000",   -- Initial values on output port
            INIT_FILE => "NONE",
            WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
            SRVAL => X"000000000000000000",  -- Set/Reset value for port output
            WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
            -- The following INIT_xx declarations specify the initial contents of the RAM
            INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_03 => X"00000017000000000000004c000c003800210037006c00600000000000000000",
            INIT_04 => X"0029000000000000001300110061005f002b00000007001500000000002a000f",
            INIT_05 => X"00000000002300d60017000000000000005a00b80046004300000073005d0000",
            INIT_06 => X"0038002400c2001d0000000e013a0027001f003a001c00000000000500000000",
            INIT_07 => X"017a00000000000000f200600000001600000000002201cf00170000006f0080",
            INIT_08 => X"000c007c0000007b00000000000d000000ce009d00000000000a000000000092",
            INIT_09 => X"0000001100000000000000000000000000000000000f00000000000000030000",
            INIT_0A => X"0000000000000000000000380000000000000000003600000000000000000000",
            INIT_0B => X"0000000000150000002d000000000000009d0000007700000000004b00000000",
            INIT_0C => X"0000000d00000000000000000000000000000000000600000021000000130000",
            INIT_0D => X"000000cb000000000000000600000000006a000000000000006e000000790000",
            INIT_0E => X"00b60032000000000006000000000000000000000037001b0039003c00000000",
            INIT_0F => X"00150000002a0000002e00110020000c0000006700390000000a000000080000",
            INIT_10 => X"00090029000d00000017000000060019000b0009000000000000001700090036",
            INIT_11 => X"0009000d00000017000000000000000000000000000000000000000000080000",
            INIT_12 => X"000000000000000000000000000000000000000000000013001a002600160000",
            INIT_13 => X"000e0000001b0000000000000000000000020001000000050000000000000000",
            INIT_14 => X"0000000000000000000f00000000000000000000000000000000000000000011",
            INIT_15 => X"000000050000000b00000000000000000000001500180006000100000002003b",
            INIT_16 => X"0008001200210008002d00170005000c001f000000010040001c000600110000",
            INIT_17 => X"000000000000000000080000001a002e00000031003800000000003000220013",
            INIT_18 => X"00000032002a004a004a00000000002200000000000000000000000000000000",
            INIT_19 => X"0000001f00190004003e00000005000000000000003200110000000a00090009",
            INIT_1A => X"0000005f00830000000d0000005b005d00000016000000000000004e0000005b",
            INIT_1B => X"00000000000000000000000000000000000000000000001c005b000000000000",
            INIT_1C => X"00000036000000170000003c0000000000000000001900000029000000000000",
            INIT_1D => X"003b00aa0000000000000000000e001700080000001f00000000000000100000",
            INIT_1E => X"0000002d00940051006100680072004c004d0056008700270000002f00270056",
            INIT_1F => X"00000000001c000e0000002d009b0000000a000c00180000002500380000004d",
            INIT_20 => X"00920050004d0002001d004b0000001300000000001b00360039003900740000",
            INIT_21 => X"00000000001c004b003200150012000000000000009e00240000000000000050",
            INIT_22 => X"0000000000250000002c0037000000000000004e000000000000000000000000",
            INIT_23 => X"0002005f000000000000000000000000001300110000003f0000006400000000",
            INIT_24 => X"00000000000000000017002e00320018000400530004000b0014000000070000",
            INIT_25 => X"0000000000000000000000000000000d000d0000000000000000000000000000",
            INIT_26 => X"0021000100000000000600000000001e000e00000016000000000000000d0000",
            INIT_27 => X"000000000000002e004100380039000000000000001b00120000000000000000",
            INIT_28 => X"0000000000000000000000000022000000000000000000000000000000000000",
            INIT_29 => X"0000001a00000003007c00170000002300000000000000000000000000000000",
            INIT_2A => X"00920081004000350024001e000c0000000000170018000600150000001a0000",
            INIT_2B => X"00000000007000000000000000000000000000000000003300000019006c0027",
            INIT_2C => X"000000000000000000000036000000380038004f001c00000000000000050000",
            INIT_2D => X"0000000000000000000000000013000000000000000000000000000000000000",
            INIT_2E => X"000000000066002600650042001c000000000000000000000000000000000000",
            INIT_2F => X"00250028000c007400b7004700350060004d00000019007700560059004e0062",
            INIT_30 => X"00bb00ab009c009200a9008b009a008a0084006e005000390078008500390018",
            INIT_31 => X"0011002d001c00000000004d009700460050006700a900b500a6000a00000000",
            INIT_32 => X"002f002b000000000000000000000000001d0068001d0000002100000000001c",
            INIT_33 => X"000000000000000000610017004200730056006700d100240040006a00340037",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"00060000000000000000000000000000000000000000000000000000000f0000",
            INIT_36 => X"00a9009800a0007d00c1007c009c007d009b00b3000000680000002100000000",
            INIT_37 => X"000000000000000000000011000000000000000000000000001c000600b000c2",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"005a005e005b0053008800610041004900500051004b00610062000000000000",
            INIT_3B => X"005c005d00410046007b004e006d0076003c0073005f00760060005a0068002a",
            INIT_3C => X"0000000d00000000000000000000002f002e002300150010004f003b00460097",
            INIT_3D => X"000500400043007000450048004b00560057007b007300630000000000000000",
            INIT_3E => X"00210021000000090000005d0007003c00240000001e00220032002b00440012",
            INIT_3F => X"000000000000000000000000000000000000002b001700190015000000060000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"002600000036003c004700310026002c004a005e005a00000000000000000000",
            INIT_41 => X"00350044005a00260035003f002d002e003100460002000e0050003e003a0026",
            INIT_42 => X"00000000000000000000000000020000001d0000002c00080000001c00440049",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0000002e00000000004c000000110000001100320000000a0000001700000000",
            INIT_45 => X"003e0018001a0086007b0012006e00000000000000110000001c007600000002",
            INIT_46 => X"00f000be00c1006c007400d100be010a0116004c004800350033003d00af0000",
            INIT_47 => X"0011005700640040001000000034001c007b003e0055002b0003003500150096",
            INIT_48 => X"00000000000000000000003700760017002f002700300040001f00400000000a",
            INIT_49 => X"00090000006c0000002b00000000000000000000000000000000000000000000",
            INIT_4A => X"0000007900c4006200b0000000ed00000000006f008400650000009700000000",
            INIT_4B => X"0024000000a2000000000000001f005300760025000000460000009200000053",
            INIT_4C => X"00240032005c0011001e00000006000000000000000b00000011000600000000",
            INIT_4D => X"002a0022003600220097002e0059003600420026002c00460034008a0050009e",
            INIT_4E => X"002800bd009a001c002100660037002b00a600af0017001f0000002700350031",
            INIT_4F => X"0000000000000000000000000000000000000000000000000000000000100000",
            INIT_50 => X"001f000b00000000000000000000000000000000000000000000000000000000",
            INIT_51 => X"0086007e0047000000190020002a000500180030000000000000000000000000",
            INIT_52 => X"0000000000000002000000e100bf00ac00a300ae007d00d000b000b300a7008a",
            INIT_53 => X"0000003a000000530000006500000000004e0000002a002f0004000000000000",
            INIT_54 => X"000000000000000000000000008b0000001c0000002500000050000000050011",
            INIT_55 => X"0000000000000000000a0024000d001800120000000000040000002200000000",
            INIT_56 => X"0000009100000000003f0000001e00000033000000000012005000040000004d",
            INIT_57 => X"00000000007700000000000a0044000000000000000000000000002500000000",
            INIT_58 => X"000000030000000b0038004100300061000000a6000500420067000000000000",
            INIT_59 => X"0000006f002d000000230000002200000023004e002900000000000000000000",
            INIT_5A => X"000000000000002c002e0003002b000000000000000000000000005c002e0005",
            INIT_5B => X"00b0009000390030003600300000000000000053005e005e0000000000000000",
            INIT_5C => X"00000042006a003400430014003b0025007900b4006a0068004a0067006700a2",
            INIT_5D => X"000000000008001700330000003c000000270000002c00220000002400000034",
            INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000046",
            INIT_5F => X"000000000001002d000a00160000000000000000000000170000000000000000",
            INIT_60 => X"003a002700390042006000000002001500080000001e0045002f001200170003",
            INIT_61 => X"00ab00a9009e00960092006600bb00960088007e007e0048000700690026003a",
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
    end generate MEM_GOLD_LAYER2_ENTITY0;

MEM_EMPTY_36Kb : if BRAM_NAME = "default" generate
    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
        BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
        DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
        DO_REG => 0,                     -- Optional output register (0 or 1)
        INIT => X"000000000000000000",   -- Initial values on output port
        INIT_FILE => "NONE",
        WRITE_WIDTH => 16, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        READ_WIDTH => 16, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
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
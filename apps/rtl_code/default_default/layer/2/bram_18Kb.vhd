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
        DEVICE     : string := "7SERIES";
        BRAM_NAME  : string := ""
        );

    port (
        RST  : in std_logic;
        CLK  : in std_logic;
        EN   : in std_logic;
        WE   : in std_logic;
        DI   : in std_logic_vector(INPUT_SIZE-1 downto 0);
        ADDR : in std_logic_vector(10-1 downto 0);
        DO   : out std_logic_vector(INPUT_SIZE-1 downto 0)
    );
 end bram_single;

  architecture a1 of bram_single is
    signal bram_wr_en    : std_logic_vector(2-1 downto 0);

    begin
    bram_wr_en <= (others => '1') when WE = '1' else (others => '0');
          

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
            INIT_00 => X"d97ff546f23efb98f88d4a571017fa160ea50a32218541710277da53f2be1a10",
            INIT_01 => X"41b444f2f3ef0d1f13052f1d0aeded1bfb1b2f06d00ff844fa921b8cf25e2a6e",
            INIT_02 => X"1aee4eda2657172922b71e3dd5f505d9ed401361e848091dd2aaf5381eeff0af",
            INIT_03 => X"0be82c7a227ffaef17562c6efec7f9670ac318cc2da42571380ee1001e3c2be4",
            INIT_04 => X"ffed000afff40006ffeb00000019ffff0010fff3fff0001ffffb000b001dffe6",
            INIT_05 => X"fffaffe00027002a002d0028008f003400280064002300140038fffefff6000b",
            INIT_06 => X"fff90006ffd6ffd60011003f00430054008d0045003a006000070000001affe6",
            INIT_07 => X"0019000f00000024001f0011fffe0000001bffd3fffc0021ffd8ffecfffe0000",
            INIT_08 => X"fffeffecffddfff0ffd8fff7ffdffff2002000030018fffd0012003b0002ffee",
            INIT_09 => X"fff4fff4001a0009fffcfffe0004fff8fffa0005ffe500260011fffc000dfffc",
            INIT_0A => X"ffe8ffd8ffea0008fffbffdc0007fffaffdcffc800090003000f001100020007",
            INIT_0B => X"ffeffffd000b000e00220010000f0025ffe3fff700150000fffa00040000fff8",
            INIT_0C => X"ffcb00100015001000020024000a00100003ffd9fff7ffcffff00001ffe9fff1",
            INIT_0D => X"00110009000efff5001100370001fff0ffdf000700200013fffdfff3000cffe5",
            INIT_0E => X"ffe70000ffbdffd2ffc6ffffffb7ffd7ffd4ff91ffdfffee0008fff9fff40001",
            INIT_0F => X"fffa002200000012ffe5fff7ffd8fff4ffdefff20002fff0fffc0009fff6ffe4",
            INIT_10 => X"0011fffffff6001000010018fff80005fff5fff0fff000020002ffebffef0001",
            INIT_11 => X"fff70002000c0007002cfff8ffe3001a00070010ffed000d0006ffc70013ffe6",
            INIT_12 => X"ff98000d000e0030fffb00120011fff6000800040003ffee0022001dfffe001a",
            INIT_13 => X"ffffffe3ffdc000afffc0016ffe80000001b0008ffee00210019001900020010",
            INIT_14 => X"00150012ffd5ffedffdb001cffe00014fff5fffcfffaffe7000efffbffeb0004",
            INIT_15 => X"0002ffe900030016ffff00140019ffffffeb00100006001d0004fffdffccffe8",
            INIT_16 => X"000000010012001efff0000200230000fffdffddffc6ffdeffd7000000050025",
            INIT_17 => X"006e002c0011ffe2ffce00240026ffeb0069002a0043fff6fff6ffaf0009ff9b",
            INIT_18 => X"0000fff3001c003bfff7fff1000700140039003e003f00460022fff10007ffe5",
            INIT_19 => X"fff50051fffeffbbffbeffed000200210033ffeafffdffddffb2ffb4ffea0010",
            INIT_1A => X"00020003ffd0ffc6ffbf0019000c0011ffecfffefff2fff80012001400000020",
            INIT_1B => X"00140034002200040013002200080018fff5ffd7ffed0009fff2001200290020",
            INIT_1C => X"001f0021ffdcffff0003ffe200540036ffda0023ffe1fffa0011fffcffda0006",
            INIT_1D => X"0003ffd0ffbaffcfffc100390043000effd9ffddffe4001200250038ffdcffef",
            INIT_1E => X"ffd50025003e0018ffccffcdffc60019001f001800050004fffeffd9ff97ff8e",
            INIT_1F => X"003400310042ffef000cfff40005002a001700300033000d0023001e0005ffe2",
            INIT_20 => X"fffd000500040023ffe70007004d0010fffa001dfff700050004fffcfff90022",
            INIT_21 => X"fffdfff2ffe0ffe5fffe001a0003001d0008000d0000fff7ffe0001b00040010",
            INIT_22 => X"0009001f0000ffe6ffd2ffe30007fffefff0fff7000d0007ffd4fff0ffddffda",
            INIT_23 => X"fffe0000003100490023ffe7ffdcffd8ffdeffb6fff10028ffadffc7004dffd3",
            INIT_24 => X"ffccffeaffdefff6ffe0ffceffef0014002400310030003800160013002a0020",
            INIT_25 => X"0011fff3ffc3ffee0015fff6ffce002400140000ffbbffeefffb0004ffbbfff1",
            INIT_26 => X"ffed0001000e0026003bffff00000005ffb7001affc2fffaffdaffd90003fff3",
            INIT_27 => X"ffe40008ffe4ffeeffe1ffe9001800320013fff7ffef0013fffbffe6ffe6ffdd",
            INIT_28 => X"001100220014fff2ffee0007fff90000fff80002fff60008fff5ffdfffb3001c",
            INIT_29 => X"0019ffe5ffe9ffeefffdffc7ffd9ffeffffc000f000b000d001f001d0059001f",
            INIT_2A => X"003c000e00350019ffc5ffd3ffd9ffeeffc400010006fff30025fffc000a000d",
            INIT_2B => X"00060026000afff4000c001efffdfffffff5ffd900060004ffddffdcffea0035",
            INIT_2C => X"001a00180000ffe4ffca000ffff1ffefffe70022ffd2000d0000fffb00370010",
            INIT_2D => X"ffe0ffff00310038ffd60019002effcfffe20028001cfffcfffb001f001effe3",
            INIT_2E => X"fffdfffcffe30019fff8000ffffc00260011ffe90024002cfff3ffe80013ffea",
            INIT_2F => X"0002000fffe7000c0016001d00070038ffd6ffd8ffd8001bfffc0002000ffffd",
            INIT_30 => X"ffd40008fffeffeaffcefff40005ffd2ffec0036ffcf00040038ffc8ffce002c",
            INIT_31 => X"002dfff0fff60023ffd4ffcf00310007fff0000a0001003cffe500080028ffc6",
            INIT_32 => X"ffe500240006ffc9ffdd001f0000001ffff4ffe6fff80001ffffffe600180011",
            INIT_33 => X"0000fff6fffb0009001fffe6ffe9000f0010000d000b0004fffa0024fffeffe8",
            INIT_34 => X"0023fff60007fff200000002fff3001d0031ffd8fffa0022ffc9ffcc001f0000",
            INIT_35 => X"fff3ffb700160014ffeefff80003ffcbffeb0032000d001b0027002200260036",
            INIT_36 => X"00300003ffebffe0fffdffe8ffb70037001dffe3ffdcffff0023ffc3ffd90023",
            INIT_37 => X"ffbeffed0020ffe4002e002dffe9fffc0030ffe5ffe8002c00020017001f000f",
            INIT_38 => X"003e004900250044002cfff80013001cffdc000f0035ffd8ffe3fffc0005fffc",
            INIT_39 => X"ffca00300013001a0012001b0006ffebfff40029ffbfffff000effc00003003e",
            INIT_3A => X"fffd000000000003fffdfffb000cffee0008fff0ffe4000affeafff8fff3fff6",
            INIT_3B => X"ffeafff30006ffed000bffe7fff4fff6fff6000e0000fff00008fff5fff0ffe8",
            INIT_3C => X"000dffeb0005fffdffec000000050000fffafff60003ffeeffedfff10007fff4",
            INIT_3D => X"0000fffb000200110006fff6fffbfff4fff3fff0fff7fff30006fffdfffd000d",
            INIT_3E => X"000a00050007ffee0000ffebffdd0000000cffe70002000900040007fff9ffec",
            INIT_3F => X"fffcffed0008ffff00020002fff7fff9fffcffffffeb000ffff2000300000010",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffeafffaffdfffebfff80011fff800070004fff2fffc00080005fff80005fff4",
            INIT_41 => X"0000ffeb0002fff4fffcffe1fffdffe2000a000bfff20000fffd00000001ffee",
            INIT_42 => X"fff9ffee000800120007000bfff5fff8ffecfff100030005fff2fffbfffbfff5",
            INIT_43 => X"000bfff00000fff7ffe8fffffffb0000ffedffff0006ffecffebffefffe9ffe7",
            INIT_44 => X"fffdfffafff40000fffefff6000afff2fff5fff4fff8ffea000cfffefff10000",
            INIT_45 => X"fff0ffe7fff4ffebffec000fffedfff9fffbffebfffbfff3ffedfff400030004",
            INIT_46 => X"0001fffa0007ffee000bfff2fffe000c0005ffe90000ffebfff8ffe7fffc0004",
            INIT_47 => X"0003fffcffea0000fff80003fff2ffedffea0005ffffffeaffe80005fffc0000",
            INIT_48 => X"ffe0ffeefff00001fff30009fff6fff00009ffedfffb00020004001100000001",
            INIT_49 => X"00000005ffec000b000bffea00100008ffec0002fff6ffe8ffeafff2fffefff0",
            INIT_4A => X"fff9fff1fff1fff50009fff600070007ffed000b000b0001fffafff10009fff6",
            INIT_4B => X"0006fffa0008000d0009fffbfff4fff3ffefffe300040012fff3fff70008fff0",
            INIT_4C => X"0009001b0017fffbfff60001000c0001fffcffe3ffd5ffe30012003efffaffe6",
            INIT_4D => X"ffeefff3ffb6ffd6ffea000cfff7ffd90011001e0007ffe6ffce0032ffe4ffbe",
            INIT_4E => X"ffd5ffdfffe4ffc2ffd0ffceffcd000affd1ffd0fff8ffd6ffe5ffc3ffc3ffd3",
            INIT_4F => X"ffbfffeaffe9fffe00160016002300250031001b000ffffb0008001c0036ffff",
            INIT_50 => X"00160018ffe1fff7ffed000e001ffff200070008fff6002b0011fff10003000e",
            INIT_51 => X"0024fff9ffc3fff0ffb6ffcfffabffd7ffde000f0009000300000028003a000e",
            INIT_52 => X"fffa000f001dffe900140001fff40024fff0fffdffeeffdc0016001afff7fff4",
            INIT_53 => X"ffde0000fff5ffe0ffdffff30038001cffb5ffcfffaaffb2ffebffe2ffea0000",
            INIT_54 => X"0000fffffffafff200160003000c000ffffa0000ffefffe00000fffcffe5ffc8",
            INIT_55 => X"0027000dffe8002a0041006000120035001d000f001a0017ffed003f0022fff9",
            INIT_56 => X"0046003700060000fff80006002c000cffe40000ffd40016fffd000a000d0001",
            INIT_57 => X"00020004fffe0002002b0018001f000d001300160013fffb00040002ffe6000e",
            INIT_58 => X"0010ffdf00150014fffa000dffda001bfff0ffceffeeffe3fff7ffec0002fff5",
            INIT_59 => X"fff2ffff0022003f0032001a001200110017ffceffe7002efff5ffd60023ffec",
            INIT_5A => X"ffbeffedffdaffdaffe7002effd6fff100050008ffccffe0ffe5ffd4ffe9ffee",
            INIT_5B => X"000800060028000bfff8ffd50006ffe9ffe9001cfff7fffdffa7ffb60015ffd9",
            INIT_5C => X"ffc7ffd1ffbcffd7fff3000dfffcffd900240003fff100140006001100290005",
            INIT_5D => X"0014000cfff7ffe90011000ffff0fff6ffebffecffe5000affe9ffdbffecfff6",
            INIT_5E => X"000fffecfffdfffffff0001cfff8fff5fff9003800260005000cfff1ffe9fff3",
            INIT_5F => X"000e002cfffaffadff92ffcbff9fffad0036ffe7ffd5fffbff8dffc4ffd0ffe5",
            INIT_60 => X"ffcb0004ffdbfffefff2ffb7ffecfff0ff9effc6ffd1fff7ffeb002300350022",
            INIT_61 => X"0012001a00310000fffdffedffe0ffd8ffdefff3fffdffd80008fff2fffc001b",
            INIT_62 => X"000a00120007ffef001cffe3ffee0019fffeffd4fff4ffbaffb7ffe0ffd3fff1",
            INIT_63 => X"000cfffa0024000d002d0018fff1001500180000fffaffd7ffdfffefffe4ffe0",
            INIT_64 => X"000e00160058ffe8ffdcffe000070000ffbd0010ffe2ffbefffc000d00100000",
            INIT_65 => X"fffd00070001ffee0006001000140000001900120016001a000b001000190008",
            INIT_66 => X"001affe4fffeffefffe3ffeefff9000400200012000f0011fff8000e0000ffd5",
            INIT_67 => X"ffe5ffd1ffddffe9ffbc0001ffd7ffed0002fffd00030016003e000ffff80014",
            INIT_68 => X"fffdffd3fff90007ffc4fffe000afffa00150022ffe20000001200110002000d",
            INIT_69 => X"0023ffdb0007000a0014002500210023001c0034ffe70005000d000c0005002f",
            INIT_6A => X"00090027003cfffd0005fffffff4000bffe500050016ffe9ffed0006ffc8ffed",
            INIT_6B => X"ffe5fff8ffd2fffa000a000f0013002b001cffb3ffdefffbfff8fff10033fff9",
            INIT_6C => X"ffe2001bfff2ffee0007000e00050015001a003100220021fff7002e000affd2",
            INIT_6D => X"00440004ffecfff7fff1fff9ffc300070005ffff00000002ffbeff78ffbdffd4",
            INIT_6E => X"ffb8ffcdfff0ffd5ffd3000f000b0015fffc00210030001effeafff8000b001d",
            INIT_6F => X"001000040019001afffcfffb002f00170019001e00370017fff80025000cffc6",
            INIT_70 => X"ffd8ffe5fff1fff1ffeafffbfff9fff2ffeb0026002a0029003200250015fff7",
            INIT_71 => X"ffbbffb80000000efffdffe2ffea0026ffe5fff5001afff600120031ffd6ffda",
            INIT_72 => X"000dffe8ffed0023ffda001cffea002e00350016fff0001a0007000400080005",
            INIT_73 => X"00150036001c0027003100330038000200240019fff9ffedfff2ffcdffd3fff2",
            INIT_74 => X"fff1fff1ffb5ffa1ffabffdfffceffcb0028002600220053003f0037000e0003",
            INIT_75 => X"fff0fffbfff2fff6000a0001000b0014fff0000c0005fffe0017001b000a000b",
            INIT_76 => X"ffdefff1ffdd000bffef0021000200000040fffcfffd0030002100210020ffe5",
            INIT_77 => X"00190013ffe8fff5fff2ffdeffc4ffe7ffccffc1ffcaffeeffddffd2000a0025",
            INIT_78 => X"002c0022003a00230006fff300130018fff0fff7fffffffe000effe4001a002c",
            INIT_79 => X"00110002fff5ffabffb3ffedffaeff95ffa3001a0005001300220016002ffff5",
            INIT_7A => X"00080006ffd3000c0016ffd5fffa0031ffec0034001100340032001dfff60016",
            INIT_7B => X"ffeffff0fff5fff10004ffee0004ffcefffdffe9fffc0004001500250027001a",
            INIT_7C => X"000e0016fffb001f001500110029002d001f00170002000fffe5ffd0ffe3000b",
            INIT_7D => X"0012ffffffe9000afffeffe5ffebfffb002bfffaffceffe8ffdcffacffbbffef",
            INIT_7E => X"ffcd000700020013ffb0ffacffb6ffc6ffb6ffab001900110003ffecfffe0024",
            INIT_7F => X"ffe0ffff0003001a000affec000bfff8ffbaffb6ffbaffb7fffcfff8fffeffcd",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"0010002ffff4004e002e0009ffe2ffdefff0ffd3ffb3ffe4ffc3ffc3fff60005",
            INIT_01 => X"0006ffd3ffef00000010fff8fffefff9fff5001f0013ffef0016fffe0010001e",
            INIT_02 => X"fffd000f000cfff5000b000e000c0012fffbfff2fffeffec000cfffbfff4ffe5",
            INIT_03 => X"fffaffe700090001fffc0001fff30000fff80002fffaffe60001ffeafff50000",
            INIT_04 => X"0005fffffff60000fff4ffee0003ffe5fff6fffaffeeffeb00060001ffecffe9",
            INIT_05 => X"000a00090000fff4fff400010005fffefffbffff0011ffebfff5ffedfff9ffef",
            INIT_06 => X"fff600060004ffe800050007fff50004ffe0fff1fff6fffb00050005ffffffe3",
            INIT_07 => X"00050000fff00006fffc000bffef0014ffed0006ffe3fff1fffcffe5ffe30000",
            INIT_08 => X"ffe50000ffe70003fffcfff4000dfffd0008fff2fffa000c0006001300130007",
            INIT_09 => X"ffeeffeb000dfff80013fffafff3fff9fff800040000fff20007000000030000",
            INIT_0A => X"fffdffeafff7000efff8000dffffffe4fff800040008ffed000bfff2fff0fffd",
            INIT_0B => X"fff0ffea00010000fff7fffe000cfffdfff0fff8fffbfff7fffdffecfff20005",
            INIT_0C => X"fff00004ffe70003fffbfffeffeeffed00070009fff4fff80000ffe9ffe70009",
            INIT_0D => X"00060001fff3ffe9fff5fff2ffffffeaffe3fff1fff9ffef0008fffcffeffff8",
            INIT_0E => X"000affe70002fffcfff10005fff90009fffc000e0011fff1ffee000efff5fff8",
            INIT_0F => X"fffbfff9fff6ffe6fff9fff0fffaffeafff50001000bfff7fffdffe10004ffec",
            INIT_10 => X"ffeafffcffe60003fff1fff1fff1ffda0000ffec0010fff5fff3001100020007",
            INIT_11 => X"00140007ffef000ffffa000a0003ffed00040001fffeffedffe8ffff000dfff7",
            INIT_12 => X"fff1fff20000000a0000fffc00010002fffdfffffff80001fff5000500040006",
            INIT_13 => X"0001fffe00050006fff60008fffcfffcffe90003fff00000ffecffeb000b0000",
            INIT_14 => X"0000fff9000fffeb0003fffdfff7fffd000afff10004fffc00020015ffdbffdc",
            INIT_15 => X"ffb8ffd90022ffeefff7001900100021002e00050005001c002f000afff40030",
            INIT_16 => X"002e000200480022ffe6ffed0028fff60014001e003600420019fff7001d0011",
            INIT_17 => X"002b0048ffed0027003b0034ffdd000f000affdcffc9fffeffd5fff400290024",
            INIT_18 => X"000dfff1ffffffdafffdffe6000c0016ffe8fffe0003ffe3ffee001a001cffea",
            INIT_19 => X"0010ffdc0010002fffedffd100000006fff00001ffecffeb0002ffbeffdfffff",
            INIT_1A => X"ffb9ffc7ffe2fffafffc0006ffeffffa000fffe8fff40015fff5ffebffdefffb",
            INIT_1B => X"fffc0017ffd9ffeffff3fff0000affce0000ffee0003ffbfffd9fff8ffebfff7",
            INIT_1C => X"0013fff0000d000ffff900020000fffdffd1ffe70006ffeaffe0ffdfffc9ffde",
            INIT_1D => X"0018fff90015ffbd0024ffd6ffaaffde000affef0013002effc1ffd90000ffc0",
            INIT_1E => X"ffeffff00012fff4000700110031002e000e002efffbffeaffe70000fffc0004",
            INIT_1F => X"fffa00020005ffef000100040022fff0fff50002fffefffafff1ffdf0009fffa",
            INIT_20 => X"000ffffb0004fffcffeafff0ffb3fff20023ffdafff70005fff4ffdcfffbffcb",
            INIT_21 => X"fffa0018ffb1ffe6000fffa2ffe00016ffc4ffd5004d001e000200240008ffe5",
            INIT_22 => X"fff0ffffffecffd9ffd1ffeeffe3ffbcfffc0012ffe80009000c000cffe20024",
            INIT_23 => X"fff8ffcf000affebfff8001affde00080005ffdfffcdffe40014002a001d002a",
            INIT_24 => X"0016002a005600690038ffe900250004ffcbfffbfff5ffd6ff9bfff6001a0003",
            INIT_25 => X"0015ffe9fff6fffeffd600050028000afffd0007fffc00060017001f0018000e",
            INIT_26 => X"0005ffebffe9fff7001e00020001000ffff0001efffefff0002c002f00220019",
            INIT_27 => X"00160000ffe4ffd4ffe5fff900110012fff8001a00100027fff3ffe500050037",
            INIT_28 => X"0006002500350006ffefffd0ffec00100000ffda00000046ffeafff4fffd0022",
            INIT_29 => X"0026fff9000800060000001afffcfff5ffdf001d000d00050026000800180020",
            INIT_2A => X"0000fff300280013ffebfffb0009fff3ffefffe7ffd000110011fff2ffecfff1",
            INIT_2B => X"ffd0ffd900080022ffc1ffeb0018ffe8ffd10020002d0014fff70031000d0014",
            INIT_2C => X"0013fffdffeaffd7ffe10008ffc8ffe4000dffcfffdffffbfff8001a0011fffd",
            INIT_2D => X"fffc000e000d00000004000d001ffffbfff0fff70000ffc9fff1ffeffffffff6",
            INIT_2E => X"0016fffcffd2ffcf0019fff9ffcfffc0fffd0012ffe9ffe40047ffd900020049",
            INIT_2F => X"0002fffc000d0018000800130014ffef0004ffe6ffd2ffe5ffc0ffe30030ffd9",
            INIT_30 => X"fff00010ffd30006fff4ffdffffd0035fffbffed000f000c00170013001c0011",
            INIT_31 => X"ffff002e00020016001b0012fffc0016ffe2000a0004ffdafff3fff200020012",
            INIT_32 => X"0019fff3000bffe9fff70002fff1001b0000ffe9fff4002d000affee0008ffeb",
            INIT_33 => X"ffe9ffef0030000affcc0023fff4ffd60021001dffed00130048004600250053",
            INIT_34 => X"004f00380010ffe90021003b000a00200018ffe1ffd5ffea0021ff98ffcb002d",
            INIT_35 => X"ffdefffb001e0002ffe10014002cfffdffe0003c001afff8fffcffdeffeafff2",
            INIT_36 => X"002bfff30045004e0021ffdafff9002d0000ffe1fff80009ffd0ffd800170034",
            INIT_37 => X"000c00290001ffdd000affd6ffd9ffaeffe50024ff9bffd00017ffd90011004f",
            INIT_38 => X"fffcfffefff9fffe000300000008000affff0002ffb7ffae0013ffb0ffaf0017",
            INIT_39 => X"fffffff1ffdd00280043ffdc002a00500006fffb001dffe60001fffbfff50014",
            INIT_3A => X"002affe5002d0030ffe9002cfffa000d006e0045ffe3fff90016ffe9ffed0018",
            INIT_3B => X"ffe50009002cffe6fffc00050000ffe0ffd4fff10006fff80027001e00030006",
            INIT_3C => X"fffbffdb0005ffe900020005ffe2ffe0fffaffdb0027fff9fff200040017ffe8",
            INIT_3D => X"000bfff2ffe3ffa50021ffd0ffbb0004ffd2ffc8ffe9ffd200160007ffd6000a",
            INIT_3E => X"000a0009fffbfff3000d0016ffdeffee0008ffe1fffbffddffe2001e001e0009",
            INIT_3F => X"0007000d0016002b00120012ffd7ffbb00640000ffc30033ffe8ffbdffd0ffe6",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0029ffe6000c0003ffdfffd9ffdffff20007000a000f0036002600130003000a",
            INIT_41 => X"002affcdff7cfffaff9affa2fff4ffb9ffcf0018fff2ffe40040fff1ffd70027",
            INIT_42 => X"fff0ffddfff0000b000dffea0019ffeefff8001b0000fff3002b00340001fffe",
            INIT_43 => X"001d00050014000e001c001e000400110009ffeefffa001fffea001300000010",
            INIT_44 => X"0007001200260000fffc0000ffeefff7fffcfff3000fffe80000001c00180007",
            INIT_45 => X"00110027ffea0003002affef000efff5ffc9002a0058ffcb00140053fff3ffe3",
            INIT_46 => X"00280006ffd7ffda0015fffcfff1000bfffdfff2000f0007ffd60033fff9fffb",
            INIT_47 => X"0009ffe6ffc30000ffe1ffecffee0001fffcfff9fff8001a001800260017fff9",
            INIT_48 => X"0007fffaffd8fff80009fff30013fff80018ffec000affe6ffe7ffe7fff4001f",
            INIT_49 => X"000a000dfffeffec00090016ffedfff7fff9000300260008000f00200007ffe9",
            INIT_4A => X"000400100007fff40009fff6ffffffdafff8ff99ffbeffa8ff8aff74ffa9ffa4",
            INIT_4B => X"ffa0ffcc001200210022001000370015002bfffb001a0024ffe3fffe00220000",
            INIT_4C => X"ffe4fff6fffcffe400460029002c005f0015000400510029fff1000d0004fff8",
            INIT_4D => X"0000001d00060002ffe6ffeeffe2ffffffebfffcfff3000b0019fffdfff6fff1",
            INIT_4E => X"0024001f0017000a000b0028003cfff7fffdfffd0003ffcfffa1ffd7ffc3ffc8",
            INIT_4F => X"0016fff5ffe9ffffffedfff0ffedfff9fff70025ffd2ffe2ffe5ffd2ffa0ffcf",
            INIT_50 => X"fff0ffc9fff9ffdcffd8ffdf00180004ffe50009ffeaffebffe8ffe5ffef000c",
            INIT_51 => X"0009ffea001b001d0010000d001b0002fffafff500130015000efffcfffeffff",
            INIT_52 => X"ffe4ffe800070002fff8ffe1fff2ffe8fff5ffd90014ffe8ffe8002b0018000c",
            INIT_53 => X"ffb0ffd3ffefffb1ffd7fff0ffe0ffee000ffff9ffd9ffd6fff8ffec0003000d",
            INIT_54 => X"fffe0006fff000290019fff6000bfff6fff4ffebffe40005000afffe00050017",
            INIT_55 => X"fffa000f001e0005fff8fffc000700140006ffed001cfffdffdeffe9fff2fffc",
            INIT_56 => X"ffe9fff6ffec0012fffb000affefffe5fff4ffe4fff90008fff3fff600140027",
            INIT_57 => X"00050012ffebfff60012fff000080004fffeffff000f0000fff1002affd00010",
            INIT_58 => X"0031001d001400200008001b00090008ffedfff1fff7fffe0014001e00060006",
            INIT_59 => X"00000001003afffdffea00050003ffe7001f0014fffc00000034002900110003",
            INIT_5A => X"0031000300090021000cffdb00090015ffe10002002efff5000c000000030011",
            INIT_5B => X"000f000d000dfff70002fff6ffdd001700000015001a0017001e002d0018000a",
            INIT_5C => X"00080001ffdffff7ffeb000a0007fff800000004000afff30023002dffed0005",
            INIT_5D => X"ffceffae000b002e0056001e0006fff3ffedffe4ffef000400150000ffc6000c",
            INIT_5E => X"002affbafff200130037001b0022fff30006ffd8fff1ffd7ffd0ffd9ffb3ffe1",
            INIT_5F => X"000cffb1000f0029002900440019fff30012ffdfffea0017fff4ffe3ffe1000b",
            INIT_60 => X"00050013fff1001fffff0002ffefffeaffed0011001a0028fffe0021ffe2ffd5",
            INIT_61 => X"ffe5ffd5ffe8fff0ffeeffe3ffd7fff5ffe0fffb00110000ffe40033fffeffed",
            INIT_62 => X"fff9ffefffdd0017fff2fff2fff7ffdeffe9fffbffe8fff8fffaffd8ffd60012",
            INIT_63 => X"000400080008001e0031000500050031001e00150009ffe70003ffea0003ffad",
            INIT_64 => X"ffae0044ffcc00090036001d003d0000000c0019000c001100150003ffe50018",
            INIT_65 => X"000dffe9ffdb0003000cffbf001effdcffd6ffd7fff60002ffc5fff6fff9ffe2",
            INIT_66 => X"ffda0026fffc003400250010004d004d001cffffffed0001ffdfffeb0010ffd8",
            INIT_67 => X"00250026ffff00180024ffee000bffecffdc00000000ffecfffdffedffe80016",
            INIT_68 => X"fff1ffe20020000c0007001fffcafffefff4ffdffffa0000ffecfff5000cfff4",
            INIT_69 => X"ffbcffeb000c0010001b002b001100280010006d00310026003bfff9ffdcffe5",
            INIT_6A => X"ffe5fff800130028fffb0004fff1fff0ffecffbffff6ffff00090017fff2001a",
            INIT_6B => X"ffedfff90006000bffdbffe00005000efff300100006fff7001800130035fffd",
            INIT_6C => X"000f000afff1fff9ffff0002ffdaffde00080019ffe2ffecfff7fff70006ffde",
            INIT_6D => X"fffa0006ffe50000000200050011fffa0001000bfffe001b001d001f00180028",
            INIT_6E => X"0008fffb0001fff7001d00000014fff9fffefff10010fff8fffafff7fff8ffee",
            INIT_6F => X"fff50023ffe0fff8ffcafff7002a0017005100600059001c000b0008ffdbffe6",
            INIT_70 => X"fff50019fff2ffdbfff8ffd9ffb10025000dffd4004f00270014000700150013",
            INIT_71 => X"ffecffdd0003000affe60001ffee000a0019ffe3ffe10008000bfff2fff4fff9",
            INIT_72 => X"ffd8001fffed00020000000c0016001e0004ffd8ffbb00140016ffd9001cffed",
            INIT_73 => X"0000ffecfffafffe0027002ffff3000f000bffdbffe2fff2ffc400060007fff8",
            INIT_74 => X"ffdafff0fffeffeffff1001dffeefffe00320001002cfffeffef000e0002fffa",
            INIT_75 => X"fff50014ffd1ffdcfff9000a0008002d000b0018ffdf000c001300060015000e",
            INIT_76 => X"00100001000200000012ffe20010ffe4ffd5000affedfffdfff600120000ffd3",
            INIT_77 => X"0025002f002d0071004a00600023fffc001fffe5000d000500050015000c0012",
            INIT_78 => X"0007ffedffff0001fff20002ffd6fff3ffdbffdbfff0fff7ffe20024fff9ffc7",
            INIT_79 => X"ffd0fff7fff1fffb00060013002afff2ffcaffe1000100040004fff4fffd001f",
            INIT_7A => X"ffcdfff9ffe30017fffbfffefff3fff8fff00024000cfff300150003ffef0000",
            INIT_7B => X"ffeb001c0003fff70024ffeaffc1fff000090010ffe3fff5ffeeffdd00140002",
            INIT_7C => X"0000ffff000000000008ffeb0003001300260015fffc000fffe1000e002afff7",
            INIT_7D => X"0003ffecffd3ffd8ffe70007fff3ffeefff20014001d0027ffc2fff5fffcfff9",
            INIT_7E => X"fff6fffb0023fff3ffe5fffe0032002dfffafff30042ffe9fffb001400320000",
            INIT_7F => X"0027fffaffd7fff2fff9fff3fff6ffef0019fff9fff8001d0014000afffdfff0",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"ffefffec001e00090014000b002a001c001c00270013fffd002c0006000cffd6",
            INIT_01 => X"ffd4000d000efffe0011001400520034004100210027002c0038001f002b003d",
            INIT_02 => X"000e0002fffcffde002dfffcffe000340050ffe30005fff7ffe7fff3000c0032",
            INIT_03 => X"fffffff7000f002f000f001d0002ffddfff9ffd6ffd6ffba0006000ffff4fffc",
            INIT_04 => X"ffe70002000b0026000a001c001e0003002c0024fff0fffe0002fff4ffe4ffe0",
            INIT_05 => X"00040008001e0023ffdaffdf00000000fff3fffd0025fff3ffe60002fff0ffe5",
            INIT_06 => X"fff8ffd6ffe9000fffdf0002ffdd0009fff30018ffdcffeaffd200050007ffc8",
            INIT_07 => X"ffe3fff7ffe600070004fff6ffcefff2002900010005001c0015001efffd001b",
            INIT_08 => X"0001ffe0000100170042003d001affc5fff3000affa3ffc80010ffe1000dffef",
            INIT_09 => X"0043ffd1fff6000affebffc2ffebffff0026ffe2fff9001c0009fff700010022",
            INIT_0A => X"000c0002ffd3ffe1001effbeffe3ffdf0020fff90004fff50005fff3ffddfff3",
            INIT_0B => X"0011001cffe8fff10023fff1001fffd7ffe00018ffeafff500100001002a0023",
            INIT_0C => X"ffe3fffd0016000b00110006fff8fff7000affccfff4001efff000340024003a",
            INIT_0D => X"fff8fff80001ffd6ffc50001ffe7ffddfff20029004b002500320020ffedfff5",
            INIT_0E => X"fffbfffcffe5ffe0001e0012ffeaffeefff50000fffeffec0032fffcffed0028",
            INIT_0F => X"0014001d0005ffdffff6000cffe600040017000cffea00110017005800030015",
            INIT_10 => X"005cffe70019001cffd0ffc0ff99000dffe7ffe3fff6fffe0015fff60005fff8",
            INIT_11 => X"000dfff400000002000a000600290000000f0013fff2fffa00200004fffefffe",
            INIT_12 => X"fff400090009000200130017000c000b000d002a001b0036fff400000010000e",
            INIT_13 => X"0021001d0039000a002500420019ffff001500180017ffdcffe10013ffd0ffcd",
            INIT_14 => X"ffe1ffbfffb9ffc5001b0021002c001000430040ffe8fffa0005fff6000c000f",
            INIT_15 => X"ffdb00150000001efff6fffafffd0018003200020018fffbfffeffe6ffea0000",
            INIT_16 => X"ffffffea001300070000ffe8000a0018000dffd0fff5001e000afff00028fffb",
            INIT_17 => X"00000005001a0000fffc0003ffebffeffff0000c0015fff0000cfffa0015001b",
            INIT_18 => X"001b0017001a001f00130027ffc7000dfff20003002dffe6ffff000e002c0000",
            INIT_19 => X"ffe7000cffe1ffe1ffd1fff7000d0006000f00190009ffdd0015001100170015",
            INIT_1A => X"0034ffcaffeafff3ffff0011fff9000c002200330005000d0009fff40000ffe9",
            INIT_1B => X"00020034ffe5fff40006002fffff002200120025001b001cfff1001afff6ffd6",
            INIT_1C => X"0001ffeaff9bffccffccffc7fff0ffccffd30015ffd60000fffb000efff8fffb",
            INIT_1D => X"0006000b0008fff2ffee0000ffdaffdaffd6fff1ffec000c00080016001bfff8",
            INIT_1E => X"ffe5ffedffe5001dfff9000e001b00240035fffdffeb001f0005ffdeffebffdb",
            INIT_1F => X"0012000effdc000dffe700100020ffe1fff3ffc2ffd50007ffe9ffcd001dfff0",
            INIT_20 => X"0019fff8ffeeffcb001b000dfffdffeb000efff600190025fff90019fff4ffe7",
            INIT_21 => X"fff1000affe0fff5fff2fffefffaffe1fff20002ffdaffd5ffdaffdb0010ffc0",
            INIT_22 => X"ffbbffeaffddffd4ffc4ffe6ffe7fff3fff1fff2ffdd00030001ffebffe9ffe5",
            INIT_23 => X"ffc5ffd9ffdbffd1fff1000fffee002500390043000e00000000ffecffdcffd4",
            INIT_24 => X"fff0000d0016fff1fff900150005fffffffbffdfffe2ffe9fffa00010027001f",
            INIT_25 => X"00050014000effc7ffe1ffc6ffb3ffa6ffe4ffa9ffa9001bffb6ffb3fff2ffc5",
            INIT_26 => X"ffa70019001eff94ffdaffa8ffc6ffa0ffc5ff9bffc4fff4ffa8ffc1ffd4ffea",
            INIT_27 => X"ffdafff00015fffb000b0010fff4fff2ffdbfff3000bffe1000a0000ffca0029",
            INIT_28 => X"001dfff100310026000c0027000affdb000100000022ffe600170015fffc0017",
            INIT_29 => X"000affe9ffec0036fffeffd40027fff000210047fff600080016fff20007ffff",
            INIT_2A => X"fffdfff80001ff86ff9cffbdffd1ff7affbe0015fff5ffe8ffe2fff2ffd10003",
            INIT_2B => X"0000fff4fff2fffefff500070000ffe8fffefff2ffec0017ffe40000ffadffcc",
            INIT_2C => X"ffe3ffd4ffaeffdfffd0ffe3ffd6ffd9ffebfff500110016002f000800130017",
            INIT_2D => X"00330026001000120002000c0002000cffdefff1ffeeffd8fff4ffe4fff6fffa",
            INIT_2E => X"ffe9fffb0011001c0010ffeeffd8ffdaffb0ffbaffc0fffb0034001a002e0024",
            INIT_2F => X"001e001d002dfffaffe7ffebfff0fff90015ffef0000fffafffcfff000000005",
            INIT_30 => X"fffcfff80017000c0028000000060000ffee0013000c002a000b0004001a0005",
            INIT_31 => X"0029fff40011fffb0003fff7001efff50006001a0033004f006d002f007a0054",
            INIT_32 => X"0064002a0013fffb00320003fff4000d0010ffd5fff8fff70023ffedfff9001e",
            INIT_33 => X"0003ffff003afff8fff20013001b000dfff1fffd000bfff3fff8ffbbfff6ffb1",
            INIT_34 => X"ffa3ffb9ffeaffd2ffaf001800150006ffddffe800000015fff8ffff00270020",
            INIT_35 => X"fffc001200210001fff5fff6ffd3ffdffff10006fff5ffee001a001400150037",
            INIT_36 => X"0000fff9fff9fffefffa000f000afff00006ffb6ff8bff99ffacff86ffcffff6",
            INIT_37 => X"ffcaffd6ffdc00470042000200070014ffe8ffe8ffd7fffb00160044fff10009",
            INIT_38 => X"ffe30001ffe0ffcf003000300021001c0006004d0011fffe000f0019003e001e",
            INIT_39 => X"001f001f001f000700180013ffdcffd7ffc2fff0ffd7ffe5ffd1ffeb0003fffa",
            INIT_3A => X"001900100016001e0005002400190009fffaffe4fff8ffddffcbffefffd9ffd1",
            INIT_3B => X"0000ffa2ffe4ffefffc1fffb0004ffe50009ffdfffe7ffbcffcbfffbffcdffdd",
            INIT_3C => X"000dffdfffe6ffc9ffd00013ffebffe3ffe10012ffd6ffdd0000fff40011fff5",
            INIT_3D => X"0001000ffff900110018ffcfffd3ffd4fff4ffd2ffe1ffc9ffee0006fffbffeb",
            INIT_3E => X"0012fff3fffeffebfff30000ffd6ffc3ffe7fff6ffd6000a0006fff400390024",
            INIT_3F => X"ffd5ffeaffa7ffa6ffc5ffbeffc7ffbfffb7ffdeffbfffdc0001ffefffe3001c",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"0000ffe6001e000e0027ffe8ffe90007ffaa0000ffef0008fffe0006000f0027",
            INIT_41 => X"0022fff90017002fffeb000f0020ffef00100003fff900160019fff8fffcffff",
            INIT_42 => X"000a0008000c0001001a0016ffc2ffdaffc5ffccfff5ffe4000cffebfffd0018",
            INIT_43 => X"000a001100190015ffeffff6000cfffaffed002bffffffb7fff20005ffa4ffde",
            INIT_44 => X"00060010002a0025fffffff20005fff5ffe60005ffe7fffb000ffff0fff3fffa",
            INIT_45 => X"fff30009fff8ffebffc8ffe0ffe50008fff6ffbe00000004001c001300370008",
            INIT_46 => X"0000fff2ffe3ffad0012fffa0005ffd9ffd6fff2ffdfffe10002ffcb00190032",
            INIT_47 => X"000cfff8001f0011fff8001a00170000ffeb000000120016fffd002afffd0004",
            INIT_48 => X"ffeeffee0014000d0003000a0000ffe900170016000f003e0005001c000afff5",
            INIT_49 => X"00000003ffe900000001fffc001b000efff4000a001cffceffe3000f00320006",
            INIT_4A => X"ffe7002f000b0000ffeefffc0002000bfffb00080022fffc0007fff700180003",
            INIT_4B => X"ffedffee0009ffef000400220000001b000f000300010018ffeeffff000fffea",
            INIT_4C => X"00000025ffe500170031004800180050001effddffc7001b0034ffdc00280001",
            INIT_4D => X"fff700110022fff2ffedfffeffd8ffa9ffe2ffd0001b00000011fff9000dffe5",
            INIT_4E => X"ffe60009fff2000dfff0002cffd3ffcaffc8ffc4ffd4ffeb002300260024ffe7",
            INIT_4F => X"ffe10008fff9fff900130014002b0020fff7001b00190011fff70043fff2ffdd",
            INIT_50 => X"ffdeffecffe5ffdf002c003d003e004a00460021ffe4fff80000ffbeffc2ffc6",
            INIT_51 => X"ffc7ffd1ffb4ffec001c000cffd1ffefffdf00210025000fffe2fffefff6ffb6",
            INIT_52 => X"fffa0003ffe1ffdeffd300020031fff8ffbaffe9ffcd000dfffffff5ffe9fffa",
            INIT_53 => X"ffeafff0ffe5001e0000000a000e00130011002efffbffed00040021001e0016",
            INIT_54 => X"fff5fff10013000effdc00030052002d001a00000000ffcefff6fff1fff6ffcc",
            INIT_55 => X"ffacffd0ffe9ffe2fff8ffea00120012ffd8ffa5ffaffff4ffefffe1fff5ffd4",
            INIT_56 => X"ffbcffb2ffd7fff7000e0034000c002afff7fffdfffe000efffcffd0fff5ffdb",
            INIT_57 => X"ffb2ffeb000f000f0000000f000000120014ffe3fff20037fff0fff1ffca001d",
            INIT_58 => X"fffaffcd000f0000ffcc00180007fff2fffe0015003b0001fff2003cffd6ffe8",
            INIT_59 => X"fffc001b00230022001b001e000b00100029001cffe30000000bffccffeeffe8",
            INIT_5A => X"000c0006001a000efff4fffc00150002fff90033004b002a00430040003e0042",
            INIT_5B => X"0038003afff0ffbafff5ffbcff8affbcffbeff94ffdaffdeffdfffe3ffdeffc0",
            INIT_5C => X"ffefffa2ffe4ffe5fff7ffe2ffe6ffc4ffbb000cff86ffbeffe1fffaffe9ffd9",
            INIT_5D => X"000c0000ffff0037002f0042fffe00420027fff7ffeb000dffdcffe0ffef000e",
            INIT_5E => X"0001fffb001000210005002700150008000a00150022001efff1000a000c0010",
            INIT_5F => X"00380014000b001bffdb00050002ffcbffdb000300210010000d0022fff50029",
            INIT_60 => X"ffeefffd0017fff8fff0ffd8fff0fff7ffe7ffe4001e000a000bffe9ffebffef",
            INIT_61 => X"fff3fff1ffff000cfff2001300210016001400310032ffed00070009000cffe9",
            INIT_62 => X"fffeffed0000fffb001e00100006ffe4fffcffe9ffda00000003fffa00100009",
            INIT_63 => X"0033005d005efff90048003a002000130025000e001efffd000a00050000fff7",
            INIT_64 => X"000e000dffea0000ffe8ffe3000dffe6ffe8fff8ffe4001d000f001f0001fff6",
            INIT_65 => X"0008001400140019ffd2fff5ffea000f0018ffe7001a00020007001100190003",
            INIT_66 => X"fffc000fffe6000b00070011001c0012002900030011001cfff4fff600030003",
            INIT_67 => X"fff10004fff9000d0006ffd30004fff3ffbbffdefff7ffb7ff94ffc3ff97ff70",
            INIT_68 => X"ffc0000a002100240010000f0023000400110019000300130021ffd8002d0009",
            INIT_69 => X"ffe6000a0006003200180009000afffbffed00250010ffecfff6ffd4fff4ffd2",
            INIT_6A => X"ffd50009ffc8ffe70008ffefffe9000100090008ffea0004ffeaffdffff1ffe8",
            INIT_6B => X"ffe6001800120003000d00150000fff0000ffffc0003000e0003fffb00000009",
            INIT_6C => X"ffebffea0000ffea000b00030003000a000a00110004fffcffefffc7ffe2ffd4",
            INIT_6D => X"ffd8ffdeffc2ffc1ffccffabff9affed000bfffb00150009fff7ffd600290003",
            INIT_6E => X"ffe500360035fffeff96ffc1ffb3ffb2ffd6ffe9000500240005001a00420033",
            INIT_6F => X"000000160027ffcffff1ffd6ffd8ffe9ffbfffa3ffdeffe50009ffeb002c001b",
            INIT_70 => X"000e000ffff70000001e001c000a0034fffafffdfff9ffdaffcafff6ffcbffe7",
            INIT_71 => X"ffee00100014fffc0001ffed0007fff8000affeefff20007fff5ffd8fff3ffed",
            INIT_72 => X"fff3002900240014001d00070008000cfff2fffa001effc6fffc000300180002",
            INIT_73 => X"fff9000500000001ffdaffdbffd6ffd30003fff9fff2004d0030003b000e0036",
            INIT_74 => X"0018ffe7000effecffc4ffedffe3ffe90001fff1fffdfffdffebffd8ffed0000",
            INIT_75 => X"00040007ffd5000b00100034001700360016fff4fff50006001bfff1ffff0008",
            INIT_76 => X"0014000bffd6fff9ffd2fff00005ffff002a000affe4fffb000c001bffed0015",
            INIT_77 => X"fff6ffef00050013000c000dfff4001f001cfff6fff70004ffeb00310010ffff",
            INIT_78 => X"fffa000effe7ffd2ffee0014fffd001a000c000200150028ffeb0006fff70003",
            INIT_79 => X"000f00120006fff6ffec000d001a0011ffc4001d002dffcf00340050ffc6000e",
            INIT_7A => X"008dffc9ffcdffcbffe20000ffe6002a003a002e0001fff30004fff4ffeffff3",
            INIT_7B => X"003100200001ffe40008000affe5fff1fff9ffbf00150016fff0fff4ffd9002a",
            INIT_7C => X"0009ffe700370036ffeb0011002e0016ffea0006000dffd8ffe9001d0022000e",
            INIT_7D => X"fff30025001efffd001b0010fff800250017002800360016ffd9001c0022fffa",
            INIT_7E => X"fffe0008000c0006000a001a00040017fff5fff70004fff30003000600180005",
            INIT_7F => X"0030ffed000ffffafff3fff0ffeaffe90015ffd9fffbfff7ffe2ffd10006ffea",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"002c0002001a004dffe2ffbffffaffdeffd2fffffffeffa3ffaafff4ffec000f",
            INIT_01 => X"0000fff3fffbffecffe2fff100210025fff1ffa2ffa8ffd6ffc5ffc50000ffec",
            INIT_02 => X"001b0007ffcafff0000affe0000e002e00220015001100040006ffeafffbfff3",
            INIT_03 => X"ffe9000affe5ffc900160006ffd50011fff2ffac000a0016001f001d0022ffe4",
            INIT_04 => X"ffeaffecffd50000fff6fff900070008ffef0022000a0009ffe1ffe9ffe4ffd8",
            INIT_05 => X"fff90001ffe10002000600180023fff5fffd001d000b00160006000e000b0005",
            INIT_06 => X"000100060015ffeeffc6ffabffd1fff8fffdffed0028fffcfff2fff50003fff4",
            INIT_07 => X"0036002600210047003b0002000c000d0002fff7000f000000050021fff8fff9",
            INIT_08 => X"ffe2000600230027fffbffdf0026fff5ffb5fff3ffc7000e000d0014fff1ffed",
            INIT_09 => X"0007ffbbffd1ffff0033002f001cffe1ffcf0015ffc2ffde00020033001d0021",
            INIT_0A => X"000efff8000dffe0ffcb0023ffecffd9ffff00060007ffd900100009fffffffd",
            INIT_0B => X"00240020000c0010000fff9dffc3ffda0036ffe8fff70028ffb100060024ffc2",
            INIT_0C => X"ffd80004000300050009fff4000fffee0001001900220026fff1000f002afff2",
            INIT_0D => X"000b0024ffccffe7ffe4ffd0fffbfff6ffedffeaffd4fff90006ffd8ffe9ffe1",
            INIT_0E => X"ffef0012000700030034ffeefffbfff2ffe9ffecfff8000cffdeffe8001d000b",
            INIT_0F => X"0002ffd9fffffffcffadffd40027000a0013ffe00022002cfff30029001dfffb",
            INIT_10 => X"0001001800040013fff6000d0016000a00010000fffa001b0013002800350010",
            INIT_11 => X"0031ffef003b0021fff4001f002d0012ffd90001fff90013fff8ffefffc9ffe3",
            INIT_12 => X"ffed0004ffd6fff10028000600130000002300040007000dffffffe6ffd4fff8",
            INIT_13 => X"ffe2ffbeffd9fff3ffb9ffd5ffe4fff60009fff8001f000cffe200110009fffd",
            INIT_14 => X"fff6000000040020000effe4001f00290011fff6fff6fff9ffed000affe0fff3",
            INIT_15 => X"000efffefffcffff002d0006ffebfffefff6ffd700270020001a001900200010",
            INIT_16 => X"fffafff7001e000500030018ffc4fffe0000fff7ffd4ffe00006001c000effe4",
            INIT_17 => X"fff8fff60006fff6ffd8ffedffd9ffe7ffe8001d000cfffd0004ffe7fff0ffd2",
            INIT_18 => X"fff0ffe8ffbdffe9fff2ffcefff400110008000a0025ffddfff00032fffdffd8",
            INIT_19 => X"fff300300010ffcb0017ffceffda00180001001d002cfff8fffe0012002fffd8",
            INIT_1A => X"0017ffe90012ffe6001e0036002bfff90039ffd9ffe100120010000bfffdffd1",
            INIT_1B => X"0000fffcffe2fffa00080010000e0012ffe7fff6ffebffdeffe6000b0011000a",
            INIT_1C => X"fff4ffd4000d0005ffe9fff4ffdefff10015fffafff8000d0008fff3fff40020",
            INIT_1D => X"0000000cfffefff0000dfff1fffb00330011ffd6fff700090004fff8001a0001",
            INIT_1E => X"000300100022000c0011003c0029ffd70029001dfffa00020000000f00080000",
            INIT_1F => X"00450005ffd60003fff6001dffc80006ffe7fff1fffcffd1fff2ffec0001ffd1",
            INIT_20 => X"ffbeffdcffe7ffa9ffd5fff8ffe50000ffe1ffcdffc10003002bffd800040000",
            INIT_21 => X"fffafff7fffd0001ffee000200090005000e00050020fffb0019001cfff1ffe0",
            INIT_22 => X"fff6fff60010000afffefff2000afff0fff5ffdeffc9ffdb0025ffebffc40028",
            INIT_23 => X"0004ffecffe3ffc7ffd6ffe6fff0000dffdb000a0029fff4ffb8ffd8ffe6fffb",
            INIT_24 => X"0028ffe8fff00033ffeaffb7ffc8ffeeffea0010fff20054004dffdafffbffee",
            INIT_25 => X"ffe2000effe600290029002f001b0017ffff001e0031001affd9ffc7ffc20028",
            INIT_26 => X"00180013003f003a0018fff0ffed0011ffcffff5ffecfff1fffaffee002e0049",
            INIT_27 => X"00100018001a002400280020003affc8ffd7fff5ffcfffddffd9fff900070003",
            INIT_28 => X"000c00210000ffdcffdcfff400000028000affe4000c00350009fffbffed0006",
            INIT_29 => X"0015fff8fff9fff700120042000e0025006e00280019ffeeffc3fff0ffa2ffe5",
            INIT_2A => X"ffbc0000003c00090023003f000d00050014fffaffedffe5fff5000dffdbffed",
            INIT_2B => X"002c0030003100510030004600150035000e0005fffdfff2ffff0000fffcffdc",
            INIT_2C => X"ffcdffeefff10004000dffe1ffee0001ffd70006ffd5ffd2ffecffc00000ffff",
            INIT_2D => X"ffdf001900350002ffdcffe0ffcc0017001afff7003b003bfff9ffebfff9ffbe",
            INIT_2E => X"000ffffaffde0042003500030024000700120013fffb0001ffdcffcbffeeffcb",
            INIT_2F => X"ffd5ffec0001002dffed000a000cffcfffb900340000ffd800400018ffcc0018",
            INIT_30 => X"004b0023ffc9ffe2004500050004fffcffe5ffe1fff8002d001afff3fffa003c",
            INIT_31 => X"ffe1ffbefffa001e0044002d00140023001cffef0008fff1ffefffd5000a000d",
            INIT_32 => X"ffda0013fff1fffd003a000c00430048000d001d002fffbdffd7ffd50002ffe8",
            INIT_33 => X"ffec0022002a0010002a000dfff700030018002cfffdffe70013ffeaffef0001",
            INIT_34 => X"0000fffa00000008000afff2fff700070012ffed0013fff40002fff6fff5fff5",
            INIT_35 => X"fff3fffafffc0007000afff9fff3fff00010fff9fffb0000000efff50000ffff",
            INIT_36 => X"00020007fff4000bfffdffedffe60000fffc0000ffeefffffff9000500000003",
            INIT_37 => X"fff7fff4fff4ffebfffcfff1fffefff60010fffdffec000000000004fff6fff3",
            INIT_38 => X"fff4000d0001ffe9000400100003fffafff10009ffeffffdfff0fffbfffc0000",
            INIT_39 => X"fffb000a0000000a000a000300110003fff6fff5fffd0013fffb0002fffe0004",
            INIT_3A => X"0017fff1fffdfff900060007000cfff5fff3000000000007000fffec0002fff7",
            INIT_3B => X"000300010000000dfffd0006ffeb000bffef0002fff0fff5fff7fffbfffd000e",
            INIT_3C => X"00000000fff9000bfff1ffecfff400030000ffeaffea0006ffffffec0011ffea",
            INIT_3D => X"00100011ffeefff0000c000ffff50005000effebfff8fff60000fff500070004",
            INIT_3E => X"fff1000a001500110002fff30007fffbfffafff9fff00003000effedfff3000c",
            INIT_3F => X"fff3000effff0002fff9ffffffe80004000d0002fff50003fffd0006000bfff4",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffe9fff4000a0009ffeb000afff0000dfffcfffa0005ffe9ffee0012fff9fffd",
            INIT_41 => X"fff1fff4fff2fff00004fff3ffedffeafff0fff8fff60003fffe000a0005fffe",
            INIT_42 => X"ffe8fff4fffeffe80004fff3fff90003fffe0000fffefff6000b0005000ffff6",
            INIT_43 => X"00110007000dfff60009fff5ffeffffbfffaffeb0004ffeefff600000004fff8",
            INIT_44 => X"0001fff5fff60003fff50000fff8fff2ffebfff9fffc00000007ffecffea0009",
            INIT_45 => X"fff3ffee0000fff9fff7fffb000300060008fffffff9fffbffeefff3fff4ffe9",
            INIT_46 => X"fff8fffafffefff80008ffe70006ffe9ffeefffd00150002fffdffe9ffd5fffa",
            INIT_47 => X"ffe4fff3ffddfffcffdffffc0014001f002e00430028001d00480040003a0018",
            INIT_48 => X"001e000b0002ffe6fff9fff2ffda0030000bfff0002c00310033fffbffe0fff7",
            INIT_49 => X"ffe0fffdffeeffe90017ffe1ffea000afffefffeffd7fff7fff4fff6ffe90005",
            INIT_4A => X"001800040013002200260020002700000016001c0019001bfff40001000dffe9",
            INIT_4B => X"0006ffb2ff9affe8ffdbffc3ffe50022000000240008002f0002fff2ffdbffef",
            INIT_4C => X"000cffe8ffe0ffc9ffc1ffe6ffd2ffc4ffd5ffeeffbfffcf0001ffceffe5fffc",
            INIT_4D => X"0003fff5001300210010ffed000c000200020005fffe0017000d002e0016ffee",
            INIT_4E => X"fff60010fff200150001fff9ffefffeaffd1fff2ffddfff2fff900070009001e",
            INIT_4F => X"ffcfffc6ffefffafffaeffddffe5ffe0ffcdffc7fff7ffff0000ffc30009fffd",
            INIT_50 => X"fff800070001001bfff4ffb8ffb1ffb1ffbaffa3ffc700280009ffec0026002c",
            INIT_51 => X"000600250013001f00150001fff40013ffebfff1ffdeffecfff50027000bffec",
            INIT_52 => X"002b001300040009fffa0009ffd5ffebfff6fff2ffd100060016000a001cfffe",
            INIT_53 => X"00070014fff3ffff0004fff90007ffff002000300019002c0029fffd0000fffb",
            INIT_54 => X"000b002400420020002300070024002300010017ffb7ffbdfff7ffc7fffc0007",
            INIT_55 => X"fffd000b00200017ffe2fffbfffc0028001f000a000600130041002e00240024",
            INIT_56 => X"00140014000bffeefff0ffdcffca000c0004ffda0003000d00080001000f0010",
            INIT_57 => X"00130028000b001dfff5ffeffff2ffedffb80002ffbeffdc0010000b00140022",
            INIT_58 => X"0000fff900150007fff6fff7fffd0006ffe90035001300280003fff900230003",
            INIT_59 => X"00000002002afffc003c002d002e0015002c00300016ffc8fff1ffe9fff7ffdf",
            INIT_5A => X"ffee0012000cffcfffef0019ffcc0037003500140014001d0002ffdbffddffd8",
            INIT_5B => X"000e00270023000e001e0007004d00380033000e001c0020fff5ffc7ffc3001c",
            INIT_5C => X"00330016ffe9fff7ffd3ffe8ffc9fffb002efff800070001002c002a0012001b",
            INIT_5D => X"0017002c0011fffe002bffdfffe700260000ffef0001ffeb0006ffdd00000033",
            INIT_5E => X"ffe9fff2fff3fff6002d000effe2001f001e0007ffdcffe0001b00040004000a",
            INIT_5F => X"0011ffdf0006fff8ffe30030001200350002ffe2ffddfff2ffe5ffe9000c000d",
            INIT_60 => X"ffed0010003f00210010003e0018000600080003001dfffaffe5fff6ffe70001",
            INIT_61 => X"ffe4fffb0013000bffef0029ffd1ffd6fff9001a001000280005fff40027fff6",
            INIT_62 => X"ffdeffe9fff60006fff500180004000900240007fff1000efffdfff400080035",
            INIT_63 => X"0000fff20008fff6fffdfff2fff4000a0003ffdefff6000e000600000001ffe9",
            INIT_64 => X"000f00130010001c000b000f004a002a00280015000b00170028ffeffff7ffe3",
            INIT_65 => X"fff2ffd70005000afff5000dfffbffe00001ffcf00000012fff8003fffdc0001",
            INIT_66 => X"0022fffe000bfffaffefffe7ffdcffbcffc7ffb50013fffdffff0011ffe10001",
            INIT_67 => X"0019ffd8fffe00480013001e001900030011fffefff4fff3fff1fff6fff40001",
            INIT_68 => X"0004001f001a003afff1002000250019001b0002fff8fffbffdb0013ffe1fffa",
            INIT_69 => X"ffddfff7fff5fff1ffe90001ffeb001e0010fffbfff5ffd7fff600190001ffed",
            INIT_6A => X"000affeeffeb0014000300080015000a0000ffe7fff0ffef0001ffeafffe0008",
            INIT_6B => X"000200000002000a0005ffedfff50008fffdffebffedffe8000bfff4000d0004",
            INIT_6C => X"fff300110002fffd0002fffdfff600070015fff6000c000a0002fffefff8fffc",
            INIT_6D => X"fffe000bffe60005ffff0003000b0007ffff0000fff4fff4fff1ffe500060007",
            INIT_6E => X"ffeb0001fffcffeafff8fffbfff60001fff100090005ffeffff0ffe7fff5fff2",
            INIT_6F => X"ffed000cfff1ffeb00090000ffe7ffe8ffe5fff9ffe7000500090001000affee",
            INIT_70 => X"fffdfff9ffee000afff9fffd000ffff5fff900000000fffdffecffebfffcfff1",
            INIT_71 => X"ffe5000b0009fffaffffffef0009fff4fff50002fffefffc0000ffe6ffe6fff5",
            INIT_72 => X"ffe900010000fff1000400040002fff000040007000f000ffff1fff1fff90001",
            INIT_73 => X"fffcfff3fff50000000b0000fff10007fffc0003000b0001ffeb0002fff9ffea",
            INIT_74 => X"0009ffeefff5000d0008ffec00020000ffec000f000f0007fffcfff2fffffff3",
            INIT_75 => X"fff6fffeffe3fff6fff2fff9000bffecfff8ffedffe3fff00000ffeb000e0005",
            INIT_76 => X"0007000dfff6ffee000effec0000000dffff0004ffeffff8fff4ffed0007fff0",
            INIT_77 => X"00040000fff0ffeafff90007ffee000500000002ffe7fff20004ffe40007000b",
            INIT_78 => X"ffedffe100000003ffe6ffdfffdefff4ffe0ffeffff800060013fff6fff3fffd",
            INIT_79 => X"fff60000fff0ffe9fff30001fffafff8ffebffec0005ffe7fff40007ffe6fffd",
            INIT_7A => X"0007fff200130005ffe3ffffffec000b0010fff40005fff3ffe5fffcfffbffe7",
            INIT_7B => X"0000fff5fff2fffeffeb0006fffdfff4fff4fffdfff9ffec0006000fffe80005",
            INIT_7C => X"fff6fffd0012ffed0014fffefffd0006ffef0004fffdffeb00090003000a0003",
            INIT_7D => X"ffff0000ffedfff7fffd00050004001100010005ffe90000ffebffecffeffff7",
            INIT_7E => X"ffec0009fff7fff2ffeefff30003fffc00090006fff0fff4ffeeffe9ffe40002",
            INIT_7F => X"ffe4ffefffe20009000bfff4fff4ffe8fffefff500020002fffaffecfffeffea",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"fff3fff90005fff6fff1fff5ffe7ffec0007ffefffe700000000fffe0000000b",
            INIT_01 => X"00030006fff0fff6ffedfffe000800080008000500000005fffcfffcffe30005",
            INIT_02 => X"fff5fff70000ffebfff9000bffeaffe9000efffcffe900030008000ffffa0005",
            INIT_03 => X"00090008000f000b000400020004000cffe9fffdffec000afff6ffffffe9000a",
            INIT_04 => X"fffefff20006000000080006ffebfffa000efff60000fff80001fff3fff7fffc",
            INIT_05 => X"000e0012000cfff6fffefff10000ffed0004fff80006fff4fffdffeaffed0008",
            INIT_06 => X"fffcfff7fffc0005000afff60005fffb0013ffeffffa000dffeafff9fffcfff9",
            INIT_07 => X"fff1ffe9000affe50002ffec000afffffff0fff50003fff2ffef0002fff40007",
            INIT_08 => X"fff90005fff2ffecffebfff2ffeffffbffec0000fffefff6fff10000ffed0006",
            INIT_09 => X"0005000b0004fffffffaffe7fff9fffafff40009000afff6000fffe6fffaffeb",
            INIT_0A => X"000cffebfff20003ffebffe9fff8ffee0004fff3fff9000f0000fff0ffeafff5",
            INIT_0B => X"fff8ffe4fffcffe900050010ffecffeafff1fffafff5ffeeffeafffb0007fff5",
            INIT_0C => X"ffef0009fff5fff9fffaffeeffe5fff5ffeb00030002000efff10003ffecfffa",
            INIT_0D => X"fffa0005fff50000fffafff3ffeeffee0006fffffffefffffff9000dffeefff7",
            INIT_0E => X"000000080011ffe90008fff7fffaffed00000002002d001effdcffeefff60016",
            INIT_0F => X"000c00000022002e000500320026fff400350031fff9fffdffe9ffd4fff2ffc9",
            INIT_10 => X"ffa90012ffa7ffb3001efffbffd9003e000bfffc0038000a000a000b000bfff2",
            INIT_11 => X"001600290017ffe9ffe8ffe2002a0022000ffffa0003ffeaffe4ffecffb7ffe1",
            INIT_12 => X"ffff0018ffdf0010fff3003a0015002d0035001afff20007ffe1fff00003000f",
            INIT_13 => X"000e000dffd50022ffe9fffc00260016fff8002a0004002e0001ffd3ffbeffe4",
            INIT_14 => X"0013fff7000cfffb0026000e0018ffe0fff50012ffc900060001ffeaffddfffd",
            INIT_15 => X"00070018001500080013ffdc00000013ffd6ffff0006fffa0015fff50038000c",
            INIT_16 => X"0004ffff0018fffefffcfff3ffe7ffec00030015ffe4fff1002affd100050020",
            INIT_17 => X"ffc6fff20014ffbdffd2ffd9fff4000effcbfffe000100230002ffe9001a0000",
            INIT_18 => X"000c0005ffc6fff70012000afffc003fffceffdcffe50016002e001a001d0009",
            INIT_19 => X"000bfff9000dfff1ffe3001b002afff000000013ffed001c00190031002d000a",
            INIT_1A => X"0005000d0003ffec000efff700180026000a0017fffffffd000c001cfffc0034",
            INIT_1B => X"0014ffe600060008fffcffeffff4ffee0016002d001effe9ffdbfff4ffaaffe4",
            INIT_1C => X"ffd3fff200030013fffe000dffeb0005fff8ffe3fff6ffe60018fff900080035",
            INIT_1D => X"fff9ffff0019001f001dfff100170010000dffe9001dffedfff8fff8ffaffff8",
            INIT_1E => X"fff0ffcdffdaffcfffbffff800060000ffeb000d002b0009ffffffefffcf0003",
            INIT_1F => X"fff9ffe80000ffda00150008000c0001ffd7001c000efff30017ffe100010007",
            INIT_20 => X"000cfffefff90007000dffef000cfff4000e0002ffe3ffe4ffdcfffeffedffe1",
            INIT_21 => X"000afff0ffef0002ffdfffe8fff7ffed000dffeefff90004ffe9fffdfff90009",
            INIT_22 => X"fff7ffedffd4ffebffe4fff4fff0fff5000cfffafffe00030000ffed000ffff9",
            INIT_23 => X"00010004fff400000001ffe9ffed00020003ffe5fffbffeeffeb0000fff2fff7",
            INIT_24 => X"0002fff0ffeb0006fff4ffe90007fffdfff60000000affebfffdffecffe90008",
            INIT_25 => X"fff100090003fff20007fff8ffe8000dffff0016fff5fff5000dfffefff1fff3",
            INIT_26 => X"ffeaffe80004000000120013ffe9fff8ffe6fffdffe900050006000fffeafff6",
            INIT_27 => X"ffe4ffedfffefffefff10005ffe4fff10002ffe800000001fff7000a000b0011",
            INIT_28 => X"ffeeffe9fff3ffebfff4ffe5fffdffeefff90003ffedfff7fff9000c0000fff8",
            INIT_29 => X"00160010fffbfff7fffe000c000800200000fffd0019001400110000fffd0001",
            INIT_2A => X"fff600040005fff50011fffdfff9fffafff600020000ffe80000ffebfff1ffe6",
            INIT_2B => X"ffffffe8fff70002ffe0ffecffefffefffe0fff40000ffecffe3fff5ffe00000",
            INIT_2C => X"fff7ffebfff2fffd00020008ffe0ffe6fff7000ffff9000cfffd0020fff3000b",
            INIT_2D => X"fffa00120009000000000006ffed0008fff1fff4ffdcffe9ffe8ffe60000000c",
            INIT_2E => X"ffdb000bfffcffd9ffe6fff0ffeaffebffedffedfff3fffa00110012000ffffc",
            INIT_2F => X"ffe5000effe600040008fff0fff8ffe3fffafff8fffefff0ffe80002fff4fff7",
            INIT_30 => X"fffa00010003ffecfff5fff60000fff1ffeaffff0009ffeafff1fff0000a0007",
            INIT_31 => X"fff0ffeb0008fffafff2fff9fffeffe3fffafff9000efffcfff9ffebffe9ffff",
            INIT_32 => X"0019001affee00040007000e0018001a0005001c003c0042004a0062003a0057",
            INIT_33 => X"0006ffc60000ffeffff7ffc0ffb6ffaeff83ffb8ff74ffe5fff50012ffe5fff4",
            INIT_34 => X"001c001b000f0063fffd0006fffdffdcffbcffc4ffebff63ffbe001a0018fffa",
            INIT_35 => X"0004ffe0ffed002a00340054fff6000afff40012000800000000ffe500000009",
            INIT_36 => X"0011fffafffcfff400060016002d00070016001400300019003a0014002c0009",
            INIT_37 => X"ffbbffe5fff1ffc3fff5ffe0ffb00007fff5fff10025002400020047002affff",
            INIT_38 => X"0023ff9eff6efffdfff5ffb5ffc9ff84ffcbfffeffc1ffdfffddffee000e0004",
            INIT_39 => X"ffedfff9001d00310065000f0023ffdc0031001ffff9fffdfffbfff90012ffd6",
            INIT_3A => X"ffd7fff0ffe4ffa8000a001f0031fffcffe1ffd60014ffdeffe7000300160022",
            INIT_3B => X"000a00490014002c0007ffedfff60002ffea0028000f000b0022002100170001",
            INIT_3C => X"fffc00150002ffda000effe10016ffe8fff60018fffb001b000e0015fff90002",
            INIT_3D => X"0002000900130013000efff9fffdffdcffeafff6fff8fff60001001d0000fffd",
            INIT_3E => X"fff10000000afff8fffb0009ffe8000c000ffffd000fffeefff3000900000021",
            INIT_3F => X"0001fff3001effe6ffe4ffebffcdffc7ffe6ffb8ffffffb8ffd6ff9bfff5ffb5",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffa2002f002400320020002a0007000cfff4ffe9002efff9ffecfffafffbffde",
            INIT_41 => X"fff7ffff000ffff3fffeffea000efff8fff0000c000f000efff0ffd0001dffe4",
            INIT_42 => X"fff3fffa003b0019000effe0ffd2ffd3ffbbffc0ffcf0013000b0014fff1000f",
            INIT_43 => X"0001fff9ffe600170009000b001a000effe5fff60005fffffffefffd001a001b",
            INIT_44 => X"fffc001800140004fffc0008000e0010000200120021fffd0017fff7ffefffef",
            INIT_45 => X"ffd0000cfff9ffedffccffeeffd2ffc40003ffd5ffcb001a00000007002f0019",
            INIT_46 => X"002c003b0021fff0fff3ff96ffe0ffe5ff94ffcfffd9ffeaffe6ffcafff2ffc4",
            INIT_47 => X"ffe90009fff5ffdf004000310016000000130009ffee001dffe2ffedffeeffdb",
            INIT_48 => X"ffd30005fff600130029000ffffc001f004d0032000f004d0005ffeafff9ffff",
            INIT_49 => X"fff60002ffeafff5000afff4ffdaffe9fff6ffe300250021ffff0024ffd7ffe0",
            INIT_4A => X"fff50000ffe10000ffebffecfffe001d0002fff2fffbfffefff3ffdffffbfff3",
            INIT_4B => X"00160029001500180017ffdeffe7ffde0015000500370022fff900010011ffef",
            INIT_4C => X"ffd8ffe4fff6000bfff4001200080001ffdaffe0ffe9001900190001000d0012",
            INIT_4D => X"005f00390026002e00280026fff4000600240009000b00110012fffc00260008",
            INIT_4E => X"ffebffe8fff6ffd0ffb4ffecfff8fff0ffeaffee00190000ffeeffe5000effe1",
            INIT_4F => X"fffdffe50022002effe7ffe7ffd8ffbfffe6ffe8ffd8001c002afff6ffefffde",
            INIT_50 => X"ffc1ffdcffd8fff800400042fffeffeaffd1fff2ffee0004ffd3ffeafff70040",
            INIT_51 => X"0019000a0017ffe5fffdfffefff6fff6fffaffdbffbf004cfffeffd20000001e",
            INIT_52 => X"00170005ffe5fff1fff0000d000800010005000affff000e0013002200050005",
            INIT_53 => X"0007fff8fff3ffddffd8ffcdfffaffee0009ffebfff400040006001900210030",
            INIT_54 => X"0008000f001f0001ffdefff3fffcfff6fff4000dffe6fff6ffe70012ffdbffee",
            INIT_55 => X"ffd4ffb0ffe5fff4fff4000c0018ffe300020017fffb0011002f0018fff90012",
            INIT_56 => X"fff70001ffedffdffff6000affe3ffe8ffe8001afff6ffebff9bff9affb9ff78",
            INIT_57 => X"ff87ffc600180019ffeaffe00006fffc0026001b000e0002ffb3ffdc000affc1",
            INIT_58 => X"ffcc0011ffe9ffd6000affee000000270014ffef002b002c000a00290022ffff",
            INIT_59 => X"00390027fff6000c0017fff6ffef0008ffebfff9fff5ffe0fffdfff2fff3000c",
            INIT_5A => X"00200001fff4001b00380026001a0019fff4ffe4fff6ffb8ffc9ffeeffcafff0",
            INIT_5B => X"0003000100110005fffffff7ffe9000cfff9fffe00010009fffdffdcffc3ffc7",
            INIT_5C => X"ffdafff1000e000a000bffed001effd0ffdd002fffd8ffe3fffafff4ffe10005",
            INIT_5D => X"fffdfff100200010ffc8000d00220028ffe3fffaffff0006000300020003fff2",
            INIT_5E => X"ffe9003f000efff200130012fff0fff0fff5000d000f001bfff10019000efffa",
            INIT_5F => X"ffccffe2ffc4ffb4ffe0ffbb0004ffb0ffc2001e0014001100000011ffe40002",
            INIT_60 => X"fffaffce002c004a004c0007ffdaffedfffcffbbffdafffbffe700000017000d",
            INIT_61 => X"000b000f002300190004fff8001c00220004fff8fff9fff200000007fff7fff9",
            INIT_62 => X"0019000b000000070008001a0000fff7fffc00050007fff500000022ffef0020",
            INIT_63 => X"fff7fffd0013000d000800200019000bfff30010ffd9ffeb00030030fff10021",
            INIT_64 => X"004200000011000dffdbfff5ffe10017ffed000efffa002600290000000effef",
            INIT_65 => X"0026fff6ffe3fffcffebffccffe800000009000600210005001d0000ffe60019",
            INIT_66 => X"0008ffd9fffb003affe8fff40021ffcc0007002cffff0029fffbffecffffffe6",
            INIT_67 => X"0001000effec000e00140006000c0021001b0032000e001b000200100023ffce",
            INIT_68 => X"ffedfff5ffe3fffc0010000e0001fffafff0fffd0015000e003600160032000e",
            INIT_69 => X"00200020002f0011001affdd0011000c0015001c0042ffe8001500070018003b",
            INIT_6A => X"0007ffd6ffea000b001cffda00150010000f0029ffe800080027ffcdffd8ffeb",
            INIT_6B => X"ffe7ffe4ffeeffb8ffc7ffe7ffeafff9ffd5ffafffb9ffb5fffefff2fffc0022",
            INIT_6C => X"003afff50012fff1ffe50011fff90015ffecfffb0002ffe800090011ffc80001",
            INIT_6D => X"003effee000b00180009fff700020006000b000dffe9000d001a0009fffe001a",
            INIT_6E => X"000300290013ffe5ffa8000effb7fff1ffe7ffc0ffe2ffcfffeafff4fffbffc9",
            INIT_6F => X"fff2000ffffaffc2ffbbffdefffaffd5ffd8ffccffe3fffd0012ffecffdfffbf",
            INIT_70 => X"fff0ffc0ff9afffbff97ffa5ffc9fff00000001effeaffea0001fff2ffd7ffbf",
            INIT_71 => X"ffccffeaffe7ffbbffabffa9ffcaff82ffd7ffd10000001afff0ffabffe1ffd9",
            INIT_72 => X"fffdffe6fffffffc0024ffe100000000ffddffcf001c000e0018001b00020014",
            INIT_73 => X"00030013ffdfffd7000f0045003000170036003efffaffe3ffed000e00330033",
            INIT_74 => X"001100350014ffe0ffedffedffe2ffef0002ffe9000b0007ffeb0001000effef",
            INIT_75 => X"fff7001bffe2ffe30015ffddffcaffe50008001dffec0024003200160031001a",
            INIT_76 => X"fff3002b0013ffe70000001600060005fff3fff0000000150039000000210043",
            INIT_77 => X"fff8001a0038ffdbffd2ffdeffeeffb0ffd1002fffb6ff9e00080000002c0030",
            INIT_78 => X"00040031000c000d0011ff97ff95ffc3ffc5ff90ff7600220004ffcd00080015",
            INIT_79 => X"003200150031000d0004ffe3ffcffff4000c00440011002b001afffbfff4001f",
            INIT_7A => X"00130013ffefffe10002fff3000100000000ffe6ffceff9affd0ffbcffa7ffea",
            INIT_7B => X"ffe0fff60004ffeaffca000bffde00030002fffeffe1ffeefffbfff1ffe40011",
            INIT_7C => X"0016ffe20005fffafff1ffd8ffc90004fff0ffe5ffd6ffdaffe5000f002d002e",
            INIT_7D => X"001f001c00200025fffcfffd0014ffddffca000effec00050022fffb0014fffb",
            INIT_7E => X"0017ffdf0029000f00180012000effe30019ffe4fffa0000ffdffff7ffe9ffee",
            INIT_7F => X"000cffedffe0fff3ffedffff00020011002400150013ffe9ffcb001cfff1fff9",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"0004000c001a0005fff900370017001c0026001f000a0004ffe30009002efff8",
            INIT_01 => X"0001001efff900040009fffefff1ffccffecffc7ffdfffd6000afff20019002a",
            INIT_02 => X"00210021001c000800240007ffdaffeaffd60010ffdaffe60000ffe1fffd000a",
            INIT_03 => X"ffe6ffcaffd7fffbffd6ffc4ffe1fff3ffdafffeffea000d001900000013000d",
            INIT_04 => X"0038001700330004002cffd100040004fff400000047fffb001d00120011001c",
            INIT_05 => X"00060029fffcffec001e0011000400110012fff700110019000d000e00160015",
            INIT_06 => X"fff50004000bfffdfff20009fff7fff1fff0000c0008001a0011001b00150009",
            INIT_07 => X"001efff10018fff5fffd0021ffe5ffdb0063003d0047002d004c0069005b0022",
            INIT_08 => X"0011fffaffd9ffbdffeeffbfffdc0004ffdefff9fff60005fff300050016001c",
            INIT_09 => X"0014003c00240001fffbfffe0022fff9fffa002f0028000c0011000b00140002",
            INIT_0A => X"0001001affdefff2002300070000fff900110026001500410021000300140014",
            INIT_0B => X"00110012000effea000dfff0fffaffeffff500060000ffed000f00060027001a",
            INIT_0C => X"ffff0008fff0fff3000efff300140016fffe0008fffeffd7ffcefff6ffebffdd",
            INIT_0D => X"ffc0ffc0ffff004b001900340047000c002000070000fffcfff1001f0009ffda",
            INIT_0E => X"ffea002d00050026002c0024003dfffefff5ffe6004a0005003c000c00000006",
            INIT_0F => X"0032001dffea0000fffbffd1ffd4ffe7fff3ffd800020016ffc3fff6fffdffe8",
            INIT_10 => X"0011000bfffaffd1ffec0002000d001f001b0014000a0001000000240002fffa",
            INIT_11 => X"001affdffff5ffe4001f0037fffeffd9fffa000a0011ffecfff7fffb0006001e",
            INIT_12 => X"fff4001c001fffdffff200070017ffcf000fffe2ffc9ffe1ffa2ffc4ffddffce",
            INIT_13 => X"ffcaffc7fffaffdfffd500020004fff00012ffe6fff2ffd8fff0ffd60000ffd7",
            INIT_14 => X"ffffffe9fffbffecfff9ffe8ffeaff91ff95ffd7ffbfffc6ffda00120003ffff",
            INIT_15 => X"ffddffb9ff9dffe2000e001600160003ffdfffbcffedffcdfff2ffdf0013ffe5",
            INIT_16 => X"0015000c0026001b002a0037ffff000c0024fff80029ffecffe5fffffffffffa",
            INIT_17 => X"fffcfff3fff2001700090005fff2000dfffa0009000f0001001dffe9ffe8fffe",
            INIT_18 => X"0007000a000cffefffebfffeffa5ffc4ffdcfff3ffdfffd9fffbffe8fffcfff2",
            INIT_19 => X"ffe9ffff001600110019000c00070029ffe2001cffffffc6ffeaffd2ffdb0024",
            INIT_1A => X"001000290003000000140025003300200031001efffffff7ffec0018fffdffdd",
            INIT_1B => X"fffdffe90001ffb9fff4ffd1ffc6ffe7fff1ffb20017ffdc0027002e00250011",
            INIT_1C => X"fff2fff9002f001c0004ffe9ffd2ffb1ffe8ffef0013ffe4000b001700110003",
            INIT_1D => X"000500190002001b000d00190015000cffeeffe2fff3ffaaffcdffdcfff1ffee",
            INIT_1E => X"fff5fff1fff400020005fff7fffc0010000d000f0001ffe7ffe90009ffe6ffe1",
            INIT_1F => X"fff2ffe5000f001a00360005002d002a001100360016005f0012ffe500170015",
            INIT_20 => X"ffe8ffe6000d0014002b00250005001e0031fff40001fff90010ffb1ffac0002",
            INIT_21 => X"ffd0ffe8001affc9ffe7fff6ffeaffcbffd1ffe4ffea000b0025000c0027fff5",
            INIT_22 => X"0019000000360009003a002c000a000dffde0008ffd6ffa9fff9ffefffcdfff6",
            INIT_23 => X"fff4ffbeffccffdeffeeffeaffdb0008fff1ffe6ffeeffe30011ffd6fffa0013",
            INIT_24 => X"fff6ffdffff7fff4fff5001dfff2ffbbfffbffcaffd3ffd0ffd1ffeafff3fff7",
            INIT_25 => X"00160003fffa00110020001c0011ffeb0059001f000d002ffffbfff2ffaaffdb",
            INIT_26 => X"ffe6ffc7fffd00020002ffdcffdffff7000a0000fff100070011000100230002",
            INIT_27 => X"0042fff500030048fff9ffc50016ffbffffaffd6ffe4fff2ffefffec00100007",
            INIT_28 => X"00110024ffdfffc0ffd1fff5ffebffc70011ffe3000bffed000c0015fff00002",
            INIT_29 => X"0010000100020021fff1fffe0003fffefff9fff9fffd0007ffe6fffb00230004",
            INIT_2A => X"fffe0020001bfffcffeeffe8ffecfffb0013ffffffe60013000700130036ffee",
            INIT_2B => X"ffd70018fff20000fff5000e000e002dfff90034002cffd40014002fffd9ffcc",
            INIT_2C => X"ffe9003700200012002f00130006002e00060004ffedfffbfff3002e0025fffc",
            INIT_2D => X"fff9000c0007ffc4ffdcffd10004ffe700160000001e00200012ffe0ffd3000d",
            INIT_2E => X"fffdffceffe00020ffe9ffbaffd3001affe7ffe7fffa0004fff50033ffeb0014",
            INIT_2F => X"0019001100070012000a00010004fff0000cfffc000c0016001300190023fffc",
            INIT_30 => X"ffecfff6ffe9ffebfff6ffdffff900100003fff4fff60015fff60003001dffb2",
            INIT_31 => X"00020010ffdfffedffeb0017fffa0009ffff00370018fffe001f002800010009",
            INIT_32 => X"ffe9000dfff8ffd2ffd4ffcfffd40009002c00060024004d00000000fffefffd",
            INIT_33 => X"00230010ffdd0034001efff40003000f0023fff00012000900090000000effe1",
            INIT_34 => X"00020020fff2fff0000c001a0007000300130024fff300350025000200120000",
            INIT_35 => X"ffd9ffae00140016ffb300360031ffae000a004600030013fff400210006ffed",
            INIT_36 => X"fffafff1ffdaffe3fffc0000ffc9fffb000bfff6001d000000000009fff8ffe8",
            INIT_37 => X"fff7fff60015ffd1ffdeffbb00190015ffc100200006ff9b0005003900040007",
            INIT_38 => X"ffdb0036000bfffa002b0039ffef0000fff5001cfff200090020000dfffc0012",
            INIT_39 => X"fffa004a004a001900450052ffc2fffb0016ffc6fff4002dffdf0026001dffda",
            INIT_3A => X"0017001700390005ffe9ffffffce00140005000a00170027ffe2ffda002cfff2",
            INIT_3B => X"ffd2002a0000ffd40037ffefffdb002cfff1ffd1003f0000ffd9002fffcfffd0",
            INIT_3C => X"0010fff6ffc9002cfff5ffe5ffee00180006ffcc000e002dffe1ffe8002b0002",
            INIT_3D => X"ffe2ffcc00300002ffdc001c0003ffac003f003100010015001a00070019fff1",
            INIT_3E => X"000dffd4000dfffd000a0015fff4ffdefffb0001ff9ffff20033ffd00023004b",
            INIT_3F => X"ffb6000c003ffffafff3fff7ffe9fff800050014fff50012ffe9001cfffe000f",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00160015fff3fff8ffe3ffcdfff6000bffcbfffc001cffe8ffef001a002bfff5",
            INIT_41 => X"ffeb0023ffe9ffdd0050000affccffdcffff003bffc80000002effc1fff60015",
            INIT_42 => X"00140002fff6ffe40001ffe80005fff1ffea0023000a0027002ffffcffed0003",
            INIT_43 => X"ffe4ffcaffe9fff0fff7000dffc6ffd200330016fff9ffcfffcd00160020ffc9",
            INIT_44 => X"ffbb002dffcbffeefff3ffc7ffae0015ffc7ffc0005f0025fff30033fffbffe8",
            INIT_45 => X"0010fff6ffefffe7fff3ffd600370008fff2000d0000ffea00050007ffecffe8",
            INIT_46 => X"00110052ffc9fff00011ffceffed001b000e001cffed001ffffbffd30004ffff",
            INIT_47 => X"ffd4000effc0ffd60028fffcfff50015fffdffc1000f0001000afffcffef0000",
            INIT_48 => X"ffeb000bfffeffedffeb002affe1ffdbfff3ffe9ffbeffd90031ffe30009000b",
            INIT_49 => X"ffe8ffceffe4ffe1ffcd0002ffe90026004c00130008001f000affed00030005",
            INIT_4A => X"00070004ffe0ffe0ffd2ffddffc60031fff3fffb002b0003fff700210027000d",
            INIT_4B => X"00080029000f00430051004b003d0014fff90010fff000090012000bffdd0008",
            INIT_4C => X"fffbffc7ffccffe1ffe5000800050006000c0021fff100010003000afff6fffc",
            INIT_4D => X"0002fff4000b0008fff6fffe0018ffed0017000ffff500060015fff900110003",
            INIT_4E => X"fffeffe80013000c003e001100220002ffd20036fffbffdcfff4fffbffc40014",
            INIT_4F => X"ffd9ffc700000001ffff000800040016004b0070004d000f004a003effee0015",
            INIT_50 => X"0033ffec000b00020026fffc001900270007001e001bffd3ffdb002e0007fffa",
            INIT_51 => X"002efff8ffd8000c002dfffb000600000004ffe60000ffd6ffe0ffb1fff6fff2",
            INIT_52 => X"ffd8ffb30039fff8ffe20017000e000effdffff8001dffd1ffe8ffc4fff1ffe0",
            INIT_53 => X"000fffe6fff70016ffbfffdf0001001effe1ffe70033fffeffe700110031ffec",
            INIT_54 => X"ffff0019fffbfffb0014001f001c001c000fffbdffc00039ffc9ffee00290008",
            INIT_55 => X"0008fff6ffa8ffa3ffcbffbdffaaff9f0003ffe20008001100310041000f0020",
            INIT_56 => X"000c0015001f000effdaff7dffb0ff9cffbeffeefff4fffeffff00410033001b",
            INIT_57 => X"0018001f00100007ffe80005fff4ffe9fff9fff4fff90000fffd0018001efff6",
            INIT_58 => X"000300010009ffd9ffe3ffe30009ffebffddffde003dffe100000020ffdffff9",
            INIT_59 => X"000dfff1fffa0015ffe9fffe000cffeb00150022ffcfffd7fff8fff9fff00012",
            INIT_5A => X"0011fffb000800100009ffff0004000bffc50008fff8fff0002d000c00080017",
            INIT_5B => X"001f0021000b000d001dffbfffe6001effd100030017ffe30013000b0033002c",
            INIT_5C => X"001500110028fff40018fff9000f0016000c000bffe50024fff900030028000c",
            INIT_5D => X"ffc7002b0044000200340048001700550039ffdeffdafffc0000ffef0003001e",
            INIT_5E => X"00030024fffc002dfff3fffa0022fffafff2001bfff1001e0024fff60014000e",
            INIT_5F => X"000c0019000b001c0003001affdf001cfffbffe3fff1000fffd900040000ffee",
            INIT_60 => X"002a0018fff500070003fff8000bfff4002dffe400260003fff0001e0007000b",
            INIT_61 => X"0004ffdb000c00110003001afff40015000affb2000bffeffff8ffd9ffec0029",
            INIT_62 => X"0001ffc6ffd60016fff9ffef0034003a00290009ffe000120017ffd500060015",
            INIT_63 => X"ffe700070025ffff00110014000d001c0015fff9fff80001fff1ffe8001a0006",
            INIT_64 => X"000c000c000f000b002bffef00090006fffafff7000bffee0002fffd00000016",
            INIT_65 => X"ffe000170004fff40014fff8ffecfff2fff00002ffe500100011ffe600000004",
            INIT_66 => X"000ffff6fff90006ffe7ffe9ffe9ffeffff9ffdffffc0032fffb00120016001f",
            INIT_67 => X"003cfff0ffccffe8ffe1ffe6ffd10009ffe0ffbdfffaffee0035001200130052",
            INIT_68 => X"00530032001e0038ffd90022fffffff500020039ffddfff7ffe80010001efff5",
            INIT_69 => X"00150000fff5ffdafff5fff4ffe9ffef002000160021002c0005ffff0045fff9",
            INIT_6A => X"0015002affe7ffefffee000fffde0007ffc0ffe80015ffa400190028ffc50036",
            INIT_6B => X"ffe10022ffeeffeb0013ffe2ffbdffff0003ffeeffc5ffde0033ffab00090025",
            INIT_6C => X"ffeeffe1ffd1fff3ffddffd7ffbcffb1ffb2fff0ffaeff97001c0001000b0000",
            INIT_6D => X"fff4ffe2001e0018000c0001fff7fff2001d0011ffdf0027fff8fffeffed0005",
            INIT_6E => X"fffeffe7ffdd0002ffecffcdfff90023fff7ffe30020ffe7ffef000d0009ffee",
            INIT_6F => X"ffe4ffe9ffd4fff2000200340010000b0013fff7ffedfffc0014000800170028",
            INIT_70 => X"0004000800250034000b002b003c0017002f0003ffd30025002000250012fffc",
            INIT_71 => X"000effea0012002700160013ffdffff9ffedfffcffd1ffe3ffe700020016001b",
            INIT_72 => X"0012000b000f0013000a000b0001000700210026001b0006001a002e000effb9",
            INIT_73 => X"fff70018ffd70015000bfff30003002effd3ffc4fff2ffc3fff0ffefffaeffab",
            INIT_74 => X"ffc7ffc7000900280003003000270010001dfffd0025ffeaffd8002d0007ffca",
            INIT_75 => X"000f0000ffed0010fff6fffd0009fffeffe1fffb0008ffec0003fffdfffa0016",
            INIT_76 => X"0060004800000015002b000bffd7ffe00004ffb8ffbcffe5ffd6ffee00080015",
            INIT_77 => X"fff8ffd400060009ffea0006fff0000900120003001a0002fffb00220007fff1",
            INIT_78 => X"ffff0009ffe80008ffecfff8000000130019ffeb002a0001ffe9ffbeffe40036",
            INIT_79 => X"001effeb00170037004200130047004d0011004100280028000effe800450018",
            INIT_7A => X"0008fff9001700220038004b001a004a0037003e0017002e002e001f0026002c",
            INIT_7B => X"0021003e0035ffe7fffcffff002f00160010ffc9fffcffe6fff50004000bfff0",
            INIT_7C => X"000b000bffc8ffdaffc7fff0fff3fff0000a00090000ffd9ffdf000000120003",
            INIT_7D => X"00190023002e0018fff20013fff7ffeafff9000a00000026ffd1fff1fff0ffea",
            INIT_7E => X"0008001b000e001dffe4ffd500210006ffe90027fff9fffb0022fff6fffbfff0",
            INIT_7F => X"0000ffecffdfffe1fff1ffd8fff8fff4ffbaffbbffc9fffc002a0029fffc0024",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"fff100070023000bffdbffc7ffe200340011fff50022000d0006ffef0000ffc3",
            INIT_01 => X"000000080029fff1000afff40017002bfffe0019fff6ffebfff5fffe0000000a",
            INIT_02 => X"0007ffdafff5ffdcfff70012ffc4000efffdfffb0004fffd0007ffe00011ffed",
            INIT_03 => X"0000ffd2ffe0ffefffebffdbfff00006ffee0018ffe7ffefffdc0024fff8fffb",
            INIT_04 => X"000e0017000dffe4ffddffcc00330023000cfffdfffcfff1ffcbfff3ffe1fff9",
            INIT_05 => X"ffd4ffcc000efff9ffe9fff9000b002c003d00400012001200530049ffe5ffec",
            INIT_06 => X"002fffdc0018ffebffd8ffd8ffd7ffe3000cfffd0003000cfff6fffffffdffe2",
            INIT_07 => X"ffdfffebfff100240031ffddffda001affeafff3fff1fff80039001afff80039",
            INIT_08 => X"00570015ffe40029ffe7ffe0ffcaffc6ffdcfffeffd5ffe6ffdaffdbfff6ffd5",
            INIT_09 => X"fff100050000ffee0006ffff0004001bfffa0012ffff000affee00090000ffee",
            INIT_0A => X"000400130024002200100009000d0013fff9fff8ffd4fffe0014001300220036",
            INIT_0B => X"0036003d00000021fff40029004c0027005600650051ffffffddfff70012fff9",
            INIT_0C => X"ffd6ffc3fffd0018fffc0014fff90052006c0033004400400057002f00480042",
            INIT_0D => X"ffdd00110000ff83ff98ffb90008001600140000ffcaffafffc2ffc5ffe0fffb",
            INIT_0E => X"ffe1ffe5002cffd6fff3000c00100010000a0017000effebfff9001300030019",
            INIT_0F => X"0020fff60005fff80001fff8000cfffbfff8ffda001b00090023000d000d001e",
            INIT_10 => X"001400040001001200200027fffdfff4ffdfffc30000ffe3000e00290017ffee",
            INIT_11 => X"001effdbffcb0004ffe7ffff0003ffe3fff0ffc6fff0fff100160013001f0027",
            INIT_12 => X"0023ffcaffcefffbff8cffbaffd4fff7000d001affe00013000bffefffeafff2",
            INIT_13 => X"003600470040000b00280009fffd0000ffde0032001c0006fffafffeffe7ffe6",
            INIT_14 => X"0006000d00380042004bfffb0006fff5ffb8ffa1ffe5001100300023fff60018",
            INIT_15 => X"0013ffe9ffbfffc800100014001cfff2fffbfffcffd5ffa1ffde002a00390018",
            INIT_16 => X"fff500120018ffbdffd7ffe7ffff00040014fffcfff6fffafff6fffeffe80027",
            INIT_17 => X"00330044fff0000f0000ff9dff96ffc1ffeeffebffccffdcffd6000000120006",
            INIT_18 => X"000f0000fff0fffd001affeb001b0003ffeefff2000e000afff6ffe70001fff2",
            INIT_19 => X"0004fff4ffe10001fff7000cffddfff40012fff9ffe7ffeeffeaffdcffc7fff6",
            INIT_1A => X"0001ffe0ffc6ffe6002100010005fffaffccfffcffd3000b001bfff2000f0016",
            INIT_1B => X"0020ffeaffeeffe3ffc7ffcaffcd001c00250021fff200110005fff10014ffec",
            INIT_1C => X"ffef00030005fffe000e00010012000e001affe5ffecffeeffe5ffdbffeafff7",
            INIT_1D => X"ffe3ffd300000045003d001400510070fff7fff30015fffe0011fffeffe60047",
            INIT_1E => X"0029ffd900290013003e003bfffc002000440045ffdb0021ffff000700010002",
            INIT_1F => X"000c000300130029001e0012ffe6000effe7fff70008ffddfff10005000c0001",
            INIT_20 => X"0000fff8ffebfff9fff6000b000c0019001000310021000afff60001fffaffdb",
            INIT_21 => X"0008fff0ffe2fff50010fff600010025ffeefffaffeb000a001a00070000000a",
            INIT_22 => X"ffc9ffb8ffcc000500020019001400250007fff7001dffcefff4fff2fff40017",
            INIT_23 => X"fffaffdf0020002a0007000bffe2ffeb0006000500110028fffefffb0000000f",
            INIT_24 => X"0020002e001a0026000e0031fffd0018ffceffd50019ffd7ffd7004f00360034",
            INIT_25 => X"fff2fffaffd7ffe3ffe6ffd9004c0024002bffdcffdcffd2ffe6ffe5fff70005",
            INIT_26 => X"00240003000c0016000b0028001a0016000900330016ffe8fff1ffeb0010fffe",
            INIT_27 => X"ffde00030000001a0009ffdf0004ffe4ffebffd1001e001ffff1fff8ffe4fff7",
            INIT_28 => X"0008fffdffe900000017fffdffd9ffccffe600080000001900280031002b000c",
            INIT_29 => X"0023ffec00050005ffeb0001ffec0003000b004300580012002f0047ffe2ffd8",
            INIT_2A => X"0011000affe4fff7ffff0004000d001500090010fffcffe6fffeffffffe5ffff",
            INIT_2B => X"002a000d001dffe4ffd9ffcffff5000400070029001b00220029002efffbfff5",
            INIT_2C => X"0051003effda001e0017fff1fffb0012fff10004000a001a0009002a000d0000",
            INIT_2D => X"ffecffe6ffeeffe4002300260016ffe7ffddffeb0003ffe50000001e00240005",
            INIT_2E => X"fffbffff0008ffecfff6fffb0008fff0000ffffafffb00060000fff0ffe00000",
            INIT_2F => X"00040004ffe80006fff7ffef0000ffecfff7ffff0010ffebfff2fffc0012000d",
            INIT_30 => X"001afff6ffe8ffe8000c00020006001efffdfffb000cffeffff9001a0000000b",
            INIT_31 => X"fff50007fff8fffefff1ffedfff5ffe90007ffdaffe5ffecffe4ffebffe9ffe4",
            INIT_32 => X"ffe5000d00070000000c0008000b0000ffedfff2ffeafff6ffe8fffffffbffdf",
            INIT_33 => X"00140006ffe3ffe5ffebffeb000bffedffedfff0ffee0008ffe7ffeafffb0004",
            INIT_34 => X"fff8ffec0000ffe8fff3ffedfffaffe8fff3fff2fff3ffebffedfff50004ffe6",
            INIT_35 => X"000affeeffedffe2ffeeffefffe1ffdf000000060009fff0ffec00050001ffe5",
            INIT_36 => X"0008ffebffdc000afff0fff8fffbffeb0001000affe30004ffe800000001fff0",
            INIT_37 => X"ffe6fffbffeefffafff4fff60005000dfffdffddffd9fff4fffe00010000000c",
            INIT_38 => X"ffe5fff8fff5fffc0003fff1fff0fff1000b000c0000ffe5ffe1fffffffe0000",
            INIT_39 => X"ffecffee0003fff0000fffe70008fff50006ffec0000ffe4000d000afffa0007",
            INIT_3A => X"ffe3ffe1ffe9ffeaffe8ffeefffaffe20001ffdf00050005fff0fffcfff5ffe4",
            INIT_3B => X"00030003ffecffe5000affffffe7ffeafff6ffe6ffffffe9ffe9fff4ffe6000d",
            INIT_3C => X"fff8ffe7ffedfff500080000ffe9ffeffffb0007ffecffe9ffe70004ffeefffc",
            INIT_3D => X"0001ffedfffcffffffe9000a0007fffcffe200020002fff7fff3fff5000e0002",
            INIT_3E => X"ffe7000200010008ffe2fffb0000fff80005ffeffff70000fffafff2ffea000a",
            INIT_3F => X"00020000ffedffec00090009fffb000afff2fffc0008fff9fff1ffff00160008",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fff6ffec00000008ffe80007000a000bffebffeffff2ffd30014fff8ffed0015",
            INIT_41 => X"0001ffdb0018000a000a003c00310010002f0037002bffdb000bffd8ffc1ffe5",
            INIT_42 => X"ffb8ffd8ffb6ffc7fffcfff9001c001a003b004d002300550030fffa00220017",
            INIT_43 => X"ffea000afffbfff0ffdefffd0021001b0017ffd8ffd2fff1ffe2ffcbffe6fffc",
            INIT_44 => X"ffe7ffed0016fffffff8000b000b0005002a000d0023fff3001afff2ffb9ff95",
            INIT_45 => X"ffb0000200000014ffc900170000fff4fffe0003fff4ffe20008fff6ffdaffdf",
            INIT_46 => X"ffd1ffcbffcefff700100000fffb000cfff9ffc4ffea001d0013000ffff1ffe9",
            INIT_47 => X"0010000effe300020014ffcc0006fffcfffb000f000f001500160022001b0011",
            INIT_48 => X"0019ffd900010000ffa8ffabffd0fff2000bffd000100030000c002100440035",
            INIT_49 => X"ffe90001000dfff90007001a00020021001400060019001fffefffeffff4ffb7",
            INIT_4A => X"ffdfffe9ffd6ffedffbdffc1ffb6ffc1ffd50002ffe2000e000e00050004fff0",
            INIT_4B => X"000800050019000effe3ffeeffd60027fff5ffdc003b0019fff8fffcfff0ffe6",
            INIT_4C => X"00150015ffeb002300190006001000220015ffee0005000affd4ffccffdd001d",
            INIT_4D => X"00160027ffdafffc0007ff9dffbdffe5ffec0032ffeeffd0ffccffd9fffbff9a",
            INIT_4E => X"ffce0015000500180020001efffd0027001f0007ffe700010023fff2fffd0015",
            INIT_4F => X"fff800150017000a00090003ffe3ffee000c000effe0fffbffe6ffff0009ffc1",
            INIT_50 => X"ffb8ffccffc5ffc9ffecffdefff20017ffebfff70001ffbeffd5fffb0007000b",
            INIT_51 => X"000500190021ffed003900350012fff3000b001a00040017002fffd8fffcfff7",
            INIT_52 => X"fffe000c000f000d000100120024fffffffbfff7ffe9fff5ffc9ff98ffd0ffb9",
            INIT_53 => X"ff8affdefff00009000c00330035004e00430055002600260059002600340043",
            INIT_54 => X"0031002c00180008fffdffecffe2002a0026ffe600310018fffa000a0008ffe6",
            INIT_55 => X"001b001b000f002c00280022ffefffe4ffcdfffefff7ffed00250000ffffffdf",
            INIT_56 => X"0000ffe0ffeefffdffedffc7ffd9fff00039000affff001afff4fffcfffbfff6",
            INIT_57 => X"0000ffe8ffdeffee0023fff6ffeb001efffcfffd001600060010001bffedffe1",
            INIT_58 => X"ffecfff1fff1fff0fffc0020fff90023001b002c00060022ffedfff700000018",
            INIT_59 => X"000b0013001500280003fffcffccffe7001affcfffe1ffebffcfffe1000efffd",
            INIT_5A => X"000a00040022000000170034fff9fffffffeffe5001200180012000b0006000a",
            INIT_5B => X"0006ffe3ffed002affabffdbffe2ffd3ffd20018fff5ffe300510009ffd7001a",
            INIT_5C => X"fff3ffd2ffd1ffccffbbffe5ffdcfffaffeafff0fff5ffdcfff10014ffddffea",
            INIT_5D => X"0017fff0fff50016ffe0000d000cffe700090022ffdbffe80007ffc9ffe10006",
            INIT_5E => X"ffe9000a001dffe900000022ffee0000000500340002ffe000350005fff10011",
            INIT_5F => X"fff1fff9fff80016fff5001600030004003600450020003f006f001d005a0045",
            INIT_60 => X"00350001ffe2fff2ffe1ffe5fffbffd2ffaeffd30008fffcfff40031fffaffd5",
            INIT_61 => X"0034fff9ffe0ffdaffe70014ffdbffe0fffeffe1fff2001b003500490017007b",
            INIT_62 => X"005b0038006900270036ffd6ffdc0011fffe0005ffe8ffe5ffe6000fffe6ffef",
            INIT_63 => X"0012ffe7001c0022ffecfff10016fff70000fff1001effe5fff10035fffbffc8",
            INIT_64 => X"0014fff700040016fff90000ffe100000008003f001effbdffd7fff90026fff0",
            INIT_65 => X"ffd8fff9001a0001ffd8000a000a0021ffefffec0009ffd4ffdf0001ffd1fff0",
            INIT_66 => X"0010ffcafff6fff0001a000c0028000ffffc0028fffe0006ffd8ffe90019000b",
            INIT_67 => X"fff7000e0014001800230015ffb0ffd60003ffd7ffe6ffd4fff0fff8ffd5ffcc",
            INIT_68 => X"ffcbffc2ffd80002ffe2ffeaffd10006003100330035ffdffff70033ffd9fff8",
            INIT_69 => X"0023ffe5fff9ffd3ffd0fff2ffc1fffcfff4fff9000f0016000dffc5ffdd0044",
            INIT_6A => X"ffd9ffe30020ffdbffebfff1fff0ffc200010010ffddfff0ffd7ffceffeaffdd",
            INIT_6B => X"ff9ffffe0003ffcbffc5ffe2ffccfff90001ffdffffaffe8fffa0002ffbe0022",
            INIT_6C => X"0048ffd9ffdf0003fff8ffddffe4ffd2fff4ffd7fffaffdaff9c00170016ffcd",
            INIT_6D => X"00070036fff8ffc400050030ffd0000b002bfff3000e000bffb4fff20028fffc",
            INIT_6E => X"fff1fff70006003800390069004e003c005500660023ffe0fffa0000ffdaffc4",
            INIT_6F => X"ffb1ffdbffcaffaaffdfffd6fff9fffcfff2ffb4fffafffdffd00004000dfffc",
            INIT_70 => X"fff7ffeaffe4fffb0018ffdbfff1ffeffff2ffe5ffdcffeb00130047ffe40001",
            INIT_71 => X"002e003dffd0ffee0023ffd5ffdb001cfff0000bfff2ffde000b00270007ffd6",
            INIT_72 => X"00030021ffe9000cffe9fff9000affdfffe10015ffe9fff2fffbfff7fff5ffe6",
            INIT_73 => X"ffed00070032ffd1ffe7fffcffd6ffe3fffbffdc000effd7ffd600140028fff8",
            INIT_74 => X"000e003a000300110029ffd8ffcbffecffeafff40007ffef00170043ffdcffcc",
            INIT_75 => X"00050004ffe1ffe2000cffefffd2001400240012000afff900110021001a0023",
            INIT_76 => X"0012fffcfffc000c0014fff0fff0fff2001900360037fff1000300130009fff2",
            INIT_77 => X"fffc000fffce0015000afffc0041fffbffe6fffb0009ffd6fff8ffd20010002c",
            INIT_78 => X"0011000c0023003affd5fffe0031001effdcfffc0034ffc9fff600060019000c",
            INIT_79 => X"00000008fff9fff30001ffdafffa0010ffc40000000e0006fffaffffffe0ffeb",
            INIT_7A => X"ffe00000fff50007001ffff4000d0013000a002a0007fff10015fff7fff90006",
            INIT_7B => X"0036000afff0ffecffffffc4ffb7fff0ffe5ffedfff1001cffeb001d00070017",
            INIT_7C => X"001cfff60024fffcffd2fff1fffdffddffe7ffc4ffdbffa80000ffea0010fff8",
            INIT_7D => X"ffe5ffebffd0ffd9ffd3fff30007ffdd000bfff40000000100060019fffbffd4",
            INIT_7E => X"ffef0007fff0ffddffccffcdffb70007ffdaffd9ffe1ffe3ffc4ffe4ffebfff1",
            INIT_7F => X"ffcdffa4ffbdff93ffc8ffe0ffdf0006ffdb001f0011ffe7002d0004fffa0010",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"000a000a0010004a0048000d0066005b005300900038ffeefff30007ffd9ffe0",
            INIT_01 => X"fffcffdeffcafff3ffdbfff1fffdffe7fff00010fff4fffbffeffff9fffbffed",
            INIT_02 => X"ffd00009fffeffecffedffdd001d0000ffe20023fff9fffefff6fffeffed0008",
            INIT_03 => X"ffcaffcd000fffd2ffcfffdaffc8ffff0009003e00120018003bfffbfffeffe9",
            INIT_04 => X"000dfffc00000007ffeb0006000bffed000f0045003b0000ffe2000b0001ffc6",
            INIT_05 => X"ffe7ffdaffd9fff7003affffffe6ffffffcaffddffceffdffff40012fff10025",
            INIT_06 => X"004e0018002a0034003e0002fff50013fff70006ffbfffe3fff3ffe3ffc6fffa",
            INIT_07 => X"0008ffdafff60010fff0001200070037000effec001e000dffdafffc000afff2",
            INIT_08 => X"fff8fffd002400120004001bffe0fffefff50011000a0000fffdfff00022000c",
            INIT_09 => X"00170016ffc4ffbcffdaffd6ffcfffccfff8ffddffeeffc50012001cffa10025",
            INIT_0A => X"0000fff000160010ff76ffa0ffe1ffa5ff7b000b0003ffc10001000f000d001f",
            INIT_0B => X"00000028001600010022002c000400210011ffe2ffe80025ffaaffbefff70039",
            INIT_0C => X"0006fff200280029fff20020001a001e0037ffe5fff9ffe8ffdeffeeffdbffcf",
            INIT_0D => X"ffd60027001c0028ffed00210010ffe8fff9fffb0012001afff90000fff8000f",
            INIT_0E => X"001affe5ffd8000d002c002dffd600170015ffe70013000d0010000f0019ffea",
            INIT_0F => X"002000110000000b0020001b00100002ffff0023fffcffdf00060025fff8002a",
            INIT_10 => X"002effe8fffe0020ffe3ffec000bffe0fff2000fffe0000600030012000c0023",
            INIT_11 => X"ffb6ffdefff6ffc9ffc3ffdaffc400390003fffc00280038fffdfff30023ffc1",
            INIT_12 => X"ffff0005001cfff0ffe7fff7ffd60019fff70011ffeeffe0ffc3ffec0016ffe1",
            INIT_13 => X"ffe70033fffb0005fff9ffc7ffda0035fffaffb70059001cffecffeeffe3ffe1",
            INIT_14 => X"0022ffdfffe8003b0001ffe3fffb00020027fffd000dfffaffd3fff40019ffdf",
            INIT_15 => X"fff3001bffe0ffeb0016ffe8ffe9fff2ffc0ffdfffd50016002affcf0023002a",
            INIT_16 => X"0000ffe40003ffe3000600120004003a00170016ffeb000c0016ffc5000c0013",
            INIT_17 => X"ffb8fff40008fff4fff4000afff2fff1000efff8ffc70025fffeffe2fffeffa8",
            INIT_18 => X"fff3ffecffc1fffe001bffe500200027000c00250009fffa000d00000002fff7",
            INIT_19 => X"ffed002dfff0ffdc004d0016ffeffff000130026ffad000e000dffd4fffd001c",
            INIT_1A => X"0000fff8000400120006fffbfffe0012fff7fff20007fff9fff9fff9ffea0005",
            INIT_1B => X"ffee0003fff1fff8fff6fffe0001fff00006000bfff6fff40000ffff00060000",
            INIT_1C => X"0000ffe80005fff30006ffff000dfffefff2000efff6ffe9fffd0006fff2fff6",
            INIT_1D => X"0007ffeaffeaffefffff0006fffc000afff1000c000cfffafff5ffe9fffbfffa",
            INIT_1E => X"0004ffe7fff20006fff4000600000000fffefff9000bffef0002fff70009ffe7",
            INIT_1F => X"fff2fffb00020012ffecfff4000a0008fff90000ffedfff20001fff100000000",
            INIT_20 => X"000effe7000dffec0000ffec000a000affecfffb0010ffed000ffff5fff3000f",
            INIT_21 => X"000afff4000dfff00011fffbfffffff2fffcffee00000001ffe60000fff80001",
            INIT_22 => X"fff0fff1ffeafff7fffd0007fff80006fffdfff9fffbffebffedffefffefffee",
            INIT_23 => X"fffd0002fff8fffcfff4ffeefff1ffef0009000bffea000ffff2000efffbffec",
            INIT_24 => X"ffebfff300120007000f000dfff40009000d0001fff9ffe8ffebffe900060000",
            INIT_25 => X"ffe7ffe50008000cffed000efff3fff0fff3ffecffe7000affe900060005fff8",
            INIT_26 => X"0003000bfff9000400010006fff9ffecffedfff6fff7ffee000dfff000010005",
            INIT_27 => X"ffecfff4ffef0000fff3ffe9fffc0006ffec0005fffc000affefffecfffdffea",
            INIT_28 => X"fffefffdffe9fffdfff3000afff80009ffe200000001ffe70007fffe0001ffea",
            INIT_29 => X"fff4fff5fffbffee0008fff00003000d000ffffeffef00070005fff0000c000e",
            INIT_2A => X"0015ffedfff3fffbffe4fff0000c000bfff100050012000dffe9fff4fffbffed",
            INIT_2B => X"fff0000bffe8ffeb000f000d000afff000070002000c0007fffcfff30004000d",
            INIT_2C => X"fff00000ffea001000110004000c0015fff7fffdffe4fff5fffcffe6000affff",
            INIT_2D => X"fffe0019001d0032000b00050026fffb001a00240002ffdfffd5fffa0000fff9",
            INIT_2E => X"001100140008fffafff30015fff9fffc002d00130003000f000affe6fffe000f",
            INIT_2F => X"ffce0001fffdfff1ffc7fff4fff7ffe1ffed00040002fffc0000ffd3ffcdfffd",
            INIT_30 => X"fff5ffe6002b0013000500250018ffe700000006000bffec000f002500050007",
            INIT_31 => X"fffbffe6ffbffffd0009ffc2ffa2fffafff3fff700070018001c000dfff80014",
            INIT_32 => X"fff60014002d001f000afff2fff2ffff0003ffdefff4000000010016001a0004",
            INIT_33 => X"0001000b000f000c000f000dffc3ffc6000fffc0ffc2fff4fff30004ffe90008",
            INIT_34 => X"0005ffd8fffb0006ffc5ffe9000e000f00060000000b0005fffa0033fff4ffca",
            INIT_35 => X"0013ffe0fffc0000ffc5ffafffe7ffb4fff0fff1fffafff00020ffe3ffc6fffe",
            INIT_36 => X"ffcaffcf0025003b0000fff3ffe4ffd2fff7ffc8ffc8fff0000b001dffdc0009",
            INIT_37 => X"fffeffef00000008ffd600000011fffafffaffe5ffd7ffe9fff4fff00010000c",
            INIT_38 => X"ffe4fffc0006fff3fff4ffffffef0004ffe5000bffdcffee0029ffbcffe8000a",
            INIT_39 => X"fffa00260004000b0017ffff000dfff8fff600170019004d0012000100340053",
            INIT_3A => X"ffff0010ffe70000000effff0000000bfff5002bfff3ffe7fff7003bffddffe9",
            INIT_3B => X"000effe7ffe4fff6ffebffe60006fffa000cffefffedffd4ffe4ffd0ffecffff",
            INIT_3C => X"ffdbfff00012fffdfff60009002000310018ffe3ffe2ffe8000cfff0ffd20012",
            INIT_3D => X"0023fff100030018fff0001e002400290000ffe30028fff5ffb8001cfff5ffc6",
            INIT_3E => X"ffff0000000600080001fff30000fffe0007002300060013000e00380029ffdc",
            INIT_3F => X"00070010fff8fffd0019fffdffd1ffd9fff2ffbeffafffb9ffd0ffd8ffb7ff99",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"ffc5ffafff86ff9dffe700460026ffb7ffeffffbfff5ffc00001003d00280013",
            INIT_41 => X"000000000023003400100023fffcfff6fffe000300050000fff80000fffdfff8",
            INIT_42 => X"0014000f001e001f00220022000f001cffdcffebfffcffdf0012ffd0fff0000a",
            INIT_43 => X"ffef000affebffedfff3fffc000affedfff5fff9ffeafff1ffe2000affecfff2",
            INIT_44 => X"000c00080001fff8fffc0001fffd0001000400140002fff3000b00000012fffb",
            INIT_45 => X"ffef0015001b00140012000a0002000900120047003700000012001800250014",
            INIT_46 => X"003300070015001600210027002a0010000cfff9ffe50003fffcffed00050014",
            INIT_47 => X"ffd3000c0018ffec00280010ffe60024fff5fffefffe00050009000e0005fffc",
            INIT_48 => X"0016fffa0018ffeaffe70014ffceffecfff9001dfff9fff7000d0001fff3ffec",
            INIT_49 => X"fffb002600130008ffe4fffffff8fff2ffedfff60000fff80014fff900090008",
            INIT_4A => X"fff1fff2fffbffffffff001ffff9fffeffe8000e001bffe6000f0005fffcfffc",
            INIT_4B => X"ffe1fffdfff1ffdc000500190008fff1ff84ffe1ff95ff6dff6eff94ffdeffa3",
            INIT_4C => X"ff84000f0031001d000800320034000efff8fff2fffa001d0001fff800110012",
            INIT_4D => X"000c0002fff1fffaffeefff0001a00080024002b002d0029ffd3ffe4ffdcffb5",
            INIT_4E => X"ffa5ffa7ffaaffa1ffa90000fffb000d00060017001100300027002effe9ffe7",
            INIT_4F => X"ffecfff3fff1fffd0023ffff001c001c001b0014ffeb000cfffefff0fffafff3",
            INIT_50 => X"00090018ffff00000017001500030015000e001500220009000affed0015ffe9",
            INIT_51 => X"0002000e0019001800080027005700480035000b004900220001000e0015ffe6",
            INIT_52 => X"0008ffebffe4ffc70018fff1ffed002300290040001a000c002cffe2ffe4fff2",
            INIT_53 => X"fff600130004003c0026fff9000a0032001ffff10008fff2ffd3ffc9ffd1fff9",
            INIT_54 => X"ffff000fffe40004ffebffe8fff3001b0033002b000a00370021000600170002",
            INIT_55 => X"000600080027fffdfffb001dffdf00010004ffd5001400360009000600150009",
            INIT_56 => X"0017fff70018ffe1fff10021000a000400240007000bffe6ffdbfffe0016ffd7",
            INIT_57 => X"ffe2ffdcffeafff1ffc9fffc0038002cffd10006ffe3ffe300120012ffe6ffe0",
            INIT_58 => X"fff9001efff60007004300060016ffda000d0032ffbeffe50014ffce00040007",
            INIT_59 => X"0013003affd1fffdfff0ff81ffc7fff4ffda00180037003c0003fff1fff00008",
            INIT_5A => X"ffdfffc0ffe4fff7fff3ffbfffedfff7ffd40003ffc9fff1fff00008ffe2ffeb",
            INIT_5B => X"fff3000fffe7fffdffff00000011ffd900060021ffe00009002cfff8fff7002d",
            INIT_5C => X"ffed0018002ffff300020024fff600190023ffe800090009fff7ffe8ffc50017",
            INIT_5D => X"000bffe50008000f000800180006fff1fff7ffb5ffd0ffd0ffb30014fff5ffd0",
            INIT_5E => X"ffe000110015ffe6ffeaffe8ffe3fff30011000c0003002e000bffeafffcfff1",
            INIT_5F => X"000400130007fff7fff0001bffd0fff8ffc10013ffd1fff2fffe001d002dfff7",
            INIT_60 => X"00150016fffbffe80011ffdcffe2fffcffa8ffeaffbaffe5fff4fff30001fffb",
            INIT_61 => X"ffeeffebfff60021fff800090013000800060020ffd700030002ffcffff2fffa",
            INIT_62 => X"fff7fff2000000000010fffdfff60002fff800260014000f00490023fff40018",
            INIT_63 => X"00330059000e000400200000ffedfffa0006ffbfffe90013fffb001700280032",
            INIT_64 => X"003f001100360034fff0002a002dffc9fff3fffeffe2ffe6ffe5fffc00200013",
            INIT_65 => X"ffd8ffdb001affd1ffea0000fff9001e0018ffd00006003efffafff10013fff9",
            INIT_66 => X"002e003b000300380024fff9ffeaffe20004ffd4fff8fff70013ffec000a001f",
            INIT_67 => X"002a000affe3ffffffd9ffc7ffe20005ffdbffedffeffffcffefffd8fffa0010",
            INIT_68 => X"ffe00012003b0018002d0020ffca000c001bffbeffe5001900260028001affef",
            INIT_69 => X"000b0004ffff000c0002000d000100020009ffe8ffd20026fff2fff0fff00025",
            INIT_6A => X"0021ff84ffed0006ff88fff000190031001dfffd0016ffe7ffdc001afff9ffe3",
            INIT_6B => X"0003ffeeffdc0008005000280022001b003e0029001700050004000f0030ffe6",
            INIT_6C => X"0013001bffe1fffb001a0013002e00170014001b0010fffc0026000cffdcffff",
            INIT_6D => X"0038ffd7000ffff5ffd9fffffff6fff2002e0016ffd6fffbfff6002a001c000f",
            INIT_6E => X"001a00250018ffe0ffedfffe0017fff20008ffdfffd70017ffe6fff1ffefffdd",
            INIT_6F => X"fff60004ffc3001a001fffde0024000effe8ffde0012ffe5ffd500020029ffec",
            INIT_70 => X"ffe2ffe9ffeaffffffe3fffdfff6ffe3ffecfffefffeffd0ffef0004ffd8ffc9",
            INIT_71 => X"002f0000fffb000700160022ffb3ffcc00200006ffe5fff70002fff10005ffff",
            INIT_72 => X"000800260009001900190009fff90018ffcdffe400110026ffdaffd6ffd90000",
            INIT_73 => X"0016ffdc001c0006ffc3000a000b0012fff700170029fff8ffd7003300060013",
            INIT_74 => X"001400030010000c0022000efff9000e0002001700000002fff4001fffdcffe4",
            INIT_75 => X"ffe20022003d002efffb00170038fffcfffcfff0000a0037001dfff4003d0006",
            INIT_76 => X"ffe000400007ffd6fff1ffe4ffe4003cffe9ffbb0043ffcffffdffd800000017",
            INIT_77 => X"0010000b001300380004002900000004002cffedfff6001f001affdd0009ffd1",
            INIT_78 => X"ffe6ffcaffbbfff3ffcfffefffcefffb000ffff8ffe9ffec000afff60002ffd9",
            INIT_79 => X"ffe9fff100000006000b001a00150001001c0013000c0007000affe90016000d",
            INIT_7A => X"ffcdffe00009fff30009001a0000000300370017000a0001ffebfffb0012ffdb",
            INIT_7B => X"ffeb00060015000a002a001f0003fffaffe6000ffff900220008fff3ffc6ffe4",
            INIT_7C => X"0018fff700050004ffe90017fff6ffd9ffe6fffcffe30006fffa001300200009",
            INIT_7D => X"00000006fff4000b0020fff9fffcffebffefffe1000e002e0001001b002b000c",
            INIT_7E => X"000dfffe0047002a0010005000060028004b006b0054ffdeffdbffe9ffc8ffd8",
            INIT_7F => X"ffe6ffc7fff2fff1fff90012ffccffed0009ffd3ffc3fff700090008ffd7ffce",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"ffeffff0ffd0ffe0ffe8fffa0007fffe0016fff8ffec0017001f0006fff3ffe4",
            INIT_01 => X"000c00090018fffb00100015ffe9ffe3ffebffe3ffe1001c0030ffe5ffd70005",
            INIT_02 => X"000b000e0002fff6fffe0024ffddfff3ffd1fff9ffecffee0003000d0016fffe",
            INIT_03 => X"00310027000bffe2ffec0013ffe80005ffe9fff7001b001d000e0023fffd0033",
            INIT_04 => X"fff0ffdb000a001c0003ffea0000ffe900010022002200230037003cfffaffd2",
            INIT_05 => X"ffc2ffce0002ffe0ffc1ffd6fff7001800000009fffe00000004004100160020",
            INIT_06 => X"fff9000dffecfff70010000afff7001d0018000d001b00260019001a00170013",
            INIT_07 => X"001100210042ffeeffc2002d0028ffa40028fffffffd0004ffe2ffd0ffefffc0",
            INIT_08 => X"ff8ffff5ffe6ffae003fffb6ffbf0036ffb7ffbe00550009ffacfff7ffec001d",
            INIT_09 => X"000600220009ffeafff20000000a0020fff20006ffff000a0007000e00130024",
            INIT_0A => X"0040003500230009000d0019001e0005fff2ffeeffbcffed0000ffcd0002ffe4",
            INIT_0B => X"ffdcffe80008ffe8ffd40027fffcfff80003fffb0002ffeeffe7001e0030fffb",
            INIT_0C => X"000b000e0012ffe7fff9ffe3ffffffe10000ffce000100110000fffb000fffec",
            INIT_0D => X"fff5002cffc1ffea0013ffe00036000e0001003b002cfffe0012000cfff5000c",
            INIT_0E => X"fffbffe1fffc0028ffe10003fffc000d000e000affec001a000bffc2ffeafff7",
            INIT_0F => X"ffce00280032001e0042001e000300040015ffcd0010000efff800290014fff7",
            INIT_10 => X"0018fff1ffeeffd0ff97fff8000b000bffe50009000a001b00030014ffe8001b",
            INIT_11 => X"001cffe400000015000f0013000400000025003afff70000001e001300210013",
            INIT_12 => X"000200060014ffe5ffe3000600220009ffebfffeffdafff0ffdc000b0002ffed",
            INIT_13 => X"ffd2ffdbfff4fffe0002ffe1000100160028ff99ffae0003ff9dff8c0038ffc4",
            INIT_14 => X"ff77001200260002001c0002000efffd0015001fffed0000000affff0016000e",
            INIT_15 => X"001a0019000efffcfff90025ffd3ffea0003001bfff20000ffdbff91ffbcffc6",
            INIT_16 => X"ff9cffb10006ffcdffb7ffcfffe2ffedffc8000afffcffecfffe000300100000",
            INIT_17 => X"00110002002b0016ffeefffe00180004ffeaffe500060010001c000e00070001",
            INIT_18 => X"000c001f000efff30005ffff0009ffeefff900180031fff200470025fff8fff1",
            INIT_19 => X"001f0012fff1ffc2ffe2fff3ffa6ffef0017ffd6ffd90017003b002800410031",
            INIT_1A => X"003d00380028ffffffc9ffa7ffdcffd9ffb3ffd9fff0fff2ffe7ffbdffcdfff2",
            INIT_1B => X"fff3ffb1ffda002cfffeffdafff4001a0045003a003e002f00000004ffdd0012",
            INIT_1C => X"000c00070011fffb0015ffd8ffec0015fffd0048fff7005200220013002d0018",
            INIT_1D => X"fff30001ffdcfff6fff50001fff8fffb00150003000f0016001e0021000c0011",
            INIT_1E => X"000d00140018ffd6ff96ffbfffbbffbb0000fffafff8000f0014fff7ffff0014",
            INIT_1F => X"00040010ffefffedfff100060012ffd200230015ffe5ffabffdbffd3ffe3ffbb",
            INIT_20 => X"ffdeffd7ffe0002200120013ffff0041fff20004001afff0fff10024ffe6ffe6",
            INIT_21 => X"00090005002cfffa0004ffdbffe6001b0010001700220010000700110002000c",
            INIT_22 => X"0009000f00230017ffd700460011fffd001efff7fff1fff4000a002600090012",
            INIT_23 => X"000b0007fffa0010000afff1fff7ffe5ffe8ffe90002002e0030fffc00030020",
            INIT_24 => X"0004001000110025000d001afffd00110015000c0001000a00010003fff6fffe",
            INIT_25 => X"00020018001f001e0029000b001bffe0001d001600270029001ffff500350045",
            INIT_26 => X"001cffeb0017ffe5fff9ffefffefffd8ffff0023000f0006ffeb0010000affe8",
            INIT_27 => X"001afff800040000fff90009ffe400070024fff3ffe9fffc001d000a003c0024",
            INIT_28 => X"fff1fffc00140011ffe1ffedffc2ffceffd7ffb7fff8ffd7ffc9ffddfff00006",
            INIT_29 => X"ffeeffdb000300250005002afff9001dfff700150026001afff90049001d002d",
            INIT_2A => X"000b000800170003fff1000f00180010fff800140006ffe20025001c000e002d",
            INIT_2B => X"002a00190003000cffd9ffea00090000ffe4000cffe6ffe9ffc3ffafffe4ffec",
            INIT_2C => X"ffbeffc6ffbbffbd004f002a000a0002003e000affe500120006fff6fff3ffff",
            INIT_2D => X"fff900210014fff00008ffee00180014000dfffbfff2fff1ffc6ffcefff90017",
            INIT_2E => X"00010011000cfff200000004000b00290003000500050005fffa001c00080000",
            INIT_2F => X"00110028002c001c0016001c0002ff92ffb7ffc60015001b000800200008002a",
            INIT_30 => X"00040006ffef0001ffd4ffca0009fff2ffc9ffefffd8ffb9fff4fff6fff50013",
            INIT_31 => X"fffefffdffedffe30003000f0016001000050000ffe5fffbfffeffe4ffe7fffc",
            INIT_32 => X"00000008000dfff7fffbffe5ffea000c0016ffd5001f0015fffffffefff5ffd5",
            INIT_33 => X"ffd4ffe0fffeffbfffbbffabffc2ff8effab00190022001d000ffff00000ffb6",
            INIT_34 => X"ffb8ffc30031003fffef0040fffbffee001c002e000afff6fffe000100130016",
            INIT_35 => X"0001fffc0029001000010002fff4002e002200010038000d00240007000a0005",
            INIT_36 => X"0012001f0018001e0005002affe9003d0019ffedffffffe0ff80ffcbff9cfff5",
            INIT_37 => X"ffff0010ffebfffb0012ffd8ffd1001affe1ffd1ffebffceffbbffb9ff9affd0",
            INIT_38 => X"ffc20019002700230023001200170018fffd000e00440046001e001efff3fffc",
            INIT_39 => X"ffccffe9ffd7fffaffe3fffeffd3ffd3fffaffebffd7ffd1001affccffd6ffed",
            INIT_3A => X"ffedffefffedffbbffebffdaffcc0021ffa5ff7bffa6ffd3ff90ffb1000a0017",
            INIT_3B => X"00000023000d00080018002500090016003d0004fff500040029ffbfffe6ffb9",
            INIT_3C => X"000d0004fff400100014ffeffffd0006000c0010000b000000090003ffe40006",
            INIT_3D => X"0018002400030011fffe000f001000100011001d0020ffc5ffe0ffefffb2ffea",
            INIT_3E => X"ffdeffcfffe2ffea0006fff6fff40022002b001800010048002d0004ffdc000f",
            INIT_3F => X"0013fffafff800080018ffe5001dfff4fffafffefff4ffe0fff6fff2ffefffec",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"fff3ffed0004ffff000b0007002b002d000c001a00080047001effdd0015fffc",
            INIT_41 => X"000c0016fffb0008ffdfffef0021ffdcffd8001cfffe0018fff9000fffedffed",
            INIT_42 => X"002bffedfffaffe7ffe8ffe1ffd5ffcffff0ffd1ffe1ffcd0004fff40009fff9",
            INIT_43 => X"fffe0009000dfffaffea0007001500000002001e0034ffeb00200019fff7ffee",
            INIT_44 => X"ffe6000cfffaffef001a0000ffcc0004001e0000001b002b0013ffed0004001d",
            INIT_45 => X"ffafffd3ffbeffe0ffcafff3ffb9ff97ffa8fff400010006ffe5ffdbffdafff0",
            INIT_46 => X"ffd8ffdefffc00060023ffc6ffd0ffdaff8dffdfffeb001a001b0013001d001d",
            INIT_47 => X"fffc0010002e0023000b000afffa001a001200220004ffee0021001d0000fff8",
            INIT_48 => X"00080010000000190008000affceffe5ffecffcbffe3ffb2ffc8ffc3ffd00006",
            INIT_49 => X"001300220016fff4ffea0006fff3fff8ffcffff5ffdaffceffd7ffae0006ffdd",
            INIT_4A => X"ffd9000d0010002c001b0016000f001d0014001b0007fffc001bfff7000f0009",
            INIT_4B => X"ffd6ffe500120008ffe80009001500000003000100000006fff900020013ffe4",
            INIT_4C => X"fff1fffdfff80000ffd80000001b002bffdeffc5ffdaffe2ffceffdd0002fffe",
            INIT_4D => X"001600030004000a0001ffedfffb0012000f0001ffe90009fffeffcaffdeffec",
            INIT_4E => X"0008000e0005fff7ffecfff900000000ffef001bffebffdfffdf0021001fffbf",
            INIT_4F => X"ffcfffeb0019fffb0000000c00100019ffd6fff8ffbbffe6ffe3ffff0002fffb",
            INIT_50 => X"0020ffe5fffb0012fff4fff0fff3fff8fffaffe1000dffd6fff4ffdaffcffffa",
            INIT_51 => X"0006ffcdfffd0029000bfff2ffee0002000b000d001fffc60007fffafff10000",
            INIT_52 => X"001f001fffe40010002afff7fffb0037ffd900110008fff3fffe0000ffd5ffe2",
            INIT_53 => X"ffed0016fff1ffc00015ffe9ffc7002afff0fff7fff80044002cffd90003004e",
            INIT_54 => X"ffb6fff8ffdc000e0005000f00270007004700290012ffeb001cffdbffef0023",
            INIT_55 => X"fff3ffdb00360025000c000f0019ffe6ffd4000b0005fffbfff60013ffcffff7",
            INIT_56 => X"0016ffffffdafff9002f00270003003affd0ffdc003cffe7ffd80040fffc0006",
            INIT_57 => X"fff4001cffe0ffd0002afff9ffbeffec0023fff5ffefffeeffe7001affd60015",
            INIT_58 => X"0032000800310006fffefffd0007ffcc002afff80002fff4ffd7000bfff0ffee",
            INIT_59 => X"fffefff20001ffedffddfff80016001500020004ffeb00030027ffe2ffef0020",
            INIT_5A => X"ffefffe0001d0010fff8fffdfffaffe2ffbe0006ffe8ffc000220019fff7ffe3",
            INIT_5B => X"00190040ffc1ffed0055ffeefff500110042002e001b00500052005e0006001e",
            INIT_5C => X"0023ffe2001bffe1ffda00130016ffc800030028001a0001ffde000dffedffce",
            INIT_5D => X"002d001cfff70000ffe3fffdfff5ffeaffe3000a001c001d001700270005001e",
            INIT_5E => X"001f002100180012001d00050008ffe60029003e00320017003b0050ffcaffc3",
            INIT_5F => X"0008ffdcffd3fffaffeffff8fffe0008ffdaffca0036ffefffd6005400220011",
            INIT_60 => X"0006fffefff2fffffffeffe50004fff0fff300040029002e00250005001d001d",
            INIT_61 => X"00290007ffb4ffa7ffb5ffbbff89ff8fff93ffbeffa1fff80037002f00280037",
            INIT_62 => X"ffff002700290015ffadffb7ffaeffb3ff96ffcfffa9ffafffca000000270018",
            INIT_63 => X"0002002b0034ffd700120010000e00280032ffecffedfff3ffc5ffdcfff60026",
            INIT_64 => X"001cffef000dfff5000700020002fffcffe7ffdafff40004fff5001affe4fff5",
            INIT_65 => X"ffc7fff0ffef0017fff7ffd2fff7000000090000fff9ffe9fffefff90000001e",
            INIT_66 => X"ffddffeeffcaffecfff1ffe50004001c0009fff7ffda0014001dfffe001e0002",
            INIT_67 => X"0028002affec0000000a000f00060007000effebfff1000f000e001a00110019",
            INIT_68 => X"00070007001a0019ffe2ffddffeaffff00060000fffe0012000a000e000f0011",
            INIT_69 => X"ffe4ffe4000700160000fffa0021000e0019002600160027000c0005000f000b",
            INIT_6A => X"fff7fff30015ffeeffd2001effd8ffac000dffe3ffd6fff6001e002b00020017",
            INIT_6B => X"0027fff7fff9000bfffe000bfff8fffdfffdffebffee00050000001e0028000f",
            INIT_6C => X"000ffffd00170013001a001f0010002300290007fffd000cfff9fffb00000017",
            INIT_6D => X"0009001b000a00290016ffc4ffc7fff2ff77ffc5ff99ffa0ffe3ffd5ffb2ffe3",
            INIT_6E => X"000bfff200070009fff9ffe5fffa001e00050008fffe000a0008fff1fff5fff3",
            INIT_6F => X"fffbfff1001300130003000afff200230029ffde00060002ffeb0017fffc0018",
            INIT_70 => X"fff4ffc6fff1000bffcafff50007fffafffeffe3fff9ffedffdeffec00020008",
            INIT_71 => X"0007000d00080000ffe7ffe4fffd0011001300070019001b001d002000240005",
            INIT_72 => X"fffdfff3ffe5ffecfffb0012000900030005000f00180000001c002600180046",
            INIT_73 => X"0047002300220007ffff000dffc7fffdffebffd70002fffefffc000fffe6ffe5",
            INIT_74 => X"fffcff97ffc7000bffffffe70000ff96ffbcffd0ffa0ffcfffe7000e00230013",
            INIT_75 => X"000e000afff1004100250023002700080027ffe70013ffefffcaffeafff50006",
            INIT_76 => X"00040005fff8fff2fffaffec000afff0ffff0004ffedffff001500240009ffee",
            INIT_77 => X"001d000a001b0004000500130017fff90020fff300000006fffc000b000b0023",
            INIT_78 => X"000b00160005ffd9ffe2fffcfff7ffd2ffee00060004fff4ffeffff3000cffe3",
            INIT_79 => X"ffe8ffe4000cffeefff7ffda0021fffcfff4002c000f0000003a001b0003ffed",
            INIT_7A => X"fffdffeaffdffffdfffe0004ffff0009fffcfff5ffecfff9ffef0015000a000c",
            INIT_7B => X"0009001e0039001b00460045fff8000e003f000b002300170006000b0001ffe4",
            INIT_7C => X"fff9000f00460026ffe3fffcffd4ffb0ffd4ffd7ffca0039000800120008fff4",
            INIT_7D => X"0003ffeeffedffed000cfff60004fffdffceffc1ffe8ffb8ffc7001b0027000c",
            INIT_7E => X"fff4ffe5ffe2ffe9fff9ffdc0004001e0014ffe8000effffffe6000dffd6000b",
            INIT_7F => X"00100012fff600180010ffedfffaffeafff4ffc4ffc6ffcbffacffde000bffca",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"ff9d001f0006001500120022001bffed00140012fff80008000cfff200280016",
            INIT_01 => X"ffef0016002d0006fffa0005fff9fffdfff30025ffebffe5fff10002ffecffd7",
            INIT_02 => X"ffd5ffe4ffadffc40016ffe0ffd5ffe3ffefffedffd3001ffffe0013002d0004",
            INIT_03 => X"fff70000ffe3ffd1fff4ffd4ffd50002000b0000ffd6000cfff9fff0000f001f",
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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IWGHT_LAYER2_ENTITY9;


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
            INIT_03 => X"00000000000000000060006c003700210038000c004c00000000000000170000",
            INIT_04 => X"000f002a00000000001500070000002b005f0061001100130000000000000029",
            INIT_05 => X"0000005d007300000043004600b8005a000000000000001700d6002300000000",
            INIT_06 => X"00000000000500000000001c003a001f0027013a000e0000001d00c200240038",
            INIT_07 => X"0080006f0000001701cf00220000000000160000006000f2000000000000017a",
            INIT_08 => X"009200000000000a00000000009d00ce0000000d00000000007b0000007c000c",
            INIT_09 => X"00000003000000000000000f0000000000000000000000000000000000110000",
            INIT_0A => X"0000000000000000000000360000000000000000003800000000000000000000",
            INIT_0B => X"00000000004b0000000000770000009d000000000000002d0000001500000000",
            INIT_0C => X"00000013000000210000000600000000000000000000000000000000000d0000",
            INIT_0D => X"000000790000006e000000000000006a00000000000600000000000000cb0000",
            INIT_0E => X"00000000003c0039001b003700000000000000000000000600000000003200b6",
            INIT_0F => X"000000080000000a0000003900670000000c00200011002e0000002a00000015",
            INIT_10 => X"0036000900170000000000000009000b00190006000000170000000d00290009",
            INIT_11 => X"00000008000000000000000000000000000000000000000000170000000d0009",
            INIT_12 => X"000000160026001a001300000000000000000000000000000000000000000000",
            INIT_13 => X"0000000000000000000500000001000200000000000000000000001b0000000e",
            INIT_14 => X"00110000000000000000000000000000000000000000000f0000000000000000",
            INIT_15 => X"003b00020000000100060018001500000000000000000000000b000000050000",
            INIT_16 => X"000000110006001c004000010000001f000c00050017002d0008002100120008",
            INIT_17 => X"00130022003000000000003800310000002e001a000000080000000000000000",
            INIT_18 => X"00000000000000000000000000000000002200000000004a004a002a00320000",
            INIT_19 => X"00090009000a00000011003200000000000000050000003e00040019001f0000",
            INIT_1A => X"005b0000004e00000000000000160000005d005b0000000d00000083005f0000",
            INIT_1B => X"000000000000005b001c00000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000029000000190000000000000000003c00000017000000360000",
            INIT_1D => X"00000010000000000000001f000000080017000e000000000000000000aa003b",
            INIT_1E => X"00560027002f0000002700870056004d004c00720068006100510094002d0000",
            INIT_1F => X"004d00000038002500000018000c000a0000009b002d0000000e001c00000000",
            INIT_20 => X"00000074003900390036001b0000000000130000004b001d0002004d00500092",
            INIT_21 => X"00500000000000000024009e000000000000001200150032004b001c00000000",
            INIT_22 => X"000000000000000000000000004e0000000000000037002c0000002500000000",
            INIT_23 => X"0000000000640000003f000000110013000000000000000000000000005f0002",
            INIT_24 => X"0000000700000014000b00040053000400180032002e00170000000000000000",
            INIT_25 => X"0000000000000000000000000000000d000d0000000000000000000000000000",
            INIT_26 => X"0000000d00000000000000160000000e001e0000000000060000000000010021",
            INIT_27 => X"00000000000000000012001b000000000000003900380041002e000000000000",
            INIT_28 => X"0000000000000000000000000000000000000022000000000000000000000000",
            INIT_29 => X"00000000000000000000000000000000002300000017007c00030000001a0000",
            INIT_2A => X"0000001a0000001500060018001700000000000c001e00240035004000810092",
            INIT_2B => X"0027006c00190000003300000000000000000000000000000000007000000000",
            INIT_2C => X"00000005000000000000001c004f003800380000003600000000000000000000",
            INIT_2D => X"0000000000000000000000000000000000000013000000000000000000000000",
            INIT_2E => X"000000000000000000000000000000000000001c004200650026006600000000",
            INIT_2F => X"0062004e00590056007700190000004d00600035004700b70074000c00280025",
            INIT_30 => X"001800390085007800390050006e0084008a009a008b00a90092009c00ab00bb",
            INIT_31 => X"00000000000a00a600b500a90067005000460097004d00000000001c002d0011",
            INIT_32 => X"001c0000000000210000001d0068001d000000000000000000000000002b002f",
            INIT_33 => X"00370034006a0040002400d10067005600730042001700610000000000000000",
            INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_35 => X"0000000f00000000000000000000000000000000000000000000000000000006",
            INIT_36 => X"00000000002100000068000000b3009b007d009c007c00c1007d00a0009800a9",
            INIT_37 => X"00c200b00006001c000000000000000000000000001100000000000000000000",
            INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3A => X"00000000000000620061004b0051005000490041006100880053005b005e005a",
            INIT_3B => X"002a0068005a00600076005f0073003c0076006d004e007b00460041005d005c",
            INIT_3C => X"00970046003b004f001000150023002e002f00000000000000000000000d0000",
            INIT_3D => X"000000000000000000630073007b00570056004b004800450070004300400005",
            INIT_3E => X"00120044002b00320022001e00000024003c0007005d00000009000000210021",
            INIT_3F => X"000000060000001500190017002b000000000000000000000000000000000000",

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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
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
            INIT_00 => X"00000000000000000000005a005e004a002c002600310047003c003600000026",
            INIT_01 => X"0026003a003e0050000e000200460031002e002d003f00350026005a00440035",
            INIT_02 => X"00490044001c00000008002c0000001d00000002000000000000000000000000",
            INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_04 => X"0000000000170000000a000000320011000000110000004c00000000002e0000",
            INIT_05 => X"000200000076001c00000011000000000000006e0012007b0086001a0018003e",
            INIT_06 => X"000000af003d003300350048004c0116010a00be00d10074006c00c100be00f0",
            INIT_07 => X"0096001500350003002b0055003e007b001c0034000000100040006400570011",
            INIT_08 => X"000a00000040001f004000300027002f00170076003700000000000000000000",
            INIT_09 => X"00000000000000000000000000000000000000000000002b0000006c00000009",
            INIT_0A => X"000000000097000000650084006f0000000000ed000000b0006200c400790000",
            INIT_0B => X"005300000092000000460000002500760053001f00000000000000a200000024",
            INIT_0C => X"00000000000600110000000b00000000000000060000001e0011005c00320024",
            INIT_0D => X"009e0050008a00340046002c0026004200360059002e0097002200360022002a",
            INIT_0E => X"0031003500270000001f001700af00a6002b003700660021001c009a00bd0028",
            INIT_0F => X"0000001000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"00000000000000000000000000000000000000000000000000000000000b001f",
            INIT_11 => X"000000000000000000000000003000180005002a0020001900000047007e0086",
            INIT_12 => X"008a00a700b300b000d0007d00ae00a300ac00bf00e100000002000000000000",
            INIT_13 => X"0000000000000004002f002a0000004e000000000065000000530000003a0000",
            INIT_14 => X"0011000500000050000000250000001c0000008b000000000000000000000000",
            INIT_15 => X"000000000022000000040000000000120018000d0024000a0000000000000000",
            INIT_16 => X"004d00000004005000120000000000330000001e0000003f0000000000910000",
            INIT_17 => X"0000000000250000000000000000000000000044000a00000000007700000000",
            INIT_18 => X"00000000000000670042000500a600000061003000410038000b000000030000",
            INIT_19 => X"000000000000000000000029004e002300000022000000230000002d006f0000",
            INIT_1A => X"0005002e005c000000000000000000000000002b0003002e002c000000000000",
            INIT_1B => X"0000000000000000005e005e00530000000000000030003600300039009000b0",
            INIT_1C => X"00a200670067004a0068006a00b400790025003b001400430034006a00420000",
            INIT_1D => X"00340000002400000022002c000000270000003c000000330017000800000000",
            INIT_1E => X"0046000000000000000000000000000000000000000000000000000000000000",
            INIT_1F => X"00000000000000000017000000000000000000000016000a002d000100000000",
            INIT_20 => X"000300170012002f0045001e000000080015000200000060004200390027003a",
            INIT_21 => X"003a0026006900070048007e007e0088009600bb006600920096009e00a900ab",
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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_IFMAP_LAYER2_ENTITY1;


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
            INIT_00 => X"00a0001200400104005100bc01010000000000470000001c0000000000ba0000",
            INIT_01 => X"0000000000000031000000000092000000000000000000000000000000000000",
            INIT_02 => X"000000000000000001040000000000020000000000000000000000a800000038",
            INIT_03 => X"0000000000000000000000020000000000000000000000000000005300370000",
            INIT_04 => X"0000000000000000000000000000000000000000000f00000000000000000000",
            INIT_05 => X"000000a8017a013400370113008200b7003500000000002d00790000014d0062",
            INIT_06 => X"00000000000000000000007e001000350000006a000000d10000000000000000",
            INIT_07 => X"00b000b0000000a00033007700d2008100c600000000000800a9005700000065",
            INIT_08 => X"00c8000000a1003c00000058007a00000000000000060000005c000000000000",
            INIT_09 => X"0000002c00e6000000770048000000ff00240000000000190000003600000000",
            INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0B => X"00000000005d004d00b5006c00aa00000000000000000000003f0000001b0030",
            INIT_0C => X"0015000000000000011900b300000012000000aa000000bd00b6002600000000",
            INIT_0D => X"0028000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"000000c001240144014f00d00068001700000040000000000009005700160000",
            INIT_0F => X"00cf005d00000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000a8000100b8001e0028009600900015006300000000",
            INIT_11 => X"00000000000000000000000000000000000000000000000000000000011b009e",
            INIT_12 => X"00000000006c0000000000000000007900f80043000400ff0067001200110000",
            INIT_13 => X"0000001c00000069004100000086004e0031000000000091006c005100170026",
            INIT_14 => X"0046000000b000fd00e0000000780000001000000000000000000000005900ab",
            INIT_15 => X"00c100fb00ef006a008f00db003b00530014001000000000007b004600ab0062",
            INIT_16 => X"005a013c00a2006d008c007a01230051009700a10000000000000000003c0000",
            INIT_17 => X"000700000000000000000000000001040000000000000000001e004f00a2012f",
            INIT_18 => X"008c00000000015b013a0161008300a1007201380012000000000088007000dc",
            INIT_19 => X"00e000ad013e00cd00ae00000000000000000000000000000000000000c8001f",
            INIT_1A => X"00bf0046004b004e001b00260000001e0073013b009f0036001e000600aa00a5",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000006a0043007601010066007c000000000000000000000000",
            INIT_1E => X"000000000000000000000000000000590069000000310000000000000000003d",
            INIT_1F => X"0000000000100031007200ed000000000000000000000000000000000070012c",
            INIT_20 => X"017f00d0000000000000000000320000006700080039002100de006d00440076",
            INIT_21 => X"0084014100eb00000000000000000000000000000000000000b20078006e003f",
            INIT_22 => X"007f009200000000000000000000001c01910000001e00340087014800000000",
            INIT_23 => X"0000000000000000000000000058004a0046000000000000000000f300d700c5",
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
            ADDR => ADDR,  -- Input address, width defined by read/write port depth
            CLK => CLK,    -- 1-bit input clock
            DI => DI,      -- Input data port, width defined by WRITE_WIDTH parameter
            EN => EN,      -- 1-bit input RAM enable
            REGCE => '1', -- 1-bit input output register enable
            RST => RST,    -- 1-bit input reset
            WE => bram_wr_en       -- Input write enable, width defined by write port depth
        );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    end generate MEM_GOLD_LAYER2_ENTITY0;



end a1;
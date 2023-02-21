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
        BRAM_NAME  : string := ""
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
    signal bram_wr_en    : std_logic_vector(2-1 downto 0);
    signal bram_addr     : std_logic_vector(11-1 downto 0);

    begin
    bram_wr_en <= (others => '1') when WE = '1' else (others => '0');
    bram_addr <= ADDR(11-1 downto 0);
          

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
            INIT_00 => X"f8e0f509fe76f17000733001b7b02a0c052106a4e7efe7310dc215ce0b7a16b3",
            INIT_01 => X"f645fd10f08323420bd52323f8a10a630f0a027017c2ddff07d6ee1e18e62a49",
            INIT_02 => X"0006fff5fff20000ffedfffaffedfff7fff20005ffefffd7ffcffffd0017ffdd",
            INIT_03 => X"0010ffe9fffdffe40005ffebffebffdcfff50002ffdcffe2ffd100080004fff5",
            INIT_04 => X"fffeffd3ffdfffdcffeaffdefff7000cfffffffb0000ffe8001c001400090013",
            INIT_05 => X"0000ffeafff60004fff90015fffcfff5ffe4fffa00160013ffecfffcfffaffea",
            INIT_06 => X"fff90009ffeaffe4001cfff2001a0004ffed0007fff3fff4ffe4ffe2fff50015",
            INIT_07 => X"fff80000fff0000fffdbfff1ffe2ffd9ffd4ffd7fff4fff5ffe2ffdaffefffda",
            INIT_08 => X"fff8ffe3ffd0ffe400000016ffe8000cfff9ffe6ffd0ffdd0005fff2000e0003",
            INIT_09 => X"fff3ffedffe3ffdbffe0fffa0017000d0006ffef0000ffe70013ffe5fffbffde",
            INIT_0A => X"0004ffe6ffeaffea00120005000a000dfff9fffafffc0000ffdcffdaffe0fff5",
            INIT_0B => X"00140015002c0009000a001efff5ffee000e00160016ffff000afffe0013ffed",
            INIT_0C => X"001400140008000bfffdffea0000ffe8ffeefff60000003000260015000d000f",
            INIT_0D => X"fff1ffd2ffcbffe200270036001200290057004f0004003c002e000a0036000c",
            INIT_0E => X"0009fff4ffecffdfffd4ffd90011001affed000a00000007ffafffc1ffe60004",
            INIT_0F => X"001d0031fff8fffafff0ffe0ffc3ffd7001400580011003d00680030fff0000f",
            INIT_10 => X"ffde000f000a0030ffe80012fff7ffd40001ffdd003a003f004e005900600062",
            INIT_11 => X"00290049003700170012000bfff6ffe60006ffe60003ffea00100011fff80017",
            INIT_12 => X"fffb0005fffafffb001affecffc7ffbfffee002b0021001e001200040021003d",
            INIT_13 => X"0035000d0009fff8ffd2ffe9ffe3000b001c002200060002ffdeffdaffc8ffca",
            INIT_14 => X"0009ffc5ffef001effbf00060032ffe40009ffd200170002ffe20004fff6ffce",
            INIT_15 => X"fff6002c0011001ffff2ffca001bfff4fff800080007003bffae0019005fffb2",
            INIT_16 => X"0013005effd7fffe0012ffd0ffd90001fff3ffe4ffeafffbfffc001effee001a",
            INIT_17 => X"fff7ffcf0000001f00030005ffa400560017ff63008b000bff8a0046001d001f",
            INIT_18 => X"000bffdd0014ffeafff30016ffd4ffff0014fff0ffe6001bffeafff7fff4ffdc",
            INIT_19 => X"fff7ffe2fff70017fff6ffe100140022fff5ffef0033ffe5fff000620002ffed",
            INIT_1A => X"000f0023fffeffdb00450013ff9200500005ffbb001a001cff730047000cff49",
            INIT_1B => X"0057001bff680054000e0012ffd2fffafff2ffd6ffe90019fffdfff600080003",
            INIT_1C => X"00120022fff8fffd0004ffd500010042ffaa00010045ffc9000dfffafffbffd8",
            INIT_1D => X"001b001cfff40030ffe3fff4ffdd0000fffb0016fff8001efff3ffeb0011ffdc",
            INIT_1E => X"00160036ffaeffe6001effee000b003b0006fff3002dffb5ffdeffe3ff83ffc4",
            INIT_1F => X"000affa7ffef0040ffc500000024fff5004200140016001affe3000a000effee",
            INIT_20 => X"ffe6ffe30009ffd9fff0fffb0016002a0047004c001c001c0047fffe00040029",
            INIT_21 => X"ffdfffe80011ffc8ffdbffe1fff9fff0001fffe2ffe6ffcdffc10008ffac0000",
            INIT_22 => X"fff9ffdeffef002dffef00110016ffd7000f00300000ffceffcdffceffca000d",
            INIT_23 => X"ff94ffc80002ffd9fff9000bffed000e003f00010017002800160042004d0050",
            INIT_24 => X"004f003c0049002afff2ffca00310039000f0032ffea003a002a0021ffe20012",
            INIT_25 => X"000cffc4001b0019ffdb00290006ffe9ffaeff8cffc0ff9fffdcffaaffd2ffec",
            INIT_26 => X"000f0015fff0fff6000affd5ffec0034ffd50018ffe700060005ffe0000bfffe",
            INIT_27 => X"fff2fffcfff8fff40005002cffcc0025002fffc00027000c0044ffd2ffda0061",
            INIT_28 => X"ffacffe5004affc80003fff0ffe5ffcaffccffd5001dffc4000efffd000cffee",
            INIT_29 => X"000c002effd8fff10019ffc5001bffbb00190039ff3800680031ff6a005f002b",
            INIT_2A => X"00050019ffe600330005000f0039ffc700000003fff3fffbfffbffddffcc0007",
            INIT_2B => X"ffc4000ffff7ffeefff80000fff10029fffcffebffd1002cffe9ffcb003effe1",
            INIT_2C => X"ffbf0039ffd3001dffda0023001effa5002a002aff78005b001cffd000120054",
            INIT_2D => X"ff86004e0059ff67007f00200004fff3001effe20017000f0003fffa000d0016",
            INIT_2E => X"ffe8fffe001cffc400310000ffe7ffde0033ffc9ffd30060ff810009004cffac",
            INIT_2F => X"0013ffeffff1fff0fff1ffec00070004fff90010fff40019ffc6ffffffe0ffdb",
            INIT_30 => X"ffbeffc50011fffa0023ffe900100011000f00010021002f0005000c000a0008",
            INIT_31 => X"0011003afffdffedff91ff90ff88ff69ff23ff8bff7dff7dff940022000cfff9",
            INIT_32 => X"001afffaffe600380017ffe1000e00270012fffd00230009fffd000fffe8000d",
            INIT_33 => X"00160015ffefffec001f000f001200090006ffd6ffebffc5ffb1ffa8ffaeffa5",
            INIT_34 => X"ff9bffde000affe30017fff6ffdbfffefff00015ffe7ffb7fff7ffc3ff87ff84",
            INIT_35 => X"ffbcff94ff8e000fffed001ffffeffff0020ffe70001000bffe3002300070010",
            INIT_36 => X"002800070014002f0002ff8fff7effa9ff71ff70ffb0ffadffc8ffe3fff70002",
            INIT_37 => X"ffe20012ffe5ffcd001c000c0001fff8000dffee0000001e000a001300190022",
            INIT_38 => X"00160028fffcfff7001dfff00026003b0017001b002fffddfffdfff3000dffd5",
            INIT_39 => X"ffd9ffd3003200100028002a0004000800140003000c002c002fffea001dfff7",
            INIT_3A => X"000dfffd0018fff0fffd0042ffd7003000300021001b000a000dffc3ffe3fff2",
            INIT_3B => X"ffeffffbffff0044003f000bffea0006000300210019002f00190035000fffac",
            INIT_3C => X"ff9bffaefffcfffc0001001d00270013ffecffdbffddfff70002ffe6fff1003c",
            INIT_3D => X"0016002b0008000ffffbfff300000019ffdf000d003300250028fffa0016ffe7",
            INIT_3E => X"fffd000dffcf0037001000060005000f000effcdffcd000e0018002600360027",
            INIT_3F => X"fff90006ffe9ffbeffe20016000affea000fffe5ffd80002ffd6ffdfffc50009",

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
            INIT_00 => X"fff00020001c001f002d00180029ffd600060009ffcdffd50026ffedffdeffc4",
            INIT_01 => X"ffddffdeffc7fff6ffdeffe90002001f0016ffeeffd70000ffd6ffd8ffecffed",
            INIT_02 => X"ffd30002fff10001001cfff9fffefff5fff70000000a0002fffffffbfff4fff8",
            INIT_03 => X"0000ffdcffef00060026002afff6003c003b0013004400480027fff5000afff7",
            INIT_04 => X"fff5ffff001200240026000700000026003000180003002e0016fff3000cffcd",
            INIT_05 => X"ff92ffaaffc1ffaeff82ff9dffa0ff6b0023ffdafff40004001effe1ffcf0006",
            INIT_06 => X"ffef0000ffdf000bfff8fff1ffdf0015001bffde002b002000010021003d000c",
            INIT_07 => X"0002001e0021002200000020fff9ffff0002ffff0000ffecfffb0015fff10008",
            INIT_08 => X"ffe200200002fff5000efff2ffd0ffe00013ffdfffd1ffc8ffd8ffd8ffd0fff0",
            INIT_09 => X"ffe1fff4ffe2000b0008fff8000d0000fff2ffd4fffbfff8ffd0ffecffeafffc",
            INIT_0A => X"0019000d0015fff1fffbfff50000ffcaffb6ffe8001b002bfff8000cfff9001c",
            INIT_0B => X"fff0002500090001ffe4fff6fff10020ffe5ffe70015fffc0012001000270020",
            INIT_0C => X"0012000f001200140015ffc6ffd6ff8dffb70021ffd2000f0004002300020022",
            INIT_0D => X"0006fffe0012fff9ffecffe5001afff90014ffef001a001dfff300160011001d",
            INIT_0E => X"000c000c0026001600200015000e000f00270026000c0005000efff9000a002e",
            INIT_0F => X"0000002c001affff000affd7ffeb0003ffe0ffd0fffe003f00180049003d0021",
            INIT_10 => X"003f00390029ffc4ffd7fff6ffd3fff8fff3fff30010fffd0031ffdeffebffea",
            INIT_11 => X"ffaaffd8fff0ffe5001a000dffd3ffc4ffd2fff6fff8ffe40029002800230013",
            INIT_12 => X"fff3fff4ffe6fff1ffd1ffbdffde0018001efff1fffdfff1ffceffe4ffcbfff8",
            INIT_13 => X"002effe8ffc5ffedfffbffe8fff700240004fff70004fff5002a001d000a0038",
            INIT_14 => X"fff2fffd001c00130014fff1ffebfffd0002ffed00040034000ffff700260025",
            INIT_15 => X"fffb001c001c0007000c0006000200650038002a003500170006ffe0fff7ffdd",
            INIT_16 => X"ffe8ffddffc3ffe5fff9ffcaffddffcbffbcffa7ff78ff62fff5ff96ff9c0035",
            INIT_17 => X"003b0005ffc7ffbdffe9ffdcffbfffd7002effc700100004001dffdcfff70023",
            INIT_18 => X"fff5000a000800000019ffe2ffe9fffa001100030000001efff700190012001e",
            INIT_19 => X"001c001b0023fff6000e001afffafff8fff2002b001b000fffb1ffa1ffc1fff2",
            INIT_1A => X"ffc1ffa5fffaffccffb40005000effea0040003c003e000a00370030ffe50008",
            INIT_1B => X"0016fff1ffe9fff7ffeb0014ffedffe7fff80001002c00050008002b00290028",
            INIT_1C => X"ffe80005ffeb00010000fffefffb0018fffb0021ffe4fff400110033004bffe7",
            INIT_1D => X"fff5002200290011001d0024000a001cffe6ffe7fff3fff9ffed00340005001e",
            INIT_1E => X"ffedfff1ffe6ffe1fffb001d001800120013001e0023001b00120013000dffe1",
            INIT_1F => X"00140024fffe0013000dffce003c0001ffe7001d003c00040005003500320016",
            INIT_20 => X"0000ffed00420032003e001b001b0025fffc0020001500410062002a002b003a",
            INIT_21 => X"00440018fffd0009000dfffa0017ffe8ffccffca00070019000000360052004e",
            INIT_22 => X"001400380041ffeffffb000200000023002afffd0011fff9001b001e00140002",
            INIT_23 => X"0004ffeffff8ffe20009000afff0fff20010ffdeffd40019fff2ffc9fff40013",
            INIT_24 => X"fffcfff9000afffaffd9ffd3fffdfffa00090023fffb001e0000fff70009fff8",
            INIT_25 => X"ffea0000002100040008002bfff700130003001ffffd0017ffe40014001efffb",
            INIT_26 => X"002d0035000500070016ffdc0010ffeaffe10013fffcfff6001a002affd5ffdc",
            INIT_27 => X"fff0ffceffbb0015ffaeffd8ffe5ff4aff45ff63ff74ff73ff650000000fffe4",
            INIT_28 => X"000e00040000fff6001affe900310013ffc9005b0022ffe700370018ffdafff7",
            INIT_29 => X"fffaffcb00280003ffd8005100200006ffe2ffd7ffc500020011fffa004b002d",
            INIT_2A => X"001dffee002b0037ffdb001e0032ffcb0001000effc1ff7effccffc9ffc9ffd3",
            INIT_2B => X"ffcbffc6ffeb001600010006000b00200013fff5002d001900320005000c003f",
            INIT_2C => X"0026001b003300370015fffa000c0022ff82ff99ffd1ffcbffc3fff300180025",
            INIT_2D => X"fff80018fffb00190001ffe9ffcd0002ffd90027fff80015001900180019001a",
            INIT_2E => X"ffecffe0fffaffe6ffddffee0012fffe0018fff00011ffdf000c000cffd9fff8",
            INIT_2F => X"fffbffdc0005fff40012fffc00050011ffeeffe10016ffff0011fff900000000",
            INIT_30 => X"000efff6ffe2ffecffceff9fffa3ffcdffc8ffbf0012ffecffff000c000f001f",
            INIT_31 => X"000a001400070013fff90018ffeefffefffcffdeffdbffefffcffff10012ffaf",
            INIT_32 => X"ffd0ffd2ffafffb0ffddffeeffcaffd6ff96ffa8ff97ffefffbdffe9fff40013",
            INIT_33 => X"fff00006fffd0001fffe00170023001f00230006ffadff63ff95ffc2ffb5ffc5",
            INIT_34 => X"ffc4ffe2ffde00170014fff8ffe10008fffb000a0009fff0000b001e00030012",
            INIT_35 => X"fff7fff00017000e0011fff10000ffb1ffe8ffcfffef001f00280014ffecfffb",
            INIT_36 => X"fff3000d000f0008ffe3fffbffdefff3ffd7ffd0ffef000bffcdfffd0028fff7",
            INIT_37 => X"ffcd000d0001ffd9fffe001c00010023002a0010ffeffff9000effe0ffec000a",
            INIT_38 => X"fffbffdd0003fff20011ffffffdffff5001b000a0010000300030016ffedfff2",
            INIT_39 => X"0003fffdfff1fff1003d0014002c006a005f005c0069004d0075ffbbffc6ffb6",
            INIT_3A => X"ffaefff8fffb0020001e0029ffc0ffd2ffc3ffa9ff95ffc6ffd3ffcbffe9ff9b",
            INIT_3B => X"ffa7ffbdffbdffb5ffb5001b00270013002b0007ffe2002c00440014ffe9001e",
            INIT_3C => X"0002fff1001e00110000fff100010000ffee000f001c00190005000200070009",
            INIT_3D => X"0010fff9ffd10029000300190007ffec000bfffdffd8fffe000c001e0002fff5",
            INIT_3E => X"000e0015000cffe20007fffcfff7fffd004f003a00280060003b0032ffcffff2",
            INIT_3F => X"fff4fffb0018ffedfffbffff0038fffaffe3fff6fff8ffe6fffbfff600160008",

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
            INIT_00 => X"0006fff0fffd00180007fffafffefff0fff0ffdf0000002effe1fffa0006ffb6",
            INIT_01 => X"ffdbfff2fffdfffe001fffdfffe1ffec00000009000100190006001f001e0008",
            INIT_02 => X"0005fffe0005ffebff63ff56ffe3fef2feb6ff1bff33ff1eff2f003c002bffed",
            INIT_03 => X"00290019fff3003b002700000019fffdfff800390003fff20011000cffea001e",
            INIT_04 => X"fff60000000f0004fffb00510019002a0000ffd70010002dffef002c0013fff5",
            INIT_05 => X"fff30024000d000bffebfff5001ffffd000ffffffff0ffd3ffeaffddffe3ffde",
            INIT_06 => X"ffe6ffc7fffafffefffd0001ffdefffb001cfff2ffd7ffe40024001effea0017",
            INIT_07 => X"fff7ffdc0006fffcfff8ff88ff7c000eff12ff3aff5dff6bff38ff84001f0003",
            INIT_08 => X"fff8001100210001ffedfffeffecffcdfff5fff0ffd1ffe5fff90000ffea0013",
            INIT_09 => X"0033002efff6ffe70016001d00300033000b002ffff4001a00290001ffdf0016",
            INIT_0A => X"fff4fff4fffa000f0015fffbffd0ffe9fff9ffc8ffd0ffffffecfffdfff90003",
            INIT_0B => X"ffedffe5ffdc0009ffdaffecfff3fff6ffb00007ffd1ffeb0001ffe6ffe3ffe0",
            INIT_0C => X"ffeefffefff2ffe5ffe70001ffceffb3ffabffc4ffaeffc3ff92ff8dffbeff52",
            INIT_0D => X"ffa2ffd6ff83ff75ffb4ff94ff75ff90ffd3ffd9ffdfffcaffe5ffd6ffc2ffc7",
            INIT_0E => X"ffc4002b002500010027001f001f0014001700010021ffee0010ffebfff9ffea",
            INIT_0F => X"fff1ffe40007000b0014002700070000000a001c0023fffffffd003f000e0016",
            INIT_10 => X"004a002800280036003fffe9001cffc0ffcbffec00010019000c000fffdb0008",
            INIT_11 => X"00100000ffddfffeffceffebffe50026001d000d003800650069004d007e0073",
            INIT_12 => X"0028002b0007fffc0012fffeffeaffe3ffd5ffbeff8dffb90019002000240036",
            INIT_13 => X"002d00460011001900070016fff4fff1ffdcfff4fff0ffc8ffbbffe80008001e",
            INIT_14 => X"ffe6001a002000250041001d0022000e0017001b002afff0ffcf003600500020",
            INIT_15 => X"0012ffedfff8ffd8ffaaffd7004f00480023ffecffe90004ffd0ffa2ffd90062",
            INIT_16 => X"007d004d0004001dfffaffb7ff8effab004200320026001d0017001affbfffda",
            INIT_17 => X"ffeaffe0ffdafff6001300160015000f00040024ffc0ffb7ffc1000e0010ffff",
            INIT_18 => X"002a00290021ffdbffa6ffb5fff1000b0007004100460031fffefff70011ffe8",
            INIT_19 => X"fff5ffe1fff9ffd8ffe50025000bfff3001600150011002b0000fffefffd0004",
            INIT_1A => X"0033fffa00100019ffe2ffddffc30019002f00280010000d0004ffddffcbffc0",
            INIT_1B => X"fffbffe9ffeffff80000fffeffcaffe7ffdc000afff3ffdf0014003700060024",
            INIT_1C => X"00030025fff2002300360001fff3002efff20002fff90023002a001a00000010",
            INIT_1D => X"00160014fffa000c002e0013fffe00360001000800060020fff5ffdcffe3ffe6",
            INIT_1E => X"ffecffef0003fff1fff7fff8fffb000f00100001000a0013002700120038000b",
            INIT_1F => X"001fffe80060005a001f0042003a004900210017fff40022003d002c00260016",
            INIT_20 => X"001affe900000028fff5000c0024ffe3000e00040015fff7ffe9001b0026ffc7",
            INIT_21 => X"fff7ffdbffd8001efffd001c001f002b0028001d00130030ffd1fffb0023fff2",
            INIT_22 => X"ffe8ffdcffdaffd7ffe3fff10010ffe500280005000800210011fffcfff8001d",
            INIT_23 => X"ffea001affeffff3ffeafff0ffe7ffc6ffbeffb8ffb5ffd3ffcdffd3ffcaffa8",
            INIT_24 => X"0031002d0011003d003600200019003300210045002d00520043000f00000063",
            INIT_25 => X"002500150036001100150002fff60057000e002a0037ffe4fff2ff96ffa7ff8b",
            INIT_26 => X"ffa6ffbfffa80018ffcbffe30012ffbbffe00029ffe6ffff0012ffe7000dffd7",
            INIT_27 => X"ffe10004ffeaffcffffb000bffb7ffbfffb1ffe3ffca000e000a00030003ffe2",
            INIT_28 => X"fffeffe7fff4000a0020ffe900290021ffe5fff4ffe6fff10011000cffdf000a",
            INIT_29 => X"0030fff00001ffcdffdbffc8ffd2ffbeffe1fffeffce003d0006000ffffa0010",
            INIT_2A => X"fffdfff500320023001b0027000fffd2000e0019ffeffffa003c000800010004",
            INIT_2B => X"002c00200004003e001affffffeb002bffd9fffa0049fff50031002200090023",
            INIT_2C => X"fff0000f00240022ffe1fff8002e00400056003f004d0044004e002c00200030",
            INIT_2D => X"001cfffaffe7000f0015fffc000b0020ffedfff9ffc4ffc9ffa8ffbaffdcffcb",
            INIT_2E => X"ffbdffcdfff2ffe4000e001b00000002000b00000009fff5ffeb00030016001f",
            INIT_2F => X"000000250008fff5ffedfffbfffbffe8ffebffdeffdd001b00350019fffdffff",
            INIT_30 => X"001c00030009001800290026fff9000fffe7000bfff3ffe700190015ffeaffde",
            INIT_31 => X"fff5ffc9ffd9fff4ffe8ffd6ffb6ffccfff8000affffffdeffdb0007fffdffe7",
            INIT_32 => X"fff70019fff7001200130011ffef001000070017fffbffe4fffd000ffffd0009",
            INIT_33 => X"0004ffee0007ffddffd7ffe0fffaffceffecffe4fff9fff7fffa001afff00010",
            INIT_34 => X"000affe8ffe100240017ffc1ffc9ffc7ffcfffb90009ffc6ffbcffcf001c0016",
            INIT_35 => X"000f001e0019ffef001e00010002ffe60006ffe0000a0004ffeffff2ffdfffff",
            INIT_36 => X"000500140019001900020012fff200350022ffec00000003ffd3ffd7000afff5",
            INIT_37 => X"ffeb0003ffc0ffc2fff7ffd2ffdfffd10005fff6ffe6ffdaffefffd2ffe3ffe4",
            INIT_38 => X"ffecffe6ffe9fff400250015fff8fff8fff90023fff6fffa0002000d00210014",
            INIT_39 => X"fffc000bfff1002100080010ffedffe3ffdfffc5ffcaffe90012fff3ffddffe9",
            INIT_3A => X"fff7ffd2ffe3ffe0ffe6ffedffdeffe3000f000ffffb0004fff5fff1001bfffb",
            INIT_3B => X"ffe000130003ffee000600060005fff700150002000800230001000e0019001a",
            INIT_3C => X"fffe000c00310007fffa0008fff3ffe3ffd5fffdffdaffdb0004002c003e0006",
            INIT_3D => X"000f003f000800350016fff4000a0005fff5ffdb0000ffd0ffef000bffe6ffdd",
            INIT_3E => X"000e000bfff50008001dffe7fff8000e0036002d0010001e00370010002b001b",
            INIT_3F => X"ffe4000b0007001700080019fffffff0000c00110000ffebffc3ffc5ffc5fffe",

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
            INIT_00 => X"ffd1ffdb000effe7fff7ffd7fff5ffebffd3ffd7fff0001b001400010008ffdb",
            INIT_01 => X"ffe8fff9000c000bffedffd0ffefffdafff8ffe5ffd8ffc1000bfff2ffea001c",
            INIT_02 => X"0015001700280022000d0025ffe700000004ffe20014ffff0006fff4000afff4",
            INIT_03 => X"ffd4ffe60006fff0ffe8ffe2ffe7fff50035fffc0001fff7ffec000b0014ffce",
            INIT_04 => X"fffc001c00110006ffef00180009fff30008ffec000e0009001b0028fff6fff4",
            INIT_05 => X"000dffedfffffffbfff8fff200000000ffbefff8ffc4ffcb0000fff00010fff6",
            INIT_06 => X"fff70006001800280007ffd5ffdcffcfffc2fff0ffd0ffcbffc9ffcefff10007",
            INIT_07 => X"0008ffe5ffdcfff9fffcfff8ffd9ffdc00080002ffedfffe002c000e001b000d",
            INIT_08 => X"fff9ffe1ffdfffde0017ffff0004fff50017fff80006ffe4fff1001dffeeffea",
            INIT_09 => X"ffe9ffef0037001fffe20009000cfff300000010000c0039001a0020000c001f",
            INIT_0A => X"fffb0026001cfffa001b000bfff3ffeffff2fff40014000afff7ffeefff1ffdb",
            INIT_0B => X"ffdfffc4ffd5ffe9000100050020ffccffd10000ffe1ffc00000001fffb7ffce",
            INIT_0C => X"ffb9ffbeffd4ffa50003003b0036003cffe3fff7fff10001fff1fff1fff3fffe",
            INIT_0D => X"001c001a00300009000b00270000ffed000efff2000a0010002600350024fff9",
            INIT_0E => X"ffe70019fff8000affecffe000090005ffe4fff2fff8ffe6fffa0001ffde0001",
            INIT_0F => X"ffdbffa7000b0017ffe000150003ffe800190014fffd0010ffe7fff20017fff2",
            INIT_10 => X"0001fffdfff1ffe3001ffff0000eff9d0000ffefffcc0006fff0ffeb0006fffd",
            INIT_11 => X"ffe20007ffdffff40013000b000b0017000d003000180004fff4ffdc0002000e",
            INIT_12 => X"fffaff8b0022000bfffe0050002a0001003b00390007fff5ffeafff5001affea",
            INIT_13 => X"fffc002e00200019ffdd0015ffe4fff0ffe0fffb0005000d0007001400130029",
            INIT_14 => X"0008003c0056fff60007003e0042002d0033004c00600037003d003e00570014",
            INIT_15 => X"0047001500450041006b0011002b001b001f00240039001500070024001cfff9",
            INIT_16 => X"00150018fff1ffff000bffe2fffd0006ffe70005ffdfffe3fffdffc7ffb70001",
            INIT_17 => X"ffe5ffbffff4000affd2ffe60010ffdfffa8003a000effc9ffefffd9ffe5fffe",
            INIT_18 => X"ffcaffabffdcffe6ffccfff6ffdaffdcffff0003ffe7001f0017fffa00090005",
            INIT_19 => X"0018ffe0002000230001000d0008ffbfffe3ffd8fff9ffcaffbeffe3ffccffdf",
            INIT_1A => X"ffebfff7fffc0003fffffff90013fff900000034fff20016002afff1ffca0036",
            INIT_1B => X"0003ffaa0006ffcaffb40027ffd5ffed002effefffee0033001affc00063002f",
            INIT_1C => X"fff80040004e00020034001bffc9001900060004ffbb0024002e001d0023ffeb",
            INIT_1D => X"ffef00030015000900000021ffdfffc50048ffeaffa400090011ffb3ffe3ffed",
            INIT_1E => X"000a001efff20002001dfff30018000bffeaffe20019fff5ffdbffe7ffe6ffed",
            INIT_1F => X"ffe70002ffe0ffca0043ffe8ffb10031001fffc5000900260021001000130030",
            INIT_20 => X"fffffffa0018ffffffe2fffd0038ff9ffffe0056fff4ffbeffb9ffe3000cffb3",
            INIT_21 => X"ff5dfffcfff4ff85fff80002ffe1ffc5fff7ffd3ffd1ffe6000effec0010ffe4",
            INIT_22 => X"ffd600090016ffde0014001affe6001b002f0013ffeb002a0059ffca001f0059",
            INIT_23 => X"ffe1fff2001d000b00150009002cfffefff4ffc8ffeaffc20013fff4fff20006",
            INIT_24 => X"ffdfffd4000cffec00120013ffe800000001ffee0007000700030007000e0000",
            INIT_25 => X"001600000018001900570037002900740083007200360056002ffffa0009fff6",
            INIT_26 => X"ffeefff2fff7fff30006fffdfff00013000dffec0033ffee000c000a001b000f",
            INIT_27 => X"0014001bffee0017ffe9ffd1fff9ffdffff8002e003800080026ffe5ffecfff4",
            INIT_28 => X"ffd6ffe50008ffddffe80001fff40000fffa001f0022000f002f00580039003a",
            INIT_29 => X"0036001a0020000f000efffbffdf0027ffd3ffe7fffdffd60000fff8000c0003",
            INIT_2A => X"000400300001002b0026001e003400310029002a0030003c002f003f001effe5",
            INIT_2B => X"fff40004ffedffefffe8fff900140007ffd700120012ffd10000000bffefffd3",
            INIT_2C => X"000700000006ffcbffe5ffdbffd7ffc5fff1fff400060004001c001afffc004d",
            INIT_2D => X"0035001effe9000dfffc0011ffe0ffe3001b00010003001fffe5ffdd0014ffff",
            INIT_2E => X"0016000c00130019000c002a001cfff7003100080021fffc0022ffc900000003",
            INIT_2F => X"ffc3ffaeffd0ffafffd1ffa5fff90000fff9ffdcffbbffe9fff3ffe2ffc0fff1",
            INIT_30 => X"0023005dff96ff9bfff8ffaaffd2ffb1ffe9fffe000affd8ffe00024ffcd0007",
            INIT_31 => X"ffdc000a000ffffbfffc000200160014fff4ffe9001c000a000800050004003a",
            INIT_32 => X"fffeffdf000cfffd000b0028001cffff0040004500250036fff5fff9ffedfffb",
            INIT_33 => X"fff8ffefffefffd60001001dffff00030004003300190004001c002bfff6ffe9",
            INIT_34 => X"001bffcdffd9ffd5ffe8fff4ffc4ffec00150019fff500150033fff4fffa0000",
            INIT_35 => X"fff8fff6ffe8001bfff8fffc002b0022003700060003ffec000dfff5ffe80010",
            INIT_36 => X"000e001700040009fffdfffaffe6fff1000affef000f0026fffe001400120008",
            INIT_37 => X"0012000d001dfff60000ffec0023fff700090019002f003200450017fff0ffe0",
            INIT_38 => X"003e003f0007003700380030fff4fff0fff7ffe5ffc50015ffd0ffc6002d000d",
            INIT_39 => X"0001ffbcffe8ffcfffd7ffc3ffc4fff1002ffff3fff2fff10032ffe9ffc2ffeb",
            INIT_3A => X"ffe6ffec000e00090031fff30001002cfff60023ffe4ffdb0021ffcc0000ffcf",
            INIT_3B => X"ffc8ffe3fff9fff3000f00000003ffda000afffbffe00010ffa8ffb0ffeaffcd",
            INIT_3C => X"ffc3000fffc2ffe80005fff90018002dffedffe6fff9002400160037001afffb",
            INIT_3D => X"0010002100040007001c0003000affd0ffe4ffeeffbdffe4ffbcfff00034ffe3",
            INIT_3E => X"000c0009ffdd0012ffeaffe80007ffe2ffe400140003004300200001003c0000",
            INIT_3F => X"fffb00390000ffed001fffd500030026fffb0021001e002affe8ffd4000effb1",

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
            INIT_00 => X"001dfffdffe2001cff9affdb0009ffbafff4ffe7fff6fffbffe2fffd001efffb",
            INIT_01 => X"fff10000ffe6ffe7fffbfff5ffdd00230046ffe6003200530016001f00340016",
            INIT_02 => X"0018fff10029ffd5ffd10016ffec0000001dfff9ffb60020ffa8ffb7ffe0ffaa",
            INIT_03 => X"ffa4ffe7ffdf0001ffdbffe00018ffd6ffe4003b002f0007ffa7005dffb9ff8e",
            INIT_04 => X"0021ff85ffc2ffde00160037fff90019002800050031002affd70021001effdd",
            INIT_05 => X"003c005afff800430054fff30024003fffee001c0030ffe4001dfff90011ffff",
            INIT_06 => X"0008fffeffe0fff7ffeb000800170013000affb50023ffd7ffd0fffaffc0ffb8",
            INIT_07 => X"000fffd2fff10002ffe90000ffe80019000affecffecfff40027fffcfff30012",
            INIT_08 => X"fffd0004ffe8fff5000d001bfff2001e003700170024001dfffcffd800100012",
            INIT_09 => X"001800170039000a00390031001bfffd0040003c0023005200470007001dffec",
            INIT_0A => X"001e00010019000400230022ffe4ffe200100015ffd6ffeefff8fff2ffb30027",
            INIT_0B => X"001a0047002a000a0048fff4fffb001affd6ffe8000dffc3ffbeffb3ffb1ff9c",
            INIT_0C => X"ffe0fffeffe8ffe10021fffcfff6002a00310012ffc0ffe6ffc6ff82ff6bff84",
            INIT_0D => X"ff67ff53ff6affe5ffe1ffec00010002ffeb001a00150032ffd8ffdd0000ffc6",
            INIT_0E => X"ffa4ff8dffefff9dffab000e0001fffe0005003d00230018002f0035000effee",
            INIT_0F => X"000600220010fff200000022000c000b0034fff1ffcc002b0017ffcdffe0ffee",
            INIT_10 => X"ffee0000000ffff1fffeffe800000020001affd2ffdfffa8ffd1fff0fff2ffe3",
            INIT_11 => X"fff2ffefffd4ffdbffd0ffdbffeeffddfff3ffed0000ffedffc0ffddffdeffe9",
            INIT_12 => X"fff1ffd8ffeefffdffff0009000c001600000004000b000d0022fff40009001a",
            INIT_13 => X"0012ffff000d00070021001d0011ffe2ffeefff5000cfffb001a00150007fff8",
            INIT_14 => X"ffe200190006fff7ffeaffdfffefffddfff5000dffe9fff3ffeefff8ffe7fff8",
            INIT_15 => X"ffecffeeffecffe8000700060020fff600220013ffe0fffeffe6ffe1000effe7",
            INIT_16 => X"fff8ffe7fffdffd6ffc2ffbdffe6ffebffffffc70002000e00140037000e002c",
            INIT_17 => X"0028001900340006000dfffefff9fff2ffebffecfff9ffd70009fff800050004",
            INIT_18 => X"fff7000dffe9ffff001c000e000b0028001900170026001dfff50022fffcfff0",
            INIT_19 => X"fff9ffecffe3fffbffe2ffefffcfffb2ffc3fff4ffeefff60001fff40014003d",
            INIT_1A => X"0012ffef000fffdf0017ffdcffdd0016ffe50006001b0015000f0011fffcffeb",
            INIT_1B => X"000e001700060028fff3ffefffadffc3ffeeffd2ffe00005ffe8fff3fff90002",
            INIT_1C => X"ffbdffe9fffeff88ffd2ffbaffd4fffc0002ffd2ffcd0000fff1ffccfffcffe2",
            INIT_1D => X"00290039ffb1ffbdffdbffc0ffc9ffe1ffdeffe1fffaffc5ffcdffe2ffccffbd",
            INIT_1E => X"ffedffee00200020001affed00130000fff10002fff900060013ffe4ffedfffb",
            INIT_1F => X"fff20000000b001fffe1002900170001002c001300160015000dfff300160009",
            INIT_20 => X"001a0001000f001700270005ffedffadfffd000dfff20011001a001900190016",
            INIT_21 => X"0024ffd7000cfff8ffbefff8fff00023000fffd3002d0017003b002c00030013",
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
    end generate MEM_IWGHT_LAYER1_ENTITY4;


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
            INIT_00 => X"00120012000f00140017000d000f001d001d000a000000010006000c00150016",
            INIT_01 => X"0012000f00130013000400080003000000040000000000000005000b0000000b",
            INIT_02 => X"0013001b0012001b0020001e000000000000000000000000000100010000000c",
            INIT_03 => X"0019000b00110000000000000000000000000000000000000000000000030003",
            INIT_04 => X"0000000000000000000000000000000000000000000000000000000400000000",
            INIT_05 => X"0000000000000000000000000001000000000000000000000004001c00000000",
            INIT_06 => X"0000000000000000000000000000000000000000000000000002000000000000",
            INIT_07 => X"0000000000000000000000000000000b000000000000000000000000000b0000",
            INIT_08 => X"000000000000000b000000000000000000000000000000000000000000000000",
            INIT_09 => X"0000000000000000000000080000000000000000000000000000000000000000",
            INIT_0A => X"0000000000000000000000000000000000000000000b00000000000000000000",
            INIT_0B => X"0000000000000000000000000000000000200000000000000000000000000000",
            INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_13 => X"000b000000000000000000000000000000000000000000000000000000000000",
            INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_15 => X"00000000000000000000000000000000000000000000000000000000000d0000",
            INIT_16 => X"0000000000000000000400070000000000000000000000060000000000000000",
            INIT_17 => X"0000000000010000000000000000000000000000000000000000000000000000",
            INIT_18 => X"000000000000000f001a000f003f000a0000000000000032003a003800250020",
            INIT_19 => X"00220029002500270020002c003a00000000001e001d001d00200020001f0024",
            INIT_1A => X"001e0022002800210030002f002f000e000f00210019001d00220023002f0033",
            INIT_1B => X"00340028003a0029003300310041002a0030002a001f0017001c0021002d001a",
            INIT_1C => X"001c002900000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1E => X"0000000000000000000000000000000000030018000e00060000000000000000",
            INIT_1F => X"000b0000000000000000000200010000001b000000060000000000000000001e",
            INIT_20 => X"0000000000110014000500030000001d00100000000800000003000f00170000",
            INIT_21 => X"0000001a000a000600040000004400030000000b000000020017000b00000000",
            INIT_22 => X"000c001e000b00000000003700000004000a0011000200200014000600000006",
            INIT_23 => X"002d000000000000002000000000001100080000001d00280004001100080000",
            INIT_24 => X"0000000b000b0000001000000006000000000018002400000027000e00090012",
            INIT_25 => X"00120015000000000000000c00000000002b002300000058000d0028002d0011",
            INIT_26 => X"00000000001b0022001f000b0000003600230012004500000007001f0021001a",
            INIT_27 => X"001e00220028002e002f002f002a00380033002500000027002500240024002a",
            INIT_28 => X"002f0036002f002e003a002c002e005200000013002b0026002a002a002f002e",
            INIT_29 => X"002f002a00450028002b0033002c00190019002800230024002e0031002d002e",
            INIT_2A => X"0043003a001f0000000000000000000000000000000000000002000a00000000",
            INIT_2B => X"000000000000000000000000000000000010000800170000001f001c00030000",
            INIT_2C => X"0000002a00000000000000000000002b0011000000000042002d003f00000000",
            INIT_2D => X"0071000000000000000e00000028002c00250000005a0026003b002a0000006c",
            INIT_2E => X"00050023000000340024005d0048003c0000002f0052001e003e000000590031",
            INIT_2F => X"003700000000002c0061003e006000000073005c001200310025004800730015",
            INIT_30 => X"003800000000005a004a006a0000007500470012000c0037004d006500280031",
            INIT_31 => X"00000006008b003800460000004f0050000600250013006800420084000b002a",
            INIT_32 => X"0013002e002c000000290016005b000400000000004a003a009f000000640018",
            INIT_33 => X"0000004d0030003b005a001700000000000c000f003c009400000093004c0020",
            INIT_34 => X"007100830041001a001d002300200031001d002b004e000000d80073003a003c",
            INIT_35 => X"00470038003d003c003e0040004f005f00120000008200af00420049003f003e",
            INIT_36 => X"00390038004000500048003d006a0045000000cb005a0039004d0042003c0041",
            INIT_37 => X"0048004d004e0038007b0076004b003e00540048003500430044003800440055",
            INIT_38 => X"003a001a006f0080000000000008000800060003000500000004000000000000",
            INIT_39 => X"0000000600050007000a000c0007000a0049001a000000000000002400060000",
            INIT_3A => X"0000000400000000000400040007000000000000000d001a0015000700170000",
            INIT_3B => X"00000028002500090005000d00000037001b0005000000000000000000010000",
            INIT_3C => X"0026005a0013000b008000560006000e0000000000250025000f001800000000",
            INIT_3D => X"00000008000000000000002a001a001f003a0000000000000009002700060007",
            INIT_3E => X"00000004000000210000000a000900110000000b00000017001d00150007001c",
            INIT_3F => X"00100019001600000000000000000000000000000000000000100004000b0004",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"001c00000000001a000400000000000000000003002f00000000000900040011",
            INIT_41 => X"00000000004a000c000000000000001b001f00000000000000000046009c0085",
            INIT_42 => X"002800000000000000200041001b0000000000000000000f0046000000000000",
            INIT_43 => X"0000000000000000000000000000000000020000000000000000000000000000",
            INIT_44 => X"0000000400070012000000000011000000000000000000000000000800000000",
            INIT_45 => X"0000000000000000001300000000000000000000000000000000000000140013",
            INIT_46 => X"00040000002800220000009d00a300a200a500a4009d00ac00b700ad0094007c",
            INIT_47 => X"007c00840092009200a200ad00a800ac00a0008c00a900a0007a003a002e003e",
            INIT_48 => X"004e006e008b0089006a00ac00b000af008e00730048002d0007001e000a0027",
            INIT_49 => X"003a0067004d002b00a400aa00a20059004d00270015000c0033002d001b0025",
            INIT_4A => X"003a0017001f00940060004e00470043002f001f0000003100390017001c002f",
            INIT_4B => X"00160012008e00990025003b00450031002d0000003e002a001000120017000e",
            INIT_4C => X"002a0062009f002f0032003e002d002f0000003200280010000e0026001c000a",
            INIT_4D => X"002c006200370026002e00270029001e002f002d00090022004100140000002b",
            INIT_4E => X"000e0055002200360030000d005400420026000f002d00790010000500240000",
            INIT_4F => X"0035002000080028002d0034001d000600090062008a00000015002300000017",
            INIT_50 => X"001a0000000000060000000000000000000000000000000000000006003a0000",
            INIT_51 => X"0000000000000000000000000000000000000000000000000034000000000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_54 => X"0000000000000000000000000022002300250020001e002700260024001d0017",
            INIT_55 => X"001a00260024001e00180023002c002a001f00280020000f001d000e001d0000",
            INIT_56 => X"00090020002b001c00060039002800210027001a000000060021002e00000000",
            INIT_57 => X"00000025002c0000004c00210029000f00240004000000000048000000090000",
            INIT_58 => X"0000004a00000026000200560009000b00000000000000590000000000060000",
            INIT_59 => X"002b0000000a0000001a003e0013000000000000008e00000000001400000000",
            INIT_5A => X"0000000000200000003f0036000000000000006600000000000a001500000000",
            INIT_5B => X"00000000000000380042000000000000004200000000001d000f000800000002",
            INIT_5C => X"0000002100040011000000000024000000250000001e00210023000000000000",
            INIT_5D => X"002c0000000f00270000000200050000000c003000340014002a000400000078",
            INIT_5E => X"0000000000220000000000000008000900010000000000200014000000400000",
            INIT_5F => X"0000000000000000000000000000000000000000000000210043000000000000",
            INIT_60 => X"00000000000000000000000000000000000000000000005d0000000000000000",
            INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_62 => X"0000000000000000000400000000002b0030002d002c002f00290030003a0037",
            INIT_63 => X"002a002500260027002a0031002c00350030002e002d0000001f0029003b000c",
            INIT_64 => X"00000000000e001f0025001c0029002e00350032003b002d0023000000000000",
            INIT_65 => X"000000000004001a000000000023003200250019000000000000000000000000",
            INIT_66 => X"0006000000110000000000120018000000000000000000000000000000000000",
            INIT_67 => X"0000000500000000000b00380003000300000000000000000000000000000000",
            INIT_68 => X"0000000000000007003a00070000000000000000000000000000000000000000",
            INIT_69 => X"00000000000000000002000000000000000000000000000000000000000d0000",
            INIT_6A => X"0000000000000000001a000500000000000f0003001800040000000800000000",
            INIT_6B => X"000000000000000000000000000000080011000a00000000001f000000000000",
            INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_70 => X"00000000000000000000000000000000000a0011000800080004000c000c000b",
            INIT_71 => X"000b0021002d00230011000800060000000a000a000c00080000000500230042",
            INIT_72 => X"000000000000000a0017000a0035003300050008000500370016000900000000",
            INIT_73 => X"000000000000000e000c000000000005000800080000000000020000001a0004",
            INIT_74 => X"001000060000000e000100000002000e00000000000900000007000000000000",
            INIT_75 => X"000000000000000f000000060003003e00280000000000000000001400150007",
            INIT_76 => X"0000000000000000001c00180012000000310000001100000011000000000000",
            INIT_77 => X"000000000000000000000002003500350021000e0000000900000005000e0000",
            INIT_78 => X"000000010000000000000026000000000000000000260030000000000000000c",
            INIT_79 => X"00000004000000230009000000000000004e0036001100000000001800030000",
            INIT_7A => X"0007000000000000001e0051003700000000000000000005000a00350021000c",
            INIT_7B => X"0000005600280004000500030000000000000000000000000000001600000018",
            INIT_7C => X"003f0000000000000000000000000000000000000000000000000018004f000b",
            INIT_7D => X"0000000000000000000000000000000000000014000000000000002200000003",
            INIT_7E => X"001200000000000000000000000000000000000d0013000a000e000900150008",
            INIT_7F => X"0006000c001c0022001b0013000600020008000b0009000d000f0036000f001a",

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
            INIT_00 => X"001f0034003500240021001a000a00260024000b000a00080051003300280020",
            INIT_01 => X"0053005e004b002b0019001a00330014000e00120019002e0045002f0036005b",
            INIT_02 => X"005d0042003b0015001b0071005e00150035007e00440064003b0033003b0067",
            INIT_03 => X"0038003900250001007f009e0028001300bd007e007d004b002e005b007f0050",
            INIT_04 => X"0047003c0015007a009400430017005a007500a80065004e007800810046003b",
            INIT_05 => X"004c0033008e00a500400039003900a50085006a0050005f0078004c0048004b",
            INIT_06 => X"002600b000b800660073003800660059004e0051003300650041002c002b000e",
            INIT_07 => X"00c000b300860075006f0033005f00790042005a00400025002f0027002700c7",
            INIT_08 => X"00ab008b00a2009e0065009100b90079003c00400047005a0071006800c100cb",
            INIT_09 => X"009d00c900e700a5008a0085007c006f007800800088008a008e008c00a100b1",
            INIT_0A => X"00e500af007a00750070007100760084008c0095009a00a3009d008500a600ef",
            INIT_0B => X"008800800079007300770082008c009b009300a300ab0097008f007f00a70074",
            INIT_0C => X"007f0089007e007c008800860085009a00af008d000000000000000000000000",
            INIT_0D => X"0000000000000013001c000b000000000000000000000000000000000000000b",
            INIT_0E => X"00140033000000000014001e00000000003f0000000000000000003e001c0028",
            INIT_0F => X"00000000000000000007001e00000019000000000000000c0000000000000000",
            INIT_10 => X"00000000001a0006000e0000000000000009000000000000000f0004001d0000",
            INIT_11 => X"00000008000000000025002f00000002004f0003000000000000000600000026",
            INIT_12 => X"001c00000000000000000018000d000d00000000000500000009000000180008",
            INIT_13 => X"000000000000000200000007000000000000003d001e000000000000001c0000",
            INIT_14 => X"0010000000000000002e00000022003200030000000000360026003a000d0000",
            INIT_15 => X"000000000000000a00000012001500000000002e001f00310001000000000008",
            INIT_16 => X"00000000002200000000000000000019000f000d000000000000001600210041",
            INIT_17 => X"00000000000000a20052003f0037000c000600000002000000000000000d0036",
            INIT_18 => X"0000004100560000000200000000000000000000000300000000000200000025",
            INIT_19 => X"003e0006000000000001000000000007000a000000000042000c000000180036",
            INIT_1A => X"0024001300090000000000000005000000000000000400000000000000000000",
            INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_1D => X"00000004001f000000000000000000000000000b000000000000000000000000",
            INIT_1E => X"0005002d00000007000000020001000000020000000000000000000000000002",
            INIT_1F => X"003b000000000003000000100001000600000000002c0000000000000000005d",
            INIT_20 => X"00000000000e000000000000000000000000001c000f00000000000000520000",
            INIT_21 => X"00000012001300000004000000000000000c0017000000050000002d00000000",
            INIT_22 => X"001d00030000000000160000001100000012000000000008000000110000001b",
            INIT_23 => X"00000000000900190000003b0000000300100000000500000000001200120000",
            INIT_24 => X"00000033000d0000005800000000002d00040000000200280033003e002c001d",
            INIT_25 => X"007000360000003b0000002e004e004e00440049004f00560058005a0053005a",
            INIT_26 => X"006f00480008000000490048004a004c0054005b005b0057005d005e005a0060",
            INIT_27 => X"008a0000003100500045004d005300570061006400610074005e005000670067",
            INIT_28 => X"00410049005f00550049005200520052005e006b00530045002f002e0033002e",
            INIT_29 => X"002f002f0031002f002b0023001c0027002600270024003200320035002d0034",
            INIT_2A => X"00550013002500040021001300150024002d0028001a003b0034002e0038002c",
            INIT_2B => X"00000000001a004f000a000b00040027003900000079002c003600250023001a",
            INIT_2C => X"000800180053000000120000000e005300000063000a0049002c001a00000000",
            INIT_2D => X"0008005f000b0000001e00000039000000380000002e00490000000000000000",
            INIT_2E => X"00bf0000000000230004000d00000015000c000000610050000a0000000000a4",
            INIT_2F => X"00000000001e0027000d000000000001000000450068000000080000007c0000",
            INIT_30 => X"0000002a00220012000000170000003c001100030000001c0031000600220000",
            INIT_31 => X"0026003a0044000a00180000004a00000019002a000e0017000a000000050048",
            INIT_32 => X"0056001c00510011000000a30000000b005600000000000000140028002d001e",
            INIT_33 => X"0000004000280000009800000000000000000000000900100010000e00110000",
            INIT_34 => X"000300410048001f000000090005000a00080010001400170010000800170000",
            INIT_35 => X"0010007400000000001100000009000d0010000d00090000002600000000000d",
            INIT_36 => X"0019000000000016000c0009001800100000000b003100030000000000000000",
            INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_38 => X"0000000400000000000000000001000000000000000000000000000000000000",
            INIT_39 => X"0000000000000000000000000000000000000000000400120000000000000000",
            INIT_3A => X"0005000000000000000000000000000000000001002700000000003800080000",
            INIT_3B => X"0000000000000000000000000004000000000000000000000000000000000000",
            INIT_3C => X"000000140000000000000000000f000000000000000000000000000000000000",
            INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_3F => X"0000000000000000000000000000000000000000000000120000000000000000",

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"001100000000000000000000001e0030003e0000000000000000001c00240001",
            INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000002",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"00000000000000000000000000000000000000000000001300000000002f0036",
            INIT_45 => X"00330035003500300039003b0036002b00200020002500280027003000380036",
            INIT_46 => X"003900330042003b003900230002000200060006001100270030001300360039",
            INIT_47 => X"0037003d001e0000000000000004000000010000001700150000003200370040",
            INIT_48 => X"0012001e00000000000000170000000000000000000000120034001000440033",
            INIT_49 => X"0025000600000000001000090000000000000000000f00310038000b000d002b",
            INIT_4A => X"0008000b0000002a00000000000000000000002c0007003d000e0011002e0017",
            INIT_4B => X"0008000300130000000000000000000400190000002500000022002e000a0000",
            INIT_4C => X"0013000f00000000000200000015001100090000001c00000000000c0000002c",
            INIT_4D => X"000000000000000000210016000e00140000000300000000001f000600050000",
            INIT_4E => X"00000000001e00280005001400150000002c0006001100170000000000000000",
            INIT_4F => X"0000000000000000000000000032003c00000000000000000000000000000000",
            INIT_50 => X"00000000000000000000004f0000000000000000000000000000000000000000",
            INIT_51 => X"0000000000000000002800000000000000000000000000000000000000000000",
            INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000027",
            INIT_53 => X"002200230029002c00200028002b002f00320029001d001e0029002e00280024",
            INIT_54 => X"0024002c0021000e00430030002e00050021002900190015002c003f00020028",
            INIT_55 => X"0029002a00200028002400100000001c000c0032001a000b005c0000002e0024",
            INIT_56 => X"0038000c002700250019000000230018001a00260000002c0005004100000013",
            INIT_57 => X"0027002a002400250000001400380012002b001a002400000037002f00000000",
            INIT_58 => X"00160025004300000034002a0007001d002000110024000e0046000000000015",
            INIT_59 => X"001c00390000002b0028000d00000025000b000600290034000200000035000b",
            INIT_5A => X"001800000011002c00000011000d000d0000003f000000340000000e001b0000",
            INIT_5B => X"003f0005002b00000000001a0000000000390000002a00140000001d002c000f",
            INIT_5C => X"002f000f00000010002f000000000038000000290032000000050027002b000f",
            INIT_5D => X"0008000800110021000000000000000000520005000000000000000700030000",
            INIT_5E => X"0000000000030014000000000022002e00000006000200050001000000000002",
            INIT_5F => X"000000000009000000000022000d000000090006000000000001000000000000",
            INIT_60 => X"00150013000000000004001400000000000000000000000c000000000012001a",
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

            -- The next set of INIT_xx are valid when configured as 36Kb
            INIT_40 => X"00000000000000000000005a005e004a002c002600310047003c003600000026",
            INIT_41 => X"0026003a003e0050000e000200460031002e002d003f00350026005a00440035",
            INIT_42 => X"00490044001c00000008002c0000001d00000002000000000000000000000000",
            INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
            INIT_44 => X"0000000000170000000a000000320011000000110000004c00000000002e0000",
            INIT_45 => X"000200000076001c00000011000000000000006e0012007b0086001a0018003e",
            INIT_46 => X"000000af003d003300350048004c0116010a00be00d10074006c00c100be00f0",
            INIT_47 => X"0096001500350003002b0055003e007b001c0034000000100040006400570011",
            INIT_48 => X"000a00000040001f004000300027002f00170076003700000000000000000000",
            INIT_49 => X"00000000000000000000000000000000000000000000002b0000006c00000009",
            INIT_4A => X"000000000097000000650084006f0000000000ed000000b0006200c400790000",
            INIT_4B => X"005300000092000000460000002500760053001f00000000000000a200000024",
            INIT_4C => X"00000000000600110000000b00000000000000060000001e0011005c00320024",
            INIT_4D => X"009e0050008a00340046002c0026004200360059002e0097002200360022002a",
            INIT_4E => X"0031003500270000001f001700af00a6002b003700660021001c009a00bd0028",
            INIT_4F => X"0000001000000000000000000000000000000000000000000000000000000000",
            INIT_50 => X"00000000000000000000000000000000000000000000000000000000000b001f",
            INIT_51 => X"000000000000000000000000003000180005002a0020001900000047007e0086",
            INIT_52 => X"008a00a700b300b000d0007d00ae00a300ac00bf00e100000002000000000000",
            INIT_53 => X"0000000000000004002f002a0000004e000000000065000000530000003a0000",
            INIT_54 => X"0011000500000050000000250000001c0000008b000000000000000000000000",
            INIT_55 => X"000000000022000000040000000000120018000d0024000a0000000000000000",
            INIT_56 => X"004d00000004005000120000000000330000001e0000003f0000000000910000",
            INIT_57 => X"0000000000250000000000000000000000000044000a00000000007700000000",
            INIT_58 => X"00000000000000670042000500a600000061003000410038000b000000030000",
            INIT_59 => X"000000000000000000000029004e002300000022000000230000002d006f0000",
            INIT_5A => X"0005002e005c000000000000000000000000002b0003002e002c000000000000",
            INIT_5B => X"0000000000000000005e005e00530000000000000030003600300039009000b0",
            INIT_5C => X"00a200670067004a0068006a00b400790025003b001400430034006a00420000",
            INIT_5D => X"00340000002400000022002c000000270000003c000000330017000800000000",
            INIT_5E => X"0046000000000000000000000000000000000000000000000000000000000000",
            INIT_5F => X"00000000000000000017000000000000000000000016000a002d000100000000",
            INIT_60 => X"000300170012002f0045001e000000080015000200000060004200390027003a",
            INIT_61 => X"003a0026006900070048007e007e0088009600bb006600920096009e00a900ab",
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



end a1;
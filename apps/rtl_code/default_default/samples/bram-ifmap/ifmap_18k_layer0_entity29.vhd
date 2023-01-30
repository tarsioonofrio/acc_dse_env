-- https://docs.xilinx.com/r/en-US/ug953-vivado-7series-libraries/BRAM_SINGLE_MACRO

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

entity ifmap_18k_layer0_entity29 is
    generic (
        DEVICE: string := "7SERIES"
        );
  
    port (
        RST  : in std_logic;
        CLK  : in std_logic;
        EN   : in std_logic;
        WE   : in std_logic_vector(2-1 downto 0);;
        DI   : in std_logic_vector(16-1 downto 0);
        ADDR : in std_logic_vector(10-1 downto 0);
        DO   : out std_logic_vector(16-1 downto 0)
    );
  end ifmap_18k_layer0_entity29;

  architecture a1 of bram is

    begin

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
       INIT_00 => X"00d100ca00bf00b600d100d100c600af00ab00a5009d00a00095009a008d008f",
       INIT_01 => X"00a400bc00d600db00d100ca00d900d600d000b100a100ad00b7009d00950095",
       INIT_02 => X"00d400d400d200cd00cf00db00c800a300a500b600b800b600c200c900cd00d7",
       INIT_03 => X"00df00e300e300e400dd00d400d300d700df00cd00c300bb00c600aa00ad00ba",
       INIT_04 => X"00e600e500e300e200e300ec00d300a4009f00ad00b700b800bc00bf00cf00e0",
       INIT_05 => X"00db00e500e000d600d600d000c800d300de00e000db00c500b900bc00c500c6",
       INIT_06 => X"00f500f400f400f100f200f100e300af00a800b000a100bb00ae00a000b800b6",
       INIT_07 => X"00b900d500d000ca00b900ba00c400d400d700dc00d500bb00a900c500d400c8",
       INIT_08 => X"00f500f300f400f400f500f100cd0084008b00a1008a00a7009f008b009b008d",
       INIT_09 => X"008e00a6009900a400a900a900c400e000d100d100d400b100a000b800cc00d2",
       INIT_0A => X"00f500f400f400f300f600ee00d700810071009c00a000aa00aa00aa00b100a7",
       INIT_0B => X"009d009d0098008f009400b300cd00e400da00ce00c100aa009300a000c000df",
       INIT_0C => X"00f500f300f300f400f100dd00dd00b4008300b400c400cf00c800cb00d900d3",
       INIT_0D => X"00cc00c300c000bf00a300a600cd00e100e300d500b100a90091009200b200da",
       INIT_0E => X"00f400f200f200f700e600ca00d900c0008600c200e000e800ea00d700ce00d1",
       INIT_0F => X"00cf00d000ca00cf00e000b4009a00cc00dc00c900c400bc00ab0092009a00c7",
       INIT_10 => X"00f500f300f300f500e300d100df00ae008700ba00c100c100dd00cc00c100c9",
       INIT_11 => X"00ca00cd00cd00c600dc00d000a300bc00cb00d100df00cb00a1008b009400b2",
       INIT_12 => X"00f200f100f300f200e500cd00c200a4008c00c100bd00b800ca00c400c000c4",
       INIT_13 => X"00c700ca00d000c600d700e000bc00c800e600ee00ed00e300bc00ba00ca00d3",
       INIT_14 => X"00ea00ee00f300f400df00a000a9009c008600b100b300ac00ae00ae00b400b7",
       INIT_15 => X"00bb00be00bc00be00cd00dc00d000c400d900e600f600f400f400f400f400f4",
       INIT_16 => X"00d300e600f200f200d800b600be0097006a006e009300a0009e009f00a600aa",
       INIT_17 => X"00a900a3009e00a600ad00bd00c600af00b700e000f800f300f400f400f400f4",
       INIT_18 => X"00c400da00e900e100bd00b400c3009f005d005c008d00a000ba00a8008f008c",
       INIT_19 => X"008b0089009200a700980083008f009600bc00e300f300f400f400f400f400f4",
       INIT_1A => X"00c300c700d300c100a4009500a20089009600aa00b200a600bd00cd00a60092",
       INIT_1B => X"009900ac00c000d300af00800080008a00a000b100bf00d300ef00f500f300f3",
       INIT_1C => X"00c200cf00c800a2009c0088008e008900a200b200b1009f009600a30095008b",
       INIT_1D => X"008d0092009200930086007c007f0085009500a300ad00a600cc00f500f300f4",
       INIT_1E => X"00c300d000ad006e0071008b00b400b90085009a007f00570049004c0059005f",
       INIT_1F => X"005c0060005e00580056005600630067006d0074008f009b00af00e800f500f5",
       INIT_20 => X"00b700aa00a100650060008800b500a10080008400810087008c007d007d006a",
       INIT_21 => X"0035002b002c0027004d004700230028002000500091009700a700db00f600f3",
       INIT_22 => X"00ca00c100c2007c0078009200990049006900870083009400b8009f00a90083",
       INIT_23 => X"006600760084007a00af00aa006f0073006f009100b200b500bb00c500f200f4",
       INIT_24 => X"00d800c800b800720073009d00820024004f009500810063006f0081009d0084",
       INIT_25 => X"00b100c100b700b900c800c100ba00bd00b500c700b60097009400a200e800f6",
       INIT_26 => X"00d900cc00bb00710060008b0071003d004e00700073005d00550053005e007d",
       INIT_27 => X"00bf009f007f008a00a00095008c008f008a00bd009f00630073009a00e200f7",
       INIT_28 => X"00d500d000c700750049005c00630054004b004100610069005f00570067005f",
       INIT_29 => X"008600a200990097009600900089008f00930099008f006f0073009200de00f7",
       INIT_2A => X"00cc00ce00cc008300650051005c005a0046002d003900450062006f007d0057",
       INIT_2B => X"004a00660070006700620065005e007d0073005200710095009a008900d400f8",
       INIT_2C => X"00d100d000ce00750069007a0056005e005600360033002f0066008300ad0063",
       INIT_2D => X"002d0064009e00820079008a007c00ab00bb004b005f00ab0098007500cf00fa",
       INIT_2E => X"00dd00d600cc0068003b007400720080007c00410034003000380046006c004b",
       INIT_2F => X"0030005f00a6008f009100a7008f00af00af004a004800620054006800d600fb",
       INIT_30 => X"00d700d400c90063002f0044008000b0008700500038002d00280027002b002f",
       INIT_31 => X"0037003c0050006e007d00930090008b005c0043004600430045006d00d900fb",
       INIT_32 => X"00cf00cf00cb009d00730075008500aa007e006500480030002800290029002d",
       INIT_33 => X"00320027005300c000da00dc00c700c9006b00340038003f005a007e00d200f7",
       INIT_34 => X"00bc00c000ce00d800bf009a008600a1007900730068003e0021002200230029",
       INIT_35 => X"00330031005500b300c700c000be00bb0060002700260042006f008500d100f5",
       INIT_36 => X"00bf00c600cd00c600b5009e008400a000720076006f004600270026002c0031",
       INIT_37 => X"0044005d0069007e0087009600ad00a600480028002a00470071008200cf00f2",
       INIT_38 => X"00ce00d100c600b800ab00a300820085006b006f0068004d0032002f00350039",
       INIT_39 => X"003f0048005700680078009100a800b000450028003000470066007e00d400ee",
       INIT_3A => X"00c700c200c200bd00b200a600860065006300690060004f003e0036003b003e",
       INIT_3B => X"00410045004e0057006400740081008f00570027002c00470059008500df00e8",
       INIT_3C => X"00c100bc00be00bc00bd00bc00900050005a00630058004600490045004a004e",
       INIT_3D => X"004e004e0056005d00610066006d0072005e00300030004a006400ad00e800e7",
       INIT_3E => X"00c400c700d000cd00c800bb00a50055004c004c004e00540054005900620063",
       INIT_3F => X"005e00630072007c007d00810080007f0070005b00540060009400cc00e100df",

       -- The next set of INITP_xx are for the parity bits
       INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",

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

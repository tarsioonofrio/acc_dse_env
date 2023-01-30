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

entity ifmap_18k_layer0_entity5 is
    generic (
        BRAM_SIZE: string := 18Kb;
        BRAM_SIZE_ADD: integer := 8;
        DEVICE: string := 7SERIES;
        INPUT_SIZE : integer := 8;
        READ_WIDTH : integer := 0
        );
  
    port (reset   : in std_logic;
          clock   : in std_logic;
          chip_en : in std_logic;
          wr_en   : in std_logic;
          data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
          address : in std_logic_vector(BRAM_SIZE_ADD-1 downto 0);
  
          data_av  : out std_logic;
          data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);
  
          n_read  : out std_logic_vector(31 downto 0);
          n_write : out std_logic_vector(31 downto 0)
          );
  end ifmap_18k_layer0_entity5;

  architecture a1 of bram is

    begin

    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
       BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
       DEVICE => "7SERIES",             -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
       DO_REG => 0,                     -- Optional output register (0 or 1)
       INIT => X"000000000000000000",   -- Initial values on output port
       INIT_FILE => "NONE",
       WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       SRVAL => X"000000000000000000",  -- Set/Reset value for port output
       WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
       -- The following INIT_xx declarations specify the initial contents of the RAM
       INIT_00 => X"00eb00e700e800e800e800e800e800e800e800e800e900e900e900e900e900e9",
       INIT_01 => X"00e900e900e900e800ea00ea00e800e600e700e900e800e800e800e900e900e8",
       INIT_02 => X"00ee00eb00eb00eb00eb00eb00eb00eb00eb00eb00ec00ec00ec00ec00ec00ec",
       INIT_03 => X"00e900e900ea00ea00ed00ee00ed00eb00ea00ec00eb00eb00eb00ec00ec00eb",
       INIT_04 => X"00ed00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00eb00ea",
       INIT_05 => X"00e700e700ea00ec00e900ee00eb00ea00ea00ea00ea00ea00ea00eb00eb00ea",
       INIT_06 => X"00ee00eb00eb00eb00eb00eb00eb00eb00ea00ea00ea00ea00ea00ea00eb00ea",
       INIT_07 => X"00e600e700e800e700c500db00d500e600eb00ea00ea00ea00ea00eb00eb00eb",
       INIT_08 => X"00ed00ea00eb00eb00eb00eb00eb00eb00ea00ea00eb00eb00ea00ea00eb00eb",
       INIT_09 => X"00ec00ed00e600db00b300d000dd00e800ed00eb00eb00eb00ec00ec00ec00ec",
       INIT_0A => X"00ee00eb00eb00eb00eb00eb00eb00eb00ea00eb00ec00ec00ec00ea00ed00e8",
       INIT_0B => X"00da00d200cf00c800bd00ca00dc00e800ed00eb00eb00eb00ec00ed00ed00ed",
       INIT_0C => X"00e500e400e700e600e900ec00eb00eb00ec00ec00ed00ee00e600e500ee00e4",
       INIT_0D => X"00cc00be00bf00be00b100ab00b100d300ef00ea00e900eb00ec00ed00ed00ee",
       INIT_0E => X"00de00e900ee00ea00ea00ec00eb00ec00ee00ee00ed00ef00cb00dd00eb00da",
       INIT_0F => X"00d200d200d300cb00c400bb00b900cc00f000ee00ed00ee00ee00ee00ee00ee",
       INIT_10 => X"00f100f300f600f300f000ed00eb00eb00ed00ed00ed00ef00c400da00e700e5",
       INIT_11 => X"00d900de00eb00e300ea00eb00f000f100f300f000f000f000ef00ef00ef00ee",
       INIT_12 => X"00950094009900a100bf00e900e900e800ea00eb00ec00eb00d600e200e800ec",
       INIT_13 => X"00e800eb00f100ef00f700f300e200d300c300ba00b900c900eb00ef00ef00ef",
       INIT_14 => X"008d00850089008900a500e700e100e000e900ea00ea00eb00eb00ec00ee00ec",
       INIT_15 => X"00ee00f000f100ee00d500bf00ac00a3009f0099008f00a600e500ef00ee00ef",
       INIT_16 => X"00e000d700e000df00e300e700d300ce00d600de00e100db00df00e100e600e9",
       INIT_17 => X"00ed00ef00f100ed00d000cb00cf00ca00d300c400a400ca00e900ee00ef00ef",
       INIT_18 => X"00de00d900e000ea00f100e300d000ae00b700d600bc0079007e0084008b0093",
       INIT_19 => X"00a100ae00dc00ed00eb00ee00f000e900ed00e500d400ed00ea00e900f200f2",
       INIT_1A => X"00980093008d009700a500c100cd00cc00e200ea00b7005c005b005b005a0062",
       INIT_1B => X"008100b300e900f100f100ed00e900d900d400dc00df00d600c400cd00e300ea",
       INIT_1C => X"006c007200640066009b00a400a400cf00ea00e400be008a0083008700a800cf",
       INIT_1D => X"00df00e800e300d400c300ae00a30093008c009000980097009300a000cb00d8",
       INIT_1E => X"004d005e00740099009c006e007600a100b600c500c600c800ca00d900ec00d9",
       INIT_1F => X"00ba00ac009f0095008a007b0076007b00800082009100a100ae00b800d500d0",
       INIT_20 => X"0023002f009700dc0096007b008600a200b400d300e100e900e800f000ee00be",
       INIT_21 => X"00a300a200aa00b100bb00b600b600bb00bd00bf00cc00d900da00d000c100b7",
       INIT_22 => X"0018004f00d900ef00d400d300da00e500ed00f600f500ef00dc00ef00f100ea",
       INIT_23 => X"00e400d600e600e500e700ea00e800e000d400d100c500b300a900a1009e00a5",
       INIT_24 => X"004700b300de00d800d900e500e600e300e300e400e400dd00cf00d700c100bc",
       INIT_25 => X"00b800c300ba009c00a100b400ad009e008a008700850083008c0097009e009c",
       INIT_26 => X"00a100cf00c200bd00bb00be00c000c100c000be00bd00bd00bc00ba00a3009a",
       INIT_27 => X"009a00aa00a30091009400990090008800820086008b008d009000920094009c",
       INIT_28 => X"006d0071007a007f0086008e00930096009800a000a500ac00b500ba00b400af",
       INIT_29 => X"00ac00a800a3009b0094008b0084007f008100850081007a007e008a0092009c",
       INIT_2A => X"002900190023003000340038003a003d003e0046004d0057006a0079007e007e",
       INIT_2B => X"007f007e00780070006a0068006700660069006e0073007700800088008d0095",
       INIT_2C => X"0037001400130035003a0029001e00180011000f000f0014002a0038003c003e",
       INIT_2D => X"00470051004d004c004e004f0053005a00650076008a008a007d00800089009e",
       INIT_2E => X"002d001a001200290054004c003900250015000b000700070023005b004e003e",
       INIT_2F => X"003c003e003f0045004a00530063007b009200950087007200740085009200af",
       INIT_30 => X"001100090008000b002e0039002f00230014000700040003000f008600b30094",
       INIT_31 => X"0083007d007c007f007e00850090008d0074005b006100740081009000a500be",
       INIT_32 => X"0023000700030004000700110011000c00070003000200030002004000920094",
       INIT_33 => X"0090008d00890081007a006a00530045004600580071007e0087009e00b000c2",
       INIT_34 => X"0040001500010002000000050009000500020000000000010001000b003b0044",
       INIT_35 => X"004300450043003b0031002a002e00470066007400780080009300ab00b700c4",
       INIT_36 => X"0052002b00010002000000020005000200000000000000000000000200260036",
       INIT_37 => X"002e002b0024002200270038005200690073007300760083009600ae00bb00c7",
       INIT_38 => X"005d0032000300010000000100030002000100000000000100020000001c002f",
       INIT_39 => X"0017000c0016003700510063006f007000710077007e0089009700ab00bc00c9",
       INIT_3A => X"00590025000b00040002000400040002000100010001000200060002000d0018",
       INIT_3B => X"00190029003e0052006500710070006f0073007e0089009100a100b300c100c9",
       INIT_3C => X"0052002400160011000f000f000d000c000c000d000e000f00140015001b002d",
       INIT_3D => X"00430051005500580069006e006b00700077007f008a009700a400b700c400c8",
       INIT_3E => X"0053003000260025002300210022002600280029002c002e002d0030003b004a",
       INIT_3F => X"0053005c00610061006b006a006c0075007b0085008d009900a300b200bf00c7",

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

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

entity ifmap_18k_layer0_entity4 is
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
  end ifmap_18k_layer0_entity4;

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
       INIT_00 => X"00eb00e700e800e800e800e800e800e800e800e800e900e900e900e900e900e8",
       INIT_01 => X"00e700e700e900e900e800e700e800e900e900e900e800e800e800e900e900e8",
       INIT_02 => X"00ee00eb00eb00eb00eb00eb00eb00eb00eb00eb00ec00ec00ec00ec00ec00ec",
       INIT_03 => X"00ea00ea00ec00ec00eb00ea00ec00ec00ec00ec00eb00eb00eb00ec00ec00eb",
       INIT_04 => X"00ed00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00eb00ea",
       INIT_05 => X"00e900ea00eb00eb00e600eb00e900ea00ea00ea00ea00ea00ea00eb00eb00ea",
       INIT_06 => X"00ee00eb00eb00eb00eb00eb00eb00eb00ea00ea00ea00ea00ea00ea00eb00eb",
       INIT_07 => X"00e900e800e600e200c000d800d200e400eb00ea00ea00ea00ea00eb00eb00eb",
       INIT_08 => X"00ed00ea00eb00eb00eb00eb00eb00eb00ea00ea00eb00eb00ea00ea00eb00eb",
       INIT_09 => X"00ee00ed00e100d200ac00cd00da00e500eb00eb00eb00eb00ec00ec00ec00ec",
       INIT_0A => X"00ef00eb00eb00eb00eb00eb00ec00eb00ea00eb00ec00ec00eb00e900ed00e7",
       INIT_0B => X"00d800cd00c600bc00b300c400d700e400eb00ec00ec00ec00ec00ed00ed00ed",
       INIT_0C => X"00e500e300e600e400e800ec00ed00ed00eb00eb00ec00ed00e500e400ed00e2",
       INIT_0D => X"00c500b400b400b000a3009f00a900ce00ee00ed00ec00eb00ec00ee00ed00ed",
       INIT_0E => X"00dc00e600ea00e800ea00ed00ee00ed00ed00ed00ec00ee00cc00de00ec00da",
       INIT_0F => X"00cc00c900c900bf00b600ae00b000c700ef00ef00ee00ee00ef00ef00ef00ee",
       INIT_10 => X"00ea00ec00ee00ef00f000ee00ed00ec00ec00ec00ed00ef00c600dd00ea00e7",
       INIT_11 => X"00d500d800e400da00dd00e000e900eb00f000ee00ef00f000f000f000f000ee",
       INIT_12 => X"008c008a008e009b00bc00ea00ec00ea00e900eb00ed00ed00d800e400ea00ed",
       INIT_13 => X"00e600e600ec00e800ed00e900db00cc00bd00b300b400c700eb00f100f000f0",
       INIT_14 => X"00820079007d007f009f00e500e400e200e800ea00ec00ed00ea00eb00ed00eb",
       INIT_15 => X"00ec00ed00ed00e800ce00b800a5009c0095008c008500a200e400f100f000f0",
       INIT_16 => X"00d400ca00d300d300d900e300d500d100d500de00e200dd00db00dd00e100e5",
       INIT_17 => X"00ea00ec00ed00e700cc00c600c800c200c500b2009700c300e600f000f100f0",
       INIT_18 => X"00cf00ca00d300d900e100db00d000ae00b400d500b80070007200790081008a",
       INIT_19 => X"009800a700d800ec00e800e900ea00e200e400db00cb00e600e300e600ef00f1",
       INIT_1A => X"0082007d007d0083009100b600c900c700db00e600ac00470046004900490054",
       INIT_1B => X"007200a800e300ef00ed00e700e400d300d000da00db00ce00ba00c500dd00e7",
       INIT_1C => X"00510056004f0055008d009b009d00c800e400df00b4007900700075009700c0",
       INIT_1D => X"00d400de00db00cb00ba00a6009a008a0085008b0092008e0089009900c500d4",
       INIT_1E => X"00350046006200900097006b0073009e00b400c200c200c100c200d100e400d2",
       INIT_1F => X"00b500a500960088007d006f006a006f007600790087009700a400ae00ce00cb",
       INIT_20 => X"000f001d008c00d80096007b008500a200b500d100e000ea00ea00f100ee00bd",
       INIT_21 => X"009f009a009e00a300ab00a500a500ab00ae00b100be00cc00cf00c400b700af",
       INIT_22 => X"0005003e00cf00e800cd00cf00d400e000e600ec00ee00ee00dd00ee00ee00e4",
       INIT_23 => X"00d900c800d800d500d400d600d400cc00c100bf00b500a5009c0092008f009a",
       INIT_24 => X"002d009b00cc00c400c500d300d300d000ce00cb00cf00cf00c100c600b000a9",
       INIT_25 => X"00a100ab00a300850089009d009600870073007000720074007d0085008d008e",
       INIT_26 => X"008700b300a0009a0098009800960096009600930093009500950091007e007a",
       INIT_27 => X"007800860080006d007000750070006700610067006f00750079007d00850090",
       INIT_28 => X"0057005a005a005d0062006600660069006f0077007c00830089008800840085",
       INIT_29 => X"00880085007f0077006d00650061005c005e0064006400620068007700870095",
       INIT_2A => X"0019000b0010001a001a00190019001e0024002b0033003b0045004b004d004f",
       INIT_2B => X"005700580051004800430044004500450047004e005900640071007c00880092",
       INIT_2C => X"002e0010000d002c002d0019000b00080004000200020004000d001200130017",
       INIT_2D => X"001d00260021001f0026002c0032003a0046005a0073007b0073007b008b00a0",
       INIT_2E => X"0029001b00130029005100460032001f000f0005000200000011004000320024",
       INIT_2F => X"001e001e001e0023002b003700470061007c008300780069006f0086009800b3",
       INIT_30 => X"000f000a000a000c002c0034002b0021001200040002000100080075009e0080",
       INIT_31 => X"0070006900670069006b0073007e007e006a0056005e00740082009300ac00c2",
       INIT_32 => X"0028000a000300040006000c000c000a00060001000100020000003a00800082",
       INIT_33 => X"007f007b00770071006e0060004b00420047005d00760084008d00a200b600c5",
       INIT_34 => X"004d001d00010001000100020003000200010000000000000001000c002d002f",
       INIT_35 => X"002e003000320031002a00260030004d006e007e00800087009900b000bb00c6",
       INIT_36 => X"005e003400010001000000010001000000000000000000000002000300190020",
       INIT_37 => X"001900190019001d00290042005c0071007c007e007f008b009d00b300bf00c9",
       INIT_38 => X"0066003c0007000200020003000300020001000000000001000300010013001f",
       INIT_39 => X"0011000d001b003a005a0073007e007c007b008200870091009f00b000c000ca",
       INIT_3A => X"006300330017000c000a000b000a0007000400040004000300060005000d0015",
       INIT_3B => X"001b0032004d00620071007e007e007d0080008a0094009a00a800b800c500ca",
       INIT_3C => X"00600039002c0023001e001c001a00170015001500160017001b001f00280037",
       INIT_3D => X"00460058006600700079007a007a007f0085008b009500a000ac00bd00c800ca",
       INIT_3E => X"0065004b0043003d003800350035003700370038003a003e0043004700540060",
       INIT_3F => X"0067006d00740079007f007c007d008300880091009800a200ab00b700c300c8",

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

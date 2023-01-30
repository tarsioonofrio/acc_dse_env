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

entity ifmap_18k_layer0_entity24 is
    generic (
        DEVICE: string := "7SERIES"
        );
  
    port (reset   : in std_logic;
          clock   : in std_logic;
          chip_en : in std_logic;
          wr_en   : in std_logic_vector(2-1 downto 0);;
          data_in : in std_logic_vector(INPUT_SIZE-1 downto 0);
          address : in std_logic_vector(10-1 downto 0);
  
          data_av  : out std_logic;
          data_out : out std_logic_vector(INPUT_SIZE-1 downto 0);
  
          n_read  : out std_logic_vector(31 downto 0);
          n_write : out std_logic_vector(31 downto 0)
          );
  end ifmap_18k_layer0_entity24;

  architecture a1 of bram is

    begin

    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
       BRAM_SIZE => "18Kb",             -- Target BRAM, "18Kb" or "36Kb"
       DEVICE => DEVICE,             -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
       DO_REG => 0,                     -- Optional output register (0 or 1)
       INIT => X"000000000000000000",   -- Initial values on output port
       INIT_FILE => "NONE",
       WRITE_WIDTH => INPUT_SIZE, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       READ_WIDTH => INPUT_SIZE, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
       SRVAL => X"000000000000000000",  -- Set/Reset value for port output
       WRITE_MODE => "WRITE_FIRST",     -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
       -- The following INIT_xx declarations specify the initial contents of the RAM
       INIT_00 => X"001700130015004100a400bc00b700b200aa00ac00ba00ba00b800b700b600b7",
       INIT_01 => X"00b400a4007f005c006b006e009900c200c300c900c500c600c900c800c700c5",
       INIT_02 => X"001700130015002e009900ca00bf00b200a4009e00a900b700ba00b800b400b2",
       INIT_03 => X"00b400ad008a0056004a006a00b400ce00cf00d500d000ce00cf00cd00cc00ca",
       INIT_04 => X"001700140017001f007f00c800b900a8009f009e009a00a200b200b200b300b2",
       INIT_05 => X"00b500be00b6007d0047007200c500d100d500d800d500d300d400d300d000ce",
       INIT_06 => X"0017001500180017006300bd00af00a000a800a800a6009500aa00ba00bf00c3",
       INIT_07 => X"00c300c800bc008d0063009200d200d600d500d400d400d500d900d900d700d6",
       INIT_08 => X"0019001700170015004800aa00a5009700af00b700b9009b0092009d00a900bc",
       INIT_09 => X"00c500c400b2008d007900ac00d300db00dd00d900d900d900d600d400d100ce",
       INIT_0A => X"001a001b001a00170031008f00a4009a00a900c200c800a60082007d00800097",
       INIT_0B => X"00a500a50094008f009300b600bc00c900d400d900d500db00dc00d700d700d3",
       INIT_0C => X"001e001a001b00190025007d00b400ab00a900c500ca00b3008b0071007a0082",
       INIT_0D => X"00770085007a008c00b900cb00bf00c900d700da00d700db00dc00da00dc00e0",
       INIT_0E => X"005e0030001f0024006400af00c100a800a300c000c600c300ae0091008e0084",
       INIT_0F => X"006a0079007a008b00c000d100bd00d500f200ed00ef00e800d000d500de00e5",
       INIT_10 => X"00b4009e0072007a00b100be00be00a0008500ad00c500c800c200b900a70092",
       INIT_11 => X"008100810085008d00b100c900bd00dc00f100eb00e800d500bd00c700e100ea",
       INIT_12 => X"00c500c000b200ba00c100c300c5009d008000a300b900bf00c100c300b20097",
       INIT_13 => X"007200810083008600aa00c200d000ea00ec00f000eb00c900b900bb00d000eb",
       INIT_14 => X"00ca00c400bb00c000c800cd00c50097009500af00b800bd00c100bb00a80088",
       INIT_15 => X"007500800080008100a700b500cd00f000f300f300ee00ce00ba00bb00c100dd",
       INIT_16 => X"00cd00cd00c500c000cb00d000c200a000a800bf00c100bf00c100ac00920077",
       INIT_17 => X"007c008e0085008700a700b000bf00ea00f300f100ec00d700ba00b800b900c4",
       INIT_18 => X"00ce00cc00c800c100c500c700bf00b400ac00b300b700ad00ae00ae00980083",
       INIT_19 => X"008d00a6008e009a00a900ac00bf00e600f000f100ef00e400c800ba00b800c0",
       INIT_1A => X"00d200ca00c600bf00c900b400b100ca00ab009a008e008e00a800a80093009c",
       INIT_1B => X"00af00a9009600a4009e00a000c500e600f100f100f400f200e200bf00c300d7",
       INIT_1C => X"00d300c900c700c000cf00aa00a100d700bd00ba00ad00ac00be00b10089007f",
       INIT_1D => X"00b400ae009600a000af00b000c100ec00f500f200f300fb00ef00c900d400e1",
       INIT_1E => X"00d300c400c500c100d100b5009a00d900ce00c500c300b900aa00ad00a60098",
       INIT_1F => X"00a300b800a6009800c000b500af00cc00ee00f300f400f700df00d500e200e2",
       INIT_20 => X"00d600c200b400b500c500c4009b00c600d600c000ae00b700ad00a100ae00b2",
       INIT_21 => X"008000a400bd009300a700b4009c0076009d00d700ef00eb00ce00d600ea00e4",
       INIT_22 => X"00d700c600a600a300b400ca00be00b900cf00d200cd00d600c100ae00b000ad",
       INIT_23 => X"0081008900bf009900a300c800ab00870074009000b800c100bb00d200ef00eb",
       INIT_24 => X"00d800cd00ae00a400b900cb00d200c200bf00d300da00e200e100cb00be00b3",
       INIT_25 => X"0097007900a8009e00a700c200aa00ac009a0083009900a900a200b800de00ec",
       INIT_26 => X"00d800d000c000b400c500ca00d100d200ba00bd00c500cc00d100d500cf00b5",
       INIT_27 => X"00b20095009200af00b700ae009c00ab00a3009400a900b400a600a000ac00cc",
       INIT_28 => X"00da00d500ca00b600bf00cb00c900ca00ca00c300c100c000b200c600cf00c7",
       INIT_29 => X"00d300cb00a600bb00b1009b009300a600a700ab00b600af009c009c009f00a7",
       INIT_2A => X"00d900d700d100ba00b300c800d000c800d100d700d200ba00a100b600c400c2",
       INIT_2B => X"00cb00cf00be00b9009b008e009b00a600ac00b300ad009f0096009e009e008f",
       INIT_2C => X"00d600d500d600c000a900c500da00d900d700d900d400c300aa00b300c300bf",
       INIT_2D => X"00be00c000c000aa0084008e00a700aa00aa00b300ad009d009d00930086007d",
       INIT_2E => X"00d500d100d300ca00a800c100d800de00df00de00d300cd00c200c200c900c6",
       INIT_2F => X"00c600c400bc00990086009b00ab00a700a600bd00b200a500a3008e00850089",
       INIT_30 => X"00d300ce00ce00ca00af00bf00d300d500d600d800c600ab00c200ce00c900c9",
       INIT_31 => X"00c800c500b100960090009e00a7009d009f00b500b000a80098009600950090",
       INIT_32 => X"00d200cc00c900c100b500bc00d000d200cd00ce00a0007a00b100d000c600c2",
       INIT_33 => X"00c100b800a60096008b009c00a00099009b00a0009f009b00980098008c0083",
       INIT_34 => X"00d200ca00c600bb00ae00b200cd00d600d100cb00a4008300b400ca00bb00b6",
       INIT_35 => X"00b600a9009d008b00860099009a00900097008d0083008d009d009b00960093",
       INIT_36 => X"00d200c800c200b500a800a800c400d700d400c700bd00b800cb00b900ad00ac",
       INIT_37 => X"00a3009b00930076008300940091008d00900084007f0085009500a300a2009c",
       INIT_38 => X"00d000c200bd00b400a2009e00bd00d300d300c500c200c700bf00ac00a300a4",
       INIT_39 => X"009e00930082006d008900900090009100900084007c0086009700a2009f0093",
       INIT_3A => X"00c200b100b000b5009f008f00b300cd00d000c700c200be00b500a5009c00a1",
       INIT_3B => X"009500880070007200890085008a00920092008300830090009600950094008d",
       INIT_3C => X"00ac009d00a500b200a70085009c00c700ce00c700c700c200a000850084008b",
       INIT_3D => X"008c007e006b007e00820081008a0095008d008c0091008e0088008c00950098",
       INIT_3E => X"009700860090009b009e007d008200b700c500bf00b700a500800067005e0069",
       INIT_3F => X"007700700075007c0079007d008b008f008b008c0081007d00840095009b0096",

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

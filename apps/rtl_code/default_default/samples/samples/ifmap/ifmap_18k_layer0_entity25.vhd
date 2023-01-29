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

entity ifmap_18k_layer0_entity25 is
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
  end ifmap_18k_layer0_entity25;

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
       INIT_00 => X"001300150010002f008300930093008e008700890090008e008d008c008c008f",
       INIT_01 => X"008c007e00600049005f005d008200a4009b009c009b009d009e009b00980097",
       INIT_02 => X"001400140011001f007a00a1009b0092008a0088008b00950098009600920097",
       INIT_03 => X"009f00960075004900410058009c00af00a800a900ab00ad00ac00a800a400a3",
       INIT_04 => X"0014001400140015006600a20097008c008d00950088008b009a00990098009f",
       INIT_05 => X"00a600ab00a1006d003a006100b100b700b300b200b100b200b100ad00a900a6",
       INIT_06 => X"0014001400150011004f0099008c0082009700a4009d0087009900a600a900b0",
       INIT_07 => X"00b000af00a100760052008500c400c300bd00b700b400b300b300b100ad00ab",
       INIT_08 => X"00150014001500130038008900820077009c00b200b300920084008b009400a7",
       INIT_09 => X"00af00a900980078006d00a700ce00d200d100c900c300bf00ba00b600b100ac",
       INIT_0A => X"00160016001700160026007300820078009200b900c3009e0076006c006b0084",
       INIT_0B => X"0092008f00810084008f00b700be00c700cf00d100cc00d100d100ca00c700c2",
       INIT_0C => X"0018001300150014001e007100a10094009700ba00c200aa0080006200690071",
       INIT_0D => X"00680074006b008000b200ca00c000c500ce00cf00d100d700d800d600d700da",
       INIT_0E => X"005800290018001d006000ae00ba009c009500b500bd00ba00a4008400810076",
       INIT_0F => X"005c006b006c007c00b400cc00bb00ce00e600e000e700e400cd00d300dc00e2",
       INIT_10 => X"00b10099006d007500af00bd00b70093007800a100bc00c000b800ad009a0083",
       INIT_11 => X"007300730077007f00a600c500bc00d800e900e200e300d300bc00c600e000e8",
       INIT_12 => X"00c200bc00af00b600bf00c200be00900073009800b100b600b700b600a4008a",
       INIT_13 => X"006600760077007b00a000bd00d000e900e800eb00ea00cb00bb00bd00d100eb",
       INIT_14 => X"00c700c000b700bb00c600cd00bf008a008800a500b000b500b800af009a007c",
       INIT_15 => X"006b007600770078009e00b000cd00f000f300f400f200d400c000c000c600e0",
       INIT_16 => X"00c900c900c100bb00c900d100bc0092009b00b600b900b700b7009f0084006b",
       INIT_17 => X"00730085007c007e009e00aa00bd00eb00f600f600f200de00c200c000c000ca",
       INIT_18 => X"00cb00c900c500bd00c400c600b700a5009f00aa00b000a500a400a2008a0078",
       INIT_19 => X"0085009f0087009200a100a500bd00e700f400f800f700ea00d000c300c100c7",
       INIT_1A => X"00d000ca00c400b900c100a7009c00b900a100910087008700a1009e0089008f",
       INIT_1B => X"00a400a4009500a20099009d00c300e400f200f700f900f500e800c700cc00de",
       INIT_1C => X"00d200cc00c500b600bf008e007d00c100b500b100a600a700b800aa00820072",
       INIT_1D => X"00a500aa0098009e00ab00ae00bd00e700f200f400f500fb00f200cf00dd00e9",
       INIT_1E => X"00d400c800c500b900bd0091007000c000c700be00bd00b400a400a700a00089",
       INIT_1F => X"009200b000a2009100b800b100a800c300e800f100f500f900e400dd00ec00eb",
       INIT_20 => X"00d800c700b600ae00b0009b006e00ad00d000ba00a800b200a8009b00a700a4",
       INIT_21 => X"006e009600b10086009a00ab00900068009100d100ee00ed00d200dd00f300ed",
       INIT_22 => X"00db00ce00a9009e00a300a7009500a200ca00cd00c800d100bc00a800aa00a1",
       INIT_23 => X"0070007800ad0087009300ba009b00730062008400b200bc00b900d400f300ef",
       INIT_24 => X"00dd00d600b300a100af00b500b300b100bd00cf00d400dd00dc00c500b800ab",
       INIT_25 => X"008b00670095008c009700b10094009300830070008a009c009700b100d900ea",
       INIT_26 => X"00df00da00c600b200c200c200be00c800ba00b800bf00c700cb00d000c800b1",
       INIT_27 => X"00ab0087007f009e00a8009b0083008f0089007e0094009f00930090009e00c5",
       INIT_28 => X"00e100dd00d000b700bf00c700be00c200c600bc00be00ba00ab00c100c600bf",
       INIT_29 => X"00cf00bf009400a900a00087007b008d008e0095009f009800870088008c009a",
       INIT_2A => X"00de00dd00d600be00b300c300c800be00c600cd00d100b2009700b300b600b5",
       INIT_2B => X"00c500c400ae00a50086007c00890093009900a10099008b0083008b008b007d",
       INIT_2C => X"00db00da00db00c600aa00bf00d200cf00cb00ce00cf00b4009c00ae00b400b0",
       INIT_2D => X"00b600b500b00096006f007d00960098009800a1009a008a008a00800073006a",
       INIT_2E => X"00da00d600d900cf00aa00bc00d200d500d400d300c700b600ae00ba00ba00b5",
       INIT_2F => X"00ba00b600ab008500720089009a0095009400ab009f00920090007b00730076",
       INIT_30 => X"00d800d400d400d100b300bd00cf00cd00cd00cd00b1008a00a700c300bb00b6",
       INIT_31 => X"00b900b5009e0082007d008d0096008c008d00a3009d0095008500830082007c",
       INIT_32 => X"00d700d200d000c800bb00be00ce00cc00c600c400830050009100c200b800ae",
       INIT_33 => X"00ae00a5009300830078008b008f00880089008e008c00880085008500790070",
       INIT_34 => X"00d700d000cd00c200b500b700cd00d100cc00c200810051008e00ba00ab00a1",
       INIT_35 => X"00a1009500890078007300870089007e0085007b0070007a008a008800830080",
       INIT_36 => X"00d600cd00c800bc00b000af00c600d400d000c000a0008e00aa00a8009b0095",
       INIT_37 => X"008d0085007f0064007100830080007b007e0072006c00720082009000900089",
       INIT_38 => X"00d200c400c000b700a900a600c000d200d100c000b600b400ab0099008d008c",
       INIT_39 => X"0086007d006f005c0078007e007e007f007e00720069007400850090008d0081",
       INIT_3A => X"00c400b300b300b900a6009700b500cc00cd00c200ba00b300a6009200850088",
       INIT_3B => X"007e0072005d00610078007300780080008000710071007e008400830082007b",
       INIT_3C => X"00b100a100aa00b800ae008c009c00c300c900c100bf00b600910071006c0073",
       INIT_3D => X"0076006a0059006e0072007000780083007b007a007f007c0075007a00820086",
       INIT_3E => X"009d008c009700a100a60082008000b100bf00b700af009a0070005300470053",
       INIT_3F => X"0063005e0065006e006c006c0079007e0079007a006f006b0073008400890084",

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

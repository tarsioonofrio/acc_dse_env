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

entity ifmap_18k_layer0_entity11 is
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
  end ifmap_18k_layer0_entity11;

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
       INIT_00 => X"009500bb00c100cd00ca00b700b500b400b600bd00c100c000c000c000bd00bd",
       INIT_01 => X"00ba00b900bd00c000c100c100c000be00bb00bb00bc00c300ca00d100d400ab",
       INIT_02 => X"009d00cc00d700e300e000be00b300b300b300bb00c300c300bb00be00b400b7",
       INIT_03 => X"00bc00b700b800b700b900bf00bc00bc00be00c200d300e000df00de00e300b7",
       INIT_04 => X"009900c900d500db00df00d500c400b800b100c300d300d400d000d200cc00ca",
       INIT_05 => X"00d100d100d000d100d200d400d000d000d000d500de00df00da00d700e000b8",
       INIT_06 => X"00a600cf00d300de00e200dc00c900830077009e00a600b100b200a700a600ab",
       INIT_07 => X"00b700b200b200ba00b900ba00b400a500cf00e400dc00dd00e000df00e600ba",
       INIT_08 => X"00a700cb00ca00da00e000e100d6008e00990098007800810081007e007c0083",
       INIT_09 => X"008600840082008a00880088008d007b00ba00e300da00d900de00dc00e300b9",
       INIT_0A => X"00a400c900cb00d900dc00da00d100a500c400b5009c00b400b300a000a300ac",
       INIT_0B => X"00bf00c100be00c900bf00c000c600be00d400e100e100e100df00e100e800bc",
       INIT_0C => X"00a400c600c800d900d900d600ac0068009e00a500a600af00a50090009700a0",
       INIT_0D => X"00b200ad00bd00b600aa00b700ad00b900a600b200dc00e200dd00e000e700bc",
       INIT_0E => X"00a900c900c700d800da00cb0092006f00860095009d0090009b008f008f0090",
       INIT_0F => X"0093008e0094008e007f008d008e00b00089009500d100dc00d900dc00e400ba",
       INIT_10 => X"00b100ce00c700d900db00cd00c100c500b800b700bb00b800c000ba00bb00bd",
       INIT_11 => X"00c000c200c200bf00b200ba00bc00c800c100c600d600db00db00dd00e400b9",
       INIT_12 => X"00ba00d400c500d600d700d600dc00d200b900bb00b600ba00b600b400b900ba",
       INIT_13 => X"00c100c600c300b800b500b600b600c600de00de00dd00df00df00de00e300b7",
       INIT_14 => X"00bc00de00c800d800d700d400d600cc00b500b800b600b000b500b800bc00bf",
       INIT_15 => X"00bd00ba00b800b900b600b800ba00c900df00dd00dc00db00db00dc00e300b8",
       INIT_16 => X"00bf00e200cf00e000dc00d100d700de00d900d700d600d700d900db00df00df",
       INIT_17 => X"00df00dd00db00da00d800d600d900db00db00db00d900d600d700db00e300ba",
       INIT_18 => X"00bc00dc00d400ce00b5009900ac00d900e200e100dd00dc00de00df00e100e2",
       INIT_19 => X"00e100dd00dc00da00d900db00dc00da00d900dc00de00e000e000e000e600bb",
       INIT_1A => X"00bd00df00d600c1009d007e00630073009d00c600dd00dd00da00dc00df00e2",
       INIT_1B => X"00e200e000e100df00dc00dd00e000e000df00de00de00de00dd00dd00e200b7",
       INIT_1C => X"00bd00e200de00e900dc00c40092005a0054007100a100ca00da00e000e300e4",
       INIT_1D => X"00e200e100e000dc00d700d700d800d900d800d800d800d800d700da00e100b6",
       INIT_1E => X"00bb00e500e000ea00e100e100da00b300730058006a009100c000dd00e400e1",
       INIT_1F => X"00df00db00da00d900d600d600d900db00db00dd00dc00da00d900dc00e200b7",
       INIT_20 => X"00be00e900de00e900e400e200e000e100b500620050005b006a009200c000d9",
       INIT_21 => X"00e000e100dd00da00d900da00da00d900da00dd00dd00dd00dd00dc00e300bc",
       INIT_22 => X"00bf00ea00dd00e900e700e300e200dd00d500820049004f004b005000640088",
       INIT_23 => X"00ad00c800d700dc00d900d900df00de00dd00dd00db00db00da00db00e300bd",
       INIT_24 => X"00bd00e800d900e400e300e100e200dc00dd0090004a0050004a004c004e004c",
       INIT_25 => X"00530064008100a100b000c900e100e200df00dc00d900d700d700d900e100bb",
       INIT_26 => X"00bb00e800d700e100e000e100e300e200d5007700320038003b0045004d0052",
       INIT_27 => X"005000480042003f0041005b008500a200b800cc00da00df00dd00dd00e300bc",
       INIT_28 => X"00b700e700de00df00df00e600e400e100a20062003c0027003500430044004e",
       INIT_29 => X"005100520053004800390031003f0043004b006d008b00a800c600d700df00c3",
       INIT_2A => X"00b000e200e200de00de00e200e200d4009b008b0096006a003500390033005e",
       INIT_2B => X"009a00a10082004900630072005a00430045008600ab00a900b700c500d000be",
       INIT_2C => X"00af00e100e100df00df00de00de00de00de00e000e400cc009f009f00a000b3",
       INIT_2D => X"00d600dc00cf00a900b200c100c000ad00ab00c300d200d600d800d100d200bd",
       INIT_2E => X"00a600d400d700d100ce00cc00c900c700c700c300c500c200c000c100c200c4",
       INIT_2F => X"00c400c200c400ca00c800c400c800cd00ce00c500c000bf00c500c500c900b5",
       INIT_30 => X"006500780082007800760070006b006a006500620066006300620065006c0080",
       INIT_31 => X"0090009200920093009400960098009e00a400a600a800a800a800a500a70092",
       INIT_32 => X"006f008200860086008a008800890088008400860083007e007f008000830083",
       INIT_33 => X"008a0086007f008100810080007c007e00810082008400840077007300730060",
       INIT_34 => X"0068007100780078007a0076006c00640060005b005500590058005500570056",
       INIT_35 => X"0056004f0046004300420041003f003c003b003c003c003b00360032003f004b",
       INIT_36 => X"003d0037003d0039003a003f003b003600380033002f002f0030003200310032",
       INIT_37 => X"003300370035002f002d002e0032003700360034003400340030003a00680068",
       INIT_38 => X"0044003d0041003c003e003d00370039003d00380037003a003b003800380036",
       INIT_39 => X"0039003b0037003400330033003400340033003500370039004b00710078004b",
       INIT_3A => X"003e0034003b0035003900390034003600360032003000320039003800340035",
       INIT_3B => X"0039003600340033003600370035003000320034003d005f007c0065003e0032",
       INIT_3C => X"003e0035003a0037003b003d003c003c00390037003a004b004c004800440045",
       INIT_3D => X"004b004a004b00490046003a0037003500330045006b007f005b003a00360033",
       INIT_3E => X"004000330033002e0033003800390035003400330032003e0040003e003c0039",
       INIT_3F => X"003c003e00400040004000350034003700460067006900480035003200340032",

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

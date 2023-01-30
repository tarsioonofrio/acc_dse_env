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

entity ifmap_18k_layer0_entity9 is
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
  end ifmap_18k_layer0_entity9;

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
       INIT_00 => X"009b00a700b000be00b100a600a800a600aa00b300bb00bb00bb00bb00b800b8",
       INIT_01 => X"00b600b400b800ba00bb00bb00bc00bd00bb00bb00bc00c300c900c900ca00c0",
       INIT_02 => X"009900a300ab00bb00b3009b009a009f009f00a500ab00af00a900ab00a200a5",
       INIT_03 => X"00aa00a400a600a500a700ad00a900a800a900ad00be00ca00cc00ca00cb00bd",
       INIT_04 => X"009b00a000a800b800bb00ae00b000bc00b600b300b100be00c000c200bc00b9",
       INIT_05 => X"00c100c200c100c200c300c500c100bf00bf00c500ce00cf00d000ce00cc00bd",
       INIT_06 => X"0097009d00a600b100b400b900c700c500b600cc00cd00c600d200c500c400cb",
       INIT_07 => X"00cd00cf00d200cb00cf00d200c500cc00d000c600cc00c900d100cf00ce00c0",
       INIT_08 => X"0097009e00a800ae00b100b500bf00c400b700c200bd00b900c400b900b900ca",
       INIT_09 => X"00c700c700c800c000c300c700be00bc00c900c700c900c400ce00cc00cf00c4",
       INIT_0A => X"0094009c00a700ae00ab00ae00c400c300c000be00bd00b800bb00bd00bd00bf",
       INIT_0B => X"00be00c300bb00c600c000bc00c000c100cd00ce00cb00d100d400d000d100c4",
       INIT_0C => X"0094009900a500ae00a800b000cb00c300bc00bc00bb00be00b600c200c500c3",
       INIT_0D => X"00c400c100c800cd00c600c500c500c900c500c800c600c300c500cb00cf00c3",
       INIT_0E => X"0099009b00a300ac00ac00bc00c700d100c400be00bd00bf00c100bc00bb00c4",
       INIT_0F => X"00ca00c200c400ce00c200c900c400c800b500bb00c800c900c800c400c700bd",
       INIT_10 => X"00a0009f00a300ac00ae00b000b000be00b400af00b000b000b500aa00ac00b6",
       INIT_11 => X"00bb00b200b500bb00b100bc00b400bb00c700c400bc00bc00c500c000c200b8",
       INIT_12 => X"00ab00a700a200ac00aa00ab00b400b0009b009c0096009c009600920099009e",
       INIT_13 => X"00a600a600a4009d009d00a2009c00a600c800c700bc00bd00c500c100c200b6",
       INIT_14 => X"00af00b400a800b000ad00b100b600ae009c00a0009f009a009f00a300a800ad",
       INIT_15 => X"00aa00a400a000a200a000a800a700ac00c200c300c400c400c500bf00c100b7",
       INIT_16 => X"00b500bb00b200bb00b700aa00ae00b600b300b300b400b500b800bb00c100c1",
       INIT_17 => X"00c100c000bc00b900b800ba00c000c000bb00bc00c000bd00be00bf00c400ba",
       INIT_18 => X"00b900be00ba00ab00990084009500c100c600bf00ba00bc00bf00c100c300c4",
       INIT_19 => X"00c300c000be00bc00bc00be00c000bf00bf00c100c300c500ca00ca00cc00c1",
       INIT_1A => X"00ba00c200bc009e00840074005e006d009100b100c200c200bf00c100c400c7",
       INIT_1B => X"00c700c700c800c600c400c400c700c600c500c400c400c400c600c500c600b9",
       INIT_1C => X"00ba00c500c400c600c200b8008d005c00540068008e00b300c300c900cc00cc",
       INIT_1D => X"00cc00cc00cc00c700c200c200c200bf00bd00be00be00be00bf00be00c000b5",
       INIT_1E => X"00b800c700c600c800c500c800c900b100750054005d008000ad00ca00d000cd",
       INIT_1F => X"00ca00c800c700c700c300c400c500c300c100c300c200bf00bf00bd00be00b2",
       INIT_20 => X"00b900c900cb00d000cd00ce00d000d600af005c004c005b0069008c00b500cb",
       INIT_21 => X"00ce00ca00c500c200c100c200c200c200c200c300c100bf00c100be00be00b4",
       INIT_22 => X"00bb00cc00cf00d600d400d400d300d000cb007c004700570054005400630084",
       INIT_23 => X"00a700be00cb00cb00c300c000c500c400c200c200c000bf00c100bf00c000b7",
       INIT_24 => X"00be00cf00cf00d600d400d300d300d000d30089004800570053005400560053",
       INIT_25 => X"0059006b0083009b00a300b600cb00cc00ca00c600c200bf00c100c000bf00b6",
       INIT_26 => X"00bf00d200d100d700d500d400d400d500cc0071002f003a003f004c0057005d",
       INIT_27 => X"005a00500046003e003a004d007a009f00b400c200c900c800c800c400c400b9",
       INIT_28 => X"00bf00d000cf00d300d100d200d100d4009d00650041002500330044004a0058",
       INIT_29 => X"005b0056005500490037002e003e0048004e006b0085009e00b800c300c400ba",
       INIT_2A => X"00ba00ca00cb00d100cf00ce00d100c80095008c00970064002d003500320060",
       INIT_2B => X"009c00a00080004800620070005900420043008300a600a300ad00b700bc00b2",
       INIT_2C => X"00b900c900ca00d200d200d000d100d100d200d300d700bd00900092009400a8",
       INIT_2D => X"00ca00ce00c0009a00a300b200b1009f009c00b200bf00c200c400c100bc00b0",
       INIT_2E => X"00b000bc00c000c400c000bc00b900b700b600b200b300ad00aa00aa00ab00ad",
       INIT_2F => X"00a900a000a100a700a500a100a500aa00aa00a000980096009d00a300a4009c",
       INIT_30 => X"00720063006e006b00660061005e005d0058005500580050004d004e00530065",
       INIT_31 => X"0071006c006a006b006c006e006f0071007500770078007700780079007a007c",
       INIT_32 => X"007a006d007100750073007000720071006f0070006f006d006e006d006e006c",
       INIT_33 => X"007300700069006b006c006a00650068006a006b006d006d00670066005e0065",
       INIT_34 => X"00780061006b0070006d00680062005e005e005d005800560052004f0050004e",
       INIT_35 => X"0050004f00480045004300420041004100400041004200400043003f0035004d",
       INIT_36 => X"005b00370041004500420042003f003d00420040003c00390039003c003d003f",
       INIT_37 => X"003f00420040003a00380039003b003c003a00390038003900340031004b005c",
       INIT_38 => X"005d003c00420044004300430040004100450041003e003b003b003b003c003d",
       INIT_39 => X"0040003f003a003800370037003800380039003a003800350041005d00610051",
       INIT_3A => X"00590039003d00390039003b0039003b003c003a00380036003c003d003b003d",
       INIT_3B => X"0041003d003a0039003c003c003d003d0042003e0039004600610059003b0043",
       INIT_3C => X"0059003c003f003e003e003e003e003f003e003d0041005200540051004e0051",
       INIT_3D => X"005800540055005300500043004200400034003800560067004c0039003d004b",
       INIT_3E => X"005c003c003d003c003f00420043004100420043004100480049004900480046",
       INIT_3F => X"0049004a004b004b004b00400040003e00410056005800400039003c00400049",

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

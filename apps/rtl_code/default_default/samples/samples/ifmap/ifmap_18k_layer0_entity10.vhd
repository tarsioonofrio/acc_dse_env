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

entity ifmap_18k_layer0_entity10 is
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
  end ifmap_18k_layer0_entity10;

  architecture a1 of bram is

    function string_to_std_logic_vector(data : string; s: integer; e: integer) return std_logic_vector is
        variable output : std_logic_vector(255 downto 0);
        type type_hex_vector is array (0 to 15) of std_logic_vector(3 downto 0);
        variable str_vector : string := "0123456789ABCDEF";
        variable hex_vector : type_hex := (
            x"0", x"1", x"2", x"3", x"4", x"5", x"6", x"7", x"8", x"9", x"A", x"B", x"C", x"D", x"E", x"F"
        );
    begin
        for i in s to e loop
            for h in 0 to 15 loop
                if data(i*4+3 downto i*4) = str_vector(h) then
                    output(s(i*4+3 downto i*4)) := hex_vector(h);
--                     ret(i*8+7 downto i*8) := std_logic_vector(to_unsigned(character'pos(s(i)), 8));
                end if;
            end loop;
        end loop;
        return output;
    end function string_to_std_logic_vector;

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
       INIT_00 => X"009c00b000b300c000b900ab00ad00ad00af00b300b600b800b900b800b600b5",
       INIT_01 => X"00b300b300b700b900ba00ba00bb00bd00bb00bb00bc00c300c500c400ca00b7",
       INIT_02 => X"009b00b300b800c300be00a2009f00a400a300a500a900b000ab00ae00a400a7",
       INIT_03 => X"00ac00a600a800a600a900af00ab00a900aa00ae00bf00cc00ce00d000d700be",
       INIT_04 => X"009a00b200b900c400cb00c100b200a800a000af00be00c400c300c500be00bc",
       INIT_05 => X"00c400c300c200c300c400c600c100bf00c000c400cd00cd00ce00d000d700bf",
       INIT_06 => X"009a00b200bc00c300ca00c500bc0080006c0098009a009b009e009500950094",
       INIT_07 => X"00a700a100a300ad00a800a300ae009f00bc00d000cc00ce00cc00cd00d400bc",
       INIT_08 => X"009a00b100bb00bf00c600c400bd007e0080008b006a006b0073007800760071",
       INIT_09 => X"007700720072007e007600700088007000a000cb00c900ce00ce00cd00d600be",
       INIT_0A => X"009700ae00bb00bd00c500c800b7009300a900a8009100a500aa00920095009d",
       INIT_0B => X"00b400b200b000bd00b000b300bc00b100c400d000cf00d000d000d100d800be",
       INIT_0C => X"009800ac00b900bd00c200c6009300600095009700900098009800790080008b",
       INIT_0D => X"009c009700aa00a2009600ad009600a4009c00a600cc00d200d300cf00d400bc",
       INIT_0E => X"009b00ac00b600bb00c200b500770065007b008300830078009200870087007f",
       INIT_0F => X"007b007b0083007b006d0084007b009f007b008400bf00c700c900c900d000ba",
       INIT_10 => X"00a100af00b400b900c000ba00ab00af00a200a500ac00a600af00ac00ad00aa",
       INIT_11 => X"00ac00b200b200af00a300ac00b200be00ac00b000c800cd00c800c900d100b9",
       INIT_12 => X"00ac00b700b400ba00be00c000c200b700a000a500a200a3009f009e00a400a2",
       INIT_13 => X"00a700ae00ac00a200a000a300a500b600c800c600ca00cd00ca00ca00d000b8",
       INIT_14 => X"00b100c400ba00be00c000c100c100b700a300a700a5009f00a400a600aa00ac",
       INIT_15 => X"00a800a600a600ab00a800ad00ab00b200c700c600c700c700c800c800d000b8",
       INIT_16 => X"00b700cc00c300c800c900bb00be00c600c200c100c100c100c100c200c600c6",
       INIT_17 => X"00c600c300c300c600c500c400c400c500c900cb00c900c900ca00c800d100bb",
       INIT_18 => X"00b900cd00c600b200a6008d009a00c400ca00ca00c700c500c500c700c900ca",
       INIT_19 => X"00c900c700c600c400c400c600c700c600c700ca00cb00ce00cf00ce00d400bd",
       INIT_1A => X"00ba00d000c800a50090007c005f006b008f00b300c700c700c500c600c900cc",
       INIT_1B => X"00cc00cd00ce00cc00c900c900cd00cd00cc00cb00cb00cb00ca00ca00cf00b7",
       INIT_1C => X"00ba00d400d000cc00ce00c1008f005b00510065008e00b500c600cc00cf00cf",
       INIT_1D => X"00cf00cf00cf00ca00c500c500c600c500c500c500c500c500c400c500cc00b5",
       INIT_1E => X"00b800d600d200ce00d100d400cf00b300740053005d008000ae00cb00d200ce",
       INIT_1F => X"00cc00ca00ca00c900c600c700c900c900c800ca00c900c700c600c600cb00b4",
       INIT_20 => X"00ba00d700d600d500d600d600d400d900af005b004900560065008a00b500cc",
       INIT_21 => X"00d000cb00c700c600c700c900c900c800c800ca00c900c900ca00c800cc00b6",
       INIT_22 => X"00bb00d800d800d900db00d900d600d300cc007b00440052004f005100610082",
       INIT_23 => X"00a500bc00c900ca00c400c100c700c600c600c700c800c800c900c700cc00b6",
       INIT_24 => X"00bc00d900d500d600d800d800d600d200d4008800460053004e00500050004d",
       INIT_25 => X"00530066007e0097009f00b200c900cc00cb00c900c800c600c700c500c900b4",
       INIT_26 => X"00bb00da00d600d500d700d800d700d800cc0070002d0037003a0045004d0051",
       INIT_27 => X"0050004d0046003e003b004f007c00a000b500c400cd00cd00cb00c800ca00b4",
       INIT_28 => X"00bc00d800d200d100d300d600d400d4009a005f003a00210030003e0041004d",
       INIT_29 => X"00520054005400480038002f003f0048004e006b0084009e00b500c100ca00b6",
       INIT_2A => X"00b800d200ce00cf00d100d300d400c800910085008f0061002d0032002e005a",
       INIT_2B => X"0096009e007f004700610070005800410043008200a500a200a800b500c500b0",
       INIT_2C => X"00b700d200cd00d000d300d400d500d200d100d100d400bf00940093009300a6",
       INIT_2D => X"00c800d000c3009d00a600b500b400a2009f00b400c100c500c300c100c700b1",
       INIT_2E => X"00ae00c400c300c200c200be00bb00b900b800b500b700b500b200b000ae00ad",
       INIT_2F => X"00aa00a400a600ac00aa00a600aa00b000af00a5009d009b009d00a300af009e",
       INIT_30 => X"0070006c007000690067006400610060005c005a005e00570054005300570067",
       INIT_31 => X"00730070006f00700071007300740076007a007b007c007b0079007a0084007c",
       INIT_32 => X"00750073007100700071006f00710071006f0070006f006e006e006d006e006b",
       INIT_33 => X"00730073006c006e006f006d0068006b006d006e007000700064005f00620065",
       INIT_34 => X"007100660069006a006a00660061005d005f005e005900550052004e004f004e",
       INIT_35 => X"0050004f0047004400430041004100410041004200420041003c003700470064",
       INIT_36 => X"0054003c0041004000400040003e003c00420040003d00380039003c003d003f",
       INIT_37 => X"004000430041003b0038003a003b003c003a0039003800380038004800750080",
       INIT_38 => X"0053003b003f003e003f0041003d003f0043003e003c0039003a003a003c003d",
       INIT_39 => X"004100440040003e003d003c003e003d003a003a003d0041005b008800890063",
       INIT_3A => X"004f0035003d00390037003b003a003c003d003c00390037003c003e003d003f",
       INIT_3B => X"0043003f003c003b003e003e0040003f003e003c0047006e008e0077004f004a",
       INIT_3C => X"0052003a00420041003f003e003e003e003f003e0041004f004f004c004a004d",
       INIT_3D => X"005400500050004e004c003f003e004100420056007c008d0066004200400045",
       INIT_3E => X"004e0034003a003a003a003a003b0039003a003b003a00450047004700460045",
       INIT_3F => X"004800480049004a0049003f003f0044005a0080008000580042003f00410044",

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

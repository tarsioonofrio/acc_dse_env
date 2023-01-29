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

entity ifmap_18k_layer0_entity6 is
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
  end ifmap_18k_layer0_entity6;

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
       INIT_00 => X"009e009e008b008400a600b600bb00c100c700cd00d100ce00da00df00e300e6",
       INIT_01 => X"00d500e200e700eb00ec00e800ea00ea00ec00e200e600ee00e800e400ed00ee",
       INIT_02 => X"00aa00ac0097008900ae00c100c500c700ce00d700d900d200e100e700e900ed",
       INIT_03 => X"00db00e400e800f200f500ea00ec00f200f100e400eb00f300e900e800f600f6",
       INIT_04 => X"00ae00b0009d008e00b500c900ce00c700d100df00da00d400e000e600e600ef",
       INIT_05 => X"00dd00e400e900ef00e800d500ec00f300f500e700ee00f800ed00e600fa00f5",
       INIT_06 => X"00b400b200a0009300ba00cb00d400cf00d600e400dd00d600dc00e700df00f0",
       INIT_07 => X"00e000e400e900e400b100ac00e600f300f800e800ee00fa00ee00e400f900f4",
       INIT_08 => X"00ba00b900a5009300bd00cc00d900cf00d300e700de00d600da00e700d300eb",
       INIT_09 => X"00e200e000e800d4009f00a800e000ed00f700e700eb00f600e800ea00f800f2",
       INIT_0A => X"00c100be00aa008e00bf00cb00db00d300d700ea00dd00d600d600e400c700cd",
       INIT_0B => X"00cf00ce00eb00c10070009e00de00e600f500e500e200f100e400e700f300eb",
       INIT_0C => X"00c400bf00ac008500bf00ca00de00d900df00eb00da00d600d700e300bc00b0",
       INIT_0D => X"00bb00ba00cd00bb0078008900ac00b700db00df00d800eb00e200e100f000eb",
       INIT_0E => X"00cc00c500ae008c00cb00da00e000e000e800ed00dc00dc00dc00dd00c900cd",
       INIT_0F => X"00ac008a006400530047003e0041003c006800b600d100e400da00d400ef00ec",
       INIT_10 => X"00af00aa009d008900b000ba00af00c500d100d400ce00d200d400c900c100c1",
       INIT_11 => X"008e00690059005b00540053005e0045004e007900a200b700ae00a300cf00c3",
       INIT_12 => X"00720073007100680069006b006f0080008b00920097009b009d009300970096",
       INIT_13 => X"00760064006300630055005600560053008b0080009a00990076006d0084007b",
       INIT_14 => X"0042004c004b00440053005a0054005a005d006a00660067006a006b0072006c",
       INIT_15 => X"005a005a005b005500480042005f00720080006e009300c7007d0067005c005e",
       INIT_16 => X"00350041004b004d006f006a00550046005d0071005f005d006c0073006b0061",
       INIT_17 => X"0062005f00620061005a0055009500bb00b30092007000cc009a005f00570055",
       INIT_18 => X"003a0056005e004a00640064004d005500780085007f006c0069006e00620057",
       INIT_19 => X"005100510057005f005f007000aa00c300d000c1007f00ad00b200500055004f",
       INIT_1A => X"004a00590057004b0052004400470050005900670076006f0065006a00690062",
       INIT_1B => X"006000620062006d0072008e00b400b800bf00c000a0008400aa0050003c0043",
       INIT_1C => X"004d004f0052004e004f004800460056006d0079008100850089008800870083",
       INIT_1D => X"0092009400920096009400a300b300b500b900b000aa0065005a00490037003b",
       INIT_1E => X"0060005e006a0068006d00830084008a00900098009b009a009b009b009e0094",
       INIT_1F => X"0096009d009c009200770082009200a900b100a800a700690045006200560048",
       INIT_20 => X"006a006500730083008100870090008f00920096009a009a009a009900970090",
       INIT_21 => X"00820086008b007f005e00750092009f00a700a300a20084009000c0009a0069",
       INIT_22 => X"005f006c0076006d005f005d0081009100950097009600900086007e007a007b",
       INIT_23 => X"007a0085009b00940083009300a2009c009d009700990095009f00a4009d0094",
       INIT_24 => X"00660059004900460056006f007b008c008f0081007800750078007e0085008d",
       INIT_25 => X"0096008e0099009f0097009d00a500a100990098009a009000830079007d0095",
       INIT_26 => X"0056003d0047006e0080008a0082007b0076006c00760084008f0098009c0099",
       INIT_27 => X"009500890091009a0099009a00a000a400980090007d0069005c004b00560084",
       INIT_28 => X"00680067006b007200730074007b007600740086008d0090008f008d00850075",
       INIT_29 => X"00620059008200960097009a0098009100750060005a00500041004700490041",
       INIT_2A => X"0063006b006f006f00720077007d007e0075007d007d008100830082005b003d",
       INIT_2B => X"0039003800730094008b00820072005f005600530049003a003c004b0033001b",
       INIT_2C => X"003e006800740072007400750066005b00540051004e0070008500820060004c",
       INIT_2D => X"00530056006b006c00600058005300510046003d0033002d0034002e001e0018",
       INIT_2E => X"00390060006a0069006b006800410035003b00400044006e0087008500730062",
       INIT_2F => X"0058004f004e00500051005000460037002c0031002d00290022001e001b0018",
       INIT_30 => X"0041005a00680069006d006d004f0049005500580062006a0062005300440041",
       INIT_31 => X"0046004a00510052004800330029002c003d0037002700230020001e001b0019",
       INIT_32 => X"00430057006900670066006300580051004c0045003b0039003a003f00420046",
       INIT_33 => X"00480044003e0036002e002f0031002c0038002e001e001c001d00190018001e",
       INIT_34 => X"0036003a0041003a00370032002d002c002e00330037003a003e0040003e003a",
       INIT_35 => X"003300260025003000310030002a002600290020001b001c001b0019001c001f",
       INIT_36 => X"001e001d001a001b001f0020002100270031003400350033002e002800260028",
       INIT_37 => X"0026002c004200370029002500240025001f001b001a001b001c001e00210017",
       INIT_38 => X"0021001f001b001c001c001e001f002000230021001e001e002200270029002d",
       INIT_39 => X"002a003400490031001e002300260020001b001a001b001d001e0026001a000d",
       INIT_3A => X"001f001e001a001a00190019001a001b001d002000250028002a00290028002a",
       INIT_3B => X"0027002e00400026001c0024001e001d001a0019001b001c0021002500090004",
       INIT_3C => X"0017001b0019001c001e002000220025002700270028002700260023001e0021",
       INIT_3D => X"001c002400390024001e001d001d001d001800180017001b0024001300040005",
       INIT_3E => X"001c001e0020002200210022002300250026002600240022001e0018000f000c",
       INIT_3F => X"00080013002d00200019001b001b001c00180015001400220019000500040007",

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

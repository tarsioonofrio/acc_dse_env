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

entity ifmap_18k_layer0_entity1 is
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
  end ifmap_18k_layer0_entity1;

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
       INIT_00 => X"0070006f007400760070006d00730071006f00710074006f006f007500750077",
       INIT_01 => X"00750071006f0070006d006b006b006a006b0065006200610061005f005b0055",
       INIT_02 => X"0070006e0072007400700071007500720074006e006f006e0071007700750073",
       INIT_03 => X"0073006f00700073006e00680066006400690066006600610062005f005b0058",
       INIT_04 => X"006e006d006f006f006a007300750075007300730072006d006f007300720071",
       INIT_05 => X"00740072006f0060005a004e004d0055005600600067006300630062005f0059",
       INIT_06 => X"006b006e006d0070006e00750078007700730075007b00920082006f00730072",
       INIT_07 => X"0070006f00500057005a005a004b003f0046003e00550062006600650063005e",
       INIT_08 => X"006b007200730072007200710078007400710074008000d6009c0072006f006c",
       INIT_09 => X"0050003500450067006e00720066005e0048004e0049005300600065005e005d",
       INIT_0A => X"006d0068006400700073007100740073006f00740076008a007a0066004b0032",
       INIT_0B => X"003a0038005300710079007a007400600064005b003a003a005400690062005f",
       INIT_0C => X"0064005f0025004a0075007600730076007500740078006b0062006c00570043",
       INIT_0D => X"0053004b00540082008e007600630066006f00530047002f003d00620063005d",
       INIT_0E => X"00730060002b0040006f00750072007400770071006d005e006e0083006a0057",
       INIT_0F => X"005f0058004d00760099007c005d0062005d0051003c0035002f005300670061",
       INIT_10 => X"00a10069003a0079007c00710075007a0079008700590069008d008f006f0050",
       INIT_11 => X"00510055004e0047007d00870067004f004d0052004900390023003b006a0067",
       INIT_12 => X"00b0008b0064009a009500740074007600b400d600b4008300990083006e0055",
       INIT_13 => X"0054004a00390044007d0085007c0062005100550055004c0031001e004b0067",
       INIT_14 => X"00b70074009700a9009c00700076005900c500e000bf0087009f0089006c006f",
       INIT_15 => X"004c0050002c005500a5009300930064005300660058004f003b0024002e0051",
       INIT_16 => X"00bf006c009000af00a70078007b005d005f00b600ab008e00a100ab0077006b",
       INIT_17 => X"006200540026007900c90098008b00590050005d00680057004b003500370038",
       INIT_18 => X"00c20060008600b4009c007b007b006d0044009a0090007200a600ca00950071",
       INIT_19 => X"007200720032009300bb00950076005800530054005f005700570049004a0037",
       INIT_1A => X"00c0005f009a00bc006e006a007c007400480084007d009500ae00d800ac0083",
       INIT_1B => X"007500720047009800b50090006e005500500049005000640065005800590049",
       INIT_1C => X"00c4006b00a700ba006d00590077007a004a006a007b00b900b400a5008c008f",
       INIT_1D => X"008800640047009800af00850080006d0056005d0060006e007400600055005f",
       INIT_1E => X"00c5008100a700b2008900530078007d005e0078008300dd00ec008a00820079",
       INIT_1F => X"0070006800580086009f0093006c0055004800580068006d006e005600600068",
       INIT_20 => X"00cb009200a400b600aa0056007d007e00790050008f00a300980084006a006a",
       INIT_21 => X"00650065005a008f008a008d00820069004c004f005d005b00530058006c0068",
       INIT_22 => X"00d700a600a700b800b60066006000950089005d0074006900660069005b006e",
       INIT_23 => X"005b00670080006000380078007e0045003800380046005d005e00700074006e",
       INIT_24 => X"00d300b800af00b500b800830058008b00940080005a00400079006f0075008f",
       INIT_25 => X"005c0060008b0075006d00630044003b0029003e00450069007700780073006f",
       INIT_26 => X"00c000bd00b000b300b60095005a0079007c00880086003b00760061008600b0",
       INIT_27 => X"0076004b0077007c00810056003100330031005a005b007600790071006f006b",
       INIT_28 => X"009c00c100b200ad00b5009d0067008700af0069005a004d005a007600ad00b6",
       INIT_29 => X"00940064004e004d003d0034002e0021003900470064007d007b006d00710069",
       INIT_2A => X"007800c800b200a900b300900057009900f700de008c008d009c00b600c400c0",
       INIT_2B => X"00ac0085006d003e0031003600460051005500540063006500680060005c005a",
       INIT_2C => X"006900c500b700ac00b10092007000d300fc00fd00e0008f0084008d00850085",
       INIT_2D => X"007c005d00570052005400540055005d005e005b00600068006c00610061005f",
       INIT_2E => X"0059008900a800ae00b600aa00a600f500fb00e7008800580050004c004b0048",
       INIT_2F => X"004f0051005100520056005a005900570059005d005e00600060005e005f005a",
       INIT_30 => X"005b00570066009900b3008800bd00fa00f5009f005e00540054005500530054",
       INIT_31 => X"005600540052004f0053005600550059005c00670067006500660063005e0067",
       INIT_32 => X"006f005e0055006a0094008800d500fd00c6005d005b0058005a005a00530052",
       INIT_33 => X"005200510050005300560059005c005f006c006e006d006c006c0069007b0089",
       INIT_34 => X"0072006300560053005f009100e500f5008f005c0057005e005c005200520053",
       INIT_35 => X"0054005300560058005a0061006a006e00690061005f005b006c0082008a007d",
       INIT_36 => X"006e0062005900560053006a00db00e4007e0068005e00570061005700500052",
       INIT_37 => X"00540057005900590061005c005d00660065005d005500650081007e00620060",
       INIT_38 => X"006c0061005c005800580054008500c500640061005e005f0067006400600053",
       INIT_39 => X"004f00500058005c005c005f005d005c005a005d0066007d006e005a003c005d",
       INIT_3A => X"007c00640058005b00570059004f006b0059004d00470052005d00640066005c",
       INIT_3B => X"005e006300630061005f005e00580053005b0070008400830074006100400055",
       INIT_3C => X"007400660055005b005a005c00580051005500480043004a0047004900500056",
       INIT_3D => X"005f0065006d00770071005f0058005800690082009c00910073005200520040",
       INIT_3E => X"006b0069005900560059005c00570051004f00450042004900450049003f003a",
       INIT_3F => X"0046005700680077006f0060005f0057006d0083009200870063004d00540043",

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

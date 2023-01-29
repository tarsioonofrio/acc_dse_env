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

entity ifmap_18k_layer0_entity3 is
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
  end ifmap_18k_layer0_entity3;

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
       INIT_00 => X"00eb00e700e800e800e800e800e800e800e800e800e900e900e900e900e900e9",
       INIT_01 => X"00e900e800e700e600e800e800e800e900e800e900e800e800e800e900e900e8",
       INIT_02 => X"00ee00eb00eb00eb00eb00eb00eb00eb00eb00eb00ec00ec00ec00ec00ec00ec",
       INIT_03 => X"00ed00ec00ec00ea00ea00ea00eb00ec00ec00ec00eb00eb00eb00ec00ec00eb",
       INIT_04 => X"00ed00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00ea00eb00eb",
       INIT_05 => X"00ec00ec00eb00ea00e300e700e700ea00ea00ea00ea00ea00ea00eb00eb00ea",
       INIT_06 => X"00ee00eb00eb00eb00eb00eb00eb00eb00ea00ea00ea00ea00ea00ea00eb00eb",
       INIT_07 => X"00e900e800e400df00ba00d100cf00e400ec00ea00ea00ea00ea00eb00eb00eb",
       INIT_08 => X"00ed00ea00eb00eb00eb00eb00eb00eb00ea00ea00eb00eb00ea00ea00eb00eb",
       INIT_09 => X"00ec00e900db00cb00a300c300d600e600ed00eb00eb00eb00eb00ec00ec00ec",
       INIT_0A => X"00ef00ec00ec00ec00ec00ec00eb00eb00ea00eb00ed00ed00ea00e800eb00e5",
       INIT_0B => X"00d000c200b900ae00a500b800cf00e200ec00ec00ec00ec00ec00ed00ed00ed",
       INIT_0C => X"00e400e400e800e700ea00ed00ed00ec00ed00ed00ef00ef00e100e000e900dd",
       INIT_0D => X"00b700a1009f009a0090008f009c00c600e900ec00eb00eb00eb00ec00ed00ef",
       INIT_0E => X"00d400e000e600e300e500ea00ed00ee00ef00ef00ef00f000c900db00e900d6",
       INIT_0F => X"00c100b900b800ad00a5009f00a200ba00e500ea00e900e900ea00ec00ed00ee",
       INIT_10 => X"00d800dd00e100e100e300e700ec00ee00ee00ee00ed00ef00c500dc00e900e6",
       INIT_11 => X"00d100d100db00d000d100d200d900da00e100e400e400e600e600eb00ed00ee",
       INIT_12 => X"00760077007c008800ac00e100eb00ed00ec00eb00eb00e900d600e200e800ec",
       INIT_13 => X"00e400e300e700e100e100d900c900b900ac00a700a700ba00df00eb00ec00ee",
       INIT_14 => X"006d0067006c006f009200de00e300e500ec00ea00e700e600e500e700e800e6",
       INIT_15 => X"00e700e700e500df00bf00a400920089008600800079009500d800ea00eb00ed",
       INIT_16 => X"00c300bc00c700c800d100df00d500d300d800dc00db00d200d100d300d800dc",
       INIT_17 => X"00e100e200e100da00b700af00b500b200ba00aa008e00b900db00e700ea00ec",
       INIT_18 => X"00c100bf00ca00d600df00d600cb00ab00b100cf00ae0062005d0065006f007a",
       INIT_19 => X"0089009900ca00df00da00dc00df00d900dd00d400c400de00db00dd00e800eb",
       INIT_1A => X"0071006f0071007d008a00aa00bf00be00d000d8009e0036002d003100350042",
       INIT_1B => X"0066009f00dd00ea00e900e300df00cf00ca00d300d400c700b300bc00d300dd",
       INIT_1C => X"003d0045003f0044007b008b009700c300d600ce00a30067005f0065008a00b5",
       INIT_1D => X"00cf00dd00db00cd00b7009e00930083007d0082008800850080008a00b600c5",
       INIT_1E => X"0028003a0055007f00840060007700a300ad00b800b600b500b700c600da00c8",
       INIT_1F => X"00ae009f0091008400740062005e00630069006b007a008a0096009d00bc00b9",
       INIT_20 => X"000d001a008600ce008a0076008d00ac00b500cf00dc00e400e000e600e200b0",
       INIT_21 => X"0090008a008e0091009a00950095009a009d00a000ad00bb00be00b200a5009d",
       INIT_22 => X"0005003a00c800e100c500c700d400e200e500e900e800e600d100df00dd00d2",
       INIT_23 => X"00c600b400c100bc00bd00c200c000b800ac00ab00a10090008800830080008a",
       INIT_24 => X"0027009100be00ba00b800c000c200c200c200bf00c000be00b100b4009a0093",
       INIT_25 => X"0091009c0092007100720084007e006f005c005b005d005e0069007900810081",
       INIT_26 => X"007a00a2008f008900830080007f008200830080007f00810081007c00680064",
       INIT_27 => X"006600760070005e005e005e0057005300500053005d0065006c007300790082",
       INIT_28 => X"0049004c004d0050005400570057005a005e0066006b00710073007600760078",
       INIT_29 => X"0073006e006a0064005f0055004f00500050004d00500052005c0071007d0088",
       INIT_2A => X"000d0003000900120012001500140016001a0022002a00300034003c00420046",
       INIT_2B => X"004700480043003c003700350035003900390039004800570068007800820089",
       INIT_2C => X"0024000b00080020002400160008000300010000000000000006000500010003",
       INIT_2D => X"000d00180015001500150016001e0027003900550071007b0074007a00860099",
       INIT_2E => X"0023001a000d001b004700460031001b000f00050002000000110039001f000a",
       INIT_2F => X"000400040007000e00190029003e0056007a00900084007200750084009200ac",
       INIT_30 => X"0010000d00040003002d00410036002400120004000200000007007600a10083",
       INIT_31 => X"007000690069006d0076008a009a0097007f0069006a00780081008e00a400b8",
       INIT_32 => X"0028000c00000000000c001e0020001500070002000200030000004400b600cd",
       INIT_33 => X"00c400c200c300bb00ac0096007b0067005f0068007a00810084009800ab00b9",
       INIT_34 => X"0045001a000100010004000c0012000c000400020002000400010020009900cb",
       INIT_35 => X"00c300bf00b3009b0077005b0051005e0075007d007d0081009000a200ad00b8",
       INIT_36 => X"0053002f00010002000200050007000400010001000100030001001b008e00cd",
       INIT_37 => X"00c600a900790055004a0055006600790080007a00790084009300a500b000ba",
       INIT_38 => X"005c003600060003000200010001000100010001000100010000000f0066009d",
       INIT_39 => X"0075004a0038004a00630073007a007c007b007d00800088009400a200b100bc",
       INIT_3A => X"0057002b0013000b0008000500020002000300030003000200000004002a0047",
       INIT_3B => X"003500390050007100840086007b007400780083008b008f009c00a900b600bc",
       INIT_3C => X"0052002e0024001f001b00160011001000120013001400130013001700250040",
       INIT_3D => X"0057006800740080008b008300750073007b0083008b0094009f00ae00b900bb",
       INIT_3E => X"0055003e003a00370033002f002e00300031003300350037003b004400510068",
       INIT_3F => X"0074007f0085007f007f00760072007a00810088008d0095009e00a800b400ba",

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

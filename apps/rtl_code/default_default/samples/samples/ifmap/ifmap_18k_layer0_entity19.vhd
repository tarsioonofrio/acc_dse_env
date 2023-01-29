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

entity ifmap_18k_layer0_entity19 is
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
  end ifmap_18k_layer0_entity19;

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
       INIT_00 => X"002500310039003a0042004e0050005100560052004900420041004300430038",
       INIT_01 => X"0032003200400073003400380032002700160022002e0024001d001200150013",
       INIT_02 => X"00430048004d00440043004a004800420044004000390034003200360037002e",
       INIT_03 => X"0029002a0027002900280023001e00210022002e001e001b001c001500160012",
       INIT_04 => X"004800440048003e003a003d003800310030002d002b00280026002a002b0026",
       INIT_05 => X"00220023001e001c00230021001f002200300022000d000e0015001400130011",
       INIT_06 => X"00380036003d003c003e0030002b00240023002300220020001f002100220020",
       INIT_07 => X"001d001e001b001d0020001c001d0025002a0012000b000f0016001300100011",
       INIT_08 => X"003900390042003b003400240020001b001c001d001c001a001a001a001c001e",
       INIT_09 => X"001c001c001c001c001c00300043002a00190012000d0019001b001f00130011",
       INIT_0A => X"003b003a002f0021001a001a0019001600170019001a001900180018001b001f",
       INIT_0B => X"001d001e0021001e0021005d005e003c0029001b001e002c002b002d00180013",
       INIT_0C => X"0022001c001700140016001700160015001600160019001a00180019001d0023",
       INIT_0D => X"0020001f0023001e003300590037002500380028002b002d0024001e00170015",
       INIT_0E => X"0011001100100012001600170016001600180017001a001b0019001b001d0027",
       INIT_0F => X"0028002d00330030004100400012000b00220025001f00200019001600160015",
       INIT_10 => X"0011001200120012001500160017001700190018001c001e002500380033003b",
       INIT_11 => X"003b003a00370036003d002800110010001a00190018001b001a001700150014",
       INIT_12 => X"001300120012001200150014001600180018001900200031003e004c00390034",
       INIT_13 => X"0031002e0032003a003800310030002c00290023001900190019001800140014",
       INIT_14 => X"00140012001300120015001500150017001900190024003500310042003e004a",
       INIT_15 => X"0068008900a600b8007c0068004b00210038003d002600190018001900120013",
       INIT_16 => X"001500120014001300180018001600180019001d001f00300055009700b200be",
       INIT_17 => X"00cd00cd00ca00c500b200d00098001600180025004600280015001600110011",
       INIT_18 => X"0014001400160015001800180019001a00190020004200700090009b008c0075",
       INIT_19 => X"006400580047003d007500e800d5004e000f000a00320046001a001500110010",
       INIT_1A => X"0014001600190016001700170019001a001a00480067005b0050005600340012",
       INIT_1B => X"00110022000f0010007c00dd00e0009b002400070016003b0021001300120010",
       INIT_1C => X"00180017001b0016001800190013001500370055003a0029003d004e00320018",
       INIT_1D => X"000b002b001e004900bf00d800d100cd0067000e00100017001b001600140012",
       INIT_1E => X"001a0016001a001700190025003c0034004c00340038003b0050004d002e0026",
       INIT_1F => X"00230049007c00c400df00d800d900d2007600390015000e001f0047003e0011",
       INIT_20 => X"0019001400190017002100350060005c0049005d003e004200510047005a00a2",
       INIT_21 => X"00c400df00f500f500e300e400de00790025003b001100090048008c00750013",
       INIT_22 => X"001900150018001a0028002c00350045005800520025002900310020009400fb",
       INIT_23 => X"00f600f200e900e200e100e2008b001f000b001900280043008500a200970022",
       INIT_24 => X"0016001300160026005d0046002e0036004b00260018001b0038003100a300e3",
       INIT_25 => X"00d600cd00cb00da00e500e400a3004a0039005a008000950097009600a00033",
       INIT_26 => X"0013000f0026007c00af005a0024002a003f0017000b00150040004f00aa00d0",
       INIT_27 => X"00c700c500d300d600ce00d900e300b1009800a800a700a2009a00970088002a",
       INIT_28 => X"0012000a006500dc00be006f002f002e0039000a0009000e001f004200b100cc",
       INIT_29 => X"00c200ca00c6007c004f006600ac00d300c800b800b100a9009c008c004a0011",
       INIT_2A => X"000e0014008400a50096008000370034001e0003000a0016002d004800b400c6",
       INIT_2B => X"00be00cd007b0019001a001e003800a300ca00b8009e009300880044000d0011",
       INIT_2C => X"000a00230053002100530082003e00350013000700100048006c007500b700c2",
       INIT_2D => X"00c300b7002f001e0031002b0014004f00a10094008400810040000a00090018",
       INIT_2E => X"000a00210037002300460088004e0024000f0011002200580061007e00cd00cd",
       INIT_2F => X"00d000980020002b0020001f0020001f00750091008a00630017000c00190021",
       INIT_30 => X"000a001500360041004700880057002100150027003f00570056009a00cf00c5",
       INIT_31 => X"00c60081002500380037002c001c000f004d0093008b0043000e0014001c001f",
       INIT_32 => X"0007000e002f003e004500800056001c001e003c005e006f006f00a200b600b4",
       INIT_33 => X"00bc007f0029003c004b00350023000f002c007a006f00260007000d00100016",
       INIT_34 => X"000b00110027003b004600750068003d00510079009f00b700b900c300c900c7",
       INIT_35 => X"00c60088002a003c006600620034001c0015004f0045001000030007000c0016",
       INIT_36 => X"00130014001d0043004900670055003c00450050005b0064006800710071006d",
       INIT_37 => X"006d00590025004100400042001f001700080014000e000500060006000b0018",
       INIT_38 => X"0017001c001d0025002c002c00160007000a000a000c000c000d001000110010",
       INIT_39 => X"000f000f000900430044003000380010000400030003000400060009000e0019",
       INIT_3A => X"002100250027002000170012001900200017001500170017001700150013000f",
       INIT_3B => X"000b000a00070018003e00470029000800040005000500060009000e0018001d",
       INIT_3C => X"0023002500290032003c00430051004d002c0024002d00300031002c00270023",
       INIT_3D => X"001d001b0015001000170019000a0009000b0009000a000b000e0014001f001e",
       INIT_3E => X"002a002a003b0057006d006f006600520037003e00450047004a004800460043",
       INIT_3F => X"003b0033002b0029002f002c0018001200140016001500130016001c0020001e",

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

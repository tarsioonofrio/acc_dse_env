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

entity {entity} is
    generic (
        BRAM_SIZE: string := {bram_size};
        BRAM_SIZE_ADD: integer := 8;
        DEVICE: string := {device};
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
  end {entity};

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
       INIT_00 => {INIT[0x00]},
       INIT_01 => {INIT[0x01]},
       INIT_02 => {INIT[0x02]},
       INIT_03 => {INIT[0x03]},
       INIT_04 => {INIT[0x04]},
       INIT_05 => {INIT[0x05]},
       INIT_06 => {INIT[0x06]},
       INIT_07 => {INIT[0x07]},
       INIT_08 => {INIT[0x08]},
       INIT_09 => {INIT[0x09]},
       INIT_0A => {INIT[0x0A]},
       INIT_0B => {INIT[0x0B]},
       INIT_0C => {INIT[0x0C]},
       INIT_0D => {INIT[0x0D]},
       INIT_0E => {INIT[0x0E]},
       INIT_0F => {INIT[0x0F]},
       INIT_10 => {INIT[0x10]},
       INIT_11 => {INIT[0x11]},
       INIT_12 => {INIT[0x12]},
       INIT_13 => {INIT[0x13]},
       INIT_14 => {INIT[0x14]},
       INIT_15 => {INIT[0x15]},
       INIT_16 => {INIT[0x16]},
       INIT_17 => {INIT[0x17]},
       INIT_18 => {INIT[0x18]},
       INIT_19 => {INIT[0x19]},
       INIT_1A => {INIT[0x1A]},
       INIT_1B => {INIT[0x1B]},
       INIT_1C => {INIT[0x1C]},
       INIT_1D => {INIT[0x1D]},
       INIT_1E => {INIT[0x1E]},
       INIT_1F => {INIT[0x1F]},
       INIT_20 => {INIT[0x20]},
       INIT_21 => {INIT[0x21]},
       INIT_22 => {INIT[0x22]},
       INIT_23 => {INIT[0x23]},
       INIT_24 => {INIT[0x24]},
       INIT_25 => {INIT[0x25]},
       INIT_26 => {INIT[0x26]},
       INIT_27 => {INIT[0x27]},
       INIT_28 => {INIT[0x28]},
       INIT_29 => {INIT[0x29]},
       INIT_2A => {INIT[0x2A]},
       INIT_2B => {INIT[0x2B]},
       INIT_2C => {INIT[0x2C]},
       INIT_2D => {INIT[0x2D]},
       INIT_2E => {INIT[0x2E]},
       INIT_2F => {INIT[0x2F]},
       INIT_30 => {INIT[0x30]},
       INIT_31 => {INIT[0x31]},
       INIT_32 => {INIT[0x32]},
       INIT_33 => {INIT[0x33]},
       INIT_34 => {INIT[0x34]},
       INIT_35 => {INIT[0x35]},
       INIT_36 => {INIT[0x36]},
       INIT_37 => {INIT[0x37]},
       INIT_38 => {INIT[0x38]},
       INIT_39 => {INIT[0x39]},
       INIT_3A => {INIT[0x3A]},
       INIT_3B => {INIT[0x3B]},
       INIT_3C => {INIT[0x3C]},
       INIT_3D => {INIT[0x3D]},
       INIT_3E => {INIT[0x3E]},
       INIT_3F => {INIT[0x3F]},

       -- The next set of INIT_xx are valid when configured as 36Kb
       INIT_40 => {INIT[0x40]},
       INIT_41 => {INIT[0x41]},
       INIT_42 => {INIT[0x42]},
       INIT_43 => {INIT[0x43]},
       INIT_44 => {INIT[0x44]},
       INIT_45 => {INIT[0x45]},
       INIT_46 => {INIT[0x46]},
       INIT_47 => {INIT[0x47]},
       INIT_48 => {INIT[0x48]},
       INIT_49 => {INIT[0x49]},
       INIT_4A => {INIT[0x4A]},
       INIT_4B => {INIT[0x4B]},
       INIT_4C => {INIT[0x4C]},
       INIT_4D => {INIT[0x4D]},
       INIT_4E => {INIT[0x4E]},
       INIT_4F => {INIT[0x4F]},
       INIT_50 => {INIT[0x50]},
       INIT_51 => {INIT[0x51]},
       INIT_52 => {INIT[0x52]},
       INIT_53 => {INIT[0x53]},
       INIT_54 => {INIT[0x54]},
       INIT_55 => {INIT[0x55]},
       INIT_56 => {INIT[0x56]},
       INIT_57 => {INIT[0x57]},
       INIT_58 => {INIT[0x58]},
       INIT_59 => {INIT[0x59]},
       INIT_5A => {INIT[0x5A]},
       INIT_5B => {INIT[0x5B]},
       INIT_5C => {INIT[0x5C]},
       INIT_5D => {INIT[0x5D]},
       INIT_5E => {INIT[0x5E]},
       INIT_5F => {INIT[0x5F]},
       INIT_60 => {INIT[0x60]},
       INIT_61 => {INIT[0x61]},
       INIT_62 => {INIT[0x62]},
       INIT_63 => {INIT[0x63]},
       INIT_64 => {INIT[0x64]},
       INIT_65 => {INIT[0x65]},
       INIT_66 => {INIT[0x66]},
       INIT_67 => {INIT[0x67]},
       INIT_68 => {INIT[0x68]},
       INIT_69 => {INIT[0x69]},
       INIT_6A => {INIT[0x6A]},
       INIT_6B => {INIT[0x6B]},
       INIT_6C => {INIT[0x6C]},
       INIT_6D => {INIT[0x6D]},
       INIT_6E => {INIT[0x6E]},
       INIT_6F => {INIT[0x6F]},
       INIT_70 => {INIT[0x70]},
       INIT_71 => {INIT[0x71]},
       INIT_72 => {INIT[0x72]},
       INIT_73 => {INIT[0x73]},
       INIT_74 => {INIT[0x74]},
       INIT_75 => {INIT[0x75]},
       INIT_76 => {INIT[0x76]},
       INIT_77 => {INIT[0x77]},
       INIT_78 => {INIT[0x78]},
       INIT_79 => {INIT[0x79]},
       INIT_7A => {INIT[0x7A]},
       INIT_7B => {INIT[0x7B]},
       INIT_7C => {INIT[0x7C]},
       INIT_7D => {INIT[0x7D]},
       INIT_7E => {INIT[0x7E]},
       INIT_7F => {INIT[0x7F]},

       -- The next set of INITP_xx are for the parity bits
       INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",

       -- The next set of INIT_xx are valid when configured as 36Kb
       INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
       INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000")
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

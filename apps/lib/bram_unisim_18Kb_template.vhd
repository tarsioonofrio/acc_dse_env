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

entity {entity} is
    generic (
        DEVICE: string := "7SERIES"
        );
  
    port (
        RST  : in std_logic;
        CLK  : in std_logic;
        EN   : in std_logic;
        WE   : in std_logic_vector({we_width}-1 downto 0);;
        DI   : in std_logic_vector(INPUT_SIZE-1 downto 0);
        ADDR : in std_logic_vector({addr_width}-1 downto 0);
        DO   : out std_logic_vector(INPUT_SIZE-1 downto 0)
    );
  end {entity};

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
       INIT_00 => X"{init_xx[00]}",
       INIT_01 => X"{init_xx[01]}",
       INIT_02 => X"{init_xx[02]}",
       INIT_03 => X"{init_xx[03]}",
       INIT_04 => X"{init_xx[04]}",
       INIT_05 => X"{init_xx[05]}",
       INIT_06 => X"{init_xx[06]}",
       INIT_07 => X"{init_xx[07]}",
       INIT_08 => X"{init_xx[08]}",
       INIT_09 => X"{init_xx[09]}",
       INIT_0A => X"{init_xx[10]}",
       INIT_0B => X"{init_xx[11]}",
       INIT_0C => X"{init_xx[12]}",
       INIT_0D => X"{init_xx[13]}",
       INIT_0E => X"{init_xx[14]}",
       INIT_0F => X"{init_xx[15]}",
       INIT_10 => X"{init_xx[16]}",
       INIT_11 => X"{init_xx[17]}",
       INIT_12 => X"{init_xx[18]}",
       INIT_13 => X"{init_xx[19]}",
       INIT_14 => X"{init_xx[20]}",
       INIT_15 => X"{init_xx[21]}",
       INIT_16 => X"{init_xx[22]}",
       INIT_17 => X"{init_xx[23]}",
       INIT_18 => X"{init_xx[24]}",
       INIT_19 => X"{init_xx[25]}",
       INIT_1A => X"{init_xx[26]}",
       INIT_1B => X"{init_xx[27]}",
       INIT_1C => X"{init_xx[28]}",
       INIT_1D => X"{init_xx[29]}",
       INIT_1E => X"{init_xx[30]}",
       INIT_1F => X"{init_xx[31]}",
       INIT_20 => X"{init_xx[32]}",
       INIT_21 => X"{init_xx[33]}",
       INIT_22 => X"{init_xx[34]}",
       INIT_23 => X"{init_xx[35]}",
       INIT_24 => X"{init_xx[36]}",
       INIT_25 => X"{init_xx[37]}",
       INIT_26 => X"{init_xx[38]}",
       INIT_27 => X"{init_xx[39]}",
       INIT_28 => X"{init_xx[40]}",
       INIT_29 => X"{init_xx[41]}",
       INIT_2A => X"{init_xx[42]}",
       INIT_2B => X"{init_xx[43]}",
       INIT_2C => X"{init_xx[44]}",
       INIT_2D => X"{init_xx[45]}",
       INIT_2E => X"{init_xx[46]}",
       INIT_2F => X"{init_xx[47]}",
       INIT_30 => X"{init_xx[48]}",
       INIT_31 => X"{init_xx[49]}",
       INIT_32 => X"{init_xx[50]}",
       INIT_33 => X"{init_xx[51]}",
       INIT_34 => X"{init_xx[52]}",
       INIT_35 => X"{init_xx[53]}",
       INIT_36 => X"{init_xx[54]}",
       INIT_37 => X"{init_xx[55]}",
       INIT_38 => X"{init_xx[56]}",
       INIT_39 => X"{init_xx[57]}",
       INIT_3A => X"{init_xx[58]}",
       INIT_3B => X"{init_xx[59]}",
       INIT_3C => X"{init_xx[60]}",
       INIT_3D => X"{init_xx[61]}",
       INIT_3E => X"{init_xx[62]}",
       INIT_3F => X"{init_xx[63]}",

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

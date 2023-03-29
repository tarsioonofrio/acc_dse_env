MEM_EMPTY_36Kb : if BRAM_NAME(1 to 7) = "default" generate
    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
        BRAM_SIZE => "36Kb",             -- Target BRAM, "18Kb" or "36Kb"
        DEVICE => DEVICE,                -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
        DO_REG => 0,                     -- Optional output register (0 or 1)
        INIT => X"000000000000000000",   -- Initial values on output port
        INIT_FILE => "NONE",
        WRITE_WIDTH => {bram_width}, -- 0, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        READ_WIDTH => {bram_width}, -- 0,  -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
        SRVAL => X"000000000000000000",  -- Set/Reset value for port output
        WRITE_MODE => "WRITE_FIRST"      -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
    )
    port map (
        DO => bram_do,      -- Output data, width defined by READ_WIDTH parameter
        ADDR => bram_addr,  -- Input address, width defined by read/write port depth
        CLK => CLK,    -- 1-bit input clock
        DI => bram_di,      -- Input data port, width defined by WRITE_WIDTH parameter
        EN => EN,      -- 1-bit input RAM enable
        REGCE => '1', -- 1-bit input output register enable
        RST => RST,    -- 1-bit input reset
        WE => bram_wr_en       -- Input write enable, width defined by write port depth
    );
-- End of BRAM_SINGLE_MACRO_inst instantiation
end generate;

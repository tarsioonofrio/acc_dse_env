{label} : if N_LAYER = {n_layer} generate
  entity work.{entity}
    port map(
      CLK    => clock,
      RST    => reset,
      EN  => chip_en,
      WE    => wr_en,
      DI  => data_in,
      ADDR  => address,
      DO => data_out
      );
end generate {label};


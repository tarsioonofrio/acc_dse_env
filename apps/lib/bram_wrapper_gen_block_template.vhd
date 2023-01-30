{label} :  if N_LAYER = {n_layer} generate
  entity work.{entity}
    port map(
      clock    => clock,
      reset    => reset,
      chip_en  => chip_en,
      wr_en    => wr_en,
      data_in  => data_in,
      address  => address,
      data_av  => data_av,
      data_out => data_out,
      n_read   => n_read,
      n_write  => n_write
      );

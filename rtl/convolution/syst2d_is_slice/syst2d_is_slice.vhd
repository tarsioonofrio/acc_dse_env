library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity input_buffer is
  generic (N_FILTER     : integer := 16;
           N_CHANNEL    : integer := 3;
           FILTER_WIDTH : integer := 3;
           INPUT_SIZE   : integer := 8;
           MEM_SIZE     : integer := 12
           );
  port (clock : in std_logic;
        reset : in std_logic;

        read_bias    : in std_logic;
        inmem_valid  : in std_logic;
        read_weights : in std_logic;

        inmem_value : in std_logic_vector((INPUT_SIZE*2)-1 downto 0);

        bias_idx : in std_logic_vector(MEM_SIZE-1 downto 0);

        weights_idx0 : in std_logic_vector(MEM_SIZE-1 downto 0);
        weights_idx1 : in std_logic_vector(MEM_SIZE-1 downto 0);
        weights_idx2 : in std_logic_vector(MEM_SIZE-1 downto 0);

        mem_bias_value : out std_logic_vector((INPUT_SIZE*2)-1 downto 0);

        mem_weights_value0 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
        mem_weights_value1 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
        mem_weights_value2 : out std_logic_vector((INPUT_SIZE)-1 downto 0);

        weight_x : out std_logic_vector(MEM_SIZE-1 downto 0);
        bias_x   : out std_logic_vector(MEM_SIZE-1 downto 0)
        );
end input_buffer;

architecture a1 of input_buffer is

--type bias_3x3 is array (0 to N_FILTER-1) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  type bias_3x3 is array (0 to N_FILTER-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal mem_bias : bias_3x3;

  type weights_3x3 is array (0 to (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER)-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal mem_weights : weights_3x3;

  signal weight_x_signal, bias_x_signal : std_logic_vector(MEM_SIZE-1 downto 0);

begin

  ----------------------------------------------------------------------------
  -- menage bias
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      bias_x_signal <= (others => '0');
      mem_bias      <= (others => (others => '0'));

    elsif rising_edge(clock) then

      if read_bias = '1' and bias_x_signal < N_FILTER and inmem_valid = '1' then
        mem_bias(conv_integer(bias_x_signal)) <= inmem_value;
        bias_x_signal                         <= bias_x_signal + '1';
      end if;

    end if;
  end process;

  ----------------------------------------------------------------------------
  -- manage weights
  ----------------------------------------------------------------------------  
  process(reset, clock)
  begin
    if reset = '1' then
      weight_x_signal <= (others => '0');
      mem_weights     <= (others => (others => '0'));
    elsif rising_edge(clock) then

      if read_weights = '1' and inmem_valid = '1' and weight_x_signal < (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
        mem_weights(conv_integer(weight_x_signal)) <= inmem_value;
        weight_x_signal                            <= weight_x_signal + 1;
      end if;

    end if;
  end process;

  mem_bias_value <= mem_bias(conv_integer(bias_idx));

  mem_weights_value0 <= mem_weights(conv_integer(weights_idx0))(INPUT_SIZE-1 downto 0);
  mem_weights_value1 <= mem_weights(conv_integer(weights_idx1))(INPUT_SIZE-1 downto 0);
  mem_weights_value2 <= mem_weights(conv_integer(weights_idx2))(INPUT_SIZE-1 downto 0);

  weight_x <= weight_x_signal;
  bias_x   <= bias_x_signal;

end a1;

-------------------------------------------------------------------------------------------------
-- convolution - SYSTOLIC (IS)  -  JAN/2021 - MORAES
-- MODIFIED IN MARCH 8 2021 - COMBINATIONAL MAC
-------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.CONV_STD_LOGIC_VECTOR;

entity convolution is
  generic (N_FILTER       : integer := 16;
           N_CHANNEL      : integer := 3;
           STRIDE         : integer := 2;
           X_SIZE         : integer := 32;
           FILTER_WIDTH   : integer := 3;
           CONVS_PER_LINE : integer := 15;
           MEM_SIZE       : integer := 12;
           INPUT_SIZE     : integer := 8;
           SHIFT          : integer := 4;
           CARRY_SIZE     : integer := 4
           );
  port (clock : in std_logic;
        reset : in std_logic;

        -- Accelerator interface
        start_conv : in  std_logic;
        end_conv   : out std_logic;
        debug      : out std_logic;

        -- Input memory interface
        inmem_valid   : in  std_logic;
        inmem_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);  -- value from feature map memory
        inmem_address : out std_logic_vector(MEM_SIZE-1 downto 0);  -- feature map address
        inmem_ce      : out std_logic;

        -- Ofmap memory interface
        ofmap_valid   : in  std_logic;
        pixel_in      : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        pixel_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
        ofmap_we      : out std_logic;
        ofmap_ce      : out std_logic

        );
end entity convolution;


architecture a1 of convolution is

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, READBIAS, READWEIGHT, READFEATURE, STARTMAC, WAITVALID);
  signal EA_read : statesReadValues;

  type statesM is (RIDLE, UPDATEADD, E0, E1, E2, E3, E4, E5, E6, E7);
  signal EA_add : statesM;

  type features_3x3 is array (0 to 2, 0 to 2) of std_logic_vector(INPUT_SIZE-1 downto 0);
  signal feature, weights, buffer_weights : features_3x3;

  type array3x3 is array (0 to 2, 0 to 2) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);  -- 20 bits
  signal op1, op2, res_mac, reg_mac : array3x3;

  type address is array (0 to 8) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal add : address;

  signal valid_sync_signal, partial_ce, partial_wr, partial_valid_flag, partial_channel_flag, partial_wr_keep, en_reg_flag, read_feature_flag, valid_out_reg, en_reg, pipe_reset, valid_rgb_signal, feature_stride_flag, cont_conv_flag, reg_read_features, read_bias_flag, read_bias, read_weights, read_features, start_mac, end_conv_signal, end_conv_reg, read_weight_flag, reg_read_weights, reg_read_bias, reg_start_mac, reg_reg_start_mac, ofmap_we_reg, ofmap_ce_reg, debug_reg, inmem_ce_reg : std_logic;

  signal partial0, partial0_reg, partial1, partial2, reg_soma1, shift_output, pixel_out_reg : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal partial_add, partial_add_reg, partial_base, partial_line, cont_iterations, cont_conv, cont_steps, cont_line, rgb_base, feature_base, feature_stride, feature_x, weight_x, bias_x, feature_control, ofmap_address_reg, inmem_address_reg, weights_idx0, weights_idx1, weights_idx2, bias_idx0 : std_logic_vector(MEM_SIZE-1 downto 0);

  signal mem_weights_value0, mem_weights_value1, mem_weights_value2 : std_logic_vector(INPUT_SIZE-1 downto 0);
  signal mem_bias_value                                             : std_logic_vector((INPUT_SIZE*2)-1 downto 0);

  signal H                                                                                                                                                                                                              : integer range 0 to X_SIZE;
  signal V                                                                                                                                                                                                              : integer range 0 to 2**MEM_SIZE;
  signal address_base                                                                                                                                                                                                   : integer range 0 to 2**MEM_SIZE;
  signal filter_counter                                                                                                                                                                                                 : integer range 0 to N_FILTER;
  signal partial_sum_cont                                                                                                                                                                                               : integer range 0 to N_FILTER*CONVS_PER_LINE*CONVS_PER_LINE;
  signal channel_control                                                                                                                                                                                                : integer range 0 to N_CHANNEL;
  signal shift_output_cycle                                                                                                                                                                                             : integer range 0 to 2;
  signal partial_control, cont_debug, bias_idx, reg_bias_idx, next_line_idx, line_idx, filter_counter_reg, partial_sum_idx_reg, cont_feature_cycles, cont_weight_cycles, cont_bias_cycles, cont_valid, cont_total_valid : integer;
  signal conv_length, cont_partial_pixel                                                                                                                                                                                : integer range 0 to CONVS_PER_LINE*CONVS_PER_LINE;
  signal cont_sync_ofmapmem                                                                                                                                                                                             : integer range 0 to N_CHANNEL;

begin
  ----------------------------------------------------------------------------
  -- input values control
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      EA_read <= WAITSTART;
    elsif rising_edge(clock) then
      if end_conv_signal = '1' then
        EA_read <= WAITSTART;
      else
        case EA_read is
          when WAITSTART =>
            if start_conv = '1' then
              EA_read <= READBIAS;
            end if;
          when READBIAS =>
            if cont_bias_cycles = N_FILTER then
              EA_read <= READWEIGHT;
            end if;
          when READWEIGHT =>
            if cont_weight_cycles = (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
              EA_read <= READFEATURE;
            end if;
          when READFEATURE =>
            if cont_feature_cycles = 8 and channel_control < N_CHANNEL then
              EA_read <= STARTMAC;
            end if;
          when STARTMAC =>
            if inmem_valid = '1' then
              EA_read <= WAITVALID;
            end if;
          when WAITVALID =>
            if (cont_valid = N_FILTER) then
              EA_read <= READFEATURE;
            end if;
        end case;
      end if;
    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      read_bias     <= '0';
      read_weights  <= '0';
      read_features <= '0';

      start_mac        <= '0';
      end_conv_signal  <= '0';
      end_conv_reg     <= '0';
      read_weight_flag <= '0';

      cont_weight_cycles  <= 0;
      cont_bias_cycles    <= 0;
      cont_feature_cycles <= 0;

      cont_valid       <= 0;
      cont_total_valid <= 0;

    elsif rising_edge(clock) then

      if valid_out_reg = '1' then
        cont_total_valid <= cont_total_valid + 1;
      end if;

      if cont_total_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_FILTER then
        end_conv_signal <= '1';
      else
        end_conv_signal <= '0';
      end if;

      -- Registering end of convolution signal
      end_conv_reg <= end_conv_signal;

      case EA_read is
        when READBIAS =>
          read_bias <= '1';

          if inmem_valid = '1' then
            cont_bias_cycles <= cont_bias_cycles + 1;
          end if;

        when READWEIGHT =>
          read_bias    <= '0';
          read_weights <= '1';
          if inmem_valid = '1' then
            cont_weight_cycles <= cont_weight_cycles + 1;
          end if;
        when READFEATURE =>
          cont_valid   <= 0;
          read_weights <= '0';
          if channel_control < N_CHANNEL then
            read_features <= '1';
            if inmem_valid = '1' then
              cont_feature_cycles <= cont_feature_cycles + 1;
            end if;
          end if;
        when STARTMAC =>
          read_features       <= '0';
          cont_feature_cycles <= 0;
          start_mac           <= '1';
        when WAITVALID =>
          start_mac <= '0';

          if valid_rgb_signal = '1' then
            cont_valid <= cont_valid + 1;
          end if;

        when others => null;
      end case;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- manage address
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      address_base <= 0;
    elsif rising_edge(clock) then
      if cont_conv = CONVS_PER_LINE and cont_line < N_CHANNEL then
        address_base <= address_base + (FILTER_WIDTH*FILTER_WIDTH);
      elsif cont_line = N_CHANNEL then
        address_base <= 0;
      end if;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Manage features
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      reg_read_features <= '0';
      feature_x         <= (others => '0');
      feature_control   <= (others => '0');
      feature           <= (others => (others => (others => '0')));

      feature_base        <= (others => '0');
      rgb_base            <= (others => '0');
      feature_stride      <= (others => '0');
      feature_stride_flag <= '0';

      cont_line <= (others => '0');

      line_idx      <= 0;
      next_line_idx <= 0;

      read_feature_flag <= '0';

    elsif rising_edge(clock) then
      -- Register read_features signal to ensure the correct feature value read
      reg_read_features <= read_features;

      if ((read_features = '1' or reg_start_mac = '1' or start_mac = '1') and inmem_valid = '1' and feature_control < FILTER_WIDTH*FILTER_WIDTH) then

        feature_control <= feature_control + 1;

        feature_stride_flag <= '0';

        -- Logic to change for the correct pixel
        if (feature_control = 2) then
          feature_x <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE, MEM_SIZE) + feature_base;
        elsif (feature_control = 5) then
          feature_x <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE*2, MEM_SIZE) + feature_base;
        else
          feature_x <= feature_x + 1;
        end if;

        if (feature_control = 0) then
          feature(0, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 1) then
          feature(0, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 2) then
          feature(0, 2) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 3) then
          feature(1, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 4) then
          feature(1, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 5) then
          feature(1, 2) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 6) then
          feature(2, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 7) then
          feature(2, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (feature_control = 8) then
          feature(2, 2) <= inmem_value(INPUT_SIZE-1 downto 0);
          feature_base  <= feature_base + STRIDE;
        end if;

      elsif feature_control = FILTER_WIDTH*FILTER_WIDTH and read_feature_flag = '0' then
        read_feature_flag <= '1';
      elsif (read_features = '0' and reg_start_mac = '0' and start_mac = '0') then
        read_feature_flag <= '0';
        feature_control   <= (others => '0');
        feature_x         <= feature_stride + feature_base;

      end if;

      -- Next feature map line based on stride
      if cont_conv = CONVS_PER_LINE and feature_stride_flag = '0' then
        feature_stride_flag <= '1';

        feature_base    <= rgb_base;
        feature_control <= (others => '0');

        feature_stride <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE*X_SIZE, MEM_SIZE);
        feature_x      <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE*X_SIZE, MEM_SIZE) + rgb_base;

        cont_line <= cont_line + 1;

        if cont_line = N_CHANNEL-1 then
          rgb_base     <= rgb_base + (X_SIZE*2);
          feature_base <= rgb_base + (X_SIZE*2);
        end if;
      end if;

      if cont_line = N_CHANNEL then
        feature_x      <= rgb_base;
        feature_stride <= (others => '0');
        cont_line      <= (others => '0');
        next_line_idx  <= next_line_idx + CONVS_PER_LINE;
        line_idx       <= next_line_idx;
      end if;

    end if;
  end process;

  -------------------------------------------------------------------------------------------------------
  -- PART 1 - CONTROL: READS SIX ELEMENTS FROM MEMORY COMPUTING IN PARALLEL
  -------------------------------------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      EA_add             <= RIDLE;
      cont_sync_ofmapmem <= 0;
      partial_wr_keep    <= '0';
      weights_idx0       <= (others => '0');
      weights_idx1       <= (others => '0');
      weights_idx2       <= (others => '0');
    elsif rising_edge(clock) then

      if partial_wr = '1' then
        partial_wr_keep <= partial_wr;
      end if;

      if reg_start_mac = '1' then
        EA_add <= RIDLE;
      else
        case EA_add is
          when RIDLE =>
            if (reg_reg_start_mac = '1' and reg_read_features = '0') then
              EA_add <= UPDATEADD;
            else
              EA_add <= RIDLE;
            end if;
          when UPDATEADD =>
            EA_add <= E0;
          when E0 =>
            EA_add       <= E1;
            weights_idx0 <= add(0);
            weights_idx1 <= add(1);
            weights_idx2 <= add(2);
          when E1 =>
            EA_add <= E2;
          when E2 =>
            EA_add       <= E3;
            weights_idx0 <= add(3);
            weights_idx1 <= add(4);
            weights_idx2 <= add(5);
          when E3 =>
            EA_add <= E4;
          when E4 =>
            EA_add       <= E5;
            weights_idx0 <= add(6);
            weights_idx1 <= add(7);
            weights_idx2 <= add(8);
          when E5 =>
            EA_add <= E6;
          when E6 =>
            EA_add <= E7;
          when E7 =>

            if cont_sync_ofmapmem < (N_CHANNEL-1) and channel_control > 0 and EA_read = WAITVALID then
              cont_sync_ofmapmem <= cont_sync_ofmapmem + 1;
            elsif EA_read = READFEATURE then
              cont_sync_ofmapmem <= 0;
            end if;

            if channel_control = 0 or (channel_control > 0 and cont_sync_ofmapmem < (N_CHANNEL-1)) or partial_wr_keep = '1' then
              partial_wr_keep <= '0';
              EA_add          <= UPDATEADD;
            end if;

        end case;
      end if;
    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      H              <= 0;
      V              <= 0;
      add            <= (others => (others => '0'));
      buffer_weights <= (others => (others => (others => '0')));
      weights        <= (others => (others => (others => '0')));
      cont_steps     <= (others => '0');

    elsif rising_edge(clock) then

      case EA_add is

        when UPDATEADD =>
          --
          -- UPDATE THE ADDRESS IN A PIPELINE FASHION (only 2 colums)
          --
          if (V + H < FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
            add(0) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
            add(1) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 1;
            add(2) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 2;

            add(3) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 3;
            add(4) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 4;
            add(5) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 5;

            add(6) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 6;
            add(7) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 7;
            add(8) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 8;
          end if;

          --
          -- NEXT LINE
          --
          if V < ((2**MEM_SIZE) - 1) then
            H <= 0;
            V <= V+(FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL);
          end if;

          --
          -- TRANSFER THE READ DATA, REUSING THE FIRST COLUM TO THE THIRD ONE
          --
          weights(0, 0) <= buffer_weights(0, 0);
          weights(0, 1) <= buffer_weights(0, 1);
          weights(0, 2) <= buffer_weights(0, 2);

          weights(1, 0) <= buffer_weights(1, 0);
          weights(1, 1) <= buffer_weights(1, 1);
          weights(1, 2) <= buffer_weights(1, 2);

          weights(2, 0) <= buffer_weights(2, 0);
          weights(2, 1) <= buffer_weights(2, 1);
          weights(2, 2) <= buffer_weights(2, 2);

          -- count the number os arithmetic shifts
          if cont_steps < 10 then  -- stop at 9 - enough to fire accumulation
            cont_steps <= cont_steps + 1;
          end if;

          -- To ensure right valid rgb pulse 
          if (channel_control = N_CHANNEL) then
            cont_steps <= (others => '0');
          end if;

        when E0 | E1 =>
          buffer_weights(0, 0) <= mem_weights_value0;
          buffer_weights(0, 1) <= mem_weights_value1;
          buffer_weights(0, 2) <= mem_weights_value2;

        when E2 | E3 =>
          buffer_weights(1, 0) <= mem_weights_value0;
          buffer_weights(1, 1) <= mem_weights_value1;
          buffer_weights(1, 2) <= mem_weights_value2;

        when E4 | E5 =>
          buffer_weights(2, 0) <= mem_weights_value0;
          buffer_weights(2, 1) <= mem_weights_value1;
          buffer_weights(2, 2) <= mem_weights_value2;

        when others => null;

      end case;

      if (reg_start_mac = '1') then
        H <= 0;
        V <= address_base;

        add        <= (others => CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE));
        cont_steps <= (others => '0');
      end if;

    end if;
  end process;

  -- Buffer used to store all weights and all bias
  bias_idx0 <= CONV_STD_LOGIC_VECTOR(bias_idx, MEM_SIZE);

  input_buffer : entity work.input_buffer
    generic map(N_FILTER     => N_FILTER,
                N_CHANNEL    => N_CHANNEL,
                FILTER_WIDTH => FILTER_WIDTH,
                INPUT_SIZE   => INPUT_SIZE,
                MEM_SIZE     => MEM_SIZE
                )
    port map(clock              => clock,
             reset              => reset,
             read_bias          => read_bias,
             inmem_valid        => inmem_valid,
             read_weights       => read_weights,
             inmem_value        => inmem_value,
             bias_idx           => bias_idx0,
             mem_bias_value     => mem_bias_value,
             weights_idx0       => weights_idx0,
             weights_idx1       => weights_idx1,
             weights_idx2       => weights_idx2,
             mem_weights_value0 => mem_weights_value0,
             mem_weights_value1 => mem_weights_value1,
             mem_weights_value2 => mem_weights_value2,

             weight_x => weight_x,
             bias_x   => bias_x
             );

  -- Ensure en_reg rise only for one cycle
  process(reset, clock)
  begin
    if reset = '1' then
      en_reg_flag <= '0';
    elsif rising_edge(clock) then
      if EA_add = E2 or EA_add = E4 or EA_add = E6 or EA_add = UPDATEADD then
        en_reg_flag <= '1';
      else
        en_reg_flag <= '0';
      end if;
    end if;
  end process;

  en_reg <= '1' when (EA_add = E2 or EA_add = E4 or EA_add = E6 or EA_add = UPDATEADD) and en_reg_flag = '0' else '0';

  -------------------------------------------------------------------------------------------------------
  --- PART 2 *********  MACS AND FLOPS ARRAY - ATTENTION :  ARRANGEMENT IS DIFFERENT FROM 2D  ***********
  -------------------------------------------------------------------------------------------------------

  -- The first column does not hava a previous sum
  cols0 : for j in 0 to FILTER_WIDTH-1 generate
    mac0 : entity work.mac
      generic map(INPUT_SIZE => INPUT_SIZE,
                  CARRY_SIZE => CARRY_SIZE
                  )
      port map(sum     => (others => '0'),
               op1     => feature(j, 0),
               op2     => weights(j, 0),
               res_mac => res_mac(j, 0)
               );
  end generate cols0;

  -- Second and third column with previous column
  cols12 : for i in 1 to FILTER_WIDTH-1 generate
    rows : for j in 0 to FILTER_WIDTH-1 generate

      mac12 : entity work.mac
        generic map(INPUT_SIZE => INPUT_SIZE,
                    CARRY_SIZE => CARRY_SIZE
                    )
        port map(sum     => reg_mac(j, i-1),  -- previous sum
                 op1     => feature(j, i),
                 op2     => weights(j, i),
                 res_mac => res_mac(j, i)
                 );
    end generate rows;
  end generate cols12;

  -- Vertical pipe registers 
  pipe_reset <= reset or start_mac;

  reg_r : for i in 0 to FILTER_WIDTH-1 generate
    reg_c : for j in 0 to FILTER_WIDTH-1 generate

      ireg : entity work.reg
        generic map(INPUT_SIZE => ((INPUT_SIZE*2)+CARRY_SIZE))
        port map(clock => clock, reset => pipe_reset, enable => en_reg,
                 D     => res_mac(j, i),
                 Q     => reg_mac(j, i)
                 );

    end generate reg_c;
  end generate reg_r;

  -- REGISTERS AND ADDERS AFTER THE MAC MATRIX
  process(reset, clock)
  begin
    if reset = '1' then
      reg_soma1 <= (others => '0');
    elsif rising_edge(clock) then
      if en_reg = '1' and EA_add = UPDATEADD then
        reg_soma1 <= reg_mac(0, FILTER_WIDTH-1) + reg_mac(1, FILTER_WIDTH-1) + reg_mac(2, FILTER_WIDTH-1);
      end if;
    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      cont_iterations   <= (others => '0');
      reg_start_mac     <= '0';
      reg_reg_start_mac <= '0';
      cont_conv         <= (others => '0');
      cont_conv_flag    <= '0';
    elsif rising_edge(clock) then
      reg_start_mac     <= start_mac;
      reg_reg_start_mac <= reg_start_mac;

      if cont_steps > 1 and EA_add = E1 then
        cont_iterations <= cont_iterations + 1;
        if cont_iterations = N_FILTER then
          cont_iterations <= (others => '0');
        end if;
      end if;

      if reg_start_mac = '1' then
        cont_iterations <= (others => '0');
      end if;

      cont_conv_flag <= '0';
      if cont_valid = N_FILTER and cont_conv_flag = '0' then
        cont_conv      <= cont_conv + 1;
        cont_conv_flag <= '1';
      elsif (cont_conv = CONVS_PER_LINE) then
        cont_conv <= (others => '0');
      end if;

      if EA_read = READFEATURE and read_features = '0' and channel_control = N_CHANNEL then
        cont_conv <= (others => '0');
      end if;

    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      channel_control    <= 0;
      filter_counter     <= 0;
      partial_sum_cont   <= 0;
      valid_out_reg      <= '0';
      shift_output_cycle <= 0;

    elsif clock'event and clock = '1' then

      if valid_rgb_signal = '1' and filter_counter < N_FILTER and channel_control < N_CHANNEL then

        filter_counter <= filter_counter + 1;

      elsif filter_counter = N_FILTER then
        filter_counter <= 0;

        if partial_sum_cont = CONVS_PER_LINE-1 then
          partial_sum_cont <= 0;
          channel_control  <= channel_control + 1;
        else
          partial_sum_cont <= partial_sum_cont + 1;
        end if;

      end if;

      if channel_control = N_CHANNEL then
        shift_output_cycle <= shift_output_cycle + 1;

        valid_out_reg <= '0';

        if filter_counter >= N_FILTER or partial_sum_cont >= CONVS_PER_LINE then
          channel_control  <= 0;
          filter_counter   <= 0;
          partial_sum_cont <= 0;
        end if;

        if shift_output_cycle = 1 then

          valid_out_reg <= '1';

          shift_output_cycle <= 0;

          if partial_sum_cont = CONVS_PER_LINE-1 then
            filter_counter   <= filter_counter + 1;
            partial_sum_cont <= 0;
          else
            partial_sum_cont <= partial_sum_cont + 1;
          end if;
        end if;

      end if;

    end if;
  end process;

  ------------------------------------------------------------------------------------
  -- Ofmap memory read and wright control
  ------------------------------------------------------------------------------------  
  process(reset, clock)
  begin
    if reset = '1' then

      partial0     <= (others => '0');
      partial1     <= (others => '0');
      partial2     <= (others => '0');
      partial0_reg <= (others => '0');

      partial_wr      <= '0';
      partial_ce      <= '0';
      partial_control <= 0;

      partial_add     <= (others => '0');
      partial_add_reg <= (others => '0');

      partial_valid_flag   <= '0';
      partial_channel_flag <= '0';

      partial_base <= (others => '0');
      partial_line <= (others => '0');

      cont_partial_pixel <= 0;

      bias_idx     <= 0;
      reg_bias_idx <= 0;

    elsif clock'event and clock = '1' then

      partial_wr <= '0';

      if (channel_control = 0) then
        partial_ce           <= '0';
        bias_idx             <= 0;
        partial_channel_flag <= '0';
      end if;

      if valid_rgb_signal = '1' and channel_control < N_CHANNEL then

        partial0        <= reg_soma1;
        partial_add     <= partial_add + (CONVS_PER_LINE*CONVS_PER_LINE);
        partial_add_reg <= partial_add;

        if (channel_control = 0) then
          partial_ce <= '1';
          partial_wr <= '1';
        else
          partial_ce <= '1';
          partial_wr <= '0';
        end if;

        if channel_control > 0 then
          partial_valid_flag <= '1';
        end if;
      end if;

      if (partial_valid_flag = '1') then

        if partial_control = 0 then
          partial1 <= pixel_in;

          if ofmap_valid = '1' then
            partial_control <= partial_control + 1;
            partial_ce      <= '0';
          end if;

        elsif partial_control = 1 then
          partial_wr <= '1';
          partial_ce <= '1';

          if ((channel_control = N_CHANNEL-1 or channel_control = N_CHANNEL) and cont_debug >= N_FILTER*CONVS_PER_LINE*(N_CHANNEL-1)) then

            partial2 <= partial0 + partial1 + mem_bias_value;

            if bias_idx < N_FILTER-1 then
              bias_idx <= bias_idx + 1;
            else
              bias_idx <= 0;
            end if;

            reg_bias_idx <= bias_idx;
          else
            partial2 <= partial0 + partial1;
          end if;

          partial_control    <= 0;
          partial_valid_flag <= '0';

        end if;

      end if;

      if filter_counter = N_FILTER and channel_control < N_CHANNEL then
        partial_control    <= 0;
        partial_base       <= partial_base + 1;
        partial_add        <= partial_base + 1;
        cont_partial_pixel <= cont_partial_pixel + 1;
      elsif filter_counter = N_FILTER then
        partial_add <= partial_base;
      end if;

      if cont_partial_pixel = CONVS_PER_LINE then
        partial_add        <= partial_line;
        partial_base       <= partial_line;
        cont_partial_pixel <= 0;
      end if;

      if channel_control = N_CHANNEL and partial_channel_flag = '0' then
        partial_line         <= partial_line + CONVS_PER_LINE;
        partial_base         <= partial_line + CONVS_PER_LINE;
        partial_channel_flag <= '1';
      end if;

    end if;

  end process;

  -- Debug process
  valid_sync_signal <= partial_wr when (cont_debug >= CONVS_PER_LINE*N_FILTER*(N_CHANNEL-1)) else '0';

  process(reset, clock)
  begin
    if reset = '1' then
      cont_debug <= 0;
    elsif rising_edge(clock) then
      if (partial_wr = '1') then
        cont_debug <= cont_debug + 1;
      elsif (cont_debug = CONVS_PER_LINE*N_FILTER*N_CHANNEL) then
        cont_debug <= 0;
      end if;
    end if;
  end process;

  -- Partial sum valid
  valid_rgb_signal <= '1' when EA_add = E1 and cont_iterations > 0 and (read_bias = '0' and read_features = '0' and start_mac = '0') and channel_control < N_CHANNEL else
                      '0';

  -- Shift
  shift_output(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto (INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)) <= (others => '0');

  -- ReLU 
  shift_output((INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)-1 downto 0) <= partial2(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto SHIFT) when partial2 > 0 else
                                                                (others => '0');

  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  -- Input memory read address (constant sums used to access the correct address on memory)
  --inmem_address <= inmem_address_reg;
  inmem_address <= bias_x when read_bias = '1' else
                   weight_x + N_FILTER                                                   when read_weights = '1' else
                   feature_x + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER when read_features = '1' or start_mac = '1' or reg_start_mac = '1' else
                   (others => '0');

  -- Input memory chip enable control
  inmem_ce <= '1' when (read_bias = '1' or read_weights = '1' or read_features = '1' or start_mac = '1' or reg_start_mac = '1') else '0';

  -- Ofmap memory enables
  ofmap_we <= partial_wr;

  --ofmap_ce <= ofmap_ce_reg;
  ofmap_ce <= '1' when ((channel_control = 0 and partial_wr = '1') or (partial_valid_flag = '1') or (partial_control = 1) or (partial_control = 0 and partial_wr = '1')) else '0';

  -- Address to write output feature in memory 
  ofmap_address <= partial_add_reg;

  -- Output
  pixel_out <= shift_output when valid_sync_signal = '1' else
               partial0 when channel_control = 0 else
               partial2;

  -- Debug
  debug <= valid_sync_signal;

  -- End of convolution
  end_conv <= end_conv_reg;

end a1;

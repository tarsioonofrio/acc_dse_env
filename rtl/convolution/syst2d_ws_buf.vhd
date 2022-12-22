library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity ws_output_buffer is
  generic (CONVS_PER_LINE : integer := 15;
           INPUT_SIZE     : integer := 8;
           CARRY_SIZE     : integer := 4;
           N_CHANNEL      : integer := 3;
           MEM_SIZE       : integer := 12
           );
  port (clock : in std_logic;
        reset : in std_logic;

        valid_in  : in  std_logic;
        valid_out : out std_logic;

        partial_pixel_in  : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        partial_pixel_out : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

        channel     : out std_logic_vector(N_CHANNEL-1 downto 0);
        pixel_out   : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        address_out : out std_logic_vector(MEM_SIZE-1 downto 0)
        );
end ws_output_buffer;

architecture a1 of ws_output_buffer is

  type ofmap is array(0 to CONVS_PER_LINE*CONVS_PER_LINE) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
  signal acc : ofmap := (others => (others => '0'));

  signal conv_length        : integer range 0 to CONVS_PER_LINE*CONVS_PER_LINE;
  signal channel_control    : integer range 0 to N_CHANNEL;
  signal shift_output_cycle : integer range 0 to 2;

  signal adder_out_reg, accumulate_value : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal ofmap_address_reg, ofmap_address_adder : std_logic_vector(MEM_SIZE-1 downto 0);

  signal valid_sync, reg_valid, reg_reg_valid, reg_3_valid, reg_4_valid, reg_5_valid, flag_valid, flag_cont_shift_output_cycle : std_logic;

begin

  process(reset, clock)
  begin
    if reset = '1' then
      conv_length        <= 0;
      channel_control    <= 0;
      shift_output_cycle <= 0;

      reg_valid     <= '0';
      reg_reg_valid <= '0';
      reg_3_valid   <= '0';
      reg_4_valid   <= '0';
      reg_5_valid   <= '0';

      flag_valid                   <= '0';
      flag_cont_shift_output_cycle <= '0';

      acc <= (others => (others => '0'));

      adder_out_reg <= (others => '0');

      accumulate_value    <= (others => '0');
      ofmap_address_reg   <= (others => '0');
      ofmap_address_adder <= (others => '0');

    elsif clock'event and clock = '1' then

      -- Signal necessaries to synchronize the valid signal (ofmap_ce) and valid data (pixel_out)
      reg_valid <= valid_in;

      reg_reg_valid <= reg_valid;
      reg_3_valid   <= reg_reg_valid;
      reg_4_valid   <= reg_3_valid;
      reg_5_valid   <= reg_4_valid;

      accumulate_value <= acc(conv_length);

      if shift_output_cycle = 2 then
        shift_output_cycle           <= 0;
        flag_cont_shift_output_cycle <= '0';
      elsif (channel_control = (N_CHANNEL-1) and valid_in = '1') or flag_cont_shift_output_cycle = '1' then
        flag_cont_shift_output_cycle <= '1';
        shift_output_cycle           <= shift_output_cycle + 1;
      else
        shift_output_cycle <= 0;
      end if;

      if shift_output_cycle = 2 and channel_control = (N_CHANNEL-1) then
        flag_valid <= '1';
      elsif reg_valid = '1' and channel_control = 0 then
        flag_valid <= '0';
      end if;

      if valid_in = '1' and conv_length < CONVS_PER_LINE*CONVS_PER_LINE and channel_control < N_CHANNEL then

        if (channel_control = (N_CHANNEL-1)) then
          adder_out_reg <= partial_pixel_in;

          -- Generating adder to write in ofmap memory
          ofmap_address_adder <= ofmap_address_adder + 1;
          ofmap_address_reg   <= ofmap_address_adder;

        else
          acc(conv_length) <= partial_pixel_in;
        end if;

        conv_length <= conv_length + 1;

      elsif conv_length = CONVS_PER_LINE*CONVS_PER_LINE then
        conv_length     <= 0;
        channel_control <= channel_control + 1;

        if channel_control = (N_CHANNEL-1) then
          conv_length     <= 0;
          channel_control <= 0;
          reg_valid       <= '0';
          acc             <= (others => (others => '0'));
        end if;

      end if;
    end if;
  end process;


  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  partial_pixel_out <= accumulate_value;

  channel <= CONV_STD_LOGIC_VECTOR(channel_control, N_CHANNEL);

  pixel_out <= adder_out_reg;

  address_out <= ofmap_address_reg;

  valid_out <= reg_5_valid when flag_valid = '1' else
               '0';

end a1;

-------------------------------------------------------------------------------------------------
-- CONVOLUTION - SYSTOLIC   -  JAN/2021 - MORAES 
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
        inmem_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
        inmem_address : out std_logic_vector(MEM_SIZE-1 downto 0);
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

  -- State machine signals to control input values read
  type statesM is (RIDLE, UPDATEADD, E0, E1, E2, E3, E4, E5);
  signal EA_add : statesM;

  -- Macro state machine signals to control input values flags
  type statesReadValues is (WAITSTART, READBIAS, READWEIGHT, STARTMAC, WAITVALID);
  signal EA_read : statesReadValues;

  type wgh3x3 is array (0 to 2, 0 to 2) of std_logic_vector(INPUT_SIZE-1 downto 0);
  signal weight : wgh3x3;

  type features_3x3 is array (0 to 2, 0 to 2) of std_logic_vector(INPUT_SIZE-1 downto 0);
  signal features, buffer_features : features_3x3;

  type array3x3 is array (0 to 2, 0 to 2) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);  -- 20 bits
  signal op1, op2, res_mac, reg_mac : array3x3;

  type address is array (0 to 5) of std_logic_vector(MEM_SIZE-1 downto 0);
  signal add : address;

  signal en_reg_flag, control_iteration_flag, reg_valid, reg_reg_valid, reg_3_valid, reg_4_valid, reg_5_valid, flag_valid, flag_cont_shift_output_cycle, valid_sync, update_add_base, ce_control, ce_flag, read_bias_flag, read_bias, read_weights, start_mac, end_conv_signal, end_conv_reg, read_weight_flag, en_reg, pipe_reset, valid_signal, reg_read_weights, reg_read_bias, reg_start_mac, reg_reg_start_mac, inmem_ce_reg, valid_sync_reg : std_logic;

  signal adder_mux, reg_reg_bias_value, reg_bias_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  --signal adder_mux: std_logic_vector(INPUT_SIZE-1 downto 0);  

  signal reg_soma1, reg_soma2, reg_soma3, adder_out_reg, adder_out, accumulate_value, partial_pixel_reg, shift_output, shift_output_reg : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal cont_iterations, ofmap_address_reg, ofmap_address_reg_reg, ofmap_address_adder, weight_x, bias_x, weight_control, cont_steps, inmem_address_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal channel_control : std_logic_vector(N_CHANNEL-1 downto 0);

  signal H                                                : integer range 0 to X_SIZE;
  signal V                                                : integer range 0 to 2**MEM_SIZE;
  signal address_base                                     : integer range 0 to 2**MEM_SIZE;
  signal shift_output_cycle                               : integer range 0 to 2;
  signal cont_weight_cycles, cont_valid, cont_total_valid : integer;
  signal cont_conv, cont_conv_plus1                       : integer;

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
            if inmem_valid = '1' then
              EA_read <= READWEIGHT;
            end if;
          when READWEIGHT =>
            if cont_weight_cycles = (FILTER_WIDTH*FILTER_WIDTH)-1 then
              EA_read <= STARTMAC;
            end if;
          when STARTMAC =>
            if inmem_valid = '1' then
              EA_read <= WAITVALID;
            end if;
          when WAITVALID =>
            if cont_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL then
              EA_read <= READBIAS;
            elsif (cont_conv = (CONVS_PER_LINE*CONVS_PER_LINE) and read_weight_flag = '0') then
              EA_read <= READWEIGHT;
            elsif end_conv_signal = '1' then
              EA_read <= WAITSTART;
            end if;
        end case;
      end if;
    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      read_bias        <= '0';
      read_weights     <= '0';
      start_mac        <= '0';
      end_conv_signal  <= '0';
      end_conv_reg     <= '0';
      read_weight_flag <= '0';

      cont_weight_cycles <= 0;
      cont_valid         <= 0;
      cont_total_valid   <= 0;

      cont_conv       <= 0;
      cont_conv_plus1 <= 0;

      ce_flag    <= '0';
      ce_control <= '0';
    elsif rising_edge(clock) then

      -- Registering end of convolution signal
      if end_conv_signal = '1' and valid_sync = '1' then
        end_conv_reg <= '1';
      elsif start_conv = '1' then
        end_conv_reg <= '0';
      end if;

      -- Stop to read memory values at the end of each RGB channel process, ensure correct synchronization with input memory valid
      if (cont_conv = (CONVS_PER_LINE*CONVS_PER_LINE) and ce_control = '0') then
        ce_control <= '1';
        ce_flag    <= '1';
      elsif (cont_conv = (CONVS_PER_LINE*CONVS_PER_LINE) and ce_control = '1') then
        if read_bias = '1' or read_weights = '0' then
          ce_flag <= '0';
        end if;
      else
        ce_flag    <= '0';
        ce_control <= '0';
      end if;

      case EA_read is
        when READBIAS =>
          read_bias       <= '1';
          cont_valid      <= 0;
          cont_conv       <= 0;
          cont_conv_plus1 <= 0;
        when READWEIGHT =>
          read_bias    <= '0';
          read_weights <= '1';

          if inmem_valid = '1' then
            cont_weight_cycles <= cont_weight_cycles + 1;
          end if;

        when STARTMAC =>
          read_weights       <= '0';
          cont_weight_cycles <= 0;
          start_mac          <= '1';
        when WAITVALID =>
          start_mac <= '0';

          if valid_signal = '1' then
            cont_valid       <= cont_valid + 1;
            cont_total_valid <= cont_total_valid + 1;

            if cont_conv = CONVS_PER_LINE*CONVS_PER_LINE then
              -- To include the past conv in the counter
              cont_conv <= 1;
            else
              cont_conv <= cont_conv + 1;
            end if;

            if cont_conv_plus1 = (CONVS_PER_LINE*CONVS_PER_LINE)+1 then
              -- To include the past 2 conv in the counter
              cont_conv_plus1 <= 2;
            else
              cont_conv_plus1 <= cont_conv_plus1 + 1;
            end if;

          end if;

          -- Ensure that weight read will stop at the end of each RGB channel process 
          if (cont_conv = CONVS_PER_LINE*CONVS_PER_LINE and read_weight_flag = '0' and cont_valid < (CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL)) then
            read_weight_flag <= '1';
          elsif (read_weight_flag = '1' and cont_conv_plus1 = (CONVS_PER_LINE*CONVS_PER_LINE)+1 and cont_valid < (CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL)) then
            read_weight_flag <= '0';
          end if;

          if cont_total_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER then
            end_conv_signal <= '1';
          else
            end_conv_signal <= '0';
          end if;

        when others => null;
      end case;
    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Menage bias
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      bias_x             <= (others => '0');
      reg_bias_value     <= (others => '0');
      reg_reg_bias_value <= (others => '0');
      reg_read_bias      <= '0';
      read_bias_flag     <= '0';
    elsif rising_edge(clock) then

      -- Register read_bias signal to ensure the correct weight value read
      reg_read_bias <= read_bias;

      -- Ensure one read per bias_read rising
      if (inmem_valid = '1' and read_bias = '1') then
        reg_bias_value <= inmem_value;
        read_bias_flag <= '1';
      end if;

      if (read_bias_flag = '1') then
        reg_reg_bias_value <= reg_bias_value;
        bias_x             <= bias_x + '1';
        read_bias_flag     <= '0';
      end if;

    end if;
  end process;

  ----------------------------------------------------------------------------
  -- Manage weights
  ----------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      address_base    <= 0;
      update_add_base <= '0';

    elsif rising_edge(clock) then

      if (reg_read_bias = '1') then
        address_base <= 0;
      elsif (reg_start_mac = '1' and update_add_base = '0') then
        address_base    <= address_base + (X_SIZE*X_SIZE);
        update_add_base <= '1';
      end if;

      if EA_add = UPDATEADD then
        update_add_base <= '0';
      end if;

    end if;
  end process;

  process(reset, clock)
  begin
    if reset = '1' then
      reg_read_weights <= '0';
      weight_x         <= (others => '0');
      weight_control   <= (others => '0');
      weight           <= (others => (others => (others => '0')));
    elsif rising_edge(clock) then

      -- Register read_weights signal to ensure the correct weight value read
      reg_read_weights <= read_weights;

      -- Ensure the correct weight read value and amount (due to weight_control < FILTER_WIDTH*FILTER_WIDTH)
      if ((read_weights = '1' or start_mac = '1') and inmem_valid = '1' and weight_control < FILTER_WIDTH*FILTER_WIDTH) then

        weight_x       <= weight_x + 1;
        weight_control <= weight_control + 1;

        if (weight_control = 0) then
          weight(0, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 1) then
          weight(0, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 2) then
          weight(0, 2) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 3) then
          weight(1, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 4) then
          weight(1, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 5) then
          weight(1, 2) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 6) then
          weight(2, 0) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 7) then
          weight(2, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 8) then
          weight(2, 2) <= inmem_value(INPUT_SIZE-1 downto 0);

        end if;
      elsif weight_control = FILTER_WIDTH*FILTER_WIDTH then
        weight_control <= (others => '0');
      end if;
    end if;
  end process;

  -------------------------------------------------------------------------------------------------------
  -- PART 1 - CONTROL: READS SIX ELEMENTS FROM MEMORY COMPUTING IN PARALLEL
  -------------------------------------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      EA_add <= RIDLE;
    elsif rising_edge(clock) then

      if reg_start_mac = '1' then
        EA_add <= RIDLE;
      else
        case EA_add is
          when RIDLE =>
            if (reg_reg_start_mac = '1' and reg_read_weights = '0') then
              EA_add <= UPDATEADD;
            else
              EA_add <= RIDLE;
            end if;

          -- Read 6 values from the memory (controled by inmem_valid signal)
          when UPDATEADD =>
            EA_add <= E0;
          when E0 =>
            if inmem_valid = '1' then
              EA_add <= E1;
            end if;
          when E1 =>
            if inmem_valid = '1' then
              EA_add <= E2;
            end if;
          when E2 =>
            if inmem_valid = '1' then
              EA_add <= E3;
            end if;
          when E3 =>
            if inmem_valid = '1' then
              EA_add <= E4;
            end if;
          when E4 =>
            if inmem_valid = '1' then
              EA_add <= E5;
            end if;
          when E5 =>
            if inmem_valid = '1' then
              EA_add <= UPDATEADD;
            end if;
        end case;
      end if;
    end if;
  end process;

  -- read from memory filling the features matriz, the first cycle update the addresses
  process(reset, clock)
  begin
    if reset = '1' then
      H               <= 0;
      V               <= 0;
      add             <= (others => (others => '0'));
      buffer_features <= (others => (others => (others => '0')));
      features        <= (others => (others => (others => '0')));
      cont_steps      <= (others => '0');

    elsif rising_edge(clock) then

      case EA_add is

        when UPDATEADD =>
          --
          -- UPDATE THE ADDRESS IN A PIPELINE FASHION (only 2 colums)
          --
          add(0) <= CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
          add(1) <= add(0) + 1;

          add(2) <= X_SIZE + add(0);
          add(3) <= add(2) + 1;

          add(4) <= X_SIZE + add(2);
          add(5) <= add(4) + 1;

          --
          -- NEXT LINE
          --  
          if (H+2) >= X_SIZE then
            H <= 0;
            V <= V+2*X_SIZE;
          else
            H <=H+2;
          end if;

          --
          -- TRANSFER THE READ DATA, REUSING THE FIRST COLUM TO THE THIRD ONE
          --
          features(0, 0) <= buffer_features(0, 0);
          features(0, 1) <= buffer_features(0, 1);
          features(0, 2) <= features(0, 0);

          features(1, 0) <= buffer_features(1, 0);
          features(1, 1) <= buffer_features(1, 1);
          features(1, 2) <= features(1, 0);


          features(2, 0) <= buffer_features(2, 0);
          features(2, 1) <= buffer_features(2, 1);
          features(2, 2) <= features(2, 0);

          -- count the number os arithmetic shifts
          if cont_steps < 7 then  -- stop at 7 - enough to fire accumulation
            cont_steps <= cont_steps + 1;
          end if;

        when E0 => buffer_features(0, 0) <= inmem_value(INPUT_SIZE-1 downto 0);  --------- COMPUTE WITH PREVIOUS DATA
        when E1 => buffer_features(0, 1) <= inmem_value(INPUT_SIZE-1 downto 0);
        when E2 => buffer_features(1, 0) <= inmem_value(INPUT_SIZE-1 downto 0);
        when E3 => buffer_features(1, 1) <= inmem_value(INPUT_SIZE-1 downto 0);
        when E4 => buffer_features(2, 0) <= inmem_value(INPUT_SIZE-1 downto 0);  -- signalize to store in regs  
        when E5 => buffer_features(2, 1) <= inmem_value(INPUT_SIZE-1 downto 0);

        when others => null;

      end case;

      if (reg_start_mac = '1' and update_add_base = '0') then
        H          <= 0;
        V          <= address_base;
        add        <= (others => CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE));
        cont_steps <= (others => '0');

      elsif (reg_read_bias = '1') then
        H               <= 0;
        V               <= 0;
        add             <= (others => (others => '0'));
        buffer_features <= (others => (others => (others => '0')));
        features        <= (others => (others => (others => '0')));
        cont_steps      <= (others => '0');
      end if;

    end if;
  end process;

  -- Ensure en_reg rise only for one cycle
  process(reset, clock)
  begin
    if reset = '1' then
      en_reg_flag <= '0';
    elsif rising_edge(clock) then
      if EA_add = E4 then
        en_reg_flag <= '1';
      else
        en_reg_flag <= '0';
      end if;
    end if;
  end process;

  en_reg <= '1' when EA_add = E4 and en_reg_flag = '0' else '0';

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
               op1     => weight(j, 0),
               op2     => features(j, 0),
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
        port map(sum     => reg_mac(j, i-1),
                 op1     => weight(j, i),
                 op2     => features(j, i),
                 res_mac => res_mac(j, i)
                 );
    end generate rows;
  end generate cols12;

  -- reset array registers
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
      reg_soma2 <= (others => '0');
      reg_soma3 <= (others => '0');
    elsif rising_edge(clock) then
      if en_reg = '1' then
        reg_soma1 <= reg_mac(0, FILTER_WIDTH-1);
        reg_soma2 <= reg_soma1 + reg_mac(1, FILTER_WIDTH-1);
        reg_soma3 <= reg_soma2 + reg_mac(2, FILTER_WIDTH-1);
      end if;

    end if;
  end process;

  ------------------------------------------------------------------------------------
  -- Valid  partial output pixel control logic
  ------------------------------------------------------------------------------------
  process(reset, clock)
  begin
    if reset = '1' then
      cont_iterations        <= (others => '0');
      reg_start_mac          <= '0';
      reg_reg_start_mac      <= '0';
      control_iteration_flag <= '0';
    elsif rising_edge(clock) then
      reg_start_mac     <= start_mac;
      reg_reg_start_mac <= reg_start_mac;

      if control_iteration_flag = '0' and cont_steps > 6 and EA_add = E3 and (read_bias = '0' and read_weights = '0' and start_mac = '0') then
        cont_iterations        <= cont_iterations + 1;
        control_iteration_flag <= '1';
        if cont_iterations = CONVS_PER_LINE then
          cont_iterations <= (others => '0');
        end if;
      elsif EA_add = E4 then
        control_iteration_flag <= '0';
      end if;

      if read_bias = '1' or read_weights = '1' or start_mac = '1' then
        cont_iterations <= (others => '0');
      end if;

      if reg_start_mac = '1' then
        cont_iterations <= (others => '0');
      end if;

    end if;
  end process;

  valid_signal <= '1' when EA_add = UPDATEADD and cont_iterations > 0 and (read_bias = '0' and read_weights = '0' and start_mac = '0') else
                  '0';

  ------------------------------------------------------------------------------------
  -- Ofmap buffer logic and registers
  ------------------------------------------------------------------------------------  
  process(reset, clock)
  begin
    if reset = '1' then
      partial_pixel_reg <= (others => '0');
    elsif rising_edge(clock) then
      partial_pixel_reg <= reg_soma3;
    end if;
  end process;

  output_buffer : entity work.ws_output_buffer
    generic map(CONVS_PER_LINE => CONVS_PER_LINE,
                N_CHANNEL      => N_CHANNEL,
                INPUT_SIZE     => INPUT_SIZE,
                CARRY_SIZE     => CARRY_SIZE,
                MEM_SIZE       => MEM_SIZE
                )
    port map(clock => clock,
             reset => reset,

             valid_in  => valid_signal,
             valid_out => valid_sync,

             partial_pixel_in  => adder_out,
             partial_pixel_out => accumulate_value,

             channel     => channel_control,
             address_out => ofmap_address_reg,
             pixel_out   => adder_out_reg
             );

  -- Adder logic
  adder_mux <= reg_reg_bias_value when channel_control = (N_CHANNEL-1) else
               (others => '0');

  adder_out <= partial_pixel_reg + accumulate_value + adder_mux;

  -- Shift
  shift_output(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto (INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)) <= (others => '0');

  -- ReLU 
  shift_output((INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)-1 downto 0) <= adder_out_reg(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto SHIFT) when adder_out_reg > 0 else
                                                                (others => '0');

  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  --  input memory read address (constant sums used to access the correct address on memory)
  --  input memory read address (constant sums used to access the correct address on memory)
  inmem_address <= bias_x when read_bias = '1' else
                   (weight_x + N_FILTER)                                                when read_weights = '1' or start_mac = '1' else
                   (add(0) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add = E0 else
                   (add(1) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add = E1 else
                   (add(2) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add = E2 else
                   (add(3) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add = E3 else
                   (add(4) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add = E4 else
                   (add(5) + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER);

  -- Input memory chip enable control
  inmem_ce <= '0' when EA_read = WAITSTART or (EA_add = UPDATEADD and read_bias = '0' and read_weights = '0') or ce_flag = '1' or end_conv_reg = '1' else '1';

  -- Ofmap memory enables
  ofmap_we <= valid_sync;

  ofmap_ce <= valid_sync;

  -- Address to write output feature in memory
  ofmap_address <= ofmap_address_reg;

  -- Output
  pixel_out <= shift_output;

  -- Debug
  debug <= valid_sync;

  -- End of convolution
  end_conv <= end_conv_reg;

end a1;


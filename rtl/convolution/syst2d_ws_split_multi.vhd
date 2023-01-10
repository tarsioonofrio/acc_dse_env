-------------------------------------------------------------------------------------------------
-- CONVOLUTION - SYSTOLIC   -  JAN/2021 - MORAES 
-- MODIFIED IN MARCH 8 2021 - COMBINATIONAL MAC
-------------------------------------------------------------------------------------------------


library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

use work.config_package.all;
use work.util_package.all;


entity convolution is
  generic (
           N_FILTER       : integer := 16;
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
        config     : in  type_config_logic;

        -- Input weight memory interface
        iwght_valid   : in  std_logic;
        iwght_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
        iwght_address : out std_logic_vector(MEM_SIZE-1 downto 0);
        iwght_ce      : out std_logic;

        -- input feature map memory interface
        ifmap_valid   : in  std_logic;
        ifmap_value   : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
        ifmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
        ifmap_ce      : out std_logic;

        -- output feature map memory interface
        ofmap_valid   : in  std_logic;
        ofmap_in      : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        ofmap_out     : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
        ofmap_address : out std_logic_vector(MEM_SIZE-1 downto 0);
        ofmap_we      : out std_logic;
        ofmap_ce      : out std_logic
        );
end entity convolution;


architecture a1 of convolution is

  signal reg_config : type_config_integer;

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

  signal in_ce, partial_ce, partial_wr, partial_valid_flag, en_reg_flag, control_iteration_flag, valid_sync_signal, update_add_base, ce_control, ce_flag, read_bias_flag, read_bias, read_weights, start_mac, end_conv_signal, end_conv_reg, read_weight_flag, en_reg, pipe_reset, valid_signal, reg_read_weights, reg_read_bias, reg_start_mac, reg_reg_start_mac, ofmap_ce_reg, ofmap_we_reg, debug_reg, valid_sync_signal_reg, iwght_ce_reg : std_logic;

  signal reg_reg_bias_value, reg_bias_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0);
  signal adder_mux                          : std_logic_vector(INPUT_SIZE-1 downto 0);

  signal partial0, partial1, partial2, reg_soma1, reg_soma2, reg_soma3, shift_output, ofmap_out_reg : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

  signal partial_add, partial_add_reg, partial_base, cont_iterations, weight_x, bias_x, weight_control, cont_steps, ofmap_address_reg, iwght_address_reg : std_logic_vector(MEM_SIZE-1 downto 0);

  signal H                                                                            : integer range 0 to X_SIZE;
  signal V                                                                            : integer range 0 to 2**(MEM_SIZE);
  signal address_base                                                                 : integer range 0 to 2**(MEM_SIZE);
  signal conv_length                                                                  : integer range 0 to CONVS_PER_LINE*CONVS_PER_LINE;
  signal channel_control, channel_control_reg                                         : integer range 0 to N_CHANNEL;
  signal cont_weight_cycles, cont_valid, cont_total_valid, cont_conv, cont_conv_plus1 : integer;
  signal partial_control, cont_debug                                                  : integer;

begin

  process(reset, clock)
  begin
    if reset = '1' then
        reg_config <= config_integer_init;
    elsif rising_edge(clock) then
      if start_conv = '1' then
        reg_config <= convert_config_logic_integer(config);
      elsif end_conv_reg = '1' then
        reg_config <= config_integer_init;
      end if;
    end if;
  end process;


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
            if iwght_valid = '1' then
              EA_read <= READWEIGHT;
            end if;
          when READWEIGHT =>
            if cont_weight_cycles = (FILTER_WIDTH*FILTER_WIDTH)-1 then
            --if cont_weight_cycles = reg_config.filter_width_filter_width_1 then
              EA_read <= STARTMAC;
            end if;
          when STARTMAC =>
            if iwght_valid = '1' then
              EA_read <= WAITVALID;
            end if;
          when WAITVALID =>
            if cont_valid = reg_config.convs_per_line_convs_per_line_n_channel then
              EA_read <= READBIAS;
            elsif (cont_conv = (reg_config.convs_per_line_convs_per_line) and read_weight_flag = '0') then
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
      if end_conv_signal = '1' and valid_sync_signal = '1' then
        end_conv_reg <= '1';
      elsif start_conv = '1' then
        end_conv_reg <= '0';
      end if;

      -- Stop to read memory values at the end of each RGB channel process, ensure correct synchronization with input memory valid
      if (cont_conv = (reg_config.convs_per_line_convs_per_line) and ce_control = '0') then
        ce_control <= '1';
        ce_flag    <= '1';
      elsif (cont_conv = (reg_config.convs_per_line_convs_per_line) and ce_control = '1') then
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

          if iwght_valid = '1' then
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

            if cont_conv = reg_config.convs_per_line_convs_per_line then
              -- To include the past conv in the counter
              cont_conv <= 1;
            else
              cont_conv <= cont_conv + 1;
            end if;

            if cont_conv_plus1 = reg_config.convs_per_line_convs_per_line_1 then
              -- To include the past 2 conv in the counter
              cont_conv_plus1 <= 2;
            else
              cont_conv_plus1 <= cont_conv_plus1 + 1;
            end if;

          end if;

          if (cont_conv = reg_config.convs_per_line_convs_per_line and read_weight_flag = '0' and cont_valid < (reg_config.convs_per_line_convs_per_line_n_channel)) then
            read_weight_flag <= '1';
          elsif (read_weight_flag = '1' and cont_conv_plus1 = reg_config.convs_per_line_convs_per_line_1 and cont_valid < (reg_config.convs_per_line_convs_per_line_n_channel)) then
            read_weight_flag <= '0';
          end if;

          if cont_total_valid = reg_config.convs_per_line_convs_per_line_n_channel_n_filter then
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
      if (iwght_valid = '1' and read_bias = '1') then
        reg_bias_value <= iwght_value;
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
        address_base    <= address_base + (reg_config.x_size_x_size);
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
      if ((read_weights = '1' or start_mac = '1') and iwght_valid = '1' and weight_control < FILTER_WIDTH*FILTER_WIDTH) then
      --if ((read_weights = '1' or start_mac = '1') and iwght_valid = '1' and weight_control < reg_config.filter_width_filter_width) then

        weight_x       <= weight_x + 1;
        weight_control <= weight_control + 1;

        if (weight_control = 0) then
          weight(0, 0) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 1) then
          weight(0, 1) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 2) then
          weight(0, 2) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 3) then
          weight(1, 0) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 4) then
          weight(1, 1) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 5) then
          weight(1, 2) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 6) then
          weight(2, 0) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 7) then
          weight(2, 1) <= iwght_value(INPUT_SIZE-1 downto 0);

        elsif (weight_control = 8) then
          weight(2, 2) <= iwght_value(INPUT_SIZE-1 downto 0);

        end if;
      elsif weight_control = FILTER_WIDTH*FILTER_WIDTH then
      --elsif weight_control = reg_config.filter_width_filter_width then
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

          -- Read 6 values from the memory (controled by iwght_valid signal)
          when UPDATEADD =>
            EA_add <= E0;
          when E0 =>
            if ifmap_valid = '1' then
              EA_add <= E1;
            end if;
          when E1 =>
            if ifmap_valid = '1' then
              EA_add <= E2;
            end if;
          when E2 =>
            if ifmap_valid = '1' then
              EA_add <= E3;
            end if;
          when E3 =>
            if ifmap_valid = '1' then
              EA_add <= E4;
            end if;
          when E4 =>
            if ifmap_valid = '1' then
              EA_add <= E5;
            end if;
          when E5 =>
            if ifmap_valid = '1' then
              EA_add <= UPDATEADD;
            end if;
        end case;
      end if;
    end if;
  end process;

  -- read from memory filling the features matrix, the first cycle update the addresses
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

          add(2) <= reg_config.x_size + add(0);
          add(3) <= add(2) + 1;

          add(4) <= reg_config.x_size + add(2);
          add(5) <= add(4) + 1;

          --
          -- NEXT LINE
          --  
          if (H+2) >= reg_config.x_size then
            H <= 0;
            V <= V+2*reg_config.x_size;
          else
            H <= H+2;
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

        when E0 => buffer_features(0, 0) <= ifmap_value(INPUT_SIZE-1 downto 0);  --------- COMPUTE WITH PREVIOUS DATA
        when E1 => buffer_features(0, 1) <= ifmap_value(INPUT_SIZE-1 downto 0);
        when E2 => buffer_features(1, 0) <= ifmap_value(INPUT_SIZE-1 downto 0);
        when E3 => buffer_features(1, 1) <= ifmap_value(INPUT_SIZE-1 downto 0);
        when E4 => buffer_features(2, 0) <= ifmap_value(INPUT_SIZE-1 downto 0);  -- signalize to store in regs  
        when E5 => buffer_features(2, 1) <= ifmap_value(INPUT_SIZE-1 downto 0);

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
        if cont_iterations = reg_config.convs_per_line then
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
  -- Number of convolutions control
  ------------------------------------------------------------------------------------  
  process(reset, clock)
  begin
    if reset = '1' then
      conv_length     <= 0;
      channel_control <= 0;

    elsif clock'event and clock = '1' then
      if valid_signal = '1' and conv_length < reg_config.convs_per_line_convs_per_line and channel_control < reg_config.n_channel then
        conv_length <= conv_length + 1;

      elsif conv_length = reg_config.convs_per_line_convs_per_line and reg_config.convs_per_line_convs_per_line > 0 then
        conv_length     <= 0;
        channel_control <= channel_control + 1;

        if channel_control = (reg_config.n_channel-1) then
          conv_length     <= 0;
          channel_control <= 0;
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

      partial0 <= (others => '0');
      partial1 <= (others => '0');
      partial2 <= (others => '0');

      partial_wr      <= '0';
      partial_ce      <= '0';
      partial_control <= 0;

      partial_add     <= (others => '0');
      partial_add_reg <= (others => '0');

      partial_base <= (others => '0');

      partial_valid_flag <= '0';

    elsif clock'event and clock = '1' then
      partial_wr <= '0';

      if (channel_control = 0) then
        partial_ce <= '0';
      end if;

      if valid_signal = '1' and channel_control < reg_config.n_channel then
        partial0        <= reg_soma3;
        partial_add     <= partial_add + 1;
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
          partial1 <= ofmap_in;

          if ofmap_valid = '1' then
            partial_control <= partial_control + 1;
            partial_ce      <= '0';
          end if;

        elsif partial_control = 1 then
          partial_wr <= '1';
          partial_ce <= '1';

          if (channel_control = (reg_config.n_channel-1)) then
            partial2 <= partial0 + partial1 + reg_reg_bias_value;
          else
            partial2 <= partial0 + partial1;
          end if;

          partial_control    <= 0;
          partial_valid_flag <= '0';
        end if;
      end if;

      if conv_length = reg_config.convs_per_line_convs_per_line then
        partial_control <= 0;
        partial_add     <= partial_base;

        if channel_control = (reg_config.n_channel-1) then
          partial_base <= partial_base + CONV_STD_LOGIC_VECTOR(reg_config.convs_per_line_convs_per_line, MEM_SIZE);
          partial_add  <= partial_base + CONV_STD_LOGIC_VECTOR(reg_config.convs_per_line_convs_per_line, MEM_SIZE);
        end if;
      end if;
    end if;
  end process;

  -- Debug process
  process(reset, clock)
  begin
    if reset = '1' then
      cont_debug <= 0;
    elsif rising_edge(clock) then
      if (partial_wr = '1') then
        cont_debug <= cont_debug + 1;
      elsif (cont_debug = reg_config.convs_per_line_convs_per_line_n_channel) then
        cont_debug <= 0;
      end if;
    end if;
  end process;

  valid_sync_signal <= partial_wr when (cont_debug >= reg_config.convs_per_line_convs_per_line_n_channel_1) else '0';

  -- Shift
  shift_output(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto (INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)) <= (others => '0');

  -- ReLU 
  shift_output((INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)-1 downto 0) <= partial2(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto SHIFT) when partial2 > 0 else (others => '0');

  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  --  input memory read address (constant sums used to access the correct address on memory)
  iwght_address <= bias_x when read_bias = '1' else
                   (weight_x + reg_config.n_filter)  when read_weights = '1' or start_mac = '1' else 
                   (others => '0');

  ifmap_address <= add(0) when EA_add = E0 else
                   add(1) when EA_add = E1 else
                   add(2) when EA_add = E2 else
                   add(3) when EA_add = E3 else
                   add(4) when EA_add = E4 else
                   add(5);

  -- Input memory chip enable control
  --in_ce <= '0' when EA_read = WAITSTART or (EA_add = UPDATEADD and read_bias = '0' and read_weights = '0') or ce_flag = '1' or end_conv_reg = '1' else '1';
  iwght_ce <= '1' when not(EA_read = WAITSTART or ce_flag = '1' or end_conv_reg = '1') else '0';
  ifmap_ce <= '1' when not((EA_add = UPDATEADD and read_bias = '0' and read_weights = '0') or ce_flag = '1' or end_conv_reg = '1') else '0';

  -- Ofmap memory enables
  ofmap_we <= partial_wr;

  ofmap_ce <= '1' when (channel_control = 0 and partial_wr = '1') or (partial_valid_flag = '1') or (partial_control = 1) or (partial_control = 0 and partial_wr = '1') else '0';

  -- Address to write output feature in memory
  ofmap_address <= partial_add_reg;

  -- Output
  ofmap_out <= shift_output when valid_sync_signal = '1' else
               partial0 when channel_control = 0 else
               partial2;


  -- End of convolution
  end_conv <= end_conv_reg;

  -- Debug
  debug <= valid_sync_signal;

end a1;

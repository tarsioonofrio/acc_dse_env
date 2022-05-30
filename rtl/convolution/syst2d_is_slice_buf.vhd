library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity input_buffer is
     generic ( N_FILTER : integer := 16 ;
               N_CHANNEL : integer := 3 ;
               FILTER_WIDTH : integer := 3 ;
	       INPUT_SIZE  : integer := 8 ;
	       MEM_SIZE : integer := 12 
     );
     port    (  clock 	           : in  std_logic;
		reset              : in  std_logic;
                
		read_bias          : in  std_logic;                       
                read_weights       : in  std_logic;   
		inmem_valid        : in  std_logic;      
   

                inmem_value        : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);

                bias_idx           : in  std_logic_vector(MEM_SIZE-1 downto 0);      
		
                weights_idx0       : in  std_logic_vector(MEM_SIZE-1 downto 0);      
                weights_idx1       : in  std_logic_vector(MEM_SIZE-1 downto 0);      
                weights_idx2       : in  std_logic_vector(MEM_SIZE-1 downto 0);      
		
                mem_bias_value     : out std_logic_vector((INPUT_SIZE*2)-1 downto 0);

                mem_weights_value0 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
		mem_weights_value1 : out std_logic_vector((INPUT_SIZE)-1 downto 0);
		mem_weights_value2 : out std_logic_vector((INPUT_SIZE)-1 downto 0);

                weight_x       : out  std_logic_vector(MEM_SIZE-1 downto 0);      
                bias_x          : out  std_logic_vector(MEM_SIZE-1 downto 0)

                  
             );
end input_buffer;

architecture a1 of input_buffer is

type bias_3x3 is array (0 to N_FILTER-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
signal mem_bias : bias_3x3;

type weights_3x3 is array (0 to (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER)-1) of std_logic_vector((INPUT_SIZE*2)-1 downto 0);
signal mem_weights : weights_3x3;
   
signal weight_x_signal, bias_x_signal: std_logic_vector(MEM_SIZE-1 downto 0); 

begin

    ----------------------------------------------------------------------------
    -- menage bias
    ----------------------------------------------------------------------------
     process(reset, clock)
     begin
          if reset='1' then
             bias_x_signal <= (others=>'0');	     
	     mem_bias <= (others =>(others =>'0'));
	     
          elsif rising_edge(clock) then
	     	     
	     if read_bias = '1' and bias_x_signal < N_FILTER and inmem_valid = '1' then
	       mem_bias(conv_integer(bias_x_signal)) <= inmem_value;	       
	       bias_x_signal <= bias_x_signal + '1';
	     end if;
	     	     
          end if;
    end process;
   
   ----------------------------------------------------------------------------
   -- manage weights
   ----------------------------------------------------------------------------  
   process(reset, clock)
    begin
      if reset='1' then
	weight_x_signal <= (others=>'0');
	mem_weights <= (others =>(others =>'0'));
      elsif rising_edge(clock) then
  	
	if read_weights = '1' and inmem_valid = '1' and weight_x_signal < (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
	    mem_weights(conv_integer(weight_x_signal)) <= inmem_value;
	    weight_x_signal <= weight_x_signal + 1;
	end if;
	
      end if;
    end process;	
  
mem_bias_value     <= mem_bias(conv_integer(bias_idx));

mem_weights_value0 <= mem_weights(conv_integer(weights_idx0))(INPUT_SIZE-1 downto 0);
mem_weights_value1 <= mem_weights(conv_integer(weights_idx1))(INPUT_SIZE-1 downto 0);
mem_weights_value2 <= mem_weights(conv_integer(weights_idx2))(INPUT_SIZE-1 downto 0);

weight_x <= weight_x_signal;
bias_x   <= bias_x_signal;

end a1;

----------------------------------------------
-- Output buffer
----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity is_output_buffer is
     generic ( N_FILTER : integer := 16 ;
               N_CHANNEL : integer := 3 ;
	       CONVS_PER_LINE : integer := 15 ;
	       INPUT_SIZE  : integer := 8 ;
               CARRY_SIZE : integer := 4 ;
	       MEM_SIZE : integer := 12 
     );
     port    (  clock 	          : in  std_logic;
		reset             : in  std_logic;
                
		valid_in          : in  std_logic;                       
		valid_out         : out std_logic;                       

		partial_pixel_in  : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);    
		partial_pixel_out : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
		
		partial_pixel_line : in std_logic_vector(MEM_SIZE-1 downto 0);
		channel            : out std_logic_vector(N_CHANNEL-1 downto 0);
		filter             : out std_logic_vector(31 downto 0);
		pixel_out          : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
		address_out        : out std_logic_vector(MEM_SIZE-1 downto 0)
             );
end is_output_buffer;

architecture a1 of is_output_buffer is
  
   type ofmap is array(0 to N_FILTER-1, 0 to CONVS_PER_LINE-1) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
   signal acc : ofmap := (others=>(others =>(others =>'0')));
   
   signal conv_length        : integer range 0 to CONVS_PER_LINE*CONVS_PER_LINE; 
   signal channel_control    : integer range 0 to N_CHANNEL;
   signal shift_output_cycle : integer range 0 to 2; 
   signal partial_sum_idx, partial_sum_idx_reg : integer range 0 to N_FILTER*CONVS_PER_LINE*CONVS_PER_LINE;
   signal filter_counter,filter_counter_reg    : integer range 0 to N_FILTER;
   signal line_idx : integer;
   
   signal adder_out_reg, accumulate_value : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

   signal ofmap_address_reg, ofmap_address_adder : std_logic_vector(MEM_SIZE-1 downto 0);

   signal valid_out_reg, flag_valid, flag_cont_shift_output_cycle : std_logic;

   signal filter_counter_signal, filter_output : std_logic_vector(31 downto 0);
   
begin
	
   process(reset,clock)
   begin
      if reset='1' then

	channel_control  <= 0;

	accumulate_value   <= (others=>'0');
	adder_out_reg	   <= (others=>'0');
	filter_output      <= (others=>'0');
	
	filter_counter  <= 0; 
	partial_sum_idx <= 0;
	
	acc <= (others=>(others =>(others =>'0')));
	
	valid_out_reg <= '0';
	shift_output_cycle   <= 0;
	
	filter_counter_reg  <= 0; 
	partial_sum_idx_reg <= 0; 
	
      elsif clock'event and clock = '1' then

	filter_counter_reg <= filter_counter;
	partial_sum_idx_reg <= partial_sum_idx;
	
	if filter_counter < N_FILTER and partial_sum_idx < CONVS_PER_LINE then
	  accumulate_value <= acc(filter_counter,partial_sum_idx);
	end if;

	if valid_in = '1' and filter_counter < N_FILTER and channel_control < N_CHANNEL then	    
	    	    
	    acc(filter_counter,partial_sum_idx) <= partial_pixel_in;
	    
	    filter_counter <= filter_counter + 1;
	    
	 elsif filter_counter = N_FILTER then
	    filter_counter <= 0;

	    if partial_sum_idx = CONVS_PER_LINE-1 then
	      partial_sum_idx <= 0;
	      channel_control <= channel_control + 1;
	    else
	      partial_sum_idx <= partial_sum_idx + 1;
	    end if;
	    	 
	 end if;
	 
	 if channel_control = N_CHANNEL then
	    shift_output_cycle <= shift_output_cycle + 1;
	    
	    valid_out_reg <= '0';
	    
	    if filter_counter < N_FILTER and partial_sum_idx < CONVS_PER_LINE  then
	      adder_out_reg <= acc(filter_counter,partial_sum_idx);
	      filter_output <= filter_counter_signal;
	    else
	      channel_control <= 0;
	      filter_counter <= 0;
	      partial_sum_idx <= 0;
	      acc <= (others=>(others =>(others =>'0')));
	    end if;
	    
	    if shift_output_cycle = 1 then
	      
	      valid_out_reg <= '1';
	      	      
	      shift_output_cycle <= 0;
	      
	      if partial_sum_idx = CONVS_PER_LINE-1 then
		filter_counter <= filter_counter + 1;		
		partial_sum_idx <= 0;
	      else
		partial_sum_idx <= partial_sum_idx + 1;
	      end if;
	    end if;	    
	 
	 end if;
      
      end if;
   end process; 

   filter_counter_signal <= CONV_STD_LOGIC_VECTOR(filter_counter,32) when channel_control = N_CHANNEL and filter_counter < N_FILTER else
			    (others=>'0');
   
   ofmap_address_reg <= CONV_STD_LOGIC_VECTOR(((filter_counter_reg*CONVS_PER_LINE*CONVS_PER_LINE) + partial_sum_idx_reg + CONV_INTEGER(partial_pixel_line)), MEM_SIZE) when valid_out_reg = '1' else
			(others=>'0');

   ------------------------------------------------------------------------------------
   -- Circuit outputs
   ------------------------------------------------------------------------------------
   partial_pixel_out <= accumulate_value;
   
   filter	     <= filter_output;
   
   channel 	     <= CONV_STD_LOGIC_VECTOR(channel_control,N_CHANNEL);
   
   pixel_out         <= adder_out_reg;
      
   address_out       <= ofmap_address_reg;
   
   valid_out         <= valid_out_reg;

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
     generic (  N_FILTER : integer := 16;
		N_CHANNEL : integer := 3;
		STRIDE : integer := 2;
		X_SIZE : integer := 32;
	        FILTER_WIDTH : integer := 3;
                CONVS_PER_LINE : integer := 15;
		MEM_SIZE : integer := 12;
		INPUT_SIZE : integer := 8;
		SHIFT : integer := 4;
		CARRY_SIZE : integer := 4
             );
     port    (  clock 	       : in  std_logic;
		reset          : in  std_logic;
                
		-- Accelerator interface
		start_conv     : in  std_logic;
		end_conv       : out std_logic;
		debug          : out std_logic;
		
		-- Input memory interface
                inmem_valid    : in  std_logic;
		inmem_value    : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);    -- value from feature map memory
                inmem_address  : out std_logic_vector(MEM_SIZE-1 downto 0);   -- feature map address
		inmem_ce       : out std_logic; 
		
		-- Ofmap memory interface
		ofmap_valid    : in  std_logic;
		pixel_in       : in std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
		pixel_out      : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
		ofmap_address  : out std_logic_vector(MEM_SIZE-1 downto 0);    
                ofmap_we       : out std_logic; 
		ofmap_ce       : out std_logic
                
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

    signal filter_counter_signal : std_logic_vector(31 downto 0);
    
    signal valid_out_reg, en_reg_flag, read_feature_flag, en_reg, pipe_reset, valid_rgb_signal, feature_stride_flag, cont_conv_flag, reg_read_features, read_bias_flag, read_bias, read_weights, read_features, start_mac, end_conv_signal, end_conv_reg, read_weight_flag, reg_read_weights, reg_read_bias, reg_start_mac, reg_reg_start_mac, valid_out_reg_reg, inmem_ce_reg : std_logic;

    signal reg_soma1, adder_out_reg, adder_out, adder_bias, accumulate_value, partial_pixel_reg, shift_output, shift_output_reg : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

    signal pixel_line, ofmap_address_reg, cont_iterations, cont_conv, cont_steps, cont_line, rgb_base, feature_base, feature_stride, feature_x, weight_x, bias_x, feature_control, ofmap_address_reg_reg, inmem_address_reg: std_logic_vector(MEM_SIZE-1 downto 0); 

    signal channel_control : std_logic_vector(N_CHANNEL-1 downto 0);

    signal weights_idx0, weights_idx1, weights_idx2, bias_idx0: std_logic_vector(MEM_SIZE-1 downto 0); 
    signal mem_weights_value0, mem_weights_value1, mem_weights_value2 : std_logic_vector(INPUT_SIZE-1 downto 0); 
    signal mem_bias_value : std_logic_vector((INPUT_SIZE*2)-1 downto 0); 

    signal H: integer range 0 to X_SIZE;  
    signal V: integer range 0 to 2**MEM_SIZE;
    signal address_base : integer range 0 to 2**MEM_SIZE; 
    signal filter_counter : integer range 0 to CONVS_PER_LINE*CONVS_PER_LINE;
    signal shift_output_cycle     : integer range 0 to 2;
    signal next_line_idx, line_idx, filter_counter_reg, partial_sum_idx_reg, cont_feature_cycles, cont_weight_cycles, cont_bias_cycles, cont_valid, cont_total_valid : integer;

begin
      ----------------------------------------------------------------------------
    -- input values control
    ----------------------------------------------------------------------------
    process(reset, clock)
    begin
	if reset='1' then
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
			if cont_feature_cycles = 8 and channel_control /= conv_std_logic_vector(N_CHANNEL,N_CHANNEL) then
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
	if reset='1' then
	    read_bias <= '0';
	    read_weights <= '0';
	    read_features <= '0';
	    
	    start_mac <= '0';
	    end_conv_signal <= '0';
	    end_conv_reg <= '0';
	    read_weight_flag <= '0';
	    
	    cont_weight_cycles <= 0;
	    cont_bias_cycles <= 0;
	    cont_feature_cycles <= 0;
	    
	    cont_valid <= 0;
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
		    read_bias <= '0';
		    read_weights <= '1';
		    if inmem_valid = '1' then
		      cont_weight_cycles <= cont_weight_cycles + 1;
		    end if;
		when READFEATURE =>  
		    cont_valid <= 0;
		    read_weights <= '0';
		    if channel_control /= conv_std_logic_vector(N_CHANNEL,N_CHANNEL) then
			read_features <= '1';
			if inmem_valid = '1' then
			    cont_feature_cycles <= cont_feature_cycles + 1;
			end if;
		    end if;
		when STARTMAC =>  
		    read_features <= '0';
		    cont_feature_cycles <= 0;
		    start_mac <= '1';
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
      if reset='1' then
	address_base <= 0;	
      elsif rising_edge(clock) then
	if cont_conv = CONVS_PER_LINE and cont_line < N_CHANNEL then
	    address_base <= address_base + (FILTER_WIDTH*FILTER_WIDTH);
	elsif cont_line = N_CHANNEL then
	    address_base <= 0;
	end if;	
      end if;
    end process;
   ---------------------------------------------------
   -- Buffer used to store all weights and all bias
   ---------------------------------------------------

   bias_idx0 <= filter_counter_signal(MEM_SIZE-1 downto 0);

   input_buffer: entity work.input_buffer
	 generic map( N_FILTER => N_FILTER,
		      N_CHANNEL => N_CHANNEL,
		      FILTER_WIDTH => FILTER_WIDTH,
	              INPUT_SIZE => INPUT_SIZE,
		      MEM_SIZE   => MEM_SIZE
		    )
	 port map( clock=>clock, 
		   reset=> reset, 		   
		   read_bias=>read_bias, 
		   inmem_valid=>inmem_valid,	   
		   read_weights=>read_weights,
		   inmem_value=>inmem_value,
		   bias_idx=>bias_idx0,
		   mem_bias_value=>mem_bias_value,
                   weights_idx0=>weights_idx0,
                   weights_idx1=>weights_idx1,
                   weights_idx2=>weights_idx2,
	 	   mem_weights_value0=>mem_weights_value0,
		   mem_weights_value1=>mem_weights_value1,
	 	   mem_weights_value2=>mem_weights_value2,

                   weight_x => weight_x,
                   bias_x => bias_x
	  );
   
   ----------------------------------------------------------------------------
   -- Manage features
   ----------------------------------------------------------------------------
   process(reset, clock)
   begin
      if reset='1' then
         reg_read_features  <= '0';
	 feature_x       <= (others => '0');
	 feature_control <= (others => '0');
         feature         <= (others=>(others =>(others =>'0')));
	 	 
	 feature_base <= (others => '0');
	 rgb_base <= (others => '0');
	 feature_stride <= (others => '0');
	 feature_stride_flag <= '0';
	 
	 cont_line <= (others => '0');
	 
	 line_idx <= 0;
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
		feature(0,0) <= inmem_value(INPUT_SIZE-1 downto 0);
			      
	    elsif (feature_control = 1) then
		feature(0,1) <= inmem_value(INPUT_SIZE-1 downto 0);
			      
	    elsif (feature_control = 2) then
		feature(0,2) <= inmem_value(INPUT_SIZE-1 downto 0);

            elsif (feature_control = 3) then
		feature(1,0) <= inmem_value(INPUT_SIZE-1 downto 0);
	      
            elsif (feature_control = 4) then
		feature(1,1) <= inmem_value(INPUT_SIZE-1 downto 0);

            elsif (feature_control = 5) then
		feature(1,2) <= inmem_value(INPUT_SIZE-1 downto 0);
	       
            elsif (feature_control = 6) then
		feature(2,0) <= inmem_value(INPUT_SIZE-1 downto 0);
                              
            elsif (feature_control = 7) then
		feature(2,1) <= inmem_value(INPUT_SIZE-1 downto 0);
                              
            elsif (feature_control = 8) then  
	       feature(2,2) <= inmem_value(INPUT_SIZE-1 downto 0);
	       feature_base <= feature_base + STRIDE;
  	    end if;
      
	  elsif feature_control = FILTER_WIDTH*FILTER_WIDTH and read_feature_flag = '0' then
	      read_feature_flag <= '1';
	  elsif (read_features = '0' and reg_start_mac = '0' and start_mac = '0') then
	    read_feature_flag <= '0';
	    feature_control <= (others => '0');
	    feature_x <= feature_stride + feature_base;
	    
         end if;
	 
	 -- Next feature map line based on stride
	 if cont_conv = CONVS_PER_LINE and feature_stride_flag = '0' then
	    feature_stride_flag <= '1';
	        
	    feature_base <= rgb_base;
	    feature_control <= (others => '0');
	    	    
	    feature_stride <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE*X_SIZE, MEM_SIZE);
	    feature_x <= feature_stride + CONV_STD_LOGIC_VECTOR(X_SIZE*X_SIZE, MEM_SIZE);
	    
	    cont_line <= cont_line + 1;
	    
	    if cont_line = N_CHANNEL-1 then		
		rgb_base <= rgb_base + (X_SIZE*2);
		feature_base <= rgb_base + (X_SIZE*2);
	    end if;
	 end if;
		 
	 if cont_line = N_CHANNEL then
	    feature_x <= rgb_base;
	    feature_stride <= (others => '0');
	    cont_line <= (others => '0');
	    next_line_idx <= next_line_idx + CONVS_PER_LINE;
	    line_idx      <= next_line_idx;
	 end if;
	 
      end if;
   end process;

    -------------------------------------------------------------------------------------------------------
    -- PART 1 - CONTROL: READS SIX ELEMENTS FROM MEMORY COMPUTING IN PARALLEL
    -------------------------------------------------------------------------------------------------------
    process(reset, clock)
    begin
          if reset='1' then
             EA_add <= RIDLE;
             weights_idx0 <= (others=>'0');
             weights_idx1 <= (others=>'0');
             weights_idx2 <= (others=>'0'); 
          elsif rising_edge(clock) then
	     if reg_start_mac='1' then
		EA_add <= RIDLE;
	     else
		case EA_add is		    
		    when RIDLE => 
		      if (reg_reg_start_mac='1' and reg_read_features = '0') then 
			EA_add<=UPDATEADD;  
		      else  
			EA_add <=RIDLE; 
		      end if;		      
		    when UPDATEADD =>  
			EA_add <= E0; 
		    when E0 =>  
			EA_add <= E1;     
                        weights_idx0 <= add(0);
                        weights_idx1 <= add(1);
                        weights_idx2 <= add(2);    
		    when E1 =>  
			EA_add <= E2;
		    when E2 =>  
			EA_add <= E3;
                        weights_idx0 <= add(3);
                        weights_idx1 <= add(4);
                        weights_idx2 <= add(5); 
		    when E3 =>  
			EA_add <= E4;
		    when E4 =>  
		        EA_add <= E5;
                        weights_idx0 <= add(6);
                        weights_idx1 <= add(7);
                        weights_idx2 <= add(8);
		    when E5 =>  
			EA_add <= E6;
		    when E6 => 
			EA_add <= E7;
		    when E7 => 
			EA_add <= UPDATEADD;
		end case;               
	      end if;
	  end if;
    end process;
      
    process(reset, clock)
    begin
          if reset='1' then
               H  <= 0;
               V  <= 0;
               add <= (others =>(others =>'0'));
               buffer_weights <= (others=>(others =>(others =>'0')));
               weights <= (others=>(others =>(others =>'0')));
               cont_steps <= (others=>'0');
		
	 elsif rising_edge(clock) then
	    	  
	    case EA_add is

                when UPDATEADD => 
                                 --
                                 -- UPDATE THE ADDRESS IN A PIPELINE FASHION (only 2 colums)
                                 --
                                 if (V + H < FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) then
				   add(0) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
				   add(1) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 1;
				   add(2) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 2;
				   
				   add(3) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 3;
				   add(4) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 4;
				   add(5) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 5;
				   
				   add(6) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 6;
				   add(7) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 7;
				   add(8) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 8;
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
                                 weights(0,0) <= buffer_weights(0,0) ;
                                 weights(0,1) <= buffer_weights(0,1) ;
                                 weights(0,2) <= buffer_weights(0,2) ;
                                
                                 weights(1,0) <= buffer_weights(1,0) ;
                                 weights(1,1) <= buffer_weights(1,1) ;
                                 weights(1,2) <= buffer_weights(1,2) ;
           
                                 weights(2,0) <= buffer_weights(2,0) ;
                                 weights(2,1) <= buffer_weights(2,1) ;
                                 weights(2,2) <= buffer_weights(2,2) ;

                                 -- count the number os arithmetic shifts
                                 if cont_steps < 10 then -- stop at 9 - enough to fire accumulation
                                     cont_steps <= cont_steps + 1;
                                 end if;
				
				-- To ensure right valid rgb pulse 
				if (channel_control = N_CHANNEL) then
				    cont_steps <= (others=>'0');
				end if;

               when E0 | E1 =>
		    buffer_weights(0,0) <= mem_weights_value0;
		    buffer_weights(0,1) <= mem_weights_value1;
		    buffer_weights(0,2) <= mem_weights_value2;
		    
               when E2 | E3  =>		    
                    buffer_weights(1,0) <= mem_weights_value0;
		    buffer_weights(1,1) <= mem_weights_value1;
		    buffer_weights(1,2) <= mem_weights_value2;
               
	       when E4 | E5  =>		    
		    buffer_weights(2,0) <= mem_weights_value0;
		    buffer_weights(2,1) <= mem_weights_value1;
		    buffer_weights(2,2) <= mem_weights_value2; 
		
               when others => null;
	       
            end case;

	    if (reg_start_mac = '1') then
		H <= 0;
		V <= address_base;
		
		add <= (others =>CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE));
		cont_steps <= (others=>'0');
	    end if;

        end if;
    end process;  
  
    -- Ensure en_reg rise only for one cycle
    process(reset, clock)
    begin
      if reset='1' then
	en_reg_flag  <= '0';
      elsif rising_edge(clock) then
	if EA_add=E2 or EA_add=E4 or EA_add=E6 or EA_add=UPDATEADD then
	  en_reg_flag <= '1';
	else
	  en_reg_flag <= '0';
	end if;
      end if;
    end process;

    en_reg <= '1' when (EA_add=E2 or EA_add=E4 or EA_add=E6 or EA_add=UPDATEADD) and en_reg_flag='0' else '0';
  
   -------------------------------------------------------------------------------------------------------
   --- PART 2 *********  MACS AND FLOPS ARRAY - ATTENTION :  ARRANGEMENT IS DIFFERENT FROM 2D  ***********
   -------------------------------------------------------------------------------------------------------

   -- The first column does not hava a previous sum
   cols0:  for j in 0  to FILTER_WIDTH-1 generate
              mac0: entity work.mac
	      	  generic map( INPUT_SIZE  => INPUT_SIZE, 
                               CARRY_SIZE => CARRY_SIZE
                  )  
                  port map( sum      => (others=>'0'), 
                            op1      => feature(j,0),  
                            op2      => weights(j,0),
                            res_mac  => res_mac(j,0) 
                          );
   end generate cols0; 

   -- Second and third column with previous column
   cols12: for i in 1  to FILTER_WIDTH-1 generate
     rows:  for j in 0  to FILTER_WIDTH-1 generate
                     
              mac12: entity work.mac  
		  generic map( INPUT_SIZE  => INPUT_SIZE, 
                               CARRY_SIZE => CARRY_SIZE
                  )
                  port map( sum      => reg_mac(j,i-1),                          -- previous sum
                            op1      => feature(j,i),   
                            op2      => weights(j,i),
                            res_mac  => res_mac(j,i)
                          );
      end generate rows;  
   end generate cols12;  

    -- Vertical pipe registers 
    pipe_reset <=  reset or start_mac;
    
    reg_r:  for i in 0  to FILTER_WIDTH-1 generate
    reg_c:  for j in 0  to FILTER_WIDTH-1 generate
                             
             ireg: entity work.reg  
	          generic map( INPUT_SIZE  => ((INPUT_SIZE*2)+CARRY_SIZE) )
                  port map( clock=>clock, reset=>pipe_reset, enable=>en_reg,
                            D  => res_mac(j,i), 
                            Q  => reg_mac(j,i) 
                          );

        end generate reg_c;  
    end generate reg_r;

    -- REGISTERS AND ADDERS AFTER THE MAC MATRIX
    process(reset, clock)
    begin
          if reset='1' then
	      reg_soma1  <=  (others=>'0');
          elsif rising_edge(clock) then
	    if en_reg='1' and EA_add=UPDATEADD then
	      reg_soma1 <=  reg_mac(0,FILTER_WIDTH-1) + reg_mac(1,FILTER_WIDTH-1) + reg_mac(2,FILTER_WIDTH-1); 
	    end if;
        end if;
    end process;
 
   process(reset, clock)
   begin
      if reset='1' then
  	cont_iterations <= (others=>'0');
	reg_start_mac <= '0';
	reg_reg_start_mac <= '0';
	cont_conv <= (others=>'0');
	cont_conv_flag <= '0';
      elsif rising_edge(clock) then
  	reg_start_mac <= start_mac;
	reg_reg_start_mac <= reg_start_mac;	

	if cont_steps > 1 and EA_add = E1 then
  	   cont_iterations <= cont_iterations + 1;
  	   if cont_iterations = N_FILTER then
	      cont_iterations <= (others=>'0');
	   end if;
	end if;
		
	if reg_start_mac='1' then
	  cont_iterations <= (others=>'0');
	end if;
	
	if cont_iterations = 0 then
	  cont_conv_flag <= '1';
	elsif cont_iterations = N_FILTER and cont_conv_flag = '1' and EA_read /= READFEATURE then
	  cont_conv <= cont_conv + 1;
	  cont_conv_flag <= '0';
	elsif (cont_conv = CONVS_PER_LINE) then
	  cont_conv <= (others=>'0');
	end if;

	if EA_read = READFEATURE and read_features = '0' and channel_control = conv_std_logic_vector(N_CHANNEL,N_CHANNEL) then
	    cont_conv <= (others=>'0');
	end if;
	
      end if;
   end process;
  
   ------------------------------------------------------------------------------------
   -- Ofmap buffer logic and registers
   ------------------------------------------------------------------------------------ 
   process(reset, clock)
   begin
	if reset='1' then
	      partial_pixel_reg <= (others=>'0');
	elsif rising_edge(clock) then
	      partial_pixel_reg <= reg_soma1;
	end if;
   end process;
  
   output_buffer: entity work.is_output_buffer
	 generic map( N_FILTER => N_FILTER,
		      N_CHANNEL => N_CHANNEL,
		      CONVS_PER_LINE => CONVS_PER_LINE,
	              INPUT_SIZE => INPUT_SIZE,
		      CARRY_SIZE => CARRY_SIZE,
		      MEM_SIZE   => MEM_SIZE
		    )
	 port map( clock=>clock, 
		   reset=> reset, 
		   
		   valid_in=>valid_rgb_signal, 
		   valid_out=>valid_out_reg,
		   
		   partial_pixel_in=>adder_out,
		   partial_pixel_out=>accumulate_value, 
		   
		   partial_pixel_line=>pixel_line,
		   filter=>filter_counter_signal,
		   channel=>channel_control,
		   address_out=>ofmap_address_reg,
		   pixel_out=>adder_out_reg
	  );
   
   -- Converting line_idx to a std_logic_vector
   pixel_line <= CONV_STD_LOGIC_VECTOR(line_idx,MEM_SIZE);
   
   -- Partial sum valid
   valid_rgb_signal <= '1' when EA_add=E1 and cont_iterations > 0 and (read_bias = '0' and read_features = '0' and start_mac = '0') and channel_control /= conv_std_logic_vector(N_CHANNEL,N_CHANNEL) else 
		       '0';
		          
   -- Adder logic	  
   adder_out <= partial_pixel_reg + accumulate_value;
   
   adder_bias <= adder_out_reg + mem_bias_value;
   
   -- Shift
   shift_output(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto (INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)) <= (others=>'0');

   -- ReLU 
   shift_output((INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)-1 downto 0) <= adder_bias(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto SHIFT) when adder_bias > 0 else
				                                 (others=>'0'); 

  -- A pipeline register to solve P&R timing problens 
  process(reset, clock)
  begin
    if reset='1' then
      valid_out_reg_reg     <= '0';
      shift_output_reg      <= (others=>'0');
      ofmap_address_reg_reg <= (others=>'0');

      inmem_ce_reg          <= '0';  
      inmem_address_reg     <= (others=>'0');  
   
    elsif rising_edge(clock) then
      valid_out_reg_reg     <= valid_out_reg;
      shift_output_reg      <= shift_output;
      ofmap_address_reg_reg <= ofmap_address_reg;

      if read_bias='1' then
        inmem_address_reg <= bias_x;
      elsif read_weights='1' then
        inmem_address_reg <= weight_x + N_FILTER;
      elsif read_features='1' or start_mac='1' or reg_start_mac='1' then
        inmem_address_reg <= feature_x + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER;
      else
        inmem_address_reg <= (others=>'0');
      end if;

      if (read_bias = '1' or read_weights = '1' or read_features = '1' or start_mac = '1' or reg_start_mac = '1') then
        inmem_ce_reg <= '1';
      else
        inmem_ce_reg <= '0';
      end if;

    end if;
  end process;  

  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  -- Input memory read address (constant sums used to access the correct address on memory)
  inmem_address <= bias_x when read_bias='1' else
		   weight_x + N_FILTER when read_weights='1' else
		   feature_x + (FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER when read_features='1' or start_mac='1' or reg_start_mac='1' else 
		   (others=>'0');
  
  -- Input memory chip enable control
  inmem_ce <= '1' when (read_bias = '1' or read_weights = '1' or read_features = '1' or start_mac = '1' or reg_start_mac = '1') else '0';
      
  -- Ofmap memory enables
  ofmap_we <= valid_out_reg_reg;
   
  ofmap_ce <= valid_out_reg_reg;
   
  -- Address to write output feature in memory 
  ofmap_address <= ofmap_address_reg_reg;
  
  -- Output
  pixel_out <= shift_output_reg;
 
  -- Debug
  debug <= valid_out_reg_reg;
  
  -- End of convolution
  end_conv <= end_conv_reg;
   
end a1;

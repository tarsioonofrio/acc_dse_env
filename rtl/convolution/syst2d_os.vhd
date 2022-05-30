-------------------------------------------------------------------------------------------------
-- CONVOLUTION - SYSTOLIC   -  JAN/2021 - MORAES  -  you must read the weights - fixed here 
-- MODIFIED IN MARCH 8 20201 - COMBINATIONAL MAC
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
		SHIFT : integer := 8;
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
		inmem_value    : in  std_logic_vector((INPUT_SIZE*2)-1 downto 0);
		inmem_address  : out std_logic_vector(MEM_SIZE-1 downto 0);   
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
    type statesReadValues is (WAITSTART, READBIAS, STARTMAC, WAITVALID);
    signal EA_read : statesReadValues;

    type statesM is (RIDLE, UPDATEADD, E0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, E11, E12, E13, E14, E15, E16, E17);
    signal EA_add : statesM;

    type wgh3x3 is array (0 to 2, 0 to 2) of std_logic_vector(INPUT_SIZE-1 downto 0);
    signal features, buffer_features : wgh3x3;

    type features_3x3 is array (0 to 2, 0 to 2) of std_logic_vector(INPUT_SIZE-1 downto 0);  
    signal weights, buffer_weights : features_3x3;

    type array3x3 is array (0 to 2, 0 to 2) of std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);  -- 20 bits
    signal op1, op2, res_mac, reg_mac : array3x3;

    type address is array (0 to 17) of std_logic_vector(MEM_SIZE-1 downto 0);
    signal add : address;

    signal en_reg_flag, read_bias_flag, read_bias, start_mac, end_conv_signal, end_conv_reg, reg_start_mac, reg_reg_start_mac, valid_signal, en_reg, pipe_reset, valid_flag, valid_out_reg, valid_out_reg_reg, inmem_ce_reg, end_conv_reg_reg : std_logic;
    
    signal reg_reg_bias_value, reg_bias_value: std_logic_vector((INPUT_SIZE*2)-1 downto 0); 
    
    signal acc, adder_out_reg, adder_out, accumulate_value, partial_pixel_reg, shift_output, reg_soma1, pixel_out_reg : std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);

    signal cont_iterations, bias_x , ofmap_address_reg, ofmap_address_adder, cont_steps, ofmap_address_reg_reg, inmem_address_reg : std_logic_vector(MEM_SIZE-1 downto 0);

    --signal H: integer range 0 to X_SIZE*X_SIZE*N_CHANNEL;  
    signal H: integer range 0 to 2**MEM_SIZE;  
    signal V: integer range 0 to 2**MEM_SIZE;
    signal address_base, feature_base, weight_base, reg_weight_base, next_line : integer range 0 to 2**MEM_SIZE; 
    signal channel_control : integer range 0 to N_CHANNEL;
    --signal channel_control : integer range 0 to N_CHANNEL+1;
    signal shift_cycle     : integer range 0 to 2;
    signal cont_valid, cont_total_valid : integer;
   
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
			if inmem_valid = '1' then
			    EA_read <= STARTMAC;
			end if;
		    when STARTMAC =>  
			EA_read <= WAITVALID;
		    when WAITVALID =>
			if (cont_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL) and read_bias_flag = '0' then
			    EA_read <= READBIAS; 
			elsif end_conv_signal = '1' then
			    EA_read <= WAITSTART;   
			end if;
		end case;
	    end if;
	end if;
    end process;
    
    process(reset, clock)
    begin
	if reset='1' then
	    read_bias <= '0';
	    start_mac <= '0';
	    end_conv_signal <= '0';
	    end_conv_reg <= '0';
	    
	    cont_valid <= 0;
	    cont_total_valid <= 0;

	elsif rising_edge(clock) then
	    
	    if cont_total_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL*N_FILTER then
		end_conv_signal <= '1';
	    else
		end_conv_signal <= '0';
	    end if;
	    
	    -- Registering end of convolution signal
	    end_conv_reg <= end_conv_signal;
	    		
	    case EA_read is
		when READBIAS =>  
		    read_bias <= '1';
		    cont_valid <= 0;
		    
		when STARTMAC =>  
		    read_bias <= '0';
		    start_mac <= '1';
		when WAITVALID =>  
		    start_mac <= '0';
		    
		    if valid_signal = '1' then
			cont_valid <= cont_valid + 1;
			cont_total_valid <= cont_total_valid + 1;
		    end if;
		    
		    -- Ensure that weight read will stop at the end of each RGB channel process 
		    if (cont_valid = CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL) and read_bias_flag = '0' then
			read_bias_flag <= '1';
		    else
			read_bias_flag <= '0';
		    end if;
		    		    		    
		when others => null;
	    end case;  
	end if;
    end process;


    ----------------------------------------------------------------------------
    -- menage bias
    ----------------------------------------------------------------------------
     process(reset, clock)
     begin
          if reset='1' then
             bias_x <= (others=>'0');
             reg_bias_value <= (others=>'0');
	     reg_reg_bias_value <= (others=>'0');
	     
          elsif rising_edge(clock) then	

	     reg_bias_value <= inmem_value;

	     if (start_mac = '1') then
	       reg_reg_bias_value <= reg_bias_value;
               bias_x <= bias_x + '1';
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
          elsif rising_edge(clock) then
             	     
	     if reg_start_mac='1' then
		EA_add <= RIDLE;
	     else
		case EA_add is
		    when RIDLE   => 
		      if (reg_reg_start_mac='1') then 
			EA_add<=UPDATEADD;  
		      else  
			EA_add <=RIDLE; 
		      end if;

		    when UPDATEADD =>  
			EA_add <= E0;     -- read 6 values from the memory **** continously ****
		    
		    when E0        =>  
			if inmem_valid = '1' then
			    EA_add <= E1;     
			end if;
		    when E1        =>  
			if inmem_valid = '1' then
			    EA_add <= E2;
			end if;
		    when E2        =>  
			if inmem_valid = '1' then
			    EA_add <= E3;
			end if;
		    when E3        =>  
			if inmem_valid = '1' then
			    EA_add <= E4;
			end if;
		    when E4        =>  
			if inmem_valid = '1' then
			    EA_add <= E5;
			end if;
		    when E5        =>  
			if inmem_valid = '1' then
			    EA_add <= E6;
			end if;
		    when E6        =>  
			if inmem_valid = '1' then
			    EA_add <= E7;
			end if;
		    when E7        =>  
			if inmem_valid = '1' then
			    EA_add <= E8;
			end if;
		    when E8        =>  
			if inmem_valid = '1' then
			    EA_add <= E9;     
			end if;
		    when E9        =>  
			if inmem_valid = '1' then
			    EA_add <= E10;
			end if;
		    when E10       =>  
			if inmem_valid = '1' then
			    EA_add <= E11;
			end if;
		    when E11       =>  
			if inmem_valid = '1' then
			    EA_add <= E12;
			end if;
		    when E12       =>  
			if inmem_valid = '1' then
			    EA_add <= E13;
			end if;
		    when E13       =>  
			if inmem_valid = '1' then
			    EA_add <= E14;
			end if;
		    when E14       =>  
			if inmem_valid = '1' then
			    EA_add <= E15;
			end if;
		    when E15       =>  
			if inmem_valid = '1' then
			    EA_add <= E16;
			end if;
		    when E16       =>  
			if inmem_valid = '1' then
			    EA_add <= E17;
			end if;
		    when E17       =>  
			if inmem_valid = '1' then
			    EA_add <= UPDATEADD;
			end if;
		end case;
	    end if;
	end if;
    end process;

    -- read from memory filling the weights matriz, the first cycle update the addresses
    process(reset, clock)
    begin
          if reset='1' then
               H  <= 0;
               V  <= 0;
	       
               add <= (others =>(others =>'0'));
               buffer_weights <= (others=>(others =>(others =>'0')));
	       buffer_features <= (others=>(others =>(others =>'0')));
               weights <= (others=>(others =>(others =>'0')));
	       features <= (others=>(others =>(others =>'0')));
               cont_steps <= (others=>'0');
		
	       next_line       <= 0;
	       address_base    <= 0;
	       feature_base    <= 0;
	       weight_base     <= 0;
	       reg_weight_base <= 0;
	       
	 elsif rising_edge(clock) then
	    	  
	    case EA_add is

                when UPDATEADD => 
                                 --
                                 -- UPDATE THE WEIGHT ADDRESS
                                 --
                                 add(0) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE);
                                 add(1) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 1;
                                 add(2) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 2;
                                 
				 add(3) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 3;
                                 add(4) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 4;
                                 add(5) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 5;
				 
				 add(6) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 6;
                                 add(7) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 7;
                                 add(8) <=  CONV_STD_LOGIC_VECTOR(V + H, MEM_SIZE) + 8;
				 
				 --
                                 -- UPDATE THE FEATURE ADDRESS
                                 --
				 add(9)  <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE);
                                 add(10) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + 1;
                                 add(11) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + 2;
                                 
				 add(12) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE;
                                 add(13) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE + 1;
                                 add(14) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE + 2;
				 
				 add(15) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE*2;
                                 add(16) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE*2 + 1;
                                 add(17) <=  CONV_STD_LOGIC_VECTOR(address_base, MEM_SIZE) + X_SIZE*2 + 2;
		 
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

				 --
                                 -- TRANSFER THE READ DATA, REUSING THE FIRST COLUM TO THE THIRD ONE
                                 --
                                 features(0,0) <= buffer_features(0,0) ;
                                 features(0,1) <= buffer_features(0,1) ;
                                 features(0,2) <= buffer_features(0,2) ;
                                
                                 features(1,0) <= buffer_features(1,0) ;
                                 features(1,1) <= buffer_features(1,1) ;
                                 features(1,2) <= buffer_features(1,2) ;
           
                                 features(2,0) <= buffer_features(2,0) ;
                                 features(2,1) <= buffer_features(2,1) ;
                                 features(2,2) <= buffer_features(2,2) ;

                                 --if cont_steps < 2 then 
				 --if cont_steps < N_CHANNEL-1 then 
				 if cont_steps < N_CHANNEL-1 then 
                                     
				     cont_steps <= cont_steps + 1;

				     if V < ((2**MEM_SIZE) - 1) then
					 H <= H + (FILTER_WIDTH*FILTER_WIDTH);  
					 V <= 0;
					 address_base <= address_base + (X_SIZE*X_SIZE);
				     end if;
				     				 
				 else
				     H <= reg_weight_base;
				     V <= 0;
				     cont_steps <= (others=>'0');
				     
				     --if cont_steps = 2 and cont_iterations = CONVS_PER_LINE then
				     if cont_steps = N_CHANNEL-1 and cont_iterations = CONVS_PER_LINE then
				     --if cont_steps = N_CHANNEL-1 and cont_iterations = CONVS_PER_LINE*N_CHANNEL then
				     --if cont_steps = N_CHANNEL and cont_iterations = CONVS_PER_LINE then
					next_line <= next_line + (X_SIZE*2);
					address_base <= next_line + (X_SIZE*2);
					feature_base <= next_line + (X_SIZE*2);
				     else
				        address_base <= feature_base + 2;
					feature_base <= feature_base + 2;
				     end if;
				     
                                 end if;

               when E0   => buffer_weights(0,0) <= inmem_value(INPUT_SIZE-1 downto 0);    
               when E1   => buffer_weights(0,1) <= inmem_value(INPUT_SIZE-1 downto 0);
               when E2   => buffer_weights(0,2) <= inmem_value(INPUT_SIZE-1 downto 0);      
	       when E3   => buffer_weights(1,0) <= inmem_value(INPUT_SIZE-1 downto 0);   
               when E4   => buffer_weights(1,1) <= inmem_value(INPUT_SIZE-1 downto 0);      
               when E5   => buffer_weights(1,2) <= inmem_value(INPUT_SIZE-1 downto 0);
	       when E6   => buffer_weights(2,0) <= inmem_value(INPUT_SIZE-1 downto 0);    
               when E7   => buffer_weights(2,1) <= inmem_value(INPUT_SIZE-1 downto 0);
               when E8   => buffer_weights(2,2) <= inmem_value(INPUT_SIZE-1 downto 0);
	       
	       when E9   => buffer_features(0,0) <= inmem_value(INPUT_SIZE-1 downto 0);    
               when E10  => buffer_features(0,1) <= inmem_value(INPUT_SIZE-1 downto 0);
               when E11  => buffer_features(0,2) <= inmem_value(INPUT_SIZE-1 downto 0);      
	       when E12  => buffer_features(1,0) <= inmem_value(INPUT_SIZE-1 downto 0);   
               when E13  => buffer_features(1,1) <= inmem_value(INPUT_SIZE-1 downto 0);      
               when E14  => buffer_features(1,2) <= inmem_value(INPUT_SIZE-1 downto 0);
	       when E15  => buffer_features(2,0) <= inmem_value(INPUT_SIZE-1 downto 0);    
               when E16  => buffer_features(2,1) <= inmem_value(INPUT_SIZE-1 downto 0);
               when E17  => buffer_features(2,2) <= inmem_value(INPUT_SIZE-1 downto 0);    
		
               when others => null;
	       
            end case;

	    if (reg_start_mac = '1') then
		reg_weight_base <= weight_base;
		weight_base <= weight_base + FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL;
		H <= weight_base;
		V <= 0;
		add <= (others =>(others =>'0'));
		cont_steps   <= (others=>'0');
		address_base <= 0;
		feature_base <= 0;
		next_line    <= 0;
	    end if;

        end if;
    end process;

    -- Ensure en_reg rise only for one cycle
    process(reset, clock)
    begin
      if reset='1' then
	en_reg_flag  <= '0';
      elsif rising_edge(clock) then
	if EA_add=E2 or EA_add=E4 or EA_add=E6 or EA_add=E8 then
	  en_reg_flag <= '1';
	else
	  en_reg_flag <= '0';
	end if;
      end if;
    end process;

    en_reg <= '1' when (EA_add=E2 or EA_add=E4 or EA_add=E6 or EA_add=E8) and en_reg_flag='0' else '0';
    
   -------------------------------------------------------------------------------------------------------
   --- PART 2 *********  MACS AND FLOPS ARRAY - ATTENTION :  ARRANGEMENT IS DIFFERENT FROM 2D  ***********
   -------------------------------------------------------------------------------------------------------

   -- the first column does not hava a previous sum
   cols0:  for j in 0  to FILTER_WIDTH-1 generate
              mac0: entity work.mac
	      	  generic map( INPUT_SIZE  => INPUT_SIZE, 
                               CARRY_SIZE => CARRY_SIZE
                  )  
                  port map( sum      => (others=>'0'), 
                            op1      => features(j,0),  
                            op2      => weights(j,0),
                            res_mac  => res_mac(j,0) 
                          );
   end generate cols0; 

   -- second and third column with previous column
   cols12: for i in 1  to FILTER_WIDTH-1 generate
     rows:  for j in 0  to FILTER_WIDTH-1 generate
                     
              mac12: entity work.mac  
		  generic map( INPUT_SIZE  => INPUT_SIZE, 
                               CARRY_SIZE => CARRY_SIZE
                  )
                  port map( sum      => reg_mac(j,i-1),                          -- previous sum
                            op1      => features(j,i),   
                            op2      => weights(j,i),
                            res_mac  => res_mac(j,i)
                          );
      end generate rows;  
   end generate cols12;  

    -- vertical pipe registers 
    pipe_reset <=  reset or start_mac;  -- ***new*** - reset the internal registers
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

    -- REGISTERS AND ADDERS AFTER THE MAC MATRIX ---------------------
    process(reset, clock)
    begin
          if reset='1' then
	    reg_soma1  <=  (others=>'0');
          elsif rising_edge(clock) then
            if en_reg='1' and EA_add=E8 then
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
	valid_flag <= '0';
      elsif rising_edge(clock) then
  	reg_start_mac <= start_mac;
	reg_reg_start_mac <= reg_start_mac;	
	
	if cont_steps = N_CHANNEL-1 and EA_add = E0 and inmem_valid = '1' then
  	   cont_iterations <= cont_iterations + 1;
	   valid_flag <= '1';
  	   if cont_iterations = CONVS_PER_LINE then
	   --if cont_iterations = CONVS_PER_LINE*N_CHANNEL then
	      cont_iterations <= CONV_STD_LOGIC_VECTOR(1, MEM_SIZE);
	   end if;
	end if;
		
	if reg_start_mac='1' then
	  cont_iterations <= (others=>'0');
	  valid_flag <= '0';
	end if;
		
      end if;
   end process;
   	    
   --valid_signal <= '1' when EA_add=E0 and (cont_iterations > 0 or valid_flag = '1') and (read_bias = '0' and start_mac = '0') and inmem_valid = '1' else
	--	   '0';
		
   valid_signal <= '1' when EA_add=E0 and (cont_steps > 2 or valid_flag = '1') and (read_bias = '0' and start_mac = '0') and inmem_valid = '1' else
	           '0';
    
    --valid_signal <= '1' when EA_add=E0 and (cont_iterations > 0  or cont_steps > 2 or valid_flag = '1') and (read_bias = '0' and start_mac = '0') and inmem_valid = '1' else
	--	    '0';
     
   process(reset,clock)
   begin
      if reset='1' then

	channel_control  <= 0;

	partial_pixel_reg	   <= (others=>'0');
	accumulate_value 	   <= (others=>'0');
	
	acc  	           <= (others =>'0');
	shift_cycle        <= 0;	
	
	valid_out_reg <= '0';
	adder_out_reg <= (others =>'0');
	
	ofmap_address_adder <= (others =>'0');
	ofmap_address_reg <= (others =>'0');
	
      elsif clock'event and clock = '1' then
			
	partial_pixel_reg <= reg_soma1;
	
	accumulate_value <= acc;
			
	if shift_cycle = 1 then
	  valid_out_reg <= '1';
	  shift_cycle <= 0;
	else
	  valid_out_reg <= '0';
	end if;
		    
	if valid_signal = '1' and channel_control < N_CHANNEL then	    
	--if valid_signal = '1' and channel_control < N_CHANNEL+1 then	    
	    acc <= adder_out;
	    channel_control <= channel_control + 1;
	end if;
		     
	if channel_control = N_CHANNEL then
	--if channel_control = N_CHANNEL+1 then
	    
		adder_out_reg <= acc + reg_reg_bias_value;
		
		acc <= (others =>'0');
		channel_control <= 0;
		
		shift_cycle <= 1;
		
		ofmap_address_adder <= ofmap_address_adder + 1;
		ofmap_address_reg   <= ofmap_address_adder;
		
	 end if;
	 
	 --if channel_control = 0 then
	 --   acc <= (others =>'0');
	 --end if;

      end if;
   end process; 
   
   -- Adder logic	  
   adder_out <= partial_pixel_reg + accumulate_value;
      
   -- Shift
   shift_output(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto (INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)) <= (others=>'0');

   -- ReLU 
   shift_output((INPUT_SIZE*2)-(SHIFT-CARRY_SIZE)-1 downto 0) <= adder_out_reg(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto SHIFT) when adder_out_reg > 0 else (others=>'0');

           
  ------------------------------------------------------------------------------------
  -- Circuit outputs
  ------------------------------------------------------------------------------------
  -- Input memory read address
  inmem_address <= bias_x when read_bias='1' else
                   add(0) + N_FILTER when EA_add=E0 else
		   add(1) + N_FILTER when EA_add=E1 else
		   add(2) + N_FILTER when EA_add=E2 else
		   add(3) + N_FILTER when EA_add=E3 else
		   add(4) + N_FILTER when EA_add=E4 else
		   add(5) + N_FILTER when EA_add=E5 else
		   add(6) + N_FILTER when EA_add=E6 else
		   add(7) + N_FILTER when EA_add=E7 else
		   add(8) + N_FILTER when EA_add=E8 else
		   add(9) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E9 else
		   add(10) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E10 else
		   add(11) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E11 else
		   add(12) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E12 else
		   add(13) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E13 else
		   add(14) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E14 else
		   add(15) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E15 else
		   add(16) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E16 else
		   add(17) + ((FILTER_WIDTH*FILTER_WIDTH*N_CHANNEL*N_FILTER) + N_FILTER) when EA_add=E17 else
		   (others=>'0');

      
  -- Input memory chip enable control
  inmem_ce <= '1' when (read_bias = '1') or (EA_add /= RIDLE and EA_add /= UPDATEADD and cont_valid < CONVS_PER_LINE*CONVS_PER_LINE*N_CHANNEL) else '0'; 
  
  -- Ofmap memory enables
  ofmap_we <= valid_out_reg;
  
  ofmap_ce <= valid_out_reg;
  
  -- Address to write output feature in memory 
  ofmap_address <= ofmap_address_reg;
  
  -- Output
  pixel_out <= shift_output;

  -- Debug
  debug <= valid_out_reg;
  
  -- End of convolution
  end_conv <= end_conv_reg;
  
end a1;

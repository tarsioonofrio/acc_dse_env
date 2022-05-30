-------------------------------------------------------------------------------------------------
-- SIMPLE BEHAVORIAL MAC  -  jan/2021 - MODIFIED IN MARCH 8 20201  - MORAES   -           20 bits           
-------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;   -- *** signed to avoid problems *** 

entity mac is
     generic (  INPUT_SIZE : integer := 8;
		CARRY_SIZE : integer := 4
             );
     port    (  op1, op2     : in  std_logic_vector(INPUT_SIZE-1 downto 0);
                sum          : in  std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
                res_mac      : out std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0)
              );
end entity mac;

architecture a1 of mac is
    signal produto: std_logic_vector((INPUT_SIZE*2)-1 downto 0);
    signal produto_ext: std_logic_vector(((INPUT_SIZE*2)+CARRY_SIZE)-1 downto 0);
begin
    produto <= op1*op2;  --  INPUT_SIZE*2 bits
    
    PRODEXT4: if CARRY_SIZE = 4 generate
      produto_ext <= produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto;  -- signal extension
    end generate PRODEXT4;    
    
    PRODEXT8: if CARRY_SIZE = 8 generate
      produto_ext <= produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto((INPUT_SIZE*2)-1) & produto;  -- signal extension
    end generate PRODEXT8;
      
    res_mac <= sum + produto_ext;
end a1;

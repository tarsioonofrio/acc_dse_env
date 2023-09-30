LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
	PACKAGE inmem_package is
		type padroes is array(0 to 4000000) of integer;

		constant input_mem: padroes := ( 

					others=>0 );
END inmem_package;

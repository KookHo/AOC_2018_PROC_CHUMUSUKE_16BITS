LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY  Multiplexador2x1_16bits IS
	PORT( 
			  A,B: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				 S: IN STD_LOGIC;
			SAIDA: OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	
	) ;
	
END Multiplexador2x1_16bits;

ARCHITECTURE behavior OF Multiplexador2x1_16bits IS
BEGIN 
	PROCESS (A,B,S)
		BEGIN
			CASE S IS
				WHEN '0' => SAIDA <= A;
				WHEN '1' => SAIDA <= B;
			END CASE;
			
	END PROCESS;
		
END behavior;
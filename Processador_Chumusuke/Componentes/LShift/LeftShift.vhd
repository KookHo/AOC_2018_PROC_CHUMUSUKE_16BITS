LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
USE ieee.std_logic_unsigned.all;

ENTITY LeftShift IS PORT
	(
		Entrada: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Saida: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END LeftShift;

ARCHITECTURE BEHAVIOR OF LeftShift IS
BEGIN
	Saida <= Entrada(13 downto 0) & "00";
END BEHAVIOR;
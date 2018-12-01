LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;  
USE ieee.std_logic_unsigned.all;

ENTITY ExtensordeSinal4To16bits IS
	PORT(
		ENTRADA : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		SAIDA   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	
END ExtensordeSinal4To16bits;

ARCHITECTURE BEHAVIOR OF ExtensordeSinal4To16bits IS

BEGIN
 process(ENTRADA)
  begin
	if(ENTRADA(3) = '1') then
		SAIDA <= ("111111111111") & ENTRADA;		
	elsif (ENTRADA(3) = '0') then
		SAIDA <= ("000000000000") & ENTRADA;		
	end if;
 end process;
END BEHAVIOR;
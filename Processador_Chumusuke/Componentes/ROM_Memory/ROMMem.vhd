LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity ROMMem is port
	(
	   PC_In: in std_logic_vector(15 downto 0);
	 ROM_Out: out std_logic_vector(15 downto 0)
	);
end ROMMem;

architecture behavior of ROMMem is

type Rom_Mem is array(0 to 10000) of std_logic_vector(15 downto 0);
signal ROM: Rom_Mem := ( 0 => "0100000000000000", -- load no reg0 o valor 0
								 1 => "0010000000010001", -- multiplicação para zerar os regsitradores
								 2 => "0010000100100010", -- idem
								 3 => "0010001000110011", -- idem
								 
								 4 => "0110000000000100", -- soma +4 ao reg0
								 5 => "0110000100010011", -- coloca o valor de reg0 no reg1
								 
								 6 => "0010000000010000", -- reg0 = reg0*reg1
								 7 => "0111000100010001", -- reg1 = reg1 - 1
								 8 => "1011000100101101", -- bne reg1 com reg2( = 0) volta para reg0 = reg0*reg1
								 
								 others => "0000000000000000");

begin

	ROM_Out <= ROM(conv_integer(unsigned(PC_In)));

end behavior;
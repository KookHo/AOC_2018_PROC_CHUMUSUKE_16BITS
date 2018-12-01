LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY JumpShift IS
PORT
(
	PC : in std_logic_vector (15 downto 0);
	JumpAddress : in std_logic_vector(11 downto 0);
	Saida : out std_logic_vector(15 downto 0));
END JumpShift;

ARCHITECTURE behavior of JumpShift is
BEGIN
		Saida <= PC(15 downto 14) & "00" & JumpAddress;
end behavior;
Library ieee;
use ieee.std_logic_1164.all;

ENTITY ANDGate is 
PORT(
	A, B : IN STD_LOGIC;
	S : OUT STD_LOGIC
);
END ANDGate;

ARCHITECTURE behavior of ANDGate is
BEGIN
	S <= A and B;
	
END behavior;
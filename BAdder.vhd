library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

Entity BAdder is port
	(
	 A: in std_logic_vector (15 downto 0);
	 B: in std_logic_vector (15 downto 0);
	 Result: out std_logic_vector (15 downto 0)
	);
end BAdder;

ARCHITECTURE behavior of BAdder is

begin
	Result <= A + B;
end behavior;
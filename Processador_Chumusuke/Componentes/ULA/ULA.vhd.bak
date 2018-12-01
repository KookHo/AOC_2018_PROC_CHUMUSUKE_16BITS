library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

Entity ULA is port
	(
	 A: in std_logic_vector (15 downto 0);
	 B: in std_logic_vector (15 downto 0);
	 OPULA: in std_logic_vector (3 downto 0);
	 ULAOut: out std_logic_vector (15 downto 0)
	);
end ULA;

ARCHITECTURE behavior of ULA is

begin
	process(OPULA, A, B)
		begin
			case OPULA is
				when "0000" => ULAOut <= A + B;
				when "0001" => ULAOut <= A - B;
				when others => ULAOut <= "0000000000000000";
			end case;
	end process;
	
end behavior;

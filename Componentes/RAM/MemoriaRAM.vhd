library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


Entity MemoriaRAM is port
	(Endereco: in std_logic_vector (15 downto 0);
	 EscData: in std_logic_vector (15 downto 0);	 
	 SaiData: out std_logic_vector (15 downto 0);
	 Clock, EscMem: in std_logic
	);
End MemoriaRAM;

Architecture behavior of MemoriaRAM is

type RAMMem is array (0 to 1000) of std_logic_vector (15 downto 0);

signal RAM : RAMMem := (others => "0000000000000000");

begin
	process(Clock)
		begin
			if(rising_edge(Clock)) then
				if(EscMem = '1') then
					RAM(to_integer(unsigned(Endereco))) <= EscData;
				end if;
			end if;
	end process;
	
	SaiData <= RAM(to_integer(unsigned(Endereco)));
end behavior;

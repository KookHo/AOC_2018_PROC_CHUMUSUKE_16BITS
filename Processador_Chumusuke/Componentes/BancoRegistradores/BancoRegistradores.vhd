library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity BancoRegistradores is port
	(
	 Clock : in std_logic;
	 EscReg: in std_logic; -- Sinal da unidade de controle
		RegA: out std_logic_vector (15 downto 0);
		RegB: out std_logic_vector (15 downto 0); 
	   Data: in std_logic_vector (15 downto 0); -- Dado a ser escrito
	 RegDst: in std_logic_vector (3 downto 0);  -- Registrador de destino
	 LeReg1: in std_logic_vector (3 downto 0);  -- Endereço do resgistrador 1
	 LeReg2: in std_logic_vector (3 downto 0);   -- Endereço do resgistrador 2
	 Prod_D: in std_logic_vector (15 downto 0); 
	 Prod_F: in std_logic
	);
end BancoRegistradores;

Architecture behavior of BancoRegistradores is
	
	type RegBank is array(0 to 15) of std_logic_vector (15 downto 0);
	signal Reg : RegBank := (
									x"0000", -- R0
									x"0001", -- R1
									x"0010", -- R2
									x"0011", -- R3
									x"0100", -- R4
									x"0101", -- R5
									x"0110", -- R6
									x"0111", -- R7
									x"1000", -- R8
									x"1001", -- R9
									x"1010", -- R10
									x"1011", -- R11
									x"1100", -- HIGH
									x"1101", -- LOW
									x"1110", -- R14
									x"1111"  -- R15
								);
	
begin
	
		
	process (Clock, LeReg1, LeReg2, Reg)
		begin 
	     if rising_edge(Clock) then
			if EscReg = '1' then
				Reg(to_integer(unsigned(RegDst))) <= Data;
			end if;
			
			if(Prod_F = '1') then
				Reg(12) <= Prod_D;
			end if;
		  end if;
		RegA <= Reg(to_integer(unsigned(LeReg1)));
		RegB <= Reg(to_integer(unsigned(LeReg2)));
	end process;
	
end behavior;
					
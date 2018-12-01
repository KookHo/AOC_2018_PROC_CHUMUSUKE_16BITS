library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ControlUnit is 
	port (
			OPCode: in std_logic_vector (3 downto 0);
			OPULA: out std_logic_vector (2 downto 0);
			RegDestino, Jump, Branch, LeMem, EscMem, MemParaReg, EscReg: out std_logic;
			ULAFonte : out std_logic
		  );
end ControlUnit;

ARCHiTECTURE CPU of ControlUnit is
	
	begin
	process(OPCode)
	begin
		if(OPCode = "0000") then -- Instrução Add
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "000";
		
		elsif (OPCode = "0001") then -- Instrução Sub
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "001";
				 
		elsif (OPCode = "0010") then -- Instrução Multiplicação
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "010";
				 
		elsif (OPCode = "0100") then -- Instrução Load
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '1';
			MemParaReg <= '1';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "000";
				 
		elsif (OPCode = "0011") then -- Instrução BEQ
			RegDestino <= '0';
		       Branch <= '1';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "101";
				  
		elsif (OPCode = "0101") then -- Instrução Store
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '1';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "000";		
				  
		elsif (OPCode = "0110") then -- Instrução AddIme
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '1';
				 EscReg <= '1';
				  OPULA <= "000";	
				  
		elsif (OPCode = "0111") then -- Instrução SubIme
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '1';
				 EscReg <= '1';
				  OPULA <= "001";	
				  
		elsif (OPCode = "1000") then -- Instrução And
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "011";	
				  
		elsif (OPCode = "1001") then -- Instrução OR
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "100";	
		
		else
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "111";
				 
		end if;
	end process;
		
end CPU;
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
	
	VARIABLE code : std_logic_vector(3 downto 0);
	
	begin
	  code := OPCode;
		case code is
		when "0000" => -- Instrução Add
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "000";
		
		when "0001" => -- Instrução Sub
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "001";
				 
		when "0010" => -- Instrução Multiplicação
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "010";
				 
		when "0100" => -- Instrução Load
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '1';
				 EscMem <= '0';
			MemParaReg <= '1';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "000";
				 
		when "0011" => -- Instrução BEQ
			RegDestino <= '0';
		       Branch <= '1';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "101";
				  
		when "0101" => -- Instrução Store
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '1';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "000";		
				  
		when "0110" => -- Instrução AddIme
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '1';
				 EscReg <= '1';
				  OPULA <= "000";	
				  
		when "0111" => -- Instrução SubIme
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '1';
				 EscReg <= '1';
				  OPULA <= "001";	
				  
		when "1000" => -- Instrução And
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "011";	
				  
		when "1001" => -- Instrução OR
			RegDestino <= '1';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '1';
				  OPULA <= "100";	
				  
		when "1011" => -- Instrução BNE
			RegDestino <= '0';
		       Branch <= '1';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "110";
		
		when others =>
			RegDestino <= '0';
		       Branch <= '0';
					Jump <= '0';
				  LeMem <= '0';
				 EscMem <= '0';
			MemParaReg <= '0';
			  ULAFonte <= '0';
				 EscReg <= '0';
				  OPULA <= "111";
				 
		end case;
	end process;
		
end CPU;
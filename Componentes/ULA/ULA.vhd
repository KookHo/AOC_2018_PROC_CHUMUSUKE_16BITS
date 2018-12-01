library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;

Entity ULA is port
	(
	 A: in std_logic_vector (15 downto 0);
	 B: in std_logic_vector (15 downto 0);
	 Prod_HIGH: out std_logic_vector (15 downto 0);
	 OPULA: in std_logic_vector (2 downto 0);
	 ULAZero : out std_logic;
	 ULAOut: out std_logic_vector (15 downto 0)
	);
end ULA;

ARCHITECTURE behavior of ULA is

	
signal high_out : std_logic_vector(15 downto 0);

function mult(A, B: std_logic_vector(15 downto 0)) return std_logic_vector is

	variable prod : std_logic_vector(32 downto 0);
   variable auxB, auxProd : std_logic_vector(15 downto 0);
   variable i : integer;
	variable resultado : std_logic_vector(31 downto 0);

	begin
	prod := "000000000000000000000000000000000";
	auxB := B;
	prod(16 downto 1) := A;
         
	for i in 0 to 15 loop
		if(prod(1) = '1' and prod(0) = '0') then
			  auxProd := (prod(32 downto 17));
			  prod(32 downto 17) := (auxProd - auxB);
							 
		elsif(prod(1) = '0' and prod(0) = '1') then
			  auxProd := (prod(32 downto 17));
			  prod(32 downto 17) := (auxProd + auxB);
							 
		end if;
			  prod(31 downto 0) := prod(32 downto 1);
                      
	end loop;
        
	resultado(31 downto 0) := prod(32 downto 1);
				
	high_out <= resultado(31 downto 16);
	return resultado(15 downto 0);
        
	end mult;
		  
begin
	process(OPULA, A, B)
	
		begin
			if(OPULA = "000") then -- Soma
				ULAOut <= A + B;
				ULAZero <= '0';
			
			elsif (OPULA = "001") then -- Subtração
				ULAOut <= A - B;
				ULAZero <= '0';
			
			elsif (OPULA = "010") then -- Multiplicação
				ULAOut <= mult(A, B);
				Prod_HIGH <= high_out;
				ULAZero <= '0';
			
			elsif (OPUla = "011") then -- AND
				ULAOut <= (A and B);
				ULAZero <= '0';
			
			elsif (OPULA = "100") then -- OR
				ULAOut <= (A or B);
				ULAZero <= '0';
				
			elsif (OPULA = "101") then -- Branch
				if A = B THEN 
					ULAZero <= '1';
				else 
					ULAZero <= '0';
				end if;
				
			else
				ULAOut <= A;
				ULAZero <= '0';
			end if;			
			
	end process;
end behavior;

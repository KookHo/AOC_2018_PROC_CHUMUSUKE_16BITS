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
	 ULAProd : out std_logic;
	 ULAOut: out std_logic_vector (15 downto 0);
	 ULA_Overflow : out std_logic
	);
end ULA;

ARCHITECTURE behavior of ULA is

signal high_out : std_logic_vector(15 downto 0) := "0000000000000000";
signal resultado : std_logic_vector(15 downto 0) := "0000000000000000";
signal prod_h : std_logic_vector(15 downto 0) := "0000000000000000";
signal zero : std_logic := '0';
signal operation : std_logic_vector(2 downto 0) := "000";
signal prod_flag : std_logic;

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
  
	process(OPULA, A, B, operation, high_out)
	
	 	
	--variable resultado : std_logic_vector(15 downto 0);
	--variable prod_h : std_logic_vector(15 downto 0);
	--variable zero : std_logic;
	--variable operation : std_logic_vector(2 downto 0);
	
		begin
		operation <= OPULA;
			case operation is
			when "000" => -- Soma
				resultado <= A + B;
				if(A(15) = '1') and (B(15) = '1') then
					ULA_Overflow <= '1';
				end if;
				zero <= '0';
				prod_flag <= '0';
			
			when "001" => -- Subtração
				resultado <= A - B;
				zero <= '0';
				prod_flag <= '0';
			
			when "010" => -- Multiplicação
				resultado <= mult(A, B);
				prod_h <= high_out;
				zero <= '0';
				prod_flag <= '1';
			
			when "011" => -- AND
				resultado <= (A and B);
				zero <= '0';
				prod_flag <= '0';
			
			when "100" => -- OR
				resultado <= (A or B);
				zero <= '0';
				prod_flag <= '0';
				
			when "101" => -- BEQ
				if A = B THEN 
					zero <= '1';
				else 
					zero <= '0';
				end if;
				prod_flag <= '0';
				
			when "110" => -- BNE
				if A = B THEN 
					zero <= '0';
				else 
					zero <= '1';
				end if;
				prod_flag <= '0';
				
			when "111" =>
				resultado <= A;
				zero <= '0';
				prod_flag <= '0';
				
			end case;			
			
	end process;
	
	ULAOut <= resultado;
	ULAzero <= zero;
	ULAProd <= prod_flag;
	Prod_HIGH <= prod_h;
	
end behavior;

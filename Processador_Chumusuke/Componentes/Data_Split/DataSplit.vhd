LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DataSplit is port
	(	    --clock : in std_logic;
	 DataSplit_In: in std_logic_vector(15 downto 0);
	      OP_Code: out std_logic_vector(3 downto 0);
				  rs: out std_logic_vector(3 downto 0);
				  rt: out std_logic_vector(3 downto 0);
				  rd: out std_logic_vector(3 downto 0);
				Jump: out std_logic_vector(11 downto 0)
	);
end DataSplit;

architecture behavior of DataSplit is

begin

			OP_Code <= DataSplit_In(15 downto 12);
				  rs <= DataSplit_In(11 downto 8);
				  rt <= DataSplit_In(7  downto 4);
				  rd <= DataSplit_In(3  downto 0);
				Jump <= DataSplit_In(11 downto 0);

end behavior;
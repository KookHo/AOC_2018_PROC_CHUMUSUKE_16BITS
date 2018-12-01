LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity ROMMem is port
	(
	   PC_In: in std_logic_vector(15 downto 0);
	 ROM_Out: out std_logic_vector(15 downto 0)
	);
end ROMMem;

architecture behavior of ROMMem is

type Rom_Mem is array(0 to 65535) of std_logic_vector(15 downto 0);
signal ROM: Rom_Mem := ( 0 => "0010001100110000",
								 1 => "0110000000010001",
								 2 => "0011000000001101",
								 others => "0000000000000000");

begin

	ROM_Out <= ROM(conv_integer(unsigned(PC_In)));

end behavior;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity MY_ADD4 is
	port(
		A: IN std_logic_vector(3 downto 0);
		B: IN std_logic_vector(3 downto 0);
		CI: IN std_logic;
		Y: OUT std_logic_vector(3 downto 0);
		CO: OUT std_logic
	);
End MY_ADD4;

Architecture behave of MY_ADD4 is 
signal SUM: std_logic_vector(4 downto 0);
begin
	process(A, B, CI, SUM)
	begin
		SUM <= ('0' & A) + ('0' & B) + CI;
		Y <= SUM(3 downto 0);
		CO <= SUM(4);
	end process;
End Architecture behave;
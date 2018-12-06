LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity MY_DE_BARKER is
	port(
		CLK: IN std_logic;
		BA: IN std_logic;
		Y: OUT std_logic
	);
End MY_DE_BARKER;

Architecture behave of MY_DE_BARKER is 
	signal COUNT: std_logic_vector(6 downto 0);
begin
	process(CLK, BA)
	begin
		if(CLK'event and CLK='1') then
			COUNT(0) <= BA;
			COUNT(1) <= COUNT(0);
			COUNT(2) <= COUNT(1);
			COUNT(3) <= COUNT(2);
			COUNT(4) <= COUNT(3);
			COUNT(5) <= COUNT(4);
			COUNT(6) <= COUNT(5);
		end if;
	end process;
	
	Y <= '1' when COUNT="1110010" else '0';
End Architecture behave;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

Entity MY_COMP4 is
	port(
		A: IN std_logic_vector(3 downto 0);
		B: IN std_logic_vector(3 downto 0);
		G,M,L: OUT std_logic
	);
End MY_COMP4;

Architecture behave of MY_COMP4 is 
begin 
	p1: process (A,B)
	begin
		if(A > b) then
			G <= '1';
			M <= '0';
			L <= '0';
		elsif(A < b) then
			G <= '0';
			M <= '0';
			L <= '1';
		elsif(A = b) then
			G <= '0';
			M <= '1';
			L <= '0';
		else
			G <= '1';
			M <= '1';
			L <= '1';
		end if;
	end process p1;
End behave; 
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity MY_VOTE is
	port(
		A, B, C, D, E, F, G: IN std_logic;
		Y:OUT std_logic
	);
End MY_VOTE;

Architecture behave of MY_VOTE is 
begin
	process(A, B, C, D, E, F, G)
	variable SUM :integer range 0 to 7;
		begin
		SUM := 0;
		if A = '1'
			then SUM := SUM + 1;
		end if;
		if B = '1'
			then SUM := SUM + 1;
		end if;
		if C = '1'
			then SUM := SUM + 1;
		end if;
		if D = '1'
			then SUM := SUM + 1;
		end if;
		if E = '1'
			then SUM := SUM + 1;
		end if;
		if F = '1'
			then SUM := SUM + 1;
		end if;
		if G = '1'
			then SUM := SUM + 1;
		end if;
		if SUM > 3
			then Y <= '1';
			else Y <= '0';
		end if;
	end process;
End Architecture behave;
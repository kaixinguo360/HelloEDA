LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity count_108 is
	port(
		EN, RES, CLK: IN std_logic;
		COUNTER: BUFFER std_logic_vector(3 downto 0);
		CO: OUT std_logic
	);
End count_108;

Architecture behave of count_108 is 
begin
	process(EN, RES, CLK)
	begin
		if(CLK'EVENT AND CLK = '1') then
			if(RES = '1') then
				COUNTER <= "0000";
			elsif(EN = '1') then
				if(COUNTER < "1001") then
					COUNTER <= COUNTER + '1';
				else
					COUNTER <= "0000";
				end if;
			end if;
		end if;
	end process;
	
	CO <= '1' when COUNTER = "1001" else '0';
End Architecture behave;
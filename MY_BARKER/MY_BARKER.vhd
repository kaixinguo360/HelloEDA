LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity MY_BARKER is
	port(
		CLK: IN std_logic;
		BA: OUT std_logic;
		OCLK: OUT std_logic
	);
End MY_BARKER;

Architecture behave of MY_BARKER is 
signal COUNT: Integer range 0 to 6;
begin
	process(CLK)
	begin
		if(CLK'event and CLK='1') then
			if(COUNT < 6) then
				COUNT <= COUNT + 1;
			else
				COUNT <= 0;
			end if;
		end if;
		OCLK <= CLK;
	end process;
	
	process(COUNT)
	begin
		case COUNT is
			when 0 => BA<='1';
			when 1 => BA<='1';
			when 2 => BA<='1';
			when 3 => BA<='0';
			when 4 => BA<='0';
			when 5 => BA<='1';
			when 6 => BA<='0';
		end case;
	end process;
End Architecture behave;
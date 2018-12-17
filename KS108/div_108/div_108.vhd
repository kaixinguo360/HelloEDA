LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity div_108 is
	port(
		CLK: IN BIT;
		Y: OUT std_logic
	);
End div_108;

Architecture behave of div_108 is 
	signal DATA: Integer range 0 to 10000000;
	signal Q: std_logic;
begin
	process(CLK, Q)
	variable TMP: Integer;
	begin
		if(CLK'event and CLK='1') then
			if(DATA = 10000000) then
				DATA <= 0;
				Q <= not Q;
			else
				DATA <= DATA + 1;
			end if;
		end if;
		Y <= Q;
	end process;
End Architecture behave;
      
         
            
   
    
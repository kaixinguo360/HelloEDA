LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity VHDL_NOR is 
	Port(
		A: IN STD_Logic;
		B: IN STD_Logic;
		F: OUT STD_Logic
	);
End VHDL_NOR;

Architecture behaver of VHDL_NOR is
begin
	p1:process(A, B)
	begin
		if(A='0' and B='0')
			then F <= '1';
			else F <= '0';
		end if;
	end process p1;
End Architecture behaver;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

Entity MY_LED7 is
	port(
		A, B, C, D: IN std_logic;
		Y: OUT std_logic_vector(0 to 6)
	);
End MY_LED7;

Architecture behave of MY_LED7 is 
begin
	process(A, B, C, D)
	variable TMP: std_logic_vector(3 downto 0);
	begin
		TMP:=A & B & C & D;
		case TMP is
			when "0000" => Y <= "0000001";
			when "0001" => Y <= "1001111";
			when "0010" => Y <= "0010010";
			when "0011" => Y <= "0000110";
			when "0100" => Y <= "1001100";
			when "0101" => Y <= "0100100";
			when "0110" => Y <= "0100000";
			when "0111" => Y <= "0001111";
			when "1000" => Y <= "0000000";
			when "1001" => Y <= "0000100";
			when others => Y <= "1111111";
		end case;
	end process;
End Architecture behave;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity bin2bcd is
port (
	clk	:	in	std_logic;
	bin	:	in	integer range 0 to 255;
	bcd: out std_logic_vector (7 downto 0)
	
	);
end bin2bcd;

architecture conversor of bin2bcd is
	signal contador:	integer range 0 to 500000000 := 0;
	signal bcdout :	std_logic_vector(7 downto 0);
	signal tempBCD:	std_logic_vector(15	downto 0) := "0000000000000000";
	signal numciclo:	integer range 0 to 1000000000:= 1;
begin
	
	bcd <= bcdout;

	process(clk)
	begin
		if rising_edge(clk) then
			if	numciclo = 1 then
				tempBCD(8 downto 1) <= std_logic_vector(to_unsigned(bin,8));
				numciclo <= numciclo + 1;
			elsif numciclo > 1 and numciclo < 9 then
				if to_integer(unsigned(tempBCD(11 downto 8))) >= 5 then
						tempBCD <= std_logic_vector(shift_left(unsigned(tempBCD +  "0000001100000000"),1));
					else 
						tempBCD <= std_logic_vector(shift_left(unsigned(tempBCD),1));
				end if;
					numciclo <= numciclo + 1;
			else 
				bcdout <= tempBCD(15 downto 8);
				if numciclo <= 1000000 then
					numciclo <= numciclo +1;
				else 
					numciclo <= 1;
					tempBCD <= "0000000000000000";
				end if;
				
			end if;
		end if;
	end process;
	



end conversor;
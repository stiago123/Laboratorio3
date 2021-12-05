library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity dec_BCD is
port (
	clk	:	in	std_logic;
	numero	:	in	integer range 0 to 255;
	numeroBCD: out std_logic_vector (7 downto 0)
	
	);
end dec_BCD;

architecture conversor of dec_BCD is
	signal contador:	integer range 0 to 500000000 := 0;
--	signal contador2:	integer range 0 to 100000000 := 0;
	signal salidaBCD :	std_logic_vector(7 downto 0);
	signal procesoBCD:	std_logic_vector(15	downto 0) := "0000000000000000";
	signal iteracion:	integer range 0 to 1000000000:= 1;
begin
	
	numeroBCD <= salidaBCD;

	process(clk)
	begin
		if rising_edge(clk) then
			if	iteracion = 1 then
				procesoBCD(8 downto 1) <= std_logic_vector(to_unsigned(numero,8));
				iteracion <= iteracion + 1;
			elsif iteracion > 1 and iteracion < 9 then
				if to_integer(unsigned(ProcesoBCD(11 downto 8))) >= 5 then
						procesoBCD <= std_logic_vector(shift_left(unsigned(procesoBCD +  "0000001100000000"),1));
					else 
						procesoBCD <= std_logic_vector(shift_left(unsigned(procesoBCD),1));
				end if;
					iteracion <= iteracion + 1;
			else 
				salidaBCD <= procesoBCD(15 downto 8);
				if iteracion <= 1000000 then
					iteracion <= iteracion +1;
				else 
					iteracion <= 1;
					procesoBCD <= "0000000000000000";
				end if;
				
			end if;
		end if;
	end process;
	
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--			if contador2 = 5000000 then
--				numero <= numero + 1;
--				contador2 <= 0;
--			else
--				contador2 <= contador2 + 1;
--			end if;
--		end if;
--	end process;


end conversor;
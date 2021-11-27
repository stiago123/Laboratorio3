library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ffD_en is 
port(
	CLK: in 	std_logic;
	en	: in 	std_logic;
	D  : in 	std_logic;
	
	Q  : out std_logic
	);
end ffD_en;
architecture comportamiento of ffD_en is
begin
	process(CLK)
	begin
		if rising_edge(CLK) then
			if en = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end comportamiento;
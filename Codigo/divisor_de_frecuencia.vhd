library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity divisor_de_frecuencia is
	port
	(
	clk: 		in 	std_logic;
	fout: 	in 	integer;
	
	clkout: 	out 	std_logic
	);
	
end divisor_de_frecuencia;

architecture comportamiento of divisor_de_frecuencia is

	signal fclk: 	integer := 50000000;
	signal cuenta: integer :=0;
	signal n:		integer :=0;
	signal tout: 	integer :=0;

begin
	n <= fclk/fout;
	process(clk)
	begin
		if rising_edge(clk) then
			if cuenta = n then
				cuenta <= 0;
			else
				cuenta<=cuenta+1;
			end if;
			
		end if;
	end process;
	
	tout <= 1/fout;
	process(clk)
	begin	
		if rising_edge(clk) then
			if cuenta < (tout/2) then
				clkout <= '1';
			else
				clkout<='0';
			end if;
		end if;
	end process;
end comportamiento;

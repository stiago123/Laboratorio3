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

begin
	n <= fclk/fout;

	process(clk)
	begin
	
	end process;
end comportamiento;

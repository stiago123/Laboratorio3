library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contadormod is
	port
	(
	clk: in std_logic;
	
	clkout: out std_logic);
end contadormod;

architecture comportamiento of contadormod is

	component control
	port
	(
		-- Input ports
		start	: in  std_logic;
		stop	: in  std_logic;
		clk : in std_logic;

		-- Output ports
		q	: out std_logic
		
	);
	end component;
	
	component contador
	port (
		reset: in std_logic;
		clk: in std_logic;
		
		num: out std_logic_vector(5 downto 0)
	);
	end component;
	
	component divisor_de_frecuencia
	port
	(
	clk: 		in 	std_logic;
	fout: 	in 	integer;
	
	clkout: 	out 	std_logic
	);
	
end component;


begin
	
end comportamiento;
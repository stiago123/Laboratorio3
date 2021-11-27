library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity antirrebote is
	port
	(
		-- Input ports
		botonstart	: in  std_logic;
		botonstop	: in  std_logic;
		clk : in std_logic;

		-- Output ports
		senalstart	: out std_logic
		senalstop	: out std_logic
		
	);
end antirrebote;
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

signal cuenta: integer range 0 to 100 := 0;

begin
	process(clk)
	variable limite: integer :=59;

	begin
		if rising_edge(clk) then
				if cuenta = limite then
					cuenta <=0;
				else
					cuenta<=cuenta+1;
				end if;
			end if;
		end process;
end comportamiento;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplexor is
port (
		bcdin: in std_logic_vector(7 downto 0);
		bitdes: in std_logic;
		clk: in std_logic;
		
		bcdout: out std_logic_vector(3 downto 0)
	);
end multiplexor;

architecture funcion of multiplexor is
begin
	process(clk)
	begin
	if rising_edge(clk) then
		if bitdes = '0' then
			bcdout <= bcdin(3 downto 0);
		else 
			bcdout <= bcdin(3 downto 0);
		end if;
	end if;
	end process;
end funcion;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplexor is
port (
		num: in std_logic_vector(0 to 7);
		clk: in std_logic;
		
		sal: out std_logic
	);
end multiplexor;

architecture funcion of multiplexor is
begin
	if clk = '0' then 
		sal<= num(0,1,2,3);
	end if;
	if clk = '1' then
		sal <= num(4,5,6,7);
	end if;
end funcion;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity control is
	port
	(
		-- Input ports
		start	: in  std_logic;
		stop	: in  std_logic;
		clk : in std_logic;

		-- Output ports
		q	: out std_logic
		
	);
end control;



architecture comportamiento of control is

	signal slow_clock: std_logic := '0';
	signal slow_counter: integer := 0;

	signal temp1, temp2, temp3, temp4: std_logic;
	signal dutyUp, dutyDown: std_logic;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if start = '1' then
				q <= '1';
			end if;
			if stop = '1' then
				q<='0';
			end if;
		end if;
	end process;
end comportamiento;
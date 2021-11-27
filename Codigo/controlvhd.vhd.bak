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
		q	: out std_logic;
		
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
	variable fclk : integer :=50000000 --hz 
	variable fout : integer :=4		  --hz
	if rising_edge(clk) then
		slow_counter <= slow_counter+1;
		--if slowcounter >= (fclk/fout) then -- para la fpga
		if slow_counter >= 1 			then --para la simulación
			slow_counter <= 0;
		end if;
	end if;
end process;

--slow_clock <= '1' when slow_counter = (fckl/fout) else '0'; -- fpga
slow_clock <= '1' when slow_counter = 1	else '0'; -- simulación

etapa0: ffD_en port map(clk, slow_clock, not start, temp1);
etapa1: ffD_en port map(clk, slow_clock, temp1, temp2);
dutyUp <= temp1 and (not temp2) and slow_clock;

etapa2: ffD_en port map(clk, slow_clock, not start, temp3);
etapa3: ffD_en port map(clk, slow_clock, temp3, temp4);
dutyDown <= temp3 and (not temp4) and slow_clock;


end comportamiento;
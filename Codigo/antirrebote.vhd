library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity antirrebote is
	port
	(
		-- Input ports
		botonstart	:  in  std_logic;
		botonstop	:  in  std_logic;
		clk 			:	in std_logic;

		-- Output ports
		senalstart	: out std_logic;
		senalstop	: out std_logic
		
	);
end antirrebote;

architecture comportamiento of antirrebote is
	component ffD_en 
		Port ( 
			CLK : in std_logic;
			en : in std_logic;
			D : in std_logic;
			Q : out std_logic
		);
	end component;
	
	
	signal slow_clock: std_logic := '0';
	signal slow_counter: integer := 0;

	signal temp1, temp2, temp3, temp4: std_logic;
	--signal salidastart, salidastop: std_logic;
	
	
	begin
	
	process(clk)
	begin
	if rising_edge(clk) then
		slow_counter <= slow_counter+1;
		if slow_counter >= 12500000 then -- para la fpga
		--if slow_counter >= 1 			then --para la simulación
			slow_counter <= 0;
		end if;
	end if;
	end process;
	
		slow_clock <= '1' when slow_counter = 12500000 else '0'; -- fpga
		--slow_clock <= '1' when slow_counter = 1	else '0'; -- simulación
	
		etapa0: ffD_en port map(clk, slow_clock, not botonstart, temp1);
		etapa1: ffD_en port map(clk, slow_clock, temp1, temp2);
		senalstart <= (not temp1) and ( temp2) and (not slow_clock);

		etapa2: ffD_en port map(clk, slow_clock, not botonstop, temp3);
		etapa3: ffD_en port map(clk, slow_clock, temp3, temp4);
		senalstop <= (not temp3) and ( temp4) and (not slow_clock);
		
end comportamiento;
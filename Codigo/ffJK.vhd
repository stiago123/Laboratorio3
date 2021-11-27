library ieee;
use ieee.std.std_logic_1164.all;
use ieee.std.std_logic_arith.all;
use ieee.std.std_logic_unsigned.all;

entity ffJK is
	port 
	(
		J:in std_logic;
		K:in std_logic;
		clk:in std_logic;
		
		Q: out std_logic);
end ffJK
architecture memoria of ffJK is
	signal qin,qout: std_logic;
	signal JK		: std_logic_vector(1 downto 0);
begin
	JK<=J & K;
	process(clk)
	
	begin
	
		if rising_edge(clk) then
			qout<=qin;
		end if;
	end process;
	with JK select
		qin<=qout	when "00"
				'0'	when "01",
				'1'	when "10",
				not qout when others;
	Q<= qout;

	
end memoria;
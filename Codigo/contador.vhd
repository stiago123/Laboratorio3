library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity contador is
port (
		reset: in std_logic;
		clk: in std_logic;
		
		num: out std_logic_vector(5 downto 0)
	);
end contador;

architecture contadorisacion of contador is

component ffJK
	Port ( 
		J:in std_logic;
		K:in std_logic;
		clk:in std_logic;
		
		Q: out std_logic
		);
 end component;

 signal q0,q1,q2,q3,q4,q5: std_logic;
 
begin
ffjk0: ffJK port map('1' ,'1' , clk, q0);
ffjk1: ffJK port map(q0 ,q0 , clk, q1);
ffjk2: ffJK port map(q0 and q1 ,q0 and q1 , clk, q2);
ffjk3: ffJK port map(q0 and q1 and q2 ,q0 and q1 and q2 , clk, q3);
ffjk4: ffJK port map(q0 and q1 and q2 and q3 ,q0 and q1 and q2 and q3 , clk, q4);
ffjk5: ffJK port map(q0 and q1 and q2 and q3 and q4 ,q0 and q1 and q2 and q3 and q4 , clk, q5);
	
end contadorisacion;
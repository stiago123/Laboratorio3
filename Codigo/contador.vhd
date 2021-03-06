library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity contador is
port (
		rst: in std_logic;
		fin: in std_logic;
		en:  in std_logic;
		
		num: out integer range 0 to 255
		
	);
end contador;

architecture contadorisacion of contador is

component ffJK
	Port ( 
		
		J:in std_logic;
		K:in std_logic;
		clk:in std_logic;
		clear:in std_logic;
		en:	in std_logic;
		
		Q: out std_logic
		);
 end component;

 signal q0,q1,q2,q3,q4,q5,reset: std_logic;
 signal numprov: std_logic_vector(5 downto 0);
begin
reset <= not rst;

	ffjk0: ffJK port map('1'  ,'1' , fin, reset, en, q0);
	ffjk1: ffJK port map(q0 ,q0 , fin, reset, en, q1);
	ffjk2: ffJK port map((q0 and q1) xor (q0 and q1 and (not q2) and q3 and q4 and q5) ,(q0 and q1) or (q0 and q1 and (not q2) and q3 and q4 and q5) ,  fin, reset, en, q2);
	ffjk3: ffJK port map((q0 and q1 and q2) or (q0 and q1 and (not q2) and q3 and q4 and q5) ,(q0 and q1 and q2) or (q0 and q1 and (not q2) and q3 and q4 and q5) , fin, reset, en, q3);
	ffjk4: ffJK port map((q0 and q1 and q2 and q3) or (q0 and q1 and (not q2) and q3 and q4 and q5) ,(q0 and q1 and q2 and q3) or (q0 and q1 and (not q2) and q3 and q4 and q5) , fin, reset, en, q4);
	ffjk5: ffJK port map((q0 and q1 and q2 and q3 and q4) or (q0 and q1 and (not q2) and q3 and q4 and q5) ,(q0 and q1 and q2 and q3 and q4) or (q0 and q1 and (not q2) and q3 and q4 and q5) , fin, reset, en, q5);

	numprov <=   q5 & q4 & q3 & q2 & q1 & q0;
	num <= conv_integer(unsigned(numprov));
end contadorisacion;
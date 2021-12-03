library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Contador60 is
	port
	(
	inicio: in std_logic;
	alto: in std_logic;
	restart: in std_logic;
	clk: in std_logic;
	
	ti0: out std_logic;
	ti1: out std_logic;
	segs: out std_logic_vector(6 downto 0)
	);
	
end Contador60;

architecture comportamiento of Contador60 is

	component control
	port
	(
		-- Input ports
		start	: in  std_logic;
		stop	: in  std_logic;
		clk : in std_logic;

		-- Output ports
		q	: out std_logic
		
	);
	end component;
	
	component contador
	port (
		rst: in std_logic;
		fin: in std_logic;
		en:  in std_logic;
		
		num: out std_logic_vector(5 downto 0)
	);
	end component;
	
	component divisor_de_frecuencia
	port
	(
	clk: 		in 	std_logic;
	fout: 	in 	integer;
	
	clkout: 	out 	std_logic
	);
	
	end component;
	
	component bin2bcd
	port (
		clk: in std_logic;
		bin: in std_logic_vector(5 downto 0);
		bcd :out std_logic_vector(7 downto 0)
	);
	end component;
	
	component multiplexor
	port (
		bcdin: in std_logic_vector(7 downto 0);
		bitdes: in std_logic;
		clk: in std_logic;
		
		bcdout: out std_logic_vector(3 downto 0)
	);
	end component;
	

	component bcd27seg 
	port(
		bcd: in std_logic_vector(3 downto 0);
		seg7: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component antirrebote 
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
end component;
	
	signal startin, stopin, f1, f60,q : std_logic;
	signal bcdmult: std_logic_vector(3 downto 0);
	signal numin: std_logic_vector(5 downto 0);
	signal bcdin: std_logic_vector(7 downto 0);
	
begin
	--declaracion de variables para el programa
	
	
	--llamado de los modulos para construir el sistema
	bloqueAntir:	antirrebote 				port map(inicio, alto, clk, startin, stopin); 	--startin y stopin son senales internas del sistema
	bloqueCtrl: 	control 	 					port map(startin, stopin, clk, q);					--q variable interna
	bloquefreq1:	divisor_de_frecuencia 	port map(clk, 1, f1);									--f1 variable interna
	bloquefreq60:	divisor_de_frecuencia 	port map(clk, 60, f60);									--f60 variable interna
	bloqueCont:		contador						port map(restart, f1, q, numin);						--numin variable interna
	bloquebinBCD:	bin2bcd						port map(clk, numin, bcdin);			--unidades y decenas variables internas
	bloqueMult:		multiplexor					port map(bcdin, f60, clk, bcdmult);
	bloquebcdseg:	bcd27seg						port map(bcdmult,  segs);
	
	ti0 <=   f60;
	ti1 <=  not f60;
	
	
end comportamiento;
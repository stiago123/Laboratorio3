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
	
	ti: out std_logic;
	segs: out std_logic
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
		reset: in std_logic;
		clk: in std_logic;
		
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
		und :out std_logic_vector(3 downto 0);
		dec :out std_logic_vector(3 downto 0)
	);
	end component;
	
	component multiplexor 
	port (
		num: in std_logic_vector(0 to 7);
		clk: in std_logic;
		
		sal: out std_logic
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
	signal numin: std_logic_vector(5 downto 0);
	
begin
	--declaracion de variables para el programa
	
	
	--llamado de los modulos para construir el sistema
	bloqueAntir:	antirrebote 				port map(inicio, alto, clk, startin, stopin); 	--startin y stopin son senales internas del sistema
	bloqueCtrl: 	control 	 					port map(startin, stopin, clk, q);					--q variable interna
	bloquefreq1:	divisor_de_frecuencia 	port map(clk, 1, f1);									--f1 variable interna
	bloquefreq60:	divisor_de_frecuencia 	port map(clk, 60, f60);									--f60 variable interna
	bloqueCont:		contador						port map(restart, clk, numin);						--numin variable interna
	--bloquebinBCD:	bin2bcd						port map(clk, numin, unidades, decenas);			--unidades y decenas variables internas
	--bloqueMult:		multiplexor					port map();
	
end comportamiento;
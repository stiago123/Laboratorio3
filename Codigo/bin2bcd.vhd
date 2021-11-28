library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bin2bcd is
port (
		clk: in std_logic;
		bin: in std_logic_vector(5 downto 0);
		bcd :out std_logic_vector(7 downto 0)
	);
end bin2bcd;

architecture funcion of bin2bcd is

begin

process(bin)
variable vector: std_logic_vector(13 downto 0);

begin

	for i in 0 to 13 loop
	vector(i):= '0';
	end loop;
	
	
	vector(8 downto 3):= bin;
	
	for i in 0 to 4 loop

		if vector(9 downto 6)>4 then
		vector(9 downto 6):= vector(9 downto 6)+3;
		end if;
		
		if vector(13 downto 10)>4 then
		vector(13 downto 10):= vector(13 downto 10)+3;
		end if;
		
	end loop;
  
bcd <= vector(13 downto 6);


  
end process;
end funcion;
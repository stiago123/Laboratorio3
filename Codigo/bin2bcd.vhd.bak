library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bin2bcd is
port (
		clk: in std_logic;
		bin: in std_logic_vector(5 downto 0);
		und :out std_logic_vector(3 downto 0);
		dec :out std_logic_vector(3 downto 0);
	);
end bin2bcd;

architecture funcion of bin2bcd is

begin

proceso: process
variable binario: std_logic_vector(5 downto 0);
variable bcd    : std_logic_vector(7 downto 0);
begin

binario := bin;

	for i in 0 to 5 loop

	bcd := bcd(7 downto 0) & binario(5);
	binario := binario(5 downto 0) & '0';

	
  
  if (i < 12 and bcd(3 downto 0) > "0100") then
  bcd(3 downto 0) := bcd(3 downto 0) or "0011";
  end if

  
  if (i < 12 and bcd(7 downto 4) > "0100") then
  bcd(7 downto 4) := bcd(7 downto 4) or "0011";
  end if;
  end loop;
  
und <= bcd(3 downto 0);
dec <= bcd(7 downto 4);

  
end process;
end funcion;
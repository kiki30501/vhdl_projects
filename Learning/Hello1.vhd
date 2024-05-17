library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;

entity Hello1 is
	
	generic (dataw : integer := 4);
	
	port (
	a, b	: in  std_logic_vector(dataw-1 downto 0);
	sum	: buffer std_logic_vector(dataw downto 0);
	t1		: out std_logic_vector(dataw downto 0));
end entity Hello1;


architecture arc_hello1 of Hello1 is
	signal da, db : std_logic_vector(a'range);
	signal sum_sig: std_logic_vector(sum'range);
begin
	
	da 	<= a;
	db  	<= b;
	sum 	<= sum_sig;
	sum_sig	<= ('0' & da) + ('0' & db);
	
	t1 <= sum;
	
end architecture arc_hello1;



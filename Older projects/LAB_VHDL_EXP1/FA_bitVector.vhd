--Question 1.2

library IEEE;
use IEEE.std_logic_1164.all;

entity FA_bitVector is
port(
		a,b:	in		std_logic_vector(3 downto 0);
		s	:	out	std_logic_vector(4 downto 0)
	);
end FA_bitvector;


architecture arch_FA_bitVector of FA_bitVector is
signal c: std_logic_vector(4 downto 0);
signal temp: std_logic_vector(3 downto 0);
begin

	temp <= (a xor b);
	
	c(0) <= '0';
	c(1) <= a(0) and b(0);
	c(2) <= (c(1) and temp(1)) or (a(1) and b(1));
	c(3) <= (c(2) and temp(2)) or (a(2) and b(2));
	c(4) <= (c(3) and temp(3)) or (a(3) and b(3));
	
	
	s(0) <= temp(0) xor c(0);
	s(1) <= temp(1) xor c(1);	
	s(2) <= temp(2) xor c(2);
	s(3) <= temp(3) xor c(3);
	s(4) <= c(4);

end arch_FA_bitVector;
			
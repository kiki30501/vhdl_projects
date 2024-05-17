--Question 1.1: FA with integer operations

library IEEE;
use IEEE.std_logic_arith.all;

entity FA_arith_4bit is
	port(
			a,b	: in 	integer range 	15 	downto 0;
			sum	: out	integer range 	30 	downto 0);
end FA_arith_4bit;


architecture arch_FA_arith_4bit of FA_arith_4bit is
begin
			sum <= a + b;
end arch_FA_arith_4bit;
--Question 1.3 part A

library IEEE;
use IEEE.std_logic_1164.all;

entity FA_1bit is
port(
		a,b,cin	: in	std_logic;
		s,cout	: out	std_logic
		);
end FA_1bit;

architecture arch_FA_1bit of FA_1bit is
begin

		s 		<= a xor b xor cin;
		cout 	<= (cin and (a xor b)) or (a and b);

end arch_FA_1bit;

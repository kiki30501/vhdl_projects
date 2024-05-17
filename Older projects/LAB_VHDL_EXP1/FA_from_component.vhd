--Question 1.3 part B

library IEEE;
use IEEE.std_logic_1164.all;

entity FA_from_component is
port(
		
		a,b	: in	std_logic_vector(3 downto 0);
		cin	: in	std_logic;
		s		: out	std_logic_vector(4 downto 0)
		);
end FA_from_component;

architecture arch_FA_from_component of FA_from_component is

component FA_1bit is
port(
		a,b,cin	: in	std_logic;
		s,cout	: out	std_logic);
end component FA_1bit;

signal c: std_logic_vector(2 downto 0);

begin

u0: FA_1bit port map(a(0), b(0), cin,  s(0), c(0));
u1: FA_1bit port map(a(1), b(1), c(0), s(1), c(1));
u2: FA_1bit port map(a(2), b(2), c(1), s(2), c(2));
u3: FA_1bit port map(a(3), b(3), c(2), s(3), s(4));

end arch_FA_from_component;
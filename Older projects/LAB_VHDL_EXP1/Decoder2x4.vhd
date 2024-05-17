-- Question 2.1
library IEEE;
use IEEE.std_logic_1164.all;
entity Decoder2x4 is
port(
			a : in 	std_logic_vector(1 downto 0);
			s : out 	std_logic_vector(3 downto 0)
			);
end Decoder2x4;
			
architecture arch_Decoder2x4 of Decoder2x4 is 
	begin

				s(0) <= (not a(0))and (not a(1));
				s(1) <= (a(0))   	and (not a(1));
				s(2) <= (not a(0))and (a(1));
				s(3) <= (a(0))		and (a(1));
		
				
	end arch_Decoder2x4;
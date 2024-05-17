-- Question 2.2
library IEEE;
use IEEE.std_logic_1164.all;
entity Mux_4x1 is
port(
			s : in 	std_logic_vector(1 downto 0);
			x : in 	std_logic_vector(3 downto 0);
			y : out 	std_logic 
		);
end Mux_4x1;
			
architecture arch_Mux_4x1 of Mux_4x1 is 
	begin

	y <= (not s(0) and not s(1) and x(0)) or (s(0) and not s(1) and x(1)) or (not s(0) and s(1) and x(2)) or (s(0) and s(1) and x(3));
				
	end arch_Mux_4x1;
-- Question 3.1
Library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4x1_gates is
port(
		s		: in 	std_logic_vector(1 downto 0);
		din	: in 	std_logic_vector(3 downto 0);
		Dout	: out	std_logic
		);
end Mux4x1_gates;		





architecture arc_Mux4x1_gates of Mux4x1_gates is


signal stg1: std_logic_vector(3 downto 0);
signal stg2: std_logic_vector(3 downto 0);


begin

dec1: entity work.Decoder2x4
		port map(s, 	stg1);
		
stg2 <= stg1 and din;

Dout <= stg2(0) or stg2(1) or stg2(2) or stg2(3);

end arc_Mux4x1_gates;

--Question 3.2
Library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4x1_tristate is
port(
		s		: in 	std_logic_vector(1 downto 0);
		din	: in 	std_logic_vector(3 downto 0);
		Dout	: out	std_logic
		);
end Mux4x1_tristate;		



architecture arc_Mux4x1_tristate of Mux4x1_tristate is


signal stg1: std_logic_vector(3 downto 0);


begin

dec1: entity work.Decoder2x4
		port map(s,	stg1);
		
Dout <= din(0) when (stg1(0)='1') else 'Z';
Dout <= din(1) when (stg1(1)='1') else 'Z';
Dout <= din(2) when (stg1(2)='1') else 'Z';
Dout <= din(3) when (stg1(3)='1') else 'Z';

end arc_Mux4x1_tristate;

-- Register component for PIC

Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_reg is port(
		en_n, clk, rst_n	: in std_logic;
		din	: in	std_logic_vector(7 downto 0);
		dout	: out	std_logic_vector(7 downto 0));
end PIC_reg;


architecture arc_PIC_reg of PIC_reg is
begin
	process(clk, rst_n)
	begin
		if(rst_n = '0') then dout<=(others=>'0');
		elsif rising_edge(clk) then 
			if en_n = '0' then dout<=din;
			end if;
		end if;
	end process;	
end arc_PIC_reg;
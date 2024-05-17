-- test bench for encoder

library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_reg_tb is
end PIC_reg_tb;

architecture arc_PIC_reg_tb of PIC_reg_tb is
signal clk 		: std_logic:='0';
signal en_n, rst_n	: std_logic;
signal dout, din	: std_logic_vector(7 downto 0);

begin
DUT: entity work.PIC_reg port map(	en_n=>en_n,
					clk=>clk,
					rst_n=>rst_n,
					dout=>dout,
					din=>din);

clock: process begin
wait for 5 ns; clk <= not clk;
end process clock;

reset: process begin
rst_n<= '1'; wait for 30 ns;
rst_n<= '0'; wait for 10 ns;
rst_n<= '1';
end process reset;

stimulus: process begin
en_n 	<= '0', '1' after 50 ns, '0' after 80 ns, '1' after 100 ns;
din	<= x"55", x"11" after 10 ns, x"FF" after 20 ns, x"22" after 30 ns, x"44" after 40 ns,
 x"88" after 50 ns, x"FD" after 60 ns, x"44" after 70 ns;
wait;
end process stimulus;

end architecture arc_PIC_reg_tb;
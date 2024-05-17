-- test bench for control unit
Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_ctrl_tb is
end PIC_ctrl_tb;

architecture arc_PIC_ctrl_tb of PIC_ctrl_tb is

--signal declerations
signal cs_n, wr_n, rd_n, irq_pic, mask_en, irr_en: std_logic;
signal	d, mask	: std_logic_vector(7 downto 0);
signal	irr: std_logic_vector(7 downto 0) := x"00";

begin
-- control unit instance
DUT: entity work.PIC_ctrl port map(
cs_n=>cs_n, wr_n=>wr_n, rd_n=>rd_n, irq_pic=>irq_pic, mask_en=>mask_en, 
irr_en=>irr_en, irr=>irr, d=>d, mask=>mask);

--simulating what we want
--testing:
--cs_n, wr_n and rd_n effect on d: until 50 ns
d	<= x"00" after 7 ns, x"FF" after 14 ns, x"00" after 21 ns, x"FF" after 28 ns, x"00" after 35 ns, x"FF" after 42 ns, 
x"00" after 49 ns, x"FF" after 56 ns, x"00" after 63 ns, x"FF" after 70 ns, x"00" after 77 ns;
cs_n	<= '0', '1' after 30 ns;
rd_n	<= '0', '1' after 15 ns, '0' after 30 ns, '1' after 40 ns, '0' after 60 ns;
wr_n	<= '0', '1' after 6 ns, '0' after 12 ns, '1' after 30 ns, '0' after 41 ns, '1' after 59 ns;
irr	<= not irr after 5 ns;


end arc_PIC_ctrl_tb;
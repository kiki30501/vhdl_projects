-- PIC controller

Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_ctrl is port(
		cs_n, wr_n, rd_n: in std_logic;
		irr	: in 	std_logic_vector(7 downto 0);
		d 	: inout	std_logic_vector(7 downto 0);
		mask	: out	std_logic_vector(7 downto 0);
		irq_pic, mask_en, irr_en: out std_logic);
end PIC_ctrl;


architecture arc_PIC_ctrl of PIC_ctrl is
begin

	d 	  	<= irr when(cs_n = '0' and rd_n = '0') else (others=>'Z');
	mask 		<= d   when(cs_n = '0' and wr_n = '0') else (others=>'Z');	
	mask_en 	<= '0' when(cs_n = '0' and wr_n = '0') else '1';	
	irq_pic 	<= '0' when(irr = X"00") else '1'; -- X"00" is 8 bits that have a value of 0;
	irr_en 		<= '1' when(irr = X"00") else '0';
	
end arc_PIC_ctrl;
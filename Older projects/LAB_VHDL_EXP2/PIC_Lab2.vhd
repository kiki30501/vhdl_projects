-- Main body for entire project

Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_Lab2 is port(
		cs_n, wr_n, rd_n, clk, rst_n, inta_n : in std_logic;
		irq	: in 			std_logic_vector(7 downto 0);
		d 		: inout		std_logic_vector(7 downto 0);
		irq_pic: out		std_logic);
end PIC_Lab2;


architecture arc_PIC_Lab2 of PIC_Lab2 is


signal msk, mask, prio, irr		: std_logic_vector(7 downto 0);
signal mask_en, irr_en, read_rst	: std_logic;


component PIC_ctrl is port(
		cs_n, wr_n, rd_n	: in std_logic;
		irr		: in 		std_logic_vector(7 downto 0);
		d 			: inout	std_logic_vector(7 downto 0);
		mask		: out		std_logic_vector(7 downto 0);
		irq_pic, mask_en, irr_en	: out		std_logic);
end component PIC_ctrl;

component PIC_encoder is port(
		irq		: in 		std_logic_vector(7 downto 0);
		mask		: in 		std_logic_vector(7 downto 0);
		prio		: out		std_logic_vector(7 downto 0));
end component PIC_encoder;

component PIC_reg is port(
		en_n, clk, rst_n	: in std_logic;
		din	: in		std_logic_vector(7 downto 0);
		dout	: out		std_logic_vector(7 downto 0));
end component PIC_reg;


begin

read_rst <= inta_n and rst_n;

Ctrl: 		PIC_ctrl port map(cs_n, wr_n, rd_n, irr, d, msk, irq_pic, mask_en, irr_en);
Encoder: 	PIC_encoder port map(irq, mask, prio);
Reg_mask: 	PIC_reg port map(mask_en, clk, rst_n, msk, mask);
Reg_read: 	PIC_reg port map(irr_en, clk, read_rst, prio, irr);

end arc_PIC_Lab2;
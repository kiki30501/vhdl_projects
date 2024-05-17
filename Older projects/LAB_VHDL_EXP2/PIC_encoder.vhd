-- Priority Encoder for PIC

Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_encoder is port(
		irq	: in 	std_logic_vector(7 downto 0);
		mask	: in 	std_logic_vector(7 downto 0);
		prio	: out	std_logic_vector(7 downto 0));
end PIC_encoder;


architecture arc_PIC_encoder of PIC_encoder is

signal masked_irq: std_logic_vector(7 downto 0);

begin
masked_irq <= (not mask) and irq;

prio(7) <= masked_irq(7);
prio(6) <= (not masked_irq(7)) and masked_irq(6);
prio(5) <= (not masked_irq(7)) and (not masked_irq(6)) and masked_irq(5);
prio(4) <= (not masked_irq(7)) and (not masked_irq(6)) and (not masked_irq(5)) and masked_irq(4);
prio(3) <= (not masked_irq(7)) and (not masked_irq(6)) and (not masked_irq(5)) and (not masked_irq(4)) and masked_irq(3);
prio(2) <= (not masked_irq(7)) and (not masked_irq(6)) and (not masked_irq(5)) and (not masked_irq(4)) and (not masked_irq(3)) and masked_irq(2);
prio(1) <= (not masked_irq(7)) and (not masked_irq(6)) and (not masked_irq(5)) and (not masked_irq(4)) and (not masked_irq(3)) and (not masked_irq(2)) and masked_irq(1);
prio(0) <= (not masked_irq(7)) and (not masked_irq(6)) and (not masked_irq(5)) and (not masked_irq(4)) and (not masked_irq(3)) and (not masked_irq(2)) and (not masked_irq(1)) and masked_irq(0);
end architecture arc_PIC_encoder;
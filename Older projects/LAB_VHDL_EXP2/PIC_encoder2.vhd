-- Priority Encoder for PIC - try 2

Library IEEE;
use IEEE.std_logic_1164.all;

entity PIC_encoder2 is port(
		irq	: in 	std_logic_vector(7 downto 0);
		mask	: in 	std_logic_vector(7 downto 0);
		prio	: out	std_logic_vector(7 downto 0));
end PIC_encoder2;


architecture arc_PIC_encoder2 of PIC_encoder2 is 
signal temp: std_logic_vector(7 downto 0);
begin
temp <= (not mask) and irq;

if_encoder: process(irq, mask, temp) is begin

if(temp(7)='1') then
	prio <= (7=>'1', others=>'0');

elsif(temp(6)='1') then
	prio <= (6=>'1', others=>'0');
	
elsif(temp(5)='1') then
	prio <= (5=>'1', others=>'0');
	
elsif(temp(4)='1') then
	prio <= (4=>'1', others=>'0');
	
elsif(temp(3)='1') then
	prio <= (3=>'1', others=>'0');
	
elsif(temp(2)='1') then
	prio <= (2=>'1', others=>'0');
	
elsif(temp(1)='1') then
	prio <= (1=>'1', others=>'0');
	
elsif(temp(0)='1') then
	prio <= (0=>'1', others=>'0');
	
else prio <= (others =>'0');
end if;
end process if_encoder;
end arc_PIC_encoder2;
---------------------------------------------
--VHDL Lab: Experiment 4                   --
--Forward error correction by Hamming codes--
--Reshef & Roi            encoder          --
---------------------------------------------

Library IEEE;
use IEEE.std_logic_1164.all;


Entity HC_encoder is port(
	
	en:	in		std_logic;	-- enable data writing into system, active high
	clk:	in		std_logic;
	rst:	in		std_logic;	-- asynchronous reset, active-low
	codeword:	out 	std_logic_vector(12 downto 1); 	-- System data input
	data:	in		std_logic_vector(7  downto 0);	-- System data input
	valid:out	std_logic	-- valid synchronous data indicator, active-high

); end HC_encoder;

architecture arc_encod of HC_encoder is
signal D: std_logic_vector(7 downto 0);
signal Dout:std_logic_vector(12 downto 1);

begin

process(clk, rst)	begin
	if(rst = '0') then
		codeword 	<= (others => '0');
		D	 	<= (others => '0');
		valid	<= '0';
		elsif (rising_edge(clk)) then	
		if(en = '1') then
			D	<= data;
			Dout 	<= (	1 => Dout(3) xor Dout(5) xor Dout(7) xor Dout(9) xor Dout(11),
							2 => Dout(3) xor Dout(6) xor Dout(7) xor Dout(10) xor Dout(11),
							3 => D(0),
							4 => Dout(5) xor Dout(6) xor Dout(7) xor Dout(12),
							7 => D(3), 6 => D(2), 5 => D(1),
							8 => Dout(9) xor Dout(10) xor Dout(11) xor Dout(12),
							12 => D(7), 11 => D(6), 10 => D(5), 9 => D(4));
			valid <= '1';
			codeword <= Dout;
			else
			valid <= '0';
			end if;
			end if;
end process;
	
end architecture arc_encod;
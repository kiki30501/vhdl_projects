Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity pb_if is port(
	pb, clk, rst:	in 	std_logic;
	ssreg			:	out	std_logic_vector(6 downto 0));
end pb_if;


architecture arc_pb_if of pb_if is

-- signal and const declerations
signal 	increment: std_logic;
signal 	in_sync, sync_ff:  std_logic_vector(1  downto 0);
signal 	counter4: std_logic_vector(3  downto 0);
signal	counter16:std_logic_vector(15 downto 0);

begin

main: process(clk, rst)
begin

	if(rst = '0') then
	-- async reset values
	sync_ff	<= (others => '1');
	in_sync 	<= "11";
	counter4	<= (others=>'0');
	ssreg 	<= (others=>'1');
	counter16<= (others=>'0');
	
	elsif rising_edge(clk) then
	sync_ff(0)	<= pb;
	in_sync(0)	<= sync_ff(0);
		if (counter16 = x"FFFF") then 
		counter16 <= x"0000";
		in_sync(1)<=in_sync(0);
		else counter16 <= counter16 + 1;	end if;
	sync_ff(1)	<= in_sync(1);
	increment 	<= sync_ff(1) and (not in_sync(1));
	counter4	<= counter4 + increment;
		decoder: case counter4 is -- this is a 4-bit binary number to 7-seg decoder (active low display, small endian)
			when x"0" => ssreg <= "0000001";
			when x"1" => ssreg <= "1001111";
			when x"2" => ssreg <= "0010010";
			when x"3" => ssreg <= "0000110";
			when x"4" => ssreg <= "1001100";
			when x"5" => ssreg <= "0100100";
			when x"6" => ssreg <= "0100000";
			when x"7" => ssreg <= "0001111";
			when x"8" => ssreg <= "0000000";
			when x"9" => ssreg <= "0000100";
			when x"A" => ssreg <= "0001000";
			when x"B" => ssreg <= "1100000";
			when x"C" => ssreg <= "0110001";
			when x"D" => ssreg <= "1000010";
			when x"E" => ssreg <= "0110000";
			when x"F" => ssreg <= "0111000";
		end case decoder;
		
	end if;
		
end process main;
end arc_pb_if;
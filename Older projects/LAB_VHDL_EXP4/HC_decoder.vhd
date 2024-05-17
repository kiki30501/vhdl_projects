---------------------------------------------
--VHDL Lab: Experiment 4                   --
--Forward error correction by Hamming codes--
--Reshef & Roi          HC decoder         --
---------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


Entity HC_decoder is port(
	
	rst:		in	std_logic; 								-- asynchronous reset (active-low)
	clk:		in	std_logic;
	codeword:	in 	std_logic_vector(12 downto 1); 	--Ports Tx and codeword are used to include a noise source
																-- if no noise is added, simply connect them together
	en:			in	std_logic;								-- valid synchronous data indicator, active-high
	valid:		out	std_logic;								-- valid output
	data:		out	std_logic_vector(7  downto 0); 	--System data output
	error:		out	std_logic	-- error indicator, active-high, notifies if an error was present in the recieved data

); end HC_decoder;

architecture arc_decod of HC_decoder is
signal Din: std_logic_vector(12 downto 1);
signal Do:	std_logic_vector(7  downto 0);
signal VLD,err:	std_logic;
signal sum: integer;
signal P:	std_logic_vector(3 downto 0);

begin
process(clk, rst) begin

	if(rst='0') then
	data	 	<= (others => '0');
	Din		<= (others => '0');
	VLD		<= '0';
	error		<= '0';
	elsif (rising_edge(clk)) then
		VLD <= en;
		if(VLD = '1') then
		P(0)  <= Din(1) xor Din(3)  xor Din(5)  xor Din(7) xor Din(9)  xor Din(11);
		P(1)  <= Din(2) xor Din(3)  xor Din(6)  xor Din(7) xor Din(10) xor Din(11);
		P(2)  <= Din(5) xor Din(6)  xor Din(7)  xor Din(12);
		P(3)  <= Din(9) xor Din(10) xor Din(11) xor Din(12);
		sum <= to_integer(unsigned(P));
		if(sum > 0) then
			if(sum < 13) then
			Din(sum) <= (not Din(sum));
			err <= '0';
			else err <= '1';
			end if;
		end if;
		end if;

		Do <= (	0 => Din(3),
					1 => Din(5),
					2 => Din(6),
					3 => Din(7),
					4 => Din(9),
					5 => Din(10),
					6 => Din(11),
					7 => Din(12));
		valid <= VLD;
		data <= Do;
	end if;
end process;
end architecture arc_decod;
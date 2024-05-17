---------------------------------------------
--VHDL Lab: Experiment 4                   --
--Forward error correction by Hamming codes--
--Reshef & Roi          main body          --
---------------------------------------------
Library IEEE;
use IEEE.std_logic_1164.all;


Entity FEC_hamming is port(
	
	en:	in		std_logic; 								-- write to encoder + read from decoder enable bit, active-high
	clk:	in		std_logic;
	rst:	in		std_logic; 								-- asynchronous reset (active-low)
	din:	in 	std_logic_vector(7  downto 0); 	--System data input
	Rx:	in 	std_logic_vector(11 downto 0); 	--Ports Tx and Rx are used to include a noise source
																-- if no noise is added, simply connect them together
	dout:	out	std_logic_vector(7  downto 0); 	--System data output
	Tx:	out	std_logic_vector(11 downto 0);
	error:out	std_logic;
	valid:out	std_logic

); end FEC_hamming;

architecture arc_FEC_hamming of FEC_hamming is

	signal Vld: std_logic;
	
begin

	encod: entity work.HC_encoder port map(
	en, clk, rst, Tx, din, Vld); -- Encoder component decleration + instance
	
	decod: entity work.HC_decoder port map(
	rst, clk, Rx, Vld, valid, dout, error);-- Decoder component decleration + instance
	
end architecture arc_FEC_hamming;
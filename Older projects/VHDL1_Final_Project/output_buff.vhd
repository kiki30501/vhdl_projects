library IEEE;
use IEEE.std_logic_1164.all;

entity output_buff is port(
	clk_50M		:in 	std_logic;
	a_rst			:in 	std_logic;
	w_valid		:in 	std_logic;
	w_sel			:in 	std_logic_vector(1 downto 0);
	w_data		:in 	std_logic_vector(7 downto 0);
	x_mov			:out	std_logic_vector(8 downto 0);
	y_mov			:out	std_logic_vector(8 downto 0);
	msg_valid	:out	std_logic);
	end entity output_buff;

architecture arc_output_buff of output_buff is

	signal word_1, word_2, word_3	: std_logic_vector(8 downto 0); 	-- data&valid regs
	signal valid_out					: std_logic;							-- sync output for valid signal
	signal w_in							: std_logic_vector(8 downto 0); 	-- input sync and concatenazation

	begin
	
	x_mov		<=	word_1(4) & word_2(7 downto 0);
	y_mov		<= word_1(5) & word_3(7 downto 0);
	msg_valid	<= valid_out;
	
	process (clk_50M, a_rst) begin
		if (a_rst = '1') then
			word_1		<= (others => '0');
			word_2		<= (others => '0');
			word_3		<= (others => '0');
			w_in			<= (others => '0');
			valid_out	<= '0';
			
		elsif (rising_edge(clk_50M)) then
			w_in		<= w_valid & w_data;
			word_1	<= word_1;
			word_2	<= word_2;
			word_3	<= word_3;
			valid_out	<= '0';
			
			case w_sel is
				
				when "00" 	=>	-- w1 input
					word_1		<= w_in;
					
				when "01" 	=>	-- w2 input
					word_2		<= w_in;
					
				when "10"	=>	-- w3 input
					word_3		<= w_in;
					
				when "11"	=>	-- output mode (for 1cc)
					valid_out<= word_1(8) and word_2(8) and word_3(8) and (not word_1(7)) and (not word_1(6)); -- msg_valid check condition with word valid and overflow
					
				when others	=> null;	-- error state
				
			end case;
		end if;
	end process;
end architecture;
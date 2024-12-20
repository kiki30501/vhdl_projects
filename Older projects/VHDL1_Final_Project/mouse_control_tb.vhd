library ieee;
use ieee.std_logic_1164.all;

entity mouse_control_tb is
end entity mouse_control_tb;

architecture arc_mouse_control_tb of mouse_control_tb is
		
		signal clk_50M					:std_logic:='0';
		signal a_rst					:std_logic;
		signal clock_from_device	:std_logic:='0';
		signal device_clock			:std_logic:='Z';
		signal m_data					:std_logic:='Z';
		signal msg_valid				:std_logic;
		signal x_mov, y_mov			:std_logic_vector(8  downto 0);
		constant period_bit			:time := 100 us;
		
		begin
		
		DUT:	entity work.mouse_control
		port map(
			clk_50M		=> clk_50M,
			a_rst			=> a_rst,
			m_data		=> m_data,
			m_clock		=> device_clock,
			x_mov			=> x_mov,
			y_mov			=> y_mov,
			msg_valid	=> msg_valid);

		
		clk_50M	<= (not clk_50M)	after 10		ns;
		clock_from_device <= (not clock_from_device) after 50 us;
		
		
		stimulus: process
		variable packet	:std_logic_vector(32 downto 0) := (others => '0');
		variable	data_get	:std_logic_vector(10 downto 0) := (others => '0');
		begin
			a_rst <= '1';
			wait for 100 us;
			a_rst <= '0';
			get_init: for i in 0 to 10 loop
				wait until falling_edge(device_clock);
				data_get(i)	:= m_data;
			end loop get_init;
			wait for 1 ns;
			device_clock	<= '1';
			m_data			<= '1';
			wait for 3 ms;

			assert (data_get = ("10" & x"F6" & "0")) report "Init failed - code incorrect" severity error;
			assert false report "Init Complete" severity note;
			
			packet	:= "11110011010" & "10001110100" & "11001010010";
			test1: for i in 0 to 2 loop
				
				device_clock	<= '1';

				for j in 0 to 10 loop
					wait for 50 us;
					device_clock	<= '0';
					m_data <= packet(i*11 + j);
					wait for 50 us;
					device_clock	<= '1';
				end loop;


				wait for 1 ms;
				assert false report "test 1 - word complete" severity note;
				
				end loop test1;
			
			wait;
			
		end process stimulus;
	end architecture arc_mouse_control_tb;
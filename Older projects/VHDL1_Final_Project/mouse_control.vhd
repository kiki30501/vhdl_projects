library ieee;
use ieee.std_logic_1164.all;

entity mouse_control is port(
		clk_50M		:in		std_logic;
		a_rst			:in		std_logic;
		m_data		:inout	std_logic;
		m_clock		:inout	std_logic;
		x_mov			:out		std_logic_vector(8 downto 0);
		y_mov			:out		std_logic_vector(8 downto 0);
		msg_valid	:out		std_logic);
	end entity mouse_control;


architecture arc_mouse_control of mouse_control is 

		signal w_sel	:std_logic_vector(1 downto 0);
		signal w_data	:std_logic_vector(7 downto 0);
		signal done, Rx_rst, m_init, w_valid, init_done, join_clock, join_data: std_logic;
		signal data_in_rx, data_out_init, clock_in_rx, clock_out_init: std_logic;
		
		begin
		
		join_clock	<= clock_out_init;
		join_data	<= data_out_init;
		clock_in_rx	<= m_clock;
		data_in_rx	<= m_data;
		m_clock		<= join_clock	when (m_init = '1') else 'Z';
		m_data		<= join_data	when (m_init = '1') else 'Z';
		
	Control_Unit:		entity work.ctrl_unit	
		port map(
		clk_50M	=> clk_50M,
		a_rst		=> a_rst,
		done		=> done,
		init_done=> init_done,
		m_init	=> m_init,
		Rx_rst	=> Rx_rst,
		w_sel		=> w_sel);
		
	Reciever:			entity work.Rx
		port map(
		clk_50M	=> clk_50M,
		a_rst		=> a_rst,
		Rx_rst	=> Rx_rst,
		m_data	=> data_in_rx,
		m_clock	=> clock_in_rx,
		done		=> done,
		w_valid	=> w_valid,
		w_data	=> w_data);
	
	Output_Buffer:		entity work.output_buff
		port map(
		clk_50M	=> clk_50M,
		a_rst		=> a_rst,
		w_valid	=> w_valid,
		w_sel		=> w_sel,
		w_data	=> w_data,
		x_mov		=> x_mov,
		y_mov		=> y_mov,
		msg_valid=> msg_valid);
	
	Mouse_Init_Unit:	entity work.init_unit
		port map(
		clk_50M	=> clk_50M,
		a_rst		=> a_rst,
		m_init	=> m_init,
		m_data	=> data_out_init,
		m_clock	=> clock_out_init,
		init_done=> init_done);
	
	
	

end architecture arc_mouse_control;
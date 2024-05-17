library ieee;
use ieee.std_logic_1164.all;


entity ctrl_unit is port(
	clk_50M		:in	std_logic;
	a_rst			:in	std_logic;
	done			:in	std_logic;
	init_done	:in	std_logic;
	m_init		:out	std_logic;
	Rx_rst		:out	std_logic;
	w_sel			:out	std_logic_vector(1 downto 0));
	end entity ctrl_unit;

architecture arc_ctrl_unit of ctrl_unit is
	
	type 		state is (init, w1, w2, w3);
	signal 	pres_s	:state;
	
	begin
	
	process(clk_50M, a_rst) begin
		
		if	(a_rst ='1') then
			pres_s	<= init;
			m_init	<= '0';
			Rx_rst	<= '1';		
			w_sel		<= "00";
			
		elsif	(rising_edge(clk_50M)) then
			
			case pres_s is
				
				when init =>
					m_init	<= '1';
					Rx_rst	<= '1';
					if (init_done = '0') then
						w_sel		<= "00";
						pres_s	<= pres_s;
					else
						w_sel		<= "11";
						pres_s	<= w1;
					end if;
					
				when w1 =>
					m_init	<= '0';
					Rx_rst	<= '0';
					if (done = '0') then
						w_sel		<= "11";
						pres_s	<= pres_s;
					else
						w_sel		<= "00";
						pres_s	<= w2;
					end if;
					
				when w2 =>
					m_init	<= '0';
					Rx_rst	<= '0';
					if (done = '0') then
						w_sel		<= "00";
						pres_s	<= pres_s;
					else
						w_sel		<= "01";
						pres_s	<= w3;
					end if;
					
				when w3 =>
					m_init	<= '0';
					Rx_rst	<= '0';
					if (done = '0') then
						w_sel		<= "01";
						pres_s	<= pres_s;
					else
						w_sel		<= "10";
						pres_s	<= w1;
					end if;
					
			end case;
		end if;
	end process;
	
end architecture;
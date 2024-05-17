library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity init_unit is port(
	clk_50M	:in	std_logic;
	a_rst		:in 	std_logic;
	m_init	:in	std_logic;
	m_data	:out	std_logic;
	m_clock	:out	std_logic;
	init_done:out	std_logic);
	end entity init_unit;

architecture arc_init_unit of init_unit is

	signal counter		:std_logic_vector(12 downto 0); -- bit12 is a ~12.2k clock
	signal init_code	:std_logic_vector(11 downto 0); 
	signal push			:std_logic_vector(1  downto 0);
	begin
		m_clock		<= counter(12);				
		m_data		<= init_code(0);
		
		process (clk_50M, a_rst) begin
			if (a_rst = '1') then
				init_code	<= "010" & x"F6" & "0"; -- bits: pad-bit, stop, parity-odd, F6 (from LSB to MSB), start
				init_done	<= '0';
				counter		<= (others => '0');
				push			<= "00";
			elsif (rising_edge(clk_50M)) then
				counter		<= (others => '0');
				init_done	<= '0';
				push(0)		<= counter(12);
				push(1)		<= push(0) and (not counter(12));
				
				init_code	<= init_code;
				if(m_init = '1') then
					counter	<= counter + '1';
				end if;
				
				if (init_code = x"000") then
					init_done	<= '1';
				end if;

				if (push(1) = '1') then
					init_code	<= '0' & init_code(11 downto 1);
				end if;
			end if;
			end process;
	end architecture;
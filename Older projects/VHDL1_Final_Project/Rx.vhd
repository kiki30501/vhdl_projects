library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity Rx is port(
		clk_50M	:in 	std_logic;
		a_rst		:in 	std_logic;
		Rx_rst	:in 	std_logic;
		m_data	:in 	std_logic;
		m_clock	:in 	std_logic;
		done		:out 	std_logic;
		w_valid	:out 	std_logic;
		w_data	:out 	std_logic_vector(7 downto 0));
	end entity Rx;


architecture arc_Rx of Rx is		
		signal	shift_en	: std_logic;
		signal	pcheck	: std_logic;
		signal	srst		: std_logic;
		signal	kick_wd	: std_logic;
		signal	bark		: std_logic;
		signal	wd_free	: std_logic;
		signal	en_out	: std_logic;
		signal	wd_run	: std_logic;
		signal	wd_rst	: std_logic;
		signal	sync1, sync2, sync3	: std_logic;
		signal	reg_out	: std_logic_vector(7  downto 0);
		signal	data_reg	: std_logic_vector(11 downto 0);
		signal	watchdog	: std_logic_vector(15 downto 0);
		
		begin
		
		bark		<= watchdog(15); -- active when WDT has reached ~32.7k clock-cycles (same as =N condition)
		wd_free	<= '0' when (watchdog = x"0000") else '1';
		shift_en	<= sync3 and (not sync2);
		done		<= data_reg(0);
		en_out	<= pcheck and data_reg(0) and data_reg(11) and (not data_reg(1));
		w_data	<= reg_out;
		srst		<= bark or Rx_rst or data_reg(0);
		wd_rst	<= srst or shift_en;
		wd_run	<= wd_free or kick_wd;
		
		
		data_handling:	process(clk_50M, a_rst)
		begin
			
			if (a_rst = '1') then	-- async reset statements
				pcheck	<= '0';
				data_reg	<= x"800";	-- shift register reset value with flag
				reg_out	<= (others => '0');
				watchdog	<= (others => '0');
				kick_wd	<= '0';
				w_valid	<= '0';
				sync1		<= '1';
				sync2		<= '1';
				sync3		<= '1';
				
			elsif (rising_edge(clk_50M)) then
				w_valid	<= en_out;
				kick_wd	<= shift_en;
				data_reg	<= data_reg;
				pcheck	<= pcheck;
				reg_out	<= reg_out;
				sync1	<= m_clock;
				sync2	<= sync1;
				sync3	<= sync2;
				
				if (wd_rst = '1') then
					watchdog	<= (others => '0');
				else
					watchdog	<= watchdog + wd_run;
				end if;
				
				if (en_out = '1') then
					reg_out	<= data_reg(9 downto 2);
				end if;
				
				if (srst = '1') then 
					pcheck	<= '0';
					data_reg	<= x"800";
					sync1	<= '1';
					sync2	<= '1';
					sync3	<= '1';
					
				elsif (shift_en = '1') then
					pcheck	<= pcheck xor m_data; -- TFF
					data_reg	<= m_data & data_reg(11 downto 1); -- shift register push right;
					
				end if;
				
			end if;		
		end process data_handling;
		
	end architecture;
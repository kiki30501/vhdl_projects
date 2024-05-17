library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity vhdllab_mul is
generic(n: integer := 4);
port(
		a		: in	std_logic_vector(n-1 downto 0);
		b		: in 	std_logic_vector(n-1 downto 0);
		p		: out	std_logic_vector(2*n-1 downto 0);
		start	: in	std_logic;
		done	: out	std_logic;
		clk	: in	std_logic;
		rst	: in	std_logic);
end entity vhdllab_mul;		


architecture arc_gmult of vhdllab_mul is
	signal 	eop, ldc, se 	: std_logic;
	signal 	da	: std_logic_vector(2*n-1 downto 0);
	signal 	db	: std_logic_vector(n-1 downto 0);
	signal 	acc	: std_logic_vector(2*n-1 downto 0);
	type 		state is (s0, s1);
	signal	present_s : state;
begin
	
	p 		<= acc;
	eop	<= '1' when (db = 0) else '0';
	
	Regs: process (clk, rst) -- process for registers (not FSM)
	variable ab_and 	: std_logic_vector(2*n-1 downto 0);
	begin
		
		if (rst = '1') then -- Async reset of system
		
			acc	<= (others => '0');
			da 	<= (others => '0');
			db 	<= (others => '0');
		
		elsif (rising_edge(clk)) then -- Synch operation
		
			for i in da'range loop -- using loop to duplicate hardware (and gates)
				ab_and(i) := da(i) and db(0);
			end loop;
		
			-- load operation
			if (ldc = '1') then
				da(a'range)		<= a;
				da(2*n-1 downto n) <= (others => '0');
				db		<= b;
				acc	<= (others => '0');
			
			-- shift and acc operation (!eop)
			elsif (se = '1') then
				da		<= da(da'left-1 downto 0) & '0';
				db		<= '0' & db(db'left downto 1);
				acc	<= acc + ab_and;
				
			else
				da		<= da;
				db		<= db;
				acc	<= acc;
			end if;
			
		end if;
	end process Regs;
	
	
	
	FSM: process (clk, rst) begin
	
		if (rst = '1') then
			
			ldc	<= '0';
			se 	<= '0';
			done	<= '0';
			present_s <= s0;
		
		elsif (rising_edge(clk)) then
			
			case present_s is
				
				when s0 =>
					if (start = '0') then
						present_s <= present_s;
						ldc	<= '0';
						se 	<= '0';
						done	<= '0';
					else
						present_s <= s1;
						ldc	<= '1';
						se 	<= '0';
						done	<= '0';
					end if;
				
				when s1 =>
					if (eop = '0') then
						present_s <= present_s;
						ldc	<= '0';
						se 	<= '1';
						done	<= '0';
					else
						present_s <= s0;
						ldc	<= '0';
						se 	<= '0';
						done	<= '1';
					end if;
			end case;
		end if;
	end process FSM;

end architecture;
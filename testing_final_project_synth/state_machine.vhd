library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity state_machine is
port(
	rst		: in	std_logic;
	clk		: in	std_logic_vector(1 downto 0);
	x		: in	std_logic_vector(6 downto 0);
	y		: out	std_logic_vector(6 downto 0)
);
end entity state_machine;

architecture arc_state_machine of state_machine is
	signal z		: std_logic_vector(1 downto 0);
	type state is (st0, st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12);
	signal st : state;
begin


	cfsm0: process(clk(0), rst) begin

		if(rst = '1') then
			st	<=	st0;
			z <= (0 => '1', others => '0');
		elsif falling_edge(clk(0)) then
			case st is
				when st0 =>

					case x is
						when "0------" =>
							st <= st0;
							y <= "0000000";
						when "10----0" =>
							st <= st1;
							y <= "00110-0";
						when "10----1" =>
							st <= st1;
							y <= "00010-0";
						when "11----0" =>
							st <= st11;
							y <= "0011010";
							z(0) <= '0';
							z(1) <= '1';
						when "11----1" =>
							st <= st11;
							y <= "0001010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st1 =>

					case x is
						when "100----" =>
							st <= st1;
							y <= "00000-0";
						when "101-1--" =>
							st <= st4;
							y <= "10000-0";
						when "101-0--" =>
							st <= st2;
							y <= "10000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st2 =>

					case x is
						when "10-----" =>
							st <= st3;
							y <= "00000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st3 =>

					case x is
						when "10--0--" =>
							st <= st2;
							y <= "10000-0";
						when "10--1--" =>
							st <= st4;
							y <= "10000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st4 =>

					case x is
						when "10-----" =>
							st <= st5;
							y <= "00000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st5 =>

					case x is
						when "10-1---" =>
							st <= st4;
							y <= "10000-0";
						when "10--1--" =>
							st <= st4;
							y <= "10000-0";
						when "10-00--" =>
							st <= st6;
							y <= "0100010";
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when st6 =>

					case x is
						when "10---0-" =>
							st <= st6;
							y <= "0100000";
						when "10---1-" =>
							st <= st7;
							y <= "01000-0";
							z(0) <= '0';
							z(1) <= '1';
						when "0------" =>
							st <= st11;
							y <= "000--10";
							z(0) <= '0';
							z(1) <= '1';
						when "11-----" =>
							st <= st11;
							y <= "0000010";
							z(0) <= '0';
							z(1) <= '1';
						when others => NULL;
					end case;

				when others => NULL;
			end case;
		end if;
	end process cfsm0;


	cfsm1: process(clk(1), rst) begin

		if(rst = '1') then
			st	<=	st0;
			z <= (0 => '1', others => '0');
		elsif falling_edge(clk(1)) then
			case st is
				when st7 =>

					case x is
						when "10-----" =>
							st <= st8;
							y <= "0000010";
						when "0------" =>
							st <= st11;
							y <= "000--10";
						when "11-----" =>
							st <= st11;
							y <= "0000010";
						when others => NULL;
					end case;

				when st8 =>

					case x is
						when "10---0-" =>
							st <= st8;
							y <= "0000000";
						when "10---1-" =>
							st <= st9;
							y <= "10000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
						when "11-----" =>
							st <= st11;
							y <= "0000010";
						when others => NULL;
					end case;

				when st9 =>

					case x is
						when "10-----" =>
							st <= st10;
							y <= "00000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
						when "11-----" =>
							st <= st11;
							y <= "0000010";
						when others => NULL;
					end case;

				when st10 =>

					case x is
						when "1001---" =>
							st <= st10;
							y <= "00000-0";
						when "10-01--" =>
							st <= st1;
							y <= "00010-0";
							z(1) <= '0';
							z(0) <= '1';
						when "10-00--" =>
							st <= st6;
							y <= "0100010";
							z(1) <= '0';
							z(0) <= '1';
						when "1011---" =>
							st <= st9;
							y <= "10000-0";
						when "0------" =>
							st <= st11;
							y <= "000--10";
						when "11-----" =>
							st <= st11;
							y <= "0000010";
						when others => NULL;
					end case;

				when st11 =>

					case x is
						when "0----0-" =>
							st <= st11;
							y <= "000--00";
						when "11---0-" =>
							st <= st11;
							y <= "0000000";
						when "0----1-" =>
							st <= st0;
							y <= "000---1";
							z(1) <= '0';
							z(0) <= '1';
						when "10-----" =>
							st <= st1;
							y <= "00000-0";
							z(1) <= '0';
							z(0) <= '1';
						when "11---1-" =>
							st <= st12;
							y <= "00001-0";
						when others => NULL;
					end case;

				when st12 =>

					case x is
						when "11-----" =>
							st <= st12;
							y <= "00001-0";
						when "10-----" =>
							st <= st1;
							y <= "00000-0";
							z(1) <= '0';
							z(0) <= '1';
						when "0------" =>
							st <= st11;
							y <= "000--10";
						when others => NULL;
					end case;

				when others => NULL;
			end case;
		end if;
	end process cfsm1;

end arc_state_machine;

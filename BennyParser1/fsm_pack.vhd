library ieee;
use ieee.std_logic_1164.all;
package fsm_pack is
	function wor (din : std_logic_vector) return std_logic;
	subtype wired_logic is wor std_logic;
	type wired_logic_vector is array(natural range <>) of wired_logic;		  
end package fsm_pack;
package body fsm_pack is
	function wor (din : std_logic_vector) return std_logic is
	begin
		for i in din'range loop
			if (din(i)='1') then
				return din(i);
			end if;
		end loop;
		return '0';
	end function wor;
end package body fsm_pack;

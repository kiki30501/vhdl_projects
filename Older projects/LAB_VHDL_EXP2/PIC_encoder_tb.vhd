-- test bench for encoder

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity PIC_encoder_tb is
end PIC_encoder_tb;

architecture arc_encoder_tb of PIC_encoder_tb is

		component PIC_encoder2 is port(
		irq	: in 	std_logic_vector(7 downto 0);
		mask	: in 	std_logic_vector(7 downto 0);
		prio	: out	std_logic_vector(7 downto 0));
		end component;	
		
		signal irq_tb:  std_logic_vector(7 downto 0);
		signal mask_tb: std_logic_vector(7 downto 0);
		signal prio_tb: std_logic_vector(7 downto 0);		
		begin
		
		DUT: PIC_encoder2 port map(irq=>irq_tb, mask=>mask_tb, prio=>prio_tb);

		process
		
		variable ref_model: 	std_logic_vector(7 downto 0);
		variable m_print:	integer;
		variable prio_print:	integer;
		variable valid:		bit;
		variable init:		bit:='1';
		
		begin
			if(init='1') then
			irq_tb  <= x"00" - 1; -- initialize values
			mask_tb <= x"00" - 1;
			init :='0';
			end if;
			wait for 1 ps;	
			mask_loop: for m in 0 to 255 loop
			mask_tb <= mask_tb + 1;
			irq_loop: for n in 0 to 255 loop
			irq_tb <= irq_tb + 1;
			
			-- making calculation for the ref_model
			valid:='1';
			ref_model:=x"00";
			ref_calc_loop: for k in 7 downto 0 loop
								
			if ((irq_tb(k)='1')  and  (mask_tb(k)='0') and (valid='1')) then
				ref_model(k) := '1';
				valid := '0';
				end if;
			end loop;
			wait for 1 ps;
			if(prio_tb /= ref_model) then
			assert false report ("Fail at: mask=" & integer'image(m) & " , irq= " & integer'image(n)) severity note;
			assert false report ("encoder output = x" & to_hstring(prio_tb)) severity note;
			assert false report ("refrence model output = x" & to_hstring(ref_model)) severity error;
			end if;

			if(ref_model = x"FF") then
			assert false report ("Simulation completed succesfully") severity note;
			wait;
			end if;

			end loop;
			end loop;
		
		end process;
end arc_encoder_tb;

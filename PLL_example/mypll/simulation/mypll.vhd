-- mypll.vhd

-- Generated using ACDS version 20.1 720

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mypll is
	port (
		inclk  : in  std_logic := '0'; --  altclkctrl_input.inclk
		ena    : in  std_logic := '0'; --                  .ena
		outclk : out std_logic         -- altclkctrl_output.outclk
	);
end entity mypll;

architecture rtl of mypll is
	component mypll_altclkctrl_0 is
		port (
			inclk  : in  std_logic := 'X'; -- inclk
			ena    : in  std_logic := 'X'; -- ena
			outclk : out std_logic         -- outclk
		);
	end component mypll_altclkctrl_0;

begin

	altclkctrl_0 : component mypll_altclkctrl_0
		port map (
			inclk  => inclk,  --  altclkctrl_input.inclk
			ena    => ena,    --                  .ena
			outclk => outclk  -- altclkctrl_output.outclk
		);

end architecture rtl; -- of mypll
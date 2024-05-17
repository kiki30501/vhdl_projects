-- VHDL Test Bench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end entity top_tb;

architecture tb_arch of top_tb is
    constant clk_time : time := 5 ns;

    signal clk      : std_logic := '0';
    signal pb_start : std_logic := '1';
    signal rst      : std_logic := '1';
    signal done     : std_logic;
    signal oh_no    : std_logic;

begin
    
    DUT: entity work.LenaTop
        port map (
            clk   => clk,
            pb_start => pb_start,
            rst   => rst,
            done  => done,
            oh_no => oh_no
        );

    clk <= (not clk) after clk_time;

    stimulus_process : process
    begin
        -- Initial signal simulation states
        rst <= '1';
        pb_start <= '1';

        -- Apply stimulus
        wait for 20 ns;
        rst <= '0';
        wait for 50 ns;
        pb_start <= '0';
        wait for 330 ns;
        pb_start <= '1';

        -- End simulation
        wait for 10 ns;
        assert (done = '0') report "Done is here! Rejoice!" severity note;
        wait;
    end process stimulus_process;

end architecture tb_arch;
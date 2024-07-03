library ieee;
use  ieee.std_logic_1164.all;
library work;
use work.fsm_pack.all;
------------------------------
entity bbtas is
    port(
      x   : in  wired_logic_vector(1 downto 0);
      y   : out wired_logic_vector(1 downto 0);
      clk : in  std_logic;
      rst : in  std_logic
        );
end entity bbtas;

architecture arc_bbtas of bbtas is
constant s1 : wired_logic_vector(5 downto 0):="000001";
constant s2 : wired_logic_vector(5 downto 0):="000010";
constant s3 : wired_logic_vector(5 downto 0):="000100";
constant s4 : wired_logic_vector(5 downto 0):="001000";
constant s5 : wired_logic_vector(5 downto 0):="010000";
constant s6 : wired_logic_vector(5 downto 0):="100000";
signal s : wired_logic_vector(5 downto 0);
signal sn : wired_logic_vector(5 downto 0);
signal yn : wired_logic_vector(1 downto 0);
begin
sn(0)<=((not x(0)) and (not x(1)) and s(0));
sn(1)<=((not x(0)) and x(1) and s(0));
sn(2)<=(x(0) and (not x(1)) and s(0));
sn(3)<=(x(0) and x(1) and s(0));
sn(1)<=((not x(0)) and (not x(1)) and s(1));
sn(0)<=((not x(0)) and x(1) and s(1));
sn(2)<=(x(0) and (not x(1)) and s(1));
sn(2)<=(x(0) and x(1) and s(1));
sn(1)<=((not x(0)) and (not x(1)) and s(2));
sn(3)<=((not x(0)) and x(1) and s(2));
sn(3)<=(x(0) and (not x(1)) and s(2));
sn(3)<=(x(0) and x(1) and s(2));
sn(4)<=((not x(0)) and (not x(1)) and s(3));
sn(3)<=((not x(0)) and x(1) and s(3));
sn(3)<=(x(0) and (not x(1)) and s(3));
sn(3)<=(x(0) and x(1) and s(3));
sn(5)<=((not x(0)) and (not x(1)) and s(4));
sn(4)<=((not x(0)) and x(1) and s(4));
sn(4)<=(x(0) and (not x(1)) and s(4));
sn(4)<=(x(0) and x(1) and s(4));
sn(0)<=((not x(0)) and (not x(1)) and s(5));
sn(5)<=((not x(0)) and x(1) and s(5));
sn(5)<=(x(0) and (not x(1)) and s(5));
sn(5)<=(x(0) and x(1) and s(5));
------------------------------
state_reg: process (clk,rst) is
begin
if (rst='1') then
s<=s1;
elsif rising_edge(clk) then
s<=sn;
y<=yn;
end if;
end process state_reg;
------------------------------
yn(0)<=((not x(0)) and (not x(1)) and s(0));
yn(1)<=((not x(0)) and x(1) and s(0));
yn(0)<=(x(0) and (not x(1)) and s(0));
yn(1)<=(x(0) and (not x(1)) and s(0));
yn(1)<=(x(0) and x(1) and s(0));
yn(0)<=((not x(0)) and (not x(1)) and s(1));
yn(1)<=((not x(0)) and x(1) and s(3));
yn(0)<=(x(0) and (not x(1)) and s(3));
yn(0)<=(x(0) and x(1) and s(3));
yn(1)<=(x(0) and x(1) and s(3));

end architecture arc_bbtas;

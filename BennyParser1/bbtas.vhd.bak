library ieee;
use  ieee.std_logic_1164.all;
------------------------------
entity bbtas is
    port(
      x   : in  std_logic_vector(1 downto 0);
      y   : out std_logic_vector(1 downto 0);
      clk : in  std_logic;
      rst : in  std_logic
        );
end entity bbtas;

architecture arc_bbtas of bbtas is
constant s1 : std_logic_vector(5 downto 0):="000001";
constant s2 : std_logic_vector(5 downto 0):="000010";
constant s3 : std_logic_vector(5 downto 0):="000100";
constant s4 : std_logic_vector(5 downto 0):="001000";
constant s5 : std_logic_vector(5 downto 0):="010000";
constant s6 : std_logic_vector(5 downto 0):="100000";
signal s : std_logic_vector(5 downto 0);
signal sn : std_logic_vector(5 downto 0);
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
end if;
end process state_reg;
------------------------------
y(0)<=((not x(0)) and (not x(1)) and s(0));
y(1)<=((not x(0)) and x(1) and s(0));
y(0)<=(x(0) and (not x(1)) and s(0));
y(1)<=(x(0) and (not x(1)) and s(0));
y(1)<=(x(0) and x(1) and s(0));
y(0)<=((not x(0)) and (not x(1)) and s(1));
y(1)<=((not x(0)) and x(1) and s(3));
y(0)<=(x(0) and (not x(1)) and s(3));
y(0)<=(x(0) and x(1) and s(3));
y(1)<=(x(0) and x(1) and s(3));

end architecture arc_bbtas;

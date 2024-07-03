library ieee;
use  ieee.std_logic_1164.all;
library work;
use  work.fsm_pack.all;
------------------------------
entity dk15 is
    port(
      x1  : in  std_logic;
     x2  : in  std_logic;
     x3  : in  std_logic;
      y1  : out  wired_logic;
     y2  : out  wired_logic;
     y3  : out  wired_logic;
     y4  : out  wired_logic;
     y5  : out  wired_logic;
      f1  : in std_logic_vector(1 to 32);
     f2  : in std_logic_vector(1 to 32);
      clk : in  std_logic;
      rst : in  std_logic
        );
end entity dk15;

architecture arc_dk15 of dk15 is
signal s0 : std_logic;
signal sn0 : wired_logic;
signal s1 : std_logic;
signal sn1 : wired_logic;
signal s2 : std_logic;
signal sn2 : wired_logic;
signal s3 : std_logic;
signal sn3 : wired_logic;
signal t  : std_logic_vector(1 to 32);
begin
t(1)<=((not x1) and (not x2) and (not x3) and s1);
sn1<=(t(1) and f1(1)) or f2(1);
t(2)<=((not x1) and (not x2) and (not x3) and s2);
sn2<=(t(2) and f1(2)) or f2(2);
t(3)<=((not x1) and (not x2) and (not x3) and s3);
sn3<=(t(3) and f1(3)) or f2(3);
t(4)<=((not x1) and (not x2) and (not x3) and s4);
sn4<=(t(4) and f1(4)) or f2(4);
t(5)<=((not x1) and (not x2) and x3 and s1);
sn1<=(t(5) and f1(5)) or f2(5);
t(6)<=((not x1) and (not x2) and x3 and s2);
sn2<=(t(6) and f1(6)) or f2(6);
t(7)<=((not x1) and (not x2) and x3 and s3);
sn3<=(t(7) and f1(7)) or f2(7);
t(8)<=((not x1) and (not x2) and x3 and s4);
sn4<=(t(8) and f1(8)) or f2(8);
t(9)<=((not x1) and x2 and (not x3) and s1);
sn1<=(t(9) and f1(9)) or f2(9);
t(10)<=((not x1) and x2 and (not x3) and s2);
sn2<=(t(10) and f1(10)) or f2(10);
t(11)<=((not x1) and x2 and (not x3) and s3);
sn3<=(t(11) and f1(11)) or f2(11);
t(12)<=((not x1) and x2 and (not x3) and s4);
sn4<=(t(12) and f1(12)) or f2(12);
t(13)<=((not x1) and x2 and x3 and s3);
sn3<=(t(13) and f1(13)) or f2(13);
t(14)<=((not x1) and x2 and x3 and s4);
sn4<=(t(14) and f1(14)) or f2(14);
t(15)<=((not x1) and x2 and x3 and s1);
sn1<=(t(15) and f1(15)) or f2(15);
t(16)<=((not x1) and x2 and x3 and s2);
sn2<=(t(16) and f1(16)) or f2(16);
t(17)<=(x1 and x2 and x3 and s3);
sn3<=(t(17) and f1(17)) or f2(17);
t(18)<=(x1 and x2 and x3 and s4);
sn4<=(t(18) and f1(18)) or f2(18);
t(19)<=(x1 and x2 and x3 and s1);
sn1<=(t(19) and f1(19)) or f2(19);
t(20)<=(x1 and x2 and x3 and s2);
sn2<=(t(20) and f1(20)) or f2(20);
t(21)<=(x1 and (not x2) and (not x3) and s1);
sn1<=(t(21) and f1(21)) or f2(21);
t(22)<=(x1 and (not x2) and (not x3) and s3);
sn3<=(t(22) and f1(22)) or f2(22);
t(23)<=(x1 and (not x2) and (not x3) and s4);
sn4<=(t(23) and f1(23)) or f2(23);
t(24)<=(x1 and (not x2) and (not x3) and s2);
sn2<=(t(24) and f1(24)) or f2(24);
t(25)<=(x1 and (not x2) and x3 and s1);
sn1<=(t(25) and f1(25)) or f2(25);
t(26)<=(x1 and (not x2) and x3 and s2);
sn2<=(t(26) and f1(26)) or f2(26);
t(27)<=(x1 and (not x2) and x3 and s3);
sn3<=(t(27) and f1(27)) or f2(27);
t(28)<=(x1 and (not x2) and x3 and s4);
sn4<=(t(28) and f1(28)) or f2(28);
t(29)<=(x1 and x2 and (not x3) and s1);
sn1<=(t(29) and f1(29)) or f2(29);
t(30)<=(x1 and x2 and (not x3) and s2);
sn2<=(t(30) and f1(30)) or f2(30);
t(31)<=(x1 and x2 and (not x3) and s4);
sn4<=(t(31) and f1(31)) or f2(31);
t(32)<=(x1 and x2 and (not x3) and s3);
sn3<=(t(32) and f1(32)) or f2(32);
te4 01010------------------------------
state_reg: process (clk,rst) is
begin
if (rst='1') then
s0<='1';
s1<='0';
s2<='0';
s3<='0';
elsif rising_edge(clk) then
s0<=sn0;
s1<=sn1;
s2<=sn2;
s3<=sn3;
end if;
end process state_reg;
------------------------------
4 01010
end architecture arc_dk15;

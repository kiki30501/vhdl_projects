library ieee;
use ieee.std_logic_1164.all;

entity or_operation is
    port (
        input1 : in std_logic := '1';
        input2 : in std_logic_vector(7 downto 0) := x"DD";
        output : out std_logic_vector(7 downto 0)
    );
end entity or_operation;

architecture behavioral of or_operation is

begin

        output <= (output'range => input1) or input2;
end architecture behavioral;
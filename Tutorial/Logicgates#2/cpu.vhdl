library ieee;
use ieee.std_logic_1164;


entity ALU is
  port( i_1 : in std_logic;
        i_2 : in std_logic;
        i_3 : in std_logic;
        o_1 : out std_logic
        );
end entity ALU;

architecture RTL of ALU is
begin  

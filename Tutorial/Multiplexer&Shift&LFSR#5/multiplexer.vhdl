library ieee;
use ieee.std_logic_1164.all;

entity multiplexer is
  generic(
    BIT_WIDTH : integer := 8
    );
  port(
    i_data1 : in std_logic_vector(BIT_WIDTH-1 downto 0);
    i_data2 : in std_logic_vector(BIT_WIDTH-1 downto 0);
    i_data3 : in std_logic_vector(BIT_WIDTH-1 downto 0);
    i_data4 : in std_logic_vector(BIT_WIDTH-1 downto 0);
    i_select1 : in std_logic;
    i_select2 : in std_logic;
    o_data : out std_logic_vector(BIT_WIDTH-1 downto 0);
    );
end entity multiplexer;

architecture RTL of multiplexer is
begin
  o_data <= i_data1 when i_select1 = '0' and i_select2 = '0' else
            i_data2 when i_select1 = '1' and i_select2 = '0' else
            i_data3 when i_select1 = '0' and i_select2 = '1' else
            i_data4;
end architecture RTL;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter is
  generic(
    BIT_WIDTH : integer := 8
    );
  port(
    i_Clk : in std_logic;
    i_Enable : in std_logic;
    o_counter : out std_logic_vector(BIT_WIDTH - 1 downto 0)
    );
end entity Counter;

architecture RTL of Counter is
  signal r_counter : unsigned(BIT_WIDTH - 1 downto 0) := (others => '0'); 
begin

  process(i_Clk) is
  begin
    if i_Enable = '1' then
      if rising_edge(i_Clk) then
        r_counter <= r_counter + 1;
      end if;
    end if;
  end process;

  o_counter <= r_counter;
  
end architecture RTL;

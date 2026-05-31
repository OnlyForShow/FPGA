library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Count_And_Toggle is
  generic(
    COUNT_LIMIT : integer
    );
  port(
    i_clk : in std_logic;
    i_enable : in std_logic;
    o_toggle : out std_logic
    )
end entity Count_And_Toggle;


architecture RTL of Count_And_Toggle is
  signal counter : integer := 0;
  signal r_toggle : std_logic := '0';
begin

  process(i_clk) is
  begin
    if rising_edge(i_clk) then
      if i_enable = '1' then
      	if counter = COUNT_LIMIT - 1 then
      	  o_toggle <= not o_toggle;
      	  counter <= 0;
      	else
      	  counter <= counter + 1;
        end if;
      else
        o_toggle <= '0';
      end if;
    end if;
  end process;


  
end architecture RTL;

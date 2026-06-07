library ieee;
use ieee.std_logic_1164.all;


entity Count_And_Toggle is
  generic(
    MAX_SIZE : integer := 25000000
    );
  port(
    i_Clk : in std_logic;
    i_Enable : in std_logic;
    o_Toggle : out std_logic;
    );
end entity Count_And_Toggle;


architecture RTL of Count_And_Toggle is
  signal w_counter : natural range 0 to MAX_SIZE - 1  := 0;
begin

  process(i_Clk) is

    if i_Enable = '1' then 
      if rising_edge(i_Clk) then
        if w_counter = MAX_SIZE then
          w_counter <= 0;
          o_Toggle <= not o_Toggle;
        else
          w_counter <= w_counter + 1;
        end if;
      end if;
    else
      o_Toggle <= '0';
    end if;
  end process;

  o_Toggle <= w_toggle;

end architecture RTL 

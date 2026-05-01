library ieee;
use ieee.std_logic_1164.all;


entity Count_And_Toggle is
  generic( COUNT_LIMIT : natural);
  port(
    i_clk : in std_logic;
    i_enable : in std_logic;
    o_toggle : out std_logic
    );
end entity Count_And_Toggle;

architecture RTL of Count_And_Toggle is

  signal r_counter : natural range 0 to COUNT_LIMIT - 1;
  signal w_toggle : std_logic := '0';
  
  begin

    process(i_clk) is
    begin
      if rising_edge(i_clk) then
        if i_enable = '1' then
          if r_counter = COUNT_LIMIT - 1 then
            w_toggle <= not w_toggle;
            r_counter <= 0;
          else 
            r_counter <= r_counter + 1;
          end if;
        else
          w_toggle <= '0';
        end if;
      end if;
    end process;

    o_toggle <= w_toggle;

end architecture RTL;

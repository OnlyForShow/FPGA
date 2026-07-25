library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Count_And_Toggle_Impulse is
  generic(
    MAX_SIZE : integer := 25000000
    );
  port(
    i_Clk : in std_logic;
    i_Enable : in std_logic;
    i_Reset : in std_logic;
    o_Toggle : out std_logic
    );
end entity Count_And_Toggle_Impulse;


architecture RTL of Count_And_Toggle_Impulse is
  signal w_counter : natural range 0 to MAX_SIZE/2 - 1  := 0;
  signal w_toggle : std_logic := '0';
  signal w_state : std_logic := '1';
begin

  process(i_Clk) is
  begin

    if i_Reset = '1' then
      w_counter <= 0;
      w_Toggle <= '0';  
      w_state <= '1';
    elsif rising_edge(i_Clk) then
      w_Toggle <= '0';
      if i_Enable = '1' then 
        if w_counter = MAX_SIZE/2 - 1 then
          w_counter <= 0;
          w_state <= not w_state;
          if w_state = '1' then
            w_Toggle <= '1';
          end if;
        else
          w_counter <= w_counter + 1;
        end if;
      else
        w_counter <= 0;
        w_Toggle <= '0';  
        w_state <= '1';
      end if;
    end if;
  end process;

  o_Toggle <= w_toggle;

end architecture RTL;

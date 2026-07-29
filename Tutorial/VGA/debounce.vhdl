library IEEE;
use IEEE.std_logic_1164.all;


entity Debounce is
  generic (DEBOUNCE_LIMIT : integer := 20);
  port(
    i_clk : in std_logic;
    i_Bouncy : in std_logic;
    o_Debounced : out std_logic
    );
end entity Debounce;




architecture RTL of Debounce is
  signal r_Count : integer range 0 to DEBOUNCE_LIMIT := 0;
  signal r_State : std_logic := '0';
begin
  process(i_clk) is
  begin
    if rising_edge(i_clk) then
      if (i_Bouncy /= r_State and r_Count < DEBOUNCE_LIMIT-1) then
        r_Count <= r_Count +1;

      elsif r_Count = DEBOUNCE_LIMIT - 1 then
        r_State <= i_Bouncy;
        r_Count <= 0;

      else
        r_Count <= 0;

      end if;
    end if;
  end process;

  o_Debounced <= r_State;
  
end architecture RTL;

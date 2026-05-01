library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity Debounce_TB is
end entity Debounce_TB;

architecture TestCase of Debounce_TB is
signal r_clk, r_bouncy, w_debounced : std_logic := '0';
begin
  r_clk <= not r_clk after 2 ns;

  UnitUnderTest : entity work.Debounce
    generic map(DEBOUNCE_LIMIT => 4)
    port map(
      i_clk => r_clk,
      i_Bouncy => r_bouncy,
      o_Debounced => w_debounced
      );

    process is
    begin
      wait for 10 ns;
      r_Bouncy <= '1';

      wait until rising_edge(r_clk);
      r_bouncy <= '0';

      wait until rising_edge(r_clk);
      r_bouncy <= '1';

      wait for 24 ns;
      finish;

    end process;
end TestCase;

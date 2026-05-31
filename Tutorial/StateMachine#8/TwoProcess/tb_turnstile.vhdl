library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;



entity turnstile_tb is
end entity turnstile_tb;


architecture test_case of turnstile_tb is
  signal w_reset, w_clk, w_coin, w_push, r1_locked, r2_locked : std_logic := '0';
  signal equal : std_logic;
begin

  w_clk <= not w_clk after 10 ns ;
  
  UUT1 : entity work.Turnstile_Example(TwoProcess)
    port map(
             i_Reset => w_reset,
             i_Clk => w_clk,
             i_Coin => w_coin,
             i_Push => w_push,
             o_Locked => r1_locked
             );

  UUT2 : entity work.Turnstile_Example(OneProcess)
    port map(
             i_Reset => w_reset,
             i_Clk => w_clk,
             i_Coin => w_coin,
             i_Push => w_push,
             o_Locked => r2_locked
             );

  process is
  begin
    w_reset <= '1';
    wait for 20 ns;
    w_reset <= '0';
    w_coin <= '1';
    wait for 20 ns;
    w_coin <= '0';

    w_push <= '1';
    wait for 20 ns;
    w_push <= '0';

    wait for 20 ns;
    
    finish;
    
  end process;

  

  equal <= '1' when r1_locked = r2_locked else 'X';
  
  
end architecture test_case;

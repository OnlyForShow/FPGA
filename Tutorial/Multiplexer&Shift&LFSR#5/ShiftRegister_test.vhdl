library ieee;

use ieee.std_logic_1164.all;
use std.env.finish;

entity shift_TB is
end entity shift_TB;


architecture TestCase of shift_TB is

  signal r_in, r_clk, w_out : std_logic := '0';
  constant test_bit_width : integer := 4;
  
begin


  r_clk <= not r_clk after 2 ns;
  
  UUT : entity work.ShiftReg
    generic map(
      BIT_WIDTH => test_bit_width 
    )
    port map(
      i_in => r_in,
      i_clk => r_clk,
      o_out => w_out
      );
  
  process is
  begin

    wait for 5 ns;
    
    r_in <= '1';
    wait until rising_edge(r_clk);

    assert (w_out = '0')
    report "Test failed: Wrong output";

    wait for 20 ns;
    assert (w_out = '1')
    report "One should be the output";
    
    finish;
    
  end process;
  
end architecture TestCase;

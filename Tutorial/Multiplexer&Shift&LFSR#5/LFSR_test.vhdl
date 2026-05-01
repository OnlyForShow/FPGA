library ieee;

use ieee.std_logic_1164.all;
use std.env.finish;

entity LFSR_TB is
end entity LFSR_TB;


architecture TestCase of LFSR_TB is

  signal r_clk : std_logic := '0';
  constant test_bit_width : integer := 3;
  signal w_out : std_logic_vector(test_bit_width - 1 downto 0) := (others => '0');

begin


  r_clk <= not r_clk after 2 ns;
  
  UUT : entity work.LFSR
    generic map(
      WIDTH => test_bit_width 
    )
    port map(
      i_clk => r_clk,
      o_data => w_out
      );
  
  process is
  begin

    wait for 100 ns;
    
    finish;
    
  end process;
  
end architecture TestCase;

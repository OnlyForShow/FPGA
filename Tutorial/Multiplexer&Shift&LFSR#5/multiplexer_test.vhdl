library ieee;

use ieee.std_logic_1164.all;
use std.env.finish;

entity multiplexer_TB is
end entity multiplexer_TB;


architecture TestCase of multiplexer_TB is

  constant test_bit_width : integer := 8;
  signal r_i1, r_i2, r_i3, r_i4, w_out : std_logic_vector (test_bit_width - 1 downto 0); 
  signal r_select1, r_select2 : std_logic;

begin
  
  UUT : entity work.multiplexer
    generic map(
      BIT_WIDTH => test_bit_width
      )
    port map(
      i_data1 => r_i1,
      i_data2 => r_i2,
      i_data3 => r_i3,
      i_data4 => r_i4,
      i_select1 => r_select1,
      i_select2 => r_select2,
      o_data => w_out);
  
  process is
  begin
    
    r_i1 <= "00110000";
    r_i2 <= "00110011";
    r_i3 <= "11000000";
    r_i4 <= "10101010";

    r_select1 <= '0';
    r_select2 <= '0';
    wait for 10 ns;

    assert (w_out = r_i1)
    report "Test failed: not equal";
    
    r_select1 <= '1';
    r_select2 <= '0';
    wait for 10 ns;

    assert (w_out = r_i2)
    report "Test failed: not equal";
    
    r_select1 <= '0';
    r_select2 <= '1';
    wait for 10 ns;

    assert (w_out = r_i3)
    report "Test failed: not equal";

    r_select1 <= '1';
    r_select2 <= '1';
    wait for 10 ns;

    assert (w_out = r_i1)
    report "Test failed: not equal";
    finish;
    
  end process;
  
end architecture TestCase;

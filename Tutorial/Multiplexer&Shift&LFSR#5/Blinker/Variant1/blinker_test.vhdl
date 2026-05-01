library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity blinker_tb is
end entity blinker_tb;


architecture TestCase of blinker_tb is

  signal r_clk : std_logic := '0';
  constant BIT_WIDTH : integer := 5 ;
  signal w_out : std_logic_vector(BIT_WIDTH-1 downto 0) := (others => '0');
  signal w_done : std_logic;
  
begin

  r_clk <= not r_clk after 2 ns;

  UUT : entity work.LFSR_22
    generic map(
      WIDTH => BIT_WIDTH
      )
    port map(
      i_clk => r_clk,
      o_LFSR_Data => w_out,
      o_LFSR_Done => w_done
      );

    process is
    begin
      wait for 200 ns;
      
      finish;
    end process;
  
end architecture TestCase;

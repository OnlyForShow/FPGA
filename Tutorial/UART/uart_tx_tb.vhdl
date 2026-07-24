library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity uart_tx_tb is
end entity uart_tx_tb;


architecture testcase of uart_tx_tb is

  constant BAUD_RATE : integer := 9600;
  constant CLK_FREQ : integer := 100_000_000;
  constant CLK_PERIOD : time := 1 sec/CLK_FREQ;
  constant BAUD_PERIOD : time := 1 sec/BAUD_RATE;
  
  
  signal r_clk : std_logic := '0';
  signal r_rst : std_logic := '1';
  signal r_en : std_logic := '0';
  signal r_data : std_logic_vector(7 downto 0) := "00000000";
  signal w_read : std_logic;
  signal w_rdy : std_logic;
  
begin

  r_clk <= not r_clk after CLK_PERIOD/2;
  
  UUT : entity work.uart_tx
    generic map(BAUD_RATE => BAUD_RATE,
                CLK_FREQ => CLK_FREQ
                )
    port map(
      i_tx => r_data,
      i_en => r_en,
      i_clk => r_clk,
      i_rst => r_rst,
      o_write => w_read,
      o_rdy => w_rdy
      );

  process is
  begin
    r_rst <= '0';
    wait for BAUD_PERIOD;
    assert w_read = '1' report "output must be 1 since there is no data being sent!";
    --start bit
    r_data <= "00110110";
    r_en <= '1';

    wait for BAUD_PERIOD/2;

    assert w_read = '0' report "Wire be pulled down to ground (0) to signify begin of transmission!";
    
    wait for BAUD_PERIOD/2;
    r_en <= '0'; -- the data to be sent is already stored in uart_tx module via
                 -- buffer
                
    wait for BAUD_PERIOD/2;

    assert w_read = '0' report "1. LSB of 00110110 should be zero";
    wait for BAUD_PERIOD;

    assert w_read = '1' report "2. LSB of 00110110 should be one";
    wait for BAUD_PERIOD;

    assert w_read = '1' report "3. LSB of 00110110 should be one";
    wait for BAUD_PERIOD;

    assert w_read = '0' report "4. LSB of 00110110 should be zero";
    wait for BAUD_PERIOD;

    assert w_read = '1' report "5. LSB of 00110110 should be one";
    wait for BAUD_PERIOD;

    assert w_read = '1' report "6. LSB of 00110110 should be one";
    wait for BAUD_PERIOD;

    assert w_read = '0' report "7. LSB of 00110110 should be zero";
    wait for BAUD_PERIOD;

    assert w_read = '0' report "8. LSB of 00110110 should be zero";
    wait for BAUD_PERIOD;

    assert w_read = '1' report "wire should be high since it signifies ending of data transmission";
    
    wait for BAUD_PERIOD;
    

    finish;
    
  end process;
  
end architecture testcase;

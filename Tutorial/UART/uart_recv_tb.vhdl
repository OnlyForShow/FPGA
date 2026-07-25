library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity uart_recv_tb is
end entity uart_recv_tb;


architecture testcase of uart_recv_tb is

  constant BAUD_RATE : integer := 9600;
  constant CLK_FREQ : integer := 100_000_000;
  constant CLK_PERIOD : time := 1 sec/CLK_FREQ;
  constant BAUD_PERIOD : time := 1 sec/BAUD_RATE;
  
  
  signal r_clk : std_logic := '0';
  signal r_rx, r_rst : std_logic := '1';
  signal w_read : std_logic_vector(7 downto 0) := "00000000";
  signal w_rdy : std_logic := '0';
  
begin

  r_clk <= not r_clk after CLK_PERIOD/2;
  
  UUT : entity work.uart_recv
    generic map(BAUD_RATE => BAUD_RATE,
                CLK_FREQ => CLK_FREQ
                )
    port map(
      i_rx => r_rx,
      i_clk => r_clk,
      i_rst => r_rst,
      o_read => w_read,
      o_rdy => w_rdy
      );

  process is
  begin
    r_rst <= '1';
    wait for BAUD_PERIOD;
    r_rst <= '0';
    wait for BAUD_PERIOD;

    --start bit
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 0 LSB
    r_rx <= '1';
    wait for BAUD_PERIOD;
    
    -- 1 LSB
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 2 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 3 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 4 LSB    
    r_rx <= '1';
    wait for BAUD_PERIOD;

    -- 5 LSB    
    r_rx <= '1';
    wait for BAUD_PERIOD;

    -- 6 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 7 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    --49 dec; 31 hex

    --stop bit
    r_rx <= '1';


    wait for 5*BAUD_PERIOD;

    --start bit
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 0 LSB
    r_rx <= '1';
    wait for BAUD_PERIOD;
    
    -- 1 LSB
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 2 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 3 LSB    
    r_rx <= '1';
    wait for BAUD_PERIOD;

    -- 4 LSB    
    r_rx <= '1';
    wait for BAUD_PERIOD;

    -- 5 LSB    
    r_rx <= '1';
    wait for BAUD_PERIOD;

    -- 6 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- 7 LSB    
    r_rx <= '0';
    wait for BAUD_PERIOD;

    -- dec; C3 hex

    --stop bit
    r_rx <= '1';
    wait for 5*BAUD_PERIOD;    
    
    finish;
    
  end process;
  
end architecture testcase;

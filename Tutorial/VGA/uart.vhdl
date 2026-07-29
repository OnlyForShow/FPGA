library ieee;
use ieee.std_logic_1164.all;

entity uart is
  generic(
    BAUD_RATE : integer := 9600;
    CLK_FREQ : integer := 100_000_000
    );
  port(
    i_data_tx : in std_logic_vector(7 downto 0);
    i_en_tx : in std_logic;
    i_data_rx : in std_logic;
    i_clk : in std_logic;
    i_rst : in std_logic;
    o_data_tx : out std_logic;
    o_rdy_tx : out std_logic;
    o_data_rx : out std_logic_vector(7 downto 0);
    o_rdy_rx : out std_logic
    );
end entity uart;


architecture RTL of uart is

 
  
begin

  receiver : entity work.uart_recv
  generic map(
    BAUD_RATE => BAUD_RATE,
    CLK_FREQ => CLK_FREQ
    )
  port map(
    i_rx => i_data_rx,
    i_clk => i_clk,
    i_rst => i_rst,
    o_read => o_data_rx,
    o_rdy => o_rdy_rx
    );

  transmitter : entity work.uart_tx
  generic map(
    BAUD_RATE => BAUD_RATE,
    CLK_FREQ => CLK_FREQ
    )
  port map(
    i_tx => i_data_tx,
    i_en => i_en_tx,
    i_clk => i_clk,
    i_rst => i_rst,
    o_write => o_data_tx,
    o_rdy => o_rdy_tx
    );
  
end architecture RTL;

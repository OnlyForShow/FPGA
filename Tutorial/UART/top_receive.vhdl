library ieee;
use ieee.std_logic_1164.all;



entity top_receive is
  port(
    i_UART_RX : in std_logic;
    i_clk : in std_logic;
    o_LED_1 : out std_logic;
    o_LED_2 : out std_logic;
    o_LED_3 : out std_logic;
    o_LED_4 : out std_logic;
    o_Segment_A1 : out std_logic;
    o_Segment_B1 : out std_logic;
    o_Segment_C1 : out std_logic;
    o_Segment_D1 : out std_logic;
    o_Segment_E1 : out std_logic;
    o_Segment_F1 : out std_logic;
    o_Segment_G1 : out std_logic;
    o_Segment_A2 : out std_logic;
    o_Segment_B2 : out std_logic;
    o_Segment_C2 : out std_logic;
    o_Segment_D2 : out std_logic;
    o_Segment_E2 : out std_logic;
    o_Segment_F2 : out std_logic;
    o_Segment_G2 : out std_logic
    );
end entity top_receive;


architecture RTL of top_receive is

  constant BAUD_RATE : integer := 9600;
  constant CLK_FREQ : integer := 25_000_000;
  
  signal w_Segment2_A, w_Segment2_B, w_Segment2_C, w_Segment2_D : std_logic; 
  signal w_Segment2_E, w_Segment2_F, w_Segment2_G : std_logic; 

  signal w_Segment1_A, w_Segment1_B, w_Segment1_C, w_Segment1_D : std_logic; 
  signal w_Segment1_E, w_Segment1_F, w_Segment1_G : std_logic;

  signal w_recv_buffer : std_logic_vector(7 downto 0) := "00000000";
  signal w_recv_result : std_logic_vector(7 downto 0) := "00000000";

  signal rx_data_rdy : std_logic := '0';
  
begin

  process(rx_data_rdy, w_recv_buffer) is
  begin
    if rx_data_rdy = '1' then
	w_recv_result <= w_recv_buffer;
    end if;
  end process;
  
  uart_receiver : entity work.uart_recv
  generic map(
    BAUD_RATE => BAUD_RATE,
    CLK_FREQ => CLK_FREQ
    )
  port map(
    i_rx => i_UART_RX,
    i_clk => i_clk,
    i_rst => '0',
    o_read => w_recv_buffer,
    o_rdy => rx_data_rdy
    );

  
  Seven_Segment2 : entity work.Binary_To_7Segment
  port map(
    i_Clk => i_clk,
    i_Binary_Num => w_recv_result(3 downto 0),
    o_Segment_A => w_Segment2_A, 
    o_Segment_B => w_Segment2_B,
    o_Segment_C => w_Segment2_C,
    o_Segment_D => w_Segment2_D,
    o_Segment_E => w_Segment2_E,
    o_Segment_F => w_Segment2_F,
    o_Segment_G => w_Segment2_G   
    );

  Seven_Segment1 : entity work.Binary_To_7Segment
  port map(
    i_Clk => i_clk,
    i_Binary_Num => w_recv_result(7 downto 4),
    o_Segment_A => w_Segment1_A, 
    o_Segment_B => w_Segment1_B,
    o_Segment_C => w_Segment1_C,
    o_Segment_D => w_Segment1_D,
    o_Segment_E => w_Segment1_E,
    o_Segment_F => w_Segment1_F,
    o_Segment_G => w_Segment1_G   
    );

    o_Segment_A2 <= not w_Segment2_A;
    o_Segment_B2 <= not w_Segment2_B;
    o_Segment_C2 <= not w_Segment2_C;
    o_Segment_D2 <= not w_Segment2_D;
    o_Segment_E2 <= not w_Segment2_E;  
    o_Segment_F2 <= not w_Segment2_F;
    o_Segment_G2 <= not w_Segment2_G;

    o_Segment_A1 <= not w_Segment1_A;
    o_Segment_B1 <= not w_Segment1_B;
    o_Segment_C1 <= not w_Segment1_C;
    o_Segment_D1 <= not w_Segment1_D;
    o_Segment_E1 <= not w_Segment1_E;  
    o_Segment_F1 <= not w_Segment1_F;
    o_Segment_G1 <= not w_Segment1_G;

    -- turn all leds off
    o_LED_1 <= '0';
    o_LED_2 <= '0';
    o_LED_3 <= '0';
    o_LED_4 <= '0';

  
end architecture RTL;

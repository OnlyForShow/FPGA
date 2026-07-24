library ieee;
use ieee.std_logic_1164.all;


entity uart_recv is
  generic(
    BAUD_RATE : integer := 9600;
    CLK_FREQ : integer := 100_000_000
    );
  port(
    i_rx : in std_logic;
    i_clk : in std_logic;
    i_rst : in std_logic;
    o_read : out std_logic_vector(7 downto 0);
    o_rdy : out std_logic
    );
end entity uart_recv;


architecture RTL of uart_recv is

  constant SLOW_CLOCK_COUNTER : integer := CLK_FREQ / BAUD_RATE;
  
  type t_state is (wait_for_falling, start_slow_clock, bit_sampling);
  signal r_curr_state, r_next_state : t_state := wait_for_falling;
  
  signal w_enable_counter : std_logic := '0';
  signal w_rdy : std_logic := '1';
  signal wr_baud_clock : std_logic;

  signal w_read_buffer : std_logic_vector(7 downto 0) := "00000000";

  signal r_counter_index : integer range 0 to 8 := 0; 


  
begin

  slow_clk : entity work.Count_And_Toggle
  generic map(
    MAX_SIZE => SLOW_CLOCK_COUNTER
    )
  port map(
    i_Clk => i_clk,
    i_Enable => w_enable_counter,
    o_Toggle => wr_baud_clock
    );


  process(i_clk, i_rst) is
  begin
    if i_rst = '1' then
      r_curr_state <= wait_for_falling;
    elsif rising_edge(i_clk) then
      r_curr_state <= r_next_state;
    end if;
  end process;

  process(r_curr_state, wr_baud_clock, i_rx) is
  begin
    r_next_state <= r_curr_state;
    
    case r_curr_state is

      when wait_for_falling =>
        if falling_edge(i_rx) then
          r_next_state <= start_slow_clock;
          w_enable_counter <= '1';
          w_rdy <= '0';
          r_counter_index <= 0;
          w_read_buffer <= "00000000";
        end if;

      when start_slow_clock =>
        if rising_edge(wr_baud_clock) then
          r_next_state <= bit_sampling;
        end if;   
        
      when bit_sampling =>
        if rising_edge(wr_baud_clock) then
          if r_counter_index = 8 then
            w_rdy <= '1';
            w_enable_counter <= '0';
            r_next_state <= wait_for_falling;
          else
            w_read_buffer(r_counter_index) <= i_rx;
            r_counter_index <= r_counter_index + 1;
          end if;
        end if;
          
        
        
    end case;
  end process;

  o_read <= w_read_buffer;
  o_rdy <= w_rdy;
  
end architecture RTL;

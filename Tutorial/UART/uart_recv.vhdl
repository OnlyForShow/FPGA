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
  
  type t_state is (WAITFORFALLING, STARTSLOWCLOCK, BITSAMPLING);
  signal r_curr_state, r_next_state : t_state;
  
  signal w_enable_counter : std_logic := '0';
  signal w_rdy : std_logic := '1';
  signal wr_baud_clock : std_logic;

  signal w_read_buffer : std_logic_vector(7 downto 0) := "00000000";

  signal r_counter_index : integer range 0 to 7 := 0; 

  signal old_i_rx, next_i_rx : std_logic := '1';
  signal old_wr_baud_clock, next_wr_baud_clock : std_logic;
  
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

  process(i_rx, wr_baud_clock, next_i_rx, next_wr_baud_clock) is
  begin
    old_i_rx <= next_i_rx;
    next_i_rx <= i_rx;

    old_wr_baud_clock <= next_wr_baud_clock;
    next_wr_baud_clock <= wr_baud_clock;
  end process;
  


  process(i_clk, i_rst) is
  begin
    if i_rst = '1' then
      r_curr_state <= WAITFORFALLING;
    elsif rising_edge(i_clk) then
      r_curr_state <= r_next_state;
    end if;
  end process;

  
  process(r_curr_state, wr_baud_clock, i_rx) is
  begin
    r_next_state <= r_curr_state;

        
    case r_curr_state is

      when WAITFORFALLING =>
        if old_i_rx = '1' and next_i_rx = '0' then
          r_next_state <= STARTSLOWCLOCK;
          w_enable_counter <= '1';
          w_rdy <= '0';
          r_counter_index <= 0;
          w_read_buffer <= "00000000";
        end if;

      when STARTSLOWCLOCK =>
        if old_wr_baud_clock = '0' and next_wr_baud_clock = '1' then
          r_next_state <= BITSAMPLING;
        end if;   
        
      when BITSAMPLING =>
        if old_wr_baud_clock = '0' and next_wr_baud_clock = '1' then
          if r_counter_index = 7 then
            w_read_buffer(r_counter_index) <= i_rx;
            w_rdy <= '1';
            w_enable_counter <= '0';
            r_next_state <= WAITFORFALLING;
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

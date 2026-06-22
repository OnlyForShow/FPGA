library ieee;
use ieee.std_logic_1164.all;


entity uart is
  generic(
    CLK_BIT : integer
    );
  port(
    i_rx : in std_logic;
    i_clk : in std_logic;
    i_rst : in std_logic;
    o_read : out std_logic_vector(7 downto 0);
    o_rdy : out std_logic
    );
end entity uart;


architecture RTL of uart is

  type t_state is (wait_for_falling, start_recording);
  signal r_curr_state, r_next_state : t_state;
  
  signal w_enable_counter : std_logic := '0';
  signal wr_baud_clock : std_logic;

  signal w_read_buffer : std_logic_vector(9 downto 0) := "00000000";

  signal r_counter_index : integer range 0 to 7 := 0; 
  
begin

  slow_clk : entity work.Count_And_Toggle
  generic map(
    MAX_SIZE => CLK_BIT
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
          r_next_state <= start_recording;
          w_enable_counter <= '1';
        end if;

      when start_recording =>
        if falling_edge(wr_baud_clock) then
          if r_counter_index = 7 then
            o_rdy <= '1';
            w_enable_counter <= '0';
            r_next_state <= wait_for_falling;
          else
            w_read_buffer(r_counter_index) <= i_rx;
            r_counter_index <= r_counter_index + 1;
          end if;
        end if;
          
        
        
    end case;
  end process;

  o_read <= w_read_buffer(9 downto 2);

end architecture RTL;

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
  
  type t_state is (WAITFORFALLING, STARTSLOWCLOCK, BITSAMPLING, STOPBIT);
  signal r_curr_state, r_next_state : t_state := WAITFORFALLING;
  

  signal w_rdy : std_logic := '0';
   
  signal wr_baud_toggle : std_logic := '0';

  signal w_enable_counter : std_logic := '0';

  signal next_w_enable_counter : std_logic := '0';
  

  signal w_read_buffer : std_logic_vector(7 downto 0) := "00000000";
  signal next_w_read_buffer : std_logic_vector(7 downto 0) := "00000000";


  
  signal r_counter_index : integer range 0 to 7 := 0; 
  signal next_r_counter_index : integer range 0 to 7 := 0; 


  
begin

  slow_clk : entity work.Count_And_Toggle_Impulse
  generic map(
    MAX_SIZE => SLOW_CLOCK_COUNTER
    )
  port map(
    i_Clk => i_clk,
    i_Enable => w_enable_counter,
    o_Toggle => wr_baud_toggle
    );


  process(i_clk, i_rst) is
  begin
    if i_rst = '1' then
      r_curr_state <= WAITFORFALLING;
    elsif rising_edge(i_clk) then
      r_curr_state <= r_next_state;

      r_counter_index <= next_r_counter_index;
      
      w_read_buffer <= next_w_read_buffer;
      w_enable_counter <= next_w_enable_counter;
      
    end if;
  end process;

  

  process(r_curr_state, wr_baud_toggle, i_rx) is
  begin
    
    r_next_state <= r_curr_state;
    next_w_read_buffer <= w_read_buffer;
    next_r_counter_index <= r_counter_index;
    next_w_enable_counter <= w_enable_counter;


    w_rdy <= '0';
    

    case r_curr_state is

      when WAITFORFALLING =>
        if i_rx = '0' then
          r_next_state <= STARTSLOWCLOCK;
          next_w_enable_counter <= '1';
          next_r_counter_index <= 0;
          next_w_read_buffer <= "00000000";
        end if;

      when STARTSLOWCLOCK =>
        if wr_baud_toggle = '1' then
          if i_rx = '0' then
            r_next_state <= BITSAMPLING;
          else -- startbit is not zero, so transmission is invalid
            r_next_state <= WAITFORFALLING;
          end if;
        end if;
        
      when BITSAMPLING =>
        if wr_baud_toggle = '1' then
          if r_counter_index = 7 then
            
            next_w_read_buffer(r_counter_index) <= i_rx;
            r_next_state <= STOPBIT;
          else
            next_w_read_buffer(r_counter_index) <= i_rx;
            next_r_counter_index <= r_counter_index + 1;
          end if;
        end if;

      when STOPBIT =>
        if wr_baud_toggle = '1' then
          r_next_state <= WAITFORFALLING;
          next_w_enable_counter <= '0';
          if i_rx = '1' then
            w_rdy <= '1';
          end if;
        end if;
        
    end case;
  end process;

  o_read <= w_read_buffer;
  o_rdy  <= w_rdy;
  
end architecture RTL;

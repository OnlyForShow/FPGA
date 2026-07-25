library ieee;
use ieee.std_logic_1164.all;


entity uart_tx is
  generic(
    BAUD_RATE : integer := 9600;
    CLK_FREQ : integer := 100_000_000
    );
  port(
    i_tx : in std_logic_vector(7 downto 0);
    i_en : in std_logic;
    i_clk : in std_logic;
    i_rst : in std_logic;
    o_write : out std_logic;
    o_rdy : out std_logic
    );
end entity uart_tx;


architecture RTL of uart_tx is

  constant SLOW_CLOCK_COUNTER : integer := CLK_FREQ / BAUD_RATE;
  
  type t_state is (WAIT_FOR_RISING_EN, PREPARE_BAUD_CLOCK ,BIT_ENCODING, BIT_STOP);
  signal r_curr_state, r_next_state : t_state;
  

  signal w_rdy : std_logic := '0';
  signal wr_baud_toggle : std_logic := '0';

  signal w_enable_counter : std_logic := '0';
  signal next_w_enable_counter : std_logic := '0';

  signal r_read_buffer : std_logic_vector(7 downto 0) := "00000000";
  signal next_r_read_buffer : std_logic_vector(7 downto 0) := "00000000";
  
  signal w_write_bit : std_logic := '1';
  signal next_w_write_bit : std_logic := '1';
  
  signal r_counter_index : integer range 0 to 7 := 0; 
  signal next_r_counter_index : integer range 0 to 7 := 0; 

  signal w_reset_baud_clock : std_logic := '0';
  signal next_w_reset_baud_clock : std_logic := '0';
  
begin

  slow_clk : entity work.Count_And_Toggle_Impulse
  generic map(
    MAX_SIZE => SLOW_CLOCK_COUNTER
    )
  port map(
    i_Clk => i_clk,
    i_Enable => w_enable_counter,
    i_Reset => w_reset_baud_clock,
    o_Toggle => wr_baud_toggle
    );


  process(i_clk, i_rst) is
  begin
    if i_rst = '1' then
      r_curr_state <= WAIT_FOR_RISING_EN;
    elsif rising_edge(i_clk) then
      r_curr_state <= r_next_state;

      w_enable_counter <= next_w_enable_counter;

      w_write_bit <= next_w_write_bit;

      r_counter_index <= next_r_counter_index;

      r_read_buffer <= next_r_read_buffer;

      w_reset_baud_clock <= next_w_reset_baud_clock;
      
    end if;
  end process;

  process(r_curr_state, wr_baud_toggle, i_en, i_tx, w_enable_counter, w_write_bit, r_counter_index) is
  begin
    r_next_state <= r_curr_state;
    next_w_write_bit <= w_write_bit;
    next_r_counter_index <= r_counter_index;
    next_r_read_buffer <= r_read_buffer;
    next_w_reset_baud_clock <= w_reset_baud_clock;
    
    w_rdy <= '0';
    
    next_w_reset_baud_clock <= '0';
    
    case r_curr_state is

      when WAIT_FOR_RISING_EN =>
        if i_en = '1' then
          r_next_state <= PREPARE_BAUD_CLOCK;
          next_w_enable_counter <= '1';
          next_r_counter_index <= 0;
          
          next_w_write_bit <= '0';
          next_r_read_buffer <= i_tx;
        else
          next_w_enable_counter <= '0';
        end if;

        
      when PREPARE_BAUD_CLOCK =>
        if wr_baud_toggle = '1' then
          next_w_reset_baud_clock <= '1';
          r_next_state <= BIT_ENCODING;
        end if;
        
      when BIT_ENCODING =>
        if wr_baud_toggle = '1' then
          if r_counter_index = 7 then
            next_w_write_bit <= r_read_buffer(r_counter_index);
            r_next_state <= BIT_STOP;
          else
            next_w_write_bit <= r_read_buffer(r_counter_index);
            next_r_counter_index <= r_counter_index + 1;
          end if;
        end if;
          

      when BIT_STOP =>
        if wr_baud_toggle = '1' then
            w_rdy <= '1';
            next_w_write_bit <= '1';
            r_next_state <= WAIT_FOR_RISING_EN;
        end if;

        
    end case;
  end process;

  o_write <= w_write_bit;
  o_rdy <= w_rdy;
  
end architecture RTL;

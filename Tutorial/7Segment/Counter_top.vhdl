library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Counter_Top is
  port(
    i_btn : in std_logic;
    i_clk : in std_logic;
    o_Segment_A2 : out std_logic;
    o_Segment_B2 : out std_logic;
    o_Segment_C2 : out std_logic;
    o_Segment_D2 : out std_logic;
    o_Segment_E2 : out std_logic;
    o_Segment_F2 : out std_logic;
    o_Segment_G2 : out std_logic
    );
end entity Counter_Top;


architecture RTL of Counter_Top is
  constant DEBOUNCE_LIMIT : integer := 25000000; -- 10 ms debounce filter
  constant BIT_WIDTH : integer := 4;
  
  signal w_Switch : std_logic;
  signal w_Counter : unsigned(BIT_WIDTH-1 downto 0);
begin

  Debouncer : entity work.Debounce
  generic map(
    DEBOUNCE_LIMIT => DEBOUNCE_LIMIT
    )
    port map(
      i_clk => i_clk,
      i_Bouncy => i_btn,
      o_Debounced => w_Switch
      );

  Main_Counter : entity work.Counter
  generic map(
    BIT_WIDTH => BIT_WIDTH
    )
  port map(
    i_Clk => w_Switch,
    i_Enable => '1',
    o_counter => w_Counter
  );

  Seven_Segment : entity work.Binary_To_7Segment
  port(
    i_Clk => i_clk,
    i_Binary_Num => std_logic_vector(w_Counter),
    o_Segment_A => o_Segment_A2, 
    o_Segment_B => o_Segment_B2,
    o_Segment_C => o_Segment_C2,
    o_Segment_D => o_Segment_D2,
    o_Segment_E => o_Segment_E2,
    o_Segment_F => o_Segment_F2,
    o_Segment_G => o_Segment_G2   
    );

end architecture RTL;
    


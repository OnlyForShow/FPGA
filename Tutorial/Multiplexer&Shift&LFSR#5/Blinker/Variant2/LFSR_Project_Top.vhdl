library ieee;
use ieee.std_logic_1164.all;


entity LFSR_Project_Top is
  port(
    i_clk : in std_logic;
    i_switch_1 : in std_logic;
    i_switch_2 : in std_logic;
    o_led_1 : out std_logic;
    o_led_2 : out std_logic;
    o_led_3 : out std_logic;
    o_led_4 : out std_logic
    );
end entity LFSR_Project_Top;


architecture RTL of LFSR_Project_Top is


  constant COUNT_LIMIT : integer := 50000000;
  signal w_Counter_Toggle : std_logic;

  begin

    Counter : entity work.Count_And_Toggle
      generic map(
        COUNT_LIMIT => COUNT_LIMIT
        )
      port map(
        i_clk => i_clk,
        i_enable => '1',
        o_toggle => w_Counter_Toggle
        );


    o_led_1 <= w_Counter_Toggle when i_switch_1 = '0' and i_switch_2 = '0' else '0';
    o_led_2 <= w_Counter_Toggle when i_switch_1 = '1' and i_switch_2 = '0' else '0';
    o_led_3 <= w_Counter_Toggle when i_switch_1 = '0' and i_switch_2 = '1' else '0';
    o_led_4 <= w_Counter_Toggle when i_switch_1 = '1' and i_switch_2 = '1' else '0';
    
end architecture RTL;    

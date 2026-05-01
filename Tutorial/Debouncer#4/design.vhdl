library IEEE;
use IEEE.std_logic_1164.all;

entity Debounce_Project is
  port(
    i_clk : in std_logic;
    i_Switch_1 : in std_logic;
    o_LED_1 : out std_logic
    );
end entity Debounce_Project;

architecture RTL of Debounce_Project is
  signal w_Debounced_switch : std_logic;
  begin
    Debounce_Inst : entity work.Debounce
    	generic map(
    	  DEBOUNCE_LIMIT => 250000)
    	  port map(
    	    i_clk => i_clk,
    	    i_Bouncy => i_Switch_1,
    	    o_Debounced => w_Debounced_switch
            );
    
    LED_Toggle_Inst : entity work.led_toggle
      port map(
        i_clk => i_clk,
        i_switch_1 => w_Debounced_switch,
        o_led_1 => o_LED_1);

end architecture RTL;

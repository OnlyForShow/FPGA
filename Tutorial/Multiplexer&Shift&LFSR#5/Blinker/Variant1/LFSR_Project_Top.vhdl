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
  signal r_LFSR_Toggle : std_logic := '0';
  signal w_LFSR_Done : std_logic;

  begin

    LFSR_22 : entity work.LFSR_22
      port map(
        i_clk => i_clk,
        o_LFSR_Data => open, -- unconnected
        o_LFSR_Done => w_LFSR_Done
        );

    process (i_clk) is
    begin
      if rising_edge(i_clk) then
        if w_LFSR_Done = '1' then
          r_LFSR_Toggle <= not r_LFSR_Toggle;
        end if;
      end if;
    end process;

    o_led_1 <= r_LFSR_Toggle when i_switch_1 = '0' and i_switch_2 = '0' else '0';
    o_led_2 <= r_LFSR_Toggle when i_switch_1 = '1' and i_switch_2 = '0' else '0';
    o_led_3 <= r_LFSR_Toggle when i_switch_1 = '0' and i_switch_2 = '1' else '0';
    o_led_4 <= r_LFSR_Toggle when i_switch_1 = '1' and i_switch_2 = '1' else '0';
    
end architecture RTL;    

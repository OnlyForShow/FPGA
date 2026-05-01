library IEEE;
use IEEE.std_logic_1164.all; 
use std.env.finish;


entity and_gate_TB is
end entity and_gate_TB;


architecture behave of and_gate_TB is
    signal r_in1, r_in2, w_out : std_logic;

    
    UUT : entity work.and_gate_project
        port map(
            i_switch_1 => r_in1,
            i_switch_2 => r_in2,
            o_led_1 => w_out
            );

    process is
    begin
        r_in1 <= '0';
        r_in2 <= '0';
        wait for 10 ns;
        r_in1 <= '1';
        r_in2 <= '0';
        wait for 10 ns;
        r_in1 <= '0';
        r_in2 <= '1';
        wait for 10 ns;
        r_in1 <= '1';
        r_in2 <= '1';
        wait for 10 ns;
        wait for 10 ns;
        finish;
    end process;
end architecture behave;

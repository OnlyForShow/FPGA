library ieee;
use ieee.std_logic_1164.all;

entity bubbleSortCPU is
    port(
            i_memory_pointer_1 : in std_vector(7 downto 0); 
            i_memory_pointer_2 : in std_vector(7 downto 0);
            i_clk              : in std_lo(7 downto 0);
            );
end entity bubbleSortCPU;


architecture internalSortCPU of bubbleSortCPU is
    signal r_counter : std_logic;
    signal r_counter2 : std_logic;
begin
    
end
end architecture internalSortCPU;

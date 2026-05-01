library ieee;
use ieee.std_logic_1164.all;

entity LFSR_22 is
  generic(
    WIDTH : integer := 22
    );
  port(
    i_clk : in std_logic;
    o_LFSR_Data : out std_logic_vector(WIDTH-1 downto 0);
    o_LFSR_Done : out std_logic
    );
end entity LFSR_22;


architecture RTL of LFSR_22 is
  signal r_memory : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
begin

  process (i_clk) is
    begin
      if rising_edge(i_clk) then
        r_memory(WIDTH - 1 downto 1) <= r_memory(WIDTH - 2 downto 0);
        r_memory(0) <= r_memory(WIDTH-1) xnor r_memory(WIDTH-2);
      end if;
  end process;

  o_LFSR_Data <= r_memory;

  o_LFSR_Done <= '1' when r_memory = (r_memory'range => '0') else '0';
      -- r_memory'range expands to (WIDTH-1 downto 0)  
end architecture RTL;

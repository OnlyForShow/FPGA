library ieee;
use ieee.std_logic_1164.all;

entity LFSR is
  generic(
    WIDTH : integer := 3
    );
  port(
    i_clk : in std_logic;
    o_data : out std_logic_vector(WIDTH - 1 downto 0)
    );

end entity LFSR;

architecture RTL of LFSR is
  signal r_state : std_logic_vector(WIDTH - 1 downto 0) := (others => '0');

  begin

  process(i_clk) is
  begin
    if rising_edge(i_clk) then
    r_state(0) <= r_state(WIDTH - 1) xnor r_state(WIDTH - 2);
    r_state(WIDTH-1 downto 1)  <= r_state(WIDTH-2 downto 0);
    end if;
  end process;
  o_data <= r_state;
end architecture RTL;

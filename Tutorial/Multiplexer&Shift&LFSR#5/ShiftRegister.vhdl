library ieee;
use ieee.std_logic_1164.all;


entity ShiftReg is
  generic(
    BIT_WIDTH : integer := 4;
    );
  port(
    i_in : in std_logic;
    i_clk : in std_logic;
    o_out : out std_logic
    );
end entity ShiftReg;

architecture RTL of ShiftReg is
  signal r_shift : std_logic_vector(BIT_WIDTH - 1 downto 0) := (others => '0');
  begin
  process(i_clk)
  begin
    if rising_edge(i_clk) then
      r_shift(0) <= i_in;
      r_shift(BIT_WIDTH - 1 downto 1) <= r_shift(BIT_WIDTH - 2 downto 0);
    end if;

  end process;

  o_out <= r_shift(BIT_WIDTH - 1);
end architecture; 

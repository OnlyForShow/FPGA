library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DEC_Counter is
  port(
    i_Clk : in std_logic;
    i_Enable : in std_logic;
    i_Reset : in std_logic;
    o_DEC_Least_Significant : out std_logic_vector(3 downto 0);
    o_DEC_Most_Significant : out std_logic_vector(3 downto 0)
    );
end entity DEC_Counter;

architecture RTL of DEC_Counter is
  signal w_least_significant : natural range 0 to 9;
  signal w_most_significant : natural range 0 to 9;

begin

 
  process(i_Clk, i_Reset) is
  begin

    if i_Reset = '1' then
      w_least_significant <= 0;
      w_most_significant <= 0;
    elsif rising_edge(i_Clk) then
      if i_Enable = '1' then

        if w_least_significant = 9 then
          w_least_significant <= 0;

          if w_most_significant = 9 then
            w_most_significant <= 0;
          else 
            w_most_significant <= w_most_significant + 1;
          end if;

        else
          w_least_significant <= w_least_significant + 1;
        end if;


      end if;
    end if;
  end process;


  o_DEC_Least_Significant <= std_logic_vector(to_unsigned(w_least_significant, o_DEC_Least_Significant'length));
  o_DEC_Most_Significant <= std_logic_vector(to_unsigned(w_most_significant,o_DEC_Most_Significant'length));



  
end architecture RTL;

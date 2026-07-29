library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync_pulse is
  generic(
    g_total_cols : integer;
    g_total_rows : integer;
    g_active_cols : integer;
    g_active_rows : integer
    );
  port(
    i_Clk : in std_logic;
    o_HSync : out std_logic;
    o_VSync : out std_logic;
    o_Row_Count : out std_logic_vector(9 downto 0);
    o_Col_Count : out std_logic_vector(9 downto 0)
    );
end entity vga_sync_pulse;


architecture Simple of vga_sync_pulse is
  signal r_counter_hsync : natural range 0 to g_total_cols-1; 
  signal r_counter_vsync : natural range 0 to g_total_rows-1;
  
begin

  p_count : process(i_Clk) is
  begin
    if rising_edge(i_Clk) then

      if r_counter_hsync = g_total_cols-1 then
        if r_counter_vsync = g_total_rows-1 then
          r_counter_vsync <= 0;
        else
          r_counter_vsync <= r_counter_vsync + 1;
        end if;
        
        r_counter_hsync <= 0;

      else
        r_counter_hsync <= r_counter_hsync + 1;
      end if;
    end if;
  end process p_count;

  o_HSync <= '1' when r_counter_hsync < g_active_cols else '0';
  o_VSync <= '1' when r_counter_vsync < g_active_rows else '0';
  
  o_Row_Count <= std_logic_vector(to_unsigned(r_counter_vsync, o_Row_Count'length));
  o_Col_Count <= std_logic_vector(to_unsigned(r_counter_hsync, o_Col_Count'length));


  
end architecture Simple;

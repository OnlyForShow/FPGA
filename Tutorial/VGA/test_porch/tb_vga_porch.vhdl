library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;


entity vga_porch_tb is
end entity vga_porch_tb;


architecture test_case of vga_porch_tb is
  constant g_total_cols : integer := 800;
  constant g_total_rows : integer := 525;
  constant g_active_cols : integer := 640;
  constant g_active_rows : integer := 480;

  signal r_Clk : std_logic := '0';

  signal w_HSync, w_VSync : std_logic;
  signal w_HSync2, w_VSync2 : std_logic;
  signal w_Row_Count, w_Col_Count : std_logic_vector(9 downto 0) := (others => '0');

  signal w_Red, w_Grn, w_Blu : std_logic_vector(2 downto 0);
  
begin

  r_Clk <= not r_Clk after 20 ns; -- 2*20ns => 25 MHz Clock
  
  sync_generator : entity work.vga_sync_pulse(Simple)
  generic map(
    g_total_cols => g_total_cols,
    g_total_rows => g_total_rows,
    g_active_cols => g_active_cols,
    g_active_rows => g_active_rows
    )
  port map(
    i_Clk => r_Clk,
    o_HSync => w_HSync,
    o_VSync => w_VSync,
    o_Row_Count => w_Row_Count,
    o_Col_Count => w_Col_Count
    );


  UUT : entity work.vga_sync_porch(RTL)
  generic map(
    g_video_width => 3,
    g_total_cols => g_total_cols,
    g_total_rows => g_total_rows,
    g_active_cols => g_active_cols,
    g_active_rows => g_active_rows
    )
  port map(
    i_Clk => r_Clk,
    i_HSync => w_HSync,
    i_VSync => w_VSync,
    i_Red_Video => "111",
    i_Grn_Video => "111",
    i_Blu_Video => "111",
    --
    o_HSync => w_HSync2,
    o_VSync => w_VSync2,
    o_Red_Video => w_Red,
    o_Grn_Video => w_Grn,
    o_Blu_Video => w_Blu
    );

  process is
  begin
    wait for 20 ms;
    finish;
  end process;
  
  

end architecture test_case;

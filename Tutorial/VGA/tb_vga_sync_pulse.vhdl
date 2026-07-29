library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;

entity vga_sync_pulse_tb is
end entity vga_sync_pulse_tb;

architecture test_case of vga_sync_pulse_tb is

  constant g_total_cols : integer := 800;
  constant g_total_rows : integer := 525;
  constant g_active_cols : integer := 640;
  constant g_active_rows : integer := 480;

  signal r_Clk : std_logic := '0';

  signal w_HSync, w_VSync : std_logic;
  signal w_Row_Count, w_Col_Count : std_logic_vector(9 downto 0) := (others => '0');
  constant g_total_cols : integer := 800;
  constant g_total_rows : integer := 525;
  constant g_active_cols : integer := 640;
  constant g_active_rows : integer := 480;

  signal r_Clk : std_logic := '0';

  signal w_HSync, w_VSync : std_logic;
  signal w_Row_Count, w_Col_Count : std_logic_vector(9 downto 0) := (others => '0');

begin

  r_Clk <= not r_Clk after 20 ns; -- 2*20ns => 25 MHz Clock

  
  UUT : entity work.vga_sync_pulse(Simple)
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


  
  test : process is
  begin
    wait for 20 ms;
    finish;
  end process;


  
  
end architecture test_case;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_sync_porch is
    generic(
    g_video_width : integer;
    g_total_cols : integer;
    g_total_rows : integer;
    g_active_cols : integer;
    g_active_rows : integer
  );
  port(
    i_Clk : in std_logic;
    i_HSync : in std_logic;
    i_VSync : in std_logic;
    i_Red_Video : in std_logic_vector(g_video_width-1 downto 0);
    i_Grn_Video : in std_logic_vector(g_video_width-1 downto 0);
    i_Blu_Video : in std_logic_vector(g_video_width-1 downto 0);
    --
    o_HSync : out std_logic;
    o_VSync : out std_logic;
    o_Red_Video : out std_logic_vector(g_video_width-1 downto 0);
    o_Grn_Video : out std_logic_vector(g_video_width-1 downto 0);
    o_Blu_Video : out std_logic_vector(g_video_width-1 downto 0)
    );

end entity vga_sync_porch;


architecture RTL of vga_sync_porch is

  constant c_hsync_front_max : integer := 18;  
  constant c_hsync_back_min : integer := 18+92;
  constant c_hsync_back_max : integer := 18+92+50;
  
  constant c_vsync_front_max : integer := 10;
  constant c_vsync_back_min : integer := 10+2;
  constant c_vsync_back_max : integer := 10+2+33;

  constant c_hsync_counter_max : integer := g_total_cols-g_active_cols;
  constant c_vsync_counter_max : integer := g_total_rows-g_active_rows;

  
  signal r_hsync_counter : integer range 0 to c_hsync_counter_max;
  signal r_vsync_counter : integer range 0 to c_vsync_counter_max;

  signal w_HSync_active, w_VSync_active : std_logic;
  
begin

  process(i_Clk) is
  begin
    if rising_edge(i_Clk) then
      if i_HSync = '1' then
        r_hsync_counter <= 0;

      else

        if r_hsync_counter = c_hsync_counter_max-1 then
          r_vsync_counter <= r_vsync_counter + 1;
          r_hsync_counter <= 0;
        else
          r_hsync_counter <= r_hsync_counter + 1;
        end if;
        
        
      end if;

      if i_VSync = '1' then
        r_vsync_counter <= 0;
      else
        
        if r_vsync_counter = c_vsync_counter_max-1 then
          r_vsync_counter <= 0;
        end if;
        
      end if;
      
    end if;
  end process;

  w_HSync_active <= '1' when r_hsync_counter < c_hsync_front_max or (c_hsync_back_min < r_hsync_counter and r_hsync_counter < c_hsync_back_max) else '0'; 
  w_VSync_active <= '1' when r_vsync_counter < c_vsync_front_max or (c_vsync_back_min < r_vsync_counter and r_vsync_counter < c_vsync_back_max) else '0';  

  

  o_HSync <= w_HSync_active;  
  o_VSync <= w_VSync_active;

  o_Red_Video <= i_Red_Video when (i_HSync and i_VSync) = '1' else "000";
  o_Grn_Video <= i_Grn_Video when (i_HSync and i_VSync) = '1' else "000";
  o_Blu_Video <= i_Blu_Video when (i_HSync and i_VSync) = '1' else "000";
  
    
end architecture RTL;

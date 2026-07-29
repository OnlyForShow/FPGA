library ieee;
use ieee.std_logic_1164.all;

entity test_pattern_gen is
  generic(
    g_video_width : integer;
    g_total_cols : integer;
    g_total_rows : integer;
    g_active_cols : integer;
    g_active_rows : integer
  );
  port(
    i_Clk : in std_logic;
    i_Pattern : in std_logic_vector(3 downto 0);
    i_HSync : in std_logic;
    i_VSync : in std_logic;
    i_Row_Count : in std_logic_vector(9 downto 0);
    i_Col_Count : in std_logic_vector(9 downto 0);
    --
    o_HSync : out std_logic;
    o_VSync : out std_logic;
    o_Red_Video : out std_logic_vector(g_video_width-1 downto 0);
    o_Grn_Video : out std_logic_vector(g_video_width-1 downto 0);
    o_Blu_Video : out std_logic_vector(g_video_width-1 downto 0);
    );
    
end entity test_pattern_gen;

architecture RTL of test_pattern_gen is

  r_Red_Video, r_Grn_Video, r_Blue_Video : std_logic_vector(g_video_width-1 downto 0);

  
    
begin

  process(i_Clk) is
  begin

    if rising_edge(i_Clk) then

      if i_Pattern = "0000" then --black screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "0001" then -- orange screen
        r_Red_Video <= "111";
        r_Grn_Video <= "111";
        r_Blu_Video <= "000";
      elsif i_Pattern = "0010" then -- red screen
        r_Red_Video <= "111";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "0011" then -- green screen
        r_Red_Video <= "000";
        r_Grn_Video <= "111";
        r_Blu_Video <= "000";
      elsif i_Pattern = "0100" then -- blue screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "111";
      elsif i_Pattern = "0101" then --  chees screen

        if i_Row_Count(4) = '1' and i_Col_Count(4) = '1' then 
          r_Red_Video <= "000";
          r_Grn_Video <= "000";
          r_Blu_Video <= "000";
        else
          r_Red_Video <= "111";
          r_Grn_Video <= "111";
          r_Blu_Video <= "111";          
        end if;
      elsif i_Pattern = "0110" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "0111" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1000" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1001" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1010" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1011" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1100" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1101" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";
      elsif i_Pattern = "1110" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";                   
      elsif i_Pattern = "1111" then --  screen
        r_Red_Video <= "000";
        r_Grn_Video <= "000";
        r_Blu_Video <= "000";                           
      end if;
    end if;
  end process;
  


  o_Red_Video <= r_Red_Video;
  o_Grn_Video <= r_Grn_Video;
  o_Blu_Video <= r_Blue_Video;
    
  o_HSync <= i_HSync;
  o_VSync <= i_VSync;
  
end architecture RTL;

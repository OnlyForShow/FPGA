library ieee;
use ieee.std_logic_1164.all;
use std.env.finish;
use work.pkg.all;

entity ram_tb is
end entity ram_tb;

architecture test_case of ram_tb is
  constant test_width : integer := 16;
  constant test_depth : integer := 256;

  constant depth_bit : natural := 4;
  
  signal w_global_clk : std_logic := '0';

  signal w_wr_data : std_logic_vector(test_width - 1 downto 0);
  signal r_rd_data : std_logic_vector(test_width - 1 downto 0);
  
  signal w_wr_addr : std_logic_vector(depth_bit - 1 downto 0);
  signal w_rd_addr : std_logic_vector(depth_bit - 1 downto 0);

  signal w_en_wr : std_logic := '0';
  signal w_en_rd : std_logic := '0';

    
    
begin

  w_global_clk <= not w_global_clk after 2 ns;

  UUT : entity work.RAM
    generic map(WIDTH => test_width,
                DEPTH => test_depth)
    port map(
      i_Wr_Clk => w_global_clk,
      i_Wr_Addr => w_wr_addr,
      i_Wr_DV => w_en_wr,
      i_Wr_Data => w_wr_data,
      i_Rd_Clk => w_global_clk,
      i_Rd_Addr => w_rd_addr,
      i_Rd_En => w_en_rd,
      o_Rd_DV => open,
      o_Rd_Data => r_rd_data
      );

  process is
  begin
    

    wait until falling_edge(w_global_clk);
    w_wr_addr <= "0010";
    w_wr_data <= "0000111100001111";

    w_en_wr <= '1';
    wait until falling_edge(w_global_clk);
    
    w_wr_addr <= "0100";
    w_wr_data <= (others => '1');
    
    
    wait until falling_edge(w_global_clk);
    w_wr_data <= (others => 'U');
    w_wr_addr <= (others => 'U');
    w_en_wr <= '0'; -- disable writing
    w_en_rd <= '1'; -- enable reading
    w_rd_addr <= "0100";
    
    wait until falling_edge(w_global_clk);

    w_rd_addr <= "0010";
    
    wait until falling_edge(w_global_clk);

    w_en_rd <= '0';

    wait until falling_edge(w_global_clk);
    

    finish;
    
  end process;
  
end architecture test_case;


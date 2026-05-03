library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is 
    generic(
        WIDTH : integer := 16;
        DEPTH : integer := 256
        );
    port(
        -- Write Signals
        i_Wr_Clk : in std_logic;
        i_Wr_Addr : in std_logic_vector;
        i_Wr_DV : in std_logic;
        i_Wr_Data : in std_logic_vector(WIDTH-1 downto 0);
        -- Read Signals
        i_Rd_Clk : in std_logic;
        i_Rd_Addr : in std_logic_vector;
        i_Rd_En : in std_logic;
        o_Rd_DV : out std_logic;
        o_Rd_Data : out std_logic_vector(WIDTH-1 downto 0)
        );
end entity RAM;


architecture RTL of RAM is

    type t_Mem is array(0 to DEPTH-1) of std_logic_vector(WIDTH-1 downto 0);
    signal r_Mem : t_Mem;

begin
    process(i_Wr_Clk) 
    begin
        if rising_edge(i_Wr_Clk) then
            if i_Wr_DV = '1' then
                r_Mem(to_integer(unsigned(i_Wr_Addr))) <= i_Wr_Data;
            end if;
        end if;
    end process;

    process(i_Rd_Clk)
    begin
      if rising_edge(i_Rd_Clk) then
        o_Rd_Data <= r_Mem(to_integer(unsigned(i_Rd_Addr)));
        o_Rd_DV <= i_Rd_En;
      end if;
    end process;
    
end architecture RTL;


library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity tl_tb is
end entity tl_tb;

architecture arch_tl_tb of tl_tb is
    signal clk_s,rst_s : std_logic;
    signal G_s,Y_s,R_s,L_s : std_logic;
    
    component tl is
        port(clk,rst : in std_logic;
        g,y,r,l : out std_logic);
    end component;

begin 
    map0 : tl port map (clk_s,rst_s,G_s,Y_s,R_s,L_s);
clocking : process begin
    clk_s <= '0';
    wait for 10 ns;
    clk_s <= '1';
    wait for 10 ns;
end process;

reseting : process begin
    rst_s <= '1';
    wait for 5 ns;
    rst_s <= '0';
    wait for 995 ns;
end process;

end architecture arch_tl_tb;

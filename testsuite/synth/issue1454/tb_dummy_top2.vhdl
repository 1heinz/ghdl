entity tb_dummy_top2 is
end tb_dummy_top2;

library ieee;
use ieee.std_logic_1164.all;

architecture behav of tb_dummy_top2 is
  signal clk : std_logic;
  signal d : std_logic;
begin
  dut: entity work.dummy_top2
    port map (clk, d);

  process
  begin
    for i in 1 to 4 loop
      clk <= '0';
      wait for 1 ns;
      clk <= '1';
      wait for 1 ns;
    end loop;
    wait;
  end process;
end behav;

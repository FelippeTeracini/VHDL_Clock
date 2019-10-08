LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity Base_de_tempo is
	generic (N : natural := 5);
   port(
      clk        :   in std_logic;
      saida_clk  :   out std_logic
   );
end entity;

architecture comportamento of Base_de_tempo is

begin

	fazDivisaoInteiro: entity work.divisorGenerico(divInteiro)
		generic map (divisor => N)   -- divide por 10.
		port map (clk => clk, saida_clk => saida_clk);

end architecture;
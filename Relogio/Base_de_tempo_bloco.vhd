LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity Base_de_tempo_bloco is
   port(
      clk        :   in std_logic;
		speed      :   in std_logic;
		reset      :   in std_logic;
		enable     :   in std_logic;
		
      saida_buffer  :   out std_logic
   );
end entity;

architecture comportamento of Base_de_tempo_bloco is

	signal mux0, mux1, muxOut, regOut : std_logic;

begin

	base_lento : entity work.Base_de_tempo
		generic map (N => 25000000)
		port map (clk => clk, saida_clk => mux0);
		
	base_rapida : entity work.Base_de_tempo
		generic map (N => 500000)
		port map (clk => clk, saida_clk => mux1);

	Mux : entity work.MUX2_1 
		generic map (N => 1)
		port map (
			A(0) => mux0,
			B(0) => mux1,
			Sel => speed,

			Y(0) => muxOut
		);
		
	Reg : entity work.registrador
		generic map (N => 1)
		port map (
			-- O clock do registrador eh o resultado da base de tempo
			clk => muxOut,
			enable => '1',
			reset	=> reset,
			data(0) => '1',

			output(0) => regOut
		);
	
	triState : entity work.tristate
		port map (
			input(0) => regOut,
			enable => enable,
			output(0) => saida_buffer
		);


	

end architecture;
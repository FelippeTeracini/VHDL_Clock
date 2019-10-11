LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity Button_IO is
   port(
		
		-- Entrada botoes FPGA --
      ButInput     :   in std_logic_vector(3 downto 0);
		
		-- Enable na leitura do registrador do botao minutos -- 
		RD_ButMin    :   in std_logic;
		-- Reseta o registrador do botao minutos --
		RESET_ButMin :   in std_logic;
		-- Enable na leitura do registrador do botao horas --
		RD_ButHrs    :   in std_logic;
		-- Reseta o registrador do botao horas --
		RESET_ButHrs :   in std_logic;
		
		-- Saida para o DataIn --
      output       :   out std_logic
   );
end entity;

architecture comportamento of Button_IO is

	signal regMinOut, regHrsOut : std_logic;

begin
	
	-- Registrador que guarda o valor do botao minutos --
	RegMin : entity work.registrador
		generic map (N => 1)
		port map (
			clk => not(ButInput(0)),
			enable => '1',
			reset	=> RESET_ButMin,
			data(0) => '1',

			output(0) => regMinOut
		);
	
	-- Registrador que guarda o valor do botao horas --
	RegHrs : entity work.registrador
		generic map (N => 1)
		port map (
			clk => not(ButInput(1)),
			enable => '1',
			reset	=> RESET_ButHrs,
			data(0) => '1',

			output(0) => regHrsOut
		);	
	
	-- Tristate que libera o valor do botao minutos --	
	triStateMin : entity work.tristate
		port map (
			input(0) => regMinOut,
			enable => RD_ButMin,
			output(0) => output
		);
	
   -- Tristate que libera o valor do botao horas --		
	triStateHrs : entity work.tristate
		port map (
			input(0) => regHrsOut,
			enable => RD_ButHrs,
			output(0) => output
		);


	

end architecture;
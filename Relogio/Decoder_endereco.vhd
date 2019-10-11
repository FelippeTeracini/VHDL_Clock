LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Decoder_endereco IS
	PORT (
		
		-- Saida de endereco do CPU --
		ADDR            : IN std_logic_vector(7 downto 0);
		-- Saida de enable Read do CPU --
		RD              : IN std_logic;
		-- Saida de enable Write do CPU --
		WR              : IN std_logic;
		
		-- Enable na escrita no display de segundos --
		EnableSec       : OUT std_logic;
		-- Enable na escrita no display de minutos --
		EnableMin       : OUT std_logic;
		-- Enable na escrita no display de horas --
		EnableHrs       : OUT std_logic;
		
		-- Enable na leitura da base de tempo --
		RD_BaseTempo    : OUT std_logic;
		-- Reset no registrador da base de tempo --
		RESET_BaseTempo : OUT std_logic;
		
		-- Enable na leitura do botao de minutos --
		RD_ButMin       : OUT std_logic;
		-- Reset no registrador do botao de minutos --
		RESET_ButMin    : OUT std_logic;
		-- Enable na leitura do botao de horas --
		RD_ButHrs       : OUT std_logic;
		-- Reset no registrador do botao de horas --
		RESET_ButHrs    : OUT std_logic

	);

END Decoder_endereco;

ARCHITECTURE comportamento OF Decoder_endereco IS

BEGIN

	PROCESS (ADDR)
	
	BEGIN
	
		-- Controle de quando sao habilitadas as saidas --
		CASE(ADDR) IS
		
			-- Enable na escrita no display de segundos --
			WHEN "00000101" =>
			EnableSec <= WR;
			
			EnableMin <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			-- Enable na escrita no display de minutos --
			WHEN "00000011" =>
			EnableMin <= WR;
			
			EnableSec <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			-- Enable na escrita no display de horas --
			WHEN "00000100" =>
			EnableHrs <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			-- Reset no registrador da base de tempo --
			WHEN "00000000" =>
			RD_BaseTempo <= RD;
			RESET_BaseTempo <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			-- Reset no registrador do botao de minutos --
			WHEN "00000001" =>
			RD_ButMin <= RD;
			RESET_ButMin <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			-- Reset no registrador do botao de horas --
			WHEN "00000010" =>
			RD_ButHrs <= RD;
			RESET_ButHrs <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RESET_ButMin <= '0';
			RD_ButMin <= '0';
			
			WHEN OTHERS =>
			EnableSec <= '0';
			EnableMin <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
	
		END CASE;
	END PROCESS;

END comportamento;
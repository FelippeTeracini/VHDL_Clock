LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Decoder_endereco IS
	PORT (
		ADDR            : IN std_logic_vector(7 downto 0);
		RD              : IN std_logic;
		WR              : IN std_logic;
		
		EnableSec       : OUT std_logic;
		EnableMin       : OUT std_logic;
		EnableHrs       : OUT std_logic;
		
		RD_BaseTempo    : OUT std_logic;
		RESET_BaseTempo : OUT std_logic;
		
		RD_ButMin       : OUT std_logic;
		RESET_ButMin    : OUT std_logic;
		RD_ButHrs       : OUT std_logic;
		RESET_ButHrs    : OUT std_logic

	);

END Decoder_endereco;

ARCHITECTURE comportamento OF Decoder_endereco IS

BEGIN

	PROCESS (ADDR)
	
	BEGIN
		CASE(ADDR) IS
			WHEN "00000001" =>
			EnableSec <= WR;
			
			EnableMin <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
	
			WHEN "00000010" =>
			EnableMin <= WR;
			
			EnableSec <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00000011" =>
			EnableHrs <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			RD_BaseTempo <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00000100" =>
			RD_BaseTempo <= RD;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00000101" =>
			RESET_BaseTempo <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RD_BaseTempo <= '0';
			RD_ButMin <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00000110" =>
			RD_ButMin <= RD;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RESET_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00000111" =>
			RESET_ButMin <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RD_ButMin <= '0';
			RD_ButHrs <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00001000" =>
			RD_ButHrs <= RD;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RESET_ButMin <= '0';
			RD_ButMin <= '0';
			RESET_ButHrs <= '0';
			
			WHEN "00001001" =>
			RESET_ButHrs <= WR;
			
			EnableMin <= '0';
			EnableSec <= '0';
			EnableHrs <= '0';
			RESET_BaseTempo <= '0';
			RD_BaseTempo <= '0';
			RESET_ButMin <= '0';
			RD_ButMin <= '0';
			RD_ButHrs <= '0';
			
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
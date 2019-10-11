LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY AMPM IS
	PORT (
		-- Seleciona entre AM e PM --
		selAmPm : IN std_logic;
		-- Saida de dados do CPU --
		dataOut : IN std_logic_vector(7 downto 0);
		-- Enable na escrita nas horas --
		EnableHrs : IN std_logic;
		
		-- Saida para o componente BCD --
		ToBCD   : OUT std_logic_vector(7 downto 0);
		-- Saida para o registrador que indica AM e PM --
		ToReg   : OUT std_logic_vector(3 downto 0)

	);
END AMPM;

ARCHITECTURE comportamento OF AMPM IS

	signal toMuxHABH, toMuxSW : std_logic_vector(7 downto 0);

BEGIN
	
	-- Mux de selecao entre AM e PM --
	MUX_SW : entity work.MUX2_1
		generic map(N => 8)
		port map(
			A => dataOut,
			B => toMuxSW,
			Sel => selAmPm,
			Y => toMuxHABH
		);
	
	-- Mux que seleciona AM e PM apenas se for escrita nas horas (evita a transformacao AM e PM para minutos) --
	MUX_HABHrs : entity work.MUX2_1
		generic map(N => 8)
		port map(
			A => dataOut,
			B => toMuxHABH,
			Sel => EnableHrs,
			Y => ToBCD
		);
	
	PROCESS (dataOut)

	BEGIN
		
		-- Transformacao de 24Hrs para 12Hrs --
		CASE(dataOut) IS
			WHEN "00001100" =>
			toMuxSW <= "00001100";
			ToReg <= "1111";
		
			WHEN "00001101" =>
			toMuxSW <= "00000001";
			ToReg <= "1111";
			
			WHEN "00001110" => 
			toMuxSW <= "00000010";
			ToReg <= "1111";

			WHEN "00001111" =>   
			toMuxSW <= "00000011";
			ToReg <= "1111";

			WHEN "00010000" => 
			toMuxSW <= "00000100";
			ToReg <= "1111";

			WHEN "00010001" =>
			toMuxSW <= "00000101";
			ToReg <= "1111";

			WHEN "00010010" => 
			toMuxSW <= "00000110";
			ToReg <= "1111";

			WHEN "00010011" =>
			toMuxSW <= "00000111";
			ToReg <= "1111";
			
			WHEN "00010100" => 
			toMuxSW <= "00001000";
			ToReg <= "1111";
			
			WHEN "00010101" => 
			toMuxSW <= "00001001";
			ToReg <= "1111";
			
			WHEN "00010110" => 
			toMuxSW <= "00001010";
			ToReg <= "1111";
			
			WHEN "00010111" => 
			toMuxSW <= "00001011";
			ToReg <= "1111";
			
			WHEN "00000000" => 
			toMuxSW <= "00001100";
			ToReg <= "1010";

			WHEN OTHERS =>
			toMuxSW <= dataOut;
			ToReg <= "1010";

		END CASE;
	END PROCESS;

END comportamento;
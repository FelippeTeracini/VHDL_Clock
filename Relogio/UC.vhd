LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UC IS
	PORT (
		--- IN ---
		-- opcode --
		opcode : IN std_logic_vector(2 DOWNTO 0);

		--- OUT ---
		-- operacao da ula --
		op : OUT std_logic_vector(1 DOWNTO 0);
		-- enable jmp --
		jmp : OUT std_logic;
		-- enable jmpne --
		jne : OUT std_logic;
		-- habilita escrita no banco --
		HabBanco : OUT std_logic;
		-- habilita escrita no registrador RD, que indica o resultado da saida ZERO da ULA --
		HabRD : OUT std_logic;
		-- habilita Read de enderecos do decoder --
		RD : OUT std_logic;
		-- habilita Write de enderecos do decoder --
		WR : OUT std_logic;
		-- Seleciona entre Imediato e DataIn na entrada B da ULA --
		MuxULA : OUT std_logic

	);

END UC;

ARCHITECTURE comportamento OF UC IS

	-- signal resultado: integer;
	-- signal ai : integer;
	-- signal bi : integer;

BEGIN

	PROCESS (opcode)

	BEGIN

		CASE(opcode) IS
			WHEN "000" => -- ADD
			op <= "00";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '1';
			HabRD <= '0';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';
			
			WHEN "001" => -- CMP
			op <= "10";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '0';
			HabRD <= '1';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';

			WHEN "010" => -- MOVi   
			op <= "01";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '1';
			HabRD <= '0';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';

			WHEN "011" => -- JMP   
			op <= "00";
			jmp <= '1';
			jne <= '0';
			HabBanco <= '0';
			HabRD <= '0';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';

			WHEN "100" => -- JMPne
			op <= "00";
			jmp <= '0';
			jne <= '1';
			HabBanco <= '0';
			HabRD <= '0';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';

			WHEN "101" => -- CLRSEG
			op <= "00";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '0';
			HabRD <= '0';
			RD <= '0';
			WR <= '0';
			MuxULA <= '0';

			WHEN "110" => -- STORE
			op <= "00";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '0';
			HabRD <= '0';
			RD <= '0';
			WR <= '1';
			MuxULA <= '0';
			
			WHEN "111" => -- LOAD
			op <= "01";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '1';
			HabRD <= '0';
			RD <= '1';
			WR <= '0';
			MuxULA <= '1';

			WHEN OTHERS =>
			op <= "00";
			jmp <= '0';
			jne <= '0';
			HabBanco <= '0';
			HabRD <= '0';
			RD <= '0';
			WR <= '1';
			MuxULA <= '0';

		END CASE;
	END PROCESS;
	-- saida <= std_logic_vector(to_unsigned(resultado, saida'length));
END comportamento;
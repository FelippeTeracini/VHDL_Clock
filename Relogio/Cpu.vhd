LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
ENTITY Cpu IS
    GENERIC (
        larguraDadosRom : NATURAL := 14;
        larguraDadosBanco : NATURAL := 8;
        larguraEnd : NATURAL := 3;
		  larguraEndROM : NATURAL := 5
    );
    -- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    PORT (
        -- Clock --
        Clk : IN std_logic;

        -- In e Out CPU --
		  -- Dados dos Botoes e Base de Tempo --
        DataIn : IN std_logic_vector((larguraDadosBanco - 1) DOWNTO 0);
		  -- Saida de dados do CPU --
        bancoOut : OUT std_logic_vector((larguraDadosBanco - 1) DOWNTO 0);
		  -- Saida de enderecos do CPU --
		  ADDROut : OUT std_logic_vector((larguraDadosBanco - 1) DOWNTO 0);
		  
		  -- Control --
		  -- Habilita Read no Decoder --
		  RD : OUT std_logic;
		  -- Habilita Write no Decoder --
		  WR : OUT std_logic;

        -- In e Out ROM --
		  -- Endereco de acesso da ROM --
        Addr : OUT std_logic_vector(larguraEndROM - 1 DOWNTO 0);
		  -- Saida de dados da ROM --
        DadoROM : IN std_logic_vector(larguraDadosRom - 1 DOWNTO 0)

    );
END ENTITY;

ARCHITECTURE comportamento OF Cpu IS

	signal hw, ez, sm, jne, jp : std_logic;
	signal ins : std_logic_vector(1 DOWNTO 0);

BEGIN

    CPUnoUC : ENTITY work.CpuNoUc GENERIC MAP(
        larguraDadosROM => larguraDadosROM,
        larguraDadosBanco => larguraDadosBanco,
        larguraEnd => larguraEnd,
		  larguraEndROM => larguraEndROM
        )

        PORT MAP(
            -- Clock --
            Clk => Clk,

            -- In e Out CPU --
            DataIn => DataIn,
            bancoOut => bancoOut,

            -- In e Out ROM --
            Addr => Addr,
            DadoROM => DadoROM,

            -- Dados UC --
            habWrite => hw,
            instrucao => ins,
            enableZero => ez,
            selMux => sm,
            jmpne => jne,
            jmp => jp
        );

    Uc : ENTITY work.UC
        PORT MAP(
            --- IN ---
            opcode => DadoROM(larguraDadosROM-1 DOWNTO larguraDadosBanco+larguraEnd),

            --- OUT ---
            op => ins,
            jmp => jp,
            jne => jne,
            HabBanco => hw,
            HabRD => ez,
				RD => RD,
				WR => WR,
            MuxULA => sm
        );
		  
	ADDROut <= DadoROM((larguraDadosBanco - 1) DOWNTO 0);
		  
END ARCHITECTURE;
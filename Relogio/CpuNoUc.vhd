library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity CpuNoUc is
    generic
    (
		larguraDadosRom : natural := 14;
      larguraDadosBanco : natural := 8;
      larguraEnd : natural := 3;
		larguraEndROM : natural := 5
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
		  -- Clock --
        Clk        : in std_logic;
		  
		  -- In e Out CPU --
		  DataIn : in std_logic_vector((larguraDadosBanco-1) downto 0);  
        bancoOut : out std_logic_vector((larguraDadosBanco -1) downto 0);
		  
		  -- In e Out ROM --
		  Addr : out std_logic_vector(larguraEndROM-1 downto 0);
		  DadoROM : in std_logic_vector(larguraDadosRom-1 downto 0);

		  -- Dados UC --
		  habWrite      : in std_logic;
		  instrucao : in std_logic_vector(1 downto 0);
		  enableZero : in std_logic;
		  selMux : in std_logic;
		  jmpne : in std_logic;
		  jmp : in std_logic
    );
end entity;

architecture comportamento of CpuNoUc is
	
	signal saidaMUX, imediato : std_logic_vector(larguraDadosBanco-1 downto 0);
	signal outZero : std_logic_vector(0 downto 0);
	signal selMuxEnd : std_logic;

begin
	
	-- Banco de registradores + ULA --
	BncULA : entity work.Banco_ULA generic map(larguraDados => larguraDadosBanco, larguraEnd =>  larguraEnd)
		port map(
			Clk => Clk,
			enableZero => enableZero,
			resetZero => '0',
			instrucao => instrucao,
			BInUla => saidaMux,
			enderecoEscrita => DadoROM(larguraDadosBanco+larguraEnd-1 downto larguraDadosBanco),
			habWrite => habWrite,
			enderecoLeitura => DadoROM(larguraDadosBanco+larguraEnd-1 downto larguraDadosBanco),  
			bancoOut => bancoOut,
			saidaZero => outZero
		);
	
   -- Bloco Program Counter --	
	Pc : entity work.PC generic map(addrWidth => larguraEndROM)
		port map(
			Clk => Clk,
			enable_pc => '1',
			reset_pc => '0',
			Sel => selMuxEnd,
			B_somador => "000001",
			imediatoEnd => DadoROM(larguraEndROM-1 downto 0),
         Addr => Addr
		);
	
	-- Mux de selecao entre imediato e DataIn --
	Mux : entity work.MUX2_1 generic map(N => larguraDadosBanco)
		port map(
			A => DadoROM(larguraDadosBanco-1 downto 0),
			B => DataIn,
			Sel => selMux,
			Y => saidaMux
		);
		
	selMuxEnd <= (jmpne AND outZero(0)) NOR (jmp);

	
end architecture;
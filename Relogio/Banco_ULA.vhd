library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity Banco_ULA is
    generic
    (
        larguraDados        : natural := 8;
        larguraEnd : natural := 3
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
		-- Clock --
        Clk        : in std_logic;
		-- Enable na escrita do registrador que guarda a saida ZERO da ULA --
		  enableZero : in std_logic;
		-- Reset no registrador que guarda a saida ZERO da ULA
		  resetZero : in std_logic;
		-- Instrucao da ULA --
		  instrucao : in std_logic_vector(1 downto 0);
		-- Entrada B da ULA --
		  BInUla : in std_logic_vector((larguraDados-1) downto 0);
		-- Endereco de escrita no banco --
        enderecoEscrita   : in std_logic_vector((larguraEnd-1) downto 0);
		-- Habilita escrita no banco --
        habWrite      : in std_logic;
		-- Endereco de Leitura no banco --
		  enderecoLeitura       : in std_logic_vector((larguraEnd-1) downto 0);
		-- Saida de dados do banco --
        bancoOut         : out std_logic_vector((larguraDados -1) downto 0);
		-- Saida ZERO da ULA --
		  saidaZero : out std_logic_vector(0 downto 0)
        
    );
end entity;

architecture comportamento of Banco_ULA is

	signal zeroULA : std_logic_vector(0 downto 0);
	signal saidaULA, saidaBanco : std_logic_vector((larguraDados-1) downto 0);

begin
	
	-- Banco de registradores --
	Banco : entity work.BancoDeRegistradores generic map(larguraDados => larguraDados, larguraEndBancoRegs => larguraEnd)
		port map(
			clk => Clk,
			enderecoC => enderecoEscrita,
			dadoEscritaC => saidaULA,
			escreveC => habWrite,
			enderecoA => enderecoLeitura,  
			saidaA => saidaBanco
		);
   
	-- ULA --
	Ula : entity work.ULA generic map(N => larguraDados)
		port map(
			A => saidaBanco,
			B => BInUla,
			instrucao => instrucao,
			saida => saidaULA,
			zero => zeroULA
		);
	
	-- Registrador que guarda a saida ZERO da ULA --
	Zero : entity work.registrador generic map(N => 1)
		port map(
			clk => Clk,
			enable => enableZero,
			reset => resetZero,
			data => zeroULA,
			output => saidaZero
		);
		
		bancoOut <= saidaBanco;

end architecture;
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
        Clk        : in std_logic;
		  enableZero : in std_logic;
		  resetZero : in std_logic;
		  instrucao : in std_logic_vector(1 downto 0);
		  BInUla : in std_logic_vector((larguraDados-1) downto 0);
        enderecoEscrita   : in std_logic_vector((larguraEnd-1) downto 0);
        habWrite      : in std_logic;
		  enderecoLeitura       : in std_logic_vector((larguraEnd-1) downto 0);  
        bancoOut         : out std_logic_vector((larguraDados -1) downto 0);
		  saidaZero : out std_logic_vector(0 downto 0)
        
    );
end entity;

architecture comportamento of Banco_ULA is

	signal zeroULA : std_logic_vector(0 downto 0);
	signal saidaULA, saidaBanco : std_logic_vector((larguraDados-1) downto 0);

begin

	Banco : entity work.BancoDeRegistradores generic map(larguraDados => larguraDados, larguraEndBancoRegs => larguraEnd)
		port map(
			clk => Clk,
			enderecoC => enderecoEscrita,
			dadoEscritaC => saidaULA,
			escreveC => habWrite,
			enderecoA => enderecoLeitura,  
			saidaA => saidaBanco
		);
    
	Ula : entity work.ULA generic map(N => larguraDados)
		port map(
			A => saidaBanco,
			B => BInUla,
			instrucao => instrucao,
			saida => saidaULA,
			zero => zeroULA
		);
		
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
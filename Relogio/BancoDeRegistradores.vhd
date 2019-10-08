library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
entity BancoDeRegistradores is
    generic
    (
			--- 8 bits de dados
        larguraDados        : natural := 8;
		   --- 8 Registradores
        larguraEndBancoRegs : natural := 3
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--

        enderecoC   : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
        escreveC      : in std_logic;
--

		  enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);  
        saidaA          : out std_logic_vector((larguraDados -1) downto 0)
        
    );
end entity;

architecture comportamento of BancoDeRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

begin
    process(clk) is
    begin
	 
		--- Escrita Sincrona
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
		  
		--- Leitura Assincrona e sem "check de 0"
		
    end process;
saidaA <= registrador(to_integer(unsigned(enderecoA)));
end architecture;
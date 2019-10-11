ibrary IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity Rom_PC is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
			 Clk : in std_logic;
			 enable_pc : in std_logic;
			 reset_pc : in std_logic;
			 Sel : in std_logic;
			 B_somador: in std_logic_vector (addrWidth-1 DOWNTO 0);
			 Imediato : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of Rom_PC is

	signal outPC, outSomador, outMux : std_logic_vector(addrWidth-1 DOWNTO 0);

begin

	Mux : entity work.MUX2_1 generic map(N => addrWidth)
		port map(
			A	=> outSomador,
			B	=> Imediato,
			Sel => Sel,
			Y	=> outMux
		);

	Somador : entity work.somadorGenerico generic map(larguraDados => addrWidth)
		port map(
			entradaA => outPC,
			entradaB => B_somador,
			saida => outSomador
		);

	PC : entity work.registrador generic map(N => addrWidth)
		port map(
			clk => Clk,
			enable => enable_pc,
			reset	=> reset_pc,
			data => outMux,
			output => outPC
		);
    
	ROM : entity work.RomNoMif generic map(dataWidth => dataWidth, addrWidth => addrWidth)
		port map(
			Endereco => outPC,
			Dado => Dado
		);
	 
end architecture;
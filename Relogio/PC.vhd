library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is
   generic (
          addrWidth: natural := 3
    );
   port (
			 Clk : in std_logic;
			 enable_pc : in std_logic;
			 reset_pc : in std_logic;
			 Sel : in std_logic;
			 B_somador: in std_logic_vector (addrWidth-1 DOWNTO 0);
			 imediatoEnd: in std_logic_vector(addrWidth-1 DOWNTO 0);
          Addr : out std_logic_vector (addrWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of PC is

	signal outPC, outSomador, outMux: std_logic_vector(addrWidth-1 DOWNTO 0);

begin
	
	-- Selecao entre Somar 1 ou imediato --
	Mux : entity work.MUX2_1 generic map(N => addrWidth)
		port map(
			A	=> imediatoEnd,
			B	=> outSomador,
			Sel => Sel,
			Y	=> outMux
		);
	
	-- Somador --
	Somador : entity work.somadorGenerico generic map(larguraDados => addrWidth)
		port map(
			entradaA => outPC,
			entradaB => B_somador,
			saida => outSomador
		);
	
	-- Program Counter --
	PC : entity work.registrador generic map(N => addrWidth)
		port map(
			clk => Clk,
			enable => enable_pc,
			reset	=> reset_pc,
			data => outMux,
			output => outPC
		);
		
	Addr <= outPC;
	 
end architecture;
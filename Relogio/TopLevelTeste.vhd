LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TopLevelTeste IS
	PORT (
	
		Clk : in std_logic;
		dataIn : in std_logic_vector(7 downto 0);
		dataOut : out std_logic_vector(7 downto 0);
		addrOut : out std_logic_vector(7 downto 0);
		rd : out std_logic;
		wr : out std_logic
	);

END TopLevelTeste;

ARCHITECTURE comportamento OF TopLevelTeste IS
	
	signal addrRom : std_logic_vector(5 downto 0);
	signal dadoRom : std_logic_vector(13 downto 0);

BEGIN
		
	Rom : entity work.romMif
		generic map (
			dataWidth => 14,
			addrWidth => 6
		)
		port map (
			Endereco => addrRom,
			Dado => dadoRom
		);

	Cpu : entity work.Cpu
		generic map (
			larguraDadosROM => 14,
			larguraDadosBanco => 8,
			larguraEnd => 3,
			larguraEndROM => 6
		)
		port map(
			Clk => Clk,

			DataIn => dataIn,
			bancoOut => dataOut,
			ADDROut => addrOut,

			RD => rd,
			WR => wr,

			Addr => addrRom,
			DadoROM => dadoRom
		);
		

END comportamento;
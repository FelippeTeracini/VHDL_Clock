LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BCD IS
	PORT (
		-- Clock --
		clk : IN std_logic;
		-- Saida de dados do CPU --
		dataOut : IN std_logic_vector(7 downto 0);
		-- Enable na escrita no display de segundos --
		enableSecond : IN std_logic;
		-- Enable na escrita no display de minutos --
		enableMinute : IN std_logic;
		-- Enable na escrita no display de horas --
		enableHour : IN std_logic;
		-- Seleciona entre 24hrs e 12hrs am/pm --
		selAMPM  : IN std_logic;
		
		-- Displays --
		saidaHEX0, saidaHEX1, saidaHEX2, saidaHEX3, saidaHEX4, saidaHEX5, saidaHEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)

	);

END BCD;

ARCHITECTURE comportamento OF BCD IS

	signal saidaBinaryToBCD0, saidaBinaryToBCD1, dataAMPM : STD_LOGIC_VECTOR(3 downto 0);
	signal saidaReg0, saidaReg1, saidaReg2, saidaReg3, saidaReg4, saidaReg5, saidaRegAMPM : STD_LOGIC_VECTOR(3 downto 0);
	
	signal tobcd : std_logic_vector(7 downto 0);

BEGIN
	
	-- Conversor de entrada 8 bits para duas 4 bits representando unidade e dezena --
	BinaryConverter : entity work.BinaryConverter
		port map(
			binary => tobcd,
			digit0 => saidaBinaryToBCD0,
			digit1 => saidaBinaryToBCD1
		);
	
	-- Componente que controla am/pm --
	AMPM : entity work.AMPM 
		port map (
			selAmPm => selAMPM,
			dataOut => dataOut,
			EnableHrs => enableHour,
		
			ToBCD => tobcd,
			ToReg => dataAMPM
		);
	
	-- Registrador unidade segundos --
	RegSecond0 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableSecond,
			reset	=> '0',
			data => saidaBinaryToBCD0,

			-- Output ports
			output => saidaReg0
		);
	
	-- Registrador dezena segundos --	
	RegSecond1 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableSecond,
			reset	=> '0',
			data => saidaBinaryToBCD1,

			-- Output ports
			output => saidaReg1
		);
	-- Registrador unidade minutos --
	RegMinute0 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableMinute,
			reset	=> '0',
			data => saidaBinaryToBCD0,

			-- Output ports
			output => saidaReg2
		);
	
   -- Registrador dezena minutos --	
	RegMinute1 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableMinute,
			reset	=> '0',
			data => saidaBinaryToBCD1,

			-- Output ports
			output => saidaReg3
		);
		
	-- Registrador unidade horas --
	RegHour0 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableHour,
			reset	=> '0',
			data => saidaBinaryToBCD0,

			-- Output ports
			output => saidaReg4
		);
	
   -- Registrador dezena horas --	
	RegHour1 : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableHour,
			reset	=> '0',
			data => saidaBinaryToBCD1,

			-- Output ports
			output => saidaReg5
		);
	
	-- Registrador que indica A ou P dependendo se esta selecionado AM ou PM --
	RegAMPM : entity work.registrador
		generic map (N => 4)
		port map(
			clk => clk,
			enable => enableHour,
			reset	=> '0',
			data => dataAMPM,

			-- Output ports
			output => saidaRegAMPM
		);
		
	-- Conversor 7Seg para o display de unidade de segundo --
	H0: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg0,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX0
		 );
	
	-- Conversor 7Seg para o display de dezena de segundo --
	H1: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg1,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX1
		 );
		 
	-- Conversor 7Seg para o display de unidade de minutos --
	H2: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg2,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX2
		 );
	
   -- Conversor 7Seg para o display de dezena de minutos --	
	H3: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg3,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX3
		 );
	
	-- Conversor 7Seg para o display de unidade de horas --
	H4: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg4,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX4
		 );
	
	-- Conversor 7Seg para o display de dezena de horas --
	H5: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaReg5,
--        apaga   => SW(17),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX5
		 );
	
	-- Conversor 7Seg para o display de AM/PM --
	HAMPM: entity work.conversorHex7Seg 
		port map(
			-- Input ports
        dadoHex => saidaRegAMPM,
        apaga   => not(selAMPM),
--        negativo => SW(16),
--        overFlow => SW(15),
		  
        -- Output ports
        saida7seg => saidaHEX7
		 );
	
--	LEDR <= SW;

END comportamento;
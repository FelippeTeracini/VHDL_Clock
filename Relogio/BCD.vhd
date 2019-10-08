LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BCD IS
	PORT (
		clk : IN std_logic;
		dataOut : IN std_logic_vector(7 downto 0);
		enableSecond : IN std_logic;
		enableMinute : IN std_logic;
		enableHour : IN std_logic;
		selAMPM  : IN std_logic;
		
		saidaHEX0, saidaHEX1, saidaHEX2, saidaHEX3, saidaHEX4, saidaHEX5, saidaHEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)

	);

END BCD;

ARCHITECTURE comportamento OF BCD IS

	signal saidaBinaryToBCD0, saidaBinaryToBCD1, dataAMPM : STD_LOGIC_VECTOR(3 downto 0);
	signal saidaReg0, saidaReg1, saidaReg2, saidaReg3, saidaReg4, saidaReg5, saidaRegAMPM : STD_LOGIC_VECTOR(3 downto 0);
	
	signal tobcd : std_logic_vector(7 downto 0);

BEGIN

	BinaryConverter : entity work.BinaryConverter
		port map(
			binary => tobcd,
			digit0 => saidaBinaryToBCD0,
			digit1 => saidaBinaryToBCD1
		);
		
	AMPM : entity work.AMPM 
		port map (
			selAmPm => selAMPM,
			dataOut => dataOut,
			EnableHrs => enableHour,
		
			ToBCD => tobcd,
			ToReg => dataAMPM
		);

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
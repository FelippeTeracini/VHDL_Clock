LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TopLevel IS
	PORT (
		-- Botoes FPGA --
		KEY      : IN std_logic_vector(3 downto 0);
		-- Switches FPGA --
		SW       : IN std_logic_vector(17 downto 0);
		-- Clock FPGA --
		CLOCK_50 : IN std_logic;
		-- LEDs dos Switches FPGA --
		LEDR     : OUT std_logic_vector(17 downto 0) := (others => '0');
		-- LEDs dos Botoes FPGA --
		LEDG     : OUT std_logic_vector(7 downto 0) := (others => '0');
		
		-- Displays FPGA --
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0)
	);

END TopLevel;

ARCHITECTURE comportamento OF TopLevel IS

	signal resetBaseTempo : std_logic;
	
	signal dataIn, dataOut, addrOut : std_logic_vector(7 downto 0) := (OTHERS => '0');
	signal rd, wr : std_logic;
	
	signal enableSec, enableMin, enableHrs, rd_baseTempo, rd_butMin, reset_butMin, rd_butHrs, reset_butHrs : std_logic;
	
	signal addrRom : std_logic_vector(5 downto 0);
	signal dadoRom : std_logic_vector(13 downto 0);
	
	
--	signal divisor : integer := 15000000;
--	signal tick : std_logic := '0';
--	signal contador : integer range 0 to divisor+1 := 0;

BEGIN


--LEDG(5 downto 0) <= addrRom;

--	process(CLOCK_50)
--        begin
--            if rising_edge(CLOCK_50) then
--                if contador = divisor then
--                    contador <= 0;
--                    tick <= not tick;
--                else
--                    contador <= contador + 1;
--                end if;
--            end if;
--        end process;
	
	-- Base de Tempo --
	BaseTempo : entity work.Base_de_tempo_bloco
		port map (
			clk => CLOCK_50,
			speed => SW(14),
			reset => resetBaseTempo,
			enable => rd_baseTempo,
			
			saida_buffer => dataIn(0)
		);
	
	-- ROM --
	Rom : entity work.romMif
		generic map (
			dataWidth => 14,
			addrWidth => 6
		)
		port map (
			Endereco => addrRom,
			Dado => dadoRom
		);

	-- CPU --
	Cpu : entity work.Cpu
		generic map (
			larguraDadosROM => 14,
			larguraDadosBanco => 8,
			larguraEnd => 3,
			larguraEndROM => 6
		)
		port map(
			Clk => CLOCK_50,--tick,

			DataIn => dataIn,
			bancoOut => dataOut,
			ADDROut => addrOut,

			RD => rd,
			WR => wr,

			Addr => addrRom,
			DadoROM => dadoRom
		);
	
	-- Decoder de enderecos --
	DecoderEndereco : entity work.Decoder_endereco
		port map (
			ADDR => addrOut,
			RD => rd,
			WR => wr,
			
			EnableSec => enableSec,
			EnableMin => enableMin,
			EnableHrs => enableHrs,
			
			RD_BaseTempo => rd_baseTempo,
			RESET_BaseTempo => resetBaseTempo,
			
			RD_ButMin => rd_butMin,
			RESET_ButMin => reset_butMin,
			RD_ButHrs => rd_butHrs,
			RESET_ButHrs => reset_butHrs
		);
	
	-- Conversor BCD e saida para os displays --
	BCD : entity work.BCD
		port map (
			clk => CLOCK_50,
			dataOut => dataOut,
			enableHour => enableHrs,
			enableMinute => enableMin,
			enableSecond => enableSec,
			selAMPM => SW(17),
			
			saidaHEX0 => HEX2,
			saidaHEX1 => HEX3,
			saidaHEX2 => HEX4,
			saidaHEX3 => HEX5,
			saidaHEX4 => HEX6,
			saidaHEX5 => HEX7,
			saidaHEX7 => HEX0
		);
	
	-- Button IO --
	Buttons : entity work.Button_IO 
		port map (
			ButInput => KEY,
			RD_ButMin => rd_butMin,
			RESET_ButMin => reset_butMin,
			RD_ButHrs => rd_butHrs,
			RESET_ButHrs => reset_butHrs,
			
			output => dataIn(0)
		);
		
	HEX1 <= "1111111";
	
	LEDR(17 downto 10) <= addrOut;
	LEDR(0) <= wr;
	LEDR(1) <= rd;
	LEDR(3) <= reset_butHrs;

END comportamento;
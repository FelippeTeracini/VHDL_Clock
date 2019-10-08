-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/08/2019 09:42:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevelTeste IS
    PORT (
	Clk : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : BUFFER std_logic_vector(7 DOWNTO 0);
	addrOut : BUFFER std_logic_vector(7 DOWNTO 0);
	rd : BUFFER std_logic;
	wr : BUFFER std_logic
	);
END TopLevelTeste;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[3]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[7]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopLevelTeste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addrOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rd : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \addrOut[0]~output_o\ : std_logic;
SIGNAL \addrOut[1]~output_o\ : std_logic;
SIGNAL \addrOut[2]~output_o\ : std_logic;
SIGNAL \addrOut[3]~output_o\ : std_logic;
SIGNAL \addrOut[4]~output_o\ : std_logic;
SIGNAL \addrOut[5]~output_o\ : std_logic;
SIGNAL \addrOut[6]~output_o\ : std_logic;
SIGNAL \addrOut[7]~output_o\ : std_logic;
SIGNAL \rd~output_o\ : std_logic;
SIGNAL \wr~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[0]~6_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[0]~7\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[1]~8_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[1]~9\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[2]~10_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[2]~11\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[3]~12_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[3]~13\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[4]~14_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[4]~15\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output[5]~16_combout\ : std_logic;
SIGNAL \Rom|content~4_combout\ : std_logic;
SIGNAL \Rom|content~5_combout\ : std_logic;
SIGNAL \Rom|content~2_combout\ : std_logic;
SIGNAL \Rom|content~3_combout\ : std_logic;
SIGNAL \Rom|content~6_combout\ : std_logic;
SIGNAL \Rom|content~7_combout\ : std_logic;
SIGNAL \Rom|content~8_combout\ : std_logic;
SIGNAL \Cpu|Uc|Mux1~0_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~0_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~36feeder_combout\ : std_logic;
SIGNAL \Rom|content~0_combout\ : std_logic;
SIGNAL \Rom|content~1_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~36_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~28_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~20_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~12_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~79_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~52feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~52_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~68_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~60feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~60_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~44_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~77_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~1\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~3_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~29feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~29_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~37feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~37_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~21feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~21_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~13_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~84_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~69feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~69_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~53_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~61feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~61_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~45_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~82_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~4\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~6_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~54feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~54_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~70_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~62feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~62_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~46_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~87_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~38_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~30_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~22_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~14_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~89_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~7\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~9_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~71feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~71_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~55_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~63feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~63_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~47_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~92_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~39_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~31_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~23_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~15_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~94_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~10\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~12_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~40_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~32_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~24_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~16_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~99_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~56feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~56_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~72_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~64feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~64_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~48_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~97_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~13\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~15_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~41_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~33_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~25_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~17_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~104_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~73feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~73_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~57_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~65feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~65_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~49_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~102_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~16\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~18_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~42_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~34_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~26_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~18_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~109_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~58feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~58_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~74_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~66feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~66_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~50_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~107_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~19\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~21_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~43_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~35_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~27_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~19_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~114_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~59feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~59_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~75_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~67feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~67_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~51feeder_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~51_q\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~112_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\ : std_logic;
SIGNAL \Cpu|CPUnoUC|Pc|PC|output\ : std_logic_vector(5 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_dataIn <= dataIn;
dataOut <= ww_dataOut;
addrOut <= ww_addrOut;
rd <= ww_rd;
wr <= ww_wr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y0_N23
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\addrOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom|content~6_combout\,
	devoe => ww_devoe,
	o => \addrOut[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\addrOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\addrOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rom|content~7_combout\,
	devoe => ww_devoe,
	o => \addrOut[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\addrOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\addrOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[4]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\addrOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\addrOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[6]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\addrOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \addrOut[7]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\rd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rd~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \wr~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y5_N6
\Cpu|CPUnoUC|Pc|PC|output[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[0]~6_combout\ = \Cpu|CPUnoUC|Pc|PC|output\(0) $ (VCC)
-- \Cpu|CPUnoUC|Pc|PC|output[0]~7\ = CARRY(\Cpu|CPUnoUC|Pc|PC|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|Pc|PC|output\(0),
	datad => VCC,
	combout => \Cpu|CPUnoUC|Pc|PC|output[0]~6_combout\,
	cout => \Cpu|CPUnoUC|Pc|PC|output[0]~7\);

-- Location: FF_X60_Y5_N7
\Cpu|CPUnoUC|Pc|PC|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(0));

-- Location: LCCOMB_X60_Y5_N8
\Cpu|CPUnoUC|Pc|PC|output[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[1]~8_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(1) & (!\Cpu|CPUnoUC|Pc|PC|output[0]~7\)) # (!\Cpu|CPUnoUC|Pc|PC|output\(1) & ((\Cpu|CPUnoUC|Pc|PC|output[0]~7\) # (GND)))
-- \Cpu|CPUnoUC|Pc|PC|output[1]~9\ = CARRY((!\Cpu|CPUnoUC|Pc|PC|output[0]~7\) # (!\Cpu|CPUnoUC|Pc|PC|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(1),
	datad => VCC,
	cin => \Cpu|CPUnoUC|Pc|PC|output[0]~7\,
	combout => \Cpu|CPUnoUC|Pc|PC|output[1]~8_combout\,
	cout => \Cpu|CPUnoUC|Pc|PC|output[1]~9\);

-- Location: FF_X60_Y5_N9
\Cpu|CPUnoUC|Pc|PC|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(1));

-- Location: LCCOMB_X60_Y5_N10
\Cpu|CPUnoUC|Pc|PC|output[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[2]~10_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(2) & (\Cpu|CPUnoUC|Pc|PC|output[1]~9\ $ (GND))) # (!\Cpu|CPUnoUC|Pc|PC|output\(2) & (!\Cpu|CPUnoUC|Pc|PC|output[1]~9\ & VCC))
-- \Cpu|CPUnoUC|Pc|PC|output[2]~11\ = CARRY((\Cpu|CPUnoUC|Pc|PC|output\(2) & !\Cpu|CPUnoUC|Pc|PC|output[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(2),
	datad => VCC,
	cin => \Cpu|CPUnoUC|Pc|PC|output[1]~9\,
	combout => \Cpu|CPUnoUC|Pc|PC|output[2]~10_combout\,
	cout => \Cpu|CPUnoUC|Pc|PC|output[2]~11\);

-- Location: FF_X60_Y5_N11
\Cpu|CPUnoUC|Pc|PC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(2));

-- Location: LCCOMB_X60_Y5_N12
\Cpu|CPUnoUC|Pc|PC|output[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[3]~12_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(3) & (!\Cpu|CPUnoUC|Pc|PC|output[2]~11\)) # (!\Cpu|CPUnoUC|Pc|PC|output\(3) & ((\Cpu|CPUnoUC|Pc|PC|output[2]~11\) # (GND)))
-- \Cpu|CPUnoUC|Pc|PC|output[3]~13\ = CARRY((!\Cpu|CPUnoUC|Pc|PC|output[2]~11\) # (!\Cpu|CPUnoUC|Pc|PC|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|Pc|PC|output\(3),
	datad => VCC,
	cin => \Cpu|CPUnoUC|Pc|PC|output[2]~11\,
	combout => \Cpu|CPUnoUC|Pc|PC|output[3]~12_combout\,
	cout => \Cpu|CPUnoUC|Pc|PC|output[3]~13\);

-- Location: FF_X60_Y5_N13
\Cpu|CPUnoUC|Pc|PC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(3));

-- Location: LCCOMB_X60_Y5_N14
\Cpu|CPUnoUC|Pc|PC|output[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[4]~14_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(4) & (\Cpu|CPUnoUC|Pc|PC|output[3]~13\ $ (GND))) # (!\Cpu|CPUnoUC|Pc|PC|output\(4) & (!\Cpu|CPUnoUC|Pc|PC|output[3]~13\ & VCC))
-- \Cpu|CPUnoUC|Pc|PC|output[4]~15\ = CARRY((\Cpu|CPUnoUC|Pc|PC|output\(4) & !\Cpu|CPUnoUC|Pc|PC|output[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(4),
	datad => VCC,
	cin => \Cpu|CPUnoUC|Pc|PC|output[3]~13\,
	combout => \Cpu|CPUnoUC|Pc|PC|output[4]~14_combout\,
	cout => \Cpu|CPUnoUC|Pc|PC|output[4]~15\);

-- Location: FF_X60_Y5_N15
\Cpu|CPUnoUC|Pc|PC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(4));

-- Location: LCCOMB_X60_Y5_N16
\Cpu|CPUnoUC|Pc|PC|output[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|Pc|PC|output[5]~16_combout\ = \Cpu|CPUnoUC|Pc|PC|output\(5) $ (\Cpu|CPUnoUC|Pc|PC|output[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(5),
	cin => \Cpu|CPUnoUC|Pc|PC|output[4]~15\,
	combout => \Cpu|CPUnoUC|Pc|PC|output[5]~16_combout\);

-- Location: FF_X60_Y5_N17
\Cpu|CPUnoUC|Pc|PC|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|Pc|PC|output[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|Pc|PC|output\(5));

-- Location: LCCOMB_X60_Y5_N30
\Rom|content~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~4_combout\ = (!\Cpu|CPUnoUC|Pc|PC|output\(5) & (!\Cpu|CPUnoUC|Pc|PC|output\(4) & !\Cpu|CPUnoUC|Pc|PC|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|Pc|PC|output\(5),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(4),
	datad => \Cpu|CPUnoUC|Pc|PC|output\(3),
	combout => \Rom|content~4_combout\);

-- Location: LCCOMB_X60_Y5_N24
\Rom|content~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~5_combout\ = (!\Cpu|CPUnoUC|Pc|PC|output\(1) & (\Rom|content~4_combout\ & \Cpu|CPUnoUC|Pc|PC|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(1),
	datac => \Rom|content~4_combout\,
	datad => \Cpu|CPUnoUC|Pc|PC|output\(2),
	combout => \Rom|content~5_combout\);

-- Location: LCCOMB_X60_Y5_N0
\Rom|content~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~2_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(5)) # (\Cpu|CPUnoUC|Pc|PC|output\(1) $ (\Cpu|CPUnoUC|Pc|PC|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|Pc|PC|output\(5),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(1),
	datad => \Cpu|CPUnoUC|Pc|PC|output\(0),
	combout => \Rom|content~2_combout\);

-- Location: LCCOMB_X60_Y5_N18
\Rom|content~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~3_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(3)) # ((\Cpu|CPUnoUC|Pc|PC|output\(4)) # ((\Cpu|CPUnoUC|Pc|PC|output\(2)) # (\Rom|content~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(3),
	datab => \Cpu|CPUnoUC|Pc|PC|output\(4),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(2),
	datad => \Rom|content~2_combout\,
	combout => \Rom|content~3_combout\);

-- Location: LCCOMB_X60_Y5_N26
\Rom|content~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~6_combout\ = (!\Cpu|CPUnoUC|Pc|PC|output\(2) & (!\Cpu|CPUnoUC|Pc|PC|output\(0) & (\Rom|content~4_combout\ & \Cpu|CPUnoUC|Pc|PC|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(2),
	datab => \Cpu|CPUnoUC|Pc|PC|output\(0),
	datac => \Rom|content~4_combout\,
	datad => \Cpu|CPUnoUC|Pc|PC|output\(1),
	combout => \Rom|content~6_combout\);

-- Location: LCCOMB_X61_Y5_N8
\Rom|content~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~7_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(2) & (\Rom|content~4_combout\ & (!\Cpu|CPUnoUC|Pc|PC|output\(0) & \Cpu|CPUnoUC|Pc|PC|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(2),
	datab => \Rom|content~4_combout\,
	datac => \Cpu|CPUnoUC|Pc|PC|output\(0),
	datad => \Cpu|CPUnoUC|Pc|PC|output\(1),
	combout => \Rom|content~7_combout\);

-- Location: LCCOMB_X61_Y5_N2
\Rom|content~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~8_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(3)) # ((\Cpu|CPUnoUC|Pc|PC|output\(1) & (\Cpu|CPUnoUC|Pc|PC|output\(0) & \Cpu|CPUnoUC|Pc|PC|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(1),
	datab => \Cpu|CPUnoUC|Pc|PC|output\(3),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(0),
	datad => \Cpu|CPUnoUC|Pc|PC|output\(2),
	combout => \Rom|content~8_combout\);

-- Location: LCCOMB_X61_Y5_N24
\Cpu|Uc|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|Uc|Mux1~0_combout\ = (\Cpu|CPUnoUC|Pc|PC|output\(4)) # ((\Rom|content~7_combout\) # ((\Cpu|CPUnoUC|Pc|PC|output\(5)) # (\Rom|content~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(4),
	datab => \Rom|content~7_combout\,
	datac => \Cpu|CPUnoUC|Pc|PC|output\(5),
	datad => \Rom|content~8_combout\,
	combout => \Cpu|Uc|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y5_N12
\Cpu|CPUnoUC|BncULA|Ula|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~0_combout\ = (\Rom|content~6_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\ $ (VCC))) # (!\Rom|content~6_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\ & VCC))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~1\ = CARRY((\Rom|content~6_combout\ & \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~6_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\,
	datad => VCC,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~0_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~1\);

-- Location: LCCOMB_X63_Y5_N8
\Cpu|CPUnoUC|BncULA|Ula|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\ = (\Cpu|Uc|Mux1~0_combout\ & ((\Cpu|CPUnoUC|BncULA|Ula|Add0~0_combout\))) # (!\Cpu|Uc|Mux1~0_combout\ & (\Rom|content~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~6_combout\,
	datac => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~0_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\);

-- Location: LCCOMB_X63_Y5_N14
\Cpu|CPUnoUC|BncULA|Banco|registrador~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~36feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~36feeder_combout\);

-- Location: LCCOMB_X60_Y5_N20
\Rom|content~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~0_combout\ = (!\Cpu|CPUnoUC|Pc|PC|output\(3) & ((\Cpu|CPUnoUC|Pc|PC|output\(2) & (!\Cpu|CPUnoUC|Pc|PC|output\(1) & !\Cpu|CPUnoUC|Pc|PC|output\(0))) # (!\Cpu|CPUnoUC|Pc|PC|output\(2) & ((\Cpu|CPUnoUC|Pc|PC|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|Pc|PC|output\(2),
	datab => \Cpu|CPUnoUC|Pc|PC|output\(1),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(3),
	datad => \Cpu|CPUnoUC|Pc|PC|output\(0),
	combout => \Rom|content~0_combout\);

-- Location: LCCOMB_X60_Y5_N2
\Rom|content~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rom|content~1_combout\ = (!\Cpu|CPUnoUC|Pc|PC|output\(5) & (!\Cpu|CPUnoUC|Pc|PC|output\(4) & \Rom|content~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|Pc|PC|output\(5),
	datac => \Cpu|CPUnoUC|Pc|PC|output\(4),
	datad => \Rom|content~0_combout\,
	combout => \Rom|content~1_combout\);

-- Location: LCCOMB_X63_Y5_N2
\Cpu|CPUnoUC|BncULA|Banco|registrador~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\ = (!\Rom|content~3_combout\ & (\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & !\Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\);

-- Location: FF_X63_Y5_N15
\Cpu|CPUnoUC|BncULA|Banco|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~36feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~36_q\);

-- Location: LCCOMB_X63_Y5_N18
\Cpu|CPUnoUC|BncULA|Banco|registrador~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\ = (!\Rom|content~3_combout\ & (!\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & !\Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\);

-- Location: FF_X63_Y5_N1
\Cpu|CPUnoUC|BncULA|Banco|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~28_q\);

-- Location: LCCOMB_X63_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\ = (\Rom|content~3_combout\ & (\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & !\Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\);

-- Location: FF_X62_Y5_N9
\Cpu|CPUnoUC|BncULA|Banco|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~20_q\);

-- Location: LCCOMB_X61_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\ = (!\Rom|content~1_combout\ & (\Rom|content~3_combout\ & (!\Rom|content~7_combout\ & !\Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Rom|content~3_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\);

-- Location: FF_X60_Y5_N29
\Cpu|CPUnoUC|BncULA|Banco|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~12_q\);

-- Location: LCCOMB_X60_Y5_N28
\Cpu|CPUnoUC|BncULA|Banco|registrador~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\ = (\Rom|content~3_combout\ & ((\Rom|content~1_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~20_q\)) # (!\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~12_q\))))) # 
-- (!\Rom|content~3_combout\ & (((\Rom|content~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~20_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~12_q\,
	datad => \Rom|content~1_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\);

-- Location: LCCOMB_X63_Y5_N0
\Cpu|CPUnoUC|BncULA|Banco|registrador~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~79_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~36_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~36_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~28_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~78_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~79_combout\);

-- Location: LCCOMB_X58_Y5_N8
\Cpu|CPUnoUC|BncULA|Banco|registrador~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~52feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~52feeder_combout\);

-- Location: LCCOMB_X63_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\ = (\Rom|content~3_combout\ & (\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & \Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\);

-- Location: FF_X58_Y5_N9
\Cpu|CPUnoUC|BncULA|Banco|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~52feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~52_q\);

-- Location: LCCOMB_X63_Y5_N12
\Cpu|CPUnoUC|BncULA|Banco|registrador~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\ = (!\Rom|content~3_combout\ & (\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & \Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\);

-- Location: FF_X58_Y5_N23
\Cpu|CPUnoUC|BncULA|Banco|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~68_q\);

-- Location: LCCOMB_X59_Y5_N12
\Cpu|CPUnoUC|BncULA|Banco|registrador~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~60feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~60feeder_combout\);

-- Location: LCCOMB_X63_Y5_N28
\Cpu|CPUnoUC|BncULA|Banco|registrador~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\ = (!\Rom|content~3_combout\ & (!\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & \Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\);

-- Location: FF_X59_Y5_N13
\Cpu|CPUnoUC|BncULA|Banco|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~60feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~60_q\);

-- Location: LCCOMB_X63_Y5_N30
\Cpu|CPUnoUC|BncULA|Banco|registrador~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\ = (\Rom|content~3_combout\ & (!\Rom|content~1_combout\ & (!\Rom|content~7_combout\ & \Rom|content~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~3_combout\,
	datab => \Rom|content~1_combout\,
	datac => \Rom|content~7_combout\,
	datad => \Rom|content~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\);

-- Location: FF_X59_Y5_N3
\Cpu|CPUnoUC|BncULA|Banco|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~2_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~44_q\);

-- Location: LCCOMB_X59_Y5_N2
\Cpu|CPUnoUC|BncULA|Banco|registrador~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~44_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~60_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~44_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\);

-- Location: LCCOMB_X58_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~77_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~68_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~52_q\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~52_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~68_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~76_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~77_combout\);

-- Location: LCCOMB_X62_Y5_N8
\Cpu|CPUnoUC|BncULA|Banco|registrador~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~77_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~5_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~79_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~77_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~80_combout\);

-- Location: LCCOMB_X62_Y5_N14
\Cpu|CPUnoUC|BncULA|Ula|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~3_combout\ = (\Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\ & (!\Cpu|CPUnoUC|BncULA|Ula|Add0~1\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\ & ((\Cpu|CPUnoUC|BncULA|Ula|Add0~1\) # (GND)))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~4\ = CARRY((!\Cpu|CPUnoUC|BncULA|Ula|Add0~1\) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~1\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~3_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~4\);

-- Location: LCCOMB_X57_Y5_N24
\Cpu|CPUnoUC|BncULA|Ula|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\);

-- Location: LCCOMB_X56_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~29feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~29feeder_combout\);

-- Location: FF_X56_Y5_N17
\Cpu|CPUnoUC|BncULA|Banco|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~29feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~29_q\);

-- Location: LCCOMB_X57_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~37feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~37feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~37feeder_combout\);

-- Location: FF_X57_Y5_N23
\Cpu|CPUnoUC|BncULA|Banco|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~37feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~37_q\);

-- Location: LCCOMB_X57_Y5_N20
\Cpu|CPUnoUC|BncULA|Banco|registrador~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~21feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~21feeder_combout\);

-- Location: FF_X57_Y5_N21
\Cpu|CPUnoUC|BncULA|Banco|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~21feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~21_q\);

-- Location: FF_X61_Y5_N21
\Cpu|CPUnoUC|BncULA|Banco|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~13_q\);

-- Location: LCCOMB_X61_Y5_N20
\Cpu|CPUnoUC|BncULA|Banco|registrador~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\ = (\Rom|content~3_combout\ & ((\Rom|content~1_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~21_q\)) # (!\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~13_q\))))) # 
-- (!\Rom|content~3_combout\ & (((\Rom|content~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~21_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~13_q\,
	datad => \Rom|content~1_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\);

-- Location: LCCOMB_X61_Y5_N6
\Cpu|CPUnoUC|BncULA|Banco|registrador~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~84_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\ & 
-- ((\Cpu|CPUnoUC|BncULA|Banco|registrador~37_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~29_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~37_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~83_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~84_combout\);

-- Location: LCCOMB_X58_Y5_N18
\Cpu|CPUnoUC|BncULA|Banco|registrador~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~69feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~69feeder_combout\);

-- Location: FF_X58_Y5_N19
\Cpu|CPUnoUC|BncULA|Banco|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~69feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~69_q\);

-- Location: FF_X58_Y5_N13
\Cpu|CPUnoUC|BncULA|Banco|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~53_q\);

-- Location: LCCOMB_X59_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~61feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~61feeder_combout\);

-- Location: FF_X59_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~61feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~61_q\);

-- Location: FF_X59_Y5_N19
\Cpu|CPUnoUC|BncULA|Banco|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~5_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~45_q\);

-- Location: LCCOMB_X59_Y5_N18
\Cpu|CPUnoUC|BncULA|Banco|registrador~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~45_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~61_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~45_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\);

-- Location: LCCOMB_X58_Y5_N12
\Cpu|CPUnoUC|BncULA|Banco|registrador~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~82_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~69_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\ & 
-- ((\Cpu|CPUnoUC|BncULA|Banco|registrador~53_q\))))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~69_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~53_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~81_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~82_combout\);

-- Location: LCCOMB_X62_Y5_N6
\Cpu|CPUnoUC|BncULA|Banco|registrador~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~82_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~5_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~84_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~82_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~85_combout\);

-- Location: LCCOMB_X62_Y5_N16
\Cpu|CPUnoUC|BncULA|Ula|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~6_combout\ = ((\Rom|content~7_combout\ $ (\Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\ $ (!\Cpu|CPUnoUC|BncULA|Ula|Add0~4\)))) # (GND)
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~7\ = CARRY((\Rom|content~7_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\) # (!\Cpu|CPUnoUC|BncULA|Ula|Add0~4\))) # (!\Rom|content~7_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\ & 
-- !\Cpu|CPUnoUC|BncULA|Ula|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~7_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~4\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~6_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~7\);

-- Location: LCCOMB_X63_Y5_N10
\Cpu|CPUnoUC|BncULA|Ula|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|Uc|Mux1~0_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~6_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\);

-- Location: LCCOMB_X65_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~54feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~54feeder_combout\);

-- Location: FF_X65_Y5_N17
\Cpu|CPUnoUC|BncULA|Banco|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~54feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~54_q\);

-- Location: FF_X58_Y5_N1
\Cpu|CPUnoUC|BncULA|Banco|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~70_q\);

-- Location: LCCOMB_X59_Y5_N24
\Cpu|CPUnoUC|BncULA|Banco|registrador~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~62feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~62feeder_combout\);

-- Location: FF_X59_Y5_N25
\Cpu|CPUnoUC|BncULA|Banco|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~62feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~62_q\);

-- Location: FF_X59_Y5_N7
\Cpu|CPUnoUC|BncULA|Banco|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~46_q\);

-- Location: LCCOMB_X59_Y5_N6
\Cpu|CPUnoUC|BncULA|Banco|registrador~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~46_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~62_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~46_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\);

-- Location: LCCOMB_X58_Y5_N0
\Cpu|CPUnoUC|BncULA|Banco|registrador~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~87_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~70_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~54_q\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~54_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~70_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~86_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~87_combout\);

-- Location: FF_X63_Y5_N11
\Cpu|CPUnoUC|BncULA|Banco|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~38_q\);

-- Location: FF_X63_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~30_q\);

-- Location: FF_X62_Y5_N1
\Cpu|CPUnoUC|BncULA|Banco|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~22_q\);

-- Location: FF_X61_Y5_N13
\Cpu|CPUnoUC|BncULA|Banco|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~8_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~14_q\);

-- Location: LCCOMB_X61_Y5_N12
\Cpu|CPUnoUC|BncULA|Banco|registrador~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\ = (\Rom|content~3_combout\ & ((\Rom|content~1_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~22_q\)) # (!\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~14_q\))))) # 
-- (!\Rom|content~3_combout\ & (((\Rom|content~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~22_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~14_q\,
	datad => \Rom|content~1_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\);

-- Location: LCCOMB_X63_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~89_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~38_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~38_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~30_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~88_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~89_combout\);

-- Location: LCCOMB_X62_Y5_N0
\Cpu|CPUnoUC|BncULA|Banco|registrador~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\ = (\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~87_combout\)) # (!\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~5_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~87_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~89_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~90_combout\);

-- Location: LCCOMB_X62_Y5_N18
\Cpu|CPUnoUC|BncULA|Ula|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~9_combout\ = (\Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\ & (!\Cpu|CPUnoUC|BncULA|Ula|Add0~7\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\ & ((\Cpu|CPUnoUC|BncULA|Ula|Add0~7\) # (GND)))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~10\ = CARRY((!\Cpu|CPUnoUC|BncULA|Ula|Add0~7\) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~7\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~9_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~10\);

-- Location: LCCOMB_X63_Y5_N6
\Cpu|CPUnoUC|BncULA|Ula|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~9_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\);

-- Location: LCCOMB_X58_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~71feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~71feeder_combout\);

-- Location: FF_X58_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~71feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~71_q\);

-- Location: FF_X58_Y5_N11
\Cpu|CPUnoUC|BncULA|Banco|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~55_q\);

-- Location: LCCOMB_X59_Y5_N0
\Cpu|CPUnoUC|BncULA|Banco|registrador~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~63feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~63feeder_combout\);

-- Location: FF_X59_Y5_N1
\Cpu|CPUnoUC|BncULA|Banco|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~63feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~63_q\);

-- Location: FF_X59_Y5_N23
\Cpu|CPUnoUC|BncULA|Banco|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~47_q\);

-- Location: LCCOMB_X59_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~47_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~63_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~47_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\);

-- Location: LCCOMB_X58_Y5_N10
\Cpu|CPUnoUC|BncULA|Banco|registrador~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~92_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~71_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\ & 
-- ((\Cpu|CPUnoUC|BncULA|Banco|registrador~55_q\))))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~71_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~55_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~91_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~92_combout\);

-- Location: FF_X63_Y5_N7
\Cpu|CPUnoUC|BncULA|Banco|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~39_q\);

-- Location: FF_X63_Y5_N21
\Cpu|CPUnoUC|BncULA|Banco|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~31_q\);

-- Location: FF_X62_Y5_N3
\Cpu|CPUnoUC|BncULA|Banco|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~23_q\);

-- Location: FF_X60_Y5_N23
\Cpu|CPUnoUC|BncULA|Banco|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~11_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~15_q\);

-- Location: LCCOMB_X60_Y5_N22
\Cpu|CPUnoUC|BncULA|Banco|registrador~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~23_q\) # ((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~15_q\ & 
-- \Rom|content~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~23_q\,
	datab => \Rom|content~1_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~15_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\);

-- Location: LCCOMB_X63_Y5_N20
\Cpu|CPUnoUC|BncULA|Banco|registrador~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~94_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~39_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~39_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~31_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~93_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~94_combout\);

-- Location: LCCOMB_X62_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\ = (\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~92_combout\)) # (!\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~92_combout\,
	datab => \Rom|content~5_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~94_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~95_combout\);

-- Location: LCCOMB_X62_Y5_N20
\Cpu|CPUnoUC|BncULA|Ula|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~12_combout\ = (\Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\ & (\Cpu|CPUnoUC|BncULA|Ula|Add0~10\ $ (GND))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\ & (!\Cpu|CPUnoUC|BncULA|Ula|Add0~10\ & VCC))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~13\ = CARRY((\Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\ & !\Cpu|CPUnoUC|BncULA|Ula|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~10\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~12_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~13\);

-- Location: LCCOMB_X63_Y5_N26
\Cpu|CPUnoUC|BncULA|Ula|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~12_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\);

-- Location: FF_X63_Y5_N27
\Cpu|CPUnoUC|BncULA|Banco|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~40_q\);

-- Location: FF_X63_Y5_N25
\Cpu|CPUnoUC|BncULA|Banco|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~32_q\);

-- Location: FF_X62_Y5_N7
\Cpu|CPUnoUC|BncULA|Banco|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~24_q\);

-- Location: FF_X60_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~16_q\);

-- Location: LCCOMB_X60_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\ = (\Rom|content~3_combout\ & ((\Rom|content~1_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~24_q\)) # (!\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~16_q\))))) # 
-- (!\Rom|content~3_combout\ & (((\Rom|content~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~24_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~16_q\,
	datad => \Rom|content~1_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\);

-- Location: LCCOMB_X63_Y5_N24
\Cpu|CPUnoUC|BncULA|Banco|registrador~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~99_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~40_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~40_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~32_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~98_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~99_combout\);

-- Location: LCCOMB_X58_Y5_N2
\Cpu|CPUnoUC|BncULA|Banco|registrador~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~56feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~56feeder_combout\);

-- Location: FF_X58_Y5_N3
\Cpu|CPUnoUC|BncULA|Banco|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~56feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~56_q\);

-- Location: FF_X58_Y5_N17
\Cpu|CPUnoUC|BncULA|Banco|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~72_q\);

-- Location: LCCOMB_X59_Y5_N8
\Cpu|CPUnoUC|BncULA|Banco|registrador~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~64feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~64feeder_combout\);

-- Location: FF_X59_Y5_N9
\Cpu|CPUnoUC|BncULA|Banco|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~64feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~64_q\);

-- Location: FF_X59_Y5_N11
\Cpu|CPUnoUC|BncULA|Banco|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~14_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~48_q\);

-- Location: LCCOMB_X59_Y5_N10
\Cpu|CPUnoUC|BncULA|Banco|registrador~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~48_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~64_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~48_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\);

-- Location: LCCOMB_X58_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~97_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~72_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~56_q\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~56_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~72_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~96_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~97_combout\);

-- Location: LCCOMB_X62_Y5_N2
\Cpu|CPUnoUC|BncULA|Banco|registrador~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~97_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~5_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~99_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~97_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~100_combout\);

-- Location: LCCOMB_X62_Y5_N22
\Cpu|CPUnoUC|BncULA|Ula|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~15_combout\ = (\Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\ & (!\Cpu|CPUnoUC|BncULA|Ula|Add0~13\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\ & ((\Cpu|CPUnoUC|BncULA|Ula|Add0~13\) # (GND)))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~16\ = CARRY((!\Cpu|CPUnoUC|BncULA|Ula|Add0~13\) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~13\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~15_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~16\);

-- Location: LCCOMB_X62_Y5_N28
\Cpu|CPUnoUC|BncULA|Ula|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~15_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\);

-- Location: FF_X62_Y5_N11
\Cpu|CPUnoUC|BncULA|Banco|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~41_q\);

-- Location: FF_X61_Y5_N27
\Cpu|CPUnoUC|BncULA|Banco|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~33_q\);

-- Location: FF_X62_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~25_q\);

-- Location: FF_X61_Y5_N1
\Cpu|CPUnoUC|BncULA|Banco|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~17_q\);

-- Location: LCCOMB_X61_Y5_N0
\Cpu|CPUnoUC|BncULA|Banco|registrador~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\ = (\Rom|content~3_combout\ & ((\Rom|content~1_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~25_q\)) # (!\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~17_q\))))) # 
-- (!\Rom|content~3_combout\ & (((\Rom|content~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~25_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~17_q\,
	datad => \Rom|content~1_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\);

-- Location: LCCOMB_X61_Y5_N26
\Cpu|CPUnoUC|BncULA|Banco|registrador~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~104_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~41_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~33_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~41_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~33_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~103_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~104_combout\);

-- Location: LCCOMB_X58_Y5_N28
\Cpu|CPUnoUC|BncULA|Banco|registrador~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~73feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~73feeder_combout\);

-- Location: FF_X58_Y5_N29
\Cpu|CPUnoUC|BncULA|Banco|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~73feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~73_q\);

-- Location: FF_X58_Y5_N7
\Cpu|CPUnoUC|BncULA|Banco|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~57_q\);

-- Location: LCCOMB_X59_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~65feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~65feeder_combout\);

-- Location: FF_X59_Y5_N17
\Cpu|CPUnoUC|BncULA|Banco|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~65feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~65_q\);

-- Location: FF_X59_Y5_N27
\Cpu|CPUnoUC|BncULA|Banco|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~17_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~49_q\);

-- Location: LCCOMB_X59_Y5_N26
\Cpu|CPUnoUC|BncULA|Banco|registrador~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~49_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~65_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~49_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\);

-- Location: LCCOMB_X58_Y5_N6
\Cpu|CPUnoUC|BncULA|Banco|registrador~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~102_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~73_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\ & 
-- ((\Cpu|CPUnoUC|BncULA|Banco|registrador~57_q\))))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~73_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~57_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~101_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~102_combout\);

-- Location: LCCOMB_X61_Y5_N30
\Cpu|CPUnoUC|BncULA|Banco|registrador~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~102_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom|content~5_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~104_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~102_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~105_combout\);

-- Location: LCCOMB_X62_Y5_N24
\Cpu|CPUnoUC|BncULA|Ula|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~18_combout\ = (\Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\ & (\Cpu|CPUnoUC|BncULA|Ula|Add0~16\ $ (GND))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\ & (!\Cpu|CPUnoUC|BncULA|Ula|Add0~16\ & VCC))
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~19\ = CARRY((\Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\ & !\Cpu|CPUnoUC|BncULA|Ula|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\,
	datad => VCC,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~16\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~18_combout\,
	cout => \Cpu|CPUnoUC|BncULA|Ula|Add0~19\);

-- Location: LCCOMB_X62_Y5_N30
\Cpu|CPUnoUC|BncULA|Ula|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~18_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\);

-- Location: FF_X62_Y5_N31
\Cpu|CPUnoUC|BncULA|Banco|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~42_q\);

-- Location: FF_X61_Y5_N5
\Cpu|CPUnoUC|BncULA|Banco|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~34_q\);

-- Location: FF_X62_Y5_N29
\Cpu|CPUnoUC|BncULA|Banco|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~26_q\);

-- Location: FF_X61_Y5_N19
\Cpu|CPUnoUC|BncULA|Banco|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~18_q\);

-- Location: LCCOMB_X61_Y5_N18
\Cpu|CPUnoUC|BncULA|Banco|registrador~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~26_q\) # ((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~18_q\ & 
-- \Rom|content~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~26_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~18_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\);

-- Location: LCCOMB_X61_Y5_N4
\Cpu|CPUnoUC|BncULA|Banco|registrador~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~109_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~42_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~34_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~42_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~34_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~108_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~109_combout\);

-- Location: LCCOMB_X58_Y5_N14
\Cpu|CPUnoUC|BncULA|Banco|registrador~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~58feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~58feeder_combout\);

-- Location: FF_X58_Y5_N15
\Cpu|CPUnoUC|BncULA|Banco|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~58feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~58_q\);

-- Location: FF_X58_Y5_N25
\Cpu|CPUnoUC|BncULA|Banco|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~74_q\);

-- Location: LCCOMB_X59_Y5_N28
\Cpu|CPUnoUC|BncULA|Banco|registrador~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~66feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~66feeder_combout\);

-- Location: FF_X59_Y5_N29
\Cpu|CPUnoUC|BncULA|Banco|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~66feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~66_q\);

-- Location: FF_X59_Y5_N15
\Cpu|CPUnoUC|BncULA|Banco|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~20_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~50_q\);

-- Location: LCCOMB_X59_Y5_N14
\Cpu|CPUnoUC|BncULA|Banco|registrador~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~50_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~66_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~50_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\);

-- Location: LCCOMB_X58_Y5_N24
\Cpu|CPUnoUC|BncULA|Banco|registrador~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~107_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~74_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~58_q\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~58_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~74_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~106_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~107_combout\);

-- Location: LCCOMB_X61_Y5_N16
\Cpu|CPUnoUC|BncULA|Banco|registrador~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~107_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom|content~5_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~109_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~107_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~110_combout\);

-- Location: LCCOMB_X62_Y5_N26
\Cpu|CPUnoUC|BncULA|Ula|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~21_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~19\ $ (\Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\,
	cin => \Cpu|CPUnoUC|BncULA|Ula|Add0~19\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~21_combout\);

-- Location: LCCOMB_X62_Y5_N10
\Cpu|CPUnoUC|BncULA|Ula|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\ = (\Cpu|Uc|Mux1~0_combout\ & \Cpu|CPUnoUC|BncULA|Ula|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cpu|Uc|Mux1~0_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Ula|Add0~21_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\);

-- Location: FF_X62_Y5_N17
\Cpu|CPUnoUC|BncULA|Banco|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~43_q\);

-- Location: FF_X61_Y5_N15
\Cpu|CPUnoUC|BncULA|Banco|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~35_q\);

-- Location: FF_X62_Y5_N15
\Cpu|CPUnoUC|BncULA|Banco|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~27_q\);

-- Location: FF_X61_Y5_N29
\Cpu|CPUnoUC|BncULA|Banco|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~19_q\);

-- Location: LCCOMB_X61_Y5_N28
\Cpu|CPUnoUC|BncULA|Banco|registrador~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~27_q\) # ((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~19_q\ & 
-- \Rom|content~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rom|content~1_combout\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~27_q\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~19_q\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\);

-- Location: LCCOMB_X61_Y5_N14
\Cpu|CPUnoUC|BncULA|Banco|registrador~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~114_combout\ = (\Rom|content~3_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\)))) # (!\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~43_q\)) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~43_q\,
	datab => \Rom|content~3_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~35_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~113_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~114_combout\);

-- Location: LCCOMB_X58_Y5_N30
\Cpu|CPUnoUC|BncULA|Banco|registrador~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~59feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~59feeder_combout\);

-- Location: FF_X58_Y5_N31
\Cpu|CPUnoUC|BncULA|Banco|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~59feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~59_q\);

-- Location: FF_X58_Y5_N27
\Cpu|CPUnoUC|BncULA|Banco|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	sload => VCC,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~75_q\);

-- Location: LCCOMB_X59_Y5_N20
\Cpu|CPUnoUC|BncULA|Banco|registrador~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~67feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~67feeder_combout\);

-- Location: FF_X59_Y5_N21
\Cpu|CPUnoUC|BncULA|Banco|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~67feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~67_q\);

-- Location: LCCOMB_X59_Y5_N30
\Cpu|CPUnoUC|BncULA|Banco|registrador~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~51feeder_combout\ = \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cpu|CPUnoUC|BncULA|Ula|Add0~23_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~51feeder_combout\);

-- Location: FF_X59_Y5_N31
\Cpu|CPUnoUC|BncULA|Banco|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Cpu|CPUnoUC|BncULA|Banco|registrador~51feeder_combout\,
	ena => \Cpu|CPUnoUC|BncULA|Banco|registrador~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cpu|CPUnoUC|BncULA|Banco|registrador~51_q\);

-- Location: LCCOMB_X58_Y5_N20
\Cpu|CPUnoUC|BncULA|Banco|registrador~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\ = (\Rom|content~1_combout\ & (((!\Rom|content~3_combout\)))) # (!\Rom|content~1_combout\ & ((\Rom|content~3_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~51_q\))) # (!\Rom|content~3_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~67_q\,
	datab => \Cpu|CPUnoUC|BncULA|Banco|registrador~51_q\,
	datac => \Rom|content~1_combout\,
	datad => \Rom|content~3_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\);

-- Location: LCCOMB_X58_Y5_N26
\Cpu|CPUnoUC|BncULA|Banco|registrador~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~112_combout\ = (\Rom|content~1_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~75_q\))) # (!\Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\ & 
-- (\Cpu|CPUnoUC|BncULA|Banco|registrador~59_q\)))) # (!\Rom|content~1_combout\ & (((\Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cpu|CPUnoUC|BncULA|Banco|registrador~59_q\,
	datab => \Rom|content~1_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~75_q\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~111_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~112_combout\);

-- Location: LCCOMB_X61_Y5_N10
\Cpu|CPUnoUC|BncULA|Banco|registrador~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\ = (\Rom|content~5_combout\ & ((\Cpu|CPUnoUC|BncULA|Banco|registrador~112_combout\))) # (!\Rom|content~5_combout\ & (\Cpu|CPUnoUC|BncULA|Banco|registrador~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rom|content~5_combout\,
	datac => \Cpu|CPUnoUC|BncULA|Banco|registrador~114_combout\,
	datad => \Cpu|CPUnoUC|BncULA|Banco|registrador~112_combout\,
	combout => \Cpu|CPUnoUC|BncULA|Banco|registrador~115_combout\);

-- Location: IOIBUF_X74_Y0_N22
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;

ww_addrOut(0) <= \addrOut[0]~output_o\;

ww_addrOut(1) <= \addrOut[1]~output_o\;

ww_addrOut(2) <= \addrOut[2]~output_o\;

ww_addrOut(3) <= \addrOut[3]~output_o\;

ww_addrOut(4) <= \addrOut[4]~output_o\;

ww_addrOut(5) <= \addrOut[5]~output_o\;

ww_addrOut(6) <= \addrOut[6]~output_o\;

ww_addrOut(7) <= \addrOut[7]~output_o\;

ww_rd <= \rd~output_o\;

ww_wr <= \wr~output_o\;
END structure;



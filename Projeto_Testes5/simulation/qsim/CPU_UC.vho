-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/04/2019 15:12:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cpu IS
    PORT (
	Clk : IN std_logic;
	DataIn : IN std_logic_vector(7 DOWNTO 0);
	bancoOut : OUT std_logic_vector(7 DOWNTO 0);
	Addr : OUT std_logic_vector(4 DOWNTO 0);
	DadoROM : IN std_logic_vector(13 DOWNTO 0)
	);
END Cpu;

-- Design Ports Information
-- bancoOut[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bancoOut[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[12]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataIn[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DadoROM[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cpu IS
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
SIGNAL ww_DataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bancoOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Addr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DadoROM : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \DadoROM[10]~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DadoROM[13]~input_o\ : std_logic;
SIGNAL \DadoROM[12]~input_o\ : std_logic;
SIGNAL \DadoROM[11]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux0~0_combout\ : std_logic;
SIGNAL \Uc|Mux6~0_combout\ : std_logic;
SIGNAL \DadoROM[0]~input_o\ : std_logic;
SIGNAL \DataIn[0]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~1_sumout\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[0]~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux8~0_combout\ : std_logic;
SIGNAL \DadoROM[9]~input_o\ : std_logic;
SIGNAL \DadoROM[8]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~141_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~68_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~143_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~60_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~52feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~140_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~52_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~144_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~20_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~147_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~28_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~145_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~36_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~12feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~146_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~12_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~108_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~44feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~142_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~44_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~76_combout\ : std_logic;
SIGNAL \DadoROM[1]~input_o\ : std_logic;
SIGNAL \DataIn[1]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~2\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~5_sumout\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[1]~1_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux7~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~53feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~53_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~69_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~61_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~37_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~29_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~21_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~13_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~112_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~45feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~45_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~80_combout\ : std_logic;
SIGNAL \DataIn[2]~input_o\ : std_logic;
SIGNAL \DadoROM[2]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~6\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~9_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux6~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~70_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~62feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~62_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~54feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~54_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~38_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~22_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~30_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~14feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~14_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~116_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~46_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~84_combout\ : std_logic;
SIGNAL \DadoROM[3]~input_o\ : std_logic;
SIGNAL \DataIn[3]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~10\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~13_sumout\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[3]~2_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux5~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~71_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~55_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~63_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~31_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~39_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~23_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~15_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~120_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~47_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~88_combout\ : std_logic;
SIGNAL \DadoROM[4]~input_o\ : std_logic;
SIGNAL \DataIn[4]~input_o\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[4]~3_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~14\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~17_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux4~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~56feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~56_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~72_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~64feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~64_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~40_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~32_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~24_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~16_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~124_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~48_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~92_combout\ : std_logic;
SIGNAL \DataIn[5]~input_o\ : std_logic;
SIGNAL \DadoROM[5]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~18\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~21_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux3~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~57_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~73_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~65_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~41_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~33_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~25_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~17_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~128_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~49feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~49_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~96_combout\ : std_logic;
SIGNAL \DadoROM[6]~input_o\ : std_logic;
SIGNAL \DataIn[6]~input_o\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[6]~4_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~22\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~25_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux2~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~58_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~74_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~66_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~42_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~34_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~26_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~18feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~18_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~132_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~50feeder_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~50_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~100_combout\ : std_logic;
SIGNAL \DadoROM[7]~input_o\ : std_logic;
SIGNAL \DataIn[7]~input_o\ : std_logic;
SIGNAL \CPUnoUC|Mux|Y[7]~5_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~26\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Add0~29_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Mux1~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~75_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~59_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~67_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~27_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~35_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~43_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~19_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~136_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~51_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|registrador~104_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~4_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~3_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~1_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~2_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|Equal0~5_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Zero|output[0]~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Mux|Y[0]~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|Add0~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Mux|Y[1]~1_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|Add0~1_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Mux|Y[2]~2_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|Add0~2_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Mux|Y[3]~3_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|Add0~3_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Mux|Y[4]~4_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|zero\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPUnoUC|Pc|PC|output\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Zero|output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Ula|resultado\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~136_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~132_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~128_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~124_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~120_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~116_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~112_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~108_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~104_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~100_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~96_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~92_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~88_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~84_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~76_combout\ : std_logic;
SIGNAL \ALT_INV_DadoROM[10]~input_o\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_zero\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_resultado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Uc|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[7]~5_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[6]~4_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[4]~3_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[3]~2_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[1]~1_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \CPUnoUC|Mux|ALT_INV_Y[0]~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|ALT_INV_Add0~3_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \CPUnoUC|Pc|Somador|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Zero|ALT_INV_output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Banco|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \CPUnoUC|Pc|PC|ALT_INV_output\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPUnoUC|BncULA|Ula|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_DadoROM[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DadoROM[9]~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_DataIn <= DataIn;
bancoOut <= ww_bancoOut;
Addr <= ww_Addr;
ww_DadoROM <= DadoROM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~21_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~21_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~17_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~17_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~13_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~13_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~9_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~9_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~5_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~5_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~1_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~1_sumout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~136_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~136_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~132_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~132_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~128_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~128_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~124_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~124_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~120_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~120_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~116_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~116_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~112_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~112_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~108_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~108_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~104_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~104_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~100_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~100_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~96_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~96_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~92_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~92_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~88_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~88_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~84_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~84_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~80_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~80_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~76_combout\ <= NOT \CPUnoUC|BncULA|Banco|registrador~76_combout\;
\ALT_INV_DadoROM[10]~input_o\ <= NOT \DadoROM[10]~input_o\;
\CPUnoUC|BncULA|Ula|ALT_INV_zero\(0) <= NOT \CPUnoUC|BncULA|Ula|zero\(0);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(7) <= NOT \CPUnoUC|BncULA|Ula|resultado\(7);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(6) <= NOT \CPUnoUC|BncULA|Ula|resultado\(6);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(5) <= NOT \CPUnoUC|BncULA|Ula|resultado\(5);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(4) <= NOT \CPUnoUC|BncULA|Ula|resultado\(4);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(3) <= NOT \CPUnoUC|BncULA|Ula|resultado\(3);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(2) <= NOT \CPUnoUC|BncULA|Ula|resultado\(2);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(1) <= NOT \CPUnoUC|BncULA|Ula|resultado\(1);
\CPUnoUC|BncULA|Ula|ALT_INV_resultado\(0) <= NOT \CPUnoUC|BncULA|Ula|resultado\(0);
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~5_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~5_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~4_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~4_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~3_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~3_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~2_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~2_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~1_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~1_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Equal0~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Equal0~0_combout\;
\Uc|ALT_INV_Mux6~0_combout\ <= NOT \Uc|Mux6~0_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux1~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux1~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[7]~5_combout\ <= NOT \CPUnoUC|Mux|Y[7]~5_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux2~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux2~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[6]~4_combout\ <= NOT \CPUnoUC|Mux|Y[6]~4_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux3~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux3~0_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux4~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux4~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[4]~3_combout\ <= NOT \CPUnoUC|Mux|Y[4]~3_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux5~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux5~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[3]~2_combout\ <= NOT \CPUnoUC|Mux|Y[3]~2_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux6~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux6~0_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux7~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux7~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[1]~1_combout\ <= NOT \CPUnoUC|Mux|Y[1]~1_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux0~0_combout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Mux8~0_combout\ <= NOT \CPUnoUC|BncULA|Ula|Mux8~0_combout\;
\CPUnoUC|Mux|ALT_INV_Y[0]~0_combout\ <= NOT \CPUnoUC|Mux|Y[0]~0_combout\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~35_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~35_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~19_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~19_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~43_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~43_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~27_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~27_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~34_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~34_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~18_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~18_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~42_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~42_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~26_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~26_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~33_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~33_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~17_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~17_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~41_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~41_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~25_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~25_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~32_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~32_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~16_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~16_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~40_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~40_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~24_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~24_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~31_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~31_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~15_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~15_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~39_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~39_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~23_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~23_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~30_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~30_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~14_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~14_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~38_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~38_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~22_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~22_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~29_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~29_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~13_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~13_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~37_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~37_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~21_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~21_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~28_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~28_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~12_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~12_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~36_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~36_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~20_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~20_q\;
\CPUnoUC|Pc|Somador|ALT_INV_Add0~3_combout\ <= NOT \CPUnoUC|Pc|Somador|Add0~3_combout\;
\CPUnoUC|Pc|Somador|ALT_INV_Add0~2_combout\ <= NOT \CPUnoUC|Pc|Somador|Add0~2_combout\;
\CPUnoUC|Pc|Somador|ALT_INV_Add0~1_combout\ <= NOT \CPUnoUC|Pc|Somador|Add0~1_combout\;
\CPUnoUC|Pc|Somador|ALT_INV_Add0~0_combout\ <= NOT \CPUnoUC|Pc|Somador|Add0~0_combout\;
\CPUnoUC|BncULA|Zero|ALT_INV_output\(0) <= NOT \CPUnoUC|BncULA|Zero|output\(0);
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~67_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~67_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~51_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~51_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~75_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~75_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~59_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~59_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~66_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~66_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~50_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~50_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~74_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~74_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~58_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~58_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~65_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~65_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~49_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~49_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~73_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~73_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~57_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~57_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~64_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~64_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~48_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~48_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~72_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~72_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~56_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~56_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~63_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~63_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~47_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~47_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~71_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~71_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~55_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~55_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~62_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~62_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~46_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~46_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~70_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~70_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~54_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~54_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~61_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~61_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~45_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~45_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~69_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~69_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~53_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~53_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~60_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~60_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~44_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~44_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~68_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~68_q\;
\CPUnoUC|BncULA|Banco|ALT_INV_registrador~52_q\ <= NOT \CPUnoUC|BncULA|Banco|registrador~52_q\;
\CPUnoUC|Pc|PC|ALT_INV_output\(4) <= NOT \CPUnoUC|Pc|PC|output\(4);
\CPUnoUC|Pc|PC|ALT_INV_output\(3) <= NOT \CPUnoUC|Pc|PC|output\(3);
\CPUnoUC|Pc|PC|ALT_INV_output\(2) <= NOT \CPUnoUC|Pc|PC|output\(2);
\CPUnoUC|Pc|PC|ALT_INV_output\(1) <= NOT \CPUnoUC|Pc|PC|output\(1);
\CPUnoUC|Pc|PC|ALT_INV_output\(0) <= NOT \CPUnoUC|Pc|PC|output\(0);
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~29_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~29_sumout\;
\CPUnoUC|BncULA|Ula|ALT_INV_Add0~25_sumout\ <= NOT \CPUnoUC|BncULA|Ula|Add0~25_sumout\;
\ALT_INV_DadoROM[7]~input_o\ <= NOT \DadoROM[7]~input_o\;
\ALT_INV_DataIn[7]~input_o\ <= NOT \DataIn[7]~input_o\;
\ALT_INV_DadoROM[6]~input_o\ <= NOT \DadoROM[6]~input_o\;
\ALT_INV_DataIn[6]~input_o\ <= NOT \DataIn[6]~input_o\;
\ALT_INV_DadoROM[5]~input_o\ <= NOT \DadoROM[5]~input_o\;
\ALT_INV_DataIn[5]~input_o\ <= NOT \DataIn[5]~input_o\;
\ALT_INV_DataIn[4]~input_o\ <= NOT \DataIn[4]~input_o\;
\ALT_INV_DataIn[3]~input_o\ <= NOT \DataIn[3]~input_o\;
\ALT_INV_DataIn[2]~input_o\ <= NOT \DataIn[2]~input_o\;
\ALT_INV_DataIn[1]~input_o\ <= NOT \DataIn[1]~input_o\;
\ALT_INV_DataIn[0]~input_o\ <= NOT \DataIn[0]~input_o\;
\ALT_INV_DadoROM[8]~input_o\ <= NOT \DadoROM[8]~input_o\;
\ALT_INV_DadoROM[4]~input_o\ <= NOT \DadoROM[4]~input_o\;
\ALT_INV_DadoROM[3]~input_o\ <= NOT \DadoROM[3]~input_o\;
\ALT_INV_DadoROM[2]~input_o\ <= NOT \DadoROM[2]~input_o\;
\ALT_INV_DadoROM[1]~input_o\ <= NOT \DadoROM[1]~input_o\;
\ALT_INV_DadoROM[13]~input_o\ <= NOT \DadoROM[13]~input_o\;
\ALT_INV_DadoROM[12]~input_o\ <= NOT \DadoROM[12]~input_o\;
\ALT_INV_DadoROM[11]~input_o\ <= NOT \DadoROM[11]~input_o\;
\ALT_INV_DadoROM[0]~input_o\ <= NOT \DadoROM[0]~input_o\;
\ALT_INV_DadoROM[9]~input_o\ <= NOT \DadoROM[9]~input_o\;

-- Location: IOOBUF_X40_Y0_N19
\bancoOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~76_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(0));

-- Location: IOOBUF_X52_Y0_N36
\bancoOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~80_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(1));

-- Location: IOOBUF_X40_Y0_N2
\bancoOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~84_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(2));

-- Location: IOOBUF_X50_Y0_N42
\bancoOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~88_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(3));

-- Location: IOOBUF_X52_Y0_N19
\bancoOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~92_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(4));

-- Location: IOOBUF_X60_Y0_N19
\bancoOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~96_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(5));

-- Location: IOOBUF_X50_Y0_N93
\bancoOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~100_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(6));

-- Location: IOOBUF_X50_Y0_N76
\bancoOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|BncULA|Banco|registrador~104_combout\,
	devoe => ww_devoe,
	o => ww_bancoOut(7));

-- Location: IOOBUF_X62_Y0_N2
\Addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|Pc|PC|output\(0),
	devoe => ww_devoe,
	o => ww_Addr(0));

-- Location: IOOBUF_X66_Y0_N59
\Addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|Pc|PC|output\(1),
	devoe => ww_devoe,
	o => ww_Addr(1));

-- Location: IOOBUF_X60_Y0_N53
\Addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|Pc|PC|output\(2),
	devoe => ww_devoe,
	o => ww_Addr(2));

-- Location: IOOBUF_X62_Y0_N53
\Addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|Pc|PC|output\(3),
	devoe => ww_devoe,
	o => ww_Addr(3));

-- Location: IOOBUF_X62_Y0_N36
\Addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPUnoUC|Pc|PC|output\(4),
	devoe => ww_devoe,
	o => ww_Addr(4));

-- Location: IOIBUF_X56_Y0_N35
\DadoROM[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(10),
	o => \DadoROM[10]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X56_Y0_N52
\DadoROM[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(13),
	o => \DadoROM[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\DadoROM[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(12),
	o => \DadoROM[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\DadoROM[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(11),
	o => \DadoROM[11]~input_o\);

-- Location: LABCELL_X56_Y2_N42
\CPUnoUC|BncULA|Ula|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux0~0_combout\ = ( \DadoROM[11]~input_o\ & ( (\DadoROM[12]~input_o\) # (\DadoROM[13]~input_o\) ) ) # ( !\DadoROM[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Ula|Mux0~0_combout\);

-- Location: LABCELL_X57_Y2_N57
\Uc|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uc|Mux6~0_combout\ = ( \DadoROM[11]~input_o\ & ( (\DadoROM[12]~input_o\ & \DadoROM[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \Uc|Mux6~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\DadoROM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(0),
	o => \DadoROM[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\DataIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(0),
	o => \DataIn[0]~input_o\);

-- Location: LABCELL_X57_Y2_N0
\CPUnoUC|BncULA|Ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~1_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~76_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[0]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[0]~input_o\))) ) + ( !VCC ))
-- \CPUnoUC|BncULA|Ula|Add0~2\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~76_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[0]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[0]~input_o\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_DadoROM[0]~input_o\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~76_combout\,
	dataf => \ALT_INV_DataIn[0]~input_o\,
	cin => GND,
	sumout => \CPUnoUC|BncULA|Ula|Add0~1_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~2\);

-- Location: LABCELL_X57_Y3_N12
\CPUnoUC|Mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[0]~0_combout\ = ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\ & (((\DadoROM[0]~input_o\)))) # (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\ & (\DadoROM[0]~input_o\)) # (\DadoROM[13]~input_o\ & ((\DataIn[0]~input_o\))))) ) ) # ( 
-- !\DadoROM[11]~input_o\ & ( \DadoROM[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[0]~input_o\,
	datad => \ALT_INV_DataIn[0]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[0]~0_combout\);

-- Location: LABCELL_X56_Y2_N21
\CPUnoUC|BncULA|Ula|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux8~0_combout\ = ( \DadoROM[13]~input_o\ & ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\ & (\CPUnoUC|BncULA|Ula|Add0~1_sumout\)) # (\DadoROM[12]~input_o\ & ((\CPUnoUC|Mux|Y[0]~0_combout\))) ) ) ) # ( !\DadoROM[13]~input_o\ & ( 
-- \DadoROM[11]~input_o\ & ( (\CPUnoUC|BncULA|Ula|Add0~1_sumout\ & \DadoROM[12]~input_o\) ) ) ) # ( \DadoROM[13]~input_o\ & ( !\DadoROM[11]~input_o\ & ( \CPUnoUC|BncULA|Ula|Add0~1_sumout\ ) ) ) # ( !\DadoROM[13]~input_o\ & ( !\DadoROM[11]~input_o\ & ( 
-- (!\DadoROM[12]~input_o\ & (\CPUnoUC|BncULA|Ula|Add0~1_sumout\)) # (\DadoROM[12]~input_o\ & ((\CPUnoUC|Mux|Y[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010101010101010100000101000001010101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \CPUnoUC|Mux|ALT_INV_Y[0]~0_combout\,
	datae => \ALT_INV_DadoROM[13]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Ula|Mux8~0_combout\);

-- Location: LABCELL_X56_Y2_N45
\CPUnoUC|BncULA|Ula|resultado[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(0) = ( \CPUnoUC|BncULA|Ula|Mux8~0_combout\ & ( (\CPUnoUC|BncULA|Ula|resultado\(0)) # (\CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) ) # ( !\CPUnoUC|BncULA|Ula|Mux8~0_combout\ & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & 
-- \CPUnoUC|BncULA|Ula|resultado\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(0),
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Mux8~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(0));

-- Location: IOIBUF_X54_Y0_N1
\DadoROM[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(9),
	o => \DadoROM[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\DadoROM[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(8),
	o => \DadoROM[8]~input_o\);

-- Location: LABCELL_X57_Y1_N36
\CPUnoUC|BncULA|Banco|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~141_combout\ = ( \DadoROM[9]~input_o\ & ( \DadoROM[8]~input_o\ & ( (\DadoROM[10]~input_o\ & ((!\DadoROM[13]~input_o\ & (!\DadoROM[11]~input_o\)) # (\DadoROM[13]~input_o\ & (\DadoROM[11]~input_o\ & 
-- \DadoROM[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datab => \ALT_INV_DadoROM[11]~input_o\,
	datac => \ALT_INV_DadoROM[10]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[8]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~141_combout\);

-- Location: FF_X56_Y3_N59
\CPUnoUC|BncULA|Banco|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(0),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~68_q\);

-- Location: LABCELL_X56_Y1_N15
\CPUnoUC|BncULA|Banco|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~143_combout\ = ( \DadoROM[9]~input_o\ & ( \DadoROM[11]~input_o\ & ( (!\DadoROM[8]~input_o\ & (\DadoROM[10]~input_o\ & (\DadoROM[13]~input_o\ & \DadoROM[12]~input_o\))) ) ) ) # ( \DadoROM[9]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (!\DadoROM[8]~input_o\ & (\DadoROM[10]~input_o\ & !\DadoROM[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[8]~input_o\,
	datab => \ALT_INV_DadoROM[10]~input_o\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~143_combout\);

-- Location: FF_X56_Y1_N29
\CPUnoUC|BncULA|Banco|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(0),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~60_q\);

-- Location: LABCELL_X56_Y1_N0
\CPUnoUC|BncULA|Banco|registrador~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~52feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(0),
	combout => \CPUnoUC|BncULA|Banco|registrador~52feeder_combout\);

-- Location: LABCELL_X56_Y1_N45
\CPUnoUC|BncULA|Banco|registrador~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~140_combout\ = ( !\DadoROM[9]~input_o\ & ( \DadoROM[11]~input_o\ & ( (\DadoROM[8]~input_o\ & (\DadoROM[13]~input_o\ & (\DadoROM[10]~input_o\ & \DadoROM[12]~input_o\))) ) ) ) # ( !\DadoROM[9]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (\DadoROM[8]~input_o\ & (!\DadoROM[13]~input_o\ & \DadoROM[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[8]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[10]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~140_combout\);

-- Location: FF_X56_Y1_N1
\CPUnoUC|BncULA|Banco|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~52feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~52_q\);

-- Location: LABCELL_X56_Y2_N33
\CPUnoUC|BncULA|Banco|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~144_combout\ = ( !\DadoROM[9]~input_o\ & ( \DadoROM[11]~input_o\ & ( (\DadoROM[13]~input_o\ & (\DadoROM[8]~input_o\ & (!\DadoROM[10]~input_o\ & \DadoROM[12]~input_o\))) ) ) ) # ( !\DadoROM[9]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (!\DadoROM[13]~input_o\ & (\DadoROM[8]~input_o\ & !\DadoROM[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \ALT_INV_DadoROM[10]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~144_combout\);

-- Location: FF_X56_Y3_N32
\CPUnoUC|BncULA|Banco|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(0),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~20_q\);

-- Location: LABCELL_X56_Y2_N3
\CPUnoUC|BncULA|Banco|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~147_combout\ = ( \DadoROM[9]~input_o\ & ( !\DadoROM[8]~input_o\ & ( (!\DadoROM[10]~input_o\ & ((!\DadoROM[11]~input_o\ & ((!\DadoROM[13]~input_o\))) # (\DadoROM[11]~input_o\ & (\DadoROM[12]~input_o\ & 
-- \DadoROM[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DadoROM[11]~input_o\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[8]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~147_combout\);

-- Location: FF_X56_Y2_N56
\CPUnoUC|BncULA|Banco|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(0),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~28_q\);

-- Location: LABCELL_X57_Y2_N39
\CPUnoUC|BncULA|Banco|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~145_combout\ = ( \DadoROM[8]~input_o\ & ( \DadoROM[11]~input_o\ & ( (\DadoROM[9]~input_o\ & (!\DadoROM[10]~input_o\ & (\DadoROM[12]~input_o\ & \DadoROM[13]~input_o\))) ) ) ) # ( \DadoROM[8]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (\DadoROM[9]~input_o\ & (!\DadoROM[10]~input_o\ & !\DadoROM[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[9]~input_o\,
	datab => \ALT_INV_DadoROM[10]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[8]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~145_combout\);

-- Location: FF_X56_Y3_N37
\CPUnoUC|BncULA|Banco|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(0),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~36_q\);

-- Location: LABCELL_X57_Y1_N15
\CPUnoUC|BncULA|Banco|registrador~12feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~12feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(0),
	combout => \CPUnoUC|BncULA|Banco|registrador~12feeder_combout\);

-- Location: LABCELL_X57_Y1_N33
\CPUnoUC|BncULA|Banco|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~146_combout\ = ( !\DadoROM[9]~input_o\ & ( \DadoROM[11]~input_o\ & ( (\DadoROM[13]~input_o\ & (!\DadoROM[8]~input_o\ & (!\DadoROM[10]~input_o\ & \DadoROM[12]~input_o\))) ) ) ) # ( !\DadoROM[9]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (!\DadoROM[13]~input_o\ & (!\DadoROM[8]~input_o\ & !\DadoROM[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \ALT_INV_DadoROM[10]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~146_combout\);

-- Location: FF_X57_Y1_N16
\CPUnoUC|BncULA|Banco|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~12feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~12_q\);

-- Location: LABCELL_X56_Y3_N24
\CPUnoUC|BncULA|Banco|registrador~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~108_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & (((!\DadoROM[8]~input_o\ & ((\CPUnoUC|BncULA|Banco|registrador~12_q\))) # (\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~20_q\))))) # 
-- (\DadoROM[10]~input_o\ & ((((\DadoROM[8]~input_o\))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & (((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~28_q\)) # (\DadoROM[8]~input_o\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~36_q\)))))) # (\DadoROM[10]~input_o\ & ((((\DadoROM[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000010100000101001110111011101110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[10]~input_o\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~20_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~28_q\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~36_q\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[8]~input_o\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~12_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~108_combout\);

-- Location: LABCELL_X55_Y2_N18
\CPUnoUC|BncULA|Banco|registrador~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~44feeder_combout\ = \CPUnoUC|BncULA|Ula|resultado\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(0),
	combout => \CPUnoUC|BncULA|Banco|registrador~44feeder_combout\);

-- Location: LABCELL_X55_Y2_N45
\CPUnoUC|BncULA|Banco|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~142_combout\ = ( !\DadoROM[9]~input_o\ & ( \DadoROM[11]~input_o\ & ( (!\DadoROM[8]~input_o\ & (\DadoROM[12]~input_o\ & (\DadoROM[10]~input_o\ & \DadoROM[13]~input_o\))) ) ) ) # ( !\DadoROM[9]~input_o\ & ( 
-- !\DadoROM[11]~input_o\ & ( (!\DadoROM[8]~input_o\ & (\DadoROM[10]~input_o\ & !\DadoROM[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[8]~input_o\,
	datab => \ALT_INV_DadoROM[12]~input_o\,
	datac => \ALT_INV_DadoROM[10]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|BncULA|Banco|registrador~142_combout\);

-- Location: FF_X55_Y2_N20
\CPUnoUC|BncULA|Banco|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~44feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~44_q\);

-- Location: LABCELL_X56_Y3_N42
\CPUnoUC|BncULA|Banco|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~76_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & ((((\CPUnoUC|BncULA|Banco|registrador~108_combout\))))) # (\DadoROM[10]~input_o\ & (((!\CPUnoUC|BncULA|Banco|registrador~108_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~44_q\)) # (\CPUnoUC|BncULA|Banco|registrador~108_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~52_q\)))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & 
-- ((((\CPUnoUC|BncULA|Banco|registrador~108_combout\))))) # (\DadoROM[10]~input_o\ & (((!\CPUnoUC|BncULA|Banco|registrador~108_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~60_q\))) # (\CPUnoUC|BncULA|Banco|registrador~108_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~68_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[10]~input_o\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~68_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~60_q\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~52_q\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~108_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~44_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~76_combout\);

-- Location: IOIBUF_X60_Y0_N35
\DadoROM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(1),
	o => \DadoROM[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\DataIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(1),
	o => \DataIn[1]~input_o\);

-- Location: LABCELL_X57_Y2_N3
\CPUnoUC|BncULA|Ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~5_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~80_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[1]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[1]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~2\ ))
-- \CPUnoUC|BncULA|Ula|Add0~6\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~80_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[1]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[1]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[1]~input_o\,
	datac => \Uc|ALT_INV_Mux6~0_combout\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~80_combout\,
	dataf => \ALT_INV_DataIn[1]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~2\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~5_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~6\);

-- Location: LABCELL_X56_Y1_N24
\CPUnoUC|Mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[1]~1_combout\ = ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\ & (((\DadoROM[1]~input_o\)))) # (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\ & ((\DadoROM[1]~input_o\))) # (\DadoROM[13]~input_o\ & (\DataIn[1]~input_o\)))) ) ) # ( 
-- !\DadoROM[11]~input_o\ & ( \DadoROM[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101010011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataIn[1]~input_o\,
	datab => \ALT_INV_DadoROM[1]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[1]~1_combout\);

-- Location: LABCELL_X56_Y1_N33
\CPUnoUC|BncULA|Ula|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux7~0_combout\ = ( \DadoROM[11]~input_o\ & ( \CPUnoUC|Mux|Y[1]~1_combout\ & ( (!\DadoROM[12]~input_o\ & (\CPUnoUC|BncULA|Ula|Add0~5_sumout\ & \DadoROM[13]~input_o\)) # (\DadoROM[12]~input_o\ & ((\DadoROM[13]~input_o\) # 
-- (\CPUnoUC|BncULA|Ula|Add0~5_sumout\))) ) ) ) # ( !\DadoROM[11]~input_o\ & ( \CPUnoUC|Mux|Y[1]~1_combout\ & ( ((\DadoROM[12]~input_o\ & !\DadoROM[13]~input_o\)) # (\CPUnoUC|BncULA|Ula|Add0~5_sumout\) ) ) ) # ( \DadoROM[11]~input_o\ & ( 
-- !\CPUnoUC|Mux|Y[1]~1_combout\ & ( (\CPUnoUC|BncULA|Ula|Add0~5_sumout\ & (!\DadoROM[12]~input_o\ $ (!\DadoROM[13]~input_o\))) ) ) ) # ( !\DadoROM[11]~input_o\ & ( !\CPUnoUC|Mux|Y[1]~1_combout\ & ( (\CPUnoUC|BncULA|Ula|Add0~5_sumout\ & 
-- ((!\DadoROM[12]~input_o\) # (\DadoROM[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011000100100001001001110011011100110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[11]~input_o\,
	dataf => \CPUnoUC|Mux|ALT_INV_Y[1]~1_combout\,
	combout => \CPUnoUC|BncULA|Ula|Mux7~0_combout\);

-- Location: LABCELL_X56_Y1_N21
\CPUnoUC|BncULA|Ula|resultado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(1) = ( \CPUnoUC|BncULA|Ula|Mux0~0_combout\ & ( \CPUnoUC|BncULA|Ula|Mux7~0_combout\ ) ) # ( !\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & ( \CPUnoUC|BncULA|Ula|Mux7~0_combout\ & ( \CPUnoUC|BncULA|Ula|resultado\(1) ) ) ) # ( 
-- !\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & ( !\CPUnoUC|BncULA|Ula|Mux7~0_combout\ & ( \CPUnoUC|BncULA|Ula|resultado\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(1),
	datae => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Mux7~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(1));

-- Location: LABCELL_X56_Y1_N3
\CPUnoUC|BncULA|Banco|registrador~53feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~53feeder_combout\ = \CPUnoUC|BncULA|Ula|resultado\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(1),
	combout => \CPUnoUC|BncULA|Banco|registrador~53feeder_combout\);

-- Location: FF_X56_Y1_N4
\CPUnoUC|BncULA|Banco|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~53feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~53_q\);

-- Location: FF_X57_Y1_N32
\CPUnoUC|BncULA|Banco|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~69_q\);

-- Location: FF_X56_Y1_N19
\CPUnoUC|BncULA|Banco|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~61_q\);

-- Location: FF_X56_Y1_N44
\CPUnoUC|BncULA|Banco|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~37_q\);

-- Location: FF_X56_Y2_N17
\CPUnoUC|BncULA|Banco|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~29_q\);

-- Location: FF_X56_Y2_N1
\CPUnoUC|BncULA|Banco|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~21_q\);

-- Location: FF_X57_Y1_N14
\CPUnoUC|BncULA|Banco|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(1),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~13_q\);

-- Location: LABCELL_X56_Y1_N39
\CPUnoUC|BncULA|Banco|registrador~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~112_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~13_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\CPUnoUC|BncULA|Banco|registrador~21_q\) # 
-- (\DadoROM[10]~input_o\))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~29_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\DadoROM[10]~input_o\))) # 
-- (\CPUnoUC|BncULA|Banco|registrador~37_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001010101000110110101010101011111010101010001101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[8]~input_o\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~37_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~29_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~21_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~13_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~112_combout\);

-- Location: LABCELL_X55_Y2_N30
\CPUnoUC|BncULA|Banco|registrador~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~45feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(1),
	combout => \CPUnoUC|BncULA|Banco|registrador~45feeder_combout\);

-- Location: FF_X55_Y2_N32
\CPUnoUC|BncULA|Banco|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~45feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~45_q\);

-- Location: LABCELL_X56_Y1_N54
\CPUnoUC|BncULA|Banco|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~80_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~112_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~112_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~45_q\))) # (\CPUnoUC|BncULA|Banco|registrador~112_combout\ & (\CPUnoUC|BncULA|Banco|registrador~53_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~112_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~112_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~61_q\))) # (\CPUnoUC|BncULA|Banco|registrador~112_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~69_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~53_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~69_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~61_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~112_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~45_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~80_combout\);

-- Location: IOIBUF_X60_Y0_N1
\DataIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(2),
	o => \DataIn[2]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\DadoROM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(2),
	o => \DadoROM[2]~input_o\);

-- Location: LABCELL_X57_Y2_N6
\CPUnoUC|BncULA|Ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~9_sumout\ = SUM(( (!\Uc|Mux6~0_combout\ & (\DadoROM[2]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[2]~input_o\))) ) + ( \CPUnoUC|BncULA|Banco|registrador~84_combout\ ) + ( \CPUnoUC|BncULA|Ula|Add0~6\ ))
-- \CPUnoUC|BncULA|Ula|Add0~10\ = CARRY(( (!\Uc|Mux6~0_combout\ & (\DadoROM[2]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[2]~input_o\))) ) + ( \CPUnoUC|BncULA|Banco|registrador~84_combout\ ) + ( \CPUnoUC|BncULA|Ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[2]~input_o\,
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~84_combout\,
	datad => \ALT_INV_DataIn[2]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~6\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~9_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~10\);

-- Location: LABCELL_X57_Y3_N54
\CPUnoUC|BncULA|Ula|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux6~0_combout\ = ( \DadoROM[2]~input_o\ & ( \CPUnoUC|BncULA|Ula|Add0~9_sumout\ & ( (!\DadoROM[11]~input_o\) # ((!\DadoROM[12]~input_o\ & ((\DadoROM[13]~input_o\))) # (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\) # 
-- (\DataIn[2]~input_o\)))) ) ) ) # ( !\DadoROM[2]~input_o\ & ( \CPUnoUC|BncULA|Ula|Add0~9_sumout\ & ( (!\DadoROM[13]~input_o\ & ((!\DadoROM[11]~input_o\ $ (\DadoROM[12]~input_o\)))) # (\DadoROM[13]~input_o\ & (((!\DadoROM[11]~input_o\) # 
-- (!\DadoROM[12]~input_o\)) # (\DataIn[2]~input_o\))) ) ) ) # ( \DadoROM[2]~input_o\ & ( !\CPUnoUC|BncULA|Ula|Add0~9_sumout\ & ( (\DadoROM[12]~input_o\ & ((!\DadoROM[11]~input_o\ & ((!\DadoROM[13]~input_o\))) # (\DadoROM[11]~input_o\ & (\DataIn[2]~input_o\ 
-- & \DadoROM[13]~input_o\)))) ) ) ) # ( !\DadoROM[2]~input_o\ & ( !\CPUnoUC|BncULA|Ula|Add0~9_sumout\ & ( (\DataIn[2]~input_o\ & (\DadoROM[11]~input_o\ & (\DadoROM[12]~input_o\ & \DadoROM[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000011000000000111000011111111011100111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DataIn[2]~input_o\,
	datab => \ALT_INV_DadoROM[11]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[2]~input_o\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~9_sumout\,
	combout => \CPUnoUC|BncULA|Ula|Mux6~0_combout\);

-- Location: LABCELL_X57_Y3_N3
\CPUnoUC|BncULA|Ula|resultado[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(2) = ( \CPUnoUC|BncULA|Ula|Mux6~0_combout\ & ( (\CPUnoUC|BncULA|Ula|resultado\(2)) # (\CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) ) # ( !\CPUnoUC|BncULA|Ula|Mux6~0_combout\ & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & 
-- \CPUnoUC|BncULA|Ula|resultado\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(2),
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Mux6~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(2));

-- Location: FF_X56_Y3_N50
\CPUnoUC|BncULA|Banco|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(2),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~70_q\);

-- Location: LABCELL_X56_Y1_N9
\CPUnoUC|BncULA|Banco|registrador~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~62feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(2),
	combout => \CPUnoUC|BncULA|Banco|registrador~62feeder_combout\);

-- Location: FF_X56_Y1_N11
\CPUnoUC|BncULA|Banco|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~62feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~62_q\);

-- Location: LABCELL_X56_Y1_N48
\CPUnoUC|BncULA|Banco|registrador~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~54feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(2),
	combout => \CPUnoUC|BncULA|Banco|registrador~54feeder_combout\);

-- Location: FF_X56_Y1_N49
\CPUnoUC|BncULA|Banco|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~54feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~54_q\);

-- Location: FF_X56_Y3_N23
\CPUnoUC|BncULA|Banco|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(2),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~38_q\);

-- Location: FF_X56_Y3_N44
\CPUnoUC|BncULA|Banco|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(2),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~22_q\);

-- Location: FF_X57_Y3_N44
\CPUnoUC|BncULA|Banco|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(2),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~30_q\);

-- Location: LABCELL_X57_Y1_N54
\CPUnoUC|BncULA|Banco|registrador~14feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~14feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(2),
	combout => \CPUnoUC|BncULA|Banco|registrador~14feeder_combout\);

-- Location: FF_X57_Y1_N56
\CPUnoUC|BncULA|Banco|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~14feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~14_q\);

-- Location: LABCELL_X56_Y3_N12
\CPUnoUC|BncULA|Banco|registrador~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~116_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~14_q\ & !\DadoROM[10]~input_o\)))) # (\DadoROM[8]~input_o\ & (((\DadoROM[10]~input_o\)) # 
-- (\CPUnoUC|BncULA|Banco|registrador~22_q\)))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~30_q\ & !\DadoROM[10]~input_o\)))) # (\DadoROM[8]~input_o\ & (((\DadoROM[10]~input_o\)) # 
-- (\CPUnoUC|BncULA|Banco|registrador~38_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~38_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~22_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~30_q\,
	datad => \ALT_INV_DadoROM[8]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \ALT_INV_DadoROM[10]~input_o\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~14_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~116_combout\);

-- Location: FF_X56_Y2_N19
\CPUnoUC|BncULA|Banco|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(2),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~46_q\);

-- Location: LABCELL_X56_Y3_N6
\CPUnoUC|BncULA|Banco|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~84_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & ((((\CPUnoUC|BncULA|Banco|registrador~116_combout\))))) # (\DadoROM[10]~input_o\ & (((!\CPUnoUC|BncULA|Banco|registrador~116_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~46_q\)) # (\CPUnoUC|BncULA|Banco|registrador~116_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~54_q\)))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & 
-- ((((\CPUnoUC|BncULA|Banco|registrador~116_combout\))))) # (\DadoROM[10]~input_o\ & (((!\CPUnoUC|BncULA|Banco|registrador~116_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~62_q\))) # (\CPUnoUC|BncULA|Banco|registrador~116_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~70_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[10]~input_o\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~70_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~62_q\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~54_q\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~116_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~46_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~84_combout\);

-- Location: IOIBUF_X64_Y0_N35
\DadoROM[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(3),
	o => \DadoROM[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\DataIn[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(3),
	o => \DataIn[3]~input_o\);

-- Location: LABCELL_X57_Y2_N9
\CPUnoUC|BncULA|Ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~13_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~88_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[3]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[3]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~10\ ))
-- \CPUnoUC|BncULA|Ula|Add0~14\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~88_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[3]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[3]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_DadoROM[3]~input_o\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~88_combout\,
	dataf => \ALT_INV_DataIn[3]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~10\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~13_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~14\);

-- Location: LABCELL_X57_Y3_N45
\CPUnoUC|Mux|Y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[3]~2_combout\ = ( \DadoROM[3]~input_o\ & ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\) # ((!\DadoROM[13]~input_o\) # (\DataIn[3]~input_o\)) ) ) ) # ( !\DadoROM[3]~input_o\ & ( \DadoROM[11]~input_o\ & ( (\DadoROM[12]~input_o\ & 
-- (\DataIn[3]~input_o\ & \DadoROM[13]~input_o\)) ) ) ) # ( \DadoROM[3]~input_o\ & ( !\DadoROM[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DataIn[3]~input_o\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[3]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[3]~2_combout\);

-- Location: LABCELL_X57_Y2_N33
\CPUnoUC|BncULA|Ula|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux5~0_combout\ = ( \CPUnoUC|Mux|Y[3]~2_combout\ & ( (!\CPUnoUC|BncULA|Ula|Add0~13_sumout\ & (\DadoROM[12]~input_o\ & (!\DadoROM[13]~input_o\ $ (\DadoROM[11]~input_o\)))) # (\CPUnoUC|BncULA|Ula|Add0~13_sumout\ & 
-- (((!\DadoROM[11]~input_o\) # (\DadoROM[12]~input_o\)) # (\DadoROM[13]~input_o\))) ) ) # ( !\CPUnoUC|Mux|Y[3]~2_combout\ & ( (\CPUnoUC|BncULA|Ula|Add0~13_sumout\ & ((!\DadoROM[13]~input_o\ & (!\DadoROM[12]~input_o\ $ (\DadoROM[11]~input_o\))) # 
-- (\DadoROM[13]~input_o\ & ((!\DadoROM[12]~input_o\) # (!\DadoROM[11]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010010001100010001001000111011000101110011101100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[11]~input_o\,
	dataf => \CPUnoUC|Mux|ALT_INV_Y[3]~2_combout\,
	combout => \CPUnoUC|BncULA|Ula|Mux5~0_combout\);

-- Location: LABCELL_X57_Y2_N30
\CPUnoUC|BncULA|Ula|resultado[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(3) = ( \CPUnoUC|BncULA|Ula|resultado\(3) & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\) # (\CPUnoUC|BncULA|Ula|Mux5~0_combout\) ) ) # ( !\CPUnoUC|BncULA|Ula|resultado\(3) & ( (\CPUnoUC|BncULA|Ula|Mux5~0_combout\ & 
-- \CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux5~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(3),
	combout => \CPUnoUC|BncULA|Ula|resultado\(3));

-- Location: FF_X57_Y1_N40
\CPUnoUC|BncULA|Banco|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~71_q\);

-- Location: FF_X56_Y1_N13
\CPUnoUC|BncULA|Banco|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~55_q\);

-- Location: FF_X57_Y1_N25
\CPUnoUC|BncULA|Banco|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~63_q\);

-- Location: FF_X56_Y2_N10
\CPUnoUC|BncULA|Banco|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~31_q\);

-- Location: FF_X57_Y2_N37
\CPUnoUC|BncULA|Banco|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~39_q\);

-- Location: FF_X56_Y2_N32
\CPUnoUC|BncULA|Banco|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~23_q\);

-- Location: FF_X57_Y1_N58
\CPUnoUC|BncULA|Banco|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~15_q\);

-- Location: LABCELL_X57_Y1_N6
\CPUnoUC|BncULA|Banco|registrador~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~120_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~15_q\)) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~23_q\)))))) # 
-- (\DadoROM[10]~input_o\ & (\DadoROM[8]~input_o\)) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[10]~input_o\ & ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~31_q\)) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~39_q\)))))) # 
-- (\DadoROM[10]~input_o\ & (\DadoROM[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000110010011101100111011001110110001100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[10]~input_o\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~31_q\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~39_q\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~23_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~15_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~120_combout\);

-- Location: FF_X55_Y2_N29
\CPUnoUC|BncULA|Banco|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(3),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~47_q\);

-- Location: LABCELL_X57_Y1_N18
\CPUnoUC|BncULA|Banco|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~88_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~120_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~120_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~47_q\))) # (\CPUnoUC|BncULA|Banco|registrador~120_combout\ & (\CPUnoUC|BncULA|Banco|registrador~55_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~120_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~120_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~63_q\))) # (\CPUnoUC|BncULA|Banco|registrador~120_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~71_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~55_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~63_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~120_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~47_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~88_combout\);

-- Location: IOIBUF_X58_Y0_N92
\DadoROM[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(4),
	o => \DadoROM[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\DataIn[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(4),
	o => \DataIn[4]~input_o\);

-- Location: LABCELL_X57_Y3_N0
\CPUnoUC|Mux|Y[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[4]~3_combout\ = ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\ & (\DadoROM[4]~input_o\)) # (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\ & (\DadoROM[4]~input_o\)) # (\DadoROM[13]~input_o\ & ((\DataIn[4]~input_o\))))) ) ) # ( 
-- !\DadoROM[11]~input_o\ & ( \DadoROM[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001001110011001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DadoROM[4]~input_o\,
	datac => \ALT_INV_DataIn[4]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[4]~3_combout\);

-- Location: LABCELL_X57_Y2_N12
\CPUnoUC|BncULA|Ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~17_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~92_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[4]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[4]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~14\ ))
-- \CPUnoUC|BncULA|Ula|Add0~18\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~92_combout\ ) + ( (!\Uc|Mux6~0_combout\ & (\DadoROM[4]~input_o\)) # (\Uc|Mux6~0_combout\ & ((\DataIn[4]~input_o\))) ) + ( \CPUnoUC|BncULA|Ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110111000100000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[4]~input_o\,
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~92_combout\,
	dataf => \ALT_INV_DataIn[4]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~14\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~17_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~18\);

-- Location: LABCELL_X57_Y2_N42
\CPUnoUC|BncULA|Ula|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux4~0_combout\ = ( \DadoROM[12]~input_o\ & ( (!\CPUnoUC|Mux|Y[4]~3_combout\ & (\CPUnoUC|BncULA|Ula|Add0~17_sumout\ & (!\DadoROM[13]~input_o\ $ (!\DadoROM[11]~input_o\)))) # (\CPUnoUC|Mux|Y[4]~3_combout\ & ((!\DadoROM[13]~input_o\ $ 
-- (\DadoROM[11]~input_o\)) # (\CPUnoUC|BncULA|Ula|Add0~17_sumout\))) ) ) # ( !\DadoROM[12]~input_o\ & ( (\CPUnoUC|BncULA|Ula|Add0~17_sumout\ & ((!\DadoROM[11]~input_o\) # (\DadoROM[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001101010011001101010101001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|Mux|ALT_INV_Y[4]~3_combout\,
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datad => \ALT_INV_DadoROM[11]~input_o\,
	dataf => \ALT_INV_DadoROM[12]~input_o\,
	combout => \CPUnoUC|BncULA|Ula|Mux4~0_combout\);

-- Location: LABCELL_X57_Y2_N45
\CPUnoUC|BncULA|Ula|resultado[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(4) = ( \CPUnoUC|BncULA|Ula|Mux4~0_combout\ & ( (\CPUnoUC|BncULA|Ula|Mux0~0_combout\) # (\CPUnoUC|BncULA|Ula|resultado\(4)) ) ) # ( !\CPUnoUC|BncULA|Ula|Mux4~0_combout\ & ( (\CPUnoUC|BncULA|Ula|resultado\(4) & 
-- !\CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(4),
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Mux4~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(4));

-- Location: LABCELL_X56_Y1_N51
\CPUnoUC|BncULA|Banco|registrador~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~56feeder_combout\ = \CPUnoUC|BncULA|Ula|resultado\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(4),
	combout => \CPUnoUC|BncULA|Banco|registrador~56feeder_combout\);

-- Location: FF_X56_Y1_N52
\CPUnoUC|BncULA|Banco|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~56feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~56_q\);

-- Location: FF_X57_Y1_N49
\CPUnoUC|BncULA|Banco|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(4),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~72_q\);

-- Location: LABCELL_X56_Y1_N6
\CPUnoUC|BncULA|Banco|registrador~64feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~64feeder_combout\ = \CPUnoUC|BncULA|Ula|resultado\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(4),
	combout => \CPUnoUC|BncULA|Banco|registrador~64feeder_combout\);

-- Location: FF_X56_Y1_N8
\CPUnoUC|BncULA|Banco|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~64feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~64_q\);

-- Location: FF_X57_Y2_N47
\CPUnoUC|BncULA|Banco|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Ula|resultado\(4),
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~40_q\);

-- Location: FF_X56_Y2_N49
\CPUnoUC|BncULA|Banco|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(4),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~32_q\);

-- Location: FF_X56_Y2_N35
\CPUnoUC|BncULA|Banco|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(4),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~24_q\);

-- Location: FF_X57_Y1_N55
\CPUnoUC|BncULA|Banco|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(4),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~16_q\);

-- Location: LABCELL_X57_Y1_N42
\CPUnoUC|BncULA|Banco|registrador~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~124_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~16_q\ & (!\DadoROM[10]~input_o\))) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~24_q\) # 
-- (\DadoROM[10]~input_o\))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~32_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\DadoROM[10]~input_o\))) # 
-- (\CPUnoUC|BncULA|Banco|registrador~40_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~40_q\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~32_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~24_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~16_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~124_combout\);

-- Location: FF_X55_Y2_N53
\CPUnoUC|BncULA|Banco|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(4),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~48_q\);

-- Location: LABCELL_X57_Y1_N48
\CPUnoUC|BncULA|Banco|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~92_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~124_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~124_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~48_q\))) # (\CPUnoUC|BncULA|Banco|registrador~124_combout\ & (\CPUnoUC|BncULA|Banco|registrador~56_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~124_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~124_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~64_q\))) # (\CPUnoUC|BncULA|Banco|registrador~124_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~72_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~56_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~72_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~64_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~124_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~48_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~92_combout\);

-- Location: IOIBUF_X50_Y0_N58
\DataIn[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(5),
	o => \DataIn[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\DadoROM[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(5),
	o => \DadoROM[5]~input_o\);

-- Location: LABCELL_X57_Y2_N15
\CPUnoUC|BncULA|Ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~21_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~96_combout\ ) + ( (!\Uc|Mux6~0_combout\ & ((\DadoROM[5]~input_o\))) # (\Uc|Mux6~0_combout\ & (\DataIn[5]~input_o\)) ) + ( \CPUnoUC|BncULA|Ula|Add0~18\ ))
-- \CPUnoUC|BncULA|Ula|Add0~22\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~96_combout\ ) + ( (!\Uc|Mux6~0_combout\ & ((\DadoROM[5]~input_o\))) # (\Uc|Mux6~0_combout\ & (\DataIn[5]~input_o\)) ) + ( \CPUnoUC|BncULA|Ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_DataIn[5]~input_o\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~96_combout\,
	dataf => \ALT_INV_DadoROM[5]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~18\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~21_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~22\);

-- Location: LABCELL_X57_Y2_N48
\CPUnoUC|BncULA|Ula|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux3~0_combout\ = ( \DadoROM[11]~input_o\ & ( \DadoROM[12]~input_o\ & ( (!\DadoROM[13]~input_o\ & (\CPUnoUC|BncULA|Ula|Add0~21_sumout\)) # (\DadoROM[13]~input_o\ & ((\DataIn[5]~input_o\))) ) ) ) # ( !\DadoROM[11]~input_o\ & ( 
-- \DadoROM[12]~input_o\ & ( (!\DadoROM[13]~input_o\ & ((\DadoROM[5]~input_o\))) # (\DadoROM[13]~input_o\ & (\CPUnoUC|BncULA|Ula|Add0~21_sumout\)) ) ) ) # ( \DadoROM[11]~input_o\ & ( !\DadoROM[12]~input_o\ & ( (\DadoROM[13]~input_o\ & 
-- \CPUnoUC|BncULA|Ula|Add0~21_sumout\) ) ) ) # ( !\DadoROM[11]~input_o\ & ( !\DadoROM[12]~input_o\ & ( \CPUnoUC|BncULA|Ula|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100010001000100010001101110110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[13]~input_o\,
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_DataIn[5]~input_o\,
	datad => \ALT_INV_DadoROM[5]~input_o\,
	datae => \ALT_INV_DadoROM[11]~input_o\,
	dataf => \ALT_INV_DadoROM[12]~input_o\,
	combout => \CPUnoUC|BncULA|Ula|Mux3~0_combout\);

-- Location: LABCELL_X57_Y2_N24
\CPUnoUC|BncULA|Ula|resultado[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(5) = ( \CPUnoUC|BncULA|Ula|resultado\(5) & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\) # (\CPUnoUC|BncULA|Ula|Mux3~0_combout\) ) ) # ( !\CPUnoUC|BncULA|Ula|resultado\(5) & ( (\CPUnoUC|BncULA|Ula|Mux3~0_combout\ & 
-- \CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux3~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(5),
	combout => \CPUnoUC|BncULA|Ula|resultado\(5));

-- Location: FF_X56_Y1_N16
\CPUnoUC|BncULA|Banco|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~57_q\);

-- Location: FF_X57_Y1_N2
\CPUnoUC|BncULA|Banco|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~73_q\);

-- Location: FF_X56_Y1_N32
\CPUnoUC|BncULA|Banco|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~65_q\);

-- Location: FF_X57_Y2_N52
\CPUnoUC|BncULA|Banco|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~41_q\);

-- Location: FF_X56_Y2_N13
\CPUnoUC|BncULA|Banco|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~33_q\);

-- Location: FF_X57_Y2_N28
\CPUnoUC|BncULA|Banco|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~25_q\);

-- Location: FF_X57_Y1_N43
\CPUnoUC|BncULA|Banco|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(5),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~17_q\);

-- Location: LABCELL_X57_Y1_N24
\CPUnoUC|BncULA|Banco|registrador~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~128_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~17_q\ & (!\DadoROM[10]~input_o\))) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~25_q\) # 
-- (\DadoROM[10]~input_o\))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~33_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\DadoROM[10]~input_o\))) # 
-- (\CPUnoUC|BncULA|Banco|registrador~41_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~41_q\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~33_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~25_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~17_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~128_combout\);

-- Location: LABCELL_X55_Y2_N36
\CPUnoUC|BncULA|Banco|registrador~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~49feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(5),
	combout => \CPUnoUC|BncULA|Banco|registrador~49feeder_combout\);

-- Location: FF_X55_Y2_N38
\CPUnoUC|BncULA|Banco|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~49feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~49_q\);

-- Location: LABCELL_X57_Y1_N0
\CPUnoUC|BncULA|Banco|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~96_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~128_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~128_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~49_q\))) # (\CPUnoUC|BncULA|Banco|registrador~128_combout\ & (\CPUnoUC|BncULA|Banco|registrador~57_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~128_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~128_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~65_q\))) # (\CPUnoUC|BncULA|Banco|registrador~128_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~57_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~73_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~65_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~128_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~49_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~96_combout\);

-- Location: IOIBUF_X52_Y0_N52
\DadoROM[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(6),
	o => \DadoROM[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\DataIn[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(6),
	o => \DataIn[6]~input_o\);

-- Location: LABCELL_X56_Y2_N15
\CPUnoUC|Mux|Y[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[6]~4_combout\ = ( \DadoROM[11]~input_o\ & ( (!\DadoROM[13]~input_o\ & (\DadoROM[6]~input_o\)) # (\DadoROM[13]~input_o\ & ((!\DadoROM[12]~input_o\ & (\DadoROM[6]~input_o\)) # (\DadoROM[12]~input_o\ & ((\DataIn[6]~input_o\))))) ) ) # ( 
-- !\DadoROM[11]~input_o\ & ( \DadoROM[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[6]~input_o\,
	datab => \ALT_INV_DataIn[6]~input_o\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datad => \ALT_INV_DadoROM[12]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[6]~4_combout\);

-- Location: LABCELL_X57_Y2_N18
\CPUnoUC|BncULA|Ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~25_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~100_combout\ ) + ( (!\Uc|Mux6~0_combout\ & ((\DadoROM[6]~input_o\))) # (\Uc|Mux6~0_combout\ & (\DataIn[6]~input_o\)) ) + ( \CPUnoUC|BncULA|Ula|Add0~22\ ))
-- \CPUnoUC|BncULA|Ula|Add0~26\ = CARRY(( \CPUnoUC|BncULA|Banco|registrador~100_combout\ ) + ( (!\Uc|Mux6~0_combout\ & ((\DadoROM[6]~input_o\))) # (\Uc|Mux6~0_combout\ & (\DataIn[6]~input_o\)) ) + ( \CPUnoUC|BncULA|Ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_DataIn[6]~input_o\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~100_combout\,
	dataf => \ALT_INV_DadoROM[6]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~22\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~25_sumout\,
	cout => \CPUnoUC|BncULA|Ula|Add0~26\);

-- Location: LABCELL_X56_Y2_N36
\CPUnoUC|BncULA|Ula|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux2~0_combout\ = ( \CPUnoUC|Mux|Y[6]~4_combout\ & ( \CPUnoUC|BncULA|Ula|Add0~25_sumout\ & ( (!\DadoROM[11]~input_o\) # ((\DadoROM[12]~input_o\) # (\DadoROM[13]~input_o\)) ) ) ) # ( !\CPUnoUC|Mux|Y[6]~4_combout\ & ( 
-- \CPUnoUC|BncULA|Ula|Add0~25_sumout\ & ( (!\DadoROM[11]~input_o\ & ((!\DadoROM[12]~input_o\) # (\DadoROM[13]~input_o\))) # (\DadoROM[11]~input_o\ & (!\DadoROM[13]~input_o\ $ (!\DadoROM[12]~input_o\))) ) ) ) # ( \CPUnoUC|Mux|Y[6]~4_combout\ & ( 
-- !\CPUnoUC|BncULA|Ula|Add0~25_sumout\ & ( (\DadoROM[12]~input_o\ & (!\DadoROM[11]~input_o\ $ (\DadoROM[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010010000100110110110101101101011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datae => \CPUnoUC|Mux|ALT_INV_Y[6]~4_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~25_sumout\,
	combout => \CPUnoUC|BncULA|Ula|Mux2~0_combout\);

-- Location: LABCELL_X56_Y2_N51
\CPUnoUC|BncULA|Ula|resultado[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(6) = ( \CPUnoUC|BncULA|Ula|Mux2~0_combout\ & ( (\CPUnoUC|BncULA|Ula|resultado\(6)) # (\CPUnoUC|BncULA|Ula|Mux0~0_combout\) ) ) # ( !\CPUnoUC|BncULA|Ula|Mux2~0_combout\ & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & 
-- \CPUnoUC|BncULA|Ula|resultado\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(6),
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Mux2~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(6));

-- Location: FF_X56_Y1_N40
\CPUnoUC|BncULA|Banco|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~58_q\);

-- Location: FF_X57_Y1_N35
\CPUnoUC|BncULA|Banco|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~74_q\);

-- Location: FF_X56_Y1_N26
\CPUnoUC|BncULA|Banco|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~66_q\);

-- Location: FF_X57_Y2_N41
\CPUnoUC|BncULA|Banco|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~42_q\);

-- Location: FF_X56_Y2_N40
\CPUnoUC|BncULA|Banco|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~34_q\);

-- Location: FF_X56_Y2_N4
\CPUnoUC|BncULA|Banco|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(6),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~26_q\);

-- Location: LABCELL_X57_Y1_N12
\CPUnoUC|BncULA|Banco|registrador~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~18feeder_combout\ = ( \CPUnoUC|BncULA|Ula|resultado\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(6),
	combout => \CPUnoUC|BncULA|Banco|registrador~18feeder_combout\);

-- Location: FF_X57_Y1_N13
\CPUnoUC|BncULA|Banco|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~18feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~18_q\);

-- Location: LABCELL_X56_Y2_N54
\CPUnoUC|BncULA|Banco|registrador~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~132_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~18_q\ & (!\DadoROM[10]~input_o\))) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~26_q\) # 
-- (\DadoROM[10]~input_o\))))) ) ) # ( \DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~34_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\DadoROM[10]~input_o\))) # 
-- (\CPUnoUC|BncULA|Banco|registrador~42_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000111010011001100111111001100110001110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~42_q\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~34_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~26_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~18_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~132_combout\);

-- Location: LABCELL_X55_Y2_N15
\CPUnoUC|BncULA|Banco|registrador~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~50feeder_combout\ = \CPUnoUC|BncULA|Ula|resultado\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(6),
	combout => \CPUnoUC|BncULA|Banco|registrador~50feeder_combout\);

-- Location: FF_X55_Y2_N17
\CPUnoUC|BncULA|Banco|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Banco|registrador~50feeder_combout\,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~50_q\);

-- Location: LABCELL_X56_Y2_N24
\CPUnoUC|BncULA|Banco|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~100_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~132_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~132_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~50_q\))) # (\CPUnoUC|BncULA|Banco|registrador~132_combout\ & (\CPUnoUC|BncULA|Banco|registrador~58_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~132_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~132_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~66_q\))) # (\CPUnoUC|BncULA|Banco|registrador~132_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~58_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~74_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~66_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~132_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~50_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~100_combout\);

-- Location: IOIBUF_X58_Y0_N75
\DadoROM[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DadoROM(7),
	o => \DadoROM[7]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\DataIn[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataIn(7),
	o => \DataIn[7]~input_o\);

-- Location: LABCELL_X57_Y3_N39
\CPUnoUC|Mux|Y[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Mux|Y[7]~5_combout\ = ( \DadoROM[11]~input_o\ & ( (!\DadoROM[12]~input_o\ & (((\DadoROM[7]~input_o\)))) # (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\ & (\DadoROM[7]~input_o\)) # (\DadoROM[13]~input_o\ & ((\DataIn[7]~input_o\))))) ) ) # ( 
-- !\DadoROM[11]~input_o\ & ( \DadoROM[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[7]~input_o\,
	datad => \ALT_INV_DataIn[7]~input_o\,
	dataf => \ALT_INV_DadoROM[11]~input_o\,
	combout => \CPUnoUC|Mux|Y[7]~5_combout\);

-- Location: LABCELL_X57_Y2_N21
\CPUnoUC|BncULA|Ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Add0~29_sumout\ = SUM(( \CPUnoUC|BncULA|Banco|registrador~104_combout\ ) + ( (!\Uc|Mux6~0_combout\ & ((\DadoROM[7]~input_o\))) # (\Uc|Mux6~0_combout\ & (\DataIn[7]~input_o\)) ) + ( \CPUnoUC|BncULA|Ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uc|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_DataIn[7]~input_o\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~104_combout\,
	dataf => \ALT_INV_DadoROM[7]~input_o\,
	cin => \CPUnoUC|BncULA|Ula|Add0~26\,
	sumout => \CPUnoUC|BncULA|Ula|Add0~29_sumout\);

-- Location: LABCELL_X57_Y2_N27
\CPUnoUC|BncULA|Ula|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Mux1~0_combout\ = ( \CPUnoUC|BncULA|Ula|Add0~29_sumout\ & ( (!\DadoROM[12]~input_o\ & (((!\DadoROM[11]~input_o\) # (\DadoROM[13]~input_o\)))) # (\DadoROM[12]~input_o\ & ((!\DadoROM[11]~input_o\ $ (!\DadoROM[13]~input_o\)) # 
-- (\CPUnoUC|Mux|Y[7]~5_combout\))) ) ) # ( !\CPUnoUC|BncULA|Ula|Add0~29_sumout\ & ( (\CPUnoUC|Mux|Y[7]~5_combout\ & (\DadoROM[12]~input_o\ & (!\DadoROM[11]~input_o\ $ (\DadoROM[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000001000001000000000111000111111111011100011111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|Mux|ALT_INV_Y[7]~5_combout\,
	datab => \ALT_INV_DadoROM[11]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \ALT_INV_DadoROM[13]~input_o\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Add0~29_sumout\,
	combout => \CPUnoUC|BncULA|Ula|Mux1~0_combout\);

-- Location: LABCELL_X57_Y2_N54
\CPUnoUC|BncULA|Ula|resultado[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|resultado\(7) = (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & (\CPUnoUC|BncULA|Ula|resultado\(7))) # (\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & ((\CPUnoUC|BncULA|Ula|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Ula|ALT_INV_resultado\(7),
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux1~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|resultado\(7));

-- Location: FF_X57_Y1_N37
\CPUnoUC|BncULA|Banco|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~75_q\);

-- Location: FF_X56_Y1_N56
\CPUnoUC|BncULA|Banco|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~59_q\);

-- Location: FF_X56_Y1_N22
\CPUnoUC|BncULA|Banco|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~67_q\);

-- Location: FF_X56_Y2_N26
\CPUnoUC|BncULA|Banco|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~27_q\);

-- Location: FF_X56_Y2_N52
\CPUnoUC|BncULA|Banco|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~35_q\);

-- Location: FF_X57_Y2_N55
\CPUnoUC|BncULA|Banco|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Ula|resultado\(7),
	ena => \CPUnoUC|BncULA|Banco|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~43_q\);

-- Location: FF_X57_Y1_N7
\CPUnoUC|BncULA|Banco|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~19_q\);

-- Location: LABCELL_X56_Y2_N9
\CPUnoUC|BncULA|Banco|registrador~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~136_combout\ = ( !\DadoROM[9]~input_o\ & ( (!\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~19_q\ & (!\DadoROM[10]~input_o\))))) # (\DadoROM[8]~input_o\ & ((((\DadoROM[10]~input_o\))) # 
-- (\CPUnoUC|BncULA|Banco|registrador~27_q\))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[8]~input_o\ & (\CPUnoUC|BncULA|Banco|registrador~35_q\ & (!\DadoROM[10]~input_o\))) # (\DadoROM[8]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~43_q\) # 
-- (\DadoROM[10]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100110011000011000011001100011101001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~27_q\,
	datab => \ALT_INV_DadoROM[8]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~35_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~43_q\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~19_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~136_combout\);

-- Location: FF_X56_Y2_N43
\CPUnoUC|BncULA|Banco|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \CPUnoUC|BncULA|Ula|resultado\(7),
	sload => VCC,
	ena => \CPUnoUC|BncULA|Banco|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Banco|registrador~51_q\);

-- Location: LABCELL_X55_Y2_N54
\CPUnoUC|BncULA|Banco|registrador~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Banco|registrador~104_combout\ = ( !\DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & (((\CPUnoUC|BncULA|Banco|registrador~136_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~136_combout\ & 
-- ((\CPUnoUC|BncULA|Banco|registrador~51_q\))) # (\CPUnoUC|BncULA|Banco|registrador~136_combout\ & (\CPUnoUC|BncULA|Banco|registrador~59_q\))))) ) ) # ( \DadoROM[9]~input_o\ & ( ((!\DadoROM[10]~input_o\ & 
-- (((\CPUnoUC|BncULA|Banco|registrador~136_combout\)))) # (\DadoROM[10]~input_o\ & ((!\CPUnoUC|BncULA|Banco|registrador~136_combout\ & ((\CPUnoUC|BncULA|Banco|registrador~67_q\))) # (\CPUnoUC|BncULA|Banco|registrador~136_combout\ & 
-- (\CPUnoUC|BncULA|Banco|registrador~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~75_q\,
	datab => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~59_q\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~67_q\,
	datad => \ALT_INV_DadoROM[10]~input_o\,
	datae => \ALT_INV_DadoROM[9]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~136_combout\,
	datag => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~51_q\,
	combout => \CPUnoUC|BncULA|Banco|registrador~104_combout\);

-- Location: LABCELL_X56_Y3_N0
\CPUnoUC|BncULA|Ula|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~4_combout\ = ( \CPUnoUC|BncULA|Banco|registrador~104_combout\ & ( (\CPUnoUC|Mux|Y[7]~5_combout\ & (!\CPUnoUC|Mux|Y[6]~4_combout\ $ (\CPUnoUC|BncULA|Banco|registrador~100_combout\))) ) ) # ( 
-- !\CPUnoUC|BncULA|Banco|registrador~104_combout\ & ( (!\CPUnoUC|Mux|Y[7]~5_combout\ & (!\CPUnoUC|Mux|Y[6]~4_combout\ $ (\CPUnoUC|BncULA|Banco|registrador~100_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPUnoUC|Mux|ALT_INV_Y[6]~4_combout\,
	datac => \CPUnoUC|Mux|ALT_INV_Y[7]~5_combout\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~100_combout\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~104_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~4_combout\);

-- Location: LABCELL_X56_Y3_N39
\CPUnoUC|BncULA|Ula|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~3_combout\ = ( \CPUnoUC|BncULA|Banco|registrador~88_combout\ & ( \CPUnoUC|BncULA|Banco|registrador~92_combout\ & ( (\CPUnoUC|Mux|Y[4]~3_combout\ & \CPUnoUC|Mux|Y[3]~2_combout\) ) ) ) # ( 
-- !\CPUnoUC|BncULA|Banco|registrador~88_combout\ & ( \CPUnoUC|BncULA|Banco|registrador~92_combout\ & ( (\CPUnoUC|Mux|Y[4]~3_combout\ & !\CPUnoUC|Mux|Y[3]~2_combout\) ) ) ) # ( \CPUnoUC|BncULA|Banco|registrador~88_combout\ & ( 
-- !\CPUnoUC|BncULA|Banco|registrador~92_combout\ & ( (!\CPUnoUC|Mux|Y[4]~3_combout\ & \CPUnoUC|Mux|Y[3]~2_combout\) ) ) ) # ( !\CPUnoUC|BncULA|Banco|registrador~88_combout\ & ( !\CPUnoUC|BncULA|Banco|registrador~92_combout\ & ( 
-- (!\CPUnoUC|Mux|Y[4]~3_combout\ & !\CPUnoUC|Mux|Y[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000001000100010001001000100010001000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|Mux|ALT_INV_Y[4]~3_combout\,
	datab => \CPUnoUC|Mux|ALT_INV_Y[3]~2_combout\,
	datae => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~88_combout\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~92_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~3_combout\);

-- Location: LABCELL_X56_Y3_N33
\CPUnoUC|BncULA|Ula|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~0_combout\ = ( \DataIn[2]~input_o\ & ( \CPUnoUC|BncULA|Banco|registrador~84_combout\ & ( (!\DadoROM[2]~input_o\ & !\Uc|Mux6~0_combout\) ) ) ) # ( !\DataIn[2]~input_o\ & ( \CPUnoUC|BncULA|Banco|registrador~84_combout\ & ( 
-- (!\DadoROM[2]~input_o\) # (\Uc|Mux6~0_combout\) ) ) ) # ( \DataIn[2]~input_o\ & ( !\CPUnoUC|BncULA|Banco|registrador~84_combout\ & ( (\Uc|Mux6~0_combout\) # (\DadoROM[2]~input_o\) ) ) ) # ( !\DataIn[2]~input_o\ & ( 
-- !\CPUnoUC|BncULA|Banco|registrador~84_combout\ & ( (\DadoROM[2]~input_o\ & !\Uc|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011110111011101110111000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[2]~input_o\,
	datab => \Uc|ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_DataIn[2]~input_o\,
	dataf => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~84_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~0_combout\);

-- Location: LABCELL_X56_Y3_N3
\CPUnoUC|BncULA|Ula|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~1_combout\ = ( \Uc|Mux6~0_combout\ & ( !\CPUnoUC|BncULA|Banco|registrador~96_combout\ $ (!\DataIn[5]~input_o\) ) ) # ( !\Uc|Mux6~0_combout\ & ( !\DadoROM[5]~input_o\ $ (!\CPUnoUC|BncULA|Banco|registrador~96_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[5]~input_o\,
	datac => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~96_combout\,
	datad => \ALT_INV_DataIn[5]~input_o\,
	dataf => \Uc|ALT_INV_Mux6~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~1_combout\);

-- Location: LABCELL_X56_Y3_N18
\CPUnoUC|BncULA|Ula|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~2_combout\ = ( \CPUnoUC|BncULA|Banco|registrador~80_combout\ & ( \CPUnoUC|Mux|Y[0]~0_combout\ & ( (\CPUnoUC|Mux|Y[1]~1_combout\ & \CPUnoUC|BncULA|Banco|registrador~76_combout\) ) ) ) # ( 
-- !\CPUnoUC|BncULA|Banco|registrador~80_combout\ & ( \CPUnoUC|Mux|Y[0]~0_combout\ & ( (!\CPUnoUC|Mux|Y[1]~1_combout\ & \CPUnoUC|BncULA|Banco|registrador~76_combout\) ) ) ) # ( \CPUnoUC|BncULA|Banco|registrador~80_combout\ & ( !\CPUnoUC|Mux|Y[0]~0_combout\ & 
-- ( (\CPUnoUC|Mux|Y[1]~1_combout\ & !\CPUnoUC|BncULA|Banco|registrador~76_combout\) ) ) ) # ( !\CPUnoUC|BncULA|Banco|registrador~80_combout\ & ( !\CPUnoUC|Mux|Y[0]~0_combout\ & ( (!\CPUnoUC|Mux|Y[1]~1_combout\ & 
-- !\CPUnoUC|BncULA|Banco|registrador~76_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000000000000110011000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPUnoUC|Mux|ALT_INV_Y[1]~1_combout\,
	datad => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~76_combout\,
	datae => \CPUnoUC|BncULA|Banco|ALT_INV_registrador~80_combout\,
	dataf => \CPUnoUC|Mux|ALT_INV_Y[0]~0_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~2_combout\);

-- Location: LABCELL_X56_Y3_N54
\CPUnoUC|BncULA|Ula|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|Equal0~5_combout\ = ( !\CPUnoUC|BncULA|Ula|Equal0~1_combout\ & ( \CPUnoUC|BncULA|Ula|Equal0~2_combout\ & ( (\CPUnoUC|BncULA|Ula|Equal0~4_combout\ & (\CPUnoUC|BncULA|Ula|Equal0~3_combout\ & !\CPUnoUC|BncULA|Ula|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~4_combout\,
	datab => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~3_combout\,
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~0_combout\,
	datae => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~1_combout\,
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~2_combout\,
	combout => \CPUnoUC|BncULA|Ula|Equal0~5_combout\);

-- Location: LABCELL_X56_Y3_N51
\CPUnoUC|BncULA|Ula|zero[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Ula|zero\(0) = ( \CPUnoUC|BncULA|Ula|Equal0~5_combout\ & ( (\CPUnoUC|BncULA|Ula|Mux0~0_combout\ & \CPUnoUC|BncULA|Ula|zero\(0)) ) ) # ( !\CPUnoUC|BncULA|Ula|Equal0~5_combout\ & ( (!\CPUnoUC|BncULA|Ula|Mux0~0_combout\) # 
-- (\CPUnoUC|BncULA|Ula|zero\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|BncULA|Ula|ALT_INV_Mux0~0_combout\,
	datad => \CPUnoUC|BncULA|Ula|ALT_INV_zero\(0),
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_Equal0~5_combout\,
	combout => \CPUnoUC|BncULA|Ula|zero\(0));

-- Location: LABCELL_X57_Y3_N36
\CPUnoUC|BncULA|Zero|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|BncULA|Zero|output[0]~0_combout\ = ( \CPUnoUC|BncULA|Ula|zero\(0) & ( ((!\DadoROM[12]~input_o\ & (!\DadoROM[13]~input_o\ & \DadoROM[11]~input_o\))) # (\CPUnoUC|BncULA|Zero|output\(0)) ) ) # ( !\CPUnoUC|BncULA|Ula|zero\(0) & ( 
-- (\CPUnoUC|BncULA|Zero|output\(0) & (((!\DadoROM[11]~input_o\) # (\DadoROM[13]~input_o\)) # (\DadoROM[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[12]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[11]~input_o\,
	datad => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	dataf => \CPUnoUC|BncULA|Ula|ALT_INV_zero\(0),
	combout => \CPUnoUC|BncULA|Zero|output[0]~0_combout\);

-- Location: FF_X57_Y3_N38
\CPUnoUC|BncULA|Zero|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|BncULA|Zero|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|BncULA|Zero|output\(0));

-- Location: LABCELL_X57_Y3_N18
\CPUnoUC|Pc|Mux|Y[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Mux|Y[0]~0_combout\ = ( \CPUnoUC|Pc|PC|output\(0) & ( \DadoROM[0]~input_o\ & ( (!\DadoROM[11]~input_o\ & (!\DadoROM[12]~input_o\ & (\CPUnoUC|BncULA|Zero|output\(0) & \DadoROM[13]~input_o\))) # (\DadoROM[11]~input_o\ & (\DadoROM[12]~input_o\ & 
-- ((!\DadoROM[13]~input_o\)))) ) ) ) # ( !\CPUnoUC|Pc|PC|output\(0) & ( \DadoROM[0]~input_o\ ) ) # ( !\CPUnoUC|Pc|PC|output\(0) & ( !\DadoROM[0]~input_o\ & ( (!\DadoROM[11]~input_o\ & (((!\CPUnoUC|BncULA|Zero|output\(0)) # (!\DadoROM[13]~input_o\)) # 
-- (\DadoROM[12]~input_o\))) # (\DadoROM[11]~input_o\ & ((!\DadoROM[12]~input_o\) # ((\DadoROM[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011110111000000000000000011111111111111110001000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[12]~input_o\,
	datac => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	datad => \ALT_INV_DadoROM[13]~input_o\,
	datae => \CPUnoUC|Pc|PC|ALT_INV_output\(0),
	dataf => \ALT_INV_DadoROM[0]~input_o\,
	combout => \CPUnoUC|Pc|Mux|Y[0]~0_combout\);

-- Location: FF_X57_Y3_N20
\CPUnoUC|Pc|PC|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|Pc|Mux|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|Pc|PC|output\(0));

-- Location: LABCELL_X57_Y3_N30
\CPUnoUC|Pc|Somador|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Somador|Add0~0_combout\ = ( \CPUnoUC|Pc|PC|output\(1) & ( !\CPUnoUC|Pc|PC|output\(0) ) ) # ( !\CPUnoUC|Pc|PC|output\(1) & ( \CPUnoUC|Pc|PC|output\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|Pc|PC|ALT_INV_output\(0),
	dataf => \CPUnoUC|Pc|PC|ALT_INV_output\(1),
	combout => \CPUnoUC|Pc|Somador|Add0~0_combout\);

-- Location: LABCELL_X57_Y3_N48
\CPUnoUC|Pc|Mux|Y[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Mux|Y[1]~1_combout\ = ( \DadoROM[1]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~0_combout\ ) ) # ( !\DadoROM[1]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~0_combout\ & ( (!\DadoROM[11]~input_o\ & (((!\CPUnoUC|BncULA|Zero|output\(0)) # 
-- (!\DadoROM[13]~input_o\)) # (\DadoROM[12]~input_o\))) # (\DadoROM[11]~input_o\ & ((!\DadoROM[12]~input_o\) # ((\DadoROM[13]~input_o\)))) ) ) ) # ( \DadoROM[1]~input_o\ & ( !\CPUnoUC|Pc|Somador|Add0~0_combout\ & ( (!\DadoROM[11]~input_o\ & 
-- (!\DadoROM[12]~input_o\ & (\CPUnoUC|BncULA|Zero|output\(0) & \DadoROM[13]~input_o\))) # (\DadoROM[11]~input_o\ & (\DadoROM[12]~input_o\ & ((!\DadoROM[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010000100011101110111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[12]~input_o\,
	datac => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	datad => \ALT_INV_DadoROM[13]~input_o\,
	datae => \ALT_INV_DadoROM[1]~input_o\,
	dataf => \CPUnoUC|Pc|Somador|ALT_INV_Add0~0_combout\,
	combout => \CPUnoUC|Pc|Mux|Y[1]~1_combout\);

-- Location: FF_X57_Y3_N50
\CPUnoUC|Pc|PC|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|Pc|Mux|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|Pc|PC|output\(1));

-- Location: LABCELL_X57_Y3_N15
\CPUnoUC|Pc|Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Somador|Add0~1_combout\ = ( \CPUnoUC|Pc|PC|output\(1) & ( !\CPUnoUC|Pc|PC|output\(0) $ (!\CPUnoUC|Pc|PC|output\(2)) ) ) # ( !\CPUnoUC|Pc|PC|output\(1) & ( \CPUnoUC|Pc|PC|output\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPUnoUC|Pc|PC|ALT_INV_output\(0),
	datad => \CPUnoUC|Pc|PC|ALT_INV_output\(2),
	dataf => \CPUnoUC|Pc|PC|ALT_INV_output\(1),
	combout => \CPUnoUC|Pc|Somador|Add0~1_combout\);

-- Location: LABCELL_X57_Y3_N27
\CPUnoUC|Pc|Mux|Y[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Mux|Y[2]~2_combout\ = ( \DadoROM[2]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~1_combout\ ) ) # ( !\DadoROM[2]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~1_combout\ & ( (!\DadoROM[11]~input_o\ & ((!\DadoROM[13]~input_o\) # 
-- ((!\CPUnoUC|BncULA|Zero|output\(0)) # (\DadoROM[12]~input_o\)))) # (\DadoROM[11]~input_o\ & (((!\DadoROM[12]~input_o\)) # (\DadoROM[13]~input_o\))) ) ) ) # ( \DadoROM[2]~input_o\ & ( !\CPUnoUC|Pc|Somador|Add0~1_combout\ & ( (!\DadoROM[11]~input_o\ & 
-- (\DadoROM[13]~input_o\ & (!\DadoROM[12]~input_o\ & \CPUnoUC|BncULA|Zero|output\(0)))) # (\DadoROM[11]~input_o\ & (!\DadoROM[13]~input_o\ & (\DadoROM[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000010010011111011110110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \ALT_INV_DadoROM[12]~input_o\,
	datad => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	datae => \ALT_INV_DadoROM[2]~input_o\,
	dataf => \CPUnoUC|Pc|Somador|ALT_INV_Add0~1_combout\,
	combout => \CPUnoUC|Pc|Mux|Y[2]~2_combout\);

-- Location: FF_X57_Y3_N29
\CPUnoUC|Pc|PC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|Pc|Mux|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|Pc|PC|output\(2));

-- Location: LABCELL_X57_Y3_N9
\CPUnoUC|Pc|Somador|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Somador|Add0~2_combout\ = ( \CPUnoUC|Pc|PC|output\(2) & ( \CPUnoUC|Pc|PC|output\(0) & ( !\CPUnoUC|Pc|PC|output\(3) $ (!\CPUnoUC|Pc|PC|output\(1)) ) ) ) # ( !\CPUnoUC|Pc|PC|output\(2) & ( \CPUnoUC|Pc|PC|output\(0) & ( \CPUnoUC|Pc|PC|output\(3) 
-- ) ) ) # ( \CPUnoUC|Pc|PC|output\(2) & ( !\CPUnoUC|Pc|PC|output\(0) & ( \CPUnoUC|Pc|PC|output\(3) ) ) ) # ( !\CPUnoUC|Pc|PC|output\(2) & ( !\CPUnoUC|Pc|PC|output\(0) & ( \CPUnoUC|Pc|PC|output\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|Pc|PC|ALT_INV_output\(3),
	datad => \CPUnoUC|Pc|PC|ALT_INV_output\(1),
	datae => \CPUnoUC|Pc|PC|ALT_INV_output\(2),
	dataf => \CPUnoUC|Pc|PC|ALT_INV_output\(0),
	combout => \CPUnoUC|Pc|Somador|Add0~2_combout\);

-- Location: LABCELL_X57_Y3_N24
\CPUnoUC|Pc|Mux|Y[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Mux|Y[3]~3_combout\ = ( \DadoROM[3]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~2_combout\ ) ) # ( !\DadoROM[3]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~2_combout\ & ( (!\DadoROM[11]~input_o\ & ((!\DadoROM[13]~input_o\) # 
-- ((!\CPUnoUC|BncULA|Zero|output\(0)) # (\DadoROM[12]~input_o\)))) # (\DadoROM[11]~input_o\ & (((!\DadoROM[12]~input_o\)) # (\DadoROM[13]~input_o\))) ) ) ) # ( \DadoROM[3]~input_o\ & ( !\CPUnoUC|Pc|Somador|Add0~2_combout\ & ( (!\DadoROM[11]~input_o\ & 
-- (\DadoROM[13]~input_o\ & (\CPUnoUC|BncULA|Zero|output\(0) & !\DadoROM[12]~input_o\))) # (\DadoROM[11]~input_o\ & (!\DadoROM[13]~input_o\ & ((\DadoROM[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100100010011111101101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[13]~input_o\,
	datac => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	datad => \ALT_INV_DadoROM[12]~input_o\,
	datae => \ALT_INV_DadoROM[3]~input_o\,
	dataf => \CPUnoUC|Pc|Somador|ALT_INV_Add0~2_combout\,
	combout => \CPUnoUC|Pc|Mux|Y[3]~3_combout\);

-- Location: FF_X57_Y3_N26
\CPUnoUC|Pc|PC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|Pc|Mux|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|Pc|PC|output\(3));

-- Location: LABCELL_X57_Y3_N33
\CPUnoUC|Pc|Somador|Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Somador|Add0~3_combout\ = ( \CPUnoUC|Pc|PC|output\(1) & ( !\CPUnoUC|Pc|PC|output\(4) $ (((!\CPUnoUC|Pc|PC|output\(0)) # ((!\CPUnoUC|Pc|PC|output\(3)) # (!\CPUnoUC|Pc|PC|output\(2))))) ) ) # ( !\CPUnoUC|Pc|PC|output\(1) & ( 
-- \CPUnoUC|Pc|PC|output\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPUnoUC|Pc|PC|ALT_INV_output\(0),
	datab => \CPUnoUC|Pc|PC|ALT_INV_output\(4),
	datac => \CPUnoUC|Pc|PC|ALT_INV_output\(3),
	datad => \CPUnoUC|Pc|PC|ALT_INV_output\(2),
	dataf => \CPUnoUC|Pc|PC|ALT_INV_output\(1),
	combout => \CPUnoUC|Pc|Somador|Add0~3_combout\);

-- Location: LABCELL_X57_Y3_N51
\CPUnoUC|Pc|Mux|Y[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPUnoUC|Pc|Mux|Y[4]~4_combout\ = ( \DadoROM[4]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~3_combout\ ) ) # ( !\DadoROM[4]~input_o\ & ( \CPUnoUC|Pc|Somador|Add0~3_combout\ & ( (!\DadoROM[11]~input_o\ & (((!\DadoROM[13]~input_o\) # 
-- (!\CPUnoUC|BncULA|Zero|output\(0))) # (\DadoROM[12]~input_o\))) # (\DadoROM[11]~input_o\ & ((!\DadoROM[12]~input_o\) # ((\DadoROM[13]~input_o\)))) ) ) ) # ( \DadoROM[4]~input_o\ & ( !\CPUnoUC|Pc|Somador|Add0~3_combout\ & ( (!\DadoROM[11]~input_o\ & 
-- (!\DadoROM[12]~input_o\ & (\DadoROM[13]~input_o\ & \CPUnoUC|BncULA|Zero|output\(0)))) # (\DadoROM[11]~input_o\ & (\DadoROM[12]~input_o\ & (!\DadoROM[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001100011101111111001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DadoROM[11]~input_o\,
	datab => \ALT_INV_DadoROM[12]~input_o\,
	datac => \ALT_INV_DadoROM[13]~input_o\,
	datad => \CPUnoUC|BncULA|Zero|ALT_INV_output\(0),
	datae => \ALT_INV_DadoROM[4]~input_o\,
	dataf => \CPUnoUC|Pc|Somador|ALT_INV_Add0~3_combout\,
	combout => \CPUnoUC|Pc|Mux|Y[4]~4_combout\);

-- Location: FF_X57_Y3_N53
\CPUnoUC|Pc|PC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \CPUnoUC|Pc|Mux|Y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPUnoUC|Pc|PC|output\(4));

-- Location: MLABCELL_X47_Y44_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2019 15:12:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cpu_vhd_vec_tst IS
END Cpu_vhd_vec_tst;
ARCHITECTURE Cpu_arch OF Cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL bancoOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Clk : STD_LOGIC;
SIGNAL DadoROM : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL DataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Cpu
	PORT (
	Addr : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	bancoOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clk : IN STD_LOGIC;
	DadoROM : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Cpu
	PORT MAP (
-- list connections between master ports and signals
	Addr => Addr,
	bancoOut => bancoOut,
	Clk => Clk,
	DadoROM => DadoROM,
	DataIn => DataIn
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- DadoROM[13]
t_prcs_DadoROM_13: PROCESS
BEGIN
	DadoROM(13) <= '0';
	WAIT FOR 270000 ps;
	DadoROM(13) <= '1';
	WAIT FOR 40000 ps;
	DadoROM(13) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_13;
-- DadoROM[12]
t_prcs_DadoROM_12: PROCESS
BEGIN
	DadoROM(12) <= '0';
	WAIT FOR 170000 ps;
	DadoROM(12) <= '1';
	WAIT FOR 40000 ps;
	DadoROM(12) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_12;
-- DadoROM[11]
t_prcs_DadoROM_11: PROCESS
BEGIN
	DadoROM(11) <= '0';
	WAIT FOR 170000 ps;
	DadoROM(11) <= '1';
	WAIT FOR 40000 ps;
	DadoROM(11) <= '0';
	WAIT FOR 40000 ps;
	DadoROM(11) <= '1';
	WAIT FOR 20000 ps;
	DadoROM(11) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_11;
-- DadoROM[10]
t_prcs_DadoROM_10: PROCESS
BEGIN
	DadoROM(10) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_10;
-- DadoROM[9]
t_prcs_DadoROM_9: PROCESS
BEGIN
	DadoROM(9) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_9;
-- DadoROM[8]
t_prcs_DadoROM_8: PROCESS
BEGIN
	DadoROM(8) <= '1';
WAIT;
END PROCESS t_prcs_DadoROM_8;
-- DadoROM[7]
t_prcs_DadoROM_7: PROCESS
BEGIN
	DadoROM(7) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_7;
-- DadoROM[6]
t_prcs_DadoROM_6: PROCESS
BEGIN
	DadoROM(6) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_6;
-- DadoROM[5]
t_prcs_DadoROM_5: PROCESS
BEGIN
	DadoROM(5) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_5;
-- DadoROM[4]
t_prcs_DadoROM_4: PROCESS
BEGIN
	DadoROM(4) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_4;
-- DadoROM[3]
t_prcs_DadoROM_3: PROCESS
BEGIN
	DadoROM(3) <= '0';
	WAIT FOR 250000 ps;
	DadoROM(3) <= '1';
	WAIT FOR 20000 ps;
	DadoROM(3) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_3;
-- DadoROM[2]
t_prcs_DadoROM_2: PROCESS
BEGIN
	DadoROM(2) <= '0';
	WAIT FOR 250000 ps;
	DadoROM(2) <= '1';
	WAIT FOR 20000 ps;
	DadoROM(2) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_2;
-- DadoROM[1]
t_prcs_DadoROM_1: PROCESS
BEGIN
	DadoROM(1) <= '1';
WAIT;
END PROCESS t_prcs_DadoROM_1;
-- DadoROM[0]
t_prcs_DadoROM_0: PROCESS
BEGIN
	DadoROM(0) <= '0';
WAIT;
END PROCESS t_prcs_DadoROM_0;
-- DataIn[7]
t_prcs_DataIn_7: PROCESS
BEGIN
	DataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_7;
-- DataIn[6]
t_prcs_DataIn_6: PROCESS
BEGIN
	DataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_6;
-- DataIn[5]
t_prcs_DataIn_5: PROCESS
BEGIN
	DataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_5;
-- DataIn[4]
t_prcs_DataIn_4: PROCESS
BEGIN
	DataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_4;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
	DataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_0;
END Cpu_arch;

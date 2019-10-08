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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/07/2019 20:18:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_vhd_vec_tst IS
END BCD_vhd_vec_tst;
ARCHITECTURE BCD_arch OF BCD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enableBCD : STD_LOGIC;
SIGNAL enableHour : STD_LOGIC;
SIGNAL enableMinute : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT BCD
	PORT (
	clk : IN STD_LOGIC;
	dataOut : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enableBCD : IN STD_LOGIC;
	enableHour : IN STD_LOGIC;
	enableMinute : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCD
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataOut => dataOut,
	enableBCD => enableBCD,
	enableHour => enableHour,
	enableMinute => enableMinute,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dataOut[7]
t_prcs_dataOut_7: PROCESS
BEGIN
	dataOut(7) <= '0';
WAIT;
END PROCESS t_prcs_dataOut_7;
-- dataOut[6]
t_prcs_dataOut_6: PROCESS
BEGIN
	dataOut(6) <= '0';
	WAIT FOR 640000 ps;
	dataOut(6) <= '1';
WAIT;
END PROCESS t_prcs_dataOut_6;
-- dataOut[5]
t_prcs_dataOut_5: PROCESS
BEGIN
	dataOut(5) <= '0';
	WAIT FOR 320000 ps;
	dataOut(5) <= '1';
	WAIT FOR 320000 ps;
	dataOut(5) <= '0';
	WAIT FOR 320000 ps;
	dataOut(5) <= '1';
WAIT;
END PROCESS t_prcs_dataOut_5;
-- dataOut[4]
t_prcs_dataOut_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		dataOut(4) <= '0';
		WAIT FOR 160000 ps;
		dataOut(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	dataOut(4) <= '0';
WAIT;
END PROCESS t_prcs_dataOut_4;
-- dataOut[3]
t_prcs_dataOut_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		dataOut(3) <= '0';
		WAIT FOR 80000 ps;
		dataOut(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	dataOut(3) <= '0';
WAIT;
END PROCESS t_prcs_dataOut_3;
-- dataOut[2]
t_prcs_dataOut_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		dataOut(2) <= '0';
		WAIT FOR 40000 ps;
		dataOut(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	dataOut(2) <= '0';
WAIT;
END PROCESS t_prcs_dataOut_2;
-- dataOut[1]
t_prcs_dataOut_1: PROCESS
BEGIN
LOOP
	dataOut(1) <= '0';
	WAIT FOR 20000 ps;
	dataOut(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataOut_1;
-- dataOut[0]
t_prcs_dataOut_0: PROCESS
BEGIN
LOOP
	dataOut(0) <= '0';
	WAIT FOR 10000 ps;
	dataOut(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataOut_0;

-- enableBCD
t_prcs_enableBCD: PROCESS
BEGIN
	enableBCD <= '0';
WAIT;
END PROCESS t_prcs_enableBCD;

-- enableHour
t_prcs_enableHour: PROCESS
BEGIN
	enableHour <= '1';
	WAIT FOR 100000 ps;
	enableHour <= '0';
	WAIT FOR 110000 ps;
	enableHour <= '1';
WAIT;
END PROCESS t_prcs_enableHour;

-- enableMinute
t_prcs_enableMinute: PROCESS
BEGIN
	enableMinute <= '1';
	WAIT FOR 200000 ps;
	enableMinute <= '0';
	WAIT FOR 130000 ps;
	enableMinute <= '1';
WAIT;
END PROCESS t_prcs_enableMinute;
END BCD_arch;

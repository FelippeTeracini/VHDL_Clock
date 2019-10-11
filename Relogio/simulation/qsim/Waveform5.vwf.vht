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
-- Generated on "10/08/2019 09:57:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UC_vhd_vec_tst IS
END UC_vhd_vec_tst;
ARCHITECTURE UC_arch OF UC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HabBanco : STD_LOGIC;
SIGNAL HabRD : STD_LOGIC;
SIGNAL jmp : STD_LOGIC;
SIGNAL jne : STD_LOGIC;
SIGNAL MuxULA : STD_LOGIC;
SIGNAL op : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RD : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
COMPONENT UC
	PORT (
	HabBanco : OUT STD_LOGIC;
	HabRD : OUT STD_LOGIC;
	jmp : OUT STD_LOGIC;
	jne : OUT STD_LOGIC;
	MuxULA : OUT STD_LOGIC;
	op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RD : OUT STD_LOGIC;
	WR : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UC
	PORT MAP (
-- list connections between master ports and signals
	HabBanco => HabBanco,
	HabRD => HabRD,
	jmp => jmp,
	jne => jne,
	MuxULA => MuxULA,
	op => op,
	opcode => opcode,
	RD => RD,
	WR => WR
	);
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		opcode(2) <= '0';
		WAIT FOR 80000 ps;
		opcode(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		opcode(1) <= '0';
		WAIT FOR 40000 ps;
		opcode(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
LOOP
	opcode(0) <= '0';
	WAIT FOR 20000 ps;
	opcode(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_opcode_0;
END UC_arch;

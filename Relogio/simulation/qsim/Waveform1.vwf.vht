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
-- Generated on "10/07/2019 20:08:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BinaryConverter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BinaryConverter_vhd_vec_tst IS
END BinaryConverter_vhd_vec_tst;
ARCHITECTURE BinaryConverter_arch OF BinaryConverter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binary : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL digit0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL digit1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BinaryConverter
	PORT (
	binary : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	digit0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	digit1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BinaryConverter
	PORT MAP (
-- list connections between master ports and signals
	binary => binary,
	digit0 => digit0,
	digit1 => digit1
	);
-- binary[7]
t_prcs_binary_7: PROCESS
BEGIN
	binary(7) <= '0';
WAIT;
END PROCESS t_prcs_binary_7;
-- binary[6]
t_prcs_binary_6: PROCESS
BEGIN
	binary(6) <= '0';
WAIT;
END PROCESS t_prcs_binary_6;
-- binary[5]
t_prcs_binary_5: PROCESS
BEGIN
	binary(5) <= '0';
WAIT;
END PROCESS t_prcs_binary_5;
-- binary[4]
t_prcs_binary_4: PROCESS
BEGIN
	binary(4) <= '0';
	WAIT FOR 800000 ps;
	binary(4) <= '1';
WAIT;
END PROCESS t_prcs_binary_4;
-- binary[3]
t_prcs_binary_3: PROCESS
BEGIN
	binary(3) <= '0';
	WAIT FOR 400000 ps;
	binary(3) <= '1';
	WAIT FOR 400000 ps;
	binary(3) <= '0';
WAIT;
END PROCESS t_prcs_binary_3;
-- binary[2]
t_prcs_binary_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		binary(2) <= '0';
		WAIT FOR 200000 ps;
		binary(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	binary(2) <= '0';
WAIT;
END PROCESS t_prcs_binary_2;
-- binary[1]
t_prcs_binary_1: PROCESS
BEGIN
LOOP
	binary(1) <= '0';
	WAIT FOR 100000 ps;
	binary(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_binary_1;
-- binary[0]
t_prcs_binary_0: PROCESS
BEGIN
LOOP
	binary(0) <= '0';
	WAIT FOR 50000 ps;
	binary(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_binary_0;
END BinaryConverter_arch;

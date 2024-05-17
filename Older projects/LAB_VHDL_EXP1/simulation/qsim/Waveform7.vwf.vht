-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/20/2023 11:33:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux_4x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux_4x1_vhd_vec_tst IS
END Mux_4x1_vhd_vec_tst;
ARCHITECTURE Mux_4x1_arch OF Mux_4x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC;
COMPONENT Mux_4x1
	PORT (
	I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux_4x1
	PORT MAP (
-- list connections between master ports and signals
	I => I,
	S => S,
	y => y
	);
-- I[3]
t_prcs_I_3: PROCESS
BEGIN
	I(3) <= '0';
	WAIT FOR 320000 ps;
	I(3) <= '1';
	WAIT FOR 320000 ps;
	I(3) <= '0';
	WAIT FOR 320000 ps;
	I(3) <= '1';
WAIT;
END PROCESS t_prcs_I_3;
-- I[2]
t_prcs_I_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		I(2) <= '0';
		WAIT FOR 160000 ps;
		I(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	I(2) <= '0';
WAIT;
END PROCESS t_prcs_I_2;
-- I[1]
t_prcs_I_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		I(1) <= '0';
		WAIT FOR 80000 ps;
		I(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	I(1) <= '0';
WAIT;
END PROCESS t_prcs_I_1;
-- I[0]
t_prcs_I_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		I(0) <= '0';
		WAIT FOR 40000 ps;
		I(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	I(0) <= '0';
WAIT;
END PROCESS t_prcs_I_0;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
LOOP
	S(1) <= '0';
	WAIT FOR 20000 ps;
	S(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 10000 ps;
	S(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END Mux_4x1_arch;

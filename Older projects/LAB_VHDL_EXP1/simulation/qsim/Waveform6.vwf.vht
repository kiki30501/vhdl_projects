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
-- Generated on "03/20/2023 11:27:20"
                                                             
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
SIGNAL I0 : STD_LOGIC;
SIGNAL I1 : STD_LOGIC;
SIGNAL I2 : STD_LOGIC;
SIGNAL I3 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT Mux_4x1
	PORT (
	I0 : IN STD_LOGIC;
	I1 : IN STD_LOGIC;
	I2 : IN STD_LOGIC;
	I3 : IN STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux_4x1
	PORT MAP (
-- list connections between master ports and signals
	I0 => I0,
	I1 => I1,
	I2 => I2,
	I3 => I3,
	S0 => S0,
	S1 => S1,
	y => y
	);

-- I0
t_prcs_I0: PROCESS
BEGIN
	I0 <= '0';
	WAIT FOR 320000 ps;
	I0 <= '1';
	WAIT FOR 320000 ps;
	I0 <= '0';
	WAIT FOR 320000 ps;
	I0 <= '1';
WAIT;
END PROCESS t_prcs_I0;

-- I1
t_prcs_I1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		I1 <= '0';
		WAIT FOR 160000 ps;
		I1 <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	I1 <= '0';
WAIT;
END PROCESS t_prcs_I1;

-- I2
t_prcs_I2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		I2 <= '0';
		WAIT FOR 80000 ps;
		I2 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	I2 <= '0';
WAIT;
END PROCESS t_prcs_I2;

-- I3
t_prcs_I3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		I3 <= '0';
		WAIT FOR 40000 ps;
		I3 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	I3 <= '0';
WAIT;
END PROCESS t_prcs_I3;

-- S0
t_prcs_S0: PROCESS
BEGIN
LOOP
	S0 <= '0';
	WAIT FOR 20000 ps;
	S0 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
LOOP
	S1 <= '0';
	WAIT FOR 10000 ps;
	S1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S1;
END Mux_4x1_arch;

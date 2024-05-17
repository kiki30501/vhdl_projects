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
-- Generated on "03/20/2023 12:00:29"
                                                             
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
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC;
COMPONENT Mux_4x1
	PORT (
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux_4x1
	PORT MAP (
-- list connections between master ports and signals
	s => s,
	x => x,
	y => y
	);
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '0';
	WAIT FOR 320000 ps;
	x(3) <= '1';
	WAIT FOR 320000 ps;
	x(3) <= '0';
	WAIT FOR 320000 ps;
	x(3) <= '1';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		x(2) <= '0';
		WAIT FOR 160000 ps;
		x(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	x(2) <= '0';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		x(1) <= '0';
		WAIT FOR 80000 ps;
		x(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	x(1) <= '0';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		x(0) <= '0';
		WAIT FOR 40000 ps;
		x(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	x(0) <= '0';
WAIT;
END PROCESS t_prcs_x_0;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
END Mux_4x1_arch;
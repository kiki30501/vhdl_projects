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
-- Generated on "03/20/2023 20:09:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4x1_tristate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4x1_tristate_vhd_vec_tst IS
END Mux4x1_tristate_vhd_vec_tst;
ARCHITECTURE Mux4x1_tristate_arch OF Mux4x1_tristate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL din : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Dout : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mux4x1_tristate
	PORT (
	din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Dout : OUT STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4x1_tristate
	PORT MAP (
-- list connections between master ports and signals
	din => din,
	Dout => Dout,
	s => s
	);
-- din[3]
t_prcs_din_3: PROCESS
BEGIN
	din(3) <= '0';
	WAIT FOR 80000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 160000 ps;
	din(3) <= '0';
	WAIT FOR 80000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 120000 ps;
	din(3) <= '0';
	WAIT FOR 80000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 80000 ps;
	din(3) <= '1';
WAIT;
END PROCESS t_prcs_din_3;
-- din[2]
t_prcs_din_2: PROCESS
BEGIN
	din(2) <= '1';
	WAIT FOR 80000 ps;
	din(2) <= '0';
	WAIT FOR 40000 ps;
	din(2) <= '1';
	WAIT FOR 120000 ps;
	din(2) <= '0';
	WAIT FOR 40000 ps;
	din(2) <= '1';
	WAIT FOR 80000 ps;
	din(2) <= '0';
	WAIT FOR 40000 ps;
	din(2) <= '1';
	WAIT FOR 120000 ps;
	din(2) <= '0';
	WAIT FOR 80000 ps;
	din(2) <= '1';
	WAIT FOR 80000 ps;
	din(2) <= '0';
	WAIT FOR 200000 ps;
	din(2) <= '1';
	WAIT FOR 80000 ps;
	din(2) <= '0';
WAIT;
END PROCESS t_prcs_din_2;
-- din[1]
t_prcs_din_1: PROCESS
BEGIN
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 120000 ps;
	din(1) <= '1';
	WAIT FOR 120000 ps;
	din(1) <= '0';
	WAIT FOR 120000 ps;
	din(1) <= '1';
	WAIT FOR 80000 ps;
	din(1) <= '0';
	WAIT FOR 240000 ps;
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 80000 ps;
	din(1) <= '1';
WAIT;
END PROCESS t_prcs_din_1;
-- din[0]
t_prcs_din_0: PROCESS
BEGIN
	din(0) <= '0';
	WAIT FOR 80000 ps;
	din(0) <= '1';
	WAIT FOR 80000 ps;
	din(0) <= '0';
	WAIT FOR 200000 ps;
	din(0) <= '1';
	WAIT FOR 80000 ps;
	din(0) <= '0';
	WAIT FOR 120000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 320000 ps;
	din(0) <= '1';
WAIT;
END PROCESS t_prcs_din_0;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '1';
	WAIT FOR 80000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 40000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 160000 ps;
	s(1) <= '0';
	WAIT FOR 120000 ps;
	s(1) <= '1';
	WAIT FOR 40000 ps;
	s(1) <= '0';
	WAIT FOR 80000 ps;
	s(1) <= '1';
	WAIT FOR 40000 ps;
	s(1) <= '0';
	WAIT FOR 80000 ps;
	s(1) <= '1';
	WAIT FOR 80000 ps;
	s(1) <= '0';
	WAIT FOR 40000 ps;
	s(1) <= '1';
	WAIT FOR 80000 ps;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '1';
	WAIT FOR 40000 ps;
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
	WAIT FOR 120000 ps;
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
	WAIT FOR 320000 ps;
	s(0) <= '0';
	WAIT FOR 80000 ps;
	s(0) <= '1';
	WAIT FOR 40000 ps;
	s(0) <= '0';
	WAIT FOR 80000 ps;
	s(0) <= '1';
	WAIT FOR 120000 ps;
	s(0) <= '0';
	WAIT FOR 40000 ps;
	s(0) <= '1';
WAIT;
END PROCESS t_prcs_s_0;
END Mux4x1_tristate_arch;

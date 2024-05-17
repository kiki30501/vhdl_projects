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
-- Generated on "07/17/2023 20:56:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mouse_control
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mouse_control_vhd_vec_tst IS
END mouse_control_vhd_vec_tst;
ARCHITECTURE mouse_control_arch OF mouse_control_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_rst : STD_LOGIC;
SIGNAL clk_50M : STD_LOGIC;
SIGNAL m_clock : STD_LOGIC;
SIGNAL m_data : STD_LOGIC;
SIGNAL msg_valid : STD_LOGIC;
SIGNAL x_mov : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL y_mov : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT mouse_control
	PORT (
	a_rst : IN STD_LOGIC;
	clk_50M : IN STD_LOGIC;
	m_clock : BUFFER STD_LOGIC;
	m_data : BUFFER STD_LOGIC;
	msg_valid : BUFFER STD_LOGIC;
	x_mov : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	y_mov : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mouse_control
	PORT MAP (
-- list connections between master ports and signals
	a_rst => a_rst,
	clk_50M => clk_50M,
	m_clock => m_clock,
	m_data => m_data,
	msg_valid => msg_valid,
	x_mov => x_mov,
	y_mov => y_mov
	);

-- a_rst
t_prcs_a_rst: PROCESS
BEGIN
	a_rst <= '1';
	WAIT FOR 80000 ps;
	a_rst <= '0';
WAIT;
END PROCESS t_prcs_a_rst;

-- clk_50M
t_prcs_clk_50M: PROCESS
BEGIN
LOOP
	clk_50M <= '0';
	WAIT FOR 10000 ps;
	clk_50M <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_50M;

-- m_clock
t_prcs_m_clock: PROCESS
BEGIN
	m_clock <= 'Z';
WAIT;
END PROCESS t_prcs_m_clock;

-- m_data
t_prcs_m_data: PROCESS
BEGIN
	m_data <= 'Z';
WAIT;
END PROCESS t_prcs_m_data;
END mouse_control_arch;

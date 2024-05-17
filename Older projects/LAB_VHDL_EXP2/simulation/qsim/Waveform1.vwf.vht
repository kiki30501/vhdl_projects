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
-- Generated on "04/16/2023 16:59:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PIC_Lab2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PIC_Lab2_vhd_vec_tst IS
END PIC_Lab2_vhd_vec_tst;
ARCHITECTURE PIC_Lab2_arch OF PIC_Lab2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cs_n : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inta_n : STD_LOGIC;
SIGNAL irq : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL irq_pic : STD_LOGIC;
SIGNAL rd_n : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
SIGNAL wr_n : STD_LOGIC;
COMPONENT PIC_Lab2
	PORT (
	clk : IN STD_LOGIC;
	cs_n : IN STD_LOGIC;
	d : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	inta_n : IN STD_LOGIC;
	irq : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	irq_pic : BUFFER STD_LOGIC;
	rd_n : IN STD_LOGIC;
	rst_n : IN STD_LOGIC;
	wr_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PIC_Lab2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cs_n => cs_n,
	d => d,
	inta_n => inta_n,
	irq => irq,
	irq_pic => irq_pic,
	rd_n => rd_n,
	rst_n => rst_n,
	wr_n => wr_n
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 129
	LOOP
		clk <= '0';
		WAIT FOR 1000 ps;
		clk <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 21000 ps;
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 17
	LOOP
		clk <= '0';
		WAIT FOR 20000 ps;
		clk <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_clk;

-- cs_n
t_prcs_cs_n: PROCESS
BEGIN
	cs_n <= '1';
	WAIT FOR 280000 ps;
	cs_n <= '0';
WAIT;
END PROCESS t_prcs_cs_n;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= 'Z';
	WAIT FOR 1000 ps;
	d(7) <= 'X';
	WAIT FOR 259000 ps;
	d(7) <= 'Z';
	WAIT FOR 40000 ps;
	d(7) <= '0';
	WAIT FOR 60000 ps;
	d(7) <= 'Z';
	WAIT FOR 60000 ps;
	d(7) <= '1';
	WAIT FOR 70000 ps;
	d(7) <= 'Z';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= 'Z';
	WAIT FOR 1000 ps;
	d(6) <= 'X';
	WAIT FOR 259000 ps;
	d(6) <= 'Z';
	WAIT FOR 40000 ps;
	d(6) <= '0';
	WAIT FOR 60000 ps;
	d(6) <= 'Z';
	WAIT FOR 60000 ps;
	d(6) <= '1';
	WAIT FOR 70000 ps;
	d(6) <= 'Z';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= 'Z';
	WAIT FOR 1000 ps;
	d(5) <= 'X';
	WAIT FOR 259000 ps;
	d(5) <= 'Z';
	WAIT FOR 40000 ps;
	d(5) <= '0';
	WAIT FOR 20000 ps;
	d(5) <= '1';
	WAIT FOR 40000 ps;
	d(5) <= 'Z';
	WAIT FOR 60000 ps;
	d(5) <= '1';
	WAIT FOR 70000 ps;
	d(5) <= 'Z';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= 'Z';
	WAIT FOR 1000 ps;
	d(4) <= 'X';
	WAIT FOR 259000 ps;
	d(4) <= 'Z';
	WAIT FOR 40000 ps;
	d(4) <= '1';
	WAIT FOR 20000 ps;
	d(4) <= '0';
	WAIT FOR 20000 ps;
	d(4) <= '1';
	WAIT FOR 20000 ps;
	d(4) <= 'Z';
	WAIT FOR 60000 ps;
	d(4) <= '1';
	WAIT FOR 70000 ps;
	d(4) <= 'Z';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= 'Z';
	WAIT FOR 1000 ps;
	d(3) <= 'X';
	WAIT FOR 259000 ps;
	d(3) <= 'Z';
	WAIT FOR 40000 ps;
	d(3) <= '0';
	WAIT FOR 40000 ps;
	d(3) <= '1';
	WAIT FOR 20000 ps;
	d(3) <= 'Z';
	WAIT FOR 60000 ps;
	d(3) <= '1';
	WAIT FOR 70000 ps;
	d(3) <= 'Z';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= 'Z';
	WAIT FOR 1000 ps;
	d(2) <= 'X';
	WAIT FOR 259000 ps;
	d(2) <= 'Z';
	WAIT FOR 40000 ps;
	d(2) <= '1';
	WAIT FOR 20000 ps;
	d(2) <= '0';
	WAIT FOR 40000 ps;
	d(2) <= 'Z';
	WAIT FOR 60000 ps;
	d(2) <= '1';
	WAIT FOR 70000 ps;
	d(2) <= 'Z';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= 'Z';
	WAIT FOR 1000 ps;
	d(1) <= 'X';
	WAIT FOR 259000 ps;
	d(1) <= 'Z';
	WAIT FOR 40000 ps;
	d(1) <= '1';
	WAIT FOR 40000 ps;
	d(1) <= '0';
	WAIT FOR 20000 ps;
	d(1) <= 'Z';
	WAIT FOR 60000 ps;
	d(1) <= '1';
	WAIT FOR 70000 ps;
	d(1) <= 'Z';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= 'Z';
	WAIT FOR 1000 ps;
	d(0) <= 'X';
	WAIT FOR 259000 ps;
	d(0) <= 'Z';
	WAIT FOR 40000 ps;
	d(0) <= '1';
	WAIT FOR 60000 ps;
	d(0) <= 'Z';
	WAIT FOR 60000 ps;
	d(0) <= '1';
	WAIT FOR 70000 ps;
	d(0) <= 'Z';
WAIT;
END PROCESS t_prcs_d_0;

-- inta_n
t_prcs_inta_n: PROCESS
BEGIN
	inta_n <= '1';
WAIT;
END PROCESS t_prcs_inta_n;
-- irq[7]
t_prcs_irq_7: PROCESS
BEGIN
	irq(7) <= '1';
	WAIT FOR 260000 ps;
	irq(7) <= '0';
WAIT;
END PROCESS t_prcs_irq_7;
-- irq[6]
t_prcs_irq_6: PROCESS
BEGIN
	irq(6) <= '1';
	WAIT FOR 260000 ps;
	irq(6) <= '0';
WAIT;
END PROCESS t_prcs_irq_6;
-- irq[5]
t_prcs_irq_5: PROCESS
BEGIN
	irq(5) <= '1';
	WAIT FOR 260000 ps;
	irq(5) <= '0';
WAIT;
END PROCESS t_prcs_irq_5;
-- irq[4]
t_prcs_irq_4: PROCESS
BEGIN
	irq(4) <= '1';
	WAIT FOR 260000 ps;
	irq(4) <= '0';
WAIT;
END PROCESS t_prcs_irq_4;
-- irq[3]
t_prcs_irq_3: PROCESS
BEGIN
	irq(3) <= '1';
	WAIT FOR 260000 ps;
	irq(3) <= '0';
WAIT;
END PROCESS t_prcs_irq_3;
-- irq[2]
t_prcs_irq_2: PROCESS
BEGIN
	irq(2) <= '1';
	WAIT FOR 260000 ps;
	irq(2) <= '0';
WAIT;
END PROCESS t_prcs_irq_2;
-- irq[1]
t_prcs_irq_1: PROCESS
BEGIN
	irq(1) <= '1';
	WAIT FOR 260000 ps;
	irq(1) <= '0';
WAIT;
END PROCESS t_prcs_irq_1;
-- irq[0]
t_prcs_irq_0: PROCESS
BEGIN
	irq(0) <= '1';
	WAIT FOR 260000 ps;
	irq(0) <= '0';
WAIT;
END PROCESS t_prcs_irq_0;

-- rd_n
t_prcs_rd_n: PROCESS
BEGIN
	FOR i IN 1 TO 65
	LOOP
		rd_n <= '0';
		WAIT FOR 2000 ps;
		rd_n <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	rd_n <= '0';
	WAIT FOR 10000 ps;
	rd_n <= '1';
	WAIT FOR 160000 ps;
	rd_n <= '0';
	WAIT FOR 70000 ps;
	rd_n <= '1';
WAIT;
END PROCESS t_prcs_rd_n;

-- rst_n
t_prcs_rst_n: PROCESS
BEGIN
	rst_n <= '0';
	WAIT FOR 10000 ps;
	rst_n <= '1';
WAIT;
END PROCESS t_prcs_rst_n;

-- wr_n
t_prcs_wr_n: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		wr_n <= '0';
		WAIT FOR 8000 ps;
		wr_n <= '1';
		WAIT FOR 8000 ps;
	END LOOP;
	wr_n <= '0';
	WAIT FOR 4000 ps;
	wr_n <= '1';
	WAIT FOR 40000 ps;
	wr_n <= '0';
	WAIT FOR 30000 ps;
	wr_n <= '1';
WAIT;
END PROCESS t_prcs_wr_n;
END PIC_Lab2_arch;

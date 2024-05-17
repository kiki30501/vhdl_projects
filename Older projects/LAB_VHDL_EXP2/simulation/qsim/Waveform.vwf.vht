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
-- Generated on "04/16/2023 12:35:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PIC_encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PIC_encoder_vhd_vec_tst IS
END PIC_encoder_vhd_vec_tst;
ARCHITECTURE PIC_encoder_arch OF PIC_encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL irq : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL mask : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL prio : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT PIC_encoder
	PORT (
	irq : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	mask : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	prio : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PIC_encoder
	PORT MAP (
-- list connections between master ports and signals
	irq => irq,
	mask => mask,
	prio => prio
	);
-- irq[7]
t_prcs_irq_7: PROCESS
BEGIN
	irq(7) <= '0';
WAIT;
END PROCESS t_prcs_irq_7;
-- irq[6]
t_prcs_irq_6: PROCESS
BEGIN
	irq(6) <= '1';
WAIT;
END PROCESS t_prcs_irq_6;
-- irq[5]
t_prcs_irq_5: PROCESS
BEGIN
	irq(5) <= '0';
WAIT;
END PROCESS t_prcs_irq_5;
-- irq[4]
t_prcs_irq_4: PROCESS
BEGIN
	irq(4) <= '1';
WAIT;
END PROCESS t_prcs_irq_4;
-- irq[3]
t_prcs_irq_3: PROCESS
BEGIN
	irq(3) <= '0';
WAIT;
END PROCESS t_prcs_irq_3;
-- irq[2]
t_prcs_irq_2: PROCESS
BEGIN
	irq(2) <= '1';
WAIT;
END PROCESS t_prcs_irq_2;
-- irq[1]
t_prcs_irq_1: PROCESS
BEGIN
	irq(1) <= '0';
WAIT;
END PROCESS t_prcs_irq_1;
-- irq[0]
t_prcs_irq_0: PROCESS
BEGIN
	irq(0) <= '1';
WAIT;
END PROCESS t_prcs_irq_0;
-- mask[7]
t_prcs_mask_7: PROCESS
BEGIN
	mask(7) <= '0';
	WAIT FOR 10000 ps;
	mask(7) <= '1';
	WAIT FOR 880000 ps;
	mask(7) <= '0';
WAIT;
END PROCESS t_prcs_mask_7;
-- mask[6]
t_prcs_mask_6: PROCESS
BEGIN
	mask(6) <= '0';
	WAIT FOR 60000 ps;
	mask(6) <= '1';
	WAIT FOR 810000 ps;
	mask(6) <= '0';
WAIT;
END PROCESS t_prcs_mask_6;
-- mask[5]
t_prcs_mask_5: PROCESS
BEGIN
	mask(5) <= '0';
	WAIT FOR 110000 ps;
	mask(5) <= '1';
	WAIT FOR 760000 ps;
	mask(5) <= '0';
WAIT;
END PROCESS t_prcs_mask_5;
-- mask[4]
t_prcs_mask_4: PROCESS
BEGIN
	mask(4) <= '0';
	WAIT FOR 160000 ps;
	mask(4) <= '1';
	WAIT FOR 720000 ps;
	mask(4) <= '0';
WAIT;
END PROCESS t_prcs_mask_4;
-- mask[3]
t_prcs_mask_3: PROCESS
BEGIN
	mask(3) <= '0';
	WAIT FOR 230000 ps;
	mask(3) <= '1';
	WAIT FOR 670000 ps;
	mask(3) <= '0';
WAIT;
END PROCESS t_prcs_mask_3;
-- mask[2]
t_prcs_mask_2: PROCESS
BEGIN
	mask(2) <= '0';
	WAIT FOR 290000 ps;
	mask(2) <= '1';
	WAIT FOR 600000 ps;
	mask(2) <= '0';
WAIT;
END PROCESS t_prcs_mask_2;
-- mask[1]
t_prcs_mask_1: PROCESS
BEGIN
	mask(1) <= '0';
	WAIT FOR 360000 ps;
	mask(1) <= '1';
	WAIT FOR 610000 ps;
	mask(1) <= '0';
WAIT;
END PROCESS t_prcs_mask_1;
-- mask[0]
t_prcs_mask_0: PROCESS
BEGIN
	mask(0) <= '0';
	WAIT FOR 420000 ps;
	mask(0) <= '1';
	WAIT FOR 550000 ps;
	mask(0) <= '0';
WAIT;
END PROCESS t_prcs_mask_0;
END PIC_encoder_arch;

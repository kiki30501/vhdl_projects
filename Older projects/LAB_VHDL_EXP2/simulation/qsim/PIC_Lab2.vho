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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/16/2023 16:59:03"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PIC_Lab2 IS
    PORT (
	cs_n : IN std_logic;
	wr_n : IN std_logic;
	rd_n : IN std_logic;
	clk : IN std_logic;
	rst_n : IN std_logic;
	inta_n : IN std_logic;
	irq : IN std_logic_vector(7 DOWNTO 0);
	d : BUFFER std_logic_vector(7 DOWNTO 0);
	irq_pic : BUFFER std_logic
	);
END PIC_Lab2;

-- Design Ports Information
-- irq_pic	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inta_n	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cs_n	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_n	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_n	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIC_Lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cs_n : std_logic;
SIGNAL ww_wr_n : std_logic;
SIGNAL ww_rd_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_inta_n : std_logic;
SIGNAL ww_irq : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_irq_pic : std_logic;
SIGNAL \read_rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \d[2]~output_o\ : std_logic;
SIGNAL \d[3]~output_o\ : std_logic;
SIGNAL \d[4]~output_o\ : std_logic;
SIGNAL \d[5]~output_o\ : std_logic;
SIGNAL \d[6]~output_o\ : std_logic;
SIGNAL \d[7]~output_o\ : std_logic;
SIGNAL \irq_pic~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \irq[2]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \Reg_mask|dout[2]~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \cs_n~input_o\ : std_logic;
SIGNAL \wr_n~input_o\ : std_logic;
SIGNAL \Ctrl|mask~0_combout\ : std_logic;
SIGNAL \irq[7]~input_o\ : std_logic;
SIGNAL \irq[6]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \Encoder|prio[5]~6_combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \irq[3]~input_o\ : std_logic;
SIGNAL \irq[5]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \irq[4]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \Encoder|prio[2]~8_combout\ : std_logic;
SIGNAL \irq[1]~input_o\ : std_logic;
SIGNAL \irq[0]~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \Reg_mask|dout[1]~feeder_combout\ : std_logic;
SIGNAL \Encoder|prio[0]~11_combout\ : std_logic;
SIGNAL \Encoder|prio[0]~12_combout\ : std_logic;
SIGNAL \inta_n~input_o\ : std_logic;
SIGNAL \read_rst~combout\ : std_logic;
SIGNAL \read_rst~clkctrl_outclk\ : std_logic;
SIGNAL \Encoder|prio[5]~13_combout\ : std_logic;
SIGNAL \Encoder|prio[4]~14_combout\ : std_logic;
SIGNAL \Ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \Encoder|prio[2]~9_combout\ : std_logic;
SIGNAL \Encoder|prio[1]~10_combout\ : std_logic;
SIGNAL \Encoder|prio[3]~7_combout\ : std_logic;
SIGNAL \Ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \Ctrl|Equal0~2_combout\ : std_logic;
SIGNAL \rd_n~input_o\ : std_logic;
SIGNAL \Ctrl|d~8_combout\ : std_logic;
SIGNAL \Reg_read|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg_mask|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Encoder|prio\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Encoder|masked_irq\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_read_rst~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_cs_n <= cs_n;
ww_wr_n <= wr_n;
ww_rd_n <= rd_n;
ww_clk <= clk;
ww_rst_n <= rst_n;
ww_inta_n <= inta_n;
ww_irq <= irq;
d <= ww_d;
irq_pic <= ww_irq_pic;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\read_rst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \read_rst~combout\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_read_rst~clkctrl_outclk\ <= NOT \read_rst~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(0),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(1),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(2),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(3),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(4),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(5),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(6),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg_read|dout\(7),
	oe => \Ctrl|d~8_combout\,
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\irq_pic~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ctrl|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \irq_pic~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y0_N1
\irq[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(2),
	o => \irq[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\d[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(2),
	o => \d[2]~input_o\);

-- Location: LCCOMB_X33_Y2_N24
\Reg_mask|dout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_mask|dout[2]~feeder_combout\ = \d[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[2]~input_o\,
	combout => \Reg_mask|dout[2]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G4
\rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y7_N8
\cs_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cs_n,
	o => \cs_n~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\wr_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_n,
	o => \wr_n~input_o\);

-- Location: LCCOMB_X33_Y4_N24
\Ctrl|mask~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ctrl|mask~0_combout\ = (!\cs_n~input_o\ & !\wr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cs_n~input_o\,
	datad => \wr_n~input_o\,
	combout => \Ctrl|mask~0_combout\);

-- Location: FF_X33_Y2_N25
\Reg_mask|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg_mask|dout[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(2));

-- Location: IOIBUF_X28_Y0_N22
\irq[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(7),
	o => \irq[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\irq[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(6),
	o => \irq[6]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\d[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(7),
	o => \d[7]~input_o\);

-- Location: FF_X32_Y2_N23
\Reg_mask|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[7]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(7));

-- Location: IOIBUF_X34_Y4_N22
\d[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(6),
	o => \d[6]~input_o\);

-- Location: FF_X32_Y2_N29
\Reg_mask|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[6]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(6));

-- Location: LCCOMB_X32_Y2_N22
\Encoder|prio[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[5]~6_combout\ = (\irq[7]~input_o\ & (\Reg_mask|dout\(7) & ((\Reg_mask|dout\(6)) # (!\irq[6]~input_o\)))) # (!\irq[7]~input_o\ & (((\Reg_mask|dout\(6))) # (!\irq[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[7]~input_o\,
	datab => \irq[6]~input_o\,
	datac => \Reg_mask|dout\(7),
	datad => \Reg_mask|dout\(6),
	combout => \Encoder|prio[5]~6_combout\);

-- Location: IOIBUF_X32_Y0_N22
\d[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(3),
	o => \d[3]~input_o\);

-- Location: FF_X32_Y2_N17
\Reg_mask|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[3]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(3));

-- Location: IOIBUF_X30_Y0_N22
\irq[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(3),
	o => \irq[3]~input_o\);

-- Location: LCCOMB_X32_Y2_N16
\Encoder|masked_irq[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|masked_irq\(3) = (!\Reg_mask|dout\(3) & \irq[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reg_mask|dout\(3),
	datad => \irq[3]~input_o\,
	combout => \Encoder|masked_irq\(3));

-- Location: IOIBUF_X23_Y0_N15
\irq[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(5),
	o => \irq[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\d[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(5),
	o => \d[5]~input_o\);

-- Location: FF_X32_Y2_N21
\Reg_mask|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[5]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(5));

-- Location: LCCOMB_X32_Y2_N26
\Encoder|masked_irq[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|masked_irq\(5) = (\irq[5]~input_o\ & !\Reg_mask|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[5]~input_o\,
	datad => \Reg_mask|dout\(5),
	combout => \Encoder|masked_irq\(5));

-- Location: IOIBUF_X28_Y0_N1
\irq[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(4),
	o => \irq[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\d[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(4),
	o => \d[4]~input_o\);

-- Location: FF_X32_Y2_N27
\Reg_mask|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[4]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(4));

-- Location: LCCOMB_X32_Y2_N20
\Encoder|masked_irq[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|masked_irq\(4) = (\irq[4]~input_o\ & !\Reg_mask|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[4]~input_o\,
	datad => \Reg_mask|dout\(4),
	combout => \Encoder|masked_irq\(4));

-- Location: LCCOMB_X32_Y2_N6
\Encoder|prio[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[2]~8_combout\ = (\Encoder|prio[5]~6_combout\ & (!\Encoder|masked_irq\(3) & (!\Encoder|masked_irq\(5) & !\Encoder|masked_irq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|prio[5]~6_combout\,
	datab => \Encoder|masked_irq\(3),
	datac => \Encoder|masked_irq\(5),
	datad => \Encoder|masked_irq\(4),
	combout => \Encoder|prio[2]~8_combout\);

-- Location: IOIBUF_X30_Y0_N8
\irq[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(1),
	o => \irq[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\irq[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(0),
	o => \irq[0]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\d[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(0),
	o => \d[0]~input_o\);

-- Location: FF_X33_Y2_N19
\Reg_mask|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \d[0]~input_o\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(0));

-- Location: IOIBUF_X34_Y2_N22
\d[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X33_Y2_N6
\Reg_mask|dout[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg_mask|dout[1]~feeder_combout\ = \d[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d[1]~input_o\,
	combout => \Reg_mask|dout[1]~feeder_combout\);

-- Location: FF_X33_Y2_N7
\Reg_mask|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Reg_mask|dout[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \Ctrl|mask~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_mask|dout\(1));

-- Location: LCCOMB_X33_Y2_N18
\Encoder|prio[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[0]~11_combout\ = (\irq[0]~input_o\ & (!\Reg_mask|dout\(0) & ((\Reg_mask|dout\(1)) # (!\irq[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[1]~input_o\,
	datab => \irq[0]~input_o\,
	datac => \Reg_mask|dout\(0),
	datad => \Reg_mask|dout\(1),
	combout => \Encoder|prio[0]~11_combout\);

-- Location: LCCOMB_X32_Y2_N0
\Encoder|prio[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[0]~12_combout\ = (\Encoder|prio[2]~8_combout\ & (\Encoder|prio[0]~11_combout\ & ((\Reg_mask|dout\(2)) # (!\irq[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[2]~input_o\,
	datab => \Reg_mask|dout\(2),
	datac => \Encoder|prio[2]~8_combout\,
	datad => \Encoder|prio[0]~11_combout\,
	combout => \Encoder|prio[0]~12_combout\);

-- Location: IOIBUF_X0_Y9_N8
\inta_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inta_n,
	o => \inta_n~input_o\);

-- Location: LCCOMB_X1_Y11_N16
read_rst : cycloneive_lcell_comb
-- Equation(s):
-- \read_rst~combout\ = (!\rst_n~input_o\) # (!\inta_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inta_n~input_o\,
	datad => \rst_n~input_o\,
	combout => \read_rst~combout\);

-- Location: CLKCTRL_G1
\read_rst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \read_rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \read_rst~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y2_N12
\Encoder|prio[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio\(7) = (\irq[7]~input_o\ & !\Reg_mask|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[7]~input_o\,
	datad => \Reg_mask|dout\(7),
	combout => \Encoder|prio\(7));

-- Location: FF_X32_Y2_N13
\Reg_read|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio\(7),
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(7));

-- Location: LCCOMB_X32_Y2_N24
\Encoder|prio[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[5]~13_combout\ = (\irq[5]~input_o\ & (\Encoder|prio[5]~6_combout\ & !\Reg_mask|dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[5]~input_o\,
	datac => \Encoder|prio[5]~6_combout\,
	datad => \Reg_mask|dout\(5),
	combout => \Encoder|prio[5]~13_combout\);

-- Location: FF_X32_Y2_N25
\Reg_read|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[5]~13_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(5));

-- Location: LCCOMB_X32_Y2_N30
\Encoder|prio[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio\(6) = (\irq[6]~input_o\ & (!\Reg_mask|dout\(6) & ((\Reg_mask|dout\(7)) # (!\irq[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[6]~input_o\,
	datab => \Reg_mask|dout\(7),
	datac => \irq[7]~input_o\,
	datad => \Reg_mask|dout\(6),
	combout => \Encoder|prio\(6));

-- Location: FF_X32_Y2_N31
\Reg_read|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio\(6),
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(6));

-- Location: LCCOMB_X32_Y2_N10
\Encoder|prio[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[4]~14_combout\ = (\irq[4]~input_o\ & (!\Reg_mask|dout\(4) & (!\Encoder|masked_irq\(5) & \Encoder|prio[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[4]~input_o\,
	datab => \Reg_mask|dout\(4),
	datac => \Encoder|masked_irq\(5),
	datad => \Encoder|prio[5]~6_combout\,
	combout => \Encoder|prio[4]~14_combout\);

-- Location: FF_X32_Y2_N11
\Reg_read|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[4]~14_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(4));

-- Location: LCCOMB_X32_Y2_N8
\Ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ctrl|Equal0~0_combout\ = (!\Reg_read|dout\(7) & (!\Reg_read|dout\(5) & (!\Reg_read|dout\(6) & !\Reg_read|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_read|dout\(7),
	datab => \Reg_read|dout\(5),
	datac => \Reg_read|dout\(6),
	datad => \Reg_read|dout\(4),
	combout => \Ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y2_N4
\Encoder|prio[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[2]~9_combout\ = (\irq[2]~input_o\ & (\Encoder|prio[2]~8_combout\ & !\Reg_mask|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \irq[2]~input_o\,
	datac => \Encoder|prio[2]~8_combout\,
	datad => \Reg_mask|dout\(2),
	combout => \Encoder|prio[2]~9_combout\);

-- Location: FF_X32_Y2_N5
\Reg_read|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[2]~9_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(2));

-- Location: LCCOMB_X33_Y2_N4
\Encoder|masked_irq[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|masked_irq\(1) = (\irq[1]~input_o\ & !\Reg_mask|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \irq[1]~input_o\,
	datad => \Reg_mask|dout\(1),
	combout => \Encoder|masked_irq\(1));

-- Location: LCCOMB_X32_Y2_N14
\Encoder|prio[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[1]~10_combout\ = (\Encoder|prio[2]~8_combout\ & (\Encoder|masked_irq\(1) & ((\Reg_mask|dout\(2)) # (!\irq[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[2]~input_o\,
	datab => \Reg_mask|dout\(2),
	datac => \Encoder|prio[2]~8_combout\,
	datad => \Encoder|masked_irq\(1),
	combout => \Encoder|prio[1]~10_combout\);

-- Location: FF_X32_Y2_N15
\Reg_read|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[1]~10_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(1));

-- Location: LCCOMB_X32_Y2_N18
\Encoder|prio[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Encoder|prio[3]~7_combout\ = (!\Encoder|masked_irq\(5) & (\Encoder|masked_irq\(3) & (\Encoder|prio[5]~6_combout\ & !\Encoder|masked_irq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Encoder|masked_irq\(5),
	datab => \Encoder|masked_irq\(3),
	datac => \Encoder|prio[5]~6_combout\,
	datad => \Encoder|masked_irq\(4),
	combout => \Encoder|prio[3]~7_combout\);

-- Location: FF_X32_Y2_N19
\Reg_read|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[3]~7_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(3));

-- Location: LCCOMB_X32_Y2_N2
\Ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ctrl|Equal0~1_combout\ = (!\Reg_read|dout\(2) & (!\Reg_read|dout\(0) & (!\Reg_read|dout\(1) & !\Reg_read|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg_read|dout\(2),
	datab => \Reg_read|dout\(0),
	datac => \Reg_read|dout\(1),
	datad => \Reg_read|dout\(3),
	combout => \Ctrl|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y2_N28
\Ctrl|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ctrl|Equal0~2_combout\ = (!\Ctrl|Equal0~1_combout\) # (!\Ctrl|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ctrl|Equal0~0_combout\,
	datad => \Ctrl|Equal0~1_combout\,
	combout => \Ctrl|Equal0~2_combout\);

-- Location: FF_X32_Y2_N1
\Reg_read|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Encoder|prio[0]~12_combout\,
	clrn => \ALT_INV_read_rst~clkctrl_outclk\,
	ena => \Ctrl|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg_read|dout\(0));

-- Location: IOIBUF_X34_Y12_N15
\rd_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_n,
	o => \rd_n~input_o\);

-- Location: LCCOMB_X33_Y4_N30
\Ctrl|d~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ctrl|d~8_combout\ = (!\cs_n~input_o\ & !\rd_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cs_n~input_o\,
	datad => \rd_n~input_o\,
	combout => \Ctrl|d~8_combout\);

ww_irq_pic <= \irq_pic~output_o\;

d(0) <= \d[0]~output_o\;

d(1) <= \d[1]~output_o\;

d(2) <= \d[2]~output_o\;

d(3) <= \d[3]~output_o\;

d(4) <= \d[4]~output_o\;

d(5) <= \d[5]~output_o\;

d(6) <= \d[6]~output_o\;

d(7) <= \d[7]~output_o\;
END structure;



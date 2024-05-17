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

-- DATE "04/25/2023 12:13:38"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PIC_encoder2 IS
    PORT (
	irq : IN std_logic_vector(7 DOWNTO 0);
	mask : IN std_logic_vector(7 DOWNTO 0);
	prio : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END PIC_encoder2;

-- Design Ports Information
-- prio[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[4]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prio[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[3]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[1]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- irq[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PIC_encoder2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_irq : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mask : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_prio : std_logic_vector(7 DOWNTO 0);
SIGNAL \prio[0]~output_o\ : std_logic;
SIGNAL \prio[1]~output_o\ : std_logic;
SIGNAL \prio[2]~output_o\ : std_logic;
SIGNAL \prio[3]~output_o\ : std_logic;
SIGNAL \prio[4]~output_o\ : std_logic;
SIGNAL \prio[5]~output_o\ : std_logic;
SIGNAL \prio[6]~output_o\ : std_logic;
SIGNAL \prio[7]~output_o\ : std_logic;
SIGNAL \irq[1]~input_o\ : std_logic;
SIGNAL \mask[1]~input_o\ : std_logic;
SIGNAL \mask[0]~input_o\ : std_logic;
SIGNAL \irq[0]~input_o\ : std_logic;
SIGNAL \prio~3_combout\ : std_logic;
SIGNAL \mask[7]~input_o\ : std_logic;
SIGNAL \irq[7]~input_o\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \mask[6]~input_o\ : std_logic;
SIGNAL \mask[5]~input_o\ : std_logic;
SIGNAL \irq[5]~input_o\ : std_logic;
SIGNAL \irq[6]~input_o\ : std_logic;
SIGNAL \prio~0_combout\ : std_logic;
SIGNAL \mask[4]~input_o\ : std_logic;
SIGNAL \irq[4]~input_o\ : std_logic;
SIGNAL \prio~1_combout\ : std_logic;
SIGNAL \irq[3]~input_o\ : std_logic;
SIGNAL \mask[3]~input_o\ : std_logic;
SIGNAL \prio~2_combout\ : std_logic;
SIGNAL \irq[2]~input_o\ : std_logic;
SIGNAL \mask[2]~input_o\ : std_logic;
SIGNAL \prio~4_combout\ : std_logic;
SIGNAL \prio~5_combout\ : std_logic;
SIGNAL \prio~6_combout\ : std_logic;
SIGNAL \prio~7_combout\ : std_logic;
SIGNAL \prio~8_combout\ : std_logic;
SIGNAL \prio~9_combout\ : std_logic;
SIGNAL \prio~10_combout\ : std_logic;
SIGNAL temp : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_irq <= irq;
ww_mask <= mask;
prio <= ww_prio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y5_N16
\prio[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~4_combout\,
	devoe => ww_devoe,
	o => \prio[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\prio[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~5_combout\,
	devoe => ww_devoe,
	o => \prio[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\prio[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~6_combout\,
	devoe => ww_devoe,
	o => \prio[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\prio[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~7_combout\,
	devoe => ww_devoe,
	o => \prio[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\prio[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~8_combout\,
	devoe => ww_devoe,
	o => \prio[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\prio[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~9_combout\,
	devoe => ww_devoe,
	o => \prio[5]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\prio[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prio~10_combout\,
	devoe => ww_devoe,
	o => \prio[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\prio[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~0_combout\,
	devoe => ww_devoe,
	o => \prio[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\irq[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(1),
	o => \irq[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\mask[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(1),
	o => \mask[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\mask[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(0),
	o => \mask[0]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\irq[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(0),
	o => \irq[0]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\prio~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~3_combout\ = (!\mask[0]~input_o\ & (\irq[0]~input_o\ & ((\mask[1]~input_o\) # (!\irq[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[1]~input_o\,
	datab => \mask[1]~input_o\,
	datac => \mask[0]~input_o\,
	datad => \irq[0]~input_o\,
	combout => \prio~3_combout\);

-- Location: IOIBUF_X21_Y0_N8
\mask[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(7),
	o => \mask[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\irq[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(7),
	o => \irq[7]~input_o\);

-- Location: LCCOMB_X10_Y4_N2
\temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (!\mask[7]~input_o\ & \irq[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[7]~input_o\,
	datad => \irq[7]~input_o\,
	combout => \temp~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\mask[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(6),
	o => \mask[6]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\mask[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(5),
	o => \mask[5]~input_o\);

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

-- Location: LCCOMB_X10_Y4_N8
\temp[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp(5) = (!\mask[5]~input_o\ & \irq[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[5]~input_o\,
	datad => \irq[5]~input_o\,
	combout => temp(5));

-- Location: IOIBUF_X23_Y0_N8
\irq[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(6),
	o => \irq[6]~input_o\);

-- Location: LCCOMB_X10_Y4_N12
\prio~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~0_combout\ = (!\temp~0_combout\ & (!temp(5) & ((\mask[6]~input_o\) # (!\irq[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~0_combout\,
	datab => \mask[6]~input_o\,
	datac => temp(5),
	datad => \irq[6]~input_o\,
	combout => \prio~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\mask[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(4),
	o => \mask[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\irq[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(4),
	o => \irq[4]~input_o\);

-- Location: LCCOMB_X10_Y4_N30
\prio~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~1_combout\ = (\prio~0_combout\ & ((\mask[4]~input_o\) # (!\irq[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prio~0_combout\,
	datac => \mask[4]~input_o\,
	datad => \irq[4]~input_o\,
	combout => \prio~1_combout\);

-- Location: IOIBUF_X1_Y0_N22
\irq[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(3),
	o => \irq[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\mask[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(3),
	o => \mask[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N0
\prio~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~2_combout\ = (\prio~1_combout\ & ((\mask[3]~input_o\) # (!\irq[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prio~1_combout\,
	datac => \irq[3]~input_o\,
	datad => \mask[3]~input_o\,
	combout => \prio~2_combout\);

-- Location: IOIBUF_X11_Y24_N15
\irq[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_irq(2),
	o => \irq[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\mask[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(2),
	o => \mask[2]~input_o\);

-- Location: LCCOMB_X10_Y4_N20
\prio~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~4_combout\ = (\prio~3_combout\ & (\prio~2_combout\ & ((\mask[2]~input_o\) # (!\irq[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prio~3_combout\,
	datab => \prio~2_combout\,
	datac => \irq[2]~input_o\,
	datad => \mask[2]~input_o\,
	combout => \prio~4_combout\);

-- Location: LCCOMB_X10_Y4_N22
\temp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- temp(1) = (!\mask[1]~input_o\ & \irq[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[1]~input_o\,
	datad => \irq[1]~input_o\,
	combout => temp(1));

-- Location: LCCOMB_X10_Y4_N16
\prio~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~5_combout\ = (\prio~2_combout\ & (temp(1) & ((\mask[2]~input_o\) # (!\irq[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[2]~input_o\,
	datab => \prio~2_combout\,
	datac => temp(1),
	datad => \mask[2]~input_o\,
	combout => \prio~5_combout\);

-- Location: LCCOMB_X10_Y4_N26
\prio~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~6_combout\ = (!\mask[2]~input_o\ & (\irq[2]~input_o\ & \prio~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[2]~input_o\,
	datac => \irq[2]~input_o\,
	datad => \prio~2_combout\,
	combout => \prio~6_combout\);

-- Location: LCCOMB_X10_Y4_N28
\prio~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~7_combout\ = (\prio~1_combout\ & (\irq[3]~input_o\ & !\mask[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prio~1_combout\,
	datac => \irq[3]~input_o\,
	datad => \mask[3]~input_o\,
	combout => \prio~7_combout\);

-- Location: LCCOMB_X10_Y4_N6
\prio~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~8_combout\ = (\prio~0_combout\ & (!\mask[4]~input_o\ & \irq[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prio~0_combout\,
	datac => \mask[4]~input_o\,
	datad => \irq[4]~input_o\,
	combout => \prio~8_combout\);

-- Location: LCCOMB_X10_Y4_N24
\prio~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~9_combout\ = (!\temp~0_combout\ & (temp(5) & ((\mask[6]~input_o\) # (!\irq[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp~0_combout\,
	datab => \mask[6]~input_o\,
	datac => temp(5),
	datad => \irq[6]~input_o\,
	combout => \prio~9_combout\);

-- Location: LCCOMB_X10_Y4_N18
\prio~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \prio~10_combout\ = (!\mask[6]~input_o\ & (\irq[6]~input_o\ & ((\mask[7]~input_o\) # (!\irq[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \irq[7]~input_o\,
	datab => \mask[6]~input_o\,
	datac => \mask[7]~input_o\,
	datad => \irq[6]~input_o\,
	combout => \prio~10_combout\);

ww_prio(0) <= \prio[0]~output_o\;

ww_prio(1) <= \prio[1]~output_o\;

ww_prio(2) <= \prio[2]~output_o\;

ww_prio(3) <= \prio[3]~output_o\;

ww_prio(4) <= \prio[4]~output_o\;

ww_prio(5) <= \prio[5]~output_o\;

ww_prio(6) <= \prio[6]~output_o\;

ww_prio(7) <= \prio[7]~output_o\;
END structure;



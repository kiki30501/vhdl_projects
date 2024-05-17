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

-- DATE "04/30/2023 15:39:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	pb_if IS
    PORT (
	pb : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	ssreg : OUT std_logic_vector(6 DOWNTO 0)
	);
END pb_if;

-- Design Ports Information
-- ssreg[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssreg[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pb_if IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pb : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ssreg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ssreg[0]~output_o\ : std_logic;
SIGNAL \ssreg[1]~output_o\ : std_logic;
SIGNAL \ssreg[2]~output_o\ : std_logic;
SIGNAL \ssreg[3]~output_o\ : std_logic;
SIGNAL \ssreg[4]~output_o\ : std_logic;
SIGNAL \ssreg[5]~output_o\ : std_logic;
SIGNAL \ssreg[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pb~input_o\ : std_logic;
SIGNAL \sync_ff[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \in_sync[0]~feeder_combout\ : std_logic;
SIGNAL \counter16[0]~16_combout\ : std_logic;
SIGNAL \counter16[0]~17\ : std_logic;
SIGNAL \counter16[1]~18_combout\ : std_logic;
SIGNAL \counter16[1]~19\ : std_logic;
SIGNAL \counter16[2]~20_combout\ : std_logic;
SIGNAL \counter16[2]~21\ : std_logic;
SIGNAL \counter16[3]~22_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \counter16[3]~23\ : std_logic;
SIGNAL \counter16[4]~24_combout\ : std_logic;
SIGNAL \counter16[4]~25\ : std_logic;
SIGNAL \counter16[5]~26_combout\ : std_logic;
SIGNAL \counter16[5]~27\ : std_logic;
SIGNAL \counter16[6]~28_combout\ : std_logic;
SIGNAL \counter16[6]~29\ : std_logic;
SIGNAL \counter16[7]~30_combout\ : std_logic;
SIGNAL \counter16[7]~31\ : std_logic;
SIGNAL \counter16[8]~32_combout\ : std_logic;
SIGNAL \counter16[8]~33\ : std_logic;
SIGNAL \counter16[9]~34_combout\ : std_logic;
SIGNAL \counter16[9]~35\ : std_logic;
SIGNAL \counter16[10]~36_combout\ : std_logic;
SIGNAL \counter16[10]~37\ : std_logic;
SIGNAL \counter16[11]~38_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter16[11]~39\ : std_logic;
SIGNAL \counter16[12]~40_combout\ : std_logic;
SIGNAL \counter16[12]~41\ : std_logic;
SIGNAL \counter16[13]~42_combout\ : std_logic;
SIGNAL \counter16[13]~43\ : std_logic;
SIGNAL \counter16[14]~44_combout\ : std_logic;
SIGNAL \counter16[14]~45\ : std_logic;
SIGNAL \counter16[15]~46_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \in_sync[1]~0_combout\ : std_logic;
SIGNAL \sync_ff[1]~feeder_combout\ : std_logic;
SIGNAL \increment~0_combout\ : std_logic;
SIGNAL \increment~q\ : std_logic;
SIGNAL \counter4[0]~4_combout\ : std_logic;
SIGNAL \counter4[0]~5\ : std_logic;
SIGNAL \counter4[1]~6_combout\ : std_logic;
SIGNAL \counter4[1]~7\ : std_logic;
SIGNAL \counter4[2]~8_combout\ : std_logic;
SIGNAL \counter4[2]~9\ : std_logic;
SIGNAL \counter4[3]~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ssreg[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ssreg[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ssreg[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ssreg[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ssreg[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ssreg[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ssreg[6]~reg0_q\ : std_logic;
SIGNAL counter4 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter16 : std_logic_vector(15 DOWNTO 0);
SIGNAL in_sync : std_logic_vector(1 DOWNTO 0);
SIGNAL sync_ff : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_ssreg[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ssreg[0]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pb <= pb;
ww_clk <= clk;
ww_rst <= rst;
ssreg <= ww_ssreg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ssreg[6]~reg0_q\ <= NOT \ssreg[6]~reg0_q\;
\ALT_INV_ssreg[5]~reg0_q\ <= NOT \ssreg[5]~reg0_q\;
\ALT_INV_ssreg[4]~reg0_q\ <= NOT \ssreg[4]~reg0_q\;
\ALT_INV_ssreg[3]~reg0_q\ <= NOT \ssreg[3]~reg0_q\;
\ALT_INV_ssreg[2]~reg0_q\ <= NOT \ssreg[2]~reg0_q\;
\ALT_INV_ssreg[1]~reg0_q\ <= NOT \ssreg[1]~reg0_q\;
\ALT_INV_ssreg[0]~reg0_q\ <= NOT \ssreg[0]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\ssreg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ssreg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ssreg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ssreg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ssreg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ssreg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ssreg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssreg[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssreg[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X115_Y40_N8
\pb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb,
	o => \pb~input_o\);

-- Location: LCCOMB_X111_Y58_N30
\sync_ff[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_ff[0]~0_combout\ = !\pb~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb~input_o\,
	combout => \sync_ff[0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X111_Y58_N31
\sync_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sync_ff[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sync_ff(0));

-- Location: LCCOMB_X111_Y58_N0
\in_sync[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \in_sync[0]~feeder_combout\ = sync_ff(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sync_ff(0),
	combout => \in_sync[0]~feeder_combout\);

-- Location: FF_X111_Y58_N1
\in_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_sync[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_sync(0));

-- Location: LCCOMB_X113_Y58_N0
\counter16[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[0]~16_combout\ = counter16(0) $ (VCC)
-- \counter16[0]~17\ = CARRY(counter16(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter16(0),
	datad => VCC,
	combout => \counter16[0]~16_combout\,
	cout => \counter16[0]~17\);

-- Location: FF_X113_Y58_N1
\counter16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[0]~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(0));

-- Location: LCCOMB_X113_Y58_N2
\counter16[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[1]~18_combout\ = (counter16(1) & (!\counter16[0]~17\)) # (!counter16(1) & ((\counter16[0]~17\) # (GND)))
-- \counter16[1]~19\ = CARRY((!\counter16[0]~17\) # (!counter16(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(1),
	datad => VCC,
	cin => \counter16[0]~17\,
	combout => \counter16[1]~18_combout\,
	cout => \counter16[1]~19\);

-- Location: FF_X113_Y58_N3
\counter16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[1]~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(1));

-- Location: LCCOMB_X113_Y58_N4
\counter16[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[2]~20_combout\ = (counter16(2) & (\counter16[1]~19\ $ (GND))) # (!counter16(2) & (!\counter16[1]~19\ & VCC))
-- \counter16[2]~21\ = CARRY((counter16(2) & !\counter16[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(2),
	datad => VCC,
	cin => \counter16[1]~19\,
	combout => \counter16[2]~20_combout\,
	cout => \counter16[2]~21\);

-- Location: FF_X113_Y58_N5
\counter16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[2]~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(2));

-- Location: LCCOMB_X113_Y58_N6
\counter16[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[3]~22_combout\ = (counter16(3) & (!\counter16[2]~21\)) # (!counter16(3) & ((\counter16[2]~21\) # (GND)))
-- \counter16[3]~23\ = CARRY((!\counter16[2]~21\) # (!counter16(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter16(3),
	datad => VCC,
	cin => \counter16[2]~21\,
	combout => \counter16[3]~22_combout\,
	cout => \counter16[3]~23\);

-- Location: FF_X113_Y58_N7
\counter16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[3]~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(3));

-- Location: LCCOMB_X112_Y58_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter16(3) & (counter16(0) & (counter16(1) & counter16(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter16(3),
	datab => counter16(0),
	datac => counter16(1),
	datad => counter16(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X113_Y58_N8
\counter16[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[4]~24_combout\ = (counter16(4) & (\counter16[3]~23\ $ (GND))) # (!counter16(4) & (!\counter16[3]~23\ & VCC))
-- \counter16[4]~25\ = CARRY((counter16(4) & !\counter16[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(4),
	datad => VCC,
	cin => \counter16[3]~23\,
	combout => \counter16[4]~24_combout\,
	cout => \counter16[4]~25\);

-- Location: FF_X113_Y58_N9
\counter16[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[4]~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(4));

-- Location: LCCOMB_X113_Y58_N10
\counter16[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[5]~26_combout\ = (counter16(5) & (!\counter16[4]~25\)) # (!counter16(5) & ((\counter16[4]~25\) # (GND)))
-- \counter16[5]~27\ = CARRY((!\counter16[4]~25\) # (!counter16(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter16(5),
	datad => VCC,
	cin => \counter16[4]~25\,
	combout => \counter16[5]~26_combout\,
	cout => \counter16[5]~27\);

-- Location: FF_X113_Y58_N11
\counter16[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[5]~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(5));

-- Location: LCCOMB_X113_Y58_N12
\counter16[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[6]~28_combout\ = (counter16(6) & (\counter16[5]~27\ $ (GND))) # (!counter16(6) & (!\counter16[5]~27\ & VCC))
-- \counter16[6]~29\ = CARRY((counter16(6) & !\counter16[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter16(6),
	datad => VCC,
	cin => \counter16[5]~27\,
	combout => \counter16[6]~28_combout\,
	cout => \counter16[6]~29\);

-- Location: FF_X113_Y58_N13
\counter16[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[6]~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(6));

-- Location: LCCOMB_X113_Y58_N14
\counter16[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[7]~30_combout\ = (counter16(7) & (!\counter16[6]~29\)) # (!counter16(7) & ((\counter16[6]~29\) # (GND)))
-- \counter16[7]~31\ = CARRY((!\counter16[6]~29\) # (!counter16(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(7),
	datad => VCC,
	cin => \counter16[6]~29\,
	combout => \counter16[7]~30_combout\,
	cout => \counter16[7]~31\);

-- Location: FF_X113_Y58_N15
\counter16[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[7]~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(7));

-- Location: LCCOMB_X113_Y58_N16
\counter16[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[8]~32_combout\ = (counter16(8) & (\counter16[7]~31\ $ (GND))) # (!counter16(8) & (!\counter16[7]~31\ & VCC))
-- \counter16[8]~33\ = CARRY((counter16(8) & !\counter16[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(8),
	datad => VCC,
	cin => \counter16[7]~31\,
	combout => \counter16[8]~32_combout\,
	cout => \counter16[8]~33\);

-- Location: FF_X113_Y58_N17
\counter16[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[8]~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(8));

-- Location: LCCOMB_X113_Y58_N18
\counter16[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[9]~34_combout\ = (counter16(9) & (!\counter16[8]~33\)) # (!counter16(9) & ((\counter16[8]~33\) # (GND)))
-- \counter16[9]~35\ = CARRY((!\counter16[8]~33\) # (!counter16(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(9),
	datad => VCC,
	cin => \counter16[8]~33\,
	combout => \counter16[9]~34_combout\,
	cout => \counter16[9]~35\);

-- Location: FF_X113_Y58_N19
\counter16[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[9]~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(9));

-- Location: LCCOMB_X113_Y58_N20
\counter16[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[10]~36_combout\ = (counter16(10) & (\counter16[9]~35\ $ (GND))) # (!counter16(10) & (!\counter16[9]~35\ & VCC))
-- \counter16[10]~37\ = CARRY((counter16(10) & !\counter16[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(10),
	datad => VCC,
	cin => \counter16[9]~35\,
	combout => \counter16[10]~36_combout\,
	cout => \counter16[10]~37\);

-- Location: FF_X113_Y58_N21
\counter16[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[10]~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(10));

-- Location: LCCOMB_X113_Y58_N22
\counter16[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[11]~38_combout\ = (counter16(11) & (!\counter16[10]~37\)) # (!counter16(11) & ((\counter16[10]~37\) # (GND)))
-- \counter16[11]~39\ = CARRY((!\counter16[10]~37\) # (!counter16(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter16(11),
	datad => VCC,
	cin => \counter16[10]~37\,
	combout => \counter16[11]~38_combout\,
	cout => \counter16[11]~39\);

-- Location: FF_X113_Y58_N23
\counter16[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[11]~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(11));

-- Location: LCCOMB_X112_Y58_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter16(10) & (counter16(11) & (counter16(9) & counter16(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter16(10),
	datab => counter16(11),
	datac => counter16(9),
	datad => counter16(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X113_Y58_N24
\counter16[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[12]~40_combout\ = (counter16(12) & (\counter16[11]~39\ $ (GND))) # (!counter16(12) & (!\counter16[11]~39\ & VCC))
-- \counter16[12]~41\ = CARRY((counter16(12) & !\counter16[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(12),
	datad => VCC,
	cin => \counter16[11]~39\,
	combout => \counter16[12]~40_combout\,
	cout => \counter16[12]~41\);

-- Location: FF_X113_Y58_N25
\counter16[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[12]~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(12));

-- Location: LCCOMB_X113_Y58_N26
\counter16[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[13]~42_combout\ = (counter16(13) & (!\counter16[12]~41\)) # (!counter16(13) & ((\counter16[12]~41\) # (GND)))
-- \counter16[13]~43\ = CARRY((!\counter16[12]~41\) # (!counter16(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter16(13),
	datad => VCC,
	cin => \counter16[12]~41\,
	combout => \counter16[13]~42_combout\,
	cout => \counter16[13]~43\);

-- Location: FF_X113_Y58_N27
\counter16[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[13]~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(13));

-- Location: LCCOMB_X113_Y58_N28
\counter16[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[14]~44_combout\ = (counter16(14) & (\counter16[13]~43\ $ (GND))) # (!counter16(14) & (!\counter16[13]~43\ & VCC))
-- \counter16[14]~45\ = CARRY((counter16(14) & !\counter16[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter16(14),
	datad => VCC,
	cin => \counter16[13]~43\,
	combout => \counter16[14]~44_combout\,
	cout => \counter16[14]~45\);

-- Location: FF_X113_Y58_N29
\counter16[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[14]~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(14));

-- Location: LCCOMB_X113_Y58_N30
\counter16[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter16[15]~46_combout\ = \counter16[14]~45\ $ (counter16(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter16(15),
	cin => \counter16[14]~45\,
	combout => \counter16[15]~46_combout\);

-- Location: FF_X113_Y58_N31
\counter16[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter16[15]~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter16(15));

-- Location: LCCOMB_X112_Y58_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter16(15) & (counter16(14) & (counter16(13) & counter16(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter16(15),
	datab => counter16(14),
	datac => counter16(13),
	datad => counter16(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X112_Y58_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter16(5) & (counter16(6) & (counter16(4) & counter16(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter16(5),
	datab => counter16(6),
	datac => counter16(4),
	datad => counter16(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X112_Y58_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X111_Y58_N28
\in_sync[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \in_sync[1]~0_combout\ = (\Equal0~4_combout\ & (in_sync(0))) # (!\Equal0~4_combout\ & ((in_sync(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_sync(0),
	datac => in_sync(1),
	datad => \Equal0~4_combout\,
	combout => \in_sync[1]~0_combout\);

-- Location: FF_X111_Y58_N29
\in_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in_sync[1]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_sync(1));

-- Location: LCCOMB_X111_Y58_N22
\sync_ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_ff[1]~feeder_combout\ = in_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_sync(1),
	combout => \sync_ff[1]~feeder_combout\);

-- Location: FF_X111_Y58_N23
\sync_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sync_ff[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sync_ff(1));

-- Location: LCCOMB_X111_Y58_N18
\increment~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \increment~0_combout\ = (!sync_ff(1) & in_sync(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sync_ff(1),
	datad => in_sync(1),
	combout => \increment~0_combout\);

-- Location: FF_X111_Y58_N19
increment : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \increment~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \increment~q\);

-- Location: LCCOMB_X111_Y58_N6
\counter4[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4[0]~4_combout\ = (counter4(0) & (\increment~q\ $ (VCC))) # (!counter4(0) & (\increment~q\ & VCC))
-- \counter4[0]~5\ = CARRY((counter4(0) & \increment~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(0),
	datab => \increment~q\,
	datad => VCC,
	combout => \counter4[0]~4_combout\,
	cout => \counter4[0]~5\);

-- Location: FF_X111_Y58_N7
\counter4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4[0]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(0));

-- Location: LCCOMB_X111_Y58_N8
\counter4[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4[1]~6_combout\ = (counter4(1) & (!\counter4[0]~5\)) # (!counter4(1) & ((\counter4[0]~5\) # (GND)))
-- \counter4[1]~7\ = CARRY((!\counter4[0]~5\) # (!counter4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter4(1),
	datad => VCC,
	cin => \counter4[0]~5\,
	combout => \counter4[1]~6_combout\,
	cout => \counter4[1]~7\);

-- Location: FF_X111_Y58_N9
\counter4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4[1]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(1));

-- Location: LCCOMB_X111_Y58_N10
\counter4[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4[2]~8_combout\ = (counter4(2) & (\counter4[1]~7\ $ (GND))) # (!counter4(2) & (!\counter4[1]~7\ & VCC))
-- \counter4[2]~9\ = CARRY((counter4(2) & !\counter4[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datad => VCC,
	cin => \counter4[1]~7\,
	combout => \counter4[2]~8_combout\,
	cout => \counter4[2]~9\);

-- Location: FF_X111_Y58_N11
\counter4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4[2]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(2));

-- Location: LCCOMB_X111_Y58_N12
\counter4[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter4[3]~10_combout\ = \counter4[2]~9\ $ (counter4(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter4(3),
	cin => \counter4[2]~9\,
	combout => \counter4[3]~10_combout\);

-- Location: FF_X111_Y58_N13
\counter4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter4[3]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter4(3));

-- Location: LCCOMB_X111_Y58_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (counter4(0) & ((counter4(3)) # (counter4(2) $ (counter4(1))))) # (!counter4(0) & ((counter4(1)) # (counter4(2) $ (counter4(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux6~0_combout\);

-- Location: FF_X111_Y58_N25
\ssreg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[0]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N2
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (counter4(2) & ((counter4(3) $ (!counter4(1))) # (!counter4(0)))) # (!counter4(2) & ((counter4(3)) # ((!counter4(1) & !counter4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux5~0_combout\);

-- Location: FF_X111_Y58_N3
\ssreg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[1]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (counter4(1) & (((counter4(3)) # (!counter4(0))))) # (!counter4(1) & ((counter4(2) & (counter4(3))) # (!counter4(2) & ((!counter4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux4~0_combout\);

-- Location: FF_X111_Y58_N17
\ssreg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[2]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (counter4(1) & ((counter4(2) & ((!counter4(0)))) # (!counter4(2) & ((counter4(0)) # (!counter4(3)))))) # (!counter4(1) & ((counter4(3)) # (counter4(2) $ (!counter4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux3~0_combout\);

-- Location: FF_X111_Y58_N27
\ssreg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[3]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (counter4(2) & (((!counter4(1) & counter4(0))) # (!counter4(3)))) # (!counter4(2) & ((counter4(3)) # ((counter4(0)) # (!counter4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X111_Y58_N21
\ssreg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[4]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (counter4(3) & ((counter4(0) & ((!counter4(1)))) # (!counter4(0) & (!counter4(2))))) # (!counter4(3) & ((counter4(1) $ (!counter4(0))) # (!counter4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux1~0_combout\);

-- Location: FF_X111_Y58_N15
\ssreg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[5]~reg0_q\);

-- Location: LCCOMB_X111_Y58_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (counter4(2) & ((counter4(1)) # (counter4(3) $ (counter4(0))))) # (!counter4(2) & ((counter4(3) $ (counter4(1))) # (!counter4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter4(2),
	datab => counter4(3),
	datac => counter4(1),
	datad => counter4(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X111_Y58_N5
\ssreg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssreg[6]~reg0_q\);

ww_ssreg(0) <= \ssreg[0]~output_o\;

ww_ssreg(1) <= \ssreg[1]~output_o\;

ww_ssreg(2) <= \ssreg[2]~output_o\;

ww_ssreg(3) <= \ssreg[3]~output_o\;

ww_ssreg(4) <= \ssreg[4]~output_o\;

ww_ssreg(5) <= \ssreg[5]~output_o\;

ww_ssreg(6) <= \ssreg[6]~output_o\;
END structure;



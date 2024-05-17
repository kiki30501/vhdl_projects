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

-- DATE "07/17/2023 20:56:03"

-- 
-- Device: Altera EP4CE115F29I7 Package FBGA780
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

ENTITY 	mouse_control IS
    PORT (
	clk_50M : IN std_logic;
	a_rst : IN std_logic;
	m_data : BUFFER std_logic;
	m_clock : BUFFER std_logic;
	x_mov : BUFFER std_logic_vector(8 DOWNTO 0);
	y_mov : BUFFER std_logic_vector(8 DOWNTO 0);
	msg_valid : BUFFER std_logic
	);
END mouse_control;

-- Design Ports Information
-- x_mov[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_mov[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_mov[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msg_valid	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_data	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clock	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mouse_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_a_rst : std_logic;
SIGNAL ww_m_data : std_logic;
SIGNAL ww_m_clock : std_logic;
SIGNAL ww_x_mov : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_y_mov : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_msg_valid : std_logic;
SIGNAL \a_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_data~output_o\ : std_logic;
SIGNAL \m_clock~output_o\ : std_logic;
SIGNAL \x_mov[0]~output_o\ : std_logic;
SIGNAL \x_mov[1]~output_o\ : std_logic;
SIGNAL \x_mov[2]~output_o\ : std_logic;
SIGNAL \x_mov[3]~output_o\ : std_logic;
SIGNAL \x_mov[4]~output_o\ : std_logic;
SIGNAL \x_mov[5]~output_o\ : std_logic;
SIGNAL \x_mov[6]~output_o\ : std_logic;
SIGNAL \x_mov[7]~output_o\ : std_logic;
SIGNAL \x_mov[8]~output_o\ : std_logic;
SIGNAL \y_mov[0]~output_o\ : std_logic;
SIGNAL \y_mov[1]~output_o\ : std_logic;
SIGNAL \y_mov[2]~output_o\ : std_logic;
SIGNAL \y_mov[3]~output_o\ : std_logic;
SIGNAL \y_mov[4]~output_o\ : std_logic;
SIGNAL \y_mov[5]~output_o\ : std_logic;
SIGNAL \y_mov[6]~output_o\ : std_logic;
SIGNAL \y_mov[7]~output_o\ : std_logic;
SIGNAL \y_mov[8]~output_o\ : std_logic;
SIGNAL \msg_valid~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[0]~45_combout\ : std_logic;
SIGNAL \a_rst~input_o\ : std_logic;
SIGNAL \a_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Control_Unit|pres_s.init~q\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[12]~38\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[13]~39_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[13]~40\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[14]~41_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[14]~42\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[15]~43_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|init_done~0_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|init_done~q\ : std_logic;
SIGNAL \Control_Unit|m_init~1_combout\ : std_logic;
SIGNAL \Control_Unit|m_init~2_combout\ : std_logic;
SIGNAL \Control_Unit|m_init~q\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[1]~15_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[1]~16\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[2]~17_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[2]~18\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[3]~19_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[3]~20\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[4]~21_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[4]~22\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[5]~23_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[5]~24\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[6]~25_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[6]~26\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[7]~27_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[7]~28\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[8]~29_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[8]~30\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[9]~31_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[9]~32\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[10]~33_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[10]~34\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[11]~35_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[11]~36\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter[12]~37_combout\ : std_logic;
SIGNAL \Mouse_Init_Unit|Mux0~0_combout\ : std_logic;
SIGNAL \Reciever|wd_run~0_combout\ : std_logic;
SIGNAL \Reciever|wd_run~1_combout\ : std_logic;
SIGNAL \Reciever|wd_run~2_combout\ : std_logic;
SIGNAL \m_clock~input_o\ : std_logic;
SIGNAL \Reciever|sync1~q\ : std_logic;
SIGNAL \Reciever|sync2~q\ : std_logic;
SIGNAL \Reciever|sync3~q\ : std_logic;
SIGNAL \Reciever|shift_en~combout\ : std_logic;
SIGNAL \Reciever|kick_wd~q\ : std_logic;
SIGNAL \Reciever|wd_run~3_combout\ : std_logic;
SIGNAL \Reciever|wd_run~4_combout\ : std_logic;
SIGNAL \Reciever|wd_run~combout\ : std_logic;
SIGNAL \Reciever|watchdog[0]~16_combout\ : std_logic;
SIGNAL \Reciever|srst~0_combout\ : std_logic;
SIGNAL \Reciever|data_reg[5]~18_combout\ : std_logic;
SIGNAL \Reciever|watchdog[0]~17\ : std_logic;
SIGNAL \Reciever|watchdog[1]~18_combout\ : std_logic;
SIGNAL \Reciever|watchdog[1]~19\ : std_logic;
SIGNAL \Reciever|watchdog[2]~20_combout\ : std_logic;
SIGNAL \Reciever|watchdog[2]~21\ : std_logic;
SIGNAL \Reciever|watchdog[3]~22_combout\ : std_logic;
SIGNAL \Reciever|watchdog[3]~23\ : std_logic;
SIGNAL \Reciever|watchdog[4]~24_combout\ : std_logic;
SIGNAL \Reciever|watchdog[4]~25\ : std_logic;
SIGNAL \Reciever|watchdog[5]~26_combout\ : std_logic;
SIGNAL \Reciever|watchdog[5]~27\ : std_logic;
SIGNAL \Reciever|watchdog[6]~28_combout\ : std_logic;
SIGNAL \Reciever|watchdog[6]~29\ : std_logic;
SIGNAL \Reciever|watchdog[7]~30_combout\ : std_logic;
SIGNAL \Reciever|watchdog[7]~31\ : std_logic;
SIGNAL \Reciever|watchdog[8]~32_combout\ : std_logic;
SIGNAL \Reciever|watchdog[8]~33\ : std_logic;
SIGNAL \Reciever|watchdog[9]~34_combout\ : std_logic;
SIGNAL \Reciever|watchdog[9]~35\ : std_logic;
SIGNAL \Reciever|watchdog[10]~36_combout\ : std_logic;
SIGNAL \Reciever|watchdog[10]~37\ : std_logic;
SIGNAL \Reciever|watchdog[11]~38_combout\ : std_logic;
SIGNAL \Reciever|watchdog[11]~39\ : std_logic;
SIGNAL \Reciever|watchdog[12]~40_combout\ : std_logic;
SIGNAL \Reciever|watchdog[12]~41\ : std_logic;
SIGNAL \Reciever|watchdog[13]~42_combout\ : std_logic;
SIGNAL \Reciever|watchdog[13]~43\ : std_logic;
SIGNAL \Reciever|watchdog[14]~44_combout\ : std_logic;
SIGNAL \Reciever|watchdog[14]~45\ : std_logic;
SIGNAL \Reciever|watchdog[15]~46_combout\ : std_logic;
SIGNAL \Reciever|data_reg~8_combout\ : std_logic;
SIGNAL \Reciever|data_reg[0]~17_combout\ : std_logic;
SIGNAL \m_data~input_o\ : std_logic;
SIGNAL \Reciever|data_reg~7_combout\ : std_logic;
SIGNAL \Reciever|data_reg~16_combout\ : std_logic;
SIGNAL \Reciever|data_reg~15_combout\ : std_logic;
SIGNAL \Reciever|data_reg~14_combout\ : std_logic;
SIGNAL \Reciever|data_reg~13_combout\ : std_logic;
SIGNAL \Reciever|data_reg~12_combout\ : std_logic;
SIGNAL \Reciever|data_reg~11_combout\ : std_logic;
SIGNAL \Reciever|data_reg~10_combout\ : std_logic;
SIGNAL \Reciever|data_reg~9_combout\ : std_logic;
SIGNAL \Reciever|data_reg~6_combout\ : std_logic;
SIGNAL \Reciever|pcheck~0_combout\ : std_logic;
SIGNAL \Reciever|pcheck~q\ : std_logic;
SIGNAL \Reciever|en_out~0_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[0]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[0]~feeder_combout\ : std_logic;
SIGNAL \Control_Unit|Selector2~0_combout\ : std_logic;
SIGNAL \Control_Unit|pres_s.w3~q\ : std_logic;
SIGNAL \Control_Unit|Selector2~1_combout\ : std_logic;
SIGNAL \Control_Unit|pres_s.w1~q\ : std_logic;
SIGNAL \Control_Unit|pres_s.w2~feeder_combout\ : std_logic;
SIGNAL \Control_Unit|pres_s.w2~q\ : std_logic;
SIGNAL \Control_Unit|Selector0~0_combout\ : std_logic;
SIGNAL \Control_Unit|Selector1~0_combout\ : std_logic;
SIGNAL \Output_Buffer|Mux22~0_combout\ : std_logic;
SIGNAL \Reciever|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[1]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[1]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[2]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[3]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[3]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[4]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[4]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[5]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[5]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[6]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[6]~feeder_combout\ : std_logic;
SIGNAL \Reciever|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|w_in[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|Mux4~0_combout\ : std_logic;
SIGNAL \Output_Buffer|word_3[0]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|Mux22~1_combout\ : std_logic;
SIGNAL \Output_Buffer|word_3[1]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_3[2]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_3[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_1[5]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_1[6]~feeder_combout\ : std_logic;
SIGNAL \Reciever|w_valid~q\ : std_logic;
SIGNAL \Output_Buffer|w_in[8]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_2[8]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|word_1[7]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|Mux23~0_combout\ : std_logic;
SIGNAL \Output_Buffer|word_3[8]~feeder_combout\ : std_logic;
SIGNAL \Output_Buffer|Mux23~1_combout\ : std_logic;
SIGNAL \Output_Buffer|valid_out~q\ : std_logic;
SIGNAL \Mouse_Init_Unit|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Output_Buffer|word_2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reciever|watchdog\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Reciever|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Control_Unit|w_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Output_Buffer|word_1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Output_Buffer|word_3\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Reciever|data_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Output_Buffer|w_in\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_a_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mouse_Init_Unit|ALT_INV_counter\ : std_logic_vector(12 DOWNTO 12);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50M <= clk_50M;
ww_a_rst <= a_rst;
m_data <= ww_m_data;
m_clock <= ww_m_clock;
x_mov <= ww_x_mov;
y_mov <= ww_y_mov;
msg_valid <= ww_msg_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\a_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a_rst~input_o\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_a_rst~inputclkctrl_outclk\ <= NOT \a_rst~inputclkctrl_outclk\;
\Mouse_Init_Unit|ALT_INV_counter\(12) <= NOT \Mouse_Init_Unit|counter\(12);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y73_N23
\m_data~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mouse_Init_Unit|Mux0~0_combout\,
	oe => \Control_Unit|m_init~q\,
	devoe => ww_devoe,
	o => \m_data~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\m_clock~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mouse_Init_Unit|ALT_INV_counter\(12),
	oe => \Control_Unit|m_init~q\,
	devoe => ww_devoe,
	o => \m_clock~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\x_mov[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(0),
	devoe => ww_devoe,
	o => \x_mov[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\x_mov[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(1),
	devoe => ww_devoe,
	o => \x_mov[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\x_mov[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(2),
	devoe => ww_devoe,
	o => \x_mov[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\x_mov[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(3),
	devoe => ww_devoe,
	o => \x_mov[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\x_mov[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(4),
	devoe => ww_devoe,
	o => \x_mov[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\x_mov[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(5),
	devoe => ww_devoe,
	o => \x_mov[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\x_mov[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(6),
	devoe => ww_devoe,
	o => \x_mov[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\x_mov[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_2\(7),
	devoe => ww_devoe,
	o => \x_mov[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\x_mov[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_1\(4),
	devoe => ww_devoe,
	o => \x_mov[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\y_mov[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(0),
	devoe => ww_devoe,
	o => \y_mov[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\y_mov[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(1),
	devoe => ww_devoe,
	o => \y_mov[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\y_mov[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(2),
	devoe => ww_devoe,
	o => \y_mov[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\y_mov[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(3),
	devoe => ww_devoe,
	o => \y_mov[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\y_mov[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(4),
	devoe => ww_devoe,
	o => \y_mov[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\y_mov[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(5),
	devoe => ww_devoe,
	o => \y_mov[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\y_mov[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(6),
	devoe => ww_devoe,
	o => \y_mov[6]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\y_mov[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_3\(7),
	devoe => ww_devoe,
	o => \y_mov[7]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\y_mov[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|word_1\(5),
	devoe => ww_devoe,
	o => \y_mov[8]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\msg_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Output_Buffer|valid_out~q\,
	devoe => ww_devoe,
	o => \msg_valid~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G2
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y71_N2
\Mouse_Init_Unit|counter[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[0]~45_combout\ = !\Mouse_Init_Unit|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mouse_Init_Unit|counter\(0),
	combout => \Mouse_Init_Unit|counter[0]~45_combout\);

-- Location: IOIBUF_X0_Y36_N15
\a_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_rst,
	o => \a_rst~input_o\);

-- Location: CLKCTRL_G4
\a_rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \a_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \a_rst~inputclkctrl_outclk\);

-- Location: FF_X30_Y71_N15
\Control_Unit|pres_s.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|m_init~1_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|pres_s.init~q\);

-- Location: LCCOMB_X28_Y71_N24
\Mouse_Init_Unit|counter[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[12]~37_combout\ = (\Mouse_Init_Unit|counter\(12) & ((GND) # (!\Mouse_Init_Unit|counter[11]~36\))) # (!\Mouse_Init_Unit|counter\(12) & (\Mouse_Init_Unit|counter[11]~36\ $ (GND)))
-- \Mouse_Init_Unit|counter[12]~38\ = CARRY((\Mouse_Init_Unit|counter\(12)) # (!\Mouse_Init_Unit|counter[11]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(12),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[11]~36\,
	combout => \Mouse_Init_Unit|counter[12]~37_combout\,
	cout => \Mouse_Init_Unit|counter[12]~38\);

-- Location: LCCOMB_X28_Y71_N26
\Mouse_Init_Unit|counter[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[13]~39_combout\ = (\Mouse_Init_Unit|counter\(13) & (\Mouse_Init_Unit|counter[12]~38\ & VCC)) # (!\Mouse_Init_Unit|counter\(13) & (!\Mouse_Init_Unit|counter[12]~38\))
-- \Mouse_Init_Unit|counter[13]~40\ = CARRY((!\Mouse_Init_Unit|counter\(13) & !\Mouse_Init_Unit|counter[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(13),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[12]~38\,
	combout => \Mouse_Init_Unit|counter[13]~39_combout\,
	cout => \Mouse_Init_Unit|counter[13]~40\);

-- Location: FF_X28_Y71_N27
\Mouse_Init_Unit|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[13]~39_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(13));

-- Location: LCCOMB_X28_Y71_N28
\Mouse_Init_Unit|counter[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[14]~41_combout\ = (\Mouse_Init_Unit|counter\(14) & ((GND) # (!\Mouse_Init_Unit|counter[13]~40\))) # (!\Mouse_Init_Unit|counter\(14) & (\Mouse_Init_Unit|counter[13]~40\ $ (GND)))
-- \Mouse_Init_Unit|counter[14]~42\ = CARRY((\Mouse_Init_Unit|counter\(14)) # (!\Mouse_Init_Unit|counter[13]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(14),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[13]~40\,
	combout => \Mouse_Init_Unit|counter[14]~41_combout\,
	cout => \Mouse_Init_Unit|counter[14]~42\);

-- Location: FF_X28_Y71_N29
\Mouse_Init_Unit|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[14]~41_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(14));

-- Location: LCCOMB_X28_Y71_N30
\Mouse_Init_Unit|counter[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[15]~43_combout\ = \Mouse_Init_Unit|counter\(15) $ (!\Mouse_Init_Unit|counter[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(15),
	cin => \Mouse_Init_Unit|counter[14]~42\,
	combout => \Mouse_Init_Unit|counter[15]~43_combout\);

-- Location: FF_X28_Y71_N31
\Mouse_Init_Unit|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[15]~43_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(15));

-- Location: LCCOMB_X28_Y71_N0
\Mouse_Init_Unit|init_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|init_done~0_combout\ = (\Mouse_Init_Unit|counter\(13) & (!\Mouse_Init_Unit|counter\(12) & (!\Mouse_Init_Unit|counter\(15) & !\Mouse_Init_Unit|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(13),
	datab => \Mouse_Init_Unit|counter\(12),
	datac => \Mouse_Init_Unit|counter\(15),
	datad => \Mouse_Init_Unit|counter\(14),
	combout => \Mouse_Init_Unit|init_done~0_combout\);

-- Location: FF_X28_Y71_N1
\Mouse_Init_Unit|init_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|init_done~0_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|init_done~q\);

-- Location: LCCOMB_X30_Y71_N14
\Control_Unit|m_init~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|m_init~1_combout\ = (\Control_Unit|pres_s.init~q\) # (\Mouse_Init_Unit|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Mouse_Init_Unit|init_done~q\,
	combout => \Control_Unit|m_init~1_combout\);

-- Location: LCCOMB_X29_Y71_N28
\Control_Unit|m_init~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|m_init~2_combout\ = !\Control_Unit|m_init~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_Unit|m_init~1_combout\,
	combout => \Control_Unit|m_init~2_combout\);

-- Location: FF_X29_Y71_N29
\Control_Unit|m_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|m_init~2_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|m_init~q\);

-- Location: FF_X29_Y71_N3
\Mouse_Init_Unit|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[0]~45_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(0));

-- Location: LCCOMB_X28_Y71_N2
\Mouse_Init_Unit|counter[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[1]~15_combout\ = (\Mouse_Init_Unit|counter\(0) & (\Mouse_Init_Unit|counter\(1) & VCC)) # (!\Mouse_Init_Unit|counter\(0) & (!\Mouse_Init_Unit|counter\(1)))
-- \Mouse_Init_Unit|counter[1]~16\ = CARRY((!\Mouse_Init_Unit|counter\(0) & !\Mouse_Init_Unit|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(0),
	datab => \Mouse_Init_Unit|counter\(1),
	datad => VCC,
	combout => \Mouse_Init_Unit|counter[1]~15_combout\,
	cout => \Mouse_Init_Unit|counter[1]~16\);

-- Location: FF_X28_Y71_N3
\Mouse_Init_Unit|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[1]~15_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(1));

-- Location: LCCOMB_X28_Y71_N4
\Mouse_Init_Unit|counter[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[2]~17_combout\ = (\Mouse_Init_Unit|counter\(2) & ((GND) # (!\Mouse_Init_Unit|counter[1]~16\))) # (!\Mouse_Init_Unit|counter\(2) & (\Mouse_Init_Unit|counter[1]~16\ $ (GND)))
-- \Mouse_Init_Unit|counter[2]~18\ = CARRY((\Mouse_Init_Unit|counter\(2)) # (!\Mouse_Init_Unit|counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(2),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[1]~16\,
	combout => \Mouse_Init_Unit|counter[2]~17_combout\,
	cout => \Mouse_Init_Unit|counter[2]~18\);

-- Location: FF_X28_Y71_N5
\Mouse_Init_Unit|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[2]~17_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(2));

-- Location: LCCOMB_X28_Y71_N6
\Mouse_Init_Unit|counter[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[3]~19_combout\ = (\Mouse_Init_Unit|counter\(3) & (\Mouse_Init_Unit|counter[2]~18\ & VCC)) # (!\Mouse_Init_Unit|counter\(3) & (!\Mouse_Init_Unit|counter[2]~18\))
-- \Mouse_Init_Unit|counter[3]~20\ = CARRY((!\Mouse_Init_Unit|counter\(3) & !\Mouse_Init_Unit|counter[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(3),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[2]~18\,
	combout => \Mouse_Init_Unit|counter[3]~19_combout\,
	cout => \Mouse_Init_Unit|counter[3]~20\);

-- Location: FF_X28_Y71_N7
\Mouse_Init_Unit|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[3]~19_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(3));

-- Location: LCCOMB_X28_Y71_N8
\Mouse_Init_Unit|counter[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[4]~21_combout\ = (\Mouse_Init_Unit|counter\(4) & ((GND) # (!\Mouse_Init_Unit|counter[3]~20\))) # (!\Mouse_Init_Unit|counter\(4) & (\Mouse_Init_Unit|counter[3]~20\ $ (GND)))
-- \Mouse_Init_Unit|counter[4]~22\ = CARRY((\Mouse_Init_Unit|counter\(4)) # (!\Mouse_Init_Unit|counter[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(4),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[3]~20\,
	combout => \Mouse_Init_Unit|counter[4]~21_combout\,
	cout => \Mouse_Init_Unit|counter[4]~22\);

-- Location: FF_X28_Y71_N9
\Mouse_Init_Unit|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[4]~21_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(4));

-- Location: LCCOMB_X28_Y71_N10
\Mouse_Init_Unit|counter[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[5]~23_combout\ = (\Mouse_Init_Unit|counter\(5) & (\Mouse_Init_Unit|counter[4]~22\ & VCC)) # (!\Mouse_Init_Unit|counter\(5) & (!\Mouse_Init_Unit|counter[4]~22\))
-- \Mouse_Init_Unit|counter[5]~24\ = CARRY((!\Mouse_Init_Unit|counter\(5) & !\Mouse_Init_Unit|counter[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(5),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[4]~22\,
	combout => \Mouse_Init_Unit|counter[5]~23_combout\,
	cout => \Mouse_Init_Unit|counter[5]~24\);

-- Location: FF_X28_Y71_N11
\Mouse_Init_Unit|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[5]~23_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(5));

-- Location: LCCOMB_X28_Y71_N12
\Mouse_Init_Unit|counter[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[6]~25_combout\ = (\Mouse_Init_Unit|counter\(6) & ((GND) # (!\Mouse_Init_Unit|counter[5]~24\))) # (!\Mouse_Init_Unit|counter\(6) & (\Mouse_Init_Unit|counter[5]~24\ $ (GND)))
-- \Mouse_Init_Unit|counter[6]~26\ = CARRY((\Mouse_Init_Unit|counter\(6)) # (!\Mouse_Init_Unit|counter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(6),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[5]~24\,
	combout => \Mouse_Init_Unit|counter[6]~25_combout\,
	cout => \Mouse_Init_Unit|counter[6]~26\);

-- Location: FF_X28_Y71_N13
\Mouse_Init_Unit|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[6]~25_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(6));

-- Location: LCCOMB_X28_Y71_N14
\Mouse_Init_Unit|counter[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[7]~27_combout\ = (\Mouse_Init_Unit|counter\(7) & (\Mouse_Init_Unit|counter[6]~26\ & VCC)) # (!\Mouse_Init_Unit|counter\(7) & (!\Mouse_Init_Unit|counter[6]~26\))
-- \Mouse_Init_Unit|counter[7]~28\ = CARRY((!\Mouse_Init_Unit|counter\(7) & !\Mouse_Init_Unit|counter[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(7),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[6]~26\,
	combout => \Mouse_Init_Unit|counter[7]~27_combout\,
	cout => \Mouse_Init_Unit|counter[7]~28\);

-- Location: FF_X28_Y71_N15
\Mouse_Init_Unit|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[7]~27_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(7));

-- Location: LCCOMB_X28_Y71_N16
\Mouse_Init_Unit|counter[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[8]~29_combout\ = (\Mouse_Init_Unit|counter\(8) & ((GND) # (!\Mouse_Init_Unit|counter[7]~28\))) # (!\Mouse_Init_Unit|counter\(8) & (\Mouse_Init_Unit|counter[7]~28\ $ (GND)))
-- \Mouse_Init_Unit|counter[8]~30\ = CARRY((\Mouse_Init_Unit|counter\(8)) # (!\Mouse_Init_Unit|counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(8),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[7]~28\,
	combout => \Mouse_Init_Unit|counter[8]~29_combout\,
	cout => \Mouse_Init_Unit|counter[8]~30\);

-- Location: FF_X28_Y71_N17
\Mouse_Init_Unit|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[8]~29_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(8));

-- Location: LCCOMB_X28_Y71_N18
\Mouse_Init_Unit|counter[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[9]~31_combout\ = (\Mouse_Init_Unit|counter\(9) & (\Mouse_Init_Unit|counter[8]~30\ & VCC)) # (!\Mouse_Init_Unit|counter\(9) & (!\Mouse_Init_Unit|counter[8]~30\))
-- \Mouse_Init_Unit|counter[9]~32\ = CARRY((!\Mouse_Init_Unit|counter\(9) & !\Mouse_Init_Unit|counter[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(9),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[8]~30\,
	combout => \Mouse_Init_Unit|counter[9]~31_combout\,
	cout => \Mouse_Init_Unit|counter[9]~32\);

-- Location: FF_X28_Y71_N19
\Mouse_Init_Unit|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[9]~31_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(9));

-- Location: LCCOMB_X28_Y71_N20
\Mouse_Init_Unit|counter[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[10]~33_combout\ = (\Mouse_Init_Unit|counter\(10) & ((GND) # (!\Mouse_Init_Unit|counter[9]~32\))) # (!\Mouse_Init_Unit|counter\(10) & (\Mouse_Init_Unit|counter[9]~32\ $ (GND)))
-- \Mouse_Init_Unit|counter[10]~34\ = CARRY((\Mouse_Init_Unit|counter\(10)) # (!\Mouse_Init_Unit|counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mouse_Init_Unit|counter\(10),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[9]~32\,
	combout => \Mouse_Init_Unit|counter[10]~33_combout\,
	cout => \Mouse_Init_Unit|counter[10]~34\);

-- Location: FF_X28_Y71_N21
\Mouse_Init_Unit|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[10]~33_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(10));

-- Location: LCCOMB_X28_Y71_N22
\Mouse_Init_Unit|counter[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|counter[11]~35_combout\ = (\Mouse_Init_Unit|counter\(11) & (\Mouse_Init_Unit|counter[10]~34\ & VCC)) # (!\Mouse_Init_Unit|counter\(11) & (!\Mouse_Init_Unit|counter[10]~34\))
-- \Mouse_Init_Unit|counter[11]~36\ = CARRY((!\Mouse_Init_Unit|counter\(11) & !\Mouse_Init_Unit|counter[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(11),
	datad => VCC,
	cin => \Mouse_Init_Unit|counter[10]~34\,
	combout => \Mouse_Init_Unit|counter[11]~35_combout\,
	cout => \Mouse_Init_Unit|counter[11]~36\);

-- Location: FF_X28_Y71_N23
\Mouse_Init_Unit|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[11]~35_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(11));

-- Location: FF_X28_Y71_N25
\Mouse_Init_Unit|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mouse_Init_Unit|counter[12]~37_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Control_Unit|m_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mouse_Init_Unit|counter\(12));

-- Location: LCCOMB_X27_Y71_N4
\Mouse_Init_Unit|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mouse_Init_Unit|Mux0~0_combout\ = ((\Mouse_Init_Unit|counter\(12) & (!\Mouse_Init_Unit|counter\(15) & \Mouse_Init_Unit|counter\(14))) # (!\Mouse_Init_Unit|counter\(12) & (\Mouse_Init_Unit|counter\(15) & !\Mouse_Init_Unit|counter\(14)))) # 
-- (!\Mouse_Init_Unit|counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mouse_Init_Unit|counter\(12),
	datab => \Mouse_Init_Unit|counter\(13),
	datac => \Mouse_Init_Unit|counter\(15),
	datad => \Mouse_Init_Unit|counter\(14),
	combout => \Mouse_Init_Unit|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y71_N10
\Reciever|wd_run~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~0_combout\ = (\Reciever|watchdog\(2)) # ((\Reciever|watchdog\(4)) # ((\Reciever|watchdog\(12)) # (\Reciever|watchdog\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(2),
	datab => \Reciever|watchdog\(4),
	datac => \Reciever|watchdog\(12),
	datad => \Reciever|watchdog\(1),
	combout => \Reciever|wd_run~0_combout\);

-- Location: LCCOMB_X31_Y71_N2
\Reciever|wd_run~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~1_combout\ = (\Reciever|watchdog\(10)) # ((\Reciever|watchdog\(9)) # ((\Reciever|watchdog\(3)) # (\Reciever|watchdog\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(10),
	datab => \Reciever|watchdog\(9),
	datac => \Reciever|watchdog\(3),
	datad => \Reciever|watchdog\(11),
	combout => \Reciever|wd_run~1_combout\);

-- Location: LCCOMB_X31_Y71_N30
\Reciever|wd_run~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~2_combout\ = (\Reciever|watchdog\(7)) # ((\Reciever|watchdog\(6)) # ((\Reciever|watchdog\(5)) # (\Reciever|watchdog\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(7),
	datab => \Reciever|watchdog\(6),
	datac => \Reciever|watchdog\(5),
	datad => \Reciever|watchdog\(8),
	combout => \Reciever|wd_run~2_combout\);

-- Location: IOIBUF_X27_Y73_N15
\m_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clock,
	o => \m_clock~input_o\);

-- Location: FF_X31_Y71_N27
\Reciever|sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \m_clock~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|sync1~q\);

-- Location: FF_X31_Y71_N9
\Reciever|sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Reciever|sync1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|sync2~q\);

-- Location: FF_X31_Y71_N17
\Reciever|sync3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Reciever|sync2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|sync3~q\);

-- Location: LCCOMB_X31_Y71_N14
\Reciever|shift_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|shift_en~combout\ = (!\Reciever|sync2~q\ & \Reciever|sync3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|sync2~q\,
	datad => \Reciever|sync3~q\,
	combout => \Reciever|shift_en~combout\);

-- Location: FF_X31_Y71_N29
\Reciever|kick_wd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Reciever|shift_en~combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|kick_wd~q\);

-- Location: LCCOMB_X31_Y71_N28
\Reciever|wd_run~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~3_combout\ = (\Reciever|watchdog\(15)) # ((\Reciever|watchdog\(14)) # ((\Reciever|kick_wd~q\) # (\Reciever|watchdog\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(15),
	datab => \Reciever|watchdog\(14),
	datac => \Reciever|kick_wd~q\,
	datad => \Reciever|watchdog\(13),
	combout => \Reciever|wd_run~3_combout\);

-- Location: LCCOMB_X31_Y71_N16
\Reciever|wd_run~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~4_combout\ = (\Reciever|watchdog\(0)) # (\Reciever|wd_run~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(0),
	datad => \Reciever|wd_run~3_combout\,
	combout => \Reciever|wd_run~4_combout\);

-- Location: LCCOMB_X31_Y71_N6
\Reciever|wd_run\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|wd_run~combout\ = (\Reciever|wd_run~0_combout\) # ((\Reciever|wd_run~1_combout\) # ((\Reciever|wd_run~2_combout\) # (\Reciever|wd_run~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|wd_run~0_combout\,
	datab => \Reciever|wd_run~1_combout\,
	datac => \Reciever|wd_run~2_combout\,
	datad => \Reciever|wd_run~4_combout\,
	combout => \Reciever|wd_run~combout\);

-- Location: LCCOMB_X32_Y71_N0
\Reciever|watchdog[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[0]~16_combout\ = (\Reciever|watchdog\(0) & (\Reciever|wd_run~combout\ $ (VCC))) # (!\Reciever|watchdog\(0) & (\Reciever|wd_run~combout\ & VCC))
-- \Reciever|watchdog[0]~17\ = CARRY((\Reciever|watchdog\(0) & \Reciever|wd_run~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(0),
	datab => \Reciever|wd_run~combout\,
	datad => VCC,
	combout => \Reciever|watchdog[0]~16_combout\,
	cout => \Reciever|watchdog[0]~17\);

-- Location: LCCOMB_X31_Y71_N8
\Reciever|srst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|srst~0_combout\ = ((\Reciever|watchdog\(15)) # (\Reciever|data_reg\(0))) # (!\Control_Unit|pres_s.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|pres_s.init~q\,
	datab => \Reciever|watchdog\(15),
	datad => \Reciever|data_reg\(0),
	combout => \Reciever|srst~0_combout\);

-- Location: LCCOMB_X31_Y71_N26
\Reciever|data_reg[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg[5]~18_combout\ = (\Reciever|srst~0_combout\) # ((!\Reciever|sync2~q\ & \Reciever|sync3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|sync2~q\,
	datab => \Reciever|sync3~q\,
	datad => \Reciever|srst~0_combout\,
	combout => \Reciever|data_reg[5]~18_combout\);

-- Location: FF_X32_Y71_N1
\Reciever|watchdog[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[0]~16_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(0));

-- Location: LCCOMB_X32_Y71_N2
\Reciever|watchdog[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[1]~18_combout\ = (\Reciever|watchdog\(1) & (!\Reciever|watchdog[0]~17\)) # (!\Reciever|watchdog\(1) & ((\Reciever|watchdog[0]~17\) # (GND)))
-- \Reciever|watchdog[1]~19\ = CARRY((!\Reciever|watchdog[0]~17\) # (!\Reciever|watchdog\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(1),
	datad => VCC,
	cin => \Reciever|watchdog[0]~17\,
	combout => \Reciever|watchdog[1]~18_combout\,
	cout => \Reciever|watchdog[1]~19\);

-- Location: FF_X32_Y71_N3
\Reciever|watchdog[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[1]~18_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(1));

-- Location: LCCOMB_X32_Y71_N4
\Reciever|watchdog[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[2]~20_combout\ = (\Reciever|watchdog\(2) & (\Reciever|watchdog[1]~19\ $ (GND))) # (!\Reciever|watchdog\(2) & (!\Reciever|watchdog[1]~19\ & VCC))
-- \Reciever|watchdog[2]~21\ = CARRY((\Reciever|watchdog\(2) & !\Reciever|watchdog[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(2),
	datad => VCC,
	cin => \Reciever|watchdog[1]~19\,
	combout => \Reciever|watchdog[2]~20_combout\,
	cout => \Reciever|watchdog[2]~21\);

-- Location: FF_X32_Y71_N5
\Reciever|watchdog[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[2]~20_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(2));

-- Location: LCCOMB_X32_Y71_N6
\Reciever|watchdog[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[3]~22_combout\ = (\Reciever|watchdog\(3) & (!\Reciever|watchdog[2]~21\)) # (!\Reciever|watchdog\(3) & ((\Reciever|watchdog[2]~21\) # (GND)))
-- \Reciever|watchdog[3]~23\ = CARRY((!\Reciever|watchdog[2]~21\) # (!\Reciever|watchdog\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(3),
	datad => VCC,
	cin => \Reciever|watchdog[2]~21\,
	combout => \Reciever|watchdog[3]~22_combout\,
	cout => \Reciever|watchdog[3]~23\);

-- Location: FF_X32_Y71_N7
\Reciever|watchdog[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[3]~22_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(3));

-- Location: LCCOMB_X32_Y71_N8
\Reciever|watchdog[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[4]~24_combout\ = (\Reciever|watchdog\(4) & (\Reciever|watchdog[3]~23\ $ (GND))) # (!\Reciever|watchdog\(4) & (!\Reciever|watchdog[3]~23\ & VCC))
-- \Reciever|watchdog[4]~25\ = CARRY((\Reciever|watchdog\(4) & !\Reciever|watchdog[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(4),
	datad => VCC,
	cin => \Reciever|watchdog[3]~23\,
	combout => \Reciever|watchdog[4]~24_combout\,
	cout => \Reciever|watchdog[4]~25\);

-- Location: FF_X32_Y71_N9
\Reciever|watchdog[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[4]~24_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(4));

-- Location: LCCOMB_X32_Y71_N10
\Reciever|watchdog[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[5]~26_combout\ = (\Reciever|watchdog\(5) & (!\Reciever|watchdog[4]~25\)) # (!\Reciever|watchdog\(5) & ((\Reciever|watchdog[4]~25\) # (GND)))
-- \Reciever|watchdog[5]~27\ = CARRY((!\Reciever|watchdog[4]~25\) # (!\Reciever|watchdog\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(5),
	datad => VCC,
	cin => \Reciever|watchdog[4]~25\,
	combout => \Reciever|watchdog[5]~26_combout\,
	cout => \Reciever|watchdog[5]~27\);

-- Location: FF_X32_Y71_N11
\Reciever|watchdog[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[5]~26_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(5));

-- Location: LCCOMB_X32_Y71_N12
\Reciever|watchdog[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[6]~28_combout\ = (\Reciever|watchdog\(6) & (\Reciever|watchdog[5]~27\ $ (GND))) # (!\Reciever|watchdog\(6) & (!\Reciever|watchdog[5]~27\ & VCC))
-- \Reciever|watchdog[6]~29\ = CARRY((\Reciever|watchdog\(6) & !\Reciever|watchdog[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(6),
	datad => VCC,
	cin => \Reciever|watchdog[5]~27\,
	combout => \Reciever|watchdog[6]~28_combout\,
	cout => \Reciever|watchdog[6]~29\);

-- Location: FF_X32_Y71_N13
\Reciever|watchdog[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[6]~28_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(6));

-- Location: LCCOMB_X32_Y71_N14
\Reciever|watchdog[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[7]~30_combout\ = (\Reciever|watchdog\(7) & (!\Reciever|watchdog[6]~29\)) # (!\Reciever|watchdog\(7) & ((\Reciever|watchdog[6]~29\) # (GND)))
-- \Reciever|watchdog[7]~31\ = CARRY((!\Reciever|watchdog[6]~29\) # (!\Reciever|watchdog\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(7),
	datad => VCC,
	cin => \Reciever|watchdog[6]~29\,
	combout => \Reciever|watchdog[7]~30_combout\,
	cout => \Reciever|watchdog[7]~31\);

-- Location: FF_X32_Y71_N15
\Reciever|watchdog[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[7]~30_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(7));

-- Location: LCCOMB_X32_Y71_N16
\Reciever|watchdog[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[8]~32_combout\ = (\Reciever|watchdog\(8) & (\Reciever|watchdog[7]~31\ $ (GND))) # (!\Reciever|watchdog\(8) & (!\Reciever|watchdog[7]~31\ & VCC))
-- \Reciever|watchdog[8]~33\ = CARRY((\Reciever|watchdog\(8) & !\Reciever|watchdog[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(8),
	datad => VCC,
	cin => \Reciever|watchdog[7]~31\,
	combout => \Reciever|watchdog[8]~32_combout\,
	cout => \Reciever|watchdog[8]~33\);

-- Location: FF_X32_Y71_N17
\Reciever|watchdog[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[8]~32_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(8));

-- Location: LCCOMB_X32_Y71_N18
\Reciever|watchdog[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[9]~34_combout\ = (\Reciever|watchdog\(9) & (!\Reciever|watchdog[8]~33\)) # (!\Reciever|watchdog\(9) & ((\Reciever|watchdog[8]~33\) # (GND)))
-- \Reciever|watchdog[9]~35\ = CARRY((!\Reciever|watchdog[8]~33\) # (!\Reciever|watchdog\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(9),
	datad => VCC,
	cin => \Reciever|watchdog[8]~33\,
	combout => \Reciever|watchdog[9]~34_combout\,
	cout => \Reciever|watchdog[9]~35\);

-- Location: FF_X32_Y71_N19
\Reciever|watchdog[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[9]~34_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(9));

-- Location: LCCOMB_X32_Y71_N20
\Reciever|watchdog[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[10]~36_combout\ = (\Reciever|watchdog\(10) & (\Reciever|watchdog[9]~35\ $ (GND))) # (!\Reciever|watchdog\(10) & (!\Reciever|watchdog[9]~35\ & VCC))
-- \Reciever|watchdog[10]~37\ = CARRY((\Reciever|watchdog\(10) & !\Reciever|watchdog[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(10),
	datad => VCC,
	cin => \Reciever|watchdog[9]~35\,
	combout => \Reciever|watchdog[10]~36_combout\,
	cout => \Reciever|watchdog[10]~37\);

-- Location: FF_X32_Y71_N21
\Reciever|watchdog[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[10]~36_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(10));

-- Location: LCCOMB_X32_Y71_N22
\Reciever|watchdog[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[11]~38_combout\ = (\Reciever|watchdog\(11) & (!\Reciever|watchdog[10]~37\)) # (!\Reciever|watchdog\(11) & ((\Reciever|watchdog[10]~37\) # (GND)))
-- \Reciever|watchdog[11]~39\ = CARRY((!\Reciever|watchdog[10]~37\) # (!\Reciever|watchdog\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(11),
	datad => VCC,
	cin => \Reciever|watchdog[10]~37\,
	combout => \Reciever|watchdog[11]~38_combout\,
	cout => \Reciever|watchdog[11]~39\);

-- Location: FF_X32_Y71_N23
\Reciever|watchdog[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[11]~38_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(11));

-- Location: LCCOMB_X32_Y71_N24
\Reciever|watchdog[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[12]~40_combout\ = (\Reciever|watchdog\(12) & (\Reciever|watchdog[11]~39\ $ (GND))) # (!\Reciever|watchdog\(12) & (!\Reciever|watchdog[11]~39\ & VCC))
-- \Reciever|watchdog[12]~41\ = CARRY((\Reciever|watchdog\(12) & !\Reciever|watchdog[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(12),
	datad => VCC,
	cin => \Reciever|watchdog[11]~39\,
	combout => \Reciever|watchdog[12]~40_combout\,
	cout => \Reciever|watchdog[12]~41\);

-- Location: FF_X32_Y71_N25
\Reciever|watchdog[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[12]~40_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(12));

-- Location: LCCOMB_X32_Y71_N26
\Reciever|watchdog[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[13]~42_combout\ = (\Reciever|watchdog\(13) & (!\Reciever|watchdog[12]~41\)) # (!\Reciever|watchdog\(13) & ((\Reciever|watchdog[12]~41\) # (GND)))
-- \Reciever|watchdog[13]~43\ = CARRY((!\Reciever|watchdog[12]~41\) # (!\Reciever|watchdog\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(13),
	datad => VCC,
	cin => \Reciever|watchdog[12]~41\,
	combout => \Reciever|watchdog[13]~42_combout\,
	cout => \Reciever|watchdog[13]~43\);

-- Location: FF_X32_Y71_N27
\Reciever|watchdog[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[13]~42_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(13));

-- Location: LCCOMB_X32_Y71_N28
\Reciever|watchdog[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[14]~44_combout\ = (\Reciever|watchdog\(14) & (\Reciever|watchdog[13]~43\ $ (GND))) # (!\Reciever|watchdog\(14) & (!\Reciever|watchdog[13]~43\ & VCC))
-- \Reciever|watchdog[14]~45\ = CARRY((\Reciever|watchdog\(14) & !\Reciever|watchdog[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reciever|watchdog\(14),
	datad => VCC,
	cin => \Reciever|watchdog[13]~43\,
	combout => \Reciever|watchdog[14]~44_combout\,
	cout => \Reciever|watchdog[14]~45\);

-- Location: FF_X32_Y71_N29
\Reciever|watchdog[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[14]~44_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(14));

-- Location: LCCOMB_X32_Y71_N30
\Reciever|watchdog[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|watchdog[15]~46_combout\ = \Reciever|watchdog\(15) $ (\Reciever|watchdog[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|watchdog\(15),
	cin => \Reciever|watchdog[14]~45\,
	combout => \Reciever|watchdog[15]~46_combout\);

-- Location: FF_X32_Y71_N31
\Reciever|watchdog[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|watchdog[15]~46_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sclr => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|watchdog\(15));

-- Location: LCCOMB_X31_Y71_N22
\Reciever|data_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~8_combout\ = (\Control_Unit|pres_s.init~q\ & (!\Reciever|watchdog\(15) & (\Reciever|data_reg\(2) & !\Reciever|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|pres_s.init~q\,
	datab => \Reciever|watchdog\(15),
	datac => \Reciever|data_reg\(2),
	datad => \Reciever|data_reg\(0),
	combout => \Reciever|data_reg~8_combout\);

-- Location: FF_X31_Y71_N23
\Reciever|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~8_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(1));

-- Location: LCCOMB_X31_Y71_N24
\Reciever|data_reg[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg[0]~17_combout\ = (\Reciever|data_reg\(1) & (\Reciever|sync3~q\ & (!\Reciever|sync2~q\ & !\Reciever|srst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(1),
	datab => \Reciever|sync3~q\,
	datac => \Reciever|sync2~q\,
	datad => \Reciever|srst~0_combout\,
	combout => \Reciever|data_reg[0]~17_combout\);

-- Location: FF_X31_Y71_N25
\Reciever|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg[0]~17_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(0));

-- Location: IOIBUF_X27_Y73_N22
\m_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_data,
	o => \m_data~input_o\);

-- Location: LCCOMB_X31_Y71_N18
\Reciever|data_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~7_combout\ = (!\Reciever|srst~0_combout\ & ((\Reciever|shift_en~combout\ & (!\m_data~input_o\)) # (!\Reciever|shift_en~combout\ & ((\Reciever|data_reg\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|shift_en~combout\,
	datab => \m_data~input_o\,
	datac => \Reciever|data_reg\(11),
	datad => \Reciever|srst~0_combout\,
	combout => \Reciever|data_reg~7_combout\);

-- Location: FF_X31_Y71_N19
\Reciever|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~7_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(11));

-- Location: LCCOMB_X31_Y71_N0
\Reciever|data_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~16_combout\ = (\Control_Unit|pres_s.init~q\ & (!\Reciever|data_reg\(11) & (!\Reciever|watchdog\(15) & !\Reciever|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|pres_s.init~q\,
	datab => \Reciever|data_reg\(11),
	datac => \Reciever|watchdog\(15),
	datad => \Reciever|data_reg\(0),
	combout => \Reciever|data_reg~16_combout\);

-- Location: FF_X31_Y71_N1
\Reciever|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~16_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(10));

-- Location: LCCOMB_X31_Y71_N20
\Reciever|data_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~15_combout\ = (\Control_Unit|pres_s.init~q\ & (\Reciever|data_reg\(10) & (!\Reciever|watchdog\(15) & !\Reciever|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|pres_s.init~q\,
	datab => \Reciever|data_reg\(10),
	datac => \Reciever|watchdog\(15),
	datad => \Reciever|data_reg\(0),
	combout => \Reciever|data_reg~15_combout\);

-- Location: FF_X31_Y71_N21
\Reciever|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~15_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(9));

-- Location: LCCOMB_X33_Y71_N16
\Reciever|data_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~14_combout\ = (\Reciever|data_reg\(9) & (\Control_Unit|pres_s.init~q\ & (!\Reciever|data_reg\(0) & !\Reciever|watchdog\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(9),
	datab => \Control_Unit|pres_s.init~q\,
	datac => \Reciever|data_reg\(0),
	datad => \Reciever|watchdog\(15),
	combout => \Reciever|data_reg~14_combout\);

-- Location: FF_X33_Y71_N17
\Reciever|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~14_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(8));

-- Location: LCCOMB_X33_Y71_N10
\Reciever|data_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~13_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(8),
	combout => \Reciever|data_reg~13_combout\);

-- Location: FF_X33_Y71_N11
\Reciever|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~13_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(7));

-- Location: LCCOMB_X33_Y71_N28
\Reciever|data_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~12_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(7),
	combout => \Reciever|data_reg~12_combout\);

-- Location: FF_X33_Y71_N29
\Reciever|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~12_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(6));

-- Location: LCCOMB_X33_Y71_N6
\Reciever|data_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~11_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(6),
	combout => \Reciever|data_reg~11_combout\);

-- Location: FF_X33_Y71_N7
\Reciever|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~11_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(5));

-- Location: LCCOMB_X33_Y71_N12
\Reciever|data_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~10_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(5),
	combout => \Reciever|data_reg~10_combout\);

-- Location: FF_X33_Y71_N13
\Reciever|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~10_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(4));

-- Location: LCCOMB_X33_Y71_N18
\Reciever|data_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~9_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(4),
	combout => \Reciever|data_reg~9_combout\);

-- Location: FF_X33_Y71_N19
\Reciever|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~9_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(3));

-- Location: LCCOMB_X33_Y71_N4
\Reciever|data_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|data_reg~6_combout\ = (!\Reciever|data_reg\(0) & (!\Reciever|watchdog\(15) & (\Control_Unit|pres_s.init~q\ & \Reciever|data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(0),
	datab => \Reciever|watchdog\(15),
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Reciever|data_reg\(3),
	combout => \Reciever|data_reg~6_combout\);

-- Location: FF_X33_Y71_N5
\Reciever|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|data_reg~6_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|data_reg\(2));

-- Location: LCCOMB_X31_Y71_N4
\Reciever|pcheck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|pcheck~0_combout\ = (!\Reciever|srst~0_combout\ & (\m_data~input_o\ $ (\Reciever|pcheck~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_data~input_o\,
	datac => \Reciever|pcheck~q\,
	datad => \Reciever|srst~0_combout\,
	combout => \Reciever|pcheck~0_combout\);

-- Location: FF_X31_Y71_N5
\Reciever|pcheck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|pcheck~0_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|pcheck~q\);

-- Location: LCCOMB_X31_Y71_N12
\Reciever|en_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|en_out~0_combout\ = (!\Reciever|data_reg\(1) & (!\Reciever|data_reg\(11) & (\Reciever|pcheck~q\ & \Reciever|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reciever|data_reg\(1),
	datab => \Reciever|data_reg\(11),
	datac => \Reciever|pcheck~q\,
	datad => \Reciever|data_reg\(0),
	combout => \Reciever|en_out~0_combout\);

-- Location: FF_X33_Y71_N9
\Reciever|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Reciever|data_reg\(2),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(0));

-- Location: LCCOMB_X32_Y72_N6
\Output_Buffer|w_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[0]~feeder_combout\ = \Reciever|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reciever|reg_out\(0),
	combout => \Output_Buffer|w_in[0]~feeder_combout\);

-- Location: FF_X32_Y72_N7
\Output_Buffer|w_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[0]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(0));

-- Location: LCCOMB_X31_Y72_N4
\Output_Buffer|word_2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[0]~feeder_combout\ = \Output_Buffer|w_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(0),
	combout => \Output_Buffer|word_2[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y71_N12
\Control_Unit|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|Selector2~0_combout\ = (!\Control_Unit|pres_s.init~q\ & \Mouse_Init_Unit|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_Unit|pres_s.init~q\,
	datad => \Mouse_Init_Unit|init_done~q\,
	combout => \Control_Unit|Selector2~0_combout\);

-- Location: FF_X30_Y71_N5
\Control_Unit|pres_s.w3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Control_Unit|pres_s.w2~q\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Reciever|data_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|pres_s.w3~q\);

-- Location: LCCOMB_X30_Y71_N18
\Control_Unit|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|Selector2~1_combout\ = (\Control_Unit|Selector2~0_combout\) # ((\Reciever|data_reg\(0) & (\Control_Unit|pres_s.w3~q\)) # (!\Reciever|data_reg\(0) & ((\Control_Unit|pres_s.w1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|Selector2~0_combout\,
	datab => \Control_Unit|pres_s.w3~q\,
	datac => \Control_Unit|pres_s.w1~q\,
	datad => \Reciever|data_reg\(0),
	combout => \Control_Unit|Selector2~1_combout\);

-- Location: FF_X30_Y71_N19
\Control_Unit|pres_s.w1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|Selector2~1_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|pres_s.w1~q\);

-- Location: LCCOMB_X30_Y71_N8
\Control_Unit|pres_s.w2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|pres_s.w2~feeder_combout\ = \Control_Unit|pres_s.w1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control_Unit|pres_s.w1~q\,
	combout => \Control_Unit|pres_s.w2~feeder_combout\);

-- Location: FF_X30_Y71_N9
\Control_Unit|pres_s.w2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|pres_s.w2~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|data_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|pres_s.w2~q\);

-- Location: LCCOMB_X30_Y71_N26
\Control_Unit|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|Selector0~0_combout\ = (\Control_Unit|pres_s.w3~q\) # ((\Control_Unit|pres_s.w2~q\ & \Reciever|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_Unit|pres_s.w2~q\,
	datac => \Control_Unit|pres_s.w3~q\,
	datad => \Reciever|data_reg\(0),
	combout => \Control_Unit|Selector0~0_combout\);

-- Location: FF_X30_Y71_N27
\Control_Unit|w_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|Selector0~0_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|w_sel\(1));

-- Location: LCCOMB_X30_Y71_N0
\Control_Unit|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Control_Unit|Selector1~0_combout\ = (\Reciever|data_reg\(0) & ((\Control_Unit|pres_s.w1~q\) # ((\Control_Unit|pres_s.w3~q\)))) # (!\Reciever|data_reg\(0) & (((\Control_Unit|pres_s.w2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|pres_s.w1~q\,
	datab => \Control_Unit|pres_s.w3~q\,
	datac => \Control_Unit|pres_s.w2~q\,
	datad => \Reciever|data_reg\(0),
	combout => \Control_Unit|Selector1~0_combout\);

-- Location: FF_X30_Y71_N1
\Control_Unit|w_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Control_Unit|Selector1~0_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Control_Unit|w_sel\(0));

-- Location: LCCOMB_X31_Y72_N20
\Output_Buffer|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|Mux22~0_combout\ = (!\Control_Unit|w_sel\(1) & \Control_Unit|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_Unit|w_sel\(1),
	datad => \Control_Unit|w_sel\(0),
	combout => \Output_Buffer|Mux22~0_combout\);

-- Location: FF_X31_Y72_N5
\Output_Buffer|word_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[0]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(0));

-- Location: LCCOMB_X33_Y71_N14
\Reciever|reg_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[1]~feeder_combout\ = \Reciever|data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(3),
	combout => \Reciever|reg_out[1]~feeder_combout\);

-- Location: FF_X33_Y71_N15
\Reciever|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[1]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(1));

-- Location: LCCOMB_X33_Y72_N12
\Output_Buffer|w_in[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[1]~feeder_combout\ = \Reciever|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|reg_out\(1),
	combout => \Output_Buffer|w_in[1]~feeder_combout\);

-- Location: FF_X33_Y72_N13
\Output_Buffer|w_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[1]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(1));

-- Location: LCCOMB_X31_Y72_N26
\Output_Buffer|word_2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[1]~feeder_combout\ = \Output_Buffer|w_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(1),
	combout => \Output_Buffer|word_2[1]~feeder_combout\);

-- Location: FF_X31_Y72_N27
\Output_Buffer|word_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[1]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(1));

-- Location: LCCOMB_X33_Y71_N0
\Reciever|reg_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[2]~feeder_combout\ = \Reciever|data_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(4),
	combout => \Reciever|reg_out[2]~feeder_combout\);

-- Location: FF_X33_Y71_N1
\Reciever|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[2]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(2));

-- Location: LCCOMB_X32_Y72_N12
\Output_Buffer|w_in[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[2]~feeder_combout\ = \Reciever|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|reg_out\(2),
	combout => \Output_Buffer|w_in[2]~feeder_combout\);

-- Location: FF_X32_Y72_N13
\Output_Buffer|w_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[2]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(2));

-- Location: FF_X31_Y72_N21
\Output_Buffer|word_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(2),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(2));

-- Location: LCCOMB_X33_Y71_N22
\Reciever|reg_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[3]~feeder_combout\ = \Reciever|data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(5),
	combout => \Reciever|reg_out[3]~feeder_combout\);

-- Location: FF_X33_Y71_N23
\Reciever|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[3]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(3));

-- Location: LCCOMB_X33_Y72_N14
\Output_Buffer|w_in[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[3]~feeder_combout\ = \Reciever|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|reg_out\(3),
	combout => \Output_Buffer|w_in[3]~feeder_combout\);

-- Location: FF_X33_Y72_N15
\Output_Buffer|w_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[3]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(3));

-- Location: LCCOMB_X31_Y72_N30
\Output_Buffer|word_2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[3]~feeder_combout\ = \Output_Buffer|w_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(3),
	combout => \Output_Buffer|word_2[3]~feeder_combout\);

-- Location: FF_X31_Y72_N31
\Output_Buffer|word_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[3]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(3));

-- Location: LCCOMB_X33_Y71_N24
\Reciever|reg_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[4]~feeder_combout\ = \Reciever|data_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(6),
	combout => \Reciever|reg_out[4]~feeder_combout\);

-- Location: FF_X33_Y71_N25
\Reciever|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[4]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(4));

-- Location: LCCOMB_X32_Y72_N30
\Output_Buffer|w_in[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[4]~feeder_combout\ = \Reciever|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|reg_out\(4),
	combout => \Output_Buffer|w_in[4]~feeder_combout\);

-- Location: FF_X32_Y72_N31
\Output_Buffer|w_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[4]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(4));

-- Location: LCCOMB_X31_Y72_N8
\Output_Buffer|word_2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[4]~feeder_combout\ = \Output_Buffer|w_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Buffer|w_in\(4),
	combout => \Output_Buffer|word_2[4]~feeder_combout\);

-- Location: FF_X31_Y72_N9
\Output_Buffer|word_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[4]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(4));

-- Location: LCCOMB_X33_Y71_N2
\Reciever|reg_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[5]~feeder_combout\ = \Reciever|data_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(7),
	combout => \Reciever|reg_out[5]~feeder_combout\);

-- Location: FF_X33_Y71_N3
\Reciever|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[5]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(5));

-- Location: LCCOMB_X32_Y72_N8
\Output_Buffer|w_in[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[5]~feeder_combout\ = \Reciever|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|reg_out\(5),
	combout => \Output_Buffer|w_in[5]~feeder_combout\);

-- Location: FF_X32_Y72_N9
\Output_Buffer|w_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[5]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(5));

-- Location: LCCOMB_X31_Y72_N10
\Output_Buffer|word_2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[5]~feeder_combout\ = \Output_Buffer|w_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Buffer|w_in\(5),
	combout => \Output_Buffer|word_2[5]~feeder_combout\);

-- Location: FF_X31_Y72_N11
\Output_Buffer|word_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[5]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(5));

-- Location: LCCOMB_X33_Y71_N20
\Reciever|reg_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[6]~feeder_combout\ = \Reciever|data_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(8),
	combout => \Reciever|reg_out[6]~feeder_combout\);

-- Location: FF_X33_Y71_N21
\Reciever|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[6]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(6));

-- Location: LCCOMB_X32_Y72_N22
\Output_Buffer|w_in[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[6]~feeder_combout\ = \Reciever|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reciever|reg_out\(6),
	combout => \Output_Buffer|w_in[6]~feeder_combout\);

-- Location: FF_X32_Y72_N23
\Output_Buffer|w_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[6]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(6));

-- Location: LCCOMB_X31_Y72_N12
\Output_Buffer|word_2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[6]~feeder_combout\ = \Output_Buffer|w_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(6),
	combout => \Output_Buffer|word_2[6]~feeder_combout\);

-- Location: FF_X31_Y72_N13
\Output_Buffer|word_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[6]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(6));

-- Location: LCCOMB_X33_Y71_N30
\Reciever|reg_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reciever|reg_out[7]~feeder_combout\ = \Reciever|data_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|data_reg\(9),
	combout => \Reciever|reg_out[7]~feeder_combout\);

-- Location: FF_X33_Y71_N31
\Reciever|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Reciever|reg_out[7]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Reciever|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|reg_out\(7));

-- Location: LCCOMB_X32_Y72_N28
\Output_Buffer|w_in[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[7]~feeder_combout\ = \Reciever|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reciever|reg_out\(7),
	combout => \Output_Buffer|w_in[7]~feeder_combout\);

-- Location: FF_X32_Y72_N29
\Output_Buffer|w_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[7]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(7));

-- Location: LCCOMB_X31_Y72_N22
\Output_Buffer|word_2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[7]~feeder_combout\ = \Output_Buffer|w_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(7),
	combout => \Output_Buffer|word_2[7]~feeder_combout\);

-- Location: FF_X31_Y72_N23
\Output_Buffer|word_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[7]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(7));

-- Location: LCCOMB_X31_Y72_N0
\Output_Buffer|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|Mux4~0_combout\ = (!\Control_Unit|w_sel\(1) & !\Control_Unit|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_Unit|w_sel\(1),
	datad => \Control_Unit|w_sel\(0),
	combout => \Output_Buffer|Mux4~0_combout\);

-- Location: FF_X31_Y72_N1
\Output_Buffer|word_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(4),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_1\(4));

-- Location: LCCOMB_X32_Y72_N16
\Output_Buffer|word_3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_3[0]~feeder_combout\ = \Output_Buffer|w_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(0),
	combout => \Output_Buffer|word_3[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y72_N28
\Output_Buffer|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|Mux22~1_combout\ = (\Control_Unit|w_sel\(1) & !\Control_Unit|w_sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_Unit|w_sel\(1),
	datad => \Control_Unit|w_sel\(0),
	combout => \Output_Buffer|Mux22~1_combout\);

-- Location: FF_X32_Y72_N17
\Output_Buffer|word_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_3[0]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(0));

-- Location: LCCOMB_X33_Y72_N4
\Output_Buffer|word_3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_3[1]~feeder_combout\ = \Output_Buffer|w_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(1),
	combout => \Output_Buffer|word_3[1]~feeder_combout\);

-- Location: FF_X33_Y72_N5
\Output_Buffer|word_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_3[1]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(1));

-- Location: LCCOMB_X32_Y72_N2
\Output_Buffer|word_3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_3[2]~feeder_combout\ = \Output_Buffer|w_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(2),
	combout => \Output_Buffer|word_3[2]~feeder_combout\);

-- Location: FF_X32_Y72_N3
\Output_Buffer|word_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_3[2]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(2));

-- Location: FF_X33_Y72_N11
\Output_Buffer|word_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(3),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(3));

-- Location: FF_X32_Y72_N1
\Output_Buffer|word_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(4),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(4));

-- Location: FF_X32_Y72_N11
\Output_Buffer|word_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(5),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(5));

-- Location: FF_X32_Y72_N25
\Output_Buffer|word_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(6),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(6));

-- Location: LCCOMB_X32_Y72_N14
\Output_Buffer|word_3[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_3[7]~feeder_combout\ = \Output_Buffer|w_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(7),
	combout => \Output_Buffer|word_3[7]~feeder_combout\);

-- Location: FF_X32_Y72_N15
\Output_Buffer|word_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_3[7]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(7));

-- Location: LCCOMB_X31_Y72_N2
\Output_Buffer|word_1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_1[5]~feeder_combout\ = \Output_Buffer|w_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Buffer|w_in\(5),
	combout => \Output_Buffer|word_1[5]~feeder_combout\);

-- Location: FF_X31_Y72_N3
\Output_Buffer|word_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_1[5]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_1\(5));

-- Location: LCCOMB_X31_Y72_N16
\Output_Buffer|word_1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_1[6]~feeder_combout\ = \Output_Buffer|w_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(6),
	combout => \Output_Buffer|word_1[6]~feeder_combout\);

-- Location: FF_X31_Y72_N17
\Output_Buffer|word_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_1[6]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_1\(6));

-- Location: FF_X31_Y71_N15
\Reciever|w_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Reciever|en_out~0_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reciever|w_valid~q\);

-- Location: LCCOMB_X32_Y72_N20
\Output_Buffer|w_in[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|w_in[8]~feeder_combout\ = \Reciever|w_valid~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reciever|w_valid~q\,
	combout => \Output_Buffer|w_in[8]~feeder_combout\);

-- Location: FF_X32_Y72_N21
\Output_Buffer|w_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|w_in[8]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|w_in\(8));

-- Location: LCCOMB_X31_Y72_N18
\Output_Buffer|word_2[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_2[8]~feeder_combout\ = \Output_Buffer|w_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Output_Buffer|w_in\(8),
	combout => \Output_Buffer|word_2[8]~feeder_combout\);

-- Location: FF_X31_Y72_N19
\Output_Buffer|word_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_2[8]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_2\(8));

-- Location: FF_X31_Y72_N7
\Output_Buffer|word_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Output_Buffer|w_in\(8),
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Output_Buffer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_1\(8));

-- Location: LCCOMB_X31_Y72_N24
\Output_Buffer|word_1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_1[7]~feeder_combout\ = \Output_Buffer|w_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(7),
	combout => \Output_Buffer|word_1[7]~feeder_combout\);

-- Location: FF_X31_Y72_N25
\Output_Buffer|word_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_1[7]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_1\(7));

-- Location: LCCOMB_X31_Y72_N6
\Output_Buffer|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|Mux23~0_combout\ = (\Control_Unit|w_sel\(0) & (\Control_Unit|w_sel\(1) & (\Output_Buffer|word_1\(8) & !\Output_Buffer|word_1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_Unit|w_sel\(0),
	datab => \Control_Unit|w_sel\(1),
	datac => \Output_Buffer|word_1\(8),
	datad => \Output_Buffer|word_1\(7),
	combout => \Output_Buffer|Mux23~0_combout\);

-- Location: LCCOMB_X32_Y72_N18
\Output_Buffer|word_3[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|word_3[8]~feeder_combout\ = \Output_Buffer|w_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Output_Buffer|w_in\(8),
	combout => \Output_Buffer|word_3[8]~feeder_combout\);

-- Location: FF_X32_Y72_N19
\Output_Buffer|word_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|word_3[8]~feeder_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	ena => \Output_Buffer|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|word_3\(8));

-- Location: LCCOMB_X32_Y72_N4
\Output_Buffer|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Output_Buffer|Mux23~1_combout\ = (!\Output_Buffer|word_1\(6) & (\Output_Buffer|word_2\(8) & (\Output_Buffer|Mux23~0_combout\ & \Output_Buffer|word_3\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Output_Buffer|word_1\(6),
	datab => \Output_Buffer|word_2\(8),
	datac => \Output_Buffer|Mux23~0_combout\,
	datad => \Output_Buffer|word_3\(8),
	combout => \Output_Buffer|Mux23~1_combout\);

-- Location: FF_X32_Y72_N5
\Output_Buffer|valid_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Output_Buffer|Mux23~1_combout\,
	clrn => \ALT_INV_a_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Output_Buffer|valid_out~q\);

ww_x_mov(0) <= \x_mov[0]~output_o\;

ww_x_mov(1) <= \x_mov[1]~output_o\;

ww_x_mov(2) <= \x_mov[2]~output_o\;

ww_x_mov(3) <= \x_mov[3]~output_o\;

ww_x_mov(4) <= \x_mov[4]~output_o\;

ww_x_mov(5) <= \x_mov[5]~output_o\;

ww_x_mov(6) <= \x_mov[6]~output_o\;

ww_x_mov(7) <= \x_mov[7]~output_o\;

ww_x_mov(8) <= \x_mov[8]~output_o\;

ww_y_mov(0) <= \y_mov[0]~output_o\;

ww_y_mov(1) <= \y_mov[1]~output_o\;

ww_y_mov(2) <= \y_mov[2]~output_o\;

ww_y_mov(3) <= \y_mov[3]~output_o\;

ww_y_mov(4) <= \y_mov[4]~output_o\;

ww_y_mov(5) <= \y_mov[5]~output_o\;

ww_y_mov(6) <= \y_mov[6]~output_o\;

ww_y_mov(7) <= \y_mov[7]~output_o\;

ww_y_mov(8) <= \y_mov[8]~output_o\;

ww_msg_valid <= \msg_valid~output_o\;

ww_m_data <= \m_data~output_o\;

ww_m_clock <= \m_clock~output_o\;
END structure;



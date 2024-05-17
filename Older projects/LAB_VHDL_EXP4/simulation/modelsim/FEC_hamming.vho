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

-- DATE "05/18/2023 13:41:14"

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

ENTITY 	FEC_hamming IS
    PORT (
	en : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	din : IN std_logic_vector(7 DOWNTO 0);
	Rx : IN std_logic_vector(11 DOWNTO 0);
	dout : OUT std_logic_vector(7 DOWNTO 0);
	Tx : OUT std_logic_vector(11 DOWNTO 0);
	error : OUT std_logic;
	valid : OUT std_logic
	);
END FEC_hamming;

-- Design Ports Information
-- Rx[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[1]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[2]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[4]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[6]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[7]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[8]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[9]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[10]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tx[11]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FEC_hamming IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Rx : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Tx : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rx[0]~input_o\ : std_logic;
SIGNAL \Rx[1]~input_o\ : std_logic;
SIGNAL \Rx[2]~input_o\ : std_logic;
SIGNAL \Rx[3]~input_o\ : std_logic;
SIGNAL \Rx[4]~input_o\ : std_logic;
SIGNAL \Rx[5]~input_o\ : std_logic;
SIGNAL \Rx[6]~input_o\ : std_logic;
SIGNAL \Rx[7]~input_o\ : std_logic;
SIGNAL \Rx[8]~input_o\ : std_logic;
SIGNAL \Rx[9]~input_o\ : std_logic;
SIGNAL \Rx[10]~input_o\ : std_logic;
SIGNAL \Rx[11]~input_o\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \Tx[0]~output_o\ : std_logic;
SIGNAL \Tx[1]~output_o\ : std_logic;
SIGNAL \Tx[2]~output_o\ : std_logic;
SIGNAL \Tx[3]~output_o\ : std_logic;
SIGNAL \Tx[4]~output_o\ : std_logic;
SIGNAL \Tx[5]~output_o\ : std_logic;
SIGNAL \Tx[6]~output_o\ : std_logic;
SIGNAL \Tx[7]~output_o\ : std_logic;
SIGNAL \Tx[8]~output_o\ : std_logic;
SIGNAL \Tx[9]~output_o\ : std_logic;
SIGNAL \Tx[10]~output_o\ : std_logic;
SIGNAL \Tx[11]~output_o\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \encod|valid~q\ : std_logic;
SIGNAL \decod|VLD~q\ : std_logic;
SIGNAL \decod|Decoder0~3_combout\ : std_logic;
SIGNAL \decod|Din[9]~4_combout\ : std_logic;
SIGNAL \decod|Din[11]~6_combout\ : std_logic;
SIGNAL \decod|Decoder0~4_combout\ : std_logic;
SIGNAL \decod|Mux0~9_combout\ : std_logic;
SIGNAL \decod|Din[10]~5_combout\ : std_logic;
SIGNAL \decod|Decoder0~5_combout\ : std_logic;
SIGNAL \decod|Din[12]~7_combout\ : std_logic;
SIGNAL \decod|P~4_combout\ : std_logic;
SIGNAL \decod|sum[3]~0_combout\ : std_logic;
SIGNAL \decod|Mux0~7_combout\ : std_logic;
SIGNAL \decod|Mux0~10_combout\ : std_logic;
SIGNAL \decod|Din[8]~8_combout\ : std_logic;
SIGNAL \decod|Mux0~0_combout\ : std_logic;
SIGNAL \decod|Mux0~1_combout\ : std_logic;
SIGNAL \decod|Din[7]~3_combout\ : std_logic;
SIGNAL \decod|Din[4]~9_combout\ : std_logic;
SIGNAL \decod|Mux0~2_combout\ : std_logic;
SIGNAL \decod|Mux0~3_combout\ : std_logic;
SIGNAL \decod|Decoder0~2_combout\ : std_logic;
SIGNAL \decod|Din[2]~11_combout\ : std_logic;
SIGNAL \decod|Mux0~4_combout\ : std_logic;
SIGNAL \decod|Mux0~5_combout\ : std_logic;
SIGNAL \decod|Mux0~6_combout\ : std_logic;
SIGNAL \decod|Mux0~8_combout\ : std_logic;
SIGNAL \decod|Din[5]~1_combout\ : std_logic;
SIGNAL \decod|P~0_combout\ : std_logic;
SIGNAL \decod|Din[6]~2_combout\ : std_logic;
SIGNAL \decod|P~1_combout\ : std_logic;
SIGNAL \decod|P~3_combout\ : std_logic;
SIGNAL \decod|Decoder0~1_combout\ : std_logic;
SIGNAL \decod|Din[1]~10_combout\ : std_logic;
SIGNAL \decod|P~2_combout\ : std_logic;
SIGNAL \decod|Decoder0~0_combout\ : std_logic;
SIGNAL \decod|Din[3]~0_combout\ : std_logic;
SIGNAL \decod|Do[0]~feeder_combout\ : std_logic;
SIGNAL \decod|data[0]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[1]~feeder_combout\ : std_logic;
SIGNAL \decod|data[1]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[2]~feeder_combout\ : std_logic;
SIGNAL \decod|data[2]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[3]~feeder_combout\ : std_logic;
SIGNAL \decod|data[3]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[4]~feeder_combout\ : std_logic;
SIGNAL \decod|data[4]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[5]~feeder_combout\ : std_logic;
SIGNAL \decod|data[5]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[6]~feeder_combout\ : std_logic;
SIGNAL \decod|data[6]~feeder_combout\ : std_logic;
SIGNAL \decod|Do[7]~feeder_combout\ : std_logic;
SIGNAL \decod|data[7]~feeder_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \encod|D[1]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[5]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[1]~2_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \encod|D[4]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[9]~feeder_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \encod|D[3]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[7]~feeder_combout\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \encod|D[0]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[3]~feeder_combout\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \encod|D[6]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[11]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout~0_combout\ : std_logic;
SIGNAL \encod|Dout~1_combout\ : std_logic;
SIGNAL \encod|codeword[1]~feeder_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \encod|D[5]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[10]~feeder_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \encod|D[2]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout[6]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout~3_combout\ : std_logic;
SIGNAL \encod|codeword[2]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[3]~feeder_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \encod|Dout[12]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout~4_combout\ : std_logic;
SIGNAL \encod|codeword[4]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[5]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[6]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[7]~feeder_combout\ : std_logic;
SIGNAL \encod|Dout~5_combout\ : std_logic;
SIGNAL \encod|codeword[8]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[9]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[10]~feeder_combout\ : std_logic;
SIGNAL \encod|codeword[12]~feeder_combout\ : std_logic;
SIGNAL \decod|valid~feeder_combout\ : std_logic;
SIGNAL \decod|valid~q\ : std_logic;
SIGNAL \decod|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \encod|codeword\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \decod|Do\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \encod|Dout\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \decod|Din\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \encod|D\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decod|sum\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decod|P\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_clk <= clk;
ww_rst <= rst;
ww_din <= din;
ww_Rx <= Rx;
dout <= ww_dout;
Tx <= ww_Tx;
error <= ww_error;
valid <= ww_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N16
\dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\dout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\dout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\dout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\dout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|data\(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Tx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(1),
	devoe => ww_devoe,
	o => \Tx[0]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Tx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(2),
	devoe => ww_devoe,
	o => \Tx[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Tx[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(3),
	devoe => ww_devoe,
	o => \Tx[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Tx[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(4),
	devoe => ww_devoe,
	o => \Tx[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\Tx[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(5),
	devoe => ww_devoe,
	o => \Tx[4]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Tx[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(6),
	devoe => ww_devoe,
	o => \Tx[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Tx[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(7),
	devoe => ww_devoe,
	o => \Tx[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\Tx[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(8),
	devoe => ww_devoe,
	o => \Tx[7]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Tx[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(9),
	devoe => ww_devoe,
	o => \Tx[8]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Tx[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(10),
	devoe => ww_devoe,
	o => \Tx[9]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Tx[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(11),
	devoe => ww_devoe,
	o => \Tx[10]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Tx[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encod|codeword\(12),
	devoe => ww_devoe,
	o => \Tx[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \error~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decod|valid~q\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: IOIBUF_X31_Y73_N8
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X34_Y67_N27
\encod|valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \en~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|valid~q\);

-- Location: FF_X34_Y67_N11
\decod|VLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \encod|valid~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|VLD~q\);

-- Location: LCCOMB_X34_Y67_N28
\decod|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~3_combout\ = (\decod|sum\(0) & (\decod|sum\(3) & (!\decod|sum\(2) & \decod|VLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datab => \decod|sum\(3),
	datac => \decod|sum\(2),
	datad => \decod|VLD~q\,
	combout => \decod|Decoder0~3_combout\);

-- Location: LCCOMB_X35_Y67_N14
\decod|Din[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[9]~4_combout\ = (\decod|sum\(1) & (((\decod|Din\(9))))) # (!\decod|sum\(1) & ((\decod|Decoder0~3_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Decoder0~3_combout\ & (\decod|Din\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(1),
	datab => \decod|Decoder0~3_combout\,
	datac => \decod|Din\(9),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[9]~4_combout\);

-- Location: FF_X35_Y67_N15
\decod|Din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[9]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(9));

-- Location: LCCOMB_X35_Y67_N30
\decod|Din[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[11]~6_combout\ = (\decod|sum\(1) & ((\decod|Decoder0~3_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Decoder0~3_combout\ & (\decod|Din\(11))))) # (!\decod|sum\(1) & (((\decod|Din\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(1),
	datab => \decod|Decoder0~3_combout\,
	datac => \decod|Din\(11),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[11]~6_combout\);

-- Location: FF_X35_Y67_N31
\decod|Din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[11]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(11));

-- Location: LCCOMB_X34_Y67_N26
\decod|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~4_combout\ = (!\decod|sum\(2) & (\decod|sum\(3) & \decod|VLD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(2),
	datab => \decod|sum\(3),
	datad => \decod|VLD~q\,
	combout => \decod|Decoder0~4_combout\);

-- Location: LCCOMB_X34_Y67_N18
\decod|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~9_combout\ = (!\decod|sum\(0) & \decod|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|sum\(0),
	datad => \decod|sum\(1),
	combout => \decod|Mux0~9_combout\);

-- Location: LCCOMB_X35_Y67_N8
\decod|Din[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[10]~5_combout\ = (\decod|Decoder0~4_combout\ & ((\decod|Mux0~9_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Mux0~9_combout\ & (\decod|Din\(10))))) # (!\decod|Decoder0~4_combout\ & (((\decod|Din\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~4_combout\,
	datab => \decod|Mux0~9_combout\,
	datac => \decod|Din\(10),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[10]~5_combout\);

-- Location: FF_X35_Y67_N9
\decod|Din[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[10]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(10));

-- Location: LCCOMB_X34_Y67_N20
\decod|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~5_combout\ = (\decod|VLD~q\ & (!\decod|sum\(1) & (!\decod|sum\(0) & \decod|sum\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|VLD~q\,
	datab => \decod|sum\(1),
	datac => \decod|sum\(0),
	datad => \decod|sum\(2),
	combout => \decod|Decoder0~5_combout\);

-- Location: LCCOMB_X35_Y67_N0
\decod|Din[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[12]~7_combout\ = (\decod|sum\(3) & ((\decod|Decoder0~5_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Decoder0~5_combout\ & (\decod|Din\(12))))) # (!\decod|sum\(3) & (((\decod|Din\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(3),
	datab => \decod|Decoder0~5_combout\,
	datac => \decod|Din\(12),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[12]~7_combout\);

-- Location: FF_X35_Y67_N1
\decod|Din[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[12]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(12));

-- Location: LCCOMB_X33_Y67_N26
\decod|P~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|P~4_combout\ = \decod|Din\(9) $ (\decod|Din\(11) $ (\decod|Din\(10) $ (\decod|Din\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(9),
	datab => \decod|Din\(11),
	datac => \decod|Din\(10),
	datad => \decod|Din\(12),
	combout => \decod|P~4_combout\);

-- Location: LCCOMB_X34_Y67_N22
\decod|sum[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|sum[3]~0_combout\ = (\rst~input_o\ & \decod|VLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \decod|VLD~q\,
	combout => \decod|sum[3]~0_combout\);

-- Location: FF_X33_Y67_N27
\decod|P[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|P~4_combout\,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|P\(3));

-- Location: FF_X34_Y67_N3
\decod|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decod|P\(3),
	sload => VCC,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|sum\(3));

-- Location: LCCOMB_X35_Y67_N4
\decod|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~7_combout\ = (!\decod|sum\(0) & (!\decod|sum\(1) & \decod|Din\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datac => \decod|sum\(1),
	datad => \decod|Din\(12),
	combout => \decod|Mux0~7_combout\);

-- Location: LCCOMB_X34_Y67_N6
\decod|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~10_combout\ = (!\decod|sum\(0) & !\decod|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|sum\(0),
	datad => \decod|sum\(1),
	combout => \decod|Mux0~10_combout\);

-- Location: LCCOMB_X35_Y67_N22
\decod|Din[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[8]~8_combout\ = (\decod|Decoder0~4_combout\ & ((\decod|Mux0~10_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Mux0~10_combout\ & (\decod|Din\(8))))) # (!\decod|Decoder0~4_combout\ & (((\decod|Din\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~4_combout\,
	datab => \decod|Mux0~10_combout\,
	datac => \decod|Din\(8),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[8]~8_combout\);

-- Location: FF_X35_Y67_N23
\decod|Din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[8]~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(8));

-- Location: LCCOMB_X35_Y67_N28
\decod|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~0_combout\ = (\decod|sum\(0) & (((\decod|sum\(1))))) # (!\decod|sum\(0) & ((\decod|sum\(1) & ((\decod|Din\(10)))) # (!\decod|sum\(1) & (\decod|Din\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(8),
	datab => \decod|Din\(10),
	datac => \decod|sum\(0),
	datad => \decod|sum\(1),
	combout => \decod|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y67_N26
\decod|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~1_combout\ = (\decod|sum\(0) & ((\decod|Mux0~0_combout\ & (\decod|Din\(11))) # (!\decod|Mux0~0_combout\ & ((\decod|Din\(9)))))) # (!\decod|sum\(0) & (((\decod|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(11),
	datab => \decod|Din\(9),
	datac => \decod|sum\(0),
	datad => \decod|Mux0~0_combout\,
	combout => \decod|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y67_N12
\decod|Din[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[7]~3_combout\ = (\decod|Decoder0~0_combout\ & ((\decod|sum\(2) & ((!\decod|Mux0~8_combout\))) # (!\decod|sum\(2) & (\decod|Din\(7))))) # (!\decod|Decoder0~0_combout\ & (((\decod|Din\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~0_combout\,
	datab => \decod|sum\(2),
	datac => \decod|Din\(7),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[7]~3_combout\);

-- Location: FF_X34_Y67_N13
\decod|Din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[7]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(7));

-- Location: LCCOMB_X35_Y67_N10
\decod|Din[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[4]~9_combout\ = (\decod|sum\(3) & (((\decod|Din\(4))))) # (!\decod|sum\(3) & ((\decod|Decoder0~5_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Decoder0~5_combout\ & (\decod|Din\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(3),
	datab => \decod|Decoder0~5_combout\,
	datac => \decod|Din\(4),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[4]~9_combout\);

-- Location: FF_X35_Y67_N11
\decod|Din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[4]~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(4));

-- Location: LCCOMB_X35_Y67_N16
\decod|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~2_combout\ = (\decod|sum\(0) & ((\decod|Din\(5)) # ((\decod|sum\(1))))) # (!\decod|sum\(0) & (((!\decod|sum\(1) & \decod|Din\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datab => \decod|Din\(5),
	datac => \decod|sum\(1),
	datad => \decod|Din\(4),
	combout => \decod|Mux0~2_combout\);

-- Location: LCCOMB_X34_Y67_N8
\decod|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~3_combout\ = (\decod|sum\(1) & ((\decod|Mux0~2_combout\ & (\decod|Din\(7))) # (!\decod|Mux0~2_combout\ & ((\decod|Din\(6)))))) # (!\decod|sum\(1) & (((\decod|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(7),
	datab => \decod|Din\(6),
	datac => \decod|sum\(1),
	datad => \decod|Mux0~2_combout\,
	combout => \decod|Mux0~3_combout\);

-- Location: LCCOMB_X34_Y67_N4
\decod|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~2_combout\ = (\decod|VLD~q\ & (!\decod|sum\(3) & (!\decod|sum\(0) & \decod|sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|VLD~q\,
	datab => \decod|sum\(3),
	datac => \decod|sum\(0),
	datad => \decod|sum\(1),
	combout => \decod|Decoder0~2_combout\);

-- Location: LCCOMB_X34_Y67_N30
\decod|Din[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[2]~11_combout\ = (\decod|Decoder0~2_combout\ & ((\decod|sum\(2) & (\decod|Din\(2))) # (!\decod|sum\(2) & ((!\decod|Mux0~8_combout\))))) # (!\decod|Decoder0~2_combout\ & (((\decod|Din\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~2_combout\,
	datab => \decod|sum\(2),
	datac => \decod|Din\(2),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[2]~11_combout\);

-- Location: FF_X34_Y67_N31
\decod|Din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[2]~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(2));

-- Location: LCCOMB_X35_Y67_N24
\decod|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~4_combout\ = (\decod|sum\(0) & ((\decod|sum\(1) & (\decod|Din\(3))) # (!\decod|sum\(1) & ((\decod|Din\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(1),
	datab => \decod|Din\(3),
	datac => \decod|sum\(0),
	datad => \decod|Din\(1),
	combout => \decod|Mux0~4_combout\);

-- Location: LCCOMB_X34_Y67_N0
\decod|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~5_combout\ = (\decod|Mux0~4_combout\) # ((!\decod|sum\(0) & (\decod|Din\(2) & \decod|sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datab => \decod|Din\(2),
	datac => \decod|sum\(1),
	datad => \decod|Mux0~4_combout\,
	combout => \decod|Mux0~5_combout\);

-- Location: LCCOMB_X34_Y67_N14
\decod|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~6_combout\ = (\decod|sum\(2) & ((\decod|sum\(3)) # ((\decod|Mux0~3_combout\)))) # (!\decod|sum\(2) & (!\decod|sum\(3) & ((\decod|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(2),
	datab => \decod|sum\(3),
	datac => \decod|Mux0~3_combout\,
	datad => \decod|Mux0~5_combout\,
	combout => \decod|Mux0~6_combout\);

-- Location: LCCOMB_X35_Y67_N6
\decod|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Mux0~8_combout\ = (\decod|sum\(3) & ((\decod|Mux0~6_combout\ & (\decod|Mux0~7_combout\)) # (!\decod|Mux0~6_combout\ & ((\decod|Mux0~1_combout\))))) # (!\decod|sum\(3) & (((\decod|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(3),
	datab => \decod|Mux0~7_combout\,
	datac => \decod|Mux0~1_combout\,
	datad => \decod|Mux0~6_combout\,
	combout => \decod|Mux0~8_combout\);

-- Location: LCCOMB_X35_Y67_N2
\decod|Din[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[5]~1_combout\ = (\decod|Decoder0~1_combout\ & ((\decod|sum\(2) & ((!\decod|Mux0~8_combout\))) # (!\decod|sum\(2) & (\decod|Din\(5))))) # (!\decod|Decoder0~1_combout\ & (((\decod|Din\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~1_combout\,
	datab => \decod|sum\(2),
	datac => \decod|Din\(5),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[5]~1_combout\);

-- Location: FF_X35_Y67_N3
\decod|Din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[5]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(5));

-- Location: LCCOMB_X33_Y67_N0
\decod|P~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|P~0_combout\ = \decod|Din\(6) $ (\decod|Din\(5) $ (\decod|Din\(7) $ (\decod|Din\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(6),
	datab => \decod|Din\(5),
	datac => \decod|Din\(7),
	datad => \decod|Din\(12),
	combout => \decod|P~0_combout\);

-- Location: FF_X33_Y67_N1
\decod|P[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|P~0_combout\,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|P\(2));

-- Location: FF_X34_Y67_N29
\decod|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decod|P\(2),
	sload => VCC,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|sum\(2));

-- Location: LCCOMB_X35_Y67_N12
\decod|Din[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[6]~2_combout\ = (\decod|sum\(2) & ((\decod|Decoder0~2_combout\ & ((!\decod|Mux0~8_combout\))) # (!\decod|Decoder0~2_combout\ & (\decod|Din\(6))))) # (!\decod|sum\(2) & (((\decod|Din\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(2),
	datab => \decod|Decoder0~2_combout\,
	datac => \decod|Din\(6),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[6]~2_combout\);

-- Location: FF_X35_Y67_N13
\decod|Din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[6]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(6));

-- Location: LCCOMB_X33_Y67_N24
\decod|P~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|P~1_combout\ = \decod|Din\(3) $ (\decod|Din\(7) $ (\decod|Din\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(3),
	datac => \decod|Din\(7),
	datad => \decod|Din\(11),
	combout => \decod|P~1_combout\);

-- Location: LCCOMB_X34_Y67_N16
\decod|P~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|P~3_combout\ = \decod|Din\(6) $ (\decod|Din\(2) $ (\decod|Din\(10) $ (\decod|P~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(6),
	datab => \decod|Din\(2),
	datac => \decod|Din\(10),
	datad => \decod|P~1_combout\,
	combout => \decod|P~3_combout\);

-- Location: FF_X34_Y67_N17
\decod|P[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|P~3_combout\,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|P\(1));

-- Location: FF_X35_Y67_N5
\decod|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decod|P\(1),
	sload => VCC,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|sum\(1));

-- Location: LCCOMB_X34_Y67_N2
\decod|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~1_combout\ = (\decod|sum\(0) & (!\decod|sum\(1) & (!\decod|sum\(3) & \decod|VLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datab => \decod|sum\(1),
	datac => \decod|sum\(3),
	datad => \decod|VLD~q\,
	combout => \decod|Decoder0~1_combout\);

-- Location: LCCOMB_X35_Y67_N18
\decod|Din[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[1]~10_combout\ = (\decod|Decoder0~1_combout\ & ((\decod|sum\(2) & (\decod|Din\(1))) # (!\decod|sum\(2) & ((!\decod|Mux0~8_combout\))))) # (!\decod|Decoder0~1_combout\ & (((\decod|Din\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~1_combout\,
	datab => \decod|sum\(2),
	datac => \decod|Din\(1),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[1]~10_combout\);

-- Location: FF_X35_Y67_N19
\decod|Din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[1]~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(1));

-- Location: LCCOMB_X34_Y67_N24
\decod|P~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|P~2_combout\ = \decod|Din\(1) $ (\decod|Din\(9) $ (\decod|Din\(5) $ (\decod|P~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Din\(1),
	datab => \decod|Din\(9),
	datac => \decod|Din\(5),
	datad => \decod|P~1_combout\,
	combout => \decod|P~2_combout\);

-- Location: FF_X34_Y67_N25
\decod|P[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|P~2_combout\,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|P\(0));

-- Location: FF_X35_Y67_N27
\decod|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \decod|P\(0),
	sload => VCC,
	ena => \decod|sum[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|sum\(0));

-- Location: LCCOMB_X34_Y67_N10
\decod|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Decoder0~0_combout\ = (\decod|sum\(0) & (!\decod|sum\(3) & (\decod|VLD~q\ & \decod|sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|sum\(0),
	datab => \decod|sum\(3),
	datac => \decod|VLD~q\,
	datad => \decod|sum\(1),
	combout => \decod|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y67_N20
\decod|Din[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Din[3]~0_combout\ = (\decod|Decoder0~0_combout\ & ((\decod|sum\(2) & (\decod|Din\(3))) # (!\decod|sum\(2) & ((!\decod|Mux0~8_combout\))))) # (!\decod|Decoder0~0_combout\ & (((\decod|Din\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decod|Decoder0~0_combout\,
	datab => \decod|sum\(2),
	datac => \decod|Din\(3),
	datad => \decod|Mux0~8_combout\,
	combout => \decod|Din[3]~0_combout\);

-- Location: FF_X35_Y67_N21
\decod|Din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Din[3]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Din\(3));

-- Location: LCCOMB_X33_Y67_N10
\decod|Do[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[0]~feeder_combout\ = \decod|Din\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Din\(3),
	combout => \decod|Do[0]~feeder_combout\);

-- Location: FF_X33_Y67_N11
\decod|Do[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[0]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(0));

-- Location: LCCOMB_X32_Y67_N8
\decod|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[0]~feeder_combout\ = \decod|Do\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Do\(0),
	combout => \decod|data[0]~feeder_combout\);

-- Location: FF_X32_Y67_N9
\decod|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(0));

-- Location: LCCOMB_X33_Y67_N8
\decod|Do[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[1]~feeder_combout\ = \decod|Din\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Din\(5),
	combout => \decod|Do[1]~feeder_combout\);

-- Location: FF_X33_Y67_N9
\decod|Do[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[1]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(1));

-- Location: LCCOMB_X32_Y67_N26
\decod|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[1]~feeder_combout\ = \decod|Do\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Do\(1),
	combout => \decod|data[1]~feeder_combout\);

-- Location: FF_X32_Y67_N27
\decod|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(1));

-- Location: LCCOMB_X33_Y67_N22
\decod|Do[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[2]~feeder_combout\ = \decod|Din\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Din\(6),
	combout => \decod|Do[2]~feeder_combout\);

-- Location: FF_X33_Y67_N23
\decod|Do[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[2]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(2));

-- Location: LCCOMB_X32_Y67_N28
\decod|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[2]~feeder_combout\ = \decod|Do\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Do\(2),
	combout => \decod|data[2]~feeder_combout\);

-- Location: FF_X32_Y67_N29
\decod|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(2));

-- Location: LCCOMB_X33_Y67_N16
\decod|Do[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[3]~feeder_combout\ = \decod|Din\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Din\(7),
	combout => \decod|Do[3]~feeder_combout\);

-- Location: FF_X33_Y67_N17
\decod|Do[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[3]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(3));

-- Location: LCCOMB_X32_Y67_N14
\decod|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[3]~feeder_combout\ = \decod|Do\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Do\(3),
	combout => \decod|data[3]~feeder_combout\);

-- Location: FF_X32_Y67_N15
\decod|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(3));

-- Location: LCCOMB_X33_Y67_N6
\decod|Do[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[4]~feeder_combout\ = \decod|Din\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Din\(9),
	combout => \decod|Do[4]~feeder_combout\);

-- Location: FF_X33_Y67_N7
\decod|Do[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[4]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(4));

-- Location: LCCOMB_X32_Y67_N4
\decod|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[4]~feeder_combout\ = \decod|Do\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Do\(4),
	combout => \decod|data[4]~feeder_combout\);

-- Location: FF_X32_Y67_N5
\decod|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(4));

-- Location: LCCOMB_X33_Y67_N20
\decod|Do[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[5]~feeder_combout\ = \decod|Din\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Din\(10),
	combout => \decod|Do[5]~feeder_combout\);

-- Location: FF_X33_Y67_N21
\decod|Do[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[5]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(5));

-- Location: LCCOMB_X32_Y67_N2
\decod|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[5]~feeder_combout\ = \decod|Do\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|Do\(5),
	combout => \decod|data[5]~feeder_combout\);

-- Location: FF_X32_Y67_N3
\decod|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(5));

-- Location: LCCOMB_X33_Y67_N18
\decod|Do[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[6]~feeder_combout\ = \decod|Din\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Din\(11),
	combout => \decod|Do[6]~feeder_combout\);

-- Location: FF_X33_Y67_N19
\decod|Do[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[6]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(6));

-- Location: LCCOMB_X32_Y67_N12
\decod|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[6]~feeder_combout\ = \decod|Do\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Do\(6),
	combout => \decod|data[6]~feeder_combout\);

-- Location: FF_X32_Y67_N13
\decod|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(6));

-- Location: LCCOMB_X33_Y67_N28
\decod|Do[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|Do[7]~feeder_combout\ = \decod|Din\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Din\(12),
	combout => \decod|Do[7]~feeder_combout\);

-- Location: FF_X33_Y67_N29
\decod|Do[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|Do[7]~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|Do\(7));

-- Location: LCCOMB_X32_Y67_N22
\decod|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|data[7]~feeder_combout\ = \decod|Do\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \decod|Do\(7),
	combout => \decod|data[7]~feeder_combout\);

-- Location: FF_X32_Y67_N23
\decod|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|data[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|data\(7));

-- Location: IOIBUF_X38_Y73_N1
\din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LCCOMB_X38_Y71_N10
\encod|D[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[1]~input_o\,
	combout => \encod|D[1]~feeder_combout\);

-- Location: FF_X38_Y71_N11
\encod|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(1));

-- Location: LCCOMB_X38_Y71_N14
\encod|Dout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[5]~feeder_combout\ = \encod|D\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(1),
	combout => \encod|Dout[5]~feeder_combout\);

-- Location: LCCOMB_X33_Y67_N2
\encod|Dout[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[1]~2_combout\ = (\rst~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \en~input_o\,
	combout => \encod|Dout[1]~2_combout\);

-- Location: FF_X38_Y71_N15
\encod|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[5]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(5));

-- Location: IOIBUF_X45_Y73_N8
\din[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: LCCOMB_X38_Y71_N18
\encod|D[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[4]~input_o\,
	combout => \encod|D[4]~feeder_combout\);

-- Location: FF_X38_Y71_N19
\encod|D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(4));

-- Location: LCCOMB_X38_Y71_N6
\encod|Dout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[9]~feeder_combout\ = \encod|D\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(4),
	combout => \encod|Dout[9]~feeder_combout\);

-- Location: FF_X38_Y71_N7
\encod|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[9]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(9));

-- Location: IOIBUF_X42_Y73_N8
\din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X39_Y71_N0
\encod|D[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \encod|D[3]~feeder_combout\);

-- Location: FF_X39_Y71_N1
\encod|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(3));

-- Location: LCCOMB_X39_Y71_N12
\encod|Dout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[7]~feeder_combout\ = \encod|D\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(3),
	combout => \encod|Dout[7]~feeder_combout\);

-- Location: FF_X39_Y71_N13
\encod|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[7]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(7));

-- Location: IOIBUF_X40_Y73_N8
\din[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: LCCOMB_X39_Y71_N28
\encod|D[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \encod|D[0]~feeder_combout\);

-- Location: FF_X39_Y71_N29
\encod|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(0));

-- Location: LCCOMB_X39_Y71_N8
\encod|Dout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[3]~feeder_combout\ = \encod|D\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(0),
	combout => \encod|Dout[3]~feeder_combout\);

-- Location: FF_X39_Y71_N9
\encod|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[3]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(3));

-- Location: IOIBUF_X35_Y73_N15
\din[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LCCOMB_X38_Y71_N22
\encod|D[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \encod|D[6]~feeder_combout\);

-- Location: FF_X38_Y71_N23
\encod|D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(6));

-- Location: LCCOMB_X39_Y71_N10
\encod|Dout[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[11]~feeder_combout\ = \encod|D\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(6),
	combout => \encod|Dout[11]~feeder_combout\);

-- Location: FF_X39_Y71_N11
\encod|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[11]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(11));

-- Location: LCCOMB_X39_Y71_N16
\encod|Dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout~0_combout\ = \encod|Dout\(7) $ (\encod|Dout\(3) $ (\encod|Dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encod|Dout\(7),
	datab => \encod|Dout\(3),
	datad => \encod|Dout\(11),
	combout => \encod|Dout~0_combout\);

-- Location: LCCOMB_X39_Y71_N2
\encod|Dout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout~1_combout\ = \encod|Dout\(5) $ (\encod|Dout\(9) $ (\encod|Dout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encod|Dout\(5),
	datac => \encod|Dout\(9),
	datad => \encod|Dout~0_combout\,
	combout => \encod|Dout~1_combout\);

-- Location: FF_X39_Y71_N3
\encod|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout~1_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(1));

-- Location: LCCOMB_X38_Y71_N4
\encod|codeword[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[1]~feeder_combout\ = \encod|Dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(1),
	combout => \encod|codeword[1]~feeder_combout\);

-- Location: FF_X38_Y71_N5
\encod|codeword[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(1));

-- Location: IOIBUF_X35_Y73_N22
\din[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: LCCOMB_X38_Y71_N28
\encod|D[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \encod|D[5]~feeder_combout\);

-- Location: FF_X38_Y71_N29
\encod|D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(5));

-- Location: LCCOMB_X38_Y71_N8
\encod|Dout[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[10]~feeder_combout\ = \encod|D\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(5),
	combout => \encod|Dout[10]~feeder_combout\);

-- Location: FF_X38_Y71_N9
\encod|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[10]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(10));

-- Location: IOIBUF_X38_Y73_N8
\din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X38_Y71_N20
\encod|D[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|D[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \encod|D[2]~feeder_combout\);

-- Location: FF_X38_Y71_N21
\encod|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|D[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(2));

-- Location: LCCOMB_X38_Y71_N16
\encod|Dout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[6]~feeder_combout\ = \encod|D\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(2),
	combout => \encod|Dout[6]~feeder_combout\);

-- Location: FF_X38_Y71_N17
\encod|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[6]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(6));

-- Location: LCCOMB_X39_Y71_N18
\encod|Dout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout~3_combout\ = \encod|Dout\(10) $ (\encod|Dout\(6) $ (\encod|Dout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encod|Dout\(10),
	datac => \encod|Dout\(6),
	datad => \encod|Dout~0_combout\,
	combout => \encod|Dout~3_combout\);

-- Location: FF_X39_Y71_N19
\encod|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout~3_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(2));

-- Location: LCCOMB_X39_Y71_N22
\encod|codeword[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[2]~feeder_combout\ = \encod|Dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(2),
	combout => \encod|codeword[2]~feeder_combout\);

-- Location: FF_X39_Y71_N23
\encod|codeword[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(2));

-- Location: LCCOMB_X39_Y71_N26
\encod|codeword[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[3]~feeder_combout\ = \encod|Dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(3),
	combout => \encod|codeword[3]~feeder_combout\);

-- Location: FF_X39_Y71_N27
\encod|codeword[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(3));

-- Location: IOIBUF_X47_Y73_N1
\din[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: FF_X39_Y71_N21
\encod|D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[7]~input_o\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|D\(7));

-- Location: LCCOMB_X39_Y71_N6
\encod|Dout[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout[12]~feeder_combout\ = \encod|D\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|D\(7),
	combout => \encod|Dout[12]~feeder_combout\);

-- Location: FF_X39_Y71_N7
\encod|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout[12]~feeder_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(12));

-- Location: LCCOMB_X38_Y71_N24
\encod|Dout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout~4_combout\ = \encod|Dout\(12) $ (\encod|Dout\(6) $ (\encod|Dout\(7) $ (\encod|Dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encod|Dout\(12),
	datab => \encod|Dout\(6),
	datac => \encod|Dout\(7),
	datad => \encod|Dout\(5),
	combout => \encod|Dout~4_combout\);

-- Location: FF_X38_Y71_N25
\encod|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout~4_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(4));

-- Location: LCCOMB_X38_Y71_N2
\encod|codeword[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[4]~feeder_combout\ = \encod|Dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(4),
	combout => \encod|codeword[4]~feeder_combout\);

-- Location: FF_X38_Y71_N3
\encod|codeword[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(4));

-- Location: LCCOMB_X38_Y71_N0
\encod|codeword[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[5]~feeder_combout\ = \encod|Dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encod|Dout\(5),
	combout => \encod|codeword[5]~feeder_combout\);

-- Location: FF_X38_Y71_N1
\encod|codeword[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(5));

-- Location: LCCOMB_X38_Y71_N30
\encod|codeword[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[6]~feeder_combout\ = \encod|Dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(6),
	combout => \encod|codeword[6]~feeder_combout\);

-- Location: FF_X38_Y71_N31
\encod|codeword[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(6));

-- Location: LCCOMB_X39_Y71_N4
\encod|codeword[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[7]~feeder_combout\ = \encod|Dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encod|Dout\(7),
	combout => \encod|codeword[7]~feeder_combout\);

-- Location: FF_X39_Y71_N5
\encod|codeword[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(7));

-- Location: LCCOMB_X39_Y71_N24
\encod|Dout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|Dout~5_combout\ = \encod|Dout\(12) $ (\encod|Dout\(11) $ (\encod|Dout\(9) $ (\encod|Dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encod|Dout\(12),
	datab => \encod|Dout\(11),
	datac => \encod|Dout\(9),
	datad => \encod|Dout\(10),
	combout => \encod|Dout~5_combout\);

-- Location: FF_X39_Y71_N25
\encod|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|Dout~5_combout\,
	ena => \encod|Dout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|Dout\(8));

-- Location: LCCOMB_X39_Y71_N30
\encod|codeword[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[8]~feeder_combout\ = \encod|Dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(8),
	combout => \encod|codeword[8]~feeder_combout\);

-- Location: FF_X39_Y71_N31
\encod|codeword[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(8));

-- Location: LCCOMB_X38_Y71_N12
\encod|codeword[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[9]~feeder_combout\ = \encod|Dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(9),
	combout => \encod|codeword[9]~feeder_combout\);

-- Location: FF_X38_Y71_N13
\encod|codeword[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[9]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(9));

-- Location: LCCOMB_X38_Y71_N26
\encod|codeword[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[10]~feeder_combout\ = \encod|Dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \encod|Dout\(10),
	combout => \encod|codeword[10]~feeder_combout\);

-- Location: FF_X38_Y71_N27
\encod|codeword[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(10));

-- Location: FF_X39_Y71_N17
\encod|codeword[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \encod|Dout\(11),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(11));

-- Location: LCCOMB_X39_Y71_N14
\encod|codeword[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \encod|codeword[12]~feeder_combout\ = \encod|Dout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \encod|Dout\(12),
	combout => \encod|codeword[12]~feeder_combout\);

-- Location: FF_X39_Y71_N15
\encod|codeword[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \encod|codeword[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encod|codeword\(12));

-- Location: LCCOMB_X33_Y67_N12
\decod|valid~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \decod|valid~feeder_combout\ = \decod|VLD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decod|VLD~q\,
	combout => \decod|valid~feeder_combout\);

-- Location: FF_X33_Y67_N13
\decod|valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \decod|valid~feeder_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decod|valid~q\);

-- Location: IOIBUF_X11_Y73_N8
\Rx[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(0),
	o => \Rx[0]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\Rx[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(1),
	o => \Rx[1]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\Rx[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(2),
	o => \Rx[2]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\Rx[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(3),
	o => \Rx[3]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\Rx[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(4),
	o => \Rx[4]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\Rx[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(5),
	o => \Rx[5]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\Rx[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(6),
	o => \Rx[6]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\Rx[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(7),
	o => \Rx[7]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\Rx[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(8),
	o => \Rx[8]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\Rx[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(9),
	o => \Rx[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Rx[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(10),
	o => \Rx[10]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\Rx[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx(11),
	o => \Rx[11]~input_o\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_Tx(0) <= \Tx[0]~output_o\;

ww_Tx(1) <= \Tx[1]~output_o\;

ww_Tx(2) <= \Tx[2]~output_o\;

ww_Tx(3) <= \Tx[3]~output_o\;

ww_Tx(4) <= \Tx[4]~output_o\;

ww_Tx(5) <= \Tx[5]~output_o\;

ww_Tx(6) <= \Tx[6]~output_o\;

ww_Tx(7) <= \Tx[7]~output_o\;

ww_Tx(8) <= \Tx[8]~output_o\;

ww_Tx(9) <= \Tx[9]~output_o\;

ww_Tx(10) <= \Tx[10]~output_o\;

ww_Tx(11) <= \Tx[11]~output_o\;

ww_error <= \error~output_o\;

ww_valid <= \valid~output_o\;
END structure;



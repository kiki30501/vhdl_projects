// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

// DATE "05/12/2024 17:53:22"

// 
// Device: Altera EP4CE115F29C7 Package FBGA780
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module mypll (
	inclk,
	ena,
	outclk)/* synthesis synthesis_greybox=0 */;
input 	inclk;
input 	ena;
output 	outclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \altclkctrl_0|mypll_altclkctrl_0_sub_component|wire_clkctrl1_outclk ;
wire \ena~input_o ;
wire \inclk~input_o ;


mypll_mypll_altclkctrl_0 altclkctrl_0(
	.outclk(\altclkctrl_0|mypll_altclkctrl_0_sub_component|wire_clkctrl1_outclk ),
	.ena(\ena~input_o ),
	.inclk(\inclk~input_o ));

assign \ena~input_o  = ena;

assign \inclk~input_o  = inclk;

assign outclk = \altclkctrl_0|mypll_altclkctrl_0_sub_component|wire_clkctrl1_outclk ;

endmodule

module mypll_mypll_altclkctrl_0 (
	outclk,
	ena,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	outclk;
input 	ena;
input 	inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



mypll_mypll_altclkctrl_0_sub mypll_altclkctrl_0_sub_component(
	.outclk(outclk),
	.ena(ena),
	.inclk({gnd,gnd,gnd,inclk}));

endmodule

module mypll_mypll_altclkctrl_0_sub (
	outclk,
	ena,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	outclk;
input 	ena;
input 	[3:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cycloneive_clkctrl clkctrl1(
	.ena(ena),
	.inclk({gnd,gnd,gnd,inclk[0]}),
	.clkselect({gnd,gnd}),
	.outclk(outclk));
defparam clkctrl1.clock_type = "global clock";
defparam clkctrl1.ena_register_mode = "falling edge";

endmodule

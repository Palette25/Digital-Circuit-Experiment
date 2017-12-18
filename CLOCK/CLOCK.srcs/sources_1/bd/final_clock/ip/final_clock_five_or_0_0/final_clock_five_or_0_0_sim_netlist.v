// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:14:30 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_five_or_0_0/final_clock_five_or_0_0_sim_netlist.v
// Design      : final_clock_five_or_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_clock_five_or_0_0,five_or,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "five_or,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module final_clock_five_or_0_0
   (i0_0,
    i0_1,
    i1_0,
    i1_1,
    i2_0,
    i2_1,
    i3_0,
    i3_1,
    i4_0,
    i4_1,
    Y0,
    Y1,
    Y2,
    Y3,
    Y4);
  input i0_0;
  input i0_1;
  input i1_0;
  input i1_1;
  input i2_0;
  input i2_1;
  input i3_0;
  input i3_1;
  input i4_0;
  input i4_1;
  output Y0;
  output Y1;
  output Y2;
  output Y3;
  output Y4;

  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire Y4;
  wire i0_0;
  wire i0_1;
  wire i1_0;
  wire i1_1;
  wire i2_0;
  wire i2_1;
  wire i3_0;
  wire i3_1;
  wire i4_0;
  wire i4_1;

  LUT2 #(
    .INIT(4'hE)) 
    Y0_INST_0
       (.I0(i0_0),
        .I1(i0_1),
        .O(Y0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1_INST_0
       (.I0(i1_0),
        .I1(i1_1),
        .O(Y1));
  LUT2 #(
    .INIT(4'hE)) 
    Y2_INST_0
       (.I0(i2_0),
        .I1(i2_1),
        .O(Y2));
  LUT2 #(
    .INIT(4'hE)) 
    Y3_INST_0
       (.I0(i3_0),
        .I1(i3_1),
        .O(Y3));
  LUT2 #(
    .INIT(4'hE)) 
    Y4_INST_0
       (.I0(i4_0),
        .I1(i4_1),
        .O(Y4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:13:00 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_select_153_0_0_sim_netlist.v
// Design      : final_clock_select_153_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_clock_select_153_0_0,select_153,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "select_153,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i0_0,
    i0_1,
    i0_2,
    i0_3,
    i1_0,
    i1_1,
    i1_2,
    i1_3,
    i2_0,
    i2_1,
    i2_2,
    i2_3,
    i3_0,
    i3_1,
    i3_2,
    i3_3,
    A,
    B,
    Y);
  input i0_0;
  input i0_1;
  input i0_2;
  input i0_3;
  input i1_0;
  input i1_1;
  input i1_2;
  input i1_3;
  input i2_0;
  input i2_1;
  input i2_2;
  input i2_3;
  input i3_0;
  input i3_1;
  input i3_2;
  input i3_3;
  input A;
  input B;
  output [3:0]Y;

  wire A;
  wire B;
  wire [3:0]Y;
  wire i0_0;
  wire i0_1;
  wire i0_2;
  wire i0_3;
  wire i1_0;
  wire i1_1;
  wire i1_2;
  wire i1_3;
  wire i2_0;
  wire i2_1;
  wire i2_2;
  wire i2_3;
  wire i3_0;
  wire i3_1;
  wire i3_2;
  wire i3_3;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[0]_INST_0 
       (.I0(i0_3),
        .I1(i0_2),
        .I2(A),
        .I3(i0_1),
        .I4(B),
        .I5(i0_0),
        .O(Y[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[1]_INST_0 
       (.I0(i1_3),
        .I1(i1_2),
        .I2(A),
        .I3(i1_1),
        .I4(B),
        .I5(i1_0),
        .O(Y[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[2]_INST_0 
       (.I0(i2_3),
        .I1(i2_2),
        .I2(A),
        .I3(i2_1),
        .I4(B),
        .I5(i2_0),
        .O(Y[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[3]_INST_0 
       (.I0(i3_3),
        .I1(i3_2),
        .I2(A),
        .I3(i3_1),
        .I4(B),
        .I5(i3_0),
        .O(Y[3]));
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Nov 21 13:33:27 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/ip/design_1_bcd_change_0_2/design_1_bcd_change_0_2_sim_netlist.v
// Design      : design_1_bcd_change_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_bcd_change_0_2,bcd_change,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bcd_change,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_bcd_change_0_2
   (A1,
    B1,
    C1,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input A1;
  input B1;
  input C1;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire A1;
  wire B1;
  wire C1;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  LUT3 #(
    .INIT(8'h48)) 
    b_INST_0
       (.I0(C1),
        .I1(A1),
        .I2(B1),
        .O(b));
  LUT3 #(
    .INIT(8'h04)) 
    c_INST_0
       (.I0(A1),
        .I1(B1),
        .I2(C1),
        .O(c));
  LUT3 #(
    .INIT(8'h86)) 
    d_INST_0
       (.I0(C1),
        .I1(A1),
        .I2(B1),
        .O(d));
  LUT3 #(
    .INIT(8'hAE)) 
    e_INST_0
       (.I0(C1),
        .I1(A1),
        .I2(B1),
        .O(e));
  LUT3 #(
    .INIT(8'h83)) 
    g_INST_0
       (.I0(C1),
        .I1(A1),
        .I2(B1),
        .O(g));
  design_1_bcd_change_0_2_bcd_change inst
       (.A1(A1),
        .B1(B1),
        .C1(C1),
        .a(a),
        .f(f));
endmodule

(* ORIG_REF_NAME = "bcd_change" *) 
module design_1_bcd_change_0_2_bcd_change
   (a,
    f,
    C1,
    A1,
    B1);
  output a;
  output f;
  input C1;
  input A1;
  input B1;

  wire A1;
  wire B1;
  wire C1;
  wire a;
  wire f;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    a__0
       (.I0(C1),
        .I1(A1),
        .I2(B1),
        .O(a));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    f__0
       (.I0(C1),
        .I1(B1),
        .I2(A1),
        .O(f));
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

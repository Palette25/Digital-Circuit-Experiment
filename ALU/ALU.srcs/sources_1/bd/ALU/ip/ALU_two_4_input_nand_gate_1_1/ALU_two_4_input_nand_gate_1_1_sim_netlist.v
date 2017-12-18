// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Nov  2 14:46:49 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_two_4_input_nand_gate_1_1/ALU_two_4_input_nand_gate_1_1_sim_netlist.v
// Design      : ALU_two_4_input_nand_gate_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ALU_two_4_input_nand_gate_1_1,two_4_input_nand_gate,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "two_4_input_nand_gate,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module ALU_two_4_input_nand_gate_1_1
   (A1,
    B1,
    C1,
    D1,
    A2,
    B2,
    C2,
    D2,
    Y1,
    Y2);
  input A1;
  input B1;
  input C1;
  input D1;
  input A2;
  input B2;
  input C2;
  input D2;
  output Y1;
  output Y2;

  wire A1;
  wire A2;
  wire B1;
  wire B2;
  wire C1;
  wire C2;
  wire D1;
  wire D2;
  wire Y1;
  wire Y2;

  ALU_two_4_input_nand_gate_1_1_two_4_input_nand_gate inst
       (.A1(A1),
        .A2(A2),
        .B1(B1),
        .B2(B2),
        .C1(C1),
        .C2(C2),
        .D1(D1),
        .D2(D2),
        .Y1(Y1),
        .Y2(Y2));
endmodule

(* ORIG_REF_NAME = "two_4_input_nand_gate" *) 
module ALU_two_4_input_nand_gate_1_1_two_4_input_nand_gate
   (Y1,
    Y2,
    B1,
    C1,
    A1,
    D1,
    B2,
    C2,
    A2,
    D2);
  output Y1;
  output Y2;
  input B1;
  input C1;
  input A1;
  input D1;
  input B2;
  input C2;
  input A2;
  input D2;

  wire A1;
  wire A2;
  wire B1;
  wire B2;
  wire C1;
  wire C2;
  wire D1;
  wire D2;
  wire Y1;
  wire Y2;

  LUT4 #(
    .INIT(16'h7FFF)) 
    Y1__0
       (.I0(B1),
        .I1(C1),
        .I2(A1),
        .I3(D1),
        .O(Y1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    Y2__0
       (.I0(B2),
        .I1(C2),
        .I2(A2),
        .I3(D2),
        .O(Y2));
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

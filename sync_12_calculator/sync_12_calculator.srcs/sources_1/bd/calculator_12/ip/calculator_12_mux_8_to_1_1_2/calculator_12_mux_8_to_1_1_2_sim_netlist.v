// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 10 20:10:23 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top calculator_12_mux_8_to_1_1_2 -prefix
//               calculator_12_mux_8_to_1_1_2_ calculator_12_mux_8_to_1_1_0_sim_netlist.v
// Design      : calculator_12_mux_8_to_1_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calculator_12_mux_8_to_1_1_0,mux_8_to_1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mux_8_to_1,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module calculator_12_mux_8_to_1_1_2
   (S_n,
    A2,
    A1,
    A0,
    D7,
    D6,
    D5,
    D4,
    D3,
    D2,
    D1,
    D0,
    Q,
    Q_n);
  input S_n;
  input A2;
  input A1;
  input A0;
  input D7;
  input D6;
  input D5;
  input D4;
  input D3;
  input D2;
  input D1;
  input D0;
  output Q;
  output Q_n;

  wire A0;
  wire A1;
  wire A2;
  wire D0;
  wire D1;
  wire D2;
  wire D3;
  wire D4;
  wire D5;
  wire D6;
  wire D7;
  wire Q;
  wire Q_INST_0_i_1_n_0;
  wire Q_INST_0_i_2_n_0;
  wire Q_n;
  wire S_n;

  LUT4 #(
    .INIT(16'h00E2)) 
    Q_INST_0
       (.I0(Q_INST_0_i_1_n_0),
        .I1(A2),
        .I2(Q_INST_0_i_2_n_0),
        .I3(S_n),
        .O(Q));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Q_INST_0_i_1
       (.I0(D3),
        .I1(D2),
        .I2(A1),
        .I3(D1),
        .I4(A0),
        .I5(D0),
        .O(Q_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Q_INST_0_i_2
       (.I0(D7),
        .I1(D6),
        .I2(A1),
        .I3(D5),
        .I4(A0),
        .I5(D4),
        .O(Q_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hBABF)) 
    Q_n_INST_0
       (.I0(S_n),
        .I1(Q_INST_0_i_2_n_0),
        .I2(A2),
        .I3(Q_INST_0_i_1_n_0),
        .O(Q_n));
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

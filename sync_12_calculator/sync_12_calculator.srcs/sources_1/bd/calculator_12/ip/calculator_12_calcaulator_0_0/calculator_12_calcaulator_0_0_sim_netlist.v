// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 10 20:10:25 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/sync_12_calculator/sync_12_calculator.srcs/sources_1/bd/calculator_12/ip/calculator_12_calcaulator_0_0/calculator_12_calcaulator_0_0_sim_netlist.v
// Design      : calculator_12_calcaulator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "calculator_12_calcaulator_0_0,calcaulator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "calcaulator,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module calculator_12_calcaulator_0_0
   (sign,
    CLK,
    o);
  input sign;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
  output [3:0]o;

  wire CLK;
  wire [3:0]o;
  wire sign;

  calculator_12_calcaulator_0_0_calcaulator inst
       (.CLK(CLK),
        .o(o),
        .sign(sign));
endmodule

(* ORIG_REF_NAME = "calcaulator" *) 
module calculator_12_calcaulator_0_0_calcaulator
   (o,
    CLK,
    sign);
  output [3:0]o;
  input CLK;
  input sign;

  wire CLK;
  wire [3:0]o;
  wire \o[0]_i_1_n_0 ;
  wire \o[1]_i_1_n_0 ;
  wire \o[2]_i_1_n_0 ;
  wire \o[3]_i_1_n_0 ;
  wire sign;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o[0]_i_1 
       (.I0(o[0]),
        .O(\o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o[1]_i_1 
       (.I0(sign),
        .I1(o[1]),
        .I2(o[0]),
        .O(\o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBC42BD62)) 
    \o[2]_i_1 
       (.I0(sign),
        .I1(o[1]),
        .I2(o[0]),
        .I3(o[2]),
        .I4(o[3]),
        .O(\o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBEFD4022)) 
    \o[3]_i_1 
       (.I0(sign),
        .I1(o[1]),
        .I2(o[0]),
        .I3(o[2]),
        .I4(o[3]),
        .O(\o[3]_i_1_n_0 ));
  FDRE \o_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o[0]_i_1_n_0 ),
        .Q(o[0]),
        .R(1'b0));
  FDRE \o_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o[1]_i_1_n_0 ),
        .Q(o[1]),
        .R(1'b0));
  FDRE \o_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o[2]_i_1_n_0 ),
        .Q(o[2]),
        .R(1'b0));
  FDRE \o_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\o[3]_i_1_n_0 ),
        .Q(o[3]),
        .R(1'b0));
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

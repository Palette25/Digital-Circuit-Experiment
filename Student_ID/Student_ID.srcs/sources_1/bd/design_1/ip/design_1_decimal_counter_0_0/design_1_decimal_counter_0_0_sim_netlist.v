// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Nov 20 23:00:53 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/ip/design_1_decimal_counter_0_0/design_1_decimal_counter_0_0_sim_netlist.v
// Design      : design_1_decimal_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_decimal_counter_0_0,decimal_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "decimal_counter,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_decimal_counter_0_0
   (CP1_n,
    CP2_n,
    R0_1,
    R0_2,
    R9_1,
    R9_2,
    Qa,
    Qb,
    Qc,
    Qd);
  input CP1_n;
  input CP2_n;
  input R0_1;
  input R0_2;
  input R9_1;
  input R9_2;
  output Qa;
  output Qb;
  output Qc;
  output Qd;

  wire CP1_n;
  wire CP2_n;
  wire Qa;
  wire Qb;
  wire Qc;
  wire Qd;
  wire R0_1;
  wire R0_2;
  wire R9_1;
  wire R9_2;

  design_1_decimal_counter_0_0_decimal_counter inst
       (.CP1_n(CP1_n),
        .CP2_n(CP2_n),
        .Qa(Qa),
        .Qb(Qb),
        .Qc(Qc),
        .Qd(Qd),
        .R0_1(R0_1),
        .R0_2(R0_2),
        .R9_1(R9_1),
        .R9_2(R9_2));
endmodule

(* ORIG_REF_NAME = "decimal_counter" *) 
module design_1_decimal_counter_0_0_decimal_counter
   (Qc,
    Qb,
    Qa,
    Qd,
    CP1_n,
    CP2_n,
    R0_2,
    R0_1,
    R9_2,
    R9_1);
  output Qc;
  output Qb;
  output Qa;
  output Qd;
  input CP1_n;
  input CP2_n;
  input R0_2;
  input R0_1;
  input R9_2;
  input R9_1;

  wire CP1_n;
  wire CP2_n;
  wire Qa;
  wire Qb;
  wire Qc;
  wire Qd;
  wire R0_1;
  wire R0_2;
  wire R9_1;
  wire R9_2;
  wire a00_out;
  wire a_C_i_1_n_0;
  wire a_reg_C_n_0;
  wire a_reg_LDC_i_2_n_0;
  wire a_reg_LDC_n_0;
  wire a_reg_P_n_0;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_C_i_1_n_0 ;
  wire \count_reg[2]_C_n_0 ;
  wire \count_reg[2]_LDC_n_0 ;
  wire \count_reg[2]_P_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Qa_INST_0
       (.I0(a_reg_P_n_0),
        .I1(a_reg_LDC_n_0),
        .I2(a_reg_C_n_0),
        .O(Qa));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Qd_INST_0
       (.I0(\count_reg[2]_P_n_0 ),
        .I1(\count_reg[2]_LDC_n_0 ),
        .I2(\count_reg[2]_C_n_0 ),
        .O(Qd));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    a_C_i_1
       (.I0(a_reg_C_n_0),
        .I1(a_reg_LDC_n_0),
        .I2(a_reg_P_n_0),
        .O(a_C_i_1_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    a_reg_C
       (.C(CP1_n),
        .CE(1'b1),
        .CLR(a_reg_LDC_i_2_n_0),
        .D(a_C_i_1_n_0),
        .Q(a_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    a_reg_LDC
       (.CLR(a_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(a00_out),
        .GE(1'b1),
        .Q(a_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    a_reg_LDC_i_1
       (.I0(R9_1),
        .I1(R9_2),
        .O(a00_out));
  LUT4 #(
    .INIT(16'h0888)) 
    a_reg_LDC_i_2
       (.I0(R0_2),
        .I1(R0_1),
        .I2(R9_2),
        .I3(R9_1),
        .O(a_reg_LDC_i_2_n_0));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    a_reg_P
       (.C(CP1_n),
        .CE(1'b1),
        .D(a_C_i_1_n_0),
        .PRE(a00_out),
        .Q(a_reg_P_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h001D)) 
    \count[0]_i_1 
       (.I0(\count_reg[2]_C_n_0 ),
        .I1(\count_reg[2]_LDC_n_0 ),
        .I2(\count_reg[2]_P_n_0 ),
        .I3(Qb),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \count[0]_i_2 
       (.I0(R0_2),
        .I1(R0_1),
        .I2(R9_2),
        .I3(R9_1),
        .O(\count[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00066606)) 
    \count[1]_i_1 
       (.I0(Qc),
        .I1(Qb),
        .I2(\count_reg[2]_C_n_0 ),
        .I3(\count_reg[2]_LDC_n_0 ),
        .I4(\count_reg[2]_P_n_0 ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00088808)) 
    \count[2]_C_i_1 
       (.I0(Qc),
        .I1(Qb),
        .I2(\count_reg[2]_C_n_0 ),
        .I3(\count_reg[2]_LDC_n_0 ),
        .I4(\count_reg[2]_P_n_0 ),
        .O(\count[2]_C_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[0] 
       (.C(CP2_n),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(Qb));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_reg[1] 
       (.C(CP2_n),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(Qc));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg[2]_C 
       (.C(CP2_n),
        .CE(1'b1),
        .CLR(a_reg_LDC_i_2_n_0),
        .D(\count[2]_C_i_1_n_0 ),
        .Q(\count_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2]_LDC 
       (.CLR(a_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(a00_out),
        .GE(1'b1),
        .Q(\count_reg[2]_LDC_n_0 ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \count_reg[2]_P 
       (.C(CP2_n),
        .CE(1'b1),
        .D(\count[2]_C_i_1_n_0 ),
        .PRE(a00_out),
        .Q(\count_reg[2]_P_n_0 ));
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

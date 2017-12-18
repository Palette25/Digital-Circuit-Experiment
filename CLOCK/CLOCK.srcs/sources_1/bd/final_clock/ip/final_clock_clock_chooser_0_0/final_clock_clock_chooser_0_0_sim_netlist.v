// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:15:19 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_clock_chooser_0_0/final_clock_clock_chooser_0_0_sim_netlist.v
// Design      : final_clock_clock_chooser_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_clock_clock_chooser_0_0,clock_chooser,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clock_chooser,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module final_clock_clock_chooser_0_0
   (click,
    mo_0,
    mo_1,
    CLK,
    Y0,
    Y1,
    Y2,
    Y3,
    sec_clk,
    min_clk,
    hour_clk,
    day_clk,
    mon_clk,
    year_clk);
  input click;
  input mo_0;
  input mo_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
  input Y0;
  input Y1;
  input Y2;
  input Y3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sec_clk CLK" *) output sec_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 min_clk CLK" *) output min_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hour_clk CLK" *) output hour_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 day_clk CLK" *) output day_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_clk CLK" *) output mon_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 year_clk CLK" *) output year_clk;

  wire CLK;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire click;
  wire day_clk;
  wire hour_clk;
  wire min_clk;
  wire mo_0;
  wire mo_1;
  wire mon_clk;
  wire sec_clk;
  wire year_clk;

  final_clock_clock_chooser_0_0_clock_chooser inst
       (.CLK(CLK),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .click(click),
        .day_clk(day_clk),
        .hour_clk(hour_clk),
        .min_clk(min_clk),
        .mo_0(mo_0),
        .mo_1(mo_1),
        .mon_clk(mon_clk),
        .sec_clk(sec_clk),
        .year_clk(year_clk));
endmodule

(* ORIG_REF_NAME = "clock_chooser" *) 
module final_clock_clock_chooser_0_0_clock_chooser
   (sec_clk,
    min_clk,
    hour_clk,
    day_clk,
    mon_clk,
    year_clk,
    CLK,
    mo_0,
    mo_1,
    click,
    Y0,
    Y1,
    Y2,
    Y3);
  output sec_clk;
  output min_clk;
  output hour_clk;
  output day_clk;
  output mon_clk;
  output year_clk;
  input CLK;
  input mo_0;
  input mo_1;
  input click;
  input Y0;
  input Y1;
  input Y2;
  input Y3;

  wire CLK;
  wire Y0;
  wire Y1;
  wire Y2;
  wire Y3;
  wire click;
  wire day_clk;
  wire hour_clk;
  wire min_clk;
  wire mo_0;
  wire mo_1;
  wire mon_clk;
  wire sec_clk;
  wire year_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02020E02)) 
    day_clk__0
       (.I0(CLK),
        .I1(mo_0),
        .I2(mo_1),
        .I3(click),
        .I4(Y2),
        .O(day_clk));
  LUT5 #(
    .INIT(32'h02020E02)) 
    hour_clk__0
       (.I0(CLK),
        .I1(mo_1),
        .I2(mo_0),
        .I3(click),
        .I4(Y1),
        .O(hour_clk));
  LUT6 #(
    .INIT(64'h003000AA0030F0AA)) 
    min_clk__0
       (.I0(CLK),
        .I1(Y1),
        .I2(click),
        .I3(mo_1),
        .I4(mo_0),
        .I5(Y0),
        .O(min_clk));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02020E02)) 
    mon_clk__0
       (.I0(CLK),
        .I1(mo_1),
        .I2(mo_0),
        .I3(click),
        .I4(Y2),
        .O(mon_clk));
  LUT5 #(
    .INIT(32'h02020E02)) 
    sec_clk__0
       (.I0(CLK),
        .I1(mo_0),
        .I2(mo_1),
        .I3(click),
        .I4(Y0),
        .O(sec_clk));
  LUT5 #(
    .INIT(32'h02023E02)) 
    year_clk__0
       (.I0(CLK),
        .I1(mo_1),
        .I2(mo_0),
        .I3(click),
        .I4(Y3),
        .O(year_clk));
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

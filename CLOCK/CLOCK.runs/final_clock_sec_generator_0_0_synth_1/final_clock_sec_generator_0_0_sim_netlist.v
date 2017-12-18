// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:09:51 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_sec_generator_0_0_sim_netlist.v
// Design      : final_clock_sec_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_clock_sec_generator_0_0,sec_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sec_generator,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    EN,
    sec_0,
    sec_1,
    rco);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
  input EN;
  output [3:0]sec_0;
  output [3:0]sec_1;
  output rco;

  wire CLK;
  wire EN;
  wire rco;
  wire [3:0]sec_0;
  wire [3:0]sec_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator inst
       (.CLK(CLK),
        .EN(EN),
        .rco(rco),
        .\sec_0[0] (sec_0[0]),
        .\sec_0[1] (sec_0[1]),
        .\sec_0[2] (sec_0[2]),
        .\sec_0[3] (sec_0[3]),
        .sec_1(sec_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sec_generator
   (sec_1,
    \sec_0[2] ,
    \sec_0[1] ,
    \sec_0[0] ,
    \sec_0[3] ,
    rco,
    EN,
    CLK);
  output [3:0]sec_1;
  output \sec_0[2] ;
  output \sec_0[1] ;
  output \sec_0[0] ;
  output \sec_0[3] ;
  output rco;
  input EN;
  input CLK;

  wire CLK;
  wire EN;
  wire rco;
  wire \sec_0[0] ;
  wire \sec_0[1] ;
  wire \sec_0[1]_i_1_n_0 ;
  wire \sec_0[2] ;
  wire \sec_0[2]_i_1_n_0 ;
  wire \sec_0[3] ;
  wire \sec_0[3]_i_1_n_0 ;
  wire \sec_0[3]_i_2_n_0 ;
  wire sec_0_n_0;
  wire [3:0]sec_1;
  wire \sec_1[1]_i_1_n_0 ;
  wire \sec_1[2]_i_1_n_0 ;
  wire \sec_1[3]_i_1_n_0 ;
  wire \sec_1[3]_i_2_n_0 ;
  wire \sec_1[3]_i_3_n_0 ;
  wire \sec_1_inferred__0/i__n_0 ;

  LUT6 #(
    .INIT(64'h2000000000000000)) 
    rco__0
       (.I0(sec_1[0]),
        .I1(sec_1[1]),
        .I2(\sec_0[0] ),
        .I3(EN),
        .I4(sec_1[2]),
        .I5(\sec_0[3] ),
        .O(rco));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sec_0
       (.I0(\sec_0[0] ),
        .O(sec_0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sec_0[1]_i_1 
       (.I0(\sec_0[0] ),
        .I1(\sec_0[1] ),
        .O(\sec_0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sec_0[2]_i_1 
       (.I0(\sec_0[0] ),
        .I1(\sec_0[1] ),
        .I2(\sec_0[2] ),
        .O(\sec_0[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \sec_0[3]_i_1 
       (.I0(EN),
        .I1(\sec_0[2] ),
        .I2(\sec_0[1] ),
        .I3(\sec_0[0] ),
        .I4(\sec_0[3] ),
        .O(\sec_0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sec_0[3]_i_2 
       (.I0(\sec_0[1] ),
        .I1(\sec_0[0] ),
        .I2(\sec_0[2] ),
        .I3(\sec_0[3] ),
        .O(\sec_0[3]_i_2_n_0 ));
  FDRE \sec_0_reg[0] 
       (.C(CLK),
        .CE(EN),
        .D(sec_0_n_0),
        .Q(\sec_0[0] ),
        .R(\sec_0[3]_i_1_n_0 ));
  FDRE \sec_0_reg[1] 
       (.C(CLK),
        .CE(EN),
        .D(\sec_0[1]_i_1_n_0 ),
        .Q(\sec_0[1] ),
        .R(\sec_0[3]_i_1_n_0 ));
  FDRE \sec_0_reg[2] 
       (.C(CLK),
        .CE(EN),
        .D(\sec_0[2]_i_1_n_0 ),
        .Q(\sec_0[2] ),
        .R(\sec_0[3]_i_1_n_0 ));
  FDRE \sec_0_reg[3] 
       (.C(CLK),
        .CE(EN),
        .D(\sec_0[3]_i_2_n_0 ),
        .Q(\sec_0[3] ),
        .R(\sec_0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sec_1[1]_i_1 
       (.I0(sec_1[0]),
        .I1(sec_1[1]),
        .O(\sec_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sec_1[2]_i_1 
       (.I0(sec_1[0]),
        .I1(sec_1[1]),
        .I2(sec_1[2]),
        .O(\sec_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \sec_1[3]_i_1 
       (.I0(\sec_1[3]_i_2_n_0 ),
        .I1(sec_1[3]),
        .I2(sec_1[1]),
        .I3(sec_1[2]),
        .I4(sec_1[0]),
        .O(\sec_1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \sec_1[3]_i_2 
       (.I0(EN),
        .I1(\sec_0[3] ),
        .I2(\sec_0[0] ),
        .I3(\sec_0[2] ),
        .I4(\sec_0[1] ),
        .O(\sec_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sec_1[3]_i_3 
       (.I0(sec_1[1]),
        .I1(sec_1[0]),
        .I2(sec_1[2]),
        .I3(sec_1[3]),
        .O(\sec_1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sec_1_inferred__0/i_ 
       (.I0(sec_1[0]),
        .O(\sec_1_inferred__0/i__n_0 ));
  FDRE \sec_1_reg[0] 
       (.C(CLK),
        .CE(\sec_1[3]_i_2_n_0 ),
        .D(\sec_1_inferred__0/i__n_0 ),
        .Q(sec_1[0]),
        .R(\sec_1[3]_i_1_n_0 ));
  FDRE \sec_1_reg[1] 
       (.C(CLK),
        .CE(\sec_1[3]_i_2_n_0 ),
        .D(\sec_1[1]_i_1_n_0 ),
        .Q(sec_1[1]),
        .R(\sec_1[3]_i_1_n_0 ));
  FDRE \sec_1_reg[2] 
       (.C(CLK),
        .CE(\sec_1[3]_i_2_n_0 ),
        .D(\sec_1[2]_i_1_n_0 ),
        .Q(sec_1[2]),
        .R(\sec_1[3]_i_1_n_0 ));
  FDRE \sec_1_reg[3] 
       (.C(CLK),
        .CE(\sec_1[3]_i_2_n_0 ),
        .D(\sec_1[3]_i_3_n_0 ),
        .Q(sec_1[3]),
        .R(\sec_1[3]_i_1_n_0 ));
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

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:10:47 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_year_generator_0_0_sim_netlist.v
// Design      : final_clock_year_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_clock_year_generator_0_0,year_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "year_generator,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    EN,
    year_0,
    year_1,
    year_2,
    year_3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) input CLK;
  input EN;
  output [3:0]year_0;
  output [3:0]year_1;
  output [3:0]year_2;
  output [3:0]year_3;

  wire CLK;
  wire EN;
  wire [3:0]year_0;
  wire [3:0]year_1;
  wire [3:0]year_2;
  wire [3:0]year_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_year_generator inst
       (.CLK(CLK),
        .EN(EN),
        .\year_0[0] (year_0[0]),
        .\year_0[1] (year_0[1]),
        .\year_0[2] (year_0[2]),
        .\year_0[3] (year_0[3]),
        .\year_1[0] (year_1[0]),
        .\year_1[1] (year_1[1]),
        .\year_1[2] (year_1[2]),
        .\year_1[3] (year_1[3]),
        .year_2(year_2),
        .year_3(year_3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_year_generator
   (\year_0[3] ,
    \year_0[2] ,
    \year_0[1] ,
    \year_0[0] ,
    \year_1[3] ,
    \year_1[2] ,
    \year_1[1] ,
    \year_1[0] ,
    year_2,
    year_3,
    EN,
    CLK);
  output \year_0[3] ;
  output \year_0[2] ;
  output \year_0[1] ;
  output \year_0[0] ;
  output \year_1[3] ;
  output \year_1[2] ;
  output \year_1[1] ;
  output \year_1[0] ;
  output [3:0]year_2;
  output [3:0]year_3;
  input EN;
  input CLK;

  wire CLK;
  wire EN;
  wire [3:0]p_0_in;
  wire \year_0[0] ;
  wire \year_0[0]_i_1_n_0 ;
  wire \year_0[1] ;
  wire \year_0[1]_i_1_n_0 ;
  wire \year_0[2] ;
  wire \year_0[2]_i_1_n_0 ;
  wire \year_0[3] ;
  wire \year_0[3]_i_1_n_0 ;
  wire \year_0[3]_i_2_n_0 ;
  wire \year_1[0] ;
  wire \year_1[0]_i_1_n_0 ;
  wire \year_1[1] ;
  wire \year_1[1]_i_1_n_0 ;
  wire \year_1[2] ;
  wire \year_1[2]_i_1_n_0 ;
  wire \year_1[3] ;
  wire \year_1[3]_i_1_n_0 ;
  wire \year_1[3]_i_2_n_0 ;
  wire \year_1[3]_i_3_n_0 ;
  wire [3:0]year_2;
  wire \year_2[0]_i_1_n_0 ;
  wire \year_2[1]_i_1_n_0 ;
  wire \year_2[2]_i_1_n_0 ;
  wire \year_2[3]_i_1_n_0 ;
  wire \year_2[3]_i_2_n_0 ;
  wire \year_2[3]_i_3_n_0 ;
  wire \year_2[3]_i_4_n_0 ;
  wire \year_2[3]_i_5_n_0 ;
  wire \year_2[3]_i_6_n_0 ;
  wire [3:0]year_3;
  wire \year_3[3]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \year_0[0]_i_1 
       (.I0(\year_0[0] ),
        .O(\year_0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \year_0[1]_i_1 
       (.I0(\year_0[0] ),
        .I1(\year_0[1] ),
        .O(\year_0[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \year_0[2]_i_1 
       (.I0(\year_0[0] ),
        .I1(\year_0[1] ),
        .I2(\year_0[2] ),
        .O(\year_0[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \year_0[3]_i_1 
       (.I0(\year_0[0] ),
        .I1(\year_0[3] ),
        .I2(\year_0[1] ),
        .I3(\year_0[2] ),
        .I4(EN),
        .O(\year_0[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \year_0[3]_i_2 
       (.I0(\year_0[1] ),
        .I1(\year_0[0] ),
        .I2(\year_0[2] ),
        .I3(\year_0[3] ),
        .O(\year_0[3]_i_2_n_0 ));
  FDRE \year_0_reg[0] 
       (.C(CLK),
        .CE(EN),
        .D(\year_0[0]_i_1_n_0 ),
        .Q(\year_0[0] ),
        .R(\year_0[3]_i_1_n_0 ));
  FDRE \year_0_reg[1] 
       (.C(CLK),
        .CE(EN),
        .D(\year_0[1]_i_1_n_0 ),
        .Q(\year_0[1] ),
        .R(\year_0[3]_i_1_n_0 ));
  FDRE \year_0_reg[2] 
       (.C(CLK),
        .CE(EN),
        .D(\year_0[2]_i_1_n_0 ),
        .Q(\year_0[2] ),
        .R(\year_0[3]_i_1_n_0 ));
  FDRE \year_0_reg[3] 
       (.C(CLK),
        .CE(EN),
        .D(\year_0[3]_i_2_n_0 ),
        .Q(\year_0[3] ),
        .R(\year_0[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \year_1[0]_i_1 
       (.I0(\year_1[0] ),
        .O(\year_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \year_1[1]_i_1 
       (.I0(\year_1[0] ),
        .I1(\year_1[1] ),
        .O(\year_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \year_1[2]_i_1 
       (.I0(\year_1[0] ),
        .I1(\year_1[1] ),
        .I2(\year_1[2] ),
        .O(\year_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \year_1[3]_i_1 
       (.I0(\year_1[0] ),
        .I1(\year_1[3] ),
        .I2(\year_1[1] ),
        .I3(\year_1[2] ),
        .I4(\year_1[3]_i_2_n_0 ),
        .O(\year_1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \year_1[3]_i_2 
       (.I0(EN),
        .I1(\year_0[0] ),
        .I2(\year_0[3] ),
        .I3(\year_0[1] ),
        .I4(\year_0[2] ),
        .O(\year_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \year_1[3]_i_3 
       (.I0(\year_1[1] ),
        .I1(\year_1[0] ),
        .I2(\year_1[2] ),
        .I3(\year_1[3] ),
        .O(\year_1[3]_i_3_n_0 ));
  FDRE \year_1_reg[0] 
       (.C(CLK),
        .CE(\year_1[3]_i_2_n_0 ),
        .D(\year_1[0]_i_1_n_0 ),
        .Q(\year_1[0] ),
        .R(\year_1[3]_i_1_n_0 ));
  FDRE \year_1_reg[1] 
       (.C(CLK),
        .CE(\year_1[3]_i_2_n_0 ),
        .D(\year_1[1]_i_1_n_0 ),
        .Q(\year_1[1] ),
        .R(\year_1[3]_i_1_n_0 ));
  FDRE \year_1_reg[2] 
       (.C(CLK),
        .CE(\year_1[3]_i_2_n_0 ),
        .D(\year_1[2]_i_1_n_0 ),
        .Q(\year_1[2] ),
        .R(\year_1[3]_i_1_n_0 ));
  FDRE \year_1_reg[3] 
       (.C(CLK),
        .CE(\year_1[3]_i_2_n_0 ),
        .D(\year_1[3]_i_3_n_0 ),
        .Q(\year_1[3] ),
        .R(\year_1[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \year_2[0]_i_1 
       (.I0(year_2[0]),
        .O(\year_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \year_2[1]_i_1 
       (.I0(year_2[0]),
        .I1(year_2[1]),
        .O(\year_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \year_2[2]_i_1 
       (.I0(year_2[0]),
        .I1(year_2[1]),
        .I2(year_2[2]),
        .O(\year_2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \year_2[3]_i_1 
       (.I0(\year_2[3]_i_4_n_0 ),
        .I1(\year_2[3]_i_5_n_0 ),
        .I2(\year_2[3]_i_6_n_0 ),
        .I3(EN),
        .O(\year_2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \year_2[3]_i_2 
       (.I0(EN),
        .I1(\year_1[2] ),
        .I2(\year_1[1] ),
        .I3(\year_1[3] ),
        .I4(\year_1[0] ),
        .I5(\year_2[3]_i_5_n_0 ),
        .O(\year_2[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \year_2[3]_i_3 
       (.I0(year_2[1]),
        .I1(year_2[0]),
        .I2(year_2[2]),
        .I3(year_2[3]),
        .O(\year_2[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \year_2[3]_i_4 
       (.I0(year_2[2]),
        .I1(year_2[1]),
        .I2(year_2[3]),
        .I3(year_2[0]),
        .O(\year_2[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \year_2[3]_i_5 
       (.I0(\year_0[2] ),
        .I1(\year_0[1] ),
        .I2(\year_0[3] ),
        .I3(\year_0[0] ),
        .O(\year_2[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \year_2[3]_i_6 
       (.I0(\year_1[2] ),
        .I1(\year_1[1] ),
        .I2(\year_1[3] ),
        .I3(\year_1[0] ),
        .O(\year_2[3]_i_6_n_0 ));
  FDRE \year_2_reg[0] 
       (.C(CLK),
        .CE(\year_2[3]_i_2_n_0 ),
        .D(\year_2[0]_i_1_n_0 ),
        .Q(year_2[0]),
        .R(\year_2[3]_i_1_n_0 ));
  FDRE \year_2_reg[1] 
       (.C(CLK),
        .CE(\year_2[3]_i_2_n_0 ),
        .D(\year_2[1]_i_1_n_0 ),
        .Q(year_2[1]),
        .R(\year_2[3]_i_1_n_0 ));
  FDRE \year_2_reg[2] 
       (.C(CLK),
        .CE(\year_2[3]_i_2_n_0 ),
        .D(\year_2[2]_i_1_n_0 ),
        .Q(year_2[2]),
        .R(\year_2[3]_i_1_n_0 ));
  FDRE \year_2_reg[3] 
       (.C(CLK),
        .CE(\year_2[3]_i_2_n_0 ),
        .D(\year_2[3]_i_3_n_0 ),
        .Q(year_2[3]),
        .R(\year_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \year_3[0]_i_1 
       (.I0(year_3[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \year_3[1]_i_1 
       (.I0(year_3[0]),
        .I1(year_3[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \year_3[2]_i_1 
       (.I0(year_3[0]),
        .I1(year_3[1]),
        .I2(year_3[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \year_3[3]_i_1 
       (.I0(EN),
        .I1(\year_2[3]_i_6_n_0 ),
        .I2(\year_2[3]_i_4_n_0 ),
        .I3(\year_2[3]_i_5_n_0 ),
        .O(\year_3[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \year_3[3]_i_2 
       (.I0(year_3[1]),
        .I1(year_3[0]),
        .I2(year_3[2]),
        .I3(year_3[3]),
        .O(p_0_in[3]));
  FDRE \year_3_reg[0] 
       (.C(CLK),
        .CE(\year_3[3]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(year_3[0]),
        .R(1'b0));
  FDRE \year_3_reg[1] 
       (.C(CLK),
        .CE(\year_3[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(year_3[1]),
        .R(1'b0));
  FDRE \year_3_reg[2] 
       (.C(CLK),
        .CE(\year_3[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(year_3[2]),
        .R(1'b0));
  FDRE \year_3_reg[3] 
       (.C(CLK),
        .CE(\year_3[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(year_3[3]),
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

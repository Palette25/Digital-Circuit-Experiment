// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:15:18 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_clock_clock_chooser_0_0_stub.v
// Design      : final_clock_clock_chooser_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clock_chooser,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(click, mo_0, mo_1, CLK, Y0, Y1, Y2, Y3, sec_clk, min_clk, 
  hour_clk, day_clk, mon_clk, year_clk)
/* synthesis syn_black_box black_box_pad_pin="click,mo_0,mo_1,CLK,Y0,Y1,Y2,Y3,sec_clk,min_clk,hour_clk,day_clk,mon_clk,year_clk" */;
  input click;
  input mo_0;
  input mo_1;
  input CLK;
  input Y0;
  input Y1;
  input Y2;
  input Y3;
  output sec_clk;
  output min_clk;
  output hour_clk;
  output day_clk;
  output mon_clk;
  output year_clk;
endmodule

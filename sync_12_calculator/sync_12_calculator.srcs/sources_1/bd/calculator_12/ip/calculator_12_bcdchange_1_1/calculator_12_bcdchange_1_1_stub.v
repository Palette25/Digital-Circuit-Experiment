// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 10 20:12:11 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/VivadoProjects/sync_12_calculator/sync_12_calculator.srcs/sources_1/bd/calculator_12/ip/calculator_12_bcdchange_1_1/calculator_12_bcdchange_1_1_stub.v
// Design      : calculator_12_bcdchange_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bcdchange,Vivado 2017.2" *)
module calculator_12_bcdchange_1_1(t0, t1, t2, t3, a, b, c, d, e, f, g)
/* synthesis syn_black_box black_box_pad_pin="t0,t1,t2,t3,a,b,c,d,e,f,g" */;
  input t0;
  input t1;
  input t2;
  input t3;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
endmodule

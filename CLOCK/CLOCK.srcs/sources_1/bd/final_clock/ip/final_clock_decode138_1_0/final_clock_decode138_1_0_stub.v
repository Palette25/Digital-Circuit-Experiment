// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec 15 12:33:26 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top final_clock_decode138_1_0 -prefix
//               final_clock_decode138_1_0_ final_clock_decode138_0_0_stub.v
// Design      : final_clock_decode138_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "decode138,Vivado 2017.2" *)
module final_clock_decode138_1_0(A0, A1, A2, E1, E2_n, E3_n, Y0_n, Y1_n, Y2_n, Y3_n, Y4_n, Y5_n, 
  Y6_n, Y7_n)
/* synthesis syn_black_box black_box_pad_pin="A0,A1,A2,E1,E2_n,E3_n,Y0_n,Y1_n,Y2_n,Y3_n,Y4_n,Y5_n,Y6_n,Y7_n" */;
  input A0;
  input A1;
  input A2;
  input E1;
  input E2_n;
  input E3_n;
  output Y0_n;
  output Y1_n;
  output Y2_n;
  output Y3_n;
  output Y4_n;
  output Y5_n;
  output Y6_n;
  output Y7_n;
endmodule

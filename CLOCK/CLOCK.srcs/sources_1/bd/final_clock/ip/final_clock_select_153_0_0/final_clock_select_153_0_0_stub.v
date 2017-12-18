// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:13:00 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_select_153_0_0/final_clock_select_153_0_0_stub.v
// Design      : final_clock_select_153_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "select_153,Vivado 2017.2" *)
module final_clock_select_153_0_0(i0_0, i0_1, i0_2, i0_3, i1_0, i1_1, i1_2, i1_3, i2_0, i2_1, 
  i2_2, i2_3, i3_0, i3_1, i3_2, i3_3, A, B, Y)
/* synthesis syn_black_box black_box_pad_pin="i0_0,i0_1,i0_2,i0_3,i1_0,i1_1,i1_2,i1_3,i2_0,i2_1,i2_2,i2_3,i3_0,i3_1,i3_2,i3_3,A,B,Y[3:0]" */;
  input i0_0;
  input i0_1;
  input i0_2;
  input i0_3;
  input i1_0;
  input i1_1;
  input i1_2;
  input i1_3;
  input i2_0;
  input i2_1;
  input i2_2;
  input i2_3;
  input i3_0;
  input i3_1;
  input i3_2;
  input i3_3;
  input A;
  input B;
  output [3:0]Y;
endmodule

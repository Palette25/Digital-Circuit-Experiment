// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 17 13:14:30 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/CLOCK/CLOCK.srcs/sources_1/bd/final_clock/ip/final_clock_data_chooser_4_0/final_clock_data_chooser_4_0_stub.v
// Design      : final_clock_data_chooser_4_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_chooser,Vivado 2017.2" *)
module final_clock_data_chooser_4_0(in0, in1, ar0, ar1, ar2, ar3, Y)
/* synthesis syn_black_box black_box_pad_pin="in0,in1,ar0[3:0],ar1[3:0],ar2[3:0],ar3[3:0],Y[3:0]" */;
  input in0;
  input in1;
  input [3:0]ar0;
  input [3:0]ar1;
  input [3:0]ar2;
  input [3:0]ar3;
  output [3:0]Y;
endmodule

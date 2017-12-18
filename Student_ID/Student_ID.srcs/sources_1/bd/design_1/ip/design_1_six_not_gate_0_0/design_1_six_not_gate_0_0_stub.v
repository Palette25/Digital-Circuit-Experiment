// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Nov 21 01:05:14 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/ip/design_1_six_not_gate_0_0/design_1_six_not_gate_0_0_stub.v
// Design      : design_1_six_not_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "six_not_gate,Vivado 2017.2" *)
module design_1_six_not_gate_0_0(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6)
/* synthesis syn_black_box black_box_pad_pin="A1,A2,A3,A4,A5,A6,Y1,Y2,Y3,Y4,Y5,Y6" */;
  input A1;
  input A2;
  input A3;
  input A4;
  input A5;
  input A6;
  output Y1;
  output Y2;
  output Y3;
  output Y4;
  output Y5;
  output Y6;
endmodule

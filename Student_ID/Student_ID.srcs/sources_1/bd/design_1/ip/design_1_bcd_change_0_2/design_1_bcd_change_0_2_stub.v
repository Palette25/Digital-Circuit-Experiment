// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Nov 21 13:33:27 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/Student_ID/Student_ID.srcs/sources_1/bd/design_1/ip/design_1_bcd_change_0_2/design_1_bcd_change_0_2_stub.v
// Design      : design_1_bcd_change_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bcd_change,Vivado 2017.2" *)
module design_1_bcd_change_0_2(A1, B1, C1, a, b, c, d, e, f, g)
/* synthesis syn_black_box black_box_pad_pin="A1,B1,C1,a,b,c,d,e,f,g" */;
  input A1;
  input B1;
  input C1;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
endmodule

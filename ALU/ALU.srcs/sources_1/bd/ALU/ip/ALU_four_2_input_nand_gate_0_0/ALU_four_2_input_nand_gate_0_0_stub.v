// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Nov  2 14:47:25 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/ALU/ALU.srcs/sources_1/bd/ALU/ip/ALU_four_2_input_nand_gate_0_0/ALU_four_2_input_nand_gate_0_0_stub.v
// Design      : ALU_four_2_input_nand_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "four_2_input_nand_gate,Vivado 2017.2" *)
module ALU_four_2_input_nand_gate_0_0(A1, B1, Y1, A2, B2, Y2, A3, B3, Y3, A4, B4, Y4)
/* synthesis syn_black_box black_box_pad_pin="A1,B1,Y1,A2,B2,Y2,A3,B3,Y3,A4,B4,Y4" */;
  input A1;
  input B1;
  output Y1;
  input A2;
  input B2;
  output Y2;
  input A3;
  input B3;
  output Y3;
  input A4;
  input B4;
  output Y4;
endmodule

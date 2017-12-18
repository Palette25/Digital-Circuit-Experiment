// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Dec 10 20:10:23 2017
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top calculator_12_mux_8_to_1_1_1 -prefix
//               calculator_12_mux_8_to_1_1_1_ calculator_12_mux_8_to_1_1_0_stub.v
// Design      : calculator_12_mux_8_to_1_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux_8_to_1,Vivado 2017.2" *)
module calculator_12_mux_8_to_1_1_1(S_n, A2, A1, A0, D7, D6, D5, D4, D3, D2, D1, D0, Q, Q_n)
/* synthesis syn_black_box black_box_pad_pin="S_n,A2,A1,A0,D7,D6,D5,D4,D3,D2,D1,D0,Q,Q_n" */;
  input S_n;
  input A2;
  input A1;
  input A0;
  input D7;
  input D6;
  input D5;
  input D4;
  input D3;
  input D2;
  input D1;
  input D0;
  output Q;
  output Q_n;
endmodule

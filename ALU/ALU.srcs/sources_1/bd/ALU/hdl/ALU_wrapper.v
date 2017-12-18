//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Thu Nov  2 20:03:29 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target ALU_wrapper.bd
//Design      : ALU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU_wrapper
   (A,
    B,
    C,
    Q0,
    Q1,
    S0,
    S1,
    S2);
  input A;
  input B;
  input C;
  output Q0;
  output Q1;
  input S0;
  input S1;
  input S2;

  wire A;
  wire B;
  wire C;
  wire Q0;
  wire Q1;
  wire S0;
  wire S1;
  wire S2;

  ALU ALU_i
       (.A(A),
        .B(B),
        .C(C),
        .Q0(Q0),
        .Q1(Q1),
        .S0(S0),
        .S1(S1),
        .S2(S2));
endmodule

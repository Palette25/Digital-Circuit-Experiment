//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Thu Nov  2 20:03:29 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target ALU.bd
//Design      : ALU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ALU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ALU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ALU.hwdef" *) 
module ALU
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

  wire A_1;
  wire B_1;
  wire C_1;
  wire GROUND_0_o;
  wire HIGH_0_o;
  wire Q0;
  wire Q1;
  wire S0;
  wire S1;
  wire S2;
  wire XOR_0_o;
  wire decode138_0_Y1_n;
  wire decode138_0_Y2_n;
  wire decode138_0_Y3_n;
  wire decode138_0_Y4_n;
  wire decode138_0_Y7_n;
  wire decode138_1_Y1_n;
  wire decode138_1_Y2_n;
  wire decode138_1_Y3_n;
  wire decode138_1_Y4_n;
  wire decode138_1_Y5_n;
  wire decode138_1_Y6_n;
  wire decode138_1_Y7_n;
  wire four_2_input_and_gate_0_Y1;
  wire four_2_input_nand_gate_0_Y1;
  wire four_2_input_nand_gate_0_Y2;
  wire four_2_input_nand_gate_1_Y1;
  wire four_2_input_or_gate_0_Y1;
  wire two_4_input_nand_gate_0_Y1;
  wire two_4_input_nand_gate_0_Y2;
  wire two_4_input_nand_gate_1_Y1;
  wire two_4_input_nand_gate_1_Y2;

  assign A_1 = A;
  assign B_1 = B;
  assign C_1 = C;
  ALU_GROUND_0_0 GROUND_0
       (.o(GROUND_0_o));
  ALU_HIGH_0_0 HIGH_0
       (.o(HIGH_0_o));
  ALU_XOR_0_0 XOR_0
       (.In1(A_1),
        .In2(B_1),
        .o(XOR_0_o));
  ALU_decode138_0_0 decode138_0
       (.A0(C_1),
        .A1(B_1),
        .A2(A_1),
        .E1(HIGH_0_o),
        .E2_n(GROUND_0_o),
        .E3_n(GROUND_0_o),
        .Y1_n(decode138_0_Y1_n),
        .Y2_n(decode138_0_Y2_n),
        .Y3_n(decode138_0_Y3_n),
        .Y4_n(decode138_0_Y4_n),
        .Y7_n(decode138_0_Y7_n));
  ALU_decode138_1_0 decode138_1
       (.A0(C_1),
        .A1(B_1),
        .A2(A_1),
        .E1(HIGH_0_o),
        .E2_n(GROUND_0_o),
        .E3_n(GROUND_0_o),
        .Y1_n(decode138_1_Y1_n),
        .Y2_n(decode138_1_Y2_n),
        .Y3_n(decode138_1_Y3_n),
        .Y4_n(decode138_1_Y4_n),
        .Y5_n(decode138_1_Y5_n),
        .Y6_n(decode138_1_Y6_n),
        .Y7_n(decode138_1_Y7_n));
  ALU_four_2_input_and_gate_0_0 four_2_input_and_gate_0
       (.A1(A_1),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .B1(B_1),
        .B2(1'b0),
        .B3(1'b0),
        .B4(1'b0),
        .Y1(four_2_input_and_gate_0_Y1));
  ALU_four_2_input_nand_gate_0_0 four_2_input_nand_gate_0
       (.A1(A_1),
        .A2(B_1),
        .A3(1'b0),
        .A4(1'b0),
        .B1(A_1),
        .B2(B_1),
        .B3(1'b0),
        .B4(1'b0),
        .Y1(four_2_input_nand_gate_0_Y1),
        .Y2(four_2_input_nand_gate_0_Y2));
  ALU_four_2_input_nand_gate_1_0 four_2_input_nand_gate_1
       (.A1(Q0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .B1(Q0),
        .B2(1'b0),
        .B3(1'b0),
        .B4(1'b0),
        .Y1(four_2_input_nand_gate_1_Y1));
  ALU_four_2_input_or_gate_0_0 four_2_input_or_gate_0
       (.A1(A_1),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .B1(B_1),
        .B2(1'b0),
        .B3(1'b0),
        .B4(1'b0),
        .Y1(four_2_input_or_gate_0_Y1));
  ALU_mux_8_to_1_0_0 mux_8_to_1_0
       (.A0(S0),
        .A1(S1),
        .A2(S2),
        .D0(four_2_input_nand_gate_1_Y1),
        .D1(four_2_input_nand_gate_1_Y1),
        .D2(four_2_input_nand_gate_1_Y1),
        .D3(four_2_input_nand_gate_1_Y1),
        .D4(four_2_input_nand_gate_1_Y1),
        .D5(two_4_input_nand_gate_0_Y2),
        .D6(two_4_input_nand_gate_1_Y2),
        .D7(GROUND_0_o),
        .Q(Q1),
        .S_n(GROUND_0_o));
  ALU_mux_8_to_1_1_0 mux_8_to_1_1
       (.A0(S0),
        .A1(S1),
        .A2(S2),
        .D0(four_2_input_and_gate_0_Y1),
        .D1(four_2_input_or_gate_0_Y1),
        .D2(four_2_input_nand_gate_0_Y1),
        .D3(four_2_input_nand_gate_0_Y2),
        .D4(XOR_0_o),
        .D5(two_4_input_nand_gate_0_Y1),
        .D6(two_4_input_nand_gate_1_Y1),
        .D7(GROUND_0_o),
        .Q(Q0),
        .S_n(GROUND_0_o));
  ALU_two_4_input_nand_gate_0_0 two_4_input_nand_gate_0
       (.A1(decode138_1_Y1_n),
        .A2(decode138_1_Y3_n),
        .B1(decode138_1_Y2_n),
        .B2(decode138_1_Y5_n),
        .C1(decode138_1_Y4_n),
        .C2(decode138_1_Y6_n),
        .D1(decode138_1_Y7_n),
        .D2(decode138_1_Y7_n),
        .Y1(two_4_input_nand_gate_0_Y1),
        .Y2(two_4_input_nand_gate_0_Y2));
  ALU_two_4_input_nand_gate_1_1 two_4_input_nand_gate_1
       (.A1(decode138_0_Y1_n),
        .A2(decode138_0_Y1_n),
        .B1(decode138_0_Y2_n),
        .B2(decode138_0_Y2_n),
        .C1(decode138_0_Y4_n),
        .C2(decode138_0_Y3_n),
        .D1(decode138_0_Y7_n),
        .D2(decode138_0_Y7_n),
        .Y1(two_4_input_nand_gate_1_Y1),
        .Y2(two_4_input_nand_gate_1_Y2));
endmodule

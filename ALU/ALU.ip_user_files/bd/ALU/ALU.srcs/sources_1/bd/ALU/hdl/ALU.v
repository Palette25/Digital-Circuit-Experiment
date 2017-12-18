//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Wed Nov  1 23:50:52 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target ALU.bd
//Design      : ALU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ALU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ALU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ALU.hwdef" *) 
module ALU
   (A0,
    A1,
    A2);
  input A0;
  input A1;
  input A2;

  wire A0_1;
  wire A1_1;
  wire A2_1;
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
  wire two_4_input_nand_gate_0_Y1;
  wire two_4_input_nand_gate_0_Y2;
  wire two_4_input_nand_gate_1_Y1;
  wire two_4_input_nand_gate_1_Y2;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  ALU_decode138_0_0 decode138_0
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .E1(1'b0),
        .E2_n(1'b0),
        .E3_n(1'b0),
        .Y1_n(decode138_0_Y1_n),
        .Y2_n(decode138_0_Y2_n),
        .Y3_n(decode138_0_Y3_n),
        .Y4_n(decode138_0_Y4_n),
        .Y7_n(decode138_0_Y7_n));
  ALU_decode138_1_0 decode138_1
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .E1(1'b0),
        .E2_n(1'b0),
        .E3_n(1'b0),
        .Y1_n(decode138_1_Y1_n),
        .Y2_n(decode138_1_Y2_n),
        .Y3_n(decode138_1_Y3_n),
        .Y4_n(decode138_1_Y4_n),
        .Y5_n(decode138_1_Y5_n),
        .Y6_n(decode138_1_Y6_n),
        .Y7_n(decode138_1_Y7_n));
  ALU_mux_8_to_1_0_0 mux_8_to_1_0
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .D0(1'b0),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(two_4_input_nand_gate_0_Y2),
        .D6(two_4_input_nand_gate_1_Y2),
        .D7(1'b0),
        .S_n(1'b0));
  ALU_mux_8_to_1_1_0 mux_8_to_1_1
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .D0(1'b0),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(two_4_input_nand_gate_0_Y1),
        .D6(two_4_input_nand_gate_1_Y1),
        .D7(1'b0),
        .S_n(1'b0));
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

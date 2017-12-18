//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Tue Nov 21 13:39:56 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    o1,
    o2,
    o3,
    o4,
    switch);
  input CLK;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output o1;
  output o2;
  output o3;
  output o4;
  input switch;

  wire Ground_0_o;
  wire Ground_1_o;
  wire bcd_change_0_a;
  wire bcd_change_0_b;
  wire bcd_change_0_c;
  wire bcd_change_0_d;
  wire bcd_change_0_e;
  wire bcd_change_0_f;
  wire bcd_change_0_g;
  wire clk_div_0_clk_out;
  wire clk_in_1;
  wire decimal_counter_0_Qa;
  wire decimal_counter_0_Qb;
  wire decimal_counter_0_Qc;
  wire decimal_counter_0_Qd;
  wire decode138_0_Y1_n;
  wire decode138_0_Y3_n;
  wire decode138_0_Y4_n;
  wire decode138_0_Y6_n;
  wire decode138_1_Y0_n;
  wire decode138_1_Y2_n;
  wire decode138_1_Y3_n;
  wire nxor_0_o;
  wire nxor_1_o;
  wire nxor_2_o;
  wire nxor_3_o;
  wire six_not_gate_0_Y1;
  wire switch_1;

  assign a = bcd_change_0_a;
  assign b = bcd_change_0_b;
  assign c = bcd_change_0_c;
  assign clk_in_1 = CLK;
  assign d = bcd_change_0_d;
  assign e = bcd_change_0_e;
  assign f = bcd_change_0_f;
  assign g = bcd_change_0_g;
  assign o1 = nxor_0_o;
  assign o2 = nxor_1_o;
  assign o3 = nxor_2_o;
  assign o4 = nxor_3_o;
  assign switch_1 = switch;
  design_1_Ground_0_2 Ground_0
       (.o(Ground_0_o));
  design_1_Ground_1_1 Ground_1
       (.o(Ground_1_o));
  design_1_bcd_change_0_2 bcd_change_0
       (.A1(decimal_counter_0_Qc),
        .B1(decimal_counter_0_Qb),
        .C1(decimal_counter_0_Qa),
        .a(bcd_change_0_a),
        .b(bcd_change_0_b),
        .c(bcd_change_0_c),
        .d(bcd_change_0_d),
        .e(bcd_change_0_e),
        .f(bcd_change_0_f),
        .g(bcd_change_0_g));
  design_1_clk_div_0_0 clk_div_0
       (.clk_in(clk_in_1),
        .clk_out(clk_div_0_clk_out));
  design_1_decimal_counter_0_0 decimal_counter_0
       (.CP1_n(clk_div_0_clk_out),
        .CP2_n(decimal_counter_0_Qa),
        .Qa(decimal_counter_0_Qa),
        .Qb(decimal_counter_0_Qb),
        .Qc(decimal_counter_0_Qc),
        .Qd(decimal_counter_0_Qd),
        .R0_1(decimal_counter_0_Qd),
        .R0_2(decimal_counter_0_Qd),
        .R9_1(Ground_0_o),
        .R9_2(Ground_0_o));
  design_1_decode138_0_0 decode138_0
       (.A0(decimal_counter_0_Qa),
        .A1(decimal_counter_0_Qb),
        .A2(decimal_counter_0_Qc),
        .E1(switch_1),
        .E2_n(Ground_1_o),
        .E3_n(Ground_1_o),
        .Y1_n(decode138_0_Y1_n),
        .Y3_n(decode138_0_Y3_n),
        .Y4_n(decode138_0_Y4_n),
        .Y6_n(decode138_0_Y6_n));
  design_1_decode138_1_0 decode138_1
       (.A0(decimal_counter_0_Qa),
        .A1(decimal_counter_0_Qb),
        .A2(decimal_counter_0_Qc),
        .E1(six_not_gate_0_Y1),
        .E2_n(Ground_1_o),
        .E3_n(Ground_1_o),
        .Y0_n(decode138_1_Y0_n),
        .Y2_n(decode138_1_Y2_n),
        .Y3_n(decode138_1_Y3_n));
  design_1_nxor_0_0 nxor_0
       (.a(decode138_0_Y1_n),
        .b(decode138_1_Y0_n),
        .o(nxor_0_o));
  design_1_nxor_1_0 nxor_1
       (.a(decode138_0_Y6_n),
        .b(decode138_1_Y0_n),
        .o(nxor_1_o));
  design_1_nxor_2_0 nxor_2
       (.a(decode138_0_Y3_n),
        .b(decode138_1_Y2_n),
        .o(nxor_2_o));
  design_1_nxor_3_0 nxor_3
       (.a(decode138_0_Y4_n),
        .b(decode138_1_Y3_n),
        .o(nxor_3_o));
  design_1_six_not_gate_0_0 six_not_gate_0
       (.A1(switch_1),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .A5(1'b0),
        .A6(1'b0),
        .Y1(six_not_gate_0_Y1));
endmodule

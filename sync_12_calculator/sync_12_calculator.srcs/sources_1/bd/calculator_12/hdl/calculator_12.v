//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sun Dec 10 20:52:07 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target calculator_12.bd
//Design      : calculator_12
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "calculator_12,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=calculator_12,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=21,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "calculator_12.hwdef" *) 
module calculator_12
   (CLK,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    k4,
    sign,
    u2,
    u4,
    w4);
  input CLK;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output k4;
  input sign;
  output u2;
  output u4;
  output w4;

  wire CLK_1;
  wire Ground_0_o;
  wire HIGH_0_h;
  wire HIGH_1_h;
  wire NOT_0_a_f;
  wire NOT_1_a_f;
  wire NOT_2_a_f;
  wire NOT_3_a_f;
  wire OR_0_re;
  wire OR_1_re;
  wire bcdchange_1_a;
  wire bcdchange_1_b;
  wire bcdchange_1_c;
  wire bcdchange_1_d;
  wire bcdchange_1_e;
  wire bcdchange_1_f;
  wire bcdchange_1_g;
  wire [3:0]calcaulator_0_o;
  wire clk_div_0_clk_out;
  wire clk_div_1_clk_out;
  wire decimal_counter_0_Qa;
  wire four_2_input_and_gate_0_Y1;
  wire four_2_input_and_gate_0_Y2;
  wire four_2_input_and_gate_0_Y3;
  wire four_2_input_and_gate_0_Y4;
  wire mux_8_to_1_0_Q;
  wire mux_8_to_1_1_Q;
  wire mux_8_to_1_2_Q;
  wire mux_8_to_1_3_Q;
  wire sign_1;
  wire three_and_0_out;
  wire turn_3_0_o0;
  wire turn_3_0_o1;
  wire turn_3_0_o2;
  wire turn_3_0_o3;

  assign CLK_1 = CLK;
  assign a = bcdchange_1_a;
  assign b = bcdchange_1_b;
  assign c = bcdchange_1_c;
  assign d = bcdchange_1_d;
  assign e = bcdchange_1_e;
  assign f = bcdchange_1_f;
  assign g = bcdchange_1_g;
  assign k4 = decimal_counter_0_Qa;
  assign sign_1 = sign;
  assign u2 = HIGH_0_h;
  assign u4 = HIGH_1_h;
  assign w4 = NOT_3_a_f;
  calculator_12_Ground_0_0 Ground_0
       (.o(Ground_0_o));
  calculator_12_HIGH_0_0 HIGH_0
       (.h(HIGH_0_h));
  calculator_12_HIGH_1_0 HIGH_1
       (.h(HIGH_1_h));
  calculator_12_NOT_0_0 NOT_0
       (.a(turn_3_0_o3),
        .a_f(NOT_0_a_f));
  calculator_12_NOT_1_0 NOT_1
       (.a(turn_3_0_o1),
        .a_f(NOT_1_a_f));
  calculator_12_NOT_2_0 NOT_2
       (.a(turn_3_0_o2),
        .a_f(NOT_2_a_f));
  calculator_12_NOT_3_0 NOT_3
       (.a(decimal_counter_0_Qa),
        .a_f(NOT_3_a_f));
  calculator_12_OR_0_1 OR_0
       (.re(OR_0_re),
        .x1(four_2_input_and_gate_0_Y1),
        .x2(four_2_input_and_gate_0_Y3));
  calculator_12_OR_1_0 OR_1
       (.re(OR_1_re),
        .x1(four_2_input_and_gate_0_Y1),
        .x2(four_2_input_and_gate_0_Y2));
  calculator_12_bcdchange_1_1 bcdchange_1
       (.a(bcdchange_1_a),
        .b(bcdchange_1_b),
        .c(bcdchange_1_c),
        .d(bcdchange_1_d),
        .e(bcdchange_1_e),
        .f(bcdchange_1_f),
        .g(bcdchange_1_g),
        .t0(mux_8_to_1_3_Q),
        .t1(mux_8_to_1_2_Q),
        .t2(mux_8_to_1_1_Q),
        .t3(mux_8_to_1_0_Q));
  calculator_12_calcaulator_0_0 calcaulator_0
       (.CLK(clk_div_0_clk_out),
        .o(calcaulator_0_o),
        .sign(sign_1));
  calculator_12_clk_div_0_0 clk_div_0
       (.clk_in(CLK_1),
        .clk_out(clk_div_0_clk_out));
  calculator_12_clk_div_1_0 clk_div_1
       (.clk_in(CLK_1),
        .clk_out(clk_div_1_clk_out));
  calculator_12_decimal_counter_0_0 decimal_counter_0
       (.CP1_n(clk_div_1_clk_out),
        .CP2_n(1'b0),
        .Qa(decimal_counter_0_Qa),
        .R0_1(1'b0),
        .R0_2(1'b0),
        .R9_1(1'b0),
        .R9_2(1'b0));
  calculator_12_four_2_input_and_gate_0_0 four_2_input_and_gate_0
       (.A1(turn_3_0_o3),
        .A2(turn_3_0_o3),
        .A3(NOT_0_a_f),
        .A4(NOT_0_a_f),
        .B1(turn_3_0_o2),
        .B2(turn_3_0_o1),
        .B3(turn_3_0_o1),
        .B4(turn_3_0_o2),
        .Y1(four_2_input_and_gate_0_Y1),
        .Y2(four_2_input_and_gate_0_Y2),
        .Y3(four_2_input_and_gate_0_Y3),
        .Y4(four_2_input_and_gate_0_Y4));
  calculator_12_mux_8_to_1_0_0 mux_8_to_1_0
       (.A0(decimal_counter_0_Qa),
        .A1(1'b0),
        .A2(1'b0),
        .D0(three_and_0_out),
        .D1(Ground_0_o),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .Q(mux_8_to_1_0_Q),
        .S_n(1'b0));
  calculator_12_mux_8_to_1_1_0 mux_8_to_1_1
       (.A0(decimal_counter_0_Qa),
        .A1(1'b0),
        .A2(1'b0),
        .D0(four_2_input_and_gate_0_Y4),
        .D1(Ground_0_o),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .Q(mux_8_to_1_1_Q),
        .S_n(1'b0));
  calculator_12_mux_8_to_1_1_1 mux_8_to_1_2
       (.A0(decimal_counter_0_Qa),
        .A1(1'b0),
        .A2(1'b0),
        .D0(OR_0_re),
        .D1(Ground_0_o),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .Q(mux_8_to_1_2_Q),
        .S_n(1'b0));
  calculator_12_mux_8_to_1_1_2 mux_8_to_1_3
       (.A0(decimal_counter_0_Qa),
        .A1(1'b0),
        .A2(1'b0),
        .D0(turn_3_0_o0),
        .D1(OR_1_re),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .Q(mux_8_to_1_3_Q),
        .S_n(1'b0));
  calculator_12_three_and_0_0 three_and_0
       (.k1(turn_3_0_o3),
        .k2(NOT_1_a_f),
        .k3(NOT_2_a_f),
        .out(three_and_0_out));
  calculator_12_turn_3_0_0 turn_3_0
       (.in(calcaulator_0_o),
        .o0(turn_3_0_o0),
        .o1(turn_3_0_o1),
        .o2(turn_3_0_o2),
        .o3(turn_3_0_o3));
endmodule

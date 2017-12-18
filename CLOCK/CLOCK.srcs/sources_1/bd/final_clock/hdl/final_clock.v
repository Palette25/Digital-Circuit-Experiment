//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sun Dec 17 13:41:06 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target final_clock.bd
//Design      : final_clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "final_clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=final_clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=38,numReposBlks=38,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=32,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "final_clock.hwdef" *) 
module final_clock
   (AN0,
    AN1,
    AN2,
    AN3,
    CLK,
    Q1,
    Q2,
    S1,
    S2,
    State,
    a,
    b,
    c,
    click,
    d,
    e,
    f,
    g,
    mode,
    sign);
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  input CLK;
  output Q1;
  output Q2;
  output S1;
  output S2;
  input State;
  output a;
  output b;
  output c;
  input click;
  output d;
  output e;
  output f;
  output g;
  input mode;
  input sign;

  wire CLK_1;
  wire Ground_0_o;
  wire Ground_1_o;
  wire Ground_2_o;
  wire HIGH_0_o;
  wire HIGH_1_o;
  wire OR_0_o0;
  wire OR_0_o1;
  wire OR_0_o2;
  wire OR_0_o3;
  wire State_1;
  wire alink_0_state;
  wire bcdTo7seg_0_a;
  wire bcdTo7seg_0_b;
  wire bcdTo7seg_0_c;
  wire bcdTo7seg_0_d;
  wire bcdTo7seg_0_e;
  wire bcdTo7seg_0_f;
  wire bcdTo7seg_0_g;
  wire click_1;
  wire clk_div_0_clk_out;
  wire clk_div_1_clk_out;
  wire clk_div_2_clk_out;
  wire clk_div_3_clk_out;
  wire clock_chooser_0_day_clk;
  wire clock_chooser_0_hour_clk;
  wire clock_chooser_0_min_clk;
  wire clock_chooser_0_mon_clk;
  wire clock_chooser_0_sec_clk;
  wire clock_chooser_0_year_clk;
  wire [3:0]data_chooser_0_Y;
  wire [3:0]data_chooser_1_Y;
  wire [3:0]data_chooser_2_Y;
  wire [3:0]data_chooser_3_Y;
  wire [3:0]data_chooser_4_Y;
  wire [3:0]day_generator_0_day_0;
  wire [3:0]day_generator_0_day_1;
  wire day_generator_0_rco;
  wire decode138_0_Y0_n;
  wire decode138_0_Y1_n;
  wire decode138_0_Y2_n;
  wire decode138_0_Y3_n;
  wire decode138_1_Y0_n;
  wire decode138_1_Y1_n;
  wire decode138_1_Y2_n;
  wire decode138_1_Y3_n;
  wire five_or_0_Y0;
  wire five_or_0_Y1;
  wire five_or_0_Y2;
  wire five_or_0_Y3;
  wire five_or_0_Y4;
  wire [3:0]hour_generator_0_hour_0;
  wire [3:0]hour_generator_0_hour_1;
  wire hour_generator_0_rco;
  wire [3:0]min_generator_0_min_0;
  wire [3:0]min_generator_0_min_1;
  wire min_generator_0_rco;
  wire mode_1;
  wire [3:0]mon_generator_0_mon_0;
  wire [3:0]mon_generator_0_mon_1;
  wire mon_generator_0_rco;
  wire one_or_0_o;
  wire one_or_0_spc;
  wire sec_generator_0_rco;
  wire [3:0]sec_generator_0_sec_0;
  wire [3:0]sec_generator_0_sec_1;
  wire [3:0]select_153_0_Y;
  wire sign_1;
  wire [1:0]steper_0_Q;
  wire [1:0]steper_1_Q;
  wire [1:0]steper_3_0_o;
  wire tran_2_0_Q1;
  wire tran_2_0_Q2;
  wire tran_2_1_Q1;
  wire tran_2_1_Q2;
  wire tran_2_2_Q1;
  wire tran_2_2_Q2;
  wire turn_3_0_o0;
  wire turn_3_0_o1;
  wire turn_4_0_x0;
  wire turn_4_0_x1;
  wire turn_4_0_x2;
  wire turn_4_0_x3;
  wire two_clk_0_clk;
  wire [3:0]year_generator_0_year_0;
  wire [3:0]year_generator_0_year_1;
  wire [3:0]year_generator_0_year_2;
  wire [3:0]year_generator_0_year_3;

  assign AN0 = OR_0_o0;
  assign AN1 = OR_0_o1;
  assign AN2 = OR_0_o2;
  assign AN3 = OR_0_o3;
  assign CLK_1 = CLK;
  assign Q1 = tran_2_1_Q1;
  assign Q2 = tran_2_1_Q2;
  assign S1 = tran_2_2_Q1;
  assign S2 = tran_2_2_Q2;
  assign State_1 = State;
  assign a = bcdTo7seg_0_a;
  assign b = bcdTo7seg_0_b;
  assign c = bcdTo7seg_0_c;
  assign click_1 = click;
  assign d = bcdTo7seg_0_d;
  assign e = bcdTo7seg_0_e;
  assign f = bcdTo7seg_0_f;
  assign g = bcdTo7seg_0_g;
  assign mode_1 = mode;
  assign sign_1 = sign;
  final_clock_Ground_0_0 Ground_0
       (.o(Ground_0_o));
  final_clock_Ground_1_0 Ground_1
       (.o(Ground_1_o));
  final_clock_Ground_2_0 Ground_2
       (.o(Ground_2_o));
  final_clock_HIGH_0_0 HIGH_0
       (.o(HIGH_0_o));
  final_clock_HIGH_1_0 HIGH_1
       (.o(HIGH_1_o));
  final_clock_OR_0_0 OR_0
       (.In0_0(decode138_0_Y0_n),
        .In0_1(turn_3_0_o1),
        .In1_0(decode138_0_Y1_n),
        .In1_1(turn_3_0_o1),
        .In2_0(decode138_0_Y2_n),
        .In2_1(turn_3_0_o0),
        .In3_0(decode138_0_Y3_n),
        .In3_1(turn_3_0_o0),
        .o0(OR_0_o0),
        .o1(OR_0_o1),
        .o2(OR_0_o2),
        .o3(OR_0_o3));
  final_clock_alink_0_0 alink_0
       (.CLK(clk_div_3_clk_out),
        .state(alink_0_state));
  final_clock_bcdTo7seg_0_0 bcdTo7seg_0
       (.a(bcdTo7seg_0_a),
        .b(bcdTo7seg_0_b),
        .c(bcdTo7seg_0_c),
        .d(bcdTo7seg_0_d),
        .e(bcdTo7seg_0_e),
        .f(bcdTo7seg_0_f),
        .g(bcdTo7seg_0_g),
        .t0(turn_4_0_x0),
        .t1(turn_4_0_x1),
        .t2(turn_4_0_x2),
        .t3(turn_4_0_x3));
  final_clock_clk_div_0_0 clk_div_0
       (.clk_in(CLK_1),
        .clk_out(clk_div_0_clk_out));
  final_clock_clk_div_1_0 clk_div_1
       (.clk_in(CLK_1),
        .clk_out(clk_div_1_clk_out));
  final_clock_clk_div_2_0 clk_div_2
       (.clk_in(CLK_1),
        .clk_out(clk_div_2_clk_out));
  final_clock_clk_div_3_0 clk_div_3
       (.clk_in(CLK_1),
        .clk_out(clk_div_3_clk_out));
  final_clock_clock_chooser_0_0 clock_chooser_0
       (.CLK(two_clk_0_clk),
        .Y0(decode138_1_Y0_n),
        .Y1(decode138_1_Y1_n),
        .Y2(decode138_1_Y2_n),
        .Y3(decode138_1_Y3_n),
        .click(click_1),
        .day_clk(clock_chooser_0_day_clk),
        .hour_clk(clock_chooser_0_hour_clk),
        .min_clk(clock_chooser_0_min_clk),
        .mo_0(tran_2_1_Q1),
        .mo_1(tran_2_1_Q2),
        .mon_clk(clock_chooser_0_mon_clk),
        .sec_clk(clock_chooser_0_sec_clk),
        .year_clk(clock_chooser_0_year_clk));
  final_clock_data_chooser_0_0 data_chooser_0
       (.Y(data_chooser_0_Y),
        .ar0(sec_generator_0_sec_0),
        .ar1(min_generator_0_min_0),
        .ar2(day_generator_0_day_0),
        .ar3(year_generator_0_year_0),
        .in0(tran_2_2_Q1),
        .in1(tran_2_2_Q2));
  final_clock_data_chooser_1_0 data_chooser_1
       (.Y(data_chooser_1_Y),
        .ar0(sec_generator_0_sec_1),
        .ar1(min_generator_0_min_1),
        .ar2(day_generator_0_day_1),
        .ar3(year_generator_0_year_1),
        .in0(tran_2_2_Q1),
        .in1(tran_2_2_Q2));
  final_clock_data_chooser_2_0 data_chooser_2
       (.Y(data_chooser_2_Y),
        .ar0(min_generator_0_min_0),
        .ar1(hour_generator_0_hour_0),
        .ar2(mon_generator_0_mon_0),
        .ar3(year_generator_0_year_2),
        .in0(tran_2_2_Q1),
        .in1(tran_2_2_Q2));
  final_clock_data_chooser_3_0 data_chooser_3
       (.Y(data_chooser_3_Y),
        .ar0(min_generator_0_min_1),
        .ar1(hour_generator_0_hour_1),
        .ar2(mon_generator_0_mon_1),
        .ar3(year_generator_0_year_3),
        .in0(tran_2_2_Q1),
        .in1(tran_2_2_Q2));
  final_clock_data_chooser_4_0 data_chooser_4
       (.Y(data_chooser_4_Y),
        .ar0(data_chooser_0_Y),
        .ar1(data_chooser_1_Y),
        .ar2(data_chooser_2_Y),
        .ar3(data_chooser_3_Y),
        .in0(tran_2_0_Q1),
        .in1(tran_2_0_Q2));
  final_clock_day_generator_0_0 day_generator_0
       (.CLK(clock_chooser_0_day_clk),
        .EN(five_or_0_Y2),
        .day_0(day_generator_0_day_0),
        .day_1(day_generator_0_day_1),
        .rco(day_generator_0_rco));
  final_clock_decode138_0_0 decode138_0
       (.A0(tran_2_0_Q1),
        .A1(tran_2_0_Q2),
        .A2(Ground_0_o),
        .E1(HIGH_1_o),
        .E2_n(Ground_0_o),
        .E3_n(Ground_0_o),
        .Y0_n(decode138_0_Y0_n),
        .Y1_n(decode138_0_Y1_n),
        .Y2_n(decode138_0_Y2_n),
        .Y3_n(decode138_0_Y3_n));
  final_clock_decode138_1_0 decode138_1
       (.A0(tran_2_2_Q1),
        .A1(tran_2_2_Q2),
        .A2(Ground_2_o),
        .E1(HIGH_0_o),
        .E2_n(Ground_2_o),
        .E3_n(Ground_2_o),
        .Y0_n(decode138_1_Y0_n),
        .Y1_n(decode138_1_Y1_n),
        .Y2_n(decode138_1_Y2_n),
        .Y3_n(decode138_1_Y3_n));
  final_clock_five_or_0_0 five_or_0
       (.Y0(five_or_0_Y0),
        .Y1(five_or_0_Y1),
        .Y2(five_or_0_Y2),
        .Y3(five_or_0_Y3),
        .Y4(five_or_0_Y4),
        .i0_0(one_or_0_o),
        .i0_1(sec_generator_0_rco),
        .i1_0(one_or_0_o),
        .i1_1(min_generator_0_rco),
        .i2_0(one_or_0_spc),
        .i2_1(hour_generator_0_rco),
        .i3_0(one_or_0_o),
        .i3_1(day_generator_0_rco),
        .i4_0(one_or_0_o),
        .i4_1(mon_generator_0_rco));
  final_clock_hour_generator_0_0 hour_generator_0
       (.CLK(clock_chooser_0_hour_clk),
        .EN(five_or_0_Y1),
        .hour_0(hour_generator_0_hour_0),
        .hour_1(hour_generator_0_hour_1),
        .rco(hour_generator_0_rco));
  final_clock_min_generator_0_0 min_generator_0
       (.CLK(clock_chooser_0_min_clk),
        .EN(five_or_0_Y0),
        .min_0(min_generator_0_min_0),
        .min_1(min_generator_0_min_1),
        .rco(min_generator_0_rco));
  final_clock_mon_generator_0_0 mon_generator_0
       (.CLK(clock_chooser_0_mon_clk),
        .EN(five_or_0_Y3),
        .mon_0(mon_generator_0_mon_0),
        .mon_1(mon_generator_0_mon_1),
        .rco(mon_generator_0_rco));
  final_clock_one_or_0_0 one_or_0
       (.i0(tran_2_1_Q1),
        .i1(tran_2_1_Q2),
        .o(one_or_0_o),
        .spc(one_or_0_spc));
  final_clock_sec_generator_0_0 sec_generator_0
       (.CLK(clock_chooser_0_sec_clk),
        .EN(HIGH_0_o),
        .rco(sec_generator_0_rco),
        .sec_0(sec_generator_0_sec_0),
        .sec_1(sec_generator_0_sec_1));
  final_clock_select_153_0_0 select_153_0
       (.A(tran_2_1_Q1),
        .B(tran_2_1_Q2),
        .Y(select_153_0_Y),
        .i0_0(Ground_1_o),
        .i0_1(alink_0_state),
        .i0_2(Ground_1_o),
        .i0_3(1'b0),
        .i1_0(Ground_1_o),
        .i1_1(Ground_1_o),
        .i1_2(alink_0_state),
        .i1_3(1'b0),
        .i2_0(1'b0),
        .i2_1(1'b0),
        .i2_2(1'b0),
        .i2_3(1'b0),
        .i3_0(1'b0),
        .i3_1(1'b0),
        .i3_2(1'b0),
        .i3_3(1'b0));
  final_clock_steper_0_0 steper_0
       (.Q(steper_0_Q),
        .clk(clk_div_2_clk_out));
  final_clock_steper_1_0 steper_1
       (.Q(steper_1_Q),
        .clk(State_1));
  final_clock_steper_3_0_0 steper_3_0
       (.clk(mode_1),
        .o(steper_3_0_o));
  final_clock_tran_2_0_0 tran_2_0
       (.Q1(tran_2_0_Q1),
        .Q2(tran_2_0_Q2),
        .in(steper_0_Q));
  final_clock_tran_2_1_0 tran_2_1
       (.Q1(tran_2_1_Q1),
        .Q2(tran_2_1_Q2),
        .in(steper_3_0_o));
  final_clock_tran_2_2_0 tran_2_2
       (.Q1(tran_2_2_Q1),
        .Q2(tran_2_2_Q2),
        .in(steper_1_Q));
  final_clock_turn_3_0_0 turn_3_0
       (.in(select_153_0_Y),
        .o0(turn_3_0_o0),
        .o1(turn_3_0_o1));
  final_clock_turn_4_0_0 turn_4_0
       (.In(data_chooser_4_Y),
        .x0(turn_4_0_x0),
        .x1(turn_4_0_x1),
        .x2(turn_4_0_x2),
        .x3(turn_4_0_x3));
  final_clock_two_clk_0_0 two_clk_0
       (.clk(two_clk_0_clk),
        .clk1(clk_div_0_clk_out),
        .clk2(clk_div_1_clk_out),
        .sign(sign_1));
  final_clock_year_generator_0_0 year_generator_0
       (.CLK(clock_chooser_0_year_clk),
        .EN(five_or_0_Y4),
        .year_0(year_generator_0_year_0),
        .year_1(year_generator_0_year_1),
        .year_2(year_generator_0_year_2),
        .year_3(year_generator_0_year_3));
endmodule

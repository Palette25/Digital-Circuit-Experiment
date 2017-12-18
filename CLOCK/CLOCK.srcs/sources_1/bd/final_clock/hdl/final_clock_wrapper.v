//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sun Dec 17 13:41:06 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target final_clock_wrapper.bd
//Design      : final_clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module final_clock_wrapper
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

  wire AN0;
  wire AN1;
  wire AN2;
  wire AN3;
  wire CLK;
  wire Q1;
  wire Q2;
  wire S1;
  wire S2;
  wire State;
  wire a;
  wire b;
  wire c;
  wire click;
  wire d;
  wire e;
  wire f;
  wire g;
  wire mode;
  wire sign;

  final_clock final_clock_i
       (.AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .CLK(CLK),
        .Q1(Q1),
        .Q2(Q2),
        .S1(S1),
        .S2(S2),
        .State(State),
        .a(a),
        .b(b),
        .c(c),
        .click(click),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .mode(mode),
        .sign(sign));
endmodule

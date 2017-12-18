//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sun Dec 10 20:52:07 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target calculator_12_wrapper.bd
//Design      : calculator_12_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module calculator_12_wrapper
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

  wire CLK;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire k4;
  wire sign;
  wire u2;
  wire u4;
  wire w4;

  calculator_12 calculator_12_i
       (.CLK(CLK),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .k4(k4),
        .sign(sign),
        .u2(u2),
        .u4(u4),
        .w4(w4));
endmodule

//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Tue Nov 21 13:39:56 2017
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire CLK;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire o1;
  wire o2;
  wire o3;
  wire o4;
  wire switch;

  design_1 design_1_i
       (.CLK(CLK),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .o1(o1),
        .o2(o2),
        .o3(o3),
        .o4(o4),
        .switch(switch));
endmodule

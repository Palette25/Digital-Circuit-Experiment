`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/30 22:36:01
// Design Name: 
// Module Name: hh1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module calcaulator(
    input wire sign,
    input wire CLK,
    output reg[3:0] o
);
always @(posedge CLK)
    if(sign == 0)
        if(o == 12)
            o <= 1;
        else 
            o <= o+1;
    else
        if(o == 1)
            o <= 12;
        else 
            o <= o-1;
endmodule

module bcdchange(
    input wire t0,t1,t2,t3,
    output wire a, b, c, d, e, f, g
);
   assign a = ~t3&~t2&~t1&t0
   | ~t3&t2&~t1&~t0
   | t3&t2&~t1&t0
   | t3&~t2&t1&t0;
   assign b = t2&t1&~t0
   | t3&t1&t0
   | ~t3&t2&~t1&t0
   | t3&t2&~t1&~t0;
   assign c = ~t3&~t2&t1&~t0
   | t3&t2&t1
   | t3&t2&~t0;
   assign d = ~t3&~t2&~t1&t0
   | ~t3&t2&~t1&~t0
   | t3&~t2&t1&~t0
   | t2&t1&t0;
   assign e = ~t3&t0
   | ~t3&t2&~t1
   | ~t2&~t1&t0;
   assign f = ~t3&~t2&t0
   | ~t3&~t2&t1
   | ~t3&t1&t0
   | t3&t2&~t1&t0;
   assign g = ~t3&~t2&~t1
   | t3&t2&~t1&~t0
   | ~t3&t2&t1&t0;
endmodule

module Ground(
    output wire o
);
    assign o = 0;
endmodule

module turn_3(
    input wire[3:0] in,
    output wire o0, o1, o2, o3
);
    assign o0 = in[0];
    assign o1 = in[1];
    assign o2 = in[2];
    assign o3 = in[3];
endmodule

module OR(
    input x1, x2,
    output re
);
    assign re = x1|x2;
endmodule

module NOT(
    input a,
    output a_f
);
    assign a_f = ~a;
endmodule

module three_and(
    input k1, k2, k3,
    output out
);
    assign out = k1&k2&k3;
endmodule

module HIGH(
    output h
);
    assign h = 1;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 22:54:15
// Design Name: 
// Module Name: self
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


module Power(
    output wire o
 );
    assign o = 1;
endmodule

module Ground(
    output wire o
);
    assign o = 0;
 endmodule

module select(
    input wire i_0,
    input wire i_1,
    input wire i_2,
    output wire o
);
assign o = i_0?i_2:i_1;
endmodule

module bcd_change(
    input wire A1,
    input wire B1,
    input wire C1,
    output wire a, b, c, d, e, f, g
);
    assign a = (A1 & ~B1 & ~C1) | (~A1 & ~B1 & C1);
    assign b = (A1 & B1 & ~C1) | (A1 & ~B1 & C1);
    assign c = ~A1 & B1 & ~C1;
    assign d = (~A1 & ~B1 & C1) | (A1 & ~B1 & ~C1) | (A1 & B1 & C1);
    assign e = C1 | (A1 & ~B1 & ~C1);
    assign f = (~A1 & C1) | (~A1 & B1) | (~B1 & C1);
    assign g = (~A1 & ~B1) | (A1 & B1 & C1);
endmodule

module nxor(
    input wire a, b,
    output wire o
);
    assign o = a^~b;
endmodule
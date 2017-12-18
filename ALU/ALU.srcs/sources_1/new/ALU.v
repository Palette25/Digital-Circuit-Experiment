`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/31 22:20:46
// Design Name: 
// Module Name: ALU
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


module HIGH(
    output wire o
);
    assign o = 1;
endmodule

module GROUND(
    output wire o
);
    assign o = 0;
endmodule

module XOR(
    input wire In1,
    input wire In2,
    output wire o
);
    assign o = In1^In2;
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/20 21:31:41
// Design Name: 
// Module Name: c_197
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
    output reg o
);
always @(i_0, o)
if(i_0 == 0)
assign o = i_1;
else assign o = i_2;
endmodule
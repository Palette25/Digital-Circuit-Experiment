`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/15 13:28:27
// Design Name: 
// Module Name: reg_74LS194
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


module LS194(
    input wire CR_n,
    input wire CP,
    input wire S0, S1,
    input wire DSL, DSR,
    input wire D0,D1,D2,D3,
    output wire Q0,Q1,Q2,Q3
);

reg [0:3] q_reg=4'b0000;
        wire [1:0] s_reg;
        assign s_reg={S1,S0};
        always @(posedge CP or posedge CR_n) begin
            if (!CR_n) begin
                q_reg<=4'b0000;
        end else begin 
            case (s_reg)
                2'b00 :q_reg<=q_reg;  
                2'b01 :q_reg<={DSR,q_reg[0:2]};  
                2'b10 :q_reg<={q_reg[1:3],DSL};  
                2'b11 :q_reg<={D0,D1,D2,D3};  
                default:q_reg<=4'b0000;  
            endcase  
        end  
    end  
 
    assign Q0=q_reg[0];  
    assign Q1=q_reg[1];  
    assign Q2=q_reg[2];  
    assign Q3=q_reg[3];  
endmodule

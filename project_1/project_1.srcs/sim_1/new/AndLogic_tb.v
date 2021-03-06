`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/22 11:51:20
// Design Name: 
// Module Name: AndLogic_tb
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


module AndLogic_tb(
    //input
    reg CLK;
    reg IN1;
    reg IN2;
    
    //output
    wire OUT1;
    
    //Instantiate the Unit Under Test(UUT)
    AndLogic uut(.CLK(CLK), .IN1(IN1), .IN2(IN2), .OUT1(OUT1));
    initial begin
        CLK = 0;
        IN1 = 0;
        IN2 = 0;
        
        //wait 100ns for global reset to finish
        #100;
    end
    
    parameter period = 20;
    always begin
        #(period/2)CLK<=~CLK;
    end
    
    always begin
        IN1 = 0;
        IN2 = 0;
        #100;
        IN1 = 0;
        IN2 = 1;
        #100;
        IN1 = 1;
        IN2 = 0;
        #100;
        IN1 = 1;
        IN2 = 1;
        #100;
    end
);
endmodule

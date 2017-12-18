`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/14 18:33:10
// Design Name: 
// Module Name: clock_modules
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

module sec_generator(
    input wire CLK, EN,
    output reg [3:0] sec_0, 
    output reg [3:0] sec_1,
    output wire rco
);
assign rco = EN&sec_1[0]&~sec_1[1]&sec_1[2]&sec_0[3]&sec_0[0];
always @(posedge CLK)
begin
if(EN==1)
    if(sec_0==9)
    begin
        sec_0 <= 0;
        if(sec_1==5)
        begin
            sec_1 <= 0;
        end
        else
            sec_1 <= sec_1+1;
    end
    else 
        sec_0 <= sec_0+1;
end
endmodule

module min_generator(
    input wire CLK, EN,
    output reg [3:0] min_0,
    output reg [3:0] min_1,
    output wire rco
);
assign rco = EN&min_1[0]&~min_1[1]&min_1[2]&min_0[3]&min_0[0];
always @(posedge CLK)
begin
if(EN==1)
    if(min_0==9)
    begin
        min_0 <= 0;
        if(min_1==5)
        begin
            min_1 <= 0;
        end
        else
            min_1 <= min_1+1;
    end
    else
        min_0 <= min_0+1;
end
endmodule

module hour_generator(
   input wire CLK, EN,
   output reg [3:0] hour_0,
   output reg [3:0] hour_1,
   output wire rco
);
assign rco = EN&~hour_1[0]&hour_1[1]&hour_0[0]&hour_0[1];
always @(posedge CLK)
begin
if(EN==1)
   if(hour_0==9)
   begin
       hour_0 <= 0;
       hour_1 <= hour_1+1;
   end
   else if(hour_0==3)
   begin
        if(hour_1==2)
        begin
            hour_1 <= 0;
            hour_0 <= 0;
        end
        else hour_0 <= hour_0+1;
   end
   else hour_0 <= hour_0 + 1;
end
endmodule

module day_generator(
    input wire CLK, EN,
    output reg [3:0] day_0,
    output reg [3:0] day_1,
    output wire rco
);
assign rco = EN&day_1[1]&day_1[0]&~day_0[0]&~day_0[1];
always @(posedge CLK)
begin
if(day_0==0&&day_1==0)
begin
    day_0 <= 1;
    day_1 <= 0;
end
if(EN==1)
    if(day_0==9)
    begin
        day_0 <= 0;
        day_1 <= day_1+1;
    end
    else if(day_0==0)
    begin
        if(day_1==3)
        begin
            day_1 <= 0;
            day_0 <= 1;
        end
        else day_0 <= day_0+1;
    end
    else day_0 <= day_0 + 1;
end
endmodule

module mon_generator(
    input wire CLK, EN,
    output reg [3:0] mon_0,
    output reg [3:0] mon_1,
    output wire rco
);
assign rco = EN&mon_1[0]&~mon_1[1]&mon_0[1]&~mon_0[0];
always @(posedge CLK)
begin
if(mon_0==0&&mon_1==0)
begin
    mon_0 <= 1;
    mon_1 <= 0;
end
if(EN==1)
    if(mon_0==9)
    begin
        mon_0 <= 0;
        mon_1 <= mon_1+1;
    end
    else if(mon_0==2)
    begin
        if(mon_1==1)
        begin
            mon_0 <= 1;
            mon_1 <= 0;
        end
        else mon_0 <= mon_0+1;
     end
     else mon_0 <= mon_0+1;
end
endmodule

module year_generator(
    input wire CLK, EN,
    output reg [3:0] year_0,
    output reg [3:0] year_1,
    output reg [3:0] year_2,
    output reg [3:0] year_3
);
always @(posedge CLK)
if(EN==1)
    if(year_0==9)
    begin
        year_0 <= 0;
        if(year_1==9)
        begin
            year_1 <= 0;
            if(year_2==9)
            begin
                year_2 <= 0;
                year_3 <= year_3+1;
            end
            else year_2 <= year_2+1;
        end
        else year_1 <= year_1+1;
    end
    else
        year_0 <= year_0+1;
endmodule

module bcdTo7seg(
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

module HIGH(
    output wire o
);
    assign o = 1;
endmodule

module select_153(
    input wire i0_0, i0_1, i0_2, i0_3,
    input wire i1_0, i1_1, i1_2, i1_3,
    input wire i2_0, i2_1, i2_2, i2_3,
    input wire i3_0, i3_1, i3_2, i3_3,
    input wire A, B,
    output reg [3:0] Y
);
always @(*)
if(A==0)
    if(B==0)
    begin
        Y[0] <= i0_0;
        Y[1] <= i1_0;
        Y[2] <= i2_0;
        Y[3] <= i3_0;
    end
    else
    begin
        Y[0] <= i0_1;
        Y[1] <= i1_1;
        Y[2] <= i2_1;
        Y[3] <= i3_1;
    end
else 
    if(B==0)
    begin
        Y[0] <= i0_2;
        Y[1] <= i1_2;
        Y[2] <= i2_2;
        Y[3] <= i3_2;
    end
    else
    begin
        Y[0] <= i0_3;
        Y[1] <= i1_3;
        Y[2] <= i2_3;
        Y[3] <= i3_3;
    end
endmodule

module NAND(
    input wire In0, In1,
    output wire o
);
    assign o = ~(In0&In1);
endmodule

module OR(
    input wire In0_0, In0_1, In1_0, In1_1, In2_0, In2_1, In3_0, In3_1,
    output wire o0, o1, o2, o3
);
    assign o0 = In0_0|In0_1;
    assign o1 = In1_0|In1_1;
    assign o2 = In2_0|In2_1;
    assign o3 = In3_0|In3_1;
endmodule

module NOT(
    input wire In,
    output wire o
);
    assign o = ~In;
endmodule

module two_clk(
    input wire clk1, clk2, sign,
    output wire clk
);
    assign clk = sign?clk1:clk2;
endmodule

module steper(
    input wire clk,
    output reg [1:0] Q
);
always @(posedge clk)
if(Q==3)
    Q <= 0;
else
    Q <= Q+1;
endmodule

module tran_2(
    input wire [1:0] in,
    output wire Q1, Q2
);
    assign Q1 = in[0];
    assign Q2 = in[1];
endmodule

module steper_3(
    input wire clk,
    output reg [1:0] o
);
always @(posedge clk)
if(o==2)
    o <= 0;
else
    o <= o+1;
endmodule

module data_chooser(
    input wire in0, in1,
    input wire [3:0] ar0, ar1, ar2, ar3,
    output reg [3:0] Y
);
always @(*)
if(in0==0)
    if(in1==0)
        Y <= ar0;
    else
        Y <= ar2;
else
    if(in1==0)
        Y <= ar1;
    else 
        Y <= ar3;
endmodule

module turn_4(
    input wire [3:0] In,
    output wire x0, x1, x2, x3
);
    assign x0 = In[0];
    assign x1 = In[1];
    assign x2 = In[2];
    assign x3 = In[3];
endmodule

module one_or(
    input wire i0, i1,
    output wire o, spc
);
    assign o = i0|i1;
    assign spc = i0&~i1;
endmodule

module five_or(
    input wire i0_0, i0_1, i1_0, i1_1, i2_0, i2_1,
    input wire i3_0, i3_1, i4_0, i4_1,
    output wire Y0, Y1, Y2, Y3, Y4
);
    assign Y0 = i0_0|i0_1;
    assign Y1 = i1_0|i1_1;
    assign Y2 = i2_0|i2_1;
    assign Y3 = i3_0|i3_1;
    assign Y4 = i4_0|i4_1;
endmodule

module clock_chooser(
    input wire click, mo_0, mo_1, CLK, Y0, Y1, Y2, Y3,
    output wire sec_clk, min_clk, hour_clk, day_clk, mon_clk, year_clk
);
    assign sec_clk = (~mo_0 & ~mo_1 & CLK)| (mo_0 & ~mo_1 & ~Y0 & click);
    assign min_clk = (~mo_0 & ~mo_1 & CLK)| (mo_0 & ~mo_1 & ~Y1 & click) | (~mo_0 & mo_1 & ~Y0 & click);
    assign hour_clk = (~mo_0 & ~mo_1 & CLK)| (~mo_0 & mo_1 & ~Y1 &click);
    assign day_clk = (~mo_0 & ~mo_1 & CLK)| (mo_0 & ~mo_1 & ~Y2 & click);
    assign mon_clk = (~mo_0 & ~mo_1 & CLK)| (~mo_0 & mo_1 & ~Y2 & click);
    assign year_clk = (~mo_0 & ~mo_1 & CLK)| (mo_0 & ~mo_1 & ~Y3 & click) | (~mo_0 & mo_1 & ~Y3 & click);
endmodule

module alink(
    input wire CLK,
    output reg state
);
always @(posedge CLK)
state <= ~state;
endmodule

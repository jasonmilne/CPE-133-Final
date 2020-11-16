`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2020 03:40:43 PM
// Design Name: 
// Module Name: RealLab04
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


module RealLab04(
    input [3:0]A,
    input [3:0]B,
    input Sub,
    output [6:0]seg,
    output neg,
    output [3:0]an
    );
    logic [3:0] t3;
    logic [3:0] t1;
    logic [3:0] t4;
    logic [3:0] t5;
    logic t6;
    logic t7;
    
    Mux mux1(.A(B), .B(~B), .sel(Sub), .out(t1));
    RCA1 RCA_1(.A(A), .B(t1), .sub(Sub), .S(t3));
    RCA1 RCA_2(.A(~t3), .B(4'b0000), .sub(1), .S(t4));
    Validity Validity1(.A(A[3]), .B(t1[3]), .S(t3[3]), .Valid(t7));
    assign t6 = t7 & t3[3];
    Mux mux2(.A(t3), .B(t4), .sel(t6), .out(t5));
    assign neg = t6;
   // SevenSeg sevenseg1(.BCD(t5), .seg(seg));
    Mux mux3(.A(4'b1111), .B(4'b1110), .sel(t7), .out(an));
    
    
    
    
    
endmodule

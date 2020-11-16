`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 02:28:25 PM
// Design Name: 
// Module Name: Lab05
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


module Lab05(
    input [3:0]A,
    input [3:0]B,
    input theclock,
    input Sub,
    input Enter,
    input CLR,
    output [7:0]seg,
    output [3:0]an
    );
    logic [3:0] t3;
    logic [3:0] t1;
    logic [3:0] t4;
    logic [3:0] t5;
    logic t6;
    logic t7;
    logic [3:0]t8;
    logic t9;
    logic t10;
    
    Mux mux1(.A(B), .B(~B), .sel(Sub), .out(t1));
    RCA1 RCA_1(.A(A), .B(t1), .sub(Sub), .S(t3));
    RCA1 RCA_2(.A(~t3), .B(4'b0000), .sub(1), .S(t4));
    Validity Validity1(.A(A[3]), .B(t1[3]), .S(t3[3]), .Valid(t7));
    assign t6 = t7 & t3[3];
    Mux mux2(.A(t3), .B(t4), .sel(t6), .out(t5));
    register #(3) number(.CLK(theclock), .enter(Enter), .clr(CLR), .D(t5), .set(0), .Q(t8));
    register sign(.CLK(theclock), .enter(Enter), .clr(CLR), .D(t6), .set(0), .Q(t9));
    register valid(.CLK(theclock), .enter(Enter), .clr(0), .D(t7), .set(CLR), .Q(t10));
    univ_sseg multiplesevenseg(.clk(theclock), .cnt1({10'b0,t8}), .cnt2(0), .dp_en(0), .dp_sel(0), .mod_sel(0), .sign(t9), .valid(t10), .ssegs(seg), .disp_en(an)); 
endmodule



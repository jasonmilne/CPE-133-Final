`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 06:04:42 PM
// Design Name: 
// Module Name: Lab08
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


module Lab08(
    input clk,
    input [3:0]A,
    input [3:0]B,
    input Enter,
    output [7:0]seg,
    output [3:0]an
    );
    logic [1:0]t1;
    logic t2;
    logic t3;
    logic [7:0]t4;
    logic  [7:0]t5;
    
    
    Multiply_FSM multiply(.clk(clk), .Enter(Enter), .B(B), .SR_SEL(t1), .ACC_LD(t2), .ACC_CLR(t3)); 
    ShiftRegister snipt_reg(.clk(clk), .CLR(0), .D({4'b0,A}), .SEL(t1), .Q(t4));
    Accumulator ACC(.clk(clk), .LD(t2), .CLR(t3), .D(t4), .Q(t5));
    univ_sseg sevenseg(.clk(clk), .cnt1({6'b0,t5}), .valid(1), .ssegs(seg), .disp_en(an));
    
    
    
    
    
    
endmodule

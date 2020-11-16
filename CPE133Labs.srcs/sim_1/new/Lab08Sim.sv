`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 09:35:33 PM
// Design Name: 
// Module Name: Lab08Sim
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


module Lab08Sim(

    );
    logic [3:0]A;
    logic [3:0]B;
    logic clk;
    logic Enter;
    logic [7:0]seg;
    logic [3:0]an;
    Lab08 Labl_inst(.A(A), .clk(clk), .B(B), .Enter(Enter), .seg(seg), .an(an));
    always
    begin
    clk = 1;
    #5
    clk = 0;
    #5;
    end
    
    initial
    begin
    A = 4'b0001; B = 4'b0001; Enter  = 1;
    #20
    A = 4'b0011; B = 4'b0011; Enter = 1;
    
    end 
    
    
endmodule

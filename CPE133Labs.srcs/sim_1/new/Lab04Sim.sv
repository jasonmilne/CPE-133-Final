`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 08:51:02 PM
// Design Name: 
// Module Name: Lab04Sim
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


module Lab04Sim(

    );
    
    logic [3:0] A;
    logic [3:0] B;
    logic an;
    logic [6:0] seg;
    Lab04 Labl_inst (.A(A), .B(B), .an(an), .seg(seg));
    initial
    begin
    A = 4'b0000; B = 4'b0000;
    #10
    
     A = 4'b0000; B = 4'b0001; //TEST CASE 1
    #10
    
    A = 4'b0001; B = 4'b0001; //TEST CASE 2
    #10
    
    A = 4'b0001; B = 4'b0010; //TEST CASE 3
    #10
 
    A = 4'b0010; B = 4'b0010; //TEST CASE 4
    #10
    
    A = 4'b0010; B = 4'b0100; //TEST CASE 5
    #10
    
    A = 4'b0100; B = 4'b0100; //TEST CASE 6
    #10
    
    A = 4'b0100; B = 4'b1000; //TEST CASE 7
    #10
    
    A = 4'b1000; B = 4'b1000; //TEST CASE 8
    #10
    
    A = 4'b1111; B = 4'b1111;

    
    
     
    
    end
    endmodule

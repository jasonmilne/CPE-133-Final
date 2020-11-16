`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2020 06:27:09 PM
// Design Name: 
// Module Name: RealLab04Sim
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


module RealLab04Sim(

    );
    logic [3:0]A;
    logic [3:0]B;
    logic Sub;
    logic [7:0]seg;
    logic neg;
    logic [3:0]an;
    RealLab04 Labl_inst(.A(A), .B(B), .Sub(Sub), .seg(seg), .neg(neg), .an(an));
    
    initial
    begin
    A= 4'b0001; B=4'b0101; Sub=0;  //1
    #10
    A= 4'b1111; B=4'b1101; Sub=0;  //2
    #10
    A= 4'b0011; B=4'b1011; Sub=0;  //3 
    #10
    A= 4'b1000; B=4'b0100; Sub=0;  //4
    #10
    A= 4'b0011; B=4'b0111; Sub=0;  //5
    #10
    A= 4'b1100; B=4'b1001; Sub=0; //6 
    #10
    A= 4'b0000; B=4'b0000; Sub=0; //7
    #10
    A= 4'b0101; B=4'b0000; Sub=0; //8
    #10
    A= 4'b0000; B=4'b0110; Sub=0; //9
    #10
    A= 4'b0100; B=4'b1101; Sub=1; //10
    #10
    A= 4'b1010; B=4'b0010; Sub=1; //11
    #10
    A= 4'b0101; B=4'b0011; Sub=1; //12
    #10
    A= 4'b1001; B=4'b1110; Sub=1; //13
    #10
    A= 4'b0100; B=4'b1001; Sub=1; //14
    #10
    A= 4'b1010; B=4'b0110; Sub=1; //15
    #10
    A= 4'b0000; B=4'b0000; Sub=1; //16
    #10
    A= 4'b0110; B=4'b0000; Sub=1; //17
    #10
    A= 4'b0000; B=4'b0001; Sub=1; //17
    
    
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 05:06:22 PM
// Design Name: 
// Module Name: Lab05sim
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


module Lab05sim(

    );
    logic [3:0]A;
    logic [3:0]B;
    logic theclock;
    logic Sub;
    logic Enter;
    logic CLR;
    logic [7:0]seg;
    logic [3:0]an;
    Lab05 Labl_inst(.A(A), .B(B), .theclock(theclock), .Sub(Sub), .Enter(Enter), .CLR(CLR), .seg(seg), .an(an));
    always
    begin
    
    theclock = 1;
    #5;
    theclock = 0;
    #5;
    
    end
    
    
    initial
    begin    
    A= 4'b0001; B=4'b0101; Sub=0; Enter = 1; CLR = 0;  //1
    #10
    A= 4'b1111; B=4'b1101; Sub=0; Enter = 1; CLR = 0; //2
    #10
    A= 4'b0011; B=4'b1011; Sub=0; Enter = 1; CLR = 0; //3 
    #10
    A= 4'b1000; B=4'b0100; Sub=0; Enter = 1; CLR = 0; //4
    #10
    A= 4'b0011; B=4'b0111; Sub=0; Enter = 1; CLR = 0; //5
    #10
    A= 4'b1100; B=4'b1001; Sub=0; Enter = 1; CLR = 0;//6 
    #10
    A= 4'b0000; B=4'b0000; Sub=0; Enter = 1; CLR = 0;//7
    #10
    A= 4'b0101; B=4'b0000; Sub=0; Enter = 1; CLR = 0;//8
    #10
    A= 4'b0000; B=4'b0110; Sub=0; Enter = 1; CLR = 0;//9
    #10
    A= 4'b0100; B=4'b1101; Sub=1; Enter = 1; CLR = 0;//10
    #10
    A= 4'b1010; B=4'b0010; Sub=1; Enter = 1; CLR = 0;//11
    #10
    A= 4'b0101; B=4'b0011; Sub=1; Enter = 1; CLR = 0;//12
    #10
    A= 4'b1001; B=4'b1110; Sub=1; Enter = 1; CLR = 0;//13
    #10
    A= 4'b0100; B=4'b1001; Sub=1; Enter = 1; CLR = 0;//14
    #10
    A= 4'b1010; B=4'b0110; Sub=1; Enter = 1; CLR = 0;//15
    #10
    A= 4'b0000; B=4'b0000; Sub=1; Enter = 1; CLR = 0;//16
    #10
    A= 4'b0110; B=4'b0000; Sub=1; Enter = 1; CLR = 0;//17
    #10
    A= 4'b0000; B=4'b0001; Sub=1; Enter = 1; CLR = 0;//17
    
    end

endmodule

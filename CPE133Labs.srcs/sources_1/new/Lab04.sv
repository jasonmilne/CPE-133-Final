`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 07:14:47 PM
// Design Name: 
// Module Name: Lab04
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


module Lab04(
    input[3:0] A,
    input[3:0] B,
    output[3:0] an,
    output[6:0] seg
    );
    logic [3:0]t1;
    logic [0:0]t2;
//    logic muxin1 = 4'b1110;
//    logic muxin2 = 4'b1111;

    RCA1 RCA_1 (.A(A), .B(B), .S(t1) , .Co(t2));
    Mux mux1(.A(4'b1110), .B(4'b1111), .sel(t2), .out(an));
    SevenSeg sevenseg1(.BCD(t1), .seg(seg));

    
endmodule

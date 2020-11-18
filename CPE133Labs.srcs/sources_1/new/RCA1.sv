`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// 
// Create Date: 10/01/2020 09:34:09 AM
 
// Description: Program to make a ripple carry adder
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module RCA1(
    input [3:0] A,
    input [3:0] B,
    input sub,
    output [3:0] S,
    output [0:0]Co
    );
    
    logic t1, t2, t3, t4;
    
    //HA HA0 (.A(A[0]), .B(B[0]), .S(S[0]), .Co(t1));//removed for RealLab04
    FA FA0 (.A(A[0]), .B(B[0]), .Ci(sub), .S(S[0]), .Co(t1));
    FA FA1 (.A(A[1]), .B(B[1]), .Ci(t1), .S(S[1]), .Co(t2));
    FA FA2 (.A(A[2]), .B(B[2]), .Ci(t2), .S(S[2]), .Co(t3));
    FA FA3 (.A(A[3]), .B(B[3]), .Ci(t3), .S(S[3]), .Co(Co));
    

     
    
endmodule

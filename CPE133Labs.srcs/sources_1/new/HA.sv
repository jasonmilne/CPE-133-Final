`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// 
// Create Date: 10/01/2020 09:34:09 AM
 
// Description: Program to make a ripple carry adder
// 
// 

//////////////////////////////////////////////////////////////////////////////////


module HA(
    input A,
    input B,
    output S,
    output Co
    );
    
    assign S = A ^ B;
    assign Co = A & B;
    
    
endmodule

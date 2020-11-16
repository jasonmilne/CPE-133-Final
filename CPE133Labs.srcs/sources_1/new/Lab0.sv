`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// 
// Create Date: 09/16/2020 01:34:52 PM
// Description: Circuit for Lab 0, learn to use vivado and basys3
//////////////////////////////////////////////////////////////////////////////////


module Lab0(
    input A,
    input B,
    input C,
    output Q
    );
    
    assign Q = ~C | (A&B);
    
endmodule

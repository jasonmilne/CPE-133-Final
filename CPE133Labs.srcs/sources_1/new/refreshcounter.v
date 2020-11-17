`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 03:45:26 PM
// Design Name: 
// Module Name: refreshcounter
// Description: A refresh counter following the tutorial by Simply Embedded https://www.youtube.com/watch?v=v2CM8RaEeQU
//this is written in veralog to follow the tutorial
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module refreshcounter(
input refresh_clock,
output reg [1:0] refreshcounter = 0

    );
    
always@(posedge refresh_clock) refreshcounter <= refreshcounter + 1;
endmodule

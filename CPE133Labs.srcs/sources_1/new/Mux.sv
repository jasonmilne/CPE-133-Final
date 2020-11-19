`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 07:42:34 PM
// Design Name: 
// Module Name: Mux
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


module Mux #(parameter WIDTH = 3)(
    input[WIDTH:0] A,
    input [WIDTH:0]B,
    input sel,
    output logic[WIDTH:0] out 
    );
    always_comb
    begin
    
    if(sel == 1) 
        begin
            out = A;
        end
    else //if(sel == 0)
        begin
            out = B;
        end
    end
endmodule

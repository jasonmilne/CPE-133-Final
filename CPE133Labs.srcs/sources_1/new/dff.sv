`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 04:07:22 PM
// Design Name: 
// Module Name: dff
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


module dff #(parameter WIDTH = 0)(
    input [WIDTH:0]D,
    input clk,
    output logic [WIDTH:0]Q = 0
    );
    
    always_ff @(posedge clk)
    begin
        Q = D;
    end
endmodule

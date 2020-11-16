`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 01:52:31 PM
// Design Name: 
// Module Name: register
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


module register #(parameter WIDTH = 0)(
    input CLK,
    input enter,
    input clr,
    input [WIDTH:0]D,
    input set,
    output logic [WIDTH:0]Q
    );
    always_ff@(posedge CLK)
    begin
        if(clr)
            Q = '0;
        else if(enter)
            Q = D;
    end
    
    
    
    
    
endmodule

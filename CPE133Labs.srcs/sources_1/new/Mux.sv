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
    input sel1,
    input sel2,
    output logic[WIDTH:0] out 
    );
    always_comb
    begin
    
    if(sel1 == 1) 
        begin
            out = B;
        end
//    else if (sel2 == 1) //this dispalys 
//        begin
//            out = B;
//        end
    else //no buttons are pushed; //trying to bypass the button to see if it fixes the problem
    begin
    
    out = A;
    end
    end
endmodule

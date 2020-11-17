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
    
    if(sel == 0 && A == 2)
        begin
         //   out = A;
            FSM_Case_0 FSM_case_0(.switches(A), .power(1), .cc(sel));
        end
    else if (sel == 1 && A == 3) //if(sel == 1)
        begin
        //    out = B;
            FSM_Case_1 FSM_case_1(.switches(A), .power(1), .cc(sel));

            
            
        end
//    else
//        begin
//            out = 123456789;
       // end
    end
    
    
    
    
    
endmodule

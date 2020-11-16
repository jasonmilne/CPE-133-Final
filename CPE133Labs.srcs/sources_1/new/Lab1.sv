`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 09/24/2020 09:59:35 AM

// Description: Circuit to test SPO POS and NORNOR circuit
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab01(
    input A,
    input B,
    input C,
    input D,
    output F_SOP,
    output F_NORNOR,
    output F_POS
    );
    
    assign F_SOP = (B & D) | (B & C) | (A & D) | ( A & C);
    assign F_POS = (C | D) & (A | B); 
    assign F_NORNOR = (~(~(C | D) | ~(A | B)));
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jason Milne
// Create Date: 11/22/3030 09:30:21 PM
// Design Name: 
// Module Name: counter
// Description: This is a "Random Number Generator"
// This module works by constantly adding one to a number until it gets to 15 then it restes back to one
// when the start button is pressed the current number is being passed back to the main program as a random number
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input  start, //reset in RandNumTable needs to come before start if simulating
    output logic [3:0]randNum
    );
 
   always_comb
    begin
        if(start == 1)
            begin
                randNum[0] = $urandom_range(0,1);
                randNum[1] = $urandom_range(0,1);
                randNum[2] = $urandom_range(0,1);
                randNum[3] = $urandom_range(0,1);
            end
    end
    
    
endmodule

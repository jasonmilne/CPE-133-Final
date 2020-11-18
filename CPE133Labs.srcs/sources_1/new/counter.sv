`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 05:00:05 PM
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
    input clk,
    input  start,
    output logic [3:0]randNum
    );
    logic [3:0]oldNum = 4'b0000;
    logic [3:0]newNum = 4'b0000; //dont think this one is needed
    
    
always@(posedge clk) 
    begin
    
    newNum = oldNum + 1;//This is adding one each clock run and restarting once it hits 15 hopefullyu
    oldNum = newNum;
    
    //these two liens are not needed but are there in case I go back a revision 
    //RCA1 RCA1(.A(4'b0001), .B(oldNum), .sub(0), .S(newNum)); //this has a ripple carry adder that just adds 1 each time the clock goes up //boo it does not like this
    //oldNum = newNum;//this resets the process so that it keeps ticking up, once it hits F it just rests back to 0  
 end
 
   always_comb
   begin
   if(start == 1)
   begin
   randNum = oldNum;
   end
   end
    
    
endmodule

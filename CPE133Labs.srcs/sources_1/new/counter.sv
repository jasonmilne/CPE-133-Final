`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 05:00:05 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input  start,
    output logic [3:0]randNum
    );
    logic [3:0]oldNum = 4'b0000;
    logic [3:0]newNum;
    
    
always@(posedge clk) 
    begin
    RCA1(.A(4'b0001), .B(oldNum), .sub(0), .S(newNum)); //this has a ripple carry adder that just adds 1 each time the clock goes up
    oldNum = newNum;//this resets the process so that it keeps ticking up, once it hits F it just rests back to 0
 
 end
 
   always_comb
   begin
   if(start == 1)
   begin
   randNum = oldNum;
   end
   end
    
    
endmodule

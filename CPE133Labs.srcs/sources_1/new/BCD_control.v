`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 03:45:26 PM
// Design Name: 
// Module Name: BCD_control
// Description: A BCD controller following the tutorial by Simply Embedded https://www.youtube.com/watch?v=v2CM8RaEeQU
//this is written in veralog to follow the tutorial
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module BCD_contorl(
input [3:0] digit1,//right digit 
input [3:0] digit2, //middle right digit
input [3:0] digit3, //middle left digit
input [3:0] digit4,  // left digit
input [1:0] refreshcounter,
output reg [3:0] ONE_DIGIT = 0 //chooses which digit is going to be displayed for that part
);

always@(refreshcounter)
begin
    case(refreshcounter)
        2'd0:
            ONE_DIGIT = digit1; //digit 1 ON (right most)
        2'd1: 
            ONE_DIGIT = digit2; //digit 2  ON
        2'd2:
            ONE_DIGIT = digit3; //digit 3 ON
        2'd3:
            ONE_DIGIT = digit4; //digit 3 ON (left most)
         endcase
end

endmodule




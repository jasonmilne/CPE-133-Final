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
input [1:0] refreshcounter, //the "clock" for this part
input clock, //might not be needed
output reg [3:0] ONE_DIGIT //chooses which digit is going to be displayed for that part
);

always@(refreshcounter)
begin
    case(refreshcounter)
        2'b00:
            ONE_DIGIT = digit4; //digit 1 ON (right most)
        2'b01: 
            ONE_DIGIT = digit3; //digit 2  ON
        2'b10:
            ONE_DIGIT = digit2; //digit 3 ON
        2'b11:
            ONE_DIGIT = digit1; //digit 4 ON (left most)
         endcase
end

endmodule




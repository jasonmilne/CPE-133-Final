`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 03:45:26 PM
// Design Name: 
// Module Name: BCD_to_cathodes
// Description: A BCD to cathode converter following the tutorial by Simply Embedded https://www.youtube.com/watch?v=v2CM8RaEeQU
//this is written in veralog to follow the tutorial
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////

module BCD_to_Cathodes(
input [3:0] digit,
output reg [7:0] seg = 0 //changed from cathod
);

always@(digit)
begin

case(digit)
    4'b0000: seg = 8'b00000011; //0 b00001100 //seems like 3
    4'b0001: seg = 8'b10011111; //1 b00110000
    4'b0010: seg = 8'b00100101;//2 b01101101
    4'b0011: seg = 8'b00001100;//3 b00000011
    4'b0100: seg = 8'b10011000;//4 b10110000
    4'b0101: seg = 8'b01001000;//5 b10010010
    4'b0110: seg = 8'b01000000;//6
    4'b0111: seg = 8'b00011111;//7
    4'b1000: seg = 8'b00000000;//8
    4'b1001: seg = 8'b00001000;///9
    4'b1010: seg = 8'b00010000;//a
    4'b1011: seg = 8'b11000000;//b
    4'b1100: seg = 8'b01100010;//c
    4'b1101: seg = 8'b10000100;//d
    4'b1110: seg = 8'b01100000;//e
    4'b1111: seg = 8'b01110000;//F
 endcase
    
end
endmodule
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
output reg [7:0] cathode = 0
);

always@(digit)
begin
case(digit)
 4'b0000: cathode = 7'b0000001; // "0"  
 4'b0001: cathode = 7'b1001111; // "1" 
 4'b0010: cathode = 7'b0010010; // "2" 
 4'b0011: cathode = 7'b0000110; // "3" 
 4'b0100: cathode = 7'b1001100; // "4" 
 4'b0101: cathode = 7'b0100100; // "5" 
 4'b0110: cathode = 7'b0100000; // "6" 
 4'b0111: cathode = 7'b0001111; // "7" 
 4'b1000: cathode = 7'b0000000; // "8"  
 4'b1001: cathode = 7'b0000100; // "9"
 4'b1010: cathode = 7'b0001000; // "a"
 4'b1011: cathode = 7'b0000011; // "b"
 4'b1100: cathode = 7'b1000110; // "c"
 4'b1101: cathode = 7'b0100001; // "d"
 4'b1110: cathode = 7'b0000110; // "e"
 4'b1111: cathode = 7'b0001110; // "f"
  
 default: cathode = 7'b0000001; // "0"
 endcase
    
end
endmodule
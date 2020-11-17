`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 03:45:26 PM
// Design Name: 
// Module Name: refreshcounter
// Description: A anode controller following the tutorial by Simply Embedded https://www.youtube.com/watch?v=v2CM8RaEeQU
//this is written in veralog to follow the tutorial
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module anode_control(
input [1:0] refreshcounter,
output reg [3:0] anode = 0
);


always@(refreshcounter)
begin
    case(refreshcounter)
        2'b00:
            anode = 4'b1110; //digit 1 ON (right most)
        2'b01: 
            anode = 4'b1101; //digit 2  ON
        2'b10:
            anode = 4'b1011; //digit 3 ON
        2'b11:
            anode = 4'b0111; //digit 3 ON (left most)
         endcase
end

endmodule
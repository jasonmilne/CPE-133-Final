`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 07:32:44 PM
// Design Name: 
// Module Name: SevenSeg
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


module SevenSeg(
    input[3:0] BCD,
    output logic [6:0] seg
    );
    
    
always_comb
begin
case(BCD)
    4'b0000: seg = 7'b1000000; //0
    1: seg = 7'b1111001; //1
    2: seg = 7'b0100100;//2
    3: seg = 7'b0110000;//3
    4: seg = 7'b0011001;//4
    5: seg = 7'b0010010;//5
    6: seg = 7'b0000010;//6
    7: seg = 7'b1111000;//7
    8: seg = 7'b0000000;//8
    9: seg = 7'b0010000;///9
    10: seg = 7'b0001000;//a
    11: seg = 7'b0000011;//b
    12: seg = 7'b1000110;//c
    13: seg = 7'b0100001;//d
    14: seg = 7'b0000110;//e
    15: seg = 7'b0001110;//f
//    4'b0000: seg = 7'b1000000; //0
//    4'b0001: seg = 7'b1111001; //1
//    4'b0010: seg = 7'b0100100;//2
//    4'b0011: seg = 7'b0110000;//3
//    4'b0100: seg = 7'b0011001;//4
//    4'b0101: seg = 7'b0010010;//5
//    4'b0110: seg = 7'b0000010;//6
//    4'b0111: seg = 7'b1111000;//7
//    4'b1000: seg = 7'b0000000;//8
//    4'b1001: seg = 7'b0010000;///9
//    4'b1010: seg = 7'b0001000;//a
//    4'b1011: seg = 7'b0000011;//b
//    4'b1100: seg = 7'b1000110;//c
//    4'b1101: seg = 7'b0100001;//d
//    4'b1110: seg = 7'b0000110;//e
//    4'b1111: seg = 7'b0001110;//f
      default: seg = 7'b1111111;//defualt
     endcase
   end
endmodule

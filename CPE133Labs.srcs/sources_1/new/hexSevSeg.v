`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/16/2020 03:45:26 PM
// Design Name: 
// Module Name: hexSevSeg
// Description: This is a hex seven segemnt display following the tutorial by Simply Embedded https://www.youtube.com/watch?v=v2CM8RaEeQU
//This module replaces the "top.v" module from the tutorial
//this is written in veralog to follow the tutorial
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
/////////////////////////////////////////////////////////////////////////////////


module hexSevSeg(
    input wire clk, //100 MHz
    input wire [15:0] switch,
   // input wire [3:0]button, //used in the tutoral but not used here
    output wire [3:0] anode,
    output wire [7:0] cathode
    );
    wire refreshclock;
    wire [1:0] refreshcounter;
    wire [3:0] ONE_DIGIT;
    
    clk_div2 refhreshclock_generator(.clk(clk), .sclk(refreshclock)); //this divides the clock so that the discplay workds
    refreshcounter Refreshcounter_wrapper(.refresh_clock(refresh_clock), .refreshcounter(refreshcounter)); //not too sure what this does the tutorial was not that specific
    anode_control anode_control_wrapper(.refreshcounter(refreshcounter), .anode(anode)); //this controlls which anode is turned on
    BCD_contorl BCD_control_wrapper(.digit1(switch[3:0]), .digit2(switch[7:4]), .digit3(switch[12:8]), .digit4(switch[15:13]), .refreshcounter(refreshcoutner), .ONE_DIGIT(ONE_DIGIT)); //this breaks the 16 bit switcehs into 4 bit numbers 
    BCD_to_Cathodes BCD_to_cathodes_wrapper(.digit(ONE_DIGIT), .cathode(cathode));//this translates bianary to "seven segement display language"
    
    
    
    
endmodule

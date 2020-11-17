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
    input wire [7:0] switch,
    input wire [3:0]button,
    output wire led
    );
    wire refreshclock;
    //wrapper for the clock divider
    clock_divider refhreshclock_generator(.clk(clk), .divided_clk(refreshclock));
    refreshcounter Refreshcounter_wrapper(.refresh_clock(refresh_clock), .refreshcounter(refreshcounter));
    anode_control anode_control_wrapper(.refreshcounter(refreshcounter), .anode(anode));
    BCD_control BCD_control_wrapper(.digit1(switches[3:0]), .digit2(switches[7:4]), .digit3(switches(switches[12:8]), .digit4(switches[15:13]), .refreshcounter(refreshcounter), .ONE_DIGIT(ONE_DIGIT));
    
    
    
    
    
endmodule

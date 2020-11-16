`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 02:23:17 PM
// Design Name: 
// Module Name: FinalProject
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


module FinalProject(
    input [15:0]switches, //the input switches
    input check, //button to check if the answer is correct
    input reset, //this is reset/start
    input clk, //this is the clock
    output ssegs, //this is the final output to the seven seg display
    output an //this is the final an to the seven seg display
    );
    logic cc; //this is the bit to decide crap or cool
    logic [3:0]randNum; //this is the random number that 
    logic [7:0]hexsseg;
    logic [7:0] ccsseg;
    logic [3:0] ccan;
    logic [3:0] hexan;
    
    RngCounter counter(.clk(clk), .start(rest
    
    
    
    
    
    
    
    
    
endmodule

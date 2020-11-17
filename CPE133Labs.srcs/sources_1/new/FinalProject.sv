`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd and Jason Milne
// 
// Create Date: 11/16/2020 02:23:17 PM
// Project Name: Help me I am bad at memorizing
// Module Name: FinalProject
// Description: This is the top module for the CPE 133 Final Project
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
    logic [3:0]randNum; //this is the random number that will be used as a lookup number for all of the differnt parts 
    logic [7:0]hexsseg; //this is the sseg for the hex number
    logic [7:0] ccsseg; //this is the crap / cool hex "number"
    logic [3:0] ccan; //this is the an for the crap/ cool
    logic [3:0] hexan; //this is the an for the hex
    logic s_clk; //this is the segmenmted clock that is used for crap/ cool sseg
    logic [15:0] randumNumberDecimal;//this is from the random number generator but has been translated from the table
    
    counter RngCounter(.clk(clk), .start(reset), .RandNum(randNum)); //This is the Random Number Generator that generates a number that is used to decide which test case is used. It uses a ripple carry adder to do the math and it just keeps looping
   //below is for testing
    Big_FSM Big_FSM(.switches(switches), .check(check) , .randNum(randNum), .cc(cc));
   
   
   
   
    //FSM Final_FSM(.switches(switches), .check(check), .R_Num(randNum), .clk(clk), .cc(cc)); //This is the FSM that checks if the switches are the same as the Hex number that is displayed
    BC_DEC ccSseg(.CLK(clk), .Z(cc), .SEGMENTS(ccseg), .DISP_EN(ccan)); //This is the seven segement display generator to display if Crap or Cool is displayed
    hexSevSeg HexSseg(.clk(clk), .switch(randumNumberDecimal), .anode(hexan), .cathode(hexsseg));// This is a seven segemnt display module that was taken and modified from a Youtube tutorial
    Mux #(15) ssegMux(.A(ccseg), .B(hexsseg), .sel(check), .out(sseg)); //this is a mux to decide which sseg to display
    Mux #(3) anMux(.A(ccan), .B(hexan), .sel(check), .out(an)); //this is a mux to decide which an to send to the seven segemtn display
    
    
    
    
    
    
    
    
    
    
endmodule

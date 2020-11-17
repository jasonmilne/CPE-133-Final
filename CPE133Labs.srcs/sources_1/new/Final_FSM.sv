`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 11:47:28 AM
// Design Name: 
// Module Name: Final_FSM
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


module Final_FSM(
    input switches,
    input check,
    input clk,//the clock might not be needed
    input [3:0]randNum,
    output cc
    );
    parameter [3:0] START = 4'b0000; //this is the starting state, if a FSM check fails it gets passed back to this
    logic [3:0] NS; // this is the next states
    logic [3:0] PS = START; //this is defianing the first rotation MIGHT BREAK SOMETHING
    //all of the states represent one of the bits in switches
    logic [3:0] a = 4'b0000;// state 1   //bit 0
    logic [3:0] b = 4'b0001;// state 2   //bit 1
    logic [3:0] c = 4'b0010;// state 3   //bit 2
    logic [3:0] d = 4'b0011;// state 4   //bit 3
    logic [3:0] e = 4'b0100;// state 5   //bit 4
    logic [3:0] f = 4'b0101;// state 6   //bit 5
    logic [3:0] g = 4'b0110;// state 7   //bit 6
    logic [3:0] h = 4'b0111;// state 8   //bit 7
    logic [3:0] i = 4'b1000;// state 9   //bit 8
    logic [3:0] j = 4'b1001;// state 10  //bit 9
    logic [3:0] k = 4'b1010;// state 11  //bit 10
    logic [3:0] l = 4'b1011;// state 12  //bit 11
    logic [3:0] m = 4'b1100;// state 13  //bit 12
    logic [3:0] n = 4'b1101;// state 14  //bit 13
    logic [3:0] o = 4'b1110;// state 15  //bit 14
    logic [3:0] p = 4'b1111;// state 16  //bit 15  
    
    always_ff @(posedge check) //this is anyncrous with the clock it is just checking if the clock is running
    begin
        if (check) PS = 
    
    
    
    
    
    
    
    
    
    
endmodule

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
    input wire [15:0] switch, //if this is noted out then it is being manually controlled below
   // input wire [3:0]button, //used in the tutoral but not used here
    output wire [3:0] anode,
    output wire [7:0] cathode
    );
    //The first block of noted out wires are used for testing purposes only
    //wire [15:0]switch = 16'b1010110011011100; //acdc
    // wire [15:0]switch = 16'b0011001000010000; //testing 3210
    //wire [15:0]switch = 16'b0111011001010100; //testing 7654
    //wire [15:0]switch = 16'b1011101010011000; //testing ba98
    //wire [15:0]switch = 16'b1111111011011100; //testing fedc
    //wire [3:0] manual1 = 4'b0000; //this is to manually test this circuit with each circuit broken up
    //wire [3:0] manual2 = 4'b0001; //this is to manually test this circuit with each circuit broken up
    //wire [3:0] manual3 = 4'b0010; //this is to manually test this circuit with each circuit broken up
    // wire [3:0] manual4 = 4'b0011; //this is to manually test this circuit with each circuit broken up
    
    wire refreshclock;
    wire [1:0] refreshcounter;
    wire [3:0] ONE_DIGIT;

    other_clock_devider clock_divider(.clk(clk), .divided_clock(refreshclock));
    //clk_div2 refhreshclock_generator(.clk(clk), .sclk(refreshclock)); //this divides the clock so that the discplay workds //this is the one that was liberated form a pervious project
    refreshcounter Refreshcounter_wrapper(.refresh_clock(refreshclock), .refreshcounter(refreshcounter)); //This is a counter to power on each digit seperatley
    anode_control anode_control_wrapper(.refreshcounter(refreshcounter), .anode(anode)); //this controlls which anode is turned on
    //BCD_contorl BCD_control_wrapper(.digit1(manual1), .digit2(manual2), .digit3(manual3), .digit4(manual4), .refreshcounter(refreshcounter), .ONE_DIGIT(ONE_DIGIT), .clock(clk));//this one is for manually testing without "switch"
     BCD_contorl BCD_control_wrapper(.digit1(switch[3:0]), .digit2(switch[7:4]), .digit3(switch[11:8]), .digit4(switch[15:12]), .refreshcounter(refreshcounter), .ONE_DIGIT(ONE_DIGIT), .clock(clk)); //this breaks the 16 bit switcehs into 4 bit numbers  //this might not teed the clock
    BCD_to_Cathodes BCD_to_cathodes_wrapper(.digit(ONE_DIGIT), .seg(cathode));//this translates bianary to "seven segement display language"
    
    
    
endmodule

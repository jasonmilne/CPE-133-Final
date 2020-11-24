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
    //FOR DEBUG USE can not out check 
    input check, //button to check if the answer is correct
    input reset, //this is reset/start
    input clk, //this is the clock
    input displayHex, //this is a button to display the Hex number to match
    input displaycc, //this is a button to display Crap/ Cool
    output [7:0]ssegs, //this is the final output to the seven seg display
    output [3:0]an, //this is the final an to the seven seg display
    output [15:0]LEDS
    );
    logic cc; //this is the bit to decide crap or cool
    
    
    //can manually set randnum in the line below For testing purposes only
    logic [3:0]randNum; //this is the random number that will be used as a lookup number for all of the differnt parts 
    
    
    
    //logic [3:0]randNum; //This is the random number that the counter generates
    logic [7:0]hexsseg; //this is the sseg for the hex number
    logic [7:0] ccsseg; //this is the crap / cool hex "number"
    logic [3:0] ccan; //this is the an for the crap/ cool
    logic [3:0] hexan; //this is the an for the hex
    logic s_clk; //this is the segmenmted clock that is used for crap/ cool sseg
    logic [15:0] randomNumberDecimal;//this is from the random number generator but has been translated from the table
    
   // logic check = 1; //FOR DEBUG USE ONLY
    
    //the powerx below are there to turn on each FSM when it's randum number is called. They are all either 0 for off or 1 for on
    logic power0;  //powers on  FSM 0
    logic power1;  //powers on FSM 1
    logic power2;  //powers on FSM 2
    logic power3;  //powers on FSM 3
    logic power4;  //powers on FSM 4
    logic power5;  //powers on FSM 5
    logic power6;  //powers on FSM 6
    logic power7;  //powers on FSM 7
    logic power8;  //powers on FSM 8
    logic power9;  //powers on FSM 9
    logic power10; //powers on FSM 10
    logic power11; //powers on FSM 11
    logic power12; //powers on FSM 12
    logic power13; //powers on FSM 13
    logic power14; //powers on FSM 14
    logic power15; //powers on FSM 15
    //cc is crap/ cool
    logic cc0;     //cc output for FSM 0
    logic cc1;     //cc output for FSM 1
    logic cc2;     //cc output for FSM 2
    logic cc3;     //cc output for FSM 3
    logic cc4;     //cc output for FSM 4
    logic cc5;     //cc output for FSM 5
    logic cc6;     //cc output for FSM 6
    logic cc7;     //cc output for FSM 7
    logic cc8;     //cc output for FSM 8
    logic cc9;     //cc output for FSM 9
    logic cc10;    //cc output for FSM 10
    logic cc11;    //cc output for FSM 11
    logic cc12;    //cc output for FSM 12
    logic cc13;    //cc output for FSM 13
    logic cc14;    //cc output for FSM 14
    logic cc15;    //cc output for FSM 15

    
    //removing the random number generator for testing
    //if counter is noted out then it is manually controlled above for testing
    //counter RngCounter(.clk(clk), .start(reset), .randNum(randNum)); //This is the Random Number Generator that generates a number that is used to decide which test case is used. It uses a ripple carry adder to do the math and it just keeps looping
    clk_div2 clock_divider(.CLK(CLK), .sclk(s_clk));
    counter c1(.start(start), .randNum(randNum));
    randNumTable RandNumterToDecimal(.randNum(randNum), .RandNumberDecimal(randomNumberDecimal), .reset(reset));

   //this block is taking in the RandNum and powering on a FSM
     Big_FSM Big_FSM(.switches(switches), .check(check) , .randNum(randNum),
         .power0(power0), .power1(power1), .power2(power2), .power3(power3), .power4(power4), .power5(power5), .power6(power6),
         .power7(power7), .power8(power8), .power9(power9), .power10(power10), .power11(power11), .power12(power12),
         .power13(power13), .power14(power14), .power15(power15));
     
     //for testing purposes all cases are going to be the same. They are a direct copy and paste
     //TODO Change the FSM's to be differnt and fill out the table that is in the word docs
     FSM_Case_0 FSM_Case_0(.switches(switches),   .power(power0),  .clk(clk), .check(check), .cc(cc0), .led(LEDS));  //This is FSM 0 leds is for debug use only
     FSM_Case_1 FSM_Case_1(.switches(switches),   .power(power1),  .clk(clk), .check(check), .cc(cc1));  //This is FSM 1
     FSM_Case_2 FSM_Case_2(.switches(switches),   .power(power2),  .clk(clk), .check(check), .cc(cc2));  //This is FSM 2
     FSM_Case_3 FSM_Case_3(.switches(switches),   .power(power3),  .clk(clk), .check(check), .cc(cc3));  //This is FSM 3
     FSM_Case_4 FSM_Case_4(.switches(switches),   .power(power4),  .clk(clk), .check(check), .cc(cc4));  //This is FSM 4 
     FSM_Case_5 FSM_Case_5(.switches(switches),   .power(power5),  .clk(clk), .check(check), .cc(cc5));  //This is FSM 5
     FSM_Case_6 FSM_Case_6(.switches(switches),   .power(power6),  .clk(clk), .check(check), .cc(cc6));  //This is FSM 6
     FSM_Case_7 FSM_Case_7(.switches(switches),   .power(power7),  .clk(clk), .check(check), .cc(cc7));  //This is FSM 7
     FSM_Case_8 FSM_Case_8(.switches(switches),   .power(power8),  .clk(clk), .check(check), .cc(cc8));  //This is FSM 8 
     FSM_Case_9 FSM_Case_9(.switches(switches),   .power(power9),  .clk(clk), .check(check), .cc(cc9));  //This is FSM 9
     FSM_Case_10 FSM_Case_10(.switches(switches), .power(power10), .clk(clk), .check(check), .cc(cc10)); //This is FSM 10
     FSM_Case_11 FSM_Case_11(.switches(switches), .power(power11), .clk(clk), .check(check), .cc(cc11)); //This is FSM 11
     FSM_Case_12 FSM_Case_12(.switches(switches), .power(power12), .clk(clk), .check(check), .cc(cc12)); //This is FSM 12
     FSM_Case_13 FSM_Case_13(.switches(switches), .power(power13), .clk(clk), .check(check), .cc(cc13)); //This is FSM 13
     FSM_Case_14 FSM_Case_14(.switches(switches), .power(power14), .clk(clk), .check(check), .cc(cc14)); //This is FSM 14
     FSM_Case_15 FSM_Case_15(.switches(switches), .power(power15), .clk(clk), .check(check), .cc(cc15)); //This is FSM 15
    //The MUX below sends throught one cc depending on which FSM is powerd on
     CC_MUX CC_MUX(.cc(cc), 
         .power0(power0), .power1(power1), .power2(power2), .power3(power3), .power4(power4), .power5(power5), .power6(power6),
         .power7(power7), .power8(power8), .power9(power9), .power10(power10), .power11(power11), .power12(power12),
         .power13(power13), .power14(power14), .power15(power15),
         .cc0(cc0), .cc1(cc1), .cc2(cc2), .cc3(cc3), .cc4(cc4), .cc5(cc5), .cc6(cc6) ,.cc7(cc7), .cc8(cc8), .cc9(cc9), .cc10(cc10),
         .cc11(cc11), .cc12(cc12), .cc13(cc13), .cc14(cc14), .cc15(cc15));
         //the noted out Block below is for testing purpose only
    //BC_DEC ccSsegttest(.CLK(clk), .Z(cc), .SEGMENTS(ssegs), .DISP_EN(an));  //FOR DEBUG ONLY this line bypases the Mux's below AND ONLY TALES THE RESPONSE FROM FSM_CASE_0
   //hexSevSeg HexSseg(.clk(clk), .anode(an), .cathode(ssegs)); //this one is for manually controlling the "randomNumberDecimal" that is in the module below
    //hexSevSeg HexSseg(.clk(clk), .switch(randomNumberDecimal), .anode(an), .cathode(ssegs)); //FOR DEBUG USE ONLY this manually overrides the Mux's below


    // if the two muxes are not being used. I Am testing something manually 
    BC_DEC ccSseg(.CLK(clk), .Z(cc), .SEGMENTS(ccsseg), .DISP_EN(ccan)); //This is the seven segement display generator to display if Crap or Cool is displayed
    hexSevSeg HexSseg(.clk(clk), .switch(randomNumberDecimal), .anode(hexan), .cathode(hexsseg));// This is a seven segemnt display module that was taken and modified from a Youtube tutorial

    Mux #(7) ssegMux(.A(ccsseg), .B(hexsseg), .sel1(displaycc), .sel2(displayHex), .out(ssegs)); //this is a mux to decide which sseg to display
    Mux #(3) anMux(.A(ccan), .B(hexan), .sel1(displaycc), .sel2(displayHex), .out(an)); //this is a mux to decide which an to send to the seven segemtn display
    
    
    
    
    
    
    
    
    
    
endmodule

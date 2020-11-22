`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 06:08:00 PM
// Design Name: 
// Module Name: FinalSim
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


module FinalSim(

    );
    logic [15:0]switches; //the input switches
    logic check; //button to check if the answer is correct
    logic reset; //this is reset/start
    logic clk; //this is the clock
    logic [7:0]ssegs; //this is the final output to the seven seg display
    logic [3:0]an; //this is the final an to the seven seg     
    
    FinalProject Labl_inst(.switches(switches), .check(check), .reset(reset), .clk(clk), .ssegs(ssegs), .an(an));
    always
    begin
    clk = 1;
    #1
    clk = 0;
    #1;
    end
    
    
    
    initial
    begin 
    switches = 15'b0011101100111010; check = 0; reset = 1;
    #40
    switches = 15'b0011101100111010; check = 1; reset = 0;
    #40
    switches = 15'b0011101100111010; check = 0; reset = 0;
    #40
    switches = 15'b1010110011011101; check = 1; reset = 0;
    #40
    switches = 15'b1010110011011101; check = 0; reset = 1;
    #40
    switches = 15'b1010110011011101; check = 1; reset = 0;
    #40
        
    check = 0; reset = 1;
    #40
        
    //1 - B244
    reset = 0;
    switches = 15'b1011001001000100; check = 1;
    #40
    check = 0; reset = 1;
    #40
    
    //2 - 0047
    reset = 0;
    switches = 15'b0000000001000111; check = 1;
    #40
    check = 0; reset = 1;
    #40
    
    //3 - 0C54
    reset = 0;
    switches = 15'b0000110001010100; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //4 - 38C6
    reset = 0;
    switches = 15'b0011100011000110; check = 1;
    #40
    check = 0; reset = 1;
    #40
        
    //5 - BEF5
    reset = 0;
    switches = 15'b1011111011110101; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //6 - BDCA
    reset = 0;
    switches = 15'b1011110111001010; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //7 - 251F
    reset = 0;
    switches = 15'b0010010100011111; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //8 - 316B
    reset = 0;
    switches = 15'b0011000101101011; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //9 - C138
    reset = 0;
    switches = 15'b1100000100111000; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //10 - 5368
    reset = 0;
    switches = 15'b0101001101101000; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //11 - 8B71
    reset = 0;
    switches = 15'b1000101101110001; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //12 - 8DA9
    reset = 0;
    switches = 15'b1000110110101001; check = 1;
    #40
    check = 0; reset = 1;
    #40
    
    //13 - E5AC
    reset = 0;
    switches = 15'b1110010110101100; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //14 - F5F9
    reset = 0;
    switches = 15'b1111010111111001; check = 1;
    #40
    check = 0; reset = 1;
    #40

    //15 - 7A67
    reset = 0;
    switches = 15'b0111101001100111; check = 1;
    #40
    check = 0; reset = 1;
    #40
    

    end
    
    
    
    
    
    
    
endmodule

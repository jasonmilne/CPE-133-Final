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

    end
    
    
    
    
    
    
    
endmodule

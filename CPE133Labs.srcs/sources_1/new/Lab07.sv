`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2020 06:39:28 PM
// Design Name: 
// Module Name: Lab07
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


module Lab07(
    input CLK,
    input [7:0]SWITCHES,
    input BT0,
    output [7:0]seg,
    output [3:0]an,
    output [7:0]LEDS
    );
    
    logic s_clk;
    logic x;
    logic z;
    
    clk_div2 clock_divider(.CLK(CLK), .sclk(s_clk));
    SEQ_DVR seqdvr(.SWITCHES(SWITCHES), .CLK(s_clk), .x(x), .LEDS(LEDS));
    fsm_template fsm(.clk(s_clk), .x(x), .bt0(BT0), .moore(z));
    BC_DEC bc_dec(.CLK(CLK), .Z(z), .SEGMENTS(seg), .DISP_EN(an));
      
    
    
    
    
    
endmodule

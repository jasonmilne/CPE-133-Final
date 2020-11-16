`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 06:27:45 PM
// Design Name: 
// Module Name: Multiply_FSM
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


module Multiply_FSM(
    input clk,
    input Enter,
    input [3:0]B,
    output logic [1:0]SR_SEL,
    output logic ACC_LD,
    output logic ACC_CLR
    );
    parameter [2:0] START = 3'b000;
    logic [2:0] NS;
    logic [2:0] PS = START;
    logic [2:0] HOLD = 4'b000;
    logic [2:0] STARTPosition = 4'b001;
    logic [2:0] BIT0 = 4'b010;
    logic [2:0] BIT1 = 4'b011;
    logic [2:0] BIT2 = 4'b100;
    logic [2:0] BIT3 = 3'b101;
    logic true = 1;
    
        always_ff @ (posedge Enter, posedge clk)
    begin
        if (Enter) PS = STARTPosition; //changed from HOLD to STARTPosition
        else       PS = NS;
       //combinatorial logic 
  end
  
  
    always_comb 
    begin
    //initialze all outputs to zero
    SR_SEL = 0;
    ACC_LD = 0;
    ACC_CLR = 0;    
    case(PS) //this decides which state to take
        HOLD:
        begin
            SR_SEL = 0;
            ACC_LD = 0;
            ACC_CLR = 0;
            if(Enter == 1) //enter is pushed
            begin
                NS = STARTPosition;
            end
            else //enter is not pushed
            begin
                NS = HOLD;
            end
        end
        
        
        STARTPosition: //the "starting state
        begin
            SR_SEL = 1;
            ACC_LD = 0;
            ACC_CLR = 1;
            NS = BIT0;
        end
        
        BIT0:
        begin
            SR_SEL = 2;
            ACC_CLR = 0;
            if(B[0] == 1)
            begin
                ACC_LD = 1;
                NS = BIT1;
            end
            else
            begin
                ACC_LD = 0;
                NS = BIT1;
            end
        end
        BIT1:
        begin
            SR_SEL = 2;
            ACC_CLR = 0;
            if(B[1] == 1)
            begin
                ACC_LD = 1;
                NS = BIT2;
            end
            else
            begin
                ACC_LD = 0;
                NS = BIT2;
            end
        end
        BIT2:
        begin
            SR_SEL = 2;
            ACC_CLR = 0;
            if(B[2] == 1)
            begin
                ACC_LD = 1;
                NS = BIT3;
            end
            else
            begin
                ACC_LD = 0;
                NS = BIT3;
            end
        end
        BIT3:
        begin
            SR_SEL = 2;
            ACC_CLR = 0;
            if(B[3] == 1)
            begin
                ACC_LD = 1;
                NS = HOLD;
            end
            else
            begin
                ACC_LD = 0;
                NS = HOLD;
            end
            end
        endcase
        end   
endmodule

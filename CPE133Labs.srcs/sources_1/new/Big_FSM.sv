`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 11/17/2020 12:05:28 PM
// Design Name: This is the "head" FSM module
// Module Name: Big_FSM
// Description: This program takes the randNum and compares it to a table, from there it sends the randNum to the correct FSM that is downstream
// Additional Comments: This module is NOT a FSM
// 
//////////////////////////////////////////////////////////////////////////////////


module Big_FSM( //I think that this is not needed
    input [15:0]switches, //This is the raw switches input
    input logic check,    //this is the button for checking
    input logic [3:0]randNum,  //This is the randum number that is being compared int the table
    output [3:0]power,
    output cc,       //This is the final output that is going to say "crap" or "cool"
    output logic power0,  //powers on  FSM 0
    output logic power1,  //powers on FSM 1
    output logic power2,  //powers on FSM 2
    output logic power3,  //powers on FSM 3
    output logic power4,  //powers on FSM 4
    output logic power5,  //powers on FSM 5
    output logic power6,  //powers on FSM 6
    output logic power7,  //powers on FSM 7
    output logic power8,  //powers on FSM 8
    output logic power9,  //powers on FSM 9
    output logic power10, //powers on FSM 10
    output logic power11, //powers on FSM 11
    output logic power12, //powers on FSM 12
    output logic power13, //powers on FSM 13
    output logic power14, //powers on FSM 14
    output logic power15  //powers on FSM 15
    );
    always_comb
    begin
    case(randNum)
       0: power0   = 0; //power on FSM0
       1: power1   = 1; //power on FSM1
       2: power2   = 1; //power on FSM2
       3: power3   = 1; //power on FSM3
       4: power4   = 1; //power on FSM4
       5: power5   = 1; //power on FSM5
       6: power6   = 1; //power on FSM6
       7: power7   = 1; //power on FSM7
       8: power8   = 1; //power on FSM8
       9: power9   = 1; //power on FSM9
       10: power10 = 1; //power on FSM10
       11: power11 = 1; //power on FSM11
       12: power12 = 1; //power on FSM12
       13: power13 = 1; //power on FSM13
       14: power14 = 1; //power on FSM14
       15: power15 = 1; //power on FSM15
       default:
       //default is to power off all FSM's
            begin
        power0  = 0; 
        power1  = 0; 
        power2  = 0; 
        power3  = 0; 
        power4  = 0; 
        power5  = 0; 
        power6  = 0; 
        power7  = 0; 
        power8  = 0; 
        power9  = 0; 
        power10 = 0; 
        power11 = 0; 
        power12 = 0; 
        power13 = 0; 
        power14 = 0; 
        power15 = 0;
            end
       endcase
end

endmodule

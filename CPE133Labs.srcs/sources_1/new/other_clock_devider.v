`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// 
// Create Date: 11/22/2020 11:22:05 AM
// Design Name: 
// Module Name: other_clock_devider
// Description: This is a clock devider module that was created from the tutorial by Simply Embedded https://www.youtube.com/watch?v=iei1EugtQvQ 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module other_clock_devider(
    input wire clk, //100 MHz clock that is straight from the board
    output reg divided_clock = 0 //This is the final divided clock from this program at 1hz
    );
    localparam div_value = 4999; //this is the value that everything is divided by
    
    //counter
    integer counter_value = 0; //32 bit wide reg bus
    
    always@(posedge clk)// sensitivity list
    begin
    if(counter_value == div_value)
        counter_value = 0; //reset value
    else
        counter_value <= counter_value+1; //add up to the next value
    
    
    end
    
    
    //divide clock
    always@(posedge clk)
    begin
    if(counter_value == div_value)
        divided_clock <= ~divided_clock; // flip the clock
    else
        divided_clock <= divided_clock;
    end
    
    
endmodule

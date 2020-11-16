`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2020 05:58:01 PM
// Design Name: 
// Module Name: Validity
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


module Validity(
    input A,
    input B,
    input S,
    output logic Valid
    );
always_comb
begin
if(A == 0 & B == 0 & S == 0)
    begin
        Valid = 1;
    end
else if(A == 1 & B == 1 & S ==1)
    begin
        Valid = 1;
    end
    
else if(A != B)
    begin
        Valid = 1;
    end
else 
    begin
        Valid = 0;
    end
end
    
    
endmodule

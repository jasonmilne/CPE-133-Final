`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 01:09:28 PM
// Design Name: 
// Module Name: randNumTable
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


module randNumTable(
    input [3:0]randNum,
    output logic [15:0]RandNumberDecimal,
    input reset
    );
    
    always_ff @(posedge reset)
    begin
    case (randNum)
    4'b0000: //This is the random number for ACDC
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     4'b0001: //This is the random number for B244
    begin
    RandNumberDecimal = 16'b1011001001000100;
    end
     4'b0010: //This is the random number for 0047
    begin
    RandNumberDecimal = 16'b0000000001000111;
    end
     3: //This is the random number for 0C54
    begin
    RandNumberDecimal = 16'b0000110001010100;
    end
     4: //This is the random number for 38C6
    begin
    RandNumberDecimal = 16'b0011100011000110;
    end
     5: //This is the random number for BEF5
    begin
    RandNumberDecimal = 16'b1011111011110101;
    end
     6: //This is the random number for BDCA
    begin
    RandNumberDecimal = 16'b1011110111001010;
    end
     7: //This is the random number for 251F
    begin
    RandNumberDecimal = 16'b0010010100011111;
    end
     8: //This is the random number for 316B
    begin
    RandNumberDecimal = 16'b0011000101101011;
    end
     9: //This is the random number for C138
    begin
    RandNumberDecimal = 16'b1100000100111000;
    end
     10: //This is the random number for 5368
    begin
    RandNumberDecimal = 16'b0101001101101000;
    end
     11: //This is the random number for 8B71
    begin
    RandNumberDecimal = 16'b1000101101110001;
    end
     12: //This is the random number for 8DA9
    begin
    RandNumberDecimal = 16'b1000110110101001;
    end
     13: //This is the random number for E5AC
    begin
    RandNumberDecimal = 16'b1110010110101100;
    end
     14: //This is the random number for F5F9
    begin
    RandNumberDecimal = 16'b1111010111111001;
    end
     15: //This is the random number for 7A67
    begin
    RandNumberDecimal = 16'b0111101001100111;
    end

    
    
    endcase
end
    
endmodule

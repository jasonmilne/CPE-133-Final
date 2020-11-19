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
    0: //This is the random number for ACDC
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     1: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     2: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     3: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     4: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     5: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     6: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     7: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     8: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     9: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     10: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     11: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     12: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     13: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     14: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end
     15: //This is the random number for TODO
    begin
    RandNumberDecimal = 16'b1010110011011100;
    end

    
    
    endcase
end
    
endmodule

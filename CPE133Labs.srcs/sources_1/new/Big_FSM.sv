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


module Big_FSM( 
    input [15:0]switches, //This is the raw switches input
    input logic check,    //this is the button for checking
    input logic [3:0]randNum,  //This is the randum number that is being compared int the table
    output cc       //This is the final output that is going to say "crap" or "cool"
    );
    
    logic WhyIsThisNeeded = 0;
always_comb
begin
    //have to use this if format to keep System Veralog Happy
    if(check == 1 && randNum == 4'b0000) // case 0
        begin
           FSM_Case_0 FSM_Case_0(.switches(switeches), .power(1), .cc(cc));
        end
    else //if (check == 1 && randNum == 4'b0001) //case 1
        begin
            FSM_Case_1 FSM_Case_1(.switches(switeches), .power(1), .cc(cc));
        end 
//    else if (check == 1 && randNum == 2) //case 2
//        begin
//            FSM_Case_2 FSM_Case_2(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 3) //case 3
//        begin
//            FSM_Case_3 FSM_Case_3(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 4) //case 4
//        begin
//            FSM_Case_4 FSM_Case_4(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 5) //case 5
//        begin
//            FSM_Case_1 FSM_Case_5(.switches(switeches), .power(1), .cc(cc));
//        end 
//        else if (check == 1 && randNum == 6) //case 6
//        begin
//            FSM_Case_6 FSM_Case_6(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 7) //case 7
//        begin
//            FSM_Case_7 FSM_Case_7(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 8) //case 8
//        begin
//            FSM_Case_8 FSM_Case_8(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 9) //case 9
//        begin
//            FSM_Case_9 FSM_Case_9(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 10) //case 10
//        begin
//            FSM_Case_10 FSM_Case_10(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 11) //case 11
//        begin
//            FSM_Case_11 FSM_Case_11(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 12) //case 12
//        begin
//            FSM_Case_12 FSM_Case_12(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 13) //case 13
//        begin
//            FSM_Case_13 FSM_Case_13(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 14) //case 14
//        begin
//            FSM_Case_14 FSM_Case_14(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else if (check == 1 && randNum == 15) //case 15
//        begin
//            FSM_Case_15 FSM_Case_15(.switches(switeches), .power(1), .cc(cc));
//        end 
//    else
//    begin
//        //do nothing
//    end
end

endmodule

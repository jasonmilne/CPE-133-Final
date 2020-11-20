`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Jacob Bograd
// 
// Create Date: 11/17/2020 12:21:19 PM
// Design Name: FSM for memory check
// Module Name: FSM_Case_0
// Description: This is the FSM for checking if the user input is the same as the nuber displayed on the screen
// This is going to be copy and patesd for all 15 cases, the FSM is going to be powerd on if it's nubmer is generated by the random number generator
// 
//
//
//              THIS TEST CASE IS FOR: TODO
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM_Case_7(
    input [15:0]switches,
    input power,
    input clk,
    input check, //check might not be needed going to start off of power first, if it does not stop then will have check be the starter
    output logic cc,
    output logic [15:0]led
    );
    parameter [4:0] START = 5'b00000; //this is the starting state, if a FSM check fails it gets passed back to this
    logic [4:0] NS; // this is the next states
    logic [4:0] PS = START; //this is defianing the first rotation MIGHT BREAK SOMETHING
    //all of the states represent one of the bits in switches
    logic [4:0] a = 5'b00000;// state 1   //bit 0
    logic [4:0] b = 5'b00001;// state 2   //bit 1
    logic [4:0] c = 5'b00010;// state 3   //bit 2
    logic [4:0] d = 5'b00011;// state 4   //bit 3
    logic [4:0] e = 5'b00100;// state 5   //bit 4
    logic [4:0] f = 5'b00101;// state 6   //bit 5
    logic [4:0] g = 5'b00110;// state 7   //bit 6
    logic [4:0] h = 5'b00111;// state 8   //bit 7
    logic [4:0] i = 5'b01000;// state 9   //bit 8
    logic [4:0] j = 5'b01001;// state 10  //bit 9
    logic [4:0] k = 5'b01010;// state 11  //bit 10
    logic [4:0] L = 5'b01011;// state 12  //bit 11
    logic [4:0] m = 5'b01100;// state 13  //bit 12
    logic [4:0] n = 5'b01101;// state 14  //bit 13
    logic [4:0] o = 5'b01110;// state 15  //bit 14
    logic [4:0] p = 5'b01111;// state 16  //bit 15  
    logic [4:0] FAIL = 5'b11111; //this is what the state goes to if the test case fails
    logic [4:0] DONE = 5'b10111; //This is the ending state which just holds
    
    always_ff @(posedge clk)//lets just make this depending on the clock, posedge check)// now just making it based on clock, posedge check) //this checks every clock as well on the posedge of check, it just keeps resetting
    begin
    if(check == 1)
    begin
        PS = START;
    end
    else
    begin
        PS = NS;
    end
    end
    
//    always_ff @(posedge check)
//    begin
////            led[0] = 0;
////            led[1] = 0;
////            led[2] = 0;
////            led[3] = 0;
////            led[4] = 0;
////            led[5] = 0;
////            led[6] = 0;
////            led[7] = 0;
////            led[8] = 0;
////            led[9] = 0;
////            led[10] = 0;
////            led[11] = 0;
////            led[12] = 0;
////            led[13] = 0;
////            led[14] = 0;
////            led[15] = 0;
//            PS = START;
//     end
    
    
    
    always_comb
    begin
 //start off with crap

  //  if(power == 1)//this is checking if this FSM is powerd on //temp removing power is somewhere else
  //  begin
    case(PS)
        a:// this is checking if the first bit is correct
        begin
            led[0] = 0; //start by resetting all of the LED's
            led[1] = 0;
            led[2] = 0;
            led[3] = 0;
            led[4] = 0;
            led[5] = 0;
            led[6] = 0;
            led[7] = 0;
            led[8] = 0;
            led[9] = 0;
            led[10] = 0;
            led[11] = 0;
            led[12] = 0;
            led[13] = 0;
            led[14] = 0;
            led[15] = 0;
            if(switches[0] == 1) //this is the correct position
                begin
                led[0] = 1;
                    NS = b;
                end
            else //this failed
                begin 
                    NS = FAIL;
                end
       end
        b:// this is checking if the second bit is correct
        begin
            if(switches[1] == 0) //this is the correct position 
                begin
                led[1] = 1;
                    NS = c;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        c:// this is checking if the thrid bit is correct
        begin
            if(switches[2] == 1) //this is the correct position
                begin
                    led [2] = 1;
                    NS = d;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        d:// this is checking if the forth bit is correct
        begin
            if(switches[3] == 0) //this is the correct position
                begin
                    led [3] = 1;
                    NS = e;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        e:// this is checking if the fifth bit is correct
        begin
            if(switches[4] == 1) //this is the correct position
                begin
                    led [4] = 1;
                    NS = f;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        f:// this is checking if the sixth bit is correct
        
        begin
            if(switches[5] == 1) //this is the correct position
                begin
                    led [5] = 1;
                    NS = g;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        g:// this is checking if the seventh bit is correct
        begin
            if(switches[6] == 0) //this is the correct position
                begin
                    led[6] = 1;
                    NS = h;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        h:// this is checking if the eight bit is correct
        begin
            if(switches[7] == 0) //this is the correct position
                begin
                    led[7] = 1;
                    NS = i;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        i:// this is checking if the ninth bit is correct
        begin
            if(switches[8] == 1) //this is the correct position
                begin
                    led[8] = 1;
                    NS = j;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        j:// this is checking if the tenth bit is correct
        begin
            if(switches[9] == 1) //this is the correct position
                begin
                led[9] = 1;
                    NS = k;
                end
            else //this failed
                begin

                    NS = FAIL;
                    cc = 0;
                end
       end
        k:// this is checking if the 11 bit is correct
        begin
            if(switches[10] == 0) //this is the correct position
                begin
                    led[10] = 1;
                    NS = L; //this is the letter l not the number 1
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        L:// this is checking if the 12 bit is correct
        begin
            if(switches[11] == 1) //this is the correct position
                begin
                    led[11] = 1;
                    NS = m;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        m:// this is checking if the 13 bit is correct
        begin
            if(switches[12] == 1) //this is the correct position
                begin
                    led[12] = 1;
                    NS = n;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end      
       n:// this is checking if the 14  bit is correct
        begin
            if(switches[13] == 1) //this is the correct position
                begin
                led[13] = 1;
                    NS = o;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end      
         o:// this is checking if the 15 bit is correct
        begin
            if(switches[14] == 0) //this is the correct position
                begin
                    led[14] = 1;
                    NS = p;
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        p:// this is checking if the 16 bit is correct
        begin
            if(switches[15] == 0) //this is the correct position
                begin
                    led[15] = 1;
                    NS = DONE; // I do not think that 
                end
            else //this failed
                begin 
                    NS = FAIL;
                    cc = 0;
                end
       end
        FAIL:// this is the failure state
        begin
            cc = 0; //send a fail to the end
            led[0] = 0;
            led[1] = 0;
            led[2] = 0;
            led[3] = 0;
            led[4] = 0;
            led[5] = 0;
            led[6] = 0;
            led[7] = 0;
            led[8] = 0;
            led[9] = 0;
            led[10] = 0;
            led[11] = 0;
            led[12] = 0;
            led[13] = 0;
            led[14] = 0;
            led[15] = 0;
            NS = a;
       end
       DONE: //This is the state when it is done and it just holds until check is hit again
        begin
        //this is purposley left blank
            led[0] = 1;
            led[1] = 1;
            led[2] = 1;
            led[3] = 1;
            led[4] = 1;
            led[5] = 1;
            led[6] = 1;
            led[7] = 1;
            led[8] = 1;
            led[9] = 1;
            led[10] = 1;
            led[11] = 1;
            led[12] = 1;
            led[13] = 1;
            led[14] = 1;
            led[15] = 1;
            cc = 1; //yay we passed
            NS = DONE; //This might casue an endless loop
        end
       default: //this is the defualt case to catch anything that slipped through the cracks
        begin
        //this is purposley left blank
        end
        endcase
//    end
end
endmodule
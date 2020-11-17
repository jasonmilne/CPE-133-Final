`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Bridget Benson 
// Create Date: 10/29/2018 07:31:15 PM
// Description: Shows how to write an FSM
//////////////////////////////////////////////////////////////////////////////////

module fsm_template(
    input clk,
    input reset,
    input x,
    input bt0,
    output logic mealy, moore
    );
    
    //declare present state (PS) and next state (NS) variables to
    //be the size of log2(number of states)
    //initialize PS to the beginning state
        //assign bit values to your states
    //again the size should be log2(number of states)
    parameter [2:0] START = 3'b000; //, ST1 = 2'b01, ST2= 2'b10; //these were defined above
    logic [2:0] NS;
    logic [3:0] PS = START;
    logic [3:0] a = 4'b0000;
    logic [3:0] b = 4'b0001;
    logic [3:0] c = 4'b0010;
    logic [3:0] d = 4'b0011;
    logic [3:0] e = 4'b0100;
    logic [3:0] f = 4'b0101;
    logic [3:0] g = 4'b0110;
    logic [3:0] h = 4'b0111;
    logic [3:0] i = 4'b1000;
    logic [3:0] j = 4'b1001;
    logic [3:0] k = 4'b1010;
    logic [3:0] l = 4'b1011;
    logic [3:0] m = 4'b1100;
    logic [3:0] n = 4'b1101;
    logic [3:0] o = 4'b1110;
    logic [3:0] p = 4'b1111;
    
    

    
    //sequential logic to change states
    always_ff @ (posedge reset, posedge clk)
    begin
        if (reset) PS = START;
        else       PS = NS;
    end
    
    //combinatorial logic 
    always_comb 
    begin
    //initialze all outputs to zero
    mealy = 0; moore = 0;
    if(bt0 == 1) //this is checking if the button is pressed
    begin
    case (PS)//This is going to be the case where the button is pressed
        a:
        begin
            moore = 0; //moore outputs depend only on state //this only happens on the last state in all other cases will be 0
            if (x == 0)
            begin
                mealy = 0; //mealy outputs depend on the input and state
                NS = b;
                 end
            else
            begin // x == 1
                NS = a;
            end
         end
                  
         b:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = c;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         
         c:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = d;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         
         
         d:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = e;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         
         
         e:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = a;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = f;
            end
         end
         
         
         
         f:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = g;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         g:
         begin
            moore = 1; //now needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = a;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end //This is the end of the button being pushed
                 
         default:
            NS = START;
      endcase    
      end
      else  //This is if the button is not pressed 
      begin
      
      
       case (PS)//This is going to be the case where the button is not pressed
        a:
        begin
            moore = 0; //moore outputs depend only on state //this only happens on the last state in all other cases will be 0
            if (x == 0)
            begin
                mealy = 0; //mealy outputs depend on the input and state
                NS = b;
            end
            else
            begin // x == 1
                NS = a;
            end
         end
                  
         b:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = c;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         
         c:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = d;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         
         
         d:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = a;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = e;
            end
         end
         
         
         
         e:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = c;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = f;
            end
         end
         
         
         
         f:
         begin
            //moore = 1; //not needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = g;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end
         
         g:
         begin
            moore = 1; //now needed here
            if (x == 1)
            begin
                //mealy = 1; //this is not needed
                NS = a;
            end
            else
            begin
                //mealy = 0;//not needed here
                NS = b;
            end
         end //This is the end of the button being pushed
                 
         default:
            NS = START;
      endcase    
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      end 
      end   
       
 
endmodule

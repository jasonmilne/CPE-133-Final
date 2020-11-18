`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Engineer: Jacob Bograd
// 
// Create Date: 11/17/2020 04:32:19 PM
// Design Name: 
// Module Name: CC_MUX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This is a MUX that takes all of the inpouts from the FSM's and selects the correct one and outputs it to cc
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CC_MUX(
    input  power0,  //powers on  FSM 0
    input  power1,  //powers on FSM 1
    input  power2,  //powers on FSM 2
    input  power3,  //powers on FSM 3
    input  power4,  //powers on FSM 4
    input  power5,  //powers on FSM 5
    input  power6,  //powers on FSM 6
    input  power7,  //powers on FSM 7
    input  power8,  //powers on FSM 8
    input  power9,  //powers on FSM 9
    input  power10, //powers on FSM 10
    input  power11, //powers on FSM 11
    input  power12, //powers on FSM 12
    input  power13, //powers on FSM 13
    input  power14, //powers on FSM 14
    input  power15,  //powers on FSM 15
    input cc0,     //cc output for FSM 0
    input cc1,     //cc output for FSM 1
    input cc2,     //cc output for 2
    input cc3,     //cc output for FSM 3
    input cc4,     //cc output for FSM 4
    input cc5,     //cc output for FSM 5
    input cc6,     //cc output for FSM 6
    input cc7,     //cc output for FSM 7
    input cc8,     //cc output for FSM 8
    input cc9,     //cc output for FSM 9
    input cc10,    //cc output for FSM 10
    input cc11,    //cc output for FSM 11
    input cc12,    //cc output for FSM 12
    input cc13,    //cc output for FSM 13
    input cc14,    //cc output for FSM 14
    input cc15,    //cc output for FSM 15
    output logic cc

    );
    always_comb
    begin
    if(power0 == 1) //checks if power0 is on
    begin
        cc = cc0;
    end
    else if (power1 == 1) //checks if power1 is on
    begin  
        cc = cc1;
    end
    else if (power2 == 1) //checks if power2 is on
    begin  
        cc = cc2;
    end
    else if (power3 == 1) //checks if power3 is on
    begin  
        cc = cc3;
    end
    else if (power4 == 1) //checks if power4 is on
    begin  
        cc = cc4;
    end
    else if (power5 == 1) //checks if power6 is on
    begin  
        cc = cc5;
    end
    else if (power6 == 1) //checks if power6 is on
    begin  
        cc = cc6;
    end
    else if (power7 == 1) //checks if power7 is on
    begin  
        cc = cc7;
    end
    else if (power8 == 1) //checks if power8 is on
    begin  
        cc = cc8;
    end
    else if (power9 == 1) //checks if power9 is on
    begin  
        cc = cc9;
    end
    else if (power10 == 1) //checks if power10 is on
    begin  
        cc = cc10;
    end
    else if (power11 == 1) //checks if power11 is on
    begin  
        cc = cc11;
    end
    else if (power12 == 1) //checks if power12 is on
    begin  
        cc = cc12;
    end
    else if (power13 == 1) //checks if power13 is on
    begin  
        cc = cc13;
    end
    else if (power14 == 1) //checks if power14 is on
    begin  
        cc = cc14;
    end
    
    else if (power15 == 1) //checks if power15 is on
    begin  
        cc = cc15;
    end
    else //this is the catch all if something goes wrong the default is 0
    begin
    cc = 0;
    end
    end
endmodule

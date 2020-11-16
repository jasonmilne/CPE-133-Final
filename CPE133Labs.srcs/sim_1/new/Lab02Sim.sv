`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 10:01:34 AM
// Design Name: 
// Module Name: Lab02Sim
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


module Lab02Sim(

    );
    
    logic [3:0] A;
    logic [3:0] B;
    logic [3:0] S;
    logic Co;
    RCA1 Labl_inst (.A(A), .B(B), .S(S), .Co(Co));
    initial
    begin
    
    //A = '{0,0,0,0}; B = '{0,0,0,0}; //TEST CASE 0
    A = 4'b0000; B = 4'b0000;
    #10
    if(S != 4'b0000 & Co == 0) $display("Error  A:%A B:%B S:%S Co:%Co", A, B, S, Co);
    
     A = 4'b0000; B = 4'b0001; //TEST CASE 1
    #10
    if(S != 4'b0001 & Co == 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b0001; B = 4'b0001; //TEST CASE 2
    #10
    if(S != 4'b0010 & Co == 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b0001; B = 4'b0010; //TEST CASE 3
    #10
    if(S != 4'b0011 & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
 
    A = 4'b0010; B = 4'b0010; //TEST CASE 4
    #10
    if(S != 4'b0011 & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b0010; B = 4'b0100; //TEST CASE 5
    #10
    if(S != 4'b0110 & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b0100; B = 4'b0100; //TEST CASE 6
    #10
    if(S != 4'b1000 & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b0100; B = 4'b1000; //TEST CASE 7
    #10
    if(S != 4'b1100 & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b1000; B = 4'b1000; //TEST CASE 8
    #10
    if(S != 4'b0000 & Co != 1) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    A = 4'b1111; B = 4'b1111;
    #10
    if(S != 4'b1110 & Co != 1) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    

    
//    A = 0; B = 0;
//    #10
//    //if(S != {0,0,0,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
//    if(S != {0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);

//    $display("Just finished test case 0"); //For Debug Use Only
    
    
//    A = '{0,0,0,0}; B = '{0,0,0,1}; //TEST CASE 1
//    #10
//    if(S != {0,0,0,1} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{0,0,0,1}; B = '{0,0,0,1}; //TEST CASE 2
//    #10
//    if(S != {0,0,1,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{0,0,0,1}; B = '{0,0,1,0}; //TEST CASE 3
//    #10
//    if(S != {0,0,1,1} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{0,0,1,0}; B = '{0,0,1,0}; //TEST CASE 4
//    #10
//    if(S != {0,1,0,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{0,0,1,0}; B = '{0,1,0,0}; //TEST CASE 5
//    #10
//    if(S != {0,1,1,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{0,1,0,0}; B = '{0,1,0,0}; //TEST CASE 6
//    #10
//    if(S != {1,0,0,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{1,0,0,0}; B = '{0,1,0,0}; //TEST CASE 7
//    #10
//    if(S != {1,1,0,0} & Co != 0) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{1,0,0,0}; B = '{1,0,0,0}; //TEST CASE 8
//    #10
//    if(S != {0,0,0,0} & Co != 1) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
//    A = '{1,1,1,1}; B = '{1,1,1,1}; //TEST CASE 9
//    #10
//    if(S != {1,1,1,0} & Co != 1) $display("Error  A:%a B:%b S:%s Co:%co", A, B, S, Co);
    
    
    
    
    $display("all done");
    end
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd
// Create Date: 09/16/2020 01:42:07 PM
// Description: Sim for Lab00
//////////////////////////////////////////////////////////////////////////////////


module Lab00Sim(


    );
    Logic A, B, C;
    Logic Q;
    
    Lab00 Lab0_inst ( .A(A), .B(B), .C(C));
    
    initial
        begin
       //TEST 0 
        A = 0; B = 0; C = 0;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C); 
        
        //test 1       
        A = 0; B = 0; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 2        
        A = 0; B = 1; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 3        
        A = 0; B = 1; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 4        
        A = 1; B = 0; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 5        
        A = 1; B = 0; C = 1;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 6       
        A = 1; B = 1; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
        //test 7        
        A = 1; B = 1; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
        
        $display("Finished");
     end
    
endmodule

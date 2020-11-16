`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Jacob Bograd

// Create Date: 09/24/2020 10:10:32 AM
//////////////////////////////////////////////////////////////////////////////////


module Lab01Sim(

    );
    logic A, B, C, D;
    logic POS, SOP, NORNOR;
    Lab01 Lab1_inst ( .A(A), .B(B), .C(C), .D(D), .F_SOP(F_SOP), .F_NORNOR(F_NORNOR), .F_POS(F_POS));
    initial
    begin
    
    
      A = 0; B = 0; C = 0; D = 0; //TEST CASE 0
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);     
      
       A = 0; B = 0; C = 0; D = 1; //TEST CASE 1
      #10
      if (POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D); 
          
      A = 0; B = 0; C = 1; D = 0; //TEST CASE 2
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D); 
          
      A = 0; B = 0; C = 1; D = 1; //TEST CASE 3
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 0; B = 1; C = 0; D = 0; //TEST CASE 4
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
      
          
      A = 0; B = 1; C = 0; D = 1; //TEST CASE 5
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
      
          
      A = 0; B = 1; C = 1; D = 0; //TEST CASE 6
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 0; B = 1; C = 1; D = 1; //TEST CASE 7
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 0; C = 0; D = 0; //TEST CASE 8
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
      
          
      A = 1; B = 0; C = 0; D = 1; //TEST CASE 9
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 0; C = 1; D = 0; //TEST CASE 10
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 0; C = 1; D = 1; //TEST CASE 11
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 1; C = 0; D = 0; //TEST CASE 12
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 1; C = 0; D = 1; //TEST CASE 13
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 1; C = 0; D = 1; //TEST CASE 14
      #10
      if (F_POS !== 0) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);
          
      A = 1; B = 1; C = 1; D = 1; //TEST CASE 15
      #10
      if (F_POS !== 1) $display("Error A:%b B:%b C:%b D:%d", A, B, C, D);            
      
      
      
      
      
      $display("all done");
      end

    
endmodule

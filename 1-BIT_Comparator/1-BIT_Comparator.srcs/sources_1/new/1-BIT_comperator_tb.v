`timescale 1ns / 1ps


module BIT_comperator_tb;
    reg A;
    reg B;
    wire Y1;
    wire Y2;
    wire Y3;
    
    BIT_comperator DUT (A, B, Y1, Y2, Y3);
    
    initial
        begin
            $monitor("A=%b | B=%b | Y1=%b | Y2=%b | Y3=%b", A, B, Y1, Y2, Y3);
            A=0; B=0;     
            #10
            A=0; B=1;
            #10
            A=1; B=0;
            #10
            A=1; B=1;
            #10
            $finish;
        end
endmodule

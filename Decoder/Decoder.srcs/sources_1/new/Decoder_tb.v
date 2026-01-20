// 2x4 Decoder Testbench

`timescale 1ns / 1ps

module Decoder_tb;
    reg I0, I1;
    reg E;
    wire Y0, Y1, Y2, Y3;
    
    Decoder DUT (I0, I1, E, Y0, Y1, Y2, Y3);
    
    initial
        begin
            $monitor("E=%b, I0=%b, I1=%b, Y0=%b, Y1=%b, Y2=%b, Y3=%b", E, I0, I1, Y0, Y1, Y2, Y3);
            E=0; I0=1; I1=0; //X
            #100
            E=1; I0=0; I1=0; //Y0
            #100
            E=1; I0=0; I1=1; //Y1
            #100
            E=1; I0=1; I1=0; //Y2
            #100
            E=1; I0=1; I1=1; //Y3
        end
endmodule
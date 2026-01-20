// 4x2 Encoder Testbench

`timescale 1ns / 1ps

module Encoder_tb();
    reg I0, I1, I2, I3;
    reg E;
    wire Y0, Y1;
    
    Encoder DUT(I0, I1, I2, I3, E, Y0, Y1);
        initial
            begin
                $monitor("E=%b, I0=%b, I1=%b, I2=%b, I3=%b, Y0=%b, Y1=%b", E, I0, I1, I2, I3, Y0, Y1);
                E=0; I0=0; I1=0; I2=0; I3=0; // X
                #100
                E=1; I0=0; I1=0; I2=0; I3=0; // X
                #100
                E=1; I0=1; I1=0; I2=0; I3=0; // I0
                #100
                E=1; I0=0; I1=1; I2=0; I3=0; // I1
                #100
                E=1; I0=0; I1=0; I2=1; I3=0; // I2
                #100
                E=1; I0=0; I1=0; I2=0; I3=1; // I3
             end
endmodule
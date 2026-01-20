`timescale 1ns / 1ps

module mux4x1_tb;
    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;
    mux4x1 DUT(I0, I1, I2, I3, S0, S1);
    initial
        begin
            repeat(4)
                begin
                    {I0,I1,I2,I3,S0,S1}=$random;
                    #5
                    $display("I0=%b, I1=%b, I2=%b. I3=%b, S0=%b, S1=%b, Y=%b", I0, I1, I2, I3, S0, S1, Y);
                end
        end
endmodule

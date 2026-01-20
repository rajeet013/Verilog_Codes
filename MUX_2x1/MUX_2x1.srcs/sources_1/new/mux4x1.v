`timescale 1ns / 1ps


module mux4x1(
input I0, I1, I2, I3,
input S0, S1,
output Y
    );
    wire Y0, Y1;
    mux2x1 m1(I0, I1, S0, Y0);
    mux2x1 m2(I2, I3, S0, Y1);
    mux2x1 m3(Y0, Y1, S1, Y);
endmodule

module mux2x1(
    input I0,
    input I1,
    input S,
    output Y
    );
    wire Sbar, p, q;
    not n1 (Sbar, S);
    and n2 (p, Sbar, I0);
    and n3 (q, S, I1);
    or n4 (Y, p, q);
endmodule

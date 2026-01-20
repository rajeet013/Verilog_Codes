`timescale 1ns / 1ps


module BIT_comperator(
    input A,
    input B,
    output Y1,
    output Y2,
    output Y3
    );
    assign Y1 = (A & ~B); // A > B
    assign Y2 = ~(A ^ B); // A = B
    assign Y3 = (~A & B); // A < B
endmodule
// 4x2 Encoder

`timescale 1ns / 1ps

module Encoder(
    input I0,
    input I1,
    input I2,
    input I3,
    input E,
    output Y0,
    output Y1
    );
    assign Y0 = E & (I2 | I3);
    assign Y1 = E & (I1 | I3);
endmodule

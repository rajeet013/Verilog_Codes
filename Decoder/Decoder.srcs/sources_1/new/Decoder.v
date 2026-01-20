// 2x4 Decoder

`timescale 1ns / 1ps

module Decoder(
    input I0, I1, E,
    output Y0, Y1, Y2, Y3
    );
    assign Y0 = (E & ~I0 & ~I1);
    assign Y1 = (E & ~I0 & I1);
    assign Y2 = (E & I0 & ~I1);
    assign Y3 = (E & I0 & I1);    
endmodule

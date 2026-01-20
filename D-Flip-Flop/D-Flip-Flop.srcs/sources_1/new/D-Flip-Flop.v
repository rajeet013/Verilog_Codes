`timescale 1ns / 1ps

module D_Flip_Flop(
    input D,
    input RES,
    input CLK,
    output reg Q
    );
    
    always @ (posedge CLK or negedge RES)
        if (!RES)
            Q <= 0;
        else
            Q <= D;
endmodule

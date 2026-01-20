`timescale 1ns / 1ps

//32-bit Full Adder
module full_adder(input [31:0] A, 
                  input [31:0] B, 
                  input Cin, 
                  output Cout, 
                  output [31:0] Sum );   

    assign {Cout, Sum} = A + B + Cin;
    
endmodule

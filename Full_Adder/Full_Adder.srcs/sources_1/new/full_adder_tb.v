`timescale 1ns / 1ps

module full_adder_tb;
    
    // 1. Declare testbench variables
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    wire [31:0] Sum;
    integer i;
    
    // 2. Instantiate the design and connect to testbench variables
    full_adder fa0(.A(A), 
                   .B(B), 
                   .Cin(Cin), 
                   .Cout(Cout), 
                   .Sum(Sum));
    
    // 3. Provide Stimulus to test design
    
    initial begin
        A <= 0;
        B <= 0;
        Cin <= 0;
        
        $monitor ("A=0x%0h B=0x%0h Cin=0x%0h Cout=0x%0h Sum=0x%0h", A, B, Cin, Cout, Sum);
        
        for (i=0; i < 5; i=i+1)
            begin
                #10 A <= $random;
                    B <= $random;
                    Cin <= $random;
            end
        end
endmodule

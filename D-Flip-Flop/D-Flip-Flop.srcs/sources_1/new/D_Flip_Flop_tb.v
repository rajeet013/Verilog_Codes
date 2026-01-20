`timescale 1ns / 1ps


module D_Flip_Flop_tb;
    reg D;
    reg RES;
    reg CLK;
    reg [2:0] Delay;
    wire Q;
    
    D_Flip_Flop DUT (D, RES, CLK, Q);
    
    // Generate Clock
    always #10 CLK = ~CLK;
    
    // Testcase
    integer i;
    initial begin
            CLK <= 0;
            D <= 0;
            RES <=0;
            
            #15 D <= 1;
            #10 RES <= 1;
                 
            for (i = 0; i < 5; i=i+1)
                begin
                    Delay = $random;
                    #(Delay) D <= i;
                end
     end    
endmodule

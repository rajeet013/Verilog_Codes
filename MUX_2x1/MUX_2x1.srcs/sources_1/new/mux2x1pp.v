`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2026 12:35:14 PM
// Design Name: 
// Module Name: mux2x1pp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2x1pp(
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

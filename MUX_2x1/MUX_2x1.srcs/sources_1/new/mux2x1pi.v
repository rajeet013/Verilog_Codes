`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2026 12:44:05 PM
// Design Name: 
// Module Name: mux2x1pi
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


module mux2x1pi(
    input I0,
    input I1,
    input S,
    output Y
    );
    reg Y;
    always @ (I0 or I1 or S)
    begin
        Y = (~S & I0) | (S & I1);
    end
endmodule

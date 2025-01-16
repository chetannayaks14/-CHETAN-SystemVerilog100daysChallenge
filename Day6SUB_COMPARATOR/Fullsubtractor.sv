`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 01:28:50
// Design Name: 
// Module Name: Fullsubtractor
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


module Fullsubtractor (
    input  logic A,  // Minuend
    input  logic B,  // Subtrahend
    input  logic Bin, // Borrow in from previous subtraction
    output logic Difference, // Result of A - B - Bin
    output logic Bout        // Borrow out to next subtraction
);

    // Internal signals for intermediate results
    logic D1, B1, B2;

    // XOR operations to compute intermediate differences
    assign Difference = A ^ B ^ Bin;
    //assign Difference = D1 ^ Bin;

    // AND operations to compute borrow
    assign B1 = ~A & B;
    assign B2 = ~(A ^ B) & Bin;
    assign Bout = B1 | B2;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 01:21:53
// Design Name: 
// Module Name: HalfSub
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


module HalfSub (
    input  logic A,  // Minuend
    input  logic B,  // Subtrahend
    output logic Difference,   // Result of A - B
    output logic Borrow        // Borrow if A < B
);

    // Compute Difference
    assign Difference = A ^ B;
    
    // Compute Borrow
    assign Borrow = ~A & B;

endmodule

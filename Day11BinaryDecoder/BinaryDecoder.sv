`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 02:44:00
// Design Name: 
// Module Name: BinaryDecoder
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


module BinaryDecoder (
    input logic A,  // First input bit
    input logic B,  // Second input bit
    output logic D0,  // Output when input is 00
    output logic D1,  // Output when input is 01
    output logic D2,  // Output when input is 10
    output logic D3   // Output when input is 11
);

    // Logic for each output
    assign D0 = ~A & ~B;  // D0 = not A and not B
    assign D1 = ~A & B;   // D1 = not A and B
    assign D2 = A & ~B;   // D2 = A and not B
    assign D3 = A & B;    // D3 = A and B

endmodule

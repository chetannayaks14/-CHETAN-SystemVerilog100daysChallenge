`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 03:28:41
// Design Name: 
// Module Name: Demux
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


module Demux (
    input logic D,         // Data Input
    input logic [1:0] S,   // Select Lines
    output logic [3:0] Y   // Outputs Y0, Y1, Y2, Y3
);

    // Internal logic to handle the demux functionality
    always_comb begin
        // Based on the select lines, choose the correct output
        case (S)
            2'b00: Y = {3'b000, D}; // S1 = 0, S0 = 0 -> Y0
            2'b01: Y = {2'b00, D, 1'b0}; // S1 = 0, S0 = 1 -> Y1
            2'b10: Y = {1'b0, D, 2'b00}; // S1 = 1, S0 = 0 -> Y2
            2'b11: Y = {D, 3'b000}; // S1 = 1, S0 = 1 -> Y3
            default: Y = 4'b0000; // This should never happen with 2-bit S
        endcase
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 04:12:58
// Design Name: 
// Module Name: PriorityEncoder
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


module PriorityEncoder (
    input logic [3:0] in, // 4-bit input
    output logic [1:0] out, // 2-bit output
    output logic valid // Valid output signal
);

    always_comb begin
        // Initialize outputs
        out = 2'b00;
        valid = 1'b0;
        
        // Check each input bit from highest to lowest priority
        if (in[3]) begin
            out = 2'b11; // I3 has highest priority
            valid = 1'b1;
        end else if (in[2]) begin
            out = 2'b10; // I2 next highest priority
            valid = 1'b1;
        end else if (in[1]) begin
            out = 2'b01; // I1 next
            valid = 1'b1;
        end else if (in[0]) begin
            out = 2'b00; // I0 lowest priority
            valid = 1'b1;
        end
        // If no input is active, valid remains 0
    end
endmodule

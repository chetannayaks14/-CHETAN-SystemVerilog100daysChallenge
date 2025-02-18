`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 02:11:04
// Design Name: 
// Module Name: SIPO
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


module SIPO (
    input logic clk,         // Clock signal
    input logic reset,       // Active-high reset
    input logic serial_in,   // Serial input
    output logic [3:0] parallel_out  // 4-bit Parallel output
);

    // Shift register logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            parallel_out <= 4'b0000;  // Reset all bits to 0
        else
            parallel_out <= {parallel_out[2:0], serial_in};  // Shift left and insert new bit
    end

endmodule

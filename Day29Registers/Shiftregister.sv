`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 02:43:38
// Design Name: 
// Module Name: Shiftregister
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


module Register_4bit (
    input logic clk,       // Clock signal
    input logic rst,       // Reset signal (active high)
    input logic load,      // Load enable
    input logic [3:0] d,   // 4-bit data input
    output logic [3:0] q   // 4-bit stored output
);

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 4'b0000;   // Reset to all zeros
        end else if (load) begin
            q <= d;         // Load data into register
        end
    end

endmodule


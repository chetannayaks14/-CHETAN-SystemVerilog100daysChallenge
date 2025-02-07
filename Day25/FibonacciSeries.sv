`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 18:37:55
// Design Name: 
// Module Name: FibonacciSeries
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


module d_flipflop (
    input  logic clk,   // Clock signal
    input  logic rst,   // Reset signal (Active High)
    input  logic d,     // Data input
    output logic q      // Output Q
);

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            q <= 0; // Reset Q to 0
        else
            q <= d; // Store input D on clock edge
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2025 20:12:31
// Design Name: 
// Module Name: RC
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


module ripple_counter (
    input logic clk,       // Clock input
    input logic reset,     // Asynchronous reset
    output logic [3:0] count // 4-bit output
);

    always_ff @(negedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset counter
        else
            count <= count + 1; // Increment counter
    end

endmodule

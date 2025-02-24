`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2025 02:05:49
// Design Name: 
// Module Name: Downcounter
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


module down_counter (
    input logic clk,       // Clock signal
    input logic reset,     // Active-high reset
    output logic [3:0] q   // 4-bit counter output
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b1111;   // Reset the counter to maximum (15)
        else
            q <= q - 1;     // Decrement the counter on every clock pulse
    end

endmodule

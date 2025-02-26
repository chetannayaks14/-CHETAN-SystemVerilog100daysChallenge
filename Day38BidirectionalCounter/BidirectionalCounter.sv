`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 02:25:15
// Design Name: 
// Module Name: BidirectionalCounter
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


module bidirectional_counter (
    input logic clk,       // Clock signal
    input logic reset,     // Active-high reset
    input logic up_down,   // Control signal: 1 for UP, 0 for DOWN
    output logic [3:0] count // 4-bit counter output
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset counter to 0
        else if (up_down)
            count <= count + 1; // Count UP
        else
            count <= count - 1; // Count DOWN
    end

endmodule


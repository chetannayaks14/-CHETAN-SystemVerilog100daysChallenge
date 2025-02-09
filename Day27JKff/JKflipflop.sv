`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 03:27:13
// Design Name: 
// Module Name: JKflipflop
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


module JKflipflop(
    input logic clk,
    input logic J,
    input logic K,
    input logic reset,  // Active high reset
    output logic Q,
    output logic Q_bar
);

    // Internal state
    logic next_Q;

    // Flip-flop behavior on clock edge
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;   // Reset to 0 when reset is high
            Q_bar <= 1'b1;
        end else begin
            Q <= next_Q;
            Q_bar <= ~next_Q;  // Q_bar is always the complement of Q
        end
    end

    // Next state logic
    always_comb begin
        case ({J, K})
            2'b00: next_Q = Q;      // No change
            2'b01: next_Q = 1'b0;   // Reset
            2'b10: next_Q = 1'b1;   // Set
            2'b11: next_Q = ~Q;     // Toggle
        endcase
    end

endmodule

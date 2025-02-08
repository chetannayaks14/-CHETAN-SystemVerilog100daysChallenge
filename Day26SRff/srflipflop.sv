`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 20:45:02
// Design Name: 
// Module Name: srflipflop
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


module sr_flipflop (
    input logic clk,  // Clock signal
    input logic rst,  // Reset signal (Active High)
    input logic S,    // Set input
    input logic R,    // Reset input
    output logic Q    // Output
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 0;        // Reset Q to 0
        else begin
            case ({S, R})
                2'b00: Q <= Q;      // Hold state
                2'b01: Q <= 0;      // Reset state
                2'b10: Q <= 1;      // Set state
                2'b11: Q <= 1'bx;   // Invalid state
            endcase
        end
    end
endmodule
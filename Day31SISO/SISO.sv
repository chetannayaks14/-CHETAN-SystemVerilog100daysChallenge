`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 18:23:36
// Design Name: 
// Module Name: SISO
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


module SISO #(
    parameter WIDTH = 4  // Number of flip-flops in the shift register
) (
    input  logic clk,     // Clock signal
    input  logic reset,   // Reset signal, active high
    input  logic data_in, // Serial data input
    output logic data_out // Serial data output
);

    logic [WIDTH-1:0] shift_reg;

    // Reset or shift operation on clock edge
    always_ff @(posedge clk) begin
        if (reset) begin
            shift_reg <= '0;  // Reset the shift register to all 0s
        end else begin
            // Shift the register right (data moves from LSB to MSB)
            shift_reg <= {shift_reg[WIDTH-2:0], data_in};
        end
    end

    // Assign the first bit of the register to the output
    assign data_out = shift_reg[0];

endmodule
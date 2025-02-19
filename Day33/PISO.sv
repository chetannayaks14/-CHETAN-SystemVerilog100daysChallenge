`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 22:21:00
// Design Name: 
// Module Name: PISO
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


module PISO (
    input logic clk,             // Clock signal
    input logic reset,           // Active-high reset
    input logic load,            // Load control signal
    input logic new_bit,         // New input bit for LSB
    input logic [3:0] parallel_in, // Initial 4-bit parallel input
    output logic serial_out,      // Serial output (MSB)
    output logic [3:0] updated_parallel // Updated parallel register output
);
  
    logic [3:0] shift_reg; // Internal 4-bit shift register

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 4'b0000; // Clear shift register on reset
            serial_out <= 1'b0;
        end else if (load) begin
            shift_reg <= parallel_in; // Load parallel data initially
        end else begin
            serial_out <= shift_reg[3]; // Output MSB
            shift_reg <= {shift_reg[2:0], new_bit}; // Right shift, insert new bit at LSB
        end
    end

    assign updated_parallel = shift_reg; // Output updated parallel values

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 00:56:09
// Design Name: 
// Module Name: BufferRegister
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


module BufferRegister (
    input logic clk,
    input logic reset,
    input logic [3:0] data_in,
    output logic [3:0] data_out
);

    // Internal register to hold the data
    logic [3:0] buffer_reg;

    // Register update logic
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset the buffer register to 0
            buffer_reg <= 4'b0000;
        end else begin
            // Store incoming data on clock rising edge
            buffer_reg <= data_in;
        end
    end

    // Continuous assignment for output
    assign data_out = buffer_reg;

endmodule

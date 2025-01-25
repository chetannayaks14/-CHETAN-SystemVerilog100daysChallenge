`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 03:20:40
// Design Name: 
// Module Name: Oddparity
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


module Oddparity  #(parameter WIDTH = 4) (
    input logic [WIDTH-1:0] data_in,  // Input data
    output logic parity_bit           // Output parity bit
);

    always_comb begin
        parity_bit = ^data_in; // XOR reduction to generate even parity
        parity_bit = ~parity_bit; // Invert to get odd parity
    end

endmodule


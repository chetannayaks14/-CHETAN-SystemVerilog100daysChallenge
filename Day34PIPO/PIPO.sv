`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2025 03:11:16
// Design Name: 
// Module Name: PIPO
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


module PIPO (
input logic [3:0] data_in,
input logic clk,
input logic reset,
input logic load,
output logic [3:0] parallel_out
    );
    always_ff@(posedge clk or posedge reset) begin
    if (reset)
    parallel_out <= 4'b0000;
    else if (load)
    parallel_out <= data_in;
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2025 00:29:38
// Design Name: 
// Module Name: UpCounter
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


module UpCounter(
input logic clk,
input logic reset,
output logic[3:0] count
    );
    
    always_ff@(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else 
        count <= count+1;
    end
    
endmodule

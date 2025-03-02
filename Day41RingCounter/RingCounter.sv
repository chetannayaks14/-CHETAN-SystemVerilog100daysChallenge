`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 00:01:15
// Design Name: 
// Module Name: RingCounter
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


module RingCounter(
input logic clk,
input logic reset,
output logic [3:0] ring
    );
    always_ff @(posedge clk or posedge reset) begin
    if (reset)
    ring <=4'b1000;
    else 
    ring <= {ring[2:0], ring[3]};
    end
endmodule

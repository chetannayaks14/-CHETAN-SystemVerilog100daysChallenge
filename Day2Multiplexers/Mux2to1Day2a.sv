`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 17:24:55
// Design Name: 
// Module Name: Mux2to1Day2a
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


module Mux2to1Day2a(
input logic[3:0]d0,d1,
input logic s,
output logic[3:0] y );

assign y = s ? d1 : d0;

endmodule

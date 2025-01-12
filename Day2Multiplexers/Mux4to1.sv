`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 17:58:31
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(
input logic[3:0]d0,d1,d2,d3,
input logic[1:0]s,
output logic [3:0] y
 );
 
 assign y = (s == 2'b00) ? d0 :
            (s == 2'b01) ? d1 :
            (s == 2'b10) ? d2 : d3;
 
endmodule

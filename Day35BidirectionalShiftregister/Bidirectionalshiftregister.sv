`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 00:41:23
// Design Name: 
// Module Name: Bidirectionalshiftregister
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


module Bidirectionalshiftregister(
input logic clk,
input logic reset,
input logic data_in,
input logic shift, // for shift condition
input logic direction,
output logic [3:0] data_out
    );
    always_ff@(posedge clk or posedge reset) begin
    if (reset)
    data_out <= 4'b0000;
    else if (shift) begin
    if (direction) 
    data_out[3:0] <= {data_out[2:0], data_in}; //left shift
    else
    data_out[3:0] <= {data_in, data_out[3:1]};  //right shift 
    end  
    end
endmodule

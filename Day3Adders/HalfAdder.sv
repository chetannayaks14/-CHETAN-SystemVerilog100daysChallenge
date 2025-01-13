`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 17:58:07
// Design Name: 
// Module Name: HalfAdder
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


module HalfAdder(
    input logic a,
    input logic b,
    output logic sum,
    output logic carry
);

    // Sum is XOR of a and b
    assign sum = a ^ b;
    
    // Carry is AND of a and b
    assign carry = a & b;

endmodule
  

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 19:26:44
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input logic a,
    input logic b,
    input logic cin,  // carry in
    output logic sum,
    output logic cout // carry out
);

    // Sum is XOR of all inputs
    assign sum = a ^ b ^ cin;
    
    // Carry out is calculated using XOR and AND operations
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule


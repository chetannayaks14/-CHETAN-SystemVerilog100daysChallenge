`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2025 14:05:23
// Design Name: 
// Module Name: RippleCarryAdder
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


module RippleCarryAdder (
    input  logic [3:0] a,
    input  logic [3:0] b,
    input  logic       cin,
    output logic [4:0] sum
);

    logic c1, c2, c3;  // Internal carries

    // Full Adder for bit 0
    assign {c1, sum[0]} = a[0] + b[0] + cin;

    // Full Adder for bit 1
    assign {c2, sum[1]} = a[1] + b[1] + c1;

    // Full Adder for bit 2
    assign {c3, sum[2]} = a[2] + b[2] + c2;

    // Full Adder for bit 3
    assign {sum[4], sum[3]} = a[3] + b[3] + c3;

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 17:37:29
// Design Name: 
// Module Name: Carrrysaveadder
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


module CarrySaveAdder4bit (
    input  logic [3:0] A,  // First 4-bit number
    input  logic [3:0] B,  // Second 4-bit number
    input  logic [3:0] C,  // Third 4-bit number
    output logic [4:0] Sum  // 5-bit output for the sum (carry included)
);

    // Internal wires for sum and carry of each bit position
    logic [3:0] sum_stage1;
    logic [3:0] carry_stage1;

    // First stage of CSA: using Full Adders for each bit position
    // Bit 0
    assign {carry_stage1[0], sum_stage1[0]} = A[0] + B[0] + C[0];
    // Bit 1
    assign {carry_stage1[1], sum_stage1[1]} = A[1] + B[1] + C[1];
    // Bit 2
    assign {carry_stage1[2], sum_stage1[2]} = A[2] + B[2] + C[2];
    // Bit 3
    assign {carry_stage1[3], sum_stage1[3]} = A[3] + B[3] + C[3];

    // Second stage: Final addition of sum and carry from first stage
    logic [4:0] sum_stage2, carry_stage2;
    assign {carry_stage2[0], sum_stage2[0]} = sum_stage1[0];
    assign {carry_stage2[1], sum_stage2[1]} = sum_stage1[1] + carry_stage1[0];
    assign {carry_stage2[2], sum_stage2[2]} = sum_stage1[2] + carry_stage1[1];
    assign {carry_stage2[3], sum_stage2[3]} = sum_stage1[3] + carry_stage1[2];
    assign {carry_stage2[4], sum_stage2[4]} = carry_stage1[3];

    // Assign the final sum with carry included
    assign Sum = sum_stage2 + {4'b0000, carry_stage2[4]}; // Add the last carry if necessary

endmodule

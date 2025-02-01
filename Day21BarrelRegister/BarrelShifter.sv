`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 18:49:07
// Design Name: 
// Module Name: BarrelShifter
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


module BarrelShifter (
    input  logic [7:0] in_data,  // 8-bit input
    input  logic [2:0] shift,    // Shift amount (0 to 7)
    input  logic dir,            // Direction: 0 = Left Shift, 1 = Right Shift
    output logic [7:0] out_data  // 8-bit output
);

    logic [7:0] stage1, stage2, stage3;

    // Stage 1: Shift by 1 if needed
    assign stage1 = shift[0] ? (dir ? {1'b0, in_data[7:1]} : {in_data[6:0], 1'b0}) : in_data;

    // Stage 2: Shift by 2 if needed
    assign stage2 = shift[1] ? (dir ? {2'b00, stage1[7:2]} : {stage1[5:0], 2'b00}) : stage1;

    // Stage 3: Shift by 4 if needed
    assign stage3 = shift[2] ? (dir ? {4'b0000, stage2[7:4]} : {stage2[3:0], 4'b0000}) : stage2;

    // Output
    assign out_data = stage3;

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 04:22:58
// Design Name: 
// Module Name: BinarytoGrey
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


module BinarytoGrey (
    input logic [3:0] binary_in,
    output logic [3:0] gray_out
);

    // Conversion logic without loops
    assign gray_out[3] = binary_in[3];  // MSB is the same
    assign gray_out[2] = binary_in[3] ^ binary_in[2];
    assign gray_out[1] = binary_in[2] ^ binary_in[1];
    assign gray_out[0] = binary_in[1] ^ binary_in[0];

endmodule

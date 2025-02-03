`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 03:48:58
// Design Name: 
// Module Name: LUT
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


module LUT (
    input logic [2:0] addr,  // 3-bit address
    output logic data        // 1-bit output
);

    // Precomputed LUT values stored in an array (ROM)
    logic [7:0] lut_memory = 8'b10111001;

    // Lookup value from ROM
    assign data = lut_memory[addr];

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2025 04:52:45
// Design Name: 
// Module Name: EvenParity
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


module EvenParity (
    input  logic [3:0] data,
    output logic       parity_out
);

    // XOR all bits to generate even parity
    always_comb begin
        parity_out = data[0] ^ data[1] ^ data[2] ^ data[3];
    end

endmodule

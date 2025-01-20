`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 22:24:22
// Design Name: 
// Module Name: DecimaltoBinaryEncoder
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


module DecimaltoBinaryEncoder (
    input logic [9:0] decimal_input,  // 10-bit input, one-hot encoded
    output logic [3:0] binary_output  // 4-bit output for binary representation
);

    always_comb begin
        // Initialize all bits of binary_output to 0
        binary_output = 4'b0000;
        
        // Use case statement to determine the binary equivalent
        case(1'b1)
            decimal_input[0]: binary_output = 4'b0000; // 0 in binary
            decimal_input[1]: binary_output = 4'b0001; // 1 in binary
            decimal_input[2]: binary_output = 4'b0010; // 2 in binary
            decimal_input[3]: binary_output = 4'b0011; // 3 in binary
            decimal_input[4]: binary_output = 4'b0100; // 4 in binary
            decimal_input[5]: binary_output = 4'b0101; // 5 in binary
            decimal_input[6]: binary_output = 4'b0110; // 6 in binary
            decimal_input[7]: binary_output = 4'b0111; // 7 in binary
            decimal_input[8]: binary_output = 4'b1000; // 8 in binary
            decimal_input[9]: binary_output = 4'b1001; // 9 in binary
            default: binary_output = 4'bxxxx; // Error condition, should not occur in one-hot encoding
        endcase
    end

endmodule

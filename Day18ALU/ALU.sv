`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 18:31:08
// Design Name: 
// Module Name: ALU
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


module ALU(
    input  logic [7:0] A,   // First operand
    input  logic [7:0] B,   // Second operand
    input  logic [1:0] ALUControl, // Control signals to select operation
    output logic [7:0] Result, // Result of the operation
    output logic Zero,         // Indicates if the result is zero
    output logic Overflow      // Indicates overflow for arithmetic operations
);

    always_comb begin
        Zero = 1'b0; // Initially set to 0
        Overflow = 1'b0; // Initially set to 0
        
        case(ALUControl)
            2'b00: begin // Addition
                {Overflow, Result} = A + B;
                Zero = (Result == 8'b0);
            end
            2'b01: begin // Subtraction
                {Overflow, Result} = A - B;
                Zero = (Result == 8'b0);
            end
            2'b10: begin // Bitwise AND
                Result = A & B;
                Zero = (Result == 8'b0);
            end
            2'b11: begin // Bitwise OR
                Result = A | B;
                Zero = (Result == 8'b0);
            end
            default: begin
                Result = 8'b0; // Default case, do nothing or set to zero
                Zero = 1'b1;
            end
        endcase
    end

endmodule

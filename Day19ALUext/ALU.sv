`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 00:03:24
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
    input  logic [3:0] ALUControl, // Control signals expanded to support more operations
    output logic [7:0] Result, // Result of the operation
    output logic Zero,         // Indicates if the result is zero
    output logic Overflow,     // Indicates overflow for arithmetic operations
    output logic Carry         // Carry out for arithmetic operations
);

    always_comb begin
        Zero = 1'b0; 
        Overflow = 1'b0;
        Carry = 1'b0;
        
        case(ALUControl)
            4'b0000: begin // Addition
                {Carry, Result} = A + B;
                Overflow = (A[7] == B[7]) && (Result[7] != A[7]);
                Zero = (Result == 8'b0);
            end
            4'b0001: begin // Subtraction
                {Carry, Result} = A - B;
                Overflow = (A[7] != B[7]) && (Result[7] != A[7]);
                Zero = (Result == 8'b0);
            end
            4'b0010: begin // Bitwise AND
                Result = A & B;
                Zero = (Result == 8'b0);
            end
            4'b0011: begin // Bitwise OR
                Result = A | B;
                Zero = (Result == 8'b0);
            end
            4'b0100: begin // Bitwise XOR
                Result = A ^ B;
                Zero = (Result == 8'b0);
            end
            4'b0101: begin // Left Shift (Logical)
                Result = A << B[2:0]; // Use lower 3 bits of B for shift amount
                Zero = (Result == 8'b0);
            end
            4'b0110: begin // Right Shift (Logical)
                Result = A >> B[2:0]; // Use lower 3 bits of B for shift amount
                Zero = (Result == 8'b0);
            end
            4'b0111: begin // Arithmetic Right Shift
                Result = $signed(A) >>> B[2:0]; // Use lower 3 bits of B for shift amount, sign extend
                Zero = (Result == 8'b0);
            end
            4'b1000: begin // Increment A
                {Carry, Result} = A + 1'b1;
                Overflow = (A[7] == 1'b0) && (Result[7] == 1'b1); // Overflow if positive number overflows
                Zero = (Result == 8'b0);
            end
            4'b1001: begin // Decrement A
                {Carry, Result} = A - 1'b1;
                Overflow = (A[7] == 1'b1) && (Result[7] == 1'b0); // Overflow if negative number underflows
                Zero = (Result == 8'b0);
            end
            4'b1010: begin // Set if Less Than (SLT)
                Result = ($signed(A) < $signed(B)) ? 8'b1 : 8'b0;
                Zero = (Result == 8'b0);
            end
            default: begin // Default case, set result to zero
                Result = 8'b0;
                Zero = 1'b1;
            end
        endcase
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 01:48:13
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input  logic [3:0]  opcode,           // Instruction opcode
    output logic        reg_write_enable, // Enable writing to register
    output logic        mem_read,         // Memory read operation
    output logic        mem_write,        // Memory write operation
    output logic        alu_op            // ALU operation (0 for add, 1 for subtract for example)
);

    // Combinational logic to decode opcode
    always_comb begin
        reg_write_enable = 1'b0;
        mem_read         = 1'b0;
        mem_write        = 1'b0;
        alu_op           = 1'b0;

        case (opcode)
            4'b0000: begin // LOAD instruction
                mem_read         = 1'b1;
                reg_write_enable = 1'b1;
            end
            4'b0001: begin // STORE instruction
                mem_write        = 1'b1;
            end
            4'b0010: begin // ADD instruction
                reg_write_enable = 1'b1;
                alu_op           = 1'b0; // Assuming 0 means ADD operation
            end
            default: begin // Default case, do nothing or error handling
                // All control signals remain at their reset value (0)
            end
        endcase
    end

endmodule

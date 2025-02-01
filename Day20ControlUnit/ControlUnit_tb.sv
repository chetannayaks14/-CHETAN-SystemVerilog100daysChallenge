`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2025 01:50:18
// Design Name: 
// Module Name: ControlUnit_tb
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


module ControlUnit_tb;

    // Signals to connect to the control unit
    logic [3:0] opcode;
    logic reg_write_enable;
    logic mem_read;
    logic mem_write;
    logic alu_op;

    // Instantiate the Unit Under Test (UUT)
    ControlUnit uut (
        .opcode(opcode),
        .reg_write_enable(reg_write_enable),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .alu_op(alu_op)
    );

    // Test sequence
    initial begin
        // Monitor input and outputs
        $monitor("Time=%0t, Opcode=%b, RegWrite=%b, MemRead=%b, MemWrite=%b, ALUOp=%b", 
                 $time, opcode, reg_write_enable, mem_read, mem_write, alu_op);

        // Test LOAD instruction
        opcode = 4'b0000;
        #10; // Wait for 10 time units

        // Test STORE instruction
        opcode = 4'b0001;
        #10;

        // Test ADD instruction
        opcode = 4'b0010;
        #10;

        // Test an undefined opcode (default case)
        opcode = 4'b1111;
        #10;

        // End simulation
        $finish;
    end

endmodule
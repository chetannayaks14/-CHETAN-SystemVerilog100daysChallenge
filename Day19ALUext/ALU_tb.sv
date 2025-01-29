`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2025 00:03:46
// Design Name: 
// Module Name: ALU_tb
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

module ALU_tb;

    // ALU inputs
    logic [7:0] A;
    logic [7:0] B;
    logic [3:0] ALUControl;

    // ALU outputs
    logic [7:0] Result;
    logic Zero;
    logic Overflow;
    logic Carry;

    // Instantiate the ALU
    ALU dut (
        .A(A),
        .B(B),
        .ALUControl(ALUControl),
        .Result(Result),
        .Zero(Zero),
        .Overflow(Overflow),
        .Carry(Carry)
    );

    // Test cases
    initial begin
        // Print header for better readability
        $display("Operation | A | B | ALUControl | Result | Zero | Overflow | Carry");

        // Test Addition
        A = 8'h05; B = 8'h0A; ALUControl = 4'b0000;
        #10;  // Wait for 10 time units for the result to stabilize
        $display("Addition   | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Subtraction
        A = 8'h0A; B = 8'h05; ALUControl = 4'b0001;
        #10;
        $display("Subtraction| %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Bitwise AND
        A = 8'hF0; B = 8'hCC; ALUControl = 4'b0010;
        #10;
        $display("AND        | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Bitwise OR
        A = 8'h33; B = 8'h0F; ALUControl = 4'b0011;
        #10;
        $display("OR         | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Bitwise XOR
        A = 8'hAA; B = 8'h55; ALUControl = 4'b0100;
        #10;
        $display("XOR        | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Left Shift
        A = 8'h01; B = 8'h03; ALUControl = 4'b0101; // Shift 1 left by 3 places
        #10;
        $display("LShift     | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Right Shift (Logical)
        A = 8'h80; B = 8'h04; ALUControl = 4'b0110; // Shift 10000000 right by 4 places
        #10;
        $display("RShift(L)  | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Arithmetic Right Shift
        A = 8'h80; B = 8'h04; ALUControl = 4'b0111; // Shift -128 right by 4 places, expect sign extension
        #10;
        $display("ARShift    | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Increment
        A = 8'hFF; B = 8'h00; ALUControl = 4'b1000; // Increment FF (255) should overflow
        #10;
        $display("Increment  | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Decrement
        A = 8'h00; B = 8'h00; ALUControl = 4'b1001; // Decrement 0 should underflow
        #10;
        $display("Decrement  | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // Test Set if Less Than (SLT)
        A = 8'h7F; B = 8'h80; ALUControl = 4'b1010; // 127 < -128 in signed comparison
        #10;
        $display("SLT        | %h | %h | %b       | %h     | %b   | %b       | %b", A, B, ALUControl, Result, Zero, Overflow, Carry);

        // End simulation
        $finish;
    end

endmodule
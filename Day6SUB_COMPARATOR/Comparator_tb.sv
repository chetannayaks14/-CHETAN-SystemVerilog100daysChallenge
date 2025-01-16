`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 01:05:21
// Design Name: 
// Module Name: Comparator_tb
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


module Comparator_tb;

    // Inputs
    logic [3:0] A;
    logic [3:0] B;

    // Outputs
    logic A_greater_B;
    logic A_equal_B;
    logic A_lesser_B;

    // Instantiate the Unit Under Test (UUT)
    Comparator uut (
        .A(A),
        .B(B),
        .A_greater_B(A_greater_B),
        .A_equal_B(A_equal_B),
        .A_lesser_B(A_lesser_B)
    );

    initial begin
        // Initialize Inputs
        A = 4'b0000; B = 4'b0000;

        // Wait for global reset to finish (if any)
        #100; // Wait 100 ns for reset

        // Test Case 1: A > B
        A = 4'b1010; B = 4'b0110;
        #10;  // Wait for 10 ns to ensure changes are seen
        $display("Test Case 1: A = %b, B = %b, A > B: %b, A == B: %b, A < B: %b", A, B, A_greater_B, A_equal_B, A_lesser_B);

        // Test Case 2: A < B
        A = 4'b0101; B = 4'b1100;
        #10;
        $display("Test Case 2: A = %b, B = %b, A > B: %b, A == B: %b, A < B: %b", A, B, A_greater_B, A_equal_B, A_lesser_B);

        // Test Case 3: A == B
        A = 4'b1101; B = 4'b1101;
        #10;
        $display("Test Case 3: A = %b, B = %b, A > B: %b, A == B: %b, A < B: %b", A, B, A_greater_B, A_equal_B, A_lesser_B);

        // Test Case 4: Edge case where all bits are 0
        A = 4'b0000; B = 4'b0000;
        #10;
        $display("Test Case 4: A = %b, B = %b, A > B: %b, A == B: %b, A < B: %b", A, B, A_greater_B, A_equal_B, A_lesser_B);

        // Test Case 5: Edge case where all bits are 1
        A = 4'b1111; B = 4'b1111;
        #10;
        $display("Test Case 5: A = %b, B = %b, A > B: %b, A == B: %b, A < B: %b", A, B, A_greater_B, A_equal_B, A_lesser_B);

        // Finish simulation
        #10 $finish;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 01:22:39
// Design Name: 
// Module Name: HalfSub_tb
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


module HalfSub_tb;

    // Inputs
    logic A;
    logic B;

    // Outputs
    logic Difference;
    logic Borrow;

    // Instantiate the Unit Under Test (UUT)
    HalfSub uut (
        .A(A),
        .B(B),
        .Difference(Difference),
        .Borrow(Borrow)
    );

    initial begin
        // Initialize Inputs
        A = 1'b0; B = 1'b0;

        // Wait for global reset to finish (if any)
        #10; // Wait 10 ns for reset

        // Test Case 1: A = 0, B = 0
        #1;
        $display("A = %b, B = %b, Difference = %b, Borrow = %b", A, B, Difference, Borrow);
        
        // Test Case 2: A = 0, B = 1
        A = 1'b0; B = 1'b1;
        #1;
        $display("A = %b, B = %b, Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        // Test Case 3: A = 1, B = 0
        A = 1'b1; B = 1'b0;
        #1;
        $display("A = %b, B = %b, Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        // Test Case 4: A = 1, B = 1
        A = 1'b1; B = 1'b1;
        #1;
        $display("A = %b, B = %b, Difference = %b, Borrow = %b", A, B, Difference, Borrow);

        // Finish simulation
        #10 $finish;
    end

endmodule

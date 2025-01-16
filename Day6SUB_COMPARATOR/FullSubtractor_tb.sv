`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 01:31:24
// Design Name: 
// Module Name: FullSubtractor_tb
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


module FullSubtractor_tb;

    // Inputs
    logic A;
    logic B;
    logic Bin;

    // Outputs
    logic Difference;
    logic Bout;

    // Instantiate the Unit Under Test (UUT)
    Fullsubtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Difference(Difference),
        .Bout(Bout)
    );

    initial begin
        // Initialize Inputs
        A = 1'b0; B = 1'b0; Bin = 1'b0;

        // Wait for global reset to finish (if any)
        #10; // Wait 10 ns for reset

        // Test Case 1: A = 0, B = 0, Bin = 0
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 2: A = 0, B = 0, Bin = 1
        A = 1'b0; B = 1'b0; Bin = 1'b1;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 3: A = 0, B = 1, Bin = 0
        A = 1'b0; B = 1'b1; Bin = 1'b0;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 4: A = 0, B = 1, Bin = 1
        A = 1'b0; B = 1'b1; Bin = 1'b1;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 5: A = 1, B = 0, Bin = 0
        A = 1'b1; B = 1'b0; Bin = 1'b0;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 6: A = 1, B = 0, Bin = 1
        A = 1'b1; B = 1'b0; Bin = 1'b1;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 7: A = 1, B = 1, Bin = 0
        A = 1'b1; B = 1'b1; Bin = 1'b0;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Test Case 8: A = 1, B = 1, Bin = 1
        A = 1'b1; B = 1'b1; Bin = 1'b1;
        #1;
        $display("A = %b, B = %b, Bin = %b, Difference = %b, Bout = %b", A, B, Bin, Difference, Bout);

        // Finish simulation
        #10 $finish;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 17:59:59
// Design Name: 
// Module Name: HalfAdder_tb
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


module HalfAdder_tb();
// Declare inputs and outputs
    logic a, b;
    logic sum, carry;

    // Instantiate the Unit Under Test (UUT)
    HalfAdder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Test cases
    initial begin
        // Monitor changes
        $monitor("a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

        // Test case 1: 0 + 0
        a = 0; b = 0;
        #10; // Wait for 10 time units

        // Test case 2: 0 + 1
        a = 0; b = 1;
        #10;

        // Test case 3: 1 + 0
        a = 1; b = 0;
        #10;

        // Test case 4: 1 + 1
        a = 1; b = 1;
        #10;

        // End simulation
        $finish;
    end
   
endmodule

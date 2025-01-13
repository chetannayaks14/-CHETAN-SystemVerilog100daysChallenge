`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2025 19:28:19
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb;

    // Declare inputs and outputs
    logic a, b, cin;
    logic sum, cout;

    // Instantiate the Unit Under Test (UUT)
    FullAdder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test cases
    initial begin
        // Monitor changes
        $monitor("a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);

        // Test cases for all combinations of inputs
        for (int i = 0; i < 2; i++) begin
            for (int j = 0; j < 2; j++) begin
                for (int k = 0; k < 2; k++) begin
                    a = i; b = j; cin = k;
                    #10; // Wait for 10 time units for each test case
                end
            end
        end

        // End simulation
        $finish;
    end

endmodule

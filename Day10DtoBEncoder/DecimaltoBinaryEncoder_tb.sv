`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 22:24:53
// Design Name: 
// Module Name: DecimaltoBinaryEncoder_tb
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


module DecimaltoBinaryEncoder_tb;

    // Declare the inputs and outputs for the DUT (Device Under Test)
    logic [9:0] decimal_input;
    logic [3:0] binary_output;

    // Instantiate the Device Under Test (DUT)
    DecimaltoBinaryEncoder dut (
        .decimal_input(decimal_input),
        .binary_output(binary_output)
    );

    // Initial block for stimulus
    initial begin
        // Test case 1: Input 0
        decimal_input = 10'b0000000001;
        #10; // Wait for 10 time units
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 2: Input 1
        decimal_input = 10'b0000000010;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 3: Input 2
        decimal_input = 10'b0000000100;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 4: Input 3
        decimal_input = 10'b0000001000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 5: Input 4
        decimal_input = 10'b0000010000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 6: Input 5
        decimal_input = 10'b0000100000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 7: Input 6
        decimal_input = 10'b0001000000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 8: Input 7
        decimal_input = 10'b0010000000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 9: Input 8
        decimal_input = 10'b0100000000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // Test case 10: Input 9
        decimal_input = 10'b1000000000;
        #10;
        $display("Input: %b, Output: %b", decimal_input, binary_output);

        // End simulation
        $finish;
    end

endmodule

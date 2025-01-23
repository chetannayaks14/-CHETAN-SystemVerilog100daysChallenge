`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 04:23:36
// Design Name: 
// Module Name: BinarytoGreycode_tb
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


module BinarytoGreycode_tb;

    logic [3:0] binary_in, gray_out;

    // Instantiate the module
    BinarytoGrey dut (
        .binary_in(binary_in),
        .gray_out(gray_out)
    );

    // Stimulus without using loops
    initial begin
        // Test case 1: Binary 0000
        binary_in = 4'b0000;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 2: Binary 0001
        binary_in = 4'b0001;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 3: Binary 0010
        binary_in = 4'b0010;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 4: Binary 0011
        binary_in = 4'b0011;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 5: Binary 0100
        binary_in = 4'b0100;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 6: Binary 0101
        binary_in = 4'b0101;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 7: Binary 0110
        binary_in = 4'b0110;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 8: Binary 0111
        binary_in = 4'b0111;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 9: Binary 1000
        binary_in = 4'b1000;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 10: Binary 1001
        binary_in = 4'b1001;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 11: Binary 1010
        binary_in = 4'b1010;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 12: Binary 1011
        binary_in = 4'b1011;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 13: Binary 1100
        binary_in = 4'b1100;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 14: Binary 1101
        binary_in = 4'b1101;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 15: Binary 1110
        binary_in = 4'b1110;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        // Test case 16: Binary 1111
        binary_in = 4'b1111;
        #1;
        $display("Binary = %b, Gray = %b", binary_in, gray_out);

        $finish;
    end

endmodule

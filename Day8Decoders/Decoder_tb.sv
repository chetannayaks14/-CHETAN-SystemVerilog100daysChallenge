`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 00:26:36
// Design Name: 
// Module Name: Decoder_tb
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


module Decoder3to8_tb;

    // Declare signals for inputs and outputs
    logic [2:0] in;
    logic [7:0] out;

    // Instantiate the Unit Under Test (UUT)
    Decoder3to8 uut (
        .in(in),
        .out(out)
    );

    // Test cases
    initial begin
        // Test case 1
        in = 3'b000;
        #10;
        $display("Test case 1 result: Expected 00000001, got %b", out);

        // Test case 2
        in = 3'b001;
        #10;
        $display("Test case 2 result: Expected 00000010, got %b", out);

        // Test case 3
        in = 3'b010;
        #10;
        $display("Test case 3 result: Expected 00000100, got %b", out);

        // Test case 4
        in = 3'b011;
        #10;
        $display("Test case 4 result: Expected 00001000, got %b", out);

        // Test case 5
        in = 3'b100;
        #10;
        $display("Test case 5 result: Expected 00010000, got %b", out);

        // Test case 6
        in = 3'b101;
        #10;
        $display("Test case 6 result: Expected 00100000, got %b", out);

        // Test case 7
        in = 3'b110;
        #10;
        $display("Test case 7 result: Expected 01000000, got %b", out);

        // Test case 8
        in = 3'b111;
        #10;
        $display("Test case 8 result: Expected 10000000, got %b", out);

        // End of test
        $display("All tests completed.");
        $finish;
    end

endmodule

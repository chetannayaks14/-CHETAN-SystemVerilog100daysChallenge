`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 02:41:01
// Design Name: 
// Module Name: Encoder_tb
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


module Encoder_tb_8to3;

    // DUT (Device Under Test) signals
    logic [7:0] in;
    logic [2:0] out;

    // Instantiate the DUT
    Encoder_8to3 dut (
        .in(in),
        .out(out)
    );

    initial begin
        // Display header for test results
        $display("Input | Output");
        $display("------+--------");

        // Test each input one by one
        in = 8'b00000001; #10; $display("%b | %b", in, out); // Test Input 0
        in = 8'b00000010; #10; $display("%b | %b", in, out); // Test Input 1
        in = 8'b00000100; #10; $display("%b | %b", in, out); // Test Input 2
        in = 8'b00001000; #10; $display("%b | %b", in, out); // Test Input 3
        in = 8'b00010000; #10; $display("%b | %b", in, out); // Test Input 4
        in = 8'b00100000; #10; $display("%b | %b", in, out); // Test Input 5
        in = 8'b01000000; #10; $display("%b | %b", in, out); // Test Input 6
        in = 8'b10000000; #10; $display("%b | %b", in, out); // Test Input 7

        // End simulation
        $finish;
    end

endmodule

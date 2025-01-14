`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2025 03:28:59
// Design Name: 
// Module Name: Demux_tb
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


module Demux_tb;

    // Declare signals for connecting to the demux module
    logic D;            // Data Input
    logic [1:0] S;      // Select Lines
    logic [3:0] Y;      // Outputs Y0, Y1, Y2, Y3

    // Instantiate the demux module
    Demux dut (
        .D(D),
        .S(S),
        .Y(Y)
    );

    // Test procedure
    initial begin
        // Monitor changes in Y to print to console
        $monitor("Time=%0t: D=%b, S=%b, Y=%b", $time, D, S, Y);

        // Test case 1: D = 0, S = 00
        D = 1'b0;
        S = 2'b00;
        #10; // Wait for 10 time units

        // Test case 2: D = 1, S = 00
        D = 1'b1;
        #10; // Wait for 10 time units

        // Test case 3: D = 0, S = 01
        S = 2'b01;
        D = 1'b0;
        #10; // Wait for 10 time units

        // Test case 4: D = 1, S = 01
        D = 1'b1;
        #10; // Wait for 10 time units

        // Test case 5: D = 0, S = 10
        S = 2'b10;
        D = 1'b0;
        #10; // Wait for 10 time units

        // Test case 6: D = 1, S = 10
        D = 1'b1;
        #10; // Wait for 10 time units

        // Test case 7: D = 0, S = 11
        S = 2'b11;
        D = 1'b0;
        #10; // Wait for 10 time units

        // Test case 8: D = 1, S = 11
        D = 1'b1;
        #10; // Wait for 10 time units

        // End simulation
        $finish;
    end

endmodule

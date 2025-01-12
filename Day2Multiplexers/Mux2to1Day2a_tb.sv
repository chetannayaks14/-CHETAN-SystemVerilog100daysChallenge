`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 17:35:30
// Design Name: 
// Module Name: Mux2to1Day2a_tb
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


module Mux2to1Day2a_tb;

    // Declare the signals
    logic [3:0] d0, d1, y;
    logic s;

    // Instantiate the module under test
    Mux2to1Day2a dut (
        .d0(d0),
        .d1(d1),
        .s(s),
        .y(y)
    );

    // Test sequence
    initial begin
        // Test case 1: Select d0
        d0 = 4'b0001;
        d1 = 4'b1111;
        s = 1'b0;
        #10;
        $display("Test case 1: s = %b, d0 = %b, d1 = %b, y = %b", s, d0, d1, y);

        // Test case 2: Select d1
        d0 = 4'b0001;
        d1 = 4'b1111;
        s = 1'b1;
        #10;
        $display("Test case 2: s = %b, d0 = %b, d1 = %b, y = %b", s, d0, d1, y);

        // Additional test for different bit combinations
        d0 = 4'b1010;
        d1 = 4'b0101;
        s = 1'b0;
        #10;
        $display("Test case 3: s = %b, d0 = %b, d1 = %b, y = %b", s, d0, d1, y);

        s = 1'b1;
        #10;
        $display("Test case 4: s = %b, d0 = %b, d1 = %b, y = %b", s, d0, d1, y);

        $finish;
    end


endmodule

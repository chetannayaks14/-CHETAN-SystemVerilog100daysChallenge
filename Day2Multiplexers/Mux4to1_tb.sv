`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 18:06:18
// Design Name: 
// Module Name: Mux4to1_tb
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


module Mux4to1_tb();

    // Declare signals for testbench
    logic [3:0] d0, d1, d2, d3, y;
    logic [1:0] s;

    // Instantiate the module under test
    Mux4to1 dut (
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .s(s),
        .y(y)
    );

    // Test sequence
    initial begin
        // Test case 1: Select d0
        d0 = 4'b0000; d1 = 4'b0001; d2 = 4'b0010; d3 = 4'b0011;
        s = 2'b00;
        #10;
        $display("Test case 1: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        // Test case 2: Select d1
        s = 2'b01;
        #10;
        $display("Test case 2: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        // Test case 3: Select d2
        s = 2'b10;
        #10;
        $display("Test case 3: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        // Test case 4: Select d3
        s = 2'b11;
        #10;
        $display("Test case 4: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        // Additional test with different input values
        d0 = 4'b1000; d1 = 4'b0100; d2 = 4'b0010; d3 = 4'b0001;
        s = 2'b00;
        #10;
        $display("Test case 5: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        s = 2'b11;
        #10;
        $display("Test case 6: d0 = %b, d1 = %b, d2 = %b, d3 = %b, s = %b, y = %b", d0, d1, d2, d3, s, y);

        $finish;
    end



endmodule

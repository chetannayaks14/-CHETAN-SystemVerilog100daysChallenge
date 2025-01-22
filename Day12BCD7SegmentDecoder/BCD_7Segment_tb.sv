`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 03:53:57
// Design Name: 
// Module Name: BCD_7Segment_tb
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


module BCD_7Segment_tb;

    // Test signals
    logic [3:0] bcd;
    logic [6:0] seg;

    // Instantiate the Unit Under Test (UUT)
    BCD_7segment uut (
        .bcd(bcd),
        .seg(seg)
    );

    // Test cases
    initial begin
        // Test case 1: BCD for '0'
        bcd = 4'b0000;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 2: BCD for '1'
        bcd = 4'b0001;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 3: BCD for '2'
        bcd = 4'b0010;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 4: BCD for '3'
        bcd = 4'b0011;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 5: BCD for '4'
        bcd = 4'b0100;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 6: BCD for '5'
        bcd = 4'b0101;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 7: BCD for '6'
        bcd = 4'b0110;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 8: BCD for '7'
        bcd = 4'b0111;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 9: BCD for '8'
        bcd = 4'b1000;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 10: BCD for '9'
        bcd = 4'b1001;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // Test case 11: Invalid BCD
        bcd = 4'b1010;
        #10;
        $display("BCD: %b, Segments: %b", bcd, seg);

        // End simulation
        $finish;
    end

endmodule

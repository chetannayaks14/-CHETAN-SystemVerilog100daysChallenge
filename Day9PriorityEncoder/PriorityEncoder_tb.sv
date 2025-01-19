`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 04:18:28
// Design Name: 
// Module Name: PriorityEncoder_tb
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


module PriorityEncoder_tb;

    // Declare signals for the testbench
    logic [3:0] in;
    logic [1:0] out;
    logic valid;

    // Instantiate the Unit Under Test (UUT)
    PriorityEncoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        // Display header
        $display("Testbench for 4-to-2 Priority Encoder");
        $display("-------------------------------------");
        $display("Input | Output | Valid");
        $display(" I3 I2 I1 I0 | A1 A0 | V");
        $display("------------------------");

        // Test case 1: 0000
        in = 4'b0000;
        #10;
        $display(" %b  %b  %b  %b |  %b  %b  | %b", in[3], in[2], in[1], in[0], out[1], out[0], valid);

        // Test case 2: 0001
        in = 4'b0001;
        #10;
        $display(" %b  %b  %b  %b |  %b  %b  | %b", in[3], in[2], in[1], in[0], out[1], out[0], valid);

        // Test case 3: 0010
        in = 4'b0010;
        #10;
        $display(" %b  %b  %b  %b |  %b  %b  | %b", in[3], in[2], in[1], in[0], out[1], out[0], valid);

        // Test case 4: 0011
        in = 4'b0100;
        #10;
        $display(" %b  %b  %b  %b |  %b  %b  | %b", in[3], in[2], in[1], in[0], out[1], out[0], valid);

        // Continue for all other combinations...

        // Test case 15: 1111
        in = 4'b1111;
        #10;
        $display(" %b  %b  %b  %b |  %b  %b  | %b", in[3], in[2], in[1], in[0], out[1], out[0], valid);

        // End simulation
        $finish;
    end

endmodule

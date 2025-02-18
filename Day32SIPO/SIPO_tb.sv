`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 02:11:52
// Design Name: 
// Module Name: SIPO_tb
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


module SIPO_tb;
    logic clk;
    logic reset;
    logic serial_in;
    logic [3:0] parallel_out;

    // Instantiate the module
    SIPO uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );

    // Clock generation
    always #5 clk = ~clk;  // Generate a clock with a period of 10 time units

    initial begin
        // Initialize values
        clk = 0;
        reset = 1;
        serial_in = 0;

        // Apply reset
        #10 reset = 0;

        // Apply serial input data (1011)
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;

        // Observe parallel_out
        #20 $finish; // End simulation
    end

    // Monitor output
    initial begin
        $monitor("Time: %0t | Serial_in: %b | Parallel_out: %b", $time, serial_in, parallel_out);
    end

endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 18:24:04
// Design Name: 
// Module Name: SISO_tb
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
module SISO_tb;
    // DUT Signals
    logic clk;
    logic reset;
    logic data_in;
    logic data_out;
    logic [3:0] captured_data;
    
    // Instantiate the Device Under Test (DUT)
    SISO #(.WIDTH(4)) dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // 10 ns period clock
    end

    // Test sequence
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        data_in = 0;
        captured_data = 4'b0000; // Initialize captured data
        
        // Reset period
        #10 reset = 0;

        // Input data sequence with proper delay for shifting
        data_in = 1; 
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);
        #40; // Wait 4 clock cycles for the first bit to come out
        captured_data[3] = data_out; 
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);

        data_in = 0; 
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);
        #40; // Second bit
        captured_data[2] = data_out;
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);

        data_in = 1; 
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);
        #40; // Third bit
        captured_data[1] = data_out;
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);

        data_in = 0; 
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);
        #40; // Fourth bit
        captured_data[0] = data_out;
        $display("Time: %0t - Input: %b, Output: %b", $time, data_in, data_out);

        // Display all bits shifted in one output
        $display("Shifted Data (LSB to MSB): %b", captured_data);

        // Simulation end
        $finish;
    end

endmodule
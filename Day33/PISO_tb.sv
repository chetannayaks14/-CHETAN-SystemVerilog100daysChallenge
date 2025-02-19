`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 22:21:32
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb;
    logic clk;
    logic reset;
    logic load;
    logic new_bit;
    logic [3:0] parallel_in;
    logic serial_out;
    logic [3:0] updated_parallel;

    // Instantiate the PISO shift register module
    PISO uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .new_bit(new_bit),
        .parallel_in(parallel_in),
        .serial_out(serial_out),
        .updated_parallel(updated_parallel)
    );

    // Clock generation
    always #5 clk = ~clk; // 10ns period clock

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        load = 0;
        new_bit = 0;
        parallel_in = 4'b0000;

        #10 reset = 0; // Deassert reset
        #10 load = 1; parallel_in = 4'b1011; // Load 1011
        #10 load = 0; // Start shifting

        // Insert new bits dynamically
        #10 new_bit = 1;
        #10 new_bit = 0;
        #10 new_bit = 1;
        #10 new_bit = 1;

        // Wait to see shifting behavior
        #50;
        $finish;
    end

    // Print values only once per clock cycle
    always @(posedge clk) begin
        $display("Time: %0t | Load: %b | Parallel_in: %b | New Bit: %b | Updated Parallel: %b | Serial_out: %b", 
                 $time, load, parallel_in, new_bit, updated_parallel, serial_out);
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2025 20:12:50
// Design Name: 
// Module Name: RC_tb
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


module tb_ripple_counter;

    logic clk;
    logic reset;
    logic [3:0] count;

    // Instantiate the Ripple Counter
    ripple_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock Generation (100MHz -> 10ns period)
    always #10 clk = ~clk;

    // Test Sequence
    initial begin
        $dumpfile("ripple_counter.vcd"); // For waveform viewing
        $dumpvars(0, tb_ripple_counter);

        // Initialize signals
        clk = 0;
        reset = 1;
        #20 reset = 0; // Release reset

        $display("Time | Reset | Count ");
        $display("---------------------");

        // Observe counter behavior
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);
        #20 $display("%0t |   %b   |   %b (%0d)", $time, reset, count, count);

        $display("Simulation Completed.");
        $finish;
    end

endmodule

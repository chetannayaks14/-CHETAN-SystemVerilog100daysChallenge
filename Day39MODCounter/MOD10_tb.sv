`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 15:42:36
// Design Name: 
// Module Name: MOD10_tb
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


module tb_mod10_bidirectional_counter;

    logic clk;       // Clock signal
    logic reset;     // Reset signal
    logic up_down;   // Control: 1 for UP, 0 for DOWN
    logic [3:0] count; // 4-bit counter output

    // Instantiate the MOD-10 Bidirectional Counter
    mod10_bidirectional_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    // Clock Generation (50MHz -> 20ns period)
    always #10 clk = ~clk;

    // Test Sequence
    initial begin
        $dumpfile("mod10_bidirectional_counter.vcd"); // For waveform viewing
        $dumpvars(0, tb_mod10_bidirectional_counter);

        // Initialize signals
        clk = 0;
        reset = 1;
        up_down = 1; // Start with UP counting
        #20 reset = 0; // Release reset

        // Display Header
        $display("Time | Reset | Up/Down | Counter ");
        $display("----------------------------------");

        // Simulate 10 UP counts
        up_down = 1;
        for (int i = 0; i < 10; i++) begin
            #20;
            $display("%0t |   %b   |    %b    |   %b (%0d)", $time, reset, up_down, count, count);
        end

        // Switch to DOWN counting
        up_down = 0;
        $display("Switching to DOWN_COUNT Mode");

        // Simulate 10 DOWN counts
        for (int i = 0; i < 10; i++) begin
            #20;
            $display("%0t |   %b   |    %b    |   %b (%0d)", $time, reset, up_down, count, count);
        end

        // Apply Reset again
        reset = 1;
        #20 reset = 0;
        $display("Reset applied again");

        // Simulate 5 UP counts
        up_down = 1;
        for (int i = 0; i < 5; i++) begin
            #20;
            $display("%0t |   %b   |    %b    |   %b (%0d)", $time, reset, up_down, count, count);
        end

        $display("Simulation Completed.");
        $finish;
    end

endmodule

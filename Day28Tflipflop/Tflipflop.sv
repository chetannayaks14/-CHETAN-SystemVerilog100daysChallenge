`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 18:38:15
// Design Name: 
// Module Name: Tflipflop
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


module TFlipFlopTest;

    // Declare signals for connecting to the T Flip-Flop
    logic clk, reset, T;
    logic Q, Qbar;

    // Instantiate the T Flip-Flop
    TFlipFlop uut (
        .clk(clk),
        .reset(reset),
        .T(T),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock generation
    always #5 clk = ~clk;  // Toggle clock every 5 time units

    initial begin
        // Initialize all inputs
        clk = 0;
        reset = 1;  // Start with reset active
        T = 0;

        // Wait for a while then release reset
        #10 reset = 0;  // Reset for 10 time units

        // Test sequence
        #20 T = 1;  // Set T to 1 to toggle
        #10 $display("Time: %0t, T: %b, Q: %b, Qbar: %b", $time, T, Q, Qbar);

        // End simulation
        #10 $finish;
    end

endmodule

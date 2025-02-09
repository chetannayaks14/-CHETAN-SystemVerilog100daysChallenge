`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2025 03:27:55
// Design Name: 
// Module Name: JKFlipFlop_tb
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


module JKFlipFlop_tb;

    // Declare signals for connecting to the JK flip-flop
    logic clk;
    logic J, K, reset;
    logic Q, Q_bar;

    // Instantiate the JK flip-flop
    JKflipflop dut (
        .clk(clk),
        .J(J),
        .K(K),
        .reset(reset),
        .Q(Q),
        .Q_bar(Q_bar)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units period
    end

    // Test sequence
    initial begin
        $display("Time | J | K | Reset | Q | Q_bar");
        $monitor("%0t | %b | %b | %b | %b | %b", $time, J, K, reset, Q, Q_bar);

        // Reset the flip-flop
        reset = 1;
        J = 0; K = 0;
        #10 reset = 0; // Wait for 10 time units then release reset

        // Test various input combinations
        #10 J = 0; K = 0; // No change
        #10 J = 0; K = 1; // Reset
        #10 J = 1; K = 0; // Set
        #10 J = 1; K = 1; // Toggle twice
        #20 J = 1; K = 1;
        #10 J = 0; K = 0; // Back to no change
        
        #20 $finish; // End simulation
    end

endmodule

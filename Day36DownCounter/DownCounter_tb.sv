`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2025 02:06:17
// Design Name: 
// Module Name: DownCounter_tb
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


module tb_down_counter;
    logic clk, reset;
    logic [3:0] q;

    // Instantiate the down counter module
    down_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation (50 MHz)
    always #10 clk = ~clk;  // Toggle clock every 10ns

    initial begin
        // Initialize signals
        clk = 0; reset = 1;
        #20 reset = 0; // Release reset
        
        #300 $finish; // Stop simulation after 200 ns
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | Reset=%b | Count=%b",
                 $time, reset, q);
    end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2025 00:32:51
// Design Name: 
// Module Name: Johnsoncounter_tb
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


module Johnsoncounter_tb;
logic clk;
    logic reset;
    logic [3:0] q;

    // Instantiate the Johnson Counter
    johnsoncounter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock Generation (50MHz -> 20ns period)
    // Clock Generation (50MHz -> 20ns period)
    always #20 clk = ~clk;  // Clock toggles every 20ns

    // Test Sequence
    initial begin
        //$dumpfile("johnson_counter.vcd"); // For waveform viewing
        //$dumpvars(0, tb_johnson_counter);

        clk = 0;
        reset = 1;
        #40 reset = 0; // Release reset

        $display("Time | Reset | Counter ");
        $display("---------------------");

        // Observe counter behavior for 10 cycles
        repeat (10) begin
            #40;
            $display("%0t |   %b   |   %b", $time, reset, q);
        end

        $display("Simulation Completed.");
        $finish;
    end

endmodule

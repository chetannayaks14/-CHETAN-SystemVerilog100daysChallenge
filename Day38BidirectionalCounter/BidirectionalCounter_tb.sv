`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 02:25:41
// Design Name: 
// Module Name: BidirectionalCounter_tb
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


module tb_bidirectional_counter;

    logic clk;       // Clock signal
    logic reset;     // Reset signal
    logic up_down;   // Control: 1 for UP, 0 for DOWN
    logic [3:0] count; // 4-bit counter output

    // Instantiate the counter module
    bidirectional_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation (50MHz -> 20ns period)
    always #10 clk = ~clk;

    // Test sequence
    initial begin
        $dumpfile("counter.vcd"); // For waveform viewing
        $dumpvars(0, tb_bidirectional_counter);

        // Initialize signals
        clk = 0;
        reset = 1;
        up_down = 1; // Start with UP count
        #20 reset = 0; // Release reset

        $display("Time=%0t | RESET applied, Counter=%b", $time, count);

        // Count UP for 3 cycles
        repeat (3) begin
            #20;
            $display("Time=%0t | UP_COUNT Mode, Counter=%b", $time, count);
        end

        // Switch to DOWN counting
        up_down = 0;
        $display("Time=%0t | Switching to DOWN_COUNT Mode", $time);
        repeat (3) begin
            #20;
            $display("Time=%0t | DOWN_COUNT Mode, Counter=%b", $time, count);
        end

        // Apply Reset again
        reset = 1;
        #20 reset = 0;
        $display("Time=%0t | RESET applied again, Counter=%b", $time, count);

        // Count UP again for 3 cycles
        up_down = 1;
        repeat (3) begin
            #20;
            $display("Time=%0t | UP_COUNT Mode, Counter=%b", $time, count);
        end

        $display("Simulation Completed.");
        $finish;
    end

endmodule


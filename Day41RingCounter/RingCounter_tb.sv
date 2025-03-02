`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2025 00:01:47
// Design Name: 
// Module Name: RingCounter_tb
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


module RingCounter_tb();
logic reset, clk;
logic [3:0] ring;
    
    RingCounter Dut(
    .reset(reset),
    .clk(clk),
    .ring(ring)
    );
    always #10 clk=~clk;
    initial begin
     $dumpfile("ring_counter.vcd"); // For waveform viewing
        $dumpvars(0, RingCounter_tb);
    clk=0; reset=1; //ring=4'b1000;
    #20 reset=0;$display("Time | Reset | Counter ");
        $display("---------------------");

        // Observe counter behavior
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);
        #20 $display("%0t |   %b   |   %b", $time, reset, ring);

        $display("Simulation Completed.");
        $finish;
    end

endmodule

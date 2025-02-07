`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 18:38:27
// Design Name: 
// Module Name: FibonnaciSeries_tb
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


module tb_d_flipflop;
    
    logic clk;
    logic rst;
    logic d;
    logic q;
    
    // Instantiate the D Flip-Flop
    d_flipflop uut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );
    
    // Clock Generation
    always #5 clk = ~clk;
    
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        d = 0;
        
        // Apply Reset
        #10 rst = 0;
        
        // Apply test values
        #10 d = 1; $display("Time=%0t, D=%b, Q=%b", $time, d, q);
        #10 d = 0; $display("Time=%0t, D=%b, Q=%b", $time, d, q);
        #10 d = 1; $display("Time=%0t, D=%b, Q=%b", $time, d, q);
        #10 d = 1; $display("Time=%0t, D=%b, Q=%b", $time, d, q);
        
        // Finish simulation
        #20 $display("Test Complete. Final Q value: %b", q);
        #10 $finish;
    end
    
endmodule


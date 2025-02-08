`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2025 20:45:32
// Design Name: 
// Module Name: srflipflop_tb
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


module tb_sr_flipflop;
    
    logic clk;
    logic rst;
    logic S;
    logic R;
    logic Q;
    
    // Instantiate the SR Flip-Flop
    sr_flipflop uut (
        .clk(clk),
        .rst(rst),
        .S(S),
        .R(R),
        .Q(Q)
    );
    
    // Clock Generation
    always #5 clk = ~clk;
    
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        S = 0;
        R = 0;
        
        // Apply Reset
        #10 rst = 0;
        
        // Apply test values
        #10 S = 1; R = 0; $display("Time=%0t, S=%b, R=%b, Q=%b", $time, S, R, Q);
        #10 S = 0; R = 1; $display("Time=%0t, S=%b, R=%b, Q=%b", $time, S, R, Q);
        #10 S = 1; R = 1; $display("Time=%0t, S=%b, R=%b, Q=%b", $time, S, R, Q);
        #10 S = 0; R = 0; $display("Time=%0t, S=%b, R=%b, Q=%b", $time, S, R, Q);
        
        // Finish simulation
        #20 $display("Test Complete. Final Q value: %b", Q);
        #10 $finish;
    end
    
endmodule

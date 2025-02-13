`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 02:44:07
// Design Name: 
// Module Name: Shiftregister_tb
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


module Register_4bit_tb;

    // Declare signals for the inputs and outputs of the Register_4bit
    logic clk;
    logic rst;
    logic load;
    logic [3:0] d;
    logic [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    Register_4bit uut (
        .clk(clk),
        .rst(rst),
        .load(load),
        .d(d),
        .q(q)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Toggle clock every 5 time units
    end

    // Test procedure
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        load = 0;
        d = 4'b0000;

        // Wait 100 ns for global reset to finish
        #100;
        
        // Release reset
        rst = 0;

        // Load data into register
        load = 1;
        d = 4'b1010; // Example data to load
        #10;
        
        // Check if data is loaded
        $display("After Load: Input = %b, Output = %b", d, q);

        // Change data but don't load (should keep previous value)
        load = 0;
        d = 4'b1100; // New data not loaded yet
        #10;
        
        // Check if data remains unchanged when load is not asserted
        $display("No Load: Input = %b, Output = %b", d, q);

        // Load new data
        load = 1;
        #10;
        
        // Check if new data is loaded
        $display("Load Again: Input = %b, Output = %b", d, q);

        // End simulation
        #10 $finish;
    end

endmodule

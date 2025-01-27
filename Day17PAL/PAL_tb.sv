`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 05:02:14
// Design Name: 
// Module Name: PAL_tb
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


module PAL_tb;

    // Declare the inputs and outputs for the PAL module
    logic [3:0] inputs;
    logic [1:0] outputs;

    // Instantiate the PAL module
    PAL dut (
        .inputs(inputs),
        .outputs(outputs)
    );

    // Testbench logic
    initial begin
        // Monitor changes in inputs and outputs
        $monitor("Time=%0t, Inputs=%b, Outputs=%b", $time, inputs, outputs);

        // Initialize inputs
        inputs = 4'b0000;
        
        // Wait for a small delay to observe initial state
        #10;
        
        // Test case 1: All inputs 0
        inputs = 4'b0000;
        #10;
        
        // Test case 2: Only input 0 is 1
        inputs = 4'b0001;
        #10;
        
        // Test case 3: Inputs 0 and 1 are 1
        inputs = 4'b0011;
        #10;
        
        // Test case 4: All inputs 1
        inputs = 4'b1111;
        #10;
        
        // Test case 5: Inputs 1, 2, and 3 are 1
        inputs = 4'b0111;
        #10;
        
        // Test case 6: Inputs 0, 2, and 3 are 1
        inputs = 4'b1011;
        #10;
        
        // Test case 7: Inputs 0 and 3 are 1
        inputs = 4'b1001;
        #10;
        
        // Test case 8: Inputs 1 and 2 are 1
        inputs = 4'b0110;
        #10;
        
        // End simulation
        $finish;
    end

endmodule

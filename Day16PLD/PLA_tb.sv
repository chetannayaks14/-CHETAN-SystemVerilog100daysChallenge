`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2025 00:38:22
// Design Name: 
// Module Name: PLA_tb
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


module PLA_tb;

    // DUT signals
    logic [2:0] inputs;
    logic [1:0] outputs;

    // Instantiate the Device Under Test (DUT)
    PLA dut (
        .inputs(inputs),
        .outputs(outputs)
    );

    // Test sequence
    initial begin
        // Monitor for changes
        $monitor("Time=%0t, Inputs=%b, Outputs=%b", $time, inputs, outputs);

        // Test case 1: All inputs are 0
        inputs = 3'b000;
        #10;  // Wait for 10 time units

        // Test case 2: Only first input is 1
        inputs = 3'b001;
        #10;

        // Test case 3: Only second input is 1
        inputs = 3'b010;
        #10;

        // Test case 4: Only third input is 1
        inputs = 3'b100;
        #10;

        // Test case 5: First and second inputs are 1
        inputs = 3'b011;
        #10;

        // Test case 6: First and third inputs are 1
        inputs = 3'b101;
        #10;

        // Test case 7: Second and third inputs are 1
        inputs = 3'b110;
        #10;

        // Test case 8: All inputs are 1
        inputs = 3'b111;
        #10;

        // Finish simulation
        $finish;
    end

endmodule

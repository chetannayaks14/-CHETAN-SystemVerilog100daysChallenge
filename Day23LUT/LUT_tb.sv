`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2025 03:49:44
// Design Name: 
// Module Name: LUT_tb
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


module tb_LUT;

    // Declare signals for the testbench
    logic [2:0] addr;
    logic data;

    // Instantiate the LUT module
    LUT dut (
        .addr(addr),
        .data(data)
    );

    // Initial block for testing
    initial begin
        // Test case 1: Address 0
        addr = 3'b000;
        #1; // Delay to allow for combinatorial logic to settle
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 2: Address 1
        addr = 3'b001;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 3: Address 2
        addr = 3'b010;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 4: Address 3
        addr = 3'b011;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 5: Address 4
        addr = 3'b100;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 6: Address 5
        addr = 3'b101;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 7: Address 6
        addr = 3'b110;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // Test case 8: Address 7
        addr = 3'b111;
        #1;
        $display("Input: addr = %b, Output: data = %b", addr, data);

        // End simulation
        $finish;
    end

endmodule
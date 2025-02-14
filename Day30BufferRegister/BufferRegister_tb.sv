`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2025 00:56:50
// Design Name: 
// Module Name: BufferRegister_tb
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


module buffer_register_tb;

    // DUT signals
    logic clk;
    logic reset;
    logic [3:0] data_in;
    logic [3:0] data_out;

    // Instantiate the Device Under Test (DUT)
    BufferRegister dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // Clock period of 10ns
    end

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        data_in = 4'b0000;

        // Wait for a few clock cycles with reset active
        repeat(2) @(posedge clk);

        // Deassert reset
        reset = 0;
        #1;

        // Test sequence - change data within one clock cycle, but observe after
        @(posedge clk) begin
            data_in = 4'b0101;
        end
        @(posedge clk);
        $display("Input: %b, Output: %b", data_in, data_out);

        @(posedge clk) begin
            data_in = 4'b1010;
        end
        @(posedge clk);
        $display("Input: %b, Output: %b", data_in, data_out);

        @(posedge clk) begin
            data_in = 4'b1111;
        end
        @(posedge clk);
        $display("Input: %b, Output: %b", data_in, data_out);

        // Finish simulation
        #10 $finish;
    end

endmodule


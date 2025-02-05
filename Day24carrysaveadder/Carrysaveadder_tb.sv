`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2025 17:37:52
// Design Name: 
// Module Name: Carrysaveadder_tb
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


module CarrySaveAdder4bit_tb;

    // Testbench signals
    logic [3:0] A;
    logic [3:0] B;
    logic [3:0] C;
    logic [4:0] Sum;

    // Instantiate the unit under test (UUT)
    CarrySaveAdder4bit uut (
        .A(A),
        .B(B),
        .C(C),
        .Sum(Sum)
    );

    // Clock signal (though not necessary for combinational logic, added for completeness)
    logic clk;
    
    // Initialize clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        A = 4'b0000;
        B = 4'b0000;
        C = 4'b0000;

        // Wait for global reset or to allow some time for simulation to start
        #10;

        // Test case 1: All bits are 1
        A = 4'b1111; B = 4'b1111; C = 4'b1111;
        #10;
        $display("Test case 1: A=1111, B=1111, C=1111, Sum=%b", Sum);

        // Test case 2: Different values
        A = 4'b0101; B = 4'b1010; C = 4'b1100;
        #10;
        $display("Test case 2: A=0101, B=1010, C=1100, Sum=%b", Sum);

        // Test case 3: With carry overflow
        A = 4'b1000; B = 4'b0100; C = 4'b0010;
        #10;
        $display("Test case 3: A=1000, B=0100, C=0010, Sum=%b", Sum);

        // Test case 4: All zeros
        A = 4'b0000; B = 4'b0000; C = 4'b0000;
        #10;
        $display("Test case 4: A=0000, B=0000, C=0000, Sum=%b", Sum);

        // End simulation
        #10 $finish;
    end

endmodule

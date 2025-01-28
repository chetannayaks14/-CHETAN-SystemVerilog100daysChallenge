`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2025 18:31:25
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;

    // Declare the signals needed to connect to the ALU
    logic [7:0] A, B;
    logic [1:0] ALUControl;
    logic [7:0] Result;
    logic Zero;
    logic Overflow;

    // Instantiate the ALU
    ALU alu_inst (
        .A(A),
        .B(B),
        .ALUControl(ALUControl),
        .Result(Result),
        .Zero(Zero),
        .Overflow(Overflow)
    );

    // Clock for simulation purposes (optional but often useful)
    //logic clk = 0;
    //always #5 clk = ~clk; // Toggle clock every 5 time units

    initial begin
        // Monitor the signals
        $monitor("Time=%0t, A=%b, B=%b, ALUControl=%b, Result=%b, Zero=%b, Overflow=%b",$time, A, B, ALUControl, Result, Zero, Overflow);

        // Test cases
        // Addition
        A = 8'b00001111; B = 8'b00000011; ALUControl = 2'b00; #10;
        // Subtraction
        A = 8'b00001111; B = 8'b00000011; ALUControl = 2'b01; #10;
        // Bitwise AND
        A = 8'b11001100; B = 8'b10101010; ALUControl = 2'b10; #10;
        // Bitwise OR
        A = 8'b11001100; B = 8'b10101010; ALUControl = 2'b11; #10;
        // Test Overflow (Addition of two large numbers)
        A = 8'b11111111; B = 8'b00000001; ALUControl = 2'b00; #10;
        
        // Finish simulation
        $finish;
    end

    // If you need to check for errors or specific conditions
    initial begin
        // Example assertion: check if addition of two numbers gives zero
        assert (Result == 8'b00000000) else $error("Addition did not yield expected result!");
    end

endmodule

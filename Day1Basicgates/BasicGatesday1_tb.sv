`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 01:25:28
// Design Name: 
// Module Name: BasicGatesday1_tb
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


module BasicGatesday1_tb();
logic a, b;
    logic OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER;

    // Instantiate the Unit Under Test (UUT)
    BasicGatesday1 uut (
        .a(a), 
        .b(b), 
        .OR(OR), 
        .AND(AND), 
        .NOR(NOR), 
        .NAND(NAND), 
        .NOT(NOT), 
        .XOR(XOR), 
        .XNOR(XNOR), 
        .BUFFER(BUFFER)
    );

    // Test cases
    initial begin
        // Test case 1: a = 0, b = 0
        a = 0; b = 0;
        #1;  // Wait for changes to propagate
        $display("a=0, b=0: OR=%b, AND=%b, NOR=%b, NAND=%b, NOT=%b, XOR=%b, XNOR=%b, BUFFER=%b", OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER);

        // Test case 2: a = 0, b = 1
        a = 0; b = 1;
        #1;
        $display("a=0, b=1: OR=%b, AND=%b, NOR=%b, NAND=%b, NOT=%b, XOR=%b, XNOR=%b, BUFFER=%b", OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER);

        // Test case 3: a = 1, b = 0
        a = 1; b = 0;
        #1;
        $display("a=1, b=0: OR=%b, AND=%b, NOR=%b, NAND=%b, NOT=%b, XOR=%b, XNOR=%b, BUFFER=%b", OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER);

        // Test case 4: a = 1, b = 1
        a = 1; b = 1;
        #1;
        $display("a=1, b=1: OR=%b, AND=%b, NOR=%b, NAND=%b, NOT=%b, XOR=%b, XNOR=%b, BUFFER=%b", OR, AND, NOR, NAND, NOT, XOR, XNOR, BUFFER);

        // End simulation
        $finish;
    end
endmodule

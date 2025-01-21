`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 02:44:26
// Design Name: 
// Module Name: Binarydecoder_tb
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


module BinaryDecoder_tb;

    // Declare signals for inputs and outputs
    logic A, B;
    logic D0, D1, D2, D3;

    // Instantiate the Unit Under Test (UUT)
    BinaryDecoder uut (
        .A(A),
        .B(B),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3)
    );

    // Initial block to set inputs and display outputs
    initial begin
        // Test case 1: Input 00
        A = 1'b0; B = 1'b0;
        #10; // Wait for 10 time units for signals to stabilize
        $display("For input A=%b, B=%b, Outputs are D0=%b, D1=%b, D2=%b, D3=%b", A, B, D0, D1, D2, D3);

        // Test case 2: Input 01
        A = 1'b0; B = 1'b1;
        #10;
        $display("For input A=%b, B=%b, Outputs are D0=%b, D1=%b, D2=%b, D3=%b", A, B, D0, D1, D2, D3);

        // Test case 3: Input 10
        A = 1'b1; B = 1'b0;
        #10;
        $display("For input A=%b, B=%b, Outputs are D0=%b, D1=%b, D2=%b, D3=%b", A, B, D0, D1, D2, D3);

        // Test case 4: Input 11
        A = 1'b1; B = 1'b1;
        #10;
        $display("For input A=%b, B=%b, Outputs are D0=%b, D1=%b, D2=%b, D3=%b", A, B, D0, D1, D2, D3);

        // End simulation
        $finish;
    end

endmodule
